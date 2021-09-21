#ifndef __OS_H__
#define __OS_H__
#include <stdint.h>
#include <stdbool.h>
#include "hal.h"
#include "hal_platform.h"
#include "bitmap.h"
#include "list.h"
#include "task.h"
#include "event.h"
#include "sem.h"
#include "mbox.h"

typedef enum {
    ERROR_NO_ERROR = 0,
    ERROR_TIMEOUT,
    ERROR_RESOURCE_UNAVALIABLE,
    ERROR_DELETE,
    ERROR_RESOURCE_FULL,
} error_t;

extern task_t *current_task;
extern task_t *next_task;
extern bitmap_t task_priority_bitmap;
#define OS_PRO_COUNT                32
uint32_t task_get_ticks(void);
#define os_printf(fmt, ...) printf("[%05d][%s] " fmt, task_get_ticks(), __func__, ##__VA_ARGS__)

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

void task_systick_handler(void);

#endif // __OS_H__
