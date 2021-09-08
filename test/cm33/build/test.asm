
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x8>:
   0:	20001000 	.word	0x20001000
   4:	00000008 	.word	0x00000008

00000008 <_start>:

.global _start


_start:
ldr r0, =str
   8:	4802      	ldr	r0, [pc, #8]	; (14 <_start+0xc>)
mov r1, #1
   a:	2101      	movs	r1, #1
mov r2, #2
   c:	2202      	movs	r2, #2
mov r3, #3
   e:	2303      	movs	r3, #3
b .
  10:	e7fe      	b.n	10 <_start+0x8>
  12:	0000      	.short	0x0000
ldr r0, =str
  14:	00000018 	.word	0x00000018
