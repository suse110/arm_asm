#include "os.h"

void mutex_init(mutex_t *mutex)
{
    event_init(&mutex->event, EVENT_TYPE_MUTEX);

    mutex->locked_count = 0;
    mutex->owner = (task_t *)0;
    mutex->owner_original_priority = OS_PRO_COUNT;
}

uint32_t mutex_take(mutex_t *mutex, uint32_t wait_ticks)
{
    uint32_t status = task_enter_critical();
    os_printf("[%s] take, lock_count=%d\n", current_task->name, mutex->locked_count);
    if (mutex->locked_count <= 0)
    {
        // 如果没有锁定，则使用当前任务锁定
        mutex->owner = current_task;
        mutex->owner_original_priority = current_task->priority;
        mutex->locked_count++;

        task_exit_critical(status);
        return ERROR_NO_ERROR;
    }
    else
    {
        // 信号量已经被锁定
        if (mutex->owner == current_task)
        {
            // 如果是信号量的拥有者再次wait，简单增加计数
            mutex->locked_count++;

            task_exit_critical(status);
            return ERROR_NO_ERROR;
        }
        else
        {
            os_printf("[%s] take, owner_pror=%d, curr_priori=%d\n", \
                current_task->name, mutex->owner->priority,current_task->priority);
            // 如果是信号量拥有者之外的任务wait，则要检查下是否需要使用
            // 优先级继承方式处理
            if (current_task->priority < mutex->owner->priority)
            {
                task_t *owner = mutex->owner;
                os_printf("owner->state=%d\n", owner->state);
                // 如果当前任务的优先级比拥有者优先级更高，则使用优先级继承
                // 提升原拥有者的优先
                if (owner->state == OS_TASK_STATE_RDY)
                {
                    // 任务处于就绪状态时，更改任务在就绪表中的位置
                    task_sched_not_ready(owner);
                    owner->priority = current_task->priority;
                    task_sched_ready(owner);
                }
                else
                {
                    // 其它状态，只需要修改优先级
                    owner->priority = current_task->priority;
                }
            }

            // 当前任务进入等待队列中
            event_wait(&mutex->event, current_task, (void *)0, EVENT_TYPE_MUTEX, wait_ticks);
            task_exit_critical(status);
            os_printf("event wait list count=%d\n", list_count(&mutex->event.wait_list));
            // 执行调度， 切换至其它任务
            task_sched();
            return current_task->event_wait_result;
        }
    }
}

// 获取信号量，如果已经被锁定，立即返回
uint32_t mutex_no_wait_get(mutex_t *mutex)
{
    uint32_t status = task_enter_critical();

    if (mutex->locked_count <= 0)
    {
        // 如果没有锁定，则使用当前任务锁定
        mutex->owner = current_task;
        mutex->owner_original_priority = current_task->priority;
        mutex->locked_count++;

        task_exit_critical(status);
        return ERROR_NO_ERROR;
    }
    else
    {
        // 信号量已经被锁定
        if (mutex->owner == current_task)
        {
            // 如果是信号量的拥有者再次wait，简单增加计数
            mutex->locked_count++;

            task_exit_critical(status);
            return ERROR_NO_ERROR;
        }

        task_exit_critical(status);
        return ERROR_RESOURCE_UNAVALIABLE;
    }
}

// 通知互斥信号量可用
uint32_t mutex_give(mutex_t *mutex)
{
    uint32_t status = task_enter_critical();

    if (mutex->locked_count <= 0)
    {
        // 锁定计数为0，信号量未被锁定，直接退出
        task_exit_critical(status);
        return ERROR_NO_ERROR;
    }

    if (mutex->owner != current_task)
    {
        // 不是拥有者释放，认为是非法
        task_exit_critical(status);
        return ERROR_OWNER;
    }

    if (--mutex->locked_count > 0)
    {
        // 减1后计数仍不为0, 直接退出，不需要唤醒等待的任务
        task_exit_critical(status);
        return ERROR_NO_ERROR;
    }

    // 是否有发生优先级继承
    if (mutex->owner_original_priority != mutex->owner->priority)
    {
        // 有发生优先级继承，恢复拥有者的优先级
        if (mutex->owner->state == OS_TASK_STATE_RDY)
        {
            // 任务处于就绪状态时，更改任务在就绪表中的位置
            task_sched_not_ready(mutex->owner);
            current_task->priority = mutex->owner_original_priority;
            task_sched_ready(mutex->owner);
        }
        else
        {
            // 其它状态，只需要修改优先级
            current_task->priority = mutex->owner_original_priority;
        }
    }

    // 检查是否有任务等待
    if (event_wait_count(&mutex->event) > 0)
    {
        // 如果有的话，则直接唤醒位于队列首部（最先等待）的任务
        task_t *task = event_wakeup(&mutex->event, (void *)0, ERROR_NO_ERROR);

        mutex->owner = task;
        mutex->owner_original_priority = task->priority;
        mutex->locked_count++;

        // 如果这个任务的优先级更高，就执行调度，切换过去
        if (task->priority < current_task->priority)
        {
            task_sched();
        }
    }
    task_exit_critical(status);
    return ERROR_NO_ERROR;
}

// 销毁信号量,返回因销毁该信号量而唤醒的任务数量
uint32_t mutex_destroy(mutex_t *mutex)
{
    uint32_t count = 0;
    uint32_t status = task_enter_critical();

    // 信号量是否已经被锁定，未锁定时没有任务等待，不必处理
    if (mutex->locked_count > 0)
    {
        // 是否有发生优先级继承?如果发生，需要恢复拥有者的原优先级
        if (mutex->owner_original_priority != mutex->owner->priority)
        {
            // 有发生优先级继承，恢复拥有者的优先级
            if (mutex->owner->state == OS_TASK_STATE_RDY)
            {
                // 任务处于就绪状态时，更改任务在就绪表中的位置
                task_sched_not_ready(mutex->owner);
                mutex->owner->priority = mutex->owner_original_priority;
                task_sched_ready(mutex->owner);
            }
            else
            {
                // 其它状态，只需要修改优先级
                mutex->owner->priority = mutex->owner_original_priority;
            }
        }

        // 然后，清空事件控制块中的任务
        count = event_remove_all(&mutex->event, (void *)0, ERROR_DELETE);

        // 清空过程中可能有任务就绪，执行一次调度
        if (count > 0)
        {
            task_sched();
        }
    }

    task_exit_critical(status);
    return count;
}

void mutex_get_info(mutex_t *mutex, mutex_info_t *info)
{
    uint32_t status = task_enter_critical();

    // 拷贝需要的信息
    info->task_count = event_wait_count(&mutex->event);
    info->owner_priority = mutex->owner_original_priority;
    if (mutex->owner != (task_t *)0)
    {
        info->inherited_priority = mutex->owner->priority;
    }
    else
    {
        info->inherited_priority = OS_PRO_COUNT;
    }
    info->owner = mutex->owner;
    info->locked_count = mutex->locked_count;

    task_exit_critical(status);
}
