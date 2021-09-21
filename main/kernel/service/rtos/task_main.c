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
event_t event_wait_timeout;
event_t event_wait_normal;

int task1_flag;
int first_set;
sem_t sem1;
sem_t sem2;

void task_entry_1(void* param)
{
    os_printf("start\n");
    sem_init(&sem1, 1, 10);
    set_systick_period(10);
    event_init(&event_wait_normal, EVENT_UNKNOWN_TYPE);
    for(;;) {
        uint32_t status = sem_wait(&sem1, 10000);
        os_printf("runing sem1 status=%d\n", status);

        task_delay(500);
        task1_flag = 0;
        task_delay(500);

    }
}
int task2_flag;
void task_entry_2(void* param)
{
    sem_info_t sem_info;

    os_printf("start\n");
    for(;;) {
        os_printf("runing 1\n");
        task2_flag = 1;
        task_delay(500);
        task2_flag = 0;
        task_delay(500);
        sem_get_info(&sem1, &sem_info);
        os_printf("notify sem1\n");
        sem_notify(&sem1);
    }
}
int task3_flag;
void task_entry_3(void* param)
{
    os_printf("start\n");
    // 不限信号量计数，初始值为0
    sem_init(&sem2, 0, 0);
    for(;;) {
        os_printf("sem wait start\n");
        // 超时等待
        if (ERROR_NO_ERROR == sem_wait(&sem2, 100)) {
            os_printf("sem wait done\n");
        } else {
            os_printf("sem wait timeout\n");
        }
        

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

