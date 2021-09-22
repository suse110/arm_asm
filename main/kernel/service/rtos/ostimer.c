#include "os.h"
// "硬"定时器列表
static list_t timer_hard_list;

// "软"定时器列表
static list_t timer_soft_list;

// 用于访问软定时器列表的信号量
static sem_t timer_protect_sem;

// 用于软定时器任务与中断同步的计数信号量
static sem_t timer_tick_sem;

void timer_init(ostimer_t *timer, uint32_t delay_ticks, uint32_t duration_ticks,
                void (*timer_func)(void *arg), void *arg, uint32_t config)
{
    node_init(&timer->link_node);
    timer->start_delay_ticks = delay_ticks;
    timer->duration_ticks = duration_ticks;
    timer->timer_func = timer_func;
    timer->arg = arg;
    timer->config = config;

    // 如果初始启动延时为0，则使用周期值
    if (delay_ticks == 0)
    {
        timer->delay_ticks = duration_ticks;
    }
    else
    {
        timer->delay_ticks = timer->start_delay_ticks;
    }
    timer->state = TIMER_STATE_CREATED;
}

void timer_start(ostimer_t *timer)
{
    switch (timer->state)
    {
    case TIMER_STATE_CREATED:
    case TIMER_STATE_STOPPED:
        timer->delay_ticks = timer->start_delay_ticks ? timer->start_delay_ticks : timer->duration_ticks;
        timer->state = TIMER_STATE_STARTED;

        // 根据定时器类型加入相应的定时器列表
        if (timer->config & TIMER_CONFIG_TYPE_HARD)
        {
            // 硬定时器，在时钟节拍中断中处理，所以使用critical来防护
            uint32_t status = task_enter_critical();

            // 加入硬定时器列表
            list_add_last(&timer_hard_list, &timer->link_node);

            task_exit_critical(status);
        }
        else
        {
            // 软定时器，先获取信号量。以处理此时定时器任务此时同时在访问软定时器列表导致的冲突问题
            sem_wait(&timer_protect_sem, 0);
            list_add_last(&timer_soft_list, &timer->link_node);
            sem_notify(&timer_protect_sem);
        }
        break;
    default:
        break;
    }
}

void timer_stop(ostimer_t *timer)
{
    switch (timer->state)
    {
    case TIMER_STATE_STARTED:
    case TIMER_STATE_RUNNING:
        // 如果已经启动，判断定时器类型，然后从相应的延时列表中移除
        if (timer->config & TIMER_CONFIG_TYPE_HARD)
        {
            // 硬定时器，在时钟节拍中断中处理，所以使用critical来防护
            uint32_t status = task_enter_critical();

            // 从硬定时器列表中移除
            list_remove(&timer_hard_list, &timer->link_node);

            task_exit_critical(status);
        }
        else
        {
            // 软定时器，先获取信号量。以处理此时定时器任务此时同时在访问软定时器列表导致的冲突问题
            sem_wait(&timer_protect_sem, 0);
            list_remove(&timer_soft_list, &timer->link_node);
            sem_notify(&timer_protect_sem);
        }
        timer->state = TIMER_STATE_STOPPED;
        break;
    default:
        break;
    }
}

void timer_destroy(ostimer_t *timer)
{
    timer_stop(timer);
    timer->state = TIMER_STATE_DESTROYED;
}

void timer_get_info(ostimer_t *timer, timer_info_t *info)
{
    uint32_t status = task_enter_critical();

    info->start_delay_ticks = timer->start_delay_ticks;
    info->duration_ticks = timer->duration_ticks;
    info->timer_func = timer->timer_func;
    info->arg = timer->arg;
    info->config = timer->config;
    info->state = timer->state;

    task_exit_critical(status);
}

// 遍历指定的定时器列表，调用各个定时器处理函数
static void timer_call_func_list(list_t *timer_list)
{
    node_t *node;

    // 检查所有任务的delay_ticks数，如果不0的话，减1。
    for (node = timer_list->head_node.next_node; node != &(timer_list->head_node); node = node->next_node)
    {
        ostimer_t *timer = NODE_PARENT(node, ostimer_t, link_node);

        // 如果延时已到，则调用定时器处理函数
        if ((timer->delay_ticks == 0) || (--timer->delay_ticks == 0))
        {
            // 切换为正在运行状态
            timer->state = TIMER_STATE_RUNNING;

            // 调用定时器处理函数
            timer->timer_func(timer->arg);

            // 切换为已经启动状态
            timer->state = TIMER_STATE_STARTED;

            if (timer->duration_ticks > 0)
            {
                // 如果是周期性的，则重复延时计数值
                timer->delay_ticks = timer->duration_ticks;
            }
            else
            {
                // 否则，是一次性计数器，中止定时器
                list_remove(timer_list, &timer->link_node);
                timer->state = TIMER_STATE_STOPPED;
            }
        }
    }
}

static task_t timer_task;
static task_stack_t timer_task_stack[OS_TIMERTASK_STACK_SIZE];
// 处理软定时器列表的任务
static void timer_soft_task(void *param)
{
    for (;;)
    {
        
        // 等待系统节拍发送的中断事件信号
        sem_wait(&timer_tick_sem, 0);

        // 获取软定时器列表的访问权限
        sem_wait(&timer_protect_sem, 0);

        // 处理软定时器列表
        timer_call_func_list(&timer_soft_list);

        // 释放定时器列表访问权限
        sem_notify(&timer_protect_sem);
    }
}

// 通知定时模块，系统节拍tick增加
void timer_module_tick_notify(void)
{
    uint32_t status = task_enter_critical();

    // 处理硬定时器列表
    timer_call_func_list(&timer_hard_list);

    task_exit_critical(status);

    // 通知软定时器节拍变化
    sem_notify(&timer_tick_sem);
}

// 定时器模块初始化
void timer_module_init(void)
{
    list_init(&timer_hard_list);
    list_init(&timer_soft_list);
    sem_init(&timer_protect_sem, 1, 1);
    sem_init(&timer_tick_sem, 0, 0);

#if OS_TIMERTASK_PRIO >= (OS_PRO_COUNT - 1)
#error "The proprity of timer task must be greater then (OS_PRO_COUNT - 1)"
#endif
    task_create("timer_task", &timer_task, timer_soft_task, (void *)0,
                OS_TIMERTASK_PRIO, timer_task_stack, OS_TIMERTASK_STACK_SIZE);
}
