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
void main(void)
{
    code_start_addr = (uint32_t)&_stext;
    code_end_addr = (uint32_t)&_etext;
    code_size = code_end_addr - code_start_addr;
    stack_start_addr = (uint32_t)&_sstack;
    stack_end_addr = (uint32_t)&_estack;
    stack_size = stack_end_addr - stack_start_addr;

    lite_printf("[%s] hello world\n", __func__);
    lite_printf("[%s] code_start_addr=0x%x code_end_addr=0x%x code_size=%d<0x%x>\n", \
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    lite_printf("[%s] stack_start_addr=0x%x stack_end_addr=0x%x stack_size=%d<0x%x>\n", \
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);

    // backtrace_test();
    // hal_mpu_test();
    while(1);
}

void nmi_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void hard_fault_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void mem_manage_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void bus_fault_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void usage_fault_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void svc_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void debug_mon_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void pend_sv_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}

void sys_tick_handler(void)
{
    lite_printf("[%s]\n", __func__);
    while(1);
}


