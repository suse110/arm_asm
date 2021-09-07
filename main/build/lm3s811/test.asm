
/mnt/j/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/lm3s811/test.elf:     file format elf32-littlearm


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
      10:	20001910 00000001 000033d9 000033d9     ... .....3...3..
      20:	000033d9 000033d9 000033d9 000033d8     .3...3...3...3..
      30:	000033d8 000033d8 000033d8 000033d9     .3...3...3...3..
      40:	000033d9 000033d8 000033d9 000033d9     .3...3...3...3..

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
      58:	f001 f8c5 	bl	11e6 <printf_>
    // shell_start();
    backtrace_test();
      5c:	f001 fe9c 	bl	1d98 <backtrace_test>
    // hal_mpu_test();
    while(1);
      60:	e7fe      	b.n	60 <main+0x10>
      62:	bf00      	nop
      64:	00002530 	.word	0x00002530
      68:	00002514 	.word	0x00002514

0000006c <nmi_handler>:
}

void nmi_handler(void)
{
      6c:	b580      	push	{r7, lr}
      6e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      70:	4902      	ldr	r1, [pc, #8]	; (7c <nmi_handler+0x10>)
      72:	4803      	ldr	r0, [pc, #12]	; (80 <nmi_handler+0x14>)
      74:	f001 f8b7 	bl	11e6 <printf_>
    while(1);
      78:	e7fe      	b.n	78 <nmi_handler+0xc>
      7a:	bf00      	nop
      7c:	00002538 	.word	0x00002538
      80:	00002528 	.word	0x00002528

00000084 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
      84:	b580      	push	{r7, lr}
      86:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      88:	4902      	ldr	r1, [pc, #8]	; (94 <hard_fault_handler+0x10>)
      8a:	4803      	ldr	r0, [pc, #12]	; (98 <hard_fault_handler+0x14>)
      8c:	f001 f8ab 	bl	11e6 <printf_>
    while(1);
      90:	e7fe      	b.n	90 <hard_fault_handler+0xc>
      92:	bf00      	nop
      94:	00002544 	.word	0x00002544
      98:	00002528 	.word	0x00002528

0000009c <mem_manage_handler>:
}

void mem_manage_handler(void)
{
      9c:	b580      	push	{r7, lr}
      9e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      a0:	4902      	ldr	r1, [pc, #8]	; (ac <mem_manage_handler+0x10>)
      a2:	4803      	ldr	r0, [pc, #12]	; (b0 <mem_manage_handler+0x14>)
      a4:	f001 f89f 	bl	11e6 <printf_>
    while(1);
      a8:	e7fe      	b.n	a8 <mem_manage_handler+0xc>
      aa:	bf00      	nop
      ac:	00002558 	.word	0x00002558
      b0:	00002528 	.word	0x00002528

000000b4 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
      b4:	b580      	push	{r7, lr}
      b6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      b8:	4902      	ldr	r1, [pc, #8]	; (c4 <bus_fault_handler+0x10>)
      ba:	4803      	ldr	r0, [pc, #12]	; (c8 <bus_fault_handler+0x14>)
      bc:	f001 f893 	bl	11e6 <printf_>
    while(1);
      c0:	e7fe      	b.n	c0 <bus_fault_handler+0xc>
      c2:	bf00      	nop
      c4:	0000256c 	.word	0x0000256c
      c8:	00002528 	.word	0x00002528

000000cc <usage_fault_handler>:
}

void usage_fault_handler(void)
{
      cc:	b580      	push	{r7, lr}
      ce:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      d0:	4902      	ldr	r1, [pc, #8]	; (dc <usage_fault_handler+0x10>)
      d2:	4803      	ldr	r0, [pc, #12]	; (e0 <usage_fault_handler+0x14>)
      d4:	f001 f887 	bl	11e6 <printf_>
    while(1);
      d8:	e7fe      	b.n	d8 <usage_fault_handler+0xc>
      da:	bf00      	nop
      dc:	00002580 	.word	0x00002580
      e0:	00002528 	.word	0x00002528

000000e4 <svc_handler>:
}

void svc_handler(void)
{
      e4:	b580      	push	{r7, lr}
      e6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      e8:	4902      	ldr	r1, [pc, #8]	; (f4 <svc_handler+0x10>)
      ea:	4803      	ldr	r0, [pc, #12]	; (f8 <svc_handler+0x14>)
      ec:	f001 f87b 	bl	11e6 <printf_>
    while(1);
      f0:	e7fe      	b.n	f0 <svc_handler+0xc>
      f2:	bf00      	nop
      f4:	00002594 	.word	0x00002594
      f8:	00002528 	.word	0x00002528

000000fc <debug_mon_handler>:
}

void debug_mon_handler(void)
{
      fc:	b580      	push	{r7, lr}
      fe:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     100:	4902      	ldr	r1, [pc, #8]	; (10c <debug_mon_handler+0x10>)
     102:	4803      	ldr	r0, [pc, #12]	; (110 <debug_mon_handler+0x14>)
     104:	f001 f86f 	bl	11e6 <printf_>
    while(1);
     108:	e7fe      	b.n	108 <debug_mon_handler+0xc>
     10a:	bf00      	nop
     10c:	000025a0 	.word	0x000025a0
     110:	00002528 	.word	0x00002528

00000114 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     114:	b580      	push	{r7, lr}
     116:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     118:	4902      	ldr	r1, [pc, #8]	; (124 <pend_sv_handler+0x10>)
     11a:	4803      	ldr	r0, [pc, #12]	; (128 <pend_sv_handler+0x14>)
     11c:	f001 f863 	bl	11e6 <printf_>
    while(1);
     120:	e7fe      	b.n	120 <pend_sv_handler+0xc>
     122:	bf00      	nop
     124:	000025b4 	.word	0x000025b4
     128:	00002528 	.word	0x00002528

0000012c <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     12c:	b580      	push	{r7, lr}
     12e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     130:	4902      	ldr	r1, [pc, #8]	; (13c <sys_tick_handler+0x10>)
     132:	4803      	ldr	r0, [pc, #12]	; (140 <sys_tick_handler+0x14>)
     134:	f001 f857 	bl	11e6 <printf_>
    while(1);
     138:	e7fe      	b.n	138 <sys_tick_handler+0xc>
     13a:	bf00      	nop
     13c:	000025c4 	.word	0x000025c4
     140:	00002528 	.word	0x00002528

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
}
     150:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
     152:	f3bf 8f6f 	isb	sy
}
     156:	bf00      	nop
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
     158:	4a07      	ldr	r2, [pc, #28]	; (178 <ARM_MPU_Enable+0x34>)
     15a:	687b      	ldr	r3, [r7, #4]
     15c:	f043 0301 	orr.w	r3, r3, #1
     160:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
     162:	4b06      	ldr	r3, [pc, #24]	; (17c <ARM_MPU_Enable+0x38>)
     164:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     166:	4a05      	ldr	r2, [pc, #20]	; (17c <ARM_MPU_Enable+0x38>)
     168:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
     16c:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
     16e:	bf00      	nop
     170:	370c      	adds	r7, #12
     172:	46bd      	mov	sp, r7
     174:	bc80      	pop	{r7}
     176:	4770      	bx	lr
     178:	e000ed90 	.word	0xe000ed90
     17c:	e000ed00 	.word	0xe000ed00

00000180 <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
     180:	b480      	push	{r7}
     182:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
     184:	f3bf 8f4f 	dsb	sy
}
     188:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
     18a:	f3bf 8f6f 	isb	sy
}
     18e:	bf00      	nop
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
     190:	4b07      	ldr	r3, [pc, #28]	; (1b0 <ARM_MPU_Disable+0x30>)
     192:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     194:	4a06      	ldr	r2, [pc, #24]	; (1b0 <ARM_MPU_Disable+0x30>)
     196:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
     19a:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
     19c:	4b05      	ldr	r3, [pc, #20]	; (1b4 <ARM_MPU_Disable+0x34>)
     19e:	685b      	ldr	r3, [r3, #4]
     1a0:	4a04      	ldr	r2, [pc, #16]	; (1b4 <ARM_MPU_Disable+0x34>)
     1a2:	f023 0301 	bic.w	r3, r3, #1
     1a6:	6053      	str	r3, [r2, #4]
}
     1a8:	bf00      	nop
     1aa:	46bd      	mov	sp, r7
     1ac:	bc80      	pop	{r7}
     1ae:	4770      	bx	lr
     1b0:	e000ed00 	.word	0xe000ed00
     1b4:	e000ed90 	.word	0xe000ed90

000001b8 <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
     1b8:	b480      	push	{r7}
     1ba:	b083      	sub	sp, #12
     1bc:	af00      	add	r7, sp, #0
     1be:	6078      	str	r0, [r7, #4]
     1c0:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
     1c2:	4a05      	ldr	r2, [pc, #20]	; (1d8 <ARM_MPU_SetRegion+0x20>)
     1c4:	687b      	ldr	r3, [r7, #4]
     1c6:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
     1c8:	4a03      	ldr	r2, [pc, #12]	; (1d8 <ARM_MPU_SetRegion+0x20>)
     1ca:	683b      	ldr	r3, [r7, #0]
     1cc:	6113      	str	r3, [r2, #16]
}
     1ce:	bf00      	nop
     1d0:	370c      	adds	r7, #12
     1d2:	46bd      	mov	sp, r7
     1d4:	bc80      	pop	{r7}
     1d6:	4770      	bx	lr
     1d8:	e000ed90 	.word	0xe000ed90

000001dc <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
     1dc:	b5b0      	push	{r4, r5, r7, lr}
     1de:	b08a      	sub	sp, #40	; 0x28
     1e0:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
     1e2:	4b13      	ldr	r3, [pc, #76]	; (230 <hal_mpu_test+0x54>)
     1e4:	463c      	mov	r4, r7
     1e6:	461d      	mov	r5, r3
     1e8:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
     1ea:	c40f      	stmia	r4!, {r0, r1, r2, r3}
     1ec:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
     1f0:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
     1f4:	f7ff ffc4 	bl	180 <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
     1f8:	463b      	mov	r3, r7
     1fa:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     1fc:	e00d      	b.n	21a <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
     1fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     200:	681a      	ldr	r2, [r3, #0]
     202:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     204:	685b      	ldr	r3, [r3, #4]
     206:	4619      	mov	r1, r3
     208:	4610      	mov	r0, r2
     20a:	f7ff ffd5 	bl	1b8 <ARM_MPU_SetRegion>
        mpu_region++;
     20e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     210:	3308      	adds	r3, #8
     212:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     214:	6a3b      	ldr	r3, [r7, #32]
     216:	3301      	adds	r3, #1
     218:	623b      	str	r3, [r7, #32]
     21a:	6a3b      	ldr	r3, [r7, #32]
     21c:	2b03      	cmp	r3, #3
     21e:	d9ee      	bls.n	1fe <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
     220:	2006      	movs	r0, #6
     222:	f7ff ff8f 	bl	144 <ARM_MPU_Enable>
}
     226:	bf00      	nop
     228:	3728      	adds	r7, #40	; 0x28
     22a:	46bd      	mov	sp, r7
     22c:	bdb0      	pop	{r4, r5, r7, pc}
     22e:	bf00      	nop
     230:	000025d8 	.word	0x000025d8

00000234 <_putchar>:

#ifdef QEMU_DEBUG_ENABLE 
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

void _putchar(const char ch)
{
     234:	b480      	push	{r7}
     236:	b083      	sub	sp, #12
     238:	af00      	add	r7, sp, #0
     23a:	4603      	mov	r3, r0
     23c:	71fb      	strb	r3, [r7, #7]
    *UART_DR = ch;
     23e:	4a04      	ldr	r2, [pc, #16]	; (250 <_putchar+0x1c>)
     240:	79fb      	ldrb	r3, [r7, #7]
     242:	6013      	str	r3, [r2, #0]
}
     244:	bf00      	nop
     246:	370c      	adds	r7, #12
     248:	46bd      	mov	sp, r7
     24a:	bc80      	pop	{r7}
     24c:	4770      	bx	lr
     24e:	bf00      	nop
     250:	4000c000 	.word	0x4000c000

00000254 <_getchar>:

char _getchar(void)
{
     254:	b480      	push	{r7}
     256:	af00      	add	r7, sp, #0
    return(char)*UART_DR;
     258:	4b03      	ldr	r3, [pc, #12]	; (268 <_getchar+0x14>)
     25a:	681b      	ldr	r3, [r3, #0]
     25c:	b2db      	uxtb	r3, r3
}
     25e:	4618      	mov	r0, r3
     260:	46bd      	mov	sp, r7
     262:	bc80      	pop	{r7}
     264:	4770      	bx	lr
     266:	bf00      	nop
     268:	4000c000 	.word	0x4000c000

0000026c <__io_putchar>:

int __io_putchar(int ch)
{
     26c:	b580      	push	{r7, lr}
     26e:	b082      	sub	sp, #8
     270:	af00      	add	r7, sp, #0
     272:	6078      	str	r0, [r7, #4]
    _putchar(ch);
     274:	687b      	ldr	r3, [r7, #4]
     276:	b2db      	uxtb	r3, r3
     278:	4618      	mov	r0, r3
     27a:	f7ff ffdb 	bl	234 <_putchar>
    return 0;
     27e:	2300      	movs	r3, #0
}
     280:	4618      	mov	r0, r3
     282:	3708      	adds	r7, #8
     284:	46bd      	mov	sp, r7
     286:	bd80      	pop	{r7, pc}

00000288 <__io_getchar>:

int __io_getchar(void)
{
     288:	b580      	push	{r7, lr}
     28a:	af00      	add	r7, sp, #0
    return (int)_getchar();
     28c:	f7ff ffe2 	bl	254 <_getchar>
     290:	4603      	mov	r3, r0
}
     292:	4618      	mov	r0, r3
     294:	bd80      	pop	{r7, pc}

00000296 <lite_getchar>:
{
    return(char)__io_getchar();
}
#endif
void lite_getchar(char *chr)
{
     296:	b580      	push	{r7, lr}
     298:	b082      	sub	sp, #8
     29a:	af00      	add	r7, sp, #0
     29c:	6078      	str	r0, [r7, #4]
    do {
        *chr = _getchar();
     29e:	f7ff ffd9 	bl	254 <_getchar>
     2a2:	4603      	mov	r3, r0
     2a4:	461a      	mov	r2, r3
     2a6:	687b      	ldr	r3, [r7, #4]
     2a8:	701a      	strb	r2, [r3, #0]
    } while (*chr == 0);
     2aa:	687b      	ldr	r3, [r7, #4]
     2ac:	781b      	ldrb	r3, [r3, #0]
     2ae:	2b00      	cmp	r3, #0
     2b0:	d0f5      	beq.n	29e <lite_getchar+0x8>
}
     2b2:	bf00      	nop
     2b4:	bf00      	nop
     2b6:	3708      	adds	r7, #8
     2b8:	46bd      	mov	sp, r7
     2ba:	bd80      	pop	{r7, pc}

000002bc <lite_putchar>:
void lite_putchar(char character)
{
     2bc:	b580      	push	{r7, lr}
     2be:	b082      	sub	sp, #8
     2c0:	af00      	add	r7, sp, #0
     2c2:	4603      	mov	r3, r0
     2c4:	71fb      	strb	r3, [r7, #7]
    _putchar(character);
     2c6:	79fb      	ldrb	r3, [r7, #7]
     2c8:	4618      	mov	r0, r3
     2ca:	f7ff ffb3 	bl	234 <_putchar>
}
     2ce:	bf00      	nop
     2d0:	3708      	adds	r7, #8
     2d2:	46bd      	mov	sp, r7
     2d4:	bd80      	pop	{r7, pc}

000002d6 <_putstr>:

void _putstr(const char *str)
{
     2d6:	b580      	push	{r7, lr}
     2d8:	b082      	sub	sp, #8
     2da:	af00      	add	r7, sp, #0
     2dc:	6078      	str	r0, [r7, #4]
    while (*str) {
     2de:	e006      	b.n	2ee <_putstr+0x18>
        _putchar(*str++);
     2e0:	687b      	ldr	r3, [r7, #4]
     2e2:	1c5a      	adds	r2, r3, #1
     2e4:	607a      	str	r2, [r7, #4]
     2e6:	781b      	ldrb	r3, [r3, #0]
     2e8:	4618      	mov	r0, r3
     2ea:	f7ff ffa3 	bl	234 <_putchar>
    while (*str) {
     2ee:	687b      	ldr	r3, [r7, #4]
     2f0:	781b      	ldrb	r3, [r3, #0]
     2f2:	2b00      	cmp	r3, #0
     2f4:	d1f4      	bne.n	2e0 <_putstr+0xa>
    }
}
     2f6:	bf00      	nop
     2f8:	bf00      	nop
     2fa:	3708      	adds	r7, #8
     2fc:	46bd      	mov	sp, r7
     2fe:	bd80      	pop	{r7, pc}

00000300 <_strlen>:

uint32_t _strlen (const char *_s)
{
     300:	b480      	push	{r7}
     302:	b085      	sub	sp, #20
     304:	af00      	add	r7, sp, #0
     306:	6078      	str	r0, [r7, #4]
    uint32_t i = 0;
     308:	2300      	movs	r3, #0
     30a:	60fb      	str	r3, [r7, #12]
    while(*_s++ != '\0') i++;
     30c:	e002      	b.n	314 <_strlen+0x14>
     30e:	68fb      	ldr	r3, [r7, #12]
     310:	3301      	adds	r3, #1
     312:	60fb      	str	r3, [r7, #12]
     314:	687b      	ldr	r3, [r7, #4]
     316:	1c5a      	adds	r2, r3, #1
     318:	607a      	str	r2, [r7, #4]
     31a:	781b      	ldrb	r3, [r3, #0]
     31c:	2b00      	cmp	r3, #0
     31e:	d1f6      	bne.n	30e <_strlen+0xe>
    return i;
     320:	68fb      	ldr	r3, [r7, #12]
}
     322:	4618      	mov	r0, r3
     324:	3714      	adds	r7, #20
     326:	46bd      	mov	sp, r7
     328:	bc80      	pop	{r7}
     32a:	4770      	bx	lr

0000032c <_pow>:

static unsigned long _pow(int x, int y)
{
     32c:	b480      	push	{r7}
     32e:	b085      	sub	sp, #20
     330:	af00      	add	r7, sp, #0
     332:	6078      	str	r0, [r7, #4]
     334:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
     336:	2301      	movs	r3, #1
     338:	60fb      	str	r3, [r7, #12]
    while (y--)
     33a:	e004      	b.n	346 <_pow+0x1a>
    {
        sum *= x;
     33c:	687a      	ldr	r2, [r7, #4]
     33e:	68fb      	ldr	r3, [r7, #12]
     340:	fb02 f303 	mul.w	r3, r2, r3
     344:	60fb      	str	r3, [r7, #12]
    while (y--)
     346:	683b      	ldr	r3, [r7, #0]
     348:	1e5a      	subs	r2, r3, #1
     34a:	603a      	str	r2, [r7, #0]
     34c:	2b00      	cmp	r3, #0
     34e:	d1f5      	bne.n	33c <_pow+0x10>
    }
    return sum;
     350:	68fb      	ldr	r3, [r7, #12]
}
     352:	4618      	mov	r0, r3
     354:	3714      	adds	r7, #20
     356:	46bd      	mov	sp, r7
     358:	bc80      	pop	{r7}
     35a:	4770      	bx	lr

0000035c <lite_printf>:

int lite_printf(const char *str, ...)
{
     35c:	b40f      	push	{r0, r1, r2, r3}
     35e:	b590      	push	{r4, r7, lr}
     360:	b089      	sub	sp, #36	; 0x24
     362:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
     364:	2300      	movs	r3, #0
     366:	613b      	str	r3, [r7, #16]
    int res = 0; //返回值
     368:	2300      	movs	r3, #0
     36a:	617b      	str	r3, [r7, #20]

    va_start(ap, str);   //初始化ap
     36c:	f107 0334 	add.w	r3, r7, #52	; 0x34
     370:	607b      	str	r3, [r7, #4]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     372:	e10f      	b.n	594 <lite_printf+0x238>
    {
        switch (*str)
     374:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     376:	781b      	ldrb	r3, [r3, #0]
     378:	2b25      	cmp	r3, #37	; 0x25
     37a:	d009      	beq.n	390 <lite_printf+0x34>
     37c:	2b25      	cmp	r3, #37	; 0x25
     37e:	f300 80fc 	bgt.w	57a <lite_printf+0x21e>
     382:	2b0a      	cmp	r3, #10
     384:	f000 80eb 	beq.w	55e <lite_printf+0x202>
     388:	2b0d      	cmp	r3, #13
     38a:	f000 80ef 	beq.w	56c <lite_printf+0x210>
     38e:	e0f4      	b.n	57a <lite_printf+0x21e>
        {
        case '%': //发送参数
            str++;
     390:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     392:	3301      	adds	r3, #1
     394:	633b      	str	r3, [r7, #48]	; 0x30
            switch (*str)
     396:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     398:	781b      	ldrb	r3, [r3, #0]
     39a:	3b63      	subs	r3, #99	; 0x63
     39c:	2b15      	cmp	r3, #21
     39e:	f200 80f5 	bhi.w	58c <lite_printf+0x230>
     3a2:	a201      	add	r2, pc, #4	; (adr r2, 3a8 <lite_printf+0x4c>)
     3a4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     3a8:	00000545 	.word	0x00000545
     3ac:	00000401 	.word	0x00000401
     3b0:	0000058d 	.word	0x0000058d
     3b4:	0000058d 	.word	0x0000058d
     3b8:	0000058d 	.word	0x0000058d
     3bc:	0000058d 	.word	0x0000058d
     3c0:	0000058d 	.word	0x0000058d
     3c4:	0000058d 	.word	0x0000058d
     3c8:	0000058d 	.word	0x0000058d
     3cc:	0000058d 	.word	0x0000058d
     3d0:	0000058d 	.word	0x0000058d
     3d4:	0000058d 	.word	0x0000058d
     3d8:	0000058d 	.word	0x0000058d
     3dc:	0000058d 	.word	0x0000058d
     3e0:	0000058d 	.word	0x0000058d
     3e4:	0000058d 	.word	0x0000058d
     3e8:	00000525 	.word	0x00000525
     3ec:	0000058d 	.word	0x0000058d
     3f0:	0000058d 	.word	0x0000058d
     3f4:	0000058d 	.word	0x0000058d
     3f8:	0000058d 	.word	0x0000058d
     3fc:	0000048b 	.word	0x0000048b
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     400:	687b      	ldr	r3, [r7, #4]
     402:	1d1a      	adds	r2, r3, #4
     404:	607a      	str	r2, [r7, #4]
     406:	681b      	ldr	r3, [r3, #0]
     408:	60fb      	str	r3, [r7, #12]
                r_val = val;
     40a:	68fb      	ldr	r3, [r7, #12]
     40c:	61fb      	str	r3, [r7, #28]
                count = 0;
     40e:	2300      	movs	r3, #0
     410:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     412:	e00a      	b.n	42a <lite_printf+0xce>

                {
                    count++; //整数的长度
     414:	7efb      	ldrb	r3, [r7, #27]
     416:	3301      	adds	r3, #1
     418:	76fb      	strb	r3, [r7, #27]
                    r_val /= 10;
     41a:	69fb      	ldr	r3, [r7, #28]
     41c:	4a64      	ldr	r2, [pc, #400]	; (5b0 <lite_printf+0x254>)
     41e:	fb82 1203 	smull	r1, r2, r2, r3
     422:	1092      	asrs	r2, r2, #2
     424:	17db      	asrs	r3, r3, #31
     426:	1ad3      	subs	r3, r2, r3
     428:	61fb      	str	r3, [r7, #28]
                while (r_val)
     42a:	69fb      	ldr	r3, [r7, #28]
     42c:	2b00      	cmp	r3, #0
     42e:	d1f1      	bne.n	414 <lite_printf+0xb8>
                }

                res += count;
     430:	7efb      	ldrb	r3, [r7, #27]
     432:	697a      	ldr	r2, [r7, #20]
     434:	4413      	add	r3, r2
     436:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     438:	68fb      	ldr	r3, [r7, #12]
     43a:	61fb      	str	r3, [r7, #28]
                while (count)
     43c:	e021      	b.n	482 <lite_printf+0x126>
                {
                    ch = r_val / _pow(10, count - 1);
     43e:	69fc      	ldr	r4, [r7, #28]
     440:	7efb      	ldrb	r3, [r7, #27]
     442:	3b01      	subs	r3, #1
     444:	4619      	mov	r1, r3
     446:	200a      	movs	r0, #10
     448:	f7ff ff70 	bl	32c <_pow>
     44c:	4603      	mov	r3, r0
     44e:	fbb4 f3f3 	udiv	r3, r4, r3
     452:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(10, count - 1);
     454:	7efb      	ldrb	r3, [r7, #27]
     456:	3b01      	subs	r3, #1
     458:	4619      	mov	r1, r3
     45a:	200a      	movs	r0, #10
     45c:	f7ff ff66 	bl	32c <_pow>
     460:	4602      	mov	r2, r0
     462:	69fb      	ldr	r3, [r7, #28]
     464:	fbb3 f1f2 	udiv	r1, r3, r2
     468:	fb02 f201 	mul.w	r2, r2, r1
     46c:	1a9b      	subs	r3, r3, r2
     46e:	61fb      	str	r3, [r7, #28]

                    _putchar(ch + '0');
     470:	7afb      	ldrb	r3, [r7, #11]
     472:	3330      	adds	r3, #48	; 0x30
     474:	b2db      	uxtb	r3, r3
     476:	4618      	mov	r0, r3
     478:	f7ff fedc 	bl	234 <_putchar>
                    //数字到字符的转换
                    count--;
     47c:	7efb      	ldrb	r3, [r7, #27]
     47e:	3b01      	subs	r3, #1
     480:	76fb      	strb	r3, [r7, #27]
                while (count)
     482:	7efb      	ldrb	r3, [r7, #27]
     484:	2b00      	cmp	r3, #0
     486:	d1da      	bne.n	43e <lite_printf+0xe2>
                }
                break;
     488:	e068      	b.n	55c <lite_printf+0x200>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     48a:	687b      	ldr	r3, [r7, #4]
     48c:	1d1a      	adds	r2, r3, #4
     48e:	607a      	str	r2, [r7, #4]
     490:	681b      	ldr	r3, [r3, #0]
     492:	60fb      	str	r3, [r7, #12]
                r_val = val;
     494:	68fb      	ldr	r3, [r7, #12]
     496:	61fb      	str	r3, [r7, #28]
                count = 0;
     498:	2300      	movs	r3, #0
     49a:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     49c:	e008      	b.n	4b0 <lite_printf+0x154>

                {
                    count++; //整数的长度
     49e:	7efb      	ldrb	r3, [r7, #27]
     4a0:	3301      	adds	r3, #1
     4a2:	76fb      	strb	r3, [r7, #27]
                    r_val /= 16;
     4a4:	69fb      	ldr	r3, [r7, #28]
     4a6:	2b00      	cmp	r3, #0
     4a8:	da00      	bge.n	4ac <lite_printf+0x150>
     4aa:	330f      	adds	r3, #15
     4ac:	111b      	asrs	r3, r3, #4
     4ae:	61fb      	str	r3, [r7, #28]
                while (r_val)
     4b0:	69fb      	ldr	r3, [r7, #28]
     4b2:	2b00      	cmp	r3, #0
     4b4:	d1f3      	bne.n	49e <lite_printf+0x142>
                }

                res += count;
     4b6:	7efb      	ldrb	r3, [r7, #27]
     4b8:	697a      	ldr	r2, [r7, #20]
     4ba:	4413      	add	r3, r2
     4bc:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     4be:	68fb      	ldr	r3, [r7, #12]
     4c0:	61fb      	str	r3, [r7, #28]
                while (count)
     4c2:	e02b      	b.n	51c <lite_printf+0x1c0>
                {
                    ch = r_val / _pow(16, count - 1);
     4c4:	69fc      	ldr	r4, [r7, #28]
     4c6:	7efb      	ldrb	r3, [r7, #27]
     4c8:	3b01      	subs	r3, #1
     4ca:	4619      	mov	r1, r3
     4cc:	2010      	movs	r0, #16
     4ce:	f7ff ff2d 	bl	32c <_pow>
     4d2:	4603      	mov	r3, r0
     4d4:	fbb4 f3f3 	udiv	r3, r4, r3
     4d8:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(16, count - 1);
     4da:	7efb      	ldrb	r3, [r7, #27]
     4dc:	3b01      	subs	r3, #1
     4de:	4619      	mov	r1, r3
     4e0:	2010      	movs	r0, #16
     4e2:	f7ff ff23 	bl	32c <_pow>
     4e6:	4602      	mov	r2, r0
     4e8:	69fb      	ldr	r3, [r7, #28]
     4ea:	fbb3 f1f2 	udiv	r1, r3, r2
     4ee:	fb02 f201 	mul.w	r2, r2, r1
     4f2:	1a9b      	subs	r3, r3, r2
     4f4:	61fb      	str	r3, [r7, #28]
                    if (ch <= 9)
     4f6:	7afb      	ldrb	r3, [r7, #11]
     4f8:	2b09      	cmp	r3, #9
     4fa:	d806      	bhi.n	50a <lite_printf+0x1ae>
                        _putchar(ch + '0');
     4fc:	7afb      	ldrb	r3, [r7, #11]
     4fe:	3330      	adds	r3, #48	; 0x30
     500:	b2db      	uxtb	r3, r3
     502:	4618      	mov	r0, r3
     504:	f7ff fe96 	bl	234 <_putchar>
     508:	e005      	b.n	516 <lite_printf+0x1ba>
                    //数字到字符的转换
                    else
                        _putchar(ch - 10 + 'a');
     50a:	7afb      	ldrb	r3, [r7, #11]
     50c:	3357      	adds	r3, #87	; 0x57
     50e:	b2db      	uxtb	r3, r3
     510:	4618      	mov	r0, r3
     512:	f7ff fe8f 	bl	234 <_putchar>
                    count--;
     516:	7efb      	ldrb	r3, [r7, #27]
     518:	3b01      	subs	r3, #1
     51a:	76fb      	strb	r3, [r7, #27]
                while (count)
     51c:	7efb      	ldrb	r3, [r7, #27]
     51e:	2b00      	cmp	r3, #0
     520:	d1d0      	bne.n	4c4 <lite_printf+0x168>
                }
                break;
     522:	e01b      	b.n	55c <lite_printf+0x200>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     524:	687b      	ldr	r3, [r7, #4]
     526:	1d1a      	adds	r2, r3, #4
     528:	607a      	str	r2, [r7, #4]
     52a:	681b      	ldr	r3, [r3, #0]
     52c:	613b      	str	r3, [r7, #16]
                _putstr(s);
     52e:	6938      	ldr	r0, [r7, #16]
     530:	f7ff fed1 	bl	2d6 <_putstr>
                //字符串,返回值为字符指针
                res += _strlen(s);
     534:	6938      	ldr	r0, [r7, #16]
     536:	f7ff fee3 	bl	300 <_strlen>
     53a:	4602      	mov	r2, r0
     53c:	697b      	ldr	r3, [r7, #20]
     53e:	4413      	add	r3, r2
     540:	617b      	str	r3, [r7, #20]
                //返回值长度增加
                break;
     542:	e00b      	b.n	55c <lite_printf+0x200>
            case 'c':
                _putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     544:	687b      	ldr	r3, [r7, #4]
     546:	1d1a      	adds	r2, r3, #4
     548:	607a      	str	r2, [r7, #4]
     54a:	681b      	ldr	r3, [r3, #0]
     54c:	b2db      	uxtb	r3, r3
     54e:	4618      	mov	r0, r3
     550:	f7ff fe70 	bl	234 <_putchar>
                res += 1;
     554:	697b      	ldr	r3, [r7, #20]
     556:	3301      	adds	r3, #1
     558:	617b      	str	r3, [r7, #20]

                break;
     55a:	bf00      	nop
            default:;
            }
            break;
     55c:	e016      	b.n	58c <lite_printf+0x230>
        case '\n':
            _putchar('\n');
     55e:	200a      	movs	r0, #10
     560:	f7ff fe68 	bl	234 <_putchar>
            res += 1;
     564:	697b      	ldr	r3, [r7, #20]
     566:	3301      	adds	r3, #1
     568:	617b      	str	r3, [r7, #20]
            break;
     56a:	e010      	b.n	58e <lite_printf+0x232>
        case '\r':
            _putchar('\r');
     56c:	200d      	movs	r0, #13
     56e:	f7ff fe61 	bl	234 <_putchar>
            res += 1;
     572:	697b      	ldr	r3, [r7, #20]
     574:	3301      	adds	r3, #1
     576:	617b      	str	r3, [r7, #20]
            break;
     578:	e009      	b.n	58e <lite_printf+0x232>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            _putchar(*str);
     57a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     57c:	781b      	ldrb	r3, [r3, #0]
     57e:	4618      	mov	r0, r3
     580:	f7ff fe58 	bl	234 <_putchar>
            res += 1;
     584:	697b      	ldr	r3, [r7, #20]
     586:	3301      	adds	r3, #1
     588:	617b      	str	r3, [r7, #20]
     58a:	e000      	b.n	58e <lite_printf+0x232>
            break;
     58c:	bf00      	nop
        }

        str++;
     58e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     590:	3301      	adds	r3, #1
     592:	633b      	str	r3, [r7, #48]	; 0x30
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     594:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     596:	781b      	ldrb	r3, [r3, #0]
     598:	2b00      	cmp	r3, #0
     59a:	f47f aeeb 	bne.w	374 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     59e:	697b      	ldr	r3, [r7, #20]
}
     5a0:	4618      	mov	r0, r3
     5a2:	3724      	adds	r7, #36	; 0x24
     5a4:	46bd      	mov	sp, r7
     5a6:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     5aa:	b004      	add	sp, #16
     5ac:	4770      	bx	lr
     5ae:	bf00      	nop
     5b0:	66666667 	.word	0x66666667

000005b4 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     5b4:	b480      	push	{r7}
     5b6:	b085      	sub	sp, #20
     5b8:	af00      	add	r7, sp, #0
     5ba:	60b9      	str	r1, [r7, #8]
     5bc:	607a      	str	r2, [r7, #4]
     5be:	603b      	str	r3, [r7, #0]
     5c0:	4603      	mov	r3, r0
     5c2:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     5c4:	687a      	ldr	r2, [r7, #4]
     5c6:	683b      	ldr	r3, [r7, #0]
     5c8:	429a      	cmp	r2, r3
     5ca:	d204      	bcs.n	5d6 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     5cc:	68ba      	ldr	r2, [r7, #8]
     5ce:	687b      	ldr	r3, [r7, #4]
     5d0:	4413      	add	r3, r2
     5d2:	7bfa      	ldrb	r2, [r7, #15]
     5d4:	701a      	strb	r2, [r3, #0]
  }
}
     5d6:	bf00      	nop
     5d8:	3714      	adds	r7, #20
     5da:	46bd      	mov	sp, r7
     5dc:	bc80      	pop	{r7}
     5de:	4770      	bx	lr

000005e0 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     5e0:	b480      	push	{r7}
     5e2:	b085      	sub	sp, #20
     5e4:	af00      	add	r7, sp, #0
     5e6:	60b9      	str	r1, [r7, #8]
     5e8:	607a      	str	r2, [r7, #4]
     5ea:	603b      	str	r3, [r7, #0]
     5ec:	4603      	mov	r3, r0
     5ee:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     5f0:	bf00      	nop
     5f2:	3714      	adds	r7, #20
     5f4:	46bd      	mov	sp, r7
     5f6:	bc80      	pop	{r7}
     5f8:	4770      	bx	lr

000005fa <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     5fa:	b580      	push	{r7, lr}
     5fc:	b084      	sub	sp, #16
     5fe:	af00      	add	r7, sp, #0
     600:	60b9      	str	r1, [r7, #8]
     602:	607a      	str	r2, [r7, #4]
     604:	603b      	str	r3, [r7, #0]
     606:	4603      	mov	r3, r0
     608:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     60a:	7bfb      	ldrb	r3, [r7, #15]
     60c:	2b00      	cmp	r3, #0
     60e:	d003      	beq.n	618 <_out_char+0x1e>
    _putchar(character);
     610:	7bfb      	ldrb	r3, [r7, #15]
     612:	4618      	mov	r0, r3
     614:	f7ff fe0e 	bl	234 <_putchar>
  }
}
     618:	bf00      	nop
     61a:	3710      	adds	r7, #16
     61c:	46bd      	mov	sp, r7
     61e:	bd80      	pop	{r7, pc}

00000620 <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     620:	b580      	push	{r7, lr}
     622:	b084      	sub	sp, #16
     624:	af00      	add	r7, sp, #0
     626:	60b9      	str	r1, [r7, #8]
     628:	607a      	str	r2, [r7, #4]
     62a:	603b      	str	r3, [r7, #0]
     62c:	4603      	mov	r3, r0
     62e:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     630:	7bfb      	ldrb	r3, [r7, #15]
     632:	2b00      	cmp	r3, #0
     634:	d006      	beq.n	644 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     636:	68bb      	ldr	r3, [r7, #8]
     638:	681b      	ldr	r3, [r3, #0]
     63a:	68ba      	ldr	r2, [r7, #8]
     63c:	6851      	ldr	r1, [r2, #4]
     63e:	7bfa      	ldrb	r2, [r7, #15]
     640:	4610      	mov	r0, r2
     642:	4798      	blx	r3
  }
}
     644:	bf00      	nop
     646:	3710      	adds	r7, #16
     648:	46bd      	mov	sp, r7
     64a:	bd80      	pop	{r7, pc}

0000064c <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     64c:	b480      	push	{r7}
     64e:	b085      	sub	sp, #20
     650:	af00      	add	r7, sp, #0
     652:	6078      	str	r0, [r7, #4]
     654:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     656:	687b      	ldr	r3, [r7, #4]
     658:	60fb      	str	r3, [r7, #12]
     65a:	e002      	b.n	662 <_strnlen_s+0x16>
     65c:	68fb      	ldr	r3, [r7, #12]
     65e:	3301      	adds	r3, #1
     660:	60fb      	str	r3, [r7, #12]
     662:	68fb      	ldr	r3, [r7, #12]
     664:	781b      	ldrb	r3, [r3, #0]
     666:	2b00      	cmp	r3, #0
     668:	d004      	beq.n	674 <_strnlen_s+0x28>
     66a:	683b      	ldr	r3, [r7, #0]
     66c:	1e5a      	subs	r2, r3, #1
     66e:	603a      	str	r2, [r7, #0]
     670:	2b00      	cmp	r3, #0
     672:	d1f3      	bne.n	65c <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     674:	68fa      	ldr	r2, [r7, #12]
     676:	687b      	ldr	r3, [r7, #4]
     678:	1ad3      	subs	r3, r2, r3
}
     67a:	4618      	mov	r0, r3
     67c:	3714      	adds	r7, #20
     67e:	46bd      	mov	sp, r7
     680:	bc80      	pop	{r7}
     682:	4770      	bx	lr

00000684 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     684:	b480      	push	{r7}
     686:	b083      	sub	sp, #12
     688:	af00      	add	r7, sp, #0
     68a:	4603      	mov	r3, r0
     68c:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     68e:	79fb      	ldrb	r3, [r7, #7]
     690:	2b2f      	cmp	r3, #47	; 0x2f
     692:	d904      	bls.n	69e <_is_digit+0x1a>
     694:	79fb      	ldrb	r3, [r7, #7]
     696:	2b39      	cmp	r3, #57	; 0x39
     698:	d801      	bhi.n	69e <_is_digit+0x1a>
     69a:	2301      	movs	r3, #1
     69c:	e000      	b.n	6a0 <_is_digit+0x1c>
     69e:	2300      	movs	r3, #0
     6a0:	f003 0301 	and.w	r3, r3, #1
     6a4:	b2db      	uxtb	r3, r3
}
     6a6:	4618      	mov	r0, r3
     6a8:	370c      	adds	r7, #12
     6aa:	46bd      	mov	sp, r7
     6ac:	bc80      	pop	{r7}
     6ae:	4770      	bx	lr

000006b0 <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     6b0:	b580      	push	{r7, lr}
     6b2:	b084      	sub	sp, #16
     6b4:	af00      	add	r7, sp, #0
     6b6:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     6b8:	2300      	movs	r3, #0
     6ba:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6bc:	e00e      	b.n	6dc <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     6be:	68fa      	ldr	r2, [r7, #12]
     6c0:	4613      	mov	r3, r2
     6c2:	009b      	lsls	r3, r3, #2
     6c4:	4413      	add	r3, r2
     6c6:	005b      	lsls	r3, r3, #1
     6c8:	4618      	mov	r0, r3
     6ca:	687b      	ldr	r3, [r7, #4]
     6cc:	681b      	ldr	r3, [r3, #0]
     6ce:	1c59      	adds	r1, r3, #1
     6d0:	687a      	ldr	r2, [r7, #4]
     6d2:	6011      	str	r1, [r2, #0]
     6d4:	781b      	ldrb	r3, [r3, #0]
     6d6:	4403      	add	r3, r0
     6d8:	3b30      	subs	r3, #48	; 0x30
     6da:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6dc:	687b      	ldr	r3, [r7, #4]
     6de:	681b      	ldr	r3, [r3, #0]
     6e0:	781b      	ldrb	r3, [r3, #0]
     6e2:	4618      	mov	r0, r3
     6e4:	f7ff ffce 	bl	684 <_is_digit>
     6e8:	4603      	mov	r3, r0
     6ea:	2b00      	cmp	r3, #0
     6ec:	d1e7      	bne.n	6be <_atoi+0xe>
  }
  return i;
     6ee:	68fb      	ldr	r3, [r7, #12]
}
     6f0:	4618      	mov	r0, r3
     6f2:	3710      	adds	r7, #16
     6f4:	46bd      	mov	sp, r7
     6f6:	bd80      	pop	{r7, pc}

000006f8 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     6f8:	b590      	push	{r4, r7, lr}
     6fa:	b087      	sub	sp, #28
     6fc:	af00      	add	r7, sp, #0
     6fe:	60f8      	str	r0, [r7, #12]
     700:	60b9      	str	r1, [r7, #8]
     702:	607a      	str	r2, [r7, #4]
     704:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     706:	687b      	ldr	r3, [r7, #4]
     708:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     70a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     70c:	f003 0302 	and.w	r3, r3, #2
     710:	2b00      	cmp	r3, #0
     712:	d125      	bne.n	760 <_out_rev+0x68>
     714:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     716:	f003 0301 	and.w	r3, r3, #1
     71a:	2b00      	cmp	r3, #0
     71c:	d120      	bne.n	760 <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     71e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     720:	617b      	str	r3, [r7, #20]
     722:	e00a      	b.n	73a <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     724:	687a      	ldr	r2, [r7, #4]
     726:	1c53      	adds	r3, r2, #1
     728:	607b      	str	r3, [r7, #4]
     72a:	68fc      	ldr	r4, [r7, #12]
     72c:	683b      	ldr	r3, [r7, #0]
     72e:	68b9      	ldr	r1, [r7, #8]
     730:	2020      	movs	r0, #32
     732:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     734:	697b      	ldr	r3, [r7, #20]
     736:	3301      	adds	r3, #1
     738:	617b      	str	r3, [r7, #20]
     73a:	697a      	ldr	r2, [r7, #20]
     73c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     73e:	429a      	cmp	r2, r3
     740:	d3f0      	bcc.n	724 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     742:	e00d      	b.n	760 <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     744:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     746:	3b01      	subs	r3, #1
     748:	62fb      	str	r3, [r7, #44]	; 0x2c
     74a:	6aba      	ldr	r2, [r7, #40]	; 0x28
     74c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     74e:	4413      	add	r3, r2
     750:	7818      	ldrb	r0, [r3, #0]
     752:	687a      	ldr	r2, [r7, #4]
     754:	1c53      	adds	r3, r2, #1
     756:	607b      	str	r3, [r7, #4]
     758:	68fc      	ldr	r4, [r7, #12]
     75a:	683b      	ldr	r3, [r7, #0]
     75c:	68b9      	ldr	r1, [r7, #8]
     75e:	47a0      	blx	r4
  while (len) {
     760:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     762:	2b00      	cmp	r3, #0
     764:	d1ee      	bne.n	744 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     766:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     768:	f003 0302 	and.w	r3, r3, #2
     76c:	2b00      	cmp	r3, #0
     76e:	d00e      	beq.n	78e <_out_rev+0x96>
    while (idx - start_idx < width) {
     770:	e007      	b.n	782 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     772:	687a      	ldr	r2, [r7, #4]
     774:	1c53      	adds	r3, r2, #1
     776:	607b      	str	r3, [r7, #4]
     778:	68fc      	ldr	r4, [r7, #12]
     77a:	683b      	ldr	r3, [r7, #0]
     77c:	68b9      	ldr	r1, [r7, #8]
     77e:	2020      	movs	r0, #32
     780:	47a0      	blx	r4
    while (idx - start_idx < width) {
     782:	687a      	ldr	r2, [r7, #4]
     784:	693b      	ldr	r3, [r7, #16]
     786:	1ad3      	subs	r3, r2, r3
     788:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     78a:	429a      	cmp	r2, r3
     78c:	d8f1      	bhi.n	772 <_out_rev+0x7a>
    }
  }

  return idx;
     78e:	687b      	ldr	r3, [r7, #4]
}
     790:	4618      	mov	r0, r3
     792:	371c      	adds	r7, #28
     794:	46bd      	mov	sp, r7
     796:	bd90      	pop	{r4, r7, pc}

00000798 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     798:	b580      	push	{r7, lr}
     79a:	b088      	sub	sp, #32
     79c:	af04      	add	r7, sp, #16
     79e:	60f8      	str	r0, [r7, #12]
     7a0:	60b9      	str	r1, [r7, #8]
     7a2:	607a      	str	r2, [r7, #4]
     7a4:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     7a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7a8:	f003 0302 	and.w	r3, r3, #2
     7ac:	2b00      	cmp	r3, #0
     7ae:	d136      	bne.n	81e <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     7b0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7b2:	2b00      	cmp	r3, #0
     7b4:	d018      	beq.n	7e8 <_ntoa_format+0x50>
     7b6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7b8:	f003 0301 	and.w	r3, r3, #1
     7bc:	2b00      	cmp	r3, #0
     7be:	d013      	beq.n	7e8 <_ntoa_format+0x50>
     7c0:	f897 3020 	ldrb.w	r3, [r7, #32]
     7c4:	2b00      	cmp	r3, #0
     7c6:	d104      	bne.n	7d2 <_ntoa_format+0x3a>
     7c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7ca:	f003 030c 	and.w	r3, r3, #12
     7ce:	2b00      	cmp	r3, #0
     7d0:	d00a      	beq.n	7e8 <_ntoa_format+0x50>
      width--;
     7d2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7d4:	3b01      	subs	r3, #1
     7d6:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7d8:	e006      	b.n	7e8 <_ntoa_format+0x50>
      buf[len++] = '0';
     7da:	69fb      	ldr	r3, [r7, #28]
     7dc:	1c5a      	adds	r2, r3, #1
     7de:	61fa      	str	r2, [r7, #28]
     7e0:	69ba      	ldr	r2, [r7, #24]
     7e2:	4413      	add	r3, r2
     7e4:	2230      	movs	r2, #48	; 0x30
     7e6:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7e8:	69fa      	ldr	r2, [r7, #28]
     7ea:	6abb      	ldr	r3, [r7, #40]	; 0x28
     7ec:	429a      	cmp	r2, r3
     7ee:	d20a      	bcs.n	806 <_ntoa_format+0x6e>
     7f0:	69fb      	ldr	r3, [r7, #28]
     7f2:	2b1f      	cmp	r3, #31
     7f4:	d9f1      	bls.n	7da <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7f6:	e006      	b.n	806 <_ntoa_format+0x6e>
      buf[len++] = '0';
     7f8:	69fb      	ldr	r3, [r7, #28]
     7fa:	1c5a      	adds	r2, r3, #1
     7fc:	61fa      	str	r2, [r7, #28]
     7fe:	69ba      	ldr	r2, [r7, #24]
     800:	4413      	add	r3, r2
     802:	2230      	movs	r2, #48	; 0x30
     804:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     806:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     808:	f003 0301 	and.w	r3, r3, #1
     80c:	2b00      	cmp	r3, #0
     80e:	d006      	beq.n	81e <_ntoa_format+0x86>
     810:	69fa      	ldr	r2, [r7, #28]
     812:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     814:	429a      	cmp	r2, r3
     816:	d202      	bcs.n	81e <_ntoa_format+0x86>
     818:	69fb      	ldr	r3, [r7, #28]
     81a:	2b1f      	cmp	r3, #31
     81c:	d9ec      	bls.n	7f8 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     81e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     820:	f003 0310 	and.w	r3, r3, #16
     824:	2b00      	cmp	r3, #0
     826:	d058      	beq.n	8da <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     828:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     82a:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     82e:	2b00      	cmp	r3, #0
     830:	d116      	bne.n	860 <_ntoa_format+0xc8>
     832:	69fb      	ldr	r3, [r7, #28]
     834:	2b00      	cmp	r3, #0
     836:	d013      	beq.n	860 <_ntoa_format+0xc8>
     838:	69fa      	ldr	r2, [r7, #28]
     83a:	6abb      	ldr	r3, [r7, #40]	; 0x28
     83c:	429a      	cmp	r2, r3
     83e:	d003      	beq.n	848 <_ntoa_format+0xb0>
     840:	69fa      	ldr	r2, [r7, #28]
     842:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     844:	429a      	cmp	r2, r3
     846:	d10b      	bne.n	860 <_ntoa_format+0xc8>
      len--;
     848:	69fb      	ldr	r3, [r7, #28]
     84a:	3b01      	subs	r3, #1
     84c:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     84e:	69fb      	ldr	r3, [r7, #28]
     850:	2b00      	cmp	r3, #0
     852:	d005      	beq.n	860 <_ntoa_format+0xc8>
     854:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     856:	2b10      	cmp	r3, #16
     858:	d102      	bne.n	860 <_ntoa_format+0xc8>
        len--;
     85a:	69fb      	ldr	r3, [r7, #28]
     85c:	3b01      	subs	r3, #1
     85e:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     860:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     862:	2b10      	cmp	r3, #16
     864:	d10f      	bne.n	886 <_ntoa_format+0xee>
     866:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     868:	f003 0320 	and.w	r3, r3, #32
     86c:	2b00      	cmp	r3, #0
     86e:	d10a      	bne.n	886 <_ntoa_format+0xee>
     870:	69fb      	ldr	r3, [r7, #28]
     872:	2b1f      	cmp	r3, #31
     874:	d807      	bhi.n	886 <_ntoa_format+0xee>
      buf[len++] = 'x';
     876:	69fb      	ldr	r3, [r7, #28]
     878:	1c5a      	adds	r2, r3, #1
     87a:	61fa      	str	r2, [r7, #28]
     87c:	69ba      	ldr	r2, [r7, #24]
     87e:	4413      	add	r3, r2
     880:	2278      	movs	r2, #120	; 0x78
     882:	701a      	strb	r2, [r3, #0]
     884:	e01f      	b.n	8c6 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     886:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     888:	2b10      	cmp	r3, #16
     88a:	d10f      	bne.n	8ac <_ntoa_format+0x114>
     88c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     88e:	f003 0320 	and.w	r3, r3, #32
     892:	2b00      	cmp	r3, #0
     894:	d00a      	beq.n	8ac <_ntoa_format+0x114>
     896:	69fb      	ldr	r3, [r7, #28]
     898:	2b1f      	cmp	r3, #31
     89a:	d807      	bhi.n	8ac <_ntoa_format+0x114>
      buf[len++] = 'X';
     89c:	69fb      	ldr	r3, [r7, #28]
     89e:	1c5a      	adds	r2, r3, #1
     8a0:	61fa      	str	r2, [r7, #28]
     8a2:	69ba      	ldr	r2, [r7, #24]
     8a4:	4413      	add	r3, r2
     8a6:	2258      	movs	r2, #88	; 0x58
     8a8:	701a      	strb	r2, [r3, #0]
     8aa:	e00c      	b.n	8c6 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     8ac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8ae:	2b02      	cmp	r3, #2
     8b0:	d109      	bne.n	8c6 <_ntoa_format+0x12e>
     8b2:	69fb      	ldr	r3, [r7, #28]
     8b4:	2b1f      	cmp	r3, #31
     8b6:	d806      	bhi.n	8c6 <_ntoa_format+0x12e>
      buf[len++] = 'b';
     8b8:	69fb      	ldr	r3, [r7, #28]
     8ba:	1c5a      	adds	r2, r3, #1
     8bc:	61fa      	str	r2, [r7, #28]
     8be:	69ba      	ldr	r2, [r7, #24]
     8c0:	4413      	add	r3, r2
     8c2:	2262      	movs	r2, #98	; 0x62
     8c4:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8c6:	69fb      	ldr	r3, [r7, #28]
     8c8:	2b1f      	cmp	r3, #31
     8ca:	d806      	bhi.n	8da <_ntoa_format+0x142>
      buf[len++] = '0';
     8cc:	69fb      	ldr	r3, [r7, #28]
     8ce:	1c5a      	adds	r2, r3, #1
     8d0:	61fa      	str	r2, [r7, #28]
     8d2:	69ba      	ldr	r2, [r7, #24]
     8d4:	4413      	add	r3, r2
     8d6:	2230      	movs	r2, #48	; 0x30
     8d8:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8da:	69fb      	ldr	r3, [r7, #28]
     8dc:	2b1f      	cmp	r3, #31
     8de:	d824      	bhi.n	92a <_ntoa_format+0x192>
    if (negative) {
     8e0:	f897 3020 	ldrb.w	r3, [r7, #32]
     8e4:	2b00      	cmp	r3, #0
     8e6:	d007      	beq.n	8f8 <_ntoa_format+0x160>
      buf[len++] = '-';
     8e8:	69fb      	ldr	r3, [r7, #28]
     8ea:	1c5a      	adds	r2, r3, #1
     8ec:	61fa      	str	r2, [r7, #28]
     8ee:	69ba      	ldr	r2, [r7, #24]
     8f0:	4413      	add	r3, r2
     8f2:	222d      	movs	r2, #45	; 0x2d
     8f4:	701a      	strb	r2, [r3, #0]
     8f6:	e018      	b.n	92a <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     8f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8fa:	f003 0304 	and.w	r3, r3, #4
     8fe:	2b00      	cmp	r3, #0
     900:	d007      	beq.n	912 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     902:	69fb      	ldr	r3, [r7, #28]
     904:	1c5a      	adds	r2, r3, #1
     906:	61fa      	str	r2, [r7, #28]
     908:	69ba      	ldr	r2, [r7, #24]
     90a:	4413      	add	r3, r2
     90c:	222b      	movs	r2, #43	; 0x2b
     90e:	701a      	strb	r2, [r3, #0]
     910:	e00b      	b.n	92a <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     912:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     914:	f003 0308 	and.w	r3, r3, #8
     918:	2b00      	cmp	r3, #0
     91a:	d006      	beq.n	92a <_ntoa_format+0x192>
      buf[len++] = ' ';
     91c:	69fb      	ldr	r3, [r7, #28]
     91e:	1c5a      	adds	r2, r3, #1
     920:	61fa      	str	r2, [r7, #28]
     922:	69ba      	ldr	r2, [r7, #24]
     924:	4413      	add	r3, r2
     926:	2220      	movs	r2, #32
     928:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     92a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     92c:	9303      	str	r3, [sp, #12]
     92e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     930:	9302      	str	r3, [sp, #8]
     932:	69fb      	ldr	r3, [r7, #28]
     934:	9301      	str	r3, [sp, #4]
     936:	69bb      	ldr	r3, [r7, #24]
     938:	9300      	str	r3, [sp, #0]
     93a:	683b      	ldr	r3, [r7, #0]
     93c:	687a      	ldr	r2, [r7, #4]
     93e:	68b9      	ldr	r1, [r7, #8]
     940:	68f8      	ldr	r0, [r7, #12]
     942:	f7ff fed9 	bl	6f8 <_out_rev>
     946:	4603      	mov	r3, r0
}
     948:	4618      	mov	r0, r3
     94a:	3710      	adds	r7, #16
     94c:	46bd      	mov	sp, r7
     94e:	bd80      	pop	{r7, pc}

00000950 <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     950:	b580      	push	{r7, lr}
     952:	b096      	sub	sp, #88	; 0x58
     954:	af08      	add	r7, sp, #32
     956:	60f8      	str	r0, [r7, #12]
     958:	60b9      	str	r1, [r7, #8]
     95a:	607a      	str	r2, [r7, #4]
     95c:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     95e:	2300      	movs	r3, #0
     960:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     962:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     964:	2b00      	cmp	r3, #0
     966:	d103      	bne.n	970 <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     968:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     96a:	f023 0310 	bic.w	r3, r3, #16
     96e:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     970:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     972:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     976:	2b00      	cmp	r3, #0
     978:	d002      	beq.n	980 <_ntoa_long+0x30>
     97a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     97c:	2b00      	cmp	r3, #0
     97e:	d033      	beq.n	9e8 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     980:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     982:	6cba      	ldr	r2, [r7, #72]	; 0x48
     984:	fbb3 f2f2 	udiv	r2, r3, r2
     988:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     98a:	fb01 f202 	mul.w	r2, r1, r2
     98e:	1a9b      	subs	r3, r3, r2
     990:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     994:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     998:	2b09      	cmp	r3, #9
     99a:	d804      	bhi.n	9a6 <_ntoa_long+0x56>
     99c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9a0:	3330      	adds	r3, #48	; 0x30
     9a2:	b2da      	uxtb	r2, r3
     9a4:	e00d      	b.n	9c2 <_ntoa_long+0x72>
     9a6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     9a8:	f003 0320 	and.w	r3, r3, #32
     9ac:	2b00      	cmp	r3, #0
     9ae:	d001      	beq.n	9b4 <_ntoa_long+0x64>
     9b0:	2241      	movs	r2, #65	; 0x41
     9b2:	e000      	b.n	9b6 <_ntoa_long+0x66>
     9b4:	2261      	movs	r2, #97	; 0x61
     9b6:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9ba:	4413      	add	r3, r2
     9bc:	b2db      	uxtb	r3, r3
     9be:	3b0a      	subs	r3, #10
     9c0:	b2da      	uxtb	r2, r3
     9c2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9c4:	1c59      	adds	r1, r3, #1
     9c6:	6379      	str	r1, [r7, #52]	; 0x34
     9c8:	f107 0138 	add.w	r1, r7, #56	; 0x38
     9cc:	440b      	add	r3, r1
     9ce:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     9d2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     9d4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9d6:	fbb2 f3f3 	udiv	r3, r2, r3
     9da:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     9dc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     9de:	2b00      	cmp	r3, #0
     9e0:	d002      	beq.n	9e8 <_ntoa_long+0x98>
     9e2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9e4:	2b1f      	cmp	r3, #31
     9e6:	d9cb      	bls.n	980 <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     9e8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     9ea:	9306      	str	r3, [sp, #24]
     9ec:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     9ee:	9305      	str	r3, [sp, #20]
     9f0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     9f2:	9304      	str	r3, [sp, #16]
     9f4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9f6:	9303      	str	r3, [sp, #12]
     9f8:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     9fc:	9302      	str	r3, [sp, #8]
     9fe:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a00:	9301      	str	r3, [sp, #4]
     a02:	f107 0310 	add.w	r3, r7, #16
     a06:	9300      	str	r3, [sp, #0]
     a08:	683b      	ldr	r3, [r7, #0]
     a0a:	687a      	ldr	r2, [r7, #4]
     a0c:	68b9      	ldr	r1, [r7, #8]
     a0e:	68f8      	ldr	r0, [r7, #12]
     a10:	f7ff fec2 	bl	798 <_ntoa_format>
     a14:	4603      	mov	r3, r0
}
     a16:	4618      	mov	r0, r3
     a18:	3738      	adds	r7, #56	; 0x38
     a1a:	46bd      	mov	sp, r7
     a1c:	bd80      	pop	{r7, pc}

00000a1e <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     a1e:	b590      	push	{r4, r7, lr}
     a20:	b099      	sub	sp, #100	; 0x64
     a22:	af06      	add	r7, sp, #24
     a24:	60f8      	str	r0, [r7, #12]
     a26:	60b9      	str	r1, [r7, #8]
     a28:	607a      	str	r2, [r7, #4]
     a2a:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     a2c:	2300      	movs	r3, #0
     a2e:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     a30:	68bb      	ldr	r3, [r7, #8]
     a32:	2b00      	cmp	r3, #0
     a34:	f040 83c0 	bne.w	11b8 <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     a38:	4b9f      	ldr	r3, [pc, #636]	; (cb8 <_vsnprintf+0x29a>)
     a3a:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     a3c:	e3bc      	b.n	11b8 <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     a3e:	683b      	ldr	r3, [r7, #0]
     a40:	781b      	ldrb	r3, [r3, #0]
     a42:	2b25      	cmp	r3, #37	; 0x25
     a44:	d00c      	beq.n	a60 <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
     a46:	683b      	ldr	r3, [r7, #0]
     a48:	7818      	ldrb	r0, [r3, #0]
     a4a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     a4c:	1c53      	adds	r3, r2, #1
     a4e:	637b      	str	r3, [r7, #52]	; 0x34
     a50:	68fc      	ldr	r4, [r7, #12]
     a52:	687b      	ldr	r3, [r7, #4]
     a54:	68b9      	ldr	r1, [r7, #8]
     a56:	47a0      	blx	r4
      format++;
     a58:	683b      	ldr	r3, [r7, #0]
     a5a:	3301      	adds	r3, #1
     a5c:	603b      	str	r3, [r7, #0]
      continue;
     a5e:	e3ab      	b.n	11b8 <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
     a60:	683b      	ldr	r3, [r7, #0]
     a62:	3301      	adds	r3, #1
     a64:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     a66:	2300      	movs	r3, #0
     a68:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     a6a:	683b      	ldr	r3, [r7, #0]
     a6c:	781b      	ldrb	r3, [r3, #0]
     a6e:	3b20      	subs	r3, #32
     a70:	2b10      	cmp	r3, #16
     a72:	d857      	bhi.n	b24 <_vsnprintf+0x106>
     a74:	a201      	add	r2, pc, #4	; (adr r2, a7c <_vsnprintf+0x5e>)
     a76:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a7a:	bf00      	nop
     a7c:	00000afd 	.word	0x00000afd
     a80:	00000b25 	.word	0x00000b25
     a84:	00000b25 	.word	0x00000b25
     a88:	00000b11 	.word	0x00000b11
     a8c:	00000b25 	.word	0x00000b25
     a90:	00000b25 	.word	0x00000b25
     a94:	00000b25 	.word	0x00000b25
     a98:	00000b25 	.word	0x00000b25
     a9c:	00000b25 	.word	0x00000b25
     aa0:	00000b25 	.word	0x00000b25
     aa4:	00000b25 	.word	0x00000b25
     aa8:	00000ae9 	.word	0x00000ae9
     aac:	00000b25 	.word	0x00000b25
     ab0:	00000ad5 	.word	0x00000ad5
     ab4:	00000b25 	.word	0x00000b25
     ab8:	00000b25 	.word	0x00000b25
     abc:	00000ac1 	.word	0x00000ac1
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     ac0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ac2:	f043 0301 	orr.w	r3, r3, #1
     ac6:	647b      	str	r3, [r7, #68]	; 0x44
     ac8:	683b      	ldr	r3, [r7, #0]
     aca:	3301      	adds	r3, #1
     acc:	603b      	str	r3, [r7, #0]
     ace:	2301      	movs	r3, #1
     ad0:	63bb      	str	r3, [r7, #56]	; 0x38
     ad2:	e02a      	b.n	b2a <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     ad4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ad6:	f043 0302 	orr.w	r3, r3, #2
     ada:	647b      	str	r3, [r7, #68]	; 0x44
     adc:	683b      	ldr	r3, [r7, #0]
     ade:	3301      	adds	r3, #1
     ae0:	603b      	str	r3, [r7, #0]
     ae2:	2301      	movs	r3, #1
     ae4:	63bb      	str	r3, [r7, #56]	; 0x38
     ae6:	e020      	b.n	b2a <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     ae8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     aea:	f043 0304 	orr.w	r3, r3, #4
     aee:	647b      	str	r3, [r7, #68]	; 0x44
     af0:	683b      	ldr	r3, [r7, #0]
     af2:	3301      	adds	r3, #1
     af4:	603b      	str	r3, [r7, #0]
     af6:	2301      	movs	r3, #1
     af8:	63bb      	str	r3, [r7, #56]	; 0x38
     afa:	e016      	b.n	b2a <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     afc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     afe:	f043 0308 	orr.w	r3, r3, #8
     b02:	647b      	str	r3, [r7, #68]	; 0x44
     b04:	683b      	ldr	r3, [r7, #0]
     b06:	3301      	adds	r3, #1
     b08:	603b      	str	r3, [r7, #0]
     b0a:	2301      	movs	r3, #1
     b0c:	63bb      	str	r3, [r7, #56]	; 0x38
     b0e:	e00c      	b.n	b2a <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     b10:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b12:	f043 0310 	orr.w	r3, r3, #16
     b16:	647b      	str	r3, [r7, #68]	; 0x44
     b18:	683b      	ldr	r3, [r7, #0]
     b1a:	3301      	adds	r3, #1
     b1c:	603b      	str	r3, [r7, #0]
     b1e:	2301      	movs	r3, #1
     b20:	63bb      	str	r3, [r7, #56]	; 0x38
     b22:	e002      	b.n	b2a <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     b24:	2300      	movs	r3, #0
     b26:	63bb      	str	r3, [r7, #56]	; 0x38
     b28:	bf00      	nop
      }
    } while (n);
     b2a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     b2c:	2b00      	cmp	r3, #0
     b2e:	d19c      	bne.n	a6a <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
     b30:	2300      	movs	r3, #0
     b32:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     b34:	683b      	ldr	r3, [r7, #0]
     b36:	781b      	ldrb	r3, [r3, #0]
     b38:	4618      	mov	r0, r3
     b3a:	f7ff fda3 	bl	684 <_is_digit>
     b3e:	4603      	mov	r3, r0
     b40:	2b00      	cmp	r3, #0
     b42:	d005      	beq.n	b50 <_vsnprintf+0x132>
      width = _atoi(&format);
     b44:	463b      	mov	r3, r7
     b46:	4618      	mov	r0, r3
     b48:	f7ff fdb2 	bl	6b0 <_atoi>
     b4c:	6438      	str	r0, [r7, #64]	; 0x40
     b4e:	e018      	b.n	b82 <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     b50:	683b      	ldr	r3, [r7, #0]
     b52:	781b      	ldrb	r3, [r3, #0]
     b54:	2b2a      	cmp	r3, #42	; 0x2a
     b56:	d114      	bne.n	b82 <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     b58:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b5a:	1d1a      	adds	r2, r3, #4
     b5c:	65ba      	str	r2, [r7, #88]	; 0x58
     b5e:	681b      	ldr	r3, [r3, #0]
     b60:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     b62:	6a3b      	ldr	r3, [r7, #32]
     b64:	2b00      	cmp	r3, #0
     b66:	da07      	bge.n	b78 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     b68:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b6a:	f043 0302 	orr.w	r3, r3, #2
     b6e:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     b70:	6a3b      	ldr	r3, [r7, #32]
     b72:	425b      	negs	r3, r3
     b74:	643b      	str	r3, [r7, #64]	; 0x40
     b76:	e001      	b.n	b7c <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     b78:	6a3b      	ldr	r3, [r7, #32]
     b7a:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     b7c:	683b      	ldr	r3, [r7, #0]
     b7e:	3301      	adds	r3, #1
     b80:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     b82:	2300      	movs	r3, #0
     b84:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     b86:	683b      	ldr	r3, [r7, #0]
     b88:	781b      	ldrb	r3, [r3, #0]
     b8a:	2b2e      	cmp	r3, #46	; 0x2e
     b8c:	d124      	bne.n	bd8 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     b8e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b90:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     b94:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     b96:	683b      	ldr	r3, [r7, #0]
     b98:	3301      	adds	r3, #1
     b9a:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     b9c:	683b      	ldr	r3, [r7, #0]
     b9e:	781b      	ldrb	r3, [r3, #0]
     ba0:	4618      	mov	r0, r3
     ba2:	f7ff fd6f 	bl	684 <_is_digit>
     ba6:	4603      	mov	r3, r0
     ba8:	2b00      	cmp	r3, #0
     baa:	d005      	beq.n	bb8 <_vsnprintf+0x19a>
        precision = _atoi(&format);
     bac:	463b      	mov	r3, r7
     bae:	4618      	mov	r0, r3
     bb0:	f7ff fd7e 	bl	6b0 <_atoi>
     bb4:	63f8      	str	r0, [r7, #60]	; 0x3c
     bb6:	e00f      	b.n	bd8 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     bb8:	683b      	ldr	r3, [r7, #0]
     bba:	781b      	ldrb	r3, [r3, #0]
     bbc:	2b2a      	cmp	r3, #42	; 0x2a
     bbe:	d10b      	bne.n	bd8 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     bc0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     bc2:	1d1a      	adds	r2, r3, #4
     bc4:	65ba      	str	r2, [r7, #88]	; 0x58
     bc6:	681b      	ldr	r3, [r3, #0]
     bc8:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     bca:	69fb      	ldr	r3, [r7, #28]
     bcc:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     bd0:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     bd2:	683b      	ldr	r3, [r7, #0]
     bd4:	3301      	adds	r3, #1
     bd6:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     bd8:	683b      	ldr	r3, [r7, #0]
     bda:	781b      	ldrb	r3, [r3, #0]
     bdc:	3b68      	subs	r3, #104	; 0x68
     bde:	2b12      	cmp	r3, #18
     be0:	d866      	bhi.n	cb0 <_vsnprintf+0x292>
     be2:	a201      	add	r2, pc, #4	; (adr r2, be8 <_vsnprintf+0x1ca>)
     be4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     be8:	00000c5b 	.word	0x00000c5b
     bec:	00000cb1 	.word	0x00000cb1
     bf0:	00000c91 	.word	0x00000c91
     bf4:	00000cb1 	.word	0x00000cb1
     bf8:	00000c35 	.word	0x00000c35
     bfc:	00000cb1 	.word	0x00000cb1
     c00:	00000cb1 	.word	0x00000cb1
     c04:	00000cb1 	.word	0x00000cb1
     c08:	00000cb1 	.word	0x00000cb1
     c0c:	00000cb1 	.word	0x00000cb1
     c10:	00000cb1 	.word	0x00000cb1
     c14:	00000cb1 	.word	0x00000cb1
     c18:	00000c81 	.word	0x00000c81
     c1c:	00000cb1 	.word	0x00000cb1
     c20:	00000cb1 	.word	0x00000cb1
     c24:	00000cb1 	.word	0x00000cb1
     c28:	00000cb1 	.word	0x00000cb1
     c2c:	00000cb1 	.word	0x00000cb1
     c30:	00000ca1 	.word	0x00000ca1
      case 'l' :
        flags |= FLAGS_LONG;
     c34:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c36:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c3a:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c3c:	683b      	ldr	r3, [r7, #0]
     c3e:	3301      	adds	r3, #1
     c40:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     c42:	683b      	ldr	r3, [r7, #0]
     c44:	781b      	ldrb	r3, [r3, #0]
     c46:	2b6c      	cmp	r3, #108	; 0x6c
     c48:	d134      	bne.n	cb4 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     c4a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c4c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c50:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c52:	683b      	ldr	r3, [r7, #0]
     c54:	3301      	adds	r3, #1
     c56:	603b      	str	r3, [r7, #0]
        }
        break;
     c58:	e02c      	b.n	cb4 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     c5a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c5c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     c60:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c62:	683b      	ldr	r3, [r7, #0]
     c64:	3301      	adds	r3, #1
     c66:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     c68:	683b      	ldr	r3, [r7, #0]
     c6a:	781b      	ldrb	r3, [r3, #0]
     c6c:	2b68      	cmp	r3, #104	; 0x68
     c6e:	d125      	bne.n	cbc <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     c70:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c72:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     c76:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c78:	683b      	ldr	r3, [r7, #0]
     c7a:	3301      	adds	r3, #1
     c7c:	603b      	str	r3, [r7, #0]
        }
        break;
     c7e:	e01d      	b.n	cbc <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c80:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c82:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c86:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c88:	683b      	ldr	r3, [r7, #0]
     c8a:	3301      	adds	r3, #1
     c8c:	603b      	str	r3, [r7, #0]
        break;
     c8e:	e016      	b.n	cbe <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c90:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c92:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c96:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c98:	683b      	ldr	r3, [r7, #0]
     c9a:	3301      	adds	r3, #1
     c9c:	603b      	str	r3, [r7, #0]
        break;
     c9e:	e00e      	b.n	cbe <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     ca0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ca2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     ca6:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     ca8:	683b      	ldr	r3, [r7, #0]
     caa:	3301      	adds	r3, #1
     cac:	603b      	str	r3, [r7, #0]
        break;
     cae:	e006      	b.n	cbe <_vsnprintf+0x2a0>
      default :
        break;
     cb0:	bf00      	nop
     cb2:	e004      	b.n	cbe <_vsnprintf+0x2a0>
        break;
     cb4:	bf00      	nop
     cb6:	e002      	b.n	cbe <_vsnprintf+0x2a0>
     cb8:	000005e1 	.word	0x000005e1
        break;
     cbc:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     cbe:	683b      	ldr	r3, [r7, #0]
     cc0:	781b      	ldrb	r3, [r3, #0]
     cc2:	3b25      	subs	r3, #37	; 0x25
     cc4:	2b53      	cmp	r3, #83	; 0x53
     cc6:	f200 826a 	bhi.w	119e <_vsnprintf+0x780>
     cca:	a201      	add	r2, pc, #4	; (adr r2, cd0 <_vsnprintf+0x2b2>)
     ccc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     cd0:	00001187 	.word	0x00001187
     cd4:	0000119f 	.word	0x0000119f
     cd8:	0000119f 	.word	0x0000119f
     cdc:	0000119f 	.word	0x0000119f
     ce0:	0000119f 	.word	0x0000119f
     ce4:	0000119f 	.word	0x0000119f
     ce8:	0000119f 	.word	0x0000119f
     cec:	0000119f 	.word	0x0000119f
     cf0:	0000119f 	.word	0x0000119f
     cf4:	0000119f 	.word	0x0000119f
     cf8:	0000119f 	.word	0x0000119f
     cfc:	0000119f 	.word	0x0000119f
     d00:	0000119f 	.word	0x0000119f
     d04:	0000119f 	.word	0x0000119f
     d08:	0000119f 	.word	0x0000119f
     d0c:	0000119f 	.word	0x0000119f
     d10:	0000119f 	.word	0x0000119f
     d14:	0000119f 	.word	0x0000119f
     d18:	0000119f 	.word	0x0000119f
     d1c:	0000119f 	.word	0x0000119f
     d20:	0000119f 	.word	0x0000119f
     d24:	0000119f 	.word	0x0000119f
     d28:	0000119f 	.word	0x0000119f
     d2c:	0000119f 	.word	0x0000119f
     d30:	0000119f 	.word	0x0000119f
     d34:	0000119f 	.word	0x0000119f
     d38:	0000119f 	.word	0x0000119f
     d3c:	0000119f 	.word	0x0000119f
     d40:	0000119f 	.word	0x0000119f
     d44:	0000119f 	.word	0x0000119f
     d48:	0000119f 	.word	0x0000119f
     d4c:	0000119f 	.word	0x0000119f
     d50:	0000119f 	.word	0x0000119f
     d54:	0000119f 	.word	0x0000119f
     d58:	0000119f 	.word	0x0000119f
     d5c:	0000119f 	.word	0x0000119f
     d60:	0000119f 	.word	0x0000119f
     d64:	0000119f 	.word	0x0000119f
     d68:	0000119f 	.word	0x0000119f
     d6c:	0000119f 	.word	0x0000119f
     d70:	0000119f 	.word	0x0000119f
     d74:	0000119f 	.word	0x0000119f
     d78:	0000119f 	.word	0x0000119f
     d7c:	0000119f 	.word	0x0000119f
     d80:	0000119f 	.word	0x0000119f
     d84:	0000119f 	.word	0x0000119f
     d88:	0000119f 	.word	0x0000119f
     d8c:	0000119f 	.word	0x0000119f
     d90:	0000119f 	.word	0x0000119f
     d94:	0000119f 	.word	0x0000119f
     d98:	0000119f 	.word	0x0000119f
     d9c:	00000e21 	.word	0x00000e21
     da0:	0000119f 	.word	0x0000119f
     da4:	0000119f 	.word	0x0000119f
     da8:	0000119f 	.word	0x0000119f
     dac:	0000119f 	.word	0x0000119f
     db0:	0000119f 	.word	0x0000119f
     db4:	0000119f 	.word	0x0000119f
     db8:	0000119f 	.word	0x0000119f
     dbc:	0000119f 	.word	0x0000119f
     dc0:	0000119f 	.word	0x0000119f
     dc4:	00000e21 	.word	0x00000e21
     dc8:	0000100d 	.word	0x0000100d
     dcc:	00000e21 	.word	0x00000e21
     dd0:	0000119f 	.word	0x0000119f
     dd4:	0000119f 	.word	0x0000119f
     dd8:	0000119f 	.word	0x0000119f
     ddc:	0000119f 	.word	0x0000119f
     de0:	00000e21 	.word	0x00000e21
     de4:	0000119f 	.word	0x0000119f
     de8:	0000119f 	.word	0x0000119f
     dec:	0000119f 	.word	0x0000119f
     df0:	0000119f 	.word	0x0000119f
     df4:	0000119f 	.word	0x0000119f
     df8:	00000e21 	.word	0x00000e21
     dfc:	00001145 	.word	0x00001145
     e00:	0000119f 	.word	0x0000119f
     e04:	0000119f 	.word	0x0000119f
     e08:	00001081 	.word	0x00001081
     e0c:	0000119f 	.word	0x0000119f
     e10:	00000e21 	.word	0x00000e21
     e14:	0000119f 	.word	0x0000119f
     e18:	0000119f 	.word	0x0000119f
     e1c:	00000e21 	.word	0x00000e21
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
     e20:	683b      	ldr	r3, [r7, #0]
     e22:	781b      	ldrb	r3, [r3, #0]
     e24:	2b78      	cmp	r3, #120	; 0x78
     e26:	d003      	beq.n	e30 <_vsnprintf+0x412>
     e28:	683b      	ldr	r3, [r7, #0]
     e2a:	781b      	ldrb	r3, [r3, #0]
     e2c:	2b58      	cmp	r3, #88	; 0x58
     e2e:	d102      	bne.n	e36 <_vsnprintf+0x418>
          base = 16U;
     e30:	2310      	movs	r3, #16
     e32:	633b      	str	r3, [r7, #48]	; 0x30
     e34:	e013      	b.n	e5e <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
     e36:	683b      	ldr	r3, [r7, #0]
     e38:	781b      	ldrb	r3, [r3, #0]
     e3a:	2b6f      	cmp	r3, #111	; 0x6f
     e3c:	d102      	bne.n	e44 <_vsnprintf+0x426>
          base =  8U;
     e3e:	2308      	movs	r3, #8
     e40:	633b      	str	r3, [r7, #48]	; 0x30
     e42:	e00c      	b.n	e5e <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
     e44:	683b      	ldr	r3, [r7, #0]
     e46:	781b      	ldrb	r3, [r3, #0]
     e48:	2b62      	cmp	r3, #98	; 0x62
     e4a:	d102      	bne.n	e52 <_vsnprintf+0x434>
          base =  2U;
     e4c:	2302      	movs	r3, #2
     e4e:	633b      	str	r3, [r7, #48]	; 0x30
     e50:	e005      	b.n	e5e <_vsnprintf+0x440>
        }
        else {
          base = 10U;
     e52:	230a      	movs	r3, #10
     e54:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
     e56:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e58:	f023 0310 	bic.w	r3, r3, #16
     e5c:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
     e5e:	683b      	ldr	r3, [r7, #0]
     e60:	781b      	ldrb	r3, [r3, #0]
     e62:	2b58      	cmp	r3, #88	; 0x58
     e64:	d103      	bne.n	e6e <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
     e66:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e68:	f043 0320 	orr.w	r3, r3, #32
     e6c:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
     e6e:	683b      	ldr	r3, [r7, #0]
     e70:	781b      	ldrb	r3, [r3, #0]
     e72:	2b69      	cmp	r3, #105	; 0x69
     e74:	d007      	beq.n	e86 <_vsnprintf+0x468>
     e76:	683b      	ldr	r3, [r7, #0]
     e78:	781b      	ldrb	r3, [r3, #0]
     e7a:	2b64      	cmp	r3, #100	; 0x64
     e7c:	d003      	beq.n	e86 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
     e7e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e80:	f023 030c 	bic.w	r3, r3, #12
     e84:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
     e86:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e88:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     e8c:	2b00      	cmp	r3, #0
     e8e:	d003      	beq.n	e98 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
     e90:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e92:	f023 0301 	bic.w	r3, r3, #1
     e96:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
     e98:	683b      	ldr	r3, [r7, #0]
     e9a:	781b      	ldrb	r3, [r3, #0]
     e9c:	2b69      	cmp	r3, #105	; 0x69
     e9e:	d003      	beq.n	ea8 <_vsnprintf+0x48a>
     ea0:	683b      	ldr	r3, [r7, #0]
     ea2:	781b      	ldrb	r3, [r3, #0]
     ea4:	2b64      	cmp	r3, #100	; 0x64
     ea6:	d15e      	bne.n	f66 <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
     ea8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eaa:	f403 7300 	and.w	r3, r3, #512	; 0x200
     eae:	2b00      	cmp	r3, #0
     eb0:	f040 80a8 	bne.w	1004 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     eb4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eb6:	f403 7380 	and.w	r3, r3, #256	; 0x100
     eba:	2b00      	cmp	r3, #0
     ebc:	d01e      	beq.n	efc <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
     ebe:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     ec0:	1d1a      	adds	r2, r3, #4
     ec2:	65ba      	str	r2, [r7, #88]	; 0x58
     ec4:	681b      	ldr	r3, [r3, #0]
     ec6:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     ec8:	693b      	ldr	r3, [r7, #16]
     eca:	2b00      	cmp	r3, #0
     ecc:	bfb8      	it	lt
     ece:	425b      	neglt	r3, r3
     ed0:	4619      	mov	r1, r3
     ed2:	693b      	ldr	r3, [r7, #16]
     ed4:	0fdb      	lsrs	r3, r3, #31
     ed6:	b2db      	uxtb	r3, r3
     ed8:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     eda:	9205      	str	r2, [sp, #20]
     edc:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     ede:	9204      	str	r2, [sp, #16]
     ee0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     ee2:	9203      	str	r2, [sp, #12]
     ee4:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     ee6:	9202      	str	r2, [sp, #8]
     ee8:	9301      	str	r3, [sp, #4]
     eea:	9100      	str	r1, [sp, #0]
     eec:	687b      	ldr	r3, [r7, #4]
     eee:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     ef0:	68b9      	ldr	r1, [r7, #8]
     ef2:	68f8      	ldr	r0, [r7, #12]
     ef4:	f7ff fd2c 	bl	950 <_ntoa_long>
     ef8:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     efa:	e083      	b.n	1004 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
     efc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     efe:	f003 0340 	and.w	r3, r3, #64	; 0x40
     f02:	2b00      	cmp	r3, #0
     f04:	d005      	beq.n	f12 <_vsnprintf+0x4f4>
     f06:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f08:	1d1a      	adds	r2, r3, #4
     f0a:	65ba      	str	r2, [r7, #88]	; 0x58
     f0c:	681b      	ldr	r3, [r3, #0]
     f0e:	b2db      	uxtb	r3, r3
     f10:	e00e      	b.n	f30 <_vsnprintf+0x512>
     f12:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f14:	f003 0380 	and.w	r3, r3, #128	; 0x80
     f18:	2b00      	cmp	r3, #0
     f1a:	d005      	beq.n	f28 <_vsnprintf+0x50a>
     f1c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f1e:	1d1a      	adds	r2, r3, #4
     f20:	65ba      	str	r2, [r7, #88]	; 0x58
     f22:	681b      	ldr	r3, [r3, #0]
     f24:	b21b      	sxth	r3, r3
     f26:	e003      	b.n	f30 <_vsnprintf+0x512>
     f28:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f2a:	1d1a      	adds	r2, r3, #4
     f2c:	65ba      	str	r2, [r7, #88]	; 0x58
     f2e:	681b      	ldr	r3, [r3, #0]
     f30:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     f32:	697b      	ldr	r3, [r7, #20]
     f34:	2b00      	cmp	r3, #0
     f36:	bfb8      	it	lt
     f38:	425b      	neglt	r3, r3
     f3a:	4619      	mov	r1, r3
     f3c:	697b      	ldr	r3, [r7, #20]
     f3e:	0fdb      	lsrs	r3, r3, #31
     f40:	b2db      	uxtb	r3, r3
     f42:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f44:	9205      	str	r2, [sp, #20]
     f46:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f48:	9204      	str	r2, [sp, #16]
     f4a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f4c:	9203      	str	r2, [sp, #12]
     f4e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f50:	9202      	str	r2, [sp, #8]
     f52:	9301      	str	r3, [sp, #4]
     f54:	9100      	str	r1, [sp, #0]
     f56:	687b      	ldr	r3, [r7, #4]
     f58:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f5a:	68b9      	ldr	r1, [r7, #8]
     f5c:	68f8      	ldr	r0, [r7, #12]
     f5e:	f7ff fcf7 	bl	950 <_ntoa_long>
     f62:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     f64:	e04e      	b.n	1004 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
     f66:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f68:	f403 7300 	and.w	r3, r3, #512	; 0x200
     f6c:	2b00      	cmp	r3, #0
     f6e:	d149      	bne.n	1004 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     f70:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f72:	f403 7380 	and.w	r3, r3, #256	; 0x100
     f76:	2b00      	cmp	r3, #0
     f78:	d016      	beq.n	fa8 <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
     f7a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f7c:	1d1a      	adds	r2, r3, #4
     f7e:	65ba      	str	r2, [r7, #88]	; 0x58
     f80:	681b      	ldr	r3, [r3, #0]
     f82:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f84:	9205      	str	r2, [sp, #20]
     f86:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f88:	9204      	str	r2, [sp, #16]
     f8a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f8c:	9203      	str	r2, [sp, #12]
     f8e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f90:	9202      	str	r2, [sp, #8]
     f92:	2200      	movs	r2, #0
     f94:	9201      	str	r2, [sp, #4]
     f96:	9300      	str	r3, [sp, #0]
     f98:	687b      	ldr	r3, [r7, #4]
     f9a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f9c:	68b9      	ldr	r1, [r7, #8]
     f9e:	68f8      	ldr	r0, [r7, #12]
     fa0:	f7ff fcd6 	bl	950 <_ntoa_long>
     fa4:	6378      	str	r0, [r7, #52]	; 0x34
     fa6:	e02d      	b.n	1004 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
     fa8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     faa:	f003 0340 	and.w	r3, r3, #64	; 0x40
     fae:	2b00      	cmp	r3, #0
     fb0:	d005      	beq.n	fbe <_vsnprintf+0x5a0>
     fb2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fb4:	1d1a      	adds	r2, r3, #4
     fb6:	65ba      	str	r2, [r7, #88]	; 0x58
     fb8:	681b      	ldr	r3, [r3, #0]
     fba:	b2db      	uxtb	r3, r3
     fbc:	e00e      	b.n	fdc <_vsnprintf+0x5be>
     fbe:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fc0:	f003 0380 	and.w	r3, r3, #128	; 0x80
     fc4:	2b00      	cmp	r3, #0
     fc6:	d005      	beq.n	fd4 <_vsnprintf+0x5b6>
     fc8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fca:	1d1a      	adds	r2, r3, #4
     fcc:	65ba      	str	r2, [r7, #88]	; 0x58
     fce:	681b      	ldr	r3, [r3, #0]
     fd0:	b29b      	uxth	r3, r3
     fd2:	e003      	b.n	fdc <_vsnprintf+0x5be>
     fd4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fd6:	1d1a      	adds	r2, r3, #4
     fd8:	65ba      	str	r2, [r7, #88]	; 0x58
     fda:	681b      	ldr	r3, [r3, #0]
     fdc:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
     fde:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fe0:	9305      	str	r3, [sp, #20]
     fe2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     fe4:	9304      	str	r3, [sp, #16]
     fe6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     fe8:	9303      	str	r3, [sp, #12]
     fea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     fec:	9302      	str	r3, [sp, #8]
     fee:	2300      	movs	r3, #0
     ff0:	9301      	str	r3, [sp, #4]
     ff2:	69bb      	ldr	r3, [r7, #24]
     ff4:	9300      	str	r3, [sp, #0]
     ff6:	687b      	ldr	r3, [r7, #4]
     ff8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     ffa:	68b9      	ldr	r1, [r7, #8]
     ffc:	68f8      	ldr	r0, [r7, #12]
     ffe:	f7ff fca7 	bl	950 <_ntoa_long>
    1002:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
    1004:	683b      	ldr	r3, [r7, #0]
    1006:	3301      	adds	r3, #1
    1008:	603b      	str	r3, [r7, #0]
        break;
    100a:	e0d5      	b.n	11b8 <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
    100c:	2301      	movs	r3, #1
    100e:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    1010:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1012:	f003 0302 	and.w	r3, r3, #2
    1016:	2b00      	cmp	r3, #0
    1018:	d10e      	bne.n	1038 <_vsnprintf+0x61a>
          while (l++ < width) {
    101a:	e007      	b.n	102c <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
    101c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    101e:	1c53      	adds	r3, r2, #1
    1020:	637b      	str	r3, [r7, #52]	; 0x34
    1022:	68fc      	ldr	r4, [r7, #12]
    1024:	687b      	ldr	r3, [r7, #4]
    1026:	68b9      	ldr	r1, [r7, #8]
    1028:	2020      	movs	r0, #32
    102a:	47a0      	blx	r4
          while (l++ < width) {
    102c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    102e:	1c5a      	adds	r2, r3, #1
    1030:	62fa      	str	r2, [r7, #44]	; 0x2c
    1032:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1034:	429a      	cmp	r2, r3
    1036:	d8f1      	bhi.n	101c <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    1038:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    103a:	1d1a      	adds	r2, r3, #4
    103c:	65ba      	str	r2, [r7, #88]	; 0x58
    103e:	681b      	ldr	r3, [r3, #0]
    1040:	b2d8      	uxtb	r0, r3
    1042:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1044:	1c53      	adds	r3, r2, #1
    1046:	637b      	str	r3, [r7, #52]	; 0x34
    1048:	68fc      	ldr	r4, [r7, #12]
    104a:	687b      	ldr	r3, [r7, #4]
    104c:	68b9      	ldr	r1, [r7, #8]
    104e:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    1050:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1052:	f003 0302 	and.w	r3, r3, #2
    1056:	2b00      	cmp	r3, #0
    1058:	d00e      	beq.n	1078 <_vsnprintf+0x65a>
          while (l++ < width) {
    105a:	e007      	b.n	106c <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
    105c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    105e:	1c53      	adds	r3, r2, #1
    1060:	637b      	str	r3, [r7, #52]	; 0x34
    1062:	68fc      	ldr	r4, [r7, #12]
    1064:	687b      	ldr	r3, [r7, #4]
    1066:	68b9      	ldr	r1, [r7, #8]
    1068:	2020      	movs	r0, #32
    106a:	47a0      	blx	r4
          while (l++ < width) {
    106c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    106e:	1c5a      	adds	r2, r3, #1
    1070:	62fa      	str	r2, [r7, #44]	; 0x2c
    1072:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1074:	429a      	cmp	r2, r3
    1076:	d8f1      	bhi.n	105c <_vsnprintf+0x63e>
          }
        }
        format++;
    1078:	683b      	ldr	r3, [r7, #0]
    107a:	3301      	adds	r3, #1
    107c:	603b      	str	r3, [r7, #0]
        break;
    107e:	e09b      	b.n	11b8 <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    1080:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1082:	1d1a      	adds	r2, r3, #4
    1084:	65ba      	str	r2, [r7, #88]	; 0x58
    1086:	681b      	ldr	r3, [r3, #0]
    1088:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    108a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    108c:	2b00      	cmp	r3, #0
    108e:	d001      	beq.n	1094 <_vsnprintf+0x676>
    1090:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1092:	e001      	b.n	1098 <_vsnprintf+0x67a>
    1094:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1098:	4619      	mov	r1, r3
    109a:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    109c:	f7ff fad6 	bl	64c <_strnlen_s>
    10a0:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    10a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10a4:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    10a8:	2b00      	cmp	r3, #0
    10aa:	d005      	beq.n	10b8 <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
    10ac:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    10ae:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10b0:	4293      	cmp	r3, r2
    10b2:	bf28      	it	cs
    10b4:	4613      	movcs	r3, r2
    10b6:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    10b8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10ba:	f003 0302 	and.w	r3, r3, #2
    10be:	2b00      	cmp	r3, #0
    10c0:	d11a      	bne.n	10f8 <_vsnprintf+0x6da>
          while (l++ < width) {
    10c2:	e007      	b.n	10d4 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
    10c4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10c6:	1c53      	adds	r3, r2, #1
    10c8:	637b      	str	r3, [r7, #52]	; 0x34
    10ca:	68fc      	ldr	r4, [r7, #12]
    10cc:	687b      	ldr	r3, [r7, #4]
    10ce:	68b9      	ldr	r1, [r7, #8]
    10d0:	2020      	movs	r0, #32
    10d2:	47a0      	blx	r4
          while (l++ < width) {
    10d4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10d6:	1c5a      	adds	r2, r3, #1
    10d8:	627a      	str	r2, [r7, #36]	; 0x24
    10da:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    10dc:	429a      	cmp	r2, r3
    10de:	d8f1      	bhi.n	10c4 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    10e0:	e00a      	b.n	10f8 <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
    10e2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    10e4:	1c5a      	adds	r2, r3, #1
    10e6:	62ba      	str	r2, [r7, #40]	; 0x28
    10e8:	7818      	ldrb	r0, [r3, #0]
    10ea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10ec:	1c53      	adds	r3, r2, #1
    10ee:	637b      	str	r3, [r7, #52]	; 0x34
    10f0:	68fc      	ldr	r4, [r7, #12]
    10f2:	687b      	ldr	r3, [r7, #4]
    10f4:	68b9      	ldr	r1, [r7, #8]
    10f6:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    10f8:	6abb      	ldr	r3, [r7, #40]	; 0x28
    10fa:	781b      	ldrb	r3, [r3, #0]
    10fc:	2b00      	cmp	r3, #0
    10fe:	d009      	beq.n	1114 <_vsnprintf+0x6f6>
    1100:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1102:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1106:	2b00      	cmp	r3, #0
    1108:	d0eb      	beq.n	10e2 <_vsnprintf+0x6c4>
    110a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    110c:	1e5a      	subs	r2, r3, #1
    110e:	63fa      	str	r2, [r7, #60]	; 0x3c
    1110:	2b00      	cmp	r3, #0
    1112:	d1e6      	bne.n	10e2 <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    1114:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1116:	f003 0302 	and.w	r3, r3, #2
    111a:	2b00      	cmp	r3, #0
    111c:	d00e      	beq.n	113c <_vsnprintf+0x71e>
          while (l++ < width) {
    111e:	e007      	b.n	1130 <_vsnprintf+0x712>
            out(' ', buffer, idx++, maxlen);
    1120:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1122:	1c53      	adds	r3, r2, #1
    1124:	637b      	str	r3, [r7, #52]	; 0x34
    1126:	68fc      	ldr	r4, [r7, #12]
    1128:	687b      	ldr	r3, [r7, #4]
    112a:	68b9      	ldr	r1, [r7, #8]
    112c:	2020      	movs	r0, #32
    112e:	47a0      	blx	r4
          while (l++ < width) {
    1130:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1132:	1c5a      	adds	r2, r3, #1
    1134:	627a      	str	r2, [r7, #36]	; 0x24
    1136:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1138:	429a      	cmp	r2, r3
    113a:	d8f1      	bhi.n	1120 <_vsnprintf+0x702>
          }
        }
        format++;
    113c:	683b      	ldr	r3, [r7, #0]
    113e:	3301      	adds	r3, #1
    1140:	603b      	str	r3, [r7, #0]
        break;
    1142:	e039      	b.n	11b8 <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    1144:	2308      	movs	r3, #8
    1146:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    1148:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    114a:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    114e:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    1150:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1152:	1d1a      	adds	r2, r3, #4
    1154:	65ba      	str	r2, [r7, #88]	; 0x58
    1156:	681b      	ldr	r3, [r3, #0]
    1158:	461a      	mov	r2, r3
    115a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    115c:	9305      	str	r3, [sp, #20]
    115e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1160:	9304      	str	r3, [sp, #16]
    1162:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1164:	9303      	str	r3, [sp, #12]
    1166:	2310      	movs	r3, #16
    1168:	9302      	str	r3, [sp, #8]
    116a:	2300      	movs	r3, #0
    116c:	9301      	str	r3, [sp, #4]
    116e:	9200      	str	r2, [sp, #0]
    1170:	687b      	ldr	r3, [r7, #4]
    1172:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1174:	68b9      	ldr	r1, [r7, #8]
    1176:	68f8      	ldr	r0, [r7, #12]
    1178:	f7ff fbea 	bl	950 <_ntoa_long>
    117c:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    117e:	683b      	ldr	r3, [r7, #0]
    1180:	3301      	adds	r3, #1
    1182:	603b      	str	r3, [r7, #0]
        break;
    1184:	e018      	b.n	11b8 <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    1186:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1188:	1c53      	adds	r3, r2, #1
    118a:	637b      	str	r3, [r7, #52]	; 0x34
    118c:	68fc      	ldr	r4, [r7, #12]
    118e:	687b      	ldr	r3, [r7, #4]
    1190:	68b9      	ldr	r1, [r7, #8]
    1192:	2025      	movs	r0, #37	; 0x25
    1194:	47a0      	blx	r4
        format++;
    1196:	683b      	ldr	r3, [r7, #0]
    1198:	3301      	adds	r3, #1
    119a:	603b      	str	r3, [r7, #0]
        break;
    119c:	e00c      	b.n	11b8 <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    119e:	683b      	ldr	r3, [r7, #0]
    11a0:	7818      	ldrb	r0, [r3, #0]
    11a2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11a4:	1c53      	adds	r3, r2, #1
    11a6:	637b      	str	r3, [r7, #52]	; 0x34
    11a8:	68fc      	ldr	r4, [r7, #12]
    11aa:	687b      	ldr	r3, [r7, #4]
    11ac:	68b9      	ldr	r1, [r7, #8]
    11ae:	47a0      	blx	r4
        format++;
    11b0:	683b      	ldr	r3, [r7, #0]
    11b2:	3301      	adds	r3, #1
    11b4:	603b      	str	r3, [r7, #0]
        break;
    11b6:	bf00      	nop
  while (*format)
    11b8:	683b      	ldr	r3, [r7, #0]
    11ba:	781b      	ldrb	r3, [r3, #0]
    11bc:	2b00      	cmp	r3, #0
    11be:	f47f ac3e 	bne.w	a3e <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    11c2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11c4:	687b      	ldr	r3, [r7, #4]
    11c6:	429a      	cmp	r2, r3
    11c8:	d302      	bcc.n	11d0 <_vsnprintf+0x7b2>
    11ca:	687b      	ldr	r3, [r7, #4]
    11cc:	1e5a      	subs	r2, r3, #1
    11ce:	e000      	b.n	11d2 <_vsnprintf+0x7b4>
    11d0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11d2:	68fc      	ldr	r4, [r7, #12]
    11d4:	687b      	ldr	r3, [r7, #4]
    11d6:	68b9      	ldr	r1, [r7, #8]
    11d8:	2000      	movs	r0, #0
    11da:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    11dc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    11de:	4618      	mov	r0, r3
    11e0:	374c      	adds	r7, #76	; 0x4c
    11e2:	46bd      	mov	sp, r7
    11e4:	bd90      	pop	{r4, r7, pc}

000011e6 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    11e6:	b40f      	push	{r0, r1, r2, r3}
    11e8:	b580      	push	{r7, lr}
    11ea:	b086      	sub	sp, #24
    11ec:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    11ee:	f107 031c 	add.w	r3, r7, #28
    11f2:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    11f4:	1d39      	adds	r1, r7, #4
    11f6:	68bb      	ldr	r3, [r7, #8]
    11f8:	9300      	str	r3, [sp, #0]
    11fa:	69bb      	ldr	r3, [r7, #24]
    11fc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    1200:	4805      	ldr	r0, [pc, #20]	; (1218 <printf_+0x32>)
    1202:	f7ff fc0c 	bl	a1e <_vsnprintf>
    1206:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1208:	68fb      	ldr	r3, [r7, #12]
}
    120a:	4618      	mov	r0, r3
    120c:	3710      	adds	r7, #16
    120e:	46bd      	mov	sp, r7
    1210:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1214:	b004      	add	sp, #16
    1216:	4770      	bx	lr
    1218:	000005fb 	.word	0x000005fb

0000121c <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    121c:	b40e      	push	{r1, r2, r3}
    121e:	b580      	push	{r7, lr}
    1220:	b087      	sub	sp, #28
    1222:	af02      	add	r7, sp, #8
    1224:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    1226:	f107 0320 	add.w	r3, r7, #32
    122a:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    122c:	68bb      	ldr	r3, [r7, #8]
    122e:	9300      	str	r3, [sp, #0]
    1230:	69fb      	ldr	r3, [r7, #28]
    1232:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    1236:	6879      	ldr	r1, [r7, #4]
    1238:	4805      	ldr	r0, [pc, #20]	; (1250 <sprintf_+0x34>)
    123a:	f7ff fbf0 	bl	a1e <_vsnprintf>
    123e:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1240:	68fb      	ldr	r3, [r7, #12]
}
    1242:	4618      	mov	r0, r3
    1244:	3714      	adds	r7, #20
    1246:	46bd      	mov	sp, r7
    1248:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    124c:	b003      	add	sp, #12
    124e:	4770      	bx	lr
    1250:	000005b5 	.word	0x000005b5

00001254 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1254:	b40c      	push	{r2, r3}
    1256:	b580      	push	{r7, lr}
    1258:	b086      	sub	sp, #24
    125a:	af02      	add	r7, sp, #8
    125c:	6078      	str	r0, [r7, #4]
    125e:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    1260:	f107 031c 	add.w	r3, r7, #28
    1264:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    1266:	68bb      	ldr	r3, [r7, #8]
    1268:	9300      	str	r3, [sp, #0]
    126a:	69bb      	ldr	r3, [r7, #24]
    126c:	683a      	ldr	r2, [r7, #0]
    126e:	6879      	ldr	r1, [r7, #4]
    1270:	4805      	ldr	r0, [pc, #20]	; (1288 <snprintf_+0x34>)
    1272:	f7ff fbd4 	bl	a1e <_vsnprintf>
    1276:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1278:	68fb      	ldr	r3, [r7, #12]
}
    127a:	4618      	mov	r0, r3
    127c:	3710      	adds	r7, #16
    127e:	46bd      	mov	sp, r7
    1280:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1284:	b002      	add	sp, #8
    1286:	4770      	bx	lr
    1288:	000005b5 	.word	0x000005b5

0000128c <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    128c:	b580      	push	{r7, lr}
    128e:	b086      	sub	sp, #24
    1290:	af02      	add	r7, sp, #8
    1292:	6078      	str	r0, [r7, #4]
    1294:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1296:	f107 010c 	add.w	r1, r7, #12
    129a:	683b      	ldr	r3, [r7, #0]
    129c:	9300      	str	r3, [sp, #0]
    129e:	687b      	ldr	r3, [r7, #4]
    12a0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    12a4:	4803      	ldr	r0, [pc, #12]	; (12b4 <vprintf_+0x28>)
    12a6:	f7ff fbba 	bl	a1e <_vsnprintf>
    12aa:	4603      	mov	r3, r0
}
    12ac:	4618      	mov	r0, r3
    12ae:	3710      	adds	r7, #16
    12b0:	46bd      	mov	sp, r7
    12b2:	bd80      	pop	{r7, pc}
    12b4:	000005fb 	.word	0x000005fb

000012b8 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    12b8:	b580      	push	{r7, lr}
    12ba:	b086      	sub	sp, #24
    12bc:	af02      	add	r7, sp, #8
    12be:	60f8      	str	r0, [r7, #12]
    12c0:	60b9      	str	r1, [r7, #8]
    12c2:	607a      	str	r2, [r7, #4]
    12c4:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    12c6:	683b      	ldr	r3, [r7, #0]
    12c8:	9300      	str	r3, [sp, #0]
    12ca:	687b      	ldr	r3, [r7, #4]
    12cc:	68ba      	ldr	r2, [r7, #8]
    12ce:	68f9      	ldr	r1, [r7, #12]
    12d0:	4803      	ldr	r0, [pc, #12]	; (12e0 <vsnprintf_+0x28>)
    12d2:	f7ff fba4 	bl	a1e <_vsnprintf>
    12d6:	4603      	mov	r3, r0
}
    12d8:	4618      	mov	r0, r3
    12da:	3710      	adds	r7, #16
    12dc:	46bd      	mov	sp, r7
    12de:	bd80      	pop	{r7, pc}
    12e0:	000005b5 	.word	0x000005b5

000012e4 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    12e4:	b40c      	push	{r2, r3}
    12e6:	b580      	push	{r7, lr}
    12e8:	b088      	sub	sp, #32
    12ea:	af02      	add	r7, sp, #8
    12ec:	6078      	str	r0, [r7, #4]
    12ee:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    12f0:	f107 0324 	add.w	r3, r7, #36	; 0x24
    12f4:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    12f6:	687b      	ldr	r3, [r7, #4]
    12f8:	60bb      	str	r3, [r7, #8]
    12fa:	683b      	ldr	r3, [r7, #0]
    12fc:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    12fe:	f107 0108 	add.w	r1, r7, #8
    1302:	693b      	ldr	r3, [r7, #16]
    1304:	9300      	str	r3, [sp, #0]
    1306:	6a3b      	ldr	r3, [r7, #32]
    1308:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
    130c:	4805      	ldr	r0, [pc, #20]	; (1324 <fctprintf+0x40>)
    130e:	f7ff fb86 	bl	a1e <_vsnprintf>
    1312:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1314:	697b      	ldr	r3, [r7, #20]
}
    1316:	4618      	mov	r0, r3
    1318:	3718      	adds	r7, #24
    131a:	46bd      	mov	sp, r7
    131c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1320:	b002      	add	sp, #8
    1322:	4770      	bx	lr
    1324:	00000621 	.word	0x00000621

00001328 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
    1328:	b480      	push	{r7}
    132a:	b083      	sub	sp, #12
    132c:	af00      	add	r7, sp, #0
    132e:	4603      	mov	r3, r0
    1330:	6039      	str	r1, [r7, #0]
    1332:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
    1334:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1338:	2b00      	cmp	r3, #0
    133a:	db0a      	blt.n	1352 <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    133c:	683b      	ldr	r3, [r7, #0]
    133e:	b2da      	uxtb	r2, r3
    1340:	490c      	ldr	r1, [pc, #48]	; (1374 <__NVIC_SetPriority+0x4c>)
    1342:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1346:	0112      	lsls	r2, r2, #4
    1348:	b2d2      	uxtb	r2, r2
    134a:	440b      	add	r3, r1
    134c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
    1350:	e00a      	b.n	1368 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    1352:	683b      	ldr	r3, [r7, #0]
    1354:	b2da      	uxtb	r2, r3
    1356:	4908      	ldr	r1, [pc, #32]	; (1378 <__NVIC_SetPriority+0x50>)
    1358:	79fb      	ldrb	r3, [r7, #7]
    135a:	f003 030f 	and.w	r3, r3, #15
    135e:	3b04      	subs	r3, #4
    1360:	0112      	lsls	r2, r2, #4
    1362:	b2d2      	uxtb	r2, r2
    1364:	440b      	add	r3, r1
    1366:	761a      	strb	r2, [r3, #24]
}
    1368:	bf00      	nop
    136a:	370c      	adds	r7, #12
    136c:	46bd      	mov	sp, r7
    136e:	bc80      	pop	{r7}
    1370:	4770      	bx	lr
    1372:	bf00      	nop
    1374:	e000e100 	.word	0xe000e100
    1378:	e000ed00 	.word	0xe000ed00

0000137c <task_entry_1>:
typedef uint32_t tTaskStack;
void task_sched(void);

typedef void (*task_entry_t)(void* param);
void task_entry_1(void* param)
{
    137c:	b580      	push	{r7, lr}
    137e:	b082      	sub	sp, #8
    1380:	af00      	add	r7, sp, #0
    1382:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    1384:	4903      	ldr	r1, [pc, #12]	; (1394 <task_entry_1+0x18>)
    1386:	4804      	ldr	r0, [pc, #16]	; (1398 <task_entry_1+0x1c>)
    1388:	f7ff ff2d 	bl	11e6 <printf_>
        // delay_ms(1000);
        task_sched();
    138c:	f000 f894 	bl	14b8 <task_sched>
        printf("This is %s\n", __func__);
    1390:	e7f8      	b.n	1384 <task_entry_1+0x8>
    1392:	bf00      	nop
    1394:	00002608 	.word	0x00002608
    1398:	000025fc 	.word	0x000025fc

0000139c <task_entry_2>:
    }
}

void task_entry_2(void* param)
{
    139c:	b580      	push	{r7, lr}
    139e:	b082      	sub	sp, #8
    13a0:	af00      	add	r7, sp, #0
    13a2:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    13a4:	4903      	ldr	r1, [pc, #12]	; (13b4 <task_entry_2+0x18>)
    13a6:	4804      	ldr	r0, [pc, #16]	; (13b8 <task_entry_2+0x1c>)
    13a8:	f7ff ff1d 	bl	11e6 <printf_>
        // delay_ms(1000);
        task_sched();
    13ac:	f000 f884 	bl	14b8 <task_sched>
        printf("This is %s\n", __func__);
    13b0:	e7f8      	b.n	13a4 <task_entry_2+0x8>
    13b2:	bf00      	nop
    13b4:	00002618 	.word	0x00002618
    13b8:	000025fc 	.word	0x000025fc

000013bc <trigget_pendsv>:
    }
}

void trigget_pendsv(void)
{
    13bc:	b480      	push	{r7}
    13be:	af00      	add	r7, sp, #0
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    13c0:	4b04      	ldr	r3, [pc, #16]	; (13d4 <trigget_pendsv+0x18>)
    13c2:	685b      	ldr	r3, [r3, #4]
    13c4:	4a03      	ldr	r2, [pc, #12]	; (13d4 <trigget_pendsv+0x18>)
    13c6:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    13ca:	6053      	str	r3, [r2, #4]
}
    13cc:	bf00      	nop
    13ce:	46bd      	mov	sp, r7
    13d0:	bc80      	pop	{r7}
    13d2:	4770      	bx	lr
    13d4:	e000ed00 	.word	0xe000ed00

000013d8 <task_create>:
tTaskStack stack[2][256];
task_t * current_task;
task_t * next_task;

void task_create(task_t * task, task_entry_t entry, void *param, tTaskStack* stack)
{
    13d8:	b480      	push	{r7}
    13da:	b085      	sub	sp, #20
    13dc:	af00      	add	r7, sp, #0
    13de:	60f8      	str	r0, [r7, #12]
    13e0:	60b9      	str	r1, [r7, #8]
    13e2:	607a      	str	r2, [r7, #4]
    13e4:	603b      	str	r3, [r7, #0]
    *(--stack) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    13e6:	683b      	ldr	r3, [r7, #0]
    13e8:	3b04      	subs	r3, #4
    13ea:	603b      	str	r3, [r7, #0]
    13ec:	683b      	ldr	r3, [r7, #0]
    13ee:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
    13f2:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)entry;                  // 程序的入口地址
    13f4:	683b      	ldr	r3, [r7, #0]
    13f6:	3b04      	subs	r3, #4
    13f8:	603b      	str	r3, [r7, #0]
    13fa:	68ba      	ldr	r2, [r7, #8]
    13fc:	683b      	ldr	r3, [r7, #0]
    13fe:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    1400:	683b      	ldr	r3, [r7, #0]
    1402:	3b04      	subs	r3, #4
    1404:	603b      	str	r3, [r7, #0]
    1406:	683b      	ldr	r3, [r7, #0]
    1408:	2214      	movs	r2, #20
    140a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x12;                   // R12, 未用
    140c:	683b      	ldr	r3, [r7, #0]
    140e:	3b04      	subs	r3, #4
    1410:	603b      	str	r3, [r7, #0]
    1412:	683b      	ldr	r3, [r7, #0]
    1414:	2212      	movs	r2, #18
    1416:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x3;                    // R3, 未用
    1418:	683b      	ldr	r3, [r7, #0]
    141a:	3b04      	subs	r3, #4
    141c:	603b      	str	r3, [r7, #0]
    141e:	683b      	ldr	r3, [r7, #0]
    1420:	2203      	movs	r2, #3
    1422:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x2;                    // R2, 未用
    1424:	683b      	ldr	r3, [r7, #0]
    1426:	3b04      	subs	r3, #4
    1428:	603b      	str	r3, [r7, #0]
    142a:	683b      	ldr	r3, [r7, #0]
    142c:	2202      	movs	r2, #2
    142e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x1;                    // R1, 未用
    1430:	683b      	ldr	r3, [r7, #0]
    1432:	3b04      	subs	r3, #4
    1434:	603b      	str	r3, [r7, #0]
    1436:	683b      	ldr	r3, [r7, #0]
    1438:	2201      	movs	r2, #1
    143a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    143c:	683b      	ldr	r3, [r7, #0]
    143e:	3b04      	subs	r3, #4
    1440:	603b      	str	r3, [r7, #0]
    1442:	687a      	ldr	r2, [r7, #4]
    1444:	683b      	ldr	r3, [r7, #0]
    1446:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x11;                   // R11, 未用
    1448:	683b      	ldr	r3, [r7, #0]
    144a:	3b04      	subs	r3, #4
    144c:	603b      	str	r3, [r7, #0]
    144e:	683b      	ldr	r3, [r7, #0]
    1450:	2211      	movs	r2, #17
    1452:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x10;                   // R10, 未用
    1454:	683b      	ldr	r3, [r7, #0]
    1456:	3b04      	subs	r3, #4
    1458:	603b      	str	r3, [r7, #0]
    145a:	683b      	ldr	r3, [r7, #0]
    145c:	2210      	movs	r2, #16
    145e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x9;                    // R9, 未用
    1460:	683b      	ldr	r3, [r7, #0]
    1462:	3b04      	subs	r3, #4
    1464:	603b      	str	r3, [r7, #0]
    1466:	683b      	ldr	r3, [r7, #0]
    1468:	2209      	movs	r2, #9
    146a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x8;                    // R8, 未用
    146c:	683b      	ldr	r3, [r7, #0]
    146e:	3b04      	subs	r3, #4
    1470:	603b      	str	r3, [r7, #0]
    1472:	683b      	ldr	r3, [r7, #0]
    1474:	2208      	movs	r2, #8
    1476:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x7;                    // R7, 未用
    1478:	683b      	ldr	r3, [r7, #0]
    147a:	3b04      	subs	r3, #4
    147c:	603b      	str	r3, [r7, #0]
    147e:	683b      	ldr	r3, [r7, #0]
    1480:	2207      	movs	r2, #7
    1482:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x6;                    // R6, 未用
    1484:	683b      	ldr	r3, [r7, #0]
    1486:	3b04      	subs	r3, #4
    1488:	603b      	str	r3, [r7, #0]
    148a:	683b      	ldr	r3, [r7, #0]
    148c:	2206      	movs	r2, #6
    148e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x5;                    // R5, 未用
    1490:	683b      	ldr	r3, [r7, #0]
    1492:	3b04      	subs	r3, #4
    1494:	603b      	str	r3, [r7, #0]
    1496:	683b      	ldr	r3, [r7, #0]
    1498:	2205      	movs	r2, #5
    149a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x4;                    // R4, 未用
    149c:	683b      	ldr	r3, [r7, #0]
    149e:	3b04      	subs	r3, #4
    14a0:	603b      	str	r3, [r7, #0]
    14a2:	683b      	ldr	r3, [r7, #0]
    14a4:	2204      	movs	r2, #4
    14a6:	601a      	str	r2, [r3, #0]
    task->stack = stack;
    14a8:	68fb      	ldr	r3, [r7, #12]
    14aa:	683a      	ldr	r2, [r7, #0]
    14ac:	601a      	str	r2, [r3, #0]
}
    14ae:	bf00      	nop
    14b0:	3714      	adds	r7, #20
    14b2:	46bd      	mov	sp, r7
    14b4:	bc80      	pop	{r7}
    14b6:	4770      	bx	lr

000014b8 <task_sched>:

void task_sched(void)
{
    14b8:	b580      	push	{r7, lr}
    14ba:	af00      	add	r7, sp, #0
    if (current_task == &task1) {
    14bc:	4b07      	ldr	r3, [pc, #28]	; (14dc <task_sched+0x24>)
    14be:	681b      	ldr	r3, [r3, #0]
    14c0:	4a07      	ldr	r2, [pc, #28]	; (14e0 <task_sched+0x28>)
    14c2:	4293      	cmp	r3, r2
    14c4:	d103      	bne.n	14ce <task_sched+0x16>
        next_task = &task2;
    14c6:	4b07      	ldr	r3, [pc, #28]	; (14e4 <task_sched+0x2c>)
    14c8:	4a07      	ldr	r2, [pc, #28]	; (14e8 <task_sched+0x30>)
    14ca:	601a      	str	r2, [r3, #0]
    14cc:	e002      	b.n	14d4 <task_sched+0x1c>
    } else {
        next_task = &task1;
    14ce:	4b05      	ldr	r3, [pc, #20]	; (14e4 <task_sched+0x2c>)
    14d0:	4a03      	ldr	r2, [pc, #12]	; (14e0 <task_sched+0x28>)
    14d2:	601a      	str	r2, [r3, #0]
    }
    trigget_pendsv();
    14d4:	f7ff ff72 	bl	13bc <trigget_pendsv>
}
    14d8:	bf00      	nop
    14da:	bd80      	pop	{r7, pc}
    14dc:	20000908 	.word	0x20000908
    14e0:	20000900 	.word	0x20000900
    14e4:	200000fc 	.word	0x200000fc
    14e8:	20000904 	.word	0x20000904

000014ec <run_first_task>:

void run_first_task(void)
{
    14ec:	b580      	push	{r7, lr}
    14ee:	b082      	sub	sp, #8
    14f0:	af00      	add	r7, sp, #0
    14f2:	2300      	movs	r3, #0
    14f4:	607b      	str	r3, [r7, #4]
  __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
    14f6:	687b      	ldr	r3, [r7, #4]
    14f8:	f383 8809 	msr	PSP, r3
}
    14fc:	bf00      	nop
    __set_PSP(0);
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    14fe:	21ff      	movs	r1, #255	; 0xff
    1500:	f06f 0001 	mvn.w	r0, #1
    1504:	f7ff ff10 	bl	1328 <__NVIC_SetPriority>
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    1508:	4b04      	ldr	r3, [pc, #16]	; (151c <run_first_task+0x30>)
    150a:	685b      	ldr	r3, [r3, #4]
    150c:	4a03      	ldr	r2, [pc, #12]	; (151c <run_first_task+0x30>)
    150e:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    1512:	6053      	str	r3, [r2, #4]
}
    1514:	bf00      	nop
    1516:	3708      	adds	r7, #8
    1518:	46bd      	mov	sp, r7
    151a:	bd80      	pop	{r7, pc}
    151c:	e000ed00 	.word	0xe000ed00

00001520 <task_start>:

void task_start(void)
{
    1520:	b580      	push	{r7, lr}
    1522:	af00      	add	r7, sp, #0
    task_create(&task1, task_entry_1, (void*)0x11111111, &stack[0]);
    1524:	4b0a      	ldr	r3, [pc, #40]	; (1550 <task_start+0x30>)
    1526:	f04f 3211 	mov.w	r2, #286331153	; 0x11111111
    152a:	490a      	ldr	r1, [pc, #40]	; (1554 <task_start+0x34>)
    152c:	480a      	ldr	r0, [pc, #40]	; (1558 <task_start+0x38>)
    152e:	f7ff ff53 	bl	13d8 <task_create>
    task_create(&task2, task_entry_2, (void*)0x22222222, &stack[1]);
    1532:	4b0a      	ldr	r3, [pc, #40]	; (155c <task_start+0x3c>)
    1534:	f04f 3222 	mov.w	r2, #572662306	; 0x22222222
    1538:	4909      	ldr	r1, [pc, #36]	; (1560 <task_start+0x40>)
    153a:	480a      	ldr	r0, [pc, #40]	; (1564 <task_start+0x44>)
    153c:	f7ff ff4c 	bl	13d8 <task_create>
    current_task = &task1;
    1540:	4b09      	ldr	r3, [pc, #36]	; (1568 <task_start+0x48>)
    1542:	4a05      	ldr	r2, [pc, #20]	; (1558 <task_start+0x38>)
    1544:	601a      	str	r2, [r3, #0]
    
    run_first_task();
    1546:	f7ff ffd1 	bl	14ec <run_first_task>
}
    154a:	bf00      	nop
    154c:	bd80      	pop	{r7, pc}
    154e:	bf00      	nop
    1550:	20000100 	.word	0x20000100
    1554:	0000137d 	.word	0x0000137d
    1558:	20000900 	.word	0x20000900
    155c:	20000500 	.word	0x20000500
    1560:	0000139d 	.word	0x0000139d
    1564:	20000904 	.word	0x20000904
    1568:	20000908 	.word	0x20000908

0000156c <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    156c:	b580      	push	{r7, lr}
    156e:	b084      	sub	sp, #16
    1570:	af00      	add	r7, sp, #0
    1572:	6078      	str	r0, [r7, #4]
    1574:	460b      	mov	r3, r1
    1576:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    1578:	f107 030f 	add.w	r3, r7, #15
    157c:	4618      	mov	r0, r3
    157e:	f7fe fe8a 	bl	296 <lite_getchar>
    {
        if (count >= max_len)
    1582:	4b23      	ldr	r3, [pc, #140]	; (1610 <shell_get_line+0xa4>)
    1584:	781b      	ldrb	r3, [r3, #0]
    1586:	78fa      	ldrb	r2, [r7, #3]
    1588:	429a      	cmp	r2, r3
    158a:	d804      	bhi.n	1596 <shell_get_line+0x2a>
        {
            count = 0;
    158c:	4b20      	ldr	r3, [pc, #128]	; (1610 <shell_get_line+0xa4>)
    158e:	2200      	movs	r2, #0
    1590:	701a      	strb	r2, [r3, #0]
            return 1;
    1592:	2301      	movs	r3, #1
    1594:	e038      	b.n	1608 <shell_get_line+0x9c>
        }
        line[count] = chr;
    1596:	4b1e      	ldr	r3, [pc, #120]	; (1610 <shell_get_line+0xa4>)
    1598:	781b      	ldrb	r3, [r3, #0]
    159a:	461a      	mov	r2, r3
    159c:	687b      	ldr	r3, [r7, #4]
    159e:	4413      	add	r3, r2
    15a0:	7bfa      	ldrb	r2, [r7, #15]
    15a2:	701a      	strb	r2, [r3, #0]
        switch (chr)
    15a4:	7bfb      	ldrb	r3, [r7, #15]
    15a6:	2b7f      	cmp	r3, #127	; 0x7f
    15a8:	d00a      	beq.n	15c0 <shell_get_line+0x54>
    15aa:	2b7f      	cmp	r3, #127	; 0x7f
    15ac:	dc1f      	bgt.n	15ee <shell_get_line+0x82>
    15ae:	2b0d      	cmp	r3, #13
    15b0:	d011      	beq.n	15d6 <shell_get_line+0x6a>
    15b2:	2b0d      	cmp	r3, #13
    15b4:	dc1b      	bgt.n	15ee <shell_get_line+0x82>
    15b6:	2b08      	cmp	r3, #8
    15b8:	d002      	beq.n	15c0 <shell_get_line+0x54>
    15ba:	2b0a      	cmp	r3, #10
    15bc:	d00b      	beq.n	15d6 <shell_get_line+0x6a>
    15be:	e016      	b.n	15ee <shell_get_line+0x82>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    15c0:	4b13      	ldr	r3, [pc, #76]	; (1610 <shell_get_line+0xa4>)
    15c2:	781b      	ldrb	r3, [r3, #0]
    15c4:	2b00      	cmp	r3, #0
    15c6:	d019      	beq.n	15fc <shell_get_line+0x90>
            {
                count--;
    15c8:	4b11      	ldr	r3, [pc, #68]	; (1610 <shell_get_line+0xa4>)
    15ca:	781b      	ldrb	r3, [r3, #0]
    15cc:	3b01      	subs	r3, #1
    15ce:	b2da      	uxtb	r2, r3
    15d0:	4b0f      	ldr	r3, [pc, #60]	; (1610 <shell_get_line+0xa4>)
    15d2:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    15d4:	e012      	b.n	15fc <shell_get_line+0x90>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    15d6:	4b0e      	ldr	r3, [pc, #56]	; (1610 <shell_get_line+0xa4>)
    15d8:	781b      	ldrb	r3, [r3, #0]
    15da:	461a      	mov	r2, r3
    15dc:	687b      	ldr	r3, [r7, #4]
    15de:	4413      	add	r3, r2
    15e0:	2200      	movs	r2, #0
    15e2:	701a      	strb	r2, [r3, #0]
            count = 0;
    15e4:	4b0a      	ldr	r3, [pc, #40]	; (1610 <shell_get_line+0xa4>)
    15e6:	2200      	movs	r2, #0
    15e8:	701a      	strb	r2, [r3, #0]
            return 1;
    15ea:	2301      	movs	r3, #1
    15ec:	e00c      	b.n	1608 <shell_get_line+0x9c>
        }
        break;

        default:
            count++;
    15ee:	4b08      	ldr	r3, [pc, #32]	; (1610 <shell_get_line+0xa4>)
    15f0:	781b      	ldrb	r3, [r3, #0]
    15f2:	3301      	adds	r3, #1
    15f4:	b2da      	uxtb	r2, r3
    15f6:	4b06      	ldr	r3, [pc, #24]	; (1610 <shell_get_line+0xa4>)
    15f8:	701a      	strb	r2, [r3, #0]
    15fa:	e000      	b.n	15fe <shell_get_line+0x92>
        break;
    15fc:	bf00      	nop
        }
        lite_putchar(chr);
    15fe:	7bfb      	ldrb	r3, [r7, #15]
    1600:	4618      	mov	r0, r3
    1602:	f7fe fe5b 	bl	2bc <lite_putchar>
    }
    return 0;
    1606:	2300      	movs	r3, #0
}
    1608:	4618      	mov	r0, r3
    160a:	3710      	adds	r7, #16
    160c:	46bd      	mov	sp, r7
    160e:	bd80      	pop	{r7, pc}
    1610:	20000024 	.word	0x20000024

00001614 <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    1614:	b580      	push	{r7, lr}
    1616:	b088      	sub	sp, #32
    1618:	af00      	add	r7, sp, #0
    161a:	60f8      	str	r0, [r7, #12]
    161c:	60b9      	str	r1, [r7, #8]
    161e:	4613      	mov	r3, r2
    1620:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    1622:	2300      	movs	r3, #0
    1624:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    1626:	4912      	ldr	r1, [pc, #72]	; (1670 <shell_get_args+0x5c>)
    1628:	68f8      	ldr	r0, [r7, #12]
    162a:	f000 f8a1 	bl	1770 <strtok>
    162e:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1630:	2300      	movs	r3, #0
    1632:	77fb      	strb	r3, [r7, #31]
    1634:	e00d      	b.n	1652 <shell_get_args+0x3e>
    {
        args[i] = ptr;
    1636:	7ffb      	ldrb	r3, [r7, #31]
    1638:	009b      	lsls	r3, r3, #2
    163a:	68ba      	ldr	r2, [r7, #8]
    163c:	4413      	add	r3, r2
    163e:	69ba      	ldr	r2, [r7, #24]
    1640:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    1642:	490c      	ldr	r1, [pc, #48]	; (1674 <shell_get_args+0x60>)
    1644:	2000      	movs	r0, #0
    1646:	f000 f893 	bl	1770 <strtok>
    164a:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    164c:	7ffb      	ldrb	r3, [r7, #31]
    164e:	3301      	adds	r3, #1
    1650:	77fb      	strb	r3, [r7, #31]
    1652:	69bb      	ldr	r3, [r7, #24]
    1654:	2b00      	cmp	r3, #0
    1656:	d003      	beq.n	1660 <shell_get_args+0x4c>
    1658:	7ffa      	ldrb	r2, [r7, #31]
    165a:	79fb      	ldrb	r3, [r7, #7]
    165c:	429a      	cmp	r2, r3
    165e:	d3ea      	bcc.n	1636 <shell_get_args+0x22>
    }
    ret = i;
    1660:	7ffb      	ldrb	r3, [r7, #31]
    1662:	75fb      	strb	r3, [r7, #23]
    return ret;
    1664:	7dfb      	ldrb	r3, [r7, #23]
}
    1666:	4618      	mov	r0, r3
    1668:	3720      	adds	r7, #32
    166a:	46bd      	mov	sp, r7
    166c:	bd80      	pop	{r7, pc}
    166e:	bf00      	nop
    1670:	00002628 	.word	0x00002628
    1674:	0000262c 	.word	0x0000262c

00001678 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    1678:	b580      	push	{r7, lr}
    167a:	b084      	sub	sp, #16
    167c:	af00      	add	r7, sp, #0
    167e:	6078      	str	r0, [r7, #4]
    1680:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    1682:	4b0b      	ldr	r3, [pc, #44]	; (16b0 <shell_help_func+0x38>)
    1684:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1686:	e00a      	b.n	169e <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    1688:	68fb      	ldr	r3, [r7, #12]
    168a:	6819      	ldr	r1, [r3, #0]
    168c:	68fb      	ldr	r3, [r7, #12]
    168e:	685b      	ldr	r3, [r3, #4]
    1690:	461a      	mov	r2, r3
    1692:	4808      	ldr	r0, [pc, #32]	; (16b4 <shell_help_func+0x3c>)
    1694:	f7ff fda7 	bl	11e6 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1698:	68fb      	ldr	r3, [r7, #12]
    169a:	330c      	adds	r3, #12
    169c:	60fb      	str	r3, [r7, #12]
    169e:	68fb      	ldr	r3, [r7, #12]
    16a0:	4a05      	ldr	r2, [pc, #20]	; (16b8 <shell_help_func+0x40>)
    16a2:	4293      	cmp	r3, r2
    16a4:	d3f0      	bcc.n	1688 <shell_help_func+0x10>
    }
    return 0;
    16a6:	2300      	movs	r3, #0
}
    16a8:	4618      	mov	r0, r3
    16aa:	3710      	adds	r7, #16
    16ac:	46bd      	mov	sp, r7
    16ae:	bd80      	pop	{r7, pc}
    16b0:	00002514 	.word	0x00002514
    16b4:	00002630 	.word	0x00002630
    16b8:	000033e8 	.word	0x000033e8

000016bc <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    16bc:	b480      	push	{r7}
    16be:	b089      	sub	sp, #36	; 0x24
    16c0:	af00      	add	r7, sp, #0
    16c2:	60f8      	str	r0, [r7, #12]
    16c4:	60b9      	str	r1, [r7, #8]
    16c6:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    16c8:	68fb      	ldr	r3, [r7, #12]
    16ca:	2b00      	cmp	r3, #0
    16cc:	d107      	bne.n	16de <strtok_r+0x22>
    16ce:	687b      	ldr	r3, [r7, #4]
    16d0:	681b      	ldr	r3, [r3, #0]
    16d2:	60fb      	str	r3, [r7, #12]
    16d4:	68fb      	ldr	r3, [r7, #12]
    16d6:	2b00      	cmp	r3, #0
    16d8:	d101      	bne.n	16de <strtok_r+0x22>
    {
    return (NULL);
    16da:	2300      	movs	r3, #0
    16dc:	e043      	b.n	1766 <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    16de:	bf00      	nop
c = *string_org++;
    16e0:	68fb      	ldr	r3, [r7, #12]
    16e2:	1c5a      	adds	r2, r3, #1
    16e4:	60fa      	str	r2, [r7, #12]
    16e6:	781b      	ldrb	r3, [r3, #0]
    16e8:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    16ea:	68bb      	ldr	r3, [r7, #8]
    16ec:	61fb      	str	r3, [r7, #28]
    16ee:	e004      	b.n	16fa <strtok_r+0x3e>
    {
    if (c == sc)
    16f0:	7efa      	ldrb	r2, [r7, #27]
    16f2:	7ebb      	ldrb	r3, [r7, #26]
    16f4:	429a      	cmp	r2, r3
    16f6:	d100      	bne.n	16fa <strtok_r+0x3e>
        {
        goto count;
    16f8:	e7f2      	b.n	16e0 <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    16fa:	69fb      	ldr	r3, [r7, #28]
    16fc:	1c5a      	adds	r2, r3, #1
    16fe:	61fa      	str	r2, [r7, #28]
    1700:	781b      	ldrb	r3, [r3, #0]
    1702:	76bb      	strb	r3, [r7, #26]
    1704:	7ebb      	ldrb	r3, [r7, #26]
    1706:	2b00      	cmp	r3, #0
    1708:	d1f2      	bne.n	16f0 <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    170a:	7efb      	ldrb	r3, [r7, #27]
    170c:	2b00      	cmp	r3, #0
    170e:	d104      	bne.n	171a <strtok_r+0x5e>
    {
    *last = NULL;
    1710:	687b      	ldr	r3, [r7, #4]
    1712:	2200      	movs	r2, #0
    1714:	601a      	str	r2, [r3, #0]
    return (NULL);
    1716:	2300      	movs	r3, #0
    1718:	e025      	b.n	1766 <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    171a:	68fb      	ldr	r3, [r7, #12]
    171c:	3b01      	subs	r3, #1
    171e:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    1720:	68fb      	ldr	r3, [r7, #12]
    1722:	1c5a      	adds	r2, r3, #1
    1724:	60fa      	str	r2, [r7, #12]
    1726:	781b      	ldrb	r3, [r3, #0]
    1728:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    172a:	68bb      	ldr	r3, [r7, #8]
    172c:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    172e:	69fb      	ldr	r3, [r7, #28]
    1730:	1c5a      	adds	r2, r3, #1
    1732:	61fa      	str	r2, [r7, #28]
    1734:	781b      	ldrb	r3, [r3, #0]
    1736:	76bb      	strb	r3, [r7, #26]
    1738:	7eba      	ldrb	r2, [r7, #26]
    173a:	7efb      	ldrb	r3, [r7, #27]
    173c:	429a      	cmp	r2, r3
    173e:	d10e      	bne.n	175e <strtok_r+0xa2>
            {
            if (c == 0)
    1740:	7efb      	ldrb	r3, [r7, #27]
    1742:	2b00      	cmp	r3, #0
    1744:	d102      	bne.n	174c <strtok_r+0x90>
                {
                string_org = NULL;
    1746:	2300      	movs	r3, #0
    1748:	60fb      	str	r3, [r7, #12]
    174a:	e003      	b.n	1754 <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    174c:	68fb      	ldr	r3, [r7, #12]
    174e:	3b01      	subs	r3, #1
    1750:	2200      	movs	r2, #0
    1752:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    1754:	687b      	ldr	r3, [r7, #4]
    1756:	68fa      	ldr	r2, [r7, #12]
    1758:	601a      	str	r2, [r3, #0]
            return (tok);
    175a:	697b      	ldr	r3, [r7, #20]
    175c:	e003      	b.n	1766 <strtok_r+0xaa>
            }
        } while (sc != 0);
    175e:	7ebb      	ldrb	r3, [r7, #26]
    1760:	2b00      	cmp	r3, #0
    1762:	d1e4      	bne.n	172e <strtok_r+0x72>
    c = *string_org++;
    1764:	e7dc      	b.n	1720 <strtok_r+0x64>
    }
    
}
    1766:	4618      	mov	r0, r3
    1768:	3724      	adds	r7, #36	; 0x24
    176a:	46bd      	mov	sp, r7
    176c:	bc80      	pop	{r7}
    176e:	4770      	bx	lr

00001770 <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    1770:	b580      	push	{r7, lr}
    1772:	b082      	sub	sp, #8
    1774:	af00      	add	r7, sp, #0
    1776:	6078      	str	r0, [r7, #4]
    1778:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    177a:	4a05      	ldr	r2, [pc, #20]	; (1790 <strtok+0x20>)
    177c:	6839      	ldr	r1, [r7, #0]
    177e:	6878      	ldr	r0, [r7, #4]
    1780:	f7ff ff9c 	bl	16bc <strtok_r>
    1784:	4603      	mov	r3, r0
}
    1786:	4618      	mov	r0, r3
    1788:	3708      	adds	r7, #8
    178a:	46bd      	mov	sp, r7
    178c:	bd80      	pop	{r7, pc}
    178e:	bf00      	nop
    1790:	20000028 	.word	0x20000028

00001794 <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    1794:	b480      	push	{r7}
    1796:	b087      	sub	sp, #28
    1798:	af00      	add	r7, sp, #0
    179a:	60f8      	str	r0, [r7, #12]
    179c:	60b9      	str	r1, [r7, #8]
    179e:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    17a0:	68fb      	ldr	r3, [r7, #12]
    17a2:	2b00      	cmp	r3, #0
    17a4:	d002      	beq.n	17ac <memcpy+0x18>
    17a6:	68bb      	ldr	r3, [r7, #8]
    17a8:	2b00      	cmp	r3, #0
    17aa:	d101      	bne.n	17b0 <memcpy+0x1c>
		return NULL;
    17ac:	2300      	movs	r3, #0
    17ae:	e012      	b.n	17d6 <memcpy+0x42>
	char *tempDest = (char *)dest;
    17b0:	68fb      	ldr	r3, [r7, #12]
    17b2:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    17b4:	68bb      	ldr	r3, [r7, #8]
    17b6:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    17b8:	e007      	b.n	17ca <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    17ba:	693a      	ldr	r2, [r7, #16]
    17bc:	1c53      	adds	r3, r2, #1
    17be:	613b      	str	r3, [r7, #16]
    17c0:	697b      	ldr	r3, [r7, #20]
    17c2:	1c59      	adds	r1, r3, #1
    17c4:	6179      	str	r1, [r7, #20]
    17c6:	7812      	ldrb	r2, [r2, #0]
    17c8:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    17ca:	687b      	ldr	r3, [r7, #4]
    17cc:	1e5a      	subs	r2, r3, #1
    17ce:	607a      	str	r2, [r7, #4]
    17d0:	2b00      	cmp	r3, #0
    17d2:	d1f2      	bne.n	17ba <memcpy+0x26>
	return dest;	
    17d4:	68fb      	ldr	r3, [r7, #12]
}
    17d6:	4618      	mov	r0, r3
    17d8:	371c      	adds	r7, #28
    17da:	46bd      	mov	sp, r7
    17dc:	bc80      	pop	{r7}
    17de:	4770      	bx	lr

000017e0 <memset>:
void *memset(void *s, int c, size_t n)
{
    17e0:	b480      	push	{r7}
    17e2:	b087      	sub	sp, #28
    17e4:	af00      	add	r7, sp, #0
    17e6:	60f8      	str	r0, [r7, #12]
    17e8:	60b9      	str	r1, [r7, #8]
    17ea:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    17ec:	68fb      	ldr	r3, [r7, #12]
    17ee:	2b00      	cmp	r3, #0
    17f0:	d101      	bne.n	17f6 <memset+0x16>
		return NULL;
    17f2:	2300      	movs	r3, #0
    17f4:	e00e      	b.n	1814 <memset+0x34>
	char * tmpS = (char *)s;
    17f6:	68fb      	ldr	r3, [r7, #12]
    17f8:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    17fa:	e005      	b.n	1808 <memset+0x28>
		*tmpS++ = c;
    17fc:	697b      	ldr	r3, [r7, #20]
    17fe:	1c5a      	adds	r2, r3, #1
    1800:	617a      	str	r2, [r7, #20]
    1802:	68ba      	ldr	r2, [r7, #8]
    1804:	b2d2      	uxtb	r2, r2
    1806:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    1808:	687b      	ldr	r3, [r7, #4]
    180a:	1e5a      	subs	r2, r3, #1
    180c:	607a      	str	r2, [r7, #4]
    180e:	2b00      	cmp	r3, #0
    1810:	d1f4      	bne.n	17fc <memset+0x1c>
		return s; 
    1812:	68fb      	ldr	r3, [r7, #12]
}
    1814:	4618      	mov	r0, r3
    1816:	371c      	adds	r7, #28
    1818:	46bd      	mov	sp, r7
    181a:	bc80      	pop	{r7}
    181c:	4770      	bx	lr

0000181e <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    181e:	b480      	push	{r7}
    1820:	b085      	sub	sp, #20
    1822:	af00      	add	r7, sp, #0
    1824:	6078      	str	r0, [r7, #4]
    1826:	6039      	str	r1, [r7, #0]
	int ret = 0;
    1828:	2300      	movs	r3, #0
    182a:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    182c:	e005      	b.n	183a <strcmp+0x1c>
	{
		str1++;
    182e:	687b      	ldr	r3, [r7, #4]
    1830:	3301      	adds	r3, #1
    1832:	607b      	str	r3, [r7, #4]
		str2++;
    1834:	683b      	ldr	r3, [r7, #0]
    1836:	3301      	adds	r3, #1
    1838:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    183a:	687b      	ldr	r3, [r7, #4]
    183c:	781b      	ldrb	r3, [r3, #0]
    183e:	461a      	mov	r2, r3
    1840:	683b      	ldr	r3, [r7, #0]
    1842:	781b      	ldrb	r3, [r3, #0]
    1844:	1ad3      	subs	r3, r2, r3
    1846:	60fb      	str	r3, [r7, #12]
    1848:	68fb      	ldr	r3, [r7, #12]
    184a:	2b00      	cmp	r3, #0
    184c:	d103      	bne.n	1856 <strcmp+0x38>
    184e:	687b      	ldr	r3, [r7, #4]
    1850:	781b      	ldrb	r3, [r3, #0]
    1852:	2b00      	cmp	r3, #0
    1854:	d1eb      	bne.n	182e <strcmp+0x10>
	}
 
 
	if (ret < 0)
    1856:	68fb      	ldr	r3, [r7, #12]
    1858:	2b00      	cmp	r3, #0
    185a:	da02      	bge.n	1862 <strcmp+0x44>
	{
		return -1;
    185c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
    1860:	e005      	b.n	186e <strcmp+0x50>
	}
	else if (ret > 0)
    1862:	68fb      	ldr	r3, [r7, #12]
    1864:	2b00      	cmp	r3, #0
    1866:	dd01      	ble.n	186c <strcmp+0x4e>
	{
		return 1;
    1868:	2301      	movs	r3, #1
    186a:	e000      	b.n	186e <strcmp+0x50>
	}
	return 0;
    186c:	2300      	movs	r3, #0
}
    186e:	4618      	mov	r0, r3
    1870:	3714      	adds	r7, #20
    1872:	46bd      	mov	sp, r7
    1874:	bc80      	pop	{r7}
    1876:	4770      	bx	lr

00001878 <shell_main>:
#endif
void shell_main(void)
{
    1878:	b580      	push	{r7, lr}
    187a:	b0c2      	sub	sp, #264	; 0x108
    187c:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    187e:	2300      	movs	r3, #0
    1880:	f8c7 3080 	str.w	r3, [r7, #128]	; 0x80
    1884:	f107 0384 	add.w	r3, r7, #132	; 0x84
    1888:	227c      	movs	r2, #124	; 0x7c
    188a:	2100      	movs	r1, #0
    188c:	4618      	mov	r0, r3
    188e:	f7ff ffa7 	bl	17e0 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    1892:	463b      	mov	r3, r7
    1894:	4618      	mov	r0, r3
    1896:	2380      	movs	r3, #128	; 0x80
    1898:	461a      	mov	r2, r3
    189a:	2100      	movs	r1, #0
    189c:	f7ff ffa0 	bl	17e0 <memset>

    uint8_t args_count = 0;
    18a0:	2300      	movs	r3, #0
    18a2:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    18a6:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18aa:	2180      	movs	r1, #128	; 0x80
    18ac:	4618      	mov	r0, r3
    18ae:	f7ff fe5d 	bl	156c <shell_get_line>
    18b2:	4603      	mov	r3, r0
    18b4:	2b00      	cmp	r3, #0
    18b6:	d0f6      	beq.n	18a6 <shell_main+0x2e>
        {
            printf("\n");
    18b8:	4826      	ldr	r0, [pc, #152]	; (1954 <shell_main+0xdc>)
    18ba:	f7ff fc94 	bl	11e6 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    18be:	4639      	mov	r1, r7
    18c0:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18c4:	2220      	movs	r2, #32
    18c6:	4618      	mov	r0, r3
    18c8:	f7ff fea4 	bl	1614 <shell_get_args>
    18cc:	4603      	mov	r3, r0
    18ce:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    18d2:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    18d6:	2b00      	cmp	r3, #0
    18d8:	d033      	beq.n	1942 <shell_main+0xca>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    18da:	4b1f      	ldr	r3, [pc, #124]	; (1958 <shell_main+0xe0>)
    18dc:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    18e0:	e02a      	b.n	1938 <shell_main+0xc0>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    18e2:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    18e6:	681a      	ldr	r2, [r3, #0]
    18e8:	463b      	mov	r3, r7
    18ea:	681b      	ldr	r3, [r3, #0]
    18ec:	4619      	mov	r1, r3
    18ee:	4610      	mov	r0, r2
    18f0:	f7ff ff95 	bl	181e <strcmp>
    18f4:	4603      	mov	r3, r0
    18f6:	2b00      	cmp	r3, #0
    18f8:	d10a      	bne.n	1910 <shell_main+0x98>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    18fa:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    18fe:	689b      	ldr	r3, [r3, #8]
    1900:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    1904:	1e50      	subs	r0, r2, #1
    1906:	463a      	mov	r2, r7
    1908:	3204      	adds	r2, #4
    190a:	4611      	mov	r1, r2
    190c:	4798      	blx	r3
    190e:	e00e      	b.n	192e <shell_main+0xb6>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    1910:	463b      	mov	r3, r7
    1912:	681b      	ldr	r3, [r3, #0]
    1914:	4619      	mov	r1, r3
    1916:	4811      	ldr	r0, [pc, #68]	; (195c <shell_main+0xe4>)
    1918:	f7ff ff81 	bl	181e <strcmp>
    191c:	4603      	mov	r3, r0
    191e:	2b00      	cmp	r3, #0
    1920:	d013      	beq.n	194a <shell_main+0xd2>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1922:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1926:	4619      	mov	r1, r3
    1928:	480d      	ldr	r0, [pc, #52]	; (1960 <shell_main+0xe8>)
    192a:	f7ff fc5c 	bl	11e6 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    192e:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1932:	330c      	adds	r3, #12
    1934:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    1938:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    193c:	4a09      	ldr	r2, [pc, #36]	; (1964 <shell_main+0xec>)
    193e:	4293      	cmp	r3, r2
    1940:	d3cf      	bcc.n	18e2 <shell_main+0x6a>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1942:	4809      	ldr	r0, [pc, #36]	; (1968 <shell_main+0xf0>)
    1944:	f7ff fc4f 	bl	11e6 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1948:	e7ad      	b.n	18a6 <shell_main+0x2e>
                        return;
    194a:	bf00      	nop
        }
    }
    return;
}
    194c:	f507 7784 	add.w	r7, r7, #264	; 0x108
    1950:	46bd      	mov	sp, r7
    1952:	bd80      	pop	{r7, pc}
    1954:	00002658 	.word	0x00002658
    1958:	00002514 	.word	0x00002514
    195c:	0000265c 	.word	0x0000265c
    1960:	00002664 	.word	0x00002664
    1964:	000033e8 	.word	0x000033e8
    1968:	00002680 	.word	0x00002680

0000196c <shell_start>:

void shell_start(void)
{
    196c:	b580      	push	{r7, lr}
    196e:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    1970:	f7ff ff82 	bl	1878 <shell_main>
    1974:	bf00      	nop
    1976:	bd80      	pop	{r7, pc}

00001978 <test_div>:
#include <stdint.h>
#include "hal_log.h"
#include "backtrace.h"
#include "hal_platform.h"
int test_div(void)
{
    1978:	b480      	push	{r7}
    197a:	b085      	sub	sp, #20
    197c:	af00      	add	r7, sp, #0
SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    197e:	4b0d      	ldr	r3, [pc, #52]	; (19b4 <test_div+0x3c>)
    1980:	6a5b      	ldr	r3, [r3, #36]	; 0x24
    1982:	4a0c      	ldr	r2, [pc, #48]	; (19b4 <test_div+0x3c>)
    1984:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
    1988:	6253      	str	r3, [r2, #36]	; 0x24
SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
    198a:	4b0a      	ldr	r3, [pc, #40]	; (19b4 <test_div+0x3c>)
    198c:	695b      	ldr	r3, [r3, #20]
    198e:	4a09      	ldr	r2, [pc, #36]	; (19b4 <test_div+0x3c>)
    1990:	f043 0318 	orr.w	r3, r3, #24
    1994:	6153      	str	r3, [r2, #20]

int a = 1;
    1996:	2301      	movs	r3, #1
    1998:	60fb      	str	r3, [r7, #12]
int b = 0;
    199a:	2300      	movs	r3, #0
    199c:	60bb      	str	r3, [r7, #8]
int z = a / b;
    199e:	68fa      	ldr	r2, [r7, #12]
    19a0:	68bb      	ldr	r3, [r7, #8]
    19a2:	fb92 f3f3 	sdiv	r3, r2, r3
    19a6:	607b      	str	r3, [r7, #4]

return z;
    19a8:	687b      	ldr	r3, [r7, #4]
}
    19aa:	4618      	mov	r0, r3
    19ac:	3714      	adds	r7, #20
    19ae:	46bd      	mov	sp, r7
    19b0:	bc80      	pop	{r7}
    19b2:	4770      	bx	lr
    19b4:	e000ed00 	.word	0xe000ed00

000019b8 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
    19b8:	b580      	push	{r7, lr}
    19ba:	b084      	sub	sp, #16
    19bc:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    19be:	4b16      	ldr	r3, [pc, #88]	; (1a18 <fault_test_by_unalign+0x60>)
    19c0:	60fb      	str	r3, [r7, #12]
volatile int * p;
volatile int value;

*SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
    19c2:	68fb      	ldr	r3, [r7, #12]
    19c4:	681b      	ldr	r3, [r3, #0]
    19c6:	f043 0208 	orr.w	r2, r3, #8
    19ca:	68fb      	ldr	r3, [r7, #12]
    19cc:	601a      	str	r2, [r3, #0]

p = (int *) 0x00;
    19ce:	2300      	movs	r3, #0
    19d0:	60bb      	str	r3, [r7, #8]
value = *p;
    19d2:	68bb      	ldr	r3, [r7, #8]
    19d4:	681b      	ldr	r3, [r3, #0]
    19d6:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19d8:	68bb      	ldr	r3, [r7, #8]
    19da:	687a      	ldr	r2, [r7, #4]
    19dc:	4619      	mov	r1, r3
    19de:	480f      	ldr	r0, [pc, #60]	; (1a1c <fault_test_by_unalign+0x64>)
    19e0:	f7ff fc01 	bl	11e6 <printf_>

p = (int *) 0x04;
    19e4:	2304      	movs	r3, #4
    19e6:	60bb      	str	r3, [r7, #8]
value = *p;
    19e8:	68bb      	ldr	r3, [r7, #8]
    19ea:	681b      	ldr	r3, [r3, #0]
    19ec:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19ee:	68bb      	ldr	r3, [r7, #8]
    19f0:	687a      	ldr	r2, [r7, #4]
    19f2:	4619      	mov	r1, r3
    19f4:	4809      	ldr	r0, [pc, #36]	; (1a1c <fault_test_by_unalign+0x64>)
    19f6:	f7ff fbf6 	bl	11e6 <printf_>

p = (int *) 0x03;
    19fa:	2303      	movs	r3, #3
    19fc:	60bb      	str	r3, [r7, #8]
value = *p;
    19fe:	68bb      	ldr	r3, [r7, #8]
    1a00:	681b      	ldr	r3, [r3, #0]
    1a02:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    1a04:	68bb      	ldr	r3, [r7, #8]
    1a06:	687a      	ldr	r2, [r7, #4]
    1a08:	4619      	mov	r1, r3
    1a0a:	4804      	ldr	r0, [pc, #16]	; (1a1c <fault_test_by_unalign+0x64>)
    1a0c:	f7ff fbeb 	bl	11e6 <printf_>
}
    1a10:	bf00      	nop
    1a12:	3710      	adds	r7, #16
    1a14:	46bd      	mov	sp, r7
    1a16:	bd80      	pop	{r7, pc}
    1a18:	e000ed14 	.word	0xe000ed14
    1a1c:	00002688 	.word	0x00002688

00001a20 <fault_test_by_div0>:

void fault_test_by_div0(void) {
    1a20:	b580      	push	{r7, lr}
    1a22:	b084      	sub	sp, #16
    1a24:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    1a26:	4b0c      	ldr	r3, [pc, #48]	; (1a58 <fault_test_by_div0+0x38>)
    1a28:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
    1a2a:	68fb      	ldr	r3, [r7, #12]
    1a2c:	681b      	ldr	r3, [r3, #0]
    1a2e:	f043 0210 	orr.w	r2, r3, #16
    1a32:	68fb      	ldr	r3, [r7, #12]
    1a34:	601a      	str	r2, [r3, #0]

x = 10;
    1a36:	230a      	movs	r3, #10
    1a38:	60bb      	str	r3, [r7, #8]
y = 0;
    1a3a:	2300      	movs	r3, #0
    1a3c:	607b      	str	r3, [r7, #4]
z = x / y;
    1a3e:	68ba      	ldr	r2, [r7, #8]
    1a40:	687b      	ldr	r3, [r7, #4]
    1a42:	fb92 f3f3 	sdiv	r3, r2, r3
    1a46:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
    1a48:	6839      	ldr	r1, [r7, #0]
    1a4a:	4804      	ldr	r0, [pc, #16]	; (1a5c <fault_test_by_div0+0x3c>)
    1a4c:	f7ff fbcb 	bl	11e6 <printf_>
}
    1a50:	bf00      	nop
    1a52:	3710      	adds	r7, #16
    1a54:	46bd      	mov	sp, r7
    1a56:	bd80      	pop	{r7, pc}
    1a58:	e000ed14 	.word	0xe000ed14
    1a5c:	000026a0 	.word	0x000026a0

00001a60 <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    1a60:	b580      	push	{r7, lr}
    1a62:	b084      	sub	sp, #16
    1a64:	af00      	add	r7, sp, #0
    1a66:	60f8      	str	r0, [r7, #12]
    1a68:	60b9      	str	r1, [r7, #8]
    1a6a:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
    1a6c:	687b      	ldr	r3, [r7, #4]
    1a6e:	68fa      	ldr	r2, [r7, #12]
    1a70:	429a      	cmp	r2, r3
    1a72:	d902      	bls.n	1a7a <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
    1a74:	68fb      	ldr	r3, [r7, #12]
    1a76:	607b      	str	r3, [r7, #4]
    1a78:	e009      	b.n	1a8e <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
    1a7a:	68fa      	ldr	r2, [r7, #12]
    1a7c:	68bb      	ldr	r3, [r7, #8]
    1a7e:	441a      	add	r2, r3
    1a80:	687b      	ldr	r3, [r7, #4]
    1a82:	429a      	cmp	r2, r3
    1a84:	d203      	bcs.n	1a8e <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    1a86:	68fa      	ldr	r2, [r7, #12]
    1a88:	68bb      	ldr	r3, [r7, #8]
    1a8a:	4413      	add	r3, r2
    1a8c:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
    1a8e:	490e      	ldr	r1, [pc, #56]	; (1ac8 <dump_stack+0x68>)
    1a90:	480e      	ldr	r0, [pc, #56]	; (1acc <dump_stack+0x6c>)
    1a92:	f7ff fba8 	bl	11e6 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1a96:	e009      	b.n	1aac <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    1a98:	6879      	ldr	r1, [r7, #4]
    1a9a:	687b      	ldr	r3, [r7, #4]
    1a9c:	681b      	ldr	r3, [r3, #0]
    1a9e:	461a      	mov	r2, r3
    1aa0:	480b      	ldr	r0, [pc, #44]	; (1ad0 <dump_stack+0x70>)
    1aa2:	f7ff fba0 	bl	11e6 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1aa6:	687b      	ldr	r3, [r7, #4]
    1aa8:	3304      	adds	r3, #4
    1aaa:	607b      	str	r3, [r7, #4]
    1aac:	68fa      	ldr	r2, [r7, #12]
    1aae:	68bb      	ldr	r3, [r7, #8]
    1ab0:	441a      	add	r2, r3
    1ab2:	687b      	ldr	r3, [r7, #4]
    1ab4:	429a      	cmp	r2, r3
    1ab6:	d8ef      	bhi.n	1a98 <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
    1ab8:	4903      	ldr	r1, [pc, #12]	; (1ac8 <dump_stack+0x68>)
    1aba:	4804      	ldr	r0, [pc, #16]	; (1acc <dump_stack+0x6c>)
    1abc:	f7ff fb93 	bl	11e6 <printf_>
}
    1ac0:	bf00      	nop
    1ac2:	3710      	adds	r7, #16
    1ac4:	46bd      	mov	sp, r7
    1ac6:	bd80      	pop	{r7, pc}
    1ac8:	000031c0 	.word	0x000031c0
    1acc:	000026a8 	.word	0x000026a8
    1ad0:	000026d4 	.word	0x000026d4

00001ad4 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    1ad4:	b480      	push	{r7}
    1ad6:	b085      	sub	sp, #20
    1ad8:	af00      	add	r7, sp, #0
    1ada:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
    1adc:	687b      	ldr	r3, [r7, #4]
    1ade:	881b      	ldrh	r3, [r3, #0]
    1ae0:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
    1ae2:	687b      	ldr	r3, [r7, #4]
    1ae4:	3302      	adds	r3, #2
    1ae6:	881b      	ldrh	r3, [r3, #0]
    1ae8:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
    1aea:	89bb      	ldrh	r3, [r7, #12]
    1aec:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1af0:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
    1af4:	d107      	bne.n	1b06 <disassembly_ins_is_bl_blx+0x32>
    1af6:	89fb      	ldrh	r3, [r7, #14]
    1af8:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1afc:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
    1b00:	d101      	bne.n	1b06 <disassembly_ins_is_bl_blx+0x32>
        return true;
    1b02:	2301      	movs	r3, #1
    1b04:	e008      	b.n	1b18 <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
    1b06:	89bb      	ldrh	r3, [r7, #12]
    1b08:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1b0c:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1b10:	d101      	bne.n	1b16 <disassembly_ins_is_bl_blx+0x42>
        return true;
    1b12:	2301      	movs	r3, #1
    1b14:	e000      	b.n	1b18 <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
    1b16:	2300      	movs	r3, #0
    }
}
    1b18:	4618      	mov	r0, r3
    1b1a:	3714      	adds	r7, #20
    1b1c:	46bd      	mov	sp, r7
    1b1e:	bc80      	pop	{r7}
    1b20:	4770      	bx	lr

00001b22 <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    1b22:	b580      	push	{r7, lr}
    1b24:	b08a      	sub	sp, #40	; 0x28
    1b26:	af02      	add	r7, sp, #8
    1b28:	60f8      	str	r0, [r7, #12]
    1b2a:	60b9      	str	r1, [r7, #8]
    1b2c:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
    1b2e:	2300      	movs	r3, #0
    1b30:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
    1b32:	2300      	movs	r3, #0
    1b34:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
    1b36:	687a      	ldr	r2, [r7, #4]
    1b38:	4935      	ldr	r1, [pc, #212]	; (1c10 <backtrace_call_stack+0xee>)
    1b3a:	4836      	ldr	r0, [pc, #216]	; (1c14 <backtrace_call_stack+0xf2>)
    1b3c:	f7ff fb53 	bl	11e6 <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1b40:	e058      	b.n	1bf4 <backtrace_call_stack+0xd2>
uint32_t i = 0;
    1b42:	2300      	movs	r3, #0
    1b44:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
    1b46:	687b      	ldr	r3, [r7, #4]
    1b48:	4a33      	ldr	r2, [pc, #204]	; (1c18 <backtrace_call_stack+0xf6>)
    1b4a:	4293      	cmp	r3, r2
    1b4c:	d103      	bne.n	1b56 <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
    1b4e:	6879      	ldr	r1, [r7, #4]
    1b50:	4832      	ldr	r0, [pc, #200]	; (1c1c <backtrace_call_stack+0xfa>)
    1b52:	f7ff fb48 	bl	11e6 <printf_>
    }
    lr = *((uint32_t *) sp);
    1b56:	687b      	ldr	r3, [r7, #4]
    1b58:	681b      	ldr	r3, [r3, #0]
    1b5a:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
    1b5c:	693b      	ldr	r3, [r7, #16]
    1b5e:	f003 0301 	and.w	r3, r3, #1
    1b62:	2b00      	cmp	r3, #0
    1b64:	d040      	beq.n	1be8 <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
    1b66:	693b      	ldr	r3, [r7, #16]
    1b68:	3b01      	subs	r3, #1
    1b6a:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
    1b6c:	4b2c      	ldr	r3, [pc, #176]	; (1c20 <backtrace_call_stack+0xfe>)
    1b6e:	681b      	ldr	r3, [r3, #0]
    1b70:	693a      	ldr	r2, [r7, #16]
    1b72:	429a      	cmp	r2, r3
    1b74:	d33b      	bcc.n	1bee <backtrace_call_stack+0xcc>
    1b76:	4b2a      	ldr	r3, [pc, #168]	; (1c20 <backtrace_call_stack+0xfe>)
    1b78:	681a      	ldr	r2, [r3, #0]
    1b7a:	4b2a      	ldr	r3, [pc, #168]	; (1c24 <backtrace_call_stack+0x102>)
    1b7c:	681b      	ldr	r3, [r3, #0]
    1b7e:	4413      	add	r3, r2
    1b80:	693a      	ldr	r2, [r7, #16]
    1b82:	429a      	cmp	r2, r3
    1b84:	d833      	bhi.n	1bee <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
    1b86:	693b      	ldr	r3, [r7, #16]
    1b88:	3b04      	subs	r3, #4
    1b8a:	4618      	mov	r0, r3
    1b8c:	f7ff ffa2 	bl	1ad4 <disassembly_ins_is_bl_blx>
    1b90:	4603      	mov	r3, r0
    1b92:	2b00      	cmp	r3, #0
    1b94:	d02b      	beq.n	1bee <backtrace_call_stack+0xcc>
    1b96:	69fa      	ldr	r2, [r7, #28]
    1b98:	68bb      	ldr	r3, [r7, #8]
    1b9a:	429a      	cmp	r2, r3
    1b9c:	d227      	bcs.n	1bee <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
    1b9e:	69fb      	ldr	r3, [r7, #28]
    1ba0:	2b02      	cmp	r3, #2
    1ba2:	d108      	bne.n	1bb6 <backtrace_call_stack+0x94>
    1ba4:	7efb      	ldrb	r3, [r7, #27]
    1ba6:	2b00      	cmp	r3, #0
    1ba8:	d005      	beq.n	1bb6 <backtrace_call_stack+0x94>
    1baa:	68fb      	ldr	r3, [r7, #12]
    1bac:	3304      	adds	r3, #4
    1bae:	681b      	ldr	r3, [r3, #0]
    1bb0:	693a      	ldr	r2, [r7, #16]
    1bb2:	429a      	cmp	r2, r3
    1bb4:	d01a      	beq.n	1bec <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1bb6:	693b      	ldr	r3, [r7, #16]
    1bb8:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1bba:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1bbc:	693b      	ldr	r3, [r7, #16]
    1bbe:	3b04      	subs	r3, #4
    1bc0:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1bc2:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1bc4:	693b      	ldr	r3, [r7, #16]
    1bc6:	3b02      	subs	r3, #2
    1bc8:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1bca:	9300      	str	r3, [sp, #0]
    1bcc:	460b      	mov	r3, r1
    1bce:	6939      	ldr	r1, [r7, #16]
    1bd0:	4815      	ldr	r0, [pc, #84]	; (1c28 <backtrace_call_stack+0x106>)
    1bd2:	f7ff fb08 	bl	11e6 <printf_>
                buffer[depth++] = lr;
    1bd6:	69fb      	ldr	r3, [r7, #28]
    1bd8:	1c5a      	adds	r2, r3, #1
    1bda:	61fa      	str	r2, [r7, #28]
    1bdc:	009b      	lsls	r3, r3, #2
    1bde:	68fa      	ldr	r2, [r7, #12]
    1be0:	4413      	add	r3, r2
    1be2:	693a      	ldr	r2, [r7, #16]
    1be4:	601a      	str	r2, [r3, #0]
    1be6:	e002      	b.n	1bee <backtrace_call_stack+0xcc>
        continue;
    1be8:	bf00      	nop
    1bea:	e000      	b.n	1bee <backtrace_call_stack+0xcc>
            continue;
    1bec:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1bee:	687b      	ldr	r3, [r7, #4]
    1bf0:	3304      	adds	r3, #4
    1bf2:	607b      	str	r3, [r7, #4]
    1bf4:	4b0d      	ldr	r3, [pc, #52]	; (1c2c <backtrace_call_stack+0x10a>)
    1bf6:	681a      	ldr	r2, [r3, #0]
    1bf8:	4b0d      	ldr	r3, [pc, #52]	; (1c30 <backtrace_call_stack+0x10e>)
    1bfa:	681b      	ldr	r3, [r3, #0]
    1bfc:	4413      	add	r3, r2
    1bfe:	687a      	ldr	r2, [r7, #4]
    1c00:	429a      	cmp	r2, r3
    1c02:	d39e      	bcc.n	1b42 <backtrace_call_stack+0x20>
    }
}

return depth;
    1c04:	69fb      	ldr	r3, [r7, #28]
}
    1c06:	4618      	mov	r0, r3
    1c08:	3720      	adds	r7, #32
    1c0a:	46bd      	mov	sp, r7
    1c0c:	bd80      	pop	{r7, pc}
    1c0e:	bf00      	nop
    1c10:	000031cc 	.word	0x000031cc
    1c14:	00002fe8 	.word	0x00002fe8
    1c18:	08080541 	.word	0x08080541
    1c1c:	00002ff8 	.word	0x00002ff8
    1c20:	2000002c 	.word	0x2000002c
    1c24:	20000034 	.word	0x20000034
    1c28:	00003004 	.word	0x00003004
    1c2c:	20000038 	.word	0x20000038
    1c30:	20000040 	.word	0x20000040

00001c34 <print_call_stack>:

void print_call_stack(uint32_t sp) {
    1c34:	b580      	push	{r7, lr}
    1c36:	b096      	sub	sp, #88	; 0x58
    1c38:	af02      	add	r7, sp, #8
    1c3a:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
    1c3c:	2300      	movs	r3, #0
    1c3e:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
    1c40:	f107 0308 	add.w	r3, r7, #8
    1c44:	2240      	movs	r2, #64	; 0x40
    1c46:	2100      	movs	r1, #0
    1c48:	4618      	mov	r0, r3
    1c4a:	f7ff fdc9 	bl	17e0 <memset>
    printf("[%s] ====================================\n", __func__);
    1c4e:	4928      	ldr	r1, [pc, #160]	; (1cf0 <print_call_stack+0xbc>)
    1c50:	4828      	ldr	r0, [pc, #160]	; (1cf4 <print_call_stack+0xc0>)
    1c52:	f7ff fac8 	bl	11e6 <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
    1c56:	f107 0308 	add.w	r3, r7, #8
    1c5a:	687a      	ldr	r2, [r7, #4]
    1c5c:	2110      	movs	r1, #16
    1c5e:	4618      	mov	r0, r3
    1c60:	f7ff ff5f 	bl	1b22 <backtrace_call_stack>
    1c64:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
    1c66:	4922      	ldr	r1, [pc, #136]	; (1cf0 <print_call_stack+0xbc>)
    1c68:	4822      	ldr	r0, [pc, #136]	; (1cf4 <print_call_stack+0xc0>)
    1c6a:	f7ff fabc 	bl	11e6 <printf_>

    for (i = 0; i < cur_depth; i++) {
    1c6e:	2300      	movs	r3, #0
    1c70:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c72:	e01b      	b.n	1cac <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
    1c74:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c76:	4613      	mov	r3, r2
    1c78:	00db      	lsls	r3, r3, #3
    1c7a:	4413      	add	r3, r2
    1c7c:	4a1e      	ldr	r2, [pc, #120]	; (1cf8 <print_call_stack+0xc4>)
    1c7e:	1898      	adds	r0, r3, r2
    1c80:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c82:	009b      	lsls	r3, r3, #2
    1c84:	f107 0250 	add.w	r2, r7, #80	; 0x50
    1c88:	4413      	add	r3, r2
    1c8a:	f853 3c48 	ldr.w	r3, [r3, #-72]
    1c8e:	461a      	mov	r2, r3
    1c90:	491a      	ldr	r1, [pc, #104]	; (1cfc <print_call_stack+0xc8>)
    1c92:	f7ff fac3 	bl	121c <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
    1c96:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c98:	4613      	mov	r3, r2
    1c9a:	00db      	lsls	r3, r3, #3
    1c9c:	4413      	add	r3, r2
    1c9e:	3308      	adds	r3, #8
    1ca0:	4a15      	ldr	r2, [pc, #84]	; (1cf8 <print_call_stack+0xc4>)
    1ca2:	2120      	movs	r1, #32
    1ca4:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
    1ca6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1ca8:	3301      	adds	r3, #1
    1caa:	64fb      	str	r3, [r7, #76]	; 0x4c
    1cac:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1cae:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1cb0:	429a      	cmp	r2, r3
    1cb2:	d3df      	bcc.n	1c74 <print_call_stack+0x40>
    }

    if (cur_depth) {
    1cb4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1cb6:	2b00      	cmp	r3, #0
    1cb8:	d00e      	beq.n	1cd8 <print_call_stack+0xa4>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
    1cba:	4811      	ldr	r0, [pc, #68]	; (1d00 <print_call_stack+0xcc>)
    1cbc:	6cba      	ldr	r2, [r7, #72]	; 0x48
    1cbe:	4613      	mov	r3, r2
    1cc0:	00db      	lsls	r3, r3, #3
    1cc2:	4413      	add	r3, r2
    1cc4:	4a0c      	ldr	r2, [pc, #48]	; (1cf8 <print_call_stack+0xc4>)
    1cc6:	9200      	str	r2, [sp, #0]
    1cc8:	4a0e      	ldr	r2, [pc, #56]	; (1d04 <print_call_stack+0xd0>)
    1cca:	490f      	ldr	r1, [pc, #60]	; (1d08 <print_call_stack+0xd4>)
    1ccc:	f7ff fa8b 	bl	11e6 <printf_>
    1cd0:	480e      	ldr	r0, [pc, #56]	; (1d0c <print_call_stack+0xd8>)
    1cd2:	f7ff fa88 	bl	11e6 <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
    1cd6:	e006      	b.n	1ce6 <print_call_stack+0xb2>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    1cd8:	4b0d      	ldr	r3, [pc, #52]	; (1d10 <print_call_stack+0xdc>)
    1cda:	4618      	mov	r0, r3
    1cdc:	f7ff fa83 	bl	11e6 <printf_>
    1ce0:	480a      	ldr	r0, [pc, #40]	; (1d0c <print_call_stack+0xd8>)
    1ce2:	f7ff fa80 	bl	11e6 <printf_>
}
    1ce6:	bf00      	nop
    1ce8:	3750      	adds	r7, #80	; 0x50
    1cea:	46bd      	mov	sp, r7
    1cec:	bd80      	pop	{r7, pc}
    1cee:	bf00      	nop
    1cf0:	000031e4 	.word	0x000031e4
    1cf4:	000026a8 	.word	0x000026a8
    1cf8:	20000050 	.word	0x20000050
    1cfc:	00003048 	.word	0x00003048
    1d00:	00002884 	.word	0x00002884
    1d04:	00003050 	.word	0x00003050
    1d08:	00003058 	.word	0x00003058
    1d0c:	00003068 	.word	0x00003068
    1d10:	000028c4 	.word	0x000028c4

00001d14 <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
    1d14:	b598      	push	{r3, r4, r7, lr}
    1d16:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d18:	490d      	ldr	r1, [pc, #52]	; (1d50 <backtrace_level_3+0x3c>)
    1d1a:	480e      	ldr	r0, [pc, #56]	; (1d54 <backtrace_level_3+0x40>)
    1d1c:	f7ff fa63 	bl	11e6 <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
    1d20:	4b0d      	ldr	r3, [pc, #52]	; (1d58 <backtrace_level_3+0x44>)
    1d22:	681b      	ldr	r3, [r3, #0]
    1d24:	4a0d      	ldr	r2, [pc, #52]	; (1d5c <backtrace_level_3+0x48>)
    1d26:	6811      	ldr	r1, [r2, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d28:	466a      	mov	r2, sp
    1d2a:	4614      	mov	r4, r2
    return(result);
    1d2c:	4622      	mov	r2, r4
    1d2e:	4618      	mov	r0, r3
    1d30:	f7ff fe96 	bl	1a60 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d34:	466b      	mov	r3, sp
    1d36:	461c      	mov	r4, r3
    return(result);
    1d38:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
    1d3a:	4618      	mov	r0, r3
    1d3c:	f7ff ff7a 	bl	1c34 <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d40:	466b      	mov	r3, sp
    1d42:	461c      	mov	r4, r3
    return(result);
    1d44:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
    1d46:	4618      	mov	r0, r3
    1d48:	f000 f998 	bl	207c <BackTraceSub>
}
    1d4c:	bf00      	nop
    1d4e:	bd98      	pop	{r3, r4, r7, pc}
    1d50:	000031f8 	.word	0x000031f8
    1d54:	0000306c 	.word	0x0000306c
    1d58:	20000038 	.word	0x20000038
    1d5c:	20000040 	.word	0x20000040

00001d60 <backtrace_level_2>:
void backtrace_level_2(void)
{
    1d60:	b580      	push	{r7, lr}
    1d62:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d64:	4903      	ldr	r1, [pc, #12]	; (1d74 <backtrace_level_2+0x14>)
    1d66:	4804      	ldr	r0, [pc, #16]	; (1d78 <backtrace_level_2+0x18>)
    1d68:	f7ff fa3d 	bl	11e6 <printf_>
    backtrace_level_3();
    1d6c:	f7ff ffd2 	bl	1d14 <backtrace_level_3>
}
    1d70:	bf00      	nop
    1d72:	bd80      	pop	{r7, pc}
    1d74:	0000320c 	.word	0x0000320c
    1d78:	0000306c 	.word	0x0000306c

00001d7c <backtrace_level_1>:
void backtrace_level_1(void)
{
    1d7c:	b580      	push	{r7, lr}
    1d7e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d80:	4903      	ldr	r1, [pc, #12]	; (1d90 <backtrace_level_1+0x14>)
    1d82:	4804      	ldr	r0, [pc, #16]	; (1d94 <backtrace_level_1+0x18>)
    1d84:	f7ff fa2f 	bl	11e6 <printf_>
    backtrace_level_2();
    1d88:	f7ff ffea 	bl	1d60 <backtrace_level_2>
}
    1d8c:	bf00      	nop
    1d8e:	bd80      	pop	{r7, pc}
    1d90:	00003220 	.word	0x00003220
    1d94:	0000306c 	.word	0x0000306c

00001d98 <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
    1d98:	b590      	push	{r4, r7, lr}
    1d9a:	b089      	sub	sp, #36	; 0x24
    1d9c:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
    1d9e:	23aa      	movs	r3, #170	; 0xaa
    1da0:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
    1da2:	2355      	movs	r3, #85	; 0x55
    1da4:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
    1da6:	2377      	movs	r3, #119	; 0x77
    1da8:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
    1daa:	4a47      	ldr	r2, [pc, #284]	; (1ec8 <backtrace_test+0x130>)
    1dac:	4b47      	ldr	r3, [pc, #284]	; (1ecc <backtrace_test+0x134>)
    1dae:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
    1db0:	4a47      	ldr	r2, [pc, #284]	; (1ed0 <backtrace_test+0x138>)
    1db2:	4b48      	ldr	r3, [pc, #288]	; (1ed4 <backtrace_test+0x13c>)
    1db4:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
    1db6:	4b47      	ldr	r3, [pc, #284]	; (1ed4 <backtrace_test+0x13c>)
    1db8:	681a      	ldr	r2, [r3, #0]
    1dba:	4b44      	ldr	r3, [pc, #272]	; (1ecc <backtrace_test+0x134>)
    1dbc:	681b      	ldr	r3, [r3, #0]
    1dbe:	1ad3      	subs	r3, r2, r3
    1dc0:	4a45      	ldr	r2, [pc, #276]	; (1ed8 <backtrace_test+0x140>)
    1dc2:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
    1dc4:	4a45      	ldr	r2, [pc, #276]	; (1edc <backtrace_test+0x144>)
    1dc6:	4b46      	ldr	r3, [pc, #280]	; (1ee0 <backtrace_test+0x148>)
    1dc8:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
    1dca:	4a46      	ldr	r2, [pc, #280]	; (1ee4 <backtrace_test+0x14c>)
    1dcc:	4b46      	ldr	r3, [pc, #280]	; (1ee8 <backtrace_test+0x150>)
    1dce:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
    1dd0:	4b45      	ldr	r3, [pc, #276]	; (1ee8 <backtrace_test+0x150>)
    1dd2:	681a      	ldr	r2, [r3, #0]
    1dd4:	4b42      	ldr	r3, [pc, #264]	; (1ee0 <backtrace_test+0x148>)
    1dd6:	681b      	ldr	r3, [r3, #0]
    1dd8:	1ad3      	subs	r3, r2, r3
    1dda:	4a44      	ldr	r2, [pc, #272]	; (1eec <backtrace_test+0x154>)
    1ddc:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
    1dde:	4a44      	ldr	r2, [pc, #272]	; (1ef0 <backtrace_test+0x158>)
    1de0:	4b44      	ldr	r3, [pc, #272]	; (1ef4 <backtrace_test+0x15c>)
    1de2:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
    1de4:	4a44      	ldr	r2, [pc, #272]	; (1ef8 <backtrace_test+0x160>)
    1de6:	4b45      	ldr	r3, [pc, #276]	; (1efc <backtrace_test+0x164>)
    1de8:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
    1dea:	4b44      	ldr	r3, [pc, #272]	; (1efc <backtrace_test+0x164>)
    1dec:	681a      	ldr	r2, [r3, #0]
    1dee:	4b41      	ldr	r3, [pc, #260]	; (1ef4 <backtrace_test+0x15c>)
    1df0:	681b      	ldr	r3, [r3, #0]
    1df2:	1ad3      	subs	r3, r2, r3
    1df4:	4a42      	ldr	r2, [pc, #264]	; (1f00 <backtrace_test+0x168>)
    1df6:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
    1df8:	4b34      	ldr	r3, [pc, #208]	; (1ecc <backtrace_test+0x134>)
    1dfa:	6819      	ldr	r1, [r3, #0]
    1dfc:	4b35      	ldr	r3, [pc, #212]	; (1ed4 <backtrace_test+0x13c>)
    1dfe:	6818      	ldr	r0, [r3, #0]
    1e00:	4b35      	ldr	r3, [pc, #212]	; (1ed8 <backtrace_test+0x140>)
    1e02:	681b      	ldr	r3, [r3, #0]
    1e04:	4a34      	ldr	r2, [pc, #208]	; (1ed8 <backtrace_test+0x140>)
    1e06:	6812      	ldr	r2, [r2, #0]
    1e08:	9201      	str	r2, [sp, #4]
    1e0a:	9300      	str	r3, [sp, #0]
    1e0c:	4603      	mov	r3, r0
    1e0e:	460a      	mov	r2, r1
    1e10:	493c      	ldr	r1, [pc, #240]	; (1f04 <backtrace_test+0x16c>)
    1e12:	483d      	ldr	r0, [pc, #244]	; (1f08 <backtrace_test+0x170>)
    1e14:	f7ff f9e7 	bl	11e6 <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
    1e18:	4b31      	ldr	r3, [pc, #196]	; (1ee0 <backtrace_test+0x148>)
    1e1a:	6819      	ldr	r1, [r3, #0]
    1e1c:	4b32      	ldr	r3, [pc, #200]	; (1ee8 <backtrace_test+0x150>)
    1e1e:	6818      	ldr	r0, [r3, #0]
    1e20:	4b32      	ldr	r3, [pc, #200]	; (1eec <backtrace_test+0x154>)
    1e22:	681b      	ldr	r3, [r3, #0]
    1e24:	4a31      	ldr	r2, [pc, #196]	; (1eec <backtrace_test+0x154>)
    1e26:	6812      	ldr	r2, [r2, #0]
    1e28:	9201      	str	r2, [sp, #4]
    1e2a:	9300      	str	r3, [sp, #0]
    1e2c:	4603      	mov	r3, r0
    1e2e:	460a      	mov	r2, r1
    1e30:	4934      	ldr	r1, [pc, #208]	; (1f04 <backtrace_test+0x16c>)
    1e32:	4836      	ldr	r0, [pc, #216]	; (1f0c <backtrace_test+0x174>)
    1e34:	f7ff f9d7 	bl	11e6 <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
    1e38:	4b2e      	ldr	r3, [pc, #184]	; (1ef4 <backtrace_test+0x15c>)
    1e3a:	6819      	ldr	r1, [r3, #0]
    1e3c:	4b2f      	ldr	r3, [pc, #188]	; (1efc <backtrace_test+0x164>)
    1e3e:	6818      	ldr	r0, [r3, #0]
    1e40:	4b2f      	ldr	r3, [pc, #188]	; (1f00 <backtrace_test+0x168>)
    1e42:	681b      	ldr	r3, [r3, #0]
    1e44:	4a2e      	ldr	r2, [pc, #184]	; (1f00 <backtrace_test+0x168>)
    1e46:	6812      	ldr	r2, [r2, #0]
    1e48:	9201      	str	r2, [sp, #4]
    1e4a:	9300      	str	r3, [sp, #0]
    1e4c:	4603      	mov	r3, r0
    1e4e:	460a      	mov	r2, r1
    1e50:	492c      	ldr	r1, [pc, #176]	; (1f04 <backtrace_test+0x16c>)
    1e52:	482f      	ldr	r0, [pc, #188]	; (1f10 <backtrace_test+0x178>)
    1e54:	f7ff f9c7 	bl	11e6 <printf_>
  __ASM volatile ("cpsie i" : : : "memory");
    1e58:	b662      	cpsie	i
}
    1e5a:	bf00      	nop
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1e5c:	466b      	mov	r3, sp
    1e5e:	461c      	mov	r4, r3
    return(result);
    1e60:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
    1e62:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
    1e64:	6979      	ldr	r1, [r7, #20]
    1e66:	482b      	ldr	r0, [pc, #172]	; (1f14 <backtrace_test+0x17c>)
    1e68:	f7ff f9bd 	bl	11e6 <printf_>
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
    1e6c:	467b      	mov	r3, pc
    1e6e:	461c      	mov	r4, r3
    return(result);
    1e70:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
    1e72:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
    1e74:	6879      	ldr	r1, [r7, #4]
    1e76:	4828      	ldr	r0, [pc, #160]	; (1f18 <backtrace_test+0x180>)
    1e78:	f7ff f9b5 	bl	11e6 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1e7c:	e01b      	b.n	1eb6 <backtrace_test+0x11e>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
    1e7e:	697b      	ldr	r3, [r7, #20]
    1e80:	681b      	ldr	r3, [r3, #0]
    1e82:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
    1e84:	6839      	ldr	r1, [r7, #0]
    1e86:	4825      	ldr	r0, [pc, #148]	; (1f1c <backtrace_test+0x184>)
    1e88:	f7ff f9ad 	bl	11e6 <printf_>
        if ((addr >= (uint32_t)&_stext) &&
    1e8c:	4a0e      	ldr	r2, [pc, #56]	; (1ec8 <backtrace_test+0x130>)
    1e8e:	683b      	ldr	r3, [r7, #0]
    1e90:	4293      	cmp	r3, r2
    1e92:	d30d      	bcc.n	1eb0 <backtrace_test+0x118>
        (sp <= (uint32_t)&_etext) &&
    1e94:	4a0e      	ldr	r2, [pc, #56]	; (1ed0 <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
    1e96:	697b      	ldr	r3, [r7, #20]
    1e98:	4293      	cmp	r3, r2
    1e9a:	d809      	bhi.n	1eb0 <backtrace_test+0x118>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
    1e9c:	683b      	ldr	r3, [r7, #0]
    1e9e:	3b01      	subs	r3, #1
    1ea0:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
    1ea4:	2b00      	cmp	r3, #0
    1ea6:	d103      	bne.n	1eb0 <backtrace_test+0x118>

            printf("find ld 0x%08x\n", addr);
    1ea8:	6839      	ldr	r1, [r7, #0]
    1eaa:	481d      	ldr	r0, [pc, #116]	; (1f20 <backtrace_test+0x188>)
    1eac:	f7ff f99b 	bl	11e6 <printf_>
        }
        sp += 4;
    1eb0:	697b      	ldr	r3, [r7, #20]
    1eb2:	3304      	adds	r3, #4
    1eb4:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1eb6:	4a0b      	ldr	r2, [pc, #44]	; (1ee4 <backtrace_test+0x14c>)
    1eb8:	697b      	ldr	r3, [r7, #20]
    1eba:	4293      	cmp	r3, r2
    1ebc:	d3df      	bcc.n	1e7e <backtrace_test+0xe6>
    }
    backtrace_level_1();
    1ebe:	f7ff ff5d 	bl	1d7c <backtrace_level_1>
    fault_test_by_div0();
    1ec2:	f7ff fdad 	bl	1a20 <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
    1ec6:	e7fe      	b.n	1ec6 <backtrace_test+0x12e>
    1ec8:	00000000 	.word	0x00000000
    1ecc:	2000002c 	.word	0x2000002c
    1ed0:	000033e8 	.word	0x000033e8
    1ed4:	20000030 	.word	0x20000030
    1ed8:	20000034 	.word	0x20000034
    1edc:	20000910 	.word	0x20000910
    1ee0:	20000038 	.word	0x20000038
    1ee4:	20001910 	.word	0x20001910
    1ee8:	2000003c 	.word	0x2000003c
    1eec:	20000040 	.word	0x20000040
    1ef0:	20001910 	.word	0x20001910
    1ef4:	20000044 	.word	0x20000044
    1ef8:	20005910 	.word	0x20005910
    1efc:	20000048 	.word	0x20000048
    1f00:	2000004c 	.word	0x2000004c
    1f04:	00003234 	.word	0x00003234
    1f08:	00003074 	.word	0x00003074
    1f0c:	000030bc 	.word	0x000030bc
    1f10:	00003104 	.word	0x00003104
    1f14:	0000314c 	.word	0x0000314c
    1f18:	00003158 	.word	0x00003158
    1f1c:	00003164 	.word	0x00003164
    1f20:	00003170 	.word	0x00003170

00001f24 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    1f24:	b480      	push	{r7}
    1f26:	b083      	sub	sp, #12
    1f28:	af00      	add	r7, sp, #0
    1f2a:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1f2c:	e00e      	b.n	1f4c <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
    1f2e:	687b      	ldr	r3, [r7, #4]
    1f30:	881b      	ldrh	r3, [r3, #0]
    1f32:	0a1b      	lsrs	r3, r3, #8
    1f34:	b29b      	uxth	r3, r3
    1f36:	2bb5      	cmp	r3, #181	; 0xb5
    1f38:	d00d      	beq.n	1f56 <LoopUntilEntry+0x32>
    1f3a:	687b      	ldr	r3, [r7, #4]
    1f3c:	881b      	ldrh	r3, [r3, #0]
    1f3e:	0a1b      	lsrs	r3, r3, #8
    1f40:	b29b      	uxth	r3, r3
    1f42:	2bb4      	cmp	r3, #180	; 0xb4
    1f44:	d007      	beq.n	1f56 <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
    1f46:	687b      	ldr	r3, [r7, #4]
    1f48:	3b02      	subs	r3, #2
    1f4a:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1f4c:	4b05      	ldr	r3, [pc, #20]	; (1f64 <LoopUntilEntry+0x40>)
    1f4e:	681b      	ldr	r3, [r3, #0]
    1f50:	687a      	ldr	r2, [r7, #4]
    1f52:	429a      	cmp	r2, r3
    1f54:	d8eb      	bhi.n	1f2e <LoopUntilEntry+0xa>
    }

    return addr;
    1f56:	687b      	ldr	r3, [r7, #4]
}
    1f58:	4618      	mov	r0, r3
    1f5a:	370c      	adds	r7, #12
    1f5c:	46bd      	mov	sp, r7
    1f5e:	bc80      	pop	{r7}
    1f60:	4770      	bx	lr
    1f62:	bf00      	nop
    1f64:	2000002c 	.word	0x2000002c

00001f68 <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    1f68:	b480      	push	{r7}
    1f6a:	b087      	sub	sp, #28
    1f6c:	af00      	add	r7, sp, #0
    1f6e:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1f70:	2300      	movs	r3, #0
    1f72:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
    1f74:	687b      	ldr	r3, [r7, #4]
    1f76:	881b      	ldrh	r3, [r3, #0]
    1f78:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1f7c:	2b00      	cmp	r3, #0
    1f7e:	d00b      	beq.n	1f98 <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f80:	687b      	ldr	r3, [r7, #4]
    1f82:	881b      	ldrh	r3, [r3, #0]
    1f84:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f88:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f8a:	687b      	ldr	r3, [r7, #4]
    1f8c:	3302      	adds	r3, #2
    1f8e:	881b      	ldrh	r3, [r3, #0]
    1f90:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f94:	613b      	str	r3, [r7, #16]
    1f96:	e00a      	b.n	1fae <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f98:	687b      	ldr	r3, [r7, #4]
    1f9a:	881b      	ldrh	r3, [r3, #0]
    1f9c:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1fa0:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1fa2:	687b      	ldr	r3, [r7, #4]
    1fa4:	3302      	adds	r3, #2
    1fa6:	881b      	ldrh	r3, [r3, #0]
    1fa8:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1fac:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    1fae:	693b      	ldr	r3, [r7, #16]
    1fb0:	031a      	lsls	r2, r3, #12
    1fb2:	68fb      	ldr	r3, [r7, #12]
    1fb4:	005b      	lsls	r3, r3, #1
    1fb6:	4413      	add	r3, r2
    1fb8:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
    1fba:	68bb      	ldr	r3, [r7, #8]
    1fbc:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1fc0:	2b00      	cmp	r3, #0
    1fc2:	d008      	beq.n	1fd6 <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    1fc4:	68bb      	ldr	r3, [r7, #8]
    1fc6:	425b      	negs	r3, r3
    1fc8:	f3c3 0316 	ubfx	r3, r3, #0, #23
    1fcc:	687a      	ldr	r2, [r7, #4]
    1fce:	1ad3      	subs	r3, r2, r3
    1fd0:	3304      	adds	r3, #4
    1fd2:	617b      	str	r3, [r7, #20]
    1fd4:	e004      	b.n	1fe0 <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
    1fd6:	687a      	ldr	r2, [r7, #4]
    1fd8:	68bb      	ldr	r3, [r7, #8]
    1fda:	4413      	add	r3, r2
    1fdc:	3304      	adds	r3, #4
    1fde:	617b      	str	r3, [r7, #20]
    }

    return target;
    1fe0:	697b      	ldr	r3, [r7, #20]
}
    1fe2:	4618      	mov	r0, r3
    1fe4:	371c      	adds	r7, #28
    1fe6:	46bd      	mov	sp, r7
    1fe8:	bc80      	pop	{r7}
    1fea:	4770      	bx	lr

00001fec <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    1fec:	b580      	push	{r7, lr}
    1fee:	b084      	sub	sp, #16
    1ff0:	af00      	add	r7, sp, #0
    1ff2:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1ff4:	2300      	movs	r3, #0
    1ff6:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
    1ff8:	687b      	ldr	r3, [r7, #4]
    1ffa:	3b02      	subs	r3, #2
    1ffc:	881b      	ldrh	r3, [r3, #0]
    1ffe:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    2002:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    2006:	d11a      	bne.n	203e <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
    2008:	4b1b      	ldr	r3, [pc, #108]	; (2078 <CalculateTargetAddress+0x8c>)
    200a:	681b      	ldr	r3, [r3, #0]
    200c:	2b00      	cmp	r3, #0
    200e:	d00b      	beq.n	2028 <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
    2010:	4b19      	ldr	r3, [pc, #100]	; (2078 <CalculateTargetAddress+0x8c>)
    2012:	681b      	ldr	r3, [r3, #0]
    2014:	4618      	mov	r0, r3
    2016:	f7ff ff85 	bl	1f24 <LoopUntilEntry>
    201a:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
    201c:	687b      	ldr	r3, [r7, #4]
    201e:	3b02      	subs	r3, #2
    2020:	4a15      	ldr	r2, [pc, #84]	; (2078 <CalculateTargetAddress+0x8c>)
    2022:	6013      	str	r3, [r2, #0]
            return target;
    2024:	68fb      	ldr	r3, [r7, #12]
    2026:	e023      	b.n	2070 <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
    2028:	687b      	ldr	r3, [r7, #4]
    202a:	3b02      	subs	r3, #2
    202c:	4a12      	ldr	r2, [pc, #72]	; (2078 <CalculateTargetAddress+0x8c>)
    202e:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
    2030:	4b11      	ldr	r3, [pc, #68]	; (2078 <CalculateTargetAddress+0x8c>)
    2032:	681b      	ldr	r3, [r3, #0]
    2034:	4618      	mov	r0, r3
    2036:	f7ff ff75 	bl	1f24 <LoopUntilEntry>
    203a:	4603      	mov	r3, r0
    203c:	e018      	b.n	2070 <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
    203e:	687b      	ldr	r3, [r7, #4]
    2040:	3b04      	subs	r3, #4
    2042:	681b      	ldr	r3, [r3, #0]
    2044:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
    2048:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
    204c:	d10f      	bne.n	206e <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
    204e:	687b      	ldr	r3, [r7, #4]
    2050:	3b04      	subs	r3, #4
    2052:	4a09      	ldr	r2, [pc, #36]	; (2078 <CalculateTargetAddress+0x8c>)
    2054:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
    2056:	4b08      	ldr	r3, [pc, #32]	; (2078 <CalculateTargetAddress+0x8c>)
    2058:	681b      	ldr	r3, [r3, #0]
    205a:	4618      	mov	r0, r3
    205c:	f7ff ff84 	bl	1f68 <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
    2060:	4b05      	ldr	r3, [pc, #20]	; (2078 <CalculateTargetAddress+0x8c>)
    2062:	681b      	ldr	r3, [r3, #0]
    2064:	4618      	mov	r0, r3
    2066:	f7ff ff7f 	bl	1f68 <CalculateBLTargetAddress>
    206a:	4603      	mov	r3, r0
    206c:	e000      	b.n	2070 <CalculateTargetAddress+0x84>
    }

    return 0;
    206e:	2300      	movs	r3, #0
}
    2070:	4618      	mov	r0, r3
    2072:	3710      	adds	r7, #16
    2074:	46bd      	mov	sp, r7
    2076:	bd80      	pop	{r7, pc}
    2078:	200000e4 	.word	0x200000e4

0000207c <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
    207c:	b580      	push	{r7, lr}
    207e:	b086      	sub	sp, #24
    2080:	af00      	add	r7, sp, #0
    2082:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
    2084:	687b      	ldr	r3, [r7, #4]
    2086:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
    2088:	2300      	movs	r3, #0
    208a:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    208c:	e03b      	b.n	2106 <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    208e:	697b      	ldr	r3, [r7, #20]
    2090:	681a      	ldr	r2, [r3, #0]
    2092:	4b23      	ldr	r3, [pc, #140]	; (2120 <BackTraceSub+0xa4>)
    2094:	681b      	ldr	r3, [r3, #0]
    2096:	429a      	cmp	r2, r3
    2098:	d32e      	bcc.n	20f8 <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    209a:	697b      	ldr	r3, [r7, #20]
    209c:	681a      	ldr	r2, [r3, #0]
    209e:	4b21      	ldr	r3, [pc, #132]	; (2124 <BackTraceSub+0xa8>)
    20a0:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    20a2:	429a      	cmp	r2, r3
    20a4:	d828      	bhi.n	20f8 <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
    20a6:	697b      	ldr	r3, [r7, #20]
    20a8:	681b      	ldr	r3, [r3, #0]
    20aa:	3b01      	subs	r3, #1
    20ac:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    20b0:	2b00      	cmp	r3, #0
    20b2:	d121      	bne.n	20f8 <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
    20b4:	697b      	ldr	r3, [r7, #20]
    20b6:	681b      	ldr	r3, [r3, #0]
    20b8:	3b01      	subs	r3, #1
    20ba:	4618      	mov	r0, r3
    20bc:	f7ff ff96 	bl	1fec <CalculateTargetAddress>
    20c0:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
    20c2:	68fb      	ldr	r3, [r7, #12]
    20c4:	2b00      	cmp	r3, #0
    20c6:	d004      	beq.n	20d2 <BackTraceSub+0x56>
    20c8:	4b17      	ldr	r3, [pc, #92]	; (2128 <BackTraceSub+0xac>)
    20ca:	681b      	ldr	r3, [r3, #0]
    20cc:	68fa      	ldr	r2, [r7, #12]
    20ce:	429a      	cmp	r2, r3
    20d0:	d103      	bne.n	20da <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
    20d2:	697b      	ldr	r3, [r7, #20]
    20d4:	3304      	adds	r3, #4
    20d6:	617b      	str	r3, [r7, #20]
                continue;
    20d8:	e015      	b.n	2106 <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
    20da:	4a13      	ldr	r2, [pc, #76]	; (2128 <BackTraceSub+0xac>)
    20dc:	68fb      	ldr	r3, [r7, #12]
    20de:	6013      	str	r3, [r2, #0]
            count++;
    20e0:	693b      	ldr	r3, [r7, #16]
    20e2:	3301      	adds	r3, #1
    20e4:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
    20e6:	697b      	ldr	r3, [r7, #20]
    20e8:	681b      	ldr	r3, [r3, #0]
    20ea:	1e5a      	subs	r2, r3, #1
    20ec:	4b0e      	ldr	r3, [pc, #56]	; (2128 <BackTraceSub+0xac>)
    20ee:	681b      	ldr	r3, [r3, #0]
    20f0:	6939      	ldr	r1, [r7, #16]
    20f2:	480e      	ldr	r0, [pc, #56]	; (212c <BackTraceSub+0xb0>)
    20f4:	f7ff f877 	bl	11e6 <printf_>
        }
        stackPointer += STACK_OFFSET;
    20f8:	697b      	ldr	r3, [r7, #20]
    20fa:	3304      	adds	r3, #4
    20fc:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
    20fe:	6979      	ldr	r1, [r7, #20]
    2100:	480b      	ldr	r0, [pc, #44]	; (2130 <BackTraceSub+0xb4>)
    2102:	f7ff f870 	bl	11e6 <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    2106:	4b0b      	ldr	r3, [pc, #44]	; (2134 <BackTraceSub+0xb8>)
    2108:	681b      	ldr	r3, [r3, #0]
    210a:	697a      	ldr	r2, [r7, #20]
    210c:	429a      	cmp	r2, r3
    210e:	d202      	bcs.n	2116 <BackTraceSub+0x9a>
    2110:	693b      	ldr	r3, [r7, #16]
    2112:	2b0e      	cmp	r3, #14
    2114:	d9bb      	bls.n	208e <BackTraceSub+0x12>
    }
}
    2116:	bf00      	nop
    2118:	3718      	adds	r7, #24
    211a:	46bd      	mov	sp, r7
    211c:	bd80      	pop	{r7, pc}
    211e:	bf00      	nop
    2120:	2000002c 	.word	0x2000002c
    2124:	20000030 	.word	0x20000030
    2128:	200000e8 	.word	0x200000e8
    212c:	00003180 	.word	0x00003180
    2130:	000031ac 	.word	0x000031ac
    2134:	2000003c 	.word	0x2000003c

00002138 <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sContextStateFrame *frame) {
    2138:	b4b0      	push	{r4, r5, r7}
    213a:	b085      	sub	sp, #20
    213c:	af00      	add	r7, sp, #0
    213e:	6078      	str	r0, [r7, #4]
    s_last_crash_into.frame = *frame;
    2140:	4b30      	ldr	r3, [pc, #192]	; (2204 <HardFault_Handler_C+0xcc>)
    2142:	687a      	ldr	r2, [r7, #4]
    2144:	1d1c      	adds	r4, r3, #4
    2146:	4615      	mov	r5, r2
    2148:	6828      	ldr	r0, [r5, #0]
    214a:	6869      	ldr	r1, [r5, #4]
    214c:	68aa      	ldr	r2, [r5, #8]
    214e:	68eb      	ldr	r3, [r5, #12]
    2150:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    2152:	6928      	ldr	r0, [r5, #16]
    2154:	6969      	ldr	r1, [r5, #20]
    2156:	69aa      	ldr	r2, [r5, #24]
    2158:	69eb      	ldr	r3, [r5, #28]
    215a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    s_last_crash_into.magic = CRASH_INFO_MAGIC;
    215c:	4b29      	ldr	r3, [pc, #164]	; (2204 <HardFault_Handler_C+0xcc>)
    215e:	4a2a      	ldr	r2, [pc, #168]	; (2208 <HardFault_Handler_C+0xd0>)
    2160:	601a      	str	r2, [r3, #0]
  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
    2162:	4b2a      	ldr	r3, [pc, #168]	; (220c <HardFault_Handler_C+0xd4>)
    2164:	681b      	ldr	r3, [r3, #0]
    2166:	f003 0301 	and.w	r3, r3, #1
    216a:	2b00      	cmp	r3, #0
    216c:	d000      	beq.n	2170 <HardFault_Handler_C+0x38>
    216e:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
    2170:	4b27      	ldr	r3, [pc, #156]	; (2210 <HardFault_Handler_C+0xd8>)
    2172:	60fb      	str	r3, [r7, #12]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
    2174:	4b27      	ldr	r3, [pc, #156]	; (2214 <HardFault_Handler_C+0xdc>)
    2176:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    2178:	68fb      	ldr	r3, [r7, #12]
    217a:	43db      	mvns	r3, r3
    217c:	4013      	ands	r3, r2
    217e:	2b00      	cmp	r3, #0
    2180:	bf14      	ite	ne
    2182:	2301      	movne	r3, #1
    2184:	2300      	moveq	r3, #0
    2186:	72fb      	strb	r3, [r7, #11]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
    2188:	687b      	ldr	r3, [r7, #4]
    218a:	69db      	ldr	r3, [r3, #28]
    218c:	b2db      	uxtb	r3, r3
    218e:	2b00      	cmp	r3, #0
    2190:	bf14      	ite	ne
    2192:	2301      	movne	r3, #1
    2194:	2300      	moveq	r3, #0
    2196:	72bb      	strb	r3, [r7, #10]

  if (faulted_from_exception || non_usage_fault_occurred) {
    2198:	7abb      	ldrb	r3, [r7, #10]
    219a:	2b00      	cmp	r3, #0
    219c:	d102      	bne.n	21a4 <HardFault_Handler_C+0x6c>
    219e:	7afb      	ldrb	r3, [r7, #11]
    21a0:	2b00      	cmp	r3, #0
    21a2:	d003      	beq.n	21ac <HardFault_Handler_C+0x74>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
    21a4:	4b1b      	ldr	r3, [pc, #108]	; (2214 <HardFault_Handler_C+0xdc>)
    21a6:	4a1c      	ldr	r2, [pc, #112]	; (2218 <HardFault_Handler_C+0xe0>)
    21a8:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
    21aa:	e7fe      	b.n	21aa <HardFault_Handler_C+0x72>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
    21ac:	4b19      	ldr	r3, [pc, #100]	; (2214 <HardFault_Handler_C+0xdc>)
    21ae:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    21b0:	4b18      	ldr	r3, [pc, #96]	; (2214 <HardFault_Handler_C+0xdc>)
    21b2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    21b4:	4917      	ldr	r1, [pc, #92]	; (2214 <HardFault_Handler_C+0xdc>)
    21b6:	4313      	orrs	r3, r2
    21b8:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
    21ba:	4a18      	ldr	r2, [pc, #96]	; (221c <HardFault_Handler_C+0xe4>)
    21bc:	687b      	ldr	r3, [r7, #4]
    21be:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
    21c0:	687b      	ldr	r3, [r7, #4]
    21c2:	2200      	movs	r2, #0
    21c4:	f062 0210 	orn	r2, r2, #16
    21c8:	751a      	strb	r2, [r3, #20]
    21ca:	2200      	movs	r2, #0
    21cc:	f062 0241 	orn	r2, r2, #65	; 0x41
    21d0:	755a      	strb	r2, [r3, #21]
    21d2:	2200      	movs	r2, #0
    21d4:	f062 0252 	orn	r2, r2, #82	; 0x52
    21d8:	759a      	strb	r2, [r3, #22]
    21da:	2200      	movs	r2, #0
    21dc:	f062 0221 	orn	r2, r2, #33	; 0x21
    21e0:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
    21e2:	687b      	ldr	r3, [r7, #4]
    21e4:	2200      	movs	r2, #0
    21e6:	771a      	strb	r2, [r3, #28]
    21e8:	2200      	movs	r2, #0
    21ea:	775a      	strb	r2, [r3, #29]
    21ec:	2200      	movs	r2, #0
    21ee:	779a      	strb	r2, [r3, #30]
    21f0:	2200      	movs	r2, #0
    21f2:	f042 0201 	orr.w	r2, r2, #1
    21f6:	77da      	strb	r2, [r3, #31]
}
    21f8:	bf00      	nop
    21fa:	3714      	adds	r7, #20
    21fc:	46bd      	mov	sp, r7
    21fe:	bcb0      	pop	{r4, r5, r7}
    2200:	4770      	bx	lr
    2202:	bf00      	nop
    2204:	20000000 	.word	0x20000000
    2208:	dead55aa 	.word	0xdead55aa
    220c:	e000edf0 	.word	0xe000edf0
    2210:	ffff0000 	.word	0xffff0000
    2214:	e000ed00 	.word	0xe000ed00
    2218:	05fa0004 	.word	0x05fa0004
    221c:	0000250b 	.word	0x0000250b

00002220 <prv_cinit>:
extern uint32_t _ebss;
// End address for stack
extern uint32_t _estack;

// Prevent inlining to avoid persisting any variables on stack
__attribute__((noinline)) static void prv_cinit(void) {
    2220:	b480      	push	{r7}
    2222:	b085      	sub	sp, #20
    2224:	af00      	add	r7, sp, #0
  // Initialize data and bss
  // Copy the data segment initializers from flash to SRAM
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    2226:	4b11      	ldr	r3, [pc, #68]	; (226c <prv_cinit+0x4c>)
    2228:	60fb      	str	r3, [r7, #12]
    222a:	4b11      	ldr	r3, [pc, #68]	; (2270 <prv_cinit+0x50>)
    222c:	60bb      	str	r3, [r7, #8]
    222e:	e007      	b.n	2240 <prv_cinit+0x20>
    *(dst++) = *(src++);
    2230:	68ba      	ldr	r2, [r7, #8]
    2232:	1d13      	adds	r3, r2, #4
    2234:	60bb      	str	r3, [r7, #8]
    2236:	68fb      	ldr	r3, [r7, #12]
    2238:	1d19      	adds	r1, r3, #4
    223a:	60f9      	str	r1, [r7, #12]
    223c:	6812      	ldr	r2, [r2, #0]
    223e:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    2240:	68fb      	ldr	r3, [r7, #12]
    2242:	4a0c      	ldr	r2, [pc, #48]	; (2274 <prv_cinit+0x54>)
    2244:	4293      	cmp	r3, r2
    2246:	d3f3      	bcc.n	2230 <prv_cinit+0x10>
  }

  // Zero fill the bss segment.
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2248:	4b0b      	ldr	r3, [pc, #44]	; (2278 <prv_cinit+0x58>)
    224a:	607b      	str	r3, [r7, #4]
    224c:	e004      	b.n	2258 <prv_cinit+0x38>
    *(dst++) = 0;
    224e:	687b      	ldr	r3, [r7, #4]
    2250:	1d1a      	adds	r2, r3, #4
    2252:	607a      	str	r2, [r7, #4]
    2254:	2200      	movs	r2, #0
    2256:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2258:	687b      	ldr	r3, [r7, #4]
    225a:	4a08      	ldr	r2, [pc, #32]	; (227c <prv_cinit+0x5c>)
    225c:	4293      	cmp	r3, r2
    225e:	d3f6      	bcc.n	224e <prv_cinit+0x2e>
  }
}
    2260:	bf00      	nop
    2262:	bf00      	nop
    2264:	3714      	adds	r7, #20
    2266:	46bd      	mov	sp, r7
    2268:	bc80      	pop	{r7}
    226a:	4770      	bx	lr
    226c:	20000000 	.word	0x20000000
    2270:	20000000 	.word	0x20000000
    2274:	20000000 	.word	0x20000000
    2278:	20000024 	.word	0x20000024
    227c:	20000910 	.word	0x20000910

00002280 <DefaultIntHandler>:
static uint8_t s_buffer[10] __attribute__((aligned(4)));
void *g_unaligned_buffer;


// DefaultIntHandler is used for unpopulated interrupts
static void DefaultIntHandler(void) {
    2280:	b480      	push	{r7}
    2282:	af00      	add	r7, sp, #0
  __asm__("bkpt");
    2284:	be00      	bkpt	0x0000
  // Go into an infinite loop.
  while (1)
    2286:	e7fe      	b.n	2286 <DefaultIntHandler+0x6>

00002288 <NMI_Handler>:
    ;
}

static void NMI_Handler(void) {
    2288:	b580      	push	{r7, lr}
    228a:	af00      	add	r7, sp, #0
  DefaultIntHandler();
    228c:	f7ff fff8 	bl	2280 <DefaultIntHandler>
}
    2290:	bf00      	nop
    2292:	bd80      	pop	{r7, pc}

00002294 <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
static void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
    2294:	f01e 0f04 	tst.w	lr, #4
    2298:	bf0c      	ite	eq
    229a:	f3ef 8008 	mrseq	r0, MSP
    229e:	f3ef 8009 	mrsne	r0, PSP
    22a2:	f7ff bf49 	b.w	2138 <HardFault_Handler_C>
}
    22a6:	bf00      	nop

000022a8 <MemoryManagement_Handler>:

static void MemoryManagement_Handler(void) {
    22a8:	b480      	push	{r7}
    22aa:	af00      	add	r7, sp, #0
 
}
    22ac:	bf00      	nop
    22ae:	46bd      	mov	sp, r7
    22b0:	bc80      	pop	{r7}
    22b2:	4770      	bx	lr

000022b4 <BusFault_Handler>:

static void BusFault_Handler(void) {
    22b4:	b480      	push	{r7}
    22b6:	af00      	add	r7, sp, #0

}
    22b8:	bf00      	nop
    22ba:	46bd      	mov	sp, r7
    22bc:	bc80      	pop	{r7}
    22be:	4770      	bx	lr

000022c0 <UsageFault_Handler>:

static void UsageFault_Handler(void) {
    22c0:	b480      	push	{r7}
    22c2:	af00      	add	r7, sp, #0

}
    22c4:	bf00      	nop
    22c6:	46bd      	mov	sp, r7
    22c8:	bc80      	pop	{r7}
    22ca:	4770      	bx	lr

000022cc <Irq0_Handler>:

void Irq0_Handler(void) {
    22cc:	b480      	push	{r7}
    22ce:	af00      	add	r7, sp, #0

}
    22d0:	bf00      	nop
    22d2:	46bd      	mov	sp, r7
    22d4:	bc80      	pop	{r7}
    22d6:	4770      	bx	lr

000022d8 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
    22d8:	b480      	push	{r7}
    22da:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
    22dc:	4b03      	ldr	r3, [pc, #12]	; (22ec <exception_init+0x14>)
    22de:	4a04      	ldr	r2, [pc, #16]	; (22f0 <exception_init+0x18>)
    22e0:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
    22e2:	bf00      	nop
    22e4:	46bd      	mov	sp, r7
    22e6:	bc80      	pop	{r7}
    22e8:	4770      	bx	lr
    22ea:	bf00      	nop
    22ec:	2000090c 	.word	0x2000090c
    22f0:	200000ed 	.word	0x200000ed

000022f4 <exception_test>:
void exception_test(void)
{
    22f4:	b580      	push	{r7, lr}
    22f6:	af00      	add	r7, sp, #0
  exception_init();
    22f8:	f7ff ffee 	bl	22d8 <exception_init>
}
    22fc:	bf00      	nop
    22fe:	bd80      	pop	{r7, pc}

00002300 <trigger_irq>:
#include "exception.h"

void trigger_irq(void) 
{
    2300:	b480      	push	{r7}
    2302:	af00      	add	r7, sp, #0
    NVIC->ISER[0] |= (0x1 << 1);
    2304:	4b09      	ldr	r3, [pc, #36]	; (232c <trigger_irq+0x2c>)
    2306:	681b      	ldr	r3, [r3, #0]
    2308:	4a08      	ldr	r2, [pc, #32]	; (232c <trigger_irq+0x2c>)
    230a:	f043 0302 	orr.w	r3, r3, #2
    230e:	6013      	str	r3, [r2, #0]

    // Pend an interrupt
    NVIC->ISPR[0] |= (0x1 << 1);
    2310:	4b06      	ldr	r3, [pc, #24]	; (232c <trigger_irq+0x2c>)
    2312:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
    2316:	4a05      	ldr	r2, [pc, #20]	; (232c <trigger_irq+0x2c>)
    2318:	f043 0302 	orr.w	r3, r3, #2
    231c:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
    // flush pipeline to ensure exception takes effect before we
    // return from this routine
    __asm("isb");
    2320:	f3bf 8f6f 	isb	sy
}
    2324:	bf00      	nop
    2326:	46bd      	mov	sp, r7
    2328:	bc80      	pop	{r7}
    232a:	4770      	bx	lr
    232c:	e000e100 	.word	0xe000e100

00002330 <stkerr_from_psp>:
valid. For example, the very last store of the hardware stacking could trigger the fault 
and all the other stores could be valid. However, the order the hardware pushes register 
state on the stack is implementation specific. So when inspecting the frame assume the 
values being looked at may be invalid!
*/
void stkerr_from_psp(void) {
    2330:	b590      	push	{r4, r7, lr}
    2332:	b087      	sub	sp, #28
    2334:	af00      	add	r7, sp, #0
    2336:	466b      	mov	r3, sp
    2338:	461c      	mov	r4, r3
  extern uint32_t _sdata[];
  uint8_t dummy_variable;
  const size_t distance_to_ram_bottom = (uint32_t)&dummy_variable - (uint32_t)_sdata;
    233a:	1dfb      	adds	r3, r7, #7
    233c:	4a21      	ldr	r2, [pc, #132]	; (23c4 <stkerr_from_psp+0x94>)
    233e:	1a9b      	subs	r3, r3, r2
    2340:	613b      	str	r3, [r7, #16]
  volatile uint8_t big_buf[distance_to_ram_bottom - 8];
    2342:	693b      	ldr	r3, [r7, #16]
    2344:	3b09      	subs	r3, #9
    2346:	60fb      	str	r3, [r7, #12]
    2348:	693b      	ldr	r3, [r7, #16]
    234a:	3b08      	subs	r3, #8
    234c:	4618      	mov	r0, r3
    234e:	f04f 0100 	mov.w	r1, #0
    2352:	f04f 0200 	mov.w	r2, #0
    2356:	f04f 0300 	mov.w	r3, #0
    235a:	00cb      	lsls	r3, r1, #3
    235c:	ea43 7350 	orr.w	r3, r3, r0, lsr #29
    2360:	00c2      	lsls	r2, r0, #3
    2362:	693b      	ldr	r3, [r7, #16]
    2364:	3b08      	subs	r3, #8
    2366:	4618      	mov	r0, r3
    2368:	f04f 0100 	mov.w	r1, #0
    236c:	f04f 0200 	mov.w	r2, #0
    2370:	f04f 0300 	mov.w	r3, #0
    2374:	00cb      	lsls	r3, r1, #3
    2376:	ea43 7350 	orr.w	r3, r3, r0, lsr #29
    237a:	00c2      	lsls	r2, r0, #3
    237c:	693b      	ldr	r3, [r7, #16]
    237e:	3b08      	subs	r3, #8
    2380:	3307      	adds	r3, #7
    2382:	08db      	lsrs	r3, r3, #3
    2384:	00db      	lsls	r3, r3, #3
    2386:	ebad 0d03 	sub.w	sp, sp, r3
    238a:	466b      	mov	r3, sp
    238c:	3300      	adds	r3, #0
    238e:	60bb      	str	r3, [r7, #8]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    2390:	2300      	movs	r3, #0
    2392:	617b      	str	r3, [r7, #20]
    2394:	e009      	b.n	23aa <stkerr_from_psp+0x7a>
    big_buf[i] = i;
    2396:	697b      	ldr	r3, [r7, #20]
    2398:	b2d9      	uxtb	r1, r3
    239a:	68ba      	ldr	r2, [r7, #8]
    239c:	697b      	ldr	r3, [r7, #20]
    239e:	4413      	add	r3, r2
    23a0:	460a      	mov	r2, r1
    23a2:	701a      	strb	r2, [r3, #0]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    23a4:	697b      	ldr	r3, [r7, #20]
    23a6:	3301      	adds	r3, #1
    23a8:	617b      	str	r3, [r7, #20]
    23aa:	693b      	ldr	r3, [r7, #16]
    23ac:	3b08      	subs	r3, #8
    23ae:	697a      	ldr	r2, [r7, #20]
    23b0:	429a      	cmp	r2, r3
    23b2:	d3f0      	bcc.n	2396 <stkerr_from_psp+0x66>
  }

  trigger_irq();
    23b4:	f7ff ffa4 	bl	2300 <trigger_irq>
    23b8:	46a5      	mov	sp, r4
}
    23ba:	bf00      	nop
    23bc:	371c      	adds	r7, #28
    23be:	46bd      	mov	sp, r7
    23c0:	bd90      	pop	{r4, r7, pc}
    23c2:	bf00      	nop
    23c4:	20000000 	.word	0x20000000

000023c8 <bad_memory_access_crash>:

int bad_memory_access_crash(void) {
    23c8:	b480      	push	{r7}
    23ca:	b083      	sub	sp, #12
    23cc:	af00      	add	r7, sp, #0
  volatile uint32_t *bad_access = (volatile uint32_t *)0xdeadbeef;
    23ce:	4b04      	ldr	r3, [pc, #16]	; (23e0 <bad_memory_access_crash+0x18>)
    23d0:	607b      	str	r3, [r7, #4]
  return *bad_access;
    23d2:	687b      	ldr	r3, [r7, #4]
    23d4:	681b      	ldr	r3, [r3, #0]
}
    23d6:	4618      	mov	r0, r3
    23d8:	370c      	adds	r7, #12
    23da:	46bd      	mov	sp, r7
    23dc:	bc80      	pop	{r7}
    23de:	4770      	bx	lr
    23e0:	deadbeef 	.word	0xdeadbeef

000023e4 <read_from_bad_address>:
/*Bad Address Read*/
uint32_t read_from_bad_address(void) {
    23e4:	b480      	push	{r7}
    23e6:	af00      	add	r7, sp, #0
  return *(volatile uint32_t *)0xbadcafe;
    23e8:	4b02      	ldr	r3, [pc, #8]	; (23f4 <read_from_bad_address+0x10>)
    23ea:	681b      	ldr	r3, [r3, #0]
}
    23ec:	4618      	mov	r0, r3
    23ee:	46bd      	mov	sp, r7
    23f0:	bc80      	pop	{r7}
    23f2:	4770      	bx	lr
    23f4:	0badcafe 	.word	0x0badcafe

000023f8 <illegal_instruction_execution>:

/*eXecute Never Fault*/
int illegal_instruction_execution(void) {
    23f8:	b580      	push	{r7, lr}
    23fa:	b082      	sub	sp, #8
    23fc:	af00      	add	r7, sp, #0
  int (*bad_instruction)(void) = (void *)0xE0000000;
    23fe:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    2402:	607b      	str	r3, [r7, #4]
  return bad_instruction();
    2404:	687b      	ldr	r3, [r7, #4]
    2406:	4798      	blx	r3
    2408:	4603      	mov	r3, r0
}
    240a:	4618      	mov	r0, r3
    240c:	3708      	adds	r7, #8
    240e:	46bd      	mov	sp, r7
    2410:	bd80      	pop	{r7, pc}

00002412 <unaligned_double_word_read>:

void unaligned_double_word_read(void) {
    2412:	b480      	push	{r7}
    2414:	af00      	add	r7, sp, #0
//   extern void *g_unaligned_buffer;
//   uint64_t *buf = g_unaligned_buffer;
//   *buf = 0x1122334455667788;
}
    2416:	bf00      	nop
    2418:	46bd      	mov	sp, r7
    241a:	bc80      	pop	{r7}
    241c:	4770      	bx	lr

0000241e <bad_addr_double_word_write>:

/*Imprecise Fault*/
void bad_addr_double_word_write(void) {
    241e:	b480      	push	{r7}
    2420:	b083      	sub	sp, #12
    2422:	af00      	add	r7, sp, #0
  volatile uint64_t *buf = (volatile uint64_t *)0x30000000;
    2424:	f04f 5340 	mov.w	r3, #805306368	; 0x30000000
    2428:	607b      	str	r3, [r7, #4]
  *buf = 0x1122334455667788;
    242a:	6879      	ldr	r1, [r7, #4]
    242c:	a304      	add	r3, pc, #16	; (adr r3, 2440 <bad_addr_double_word_write+0x22>)
    242e:	e9d3 2300 	ldrd	r2, r3, [r3]
    2432:	e9c1 2300 	strd	r2, r3, [r1]
}
    2436:	bf00      	nop
    2438:	370c      	adds	r7, #12
    243a:	46bd      	mov	sp, r7
    243c:	bc80      	pop	{r7}
    243e:	4770      	bx	lr
    2440:	55667788 	.word	0x55667788
    2444:	11223344 	.word	0x11223344

00002448 <access_disabled_coprocessor>:
/*Coprocessor Fault*/
void access_disabled_coprocessor(void) {
    2448:	b480      	push	{r7}
    244a:	af00      	add	r7, sp, #0
  // FreeRTOS will automatically enable the FPU co-processor.
  // Let's disable it for the purposes of this example
  __asm volatile(
    244c:	4830      	ldr	r0, [pc, #192]	; (2510 <recover_from_task_fault+0x6>)
    244e:	f04f 0100 	mov.w	r1, #0
    2452:	6001      	str	r1, [r0, #0]
    2454:	f3bf 8f4f 	dsb	sy
      "mov r1, #0 \n"
      "str r1, [r0]	\n"
      "dsb \n"
    //   "vmov r0, s0 \n"
      );
}
    2458:	bf00      	nop
    245a:	46bd      	mov	sp, r7
    245c:	bc80      	pop	{r7}
    245e:	4770      	bx	lr

00002460 <usagefault>:
void usagefault(void)
{
    2460:	b480      	push	{r7}
    2462:	af00      	add	r7, sp, #0
    2464:	deff      	udf	#255	; 0xff

00002466 <busfault>:
    //udf 0xff
    __builtin_trap();
}

void busfault(void)
{
    2466:	b480      	push	{r7}
    2468:	af00      	add	r7, sp, #0
    *(uint32_t*)0xdead0000 = 0x20;
    246a:	4b03      	ldr	r3, [pc, #12]	; (2478 <busfault+0x12>)
    246c:	2220      	movs	r2, #32
    246e:	601a      	str	r2, [r3, #0]
}
    2470:	bf00      	nop
    2472:	46bd      	mov	sp, r7
    2474:	bc80      	pop	{r7}
    2476:	4770      	bx	lr
    2478:	dead0000 	.word	0xdead0000

0000247c <memmanage>:
void memmanage(void)
{
    247c:	b580      	push	{r7, lr}
    247e:	b082      	sub	sp, #8
    2480:	af00      	add	r7, sp, #0
    void (*func_in_xn_region)(void)=(void*)0xE0000000;
    2482:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    2486:	607b      	str	r3, [r7, #4]
    func_in_xn_region();
    2488:	687b      	ldr	r3, [r7, #4]
    248a:	4798      	blx	r3
}
    248c:	bf00      	nop
    248e:	3708      	adds	r7, #8
    2490:	46bd      	mov	sp, r7
    2492:	bd80      	pop	{r7, pc}

00002494 <Irq1_Handler>:

__attribute__((naked))
void Irq1_Handler(void) {
  __asm volatile(
    2494:	f06f 001f 	mvn.w	r0, #31
    2498:	4700      	bx	r0
      "ldr r0, =0xFFFFFFE0 \n"
      "bx r0 \n"
                 );
}
    249a:	bf00      	nop

0000249c <trigger_crash>:
//  3: Bad Memory Write
//  4: Exception Entry Fault
//  5: Unaligned 8 byte read
//  6: Bad 4 byte read
//  7: Illegal EXC_RETURN
void trigger_crash(int crash_id) {
    249c:	b580      	push	{r7, lr}
    249e:	b082      	sub	sp, #8
    24a0:	af00      	add	r7, sp, #0
    24a2:	6078      	str	r0, [r7, #4]
    24a4:	687b      	ldr	r3, [r7, #4]
    24a6:	2b07      	cmp	r3, #7
    24a8:	d82a      	bhi.n	2500 <trigger_crash+0x64>
    24aa:	a201      	add	r2, pc, #4	; (adr r2, 24b0 <trigger_crash+0x14>)
    24ac:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    24b0:	000024d1 	.word	0x000024d1
    24b4:	000024d7 	.word	0x000024d7
    24b8:	000024dd 	.word	0x000024dd
    24bc:	000024e3 	.word	0x000024e3
    24c0:	000024e9 	.word	0x000024e9
    24c4:	000024ef 	.word	0x000024ef
    24c8:	000024f5 	.word	0x000024f5
    24cc:	000024fb 	.word	0x000024fb
  switch (crash_id) {
    case 0:
      illegal_instruction_execution();      
    24d0:	f7ff ff92 	bl	23f8 <illegal_instruction_execution>
      break;
    24d4:	e015      	b.n	2502 <trigger_crash+0x66>
    case 1:
      read_from_bad_address();
    24d6:	f7ff ff85 	bl	23e4 <read_from_bad_address>
      break;
    24da:	e012      	b.n	2502 <trigger_crash+0x66>
    case 2:
      access_disabled_coprocessor();
    24dc:	f7ff ffb4 	bl	2448 <access_disabled_coprocessor>
      break;
    24e0:	e00f      	b.n	2502 <trigger_crash+0x66>
    case 3:
      bad_addr_double_word_write();
    24e2:	f7ff ff9c 	bl	241e <bad_addr_double_word_write>
      break;
    24e6:	e00c      	b.n	2502 <trigger_crash+0x66>
    case 4:
      stkerr_from_psp();
    24e8:	f7ff ff22 	bl	2330 <stkerr_from_psp>
      break;
    24ec:	e009      	b.n	2502 <trigger_crash+0x66>
    case 5:
      unaligned_double_word_read();      
    24ee:	f7ff ff90 	bl	2412 <unaligned_double_word_read>
      break;
    24f2:	e006      	b.n	2502 <trigger_crash+0x66>
    case 6:
      bad_memory_access_crash();
    24f4:	f7ff ff68 	bl	23c8 <bad_memory_access_crash>
      break;
    24f8:	e003      	b.n	2502 <trigger_crash+0x66>
    case 7:
      trigger_irq();
    24fa:	f7ff ff01 	bl	2300 <trigger_irq>
      break;
    24fe:	e000      	b.n	2502 <trigger_crash+0x66>
    default:
      break;
    2500:	bf00      	nop
  }
}
    2502:	bf00      	nop
    2504:	3708      	adds	r7, #8
    2506:	46bd      	mov	sp, r7
    2508:	bd80      	pop	{r7, pc}

0000250a <recover_from_task_fault>:
void recover_from_task_fault(void) 
{
    250a:	b480      	push	{r7}
    250c:	af00      	add	r7, sp, #0
  while (1) {
    250e:	e7fe      	b.n	250e <recover_from_task_fault+0x4>
    2510:	e000ed88 	.word	0xe000ed88

Disassembly of section .text.Default_Handler:

000033d8 <BusFault_Handler>:
.section .text.Default_Handler,"ax",%progbits
Default_Handler:
    b .
    33d8:	e7fe      	b.n	33d8 <BusFault_Handler>
