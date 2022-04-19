#include "exception.h"
#include "stp.h"
#include "macro.h"
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
  /*00*/uint32_t r0;
  /*01*/uint32_t r1;
  /*02*/uint32_t r2;
  /*03*/uint32_t r3;
  /*04*/uint32_t r12;
  /*05*/uint32_t lr;
  /*06*/uint32_t pc;
  /*07*/uint32_t xpsr;
  /*08*/uint32_t r4;
  /*09*/uint32_t r5;
  /*10*/uint32_t r6;
  /*11*/uint32_t r7;
  /*12*/uint32_t r8;
  /*13*/uint32_t r9;
  /*14*/uint32_t r10;
  /*15*/uint32_t r11;
  /*16*/uint32_t sp;
  /*17*/uint32_t msp;
  /*18*/uint32_t psp;
  /*19*/uint32_t control;
  /*20*/uint32_t basepri;
  /*21*/uint32_t primask;
  /*22*/uint32_t faultmask;
  /*23*/uint32_t fpscr;
  /*24*/uint32_t s0;
  /*25*/uint32_t s1;
  /*26*/uint32_t s2;
  /*27*/uint32_t s3;
  /*28*/uint32_t s4;
  /*29*/uint32_t s5;
  /*30*/uint32_t s6;
  /*31*/uint32_t s7;
  /*32*/uint32_t s8;
  /*33*/uint32_t s9;
  /*34*/uint32_t s10;
  /*35*/uint32_t s11;
  /*36*/uint32_t s12;
  /*37*/uint32_t s13;
  /*38*/uint32_t s14;
  /*39*/uint32_t s15;
  /*40*/uint32_t s16;
  /*41*/uint32_t s17;
  /*42*/uint32_t s18;
  /*43*/uint32_t s19;
  /*44*/uint32_t s20;
  /*45*/uint32_t s21;
  /*46*/uint32_t s22;
  /*47*/uint32_t s23;
  /*48*/uint32_t s24;
  /*49*/uint32_t s25;
  /*50*/uint32_t s26;
  /*51*/uint32_t s27;
  /*52*/uint32_t s28;
  /*53*/uint32_t s29;
  /*54*/uint32_t s30;
  /*55*/uint32_t s31;
} sContextStateFrame;

#define CRASH_INFO_MAGIC 0xdead55aa

typedef struct {
    uint32_t magic;
    sContextStateFrame frame;
} sCrashInfo;

static sCrashInfo last_crash_info __attribute__((section(".noinit.crash_info")));



/*
The assembly code checks which stack we are using (MSP or PSP), and then loads the 
offending PC position on the stack into the register R1. So R1 will contain the 
code address where the problem happened:

The program counter is *after* the problem, and that the program counter has an 
odd address for ARM Thumb code
*/

#define HARDFAULT_HANDLING_ASM(_x)                                    \
                       __asm volatile(                                \
/*                    */   "mrs r3, primask\n"               \
/*                    */   "cpsid i\n"               \
/*                    */   "ldr r1, =last_crash_info\n"               \
/*                    */   "ldr r2, =0xdead55aa\n"                    \
/*                    */   "str r2, [r1]\n"                           \
/*                    */   "add r1, r1, #4\n"                         \
/*                    */   "mov r4, lr \n"                            \
/*                    */   "tst lr, #4 \n"                            \
/*                    */   "ite eq \n"                                \
/*                    */   "mrseq r0, msp \n"                         \
/*                    */   "mrsne r0, psp \n"                         \
/* load r0            */   "ldr r2, [r0, #0] \n"                      \
/* store r0           */   "str r2, [r1, #0] \n"                      \
/* load r1            */   "ldr r2, [r0, #4] \n"                      \
/* store r1           */   "str r2, [r1, #4] \n"                      \
/* load r2            */   "ldr r2, [r0, #8] \n"                      \
/* store r2           */   "str r2, [r1, #8] \n"                      \
/* load r3            */   "ldr r2, [r0, #12] \n"                     \
/* store r3           */   "str r2, [r1, #12] \n"                     \
/* load r12           */   "ldr r2, [r0, #16] \n"                     \
/* store r12          */   "str r2, [r1, #16] \n"                     \
/* load lr            */   "ldr r2, [r0, #20] \n"                     \
/* store lr           */   "str r2, [r1, #20] \n"                     \
/* load pc            */   "ldr r2, [r0, #24] \n"                     \
/* store pc           */   "str r2, [r1, #24] \n"                     \
/* load xpsr          */   "ldr r2, [r0, #28] \n"                     \
/* store xpsr         */   "str r2, [r1, #28] \n"                     \
/* add pointer        */   "add r1, r1, #28 \n"                       \
/* store r4-r11       */   "stmia r1!, {r4-r11}\n"                    \
/* load psp           */   "mrs r2, psp \n"                           \
/* store psp          */   "str r2, [r1, #0] \n"                      \
/* load msp           */   "mrs r2, msp \n"                           \
/* store msp          */   "str r2, [r1, #4] \n"                      \
/* load control       */   "mrs r2, control \n"                       \
/* store control      */   "str r2, [r1, #8] \n"                      \
/* load basepri       */   "mrs r2, basepri \n"                       \
/* store basepri      */   "str r2, [r1, #12] \n"                     \
/* store primask      */   "str r3, [r1, #16] \n"                     \
/* load faultmask     */   "mrs r2, faultmask \n"                     \
/* store faultmask    */   "str r2, [r1, #20] \n"                     \
/*                    */   "ldr r0, =last_crash_info\n"               \
/*                    */   "b HardFault_Handler_C \n"                 \
                                                 )

__attribute__((optimize("O0")))
void exception_common_handler_c(sCrashInfo *sCrashInfo, uint32_t fault_type) {

}

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
void HardFault_Handler_C(sCrashInfo *sCrashInfo) {
    sContextStateFrame *frame = &sCrashInfo->frame;

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
    // SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
#ifdef BACKTRACE_ENABLE
    backtrace_dump_stack(frame->sp);
    backtrace_print_callstack(frame->sp);
#endif
    while (1) { } // should be unreachable
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
  // the instruction we will return to when we exit from the exception
  frame->pc = (uint32_t)recover_from_task_fault;
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
extern uint32_t _sidata[];
// Start address for the .data section
extern uint32_t _sdata[];
// End address for the .data section
extern uint32_t _edata[];
// Start address for the .bss section
extern uint32_t _sbss[];
// End address for the .bss section
extern uint32_t _ebss[];
// End address for stack
extern uint32_t _estack[];

extern uint32_t _stext[];
extern uint32_t _etext[];
extern uint32_t _s_ram_vtor[];
extern uint32_t _e_ram_vtor[];
extern uint32_t _sheap[];
extern uint32_t _eheap[];

// Prevent inlining to avoid persisting any variables on stack
__attribute__((noinline)) static void prv_cinit(void) {
  // Initialize data and bss
  // Copy the data segment initializers from flash to SRAM
  for (uint32_t *dst = _sdata, *src = _sidata; dst < _edata;) {
    *(dst++) = *(src++);
  }

  // Zero fill the bss segment.
  for (uint32_t *dst = _sbss; dst < _ebss;) {
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
void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
}
__attribute__((naked))
void MemoryManagement_Handler(void) {
  HARDFAULT_HANDLING_ASM();
}
__attribute__((naked))
void BusFault_Handler(void) {
  HARDFAULT_HANDLING_ASM();
}
__attribute__((naked))
void UsageFault_Handler(void) {
  HARDFAULT_HANDLING_ASM();
}

void Irq0_Handler(void) {
  HARDFAULT_HANDLING_ASM();
}

void Irq1_Handler(void);

__attribute__((naked))
static void SVC_Handler(void) {
  HARDFAULT_HANDLING_ASM();
}
// __attribute__((naked))
// static void PendSV_Handler(void) {
//   HARDFAULT_HANDLING_ASM();
// }
// __attribute__((naked))
// static void SysTick_Handler(void) {
//   HARDFAULT_HANDLING_ASM();
// }
extern void Reset_Handler(void);
extern void PendSV_Handler(void);
extern void SysTick_Handler(void);

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



exception_dump_address_t exception_dump_address[] = {
    {"text", (uint32_t)_stext, (uint32_t)_etext},
    {"data",(uint32_t) _sdata,(uint32_t) _edata},
    {"ram_vtor",(uint32_t) _s_ram_vtor,(uint32_t) _e_ram_vtor},
    {"bss",(uint32_t) _sbss,(uint32_t) _ebss},
    {"heap",(uint32_t) _sheap,(uint32_t) _eheap},
    {"nvic", 0xE000E000, 0xE000E450},
    {NULL, 0, 0}
};

void exception_init(void)
{
  g_unaligned_buffer = &s_buffer[1];
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}

void exception_test(void)
{
  exception_init();
  trigger_crash(0);
}

uint32_t __platform_assert_lr = 0;
typedef struct {
  const char* expr;
  const char* file;
  uint32_t line;
} assert_info_t;
assert_info_t assert_info;
__attribute__((__section__(".exception.__platform_assert")))
void __platform_assert(const char *expr, const char *file, uint32_t line)
{
  __platform_assert_lr = (uint32_t)__builtin_return_address(0);
  __disable_irq();
  assert_info.expr = expr;
  assert_info.file = file;
  assert_info.line = line;

  SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk;
  *((volatile uint32_t*)0xFFFFFFF1) = 1;
  while(1);
}

uint8_t dump_buffer[EXECPTION_DUMP_PKT_SIZE + EXECPTION_DUMP_BUFFER_HEAD_SIZE];
void do_exception_dump(exception_dump_buffer_t *dump_buf)
{
  memcpy(dump_buffer, (uint8_t*)dump_buf, EXECPTION_DUMP_BUFFER_HEAD_SIZE);
  memcpy(&dump_buffer[EXECPTION_DUMP_BUFFER_HEAD_SIZE], (uint8_t*)dump_buf->content, dump_buf->length);
  stp_write_exception(dump_buffer, dump_buf->length + EXECPTION_DUMP_BUFFER_HEAD_SIZE);
}

void exception_dump(void)
{
  uint32_t dump_len;
  uint32_t i, j;
  exception_dump_address_t *p_exaddr;
  exception_dump_buffer_t dump_buf;
  uint8_t buffer[128] = {0};
  foreach_index(i, 0, sizeof(exception_dump_address)/sizeof(exception_dump_address[0])) {
    p_exaddr = &exception_dump_address[i];
    if (p_exaddr->name == NULL) {
      break;
    }
    dump_len = p_exaddr->end_address - p_exaddr->start_address;
    // printf("------------memmory region:%s:%d------------\r\n", p_exaddr->name, dump_len);
    snprintf(buffer, sizeof(buffer), "------------memmory region:%s:%d------------\r\n", p_exaddr->name, dump_len);
    stp_write_log(buffer, strlen(buffer));
    dump_buf.id = EXECPTION_DUMP_ID_START;
    dump_buf.region = i;
    dump_buf.length = strlen(p_exaddr->name);
    dump_buf.content = p_exaddr->name;
    do_exception_dump(&dump_buf);

    uint32_t dump_blocks = dump_len / EXECPTION_DUMP_PKT_SIZE;
    uint32_t dump_remains = dump_len % EXECPTION_DUMP_PKT_SIZE;


    dump_buf.id = EXECPTION_DUMP_ID_DATA;
    for (j = 0; j < dump_blocks; j++) {
      dump_buf.region = j;
      dump_buf.length = EXECPTION_DUMP_PKT_SIZE;
      dump_buf.content = (uint8_t*)p_exaddr->start_address + i*EXECPTION_DUMP_PKT_SIZE;
      do_exception_dump(&dump_buf);
    }

    dump_buf.region = j;
    dump_buf.length = dump_remains;
    dump_buf.content = (uint8_t*)p_exaddr->start_address + i*EXECPTION_DUMP_PKT_SIZE;
    do_exception_dump(&dump_buf);

    dump_buf.id = EXECPTION_DUMP_ID_END;
    dump_buf.length = 0;
    dump_buf.content = NULL;
    do_exception_dump(&dump_buf);
  
  }
}

