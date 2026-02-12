调度器模块
============

调度器模块是 Zephyr RTOS 的核心组件，负责线程的调度、优先级管理、状态转换和上下文切换。本模块实现了高效的实时调度算法，支持优先级调度、时间片轮转和多处理器系统。

模块概述
--------

**功能和作用**

调度器模块 (`sched.c`) 提供以下核心功能：

* 线程优先级调度
* 线程状态管理
* 等待队列管理
* 超时处理
* 上下文切换
* 调度锁管理
* 线程挂起和恢复
* 线程中止和连接
* SMP（对称多处理）支持
* 时间片轮转

**设计目标**

* 提供高效的实时调度算法
* 支持优先级抢占
* 最小化调度延迟
* 支持多处理器系统
* 提供灵活的调度策略
* 确保线程安全

**使用场景**

* 实时控制系统
* 多任务并发执行
* 优先级敏感应用
* 多处理器系统
* 中断处理和线程通信

核心数据结构
------------

**就绪队列 (`struct _ready_q`)**

管理就绪状态的线程：

```c
struct _ready_q {
    struct _priq runq;               /* 优先级队列 */
    struct k_thread *cache;          /* 下一个要执行的线程缓存 */
};
```

**优先级队列 (`struct _priq`)**

根据调度策略不同，有多种实现：

```c
/* 简单队列实现 */
struct _priq {
    struct k_thread *head;           /* 队列头 */
};

/* 可扩展实现（红黑树） */
struct _priq_rb {
    struct rb_tree tree;             /* 红黑树 */
};

/* 多队列实现 */
struct _priq_multi {
    struct k_thread *queues[CONFIG_NUM_PRIORITIES]; /* 每个优先级一个队列 */
};
```

**等待队列 (`struct _wait_q`)**

管理等待状态的线程：

```c
struct _wait_q {
    struct _priq waitq;              /* 优先级队列 */
    uint8_t flags;                    /* 标志 */
};
```

**CPU 结构 (`struct _cpu`)**

管理 CPU 相关的调度信息：

```c
struct _cpu {
    struct k_thread *current;        /* 当前运行线程 */
    struct k_thread *idle_thread;    /* 空闲线程 */
    struct _ready_q ready_q;         /* 就绪队列 */
    bool swap_ok;                    /* 交换允许标志 */
    uint8_t id;                      /* CPU ID */
    /* 其他字段... */
};
```

**线程基础信息 (`struct _thread_base`)**

包含线程的调度相关信息：

```c
struct _thread_base {
    uint8_t thread_state;             /* 线程状态 */
    uint8_t user_options;             /* 用户选项 */
    int prio;                         /* 优先级 */
    uint8_t sched_locked;             /* 调度锁计数 */
    struct k_timeout timeout;         /* 超时信息 */
    void *pended_on;                  /* 等待对象 */
#ifdef CONFIG_TIMESLICE_PER_THREAD
    uint32_t slice_ticks;             /* 时间片刻度 */
    struct k_thread *slice_expired;   /* 时间片过期线程 */
#endif
#ifdef CONFIG_SCHED_DEADLINE
    int prio_deadline;                /* 截止期限优先级 */
#endif
};
```

实现原理
--------

**调度算法**

Zephyr 调度器支持多种调度算法：

1. **优先级抢占调度**
   - 高优先级线程可以抢占低优先级线程
   - 基于优先级队列实现
   - 支持 256 个优先级级别

2. **时间片轮转**
   - 相同优先级线程之间的时间片轮转
   - 可配置的时间片大小
   - 防止单个线程长时间占用 CPU

3. **截止期限调度**
   - 基于截止期限的调度
   - 适用于周期性实时任务
   - 优先级根据截止期限动态调整

**调度策略**

调度器支持三种主要调度策略：

1. **简单队列 (`CONFIG_SCHED_SIMPLE`)**
   - 适用于单处理器系统
   - 简单高效
   - 基于链表的优先级队列

2. **可扩展队列 (`CONFIG_SCHED_SCALABLE`)**
   - 适用于多处理器系统
   - 基于红黑树的优先级队列
   - 支持大量线程

3. **多队列 (`CONFIG_SCHED_MULTIQ`)**
   - 每个优先级一个队列
   - 快速优先级查找
   - 适用于优先级数量较少的系统

**上下文切换**

上下文切换是调度器的核心操作：

1. **保存当前线程上下文**
   - 保存 CPU 寄存器
   - 保存栈指针
   - 保存程序计数器

2. **恢复下一个线程上下文**
   - 恢复 CPU 寄存器
   - 恢复栈指针
   - 恢复程序计数器

3. **SMP 上下文切换**
   - 跨处理器唤醒
   - 处理器间中断 (IPI)
   - 线程迁移

**线程状态管理**

线程状态转换：

1. **就绪状态 (`_THREAD_QUEUED`)**
   - 线程可以被调度执行
   - 位于就绪队列中

2. **等待状态 (`_THREAD_PENDING`)**
   - 线程等待某个事件
   - 位于等待队列中

3. **挂起状态 (`_THREAD_SUSPENDED`)**
   - 线程被显式挂起
   - 不参与调度

4. **运行状态**
   - 线程正在执行
   - 不在任何队列中

5. **终止状态 (`_THREAD_DEAD`)**
   - 线程已终止
   - 等待被清理

API 参考
--------

**调度控制**

* `k_sched_lock()` - 锁定调度器
  * 参数：无
  * 返回：无
  * 用途：防止线程被抢占

* `k_sched_unlock()` - 解锁调度器
  * 参数：无
  * 返回：无
  * 用途：允许线程被抢占

* `k_yield()` - 让出 CPU
  * 参数：无
  * 返回：无
  * 用途：当前线程让出 CPU 给同优先级线程

* `k_can_yield()` - 检查是否可以让出 CPU
  * 参数：无
  * 返回：是否可以让出 CPU
  * 用途：检查当前线程是否可以调用 k_yield()

**线程状态操作**

* `k_thread_suspend()` - 挂起线程
  * 参数：线程 ID
  * 返回：无
  * 用途：暂停线程执行

* `k_thread_resume()` - 恢复线程
  * 参数：线程 ID
  * 返回：无
  * 用途：恢复被挂起的线程

* `k_thread_abort()` - 中止线程
  * 参数：线程 ID
  * 返回：无
  * 用途：强制终止线程

* `k_thread_join()` - 等待线程结束
  * 参数：线程 ID、超时
  * 返回：0 表示成功
  * 用途：等待目标线程终止

**线程优先级**

* `k_thread_priority_set()` - 设置线程优先级
  * 参数：线程 ID、新优先级
  * 返回：无
  * 用途：动态调整线程优先级

* `k_thread_priority_get()` - 获取线程优先级
  * 参数：线程 ID
  * 返回：线程优先级
  * 用途：获取线程当前优先级

**截止期限调度**

* `k_thread_deadline_set()` - 设置线程截止期限
  * 参数：线程 ID、截止期限（周期）
  * 返回：无
  * 用途：为截止期限调度设置线程周期

**睡眠和延迟**

* `k_sleep()` - 线程睡眠
  * 参数：超时
  * 返回：剩余睡眠时间
  * 用途：让线程睡眠指定时间

* `k_usleep()` - 线程微秒级睡眠
  * 参数：微秒数
  * 返回：剩余睡眠微秒数
  * 用途：高精度睡眠

* `k_msleep()` - 线程毫秒级睡眠
  * 参数：毫秒数
  * 返回：无
  * 用途：毫秒级睡眠

**唤醒操作**

* `k_wakeup()` - 唤醒线程
  * 参数：线程 ID
  * 返回：无
  * 用途：唤醒被挂起或睡眠的线程

**调度查询**

* `k_sched_current_thread_query()` - 查询当前运行线程
  * 参数：无
  * 返回：当前线程 ID
  * 用途：获取当前正在运行的线程

性能特性
--------

**时间复杂度**

* **优先级队列操作**
  - 简单队列：O(n) - 线性查找
  - 可扩展队列：O(log n) - 红黑树操作
  - 多队列：O(1) - 直接索引

* **调度决策**
  - 单处理器：O(1) - 缓存机制
  - 多处理器：O(1) - 每个 CPU 独立决策

* **上下文切换**
  - 单处理器：约 100-500 时钟周期
  - 多处理器：约 500-1000 时钟周期

**内存开销**

* **就绪队列**：约 8-16 字节/CPU
* **优先级队列**：
  - 简单队列：约 4 字节
  - 可扩展队列：约 16 字节
  - 多队列：约 4 * CONFIG_NUM_PRIORITIES 字节
* **等待队列**：约 8-16 字节

**并发性能**

* **单处理器**：无竞争，性能优异
* **双处理器**：低竞争，性能良好
* **多处理器**：中等竞争，使用自旋锁保护

**调度延迟**

* **最坏情况**：约 1-10 微秒
* **平均情况**：约 0.1-1 微秒
* **影响因素**：
  - 调度策略
  - 处理器速度
  - 线程数量
  - 优先级分布

内部实现细节
------------

**调度器初始化**

调度器初始化的核心实现：

```c
void z_sched_init(void)
{
    /* 初始化就绪队列 */
#ifdef CONFIG_SCHED_CPU_MASK_PIN_ONLY
    for (int i = 0; i < CONFIG_MP_MAX_NUM_CPUS; i++) {
        init_ready_q(&_kernel.cpus[i].ready_q);
    }
#else
    init_ready_q(&_kernel.ready_q);
#endif
}
```

**线程调度**

调度器的核心逻辑：

1. **选择下一个线程** (`next_up()`)
   - 从就绪队列中选择最高优先级线程
   - 考虑 SMP 和元中断情况
   - 返回下一个要执行的线程

2. **更新调度缓存** (`update_cache()`)
   - 更新下一个要执行的线程缓存
   - 处理时间片
   - 处理元中断抢占

3. **上下文切换** (`z_swap()`)
   - 保存当前线程上下文
   - 恢复下一个线程上下文
   - 处理 SMP 情况

**优先级队列实现**

根据配置不同，有三种实现：

1. **简单队列** (`CONFIG_SCHED_SIMPLE`)
   - 基于链表
   - 适用于线程数量较少的系统
   - 时间复杂度：O(n)

2. **可扩展队列** (`CONFIG_SCHED_SCALABLE`)
   - 基于红黑树
   - 适用于线程数量较多的系统
   - 时间复杂度：O(log n)

3. **多队列** (`CONFIG_SCHED_MULTIQ`)
   - 每个优先级一个队列
   - 适用于优先级数量较少的系统
   - 时间复杂度：O(1)

**SMP 支持**

多处理器系统的调度实现：

1. **处理器间中断 (IPI)**
   - 用于跨处理器唤醒
   - 用于同步调度决策

2. **线程亲和性**
   - 支持线程绑定到特定 CPU
   - 支持线程在 CPU 之间迁移

3. **调度决策**
   - 每个 CPU 独立做调度决策
   - 共享就绪队列或每个 CPU 有独立队列

**时间片轮转**

相同优先级线程的时间片轮转：

1. **时间片配置**
   - 全局时间片大小：`CONFIG_TIMESLICE_SIZE`
   - 每个线程可单独设置时间片

2. **时间片管理**
   - 线程开始执行时重置时间片
   - 时间片到期时切换到同优先级下一个线程

使用示例
--------

**优先级调度示例**

```c
#include <zephyr/kernel.h>

K_THREAD_STACK_DEFINE(high_prio_stack, 1024);
K_THREAD_STACK_DEFINE(low_prio_stack, 1024);

struct k_thread high_prio_thread;
struct k_thread low_prio_thread;

void high_prio_entry(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("High priority thread running\n");
        k_sleep(K_SECONDS(1));
    }
}

void low_prio_entry(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("Low priority thread running\n");
        k_busy_wait(500000); // 忙等待 500ms
    }
}

void main(void)
{
    /* 高优先级线程 (优先级 5) */
    k_thread_create(&high_prio_thread, high_prio_stack,
                   K_THREAD_STACK_SIZEOF(high_prio_stack),
                   high_prio_entry, NULL, NULL, NULL,
                   5, 0, K_NO_WAIT);
    
    /* 低优先级线程 (优先级 10) */
    k_thread_create(&low_prio_thread, low_prio_stack,
                   K_THREAD_STACK_SIZEOF(low_prio_stack),
                   low_prio_entry, NULL, NULL, NULL,
                   10, 0, K_NO_WAIT);
    
    while (1) {
        k_sleep(K_FOREVER);
    }
}
```

**调度锁示例**

```c
#include <zephyr/kernel.h>

K_THREAD_STACK_DEFINE(thread_stack, 1024);
struct k_thread thread_data;

void thread_entry(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("Thread running\n");
        
        /* 锁定调度器，防止被抢占 */
        k_sched_lock();
        printk("Scheduler locked - critical section\n");
        k_busy_wait(1000000); // 临界区 1s
        k_sched_unlock();
        
        printk("Scheduler unlocked\n");
        k_sleep(K_SECONDS(1));
    }
}

void main(void)
{
    k_thread_create(&thread_data, thread_stack,
                   K_THREAD_STACK_SIZEOF(thread_stack),
                   thread_entry, NULL, NULL, NULL,
                   7, 0, K_NO_WAIT);
    
    while (1) {
        k_sleep(K_FOREVER);
    }
}
```

**时间片轮转示例**

```c
#include <zephyr/kernel.h>

K_THREAD_STACK_DEFINE(thread1_stack, 1024);
K_THREAD_STACK_DEFINE(thread2_stack, 1024);

struct k_thread thread1;
struct k_thread thread2;

void thread1_entry(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("Thread 1 running\n");
        k_busy_wait(500000); // 500ms
    }
}

void thread2_entry(void *p1, void *p2, void *p3)
{
    while (1) {
        printk("Thread 2 running\n");
        k_busy_wait(500000); // 500ms
    }
}

void main(void)
{
    /* 两个线程具有相同优先级 */
    k_thread_create(&thread1, thread1_stack,
                   K_THREAD_STACK_SIZEOF(thread1_stack),
                   thread1_entry, NULL, NULL, NULL,
                   7, 0, K_NO_WAIT);
    
    k_thread_create(&thread2, thread2_stack,
                   K_THREAD_STACK_SIZEOF(thread2_stack),
                   thread2_entry, NULL, NULL, NULL,
                   7, 0, K_NO_WAIT);
    
    while (1) {
        k_sleep(K_FOREVER);
    }
}
```

**截止期限调度示例**

```c
#include <zephyr/kernel.h>

K_THREAD_STACK_DEFINE(thread_stack, 1024);
struct k_thread thread_data;

void thread_entry(void *p1, void *p2, void *p3)
{
    /* 设置截止期限为 1000 个时钟周期 */
    k_thread_deadline_set(k_current_get(), 1000);
    
    while (1) {
        printk("Thread running with deadline\n");
        
        /* 模拟工作 */
        k_busy_wait(100000); // 100ms
        
        /* 重新设置截止期限 */
        k_thread_deadline_set(k_current_get(), 1000);
        k_sleep(K_MSEC(900)); // 确保在截止期限前完成
    }
}

void main(void)
{
    k_thread_create(&thread_data, thread_stack,
                   K_THREAD_STACK_SIZEOF(thread_stack),
                   thread_entry, NULL, NULL, NULL,
                   7, 0, K_NO_WAIT);
    
    while (1) {
        k_sleep(K_FOREVER);
    }
}
```

调试和故障排除
------------

**常见问题和解决方案**

1. **优先级反转**
   * 症状：高优先级线程被低优先级线程阻塞
   * 原因：低优先级线程持有高优先级线程需要的资源
   * 解决方案：使用优先级继承，合理设计线程优先级

2. **调度延迟过大**
   * 症状：线程不能及时响应
   * 原因：调度器被锁定时间过长，中断处理时间过长
   * 解决方案：减少临界区长度，优化中断处理

3. **线程饥饿**
   * 症状：低优先级线程长时间无法执行
   * 原因：高优先级线程持续运行
   * 解决方案：使用时间片，合理设计优先级

4. **SMP 性能问题**
   * 症状：多处理器性能不如预期
   * 原因：处理器间通信开销，锁竞争
   * 解决方案：减少共享资源，优化锁粒度

5. **时间片耗尽**
   * 症状：线程执行被意外打断
   * 原因：时间片设置过小
   * 解决方案：调整时间片大小，优化线程执行时间

**调试技巧**

1. **启用调度器日志**
   * 配置：`CONFIG_KERNEL_LOG_LEVEL_DBG=y`
   * 用途：查看调度决策和线程状态变化

2. **使用线程监控**
   * 配置：`CONFIG_THREAD_MONITOR=y`
   * 命令：`thread` (shell 命令)
   * 用途：查看所有线程的状态和信息

3. **使用调度器统计**
   * 配置：`CONFIG_SCHED_THREAD_USAGE=y`
   * API：`k_thread_runtime_stats_get()`
   * 用途：统计线程执行时间

4. **检查调度延迟**
   * 使用 `timing` 模块
   * 测量调度延迟
   * 识别性能瓶颈

5. **分析优先级反转**
   * 使用 `thread_analyzer` 模块
   * 检测优先级反转
   * 优化线程优先级

与其他模块的关系
------------

**依赖关系**

* **线程管理模块** (`thread.c`) - 提供线程创建和管理
* **等待队列模块** (`wait_q.c`) - 管理等待状态的线程
* **超时模块** (`timeout.c`) - 处理线程超时
* **架构模块** - 提供上下文切换实现
* **中断模块** - 处理中断中的调度

**交互方式**

* **线程管理** - 调度器为线程管理模块提供调度服务
* **同步原语** - 调度器与互斥锁、信号量等同步原语交互
* **中断处理** - 中断处理程序通过调度器唤醒线程
* **内存管理** - 调度器与内存管理模块协作管理线程栈

**集成建议**

* **线程池** - 考虑使用线程池减少线程创建开销
* **优先级设计** - 合理设计线程优先级体系
* **调度策略** - 根据应用需求选择合适的调度策略
* **SMP 优化** - 针对多处理器系统优化线程分配

未来发展和改进
------------

**潜在优化方向**

* **调度算法优化** - 减少调度延迟
* **SMP 性能改进** - 减少处理器间通信开销
* **能耗优化** - 考虑能耗的调度策略
* **自适应调度** - 根据系统负载自动调整调度策略
* **实时性能** - 进一步提高实时性能

**已知限制**

* **优先级数量限制** - 通常限制在 0-255 范围内
* **调度延迟** - 存在一定的调度延迟
* **SMP 扩展性** - 随着 CPU 数量增加，性能提升可能受限
* **内存开销** - 调度器本身有一定的内存开销

**未来功能规划**

* **混合调度策略** - 结合多种调度策略的优点
* **用户可配置调度器** - 允许用户自定义调度策略
* **实时调度分析工具** - 提供更详细的调度分析
* **分布式调度** - 支持分布式系统的调度
* **安全性增强** - 考虑安全性的调度策略

总结
----

调度器模块是 Zephyr RTOS 的核心组件，提供了高效的实时调度算法和灵活的调度策略。通过深入理解调度器的实现原理和使用方法，开发者可以构建高效、可靠的实时系统。

调度器模块支持多种调度策略、多处理器系统和时间片轮转，满足不同应用场景的需求。合理使用调度器 API，结合其他内核模块，可以创建性能优异的实时应用。

未来，调度器模块将继续演进，提供更高效的调度算法、更好的 SMP 支持和更丰富的调度策略，以满足不断增长的实时应用需求。
