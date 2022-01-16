1. 嵌入式式操作系统由哪些特性
   1. 任务

      1. 任务控制块(TCB)
         1.
      2. 任务创建
         1. 任务堆栈

            1. 每个任务都有堆栈指针,堆栈单元大小为4 字节,可以定义一个uint32_t类型变量保存

            ```
               uint32_t sp;
            ```
            2. 保存哪些内容
            3. 什么时候保存
      3. 任务调度
         1. 任务调度算法
            1. 时间片轮转
         2. 任务堆栈管理
      4. 任务间通信
         1. 信号量
         2. 互斥量
         3. 临界区
      5. 定时器
   2. 内存管理
   3. 文件系统
   4. 常用ARM汇编指令

      * LDM

      ```
        LDM{addr_mode}{cond} Rn{!}, reglist{^}

        addr_mode is any one of the following:
        IA: Increment address After each transfer. This is the default, and can be omitted.
        IB: Increment address Before each transfer (ARM only).
        DA: Decrement address After each transfer (ARM only).
        DB: Decrement address Before each transfer.

        cond is an optional condition code.
        Rn is the base register, the ARM register holding the initial address for the transfer. Rn must not be PC.
        ! is an optional suffix. If ! is present, the final address is written back into Rn.
        reglist is a list of one or more registers to be loaded, enclosed in braces. It can contain register ranges.
        It must be comma separated if it contains more than one register or register range. Any
        combination of registers R0 to R15 (PC) can be transferred in ARM state, but there are some
        restrictions in Thumb state.
        ^ is an optional suffix, available in ARM state only. You must not use it in User mode or System
        mode. It has the following purposes:
        • If reglist contains the PC (R15), in addition to the normal multiple register transfer, the
        SPSR is copied into the CPSR. This is for returning from exception handlers. Use this only
        from exception modes.
        • Otherwise, data is transferred into or out of the User mode registers instead of the current
        mode registers
      ```
      * LDR
        ```
        LDR{条件} 目的寄存器 <存储器地址>

        作用：将 存储器地址 所指地址处连续的4个字节（1个字）的数据传送到目的寄存器中.
        LDR指令的寻址方式比较灵活,实例如下：
        LDR R0,[R1]   ;将存储器地址为R1的字数据读入寄存器R0.
        LDR R0,[R1,R2]  ;将存储器地址为R1+R2的字数据读入寄存器R0.
        LDR R0,[R1,#8]  ;将存储器地址为R1+8的字数据读入寄存器R0.
        LDR R0,[R1],R2   ;将存储器地址为R1的字数据读入寄存器R0,然后R1=R1+8.
        LDR R0,[R1],#8   ;将存储器地址为R1的字数据读入寄存器R0,并将R1+8的值存入R1.
        LDR R0,[R1,R2]!    ;将存储器地址为R1+R2的字数据读入寄存器R0,并将R1+R2的值存入R1.
        LDR R0,[R1,LSL #3]    ;将存储器地址为R18的字数据读入寄存器R0.
        LDR R0,[R1,R2,LSL #2]   ;将存储器地址为R1+R24的字数据读入寄存器R0.
        LDR R0,[R1,,R2,LSL #2]！    ;将存储器地址为R1+R24的字数据读入寄存器R0,并将R1+R24的值存入R1.
        LDR R0,[R1],R2,LSL #2    ;将存储器地址为R1的字数据读入寄存器R0,并将R1+R2*4的值存入R1.
        LDR R0,Label  ;Label为程序标号,Label必须是当前指令的-4~4KB范围内.

        要注意的是
        LDR Rd,[Rn],#0x04  ;这里Rd不允许是R15.

        另外LDRB 的指令格式与LDR相似,只不过它是将存储器地址中的8位（1个字节）读到目的寄存器中.
        LDRH的指令格式也与LDR相似,它是将内存中的16位（半字）读到目的寄存器中.

        LDR R0,=0xff
        这里的LDR不是arm指令,而是伪指令.这个时候与MOVE很相似,只不过MOV指令后的立即数是有限制的.这个立即数必须是0X00-0XFF范围内的数经过偶数次右移得到的数,所以MOV用起来比较麻烦,因为有些数不那么容易看出来是否合法.

        LDR R,label 和 LDR R,=label的区别
        LDR 是ARM中的指令,也是伪指令.
        当用 LDR r, =imd // r 为寄存器, imd为立即数
        LDR 是一条伪指令.编译器会根据 立即数的大小,决定用 ldr 指令或者是mov或mvn指令.
        当imd能用mov或者mvn操作时,就将它翻译成一条mov或mvn指令.当imd大于mov或mvn能够操作的数时,编译器会将imd存在一个内存单元中,然后再用一条ldr指令加载这个内存单元的的值到寄存中.
        LDR r, label 和 LDR r, =label的区别：
        LDR r, =label 会把label表示的值加载到寄存器中,而LDR r, label会把label当做地址,把label指向的地址中的值加载到寄存器中.
        譬如 label的值是 0x8000, LDR r, =label会将 0x8000加载到寄存器中,而LDR r, label则会将内存0x8000处的值加载到寄存器中.
        ```
