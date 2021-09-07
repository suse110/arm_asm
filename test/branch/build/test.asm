
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <uart_print>:
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static void uart_print(const char* s)
{
   0:	b480      	push	{r7}
   2:	b083      	sub	sp, #12
   4:	af00      	add	r7, sp, #0
   6:	6078      	str	r0, [r7, #4]
    while (*s != '\0') {
   8:	e006      	b.n	18 <uart_print+0x18>
        *UART_DR = *s;
   a:	687b      	ldr	r3, [r7, #4]
   c:	781a      	ldrb	r2, [r3, #0]
   e:	4b07      	ldr	r3, [pc, #28]	; (2c <uart_print+0x2c>)
  10:	601a      	str	r2, [r3, #0]
        s++;
  12:	687b      	ldr	r3, [r7, #4]
  14:	3301      	adds	r3, #1
  16:	607b      	str	r3, [r7, #4]
    while (*s != '\0') {
  18:	687b      	ldr	r3, [r7, #4]
  1a:	781b      	ldrb	r3, [r3, #0]
  1c:	2b00      	cmp	r3, #0
  1e:	d1f4      	bne.n	a <uart_print+0xa>
    }
}
  20:	bf00      	nop
  22:	bf00      	nop
  24:	370c      	adds	r7, #12
  26:	46bd      	mov	sp, r7
  28:	bc80      	pop	{r7}
  2a:	4770      	bx	lr
  2c:	4000c000 	.word	0x4000c000

00000030 <c_entry>:

void c_entry(void)
{
  30:	b580      	push	{r7, lr}
  32:	af00      	add	r7, sp, #0
    uart_print("hello world\n");
  34:	4801      	ldr	r0, [pc, #4]	; (3c <c_entry+0xc>)
  36:	f7ff ffe3 	bl	0 <uart_print>
    while(1);
  3a:	e7fe      	b.n	3a <c_entry+0xa>
  3c:	00000054 	.word	0x00000054
  40:	20001000 	.word	0x20001000
  44:	00000048 	.word	0x00000048

00000048 <_start>:
.word _estack
.word _start

.global _start
_start:
ldr r0, =c_entry
  48:	4800      	ldr	r0, [pc, #0]	; (4c <_start+0x4>)
bx r0
  4a:	4700      	bx	r0
ldr r0, =c_entry
  4c:	00000031 	.word	0x00000031
