.. _pipes_module:

管道模块
########

.. contents:: 目录
   :depth: 2
   :local:

模块概述
========

管道模块是 Zephyr RTOS 中的一个核心模块，提供了线程间通信的管道机制。管道是一种基于环形缓冲区的通信方式，支持数据的顺序传输和处理。

**主要特性：**

* 基于环形缓冲区：高效的数据存储和访问
* 双向通信：支持读写操作
* 线程安全：支持多线程并发访问
* 阻塞/非阻塞操作：可配置的读写行为
* 最小传输量：支持指定最小数据传输量
* 轮询支持：与轮询机制集成
* 内存管理：支持静态和动态内存分配

**典型应用场景：**

* 数据流式处理：如传感器数据采集和处理
* 线程间通信：如生产者-消费者模式
* 中断处理：如 ISR 与后台线程的通信
* 日志系统：如日志数据的收集和处理
* 命令处理：如命令的发送和执行

核心数据结构
============

管道模块的核心数据结构是 `struct k_pipe`：

.. code-block:: c
   :caption: 管道核心数据结构

   struct k_pipe {
       unsigned char *buffer;      /* 管道缓冲区指针 */
       size_t size;                /* 缓冲区大小 */
       size_t bytes_used;          /* 已使用字节数 */
       size_t read_index;          /* 读索引 */
       size_t write_index;         /* 写索引 */
       struct k_spinlock lock;     /* 自旋锁 */
       struct _pipe_wait_q wait_q; /* 等待队列 */
       uint32_t flags;             /* 标志位 */
   #if defined(CONFIG_POLL)
       sys_dlist_t poll_events;    /* 轮询事件列表 */
   #endif
   };

**主要字段：**

* `buffer`：指向管道缓冲区的指针
* `size`：缓冲区的大小（字节）
* `bytes_used`：当前已使用的字节数
* `read_index`：当前读位置索引
* `write_index`：当前写位置索引
* `lock`：用于保护管道操作的自旋锁
* `wait_q`：包含读者和写者的等待队列
* `flags`：管道状态标志
* `poll_events`：轮询事件列表（如果启用了轮询）

实现原理
========

管道的实现基于环形缓冲区和等待队列机制，主要包括以下几个方面：

1. **环形缓冲区管理**

   * 使用读写索引来管理环形缓冲区
   * 当索引达到缓冲区末尾时，自动回绕到开始位置
   * 通过计算读写索引的关系，确定可用空间和已使用空间

2. **数据传输机制**

   * 支持直接从写者缓冲区复制到读者缓冲区（零拷贝）
   * 当没有等待的读者时，数据先存储到管道缓冲区
   * 当管道缓冲区满时，写者会被挂起

3. **等待队列管理**

   * 维护读者和写者的等待队列
   * 当管道为空时，读者会被挂起
   * 当管道满时，写者会被挂起
   * 数据可用或空间可用时，唤醒相应的等待线程

4. **线程安全**

   * 使用自旋锁保护管道操作
   * 确保多线程并发访问的安全性
   * 支持在中断上下文中操作（非阻塞模式）

5. **轮询集成**

   * 支持轮询机制，可用于事件驱动的编程模型
   * 当管道状态变化时，通知轮询者

API 参考
========

初始化函数
----------

.. function:: void k_pipe_init(struct k_pipe *pipe, unsigned char *buffer, size_t size)

   初始化管道。

   :param pipe: 管道指针
   :param buffer: 缓冲区指针
   :param size: 缓冲区大小（字节）

.. function:: int k_pipe_alloc_init(struct k_pipe *pipe, size_t size)

   分配并初始化管道。

   :param pipe: 管道指针
   :param size: 缓冲区大小（字节）
   :return: 成功返回 0，失败返回错误码

数据写入函数
------------

.. function:: int k_pipe_put(struct k_pipe *pipe, const void *data, size_t bytes_to_write, size_t *bytes_written, size_t min_xfer, k_timeout_t timeout)

   向管道写入数据。

   :param pipe: 管道指针
   :param data: 数据缓冲区指针
   :param bytes_to_write: 要写入的字节数
   :param bytes_written: 实际写入的字节数（输出）
   :param min_xfer: 最小传输字节数
   :param timeout: 超时时间
   :return: 成功返回 0，失败返回错误码

数据读取函数
------------

.. function:: int k_pipe_get(struct k_pipe *pipe, void *data, size_t bytes_to_read, size_t *bytes_read, size_t min_xfer, k_timeout_t timeout)

   从管道读取数据。

   :param pipe: 管道指针
   :param data: 数据缓冲区指针
   :param bytes_to_read: 要读取的字节数
   :param bytes_read: 实际读取的字节数（输出）
   :param min_xfer: 最小传输字节数
   :param timeout: 超时时间
   :return: 成功返回 0，失败返回错误码

管道管理函数
------------

.. function:: void k_pipe_flush(struct k_pipe *pipe)

   清空管道中的所有数据。

   :param pipe: 管道指针

.. function:: void k_pipe_buffer_flush(struct k_pipe *pipe)

   清空管道缓冲区中的数据。

   :param pipe: 管道指针

.. function:: int k_pipe_cleanup(struct k_pipe *pipe)

   清理管道资源。

   :param pipe: 管道指针
   :return: 成功返回 0，失败返回错误码

状态查询函数
------------

.. function:: size_t k_pipe_read_avail(struct k_pipe *pipe)

   获取管道中可读取的字节数。

   :param pipe: 管道指针
   :return: 可读取的字节数

.. function:: size_t k_pipe_write_avail(struct k_pipe *pipe)

   获取管道中可写入的字节数。

   :param pipe: 管道指针
   :return: 可写入的字节数

性能特性
========

1. **数据传输效率**

   * 支持零拷贝传输（直接从写者到读者）
   * 环形缓冲区减少了数据复制
   * 最小传输量机制减少了小数据传输的开销

2. **内存使用**

   * 静态缓冲区：内存使用固定，适合资源受限系统
   * 动态缓冲区：内存使用灵活，适合不同大小的数据
   * 缓冲区大小影响最大数据吞吐量

3. **阻塞行为**

   * 阻塞模式：适合需要确保数据传输的场景
   * 非阻塞模式：适合需要立即响应的场景
   * 超时机制：提供了灵活性和响应性的平衡

4. **线程安全**

   * 自旋锁保护：确保多线程安全
   * 中断安全：支持在中断上下文中操作
   * 等待队列：高效的线程挂起和唤醒机制

内部实现细节
============

管道初始化实现
--------------

.. code-block:: c
   :caption: k_pipe_init 实现
   :linenos:

   void k_pipe_init(struct k_pipe *pipe, unsigned char *buffer, size_t size)
   {
       pipe->buffer = buffer;
       pipe->size = size;
       pipe->bytes_used = 0U;
       pipe->read_index = 0U;
       pipe->write_index = 0U;
       pipe->lock = (struct k_spinlock){};
       z_waitq_init(&pipe->wait_q.writers);
       z_waitq_init(&pipe->wait_q.readers);
       SYS_PORT_TRACING_OBJ_INIT(k_pipe, pipe);

       pipe->flags = 0;

   #if defined(CONFIG_POLL)
       sys_dlist_init(&pipe->poll_events);
   #endif /* CONFIG_POLL */
       k_object_init(pipe);

   #ifdef CONFIG_OBJ_CORE_PIPE
       k_obj_core_init_and_link(K_OBJ_CORE(pipe), &obj_type_pipe);
   #endif /* CONFIG_OBJ_CORE_PIPE */
   }

**实现分析：**

1. 初始化管道的基本字段：缓冲区指针、大小、索引等
2. 初始化自旋锁和等待队列
3. 初始化跟踪和对象系统
4. 初始化轮询事件列表（如果启用了轮询）

数据写入实现
------------

.. code-block:: c
   :caption: k_pipe_put 实现（核心部分）
   :linenos:

   int z_impl_k_pipe_put(struct k_pipe *pipe, const void *data, size_t bytes_to_write, size_t *bytes_written, size_t min_xfer, k_timeout_t timeout)
   {
       struct _pipe_desc  pipe_desc[2];
       struct _pipe_desc  isr_desc;
       struct _pipe_desc *src_desc;
       sys_dlist_t        dest_list;
       sys_dlist_t        src_list;
       size_t             bytes_can_write;
       bool               reschedule_needed = false;

       SYS_PORT_TRACING_OBJ_FUNC_ENTER(k_pipe, put, pipe, timeout);

       CHECKIF((min_xfer > bytes_to_write) || (bytes_written == NULL)) {
           return -EINVAL;
       }

       sys_dlist_init(&src_list);
       sys_dlist_init(&dest_list);

       k_spinlock_key_t key = k_spin_lock(&pipe->lock);

       /* 1. 检查是否有等待的读者 */
       bytes_can_write = pipe_waiter_list_populate(&dest_list, &pipe->wait_q.readers, bytes_to_write);

       /* 2. 检查管道缓冲区是否有空间 */
       if (pipe->bytes_used != pipe->size) {
           bytes_can_write += pipe_buffer_list_populate(&dest_list, pipe_desc, pipe->buffer, pipe->size, pipe->write_index, pipe->read_index);
       }

       /* 3. 检查是否满足最小传输量要求 */
       if ((bytes_can_write < min_xfer) && (K_TIMEOUT_EQ(timeout, K_NO_WAIT))) {
           k_spin_unlock(&pipe->lock, key);
           *bytes_written = 0U;
           return -EIO;
       }

       /* 4. 准备源描述符 */
       src_desc = k_is_in_isr() ? &isr_desc : &_current->pipe_desc;
       src_desc->buffer = (unsigned char *)data;
       src_desc->bytes_to_xfer = bytes_to_write;
       src_desc->thread = _current;
       sys_dlist_append(&src_list, &src_desc->node);

       /* 5. 执行数据写入 */
       *bytes_written = pipe_write(pipe, &src_list, &dest_list, &reschedule_needed);

       /* 6. 处理轮询事件 */
       if ((pipe->bytes_used != 0U) && (*bytes_written != 0U)) {
           handle_poll_events(pipe);
       }

       /* 7. 检查是否需要阻塞 */
       if ((*bytes_written == bytes_to_write) || (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) || ((*bytes_written >= min_xfer) && (min_xfer > 0U))) {
           if (reschedule_needed) {
               z_reschedule(&pipe->lock, key);
           } else {
               k_spin_unlock(&pipe->lock, key);
           }
           return 0;
       }

       /* 8. 阻塞等待空间可用 */
       _current->base.swap_data = src_desc;
       z_sched_wait(&pipe->lock, key, &pipe->wait_q.writers, timeout, NULL);

       /* 9. 计算实际写入的字节数 */
       *bytes_written = bytes_to_write - src_desc->bytes_to_xfer;

       return pipe_return_code(min_xfer, src_desc->bytes_to_xfer, bytes_to_write);
   }

**实现分析：**

1. 检查参数有效性
2. 初始化源和目标列表
3. 获取自旋锁
4. 检查是否有等待的读者
5. 检查管道缓冲区是否有空间
6. 检查是否满足最小传输量要求
7. 准备源描述符
8. 执行数据写入
9. 处理轮询事件
10. 检查是否需要阻塞
11. 如果需要，阻塞等待空间可用
12. 计算实际写入的字节数并返回

数据读取实现
------------

.. code-block:: c
   :caption: k_pipe_get 实现（核心部分）
   :linenos:

   int z_impl_k_pipe_get(struct k_pipe *pipe, void *data, size_t bytes_to_read, size_t *bytes_read, size_t min_xfer, k_timeout_t timeout)
   {
       k_spinlock_key_t key = k_spin_lock(&pipe->lock);

       int ret = pipe_get_internal(key, pipe, data, bytes_to_read, bytes_read, min_xfer, timeout);

       SYS_PORT_TRACING_OBJ_FUNC_EXIT(k_pipe, get, pipe, timeout, ret);

       return ret;
   }

   static int pipe_get_internal(k_spinlock_key_t key, struct k_pipe *pipe, void *data, size_t bytes_to_read, size_t *bytes_read, size_t min_xfer, k_timeout_t timeout)
   {
       sys_dlist_t         src_list;
       struct _pipe_desc   pipe_desc[2];
       struct _pipe_desc   isr_desc;
       struct _pipe_desc  *dest_desc;
       struct _pipe_desc  *src_desc;
       size_t         num_bytes_read = 0U;
       size_t         bytes_copied;
       size_t         bytes_can_read = 0U;
       bool           reschedule_needed = false;

       /* 1. 初始化源列表 */
       sys_dlist_init(&src_list);

       /* 2. 检查管道缓冲区是否有数据 */
       if (pipe->bytes_used != 0) {
           bytes_can_read = pipe_buffer_list_populate(&src_list, pipe_desc, pipe->buffer, pipe->size, pipe->read_index, pipe->write_index);
       }

       /* 3. 检查是否有等待的写者 */
       bytes_can_read += pipe_waiter_list_populate(&src_list, &pipe->wait_q.writers, bytes_to_read);

       /* 4. 检查是否满足最小传输量要求 */
       if ((bytes_can_read < min_xfer) && (K_TIMEOUT_EQ(timeout, K_NO_WAIT))) {
           k_spin_unlock(&pipe->lock, key);
           *bytes_read = 0;
           return -EIO;
       }

       /* 5. 准备目标描述符 */
       dest_desc = k_is_in_isr() ? &isr_desc : &_current->pipe_desc;
       dest_desc->buffer = data;
       dest_desc->bytes_to_xfer = bytes_to_read;
       dest_desc->thread = _current;

       /* 6. 执行数据读取 */
       src_desc = (struct _pipe_desc *)sys_dlist_get(&src_list);
       while (src_desc != NULL) {
           bytes_copied = pipe_xfer(dest_desc->buffer, dest_desc->bytes_to_xfer, src_desc->buffer, src_desc->bytes_to_xfer);
           num_bytes_read += bytes_copied;

           /* 更新源和目标描述符 */
           src_desc->buffer += bytes_copied;
           src_desc->bytes_to_xfer -= bytes_copied;

           if (dest_desc->buffer != NULL) {
               dest_desc->buffer += bytes_copied;
           }
           dest_desc->bytes_to_xfer -= bytes_copied;

           /* 处理源描述符 */
           if (src_desc->thread == NULL) {
               /* 从管道缓冲区读取 */
               pipe->bytes_used -= bytes_copied;
               pipe->read_index += bytes_copied;
               if (pipe->read_index >= pipe->size) {
                   pipe->read_index -= pipe->size;
               }
           } else if (src_desc->bytes_to_xfer == 0U) {
               /* 写者的数据已全部读取 */
               z_unpend_thread(src_desc->thread);
               z_ready_thread(src_desc->thread);
               reschedule_needed = true;
           }
           src_desc = (struct _pipe_desc *)sys_dlist_get(&src_list);
       }

       /* 7. 检查是否需要阻塞 */
       if ((num_bytes_read == bytes_to_read) || (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) || ((num_bytes_read >= min_xfer) && (min_xfer > 0U))) {
           *bytes_read = num_bytes_read;
           if (reschedule_needed) {
               z_reschedule(&pipe->lock, key);
           } else {
               k_spin_unlock(&pipe->lock, key);
           }
           return 0;
       }

       /* 8. 阻塞等待数据可用 */
       _current->base.swap_data = dest_desc;
       z_sched_wait(&pipe->lock, key, &pipe->wait_q.readers, timeout, NULL);

       /* 9. 计算实际读取的字节数 */
       *bytes_read = bytes_to_read - dest_desc->bytes_to_xfer;

       return pipe_return_code(min_xfer, dest_desc->bytes_to_xfer, bytes_to_read);
   }

**实现分析：**

1. 获取自旋锁
2. 初始化源列表
3. 检查管道缓冲区是否有数据
4. 检查是否有等待的写者
5. 检查是否满足最小传输量要求
6. 准备目标描述符
7. 执行数据读取
8. 处理源描述符（更新管道状态或唤醒写者）
9. 检查是否需要阻塞
10. 如果需要，阻塞等待数据可用
11. 计算实际读取的字节数并返回

使用示例
========

基本管道操作
------------

.. code-block:: c
   :caption: 基本管道操作示例

   #include <zephyr/kernel.h>

   /* 定义管道缓冲区 */
   #define PIPE_BUFFER_SIZE 512
   unsigned char pipe_buffer[PIPE_BUFFER_SIZE];
   struct k_pipe pipe;

   void pipe_example(void)
   {
       /* 初始化管道 */
       k_pipe_init(&pipe, pipe_buffer, PIPE_BUFFER_SIZE);
       
       /* 写入数据 */
       const char *message = "Hello, Pipe!";
       size_t bytes_written;
       int ret = k_pipe_put(&pipe, message, strlen(message) + 1, &bytes_written, 0, K_FOREVER);
       if (ret == 0) {
           printk("Written %zu bytes\n", bytes_written);
       }
       
       /* 读取数据 */
       char buffer[64];
       size_t bytes_read;
       ret = k_pipe_get(&pipe, buffer, sizeof(buffer), &bytes_read, 0, K_FOREVER);
       if (ret == 0) {
           printk("Read %zu bytes: %s\n", bytes_read, buffer);
       }
   }

生产者-消费者模式
----------------

.. code-block:: c
   :caption: 生产者-消费者模式示例

   #include <zephyr/kernel.h>

   #define PIPE_BUFFER_SIZE 1024
   unsigned char pipe_buffer[PIPE_BUFFER_SIZE];
   struct k_pipe pipe;

   struct k_thread producer_thread_data;
   k_thread_stack_t producer_stack[512];

   struct k_thread consumer_thread_data;
   k_thread_stack_t consumer_stack[512];

   void producer_thread(void *p1, void *p2, void *p3)
   {
       for (int i = 0; i < 10; i++) {
           char message[32];
           snprintf(message, sizeof(message), "Message %d", i);
           size_t bytes_written;
           k_pipe_put(&pipe, message, strlen(message) + 1, &bytes_written, 0, K_FOREVER);
           printk("Producer: Sent %s\n", message);
           k_msleep(100); /* 模拟工作 */
       }
   }

   void consumer_thread(void *p1, void *p2, void *p3)
   {
       for (int i = 0; i < 10; i++) {
           char buffer[64];
           size_t bytes_read;
           k_pipe_get(&pipe, buffer, sizeof(buffer), &bytes_read, 0, K_FOREVER);
           printk("Consumer: Received %s\n", buffer);
           k_msleep(150); /* 模拟工作 */
       }
   }

   void producer_consumer_example(void)
   {
       /* 初始化管道 */
       k_pipe_init(&pipe, pipe_buffer, PIPE_BUFFER_SIZE);
       
       /* 创建生产者线程 */
       k_thread_create(&producer_thread_data, producer_stack, sizeof(producer_stack),
                      producer_thread, NULL, NULL, NULL, 5, 0, K_NO_WAIT);
       
       /* 创建消费者线程 */
       k_thread_create(&consumer_thread_data, consumer_stack, sizeof(consumer_stack),
                      consumer_thread, NULL, NULL, NULL, 4, 0, K_NO_WAIT);
       
       /* 等待线程完成 */
       k_thread_join(&producer_thread_data, K_FOREVER);
       k_thread_join(&consumer_thread_data, K_FOREVER);
   }

中断与线程通信
------------

.. code-block:: c
   :caption: 中断与线程通信示例

   #include <zephyr/kernel.h>
   #include <zephyr/drivers/gpio.h>

   #define PIPE_BUFFER_SIZE 256
   unsigned char pipe_buffer[PIPE_BUFFER_SIZE];
   struct k_pipe pipe;

   /* 模拟中断处理函数 */
   void dummy_isr(const struct device *dev, struct gpio_callback *cb, uint32_t pins)
   {
       /* 从 ISR 写入数据到管道（必须使用非阻塞模式） */
       const char *message = "Interrupt triggered!";
       size_t bytes_written;
       int ret = k_pipe_put(&pipe, message, strlen(message) + 1, &bytes_written, 0, K_NO_WAIT);
       if (ret == 0) {
           /* 注意：在 ISR 中应避免使用 printk */
       }
   }

   void isr_communication_example(void)
   {
       /* 初始化管道 */
       k_pipe_init(&pipe, pipe_buffer, PIPE_BUFFER_SIZE);
       
       /* 主线程读取中断发送的数据 */
       while (1) {
           char buffer[64];
           size_t bytes_read;
           int ret = k_pipe_get(&pipe, buffer, sizeof(buffer), &bytes_read, 0, K_FOREVER);
           if (ret == 0) {
               printk("Received from ISR: %s\n", buffer);
           }
       }
   }

动态内存管道
------------

.. code-block:: c
   :caption: 动态内存管道示例

   #include <zephyr/kernel.h>

   struct k_pipe pipe;

   void dynamic_pipe_example(void)
   {
       /* 分配并初始化管道 */
       int ret = k_pipe_alloc_init(&pipe, 1024);
       if (ret == 0) {
           printk("Dynamic pipe initialized\n");
           
           /* 使用管道 */
           const char *message = "Hello, Dynamic Pipe!";
           size_t bytes_written;
           k_pipe_put(&pipe, message, strlen(message) + 1, &bytes_written, 0, K_FOREVER);
           
           /* 清理管道 */
           k_pipe_cleanup(&pipe);
           printk("Dynamic pipe cleaned up\n");
       } else {
           printk("Failed to initialize dynamic pipe: %d\n", ret);
       }
   }

调试和故障排除
==============

1. **管道阻塞问题**

   * 检查是否有死锁情况，如读写线程相互等待
   * 确保设置了合理的超时时间
   * 使用非阻塞模式进行调试

2. **内存问题**

   * 确保管道缓冲区大小足够大，避免频繁阻塞
   * 检查缓冲区对齐问题，确保正确访问
   * 避免在中断上下文中使用阻塞操作

3. **性能问题**

   * 调整管道缓冲区大小以平衡内存使用和性能
   * 考虑使用最小传输量来减少小数据传输的开销
   * 监控管道的读写操作，识别瓶颈

4. **错误处理**

   * 始终检查管道操作的返回值
   * 处理超时和错误情况
   * 使用调试工具跟踪管道操作

与其他内核模块的集成
====================

1. **与轮询模块集成**

   * 管道支持轮询机制，可以与 `k_poll` 一起使用
   * 当管道状态变化时，会通知轮询者
   * 适合事件驱动的编程模型

2. **与线程模块集成**

   * 管道操作会影响线程状态（挂起/唤醒）
   * 支持不同优先级的线程间通信
   * 可以用于线程同步

3. **与中断处理集成**

   * 支持在中断上下文中写入数据（非阻塞模式）
   * 提供了中断与线程间的安全通信机制
   * 避免了在中断中使用阻塞操作

4. **与内存管理集成**

   * 支持静态和动态内存分配
   * 与系统内存分配器集成
   * 提供了内存使用的灵活性

未来发展方向
============

1. **性能优化**

   * 进一步优化零拷贝机制，提高数据传输效率
   * 实现更高效的环形缓冲区管理算法
   * 优化等待队列操作，减少线程切换开销

2. **功能增强**

   * 支持管道优先级，确保重要数据优先传输
   * 实现管道流量控制，避免数据溢出
   * 提供管道状态监控和统计功能

3. **安全性增强**

   * 增加数据完整性检查
   * 实现管道访问控制
   * 防止缓冲区溢出和其他安全问题

4. **可扩展性**

   * 支持更多类型的管道实现，如无锁管道
   * 提供管道工厂和管理接口
   * 支持管道网络和链式操作

5. **工具支持**

   * 开发管道性能分析工具
   * 提供管道调试和可视化工具
   * 集成到系统监控和诊断框架中

总结
====

管道模块是 Zephyr RTOS 中一个强大的线程间通信机制，基于环形缓冲区和等待队列实现。通过本文档的介绍，您应该对管道的实现原理、API 使用和性能特性有了深入的了解。

在实际应用中，需要根据具体场景选择合适的管道配置：

* 对于资源受限系统，使用静态缓冲区和合理的大小
* 对于需要灵活内存管理的场景，使用动态内存分配
* 对于需要确保数据传输的场景，使用阻塞模式和适当的超时
* 对于需要立即响应的场景，使用非阻塞模式
* 对于中断与线程通信，使用非阻塞模式

通过合理使用管道模块，可以有效地实现线程间的安全通信，提高系统的可靠性和性能。管道是构建复杂实时系统的重要基础组件之一。