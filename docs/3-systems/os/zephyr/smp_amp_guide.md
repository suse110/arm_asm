# Zephyr 中的 SMP 和 AMP 多处理器架构

## 目录

1. [概述](#概述)
2. [SMP（对称多处理）](#smp对称多处理)
   - [基本概念](#基本概念)
   - [Zephyr 中的 SMP 实现](#zephyr-中的-smp-实现)
   - [同步机制](#同步机制)
   - [CPU 掩码](#cpu-掩码)
   - [SMP 启动过程](#smp-启动过程)
   - [处理器间中断](#处理器间中断)
3. [AMP（非对称多处理）](#amp非对称多处理)
   - [基本概念](#基本概念-1)
   - [Zephyr 中的 AMP 支持](#zephyr-中的-amp-支持)
   - [实现方式](#实现方式)
4. [SMP vs AMP 对比](#smp-vs-amp-对比)
5. [配置和使用](#配置和使用)
6. [代码示例](#代码示例)
7. [最佳实践](#最佳实践)

---

## 概述

在嵌入式系统中，多处理器架构变得越来越普遍。Zephyr RTOS 提供了对两种主要多处理器模式的支持：

- **SMP（Symmetric Multiprocessing，对称多处理）**：多个处理器共享内存，运行相同的操作系统实例，可以执行任何线程
- **AMP（Asymmetric Multiprocessing，非对称多处理）**：每个处理器运行独立的操作系统实例或固件，具有不同的角色和功能

本文将详细介绍这两种架构在 Zephyr 中的实现、配置和使用方法。

---

## SMP（对称多处理）

### 基本概念

SMP 是一种多处理器架构，其中：

1. **共享内存**：所有处理器访问统一的内存地址空间
2. **对称性**：没有特定的处理器被特殊对待，任何处理器都可以运行任何 Zephyr 线程
3. **统一调度**：一个全局调度器管理所有处理器上的线程执行
4. **透明性**：应用程序代码不需要特殊处理即可利用多处理器优势

在 Zephyr 中，SMP 配置通过 `CONFIG_SMP` Kconfig 变量控制。启用后，可用的物理处理器数量在构建时可见为 `CONFIG_MP_MAX_NUM_CPUS`。

### Zephyr 中的 SMP 实现

#### 核心特性

Zephyr 的 SMP 实现具有以下核心特性：

1. **自动负载均衡**：如果有两个 Zephyr 应用线程在支持双处理器的设备上可运行，它们将同时运行
2. **API 兼容性**：标准 Zephyr API 在 SMP 环境下行为一致
3. **透明性**：无需编写特殊的应用程序代码即可利用此功能
4. **可配置性**：可以设置 `CONFIG_MP_MAX_NUM_CPUS` 为较小的数字（但不能更大）用于特殊目的（如测试或为非 Zephyr 代码保留物理 CPU）

#### 配置选项

在 `zephyr/kernel/Kconfig.smp` 中定义了 SMP 相关的配置选项：

```kconfig
config SMP
    bool "Symmetric multiprocessing support"
    depends on USE_SWITCH
    depends on !ATOMIC_OPERATIONS_C
    help
      When true, kernel will be built with SMP support, allowing
      more than one CPU to schedule Zephyr tasks at a time.

config MP_MAX_NUM_CPUS
    int "Maximum number of CPUs/cores"
    default 1
    range 1 12
    help
      Maximum number of multiprocessing-capable cores available to the
      multicpu API and SMP features.
```

### 同步机制

在 SMP 环境中，传统的中断锁定机制不再适用，因为：

- 在临界区内，本地 CPU 不会被中断，但这并不能阻止不同的 CPU 同时运行并检查或修改相同的数据！

#### 自旋锁（Spinlocks）

SMP 系统提供了更受约束的 `k_spin_lock` 原语：

1. **本地中断屏蔽**：像 `irq_lock` 一样在本地屏蔽中断
2. **原子验证**：原子性地验证共享锁变量是否已被修改
3. **自旋等待**：如果需要等待其他 CPU 退出锁，则"自旋"在检查上

Zephyr 的 `k_spin_lock` 和 `k_spin_unlock` 默认实现基于现有的 `atomic_` 层（通常使用编译器内联函数实现），尽管架构可以为了性能原因定义自己的实现。

**重要区别**：

- **IRQ 锁**：自然是递归的，锁是全局的，所以在临界区内嵌套锁是合法的
- **自旋锁**：是可分离的，可以为不同的子系统或数据结构提供许多锁，防止 CPU 争用单个全局资源
- **递归限制**：自旋锁不能递归使用。持有特定锁的代码不得尝试重新获取它，否则会死锁（嵌套不同的自旋锁是合法的）

#### 传统的 irq_lock() 仿真

为了使为单处理器锁定 API 编写的应用程序受益，`irq_lock` 和 `irq_unlock` 在 SMP 系统上继续以与遗留版本相同的语义兼容工作：

1. **全局自旋锁**：实现为单个全局自旋锁，具有嵌套计数
2. **上下文切换处理**：能够在上下文切换到锁定线程时原子性地重新获取
3. **内核保证**：确保所有 CPU 中只有一个线程可以在任何时候持有锁，在上下文切换时释放，并在必要时重新获取以在线程切换时恢复锁定状态

**性能影响**：

此过程涉及的开销具有可测量的性能影响。与单处理器应用程序不同，使用 `irq_lock` 的 SMP 应用程序不仅仅是调用非常短（通常约 1 条指令）的中断屏蔽操作。这意味着期望在 SMP 上下文中运行的代码应该尽可能使用自旋锁 API。

### CPU 掩码

对于实时应用程序，通常希望跨物理处理器有意地划分工作，而不是完全依赖内核调度器来决定执行哪些线程。Zephyr 提供了一个 API，由 `CONFIG_SCHED_CPU_MASK` kconfig 变量控制，可以将特定的 CPU 集合与每个线程关联，指示它可以在哪些 CPU 上运行。

#### API 函数

```c
k_thread_cpu_mask_disable(thread, cpu_id);  // 防止线程在指定 CPU 上运行
k_thread_cpu_mask_enable(thread, cpu_id);    // 允许线程在指定 CPU 上运行
k_thread_cpu_mask_clear(thread);              // 清除所有 CPU 掩码
k_thread_cpu_mask_enable_all(thread);        // 启用所有 CPU 掩码
```

**重要注意事项**：

1. **默认行为**：新线程可以在任何 CPU 上运行
2. **运行时限制**：只能在被阻塞或挂起的线程上调用这些 API，否则返回 `-EINVAL`
3. **调度器限制**：当启用此功能时，调度器算法中涉及的每 CPU 掩码测试需要完全遍历列表。内核不保留每 CPU 运行队列
4. **性能影响**：CPU 掩码处理仅在 `CONFIG_SCHED_DUMB` 被选择时可用。`CONFIG_SCHED_SCALABLE` 和 `CONFIG_SCHED_MULTIQ` 调度器后端的性能好处无法实现

### SMP 启动过程

Zephyr SMP 内核的启动与单处理器内核相同。辅助 CPU 在架构层以禁用状态开始。所有标准内核初始化（包括设备初始化）在其他 CPU 上线之前在单个 CPU 上发生。

#### 启动流程

1. **单 CPU 初始化**：所有标准内核初始化在主 CPU 上完成
2. **SMP 初始化**：在进入应用程序 `main` 函数之前，内核调用 `z_smp_init` 启动 SMP 初始化过程
3. **CPU 枚举**：遍历配置的 CPU，为每个 CPU 调用架构层的 `arch_cpu_start`
4. **参数传递**：
   - 用作外接 CPU 栈的内存区域（实际上使用将成为该 CPU 中断栈的区域）
   - 要在该 CPU 上运行的本地 `smp_init_top` 回调函数的地址
   - 用作原子信号的"启动标志"地址的指针

#### 本地 SMP 初始化

每个 CPU 上的本地 SMP 初始化（`smp_init_top`）由架构层调用：

1. **中断屏蔽**：此时中断仍然被屏蔽
2. **定时器初始化**：调用 `smp_timer_init` 设置定时器驱动程序中所需的任何状态
3. **启动标志等待**：等待（自旋）主线程中释放原子"启动标志"，以确保所有 SMP 初始化在任何 Zephyr 应用程序代码运行之前完成
4. **调度器调用**：最后调用 `z_swap` 通过标准调度器 API 将控制转移到适当的可运行线程

#### 代码实现

在 `zephyr/kernel/smp.c` 中的实现：

```c
static void smp_init_top(void *arg)
{
    struct cpu_start_cb csc = arg ? *(struct cpu_start_cb *)arg : (struct cpu_start_cb){0};

    /* Let start_cpu() know that this CPU has powered up. */
    (void)atomic_set(&ready_flag, 1);

    /* Wait for CPU start caller to signal that
     * we can start initialization.
     */
    wait_for_start_signal(&cpu_start_flag);

    if ((arg == NULL) || csc.invoke_sched) {
        /* Initialize dummy thread struct so that
         * scheduler can schedule actual threads to run.
         */
        z_dummy_thread_init(&_thread_dummy);
    }

#ifdef CONFIG_SYS_CLOCK_EXISTS
    if ((arg == NULL) || csc.reinit_timer) {
        smp_timer_init();
    }
#endif /* CONFIG_SYS_CLOCK_EXISTS */

    /* Do additional initialization steps if needed. */
    if (csc.fn != NULL) {
        csc.fn(csc.arg);
    }

    if ((arg != NULL) && !csc.invoke_sched) {
        /* Don't invoke scheduler. */
        return;
    }

    /* Let scheduler decide what thread to run next. */
    z_swap_unlocked();

    CODE_UNREACHABLE;
}
```

### 处理器间中断

在多处理器环境中运行时，经常需要在不同的处理器上同步处理本地 CPU 上修改的状态。

#### 使用场景

1. **线程终止**：Zephyr `k_thread_abort` API 在被中止的线程不再可运行之前不能返回。如果它当前在另一个 CPU 上运行，这就很难实现
2. **低功耗空闲**：许多设备上的系统空闲要求使用尽可能多禁用或延迟中断（包括周期性定时器中断）的低功耗模式来实现。如果 CPU 处于这种状态，而在另一个 CPU 上线程变为可运行，空闲 CPU 就没有"唤醒"来处理新可运行的负载

#### IPI 框架

Zephyr SMP 架构应该尽可能实现处理器间中断（IPI）：

1. **广播 IPI**：架构提供至少一个 `arch_sched_broadcast_ipi` 调用，当调用时将在所有 CPU 上标记中断（当前 CPU 除外，尽管这是允许的行为）
2. **定向 IPI**：如果架构支持定向 IPI（见 `CONFIG_ARCH_HAS_DIRECTED_IPIS`），则架构还提供 `arch_sched_directed_ipi` 调用，当调用时将在指定的 CPU 上标记中断
3. **IPI 处理**：当在 CPU 上标记中断时，调度器中实现的 `z_sched_ipi` 函数将在这些 CPU 上被调用

**预期**：这些 API 将随着时间的推移发展以包含更多功能（例如跨 CPU 调用），调度器特定的调用将用更通用的框架实现。

#### 线程终止实现

使用 IPI，`k_thread_abort` 在 SMP 中变得稍微复杂一些：

1. **检测**：对于线程实际在另一个 CPU 上运行的情况（我们可以在调度器内部原子性地检测到这一点），我们广播 IPI 并自旋
2. **等待**：等待线程变为"DEAD"或重新进入队列（在这种情况下，我们以与单处理器模式相同的方式终止它）
3. **中断处理**："中止"检查发生在任何中断退出时，因此 IPI 本身不需要特殊处理

**无 IPI 后备**：

当 IPI 不可用时，我们可以简单地自旋，等待外接 CPU 接收任何中断，尽管这可能是一个更长的等待时间！

#### 空闲唤醒

使用 IPI，空闲唤醒可以简单地实现：

1. **空运行队列**：如果线程被添加到空运行队列（即可能有空闲 CPU），我们广播 IPI
2. **外接 CPU 响应**：外接 CPU 将能够在退出中断时看到新线程，并在可用时切换到它

**无 IPI 后备**：

然而，在没有 IPI 的情况下，需要中断的低功耗空闲将无法同步运行新线程。这种情况下的解决方法更具侵入性：

1. **不进入系统空闲处理程序**：Zephyr 将不进入系统空闲处理程序
2. **空闲循环中自旋**：而是在其空闲循环中自旋，以高频率测试调度器状态（但不在其上自旋，因为这会涉及严重的锁争用）用于新线程

**预期**：功耗受限的 SMP 应用程序将始终提供 IPI，此代码仅用于测试目的或在没有功耗要求的系统上。

#### IPI 级联

内核无法控制系统中 CPU 处理 IPI 的顺序。通常，这不是问题，一组 IPI 足以触发 N 个 CPU 上的重新调度，结果它们调度最高 N 优先级就绪线程执行。

当使用 CPU 掩码时，可能有多个有效线程集（不要与最优线程集混淆）可以在 N 个 CPU 上调度，一组 IPI 可能不足以导致任何这些有效集。

**级联成本**：

与 IPI 级联相关的成本/惩罚有三种类型：

1. **生产者成本**：CPU 在新线程抢占旧线程时产生 IPI 的成本，因为必须将旧线程与其他 CPU 上执行的线程进行比较
2. **接收者成本**：接收 IPI 的 CPU 的成本，因为它们必须被处理
3. **线程抖动**：线程"闪烁"然后"熄灭"的明显抖动，由于源自上述第一个成本的级联

**配置选项**：

```kconfig
config SCHED_IPI_CASCADE
    bool "Use cascading IPIs to correct localized scheduling"
    depends on SCHED_CPU_MASK && !SCHED_CPU_MASK_PIN_ONLY
    default n
    help
      Threads that are preempted by a local thread (a thread that is
      restricted by its CPU mask to execute on a subset of all CPUs) may
      trigger additional IPIs when preempted thread is of higher
      priority than a currently executing thread on another CPU. Although
      these cascading IPIs will ensure that system will settle upon a
      valid set of high priority threads, it comes at a performance cost.
```

### SMP 内核内部

#### 每 CPU 数据

SMP 模式下，内核数据结构的许多元素需要为每个 CPU 实现：

1. **当前线程指针**：`_current` 线程指针显然需要反映本地运行的内容，有许多线程并发运行
2. **中断栈**：内核提供的中断栈需要为每个物理 CPU 创建和分配
3. **中断嵌套计数**：用于检测 ISR 状态的中断嵌套计数

**数据结构**：

这些字段现在被移动到 `struct _kernel` 结构内的单独的 `struct _cpu` 实例中，该结构具有按 ID 索引的 `cpus[]` 数组。为使用旧语法和汇编偏移量访问 `cpus[0]` 字段的遗留单处理器代码提供了兼容性字段。

**架构要求**：

架构层的一个重要要求是，当在内核上下文中时，指向此 CPU 结构的指针必须快速可用。期望 `arch_curr_cpu` 将使用 CPU 提供的寄存器或寻址模式实现，该模式可以跨任意上下文切换或中断存储此值，并使其对任何内核模式代码可用。

#### 空闲线程

在单处理器系统上，Zephyr 可以简单地创建一个最低优先级的全局"空闲线程"。在 SMP 中，我们可能需要为每个 CPU 创建一个。这使得调度器中的内部谓词测试"_is_idle()"（这是一个热路径性能环境）比简单地测试线程指针与已知静态变量的相等性更复杂。在 SMP 模式下，空闲线程通过线程结构中的单独字段进行区分。

#### 基于切换的上下文切换

传统的 Zephyr 上下文切换原语是 `z_swap`。不幸的是，此函数不接受指定要切换到的线程的参数。期望一直是调度器在其状态最后被修改时已经做出了抢占决策，并将结果"下一个线程"指针缓存在架构上下文切换原语可以通过简单结构偏移量找到的位置。

**SMP 问题**：

这种技术在 SMP 中不起作用，因为其他 CPU 可能自当前 CPU 最后退出调度器以来修改了调度器状态（例如：它可能已经在运行该缓存的线程！）。

**解决方案**：

SMP"切换到"决策需要与交换调用同步进行，并且由于我们不希望每架构汇编代码处理调度器内部状态，Zephyr 要求 SMP 系统使用更低级别的上下文切换原语：

1. **arch_switch**：总是在中断被屏蔽时调用，并接受恰好两个参数
   - 第一个是不透明的（架构定义）要切换到的上下文的句柄
   - 第二个是要在其中存储从正在切换出的线程产生的句柄的指针
2. **z_swap 实现**：内核然后在此原语之上实现可移植的 `z_swap` 实现，其中包括架构不需要理解它的位置中的相关调度器逻辑

**中断退出**：

类似地，在基于切换的架构上，中断退出时预期调用 `z_get_next_switch_handle` 从调度器检索下一个要运行的线程。`z_get_next_switch_handle` 的参数要么是被中断线程的"句柄"（反映 `arch_switch` 使用的相同不透明类型），要么是 NULL（如果该线程还不能释放给调度器）。

**句柄与 NULL 的选择**：

句柄值或 NULL 之间的选择取决于 CPU 中断模式的实现方式。

**大寄存器文件架构**：

具有大 CPU 寄存器文件的架构通常仅在当前线程的栈上保存调用者保存的寄存器，以最小化中断延迟，并仅在调用 `arch_switch` 时保存被调用者保存的寄存器，以最小化上下文切换延迟。此类架构必须使用 NULL 作为 `z_get_next_switch_handle` 的参数来确定是否有新线程要调度，如果是，则通过自己的 `arch_switch` 或衍生程序跟进，否则直接离开中断模式。

**全状态保存架构**：

中断模式中的条目已经保存整个线程状态的架构可以将该线程的句柄直接传递给 `z_get_next_switch_handle` 并在一个步骤中完成。

---

## AMP（非对称多处理）

### 基本概念

AMP（Asymmetric Multiprocessing，非对称多处理）是一种多处理器架构，其中：

1. **独立操作系统**：每个处理器运行独立的操作系统实例或固件
2. **角色分离**：不同的处理器具有不同的角色和功能
3. **内存隔离**：每个处理器可能有自己的内存空间或共享部分内存
4. **通信机制**：处理器之间通过特定的通信机制（如 IPC、共享内存、消息队列等）进行通信

#### 典型应用场景

1. **异构多核系统**：如 ARM Cortex-A + Cortex-M 组合
   - Cortex-A：运行 Linux 或 Android，处理用户界面和网络
   - Cortex-M：运行 Zephyr RTOS，处理实时控制和外设管理

2. **专用处理器**：
   - 应用处理器（AP）：运行主应用程序
   - 通信处理器（CP）：处理调制解调器和射频
   - 传感器处理器：处理传感器数据融合

3. **安全关键系统**：
   - 安全处理器：运行安全关键代码
   - 非安全处理器：运行非安全代码

### Zephyr 中的 AMP 支持

Zephyr 本身不提供内置的 AMP 框架，但可以通过以下方式实现：

1. **多镜像构建**：为不同的处理器构建不同的 Zephyr 镜像
2. **共享内存区域**：定义用于处理器间通信的共享内存区域
3. **IPC 机制**：使用消息队列、邮箱、共享内存等实现 IPC
4. **启动协调**：协调不同处理器的启动顺序

#### 实现方式

##### 1. 多镜像构建

为不同的处理器构建独立的 Zephyr 镜像：

```cmake
# 为 Cortex-M 处理器构建
west build -b stm32h747i_disco_m7 --pristine

# 为 Cortex-A 处理器构建
west build -b stm32h747i_disco_a7 --pristine
```

##### 2. 共享内存定义

在设备树中定义共享内存区域：

```dts
/ {
    sram0: memory@38000000 {
        compatible = "mmio-sram";
        reg = <0x38000000 0x10000>;
    };

    shared_mem: memory@38010000 {
        compatible = "shared-memory";
        reg = <0x38010000 0x10000>;
        no-map;
    };
};
```

##### 3. IPC 机制实现

使用 Zephyr 的 IPC 机制实现处理器间通信：

```c
/* 在主处理器上 */
#include <zephyr/kernel.h>

#define SHARED_MSG_QUEUE_SIZE 10

struct shared_msg_queue {
    struct k_msgq msgq;
    char buffer[SHARED_MSG_QUEUE_SIZE][32];
};

/* 共享内存中的消息队列 */
struct shared_msg_queue *shared_ipc;

void main_processor_thread(void *arg1, void *arg2, void *arg3)
{
    char msg[32];
    
    /* 初始化共享消息队列 */
    k_msgq_init(&shared_ipc->msgq, shared_ipc->buffer, 
                sizeof(msg[0]), SHARED_MSG_QUEUE_SIZE);
    
    while (1) {
        /* 发送消息到从处理器 */
        sprintf(msg, "Hello from main CPU");
        k_msgq_put(&shared_ipc->msgq, msg, K_FOREVER);
        
        k_sleep(K_SECONDS(1));
    }
}

/* 在从处理器上 */
void secondary_processor_thread(void *arg1, void *arg2, void *arg3)
{
    char msg[32];
    
    while (1) {
        /* 从主处理器接收消息 */
        k_msgq_get(&shared_ipc->msgq, msg, K_FOREVER);
        printk("Received: %s\n", msg);
    }
}
```

##### 4. 启动协调

协调不同处理器的启动：

```c
/* 主处理器启动代码 */
void main(void)
{
    /* 初始化共享内存 */
    shared_ipc = (struct shared_msg_queue *)SHARED_MEM_BASE;
    
    /* 初始化 IPC 机制 */
    init_ipc_mechanism();
    
    /* 启动从处理器 */
    start_secondary_processor();
    
    /* 主处理器应用逻辑 */
    main_processor_thread(NULL, NULL, NULL);
}

/* 从处理器启动代码 */
void secondary_main(void)
{
    /* 等待主处理器初始化完成 */
    wait_for_main_processor_ready();
    
    /* 从处理器应用逻辑 */
    secondary_processor_thread(NULL, NULL, NULL);
}
```

---

## SMP vs AMP 对比

| 特性 | SMP（对称多处理） | AMP（非对称多处理） |
|------|---------------------|---------------------|
| **操作系统实例** | 单个操作系统实例 | 多个独立的操作系统实例 |
| **处理器角色** | 所有处理器角色相同 | 不同处理器具有不同角色 |
| **内存访问** | 统一内存地址空间 | 可能隔离或部分共享 |
| **调度** | 全局统一调度 | 每个处理器独立调度 |
| **线程迁移** | 线程可以在任何处理器上运行 | 线程绑定到特定处理器 |
| **同步** | 使用自旋锁、互斥锁等 | 使用 IPC 机制 |
| **实现复杂度** | 内核提供支持 | 需要应用层实现 |
| **性能** | 负载均衡，性能最优 | 专用任务，性能可预测 |
| **适用场景** | 通用多核系统 | 异构多核、专用系统 |
| **开发难度** | 相对简单 | 较复杂，需要协调 |

### 选择建议

#### 选择 SMP 的场景

1. **同构多核系统**：所有处理器相同，需要充分利用多核性能
2. **通用应用**：应用需要灵活的线程调度和负载均衡
3. **开发效率**：希望减少开发复杂度，利用内核提供的功能
4. **实时性要求**：需要快速的任务切换和响应

#### 选择 AMP 的场景

1. **异构多核系统**：处理器架构不同，需要不同的操作系统
2. **专用任务**：不同处理器处理不同类型的任务（如 AP + CP）
3. **隔离要求**：需要处理器之间的隔离（如安全与非安全）
4. **现有系统**：集成现有的不同处理器上的软件栈

---

## 配置和使用

### SMP 配置

#### 1. 启用 SMP

在 `prj.conf` 中启用 SMP：

```kconfig
# 启用 SMP 支持
CONFIG_SMP=y

# 启用 USE_SWITCH（SMP 的依赖）
CONFIG_USE_SWITCH=y

# 设置最大 CPU 数量
CONFIG_MP_MAX_NUM_CPUS=2
```

#### 2. CPU 掩码配置

```kconfig
# 启用 CPU 掩码功能
CONFIG_SCHED_CPU_MASK=y

# 启用 IPI 级联（可选）
CONFIG_SCHED_IPI_CASCADE=n

# 启用 IPI 优化（可选）
CONFIG_IPI_OPTIMIZE=y
```

#### 3. 其他相关配置

```kconfig
# 内核一致性（SMP 推荐）
CONFIG_KERNEL_COHERENCE=y

# 票据自旋锁（可选，实验性）
CONFIG_TICKET_SPINLOCKS=y
```

### AMP 配置

#### 1. 多镜像构建

为不同的处理器构建不同的镜像：

```bash
# 构建主处理器镜像
west build -b board_main --pristine -DCONFIG_BOARD_TARGET="main"

# 构建从处理器镜像
west build -b board_secondary --pristine -DCONFIG_BOARD_TARGET="secondary"
```

#### 2. 共享内存配置

在设备树中定义共享内存：

```dts
/ {
    reserved-memory {
        #address-cells = <1>;
        #size-cells = <1>;
        ranges;

        shared_mem: shared-memory@38000000 {
            compatible = "shared-memory";
            reg = <0x38000000 0x10000>;
            no-map;
        };
    };
};
```

#### 3. IPC 配置

配置 IPC 机制：

```kconfig
# 启用消息队列
CONFIG_MSGQ=y

# 配置共享内存大小
CONFIG_SHARED_MEM_SIZE=0x10000
```

---

## 代码示例

### SMP 示例

#### 1. 基本 SMP 应用

```c
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

#define STACK_SIZE 1024
#define PRIORITY 5

K_THREAD_DEFINE(thread0, STACK_SIZE, thread0_entry, NULL, NULL, NULL,
              PRIORITY, 0, 0);
K_THREAD_DEFINE(thread1, STACK_SIZE, thread1_entry, NULL, NULL, NULL,
              PRIORITY, 0, 0);

void thread0_entry(void *arg1, void *arg2, void *arg3)
{
    int cpu_id = arch_curr_cpu()->id;
    
    printk("Thread 0 running on CPU %d\n", cpu_id);
    
    while (1) {
        printk("Thread 0 on CPU %d\n", cpu_id);
        k_sleep(K_SECONDS(1));
    }
}

void thread1_entry(void *arg1, void *arg2, void *arg3)
{
    int cpu_id = arch_curr_cpu()->id;
    
    printk("Thread 1 running on CPU %d\n", cpu_id);
    
    while (1) {
        printk("Thread 1 on CPU %d\n", cpu_id);
        k_sleep(K_SECONDS(1));
    }
}

void main(void)
{
    printk("SMP Demo started\n");
    printk("Number of CPUs: %d\n", arch_num_cpus());
    
    /* 线程将自动在不同 CPU 上运行 */
}
```

#### 2. CPU 掩码示例

```c
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

#define STACK_SIZE 1024
#define PRIORITY 5

K_THREAD_DEFINE(thread0, STACK_SIZE, thread0_entry, NULL, NULL, NULL,
              PRIORITY, 0, 0);
K_THREAD_DEFINE(thread1, STACK_SIZE, thread1_entry, NULL, NULL, NULL,
              PRIORITY, 0, 0);

void thread0_entry(void *arg1, void *arg2, void *arg3)
{
    /* 将线程绑定到 CPU 0 */
    k_thread_cpu_mask_clear(k_current_get());
    k_thread_cpu_mask_enable(k_current_get(), 0);
    
    printk("Thread 0 pinned to CPU 0\n");
    
    while (1) {
        printk("Thread 0 on CPU 0\n");
        k_sleep(K_SECONDS(1));
    }
}

void thread1_entry(void *arg1, void *arg2, void *arg3)
{
    /* 将线程绑定到 CPU 1 */
    k_thread_cpu_mask_clear(k_current_get());
    k_thread_cpu_mask_enable(k_current_get(), 1);
    
    printk("Thread 1 pinned to CPU 1\n");
    
    while (1) {
        printk("Thread 1 on CPU 1\n");
        k_sleep(K_SECONDS(1));
    }
}

void main(void)
{
    printk("CPU Mask Demo started\n");
    printk("Number of CPUs: %d\n", arch_num_cpus());
}
```

#### 3. 自旋锁示例

```c
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

#define STACK_SIZE 1024
#define PRIORITY 5

static struct k_spinlock my_spinlock;
static int shared_counter = 0;

K_THREAD_DEFINE(thread0, STACK_SIZE, thread0_entry, NULL, NULL, NULL,
              PRIORITY, 0, 0);
K_THREAD_DEFINE(thread1, STACK_SIZE, thread1_entry, NULL, NULL, NULL,
              PRIORITY, 0, 0);

void thread0_entry(void *arg1, void *arg2, void *arg3)
{
    while (1) {
        k_spinlock_key_t key = k_spin_lock(&my_spinlock);
        
        shared_counter++;
        printk("Thread 0: counter = %d\n", shared_counter);
        
        k_spin_unlock(&my_spinlock, key);
        k_sleep(K_MSEC(100));
    }
}

void thread1_entry(void *arg1, void *arg2, void *arg3)
{
    while (1) {
        k_spinlock_key_t key = k_spin_lock(&my_spinlock);
        
        shared_counter++;
        printk("Thread 1: counter = %d\n", shared_counter);
        
        k_spin_unlock(&my_spinlock, key);
        k_sleep(K_MSEC(100));
    }
}

void main(void)
{
    k_spinlock_init(&my_spinlock);
    
    printk("Spinlock Demo started\n");
    printk("Number of CPUs: %d\n", arch_num_cpus());
}
```

### AMP 示例

#### 1. 基本 AMP 应用

```c
/* 主处理器代码 */
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

#define SHARED_MEM_BASE 0x38010000
#define SHARED_MSG_QUEUE_SIZE 10

struct shared_msg_queue {
    struct k_msgq msgq;
    char buffer[SHARED_MSG_QUEUE_SIZE][32];
};

void main_processor_thread(void *arg1, void *arg2, void *arg3)
{
    struct shared_msg_queue *shared_ipc = 
        (struct shared_msg_queue *)SHARED_MEM_BASE;
    char msg[32];
    
    /* 初始化共享消息队列 */
    k_msgq_init(&shared_ipc->msgq, shared_ipc->buffer, 
                sizeof(msg[0]), SHARED_MSG_QUEUE_SIZE);
    
    printk("Main processor: IPC initialized\n");
    
    while (1) {
        /* 发送消息到从处理器 */
        sprintf(msg, "Hello from main CPU");
        k_msgq_put(&shared_ipc->msgq, msg, K_FOREVER);
        
        k_sleep(K_SECONDS(1));
    }
}

void main(void)
{
    printk("Main processor started\n");
    
    main_processor_thread(NULL, NULL, NULL);
}

/* 从处理器代码 */
#include <zephyr/kernel.h>
#include <zephyr/sys/printk.h>

#define SHARED_MEM_BASE 0x38010000

struct shared_msg_queue {
    struct k_msgq msgq;
    char buffer[10][32];
};

void secondary_processor_thread(void *arg1, void *arg2, void *arg3)
{
    struct shared_msg_queue *shared_ipc = 
        (struct shared_msg_queue *)SHARED_MEM_BASE;
    char msg[32];
    
    printk("Secondary processor: waiting for messages\n");
    
    while (1) {
        /* 从主处理器接收消息 */
        k_msgq_get(&shared_ipc->msgq, msg, K_FOREVER);
        printk("Secondary received: %s\n", msg);
    }
}

void main(void)
{
    printk("Secondary processor started\n");
    
    secondary_processor_thread(NULL, NULL, NULL);
}
```

#### 2. 共享内存同步

```c
/* 共享内存定义 */
struct shared_data {
    int counter;
    struct k_sem sem;
};

/* 主处理器代码 */
void main_processor_thread(void *arg1, void *arg2, void *arg3)
{
    struct shared_data *shared = 
        (struct shared_data *)SHARED_MEM_BASE;
    
    /* 初始化信号量 */
    k_sem_init(&shared->sem, 1, 1);
    
    while (1) {
        k_sem_take(&shared->sem, K_FOREVER);
        
        shared->counter++;
        printk("Main: counter = %d\n", shared->counter);
        
        k_sem_give(&shared->sem);
        k_sleep(K_MSEC(100));
    }
}

/* 从处理器代码 */
void secondary_processor_thread(void *arg1, void *arg2, void *arg3)
{
    struct shared_data *shared = 
        (struct shared_data *)SHARED_MEM_BASE;
    
    while (1) {
        k_sem_take(&shared->sem, K_FOREVER);
        
        shared->counter++;
        printk("Secondary: counter = %d\n", shared->counter);
        
        k_sem_give(&shared->sem);
        k_sleep(K_MSEC(100));
    }
}
```

---

## 最佳实践

### SMP 最佳实践

#### 1. 使用自旋锁而非 irq_lock

在 SMP 环境中，优先使用自旋锁而非传统的 `irq_lock`：

```c
/* 推荐：使用自旋锁 */
k_spinlock_key_t key = k_spin_lock(&my_spinlock);
/* 临界区 */
k_spin_unlock(&my_spinlock, key);

/* 避免：使用 irq_lock（性能较差） */
unsigned int key = irq_lock();
/* 临界区 */
irq_unlock(key);
```

#### 2. 避免自旋锁递归

自旋锁不能递归使用，否则会导致死锁：

```c
/* 错误：递归使用自旋锁 */
void my_function(void)
{
    k_spinlock_key_t key = k_spin_lock(&my_spinlock);
    
    /* 调用另一个函数也使用同一个锁 */
    another_function();  /* 死锁！ */
    
    k_spin_unlock(&my_spinlock, key);
}

/* 正确：使用不同的自旋锁 */
void my_function(void)
{
    k_spinlock_key_t key1 = k_spin_lock(&spinlock1);
    k_spinlock_key_t key2 = k_spin_lock(&spinlock2);
    
    /* 临界区 */
    
    k_spin_unlock(&spinlock2, key2);
    k_spin_unlock(&spinlock1, key1);
}
```

#### 3. 合理使用 CPU 掩码

仅在必要时使用 CPU 掩码，让调度器进行负载均衡：

```c
/* 仅在需要时绑定线程到特定 CPU */
void setup_realtime_thread(void)
{
    /* 实时线程绑定到 CPU 0 */
    k_thread_cpu_mask_clear(realtime_thread);
    k_thread_cpu_mask_enable(realtime_thread, 0);
}

/* 普通线程让调度器决定 */
void setup_normal_thread(void)
{
    /* 不设置 CPU 掩码，让调度器决定 */
    k_thread_create(normal_thread, stack, stack_size,
                normal_thread_entry, NULL, NULL, NULL,
                priority, options, delay);
}
```

#### 4. 启用 IPI 优化

在支持 IPI 的系统上，启用 IPI 优化以减少中断数量：

```kconfig
# 在 prj.conf 中
CONFIG_IPI_OPTIMIZE=y
```

#### 5. 使用每 CPU 数据

合理使用每 CPU 数据，减少锁争用：

```c
/* 定义每 CPU 数据 */
struct per_cpu_data {
    int counter;
};

struct per_cpu_data cpu_data[CONFIG_MP_MAX_NUM_CPUS];

void thread_entry(void *arg1, void *arg2, void *arg3)
{
    int cpu_id = arch_curr_cpu()->id;
    
    /* 使用每 CPU 数据，无需锁 */
    cpu_data[cpu_id].counter++;
    
    printk("CPU %d: counter = %d\n", cpu_id, cpu_data[cpu_id].counter);
}
```

### AMP 最佳实践

#### 1. 设计清晰的接口

在处理器之间定义清晰的通信接口：

```c
/* 定义共享数据结构 */
struct ipc_interface {
    /* 命令类型 */
    enum {
        CMD_PING,
        CMD_DATA,
        CMD_SHUTDOWN
    } cmd_type;
    
    /* 数据 */
    union {
        struct {
            int value;
        } ping_data;
        struct {
            void *data;
            size_t size;
        } msg_data;
    } cmd_data;
    
    /* 同步 */
    struct k_sem sem;
};
```

#### 2. 使用高效的 IPC 机制

选择合适的 IPC 机制：

```c
/* 小消息：使用消息队列 */
struct k_msgq msgq;

/* 大数据：使用共享内存 */
void *shared_buffer;

/* 事件通知：使用信号量 */
struct k_sem event_sem;
```

#### 3. 实现错误处理和恢复

实现健壮的错误处理和恢复机制：

```c
void ipc_send(struct ipc_interface *ipc, void *data, size_t size)
{
    int ret;
    
    ret = k_msgq_put(&ipc->msgq, data, K_MSEC(100));
    if (ret == -EAGAIN) {
        /* 消息队列满，处理错误 */
        printk("IPC: message queue full\n");
        return -1;
    }
    
    return 0;
}
```

#### 4. 协调启动顺序

确保处理器按正确的顺序启动：

```c
/* 主处理器启动代码 */
void main(void)
{
    /* 初始化共享内存 */
    init_shared_memory();
    
    /* 初始化 IPC 机制 */
    init_ipc();
    
    /* 设置启动标志 */
    set_boot_flag(BOOT_READY);
    
    /* 启动从处理器 */
    start_secondary_processor();
    
    /* 等待从处理器就绪 */
    wait_for_secondary_ready();
    
    /* 主应用逻辑 */
    main_application();
}

/* 从处理器启动代码 */
void secondary_main(void)
{
    /* 等待主处理器就绪 */
    wait_for_main_ready();
    
    /* 初始化 IPC 客户端 */
    init_ipc_client();
    
    /* 设置就绪标志 */
    set_ready_flag(SECONDARY_READY);
    
    /* 从应用逻辑 */
    secondary_application();
}
```

#### 5. 监控和调试

实现监控和调试机制：

```c
/* 定义监控结构 */
struct ipc_stats {
    uint32_t messages_sent;
    uint32_t messages_received;
    uint32_t errors;
};

struct ipc_stats ipc_stats;

void update_stats(bool is_send, bool success)
{
    if (is_send) {
        if (success) {
            ipc_stats.messages_sent++;
        } else {
            ipc_stats.errors++;
        }
    } else {
        if (success) {
            ipc_stats.messages_received++;
        } else {
            ipc_stats.errors++;
        }
    }
}

void print_stats(void)
{
    printk("IPC Statistics:\n");
    printk("  Sent: %d\n", ipc_stats.messages_sent);
    printk("  Received: %d\n", ipc_stats.messages_received);
    printk("  Errors: %d\n", ipc_stats.errors);
}
```

---

## 总结

Zephyr 提供了对 SMP 和 AMP 两种多处理器架构的支持：

### SMP 优势

1. **透明性**：应用程序代码无需特殊处理
2. **负载均衡**：自动在处理器间分配任务
3. **统一调度**：全局调度器管理所有处理器
4. **开发效率**：减少开发复杂度

### AMP 优势

1. **灵活性**：支持异构多核系统
2. **隔离性**：处理器之间可以完全隔离
3. **专用性**：每个处理器可以专门处理特定任务
4. **兼容性**：可以集成现有的不同软件栈

### 选择建议

- **同构多核、通用应用**：选择 SMP
- **异构多核、专用任务**：选择 AMP
- **开发效率优先**：选择 SMP
- **性能可预测性优先**：选择 AMP

通过理解这两种架构的特点和适用场景，开发者可以为不同的硬件平台和应用需求做出最佳选择，构建更高效、更可靠的嵌入式系统。
