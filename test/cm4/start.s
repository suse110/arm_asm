.section .is_vector
.thumb

.word _estack
.word _start
.word  NMI_Handler
.word  HardFault_Handler
.word  MemManage_Handler
.word  BusFault_Handler
.word  UsageFault_Handler
.word  0
.word  0
.word  0
.word  0
.word  SVC_Handler
.word  DebugMon_Handler
.word  0
.word  PendSV_Handler
.word  SysTick_Handler

.global _start
_start:
ldr r0, =str
bl uart_printf
ldr r0, =c_entry
bx r0
b .


.section  .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
    # bkpt 1
    b  Infinite_Loop
    .size  Default_Handler, .-Default_Handler

.section .text.pendsv_handler,"ax",%progbits
.type PendSV_Handler, %function
PendSV_Handler:
b .

.set UART_DR,0x40011004
.section .text.uart_printf,"ax",%progbits
.type uart_printf, %function
uart_printf:
    push    {lr}
    movw    r1, #0x1004 /*加载地址到r1低16位*/
    movt    r1, #0x4001 /*加载地址到r1高16位*/
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



.weak      NMI_Handler
.thumb_set NMI_Handler,Default_Handler

.weak      HardFault_Handler
.thumb_set HardFault_Handler,Default_Handler

.weak      MemManage_Handler
.thumb_set MemManage_Handler,Default_Handler

.weak      BusFault_Handler
.thumb_set BusFault_Handler,Default_Handler

.weak      UsageFault_Handler
.thumb_set UsageFault_Handler,Default_Handler

.weak      SVC_Handler
.thumb_set SVC_Handler,Default_Handler

.weak      DebugMon_Handler
.thumb_set DebugMon_Handler,Default_Handler

# .weak      PendSV_Handler
# .thumb_set PendSV_Handler,Default_Handler

.weak      SysTick_Handler
.thumb_set SysTick_Handler,Default_Handler              
