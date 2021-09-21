#include "os.h"


void event_init(event_t *event, event_type_t type)
{
    list_init(&event->wait_list);
}
void event_wait(event_t *event, task_t *task, void *msg, uint32_t state, uint32_t timeout)
{
    uint32_t status = task_enter_critical();
    task->state |= state;
    task->event_wait = event;
    task->event_msg = msg;
    task->event_wait_result = ERROR_NO_ERROR;
    //从就绪表移除
    task_sched_not_ready(task);
    //任务插入等待队列
    list_add_last(&event->wait_list, &task->link_node);

    if (timeout) {
        task_time_wait(task, timeout);
    }
    task_exit_critical(status);
}

task_t *event_wakeup(event_t *event, void *msg, uint32_t result)
{
    node_t  * node;
    task_t  * task = (task_t * )0;

    uint32_t status = task_enter_critical();

    // 取出等待队列中的第一个结点
    if((node = list_remove_first(&event->wait_list)) != (node_t *)0) {
      // 转换为相应的任务结构
        task = (task_t *)NODE_PARENT(node, task_t, link_node);
        // os_printf("wakeup task:%s\n", task->name);
        // 设置收到的消息、结构，清除相应的等待标志位
        task->event_wait = (event_t *)0;
        task->event_msg = msg;
        task->event_wait_result = result;
        task->state &= ~OS_TASK_WAIT_MASK;

        // 任务申请了超时等待，这里检查下，将其从延时队列中移除
        if (task->delay_ticks != 0) {
            task_time_wakeup(task);
        }

        // 将任务加入就绪队列
        task_sched_ready(task);
    }
    // os_printf("bitmap=0x%x\n", bitmap_get_value(&task_priority_bitmap));
    task_exit_critical(status);

    return task;
}

void event_remove_task (task_t * task, void * msg, uint32_t result)
{
    uint32_t status = task_enter_critical();

	 // 将任务从所在的等待队列中移除
	 // 注意，这里没有检查event_wait是否为空。既然是从事件中移除，那么认为就不可能为空
	 list_remove(&task->event_wait->wait_list, &task->link_node);

  	// 设置收到的消息、结构，清除相应的等待标志位
    task->event_wait = (event_t *)0;
    task->event_msg = msg;
   	task->event_wait_result = result;
	task->state &= ~OS_TASK_WAIT_MASK;

    task_exit_critical(status);
}


uint32_t event_remove_all (event_t * event, void * msg, uint32_t result)
{
    node_t  * node;
    uint32_t count;

    uint32_t status = task_enter_critical();

    // 获取等待中的任务数量
    count = list_count(&event->wait_list);

    // 遍历所有等待中的任务
    while ((node = list_remove_first(&event->wait_list)) != (node_t *)0) {
        // 转换为相应的任务结构
        task_t * task = (task_t *)NODE_PARENT(node, task_t, link_node);

        // 设置收到的消息、结构，清除相应的等待标志位
        task->event_wait = (event_t *)0;
        task->event_msg = msg;
        task->event_wait_result = result;
        task->state &= ~OS_TASK_WAIT_MASK;

        // 任务申请了超时等待，这里检查下，将其从延时队列中移除
        if (task->delay_ticks != 0) {
            task_time_wakeup(task);
        }

        // 将任务加入就绪队列
        task_sched_ready(task);
    }

    task_exit_critical(status);

    return  count;
}

uint32_t event_wait_count (event_t * event)
{
    uint32_t count = 0;

    // 进入临界区
    uint32_t status = task_enter_critical();

    count = list_count(&event->wait_list);

    // 退出临界区
    task_exit_critical(status);

    return count;
}
