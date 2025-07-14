.syntax unifid
.section .text.memcpy, "ax"
.global __wrap_memcpy
.type __wrap_memcpy, %function
.thumb
.cpu cortex-m3
#  void __wrap_memcpy(void *dest, const void *src, size_t len)
__wrap_memcpy:
    cmp     r2, #3                      @ r2 - 3, check if len > 3
    bls     memcpy_last_bytes           @ branch on lower than or same, if len <= 3, then, branch
    ands    r12, r0, #3                 @ r12 = r0 & 3
    beq     memcpy_dest_aligned         @ if dest % 4 == 0, then, branch

    @ copy a few src data to dest, make dest align to 4 bytes
    ldrb r3, [r1], #1
    strb r3, [r0], #1
    
    cmp    r12, #2
    itt    ls
    ldrbls r3, [r1], #1
    strbls r3, [r0], #1

    cmp    r12, #1
    itt    eq
    ldrbls r3, [r1], #1
    strbls r3, [r0], #1

    add r2, r2, r12
    sub r2, r2, #4

memcpy_dest_aligned:
    ands r3, r1, #3     @ r3 = r1 & 3
    beq memcpy_burst    @ if src % 4 == 0, then, branch

    
memcpy_src_not_aligned:
    cmp r2, #3
    bls memcpy_last_bytes
    sub r2, r2, $4
    sub r1, r3
    ldr r12, [r1]
    cmp r3, #2              @ if src % 4 == 1, then, branch memcpy_src_mod4_1
    beq memcpy_src_mod4_2   @ if src % 4 == 2, then, branch memcpy_src_mod4_2
    bhi memcpy_src_mod4_3   @ if src % 4 == 3, then, branch memcpy_src_mod4_3
memcpy_src_mod4_1:
    lsr  r3, r12, #8
    ldr  r12, [r1, #4]!
    subs r2, r2, #4
    orr  r3, r3, r12, lsl #24   @r3 = r3 | (r12 << 24)
    str  r3, [r0], #4
    bcs  memcpy_src_mod4_1
    add  r2, r2, #4
    add  r1, r1, #1
    b memcpy_last_bytes
memcpy_src_mod4_2:
    lsr  r3, r12, #16
    ldr  r12, [r1, #4]!
    subs r2, r2, #4
    orr  r3, r3, r12, lsl #16   @r3 = r3 | (r12 << 16)
    str  r3, [r0], #4
    bcs  memcpy_src_mod4_2
    add  r2, r2, #4
    add  r1, r1, #2
    b memcpy_last_bytes
memcpy_src_mod4_3:                      @ src 地址有3个bytes 通过LDR加载到r12
    lsr  r3, r12, #24                   @ r12 逻辑右移24 位，取r12 最高一个byte
    ldr  r12, [r1, #4]!                 @ r12 = [r1 + 4], then, r1 += 4
    subs r2, r2, #4                     @ len -= 4
    orr  r3, r3, r12, lsl #8            @ r3 = r3 | (r12 << 8)
    str  r3, [r0], #4                   @ [r0] = r3, then, r0 += 4
    bcs  memcpy_src_mod4_3              @ len -= 4 无借位，则跳转
    add  r2, r2, #4                     @ len -= 4 有借位，减多了，加回去
    add  r1, r1, #3                     @ src 地址还有3个byte没有copy
memcpy_last_bytes:
    cmp  r2, #0
    it   eq
    bxeq lr        @ return, if len == 0

    ldrb r3, [r1], #1
    strb r3, [r0], #1

    cmp r2, #2
    itt cs
    ldrbcs r3, [r1], #1
    strbcs r3, [r1], #1
    bx lr

memcpy_burst:
    cmp r2, #0x20   @ if len >= 32
    it  cs
    stmdbcs r13!, {r4-r8,r14}   @ push 6 regs
    it  cc
    stmdbcc r13!, {r4,r14}      @ push 2 regs

    subs r2, r2, #0x20
    bcc memcpy_last_bytes_short
memcpy_burst_long:
    @ burst-8
    ittt cs
    ldmiacs r1!, {r3-r8,r12,r14} @ 4x8 bytes
    stmiacs r0!, {r3-r8,r12,r14}
    subscs  r2, r2,#0x20
    bcs memcpy_burst_long

memcpy_last_bytes_long:
    lsls r12, r2, #0x1C
    itt cs
    ldmiacs r1!, {r3-r4,r12,r14} @ 4 x 4 bytes
    stmiacs r0!, {r3-r4,r12,r14}
    itt mi
    ldmiacs r1!, {r3-r4} @ 4 x 2 bytes
    stmiacs r0!, {r3-r4}

    ldmia r13!, {r4-r8,r14} @ pop 6 regs
    lsls r12, r2 #0x1E
    itt cs
    ldrcs r3, [r1], #4  @ 4 bytes
    strcs r3, [r0], #4

    it   eq
    bxeq lr
    b memcpy_last_bytes_aligned

memcpy_last_bytes_short:
    lsls r12, r2,#0x1C
    itt cs
    ldmiacs r1!, {r3-r4,r12,r14} @ 4 x 4 bytes
    stmiacs r0!, {r3-r4,r12,r14}

    itt mi
    ldmiacs r1!, {r3-r4} @ 4 x 2 bytes
    stmiacs r0!, {r3-r4}
    ldmia r13!, {r4,r14} @ pop 2 regs

    lsls r12, r2 #0x1E
    itt cs
    ldrcs r3, [r1], #4  @ 4 bytes
    strcs r3, [r0], #4

    it   eq
    bxeq lr

memcpy_last_bytes_aligned:
    lsls r12, r2,#0x1F
    itt cs
    ldrhcs r3, [r1], #0x2           @ 2 bytes
    strhcs r3, [r0], #0x2           
    
    itt mi
    ldrbmi r2, [r1], #0x1           @ 1 bytes
    strbmi r2, [r0], #0x1           
    bx     lr

