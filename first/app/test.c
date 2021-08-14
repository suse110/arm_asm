#include <stdint.h>
#include "hal.h"

uint32_t code_start_addr = 0;
uint32_t code_end_addr = 0;
uint32_t code_size = 0;
uint32_t stack_start_addr = 0;
uint32_t stack_end_addr = 0;
uint32_t stack_size = 0;

extern const uint32_t _stext;
extern const uint32_t _etext;
extern const uint32_t _sstack;
extern const uint32_t _estack;

static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer) {
    // if (stack_is_overflow) {
        // if (on_thread_before_fault) {
        //     printf(print_info[PRINT_THREAD_STACK_OVERFLOW], stack_pointer);
        // } else {
        //     printf(print_info[PRINT_MAIN_STACK_OVERFLOW], stack_pointer);
        // }
        if ((uint32_t) stack_pointer < stack_start_addr) {
            stack_pointer = (uint32_t *) stack_start_addr;
        } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
            stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
        }
    // }
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
        printf("  addr: %08x    data: %08x\n", stack_pointer, *stack_pointer);
    }
    printf("====================================");
}


/* include or export for supported cmb_get_msp, cmb_get_psp and cmb_get_sp function */
#if defined(__CC_ARM)
    static __inline __asm uint32_t cmb_get_msp(void) {
        mrs r0, msp
        bx lr
    }
    static __inline __asm uint32_t cmb_get_psp(void) {
        mrs r0, psp
        bx lr
    }
    static __inline __asm uint32_t cmb_get_sp(void) {
        mov r0, sp
        bx lr
    }
#elif defined(__CLANG_ARM)
    __attribute__( (always_inline) ) static __inline uint32_t cmb_get_msp(void) {
        uint32_t result;
        __asm volatile ("mrs %0, msp" : "=r" (result) );
        return (result);
    }
    __attribute__( (always_inline) ) static __inline uint32_t cmb_get_psp(void) {
        uint32_t result;
        __asm volatile ("mrs %0, psp" : "=r" (result) );
        return (result);
    }
    __attribute__( (always_inline) ) static __inline uint32_t cmb_get_sp(void) {
        uint32_t result;
        __asm volatile ("mov %0, sp" : "=r" (result) );
        return (result);
    }
#elif defined(__ICCARM__)
/* IAR iccarm specific functions */
/* Close Raw Asm Code Warning */  
#pragma diag_suppress=Pe940    
    static uint32_t cmb_get_msp(void)
    {
      __asm("mrs r0, msp");
      __asm("bx lr");        
    }
    static uint32_t cmb_get_psp(void)
    {
      __asm("mrs r0, psp");
      __asm("bx lr");        
    }
    static uint32_t cmb_get_sp(void)
    {
      __asm("mov r0, sp");
      __asm("bx lr");       
    }
#pragma diag_default=Pe940  
#elif defined(__GNUC__)
    __attribute__( ( always_inline ) ) static inline uint32_t cmb_get_msp(void) {
        register uint32_t result;
        __asm volatile ("MRS %0, msp\n" : "=r" (result) );
        return(result);
    }
    __attribute__( ( always_inline ) ) static inline uint32_t cmb_get_psp(void) {
        register uint32_t result;
        __asm volatile ("MRS %0, psp\n" : "=r" (result) );
        return(result);
    }
    __attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
        register uint32_t result;
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
        return(result);
    }
#else
    #error "not supported compiler"
#endif
void main(void)
{
    code_start_addr = (uint32_t)&_stext;
    code_end_addr = (uint32_t)&_etext;
    code_size = code_end_addr - code_start_addr;
    stack_start_addr = (uint32_t)&_sstack;
    stack_end_addr = (uint32_t)&_estack;
    stack_size = stack_end_addr - stack_start_addr;

    printf("[%s] hello world\n", __func__);
    printf("[%s] code_start_addr=0x%x code_end_addr=0x%x code_size=%d<0x%x>\n", \
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%x stack_end_addr=0x%x stack_size=%d<0x%x>\n", \
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    dump_stack(stack_start_addr, stack_size, cmb_get_sp());
    // backtrace_test();
    // hal_mpu_test();
    while(1);
}

void nmi_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void hard_fault_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void mem_manage_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void bus_fault_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void usage_fault_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void svc_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void debug_mon_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void pend_sv_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}

void sys_tick_handler(void)
{
    printf("[%s]\n", __func__);
    while(1);
}


