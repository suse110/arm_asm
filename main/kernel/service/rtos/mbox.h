#ifndef __MBOX_H__
#define __MBOX_H__
#include "event.h"
#define MBOX_SEND_NORMAL             0x00        // 正常发送发送至缓冲区
#define MBOX_SEND_FRONT              0x01        // 消息发送至缓冲区头部

typedef struct
{
	// 事件控制块
	// 该结构被特意放到起始处，以实现tSem同时是一个tEvent的目的
	event_t event;

	// 当前的消息数量
    uint32_t count;

    // 读取消息的索引
    uint32_t read;

    // 写消息的索引
    uint32_t write;

    // 最大允许容纳的消息数量
    uint32_t max_count;

    // 消息存储缓冲区
    void ** msg_buffer;
} mbox_t;

typedef struct {
	// 当前的消息数量
    uint32_t count;

    // 最大允许容纳的消息数量
    uint32_t max_count;

    // 当前等待的任务计数
    uint32_t task_count;
} mbox_info_t;

void mbox_init (mbox_t * mbox, void ** msg_buffer, uint32_t max_count);
uint32_t mbox_wait (mbox_t * mbox, void **msg, uint32_t wait_ticks);
uint32_t mbox_no_wait_get (mbox_t * mbox, void **msg);
//通知消息可用，唤醒等待队列中的一个任务，或者将消息插入到邮箱中
uint32_t mbox_notify (mbox_t * mbox, void * msg, uint32_t notify_option);
//清空邮箱中所有消息
void mbox_flush (mbox_t * mbox);
uint32_t mbox_destroy (mbox_t * mbox);
void mbox_get_info (mbox_t * mbox, mbox_info_t * info);

#endif // __MBOX_H__
