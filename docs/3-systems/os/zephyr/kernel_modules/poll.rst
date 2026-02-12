.. _poll_module:

轮询模块
########

.. contents:: 目录
   :depth: 2
   :local:

模块概述
========

轮询模块是 Zephyr RTOS 中的一个核心模块，提供了异步事件轮询机制。轮询允许线程同时等待多个事件的发生，而不需要为每个事件单独阻塞，提高了系统的响应性和资源利用率。

**主要特性：**

* 多事件等待：支持同时等待多个事件的发生
* 事件类型丰富：支持信号量、队列、消息队列、管道等多种事件类型
* 超时机制：提供可配置的等待超时
* 工作队列集成：支持在工作队列中处理轮询事件
* 线程安全：支持多线程并发访问
* 用户空间支持：可在用户模式下使用

**典型应用场景：**

* 事件驱动编程：基于事件的响应机制
* 多源数据处理：同时等待多个数据源的数据
* 网络编程：同时等待多个网络连接的事件
* 设备驱动：同时等待多个设备的事件
* 资源监控：监控多个系统资源的状态变化

核心数据结构
============

轮询模块的核心数据结构包括：

.. code-block:: c
   :caption: 轮询核心数据结构

   struct k_poll_event {
       uint32_t type;            /* 事件类型 */
       uint32_t state;           /* 事件状态 */
       int mode;                 /* 事件模式 */
       void *obj;                /* 事件对象指针 */
       struct z_poller *poller;  /* 轮询器指针 */
       sys_dnode_t _node;        /* 内部节点 */
       uintptr_t tag;            /* 用户标签 */
       uint32_t unused;           /* 未使用字段 */
   };

   struct k_poll_signal {
       unsigned int signaled;    /* 信号状态 */
       int result;               /* 信号结果 */
       sys_dlist_t poll_events;   /* 轮询事件列表 */
   };

   struct k_work_poll {
       struct k_work work;       /* 工作项 */
       k_work_handler_t real_handler; /* 实际处理函数 */
       struct z_poller poller;    /* 轮询器 */
       struct k_poll_event *events; /* 事件列表 */
       int num_events;           /* 事件数量 */
       int poll_result;          /* 轮询结果 */
       struct _timeout timeout;   /* 超时结构 */
       struct k_work_q *workq;    /* 工作队列 */
   };

**主要字段：**

* `type`：事件类型，如信号量可用、队列数据可用等
* `state`：事件状态，如就绪、取消等
* `mode`：事件模式，目前仅支持 K_POLL_MODE_NOTIFY_ONLY
* `obj`：指向事件对象的指针，如信号量、队列等
* `poller`：指向轮询器的指针
* `signaled`：信号是否被触发
* `result`：信号的结果值
* `work`：工作项，用于工作队列集成
* `real_handler`：实际的工作处理函数
* `poll_result`：轮询操作的结果

实现原理
========

轮询模块的实现基于以下核心原理：

1. **事件注册机制**

   * 线程通过 `k_poll` 注册多个事件
   * 每个事件关联到特定的内核对象（如信号量、队列等）
   * 事件按照优先级排序，优先级高的事件先被处理

2. **事件检测**

   * 轮询开始时，首先检查所有事件是否已经满足条件
   * 如果有事件满足条件，立即返回，不阻塞线程
   * 如果没有事件满足条件，将线程挂起，等待事件发生

3. **事件通知**

   * 当内核对象状态变化时（如信号量被释放、队列有数据），会触发事件通知
   * 通知机制通过 `z_handle_obj_poll_events` 函数实现
   * 通知会唤醒等待的线程或提交工作项

4. **超时处理**

   * 支持设置轮询超时时间
   * 超时后，轮询操作返回 -EAGAIN 错误
   * 对于工作队列集成，超时会触发工作项的执行

5. **工作队列集成**

   * 通过 `k_work_poll` 结构，支持在工作队列中处理轮询事件
   * 当事件发生时，会将工作项提交到工作队列
   * 工作队列线程执行实际的事件处理函数

API 参考
========

事件初始化
----------

.. function:: void k_poll_event_init(struct k_poll_event *event, uint32_t type, int mode, void *obj)

   初始化轮询事件。

   :param event: 事件指针
   :param type: 事件类型
   :param mode: 事件模式（目前仅支持 K_POLL_MODE_NOTIFY_ONLY）
   :param obj: 事件对象指针

轮询操作
--------

.. function:: int k_poll(struct k_poll_event *events, int num_events, k_timeout_t timeout)

   执行轮询操作，等待多个事件的发生。

   :param events: 事件数组指针
   :param num_events: 事件数量
   :param timeout: 超时时间
   :return: 成功返回 0，超时返回 -EAGAIN，被取消返回 -EINTR

信号操作
--------

.. function:: void k_poll_signal_init(struct k_poll_signal *sig)

   初始化轮询信号。

   :param sig: 信号指针

.. function:: void k_poll_signal_reset(struct k_poll_signal *sig)

   重置轮询信号。

   :param sig: 信号指针

.. function:: void k_poll_signal_check(struct k_poll_signal *sig, unsigned int *signaled, int *result)

   检查轮询信号的状态。

   :param sig: 信号指针
   :param signaled: 输出参数，信号是否被触发
   :param result: 输出参数，信号的结果

.. function:: int k_poll_signal_raise(struct k_poll_signal *sig, int result)

   触发轮询信号。

   :param sig: 信号指针
   :param result: 信号的结果
   :return: 成功返回 0，失败返回错误码

工作轮询操作
------------

.. function:: void k_work_poll_init(struct k_work_poll *work, k_work_handler_t handler)

   初始化工作轮询对象。

   :param work: 工作轮询对象指针
   :param handler: 工作处理函数

.. function:: int k_work_poll_submit(struct k_work_poll *work, struct k_poll_event *events, int num_events, k_timeout_t timeout)

   提交工作轮询到系统工作队列。

   :param work: 工作轮询对象指针
   :param events: 事件数组指针
   :param num_events: 事件数量
   :param timeout: 超时时间
   :return: 成功返回 0，失败返回错误码

.. function:: int k_work_poll_submit_to_queue(struct k_work_q *work_q, struct k_work_poll *work, struct k_poll_event *events, int num_events, k_timeout_t timeout)

   提交工作轮询到指定工作队列。

   :param work_q: 工作队列指针
   :param work: 工作轮询对象指针
   :param events: 事件数组指针
   :param num_events: 事件数量
   :param timeout: 超时时间
   :return: 成功返回 0，失败返回错误码

.. function:: int k_work_poll_cancel(struct k_work_poll *work)

   取消工作轮询。

   :param work: 工作轮询对象指针
   :return: 成功返回 0，失败返回错误码

性能特性
========

1. **事件处理效率**

   * 轮询机制减少了线程阻塞的次数，提高了系统的响应性
   * 多事件等待避免了为每个事件创建单独的线程
   * 事件优先级排序确保了重要事件的及时处理

2. **资源使用**

   * 轮询器结构占用内存较小，适合资源受限系统
   * 工作队列集成减少了线程上下文切换的开销
   * 事件注册机制避免了轮询操作的忙等

3. **可扩展性**

   * 支持的事件类型可扩展，可添加新的事件类型
   * 工作队列集成提供了灵活的事件处理方式
   * 支持用户空间，可用于应用程序开发

4. **超时精度**

   * 超时机制基于系统时钟，精度与系统时钟相同
   * 支持 K_NO_WAIT（立即返回）和 K_FOREVER（无限等待）

内部实现细节
============

轮询操作实现
------------

.. code-block:: c
   :caption: k_poll 实现（核心部分）
   :linenos:

   int z_impl_k_poll(struct k_poll_event *events, int num_events, k_timeout_t timeout)
   {
       int events_registered;
       k_spinlock_key_t key;
       struct z_poller *poller = &_current->poller;

       poller->is_polling = true;
       poller->mode = MODE_POLL;

       __ASSERT(!arch_is_in_isr(), "");
       __ASSERT(events != NULL, "NULL events\n");
       __ASSERT(num_events >= 0, "<0 events\n");

       SYS_PORT_TRACING_FUNC_ENTER(k_poll_api, poll, events);

       events_registered = register_events(events, num_events, poller,
                                          K_TIMEOUT_EQ(timeout, K_NO_WAIT));

       key = k_spin_lock(&lock);

       /* 检查是否有事件已经满足条件 */
       if (!poller->is_polling) {
           clear_event_registrations(events, events_registered, key);
           k_spin_unlock(&lock, key);

           SYS_PORT_TRACING_FUNC_EXIT(k_poll_api, poll, events, 0);

           return 0;
       }

       poller->is_polling = false;

       if (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) {
           k_spin_unlock(&lock, key);

           SYS_PORT_TRACING_FUNC_EXIT(k_poll_api, poll, events, -EAGAIN);

           return -EAGAIN;
       }

       static _wait_q_t wait_q = Z_WAIT_Q_INIT(&wait_q);

       int swap_rc = z_pend_curr(&lock, key, &wait_q, timeout);

       /* 清除所有事件注册 */
       key = k_spin_lock(&lock);
       clear_event_registrations(events, events_registered, key);
       k_spin_unlock(&lock, key);

       SYS_PORT_TRACING_FUNC_EXIT(k_poll_api, poll, events, swap_rc);

       return swap_rc;
   }

**实现分析：**

1. 初始化轮询器状态
2. 注册事件，检查是否有事件已经满足条件
3. 如果有事件满足条件，立即返回
4. 如果是 K_NO_WAIT 模式，立即返回 -EAGAIN
5. 否则，将当前线程挂起，等待事件发生或超时
6. 当事件发生或超时时，清除事件注册并返回

事件通知实现
------------

.. code-block:: c
   :caption: z_handle_obj_poll_events 实现
   :linenos:

   void z_handle_obj_poll_events(sys_dlist_t *events, uint32_t state)
   {
       struct k_poll_event *poll_event;
       k_spinlock_key_t key = k_spin_lock(&lock);

       poll_event = (struct k_poll_event *)sys_dlist_get(events);
       if (poll_event != NULL) {
           (void) signal_poll_event(poll_event, state);
       }

       k_spin_unlock(&lock, key);
   }

**实现分析：**

1. 获取自旋锁，保护事件列表
2. 从事件列表中获取第一个事件
3. 调用 signal_poll_event 处理事件
4. 释放自旋锁

工作轮询实现
------------

.. code-block:: c
   :caption: k_work_poll_submit_to_queue 实现（核心部分）
   :linenos:

   int k_work_poll_submit_to_queue(struct k_work_q *work_q, struct k_work_poll *work, struct k_poll_event *events, int num_events, k_timeout_t timeout)
   {
       int events_registered;
       k_spinlock_key_t key;

       /* 初始化工作轮询状态 */
       work->poller.is_polling = true;
       work->workq = work_q;
       work->poller.mode = MODE_NONE;

       /* 保存事件信息 */
       work->events = events;
       work->num_events = num_events;
       work->poll_result = -EINPROGRESS;

       /* 注册事件 */
       events_registered = register_events(events, num_events, &work->poller, false);

       key = k_spin_lock(&lock);
       if (work->poller.is_polling && !K_TIMEOUT_EQ(timeout, K_NO_WAIT)) {
           /* 设置超时（如果需要） */
           if (!K_TIMEOUT_EQ(timeout, K_FOREVER)) {
               z_add_timeout(&work->timeout, triggered_work_expiration_handler, timeout);
           }

           /* 设置模式为触发模式 */
           work->poller.mode = MODE_TRIGGERED;
           k_spin_unlock(&lock, key);

           return 0;
       }

       /* 处理立即返回的情况 */
       if (work->poller.is_polling) {
           work->poller.is_polling = false;
           work->poll_result = -EAGAIN;
       } else {
           work->poll_result = 0;
       }

       /* 清除事件注册 */
       clear_event_registrations(events, events_registered, key);
       k_spin_unlock(&lock, key);

       /* 提交工作项 */
       k_work_submit_to_queue(work_q, &work->work);

       return 0;
   }

**实现分析：**

1. 初始化工作轮询状态
2. 保存事件信息
3. 注册事件，检查是否有事件已经满足条件
4. 如果需要等待，设置超时并进入触发模式
5. 如果事件已经满足条件或超时，清除事件注册并提交工作项
6. 当事件发生时，会触发工作项的执行

使用示例
========

基本轮询操作
------------

.. code-block:: c
   :caption: 基本轮询操作示例

   #include <zephyr/kernel.h>

   struct k_sem sem;
   struct k_queue queue;
   struct k_poll_event events[2];

   void poll_example(void)
   {
       /* 初始化信号量和队列 */
       k_sem_init(&sem, 0, 1);
       k_queue_init(&queue);
       
       /* 初始化轮询事件 */
       k_poll_event_init(&events[0], K_POLL_TYPE_SEM_AVAILABLE, K_POLL_MODE_NOTIFY_ONLY, &sem);
       k_poll_event_init(&events[1], K_POLL_TYPE_DATA_AVAILABLE, K_POLL_MODE_NOTIFY_ONLY, &queue);
       
       /* 执行轮询，等待任一事件发生 */
       int ret = k_poll(events, 2, K_FOREVER);
       if (ret == 0) {
           /* 检查哪个事件发生了 */
           if (events[0].state & K_POLL_STATE_SEM_AVAILABLE) {
               printk("Semaphore is available\n");
               k_sem_take(&sem, K_NO_WAIT);
           }
           if (events[1].state & K_POLL_STATE_FIFO_DATA_AVAILABLE) {
               printk("Queue has data\n");
               void *data = k_queue_get(&queue, K_NO_WAIT);
               /* 处理数据 */
           }
       }
   }

轮询信号示例
------------

.. code-block:: c
   :caption: 轮询信号示例

   #include <zephyr/kernel.h>

   struct k_poll_signal signal;
   struct k_poll_event event;

   void signal_example(void)
   {
       /* 初始化信号 */
       k_poll_signal_init(&signal);
       
       /* 初始化轮询事件 */
       k_poll_event_init(&event, K_POLL_TYPE_SIGNAL, K_POLL_MODE_NOTIFY_ONLY, &signal);
       
       /* 在另一个线程中触发信号 */
       k_thread_create(NULL, NULL, 0, 
                      [](void *p) {
                          k_msleep(1000);
                          k_poll_signal_raise(&signal, 42);
                      }, NULL, NULL, NULL, 0, 0, K_NO_WAIT);
       
       /* 等待信号 */
       int ret = k_poll(&event, 1, K_FOREVER);
       if (ret == 0) {
           unsigned int signaled;
           int result;
           k_poll_signal_check(&signal, &signaled, &result);
           printk("Signal received with result: %d\n", result);
       }
   }

工作轮询示例
------------

.. code-block:: c
   :caption: 工作轮询示例

   #include <zephyr/kernel.h>

   struct k_sem sem;
   struct k_queue queue;
   struct k_poll_event events[2];
   struct k_work_poll work;

   /* 工作处理函数 */
   void work_handler(struct k_work *work_item)
   {
       struct k_work_poll *work_poll = CONTAINER_OF(work_item, struct k_work_poll, work);
       
       /* 检查轮询结果 */
       if (work_poll->poll_result == 0) {
           /* 检查哪个事件发生了 */
           if (work_poll->events[0].state & K_POLL_STATE_SEM_AVAILABLE) {
               printk("Semaphore is available\n");
               k_sem_take(&sem, K_NO_WAIT);
           }
           if (work_poll->events[1].state & K_POLL_STATE_FIFO_DATA_AVAILABLE) {
               printk("Queue has data\n");
               void *data = k_queue_get(&queue, K_NO_WAIT);
               /* 处理数据 */
           }
       } else {
           printk("Poll timed out\n");
       }
   }

   void work_poll_example(void)
   {
       /* 初始化信号量和队列 */
       k_sem_init(&sem, 0, 1);
       k_queue_init(&queue);
       
       /* 初始化工作轮询 */
       k_work_poll_init(&work, work_handler);
       
       /* 初始化轮询事件 */
       k_poll_event_init(&events[0], K_POLL_TYPE_SEM_AVAILABLE, K_POLL_MODE_NOTIFY_ONLY, &sem);
       k_poll_event_init(&events[1], K_POLL_TYPE_DATA_AVAILABLE, K_POLL_MODE_NOTIFY_ONLY, &queue);
       
       /* 提交工作轮询 */
       k_work_poll_submit(&work, events, 2, K_SECONDS(5));
       
       /* 在另一个线程中触发事件 */
       k_thread_create(NULL, NULL, 0, 
                      [](void *p) {
                          k_msleep(2000);
                          k_sem_give(&sem); /* 触发信号量事件 */
                      }, NULL, NULL, NULL, 0, 0, K_NO_WAIT);
   }

多事件超时示例
------------

.. code-block:: c
   :caption: 多事件超时示例

   #include <zephyr/kernel.h>

   struct k_sem sem1;
   struct k_sem sem2;
   struct k_poll_event events[2];

   void timeout_example(void)
   {
       /* 初始化信号量 */
       k_sem_init(&sem1, 0, 1);
       k_sem_init(&sem2, 0, 1);
       
       /* 初始化轮询事件 */
       k_poll_event_init(&events[0], K_POLL_TYPE_SEM_AVAILABLE, K_POLL_MODE_NOTIFY_ONLY, &sem1);
       k_poll_event_init(&events[1], K_POLL_TYPE_SEM_AVAILABLE, K_POLL_MODE_NOTIFY_ONLY, &sem2);
       
       /* 执行轮询，等待 3 秒 */
       int ret = k_poll(events, 2, K_SECONDS(3));
       if (ret == 0) {
           /* 事件发生 */
           printk("Event occurred\n");
       } else if (ret == -EAGAIN) {
           /* 超时 */
           printk("Poll timed out\n");
       }
   }

调试和故障排除
==============

1. **轮询超时问题**

   * 检查事件对象是否正确初始化
   * 确保有其他线程或中断会触发事件
   * 检查超时时间是否设置合理

2. **事件未触发问题**

   * 检查事件类型是否与对象类型匹配
   * 确保事件对象的状态确实发生了变化
   * 检查轮询事件的初始化参数是否正确

3. **性能问题**

   * 避免在轮询中等待过多的事件，这会增加处理开销
   * 对于频繁发生的事件，考虑使用其他机制（如回调）
   * 合理设置超时时间，避免不必要的等待

4. **工作轮询问题**

   * 确保工作队列有足够的线程处理工作项
   * 检查工作处理函数是否正确实现
   * 避免在工作处理函数中执行长时间运行的操作

与其他内核模块的集成
====================

1. **与信号量模块集成**

   * 轮询支持等待信号量的可用状态
   * 当信号量被释放时，会触发轮询事件
   * 适用于需要同时等待多个信号量的场景

2. **与队列模块集成**

   * 轮询支持等待队列的数据可用状态
   * 当队列中有数据时，会触发轮询事件
   * 适用于需要同时等待多个队列数据的场景

3. **与消息队列模块集成**

   * 轮询支持等待消息队列的数据可用状态
   * 当消息队列中有消息时，会触发轮询事件
   * 适用于需要同时等待多个消息队列消息的场景

4. **与管道模块集成**

   * 轮询支持等待管道的数据可用状态
   * 当管道中有数据时，会触发轮询事件
   * 适用于需要同时等待多个管道数据的场景

5. **与工作队列模块集成**

   * 轮询支持在工作队列中处理事件
   * 当事件发生时，会将工作项提交到工作队列
   * 适用于需要在后台处理事件的场景

未来发展方向
============

1. **性能优化**

   * 实现每个事件的锁，减少锁竞争
   * 优化事件注册和通知机制，提高处理速度
   * 实现批量事件处理，减少系统调用开销

2. **功能增强**

   * 支持更多事件类型，如定时器、文件描述符等
   * 实现事件优先级，确保重要事件的及时处理
   * 支持事件过滤和组合，提供更灵活的事件处理机制

3. **安全性增强**

   * 增加事件访问控制，防止未授权访问
   * 实现事件状态的一致性检查，防止错误状态
   * 增强用户空间的安全性，防止权限提升

4. **工具支持**

   * 开发轮询事件的调试和分析工具
   * 提供轮询性能的监控和统计
   * 集成到系统诊断和监控框架中

5. **标准化**

   * 与 POSIX poll 接口兼容，便于应用移植
   * 提供统一的事件处理接口，简化应用开发
   * 支持更广泛的设备和系统事件

总结
====

轮询模块是 Zephyr RTOS 中一个强大的事件处理机制，提供了异步、高效的多事件等待能力。通过本文档的介绍，您应该对轮询的实现原理、API 使用和性能特性有了深入的了解。

在实际应用中，需要根据具体场景选择合适的轮询方式：

* 对于需要在当前线程处理事件的场景，使用 `k_poll` 直接轮询
* 对于需要在后台处理事件的场景，使用 `k_work_poll` 结合工作队列
* 对于需要同时等待多个事件的场景，使用多事件轮询
* 对于需要超时控制的场景，设置合理的超时时间

通过合理使用轮询模块，可以有效地提高系统的响应性和资源利用率，构建更加高效、可靠的实时系统。轮询是构建事件驱动系统的重要基础组件之一。