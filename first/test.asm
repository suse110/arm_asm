
test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x40>:
   0:	20001008 	.word	0x20001008
   4:	00000040 	.word	0x00000040
   8:	00000091 	.word	0x00000091
   c:	00000091 	.word	0x00000091
  10:	00000091 	.word	0x00000091
  14:	00000091 	.word	0x00000091
  18:	00000091 	.word	0x00000091
  1c:	00000090 	.word	0x00000090
  20:	00000090 	.word	0x00000090
  24:	00000090 	.word	0x00000090
  28:	00000090 	.word	0x00000090
  2c:	00000091 	.word	0x00000091
  30:	00000091 	.word	0x00000091
  34:	00000090 	.word	0x00000090
  38:	00000091 	.word	0x00000091
  3c:	00000091 	.word	0x00000091

00000040 <_start>:

.global _start

_start:

ldr r1, =main
  40:	4900      	ldr	r1, [pc, #0]	; (44 <_start+0x4>)
bx r1
  42:	4708      	bx	r1
ldr r1, =main
  44:	0000007d 	.word	0x0000007d
  48:	11223344 	.word	0x11223344

0000004c <uart_print>:
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static void uart_print(const char* s)
{
  4c:	b480      	push	{r7}
  4e:	b081      	sub	sp, #4
  50:	af00      	add	r7, sp, #0
  52:	6038      	str	r0, [r7, #0]
    while (*s != '\0') {
  54:	e006      	b.n	64 <uart_print+0x18>
        *UART_DR = *s;
  56:	683b      	ldr	r3, [r7, #0]
  58:	781a      	ldrb	r2, [r3, #0]
  5a:	4b07      	ldr	r3, [pc, #28]	; (78 <uart_print+0x2c>)
  5c:	601a      	str	r2, [r3, #0]
        s++;
  5e:	683b      	ldr	r3, [r7, #0]
  60:	3301      	adds	r3, #1
  62:	603b      	str	r3, [r7, #0]
    while (*s != '\0') {
  64:	683b      	ldr	r3, [r7, #0]
  66:	781b      	ldrb	r3, [r3, #0]
  68:	2b00      	cmp	r3, #0
  6a:	d1f4      	bne.n	56 <uart_print+0xa>
    }
}
  6c:	bf00      	nop
  6e:	3704      	adds	r7, #4
  70:	46bd      	mov	sp, r7
  72:	bc80      	pop	{r7}
  74:	4770      	bx	lr
  76:	bf00      	nop
  78:	4000c000 	.word	0x4000c000

0000007c <main>:

void main(void)
{
  7c:	b580      	push	{r7, lr}
  7e:	af00      	add	r7, sp, #0
    uart_print("hello world\n");
  80:	4801      	ldr	r0, [pc, #4]	; (88 <main+0xc>)
  82:	f7ff ffe3 	bl	4c <uart_print>
    while(1);
  86:	e7fe      	b.n	86 <main+0xa>
  88:	00000098 	.word	0x00000098
  8c:	55aa55aa 	.word	0x55aa55aa

Disassembly of section .text.default_handler:

00000090 <bus_fault_handler>:
    b .
  90:	e7fe      	b.n	90 <bus_fault_handler>
