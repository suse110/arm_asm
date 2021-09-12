/*
条件执行用来控制程序执行跳转，或者满足条件下的特定指令的执行。相关条件在CPSR寄存器中描述

docs\img\条件指令-条件码.png

* Thumb模式中的条件执行
    在指令集那篇文章中我们谈到了不同的指令集，对于Thumb中，其实也有条件执的(Thumb-2中有)。
    有些ARM处理器版本支持IT指令，允许在Thumb模式下条件执行最多四条指令。

* 指令格式：Syntax: IT{x{y{z}}} cond

    cond 代表在IT指令后第一条条件执行执行指令的需要满足的条件。
    x 代表着第二条条件执行指令要满足的条件逻辑相同还是相反。
    y 代表着第三条条件执行指令要满足的条件逻辑相同还是相反。
    z 代表着第四条条件执行指令要满足的条件逻辑相同还是相反。

    IT指令的含义是“IF-Then-(Else)”，跟这个形式类似的还有：
        IT，If-Then，接下来的一条指令条件执行。
        ITT，If-Then-Then，接下来的两条指令条件执行。
        ITE，If-Then-Else，接下来的两条指令条件执行。
        ITTE，If-Then-Then-Else，接下来的三条指令条件执行。
        ITTEE，If-Then-Then-Else-Else，接下来的四条指令条件执行

*/



.word stack_top
.word _start

.global _start

.syntax unified    /*这很重要！说明下面的指令是ARM和THUMB通用格式*/

_start:

bl it_cond_op_arm
bl it_cond_op_thumb
bl it_cond_op_arm_thumb2

ldr r0, =str
bl uart_printf
b .

it_cond_op_arm:
.code 32         /*.code32是指代码在ARM模式下执行*/
/*ADDLT不会执行,R0也不会被修改*/
mov     r0, #2     /* 初始化值 */
cmp     r0, #3     /* 将R0和3相比做差，负数产生则N位置1 */
addlt   r0, r0, #1 /* 如果小于等于3，则R0加一.对应到CPSR寄存器的情况时V与N比特位不能相同 */
cmp     r0, #3     /* 将R0和3相比做差，零结果产生则Z位置一，N位置恢复为0 */
addlt   r0, r0, #1 /* 如果小于等于3，则R0加一R0 IF it was determined that it is smaller (lower than) number 3 */
bx      lr

it_cond_op_thumb:
.code 16         /*.code16是在Thumb模式下执行的代码*/

/*
在IT块中的每一条条件执行指令必须是相同逻辑条件或者相反逻辑条件。
    比如说ITE指令，第一条和第二条指令必须使用相同的条件，而第三条必须是与前两条逻辑上相反的条件
    错误的格式：
        IT     NE           ; 下一条指令条件执行
        ADD    R0, R0, R1   ; 格式错误：没有条件指令

    docs\img\条件指令-后缀及相反指令.png
*/
ITTE   NE           /* 后三条指令条件执行*/
ANDNE  R0, R0, R1   /* ANDNE不更新条件执行相关flags*/
ADDSNE R2, R2, #1   /* ADDSNE更新条件执行相关flags*/
MOVEQ  R2, R3       /* 条件执行的move*/

ITE    GT           /* 后两条指令条件执行*/
ADDGT  R1, R0, #55  /* GT条件满足时执行加*/
ADDLE  R1, R0, #48  /* GT条件不满足时执行加*/

ITTEE  EQ           /* 后两条指令条件执行*/
MOVEQ  R0, R1       /* 条件执行MOV*/
ADDEQ  R2, R2, #10  /* 条件执行ADD*/
ANDNE  R3, R3, #1   /* 条件执行AND*/
BNE.W  dloop        /* 分支指令只能在IT块的最后一条指令中使用*/

dloop:
    bx lr

it_cond_op_arm_thumb2:
    .code 32         /*.code32是指代码在ARM模式下执行*/
    add r3, pc, #1   /*R3=pc+1*/
    bx r3            /*分支跳转到R3并且切换到Thumb模式下由于最低比特位为1*/

    .code 16         /*.code16是在Thumb模式下执行的代码*/
    cmp r0, #10      
    ite eq           /*if R0 == 10*/
    addeq r1, #2     /*then R1 = R1 + 2*/
    addne r1, #3     /*else R1 = R1 + 3*/
    bkpt
    bx lr

.set UART_DR,0x4000c000
uart_printf:
    push    {lr}
    movw    r1, #0xc000 /*加载地址到r1低16位*/
    movt    r1, #0x4000 /*加载地址到r1高16位*/
send_loop:
    ldrb     r2, [r0]   /*从R0地址处加载一个byte到r2,r0为字符串所在地址*/
    cbz r2, exit        /*如果 r2 为0,则 跳转到exit*/
    strb r2,[r1]        /*将r2的值写入r1地址*/
    add r0,r0,#1        /*r0加1*/
    b send_loop
exit:
    pop     {pc}

.section .rodata
str:
    .ascii "asm hello word\n"



