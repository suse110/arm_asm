#include "os.h"

void event_group_init (event_group_t* event_group, uint32_t flags)
{
	event_init(&event_group->event, EVENT_TYPE_EVENT_GROUP);
	event_group->flags = flags;
}

/**********************************************************************************************************
** Function name        :   event_group_check_and_consume
** Descriptions         :   辅助函数。检查并消耗掉事件标志
** parameters           :   event_group 等待初始化的事件标志组
** parameters           :   type 事件标志检查类型
** parameters           :   flags 待检查事件标志存储地址和检查结果存储位置
** Returned value       :   ERROR_NO_ERROR 事件匹配；ERROR_RESOURCE_UNAVALIABLE 事件未匹配
***********************************************************************************************************/
static uint32_t event_group_check_and_consume (event_group_t* event_group, uint32_t type, uint32_t * flags)
{
    uint32_t src_flags = *flags;
	uint32_t is_set = type & EVENT_GROUP_SET;
	uint32_t is_all = type & EVENT_GROUP_ALL;
	uint32_t is_consume = type & EVENT_GROUP_CONSUME;

	// 有哪些类型的标志位出现
	// event_group->flags & flags：计算出哪些位为1
	// ~event_group->flags & flags:计算出哪位为0
	uint32_t calc_flag = is_set ? (event_group->flags & src_flags) : (~event_group->flags & src_flags);

	// 所有标志位出现, 或者做任意标志位出现，满足条件
	if (((is_all != 0) && (calc_flag == src_flags)) || ((is_all == 0) && (calc_flag != 0)))
	{
		// 是否消耗掉标志位
		if (is_consume)
		{
			if (is_set)
			{
				// 清除为1的标志位，变成0
				event_group->flags &= ~src_flags;
			}
			else 
			{
				// 清除为0的标志位，变成1
				event_group->flags |= src_flags;
			}
		}
		*flags = calc_flag;
		return ERROR_NO_ERROR;
	}

	*flags = calc_flag;
	return ERROR_RESOURCE_UNAVALIABLE;
}

/**********************************************************************************************************
** Function name        :   event_group_wait
** Descriptions         :   等待事件标志组中特定的标志
** parameters           :   event_group 等待的事件标志组
** parameters           :   wait_type 等待的事件类型
** parameters           :   requst_flag 请求的事件标志
** parameters           :   result_flag 等待标志结果
** parameters           :   wait_ticks 当等待的标志没有满足条件时，等待的ticks数，为0时表示永远等待
** Returned value       :   等待结果,ERROR_RESOURCE_UNAVALIABLE.ERROR_NO_ERROR,ERROR_TIMEOUT
***********************************************************************************************************/
uint32_t event_group_wait (event_group_t* event_group, uint32_t wait_type, uint32_t request_flag,
						uint32_t * result_flag, uint32_t wait_ticks)
{
    uint32_t result;
    uint32_t flags = request_flag;

    uint32_t status = task_enter_critical();
    result = event_group_check_and_consume(event_group, wait_type, &flags);
    if (result != ERROR_NO_ERROR)
    {
	    // 如果事件标志不满足条件，则插入到等待队列中
		current_task->waitFlagsType = wait_type;
		current_task->eventFlags = request_flag;
		event_wait(&event_group->event, current_task, (void *)0,  EVENT_TYPE_EVENT_GROUP, wait_ticks);

        task_exit_critical(status);

		// 再执行一次事件调度，以便于切换到其它任务
		task_sched();

        *result_flag = current_task->eventFlags;
        result = current_task->event_wait_result;
	}
    else
    {
        *result_flag = flags;
        task_exit_critical(status);
    }

	return result;
}

/**********************************************************************************************************
** Function name        :   event_group_nowaitget
** Descriptions         :   获取事件标志组中特定的标志
** parameters           :   event_group 获取的事件标志组
** parameters           :   wait_type 获取的事件类型
** parameters           :   requst_flag 请求的事件标志
** parameters           :   result_flag 等待标志结果
** Returned value       :   获取结果,ERROR_RESOURCE_UNAVALIABLE.ERROR_NO_ERROR
***********************************************************************************************************/
uint32_t event_group_no_wait_get (event_group_t* event_group, uint32_t wait_type, uint32_t request_flag, uint32_t * result_flag)
{
    uint32_t flags = request_flag;

    uint32_t status = task_enter_critical();
    uint32_t result = event_group_check_and_consume(event_group, wait_type, &flags);
	task_exit_critical(status);

	*result_flag = flags;
	return status;
}

/**********************************************************************************************************
** Function name        :   event_group_notify
** Descriptions         :   通知事件标志组中的任务有新的标志发生
** parameters           :   event_group 事件标志组
** parameters           :   is_set 是否是设置事件标志
** parameters           :   flags 产生的事件标志
***********************************************************************************************************/
void event_group_notify (event_group_t* event_group, uint8_t is_set, uint32_t flags)
{
    list_t *wait_list;
    node_t * node;
    node_t * next_node;
    uint8_t sched = 0;

    uint32_t status = task_enter_critical();

    if (is_set) {
        event_group->flags |= flags;     // 置1事件
    } else {
        event_group->flags &= ~flags;    // 清0事件
    }

    // 遍历所有的等待任务, 获取满足条件的任务，加入到待移除列表中
    wait_list = &event_group->event.wait_list;
    for (node = wait_list->head_node.next_node; node != &(wait_list->head_node); node = next_node) {
        uint32_t result;
        task_t *task = NODE_PARENT(node, task_t, link_node);
        uint32_t flags = task->eventFlags;
        next_node = node->next_node;

        // 检查标志
        result = event_group_check_and_consume(event_group, task->waitFlagsType, &flags);
        if (result == ERROR_NO_ERROR) {
            // 唤醒任务
            task->eventFlags = flags;
            tEventWakeUpTask(&event_group->event, task, (void *)0, ERROR_NO_ERROR);
            sched = 1;
        }
    }

    // 如果有任务就绪，则执行一次调度
    if (sched)
    {
        task_sched();
    }

    task_exit_critical(status);
}

/**********************************************************************************************************
** Function name        :   event_group_getinfo
** Descriptions         :   查询事件标志组的状态信息
** parameters           :   event_group 事件标志组
** parameters           :   info 状态查询存储的位置
** Returned value       :   无
***********************************************************************************************************/
void event_group_get_info (event_group_t* event_group, event_group_info_t * info)
{
    uint32_t status = task_enter_critical();

    // 拷贝需要的信息
    info->flags = event_group->flags;
    info->task_count = event_wait_count(&event_group->event);

    task_exit_critical(status);
}

/**********************************************************************************************************
** Function name        :   event_group_destroy
** Descriptions         :   销毁事件标志组
** parameters           :   event_group 事件标志组
** Returned value       :   因销毁该存储控制块而唤醒的任务数量
***********************************************************************************************************/
uint32_t event_group_destroy (event_group_t* event_group)
{
    uint32_t status = task_enter_critical();

    // 清空事件控制块中的任务
    uint32_t count = event_remove_all(&event_group->event, (void *)0, ERROR_DELETE);

    task_exit_critical(status);

    // 清空过程中可能有任务就绪，执行一次调度
    if (count > 0)
    {
        task_sched();
    }
    return count;
}











