#ifndef __EVENT_GROUP_H__
#define __EVENT_GROUP_H__
#include "event.h"
typedef struct {
	// 事件控制块
    event_t event;

    // 当前事件标志
    uint32_t flags;
} event_group_t;

// 事件标志组查询信息
typedef struct
{
    // 当前的事件标志
    uint32_t flags;

    // 当前等待的任务计数
    uint32_t task_count;
} event_group_info_t;

#define	EVENT_GROUP_CLEAR		(0x0 << 0)
#define	EVENT_GROUP_SET			(0x1 << 0)
#define	EVENT_GROUP_ANY			(0x0 << 1)
#define	EVENT_GROUP_ALL			(0x1 << 1)

#define EVENT_GROUP_SET_ALL		(EVENT_GROUP_SET | EVENT_GROUP_ALL)
#define	EVENT_GROUP_SET_ANY		(EVENT_GROUP_SET | EVENT_GROUP_ANY)
#define EVENT_GROUP_CLEAR_ALL	(EVENT_GROUP_CLEAR | EVENT_GROUP_ALL)
#define EVENT_GROUP_CLEAR_ANY	(EVENT_GROUP_CLEAR | EVENT_GROUP_ANY)

#define	EVENT_GROUP_CONSUME		(0x1 << 7)

void event_group_init (event_group_t * event_group, uint32_t flags);
uint32_t event_group_wait (event_group_t * event_group, uint32_t wait_type, uint32_t request_flag,
						uint32_t * result_flag, uint32_t wait_ticks);
uint32_t event_group_no_wait_get (event_group_t * event_group, uint32_t wait_type, uint32_t requst_flag, uint32_t * request_flag);
void event_group_notify (event_group_t * event_group, uint8_t isset, uint32_t flags);
void event_group_get_info (event_group_t * event_group, event_group_info_t * info);
uint32_t event_group_destroy (event_group_t * event_group);

#endif // __EVENT_GROUP_H__
