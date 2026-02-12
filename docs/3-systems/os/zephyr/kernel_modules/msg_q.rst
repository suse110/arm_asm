消息队列模块
============

消息队列模块是 Zephyr RTOS 中的一个核心通信机制，用于线程间安全地传递固定大小的消息。它提供了一种可靠的数据交换方式，支持阻塞和非阻塞操作，以及超时机制。

模块概述
--------

**功能和作用**

消息队列模块 (`msg_q.c`) 提供以下核心功能：

* 固定大小消息的发送和接收
* 支持阻塞和非阻塞操作
* 支持超时机制
* 线程安全的实现
* 支持在中断上下文中使用（非阻塞模式）
* 支持轮询事件
* 支持静态和动态内存分配

**设计目标**

* 提供可靠的线程间通信机制
* 支持固定大小消息的高效传递
* 提供灵活的阻塞和非阻塞操作
* 确保线程安全
* 支持在中断上下文中使用
* 提供简单易用的 API

**使用场景**

* 线程间通信和数据交换
* 中断处理程序与线程的通信
* 事件驱动编程
* 消息传递系统
* 数据采集和处理
* 任务协调和同步
* 缓冲区管理

核心数据结构
------------

**消息队列结构体 (`struct k_msgq`)**

消息队列的核心数据结构：

```c
struct k_msgq {
    _wait_q_t wait_q;               /* 等待队列 */
    struct k_spinlock lock;         /* 自旋锁 */
    size_t msg_size;                /* 消息大小 */
    uint32_t max_msgs;              /* 最大消息数 */
    char *buffer_start;             /* 缓冲区起始地址 */
    char *buffer_end;               /* 缓冲区结束地址 */
    char *read_ptr;                 /* 读指针 */
    char *write_ptr;                /* 写指针 */
    uint32_t used_msgs;             /* 已使用消息数 */
#ifdef CONFIG_POLL
    struct k_poll_event *poll_events; /* 轮询事件列表 */
#endif
#ifdef CONFIG_OBJ_CORE_MSGQ
    struct k_obj_core obj_core;     /* 对象核心 */
#endif
};
```

**字段说明**

* `wait_q` - 等待队列，用于管理等待消息的线程
* `lock` - 自旋锁，确保操作的原子性
* `msg_size` - 每条消息的大小（字节）
* `max_msgs` - 队列可容纳的最大消息数
* `buffer_start` - 消息缓冲区的起始地址
* `buffer_end` - 消息缓冲区的结束地址
* `read_ptr` - 当前读指针位置
* `write_ptr` - 当前写指针位置
* `used_msgs` - 当前队列中的消息数
* `poll_events` - 轮询事件列表（可选）
* `obj_core` - 对象核心，用于对象管理（可选）

**消息队列属性结构体 (`struct k_msgq_attrs`)**

用于获取消息队列属性：

```c
struct k_msgq_attrs {
    size_t msg_size;    /* 消息大小 */
    uint32_t max_msgs;  /* 最大消息数 */
    uint32_t used_msgs; /* 当前消息数 */
};
```

实现原理
--------

**环形缓冲区实现**

消息队列使用环形缓冲区存储消息：

1. **缓冲区布局** - 连续内存区域，划分为固定大小的消息槽
2. **读写指针** - 分别指向当前可读取和可写入的位置
3. **循环机制** - 当指针到达缓冲区末尾时，自动回绕到起始位置
4. **消息计数** - 跟踪当前队列中的消息数量

**消息发送 (`k_msgq_put`)**

发送消息的流程：

1. **检查队列是否已满** - 如果队列未满，直接将消息复制到缓冲区
2. **唤醒等待线程** - 如果有线程等待接收消息，直接将消息传递给等待线程
3. **阻塞处理** - 如果队列已满且设置了超时，线程进入等待状态
4. **非阻塞处理** - 如果队列已满且设置为 K_NO_WAIT，返回错误

**消息接收 (`k_msgq_get`)**

接收消息的流程：

1. **检查队列是否为空** - 如果队列非空，直接从缓冲区复制消息
2. **唤醒等待线程** - 如果有线程等待发送消息，将其消息添加到队列并唤醒
3. **阻塞处理** - 如果队列为空且设置了超时，线程进入等待状态
4. **非阻塞处理** - 如果队列为空且设置为 K_NO_WAIT，返回错误

**线程安全**

通过自旋锁确保线程安全：

1. **操作原子性** - 所有对队列的修改都在自旋锁保护下进行
2. **无竞争访问** - 确保同一时间只有一个线程修改队列状态
3. **中断安全** - 自旋锁支持在中断上下文中使用

**超时机制**

支持设置超时，避免线程无限期等待：

1. **超时参数** - 支持 K_NO_WAIT, K_FOREVER, 和具体的时间值
2. **超时处理** - 超时后从等待队列中移除线程并返回错误
3. **返回值** - 超时后返回 -ENOMSG

**中断安全**

支持在中断上下文中使用（非阻塞模式）：

1. **中断安全** - `k_msgq_put()` 和 `k_msgq_get()` 可以在中断中使用
2. **非阻塞** - 在中断中只能使用 K_NO_WAIT 模式
3. **中断到线程通信** - 中断处理程序可以通过消息队列通知线程

API 参考
--------

**消息队列管理**

* `k_msgq_init()` - 初始化消息队列
  * 参数：消息队列指针、缓冲区指针、消息大小、最大消息数
  * 返回：无
  * 用途：初始化一个消息队列，设置缓冲区和参数
  * 示例：
    ```c
    char msg_buffer[10 * sizeof(int)];
    struct k_msgq my_msgq;
    k_msgq_init(&my_msgq, msg_buffer, sizeof(int), 10);
    ```

* `k_msgq_alloc_init()` - 初始化消息队列并分配缓冲区
  * 参数：消息队列指针、消息大小、最大消息数
  * 返回：0 表示成功，-EINVAL 表示参数无效，-ENOMEM 表示内存不足
  * 用途：初始化一个消息队列，自动分配缓冲区
  * 示例：
    ```c
    struct k_msgq my_msgq;
    if (k_msgq_alloc_init(&my_msgq, sizeof(int), 10) == 0) {
        printk("Message queue initialized with allocated buffer\n");
    }
    ```

* `k_msgq_cleanup()` - 清理消息队列
  * 参数：消息队列指针
  * 返回：0 表示成功，-EBUSY 表示队列忙
  * 用途：释放消息队列的缓冲区（如果是自动分配的）
  * 示例：
    ```c
    k_msgq_cleanup(&my_msgq);
    ```

**消息操作**

* `k_msgq_put()` - 发送消息
  * 参数：消息队列指针、消息数据指针、超时
  * 返回：0 表示成功，-ENOMSG 表示失败或超时
  * 用途：向消息队列发送一条消息
  * 示例：
    ```c
    int msg = 42;
    if (k_msgq_put(&my_msgq, &msg, K_FOREVER) == 0) {
        printk("Message sent successfully\n");
    }
    ```

* `k_msgq_get()` - 接收消息
  * 参数：消息队列指针、消息数据指针、超时
  * 返回：0 表示成功，-ENOMSG 表示失败或超时
  * 用途：从消息队列接收一条消息
  * 示例：
    ```c
    int msg;
    if (k_msgq_get(&my_msgq, &msg, K_FOREVER) == 0) {
        printk("Received message: %d\n", msg);
    }
    ```

* `k_msgq_peek()` - 查看消息但不消费
  * 参数：消息队列指针、消息数据指针
  * 返回：0 表示成功，-ENOMSG 表示队列为空
  * 用途：查看队列中的第一条消息但不将其从队列中移除
  * 示例：
    ```c
    int msg;
    if (k_msgq_peek(&my_msgq, &msg) == 0) {
        printk("Peeked message: %d\n", msg);
    }
    ```

* `k_msgq_peek_at()` - 查看指定位置的消息
  * 参数：消息队列指针、消息数据指针、索引
  * 返回：0 表示成功，-ENOMSG 表示索引无效
  * 用途：查看队列中指定位置的消息但不将其从队列中移除
  * 示例：
    ```c
    int msg;
    if (k_msgq_peek_at(&my_msgq, &msg, 2) == 0) {
        printk("Peeked message at index 2: %d\n", msg);
    }
    ```

* `k_msgq_purge()` - 清空消息队列
  * 参数：消息队列指针
  * 返回：无
  * 用途：清空队列中的所有消息，唤醒所有等待的线程
  * 示例：
    ```c
    k_msgq_purge(&my_msgq);
    printk("Message queue purged\n");
    ```

**属性和状态**

* `k_msgq_get_attrs()` - 获取消息队列属性
  * 参数：消息队列指针、属性结构体指针
  * 返回：无
  * 用途：获取消息队列的当前状态和配置
  * 示例：
    ```c
    struct k_msgq_attrs attrs;
    k_msgq_get_attrs(&my_msgq, &attrs);
    printk("Msg size: %zu, Max msgs: %u, Used msgs: %u\n",
           attrs.msg_size, attrs.max_msgs, attrs.used_msgs);
    ```

* `k_msgq_num_free_get()` - 获取空闲消息槽数量
  * 参数：消息队列指针
  * 返回：空闲消息槽数量
  * 用途：获取队列中可用的消息槽数量
  * 示例：
    ```c
    uint32_t free_slots = k_msgq_num_free_get(&my_msgq);
    printk("Free slots: %u\n", free_slots);
    ```

* `k_msgq_num_used_get()` - 获取已使用消息槽数量
  * 参数：消息队列指针
  * 返回：已使用消息槽数量
  * 用途：获取队列中已使用的消息槽数量
  * 示例：
    ```c
    uint32_t used_slots = k_msgq_num_used_get(&my_msgq);
    printk("Used slots: %u\n", used_slots);
    ```

**静态定义**

* `K_MSGQ_DEFINE()` - 静态定义消息队列
  * 参数：消息队列名称、消息大小、最大消息数、对齐方式
  * 用途：在编译时静态定义一个消息队列
  * 示例：
    ```c
    K_MSGQ_DEFINE(my_msgq, sizeof(int), 10, 4);
    ```

性能特性
--------

**时间复杂度**

* **初始化**：O(1) - 常数时间操作
* **发送**：
  - 非阻塞且队列未满：O(1) - 直接复制消息
  - 非阻塞且队列已满：O(1) - 返回错误
  - 阻塞：O(1) + 线程调度开销
* **接收**：
  - 非阻塞且队列非空：O(1) - 直接复制消息
  - 非阻塞且队列为空：O(1) - 返回错误
  - 阻塞：O(1) + 线程调度开销
* **查看**：O(1) - 直接复制消息
* **清空**：O(n) - n 是等待线程数量

**内存开销**

* **消息队列结构体**：约 32-48 字节（取决于配置）
* **缓冲区**：消息大小 × 最大消息数
* **等待队列**：约 8-16 字节
* **每个等待线程**：约 4 字节（队列节点）

**并发性能**

* **无竞争场景**：非常高效，几乎无开销
* **轻度竞争**：性能良好，开销主要来自自旋锁
* **重度竞争**：性能下降，频繁的线程切换和锁竞争

**影响因素**

* **消息大小**：消息越大，复制开销越大
* **队列长度**：队列越长，内存开销越大，但能容纳更多消息
* **竞争程度**：竞争越激烈，性能越低
* **处理器速度**：处理器速度越快，消息复制和锁操作越快
* **超时设置**：超时检查会增加一些开销

**优化建议**

* 选择合适的消息大小，避免过大的消息
* 根据实际需求设置合理的队列长度
* 尽量使用非阻塞模式（K_NO_WAIT）在中断中使用
* 减少在持有消息队列锁时的执行时间
* 考虑使用其他通信机制（如 FIFO）用于简单的数据传递
* 合理设置超时值，避免线程长时间阻塞

内部实现细节
------------

**消息队列初始化**

消息队列初始化的核心实现：

```c
void k_msgq_init(struct k_msgq *msgq, char *buffer, size_t msg_size, uint32_t max_msgs)
{
    msgq->msg_size = msg_size;
    msgq->max_msgs = max_msgs;
    msgq->buffer_start = buffer;
    msgq->buffer_end = buffer + (max_msgs * msg_size);
    msgq->read_ptr = buffer;
    msgq->write_ptr = buffer;
    msgq->used_msgs = 0;
    msgq->flags = 0;
    z_waitq_init(&msgq->wait_q);
    msgq->lock = (struct k_spinlock) {};
#ifdef CONFIG_POLL
    sys_dlist_init(&msgq->poll_events);
#endif

#ifdef CONFIG_OBJ_CORE_MSGQ
    k_obj_core_init_and_link(K_OBJ_CORE(msgq), &obj_type_msgq);
#endif

    SYS_PORT_TRACING_OBJ_INIT(k_msgq, msgq);

    k_object_init(msgq);
}
```

**消息发送**

消息发送的核心实现：

```c
int z_impl_k_msgq_put(struct k_msgq *msgq, const void *data, k_timeout_t timeout)
{
    __ASSERT(!arch_is_in_isr() || K_TIMEOUT_EQ(timeout, K_NO_WAIT), "");

    struct k_thread *pending_thread;
    k_spinlock_key_t key;
    int result;

    key = k_spin_lock(&msgq->lock);

    if (msgq->used_msgs < msgq->max_msgs) {
        /* 队列未满，尝试唤醒等待的线程 */
        pending_thread = z_unpend_first_thread(&msgq->wait_q);
        if (pending_thread != NULL) {
            /* 有等待线程，直接传递消息 */
            (void)memcpy(pending_thread->base.swap_data, data, msgq->msg_size);
            arch_thread_return_value_set(pending_thread, 0);
            z_ready_thread(pending_thread);
            z_reschedule(&msgq->lock, key);
            return 0;
        } else {
            /* 无等待线程，将消息放入队列 */
            (void)memcpy(msgq->write_ptr, (char *)data, msgq->msg_size);
            msgq->write_ptr += msgq->msg_size;
            if (msgq->write_ptr == msgq->buffer_end) {
                msgq->write_ptr = msgq->buffer_start;
            }
            msgq->used_msgs++;
#ifdef CONFIG_POLL
            handle_poll_events(msgq, K_POLL_STATE_MSGQ_DATA_AVAILABLE);
#endif
        }
        result = 0;
    } else if (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) {
        /* 队列已满，非阻塞模式返回错误 */
        result = -ENOMSG;
    } else {
        /* 队列已满，阻塞等待 */
        _current->base.swap_data = (void *) data;
        result = z_pend_curr(&msgq->lock, key, &msgq->wait_q, timeout);
        return result;
    }

    k_spin_unlock(&msgq->lock, key);
    return result;
}
```

**消息接收**

消息接收的核心实现：

```c
int z_impl_k_msgq_get(struct k_msgq *msgq, void *data, k_timeout_t timeout)
{
    __ASSERT(!arch_is_in_isr() || K_TIMEOUT_EQ(timeout, K_NO_WAIT), "");

    k_spinlock_key_t key;
    struct k_thread *pending_thread;
    int result;

    key = k_spin_lock(&msgq->lock);

    if (msgq->used_msgs > 0U) {
        /* 队列非空，读取消息 */
        (void)memcpy((char *)data, msgq->read_ptr, msgq->msg_size);
        msgq->read_ptr += msgq->msg_size;
        if (msgq->read_ptr == msgq->buffer_end) {
            msgq->read_ptr = msgq->buffer_start;
        }
        msgq->used_msgs--;

        /* 尝试唤醒等待发送的线程 */
        pending_thread = z_unpend_first_thread(&msgq->wait_q);
        if (pending_thread != NULL) {
            /* 有等待线程，将其消息放入队列 */
            (void)memcpy(msgq->write_ptr, (char *)pending_thread->base.swap_data, msgq->msg_size);
            msgq->write_ptr += msgq->msg_size;
            if (msgq->write_ptr == msgq->buffer_end) {
                msgq->write_ptr = msgq->buffer_start;
            }
            msgq->used_msgs++;

            /* 唤醒等待线程 */
            arch_thread_return_value_set(pending_thread, 0);
            z_ready_thread(pending_thread);
            z_reschedule(&msgq->lock, key);
            return 0;
        }
        result = 0;
    } else if (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) {
        /* 队列为空，非阻塞模式返回错误 */
        result = -ENOMSG;
    } else {
        /* 队列为空，阻塞等待 */
        _current->base.swap_data = data;
        result = z_pend_curr(&msgq->lock, key, &msgq->wait_q, timeout);
        return result;
    }

    k_spin_unlock(&msgq->lock, key);
    return result;
}
```

**消息查看**

消息查看的核心实现：

```c
int z_impl_k_msgq_peek(struct k_msgq *msgq, void *data)
{
    k_spinlock_key_t key;
    int result;

    key = k_spin_lock(&msgq->lock);

    if (msgq->used_msgs > 0U) {
        /* 队列非空，复制消息但不消费 */
        (void)memcpy((char *)data, msgq->read_ptr, msgq->msg_size);
        result = 0;
    } else {
        /* 队列为空，返回错误 */
        result = -ENOMSG;
    }

    k_spin_unlock(&msgq->lock, key);
    return result;
}
```

**消息队列清空**

消息队列清空的核心实现：

```c
void z_impl_k_msgq_purge(struct k_msgq *msgq)
{
    k_spinlock_key_t key;
    struct k_thread *pending_thread;

    key = k_spin_lock(&msgq->lock);

    /* 唤醒所有等待的线程，返回错误 */
    for (pending_thread = z_unpend_first_thread(&msgq->wait_q); pending_thread != NULL;
         pending_thread = z_unpend_first_thread(&msgq->wait_q)) {
        arch_thread_return_value_set(pending_thread, -ENOMSG);
        z_ready_thread(pending_thread);
    }

    /* 重置队列状态 */
    msgq->used_msgs = 0;
    msgq->read_ptr = msgq->write_ptr;

    /* 调度唤醒的线程 */
    z_reschedule(&msgq->lock, key);
}
```

使用示例
--------

**基本消息传递示例**

```c
#include <zephyr/kernel.h>

/* 定义消息队列 */
#define MSG_SIZE sizeof(int)
#define MAX_MSGS 10
char msg_buffer[MAX_MSGS * MSG_SIZE];
K_MSGQ_DEFINE(my_msgq, MSG_SIZE, MAX_MSGS, 4);

/* 发送线程 */
void send_thread(void *p1, void *p2, void *p3)
{
    int msg = 0;
    
    while (1) {
        /* 发送消息 */
        if (k_msgq_put(&my_msgq, &msg, K_FOREVER) == 0) {
            printk("Sent message: %d\n", msg);
            msg++;
        }
        
        /* 等待一段时间 */
        k_sleep(K_MSEC(500));
    }
}

/* 接收线程 */
void receive_thread(void *p1, void *p2, void *p3)
{
    int msg;
    
    while (1) {
        /* 接收消息 */
        if (k_msgq_get(&my_msgq, &msg, K_FOREVER) == 0) {
            printk("Received message: %d\n", msg);
        }
        
        /* 等待一段时间 */
        k_sleep(K_MSEC(1000));
    }
}

/* 定义线程 */
K_THREAD_DEFINE(send_thread_id, 1024, send_thread, NULL, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(receive_thread_id, 1024, receive_thread, NULL, NULL, NULL, 6, 0, 0);

void main(void)
{
    printk("Message queue example started\n");
    printk("Max messages: %d, Message size: %zu\n", MAX_MSGS, MSG_SIZE);
}
```

**结构体消息示例**

```c
#include <zephyr/kernel.h>

/* 定义消息结构体 */
typedef struct {
    int id;
    char data[32];
} sensor_data_t;

/* 定义消息队列 */
#define MSG_SIZE sizeof(sensor_data_t)
#define MAX_MSGS 5
K_MSGQ_DEFINE(sensor_msgq, MSG_SIZE, MAX_MSGS, 4);

/* 传感器线程 */
void sensor_thread(void *p1, void *p2, void *p3)
{
    sensor_data_t data;
    int sensor_id = (int)p1;
    
    data.id = sensor_id;
    
    while (1) {
        /* 模拟传感器数据 */
        snprintf(data.data, sizeof(data.data), "Sensor %d reading: %d", 
                 sensor_id, k_uptime_get_32() % 100);
        
        /* 发送消息 */
        if (k_msgq_put(&sensor_msgq, &data, K_FOREVER) == 0) {
            printk("Sensor %d: sent data\n", sensor_id);
        }
        
        /* 模拟传感器采样周期 */
        k_sleep(K_MSEC(1000));
    }
}

/* 处理线程 */
void process_thread(void *p1, void *p2, void *p3)
{
    sensor_data_t data;
    
    while (1) {
        /* 接收消息 */
        if (k_msgq_get(&sensor_msgq, &data, K_FOREVER) == 0) {
            printk("Processed: ID=%d, Data=%s\n", data.id, data.data);
        }
    }
}

/* 定义线程 */
K_THREAD_DEFINE(sensor1_id, 1024, sensor_thread, (void *)1, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(sensor2_id, 1024, sensor_thread, (void *)2, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(process_id, 1024, process_thread, NULL, NULL, NULL, 6, 0, 0);

void main(void)
{
    printk("Struct message example started\n");
    printk("Max messages: %d, Message size: %zu\n", MAX_MSGS, MSG_SIZE);
}
```

**中断到线程通信示例**

```c
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

/* 定义消息队列 */
#define MSG_SIZE sizeof(uint32_t)
#define MAX_MSGS 5
K_MSGQ_DEFINE(button_msgq, MSG_SIZE, MAX_MSGS, 4);

/* 按钮设备 */
#define SW0_NODE DT_ALIAS(sw0)
static const struct gpio_dt_spec button = GPIO_DT_SPEC_GET(SW0_NODE, gpios);

/* 中断处理函数 */
static void button_pressed(const struct device *dev, struct gpio_callback *cb, uint32_t pins)
{
    static uint32_t press_count = 0;
    
    printk("Interrupt: Button pressed\n");
    
    /* 发送消息到队列（非阻塞） */
    if (k_msgq_put(&button_msgq, &press_count, K_NO_WAIT) == 0) {
        press_count++;
    }
}

/* 回调结构 */
static struct gpio_callback button_cb_data;

/* 事件处理线程 */
void event_thread(void *p1, void *p2, void *p3)
{
    uint32_t press_count;
    
    while (1) {
        /* 接收消息 */
        if (k_msgq_get(&button_msgq, &press_count, K_FOREVER) == 0) {
            printk("Thread: Button pressed %u times\n", press_count);
        }
    }
}

/* 定义线程 */
K_THREAD_DEFINE(event_id, 1024, event_thread, NULL, NULL, NULL, 5, 0, 0);

void main(void)
{
    int ret;
    
    /* 初始化按钮 */
    if (!device_is_ready(button.port)) {
        printk("Error: button device not ready\n");
        return;
    }
    
    /* 配置按钮中断 */
    ret = gpio_pin_configure_dt(&button, GPIO_INPUT);
    if (ret < 0) {
        printk("Error: failed to configure button\n");
        return;
    }
    
    ret = gpio_pin_interrupt_configure_dt(&button, GPIO_INT_EDGE_TO_ACTIVE);
    if (ret < 0) {
        printk("Error: failed to configure button interrupt\n");
        return;
    }
    
    /* 设置回调 */
    gpio_init_callback(&button_cb_data, button_pressed, BIT(button.pin));
    gpio_add_callback(button.port, &button_cb_data);
    
    printk("Interrupt to thread communication example started\n");
    printk("Press the button to generate an interrupt\n");
}
```

**带超时的消息传递示例**

```c
#include <zephyr/kernel.h>

/* 定义消息队列 */
#define MSG_SIZE sizeof(int)
#define MAX_MSGS 2
K_MSGQ_DEFINE(timeout_msgq, MSG_SIZE, MAX_MSGS, 4);

/* 发送线程 */
void send_thread(void *p1, void *p2, void *p3)
{
    int msg = 0;
    int ret;
    
    while (1) {
        /* 发送消息（带超时） */
        ret = k_msgq_put(&timeout_msgq, &msg, K_MSEC(1000));
        if (ret == 0) {
            printk("Sent message: %d\n", msg);
            msg++;
        } else {
            printk("Failed to send message: %d\n", ret);
        }
        
        /* 快速发送，导致队列满 */
        k_sleep(K_MSEC(100));
    }
}

/* 接收线程 */
void receive_thread(void *p1, void *p2, void *p3)
{
    int msg;
    int ret;
    
    while (1) {
        /* 接收消息（带超时） */
        ret = k_msgq_get(&timeout_msgq, &msg, K_MSEC(500));
        if (ret == 0) {
            printk("Received message: %d\n", msg);
        } else {
            printk("Timeout waiting for message\n");
        }
        
        /* 慢速接收，导致队列满 */
        k_sleep(K_MSEC(1000));
    }
}

/* 定义线程 */
K_THREAD_DEFINE(send_thread_id, 1024, send_thread, NULL, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(receive_thread_id, 1024, receive_thread, NULL, NULL, NULL, 6, 0, 0);

void main(void)
{
    printk("Timeout message example started\n");
    printk("Max messages: %d, Message size: %zu\n", MAX_MSGS, MSG_SIZE);
    printk("Send interval: 100ms, Receive interval: 1000ms\n");
}
```

调试和故障排除
------------

**常见问题和解决方案**

1. **消息发送失败**
   * 症状：`k_msgq_put()` 返回 -ENOMSG
   * 原因：队列已满且设置了 K_NO_WAIT，或者超时
   * 解决方案：增加队列长度，或使用更长的超时时间

2. **消息接收失败**
   * 症状：`k_msgq_get()` 返回 -ENOMSG
   * 原因：队列为空且设置了 K_NO_WAIT，或者超时
   * 解决方案：确保有消息发送，或使用更长的超时时间

3. **中断上下文使用错误**
   * 症状：在中断中使用消息队列时出错
   * 原因：在中断中使用了阻塞模式
   * 解决方案：在中断中只能使用 K_NO_WAIT 模式

4. **内存不足**
   * 症状：`k_msgq_alloc_init()` 返回 -ENOMEM
   * 原因：内存池不足，无法分配缓冲区
   * 解决方案：增加内存池大小，或使用静态缓冲区

5. **消息大小错误**
   * 症状：消息数据损坏
   * 原因：发送和接收的消息大小不匹配
   * 解决方案：确保发送和接收使用相同大小的消息

6. **性能问题**
   * 症状：消息传递速度慢
   * 原因：消息过大，或队列竞争激烈
   * 解决方案：减少消息大小，或使用其他通信机制

**调试技巧**

1. **启用消息队列日志**
   * 配置：`CONFIG_KERNEL_LOG_LEVEL_DBG=y`
   * 用途：查看消息队列的发送和接收操作

2. **使用线程监控**
   * 配置：`CONFIG_THREAD_MONITOR=y`
   * 命令：`thread` (shell 命令)
   * 用途：查看线程状态，包括哪些线程在等待消息队列

3. **检查消息队列状态**
   * 使用 `k_msgq_get_attrs()` 打印队列状态
   * 监控队列的使用情况

4. **使用静态分析工具**
   * 工具：`clang-tidy`, `coverity`
   * 用途：检测潜在的消息队列使用错误

5. **性能分析**
   * 配置：`CONFIG_SCHED_THREAD_USAGE=y`
   * API：`k_thread_runtime_stats_get()`
   * 用途：分析线程在等待消息队列的时间

6. **消息队列清空**
   * 在调试时使用 `k_msgq_purge()` 清空队列
   * 快速恢复到初始状态

与其他模块的关系
------------

**依赖关系**

* **调度器模块** (`sched.c`) - 提供线程调度
* **线程管理模块** (`thread.c`) - 提供线程创建和管理
* **等待队列模块** (`wait_q.c`) - 管理等待状态的线程
* **超时模块** (`timeout.c`) - 处理消息队列的超时
* **轮询模块** (`poll.c`) - 处理消息队列的轮询事件
* **内存管理模块** (`mem_pool.c`) - 提供缓冲区分配

**交互方式**

* **调度器** - 消息队列通过调度器唤醒和调度线程
* **线程管理** - 消息队列与线程管理模块协作管理线程状态
* **等待队列** - 消息队列使用等待队列管理等待的线程
* **超时处理** - 消息队列使用超时模块处理发送和接收超时
* **内存管理** - 消息队列使用内存管理模块分配缓冲区

**集成建议**

* **与信号量配合使用**
  - 信号量用于控制访问权限
  - 消息队列用于传递数据

* **与事件模块配合使用**
  - 事件用于多事件等待
  - 消息队列用于传递详细数据

* **与内存管理配合使用**
  - 内存池用于分配消息数据
  - 消息队列用于传递内存池引用

* **与设备驱动配合使用**
  - 设备驱动通过消息队列向应用线程传递数据
  - 应用线程通过消息队列向设备驱动发送命令

未来发展和改进
------------

**潜在优化方向**

* **无锁实现** - 使用原子操作实现无锁消息队列，减少同步开销
* **批量操作** - 支持一次性发送和接收多个消息
* **优先级消息** - 支持优先级消息，高优先级消息先处理
* **零拷贝** - 支持零拷贝消息传递，减少数据复制开销
* **动态队列大小** - 支持动态调整队列大小
* **消息压缩** - 支持消息压缩，减少带宽使用

**已知限制**

* **固定消息大小** - 消息大小在初始化时固定，无法动态更改
* **连续内存** - 需要连续的内存缓冲区
* **消息复制** - 每次发送和接收都需要复制消息
* **无公平性保证** - 不保证线程获取消息的顺序
* **内存开销** - 队列长度固定，可能导致内存浪费

**未来功能规划**

* **优先级消息队列** - 支持消息优先级
* **动态消息大小** - 支持可变大小的消息
* **零拷贝消息传递** - 减少数据复制
* **消息超时** - 支持消息的自动过期
* **统计信息** - 提供消息队列使用统计，如等待时间、发送次数等
* **调试增强** - 增加死锁检测和使用错误检测

总结
----

消息队列模块是 Zephyr RTOS 中一个重要的通信机制，提供了可靠的线程间消息传递能力。它支持固定大小消息的发送和接收，具有阻塞和非阻塞操作、超时机制、线程安全等特性。

消息队列的核心特性包括：

* 固定大小消息的可靠传递
* 支持阻塞和非阻塞操作
* 支持超时机制
* 线程安全的实现
* 支持在中断上下文中使用（非阻塞模式）
* 支持轮询事件
* 支持静态和动态内存分配

在使用消息队列时，应注意以下最佳实践：

* 选择合适的消息大小，避免过大的消息
* 根据实际需求设置合理的队列长度
* 尽量使用非阻塞模式（K_NO_WAIT）在中断中使用
* 确保发送和接收的消息大小匹配
* 合理设置超时值，避免线程长时间阻塞
* 考虑使用其他通信机制（如 FIFO）用于简单的数据传递

通过合理使用消息队列，可以构建高效、可靠的线程间通信系统，确保数据的正确传递和处理。