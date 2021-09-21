#include "os.h"

void sem_init (sem_t * sem, uint32_t start_count, uint32_t max_count)
{
	event_init(&sem->event, EVENT_TYPE_SEM);

	sem->max_count = max_count;
	if (max_count == 0) {
		sem->count = start_count;
	} else {
		sem->count = (start_count > max_count) ? max_count : start_count;
	}
}

uint32_t sem_wait (sem_t * sem, uint32_t wait_ticks)
{
    uint32_t status = task_enter_critical();

    // 首先检查信号量计数是否大于0
    if (sem->count > 0) {
    	// 如果大于0的话，消耗掉一个，然后正常退出
        --sem->count;
    	task_exit_critical(status);
    	return ERROR_NO_ERROR;
    } else {
        // 然后将任务插入事件队列中
        event_wait(&sem->event, current_task, (void *)0,  EVENT_TYPE_SEM, wait_ticks);
        task_exit_critical(status);

        // 最后再执行一次事件调度，以便于切换到其它任务
        task_sched();

        // 当由于等待超时或者计数可用时，执行会返回到这里，然后取出等待结构
        return current_task->event_wait_result;
    }
}
uint32_t sem_no_wait_get (sem_t * sem)
{
    uint32_t status = task_enter_critical();

	// 首先检查信号量计数是否大于0
	if (sem->count > 0) {
		// 如果大于0的话，消耗掉一个，然后正常退出
		--sem->count;
        task_exit_critical(status);
    	return ERROR_NO_ERROR;
    } else {
    	// 否则，返回资源不可用
        task_exit_critical(status);
    	return ERROR_RESOURCE_UNAVALIABLE;
    }
}
void sem_notify (sem_t * sem)
{
    uint32_t status = task_enter_critical();

    // 检查是否有任务等待
    if (event_wait_count(&sem->event) > 0) {
    	// 如果有的话，则直接唤醒位于队列首部（最先等待）的任务
        task_t * task = event_wakeup(&sem->event, (void *)0, ERROR_NO_ERROR );
        // 如果这个任务的优先级更高，就执行调度，切换过去
        if (task->priority < current_task->priority) {
            task_sched();
    	}
    } else {
    	// 如果没有任务等待的话，增加计数
    	++sem->count;

    	// 如果这个计数超过了最大允许的计数，则递减
    	if ((sem->max_count != 0) && (sem->count > sem->max_count)) {
    		sem->count = sem->max_count;
    	}
    }

    task_exit_critical(status);
}

void sem_get_info (sem_t * sem, sem_info_t * info)
{
    uint32_t status = task_enter_critical();

    // 拷贝需要的信息
    info->count = sem->count;
    info->max_count = sem->max_count;
    info->task_count = event_wait_count(&sem->event);

    task_exit_critical(status);
}

uint32_t sem_destroy (sem_t * sem)
{
    uint32_t status = task_enter_critical();

    // 清空事件控制块中的任务
    uint32_t count = event_remove_all(&sem->event, (void *)0, ERROR_DELETE);
    sem->count = 0;
    task_exit_critical(status);

    // 清空过程中可能有任务就绪，执行一次调度
    if (count > 0) {
        task_sched();
    }
    return count;
}
