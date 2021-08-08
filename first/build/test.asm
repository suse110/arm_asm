
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
  20:	00000099 000000b1 000000c9 00000564     ............d...
  30:	00000564 00000564 00000564 000000e1     d...d...d.......
  40:	000000f9 00000564 00000111 00000129     ....d.......)...

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
  58:	f000 f938 	bl	2cc <lite_printf>
    // backtrace_test();
    // hal_mpu_test();
    while(1);
  5c:	e7fe      	b.n	5c <main+0xc>
  5e:	bf00      	nop
  60:	00000584 	.word	0x00000584
  64:	00000568 	.word	0x00000568

00000068 <nmi_handler>:
}

void nmi_handler(void)
{
  68:	b580      	push	{r7, lr}
  6a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  6c:	4902      	ldr	r1, [pc, #8]	; (78 <nmi_handler+0x10>)
  6e:	4803      	ldr	r0, [pc, #12]	; (7c <nmi_handler+0x14>)
  70:	f000 f92c 	bl	2cc <lite_printf>
    while(1);
  74:	e7fe      	b.n	74 <nmi_handler+0xc>
  76:	bf00      	nop
  78:	0000058c 	.word	0x0000058c
  7c:	0000057c 	.word	0x0000057c

00000080 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
  80:	b580      	push	{r7, lr}
  82:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  84:	4902      	ldr	r1, [pc, #8]	; (90 <hard_fault_handler+0x10>)
  86:	4803      	ldr	r0, [pc, #12]	; (94 <hard_fault_handler+0x14>)
  88:	f000 f920 	bl	2cc <lite_printf>
    while(1);
  8c:	e7fe      	b.n	8c <hard_fault_handler+0xc>
  8e:	bf00      	nop
  90:	00000598 	.word	0x00000598
  94:	0000057c 	.word	0x0000057c

00000098 <mem_manage_handler>:
}

void mem_manage_handler(void)
{
  98:	b580      	push	{r7, lr}
  9a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  9c:	4902      	ldr	r1, [pc, #8]	; (a8 <mem_manage_handler+0x10>)
  9e:	4803      	ldr	r0, [pc, #12]	; (ac <mem_manage_handler+0x14>)
  a0:	f000 f914 	bl	2cc <lite_printf>
    while(1);
  a4:	e7fe      	b.n	a4 <mem_manage_handler+0xc>
  a6:	bf00      	nop
  a8:	000005ac 	.word	0x000005ac
  ac:	0000057c 	.word	0x0000057c

000000b0 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
  b0:	b580      	push	{r7, lr}
  b2:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  b4:	4902      	ldr	r1, [pc, #8]	; (c0 <bus_fault_handler+0x10>)
  b6:	4803      	ldr	r0, [pc, #12]	; (c4 <bus_fault_handler+0x14>)
  b8:	f000 f908 	bl	2cc <lite_printf>
    while(1);
  bc:	e7fe      	b.n	bc <bus_fault_handler+0xc>
  be:	bf00      	nop
  c0:	000005c0 	.word	0x000005c0
  c4:	0000057c 	.word	0x0000057c

000000c8 <usage_fault_handler>:
}

void usage_fault_handler(void)
{
  c8:	b580      	push	{r7, lr}
  ca:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  cc:	4902      	ldr	r1, [pc, #8]	; (d8 <usage_fault_handler+0x10>)
  ce:	4803      	ldr	r0, [pc, #12]	; (dc <usage_fault_handler+0x14>)
  d0:	f000 f8fc 	bl	2cc <lite_printf>
    while(1);
  d4:	e7fe      	b.n	d4 <usage_fault_handler+0xc>
  d6:	bf00      	nop
  d8:	000005d4 	.word	0x000005d4
  dc:	0000057c 	.word	0x0000057c

000000e0 <svc_handler>:
}

void svc_handler(void)
{
  e0:	b580      	push	{r7, lr}
  e2:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  e4:	4902      	ldr	r1, [pc, #8]	; (f0 <svc_handler+0x10>)
  e6:	4803      	ldr	r0, [pc, #12]	; (f4 <svc_handler+0x14>)
  e8:	f000 f8f0 	bl	2cc <lite_printf>
    while(1);
  ec:	e7fe      	b.n	ec <svc_handler+0xc>
  ee:	bf00      	nop
  f0:	000005e8 	.word	0x000005e8
  f4:	0000057c 	.word	0x0000057c

000000f8 <debug_mon_handler>:
}

void debug_mon_handler(void)
{
  f8:	b580      	push	{r7, lr}
  fa:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
  fc:	4902      	ldr	r1, [pc, #8]	; (108 <debug_mon_handler+0x10>)
  fe:	4803      	ldr	r0, [pc, #12]	; (10c <debug_mon_handler+0x14>)
 100:	f000 f8e4 	bl	2cc <lite_printf>
    while(1);
 104:	e7fe      	b.n	104 <debug_mon_handler+0xc>
 106:	bf00      	nop
 108:	000005f4 	.word	0x000005f4
 10c:	0000057c 	.word	0x0000057c

00000110 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
 110:	b580      	push	{r7, lr}
 112:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 114:	4902      	ldr	r1, [pc, #8]	; (120 <pend_sv_handler+0x10>)
 116:	4803      	ldr	r0, [pc, #12]	; (124 <pend_sv_handler+0x14>)
 118:	f000 f8d8 	bl	2cc <lite_printf>
    while(1);
 11c:	e7fe      	b.n	11c <pend_sv_handler+0xc>
 11e:	bf00      	nop
 120:	00000608 	.word	0x00000608
 124:	0000057c 	.word	0x0000057c

00000128 <sys_tick_handler>:
}

void sys_tick_handler(void)
{
 128:	b580      	push	{r7, lr}
 12a:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 12c:	4902      	ldr	r1, [pc, #8]	; (138 <sys_tick_handler+0x10>)
 12e:	4803      	ldr	r0, [pc, #12]	; (13c <sys_tick_handler+0x14>)
 130:	f000 f8cc 	bl	2cc <lite_printf>
    while(1);
 134:	e7fe      	b.n	134 <sys_tick_handler+0xc>
 136:	bf00      	nop
 138:	00000618 	.word	0x00000618
 13c:	0000057c 	.word	0x0000057c

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
  __ASM volatile ("isb 0xF":::"memory");
 14c:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
 150:	4a07      	ldr	r2, [pc, #28]	; (170 <ARM_MPU_Enable+0x30>)
 152:	683b      	ldr	r3, [r7, #0]
 154:	f043 0301 	orr.w	r3, r3, #1
 158:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
 15a:	4b06      	ldr	r3, [pc, #24]	; (174 <ARM_MPU_Enable+0x34>)
 15c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 15e:	4a05      	ldr	r2, [pc, #20]	; (174 <ARM_MPU_Enable+0x34>)
 160:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 164:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
 166:	bf00      	nop
 168:	3704      	adds	r7, #4
 16a:	46bd      	mov	sp, r7
 16c:	bc80      	pop	{r7}
 16e:	4770      	bx	lr
 170:	e000ed90 	.word	0xe000ed90
 174:	e000ed00 	.word	0xe000ed00

00000178 <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
 178:	b480      	push	{r7}
 17a:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
 17c:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
 180:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
 184:	4b07      	ldr	r3, [pc, #28]	; (1a4 <ARM_MPU_Disable+0x2c>)
 186:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 188:	4a06      	ldr	r2, [pc, #24]	; (1a4 <ARM_MPU_Disable+0x2c>)
 18a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 18e:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
 190:	4b05      	ldr	r3, [pc, #20]	; (1a8 <ARM_MPU_Disable+0x30>)
 192:	685b      	ldr	r3, [r3, #4]
 194:	4a04      	ldr	r2, [pc, #16]	; (1a8 <ARM_MPU_Disable+0x30>)
 196:	f023 0301 	bic.w	r3, r3, #1
 19a:	6053      	str	r3, [r2, #4]
}
 19c:	bf00      	nop
 19e:	46bd      	mov	sp, r7
 1a0:	bc80      	pop	{r7}
 1a2:	4770      	bx	lr
 1a4:	e000ed00 	.word	0xe000ed00
 1a8:	e000ed90 	.word	0xe000ed90

000001ac <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
 1ac:	b480      	push	{r7}
 1ae:	b082      	sub	sp, #8
 1b0:	af00      	add	r7, sp, #0
 1b2:	6078      	str	r0, [r7, #4]
 1b4:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
 1b6:	4a05      	ldr	r2, [pc, #20]	; (1cc <ARM_MPU_SetRegion+0x20>)
 1b8:	687b      	ldr	r3, [r7, #4]
 1ba:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
 1bc:	4a03      	ldr	r2, [pc, #12]	; (1cc <ARM_MPU_SetRegion+0x20>)
 1be:	683b      	ldr	r3, [r7, #0]
 1c0:	6113      	str	r3, [r2, #16]
}
 1c2:	bf00      	nop
 1c4:	3708      	adds	r7, #8
 1c6:	46bd      	mov	sp, r7
 1c8:	bc80      	pop	{r7}
 1ca:	4770      	bx	lr
 1cc:	e000ed90 	.word	0xe000ed90

000001d0 <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
 1d0:	b5b0      	push	{r4, r5, r7, lr}
 1d2:	b08a      	sub	sp, #40	; 0x28
 1d4:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
 1d6:	4b13      	ldr	r3, [pc, #76]	; (224 <hal_mpu_test+0x54>)
 1d8:	463c      	mov	r4, r7
 1da:	461d      	mov	r5, r3
 1dc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 1de:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 1e0:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 1e4:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
 1e8:	f7ff ffc6 	bl	178 <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
 1ec:	463b      	mov	r3, r7
 1ee:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 1f0:	e00d      	b.n	20e <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
 1f2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 1f4:	681a      	ldr	r2, [r3, #0]
 1f6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 1f8:	685b      	ldr	r3, [r3, #4]
 1fa:	4619      	mov	r1, r3
 1fc:	4610      	mov	r0, r2
 1fe:	f7ff ffd5 	bl	1ac <ARM_MPU_SetRegion>
        mpu_region++;
 202:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 204:	3308      	adds	r3, #8
 206:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 208:	6a3b      	ldr	r3, [r7, #32]
 20a:	3301      	adds	r3, #1
 20c:	623b      	str	r3, [r7, #32]
 20e:	6a3b      	ldr	r3, [r7, #32]
 210:	2b03      	cmp	r3, #3
 212:	d9ee      	bls.n	1f2 <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
 214:	2006      	movs	r0, #6
 216:	f7ff ff93 	bl	140 <ARM_MPU_Enable>
}
 21a:	bf00      	nop
 21c:	3728      	adds	r7, #40	; 0x28
 21e:	46bd      	mov	sp, r7
 220:	bdb0      	pop	{r4, r5, r7, pc}
 222:	bf00      	nop
 224:	0000062c 	.word	0x0000062c

00000228 <m_pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
 228:	b480      	push	{r7}
 22a:	b083      	sub	sp, #12
 22c:	af00      	add	r7, sp, #0
 22e:	6078      	str	r0, [r7, #4]
 230:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
 232:	2301      	movs	r3, #1
 234:	60bb      	str	r3, [r7, #8]
    while (y--)
 236:	e004      	b.n	242 <m_pow+0x1a>
    {
        sum *= x;
 238:	687a      	ldr	r2, [r7, #4]
 23a:	68bb      	ldr	r3, [r7, #8]
 23c:	fb02 f303 	mul.w	r3, r2, r3
 240:	60bb      	str	r3, [r7, #8]
    while (y--)
 242:	683b      	ldr	r3, [r7, #0]
 244:	1e5a      	subs	r2, r3, #1
 246:	603a      	str	r2, [r7, #0]
 248:	2b00      	cmp	r3, #0
 24a:	d1f5      	bne.n	238 <m_pow+0x10>
    }
    return sum;
 24c:	68bb      	ldr	r3, [r7, #8]
}
 24e:	4618      	mov	r0, r3
 250:	370c      	adds	r7, #12
 252:	46bd      	mov	sp, r7
 254:	bc80      	pop	{r7}
 256:	4770      	bx	lr

00000258 <m_putchar>:
void m_putchar(const char ch)
{
 258:	b480      	push	{r7}
 25a:	b081      	sub	sp, #4
 25c:	af00      	add	r7, sp, #0
 25e:	4603      	mov	r3, r0
 260:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
 262:	4a04      	ldr	r2, [pc, #16]	; (274 <m_putchar+0x1c>)
 264:	783b      	ldrb	r3, [r7, #0]
 266:	6013      	str	r3, [r2, #0]
}
 268:	bf00      	nop
 26a:	3704      	adds	r7, #4
 26c:	46bd      	mov	sp, r7
 26e:	bc80      	pop	{r7}
 270:	4770      	bx	lr
 272:	bf00      	nop
 274:	4000c000 	.word	0x4000c000

00000278 <m_putstr>:
void m_putstr(const char *str)
{
 278:	b580      	push	{r7, lr}
 27a:	b081      	sub	sp, #4
 27c:	af00      	add	r7, sp, #0
 27e:	6038      	str	r0, [r7, #0]
    while (*str)
 280:	e006      	b.n	290 <m_putstr+0x18>
    {
        m_putchar(*str++);
 282:	683b      	ldr	r3, [r7, #0]
 284:	1c5a      	adds	r2, r3, #1
 286:	603a      	str	r2, [r7, #0]
 288:	781b      	ldrb	r3, [r3, #0]
 28a:	4618      	mov	r0, r3
 28c:	f7ff ffe4 	bl	258 <m_putchar>
    while (*str)
 290:	683b      	ldr	r3, [r7, #0]
 292:	781b      	ldrb	r3, [r3, #0]
 294:	2b00      	cmp	r3, #0
 296:	d1f4      	bne.n	282 <m_putstr+0xa>
    }
}
 298:	bf00      	nop
 29a:	3704      	adds	r7, #4
 29c:	46bd      	mov	sp, r7
 29e:	bd80      	pop	{r7, pc}

000002a0 <m_strlen>:
uint32_t m_strlen (const char *__s)
{
 2a0:	b480      	push	{r7}
 2a2:	b082      	sub	sp, #8
 2a4:	af00      	add	r7, sp, #0
 2a6:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
 2a8:	2300      	movs	r3, #0
 2aa:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
 2ac:	e002      	b.n	2b4 <m_strlen+0x14>
 2ae:	687b      	ldr	r3, [r7, #4]
 2b0:	3301      	adds	r3, #1
 2b2:	607b      	str	r3, [r7, #4]
 2b4:	683b      	ldr	r3, [r7, #0]
 2b6:	1c5a      	adds	r2, r3, #1
 2b8:	603a      	str	r2, [r7, #0]
 2ba:	781b      	ldrb	r3, [r3, #0]
 2bc:	2b00      	cmp	r3, #0
 2be:	d1f6      	bne.n	2ae <m_strlen+0xe>
    return i;
 2c0:	687b      	ldr	r3, [r7, #4]
}
 2c2:	4618      	mov	r0, r3
 2c4:	3708      	adds	r7, #8
 2c6:	46bd      	mov	sp, r7
 2c8:	bc80      	pop	{r7}
 2ca:	4770      	bx	lr

000002cc <lite_printf>:
int lite_printf(const char *str, ...)
{
 2cc:	b40f      	push	{r0, r1, r2, r3}
 2ce:	b590      	push	{r4, r7, lr}
 2d0:	b087      	sub	sp, #28
 2d2:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
 2d4:	2300      	movs	r3, #0
 2d6:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 2d8:	2300      	movs	r3, #0
 2da:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 2dc:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 2e0:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 2e2:	e10d      	b.n	500 <lite_printf+0x234>
    {
        switch (*str)
 2e4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 2e6:	781b      	ldrb	r3, [r3, #0]
 2e8:	2b0d      	cmp	r3, #13
 2ea:	f000 80f5 	beq.w	4d8 <lite_printf+0x20c>
 2ee:	2b25      	cmp	r3, #37	; 0x25
 2f0:	d003      	beq.n	2fa <lite_printf+0x2e>
 2f2:	2b0a      	cmp	r3, #10
 2f4:	f000 80e9 	beq.w	4ca <lite_printf+0x1fe>
 2f8:	e0f5      	b.n	4e6 <lite_printf+0x21a>
        {
        case '%': //发送参数
            str++;
 2fa:	6abb      	ldr	r3, [r7, #40]	; 0x28
 2fc:	3301      	adds	r3, #1
 2fe:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 300:	6abb      	ldr	r3, [r7, #40]	; 0x28
 302:	781b      	ldrb	r3, [r3, #0]
 304:	3b63      	subs	r3, #99	; 0x63
 306:	2b15      	cmp	r3, #21
 308:	f200 80f6 	bhi.w	4f8 <lite_printf+0x22c>
 30c:	a201      	add	r2, pc, #4	; (adr r2, 314 <lite_printf+0x48>)
 30e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 312:	bf00      	nop
 314:	000004b1 	.word	0x000004b1
 318:	0000036d 	.word	0x0000036d
 31c:	000004f9 	.word	0x000004f9
 320:	000004f9 	.word	0x000004f9
 324:	000004f9 	.word	0x000004f9
 328:	000004f9 	.word	0x000004f9
 32c:	000004f9 	.word	0x000004f9
 330:	000004f9 	.word	0x000004f9
 334:	000004f9 	.word	0x000004f9
 338:	000004f9 	.word	0x000004f9
 33c:	000004f9 	.word	0x000004f9
 340:	000004f9 	.word	0x000004f9
 344:	000004f9 	.word	0x000004f9
 348:	000004f9 	.word	0x000004f9
 34c:	000004f9 	.word	0x000004f9
 350:	000004f9 	.word	0x000004f9
 354:	00000491 	.word	0x00000491
 358:	000004f9 	.word	0x000004f9
 35c:	000004f9 	.word	0x000004f9
 360:	000004f9 	.word	0x000004f9
 364:	000004f9 	.word	0x000004f9
 368:	000003f7 	.word	0x000003f7
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
 36c:	683b      	ldr	r3, [r7, #0]
 36e:	1d1a      	adds	r2, r3, #4
 370:	603a      	str	r2, [r7, #0]
 372:	681b      	ldr	r3, [r3, #0]
 374:	60bb      	str	r3, [r7, #8]
                r_val = val;
 376:	68bb      	ldr	r3, [r7, #8]
 378:	61bb      	str	r3, [r7, #24]
                count = 0;
 37a:	2300      	movs	r3, #0
 37c:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 37e:	e00a      	b.n	396 <lite_printf+0xca>

                {
                    count++; //整数的长度
 380:	7dfb      	ldrb	r3, [r7, #23]
 382:	3301      	adds	r3, #1
 384:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 386:	69bb      	ldr	r3, [r7, #24]
 388:	4a64      	ldr	r2, [pc, #400]	; (51c <lite_printf+0x250>)
 38a:	fb82 1203 	smull	r1, r2, r2, r3
 38e:	1092      	asrs	r2, r2, #2
 390:	17db      	asrs	r3, r3, #31
 392:	1ad3      	subs	r3, r2, r3
 394:	61bb      	str	r3, [r7, #24]
                while (r_val)
 396:	69bb      	ldr	r3, [r7, #24]
 398:	2b00      	cmp	r3, #0
 39a:	d1f1      	bne.n	380 <lite_printf+0xb4>
                }

                res += count;
 39c:	7dfb      	ldrb	r3, [r7, #23]
 39e:	693a      	ldr	r2, [r7, #16]
 3a0:	4413      	add	r3, r2
 3a2:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 3a4:	68bb      	ldr	r3, [r7, #8]
 3a6:	61bb      	str	r3, [r7, #24]
                while (count)
 3a8:	e021      	b.n	3ee <lite_printf+0x122>
                {
                    ch = r_val / m_pow(10, count - 1);
 3aa:	69bc      	ldr	r4, [r7, #24]
 3ac:	7dfb      	ldrb	r3, [r7, #23]
 3ae:	3b01      	subs	r3, #1
 3b0:	4619      	mov	r1, r3
 3b2:	200a      	movs	r0, #10
 3b4:	f7ff ff38 	bl	228 <m_pow>
 3b8:	4603      	mov	r3, r0
 3ba:	fbb4 f3f3 	udiv	r3, r4, r3
 3be:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 3c0:	7dfb      	ldrb	r3, [r7, #23]
 3c2:	3b01      	subs	r3, #1
 3c4:	4619      	mov	r1, r3
 3c6:	200a      	movs	r0, #10
 3c8:	f7ff ff2e 	bl	228 <m_pow>
 3cc:	4602      	mov	r2, r0
 3ce:	69bb      	ldr	r3, [r7, #24]
 3d0:	fbb3 f1f2 	udiv	r1, r3, r2
 3d4:	fb02 f201 	mul.w	r2, r2, r1
 3d8:	1a9b      	subs	r3, r3, r2
 3da:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 3dc:	79fb      	ldrb	r3, [r7, #7]
 3de:	3330      	adds	r3, #48	; 0x30
 3e0:	b2db      	uxtb	r3, r3
 3e2:	4618      	mov	r0, r3
 3e4:	f7ff ff38 	bl	258 <m_putchar>
                    //数字到字符的转换
                    count--;
 3e8:	7dfb      	ldrb	r3, [r7, #23]
 3ea:	3b01      	subs	r3, #1
 3ec:	75fb      	strb	r3, [r7, #23]
                while (count)
 3ee:	7dfb      	ldrb	r3, [r7, #23]
 3f0:	2b00      	cmp	r3, #0
 3f2:	d1da      	bne.n	3aa <lite_printf+0xde>
                }
                break;
 3f4:	e068      	b.n	4c8 <lite_printf+0x1fc>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 3f6:	683b      	ldr	r3, [r7, #0]
 3f8:	1d1a      	adds	r2, r3, #4
 3fa:	603a      	str	r2, [r7, #0]
 3fc:	681b      	ldr	r3, [r3, #0]
 3fe:	60bb      	str	r3, [r7, #8]
                r_val = val;
 400:	68bb      	ldr	r3, [r7, #8]
 402:	61bb      	str	r3, [r7, #24]
                count = 0;
 404:	2300      	movs	r3, #0
 406:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 408:	e008      	b.n	41c <lite_printf+0x150>

                {
                    count++; //整数的长度
 40a:	7dfb      	ldrb	r3, [r7, #23]
 40c:	3301      	adds	r3, #1
 40e:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 410:	69bb      	ldr	r3, [r7, #24]
 412:	2b00      	cmp	r3, #0
 414:	da00      	bge.n	418 <lite_printf+0x14c>
 416:	330f      	adds	r3, #15
 418:	111b      	asrs	r3, r3, #4
 41a:	61bb      	str	r3, [r7, #24]
                while (r_val)
 41c:	69bb      	ldr	r3, [r7, #24]
 41e:	2b00      	cmp	r3, #0
 420:	d1f3      	bne.n	40a <lite_printf+0x13e>
                }

                res += count;
 422:	7dfb      	ldrb	r3, [r7, #23]
 424:	693a      	ldr	r2, [r7, #16]
 426:	4413      	add	r3, r2
 428:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 42a:	68bb      	ldr	r3, [r7, #8]
 42c:	61bb      	str	r3, [r7, #24]
                while (count)
 42e:	e02b      	b.n	488 <lite_printf+0x1bc>
                {
                    ch = r_val / m_pow(16, count - 1);
 430:	69bc      	ldr	r4, [r7, #24]
 432:	7dfb      	ldrb	r3, [r7, #23]
 434:	3b01      	subs	r3, #1
 436:	4619      	mov	r1, r3
 438:	2010      	movs	r0, #16
 43a:	f7ff fef5 	bl	228 <m_pow>
 43e:	4603      	mov	r3, r0
 440:	fbb4 f3f3 	udiv	r3, r4, r3
 444:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 446:	7dfb      	ldrb	r3, [r7, #23]
 448:	3b01      	subs	r3, #1
 44a:	4619      	mov	r1, r3
 44c:	2010      	movs	r0, #16
 44e:	f7ff feeb 	bl	228 <m_pow>
 452:	4602      	mov	r2, r0
 454:	69bb      	ldr	r3, [r7, #24]
 456:	fbb3 f1f2 	udiv	r1, r3, r2
 45a:	fb02 f201 	mul.w	r2, r2, r1
 45e:	1a9b      	subs	r3, r3, r2
 460:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 462:	79fb      	ldrb	r3, [r7, #7]
 464:	2b09      	cmp	r3, #9
 466:	d806      	bhi.n	476 <lite_printf+0x1aa>
                        m_putchar(ch + '0');
 468:	79fb      	ldrb	r3, [r7, #7]
 46a:	3330      	adds	r3, #48	; 0x30
 46c:	b2db      	uxtb	r3, r3
 46e:	4618      	mov	r0, r3
 470:	f7ff fef2 	bl	258 <m_putchar>
 474:	e005      	b.n	482 <lite_printf+0x1b6>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 476:	79fb      	ldrb	r3, [r7, #7]
 478:	3357      	adds	r3, #87	; 0x57
 47a:	b2db      	uxtb	r3, r3
 47c:	4618      	mov	r0, r3
 47e:	f7ff feeb 	bl	258 <m_putchar>
                    count--;
 482:	7dfb      	ldrb	r3, [r7, #23]
 484:	3b01      	subs	r3, #1
 486:	75fb      	strb	r3, [r7, #23]
                while (count)
 488:	7dfb      	ldrb	r3, [r7, #23]
 48a:	2b00      	cmp	r3, #0
 48c:	d1d0      	bne.n	430 <lite_printf+0x164>
                }
                break;
 48e:	e01b      	b.n	4c8 <lite_printf+0x1fc>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 490:	683b      	ldr	r3, [r7, #0]
 492:	1d1a      	adds	r2, r3, #4
 494:	603a      	str	r2, [r7, #0]
 496:	681b      	ldr	r3, [r3, #0]
 498:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 49a:	68f8      	ldr	r0, [r7, #12]
 49c:	f7ff feec 	bl	278 <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 4a0:	68f8      	ldr	r0, [r7, #12]
 4a2:	f7ff fefd 	bl	2a0 <m_strlen>
 4a6:	4602      	mov	r2, r0
 4a8:	693b      	ldr	r3, [r7, #16]
 4aa:	4413      	add	r3, r2
 4ac:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 4ae:	e00b      	b.n	4c8 <lite_printf+0x1fc>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 4b0:	683b      	ldr	r3, [r7, #0]
 4b2:	1d1a      	adds	r2, r3, #4
 4b4:	603a      	str	r2, [r7, #0]
 4b6:	681b      	ldr	r3, [r3, #0]
 4b8:	b2db      	uxtb	r3, r3
 4ba:	4618      	mov	r0, r3
 4bc:	f7ff fecc 	bl	258 <m_putchar>
                res += 1;
 4c0:	693b      	ldr	r3, [r7, #16]
 4c2:	3301      	adds	r3, #1
 4c4:	613b      	str	r3, [r7, #16]

                break;
 4c6:	bf00      	nop
            default:;
            }
            break;
 4c8:	e016      	b.n	4f8 <lite_printf+0x22c>
        case '\n':
            m_putchar('\n');
 4ca:	200a      	movs	r0, #10
 4cc:	f7ff fec4 	bl	258 <m_putchar>
            res += 1;
 4d0:	693b      	ldr	r3, [r7, #16]
 4d2:	3301      	adds	r3, #1
 4d4:	613b      	str	r3, [r7, #16]
            break;
 4d6:	e010      	b.n	4fa <lite_printf+0x22e>
        case '\r':
            m_putchar('\r');
 4d8:	200d      	movs	r0, #13
 4da:	f7ff febd 	bl	258 <m_putchar>
            res += 1;
 4de:	693b      	ldr	r3, [r7, #16]
 4e0:	3301      	adds	r3, #1
 4e2:	613b      	str	r3, [r7, #16]
            break;
 4e4:	e009      	b.n	4fa <lite_printf+0x22e>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 4e6:	6abb      	ldr	r3, [r7, #40]	; 0x28
 4e8:	781b      	ldrb	r3, [r3, #0]
 4ea:	4618      	mov	r0, r3
 4ec:	f7ff feb4 	bl	258 <m_putchar>
            res += 1;
 4f0:	693b      	ldr	r3, [r7, #16]
 4f2:	3301      	adds	r3, #1
 4f4:	613b      	str	r3, [r7, #16]
 4f6:	e000      	b.n	4fa <lite_printf+0x22e>
            break;
 4f8:	bf00      	nop
        }

        str++;
 4fa:	6abb      	ldr	r3, [r7, #40]	; 0x28
 4fc:	3301      	adds	r3, #1
 4fe:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 500:	6abb      	ldr	r3, [r7, #40]	; 0x28
 502:	781b      	ldrb	r3, [r3, #0]
 504:	2b00      	cmp	r3, #0
 506:	f47f aeed 	bne.w	2e4 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 50a:	693b      	ldr	r3, [r7, #16]
 50c:	4618      	mov	r0, r3
 50e:	371c      	adds	r7, #28
 510:	46bd      	mov	sp, r7
 512:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 516:	b004      	add	sp, #16
 518:	4770      	bx	lr
 51a:	bf00      	nop
 51c:	66666667 	.word	0x66666667

00000520 <test_div>:
#include "backtrace.h"
#include "hal_log.h"

int test_div(void)
{
 520:	b480      	push	{r7}
 522:	b083      	sub	sp, #12
 524:	af00      	add	r7, sp, #0
    int a = 1;
 526:	2301      	movs	r3, #1
 528:	60bb      	str	r3, [r7, #8]
    int b = 0;
 52a:	2300      	movs	r3, #0
 52c:	607b      	str	r3, [r7, #4]
    int z = a / b;
 52e:	68ba      	ldr	r2, [r7, #8]
 530:	687b      	ldr	r3, [r7, #4]
 532:	fb92 f3f3 	sdiv	r3, r2, r3
 536:	603b      	str	r3, [r7, #0]

    return z;
 538:	683b      	ldr	r3, [r7, #0]
}
 53a:	4618      	mov	r0, r3
 53c:	370c      	adds	r7, #12
 53e:	46bd      	mov	sp, r7
 540:	bc80      	pop	{r7}
 542:	4770      	bx	lr

00000544 <backtrace_test>:

void backtrace_test(void)
{
 544:	b580      	push	{r7, lr}
 546:	af00      	add	r7, sp, #0
    lite_printf("[%s] start\n");
 548:	4804      	ldr	r0, [pc, #16]	; (55c <backtrace_test+0x18>)
 54a:	f7ff febf 	bl	2cc <lite_printf>
    test_div();
 54e:	f7ff ffe7 	bl	520 <test_div>
    lite_printf("[%s] end\n");
 552:	4803      	ldr	r0, [pc, #12]	; (560 <backtrace_test+0x1c>)
 554:	f7ff feba 	bl	2cc <lite_printf>
 558:	bf00      	nop
 55a:	bd80      	pop	{r7, pc}
 55c:	00000650 	.word	0x00000650
 560:	0000065c 	.word	0x0000065c

Disassembly of section .text.default_handler:

00000564 <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
 564:	e7fe      	b.n	564 <default_handler>
