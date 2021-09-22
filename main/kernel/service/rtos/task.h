#ifndef __TASK_H__
#define __TASK_H__

#define OS_TASK_STATE_RDY                   0
#define OS_TASK_STATE_DELAYED               (1 << 1)
#define OS_TASK_STATE_SUSPEND               (1 << 2)

#define OS_TASK_WAIT_MASK                   (0xFF << 16)
#define OS_PRO_COUNT                32

#define OS_SLICE_MAX                10                        // 每个任务最大运行的时间片计数
#define OS_IDLETASK_STACK_SIZE		1024					// 空闲任务的堆栈单元数
#define OS_TIMERTASK_STACK_SIZE		1024					// 定时器任务的堆栈单元数
#define OS_TIMERTASK_PRIO           1                       // 定时器任务的优先级

typedef uint32_t task_stack_t;
// struct event_s;
typedef struct {
    task_stack_t *stack;
    // 堆栈的起即地址
    uint32_t * stack_base;
    // 堆栈的总容量
    uint32_t stack_size;
    uint32_t delay_ticks;//任务延时计数
    uint32_t priority;
    node_t delay_node;
    node_t link_node;
    uint32_t state;//task state
    // 当前剩余的时间片
    uint32_t slice;
   // 被挂起的次数
    uint32_t suspend_count;
    // 任务被删除时调用的清理函数
    void (*clean) (void * param);

    // 传递给清理函数的参数
    void * clean_param;

    // 请求删除标志，非0表示请求删除
    uint8_t request_delete_flag;
    struct event_s *event_wait;
    void *event_msg;
    uint32_t event_wait_result;
    const char* name;
    // 等待的事件方式
    uint32_t waitFlagsType;

    // 等待的事件标志
    uint32_t eventFlags;
} task_t;

typedef struct {
    uint32_t delay_ticks;
    uint32_t priority;
    uint32_t state;
    uint32_t slice;
    uint32_t suspend_count;
    // 堆栈的总容量
    uint32_t stack_size;
    // 堆栈空余量
    uint32_t stack_free;
} task_info_t;

typedef void (*task_entry_t)(void* param);

void task_create(const char* name, task_t * task, task_entry_t entry, void *param, uint32_t priority, uint32_t* stack, uint32_t size);
void task_suspend(task_t * task);
void task_resume(task_t * task);
void task_set_clean_callback(task_t *task, void (*clean)(void *parm), void *param);
void task_force_delete(task_t *task);
void task_request_delete(task_t *task);
uint8_t task_is_request_delete(void);
void task_delete_self(void);
void task_get_info(task_t *task, task_info_t *info);

#endif // __TASK_H__
