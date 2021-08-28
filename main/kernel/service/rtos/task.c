#include <stdio.h>
#include "task.h"
#include "hal_platform.h"



// Cortex-M的堆栈单元类型：堆栈单元的大小为32位，所以使用uint32_t
typedef uint32_t tTaskStack;
void task_sched(void);

typedef void (*task_entry_t)(void* param);
void task_entry_1(void* param)
{
    for(;;) {
        printf("This is %s\n", __func__);
        // delay_ms(1000);
        task_sched();
    }
}

void task_entry_2(void* param)
{
    for(;;) {
        printf("This is %s\n", __func__);
        // delay_ms(1000);
        task_sched();
    }
}

void trigget_pendsv(void)
{
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
}

typedef struct {
    tTaskStack* stack;
} task_t;

task_t task1;
task_t task2;
tTaskStack stack[2][256];
task_t * current_task;
task_t * next_task;

void task_create(task_t * task, task_entry_t entry, void *param, tTaskStack* stack)
{
    *(--stack) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    *(--stack) = (unsigned long)entry;                  // 程序的入口地址
    *(--stack) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    *(--stack) = (unsigned long)0x12;                   // R12, 未用
    *(--stack) = (unsigned long)0x3;                    // R3, 未用
    *(--stack) = (unsigned long)0x2;                    // R2, 未用
    *(--stack) = (unsigned long)0x1;                    // R1, 未用
    *(--stack) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    *(--stack) = (unsigned long)0x11;                   // R11, 未用
    *(--stack) = (unsigned long)0x10;                   // R10, 未用
    *(--stack) = (unsigned long)0x9;                    // R9, 未用
    *(--stack) = (unsigned long)0x8;                    // R8, 未用
    *(--stack) = (unsigned long)0x7;                    // R7, 未用
    *(--stack) = (unsigned long)0x6;                    // R6, 未用
    *(--stack) = (unsigned long)0x5;                    // R5, 未用
    *(--stack) = (unsigned long)0x4;                    // R4, 未用
    task->stack = stack;
}

void task_sched(void)
{
    if (current_task == &task1) {
        next_task = &task2;
    } else {
        next_task = &task1;
    }
    trigget_pendsv();
}

void run_first_task(void)
{
    __set_PSP(0);
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
}

void task_start(void)
{
    task_create(&task1, task_entry_1, (void*)0x11111111, &stack[0]);
    task_create(&task2, task_entry_2, (void*)0x22222222, &stack[1]);
    current_task = &task1;
    
    run_first_task();
}

// void PendSV_Handler(void)
// {
//     __asm volatile (
//    /*
//     1. 获取当前任务的tcb
//     2. 保存任务上下文
//     // */
//     // "IMPORT  currentTask              \n"
//     // "IMPORT  nextTask                 \n"
    
//     "MRS     R0, PSP                  \n"
//     "CBZ     R0, PendSVHandler_nosave \n"

//     "STMDB   R0!, {R4-R11}            \n"

//     "LDR     R1, =current_task         \n"
//     "LDR     R1, [R1]                 \n"
//     "STR     R0, [R1]                 \n"

// "PendSVHandler_nosave:                 \n"

//     "LDR     R0, =current_task         \n"
//     "LDR     R1, =next_task            \n"
//     "LDR     R2, [R1]                 \n"
//     "STR     R2, [R0]                 \n"
 
//     "LDR     R0, [R2]                 \n"
//     "LDMIA   R0!, {R4-R11}            \n"

//     "MSR     PSP, R0                  \n"
//     "ORR     LR, LR, #0x04            \n"
//     "BX      LR                       \n"
//     );

// }
 