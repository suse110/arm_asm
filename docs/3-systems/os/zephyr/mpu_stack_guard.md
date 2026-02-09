# CONFIG_MPU_STACK_GUARD 配置项详解

## 1. 功能概述

**CONFIG_MPU_STACK_GUARD** 是 Zephyr RTOS 中一个重要的配置项，它通过 ARM 处理器的内存保护单元（MPU）实现线程栈溢出保护功能。当启用此配置项时，系统会为每个线程栈创建一个特殊的保护区域，当线程栈溢出时，会触发 MPU 异常，从而实现栈溢出的检测和保护。

## 2. 工作原理

### 2.1 基本原理

MPU_STACK_GUARD 的工作原理基于以下几点：

1. **保护区域创建**：在每个线程栈的底部（或特权模式栈的底部）创建一个特殊的 MPU 保护区域
2. **权限设置**：将该保护区域配置为只读（`K_MEM_PARTITION_P_RO_U_NA`）
3. **异常触发**：当栈溢出时，线程会尝试写入这个保护区域，从而触发 MPU 异常
4. **异常处理**：系统捕获 MPU 异常并进行相应处理，通常是终止线程或系统

### 2.2 保护区域大小

保护区域的大小由 `MPU_GUARD_ALIGN_AND_SIZE` 宏定义，对于支持 FPU 共享的系统，保护区域的大小会根据需要进行调整，以容纳 FPU 上下文。这是通过 `z_arm_mpu_stack_guard_and_fpu_adjust()` 函数实现的。

### 2.3 保护区域位置

- **特权线程**：保护区域位于普通线程栈的底部
- **用户线程**：保护区域位于特权模式栈的底部，因为用户模式栈已经有自己的内存区域定义

### 2.4 内存布局示例

以下是启用 MPU_STACK_GUARD 后线程栈的内存布局示例：

#### 2.4.1 特权线程内存布局

```
+------------------------+
|                        |
|  线程栈空间             |
|  (高地址)               |
|                        |
+------------------------+
|  栈顶指针 (SP)          |
+------------------------+
|                        |
|  栈使用区域             |
|                        |
+------------------------+
|  未使用栈空间            |
+------------------------+
|  MPU 保护区域           |
|  (只读, K_MEM_PARTITION_P_RO_U_NA) |
+------------------------+
|                        |
|  其他内存区域           |
|  (低地址)               |
|                        |
+------------------------+
```

#### 2.4.2 用户线程内存布局

```
+------------------------+
|                        |
|  用户模式栈空间          |
|  (高地址)               |
|                        |
+------------------------+
|  用户模式栈顶指针        |
+------------------------+
|                        |
|  用户模式栈使用区域      |
|                        |
+------------------------+
|  未使用用户模式栈空间    |
+------------------------+
|  特权模式栈空间          |
+------------------------+
|  特权模式栈顶指针        |
+------------------------+
|                        |
|  特权模式栈使用区域      |
|                        |
+------------------------+
|  未使用特权模式栈空间    |
+------------------------+
|  MPU 保护区域           |
|  (只读, K_MEM_PARTITION_P_RO_U_NA) |
+------------------------+
|                        |
|  其他内存区域           |
|  (低地址)               |
|                        |
+------------------------+
```

#### 2.4.3 栈溢出场景

当线程栈发生溢出时，内存访问会触及 MPU 保护区域：

```
+------------------------+
|                        |
|  线程栈空间             |
|  (高地址)               |
|                        |
+------------------------+
|  栈顶指针 (SP)          |
+------------------------+
|                        |
|  栈使用区域             |
|                        |
+------------------------+
|  栈溢出区域             |
|  (栈溢出到这里)          |
+------------------------+
|  MPU 保护区域           |
|  (尝试写入，触发异常)    |
+------------------------+
|                        |
|  其他内存区域           |
|  (低地址)               |
|                        |
+------------------------+
```

当栈溢出发生时，线程会尝试写入只读的 MPU 保护区域，这会立即触发 MPU 异常，系统会捕获并处理这个异常，从而防止栈溢出导致的进一步破坏。

## 3. 实现方式

### 3.1 配置项定义

CONFIG_MPU_STACK_GUARD 配置项在以下文件中定义：

```c
// zephyr/arch/arm/core/mpu/Kconfig
config MPU_STACK_GUARD
    bool "Thread Stack Guards"
    help
      Enable Thread Stack Guards via MPU
```

### 3.2 核心实现代码

MPU_STACK_GUARD 的核心实现位于 `arm_core_mpu.c` 文件中，主要包括以下几个部分：

#### 3.2.1 静态栈保护配置

在系统初始化时，为静态栈（如主栈）配置 MPU 保护区域：

```c
// zephyr/arch/arm/core/mpu/arm_core_mpu.c
#if !defined(CONFIG_MULTITHREADING) && defined(CONFIG_MPU_STACK_GUARD)
    /* Main stack MPU guard to detect overflow.
     * Note:
     * FPU_SHARING and USERSPACE are not supported features
     * under CONFIG_MULTITHREADING=n, so the MPU guard (if
     * exists) is reserved aside of CONFIG_MAIN_STACK_SIZE
     * and there is no requirement for larger guard area (FP
     * context is not stacked).
     */
    {
        .start = (uint32_t)z_main_stack,
        .size = (uint32_t)MPU_GUARD_ALIGN_AND_SIZE,
        .attr = K_MEM_PARTITION_P_RO_U_NA,
    },
#endif /* !CONFIG_MULTITHREADING && CONFIG_MPU_STACK_GUARD */
```

#### 3.2.2 动态栈保护配置

在线程上下文切换时，为当前线程配置动态 MPU 保护区域：

```c
// zephyr/arch/arm/core/mpu/arm_core_mpu.c
#if defined(CONFIG_MPU_STACK_GUARD)
    /* Define a stack guard region for either the thread stack or the
     * supervisor/privilege mode stack depending on the type of thread
     * being mapped.
     */

    /* Privileged stack guard */
    uintptr_t guard_start;
    size_t guard_size = MPU_GUARD_ALIGN_AND_SIZE;

#if defined(CONFIG_FPU) && defined(CONFIG_FPU_SHARING)
    guard_size = z_arm_mpu_stack_guard_and_fpu_adjust(thread);
#endif

#if defined(CONFIG_USERSPACE)
    if (thread->arch.priv_stack_start) {
        /* A K_USER thread has the stack guard protecting the privilege
         * stack and not on the usermode stack because the user mode
         * stack already has its own defined memory region.
         */
        guard_start = thread->arch.priv_stack_start - guard_size;

        __ASSERT((uintptr_t)&z_priv_stacks_ram_start <= guard_start,
        "Guard start: (0x%lx) below privilege stacks boundary: (%p)",
        guard_start, z_priv_stacks_ram_start);
    } else
#endif /* CONFIG_USERSPACE */
    {
        /* A supervisor thread only has the normal thread stack to
         * protect with a stack guard.
         */
        guard_start = thread->stack_info.start - guard_size;
#ifdef CONFIG_USERSPACE
        __ASSERT((uintptr_t)thread->stack_obj == guard_start,
            "Guard start (0x%lx) not beginning at stack object (%p)\n",
            guard_start, thread->stack_obj);
#endif /* CONFIG_USERSPACE */
    }

    __ASSERT(region_num < _MAX_DYNAMIC_MPU_REGIONS_NUM,
        "Out-of-bounds error for dynamic region map.");

    dynamic_regions[region_num].start = guard_start;
    dynamic_regions[region_num].size = guard_size;
    dynamic_regions[region_num].attr = K_MEM_PARTITION_P_RO_U_NA;

    region_num++;
#endif /* CONFIG_MPU_STACK_GUARD */
```

### 3.3 相关宏定义

```c
// 最大动态 MPU 区域数量
#if defined(CONFIG_USERSPACE)
#define _MAX_DYNAMIC_MPU_REGIONS_NUM \
    CONFIG_MAX_DOMAIN_PARTITIONS + /* User thread stack */ 1 + \
    (IS_ENABLED(CONFIG_MPU_STACK_GUARD) ? 1 : 0)
#else
#define _MAX_DYNAMIC_MPU_REGIONS_NUM \
    (IS_ENABLED(CONFIG_MPU_STACK_GUARD) ? 1 : 0)
#endif /* CONFIG_USERSPACE */
```

## 4. 相关代码位置

| 文件路径 | 功能描述 |
|---------|---------|
| zephyr/arch/arm/core/mpu/Kconfig | CONFIG_MPU_STACK_GUARD 配置项定义 |
| zephyr/arch/arm/core/mpu/arm_core_mpu.c | MPU_STACK_GUARD 核心实现 |
| zephyr/arch/arm/core/mpu/arm_core_mpu_dev.h | MPU 设备相关头文件 |
| zephyr/arch/arm/core/Kconfig | ARM 核心配置，包括栈保护相关选项 |

## 5. 配置和使用

### 5.1 启用 CONFIG_MPU_STACK_GUARD

要启用 MPU_STACK_GUARD 功能，需要在项目配置中添加以下选项：

```c
# 启用 ARM MPU 支持
CONFIG_ARM_MPU=y

# 启用 MPU 栈保护
CONFIG_MPU_STACK_GUARD=y

# 或者通过启用硬件栈保护来间接启用 MPU_STACK_GUARD
CONFIG_HW_STACK_PROTECTION=y
```

### 5.2 与其他配置项的关系

- **CONFIG_ARM_MPU**：必须启用，因为 MPU_STACK_GUARD 依赖于 MPU 功能
- **CONFIG_HW_STACK_PROTECTION**：启用此选项会自动启用 MPU_STACK_GUARD（如果未启用其他类型的栈保护）
- **CONFIG_FPU_SHARING**：当启用此选项时，MPU_STACK_GUARD 会调整保护区域的大小，以容纳 FPU 上下文
- **CONFIG_USERSPACE**：当启用此选项时，MPU_STACK_GUARD 会为用户线程的特权模式栈提供保护

## 6. 优势和限制

### 6.1 优势

- **硬件级保护**：基于 MPU 实现，提供硬件级别的栈溢出保护
- **实时检测**：能够实时检测栈溢出，而不是在栈溢出后才发现
- **精确位置**：可以精确捕获栈溢出的位置和时间
- **低开销**：相比于软件栈检查，MPU 栈保护的运行时开销更低

### 6.2 限制

- **硬件依赖**：仅适用于具有 MPU 功能的 ARM 处理器
- **内存开销**：每个线程栈都需要额外的保护区域，增加了内存使用
- **MPU 区域限制**：受限于处理器的 MPU 区域数量
- **对齐要求**：保护区域的大小和地址需要满足 MPU 的对齐要求

## 7. 应用场景

MPU_STACK_GUARD 适用于以下场景：

- **安全关键应用**：需要高可靠性和安全性的应用，如医疗设备、工业控制系统等
- **复杂系统**：线程数量多、栈使用复杂的系统
- **资源受限设备**：需要低开销栈保护的资源受限设备
- **开发和调试**：在开发和调试阶段，用于检测和定位栈溢出问题
- **配置建议**：在为线程配置栈大小时，应考虑 MPU 保护区域的大小，确保实际可用栈空间满足应用需求。计算公式为：```
实际可用栈大小 = 配置的栈大小 - MPU_GUARD_ALIGN_AND_SIZE
```
## 8. 总结

CONFIG_MPU_STACK_GUARD 是 Zephyr RTOS 中一种基于 MPU 的高效栈保护机制，通过在线程栈底部创建只读保护区域，实现了栈溢出的硬件级检测和保护。它为系统提供了额外的安全保障，特别是在安全关键应用中，能够有效防止栈溢出导致的系统崩溃和安全漏洞。

虽然 MPU_STACK_GUARD 增加了一定的内存开销，并且受限于硬件 MPU 的能力，但其提供的实时、精确的栈溢出检测功能，使其成为 Zephyr RTOS 中一种重要的安全特性。对于需要高可靠性和安全性的应用，启用 MPU_STACK_GUARD 是一种明智的选择。