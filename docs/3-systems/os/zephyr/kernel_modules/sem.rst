信号量模块
============

信号量模块是 Zephyr RTOS 中的一个核心同步原语，用于线程间的计数同步和资源管理。本模块实现了计数信号量，可以用于限制对共享资源的访问、实现生产者-消费者模式、以及协调多个线程的执行。

模块概述
--------

**功能和作用**

信号量模块 (`sem.c`) 提供以下核心功能：

* 计数信号量的初始化、获取和释放
* 支持设置信号量计数上限
* 支持超时机制
* 支持在中断上下文中使用（非阻塞模式）
* 支持轮询事件
* 线程安全的实现

**设计目标**

* 提供简单易用的信号量 API
* 支持计数和二值信号量
* 提供超时机制，避免线程无限期等待
* 高效的实现，最小化同步开销
* 线程安全，支持多线程并发访问
* 支持在中断上下文中使用

**使用场景**

* 限制对共享资源的访问（如硬件设备、内存缓冲区）
* 实现生产者-消费者模式
* 协调多个线程的执行顺序
* 实现信号通知机制
* 计数资源的管理
* 中断处理程序与线程的通信

核心数据结构
------------

**信号量结构体 (`struct k_sem`)**

信号量的核心数据结构：

```c
struct k_sem {
    unsigned int count;               /* 当前计数 */
    unsigned int limit;               /* 计数上限 */
    _wait_q_t wait_q;                 /* 等待队列 */
#ifdef CONFIG_POLL
    struct k_poll_event *poll_events;  /* 轮询事件列表 */
#endif
#ifdef CONFIG_OBJ_CORE_SEM
    struct k_obj_core obj_core;       /* 对象核心 */
#endif
};
```

**字段说明**

* `count` - 当前信号量计数
* `limit` - 信号量计数的最大值
* `wait_q` - 等待获取信号量的线程队列
* `poll_events` - 轮询事件列表（可选）
* `obj_core` - 对象核心，用于对象管理（可选）

**等待队列 (`struct _wait_q`)**

管理等待获取信号量的线程：

```c
struct _wait_q {
    struct _priq waitq;              /* 优先级队列 */
    uint8_t flags;                    /* 标志 */
};
```

实现原理
--------

**信号量基本操作**

1. **初始化 (`k_sem_init`)**
   - 设置初始计数和计数上限
   - 初始化等待队列
   - 初始化轮询事件列表（如果启用）
   - 初始化对象核心（如果启用）

2. **释放 (`k_sem_give`)**
   - 尝试从等待队列中唤醒一个线程
   - 如果没有等待线程，增加信号量计数（不超过上限）
   - 处理轮询事件（如果启用）
   - 调度唤醒的线程

3. **获取 (`k_sem_take`)**
   - 如果信号量计数大于 0，减少计数并返回成功
   - 如果信号量计数为 0 且设置了 K_NO_WAIT，返回失败
   - 如果信号量计数为 0 且设置了超时，进入等待状态
   - 等待超时后返回失败

4. **重置 (`k_sem_reset`)**
   - 唤醒所有等待线程，返回错误
   - 重置信号量计数为 0
   - 处理轮询事件（如果启用）
   - 调度唤醒的线程

**计数信号量**

计数信号量可以用于管理有限数量的资源：

1. **资源计数** - 信号量计数表示可用资源的数量
2. **获取资源** - 线程获取信号量时，计数减少
3. **释放资源** - 线程释放信号量时，计数增加
4. **计数上限** - 防止信号量计数超过资源总数

**二值信号量**

当信号量计数上限设置为 1 时，它就变成了二值信号量：

1. **锁定状态** - 计数为 0
2. **解锁状态** - 计数为 1
3. **互斥访问** - 同一时间只有一个线程可以获取信号量
4. **信号通知** - 用于线程间的信号通知

**超时机制**

支持设置超时，避免线程无限期等待：

1. **超时参数** - 支持 K_NO_WAIT, K_FOREVER, 和具体的时间值
2. **超时处理** - 超时后从等待队列中移除线程
3. **返回值** - 超时后返回 -EBUSY

**中断安全**

支持在中断上下文中使用（非阻塞模式）：

1. **中断安全** - `k_sem_give()` 可以在中断中使用
2. **非阻塞** - 在中断中只能使用 `k_sem_take()` 的 K_NO_WAIT 模式
3. **中断到线程通信** - 中断处理程序可以通过释放信号量通知线程

API 参考
--------

**信号量管理**

* `k_sem_init()` - 初始化信号量
  * 参数：信号量指针、初始计数、计数上限
  * 返回：0 表示成功，-EINVAL 表示参数无效
  * 用途：初始化一个信号量，设置初始计数和上限
  * 示例：
    ```c
    struct k_sem my_sem;
    k_sem_init(&my_sem, 0, 5); // 初始计数为 0，上限为 5
    ```

* `k_sem_give()` - 释放信号量
  * 参数：信号量指针
  * 返回：无
  * 用途：增加信号量计数，或唤醒等待的线程
  * 示例：
    ```c
    k_sem_give(&my_sem); // 释放信号量
    ```

* `k_sem_take()` - 获取信号量
  * 参数：信号量指针、超时
  * 返回：0 表示成功，-EBUSY 表示忙，-EAGAIN 表示超时
  * 用途：获取信号量，进入临界区
  * 示例：
    ```c
    if (k_sem_take(&my_sem, K_FOREVER) == 0) {
        // 临界区代码
        use_shared_resource();
        k_sem_give(&my_sem);
    }
    ```

* `k_sem_reset()` - 重置信号量
  * 参数：信号量指针
  * 返回：无
  * 用途：重置信号量计数为 0，唤醒所有等待线程
  * 示例：
    ```c
    k_sem_reset(&my_sem); // 重置信号量
    ```

* `k_sem_count_get()` - 获取信号量计数
  * 参数：信号量指针
  * 返回：当前信号量计数
  * 用途：获取当前可用的资源数量
  * 示例：
    ```c
    unsigned int count = k_sem_count_get(&my_sem);
    printk("Semaphore count: %u\n", count);
    ```

**静态定义**

* `K_SEM_DEFINE()` - 静态定义信号量
  * 参数：信号量名称、初始计数、计数上限
  * 用途：在编译时静态定义一个信号量
  * 示例：
    ```c
    K_SEM_DEFINE(my_sem, 0, 1); // 二值信号量，初始为 0
    ```

性能特性
--------

**时间复杂度**

* **初始化**：O(1) - 常数时间操作
* **释放**：
  - 无等待线程：O(1)
  - 有等待线程：O(1) + 线程调度开销
* **获取**：
  - 非阻塞：O(1)
  - 阻塞：O(1) + 线程调度开销
* **重置**：O(n) - n 是等待线程数量

**内存开销**

* **信号量结构体**：约 12-24 字节（取决于配置）
* **等待队列**：约 8-16 字节
* **每个等待线程**：约 4 字节（队列节点）

**并发性能**

* **无竞争场景**：非常高效，几乎无开销
* **轻度竞争**：性能良好，开销主要来自线程切换
* **重度竞争**：性能下降，频繁的线程切换

**影响因素**

* **线程优先级**：高优先级线程会先被唤醒
* **竞争程度**：竞争越激烈，性能越低
* **处理器速度**：处理器速度越快，同步开销越小
* **超时设置**：超时检查会增加一些开销

**优化建议**

* 尽量使用非阻塞模式（K_NO_WAIT）在中断中使用
* 减少在持有信号量时的执行时间
* 合理设置信号量计数上限
* 避免在中断中长时间持有信号量
* 考虑使用其他同步原语（如互斥锁）用于互斥访问

内部实现细节
------------

**信号量初始化**

信号量初始化的核心实现：

```c
int z_impl_k_sem_init(struct k_sem *sem, unsigned int initial_count, unsigned int limit)
{
    /* 检查参数有效性 */
    if (limit == 0U || initial_count > limit) {
        return -EINVAL;
    }
    
    sem->count = initial_count;    /* 设置初始计数 */
    sem->limit = limit;            /* 设置计数上限 */
    
    z_waitq_init(&sem->wait_q);    /* 初始化等待队列 */
    
#ifdef CONFIG_POLL
    sys_dlist_init(&sem->poll_events); /* 初始化轮询事件 */
#endif
    
    k_object_init(sem);            /* 初始化对象 */
    
#ifdef CONFIG_OBJ_CORE_SEM
    k_obj_core_init_and_link(K_OBJ_CORE(sem), &obj_type_sem); /* 初始化对象核心 */
#endif
    
    return 0;
}
```

**信号量释放**

信号量释放的核心实现：

```c
void z_impl_k_sem_give(struct k_sem *sem)
{
    k_spinlock_key_t key = k_spin_lock(&lock);
    struct k_thread *thread;
    bool resched = true;
    
    /* 尝试从等待队列中唤醒一个线程 */
    thread = z_unpend_first_thread(&sem->wait_q);
    
    if (thread != NULL) {
        /* 有等待线程，唤醒它 */
        arch_thread_return_value_set(thread, 0);
        z_ready_thread(thread);
    } else {
        /* 没有等待线程，增加计数（不超过上限） */
        sem->count += (sem->count != sem->limit) ? 1U : 0U;
        resched = handle_poll_events(sem); /* 处理轮询事件 */
    }
    
    /* 调度唤醒的线程 */
    if (resched) {
        z_reschedule(&lock, key);
    } else {
        k_spin_unlock(&lock, key);
    }
}
```

**信号量获取**

信号量获取的核心实现：

```c
int z_impl_k_sem_take(struct k_sem *sem, k_timeout_t timeout)
{
    k_spinlock_key_t key = k_spin_lock(&lock);
    int ret;
    
    /* 快速路径：如果计数大于 0，直接获取 */
    if (sem->count > 0U) {
        sem->count--;
        k_spin_unlock(&lock, key);
        ret = 0;
        return ret;
    }
    
    /* 非阻塞模式：直接返回失败 */
    if (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) {
        k_spin_unlock(&lock, key);
        ret = -EBUSY;
        return ret;
    }
    
    /* 阻塞模式：进入等待队列 */
    ret = z_pend_curr(&lock, key, &sem->wait_q, timeout);
    
    return ret;
}
```

**信号量重置**

信号量重置的核心实现：

```c
void z_impl_k_sem_reset(struct k_sem *sem)
{
    struct k_thread *thread;
    k_spinlock_key_t key = k_spin_lock(&lock);
    
    /* 唤醒所有等待线程，返回错误 */
    while (true) {
        thread = z_unpend_first_thread(&sem->wait_q);
        if (thread == NULL) {
            break;
        }
        arch_thread_return_value_set(thread, -EAGAIN);
        z_ready_thread(thread);
    }
    
    sem->count = 0; /* 重置计数为 0 */
    
    handle_poll_events(sem); /* 处理轮询事件 */
    
    z_reschedule(&lock, key); /* 调度唤醒的线程 */
}
```

**轮询事件处理**

轮询事件的处理：

```c
static inline bool handle_poll_events(struct k_sem *sem)
{
#ifdef CONFIG_POLL
    z_handle_obj_poll_events(&sem->poll_events, K_POLL_STATE_SEM_AVAILABLE);
    return true;
#else
    ARG_UNUSED(sem);
    return false;
#endif
}
```

使用示例
--------

**资源计数示例**

```c
#include <zephyr/kernel.h>

/* 定义信号量和共享资源 */
#define MAX_RESOURCES 3
K_SEM_DEFINE(resource_sem, MAX_RESOURCES, MAX_RESOURCES);

/* 模拟共享资源 */
void use_shared_resource(int thread_id)
{
    printk("Thread %d: using shared resource\n", thread_id);
    k_busy_wait(1000000); // 模拟使用资源 1 秒
    printk("Thread %d: releasing shared resource\n", thread_id);
}

/* 线程函数 */
void thread_func(void *p1, void *p2, void *p3)
{
    int thread_id = (int)p1;
    
    while (1) {
        printk("Thread %d: trying to acquire resource\n", thread_id);
        
        /* 获取信号量（资源） */
        if (k_sem_take(&resource_sem, K_FOREVER) == 0) {
            /* 使用资源 */
            use_shared_resource(thread_id);
            
            /* 释放信号量（资源） */
            k_sem_give(&resource_sem);
        }
        
        /* 休息一段时间 */
        k_sleep(K_SECONDS(1));
    }
}

/* 定义 5 个线程 */
K_THREAD_DEFINE(thread1_id, 1024, thread_func, (void *)1, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(thread2_id, 1024, thread_func, (void *)2, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(thread3_id, 1024, thread_func, (void *)3, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(thread4_id, 1024, thread_func, (void *)4, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(thread5_id, 1024, thread_func, (void *)5, NULL, NULL, 7, 0, 0);

void main(void)
{
    printk("Resource counting example started\n");
    printk("Maximum %d resources available\n", MAX_RESOURCES);
}
```

**生产者-消费者示例**

```c
#include <zephyr/kernel.h>

/* 定义信号量和共享缓冲区 */
#define BUFFER_SIZE 5
int buffer[BUFFER_SIZE];
int in = 0, out = 0;

/* 信号量 */
K_SEM_DEFINE(empty_sem, BUFFER_SIZE, BUFFER_SIZE); // 空槽位
K_SEM_DEFINE(full_sem, 0, BUFFER_SIZE);           // 满槽位

/* 生产者线程 */
void producer_thread(void *p1, void *p2, void *p3)
{
    int item = 0;
    
    while (1) {
        /* 等待空槽位 */
        k_sem_take(&empty_sem, K_FOREVER);
        
        /* 生产物品 */
        buffer[in] = item;
        printk("Producer: produced item %d at position %d\n", item, in);
        in = (in + 1) % BUFFER_SIZE;
        item++;
        
        /* 通知消费者 */
        k_sem_give(&full_sem);
        
        /* 模拟生产时间 */
        k_sleep(K_MSEC(500));
    }
}

/* 消费者线程 */
void consumer_thread(void *p1, void *p2, void *p3)
{
    while (1) {
        /* 等待满槽位 */
        k_sem_take(&full_sem, K_FOREVER);
        
        /* 消费物品 */
        int item = buffer[out];
        printk("Consumer: consumed item %d from position %d\n", item, out);
        out = (out + 1) % BUFFER_SIZE;
        
        /* 通知生产者 */
        k_sem_give(&empty_sem);
        
        /* 模拟消费时间 */
        k_sleep(K_MSEC(1000));
    }
}

K_THREAD_DEFINE(producer_id, 1024, producer_thread, NULL, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(consumer_id, 1024, consumer_thread, NULL, NULL, NULL, 6, 0, 0);

void main(void)
{
    printk("Producer-consumer example started\n");
    printk("Buffer size: %d\n", BUFFER_SIZE);
}
```

**二值信号量示例**

```c
#include <zephyr/kernel.h>

/* 定义二值信号量 */
K_SEM_DEFINE(binary_sem, 1, 1); // 初始为 1，上限为 1

/* 共享资源 */
int shared_counter = 0;

/* 线程函数 */
void thread_func(void *p1, void *p2, void *p3)
{
    int thread_id = (int)p1;
    
    while (1) {
        printk("Thread %d: trying to acquire semaphore\n", thread_id);
        
        /* 获取信号量（互斥访问） */
        if (k_sem_take(&binary_sem, K_FOREVER) == 0) {
            /* 临界区：修改共享资源 */
            printk("Thread %d: acquired semaphore\n", thread_id);
            shared_counter++;
            printk("Thread %d: shared_counter = %d\n", thread_id, shared_counter);
            
            /* 模拟临界区操作 */
            k_busy_wait(500000); // 500ms
            
            /* 释放信号量 */
            printk("Thread %d: releasing semaphore\n", thread_id);
            k_sem_give(&binary_sem);
        }
        
        /* 休息一段时间 */
        k_sleep(K_SECONDS(1));
    }
}

K_THREAD_DEFINE(thread1_id, 1024, thread_func, (void *)1, NULL, NULL, 7, 0, 0);
K_THREAD_DEFINE(thread2_id, 1024, thread_func, (void *)2, NULL, NULL, 7, 0, 0);

void main(void)
{
    printk("Binary semaphore example started\n");
}
```

**中断到线程通信示例**

```c
#include <zephyr/kernel.h>
#include <zephyr/drivers/gpio.h>

/* 定义信号量 */
K_SEM_DEFINE(button_sem, 0, 1);

/* 按钮设备 */
#define SW0_NODE DT_ALIAS(sw0)
static const struct gpio_dt_spec button = GPIO_DT_SPEC_GET(SW0_NODE, gpios);

/* 中断处理函数 */
static void button_pressed(const struct device *dev, struct gpio_callback *cb, uint32_t pins)
{
    printk("Interrupt: Button pressed\n");
    
    /* 释放信号量，通知线程 */
    k_sem_give(&button_sem);
}

/* 回调结构 */
static struct gpio_callback button_cb_data;

/* 事件处理线程 */
void event_thread(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("Thread: Waiting for button press...\n");
        
        /* 等待信号量 */
        k_sem_take(&button_sem, K_FOREVER);
        
        /* 处理按钮事件 */
        printk("Thread: Processing button press event\n");
        
        /* 模拟处理时间 */
        k_sleep(K_SECONDS(1));
    }
}

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

调试和故障排除
------------

**常见问题和解决方案**

1. **信号量计数错误**
   * 症状：信号量计数不符合预期
   * 原因：获取和释放的次数不匹配
   * 解决方案：确保每次获取都有对应的释放，使用 RAII 模式（如果使用 C++）

2. **线程无限期等待**
   * 症状：线程一直等待信号量
   * 原因：信号量没有被正确释放，或者计数上限设置错误
   * 解决方案：检查信号量的释放逻辑，确保计数上限设置正确

3. **中断上下文使用错误**
   * 症状：在中断中使用信号量时出错
   * 原因：在中断中使用了阻塞模式的 `k_sem_take()`
   * 解决方案：在中断中只能使用 `k_sem_give()` 或 `k_sem_take()` 的 K_NO_WAIT 模式

4. **资源耗尽**
   * 症状：信号量计数一直为 0
   * 原因：资源被占用但没有释放
   * 解决方案：检查资源释放逻辑，确保所有路径都能释放资源

5. **性能问题**
   * 症状：信号量操作导致性能下降
   * 原因：竞争激烈，或者临界区过长
   * 解决方案：减少临界区长度，避免在临界区内执行耗时操作

**调试技巧**

1. **启用信号量日志**
   * 配置：`CONFIG_KERNEL_LOG_LEVEL_DBG=y`
   * 用途：查看信号量的获取和释放操作

2. **使用线程监控**
   * 配置：`CONFIG_THREAD_MONITOR=y`
   * 命令：`thread` (shell 命令)
   * 用途：查看线程状态，包括哪些线程在等待信号量

3. **检查信号量计数**
   * 使用 `k_sem_count_get()` 打印信号量计数
   * 监控信号量的使用情况

4. **使用静态分析工具**
   * 工具：`clang-tidy`, `coverity`
   * 用途：检测潜在的信号量使用错误

5. **性能分析**
   * 配置：`CONFIG_SCHED_THREAD_USAGE=y`
   * API：`k_thread_runtime_stats_get()`
   * 用途：分析线程在等待信号量的时间

6. **信号量重置**
   * 在调试时使用 `k_sem_reset()` 重置信号量状态
   * 快速恢复到初始状态

与其他模块的关系
------------

**依赖关系**

* **调度器模块** (`sched.c`) - 提供线程调度
* **线程管理模块** (`thread.c`) - 提供线程创建和管理
* **等待队列模块** (`wait_q.c`) - 管理等待状态的线程
* **超时模块** (`timeout.c`) - 处理信号量的超时
* **轮询模块** (`poll.c`) - 处理信号量的轮询事件

**交互方式**

* **调度器** - 信号量通过调度器唤醒和调度线程
* **线程管理** - 信号量与线程管理模块协作管理线程状态
* **等待队列** - 信号量使用等待队列管理等待的线程
* **超时处理** - 信号量使用超时模块处理获取超时

**集成建议**

* **与互斥锁配合使用**
  - 互斥锁用于互斥访问
  - 信号量用于资源计数和事件通知

* **与事件模块配合使用**
  - 事件用于多事件等待
  - 信号量用于计数和资源管理

* **与内存管理配合使用**
  - 信号量用于内存池的资源计数
  - 控制内存分配和释放

* **与设备驱动配合使用**
  - 信号量用于设备访问控制
  - 中断处理程序与线程的通信

未来发展和改进
------------

**潜在优化方向**

* **无锁实现** - 使用原子操作实现无锁信号量，减少同步开销
* **每对象锁** - 使用每对象锁代替系统级锁，提高并发性能
* **自适应自旋** - 在竞争不激烈时使用自旋，减少线程切换
* **优先级继承** - 为信号量添加优先级继承，防止优先级反转
* **批量操作** - 支持一次性释放多个信号量

**已知限制**

* **系统级锁** - 当前使用系统级锁，影响并发性能
* **优先级反转** - 信号量不支持优先级继承，可能导致优先级反转
* **计数溢出** - 信号量计数使用 unsigned int，有溢出风险
* **无公平性保证** - 不保证线程获取信号量的顺序

**未来功能规划**

* **优先级继承信号量** - 支持优先级继承，防止优先级反转
* **可取消信号量** - 支持取消正在等待的信号量获取
* **限时信号量** - 支持信号量的自动过期
* **统计信息** - 提供信号量使用统计，如等待时间、获取次数等
* **调试增强** - 增加死锁检测和使用错误检测

总结
----

信号量模块是 Zephyr RTOS 中一个重要的同步原语，提供了灵活的计数同步机制。它可以用于资源管理、线程协调、事件通知等多种场景，是构建复杂并发系统的基础组件。

信号量的核心特性包括：

* 支持计数和二值信号量
* 提供超时机制，避免线程无限期等待
* 支持在中断上下文中使用（非阻塞模式）
* 线程安全的实现
* 简单易用的 API

在使用信号量时，应注意以下最佳实践：

* 确保每次获取都有对应的释放
* 减少在持有信号量时的执行时间
* 在中断中只能使用非阻塞模式
* 合理设置信号量计数上限
* 考虑使用其他同步原语（如互斥锁）用于互斥访问

通过合理使用信号量，可以构建高效、可靠的并发系统，确保线程间的正确同步和资源的合理分配。
