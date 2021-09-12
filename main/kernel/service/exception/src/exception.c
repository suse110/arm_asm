#include "exception.h"

/*
When the fault is a precise fault, the pc holds the address of the instruction that 
was executing when the hard fault (or other fault) occurred. 
When the fault is an imprecise fault, then additional steps are required to find 
the address of the instruction that caused the fault.It is harder to determine 
the cause of an imprecise fault because the fault will not necessarily occur 
concurrently with the instruction that caused the fault.

For example, if writes to memory are cached then there might be a delay between an 
assembly instruction initiating a write to memory and the write to memory actually 
occurring. If such a delayed write operation is invalid (for example, a write is 
being attempted to an invalid memory location) then an imprecise fault will occur, 
and the program counter value obtained using the code above will not be the address 
of the assembly instruction that initiated the write operation.

In the above example, turning off write buffering by setting the DISDEFWBUF bit (bit 1) 
in the Auxiliary Control Register (or ACTLR) will result in the imprecise fault becoming 
a precise fault, which makes the fault easier to debug, albeit at the cost of slower 
program execution. This is for the Cortex M3 & Cortex M4 only,For the Cortex M7, there 
is no way to force all stores to be synchronous / precise.


*/

/*
gdb) p/x $lr
$4 = 0xfffffffd

# psp was active prior to exception if bit 2 is set
# otherwise, the msp was active
(gdb) p/x $lr&(1<<2)
$5 = 0x4

# First eight values on stack will always be:
# r0, r1, r2, r3, r12, LR, pc, xPSR
(gdb) p/a *(uint32_t[8] *)$psp
$16 = {
  0x0 <g_pfnVectors>,
  0x200003c4 <ucHeap+604>,
  0x10000000,
  0xe0000000,
  0x200001b8 <ucHeap+80>,
  0x61 <illegal_instruction_execution+16>,
  0xe0000000,
  0x80000000
}
Offset 6 and 7 in the array dumped hold the LR (illegal_instruction_execution) & 
PC (0xe0000000) so we now can see exactly where the fault originated!
*/


/*
Halting & Determining Core Register State

What if we are trying to debug an issue that is not easy to reproduce? Even if we 
have a debugger attached, useful state may be overwritten before we have a chance 
to halt the debugger and take a look.

The first thing we can do is to programmatically trigger a breakpoint when the system faults:
*/
#define HALT_IF_DEBUGGING()                              \
  do {                                                   \
    if (CoreDebug->DHCSR & CoreDebug_DHCSR_C_DEBUGEN_Msk) { \
      __asm("bkpt 1");                                   \
    }                                                    \
} while (0)

/*define a C struct to represent the register stacking*/
typedef struct __attribute__((packed)) ContextStateFrame {
  uint32_t r0;
  uint32_t r1;
  uint32_t r2;
  uint32_t r3;
  uint32_t r12;
  uint32_t lr;
  uint32_t return_address;
  uint32_t xpsr;
} sContextStateFrame;

#define CRASH_INFO_MAGIC 0xdead55aa

typedef struct {
    uint32_t magic;
    sContextStateFrame frame;
} sCrashInfo;

static sCrashInfo s_last_crash_into __attribute__((section(".noinit.crash_info")));



/*
The assembly code checks which stack we are using (MSP or PSP), and then loads the 
offending PC position on the stack into the register R1. So R1 will contain the 
code address where the problem happened:

The program counter is *after* the problem, and that the program counter has an 
odd address for ARM Thumb code
*/

#if 1
#define HARDFAULT_HANDLING_ASM(_x)               \
  __asm volatile(                                \
      "tst lr, #4 \n"                            \
      "ite eq \n"                                \
      "mrseq r0, msp \n"                         \
      "mrsne r0, psp \n"                         \
      "b HardFault_Handler_C \n"                  \
                                                 )
#else
#define HARDFAULT_HANDLING_ASM(_x)               \
    __asm volatile
    (
        " tst lr, #4                                          \n"
        " ite eq                                              \n"
        " mrseq r0, msp                                       \n"
        " mrsne r0, psp                                       \n"
        " ldr r1, [r0, #24]                                   \n"
        " ldr r2, handler2_address_const                      \n"
        " bx r2                                               \n"
        " handler2_address_const: .word HardFault_Handler_C    \n"
    );

/*
__asm volatile (
    " movs r0,#4       \n"
    " movs r1, lr      \n"
    " tst r0, r1       \n"
    " beq _MSP         \n"
    " mrs r0, psp      \n"
    " b _HALT          \n"
  "_MSP:               \n"
    " mrs r0, msp      \n"
  "_HALT:              \n"
    " ldr r1,[r0,#20]  \n"
    " b HardFault_HandlerC \n"
    " bkpt #0          \n"
  );
*/
#endif


/**
 * HardFaultHandler_C:
 * This is called from the HardFault_HandlerAsm with a pointer the Fault stack
 * as the parameter. We can then read the values from the stack and place them
 * into local variables for ease of reading.
 * We then read the various Fault Status and Address Registers to help decode
 * cause of the fault.
 * The function ends with a BKPT instruction to force control back into the debugger
 */
/*halting debug trap on hard fault*/
//DEMCR |= VC_HARDERR
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sContextStateFrame *frame) {
    s_last_crash_into.frame = *frame;
    s_last_crash_into.magic = CRASH_INFO_MAGIC;
  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
  // Logic for dealing with the exception. Typically:
  //  - log the fault which occurred for postmortem analysis
  //  - If the fault is recoverable,
  //    - clear errors and return back to Thread Mode
  //  - else
  //    - reboot system

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);

  if (faulted_from_exception || non_usage_fault_occurred) {
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
    while (1) { } // should be unreachable
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
}

/*how do we clean up our state and return to normal code from the HardFault handler?!
There’s a few things we will need to do:

1. Clear any logged faults from the CFSR by writing 1 to each bit which is set.
2. Change the function we return to so we idle the task. In the example case it’s 
   recover_from_task_fault.
3. Scribble a known pattern over the lr. The function we are returning to will 
   need to take special action (i.e like deleting the task or entering a while(1) loop). 
   It can’t just exit and branch to where we were before so we want to fault if 
   this is attempted.
4. Reset the xpsr. Among other things the xpsr tracks the state of previous comparison 
instructions which were run and whether or not we are in the middle of a “If-Then” 
instruction block. The only bit that needs to remain set is the “T” field (bit 24) 
indicating the processor is in thumb mode11.
*/

/*Recovering from a UsageFault without a SYSRESET*/

/*remote fault recovery*/


// Following symbols are defined by the linker.
// Start address for the initialization values of the .data section.
extern uint32_t _sidata;
// Start address for the .data section
extern uint32_t _sdata;
// End address for the .data section
extern uint32_t _edata;
// Start address for the .bss section
extern uint32_t _sbss;
// End address for the .bss section
extern uint32_t _ebss;
// End address for stack
extern uint32_t _estack;

// Prevent inlining to avoid persisting any variables on stack
__attribute__((noinline)) static void prv_cinit(void) {
  // Initialize data and bss
  // Copy the data segment initializers from flash to SRAM
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    *(dst++) = *(src++);
  }

  // Zero fill the bss segment.
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    *(dst++) = 0;
  }
}

// force alignment so we can guarantee that g_unaligned_buffer does not
// wind up 8 byte aligned
static uint8_t s_buffer[10] __attribute__((aligned(4)));
void *g_unaligned_buffer;


// DefaultIntHandler is used for unpopulated interrupts
static void DefaultIntHandler(void) {
  __asm__("bkpt");
  // Go into an infinite loop.
  while (1)
    ;
}

static void NMI_Handler(void) {
  DefaultIntHandler();
}



/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
static void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
}

static void MemoryManagement_Handler(void) {
 
}

static void BusFault_Handler(void) {

}

static void UsageFault_Handler(void) {

}

void Irq0_Handler(void) {

}

void Irq1_Handler(void);


void SVC_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);

extern void Reset_Handler(void);
#define IRQ_NUM_MAX 85
// A minimal vector table for a Cortex M.
__attribute__((section(".ram_isr_vector"))) void (*const pfnVectors[16+IRQ_NUM_MAX])(void) = {
    (void *)(&_estack), // initial stack pointer
    Reset_Handler,
    NMI_Handler,
    HardFault_Handler,
    MemoryManagement_Handler,
    BusFault_Handler,
    UsageFault_Handler,
    0,
    0,
    0,
    0,
    SVC_Handler,
    0,
    0,
    PendSV_Handler,
    SysTick_Handler,
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
  g_unaligned_buffer = &s_buffer[1];
  SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}

void exception_test(void)
{
  exception_init();
  trigger_crash(0);
}
