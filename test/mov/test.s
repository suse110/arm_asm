/*
MOV  R4, R0           ; Copy value from R0 to R4
MOVS R4, R0           ; Copy value from R0 to R4 with APSR (flags) update
MRS  R7, PRIMASK      ; Copy value of PRIMASK (special register) to R7
MSR  CONTROL, R2      ; Copy value of R2 into CONTROL (special register)
MOV  R3, #0x34        ; Set R3 value to 0x34
MOVS R3, #0x34        ; Set R3 value to 0x34 with APSR update
MOVW R6, #0x1234      ; Set R6 to a 16-bit constant 0x1234
MOVT R6, #0x8765      ; Set the upper 16-bit of R6 to 0x8765
MVN  R3, R7           ; Move negative value of R7 into R3

VMOV R0, S0           ; Copy floating point register S0 to general purpose register R0
VMOV S0, R0           ; Copy general purpose register R0 to floating point register S0
VMOV S0, S1           ; Copy floating point register S1 to S0 (single precision)
VMRS.F32 R0, FPSCR    ; Copy value in FPSCR, a floating point unit system register to R0
VMRS APSR_nzcv, FPSCR ; Copy flags from FPSCR to the flags in APSR
VMSR FPSCR, R3        ; Copy R3 to FPSCR, a floating point unit system register
VMOV.F32 S0, #1.0     ; Move single-precision value into floating point register S0
@ */



.word stack_top
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



