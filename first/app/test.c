#include <stdint.h>
#include "hal.h"

void main(void)
{
    printf("[%s] hello world\n", __func__);
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


