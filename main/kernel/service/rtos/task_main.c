#include "os.h"

task_t *current_task;
task_t *next_task;
task_t *idle_task;

task_t *task_table[2];

uint32_t tick_counter;

typedef void (*task_entry_t)(void* param);


void task_create(task_t * task, task_entry_t entry, void *param, uint32_t* stack)
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
    task->delay_ticks = 0;
}


void task_sched(void)
{
    if (current_task == idle_task) {
        if (task_table[0]->delay_ticks == 0) {
            next_task = task_table[0];
        } else if (task_table[1]->delay_ticks == 0) {
            next_task = task_table[1];
        } else {
            return;
        }
    } else {
        if (current_task == task_table[0]) {
            if (task_table[1]->delay_ticks == 0) {
                next_task = task_table[1];
            } else if (current_task->delay_ticks != 0) {
                next_task = idle_task;
            } else {
                return;
            }
        } else if (current_task == task_table[1]) {
            if (task_table[0]->delay_ticks == 0) {
                next_task = task_table[0];
            } else if (current_task->delay_ticks != 0) {
                next_task = idle_task;
            } else {
                return;
            }
        }
    }
    task_switch();
}

void task_systick_handler(void)
{
    int i;
    for (i=0; i<2; i++) {
        if (task_table[i]->delay_ticks > 0) {
            task_table[i]->delay_ticks--;
        }
    }

    tick_counter++;
    task_sched();
}

void SysTick_Handler (void) 
{
    task_systick_handler();
}

void task_delay(uint32_t delay) 
{
    current_task->delay_ticks = delay;
    task_sched();
}

__attribute__((weak)) uint32_t SystemCoreClock = 24000000;
void set_systick_period(uint32_t ms)
{
    uint32_t ticks = SystemCoreClock/1000;
    ticks = ms*ticks;

    SysTick_Config(ticks);
}



int task1_flag;
void task_entry_1(void* param)
{
    set_systick_period(10);
    for(;;) {
        printf("This is %s\n", __func__);
        task_delay(100);
        task_sched();
    }
}

void task_entry_2(void* param)
{
    for(;;) {
        printf("This is %s\n", __func__);
        task_delay(100);
        task_sched();
    }
}

void task_entry_idle(void* param)
{
    for(;;) {
        // printf("This is %s\n", __func__);
    }
}


task_t task1;
task_t task2;
uint32_t task1_env[1024];
uint32_t task2_env[1024];

task_t task_idle;
uint32_t idletask_env[1024];


void task_start(void)
{
    task_create(&task1, task_entry_1, (void*)0x11111111, &task1_env[1024]);
    task_create(&task2, task_entry_2, (void*)0x22222222, &task2_env[1024]);
    current_task = &task1;

    task_table[0] = &task1;
    task_table[1] = &task2;
    
    task_create(&task_idle, task_entry_idle, (void*)0, &idletask_env[1024]);
    idle_task = &task_idle;
    next_task = task_table[0];

    run_first_task();
    while(1);
}

