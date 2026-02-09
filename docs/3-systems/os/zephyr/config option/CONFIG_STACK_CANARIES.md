# CONFIG_STACK_CANARIES 配置项详解

## 1. 功能概述

**CONFIG_STACK_CANARIES**（栈保护金丝雀）是 Zephyr RTOS 中一种重要的栈溢出检测机制，基于编译器的栈保护功能，通过在函数栈帧中插入特殊的 "金丝雀" 值并在函数返回时检查其完整性，实现栈溢出的及时检测和告警。

核心功能包括：

1. **栈溢出检测**：在函数栈帧中插入固定或随机的金丝雀值，在函数返回时检查该值是否被篡改
2. **及时告警处理**：一旦检测到金丝雀被破坏，立即触发异常处理，如打印错误日志、系统复位等
3. **问题根源定位**：溢出发生时，输出错误原因、栈地址等关键信息，帮助快速定位问题

> 类比理解：就像在仓库（栈）的门口放一个 "哨兵"（金丝雀），如果仓库被非法闯入（栈溢出），哨兵会第一时间报警，而不是等仓库被洗劫一空（程序崩溃）。

## 2. 工作原理

### 2.1 基本原理

CONFIG_STACK_CANARIES 是基于编译器栈保护机制的实现，工作原理如下：

1. **金丝雀值初始化**：在系统启动时（`z_cstart()` 函数），初始化全局金丝雀值 `__stack_chk_guard`
2. **编译器注入检查**：编译器在函数栈帧中自动插入金丝雀值和检查代码
3. **异常触发**：当函数返回时，编译器生成的代码检查金丝雀值是否被修改，若被修改则触发 `__stack_chk_fail()` 函数
4. **异常处理**：`__stack_chk_fail()` 函数调用 `_StackCheckHandler()` 执行异常处理逻辑

#### 2.1.1 详细执行流程

**步骤 1：金丝雀值初始化**
- 在系统启动的 `z_cstart()` 函数中，通过 `z_early_rand_get()` 获取随机值
- 将随机值赋值给全局变量 `__stack_chk_guard`
- 对 `__stack_chk_guard` 进行左移 8 位操作，增加随机性

**步骤 2：函数执行前的准备**
- 编译器在函数入口处生成代码，将 `__stack_chk_guard` 的值复制到函数栈帧中的金丝雀位置
- 金丝雀值被放置在函数栈帧的特定位置（通常在局部变量和被调用者保存的寄存器之间）

**步骤 3：函数执行**
- 函数正常执行，使用局部变量
- 如果发生栈溢出，局部变量的写入操作会覆盖金丝雀值

**步骤 4：函数返回前的检查**
- 编译器在函数返回前生成代码，读取栈帧中的金丝雀值
- 将读取的值与全局 `__stack_chk_guard` 进行比较
- 如果值不匹配，说明栈溢出发生，触发 `__stack_chk_fail()` 函数

**步骤 5：异常处理**
- `__stack_chk_fail()` 函数被调用
- `__stack_chk_fail()` 通过函数别名机制指向 `_StackCheckHandler()` 函数
- `_StackCheckHandler()` 调用 `z_except_reason(K_ERR_STACK_CHK_FAIL)` 触发致命错误处理
- 系统执行致命错误处理，通常会打印错误信息并终止执行

### 2.2 内存布局示例

以下是启用 CONFIG_STACK_CANARIES 后函数栈帧的内存布局：

```
+------------------------+
|                        |
|  函数返回地址           |
|  (高地址)               |
+------------------------+
|  局部变量               |
+------------------------+
|  ...                   |
+------------------------+
|  金丝雀值               |
|  (随机值，__stack_chk_guard) |
+------------------------+
|  被调用者保存的寄存器     |
|  (低地址)               |
+------------------------+
```

### 2.3 编译器生成的检查代码示例

当启用 CONFIG_STACK_CANARIES 时，编译器会在函数中自动插入金丝雀值检查代码。以下是一个简化的示例：

**原始 C 代码**：
```c
void vulnerable_function(void) {
    char buffer[16];
    // 可能的缓冲区溢出
    memset(buffer, 'A', 100);
}
```

**编译器生成的代码（伪汇编）**：
```asm
vulnerable_function:
    // 函数入口：保存被调用者寄存器
    push    {r4, lr}
    
    // 步骤 1：分配栈空间（包括局部变量和金丝雀值）
    sub     sp, sp, #32  // 分配 32 字节栈空间
    
    // 步骤 2：复制金丝雀值到栈帧
    ldr     r4, =__stack_chk_guard  // 加载金丝雀值地址
    ldr     r4, [r4]                // 读取金丝雀值
    str     r4, [sp, #16]           // 存储金丝雀值到栈帧
    
    // 步骤 3：函数实际执行
    sub     r3, sp, #16             // 计算 buffer 地址
    mov     r2, #100                // memset 长度
    mov     r1, #65                 // 'A' 字符
    mov     r0, r3                  // buffer 地址
    bl      memset                  // 调用 memset
    
    // 步骤 4：函数返回前检查金丝雀值
    ldr     r3, =__stack_chk_guard  // 加载金丝雀值地址
    ldr     r3, [r3]                // 读取原始金丝雀值
    ldr     r4, [sp, #16]           // 读取栈帧中的金丝雀值
    cmp     r3, r4                  // 比较两个值
    beq     .L1                     // 如果相等，跳转到正常返回
    
    // 步骤 5：金丝雀值不匹配，触发栈检查失败
    bl      __stack_chk_fail        // 调用栈检查失败处理函数
    
.L1:
    // 步骤 6：正常返回
    add     sp, sp, #32             // 恢复栈指针
    pop     {r4, pc}                // 恢复寄存器并返回
```

### 2.4 __stack_chk_fail 的调用过程

当栈溢出发生时，金丝雀值被覆盖，编译器生成的检查代码会调用 `__stack_chk_fail()` 函数。以下是详细的调用流程：

**调用链**：
1. **编译器生成的检查代码** → 检测到金丝雀值不匹配
2. **__stack_chk_fail()** → 编译器自动生成的函数别名
3. **_StackCheckHandler()** → 实际的栈检查失败处理函数
4. **z_except_reason(K_ERR_STACK_CHK_FAIL)** → 触发致命错误处理
5. **系统致命错误处理** → 打印错误信息并终止执行

**关键实现细节**：
- `__stack_chk_fail()` 是通过 `FUNC_ALIAS(_StackCheckHandler, __stack_chk_fail, void);` 定义的函数别名
- 当 `__stack_chk_fail()` 被调用时，实际执行的是 `_StackCheckHandler()` 函数
- `_StackCheckHandler()` 函数调用 `z_except_reason(K_ERR_STACK_CHK_FAIL)` 触发致命错误
- 致命错误处理会打印错误原因、当前线程信息等，然后终止系统执行

### 2.5 栈溢出场景

当函数栈发生溢出时，内存访问会覆盖金丝雀值：

```
+------------------------+
|                        |
|  函数返回地址           |
|  (高地址)               |
+------------------------+
|  局部变量               |
+------------------------+
|  栈溢出区域             |
|  (缓冲区溢出到这里)       |
+------------------------+
|  金丝雀值               |
|  (被覆盖，检测到溢出)    |
+------------------------+
|  被调用者保存的寄存器     |
|  (低地址)               |
+------------------------+
```

当函数返回时，编译器生成的代码会检查金丝雀值是否被修改，如果被修改则触发 `__stack_chk_fail()` 函数，从而检测到栈溢出。

## 3. 实现方式

### 3.1 配置项定义

CONFIG_STACK_CANARIES 配置项在 Zephyr 的 Kconfig 系统中定义，主要配置项包括：

```c
// 核心配置项
CONFIG_STACK_CANARIES=y          // 启用编译器栈保护金丝雀机制

// 可选配置项
CONFIG_STACK_CANARIES_TLS=y      // 使用线程本地存储存储金丝雀值
```

### 3.2 核心实现代码

栈金丝雀的核心实现位于以下文件中：

**1. 金丝雀值初始化（zephyr/kernel/init.c）**

```c
#ifdef CONFIG_STACK_CANARIES
uintptr_t stack_guard;

z_early_rand_get((uint8_t *)&stack_guard, sizeof(stack_guard));
__stack_chk_guard = stack_guard;
__stack_chk_guard <<= 8;
#endif	/* CONFIG_STACK_CANARIES */
```

**2. 异常处理（zephyr/kernel/compiler_stack_protect.c）**

```c
/**
 *
 * @brief Stack canary error handler
 *
 * This function is invoked when a stack canary error is detected.
 *
 * @return Does not return
 */
void _StackCheckHandler(void)
{
	/* Stack canary error is a software fatal condition; treat it as such.
	 */
	z_except_reason(K_ERR_STACK_CHK_FAIL);
	CODE_UNREACHABLE; /* LCOV_EXCL_LINE */
}

/* Global variable */

/*
 * Symbol referenced by GCC compiler generated code for canary value.
 * The canary value gets initialized in z_cstart().
 */
#ifdef CONFIG_STACK_CANARIES_TLS
__thread volatile uintptr_t __stack_chk_guard;
#elif CONFIG_USERSPACE
K_APP_DMEM(z_libc_partition) volatile uintptr_t __stack_chk_guard;
#else
__noinit volatile uintptr_t __stack_chk_guard;
#endif

/**
 *
 * @brief Referenced by GCC compiler generated code
 *
 * This routine is invoked when a stack canary error is detected, indicating
 * a buffer overflow or stack corruption problem.
 */
FUNC_ALIAS(_StackCheckHandler, __stack_chk_fail, void);
```

### 3.3 配置项说明

实际的 CONFIG_STACK_CANARIES 配置项及其相关选项：

| 配置项 | 描述 | 默认值 |
|--------|------|--------|
| `CONFIG_STACK_CANARIES` | 启用编译器栈保护金丝雀机制 | 无默认值，需显式启用 |
| `CONFIG_STACK_CANARIES_TLS` | 使用线程本地存储存储金丝雀值 | 无默认值 |
| `CONFIG_STACK_SENTINEL` | Zephyr 自己实现的栈保护机制（与 STACK_CANARIES 不同） | 无默认值 |

## 4. 相关代码位置

| 文件路径 | 功能描述 |
|---------|---------|
| zephyr/kernel/Kconfig | CONFIG_STACK_CANARIES 配置项定义 |
| zephyr/kernel/init.c | 金丝雀值初始化（z_cstart() 函数） |
| zephyr/kernel/compiler_stack_protect.c | 栈金丝雀异常处理实现 |
| zephyr/kernel/xip.c | XIP 模式下的金丝雀值处理 |

## 5. 配置和使用

### 5.1 基础配置

在项目的 `prj.conf` 文件中添加以下配置，启用栈金丝雀功能：

```c
# 核心：启用编译器栈保护金丝雀机制
CONFIG_STACK_CANARIES=y

# 可选：使用线程本地存储存储金丝雀值
# CONFIG_STACK_CANARIES_TLS=y
```

### 5.2 关键配置说明

| 配置项 | 作用 | 建议 |
|--------|------|------|
| `CONFIG_STACK_CANARIES` | 启用编译器栈保护金丝雀机制 | 推荐开启，提供基本的栈溢出保护 |
| `CONFIG_STACK_CANARIES_TLS` | 使用线程本地存储存储金丝雀值 | 多线程环境下推荐开启，提高安全性 |
| `CONFIG_STACK_SENTINEL` | Zephyr 自己实现的栈保护机制 | 可与 CONFIG_STACK_CANARIES 同时启用，提供双重保护 |

### 5.3 编译与运行

配置完成后，正常编译项目即可：

```bash
west build -b <你的板子型号> .
west flash  # 烧录固件
```

## 6. 与 MPU_STACK_GUARD 的对比

| 特性 | CONFIG_STACK_CANARIES | CONFIG_MPU_STACK_GUARD |
|------|----------------------|------------------------|
| 实现方式 | 编译器实现，在函数栈帧中插入金丝雀值检查 | 硬件实现，通过 MPU 保护区域 |
| 检测时机 | 函数返回时（编译器自动插入检查） | 实时检测（内存访问时） |
| 内存开销 | 每个函数栈帧少量开销（4/8 字节） | 每个任务需要额外的 MPU 保护区域 |
| 性能开销 | 函数调用/返回时少量开销 | 几乎无运行时开销 |
| 适用范围 | 所有架构（依赖编译器支持） | 仅适用于具有 MPU 的 ARM 处理器 |
| 检测精度 | 可检测栈缓冲区溢出 | 可检测所有栈溢出，包括单字节溢出 |
| 实现复杂度 | 简单，依赖编译器支持 | 复杂，依赖硬件 MPU |

## 7. 优势和限制

### 7.1 优势

- **跨平台支持**：基于编译器实现，适用于所有支持栈保护的编译器和架构
- **低内存开销**：每个函数栈帧仅需 4/8 字节额外空间
- **易于使用**：配置简单，只需启用 CONFIG_STACK_CANARIES
- **自动检测**：编译器自动插入检查代码，无需手动干预
- **实时性较好**：函数返回时立即检测，相比任务切换时检测更及时

### 7.2 限制

- **依赖编译器支持**：需要编译器支持栈保护功能（如 GCC 的 -fstack-protector 选项）
- **性能开销**：函数调用/返回时的检查会增加少量开销
- **无法检测所有溢出**：对于某些特殊类型的栈溢出可能无法检测
- **栈空间减少**：每个函数栈帧实际可用空间减少 4/8 字节
- **检测时机**：仅在函数返回时检测，不能实时检测所有内存访问

## 8. 典型使用场景

| 场景 | 是否启用 | 原因 |
|------|---------|------|
| 开发 / 调试阶段 | 必须启用 | 尽早发现栈溢出问题，降低后期调试成本 |
| 量产阶段（安全敏感） | 建议启用 | 防止栈溢出导致系统崩溃或安全漏洞 |
| 量产阶段（资源极度紧张） | 可选关闭 | 若经充分测试无栈溢出，可关闭以节省少量资源 |
| 涉及递归 / 动态内存操作的函数 | 强制启用 | 这类函数最易触发栈溢出，金丝雀是关键防护 |
| 无 MPU 硬件的平台 | 必须启用 | 作为主要的栈保护机制 |
| 所有架构和平台 | 推荐启用 | 提供基本的栈溢出保护，几乎无额外成本 |

## 9. 总结

CONFIG_STACK_CANARIES 是 Zephyr RTOS 中一种基于编译器栈保护机制的实现，通过在函数栈帧中插入金丝雀值并在函数返回时检查其完整性，实现栈溢出的检测和保护。

### 核心价值

- **低成本高收益**：仅需少量内存开销，即可提供有效的栈溢出检测
- **跨平台兼容**：基于编译器实现，适用于所有支持栈保护的架构
- **自动检测**：编译器自动插入检查代码，无需手动干预
- **及时检测**：函数返回时立即检测，相比任务切换时检测更及时

### 使用建议

- **开发调试阶段**：务必启用，尽早发现并解决栈溢出问题
- **量产阶段**：根据安全性要求和资源限制，决定是否启用
- **无 MPU 平台**：作为主要的栈保护机制，建议始终启用
- **有 MPU 平台**：可与 MPU_STACK_GUARD 配合使用，提供双重保护
- **所有项目**：推荐默认启用，提供基本的安全防护

CONFIG_STACK_CANARIES 是 Zephyr 开发中一种重要的调试和防护工具，能够有效提高系统的稳定性和可靠性，尤其是在开发复杂应用时，能够帮助开发者快速发现并解决栈溢出问题，减少后期调试成本。与 MPU_STACK_GUARD 相比，它虽然检测精度稍低，但具有跨平台、易配置的优势，是栈保护的重要补充机制。