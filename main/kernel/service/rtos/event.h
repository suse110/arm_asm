#ifndef __EVENT_H__
#define __EVENT_H__
#include "list.h"
#include "task.h"

typedef enum {
    EVENT_UNKNOWN_TYPE  = 0,
    EVENT_TYPE_SEM      = 1,
    EVENT_TYPE_MBOX     = 2,
} event_type_t;

typedef struct event_s {
    event_type_t type;
    list_t wait_list;
} event_t;

void event_init(event_t *event, event_type_t type);
//让指定在事件控制块上等待事件发生
void event_wait(event_t *event, task_t *task, void *msg, uint32_t state, uint32_t tmeout);
//从事件控制块中唤醒首个等待的任务
task_t *event_wakeup(event_t *event, void *msg, uint32_t result);
//将任务从其等待队列中强制移除
void event_remove_task (task_t * task, void * msg, uint32_t result);
//清除所有等待中的任务，将事件发送给所有任务
uint32_t event_remove_all (event_t * event, void * msg, uint32_t result);
//事件控制块中等待的任务数量
uint32_t event_wait_count (event_t * event);

#endif // __EVENT_H__
