
#ifndef __TASK_H__
#define __TASK_H__
#include <stdint.h>
#include "hal.h"
#include "hal_platform.h"

typedef uint32_t task_stack_t;

typedef struct {
    task_stack_t *stack;
    uint32_t delay_ticks;//任务延时计数
} task_t;

extern task_t *current_task;
extern task_t *next_task;


void run_first_task(void);
void task_switch(void);
uint32_t task_enter_critical(void);
void task_exit_critical (uint32_t status) ;

#endif // __TASK_H__
