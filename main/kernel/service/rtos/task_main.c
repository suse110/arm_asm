#include "os.h"
#include "bitmap.h"
#include <stdbool.h>

bool is_scheduler_ready = false;
task_t *current_task = NULL;
task_t *next_task;
task_t *idle_task;

list_t task_table[OS_PRO_COUNT];

uint32_t tick_counter = 0;

uint8_t sched_lock_count;

bitmap_t task_priority_bitmap;
list_t task_delay_list;


#define GET_TICKS() tick_counter

task_t * task_highest_ready (void)
{
    uint32_t highest_priority = bitmap_get_first(&task_priority_bitmap);
    // return task_table[highest_priority];
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
    // task_table[task->priority] = (task_t*)0;
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
#if 1
    tmp_task = task_highest_ready();
    if (tmp_task != current_task) {
        next_task = tmp_task;
        task_switch();
    }
    task_exit_critical(status);
#else
    if (current_task == idle_task) {
        if (task_table[0]->delay_ticks == 0) {
            next_task = task_table[0];
        } else if (task_table[1]->delay_ticks == 0) {
            next_task = task_table[1];
        } else {
            task_exit_critical(status);
            return;
        }
    } else {
        if (current_task == task_table[0]) {
            if (task_table[1]->delay_ticks == 0) {
                next_task = task_table[1];
            } else if (current_task->delay_ticks != 0) {
                next_task = idle_task;
            } else {
                task_exit_critical(status);
                return;
            }
        } else if (current_task == task_table[1]) {
            if (task_table[0]->delay_ticks == 0) {
                next_task = task_table[0];
            } else if (current_task->delay_ticks != 0) {
                next_task = idle_task;
            } else {
                task_exit_critical(status);
                return;
            }
        }
    }
    task_switch();
    task_exit_critical(status);
#endif
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
    for (node = task_delay_list.head_node.next_node; node != &task_delay_list.head_node; node = node->next_node) {
        task_t *task = NODE_PARENT(node, task_t, delay_node);
        if (--task->delay_ticks == 0) {
            task_time_wakeup(task);
            task_sched_ready(task);
        }

    }

    if (--current_task->slice == 0) {
        if (list_count(&task_table[current_task->priority]) > 0) {
            list_remove_first(&task_table[current_task->priority]);
            list_add_last(&task_table[current_task->priority], &current_task->link_node);
            //reset counter
            current_task->slice = OS_SLICE_MAX;
        }
    }
    task_exit_critical(status);

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


task_t task1;
task_t task2;
task_t task3;
task_t task4;
uint32_t task1_env[1024];
uint32_t task2_env[1024];
uint32_t task3_env[1024];
uint32_t task4_env[1024];

task_t task_idle;
uint32_t idletask_env[1024];

int share_count;
int task1_flag;
int first_set;
void task1_destroy_func (void * param) 
{
    task1_flag = 0;
        printf("[%05d][%s] deleted by someone\n", GET_TICKS(), __func__);
}
void task_entry_1(void* param)
{
    // printf("[%05d][%s] start\n", GET_TICKS(), __func__);
    bitmap_t bitmap;
    int i;
    bitmap_init(&bitmap);
    // 依次从最高位开始，将所有位Set，然后检查第1个Set的位置序号
    for (i = bitmap_pos_count() - 1; i >= 0 ; i--) 
    {
        bitmap_set_bit(&bitmap, i);

        // first_set 的值应当依次为7,6,5,....,1,0
        first_set = bitmap_get_first(&bitmap);
    }

    // 依次从第0位开始，将所有位Set，然后检查实际Set的位置序号
    for (i = 0; i < bitmap_pos_count(); i++) 
    {
        bitmap_clear_bit(&bitmap, i);
        
        // first_set 的值应当依次为7,6,5,....,1,0
        first_set = bitmap_get_first(&bitmap);
    }
    set_systick_period(10);
    task_set_clean_callback(current_task, task1_destroy_func, NULL);
    for(;;) {
        int var;
        task_sched_disable();
        printf("[%05d][%s] share_count=%d\n", GET_TICKS(), __func__, share_count);
        var = share_count;
        task1_flag = 1;
        task_delay(500);
        var++;
        share_count = var;
        task_sched_enable();
        printf("[%05d][%s] suspend current task 1th.\n", GET_TICKS(), __func__);
        task_suspend(current_task);

        task1_flag = 0;
        task_delay(500);
        printf("[%05d][%s] suspend current task, 2th.\n", GET_TICKS(), __func__);
        task_suspend(current_task);
    }
}
int task2_flag;
void task_entry_2(void* param)
{
    // printf("[%05d][%s] start\n", GET_TICKS(), __func__);
    int task1_deleted = 0;
    for(;;) {
        task_delay(500);
        task_sched_disable();
        printf("[%05d][%s] share_count=%d\n", GET_TICKS(), __func__, share_count);
        share_count++;
        task_sched_enable();
        printf("[%05d][%s] resume task1, 1th.\n", GET_TICKS(), __func__);
        task_resume(&task1);

        task2_flag = 1;
        task_delay(500);
        task2_flag = 0;
        printf("[%05d][%s] resume task1, 2th.\n", GET_TICKS(), __func__);
        task_resume(&task1);

        if (!task1_deleted) {
            printf("[%05d][%s] delete task1\n", GET_TICKS(), __func__);
            task1_deleted = 1;
            task_force_delete(&task1);
        }
    }
}
int task3_flag;
void task_entry_3(void* param)
{
    // printf("[%05d][%s] start\n", GET_TICKS(), __func__);
    for(;;) {
        if (task_is_request_delete()) {
            task3_flag = 0;
            printf("[%05d][%s] delete self\n", GET_TICKS(), __func__);
            task_delete_self();
        }
        task_delay(500);
        task_sched_disable();
        printf("[%05d][%s] share_count=%d\n", GET_TICKS(), __func__, share_count);
        share_count++;
        task_sched_enable();

        task3_flag = 1;
        task_delay(500);
        task3_flag = 0;
        // task_delay(500);
    }
}
int task4_flag;
void task_entry_4(void* param)
{
    int task3_deleted = 0;
    // printf("[%05d][%s] start\n", GET_TICKS(), __func__);
    for(;;) {

        task_sched_disable();
        printf("[%05d][%s] share_count=%d\n", GET_TICKS(), __func__, share_count);
        share_count++;
        task_sched_enable();

        task4_flag = 1;
        task_delay(500);
        task4_flag = 0;
        if (!task3_deleted) {
            task_request_delete(&task3);
            task3_deleted = 1;
        }
    }
}

void task_entry_idle(void* param)
{
    for(;;) {
        // printf("This is %s\n", __func__);
    }
}



void task_start(void)
{
    task_sched_init();
    task_delay_init();

    task_create(&task1, task_entry_1, (void*)0x11111111, 0, &task1_env[1024]);
    task_create(&task2, task_entry_2, (void*)0x22222222, 1, &task2_env[1024]);
    task_create(&task3, task_entry_3, (void*)0x33333333, 0, &task3_env[1024]);
    task_create(&task4, task_entry_4, (void*)0x44444444, 1, &task4_env[1024]);
    // current_task = &task1;

    // task_table[0] = &task1;
    // task_table[1] = &task2;
    
    task_create(&task_idle, task_entry_idle, (void*)0, OS_PRO_COUNT - 1,&idletask_env[1024]);
    // idle_task = &task_idle;
    next_task = task_highest_ready();
    is_scheduler_ready = true;
    run_first_task();
    while(1);
}

