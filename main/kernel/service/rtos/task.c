#include "os.h"

static float cpu_usage;                      // cpu使用率统计
static uint32_t enable_cpu_usage_stat;         // 是否使能cpu统计
// 空闲任务计数与最大计数
uint32_t idle_count;
uint32_t idle_max_count;


void task_create(const char *name, task_t * task, task_entry_t entry, void *param, uint32_t priority, uint32_t* stack, uint32_t size)
{
    uint32_t * stack_top;

    // 对于切换至之前从没有运行过的任务，我们为它配置一个“虚假的”保存现场，然后使用该现场恢复。
    task->stack_base = stack;
    task->stack_size = size;
    memset(stack, 0, size);
    
    // 注意以下两点：
    // 1、不需要用到的寄存器，直接填了寄存器号，方便在IDE调试时查看效果；
    // 2、顺序不能变，要结合PendSV_Handler以及CPU对异常的处理流程来理解
    stack_top = stack + size / sizeof(task_stack_t);
    os_printf("%s stack_top=0x%08x\n", name, stack_top);
    *(--stack_top) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    *(--stack_top) = (unsigned long)entry;                  // 程序的入口地址
    *(--stack_top) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    *(--stack_top) = (unsigned long)0x12;                   // R12, 未用
    *(--stack_top) = (unsigned long)0x3;                    // R3, 未用
    *(--stack_top) = (unsigned long)0x2;                    // R2, 未用
    *(--stack_top) = (unsigned long)0x1;                    // R1, 未用
    *(--stack_top) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    *(--stack_top) = (unsigned long)0x11;                   // R11, 未用
    *(--stack_top) = (unsigned long)0x10;                   // R10, 未用
    *(--stack_top) = (unsigned long)0x9;                    // R9, 未用
    *(--stack_top) = (unsigned long)0x8;                    // R8, 未用
    *(--stack_top) = (unsigned long)0x7;                    // R7, 未用
    *(--stack_top) = (unsigned long)0x6;                    // R6, 未用
    *(--stack_top) = (unsigned long)0x5;                    // R5, 未用
    *(--stack_top) = (unsigned long)0x4;                    // R4, 未用
    task->stack = stack_top;

    task->name = name;
    task->delay_ticks = 0;
    task->priority = priority;
    task->state = OS_TASK_STATE_RDY;
    task->slice = OS_SLICE_MAX;
    task->suspend_count = 0;
    task->clean_param = (void *)0;                       // 设置传递给清理函数的参数
    task->request_delete_flag = 0;                        // 请求删除标记

    task->event_wait = (event_t *)0;                      // 没有等待事件
    task->event_msg = (void *)0;                         // 没有等待事件
    task->event_wait_result = ERROR_NO_ERROR;              // 没有等待事件错误

    node_init(&task->delay_node);
    node_init(&task->link_node);
    task_sched_ready(task);
}

void task_suspend (task_t * task)
{
    uint32_t status = task_enter_critical();
    //已经delay的就不挂起了
    if (!(task->state & OS_TASK_STATE_DELAYED)) {
        if (++task->suspend_count <= 1) {//任务第一次挂起才执行任务切换
            task->state |= OS_TASK_STATE_DELAYED;
            //将任务从就绪表移除，调度器就没办法对它进行调度
            task_sched_not_ready(task);
            //任务本身被挂起就执行任务切换
            if (task == current_task) {
                task_sched();
            }
        }
    }
    task_exit_critical(status);
}

void task_resume (task_t * task)
{
    uint32_t status = task_enter_critical();
    
    if (task->state & OS_TASK_STATE_DELAYED) {
        if (--task->suspend_count == 0) {
            task->state &= ~OS_TASK_STATE_DELAYED;
            //将任务放回就绪表
            task_sched_ready(task);
            task_sched();
        }
    }
    task_exit_critical(status);
}

void task_set_clean_callback(task_t *task, void (*clean)(void *parm), void *param)
{
    task->clean = clean;
    task->clean_param = param;
}

void task_force_delete(task_t *task)
{
    uint32_t status = task_enter_critical();

    if (task->state & OS_TASK_STATE_DELAYED) {
        task_time_remove(task);
    } else if (!(task->state&OS_TASK_STATE_SUSPEND)) {
        // 如果任务不处于挂起状态，那么就是就绪态，从就绪表中删除
        task_sched_remove(task);
    }
    if (task->clean) {
        task->clean(task->clean_param);
    }
    if (task == current_task) {
        task_sched();
    }
    task_exit_critical(status);

}

void task_request_delete(task_t *task)
{
    uint32_t status = task_enter_critical();
    task->request_delete_flag = 1;
    task_exit_critical(status);
}

uint8_t task_is_request_delete(void)
{
    uint8_t is_delete;

    uint32_t status = task_enter_critical();
    is_delete = current_task->request_delete_flag;
    task_exit_critical(status);  

    return is_delete;
}

void task_delete_self(void)
{
    uint32_t status = task_enter_critical();
    // 任务在调用该函数时，必须是处于就绪状态，不可能处于延时或挂起等其它状态
    // 所以，只需要从就绪队列中移除即可
    task_sched_remove(current_task);
    if (current_task->clean) {
        current_task->clean(current_task->clean_param);
    }
    task_sched();
    task_exit_critical(status);   
}

void task_get_info(task_t *task, task_info_t *info)
{
    uint32_t * stack_end;
   // 进入临界区
    uint32_t status = task_enter_critical();

    info->delay_ticks = task->delay_ticks;                // 延时信息
    info->priority = task->priority;                            // 任务优先级
    info->state = task->state;                          // 任务状态
    info->slice = task->slice;                          // 剩余时间片
    info->suspend_count = task->suspend_count;            // 被挂起的次数
    info->stack_size = task->stack_size;

    // 计算堆栈使用量
    info->stack_free = 0;
    stack_end = task->stack_base;
    while ((*stack_end++ == 0) && (stack_end <= task->stack_base + task->stack_size / sizeof(task_stack_t))) {
        info->stack_free++;
    }

    // 转换成字节数
    info->stack_free *= sizeof(task_stack_t);

    // 退出临界区
    task_exit_critical(status); 
}

static task_t task_idle;
static uint32_t idletask_env[IDLE_TASK_STACK_SIZE];
extern void user_task_main(void);
void task_entry_idle(void *param)
{
    task_sched_disable();
    user_task_main();
    timer_task_init();
    set_systick_period(OS_SYSTICK_MS);
    cpu_usage_sync_with_systick();
    for (;;)
    {
        uint32_t status = task_enter_critical();
        idle_count++;
        task_exit_critical(status);    
    }
}

void task_scheduler_start(void)
{
    task_create("task_idle", &task_idle, task_entry_idle, (void *)0, OS_PRO_COUNT - 1, idletask_env, sizeof(idletask_env));

    next_task = task_highest_ready();
    run_first_task();    
}



void cpu_usage_stat_init (void)
{
    idle_count = 0;
    idle_max_count = 0;
    cpu_usage = 0;
    enable_cpu_usage_stat = 0;
}

void cpu_usage_check (void)
{
    
    // 与空闲任务的cpu统计同步
    if (enable_cpu_usage_stat == 0)
    {
        enable_cpu_usage_stat = 1;
        task_ticks_init();
        os_printf("enable_cpu_usage_stat = 1\n");
        return;
    }

    if (task_get_ticks() == TICKS_PER_SEC)
    {
        // 统计最初1s内的最大计数值
        idle_max_count = idle_count;
        idle_count = 0;
        os_printf("--------idle_max_count = %d\n", idle_max_count);

        // 计数完毕，开启调度器，允许切换到其它任务
        task_sched_enable();
    }
    else if (task_get_ticks() % TICKS_PER_SEC == 0)
    {
        // 之后每隔1s统计一次，同时计算cpu利用率
        cpu_usage = 100 - (idle_count * 100.0 / idle_max_count);
        os_printf("cpu_usage=%f tick_counter=%d idle_count=%d idle_max_count=%d\n", \
            cpu_usage, task_get_ticks(), idle_count, idle_max_count);
        idle_count = 0;
    }
}

void cpu_usage_sync_with_systick (void)
{
    // 等待与时钟节拍同步
    os_printf("start\n");
    while (enable_cpu_usage_stat == 0)
    {
        ;;
    }
    os_printf("done\n");
}

float cpu_usage_get (void)
{
    float usage = 0;

    uint32_t status = task_enter_critical();
    usage = cpu_usage;
        os_printf("2 cpu_usage=%f\n", usage);
    task_exit_critical(status);

    return usage;
}