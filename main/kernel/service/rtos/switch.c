#include <stdio.h>
#include <stdint.h>
#include "os.h"
#include "hal_platform.h"

uint8_t sched_lock_count;

uint32_t task_enter_critical(void)
{
    uint32_t primask = __get_PRIMASK();
    __disable_irq();        // CPSID I
    return primask;  
}

void task_exit_critical (uint32_t status) 
{
    __set_PRIMASK(status);
}

void run_first_task(void)
{
    __set_PSP(0);//psp=0 表示第一个任务
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
}
void task_switch(void)
{
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
}

