
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x8>:
   0:	20001000 	.word	0x20001000
   4:	00000008 	.word	0x00000008

00000008 <_start>:

.syntax unified    /*这很重要！说明下面的指令是ARM和THUMB通用格式*/

_start:

bl it_cond_op_arm
   8:	eb000004 	bl	20 <it_cond_op_arm>
bl it_cond_op_thumb
   c:	eb000009 	bl	38 <it_cond_op_thumb>
bl it_cond_op_arm_thumb2
  10:	eb000011 	bl	5c <it_cond_op_arm_thumb2>

ldr r0, =str
  14:	e59f006c 	ldr	r0, [pc, #108]	; 88 <exit+0x2>
bl uart_printf
  18:	eb000014 	bl	70 <uart_printf>
b .
  1c:	eafffffe 	b	1c <_start+0x14>

00000020 <it_cond_op_arm>:

it_cond_op_arm:
.code 32         /*.code32是指代码在ARM模式下执行*/
/*ADDLT不会执行,R0也不会被修改*/
mov     r0, #2     /* 初始化值 */
  20:	e3a00002 	mov	r0, #2
cmp     r0, #3     /* 将R0和3相比做差，负数产生则N位置1 */
  24:	e3500003 	cmp	r0, #3
addlt   r0, r0, #1 /* 如果小于等于3，则R0加一.对应到CPSR寄存器的情况时V与N比特位不能相同 */
  28:	b2800001 	addlt	r0, r0, #1
cmp     r0, #3     /* 将R0和3相比做差，零结果产生则Z位置一，N位置恢复为0 */
  2c:	e3500003 	cmp	r0, #3
addlt   r0, r0, #1 /* 如果小于等于3，则R0加一R0 IF it was determined that it is smaller (lower than) number 3 */
  30:	b2800001 	addlt	r0, r0, #1
bx      lr
  34:	e12fff1e 	bx	lr

00000038 <it_cond_op_thumb>:
        IT     NE           ; 下一条指令条件执行
        ADD    R0, R0, R1   ; 格式错误：没有条件指令

    docs\img\条件指令-后缀及相反指令.png
*/
ITTE   NE           /* 后三条指令条件执行*/
  38:	bf1a      	itte	ne
ANDNE  R0, R0, R1   /* ANDNE不更新条件执行相关flags*/
  3a:	4008      	andne	r0, r1
ADDSNE R2, R2, #1   /* ADDSNE更新条件执行相关flags*/
  3c:	f112 0201 	addsne.w	r2, r2, #1
MOVEQ  R2, R3       /* 条件执行的move*/
  40:	461a      	moveq	r2, r3

ITE    GT           /* 后两条指令条件执行*/
  42:	bfcc      	ite	gt
ADDGT  R1, R0, #55  /* GT条件满足时执行加*/
  44:	f100 0137 	addgt.w	r1, r0, #55	; 0x37
ADDLE  R1, R0, #48  /* GT条件不满足时执行加*/
  48:	f100 0130 	addle.w	r1, r0, #48	; 0x30

ITTEE  EQ           /* 后两条指令条件执行*/
  4c:	bf07      	ittee	eq
MOVEQ  R0, R1       /* 条件执行MOV*/
  4e:	4608      	moveq	r0, r1
ADDEQ  R2, R2, #10  /* 条件执行ADD*/
  50:	320a      	addeq	r2, #10
ANDNE  R3, R3, #1   /* 条件执行AND*/
  52:	f003 0301 	andne.w	r3, r3, #1
BNE.W  dloop        /* 分支指令只能在IT块的最后一条指令中使用*/
  56:	f000 b800 	bne.w	5a <dloop>

0000005a <dloop>:

dloop:
    bx lr
  5a:	4770      	bx	lr

0000005c <it_cond_op_arm_thumb2>:

it_cond_op_arm_thumb2:
    .code 32         /*.code32是指代码在ARM模式下执行*/
    add r3, pc, #1   /*R3=pc+1*/
  5c:	e28f3001 	add	r3, pc, #1
    bx r3            /*分支跳转到R3并且切换到Thumb模式下由于最低比特位为1*/
  60:	e12fff13 	bx	r3

    .code 16         /*.code16是在Thumb模式下执行的代码*/
    cmp r0, #10      
  64:	280a      	cmp	r0, #10
    ite eq           /*if R0 == 10*/
  66:	bf0c      	ite	eq
    addeq r1, #2     /*then R1 = R1 + 2*/
  68:	3102      	addeq	r1, #2
    addne r1, #3     /*else R1 = R1 + 3*/
  6a:	3103      	addne	r1, #3
    bkpt
  6c:	be00      	bkpt	0x0000
    bx lr
  6e:	4770      	bx	lr

00000070 <uart_printf>:

.set UART_DR,0x4000c000
uart_printf:
    push    {lr}
  70:	b500      	push	{lr}
    movw    r1, #0xc000 /*加载地址到r1低16位*/
  72:	f24c 0100 	movw	r1, #49152	; 0xc000
    movt    r1, #0x4000 /*加载地址到r1高16位*/
  76:	f2c4 0100 	movt	r1, #16384	; 0x4000

0000007a <send_loop>:
send_loop:
    ldrb     r2, [r0]   /*从R0地址处加载一个byte到r2,r0为字符串所在地址*/
  7a:	7802      	ldrb	r2, [r0, #0]
    cbz r2, exit        /*如果 r2 为0,则 跳转到exit*/
  7c:	b11a      	cbz	r2, 86 <exit>
    strb r2,[r1]        /*将r2的值写入r1地址*/
  7e:	700a      	strb	r2, [r1, #0]
    add r0,r0,#1        /*r0加1*/
  80:	f100 0001 	add.w	r0, r0, #1
    b send_loop
  84:	e7f9      	b.n	7a <send_loop>

00000086 <exit>:
exit:
    pop     {pc}
  86:	bd00      	pop	{pc}
ldr r0, =str
  88:	0000008c 	.word	0x0000008c
