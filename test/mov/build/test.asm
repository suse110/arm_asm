
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x8>:
   0:	20001000 	.word	0x20001000
   4:	00000008 	.word	0x00000008

00000008 <_start>:

.global _start


_start:
ldr r0, =str
   8:	4807      	ldr	r0, [pc, #28]	; (28 <exit+0x4>)
bl uart_printf
   a:	f000 f801 	bl	10 <uart_printf>





b .
   e:	e7fe      	b.n	e <_start+0x6>

00000010 <uart_printf>:

.set UART_DR,0x4000c000
uart_printf:
    push    {lr}
  10:	b500      	push	{lr}
    movw    r1, #0xc000 /*加载地址到r1低16位*/
  12:	f24c 0100 	movw	r1, #49152	; 0xc000
    movt    r1, #0x4000 /*加载地址到r1高16位*/
  16:	f2c4 0100 	movt	r1, #16384	; 0x4000

0000001a <send_loop>:
send_loop:
    ldrb     r2, [r0]   /*从R0地址处加载一个byte到r2,r0为字符串所在地址*/
  1a:	7802      	ldrb	r2, [r0, #0]
    cbz r2, exit        /*如果 r2 为0,则 跳转到exit*/
  1c:	b112      	cbz	r2, 24 <exit>
    strb r2,[r1]        /*将r2的值写入r1地址*/
  1e:	700a      	strb	r2, [r1, #0]
    add r0,r0,#1        /*r0加1*/
  20:	3001      	adds	r0, #1
    b send_loop
  22:	e7fa      	b.n	1a <send_loop>

00000024 <exit>:
exit:
    pop     {pc}
  24:	bd00      	pop	{pc}
  26:	0000      	.short	0x0000
ldr r0, =str
  28:	0000002c 	.word	0x0000002c
