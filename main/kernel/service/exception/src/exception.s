
.syntax unifid
.thumb


/* Macro to define exception handlers with consistent save sequence */
.macro DEFINE_EXCEPTION_HANDLER name, exc_num
.section .text.\name
.type \name, %function
.global \name
\name:
    /* === PHASE 1: Immediate State Preservation === */
    /* 1. Save PRIMASK to R12 (caller-saved reg) */
    mrs r12, PRIMASK
    
    /* 2. Disable interrupts globally */
    cpsid i
    
    /* === PHASE 2: Determine Stack Pointer === */
    tst lr, #4          // Check EXC_RETURN[2] for stack selection
    ite eq
    mrseq r0, msp       // MSP if 0
    mrsne r0, psp       // PSP if 1
    
    /* === PHASE 3: Jump to Common Handler === */
    /* set exception number */
    mov r2, #\exc_num
    b exc_entry
.endm


/* Define all core exceptions */
DEFINE_EXCEPTION_HANDLER NMI_Handler, 2
DEFINE_EXCEPTION_HANDLER HardFault_Handler, 3
DEFINE_EXCEPTION_HANDLER MemManage_Handler, 4
DEFINE_EXCEPTION_HANDLER BusFault_Handler, 5
DEFINE_EXCEPTION_HANDLER UsageFault_Handler, 6

/* Common Exception Entry Point */
.section .text.exc_entry
.type exc_entry, %function
exc_entry:
    ldr r1, =g_exc_ctx
    str r2, [r1, #132]  // offsetof(ExceptionContext, exception_id)
    /* === FPU State Preservation === */
    /* 1. Check if FPU context exists (EXC_RETURN[4]) */
    tst lr, #0x10
    bne save_core_regs
    
    /* 2. Save full FPU state (S0-S31) */
    vstmia r1!, {s0-s31}
    
    /* 3. Save FPSCR from exception stack */
    ldr r2, [r0, #32]     // FPSCR is at SP+32 if FPU active
    str r2, [r1], #4
    
save_core_regs:
    /* === General-Purpose Registers === */
    /* 4. Save R4-R11 (not auto-saved by HW) */
    add r1, #(8 * 4)        // Skip FPU area (8 regs * 4 bytes)
    stmia r1!, {r4-r11}    // Matches struct member order
    
    /* === Hardware Auto-Saved Registers === */
    /* 5. Load R0-R3 from exception stack */
    ldmia r0!, {r2-r5}     // Original R0-R3
    str r2, [r1], #4       // r0
    str r3, [r1], #4       // r1
    str r4, [r1], #4       // r2
    str r5, [r1], #4       // r3
    
    /* 6. Load R12, LR, PC, xPSR */
    ldmia r0!, {r2-r5}
    str r2, [r1], #4       // r12
    str r3, [r1], #4       // lr
    str r4, [r1], #4       // pc
    str r5, [r1], #4       // xpsr
    
    /* === System Registers === */
    /* 7. Save MSP/PSP */
    mrs r2, MSP
    mrs r3, PSP
    str r2, [r1], #4       // msp
    str r3, [r1], #4       // psp
    
    /* 8. Save PRIMASK (from R12) */
    str r12, [r1], #4      // primask
    
    /* 9. Save remaining system regs */
    mrs r2, FAULTMASK
    mrs r3, BASEPRI
    mrs r4, CONTROL
    stmia r1!, {r2-r4}     // faultmask, basepri, control
    
    /* === Fault Registers === */
    /* 10. Capture fault diagnostics */
    ldr r2, =SCB_BASE
    ldmia r2, {r3-r8}      // MMFAR, BFAR, CFSR, HFSR, DFSR, AFSR
    stmia r1!, {r3-r8}
    
    /* === Finalize === */
    /* 11. Call C analyzer */
    ldr r0, =g_exc_ctx
    bl analyze_exception
    
    /* 12. System reset */
    dsb
    bkpt #0
    b .


.global last_crash_info
.global exception_common_handler_c

.section .exception.fault_common_handler
.type fault_common_handler, %function
fault_common_handler:
    mrs r3, primask                        /*                    */   
    cpsid i                                /*                    */   
    ldr r1, =last_crash_info               /*                    */   
    ldr r2, =0xdead55aa                    /*                    */   
    str r2, [r1]                           /*                    */   
    add r1, r1, #4                         /*                    */   
    tst r12, #4                             /*                    */   
    ite eq                                 /*                    */   
    mrseq r0, msp                          /*                    */   
    mrsne r0, psp                          /*                    */   
    ldr r2, [r0, #0]                       /* load r0            */   
    str r2, [r1, #0]                       /* store r0           */   
    ldr r2, [r0, #4]                       /* load r1            */   
    str r2, [r1, #4]                       /* store r1           */   
    ldr r2, [r0, #8]                       /* load r2            */   
    str r2, [r1, #8]                       /* store r2           */   
    ldr r2, [r0, #12]                      /* load r3            */   
    str r2, [r1, #12]                      /* store r3           */   
    ldr r2, [r0, #16]                      /* load r12           */   
    str r2, [r1, #16]                      /* store r12          */   
    ldr r2, [r0, #20]                      /* load lr            */   
    str r2, [r1, #20]                      /* store lr           */   
    ldr r2, [r0, #24]                      /* load pc            */   
    str r2, [r1, #24]                      /* store pc           */   
    ldr r2, [r0, #28]                      /* load xpsr          */   
    str r2, [r1, #28]                      /* store xpsr         */   
    add r1, r1, #28                        /* add pointer        */   
    stmia r1!, {r4-r11}                    /* store r4-r11       */   
    str r13, [r1, #64]                     /* store msp          */   
    mrs r2, msp                            /* load msp           */   
    str r2, [r1, #0]                       /* store msp          */   
    mrs r2, psp                            /* load psp           */   
    str r2, [r1, #4]                       /* store psp          */   
    mrs r2, control                        /* load control       */   
    str r2, [r1, #8]                       /* store control      */   
    mrs r2, basepri                        /* load basepri       */   
    str r2, [r1, #12]                      /* store basepri      */   
    str r3, [r1, #16]                      /* store primask      */   
    mrs r2, faultmask                      /* load faultmask     */   
    str r2, [r1, #20]                      /* store faultmask    */   
    ldr r0, =last_crash_info               /*                    */   
    bx lr                                  /*                    */   

.section .exception.NMI_Handler
.type NMI_Handler, %function
NMI_Handler:
    mov r12, lr
    bl fault_common_handler
    mov r1, #1
    ldr r2, =exception_common_handler_c
    bl r3
.size NMI_Handler, .-NMI_Handler

.section .exception.HardFault_Handler
.type HardFault_Handler, %function
HardFault_Handler:
    mov r12, lr
    bl fault_common_handler
    mov r1, #1
    ldr r2, =exception_common_handler_c
    bl r3
.size HardFault_Handler, .-HardFault_Handler

.section .exception.MemManage_Handler
.type MemManage_Handler, %function
MemManage_Handler:
    mov r12, lr
    bl fault_common_handler
    mov r1, #1
    ldr r2, =exception_common_handler_c
    bl r3
.size MemManage_Handler, .-MemManage_Handler

.section .exception.BusFault_Handler
.type BusFault_Handler, %function
BusFault_Handler:
    mov r12, lr
    bl fault_common_handler
    mov r1, #1
    ldr r2, =exception_common_handler_c
    bl r3
.size BusFault_Handler, .-BusFault_Handler

.section .exception.UsageFault_Handler
.type UsageFault_Handler, %function
UsageFault_Handler:
    mov r12, lr
    bl fault_common_handler
    mov r1, #1
    ldr r2, =exception_common_handler_c
    bl r3
.size UsageFault_Handler, .-UsageFault_Handler

.section .exception.DebugMon_Handler
.type DebugMon_Handler, %function
DebugMon_Handler:
    mov r12, lr
    bl fault_common_handler
    mov r1, #1
    ldr r2, =exception_common_handler_c
    bl r3
.size DebugMon_Handler, .-DebugMon_Handler