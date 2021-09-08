.word _estack
.word _start

.global _start


_start:
ldr r0, =str
mov r1, #1
mov r2, #2
mov r3, #3
b .


.section .rodata
str:
    .ascii "asm hello word\n"
