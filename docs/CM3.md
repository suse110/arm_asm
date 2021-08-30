### 复位序列
[Understand the GNU assembler startup file of cortex M4](https://www.silabs.com/community/mcu/32-bit/knowledge-base.entry.html/2018/11/11/understand_the_gnua-zyam)

1. 从0x0000_0000地址取出MSP初始值
2. 从0x0000_0004地址取出PC初始值，这个值是复位向量(Reset_handler)，LSB必须是1，然后在这个值所对应的地址取指。
   1. 向量表中的数值是32位地址，而不是跳转指令。向量表的第一个条目指向复位后执行的第一条指令
   2. Reset_handler 里做什么事情呢？直接跳转到main函数码？
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

### 堆栈初始内容
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


### 中断具体行为
1. 入栈:硬件自动依次把xPSR, PC, LR, R12以及R3‐R0压入适当的堆栈(PSP or MSP)中
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

2. 取向量：数据总线入栈时，指令总线(I-CODE)从向量表中找出对应的服务程序入口地址，预取指令
3. 选择堆栈指针MSP/PSP，更新堆栈指针SP，更新连接寄存器LR，更新程序计数器PC
   1. PSR： IPSR位段（地处PSR的最低部分）会被更新ᮄ为新响应的异常编号
   2. LR被更新为EXC_RETURN，在异常返回时使用
   3. NVIC中，clear pending bit and set active bit
4. 异常返回
通过把EXC_RETURN往PC里写来䆚别反回动作的
```
反回指令                 工作原理
BX <reg>                当LR存储EXC_RETURN时，使用BX LR即可反回
POP {PC}和POP {…,PC}    在ISR中， LR的值会被压入栈。此时即可使用POP指令把LR存储的EXC_RETURN往PC里弹，从而激起处理做中断反回
LDR与LDM                把PC作为目的寄存器，也可启动中断反回序列
```
启动中断返回后，做下面两件事
* 出栈，出栈顺序与入栈顺序相同
* 更新NVIC寄存器，

5. 嵌套中断
6. 咬尾中断
7. 晚到的高优先级异常
8. 异常返回值EXC_RETURN



I-Code总线，负责在0x00000000-0x1FFFFFFF之间取指操作
D-Code总线，负责在0x00000000-0x1FFFFFFF之间数据访问操作,访问同一地址时优先级高于I-Code总线
系统总线，负责在0x20000000-0xDFFFFFFF和0xE0100000-0xFFFFFFFF之间的所有数据传送（包括取指和数据访问）
外部私有外设总线，负责0xE004_0000-0xE00F_FFFF之间的私有外设访问，TPIU,ETM,ROM表用了一部分，只剩0xE004_2000-0xE00F_F000用于配置附加的外设

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

