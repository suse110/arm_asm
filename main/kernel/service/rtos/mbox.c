#include "os.h"

void mbox_init(mbox_t *mbox, void **msg_buffer, uint32_t max_count)
{
    event_init(&mbox->event, EVENT_TYPE_MBOX);

    mbox->msg_buffer = msg_buffer;
    mbox->max_count = max_count;
    mbox->read = 0;
    mbox->write = 0;
    mbox->count = 0;
}
uint32_t mbox_wait(mbox_t *mbox, void **msg, uint32_t wait_ticks)
{
    uint32_t status = task_enter_critical();

    // 首先检查消息计数是否大于0
    if (mbox->count > 0)
    {
        // 如果大于0的话，取出一个
        --mbox->count;
        *msg = mbox->msg_buffer[mbox->read++];

        // 同时读取索引前移，如果超出边界则回绕
        if (mbox->read >= mbox->max_count)
        {
            mbox->read = 0;
        }
        task_exit_critical(status);
        return ERROR_NO_ERROR;
    }
    else
    {
        // 然后将任务插入事件队列中
        event_wait(&mbox->event, current_task, (void *)0, EVENT_TYPE_MBOX, wait_ticks);
        task_exit_critical(status);

        // 最后再执行一次事件调度，以便于切换到其它任务
        task_sched();

        // 当切换回来时，从task_t中取出获得的消息
        *msg = current_task->event_msg;

        // 取出等待结果
        return current_task->event_wait_result;
    }
}
uint32_t mbox_no_wait_get(mbox_t *mbox, void **msg)
{
    uint32_t status = task_enter_critical();

    // 首先检查消息计数是否大于0
    if (mbox->count > 0)
    {
        // 如果大于0的话，取出一个
        --mbox->count;
        *msg = mbox->msg_buffer[mbox->read++];

        // 同时读取索引前移，如果超出边界则回绕
        if (mbox->read >= mbox->max_count)
        {
            mbox->read = 0;
        }
        task_exit_critical(status);
        return ERROR_NO_ERROR;
    }
    else
    {
        // 否则，返回资源不可用
        task_exit_critical(status);
        return ERROR_RESOURCE_UNAVALIABLE;
    }
}
//通知消息可用，唤醒等待队列中的一个任务，或者将消息插入到邮箱中
uint32_t mbox_notify(mbox_t *mbox, void *msg, uint32_t notify_option)
{
    uint32_t status = task_enter_critical();

    // 检查是否有任务等待
    if (event_wait_count(&mbox->event) > 0)
    {
        // 如果有的话，则直接唤醒位于队列首部（最先等待）的任务
        task_t *task = event_wakeup(&mbox->event, (void *)msg, ERROR_NO_ERROR);

        // 如果这个任务的优先级更高，就执行调度，切换过去
        if (task->priority < current_task->priority)
        {
            task_sched();
        }
    }
    else
    {
        // 如果没有任务等待的话，将消息插入到缓冲区中
        if (mbox->count >= mbox->max_count)
        {
            task_exit_critical(status);
            return ERROR_RESOURCE_FULL;
        }

        // 可以选择将消息插入到头，这样后面任务获取的消息的时候，优先获取该消息
        if (notify_option & MBOX_SEND_FRONT)
        {
            if (mbox->read <= 0)
            {
                mbox->read = mbox->max_count - 1;
            }
            else
            {
                --mbox->read;
            }
            mbox->msg_buffer[mbox->read] = msg;
        }
        else
        {
            mbox->msg_buffer[mbox->write++] = msg;
            if (mbox->write >= mbox->max_count)
            {
                mbox->write = 0;
            }
        }

        // 增加消息计数
        mbox->count++;
    }

    task_exit_critical(status);
    return ERROR_NO_ERROR;
}
//清空邮箱中所有消息
void mbox_flush(mbox_t *mbox)
{
    uint32_t status = task_enter_critical();

    // 如果队列中有任务等待，说明邮箱已经是空的了，不需要再清空
    if (event_wait_count(&mbox->event) == 0)
    {
        mbox->read = 0;
        mbox->write = 0;
        mbox->count = 0;
    }

    task_exit_critical(status);
}
uint32_t mbox_destroy(mbox_t *mbox)
{
    uint32_t status = task_enter_critical();

    // 清空事件控制块中的任务
    uint32_t count = event_remove_all(&mbox->event, (void *)0, ERROR_DELETE);

    task_exit_critical(status);

    // 清空过程中可能有任务就绪，执行一次调度
    if (count > 0)
    {
        task_sched();
    }
    return count;
}
void mbox_get_info(mbox_t *mbox, mbox_info_t *info)
{
    uint32_t status = task_enter_critical();

    // 拷贝需要的信息
    info->count = mbox->count;
    info->max_count = mbox->max_count;
    info->task_count = event_wait_count(&mbox->event);

    task_exit_critical(status);
}
