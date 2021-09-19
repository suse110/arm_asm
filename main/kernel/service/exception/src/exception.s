
.syntax unifid
.thumb

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