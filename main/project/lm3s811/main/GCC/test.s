.syntax unified
/*有没有.type看上去没区别,它什么作用? */
.type Reset_Handler, %function
.global Reset_Handler
.section  .text.Reset_Handler
.weak  Reset_Handler
.type  Reset_Handler, %function
Reset_Handler:

# bl mmu_setting_1
ldr sp, =_estack
ldr r1, =main
bx r1
.section .text.Default_Handler,"ax",%progbits
Default_Handler:
    b .

.section .isr_vectors,"a",%progbits
.type  g_pfnVectors, %object
.size  g_pfnVectors, .-g_pfnVectors
g_pfnVectors:
.word _estack
.word Reset_Handler
.word NMI_Handler
.word HardFault_Handler
.word MemManage_Handler
.word BusFault_Handler
.word UsageFault_Handler
.word Default_Handler
.word Default_Handler
.word Default_Handler
.word Default_Handler
.word SVC_Handler
.word DebugMon_Handler
.word Default_Handler
.word PendSV_Handler
.word SysTick_Handler





.weak NMI_Handler
.thumb_set NMI_Handler,Default_Handler

.weak HardFault_Handler
.thumb_set HardFault_Handler,Default_Handler
# .global hard_fault_handler
# .type hard_fault_handler, %function
# hard_fault_handler:
#     MOV     r0, lr                  /* get lr */
#     MOV     r1, sp                  /* get stack pointer (current is MSP) */
#     BL      cm_backtrace_fault

# Fault_Loop:
#     BL      Fault_Loop              /* while(1) */

.weak MemManage_Handler
.thumb_set MemManage_Handler,Default_Handler

.weak BusFault_Handler
.thumb_set BusFault_Handler,Default_Handler

.weak UsageFault_Handler
.thumb_set UsageFault_Handler,Default_Handler

.weak SVC_Handler
.thumb_set SVC_Handler,Default_Handler

.weak DebugMon_Handler
.thumb_set DebugMon_Handler,Default_Handler

.weak PendSV_Handler
.thumb_set PendSV_Handler,Default_Handler

.weak SysTick_Handler
.thumb_set SysTick_Handler,Default_Handler


