
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
      10:	20001910 00000001 000033e1 000033e1     ... .....3...3..
      20:	000033e1 000033e1 000033e1 000033e0     .3...3...3...3..
      30:	000033e0 000033e0 000033e0 000033e1     .3...3...3...3..
      40:	000033e1 000033e0 000033e1 000033e1     .3...3...3...3..

00000050 <main>:
#include "hal.h"
#include "shell.h"

extern void exception_test(void);
void main(void)
{
      50:	b580      	push	{r7, lr}
      52:	af00      	add	r7, sp, #0

    printf("[%s] hello world\n", __func__);
      54:	4904      	ldr	r1, [pc, #16]	; (68 <main+0x18>)
      56:	4805      	ldr	r0, [pc, #20]	; (6c <main+0x1c>)
      58:	f001 f8bf 	bl	11da <printf_>
    // shell_start();
    backtrace_test();
      5c:	f001 fe92 	bl	1d84 <backtrace_test>
    exception_test();
      60:	f002 f946 	bl	22f0 <exception_test>
    // hal_mpu_test();
    while(1);
      64:	e7fe      	b.n	64 <main+0x14>
      66:	bf00      	nop
      68:	00002538 	.word	0x00002538
      6c:	0000251c 	.word	0x0000251c

00000070 <nmi_handler>:
}

void nmi_handler(void)
{
      70:	b580      	push	{r7, lr}
      72:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      74:	4902      	ldr	r1, [pc, #8]	; (80 <nmi_handler+0x10>)
      76:	4803      	ldr	r0, [pc, #12]	; (84 <nmi_handler+0x14>)
      78:	f001 f8af 	bl	11da <printf_>
    while(1);
      7c:	e7fe      	b.n	7c <nmi_handler+0xc>
      7e:	bf00      	nop
      80:	00002540 	.word	0x00002540
      84:	00002530 	.word	0x00002530

00000088 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
      88:	b580      	push	{r7, lr}
      8a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      8c:	4902      	ldr	r1, [pc, #8]	; (98 <hard_fault_handler+0x10>)
      8e:	4803      	ldr	r0, [pc, #12]	; (9c <hard_fault_handler+0x14>)
      90:	f001 f8a3 	bl	11da <printf_>
    while(1);
      94:	e7fe      	b.n	94 <hard_fault_handler+0xc>
      96:	bf00      	nop
      98:	0000254c 	.word	0x0000254c
      9c:	00002530 	.word	0x00002530

000000a0 <mem_manage_handler>:
}

void mem_manage_handler(void)
{
      a0:	b580      	push	{r7, lr}
      a2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      a4:	4902      	ldr	r1, [pc, #8]	; (b0 <mem_manage_handler+0x10>)
      a6:	4803      	ldr	r0, [pc, #12]	; (b4 <mem_manage_handler+0x14>)
      a8:	f001 f897 	bl	11da <printf_>
    while(1);
      ac:	e7fe      	b.n	ac <mem_manage_handler+0xc>
      ae:	bf00      	nop
      b0:	00002560 	.word	0x00002560
      b4:	00002530 	.word	0x00002530

000000b8 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
      b8:	b580      	push	{r7, lr}
      ba:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      bc:	4902      	ldr	r1, [pc, #8]	; (c8 <bus_fault_handler+0x10>)
      be:	4803      	ldr	r0, [pc, #12]	; (cc <bus_fault_handler+0x14>)
      c0:	f001 f88b 	bl	11da <printf_>
    while(1);
      c4:	e7fe      	b.n	c4 <bus_fault_handler+0xc>
      c6:	bf00      	nop
      c8:	00002574 	.word	0x00002574
      cc:	00002530 	.word	0x00002530

000000d0 <usage_fault_handler>:
}

void usage_fault_handler(void)
{
      d0:	b580      	push	{r7, lr}
      d2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      d4:	4902      	ldr	r1, [pc, #8]	; (e0 <usage_fault_handler+0x10>)
      d6:	4803      	ldr	r0, [pc, #12]	; (e4 <usage_fault_handler+0x14>)
      d8:	f001 f87f 	bl	11da <printf_>
    while(1);
      dc:	e7fe      	b.n	dc <usage_fault_handler+0xc>
      de:	bf00      	nop
      e0:	00002588 	.word	0x00002588
      e4:	00002530 	.word	0x00002530

000000e8 <svc_handler>:
}

void svc_handler(void)
{
      e8:	b580      	push	{r7, lr}
      ea:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      ec:	4902      	ldr	r1, [pc, #8]	; (f8 <svc_handler+0x10>)
      ee:	4803      	ldr	r0, [pc, #12]	; (fc <svc_handler+0x14>)
      f0:	f001 f873 	bl	11da <printf_>
    while(1);
      f4:	e7fe      	b.n	f4 <svc_handler+0xc>
      f6:	bf00      	nop
      f8:	0000259c 	.word	0x0000259c
      fc:	00002530 	.word	0x00002530

00000100 <debug_mon_handler>:
}

void debug_mon_handler(void)
{
     100:	b580      	push	{r7, lr}
     102:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     104:	4902      	ldr	r1, [pc, #8]	; (110 <debug_mon_handler+0x10>)
     106:	4803      	ldr	r0, [pc, #12]	; (114 <debug_mon_handler+0x14>)
     108:	f001 f867 	bl	11da <printf_>
    while(1);
     10c:	e7fe      	b.n	10c <debug_mon_handler+0xc>
     10e:	bf00      	nop
     110:	000025a8 	.word	0x000025a8
     114:	00002530 	.word	0x00002530

00000118 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     118:	b580      	push	{r7, lr}
     11a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     11c:	4902      	ldr	r1, [pc, #8]	; (128 <pend_sv_handler+0x10>)
     11e:	4803      	ldr	r0, [pc, #12]	; (12c <pend_sv_handler+0x14>)
     120:	f001 f85b 	bl	11da <printf_>
    while(1);
     124:	e7fe      	b.n	124 <pend_sv_handler+0xc>
     126:	bf00      	nop
     128:	000025bc 	.word	0x000025bc
     12c:	00002530 	.word	0x00002530

00000130 <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     130:	b580      	push	{r7, lr}
     132:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     134:	4902      	ldr	r1, [pc, #8]	; (140 <sys_tick_handler+0x10>)
     136:	4803      	ldr	r0, [pc, #12]	; (144 <sys_tick_handler+0x14>)
     138:	f001 f84f 	bl	11da <printf_>
    while(1);
     13c:	e7fe      	b.n	13c <sys_tick_handler+0xc>
     13e:	bf00      	nop
     140:	000025cc 	.word	0x000025cc
     144:	00002530 	.word	0x00002530

00000148 <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
     148:	b480      	push	{r7}
     14a:	b083      	sub	sp, #12
     14c:	af00      	add	r7, sp, #0
     14e:	6078      	str	r0, [r7, #4]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
     150:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
     154:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
     158:	4a07      	ldr	r2, [pc, #28]	; (178 <ARM_MPU_Enable+0x30>)
     15a:	687b      	ldr	r3, [r7, #4]
     15c:	f043 0301 	orr.w	r3, r3, #1
     160:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
     162:	4b06      	ldr	r3, [pc, #24]	; (17c <ARM_MPU_Enable+0x34>)
     164:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     166:	4a05      	ldr	r2, [pc, #20]	; (17c <ARM_MPU_Enable+0x34>)
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
  __ASM volatile ("isb 0xF":::"memory");
     188:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
     18c:	4b07      	ldr	r3, [pc, #28]	; (1ac <ARM_MPU_Disable+0x2c>)
     18e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     190:	4a06      	ldr	r2, [pc, #24]	; (1ac <ARM_MPU_Disable+0x2c>)
     192:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
     196:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
     198:	4b05      	ldr	r3, [pc, #20]	; (1b0 <ARM_MPU_Disable+0x30>)
     19a:	685b      	ldr	r3, [r3, #4]
     19c:	4a04      	ldr	r2, [pc, #16]	; (1b0 <ARM_MPU_Disable+0x30>)
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
     1b6:	b083      	sub	sp, #12
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
     1cc:	370c      	adds	r7, #12
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
     1f0:	f7ff ffc6 	bl	180 <ARM_MPU_Disable>
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
     21e:	f7ff ff93 	bl	148 <ARM_MPU_Enable>
}
     222:	bf00      	nop
     224:	3728      	adds	r7, #40	; 0x28
     226:	46bd      	mov	sp, r7
     228:	bdb0      	pop	{r4, r5, r7, pc}
     22a:	bf00      	nop
     22c:	000025e0 	.word	0x000025e0

00000230 <_putchar>:

#ifdef QEMU_DEBUG_ENABLE 
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

void _putchar(const char ch)
{
     230:	b480      	push	{r7}
     232:	b083      	sub	sp, #12
     234:	af00      	add	r7, sp, #0
     236:	4603      	mov	r3, r0
     238:	71fb      	strb	r3, [r7, #7]
    *UART_DR = ch;
     23a:	4a04      	ldr	r2, [pc, #16]	; (24c <_putchar+0x1c>)
     23c:	79fb      	ldrb	r3, [r7, #7]
     23e:	6013      	str	r3, [r2, #0]
}
     240:	bf00      	nop
     242:	370c      	adds	r7, #12
     244:	46bd      	mov	sp, r7
     246:	bc80      	pop	{r7}
     248:	4770      	bx	lr
     24a:	bf00      	nop
     24c:	4000c000 	.word	0x4000c000

00000250 <_getchar>:

char _getchar(void)
{
     250:	b480      	push	{r7}
     252:	af00      	add	r7, sp, #0
    return(char)*UART_DR;
     254:	4b03      	ldr	r3, [pc, #12]	; (264 <_getchar+0x14>)
     256:	681b      	ldr	r3, [r3, #0]
     258:	b2db      	uxtb	r3, r3
}
     25a:	4618      	mov	r0, r3
     25c:	46bd      	mov	sp, r7
     25e:	bc80      	pop	{r7}
     260:	4770      	bx	lr
     262:	bf00      	nop
     264:	4000c000 	.word	0x4000c000

00000268 <__io_putchar>:

int __io_putchar(int ch)
{
     268:	b580      	push	{r7, lr}
     26a:	b082      	sub	sp, #8
     26c:	af00      	add	r7, sp, #0
     26e:	6078      	str	r0, [r7, #4]
    _putchar(ch);
     270:	687b      	ldr	r3, [r7, #4]
     272:	b2db      	uxtb	r3, r3
     274:	4618      	mov	r0, r3
     276:	f7ff ffdb 	bl	230 <_putchar>
    return 0;
     27a:	2300      	movs	r3, #0
}
     27c:	4618      	mov	r0, r3
     27e:	3708      	adds	r7, #8
     280:	46bd      	mov	sp, r7
     282:	bd80      	pop	{r7, pc}

00000284 <__io_getchar>:

int __io_getchar(void)
{
     284:	b580      	push	{r7, lr}
     286:	af00      	add	r7, sp, #0
    return (int)_getchar();
     288:	f7ff ffe2 	bl	250 <_getchar>
     28c:	4603      	mov	r3, r0
}
     28e:	4618      	mov	r0, r3
     290:	bd80      	pop	{r7, pc}

00000292 <lite_getchar>:
{
    return(char)__io_getchar();
}
#endif
void lite_getchar(char *chr)
{
     292:	b580      	push	{r7, lr}
     294:	b082      	sub	sp, #8
     296:	af00      	add	r7, sp, #0
     298:	6078      	str	r0, [r7, #4]
    do {
        *chr = _getchar();
     29a:	f7ff ffd9 	bl	250 <_getchar>
     29e:	4603      	mov	r3, r0
     2a0:	461a      	mov	r2, r3
     2a2:	687b      	ldr	r3, [r7, #4]
     2a4:	701a      	strb	r2, [r3, #0]
    } while (*chr == 0);
     2a6:	687b      	ldr	r3, [r7, #4]
     2a8:	781b      	ldrb	r3, [r3, #0]
     2aa:	2b00      	cmp	r3, #0
     2ac:	d0f5      	beq.n	29a <lite_getchar+0x8>
}
     2ae:	bf00      	nop
     2b0:	3708      	adds	r7, #8
     2b2:	46bd      	mov	sp, r7
     2b4:	bd80      	pop	{r7, pc}

000002b6 <lite_putchar>:
void lite_putchar(char character)
{
     2b6:	b580      	push	{r7, lr}
     2b8:	b082      	sub	sp, #8
     2ba:	af00      	add	r7, sp, #0
     2bc:	4603      	mov	r3, r0
     2be:	71fb      	strb	r3, [r7, #7]
    _putchar(character);
     2c0:	79fb      	ldrb	r3, [r7, #7]
     2c2:	4618      	mov	r0, r3
     2c4:	f7ff ffb4 	bl	230 <_putchar>
}
     2c8:	bf00      	nop
     2ca:	3708      	adds	r7, #8
     2cc:	46bd      	mov	sp, r7
     2ce:	bd80      	pop	{r7, pc}

000002d0 <_putstr>:

void _putstr(const char *str)
{
     2d0:	b580      	push	{r7, lr}
     2d2:	b082      	sub	sp, #8
     2d4:	af00      	add	r7, sp, #0
     2d6:	6078      	str	r0, [r7, #4]
    while (*str) {
     2d8:	e006      	b.n	2e8 <_putstr+0x18>
        _putchar(*str++);
     2da:	687b      	ldr	r3, [r7, #4]
     2dc:	1c5a      	adds	r2, r3, #1
     2de:	607a      	str	r2, [r7, #4]
     2e0:	781b      	ldrb	r3, [r3, #0]
     2e2:	4618      	mov	r0, r3
     2e4:	f7ff ffa4 	bl	230 <_putchar>
    while (*str) {
     2e8:	687b      	ldr	r3, [r7, #4]
     2ea:	781b      	ldrb	r3, [r3, #0]
     2ec:	2b00      	cmp	r3, #0
     2ee:	d1f4      	bne.n	2da <_putstr+0xa>
    }
}
     2f0:	bf00      	nop
     2f2:	3708      	adds	r7, #8
     2f4:	46bd      	mov	sp, r7
     2f6:	bd80      	pop	{r7, pc}

000002f8 <_strlen>:

uint32_t _strlen (const char *_s)
{
     2f8:	b480      	push	{r7}
     2fa:	b085      	sub	sp, #20
     2fc:	af00      	add	r7, sp, #0
     2fe:	6078      	str	r0, [r7, #4]
    uint32_t i = 0;
     300:	2300      	movs	r3, #0
     302:	60fb      	str	r3, [r7, #12]
    while(*_s++ != '\0') i++;
     304:	e002      	b.n	30c <_strlen+0x14>
     306:	68fb      	ldr	r3, [r7, #12]
     308:	3301      	adds	r3, #1
     30a:	60fb      	str	r3, [r7, #12]
     30c:	687b      	ldr	r3, [r7, #4]
     30e:	1c5a      	adds	r2, r3, #1
     310:	607a      	str	r2, [r7, #4]
     312:	781b      	ldrb	r3, [r3, #0]
     314:	2b00      	cmp	r3, #0
     316:	d1f6      	bne.n	306 <_strlen+0xe>
    return i;
     318:	68fb      	ldr	r3, [r7, #12]
}
     31a:	4618      	mov	r0, r3
     31c:	3714      	adds	r7, #20
     31e:	46bd      	mov	sp, r7
     320:	bc80      	pop	{r7}
     322:	4770      	bx	lr

00000324 <_pow>:

static unsigned long _pow(int x, int y)
{
     324:	b480      	push	{r7}
     326:	b085      	sub	sp, #20
     328:	af00      	add	r7, sp, #0
     32a:	6078      	str	r0, [r7, #4]
     32c:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
     32e:	2301      	movs	r3, #1
     330:	60fb      	str	r3, [r7, #12]
    while (y--)
     332:	e004      	b.n	33e <_pow+0x1a>
    {
        sum *= x;
     334:	687a      	ldr	r2, [r7, #4]
     336:	68fb      	ldr	r3, [r7, #12]
     338:	fb02 f303 	mul.w	r3, r2, r3
     33c:	60fb      	str	r3, [r7, #12]
    while (y--)
     33e:	683b      	ldr	r3, [r7, #0]
     340:	1e5a      	subs	r2, r3, #1
     342:	603a      	str	r2, [r7, #0]
     344:	2b00      	cmp	r3, #0
     346:	d1f5      	bne.n	334 <_pow+0x10>
    }
    return sum;
     348:	68fb      	ldr	r3, [r7, #12]
}
     34a:	4618      	mov	r0, r3
     34c:	3714      	adds	r7, #20
     34e:	46bd      	mov	sp, r7
     350:	bc80      	pop	{r7}
     352:	4770      	bx	lr

00000354 <lite_printf>:

int lite_printf(const char *str, ...)
{
     354:	b40f      	push	{r0, r1, r2, r3}
     356:	b590      	push	{r4, r7, lr}
     358:	b089      	sub	sp, #36	; 0x24
     35a:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
     35c:	2300      	movs	r3, #0
     35e:	613b      	str	r3, [r7, #16]
    int res = 0; //返回值
     360:	2300      	movs	r3, #0
     362:	617b      	str	r3, [r7, #20]

    va_start(ap, str);   //初始化ap
     364:	f107 0334 	add.w	r3, r7, #52	; 0x34
     368:	607b      	str	r3, [r7, #4]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     36a:	e10d      	b.n	588 <lite_printf+0x234>
    {
        switch (*str)
     36c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     36e:	781b      	ldrb	r3, [r3, #0]
     370:	2b0d      	cmp	r3, #13
     372:	f000 80f5 	beq.w	560 <lite_printf+0x20c>
     376:	2b25      	cmp	r3, #37	; 0x25
     378:	d003      	beq.n	382 <lite_printf+0x2e>
     37a:	2b0a      	cmp	r3, #10
     37c:	f000 80e9 	beq.w	552 <lite_printf+0x1fe>
     380:	e0f5      	b.n	56e <lite_printf+0x21a>
        {
        case '%': //发送参数
            str++;
     382:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     384:	3301      	adds	r3, #1
     386:	633b      	str	r3, [r7, #48]	; 0x30
            switch (*str)
     388:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     38a:	781b      	ldrb	r3, [r3, #0]
     38c:	3b63      	subs	r3, #99	; 0x63
     38e:	2b15      	cmp	r3, #21
     390:	f200 80f6 	bhi.w	580 <lite_printf+0x22c>
     394:	a201      	add	r2, pc, #4	; (adr r2, 39c <lite_printf+0x48>)
     396:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     39a:	bf00      	nop
     39c:	00000539 	.word	0x00000539
     3a0:	000003f5 	.word	0x000003f5
     3a4:	00000581 	.word	0x00000581
     3a8:	00000581 	.word	0x00000581
     3ac:	00000581 	.word	0x00000581
     3b0:	00000581 	.word	0x00000581
     3b4:	00000581 	.word	0x00000581
     3b8:	00000581 	.word	0x00000581
     3bc:	00000581 	.word	0x00000581
     3c0:	00000581 	.word	0x00000581
     3c4:	00000581 	.word	0x00000581
     3c8:	00000581 	.word	0x00000581
     3cc:	00000581 	.word	0x00000581
     3d0:	00000581 	.word	0x00000581
     3d4:	00000581 	.word	0x00000581
     3d8:	00000581 	.word	0x00000581
     3dc:	00000519 	.word	0x00000519
     3e0:	00000581 	.word	0x00000581
     3e4:	00000581 	.word	0x00000581
     3e8:	00000581 	.word	0x00000581
     3ec:	00000581 	.word	0x00000581
     3f0:	0000047f 	.word	0x0000047f
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     3f4:	687b      	ldr	r3, [r7, #4]
     3f6:	1d1a      	adds	r2, r3, #4
     3f8:	607a      	str	r2, [r7, #4]
     3fa:	681b      	ldr	r3, [r3, #0]
     3fc:	60fb      	str	r3, [r7, #12]
                r_val = val;
     3fe:	68fb      	ldr	r3, [r7, #12]
     400:	61fb      	str	r3, [r7, #28]
                count = 0;
     402:	2300      	movs	r3, #0
     404:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     406:	e00a      	b.n	41e <lite_printf+0xca>

                {
                    count++; //整数的长度
     408:	7efb      	ldrb	r3, [r7, #27]
     40a:	3301      	adds	r3, #1
     40c:	76fb      	strb	r3, [r7, #27]
                    r_val /= 10;
     40e:	69fb      	ldr	r3, [r7, #28]
     410:	4a64      	ldr	r2, [pc, #400]	; (5a4 <lite_printf+0x250>)
     412:	fb82 1203 	smull	r1, r2, r2, r3
     416:	1092      	asrs	r2, r2, #2
     418:	17db      	asrs	r3, r3, #31
     41a:	1ad3      	subs	r3, r2, r3
     41c:	61fb      	str	r3, [r7, #28]
                while (r_val)
     41e:	69fb      	ldr	r3, [r7, #28]
     420:	2b00      	cmp	r3, #0
     422:	d1f1      	bne.n	408 <lite_printf+0xb4>
                }

                res += count;
     424:	7efb      	ldrb	r3, [r7, #27]
     426:	697a      	ldr	r2, [r7, #20]
     428:	4413      	add	r3, r2
     42a:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     42c:	68fb      	ldr	r3, [r7, #12]
     42e:	61fb      	str	r3, [r7, #28]
                while (count)
     430:	e021      	b.n	476 <lite_printf+0x122>
                {
                    ch = r_val / _pow(10, count - 1);
     432:	69fc      	ldr	r4, [r7, #28]
     434:	7efb      	ldrb	r3, [r7, #27]
     436:	3b01      	subs	r3, #1
     438:	4619      	mov	r1, r3
     43a:	200a      	movs	r0, #10
     43c:	f7ff ff72 	bl	324 <_pow>
     440:	4603      	mov	r3, r0
     442:	fbb4 f3f3 	udiv	r3, r4, r3
     446:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(10, count - 1);
     448:	7efb      	ldrb	r3, [r7, #27]
     44a:	3b01      	subs	r3, #1
     44c:	4619      	mov	r1, r3
     44e:	200a      	movs	r0, #10
     450:	f7ff ff68 	bl	324 <_pow>
     454:	4602      	mov	r2, r0
     456:	69fb      	ldr	r3, [r7, #28]
     458:	fbb3 f1f2 	udiv	r1, r3, r2
     45c:	fb02 f201 	mul.w	r2, r2, r1
     460:	1a9b      	subs	r3, r3, r2
     462:	61fb      	str	r3, [r7, #28]

                    _putchar(ch + '0');
     464:	7afb      	ldrb	r3, [r7, #11]
     466:	3330      	adds	r3, #48	; 0x30
     468:	b2db      	uxtb	r3, r3
     46a:	4618      	mov	r0, r3
     46c:	f7ff fee0 	bl	230 <_putchar>
                    //数字到字符的转换
                    count--;
     470:	7efb      	ldrb	r3, [r7, #27]
     472:	3b01      	subs	r3, #1
     474:	76fb      	strb	r3, [r7, #27]
                while (count)
     476:	7efb      	ldrb	r3, [r7, #27]
     478:	2b00      	cmp	r3, #0
     47a:	d1da      	bne.n	432 <lite_printf+0xde>
                }
                break;
     47c:	e068      	b.n	550 <lite_printf+0x1fc>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     47e:	687b      	ldr	r3, [r7, #4]
     480:	1d1a      	adds	r2, r3, #4
     482:	607a      	str	r2, [r7, #4]
     484:	681b      	ldr	r3, [r3, #0]
     486:	60fb      	str	r3, [r7, #12]
                r_val = val;
     488:	68fb      	ldr	r3, [r7, #12]
     48a:	61fb      	str	r3, [r7, #28]
                count = 0;
     48c:	2300      	movs	r3, #0
     48e:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     490:	e008      	b.n	4a4 <lite_printf+0x150>

                {
                    count++; //整数的长度
     492:	7efb      	ldrb	r3, [r7, #27]
     494:	3301      	adds	r3, #1
     496:	76fb      	strb	r3, [r7, #27]
                    r_val /= 16;
     498:	69fb      	ldr	r3, [r7, #28]
     49a:	2b00      	cmp	r3, #0
     49c:	da00      	bge.n	4a0 <lite_printf+0x14c>
     49e:	330f      	adds	r3, #15
     4a0:	111b      	asrs	r3, r3, #4
     4a2:	61fb      	str	r3, [r7, #28]
                while (r_val)
     4a4:	69fb      	ldr	r3, [r7, #28]
     4a6:	2b00      	cmp	r3, #0
     4a8:	d1f3      	bne.n	492 <lite_printf+0x13e>
                }

                res += count;
     4aa:	7efb      	ldrb	r3, [r7, #27]
     4ac:	697a      	ldr	r2, [r7, #20]
     4ae:	4413      	add	r3, r2
     4b0:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     4b2:	68fb      	ldr	r3, [r7, #12]
     4b4:	61fb      	str	r3, [r7, #28]
                while (count)
     4b6:	e02b      	b.n	510 <lite_printf+0x1bc>
                {
                    ch = r_val / _pow(16, count - 1);
     4b8:	69fc      	ldr	r4, [r7, #28]
     4ba:	7efb      	ldrb	r3, [r7, #27]
     4bc:	3b01      	subs	r3, #1
     4be:	4619      	mov	r1, r3
     4c0:	2010      	movs	r0, #16
     4c2:	f7ff ff2f 	bl	324 <_pow>
     4c6:	4603      	mov	r3, r0
     4c8:	fbb4 f3f3 	udiv	r3, r4, r3
     4cc:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(16, count - 1);
     4ce:	7efb      	ldrb	r3, [r7, #27]
     4d0:	3b01      	subs	r3, #1
     4d2:	4619      	mov	r1, r3
     4d4:	2010      	movs	r0, #16
     4d6:	f7ff ff25 	bl	324 <_pow>
     4da:	4602      	mov	r2, r0
     4dc:	69fb      	ldr	r3, [r7, #28]
     4de:	fbb3 f1f2 	udiv	r1, r3, r2
     4e2:	fb02 f201 	mul.w	r2, r2, r1
     4e6:	1a9b      	subs	r3, r3, r2
     4e8:	61fb      	str	r3, [r7, #28]
                    if (ch <= 9)
     4ea:	7afb      	ldrb	r3, [r7, #11]
     4ec:	2b09      	cmp	r3, #9
     4ee:	d806      	bhi.n	4fe <lite_printf+0x1aa>
                        _putchar(ch + '0');
     4f0:	7afb      	ldrb	r3, [r7, #11]
     4f2:	3330      	adds	r3, #48	; 0x30
     4f4:	b2db      	uxtb	r3, r3
     4f6:	4618      	mov	r0, r3
     4f8:	f7ff fe9a 	bl	230 <_putchar>
     4fc:	e005      	b.n	50a <lite_printf+0x1b6>
                    //数字到字符的转换
                    else
                        _putchar(ch - 10 + 'a');
     4fe:	7afb      	ldrb	r3, [r7, #11]
     500:	3357      	adds	r3, #87	; 0x57
     502:	b2db      	uxtb	r3, r3
     504:	4618      	mov	r0, r3
     506:	f7ff fe93 	bl	230 <_putchar>
                    count--;
     50a:	7efb      	ldrb	r3, [r7, #27]
     50c:	3b01      	subs	r3, #1
     50e:	76fb      	strb	r3, [r7, #27]
                while (count)
     510:	7efb      	ldrb	r3, [r7, #27]
     512:	2b00      	cmp	r3, #0
     514:	d1d0      	bne.n	4b8 <lite_printf+0x164>
                }
                break;
     516:	e01b      	b.n	550 <lite_printf+0x1fc>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     518:	687b      	ldr	r3, [r7, #4]
     51a:	1d1a      	adds	r2, r3, #4
     51c:	607a      	str	r2, [r7, #4]
     51e:	681b      	ldr	r3, [r3, #0]
     520:	613b      	str	r3, [r7, #16]
                _putstr(s);
     522:	6938      	ldr	r0, [r7, #16]
     524:	f7ff fed4 	bl	2d0 <_putstr>
                //字符串,返回值为字符指针
                res += _strlen(s);
     528:	6938      	ldr	r0, [r7, #16]
     52a:	f7ff fee5 	bl	2f8 <_strlen>
     52e:	4602      	mov	r2, r0
     530:	697b      	ldr	r3, [r7, #20]
     532:	4413      	add	r3, r2
     534:	617b      	str	r3, [r7, #20]
                //返回值长度增加
                break;
     536:	e00b      	b.n	550 <lite_printf+0x1fc>
            case 'c':
                _putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     538:	687b      	ldr	r3, [r7, #4]
     53a:	1d1a      	adds	r2, r3, #4
     53c:	607a      	str	r2, [r7, #4]
     53e:	681b      	ldr	r3, [r3, #0]
     540:	b2db      	uxtb	r3, r3
     542:	4618      	mov	r0, r3
     544:	f7ff fe74 	bl	230 <_putchar>
                res += 1;
     548:	697b      	ldr	r3, [r7, #20]
     54a:	3301      	adds	r3, #1
     54c:	617b      	str	r3, [r7, #20]

                break;
     54e:	bf00      	nop
            default:;
            }
            break;
     550:	e016      	b.n	580 <lite_printf+0x22c>
        case '\n':
            _putchar('\n');
     552:	200a      	movs	r0, #10
     554:	f7ff fe6c 	bl	230 <_putchar>
            res += 1;
     558:	697b      	ldr	r3, [r7, #20]
     55a:	3301      	adds	r3, #1
     55c:	617b      	str	r3, [r7, #20]
            break;
     55e:	e010      	b.n	582 <lite_printf+0x22e>
        case '\r':
            _putchar('\r');
     560:	200d      	movs	r0, #13
     562:	f7ff fe65 	bl	230 <_putchar>
            res += 1;
     566:	697b      	ldr	r3, [r7, #20]
     568:	3301      	adds	r3, #1
     56a:	617b      	str	r3, [r7, #20]
            break;
     56c:	e009      	b.n	582 <lite_printf+0x22e>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            _putchar(*str);
     56e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     570:	781b      	ldrb	r3, [r3, #0]
     572:	4618      	mov	r0, r3
     574:	f7ff fe5c 	bl	230 <_putchar>
            res += 1;
     578:	697b      	ldr	r3, [r7, #20]
     57a:	3301      	adds	r3, #1
     57c:	617b      	str	r3, [r7, #20]
     57e:	e000      	b.n	582 <lite_printf+0x22e>
            break;
     580:	bf00      	nop
        }

        str++;
     582:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     584:	3301      	adds	r3, #1
     586:	633b      	str	r3, [r7, #48]	; 0x30
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     588:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     58a:	781b      	ldrb	r3, [r3, #0]
     58c:	2b00      	cmp	r3, #0
     58e:	f47f aeed 	bne.w	36c <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     592:	697b      	ldr	r3, [r7, #20]
}
     594:	4618      	mov	r0, r3
     596:	3724      	adds	r7, #36	; 0x24
     598:	46bd      	mov	sp, r7
     59a:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     59e:	b004      	add	sp, #16
     5a0:	4770      	bx	lr
     5a2:	bf00      	nop
     5a4:	66666667 	.word	0x66666667

000005a8 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     5a8:	b480      	push	{r7}
     5aa:	b085      	sub	sp, #20
     5ac:	af00      	add	r7, sp, #0
     5ae:	60b9      	str	r1, [r7, #8]
     5b0:	607a      	str	r2, [r7, #4]
     5b2:	603b      	str	r3, [r7, #0]
     5b4:	4603      	mov	r3, r0
     5b6:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     5b8:	687a      	ldr	r2, [r7, #4]
     5ba:	683b      	ldr	r3, [r7, #0]
     5bc:	429a      	cmp	r2, r3
     5be:	d204      	bcs.n	5ca <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     5c0:	68ba      	ldr	r2, [r7, #8]
     5c2:	687b      	ldr	r3, [r7, #4]
     5c4:	4413      	add	r3, r2
     5c6:	7bfa      	ldrb	r2, [r7, #15]
     5c8:	701a      	strb	r2, [r3, #0]
  }
}
     5ca:	bf00      	nop
     5cc:	3714      	adds	r7, #20
     5ce:	46bd      	mov	sp, r7
     5d0:	bc80      	pop	{r7}
     5d2:	4770      	bx	lr

000005d4 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     5d4:	b480      	push	{r7}
     5d6:	b085      	sub	sp, #20
     5d8:	af00      	add	r7, sp, #0
     5da:	60b9      	str	r1, [r7, #8]
     5dc:	607a      	str	r2, [r7, #4]
     5de:	603b      	str	r3, [r7, #0]
     5e0:	4603      	mov	r3, r0
     5e2:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     5e4:	bf00      	nop
     5e6:	3714      	adds	r7, #20
     5e8:	46bd      	mov	sp, r7
     5ea:	bc80      	pop	{r7}
     5ec:	4770      	bx	lr

000005ee <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     5ee:	b580      	push	{r7, lr}
     5f0:	b084      	sub	sp, #16
     5f2:	af00      	add	r7, sp, #0
     5f4:	60b9      	str	r1, [r7, #8]
     5f6:	607a      	str	r2, [r7, #4]
     5f8:	603b      	str	r3, [r7, #0]
     5fa:	4603      	mov	r3, r0
     5fc:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     5fe:	7bfb      	ldrb	r3, [r7, #15]
     600:	2b00      	cmp	r3, #0
     602:	d003      	beq.n	60c <_out_char+0x1e>
    _putchar(character);
     604:	7bfb      	ldrb	r3, [r7, #15]
     606:	4618      	mov	r0, r3
     608:	f7ff fe12 	bl	230 <_putchar>
  }
}
     60c:	bf00      	nop
     60e:	3710      	adds	r7, #16
     610:	46bd      	mov	sp, r7
     612:	bd80      	pop	{r7, pc}

00000614 <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     614:	b580      	push	{r7, lr}
     616:	b084      	sub	sp, #16
     618:	af00      	add	r7, sp, #0
     61a:	60b9      	str	r1, [r7, #8]
     61c:	607a      	str	r2, [r7, #4]
     61e:	603b      	str	r3, [r7, #0]
     620:	4603      	mov	r3, r0
     622:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     624:	7bfb      	ldrb	r3, [r7, #15]
     626:	2b00      	cmp	r3, #0
     628:	d006      	beq.n	638 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     62a:	68bb      	ldr	r3, [r7, #8]
     62c:	681b      	ldr	r3, [r3, #0]
     62e:	68ba      	ldr	r2, [r7, #8]
     630:	6851      	ldr	r1, [r2, #4]
     632:	7bfa      	ldrb	r2, [r7, #15]
     634:	4610      	mov	r0, r2
     636:	4798      	blx	r3
  }
}
     638:	bf00      	nop
     63a:	3710      	adds	r7, #16
     63c:	46bd      	mov	sp, r7
     63e:	bd80      	pop	{r7, pc}

00000640 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     640:	b480      	push	{r7}
     642:	b085      	sub	sp, #20
     644:	af00      	add	r7, sp, #0
     646:	6078      	str	r0, [r7, #4]
     648:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     64a:	687b      	ldr	r3, [r7, #4]
     64c:	60fb      	str	r3, [r7, #12]
     64e:	e002      	b.n	656 <_strnlen_s+0x16>
     650:	68fb      	ldr	r3, [r7, #12]
     652:	3301      	adds	r3, #1
     654:	60fb      	str	r3, [r7, #12]
     656:	68fb      	ldr	r3, [r7, #12]
     658:	781b      	ldrb	r3, [r3, #0]
     65a:	2b00      	cmp	r3, #0
     65c:	d004      	beq.n	668 <_strnlen_s+0x28>
     65e:	683b      	ldr	r3, [r7, #0]
     660:	1e5a      	subs	r2, r3, #1
     662:	603a      	str	r2, [r7, #0]
     664:	2b00      	cmp	r3, #0
     666:	d1f3      	bne.n	650 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     668:	68fa      	ldr	r2, [r7, #12]
     66a:	687b      	ldr	r3, [r7, #4]
     66c:	1ad3      	subs	r3, r2, r3
}
     66e:	4618      	mov	r0, r3
     670:	3714      	adds	r7, #20
     672:	46bd      	mov	sp, r7
     674:	bc80      	pop	{r7}
     676:	4770      	bx	lr

00000678 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     678:	b480      	push	{r7}
     67a:	b083      	sub	sp, #12
     67c:	af00      	add	r7, sp, #0
     67e:	4603      	mov	r3, r0
     680:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     682:	79fb      	ldrb	r3, [r7, #7]
     684:	2b2f      	cmp	r3, #47	; 0x2f
     686:	d904      	bls.n	692 <_is_digit+0x1a>
     688:	79fb      	ldrb	r3, [r7, #7]
     68a:	2b39      	cmp	r3, #57	; 0x39
     68c:	d801      	bhi.n	692 <_is_digit+0x1a>
     68e:	2301      	movs	r3, #1
     690:	e000      	b.n	694 <_is_digit+0x1c>
     692:	2300      	movs	r3, #0
     694:	f003 0301 	and.w	r3, r3, #1
     698:	b2db      	uxtb	r3, r3
}
     69a:	4618      	mov	r0, r3
     69c:	370c      	adds	r7, #12
     69e:	46bd      	mov	sp, r7
     6a0:	bc80      	pop	{r7}
     6a2:	4770      	bx	lr

000006a4 <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     6a4:	b580      	push	{r7, lr}
     6a6:	b084      	sub	sp, #16
     6a8:	af00      	add	r7, sp, #0
     6aa:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     6ac:	2300      	movs	r3, #0
     6ae:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6b0:	e00e      	b.n	6d0 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     6b2:	68fa      	ldr	r2, [r7, #12]
     6b4:	4613      	mov	r3, r2
     6b6:	009b      	lsls	r3, r3, #2
     6b8:	4413      	add	r3, r2
     6ba:	005b      	lsls	r3, r3, #1
     6bc:	4618      	mov	r0, r3
     6be:	687b      	ldr	r3, [r7, #4]
     6c0:	681b      	ldr	r3, [r3, #0]
     6c2:	1c59      	adds	r1, r3, #1
     6c4:	687a      	ldr	r2, [r7, #4]
     6c6:	6011      	str	r1, [r2, #0]
     6c8:	781b      	ldrb	r3, [r3, #0]
     6ca:	4403      	add	r3, r0
     6cc:	3b30      	subs	r3, #48	; 0x30
     6ce:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6d0:	687b      	ldr	r3, [r7, #4]
     6d2:	681b      	ldr	r3, [r3, #0]
     6d4:	781b      	ldrb	r3, [r3, #0]
     6d6:	4618      	mov	r0, r3
     6d8:	f7ff ffce 	bl	678 <_is_digit>
     6dc:	4603      	mov	r3, r0
     6de:	2b00      	cmp	r3, #0
     6e0:	d1e7      	bne.n	6b2 <_atoi+0xe>
  }
  return i;
     6e2:	68fb      	ldr	r3, [r7, #12]
}
     6e4:	4618      	mov	r0, r3
     6e6:	3710      	adds	r7, #16
     6e8:	46bd      	mov	sp, r7
     6ea:	bd80      	pop	{r7, pc}

000006ec <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     6ec:	b590      	push	{r4, r7, lr}
     6ee:	b087      	sub	sp, #28
     6f0:	af00      	add	r7, sp, #0
     6f2:	60f8      	str	r0, [r7, #12]
     6f4:	60b9      	str	r1, [r7, #8]
     6f6:	607a      	str	r2, [r7, #4]
     6f8:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     6fa:	687b      	ldr	r3, [r7, #4]
     6fc:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     6fe:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     700:	f003 0302 	and.w	r3, r3, #2
     704:	2b00      	cmp	r3, #0
     706:	d125      	bne.n	754 <_out_rev+0x68>
     708:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     70a:	f003 0301 	and.w	r3, r3, #1
     70e:	2b00      	cmp	r3, #0
     710:	d120      	bne.n	754 <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     712:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     714:	617b      	str	r3, [r7, #20]
     716:	e00a      	b.n	72e <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     718:	687a      	ldr	r2, [r7, #4]
     71a:	1c53      	adds	r3, r2, #1
     71c:	607b      	str	r3, [r7, #4]
     71e:	68fc      	ldr	r4, [r7, #12]
     720:	683b      	ldr	r3, [r7, #0]
     722:	68b9      	ldr	r1, [r7, #8]
     724:	2020      	movs	r0, #32
     726:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     728:	697b      	ldr	r3, [r7, #20]
     72a:	3301      	adds	r3, #1
     72c:	617b      	str	r3, [r7, #20]
     72e:	697a      	ldr	r2, [r7, #20]
     730:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     732:	429a      	cmp	r2, r3
     734:	d3f0      	bcc.n	718 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     736:	e00d      	b.n	754 <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     738:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     73a:	3b01      	subs	r3, #1
     73c:	62fb      	str	r3, [r7, #44]	; 0x2c
     73e:	6aba      	ldr	r2, [r7, #40]	; 0x28
     740:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     742:	4413      	add	r3, r2
     744:	7818      	ldrb	r0, [r3, #0]
     746:	687a      	ldr	r2, [r7, #4]
     748:	1c53      	adds	r3, r2, #1
     74a:	607b      	str	r3, [r7, #4]
     74c:	68fc      	ldr	r4, [r7, #12]
     74e:	683b      	ldr	r3, [r7, #0]
     750:	68b9      	ldr	r1, [r7, #8]
     752:	47a0      	blx	r4
  while (len) {
     754:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     756:	2b00      	cmp	r3, #0
     758:	d1ee      	bne.n	738 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     75a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     75c:	f003 0302 	and.w	r3, r3, #2
     760:	2b00      	cmp	r3, #0
     762:	d00e      	beq.n	782 <_out_rev+0x96>
    while (idx - start_idx < width) {
     764:	e007      	b.n	776 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     766:	687a      	ldr	r2, [r7, #4]
     768:	1c53      	adds	r3, r2, #1
     76a:	607b      	str	r3, [r7, #4]
     76c:	68fc      	ldr	r4, [r7, #12]
     76e:	683b      	ldr	r3, [r7, #0]
     770:	68b9      	ldr	r1, [r7, #8]
     772:	2020      	movs	r0, #32
     774:	47a0      	blx	r4
    while (idx - start_idx < width) {
     776:	687a      	ldr	r2, [r7, #4]
     778:	693b      	ldr	r3, [r7, #16]
     77a:	1ad3      	subs	r3, r2, r3
     77c:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     77e:	429a      	cmp	r2, r3
     780:	d8f1      	bhi.n	766 <_out_rev+0x7a>
    }
  }

  return idx;
     782:	687b      	ldr	r3, [r7, #4]
}
     784:	4618      	mov	r0, r3
     786:	371c      	adds	r7, #28
     788:	46bd      	mov	sp, r7
     78a:	bd90      	pop	{r4, r7, pc}

0000078c <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     78c:	b580      	push	{r7, lr}
     78e:	b088      	sub	sp, #32
     790:	af04      	add	r7, sp, #16
     792:	60f8      	str	r0, [r7, #12]
     794:	60b9      	str	r1, [r7, #8]
     796:	607a      	str	r2, [r7, #4]
     798:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     79a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     79c:	f003 0302 	and.w	r3, r3, #2
     7a0:	2b00      	cmp	r3, #0
     7a2:	d136      	bne.n	812 <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     7a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7a6:	2b00      	cmp	r3, #0
     7a8:	d018      	beq.n	7dc <_ntoa_format+0x50>
     7aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7ac:	f003 0301 	and.w	r3, r3, #1
     7b0:	2b00      	cmp	r3, #0
     7b2:	d013      	beq.n	7dc <_ntoa_format+0x50>
     7b4:	f897 3020 	ldrb.w	r3, [r7, #32]
     7b8:	2b00      	cmp	r3, #0
     7ba:	d104      	bne.n	7c6 <_ntoa_format+0x3a>
     7bc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7be:	f003 030c 	and.w	r3, r3, #12
     7c2:	2b00      	cmp	r3, #0
     7c4:	d00a      	beq.n	7dc <_ntoa_format+0x50>
      width--;
     7c6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7c8:	3b01      	subs	r3, #1
     7ca:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7cc:	e006      	b.n	7dc <_ntoa_format+0x50>
      buf[len++] = '0';
     7ce:	69fb      	ldr	r3, [r7, #28]
     7d0:	1c5a      	adds	r2, r3, #1
     7d2:	61fa      	str	r2, [r7, #28]
     7d4:	69ba      	ldr	r2, [r7, #24]
     7d6:	4413      	add	r3, r2
     7d8:	2230      	movs	r2, #48	; 0x30
     7da:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7dc:	69fa      	ldr	r2, [r7, #28]
     7de:	6abb      	ldr	r3, [r7, #40]	; 0x28
     7e0:	429a      	cmp	r2, r3
     7e2:	d20a      	bcs.n	7fa <_ntoa_format+0x6e>
     7e4:	69fb      	ldr	r3, [r7, #28]
     7e6:	2b1f      	cmp	r3, #31
     7e8:	d9f1      	bls.n	7ce <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7ea:	e006      	b.n	7fa <_ntoa_format+0x6e>
      buf[len++] = '0';
     7ec:	69fb      	ldr	r3, [r7, #28]
     7ee:	1c5a      	adds	r2, r3, #1
     7f0:	61fa      	str	r2, [r7, #28]
     7f2:	69ba      	ldr	r2, [r7, #24]
     7f4:	4413      	add	r3, r2
     7f6:	2230      	movs	r2, #48	; 0x30
     7f8:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7fa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7fc:	f003 0301 	and.w	r3, r3, #1
     800:	2b00      	cmp	r3, #0
     802:	d006      	beq.n	812 <_ntoa_format+0x86>
     804:	69fa      	ldr	r2, [r7, #28]
     806:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     808:	429a      	cmp	r2, r3
     80a:	d202      	bcs.n	812 <_ntoa_format+0x86>
     80c:	69fb      	ldr	r3, [r7, #28]
     80e:	2b1f      	cmp	r3, #31
     810:	d9ec      	bls.n	7ec <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     812:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     814:	f003 0310 	and.w	r3, r3, #16
     818:	2b00      	cmp	r3, #0
     81a:	d058      	beq.n	8ce <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     81c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     81e:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     822:	2b00      	cmp	r3, #0
     824:	d116      	bne.n	854 <_ntoa_format+0xc8>
     826:	69fb      	ldr	r3, [r7, #28]
     828:	2b00      	cmp	r3, #0
     82a:	d013      	beq.n	854 <_ntoa_format+0xc8>
     82c:	69fa      	ldr	r2, [r7, #28]
     82e:	6abb      	ldr	r3, [r7, #40]	; 0x28
     830:	429a      	cmp	r2, r3
     832:	d003      	beq.n	83c <_ntoa_format+0xb0>
     834:	69fa      	ldr	r2, [r7, #28]
     836:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     838:	429a      	cmp	r2, r3
     83a:	d10b      	bne.n	854 <_ntoa_format+0xc8>
      len--;
     83c:	69fb      	ldr	r3, [r7, #28]
     83e:	3b01      	subs	r3, #1
     840:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     842:	69fb      	ldr	r3, [r7, #28]
     844:	2b00      	cmp	r3, #0
     846:	d005      	beq.n	854 <_ntoa_format+0xc8>
     848:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     84a:	2b10      	cmp	r3, #16
     84c:	d102      	bne.n	854 <_ntoa_format+0xc8>
        len--;
     84e:	69fb      	ldr	r3, [r7, #28]
     850:	3b01      	subs	r3, #1
     852:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     854:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     856:	2b10      	cmp	r3, #16
     858:	d10f      	bne.n	87a <_ntoa_format+0xee>
     85a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     85c:	f003 0320 	and.w	r3, r3, #32
     860:	2b00      	cmp	r3, #0
     862:	d10a      	bne.n	87a <_ntoa_format+0xee>
     864:	69fb      	ldr	r3, [r7, #28]
     866:	2b1f      	cmp	r3, #31
     868:	d807      	bhi.n	87a <_ntoa_format+0xee>
      buf[len++] = 'x';
     86a:	69fb      	ldr	r3, [r7, #28]
     86c:	1c5a      	adds	r2, r3, #1
     86e:	61fa      	str	r2, [r7, #28]
     870:	69ba      	ldr	r2, [r7, #24]
     872:	4413      	add	r3, r2
     874:	2278      	movs	r2, #120	; 0x78
     876:	701a      	strb	r2, [r3, #0]
     878:	e01f      	b.n	8ba <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     87a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     87c:	2b10      	cmp	r3, #16
     87e:	d10f      	bne.n	8a0 <_ntoa_format+0x114>
     880:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     882:	f003 0320 	and.w	r3, r3, #32
     886:	2b00      	cmp	r3, #0
     888:	d00a      	beq.n	8a0 <_ntoa_format+0x114>
     88a:	69fb      	ldr	r3, [r7, #28]
     88c:	2b1f      	cmp	r3, #31
     88e:	d807      	bhi.n	8a0 <_ntoa_format+0x114>
      buf[len++] = 'X';
     890:	69fb      	ldr	r3, [r7, #28]
     892:	1c5a      	adds	r2, r3, #1
     894:	61fa      	str	r2, [r7, #28]
     896:	69ba      	ldr	r2, [r7, #24]
     898:	4413      	add	r3, r2
     89a:	2258      	movs	r2, #88	; 0x58
     89c:	701a      	strb	r2, [r3, #0]
     89e:	e00c      	b.n	8ba <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     8a0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8a2:	2b02      	cmp	r3, #2
     8a4:	d109      	bne.n	8ba <_ntoa_format+0x12e>
     8a6:	69fb      	ldr	r3, [r7, #28]
     8a8:	2b1f      	cmp	r3, #31
     8aa:	d806      	bhi.n	8ba <_ntoa_format+0x12e>
      buf[len++] = 'b';
     8ac:	69fb      	ldr	r3, [r7, #28]
     8ae:	1c5a      	adds	r2, r3, #1
     8b0:	61fa      	str	r2, [r7, #28]
     8b2:	69ba      	ldr	r2, [r7, #24]
     8b4:	4413      	add	r3, r2
     8b6:	2262      	movs	r2, #98	; 0x62
     8b8:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8ba:	69fb      	ldr	r3, [r7, #28]
     8bc:	2b1f      	cmp	r3, #31
     8be:	d806      	bhi.n	8ce <_ntoa_format+0x142>
      buf[len++] = '0';
     8c0:	69fb      	ldr	r3, [r7, #28]
     8c2:	1c5a      	adds	r2, r3, #1
     8c4:	61fa      	str	r2, [r7, #28]
     8c6:	69ba      	ldr	r2, [r7, #24]
     8c8:	4413      	add	r3, r2
     8ca:	2230      	movs	r2, #48	; 0x30
     8cc:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8ce:	69fb      	ldr	r3, [r7, #28]
     8d0:	2b1f      	cmp	r3, #31
     8d2:	d824      	bhi.n	91e <_ntoa_format+0x192>
    if (negative) {
     8d4:	f897 3020 	ldrb.w	r3, [r7, #32]
     8d8:	2b00      	cmp	r3, #0
     8da:	d007      	beq.n	8ec <_ntoa_format+0x160>
      buf[len++] = '-';
     8dc:	69fb      	ldr	r3, [r7, #28]
     8de:	1c5a      	adds	r2, r3, #1
     8e0:	61fa      	str	r2, [r7, #28]
     8e2:	69ba      	ldr	r2, [r7, #24]
     8e4:	4413      	add	r3, r2
     8e6:	222d      	movs	r2, #45	; 0x2d
     8e8:	701a      	strb	r2, [r3, #0]
     8ea:	e018      	b.n	91e <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     8ec:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8ee:	f003 0304 	and.w	r3, r3, #4
     8f2:	2b00      	cmp	r3, #0
     8f4:	d007      	beq.n	906 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     8f6:	69fb      	ldr	r3, [r7, #28]
     8f8:	1c5a      	adds	r2, r3, #1
     8fa:	61fa      	str	r2, [r7, #28]
     8fc:	69ba      	ldr	r2, [r7, #24]
     8fe:	4413      	add	r3, r2
     900:	222b      	movs	r2, #43	; 0x2b
     902:	701a      	strb	r2, [r3, #0]
     904:	e00b      	b.n	91e <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     906:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     908:	f003 0308 	and.w	r3, r3, #8
     90c:	2b00      	cmp	r3, #0
     90e:	d006      	beq.n	91e <_ntoa_format+0x192>
      buf[len++] = ' ';
     910:	69fb      	ldr	r3, [r7, #28]
     912:	1c5a      	adds	r2, r3, #1
     914:	61fa      	str	r2, [r7, #28]
     916:	69ba      	ldr	r2, [r7, #24]
     918:	4413      	add	r3, r2
     91a:	2220      	movs	r2, #32
     91c:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     91e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     920:	9303      	str	r3, [sp, #12]
     922:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     924:	9302      	str	r3, [sp, #8]
     926:	69fb      	ldr	r3, [r7, #28]
     928:	9301      	str	r3, [sp, #4]
     92a:	69bb      	ldr	r3, [r7, #24]
     92c:	9300      	str	r3, [sp, #0]
     92e:	683b      	ldr	r3, [r7, #0]
     930:	687a      	ldr	r2, [r7, #4]
     932:	68b9      	ldr	r1, [r7, #8]
     934:	68f8      	ldr	r0, [r7, #12]
     936:	f7ff fed9 	bl	6ec <_out_rev>
     93a:	4603      	mov	r3, r0
}
     93c:	4618      	mov	r0, r3
     93e:	3710      	adds	r7, #16
     940:	46bd      	mov	sp, r7
     942:	bd80      	pop	{r7, pc}

00000944 <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     944:	b580      	push	{r7, lr}
     946:	b096      	sub	sp, #88	; 0x58
     948:	af08      	add	r7, sp, #32
     94a:	60f8      	str	r0, [r7, #12]
     94c:	60b9      	str	r1, [r7, #8]
     94e:	607a      	str	r2, [r7, #4]
     950:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     952:	2300      	movs	r3, #0
     954:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     956:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     958:	2b00      	cmp	r3, #0
     95a:	d103      	bne.n	964 <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     95c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     95e:	f023 0310 	bic.w	r3, r3, #16
     962:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     964:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     966:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     96a:	2b00      	cmp	r3, #0
     96c:	d002      	beq.n	974 <_ntoa_long+0x30>
     96e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     970:	2b00      	cmp	r3, #0
     972:	d033      	beq.n	9dc <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     974:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     976:	6cba      	ldr	r2, [r7, #72]	; 0x48
     978:	fbb3 f2f2 	udiv	r2, r3, r2
     97c:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     97e:	fb01 f202 	mul.w	r2, r1, r2
     982:	1a9b      	subs	r3, r3, r2
     984:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     988:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     98c:	2b09      	cmp	r3, #9
     98e:	d804      	bhi.n	99a <_ntoa_long+0x56>
     990:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     994:	3330      	adds	r3, #48	; 0x30
     996:	b2da      	uxtb	r2, r3
     998:	e00d      	b.n	9b6 <_ntoa_long+0x72>
     99a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     99c:	f003 0320 	and.w	r3, r3, #32
     9a0:	2b00      	cmp	r3, #0
     9a2:	d001      	beq.n	9a8 <_ntoa_long+0x64>
     9a4:	2241      	movs	r2, #65	; 0x41
     9a6:	e000      	b.n	9aa <_ntoa_long+0x66>
     9a8:	2261      	movs	r2, #97	; 0x61
     9aa:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9ae:	4413      	add	r3, r2
     9b0:	b2db      	uxtb	r3, r3
     9b2:	3b0a      	subs	r3, #10
     9b4:	b2da      	uxtb	r2, r3
     9b6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9b8:	1c59      	adds	r1, r3, #1
     9ba:	6379      	str	r1, [r7, #52]	; 0x34
     9bc:	f107 0138 	add.w	r1, r7, #56	; 0x38
     9c0:	440b      	add	r3, r1
     9c2:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     9c6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     9c8:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9ca:	fbb2 f3f3 	udiv	r3, r2, r3
     9ce:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     9d0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     9d2:	2b00      	cmp	r3, #0
     9d4:	d002      	beq.n	9dc <_ntoa_long+0x98>
     9d6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9d8:	2b1f      	cmp	r3, #31
     9da:	d9cb      	bls.n	974 <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     9dc:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     9de:	9306      	str	r3, [sp, #24]
     9e0:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     9e2:	9305      	str	r3, [sp, #20]
     9e4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     9e6:	9304      	str	r3, [sp, #16]
     9e8:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     9ea:	9303      	str	r3, [sp, #12]
     9ec:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     9f0:	9302      	str	r3, [sp, #8]
     9f2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9f4:	9301      	str	r3, [sp, #4]
     9f6:	f107 0310 	add.w	r3, r7, #16
     9fa:	9300      	str	r3, [sp, #0]
     9fc:	683b      	ldr	r3, [r7, #0]
     9fe:	687a      	ldr	r2, [r7, #4]
     a00:	68b9      	ldr	r1, [r7, #8]
     a02:	68f8      	ldr	r0, [r7, #12]
     a04:	f7ff fec2 	bl	78c <_ntoa_format>
     a08:	4603      	mov	r3, r0
}
     a0a:	4618      	mov	r0, r3
     a0c:	3738      	adds	r7, #56	; 0x38
     a0e:	46bd      	mov	sp, r7
     a10:	bd80      	pop	{r7, pc}

00000a12 <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     a12:	b590      	push	{r4, r7, lr}
     a14:	b099      	sub	sp, #100	; 0x64
     a16:	af06      	add	r7, sp, #24
     a18:	60f8      	str	r0, [r7, #12]
     a1a:	60b9      	str	r1, [r7, #8]
     a1c:	607a      	str	r2, [r7, #4]
     a1e:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     a20:	2300      	movs	r3, #0
     a22:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     a24:	68bb      	ldr	r3, [r7, #8]
     a26:	2b00      	cmp	r3, #0
     a28:	f040 83c0 	bne.w	11ac <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     a2c:	4b9f      	ldr	r3, [pc, #636]	; (cac <_vsnprintf+0x29a>)
     a2e:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     a30:	e3bc      	b.n	11ac <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     a32:	683b      	ldr	r3, [r7, #0]
     a34:	781b      	ldrb	r3, [r3, #0]
     a36:	2b25      	cmp	r3, #37	; 0x25
     a38:	d00c      	beq.n	a54 <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
     a3a:	683b      	ldr	r3, [r7, #0]
     a3c:	7818      	ldrb	r0, [r3, #0]
     a3e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     a40:	1c53      	adds	r3, r2, #1
     a42:	637b      	str	r3, [r7, #52]	; 0x34
     a44:	68fc      	ldr	r4, [r7, #12]
     a46:	687b      	ldr	r3, [r7, #4]
     a48:	68b9      	ldr	r1, [r7, #8]
     a4a:	47a0      	blx	r4
      format++;
     a4c:	683b      	ldr	r3, [r7, #0]
     a4e:	3301      	adds	r3, #1
     a50:	603b      	str	r3, [r7, #0]
      continue;
     a52:	e3ab      	b.n	11ac <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
     a54:	683b      	ldr	r3, [r7, #0]
     a56:	3301      	adds	r3, #1
     a58:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     a5a:	2300      	movs	r3, #0
     a5c:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     a5e:	683b      	ldr	r3, [r7, #0]
     a60:	781b      	ldrb	r3, [r3, #0]
     a62:	3b20      	subs	r3, #32
     a64:	2b10      	cmp	r3, #16
     a66:	d857      	bhi.n	b18 <_vsnprintf+0x106>
     a68:	a201      	add	r2, pc, #4	; (adr r2, a70 <_vsnprintf+0x5e>)
     a6a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     a6e:	bf00      	nop
     a70:	00000af1 	.word	0x00000af1
     a74:	00000b19 	.word	0x00000b19
     a78:	00000b19 	.word	0x00000b19
     a7c:	00000b05 	.word	0x00000b05
     a80:	00000b19 	.word	0x00000b19
     a84:	00000b19 	.word	0x00000b19
     a88:	00000b19 	.word	0x00000b19
     a8c:	00000b19 	.word	0x00000b19
     a90:	00000b19 	.word	0x00000b19
     a94:	00000b19 	.word	0x00000b19
     a98:	00000b19 	.word	0x00000b19
     a9c:	00000add 	.word	0x00000add
     aa0:	00000b19 	.word	0x00000b19
     aa4:	00000ac9 	.word	0x00000ac9
     aa8:	00000b19 	.word	0x00000b19
     aac:	00000b19 	.word	0x00000b19
     ab0:	00000ab5 	.word	0x00000ab5
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     ab4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ab6:	f043 0301 	orr.w	r3, r3, #1
     aba:	647b      	str	r3, [r7, #68]	; 0x44
     abc:	683b      	ldr	r3, [r7, #0]
     abe:	3301      	adds	r3, #1
     ac0:	603b      	str	r3, [r7, #0]
     ac2:	2301      	movs	r3, #1
     ac4:	63bb      	str	r3, [r7, #56]	; 0x38
     ac6:	e02a      	b.n	b1e <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     ac8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     aca:	f043 0302 	orr.w	r3, r3, #2
     ace:	647b      	str	r3, [r7, #68]	; 0x44
     ad0:	683b      	ldr	r3, [r7, #0]
     ad2:	3301      	adds	r3, #1
     ad4:	603b      	str	r3, [r7, #0]
     ad6:	2301      	movs	r3, #1
     ad8:	63bb      	str	r3, [r7, #56]	; 0x38
     ada:	e020      	b.n	b1e <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     adc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ade:	f043 0304 	orr.w	r3, r3, #4
     ae2:	647b      	str	r3, [r7, #68]	; 0x44
     ae4:	683b      	ldr	r3, [r7, #0]
     ae6:	3301      	adds	r3, #1
     ae8:	603b      	str	r3, [r7, #0]
     aea:	2301      	movs	r3, #1
     aec:	63bb      	str	r3, [r7, #56]	; 0x38
     aee:	e016      	b.n	b1e <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     af0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     af2:	f043 0308 	orr.w	r3, r3, #8
     af6:	647b      	str	r3, [r7, #68]	; 0x44
     af8:	683b      	ldr	r3, [r7, #0]
     afa:	3301      	adds	r3, #1
     afc:	603b      	str	r3, [r7, #0]
     afe:	2301      	movs	r3, #1
     b00:	63bb      	str	r3, [r7, #56]	; 0x38
     b02:	e00c      	b.n	b1e <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     b04:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b06:	f043 0310 	orr.w	r3, r3, #16
     b0a:	647b      	str	r3, [r7, #68]	; 0x44
     b0c:	683b      	ldr	r3, [r7, #0]
     b0e:	3301      	adds	r3, #1
     b10:	603b      	str	r3, [r7, #0]
     b12:	2301      	movs	r3, #1
     b14:	63bb      	str	r3, [r7, #56]	; 0x38
     b16:	e002      	b.n	b1e <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     b18:	2300      	movs	r3, #0
     b1a:	63bb      	str	r3, [r7, #56]	; 0x38
     b1c:	bf00      	nop
      }
    } while (n);
     b1e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     b20:	2b00      	cmp	r3, #0
     b22:	d19c      	bne.n	a5e <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
     b24:	2300      	movs	r3, #0
     b26:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     b28:	683b      	ldr	r3, [r7, #0]
     b2a:	781b      	ldrb	r3, [r3, #0]
     b2c:	4618      	mov	r0, r3
     b2e:	f7ff fda3 	bl	678 <_is_digit>
     b32:	4603      	mov	r3, r0
     b34:	2b00      	cmp	r3, #0
     b36:	d005      	beq.n	b44 <_vsnprintf+0x132>
      width = _atoi(&format);
     b38:	463b      	mov	r3, r7
     b3a:	4618      	mov	r0, r3
     b3c:	f7ff fdb2 	bl	6a4 <_atoi>
     b40:	6438      	str	r0, [r7, #64]	; 0x40
     b42:	e018      	b.n	b76 <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     b44:	683b      	ldr	r3, [r7, #0]
     b46:	781b      	ldrb	r3, [r3, #0]
     b48:	2b2a      	cmp	r3, #42	; 0x2a
     b4a:	d114      	bne.n	b76 <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     b4c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b4e:	1d1a      	adds	r2, r3, #4
     b50:	65ba      	str	r2, [r7, #88]	; 0x58
     b52:	681b      	ldr	r3, [r3, #0]
     b54:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     b56:	6a3b      	ldr	r3, [r7, #32]
     b58:	2b00      	cmp	r3, #0
     b5a:	da07      	bge.n	b6c <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     b5c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b5e:	f043 0302 	orr.w	r3, r3, #2
     b62:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     b64:	6a3b      	ldr	r3, [r7, #32]
     b66:	425b      	negs	r3, r3
     b68:	643b      	str	r3, [r7, #64]	; 0x40
     b6a:	e001      	b.n	b70 <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     b6c:	6a3b      	ldr	r3, [r7, #32]
     b6e:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     b70:	683b      	ldr	r3, [r7, #0]
     b72:	3301      	adds	r3, #1
     b74:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     b76:	2300      	movs	r3, #0
     b78:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     b7a:	683b      	ldr	r3, [r7, #0]
     b7c:	781b      	ldrb	r3, [r3, #0]
     b7e:	2b2e      	cmp	r3, #46	; 0x2e
     b80:	d124      	bne.n	bcc <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     b82:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b84:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     b88:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     b8a:	683b      	ldr	r3, [r7, #0]
     b8c:	3301      	adds	r3, #1
     b8e:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     b90:	683b      	ldr	r3, [r7, #0]
     b92:	781b      	ldrb	r3, [r3, #0]
     b94:	4618      	mov	r0, r3
     b96:	f7ff fd6f 	bl	678 <_is_digit>
     b9a:	4603      	mov	r3, r0
     b9c:	2b00      	cmp	r3, #0
     b9e:	d005      	beq.n	bac <_vsnprintf+0x19a>
        precision = _atoi(&format);
     ba0:	463b      	mov	r3, r7
     ba2:	4618      	mov	r0, r3
     ba4:	f7ff fd7e 	bl	6a4 <_atoi>
     ba8:	63f8      	str	r0, [r7, #60]	; 0x3c
     baa:	e00f      	b.n	bcc <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     bac:	683b      	ldr	r3, [r7, #0]
     bae:	781b      	ldrb	r3, [r3, #0]
     bb0:	2b2a      	cmp	r3, #42	; 0x2a
     bb2:	d10b      	bne.n	bcc <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     bb4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     bb6:	1d1a      	adds	r2, r3, #4
     bb8:	65ba      	str	r2, [r7, #88]	; 0x58
     bba:	681b      	ldr	r3, [r3, #0]
     bbc:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     bbe:	69fb      	ldr	r3, [r7, #28]
     bc0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     bc4:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     bc6:	683b      	ldr	r3, [r7, #0]
     bc8:	3301      	adds	r3, #1
     bca:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     bcc:	683b      	ldr	r3, [r7, #0]
     bce:	781b      	ldrb	r3, [r3, #0]
     bd0:	3b68      	subs	r3, #104	; 0x68
     bd2:	2b12      	cmp	r3, #18
     bd4:	d866      	bhi.n	ca4 <_vsnprintf+0x292>
     bd6:	a201      	add	r2, pc, #4	; (adr r2, bdc <_vsnprintf+0x1ca>)
     bd8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     bdc:	00000c4f 	.word	0x00000c4f
     be0:	00000ca5 	.word	0x00000ca5
     be4:	00000c85 	.word	0x00000c85
     be8:	00000ca5 	.word	0x00000ca5
     bec:	00000c29 	.word	0x00000c29
     bf0:	00000ca5 	.word	0x00000ca5
     bf4:	00000ca5 	.word	0x00000ca5
     bf8:	00000ca5 	.word	0x00000ca5
     bfc:	00000ca5 	.word	0x00000ca5
     c00:	00000ca5 	.word	0x00000ca5
     c04:	00000ca5 	.word	0x00000ca5
     c08:	00000ca5 	.word	0x00000ca5
     c0c:	00000c75 	.word	0x00000c75
     c10:	00000ca5 	.word	0x00000ca5
     c14:	00000ca5 	.word	0x00000ca5
     c18:	00000ca5 	.word	0x00000ca5
     c1c:	00000ca5 	.word	0x00000ca5
     c20:	00000ca5 	.word	0x00000ca5
     c24:	00000c95 	.word	0x00000c95
      case 'l' :
        flags |= FLAGS_LONG;
     c28:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c2a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c2e:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c30:	683b      	ldr	r3, [r7, #0]
     c32:	3301      	adds	r3, #1
     c34:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     c36:	683b      	ldr	r3, [r7, #0]
     c38:	781b      	ldrb	r3, [r3, #0]
     c3a:	2b6c      	cmp	r3, #108	; 0x6c
     c3c:	d134      	bne.n	ca8 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     c3e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c40:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c44:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c46:	683b      	ldr	r3, [r7, #0]
     c48:	3301      	adds	r3, #1
     c4a:	603b      	str	r3, [r7, #0]
        }
        break;
     c4c:	e02c      	b.n	ca8 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     c4e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c50:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     c54:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c56:	683b      	ldr	r3, [r7, #0]
     c58:	3301      	adds	r3, #1
     c5a:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     c5c:	683b      	ldr	r3, [r7, #0]
     c5e:	781b      	ldrb	r3, [r3, #0]
     c60:	2b68      	cmp	r3, #104	; 0x68
     c62:	d125      	bne.n	cb0 <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     c64:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c66:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     c6a:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c6c:	683b      	ldr	r3, [r7, #0]
     c6e:	3301      	adds	r3, #1
     c70:	603b      	str	r3, [r7, #0]
        }
        break;
     c72:	e01d      	b.n	cb0 <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c74:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c76:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c7a:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c7c:	683b      	ldr	r3, [r7, #0]
     c7e:	3301      	adds	r3, #1
     c80:	603b      	str	r3, [r7, #0]
        break;
     c82:	e016      	b.n	cb2 <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c84:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c86:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c8a:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c8c:	683b      	ldr	r3, [r7, #0]
     c8e:	3301      	adds	r3, #1
     c90:	603b      	str	r3, [r7, #0]
        break;
     c92:	e00e      	b.n	cb2 <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     c94:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c96:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c9a:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c9c:	683b      	ldr	r3, [r7, #0]
     c9e:	3301      	adds	r3, #1
     ca0:	603b      	str	r3, [r7, #0]
        break;
     ca2:	e006      	b.n	cb2 <_vsnprintf+0x2a0>
      default :
        break;
     ca4:	bf00      	nop
     ca6:	e004      	b.n	cb2 <_vsnprintf+0x2a0>
        break;
     ca8:	bf00      	nop
     caa:	e002      	b.n	cb2 <_vsnprintf+0x2a0>
     cac:	000005d5 	.word	0x000005d5
        break;
     cb0:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     cb2:	683b      	ldr	r3, [r7, #0]
     cb4:	781b      	ldrb	r3, [r3, #0]
     cb6:	3b25      	subs	r3, #37	; 0x25
     cb8:	2b53      	cmp	r3, #83	; 0x53
     cba:	f200 826a 	bhi.w	1192 <_vsnprintf+0x780>
     cbe:	a201      	add	r2, pc, #4	; (adr r2, cc4 <_vsnprintf+0x2b2>)
     cc0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     cc4:	0000117b 	.word	0x0000117b
     cc8:	00001193 	.word	0x00001193
     ccc:	00001193 	.word	0x00001193
     cd0:	00001193 	.word	0x00001193
     cd4:	00001193 	.word	0x00001193
     cd8:	00001193 	.word	0x00001193
     cdc:	00001193 	.word	0x00001193
     ce0:	00001193 	.word	0x00001193
     ce4:	00001193 	.word	0x00001193
     ce8:	00001193 	.word	0x00001193
     cec:	00001193 	.word	0x00001193
     cf0:	00001193 	.word	0x00001193
     cf4:	00001193 	.word	0x00001193
     cf8:	00001193 	.word	0x00001193
     cfc:	00001193 	.word	0x00001193
     d00:	00001193 	.word	0x00001193
     d04:	00001193 	.word	0x00001193
     d08:	00001193 	.word	0x00001193
     d0c:	00001193 	.word	0x00001193
     d10:	00001193 	.word	0x00001193
     d14:	00001193 	.word	0x00001193
     d18:	00001193 	.word	0x00001193
     d1c:	00001193 	.word	0x00001193
     d20:	00001193 	.word	0x00001193
     d24:	00001193 	.word	0x00001193
     d28:	00001193 	.word	0x00001193
     d2c:	00001193 	.word	0x00001193
     d30:	00001193 	.word	0x00001193
     d34:	00001193 	.word	0x00001193
     d38:	00001193 	.word	0x00001193
     d3c:	00001193 	.word	0x00001193
     d40:	00001193 	.word	0x00001193
     d44:	00001193 	.word	0x00001193
     d48:	00001193 	.word	0x00001193
     d4c:	00001193 	.word	0x00001193
     d50:	00001193 	.word	0x00001193
     d54:	00001193 	.word	0x00001193
     d58:	00001193 	.word	0x00001193
     d5c:	00001193 	.word	0x00001193
     d60:	00001193 	.word	0x00001193
     d64:	00001193 	.word	0x00001193
     d68:	00001193 	.word	0x00001193
     d6c:	00001193 	.word	0x00001193
     d70:	00001193 	.word	0x00001193
     d74:	00001193 	.word	0x00001193
     d78:	00001193 	.word	0x00001193
     d7c:	00001193 	.word	0x00001193
     d80:	00001193 	.word	0x00001193
     d84:	00001193 	.word	0x00001193
     d88:	00001193 	.word	0x00001193
     d8c:	00001193 	.word	0x00001193
     d90:	00000e15 	.word	0x00000e15
     d94:	00001193 	.word	0x00001193
     d98:	00001193 	.word	0x00001193
     d9c:	00001193 	.word	0x00001193
     da0:	00001193 	.word	0x00001193
     da4:	00001193 	.word	0x00001193
     da8:	00001193 	.word	0x00001193
     dac:	00001193 	.word	0x00001193
     db0:	00001193 	.word	0x00001193
     db4:	00001193 	.word	0x00001193
     db8:	00000e15 	.word	0x00000e15
     dbc:	00001001 	.word	0x00001001
     dc0:	00000e15 	.word	0x00000e15
     dc4:	00001193 	.word	0x00001193
     dc8:	00001193 	.word	0x00001193
     dcc:	00001193 	.word	0x00001193
     dd0:	00001193 	.word	0x00001193
     dd4:	00000e15 	.word	0x00000e15
     dd8:	00001193 	.word	0x00001193
     ddc:	00001193 	.word	0x00001193
     de0:	00001193 	.word	0x00001193
     de4:	00001193 	.word	0x00001193
     de8:	00001193 	.word	0x00001193
     dec:	00000e15 	.word	0x00000e15
     df0:	00001139 	.word	0x00001139
     df4:	00001193 	.word	0x00001193
     df8:	00001193 	.word	0x00001193
     dfc:	00001075 	.word	0x00001075
     e00:	00001193 	.word	0x00001193
     e04:	00000e15 	.word	0x00000e15
     e08:	00001193 	.word	0x00001193
     e0c:	00001193 	.word	0x00001193
     e10:	00000e15 	.word	0x00000e15
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
     e14:	683b      	ldr	r3, [r7, #0]
     e16:	781b      	ldrb	r3, [r3, #0]
     e18:	2b78      	cmp	r3, #120	; 0x78
     e1a:	d003      	beq.n	e24 <_vsnprintf+0x412>
     e1c:	683b      	ldr	r3, [r7, #0]
     e1e:	781b      	ldrb	r3, [r3, #0]
     e20:	2b58      	cmp	r3, #88	; 0x58
     e22:	d102      	bne.n	e2a <_vsnprintf+0x418>
          base = 16U;
     e24:	2310      	movs	r3, #16
     e26:	633b      	str	r3, [r7, #48]	; 0x30
     e28:	e013      	b.n	e52 <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
     e2a:	683b      	ldr	r3, [r7, #0]
     e2c:	781b      	ldrb	r3, [r3, #0]
     e2e:	2b6f      	cmp	r3, #111	; 0x6f
     e30:	d102      	bne.n	e38 <_vsnprintf+0x426>
          base =  8U;
     e32:	2308      	movs	r3, #8
     e34:	633b      	str	r3, [r7, #48]	; 0x30
     e36:	e00c      	b.n	e52 <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
     e38:	683b      	ldr	r3, [r7, #0]
     e3a:	781b      	ldrb	r3, [r3, #0]
     e3c:	2b62      	cmp	r3, #98	; 0x62
     e3e:	d102      	bne.n	e46 <_vsnprintf+0x434>
          base =  2U;
     e40:	2302      	movs	r3, #2
     e42:	633b      	str	r3, [r7, #48]	; 0x30
     e44:	e005      	b.n	e52 <_vsnprintf+0x440>
        }
        else {
          base = 10U;
     e46:	230a      	movs	r3, #10
     e48:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
     e4a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e4c:	f023 0310 	bic.w	r3, r3, #16
     e50:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
     e52:	683b      	ldr	r3, [r7, #0]
     e54:	781b      	ldrb	r3, [r3, #0]
     e56:	2b58      	cmp	r3, #88	; 0x58
     e58:	d103      	bne.n	e62 <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
     e5a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e5c:	f043 0320 	orr.w	r3, r3, #32
     e60:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
     e62:	683b      	ldr	r3, [r7, #0]
     e64:	781b      	ldrb	r3, [r3, #0]
     e66:	2b69      	cmp	r3, #105	; 0x69
     e68:	d007      	beq.n	e7a <_vsnprintf+0x468>
     e6a:	683b      	ldr	r3, [r7, #0]
     e6c:	781b      	ldrb	r3, [r3, #0]
     e6e:	2b64      	cmp	r3, #100	; 0x64
     e70:	d003      	beq.n	e7a <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
     e72:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e74:	f023 030c 	bic.w	r3, r3, #12
     e78:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
     e7a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e7c:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     e80:	2b00      	cmp	r3, #0
     e82:	d003      	beq.n	e8c <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
     e84:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e86:	f023 0301 	bic.w	r3, r3, #1
     e8a:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
     e8c:	683b      	ldr	r3, [r7, #0]
     e8e:	781b      	ldrb	r3, [r3, #0]
     e90:	2b69      	cmp	r3, #105	; 0x69
     e92:	d003      	beq.n	e9c <_vsnprintf+0x48a>
     e94:	683b      	ldr	r3, [r7, #0]
     e96:	781b      	ldrb	r3, [r3, #0]
     e98:	2b64      	cmp	r3, #100	; 0x64
     e9a:	d15e      	bne.n	f5a <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
     e9c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e9e:	f403 7300 	and.w	r3, r3, #512	; 0x200
     ea2:	2b00      	cmp	r3, #0
     ea4:	f040 80a8 	bne.w	ff8 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     ea8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eaa:	f403 7380 	and.w	r3, r3, #256	; 0x100
     eae:	2b00      	cmp	r3, #0
     eb0:	d01e      	beq.n	ef0 <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
     eb2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     eb4:	1d1a      	adds	r2, r3, #4
     eb6:	65ba      	str	r2, [r7, #88]	; 0x58
     eb8:	681b      	ldr	r3, [r3, #0]
     eba:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     ebc:	693b      	ldr	r3, [r7, #16]
     ebe:	2b00      	cmp	r3, #0
     ec0:	bfb8      	it	lt
     ec2:	425b      	neglt	r3, r3
     ec4:	4619      	mov	r1, r3
     ec6:	693b      	ldr	r3, [r7, #16]
     ec8:	0fdb      	lsrs	r3, r3, #31
     eca:	b2db      	uxtb	r3, r3
     ecc:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     ece:	9205      	str	r2, [sp, #20]
     ed0:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     ed2:	9204      	str	r2, [sp, #16]
     ed4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     ed6:	9203      	str	r2, [sp, #12]
     ed8:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     eda:	9202      	str	r2, [sp, #8]
     edc:	9301      	str	r3, [sp, #4]
     ede:	9100      	str	r1, [sp, #0]
     ee0:	687b      	ldr	r3, [r7, #4]
     ee2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     ee4:	68b9      	ldr	r1, [r7, #8]
     ee6:	68f8      	ldr	r0, [r7, #12]
     ee8:	f7ff fd2c 	bl	944 <_ntoa_long>
     eec:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     eee:	e083      	b.n	ff8 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
     ef0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ef2:	f003 0340 	and.w	r3, r3, #64	; 0x40
     ef6:	2b00      	cmp	r3, #0
     ef8:	d005      	beq.n	f06 <_vsnprintf+0x4f4>
     efa:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     efc:	1d1a      	adds	r2, r3, #4
     efe:	65ba      	str	r2, [r7, #88]	; 0x58
     f00:	681b      	ldr	r3, [r3, #0]
     f02:	b2db      	uxtb	r3, r3
     f04:	e00e      	b.n	f24 <_vsnprintf+0x512>
     f06:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f08:	f003 0380 	and.w	r3, r3, #128	; 0x80
     f0c:	2b00      	cmp	r3, #0
     f0e:	d005      	beq.n	f1c <_vsnprintf+0x50a>
     f10:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f12:	1d1a      	adds	r2, r3, #4
     f14:	65ba      	str	r2, [r7, #88]	; 0x58
     f16:	681b      	ldr	r3, [r3, #0]
     f18:	b21b      	sxth	r3, r3
     f1a:	e003      	b.n	f24 <_vsnprintf+0x512>
     f1c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f1e:	1d1a      	adds	r2, r3, #4
     f20:	65ba      	str	r2, [r7, #88]	; 0x58
     f22:	681b      	ldr	r3, [r3, #0]
     f24:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     f26:	697b      	ldr	r3, [r7, #20]
     f28:	2b00      	cmp	r3, #0
     f2a:	bfb8      	it	lt
     f2c:	425b      	neglt	r3, r3
     f2e:	4619      	mov	r1, r3
     f30:	697b      	ldr	r3, [r7, #20]
     f32:	0fdb      	lsrs	r3, r3, #31
     f34:	b2db      	uxtb	r3, r3
     f36:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f38:	9205      	str	r2, [sp, #20]
     f3a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f3c:	9204      	str	r2, [sp, #16]
     f3e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f40:	9203      	str	r2, [sp, #12]
     f42:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f44:	9202      	str	r2, [sp, #8]
     f46:	9301      	str	r3, [sp, #4]
     f48:	9100      	str	r1, [sp, #0]
     f4a:	687b      	ldr	r3, [r7, #4]
     f4c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f4e:	68b9      	ldr	r1, [r7, #8]
     f50:	68f8      	ldr	r0, [r7, #12]
     f52:	f7ff fcf7 	bl	944 <_ntoa_long>
     f56:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     f58:	e04e      	b.n	ff8 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
     f5a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f5c:	f403 7300 	and.w	r3, r3, #512	; 0x200
     f60:	2b00      	cmp	r3, #0
     f62:	d149      	bne.n	ff8 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     f64:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f66:	f403 7380 	and.w	r3, r3, #256	; 0x100
     f6a:	2b00      	cmp	r3, #0
     f6c:	d016      	beq.n	f9c <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
     f6e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f70:	1d1a      	adds	r2, r3, #4
     f72:	65ba      	str	r2, [r7, #88]	; 0x58
     f74:	681b      	ldr	r3, [r3, #0]
     f76:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f78:	9205      	str	r2, [sp, #20]
     f7a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f7c:	9204      	str	r2, [sp, #16]
     f7e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f80:	9203      	str	r2, [sp, #12]
     f82:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f84:	9202      	str	r2, [sp, #8]
     f86:	2200      	movs	r2, #0
     f88:	9201      	str	r2, [sp, #4]
     f8a:	9300      	str	r3, [sp, #0]
     f8c:	687b      	ldr	r3, [r7, #4]
     f8e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f90:	68b9      	ldr	r1, [r7, #8]
     f92:	68f8      	ldr	r0, [r7, #12]
     f94:	f7ff fcd6 	bl	944 <_ntoa_long>
     f98:	6378      	str	r0, [r7, #52]	; 0x34
     f9a:	e02d      	b.n	ff8 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
     f9c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f9e:	f003 0340 	and.w	r3, r3, #64	; 0x40
     fa2:	2b00      	cmp	r3, #0
     fa4:	d005      	beq.n	fb2 <_vsnprintf+0x5a0>
     fa6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fa8:	1d1a      	adds	r2, r3, #4
     faa:	65ba      	str	r2, [r7, #88]	; 0x58
     fac:	681b      	ldr	r3, [r3, #0]
     fae:	b2db      	uxtb	r3, r3
     fb0:	e00e      	b.n	fd0 <_vsnprintf+0x5be>
     fb2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fb4:	f003 0380 	and.w	r3, r3, #128	; 0x80
     fb8:	2b00      	cmp	r3, #0
     fba:	d005      	beq.n	fc8 <_vsnprintf+0x5b6>
     fbc:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fbe:	1d1a      	adds	r2, r3, #4
     fc0:	65ba      	str	r2, [r7, #88]	; 0x58
     fc2:	681b      	ldr	r3, [r3, #0]
     fc4:	b29b      	uxth	r3, r3
     fc6:	e003      	b.n	fd0 <_vsnprintf+0x5be>
     fc8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fca:	1d1a      	adds	r2, r3, #4
     fcc:	65ba      	str	r2, [r7, #88]	; 0x58
     fce:	681b      	ldr	r3, [r3, #0]
     fd0:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
     fd2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fd4:	9305      	str	r3, [sp, #20]
     fd6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     fd8:	9304      	str	r3, [sp, #16]
     fda:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     fdc:	9303      	str	r3, [sp, #12]
     fde:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     fe0:	9302      	str	r3, [sp, #8]
     fe2:	2300      	movs	r3, #0
     fe4:	9301      	str	r3, [sp, #4]
     fe6:	69bb      	ldr	r3, [r7, #24]
     fe8:	9300      	str	r3, [sp, #0]
     fea:	687b      	ldr	r3, [r7, #4]
     fec:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     fee:	68b9      	ldr	r1, [r7, #8]
     ff0:	68f8      	ldr	r0, [r7, #12]
     ff2:	f7ff fca7 	bl	944 <_ntoa_long>
     ff6:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
     ff8:	683b      	ldr	r3, [r7, #0]
     ffa:	3301      	adds	r3, #1
     ffc:	603b      	str	r3, [r7, #0]
        break;
     ffe:	e0d5      	b.n	11ac <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
    1000:	2301      	movs	r3, #1
    1002:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    1004:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1006:	f003 0302 	and.w	r3, r3, #2
    100a:	2b00      	cmp	r3, #0
    100c:	d10e      	bne.n	102c <_vsnprintf+0x61a>
          while (l++ < width) {
    100e:	e007      	b.n	1020 <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
    1010:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1012:	1c53      	adds	r3, r2, #1
    1014:	637b      	str	r3, [r7, #52]	; 0x34
    1016:	68fc      	ldr	r4, [r7, #12]
    1018:	687b      	ldr	r3, [r7, #4]
    101a:	68b9      	ldr	r1, [r7, #8]
    101c:	2020      	movs	r0, #32
    101e:	47a0      	blx	r4
          while (l++ < width) {
    1020:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1022:	1c5a      	adds	r2, r3, #1
    1024:	62fa      	str	r2, [r7, #44]	; 0x2c
    1026:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1028:	429a      	cmp	r2, r3
    102a:	d8f1      	bhi.n	1010 <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    102c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    102e:	1d1a      	adds	r2, r3, #4
    1030:	65ba      	str	r2, [r7, #88]	; 0x58
    1032:	681b      	ldr	r3, [r3, #0]
    1034:	b2d8      	uxtb	r0, r3
    1036:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1038:	1c53      	adds	r3, r2, #1
    103a:	637b      	str	r3, [r7, #52]	; 0x34
    103c:	68fc      	ldr	r4, [r7, #12]
    103e:	687b      	ldr	r3, [r7, #4]
    1040:	68b9      	ldr	r1, [r7, #8]
    1042:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    1044:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1046:	f003 0302 	and.w	r3, r3, #2
    104a:	2b00      	cmp	r3, #0
    104c:	d00e      	beq.n	106c <_vsnprintf+0x65a>
          while (l++ < width) {
    104e:	e007      	b.n	1060 <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
    1050:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1052:	1c53      	adds	r3, r2, #1
    1054:	637b      	str	r3, [r7, #52]	; 0x34
    1056:	68fc      	ldr	r4, [r7, #12]
    1058:	687b      	ldr	r3, [r7, #4]
    105a:	68b9      	ldr	r1, [r7, #8]
    105c:	2020      	movs	r0, #32
    105e:	47a0      	blx	r4
          while (l++ < width) {
    1060:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1062:	1c5a      	adds	r2, r3, #1
    1064:	62fa      	str	r2, [r7, #44]	; 0x2c
    1066:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1068:	429a      	cmp	r2, r3
    106a:	d8f1      	bhi.n	1050 <_vsnprintf+0x63e>
          }
        }
        format++;
    106c:	683b      	ldr	r3, [r7, #0]
    106e:	3301      	adds	r3, #1
    1070:	603b      	str	r3, [r7, #0]
        break;
    1072:	e09b      	b.n	11ac <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    1074:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1076:	1d1a      	adds	r2, r3, #4
    1078:	65ba      	str	r2, [r7, #88]	; 0x58
    107a:	681b      	ldr	r3, [r3, #0]
    107c:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    107e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1080:	2b00      	cmp	r3, #0
    1082:	d001      	beq.n	1088 <_vsnprintf+0x676>
    1084:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1086:	e001      	b.n	108c <_vsnprintf+0x67a>
    1088:	f04f 33ff 	mov.w	r3, #4294967295
    108c:	4619      	mov	r1, r3
    108e:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    1090:	f7ff fad6 	bl	640 <_strnlen_s>
    1094:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    1096:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1098:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    109c:	2b00      	cmp	r3, #0
    109e:	d005      	beq.n	10ac <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
    10a0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    10a2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10a4:	4293      	cmp	r3, r2
    10a6:	bf28      	it	cs
    10a8:	4613      	movcs	r3, r2
    10aa:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    10ac:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10ae:	f003 0302 	and.w	r3, r3, #2
    10b2:	2b00      	cmp	r3, #0
    10b4:	d11a      	bne.n	10ec <_vsnprintf+0x6da>
          while (l++ < width) {
    10b6:	e007      	b.n	10c8 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
    10b8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10ba:	1c53      	adds	r3, r2, #1
    10bc:	637b      	str	r3, [r7, #52]	; 0x34
    10be:	68fc      	ldr	r4, [r7, #12]
    10c0:	687b      	ldr	r3, [r7, #4]
    10c2:	68b9      	ldr	r1, [r7, #8]
    10c4:	2020      	movs	r0, #32
    10c6:	47a0      	blx	r4
          while (l++ < width) {
    10c8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10ca:	1c5a      	adds	r2, r3, #1
    10cc:	627a      	str	r2, [r7, #36]	; 0x24
    10ce:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    10d0:	429a      	cmp	r2, r3
    10d2:	d8f1      	bhi.n	10b8 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    10d4:	e00a      	b.n	10ec <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
    10d6:	6abb      	ldr	r3, [r7, #40]	; 0x28
    10d8:	1c5a      	adds	r2, r3, #1
    10da:	62ba      	str	r2, [r7, #40]	; 0x28
    10dc:	7818      	ldrb	r0, [r3, #0]
    10de:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10e0:	1c53      	adds	r3, r2, #1
    10e2:	637b      	str	r3, [r7, #52]	; 0x34
    10e4:	68fc      	ldr	r4, [r7, #12]
    10e6:	687b      	ldr	r3, [r7, #4]
    10e8:	68b9      	ldr	r1, [r7, #8]
    10ea:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    10ec:	6abb      	ldr	r3, [r7, #40]	; 0x28
    10ee:	781b      	ldrb	r3, [r3, #0]
    10f0:	2b00      	cmp	r3, #0
    10f2:	d009      	beq.n	1108 <_vsnprintf+0x6f6>
    10f4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10f6:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    10fa:	2b00      	cmp	r3, #0
    10fc:	d0eb      	beq.n	10d6 <_vsnprintf+0x6c4>
    10fe:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1100:	1e5a      	subs	r2, r3, #1
    1102:	63fa      	str	r2, [r7, #60]	; 0x3c
    1104:	2b00      	cmp	r3, #0
    1106:	d1e6      	bne.n	10d6 <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    1108:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    110a:	f003 0302 	and.w	r3, r3, #2
    110e:	2b00      	cmp	r3, #0
    1110:	d00e      	beq.n	1130 <_vsnprintf+0x71e>
          while (l++ < width) {
    1112:	e007      	b.n	1124 <_vsnprintf+0x712>
            out(' ', buffer, idx++, maxlen);
    1114:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1116:	1c53      	adds	r3, r2, #1
    1118:	637b      	str	r3, [r7, #52]	; 0x34
    111a:	68fc      	ldr	r4, [r7, #12]
    111c:	687b      	ldr	r3, [r7, #4]
    111e:	68b9      	ldr	r1, [r7, #8]
    1120:	2020      	movs	r0, #32
    1122:	47a0      	blx	r4
          while (l++ < width) {
    1124:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1126:	1c5a      	adds	r2, r3, #1
    1128:	627a      	str	r2, [r7, #36]	; 0x24
    112a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    112c:	429a      	cmp	r2, r3
    112e:	d8f1      	bhi.n	1114 <_vsnprintf+0x702>
          }
        }
        format++;
    1130:	683b      	ldr	r3, [r7, #0]
    1132:	3301      	adds	r3, #1
    1134:	603b      	str	r3, [r7, #0]
        break;
    1136:	e039      	b.n	11ac <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    1138:	2308      	movs	r3, #8
    113a:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    113c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    113e:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    1142:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    1144:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1146:	1d1a      	adds	r2, r3, #4
    1148:	65ba      	str	r2, [r7, #88]	; 0x58
    114a:	681b      	ldr	r3, [r3, #0]
    114c:	461a      	mov	r2, r3
    114e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1150:	9305      	str	r3, [sp, #20]
    1152:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1154:	9304      	str	r3, [sp, #16]
    1156:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1158:	9303      	str	r3, [sp, #12]
    115a:	2310      	movs	r3, #16
    115c:	9302      	str	r3, [sp, #8]
    115e:	2300      	movs	r3, #0
    1160:	9301      	str	r3, [sp, #4]
    1162:	9200      	str	r2, [sp, #0]
    1164:	687b      	ldr	r3, [r7, #4]
    1166:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1168:	68b9      	ldr	r1, [r7, #8]
    116a:	68f8      	ldr	r0, [r7, #12]
    116c:	f7ff fbea 	bl	944 <_ntoa_long>
    1170:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    1172:	683b      	ldr	r3, [r7, #0]
    1174:	3301      	adds	r3, #1
    1176:	603b      	str	r3, [r7, #0]
        break;
    1178:	e018      	b.n	11ac <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    117a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    117c:	1c53      	adds	r3, r2, #1
    117e:	637b      	str	r3, [r7, #52]	; 0x34
    1180:	68fc      	ldr	r4, [r7, #12]
    1182:	687b      	ldr	r3, [r7, #4]
    1184:	68b9      	ldr	r1, [r7, #8]
    1186:	2025      	movs	r0, #37	; 0x25
    1188:	47a0      	blx	r4
        format++;
    118a:	683b      	ldr	r3, [r7, #0]
    118c:	3301      	adds	r3, #1
    118e:	603b      	str	r3, [r7, #0]
        break;
    1190:	e00c      	b.n	11ac <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    1192:	683b      	ldr	r3, [r7, #0]
    1194:	7818      	ldrb	r0, [r3, #0]
    1196:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1198:	1c53      	adds	r3, r2, #1
    119a:	637b      	str	r3, [r7, #52]	; 0x34
    119c:	68fc      	ldr	r4, [r7, #12]
    119e:	687b      	ldr	r3, [r7, #4]
    11a0:	68b9      	ldr	r1, [r7, #8]
    11a2:	47a0      	blx	r4
        format++;
    11a4:	683b      	ldr	r3, [r7, #0]
    11a6:	3301      	adds	r3, #1
    11a8:	603b      	str	r3, [r7, #0]
        break;
    11aa:	bf00      	nop
  while (*format)
    11ac:	683b      	ldr	r3, [r7, #0]
    11ae:	781b      	ldrb	r3, [r3, #0]
    11b0:	2b00      	cmp	r3, #0
    11b2:	f47f ac3e 	bne.w	a32 <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    11b6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11b8:	687b      	ldr	r3, [r7, #4]
    11ba:	429a      	cmp	r2, r3
    11bc:	d302      	bcc.n	11c4 <_vsnprintf+0x7b2>
    11be:	687b      	ldr	r3, [r7, #4]
    11c0:	1e5a      	subs	r2, r3, #1
    11c2:	e000      	b.n	11c6 <_vsnprintf+0x7b4>
    11c4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11c6:	68fc      	ldr	r4, [r7, #12]
    11c8:	687b      	ldr	r3, [r7, #4]
    11ca:	68b9      	ldr	r1, [r7, #8]
    11cc:	2000      	movs	r0, #0
    11ce:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    11d0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    11d2:	4618      	mov	r0, r3
    11d4:	374c      	adds	r7, #76	; 0x4c
    11d6:	46bd      	mov	sp, r7
    11d8:	bd90      	pop	{r4, r7, pc}

000011da <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    11da:	b40f      	push	{r0, r1, r2, r3}
    11dc:	b580      	push	{r7, lr}
    11de:	b086      	sub	sp, #24
    11e0:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    11e2:	f107 031c 	add.w	r3, r7, #28
    11e6:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    11e8:	1d39      	adds	r1, r7, #4
    11ea:	68bb      	ldr	r3, [r7, #8]
    11ec:	9300      	str	r3, [sp, #0]
    11ee:	69bb      	ldr	r3, [r7, #24]
    11f0:	f04f 32ff 	mov.w	r2, #4294967295
    11f4:	4805      	ldr	r0, [pc, #20]	; (120c <printf_+0x32>)
    11f6:	f7ff fc0c 	bl	a12 <_vsnprintf>
    11fa:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    11fc:	68fb      	ldr	r3, [r7, #12]
}
    11fe:	4618      	mov	r0, r3
    1200:	3710      	adds	r7, #16
    1202:	46bd      	mov	sp, r7
    1204:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1208:	b004      	add	sp, #16
    120a:	4770      	bx	lr
    120c:	000005ef 	.word	0x000005ef

00001210 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    1210:	b40e      	push	{r1, r2, r3}
    1212:	b580      	push	{r7, lr}
    1214:	b087      	sub	sp, #28
    1216:	af02      	add	r7, sp, #8
    1218:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    121a:	f107 0320 	add.w	r3, r7, #32
    121e:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    1220:	68bb      	ldr	r3, [r7, #8]
    1222:	9300      	str	r3, [sp, #0]
    1224:	69fb      	ldr	r3, [r7, #28]
    1226:	f04f 32ff 	mov.w	r2, #4294967295
    122a:	6879      	ldr	r1, [r7, #4]
    122c:	4805      	ldr	r0, [pc, #20]	; (1244 <sprintf_+0x34>)
    122e:	f7ff fbf0 	bl	a12 <_vsnprintf>
    1232:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1234:	68fb      	ldr	r3, [r7, #12]
}
    1236:	4618      	mov	r0, r3
    1238:	3714      	adds	r7, #20
    123a:	46bd      	mov	sp, r7
    123c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1240:	b003      	add	sp, #12
    1242:	4770      	bx	lr
    1244:	000005a9 	.word	0x000005a9

00001248 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1248:	b40c      	push	{r2, r3}
    124a:	b580      	push	{r7, lr}
    124c:	b086      	sub	sp, #24
    124e:	af02      	add	r7, sp, #8
    1250:	6078      	str	r0, [r7, #4]
    1252:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    1254:	f107 031c 	add.w	r3, r7, #28
    1258:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    125a:	68bb      	ldr	r3, [r7, #8]
    125c:	9300      	str	r3, [sp, #0]
    125e:	69bb      	ldr	r3, [r7, #24]
    1260:	683a      	ldr	r2, [r7, #0]
    1262:	6879      	ldr	r1, [r7, #4]
    1264:	4805      	ldr	r0, [pc, #20]	; (127c <snprintf_+0x34>)
    1266:	f7ff fbd4 	bl	a12 <_vsnprintf>
    126a:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    126c:	68fb      	ldr	r3, [r7, #12]
}
    126e:	4618      	mov	r0, r3
    1270:	3710      	adds	r7, #16
    1272:	46bd      	mov	sp, r7
    1274:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1278:	b002      	add	sp, #8
    127a:	4770      	bx	lr
    127c:	000005a9 	.word	0x000005a9

00001280 <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    1280:	b580      	push	{r7, lr}
    1282:	b086      	sub	sp, #24
    1284:	af02      	add	r7, sp, #8
    1286:	6078      	str	r0, [r7, #4]
    1288:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    128a:	f107 010c 	add.w	r1, r7, #12
    128e:	683b      	ldr	r3, [r7, #0]
    1290:	9300      	str	r3, [sp, #0]
    1292:	687b      	ldr	r3, [r7, #4]
    1294:	f04f 32ff 	mov.w	r2, #4294967295
    1298:	4803      	ldr	r0, [pc, #12]	; (12a8 <vprintf_+0x28>)
    129a:	f7ff fbba 	bl	a12 <_vsnprintf>
    129e:	4603      	mov	r3, r0
}
    12a0:	4618      	mov	r0, r3
    12a2:	3710      	adds	r7, #16
    12a4:	46bd      	mov	sp, r7
    12a6:	bd80      	pop	{r7, pc}
    12a8:	000005ef 	.word	0x000005ef

000012ac <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    12ac:	b580      	push	{r7, lr}
    12ae:	b086      	sub	sp, #24
    12b0:	af02      	add	r7, sp, #8
    12b2:	60f8      	str	r0, [r7, #12]
    12b4:	60b9      	str	r1, [r7, #8]
    12b6:	607a      	str	r2, [r7, #4]
    12b8:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    12ba:	683b      	ldr	r3, [r7, #0]
    12bc:	9300      	str	r3, [sp, #0]
    12be:	687b      	ldr	r3, [r7, #4]
    12c0:	68ba      	ldr	r2, [r7, #8]
    12c2:	68f9      	ldr	r1, [r7, #12]
    12c4:	4803      	ldr	r0, [pc, #12]	; (12d4 <vsnprintf_+0x28>)
    12c6:	f7ff fba4 	bl	a12 <_vsnprintf>
    12ca:	4603      	mov	r3, r0
}
    12cc:	4618      	mov	r0, r3
    12ce:	3710      	adds	r7, #16
    12d0:	46bd      	mov	sp, r7
    12d2:	bd80      	pop	{r7, pc}
    12d4:	000005a9 	.word	0x000005a9

000012d8 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    12d8:	b40c      	push	{r2, r3}
    12da:	b580      	push	{r7, lr}
    12dc:	b088      	sub	sp, #32
    12de:	af02      	add	r7, sp, #8
    12e0:	6078      	str	r0, [r7, #4]
    12e2:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    12e4:	f107 0324 	add.w	r3, r7, #36	; 0x24
    12e8:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    12ea:	687b      	ldr	r3, [r7, #4]
    12ec:	60bb      	str	r3, [r7, #8]
    12ee:	683b      	ldr	r3, [r7, #0]
    12f0:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    12f2:	f107 0108 	add.w	r1, r7, #8
    12f6:	693b      	ldr	r3, [r7, #16]
    12f8:	9300      	str	r3, [sp, #0]
    12fa:	6a3b      	ldr	r3, [r7, #32]
    12fc:	f04f 32ff 	mov.w	r2, #4294967295
    1300:	4805      	ldr	r0, [pc, #20]	; (1318 <fctprintf+0x40>)
    1302:	f7ff fb86 	bl	a12 <_vsnprintf>
    1306:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1308:	697b      	ldr	r3, [r7, #20]
}
    130a:	4618      	mov	r0, r3
    130c:	3718      	adds	r7, #24
    130e:	46bd      	mov	sp, r7
    1310:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1314:	b002      	add	sp, #8
    1316:	4770      	bx	lr
    1318:	00000615 	.word	0x00000615

0000131c <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
    131c:	b480      	push	{r7}
    131e:	b083      	sub	sp, #12
    1320:	af00      	add	r7, sp, #0
    1322:	4603      	mov	r3, r0
    1324:	6039      	str	r1, [r7, #0]
    1326:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
    1328:	f997 3007 	ldrsb.w	r3, [r7, #7]
    132c:	2b00      	cmp	r3, #0
    132e:	db0a      	blt.n	1346 <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    1330:	683b      	ldr	r3, [r7, #0]
    1332:	b2da      	uxtb	r2, r3
    1334:	490c      	ldr	r1, [pc, #48]	; (1368 <__NVIC_SetPriority+0x4c>)
    1336:	f997 3007 	ldrsb.w	r3, [r7, #7]
    133a:	0112      	lsls	r2, r2, #4
    133c:	b2d2      	uxtb	r2, r2
    133e:	440b      	add	r3, r1
    1340:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
    1344:	e00a      	b.n	135c <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    1346:	683b      	ldr	r3, [r7, #0]
    1348:	b2da      	uxtb	r2, r3
    134a:	4908      	ldr	r1, [pc, #32]	; (136c <__NVIC_SetPriority+0x50>)
    134c:	79fb      	ldrb	r3, [r7, #7]
    134e:	f003 030f 	and.w	r3, r3, #15
    1352:	3b04      	subs	r3, #4
    1354:	0112      	lsls	r2, r2, #4
    1356:	b2d2      	uxtb	r2, r2
    1358:	440b      	add	r3, r1
    135a:	761a      	strb	r2, [r3, #24]
}
    135c:	bf00      	nop
    135e:	370c      	adds	r7, #12
    1360:	46bd      	mov	sp, r7
    1362:	bc80      	pop	{r7}
    1364:	4770      	bx	lr
    1366:	bf00      	nop
    1368:	e000e100 	.word	0xe000e100
    136c:	e000ed00 	.word	0xe000ed00

00001370 <task_entry_1>:
typedef uint32_t tTaskStack;
void task_sched(void);

typedef void (*task_entry_t)(void* param);
void task_entry_1(void* param)
{
    1370:	b580      	push	{r7, lr}
    1372:	b082      	sub	sp, #8
    1374:	af00      	add	r7, sp, #0
    1376:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    1378:	4903      	ldr	r1, [pc, #12]	; (1388 <task_entry_1+0x18>)
    137a:	4804      	ldr	r0, [pc, #16]	; (138c <task_entry_1+0x1c>)
    137c:	f7ff ff2d 	bl	11da <printf_>
        // delay_ms(1000);
        task_sched();
    1380:	f000 f894 	bl	14ac <task_sched>
        printf("This is %s\n", __func__);
    1384:	e7f8      	b.n	1378 <task_entry_1+0x8>
    1386:	bf00      	nop
    1388:	00002610 	.word	0x00002610
    138c:	00002604 	.word	0x00002604

00001390 <task_entry_2>:
    }
}

void task_entry_2(void* param)
{
    1390:	b580      	push	{r7, lr}
    1392:	b082      	sub	sp, #8
    1394:	af00      	add	r7, sp, #0
    1396:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    1398:	4903      	ldr	r1, [pc, #12]	; (13a8 <task_entry_2+0x18>)
    139a:	4804      	ldr	r0, [pc, #16]	; (13ac <task_entry_2+0x1c>)
    139c:	f7ff ff1d 	bl	11da <printf_>
        // delay_ms(1000);
        task_sched();
    13a0:	f000 f884 	bl	14ac <task_sched>
        printf("This is %s\n", __func__);
    13a4:	e7f8      	b.n	1398 <task_entry_2+0x8>
    13a6:	bf00      	nop
    13a8:	00002620 	.word	0x00002620
    13ac:	00002604 	.word	0x00002604

000013b0 <trigget_pendsv>:
    }
}

void trigget_pendsv(void)
{
    13b0:	b480      	push	{r7}
    13b2:	af00      	add	r7, sp, #0
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    13b4:	4b04      	ldr	r3, [pc, #16]	; (13c8 <trigget_pendsv+0x18>)
    13b6:	685b      	ldr	r3, [r3, #4]
    13b8:	4a03      	ldr	r2, [pc, #12]	; (13c8 <trigget_pendsv+0x18>)
    13ba:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    13be:	6053      	str	r3, [r2, #4]
}
    13c0:	bf00      	nop
    13c2:	46bd      	mov	sp, r7
    13c4:	bc80      	pop	{r7}
    13c6:	4770      	bx	lr
    13c8:	e000ed00 	.word	0xe000ed00

000013cc <task_create>:
tTaskStack stack[2][256];
task_t * current_task;
task_t * next_task;

void task_create(task_t * task, task_entry_t entry, void *param, tTaskStack* stack)
{
    13cc:	b480      	push	{r7}
    13ce:	b085      	sub	sp, #20
    13d0:	af00      	add	r7, sp, #0
    13d2:	60f8      	str	r0, [r7, #12]
    13d4:	60b9      	str	r1, [r7, #8]
    13d6:	607a      	str	r2, [r7, #4]
    13d8:	603b      	str	r3, [r7, #0]
    *(--stack) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    13da:	683b      	ldr	r3, [r7, #0]
    13dc:	3b04      	subs	r3, #4
    13de:	603b      	str	r3, [r7, #0]
    13e0:	683b      	ldr	r3, [r7, #0]
    13e2:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
    13e6:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)entry;                  // 程序的入口地址
    13e8:	683b      	ldr	r3, [r7, #0]
    13ea:	3b04      	subs	r3, #4
    13ec:	603b      	str	r3, [r7, #0]
    13ee:	68ba      	ldr	r2, [r7, #8]
    13f0:	683b      	ldr	r3, [r7, #0]
    13f2:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    13f4:	683b      	ldr	r3, [r7, #0]
    13f6:	3b04      	subs	r3, #4
    13f8:	603b      	str	r3, [r7, #0]
    13fa:	683b      	ldr	r3, [r7, #0]
    13fc:	2214      	movs	r2, #20
    13fe:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x12;                   // R12, 未用
    1400:	683b      	ldr	r3, [r7, #0]
    1402:	3b04      	subs	r3, #4
    1404:	603b      	str	r3, [r7, #0]
    1406:	683b      	ldr	r3, [r7, #0]
    1408:	2212      	movs	r2, #18
    140a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x3;                    // R3, 未用
    140c:	683b      	ldr	r3, [r7, #0]
    140e:	3b04      	subs	r3, #4
    1410:	603b      	str	r3, [r7, #0]
    1412:	683b      	ldr	r3, [r7, #0]
    1414:	2203      	movs	r2, #3
    1416:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x2;                    // R2, 未用
    1418:	683b      	ldr	r3, [r7, #0]
    141a:	3b04      	subs	r3, #4
    141c:	603b      	str	r3, [r7, #0]
    141e:	683b      	ldr	r3, [r7, #0]
    1420:	2202      	movs	r2, #2
    1422:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x1;                    // R1, 未用
    1424:	683b      	ldr	r3, [r7, #0]
    1426:	3b04      	subs	r3, #4
    1428:	603b      	str	r3, [r7, #0]
    142a:	683b      	ldr	r3, [r7, #0]
    142c:	2201      	movs	r2, #1
    142e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    1430:	683b      	ldr	r3, [r7, #0]
    1432:	3b04      	subs	r3, #4
    1434:	603b      	str	r3, [r7, #0]
    1436:	687a      	ldr	r2, [r7, #4]
    1438:	683b      	ldr	r3, [r7, #0]
    143a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x11;                   // R11, 未用
    143c:	683b      	ldr	r3, [r7, #0]
    143e:	3b04      	subs	r3, #4
    1440:	603b      	str	r3, [r7, #0]
    1442:	683b      	ldr	r3, [r7, #0]
    1444:	2211      	movs	r2, #17
    1446:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x10;                   // R10, 未用
    1448:	683b      	ldr	r3, [r7, #0]
    144a:	3b04      	subs	r3, #4
    144c:	603b      	str	r3, [r7, #0]
    144e:	683b      	ldr	r3, [r7, #0]
    1450:	2210      	movs	r2, #16
    1452:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x9;                    // R9, 未用
    1454:	683b      	ldr	r3, [r7, #0]
    1456:	3b04      	subs	r3, #4
    1458:	603b      	str	r3, [r7, #0]
    145a:	683b      	ldr	r3, [r7, #0]
    145c:	2209      	movs	r2, #9
    145e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x8;                    // R8, 未用
    1460:	683b      	ldr	r3, [r7, #0]
    1462:	3b04      	subs	r3, #4
    1464:	603b      	str	r3, [r7, #0]
    1466:	683b      	ldr	r3, [r7, #0]
    1468:	2208      	movs	r2, #8
    146a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x7;                    // R7, 未用
    146c:	683b      	ldr	r3, [r7, #0]
    146e:	3b04      	subs	r3, #4
    1470:	603b      	str	r3, [r7, #0]
    1472:	683b      	ldr	r3, [r7, #0]
    1474:	2207      	movs	r2, #7
    1476:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x6;                    // R6, 未用
    1478:	683b      	ldr	r3, [r7, #0]
    147a:	3b04      	subs	r3, #4
    147c:	603b      	str	r3, [r7, #0]
    147e:	683b      	ldr	r3, [r7, #0]
    1480:	2206      	movs	r2, #6
    1482:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x5;                    // R5, 未用
    1484:	683b      	ldr	r3, [r7, #0]
    1486:	3b04      	subs	r3, #4
    1488:	603b      	str	r3, [r7, #0]
    148a:	683b      	ldr	r3, [r7, #0]
    148c:	2205      	movs	r2, #5
    148e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x4;                    // R4, 未用
    1490:	683b      	ldr	r3, [r7, #0]
    1492:	3b04      	subs	r3, #4
    1494:	603b      	str	r3, [r7, #0]
    1496:	683b      	ldr	r3, [r7, #0]
    1498:	2204      	movs	r2, #4
    149a:	601a      	str	r2, [r3, #0]
    task->stack = stack;
    149c:	68fb      	ldr	r3, [r7, #12]
    149e:	683a      	ldr	r2, [r7, #0]
    14a0:	601a      	str	r2, [r3, #0]
}
    14a2:	bf00      	nop
    14a4:	3714      	adds	r7, #20
    14a6:	46bd      	mov	sp, r7
    14a8:	bc80      	pop	{r7}
    14aa:	4770      	bx	lr

000014ac <task_sched>:

void task_sched(void)
{
    14ac:	b580      	push	{r7, lr}
    14ae:	af00      	add	r7, sp, #0
    if (current_task == &task1) {
    14b0:	4b07      	ldr	r3, [pc, #28]	; (14d0 <task_sched+0x24>)
    14b2:	681b      	ldr	r3, [r3, #0]
    14b4:	4a07      	ldr	r2, [pc, #28]	; (14d4 <task_sched+0x28>)
    14b6:	4293      	cmp	r3, r2
    14b8:	d103      	bne.n	14c2 <task_sched+0x16>
        next_task = &task2;
    14ba:	4b07      	ldr	r3, [pc, #28]	; (14d8 <task_sched+0x2c>)
    14bc:	4a07      	ldr	r2, [pc, #28]	; (14dc <task_sched+0x30>)
    14be:	601a      	str	r2, [r3, #0]
    14c0:	e002      	b.n	14c8 <task_sched+0x1c>
    } else {
        next_task = &task1;
    14c2:	4b05      	ldr	r3, [pc, #20]	; (14d8 <task_sched+0x2c>)
    14c4:	4a03      	ldr	r2, [pc, #12]	; (14d4 <task_sched+0x28>)
    14c6:	601a      	str	r2, [r3, #0]
    }
    trigget_pendsv();
    14c8:	f7ff ff72 	bl	13b0 <trigget_pendsv>
}
    14cc:	bf00      	nop
    14ce:	bd80      	pop	{r7, pc}
    14d0:	20000908 	.word	0x20000908
    14d4:	20000900 	.word	0x20000900
    14d8:	200000fc 	.word	0x200000fc
    14dc:	20000904 	.word	0x20000904

000014e0 <run_first_task>:

void run_first_task(void)
{
    14e0:	b580      	push	{r7, lr}
    14e2:	b082      	sub	sp, #8
    14e4:	af00      	add	r7, sp, #0
    14e6:	2300      	movs	r3, #0
    14e8:	607b      	str	r3, [r7, #4]
  __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
    14ea:	687b      	ldr	r3, [r7, #4]
    14ec:	f383 8809 	msr	PSP, r3
    __set_PSP(0);
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    14f0:	21ff      	movs	r1, #255	; 0xff
    14f2:	f06f 0001 	mvn.w	r0, #1
    14f6:	f7ff ff11 	bl	131c <__NVIC_SetPriority>
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    14fa:	4b05      	ldr	r3, [pc, #20]	; (1510 <run_first_task+0x30>)
    14fc:	685b      	ldr	r3, [r3, #4]
    14fe:	4a04      	ldr	r2, [pc, #16]	; (1510 <run_first_task+0x30>)
    1500:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    1504:	6053      	str	r3, [r2, #4]
}
    1506:	bf00      	nop
    1508:	3708      	adds	r7, #8
    150a:	46bd      	mov	sp, r7
    150c:	bd80      	pop	{r7, pc}
    150e:	bf00      	nop
    1510:	e000ed00 	.word	0xe000ed00

00001514 <task_start>:

void task_start(void)
{
    1514:	b580      	push	{r7, lr}
    1516:	af00      	add	r7, sp, #0
    task_create(&task1, task_entry_1, (void*)0x11111111, &stack[0]);
    1518:	4b0a      	ldr	r3, [pc, #40]	; (1544 <task_start+0x30>)
    151a:	f04f 3211 	mov.w	r2, #286331153	; 0x11111111
    151e:	490a      	ldr	r1, [pc, #40]	; (1548 <task_start+0x34>)
    1520:	480a      	ldr	r0, [pc, #40]	; (154c <task_start+0x38>)
    1522:	f7ff ff53 	bl	13cc <task_create>
    task_create(&task2, task_entry_2, (void*)0x22222222, &stack[1]);
    1526:	4b0a      	ldr	r3, [pc, #40]	; (1550 <task_start+0x3c>)
    1528:	f04f 3222 	mov.w	r2, #572662306	; 0x22222222
    152c:	4909      	ldr	r1, [pc, #36]	; (1554 <task_start+0x40>)
    152e:	480a      	ldr	r0, [pc, #40]	; (1558 <task_start+0x44>)
    1530:	f7ff ff4c 	bl	13cc <task_create>
    current_task = &task1;
    1534:	4b09      	ldr	r3, [pc, #36]	; (155c <task_start+0x48>)
    1536:	4a05      	ldr	r2, [pc, #20]	; (154c <task_start+0x38>)
    1538:	601a      	str	r2, [r3, #0]
    
    run_first_task();
    153a:	f7ff ffd1 	bl	14e0 <run_first_task>
}
    153e:	bf00      	nop
    1540:	bd80      	pop	{r7, pc}
    1542:	bf00      	nop
    1544:	20000100 	.word	0x20000100
    1548:	00001371 	.word	0x00001371
    154c:	20000900 	.word	0x20000900
    1550:	20000500 	.word	0x20000500
    1554:	00001391 	.word	0x00001391
    1558:	20000904 	.word	0x20000904
    155c:	20000908 	.word	0x20000908

00001560 <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    1560:	b580      	push	{r7, lr}
    1562:	b084      	sub	sp, #16
    1564:	af00      	add	r7, sp, #0
    1566:	6078      	str	r0, [r7, #4]
    1568:	460b      	mov	r3, r1
    156a:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    156c:	f107 030f 	add.w	r3, r7, #15
    1570:	4618      	mov	r0, r3
    1572:	f7fe fe8e 	bl	292 <lite_getchar>
    {
        if (count >= max_len)
    1576:	4b22      	ldr	r3, [pc, #136]	; (1600 <shell_get_line+0xa0>)
    1578:	781b      	ldrb	r3, [r3, #0]
    157a:	78fa      	ldrb	r2, [r7, #3]
    157c:	429a      	cmp	r2, r3
    157e:	d804      	bhi.n	158a <shell_get_line+0x2a>
        {
            count = 0;
    1580:	4b1f      	ldr	r3, [pc, #124]	; (1600 <shell_get_line+0xa0>)
    1582:	2200      	movs	r2, #0
    1584:	701a      	strb	r2, [r3, #0]
            return 1;
    1586:	2301      	movs	r3, #1
    1588:	e036      	b.n	15f8 <shell_get_line+0x98>
        }
        line[count] = chr;
    158a:	4b1d      	ldr	r3, [pc, #116]	; (1600 <shell_get_line+0xa0>)
    158c:	781b      	ldrb	r3, [r3, #0]
    158e:	461a      	mov	r2, r3
    1590:	687b      	ldr	r3, [r7, #4]
    1592:	4413      	add	r3, r2
    1594:	7bfa      	ldrb	r2, [r7, #15]
    1596:	701a      	strb	r2, [r3, #0]
        switch (chr)
    1598:	7bfb      	ldrb	r3, [r7, #15]
    159a:	2b0a      	cmp	r3, #10
    159c:	d013      	beq.n	15c6 <shell_get_line+0x66>
    159e:	2b0a      	cmp	r3, #10
    15a0:	dc02      	bgt.n	15a8 <shell_get_line+0x48>
    15a2:	2b08      	cmp	r3, #8
    15a4:	d004      	beq.n	15b0 <shell_get_line+0x50>
    15a6:	e01a      	b.n	15de <shell_get_line+0x7e>
    15a8:	2b0d      	cmp	r3, #13
    15aa:	d00c      	beq.n	15c6 <shell_get_line+0x66>
    15ac:	2b7f      	cmp	r3, #127	; 0x7f
    15ae:	d116      	bne.n	15de <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    15b0:	4b13      	ldr	r3, [pc, #76]	; (1600 <shell_get_line+0xa0>)
    15b2:	781b      	ldrb	r3, [r3, #0]
    15b4:	2b00      	cmp	r3, #0
    15b6:	d019      	beq.n	15ec <shell_get_line+0x8c>
            {
                count--;
    15b8:	4b11      	ldr	r3, [pc, #68]	; (1600 <shell_get_line+0xa0>)
    15ba:	781b      	ldrb	r3, [r3, #0]
    15bc:	3b01      	subs	r3, #1
    15be:	b2da      	uxtb	r2, r3
    15c0:	4b0f      	ldr	r3, [pc, #60]	; (1600 <shell_get_line+0xa0>)
    15c2:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    15c4:	e012      	b.n	15ec <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    15c6:	4b0e      	ldr	r3, [pc, #56]	; (1600 <shell_get_line+0xa0>)
    15c8:	781b      	ldrb	r3, [r3, #0]
    15ca:	461a      	mov	r2, r3
    15cc:	687b      	ldr	r3, [r7, #4]
    15ce:	4413      	add	r3, r2
    15d0:	2200      	movs	r2, #0
    15d2:	701a      	strb	r2, [r3, #0]
            count = 0;
    15d4:	4b0a      	ldr	r3, [pc, #40]	; (1600 <shell_get_line+0xa0>)
    15d6:	2200      	movs	r2, #0
    15d8:	701a      	strb	r2, [r3, #0]
            return 1;
    15da:	2301      	movs	r3, #1
    15dc:	e00c      	b.n	15f8 <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    15de:	4b08      	ldr	r3, [pc, #32]	; (1600 <shell_get_line+0xa0>)
    15e0:	781b      	ldrb	r3, [r3, #0]
    15e2:	3301      	adds	r3, #1
    15e4:	b2da      	uxtb	r2, r3
    15e6:	4b06      	ldr	r3, [pc, #24]	; (1600 <shell_get_line+0xa0>)
    15e8:	701a      	strb	r2, [r3, #0]
    15ea:	e000      	b.n	15ee <shell_get_line+0x8e>
        break;
    15ec:	bf00      	nop
        }
        lite_putchar(chr);
    15ee:	7bfb      	ldrb	r3, [r7, #15]
    15f0:	4618      	mov	r0, r3
    15f2:	f7fe fe60 	bl	2b6 <lite_putchar>
    }
    return 0;
    15f6:	2300      	movs	r3, #0
}
    15f8:	4618      	mov	r0, r3
    15fa:	3710      	adds	r7, #16
    15fc:	46bd      	mov	sp, r7
    15fe:	bd80      	pop	{r7, pc}
    1600:	20000024 	.word	0x20000024

00001604 <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    1604:	b580      	push	{r7, lr}
    1606:	b088      	sub	sp, #32
    1608:	af00      	add	r7, sp, #0
    160a:	60f8      	str	r0, [r7, #12]
    160c:	60b9      	str	r1, [r7, #8]
    160e:	4613      	mov	r3, r2
    1610:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    1612:	2300      	movs	r3, #0
    1614:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    1616:	4912      	ldr	r1, [pc, #72]	; (1660 <shell_get_args+0x5c>)
    1618:	68f8      	ldr	r0, [r7, #12]
    161a:	f000 f8a1 	bl	1760 <strtok>
    161e:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1620:	2300      	movs	r3, #0
    1622:	77fb      	strb	r3, [r7, #31]
    1624:	e00d      	b.n	1642 <shell_get_args+0x3e>
    {
        args[i] = ptr;
    1626:	7ffb      	ldrb	r3, [r7, #31]
    1628:	009b      	lsls	r3, r3, #2
    162a:	68ba      	ldr	r2, [r7, #8]
    162c:	4413      	add	r3, r2
    162e:	69ba      	ldr	r2, [r7, #24]
    1630:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    1632:	490c      	ldr	r1, [pc, #48]	; (1664 <shell_get_args+0x60>)
    1634:	2000      	movs	r0, #0
    1636:	f000 f893 	bl	1760 <strtok>
    163a:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    163c:	7ffb      	ldrb	r3, [r7, #31]
    163e:	3301      	adds	r3, #1
    1640:	77fb      	strb	r3, [r7, #31]
    1642:	69bb      	ldr	r3, [r7, #24]
    1644:	2b00      	cmp	r3, #0
    1646:	d003      	beq.n	1650 <shell_get_args+0x4c>
    1648:	7ffa      	ldrb	r2, [r7, #31]
    164a:	79fb      	ldrb	r3, [r7, #7]
    164c:	429a      	cmp	r2, r3
    164e:	d3ea      	bcc.n	1626 <shell_get_args+0x22>
    }
    ret = i;
    1650:	7ffb      	ldrb	r3, [r7, #31]
    1652:	75fb      	strb	r3, [r7, #23]
    return ret;
    1654:	7dfb      	ldrb	r3, [r7, #23]
}
    1656:	4618      	mov	r0, r3
    1658:	3720      	adds	r7, #32
    165a:	46bd      	mov	sp, r7
    165c:	bd80      	pop	{r7, pc}
    165e:	bf00      	nop
    1660:	00002630 	.word	0x00002630
    1664:	00002634 	.word	0x00002634

00001668 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    1668:	b580      	push	{r7, lr}
    166a:	b084      	sub	sp, #16
    166c:	af00      	add	r7, sp, #0
    166e:	6078      	str	r0, [r7, #4]
    1670:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    1672:	4b0b      	ldr	r3, [pc, #44]	; (16a0 <shell_help_func+0x38>)
    1674:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1676:	e00a      	b.n	168e <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    1678:	68fb      	ldr	r3, [r7, #12]
    167a:	6819      	ldr	r1, [r3, #0]
    167c:	68fb      	ldr	r3, [r7, #12]
    167e:	685b      	ldr	r3, [r3, #4]
    1680:	461a      	mov	r2, r3
    1682:	4808      	ldr	r0, [pc, #32]	; (16a4 <shell_help_func+0x3c>)
    1684:	f7ff fda9 	bl	11da <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1688:	68fb      	ldr	r3, [r7, #12]
    168a:	330c      	adds	r3, #12
    168c:	60fb      	str	r3, [r7, #12]
    168e:	68fb      	ldr	r3, [r7, #12]
    1690:	4a05      	ldr	r2, [pc, #20]	; (16a8 <shell_help_func+0x40>)
    1692:	4293      	cmp	r3, r2
    1694:	d3f0      	bcc.n	1678 <shell_help_func+0x10>
    }
    return 0;
    1696:	2300      	movs	r3, #0
}
    1698:	4618      	mov	r0, r3
    169a:	3710      	adds	r7, #16
    169c:	46bd      	mov	sp, r7
    169e:	bd80      	pop	{r7, pc}
    16a0:	0000251c 	.word	0x0000251c
    16a4:	00002638 	.word	0x00002638
    16a8:	000033f0 	.word	0x000033f0

000016ac <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    16ac:	b480      	push	{r7}
    16ae:	b089      	sub	sp, #36	; 0x24
    16b0:	af00      	add	r7, sp, #0
    16b2:	60f8      	str	r0, [r7, #12]
    16b4:	60b9      	str	r1, [r7, #8]
    16b6:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    16b8:	68fb      	ldr	r3, [r7, #12]
    16ba:	2b00      	cmp	r3, #0
    16bc:	d107      	bne.n	16ce <strtok_r+0x22>
    16be:	687b      	ldr	r3, [r7, #4]
    16c0:	681b      	ldr	r3, [r3, #0]
    16c2:	60fb      	str	r3, [r7, #12]
    16c4:	68fb      	ldr	r3, [r7, #12]
    16c6:	2b00      	cmp	r3, #0
    16c8:	d101      	bne.n	16ce <strtok_r+0x22>
    {
    return (NULL);
    16ca:	2300      	movs	r3, #0
    16cc:	e043      	b.n	1756 <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    16ce:	bf00      	nop
c = *string_org++;
    16d0:	68fb      	ldr	r3, [r7, #12]
    16d2:	1c5a      	adds	r2, r3, #1
    16d4:	60fa      	str	r2, [r7, #12]
    16d6:	781b      	ldrb	r3, [r3, #0]
    16d8:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    16da:	68bb      	ldr	r3, [r7, #8]
    16dc:	61fb      	str	r3, [r7, #28]
    16de:	e004      	b.n	16ea <strtok_r+0x3e>
    {
    if (c == sc)
    16e0:	7efa      	ldrb	r2, [r7, #27]
    16e2:	7ebb      	ldrb	r3, [r7, #26]
    16e4:	429a      	cmp	r2, r3
    16e6:	d100      	bne.n	16ea <strtok_r+0x3e>
        {
        goto count;
    16e8:	e7f2      	b.n	16d0 <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    16ea:	69fb      	ldr	r3, [r7, #28]
    16ec:	1c5a      	adds	r2, r3, #1
    16ee:	61fa      	str	r2, [r7, #28]
    16f0:	781b      	ldrb	r3, [r3, #0]
    16f2:	76bb      	strb	r3, [r7, #26]
    16f4:	7ebb      	ldrb	r3, [r7, #26]
    16f6:	2b00      	cmp	r3, #0
    16f8:	d1f2      	bne.n	16e0 <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    16fa:	7efb      	ldrb	r3, [r7, #27]
    16fc:	2b00      	cmp	r3, #0
    16fe:	d104      	bne.n	170a <strtok_r+0x5e>
    {
    *last = NULL;
    1700:	687b      	ldr	r3, [r7, #4]
    1702:	2200      	movs	r2, #0
    1704:	601a      	str	r2, [r3, #0]
    return (NULL);
    1706:	2300      	movs	r3, #0
    1708:	e025      	b.n	1756 <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    170a:	68fb      	ldr	r3, [r7, #12]
    170c:	3b01      	subs	r3, #1
    170e:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    1710:	68fb      	ldr	r3, [r7, #12]
    1712:	1c5a      	adds	r2, r3, #1
    1714:	60fa      	str	r2, [r7, #12]
    1716:	781b      	ldrb	r3, [r3, #0]
    1718:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    171a:	68bb      	ldr	r3, [r7, #8]
    171c:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    171e:	69fb      	ldr	r3, [r7, #28]
    1720:	1c5a      	adds	r2, r3, #1
    1722:	61fa      	str	r2, [r7, #28]
    1724:	781b      	ldrb	r3, [r3, #0]
    1726:	76bb      	strb	r3, [r7, #26]
    1728:	7eba      	ldrb	r2, [r7, #26]
    172a:	7efb      	ldrb	r3, [r7, #27]
    172c:	429a      	cmp	r2, r3
    172e:	d10e      	bne.n	174e <strtok_r+0xa2>
            {
            if (c == 0)
    1730:	7efb      	ldrb	r3, [r7, #27]
    1732:	2b00      	cmp	r3, #0
    1734:	d102      	bne.n	173c <strtok_r+0x90>
                {
                string_org = NULL;
    1736:	2300      	movs	r3, #0
    1738:	60fb      	str	r3, [r7, #12]
    173a:	e003      	b.n	1744 <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    173c:	68fb      	ldr	r3, [r7, #12]
    173e:	3b01      	subs	r3, #1
    1740:	2200      	movs	r2, #0
    1742:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    1744:	687b      	ldr	r3, [r7, #4]
    1746:	68fa      	ldr	r2, [r7, #12]
    1748:	601a      	str	r2, [r3, #0]
            return (tok);
    174a:	697b      	ldr	r3, [r7, #20]
    174c:	e003      	b.n	1756 <strtok_r+0xaa>
            }
        } while (sc != 0);
    174e:	7ebb      	ldrb	r3, [r7, #26]
    1750:	2b00      	cmp	r3, #0
    1752:	d1e4      	bne.n	171e <strtok_r+0x72>
    c = *string_org++;
    1754:	e7dc      	b.n	1710 <strtok_r+0x64>
    }
    
}
    1756:	4618      	mov	r0, r3
    1758:	3724      	adds	r7, #36	; 0x24
    175a:	46bd      	mov	sp, r7
    175c:	bc80      	pop	{r7}
    175e:	4770      	bx	lr

00001760 <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    1760:	b580      	push	{r7, lr}
    1762:	b082      	sub	sp, #8
    1764:	af00      	add	r7, sp, #0
    1766:	6078      	str	r0, [r7, #4]
    1768:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    176a:	4a05      	ldr	r2, [pc, #20]	; (1780 <strtok+0x20>)
    176c:	6839      	ldr	r1, [r7, #0]
    176e:	6878      	ldr	r0, [r7, #4]
    1770:	f7ff ff9c 	bl	16ac <strtok_r>
    1774:	4603      	mov	r3, r0
}
    1776:	4618      	mov	r0, r3
    1778:	3708      	adds	r7, #8
    177a:	46bd      	mov	sp, r7
    177c:	bd80      	pop	{r7, pc}
    177e:	bf00      	nop
    1780:	20000028 	.word	0x20000028

00001784 <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    1784:	b480      	push	{r7}
    1786:	b087      	sub	sp, #28
    1788:	af00      	add	r7, sp, #0
    178a:	60f8      	str	r0, [r7, #12]
    178c:	60b9      	str	r1, [r7, #8]
    178e:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    1790:	68fb      	ldr	r3, [r7, #12]
    1792:	2b00      	cmp	r3, #0
    1794:	d002      	beq.n	179c <memcpy+0x18>
    1796:	68bb      	ldr	r3, [r7, #8]
    1798:	2b00      	cmp	r3, #0
    179a:	d101      	bne.n	17a0 <memcpy+0x1c>
		return NULL;
    179c:	2300      	movs	r3, #0
    179e:	e012      	b.n	17c6 <memcpy+0x42>
	char *tempDest = (char *)dest;
    17a0:	68fb      	ldr	r3, [r7, #12]
    17a2:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    17a4:	68bb      	ldr	r3, [r7, #8]
    17a6:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    17a8:	e007      	b.n	17ba <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    17aa:	693a      	ldr	r2, [r7, #16]
    17ac:	1c53      	adds	r3, r2, #1
    17ae:	613b      	str	r3, [r7, #16]
    17b0:	697b      	ldr	r3, [r7, #20]
    17b2:	1c59      	adds	r1, r3, #1
    17b4:	6179      	str	r1, [r7, #20]
    17b6:	7812      	ldrb	r2, [r2, #0]
    17b8:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    17ba:	687b      	ldr	r3, [r7, #4]
    17bc:	1e5a      	subs	r2, r3, #1
    17be:	607a      	str	r2, [r7, #4]
    17c0:	2b00      	cmp	r3, #0
    17c2:	d1f2      	bne.n	17aa <memcpy+0x26>
	return dest;	
    17c4:	68fb      	ldr	r3, [r7, #12]
}
    17c6:	4618      	mov	r0, r3
    17c8:	371c      	adds	r7, #28
    17ca:	46bd      	mov	sp, r7
    17cc:	bc80      	pop	{r7}
    17ce:	4770      	bx	lr

000017d0 <memset>:
void *memset(void *s, int c, size_t n)
{
    17d0:	b480      	push	{r7}
    17d2:	b087      	sub	sp, #28
    17d4:	af00      	add	r7, sp, #0
    17d6:	60f8      	str	r0, [r7, #12]
    17d8:	60b9      	str	r1, [r7, #8]
    17da:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    17dc:	68fb      	ldr	r3, [r7, #12]
    17de:	2b00      	cmp	r3, #0
    17e0:	d101      	bne.n	17e6 <memset+0x16>
		return NULL;
    17e2:	2300      	movs	r3, #0
    17e4:	e00e      	b.n	1804 <memset+0x34>
	char * tmpS = (char *)s;
    17e6:	68fb      	ldr	r3, [r7, #12]
    17e8:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    17ea:	e005      	b.n	17f8 <memset+0x28>
		*tmpS++ = c;
    17ec:	697b      	ldr	r3, [r7, #20]
    17ee:	1c5a      	adds	r2, r3, #1
    17f0:	617a      	str	r2, [r7, #20]
    17f2:	68ba      	ldr	r2, [r7, #8]
    17f4:	b2d2      	uxtb	r2, r2
    17f6:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    17f8:	687b      	ldr	r3, [r7, #4]
    17fa:	1e5a      	subs	r2, r3, #1
    17fc:	607a      	str	r2, [r7, #4]
    17fe:	2b00      	cmp	r3, #0
    1800:	d1f4      	bne.n	17ec <memset+0x1c>
		return s; 
    1802:	68fb      	ldr	r3, [r7, #12]
}
    1804:	4618      	mov	r0, r3
    1806:	371c      	adds	r7, #28
    1808:	46bd      	mov	sp, r7
    180a:	bc80      	pop	{r7}
    180c:	4770      	bx	lr

0000180e <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    180e:	b480      	push	{r7}
    1810:	b085      	sub	sp, #20
    1812:	af00      	add	r7, sp, #0
    1814:	6078      	str	r0, [r7, #4]
    1816:	6039      	str	r1, [r7, #0]
	int ret = 0;
    1818:	2300      	movs	r3, #0
    181a:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    181c:	e005      	b.n	182a <strcmp+0x1c>
	{
		str1++;
    181e:	687b      	ldr	r3, [r7, #4]
    1820:	3301      	adds	r3, #1
    1822:	607b      	str	r3, [r7, #4]
		str2++;
    1824:	683b      	ldr	r3, [r7, #0]
    1826:	3301      	adds	r3, #1
    1828:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    182a:	687b      	ldr	r3, [r7, #4]
    182c:	781b      	ldrb	r3, [r3, #0]
    182e:	461a      	mov	r2, r3
    1830:	683b      	ldr	r3, [r7, #0]
    1832:	781b      	ldrb	r3, [r3, #0]
    1834:	1ad3      	subs	r3, r2, r3
    1836:	60fb      	str	r3, [r7, #12]
    1838:	68fb      	ldr	r3, [r7, #12]
    183a:	2b00      	cmp	r3, #0
    183c:	d103      	bne.n	1846 <strcmp+0x38>
    183e:	687b      	ldr	r3, [r7, #4]
    1840:	781b      	ldrb	r3, [r3, #0]
    1842:	2b00      	cmp	r3, #0
    1844:	d1eb      	bne.n	181e <strcmp+0x10>
	}
 
 
	if (ret < 0)
    1846:	68fb      	ldr	r3, [r7, #12]
    1848:	2b00      	cmp	r3, #0
    184a:	da02      	bge.n	1852 <strcmp+0x44>
	{
		return -1;
    184c:	f04f 33ff 	mov.w	r3, #4294967295
    1850:	e005      	b.n	185e <strcmp+0x50>
	}
	else if (ret > 0)
    1852:	68fb      	ldr	r3, [r7, #12]
    1854:	2b00      	cmp	r3, #0
    1856:	dd01      	ble.n	185c <strcmp+0x4e>
	{
		return 1;
    1858:	2301      	movs	r3, #1
    185a:	e000      	b.n	185e <strcmp+0x50>
	}
	return 0;
    185c:	2300      	movs	r3, #0
}
    185e:	4618      	mov	r0, r3
    1860:	3714      	adds	r7, #20
    1862:	46bd      	mov	sp, r7
    1864:	bc80      	pop	{r7}
    1866:	4770      	bx	lr

00001868 <shell_main>:
#endif
void shell_main(void)
{
    1868:	b580      	push	{r7, lr}
    186a:	b0c2      	sub	sp, #264	; 0x108
    186c:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    186e:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1872:	2280      	movs	r2, #128	; 0x80
    1874:	2100      	movs	r1, #0
    1876:	4618      	mov	r0, r3
    1878:	f7ff ffaa 	bl	17d0 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    187c:	463b      	mov	r3, r7
    187e:	4618      	mov	r0, r3
    1880:	2380      	movs	r3, #128	; 0x80
    1882:	461a      	mov	r2, r3
    1884:	2100      	movs	r1, #0
    1886:	f7ff ffa3 	bl	17d0 <memset>

    uint8_t args_count = 0;
    188a:	2300      	movs	r3, #0
    188c:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1890:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1894:	2180      	movs	r1, #128	; 0x80
    1896:	4618      	mov	r0, r3
    1898:	f7ff fe62 	bl	1560 <shell_get_line>
    189c:	4603      	mov	r3, r0
    189e:	2b00      	cmp	r3, #0
    18a0:	d0f6      	beq.n	1890 <shell_main+0x28>
        {
            printf("\n");
    18a2:	4827      	ldr	r0, [pc, #156]	; (1940 <shell_main+0xd8>)
    18a4:	f7ff fc99 	bl	11da <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    18a8:	4639      	mov	r1, r7
    18aa:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18ae:	2220      	movs	r2, #32
    18b0:	4618      	mov	r0, r3
    18b2:	f7ff fea7 	bl	1604 <shell_get_args>
    18b6:	4603      	mov	r3, r0
    18b8:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    18bc:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    18c0:	2b00      	cmp	r3, #0
    18c2:	d033      	beq.n	192c <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    18c4:	4b1f      	ldr	r3, [pc, #124]	; (1944 <shell_main+0xdc>)
    18c6:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    18ca:	e02a      	b.n	1922 <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    18cc:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    18d0:	681a      	ldr	r2, [r3, #0]
    18d2:	463b      	mov	r3, r7
    18d4:	681b      	ldr	r3, [r3, #0]
    18d6:	4619      	mov	r1, r3
    18d8:	4610      	mov	r0, r2
    18da:	f7ff ff98 	bl	180e <strcmp>
    18de:	4603      	mov	r3, r0
    18e0:	2b00      	cmp	r3, #0
    18e2:	d10a      	bne.n	18fa <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    18e4:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    18e8:	689b      	ldr	r3, [r3, #8]
    18ea:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    18ee:	1e50      	subs	r0, r2, #1
    18f0:	463a      	mov	r2, r7
    18f2:	3204      	adds	r2, #4
    18f4:	4611      	mov	r1, r2
    18f6:	4798      	blx	r3
    18f8:	e00e      	b.n	1918 <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    18fa:	463b      	mov	r3, r7
    18fc:	681b      	ldr	r3, [r3, #0]
    18fe:	4619      	mov	r1, r3
    1900:	4811      	ldr	r0, [pc, #68]	; (1948 <shell_main+0xe0>)
    1902:	f7ff ff84 	bl	180e <strcmp>
    1906:	4603      	mov	r3, r0
    1908:	2b00      	cmp	r3, #0
    190a:	d013      	beq.n	1934 <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    190c:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1910:	4619      	mov	r1, r3
    1912:	480e      	ldr	r0, [pc, #56]	; (194c <shell_main+0xe4>)
    1914:	f7ff fc61 	bl	11da <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1918:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    191c:	330c      	adds	r3, #12
    191e:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    1922:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1926:	4a0a      	ldr	r2, [pc, #40]	; (1950 <shell_main+0xe8>)
    1928:	4293      	cmp	r3, r2
    192a:	d3cf      	bcc.n	18cc <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    192c:	4809      	ldr	r0, [pc, #36]	; (1954 <shell_main+0xec>)
    192e:	f7ff fc54 	bl	11da <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1932:	e7ad      	b.n	1890 <shell_main+0x28>
                        return;
    1934:	bf00      	nop
        }
    }
    return;
}
    1936:	f507 7784 	add.w	r7, r7, #264	; 0x108
    193a:	46bd      	mov	sp, r7
    193c:	bd80      	pop	{r7, pc}
    193e:	bf00      	nop
    1940:	00002660 	.word	0x00002660
    1944:	0000251c 	.word	0x0000251c
    1948:	00002664 	.word	0x00002664
    194c:	0000266c 	.word	0x0000266c
    1950:	000033f0 	.word	0x000033f0
    1954:	00002688 	.word	0x00002688

00001958 <shell_start>:

void shell_start(void)
{
    1958:	b580      	push	{r7, lr}
    195a:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    195c:	f7ff ff84 	bl	1868 <shell_main>
    1960:	bf00      	nop
    1962:	bd80      	pop	{r7, pc}

00001964 <test_div>:
#include <stdint.h>
#include "hal_log.h"
#include "backtrace.h"
#include "hal_platform.h"
int test_div(void)
{
    1964:	b480      	push	{r7}
    1966:	b085      	sub	sp, #20
    1968:	af00      	add	r7, sp, #0
SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    196a:	4b0d      	ldr	r3, [pc, #52]	; (19a0 <test_div+0x3c>)
    196c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
    196e:	4a0c      	ldr	r2, [pc, #48]	; (19a0 <test_div+0x3c>)
    1970:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
    1974:	6253      	str	r3, [r2, #36]	; 0x24
SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
    1976:	4b0a      	ldr	r3, [pc, #40]	; (19a0 <test_div+0x3c>)
    1978:	695b      	ldr	r3, [r3, #20]
    197a:	4a09      	ldr	r2, [pc, #36]	; (19a0 <test_div+0x3c>)
    197c:	f043 0318 	orr.w	r3, r3, #24
    1980:	6153      	str	r3, [r2, #20]

int a = 1;
    1982:	2301      	movs	r3, #1
    1984:	60fb      	str	r3, [r7, #12]
int b = 0;
    1986:	2300      	movs	r3, #0
    1988:	60bb      	str	r3, [r7, #8]
int z = a / b;
    198a:	68fa      	ldr	r2, [r7, #12]
    198c:	68bb      	ldr	r3, [r7, #8]
    198e:	fb92 f3f3 	sdiv	r3, r2, r3
    1992:	607b      	str	r3, [r7, #4]

return z;
    1994:	687b      	ldr	r3, [r7, #4]
}
    1996:	4618      	mov	r0, r3
    1998:	3714      	adds	r7, #20
    199a:	46bd      	mov	sp, r7
    199c:	bc80      	pop	{r7}
    199e:	4770      	bx	lr
    19a0:	e000ed00 	.word	0xe000ed00

000019a4 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
    19a4:	b580      	push	{r7, lr}
    19a6:	b084      	sub	sp, #16
    19a8:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    19aa:	4b16      	ldr	r3, [pc, #88]	; (1a04 <fault_test_by_unalign+0x60>)
    19ac:	60fb      	str	r3, [r7, #12]
volatile int * p;
volatile int value;

*SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
    19ae:	68fb      	ldr	r3, [r7, #12]
    19b0:	681b      	ldr	r3, [r3, #0]
    19b2:	f043 0208 	orr.w	r2, r3, #8
    19b6:	68fb      	ldr	r3, [r7, #12]
    19b8:	601a      	str	r2, [r3, #0]

p = (int *) 0x00;
    19ba:	2300      	movs	r3, #0
    19bc:	60bb      	str	r3, [r7, #8]
value = *p;
    19be:	68bb      	ldr	r3, [r7, #8]
    19c0:	681b      	ldr	r3, [r3, #0]
    19c2:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19c4:	68bb      	ldr	r3, [r7, #8]
    19c6:	687a      	ldr	r2, [r7, #4]
    19c8:	4619      	mov	r1, r3
    19ca:	480f      	ldr	r0, [pc, #60]	; (1a08 <fault_test_by_unalign+0x64>)
    19cc:	f7ff fc05 	bl	11da <printf_>

p = (int *) 0x04;
    19d0:	2304      	movs	r3, #4
    19d2:	60bb      	str	r3, [r7, #8]
value = *p;
    19d4:	68bb      	ldr	r3, [r7, #8]
    19d6:	681b      	ldr	r3, [r3, #0]
    19d8:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19da:	68bb      	ldr	r3, [r7, #8]
    19dc:	687a      	ldr	r2, [r7, #4]
    19de:	4619      	mov	r1, r3
    19e0:	4809      	ldr	r0, [pc, #36]	; (1a08 <fault_test_by_unalign+0x64>)
    19e2:	f7ff fbfa 	bl	11da <printf_>

p = (int *) 0x03;
    19e6:	2303      	movs	r3, #3
    19e8:	60bb      	str	r3, [r7, #8]
value = *p;
    19ea:	68bb      	ldr	r3, [r7, #8]
    19ec:	681b      	ldr	r3, [r3, #0]
    19ee:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19f0:	68bb      	ldr	r3, [r7, #8]
    19f2:	687a      	ldr	r2, [r7, #4]
    19f4:	4619      	mov	r1, r3
    19f6:	4804      	ldr	r0, [pc, #16]	; (1a08 <fault_test_by_unalign+0x64>)
    19f8:	f7ff fbef 	bl	11da <printf_>
}
    19fc:	bf00      	nop
    19fe:	3710      	adds	r7, #16
    1a00:	46bd      	mov	sp, r7
    1a02:	bd80      	pop	{r7, pc}
    1a04:	e000ed14 	.word	0xe000ed14
    1a08:	00002690 	.word	0x00002690

00001a0c <fault_test_by_div0>:

void fault_test_by_div0(void) {
    1a0c:	b580      	push	{r7, lr}
    1a0e:	b084      	sub	sp, #16
    1a10:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    1a12:	4b0c      	ldr	r3, [pc, #48]	; (1a44 <fault_test_by_div0+0x38>)
    1a14:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
    1a16:	68fb      	ldr	r3, [r7, #12]
    1a18:	681b      	ldr	r3, [r3, #0]
    1a1a:	f043 0210 	orr.w	r2, r3, #16
    1a1e:	68fb      	ldr	r3, [r7, #12]
    1a20:	601a      	str	r2, [r3, #0]

x = 10;
    1a22:	230a      	movs	r3, #10
    1a24:	60bb      	str	r3, [r7, #8]
y = 0;
    1a26:	2300      	movs	r3, #0
    1a28:	607b      	str	r3, [r7, #4]
z = x / y;
    1a2a:	68ba      	ldr	r2, [r7, #8]
    1a2c:	687b      	ldr	r3, [r7, #4]
    1a2e:	fb92 f3f3 	sdiv	r3, r2, r3
    1a32:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
    1a34:	6839      	ldr	r1, [r7, #0]
    1a36:	4804      	ldr	r0, [pc, #16]	; (1a48 <fault_test_by_div0+0x3c>)
    1a38:	f7ff fbcf 	bl	11da <printf_>
}
    1a3c:	bf00      	nop
    1a3e:	3710      	adds	r7, #16
    1a40:	46bd      	mov	sp, r7
    1a42:	bd80      	pop	{r7, pc}
    1a44:	e000ed14 	.word	0xe000ed14
    1a48:	000026a8 	.word	0x000026a8

00001a4c <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    1a4c:	b580      	push	{r7, lr}
    1a4e:	b084      	sub	sp, #16
    1a50:	af00      	add	r7, sp, #0
    1a52:	60f8      	str	r0, [r7, #12]
    1a54:	60b9      	str	r1, [r7, #8]
    1a56:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
    1a58:	687b      	ldr	r3, [r7, #4]
    1a5a:	68fa      	ldr	r2, [r7, #12]
    1a5c:	429a      	cmp	r2, r3
    1a5e:	d902      	bls.n	1a66 <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
    1a60:	68fb      	ldr	r3, [r7, #12]
    1a62:	607b      	str	r3, [r7, #4]
    1a64:	e009      	b.n	1a7a <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
    1a66:	68fa      	ldr	r2, [r7, #12]
    1a68:	68bb      	ldr	r3, [r7, #8]
    1a6a:	441a      	add	r2, r3
    1a6c:	687b      	ldr	r3, [r7, #4]
    1a6e:	429a      	cmp	r2, r3
    1a70:	d203      	bcs.n	1a7a <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    1a72:	68fa      	ldr	r2, [r7, #12]
    1a74:	68bb      	ldr	r3, [r7, #8]
    1a76:	4413      	add	r3, r2
    1a78:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
    1a7a:	490e      	ldr	r1, [pc, #56]	; (1ab4 <dump_stack+0x68>)
    1a7c:	480e      	ldr	r0, [pc, #56]	; (1ab8 <dump_stack+0x6c>)
    1a7e:	f7ff fbac 	bl	11da <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1a82:	e009      	b.n	1a98 <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    1a84:	6879      	ldr	r1, [r7, #4]
    1a86:	687b      	ldr	r3, [r7, #4]
    1a88:	681b      	ldr	r3, [r3, #0]
    1a8a:	461a      	mov	r2, r3
    1a8c:	480b      	ldr	r0, [pc, #44]	; (1abc <dump_stack+0x70>)
    1a8e:	f7ff fba4 	bl	11da <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1a92:	687b      	ldr	r3, [r7, #4]
    1a94:	3304      	adds	r3, #4
    1a96:	607b      	str	r3, [r7, #4]
    1a98:	68fa      	ldr	r2, [r7, #12]
    1a9a:	68bb      	ldr	r3, [r7, #8]
    1a9c:	441a      	add	r2, r3
    1a9e:	687b      	ldr	r3, [r7, #4]
    1aa0:	429a      	cmp	r2, r3
    1aa2:	d8ef      	bhi.n	1a84 <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
    1aa4:	4903      	ldr	r1, [pc, #12]	; (1ab4 <dump_stack+0x68>)
    1aa6:	4804      	ldr	r0, [pc, #16]	; (1ab8 <dump_stack+0x6c>)
    1aa8:	f7ff fb97 	bl	11da <printf_>
}
    1aac:	bf00      	nop
    1aae:	3710      	adds	r7, #16
    1ab0:	46bd      	mov	sp, r7
    1ab2:	bd80      	pop	{r7, pc}
    1ab4:	000031c8 	.word	0x000031c8
    1ab8:	000026b0 	.word	0x000026b0
    1abc:	000026dc 	.word	0x000026dc

00001ac0 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    1ac0:	b480      	push	{r7}
    1ac2:	b085      	sub	sp, #20
    1ac4:	af00      	add	r7, sp, #0
    1ac6:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
    1ac8:	687b      	ldr	r3, [r7, #4]
    1aca:	881b      	ldrh	r3, [r3, #0]
    1acc:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
    1ace:	687b      	ldr	r3, [r7, #4]
    1ad0:	3302      	adds	r3, #2
    1ad2:	881b      	ldrh	r3, [r3, #0]
    1ad4:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
    1ad6:	89bb      	ldrh	r3, [r7, #12]
    1ad8:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1adc:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
    1ae0:	d107      	bne.n	1af2 <disassembly_ins_is_bl_blx+0x32>
    1ae2:	89fb      	ldrh	r3, [r7, #14]
    1ae4:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1ae8:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
    1aec:	d101      	bne.n	1af2 <disassembly_ins_is_bl_blx+0x32>
        return true;
    1aee:	2301      	movs	r3, #1
    1af0:	e008      	b.n	1b04 <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
    1af2:	89bb      	ldrh	r3, [r7, #12]
    1af4:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1af8:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1afc:	d101      	bne.n	1b02 <disassembly_ins_is_bl_blx+0x42>
        return true;
    1afe:	2301      	movs	r3, #1
    1b00:	e000      	b.n	1b04 <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
    1b02:	2300      	movs	r3, #0
    }
}
    1b04:	4618      	mov	r0, r3
    1b06:	3714      	adds	r7, #20
    1b08:	46bd      	mov	sp, r7
    1b0a:	bc80      	pop	{r7}
    1b0c:	4770      	bx	lr

00001b0e <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    1b0e:	b580      	push	{r7, lr}
    1b10:	b08a      	sub	sp, #40	; 0x28
    1b12:	af02      	add	r7, sp, #8
    1b14:	60f8      	str	r0, [r7, #12]
    1b16:	60b9      	str	r1, [r7, #8]
    1b18:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
    1b1a:	2300      	movs	r3, #0
    1b1c:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
    1b1e:	2300      	movs	r3, #0
    1b20:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
    1b22:	687a      	ldr	r2, [r7, #4]
    1b24:	4935      	ldr	r1, [pc, #212]	; (1bfc <backtrace_call_stack+0xee>)
    1b26:	4836      	ldr	r0, [pc, #216]	; (1c00 <backtrace_call_stack+0xf2>)
    1b28:	f7ff fb57 	bl	11da <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1b2c:	e058      	b.n	1be0 <backtrace_call_stack+0xd2>
uint32_t i = 0;
    1b2e:	2300      	movs	r3, #0
    1b30:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
    1b32:	687b      	ldr	r3, [r7, #4]
    1b34:	4a33      	ldr	r2, [pc, #204]	; (1c04 <backtrace_call_stack+0xf6>)
    1b36:	4293      	cmp	r3, r2
    1b38:	d103      	bne.n	1b42 <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
    1b3a:	6879      	ldr	r1, [r7, #4]
    1b3c:	4832      	ldr	r0, [pc, #200]	; (1c08 <backtrace_call_stack+0xfa>)
    1b3e:	f7ff fb4c 	bl	11da <printf_>
    }
    lr = *((uint32_t *) sp);
    1b42:	687b      	ldr	r3, [r7, #4]
    1b44:	681b      	ldr	r3, [r3, #0]
    1b46:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
    1b48:	693b      	ldr	r3, [r7, #16]
    1b4a:	f003 0301 	and.w	r3, r3, #1
    1b4e:	2b00      	cmp	r3, #0
    1b50:	d040      	beq.n	1bd4 <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
    1b52:	693b      	ldr	r3, [r7, #16]
    1b54:	3b01      	subs	r3, #1
    1b56:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
    1b58:	4b2c      	ldr	r3, [pc, #176]	; (1c0c <backtrace_call_stack+0xfe>)
    1b5a:	681b      	ldr	r3, [r3, #0]
    1b5c:	693a      	ldr	r2, [r7, #16]
    1b5e:	429a      	cmp	r2, r3
    1b60:	d33b      	bcc.n	1bda <backtrace_call_stack+0xcc>
    1b62:	4b2a      	ldr	r3, [pc, #168]	; (1c0c <backtrace_call_stack+0xfe>)
    1b64:	681a      	ldr	r2, [r3, #0]
    1b66:	4b2a      	ldr	r3, [pc, #168]	; (1c10 <backtrace_call_stack+0x102>)
    1b68:	681b      	ldr	r3, [r3, #0]
    1b6a:	4413      	add	r3, r2
    1b6c:	693a      	ldr	r2, [r7, #16]
    1b6e:	429a      	cmp	r2, r3
    1b70:	d833      	bhi.n	1bda <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
    1b72:	693b      	ldr	r3, [r7, #16]
    1b74:	3b04      	subs	r3, #4
    1b76:	4618      	mov	r0, r3
    1b78:	f7ff ffa2 	bl	1ac0 <disassembly_ins_is_bl_blx>
    1b7c:	4603      	mov	r3, r0
    1b7e:	2b00      	cmp	r3, #0
    1b80:	d02b      	beq.n	1bda <backtrace_call_stack+0xcc>
    1b82:	69fa      	ldr	r2, [r7, #28]
    1b84:	68bb      	ldr	r3, [r7, #8]
    1b86:	429a      	cmp	r2, r3
    1b88:	d227      	bcs.n	1bda <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
    1b8a:	69fb      	ldr	r3, [r7, #28]
    1b8c:	2b02      	cmp	r3, #2
    1b8e:	d108      	bne.n	1ba2 <backtrace_call_stack+0x94>
    1b90:	7efb      	ldrb	r3, [r7, #27]
    1b92:	2b00      	cmp	r3, #0
    1b94:	d005      	beq.n	1ba2 <backtrace_call_stack+0x94>
    1b96:	68fb      	ldr	r3, [r7, #12]
    1b98:	3304      	adds	r3, #4
    1b9a:	681b      	ldr	r3, [r3, #0]
    1b9c:	693a      	ldr	r2, [r7, #16]
    1b9e:	429a      	cmp	r2, r3
    1ba0:	d01a      	beq.n	1bd8 <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1ba2:	693b      	ldr	r3, [r7, #16]
    1ba4:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1ba6:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1ba8:	693b      	ldr	r3, [r7, #16]
    1baa:	3b04      	subs	r3, #4
    1bac:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1bae:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1bb0:	693b      	ldr	r3, [r7, #16]
    1bb2:	3b02      	subs	r3, #2
    1bb4:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1bb6:	9300      	str	r3, [sp, #0]
    1bb8:	460b      	mov	r3, r1
    1bba:	6939      	ldr	r1, [r7, #16]
    1bbc:	4815      	ldr	r0, [pc, #84]	; (1c14 <backtrace_call_stack+0x106>)
    1bbe:	f7ff fb0c 	bl	11da <printf_>
                buffer[depth++] = lr;
    1bc2:	69fb      	ldr	r3, [r7, #28]
    1bc4:	1c5a      	adds	r2, r3, #1
    1bc6:	61fa      	str	r2, [r7, #28]
    1bc8:	009b      	lsls	r3, r3, #2
    1bca:	68fa      	ldr	r2, [r7, #12]
    1bcc:	4413      	add	r3, r2
    1bce:	693a      	ldr	r2, [r7, #16]
    1bd0:	601a      	str	r2, [r3, #0]
    1bd2:	e002      	b.n	1bda <backtrace_call_stack+0xcc>
        continue;
    1bd4:	bf00      	nop
    1bd6:	e000      	b.n	1bda <backtrace_call_stack+0xcc>
            continue;
    1bd8:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1bda:	687b      	ldr	r3, [r7, #4]
    1bdc:	3304      	adds	r3, #4
    1bde:	607b      	str	r3, [r7, #4]
    1be0:	4b0d      	ldr	r3, [pc, #52]	; (1c18 <backtrace_call_stack+0x10a>)
    1be2:	681a      	ldr	r2, [r3, #0]
    1be4:	4b0d      	ldr	r3, [pc, #52]	; (1c1c <backtrace_call_stack+0x10e>)
    1be6:	681b      	ldr	r3, [r3, #0]
    1be8:	4413      	add	r3, r2
    1bea:	687a      	ldr	r2, [r7, #4]
    1bec:	429a      	cmp	r2, r3
    1bee:	d39e      	bcc.n	1b2e <backtrace_call_stack+0x20>
    }
}

return depth;
    1bf0:	69fb      	ldr	r3, [r7, #28]
}
    1bf2:	4618      	mov	r0, r3
    1bf4:	3720      	adds	r7, #32
    1bf6:	46bd      	mov	sp, r7
    1bf8:	bd80      	pop	{r7, pc}
    1bfa:	bf00      	nop
    1bfc:	000031d4 	.word	0x000031d4
    1c00:	00002ff0 	.word	0x00002ff0
    1c04:	08080541 	.word	0x08080541
    1c08:	00003000 	.word	0x00003000
    1c0c:	2000002c 	.word	0x2000002c
    1c10:	20000034 	.word	0x20000034
    1c14:	0000300c 	.word	0x0000300c
    1c18:	20000038 	.word	0x20000038
    1c1c:	20000040 	.word	0x20000040

00001c20 <print_call_stack>:

void print_call_stack(uint32_t sp) {
    1c20:	b580      	push	{r7, lr}
    1c22:	b096      	sub	sp, #88	; 0x58
    1c24:	af02      	add	r7, sp, #8
    1c26:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
    1c28:	2300      	movs	r3, #0
    1c2a:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
    1c2c:	f107 0308 	add.w	r3, r7, #8
    1c30:	2240      	movs	r2, #64	; 0x40
    1c32:	2100      	movs	r1, #0
    1c34:	4618      	mov	r0, r3
    1c36:	f7ff fdcb 	bl	17d0 <memset>
    printf("[%s] ====================================\n", __func__);
    1c3a:	4928      	ldr	r1, [pc, #160]	; (1cdc <print_call_stack+0xbc>)
    1c3c:	4828      	ldr	r0, [pc, #160]	; (1ce0 <print_call_stack+0xc0>)
    1c3e:	f7ff facc 	bl	11da <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
    1c42:	f107 0308 	add.w	r3, r7, #8
    1c46:	687a      	ldr	r2, [r7, #4]
    1c48:	2110      	movs	r1, #16
    1c4a:	4618      	mov	r0, r3
    1c4c:	f7ff ff5f 	bl	1b0e <backtrace_call_stack>
    1c50:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
    1c52:	4922      	ldr	r1, [pc, #136]	; (1cdc <print_call_stack+0xbc>)
    1c54:	4822      	ldr	r0, [pc, #136]	; (1ce0 <print_call_stack+0xc0>)
    1c56:	f7ff fac0 	bl	11da <printf_>

    for (i = 0; i < cur_depth; i++) {
    1c5a:	2300      	movs	r3, #0
    1c5c:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c5e:	e01b      	b.n	1c98 <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
    1c60:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c62:	4613      	mov	r3, r2
    1c64:	00db      	lsls	r3, r3, #3
    1c66:	4413      	add	r3, r2
    1c68:	4a1e      	ldr	r2, [pc, #120]	; (1ce4 <print_call_stack+0xc4>)
    1c6a:	1898      	adds	r0, r3, r2
    1c6c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c6e:	009b      	lsls	r3, r3, #2
    1c70:	f107 0250 	add.w	r2, r7, #80	; 0x50
    1c74:	4413      	add	r3, r2
    1c76:	f853 3c48 	ldr.w	r3, [r3, #-72]
    1c7a:	461a      	mov	r2, r3
    1c7c:	491a      	ldr	r1, [pc, #104]	; (1ce8 <print_call_stack+0xc8>)
    1c7e:	f7ff fac7 	bl	1210 <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
    1c82:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c84:	4613      	mov	r3, r2
    1c86:	00db      	lsls	r3, r3, #3
    1c88:	4413      	add	r3, r2
    1c8a:	3308      	adds	r3, #8
    1c8c:	4a15      	ldr	r2, [pc, #84]	; (1ce4 <print_call_stack+0xc4>)
    1c8e:	2120      	movs	r1, #32
    1c90:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
    1c92:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c94:	3301      	adds	r3, #1
    1c96:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c98:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c9a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1c9c:	429a      	cmp	r2, r3
    1c9e:	d3df      	bcc.n	1c60 <print_call_stack+0x40>
    }

    if (cur_depth) {
    1ca0:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1ca2:	2b00      	cmp	r3, #0
    1ca4:	d00f      	beq.n	1cc6 <print_call_stack+0xa6>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
    1ca6:	4811      	ldr	r0, [pc, #68]	; (1cec <print_call_stack+0xcc>)
    1ca8:	6cba      	ldr	r2, [r7, #72]	; 0x48
    1caa:	4613      	mov	r3, r2
    1cac:	00db      	lsls	r3, r3, #3
    1cae:	441a      	add	r2, r3
    1cb0:	4b0c      	ldr	r3, [pc, #48]	; (1ce4 <print_call_stack+0xc4>)
    1cb2:	9300      	str	r3, [sp, #0]
    1cb4:	4613      	mov	r3, r2
    1cb6:	4a0e      	ldr	r2, [pc, #56]	; (1cf0 <print_call_stack+0xd0>)
    1cb8:	490e      	ldr	r1, [pc, #56]	; (1cf4 <print_call_stack+0xd4>)
    1cba:	f7ff fa8e 	bl	11da <printf_>
    1cbe:	480e      	ldr	r0, [pc, #56]	; (1cf8 <print_call_stack+0xd8>)
    1cc0:	f7ff fa8b 	bl	11da <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
    1cc4:	e006      	b.n	1cd4 <print_call_stack+0xb4>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    1cc6:	4b0d      	ldr	r3, [pc, #52]	; (1cfc <print_call_stack+0xdc>)
    1cc8:	4618      	mov	r0, r3
    1cca:	f7ff fa86 	bl	11da <printf_>
    1cce:	480a      	ldr	r0, [pc, #40]	; (1cf8 <print_call_stack+0xd8>)
    1cd0:	f7ff fa83 	bl	11da <printf_>
}
    1cd4:	bf00      	nop
    1cd6:	3750      	adds	r7, #80	; 0x50
    1cd8:	46bd      	mov	sp, r7
    1cda:	bd80      	pop	{r7, pc}
    1cdc:	000031ec 	.word	0x000031ec
    1ce0:	000026b0 	.word	0x000026b0
    1ce4:	20000050 	.word	0x20000050
    1ce8:	00003050 	.word	0x00003050
    1cec:	0000288c 	.word	0x0000288c
    1cf0:	00003058 	.word	0x00003058
    1cf4:	00003060 	.word	0x00003060
    1cf8:	00003070 	.word	0x00003070
    1cfc:	000028cc 	.word	0x000028cc

00001d00 <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
    1d00:	b598      	push	{r3, r4, r7, lr}
    1d02:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d04:	490d      	ldr	r1, [pc, #52]	; (1d3c <backtrace_level_3+0x3c>)
    1d06:	480e      	ldr	r0, [pc, #56]	; (1d40 <backtrace_level_3+0x40>)
    1d08:	f7ff fa67 	bl	11da <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
    1d0c:	4b0d      	ldr	r3, [pc, #52]	; (1d44 <backtrace_level_3+0x44>)
    1d0e:	6818      	ldr	r0, [r3, #0]
    1d10:	4b0d      	ldr	r3, [pc, #52]	; (1d48 <backtrace_level_3+0x48>)
    1d12:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d14:	466a      	mov	r2, sp
    1d16:	4614      	mov	r4, r2
    return(result);
    1d18:	4622      	mov	r2, r4
    1d1a:	4619      	mov	r1, r3
    1d1c:	f7ff fe96 	bl	1a4c <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d20:	466b      	mov	r3, sp
    1d22:	461c      	mov	r4, r3
    return(result);
    1d24:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
    1d26:	4618      	mov	r0, r3
    1d28:	f7ff ff7a 	bl	1c20 <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d2c:	466b      	mov	r3, sp
    1d2e:	461c      	mov	r4, r3
    return(result);
    1d30:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
    1d32:	4618      	mov	r0, r3
    1d34:	f000 f998 	bl	2068 <BackTraceSub>
}
    1d38:	bf00      	nop
    1d3a:	bd98      	pop	{r3, r4, r7, pc}
    1d3c:	00003200 	.word	0x00003200
    1d40:	00003074 	.word	0x00003074
    1d44:	20000038 	.word	0x20000038
    1d48:	20000040 	.word	0x20000040

00001d4c <backtrace_level_2>:
void backtrace_level_2(void)
{
    1d4c:	b580      	push	{r7, lr}
    1d4e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d50:	4903      	ldr	r1, [pc, #12]	; (1d60 <backtrace_level_2+0x14>)
    1d52:	4804      	ldr	r0, [pc, #16]	; (1d64 <backtrace_level_2+0x18>)
    1d54:	f7ff fa41 	bl	11da <printf_>
    backtrace_level_3();
    1d58:	f7ff ffd2 	bl	1d00 <backtrace_level_3>
}
    1d5c:	bf00      	nop
    1d5e:	bd80      	pop	{r7, pc}
    1d60:	00003214 	.word	0x00003214
    1d64:	00003074 	.word	0x00003074

00001d68 <backtrace_level_1>:
void backtrace_level_1(void)
{
    1d68:	b580      	push	{r7, lr}
    1d6a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1d6c:	4903      	ldr	r1, [pc, #12]	; (1d7c <backtrace_level_1+0x14>)
    1d6e:	4804      	ldr	r0, [pc, #16]	; (1d80 <backtrace_level_1+0x18>)
    1d70:	f7ff fa33 	bl	11da <printf_>
    backtrace_level_2();
    1d74:	f7ff ffea 	bl	1d4c <backtrace_level_2>
}
    1d78:	bf00      	nop
    1d7a:	bd80      	pop	{r7, pc}
    1d7c:	00003228 	.word	0x00003228
    1d80:	00003074 	.word	0x00003074

00001d84 <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
    1d84:	b590      	push	{r4, r7, lr}
    1d86:	b089      	sub	sp, #36	; 0x24
    1d88:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
    1d8a:	23aa      	movs	r3, #170	; 0xaa
    1d8c:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
    1d8e:	2355      	movs	r3, #85	; 0x55
    1d90:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
    1d92:	2377      	movs	r3, #119	; 0x77
    1d94:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
    1d96:	4a47      	ldr	r2, [pc, #284]	; (1eb4 <backtrace_test+0x130>)
    1d98:	4b47      	ldr	r3, [pc, #284]	; (1eb8 <backtrace_test+0x134>)
    1d9a:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
    1d9c:	4a47      	ldr	r2, [pc, #284]	; (1ebc <backtrace_test+0x138>)
    1d9e:	4b48      	ldr	r3, [pc, #288]	; (1ec0 <backtrace_test+0x13c>)
    1da0:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
    1da2:	4b47      	ldr	r3, [pc, #284]	; (1ec0 <backtrace_test+0x13c>)
    1da4:	681a      	ldr	r2, [r3, #0]
    1da6:	4b44      	ldr	r3, [pc, #272]	; (1eb8 <backtrace_test+0x134>)
    1da8:	681b      	ldr	r3, [r3, #0]
    1daa:	1ad3      	subs	r3, r2, r3
    1dac:	4a45      	ldr	r2, [pc, #276]	; (1ec4 <backtrace_test+0x140>)
    1dae:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
    1db0:	4a45      	ldr	r2, [pc, #276]	; (1ec8 <backtrace_test+0x144>)
    1db2:	4b46      	ldr	r3, [pc, #280]	; (1ecc <backtrace_test+0x148>)
    1db4:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
    1db6:	4a46      	ldr	r2, [pc, #280]	; (1ed0 <backtrace_test+0x14c>)
    1db8:	4b46      	ldr	r3, [pc, #280]	; (1ed4 <backtrace_test+0x150>)
    1dba:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
    1dbc:	4b45      	ldr	r3, [pc, #276]	; (1ed4 <backtrace_test+0x150>)
    1dbe:	681a      	ldr	r2, [r3, #0]
    1dc0:	4b42      	ldr	r3, [pc, #264]	; (1ecc <backtrace_test+0x148>)
    1dc2:	681b      	ldr	r3, [r3, #0]
    1dc4:	1ad3      	subs	r3, r2, r3
    1dc6:	4a44      	ldr	r2, [pc, #272]	; (1ed8 <backtrace_test+0x154>)
    1dc8:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
    1dca:	4a44      	ldr	r2, [pc, #272]	; (1edc <backtrace_test+0x158>)
    1dcc:	4b44      	ldr	r3, [pc, #272]	; (1ee0 <backtrace_test+0x15c>)
    1dce:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
    1dd0:	4a44      	ldr	r2, [pc, #272]	; (1ee4 <backtrace_test+0x160>)
    1dd2:	4b45      	ldr	r3, [pc, #276]	; (1ee8 <backtrace_test+0x164>)
    1dd4:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
    1dd6:	4b44      	ldr	r3, [pc, #272]	; (1ee8 <backtrace_test+0x164>)
    1dd8:	681a      	ldr	r2, [r3, #0]
    1dda:	4b41      	ldr	r3, [pc, #260]	; (1ee0 <backtrace_test+0x15c>)
    1ddc:	681b      	ldr	r3, [r3, #0]
    1dde:	1ad3      	subs	r3, r2, r3
    1de0:	4a42      	ldr	r2, [pc, #264]	; (1eec <backtrace_test+0x168>)
    1de2:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
    1de4:	4b34      	ldr	r3, [pc, #208]	; (1eb8 <backtrace_test+0x134>)
    1de6:	6819      	ldr	r1, [r3, #0]
    1de8:	4b35      	ldr	r3, [pc, #212]	; (1ec0 <backtrace_test+0x13c>)
    1dea:	6818      	ldr	r0, [r3, #0]
    1dec:	4b35      	ldr	r3, [pc, #212]	; (1ec4 <backtrace_test+0x140>)
    1dee:	681b      	ldr	r3, [r3, #0]
    1df0:	4a34      	ldr	r2, [pc, #208]	; (1ec4 <backtrace_test+0x140>)
    1df2:	6812      	ldr	r2, [r2, #0]
    1df4:	9201      	str	r2, [sp, #4]
    1df6:	9300      	str	r3, [sp, #0]
    1df8:	4603      	mov	r3, r0
    1dfa:	460a      	mov	r2, r1
    1dfc:	493c      	ldr	r1, [pc, #240]	; (1ef0 <backtrace_test+0x16c>)
    1dfe:	483d      	ldr	r0, [pc, #244]	; (1ef4 <backtrace_test+0x170>)
    1e00:	f7ff f9eb 	bl	11da <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
    1e04:	4b31      	ldr	r3, [pc, #196]	; (1ecc <backtrace_test+0x148>)
    1e06:	6819      	ldr	r1, [r3, #0]
    1e08:	4b32      	ldr	r3, [pc, #200]	; (1ed4 <backtrace_test+0x150>)
    1e0a:	6818      	ldr	r0, [r3, #0]
    1e0c:	4b32      	ldr	r3, [pc, #200]	; (1ed8 <backtrace_test+0x154>)
    1e0e:	681b      	ldr	r3, [r3, #0]
    1e10:	4a31      	ldr	r2, [pc, #196]	; (1ed8 <backtrace_test+0x154>)
    1e12:	6812      	ldr	r2, [r2, #0]
    1e14:	9201      	str	r2, [sp, #4]
    1e16:	9300      	str	r3, [sp, #0]
    1e18:	4603      	mov	r3, r0
    1e1a:	460a      	mov	r2, r1
    1e1c:	4934      	ldr	r1, [pc, #208]	; (1ef0 <backtrace_test+0x16c>)
    1e1e:	4836      	ldr	r0, [pc, #216]	; (1ef8 <backtrace_test+0x174>)
    1e20:	f7ff f9db 	bl	11da <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
    1e24:	4b2e      	ldr	r3, [pc, #184]	; (1ee0 <backtrace_test+0x15c>)
    1e26:	6819      	ldr	r1, [r3, #0]
    1e28:	4b2f      	ldr	r3, [pc, #188]	; (1ee8 <backtrace_test+0x164>)
    1e2a:	6818      	ldr	r0, [r3, #0]
    1e2c:	4b2f      	ldr	r3, [pc, #188]	; (1eec <backtrace_test+0x168>)
    1e2e:	681b      	ldr	r3, [r3, #0]
    1e30:	4a2e      	ldr	r2, [pc, #184]	; (1eec <backtrace_test+0x168>)
    1e32:	6812      	ldr	r2, [r2, #0]
    1e34:	9201      	str	r2, [sp, #4]
    1e36:	9300      	str	r3, [sp, #0]
    1e38:	4603      	mov	r3, r0
    1e3a:	460a      	mov	r2, r1
    1e3c:	492c      	ldr	r1, [pc, #176]	; (1ef0 <backtrace_test+0x16c>)
    1e3e:	482f      	ldr	r0, [pc, #188]	; (1efc <backtrace_test+0x178>)
    1e40:	f7ff f9cb 	bl	11da <printf_>
  __ASM volatile ("cpsie i" : : : "memory");
    1e44:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1e46:	466b      	mov	r3, sp
    1e48:	461c      	mov	r4, r3
    return(result);
    1e4a:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
    1e4c:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
    1e4e:	6979      	ldr	r1, [r7, #20]
    1e50:	482b      	ldr	r0, [pc, #172]	; (1f00 <backtrace_test+0x17c>)
    1e52:	f7ff f9c2 	bl	11da <printf_>
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
    1e56:	467b      	mov	r3, pc
    1e58:	461c      	mov	r4, r3
    return(result);
    1e5a:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
    1e5c:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
    1e5e:	6879      	ldr	r1, [r7, #4]
    1e60:	4828      	ldr	r0, [pc, #160]	; (1f04 <backtrace_test+0x180>)
    1e62:	f7ff f9ba 	bl	11da <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1e66:	e01b      	b.n	1ea0 <backtrace_test+0x11c>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
    1e68:	697b      	ldr	r3, [r7, #20]
    1e6a:	681b      	ldr	r3, [r3, #0]
    1e6c:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
    1e6e:	6839      	ldr	r1, [r7, #0]
    1e70:	4825      	ldr	r0, [pc, #148]	; (1f08 <backtrace_test+0x184>)
    1e72:	f7ff f9b2 	bl	11da <printf_>
        if ((addr >= (uint32_t)&_stext) &&
    1e76:	4a0f      	ldr	r2, [pc, #60]	; (1eb4 <backtrace_test+0x130>)
    1e78:	683b      	ldr	r3, [r7, #0]
    1e7a:	4293      	cmp	r3, r2
    1e7c:	d30d      	bcc.n	1e9a <backtrace_test+0x116>
        (sp <= (uint32_t)&_etext) &&
    1e7e:	4a0f      	ldr	r2, [pc, #60]	; (1ebc <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
    1e80:	697b      	ldr	r3, [r7, #20]
    1e82:	4293      	cmp	r3, r2
    1e84:	d809      	bhi.n	1e9a <backtrace_test+0x116>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
    1e86:	683b      	ldr	r3, [r7, #0]
    1e88:	3b01      	subs	r3, #1
    1e8a:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
    1e8e:	2b00      	cmp	r3, #0
    1e90:	d103      	bne.n	1e9a <backtrace_test+0x116>

            printf("find ld 0x%08x\n", addr);
    1e92:	6839      	ldr	r1, [r7, #0]
    1e94:	481d      	ldr	r0, [pc, #116]	; (1f0c <backtrace_test+0x188>)
    1e96:	f7ff f9a0 	bl	11da <printf_>
        }
        sp += 4;
    1e9a:	697b      	ldr	r3, [r7, #20]
    1e9c:	3304      	adds	r3, #4
    1e9e:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1ea0:	4a0b      	ldr	r2, [pc, #44]	; (1ed0 <backtrace_test+0x14c>)
    1ea2:	697b      	ldr	r3, [r7, #20]
    1ea4:	4293      	cmp	r3, r2
    1ea6:	d3df      	bcc.n	1e68 <backtrace_test+0xe4>
    }
    backtrace_level_1();
    1ea8:	f7ff ff5e 	bl	1d68 <backtrace_level_1>
    fault_test_by_div0();
    1eac:	f7ff fdae 	bl	1a0c <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
    1eb0:	e7fe      	b.n	1eb0 <backtrace_test+0x12c>
    1eb2:	bf00      	nop
    1eb4:	00000000 	.word	0x00000000
    1eb8:	2000002c 	.word	0x2000002c
    1ebc:	000033f0 	.word	0x000033f0
    1ec0:	20000030 	.word	0x20000030
    1ec4:	20000034 	.word	0x20000034
    1ec8:	20000910 	.word	0x20000910
    1ecc:	20000038 	.word	0x20000038
    1ed0:	20001910 	.word	0x20001910
    1ed4:	2000003c 	.word	0x2000003c
    1ed8:	20000040 	.word	0x20000040
    1edc:	20001910 	.word	0x20001910
    1ee0:	20000044 	.word	0x20000044
    1ee4:	20005910 	.word	0x20005910
    1ee8:	20000048 	.word	0x20000048
    1eec:	2000004c 	.word	0x2000004c
    1ef0:	0000323c 	.word	0x0000323c
    1ef4:	0000307c 	.word	0x0000307c
    1ef8:	000030c4 	.word	0x000030c4
    1efc:	0000310c 	.word	0x0000310c
    1f00:	00003154 	.word	0x00003154
    1f04:	00003160 	.word	0x00003160
    1f08:	0000316c 	.word	0x0000316c
    1f0c:	00003178 	.word	0x00003178

00001f10 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    1f10:	b480      	push	{r7}
    1f12:	b083      	sub	sp, #12
    1f14:	af00      	add	r7, sp, #0
    1f16:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1f18:	e00e      	b.n	1f38 <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
    1f1a:	687b      	ldr	r3, [r7, #4]
    1f1c:	881b      	ldrh	r3, [r3, #0]
    1f1e:	0a1b      	lsrs	r3, r3, #8
    1f20:	b29b      	uxth	r3, r3
    1f22:	2bb5      	cmp	r3, #181	; 0xb5
    1f24:	d00d      	beq.n	1f42 <LoopUntilEntry+0x32>
    1f26:	687b      	ldr	r3, [r7, #4]
    1f28:	881b      	ldrh	r3, [r3, #0]
    1f2a:	0a1b      	lsrs	r3, r3, #8
    1f2c:	b29b      	uxth	r3, r3
    1f2e:	2bb4      	cmp	r3, #180	; 0xb4
    1f30:	d007      	beq.n	1f42 <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
    1f32:	687b      	ldr	r3, [r7, #4]
    1f34:	3b02      	subs	r3, #2
    1f36:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1f38:	4b05      	ldr	r3, [pc, #20]	; (1f50 <LoopUntilEntry+0x40>)
    1f3a:	681b      	ldr	r3, [r3, #0]
    1f3c:	687a      	ldr	r2, [r7, #4]
    1f3e:	429a      	cmp	r2, r3
    1f40:	d8eb      	bhi.n	1f1a <LoopUntilEntry+0xa>
    }

    return addr;
    1f42:	687b      	ldr	r3, [r7, #4]
}
    1f44:	4618      	mov	r0, r3
    1f46:	370c      	adds	r7, #12
    1f48:	46bd      	mov	sp, r7
    1f4a:	bc80      	pop	{r7}
    1f4c:	4770      	bx	lr
    1f4e:	bf00      	nop
    1f50:	2000002c 	.word	0x2000002c

00001f54 <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    1f54:	b480      	push	{r7}
    1f56:	b087      	sub	sp, #28
    1f58:	af00      	add	r7, sp, #0
    1f5a:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1f5c:	2300      	movs	r3, #0
    1f5e:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
    1f60:	687b      	ldr	r3, [r7, #4]
    1f62:	881b      	ldrh	r3, [r3, #0]
    1f64:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1f68:	2b00      	cmp	r3, #0
    1f6a:	d00b      	beq.n	1f84 <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f6c:	687b      	ldr	r3, [r7, #4]
    1f6e:	881b      	ldrh	r3, [r3, #0]
    1f70:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f74:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f76:	687b      	ldr	r3, [r7, #4]
    1f78:	3302      	adds	r3, #2
    1f7a:	881b      	ldrh	r3, [r3, #0]
    1f7c:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f80:	613b      	str	r3, [r7, #16]
    1f82:	e00a      	b.n	1f9a <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f84:	687b      	ldr	r3, [r7, #4]
    1f86:	881b      	ldrh	r3, [r3, #0]
    1f88:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f8c:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f8e:	687b      	ldr	r3, [r7, #4]
    1f90:	3302      	adds	r3, #2
    1f92:	881b      	ldrh	r3, [r3, #0]
    1f94:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f98:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    1f9a:	693b      	ldr	r3, [r7, #16]
    1f9c:	031a      	lsls	r2, r3, #12
    1f9e:	68fb      	ldr	r3, [r7, #12]
    1fa0:	005b      	lsls	r3, r3, #1
    1fa2:	4413      	add	r3, r2
    1fa4:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
    1fa6:	68bb      	ldr	r3, [r7, #8]
    1fa8:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1fac:	2b00      	cmp	r3, #0
    1fae:	d008      	beq.n	1fc2 <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    1fb0:	68bb      	ldr	r3, [r7, #8]
    1fb2:	425b      	negs	r3, r3
    1fb4:	f3c3 0316 	ubfx	r3, r3, #0, #23
    1fb8:	687a      	ldr	r2, [r7, #4]
    1fba:	1ad3      	subs	r3, r2, r3
    1fbc:	3304      	adds	r3, #4
    1fbe:	617b      	str	r3, [r7, #20]
    1fc0:	e004      	b.n	1fcc <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
    1fc2:	687a      	ldr	r2, [r7, #4]
    1fc4:	68bb      	ldr	r3, [r7, #8]
    1fc6:	4413      	add	r3, r2
    1fc8:	3304      	adds	r3, #4
    1fca:	617b      	str	r3, [r7, #20]
    }

    return target;
    1fcc:	697b      	ldr	r3, [r7, #20]
}
    1fce:	4618      	mov	r0, r3
    1fd0:	371c      	adds	r7, #28
    1fd2:	46bd      	mov	sp, r7
    1fd4:	bc80      	pop	{r7}
    1fd6:	4770      	bx	lr

00001fd8 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    1fd8:	b580      	push	{r7, lr}
    1fda:	b084      	sub	sp, #16
    1fdc:	af00      	add	r7, sp, #0
    1fde:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1fe0:	2300      	movs	r3, #0
    1fe2:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
    1fe4:	687b      	ldr	r3, [r7, #4]
    1fe6:	3b02      	subs	r3, #2
    1fe8:	881b      	ldrh	r3, [r3, #0]
    1fea:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1fee:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1ff2:	d11a      	bne.n	202a <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
    1ff4:	4b1b      	ldr	r3, [pc, #108]	; (2064 <CalculateTargetAddress+0x8c>)
    1ff6:	681b      	ldr	r3, [r3, #0]
    1ff8:	2b00      	cmp	r3, #0
    1ffa:	d00b      	beq.n	2014 <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
    1ffc:	4b19      	ldr	r3, [pc, #100]	; (2064 <CalculateTargetAddress+0x8c>)
    1ffe:	681b      	ldr	r3, [r3, #0]
    2000:	4618      	mov	r0, r3
    2002:	f7ff ff85 	bl	1f10 <LoopUntilEntry>
    2006:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
    2008:	687b      	ldr	r3, [r7, #4]
    200a:	3b02      	subs	r3, #2
    200c:	4a15      	ldr	r2, [pc, #84]	; (2064 <CalculateTargetAddress+0x8c>)
    200e:	6013      	str	r3, [r2, #0]
            return target;
    2010:	68fb      	ldr	r3, [r7, #12]
    2012:	e023      	b.n	205c <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
    2014:	687b      	ldr	r3, [r7, #4]
    2016:	3b02      	subs	r3, #2
    2018:	4a12      	ldr	r2, [pc, #72]	; (2064 <CalculateTargetAddress+0x8c>)
    201a:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
    201c:	4b11      	ldr	r3, [pc, #68]	; (2064 <CalculateTargetAddress+0x8c>)
    201e:	681b      	ldr	r3, [r3, #0]
    2020:	4618      	mov	r0, r3
    2022:	f7ff ff75 	bl	1f10 <LoopUntilEntry>
    2026:	4603      	mov	r3, r0
    2028:	e018      	b.n	205c <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
    202a:	687b      	ldr	r3, [r7, #4]
    202c:	3b04      	subs	r3, #4
    202e:	681b      	ldr	r3, [r3, #0]
    2030:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
    2034:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
    2038:	d10f      	bne.n	205a <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
    203a:	687b      	ldr	r3, [r7, #4]
    203c:	3b04      	subs	r3, #4
    203e:	4a09      	ldr	r2, [pc, #36]	; (2064 <CalculateTargetAddress+0x8c>)
    2040:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
    2042:	4b08      	ldr	r3, [pc, #32]	; (2064 <CalculateTargetAddress+0x8c>)
    2044:	681b      	ldr	r3, [r3, #0]
    2046:	4618      	mov	r0, r3
    2048:	f7ff ff84 	bl	1f54 <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
    204c:	4b05      	ldr	r3, [pc, #20]	; (2064 <CalculateTargetAddress+0x8c>)
    204e:	681b      	ldr	r3, [r3, #0]
    2050:	4618      	mov	r0, r3
    2052:	f7ff ff7f 	bl	1f54 <CalculateBLTargetAddress>
    2056:	4603      	mov	r3, r0
    2058:	e000      	b.n	205c <CalculateTargetAddress+0x84>
    }

    return 0;
    205a:	2300      	movs	r3, #0
}
    205c:	4618      	mov	r0, r3
    205e:	3710      	adds	r7, #16
    2060:	46bd      	mov	sp, r7
    2062:	bd80      	pop	{r7, pc}
    2064:	200000e4 	.word	0x200000e4

00002068 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
    2068:	b580      	push	{r7, lr}
    206a:	b086      	sub	sp, #24
    206c:	af00      	add	r7, sp, #0
    206e:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
    2070:	687b      	ldr	r3, [r7, #4]
    2072:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
    2074:	2300      	movs	r3, #0
    2076:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    2078:	e03b      	b.n	20f2 <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    207a:	697b      	ldr	r3, [r7, #20]
    207c:	681a      	ldr	r2, [r3, #0]
    207e:	4b23      	ldr	r3, [pc, #140]	; (210c <BackTraceSub+0xa4>)
    2080:	681b      	ldr	r3, [r3, #0]
    2082:	429a      	cmp	r2, r3
    2084:	d32e      	bcc.n	20e4 <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    2086:	697b      	ldr	r3, [r7, #20]
    2088:	681a      	ldr	r2, [r3, #0]
    208a:	4b21      	ldr	r3, [pc, #132]	; (2110 <BackTraceSub+0xa8>)
    208c:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    208e:	429a      	cmp	r2, r3
    2090:	d828      	bhi.n	20e4 <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
    2092:	697b      	ldr	r3, [r7, #20]
    2094:	681b      	ldr	r3, [r3, #0]
    2096:	3b01      	subs	r3, #1
    2098:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    209c:	2b00      	cmp	r3, #0
    209e:	d121      	bne.n	20e4 <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
    20a0:	697b      	ldr	r3, [r7, #20]
    20a2:	681b      	ldr	r3, [r3, #0]
    20a4:	3b01      	subs	r3, #1
    20a6:	4618      	mov	r0, r3
    20a8:	f7ff ff96 	bl	1fd8 <CalculateTargetAddress>
    20ac:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
    20ae:	68fb      	ldr	r3, [r7, #12]
    20b0:	2b00      	cmp	r3, #0
    20b2:	d004      	beq.n	20be <BackTraceSub+0x56>
    20b4:	4b17      	ldr	r3, [pc, #92]	; (2114 <BackTraceSub+0xac>)
    20b6:	681b      	ldr	r3, [r3, #0]
    20b8:	68fa      	ldr	r2, [r7, #12]
    20ba:	429a      	cmp	r2, r3
    20bc:	d103      	bne.n	20c6 <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
    20be:	697b      	ldr	r3, [r7, #20]
    20c0:	3304      	adds	r3, #4
    20c2:	617b      	str	r3, [r7, #20]
                continue;
    20c4:	e015      	b.n	20f2 <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
    20c6:	4a13      	ldr	r2, [pc, #76]	; (2114 <BackTraceSub+0xac>)
    20c8:	68fb      	ldr	r3, [r7, #12]
    20ca:	6013      	str	r3, [r2, #0]
            count++;
    20cc:	693b      	ldr	r3, [r7, #16]
    20ce:	3301      	adds	r3, #1
    20d0:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
    20d2:	697b      	ldr	r3, [r7, #20]
    20d4:	681b      	ldr	r3, [r3, #0]
    20d6:	1e5a      	subs	r2, r3, #1
    20d8:	4b0e      	ldr	r3, [pc, #56]	; (2114 <BackTraceSub+0xac>)
    20da:	681b      	ldr	r3, [r3, #0]
    20dc:	6939      	ldr	r1, [r7, #16]
    20de:	480e      	ldr	r0, [pc, #56]	; (2118 <BackTraceSub+0xb0>)
    20e0:	f7ff f87b 	bl	11da <printf_>
        }
        stackPointer += STACK_OFFSET;
    20e4:	697b      	ldr	r3, [r7, #20]
    20e6:	3304      	adds	r3, #4
    20e8:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
    20ea:	6979      	ldr	r1, [r7, #20]
    20ec:	480b      	ldr	r0, [pc, #44]	; (211c <BackTraceSub+0xb4>)
    20ee:	f7ff f874 	bl	11da <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    20f2:	4b0b      	ldr	r3, [pc, #44]	; (2120 <BackTraceSub+0xb8>)
    20f4:	681b      	ldr	r3, [r3, #0]
    20f6:	697a      	ldr	r2, [r7, #20]
    20f8:	429a      	cmp	r2, r3
    20fa:	d202      	bcs.n	2102 <BackTraceSub+0x9a>
    20fc:	693b      	ldr	r3, [r7, #16]
    20fe:	2b0e      	cmp	r3, #14
    2100:	d9bb      	bls.n	207a <BackTraceSub+0x12>
    }
}
    2102:	bf00      	nop
    2104:	3718      	adds	r7, #24
    2106:	46bd      	mov	sp, r7
    2108:	bd80      	pop	{r7, pc}
    210a:	bf00      	nop
    210c:	2000002c 	.word	0x2000002c
    2110:	20000030 	.word	0x20000030
    2114:	200000e8 	.word	0x200000e8
    2118:	00003188 	.word	0x00003188
    211c:	000031b4 	.word	0x000031b4
    2120:	2000003c 	.word	0x2000003c

00002124 <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sContextStateFrame *frame) {
    2124:	b4b0      	push	{r4, r5, r7}
    2126:	b085      	sub	sp, #20
    2128:	af00      	add	r7, sp, #0
    212a:	6078      	str	r0, [r7, #4]
    s_last_crash_into.frame = *frame;
    212c:	4b30      	ldr	r3, [pc, #192]	; (21f0 <HardFault_Handler_C+0xcc>)
    212e:	687a      	ldr	r2, [r7, #4]
    2130:	1d1c      	adds	r4, r3, #4
    2132:	4615      	mov	r5, r2
    2134:	6828      	ldr	r0, [r5, #0]
    2136:	6869      	ldr	r1, [r5, #4]
    2138:	68aa      	ldr	r2, [r5, #8]
    213a:	68eb      	ldr	r3, [r5, #12]
    213c:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    213e:	6928      	ldr	r0, [r5, #16]
    2140:	6969      	ldr	r1, [r5, #20]
    2142:	69aa      	ldr	r2, [r5, #24]
    2144:	69eb      	ldr	r3, [r5, #28]
    2146:	c40f      	stmia	r4!, {r0, r1, r2, r3}
    s_last_crash_into.magic = CRASH_INFO_MAGIC;
    2148:	4b29      	ldr	r3, [pc, #164]	; (21f0 <HardFault_Handler_C+0xcc>)
    214a:	4a2a      	ldr	r2, [pc, #168]	; (21f4 <HardFault_Handler_C+0xd0>)
    214c:	601a      	str	r2, [r3, #0]
  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
    214e:	4b2a      	ldr	r3, [pc, #168]	; (21f8 <HardFault_Handler_C+0xd4>)
    2150:	681b      	ldr	r3, [r3, #0]
    2152:	f003 0301 	and.w	r3, r3, #1
    2156:	2b00      	cmp	r3, #0
    2158:	d000      	beq.n	215c <HardFault_Handler_C+0x38>
    215a:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
    215c:	4b27      	ldr	r3, [pc, #156]	; (21fc <HardFault_Handler_C+0xd8>)
    215e:	60fb      	str	r3, [r7, #12]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
    2160:	4b27      	ldr	r3, [pc, #156]	; (2200 <HardFault_Handler_C+0xdc>)
    2162:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    2164:	68fb      	ldr	r3, [r7, #12]
    2166:	43db      	mvns	r3, r3
    2168:	4013      	ands	r3, r2
    216a:	2b00      	cmp	r3, #0
    216c:	bf14      	ite	ne
    216e:	2301      	movne	r3, #1
    2170:	2300      	moveq	r3, #0
    2172:	72fb      	strb	r3, [r7, #11]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
    2174:	687b      	ldr	r3, [r7, #4]
    2176:	69db      	ldr	r3, [r3, #28]
    2178:	b2db      	uxtb	r3, r3
    217a:	2b00      	cmp	r3, #0
    217c:	bf14      	ite	ne
    217e:	2301      	movne	r3, #1
    2180:	2300      	moveq	r3, #0
    2182:	72bb      	strb	r3, [r7, #10]

  if (faulted_from_exception || non_usage_fault_occurred) {
    2184:	7abb      	ldrb	r3, [r7, #10]
    2186:	2b00      	cmp	r3, #0
    2188:	d102      	bne.n	2190 <HardFault_Handler_C+0x6c>
    218a:	7afb      	ldrb	r3, [r7, #11]
    218c:	2b00      	cmp	r3, #0
    218e:	d003      	beq.n	2198 <HardFault_Handler_C+0x74>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
    2190:	4b1b      	ldr	r3, [pc, #108]	; (2200 <HardFault_Handler_C+0xdc>)
    2192:	4a1c      	ldr	r2, [pc, #112]	; (2204 <HardFault_Handler_C+0xe0>)
    2194:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
    2196:	e7fe      	b.n	2196 <HardFault_Handler_C+0x72>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
    2198:	4b19      	ldr	r3, [pc, #100]	; (2200 <HardFault_Handler_C+0xdc>)
    219a:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    219c:	4b18      	ldr	r3, [pc, #96]	; (2200 <HardFault_Handler_C+0xdc>)
    219e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    21a0:	4917      	ldr	r1, [pc, #92]	; (2200 <HardFault_Handler_C+0xdc>)
    21a2:	4313      	orrs	r3, r2
    21a4:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
    21a6:	4a18      	ldr	r2, [pc, #96]	; (2208 <HardFault_Handler_C+0xe4>)
    21a8:	687b      	ldr	r3, [r7, #4]
    21aa:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
    21ac:	687b      	ldr	r3, [r7, #4]
    21ae:	2200      	movs	r2, #0
    21b0:	f062 0210 	orn	r2, r2, #16
    21b4:	751a      	strb	r2, [r3, #20]
    21b6:	2200      	movs	r2, #0
    21b8:	f062 0241 	orn	r2, r2, #65	; 0x41
    21bc:	755a      	strb	r2, [r3, #21]
    21be:	2200      	movs	r2, #0
    21c0:	f062 0252 	orn	r2, r2, #82	; 0x52
    21c4:	759a      	strb	r2, [r3, #22]
    21c6:	2200      	movs	r2, #0
    21c8:	f062 0221 	orn	r2, r2, #33	; 0x21
    21cc:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
    21ce:	687b      	ldr	r3, [r7, #4]
    21d0:	2200      	movs	r2, #0
    21d2:	771a      	strb	r2, [r3, #28]
    21d4:	2200      	movs	r2, #0
    21d6:	775a      	strb	r2, [r3, #29]
    21d8:	2200      	movs	r2, #0
    21da:	779a      	strb	r2, [r3, #30]
    21dc:	2200      	movs	r2, #0
    21de:	f042 0201 	orr.w	r2, r2, #1
    21e2:	77da      	strb	r2, [r3, #31]
}
    21e4:	bf00      	nop
    21e6:	3714      	adds	r7, #20
    21e8:	46bd      	mov	sp, r7
    21ea:	bcb0      	pop	{r4, r5, r7}
    21ec:	4770      	bx	lr
    21ee:	bf00      	nop
    21f0:	20000000 	.word	0x20000000
    21f4:	dead55aa 	.word	0xdead55aa
    21f8:	e000edf0 	.word	0xe000edf0
    21fc:	ffff0000 	.word	0xffff0000
    2200:	e000ed00 	.word	0xe000ed00
    2204:	05fa0004 	.word	0x05fa0004
    2208:	00002513 	.word	0x00002513

0000220c <prv_cinit>:
extern uint32_t _ebss;
// End address for stack
extern uint32_t _estack;

// Prevent inlining to avoid persisting any variables on stack
__attribute__((noinline)) static void prv_cinit(void) {
    220c:	b480      	push	{r7}
    220e:	b085      	sub	sp, #20
    2210:	af00      	add	r7, sp, #0
  // Initialize data and bss
  // Copy the data segment initializers from flash to SRAM
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    2212:	4b11      	ldr	r3, [pc, #68]	; (2258 <prv_cinit+0x4c>)
    2214:	60fb      	str	r3, [r7, #12]
    2216:	4b11      	ldr	r3, [pc, #68]	; (225c <prv_cinit+0x50>)
    2218:	60bb      	str	r3, [r7, #8]
    221a:	e007      	b.n	222c <prv_cinit+0x20>
    *(dst++) = *(src++);
    221c:	68ba      	ldr	r2, [r7, #8]
    221e:	1d13      	adds	r3, r2, #4
    2220:	60bb      	str	r3, [r7, #8]
    2222:	68fb      	ldr	r3, [r7, #12]
    2224:	1d19      	adds	r1, r3, #4
    2226:	60f9      	str	r1, [r7, #12]
    2228:	6812      	ldr	r2, [r2, #0]
    222a:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    222c:	68fb      	ldr	r3, [r7, #12]
    222e:	4a0c      	ldr	r2, [pc, #48]	; (2260 <prv_cinit+0x54>)
    2230:	4293      	cmp	r3, r2
    2232:	d3f3      	bcc.n	221c <prv_cinit+0x10>
  }

  // Zero fill the bss segment.
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2234:	4b0b      	ldr	r3, [pc, #44]	; (2264 <prv_cinit+0x58>)
    2236:	607b      	str	r3, [r7, #4]
    2238:	e004      	b.n	2244 <prv_cinit+0x38>
    *(dst++) = 0;
    223a:	687b      	ldr	r3, [r7, #4]
    223c:	1d1a      	adds	r2, r3, #4
    223e:	607a      	str	r2, [r7, #4]
    2240:	2200      	movs	r2, #0
    2242:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2244:	687b      	ldr	r3, [r7, #4]
    2246:	4a08      	ldr	r2, [pc, #32]	; (2268 <prv_cinit+0x5c>)
    2248:	4293      	cmp	r3, r2
    224a:	d3f6      	bcc.n	223a <prv_cinit+0x2e>
  }
}
    224c:	bf00      	nop
    224e:	3714      	adds	r7, #20
    2250:	46bd      	mov	sp, r7
    2252:	bc80      	pop	{r7}
    2254:	4770      	bx	lr
    2256:	bf00      	nop
    2258:	20000000 	.word	0x20000000
    225c:	20000000 	.word	0x20000000
    2260:	20000000 	.word	0x20000000
    2264:	20000024 	.word	0x20000024
    2268:	20000910 	.word	0x20000910

0000226c <DefaultIntHandler>:
static uint8_t s_buffer[10] __attribute__((aligned(4)));
void *g_unaligned_buffer;


// DefaultIntHandler is used for unpopulated interrupts
static void DefaultIntHandler(void) {
    226c:	b480      	push	{r7}
    226e:	af00      	add	r7, sp, #0
  __asm__("bkpt");
    2270:	be00      	bkpt	0x0000
  // Go into an infinite loop.
  while (1)
    2272:	e7fe      	b.n	2272 <DefaultIntHandler+0x6>

00002274 <NMI_Handler>:
    ;
}

static void NMI_Handler(void) {
    2274:	b580      	push	{r7, lr}
    2276:	af00      	add	r7, sp, #0
  DefaultIntHandler();
    2278:	f7ff fff8 	bl	226c <DefaultIntHandler>
}
    227c:	bf00      	nop
    227e:	bd80      	pop	{r7, pc}

00002280 <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
static void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
    2280:	f01e 0f04 	tst.w	lr, #4
    2284:	bf0c      	ite	eq
    2286:	f3ef 8008 	mrseq	r0, MSP
    228a:	f3ef 8009 	mrsne	r0, PSP
    228e:	f7ff bf49 	b.w	2124 <HardFault_Handler_C>
}
    2292:	bf00      	nop

00002294 <MemoryManagement_Handler>:

static void MemoryManagement_Handler(void) {
    2294:	b480      	push	{r7}
    2296:	af00      	add	r7, sp, #0
 
}
    2298:	bf00      	nop
    229a:	46bd      	mov	sp, r7
    229c:	bc80      	pop	{r7}
    229e:	4770      	bx	lr

000022a0 <BusFault_Handler>:

static void BusFault_Handler(void) {
    22a0:	b480      	push	{r7}
    22a2:	af00      	add	r7, sp, #0

}
    22a4:	bf00      	nop
    22a6:	46bd      	mov	sp, r7
    22a8:	bc80      	pop	{r7}
    22aa:	4770      	bx	lr

000022ac <UsageFault_Handler>:

static void UsageFault_Handler(void) {
    22ac:	b480      	push	{r7}
    22ae:	af00      	add	r7, sp, #0

}
    22b0:	bf00      	nop
    22b2:	46bd      	mov	sp, r7
    22b4:	bc80      	pop	{r7}
    22b6:	4770      	bx	lr

000022b8 <Irq0_Handler>:

void Irq0_Handler(void) {
    22b8:	b480      	push	{r7}
    22ba:	af00      	add	r7, sp, #0

}
    22bc:	bf00      	nop
    22be:	46bd      	mov	sp, r7
    22c0:	bc80      	pop	{r7}
    22c2:	4770      	bx	lr

000022c4 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
    22c4:	b480      	push	{r7}
    22c6:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
    22c8:	4b06      	ldr	r3, [pc, #24]	; (22e4 <exception_init+0x20>)
    22ca:	4a07      	ldr	r2, [pc, #28]	; (22e8 <exception_init+0x24>)
    22cc:	601a      	str	r2, [r3, #0]
  SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
    22ce:	4b07      	ldr	r3, [pc, #28]	; (22ec <exception_init+0x28>)
    22d0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
    22d2:	4a06      	ldr	r2, [pc, #24]	; (22ec <exception_init+0x28>)
    22d4:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
    22d8:	6253      	str	r3, [r2, #36]	; 0x24
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
    22da:	bf00      	nop
    22dc:	46bd      	mov	sp, r7
    22de:	bc80      	pop	{r7}
    22e0:	4770      	bx	lr
    22e2:	bf00      	nop
    22e4:	2000090c 	.word	0x2000090c
    22e8:	200000ed 	.word	0x200000ed
    22ec:	e000ed00 	.word	0xe000ed00

000022f0 <exception_test>:

void exception_test(void)
{
    22f0:	b580      	push	{r7, lr}
    22f2:	af00      	add	r7, sp, #0
  exception_init();
    22f4:	f7ff ffe6 	bl	22c4 <exception_init>
  trigger_crash(0);
    22f8:	2000      	movs	r0, #0
    22fa:	f000 f8d3 	bl	24a4 <trigger_crash>
}
    22fe:	bf00      	nop
    2300:	bd80      	pop	{r7, pc}
    2302:	bf00      	nop
    2304:	0000      	movs	r0, r0
	...

00002308 <trigger_irq>:
#include "exception.h"

void trigger_irq(void) 
{
    2308:	b480      	push	{r7}
    230a:	af00      	add	r7, sp, #0
    NVIC->ISER[0] |= (0x1 << 1);
    230c:	4b09      	ldr	r3, [pc, #36]	; (2334 <trigger_irq+0x2c>)
    230e:	681b      	ldr	r3, [r3, #0]
    2310:	4a08      	ldr	r2, [pc, #32]	; (2334 <trigger_irq+0x2c>)
    2312:	f043 0302 	orr.w	r3, r3, #2
    2316:	6013      	str	r3, [r2, #0]

    // Pend an interrupt
    NVIC->ISPR[0] |= (0x1 << 1);
    2318:	4b06      	ldr	r3, [pc, #24]	; (2334 <trigger_irq+0x2c>)
    231a:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
    231e:	4a05      	ldr	r2, [pc, #20]	; (2334 <trigger_irq+0x2c>)
    2320:	f043 0302 	orr.w	r3, r3, #2
    2324:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
    // flush pipeline to ensure exception takes effect before we
    // return from this routine
    __asm("isb");
    2328:	f3bf 8f6f 	isb	sy
}
    232c:	bf00      	nop
    232e:	46bd      	mov	sp, r7
    2330:	bc80      	pop	{r7}
    2332:	4770      	bx	lr
    2334:	e000e100 	.word	0xe000e100

00002338 <stkerr_from_psp>:
valid. For example, the very last store of the hardware stacking could trigger the fault 
and all the other stores could be valid. However, the order the hardware pushes register 
state on the stack is implementation specific. So when inspecting the frame assume the 
values being looked at may be invalid!
*/
void stkerr_from_psp(void) {
    2338:	b5b0      	push	{r4, r5, r7, lr}
    233a:	b086      	sub	sp, #24
    233c:	af00      	add	r7, sp, #0
    233e:	466b      	mov	r3, sp
    2340:	461d      	mov	r5, r3
  extern uint32_t _sdata[];
  uint8_t dummy_variable;
  const size_t distance_to_ram_bottom = (uint32_t)&dummy_variable - (uint32_t)_sdata;
    2342:	1dfb      	adds	r3, r7, #7
    2344:	4a21      	ldr	r2, [pc, #132]	; (23cc <stkerr_from_psp+0x94>)
    2346:	1a9b      	subs	r3, r3, r2
    2348:	613b      	str	r3, [r7, #16]
  volatile uint8_t big_buf[distance_to_ram_bottom - 8];
    234a:	693b      	ldr	r3, [r7, #16]
    234c:	3b09      	subs	r3, #9
    234e:	60fb      	str	r3, [r7, #12]
    2350:	693b      	ldr	r3, [r7, #16]
    2352:	3b08      	subs	r3, #8
    2354:	4619      	mov	r1, r3
    2356:	f04f 0200 	mov.w	r2, #0
    235a:	f04f 0300 	mov.w	r3, #0
    235e:	f04f 0400 	mov.w	r4, #0
    2362:	00d4      	lsls	r4, r2, #3
    2364:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
    2368:	00cb      	lsls	r3, r1, #3
    236a:	693b      	ldr	r3, [r7, #16]
    236c:	3b08      	subs	r3, #8
    236e:	4619      	mov	r1, r3
    2370:	f04f 0200 	mov.w	r2, #0
    2374:	f04f 0300 	mov.w	r3, #0
    2378:	f04f 0400 	mov.w	r4, #0
    237c:	00d4      	lsls	r4, r2, #3
    237e:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
    2382:	00cb      	lsls	r3, r1, #3
    2384:	693b      	ldr	r3, [r7, #16]
    2386:	3b08      	subs	r3, #8
    2388:	3307      	adds	r3, #7
    238a:	08db      	lsrs	r3, r3, #3
    238c:	00db      	lsls	r3, r3, #3
    238e:	ebad 0d03 	sub.w	sp, sp, r3
    2392:	466b      	mov	r3, sp
    2394:	3300      	adds	r3, #0
    2396:	60bb      	str	r3, [r7, #8]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    2398:	2300      	movs	r3, #0
    239a:	617b      	str	r3, [r7, #20]
    239c:	e009      	b.n	23b2 <stkerr_from_psp+0x7a>
    big_buf[i] = i;
    239e:	697b      	ldr	r3, [r7, #20]
    23a0:	b2d9      	uxtb	r1, r3
    23a2:	68ba      	ldr	r2, [r7, #8]
    23a4:	697b      	ldr	r3, [r7, #20]
    23a6:	4413      	add	r3, r2
    23a8:	460a      	mov	r2, r1
    23aa:	701a      	strb	r2, [r3, #0]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    23ac:	697b      	ldr	r3, [r7, #20]
    23ae:	3301      	adds	r3, #1
    23b0:	617b      	str	r3, [r7, #20]
    23b2:	693b      	ldr	r3, [r7, #16]
    23b4:	3b08      	subs	r3, #8
    23b6:	697a      	ldr	r2, [r7, #20]
    23b8:	429a      	cmp	r2, r3
    23ba:	d3f0      	bcc.n	239e <stkerr_from_psp+0x66>
  }

  trigger_irq();
    23bc:	f7ff ffa4 	bl	2308 <trigger_irq>
    23c0:	46ad      	mov	sp, r5
}
    23c2:	bf00      	nop
    23c4:	3718      	adds	r7, #24
    23c6:	46bd      	mov	sp, r7
    23c8:	bdb0      	pop	{r4, r5, r7, pc}
    23ca:	bf00      	nop
    23cc:	20000000 	.word	0x20000000

000023d0 <bad_memory_access_crash>:

int bad_memory_access_crash(void) {
    23d0:	b480      	push	{r7}
    23d2:	b083      	sub	sp, #12
    23d4:	af00      	add	r7, sp, #0
  volatile uint32_t *bad_access = (volatile uint32_t *)0xdeadbeef;
    23d6:	4b04      	ldr	r3, [pc, #16]	; (23e8 <bad_memory_access_crash+0x18>)
    23d8:	607b      	str	r3, [r7, #4]
  return *bad_access;
    23da:	687b      	ldr	r3, [r7, #4]
    23dc:	681b      	ldr	r3, [r3, #0]
}
    23de:	4618      	mov	r0, r3
    23e0:	370c      	adds	r7, #12
    23e2:	46bd      	mov	sp, r7
    23e4:	bc80      	pop	{r7}
    23e6:	4770      	bx	lr
    23e8:	deadbeef 	.word	0xdeadbeef

000023ec <read_from_bad_address>:
/*Bad Address Read*/
uint32_t read_from_bad_address(void) {
    23ec:	b480      	push	{r7}
    23ee:	af00      	add	r7, sp, #0
  return *(volatile uint32_t *)0xbadcafe;
    23f0:	4b02      	ldr	r3, [pc, #8]	; (23fc <read_from_bad_address+0x10>)
    23f2:	681b      	ldr	r3, [r3, #0]
}
    23f4:	4618      	mov	r0, r3
    23f6:	46bd      	mov	sp, r7
    23f8:	bc80      	pop	{r7}
    23fa:	4770      	bx	lr
    23fc:	0badcafe 	.word	0x0badcafe

00002400 <illegal_instruction_execution>:

/*eXecute Never Fault*/
int illegal_instruction_execution(void) {
    2400:	b580      	push	{r7, lr}
    2402:	b082      	sub	sp, #8
    2404:	af00      	add	r7, sp, #0
  int (*bad_instruction)(void) = (void *)0xE0000000;
    2406:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    240a:	607b      	str	r3, [r7, #4]
  return bad_instruction();
    240c:	687b      	ldr	r3, [r7, #4]
    240e:	4798      	blx	r3
    2410:	4603      	mov	r3, r0
}
    2412:	4618      	mov	r0, r3
    2414:	3708      	adds	r7, #8
    2416:	46bd      	mov	sp, r7
    2418:	bd80      	pop	{r7, pc}

0000241a <unaligned_double_word_read>:

void unaligned_double_word_read(void) {
    241a:	b480      	push	{r7}
    241c:	af00      	add	r7, sp, #0
//   extern void *g_unaligned_buffer;
//   uint64_t *buf = g_unaligned_buffer;
//   *buf = 0x1122334455667788;
}
    241e:	bf00      	nop
    2420:	46bd      	mov	sp, r7
    2422:	bc80      	pop	{r7}
    2424:	4770      	bx	lr

00002426 <bad_addr_double_word_write>:

/*Imprecise Fault*/
void bad_addr_double_word_write(void) {
    2426:	b490      	push	{r4, r7}
    2428:	b082      	sub	sp, #8
    242a:	af00      	add	r7, sp, #0
  volatile uint64_t *buf = (volatile uint64_t *)0x30000000;
    242c:	f04f 5340 	mov.w	r3, #805306368	; 0x30000000
    2430:	607b      	str	r3, [r7, #4]
  *buf = 0x1122334455667788;
    2432:	687a      	ldr	r2, [r7, #4]
    2434:	a404      	add	r4, pc, #16	; (adr r4, 2448 <bad_addr_double_word_write+0x22>)
    2436:	e9d4 3400 	ldrd	r3, r4, [r4]
    243a:	e9c2 3400 	strd	r3, r4, [r2]
}
    243e:	bf00      	nop
    2440:	3708      	adds	r7, #8
    2442:	46bd      	mov	sp, r7
    2444:	bc90      	pop	{r4, r7}
    2446:	4770      	bx	lr
    2448:	55667788 	.word	0x55667788
    244c:	11223344 	.word	0x11223344

00002450 <access_disabled_coprocessor>:
/*Coprocessor Fault*/
void access_disabled_coprocessor(void) {
    2450:	b480      	push	{r7}
    2452:	af00      	add	r7, sp, #0
  // FreeRTOS will automatically enable the FPU co-processor.
  // Let's disable it for the purposes of this example
  __asm volatile(
    2454:	4830      	ldr	r0, [pc, #192]	; (2518 <recover_from_task_fault+0x6>)
    2456:	f04f 0100 	mov.w	r1, #0
    245a:	6001      	str	r1, [r0, #0]
    245c:	f3bf 8f4f 	dsb	sy
      "mov r1, #0 \n"
      "str r1, [r0]	\n"
      "dsb \n"
    //   "vmov r0, s0 \n"
      );
}
    2460:	bf00      	nop
    2462:	46bd      	mov	sp, r7
    2464:	bc80      	pop	{r7}
    2466:	4770      	bx	lr

00002468 <usagefault>:
void usagefault(void)
{
    2468:	b480      	push	{r7}
    246a:	af00      	add	r7, sp, #0
    246c:	deff      	udf	#255	; 0xff

0000246e <busfault>:
    //udf 0xff
    __builtin_trap();
}

void busfault(void)
{
    246e:	b480      	push	{r7}
    2470:	af00      	add	r7, sp, #0
    *(uint32_t*)0xdead0000 = 0x20;
    2472:	4b03      	ldr	r3, [pc, #12]	; (2480 <busfault+0x12>)
    2474:	2220      	movs	r2, #32
    2476:	601a      	str	r2, [r3, #0]
}
    2478:	bf00      	nop
    247a:	46bd      	mov	sp, r7
    247c:	bc80      	pop	{r7}
    247e:	4770      	bx	lr
    2480:	dead0000 	.word	0xdead0000

00002484 <memmanage>:
void memmanage(void)
{
    2484:	b580      	push	{r7, lr}
    2486:	b082      	sub	sp, #8
    2488:	af00      	add	r7, sp, #0
    void (*func_in_xn_region)(void)=(void*)0xE0000000;
    248a:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    248e:	607b      	str	r3, [r7, #4]
    func_in_xn_region();
    2490:	687b      	ldr	r3, [r7, #4]
    2492:	4798      	blx	r3
}
    2494:	bf00      	nop
    2496:	3708      	adds	r7, #8
    2498:	46bd      	mov	sp, r7
    249a:	bd80      	pop	{r7, pc}

0000249c <Irq1_Handler>:

__attribute__((naked))
void Irq1_Handler(void) {
  __asm volatile(
    249c:	f06f 001f 	mvn.w	r0, #31
    24a0:	4700      	bx	r0
      "ldr r0, =0xFFFFFFE0 \n"
      "bx r0 \n"
                 );
}
    24a2:	bf00      	nop

000024a4 <trigger_crash>:
//  4: Exception Entry Fault
//  5: Unaligned 8 byte read
//  6: Bad 4 byte read
//  7: Illegal EXC_RETURN
void trigger_crash(int crash_id) 
{
    24a4:	b580      	push	{r7, lr}
    24a6:	b082      	sub	sp, #8
    24a8:	af00      	add	r7, sp, #0
    24aa:	6078      	str	r0, [r7, #4]
  switch (crash_id) {
    24ac:	687b      	ldr	r3, [r7, #4]
    24ae:	2b07      	cmp	r3, #7
    24b0:	d82a      	bhi.n	2508 <trigger_crash+0x64>
    24b2:	a201      	add	r2, pc, #4	; (adr r2, 24b8 <trigger_crash+0x14>)
    24b4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    24b8:	000024d9 	.word	0x000024d9
    24bc:	000024df 	.word	0x000024df
    24c0:	000024e5 	.word	0x000024e5
    24c4:	000024eb 	.word	0x000024eb
    24c8:	000024f1 	.word	0x000024f1
    24cc:	000024f7 	.word	0x000024f7
    24d0:	000024fd 	.word	0x000024fd
    24d4:	00002503 	.word	0x00002503
    case 0:
      illegal_instruction_execution();      
    24d8:	f7ff ff92 	bl	2400 <illegal_instruction_execution>
      break;
    24dc:	e015      	b.n	250a <trigger_crash+0x66>
    case 1:
      read_from_bad_address();
    24de:	f7ff ff85 	bl	23ec <read_from_bad_address>
      break;
    24e2:	e012      	b.n	250a <trigger_crash+0x66>
    case 2:
      access_disabled_coprocessor();
    24e4:	f7ff ffb4 	bl	2450 <access_disabled_coprocessor>
      break;
    24e8:	e00f      	b.n	250a <trigger_crash+0x66>
    case 3:
      bad_addr_double_word_write();
    24ea:	f7ff ff9c 	bl	2426 <bad_addr_double_word_write>
      break;
    24ee:	e00c      	b.n	250a <trigger_crash+0x66>
    case 4:
      stkerr_from_psp();
    24f0:	f7ff ff22 	bl	2338 <stkerr_from_psp>
      break;
    24f4:	e009      	b.n	250a <trigger_crash+0x66>
    case 5:
      unaligned_double_word_read();      
    24f6:	f7ff ff90 	bl	241a <unaligned_double_word_read>
      break;
    24fa:	e006      	b.n	250a <trigger_crash+0x66>
    case 6:
      bad_memory_access_crash();
    24fc:	f7ff ff68 	bl	23d0 <bad_memory_access_crash>
      break;
    2500:	e003      	b.n	250a <trigger_crash+0x66>
    case 7:
      trigger_irq();
    2502:	f7ff ff01 	bl	2308 <trigger_irq>
      break;
    2506:	e000      	b.n	250a <trigger_crash+0x66>
    default:
      break;
    2508:	bf00      	nop
  }
}
    250a:	bf00      	nop
    250c:	3708      	adds	r7, #8
    250e:	46bd      	mov	sp, r7
    2510:	bd80      	pop	{r7, pc}

00002512 <recover_from_task_fault>:
void recover_from_task_fault(void) 
{
    2512:	b480      	push	{r7}
    2514:	af00      	add	r7, sp, #0
  while (1) {
    2516:	e7fe      	b.n	2516 <recover_from_task_fault+0x4>
    2518:	e000ed88 	.word	0xe000ed88

Disassembly of section .text.Default_Handler:

000033e0 <BusFault_Handler>:
.section .text.Default_Handler,"ax",%progbits
Default_Handler:
    b .
    33e0:	e7fe      	b.n	33e0 <BusFault_Handler>
