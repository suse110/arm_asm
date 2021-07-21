.type _start, %function
.word stack_top
.word _start

.global _start

_start:

ldr r1, =c_entry
bx r1
