#include "os.h"

void memblock_init (memblock_t * memblock, uint8_t * mem_start, uint32_t block_size, uint32_t block_cnt)
{
	uint8_t * memblock_start = (uint8_t *)mem_start;
	uint8_t * memblock_end = memblock_start + block_size * block_cnt;

	// 每个存储块需要来放置链接指针，所以空间至少要比node_t大
	// 即便如此，实际用户可用的空间并没有少
	if (block_size < sizeof(node_t))
	{
		return;
	}

	event_init(&memblock->event, EVENT_TYPE_MEMBLOCK);

	memblock->mem_start = mem_start;
	memblock->block_size = block_size;
	memblock->max_count = block_cnt;

	list_init(&memblock->block_list);
	while (memblock_start < memblock_end)
	{
		node_init((node_t *)memblock_start);
		list_add_last(&memblock->block_list, (node_t *)memblock_start);

		memblock_start += block_size;
	}
}

uint32_t memblock_wait (memblock_t * memblock, uint8_t ** mem, uint32_t wait_ticks)
{
    uint32_t status = task_enter_critical();

    // 首先检查是否有空闲的存储块
    if (list_count(&memblock->block_list) > 0)
    {
    	// 如果有的话，取出一个
        *mem = (uint8_t *)list_remove_first(&memblock->block_list);
    	task_exit_critical(status);
    	return ERROR_NO_ERROR;
    }
    else
    {
         // 然后将任务插入事件队列中
        event_wait(&memblock->event, current_task, (void *)0,  EVENT_TYPE_MEMBLOCK, wait_ticks);
        task_exit_critical(status);

        // 最后再执行一次事件调度，以便于切换到其它任务
        task_sched();

        // 当切换回来时，从task_t中取出获得的消息
        *mem = current_task->event_msg;

        // 取出等待结果
        return current_task->event_wait_result;
    }
}

uint32_t memblock_no_wait_get (memblock_t * memblock, void ** mem)
{
    uint32_t status = task_enter_critical();

    // 首先检查是否有空闲的存储块
    if (list_count(&memblock->block_list) > 0)
    {
    	// 如果有的话，取出一个
        *mem = (uint8_t *)list_remove_first(&memblock->block_list);
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

void memblock_notify (memblock_t * memblock, uint8_t * mem)
{
    uint32_t status = task_enter_critical();

    // 检查是否有任务等待
    if (event_wait_count(&memblock->event) > 0)
    {
    	// 如果有的话，则直接唤醒位于队列首部（最先等待）的任务
        task_t * task = event_wakeup(&memblock->event, (void *)mem, ERROR_NO_ERROR);

        // 如果这个任务的优先级更高，就执行调度，切换过去
        if (task->priority < current_task->priority)
        {
            task_sched();
    	}
    }
    else
    {
    	// 如果没有任务等待的话，将存储块插入到队列中
    	list_add_last(&memblock->block_list, (node_t *)mem);
   	}

	task_exit_critical(status);
}

void memblock_get_info (memblock_t * memblock, memblock_info_t * info)
{
    uint32_t status = task_enter_critical();

    // 拷贝需要的信息
    info->count = list_count(&memblock->block_list);
    info->max_count = memblock->max_count;
    info->block_size = memblock->block_size;
    info->taskCount = event_wait_count(&memblock->event);

    task_exit_critical(status);
}

uint32_t memblock_destroy (memblock_t * memblock)
{
    uint32_t status = task_enter_critical();

    // 清空事件控制块中的任务
    uint32_t count = tEventRemoveAll(&memblock->event, (void *)0, ERROR_DELETE);

    task_exit_critical(status);

    // 清空过程中可能有任务就绪，执行一次调度
    if (count > 0)
    {
        task_sched();
    }
    return count;
}

