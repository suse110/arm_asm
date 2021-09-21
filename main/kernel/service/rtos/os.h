
#ifndef __TASK_H__
#define __TASK_H__
#include <stdint.h>
#include "hal.h"
#include "hal_platform.h"
#include "bitmap.h"
#include "list.h"

typedef uint32_t task_stack_t;
#define OS_TASK_STATE_RDY                   0
#define OS_TASK_STATE_DELAYED               (1 << 1)
#define OS_TASK_STATE_SUSPEND               (1 << 2)
#define OS_SLICE_MAX                10                        // 每个任务最大运行的时间片计数

typedef struct {
    task_stack_t *stack;
    uint32_t delay_ticks;//任务延时计数
    uint32_t priority;
    node_t delay_node;
    node_t link_node;
    uint32_t state;//task state
    // 当前剩余的时间片
    uint32_t slice;
   // 被挂起的次数
    uint32_t suspend_count;
    // 任务被删除时调用的清理函数
    void (*clean) (void * param);

    // 传递给清理函数的参数
    void * clean_param;

    // 请求删除标志，非0表示请求删除
    uint8_t request_delete_flag;
} task_t;

typedef struct {
    uint32_t delay_ticks;
    uint32_t priority;
    uint32_t state;
    uint32_t slice;
    uint32_t suspend_count;
} task_info_t;

typedef void (*task_entry_t)(void* param);

extern task_t *current_task;
extern task_t *next_task;

#define    OS_PRO_COUNT                32

void run_first_task(void);
void task_switch(void);
uint32_t task_enter_critical(void);
void task_exit_critical (uint32_t status) ;
task_t * task_highest_ready (void);
void task_sched_init(void);
void task_sched_enable(void);
void task_sched_disable(void);
void task_sched(void);
void task_sched_ready(task_t *task);
void task_sched_not_ready(task_t *task);
void task_sched_remove (task_t * task);
void task_delay(uint32_t delay);
void task_time_wait(task_t *task, uint32_t ticks);
//将task从延时队列唤醒
void task_time_wakeup(task_t *task);
void task_time_remove(task_t *task);
void task_suspend (task_t * task);
void task_resume (task_t * task);

void task_set_clean_callback(task_t *task, void (*clean)(void *parm), void *param);
void task_force_delete(task_t *task);
void task_request_delete(task_t *task);
uint8_t task_is_request_delete(void);
void task_delete_self(void);
void task_get_info(task_t *task, task_info_t *info);

#endif // __TASK_H__
