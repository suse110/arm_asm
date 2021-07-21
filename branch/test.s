/*
* Unconditional Branch Instructions
    B <label>
    B.W <label> Branch to label. If a branch range of over +/-2KB is needed, you might need to 
                specify B.W to use 32-bit version of branch instruction for wider range.
    BX <Rm>     Branch and exchange. Branch to an address value stored in Rm, and set the execution 
                state of the processor (T-bit) based on bit 0 of Rm (bit 0 of Rm must be 1 because 
                Cortex-M processor only supports Thumb state).
    BL <label>  Branch to a labeled address and save the return address in LR
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



.word stack_top
.word reset

.global reset
reset:
ldr r0, =c_entry
bx r0


.section .rodata
str:
    .ascii "hello word\n"

.set UART_DR,0x4000c000


uart_print:
# ldr r1,=UART_DR

