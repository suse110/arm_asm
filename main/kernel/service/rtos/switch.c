#include <stdio.h>
#include <stdint.h>
#include "os.h"
#include "hal_platform.h"

bool is_scheduler_ready = false;
task_t *current_task = NULL;
task_t *next_task;
task_t *idle_task;

list_t task_table[OS_PRO_COUNT];

uint32_t tick_counter = 0;

uint8_t sched_lock_count;

bitmap_t task_priority_bitmap;
list_t task_delay_list;

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
    is_scheduler_ready = true;

    __set_PSP(0);//psp=0 表示第一个任务
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
}
void task_switch(void)
{
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
}


uint32_t task_get_ticks(void)
{
    return tick_counter;
}
task_t * task_highest_ready (void)
{
    // os_printf("bitmap_value=%x\n", bitmap_get_value(&task_priority_bitmap));

    uint32_t highest_priority = bitmap_get_first(&task_priority_bitmap);
    node_t * node = list_first(&task_table[highest_priority]);
    return (task_t*)NODE_PARENT(node, task_t, link_node);
}

void task_sched_init(void)
{
    int i = 0;
    sched_lock_count = 0;
    bitmap_init(&task_priority_bitmap);
    for (i = 0; i < OS_PRO_COUNT; i++) {
        list_init(&task_table[i]);
    }
}

void task_sched_disable(void)
{
    uint32_t status = task_enter_critical();
    if (sched_lock_count < 255) {
        sched_lock_count++;
    }
    task_exit_critical(status);
}

void task_sched_enable(void)
{
    uint32_t status = task_enter_critical();
    if (sched_lock_count > 0) {
        if (--sched_lock_count == 0) {
            task_sched();
        }
    }
    task_exit_critical(status);
}

void task_sched_ready(task_t *task)
{
    list_add_last(&task_table[task->priority], &task->link_node);
    bitmap_set_bit(&task_priority_bitmap, task->priority);
}
void task_sched_not_ready(task_t *task)
{
    list_remove(&task_table[task->priority], &task->link_node);
    //同一优先级可能有多个任务
    if (list_count(&task_table[task->priority]) == 0) {
        bitmap_clear_bit(&task_priority_bitmap, task->priority);
    }
}
void task_sched_remove (task_t * task)
{
    list_remove(&task_table[task->priority], &(task->link_node));
	
    if (list_count(&task_table[task->priority]) == 0) 
    {
        bitmap_clear_bit(&task_priority_bitmap, task->priority);
    }
}

void task_sched(void)
{
    task_t *tmp_task;
    uint32_t status = task_enter_critical();

    if (sched_lock_count > 0) {
        task_exit_critical(status);
        return;
    }
    tmp_task = task_highest_ready();
    if (tmp_task != current_task) {
        next_task = tmp_task;
        task_switch();
    }
    task_exit_critical(status);
}
void task_delay_init(void)
{
    list_init(&task_delay_list);
}
void task_time_wait(task_t *task, uint32_t ticks)
{
    task->delay_ticks = ticks;
    list_add_last(&task_delay_list, &task->delay_node);
    task->state |= OS_TASK_STATE_DELAYED;
}
void task_time_wakeup(task_t *task)
{
    list_remove(&task_delay_list, &task->delay_node);
    task->state &= ~OS_TASK_STATE_DELAYED;
}
void task_time_remove(task_t *task)
{
    list_remove(&task_delay_list, &task->delay_node);
}
void task_systick_handler(void)
{
    node_t *node;
    
    int i;
    uint32_t status = task_enter_critical();
    for (node = task_delay_list.head_node.next_node; node != &task_delay_list.head_node; \
        node = node->next_node) {
        task_t *task = NODE_PARENT(node, task_t, delay_node);
        // os_printf("%s delay_ticks=%d ,curtask=%s slice=%d\n", task->name, \
        //     task->delay_ticks,current_task->name, current_task->slice);

        if (task->delay_ticks > 0) {
            if (--task->delay_ticks == 0) {
                task_time_wakeup(task);
                task_sched_ready(task);
            }
        } else {
            // os_printf("[%s] ready\n", task->name);
            task_sched_ready(task);
        }
    }
    // 检查下当前任务的时间片是否已经到了
    if (--current_task->slice == 0) {
        // 如果当前任务中还有其它任务的话，那么切换到下一个任务
        // 方法是将当前任务从队列的头部移除，插入到尾部
        // 这样后面执行tTaskSched()时就会从头部取出新的任务取出新的任务作为当前任务运行
        if (list_count(&task_table[current_task->priority]) > 0) {
            list_remove_first(&task_table[current_task->priority]);
            list_add_last(&task_table[current_task->priority], &current_task->link_node);
            //reset counter
            current_task->slice = OS_SLICE_MAX;
        }
    }
    task_exit_critical(status);
    // 通知定时器模块节拍事件
    timer_module_tick_notify();
    task_sched();
}



void SysTick_Handler (void) 
{
    HAL_IncTick();
    tick_counter++;
    if (is_scheduler_ready) {
        task_systick_handler();
    }
}

__attribute__((weak)) uint32_t SystemCoreClock = 24000000;
void set_systick_period(uint32_t ms)
{
    uint32_t ticks = 24000;//SystemCoreClock/1000;
    ticks = ms*ticks;

    SysTick_Config(ticks);
}

