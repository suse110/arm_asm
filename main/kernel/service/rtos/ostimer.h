#ifndef __OSTIMER_H__
#define __OSTIMER_H__
#include "event.h"

// 定时器状态
typedef enum
{
    TIMER_STATE_CREATED,  // 定时器已经创建
    TIMER_STATE_STARTED,  // 定时器已经启动
    TIMER_STATE_RUNNING,  // 定时器正在执行回调函数
    TIMER_STATE_STOPPED,  // 定时器已经停止
    TIMER_STATE_DESTROYED // 定时器已经销毁
} timer_state_t;

// 软定时器结构
typedef struct
{
    // 链表结点
    node_t link_node;

    // 初次启动延后的ticks数
    uint32_t start_delay_ticks;

    // 周期定时时的周期tick数
    uint32_t duration_ticks;

    // 当前定时递减计数值
    uint32_t delay_ticks;

    // 定时回调函数
    void (*timer_func)(void *arg);

    // 传递给回调函数的参数
    void *arg;

    // 定时器配置参数
    uint32_t config;

    // 定时器状态
    timer_state_t state;
} ostimer_t;

// 软定时器状态信息
typedef struct _tTimerInfo
{
    // 初次启动延后的ticks数
    uint32_t start_delay_ticks;

    // 周期定时时的周期tick数
    uint32_t duration_ticks;

    // 定时回调函数
    void (*timer_func)(void *arg);

    // 传递给回调函数的参数
    void *arg;

    // 定时器配置参数
    uint32_t config;

    // 定时器状态
    timer_state_t state;
} timer_info_t;

// 软硬定时器
#define TIMER_CONFIG_TYPE_HARD (1 << 0)
#define TIMER_CONFIG_TYPE_SOFT (0 << 0)

void timer_init(ostimer_t *timer, uint32_t delay_ticks, uint32_t duration_ticks,
                void (*timer_func)(void *arg), void *arg, uint32_t config);
void timer_start(ostimer_t *timer);
void timer_stop(ostimer_t *timer);
void timer_destroy(ostimer_t *timer);
void timer_get_info(ostimer_t *timer, timer_info_t *info);
void timer_module_tick_notify(void);
void timer_module_init(void);
void timer_task_init(void);
#else
#error "timer redef"
#endif // __OSTIMER_H__
