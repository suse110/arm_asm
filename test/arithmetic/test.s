/*
@ ADD  Rd, Rn, Rm                 ; Rd = Rn + Rm ADD operation
@ ADD  Rd, Rn, #immed             ; Rd = Rn + #immed
@ ADC  Rd, Rn, Rm                 ; Rd = Rn + Rm + carry ADD with carry
@ ADC  Rd, #immed                 ; Rd = Rd + #immed + carry
@ ADDW Rd, Rn, #immed             ; Rd = Rn + #immed ADD register with 12-bit immediate value
@ SUB  Rd, Rn, Rm                 ; Rd = Rn - Rm SUBTRACT
@ SUB  Rd, #immed                 ; Rd = Rd - #immed
@ SUB  Rd, Rn, #immed             ; Rd = Rn - #immed
@ SBC  Rd, Rn, #immed             ; Rd = Rn - #immed - borrow SUBTRACT with borrow (not carry)
@ SBC  Rd, Rn, Rm                 ; Rd = Rn - Rm - borrow
@ SUBW Rd, Rn, #immed             ; Rd = Rn - #immed SUBTRACT register with 12-bit immediate value
@ RSB  Rd, Rn, #immed             ; Rd = #immed - Rn Reverse subtract
@ RSB  Rd, Rn, Rm                 ; Rd = Rm - Rn
@ MUL  Rd, Rn, Rm                 ; Rd = Rn * Rm Multiply (32-bit result)
@ UDIV Rd, Rn, Rm                 ; Rd = Rn /Rm Unsigned and signed divide
@ SDIV Rd, Rn, Rm                 ; Rd = Rn /Rm
@ MLA  Rd, Rn, Rm, Ra             ; Rd = Ra + Rn * Rm 32-bit MAC instruction, 32-bit result
@ MLS  Rd, Rn, Rm, Ra             ; Rd = Ra - Rn * Rm 32-bit multiply with subtract instruction, 32-bit result
@ SMULL RdLo, RdHi, Rn, Rm        ;{RdHi,RdLo} = Rn * Rm 32-bit multiply & MAC instructions for signed values, 64-bit result
@ SMLAL RdLo, RdHi, Rn, Rm        ;{RdHi,RdLo} += Rn * Rm
@ UMULL RdLo, RdHi, Rn, Rm        ;{RdHi,RdLo} = Rn * Rm 32-bit multiply & MAC instructions for unsigned values, 64-bit result
@ UMLAL RdLo, RdHi, Rn, Rm        ;{RdHi,RdLo} += Rn * Rm
@ */



.word _estack
.word _start

.global _start


_start:
ldr r0, =str
bl uart_printf






b .

.set UART_DR,0x4000c000
uart_printf:
    push    {lr}
    movw    r1, #0xc000 /*加载地址到r1低16位*/
    movt    r1, #0x4000 /*加载地址到r1高16位*/
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



