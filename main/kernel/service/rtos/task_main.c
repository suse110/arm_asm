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
mbox_t mbox1;
mbox_t mbox2;
void * mbox1_msg_buffer[20];
void * mbox2_msg_buffer[20];
uint32_t msg[20];


void task_entry_1(void* param)
{
    os_printf("start\n");
    mbox_init(&mbox1, mbox1_msg_buffer, 20);
    set_systick_period(10);

    for(;;) {
        mbox_info_t mbox_info;
        int i = 0;
        for (i = 0; i < 20; i++) {
            msg[i] = i;
            mbox_notify(&mbox1, &msg[i], MBOX_SEND_NORMAL);
            mbox_get_info(&mbox1, &mbox_info);
        }
        task_delay(500);
        // 后发的消息具有更高优先级
        // 也许你会期望task2~task3得到的消息值会从19/18/...1递减
        // 但是如果队列中已经存在等待任务的话，每发一次消息，都会消耗掉该消息
        // 导致最开始的顺序会有所变化
        for (i = 20; i < 40; i++) {
            msg[i] = i;
            mbox_notify(&mbox1, &msg[i], MBOX_SEND_FRONT);
            mbox_get_info(&mbox1, &mbox_info);
        }

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
        void *msg;
        uint32_t err = mbox_wait(&mbox1, &msg, 100);
        if (err == ERROR_NO_ERROR) {
            uint32_t value = *(uint32_t*)msg;
            os_printf("value = %d\n", value);
            task_delay(100);
        }
    }
}
int task3_flag;
void task_entry_3(void* param)
{
    os_printf("start\n");
    // 不限信号量计数，初始值为0
    mbox_init(&mbox2, mbox2_msg_buffer, 20);
    for(;;) {
        void * msg;
        mbox_wait(&mbox2, &msg, 100);
        
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

