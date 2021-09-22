#include "os.h"

task_t task1;
task_t task2;
task_t task3;
task_t task4;
#define TASK_STACK_SIZE 1024
uint32_t task1_env[TASK_STACK_SIZE];
uint32_t task2_env[TASK_STACK_SIZE];
uint32_t task3_env[TASK_STACK_SIZE];
uint32_t task4_env[TASK_STACK_SIZE];
task_info_t taskinfo1;
task_info_t taskinfo2;
task_info_t taskinfo3;
task_info_t taskinfo4;


int task1_flag;
event_group_t event_group;

typedef uint8_t (*block_t)[100];
float cpu_usage = 0.0;

void task_entry_1(void *param)
{
    os_printf("start\n");
    uint8_t i;
    uint32_t result;
    block_t block[20];
    // 初始化事件标志
    event_group_init(&event_group, 0xFF);

    // 故意延时，让task2有时间运行
    task_delay(1000);
    os_printf("start destroy\n");

    // 删除事件标志
    event_group_destroy(&event_group);

    for (;;)
    {
        task1_flag = 1;
        task_delay(500);
        task1_flag = 0;
        task_delay(500);
        task_get_info(current_task, &taskinfo1);
        cpu_usage = cpu_usage_get();
        os_printf("stacksize=%d stackfree=%d cpu_usage=%f\n", \
            taskinfo1.stack_size, taskinfo1.stack_free, cpu_usage);
    }
}
int task2_flag;
void task_entry_2(void *param)
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
    for (;;)
    {
        task2_flag = 1;
        task_delay(500);
        task2_flag = 0;
        task_delay(500);
        task_get_info(current_task, &taskinfo2);
        os_printf("stacksize=%d stackfree=%d\n", taskinfo2.stack_size, taskinfo2.stack_free);
    }
}
int task3_flag;
void task_entry_3(void *param)
{
    os_printf("start\n");
    for (;;)
    {
        task3_flag = 1;
        task_delay(500);
        task3_flag = 0;
        task_delay(500);
        task_get_info(current_task, &taskinfo3);
        os_printf("stacksize=%d stackfree=%d\n", taskinfo3.stack_size, taskinfo3.stack_free);
    }
}
int task4_flag;
ostimer_t timer0;
ostimer_t timer1;
ostimer_t timer2;

uint32_t timer_count[3] = {0};
void timer_func(void *arg)
{
    uint32_t idx = (uint32_t)arg;
    os_printf("This is timer %d, count=%d\n", idx, timer_count[idx]);
    timer_count[idx]++;
}
timer_info_t timer_info;
void task_entry_4(void *param)
{
    os_printf("start\n");
    uint32_t destroyed = 0;
#if 0
    // 定时器1：100个tick后启动，以后每10个tick启动一次
    timer_init(&timer0, 100, 10, timer_func, (void *)0, TIMER_CONFIG_TYPE_HARD);
    timer_start(&timer0);

    // 定时器2：200个tick后启动，以后每20个tick启动一次
    timer_init(&timer1, 200, 20, timer_func, (void *)1, TIMER_CONFIG_TYPE_HARD);
    timer_start(&timer1);

    // 定时器1：300个tick后启动，启动之后关闭
    timer_init(&timer2, 300, 0, timer_func, (void *)2, TIMER_CONFIG_TYPE_HARD);
    timer_start(&timer2);
#endif
    for (;;)
    {
        os_printf("runing 1\n");
        task4_flag = 1;
        task_delay(500);
        task4_flag = 0;
        task_delay(500);
        task_get_info(current_task, &taskinfo4);
        os_printf("stacksize=%d stackfree=%d\n", taskinfo4.stack_size, taskinfo4.stack_free);

        // 200个tick后，手动销毁定时器1
        if (destroyed == 0)
        {
            task_delay(200);
            timer_destroy(&timer1);
            destroyed = 1;
        }

        // 获取定时器2的信息
        timer_get_info(&timer2, &timer_info);
    }
}

void user_task_main(void)
{
    task_create("task1", &task1, task_entry_1, (void *)0x11111111, 0, task1_env, sizeof(task1_env));
    task_create("task2", &task2, task_entry_2, (void *)0x22222222, 1, task2_env, sizeof(task2_env));
    task_create("task3", &task3, task_entry_3, (void *)0x33333333, 1, task3_env, sizeof(task3_env));
    task_create("task4", &task4, task_entry_4, (void *)0x44444444, 1, task4_env, sizeof(task4_env));
}



void task_start(void)
{
    task_sched_init();
    task_delay_init();
    timer_module_init();
    task_ticks_init();
    cpu_usage_stat_init();

    task_scheduler_start();
    while (1);
}
