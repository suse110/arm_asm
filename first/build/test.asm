
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
.weak  _start
.type  _start, %function
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
  10:	20001000 00000000 00000069 00000081     ... ....i.......
  20:	00000099 000000b1 000000c9 00000574     ............t...
  30:	00000574 00000574 00000574 000000e1     t...t...t.......
  40:	000000f9 00000574 00000111 00000129     ....t.......)...

00000050 <main>:
#include <stdint.h>
#include "hal.h"

void main(void)
{
  50:	b580      	push	{r7, lr}
  52:	af00      	add	r7, sp, #0
    lite_printf("[%s] hello world\n", __func__);
  54:	4902      	ldr	r1, [pc, #8]	; (60 <main+0x10>)
  56:	4803      	ldr	r0, [pc, #12]	; (64 <main+0x14>)
  58:	f000 f93d 	bl	2d6 <lite_printf>
    // backtrace_test();
    // hal_mpu_test();
    while(1);
  5c:	e7fe      	b.n	5c <main+0xc>
  5e:	bf00      	nop
  60:	00000594 	.word	0x00000594
  64:	00000578 	.word	0x00000578

00000068 <nmi_handler>:
}

void nmi_handler(void)
{
  68:	b580      	push	{r7, lr}
  6a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  6c:	4902      	ldr	r1, [pc, #8]	; (78 <nmi_handler+0x10>)
  6e:	4803      	ldr	r0, [pc, #12]	; (7c <nmi_handler+0x14>)
  70:	f000 f931 	bl	2d6 <lite_printf>
    while(1);
  74:	e7fe      	b.n	74 <nmi_handler+0xc>
  76:	bf00      	nop
  78:	0000059c 	.word	0x0000059c
  7c:	0000058c 	.word	0x0000058c

00000080 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
  80:	b580      	push	{r7, lr}
  82:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  84:	4902      	ldr	r1, [pc, #8]	; (90 <hard_fault_handler+0x10>)
  86:	4803      	ldr	r0, [pc, #12]	; (94 <hard_fault_handler+0x14>)
  88:	f000 f925 	bl	2d6 <lite_printf>
    while(1);
  8c:	e7fe      	b.n	8c <hard_fault_handler+0xc>
  8e:	bf00      	nop
  90:	000005a8 	.word	0x000005a8
  94:	0000058c 	.word	0x0000058c

00000098 <mem_manage_handler>:
}

void mem_manage_handler(void)
{
  98:	b580      	push	{r7, lr}
  9a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  9c:	4902      	ldr	r1, [pc, #8]	; (a8 <mem_manage_handler+0x10>)
  9e:	4803      	ldr	r0, [pc, #12]	; (ac <mem_manage_handler+0x14>)
  a0:	f000 f919 	bl	2d6 <lite_printf>
    while(1);
  a4:	e7fe      	b.n	a4 <mem_manage_handler+0xc>
  a6:	bf00      	nop
  a8:	000005bc 	.word	0x000005bc
  ac:	0000058c 	.word	0x0000058c

000000b0 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
  b0:	b580      	push	{r7, lr}
  b2:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  b4:	4902      	ldr	r1, [pc, #8]	; (c0 <bus_fault_handler+0x10>)
  b6:	4803      	ldr	r0, [pc, #12]	; (c4 <bus_fault_handler+0x14>)
  b8:	f000 f90d 	bl	2d6 <lite_printf>
    while(1);
  bc:	e7fe      	b.n	bc <bus_fault_handler+0xc>
  be:	bf00      	nop
  c0:	000005d0 	.word	0x000005d0
  c4:	0000058c 	.word	0x0000058c

000000c8 <usage_fault_handler>:
}

void usage_fault_handler(void)
{
  c8:	b580      	push	{r7, lr}
  ca:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  cc:	4902      	ldr	r1, [pc, #8]	; (d8 <usage_fault_handler+0x10>)
  ce:	4803      	ldr	r0, [pc, #12]	; (dc <usage_fault_handler+0x14>)
  d0:	f000 f901 	bl	2d6 <lite_printf>
    while(1);
  d4:	e7fe      	b.n	d4 <usage_fault_handler+0xc>
  d6:	bf00      	nop
  d8:	000005e4 	.word	0x000005e4
  dc:	0000058c 	.word	0x0000058c

000000e0 <svc_handler>:
}

void svc_handler(void)
{
  e0:	b580      	push	{r7, lr}
  e2:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  e4:	4902      	ldr	r1, [pc, #8]	; (f0 <svc_handler+0x10>)
  e6:	4803      	ldr	r0, [pc, #12]	; (f4 <svc_handler+0x14>)
  e8:	f000 f8f5 	bl	2d6 <lite_printf>
    while(1);
  ec:	e7fe      	b.n	ec <svc_handler+0xc>
  ee:	bf00      	nop
  f0:	000005f8 	.word	0x000005f8
  f4:	0000058c 	.word	0x0000058c

000000f8 <debug_mon_handler>:
}

void debug_mon_handler(void)
{
  f8:	b580      	push	{r7, lr}
  fa:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  fc:	4902      	ldr	r1, [pc, #8]	; (108 <debug_mon_handler+0x10>)
  fe:	4803      	ldr	r0, [pc, #12]	; (10c <debug_mon_handler+0x14>)
 100:	f000 f8e9 	bl	2d6 <lite_printf>
    while(1);
 104:	e7fe      	b.n	104 <debug_mon_handler+0xc>
 106:	bf00      	nop
 108:	00000604 	.word	0x00000604
 10c:	0000058c 	.word	0x0000058c

00000110 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
 110:	b580      	push	{r7, lr}
 112:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 114:	4902      	ldr	r1, [pc, #8]	; (120 <pend_sv_handler+0x10>)
 116:	4803      	ldr	r0, [pc, #12]	; (124 <pend_sv_handler+0x14>)
 118:	f000 f8dd 	bl	2d6 <lite_printf>
    while(1);
 11c:	e7fe      	b.n	11c <pend_sv_handler+0xc>
 11e:	bf00      	nop
 120:	00000618 	.word	0x00000618
 124:	0000058c 	.word	0x0000058c

00000128 <sys_tick_handler>:
}

void sys_tick_handler(void)
{
 128:	b580      	push	{r7, lr}
 12a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 12c:	4902      	ldr	r1, [pc, #8]	; (138 <sys_tick_handler+0x10>)
 12e:	4803      	ldr	r0, [pc, #12]	; (13c <sys_tick_handler+0x14>)
 130:	f000 f8d1 	bl	2d6 <lite_printf>
    while(1);
 134:	e7fe      	b.n	134 <sys_tick_handler+0xc>
 136:	bf00      	nop
 138:	00000628 	.word	0x00000628
 13c:	0000058c 	.word	0x0000058c

00000140 <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
 140:	b480      	push	{r7}
 142:	b081      	sub	sp, #4
 144:	af00      	add	r7, sp, #0
 146:	6038      	str	r0, [r7, #0]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
 148:	f3bf 8f4f 	dsb	sy
}
 14c:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
 14e:	f3bf 8f6f 	isb	sy
}
 152:	bf00      	nop
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
 154:	4a07      	ldr	r2, [pc, #28]	; (174 <ARM_MPU_Enable+0x34>)
 156:	683b      	ldr	r3, [r7, #0]
 158:	f043 0301 	orr.w	r3, r3, #1
 15c:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
 15e:	4b06      	ldr	r3, [pc, #24]	; (178 <ARM_MPU_Enable+0x38>)
 160:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 162:	4a05      	ldr	r2, [pc, #20]	; (178 <ARM_MPU_Enable+0x38>)
 164:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 168:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
 16a:	bf00      	nop
 16c:	3704      	adds	r7, #4
 16e:	46bd      	mov	sp, r7
 170:	bc80      	pop	{r7}
 172:	4770      	bx	lr
 174:	e000ed90 	.word	0xe000ed90
 178:	e000ed00 	.word	0xe000ed00

0000017c <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
 17c:	b480      	push	{r7}
 17e:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
 180:	f3bf 8f4f 	dsb	sy
}
 184:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
 186:	f3bf 8f6f 	isb	sy
}
 18a:	bf00      	nop
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
 18c:	4b07      	ldr	r3, [pc, #28]	; (1ac <ARM_MPU_Disable+0x30>)
 18e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 190:	4a06      	ldr	r2, [pc, #24]	; (1ac <ARM_MPU_Disable+0x30>)
 192:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 196:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
 198:	4b05      	ldr	r3, [pc, #20]	; (1b0 <ARM_MPU_Disable+0x34>)
 19a:	685b      	ldr	r3, [r3, #4]
 19c:	4a04      	ldr	r2, [pc, #16]	; (1b0 <ARM_MPU_Disable+0x34>)
 19e:	f023 0301 	bic.w	r3, r3, #1
 1a2:	6053      	str	r3, [r2, #4]
}
 1a4:	bf00      	nop
 1a6:	46bd      	mov	sp, r7
 1a8:	bc80      	pop	{r7}
 1aa:	4770      	bx	lr
 1ac:	e000ed00 	.word	0xe000ed00
 1b0:	e000ed90 	.word	0xe000ed90

000001b4 <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
 1b4:	b480      	push	{r7}
 1b6:	b082      	sub	sp, #8
 1b8:	af00      	add	r7, sp, #0
 1ba:	6078      	str	r0, [r7, #4]
 1bc:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
 1be:	4a05      	ldr	r2, [pc, #20]	; (1d4 <ARM_MPU_SetRegion+0x20>)
 1c0:	687b      	ldr	r3, [r7, #4]
 1c2:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
 1c4:	4a03      	ldr	r2, [pc, #12]	; (1d4 <ARM_MPU_SetRegion+0x20>)
 1c6:	683b      	ldr	r3, [r7, #0]
 1c8:	6113      	str	r3, [r2, #16]
}
 1ca:	bf00      	nop
 1cc:	3708      	adds	r7, #8
 1ce:	46bd      	mov	sp, r7
 1d0:	bc80      	pop	{r7}
 1d2:	4770      	bx	lr
 1d4:	e000ed90 	.word	0xe000ed90

000001d8 <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
 1d8:	b5b0      	push	{r4, r5, r7, lr}
 1da:	b08a      	sub	sp, #40	; 0x28
 1dc:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
 1de:	4b13      	ldr	r3, [pc, #76]	; (22c <hal_mpu_test+0x54>)
 1e0:	463c      	mov	r4, r7
 1e2:	461d      	mov	r5, r3
 1e4:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 1e6:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 1e8:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 1ec:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
 1f0:	f7ff ffc4 	bl	17c <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
 1f4:	463b      	mov	r3, r7
 1f6:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 1f8:	e00d      	b.n	216 <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
 1fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 1fc:	681a      	ldr	r2, [r3, #0]
 1fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 200:	685b      	ldr	r3, [r3, #4]
 202:	4619      	mov	r1, r3
 204:	4610      	mov	r0, r2
 206:	f7ff ffd5 	bl	1b4 <ARM_MPU_SetRegion>
        mpu_region++;
 20a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 20c:	3308      	adds	r3, #8
 20e:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 210:	6a3b      	ldr	r3, [r7, #32]
 212:	3301      	adds	r3, #1
 214:	623b      	str	r3, [r7, #32]
 216:	6a3b      	ldr	r3, [r7, #32]
 218:	2b03      	cmp	r3, #3
 21a:	d9ee      	bls.n	1fa <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
 21c:	2006      	movs	r0, #6
 21e:	f7ff ff8f 	bl	140 <ARM_MPU_Enable>
}
 222:	bf00      	nop
 224:	3728      	adds	r7, #40	; 0x28
 226:	46bd      	mov	sp, r7
 228:	bdb0      	pop	{r4, r5, r7, pc}
 22a:	bf00      	nop
 22c:	0000063c 	.word	0x0000063c

00000230 <m_pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
 230:	b480      	push	{r7}
 232:	b083      	sub	sp, #12
 234:	af00      	add	r7, sp, #0
 236:	6078      	str	r0, [r7, #4]
 238:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
 23a:	2301      	movs	r3, #1
 23c:	60bb      	str	r3, [r7, #8]
    while (y--)
 23e:	e004      	b.n	24a <m_pow+0x1a>
    {
        sum *= x;
 240:	687a      	ldr	r2, [r7, #4]
 242:	68bb      	ldr	r3, [r7, #8]
 244:	fb02 f303 	mul.w	r3, r2, r3
 248:	60bb      	str	r3, [r7, #8]
    while (y--)
 24a:	683b      	ldr	r3, [r7, #0]
 24c:	1e5a      	subs	r2, r3, #1
 24e:	603a      	str	r2, [r7, #0]
 250:	2b00      	cmp	r3, #0
 252:	d1f5      	bne.n	240 <m_pow+0x10>
    }
    return sum;
 254:	68bb      	ldr	r3, [r7, #8]
}
 256:	4618      	mov	r0, r3
 258:	370c      	adds	r7, #12
 25a:	46bd      	mov	sp, r7
 25c:	bc80      	pop	{r7}
 25e:	4770      	bx	lr

00000260 <m_putchar>:
void m_putchar(const char ch)
{
 260:	b480      	push	{r7}
 262:	b081      	sub	sp, #4
 264:	af00      	add	r7, sp, #0
 266:	4603      	mov	r3, r0
 268:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
 26a:	4a04      	ldr	r2, [pc, #16]	; (27c <m_putchar+0x1c>)
 26c:	783b      	ldrb	r3, [r7, #0]
 26e:	6013      	str	r3, [r2, #0]
}
 270:	bf00      	nop
 272:	3704      	adds	r7, #4
 274:	46bd      	mov	sp, r7
 276:	bc80      	pop	{r7}
 278:	4770      	bx	lr
 27a:	bf00      	nop
 27c:	4000c000 	.word	0x4000c000

00000280 <m_putstr>:
void m_putstr(const char *str)
{
 280:	b580      	push	{r7, lr}
 282:	b081      	sub	sp, #4
 284:	af00      	add	r7, sp, #0
 286:	6038      	str	r0, [r7, #0]
    while (*str)
 288:	e006      	b.n	298 <m_putstr+0x18>
    {
        m_putchar(*str++);
 28a:	683b      	ldr	r3, [r7, #0]
 28c:	1c5a      	adds	r2, r3, #1
 28e:	603a      	str	r2, [r7, #0]
 290:	781b      	ldrb	r3, [r3, #0]
 292:	4618      	mov	r0, r3
 294:	f7ff ffe4 	bl	260 <m_putchar>
    while (*str)
 298:	683b      	ldr	r3, [r7, #0]
 29a:	781b      	ldrb	r3, [r3, #0]
 29c:	2b00      	cmp	r3, #0
 29e:	d1f4      	bne.n	28a <m_putstr+0xa>
    }
}
 2a0:	bf00      	nop
 2a2:	bf00      	nop
 2a4:	3704      	adds	r7, #4
 2a6:	46bd      	mov	sp, r7
 2a8:	bd80      	pop	{r7, pc}

000002aa <m_strlen>:
uint32_t m_strlen (const char *__s)
{
 2aa:	b480      	push	{r7}
 2ac:	b082      	sub	sp, #8
 2ae:	af00      	add	r7, sp, #0
 2b0:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
 2b2:	2300      	movs	r3, #0
 2b4:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
 2b6:	e002      	b.n	2be <m_strlen+0x14>
 2b8:	687b      	ldr	r3, [r7, #4]
 2ba:	3301      	adds	r3, #1
 2bc:	607b      	str	r3, [r7, #4]
 2be:	683b      	ldr	r3, [r7, #0]
 2c0:	1c5a      	adds	r2, r3, #1
 2c2:	603a      	str	r2, [r7, #0]
 2c4:	781b      	ldrb	r3, [r3, #0]
 2c6:	2b00      	cmp	r3, #0
 2c8:	d1f6      	bne.n	2b8 <m_strlen+0xe>
    return i;
 2ca:	687b      	ldr	r3, [r7, #4]
}
 2cc:	4618      	mov	r0, r3
 2ce:	3708      	adds	r7, #8
 2d0:	46bd      	mov	sp, r7
 2d2:	bc80      	pop	{r7}
 2d4:	4770      	bx	lr

000002d6 <lite_printf>:
int lite_printf(const char *str, ...)
{
 2d6:	b40f      	push	{r0, r1, r2, r3}
 2d8:	b590      	push	{r4, r7, lr}
 2da:	b087      	sub	sp, #28
 2dc:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
 2de:	2300      	movs	r3, #0
 2e0:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 2e2:	2300      	movs	r3, #0
 2e4:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 2e6:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 2ea:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 2ec:	e110      	b.n	510 <lite_printf+0x23a>
    {
        switch (*str)
 2ee:	6abb      	ldr	r3, [r7, #40]	; 0x28
 2f0:	781b      	ldrb	r3, [r3, #0]
 2f2:	2b25      	cmp	r3, #37	; 0x25
 2f4:	d009      	beq.n	30a <lite_printf+0x34>
 2f6:	2b25      	cmp	r3, #37	; 0x25
 2f8:	f300 80fd 	bgt.w	4f6 <lite_printf+0x220>
 2fc:	2b0a      	cmp	r3, #10
 2fe:	f000 80ec 	beq.w	4da <lite_printf+0x204>
 302:	2b0d      	cmp	r3, #13
 304:	f000 80f0 	beq.w	4e8 <lite_printf+0x212>
 308:	e0f5      	b.n	4f6 <lite_printf+0x220>
        {
        case '%': //发送参数
            str++;
 30a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 30c:	3301      	adds	r3, #1
 30e:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 310:	6abb      	ldr	r3, [r7, #40]	; 0x28
 312:	781b      	ldrb	r3, [r3, #0]
 314:	3b63      	subs	r3, #99	; 0x63
 316:	2b15      	cmp	r3, #21
 318:	f200 80f6 	bhi.w	508 <lite_printf+0x232>
 31c:	a201      	add	r2, pc, #4	; (adr r2, 324 <lite_printf+0x4e>)
 31e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 322:	bf00      	nop
 324:	000004c1 	.word	0x000004c1
 328:	0000037d 	.word	0x0000037d
 32c:	00000509 	.word	0x00000509
 330:	00000509 	.word	0x00000509
 334:	00000509 	.word	0x00000509
 338:	00000509 	.word	0x00000509
 33c:	00000509 	.word	0x00000509
 340:	00000509 	.word	0x00000509
 344:	00000509 	.word	0x00000509
 348:	00000509 	.word	0x00000509
 34c:	00000509 	.word	0x00000509
 350:	00000509 	.word	0x00000509
 354:	00000509 	.word	0x00000509
 358:	00000509 	.word	0x00000509
 35c:	00000509 	.word	0x00000509
 360:	00000509 	.word	0x00000509
 364:	000004a1 	.word	0x000004a1
 368:	00000509 	.word	0x00000509
 36c:	00000509 	.word	0x00000509
 370:	00000509 	.word	0x00000509
 374:	00000509 	.word	0x00000509
 378:	00000407 	.word	0x00000407
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
 37c:	683b      	ldr	r3, [r7, #0]
 37e:	1d1a      	adds	r2, r3, #4
 380:	603a      	str	r2, [r7, #0]
 382:	681b      	ldr	r3, [r3, #0]
 384:	60bb      	str	r3, [r7, #8]
                r_val = val;
 386:	68bb      	ldr	r3, [r7, #8]
 388:	61bb      	str	r3, [r7, #24]
                count = 0;
 38a:	2300      	movs	r3, #0
 38c:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 38e:	e00a      	b.n	3a6 <lite_printf+0xd0>

                {
                    count++; //整数的长度
 390:	7dfb      	ldrb	r3, [r7, #23]
 392:	3301      	adds	r3, #1
 394:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 396:	69bb      	ldr	r3, [r7, #24]
 398:	4a64      	ldr	r2, [pc, #400]	; (52c <lite_printf+0x256>)
 39a:	fb82 1203 	smull	r1, r2, r2, r3
 39e:	1092      	asrs	r2, r2, #2
 3a0:	17db      	asrs	r3, r3, #31
 3a2:	1ad3      	subs	r3, r2, r3
 3a4:	61bb      	str	r3, [r7, #24]
                while (r_val)
 3a6:	69bb      	ldr	r3, [r7, #24]
 3a8:	2b00      	cmp	r3, #0
 3aa:	d1f1      	bne.n	390 <lite_printf+0xba>
                }

                res += count;
 3ac:	7dfb      	ldrb	r3, [r7, #23]
 3ae:	693a      	ldr	r2, [r7, #16]
 3b0:	4413      	add	r3, r2
 3b2:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 3b4:	68bb      	ldr	r3, [r7, #8]
 3b6:	61bb      	str	r3, [r7, #24]
                while (count)
 3b8:	e021      	b.n	3fe <lite_printf+0x128>
                {
                    ch = r_val / m_pow(10, count - 1);
 3ba:	69bc      	ldr	r4, [r7, #24]
 3bc:	7dfb      	ldrb	r3, [r7, #23]
 3be:	3b01      	subs	r3, #1
 3c0:	4619      	mov	r1, r3
 3c2:	200a      	movs	r0, #10
 3c4:	f7ff ff34 	bl	230 <m_pow>
 3c8:	4603      	mov	r3, r0
 3ca:	fbb4 f3f3 	udiv	r3, r4, r3
 3ce:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 3d0:	7dfb      	ldrb	r3, [r7, #23]
 3d2:	3b01      	subs	r3, #1
 3d4:	4619      	mov	r1, r3
 3d6:	200a      	movs	r0, #10
 3d8:	f7ff ff2a 	bl	230 <m_pow>
 3dc:	4602      	mov	r2, r0
 3de:	69bb      	ldr	r3, [r7, #24]
 3e0:	fbb3 f1f2 	udiv	r1, r3, r2
 3e4:	fb02 f201 	mul.w	r2, r2, r1
 3e8:	1a9b      	subs	r3, r3, r2
 3ea:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 3ec:	79fb      	ldrb	r3, [r7, #7]
 3ee:	3330      	adds	r3, #48	; 0x30
 3f0:	b2db      	uxtb	r3, r3
 3f2:	4618      	mov	r0, r3
 3f4:	f7ff ff34 	bl	260 <m_putchar>
                    //数字到字符的转换
                    count--;
 3f8:	7dfb      	ldrb	r3, [r7, #23]
 3fa:	3b01      	subs	r3, #1
 3fc:	75fb      	strb	r3, [r7, #23]
                while (count)
 3fe:	7dfb      	ldrb	r3, [r7, #23]
 400:	2b00      	cmp	r3, #0
 402:	d1da      	bne.n	3ba <lite_printf+0xe4>
                }
                break;
 404:	e068      	b.n	4d8 <lite_printf+0x202>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 406:	683b      	ldr	r3, [r7, #0]
 408:	1d1a      	adds	r2, r3, #4
 40a:	603a      	str	r2, [r7, #0]
 40c:	681b      	ldr	r3, [r3, #0]
 40e:	60bb      	str	r3, [r7, #8]
                r_val = val;
 410:	68bb      	ldr	r3, [r7, #8]
 412:	61bb      	str	r3, [r7, #24]
                count = 0;
 414:	2300      	movs	r3, #0
 416:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 418:	e008      	b.n	42c <lite_printf+0x156>

                {
                    count++; //整数的长度
 41a:	7dfb      	ldrb	r3, [r7, #23]
 41c:	3301      	adds	r3, #1
 41e:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 420:	69bb      	ldr	r3, [r7, #24]
 422:	2b00      	cmp	r3, #0
 424:	da00      	bge.n	428 <lite_printf+0x152>
 426:	330f      	adds	r3, #15
 428:	111b      	asrs	r3, r3, #4
 42a:	61bb      	str	r3, [r7, #24]
                while (r_val)
 42c:	69bb      	ldr	r3, [r7, #24]
 42e:	2b00      	cmp	r3, #0
 430:	d1f3      	bne.n	41a <lite_printf+0x144>
                }

                res += count;
 432:	7dfb      	ldrb	r3, [r7, #23]
 434:	693a      	ldr	r2, [r7, #16]
 436:	4413      	add	r3, r2
 438:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 43a:	68bb      	ldr	r3, [r7, #8]
 43c:	61bb      	str	r3, [r7, #24]
                while (count)
 43e:	e02b      	b.n	498 <lite_printf+0x1c2>
                {
                    ch = r_val / m_pow(16, count - 1);
 440:	69bc      	ldr	r4, [r7, #24]
 442:	7dfb      	ldrb	r3, [r7, #23]
 444:	3b01      	subs	r3, #1
 446:	4619      	mov	r1, r3
 448:	2010      	movs	r0, #16
 44a:	f7ff fef1 	bl	230 <m_pow>
 44e:	4603      	mov	r3, r0
 450:	fbb4 f3f3 	udiv	r3, r4, r3
 454:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 456:	7dfb      	ldrb	r3, [r7, #23]
 458:	3b01      	subs	r3, #1
 45a:	4619      	mov	r1, r3
 45c:	2010      	movs	r0, #16
 45e:	f7ff fee7 	bl	230 <m_pow>
 462:	4602      	mov	r2, r0
 464:	69bb      	ldr	r3, [r7, #24]
 466:	fbb3 f1f2 	udiv	r1, r3, r2
 46a:	fb02 f201 	mul.w	r2, r2, r1
 46e:	1a9b      	subs	r3, r3, r2
 470:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 472:	79fb      	ldrb	r3, [r7, #7]
 474:	2b09      	cmp	r3, #9
 476:	d806      	bhi.n	486 <lite_printf+0x1b0>
                        m_putchar(ch + '0');
 478:	79fb      	ldrb	r3, [r7, #7]
 47a:	3330      	adds	r3, #48	; 0x30
 47c:	b2db      	uxtb	r3, r3
 47e:	4618      	mov	r0, r3
 480:	f7ff feee 	bl	260 <m_putchar>
 484:	e005      	b.n	492 <lite_printf+0x1bc>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 486:	79fb      	ldrb	r3, [r7, #7]
 488:	3357      	adds	r3, #87	; 0x57
 48a:	b2db      	uxtb	r3, r3
 48c:	4618      	mov	r0, r3
 48e:	f7ff fee7 	bl	260 <m_putchar>
                    count--;
 492:	7dfb      	ldrb	r3, [r7, #23]
 494:	3b01      	subs	r3, #1
 496:	75fb      	strb	r3, [r7, #23]
                while (count)
 498:	7dfb      	ldrb	r3, [r7, #23]
 49a:	2b00      	cmp	r3, #0
 49c:	d1d0      	bne.n	440 <lite_printf+0x16a>
                }
                break;
 49e:	e01b      	b.n	4d8 <lite_printf+0x202>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 4a0:	683b      	ldr	r3, [r7, #0]
 4a2:	1d1a      	adds	r2, r3, #4
 4a4:	603a      	str	r2, [r7, #0]
 4a6:	681b      	ldr	r3, [r3, #0]
 4a8:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 4aa:	68f8      	ldr	r0, [r7, #12]
 4ac:	f7ff fee8 	bl	280 <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 4b0:	68f8      	ldr	r0, [r7, #12]
 4b2:	f7ff fefa 	bl	2aa <m_strlen>
 4b6:	4602      	mov	r2, r0
 4b8:	693b      	ldr	r3, [r7, #16]
 4ba:	4413      	add	r3, r2
 4bc:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 4be:	e00b      	b.n	4d8 <lite_printf+0x202>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 4c0:	683b      	ldr	r3, [r7, #0]
 4c2:	1d1a      	adds	r2, r3, #4
 4c4:	603a      	str	r2, [r7, #0]
 4c6:	681b      	ldr	r3, [r3, #0]
 4c8:	b2db      	uxtb	r3, r3
 4ca:	4618      	mov	r0, r3
 4cc:	f7ff fec8 	bl	260 <m_putchar>
                res += 1;
 4d0:	693b      	ldr	r3, [r7, #16]
 4d2:	3301      	adds	r3, #1
 4d4:	613b      	str	r3, [r7, #16]

                break;
 4d6:	bf00      	nop
            default:;
            }
            break;
 4d8:	e016      	b.n	508 <lite_printf+0x232>
        case '\n':
            m_putchar('\n');
 4da:	200a      	movs	r0, #10
 4dc:	f7ff fec0 	bl	260 <m_putchar>
            res += 1;
 4e0:	693b      	ldr	r3, [r7, #16]
 4e2:	3301      	adds	r3, #1
 4e4:	613b      	str	r3, [r7, #16]
            break;
 4e6:	e010      	b.n	50a <lite_printf+0x234>
        case '\r':
            m_putchar('\r');
 4e8:	200d      	movs	r0, #13
 4ea:	f7ff feb9 	bl	260 <m_putchar>
            res += 1;
 4ee:	693b      	ldr	r3, [r7, #16]
 4f0:	3301      	adds	r3, #1
 4f2:	613b      	str	r3, [r7, #16]
            break;
 4f4:	e009      	b.n	50a <lite_printf+0x234>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 4f6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 4f8:	781b      	ldrb	r3, [r3, #0]
 4fa:	4618      	mov	r0, r3
 4fc:	f7ff feb0 	bl	260 <m_putchar>
            res += 1;
 500:	693b      	ldr	r3, [r7, #16]
 502:	3301      	adds	r3, #1
 504:	613b      	str	r3, [r7, #16]
 506:	e000      	b.n	50a <lite_printf+0x234>
            break;
 508:	bf00      	nop
        }

        str++;
 50a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 50c:	3301      	adds	r3, #1
 50e:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 510:	6abb      	ldr	r3, [r7, #40]	; 0x28
 512:	781b      	ldrb	r3, [r3, #0]
 514:	2b00      	cmp	r3, #0
 516:	f47f aeea 	bne.w	2ee <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 51a:	693b      	ldr	r3, [r7, #16]
 51c:	4618      	mov	r0, r3
 51e:	371c      	adds	r7, #28
 520:	46bd      	mov	sp, r7
 522:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 526:	b004      	add	sp, #16
 528:	4770      	bx	lr
 52a:	bf00      	nop
 52c:	66666667 	.word	0x66666667

00000530 <test_div>:
#include "backtrace.h"
#include "hal_log.h"

int test_div(void)
{
 530:	b480      	push	{r7}
 532:	b083      	sub	sp, #12
 534:	af00      	add	r7, sp, #0
    int a = 1;
 536:	2301      	movs	r3, #1
 538:	60bb      	str	r3, [r7, #8]
    int b = 0;
 53a:	2300      	movs	r3, #0
 53c:	607b      	str	r3, [r7, #4]
    int z = a / b;
 53e:	68ba      	ldr	r2, [r7, #8]
 540:	687b      	ldr	r3, [r7, #4]
 542:	fb92 f3f3 	sdiv	r3, r2, r3
 546:	603b      	str	r3, [r7, #0]

    return z;
 548:	683b      	ldr	r3, [r7, #0]
}
 54a:	4618      	mov	r0, r3
 54c:	370c      	adds	r7, #12
 54e:	46bd      	mov	sp, r7
 550:	bc80      	pop	{r7}
 552:	4770      	bx	lr

00000554 <backtrace_test>:

void backtrace_test(void)
{
 554:	b580      	push	{r7, lr}
 556:	af00      	add	r7, sp, #0
    lite_printf("[%s] start\n");
 558:	4804      	ldr	r0, [pc, #16]	; (56c <backtrace_test+0x18>)
 55a:	f7ff febc 	bl	2d6 <lite_printf>
    test_div();
 55e:	f7ff ffe7 	bl	530 <test_div>
    lite_printf("[%s] end\n");
 562:	4803      	ldr	r0, [pc, #12]	; (570 <backtrace_test+0x1c>)
 564:	f7ff feb7 	bl	2d6 <lite_printf>
 568:	bf00      	nop
 56a:	bd80      	pop	{r7, pc}
 56c:	00000660 	.word	0x00000660
 570:	0000066c 	.word	0x0000066c

Disassembly of section .text.default_handler:

00000574 <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
 574:	e7fe      	b.n	574 <default_handler>
