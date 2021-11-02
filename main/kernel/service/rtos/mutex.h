#ifndef __MUTEX_H__
#define __MUTEX_H__
#include "event.h"

// 互斥信号量类型
typedef struct
{
    // 事件控制块
    event_t event;

    // 已被锁定的次数
    uint32_t locked_count;

    // 拥有者
    task_t *owner;

    // 拥有者原始的优先级
    uint32_t owner_original_priority;
} mutex_t;

// 互斥信号量查询结构
typedef struct
{
    // 等待的任务数量
    uint32_t task_count;

    // 拥有者任务的优先级
    uint32_t owner_priority;

    // 继承优先级
    uint32_t inherited_priority;

    // 当前信号量的拥有者
    task_t *owner;

    // 锁定次数
    uint32_t locked_count;
} mutex_info_t;
void mutex_init(mutex_t *mutex);
uint32_t mutex_take(mutex_t *mutex, uint32_t wait_ticks);
uint32_t mutex_no_wait_get(mutex_t *mutex);
uint32_t mutex_give(mutex_t *mutex);
uint32_t mutex_destroy(mutex_t *mutex);
void mutex_get_info(mutex_t *mutex, mutex_info_t *info);
#endif // __MUTEX_H__
