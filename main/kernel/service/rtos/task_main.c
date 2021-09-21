#include "os.h"

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

int task1_flag;
event_group_t event_group;


typedef uint8_t (*block_t)[100];


void task_entry_1(void* param)
{
    os_printf("start\n");
	uint8_t i;
    uint32_t result;
    block_t block[20];
    set_systick_period(10);
    // 初始化事件标志
    event_group_init(&event_group, 0xFF);

    // 故意延时，让task2有时间运行
    task_delay(1000);
    os_printf("start destroy\n");

    // 删除事件标志
    event_group_destroy(&event_group);

    for(;;) {
        task1_flag = 1;
        task_delay(500);
        task1_flag = 0;
        task_delay(500);

    }
}
int task2_flag;
void task_entry_2(void* param)
{
    uint32_t result_flags = 0;
    event_group_info_t info;
    os_printf("start wait event group\n");

    // 等待并查询状态
    event_group_wait(&event_group, EVENT_GROUP_SET_ALL | EVENT_GROUP_CONSUME, 0x1, &result_flags, 0);
    event_group_get_info(&event_group, &info);

    // 等待相同的状态，会一直等下去，直到event_group被销毁
    event_group_wait(&event_group, EVENT_GROUP_SET_ALL | EVENT_GROUP_CONSUME, 0x1, &result_flags, 0);

    os_printf("wait done\n");
    for(;;) {
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
    for(;;) {       
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

void user_task_entry(void)
{
    task_create("task1",&task1, task_entry_1, (void*)0x11111111, 0, &task1_env[1024]);
    task_create("task2",&task2, task_entry_2, (void*)0x22222222, 1, &task2_env[1024]);
    task_create("task3",&task3, task_entry_3, (void*)0x33333333, 1, &task3_env[1024]);
    task_create("task4",&task4, task_entry_4, (void*)0x44444444, 1, &task4_env[1024]);
}

void task_start(void)
{
    task_sched_init();
    task_delay_init();

    user_task_entry();

    task_create("task_idle",&task_idle, task_entry_idle, (void*)0, OS_PRO_COUNT - 1,&idletask_env[1024]);

    next_task = task_highest_ready();
    run_first_task();
    while(1);
}

