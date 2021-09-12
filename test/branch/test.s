/*
* Unconditional Branch Instructions
    B <label>
    B.W <label> Branch to label. If a branch range of over +/-2KB is needed, you might need to 
                specify B.W to use 32-bit version of branch instruction for wider range.
    BX <Rm>     Branch and exchange. Branch to an address value stored in Rm, and set the execution 
                state of the processor (T-bit) based on bit 0 of Rm (bit 0 of Rm must be 1 because 
                Cortex-M processor only supports Thumb state).
    BL <label>  Branch to a labeled address and save the return address(PC+4) in LR
    BLX <Rm>    Branch to an address specified by Rm, save the return address in LR, and update 
                T-bit in EPSR with LSB of Rm

* Conditional branches
    B<cond> <label> 
    B<cond>.W <label>   Branch to label if condition is true. E.g.,
        CMP R0, #1
        BEQ loop ; Branch to “loop” if R0 equal 1.
    If a branch range of over +/-254Bytes is needed, you might need to specify B.W to use 32-bit 
    version of branch instruction for wider range.
    
    
    * Suffixes for Conditional Branches and Conditional Execution
        Suffix      Branch Condition            Flags (APSR)
        EQ          Equal                       Z flag is set
        NE          Not equal                   Z flag is cleared
        CS/HS       Carry set / unsigned    
                    higher or same              C flag is set
        CC/LO       Carry clear / unsigned  
                    lower                       C flag is cleared
        MI          Minus / negative            N flag is set (minus)
        PL          Plus / positive or zero     N flag is cleared
        VS          Overflow                    V flag is set
        VC          No overflow                 V flag is cleared
        HI          Unsigned higher             C flag is set and Z is cleared
        LS          Unsigned lower or same      C flag is cleared or Z is set
        GE          Signed greater than or      N flag is set and V flag is set, or
                    equal                       N flag is cleared and V flag is cleared (N == V)
                                                
                                                
        LT          Signed less than            N flag is set and V flag is cleared, or
                                                N flag is cleared and V flag is set (N != V)
        GT          Signed greater then         Z flag is cleared, and either both N flag and V
                                                flag are set, or both N flag and V flag are cleared
                                                (Z == 0 and N == V)
        LE          Signed less than or equal   Z flag is set, or either N flag set with V flag
                                                cleared, or N flag cleared and V flag set (Z == 1 or N != V)
@ */



.section .isr_vectors
# .size vector, .-vector

# vector:
.word _estack
.word _start

.global _start
_start:

bl if_else_branch
bl branch_in_loop
bl conditional_branch

ldr r0, =c_entry
bx r0


/*if else 分支
类似的C伪代码是这样的:

int main() {
   int max = 0;
   int a = 2;
   int b = 3;
   if(a < b) {
    max = b;
   }
   else {
    max = a;
   }
   return max;
}
*/
if_else_branch:
    mov     r1, #2     /* 初始化 a */
    mov     r2, #3     /* 初始化 b */
    cmp     r1, r2     /* 比较谁更大些, 判断r1-r2的结果 */
    blt     r1_lower   /* 如果R2更大跳转到r1_lower */
    mov     r0, r1     /* 如果分支跳转没有发生，将R1的值放到到R0 */
    b       end1        /* 跳转到结束 */
r1_lower:
    mov r0, r2         /* 将R2的值放到R0 */
    b end1              /* 跳转到结束 */
end1:
    bx lr              /* THE END */

/*
循环中的条件分支,对应的C伪代码长这样子:
int main() {
   int a = 0;
   while(a < 4) {
   a= a+1;
   }
   return a;
}
*/
branch_in_loop:
        mov     r0, #0     /* 初始化 a */
loop:
        cmp     r0, #4     /* 检查 a==4 */
        beq     end2        /* 如果是则结束 */
        add     r0, r0, #1 /* 如果不是则加1 */
        b loop             /* 重复循环 */
end2:
        bx lr              /* THE END */

conditional_branch:
    mov r0, #2
    mov r1, #2
    add r0, r0, r1
    cmp r0, #4
    beq func1
    add r1, #5
    b func2
func1:
    mov r1, r0
    bx  lr
func2:
    mov r0, r1
    bx  lr


.section .rodata
str:
    .ascii "hello word\n"

.set UART_DR,0x4000c000


uart_print:
# ldr r1,=UART_DR

