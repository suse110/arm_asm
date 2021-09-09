#include "exception.h"

void trigger_irq(void) 
{
    NVIC->ISER[0] |= (0x1 << 1);

    // Pend an interrupt
    NVIC->ISPR[0] |= (0x1 << 1);
    // flush pipeline to ensure exception takes effect before we
    // return from this routine
    __asm("isb");
}

/*Fault Entry Exception*/
/*Debug Tips when dealing with a STKERR
1. The stack pointer will always reflect the correct adjusted position as if the hardware 
successfully stacked the registers. This means you can find the stack pointer prior to 
exception entry by adding the adjustment value.
2. Depending on what access triggers the exception, the stacked frame may be partially 
valid. For example, the very last store of the hardware stacking could trigger the fault 
and all the other stores could be valid. However, the order the hardware pushes register 
state on the stack is implementation specific. So when inspecting the frame assume the 
values being looked at may be invalid!
*/
void stkerr_from_psp(void) {
  extern uint32_t _sdata[];
  uint8_t dummy_variable;
  const size_t distance_to_ram_bottom = (uint32_t)&dummy_variable - (uint32_t)_sdata;
  volatile uint8_t big_buf[distance_to_ram_bottom - 8];
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    big_buf[i] = i;
  }

  trigger_irq();
}

int bad_memory_access_crash(void) {
  volatile uint32_t *bad_access = (volatile uint32_t *)0xdeadbeef;
  return *bad_access;
}
/*Bad Address Read*/
uint32_t read_from_bad_address(void) {
  return *(volatile uint32_t *)0xbadcafe;
}

/*eXecute Never Fault*/
int illegal_instruction_execution(void) {
  int (*bad_instruction)(void) = (void *)0xE0000000;
  return bad_instruction();
}

void unaligned_double_word_read(void) {
//   extern void *g_unaligned_buffer;
//   uint64_t *buf = g_unaligned_buffer;
//   *buf = 0x1122334455667788;
}

/*Imprecise Fault*/
void bad_addr_double_word_write(void) {
  volatile uint64_t *buf = (volatile uint64_t *)0x30000000;
  *buf = 0x1122334455667788;
}
/*Coprocessor Fault*/
void access_disabled_coprocessor(void) {
  // FreeRTOS will automatically enable the FPU co-processor.
  // Let's disable it for the purposes of this example
  __asm volatile(
      "ldr r0, =0xE000ED88 \n"
      "mov r1, #0 \n"
      "str r1, [r0]	\n"
      "dsb \n"
    //   "vmov r0, s0 \n"
      );
}
void usagefault(void)
{
    //udf 0xff
    __builtin_trap();
}

void busfault(void)
{
    *(uint32_t*)0xdead0000 = 0x20;
}
void memmanage(void)
{
    void (*func_in_xn_region)(void)=(void*)0xE0000000;
    func_in_xn_region();
}

__attribute__((naked))
void Irq1_Handler(void) {
  __asm volatile(
      "ldr r0, =0xFFFFFFE0 \n"
      "bx r0 \n"
                 );
}

// Make the variable global so the compiler doesn't optimize away the setting
// and the crash taken can be overriden from gdb without having to recompile
// the app. For example, to cause a stack overflow crash:
//
// (gdb) break main
// (gdb) continue
// (gdb) set exception_crash_id=1
// (gdb) continue
int exception_crash_id = 0;

// Eight crash modes:
//  0: Bad instruction execution
//  1: Bad Address Read
//  2: Disabled Coprocessor Access
//  3: Bad Memory Write
//  4: Exception Entry Fault
//  5: Unaligned 8 byte read
//  6: Bad 4 byte read
//  7: Illegal EXC_RETURN
void trigger_crash(int crash_id) 
{
  switch (crash_id) {
    case 0:
      illegal_instruction_execution();      
      break;
    case 1:
      read_from_bad_address();
      break;
    case 2:
      access_disabled_coprocessor();
      break;
    case 3:
      bad_addr_double_word_write();
      break;
    case 4:
      stkerr_from_psp();
      break;
    case 5:
      unaligned_double_word_read();      
      break;
    case 6:
      bad_memory_access_crash();
      break;
    case 7:
      trigger_irq();
      break;
    default:
      break;
  }
}
void recover_from_task_fault(void) 
{
  while (1) {
    
  }
}

