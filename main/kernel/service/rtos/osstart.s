.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb

.global current_task
.global next_task

.section .text.pendsv_handler,"ax",%progbits
.type PendSV_Handler, %function

PendSV_Handler:
mrs r0, psp
cbz r0, PendSVHandler_nosave

stmdb r0!,{r4-r11}

ldr r1,  =current_task
ldr r1, [r1] 
str r0, [r1] //把sp保存在task堆栈里

PendSVHandler_nosave:
ldr r0,=current_task
ldr r1,=next_task
ldr r2,[r1]
str r2,[r0]

ldr   r0, [r2]
ldmia R0!,{r4-r11}
msr psp, r0
orr lr,lr,#0x04
bx lr
.size PendSV_Handler,.-PendSV_Handler

