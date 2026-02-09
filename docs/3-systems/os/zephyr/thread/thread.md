Zephyr内核中**线程优先级（Thread Priorities）** 的设计规则，可从5个关键维度理解：

### 1. 优先级数值规则：“数值越小，优先级越高”
线程优先级用整数表示，支持负数和非负数，核心逻辑是：  
- 数值更小的线程，获得CPU调度的优先级更高。  
  例：优先级4的线程A > 优先级7的线程B；优先级-2的线程C > 线程A和B（负数比所有非负数优先级更高）。


### 2. 线程类型：按优先级分为“协作式”和“可抢占式”
内核根据优先级数值的正负，将线程分为两类，调度规则完全不同：  
| 线程类型       | 优先级范围       | 核心调度逻辑                                                                 |
|----------------|------------------|------------------------------------------------------------------------------|
| 协作式线程     | 负数值（如-1、-5） | 一旦获得CPU（成为当前线程），会一直运行，直到主动执行“使自身不可就绪”的操作（如等待信号量、休眠）。 |
| 可抢占式线程   | 非负数值（如0、3） | 即使正在运行，若有**更高/同等优先级的可抢占式线程**或**任意协作式线程**进入“就绪态”，会被立即抢占CPU。 |


### 3. 优先级可动态修改：类型可切换
线程启动后，其初始优先级可随时调整，且支持跨类型切换：  
- 例：将可抢占式线程（优先级5，非负）的优先级改为-3（负数），它会变为协作式线程；反之亦然。


### 4. 调度器无“自主调整”：完全遵循应用配置
内核调度器不会基于“启发式”（如线程运行时长、资源占用）自动修改线程优先级，所有优先级的设置/变更，必须由应用通过API主动触发。


### 5. 优先级范围由配置项限定：支持灵活定制
内核虽支持“理论上无限”的优先级等级，但实际可用范围由两个配置项决定：  
- `CONFIG_NUM_COOP_PRIORITIES`：协作式线程的优先级数量，决定其范围为 **(-配置值) ~ -1**（例：配置为5时，协作式优先级范围是-5 ~ -1）。  
- `CONFIG_NUM_PREEMPT_PRIORITIES`：可抢占式线程的优先级数量，决定其范围为 **0 ~ (配置值-1)**（例：配置为10时，可抢占式优先级范围是0 ~ 9）。

# Meta-IRQ Priorities（元中断优先级）简要解析
Meta-IRQ 优先级是 Zephyr 内核中一种特殊的线程优先级机制，核心是为**高优先级异步处理场景**（如中断“下半部”）设计，需通过配置项 `CONFIG_NUM_METAIRQ_PRIORITIES` 启用，具体特性可拆解为以下几点：

### 1. 优先级定位： cooperative 优先级中的“最高级子集”
- 归属：属于 **cooperative 线程优先级**（数值为负，数值越小优先级越高），但位于该优先级空间的“最顶端”（数值最小），是 cooperative 优先级里的特殊子类。
- 核心特权：能**抢占所有低优先级线程**——即使低优先级线程是 cooperative 类型（原本需主动阻塞才会让出 CPU），或已持有“调度器锁”（正常情况下可阻止抢占），Meta-IRQ 线程仍能强制抢占。
- 例外：虽优先级极高，但仍会被**硬件中断**打断（本质仍是线程，而非硬件中断本身）。


### 2. 核心作用：模拟“中断下半部”，保证执行时效性
- 行为特性：唤醒 Meta-IRQ 线程（如创建线程、调用 `k_sem_give()` 释放信号量等）时，效果等同于：
  - 若由低优先级线程触发：类似“同步系统调用”，会立即触发抢占；
  - 若由硬件中断上下文触发：类似 ARM 架构的“挂起中断（pended IRQ）”，确保线程在 CPU 回到应用代码前**必须执行**。
- 设计目的：专门用于实现驱动子系统中的“中断下半部（bottom half）”或“任务队列（tasklet）”——即把中断中“耗时/复杂的处理逻辑”剥离到线程中，既避免阻塞硬件中断，又保证这些逻辑的高时效性（不会被其他线程延迟）。


### 3. 与普通高优先级线程的关键区别
- 栈使用：是**真正的线程**，需正常分配独立栈空间（而非使用 CPU 共享的“中断栈”，目前暂不支持中断栈，后续可能优化）；
- 慎用原因：打破了 Zephyr 对 cooperative 线程的“承诺”——原本 cooperative 线程只需不主动阻塞，就能一直占用 CPU，而 Meta-IRQ 线程会强制抢占，可能导致原有逻辑异常，因此**不可当作普通“高优先级线程”使用**，仅能用于特定驱动场景。


# Thread Custom Data（线程自定义数据）简要解析
Thread Custom Data 是操作系统内核为每个线程提供的一块 **32位专属内存区域**，核心作用是让应用程序能存储与特定线程绑定的自定义信息，且具备“线程私有、专属访问”的特性，具体细节如下：

### 1. 核心属性
- **存储大小与默认值**：固定为32位（可存储整数、指针等32位数据），线程创建时默认值为0。
- **访问权限**：**仅线程自身可访问**，无法读取或修改其他线程的自定义数据，保证数据私有性。
- **ISR 限制**：中断服务程序（ISR）无法使用该功能，因为ISR运行在共享的内核中断上下文，不与特定线程绑定。


### 2. 启用方式
该功能默认关闭，需通过内核配置选项 **CONFIG_THREAD_CUSTOM_DATA** 手动开启，开启后线程才会分配这块32位内存区域。


### 3. 操作接口
通过两个核心API实现数据读写，无需传入线程ID（默认操作当前线程）：
- **k_thread_custom_data_get()**：读取当前线程的自定义数据，返回32位值（需根据实际用途强制类型转换，如转为整数、指针等）。
- **k_thread_custom_data_set(void *value)**：设置当前线程的自定义数据，参数为32位值（同样需类型转换）。


### 4. 典型用途与示例
#### （1）基础用途：跟踪线程行为
如文档中的代码示例，用自定义数据记录“特定函数被当前线程调用的次数”：
- 函数被调用时，先通过 `k_thread_custom_data_get()` 读取当前计数；
- 计数+1后，通过 `k_thread_custom_data_set()` 写回；
- 因ISR无法使用该功能，代码中先通过 `k_is_in_isr()` 判断，忽略ISR的调用。

#### （2）进阶用途：关联线程专属数据结构
若需存储更复杂的线程信息（如多个参数、状态变量），可将自定义数据作为 **指针**，指向一块线程专属的数据结构（需确保该结构由线程自身管理，避免内存泄漏）。例如：
```c
// 定义线程专属数据结构
struct thread_info {
    int task_id;
    bool is_running;
};

// 线程初始化时，分配结构并绑定到自定义数据
struct thread_info *info = k_malloc(sizeof(struct thread_info));
info->task_id = 101;
info->is_running = true;
k_thread_custom_data_set((void *)info);

// 后续函数中，通过指针访问结构
struct thread_info *curr_info = (struct thread_info *)k_thread_custom_data_get();
printk("Thread task ID: %d\n", curr_info->task_id);
```

### 5. 注意事项
- **单用途限制**：一块32位区域只能存储一个数据（或一个指针），若多个逻辑需使用，需通过“指针指向数据结构”的方式整合，避免垄断。
- **内存安全**：若用自定义数据存储指针，需确保指针指向的内存合法（如不指向已释放的区域），且线程退出前需手动释放该内存（内核不自动回收）。

# 线程创建（Spawning a Thread）简要解析
该部分核心是说明在Zephyr内核中如何创建线程，明确了创建的关键要素、参数规则及两种常用实现方式，核心逻辑是“先准备资源，再调用接口创建”。

## 1. 线程创建的核心前提
创建线程需先准备两个关键资源，再调用接口完成初始化：
- **栈区域（Stack Area）**：线程运行时的内存空间，必须用`K_THREAD_STACK_DEFINE`（支持用户态/内核态线程）或`K_KERNEL_STACK_DEFINE`（仅支持内核态线程）宏定义，确保内存布局符合内核要求（如对齐、溢出保护等）。
- **线程控制块（Thread Control Block）**：存储线程元数据（如状态、优先级）的结构体，类型为`struct k_thread`。
- **核心接口**：调用`k_thread_create()`函数，将上述资源传入，完成线程创建并返回线程ID（`k_tid_t`），后续通过该ID操作线程。

## 2. 栈大小（stack_size）的严格规则
`k_thread_create()`的栈大小参数必须是以下三者之一，不能随意指定：
1. 定义栈时传入`K_THREAD_STACK`/`K_KERNEL_STACK`宏的**原始请求大小**（如示例中的`MY_STACK_SIZE`）；
2. 若栈用`K_THREAD_STACK`宏定义，用`K_THREAD_STACK_SIZEOF(栈对象名)`获取的大小；
3. 若栈用`K_KERNEL_STACK`宏定义，用`K_KERNEL_STACK_SIZEOF(栈对象名)`获取的大小。

## 3. 两种常用线程创建方式
### 方式1：手动定义资源 + `k_thread_create()`（灵活可控）
需手动定义栈、控制块，再调用函数创建，示例代码逻辑：
1. 定义栈大小（`MY_STACK_SIZE=500`）和优先级（`MY_PRIORITY=5`）；
2. 声明线程入口函数`my_entry_point`（需符合`void (*)(void *, void *, void *)`格式）；
3. 用`K_THREAD_STACK_DEFINE`定义栈`my_stack_area`；
4. 定义控制块`my_thread_data`；
5. 调用`k_thread_create()`，传入控制块、栈、栈大小、入口函数等参数，`K_NO_WAIT`表示创建后立即启动，返回线程ID`my_tid`。

### 方式2：`K_THREAD_DEFINE`宏（简化版，编译时声明）
通过宏自动完成“栈+控制块+线程ID”的定义，无需手动声明，代码更简洁，示例逻辑：
- 宏参数直接包含线程ID名（`my_tid`）、栈大小、入口函数、优先级等；
- 宏内部自动生成栈、控制块，效果与方式1完全一致；
- 注意：延迟启动参数差异——`k_thread_create()`用`k_timeout_t`类型（如`K_NO_WAIT`），`K_THREAD_DEFINE`用毫秒数（`0`表示立即启动）。



# Zephyr 内核线程（Threads）学习笔记
## 一、线程核心概念
### 1. 定义与作用
- 线程是内核对象，用于处理无法由中断服务程序（ISR）完成的冗长或复杂应用逻辑。
- 应用可定义任意数量的线程（仅受可用 RAM 限制），每个线程通过创建时分配的线程 ID（thread id）引用。

### 2. 核心属性
| 属性                         | 说明                                                    |
| -------------------------- | ----------------------------------------------------- |
| 栈区域（Stack Area）            | 用于线程栈的内存区域，大小可按需调整，需通过专用宏定义                           |
| 线程控制块（TCB）                 | 类型为 `k_thread` 的实例，存储线程元数据（内核私有）                      |
| 入口函数（Entry Point）          | 线程启动时调用的函数，支持最多 3 个参数传递                               |
| 调度优先级（Scheduling Priority） | 指导内核调度器分配 CPU 时间（见调度机制）                               |
| 线程选项（Thread Options）       | 指定线程在特定场景下的特殊处理方式                                     |
| 启动延迟（Start Delay）          | 内核启动线程前的等待时间                                          |
| 执行模式（Execution Mode）       | 支持超级用户模式（默认，权限完整）和用户模式（权限受限，依赖 `CONFIG_USERSPACE` 配置） |

## 二、线程生命周期
### 1. 线程创建（Thread Creation）
- 前置条件：线程必须先创建才能使用，内核会初始化线程控制块和栈的一端（其余栈空间默认未初始化）。
- 启动延迟配置：
  - `K_NO_WAIT`：立即启动线程。
  - 指定超时值：延迟启动（如等待线程依赖的硬件就绪），延迟可在启动前取消（已启动则无效）。
- 核心 API/宏：
  - 动态创建：`k_thread_create()`（需手动定义栈和控制块）。
  - 编译时静态声明：`K_THREAD_DEFINE()`（自动生成栈、控制块和线程 ID）。
- 用户模式约束（`CONFIG_USERSPACE` 启用时）：
  - 调用线程需拥有子线程和栈对象的权限。
  - 子线程和栈必须处于未初始化状态。
  - 栈大小不能超过声明时的边界。
  - 必须指定 `K_USER` 选项（用户线程只能创建用户线程）。
  - 禁止使用 `K_ESSENTIAL` 选项（用户线程不能标记为核心线程）。
  - 子线程优先级需有效且不高于父线程。

### 2. 线程终止（Thread Termination）
- 触发方式：线程从入口函数返回（同步终止）。
- 资源释放：线程终止前需手动释放持有的共享资源（如互斥锁、动态内存），内核不会自动回收。
- 等待终止 API：`k_thread_join()`，调用线程会阻塞直到目标线程终止、中止或超时。
- 内存复用：线程完全终止后，其控制块内存可复用（如创建新线程），需通过 `k_thread_join()` 或 `k_thread_abort()` 同步状态，避免依赖应用层信号。

### 3. 线程中止（Thread Aborting）
- 触发方式：
  - 内核自动触发：线程触发致命错误（如解引用空指针）。
  - 主动调用：其他线程或自身调用 `k_thread_abort()`（建议优先通过信号让线程优雅终止）。
- 资源处理：内核不回收中止线程的共享资源。
- 注意：内核不保证中止的线程可重新创建。

### 4. 线程挂起与恢复（Thread Suspension/Resume）
- 挂起：通过 `k_thread_suspend()` 使线程无限期无法执行（对已挂起线程无效果）。
- 恢复：需其他线程调用 `k_thread_resume()` 解除挂起，线程才能重新被调度。
- 与睡眠的区别：`k_sleep()` 是指定时长的休眠，超时后自动唤醒；挂起需显式恢复。

## 三、线程状态
### 1. 状态分类
- 就绪态（Ready）：无执行阻碍，有资格被选为当前线程。
- 非就绪态（Unready）：存在执行阻碍，无法被调度，触发条件包括：
  1. 线程未启动。
  2. 等待内核对象操作完成（如获取不可用的信号量）。
  3. 等待超时。
  4. 已挂起。
  5. 已终止或中止。
- 注意：运行态（Running）是就绪态线程的调度状态，而非独立的线程状态。

## 四、线程栈（Thread Stack Objects）
### 1. 栈约束
- 可能需预留内存管理结构空间。
- 启用栈溢出检测时，栈缓冲区前需有写保护的内存区域。
- 启用用户模式时，需预留独立的特权提升栈，且栈大小和对齐需满足内存保护要求（部分 MPU 要求大小为 2 的幂且对齐自身大小）。

### 2. 栈类型与宏定义
| 栈类型 | 适用场景 | 宏定义 |
|--------|----------|--------|
| 内核栈（Kernel-only Stacks） | 仅运行在超级用户模式的线程、中断处理等特殊场景 | `K_KERNEL_STACK_*`（如 `K_KERNEL_STACK_DEFINE`） |
| 通用栈（Thread Stacks） | 可能运行用户线程或不确定场景 | `K_THREAD_STACK_*`（如 `K_THREAD_STACK_DEFINE`） |
- 注意：`CONFIG_USERSPACE` 未启用时，两类宏效果一致；不可直接传递任意缓冲区给 `k_thread_create()`，需使用专用宏。

## 五、线程优先级
### 1. 优先级规则
- 数值越小，优先级越高（如优先级 4 > 7，-2 > 4）。
- 支持动态修改：线程启动后可通过 API 调整优先级，可能导致立即调度。

### 2. 线程类别（按优先级范围）
| 类别 | 优先级范围 | 配置选项 | 调度特性 |
|------|------------|----------|----------|
| 协作式线程（Cooperative） | `-CONFIG_NUM_COOP_PRIORITIES` 到 -1 | `CONFIG_NUM_COOP_PRIORITIES` | 一旦成为当前线程，需主动触发非就绪态才会让出 CPU |
| 抢占式线程（Preemptive） | 0 到 `CONFIG_NUM_PREEMPT_PRIORITIES - 1` | `CONFIG_NUM_PREEMPT_PRIORITIES` | 可被更高或同等优先级的线程抢占 |

### 3. 元中断优先级（Meta-IRQ Priorities）
- 启用条件：配置 `CONFIG_NUM_METAIRQ_PRIORITIES`。
- 特性：属于协作式优先级的最高端，可抢占所有低优先级线程（包括协作式线程、持有调度器锁的线程），但可被硬件中断打断。
- 用途：实现中断“底半部”处理或驱动子系统的“任务片”功能，唤醒后优先于应用代码执行。
- 注意：破坏协作式线程的调度承诺，应用层需谨慎使用。

## 六、线程选项（Thread Options）
通过位或运算符（`|`）组合多个选项，默认值为 0，支持的选项：
| 选项 | 说明 | 依赖条件 |
|------|------|----------|
| `K_ESSENTIAL` | 标记为核心线程，终止/中止时触发致命系统错误 | - |
| `K_SSE_REGS` | x86 架构专用，线程使用 SSE 寄存器，内核调度时保存/恢复寄存器 | - |
| `K_FP_REGS` | 线程使用浮点寄存器，内核调度时保存/恢复寄存器 | - |
| `K_USER` | 创建用户模式线程，权限受限 | `CONFIG_USERSPACE` 启用 |
| `K_INHERIT_PERMS` | 继承父线程的内核对象权限（除父线程自身） | `CONFIG_USERSPACE` 启用 |

## 七、线程自定义数据（Thread Custom Data）
- 特性：32 位数据区域，仅线程自身可访问，默认值为 0，ISR 不支持。
- 启用配置：`CONFIG_THREAD_CUSTOM_DATA`。
- 操作 API：
  - 设置：`k_thread_custom_data_set()`。
  - 获取：`k_thread_custom_data_get()`。
- 用途：存储线程特定信息（如函数调用次数、指向线程私有数据结构的指针）。

## 八、关键实现与 API
### 1. 线程创建示例
#### （1）动态创建
```c
#define MY_STACK_SIZE 500
#define MY_PRIORITY 5
extern void my_entry_point(void *, void *, void *);

K_THREAD_STACK_DEFINE(my_stack_area, MY_STACK_SIZE);
struct k_thread my_thread_data;

k_tid_t my_tid = k_thread_create(
    &my_thread_data,
    my_stack_area,
    K_THREAD_STACK_SIZEOF(my_stack_area),
    my_entry_point, NULL, NULL, NULL,
    MY_PRIORITY, 0,
    K_NO_WAIT  // 立即启动
);
```

#### （2）静态声明
```c
#define MY_STACK_SIZE 500
#define MY_PRIORITY 5
extern void my_entry_point(void *, void *, void *);

K_THREAD_DEFINE(
    my_tid, MY_STACK_SIZE,
    my_entry_point, NULL, NULL, NULL,
    MY_PRIORITY, 0,
    0  // 延迟 0 毫秒（等价于 K_NO_WAIT）
);
```

### 2. 权限降级（Dropping Permissions）
- API：`k_thread_user_mode_enter()`（仅超级用户模式线程可用）。
- 特性：单向过渡到用户模式，重置栈内存，标记为非核心线程，保留内存域、资源池、权限、优先级和线程选项。
- 用途：主线程完成超级用户模式任务后，转为用户模式运行。

### 3. 运行时统计（Runtime Statistics）
- 启用配置：`CONFIG_THREAD_RUNTIME_STATS`（默认使用内核定时器，可通过 `CONFIG_THREAD_RUNTIME_STATS_USE_TIMING_FUNCTIONS` 启用高精度定时器）。
- API：`k_thread_runtime_stats_get()`，获取线程执行周期等统计信息。
- 示例：
```c
k_thread_runtime_stats_t rt_stats_thread;
k_thread_runtime_stats_get(k_current_get(), &rt_stats_thread);
printk("Cycles: %llu\n", rt_stats_thread.execution_cycles);
```

### 4. 核心 API 汇总
| 功能 | API | 关键说明 |
|------|-----|----------|
| 遍历线程 | `k_thread_foreach()` | 需启用 `CONFIG_THREAD_MONITOR`，加锁保护线程列表 |
| 动态分配栈 | `k_thread_stack_alloc()` | 支持 `K_USER` 标志（用户模式栈） |
| 释放栈 | `k_thread_stack_free()` | 返回 0 表示成功，-EBUSY 表示栈正在使用 |
| 等待线程终止 | `k_thread_join()` | 支持超时，可在 ISR 中使用 `K_NO_WAIT` 检测线程中止 |
| 睡眠 | `k_sleep()`/`k_msleep()`/`k_usleep()` | 分别支持 `k_timeout_t`、毫秒、微秒级休眠 |
| 忙等待 | `k_busy_wait()` | 微秒级空循环，需注意时钟偏差 |
| 让出 CPU | `k_yield()` | 让渡给同优先级或更高优先级线程 |
| 唤醒线程 | `k_wakeup()` | 唤醒休眠线程（对非休眠线程无效果） |
| 获取当前线程 ID | `k_current_get()` | 优先使用，TLS 无效时用 `k_sched_current_thread_query()` |
| 设置优先级 | `k_thread_priority_set()` | 改变参与互斥锁优先级继承的线程可能导致未定义行为 |
| 挂起/恢复 | `k_thread_suspend()`/`k_thread_resume()` | - |
| 调度器锁 | `k_sched_lock()`/`k_sched_unlock()` | 递归调用，仅阻止当前 CPU 上的抢占，不阻止中断和其他 CPU 线程 |
| 设置线程名 | `k_thread_name_set()` | 需启用 `CONFIG_THREAD_MONITOR`，用于调试追踪 |

## 九、配置选项（Configuration Options）
核心配置选项：
- `CONFIG_USERSPACE`：启用用户模式。
- `CONFIG_THREAD_CUSTOM_DATA`：启用线程自定义数据。
- `CONFIG_NUM_COOP_PRIORITIES`：协作式线程优先级数量。
- `CONFIG_NUM_PREEMPT_PRIORITIES`：抢占式线程优先级数量。
- `CONFIG_NUM_METAIRQ_PRIORITIES`：元中断优先级数量。
- `CONFIG_THREAD_RUNTIME_STATS`：启用线程运行时统计。
- `CONFIG_TIMESLICING`：启用时间片调度。
- `CONFIG_SCHED_DEADLINE`：启用截止时间调度。
- `CONFIG_SCHED_CPU_MASK`：启用 CPU 亲和性配置。

## 十、建议用途
1. 处理无法在 ISR 中完成的复杂逻辑。
2. 用独立线程处理并行执行的逻辑分离操作（如 LED 闪烁、控制台输出、网络服务）。
3. 多线程同步场景（如通过 `k_thread_join()` 等待其他线程完成）。