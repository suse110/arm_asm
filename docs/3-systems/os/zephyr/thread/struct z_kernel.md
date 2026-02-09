```c
struct z_kernel {
	//所有核心的专属状态数组（核心中的核心）
    struct _cpu cpus[CONFIG_MP_MAX_NUM_CPUS];
#ifdef CONFIG_PM
	// 电源管理相关的空闲时长
    int32_t idle; /* Number of ticks for kernel idling */
#endif
    /*
     * ready queue: can be big, keep after small fields, since some
     * assembly (e.g. ARC) are limited in the encoding of the offset
     */
#ifndef CONFIG_SCHED_CPU_MASK_PIN_ONLY
	//全局就绪队列（默认启用，除非强制核心绑定）
    struct _ready_q ready_q;
#endif
#ifdef CONFIG_FPU_SHARING
    /*
     * A 'current_sse' field does not exist in addition to the 'current_fp'
     * field since it's not possible to divide the IA-32 non-integer
     * registers into 2 distinct blocks owned by differing threads.  In
     * other words, given that the 'fxnsave/fxrstor' instructions
     * save/restore both the X87 FPU and XMM registers, it's not possible
     * for a thread to only "own" the XMM registers.
     */
    /* thread that owns the FP regs */
    //持有FPU（浮点单元）寄存器的线程
    struct k_thread *current_fp;
#endif
#if defined(CONFIG_THREAD_MONITOR)
	//所有线程的单向链表头（线程监控用）
    struct k_thread *threads; /* singly linked list of ALL threads */
#endif
#ifdef CONFIG_SCHED_THREAD_USAGE_ALL
	//每个核心的线程运行时长统计
    struct k_cycle_stats usage[CONFIG_MP_MAX_NUM_CPUS];
#endif
#ifdef CONFIG_OBJ_CORE_SYSTEM
	//系统级对象核心（统一管理内核对象）
    struct k_obj_core  obj_core;
#endif
#if defined(CONFIG_SMP) && defined(CONFIG_SCHED_IPI_SUPPORTED)
    /* Identify CPUs to send IPIs to at the next scheduling point */
    //待发送IPI的核心掩码（SMP调度用）
    atomic_t pending_ipi;
#endif
};
```