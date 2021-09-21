#ifndef __SEM_H__
#define __SEM_H__
#include "event.h"

typedef struct {
	// 事件控制块
	// 该结构被特意放到起始处，以实现 sem_t 同时是一个 event_t 的目的
	event_t event;

	// 当前的计数
	uint32_t count;

	// 最大计数
	uint32_t max_count;
} sem_t;

typedef struct {
	// 当前信号量的计数
    uint32_t count;
    // 信号量允许的最大计数
    uint32_t max_count;
    // 当前等待的任务计数
    uint32_t task_count;
} sem_info_t;

void sem_init (sem_t * sem, uint32_t start_count, uint32_t max_count);
uint32_t sem_wait (sem_t * sem, uint32_t waitTicks);
uint32_t sem_no_wait_get (sem_t * sem);
void sem_notify (sem_t * sem);
void sem_get_info (sem_t * sem, sem_info_t * info);
uint32_t sem_destroy (sem_t * sem);

#endif // __SEM_H__
