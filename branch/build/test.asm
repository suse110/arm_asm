
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x8>:
   0:	20001000 	.word	0x20001000
   4:	00000008 	.word	0x00000008

00000008 <_start>:
.word _estack
.word _start

.global _start
_start:
ldr r0, =c_entry
   8:	4800      	ldr	r0, [pc, #0]	; (c <_start+0x4>)
bx r0
   a:	4700      	bx	r0
ldr r0, =c_entry
   c:	00000041 	.word	0x00000041

00000010 <uart_print>:
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static void uart_print(const char* s)
{
  10:	b480      	push	{r7}
  12:	b083      	sub	sp, #12
  14:	af00      	add	r7, sp, #0
  16:	6078      	str	r0, [r7, #4]
    while (*s != '\0') {
  18:	e006      	b.n	28 <uart_print+0x18>
        *UART_DR = *s;
  1a:	687b      	ldr	r3, [r7, #4]
  1c:	781a      	ldrb	r2, [r3, #0]
  1e:	4b07      	ldr	r3, [pc, #28]	; (3c <uart_print+0x2c>)
  20:	601a      	str	r2, [r3, #0]
        s++;
  22:	687b      	ldr	r3, [r7, #4]
  24:	3301      	adds	r3, #1
  26:	607b      	str	r3, [r7, #4]
    while (*s != '\0') {
  28:	687b      	ldr	r3, [r7, #4]
  2a:	781b      	ldrb	r3, [r3, #0]
  2c:	2b00      	cmp	r3, #0
  2e:	d1f4      	bne.n	1a <uart_print+0xa>
    }
}
  30:	bf00      	nop
  32:	370c      	adds	r7, #12
  34:	46bd      	mov	sp, r7
  36:	bc80      	pop	{r7}
  38:	4770      	bx	lr
  3a:	bf00      	nop
  3c:	4000c000 	.word	0x4000c000

00000040 <c_entry>:

void c_entry(void)
{
  40:	b580      	push	{r7, lr}
  42:	af00      	add	r7, sp, #0
    uart_print("hello world\n");
  44:	4801      	ldr	r0, [pc, #4]	; (4c <c_entry+0xc>)
  46:	f7ff ffe3 	bl	10 <uart_print>
    while(1);
  4a:	e7fe      	b.n	4a <c_entry+0xa>
  4c:	00000060 	.word	0x00000060
