```c
z_arm_reset()
	z_arm_watchdog_init() -> CONFIG_WDOG_INIT
	初始化z_interrupt_stacks值为0xAA -> CONFIG_INIT_STACKS
	设置psp为z_interrupt_stacks栈底
	z_pre_c()
		relocate_vector_table()
		z_arm_floating_point_init() -> CONFIG_CPU_HAS_FPU
		z_bss_zero()
		z_data_copy()
		z_soc_irq_init() -> CONFIG_ARM_CUSTOM_INTERRUPT_CONTROLLER
		z_arm_interrupt_init() -> !CONFIG_ARM_CUSTOM_INTERRUPT_CONTROLLER
		z_cstart()
			z_sys_init_run_level(INIT_LEVEL_EARLY)
			arch_kernel_init()
				z_arm_interrupt_stack_setup()
				z_arm_exc_setup()
				z_arm_fault_init()
				z_arm_cpu_idle_init()
				z_arm_clear_faults()
				z_arm_mpu_init()
				z_arm_configure_static_mpu_regions()
			log_core_init()
			z_dummy_thread_init()
			z_device_state_init()
			z_sys_init_run_level(INIT_LEVEL_PRE_KERNEL_1)
			arch_smp_init()
			z_sys_init_run_level(INIT_LEVEL_PRE_KERNEL_2)
			z_early_rand_get() -> CONFIG_STACK_CANARIES
			prepare_multithreading()
				z_sched_init()
				setup z_main_thread
				z_init_cpu(0)
			> zephyr\kernel\init.c
			switch_to_main_thread()
				arch_switch_to_main_thread() -> CONFIG_ARCH_HAS_CUSTOM_SWAP_TO_MAIN
					z_arm_prepare_switch_to_main()
					_current指向z_main_thread
					z_arm_configure_dynamic_mpu_regions() -> CONFIG_MPU_STACK_GUARD
					arch_irq_unlock_outlined() 
						__enable_fault_irq() -> CONFIG_ARMV7_M_ARMV8_M_MAINLINE
						__enable_irq() -> CONFIG_ARMV7_M_ARMV8_M_MAINLINE
						> zephyr/include/zephyr/arch/arm/asm_inline_gcc.h
						arch_irq_unlock()
							__enable_irq() -> CONFIG_ARMV6_M_ARMV8_M_BASELINE
							__set_BASEPRI(key) -> CONFIG_ARMV7_M_ARMV8_M_MAINLINE
					z_thread_entry()
						bg_thread_main
							z_sys_init_run_level(INIT_LEVEL_POST_KERNEL)
							z_sys_init_run_level(INIT_LEVEL_APPLICATION);
							z_init_static_threads()
							main()
				z_swap_unlocked() -> !CONFIG_ARCH_HAS_CUSTOM_SWAP_TO_MAIN
					do_swap(arch_irq_lock(), NULL, true) -> CONFIG_USE_SWITCH
						irq_unlock()
					z_swap_irqlock(arch_irq_lock()) -> !CONFIG_USE_SWITCH
						z_check_stack_sentinel()
						arch_swap()
							trigger pendsv
							irq_unlock(0)=arch_irq_unlock()
```

### 整体流程拆解（按执行顺序）

这段代码是 Zephyr 在 ARM 架构下**从硬件复位到进入 main 函数**的完整初始化链路，每一步都有明确的硬件 / 系统准备目的，我会逐层拆解：

#### 1. 最顶层：z_arm_reset () - 硬件复位后的入口

这是 ARM 内核复位（Reset）异常向量指向的函数，是系统启动的**第一个入口**，做最底层的硬件初始化：

- `z_arm_watchdog_init()`：初始化看门狗（仅当 `CONFIG_WDOG_INIT` 开启时），防止系统复位后看门狗超时触发二次复位。
- 初始化 `z_interrupt_stacks` 为 0xAA：给中断栈填充固定值（仅 `CONFIG_INIT_STACKS` 开启），后续可通过检查该值判断栈是否溢出。
- 设置 PSP（进程栈指针）为 `z_interrupt_stacks` 栈底：ARM 内核有 MSP（主栈，用于异常 / 中断）和 PSP（进程栈，用于线程），这里先把 PSP 指向中断栈，为后续初始化铺路。

#### 2. z_pre_c () - C 运行环境准备

`z_arm_reset()` 完成纯汇编的硬件初始化后，进入 `z_pre_c()`，核心目的是**搭建 C 语言运行的基础环境**（让 C 代码能正常执行）：

- `relocate_vector_table()`：重定位中断向量表（ARM 内核需要知道中断向量表的物理地址），确保中断能正确响应。
- `z_arm_floating_point_init()`：初始化 FPU（浮点单元，仅 `CONFIG_CPU_HAS_FPU` 开启时），启用浮点运算支持，避免浮点指令触发异常。
- `z_bss_zero()`：将 BSS 段（未初始化的全局 / 静态变量）清零（C 标准要求未初始化变量默认值为 0）。
- `z_data_copy()`：将 Data 段（已初始化的全局 / 静态变量）从 Flash 复制到 RAM（因为 Zephyr 固件存放在 Flash，运行时变量需要在 RAM 中）。
- 中断控制器初始化：
    
    - `z_soc_irq_init()`：SOC 级自定义中断控制器初始化（`CONFIG_ARM_CUSTOM_INTERRUPT_CONTROLLER` 开启时）；
    - `z_arm_interrupt_init()`：ARM 标准中断控制器（如 NVIC）初始化（上述配置关闭时）。
    

#### 3. z_cstart () - 内核核心初始化

C 运行环境就绪后，进入 Zephyr 内核的核心初始化函数 `z_cstart()`，这是**从硬件初始化过渡到内核初始化**的关键步骤：

##### 3.1 早期初始化阶段（INIT_LEVEL_EARLY）

- `z_sys_init_run_level(INIT_LEVEL_EARLY)`：执行 “早期初始化” 级别的钩子函数（比如底层硬件驱动的最早期初始化）。

##### 3.2 架构相关内核初始化

- `arch_kernel_init()`：ARM 架构专属的内核初始化，包含：
    
    - `z_arm_interrupt_stack_setup()`：设置中断栈（MSP），为异常 / 中断处理分配独立栈空间；
    - `z_arm_exc_setup()`：初始化异常处理（如未定义指令、预取指中止等异常）；
    - `z_arm_fault_init()`：初始化故障处理（如内存访问故障）；
    - `z_arm_cpu_idle_init()`：初始化 CPU 空闲模式（用于系统无任务时进入低功耗）；
    - `z_arm_clear_faults()`：清除复位后残留的故障标志位，避免误触发故障处理；
    - `z_arm_mpu_init()` + `z_arm_configure_static_mpu_regions()`：初始化 MPU（内存保护单元）并配置静态内存保护区域（比如保护内核代码 / 数据不被线程篡改）。
    

##### 3.3 基础组件初始化

- `log_core_init()`：初始化日志核心模块（Zephyr 的 printk/log 功能依赖这个）；
- `z_dummy_thread_init()`：初始化 “虚拟线程”（用于调度器初始化前的临时上下文）；
- `z_device_state_init()`：初始化设备状态（Zephyr 设备模型的基础，标记所有设备为 “未初始化” 状态）。

##### 3.4 预内核初始化阶段

- `z_sys_init_run_level(INIT_LEVEL_PRE_KERNEL_1)`：执行 “预内核 1” 级初始化（比如 SOC 时钟、引脚等基础配置）；
- `arch_smp_init()`：SMP 多核初始化（如果是多核 ARM 芯片，初始化从核）；
- `z_sys_init_run_level(INIT_LEVEL_PRE_KERNEL_2)`：执行 “预内核 2” 级初始化（比如总线、外设驱动初始化）；
- `z_early_rand_get()`：生成早期随机数（仅 `CONFIG_STACK_CANARIES` 开启时），用于栈溢出保护的 “金丝雀” 值。

##### 3.5 多线程环境准备

- `prepare_multithreading()`：搭建多线程运行环境，是内核调度的核心准备：
    
    - `z_sched_init()`：初始化调度器（Zephyr 线程调度的核心）；
    - `setup z_main_thread`：创建主线程（`main` 函数运行在这个线程中）；
    - `z_init_cpu(0)`：初始化 CPU 0（主核）的调度上下文。
    

#### 4. switch_to_main_thread () - 切换到主线程执行

完成所有初始化后，切换到主线程，真正进入用户代码的执行流程：

- `arch_switch_to_main_thread()`：ARM 架构下切换到主线程的具体实现：
    
    - `z_arm_prepare_switch_to_main()`：准备主线程的执行上下文（如栈、寄存器）；
    - `_current` 指向 `z_main_thread`：内核的 `_current` 变量标记当前运行的线程，从此主线程成为当前线程；
    - `z_arm_configure_dynamic_mpu_regions()`：配置动态 MPU 区域（仅 `CONFIG_MPU_STACK_GUARD` 开启时），为主线程栈添加内存保护，防止栈溢出越界。
    
- `z_thread_entry()`：线程入口函数，调用主线程的核心函数 `bg_thread_main`：
    
    - `z_sys_init_run_level(INIT_LEVEL_POST_KERNEL)`：执行 “内核后” 级初始化（比如驱动的最终初始化、系统服务启动）；
    - `z_sys_init_run_level(INIT_LEVEL_APPLICATION)`：执行 “应用” 级初始化（用户注册的应用层初始化钩子）；
    - `z_init_static_threads()`：初始化静态创建的线程（用户用 `K_THREAD_DEFINE` 定义的线程）；
    - 最终调用 `main()`：进入用户编写的 `main` 函数，至此系统初始化完成，进入业务逻辑执行。
    

### 关键补充说明

1. **CONFIG_XXX 宏的作用**：所有带 `-> CONFIG_XXX` 的函数，都是通过编译配置开关控制是否执行 ——Zephyr 是高度可裁剪的 RTOS，用户可通过关闭不需要的配置（如 FPU、MPU、看门狗）来减小固件体积。
2. **栈的区分**：
    
    - 中断栈（`z_interrupt_stacks`）：仅用于中断 / 异常处理，独立于线程栈，避免中断破坏线程栈；
    - 主线程栈：`main` 函数运行的栈，由 `setup z_main_thread` 分配。
    
3. **初始化级别（INIT_LEVEL）**：Zephyr 将初始化分为多个级别（EARLY → PRE_KERNEL_1 → PRE_KERNEL_2 → POST_KERNEL → APPLICATION），目的是**保证初始化顺序**（比如先初始化时钟，再初始化依赖时钟的外设；先初始化内核，再初始化应用线程）。

### 总结

这段初始化流程的核心逻辑可归纳为 3 个关键阶段：

1. **硬件底层初始化**（`z_arm_reset()`）：从复位异常进入，初始化看门狗、栈指针等最基础硬件，是纯汇编层面的操作。
2. **C 运行环境搭建**（`z_pre_c()`）：清零 BSS、复制 Data 段、初始化中断控制器，让 C 代码能正常执行。
3. **内核与应用准备**（`z_cstart()` 及后续）：初始化内核调度器、线程环境，按级别执行各阶段初始化钩子，最终切换到主线程并进入用户 `main` 函数。

整个流程的核心目标是：**从裸硬件状态逐步搭建起 RTOS 运行的所有基础环境，最终将控制权交给用户的应用代码**。