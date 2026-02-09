```c
struct _cpu {
    /* nested interrupt count */
    uint32_t nested;
    /* interrupt stack pointer base */
    char *irq_stack;
    /* currently scheduled thread */
    struct k_thread *current;
    /* one assigned idle thread per CPU */
    struct k_thread *idle_thread;
#ifdef CONFIG_SCHED_CPU_MASK_PIN_ONLY
    struct _ready_q ready_q;
#endif
#if (CONFIG_NUM_METAIRQ_PRIORITIES > 0) && \
    (CONFIG_NUM_COOP_PRIORITIES > CONFIG_NUM_METAIRQ_PRIORITIES)
    /* Coop thread preempted by current metairq, or NULL */
    struct k_thread *metairq_preempted;
#endif
    uint8_t id;
#if defined(CONFIG_FPU_SHARING)
    void *fp_ctx;
#endif
#ifdef CONFIG_SMP
    /* True when _current is allowed to context switch */
    uint8_t swap_ok;
#endif
#ifdef CONFIG_SCHED_THREAD_USAGE
    /*
     * [usage0] is used as a timestamp to mark the beginning of an
     * execution window. [0] is a special value indicating that it
     * has been stopped (but not disabled).
     */
    uint32_t usage0;
#ifdef CONFIG_SCHED_THREAD_USAGE_ALL
    struct k_cycle_stats *usage;
#endif
#endif
#ifdef CONFIG_OBJ_CORE_SYSTEM
    struct k_obj_core  obj_core;
#endif
    /* Per CPU architecture specifics */
    struct _cpu_arch arch;
};
```