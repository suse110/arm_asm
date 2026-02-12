.. _mem_domain_module:

内存域模块
##########

.. contents:: 目录
   :depth: 2
   :local:

模块概述
========

内存域模块是 Zephyr RTOS 中的一个核心模块，提供了内存保护机制。内存域允许将内存划分为不同的分区，并为每个分区设置不同的访问权限，从而提高系统的安全性和可靠性。

**主要特性：**

* 内存分区管理：将内存划分为多个分区，每个分区有独立的访问权限
* 线程内存域分配：为线程分配特定的内存域，限制线程的内存访问范围
* 访问权限控制：支持读、写、执行权限的精细控制
* 执行/写保护：支持执行与写权限互斥，防止代码注入攻击
* 架构无关性：通过架构抽象层支持不同处理器架构

**典型应用场景：**

* 安全关键系统：隔离不同安全级别的代码和数据
* 多租户系统：隔离不同应用程序的内存空间
* 驱动程序隔离：将设备驱动与应用程序隔离
* 代码执行保护：防止缓冲区溢出导致的代码执行
* 内存访问控制：限制线程只能访问必要的内存区域

核心数据结构
============

内存域模块的核心数据结构包括：

.. code-block:: c
   :caption: 内存域核心数据结构

   struct k_mem_domain {
       struct k_mem_partition partitions[CONFIG_MAX_DOMAIN_PARTITIONS]; /* 内存分区数组 */
       uint8_t num_partitions; /* 分区数量 */
       sys_dlist_t mem_domain_q; /* 内存域中的线程队列 */
   };

   struct k_mem_partition {
       uintptr_t start; /* 分区起始地址 */
       size_t size; /* 分区大小 */
       uint32_t attr; /* 分区属性（访问权限） */
   };

   struct k_thread_memory_domain_info {
       struct k_mem_domain *mem_domain; /* 线程所属的内存域 */
       sys_dnode_t mem_domain_q_node; /* 内存域队列节点 */
   };

**主要字段：**

* `partitions`：内存分区数组，每个分区定义了一段内存的访问权限
* `num_partitions`：当前内存域中的分区数量
* `mem_domain_q`：属于该内存域的线程队列
* `start`：内存分区的起始地址
* `size`：内存分区的大小
* `attr`：内存分区的属性，包括读、写、执行权限
* `mem_domain`：线程当前所属的内存域
* `mem_domain_q_node`：线程在内存域队列中的节点

实现原理
========

内存域的实现基于以下核心原理：

1. **内存分区管理**

   * 内存域由多个内存分区组成，每个分区定义了一段内存的访问权限
   * 分区通过 `k_mem_partition` 结构定义，包括起始地址、大小和访问属性
   * 内存域支持动态添加和删除分区

2. **线程内存域分配**

   * 每个线程都属于一个内存域，默认为系统默认内存域
   * 线程可以在运行时切换到其他内存域
   * 新创建的线程继承父线程的内存域配置

3. **访问权限控制**

   * 通过 `attr` 字段控制分区的访问权限，包括读、写、执行权限
   * 支持执行与写权限互斥（Execute-XOR-Write），防止代码注入攻击
   * 架构特定的实现负责将权限转换为硬件内存保护机制

4. **架构抽象**

   * 通过架构抽象层（arch_mem_domain_* 函数）支持不同处理器架构
   * 架构特定的实现负责与硬件内存保护单元（MPU）或内存管理单元（MMU）交互
   * 支持同步和异步 API 模式

API 参考
========

内存域初始化
------------

.. function:: int k_mem_domain_init(struct k_mem_domain *domain, uint8_t num_parts, struct k_mem_partition *parts[])

   初始化内存域。

   :param domain: 内存域指针
   :param num_parts: 分区数量
   :param parts: 分区数组指针
   :return: 成功返回 0，失败返回错误码

内存分区管理
------------

.. function:: int k_mem_domain_add_partition(struct k_mem_domain *domain, struct k_mem_partition *part)

   向内存域添加分区。

   :param domain: 内存域指针
   :param part: 分区指针
   :return: 成功返回 0，失败返回错误码

.. function:: int k_mem_domain_remove_partition(struct k_mem_domain *domain, struct k_mem_partition *part)

   从内存域移除分区。

   :param domain: 内存域指针
   :param part: 分区指针
   :return: 成功返回 0，失败返回错误码

线程管理
--------

.. function:: int k_mem_domain_add_thread(struct k_mem_domain *domain, k_tid_t thread)

   将线程添加到内存域。

   :param domain: 内存域指针
   :param thread: 线程标识符
   :return: 成功返回 0，失败返回错误码

性能特性
========

1. **内存访问开销**

   * 内存域通过硬件内存保护机制实现，会增加内存访问的开销
   * 不同架构的开销不同，通常在几到几十个时钟周期之间
   * 内存域切换会导致 TLB 刷新，增加额外开销

2. **内存使用**

   * 内存域结构本身占用较小的内存空间
   * 内存分区需要对齐到硬件要求的边界，可能会浪费一些内存
   * 支持的最大分区数量由 CONFIG_MAX_DOMAIN_PARTITIONS 配置

3. **上下文切换**

   * 当线程切换涉及内存域切换时，会增加上下文切换的开销
   * 架构特定的实现可能会缓存内存域配置，减少切换开销

4. **安全性**

   * 内存域提供了强大的内存保护机制，提高了系统的安全性
   * 执行/写保护可以防止代码注入攻击
   * 内存访问控制可以防止越界访问和权限提升

内部实现细节
============

内存域初始化实现
----------------

.. code-block:: c
   :caption: k_mem_domain_init 实现（核心部分）
   :linenos:

   int k_mem_domain_init(struct k_mem_domain *domain, uint8_t num_parts, struct k_mem_partition *parts[])
   {
       k_spinlock_key_t key;
       int ret = 0;

       /* 检查参数有效性 */
       CHECKIF(domain == NULL) {
           ret = -EINVAL;
           goto out;
       }

       CHECKIF(!(num_parts == 0U || parts != NULL)) {
           LOG_ERR("parts array is NULL and num_parts is nonzero");
           ret = -EINVAL;
           goto out;
       }

       CHECKIF(!(num_parts <= max_partitions)) {
           LOG_ERR("num_parts of %d exceeds maximum allowable partitions (%d)",
               num_parts, max_partitions);
           ret = -EINVAL;
           goto out;
       }

       key = k_spin_lock(&z_mem_domain_lock);

       /* 初始化内存域结构 */
       domain->num_partitions = 0U;
       (void)memset(domain->partitions, 0, sizeof(domain->partitions));
       sys_dlist_init(&domain->mem_domain_q);

       /* 架构特定初始化 */
   #ifdef CONFIG_ARCH_MEM_DOMAIN_DATA
       ret = arch_mem_domain_init(domain);

       if (ret != 0) {
           LOG_ERR("architecture-specific initialization failed for domain %p with %d",
               domain, ret);
           ret = -ENOMEM;
           goto unlock_out;
       }
   #endif /* CONFIG_ARCH_MEM_DOMAIN_DATA */

       /* 添加初始分区 */
       if (num_parts != 0U) {
           uint32_t i;

           for (i = 0U; i < num_parts; i++) {
               CHECKIF(!check_add_partition(domain, parts[i])) {
                   LOG_ERR("invalid partition index %d (%p)",
                       i, parts[i]);
                   ret = -EINVAL;
                   goto unlock_out;
               }

               domain->partitions[i] = *parts[i];
               domain->num_partitions++;

               /* 架构特定分区添加 */
           #ifdef CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API
               int ret2 = arch_mem_domain_partition_add(domain, i);

               ARG_UNUSED(ret2);
               CHECKIF(ret2 != 0) {
                   ret = ret2;
               }
           #endif /* CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API */
           }
       }

   unlock_out:
       k_spin_unlock(&z_mem_domain_lock, key);

   out:
       return ret;
   }

**实现分析：**

1. 检查参数有效性，确保内存域指针不为 NULL，分区数组与分区数量匹配
2. 检查分区数量是否超过最大允许值
3. 获取自旋锁，保护内存域操作
4. 初始化内存域结构，包括分区数组和线程队列
5. 执行架构特定的初始化
6. 添加初始分区，检查每个分区的有效性
7. 执行架构特定的分区添加操作
8. 释放自旋锁并返回

内存分区添加实现
----------------

.. code-block:: c
   :caption: k_mem_domain_add_partition 实现（核心部分）
   :linenos:

   int k_mem_domain_add_partition(struct k_mem_domain *domain, struct k_mem_partition *part)
   {
       int p_idx;
       k_spinlock_key_t key;
       int ret = 0;

       /* 检查参数有效性 */
       CHECKIF(domain == NULL) {
           ret = -EINVAL;
           goto out;
       }

       CHECKIF(!check_add_partition(domain, part)) {
           LOG_ERR("invalid partition %p", part);
           ret = -EINVAL;
           goto out;
       }

       key = k_spin_lock(&z_mem_domain_lock);

       /* 查找空闲分区槽位 */
       for (p_idx = 0; p_idx < max_partitions; p_idx++) {
           /* A zero-sized partition denotes it's a free partition */
           if (domain->partitions[p_idx].size == 0U) {
               break;
           }
       }

       CHECKIF(!(p_idx < max_partitions)) {
           LOG_ERR("no free partition slots available");
           ret = -ENOSPC;
           goto unlock_out;
       }

       /* 添加分区 */
       domain->partitions[p_idx].start = part->start;
       domain->partitions[p_idx].size = part->size;
       domain->partitions[p_idx].attr = part->attr;

       domain->num_partitions++;

       /* 架构特定分区添加 */
   #ifdef CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API
       ret = arch_mem_domain_partition_add(domain, p_idx);
   #endif /* CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API */

   unlock_out:
       k_spin_unlock(&z_mem_domain_lock, key);

   out:
       return ret;
   }

**实现分析：**

1. 检查参数有效性，确保内存域指针不为 NULL
2. 检查分区有效性，包括执行/写权限互斥检查
3. 获取自旋锁，保护内存域操作
4. 查找空闲的分区槽位
5. 检查是否有可用的分区槽位
6. 添加分区信息到内存域
7. 增加分区计数
8. 执行架构特定的分区添加操作
9. 释放自旋锁并返回

线程添加实现
------------

.. code-block:: c
   :caption: k_mem_domain_add_thread 实现（核心部分）
   :linenos:

   int k_mem_domain_add_thread(struct k_mem_domain *domain, k_tid_t thread)
   {
       int ret = 0;
       k_spinlock_key_t key;

       key = k_spin_lock(&z_mem_domain_lock);
       if (thread->mem_domain_info.mem_domain != domain) {
           ret = remove_thread_locked(thread);

           if (ret == 0) {
               ret = add_thread_locked(domain, thread);
           }
       }
       k_spin_unlock(&z_mem_domain_lock, key);

       return ret;
   }

   static int add_thread_locked(struct k_mem_domain *domain, k_tid_t thread)
   {
       int ret = 0;

       __ASSERT_NO_MSG(domain != NULL);
       __ASSERT_NO_MSG(thread != NULL);

       LOG_DBG("add thread %p to domain %p\n", thread, domain);
       sys_dlist_append(&domain->mem_domain_q, &thread->mem_domain_info.mem_domain_q_node);
       thread->mem_domain_info.mem_domain = domain;

   #ifdef CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API
       ret = arch_mem_domain_thread_add(thread);
   #endif /* CONFIG_ARCH_MEM_DOMAIN_SYNCHRONOUS_API */

       return ret;
   }

**实现分析：**

1. 获取自旋锁，保护内存域操作
2. 检查线程是否已经属于目标内存域
3. 如果不是，先从当前内存域移除线程
4. 然后将线程添加到目标内存域
5. 添加线程到内存域的线程队列
6. 更新线程的内存域信息
7. 执行架构特定的线程添加操作
8. 释放自旋锁并返回

使用示例
========

基本内存域操作
------------

.. code-block:: c
   :caption: 基本内存域操作示例

   #include <zephyr/kernel.h>

   /* 定义内存分区 */
   struct k_mem_partition ro_partition = {
       .start = (uintptr_t)&__rodata_start,
       .size = (size_t)&__rodata_size,
       .attr = K_MEM_PARTITION_READ_ONLY,
   };

   struct k_mem_partition rw_partition = {
       .start = (uintptr_t)&__data_start,
       .size = (size_t)&__data_size,
       .attr = K_MEM_PARTITION_READ_WRITE,
   };

   struct k_mem_partition rx_partition = {
       .start = (uintptr_t)&__text_start,
       .size = (size_t)&__text_size,
       .attr = K_MEM_PARTITION_READ_EXECUTE,
   };

   /* 定义分区数组 */
   struct k_mem_partition *partitions[] = {
       &rx_partition,
       &ro_partition,
       &rw_partition,
   };

   /* 定义内存域 */
   struct k_mem_domain app_domain;

   void mem_domain_example(void)
   {
       /* 初始化内存域 */
       int ret = k_mem_domain_init(&app_domain, ARRAY_SIZE(partitions), partitions);
       if (ret == 0) {
           printk("Memory domain initialized successfully\n");
       } else {
           printk("Failed to initialize memory domain: %d\n", ret);
           return;
       }

       /* 创建一个线程并添加到内存域 */
       k_tid_t thread_id = k_thread_create(NULL, NULL, 0, 
                                          app_thread, NULL, NULL, NULL,
                                          K_PRIO_COOP(1), 0, K_NO_WAIT);

       if (thread_id) {
           /* 将线程添加到内存域 */
           ret = k_mem_domain_add_thread(&app_domain, thread_id);
           if (ret == 0) {
               printk("Thread added to memory domain\n");
           } else {
               printk("Failed to add thread to memory domain: %d\n", ret);
           }
       }
   }

   void app_thread(void *p1, void *p2, void *p3)
   {
       /* 线程在内存域中运行，只能访问允许的内存区域 */
       printk("App thread running in memory domain\n");
       
       /* 尝试访问不同的内存区域 */
       /* 注意：访问不允许的内存区域会导致硬件异常 */
   }

动态分区管理
------------

.. code-block:: c
   :caption: 动态分区管理示例

   #include <zephyr/kernel.h>

   struct k_mem_domain dynamic_domain;

   void dynamic_partition_example(void)
   {
       /* 初始化空内存域 */
       int ret = k_mem_domain_init(&dynamic_domain, 0, NULL);
       if (ret != 0) {
           printk("Failed to initialize memory domain: %d\n", ret);
           return;
       }

       /* 定义运行时分区 */
       struct k_mem_partition heap_partition = {
           .start = (uintptr_t)__heap_start,
           .size = CONFIG_HEAP_SIZE,
           .attr = K_MEM_PARTITION_READ_WRITE,
       };

       /* 添加分区 */
       ret = k_mem_domain_add_partition(&dynamic_domain, &heap_partition);
       if (ret == 0) {
           printk("Heap partition added\n");
       } else {
           printk("Failed to add heap partition: %d\n", ret);
       }

       /* 移除分区 */
       ret = k_mem_domain_remove_partition(&dynamic_domain, &heap_partition);
       if (ret == 0) {
           printk("Heap partition removed\n");
       } else {
           printk("Failed to remove heap partition: %d\n", ret);
       }
   }

执行/写保护示例
------------

.. code-block:: c
   :caption: 执行/写保护示例

   #include <zephyr/kernel.h>

   /* 定义代码分区（仅执行） */
   struct k_mem_partition code_partition = {
       .start = (uintptr_t)&__text_start,
       .size = (size_t)&__text_size,
       .attr = K_MEM_PARTITION_READ_EXECUTE,
   };

   /* 定义数据分区（仅读写） */
   struct k_mem_partition data_partition = {
       .start = (uintptr_t)&__data_start,
       .size = (size_t)&__data_size + CONFIG_HEAP_SIZE,
       .attr = K_MEM_PARTITION_READ_WRITE,
   };

   struct k_mem_partition *secure_partitions[] = {
       &code_partition,
       &data_partition,
   };

   struct k_mem_domain secure_domain;

   void execute_xor_write_example(void)
   {
       /* 初始化安全内存域 */
       int ret = k_mem_domain_init(&secure_domain, ARRAY_SIZE(secure_partitions), secure_partitions);
       if (ret == 0) {
           printk("Secure memory domain initialized\n");
           printk("Code partition: 0x%lx - 0x%lx (RX)\n", 
                  code_partition.start, code_partition.start + code_partition.size);
           printk("Data partition: 0x%lx - 0x%lx (RW)\n", 
                  data_partition.start, data_partition.start + data_partition.size);
       }

       /* 注意：在启用 CONFIG_EXECUTE_XOR_WRITE 时，尝试创建可写可执行的分区会失败 */
   }

调试和故障排除
==============

1. **内存访问错误**

   * 症状：线程执行时出现硬件异常或崩溃
   * 原因：线程尝试访问其内存域中未授权的内存区域
   * 解决方案：检查内存域的分区定义，确保线程需要访问的内存区域已正确添加到内存域

2. **分区重叠错误**

   * 症状：k_mem_domain_add_partition 返回错误
   * 原因：尝试添加的分区与现有分区重叠
   * 解决方案：检查分区的起始地址和大小，确保没有重叠

3. **执行/写权限冲突**

   * 症状：k_mem_domain_add_partition 返回错误，日志显示 "partition is writable and executable"
   * 原因：在启用 CONFIG_EXECUTE_XOR_WRITE 时，尝试创建可写可执行的分区
   * 解决方案：将代码和数据分离到不同的分区，代码分区设置为 RX，数据分区设置为 RW

4. **分区数量限制**

   * 症状：k_mem_domain_init 或 k_mem_domain_add_partition 返回错误，日志显示 "no free partition slots available"
   * 原因：内存域的分区数量超过了 CONFIG_MAX_DOMAIN_PARTITIONS 的限制
   * 解决方案：增加 CONFIG_MAX_DOMAIN_PARTITIONS 的值，或减少分区数量

5. **架构特定错误**

   * 症状：架构特定的错误代码
   * 原因：硬件内存保护单元的限制或配置错误
   * 解决方案：检查处理器文档，了解内存保护单元的限制，确保分区配置符合硬件要求

与其他内核模块的集成
====================

1. **与线程模块集成**

   * 线程创建时继承父线程的内存域配置
   * 线程可以在运行时切换到其他内存域
   * 线程退出时从内存域中移除

2. **与内存管理模块集成**

   * 内存分配器需要考虑内存域的限制
   * 内存域可以限制线程可以访问的堆和栈区域
   * 动态内存分配需要确保分配的内存位于线程的内存域中

3. **与调度器模块集成**

   * 上下文切换时可能需要切换内存域配置
   * 架构特定的实现负责高效的内存域切换

4. **与中断处理集成**

   * 中断处理程序通常运行在系统默认内存域中
   * 需要确保中断处理程序可以访问需要的内存区域

未来发展方向
============

1. **性能优化**

   * 优化内存域切换的开销，减少上下文切换时间
   * 实现内存域配置的缓存，减少重复的硬件配置
   * 开发更高效的分区管理算法

2. **功能增强**

   * 支持嵌套内存域，实现更精细的内存访问控制
   * 支持动态调整分区大小和权限
   * 提供内存域的运行时监控和诊断工具

3. **安全性增强**

   * 实现更细粒度的内存访问控制，如按字节级别的权限
   * 支持内存域的访问审计和日志记录
   * 开发内存域的安全策略验证工具

4. **可扩展性**

   * 支持更多处理器架构的内存保护机制
   * 提供内存域的配置文件格式，便于工具支持
   * 集成到更广泛的安全框架中

5. **工具支持**

   * 开发内存域的静态分析工具，检测潜在的内存访问问题
   * 提供内存域的可视化工具，便于配置和调试
   * 集成到 IDE 和开发工具链中

总结
====

内存域模块是 Zephyr RTOS 中一个重要的安全特性，提供了基于硬件的内存保护机制。通过本文档的介绍，您应该对内存域的实现原理、API 使用和性能特性有了深入的了解。

在实际应用中，需要根据具体场景合理使用内存域：

* 对于安全关键系统，使用内存域隔离不同安全级别的代码和数据
* 对于多租户系统，使用内存域隔离不同应用程序的内存空间
* 对于所有系统，启用执行/写保护，防止代码注入攻击
* 合理规划内存分区，平衡安全性和性能

通过合理使用内存域模块，可以有效地提高系统的安全性和可靠性，防止内存相关的安全漏洞和错误。内存域是构建安全可靠的实时系统的重要基础组件之一。