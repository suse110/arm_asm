## pvPortMalloc

suspend all task

    heap init --> single instanse mode

resume all task

## xTaskCreate

* malloc stack
* malloc TCB
* prvInitialiseNewTask

  * 填充栈为固定值，以方便debug
    * PC 初始化为当前task函数地址
    * LR 初始化为 portTASK_RETURN_ADDRESS
      * prvTaskExitError
        * task 执行完如果没有调用vTaskDelete( NULL )，就会执行到这楼里
      * configTASK_RETURN_ADDRESS
    * R0 初始化为 task创建传入的pvParameters参数
    * ***portINITIAL_EXC_RETURN（0xfffffffd） 这个值初始化给谁呢？？？***
  * 根据栈增长方向确定栈顶地址
    * 栈增长方向由 portSTACK_GROWTH 确定，更具架构不同由用户自己定义
  * task name写入TCB
  * 初始化task状态链表
    * ready, blocked, suspend
    * 状态链表pvOwner 成员指向当前Task TCB，这样可以从当前链表item找到这个item对应的task
  * 初始化task event链表
    * 状态链表pvOwner 成员指向当前Task TCB
    * event链表的xItemValue成员用来更具task优先级排序event链表
  * stack overflow checking
    * 栈内保存register值的地址填充固定值
  * 返回TaskHandle，其实就是TCB
* prvAddNewTaskToReadyList

  * 如果是第一个task
    * pxCurrentTCB指向当前task的TCB
  * 如果不是第一个创建的task，且调度器还没运行
    * pxCurrentTCB 会指向优先级最高的那个task TCB
  * 如果调度器已经运行，新建的task优先级比当前task优先级高
    * 则trigger一个pendSV，这时候会切换到当前优先级最高的task运行

## vTaskDelete

* taskENTER_CRITICAL
* 从task handle里获取到task TCB
* 将task从就ready/delay list移除
* task 如果在等一个event，那么也从event list中移除此task
* 如果task删除自己
  * 此时不能立即删除，需要将task放到一个termination list，idle task运行时会去检查这个list，并释放task分配的TCB/stack内存
* taskEXIT_CRITICAL
* 如果task不是删除自己
  * 直接释放TCB/Stack 内存
* 如果删除了当前运行的task，则立即触发调度器，调度下一个task

    

## vTaskStartScheduler

* 创建idle task
* 创建timer task，if configUSE_TIMERS = 1
* 关中断
  * set basepri = 1
* xPortStartScheduler
  * 计算 **ulMaxPRIGROUPValue** （最大优先级组）的值

    * FreeRTOS 只支持**全抢占**优先级，**没有子优先级**
    * FromISR 函数会用这个值做检查，FromISR 函数**不能**在优先级高于 configMAX_SYSCALL_INTERRUPT_PRIORITY 的中断中调用

      * RTOS中断嵌套方案将有效的中断优先级分成两组：一组可以通过RTOS临界区屏蔽，另一组不受RTOS影响，永远都是使能的。configMAX_SYSCALL_INTERRUPT_PRIORITY在FreeRTOSConfig.h中配置，定义两组中断优先级的边界。逻辑优先级高于此值的中断不受RTOS影响
  * PendSV 和 SysTick 设为最低优先级
  * vPortSetupTimerInterrupt，使能Systick

    * FreeRTOSConfig中定义的configSYSTICK_CLOCK_HZ 和 configTICK_RATE_HZ 确定Systick的频率
  * Enable VFP
  * prvPortStartFirstTask，运行第一个task

    ```
        __asm volatile (
            " ldr r0, =0xE000ED08 \n"/* Use the NVIC offset register(VTOR)) to locate the stack. */
            " ldr r0, [r0] 	      \n"
            " ldr r0, [r0] 	      \n"
            " msr msp, r0	\n"/* Set the msp back to the start of the stack. */
            " mov r0, #0	\n"/* Clear the bit that indicates the FPU is in use, see comment above. */
            " msr control, r0\n"
            " cpsie i	\n"/* Globally enable interrupts. */
            " cpsie f	\n"
            " dsb		\n"
            " isb		\n"
            " svc 0		\n"/* System call to start first task. */
            " nop		\n"
            " .ltorg	\n"
            );
    ```

    * LTORG用于声明一个数据缓冲池，（也称为文字池）的开始。在使用伪指令LDR时，常常需要在适当的地方加入LTORG声明数据缓冲池，LDR加载的数据暂时被编译器放于数据缓冲池中
    * 当程序中使用LDR之类的指令时，数据缓冲池的使用可能越界。为防止越界发生，可使用LTONG伪操作定义数据缓冲池。通常大的代码段可以使用多个数据缓冲池。**ARM汇编编译器一般把数据缓冲池放在代码段的最后面**，即下一代码段开始之前，或者**END伪操作之前**。LTORG伪操作通常放在无条件跳转指令之后，或者子程序返回指令之后，这样处理器就不会错误的将数据缓冲池中的数据当作指令来执行

### SVC_Handler

* vPortSVCHandler
  * 创建task时，R14(LR))初始化为什么？
    * 初始化为 portTASK_RETURN_ADDRESS（0xfffffffd）
* pxCurrentTCB 在创建task时已经赋值为最高优先级task的TCB
  * 这里执行bx r14, 会将task stack中的值pop到寄存器中
    * 在刚进入SVC handler 时LR=0xFFFFFFF9 (thread mode, return main stack)，从pxCurrentTCB pop stack( R4-R11, LR))后，LR=0xFFFFFFFD

***No FP extension***

| EXC_RETURN | Return to    | Return stack |
| ---------- | ------------ | ------------ |
| 0xFFFFFFF1 | Handler mode | Main         |
| 0xFFFFFFF9 | Thread mode  | Main         |
| 0xFFFFFFFD | Thread mode  | Process      |

***With FP extension***

| EXC_RETURN | Return to    | Return stack | Frame Type |
| ---------- | ------------ | ------------ | ---------- |
| 0xFFFFFFF1 | Handler mode | Main         | Basic      |
| 0xFFFFFFF9 | Thread mode  | Main         | Basic      |
| 0xFFFFFFFD | Thread mode  | Process      | Basic      |
| 0xFFFFFFE1 | Handler mode | Main         | Extended   |
| 0xFFFFFFE9 | Thread mode  | Main         | Extended   |
| 0xFFFFFFED | Thread mode  | Process      | Extended   |

***SVC_Handler***

```
    __asm volatile (
        "	ldr	r3, pxCurrentTCBConst2	\n"/* Restore the context. */
        "	ldr r1, [r3]	\n"/* Use pxCurrentTCBConst to get the pxCurrentTCB address. */
        "	ldr r0, [r1]	\n"/* The first item in pxCurrentTCB is the task top of stack. */
        "	ldmia r0!, {r4-r11, r14}\n"/* Pop the registers that are not automatically saved on exception entry and the critical nesting count. */
        "	msr psp, r0	\n"/* Restore the task stack pointer. */
        "	isb		\n"
        "	mov r0, #0 	\n"
        "	msr	basepri, r0\n"
        "	bx r14		\n"
        "			\n"
        "	.align 4	\n"
        "pxCurrentTCBConst2: .word pxCurrentTCB	\n"
        );
```
