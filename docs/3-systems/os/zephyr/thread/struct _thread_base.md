struct thread_base 结构体是 Zephyr 调度系统的核心数据结构，它：
1. 作为线程调度的"身份证"，记录线程所有调度相关信息
2. 使调度器能快速判断线程状态、优先级和可抢占性
3. 支持多种调度策略（优先级、时间片、截止时间等）
4. 为多核系统提供CPU亲和性和负载均衡支持
5. 为系统调试和性能分析提供数据基础
```c
struct _thread_base {
    //## 调度队列管理
    /* this thread's entry in a ready/wait queue */
    // 线程在就绪/等待队列中的节点。使用 union 实现两种队列结构：用于实现线程在不同调度队列中的管理
    union {
        sys_dnode_t qnode_dlist;//双向链表节点，用于简单队列
        struct rbnode qnode_rb;//红黑树节点，用于优先级排序的高级队列
    };
    /* wait queue on which the thread is pended (needed only for
     * trees, not dumb lists)
     */
     //指向线程当前挂起的等待队列，用于跟踪线程正在等待哪个内核对象（如信号量、互斥量）
    _wait_q_t *pended_on;
    //## 线程基本属性
    /* user facing 'thread options'; values defined in include/kernel.h */
    //用户可设置的线程选项位掩码，定义在 `kernel.h` 中，如 `K_ESSENTIAL`（关键线程）
    uint8_t user_options;
    /* thread state */
    // 线程当前状态，如 `K_READY`（就绪）、`K_BLOCKED`（阻塞）等
    uint8_t thread_state;
    //## 调度关键字段
    /*
     * scheduler lock count and thread priority
     *
     * These two fields control the preemptibility of a thread.
     *
     * When the scheduler is locked, sched_locked is decremented, which
     * means that the scheduler is locked for values from 0xff to 0x01. A
     * thread is coop if its prio is negative, thus 0x80 to 0xff when
     * looked at the value as unsigned.
     *
     * By putting them end-to-end, this means that a thread is
     * non-preemptible if the bundled value is greater than or equal to
     * 0x0080.
     */
    union {
        struct {
#ifdef CONFIG_BIG_ENDIAN
            uint8_t sched_locked;//调度器锁定计数器，非零时线程不可被抢占
            int8_t prio;//线程优先级，负值表示协作式(cooperative)线程，范围为 -1 到 -CONFIG_NUM_COOP_PRIORITIES
#else /* Little Endian */
            int8_t prio;
            uint8_t sched_locked;
#endif /* CONFIG_BIG_ENDIAN */
        };
        uint16_t preempt;//通过 `preempt` 整体值可快速判断线程是否可抢占（值 ≥ 0x0080 时不可抢占）
    };
    //## 高级调度特性
#ifdef CONFIG_SCHED_DEADLINE
	// 用于基于截止时间的调度算法
    int prio_deadline;
#endif /* CONFIG_SCHED_DEADLINE */
	//相同优先级线程间的排序键，实现先来先服务(FCFS)策略
    uint32_t order_key;
    //## SMP 多核支持
#ifdef CONFIG_SMP
    /* True for the per-CPU idle threads */
    uint8_t is_idle;//标识是否为CPU的空闲线程
    /* CPU index on which thread was last run */
    uint8_t cpu;//线程上次运行的CPU索引
    /* Recursive count of irq_lock() calls */
    uint8_t global_lock_count;//中断锁定递归计数
#endif /* CONFIG_SMP */

#ifdef CONFIG_SCHED_CPU_MASK
    /* "May run on" bits for each CPU */
#if CONFIG_MP_MAX_NUM_CPUS <= 8
    uint8_t cpu_mask;// 指示线程可运行的CPU位掩码，支持CPU亲和性设置
#else
    uint16_t cpu_mask;
#endif /* CONFIG_MP_MAX_NUM_CPUS */
#endif /* CONFIG_SCHED_CPU_MASK */
	//## 运行时管理
    /* data returned by APIs */
    void *swap_data;//线程切换时保存的特定数据

#ifdef CONFIG_SYS_CLOCK_EXISTS
    /* this thread's entry in a timeout queue */
    struct _timeout timeout;//超时管理结构，用于实现带超时的阻塞操作
#endif /* CONFIG_SYS_CLOCK_EXISTS */

#ifdef CONFIG_TIMESLICE_PER_THREAD
	//时间片轮转调度相关字段
    int32_t slice_ticks;
    k_thread_timeslice_fn_t slice_expired;
    void *slice_data;
#endif /* CONFIG_TIMESLICE_PER_THREAD */

#ifdef CONFIG_SCHED_THREAD_USAGE
	//线程CPU使用统计信息，用于性能分析
    struct k_cycle_stats  usage;   /* Track thread usage statistics */
#endif /* CONFIG_SCHED_THREAD_USAGE */
};
```
# `qnode_dlist`/`qnode_rb` Union 详解

```c
    union {
        sys_dnode_t qnode_dlist;//双向链表节点，用于简单队列
        struct rbnode qnode_rb;//红黑树节点，用于优先级排序的高级队列
    };
```
**调试技巧**：查看 `thread->base.qnode_dlist.next` 或 `thread->base.qnode_rb.left` 可了解线程在队列中的位置
# `qnode_dlist`/`qnode_rb` Union 详解

这是 Zephyr RTOS 调度系统中非常关键的设计，用于实现线程在不同调度队列中的管理。以下是详细解释：

## 1. 设计目的

- **内存优化**：通过 union 实现两种不同队列结构的共享存储，避免同时保留两种队列节点浪费内存
- **调度灵活性**：支持系统根据配置选择最适合的队列实现方式
- **性能权衡**：在简单场景使用链表(O(n))，在复杂场景使用红黑树(O(log n))

## 2. 使用场景对比

| 特性   | `qnode_dlist` (双向链表)           | `qnode_rb` (红黑树)               |
| ---- | ------------------------------ | ------------------------------ |
| 适用配置 | 未定义 `CONFIG_SYS_CLOCK_NO_WAIT` | 定义了 `CONFIG_SYS_CLOCK_NO_WAIT` |
| 性能特点 | 插入/删除 O(1)，查找 O(n)             | 插入/删除/查找 O(log n)              |
| 适用场景 | 小规模系统、简单调度需求                   | 大规模线程、需要精确优先级排序                |
| 内存占用 | 较小 (仅需前后指针)                    | 稍大 (需额外颜色位和父指针)                |

## 3. 实际工作流程

当线程状态变化时，系统会根据当前配置选择适当的队列操作：

```c
// 线程变为就绪状态时
if (IS_ENABLED(CONFIG_SYS_CLOCK_NO_WAIT)) {
    // 使用红黑树
    sys_rbtree_insert(&z_ready_q_rb, &thread->base.qnode_rb, NULL, NULL);
} else {
    // 使用双向链表
    sys_dlist_append(&z_ready_q.q, &thread->base.qnode_dlist);
}

// 从就绪队列获取最高优先级线程
if (IS_ENABLED(CONFIG_SYS_CLOCK_NO_WAIT)) {
    rbnode = sys_rbtree_min(&z_ready_q_rb);
    thread = CONTAINER_OF(rbnode, struct k_thread, base.qnode_rb);
} else {
    node = sys_dlist_peek_head(&z_ready_q.q);
    thread = CONTAINER_OF(node, struct k_thread, base.qnode_dlist);
}
```

## 4. 关键实现细节

- **动态选择机制**：通过 Kconfig 配置决定使用哪种队列，编译时确定，运行时无开销
- **统一访问接口**：调度器通过条件编译提供统一的 API，上层代码无需关心具体实现
- **CONTAINER_OF 宏**：Zephyr 使用此宏从队列节点反向获取线程控制块指针
  ```c
  // 从队列节点获取线程指针
  thread = CONTAINER_OF(node, struct k_thread, base.qnode_dlist);
  ```

