### 寄存器

* 只能使用 MRS/MSR 在特权级下访问
  * PRIMASK 设1关闭所有可屏蔽异常，剩下NMI和hard fault
  * FAULTMASK 设1只有NMI可以响应
  * BASEPRI 设0不关闭任何中断，设n(n>0),则关闭优先级号（优先级号越大优先级越低）>=n的中断

#### 控制寄存器（CONTROL）

* CONTROL[1] 0只使用MSP，用户和异常handler共用MSP,1选PSP
* CONTROL[0] 0特权thread模式,1用户级thrad模式。handler模式下永远是特权级
* 只能在特权级修改此寄存器：通过SVC触发异常，在异常的ISR中修改；在异常返回时，通过修改LR的位2也能实现模式切换

### 复位序列

[Understand the GNU assembler startup file of cortex M4](https://www.silabs.com/community/mcu/32-bit/knowledge-base.entry.html/2018/11/11/understand_the_gnua-zyam)

1. 从0x0000_0000地址取出MSP初始值
2. 从0x0000_0004地址取出PC初始值，这个值是复位向量(Reset_handler)，然后在这个值所对应的地址取指。因为CM3在thumb状态下执行，所以向量表中的每个数值都必须把 LSB 置 1（也就是奇数）
   1. 向量表中的数值是32位地址，而不是跳转指令。向量表的第一个条目指向复位后执行的第一条指令
   2. Reset_handler 里做什么事情呢？直接跳转到main函数码？
   3. 向量表的LSB是谁去设1的？
3. 因为CM3使用的是向下生长的满栈，所以MSP得初始值必须是堆栈内存的末地址加1
   1. 如果堆栈区域在0x20007C00~0x20007FFF之间，那么MSP的初始值就必须是0x20008000.
   2. 在执行第一行code之前初始化MSP，因为有可能第一条指令还没来得及执行，就发生了NMI或者其他fault
4. 堆栈初始化
5. 向量表定义
6. 设置系统时钟
7. 中断寄存器初始化
8. 进入C程序，jump to __main

### PendSV中任务切换

1. 获取当前任务堆栈指针PSP
2. 保存R4~R11到任务堆栈
3. 压栈后更新当前任务堆栈指针(每个任务会自己保存自己的堆栈栈顶位置)
4. 从即将运行的任务堆栈中恢复R4~R11，其余寄存器由硬件恢复，然后切换到任务中运行
5. 最后将当前任务的堆栈指针写入到PSP
6. 中断返回，在LR中标记，退出中断后要使用PSP,PendSV中使用的是MSP

### 堆栈

* 初始内容

```
(N‐4)       xPSR   T bit (bit 24)必须为1，表示执行thumb指令
(N‐8)       PC  
(N‐12)      LR  
(N‐16)      R12   
(N‐20)      R3  
(N‐24)      R2  
(N‐28)      R1  
(N‐32)      R0  
(N‐36)      R11  
(N‐40)      R10  
(N‐44)      R9  
(N‐48)      R8  
(N‐52)      R7  
(N‐56)      R6  
(N‐60)      R5  
(N‐64)      R4  
```

* PUSH/POP

```
PUSH {R0-R2} ;压入 R0-R2 
PUSH {R3-R5,R8, R12} ;压入 R3-R5,R8，以及 R12 
POP {R0-R2} ;弹出 R0-R2 
POP {R3-R5,R8, R12} ;弹出 R3-R5，R8，以及 R12
```

不管在寄存器列表中，寄存器的序号是以什么顺序给出的，汇编器都将把它们升
序排序。然后PUSH指令按照从大到小的顺序依次入栈，POP则按从小到大的顺序依次出栈。

* 实现
  * sp指向最后一个压入堆栈的数据，压栈时先将sp减4再存入数据。因为CM3 使用的是向下生长的满栈，所以MSP的初始值必须是堆栈内存的末地址加 1。举例来说，如果你的堆栈区域在 0x20007C00‐0x20007FFF 之间，那么 MSP 的初始值就必须是0x20008000。

Q:在特权模式下发生中断，压栈用MSP，在ISR中，修改CONTROL[1]选PSP，出栈时会使用PSP出栈吗？
A:在 handler 模式下，只允许使用 MSP，所以此时不得往该位写 1

### 中断具体行为

1. 入栈:硬件自动依次把xPSR, PC, LR, R12以及R3‐R0压入适当的堆栈(PSP or MSP)中
2. 先把PC与xPSR的值保存，就可以更早地启动服务例程指令的预取——因为这需要修改PC；
   同时，也做到了在早期就可以更新xPSR中IPSR中的值

```
地址        存器            被保存的顺序
旧SP (N‐0) 原先已压入的内容
(N‐4)       xPSR            2
(N‐8)       PC              1      先压入PC和xPSR
(N‐12)      LR              8
(N‐16)      R12             7
(N‐20)      R3              6
(N‐24)      R2              5
(N‐28)      R1              4
新SP (N‐32) R0              3
```

如果当响应异常时，当前的代码正在使用PSP，则压入PSP，即使用线程堆栈；否则压入MSP，使用主堆栈，进入ISR后，一直使用MSP

1. 取向量：数据总线入栈时，指令总线(I-CODE)从向量表中找出对应的服务程序入口地址，预取指令
2. 在入栈和取向量操作完成之后，执行服务例程之前，更新寄存器
   1. SP: 在入栈后会把堆栈指针（PSP或MSP）更新到新的位置
   2. PSR: IPSR位段（地处PSR的最低部分）会被更新为新响应的异常编号
   3. PC: 在取向量完成后，PC将指向服务例程的入口地址
   4. LR: 被更新为EXC_RETURN，在异常返回时使用.EXC_RETURN的二进制值除了最低4位外全为1，而其最低4位则有另外的含义
   5. NVIC中，clear pending bit and set active bit
3. 异常返回
   通过把EXC_RETURN往PC里写来识别反回动作的

```
反回指令                 工作原理
BX <reg>                当LR存储EXC_RETURN时，使用BX LR即可反回
POP {PC}和POP {…,PC}    在ISR中， LR的值会被压入栈。
                        此时即可使用POP指令把LR存储的EXC_RETURN往PC里弹，从而启动处理器做中断反回
LDR与LDM                把PC作为目的寄存器，也可启动中断反回序列
```

启动中断返回后，做下面两件事

* 出栈，出栈顺序与入栈顺序相同
* 更新NVIC寄存器

5. 嵌套中断
6. 咬尾中断
7. 晚到的高优先级异常
8. 异常返回值EXC_RETURN

* I-Code总线，负责在0x00000000-0x1FFFFFFF之间取指操作
* D-Code总线，负责在0x00000000-0x1FFFFFFF之间数据访问操作,访问同一地址时优先级高于I-Code总线
  系统总线，负责在0x20000000-0xDFFFFFFF和0xE0100000-0xFFFFFFFF之间的所有数据传送（包括取指和数据访问）
  外部私有外设总线，负责0xE004_0000-0xE00F_FFFF之间的私有外设访问，TPIU,ETM,ROM表用了一部分，只剩0xE004_2000-0xE00F_F000用于配置附加的外设

### 存储器

1. 访问属性

* 可否缓冲(Bufferable)
* 可否缓存(Cacheable)
* 可否执行(Executable)
* 可否共享(Sharable)

2. 地址空间可以通过另一种方式分为 8 个 512MB 等份

* 代码区（0x0000_0000‐ 0x1FFF_FFFF）
  * 可以执行指令，缓存属性为 WT（“写通”，Write Through），即**不可缓存**
  * 可写数据，在此区上的数据操作是通过数据总线接口的（读数据使用 D‐Code，写数据使用 System）。在此区上的**写操作是缓冲的**
* SRAM 区（0x2000_0000 – 0x3FFF_FFFF）
  * 用于片内 SRAM，写操作是**缓冲的**，并且可以选择 WB‐WA(Write Back, Write Allocated)缓存属性
  * 可以执行指令，以允许把代码拷贝到内存中执行——常用于固件升级等维护工作
* 片上外设区(0x4000_0000 – 0x5FFF_FFFF)
  * 用于片上外设，因此是**不可缓存**的，也不可以在此区执行指令(eXecute Never, XN)
* 外部 RAM 区的前半段（0x6000_0000 ‐ 0x7FFF_FFFF）
  * 用于片外 RAM，**可缓存**（缓存属性为 WB‐WA），并且可以执行指令
* 外部 RAM 区的后半段（0x8000_0000 – 0x9FFF_FFFF）
  * 除了**不可缓存**(WT)外，同前半段
* 外部外设区的前半段(0xA000_0000 – 0xBFFF_FFFF)
  * 用于片外外设的寄存器，也用于多核系统中的共享内存（需要严格按顺序操作，即**不可缓冲**），也不可以在此区执行指令(eXecute Never, XN)
* 外部外设区的后半段(0xC000_0000 – 0xDFFF_FFFF)
  * 目前与前半段的功能完全一致
* 系统区(0xE000_0000 – 0xFFFF_FFFF)
  * 此区是私有外设和供应商指定功能区。
  * 此区不可执行代码。
  * 系统区涉及到很多关键部位，因此访问都是严格序列化的（**不可缓存，不可缓冲**）。
  * 供应商指定功能区（Vendor-Specific）则是**可以缓存和缓冲**的。

3. 写通，写回，写时申请

* 写回(Write Back)
  * 写入的数据先逗留在缓存中，待到必要时再落实到最终目的地
* 写通(Write Through)
  * 写操作“穿透”中途的缓存，直接落入最终的目的地中。写通操作架空了 cache，但它使写操作的结果立即生效。这常用于和片上外设或其它处理器共享的内存中，如显卡的显存，片上外设寄存器，以及双核系统中的共享内存。写通操作和 C 中的“volatile”有密切的联系
* 写时申请(Write Allocate)

4. 互斥访问

* 互斥访问分为加载和存储，相应的指令对子为 LDREX/STREX, LDREXH/STREXH,LDREXB/STREXB，分别对应于字/半字/字
* 建议只在特定地址区间适用互斥访问规则，不要在整个4G空间都做限制
* 当使用互斥访问时，在 CM3 总线接口上的内部**写缓冲会被旁路**，即使是 MPU 规定此区是可以缓冲的也不行。这保证了互斥体的更新总能在第一时间内完成，从而保证数据在各个总线主机(master)之间是一致的。So 系统的设计师如果设计多核系统，则必须保证各核之间看到的数据也是一致的

```
LDREX/STREX 的语法格式为：
  LDREX Rxf, [Rn, #offset]
  STREX Rd, Rxf, [Rn, #offset]
```

* LDREX 的语法同 LDR 相同
* STREX 指令的执行是可以被“驳回”的。
  * 当处理器同意执行 STREX 时，Rxf 的值被存储到(Rn+offset)处，并且把 Rd 的值更新为0。
  * 但若处理器驳回了 STREX 的执行，则不会发生存储动作，并且把 Rd 的值更新为 1
* “驳回”的规则可宽可严，最严格的规则是：
  * 当遇到 STREX 指令时，仅当在它之前执行过 LDREX 指令，且在最近的一条 LDREX 指令执行后，没有执行过其它的 STR/STREX 指令，才允许执行本条 STREX 指令。也就是说只有在 LDREX 执行后，从时间上与之距离最近的一条 STREX 才能成功执行。
  * 其它情况下，驳回此 STREX。包括：
    * 中途有其它的 STR 指令执行
    * 中途有其它的 STREX 指令执行

### 异常

[cortex-m-fault-debug](https://interrupt.memfault.com/blog/cortex-m-fault-debug#fn:8)
[debugging-hard-faults-on-arm-cortex-m](https://mcuoneclipse.com/2012/11/24/debugging-hard-faults-on-arm-cortex-m/)
[Imprecise-Hard-Fault-](https://community.nxp.com/t5/Kinetis-Microcontrollers/A-Way-to-Detect-Imprecise-Hard-Fault-Source/ta-p/1109325)
[How to debug a HardFault on an ARM Cortex-M MCU](https://interrupt.memfault.com/blog/cortex-m-fault-debug#svd-usage-example)
[How to debug a HardFault on an ARM Cortex-M MCU](https://vimeo.com/563777040)

* Imprecise Bus Error Debug Tips

> Imprecise errors are one of the hardest classes of faults to debug. They result asynchronously to instruction execution flow. This means the registers stacked on exception entry will not point to the code that caused the exception.
>
> Instruction fetches and data loads should always generate synchronous faults for Cortex-M devices and be precise. Conversely, **store operations can generate asynchronous faults**. This is because writes will sometimes be buffered prior to being flushed to prevent pipeline stalls so the program counter will advance before the actual data store completes.
>
> When debugging an imprecise error, you will want to inspect the code around the area reported by the exception for a **store** that looks suspicious. If the MCU has support for the ARM Embedded Trace Macrocell (ETM), the history of recently executed instructions can be viewed by some debuggers.

#### Recovering the Call Stack

> To fix a fault, we will want to determine what code was running when the fault occurred. To accomplish this, we need to recover the register state at the time of exception entry

> Upon exception entry, the active stack pointer is encoded in bit 2 of the EXC_RETURN value pushed to the link register. If the bit is set, the psp was active prior to exception entry, else the msp was active.
> First eight values on stack will always be: r0, r1, r2, r3, r12, LR, pc, xPSR

### crt.o

```
_start
__bss_start__
__bss_end__
```

```
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard/crt0.o: In function `_start':
(.text+0x64): undefined reference to `__bss_start__'
(.text+0x68): undefined reference to `__bss_end__'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-exit.o): In function `exit':
exit.c:(.text.exit+0x16): undefined reference to `_exit'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-sbrkr.o): In function `_sbrk_r':
sbrkr.c:(.text._sbrk_r+0xc): undefined reference to `_sbrk'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-writer.o): In function `_write_r':
writer.c:(.text._write_r+0x12): undefined reference to `_write'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-closer.o): In function `_close_r':
closer.c:(.text._close_r+0xc): undefined reference to `_close'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-fstatr.o): In function `_fstat_r':
fstatr.c:(.text._fstat_r+0x10): undefined reference to `_fstat'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-isattyr.o): In function `_isatty_r':
isattyr.c:(.text._isatty_r+0xc): undefined reference to `_isatty'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-lseekr.o): In function `_lseek_r':
lseekr.c:(.text._lseek_r+0x12): undefined reference to `_lseek'
d:/program files (x86)/gnu tools arm embedded/7 2017-q4-major/bin/../lib/gcc/arm-none-eabi/7.2.1/../../../../arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard\libc.a(lib_a-readr.o): In function `_read_r':
readr.c:(.text._read_r+0x12): undefined reference to `_read'
```

然后出现undefined

```
In function `_sbrk' undefined reference to `end'
```

原因是 The symbol end needs to be defined in the .lds linker script, which is used to set the location of the heap.
在ld文件的section中 添加如下:

```
end = .;
```
