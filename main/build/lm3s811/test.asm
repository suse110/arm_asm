
J:/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/lm3s811/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <Reset_Handler>:
.weak  Reset_Handler
.type  Reset_Handler, %function
Reset_Handler:

# bl mmu_setting_1
ldr sp, =_estack
       0:	f8df d004 	ldr.w	sp, [pc, #4]	; 8 <Reset_Handler+0x8>
ldr r1, =main
       4:	4901      	ldr	r1, [pc, #4]	; (c <Reset_Handler+0xc>)
bx r1
       6:	4708      	bx	r1
ldr sp, =_estack
       8:	20001910 	.word	0x20001910
ldr r1, =main
       c:	00000051 	.word	0x00000051

00000010 <g_pfnVectors>:
      10:	20001910 00000001 000033c1 000033c1     ... .....3...3..
      20:	000033c1 000033c1 000033c1 000033c0     .3...3...3...3..
      30:	000033c0 000033c0 000033c0 000033c1     .3...3...3...3..
      40:	000033c1 000033c0 000033c1 000033c1     .3...3...3...3..

00000050 <main>:
#include "hal.h"
#include "shell.h"


void main(void)
{
      50:	b580      	push	{r7, lr}
      52:	af00      	add	r7, sp, #0

    printf("[%s] hello world\n", __func__);
      54:	4903      	ldr	r1, [pc, #12]	; (64 <main+0x14>)
      56:	4804      	ldr	r0, [pc, #16]	; (68 <main+0x18>)
      58:	f001 f8bd 	bl	11d6 <printf_>
    // shell_start();
    backtrace_test();
      5c:	f001 fe90 	bl	1d80 <backtrace_test>
    // hal_mpu_test();
    while(1);
      60:	e7fe      	b.n	60 <main+0x10>
      62:	bf00      	nop
      64:	00002518 	.word	0x00002518
      68:	000024fc 	.word	0x000024fc

0000006c <nmi_handler>:
}

void nmi_handler(void)
{
      6c:	b580      	push	{r7, lr}
      6e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      70:	4902      	ldr	r1, [pc, #8]	; (7c <nmi_handler+0x10>)
      72:	4803      	ldr	r0, [pc, #12]	; (80 <nmi_handler+0x14>)
      74:	f001 f8af 	bl	11d6 <printf_>
    while(1);
      78:	e7fe      	b.n	78 <nmi_handler+0xc>
      7a:	bf00      	nop
      7c:	00002520 	.word	0x00002520
      80:	00002510 	.word	0x00002510

00000084 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
      84:	b580      	push	{r7, lr}
      86:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      88:	4902      	ldr	r1, [pc, #8]	; (94 <hard_fault_handler+0x10>)
      8a:	4803      	ldr	r0, [pc, #12]	; (98 <hard_fault_handler+0x14>)
      8c:	f001 f8a3 	bl	11d6 <printf_>
    while(1);
      90:	e7fe      	b.n	90 <hard_fault_handler+0xc>
      92:	bf00      	nop
      94:	0000252c 	.word	0x0000252c
      98:	00002510 	.word	0x00002510

0000009c <mem_manage_handler>:
}

void mem_manage_handler(void)
{
      9c:	b580      	push	{r7, lr}
      9e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      a0:	4902      	ldr	r1, [pc, #8]	; (ac <mem_manage_handler+0x10>)
      a2:	4803      	ldr	r0, [pc, #12]	; (b0 <mem_manage_handler+0x14>)
      a4:	f001 f897 	bl	11d6 <printf_>
    while(1);
      a8:	e7fe      	b.n	a8 <mem_manage_handler+0xc>
      aa:	bf00      	nop
      ac:	00002540 	.word	0x00002540
      b0:	00002510 	.word	0x00002510

000000b4 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
      b4:	b580      	push	{r7, lr}
      b6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      b8:	4902      	ldr	r1, [pc, #8]	; (c4 <bus_fault_handler+0x10>)
      ba:	4803      	ldr	r0, [pc, #12]	; (c8 <bus_fault_handler+0x14>)
      bc:	f001 f88b 	bl	11d6 <printf_>
    while(1);
      c0:	e7fe      	b.n	c0 <bus_fault_handler+0xc>
      c2:	bf00      	nop
      c4:	00002554 	.word	0x00002554
      c8:	00002510 	.word	0x00002510

000000cc <usage_fault_handler>:
}

void usage_fault_handler(void)
{
      cc:	b580      	push	{r7, lr}
      ce:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      d0:	4902      	ldr	r1, [pc, #8]	; (dc <usage_fault_handler+0x10>)
      d2:	4803      	ldr	r0, [pc, #12]	; (e0 <usage_fault_handler+0x14>)
      d4:	f001 f87f 	bl	11d6 <printf_>
    while(1);
      d8:	e7fe      	b.n	d8 <usage_fault_handler+0xc>
      da:	bf00      	nop
      dc:	00002568 	.word	0x00002568
      e0:	00002510 	.word	0x00002510

000000e4 <svc_handler>:
}

void svc_handler(void)
{
      e4:	b580      	push	{r7, lr}
      e6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      e8:	4902      	ldr	r1, [pc, #8]	; (f4 <svc_handler+0x10>)
      ea:	4803      	ldr	r0, [pc, #12]	; (f8 <svc_handler+0x14>)
      ec:	f001 f873 	bl	11d6 <printf_>
    while(1);
      f0:	e7fe      	b.n	f0 <svc_handler+0xc>
      f2:	bf00      	nop
      f4:	0000257c 	.word	0x0000257c
      f8:	00002510 	.word	0x00002510

000000fc <debug_mon_handler>:
}

void debug_mon_handler(void)
{
      fc:	b580      	push	{r7, lr}
      fe:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     100:	4902      	ldr	r1, [pc, #8]	; (10c <debug_mon_handler+0x10>)
     102:	4803      	ldr	r0, [pc, #12]	; (110 <debug_mon_handler+0x14>)
     104:	f001 f867 	bl	11d6 <printf_>
    while(1);
     108:	e7fe      	b.n	108 <debug_mon_handler+0xc>
     10a:	bf00      	nop
     10c:	00002588 	.word	0x00002588
     110:	00002510 	.word	0x00002510

00000114 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     114:	b580      	push	{r7, lr}
     116:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     118:	4902      	ldr	r1, [pc, #8]	; (124 <pend_sv_handler+0x10>)
     11a:	4803      	ldr	r0, [pc, #12]	; (128 <pend_sv_handler+0x14>)
     11c:	f001 f85b 	bl	11d6 <printf_>
    while(1);
     120:	e7fe      	b.n	120 <pend_sv_handler+0xc>
     122:	bf00      	nop
     124:	0000259c 	.word	0x0000259c
     128:	00002510 	.word	0x00002510

0000012c <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     12c:	b580      	push	{r7, lr}
     12e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     130:	4902      	ldr	r1, [pc, #8]	; (13c <sys_tick_handler+0x10>)
     132:	4803      	ldr	r0, [pc, #12]	; (140 <sys_tick_handler+0x14>)
     134:	f001 f84f 	bl	11d6 <printf_>
    while(1);
     138:	e7fe      	b.n	138 <sys_tick_handler+0xc>
     13a:	bf00      	nop
     13c:	000025ac 	.word	0x000025ac
     140:	00002510 	.word	0x00002510

00000144 <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
     144:	b480      	push	{r7}
     146:	b083      	sub	sp, #12
     148:	af00      	add	r7, sp, #0
     14a:	6078      	str	r0, [r7, #4]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
     14c:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
     150:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
     154:	4a07      	ldr	r2, [pc, #28]	; (174 <ARM_MPU_Enable+0x30>)
     156:	687b      	ldr	r3, [r7, #4]
     158:	f043 0301 	orr.w	r3, r3, #1
     15c:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
     15e:	4b06      	ldr	r3, [pc, #24]	; (178 <ARM_MPU_Enable+0x34>)
     160:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     162:	4a05      	ldr	r2, [pc, #20]	; (178 <ARM_MPU_Enable+0x34>)
     164:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
     168:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
     16a:	bf00      	nop
     16c:	370c      	adds	r7, #12
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
  __ASM volatile ("isb 0xF":::"memory");
     184:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
     188:	4b07      	ldr	r3, [pc, #28]	; (1a8 <ARM_MPU_Disable+0x2c>)
     18a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     18c:	4a06      	ldr	r2, [pc, #24]	; (1a8 <ARM_MPU_Disable+0x2c>)
     18e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
     192:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
     194:	4b05      	ldr	r3, [pc, #20]	; (1ac <ARM_MPU_Disable+0x30>)
     196:	685b      	ldr	r3, [r3, #4]
     198:	4a04      	ldr	r2, [pc, #16]	; (1ac <ARM_MPU_Disable+0x30>)
     19a:	f023 0301 	bic.w	r3, r3, #1
     19e:	6053      	str	r3, [r2, #4]
}
     1a0:	bf00      	nop
     1a2:	46bd      	mov	sp, r7
     1a4:	bc80      	pop	{r7}
     1a6:	4770      	bx	lr
     1a8:	e000ed00 	.word	0xe000ed00
     1ac:	e000ed90 	.word	0xe000ed90

000001b0 <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
     1b0:	b480      	push	{r7}
     1b2:	b083      	sub	sp, #12
     1b4:	af00      	add	r7, sp, #0
     1b6:	6078      	str	r0, [r7, #4]
     1b8:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
     1ba:	4a05      	ldr	r2, [pc, #20]	; (1d0 <ARM_MPU_SetRegion+0x20>)
     1bc:	687b      	ldr	r3, [r7, #4]
     1be:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
     1c0:	4a03      	ldr	r2, [pc, #12]	; (1d0 <ARM_MPU_SetRegion+0x20>)
     1c2:	683b      	ldr	r3, [r7, #0]
     1c4:	6113      	str	r3, [r2, #16]
}
     1c6:	bf00      	nop
     1c8:	370c      	adds	r7, #12
     1ca:	46bd      	mov	sp, r7
     1cc:	bc80      	pop	{r7}
     1ce:	4770      	bx	lr
     1d0:	e000ed90 	.word	0xe000ed90

000001d4 <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
     1d4:	b5b0      	push	{r4, r5, r7, lr}
     1d6:	b08a      	sub	sp, #40	; 0x28
     1d8:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
     1da:	4b13      	ldr	r3, [pc, #76]	; (228 <hal_mpu_test+0x54>)
     1dc:	463c      	mov	r4, r7
     1de:	461d      	mov	r5, r3
     1e0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
     1e2:	c40f      	stmia	r4!, {r0, r1, r2, r3}
     1e4:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
     1e8:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
     1ec:	f7ff ffc6 	bl	17c <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
     1f0:	463b      	mov	r3, r7
     1f2:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     1f4:	e00d      	b.n	212 <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
     1f6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     1f8:	681a      	ldr	r2, [r3, #0]
     1fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     1fc:	685b      	ldr	r3, [r3, #4]
     1fe:	4619      	mov	r1, r3
     200:	4610      	mov	r0, r2
     202:	f7ff ffd5 	bl	1b0 <ARM_MPU_SetRegion>
        mpu_region++;
     206:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     208:	3308      	adds	r3, #8
     20a:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     20c:	6a3b      	ldr	r3, [r7, #32]
     20e:	3301      	adds	r3, #1
     210:	623b      	str	r3, [r7, #32]
     212:	6a3b      	ldr	r3, [r7, #32]
     214:	2b03      	cmp	r3, #3
     216:	d9ee      	bls.n	1f6 <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
     218:	2006      	movs	r0, #6
     21a:	f7ff ff93 	bl	144 <ARM_MPU_Enable>
}
     21e:	bf00      	nop
     220:	3728      	adds	r7, #40	; 0x28
     222:	46bd      	mov	sp, r7
     224:	bdb0      	pop	{r4, r5, r7, pc}
     226:	bf00      	nop
     228:	000025c0 	.word	0x000025c0

0000022c <_putchar>:

#ifdef QEMU_DEBUG_ENABLE 
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

void _putchar(const char ch)
{
     22c:	b480      	push	{r7}
     22e:	b083      	sub	sp, #12
     230:	af00      	add	r7, sp, #0
     232:	4603      	mov	r3, r0
     234:	71fb      	strb	r3, [r7, #7]
    *UART_DR = ch;
     236:	4a04      	ldr	r2, [pc, #16]	; (248 <_putchar+0x1c>)
     238:	79fb      	ldrb	r3, [r7, #7]
     23a:	6013      	str	r3, [r2, #0]
}
     23c:	bf00      	nop
     23e:	370c      	adds	r7, #12
     240:	46bd      	mov	sp, r7
     242:	bc80      	pop	{r7}
     244:	4770      	bx	lr
     246:	bf00      	nop
     248:	4000c000 	.word	0x4000c000

0000024c <_getchar>:

char _getchar(void)
{
     24c:	b480      	push	{r7}
     24e:	af00      	add	r7, sp, #0
    return(char)*UART_DR;
     250:	4b03      	ldr	r3, [pc, #12]	; (260 <_getchar+0x14>)
     252:	681b      	ldr	r3, [r3, #0]
     254:	b2db      	uxtb	r3, r3
}
     256:	4618      	mov	r0, r3
     258:	46bd      	mov	sp, r7
     25a:	bc80      	pop	{r7}
     25c:	4770      	bx	lr
     25e:	bf00      	nop
     260:	4000c000 	.word	0x4000c000

00000264 <__io_putchar>:

int __io_putchar(int ch)
{
     264:	b580      	push	{r7, lr}
     266:	b082      	sub	sp, #8
     268:	af00      	add	r7, sp, #0
     26a:	6078      	str	r0, [r7, #4]
    _putchar(ch);
     26c:	687b      	ldr	r3, [r7, #4]
     26e:	b2db      	uxtb	r3, r3
     270:	4618      	mov	r0, r3
     272:	f7ff ffdb 	bl	22c <_putchar>
    return 0;
     276:	2300      	movs	r3, #0
}
     278:	4618      	mov	r0, r3
     27a:	3708      	adds	r7, #8
     27c:	46bd      	mov	sp, r7
     27e:	bd80      	pop	{r7, pc}

00000280 <__io_getchar>:

int __io_getchar(void)
{
     280:	b580      	push	{r7, lr}
     282:	af00      	add	r7, sp, #0
    return (int)_getchar();
     284:	f7ff ffe2 	bl	24c <_getchar>
     288:	4603      	mov	r3, r0
}
     28a:	4618      	mov	r0, r3
     28c:	bd80      	pop	{r7, pc}

0000028e <lite_getchar>:
{
    return(char)__io_getchar();
}
#endif
void lite_getchar(char *chr)
{
     28e:	b580      	push	{r7, lr}
     290:	b082      	sub	sp, #8
     292:	af00      	add	r7, sp, #0
     294:	6078      	str	r0, [r7, #4]
    do {
        *chr = _getchar();
     296:	f7ff ffd9 	bl	24c <_getchar>
     29a:	4603      	mov	r3, r0
     29c:	461a      	mov	r2, r3
     29e:	687b      	ldr	r3, [r7, #4]
     2a0:	701a      	strb	r2, [r3, #0]
    } while (*chr == 0);
     2a2:	687b      	ldr	r3, [r7, #4]
     2a4:	781b      	ldrb	r3, [r3, #0]
     2a6:	2b00      	cmp	r3, #0
     2a8:	d0f5      	beq.n	296 <lite_getchar+0x8>
}
     2aa:	bf00      	nop
     2ac:	3708      	adds	r7, #8
     2ae:	46bd      	mov	sp, r7
     2b0:	bd80      	pop	{r7, pc}

000002b2 <lite_putchar>:
void lite_putchar(char character)
{
     2b2:	b580      	push	{r7, lr}
     2b4:	b082      	sub	sp, #8
     2b6:	af00      	add	r7, sp, #0
     2b8:	4603      	mov	r3, r0
     2ba:	71fb      	strb	r3, [r7, #7]
    _putchar(character);
     2bc:	79fb      	ldrb	r3, [r7, #7]
     2be:	4618      	mov	r0, r3
     2c0:	f7ff ffb4 	bl	22c <_putchar>
}
     2c4:	bf00      	nop
     2c6:	3708      	adds	r7, #8
     2c8:	46bd      	mov	sp, r7
     2ca:	bd80      	pop	{r7, pc}

000002cc <_putstr>:

void _putstr(const char *str)
{
     2cc:	b580      	push	{r7, lr}
     2ce:	b082      	sub	sp, #8
     2d0:	af00      	add	r7, sp, #0
     2d2:	6078      	str	r0, [r7, #4]
    while (*str) {
     2d4:	e006      	b.n	2e4 <_putstr+0x18>
        _putchar(*str++);
     2d6:	687b      	ldr	r3, [r7, #4]
     2d8:	1c5a      	adds	r2, r3, #1
     2da:	607a      	str	r2, [r7, #4]
     2dc:	781b      	ldrb	r3, [r3, #0]
     2de:	4618      	mov	r0, r3
     2e0:	f7ff ffa4 	bl	22c <_putchar>
    while (*str) {
     2e4:	687b      	ldr	r3, [r7, #4]
     2e6:	781b      	ldrb	r3, [r3, #0]
     2e8:	2b00      	cmp	r3, #0
     2ea:	d1f4      	bne.n	2d6 <_putstr+0xa>
    }
}
     2ec:	bf00      	nop
     2ee:	3708      	adds	r7, #8
     2f0:	46bd      	mov	sp, r7
     2f2:	bd80      	pop	{r7, pc}

000002f4 <_strlen>:

uint32_t _strlen (const char *_s)
{
     2f4:	b480      	push	{r7}
     2f6:	b085      	sub	sp, #20
     2f8:	af00      	add	r7, sp, #0
     2fa:	6078      	str	r0, [r7, #4]
    uint32_t i = 0;
     2fc:	2300      	movs	r3, #0
     2fe:	60fb      	str	r3, [r7, #12]
    while(*_s++ != '\0') i++;
     300:	e002      	b.n	308 <_strlen+0x14>
     302:	68fb      	ldr	r3, [r7, #12]
     304:	3301      	adds	r3, #1
     306:	60fb      	str	r3, [r7, #12]
     308:	687b      	ldr	r3, [r7, #4]
     30a:	1c5a      	adds	r2, r3, #1
     30c:	607a      	str	r2, [r7, #4]
     30e:	781b      	ldrb	r3, [r3, #0]
     310:	2b00      	cmp	r3, #0
     312:	d1f6      	bne.n	302 <_strlen+0xe>
    return i;
     314:	68fb      	ldr	r3, [r7, #12]
}
     316:	4618      	mov	r0, r3
     318:	3714      	adds	r7, #20
     31a:	46bd      	mov	sp, r7
     31c:	bc80      	pop	{r7}
     31e:	4770      	bx	lr

00000320 <_pow>:

static unsigned long _pow(int x, int y)
{
     320:	b480      	push	{r7}
     322:	b085      	sub	sp, #20
     324:	af00      	add	r7, sp, #0
     326:	6078      	str	r0, [r7, #4]
     328:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
     32a:	2301      	movs	r3, #1
     32c:	60fb      	str	r3, [r7, #12]
    while (y--)
     32e:	e004      	b.n	33a <_pow+0x1a>
    {
        sum *= x;
     330:	687a      	ldr	r2, [r7, #4]
     332:	68fb      	ldr	r3, [r7, #12]
     334:	fb02 f303 	mul.w	r3, r2, r3
     338:	60fb      	str	r3, [r7, #12]
    while (y--)
     33a:	683b      	ldr	r3, [r7, #0]
     33c:	1e5a      	subs	r2, r3, #1
     33e:	603a      	str	r2, [r7, #0]
     340:	2b00      	cmp	r3, #0
     342:	d1f5      	bne.n	330 <_pow+0x10>
    }
    return sum;
     344:	68fb      	ldr	r3, [r7, #12]
}
     346:	4618      	mov	r0, r3
     348:	3714      	adds	r7, #20
     34a:	46bd      	mov	sp, r7
     34c:	bc80      	pop	{r7}
     34e:	4770      	bx	lr

00000350 <lite_printf>:

int lite_printf(const char *str, ...)
{
     350:	b40f      	push	{r0, r1, r2, r3}
     352:	b590      	push	{r4, r7, lr}
     354:	b089      	sub	sp, #36	; 0x24
     356:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
     358:	2300      	movs	r3, #0
     35a:	613b      	str	r3, [r7, #16]
    int res = 0; //返回值
     35c:	2300      	movs	r3, #0
     35e:	617b      	str	r3, [r7, #20]

    va_start(ap, str);   //初始化ap
     360:	f107 0334 	add.w	r3, r7, #52	; 0x34
     364:	607b      	str	r3, [r7, #4]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     366:	e10d      	b.n	584 <lite_printf+0x234>
    {
        switch (*str)
     368:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     36a:	781b      	ldrb	r3, [r3, #0]
     36c:	2b0d      	cmp	r3, #13
     36e:	f000 80f5 	beq.w	55c <lite_printf+0x20c>
     372:	2b25      	cmp	r3, #37	; 0x25
     374:	d003      	beq.n	37e <lite_printf+0x2e>
     376:	2b0a      	cmp	r3, #10
     378:	f000 80e9 	beq.w	54e <lite_printf+0x1fe>
     37c:	e0f5      	b.n	56a <lite_printf+0x21a>
        {
        case '%': //发送参数
            str++;
     37e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     380:	3301      	adds	r3, #1
     382:	633b      	str	r3, [r7, #48]	; 0x30
            switch (*str)
     384:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     386:	781b      	ldrb	r3, [r3, #0]
     388:	3b63      	subs	r3, #99	; 0x63
     38a:	2b15      	cmp	r3, #21
     38c:	f200 80f6 	bhi.w	57c <lite_printf+0x22c>
     390:	a201      	add	r2, pc, #4	; (adr r2, 398 <lite_printf+0x48>)
     392:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     396:	bf00      	nop
     398:	00000535 	.word	0x00000535
     39c:	000003f1 	.word	0x000003f1
     3a0:	0000057d 	.word	0x0000057d
     3a4:	0000057d 	.word	0x0000057d
     3a8:	0000057d 	.word	0x0000057d
     3ac:	0000057d 	.word	0x0000057d
     3b0:	0000057d 	.word	0x0000057d
     3b4:	0000057d 	.word	0x0000057d
     3b8:	0000057d 	.word	0x0000057d
     3bc:	0000057d 	.word	0x0000057d
     3c0:	0000057d 	.word	0x0000057d
     3c4:	0000057d 	.word	0x0000057d
     3c8:	0000057d 	.word	0x0000057d
     3cc:	0000057d 	.word	0x0000057d
     3d0:	0000057d 	.word	0x0000057d
     3d4:	0000057d 	.word	0x0000057d
     3d8:	00000515 	.word	0x00000515
     3dc:	0000057d 	.word	0x0000057d
     3e0:	0000057d 	.word	0x0000057d
     3e4:	0000057d 	.word	0x0000057d
     3e8:	0000057d 	.word	0x0000057d
     3ec:	0000047b 	.word	0x0000047b
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     3f0:	687b      	ldr	r3, [r7, #4]
     3f2:	1d1a      	adds	r2, r3, #4
     3f4:	607a      	str	r2, [r7, #4]
     3f6:	681b      	ldr	r3, [r3, #0]
     3f8:	60fb      	str	r3, [r7, #12]
                r_val = val;
     3fa:	68fb      	ldr	r3, [r7, #12]
     3fc:	61fb      	str	r3, [r7, #28]
                count = 0;
     3fe:	2300      	movs	r3, #0
     400:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     402:	e00a      	b.n	41a <lite_printf+0xca>

                {
                    count++; //整数的长度
     404:	7efb      	ldrb	r3, [r7, #27]
     406:	3301      	adds	r3, #1
     408:	76fb      	strb	r3, [r7, #27]
                    r_val /= 10;
     40a:	69fb      	ldr	r3, [r7, #28]
     40c:	4a64      	ldr	r2, [pc, #400]	; (5a0 <lite_printf+0x250>)
     40e:	fb82 1203 	smull	r1, r2, r2, r3
     412:	1092      	asrs	r2, r2, #2
     414:	17db      	asrs	r3, r3, #31
     416:	1ad3      	subs	r3, r2, r3
     418:	61fb      	str	r3, [r7, #28]
                while (r_val)
     41a:	69fb      	ldr	r3, [r7, #28]
     41c:	2b00      	cmp	r3, #0
     41e:	d1f1      	bne.n	404 <lite_printf+0xb4>
                }

                res += count;
     420:	7efb      	ldrb	r3, [r7, #27]
     422:	697a      	ldr	r2, [r7, #20]
     424:	4413      	add	r3, r2
     426:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     428:	68fb      	ldr	r3, [r7, #12]
     42a:	61fb      	str	r3, [r7, #28]
                while (count)
     42c:	e021      	b.n	472 <lite_printf+0x122>
                {
                    ch = r_val / _pow(10, count - 1);
     42e:	69fc      	ldr	r4, [r7, #28]
     430:	7efb      	ldrb	r3, [r7, #27]
     432:	3b01      	subs	r3, #1
     434:	4619      	mov	r1, r3
     436:	200a      	movs	r0, #10
     438:	f7ff ff72 	bl	320 <_pow>
     43c:	4603      	mov	r3, r0
     43e:	fbb4 f3f3 	udiv	r3, r4, r3
     442:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(10, count - 1);
     444:	7efb      	ldrb	r3, [r7, #27]
     446:	3b01      	subs	r3, #1
     448:	4619      	mov	r1, r3
     44a:	200a      	movs	r0, #10
     44c:	f7ff ff68 	bl	320 <_pow>
     450:	4602      	mov	r2, r0
     452:	69fb      	ldr	r3, [r7, #28]
     454:	fbb3 f1f2 	udiv	r1, r3, r2
     458:	fb02 f201 	mul.w	r2, r2, r1
     45c:	1a9b      	subs	r3, r3, r2
     45e:	61fb      	str	r3, [r7, #28]

                    _putchar(ch + '0');
     460:	7afb      	ldrb	r3, [r7, #11]
     462:	3330      	adds	r3, #48	; 0x30
     464:	b2db      	uxtb	r3, r3
     466:	4618      	mov	r0, r3
     468:	f7ff fee0 	bl	22c <_putchar>
                    //数字到字符的转换
                    count--;
     46c:	7efb      	ldrb	r3, [r7, #27]
     46e:	3b01      	subs	r3, #1
     470:	76fb      	strb	r3, [r7, #27]
                while (count)
     472:	7efb      	ldrb	r3, [r7, #27]
     474:	2b00      	cmp	r3, #0
     476:	d1da      	bne.n	42e <lite_printf+0xde>
                }
                break;
     478:	e068      	b.n	54c <lite_printf+0x1fc>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     47a:	687b      	ldr	r3, [r7, #4]
     47c:	1d1a      	adds	r2, r3, #4
     47e:	607a      	str	r2, [r7, #4]
     480:	681b      	ldr	r3, [r3, #0]
     482:	60fb      	str	r3, [r7, #12]
                r_val = val;
     484:	68fb      	ldr	r3, [r7, #12]
     486:	61fb      	str	r3, [r7, #28]
                count = 0;
     488:	2300      	movs	r3, #0
     48a:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     48c:	e008      	b.n	4a0 <lite_printf+0x150>

                {
                    count++; //整数的长度
     48e:	7efb      	ldrb	r3, [r7, #27]
     490:	3301      	adds	r3, #1
     492:	76fb      	strb	r3, [r7, #27]
                    r_val /= 16;
     494:	69fb      	ldr	r3, [r7, #28]
     496:	2b00      	cmp	r3, #0
     498:	da00      	bge.n	49c <lite_printf+0x14c>
     49a:	330f      	adds	r3, #15
     49c:	111b      	asrs	r3, r3, #4
     49e:	61fb      	str	r3, [r7, #28]
                while (r_val)
     4a0:	69fb      	ldr	r3, [r7, #28]
     4a2:	2b00      	cmp	r3, #0
     4a4:	d1f3      	bne.n	48e <lite_printf+0x13e>
                }

                res += count;
     4a6:	7efb      	ldrb	r3, [r7, #27]
     4a8:	697a      	ldr	r2, [r7, #20]
     4aa:	4413      	add	r3, r2
     4ac:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     4ae:	68fb      	ldr	r3, [r7, #12]
     4b0:	61fb      	str	r3, [r7, #28]
                while (count)
     4b2:	e02b      	b.n	50c <lite_printf+0x1bc>
                {
                    ch = r_val / _pow(16, count - 1);
     4b4:	69fc      	ldr	r4, [r7, #28]
     4b6:	7efb      	ldrb	r3, [r7, #27]
     4b8:	3b01      	subs	r3, #1
     4ba:	4619      	mov	r1, r3
     4bc:	2010      	movs	r0, #16
     4be:	f7ff ff2f 	bl	320 <_pow>
     4c2:	4603      	mov	r3, r0
     4c4:	fbb4 f3f3 	udiv	r3, r4, r3
     4c8:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(16, count - 1);
     4ca:	7efb      	ldrb	r3, [r7, #27]
     4cc:	3b01      	subs	r3, #1
     4ce:	4619      	mov	r1, r3
     4d0:	2010      	movs	r0, #16
     4d2:	f7ff ff25 	bl	320 <_pow>
     4d6:	4602      	mov	r2, r0
     4d8:	69fb      	ldr	r3, [r7, #28]
     4da:	fbb3 f1f2 	udiv	r1, r3, r2
     4de:	fb02 f201 	mul.w	r2, r2, r1
     4e2:	1a9b      	subs	r3, r3, r2
     4e4:	61fb      	str	r3, [r7, #28]
                    if (ch <= 9)
     4e6:	7afb      	ldrb	r3, [r7, #11]
     4e8:	2b09      	cmp	r3, #9
     4ea:	d806      	bhi.n	4fa <lite_printf+0x1aa>
                        _putchar(ch + '0');
     4ec:	7afb      	ldrb	r3, [r7, #11]
     4ee:	3330      	adds	r3, #48	; 0x30
     4f0:	b2db      	uxtb	r3, r3
     4f2:	4618      	mov	r0, r3
     4f4:	f7ff fe9a 	bl	22c <_putchar>
     4f8:	e005      	b.n	506 <lite_printf+0x1b6>
                    //数字到字符的转换
                    else
                        _putchar(ch - 10 + 'a');
     4fa:	7afb      	ldrb	r3, [r7, #11]
     4fc:	3357      	adds	r3, #87	; 0x57
     4fe:	b2db      	uxtb	r3, r3
     500:	4618      	mov	r0, r3
     502:	f7ff fe93 	bl	22c <_putchar>
                    count--;
     506:	7efb      	ldrb	r3, [r7, #27]
     508:	3b01      	subs	r3, #1
     50a:	76fb      	strb	r3, [r7, #27]
                while (count)
     50c:	7efb      	ldrb	r3, [r7, #27]
     50e:	2b00      	cmp	r3, #0
     510:	d1d0      	bne.n	4b4 <lite_printf+0x164>
                }
                break;
     512:	e01b      	b.n	54c <lite_printf+0x1fc>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     514:	687b      	ldr	r3, [r7, #4]
     516:	1d1a      	adds	r2, r3, #4
     518:	607a      	str	r2, [r7, #4]
     51a:	681b      	ldr	r3, [r3, #0]
     51c:	613b      	str	r3, [r7, #16]
                _putstr(s);
     51e:	6938      	ldr	r0, [r7, #16]
     520:	f7ff fed4 	bl	2cc <_putstr>
                //字符串,返回值为字符指针
                res += _strlen(s);
     524:	6938      	ldr	r0, [r7, #16]
     526:	f7ff fee5 	bl	2f4 <_strlen>
     52a:	4602      	mov	r2, r0
     52c:	697b      	ldr	r3, [r7, #20]
     52e:	4413      	add	r3, r2
     530:	617b      	str	r3, [r7, #20]
                //返回值长度增加
                break;
     532:	e00b      	b.n	54c <lite_printf+0x1fc>
            case 'c':
                _putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     534:	687b      	ldr	r3, [r7, #4]
     536:	1d1a      	adds	r2, r3, #4
     538:	607a      	str	r2, [r7, #4]
     53a:	681b      	ldr	r3, [r3, #0]
     53c:	b2db      	uxtb	r3, r3
     53e:	4618      	mov	r0, r3
     540:	f7ff fe74 	bl	22c <_putchar>
                res += 1;
     544:	697b      	ldr	r3, [r7, #20]
     546:	3301      	adds	r3, #1
     548:	617b      	str	r3, [r7, #20]

                break;
     54a:	bf00      	nop
            default:;
            }
            break;
     54c:	e016      	b.n	57c <lite_printf+0x22c>
        case '\n':
            _putchar('\n');
     54e:	200a      	movs	r0, #10
     550:	f7ff fe6c 	bl	22c <_putchar>
            res += 1;
     554:	697b      	ldr	r3, [r7, #20]
     556:	3301      	adds	r3, #1
     558:	617b      	str	r3, [r7, #20]
            break;
     55a:	e010      	b.n	57e <lite_printf+0x22e>
        case '\r':
            _putchar('\r');
     55c:	200d      	movs	r0, #13
     55e:	f7ff fe65 	bl	22c <_putchar>
            res += 1;
     562:	697b      	ldr	r3, [r7, #20]
     564:	3301      	adds	r3, #1
     566:	617b      	str	r3, [r7, #20]
            break;
     568:	e009      	b.n	57e <lite_printf+0x22e>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            _putchar(*str);
     56a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     56c:	781b      	ldrb	r3, [r3, #0]
     56e:	4618      	mov	r0, r3
     570:	f7ff fe5c 	bl	22c <_putchar>
            res += 1;
     574:	697b      	ldr	r3, [r7, #20]
     576:	3301      	adds	r3, #1
     578:	617b      	str	r3, [r7, #20]
     57a:	e000      	b.n	57e <lite_printf+0x22e>
            break;
     57c:	bf00      	nop
        }

        str++;
     57e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     580:	3301      	adds	r3, #1
     582:	633b      	str	r3, [r7, #48]	; 0x30
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     584:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     586:	781b      	ldrb	r3, [r3, #0]
     588:	2b00      	cmp	r3, #0
     58a:	f47f aeed 	bne.w	368 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     58e:	697b      	ldr	r3, [r7, #20]
}
     590:	4618      	mov	r0, r3
     592:	3724      	adds	r7, #36	; 0x24
     594:	46bd      	mov	sp, r7
     596:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     59a:	b004      	add	sp, #16
     59c:	4770      	bx	lr
     59e:	bf00      	nop
     5a0:	66666667 	.word	0x66666667

000005a4 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     5a4:	b480      	push	{r7}
     5a6:	b085      	sub	sp, #20
     5a8:	af00      	add	r7, sp, #0
     5aa:	60b9      	str	r1, [r7, #8]
     5ac:	607a      	str	r2, [r7, #4]
     5ae:	603b      	str	r3, [r7, #0]
     5b0:	4603      	mov	r3, r0
     5b2:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     5b4:	687a      	ldr	r2, [r7, #4]
     5b6:	683b      	ldr	r3, [r7, #0]
     5b8:	429a      	cmp	r2, r3
     5ba:	d204      	bcs.n	5c6 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     5bc:	68ba      	ldr	r2, [r7, #8]
     5be:	687b      	ldr	r3, [r7, #4]
     5c0:	4413      	add	r3, r2
     5c2:	7bfa      	ldrb	r2, [r7, #15]
     5c4:	701a      	strb	r2, [r3, #0]
  }
}
     5c6:	bf00      	nop
     5c8:	3714      	adds	r7, #20
     5ca:	46bd      	mov	sp, r7
     5cc:	bc80      	pop	{r7}
     5ce:	4770      	bx	lr

000005d0 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     5d0:	b480      	push	{r7}
     5d2:	b085      	sub	sp, #20
     5d4:	af00      	add	r7, sp, #0
     5d6:	60b9      	str	r1, [r7, #8]
     5d8:	607a      	str	r2, [r7, #4]
     5da:	603b      	str	r3, [r7, #0]
     5dc:	4603      	mov	r3, r0
     5de:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     5e0:	bf00      	nop
     5e2:	3714      	adds	r7, #20
     5e4:	46bd      	mov	sp, r7
     5e6:	bc80      	pop	{r7}
     5e8:	4770      	bx	lr

000005ea <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     5ea:	b580      	push	{r7, lr}
     5ec:	b084      	sub	sp, #16
     5ee:	af00      	add	r7, sp, #0
     5f0:	60b9      	str	r1, [r7, #8]
     5f2:	607a      	str	r2, [r7, #4]
     5f4:	603b      	str	r3, [r7, #0]
     5f6:	4603      	mov	r3, r0
     5f8:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     5fa:	7bfb      	ldrb	r3, [r7, #15]
     5fc:	2b00      	cmp	r3, #0
     5fe:	d003      	beq.n	608 <_out_char+0x1e>
    _putchar(character);
     600:	7bfb      	ldrb	r3, [r7, #15]
     602:	4618      	mov	r0, r3
     604:	f7ff fe12 	bl	22c <_putchar>
  }
}
     608:	bf00      	nop
     60a:	3710      	adds	r7, #16
     60c:	46bd      	mov	sp, r7
     60e:	bd80      	pop	{r7, pc}

00000610 <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     610:	b580      	push	{r7, lr}
     612:	b084      	sub	sp, #16
     614:	af00      	add	r7, sp, #0
     616:	60b9      	str	r1, [r7, #8]
     618:	607a      	str	r2, [r7, #4]
     61a:	603b      	str	r3, [r7, #0]
     61c:	4603      	mov	r3, r0
     61e:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     620:	7bfb      	ldrb	r3, [r7, #15]
     622:	2b00      	cmp	r3, #0
     624:	d006      	beq.n	634 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     626:	68bb      	ldr	r3, [r7, #8]
     628:	681b      	ldr	r3, [r3, #0]
     62a:	68ba      	ldr	r2, [r7, #8]
     62c:	6851      	ldr	r1, [r2, #4]
     62e:	7bfa      	ldrb	r2, [r7, #15]
     630:	4610      	mov	r0, r2
     632:	4798      	blx	r3
  }
}
     634:	bf00      	nop
     636:	3710      	adds	r7, #16
     638:	46bd      	mov	sp, r7
     63a:	bd80      	pop	{r7, pc}

0000063c <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     63c:	b480      	push	{r7}
     63e:	b085      	sub	sp, #20
     640:	af00      	add	r7, sp, #0
     642:	6078      	str	r0, [r7, #4]
     644:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     646:	687b      	ldr	r3, [r7, #4]
     648:	60fb      	str	r3, [r7, #12]
     64a:	e002      	b.n	652 <_strnlen_s+0x16>
     64c:	68fb      	ldr	r3, [r7, #12]
     64e:	3301      	adds	r3, #1
     650:	60fb      	str	r3, [r7, #12]
     652:	68fb      	ldr	r3, [r7, #12]
     654:	781b      	ldrb	r3, [r3, #0]
     656:	2b00      	cmp	r3, #0
     658:	d004      	beq.n	664 <_strnlen_s+0x28>
     65a:	683b      	ldr	r3, [r7, #0]
     65c:	1e5a      	subs	r2, r3, #1
     65e:	603a      	str	r2, [r7, #0]
     660:	2b00      	cmp	r3, #0
     662:	d1f3      	bne.n	64c <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     664:	68fa      	ldr	r2, [r7, #12]
     666:	687b      	ldr	r3, [r7, #4]
     668:	1ad3      	subs	r3, r2, r3
}
     66a:	4618      	mov	r0, r3
     66c:	3714      	adds	r7, #20
     66e:	46bd      	mov	sp, r7
     670:	bc80      	pop	{r7}
     672:	4770      	bx	lr

00000674 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     674:	b480      	push	{r7}
     676:	b083      	sub	sp, #12
     678:	af00      	add	r7, sp, #0
     67a:	4603      	mov	r3, r0
     67c:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     67e:	79fb      	ldrb	r3, [r7, #7]
     680:	2b2f      	cmp	r3, #47	; 0x2f
     682:	d904      	bls.n	68e <_is_digit+0x1a>
     684:	79fb      	ldrb	r3, [r7, #7]
     686:	2b39      	cmp	r3, #57	; 0x39
     688:	d801      	bhi.n	68e <_is_digit+0x1a>
     68a:	2301      	movs	r3, #1
     68c:	e000      	b.n	690 <_is_digit+0x1c>
     68e:	2300      	movs	r3, #0
     690:	f003 0301 	and.w	r3, r3, #1
     694:	b2db      	uxtb	r3, r3
}
     696:	4618      	mov	r0, r3
     698:	370c      	adds	r7, #12
     69a:	46bd      	mov	sp, r7
     69c:	bc80      	pop	{r7}
     69e:	4770      	bx	lr

000006a0 <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     6a0:	b580      	push	{r7, lr}
     6a2:	b084      	sub	sp, #16
     6a4:	af00      	add	r7, sp, #0
     6a6:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     6a8:	2300      	movs	r3, #0
     6aa:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6ac:	e00e      	b.n	6cc <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     6ae:	68fa      	ldr	r2, [r7, #12]
     6b0:	4613      	mov	r3, r2
     6b2:	009b      	lsls	r3, r3, #2
     6b4:	4413      	add	r3, r2
     6b6:	005b      	lsls	r3, r3, #1
     6b8:	4618      	mov	r0, r3
     6ba:	687b      	ldr	r3, [r7, #4]
     6bc:	681b      	ldr	r3, [r3, #0]
     6be:	1c59      	adds	r1, r3, #1
     6c0:	687a      	ldr	r2, [r7, #4]
     6c2:	6011      	str	r1, [r2, #0]
     6c4:	781b      	ldrb	r3, [r3, #0]
     6c6:	4403      	add	r3, r0
     6c8:	3b30      	subs	r3, #48	; 0x30
     6ca:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6cc:	687b      	ldr	r3, [r7, #4]
     6ce:	681b      	ldr	r3, [r3, #0]
     6d0:	781b      	ldrb	r3, [r3, #0]
     6d2:	4618      	mov	r0, r3
     6d4:	f7ff ffce 	bl	674 <_is_digit>
     6d8:	4603      	mov	r3, r0
     6da:	2b00      	cmp	r3, #0
     6dc:	d1e7      	bne.n	6ae <_atoi+0xe>
  }
  return i;
     6de:	68fb      	ldr	r3, [r7, #12]
}
     6e0:	4618      	mov	r0, r3
     6e2:	3710      	adds	r7, #16
     6e4:	46bd      	mov	sp, r7
     6e6:	bd80      	pop	{r7, pc}

000006e8 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     6e8:	b590      	push	{r4, r7, lr}
     6ea:	b087      	sub	sp, #28
     6ec:	af00      	add	r7, sp, #0
     6ee:	60f8      	str	r0, [r7, #12]
     6f0:	60b9      	str	r1, [r7, #8]
     6f2:	607a      	str	r2, [r7, #4]
     6f4:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     6f6:	687b      	ldr	r3, [r7, #4]
     6f8:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     6fa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     6fc:	f003 0302 	and.w	r3, r3, #2
     700:	2b00      	cmp	r3, #0
     702:	d125      	bne.n	750 <_out_rev+0x68>
     704:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     706:	f003 0301 	and.w	r3, r3, #1
     70a:	2b00      	cmp	r3, #0
     70c:	d120      	bne.n	750 <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     70e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     710:	617b      	str	r3, [r7, #20]
     712:	e00a      	b.n	72a <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     714:	687a      	ldr	r2, [r7, #4]
     716:	1c53      	adds	r3, r2, #1
     718:	607b      	str	r3, [r7, #4]
     71a:	68fc      	ldr	r4, [r7, #12]
     71c:	683b      	ldr	r3, [r7, #0]
     71e:	68b9      	ldr	r1, [r7, #8]
     720:	2020      	movs	r0, #32
     722:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     724:	697b      	ldr	r3, [r7, #20]
     726:	3301      	adds	r3, #1
     728:	617b      	str	r3, [r7, #20]
     72a:	697a      	ldr	r2, [r7, #20]
     72c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     72e:	429a      	cmp	r2, r3
     730:	d3f0      	bcc.n	714 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     732:	e00d      	b.n	750 <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     734:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     736:	3b01      	subs	r3, #1
     738:	62fb      	str	r3, [r7, #44]	; 0x2c
     73a:	6aba      	ldr	r2, [r7, #40]	; 0x28
     73c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     73e:	4413      	add	r3, r2
     740:	7818      	ldrb	r0, [r3, #0]
     742:	687a      	ldr	r2, [r7, #4]
     744:	1c53      	adds	r3, r2, #1
     746:	607b      	str	r3, [r7, #4]
     748:	68fc      	ldr	r4, [r7, #12]
     74a:	683b      	ldr	r3, [r7, #0]
     74c:	68b9      	ldr	r1, [r7, #8]
     74e:	47a0      	blx	r4
  while (len) {
     750:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     752:	2b00      	cmp	r3, #0
     754:	d1ee      	bne.n	734 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     756:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     758:	f003 0302 	and.w	r3, r3, #2
     75c:	2b00      	cmp	r3, #0
     75e:	d00e      	beq.n	77e <_out_rev+0x96>
    while (idx - start_idx < width) {
     760:	e007      	b.n	772 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     762:	687a      	ldr	r2, [r7, #4]
     764:	1c53      	adds	r3, r2, #1
     766:	607b      	str	r3, [r7, #4]
     768:	68fc      	ldr	r4, [r7, #12]
     76a:	683b      	ldr	r3, [r7, #0]
     76c:	68b9      	ldr	r1, [r7, #8]
     76e:	2020      	movs	r0, #32
     770:	47a0      	blx	r4
    while (idx - start_idx < width) {
     772:	687a      	ldr	r2, [r7, #4]
     774:	693b      	ldr	r3, [r7, #16]
     776:	1ad3      	subs	r3, r2, r3
     778:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     77a:	429a      	cmp	r2, r3
     77c:	d8f1      	bhi.n	762 <_out_rev+0x7a>
    }
  }

  return idx;
     77e:	687b      	ldr	r3, [r7, #4]
}
     780:	4618      	mov	r0, r3
     782:	371c      	adds	r7, #28
     784:	46bd      	mov	sp, r7
     786:	bd90      	pop	{r4, r7, pc}

00000788 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     788:	b580      	push	{r7, lr}
     78a:	b088      	sub	sp, #32
     78c:	af04      	add	r7, sp, #16
     78e:	60f8      	str	r0, [r7, #12]
     790:	60b9      	str	r1, [r7, #8]
     792:	607a      	str	r2, [r7, #4]
     794:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     796:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     798:	f003 0302 	and.w	r3, r3, #2
     79c:	2b00      	cmp	r3, #0
     79e:	d136      	bne.n	80e <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     7a0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7a2:	2b00      	cmp	r3, #0
     7a4:	d018      	beq.n	7d8 <_ntoa_format+0x50>
     7a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7a8:	f003 0301 	and.w	r3, r3, #1
     7ac:	2b00      	cmp	r3, #0
     7ae:	d013      	beq.n	7d8 <_ntoa_format+0x50>
     7b0:	f897 3020 	ldrb.w	r3, [r7, #32]
     7b4:	2b00      	cmp	r3, #0
     7b6:	d104      	bne.n	7c2 <_ntoa_format+0x3a>
     7b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7ba:	f003 030c 	and.w	r3, r3, #12
     7be:	2b00      	cmp	r3, #0
     7c0:	d00a      	beq.n	7d8 <_ntoa_format+0x50>
      width--;
     7c2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7c4:	3b01      	subs	r3, #1
     7c6:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7c8:	e006      	b.n	7d8 <_ntoa_format+0x50>
      buf[len++] = '0';
     7ca:	69fb      	ldr	r3, [r7, #28]
     7cc:	1c5a      	adds	r2, r3, #1
     7ce:	61fa      	str	r2, [r7, #28]
     7d0:	69ba      	ldr	r2, [r7, #24]
     7d2:	4413      	add	r3, r2
     7d4:	2230      	movs	r2, #48	; 0x30
     7d6:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7d8:	69fa      	ldr	r2, [r7, #28]
     7da:	6abb      	ldr	r3, [r7, #40]	; 0x28
     7dc:	429a      	cmp	r2, r3
     7de:	d20a      	bcs.n	7f6 <_ntoa_format+0x6e>
     7e0:	69fb      	ldr	r3, [r7, #28]
     7e2:	2b1f      	cmp	r3, #31
     7e4:	d9f1      	bls.n	7ca <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7e6:	e006      	b.n	7f6 <_ntoa_format+0x6e>
      buf[len++] = '0';
     7e8:	69fb      	ldr	r3, [r7, #28]
     7ea:	1c5a      	adds	r2, r3, #1
     7ec:	61fa      	str	r2, [r7, #28]
     7ee:	69ba      	ldr	r2, [r7, #24]
     7f0:	4413      	add	r3, r2
     7f2:	2230      	movs	r2, #48	; 0x30
     7f4:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7f6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7f8:	f003 0301 	and.w	r3, r3, #1
     7fc:	2b00      	cmp	r3, #0
     7fe:	d006      	beq.n	80e <_ntoa_format+0x86>
     800:	69fa      	ldr	r2, [r7, #28]
     802:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     804:	429a      	cmp	r2, r3
     806:	d202      	bcs.n	80e <_ntoa_format+0x86>
     808:	69fb      	ldr	r3, [r7, #28]
     80a:	2b1f      	cmp	r3, #31
     80c:	d9ec      	bls.n	7e8 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     80e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     810:	f003 0310 	and.w	r3, r3, #16
     814:	2b00      	cmp	r3, #0
     816:	d058      	beq.n	8ca <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     818:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     81a:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     81e:	2b00      	cmp	r3, #0
     820:	d116      	bne.n	850 <_ntoa_format+0xc8>
     822:	69fb      	ldr	r3, [r7, #28]
     824:	2b00      	cmp	r3, #0
     826:	d013      	beq.n	850 <_ntoa_format+0xc8>
     828:	69fa      	ldr	r2, [r7, #28]
     82a:	6abb      	ldr	r3, [r7, #40]	; 0x28
     82c:	429a      	cmp	r2, r3
     82e:	d003      	beq.n	838 <_ntoa_format+0xb0>
     830:	69fa      	ldr	r2, [r7, #28]
     832:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     834:	429a      	cmp	r2, r3
     836:	d10b      	bne.n	850 <_ntoa_format+0xc8>
      len--;
     838:	69fb      	ldr	r3, [r7, #28]
     83a:	3b01      	subs	r3, #1
     83c:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     83e:	69fb      	ldr	r3, [r7, #28]
     840:	2b00      	cmp	r3, #0
     842:	d005      	beq.n	850 <_ntoa_format+0xc8>
     844:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     846:	2b10      	cmp	r3, #16
     848:	d102      	bne.n	850 <_ntoa_format+0xc8>
        len--;
     84a:	69fb      	ldr	r3, [r7, #28]
     84c:	3b01      	subs	r3, #1
     84e:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     850:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     852:	2b10      	cmp	r3, #16
     854:	d10f      	bne.n	876 <_ntoa_format+0xee>
     856:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     858:	f003 0320 	and.w	r3, r3, #32
     85c:	2b00      	cmp	r3, #0
     85e:	d10a      	bne.n	876 <_ntoa_format+0xee>
     860:	69fb      	ldr	r3, [r7, #28]
     862:	2b1f      	cmp	r3, #31
     864:	d807      	bhi.n	876 <_ntoa_format+0xee>
      buf[len++] = 'x';
     866:	69fb      	ldr	r3, [r7, #28]
     868:	1c5a      	adds	r2, r3, #1
     86a:	61fa      	str	r2, [r7, #28]
     86c:	69ba      	ldr	r2, [r7, #24]
     86e:	4413      	add	r3, r2
     870:	2278      	movs	r2, #120	; 0x78
     872:	701a      	strb	r2, [r3, #0]
     874:	e01f      	b.n	8b6 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     876:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     878:	2b10      	cmp	r3, #16
     87a:	d10f      	bne.n	89c <_ntoa_format+0x114>
     87c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     87e:	f003 0320 	and.w	r3, r3, #32
     882:	2b00      	cmp	r3, #0
     884:	d00a      	beq.n	89c <_ntoa_format+0x114>
     886:	69fb      	ldr	r3, [r7, #28]
     888:	2b1f      	cmp	r3, #31
     88a:	d807      	bhi.n	89c <_ntoa_format+0x114>
      buf[len++] = 'X';
     88c:	69fb      	ldr	r3, [r7, #28]
     88e:	1c5a      	adds	r2, r3, #1
     890:	61fa      	str	r2, [r7, #28]
     892:	69ba      	ldr	r2, [r7, #24]
     894:	4413      	add	r3, r2
     896:	2258      	movs	r2, #88	; 0x58
     898:	701a      	strb	r2, [r3, #0]
     89a:	e00c      	b.n	8b6 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     89c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     89e:	2b02      	cmp	r3, #2
     8a0:	d109      	bne.n	8b6 <_ntoa_format+0x12e>
     8a2:	69fb      	ldr	r3, [r7, #28]
     8a4:	2b1f      	cmp	r3, #31
     8a6:	d806      	bhi.n	8b6 <_ntoa_format+0x12e>
      buf[len++] = 'b';
     8a8:	69fb      	ldr	r3, [r7, #28]
     8aa:	1c5a      	adds	r2, r3, #1
     8ac:	61fa      	str	r2, [r7, #28]
     8ae:	69ba      	ldr	r2, [r7, #24]
     8b0:	4413      	add	r3, r2
     8b2:	2262      	movs	r2, #98	; 0x62
     8b4:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8b6:	69fb      	ldr	r3, [r7, #28]
     8b8:	2b1f      	cmp	r3, #31
     8ba:	d806      	bhi.n	8ca <_ntoa_format+0x142>
      buf[len++] = '0';
     8bc:	69fb      	ldr	r3, [r7, #28]
     8be:	1c5a      	adds	r2, r3, #1
     8c0:	61fa      	str	r2, [r7, #28]
     8c2:	69ba      	ldr	r2, [r7, #24]
     8c4:	4413      	add	r3, r2
     8c6:	2230      	movs	r2, #48	; 0x30
     8c8:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8ca:	69fb      	ldr	r3, [r7, #28]
     8cc:	2b1f      	cmp	r3, #31
     8ce:	d824      	bhi.n	91a <_ntoa_format+0x192>
    if (negative) {
     8d0:	f897 3020 	ldrb.w	r3, [r7, #32]
     8d4:	2b00      	cmp	r3, #0
     8d6:	d007      	beq.n	8e8 <_ntoa_format+0x160>
      buf[len++] = '-';
     8d8:	69fb      	ldr	r3, [r7, #28]
     8da:	1c5a      	adds	r2, r3, #1
     8dc:	61fa      	str	r2, [r7, #28]
     8de:	69ba      	ldr	r2, [r7, #24]
     8e0:	4413      	add	r3, r2
     8e2:	222d      	movs	r2, #45	; 0x2d
     8e4:	701a      	strb	r2, [r3, #0]
     8e6:	e018      	b.n	91a <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     8e8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8ea:	f003 0304 	and.w	r3, r3, #4
     8ee:	2b00      	cmp	r3, #0
     8f0:	d007      	beq.n	902 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     8f2:	69fb      	ldr	r3, [r7, #28]
     8f4:	1c5a      	adds	r2, r3, #1
     8f6:	61fa      	str	r2, [r7, #28]
     8f8:	69ba      	ldr	r2, [r7, #24]
     8fa:	4413      	add	r3, r2
     8fc:	222b      	movs	r2, #43	; 0x2b
     8fe:	701a      	strb	r2, [r3, #0]
     900:	e00b      	b.n	91a <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     902:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     904:	f003 0308 	and.w	r3, r3, #8
     908:	2b00      	cmp	r3, #0
     90a:	d006      	beq.n	91a <_ntoa_format+0x192>
      buf[len++] = ' ';
     90c:	69fb      	ldr	r3, [r7, #28]
     90e:	1c5a      	adds	r2, r3, #1
     910:	61fa      	str	r2, [r7, #28]
     912:	69ba      	ldr	r2, [r7, #24]
     914:	4413      	add	r3, r2
     916:	2220      	movs	r2, #32
     918:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     91a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     91c:	9303      	str	r3, [sp, #12]
     91e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     920:	9302      	str	r3, [sp, #8]
     922:	69fb      	ldr	r3, [r7, #28]
     924:	9301      	str	r3, [sp, #4]
     926:	69bb      	ldr	r3, [r7, #24]
     928:	9300      	str	r3, [sp, #0]
     92a:	683b      	ldr	r3, [r7, #0]
     92c:	687a      	ldr	r2, [r7, #4]
     92e:	68b9      	ldr	r1, [r7, #8]
     930:	68f8      	ldr	r0, [r7, #12]
     932:	f7ff fed9 	bl	6e8 <_out_rev>
     936:	4603      	mov	r3, r0
}
     938:	4618      	mov	r0, r3
     93a:	3710      	adds	r7, #16
     93c:	46bd      	mov	sp, r7
     93e:	bd80      	pop	{r7, pc}

00000940 <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     940:	b580      	push	{r7, lr}
     942:	b096      	sub	sp, #88	; 0x58
     944:	af08      	add	r7, sp, #32
     946:	60f8      	str	r0, [r7, #12]
     948:	60b9      	str	r1, [r7, #8]
     94a:	607a      	str	r2, [r7, #4]
     94c:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     94e:	2300      	movs	r3, #0
     950:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     952:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     954:	2b00      	cmp	r3, #0
     956:	d103      	bne.n	960 <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     958:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     95a:	f023 0310 	bic.w	r3, r3, #16
     95e:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     960:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     962:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     966:	2b00      	cmp	r3, #0
     968:	d002      	beq.n	970 <_ntoa_long+0x30>
     96a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     96c:	2b00      	cmp	r3, #0
     96e:	d033      	beq.n	9d8 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     970:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     972:	6cba      	ldr	r2, [r7, #72]	; 0x48
     974:	fbb3 f2f2 	udiv	r2, r3, r2
     978:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     97a:	fb01 f202 	mul.w	r2, r1, r2
     97e:	1a9b      	subs	r3, r3, r2
     980:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     984:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     988:	2b09      	cmp	r3, #9
     98a:	d804      	bhi.n	996 <_ntoa_long+0x56>
     98c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     990:	3330      	adds	r3, #48	; 0x30
     992:	b2da      	uxtb	r2, r3
     994:	e00d      	b.n	9b2 <_ntoa_long+0x72>
     996:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     998:	f003 0320 	and.w	r3, r3, #32
     99c:	2b00      	cmp	r3, #0
     99e:	d001      	beq.n	9a4 <_ntoa_long+0x64>
     9a0:	2241      	movs	r2, #65	; 0x41
     9a2:	e000      	b.n	9a6 <_ntoa_long+0x66>
     9a4:	2261      	movs	r2, #97	; 0x61
     9a6:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9aa:	4413      	add	r3, r2
     9ac:	b2db      	uxtb	r3, r3
     9ae:	3b0a      	subs	r3, #10
     9b0:	b2da      	uxtb	r2, r3
     9b2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9b4:	1c59      	adds	r1, r3, #1
     9b6:	6379      	str	r1, [r7, #52]	; 0x34
     9b8:	f107 0138 	add.w	r1, r7, #56	; 0x38
     9bc:	440b      	add	r3, r1
     9be:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     9c2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     9c4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9c6:	fbb2 f3f3 	udiv	r3, r2, r3
     9ca:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     9cc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     9ce:	2b00      	cmp	r3, #0
     9d0:	d002      	beq.n	9d8 <_ntoa_long+0x98>
     9d2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9d4:	2b1f      	cmp	r3, #31
     9d6:	d9cb      	bls.n	970 <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     9d8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     9da:	9306      	str	r3, [sp, #24]
     9dc:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     9de:	9305      	str	r3, [sp, #20]
     9e0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     9e2:	9304      	str	r3, [sp, #16]
     9e4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9e6:	9303      	str	r3, [sp, #12]
     9e8:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     9ec:	9302      	str	r3, [sp, #8]
     9ee:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9f0:	9301      	str	r3, [sp, #4]
     9f2:	f107 0310 	add.w	r3, r7, #16
     9f6:	9300      	str	r3, [sp, #0]
     9f8:	683b      	ldr	r3, [r7, #0]
     9fa:	687a      	ldr	r2, [r7, #4]
     9fc:	68b9      	ldr	r1, [r7, #8]
     9fe:	68f8      	ldr	r0, [r7, #12]
     a00:	f7ff fec2 	bl	788 <_ntoa_format>
     a04:	4603      	mov	r3, r0
}
     a06:	4618      	mov	r0, r3
     a08:	3738      	adds	r7, #56	; 0x38
     a0a:	46bd      	mov	sp, r7
     a0c:	bd80      	pop	{r7, pc}

00000a0e <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     a0e:	b590      	push	{r4, r7, lr}
     a10:	b099      	sub	sp, #100	; 0x64
     a12:	af06      	add	r7, sp, #24
     a14:	60f8      	str	r0, [r7, #12]
     a16:	60b9      	str	r1, [r7, #8]
     a18:	607a      	str	r2, [r7, #4]
     a1a:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     a1c:	2300      	movs	r3, #0
     a1e:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     a20:	68bb      	ldr	r3, [r7, #8]
     a22:	2b00      	cmp	r3, #0
     a24:	f040 83c0 	bne.w	11a8 <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     a28:	4b9f      	ldr	r3, [pc, #636]	; (ca8 <_vsnprintf+0x29a>)
     a2a:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     a2c:	e3bc      	b.n	11a8 <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     a2e:	683b      	ldr	r3, [r7, #0]
     a30:	781b      	ldrb	r3, [r3, #0]
     a32:	2b25      	cmp	r3, #37	; 0x25
     a34:	d00c      	beq.n	a50 <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
     a36:	683b      	ldr	r3, [r7, #0]
     a38:	7818      	ldrb	r0, [r3, #0]
     a3a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     a3c:	1c53      	adds	r3, r2, #1
     a3e:	637b      	str	r3, [r7, #52]	; 0x34
     a40:	68fc      	ldr	r4, [r7, #12]
     a42:	687b      	ldr	r3, [r7, #4]
     a44:	68b9      	ldr	r1, [r7, #8]
     a46:	47a0      	blx	r4
      format++;
     a48:	683b      	ldr	r3, [r7, #0]
     a4a:	3301      	adds	r3, #1
     a4c:	603b      	str	r3, [r7, #0]
      continue;
     a4e:	e3ab      	b.n	11a8 <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
     a50:	683b      	ldr	r3, [r7, #0]
     a52:	3301      	adds	r3, #1
     a54:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     a56:	2300      	movs	r3, #0
     a58:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     a5a:	683b      	ldr	r3, [r7, #0]
     a5c:	781b      	ldrb	r3, [r3, #0]
     a5e:	3b20      	subs	r3, #32
     a60:	2b10      	cmp	r3, #16
     a62:	d857      	bhi.n	b14 <_vsnprintf+0x106>
     a64:	a201      	add	r2, pc, #4	; (adr r2, a6c <_vsnprintf+0x5e>)
     a66:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a6a:	bf00      	nop
     a6c:	00000aed 	.word	0x00000aed
     a70:	00000b15 	.word	0x00000b15
     a74:	00000b15 	.word	0x00000b15
     a78:	00000b01 	.word	0x00000b01
     a7c:	00000b15 	.word	0x00000b15
     a80:	00000b15 	.word	0x00000b15
     a84:	00000b15 	.word	0x00000b15
     a88:	00000b15 	.word	0x00000b15
     a8c:	00000b15 	.word	0x00000b15
     a90:	00000b15 	.word	0x00000b15
     a94:	00000b15 	.word	0x00000b15
     a98:	00000ad9 	.word	0x00000ad9
     a9c:	00000b15 	.word	0x00000b15
     aa0:	00000ac5 	.word	0x00000ac5
     aa4:	00000b15 	.word	0x00000b15
     aa8:	00000b15 	.word	0x00000b15
     aac:	00000ab1 	.word	0x00000ab1
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     ab0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ab2:	f043 0301 	orr.w	r3, r3, #1
     ab6:	647b      	str	r3, [r7, #68]	; 0x44
     ab8:	683b      	ldr	r3, [r7, #0]
     aba:	3301      	adds	r3, #1
     abc:	603b      	str	r3, [r7, #0]
     abe:	2301      	movs	r3, #1
     ac0:	63bb      	str	r3, [r7, #56]	; 0x38
     ac2:	e02a      	b.n	b1a <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     ac4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ac6:	f043 0302 	orr.w	r3, r3, #2
     aca:	647b      	str	r3, [r7, #68]	; 0x44
     acc:	683b      	ldr	r3, [r7, #0]
     ace:	3301      	adds	r3, #1
     ad0:	603b      	str	r3, [r7, #0]
     ad2:	2301      	movs	r3, #1
     ad4:	63bb      	str	r3, [r7, #56]	; 0x38
     ad6:	e020      	b.n	b1a <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     ad8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ada:	f043 0304 	orr.w	r3, r3, #4
     ade:	647b      	str	r3, [r7, #68]	; 0x44
     ae0:	683b      	ldr	r3, [r7, #0]
     ae2:	3301      	adds	r3, #1
     ae4:	603b      	str	r3, [r7, #0]
     ae6:	2301      	movs	r3, #1
     ae8:	63bb      	str	r3, [r7, #56]	; 0x38
     aea:	e016      	b.n	b1a <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     aec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     aee:	f043 0308 	orr.w	r3, r3, #8
     af2:	647b      	str	r3, [r7, #68]	; 0x44
     af4:	683b      	ldr	r3, [r7, #0]
     af6:	3301      	adds	r3, #1
     af8:	603b      	str	r3, [r7, #0]
     afa:	2301      	movs	r3, #1
     afc:	63bb      	str	r3, [r7, #56]	; 0x38
     afe:	e00c      	b.n	b1a <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     b00:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b02:	f043 0310 	orr.w	r3, r3, #16
     b06:	647b      	str	r3, [r7, #68]	; 0x44
     b08:	683b      	ldr	r3, [r7, #0]
     b0a:	3301      	adds	r3, #1
     b0c:	603b      	str	r3, [r7, #0]
     b0e:	2301      	movs	r3, #1
     b10:	63bb      	str	r3, [r7, #56]	; 0x38
     b12:	e002      	b.n	b1a <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     b14:	2300      	movs	r3, #0
     b16:	63bb      	str	r3, [r7, #56]	; 0x38
     b18:	bf00      	nop
      }
    } while (n);
     b1a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     b1c:	2b00      	cmp	r3, #0
     b1e:	d19c      	bne.n	a5a <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
     b20:	2300      	movs	r3, #0
     b22:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     b24:	683b      	ldr	r3, [r7, #0]
     b26:	781b      	ldrb	r3, [r3, #0]
     b28:	4618      	mov	r0, r3
     b2a:	f7ff fda3 	bl	674 <_is_digit>
     b2e:	4603      	mov	r3, r0
     b30:	2b00      	cmp	r3, #0
     b32:	d005      	beq.n	b40 <_vsnprintf+0x132>
      width = _atoi(&format);
     b34:	463b      	mov	r3, r7
     b36:	4618      	mov	r0, r3
     b38:	f7ff fdb2 	bl	6a0 <_atoi>
     b3c:	6438      	str	r0, [r7, #64]	; 0x40
     b3e:	e018      	b.n	b72 <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     b40:	683b      	ldr	r3, [r7, #0]
     b42:	781b      	ldrb	r3, [r3, #0]
     b44:	2b2a      	cmp	r3, #42	; 0x2a
     b46:	d114      	bne.n	b72 <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     b48:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b4a:	1d1a      	adds	r2, r3, #4
     b4c:	65ba      	str	r2, [r7, #88]	; 0x58
     b4e:	681b      	ldr	r3, [r3, #0]
     b50:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     b52:	6a3b      	ldr	r3, [r7, #32]
     b54:	2b00      	cmp	r3, #0
     b56:	da07      	bge.n	b68 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     b58:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b5a:	f043 0302 	orr.w	r3, r3, #2
     b5e:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     b60:	6a3b      	ldr	r3, [r7, #32]
     b62:	425b      	negs	r3, r3
     b64:	643b      	str	r3, [r7, #64]	; 0x40
     b66:	e001      	b.n	b6c <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     b68:	6a3b      	ldr	r3, [r7, #32]
     b6a:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     b6c:	683b      	ldr	r3, [r7, #0]
     b6e:	3301      	adds	r3, #1
     b70:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     b72:	2300      	movs	r3, #0
     b74:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     b76:	683b      	ldr	r3, [r7, #0]
     b78:	781b      	ldrb	r3, [r3, #0]
     b7a:	2b2e      	cmp	r3, #46	; 0x2e
     b7c:	d124      	bne.n	bc8 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     b7e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b80:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     b84:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     b86:	683b      	ldr	r3, [r7, #0]
     b88:	3301      	adds	r3, #1
     b8a:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     b8c:	683b      	ldr	r3, [r7, #0]
     b8e:	781b      	ldrb	r3, [r3, #0]
     b90:	4618      	mov	r0, r3
     b92:	f7ff fd6f 	bl	674 <_is_digit>
     b96:	4603      	mov	r3, r0
     b98:	2b00      	cmp	r3, #0
     b9a:	d005      	beq.n	ba8 <_vsnprintf+0x19a>
        precision = _atoi(&format);
     b9c:	463b      	mov	r3, r7
     b9e:	4618      	mov	r0, r3
     ba0:	f7ff fd7e 	bl	6a0 <_atoi>
     ba4:	63f8      	str	r0, [r7, #60]	; 0x3c
     ba6:	e00f      	b.n	bc8 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     ba8:	683b      	ldr	r3, [r7, #0]
     baa:	781b      	ldrb	r3, [r3, #0]
     bac:	2b2a      	cmp	r3, #42	; 0x2a
     bae:	d10b      	bne.n	bc8 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     bb0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     bb2:	1d1a      	adds	r2, r3, #4
     bb4:	65ba      	str	r2, [r7, #88]	; 0x58
     bb6:	681b      	ldr	r3, [r3, #0]
     bb8:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     bba:	69fb      	ldr	r3, [r7, #28]
     bbc:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     bc0:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     bc2:	683b      	ldr	r3, [r7, #0]
     bc4:	3301      	adds	r3, #1
     bc6:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     bc8:	683b      	ldr	r3, [r7, #0]
     bca:	781b      	ldrb	r3, [r3, #0]
     bcc:	3b68      	subs	r3, #104	; 0x68
     bce:	2b12      	cmp	r3, #18
     bd0:	d866      	bhi.n	ca0 <_vsnprintf+0x292>
     bd2:	a201      	add	r2, pc, #4	; (adr r2, bd8 <_vsnprintf+0x1ca>)
     bd4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     bd8:	00000c4b 	.word	0x00000c4b
     bdc:	00000ca1 	.word	0x00000ca1
     be0:	00000c81 	.word	0x00000c81
     be4:	00000ca1 	.word	0x00000ca1
     be8:	00000c25 	.word	0x00000c25
     bec:	00000ca1 	.word	0x00000ca1
     bf0:	00000ca1 	.word	0x00000ca1
     bf4:	00000ca1 	.word	0x00000ca1
     bf8:	00000ca1 	.word	0x00000ca1
     bfc:	00000ca1 	.word	0x00000ca1
     c00:	00000ca1 	.word	0x00000ca1
     c04:	00000ca1 	.word	0x00000ca1
     c08:	00000c71 	.word	0x00000c71
     c0c:	00000ca1 	.word	0x00000ca1
     c10:	00000ca1 	.word	0x00000ca1
     c14:	00000ca1 	.word	0x00000ca1
     c18:	00000ca1 	.word	0x00000ca1
     c1c:	00000ca1 	.word	0x00000ca1
     c20:	00000c91 	.word	0x00000c91
      case 'l' :
        flags |= FLAGS_LONG;
     c24:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c26:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c2a:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c2c:	683b      	ldr	r3, [r7, #0]
     c2e:	3301      	adds	r3, #1
     c30:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     c32:	683b      	ldr	r3, [r7, #0]
     c34:	781b      	ldrb	r3, [r3, #0]
     c36:	2b6c      	cmp	r3, #108	; 0x6c
     c38:	d134      	bne.n	ca4 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     c3a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c3c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c40:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c42:	683b      	ldr	r3, [r7, #0]
     c44:	3301      	adds	r3, #1
     c46:	603b      	str	r3, [r7, #0]
        }
        break;
     c48:	e02c      	b.n	ca4 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     c4a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c4c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     c50:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c52:	683b      	ldr	r3, [r7, #0]
     c54:	3301      	adds	r3, #1
     c56:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     c58:	683b      	ldr	r3, [r7, #0]
     c5a:	781b      	ldrb	r3, [r3, #0]
     c5c:	2b68      	cmp	r3, #104	; 0x68
     c5e:	d125      	bne.n	cac <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     c60:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c62:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     c66:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c68:	683b      	ldr	r3, [r7, #0]
     c6a:	3301      	adds	r3, #1
     c6c:	603b      	str	r3, [r7, #0]
        }
        break;
     c6e:	e01d      	b.n	cac <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c70:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c72:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c76:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c78:	683b      	ldr	r3, [r7, #0]
     c7a:	3301      	adds	r3, #1
     c7c:	603b      	str	r3, [r7, #0]
        break;
     c7e:	e016      	b.n	cae <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c80:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c82:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c86:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c88:	683b      	ldr	r3, [r7, #0]
     c8a:	3301      	adds	r3, #1
     c8c:	603b      	str	r3, [r7, #0]
        break;
     c8e:	e00e      	b.n	cae <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c90:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c92:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c96:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c98:	683b      	ldr	r3, [r7, #0]
     c9a:	3301      	adds	r3, #1
     c9c:	603b      	str	r3, [r7, #0]
        break;
     c9e:	e006      	b.n	cae <_vsnprintf+0x2a0>
      default :
        break;
     ca0:	bf00      	nop
     ca2:	e004      	b.n	cae <_vsnprintf+0x2a0>
        break;
     ca4:	bf00      	nop
     ca6:	e002      	b.n	cae <_vsnprintf+0x2a0>
     ca8:	000005d1 	.word	0x000005d1
        break;
     cac:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     cae:	683b      	ldr	r3, [r7, #0]
     cb0:	781b      	ldrb	r3, [r3, #0]
     cb2:	3b25      	subs	r3, #37	; 0x25
     cb4:	2b53      	cmp	r3, #83	; 0x53
     cb6:	f200 826a 	bhi.w	118e <_vsnprintf+0x780>
     cba:	a201      	add	r2, pc, #4	; (adr r2, cc0 <_vsnprintf+0x2b2>)
     cbc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     cc0:	00001177 	.word	0x00001177
     cc4:	0000118f 	.word	0x0000118f
     cc8:	0000118f 	.word	0x0000118f
     ccc:	0000118f 	.word	0x0000118f
     cd0:	0000118f 	.word	0x0000118f
     cd4:	0000118f 	.word	0x0000118f
     cd8:	0000118f 	.word	0x0000118f
     cdc:	0000118f 	.word	0x0000118f
     ce0:	0000118f 	.word	0x0000118f
     ce4:	0000118f 	.word	0x0000118f
     ce8:	0000118f 	.word	0x0000118f
     cec:	0000118f 	.word	0x0000118f
     cf0:	0000118f 	.word	0x0000118f
     cf4:	0000118f 	.word	0x0000118f
     cf8:	0000118f 	.word	0x0000118f
     cfc:	0000118f 	.word	0x0000118f
     d00:	0000118f 	.word	0x0000118f
     d04:	0000118f 	.word	0x0000118f
     d08:	0000118f 	.word	0x0000118f
     d0c:	0000118f 	.word	0x0000118f
     d10:	0000118f 	.word	0x0000118f
     d14:	0000118f 	.word	0x0000118f
     d18:	0000118f 	.word	0x0000118f
     d1c:	0000118f 	.word	0x0000118f
     d20:	0000118f 	.word	0x0000118f
     d24:	0000118f 	.word	0x0000118f
     d28:	0000118f 	.word	0x0000118f
     d2c:	0000118f 	.word	0x0000118f
     d30:	0000118f 	.word	0x0000118f
     d34:	0000118f 	.word	0x0000118f
     d38:	0000118f 	.word	0x0000118f
     d3c:	0000118f 	.word	0x0000118f
     d40:	0000118f 	.word	0x0000118f
     d44:	0000118f 	.word	0x0000118f
     d48:	0000118f 	.word	0x0000118f
     d4c:	0000118f 	.word	0x0000118f
     d50:	0000118f 	.word	0x0000118f
     d54:	0000118f 	.word	0x0000118f
     d58:	0000118f 	.word	0x0000118f
     d5c:	0000118f 	.word	0x0000118f
     d60:	0000118f 	.word	0x0000118f
     d64:	0000118f 	.word	0x0000118f
     d68:	0000118f 	.word	0x0000118f
     d6c:	0000118f 	.word	0x0000118f
     d70:	0000118f 	.word	0x0000118f
     d74:	0000118f 	.word	0x0000118f
     d78:	0000118f 	.word	0x0000118f
     d7c:	0000118f 	.word	0x0000118f
     d80:	0000118f 	.word	0x0000118f
     d84:	0000118f 	.word	0x0000118f
     d88:	0000118f 	.word	0x0000118f
     d8c:	00000e11 	.word	0x00000e11
     d90:	0000118f 	.word	0x0000118f
     d94:	0000118f 	.word	0x0000118f
     d98:	0000118f 	.word	0x0000118f
     d9c:	0000118f 	.word	0x0000118f
     da0:	0000118f 	.word	0x0000118f
     da4:	0000118f 	.word	0x0000118f
     da8:	0000118f 	.word	0x0000118f
     dac:	0000118f 	.word	0x0000118f
     db0:	0000118f 	.word	0x0000118f
     db4:	00000e11 	.word	0x00000e11
     db8:	00000ffd 	.word	0x00000ffd
     dbc:	00000e11 	.word	0x00000e11
     dc0:	0000118f 	.word	0x0000118f
     dc4:	0000118f 	.word	0x0000118f
     dc8:	0000118f 	.word	0x0000118f
     dcc:	0000118f 	.word	0x0000118f
     dd0:	00000e11 	.word	0x00000e11
     dd4:	0000118f 	.word	0x0000118f
     dd8:	0000118f 	.word	0x0000118f
     ddc:	0000118f 	.word	0x0000118f
     de0:	0000118f 	.word	0x0000118f
     de4:	0000118f 	.word	0x0000118f
     de8:	00000e11 	.word	0x00000e11
     dec:	00001135 	.word	0x00001135
     df0:	0000118f 	.word	0x0000118f
     df4:	0000118f 	.word	0x0000118f
     df8:	00001071 	.word	0x00001071
     dfc:	0000118f 	.word	0x0000118f
     e00:	00000e11 	.word	0x00000e11
     e04:	0000118f 	.word	0x0000118f
     e08:	0000118f 	.word	0x0000118f
     e0c:	00000e11 	.word	0x00000e11
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
     e10:	683b      	ldr	r3, [r7, #0]
     e12:	781b      	ldrb	r3, [r3, #0]
     e14:	2b78      	cmp	r3, #120	; 0x78
     e16:	d003      	beq.n	e20 <_vsnprintf+0x412>
     e18:	683b      	ldr	r3, [r7, #0]
     e1a:	781b      	ldrb	r3, [r3, #0]
     e1c:	2b58      	cmp	r3, #88	; 0x58
     e1e:	d102      	bne.n	e26 <_vsnprintf+0x418>
          base = 16U;
     e20:	2310      	movs	r3, #16
     e22:	633b      	str	r3, [r7, #48]	; 0x30
     e24:	e013      	b.n	e4e <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
     e26:	683b      	ldr	r3, [r7, #0]
     e28:	781b      	ldrb	r3, [r3, #0]
     e2a:	2b6f      	cmp	r3, #111	; 0x6f
     e2c:	d102      	bne.n	e34 <_vsnprintf+0x426>
          base =  8U;
     e2e:	2308      	movs	r3, #8
     e30:	633b      	str	r3, [r7, #48]	; 0x30
     e32:	e00c      	b.n	e4e <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
     e34:	683b      	ldr	r3, [r7, #0]
     e36:	781b      	ldrb	r3, [r3, #0]
     e38:	2b62      	cmp	r3, #98	; 0x62
     e3a:	d102      	bne.n	e42 <_vsnprintf+0x434>
          base =  2U;
     e3c:	2302      	movs	r3, #2
     e3e:	633b      	str	r3, [r7, #48]	; 0x30
     e40:	e005      	b.n	e4e <_vsnprintf+0x440>
        }
        else {
          base = 10U;
     e42:	230a      	movs	r3, #10
     e44:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
     e46:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e48:	f023 0310 	bic.w	r3, r3, #16
     e4c:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
     e4e:	683b      	ldr	r3, [r7, #0]
     e50:	781b      	ldrb	r3, [r3, #0]
     e52:	2b58      	cmp	r3, #88	; 0x58
     e54:	d103      	bne.n	e5e <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
     e56:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e58:	f043 0320 	orr.w	r3, r3, #32
     e5c:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
     e5e:	683b      	ldr	r3, [r7, #0]
     e60:	781b      	ldrb	r3, [r3, #0]
     e62:	2b69      	cmp	r3, #105	; 0x69
     e64:	d007      	beq.n	e76 <_vsnprintf+0x468>
     e66:	683b      	ldr	r3, [r7, #0]
     e68:	781b      	ldrb	r3, [r3, #0]
     e6a:	2b64      	cmp	r3, #100	; 0x64
     e6c:	d003      	beq.n	e76 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
     e6e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e70:	f023 030c 	bic.w	r3, r3, #12
     e74:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
     e76:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e78:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     e7c:	2b00      	cmp	r3, #0
     e7e:	d003      	beq.n	e88 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
     e80:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e82:	f023 0301 	bic.w	r3, r3, #1
     e86:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
     e88:	683b      	ldr	r3, [r7, #0]
     e8a:	781b      	ldrb	r3, [r3, #0]
     e8c:	2b69      	cmp	r3, #105	; 0x69
     e8e:	d003      	beq.n	e98 <_vsnprintf+0x48a>
     e90:	683b      	ldr	r3, [r7, #0]
     e92:	781b      	ldrb	r3, [r3, #0]
     e94:	2b64      	cmp	r3, #100	; 0x64
     e96:	d15e      	bne.n	f56 <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
     e98:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e9a:	f403 7300 	and.w	r3, r3, #512	; 0x200
     e9e:	2b00      	cmp	r3, #0
     ea0:	f040 80a8 	bne.w	ff4 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     ea4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ea6:	f403 7380 	and.w	r3, r3, #256	; 0x100
     eaa:	2b00      	cmp	r3, #0
     eac:	d01e      	beq.n	eec <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
     eae:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     eb0:	1d1a      	adds	r2, r3, #4
     eb2:	65ba      	str	r2, [r7, #88]	; 0x58
     eb4:	681b      	ldr	r3, [r3, #0]
     eb6:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     eb8:	693b      	ldr	r3, [r7, #16]
     eba:	2b00      	cmp	r3, #0
     ebc:	bfb8      	it	lt
     ebe:	425b      	neglt	r3, r3
     ec0:	4619      	mov	r1, r3
     ec2:	693b      	ldr	r3, [r7, #16]
     ec4:	0fdb      	lsrs	r3, r3, #31
     ec6:	b2db      	uxtb	r3, r3
     ec8:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     eca:	9205      	str	r2, [sp, #20]
     ecc:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     ece:	9204      	str	r2, [sp, #16]
     ed0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     ed2:	9203      	str	r2, [sp, #12]
     ed4:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     ed6:	9202      	str	r2, [sp, #8]
     ed8:	9301      	str	r3, [sp, #4]
     eda:	9100      	str	r1, [sp, #0]
     edc:	687b      	ldr	r3, [r7, #4]
     ede:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     ee0:	68b9      	ldr	r1, [r7, #8]
     ee2:	68f8      	ldr	r0, [r7, #12]
     ee4:	f7ff fd2c 	bl	940 <_ntoa_long>
     ee8:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     eea:	e083      	b.n	ff4 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
     eec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eee:	f003 0340 	and.w	r3, r3, #64	; 0x40
     ef2:	2b00      	cmp	r3, #0
     ef4:	d005      	beq.n	f02 <_vsnprintf+0x4f4>
     ef6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     ef8:	1d1a      	adds	r2, r3, #4
     efa:	65ba      	str	r2, [r7, #88]	; 0x58
     efc:	681b      	ldr	r3, [r3, #0]
     efe:	b2db      	uxtb	r3, r3
     f00:	e00e      	b.n	f20 <_vsnprintf+0x512>
     f02:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f04:	f003 0380 	and.w	r3, r3, #128	; 0x80
     f08:	2b00      	cmp	r3, #0
     f0a:	d005      	beq.n	f18 <_vsnprintf+0x50a>
     f0c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f0e:	1d1a      	adds	r2, r3, #4
     f10:	65ba      	str	r2, [r7, #88]	; 0x58
     f12:	681b      	ldr	r3, [r3, #0]
     f14:	b21b      	sxth	r3, r3
     f16:	e003      	b.n	f20 <_vsnprintf+0x512>
     f18:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f1a:	1d1a      	adds	r2, r3, #4
     f1c:	65ba      	str	r2, [r7, #88]	; 0x58
     f1e:	681b      	ldr	r3, [r3, #0]
     f20:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     f22:	697b      	ldr	r3, [r7, #20]
     f24:	2b00      	cmp	r3, #0
     f26:	bfb8      	it	lt
     f28:	425b      	neglt	r3, r3
     f2a:	4619      	mov	r1, r3
     f2c:	697b      	ldr	r3, [r7, #20]
     f2e:	0fdb      	lsrs	r3, r3, #31
     f30:	b2db      	uxtb	r3, r3
     f32:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f34:	9205      	str	r2, [sp, #20]
     f36:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f38:	9204      	str	r2, [sp, #16]
     f3a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f3c:	9203      	str	r2, [sp, #12]
     f3e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f40:	9202      	str	r2, [sp, #8]
     f42:	9301      	str	r3, [sp, #4]
     f44:	9100      	str	r1, [sp, #0]
     f46:	687b      	ldr	r3, [r7, #4]
     f48:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f4a:	68b9      	ldr	r1, [r7, #8]
     f4c:	68f8      	ldr	r0, [r7, #12]
     f4e:	f7ff fcf7 	bl	940 <_ntoa_long>
     f52:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     f54:	e04e      	b.n	ff4 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
     f56:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f58:	f403 7300 	and.w	r3, r3, #512	; 0x200
     f5c:	2b00      	cmp	r3, #0
     f5e:	d149      	bne.n	ff4 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     f60:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f62:	f403 7380 	and.w	r3, r3, #256	; 0x100
     f66:	2b00      	cmp	r3, #0
     f68:	d016      	beq.n	f98 <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
     f6a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f6c:	1d1a      	adds	r2, r3, #4
     f6e:	65ba      	str	r2, [r7, #88]	; 0x58
     f70:	681b      	ldr	r3, [r3, #0]
     f72:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f74:	9205      	str	r2, [sp, #20]
     f76:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f78:	9204      	str	r2, [sp, #16]
     f7a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f7c:	9203      	str	r2, [sp, #12]
     f7e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f80:	9202      	str	r2, [sp, #8]
     f82:	2200      	movs	r2, #0
     f84:	9201      	str	r2, [sp, #4]
     f86:	9300      	str	r3, [sp, #0]
     f88:	687b      	ldr	r3, [r7, #4]
     f8a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f8c:	68b9      	ldr	r1, [r7, #8]
     f8e:	68f8      	ldr	r0, [r7, #12]
     f90:	f7ff fcd6 	bl	940 <_ntoa_long>
     f94:	6378      	str	r0, [r7, #52]	; 0x34
     f96:	e02d      	b.n	ff4 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
     f98:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f9a:	f003 0340 	and.w	r3, r3, #64	; 0x40
     f9e:	2b00      	cmp	r3, #0
     fa0:	d005      	beq.n	fae <_vsnprintf+0x5a0>
     fa2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fa4:	1d1a      	adds	r2, r3, #4
     fa6:	65ba      	str	r2, [r7, #88]	; 0x58
     fa8:	681b      	ldr	r3, [r3, #0]
     faa:	b2db      	uxtb	r3, r3
     fac:	e00e      	b.n	fcc <_vsnprintf+0x5be>
     fae:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fb0:	f003 0380 	and.w	r3, r3, #128	; 0x80
     fb4:	2b00      	cmp	r3, #0
     fb6:	d005      	beq.n	fc4 <_vsnprintf+0x5b6>
     fb8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fba:	1d1a      	adds	r2, r3, #4
     fbc:	65ba      	str	r2, [r7, #88]	; 0x58
     fbe:	681b      	ldr	r3, [r3, #0]
     fc0:	b29b      	uxth	r3, r3
     fc2:	e003      	b.n	fcc <_vsnprintf+0x5be>
     fc4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fc6:	1d1a      	adds	r2, r3, #4
     fc8:	65ba      	str	r2, [r7, #88]	; 0x58
     fca:	681b      	ldr	r3, [r3, #0]
     fcc:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
     fce:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fd0:	9305      	str	r3, [sp, #20]
     fd2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     fd4:	9304      	str	r3, [sp, #16]
     fd6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     fd8:	9303      	str	r3, [sp, #12]
     fda:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     fdc:	9302      	str	r3, [sp, #8]
     fde:	2300      	movs	r3, #0
     fe0:	9301      	str	r3, [sp, #4]
     fe2:	69bb      	ldr	r3, [r7, #24]
     fe4:	9300      	str	r3, [sp, #0]
     fe6:	687b      	ldr	r3, [r7, #4]
     fe8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     fea:	68b9      	ldr	r1, [r7, #8]
     fec:	68f8      	ldr	r0, [r7, #12]
     fee:	f7ff fca7 	bl	940 <_ntoa_long>
     ff2:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
     ff4:	683b      	ldr	r3, [r7, #0]
     ff6:	3301      	adds	r3, #1
     ff8:	603b      	str	r3, [r7, #0]
        break;
     ffa:	e0d5      	b.n	11a8 <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
     ffc:	2301      	movs	r3, #1
     ffe:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    1000:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1002:	f003 0302 	and.w	r3, r3, #2
    1006:	2b00      	cmp	r3, #0
    1008:	d10e      	bne.n	1028 <_vsnprintf+0x61a>
          while (l++ < width) {
    100a:	e007      	b.n	101c <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
    100c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    100e:	1c53      	adds	r3, r2, #1
    1010:	637b      	str	r3, [r7, #52]	; 0x34
    1012:	68fc      	ldr	r4, [r7, #12]
    1014:	687b      	ldr	r3, [r7, #4]
    1016:	68b9      	ldr	r1, [r7, #8]
    1018:	2020      	movs	r0, #32
    101a:	47a0      	blx	r4
          while (l++ < width) {
    101c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    101e:	1c5a      	adds	r2, r3, #1
    1020:	62fa      	str	r2, [r7, #44]	; 0x2c
    1022:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1024:	429a      	cmp	r2, r3
    1026:	d8f1      	bhi.n	100c <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    1028:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    102a:	1d1a      	adds	r2, r3, #4
    102c:	65ba      	str	r2, [r7, #88]	; 0x58
    102e:	681b      	ldr	r3, [r3, #0]
    1030:	b2d8      	uxtb	r0, r3
    1032:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1034:	1c53      	adds	r3, r2, #1
    1036:	637b      	str	r3, [r7, #52]	; 0x34
    1038:	68fc      	ldr	r4, [r7, #12]
    103a:	687b      	ldr	r3, [r7, #4]
    103c:	68b9      	ldr	r1, [r7, #8]
    103e:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    1040:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1042:	f003 0302 	and.w	r3, r3, #2
    1046:	2b00      	cmp	r3, #0
    1048:	d00e      	beq.n	1068 <_vsnprintf+0x65a>
          while (l++ < width) {
    104a:	e007      	b.n	105c <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
    104c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    104e:	1c53      	adds	r3, r2, #1
    1050:	637b      	str	r3, [r7, #52]	; 0x34
    1052:	68fc      	ldr	r4, [r7, #12]
    1054:	687b      	ldr	r3, [r7, #4]
    1056:	68b9      	ldr	r1, [r7, #8]
    1058:	2020      	movs	r0, #32
    105a:	47a0      	blx	r4
          while (l++ < width) {
    105c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    105e:	1c5a      	adds	r2, r3, #1
    1060:	62fa      	str	r2, [r7, #44]	; 0x2c
    1062:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1064:	429a      	cmp	r2, r3
    1066:	d8f1      	bhi.n	104c <_vsnprintf+0x63e>
          }
        }
        format++;
    1068:	683b      	ldr	r3, [r7, #0]
    106a:	3301      	adds	r3, #1
    106c:	603b      	str	r3, [r7, #0]
        break;
    106e:	e09b      	b.n	11a8 <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    1070:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1072:	1d1a      	adds	r2, r3, #4
    1074:	65ba      	str	r2, [r7, #88]	; 0x58
    1076:	681b      	ldr	r3, [r3, #0]
    1078:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    107a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    107c:	2b00      	cmp	r3, #0
    107e:	d001      	beq.n	1084 <_vsnprintf+0x676>
    1080:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1082:	e001      	b.n	1088 <_vsnprintf+0x67a>
    1084:	f04f 33ff 	mov.w	r3, #4294967295
    1088:	4619      	mov	r1, r3
    108a:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    108c:	f7ff fad6 	bl	63c <_strnlen_s>
    1090:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    1092:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1094:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1098:	2b00      	cmp	r3, #0
    109a:	d005      	beq.n	10a8 <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
    109c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    109e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10a0:	4293      	cmp	r3, r2
    10a2:	bf28      	it	cs
    10a4:	4613      	movcs	r3, r2
    10a6:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    10a8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10aa:	f003 0302 	and.w	r3, r3, #2
    10ae:	2b00      	cmp	r3, #0
    10b0:	d11a      	bne.n	10e8 <_vsnprintf+0x6da>
          while (l++ < width) {
    10b2:	e007      	b.n	10c4 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
    10b4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10b6:	1c53      	adds	r3, r2, #1
    10b8:	637b      	str	r3, [r7, #52]	; 0x34
    10ba:	68fc      	ldr	r4, [r7, #12]
    10bc:	687b      	ldr	r3, [r7, #4]
    10be:	68b9      	ldr	r1, [r7, #8]
    10c0:	2020      	movs	r0, #32
    10c2:	47a0      	blx	r4
          while (l++ < width) {
    10c4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10c6:	1c5a      	adds	r2, r3, #1
    10c8:	627a      	str	r2, [r7, #36]	; 0x24
    10ca:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    10cc:	429a      	cmp	r2, r3
    10ce:	d8f1      	bhi.n	10b4 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    10d0:	e00a      	b.n	10e8 <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
    10d2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    10d4:	1c5a      	adds	r2, r3, #1
    10d6:	62ba      	str	r2, [r7, #40]	; 0x28
    10d8:	7818      	ldrb	r0, [r3, #0]
    10da:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10dc:	1c53      	adds	r3, r2, #1
    10de:	637b      	str	r3, [r7, #52]	; 0x34
    10e0:	68fc      	ldr	r4, [r7, #12]
    10e2:	687b      	ldr	r3, [r7, #4]
    10e4:	68b9      	ldr	r1, [r7, #8]
    10e6:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    10e8:	6abb      	ldr	r3, [r7, #40]	; 0x28
    10ea:	781b      	ldrb	r3, [r3, #0]
    10ec:	2b00      	cmp	r3, #0
    10ee:	d009      	beq.n	1104 <_vsnprintf+0x6f6>
    10f0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10f2:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    10f6:	2b00      	cmp	r3, #0
    10f8:	d0eb      	beq.n	10d2 <_vsnprintf+0x6c4>
    10fa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10fc:	1e5a      	subs	r2, r3, #1
    10fe:	63fa      	str	r2, [r7, #60]	; 0x3c
    1100:	2b00      	cmp	r3, #0
    1102:	d1e6      	bne.n	10d2 <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    1104:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1106:	f003 0302 	and.w	r3, r3, #2
    110a:	2b00      	cmp	r3, #0
    110c:	d00e      	beq.n	112c <_vsnprintf+0x71e>
          while (l++ < width) {
    110e:	e007      	b.n	1120 <_vsnprintf+0x712>
            out(' ', buffer, idx++, maxlen);
    1110:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1112:	1c53      	adds	r3, r2, #1
    1114:	637b      	str	r3, [r7, #52]	; 0x34
    1116:	68fc      	ldr	r4, [r7, #12]
    1118:	687b      	ldr	r3, [r7, #4]
    111a:	68b9      	ldr	r1, [r7, #8]
    111c:	2020      	movs	r0, #32
    111e:	47a0      	blx	r4
          while (l++ < width) {
    1120:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1122:	1c5a      	adds	r2, r3, #1
    1124:	627a      	str	r2, [r7, #36]	; 0x24
    1126:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1128:	429a      	cmp	r2, r3
    112a:	d8f1      	bhi.n	1110 <_vsnprintf+0x702>
          }
        }
        format++;
    112c:	683b      	ldr	r3, [r7, #0]
    112e:	3301      	adds	r3, #1
    1130:	603b      	str	r3, [r7, #0]
        break;
    1132:	e039      	b.n	11a8 <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    1134:	2308      	movs	r3, #8
    1136:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    1138:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    113a:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    113e:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    1140:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1142:	1d1a      	adds	r2, r3, #4
    1144:	65ba      	str	r2, [r7, #88]	; 0x58
    1146:	681b      	ldr	r3, [r3, #0]
    1148:	461a      	mov	r2, r3
    114a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    114c:	9305      	str	r3, [sp, #20]
    114e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1150:	9304      	str	r3, [sp, #16]
    1152:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1154:	9303      	str	r3, [sp, #12]
    1156:	2310      	movs	r3, #16
    1158:	9302      	str	r3, [sp, #8]
    115a:	2300      	movs	r3, #0
    115c:	9301      	str	r3, [sp, #4]
    115e:	9200      	str	r2, [sp, #0]
    1160:	687b      	ldr	r3, [r7, #4]
    1162:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1164:	68b9      	ldr	r1, [r7, #8]
    1166:	68f8      	ldr	r0, [r7, #12]
    1168:	f7ff fbea 	bl	940 <_ntoa_long>
    116c:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    116e:	683b      	ldr	r3, [r7, #0]
    1170:	3301      	adds	r3, #1
    1172:	603b      	str	r3, [r7, #0]
        break;
    1174:	e018      	b.n	11a8 <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    1176:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1178:	1c53      	adds	r3, r2, #1
    117a:	637b      	str	r3, [r7, #52]	; 0x34
    117c:	68fc      	ldr	r4, [r7, #12]
    117e:	687b      	ldr	r3, [r7, #4]
    1180:	68b9      	ldr	r1, [r7, #8]
    1182:	2025      	movs	r0, #37	; 0x25
    1184:	47a0      	blx	r4
        format++;
    1186:	683b      	ldr	r3, [r7, #0]
    1188:	3301      	adds	r3, #1
    118a:	603b      	str	r3, [r7, #0]
        break;
    118c:	e00c      	b.n	11a8 <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    118e:	683b      	ldr	r3, [r7, #0]
    1190:	7818      	ldrb	r0, [r3, #0]
    1192:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1194:	1c53      	adds	r3, r2, #1
    1196:	637b      	str	r3, [r7, #52]	; 0x34
    1198:	68fc      	ldr	r4, [r7, #12]
    119a:	687b      	ldr	r3, [r7, #4]
    119c:	68b9      	ldr	r1, [r7, #8]
    119e:	47a0      	blx	r4
        format++;
    11a0:	683b      	ldr	r3, [r7, #0]
    11a2:	3301      	adds	r3, #1
    11a4:	603b      	str	r3, [r7, #0]
        break;
    11a6:	bf00      	nop
  while (*format)
    11a8:	683b      	ldr	r3, [r7, #0]
    11aa:	781b      	ldrb	r3, [r3, #0]
    11ac:	2b00      	cmp	r3, #0
    11ae:	f47f ac3e 	bne.w	a2e <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    11b2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11b4:	687b      	ldr	r3, [r7, #4]
    11b6:	429a      	cmp	r2, r3
    11b8:	d302      	bcc.n	11c0 <_vsnprintf+0x7b2>
    11ba:	687b      	ldr	r3, [r7, #4]
    11bc:	1e5a      	subs	r2, r3, #1
    11be:	e000      	b.n	11c2 <_vsnprintf+0x7b4>
    11c0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11c2:	68fc      	ldr	r4, [r7, #12]
    11c4:	687b      	ldr	r3, [r7, #4]
    11c6:	68b9      	ldr	r1, [r7, #8]
    11c8:	2000      	movs	r0, #0
    11ca:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    11cc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    11ce:	4618      	mov	r0, r3
    11d0:	374c      	adds	r7, #76	; 0x4c
    11d2:	46bd      	mov	sp, r7
    11d4:	bd90      	pop	{r4, r7, pc}

000011d6 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    11d6:	b40f      	push	{r0, r1, r2, r3}
    11d8:	b580      	push	{r7, lr}
    11da:	b086      	sub	sp, #24
    11dc:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    11de:	f107 031c 	add.w	r3, r7, #28
    11e2:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    11e4:	1d39      	adds	r1, r7, #4
    11e6:	68bb      	ldr	r3, [r7, #8]
    11e8:	9300      	str	r3, [sp, #0]
    11ea:	69bb      	ldr	r3, [r7, #24]
    11ec:	f04f 32ff 	mov.w	r2, #4294967295
    11f0:	4805      	ldr	r0, [pc, #20]	; (1208 <printf_+0x32>)
    11f2:	f7ff fc0c 	bl	a0e <_vsnprintf>
    11f6:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    11f8:	68fb      	ldr	r3, [r7, #12]
}
    11fa:	4618      	mov	r0, r3
    11fc:	3710      	adds	r7, #16
    11fe:	46bd      	mov	sp, r7
    1200:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1204:	b004      	add	sp, #16
    1206:	4770      	bx	lr
    1208:	000005eb 	.word	0x000005eb

0000120c <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    120c:	b40e      	push	{r1, r2, r3}
    120e:	b580      	push	{r7, lr}
    1210:	b087      	sub	sp, #28
    1212:	af02      	add	r7, sp, #8
    1214:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    1216:	f107 0320 	add.w	r3, r7, #32
    121a:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    121c:	68bb      	ldr	r3, [r7, #8]
    121e:	9300      	str	r3, [sp, #0]
    1220:	69fb      	ldr	r3, [r7, #28]
    1222:	f04f 32ff 	mov.w	r2, #4294967295
    1226:	6879      	ldr	r1, [r7, #4]
    1228:	4805      	ldr	r0, [pc, #20]	; (1240 <sprintf_+0x34>)
    122a:	f7ff fbf0 	bl	a0e <_vsnprintf>
    122e:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1230:	68fb      	ldr	r3, [r7, #12]
}
    1232:	4618      	mov	r0, r3
    1234:	3714      	adds	r7, #20
    1236:	46bd      	mov	sp, r7
    1238:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    123c:	b003      	add	sp, #12
    123e:	4770      	bx	lr
    1240:	000005a5 	.word	0x000005a5

00001244 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1244:	b40c      	push	{r2, r3}
    1246:	b580      	push	{r7, lr}
    1248:	b086      	sub	sp, #24
    124a:	af02      	add	r7, sp, #8
    124c:	6078      	str	r0, [r7, #4]
    124e:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    1250:	f107 031c 	add.w	r3, r7, #28
    1254:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    1256:	68bb      	ldr	r3, [r7, #8]
    1258:	9300      	str	r3, [sp, #0]
    125a:	69bb      	ldr	r3, [r7, #24]
    125c:	683a      	ldr	r2, [r7, #0]
    125e:	6879      	ldr	r1, [r7, #4]
    1260:	4805      	ldr	r0, [pc, #20]	; (1278 <snprintf_+0x34>)
    1262:	f7ff fbd4 	bl	a0e <_vsnprintf>
    1266:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1268:	68fb      	ldr	r3, [r7, #12]
}
    126a:	4618      	mov	r0, r3
    126c:	3710      	adds	r7, #16
    126e:	46bd      	mov	sp, r7
    1270:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1274:	b002      	add	sp, #8
    1276:	4770      	bx	lr
    1278:	000005a5 	.word	0x000005a5

0000127c <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    127c:	b580      	push	{r7, lr}
    127e:	b086      	sub	sp, #24
    1280:	af02      	add	r7, sp, #8
    1282:	6078      	str	r0, [r7, #4]
    1284:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1286:	f107 010c 	add.w	r1, r7, #12
    128a:	683b      	ldr	r3, [r7, #0]
    128c:	9300      	str	r3, [sp, #0]
    128e:	687b      	ldr	r3, [r7, #4]
    1290:	f04f 32ff 	mov.w	r2, #4294967295
    1294:	4803      	ldr	r0, [pc, #12]	; (12a4 <vprintf_+0x28>)
    1296:	f7ff fbba 	bl	a0e <_vsnprintf>
    129a:	4603      	mov	r3, r0
}
    129c:	4618      	mov	r0, r3
    129e:	3710      	adds	r7, #16
    12a0:	46bd      	mov	sp, r7
    12a2:	bd80      	pop	{r7, pc}
    12a4:	000005eb 	.word	0x000005eb

000012a8 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    12a8:	b580      	push	{r7, lr}
    12aa:	b086      	sub	sp, #24
    12ac:	af02      	add	r7, sp, #8
    12ae:	60f8      	str	r0, [r7, #12]
    12b0:	60b9      	str	r1, [r7, #8]
    12b2:	607a      	str	r2, [r7, #4]
    12b4:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    12b6:	683b      	ldr	r3, [r7, #0]
    12b8:	9300      	str	r3, [sp, #0]
    12ba:	687b      	ldr	r3, [r7, #4]
    12bc:	68ba      	ldr	r2, [r7, #8]
    12be:	68f9      	ldr	r1, [r7, #12]
    12c0:	4803      	ldr	r0, [pc, #12]	; (12d0 <vsnprintf_+0x28>)
    12c2:	f7ff fba4 	bl	a0e <_vsnprintf>
    12c6:	4603      	mov	r3, r0
}
    12c8:	4618      	mov	r0, r3
    12ca:	3710      	adds	r7, #16
    12cc:	46bd      	mov	sp, r7
    12ce:	bd80      	pop	{r7, pc}
    12d0:	000005a5 	.word	0x000005a5

000012d4 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    12d4:	b40c      	push	{r2, r3}
    12d6:	b580      	push	{r7, lr}
    12d8:	b088      	sub	sp, #32
    12da:	af02      	add	r7, sp, #8
    12dc:	6078      	str	r0, [r7, #4]
    12de:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    12e0:	f107 0324 	add.w	r3, r7, #36	; 0x24
    12e4:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    12e6:	687b      	ldr	r3, [r7, #4]
    12e8:	60bb      	str	r3, [r7, #8]
    12ea:	683b      	ldr	r3, [r7, #0]
    12ec:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    12ee:	f107 0108 	add.w	r1, r7, #8
    12f2:	693b      	ldr	r3, [r7, #16]
    12f4:	9300      	str	r3, [sp, #0]
    12f6:	6a3b      	ldr	r3, [r7, #32]
    12f8:	f04f 32ff 	mov.w	r2, #4294967295
    12fc:	4805      	ldr	r0, [pc, #20]	; (1314 <fctprintf+0x40>)
    12fe:	f7ff fb86 	bl	a0e <_vsnprintf>
    1302:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1304:	697b      	ldr	r3, [r7, #20]
}
    1306:	4618      	mov	r0, r3
    1308:	3718      	adds	r7, #24
    130a:	46bd      	mov	sp, r7
    130c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1310:	b002      	add	sp, #8
    1312:	4770      	bx	lr
    1314:	00000611 	.word	0x00000611

00001318 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
    1318:	b480      	push	{r7}
    131a:	b083      	sub	sp, #12
    131c:	af00      	add	r7, sp, #0
    131e:	4603      	mov	r3, r0
    1320:	6039      	str	r1, [r7, #0]
    1322:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
    1324:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1328:	2b00      	cmp	r3, #0
    132a:	db0a      	blt.n	1342 <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    132c:	683b      	ldr	r3, [r7, #0]
    132e:	b2da      	uxtb	r2, r3
    1330:	490c      	ldr	r1, [pc, #48]	; (1364 <__NVIC_SetPriority+0x4c>)
    1332:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1336:	0112      	lsls	r2, r2, #4
    1338:	b2d2      	uxtb	r2, r2
    133a:	440b      	add	r3, r1
    133c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
    1340:	e00a      	b.n	1358 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    1342:	683b      	ldr	r3, [r7, #0]
    1344:	b2da      	uxtb	r2, r3
    1346:	4908      	ldr	r1, [pc, #32]	; (1368 <__NVIC_SetPriority+0x50>)
    1348:	79fb      	ldrb	r3, [r7, #7]
    134a:	f003 030f 	and.w	r3, r3, #15
    134e:	3b04      	subs	r3, #4
    1350:	0112      	lsls	r2, r2, #4
    1352:	b2d2      	uxtb	r2, r2
    1354:	440b      	add	r3, r1
    1356:	761a      	strb	r2, [r3, #24]
}
    1358:	bf00      	nop
    135a:	370c      	adds	r7, #12
    135c:	46bd      	mov	sp, r7
    135e:	bc80      	pop	{r7}
    1360:	4770      	bx	lr
    1362:	bf00      	nop
    1364:	e000e100 	.word	0xe000e100
    1368:	e000ed00 	.word	0xe000ed00

0000136c <task_entry_1>:
typedef uint32_t tTaskStack;
void task_sched(void);

typedef void (*task_entry_t)(void* param);
void task_entry_1(void* param)
{
    136c:	b580      	push	{r7, lr}
    136e:	b082      	sub	sp, #8
    1370:	af00      	add	r7, sp, #0
    1372:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    1374:	4903      	ldr	r1, [pc, #12]	; (1384 <task_entry_1+0x18>)
    1376:	4804      	ldr	r0, [pc, #16]	; (1388 <task_entry_1+0x1c>)
    1378:	f7ff ff2d 	bl	11d6 <printf_>
        // delay_ms(1000);
        task_sched();
    137c:	f000 f894 	bl	14a8 <task_sched>
        printf("This is %s\n", __func__);
    1380:	e7f8      	b.n	1374 <task_entry_1+0x8>
    1382:	bf00      	nop
    1384:	000025f0 	.word	0x000025f0
    1388:	000025e4 	.word	0x000025e4

0000138c <task_entry_2>:
    }
}

void task_entry_2(void* param)
{
    138c:	b580      	push	{r7, lr}
    138e:	b082      	sub	sp, #8
    1390:	af00      	add	r7, sp, #0
    1392:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    1394:	4903      	ldr	r1, [pc, #12]	; (13a4 <task_entry_2+0x18>)
    1396:	4804      	ldr	r0, [pc, #16]	; (13a8 <task_entry_2+0x1c>)
    1398:	f7ff ff1d 	bl	11d6 <printf_>
        // delay_ms(1000);
        task_sched();
    139c:	f000 f884 	bl	14a8 <task_sched>
        printf("This is %s\n", __func__);
    13a0:	e7f8      	b.n	1394 <task_entry_2+0x8>
    13a2:	bf00      	nop
    13a4:	00002600 	.word	0x00002600
    13a8:	000025e4 	.word	0x000025e4

000013ac <trigget_pendsv>:
    }
}

void trigget_pendsv(void)
{
    13ac:	b480      	push	{r7}
    13ae:	af00      	add	r7, sp, #0
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    13b0:	4b04      	ldr	r3, [pc, #16]	; (13c4 <trigget_pendsv+0x18>)
    13b2:	685b      	ldr	r3, [r3, #4]
    13b4:	4a03      	ldr	r2, [pc, #12]	; (13c4 <trigget_pendsv+0x18>)
    13b6:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    13ba:	6053      	str	r3, [r2, #4]
}
    13bc:	bf00      	nop
    13be:	46bd      	mov	sp, r7
    13c0:	bc80      	pop	{r7}
    13c2:	4770      	bx	lr
    13c4:	e000ed00 	.word	0xe000ed00

000013c8 <task_create>:
tTaskStack stack[2][256];
task_t * current_task;
task_t * next_task;

void task_create(task_t * task, task_entry_t entry, void *param, tTaskStack* stack)
{
    13c8:	b480      	push	{r7}
    13ca:	b085      	sub	sp, #20
    13cc:	af00      	add	r7, sp, #0
    13ce:	60f8      	str	r0, [r7, #12]
    13d0:	60b9      	str	r1, [r7, #8]
    13d2:	607a      	str	r2, [r7, #4]
    13d4:	603b      	str	r3, [r7, #0]
    *(--stack) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    13d6:	683b      	ldr	r3, [r7, #0]
    13d8:	3b04      	subs	r3, #4
    13da:	603b      	str	r3, [r7, #0]
    13dc:	683b      	ldr	r3, [r7, #0]
    13de:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
    13e2:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)entry;                  // 程序的入口地址
    13e4:	683b      	ldr	r3, [r7, #0]
    13e6:	3b04      	subs	r3, #4
    13e8:	603b      	str	r3, [r7, #0]
    13ea:	68ba      	ldr	r2, [r7, #8]
    13ec:	683b      	ldr	r3, [r7, #0]
    13ee:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    13f0:	683b      	ldr	r3, [r7, #0]
    13f2:	3b04      	subs	r3, #4
    13f4:	603b      	str	r3, [r7, #0]
    13f6:	683b      	ldr	r3, [r7, #0]
    13f8:	2214      	movs	r2, #20
    13fa:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x12;                   // R12, 未用
    13fc:	683b      	ldr	r3, [r7, #0]
    13fe:	3b04      	subs	r3, #4
    1400:	603b      	str	r3, [r7, #0]
    1402:	683b      	ldr	r3, [r7, #0]
    1404:	2212      	movs	r2, #18
    1406:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x3;                    // R3, 未用
    1408:	683b      	ldr	r3, [r7, #0]
    140a:	3b04      	subs	r3, #4
    140c:	603b      	str	r3, [r7, #0]
    140e:	683b      	ldr	r3, [r7, #0]
    1410:	2203      	movs	r2, #3
    1412:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x2;                    // R2, 未用
    1414:	683b      	ldr	r3, [r7, #0]
    1416:	3b04      	subs	r3, #4
    1418:	603b      	str	r3, [r7, #0]
    141a:	683b      	ldr	r3, [r7, #0]
    141c:	2202      	movs	r2, #2
    141e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x1;                    // R1, 未用
    1420:	683b      	ldr	r3, [r7, #0]
    1422:	3b04      	subs	r3, #4
    1424:	603b      	str	r3, [r7, #0]
    1426:	683b      	ldr	r3, [r7, #0]
    1428:	2201      	movs	r2, #1
    142a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    142c:	683b      	ldr	r3, [r7, #0]
    142e:	3b04      	subs	r3, #4
    1430:	603b      	str	r3, [r7, #0]
    1432:	687a      	ldr	r2, [r7, #4]
    1434:	683b      	ldr	r3, [r7, #0]
    1436:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x11;                   // R11, 未用
    1438:	683b      	ldr	r3, [r7, #0]
    143a:	3b04      	subs	r3, #4
    143c:	603b      	str	r3, [r7, #0]
    143e:	683b      	ldr	r3, [r7, #0]
    1440:	2211      	movs	r2, #17
    1442:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x10;                   // R10, 未用
    1444:	683b      	ldr	r3, [r7, #0]
    1446:	3b04      	subs	r3, #4
    1448:	603b      	str	r3, [r7, #0]
    144a:	683b      	ldr	r3, [r7, #0]
    144c:	2210      	movs	r2, #16
    144e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x9;                    // R9, 未用
    1450:	683b      	ldr	r3, [r7, #0]
    1452:	3b04      	subs	r3, #4
    1454:	603b      	str	r3, [r7, #0]
    1456:	683b      	ldr	r3, [r7, #0]
    1458:	2209      	movs	r2, #9
    145a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x8;                    // R8, 未用
    145c:	683b      	ldr	r3, [r7, #0]
    145e:	3b04      	subs	r3, #4
    1460:	603b      	str	r3, [r7, #0]
    1462:	683b      	ldr	r3, [r7, #0]
    1464:	2208      	movs	r2, #8
    1466:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x7;                    // R7, 未用
    1468:	683b      	ldr	r3, [r7, #0]
    146a:	3b04      	subs	r3, #4
    146c:	603b      	str	r3, [r7, #0]
    146e:	683b      	ldr	r3, [r7, #0]
    1470:	2207      	movs	r2, #7
    1472:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x6;                    // R6, 未用
    1474:	683b      	ldr	r3, [r7, #0]
    1476:	3b04      	subs	r3, #4
    1478:	603b      	str	r3, [r7, #0]
    147a:	683b      	ldr	r3, [r7, #0]
    147c:	2206      	movs	r2, #6
    147e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x5;                    // R5, 未用
    1480:	683b      	ldr	r3, [r7, #0]
    1482:	3b04      	subs	r3, #4
    1484:	603b      	str	r3, [r7, #0]
    1486:	683b      	ldr	r3, [r7, #0]
    1488:	2205      	movs	r2, #5
    148a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x4;                    // R4, 未用
    148c:	683b      	ldr	r3, [r7, #0]
    148e:	3b04      	subs	r3, #4
    1490:	603b      	str	r3, [r7, #0]
    1492:	683b      	ldr	r3, [r7, #0]
    1494:	2204      	movs	r2, #4
    1496:	601a      	str	r2, [r3, #0]
    task->stack = stack;
    1498:	68fb      	ldr	r3, [r7, #12]
    149a:	683a      	ldr	r2, [r7, #0]
    149c:	601a      	str	r2, [r3, #0]
}
    149e:	bf00      	nop
    14a0:	3714      	adds	r7, #20
    14a2:	46bd      	mov	sp, r7
    14a4:	bc80      	pop	{r7}
    14a6:	4770      	bx	lr

000014a8 <task_sched>:

void task_sched(void)
{
    14a8:	b580      	push	{r7, lr}
    14aa:	af00      	add	r7, sp, #0
    if (current_task == &task1) {
    14ac:	4b07      	ldr	r3, [pc, #28]	; (14cc <task_sched+0x24>)
    14ae:	681b      	ldr	r3, [r3, #0]
    14b0:	4a07      	ldr	r2, [pc, #28]	; (14d0 <task_sched+0x28>)
    14b2:	4293      	cmp	r3, r2
    14b4:	d103      	bne.n	14be <task_sched+0x16>
        next_task = &task2;
    14b6:	4b07      	ldr	r3, [pc, #28]	; (14d4 <task_sched+0x2c>)
    14b8:	4a07      	ldr	r2, [pc, #28]	; (14d8 <task_sched+0x30>)
    14ba:	601a      	str	r2, [r3, #0]
    14bc:	e002      	b.n	14c4 <task_sched+0x1c>
    } else {
        next_task = &task1;
    14be:	4b05      	ldr	r3, [pc, #20]	; (14d4 <task_sched+0x2c>)
    14c0:	4a03      	ldr	r2, [pc, #12]	; (14d0 <task_sched+0x28>)
    14c2:	601a      	str	r2, [r3, #0]
    }
    trigget_pendsv();
    14c4:	f7ff ff72 	bl	13ac <trigget_pendsv>
}
    14c8:	bf00      	nop
    14ca:	bd80      	pop	{r7, pc}
    14cc:	20000908 	.word	0x20000908
    14d0:	20000900 	.word	0x20000900
    14d4:	200000fc 	.word	0x200000fc
    14d8:	20000904 	.word	0x20000904

000014dc <run_first_task>:

void run_first_task(void)
{
    14dc:	b580      	push	{r7, lr}
    14de:	b082      	sub	sp, #8
    14e0:	af00      	add	r7, sp, #0
    14e2:	2300      	movs	r3, #0
    14e4:	607b      	str	r3, [r7, #4]
  __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
    14e6:	687b      	ldr	r3, [r7, #4]
    14e8:	f383 8809 	msr	PSP, r3
    __set_PSP(0);
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    14ec:	21ff      	movs	r1, #255	; 0xff
    14ee:	f06f 0001 	mvn.w	r0, #1
    14f2:	f7ff ff11 	bl	1318 <__NVIC_SetPriority>
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    14f6:	4b05      	ldr	r3, [pc, #20]	; (150c <run_first_task+0x30>)
    14f8:	685b      	ldr	r3, [r3, #4]
    14fa:	4a04      	ldr	r2, [pc, #16]	; (150c <run_first_task+0x30>)
    14fc:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    1500:	6053      	str	r3, [r2, #4]
}
    1502:	bf00      	nop
    1504:	3708      	adds	r7, #8
    1506:	46bd      	mov	sp, r7
    1508:	bd80      	pop	{r7, pc}
    150a:	bf00      	nop
    150c:	e000ed00 	.word	0xe000ed00

00001510 <task_start>:

void task_start(void)
{
    1510:	b580      	push	{r7, lr}
    1512:	af00      	add	r7, sp, #0
    task_create(&task1, task_entry_1, (void*)0x11111111, &stack[0]);
    1514:	4b0a      	ldr	r3, [pc, #40]	; (1540 <task_start+0x30>)
    1516:	f04f 3211 	mov.w	r2, #286331153	; 0x11111111
    151a:	490a      	ldr	r1, [pc, #40]	; (1544 <task_start+0x34>)
    151c:	480a      	ldr	r0, [pc, #40]	; (1548 <task_start+0x38>)
    151e:	f7ff ff53 	bl	13c8 <task_create>
    task_create(&task2, task_entry_2, (void*)0x22222222, &stack[1]);
    1522:	4b0a      	ldr	r3, [pc, #40]	; (154c <task_start+0x3c>)
    1524:	f04f 3222 	mov.w	r2, #572662306	; 0x22222222
    1528:	4909      	ldr	r1, [pc, #36]	; (1550 <task_start+0x40>)
    152a:	480a      	ldr	r0, [pc, #40]	; (1554 <task_start+0x44>)
    152c:	f7ff ff4c 	bl	13c8 <task_create>
    current_task = &task1;
    1530:	4b09      	ldr	r3, [pc, #36]	; (1558 <task_start+0x48>)
    1532:	4a05      	ldr	r2, [pc, #20]	; (1548 <task_start+0x38>)
    1534:	601a      	str	r2, [r3, #0]
    
    run_first_task();
    1536:	f7ff ffd1 	bl	14dc <run_first_task>
}
    153a:	bf00      	nop
    153c:	bd80      	pop	{r7, pc}
    153e:	bf00      	nop
    1540:	20000100 	.word	0x20000100
    1544:	0000136d 	.word	0x0000136d
    1548:	20000900 	.word	0x20000900
    154c:	20000500 	.word	0x20000500
    1550:	0000138d 	.word	0x0000138d
    1554:	20000904 	.word	0x20000904
    1558:	20000908 	.word	0x20000908

0000155c <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    155c:	b580      	push	{r7, lr}
    155e:	b084      	sub	sp, #16
    1560:	af00      	add	r7, sp, #0
    1562:	6078      	str	r0, [r7, #4]
    1564:	460b      	mov	r3, r1
    1566:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    1568:	f107 030f 	add.w	r3, r7, #15
    156c:	4618      	mov	r0, r3
    156e:	f7fe fe8e 	bl	28e <lite_getchar>
    {
        if (count >= max_len)
    1572:	4b22      	ldr	r3, [pc, #136]	; (15fc <shell_get_line+0xa0>)
    1574:	781b      	ldrb	r3, [r3, #0]
    1576:	78fa      	ldrb	r2, [r7, #3]
    1578:	429a      	cmp	r2, r3
    157a:	d804      	bhi.n	1586 <shell_get_line+0x2a>
        {
            count = 0;
    157c:	4b1f      	ldr	r3, [pc, #124]	; (15fc <shell_get_line+0xa0>)
    157e:	2200      	movs	r2, #0
    1580:	701a      	strb	r2, [r3, #0]
            return 1;
    1582:	2301      	movs	r3, #1
    1584:	e036      	b.n	15f4 <shell_get_line+0x98>
        }
        line[count] = chr;
    1586:	4b1d      	ldr	r3, [pc, #116]	; (15fc <shell_get_line+0xa0>)
    1588:	781b      	ldrb	r3, [r3, #0]
    158a:	461a      	mov	r2, r3
    158c:	687b      	ldr	r3, [r7, #4]
    158e:	4413      	add	r3, r2
    1590:	7bfa      	ldrb	r2, [r7, #15]
    1592:	701a      	strb	r2, [r3, #0]
        switch (chr)
    1594:	7bfb      	ldrb	r3, [r7, #15]
    1596:	2b0a      	cmp	r3, #10
    1598:	d013      	beq.n	15c2 <shell_get_line+0x66>
    159a:	2b0a      	cmp	r3, #10
    159c:	dc02      	bgt.n	15a4 <shell_get_line+0x48>
    159e:	2b08      	cmp	r3, #8
    15a0:	d004      	beq.n	15ac <shell_get_line+0x50>
    15a2:	e01a      	b.n	15da <shell_get_line+0x7e>
    15a4:	2b0d      	cmp	r3, #13
    15a6:	d00c      	beq.n	15c2 <shell_get_line+0x66>
    15a8:	2b7f      	cmp	r3, #127	; 0x7f
    15aa:	d116      	bne.n	15da <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    15ac:	4b13      	ldr	r3, [pc, #76]	; (15fc <shell_get_line+0xa0>)
    15ae:	781b      	ldrb	r3, [r3, #0]
    15b0:	2b00      	cmp	r3, #0
    15b2:	d019      	beq.n	15e8 <shell_get_line+0x8c>
            {
                count--;
    15b4:	4b11      	ldr	r3, [pc, #68]	; (15fc <shell_get_line+0xa0>)
    15b6:	781b      	ldrb	r3, [r3, #0]
    15b8:	3b01      	subs	r3, #1
    15ba:	b2da      	uxtb	r2, r3
    15bc:	4b0f      	ldr	r3, [pc, #60]	; (15fc <shell_get_line+0xa0>)
    15be:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    15c0:	e012      	b.n	15e8 <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    15c2:	4b0e      	ldr	r3, [pc, #56]	; (15fc <shell_get_line+0xa0>)
    15c4:	781b      	ldrb	r3, [r3, #0]
    15c6:	461a      	mov	r2, r3
    15c8:	687b      	ldr	r3, [r7, #4]
    15ca:	4413      	add	r3, r2
    15cc:	2200      	movs	r2, #0
    15ce:	701a      	strb	r2, [r3, #0]
            count = 0;
    15d0:	4b0a      	ldr	r3, [pc, #40]	; (15fc <shell_get_line+0xa0>)
    15d2:	2200      	movs	r2, #0
    15d4:	701a      	strb	r2, [r3, #0]
            return 1;
    15d6:	2301      	movs	r3, #1
    15d8:	e00c      	b.n	15f4 <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    15da:	4b08      	ldr	r3, [pc, #32]	; (15fc <shell_get_line+0xa0>)
    15dc:	781b      	ldrb	r3, [r3, #0]
    15de:	3301      	adds	r3, #1
    15e0:	b2da      	uxtb	r2, r3
    15e2:	4b06      	ldr	r3, [pc, #24]	; (15fc <shell_get_line+0xa0>)
    15e4:	701a      	strb	r2, [r3, #0]
    15e6:	e000      	b.n	15ea <shell_get_line+0x8e>
        break;
    15e8:	bf00      	nop
        }
        lite_putchar(chr);
    15ea:	7bfb      	ldrb	r3, [r7, #15]
    15ec:	4618      	mov	r0, r3
    15ee:	f7fe fe60 	bl	2b2 <lite_putchar>
    }
    return 0;
    15f2:	2300      	movs	r3, #0
}
    15f4:	4618      	mov	r0, r3
    15f6:	3710      	adds	r7, #16
    15f8:	46bd      	mov	sp, r7
    15fa:	bd80      	pop	{r7, pc}
    15fc:	20000024 	.word	0x20000024

00001600 <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    1600:	b580      	push	{r7, lr}
    1602:	b088      	sub	sp, #32
    1604:	af00      	add	r7, sp, #0
    1606:	60f8      	str	r0, [r7, #12]
    1608:	60b9      	str	r1, [r7, #8]
    160a:	4613      	mov	r3, r2
    160c:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    160e:	2300      	movs	r3, #0
    1610:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    1612:	4912      	ldr	r1, [pc, #72]	; (165c <shell_get_args+0x5c>)
    1614:	68f8      	ldr	r0, [r7, #12]
    1616:	f000 f8a1 	bl	175c <strtok>
    161a:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    161c:	2300      	movs	r3, #0
    161e:	77fb      	strb	r3, [r7, #31]
    1620:	e00d      	b.n	163e <shell_get_args+0x3e>
    {
        args[i] = ptr;
    1622:	7ffb      	ldrb	r3, [r7, #31]
    1624:	009b      	lsls	r3, r3, #2
    1626:	68ba      	ldr	r2, [r7, #8]
    1628:	4413      	add	r3, r2
    162a:	69ba      	ldr	r2, [r7, #24]
    162c:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    162e:	490c      	ldr	r1, [pc, #48]	; (1660 <shell_get_args+0x60>)
    1630:	2000      	movs	r0, #0
    1632:	f000 f893 	bl	175c <strtok>
    1636:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1638:	7ffb      	ldrb	r3, [r7, #31]
    163a:	3301      	adds	r3, #1
    163c:	77fb      	strb	r3, [r7, #31]
    163e:	69bb      	ldr	r3, [r7, #24]
    1640:	2b00      	cmp	r3, #0
    1642:	d003      	beq.n	164c <shell_get_args+0x4c>
    1644:	7ffa      	ldrb	r2, [r7, #31]
    1646:	79fb      	ldrb	r3, [r7, #7]
    1648:	429a      	cmp	r2, r3
    164a:	d3ea      	bcc.n	1622 <shell_get_args+0x22>
    }
    ret = i;
    164c:	7ffb      	ldrb	r3, [r7, #31]
    164e:	75fb      	strb	r3, [r7, #23]
    return ret;
    1650:	7dfb      	ldrb	r3, [r7, #23]
}
    1652:	4618      	mov	r0, r3
    1654:	3720      	adds	r7, #32
    1656:	46bd      	mov	sp, r7
    1658:	bd80      	pop	{r7, pc}
    165a:	bf00      	nop
    165c:	00002610 	.word	0x00002610
    1660:	00002614 	.word	0x00002614

00001664 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    1664:	b580      	push	{r7, lr}
    1666:	b084      	sub	sp, #16
    1668:	af00      	add	r7, sp, #0
    166a:	6078      	str	r0, [r7, #4]
    166c:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    166e:	4b0b      	ldr	r3, [pc, #44]	; (169c <shell_help_func+0x38>)
    1670:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1672:	e00a      	b.n	168a <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    1674:	68fb      	ldr	r3, [r7, #12]
    1676:	6819      	ldr	r1, [r3, #0]
    1678:	68fb      	ldr	r3, [r7, #12]
    167a:	685b      	ldr	r3, [r3, #4]
    167c:	461a      	mov	r2, r3
    167e:	4808      	ldr	r0, [pc, #32]	; (16a0 <shell_help_func+0x3c>)
    1680:	f7ff fda9 	bl	11d6 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1684:	68fb      	ldr	r3, [r7, #12]
    1686:	330c      	adds	r3, #12
    1688:	60fb      	str	r3, [r7, #12]
    168a:	68fb      	ldr	r3, [r7, #12]
    168c:	4a05      	ldr	r2, [pc, #20]	; (16a4 <shell_help_func+0x40>)
    168e:	4293      	cmp	r3, r2
    1690:	d3f0      	bcc.n	1674 <shell_help_func+0x10>
    }
    return 0;
    1692:	2300      	movs	r3, #0
}
    1694:	4618      	mov	r0, r3
    1696:	3710      	adds	r7, #16
    1698:	46bd      	mov	sp, r7
    169a:	bd80      	pop	{r7, pc}
    169c:	000024fc 	.word	0x000024fc
    16a0:	00002618 	.word	0x00002618
    16a4:	000033d0 	.word	0x000033d0

000016a8 <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    16a8:	b480      	push	{r7}
    16aa:	b089      	sub	sp, #36	; 0x24
    16ac:	af00      	add	r7, sp, #0
    16ae:	60f8      	str	r0, [r7, #12]
    16b0:	60b9      	str	r1, [r7, #8]
    16b2:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    16b4:	68fb      	ldr	r3, [r7, #12]
    16b6:	2b00      	cmp	r3, #0
    16b8:	d107      	bne.n	16ca <strtok_r+0x22>
    16ba:	687b      	ldr	r3, [r7, #4]
    16bc:	681b      	ldr	r3, [r3, #0]
    16be:	60fb      	str	r3, [r7, #12]
    16c0:	68fb      	ldr	r3, [r7, #12]
    16c2:	2b00      	cmp	r3, #0
    16c4:	d101      	bne.n	16ca <strtok_r+0x22>
    {
    return (NULL);
    16c6:	2300      	movs	r3, #0
    16c8:	e043      	b.n	1752 <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    16ca:	bf00      	nop
c = *string_org++;
    16cc:	68fb      	ldr	r3, [r7, #12]
    16ce:	1c5a      	adds	r2, r3, #1
    16d0:	60fa      	str	r2, [r7, #12]
    16d2:	781b      	ldrb	r3, [r3, #0]
    16d4:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    16d6:	68bb      	ldr	r3, [r7, #8]
    16d8:	61fb      	str	r3, [r7, #28]
    16da:	e004      	b.n	16e6 <strtok_r+0x3e>
    {
    if (c == sc)
    16dc:	7efa      	ldrb	r2, [r7, #27]
    16de:	7ebb      	ldrb	r3, [r7, #26]
    16e0:	429a      	cmp	r2, r3
    16e2:	d100      	bne.n	16e6 <strtok_r+0x3e>
        {
        goto count;
    16e4:	e7f2      	b.n	16cc <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    16e6:	69fb      	ldr	r3, [r7, #28]
    16e8:	1c5a      	adds	r2, r3, #1
    16ea:	61fa      	str	r2, [r7, #28]
    16ec:	781b      	ldrb	r3, [r3, #0]
    16ee:	76bb      	strb	r3, [r7, #26]
    16f0:	7ebb      	ldrb	r3, [r7, #26]
    16f2:	2b00      	cmp	r3, #0
    16f4:	d1f2      	bne.n	16dc <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    16f6:	7efb      	ldrb	r3, [r7, #27]
    16f8:	2b00      	cmp	r3, #0
    16fa:	d104      	bne.n	1706 <strtok_r+0x5e>
    {
    *last = NULL;
    16fc:	687b      	ldr	r3, [r7, #4]
    16fe:	2200      	movs	r2, #0
    1700:	601a      	str	r2, [r3, #0]
    return (NULL);
    1702:	2300      	movs	r3, #0
    1704:	e025      	b.n	1752 <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    1706:	68fb      	ldr	r3, [r7, #12]
    1708:	3b01      	subs	r3, #1
    170a:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    170c:	68fb      	ldr	r3, [r7, #12]
    170e:	1c5a      	adds	r2, r3, #1
    1710:	60fa      	str	r2, [r7, #12]
    1712:	781b      	ldrb	r3, [r3, #0]
    1714:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    1716:	68bb      	ldr	r3, [r7, #8]
    1718:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    171a:	69fb      	ldr	r3, [r7, #28]
    171c:	1c5a      	adds	r2, r3, #1
    171e:	61fa      	str	r2, [r7, #28]
    1720:	781b      	ldrb	r3, [r3, #0]
    1722:	76bb      	strb	r3, [r7, #26]
    1724:	7eba      	ldrb	r2, [r7, #26]
    1726:	7efb      	ldrb	r3, [r7, #27]
    1728:	429a      	cmp	r2, r3
    172a:	d10e      	bne.n	174a <strtok_r+0xa2>
            {
            if (c == 0)
    172c:	7efb      	ldrb	r3, [r7, #27]
    172e:	2b00      	cmp	r3, #0
    1730:	d102      	bne.n	1738 <strtok_r+0x90>
                {
                string_org = NULL;
    1732:	2300      	movs	r3, #0
    1734:	60fb      	str	r3, [r7, #12]
    1736:	e003      	b.n	1740 <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    1738:	68fb      	ldr	r3, [r7, #12]
    173a:	3b01      	subs	r3, #1
    173c:	2200      	movs	r2, #0
    173e:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    1740:	687b      	ldr	r3, [r7, #4]
    1742:	68fa      	ldr	r2, [r7, #12]
    1744:	601a      	str	r2, [r3, #0]
            return (tok);
    1746:	697b      	ldr	r3, [r7, #20]
    1748:	e003      	b.n	1752 <strtok_r+0xaa>
            }
        } while (sc != 0);
    174a:	7ebb      	ldrb	r3, [r7, #26]
    174c:	2b00      	cmp	r3, #0
    174e:	d1e4      	bne.n	171a <strtok_r+0x72>
    c = *string_org++;
    1750:	e7dc      	b.n	170c <strtok_r+0x64>
    }
    
}
    1752:	4618      	mov	r0, r3
    1754:	3724      	adds	r7, #36	; 0x24
    1756:	46bd      	mov	sp, r7
    1758:	bc80      	pop	{r7}
    175a:	4770      	bx	lr

0000175c <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    175c:	b580      	push	{r7, lr}
    175e:	b082      	sub	sp, #8
    1760:	af00      	add	r7, sp, #0
    1762:	6078      	str	r0, [r7, #4]
    1764:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    1766:	4a05      	ldr	r2, [pc, #20]	; (177c <strtok+0x20>)
    1768:	6839      	ldr	r1, [r7, #0]
    176a:	6878      	ldr	r0, [r7, #4]
    176c:	f7ff ff9c 	bl	16a8 <strtok_r>
    1770:	4603      	mov	r3, r0
}
    1772:	4618      	mov	r0, r3
    1774:	3708      	adds	r7, #8
    1776:	46bd      	mov	sp, r7
    1778:	bd80      	pop	{r7, pc}
    177a:	bf00      	nop
    177c:	20000028 	.word	0x20000028

00001780 <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    1780:	b480      	push	{r7}
    1782:	b087      	sub	sp, #28
    1784:	af00      	add	r7, sp, #0
    1786:	60f8      	str	r0, [r7, #12]
    1788:	60b9      	str	r1, [r7, #8]
    178a:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    178c:	68fb      	ldr	r3, [r7, #12]
    178e:	2b00      	cmp	r3, #0
    1790:	d002      	beq.n	1798 <memcpy+0x18>
    1792:	68bb      	ldr	r3, [r7, #8]
    1794:	2b00      	cmp	r3, #0
    1796:	d101      	bne.n	179c <memcpy+0x1c>
		return NULL;
    1798:	2300      	movs	r3, #0
    179a:	e012      	b.n	17c2 <memcpy+0x42>
	char *tempDest = (char *)dest;
    179c:	68fb      	ldr	r3, [r7, #12]
    179e:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    17a0:	68bb      	ldr	r3, [r7, #8]
    17a2:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    17a4:	e007      	b.n	17b6 <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    17a6:	693a      	ldr	r2, [r7, #16]
    17a8:	1c53      	adds	r3, r2, #1
    17aa:	613b      	str	r3, [r7, #16]
    17ac:	697b      	ldr	r3, [r7, #20]
    17ae:	1c59      	adds	r1, r3, #1
    17b0:	6179      	str	r1, [r7, #20]
    17b2:	7812      	ldrb	r2, [r2, #0]
    17b4:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    17b6:	687b      	ldr	r3, [r7, #4]
    17b8:	1e5a      	subs	r2, r3, #1
    17ba:	607a      	str	r2, [r7, #4]
    17bc:	2b00      	cmp	r3, #0
    17be:	d1f2      	bne.n	17a6 <memcpy+0x26>
	return dest;	
    17c0:	68fb      	ldr	r3, [r7, #12]
}
    17c2:	4618      	mov	r0, r3
    17c4:	371c      	adds	r7, #28
    17c6:	46bd      	mov	sp, r7
    17c8:	bc80      	pop	{r7}
    17ca:	4770      	bx	lr

000017cc <memset>:
void *memset(void *s, int c, size_t n)
{
    17cc:	b480      	push	{r7}
    17ce:	b087      	sub	sp, #28
    17d0:	af00      	add	r7, sp, #0
    17d2:	60f8      	str	r0, [r7, #12]
    17d4:	60b9      	str	r1, [r7, #8]
    17d6:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    17d8:	68fb      	ldr	r3, [r7, #12]
    17da:	2b00      	cmp	r3, #0
    17dc:	d101      	bne.n	17e2 <memset+0x16>
		return NULL;
    17de:	2300      	movs	r3, #0
    17e0:	e00e      	b.n	1800 <memset+0x34>
	char * tmpS = (char *)s;
    17e2:	68fb      	ldr	r3, [r7, #12]
    17e4:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    17e6:	e005      	b.n	17f4 <memset+0x28>
		*tmpS++ = c;
    17e8:	697b      	ldr	r3, [r7, #20]
    17ea:	1c5a      	adds	r2, r3, #1
    17ec:	617a      	str	r2, [r7, #20]
    17ee:	68ba      	ldr	r2, [r7, #8]
    17f0:	b2d2      	uxtb	r2, r2
    17f2:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    17f4:	687b      	ldr	r3, [r7, #4]
    17f6:	1e5a      	subs	r2, r3, #1
    17f8:	607a      	str	r2, [r7, #4]
    17fa:	2b00      	cmp	r3, #0
    17fc:	d1f4      	bne.n	17e8 <memset+0x1c>
		return s; 
    17fe:	68fb      	ldr	r3, [r7, #12]
}
    1800:	4618      	mov	r0, r3
    1802:	371c      	adds	r7, #28
    1804:	46bd      	mov	sp, r7
    1806:	bc80      	pop	{r7}
    1808:	4770      	bx	lr

0000180a <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    180a:	b480      	push	{r7}
    180c:	b085      	sub	sp, #20
    180e:	af00      	add	r7, sp, #0
    1810:	6078      	str	r0, [r7, #4]
    1812:	6039      	str	r1, [r7, #0]
	int ret = 0;
    1814:	2300      	movs	r3, #0
    1816:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1818:	e005      	b.n	1826 <strcmp+0x1c>
	{
		str1++;
    181a:	687b      	ldr	r3, [r7, #4]
    181c:	3301      	adds	r3, #1
    181e:	607b      	str	r3, [r7, #4]
		str2++;
    1820:	683b      	ldr	r3, [r7, #0]
    1822:	3301      	adds	r3, #1
    1824:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1826:	687b      	ldr	r3, [r7, #4]
    1828:	781b      	ldrb	r3, [r3, #0]
    182a:	461a      	mov	r2, r3
    182c:	683b      	ldr	r3, [r7, #0]
    182e:	781b      	ldrb	r3, [r3, #0]
    1830:	1ad3      	subs	r3, r2, r3
    1832:	60fb      	str	r3, [r7, #12]
    1834:	68fb      	ldr	r3, [r7, #12]
    1836:	2b00      	cmp	r3, #0
    1838:	d103      	bne.n	1842 <strcmp+0x38>
    183a:	687b      	ldr	r3, [r7, #4]
    183c:	781b      	ldrb	r3, [r3, #0]
    183e:	2b00      	cmp	r3, #0
    1840:	d1eb      	bne.n	181a <strcmp+0x10>
	}
 
 
	if (ret < 0)
    1842:	68fb      	ldr	r3, [r7, #12]
    1844:	2b00      	cmp	r3, #0
    1846:	da02      	bge.n	184e <strcmp+0x44>
	{
		return -1;
    1848:	f04f 33ff 	mov.w	r3, #4294967295
    184c:	e005      	b.n	185a <strcmp+0x50>
	}
	else if (ret > 0)
    184e:	68fb      	ldr	r3, [r7, #12]
    1850:	2b00      	cmp	r3, #0
    1852:	dd01      	ble.n	1858 <strcmp+0x4e>
	{
		return 1;
    1854:	2301      	movs	r3, #1
    1856:	e000      	b.n	185a <strcmp+0x50>
	}
	return 0;
    1858:	2300      	movs	r3, #0
}
    185a:	4618      	mov	r0, r3
    185c:	3714      	adds	r7, #20
    185e:	46bd      	mov	sp, r7
    1860:	bc80      	pop	{r7}
    1862:	4770      	bx	lr

00001864 <shell_main>:
#endif
void shell_main(void)
{
    1864:	b580      	push	{r7, lr}
    1866:	b0c2      	sub	sp, #264	; 0x108
    1868:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    186a:	f107 0380 	add.w	r3, r7, #128	; 0x80
    186e:	2280      	movs	r2, #128	; 0x80
    1870:	2100      	movs	r1, #0
    1872:	4618      	mov	r0, r3
    1874:	f7ff ffaa 	bl	17cc <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    1878:	463b      	mov	r3, r7
    187a:	4618      	mov	r0, r3
    187c:	2380      	movs	r3, #128	; 0x80
    187e:	461a      	mov	r2, r3
    1880:	2100      	movs	r1, #0
    1882:	f7ff ffa3 	bl	17cc <memset>

    uint8_t args_count = 0;
    1886:	2300      	movs	r3, #0
    1888:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    188c:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1890:	2180      	movs	r1, #128	; 0x80
    1892:	4618      	mov	r0, r3
    1894:	f7ff fe62 	bl	155c <shell_get_line>
    1898:	4603      	mov	r3, r0
    189a:	2b00      	cmp	r3, #0
    189c:	d0f6      	beq.n	188c <shell_main+0x28>
        {
            printf("\n");
    189e:	4827      	ldr	r0, [pc, #156]	; (193c <shell_main+0xd8>)
    18a0:	f7ff fc99 	bl	11d6 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    18a4:	4639      	mov	r1, r7
    18a6:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18aa:	2220      	movs	r2, #32
    18ac:	4618      	mov	r0, r3
    18ae:	f7ff fea7 	bl	1600 <shell_get_args>
    18b2:	4603      	mov	r3, r0
    18b4:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    18b8:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    18bc:	2b00      	cmp	r3, #0
    18be:	d033      	beq.n	1928 <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    18c0:	4b1f      	ldr	r3, [pc, #124]	; (1940 <shell_main+0xdc>)
    18c2:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    18c6:	e02a      	b.n	191e <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    18c8:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    18cc:	681a      	ldr	r2, [r3, #0]
    18ce:	463b      	mov	r3, r7
    18d0:	681b      	ldr	r3, [r3, #0]
    18d2:	4619      	mov	r1, r3
    18d4:	4610      	mov	r0, r2
    18d6:	f7ff ff98 	bl	180a <strcmp>
    18da:	4603      	mov	r3, r0
    18dc:	2b00      	cmp	r3, #0
    18de:	d10a      	bne.n	18f6 <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    18e0:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    18e4:	689b      	ldr	r3, [r3, #8]
    18e6:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    18ea:	1e50      	subs	r0, r2, #1
    18ec:	463a      	mov	r2, r7
    18ee:	3204      	adds	r2, #4
    18f0:	4611      	mov	r1, r2
    18f2:	4798      	blx	r3
    18f4:	e00e      	b.n	1914 <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    18f6:	463b      	mov	r3, r7
    18f8:	681b      	ldr	r3, [r3, #0]
    18fa:	4619      	mov	r1, r3
    18fc:	4811      	ldr	r0, [pc, #68]	; (1944 <shell_main+0xe0>)
    18fe:	f7ff ff84 	bl	180a <strcmp>
    1902:	4603      	mov	r3, r0
    1904:	2b00      	cmp	r3, #0
    1906:	d013      	beq.n	1930 <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1908:	f107 0380 	add.w	r3, r7, #128	; 0x80
    190c:	4619      	mov	r1, r3
    190e:	480e      	ldr	r0, [pc, #56]	; (1948 <shell_main+0xe4>)
    1910:	f7ff fc61 	bl	11d6 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1914:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1918:	330c      	adds	r3, #12
    191a:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    191e:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1922:	4a0a      	ldr	r2, [pc, #40]	; (194c <shell_main+0xe8>)
    1924:	4293      	cmp	r3, r2
    1926:	d3cf      	bcc.n	18c8 <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1928:	4809      	ldr	r0, [pc, #36]	; (1950 <shell_main+0xec>)
    192a:	f7ff fc54 	bl	11d6 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    192e:	e7ad      	b.n	188c <shell_main+0x28>
                        return;
    1930:	bf00      	nop
        }
    }
    return;
}
    1932:	f507 7784 	add.w	r7, r7, #264	; 0x108
    1936:	46bd      	mov	sp, r7
    1938:	bd80      	pop	{r7, pc}
    193a:	bf00      	nop
    193c:	00002640 	.word	0x00002640
    1940:	000024fc 	.word	0x000024fc
    1944:	00002644 	.word	0x00002644
    1948:	0000264c 	.word	0x0000264c
    194c:	000033d0 	.word	0x000033d0
    1950:	00002668 	.word	0x00002668

00001954 <shell_start>:

void shell_start(void)
{
    1954:	b580      	push	{r7, lr}
    1956:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    1958:	f7ff ff84 	bl	1864 <shell_main>
    195c:	bf00      	nop
    195e:	bd80      	pop	{r7, pc}

00001960 <test_div>:
#include <stdint.h>
#include "hal_log.h"
#include "backtrace.h"
#include "hal_platform.h"
int test_div(void)
{
    1960:	b480      	push	{r7}
    1962:	b085      	sub	sp, #20
    1964:	af00      	add	r7, sp, #0
SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    1966:	4b0d      	ldr	r3, [pc, #52]	; (199c <test_div+0x3c>)
    1968:	6a5b      	ldr	r3, [r3, #36]	; 0x24
    196a:	4a0c      	ldr	r2, [pc, #48]	; (199c <test_div+0x3c>)
    196c:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
    1970:	6253      	str	r3, [r2, #36]	; 0x24
SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
    1972:	4b0a      	ldr	r3, [pc, #40]	; (199c <test_div+0x3c>)
    1974:	695b      	ldr	r3, [r3, #20]
    1976:	4a09      	ldr	r2, [pc, #36]	; (199c <test_div+0x3c>)
    1978:	f043 0318 	orr.w	r3, r3, #24
    197c:	6153      	str	r3, [r2, #20]

int a = 1;
    197e:	2301      	movs	r3, #1
    1980:	60fb      	str	r3, [r7, #12]
int b = 0;
    1982:	2300      	movs	r3, #0
    1984:	60bb      	str	r3, [r7, #8]
int z = a / b;
    1986:	68fa      	ldr	r2, [r7, #12]
    1988:	68bb      	ldr	r3, [r7, #8]
    198a:	fb92 f3f3 	sdiv	r3, r2, r3
    198e:	607b      	str	r3, [r7, #4]

return z;
    1990:	687b      	ldr	r3, [r7, #4]
}
    1992:	4618      	mov	r0, r3
    1994:	3714      	adds	r7, #20
    1996:	46bd      	mov	sp, r7
    1998:	bc80      	pop	{r7}
    199a:	4770      	bx	lr
    199c:	e000ed00 	.word	0xe000ed00

000019a0 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
    19a0:	b580      	push	{r7, lr}
    19a2:	b084      	sub	sp, #16
    19a4:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    19a6:	4b16      	ldr	r3, [pc, #88]	; (1a00 <fault_test_by_unalign+0x60>)
    19a8:	60fb      	str	r3, [r7, #12]
volatile int * p;
volatile int value;

*SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
    19aa:	68fb      	ldr	r3, [r7, #12]
    19ac:	681b      	ldr	r3, [r3, #0]
    19ae:	f043 0208 	orr.w	r2, r3, #8
    19b2:	68fb      	ldr	r3, [r7, #12]
    19b4:	601a      	str	r2, [r3, #0]

p = (int *) 0x00;
    19b6:	2300      	movs	r3, #0
    19b8:	60bb      	str	r3, [r7, #8]
value = *p;
    19ba:	68bb      	ldr	r3, [r7, #8]
    19bc:	681b      	ldr	r3, [r3, #0]
    19be:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19c0:	68bb      	ldr	r3, [r7, #8]
    19c2:	687a      	ldr	r2, [r7, #4]
    19c4:	4619      	mov	r1, r3
    19c6:	480f      	ldr	r0, [pc, #60]	; (1a04 <fault_test_by_unalign+0x64>)
    19c8:	f7ff fc05 	bl	11d6 <printf_>

p = (int *) 0x04;
    19cc:	2304      	movs	r3, #4
    19ce:	60bb      	str	r3, [r7, #8]
value = *p;
    19d0:	68bb      	ldr	r3, [r7, #8]
    19d2:	681b      	ldr	r3, [r3, #0]
    19d4:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19d6:	68bb      	ldr	r3, [r7, #8]
    19d8:	687a      	ldr	r2, [r7, #4]
    19da:	4619      	mov	r1, r3
    19dc:	4809      	ldr	r0, [pc, #36]	; (1a04 <fault_test_by_unalign+0x64>)
    19de:	f7ff fbfa 	bl	11d6 <printf_>

p = (int *) 0x03;
    19e2:	2303      	movs	r3, #3
    19e4:	60bb      	str	r3, [r7, #8]
value = *p;
    19e6:	68bb      	ldr	r3, [r7, #8]
    19e8:	681b      	ldr	r3, [r3, #0]
    19ea:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19ec:	68bb      	ldr	r3, [r7, #8]
    19ee:	687a      	ldr	r2, [r7, #4]
    19f0:	4619      	mov	r1, r3
    19f2:	4804      	ldr	r0, [pc, #16]	; (1a04 <fault_test_by_unalign+0x64>)
    19f4:	f7ff fbef 	bl	11d6 <printf_>
}
    19f8:	bf00      	nop
    19fa:	3710      	adds	r7, #16
    19fc:	46bd      	mov	sp, r7
    19fe:	bd80      	pop	{r7, pc}
    1a00:	e000ed14 	.word	0xe000ed14
    1a04:	00002670 	.word	0x00002670

00001a08 <fault_test_by_div0>:

void fault_test_by_div0(void) {
    1a08:	b580      	push	{r7, lr}
    1a0a:	b084      	sub	sp, #16
    1a0c:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    1a0e:	4b0c      	ldr	r3, [pc, #48]	; (1a40 <fault_test_by_div0+0x38>)
    1a10:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
    1a12:	68fb      	ldr	r3, [r7, #12]
    1a14:	681b      	ldr	r3, [r3, #0]
    1a16:	f043 0210 	orr.w	r2, r3, #16
    1a1a:	68fb      	ldr	r3, [r7, #12]
    1a1c:	601a      	str	r2, [r3, #0]

x = 10;
    1a1e:	230a      	movs	r3, #10
    1a20:	60bb      	str	r3, [r7, #8]
y = 0;
    1a22:	2300      	movs	r3, #0
    1a24:	607b      	str	r3, [r7, #4]
z = x / y;
    1a26:	68ba      	ldr	r2, [r7, #8]
    1a28:	687b      	ldr	r3, [r7, #4]
    1a2a:	fb92 f3f3 	sdiv	r3, r2, r3
    1a2e:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
    1a30:	6839      	ldr	r1, [r7, #0]
    1a32:	4804      	ldr	r0, [pc, #16]	; (1a44 <fault_test_by_div0+0x3c>)
    1a34:	f7ff fbcf 	bl	11d6 <printf_>
}
    1a38:	bf00      	nop
    1a3a:	3710      	adds	r7, #16
    1a3c:	46bd      	mov	sp, r7
    1a3e:	bd80      	pop	{r7, pc}
    1a40:	e000ed14 	.word	0xe000ed14
    1a44:	00002688 	.word	0x00002688

00001a48 <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    1a48:	b580      	push	{r7, lr}
    1a4a:	b084      	sub	sp, #16
    1a4c:	af00      	add	r7, sp, #0
    1a4e:	60f8      	str	r0, [r7, #12]
    1a50:	60b9      	str	r1, [r7, #8]
    1a52:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
    1a54:	687b      	ldr	r3, [r7, #4]
    1a56:	68fa      	ldr	r2, [r7, #12]
    1a58:	429a      	cmp	r2, r3
    1a5a:	d902      	bls.n	1a62 <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
    1a5c:	68fb      	ldr	r3, [r7, #12]
    1a5e:	607b      	str	r3, [r7, #4]
    1a60:	e009      	b.n	1a76 <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
    1a62:	68fa      	ldr	r2, [r7, #12]
    1a64:	68bb      	ldr	r3, [r7, #8]
    1a66:	441a      	add	r2, r3
    1a68:	687b      	ldr	r3, [r7, #4]
    1a6a:	429a      	cmp	r2, r3
    1a6c:	d203      	bcs.n	1a76 <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    1a6e:	68fa      	ldr	r2, [r7, #12]
    1a70:	68bb      	ldr	r3, [r7, #8]
    1a72:	4413      	add	r3, r2
    1a74:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
    1a76:	490e      	ldr	r1, [pc, #56]	; (1ab0 <dump_stack+0x68>)
    1a78:	480e      	ldr	r0, [pc, #56]	; (1ab4 <dump_stack+0x6c>)
    1a7a:	f7ff fbac 	bl	11d6 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1a7e:	e009      	b.n	1a94 <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    1a80:	6879      	ldr	r1, [r7, #4]
    1a82:	687b      	ldr	r3, [r7, #4]
    1a84:	681b      	ldr	r3, [r3, #0]
    1a86:	461a      	mov	r2, r3
    1a88:	480b      	ldr	r0, [pc, #44]	; (1ab8 <dump_stack+0x70>)
    1a8a:	f7ff fba4 	bl	11d6 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1a8e:	687b      	ldr	r3, [r7, #4]
    1a90:	3304      	adds	r3, #4
    1a92:	607b      	str	r3, [r7, #4]
    1a94:	68fa      	ldr	r2, [r7, #12]
    1a96:	68bb      	ldr	r3, [r7, #8]
    1a98:	441a      	add	r2, r3
    1a9a:	687b      	ldr	r3, [r7, #4]
    1a9c:	429a      	cmp	r2, r3
    1a9e:	d8ef      	bhi.n	1a80 <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
    1aa0:	4903      	ldr	r1, [pc, #12]	; (1ab0 <dump_stack+0x68>)
    1aa2:	4804      	ldr	r0, [pc, #16]	; (1ab4 <dump_stack+0x6c>)
    1aa4:	f7ff fb97 	bl	11d6 <printf_>
}
    1aa8:	bf00      	nop
    1aaa:	3710      	adds	r7, #16
    1aac:	46bd      	mov	sp, r7
    1aae:	bd80      	pop	{r7, pc}
    1ab0:	000031a8 	.word	0x000031a8
    1ab4:	00002690 	.word	0x00002690
    1ab8:	000026bc 	.word	0x000026bc

00001abc <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    1abc:	b480      	push	{r7}
    1abe:	b085      	sub	sp, #20
    1ac0:	af00      	add	r7, sp, #0
    1ac2:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
    1ac4:	687b      	ldr	r3, [r7, #4]
    1ac6:	881b      	ldrh	r3, [r3, #0]
    1ac8:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
    1aca:	687b      	ldr	r3, [r7, #4]
    1acc:	3302      	adds	r3, #2
    1ace:	881b      	ldrh	r3, [r3, #0]
    1ad0:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
    1ad2:	89bb      	ldrh	r3, [r7, #12]
    1ad4:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1ad8:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
    1adc:	d107      	bne.n	1aee <disassembly_ins_is_bl_blx+0x32>
    1ade:	89fb      	ldrh	r3, [r7, #14]
    1ae0:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1ae4:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
    1ae8:	d101      	bne.n	1aee <disassembly_ins_is_bl_blx+0x32>
        return true;
    1aea:	2301      	movs	r3, #1
    1aec:	e008      	b.n	1b00 <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
    1aee:	89bb      	ldrh	r3, [r7, #12]
    1af0:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1af4:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1af8:	d101      	bne.n	1afe <disassembly_ins_is_bl_blx+0x42>
        return true;
    1afa:	2301      	movs	r3, #1
    1afc:	e000      	b.n	1b00 <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
    1afe:	2300      	movs	r3, #0
    }
}
    1b00:	4618      	mov	r0, r3
    1b02:	3714      	adds	r7, #20
    1b04:	46bd      	mov	sp, r7
    1b06:	bc80      	pop	{r7}
    1b08:	4770      	bx	lr

00001b0a <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    1b0a:	b580      	push	{r7, lr}
    1b0c:	b08a      	sub	sp, #40	; 0x28
    1b0e:	af02      	add	r7, sp, #8
    1b10:	60f8      	str	r0, [r7, #12]
    1b12:	60b9      	str	r1, [r7, #8]
    1b14:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
    1b16:	2300      	movs	r3, #0
    1b18:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
    1b1a:	2300      	movs	r3, #0
    1b1c:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
    1b1e:	687a      	ldr	r2, [r7, #4]
    1b20:	4935      	ldr	r1, [pc, #212]	; (1bf8 <backtrace_call_stack+0xee>)
    1b22:	4836      	ldr	r0, [pc, #216]	; (1bfc <backtrace_call_stack+0xf2>)
    1b24:	f7ff fb57 	bl	11d6 <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1b28:	e058      	b.n	1bdc <backtrace_call_stack+0xd2>
uint32_t i = 0;
    1b2a:	2300      	movs	r3, #0
    1b2c:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
    1b2e:	687b      	ldr	r3, [r7, #4]
    1b30:	4a33      	ldr	r2, [pc, #204]	; (1c00 <backtrace_call_stack+0xf6>)
    1b32:	4293      	cmp	r3, r2
    1b34:	d103      	bne.n	1b3e <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
    1b36:	6879      	ldr	r1, [r7, #4]
    1b38:	4832      	ldr	r0, [pc, #200]	; (1c04 <backtrace_call_stack+0xfa>)
    1b3a:	f7ff fb4c 	bl	11d6 <printf_>
    }
    lr = *((uint32_t *) sp);
    1b3e:	687b      	ldr	r3, [r7, #4]
    1b40:	681b      	ldr	r3, [r3, #0]
    1b42:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
    1b44:	693b      	ldr	r3, [r7, #16]
    1b46:	f003 0301 	and.w	r3, r3, #1
    1b4a:	2b00      	cmp	r3, #0
    1b4c:	d040      	beq.n	1bd0 <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
    1b4e:	693b      	ldr	r3, [r7, #16]
    1b50:	3b01      	subs	r3, #1
    1b52:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
    1b54:	4b2c      	ldr	r3, [pc, #176]	; (1c08 <backtrace_call_stack+0xfe>)
    1b56:	681b      	ldr	r3, [r3, #0]
    1b58:	693a      	ldr	r2, [r7, #16]
    1b5a:	429a      	cmp	r2, r3
    1b5c:	d33b      	bcc.n	1bd6 <backtrace_call_stack+0xcc>
    1b5e:	4b2a      	ldr	r3, [pc, #168]	; (1c08 <backtrace_call_stack+0xfe>)
    1b60:	681a      	ldr	r2, [r3, #0]
    1b62:	4b2a      	ldr	r3, [pc, #168]	; (1c0c <backtrace_call_stack+0x102>)
    1b64:	681b      	ldr	r3, [r3, #0]
    1b66:	4413      	add	r3, r2
    1b68:	693a      	ldr	r2, [r7, #16]
    1b6a:	429a      	cmp	r2, r3
    1b6c:	d833      	bhi.n	1bd6 <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
    1b6e:	693b      	ldr	r3, [r7, #16]
    1b70:	3b04      	subs	r3, #4
    1b72:	4618      	mov	r0, r3
    1b74:	f7ff ffa2 	bl	1abc <disassembly_ins_is_bl_blx>
    1b78:	4603      	mov	r3, r0
    1b7a:	2b00      	cmp	r3, #0
    1b7c:	d02b      	beq.n	1bd6 <backtrace_call_stack+0xcc>
    1b7e:	69fa      	ldr	r2, [r7, #28]
    1b80:	68bb      	ldr	r3, [r7, #8]
    1b82:	429a      	cmp	r2, r3
    1b84:	d227      	bcs.n	1bd6 <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
    1b86:	69fb      	ldr	r3, [r7, #28]
    1b88:	2b02      	cmp	r3, #2
    1b8a:	d108      	bne.n	1b9e <backtrace_call_stack+0x94>
    1b8c:	7efb      	ldrb	r3, [r7, #27]
    1b8e:	2b00      	cmp	r3, #0
    1b90:	d005      	beq.n	1b9e <backtrace_call_stack+0x94>
    1b92:	68fb      	ldr	r3, [r7, #12]
    1b94:	3304      	adds	r3, #4
    1b96:	681b      	ldr	r3, [r3, #0]
    1b98:	693a      	ldr	r2, [r7, #16]
    1b9a:	429a      	cmp	r2, r3
    1b9c:	d01a      	beq.n	1bd4 <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1b9e:	693b      	ldr	r3, [r7, #16]
    1ba0:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1ba2:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1ba4:	693b      	ldr	r3, [r7, #16]
    1ba6:	3b04      	subs	r3, #4
    1ba8:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1baa:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1bac:	693b      	ldr	r3, [r7, #16]
    1bae:	3b02      	subs	r3, #2
    1bb0:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1bb2:	9300      	str	r3, [sp, #0]
    1bb4:	460b      	mov	r3, r1
    1bb6:	6939      	ldr	r1, [r7, #16]
    1bb8:	4815      	ldr	r0, [pc, #84]	; (1c10 <backtrace_call_stack+0x106>)
    1bba:	f7ff fb0c 	bl	11d6 <printf_>
                buffer[depth++] = lr;
    1bbe:	69fb      	ldr	r3, [r7, #28]
    1bc0:	1c5a      	adds	r2, r3, #1
    1bc2:	61fa      	str	r2, [r7, #28]
    1bc4:	009b      	lsls	r3, r3, #2
    1bc6:	68fa      	ldr	r2, [r7, #12]
    1bc8:	4413      	add	r3, r2
    1bca:	693a      	ldr	r2, [r7, #16]
    1bcc:	601a      	str	r2, [r3, #0]
    1bce:	e002      	b.n	1bd6 <backtrace_call_stack+0xcc>
        continue;
    1bd0:	bf00      	nop
    1bd2:	e000      	b.n	1bd6 <backtrace_call_stack+0xcc>
            continue;
    1bd4:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1bd6:	687b      	ldr	r3, [r7, #4]
    1bd8:	3304      	adds	r3, #4
    1bda:	607b      	str	r3, [r7, #4]
    1bdc:	4b0d      	ldr	r3, [pc, #52]	; (1c14 <backtrace_call_stack+0x10a>)
    1bde:	681a      	ldr	r2, [r3, #0]
    1be0:	4b0d      	ldr	r3, [pc, #52]	; (1c18 <backtrace_call_stack+0x10e>)
    1be2:	681b      	ldr	r3, [r3, #0]
    1be4:	4413      	add	r3, r2
    1be6:	687a      	ldr	r2, [r7, #4]
    1be8:	429a      	cmp	r2, r3
    1bea:	d39e      	bcc.n	1b2a <backtrace_call_stack+0x20>
    }
}

return depth;
    1bec:	69fb      	ldr	r3, [r7, #28]
}
    1bee:	4618      	mov	r0, r3
    1bf0:	3720      	adds	r7, #32
    1bf2:	46bd      	mov	sp, r7
    1bf4:	bd80      	pop	{r7, pc}
    1bf6:	bf00      	nop
    1bf8:	000031b4 	.word	0x000031b4
    1bfc:	00002fd0 	.word	0x00002fd0
    1c00:	08080541 	.word	0x08080541
    1c04:	00002fe0 	.word	0x00002fe0
    1c08:	2000002c 	.word	0x2000002c
    1c0c:	20000034 	.word	0x20000034
    1c10:	00002fec 	.word	0x00002fec
    1c14:	20000038 	.word	0x20000038
    1c18:	20000040 	.word	0x20000040

00001c1c <print_call_stack>:

void print_call_stack(uint32_t sp) {
    1c1c:	b580      	push	{r7, lr}
    1c1e:	b096      	sub	sp, #88	; 0x58
    1c20:	af02      	add	r7, sp, #8
    1c22:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
    1c24:	2300      	movs	r3, #0
    1c26:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
    1c28:	f107 0308 	add.w	r3, r7, #8
    1c2c:	2240      	movs	r2, #64	; 0x40
    1c2e:	2100      	movs	r1, #0
    1c30:	4618      	mov	r0, r3
    1c32:	f7ff fdcb 	bl	17cc <memset>
    printf("[%s] ====================================\n", __func__);
    1c36:	4928      	ldr	r1, [pc, #160]	; (1cd8 <print_call_stack+0xbc>)
    1c38:	4828      	ldr	r0, [pc, #160]	; (1cdc <print_call_stack+0xc0>)
    1c3a:	f7ff facc 	bl	11d6 <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
    1c3e:	f107 0308 	add.w	r3, r7, #8
    1c42:	687a      	ldr	r2, [r7, #4]
    1c44:	2110      	movs	r1, #16
    1c46:	4618      	mov	r0, r3
    1c48:	f7ff ff5f 	bl	1b0a <backtrace_call_stack>
    1c4c:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
    1c4e:	4922      	ldr	r1, [pc, #136]	; (1cd8 <print_call_stack+0xbc>)
    1c50:	4822      	ldr	r0, [pc, #136]	; (1cdc <print_call_stack+0xc0>)
    1c52:	f7ff fac0 	bl	11d6 <printf_>

    for (i = 0; i < cur_depth; i++) {
    1c56:	2300      	movs	r3, #0
    1c58:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c5a:	e01b      	b.n	1c94 <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
    1c5c:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c5e:	4613      	mov	r3, r2
    1c60:	00db      	lsls	r3, r3, #3
    1c62:	4413      	add	r3, r2
    1c64:	4a1e      	ldr	r2, [pc, #120]	; (1ce0 <print_call_stack+0xc4>)
    1c66:	1898      	adds	r0, r3, r2
    1c68:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c6a:	009b      	lsls	r3, r3, #2
    1c6c:	f107 0250 	add.w	r2, r7, #80	; 0x50
    1c70:	4413      	add	r3, r2
    1c72:	f853 3c48 	ldr.w	r3, [r3, #-72]
    1c76:	461a      	mov	r2, r3
    1c78:	491a      	ldr	r1, [pc, #104]	; (1ce4 <print_call_stack+0xc8>)
    1c7a:	f7ff fac7 	bl	120c <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
    1c7e:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c80:	4613      	mov	r3, r2
    1c82:	00db      	lsls	r3, r3, #3
    1c84:	4413      	add	r3, r2
    1c86:	3308      	adds	r3, #8
    1c88:	4a15      	ldr	r2, [pc, #84]	; (1ce0 <print_call_stack+0xc4>)
    1c8a:	2120      	movs	r1, #32
    1c8c:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
    1c8e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c90:	3301      	adds	r3, #1
    1c92:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c94:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c96:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1c98:	429a      	cmp	r2, r3
    1c9a:	d3df      	bcc.n	1c5c <print_call_stack+0x40>
    }

    if (cur_depth) {
    1c9c:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1c9e:	2b00      	cmp	r3, #0
    1ca0:	d00f      	beq.n	1cc2 <print_call_stack+0xa6>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
    1ca2:	4811      	ldr	r0, [pc, #68]	; (1ce8 <print_call_stack+0xcc>)
    1ca4:	6cba      	ldr	r2, [r7, #72]	; 0x48
    1ca6:	4613      	mov	r3, r2
    1ca8:	00db      	lsls	r3, r3, #3
    1caa:	441a      	add	r2, r3
    1cac:	4b0c      	ldr	r3, [pc, #48]	; (1ce0 <print_call_stack+0xc4>)
    1cae:	9300      	str	r3, [sp, #0]
    1cb0:	4613      	mov	r3, r2
    1cb2:	4a0e      	ldr	r2, [pc, #56]	; (1cec <print_call_stack+0xd0>)
    1cb4:	490e      	ldr	r1, [pc, #56]	; (1cf0 <print_call_stack+0xd4>)
    1cb6:	f7ff fa8e 	bl	11d6 <printf_>
    1cba:	480e      	ldr	r0, [pc, #56]	; (1cf4 <print_call_stack+0xd8>)
    1cbc:	f7ff fa8b 	bl	11d6 <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
    1cc0:	e006      	b.n	1cd0 <print_call_stack+0xb4>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    1cc2:	4b0d      	ldr	r3, [pc, #52]	; (1cf8 <print_call_stack+0xdc>)
    1cc4:	4618      	mov	r0, r3
    1cc6:	f7ff fa86 	bl	11d6 <printf_>
    1cca:	480a      	ldr	r0, [pc, #40]	; (1cf4 <print_call_stack+0xd8>)
    1ccc:	f7ff fa83 	bl	11d6 <printf_>
}
    1cd0:	bf00      	nop
    1cd2:	3750      	adds	r7, #80	; 0x50
    1cd4:	46bd      	mov	sp, r7
    1cd6:	bd80      	pop	{r7, pc}
    1cd8:	000031cc 	.word	0x000031cc
    1cdc:	00002690 	.word	0x00002690
    1ce0:	20000050 	.word	0x20000050
    1ce4:	00003030 	.word	0x00003030
    1ce8:	0000286c 	.word	0x0000286c
    1cec:	00003038 	.word	0x00003038
    1cf0:	00003040 	.word	0x00003040
    1cf4:	00003050 	.word	0x00003050
    1cf8:	000028ac 	.word	0x000028ac

00001cfc <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
    1cfc:	b598      	push	{r3, r4, r7, lr}
    1cfe:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d00:	490d      	ldr	r1, [pc, #52]	; (1d38 <backtrace_level_3+0x3c>)
    1d02:	480e      	ldr	r0, [pc, #56]	; (1d3c <backtrace_level_3+0x40>)
    1d04:	f7ff fa67 	bl	11d6 <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
    1d08:	4b0d      	ldr	r3, [pc, #52]	; (1d40 <backtrace_level_3+0x44>)
    1d0a:	6818      	ldr	r0, [r3, #0]
    1d0c:	4b0d      	ldr	r3, [pc, #52]	; (1d44 <backtrace_level_3+0x48>)
    1d0e:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d10:	466a      	mov	r2, sp
    1d12:	4614      	mov	r4, r2
    return(result);
    1d14:	4622      	mov	r2, r4
    1d16:	4619      	mov	r1, r3
    1d18:	f7ff fe96 	bl	1a48 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d1c:	466b      	mov	r3, sp
    1d1e:	461c      	mov	r4, r3
    return(result);
    1d20:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
    1d22:	4618      	mov	r0, r3
    1d24:	f7ff ff7a 	bl	1c1c <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d28:	466b      	mov	r3, sp
    1d2a:	461c      	mov	r4, r3
    return(result);
    1d2c:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
    1d2e:	4618      	mov	r0, r3
    1d30:	f000 f998 	bl	2064 <BackTraceSub>
}
    1d34:	bf00      	nop
    1d36:	bd98      	pop	{r3, r4, r7, pc}
    1d38:	000031e0 	.word	0x000031e0
    1d3c:	00003054 	.word	0x00003054
    1d40:	20000038 	.word	0x20000038
    1d44:	20000040 	.word	0x20000040

00001d48 <backtrace_level_2>:
void backtrace_level_2(void)
{
    1d48:	b580      	push	{r7, lr}
    1d4a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d4c:	4903      	ldr	r1, [pc, #12]	; (1d5c <backtrace_level_2+0x14>)
    1d4e:	4804      	ldr	r0, [pc, #16]	; (1d60 <backtrace_level_2+0x18>)
    1d50:	f7ff fa41 	bl	11d6 <printf_>
    backtrace_level_3();
    1d54:	f7ff ffd2 	bl	1cfc <backtrace_level_3>
}
    1d58:	bf00      	nop
    1d5a:	bd80      	pop	{r7, pc}
    1d5c:	000031f4 	.word	0x000031f4
    1d60:	00003054 	.word	0x00003054

00001d64 <backtrace_level_1>:
void backtrace_level_1(void)
{
    1d64:	b580      	push	{r7, lr}
    1d66:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d68:	4903      	ldr	r1, [pc, #12]	; (1d78 <backtrace_level_1+0x14>)
    1d6a:	4804      	ldr	r0, [pc, #16]	; (1d7c <backtrace_level_1+0x18>)
    1d6c:	f7ff fa33 	bl	11d6 <printf_>
    backtrace_level_2();
    1d70:	f7ff ffea 	bl	1d48 <backtrace_level_2>
}
    1d74:	bf00      	nop
    1d76:	bd80      	pop	{r7, pc}
    1d78:	00003208 	.word	0x00003208
    1d7c:	00003054 	.word	0x00003054

00001d80 <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
    1d80:	b590      	push	{r4, r7, lr}
    1d82:	b089      	sub	sp, #36	; 0x24
    1d84:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
    1d86:	23aa      	movs	r3, #170	; 0xaa
    1d88:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
    1d8a:	2355      	movs	r3, #85	; 0x55
    1d8c:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
    1d8e:	2377      	movs	r3, #119	; 0x77
    1d90:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
    1d92:	4a47      	ldr	r2, [pc, #284]	; (1eb0 <backtrace_test+0x130>)
    1d94:	4b47      	ldr	r3, [pc, #284]	; (1eb4 <backtrace_test+0x134>)
    1d96:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
    1d98:	4a47      	ldr	r2, [pc, #284]	; (1eb8 <backtrace_test+0x138>)
    1d9a:	4b48      	ldr	r3, [pc, #288]	; (1ebc <backtrace_test+0x13c>)
    1d9c:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
    1d9e:	4b47      	ldr	r3, [pc, #284]	; (1ebc <backtrace_test+0x13c>)
    1da0:	681a      	ldr	r2, [r3, #0]
    1da2:	4b44      	ldr	r3, [pc, #272]	; (1eb4 <backtrace_test+0x134>)
    1da4:	681b      	ldr	r3, [r3, #0]
    1da6:	1ad3      	subs	r3, r2, r3
    1da8:	4a45      	ldr	r2, [pc, #276]	; (1ec0 <backtrace_test+0x140>)
    1daa:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
    1dac:	4a45      	ldr	r2, [pc, #276]	; (1ec4 <backtrace_test+0x144>)
    1dae:	4b46      	ldr	r3, [pc, #280]	; (1ec8 <backtrace_test+0x148>)
    1db0:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
    1db2:	4a46      	ldr	r2, [pc, #280]	; (1ecc <backtrace_test+0x14c>)
    1db4:	4b46      	ldr	r3, [pc, #280]	; (1ed0 <backtrace_test+0x150>)
    1db6:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
    1db8:	4b45      	ldr	r3, [pc, #276]	; (1ed0 <backtrace_test+0x150>)
    1dba:	681a      	ldr	r2, [r3, #0]
    1dbc:	4b42      	ldr	r3, [pc, #264]	; (1ec8 <backtrace_test+0x148>)
    1dbe:	681b      	ldr	r3, [r3, #0]
    1dc0:	1ad3      	subs	r3, r2, r3
    1dc2:	4a44      	ldr	r2, [pc, #272]	; (1ed4 <backtrace_test+0x154>)
    1dc4:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
    1dc6:	4a44      	ldr	r2, [pc, #272]	; (1ed8 <backtrace_test+0x158>)
    1dc8:	4b44      	ldr	r3, [pc, #272]	; (1edc <backtrace_test+0x15c>)
    1dca:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
    1dcc:	4a44      	ldr	r2, [pc, #272]	; (1ee0 <backtrace_test+0x160>)
    1dce:	4b45      	ldr	r3, [pc, #276]	; (1ee4 <backtrace_test+0x164>)
    1dd0:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
    1dd2:	4b44      	ldr	r3, [pc, #272]	; (1ee4 <backtrace_test+0x164>)
    1dd4:	681a      	ldr	r2, [r3, #0]
    1dd6:	4b41      	ldr	r3, [pc, #260]	; (1edc <backtrace_test+0x15c>)
    1dd8:	681b      	ldr	r3, [r3, #0]
    1dda:	1ad3      	subs	r3, r2, r3
    1ddc:	4a42      	ldr	r2, [pc, #264]	; (1ee8 <backtrace_test+0x168>)
    1dde:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
    1de0:	4b34      	ldr	r3, [pc, #208]	; (1eb4 <backtrace_test+0x134>)
    1de2:	6819      	ldr	r1, [r3, #0]
    1de4:	4b35      	ldr	r3, [pc, #212]	; (1ebc <backtrace_test+0x13c>)
    1de6:	6818      	ldr	r0, [r3, #0]
    1de8:	4b35      	ldr	r3, [pc, #212]	; (1ec0 <backtrace_test+0x140>)
    1dea:	681b      	ldr	r3, [r3, #0]
    1dec:	4a34      	ldr	r2, [pc, #208]	; (1ec0 <backtrace_test+0x140>)
    1dee:	6812      	ldr	r2, [r2, #0]
    1df0:	9201      	str	r2, [sp, #4]
    1df2:	9300      	str	r3, [sp, #0]
    1df4:	4603      	mov	r3, r0
    1df6:	460a      	mov	r2, r1
    1df8:	493c      	ldr	r1, [pc, #240]	; (1eec <backtrace_test+0x16c>)
    1dfa:	483d      	ldr	r0, [pc, #244]	; (1ef0 <backtrace_test+0x170>)
    1dfc:	f7ff f9eb 	bl	11d6 <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
    1e00:	4b31      	ldr	r3, [pc, #196]	; (1ec8 <backtrace_test+0x148>)
    1e02:	6819      	ldr	r1, [r3, #0]
    1e04:	4b32      	ldr	r3, [pc, #200]	; (1ed0 <backtrace_test+0x150>)
    1e06:	6818      	ldr	r0, [r3, #0]
    1e08:	4b32      	ldr	r3, [pc, #200]	; (1ed4 <backtrace_test+0x154>)
    1e0a:	681b      	ldr	r3, [r3, #0]
    1e0c:	4a31      	ldr	r2, [pc, #196]	; (1ed4 <backtrace_test+0x154>)
    1e0e:	6812      	ldr	r2, [r2, #0]
    1e10:	9201      	str	r2, [sp, #4]
    1e12:	9300      	str	r3, [sp, #0]
    1e14:	4603      	mov	r3, r0
    1e16:	460a      	mov	r2, r1
    1e18:	4934      	ldr	r1, [pc, #208]	; (1eec <backtrace_test+0x16c>)
    1e1a:	4836      	ldr	r0, [pc, #216]	; (1ef4 <backtrace_test+0x174>)
    1e1c:	f7ff f9db 	bl	11d6 <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
    1e20:	4b2e      	ldr	r3, [pc, #184]	; (1edc <backtrace_test+0x15c>)
    1e22:	6819      	ldr	r1, [r3, #0]
    1e24:	4b2f      	ldr	r3, [pc, #188]	; (1ee4 <backtrace_test+0x164>)
    1e26:	6818      	ldr	r0, [r3, #0]
    1e28:	4b2f      	ldr	r3, [pc, #188]	; (1ee8 <backtrace_test+0x168>)
    1e2a:	681b      	ldr	r3, [r3, #0]
    1e2c:	4a2e      	ldr	r2, [pc, #184]	; (1ee8 <backtrace_test+0x168>)
    1e2e:	6812      	ldr	r2, [r2, #0]
    1e30:	9201      	str	r2, [sp, #4]
    1e32:	9300      	str	r3, [sp, #0]
    1e34:	4603      	mov	r3, r0
    1e36:	460a      	mov	r2, r1
    1e38:	492c      	ldr	r1, [pc, #176]	; (1eec <backtrace_test+0x16c>)
    1e3a:	482f      	ldr	r0, [pc, #188]	; (1ef8 <backtrace_test+0x178>)
    1e3c:	f7ff f9cb 	bl	11d6 <printf_>
  __ASM volatile ("cpsie i" : : : "memory");
    1e40:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1e42:	466b      	mov	r3, sp
    1e44:	461c      	mov	r4, r3
    return(result);
    1e46:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
    1e48:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
    1e4a:	6979      	ldr	r1, [r7, #20]
    1e4c:	482b      	ldr	r0, [pc, #172]	; (1efc <backtrace_test+0x17c>)
    1e4e:	f7ff f9c2 	bl	11d6 <printf_>
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
    1e52:	467b      	mov	r3, pc
    1e54:	461c      	mov	r4, r3
    return(result);
    1e56:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
    1e58:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
    1e5a:	6879      	ldr	r1, [r7, #4]
    1e5c:	4828      	ldr	r0, [pc, #160]	; (1f00 <backtrace_test+0x180>)
    1e5e:	f7ff f9ba 	bl	11d6 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1e62:	e01b      	b.n	1e9c <backtrace_test+0x11c>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
    1e64:	697b      	ldr	r3, [r7, #20]
    1e66:	681b      	ldr	r3, [r3, #0]
    1e68:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
    1e6a:	6839      	ldr	r1, [r7, #0]
    1e6c:	4825      	ldr	r0, [pc, #148]	; (1f04 <backtrace_test+0x184>)
    1e6e:	f7ff f9b2 	bl	11d6 <printf_>
        if ((addr >= (uint32_t)&_stext) &&
    1e72:	4a0f      	ldr	r2, [pc, #60]	; (1eb0 <backtrace_test+0x130>)
    1e74:	683b      	ldr	r3, [r7, #0]
    1e76:	4293      	cmp	r3, r2
    1e78:	d30d      	bcc.n	1e96 <backtrace_test+0x116>
        (sp <= (uint32_t)&_etext) &&
    1e7a:	4a0f      	ldr	r2, [pc, #60]	; (1eb8 <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
    1e7c:	697b      	ldr	r3, [r7, #20]
    1e7e:	4293      	cmp	r3, r2
    1e80:	d809      	bhi.n	1e96 <backtrace_test+0x116>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
    1e82:	683b      	ldr	r3, [r7, #0]
    1e84:	3b01      	subs	r3, #1
    1e86:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
    1e8a:	2b00      	cmp	r3, #0
    1e8c:	d103      	bne.n	1e96 <backtrace_test+0x116>

            printf("find ld 0x%08x\n", addr);
    1e8e:	6839      	ldr	r1, [r7, #0]
    1e90:	481d      	ldr	r0, [pc, #116]	; (1f08 <backtrace_test+0x188>)
    1e92:	f7ff f9a0 	bl	11d6 <printf_>
        }
        sp += 4;
    1e96:	697b      	ldr	r3, [r7, #20]
    1e98:	3304      	adds	r3, #4
    1e9a:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1e9c:	4a0b      	ldr	r2, [pc, #44]	; (1ecc <backtrace_test+0x14c>)
    1e9e:	697b      	ldr	r3, [r7, #20]
    1ea0:	4293      	cmp	r3, r2
    1ea2:	d3df      	bcc.n	1e64 <backtrace_test+0xe4>
    }
    backtrace_level_1();
    1ea4:	f7ff ff5e 	bl	1d64 <backtrace_level_1>
    fault_test_by_div0();
    1ea8:	f7ff fdae 	bl	1a08 <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
    1eac:	e7fe      	b.n	1eac <backtrace_test+0x12c>
    1eae:	bf00      	nop
    1eb0:	00000000 	.word	0x00000000
    1eb4:	2000002c 	.word	0x2000002c
    1eb8:	000033d0 	.word	0x000033d0
    1ebc:	20000030 	.word	0x20000030
    1ec0:	20000034 	.word	0x20000034
    1ec4:	20000910 	.word	0x20000910
    1ec8:	20000038 	.word	0x20000038
    1ecc:	20001910 	.word	0x20001910
    1ed0:	2000003c 	.word	0x2000003c
    1ed4:	20000040 	.word	0x20000040
    1ed8:	20001910 	.word	0x20001910
    1edc:	20000044 	.word	0x20000044
    1ee0:	20005910 	.word	0x20005910
    1ee4:	20000048 	.word	0x20000048
    1ee8:	2000004c 	.word	0x2000004c
    1eec:	0000321c 	.word	0x0000321c
    1ef0:	0000305c 	.word	0x0000305c
    1ef4:	000030a4 	.word	0x000030a4
    1ef8:	000030ec 	.word	0x000030ec
    1efc:	00003134 	.word	0x00003134
    1f00:	00003140 	.word	0x00003140
    1f04:	0000314c 	.word	0x0000314c
    1f08:	00003158 	.word	0x00003158

00001f0c <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    1f0c:	b480      	push	{r7}
    1f0e:	b083      	sub	sp, #12
    1f10:	af00      	add	r7, sp, #0
    1f12:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1f14:	e00e      	b.n	1f34 <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
    1f16:	687b      	ldr	r3, [r7, #4]
    1f18:	881b      	ldrh	r3, [r3, #0]
    1f1a:	0a1b      	lsrs	r3, r3, #8
    1f1c:	b29b      	uxth	r3, r3
    1f1e:	2bb5      	cmp	r3, #181	; 0xb5
    1f20:	d00d      	beq.n	1f3e <LoopUntilEntry+0x32>
    1f22:	687b      	ldr	r3, [r7, #4]
    1f24:	881b      	ldrh	r3, [r3, #0]
    1f26:	0a1b      	lsrs	r3, r3, #8
    1f28:	b29b      	uxth	r3, r3
    1f2a:	2bb4      	cmp	r3, #180	; 0xb4
    1f2c:	d007      	beq.n	1f3e <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
    1f2e:	687b      	ldr	r3, [r7, #4]
    1f30:	3b02      	subs	r3, #2
    1f32:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1f34:	4b05      	ldr	r3, [pc, #20]	; (1f4c <LoopUntilEntry+0x40>)
    1f36:	681b      	ldr	r3, [r3, #0]
    1f38:	687a      	ldr	r2, [r7, #4]
    1f3a:	429a      	cmp	r2, r3
    1f3c:	d8eb      	bhi.n	1f16 <LoopUntilEntry+0xa>
    }

    return addr;
    1f3e:	687b      	ldr	r3, [r7, #4]
}
    1f40:	4618      	mov	r0, r3
    1f42:	370c      	adds	r7, #12
    1f44:	46bd      	mov	sp, r7
    1f46:	bc80      	pop	{r7}
    1f48:	4770      	bx	lr
    1f4a:	bf00      	nop
    1f4c:	2000002c 	.word	0x2000002c

00001f50 <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    1f50:	b480      	push	{r7}
    1f52:	b087      	sub	sp, #28
    1f54:	af00      	add	r7, sp, #0
    1f56:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1f58:	2300      	movs	r3, #0
    1f5a:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
    1f5c:	687b      	ldr	r3, [r7, #4]
    1f5e:	881b      	ldrh	r3, [r3, #0]
    1f60:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1f64:	2b00      	cmp	r3, #0
    1f66:	d00b      	beq.n	1f80 <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f68:	687b      	ldr	r3, [r7, #4]
    1f6a:	881b      	ldrh	r3, [r3, #0]
    1f6c:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f70:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f72:	687b      	ldr	r3, [r7, #4]
    1f74:	3302      	adds	r3, #2
    1f76:	881b      	ldrh	r3, [r3, #0]
    1f78:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f7c:	613b      	str	r3, [r7, #16]
    1f7e:	e00a      	b.n	1f96 <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f80:	687b      	ldr	r3, [r7, #4]
    1f82:	881b      	ldrh	r3, [r3, #0]
    1f84:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f88:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f8a:	687b      	ldr	r3, [r7, #4]
    1f8c:	3302      	adds	r3, #2
    1f8e:	881b      	ldrh	r3, [r3, #0]
    1f90:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f94:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    1f96:	693b      	ldr	r3, [r7, #16]
    1f98:	031a      	lsls	r2, r3, #12
    1f9a:	68fb      	ldr	r3, [r7, #12]
    1f9c:	005b      	lsls	r3, r3, #1
    1f9e:	4413      	add	r3, r2
    1fa0:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
    1fa2:	68bb      	ldr	r3, [r7, #8]
    1fa4:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1fa8:	2b00      	cmp	r3, #0
    1faa:	d008      	beq.n	1fbe <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    1fac:	68bb      	ldr	r3, [r7, #8]
    1fae:	425b      	negs	r3, r3
    1fb0:	f3c3 0316 	ubfx	r3, r3, #0, #23
    1fb4:	687a      	ldr	r2, [r7, #4]
    1fb6:	1ad3      	subs	r3, r2, r3
    1fb8:	3304      	adds	r3, #4
    1fba:	617b      	str	r3, [r7, #20]
    1fbc:	e004      	b.n	1fc8 <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
    1fbe:	687a      	ldr	r2, [r7, #4]
    1fc0:	68bb      	ldr	r3, [r7, #8]
    1fc2:	4413      	add	r3, r2
    1fc4:	3304      	adds	r3, #4
    1fc6:	617b      	str	r3, [r7, #20]
    }

    return target;
    1fc8:	697b      	ldr	r3, [r7, #20]
}
    1fca:	4618      	mov	r0, r3
    1fcc:	371c      	adds	r7, #28
    1fce:	46bd      	mov	sp, r7
    1fd0:	bc80      	pop	{r7}
    1fd2:	4770      	bx	lr

00001fd4 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    1fd4:	b580      	push	{r7, lr}
    1fd6:	b084      	sub	sp, #16
    1fd8:	af00      	add	r7, sp, #0
    1fda:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1fdc:	2300      	movs	r3, #0
    1fde:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
    1fe0:	687b      	ldr	r3, [r7, #4]
    1fe2:	3b02      	subs	r3, #2
    1fe4:	881b      	ldrh	r3, [r3, #0]
    1fe6:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1fea:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1fee:	d11a      	bne.n	2026 <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
    1ff0:	4b1b      	ldr	r3, [pc, #108]	; (2060 <CalculateTargetAddress+0x8c>)
    1ff2:	681b      	ldr	r3, [r3, #0]
    1ff4:	2b00      	cmp	r3, #0
    1ff6:	d00b      	beq.n	2010 <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
    1ff8:	4b19      	ldr	r3, [pc, #100]	; (2060 <CalculateTargetAddress+0x8c>)
    1ffa:	681b      	ldr	r3, [r3, #0]
    1ffc:	4618      	mov	r0, r3
    1ffe:	f7ff ff85 	bl	1f0c <LoopUntilEntry>
    2002:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
    2004:	687b      	ldr	r3, [r7, #4]
    2006:	3b02      	subs	r3, #2
    2008:	4a15      	ldr	r2, [pc, #84]	; (2060 <CalculateTargetAddress+0x8c>)
    200a:	6013      	str	r3, [r2, #0]
            return target;
    200c:	68fb      	ldr	r3, [r7, #12]
    200e:	e023      	b.n	2058 <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
    2010:	687b      	ldr	r3, [r7, #4]
    2012:	3b02      	subs	r3, #2
    2014:	4a12      	ldr	r2, [pc, #72]	; (2060 <CalculateTargetAddress+0x8c>)
    2016:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
    2018:	4b11      	ldr	r3, [pc, #68]	; (2060 <CalculateTargetAddress+0x8c>)
    201a:	681b      	ldr	r3, [r3, #0]
    201c:	4618      	mov	r0, r3
    201e:	f7ff ff75 	bl	1f0c <LoopUntilEntry>
    2022:	4603      	mov	r3, r0
    2024:	e018      	b.n	2058 <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
    2026:	687b      	ldr	r3, [r7, #4]
    2028:	3b04      	subs	r3, #4
    202a:	681b      	ldr	r3, [r3, #0]
    202c:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
    2030:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
    2034:	d10f      	bne.n	2056 <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
    2036:	687b      	ldr	r3, [r7, #4]
    2038:	3b04      	subs	r3, #4
    203a:	4a09      	ldr	r2, [pc, #36]	; (2060 <CalculateTargetAddress+0x8c>)
    203c:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
    203e:	4b08      	ldr	r3, [pc, #32]	; (2060 <CalculateTargetAddress+0x8c>)
    2040:	681b      	ldr	r3, [r3, #0]
    2042:	4618      	mov	r0, r3
    2044:	f7ff ff84 	bl	1f50 <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
    2048:	4b05      	ldr	r3, [pc, #20]	; (2060 <CalculateTargetAddress+0x8c>)
    204a:	681b      	ldr	r3, [r3, #0]
    204c:	4618      	mov	r0, r3
    204e:	f7ff ff7f 	bl	1f50 <CalculateBLTargetAddress>
    2052:	4603      	mov	r3, r0
    2054:	e000      	b.n	2058 <CalculateTargetAddress+0x84>
    }

    return 0;
    2056:	2300      	movs	r3, #0
}
    2058:	4618      	mov	r0, r3
    205a:	3710      	adds	r7, #16
    205c:	46bd      	mov	sp, r7
    205e:	bd80      	pop	{r7, pc}
    2060:	200000e4 	.word	0x200000e4

00002064 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
    2064:	b580      	push	{r7, lr}
    2066:	b086      	sub	sp, #24
    2068:	af00      	add	r7, sp, #0
    206a:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
    206c:	687b      	ldr	r3, [r7, #4]
    206e:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
    2070:	2300      	movs	r3, #0
    2072:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    2074:	e03b      	b.n	20ee <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    2076:	697b      	ldr	r3, [r7, #20]
    2078:	681a      	ldr	r2, [r3, #0]
    207a:	4b23      	ldr	r3, [pc, #140]	; (2108 <BackTraceSub+0xa4>)
    207c:	681b      	ldr	r3, [r3, #0]
    207e:	429a      	cmp	r2, r3
    2080:	d32e      	bcc.n	20e0 <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    2082:	697b      	ldr	r3, [r7, #20]
    2084:	681a      	ldr	r2, [r3, #0]
    2086:	4b21      	ldr	r3, [pc, #132]	; (210c <BackTraceSub+0xa8>)
    2088:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    208a:	429a      	cmp	r2, r3
    208c:	d828      	bhi.n	20e0 <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
    208e:	697b      	ldr	r3, [r7, #20]
    2090:	681b      	ldr	r3, [r3, #0]
    2092:	3b01      	subs	r3, #1
    2094:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    2098:	2b00      	cmp	r3, #0
    209a:	d121      	bne.n	20e0 <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
    209c:	697b      	ldr	r3, [r7, #20]
    209e:	681b      	ldr	r3, [r3, #0]
    20a0:	3b01      	subs	r3, #1
    20a2:	4618      	mov	r0, r3
    20a4:	f7ff ff96 	bl	1fd4 <CalculateTargetAddress>
    20a8:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
    20aa:	68fb      	ldr	r3, [r7, #12]
    20ac:	2b00      	cmp	r3, #0
    20ae:	d004      	beq.n	20ba <BackTraceSub+0x56>
    20b0:	4b17      	ldr	r3, [pc, #92]	; (2110 <BackTraceSub+0xac>)
    20b2:	681b      	ldr	r3, [r3, #0]
    20b4:	68fa      	ldr	r2, [r7, #12]
    20b6:	429a      	cmp	r2, r3
    20b8:	d103      	bne.n	20c2 <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
    20ba:	697b      	ldr	r3, [r7, #20]
    20bc:	3304      	adds	r3, #4
    20be:	617b      	str	r3, [r7, #20]
                continue;
    20c0:	e015      	b.n	20ee <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
    20c2:	4a13      	ldr	r2, [pc, #76]	; (2110 <BackTraceSub+0xac>)
    20c4:	68fb      	ldr	r3, [r7, #12]
    20c6:	6013      	str	r3, [r2, #0]
            count++;
    20c8:	693b      	ldr	r3, [r7, #16]
    20ca:	3301      	adds	r3, #1
    20cc:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
    20ce:	697b      	ldr	r3, [r7, #20]
    20d0:	681b      	ldr	r3, [r3, #0]
    20d2:	1e5a      	subs	r2, r3, #1
    20d4:	4b0e      	ldr	r3, [pc, #56]	; (2110 <BackTraceSub+0xac>)
    20d6:	681b      	ldr	r3, [r3, #0]
    20d8:	6939      	ldr	r1, [r7, #16]
    20da:	480e      	ldr	r0, [pc, #56]	; (2114 <BackTraceSub+0xb0>)
    20dc:	f7ff f87b 	bl	11d6 <printf_>
        }
        stackPointer += STACK_OFFSET;
    20e0:	697b      	ldr	r3, [r7, #20]
    20e2:	3304      	adds	r3, #4
    20e4:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
    20e6:	6979      	ldr	r1, [r7, #20]
    20e8:	480b      	ldr	r0, [pc, #44]	; (2118 <BackTraceSub+0xb4>)
    20ea:	f7ff f874 	bl	11d6 <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    20ee:	4b0b      	ldr	r3, [pc, #44]	; (211c <BackTraceSub+0xb8>)
    20f0:	681b      	ldr	r3, [r3, #0]
    20f2:	697a      	ldr	r2, [r7, #20]
    20f4:	429a      	cmp	r2, r3
    20f6:	d202      	bcs.n	20fe <BackTraceSub+0x9a>
    20f8:	693b      	ldr	r3, [r7, #16]
    20fa:	2b0e      	cmp	r3, #14
    20fc:	d9bb      	bls.n	2076 <BackTraceSub+0x12>
    }
}
    20fe:	bf00      	nop
    2100:	3718      	adds	r7, #24
    2102:	46bd      	mov	sp, r7
    2104:	bd80      	pop	{r7, pc}
    2106:	bf00      	nop
    2108:	2000002c 	.word	0x2000002c
    210c:	20000030 	.word	0x20000030
    2110:	200000e8 	.word	0x200000e8
    2114:	00003168 	.word	0x00003168
    2118:	00003194 	.word	0x00003194
    211c:	2000003c 	.word	0x2000003c

00002120 <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sContextStateFrame *frame) {
    2120:	b4b0      	push	{r4, r5, r7}
    2122:	b085      	sub	sp, #20
    2124:	af00      	add	r7, sp, #0
    2126:	6078      	str	r0, [r7, #4]
    s_last_crash_into.frame = *frame;
    2128:	4b30      	ldr	r3, [pc, #192]	; (21ec <HardFault_Handler_C+0xcc>)
    212a:	687a      	ldr	r2, [r7, #4]
    212c:	1d1c      	adds	r4, r3, #4
    212e:	4615      	mov	r5, r2
    2130:	6828      	ldr	r0, [r5, #0]
    2132:	6869      	ldr	r1, [r5, #4]
    2134:	68aa      	ldr	r2, [r5, #8]
    2136:	68eb      	ldr	r3, [r5, #12]
    2138:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    213a:	6928      	ldr	r0, [r5, #16]
    213c:	6969      	ldr	r1, [r5, #20]
    213e:	69aa      	ldr	r2, [r5, #24]
    2140:	69eb      	ldr	r3, [r5, #28]
    2142:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    s_last_crash_into.magic = CRASH_INFO_MAGIC;
    2144:	4b29      	ldr	r3, [pc, #164]	; (21ec <HardFault_Handler_C+0xcc>)
    2146:	4a2a      	ldr	r2, [pc, #168]	; (21f0 <HardFault_Handler_C+0xd0>)
    2148:	601a      	str	r2, [r3, #0]
  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
    214a:	4b2a      	ldr	r3, [pc, #168]	; (21f4 <HardFault_Handler_C+0xd4>)
    214c:	681b      	ldr	r3, [r3, #0]
    214e:	f003 0301 	and.w	r3, r3, #1
    2152:	2b00      	cmp	r3, #0
    2154:	d000      	beq.n	2158 <HardFault_Handler_C+0x38>
    2156:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
    2158:	4b27      	ldr	r3, [pc, #156]	; (21f8 <HardFault_Handler_C+0xd8>)
    215a:	60fb      	str	r3, [r7, #12]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
    215c:	4b27      	ldr	r3, [pc, #156]	; (21fc <HardFault_Handler_C+0xdc>)
    215e:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    2160:	68fb      	ldr	r3, [r7, #12]
    2162:	43db      	mvns	r3, r3
    2164:	4013      	ands	r3, r2
    2166:	2b00      	cmp	r3, #0
    2168:	bf14      	ite	ne
    216a:	2301      	movne	r3, #1
    216c:	2300      	moveq	r3, #0
    216e:	72fb      	strb	r3, [r7, #11]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
    2170:	687b      	ldr	r3, [r7, #4]
    2172:	69db      	ldr	r3, [r3, #28]
    2174:	b2db      	uxtb	r3, r3
    2176:	2b00      	cmp	r3, #0
    2178:	bf14      	ite	ne
    217a:	2301      	movne	r3, #1
    217c:	2300      	moveq	r3, #0
    217e:	72bb      	strb	r3, [r7, #10]

  if (faulted_from_exception || non_usage_fault_occurred) {
    2180:	7abb      	ldrb	r3, [r7, #10]
    2182:	2b00      	cmp	r3, #0
    2184:	d102      	bne.n	218c <HardFault_Handler_C+0x6c>
    2186:	7afb      	ldrb	r3, [r7, #11]
    2188:	2b00      	cmp	r3, #0
    218a:	d003      	beq.n	2194 <HardFault_Handler_C+0x74>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
    218c:	4b1b      	ldr	r3, [pc, #108]	; (21fc <HardFault_Handler_C+0xdc>)
    218e:	4a1c      	ldr	r2, [pc, #112]	; (2200 <HardFault_Handler_C+0xe0>)
    2190:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
    2192:	e7fe      	b.n	2192 <HardFault_Handler_C+0x72>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
    2194:	4b19      	ldr	r3, [pc, #100]	; (21fc <HardFault_Handler_C+0xdc>)
    2196:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    2198:	4b18      	ldr	r3, [pc, #96]	; (21fc <HardFault_Handler_C+0xdc>)
    219a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    219c:	4917      	ldr	r1, [pc, #92]	; (21fc <HardFault_Handler_C+0xdc>)
    219e:	4313      	orrs	r3, r2
    21a0:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
    21a2:	4a18      	ldr	r2, [pc, #96]	; (2204 <HardFault_Handler_C+0xe4>)
    21a4:	687b      	ldr	r3, [r7, #4]
    21a6:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
    21a8:	687b      	ldr	r3, [r7, #4]
    21aa:	2200      	movs	r2, #0
    21ac:	f062 0210 	orn	r2, r2, #16
    21b0:	751a      	strb	r2, [r3, #20]
    21b2:	2200      	movs	r2, #0
    21b4:	f062 0241 	orn	r2, r2, #65	; 0x41
    21b8:	755a      	strb	r2, [r3, #21]
    21ba:	2200      	movs	r2, #0
    21bc:	f062 0252 	orn	r2, r2, #82	; 0x52
    21c0:	759a      	strb	r2, [r3, #22]
    21c2:	2200      	movs	r2, #0
    21c4:	f062 0221 	orn	r2, r2, #33	; 0x21
    21c8:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
    21ca:	687b      	ldr	r3, [r7, #4]
    21cc:	2200      	movs	r2, #0
    21ce:	771a      	strb	r2, [r3, #28]
    21d0:	2200      	movs	r2, #0
    21d2:	775a      	strb	r2, [r3, #29]
    21d4:	2200      	movs	r2, #0
    21d6:	779a      	strb	r2, [r3, #30]
    21d8:	2200      	movs	r2, #0
    21da:	f042 0201 	orr.w	r2, r2, #1
    21de:	77da      	strb	r2, [r3, #31]
}
    21e0:	bf00      	nop
    21e2:	3714      	adds	r7, #20
    21e4:	46bd      	mov	sp, r7
    21e6:	bcb0      	pop	{r4, r5, r7}
    21e8:	4770      	bx	lr
    21ea:	bf00      	nop
    21ec:	20000000 	.word	0x20000000
    21f0:	dead55aa 	.word	0xdead55aa
    21f4:	e000edf0 	.word	0xe000edf0
    21f8:	ffff0000 	.word	0xffff0000
    21fc:	e000ed00 	.word	0xe000ed00
    2200:	05fa0004 	.word	0x05fa0004
    2204:	000024f3 	.word	0x000024f3

00002208 <prv_cinit>:
extern uint32_t _ebss;
// End address for stack
extern uint32_t _estack;

// Prevent inlining to avoid persisting any variables on stack
__attribute__((noinline)) static void prv_cinit(void) {
    2208:	b480      	push	{r7}
    220a:	b085      	sub	sp, #20
    220c:	af00      	add	r7, sp, #0
  // Initialize data and bss
  // Copy the data segment initializers from flash to SRAM
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    220e:	4b11      	ldr	r3, [pc, #68]	; (2254 <prv_cinit+0x4c>)
    2210:	60fb      	str	r3, [r7, #12]
    2212:	4b11      	ldr	r3, [pc, #68]	; (2258 <prv_cinit+0x50>)
    2214:	60bb      	str	r3, [r7, #8]
    2216:	e007      	b.n	2228 <prv_cinit+0x20>
    *(dst++) = *(src++);
    2218:	68ba      	ldr	r2, [r7, #8]
    221a:	1d13      	adds	r3, r2, #4
    221c:	60bb      	str	r3, [r7, #8]
    221e:	68fb      	ldr	r3, [r7, #12]
    2220:	1d19      	adds	r1, r3, #4
    2222:	60f9      	str	r1, [r7, #12]
    2224:	6812      	ldr	r2, [r2, #0]
    2226:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    2228:	68fb      	ldr	r3, [r7, #12]
    222a:	4a0c      	ldr	r2, [pc, #48]	; (225c <prv_cinit+0x54>)
    222c:	4293      	cmp	r3, r2
    222e:	d3f3      	bcc.n	2218 <prv_cinit+0x10>
  }

  // Zero fill the bss segment.
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2230:	4b0b      	ldr	r3, [pc, #44]	; (2260 <prv_cinit+0x58>)
    2232:	607b      	str	r3, [r7, #4]
    2234:	e004      	b.n	2240 <prv_cinit+0x38>
    *(dst++) = 0;
    2236:	687b      	ldr	r3, [r7, #4]
    2238:	1d1a      	adds	r2, r3, #4
    223a:	607a      	str	r2, [r7, #4]
    223c:	2200      	movs	r2, #0
    223e:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2240:	687b      	ldr	r3, [r7, #4]
    2242:	4a08      	ldr	r2, [pc, #32]	; (2264 <prv_cinit+0x5c>)
    2244:	4293      	cmp	r3, r2
    2246:	d3f6      	bcc.n	2236 <prv_cinit+0x2e>
  }
}
    2248:	bf00      	nop
    224a:	3714      	adds	r7, #20
    224c:	46bd      	mov	sp, r7
    224e:	bc80      	pop	{r7}
    2250:	4770      	bx	lr
    2252:	bf00      	nop
    2254:	20000000 	.word	0x20000000
    2258:	20000000 	.word	0x20000000
    225c:	20000000 	.word	0x20000000
    2260:	20000024 	.word	0x20000024
    2264:	20000910 	.word	0x20000910

00002268 <DefaultIntHandler>:
static uint8_t s_buffer[10] __attribute__((aligned(4)));
void *g_unaligned_buffer;


// DefaultIntHandler is used for unpopulated interrupts
static void DefaultIntHandler(void) {
    2268:	b480      	push	{r7}
    226a:	af00      	add	r7, sp, #0
  __asm__("bkpt");
    226c:	be00      	bkpt	0x0000
  // Go into an infinite loop.
  while (1)
    226e:	e7fe      	b.n	226e <DefaultIntHandler+0x6>

00002270 <NMI_Handler>:
    ;
}

static void NMI_Handler(void) {
    2270:	b580      	push	{r7, lr}
    2272:	af00      	add	r7, sp, #0
  DefaultIntHandler();
    2274:	f7ff fff8 	bl	2268 <DefaultIntHandler>
}
    2278:	bf00      	nop
    227a:	bd80      	pop	{r7, pc}

0000227c <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
static void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
    227c:	f01e 0f04 	tst.w	lr, #4
    2280:	bf0c      	ite	eq
    2282:	f3ef 8008 	mrseq	r0, MSP
    2286:	f3ef 8009 	mrsne	r0, PSP
    228a:	f7ff bf49 	b.w	2120 <HardFault_Handler_C>
}
    228e:	bf00      	nop

00002290 <MemoryManagement_Handler>:

static void MemoryManagement_Handler(void) {
    2290:	b480      	push	{r7}
    2292:	af00      	add	r7, sp, #0
 
}
    2294:	bf00      	nop
    2296:	46bd      	mov	sp, r7
    2298:	bc80      	pop	{r7}
    229a:	4770      	bx	lr

0000229c <BusFault_Handler>:

static void BusFault_Handler(void) {
    229c:	b480      	push	{r7}
    229e:	af00      	add	r7, sp, #0

}
    22a0:	bf00      	nop
    22a2:	46bd      	mov	sp, r7
    22a4:	bc80      	pop	{r7}
    22a6:	4770      	bx	lr

000022a8 <UsageFault_Handler>:

static void UsageFault_Handler(void) {
    22a8:	b480      	push	{r7}
    22aa:	af00      	add	r7, sp, #0

}
    22ac:	bf00      	nop
    22ae:	46bd      	mov	sp, r7
    22b0:	bc80      	pop	{r7}
    22b2:	4770      	bx	lr

000022b4 <Irq0_Handler>:

void Irq0_Handler(void) {
    22b4:	b480      	push	{r7}
    22b6:	af00      	add	r7, sp, #0

}
    22b8:	bf00      	nop
    22ba:	46bd      	mov	sp, r7
    22bc:	bc80      	pop	{r7}
    22be:	4770      	bx	lr

000022c0 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
    22c0:	b480      	push	{r7}
    22c2:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
    22c4:	4b03      	ldr	r3, [pc, #12]	; (22d4 <exception_init+0x14>)
    22c6:	4a04      	ldr	r2, [pc, #16]	; (22d8 <exception_init+0x18>)
    22c8:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
    22ca:	bf00      	nop
    22cc:	46bd      	mov	sp, r7
    22ce:	bc80      	pop	{r7}
    22d0:	4770      	bx	lr
    22d2:	bf00      	nop
    22d4:	2000090c 	.word	0x2000090c
    22d8:	200000ed 	.word	0x200000ed

000022dc <exception_test>:
void exception_test(void)
{
    22dc:	b580      	push	{r7, lr}
    22de:	af00      	add	r7, sp, #0
  exception_init();
    22e0:	f7ff ffee 	bl	22c0 <exception_init>
}
    22e4:	bf00      	nop
    22e6:	bd80      	pop	{r7, pc}

000022e8 <trigger_irq>:
#include "exception.h"

void trigger_irq(void) 
{
    22e8:	b480      	push	{r7}
    22ea:	af00      	add	r7, sp, #0
    NVIC->ISER[0] |= (0x1 << 1);
    22ec:	4b09      	ldr	r3, [pc, #36]	; (2314 <trigger_irq+0x2c>)
    22ee:	681b      	ldr	r3, [r3, #0]
    22f0:	4a08      	ldr	r2, [pc, #32]	; (2314 <trigger_irq+0x2c>)
    22f2:	f043 0302 	orr.w	r3, r3, #2
    22f6:	6013      	str	r3, [r2, #0]

    // Pend an interrupt
    NVIC->ISPR[0] |= (0x1 << 1);
    22f8:	4b06      	ldr	r3, [pc, #24]	; (2314 <trigger_irq+0x2c>)
    22fa:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
    22fe:	4a05      	ldr	r2, [pc, #20]	; (2314 <trigger_irq+0x2c>)
    2300:	f043 0302 	orr.w	r3, r3, #2
    2304:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
    // flush pipeline to ensure exception takes effect before we
    // return from this routine
    __asm("isb");
    2308:	f3bf 8f6f 	isb	sy
}
    230c:	bf00      	nop
    230e:	46bd      	mov	sp, r7
    2310:	bc80      	pop	{r7}
    2312:	4770      	bx	lr
    2314:	e000e100 	.word	0xe000e100

00002318 <stkerr_from_psp>:
valid. For example, the very last store of the hardware stacking could trigger the fault 
and all the other stores could be valid. However, the order the hardware pushes register 
state on the stack is implementation specific. So when inspecting the frame assume the 
values being looked at may be invalid!
*/
void stkerr_from_psp(void) {
    2318:	b5b0      	push	{r4, r5, r7, lr}
    231a:	b086      	sub	sp, #24
    231c:	af00      	add	r7, sp, #0
    231e:	466b      	mov	r3, sp
    2320:	461d      	mov	r5, r3
  extern uint32_t _sdata[];
  uint8_t dummy_variable;
  const size_t distance_to_ram_bottom = (uint32_t)&dummy_variable - (uint32_t)_sdata;
    2322:	1dfb      	adds	r3, r7, #7
    2324:	4a21      	ldr	r2, [pc, #132]	; (23ac <stkerr_from_psp+0x94>)
    2326:	1a9b      	subs	r3, r3, r2
    2328:	613b      	str	r3, [r7, #16]
  volatile uint8_t big_buf[distance_to_ram_bottom - 8];
    232a:	693b      	ldr	r3, [r7, #16]
    232c:	3b09      	subs	r3, #9
    232e:	60fb      	str	r3, [r7, #12]
    2330:	693b      	ldr	r3, [r7, #16]
    2332:	3b08      	subs	r3, #8
    2334:	4619      	mov	r1, r3
    2336:	f04f 0200 	mov.w	r2, #0
    233a:	f04f 0300 	mov.w	r3, #0
    233e:	f04f 0400 	mov.w	r4, #0
    2342:	00d4      	lsls	r4, r2, #3
    2344:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
    2348:	00cb      	lsls	r3, r1, #3
    234a:	693b      	ldr	r3, [r7, #16]
    234c:	3b08      	subs	r3, #8
    234e:	4619      	mov	r1, r3
    2350:	f04f 0200 	mov.w	r2, #0
    2354:	f04f 0300 	mov.w	r3, #0
    2358:	f04f 0400 	mov.w	r4, #0
    235c:	00d4      	lsls	r4, r2, #3
    235e:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
    2362:	00cb      	lsls	r3, r1, #3
    2364:	693b      	ldr	r3, [r7, #16]
    2366:	3b08      	subs	r3, #8
    2368:	3307      	adds	r3, #7
    236a:	08db      	lsrs	r3, r3, #3
    236c:	00db      	lsls	r3, r3, #3
    236e:	ebad 0d03 	sub.w	sp, sp, r3
    2372:	466b      	mov	r3, sp
    2374:	3300      	adds	r3, #0
    2376:	60bb      	str	r3, [r7, #8]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    2378:	2300      	movs	r3, #0
    237a:	617b      	str	r3, [r7, #20]
    237c:	e009      	b.n	2392 <stkerr_from_psp+0x7a>
    big_buf[i] = i;
    237e:	697b      	ldr	r3, [r7, #20]
    2380:	b2d9      	uxtb	r1, r3
    2382:	68ba      	ldr	r2, [r7, #8]
    2384:	697b      	ldr	r3, [r7, #20]
    2386:	4413      	add	r3, r2
    2388:	460a      	mov	r2, r1
    238a:	701a      	strb	r2, [r3, #0]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    238c:	697b      	ldr	r3, [r7, #20]
    238e:	3301      	adds	r3, #1
    2390:	617b      	str	r3, [r7, #20]
    2392:	693b      	ldr	r3, [r7, #16]
    2394:	3b08      	subs	r3, #8
    2396:	697a      	ldr	r2, [r7, #20]
    2398:	429a      	cmp	r2, r3
    239a:	d3f0      	bcc.n	237e <stkerr_from_psp+0x66>
  }

  trigger_irq();
    239c:	f7ff ffa4 	bl	22e8 <trigger_irq>
    23a0:	46ad      	mov	sp, r5
}
    23a2:	bf00      	nop
    23a4:	3718      	adds	r7, #24
    23a6:	46bd      	mov	sp, r7
    23a8:	bdb0      	pop	{r4, r5, r7, pc}
    23aa:	bf00      	nop
    23ac:	20000000 	.word	0x20000000

000023b0 <bad_memory_access_crash>:

int bad_memory_access_crash(void) {
    23b0:	b480      	push	{r7}
    23b2:	b083      	sub	sp, #12
    23b4:	af00      	add	r7, sp, #0
  volatile uint32_t *bad_access = (volatile uint32_t *)0xdeadbeef;
    23b6:	4b04      	ldr	r3, [pc, #16]	; (23c8 <bad_memory_access_crash+0x18>)
    23b8:	607b      	str	r3, [r7, #4]
  return *bad_access;
    23ba:	687b      	ldr	r3, [r7, #4]
    23bc:	681b      	ldr	r3, [r3, #0]
}
    23be:	4618      	mov	r0, r3
    23c0:	370c      	adds	r7, #12
    23c2:	46bd      	mov	sp, r7
    23c4:	bc80      	pop	{r7}
    23c6:	4770      	bx	lr
    23c8:	deadbeef 	.word	0xdeadbeef

000023cc <read_from_bad_address>:
/*Bad Address Read*/
uint32_t read_from_bad_address(void) {
    23cc:	b480      	push	{r7}
    23ce:	af00      	add	r7, sp, #0
  return *(volatile uint32_t *)0xbadcafe;
    23d0:	4b02      	ldr	r3, [pc, #8]	; (23dc <read_from_bad_address+0x10>)
    23d2:	681b      	ldr	r3, [r3, #0]
}
    23d4:	4618      	mov	r0, r3
    23d6:	46bd      	mov	sp, r7
    23d8:	bc80      	pop	{r7}
    23da:	4770      	bx	lr
    23dc:	0badcafe 	.word	0x0badcafe

000023e0 <illegal_instruction_execution>:

/*eXecute Never Fault*/
int illegal_instruction_execution(void) {
    23e0:	b580      	push	{r7, lr}
    23e2:	b082      	sub	sp, #8
    23e4:	af00      	add	r7, sp, #0
  int (*bad_instruction)(void) = (void *)0xE0000000;
    23e6:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    23ea:	607b      	str	r3, [r7, #4]
  return bad_instruction();
    23ec:	687b      	ldr	r3, [r7, #4]
    23ee:	4798      	blx	r3
    23f0:	4603      	mov	r3, r0
}
    23f2:	4618      	mov	r0, r3
    23f4:	3708      	adds	r7, #8
    23f6:	46bd      	mov	sp, r7
    23f8:	bd80      	pop	{r7, pc}

000023fa <unaligned_double_word_read>:

void unaligned_double_word_read(void) {
    23fa:	b480      	push	{r7}
    23fc:	af00      	add	r7, sp, #0
//   extern void *g_unaligned_buffer;
//   uint64_t *buf = g_unaligned_buffer;
//   *buf = 0x1122334455667788;
}
    23fe:	bf00      	nop
    2400:	46bd      	mov	sp, r7
    2402:	bc80      	pop	{r7}
    2404:	4770      	bx	lr

00002406 <bad_addr_double_word_write>:

/*Imprecise Fault*/
void bad_addr_double_word_write(void) {
    2406:	b490      	push	{r4, r7}
    2408:	b082      	sub	sp, #8
    240a:	af00      	add	r7, sp, #0
  volatile uint64_t *buf = (volatile uint64_t *)0x30000000;
    240c:	f04f 5340 	mov.w	r3, #805306368	; 0x30000000
    2410:	607b      	str	r3, [r7, #4]
  *buf = 0x1122334455667788;
    2412:	687a      	ldr	r2, [r7, #4]
    2414:	a404      	add	r4, pc, #16	; (adr r4, 2428 <bad_addr_double_word_write+0x22>)
    2416:	e9d4 3400 	ldrd	r3, r4, [r4]
    241a:	e9c2 3400 	strd	r3, r4, [r2]
}
    241e:	bf00      	nop
    2420:	3708      	adds	r7, #8
    2422:	46bd      	mov	sp, r7
    2424:	bc90      	pop	{r4, r7}
    2426:	4770      	bx	lr
    2428:	55667788 	.word	0x55667788
    242c:	11223344 	.word	0x11223344

00002430 <access_disabled_coprocessor>:
/*Coprocessor Fault*/
void access_disabled_coprocessor(void) {
    2430:	b480      	push	{r7}
    2432:	af00      	add	r7, sp, #0
  // FreeRTOS will automatically enable the FPU co-processor.
  // Let's disable it for the purposes of this example
  __asm volatile(
    2434:	4830      	ldr	r0, [pc, #192]	; (24f8 <recover_from_task_fault+0x6>)
    2436:	f04f 0100 	mov.w	r1, #0
    243a:	6001      	str	r1, [r0, #0]
    243c:	f3bf 8f4f 	dsb	sy
      "mov r1, #0 \n"
      "str r1, [r0]	\n"
      "dsb \n"
    //   "vmov r0, s0 \n"
      );
}
    2440:	bf00      	nop
    2442:	46bd      	mov	sp, r7
    2444:	bc80      	pop	{r7}
    2446:	4770      	bx	lr

00002448 <usagefault>:
void usagefault(void)
{
    2448:	b480      	push	{r7}
    244a:	af00      	add	r7, sp, #0
    244c:	deff      	udf	#255	; 0xff

0000244e <busfault>:
    //udf 0xff
    __builtin_trap();
}

void busfault(void)
{
    244e:	b480      	push	{r7}
    2450:	af00      	add	r7, sp, #0
    *(uint32_t*)0xdead0000 = 0x20;
    2452:	4b03      	ldr	r3, [pc, #12]	; (2460 <busfault+0x12>)
    2454:	2220      	movs	r2, #32
    2456:	601a      	str	r2, [r3, #0]
}
    2458:	bf00      	nop
    245a:	46bd      	mov	sp, r7
    245c:	bc80      	pop	{r7}
    245e:	4770      	bx	lr
    2460:	dead0000 	.word	0xdead0000

00002464 <memmanage>:
void memmanage(void)
{
    2464:	b580      	push	{r7, lr}
    2466:	b082      	sub	sp, #8
    2468:	af00      	add	r7, sp, #0
    void (*func_in_xn_region)(void)=(void*)0xE0000000;
    246a:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    246e:	607b      	str	r3, [r7, #4]
    func_in_xn_region();
    2470:	687b      	ldr	r3, [r7, #4]
    2472:	4798      	blx	r3
}
    2474:	bf00      	nop
    2476:	3708      	adds	r7, #8
    2478:	46bd      	mov	sp, r7
    247a:	bd80      	pop	{r7, pc}

0000247c <Irq1_Handler>:

__attribute__((naked))
void Irq1_Handler(void) {
  __asm volatile(
    247c:	f06f 001f 	mvn.w	r0, #31
    2480:	4700      	bx	r0
      "ldr r0, =0xFFFFFFE0 \n"
      "bx r0 \n"
                 );
}
    2482:	bf00      	nop

00002484 <trigger_crash>:
//  3: Bad Memory Write
//  4: Exception Entry Fault
//  5: Unaligned 8 byte read
//  6: Bad 4 byte read
//  7: Illegal EXC_RETURN
void trigger_crash(int crash_id) {
    2484:	b580      	push	{r7, lr}
    2486:	b082      	sub	sp, #8
    2488:	af00      	add	r7, sp, #0
    248a:	6078      	str	r0, [r7, #4]
  switch (crash_id) {
    248c:	687b      	ldr	r3, [r7, #4]
    248e:	2b07      	cmp	r3, #7
    2490:	d82a      	bhi.n	24e8 <trigger_crash+0x64>
    2492:	a201      	add	r2, pc, #4	; (adr r2, 2498 <trigger_crash+0x14>)
    2494:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    2498:	000024b9 	.word	0x000024b9
    249c:	000024bf 	.word	0x000024bf
    24a0:	000024c5 	.word	0x000024c5
    24a4:	000024cb 	.word	0x000024cb
    24a8:	000024d1 	.word	0x000024d1
    24ac:	000024d7 	.word	0x000024d7
    24b0:	000024dd 	.word	0x000024dd
    24b4:	000024e3 	.word	0x000024e3
    case 0:
      illegal_instruction_execution();      
    24b8:	f7ff ff92 	bl	23e0 <illegal_instruction_execution>
      break;
    24bc:	e015      	b.n	24ea <trigger_crash+0x66>
    case 1:
      read_from_bad_address();
    24be:	f7ff ff85 	bl	23cc <read_from_bad_address>
      break;
    24c2:	e012      	b.n	24ea <trigger_crash+0x66>
    case 2:
      access_disabled_coprocessor();
    24c4:	f7ff ffb4 	bl	2430 <access_disabled_coprocessor>
      break;
    24c8:	e00f      	b.n	24ea <trigger_crash+0x66>
    case 3:
      bad_addr_double_word_write();
    24ca:	f7ff ff9c 	bl	2406 <bad_addr_double_word_write>
      break;
    24ce:	e00c      	b.n	24ea <trigger_crash+0x66>
    case 4:
      stkerr_from_psp();
    24d0:	f7ff ff22 	bl	2318 <stkerr_from_psp>
      break;
    24d4:	e009      	b.n	24ea <trigger_crash+0x66>
    case 5:
      unaligned_double_word_read();      
    24d6:	f7ff ff90 	bl	23fa <unaligned_double_word_read>
      break;
    24da:	e006      	b.n	24ea <trigger_crash+0x66>
    case 6:
      bad_memory_access_crash();
    24dc:	f7ff ff68 	bl	23b0 <bad_memory_access_crash>
      break;
    24e0:	e003      	b.n	24ea <trigger_crash+0x66>
    case 7:
      trigger_irq();
    24e2:	f7ff ff01 	bl	22e8 <trigger_irq>
      break;
    24e6:	e000      	b.n	24ea <trigger_crash+0x66>
    default:
      break;
    24e8:	bf00      	nop
  }
}
    24ea:	bf00      	nop
    24ec:	3708      	adds	r7, #8
    24ee:	46bd      	mov	sp, r7
    24f0:	bd80      	pop	{r7, pc}

000024f2 <recover_from_task_fault>:
void recover_from_task_fault(void) 
{
    24f2:	b480      	push	{r7}
    24f4:	af00      	add	r7, sp, #0
  while (1) {
    24f6:	e7fe      	b.n	24f6 <recover_from_task_fault+0x4>
    24f8:	e000ed88 	.word	0xe000ed88

Disassembly of section .text.Default_Handler:

000033c0 <BusFault_Handler>:
.section .text.Default_Handler,"ax",%progbits
Default_Handler:
    b .
    33c0:	e7fe      	b.n	33c0 <BusFault_Handler>
