#include "os.h"

bool is_scheduler_ready = false;
task_t *current_task = NULL;
task_t *next_task;
task_t *idle_task;

list_t task_table[OS_PRO_COUNT];

uint32_t tick_counter = 0;

uint8_t sched_lock_count;

bitmap_t task_priority_bitmap;
list_t task_delay_list;

uint32_t task_get_ticks(void)
{
    return tick_counter;
}
task_t * task_highest_ready (void)
{
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
            task->delay_ticks,current_task->name, current_task->slice);
        if (task->delay_ticks > 0) {
            if (--task->delay_ticks == 0) {
                task_time_wakeup(task);
                task_sched_ready(task);
            }
        } else {
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
event_t event_wait_timeout;
event_t event_wait_normal;

int share_count;
int task1_flag;
int first_set;
void task1_destroy_func (void * param) 
{
    task1_flag = 0;
        os_printf("deleted by someone\n");
}
void task_entry_1(void* param)
{
    os_printf("start\n");

    set_systick_period(10);
    event_init(&event_wait_normal, EVENT_UNKNOWN_TYPE);
    // event_init(&event_wait_timeout, EVENT_UNKNOWN_TYPE);
    task_set_clean_callback(current_task, task1_destroy_func, NULL);
    for(;;) {

        // event_wait(&event_wait_timeout, current_task, 0, 0, 500);
        // task_sched();
        uint32_t count = event_wait_count(&event_wait_normal);
        uint32_t wakeup_count = event_remove_all(&event_wait_normal, (void *)0, 0);
        os_printf("runing 1, count=%d\n", count);
        if (wakeup_count > 0) {
            task_sched();
            count = event_wait_count(&event_wait_normal);
        }

        os_printf("runing 2, count=%d\n", count);
   
        task_delay(500);
        task1_flag = 0;
        task_delay(500);

    }
}
int task2_flag;
void task_entry_2(void* param)
{
    os_printf("start\n");
    for(;;) {
        os_printf("runing 1\n");
        event_wait(&event_wait_normal, current_task, 0, 0, 0);
        task_sched();
        os_printf("runing 2\n");
        
        task2_flag = 1;
        task_delay(500);
        task2_flag = 0;
        task_delay(500);
    }
}
int task3_flag;
void task_entry_3(void* param)
{
    os_printf("start\n");
    // event_init(&event_wait_normal, EVENT_UNKNOWN_TYPE);
    for(;;) {
        os_printf("runing 1\n");
        event_wait(&event_wait_normal, current_task, 0, 0, 0);
        task_sched();
        os_printf("runing 2\n");

        task3_flag = 1;
        task_delay(500);
        task3_flag = 0;
        task_delay(500);
    }
}
int task4_flag;
void task_entry_4(void* param)
{
    os_printf("start\n");
    for(;;) {
        os_printf("runing 1\n");
        // task_t * ready_task = event_wakeup(&event_wait_normal, (void *)0, 0);
        // task_sched();
        event_wait(&event_wait_normal, current_task, 0, 0, 0);
        task_sched();
        os_printf("runing 2\n");

        task4_flag = 1;
        task_delay(500);
        task4_flag = 0;
        task_delay(500);
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

    task_create("task1",&task1, task_entry_1, (void*)0x11111111, 0, &task1_env[1024]);
    task_create("task2",&task2, task_entry_2, (void*)0x22222222, 1, &task2_env[1024]);
    task_create("task3",&task3, task_entry_3, (void*)0x33333333, 0, &task3_env[1024]);
    task_create("task4",&task4, task_entry_4, (void*)0x44444444, 1, &task4_env[1024]);
    // current_task = &task1;

    // task_table[0] = &task1;
    // task_table[1] = &task2;
    
    task_create("task_idle",&task_idle, task_entry_idle, (void*)0, OS_PRO_COUNT - 1,&idletask_env[1024]);
    // idle_task = &task_idle;
    next_task = task_highest_ready();
    is_scheduler_ready = true;
    run_first_task();
    while(1);
}

