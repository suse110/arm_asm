
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

<<<<<<< Updated upstream
00000000 <_start>:
.weak  _start
.type  _start, %function
=======
00000000 <_start-0x40>:
   0:	20001008 	.word	0x20001008
   4:	00000040 	.word	0x00000040
   8:	000001b9 	.word	0x000001b9
   c:	000001d1 	.word	0x000001d1
  10:	000001e9 	.word	0x000001e9
  14:	00000201 	.word	0x00000201
  18:	00000219 	.word	0x00000219
  1c:	000006c8 	.word	0x000006c8
  20:	000006c8 	.word	0x000006c8
  24:	000006c8 	.word	0x000006c8
  28:	000006c8 	.word	0x000006c8
  2c:	00000231 	.word	0x00000231
  30:	00000249 	.word	0x00000249
  34:	000006c8 	.word	0x000006c8
  38:	00000261 	.word	0x00000261
  3c:	00000279 	.word	0x00000279

00000040 <_start>:

>>>>>>> Stashed changes
_start:

# bl mmu_setting_1
ldr sp, =stack_top
   0:	f8df d004 	ldr.w	sp, [pc, #4]	; 8 <_start+0x8>
ldr r1, =main
   4:	4901      	ldr	r1, [pc, #4]	; (c <_start+0xc>)
bx r1
   6:	4708      	bx	r1
ldr sp, =stack_top
   8:	20001000 	.word	0x20001000
ldr r1, =main
   c:	00000051 	.word	0x00000051

00000010 <g_pfnVectors>:
  10:	20001000 00000000 00000475 00000475     ... ....u...u...
  20:	00000105 00000475 00000475 00000474     ....u...u...t...
  30:	00000474 00000474 00000474 00000475     t...t...t...u...
  40:	00000475 00000474 00000475 00000475     u...t...u...u...

00000050 <main>:
#include <stdint.h>
#include "hal.h"

void main(void)
{
  50:	b580      	push	{r7, lr}
  52:	af00      	add	r7, sp, #0
    lite_printf("[%s] hello world\n", __func__);
<<<<<<< Updated upstream
  54:	4903      	ldr	r1, [pc, #12]	; (64 <main+0x14>)
  56:	4804      	ldr	r0, [pc, #16]	; (68 <main+0x18>)
  58:	f000 f8df 	bl	21a <lite_printf>
    hal_mpu_test();
  5c:	f000 f85e 	bl	11c <hal_mpu_test>
    while(1);
  60:	e7fe      	b.n	60 <main+0x10>
  62:	bf00      	nop
  64:	0000048c 	.word	0x0000048c
  68:	00000478 	.word	0x00000478

0000006c <ARM_MPU_Enable>:
=======
 1a4:	4902      	ldr	r1, [pc, #8]	; (1b0 <main+0x10>)
 1a6:	4803      	ldr	r0, [pc, #12]	; (1b4 <main+0x14>)
 1a8:	f000 f93d 	bl	426 <lite_printf>
    // backtrace_test();
    // hal_mpu_test();
    while(1);
 1ac:	e7fe      	b.n	1ac <main+0xc>
 1ae:	bf00      	nop
 1b0:	000006e8 	.word	0x000006e8
 1b4:	000006cc 	.word	0x000006cc

000001b8 <nmi_handler>:
}

void nmi_handler(void)
{
 1b8:	b580      	push	{r7, lr}
 1ba:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 1bc:	4902      	ldr	r1, [pc, #8]	; (1c8 <nmi_handler+0x10>)
 1be:	4803      	ldr	r0, [pc, #12]	; (1cc <nmi_handler+0x14>)
 1c0:	f000 f931 	bl	426 <lite_printf>
    while(1);
 1c4:	e7fe      	b.n	1c4 <nmi_handler+0xc>
 1c6:	bf00      	nop
 1c8:	000006f0 	.word	0x000006f0
 1cc:	000006e0 	.word	0x000006e0

000001d0 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
 1d0:	b580      	push	{r7, lr}
 1d2:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 1d4:	4902      	ldr	r1, [pc, #8]	; (1e0 <hard_fault_handler+0x10>)
 1d6:	4803      	ldr	r0, [pc, #12]	; (1e4 <hard_fault_handler+0x14>)
 1d8:	f000 f925 	bl	426 <lite_printf>
    while(1);
 1dc:	e7fe      	b.n	1dc <hard_fault_handler+0xc>
 1de:	bf00      	nop
 1e0:	000006fc 	.word	0x000006fc
 1e4:	000006e0 	.word	0x000006e0

000001e8 <mem_manage_handler>:
}

void mem_manage_handler(void)
{
 1e8:	b580      	push	{r7, lr}
 1ea:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 1ec:	4902      	ldr	r1, [pc, #8]	; (1f8 <mem_manage_handler+0x10>)
 1ee:	4803      	ldr	r0, [pc, #12]	; (1fc <mem_manage_handler+0x14>)
 1f0:	f000 f919 	bl	426 <lite_printf>
    while(1);
 1f4:	e7fe      	b.n	1f4 <mem_manage_handler+0xc>
 1f6:	bf00      	nop
 1f8:	00000710 	.word	0x00000710
 1fc:	000006e0 	.word	0x000006e0

00000200 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
 200:	b580      	push	{r7, lr}
 202:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 204:	4902      	ldr	r1, [pc, #8]	; (210 <bus_fault_handler+0x10>)
 206:	4803      	ldr	r0, [pc, #12]	; (214 <bus_fault_handler+0x14>)
 208:	f000 f90d 	bl	426 <lite_printf>
    while(1);
 20c:	e7fe      	b.n	20c <bus_fault_handler+0xc>
 20e:	bf00      	nop
 210:	00000724 	.word	0x00000724
 214:	000006e0 	.word	0x000006e0

00000218 <usage_fault_handler>:
}

void usage_fault_handler(void)
{
 218:	b580      	push	{r7, lr}
 21a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 21c:	4902      	ldr	r1, [pc, #8]	; (228 <usage_fault_handler+0x10>)
 21e:	4803      	ldr	r0, [pc, #12]	; (22c <usage_fault_handler+0x14>)
 220:	f000 f901 	bl	426 <lite_printf>
    while(1);
 224:	e7fe      	b.n	224 <usage_fault_handler+0xc>
 226:	bf00      	nop
 228:	00000738 	.word	0x00000738
 22c:	000006e0 	.word	0x000006e0

00000230 <svc_handler>:
}

void svc_handler(void)
{
 230:	b580      	push	{r7, lr}
 232:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 234:	4902      	ldr	r1, [pc, #8]	; (240 <svc_handler+0x10>)
 236:	4803      	ldr	r0, [pc, #12]	; (244 <svc_handler+0x14>)
 238:	f000 f8f5 	bl	426 <lite_printf>
    while(1);
 23c:	e7fe      	b.n	23c <svc_handler+0xc>
 23e:	bf00      	nop
 240:	0000074c 	.word	0x0000074c
 244:	000006e0 	.word	0x000006e0

00000248 <debug_mon_handler>:
}

void debug_mon_handler(void)
{
 248:	b580      	push	{r7, lr}
 24a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 24c:	4902      	ldr	r1, [pc, #8]	; (258 <debug_mon_handler+0x10>)
 24e:	4803      	ldr	r0, [pc, #12]	; (25c <debug_mon_handler+0x14>)
 250:	f000 f8e9 	bl	426 <lite_printf>
    while(1);
 254:	e7fe      	b.n	254 <debug_mon_handler+0xc>
 256:	bf00      	nop
 258:	00000758 	.word	0x00000758
 25c:	000006e0 	.word	0x000006e0

00000260 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
 260:	b580      	push	{r7, lr}
 262:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 264:	4902      	ldr	r1, [pc, #8]	; (270 <pend_sv_handler+0x10>)
 266:	4803      	ldr	r0, [pc, #12]	; (274 <pend_sv_handler+0x14>)
 268:	f000 f8dd 	bl	426 <lite_printf>
    while(1);
 26c:	e7fe      	b.n	26c <pend_sv_handler+0xc>
 26e:	bf00      	nop
 270:	0000076c 	.word	0x0000076c
 274:	000006e0 	.word	0x000006e0

00000278 <sys_tick_handler>:
}

void sys_tick_handler(void)
{
 278:	b580      	push	{r7, lr}
 27a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 27c:	4902      	ldr	r1, [pc, #8]	; (288 <sys_tick_handler+0x10>)
 27e:	4803      	ldr	r0, [pc, #12]	; (28c <sys_tick_handler+0x14>)
 280:	f000 f8d1 	bl	426 <lite_printf>
    while(1);
 284:	e7fe      	b.n	284 <sys_tick_handler+0xc>
 286:	bf00      	nop
 288:	0000077c 	.word	0x0000077c
 28c:	000006e0 	.word	0x000006e0

00000290 <ARM_MPU_Enable>:
>>>>>>> Stashed changes
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
<<<<<<< Updated upstream
  6c:	b480      	push	{r7}
  6e:	b081      	sub	sp, #4
  70:	af00      	add	r7, sp, #0
  72:	6038      	str	r0, [r7, #0]
=======
 290:	b480      	push	{r7}
 292:	b081      	sub	sp, #4
 294:	af00      	add	r7, sp, #0
 296:	6038      	str	r0, [r7, #0]
>>>>>>> Stashed changes
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
<<<<<<< Updated upstream
  74:	f3bf 8f4f 	dsb	sy
}
  78:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
  7a:	f3bf 8f6f 	isb	sy
}
  7e:	bf00      	nop
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
  80:	4a07      	ldr	r2, [pc, #28]	; (a0 <ARM_MPU_Enable+0x34>)
  82:	683b      	ldr	r3, [r7, #0]
  84:	f043 0301 	orr.w	r3, r3, #1
  88:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
  8a:	4b06      	ldr	r3, [pc, #24]	; (a4 <ARM_MPU_Enable+0x38>)
  8c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
  8e:	4a05      	ldr	r2, [pc, #20]	; (a4 <ARM_MPU_Enable+0x38>)
  90:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
  94:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
  96:	bf00      	nop
  98:	3704      	adds	r7, #4
  9a:	46bd      	mov	sp, r7
  9c:	bc80      	pop	{r7}
  9e:	4770      	bx	lr
  a0:	e000ed90 	.word	0xe000ed90
  a4:	e000ed00 	.word	0xe000ed00

000000a8 <ARM_MPU_Disable>:
=======
 298:	f3bf 8f4f 	dsb	sy
}
 29c:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
 29e:	f3bf 8f6f 	isb	sy
}
 2a2:	bf00      	nop
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
 2a4:	4a07      	ldr	r2, [pc, #28]	; (2c4 <ARM_MPU_Enable+0x34>)
 2a6:	683b      	ldr	r3, [r7, #0]
 2a8:	f043 0301 	orr.w	r3, r3, #1
 2ac:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
 2ae:	4b06      	ldr	r3, [pc, #24]	; (2c8 <ARM_MPU_Enable+0x38>)
 2b0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 2b2:	4a05      	ldr	r2, [pc, #20]	; (2c8 <ARM_MPU_Enable+0x38>)
 2b4:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 2b8:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
 2ba:	bf00      	nop
 2bc:	3704      	adds	r7, #4
 2be:	46bd      	mov	sp, r7
 2c0:	bc80      	pop	{r7}
 2c2:	4770      	bx	lr
 2c4:	e000ed90 	.word	0xe000ed90
 2c8:	e000ed00 	.word	0xe000ed00

000002cc <ARM_MPU_Disable>:
>>>>>>> Stashed changes

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
<<<<<<< Updated upstream
  a8:	b480      	push	{r7}
  aa:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
  ac:	f3bf 8f4f 	dsb	sy
}
  b0:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
  b2:	f3bf 8f6f 	isb	sy
}
  b6:	bf00      	nop
=======
 2cc:	b480      	push	{r7}
 2ce:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
 2d0:	f3bf 8f4f 	dsb	sy
}
 2d4:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
 2d6:	f3bf 8f6f 	isb	sy
}
 2da:	bf00      	nop
>>>>>>> Stashed changes
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
<<<<<<< Updated upstream
  b8:	4b07      	ldr	r3, [pc, #28]	; (d8 <ARM_MPU_Disable+0x30>)
  ba:	6a5b      	ldr	r3, [r3, #36]	; 0x24
  bc:	4a06      	ldr	r2, [pc, #24]	; (d8 <ARM_MPU_Disable+0x30>)
  be:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
  c2:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
  c4:	4b05      	ldr	r3, [pc, #20]	; (dc <ARM_MPU_Disable+0x34>)
  c6:	685b      	ldr	r3, [r3, #4]
  c8:	4a04      	ldr	r2, [pc, #16]	; (dc <ARM_MPU_Disable+0x34>)
  ca:	f023 0301 	bic.w	r3, r3, #1
  ce:	6053      	str	r3, [r2, #4]
}
  d0:	bf00      	nop
  d2:	46bd      	mov	sp, r7
  d4:	bc80      	pop	{r7}
  d6:	4770      	bx	lr
  d8:	e000ed00 	.word	0xe000ed00
  dc:	e000ed90 	.word	0xe000ed90

000000e0 <ARM_MPU_SetRegion>:
=======
 2dc:	4b07      	ldr	r3, [pc, #28]	; (2fc <ARM_MPU_Disable+0x30>)
 2de:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 2e0:	4a06      	ldr	r2, [pc, #24]	; (2fc <ARM_MPU_Disable+0x30>)
 2e2:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 2e6:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
 2e8:	4b05      	ldr	r3, [pc, #20]	; (300 <ARM_MPU_Disable+0x34>)
 2ea:	685b      	ldr	r3, [r3, #4]
 2ec:	4a04      	ldr	r2, [pc, #16]	; (300 <ARM_MPU_Disable+0x34>)
 2ee:	f023 0301 	bic.w	r3, r3, #1
 2f2:	6053      	str	r3, [r2, #4]
}
 2f4:	bf00      	nop
 2f6:	46bd      	mov	sp, r7
 2f8:	bc80      	pop	{r7}
 2fa:	4770      	bx	lr
 2fc:	e000ed00 	.word	0xe000ed00
 300:	e000ed90 	.word	0xe000ed90

00000304 <ARM_MPU_SetRegion>:
>>>>>>> Stashed changes
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
<<<<<<< Updated upstream
  e0:	b480      	push	{r7}
  e2:	b082      	sub	sp, #8
  e4:	af00      	add	r7, sp, #0
  e6:	6078      	str	r0, [r7, #4]
  e8:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
  ea:	4a05      	ldr	r2, [pc, #20]	; (100 <ARM_MPU_SetRegion+0x20>)
  ec:	687b      	ldr	r3, [r7, #4]
  ee:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
  f0:	4a03      	ldr	r2, [pc, #12]	; (100 <ARM_MPU_SetRegion+0x20>)
  f2:	683b      	ldr	r3, [r7, #0]
  f4:	6113      	str	r3, [r2, #16]
}
  f6:	bf00      	nop
  f8:	3708      	adds	r7, #8
  fa:	46bd      	mov	sp, r7
  fc:	bc80      	pop	{r7}
  fe:	4770      	bx	lr
 100:	e000ed90 	.word	0xe000ed90

00000104 <mem_manage_handler>:

/*

*/
void mem_manage_handler(void)
{
 104:	b580      	push	{r7, lr}
 106:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 108:	4902      	ldr	r1, [pc, #8]	; (114 <mem_manage_handler+0x10>)
 10a:	4803      	ldr	r0, [pc, #12]	; (118 <mem_manage_handler+0x14>)
 10c:	f000 f885 	bl	21a <lite_printf>

    for(;;);
 110:	e7fe      	b.n	110 <mem_manage_handler+0xc>
 112:	bf00      	nop
 114:	000004bc 	.word	0x000004bc
 118:	00000494 	.word	0x00000494

0000011c <hal_mpu_test>:
}

void hal_mpu_test(void)
{
 11c:	b5b0      	push	{r4, r5, r7, lr}
 11e:	b08a      	sub	sp, #40	; 0x28
 120:	af00      	add	r7, sp, #0
=======
 304:	b480      	push	{r7}
 306:	b082      	sub	sp, #8
 308:	af00      	add	r7, sp, #0
 30a:	6078      	str	r0, [r7, #4]
 30c:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
 30e:	4a05      	ldr	r2, [pc, #20]	; (324 <ARM_MPU_SetRegion+0x20>)
 310:	687b      	ldr	r3, [r7, #4]
 312:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
 314:	4a03      	ldr	r2, [pc, #12]	; (324 <ARM_MPU_SetRegion+0x20>)
 316:	683b      	ldr	r3, [r7, #0]
 318:	6113      	str	r3, [r2, #16]
}
 31a:	bf00      	nop
 31c:	3708      	adds	r7, #8
 31e:	46bd      	mov	sp, r7
 320:	bc80      	pop	{r7}
 322:	4770      	bx	lr
 324:	e000ed90 	.word	0xe000ed90

00000328 <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
 328:	b5b0      	push	{r4, r5, r7, lr}
 32a:	b08a      	sub	sp, #40	; 0x28
 32c:	af00      	add	r7, sp, #0
>>>>>>> Stashed changes
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
<<<<<<< Updated upstream
 122:	4b13      	ldr	r3, [pc, #76]	; (170 <hal_mpu_test+0x54>)
 124:	463c      	mov	r4, r7
 126:	461d      	mov	r5, r3
 128:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 12a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 12c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 130:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
=======
 32e:	4b13      	ldr	r3, [pc, #76]	; (37c <hal_mpu_test+0x54>)
 330:	463c      	mov	r4, r7
 332:	461d      	mov	r5, r3
 334:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 336:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 338:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 33c:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
>>>>>>> Stashed changes
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
<<<<<<< Updated upstream
 134:	f7ff ffb8 	bl	a8 <ARM_MPU_Disable>
=======
 340:	f7ff ffc4 	bl	2cc <ARM_MPU_Disable>
>>>>>>> Stashed changes
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
<<<<<<< Updated upstream
 138:	463b      	mov	r3, r7
 13a:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 13c:	e00d      	b.n	15a <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
 13e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 140:	681a      	ldr	r2, [r3, #0]
 142:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 144:	685b      	ldr	r3, [r3, #4]
 146:	4619      	mov	r1, r3
 148:	4610      	mov	r0, r2
 14a:	f7ff ffc9 	bl	e0 <ARM_MPU_SetRegion>
        mpu_region++;
 14e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 150:	3308      	adds	r3, #8
 152:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 154:	6a3b      	ldr	r3, [r7, #32]
 156:	3301      	adds	r3, #1
 158:	623b      	str	r3, [r7, #32]
 15a:	6a3b      	ldr	r3, [r7, #32]
 15c:	2b03      	cmp	r3, #3
 15e:	d9ee      	bls.n	13e <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
 160:	2006      	movs	r0, #6
 162:	f7ff ff83 	bl	6c <ARM_MPU_Enable>
}
 166:	bf00      	nop
 168:	3728      	adds	r7, #40	; 0x28
 16a:	46bd      	mov	sp, r7
 16c:	bdb0      	pop	{r4, r5, r7, pc}
 16e:	bf00      	nop
 170:	0000049c 	.word	0x0000049c

00000174 <m_pow>:
=======
 344:	463b      	mov	r3, r7
 346:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 348:	e00d      	b.n	366 <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
 34a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 34c:	681a      	ldr	r2, [r3, #0]
 34e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 350:	685b      	ldr	r3, [r3, #4]
 352:	4619      	mov	r1, r3
 354:	4610      	mov	r0, r2
 356:	f7ff ffd5 	bl	304 <ARM_MPU_SetRegion>
        mpu_region++;
 35a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 35c:	3308      	adds	r3, #8
 35e:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 360:	6a3b      	ldr	r3, [r7, #32]
 362:	3301      	adds	r3, #1
 364:	623b      	str	r3, [r7, #32]
 366:	6a3b      	ldr	r3, [r7, #32]
 368:	2b03      	cmp	r3, #3
 36a:	d9ee      	bls.n	34a <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
 36c:	2006      	movs	r0, #6
 36e:	f7ff ff8f 	bl	290 <ARM_MPU_Enable>
}
 372:	bf00      	nop
 374:	3728      	adds	r7, #40	; 0x28
 376:	46bd      	mov	sp, r7
 378:	bdb0      	pop	{r4, r5, r7, pc}
 37a:	bf00      	nop
 37c:	00000790 	.word	0x00000790

00000380 <m_pow>:
>>>>>>> Stashed changes


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
<<<<<<< Updated upstream
 174:	b480      	push	{r7}
 176:	b083      	sub	sp, #12
 178:	af00      	add	r7, sp, #0
 17a:	6078      	str	r0, [r7, #4]
 17c:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
 17e:	2301      	movs	r3, #1
 180:	60bb      	str	r3, [r7, #8]
    while (y--)
 182:	e004      	b.n	18e <m_pow+0x1a>
    {
        sum *= x;
 184:	687a      	ldr	r2, [r7, #4]
 186:	68bb      	ldr	r3, [r7, #8]
 188:	fb02 f303 	mul.w	r3, r2, r3
 18c:	60bb      	str	r3, [r7, #8]
    while (y--)
 18e:	683b      	ldr	r3, [r7, #0]
 190:	1e5a      	subs	r2, r3, #1
 192:	603a      	str	r2, [r7, #0]
 194:	2b00      	cmp	r3, #0
 196:	d1f5      	bne.n	184 <m_pow+0x10>
    }
    return sum;
 198:	68bb      	ldr	r3, [r7, #8]
}
 19a:	4618      	mov	r0, r3
 19c:	370c      	adds	r7, #12
 19e:	46bd      	mov	sp, r7
 1a0:	bc80      	pop	{r7}
 1a2:	4770      	bx	lr

000001a4 <m_putchar>:
void m_putchar(const char ch)
{
 1a4:	b480      	push	{r7}
 1a6:	b081      	sub	sp, #4
 1a8:	af00      	add	r7, sp, #0
 1aa:	4603      	mov	r3, r0
 1ac:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
 1ae:	4a04      	ldr	r2, [pc, #16]	; (1c0 <m_putchar+0x1c>)
 1b0:	783b      	ldrb	r3, [r7, #0]
 1b2:	6013      	str	r3, [r2, #0]
}
 1b4:	bf00      	nop
 1b6:	3704      	adds	r7, #4
 1b8:	46bd      	mov	sp, r7
 1ba:	bc80      	pop	{r7}
 1bc:	4770      	bx	lr
 1be:	bf00      	nop
 1c0:	4000c000 	.word	0x4000c000

000001c4 <m_putstr>:
void m_putstr(const char *str)
{
 1c4:	b580      	push	{r7, lr}
 1c6:	b081      	sub	sp, #4
 1c8:	af00      	add	r7, sp, #0
 1ca:	6038      	str	r0, [r7, #0]
    while (*str)
 1cc:	e006      	b.n	1dc <m_putstr+0x18>
    {
        m_putchar(*str++);
 1ce:	683b      	ldr	r3, [r7, #0]
 1d0:	1c5a      	adds	r2, r3, #1
 1d2:	603a      	str	r2, [r7, #0]
 1d4:	781b      	ldrb	r3, [r3, #0]
 1d6:	4618      	mov	r0, r3
 1d8:	f7ff ffe4 	bl	1a4 <m_putchar>
    while (*str)
 1dc:	683b      	ldr	r3, [r7, #0]
 1de:	781b      	ldrb	r3, [r3, #0]
 1e0:	2b00      	cmp	r3, #0
 1e2:	d1f4      	bne.n	1ce <m_putstr+0xa>
    }
}
 1e4:	bf00      	nop
 1e6:	bf00      	nop
 1e8:	3704      	adds	r7, #4
 1ea:	46bd      	mov	sp, r7
 1ec:	bd80      	pop	{r7, pc}

000001ee <m_strlen>:
uint32_t m_strlen (const char *__s)
{
 1ee:	b480      	push	{r7}
 1f0:	b082      	sub	sp, #8
 1f2:	af00      	add	r7, sp, #0
 1f4:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
 1f6:	2300      	movs	r3, #0
 1f8:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
 1fa:	e002      	b.n	202 <m_strlen+0x14>
 1fc:	687b      	ldr	r3, [r7, #4]
 1fe:	3301      	adds	r3, #1
 200:	607b      	str	r3, [r7, #4]
 202:	683b      	ldr	r3, [r7, #0]
 204:	1c5a      	adds	r2, r3, #1
 206:	603a      	str	r2, [r7, #0]
 208:	781b      	ldrb	r3, [r3, #0]
 20a:	2b00      	cmp	r3, #0
 20c:	d1f6      	bne.n	1fc <m_strlen+0xe>
    return i;
 20e:	687b      	ldr	r3, [r7, #4]
}
 210:	4618      	mov	r0, r3
 212:	3708      	adds	r7, #8
 214:	46bd      	mov	sp, r7
 216:	bc80      	pop	{r7}
 218:	4770      	bx	lr

0000021a <lite_printf>:
int lite_printf(const char *str, ...)
{
 21a:	b40f      	push	{r0, r1, r2, r3}
 21c:	b590      	push	{r4, r7, lr}
 21e:	b087      	sub	sp, #28
 220:	af00      	add	r7, sp, #0
=======
 380:	b480      	push	{r7}
 382:	b083      	sub	sp, #12
 384:	af00      	add	r7, sp, #0
 386:	6078      	str	r0, [r7, #4]
 388:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
 38a:	2301      	movs	r3, #1
 38c:	60bb      	str	r3, [r7, #8]
    while (y--)
 38e:	e004      	b.n	39a <m_pow+0x1a>
    {
        sum *= x;
 390:	687a      	ldr	r2, [r7, #4]
 392:	68bb      	ldr	r3, [r7, #8]
 394:	fb02 f303 	mul.w	r3, r2, r3
 398:	60bb      	str	r3, [r7, #8]
    while (y--)
 39a:	683b      	ldr	r3, [r7, #0]
 39c:	1e5a      	subs	r2, r3, #1
 39e:	603a      	str	r2, [r7, #0]
 3a0:	2b00      	cmp	r3, #0
 3a2:	d1f5      	bne.n	390 <m_pow+0x10>
    }
    return sum;
 3a4:	68bb      	ldr	r3, [r7, #8]
}
 3a6:	4618      	mov	r0, r3
 3a8:	370c      	adds	r7, #12
 3aa:	46bd      	mov	sp, r7
 3ac:	bc80      	pop	{r7}
 3ae:	4770      	bx	lr

000003b0 <m_putchar>:
void m_putchar(const char ch)
{
 3b0:	b480      	push	{r7}
 3b2:	b081      	sub	sp, #4
 3b4:	af00      	add	r7, sp, #0
 3b6:	4603      	mov	r3, r0
 3b8:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
 3ba:	4a04      	ldr	r2, [pc, #16]	; (3cc <m_putchar+0x1c>)
 3bc:	783b      	ldrb	r3, [r7, #0]
 3be:	6013      	str	r3, [r2, #0]
}
 3c0:	bf00      	nop
 3c2:	3704      	adds	r7, #4
 3c4:	46bd      	mov	sp, r7
 3c6:	bc80      	pop	{r7}
 3c8:	4770      	bx	lr
 3ca:	bf00      	nop
 3cc:	4000c000 	.word	0x4000c000

000003d0 <m_putstr>:
void m_putstr(const char *str)
{
 3d0:	b580      	push	{r7, lr}
 3d2:	b081      	sub	sp, #4
 3d4:	af00      	add	r7, sp, #0
 3d6:	6038      	str	r0, [r7, #0]
    while (*str)
 3d8:	e006      	b.n	3e8 <m_putstr+0x18>
    {
        m_putchar(*str++);
 3da:	683b      	ldr	r3, [r7, #0]
 3dc:	1c5a      	adds	r2, r3, #1
 3de:	603a      	str	r2, [r7, #0]
 3e0:	781b      	ldrb	r3, [r3, #0]
 3e2:	4618      	mov	r0, r3
 3e4:	f7ff ffe4 	bl	3b0 <m_putchar>
    while (*str)
 3e8:	683b      	ldr	r3, [r7, #0]
 3ea:	781b      	ldrb	r3, [r3, #0]
 3ec:	2b00      	cmp	r3, #0
 3ee:	d1f4      	bne.n	3da <m_putstr+0xa>
    }
}
 3f0:	bf00      	nop
 3f2:	bf00      	nop
 3f4:	3704      	adds	r7, #4
 3f6:	46bd      	mov	sp, r7
 3f8:	bd80      	pop	{r7, pc}

000003fa <m_strlen>:
uint32_t m_strlen (const char *__s)
{
 3fa:	b480      	push	{r7}
 3fc:	b082      	sub	sp, #8
 3fe:	af00      	add	r7, sp, #0
 400:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
 402:	2300      	movs	r3, #0
 404:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
 406:	e002      	b.n	40e <m_strlen+0x14>
 408:	687b      	ldr	r3, [r7, #4]
 40a:	3301      	adds	r3, #1
 40c:	607b      	str	r3, [r7, #4]
 40e:	683b      	ldr	r3, [r7, #0]
 410:	1c5a      	adds	r2, r3, #1
 412:	603a      	str	r2, [r7, #0]
 414:	781b      	ldrb	r3, [r3, #0]
 416:	2b00      	cmp	r3, #0
 418:	d1f6      	bne.n	408 <m_strlen+0xe>
    return i;
 41a:	687b      	ldr	r3, [r7, #4]
}
 41c:	4618      	mov	r0, r3
 41e:	3708      	adds	r7, #8
 420:	46bd      	mov	sp, r7
 422:	bc80      	pop	{r7}
 424:	4770      	bx	lr

00000426 <lite_printf>:
int lite_printf(const char *str, ...)
{
 426:	b40f      	push	{r0, r1, r2, r3}
 428:	b590      	push	{r4, r7, lr}
 42a:	b087      	sub	sp, #28
 42c:	af00      	add	r7, sp, #0
>>>>>>> Stashed changes
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
<<<<<<< Updated upstream
 222:	2300      	movs	r3, #0
 224:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 226:	2300      	movs	r3, #0
 228:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 22a:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 22e:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 230:	e110      	b.n	454 <lite_printf+0x23a>
    {
        switch (*str)
 232:	6abb      	ldr	r3, [r7, #40]	; 0x28
 234:	781b      	ldrb	r3, [r3, #0]
 236:	2b25      	cmp	r3, #37	; 0x25
 238:	d009      	beq.n	24e <lite_printf+0x34>
 23a:	2b25      	cmp	r3, #37	; 0x25
 23c:	f300 80fd 	bgt.w	43a <lite_printf+0x220>
 240:	2b0a      	cmp	r3, #10
 242:	f000 80ec 	beq.w	41e <lite_printf+0x204>
 246:	2b0d      	cmp	r3, #13
 248:	f000 80f0 	beq.w	42c <lite_printf+0x212>
 24c:	e0f5      	b.n	43a <lite_printf+0x220>
        {
        case '%': //发送参数
            str++;
 24e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 250:	3301      	adds	r3, #1
 252:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 254:	6abb      	ldr	r3, [r7, #40]	; 0x28
 256:	781b      	ldrb	r3, [r3, #0]
 258:	3b63      	subs	r3, #99	; 0x63
 25a:	2b15      	cmp	r3, #21
 25c:	f200 80f6 	bhi.w	44c <lite_printf+0x232>
 260:	a201      	add	r2, pc, #4	; (adr r2, 268 <lite_printf+0x4e>)
 262:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 266:	bf00      	nop
 268:	00000405 	.word	0x00000405
 26c:	000002c1 	.word	0x000002c1
 270:	0000044d 	.word	0x0000044d
 274:	0000044d 	.word	0x0000044d
 278:	0000044d 	.word	0x0000044d
 27c:	0000044d 	.word	0x0000044d
 280:	0000044d 	.word	0x0000044d
 284:	0000044d 	.word	0x0000044d
 288:	0000044d 	.word	0x0000044d
 28c:	0000044d 	.word	0x0000044d
 290:	0000044d 	.word	0x0000044d
 294:	0000044d 	.word	0x0000044d
 298:	0000044d 	.word	0x0000044d
 29c:	0000044d 	.word	0x0000044d
 2a0:	0000044d 	.word	0x0000044d
 2a4:	0000044d 	.word	0x0000044d
 2a8:	000003e5 	.word	0x000003e5
 2ac:	0000044d 	.word	0x0000044d
 2b0:	0000044d 	.word	0x0000044d
 2b4:	0000044d 	.word	0x0000044d
 2b8:	0000044d 	.word	0x0000044d
 2bc:	0000034b 	.word	0x0000034b
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
 2c0:	683b      	ldr	r3, [r7, #0]
 2c2:	1d1a      	adds	r2, r3, #4
 2c4:	603a      	str	r2, [r7, #0]
 2c6:	681b      	ldr	r3, [r3, #0]
 2c8:	60bb      	str	r3, [r7, #8]
                r_val = val;
 2ca:	68bb      	ldr	r3, [r7, #8]
 2cc:	61bb      	str	r3, [r7, #24]
                count = 0;
 2ce:	2300      	movs	r3, #0
 2d0:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 2d2:	e00a      	b.n	2ea <lite_printf+0xd0>

                {
                    count++; //整数的长度
 2d4:	7dfb      	ldrb	r3, [r7, #23]
 2d6:	3301      	adds	r3, #1
 2d8:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 2da:	69bb      	ldr	r3, [r7, #24]
 2dc:	4a64      	ldr	r2, [pc, #400]	; (470 <lite_printf+0x256>)
 2de:	fb82 1203 	smull	r1, r2, r2, r3
 2e2:	1092      	asrs	r2, r2, #2
 2e4:	17db      	asrs	r3, r3, #31
 2e6:	1ad3      	subs	r3, r2, r3
 2e8:	61bb      	str	r3, [r7, #24]
                while (r_val)
 2ea:	69bb      	ldr	r3, [r7, #24]
 2ec:	2b00      	cmp	r3, #0
 2ee:	d1f1      	bne.n	2d4 <lite_printf+0xba>
                }

                res += count;
 2f0:	7dfb      	ldrb	r3, [r7, #23]
 2f2:	693a      	ldr	r2, [r7, #16]
 2f4:	4413      	add	r3, r2
 2f6:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 2f8:	68bb      	ldr	r3, [r7, #8]
 2fa:	61bb      	str	r3, [r7, #24]
                while (count)
 2fc:	e021      	b.n	342 <lite_printf+0x128>
                {
                    ch = r_val / m_pow(10, count - 1);
 2fe:	69bc      	ldr	r4, [r7, #24]
 300:	7dfb      	ldrb	r3, [r7, #23]
 302:	3b01      	subs	r3, #1
 304:	4619      	mov	r1, r3
 306:	200a      	movs	r0, #10
 308:	f7ff ff34 	bl	174 <m_pow>
 30c:	4603      	mov	r3, r0
 30e:	fbb4 f3f3 	udiv	r3, r4, r3
 312:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 314:	7dfb      	ldrb	r3, [r7, #23]
 316:	3b01      	subs	r3, #1
 318:	4619      	mov	r1, r3
 31a:	200a      	movs	r0, #10
 31c:	f7ff ff2a 	bl	174 <m_pow>
 320:	4602      	mov	r2, r0
 322:	69bb      	ldr	r3, [r7, #24]
 324:	fbb3 f1f2 	udiv	r1, r3, r2
 328:	fb02 f201 	mul.w	r2, r2, r1
 32c:	1a9b      	subs	r3, r3, r2
 32e:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 330:	79fb      	ldrb	r3, [r7, #7]
 332:	3330      	adds	r3, #48	; 0x30
 334:	b2db      	uxtb	r3, r3
 336:	4618      	mov	r0, r3
 338:	f7ff ff34 	bl	1a4 <m_putchar>
                    //数字到字符的转换
                    count--;
 33c:	7dfb      	ldrb	r3, [r7, #23]
 33e:	3b01      	subs	r3, #1
 340:	75fb      	strb	r3, [r7, #23]
                while (count)
 342:	7dfb      	ldrb	r3, [r7, #23]
 344:	2b00      	cmp	r3, #0
 346:	d1da      	bne.n	2fe <lite_printf+0xe4>
                }
                break;
 348:	e068      	b.n	41c <lite_printf+0x202>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 34a:	683b      	ldr	r3, [r7, #0]
 34c:	1d1a      	adds	r2, r3, #4
 34e:	603a      	str	r2, [r7, #0]
 350:	681b      	ldr	r3, [r3, #0]
 352:	60bb      	str	r3, [r7, #8]
                r_val = val;
 354:	68bb      	ldr	r3, [r7, #8]
 356:	61bb      	str	r3, [r7, #24]
                count = 0;
 358:	2300      	movs	r3, #0
 35a:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 35c:	e008      	b.n	370 <lite_printf+0x156>

                {
                    count++; //整数的长度
 35e:	7dfb      	ldrb	r3, [r7, #23]
 360:	3301      	adds	r3, #1
 362:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 364:	69bb      	ldr	r3, [r7, #24]
 366:	2b00      	cmp	r3, #0
 368:	da00      	bge.n	36c <lite_printf+0x152>
 36a:	330f      	adds	r3, #15
 36c:	111b      	asrs	r3, r3, #4
 36e:	61bb      	str	r3, [r7, #24]
                while (r_val)
 370:	69bb      	ldr	r3, [r7, #24]
 372:	2b00      	cmp	r3, #0
 374:	d1f3      	bne.n	35e <lite_printf+0x144>
                }

                res += count;
 376:	7dfb      	ldrb	r3, [r7, #23]
 378:	693a      	ldr	r2, [r7, #16]
 37a:	4413      	add	r3, r2
 37c:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 37e:	68bb      	ldr	r3, [r7, #8]
 380:	61bb      	str	r3, [r7, #24]
                while (count)
 382:	e02b      	b.n	3dc <lite_printf+0x1c2>
                {
                    ch = r_val / m_pow(16, count - 1);
 384:	69bc      	ldr	r4, [r7, #24]
 386:	7dfb      	ldrb	r3, [r7, #23]
 388:	3b01      	subs	r3, #1
 38a:	4619      	mov	r1, r3
 38c:	2010      	movs	r0, #16
 38e:	f7ff fef1 	bl	174 <m_pow>
 392:	4603      	mov	r3, r0
 394:	fbb4 f3f3 	udiv	r3, r4, r3
 398:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 39a:	7dfb      	ldrb	r3, [r7, #23]
 39c:	3b01      	subs	r3, #1
 39e:	4619      	mov	r1, r3
 3a0:	2010      	movs	r0, #16
 3a2:	f7ff fee7 	bl	174 <m_pow>
 3a6:	4602      	mov	r2, r0
 3a8:	69bb      	ldr	r3, [r7, #24]
 3aa:	fbb3 f1f2 	udiv	r1, r3, r2
 3ae:	fb02 f201 	mul.w	r2, r2, r1
 3b2:	1a9b      	subs	r3, r3, r2
 3b4:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 3b6:	79fb      	ldrb	r3, [r7, #7]
 3b8:	2b09      	cmp	r3, #9
 3ba:	d806      	bhi.n	3ca <lite_printf+0x1b0>
                        m_putchar(ch + '0');
 3bc:	79fb      	ldrb	r3, [r7, #7]
 3be:	3330      	adds	r3, #48	; 0x30
 3c0:	b2db      	uxtb	r3, r3
 3c2:	4618      	mov	r0, r3
 3c4:	f7ff feee 	bl	1a4 <m_putchar>
 3c8:	e005      	b.n	3d6 <lite_printf+0x1bc>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 3ca:	79fb      	ldrb	r3, [r7, #7]
 3cc:	3357      	adds	r3, #87	; 0x57
 3ce:	b2db      	uxtb	r3, r3
 3d0:	4618      	mov	r0, r3
 3d2:	f7ff fee7 	bl	1a4 <m_putchar>
                    count--;
 3d6:	7dfb      	ldrb	r3, [r7, #23]
 3d8:	3b01      	subs	r3, #1
 3da:	75fb      	strb	r3, [r7, #23]
                while (count)
 3dc:	7dfb      	ldrb	r3, [r7, #23]
 3de:	2b00      	cmp	r3, #0
 3e0:	d1d0      	bne.n	384 <lite_printf+0x16a>
                }
                break;
 3e2:	e01b      	b.n	41c <lite_printf+0x202>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 3e4:	683b      	ldr	r3, [r7, #0]
 3e6:	1d1a      	adds	r2, r3, #4
 3e8:	603a      	str	r2, [r7, #0]
 3ea:	681b      	ldr	r3, [r3, #0]
 3ec:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 3ee:	68f8      	ldr	r0, [r7, #12]
 3f0:	f7ff fee8 	bl	1c4 <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 3f4:	68f8      	ldr	r0, [r7, #12]
 3f6:	f7ff fefa 	bl	1ee <m_strlen>
 3fa:	4602      	mov	r2, r0
 3fc:	693b      	ldr	r3, [r7, #16]
 3fe:	4413      	add	r3, r2
 400:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 402:	e00b      	b.n	41c <lite_printf+0x202>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 404:	683b      	ldr	r3, [r7, #0]
 406:	1d1a      	adds	r2, r3, #4
 408:	603a      	str	r2, [r7, #0]
 40a:	681b      	ldr	r3, [r3, #0]
 40c:	b2db      	uxtb	r3, r3
 40e:	4618      	mov	r0, r3
 410:	f7ff fec8 	bl	1a4 <m_putchar>
                res += 1;
 414:	693b      	ldr	r3, [r7, #16]
 416:	3301      	adds	r3, #1
 418:	613b      	str	r3, [r7, #16]

                break;
 41a:	bf00      	nop
            default:;
            }
            break;
 41c:	e016      	b.n	44c <lite_printf+0x232>
        case '\n':
            m_putchar('\n');
 41e:	200a      	movs	r0, #10
 420:	f7ff fec0 	bl	1a4 <m_putchar>
            res += 1;
 424:	693b      	ldr	r3, [r7, #16]
 426:	3301      	adds	r3, #1
 428:	613b      	str	r3, [r7, #16]
            break;
 42a:	e010      	b.n	44e <lite_printf+0x234>
        case '\r':
            m_putchar('\r');
 42c:	200d      	movs	r0, #13
 42e:	f7ff feb9 	bl	1a4 <m_putchar>
            res += 1;
 432:	693b      	ldr	r3, [r7, #16]
 434:	3301      	adds	r3, #1
 436:	613b      	str	r3, [r7, #16]
            break;
 438:	e009      	b.n	44e <lite_printf+0x234>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 43a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 43c:	781b      	ldrb	r3, [r3, #0]
 43e:	4618      	mov	r0, r3
 440:	f7ff feb0 	bl	1a4 <m_putchar>
            res += 1;
 444:	693b      	ldr	r3, [r7, #16]
 446:	3301      	adds	r3, #1
 448:	613b      	str	r3, [r7, #16]
 44a:	e000      	b.n	44e <lite_printf+0x234>
            break;
 44c:	bf00      	nop
        }

        str++;
 44e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 450:	3301      	adds	r3, #1
 452:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 454:	6abb      	ldr	r3, [r7, #40]	; 0x28
 456:	781b      	ldrb	r3, [r3, #0]
 458:	2b00      	cmp	r3, #0
 45a:	f47f aeea 	bne.w	232 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 45e:	693b      	ldr	r3, [r7, #16]
 460:	4618      	mov	r0, r3
 462:	371c      	adds	r7, #28
 464:	46bd      	mov	sp, r7
 466:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 46a:	b004      	add	sp, #16
 46c:	4770      	bx	lr
 46e:	bf00      	nop
 470:	66666667 	.word	0x66666667

Disassembly of section .text.default_handler:

00000474 <bus_fault_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
 474:	e7fe      	b.n	474 <bus_fault_handler>
=======
 42e:	2300      	movs	r3, #0
 430:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 432:	2300      	movs	r3, #0
 434:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 436:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 43a:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 43c:	e110      	b.n	660 <lite_printf+0x23a>
    {
        switch (*str)
 43e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 440:	781b      	ldrb	r3, [r3, #0]
 442:	2b25      	cmp	r3, #37	; 0x25
 444:	d009      	beq.n	45a <lite_printf+0x34>
 446:	2b25      	cmp	r3, #37	; 0x25
 448:	f300 80fd 	bgt.w	646 <lite_printf+0x220>
 44c:	2b0a      	cmp	r3, #10
 44e:	f000 80ec 	beq.w	62a <lite_printf+0x204>
 452:	2b0d      	cmp	r3, #13
 454:	f000 80f0 	beq.w	638 <lite_printf+0x212>
 458:	e0f5      	b.n	646 <lite_printf+0x220>
        {
        case '%': //发送参数
            str++;
 45a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 45c:	3301      	adds	r3, #1
 45e:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 460:	6abb      	ldr	r3, [r7, #40]	; 0x28
 462:	781b      	ldrb	r3, [r3, #0]
 464:	3b63      	subs	r3, #99	; 0x63
 466:	2b15      	cmp	r3, #21
 468:	f200 80f6 	bhi.w	658 <lite_printf+0x232>
 46c:	a201      	add	r2, pc, #4	; (adr r2, 474 <lite_printf+0x4e>)
 46e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 472:	bf00      	nop
 474:	00000611 	.word	0x00000611
 478:	000004cd 	.word	0x000004cd
 47c:	00000659 	.word	0x00000659
 480:	00000659 	.word	0x00000659
 484:	00000659 	.word	0x00000659
 488:	00000659 	.word	0x00000659
 48c:	00000659 	.word	0x00000659
 490:	00000659 	.word	0x00000659
 494:	00000659 	.word	0x00000659
 498:	00000659 	.word	0x00000659
 49c:	00000659 	.word	0x00000659
 4a0:	00000659 	.word	0x00000659
 4a4:	00000659 	.word	0x00000659
 4a8:	00000659 	.word	0x00000659
 4ac:	00000659 	.word	0x00000659
 4b0:	00000659 	.word	0x00000659
 4b4:	000005f1 	.word	0x000005f1
 4b8:	00000659 	.word	0x00000659
 4bc:	00000659 	.word	0x00000659
 4c0:	00000659 	.word	0x00000659
 4c4:	00000659 	.word	0x00000659
 4c8:	00000557 	.word	0x00000557
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
 4cc:	683b      	ldr	r3, [r7, #0]
 4ce:	1d1a      	adds	r2, r3, #4
 4d0:	603a      	str	r2, [r7, #0]
 4d2:	681b      	ldr	r3, [r3, #0]
 4d4:	60bb      	str	r3, [r7, #8]
                r_val = val;
 4d6:	68bb      	ldr	r3, [r7, #8]
 4d8:	61bb      	str	r3, [r7, #24]
                count = 0;
 4da:	2300      	movs	r3, #0
 4dc:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 4de:	e00a      	b.n	4f6 <lite_printf+0xd0>

                {
                    count++; //整数的长度
 4e0:	7dfb      	ldrb	r3, [r7, #23]
 4e2:	3301      	adds	r3, #1
 4e4:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 4e6:	69bb      	ldr	r3, [r7, #24]
 4e8:	4a64      	ldr	r2, [pc, #400]	; (67c <lite_printf+0x256>)
 4ea:	fb82 1203 	smull	r1, r2, r2, r3
 4ee:	1092      	asrs	r2, r2, #2
 4f0:	17db      	asrs	r3, r3, #31
 4f2:	1ad3      	subs	r3, r2, r3
 4f4:	61bb      	str	r3, [r7, #24]
                while (r_val)
 4f6:	69bb      	ldr	r3, [r7, #24]
 4f8:	2b00      	cmp	r3, #0
 4fa:	d1f1      	bne.n	4e0 <lite_printf+0xba>
                }

                res += count;
 4fc:	7dfb      	ldrb	r3, [r7, #23]
 4fe:	693a      	ldr	r2, [r7, #16]
 500:	4413      	add	r3, r2
 502:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 504:	68bb      	ldr	r3, [r7, #8]
 506:	61bb      	str	r3, [r7, #24]
                while (count)
 508:	e021      	b.n	54e <lite_printf+0x128>
                {
                    ch = r_val / m_pow(10, count - 1);
 50a:	69bc      	ldr	r4, [r7, #24]
 50c:	7dfb      	ldrb	r3, [r7, #23]
 50e:	3b01      	subs	r3, #1
 510:	4619      	mov	r1, r3
 512:	200a      	movs	r0, #10
 514:	f7ff ff34 	bl	380 <m_pow>
 518:	4603      	mov	r3, r0
 51a:	fbb4 f3f3 	udiv	r3, r4, r3
 51e:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 520:	7dfb      	ldrb	r3, [r7, #23]
 522:	3b01      	subs	r3, #1
 524:	4619      	mov	r1, r3
 526:	200a      	movs	r0, #10
 528:	f7ff ff2a 	bl	380 <m_pow>
 52c:	4602      	mov	r2, r0
 52e:	69bb      	ldr	r3, [r7, #24]
 530:	fbb3 f1f2 	udiv	r1, r3, r2
 534:	fb02 f201 	mul.w	r2, r2, r1
 538:	1a9b      	subs	r3, r3, r2
 53a:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 53c:	79fb      	ldrb	r3, [r7, #7]
 53e:	3330      	adds	r3, #48	; 0x30
 540:	b2db      	uxtb	r3, r3
 542:	4618      	mov	r0, r3
 544:	f7ff ff34 	bl	3b0 <m_putchar>
                    //数字到字符的转换
                    count--;
 548:	7dfb      	ldrb	r3, [r7, #23]
 54a:	3b01      	subs	r3, #1
 54c:	75fb      	strb	r3, [r7, #23]
                while (count)
 54e:	7dfb      	ldrb	r3, [r7, #23]
 550:	2b00      	cmp	r3, #0
 552:	d1da      	bne.n	50a <lite_printf+0xe4>
                }
                break;
 554:	e068      	b.n	628 <lite_printf+0x202>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 556:	683b      	ldr	r3, [r7, #0]
 558:	1d1a      	adds	r2, r3, #4
 55a:	603a      	str	r2, [r7, #0]
 55c:	681b      	ldr	r3, [r3, #0]
 55e:	60bb      	str	r3, [r7, #8]
                r_val = val;
 560:	68bb      	ldr	r3, [r7, #8]
 562:	61bb      	str	r3, [r7, #24]
                count = 0;
 564:	2300      	movs	r3, #0
 566:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 568:	e008      	b.n	57c <lite_printf+0x156>

                {
                    count++; //整数的长度
 56a:	7dfb      	ldrb	r3, [r7, #23]
 56c:	3301      	adds	r3, #1
 56e:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 570:	69bb      	ldr	r3, [r7, #24]
 572:	2b00      	cmp	r3, #0
 574:	da00      	bge.n	578 <lite_printf+0x152>
 576:	330f      	adds	r3, #15
 578:	111b      	asrs	r3, r3, #4
 57a:	61bb      	str	r3, [r7, #24]
                while (r_val)
 57c:	69bb      	ldr	r3, [r7, #24]
 57e:	2b00      	cmp	r3, #0
 580:	d1f3      	bne.n	56a <lite_printf+0x144>
                }

                res += count;
 582:	7dfb      	ldrb	r3, [r7, #23]
 584:	693a      	ldr	r2, [r7, #16]
 586:	4413      	add	r3, r2
 588:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 58a:	68bb      	ldr	r3, [r7, #8]
 58c:	61bb      	str	r3, [r7, #24]
                while (count)
 58e:	e02b      	b.n	5e8 <lite_printf+0x1c2>
                {
                    ch = r_val / m_pow(16, count - 1);
 590:	69bc      	ldr	r4, [r7, #24]
 592:	7dfb      	ldrb	r3, [r7, #23]
 594:	3b01      	subs	r3, #1
 596:	4619      	mov	r1, r3
 598:	2010      	movs	r0, #16
 59a:	f7ff fef1 	bl	380 <m_pow>
 59e:	4603      	mov	r3, r0
 5a0:	fbb4 f3f3 	udiv	r3, r4, r3
 5a4:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 5a6:	7dfb      	ldrb	r3, [r7, #23]
 5a8:	3b01      	subs	r3, #1
 5aa:	4619      	mov	r1, r3
 5ac:	2010      	movs	r0, #16
 5ae:	f7ff fee7 	bl	380 <m_pow>
 5b2:	4602      	mov	r2, r0
 5b4:	69bb      	ldr	r3, [r7, #24]
 5b6:	fbb3 f1f2 	udiv	r1, r3, r2
 5ba:	fb02 f201 	mul.w	r2, r2, r1
 5be:	1a9b      	subs	r3, r3, r2
 5c0:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 5c2:	79fb      	ldrb	r3, [r7, #7]
 5c4:	2b09      	cmp	r3, #9
 5c6:	d806      	bhi.n	5d6 <lite_printf+0x1b0>
                        m_putchar(ch + '0');
 5c8:	79fb      	ldrb	r3, [r7, #7]
 5ca:	3330      	adds	r3, #48	; 0x30
 5cc:	b2db      	uxtb	r3, r3
 5ce:	4618      	mov	r0, r3
 5d0:	f7ff feee 	bl	3b0 <m_putchar>
 5d4:	e005      	b.n	5e2 <lite_printf+0x1bc>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 5d6:	79fb      	ldrb	r3, [r7, #7]
 5d8:	3357      	adds	r3, #87	; 0x57
 5da:	b2db      	uxtb	r3, r3
 5dc:	4618      	mov	r0, r3
 5de:	f7ff fee7 	bl	3b0 <m_putchar>
                    count--;
 5e2:	7dfb      	ldrb	r3, [r7, #23]
 5e4:	3b01      	subs	r3, #1
 5e6:	75fb      	strb	r3, [r7, #23]
                while (count)
 5e8:	7dfb      	ldrb	r3, [r7, #23]
 5ea:	2b00      	cmp	r3, #0
 5ec:	d1d0      	bne.n	590 <lite_printf+0x16a>
                }
                break;
 5ee:	e01b      	b.n	628 <lite_printf+0x202>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 5f0:	683b      	ldr	r3, [r7, #0]
 5f2:	1d1a      	adds	r2, r3, #4
 5f4:	603a      	str	r2, [r7, #0]
 5f6:	681b      	ldr	r3, [r3, #0]
 5f8:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 5fa:	68f8      	ldr	r0, [r7, #12]
 5fc:	f7ff fee8 	bl	3d0 <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 600:	68f8      	ldr	r0, [r7, #12]
 602:	f7ff fefa 	bl	3fa <m_strlen>
 606:	4602      	mov	r2, r0
 608:	693b      	ldr	r3, [r7, #16]
 60a:	4413      	add	r3, r2
 60c:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 60e:	e00b      	b.n	628 <lite_printf+0x202>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 610:	683b      	ldr	r3, [r7, #0]
 612:	1d1a      	adds	r2, r3, #4
 614:	603a      	str	r2, [r7, #0]
 616:	681b      	ldr	r3, [r3, #0]
 618:	b2db      	uxtb	r3, r3
 61a:	4618      	mov	r0, r3
 61c:	f7ff fec8 	bl	3b0 <m_putchar>
                res += 1;
 620:	693b      	ldr	r3, [r7, #16]
 622:	3301      	adds	r3, #1
 624:	613b      	str	r3, [r7, #16]

                break;
 626:	bf00      	nop
            default:;
            }
            break;
 628:	e016      	b.n	658 <lite_printf+0x232>
        case '\n':
            m_putchar('\n');
 62a:	200a      	movs	r0, #10
 62c:	f7ff fec0 	bl	3b0 <m_putchar>
            res += 1;
 630:	693b      	ldr	r3, [r7, #16]
 632:	3301      	adds	r3, #1
 634:	613b      	str	r3, [r7, #16]
            break;
 636:	e010      	b.n	65a <lite_printf+0x234>
        case '\r':
            m_putchar('\r');
 638:	200d      	movs	r0, #13
 63a:	f7ff feb9 	bl	3b0 <m_putchar>
            res += 1;
 63e:	693b      	ldr	r3, [r7, #16]
 640:	3301      	adds	r3, #1
 642:	613b      	str	r3, [r7, #16]
            break;
 644:	e009      	b.n	65a <lite_printf+0x234>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 646:	6abb      	ldr	r3, [r7, #40]	; 0x28
 648:	781b      	ldrb	r3, [r3, #0]
 64a:	4618      	mov	r0, r3
 64c:	f7ff feb0 	bl	3b0 <m_putchar>
            res += 1;
 650:	693b      	ldr	r3, [r7, #16]
 652:	3301      	adds	r3, #1
 654:	613b      	str	r3, [r7, #16]
 656:	e000      	b.n	65a <lite_printf+0x234>
            break;
 658:	bf00      	nop
        }

        str++;
 65a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 65c:	3301      	adds	r3, #1
 65e:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 660:	6abb      	ldr	r3, [r7, #40]	; 0x28
 662:	781b      	ldrb	r3, [r3, #0]
 664:	2b00      	cmp	r3, #0
 666:	f47f aeea 	bne.w	43e <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 66a:	693b      	ldr	r3, [r7, #16]
 66c:	4618      	mov	r0, r3
 66e:	371c      	adds	r7, #28
 670:	46bd      	mov	sp, r7
 672:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 676:	b004      	add	sp, #16
 678:	4770      	bx	lr
 67a:	bf00      	nop
 67c:	66666667 	.word	0x66666667

00000680 <test_div>:
#include "backtrace.h"
#include "hal_log.h"

int test_div(void)
{
 680:	b480      	push	{r7}
 682:	b083      	sub	sp, #12
 684:	af00      	add	r7, sp, #0
    int a = 1;
 686:	2301      	movs	r3, #1
 688:	60bb      	str	r3, [r7, #8]
    int b = 0;
 68a:	2300      	movs	r3, #0
 68c:	607b      	str	r3, [r7, #4]
    int z = a / b;
 68e:	68ba      	ldr	r2, [r7, #8]
 690:	687b      	ldr	r3, [r7, #4]
 692:	fb92 f3f3 	sdiv	r3, r2, r3
 696:	603b      	str	r3, [r7, #0]

    return z;
 698:	683b      	ldr	r3, [r7, #0]
}
 69a:	4618      	mov	r0, r3
 69c:	370c      	adds	r7, #12
 69e:	46bd      	mov	sp, r7
 6a0:	bc80      	pop	{r7}
 6a2:	4770      	bx	lr

000006a4 <backtrace_test>:

void backtrace_test(void)
{
 6a4:	b580      	push	{r7, lr}
 6a6:	af00      	add	r7, sp, #0
    lite_printf("[%s] start\n");
 6a8:	4804      	ldr	r0, [pc, #16]	; (6bc <backtrace_test+0x18>)
 6aa:	f7ff febc 	bl	426 <lite_printf>
    test_div();
 6ae:	f7ff ffe7 	bl	680 <test_div>
    lite_printf("[%s] end\n");
 6b2:	4803      	ldr	r0, [pc, #12]	; (6c0 <backtrace_test+0x1c>)
 6b4:	f7ff feb7 	bl	426 <lite_printf>
 6b8:	bf00      	nop
 6ba:	bd80      	pop	{r7, pc}
 6bc:	000007b4 	.word	0x000007b4
 6c0:	000007c0 	.word	0x000007c0
 6c4:	55aa55aa 	.word	0x55aa55aa

Disassembly of section .text.default_handler:

000006c8 <default_handler>:
    b .
 6c8:	e7fe      	b.n	6c8 <default_handler>
>>>>>>> Stashed changes
