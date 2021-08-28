#ifndef __BACKTRACE_H__
#define __BACKTRACE_H__
#include <stdint.h>
void backtrace_test(void);


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
#endif // __BACKTRACE_H__
