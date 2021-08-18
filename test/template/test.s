.word stack_top
.word _start

.global _start
_start:
ldr r0, =c_entry
bx r0

# .set UART_DR,0x4000c000
# asm_uart_printf:
#     push    {lr}
#     movw    r1, #0xc000 /*加载地址到r1低16位*/
#     movt    r1, #0x4000 /*加载地址到r1高16位*/
# send_loop:
#     ldrb     r2, [r0]   /*从R0地址处加载一个byte到r2,r0为字符串所在地址*/
#     cbz r2, exit        /*如果 r2 为0,则 跳转到exit*/
#     strb r2,[r1]        /*将r2的值写入r1地址*/
#     add r0,r0,#1        /*r0加1*/
#     b send_loop
# exit:
#     pop     {pc}

# .section .rodata
# str:
#     .ascii "asm hello word\n"

