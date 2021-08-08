.syntax unified
/*有没有.type看上去没区别,它什么作用? */
.type _start, %function
.global _start
.section  .text._start
.weak  _start
.type  _start, %function
_start:

# bl mmu_setting_1
ldr sp, =stack_top
ldr r1, =main
bx r1
.section .text.default_handler,"ax",%progbits
default_handler:
    b .

.section .isr_vectors,"a",%progbits
.type  g_pfnVectors, %object
.size  g_pfnVectors, .-g_pfnVectors
g_pfnVectors:
.word stack_top
.word _start
.word nmi_handler
.word hard_fault_handler
.word mem_manage_handler
.word bus_fault_handler
.word usage_fault_handler
.word default_handler
.word default_handler
.word default_handler
.word default_handler
.word svc_handler
.word debug_mon_handler
.word default_handler
.word pend_sv_handler
.word sys_tick_handler





.weak nmi_handler
.thumb_set nmi_handler,default_handler

.weak hard_fault_handler
.thumb_set hard_fault_handler,default_handler

.weak mem_manage_handler
.thumb_set mem_manage_handler,default_handler

.weak bus_fault_handler
.thumb_set bus_fault_handler,default_handler

.weak usage_fault_handler
.thumb_set usage_fault_handler,default_handler

.weak svc_handler
.thumb_set svc_handler,default_handler

.weak debug_mon_handler
.thumb_set debug_mon_handler,default_handler

.weak pend_sv_handler
.thumb_set pend_sv_handler,default_handler

.weak sys_tick_handler
.thumb_set sys_tick_handler,default_handler

