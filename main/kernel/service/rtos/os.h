
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
} task_t;

extern task_t *current_task;
extern task_t *next_task;

#define    OS_PRO_COUNT                32

void run_first_task(void);
void task_switch(void);
uint32_t task_enter_critical(void);
void task_exit_critical (uint32_t status) ;
void task_sched_init(void);
void task_sched_enable(void);
void task_sched_disable(void);
void task_sched(void);
task_t * task_highest_ready (void);
#endif // __TASK_H__
