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
// 20个100字节大小存储块
uint8_t mem1[20][100];
memblock_t memblock1;

typedef uint8_t (*block_t)[100];


void task_entry_1(void* param)
{
    os_printf("start\n");
	uint8_t i;
    uint32_t result;
    block_t block[20];
    set_systick_period(10);
    // 初始化存储块
    memblock_init(&memblock1, (uint8_t *)mem1, 100, 20);

	for (i = 0; i < 20; i++)
	{
        result = memblock_wait(&memblock1, (uint8_t **)&block[i], 0);
        os_printf("wait [block:%d]0x%x, result=%d\n",i,(uint32_t)block[i], result);
	}

    task_delay(200);
    for (i = 0; i < 20; i++) {
    	memset(block[i], i, 100);
    	memblock_notify(&memblock1, (uint8_t *)block[i]);
        os_printf("send [block:%d]0x%x\n",i,(uint32_t)&block[i]);
        task_delay(2);
	}

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
    sem_info_t sem_info;
    int i = 0;
    uint32_t result;
    os_printf("start\n");
    for(;;) {
    	block_t block;
    	result = memblock_wait(&memblock1, (uint8_t **)&block, 0);
        os_printf("wait [block:%d]0x%x, result=%d\n", i, (uint32_t)block, result);
        i++;
        task2_flag = *(uint8_t *)block;;

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

