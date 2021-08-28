
../../../../build/lm3s811/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start>:
.weak  _start
.type  _start, %function
_start:

# bl mmu_setting_1
ldr sp, =_estack
       0:	f8df d004 	ldr.w	sp, [pc, #4]	; 8 <_start+0x8>
ldr r1, =main
       4:	4901      	ldr	r1, [pc, #4]	; (c <_start+0xc>)
bx r1
       6:	4708      	bx	r1
ldr sp, =_estack
       8:	200018d8 	.word	0x200018d8
ldr r1, =main
       c:	00000051 	.word	0x00000051

00000010 <g_pfnVectors>:
      10:	200018d8 00000001 0000006d 00000085     ... ....m.......
      20:	0000009d 000000b5 000000cd 000020e0     ............. ..
      30:	000020e0 000020e0 000020e0 000000e5     . ... ... ......
      40:	000000fd 000020e0 00000115 0000012d     ..... ......-...

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
      58:	f001 f8db 	bl	1212 <printf_>
    // shell_start();
    backtrace_test();
      5c:	f001 fe7c 	bl	1d58 <backtrace_test>
    // hal_mpu_test();
    while(1);
      60:	e7fe      	b.n	60 <main+0x10>
      62:	bf00      	nop
      64:	00002100 	.word	0x00002100
      68:	000020e4 	.word	0x000020e4

0000006c <nmi_handler>:
}

void nmi_handler(void)
{
      6c:	b580      	push	{r7, lr}
      6e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      70:	4902      	ldr	r1, [pc, #8]	; (7c <nmi_handler+0x10>)
      72:	4803      	ldr	r0, [pc, #12]	; (80 <nmi_handler+0x14>)
      74:	f001 f8cd 	bl	1212 <printf_>
    while(1);
      78:	e7fe      	b.n	78 <nmi_handler+0xc>
      7a:	bf00      	nop
      7c:	00002108 	.word	0x00002108
      80:	000020f8 	.word	0x000020f8

00000084 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
      84:	b580      	push	{r7, lr}
      86:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      88:	4902      	ldr	r1, [pc, #8]	; (94 <hard_fault_handler+0x10>)
      8a:	4803      	ldr	r0, [pc, #12]	; (98 <hard_fault_handler+0x14>)
      8c:	f001 f8c1 	bl	1212 <printf_>
    while(1);
      90:	e7fe      	b.n	90 <hard_fault_handler+0xc>
      92:	bf00      	nop
      94:	00002114 	.word	0x00002114
      98:	000020f8 	.word	0x000020f8

0000009c <mem_manage_handler>:
}

void mem_manage_handler(void)
{
      9c:	b580      	push	{r7, lr}
      9e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      a0:	4902      	ldr	r1, [pc, #8]	; (ac <mem_manage_handler+0x10>)
      a2:	4803      	ldr	r0, [pc, #12]	; (b0 <mem_manage_handler+0x14>)
      a4:	f001 f8b5 	bl	1212 <printf_>
    while(1);
      a8:	e7fe      	b.n	a8 <mem_manage_handler+0xc>
      aa:	bf00      	nop
      ac:	00002128 	.word	0x00002128
      b0:	000020f8 	.word	0x000020f8

000000b4 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
      b4:	b580      	push	{r7, lr}
      b6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      b8:	4902      	ldr	r1, [pc, #8]	; (c4 <bus_fault_handler+0x10>)
      ba:	4803      	ldr	r0, [pc, #12]	; (c8 <bus_fault_handler+0x14>)
      bc:	f001 f8a9 	bl	1212 <printf_>
    while(1);
      c0:	e7fe      	b.n	c0 <bus_fault_handler+0xc>
      c2:	bf00      	nop
      c4:	0000213c 	.word	0x0000213c
      c8:	000020f8 	.word	0x000020f8

000000cc <usage_fault_handler>:
}

void usage_fault_handler(void)
{
      cc:	b580      	push	{r7, lr}
      ce:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      d0:	4902      	ldr	r1, [pc, #8]	; (dc <usage_fault_handler+0x10>)
      d2:	4803      	ldr	r0, [pc, #12]	; (e0 <usage_fault_handler+0x14>)
      d4:	f001 f89d 	bl	1212 <printf_>
    while(1);
      d8:	e7fe      	b.n	d8 <usage_fault_handler+0xc>
      da:	bf00      	nop
      dc:	00002150 	.word	0x00002150
      e0:	000020f8 	.word	0x000020f8

000000e4 <svc_handler>:
}

void svc_handler(void)
{
      e4:	b580      	push	{r7, lr}
      e6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      e8:	4902      	ldr	r1, [pc, #8]	; (f4 <svc_handler+0x10>)
      ea:	4803      	ldr	r0, [pc, #12]	; (f8 <svc_handler+0x14>)
      ec:	f001 f891 	bl	1212 <printf_>
    while(1);
      f0:	e7fe      	b.n	f0 <svc_handler+0xc>
      f2:	bf00      	nop
      f4:	00002164 	.word	0x00002164
      f8:	000020f8 	.word	0x000020f8

000000fc <debug_mon_handler>:
}

void debug_mon_handler(void)
{
      fc:	b580      	push	{r7, lr}
      fe:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     100:	4902      	ldr	r1, [pc, #8]	; (10c <debug_mon_handler+0x10>)
     102:	4803      	ldr	r0, [pc, #12]	; (110 <debug_mon_handler+0x14>)
     104:	f001 f885 	bl	1212 <printf_>
    while(1);
     108:	e7fe      	b.n	108 <debug_mon_handler+0xc>
     10a:	bf00      	nop
     10c:	00002170 	.word	0x00002170
     110:	000020f8 	.word	0x000020f8

00000114 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     114:	b580      	push	{r7, lr}
     116:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     118:	4902      	ldr	r1, [pc, #8]	; (124 <pend_sv_handler+0x10>)
     11a:	4803      	ldr	r0, [pc, #12]	; (128 <pend_sv_handler+0x14>)
     11c:	f001 f879 	bl	1212 <printf_>
    while(1);
     120:	e7fe      	b.n	120 <pend_sv_handler+0xc>
     122:	bf00      	nop
     124:	00002184 	.word	0x00002184
     128:	000020f8 	.word	0x000020f8

0000012c <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     12c:	b580      	push	{r7, lr}
     12e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     130:	4902      	ldr	r1, [pc, #8]	; (13c <sys_tick_handler+0x10>)
     132:	4803      	ldr	r0, [pc, #12]	; (140 <sys_tick_handler+0x14>)
     134:	f001 f86d 	bl	1212 <printf_>
    while(1);
     138:	e7fe      	b.n	138 <sys_tick_handler+0xc>
     13a:	bf00      	nop
     13c:	00002194 	.word	0x00002194
     140:	000020f8 	.word	0x000020f8

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
     228:	000021a8 	.word	0x000021a8

0000022c <__pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long __pow(int x, int y)
{
     22c:	b480      	push	{r7}
     22e:	b085      	sub	sp, #20
     230:	af00      	add	r7, sp, #0
     232:	6078      	str	r0, [r7, #4]
     234:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
     236:	2301      	movs	r3, #1
     238:	60fb      	str	r3, [r7, #12]
    while (y--)
     23a:	e004      	b.n	246 <__pow+0x1a>
    {
        sum *= x;
     23c:	687a      	ldr	r2, [r7, #4]
     23e:	68fb      	ldr	r3, [r7, #12]
     240:	fb02 f303 	mul.w	r3, r2, r3
     244:	60fb      	str	r3, [r7, #12]
    while (y--)
     246:	683b      	ldr	r3, [r7, #0]
     248:	1e5a      	subs	r2, r3, #1
     24a:	603a      	str	r2, [r7, #0]
     24c:	2b00      	cmp	r3, #0
     24e:	d1f5      	bne.n	23c <__pow+0x10>
    }
    return sum;
     250:	68fb      	ldr	r3, [r7, #12]
}
     252:	4618      	mov	r0, r3
     254:	3714      	adds	r7, #20
     256:	46bd      	mov	sp, r7
     258:	bc80      	pop	{r7}
     25a:	4770      	bx	lr

0000025c <__putchar>:

void __putchar(const char ch)
{
     25c:	b480      	push	{r7}
     25e:	b083      	sub	sp, #12
     260:	af00      	add	r7, sp, #0
     262:	4603      	mov	r3, r0
     264:	71fb      	strb	r3, [r7, #7]
    *UART_DR = ch;
     266:	4a04      	ldr	r2, [pc, #16]	; (278 <__putchar+0x1c>)
     268:	79fb      	ldrb	r3, [r7, #7]
     26a:	6013      	str	r3, [r2, #0]
}
     26c:	bf00      	nop
     26e:	370c      	adds	r7, #12
     270:	46bd      	mov	sp, r7
     272:	bc80      	pop	{r7}
     274:	4770      	bx	lr
     276:	bf00      	nop
     278:	4000c000 	.word	0x4000c000

0000027c <__getchar>:
#define __putchar(ch) do {*UART_DR = ch;} while(0)
void __getchar(char *chr)
{
     27c:	b480      	push	{r7}
     27e:	b083      	sub	sp, #12
     280:	af00      	add	r7, sp, #0
     282:	6078      	str	r0, [r7, #4]
    *chr = (char)*UART_DR;
     284:	4b04      	ldr	r3, [pc, #16]	; (298 <__getchar+0x1c>)
     286:	681b      	ldr	r3, [r3, #0]
     288:	b2da      	uxtb	r2, r3
     28a:	687b      	ldr	r3, [r7, #4]
     28c:	701a      	strb	r2, [r3, #0]
}
     28e:	bf00      	nop
     290:	370c      	adds	r7, #12
     292:	46bd      	mov	sp, r7
     294:	bc80      	pop	{r7}
     296:	4770      	bx	lr
     298:	4000c000 	.word	0x4000c000

0000029c <lite_getchar>:
void lite_getchar(char *chr)
{
     29c:	b480      	push	{r7}
     29e:	b083      	sub	sp, #12
     2a0:	af00      	add	r7, sp, #0
     2a2:	6078      	str	r0, [r7, #4]
    do {
        *chr = (char)*UART_DR;
     2a4:	4b06      	ldr	r3, [pc, #24]	; (2c0 <lite_getchar+0x24>)
     2a6:	681b      	ldr	r3, [r3, #0]
     2a8:	b2da      	uxtb	r2, r3
     2aa:	687b      	ldr	r3, [r7, #4]
     2ac:	701a      	strb	r2, [r3, #0]
    } while (*chr == 0);
     2ae:	687b      	ldr	r3, [r7, #4]
     2b0:	781b      	ldrb	r3, [r3, #0]
     2b2:	2b00      	cmp	r3, #0
     2b4:	d0f6      	beq.n	2a4 <lite_getchar+0x8>
}
     2b6:	bf00      	nop
     2b8:	370c      	adds	r7, #12
     2ba:	46bd      	mov	sp, r7
     2bc:	bc80      	pop	{r7}
     2be:	4770      	bx	lr
     2c0:	4000c000 	.word	0x4000c000

000002c4 <lite_putchar>:
void lite_putchar(char character)
{
     2c4:	b480      	push	{r7}
     2c6:	b083      	sub	sp, #12
     2c8:	af00      	add	r7, sp, #0
     2ca:	4603      	mov	r3, r0
     2cc:	71fb      	strb	r3, [r7, #7]
    __putchar(character);
     2ce:	4a04      	ldr	r2, [pc, #16]	; (2e0 <lite_putchar+0x1c>)
     2d0:	79fb      	ldrb	r3, [r7, #7]
     2d2:	6013      	str	r3, [r2, #0]
}
     2d4:	bf00      	nop
     2d6:	370c      	adds	r7, #12
     2d8:	46bd      	mov	sp, r7
     2da:	bc80      	pop	{r7}
     2dc:	4770      	bx	lr
     2de:	bf00      	nop
     2e0:	4000c000 	.word	0x4000c000

000002e4 <_putchar>:

void _putchar(char character)
{
     2e4:	b480      	push	{r7}
     2e6:	b083      	sub	sp, #12
     2e8:	af00      	add	r7, sp, #0
     2ea:	4603      	mov	r3, r0
     2ec:	71fb      	strb	r3, [r7, #7]
    __putchar(character);
     2ee:	4a04      	ldr	r2, [pc, #16]	; (300 <_putchar+0x1c>)
     2f0:	79fb      	ldrb	r3, [r7, #7]
     2f2:	6013      	str	r3, [r2, #0]
}
     2f4:	bf00      	nop
     2f6:	370c      	adds	r7, #12
     2f8:	46bd      	mov	sp, r7
     2fa:	bc80      	pop	{r7}
     2fc:	4770      	bx	lr
     2fe:	bf00      	nop
     300:	4000c000 	.word	0x4000c000

00000304 <__putstr>:
void __putstr(const char *str)
{
     304:	b480      	push	{r7}
     306:	b083      	sub	sp, #12
     308:	af00      	add	r7, sp, #0
     30a:	6078      	str	r0, [r7, #4]
    while (*str)
     30c:	e005      	b.n	31a <__putstr+0x16>
    {
        __putchar(*str++);
     30e:	687b      	ldr	r3, [r7, #4]
     310:	1c5a      	adds	r2, r3, #1
     312:	607a      	str	r2, [r7, #4]
     314:	781a      	ldrb	r2, [r3, #0]
     316:	4b05      	ldr	r3, [pc, #20]	; (32c <__putstr+0x28>)
     318:	601a      	str	r2, [r3, #0]
    while (*str)
     31a:	687b      	ldr	r3, [r7, #4]
     31c:	781b      	ldrb	r3, [r3, #0]
     31e:	2b00      	cmp	r3, #0
     320:	d1f5      	bne.n	30e <__putstr+0xa>
    }
}
     322:	bf00      	nop
     324:	370c      	adds	r7, #12
     326:	46bd      	mov	sp, r7
     328:	bc80      	pop	{r7}
     32a:	4770      	bx	lr
     32c:	4000c000 	.word	0x4000c000

00000330 <__strlen>:
uint32_t __strlen (const char *__s)
{
     330:	b480      	push	{r7}
     332:	b085      	sub	sp, #20
     334:	af00      	add	r7, sp, #0
     336:	6078      	str	r0, [r7, #4]
    uint32_t i = 0;
     338:	2300      	movs	r3, #0
     33a:	60fb      	str	r3, [r7, #12]
    while(*__s++ != '\0') i++;
     33c:	e002      	b.n	344 <__strlen+0x14>
     33e:	68fb      	ldr	r3, [r7, #12]
     340:	3301      	adds	r3, #1
     342:	60fb      	str	r3, [r7, #12]
     344:	687b      	ldr	r3, [r7, #4]
     346:	1c5a      	adds	r2, r3, #1
     348:	607a      	str	r2, [r7, #4]
     34a:	781b      	ldrb	r3, [r3, #0]
     34c:	2b00      	cmp	r3, #0
     34e:	d1f6      	bne.n	33e <__strlen+0xe>
    return i;
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
     372:	e108      	b.n	586 <lite_printf+0x22a>
    {
        switch (*str)
     374:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     376:	781b      	ldrb	r3, [r3, #0]
     378:	2b0d      	cmp	r3, #13
     37a:	f000 80f1 	beq.w	560 <lite_printf+0x204>
     37e:	2b25      	cmp	r3, #37	; 0x25
     380:	d003      	beq.n	38a <lite_printf+0x2e>
     382:	2b0a      	cmp	r3, #10
     384:	f000 80e5 	beq.w	552 <lite_printf+0x1f6>
     388:	e0f1      	b.n	56e <lite_printf+0x212>
        {
        case '%': //发送参数
            str++;
     38a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     38c:	3301      	adds	r3, #1
     38e:	633b      	str	r3, [r7, #48]	; 0x30
            switch (*str)
     390:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     392:	781b      	ldrb	r3, [r3, #0]
     394:	3b63      	subs	r3, #99	; 0x63
     396:	2b15      	cmp	r3, #21
     398:	f200 80f1 	bhi.w	57e <lite_printf+0x222>
     39c:	a201      	add	r2, pc, #4	; (adr r2, 3a4 <lite_printf+0x48>)
     39e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     3a2:	bf00      	nop
     3a4:	0000053b 	.word	0x0000053b
     3a8:	000003fd 	.word	0x000003fd
     3ac:	0000057f 	.word	0x0000057f
     3b0:	0000057f 	.word	0x0000057f
     3b4:	0000057f 	.word	0x0000057f
     3b8:	0000057f 	.word	0x0000057f
     3bc:	0000057f 	.word	0x0000057f
     3c0:	0000057f 	.word	0x0000057f
     3c4:	0000057f 	.word	0x0000057f
     3c8:	0000057f 	.word	0x0000057f
     3cc:	0000057f 	.word	0x0000057f
     3d0:	0000057f 	.word	0x0000057f
     3d4:	0000057f 	.word	0x0000057f
     3d8:	0000057f 	.word	0x0000057f
     3dc:	0000057f 	.word	0x0000057f
     3e0:	0000057f 	.word	0x0000057f
     3e4:	0000051b 	.word	0x0000051b
     3e8:	0000057f 	.word	0x0000057f
     3ec:	0000057f 	.word	0x0000057f
     3f0:	0000057f 	.word	0x0000057f
     3f4:	0000057f 	.word	0x0000057f
     3f8:	00000485 	.word	0x00000485
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     3fc:	687b      	ldr	r3, [r7, #4]
     3fe:	1d1a      	adds	r2, r3, #4
     400:	607a      	str	r2, [r7, #4]
     402:	681b      	ldr	r3, [r3, #0]
     404:	60fb      	str	r3, [r7, #12]
                r_val = val;
     406:	68fb      	ldr	r3, [r7, #12]
     408:	61fb      	str	r3, [r7, #28]
                count = 0;
     40a:	2300      	movs	r3, #0
     40c:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     40e:	e00a      	b.n	426 <lite_printf+0xca>

                {
                    count++; //整数的长度
     410:	7efb      	ldrb	r3, [r7, #27]
     412:	3301      	adds	r3, #1
     414:	76fb      	strb	r3, [r7, #27]
                    r_val /= 10;
     416:	69fb      	ldr	r3, [r7, #28]
     418:	4a61      	ldr	r2, [pc, #388]	; (5a0 <lite_printf+0x244>)
     41a:	fb82 1203 	smull	r1, r2, r2, r3
     41e:	1092      	asrs	r2, r2, #2
     420:	17db      	asrs	r3, r3, #31
     422:	1ad3      	subs	r3, r2, r3
     424:	61fb      	str	r3, [r7, #28]
                while (r_val)
     426:	69fb      	ldr	r3, [r7, #28]
     428:	2b00      	cmp	r3, #0
     42a:	d1f1      	bne.n	410 <lite_printf+0xb4>
                }

                res += count;
     42c:	7efb      	ldrb	r3, [r7, #27]
     42e:	697a      	ldr	r2, [r7, #20]
     430:	4413      	add	r3, r2
     432:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     434:	68fb      	ldr	r3, [r7, #12]
     436:	61fb      	str	r3, [r7, #28]
                while (count)
     438:	e020      	b.n	47c <lite_printf+0x120>
                {
                    ch = r_val / __pow(10, count - 1);
     43a:	69fc      	ldr	r4, [r7, #28]
     43c:	7efb      	ldrb	r3, [r7, #27]
     43e:	3b01      	subs	r3, #1
     440:	4619      	mov	r1, r3
     442:	200a      	movs	r0, #10
     444:	f7ff fef2 	bl	22c <__pow>
     448:	4603      	mov	r3, r0
     44a:	fbb4 f3f3 	udiv	r3, r4, r3
     44e:	72fb      	strb	r3, [r7, #11]
                    r_val %= __pow(10, count - 1);
     450:	7efb      	ldrb	r3, [r7, #27]
     452:	3b01      	subs	r3, #1
     454:	4619      	mov	r1, r3
     456:	200a      	movs	r0, #10
     458:	f7ff fee8 	bl	22c <__pow>
     45c:	4602      	mov	r2, r0
     45e:	69fb      	ldr	r3, [r7, #28]
     460:	fbb3 f1f2 	udiv	r1, r3, r2
     464:	fb02 f201 	mul.w	r2, r2, r1
     468:	1a9b      	subs	r3, r3, r2
     46a:	61fb      	str	r3, [r7, #28]

                    __putchar(ch + '0');
     46c:	7afb      	ldrb	r3, [r7, #11]
     46e:	f103 0230 	add.w	r2, r3, #48	; 0x30
     472:	4b4c      	ldr	r3, [pc, #304]	; (5a4 <lite_printf+0x248>)
     474:	601a      	str	r2, [r3, #0]
                    //数字到字符的转换
                    count--;
     476:	7efb      	ldrb	r3, [r7, #27]
     478:	3b01      	subs	r3, #1
     47a:	76fb      	strb	r3, [r7, #27]
                while (count)
     47c:	7efb      	ldrb	r3, [r7, #27]
     47e:	2b00      	cmp	r3, #0
     480:	d1db      	bne.n	43a <lite_printf+0xde>
                }
                break;
     482:	e065      	b.n	550 <lite_printf+0x1f4>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     484:	687b      	ldr	r3, [r7, #4]
     486:	1d1a      	adds	r2, r3, #4
     488:	607a      	str	r2, [r7, #4]
     48a:	681b      	ldr	r3, [r3, #0]
     48c:	60fb      	str	r3, [r7, #12]
                r_val = val;
     48e:	68fb      	ldr	r3, [r7, #12]
     490:	61fb      	str	r3, [r7, #28]
                count = 0;
     492:	2300      	movs	r3, #0
     494:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     496:	e008      	b.n	4aa <lite_printf+0x14e>

                {
                    count++; //整数的长度
     498:	7efb      	ldrb	r3, [r7, #27]
     49a:	3301      	adds	r3, #1
     49c:	76fb      	strb	r3, [r7, #27]
                    r_val /= 16;
     49e:	69fb      	ldr	r3, [r7, #28]
     4a0:	2b00      	cmp	r3, #0
     4a2:	da00      	bge.n	4a6 <lite_printf+0x14a>
     4a4:	330f      	adds	r3, #15
     4a6:	111b      	asrs	r3, r3, #4
     4a8:	61fb      	str	r3, [r7, #28]
                while (r_val)
     4aa:	69fb      	ldr	r3, [r7, #28]
     4ac:	2b00      	cmp	r3, #0
     4ae:	d1f3      	bne.n	498 <lite_printf+0x13c>
                }

                res += count;
     4b0:	7efb      	ldrb	r3, [r7, #27]
     4b2:	697a      	ldr	r2, [r7, #20]
     4b4:	4413      	add	r3, r2
     4b6:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     4b8:	68fb      	ldr	r3, [r7, #12]
     4ba:	61fb      	str	r3, [r7, #28]
                while (count)
     4bc:	e029      	b.n	512 <lite_printf+0x1b6>
                {
                    ch = r_val / __pow(16, count - 1);
     4be:	69fc      	ldr	r4, [r7, #28]
     4c0:	7efb      	ldrb	r3, [r7, #27]
     4c2:	3b01      	subs	r3, #1
     4c4:	4619      	mov	r1, r3
     4c6:	2010      	movs	r0, #16
     4c8:	f7ff feb0 	bl	22c <__pow>
     4cc:	4603      	mov	r3, r0
     4ce:	fbb4 f3f3 	udiv	r3, r4, r3
     4d2:	72fb      	strb	r3, [r7, #11]
                    r_val %= __pow(16, count - 1);
     4d4:	7efb      	ldrb	r3, [r7, #27]
     4d6:	3b01      	subs	r3, #1
     4d8:	4619      	mov	r1, r3
     4da:	2010      	movs	r0, #16
     4dc:	f7ff fea6 	bl	22c <__pow>
     4e0:	4602      	mov	r2, r0
     4e2:	69fb      	ldr	r3, [r7, #28]
     4e4:	fbb3 f1f2 	udiv	r1, r3, r2
     4e8:	fb02 f201 	mul.w	r2, r2, r1
     4ec:	1a9b      	subs	r3, r3, r2
     4ee:	61fb      	str	r3, [r7, #28]
                    if (ch <= 9)
     4f0:	7afb      	ldrb	r3, [r7, #11]
     4f2:	2b09      	cmp	r3, #9
     4f4:	d805      	bhi.n	502 <lite_printf+0x1a6>
                        __putchar(ch + '0');
     4f6:	7afb      	ldrb	r3, [r7, #11]
     4f8:	f103 0230 	add.w	r2, r3, #48	; 0x30
     4fc:	4b29      	ldr	r3, [pc, #164]	; (5a4 <lite_printf+0x248>)
     4fe:	601a      	str	r2, [r3, #0]
     500:	e004      	b.n	50c <lite_printf+0x1b0>
                    //数字到字符的转换
                    else
                        __putchar(ch - 10 + 'a');
     502:	7afb      	ldrb	r3, [r7, #11]
     504:	f103 0257 	add.w	r2, r3, #87	; 0x57
     508:	4b26      	ldr	r3, [pc, #152]	; (5a4 <lite_printf+0x248>)
     50a:	601a      	str	r2, [r3, #0]
                    count--;
     50c:	7efb      	ldrb	r3, [r7, #27]
     50e:	3b01      	subs	r3, #1
     510:	76fb      	strb	r3, [r7, #27]
                while (count)
     512:	7efb      	ldrb	r3, [r7, #27]
     514:	2b00      	cmp	r3, #0
     516:	d1d2      	bne.n	4be <lite_printf+0x162>
                }
                break;
     518:	e01a      	b.n	550 <lite_printf+0x1f4>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     51a:	687b      	ldr	r3, [r7, #4]
     51c:	1d1a      	adds	r2, r3, #4
     51e:	607a      	str	r2, [r7, #4]
     520:	681b      	ldr	r3, [r3, #0]
     522:	613b      	str	r3, [r7, #16]
                __putstr(s);
     524:	6938      	ldr	r0, [r7, #16]
     526:	f7ff feed 	bl	304 <__putstr>
                //字符串,返回值为字符指针
                res += __strlen(s);
     52a:	6938      	ldr	r0, [r7, #16]
     52c:	f7ff ff00 	bl	330 <__strlen>
     530:	4602      	mov	r2, r0
     532:	697b      	ldr	r3, [r7, #20]
     534:	4413      	add	r3, r2
     536:	617b      	str	r3, [r7, #20]
                //返回值长度增加
                break;
     538:	e00a      	b.n	550 <lite_printf+0x1f4>
            case 'c':
                __putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     53a:	687b      	ldr	r3, [r7, #4]
     53c:	1d1a      	adds	r2, r3, #4
     53e:	607a      	str	r2, [r7, #4]
     540:	681b      	ldr	r3, [r3, #0]
     542:	b2da      	uxtb	r2, r3
     544:	4b17      	ldr	r3, [pc, #92]	; (5a4 <lite_printf+0x248>)
     546:	601a      	str	r2, [r3, #0]
                res += 1;
     548:	697b      	ldr	r3, [r7, #20]
     54a:	3301      	adds	r3, #1
     54c:	617b      	str	r3, [r7, #20]

                break;
     54e:	bf00      	nop
            default:;
            }
            break;
     550:	e015      	b.n	57e <lite_printf+0x222>
        case '\n':
            __putchar('\n');
     552:	4b14      	ldr	r3, [pc, #80]	; (5a4 <lite_printf+0x248>)
     554:	220a      	movs	r2, #10
     556:	601a      	str	r2, [r3, #0]
            res += 1;
     558:	697b      	ldr	r3, [r7, #20]
     55a:	3301      	adds	r3, #1
     55c:	617b      	str	r3, [r7, #20]
            break;
     55e:	e00f      	b.n	580 <lite_printf+0x224>
        case '\r':
            __putchar('\r');
     560:	4b10      	ldr	r3, [pc, #64]	; (5a4 <lite_printf+0x248>)
     562:	220d      	movs	r2, #13
     564:	601a      	str	r2, [r3, #0]
            res += 1;
     566:	697b      	ldr	r3, [r7, #20]
     568:	3301      	adds	r3, #1
     56a:	617b      	str	r3, [r7, #20]
            break;
     56c:	e008      	b.n	580 <lite_printf+0x224>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            __putchar(*str);
     56e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     570:	781a      	ldrb	r2, [r3, #0]
     572:	4b0c      	ldr	r3, [pc, #48]	; (5a4 <lite_printf+0x248>)
     574:	601a      	str	r2, [r3, #0]
            res += 1;
     576:	697b      	ldr	r3, [r7, #20]
     578:	3301      	adds	r3, #1
     57a:	617b      	str	r3, [r7, #20]
     57c:	e000      	b.n	580 <lite_printf+0x224>
            break;
     57e:	bf00      	nop
        }

        str++;
     580:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     582:	3301      	adds	r3, #1
     584:	633b      	str	r3, [r7, #48]	; 0x30
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     586:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     588:	781b      	ldrb	r3, [r3, #0]
     58a:	2b00      	cmp	r3, #0
     58c:	f47f aef2 	bne.w	374 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     590:	697b      	ldr	r3, [r7, #20]
}
     592:	4618      	mov	r0, r3
     594:	3724      	adds	r7, #36	; 0x24
     596:	46bd      	mov	sp, r7
     598:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     59c:	b004      	add	sp, #16
     59e:	4770      	bx	lr
     5a0:	66666667 	.word	0x66666667
     5a4:	4000c000 	.word	0x4000c000

000005a8 <__io_putchar>:

int __io_putchar(int ch)
{
     5a8:	b480      	push	{r7}
     5aa:	b083      	sub	sp, #12
     5ac:	af00      	add	r7, sp, #0
     5ae:	6078      	str	r0, [r7, #4]
    __putchar(ch);
     5b0:	4a04      	ldr	r2, [pc, #16]	; (5c4 <__io_putchar+0x1c>)
     5b2:	687b      	ldr	r3, [r7, #4]
     5b4:	6013      	str	r3, [r2, #0]
    return 0;
     5b6:	2300      	movs	r3, #0
}
     5b8:	4618      	mov	r0, r3
     5ba:	370c      	adds	r7, #12
     5bc:	46bd      	mov	sp, r7
     5be:	bc80      	pop	{r7}
     5c0:	4770      	bx	lr
     5c2:	bf00      	nop
     5c4:	4000c000 	.word	0x4000c000

000005c8 <__io_getchar>:

int __io_getchar(void)
{   char chr;
     5c8:	b580      	push	{r7, lr}
     5ca:	b082      	sub	sp, #8
     5cc:	af00      	add	r7, sp, #0
    __getchar(&chr);
     5ce:	1dfb      	adds	r3, r7, #7
     5d0:	4618      	mov	r0, r3
     5d2:	f7ff fe53 	bl	27c <__getchar>
    return chr;
     5d6:	79fb      	ldrb	r3, [r7, #7]
}
     5d8:	4618      	mov	r0, r3
     5da:	3708      	adds	r7, #8
     5dc:	46bd      	mov	sp, r7
     5de:	bd80      	pop	{r7, pc}

000005e0 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     5e0:	b480      	push	{r7}
     5e2:	b085      	sub	sp, #20
     5e4:	af00      	add	r7, sp, #0
     5e6:	60b9      	str	r1, [r7, #8]
     5e8:	607a      	str	r2, [r7, #4]
     5ea:	603b      	str	r3, [r7, #0]
     5ec:	4603      	mov	r3, r0
     5ee:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     5f0:	687a      	ldr	r2, [r7, #4]
     5f2:	683b      	ldr	r3, [r7, #0]
     5f4:	429a      	cmp	r2, r3
     5f6:	d204      	bcs.n	602 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     5f8:	68ba      	ldr	r2, [r7, #8]
     5fa:	687b      	ldr	r3, [r7, #4]
     5fc:	4413      	add	r3, r2
     5fe:	7bfa      	ldrb	r2, [r7, #15]
     600:	701a      	strb	r2, [r3, #0]
  }
}
     602:	bf00      	nop
     604:	3714      	adds	r7, #20
     606:	46bd      	mov	sp, r7
     608:	bc80      	pop	{r7}
     60a:	4770      	bx	lr

0000060c <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     60c:	b480      	push	{r7}
     60e:	b085      	sub	sp, #20
     610:	af00      	add	r7, sp, #0
     612:	60b9      	str	r1, [r7, #8]
     614:	607a      	str	r2, [r7, #4]
     616:	603b      	str	r3, [r7, #0]
     618:	4603      	mov	r3, r0
     61a:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     61c:	bf00      	nop
     61e:	3714      	adds	r7, #20
     620:	46bd      	mov	sp, r7
     622:	bc80      	pop	{r7}
     624:	4770      	bx	lr

00000626 <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     626:	b580      	push	{r7, lr}
     628:	b084      	sub	sp, #16
     62a:	af00      	add	r7, sp, #0
     62c:	60b9      	str	r1, [r7, #8]
     62e:	607a      	str	r2, [r7, #4]
     630:	603b      	str	r3, [r7, #0]
     632:	4603      	mov	r3, r0
     634:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     636:	7bfb      	ldrb	r3, [r7, #15]
     638:	2b00      	cmp	r3, #0
     63a:	d003      	beq.n	644 <_out_char+0x1e>
    _putchar(character);
     63c:	7bfb      	ldrb	r3, [r7, #15]
     63e:	4618      	mov	r0, r3
     640:	f7ff fe50 	bl	2e4 <_putchar>
  }
}
     644:	bf00      	nop
     646:	3710      	adds	r7, #16
     648:	46bd      	mov	sp, r7
     64a:	bd80      	pop	{r7, pc}

0000064c <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     64c:	b580      	push	{r7, lr}
     64e:	b084      	sub	sp, #16
     650:	af00      	add	r7, sp, #0
     652:	60b9      	str	r1, [r7, #8]
     654:	607a      	str	r2, [r7, #4]
     656:	603b      	str	r3, [r7, #0]
     658:	4603      	mov	r3, r0
     65a:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     65c:	7bfb      	ldrb	r3, [r7, #15]
     65e:	2b00      	cmp	r3, #0
     660:	d006      	beq.n	670 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     662:	68bb      	ldr	r3, [r7, #8]
     664:	681b      	ldr	r3, [r3, #0]
     666:	68ba      	ldr	r2, [r7, #8]
     668:	6851      	ldr	r1, [r2, #4]
     66a:	7bfa      	ldrb	r2, [r7, #15]
     66c:	4610      	mov	r0, r2
     66e:	4798      	blx	r3
  }
}
     670:	bf00      	nop
     672:	3710      	adds	r7, #16
     674:	46bd      	mov	sp, r7
     676:	bd80      	pop	{r7, pc}

00000678 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     678:	b480      	push	{r7}
     67a:	b085      	sub	sp, #20
     67c:	af00      	add	r7, sp, #0
     67e:	6078      	str	r0, [r7, #4]
     680:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     682:	687b      	ldr	r3, [r7, #4]
     684:	60fb      	str	r3, [r7, #12]
     686:	e002      	b.n	68e <_strnlen_s+0x16>
     688:	68fb      	ldr	r3, [r7, #12]
     68a:	3301      	adds	r3, #1
     68c:	60fb      	str	r3, [r7, #12]
     68e:	68fb      	ldr	r3, [r7, #12]
     690:	781b      	ldrb	r3, [r3, #0]
     692:	2b00      	cmp	r3, #0
     694:	d004      	beq.n	6a0 <_strnlen_s+0x28>
     696:	683b      	ldr	r3, [r7, #0]
     698:	1e5a      	subs	r2, r3, #1
     69a:	603a      	str	r2, [r7, #0]
     69c:	2b00      	cmp	r3, #0
     69e:	d1f3      	bne.n	688 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     6a0:	68fa      	ldr	r2, [r7, #12]
     6a2:	687b      	ldr	r3, [r7, #4]
     6a4:	1ad3      	subs	r3, r2, r3
}
     6a6:	4618      	mov	r0, r3
     6a8:	3714      	adds	r7, #20
     6aa:	46bd      	mov	sp, r7
     6ac:	bc80      	pop	{r7}
     6ae:	4770      	bx	lr

000006b0 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     6b0:	b480      	push	{r7}
     6b2:	b083      	sub	sp, #12
     6b4:	af00      	add	r7, sp, #0
     6b6:	4603      	mov	r3, r0
     6b8:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     6ba:	79fb      	ldrb	r3, [r7, #7]
     6bc:	2b2f      	cmp	r3, #47	; 0x2f
     6be:	d904      	bls.n	6ca <_is_digit+0x1a>
     6c0:	79fb      	ldrb	r3, [r7, #7]
     6c2:	2b39      	cmp	r3, #57	; 0x39
     6c4:	d801      	bhi.n	6ca <_is_digit+0x1a>
     6c6:	2301      	movs	r3, #1
     6c8:	e000      	b.n	6cc <_is_digit+0x1c>
     6ca:	2300      	movs	r3, #0
     6cc:	f003 0301 	and.w	r3, r3, #1
     6d0:	b2db      	uxtb	r3, r3
}
     6d2:	4618      	mov	r0, r3
     6d4:	370c      	adds	r7, #12
     6d6:	46bd      	mov	sp, r7
     6d8:	bc80      	pop	{r7}
     6da:	4770      	bx	lr

000006dc <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     6dc:	b580      	push	{r7, lr}
     6de:	b084      	sub	sp, #16
     6e0:	af00      	add	r7, sp, #0
     6e2:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     6e4:	2300      	movs	r3, #0
     6e6:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     6e8:	e00e      	b.n	708 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     6ea:	68fa      	ldr	r2, [r7, #12]
     6ec:	4613      	mov	r3, r2
     6ee:	009b      	lsls	r3, r3, #2
     6f0:	4413      	add	r3, r2
     6f2:	005b      	lsls	r3, r3, #1
     6f4:	4618      	mov	r0, r3
     6f6:	687b      	ldr	r3, [r7, #4]
     6f8:	681b      	ldr	r3, [r3, #0]
     6fa:	1c59      	adds	r1, r3, #1
     6fc:	687a      	ldr	r2, [r7, #4]
     6fe:	6011      	str	r1, [r2, #0]
     700:	781b      	ldrb	r3, [r3, #0]
     702:	4403      	add	r3, r0
     704:	3b30      	subs	r3, #48	; 0x30
     706:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     708:	687b      	ldr	r3, [r7, #4]
     70a:	681b      	ldr	r3, [r3, #0]
     70c:	781b      	ldrb	r3, [r3, #0]
     70e:	4618      	mov	r0, r3
     710:	f7ff ffce 	bl	6b0 <_is_digit>
     714:	4603      	mov	r3, r0
     716:	2b00      	cmp	r3, #0
     718:	d1e7      	bne.n	6ea <_atoi+0xe>
  }
  return i;
     71a:	68fb      	ldr	r3, [r7, #12]
}
     71c:	4618      	mov	r0, r3
     71e:	3710      	adds	r7, #16
     720:	46bd      	mov	sp, r7
     722:	bd80      	pop	{r7, pc}

00000724 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     724:	b590      	push	{r4, r7, lr}
     726:	b087      	sub	sp, #28
     728:	af00      	add	r7, sp, #0
     72a:	60f8      	str	r0, [r7, #12]
     72c:	60b9      	str	r1, [r7, #8]
     72e:	607a      	str	r2, [r7, #4]
     730:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     732:	687b      	ldr	r3, [r7, #4]
     734:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     736:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     738:	f003 0302 	and.w	r3, r3, #2
     73c:	2b00      	cmp	r3, #0
     73e:	d125      	bne.n	78c <_out_rev+0x68>
     740:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     742:	f003 0301 	and.w	r3, r3, #1
     746:	2b00      	cmp	r3, #0
     748:	d120      	bne.n	78c <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     74a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     74c:	617b      	str	r3, [r7, #20]
     74e:	e00a      	b.n	766 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     750:	687a      	ldr	r2, [r7, #4]
     752:	1c53      	adds	r3, r2, #1
     754:	607b      	str	r3, [r7, #4]
     756:	68fc      	ldr	r4, [r7, #12]
     758:	683b      	ldr	r3, [r7, #0]
     75a:	68b9      	ldr	r1, [r7, #8]
     75c:	2020      	movs	r0, #32
     75e:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     760:	697b      	ldr	r3, [r7, #20]
     762:	3301      	adds	r3, #1
     764:	617b      	str	r3, [r7, #20]
     766:	697a      	ldr	r2, [r7, #20]
     768:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     76a:	429a      	cmp	r2, r3
     76c:	d3f0      	bcc.n	750 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     76e:	e00d      	b.n	78c <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     770:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     772:	3b01      	subs	r3, #1
     774:	62fb      	str	r3, [r7, #44]	; 0x2c
     776:	6aba      	ldr	r2, [r7, #40]	; 0x28
     778:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     77a:	4413      	add	r3, r2
     77c:	7818      	ldrb	r0, [r3, #0]
     77e:	687a      	ldr	r2, [r7, #4]
     780:	1c53      	adds	r3, r2, #1
     782:	607b      	str	r3, [r7, #4]
     784:	68fc      	ldr	r4, [r7, #12]
     786:	683b      	ldr	r3, [r7, #0]
     788:	68b9      	ldr	r1, [r7, #8]
     78a:	47a0      	blx	r4
  while (len) {
     78c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     78e:	2b00      	cmp	r3, #0
     790:	d1ee      	bne.n	770 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     792:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     794:	f003 0302 	and.w	r3, r3, #2
     798:	2b00      	cmp	r3, #0
     79a:	d00e      	beq.n	7ba <_out_rev+0x96>
    while (idx - start_idx < width) {
     79c:	e007      	b.n	7ae <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     79e:	687a      	ldr	r2, [r7, #4]
     7a0:	1c53      	adds	r3, r2, #1
     7a2:	607b      	str	r3, [r7, #4]
     7a4:	68fc      	ldr	r4, [r7, #12]
     7a6:	683b      	ldr	r3, [r7, #0]
     7a8:	68b9      	ldr	r1, [r7, #8]
     7aa:	2020      	movs	r0, #32
     7ac:	47a0      	blx	r4
    while (idx - start_idx < width) {
     7ae:	687a      	ldr	r2, [r7, #4]
     7b0:	693b      	ldr	r3, [r7, #16]
     7b2:	1ad3      	subs	r3, r2, r3
     7b4:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     7b6:	429a      	cmp	r2, r3
     7b8:	d8f1      	bhi.n	79e <_out_rev+0x7a>
    }
  }

  return idx;
     7ba:	687b      	ldr	r3, [r7, #4]
}
     7bc:	4618      	mov	r0, r3
     7be:	371c      	adds	r7, #28
     7c0:	46bd      	mov	sp, r7
     7c2:	bd90      	pop	{r4, r7, pc}

000007c4 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     7c4:	b580      	push	{r7, lr}
     7c6:	b088      	sub	sp, #32
     7c8:	af04      	add	r7, sp, #16
     7ca:	60f8      	str	r0, [r7, #12]
     7cc:	60b9      	str	r1, [r7, #8]
     7ce:	607a      	str	r2, [r7, #4]
     7d0:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     7d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7d4:	f003 0302 	and.w	r3, r3, #2
     7d8:	2b00      	cmp	r3, #0
     7da:	d136      	bne.n	84a <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     7dc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7de:	2b00      	cmp	r3, #0
     7e0:	d018      	beq.n	814 <_ntoa_format+0x50>
     7e2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7e4:	f003 0301 	and.w	r3, r3, #1
     7e8:	2b00      	cmp	r3, #0
     7ea:	d013      	beq.n	814 <_ntoa_format+0x50>
     7ec:	f897 3020 	ldrb.w	r3, [r7, #32]
     7f0:	2b00      	cmp	r3, #0
     7f2:	d104      	bne.n	7fe <_ntoa_format+0x3a>
     7f4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7f6:	f003 030c 	and.w	r3, r3, #12
     7fa:	2b00      	cmp	r3, #0
     7fc:	d00a      	beq.n	814 <_ntoa_format+0x50>
      width--;
     7fe:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     800:	3b01      	subs	r3, #1
     802:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     804:	e006      	b.n	814 <_ntoa_format+0x50>
      buf[len++] = '0';
     806:	69fb      	ldr	r3, [r7, #28]
     808:	1c5a      	adds	r2, r3, #1
     80a:	61fa      	str	r2, [r7, #28]
     80c:	69ba      	ldr	r2, [r7, #24]
     80e:	4413      	add	r3, r2
     810:	2230      	movs	r2, #48	; 0x30
     812:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     814:	69fa      	ldr	r2, [r7, #28]
     816:	6abb      	ldr	r3, [r7, #40]	; 0x28
     818:	429a      	cmp	r2, r3
     81a:	d20a      	bcs.n	832 <_ntoa_format+0x6e>
     81c:	69fb      	ldr	r3, [r7, #28]
     81e:	2b1f      	cmp	r3, #31
     820:	d9f1      	bls.n	806 <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     822:	e006      	b.n	832 <_ntoa_format+0x6e>
      buf[len++] = '0';
     824:	69fb      	ldr	r3, [r7, #28]
     826:	1c5a      	adds	r2, r3, #1
     828:	61fa      	str	r2, [r7, #28]
     82a:	69ba      	ldr	r2, [r7, #24]
     82c:	4413      	add	r3, r2
     82e:	2230      	movs	r2, #48	; 0x30
     830:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     832:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     834:	f003 0301 	and.w	r3, r3, #1
     838:	2b00      	cmp	r3, #0
     83a:	d006      	beq.n	84a <_ntoa_format+0x86>
     83c:	69fa      	ldr	r2, [r7, #28]
     83e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     840:	429a      	cmp	r2, r3
     842:	d202      	bcs.n	84a <_ntoa_format+0x86>
     844:	69fb      	ldr	r3, [r7, #28]
     846:	2b1f      	cmp	r3, #31
     848:	d9ec      	bls.n	824 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     84a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     84c:	f003 0310 	and.w	r3, r3, #16
     850:	2b00      	cmp	r3, #0
     852:	d058      	beq.n	906 <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     854:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     856:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     85a:	2b00      	cmp	r3, #0
     85c:	d116      	bne.n	88c <_ntoa_format+0xc8>
     85e:	69fb      	ldr	r3, [r7, #28]
     860:	2b00      	cmp	r3, #0
     862:	d013      	beq.n	88c <_ntoa_format+0xc8>
     864:	69fa      	ldr	r2, [r7, #28]
     866:	6abb      	ldr	r3, [r7, #40]	; 0x28
     868:	429a      	cmp	r2, r3
     86a:	d003      	beq.n	874 <_ntoa_format+0xb0>
     86c:	69fa      	ldr	r2, [r7, #28]
     86e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     870:	429a      	cmp	r2, r3
     872:	d10b      	bne.n	88c <_ntoa_format+0xc8>
      len--;
     874:	69fb      	ldr	r3, [r7, #28]
     876:	3b01      	subs	r3, #1
     878:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     87a:	69fb      	ldr	r3, [r7, #28]
     87c:	2b00      	cmp	r3, #0
     87e:	d005      	beq.n	88c <_ntoa_format+0xc8>
     880:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     882:	2b10      	cmp	r3, #16
     884:	d102      	bne.n	88c <_ntoa_format+0xc8>
        len--;
     886:	69fb      	ldr	r3, [r7, #28]
     888:	3b01      	subs	r3, #1
     88a:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     88c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     88e:	2b10      	cmp	r3, #16
     890:	d10f      	bne.n	8b2 <_ntoa_format+0xee>
     892:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     894:	f003 0320 	and.w	r3, r3, #32
     898:	2b00      	cmp	r3, #0
     89a:	d10a      	bne.n	8b2 <_ntoa_format+0xee>
     89c:	69fb      	ldr	r3, [r7, #28]
     89e:	2b1f      	cmp	r3, #31
     8a0:	d807      	bhi.n	8b2 <_ntoa_format+0xee>
      buf[len++] = 'x';
     8a2:	69fb      	ldr	r3, [r7, #28]
     8a4:	1c5a      	adds	r2, r3, #1
     8a6:	61fa      	str	r2, [r7, #28]
     8a8:	69ba      	ldr	r2, [r7, #24]
     8aa:	4413      	add	r3, r2
     8ac:	2278      	movs	r2, #120	; 0x78
     8ae:	701a      	strb	r2, [r3, #0]
     8b0:	e01f      	b.n	8f2 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     8b2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8b4:	2b10      	cmp	r3, #16
     8b6:	d10f      	bne.n	8d8 <_ntoa_format+0x114>
     8b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8ba:	f003 0320 	and.w	r3, r3, #32
     8be:	2b00      	cmp	r3, #0
     8c0:	d00a      	beq.n	8d8 <_ntoa_format+0x114>
     8c2:	69fb      	ldr	r3, [r7, #28]
     8c4:	2b1f      	cmp	r3, #31
     8c6:	d807      	bhi.n	8d8 <_ntoa_format+0x114>
      buf[len++] = 'X';
     8c8:	69fb      	ldr	r3, [r7, #28]
     8ca:	1c5a      	adds	r2, r3, #1
     8cc:	61fa      	str	r2, [r7, #28]
     8ce:	69ba      	ldr	r2, [r7, #24]
     8d0:	4413      	add	r3, r2
     8d2:	2258      	movs	r2, #88	; 0x58
     8d4:	701a      	strb	r2, [r3, #0]
     8d6:	e00c      	b.n	8f2 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     8d8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8da:	2b02      	cmp	r3, #2
     8dc:	d109      	bne.n	8f2 <_ntoa_format+0x12e>
     8de:	69fb      	ldr	r3, [r7, #28]
     8e0:	2b1f      	cmp	r3, #31
     8e2:	d806      	bhi.n	8f2 <_ntoa_format+0x12e>
      buf[len++] = 'b';
     8e4:	69fb      	ldr	r3, [r7, #28]
     8e6:	1c5a      	adds	r2, r3, #1
     8e8:	61fa      	str	r2, [r7, #28]
     8ea:	69ba      	ldr	r2, [r7, #24]
     8ec:	4413      	add	r3, r2
     8ee:	2262      	movs	r2, #98	; 0x62
     8f0:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     8f2:	69fb      	ldr	r3, [r7, #28]
     8f4:	2b1f      	cmp	r3, #31
     8f6:	d806      	bhi.n	906 <_ntoa_format+0x142>
      buf[len++] = '0';
     8f8:	69fb      	ldr	r3, [r7, #28]
     8fa:	1c5a      	adds	r2, r3, #1
     8fc:	61fa      	str	r2, [r7, #28]
     8fe:	69ba      	ldr	r2, [r7, #24]
     900:	4413      	add	r3, r2
     902:	2230      	movs	r2, #48	; 0x30
     904:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     906:	69fb      	ldr	r3, [r7, #28]
     908:	2b1f      	cmp	r3, #31
     90a:	d824      	bhi.n	956 <_ntoa_format+0x192>
    if (negative) {
     90c:	f897 3020 	ldrb.w	r3, [r7, #32]
     910:	2b00      	cmp	r3, #0
     912:	d007      	beq.n	924 <_ntoa_format+0x160>
      buf[len++] = '-';
     914:	69fb      	ldr	r3, [r7, #28]
     916:	1c5a      	adds	r2, r3, #1
     918:	61fa      	str	r2, [r7, #28]
     91a:	69ba      	ldr	r2, [r7, #24]
     91c:	4413      	add	r3, r2
     91e:	222d      	movs	r2, #45	; 0x2d
     920:	701a      	strb	r2, [r3, #0]
     922:	e018      	b.n	956 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     924:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     926:	f003 0304 	and.w	r3, r3, #4
     92a:	2b00      	cmp	r3, #0
     92c:	d007      	beq.n	93e <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     92e:	69fb      	ldr	r3, [r7, #28]
     930:	1c5a      	adds	r2, r3, #1
     932:	61fa      	str	r2, [r7, #28]
     934:	69ba      	ldr	r2, [r7, #24]
     936:	4413      	add	r3, r2
     938:	222b      	movs	r2, #43	; 0x2b
     93a:	701a      	strb	r2, [r3, #0]
     93c:	e00b      	b.n	956 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     93e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     940:	f003 0308 	and.w	r3, r3, #8
     944:	2b00      	cmp	r3, #0
     946:	d006      	beq.n	956 <_ntoa_format+0x192>
      buf[len++] = ' ';
     948:	69fb      	ldr	r3, [r7, #28]
     94a:	1c5a      	adds	r2, r3, #1
     94c:	61fa      	str	r2, [r7, #28]
     94e:	69ba      	ldr	r2, [r7, #24]
     950:	4413      	add	r3, r2
     952:	2220      	movs	r2, #32
     954:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     956:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     958:	9303      	str	r3, [sp, #12]
     95a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     95c:	9302      	str	r3, [sp, #8]
     95e:	69fb      	ldr	r3, [r7, #28]
     960:	9301      	str	r3, [sp, #4]
     962:	69bb      	ldr	r3, [r7, #24]
     964:	9300      	str	r3, [sp, #0]
     966:	683b      	ldr	r3, [r7, #0]
     968:	687a      	ldr	r2, [r7, #4]
     96a:	68b9      	ldr	r1, [r7, #8]
     96c:	68f8      	ldr	r0, [r7, #12]
     96e:	f7ff fed9 	bl	724 <_out_rev>
     972:	4603      	mov	r3, r0
}
     974:	4618      	mov	r0, r3
     976:	3710      	adds	r7, #16
     978:	46bd      	mov	sp, r7
     97a:	bd80      	pop	{r7, pc}

0000097c <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     97c:	b580      	push	{r7, lr}
     97e:	b096      	sub	sp, #88	; 0x58
     980:	af08      	add	r7, sp, #32
     982:	60f8      	str	r0, [r7, #12]
     984:	60b9      	str	r1, [r7, #8]
     986:	607a      	str	r2, [r7, #4]
     988:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     98a:	2300      	movs	r3, #0
     98c:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     98e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     990:	2b00      	cmp	r3, #0
     992:	d103      	bne.n	99c <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     994:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     996:	f023 0310 	bic.w	r3, r3, #16
     99a:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     99c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     99e:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     9a2:	2b00      	cmp	r3, #0
     9a4:	d002      	beq.n	9ac <_ntoa_long+0x30>
     9a6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     9a8:	2b00      	cmp	r3, #0
     9aa:	d033      	beq.n	a14 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     9ac:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     9ae:	6cba      	ldr	r2, [r7, #72]	; 0x48
     9b0:	fbb3 f2f2 	udiv	r2, r3, r2
     9b4:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     9b6:	fb01 f202 	mul.w	r2, r1, r2
     9ba:	1a9b      	subs	r3, r3, r2
     9bc:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     9c0:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9c4:	2b09      	cmp	r3, #9
     9c6:	d804      	bhi.n	9d2 <_ntoa_long+0x56>
     9c8:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9cc:	3330      	adds	r3, #48	; 0x30
     9ce:	b2da      	uxtb	r2, r3
     9d0:	e00d      	b.n	9ee <_ntoa_long+0x72>
     9d2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     9d4:	f003 0320 	and.w	r3, r3, #32
     9d8:	2b00      	cmp	r3, #0
     9da:	d001      	beq.n	9e0 <_ntoa_long+0x64>
     9dc:	2241      	movs	r2, #65	; 0x41
     9de:	e000      	b.n	9e2 <_ntoa_long+0x66>
     9e0:	2261      	movs	r2, #97	; 0x61
     9e2:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     9e6:	4413      	add	r3, r2
     9e8:	b2db      	uxtb	r3, r3
     9ea:	3b0a      	subs	r3, #10
     9ec:	b2da      	uxtb	r2, r3
     9ee:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9f0:	1c59      	adds	r1, r3, #1
     9f2:	6379      	str	r1, [r7, #52]	; 0x34
     9f4:	f107 0138 	add.w	r1, r7, #56	; 0x38
     9f8:	440b      	add	r3, r1
     9fa:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     9fe:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     a00:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     a02:	fbb2 f3f3 	udiv	r3, r2, r3
     a06:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     a08:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     a0a:	2b00      	cmp	r3, #0
     a0c:	d002      	beq.n	a14 <_ntoa_long+0x98>
     a0e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a10:	2b1f      	cmp	r3, #31
     a12:	d9cb      	bls.n	9ac <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     a14:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     a16:	9306      	str	r3, [sp, #24]
     a18:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     a1a:	9305      	str	r3, [sp, #20]
     a1c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     a1e:	9304      	str	r3, [sp, #16]
     a20:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     a22:	9303      	str	r3, [sp, #12]
     a24:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     a28:	9302      	str	r3, [sp, #8]
     a2a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a2c:	9301      	str	r3, [sp, #4]
     a2e:	f107 0310 	add.w	r3, r7, #16
     a32:	9300      	str	r3, [sp, #0]
     a34:	683b      	ldr	r3, [r7, #0]
     a36:	687a      	ldr	r2, [r7, #4]
     a38:	68b9      	ldr	r1, [r7, #8]
     a3a:	68f8      	ldr	r0, [r7, #12]
     a3c:	f7ff fec2 	bl	7c4 <_ntoa_format>
     a40:	4603      	mov	r3, r0
}
     a42:	4618      	mov	r0, r3
     a44:	3738      	adds	r7, #56	; 0x38
     a46:	46bd      	mov	sp, r7
     a48:	bd80      	pop	{r7, pc}

00000a4a <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     a4a:	b590      	push	{r4, r7, lr}
     a4c:	b099      	sub	sp, #100	; 0x64
     a4e:	af06      	add	r7, sp, #24
     a50:	60f8      	str	r0, [r7, #12]
     a52:	60b9      	str	r1, [r7, #8]
     a54:	607a      	str	r2, [r7, #4]
     a56:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     a58:	2300      	movs	r3, #0
     a5a:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     a5c:	68bb      	ldr	r3, [r7, #8]
     a5e:	2b00      	cmp	r3, #0
     a60:	f040 83c0 	bne.w	11e4 <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     a64:	4b9f      	ldr	r3, [pc, #636]	; (ce4 <_vsnprintf+0x29a>)
     a66:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     a68:	e3bc      	b.n	11e4 <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     a6a:	683b      	ldr	r3, [r7, #0]
     a6c:	781b      	ldrb	r3, [r3, #0]
     a6e:	2b25      	cmp	r3, #37	; 0x25
     a70:	d00c      	beq.n	a8c <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
     a72:	683b      	ldr	r3, [r7, #0]
     a74:	7818      	ldrb	r0, [r3, #0]
     a76:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     a78:	1c53      	adds	r3, r2, #1
     a7a:	637b      	str	r3, [r7, #52]	; 0x34
     a7c:	68fc      	ldr	r4, [r7, #12]
     a7e:	687b      	ldr	r3, [r7, #4]
     a80:	68b9      	ldr	r1, [r7, #8]
     a82:	47a0      	blx	r4
      format++;
     a84:	683b      	ldr	r3, [r7, #0]
     a86:	3301      	adds	r3, #1
     a88:	603b      	str	r3, [r7, #0]
      continue;
     a8a:	e3ab      	b.n	11e4 <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
     a8c:	683b      	ldr	r3, [r7, #0]
     a8e:	3301      	adds	r3, #1
     a90:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     a92:	2300      	movs	r3, #0
     a94:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     a96:	683b      	ldr	r3, [r7, #0]
     a98:	781b      	ldrb	r3, [r3, #0]
     a9a:	3b20      	subs	r3, #32
     a9c:	2b10      	cmp	r3, #16
     a9e:	d857      	bhi.n	b50 <_vsnprintf+0x106>
     aa0:	a201      	add	r2, pc, #4	; (adr r2, aa8 <_vsnprintf+0x5e>)
     aa2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     aa6:	bf00      	nop
     aa8:	00000b29 	.word	0x00000b29
     aac:	00000b51 	.word	0x00000b51
     ab0:	00000b51 	.word	0x00000b51
     ab4:	00000b3d 	.word	0x00000b3d
     ab8:	00000b51 	.word	0x00000b51
     abc:	00000b51 	.word	0x00000b51
     ac0:	00000b51 	.word	0x00000b51
     ac4:	00000b51 	.word	0x00000b51
     ac8:	00000b51 	.word	0x00000b51
     acc:	00000b51 	.word	0x00000b51
     ad0:	00000b51 	.word	0x00000b51
     ad4:	00000b15 	.word	0x00000b15
     ad8:	00000b51 	.word	0x00000b51
     adc:	00000b01 	.word	0x00000b01
     ae0:	00000b51 	.word	0x00000b51
     ae4:	00000b51 	.word	0x00000b51
     ae8:	00000aed 	.word	0x00000aed
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     aec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     aee:	f043 0301 	orr.w	r3, r3, #1
     af2:	647b      	str	r3, [r7, #68]	; 0x44
     af4:	683b      	ldr	r3, [r7, #0]
     af6:	3301      	adds	r3, #1
     af8:	603b      	str	r3, [r7, #0]
     afa:	2301      	movs	r3, #1
     afc:	63bb      	str	r3, [r7, #56]	; 0x38
     afe:	e02a      	b.n	b56 <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     b00:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b02:	f043 0302 	orr.w	r3, r3, #2
     b06:	647b      	str	r3, [r7, #68]	; 0x44
     b08:	683b      	ldr	r3, [r7, #0]
     b0a:	3301      	adds	r3, #1
     b0c:	603b      	str	r3, [r7, #0]
     b0e:	2301      	movs	r3, #1
     b10:	63bb      	str	r3, [r7, #56]	; 0x38
     b12:	e020      	b.n	b56 <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     b14:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b16:	f043 0304 	orr.w	r3, r3, #4
     b1a:	647b      	str	r3, [r7, #68]	; 0x44
     b1c:	683b      	ldr	r3, [r7, #0]
     b1e:	3301      	adds	r3, #1
     b20:	603b      	str	r3, [r7, #0]
     b22:	2301      	movs	r3, #1
     b24:	63bb      	str	r3, [r7, #56]	; 0x38
     b26:	e016      	b.n	b56 <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     b28:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b2a:	f043 0308 	orr.w	r3, r3, #8
     b2e:	647b      	str	r3, [r7, #68]	; 0x44
     b30:	683b      	ldr	r3, [r7, #0]
     b32:	3301      	adds	r3, #1
     b34:	603b      	str	r3, [r7, #0]
     b36:	2301      	movs	r3, #1
     b38:	63bb      	str	r3, [r7, #56]	; 0x38
     b3a:	e00c      	b.n	b56 <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     b3c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b3e:	f043 0310 	orr.w	r3, r3, #16
     b42:	647b      	str	r3, [r7, #68]	; 0x44
     b44:	683b      	ldr	r3, [r7, #0]
     b46:	3301      	adds	r3, #1
     b48:	603b      	str	r3, [r7, #0]
     b4a:	2301      	movs	r3, #1
     b4c:	63bb      	str	r3, [r7, #56]	; 0x38
     b4e:	e002      	b.n	b56 <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     b50:	2300      	movs	r3, #0
     b52:	63bb      	str	r3, [r7, #56]	; 0x38
     b54:	bf00      	nop
      }
    } while (n);
     b56:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     b58:	2b00      	cmp	r3, #0
     b5a:	d19c      	bne.n	a96 <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
     b5c:	2300      	movs	r3, #0
     b5e:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     b60:	683b      	ldr	r3, [r7, #0]
     b62:	781b      	ldrb	r3, [r3, #0]
     b64:	4618      	mov	r0, r3
     b66:	f7ff fda3 	bl	6b0 <_is_digit>
     b6a:	4603      	mov	r3, r0
     b6c:	2b00      	cmp	r3, #0
     b6e:	d005      	beq.n	b7c <_vsnprintf+0x132>
      width = _atoi(&format);
     b70:	463b      	mov	r3, r7
     b72:	4618      	mov	r0, r3
     b74:	f7ff fdb2 	bl	6dc <_atoi>
     b78:	6438      	str	r0, [r7, #64]	; 0x40
     b7a:	e018      	b.n	bae <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     b7c:	683b      	ldr	r3, [r7, #0]
     b7e:	781b      	ldrb	r3, [r3, #0]
     b80:	2b2a      	cmp	r3, #42	; 0x2a
     b82:	d114      	bne.n	bae <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     b84:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b86:	1d1a      	adds	r2, r3, #4
     b88:	65ba      	str	r2, [r7, #88]	; 0x58
     b8a:	681b      	ldr	r3, [r3, #0]
     b8c:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     b8e:	6a3b      	ldr	r3, [r7, #32]
     b90:	2b00      	cmp	r3, #0
     b92:	da07      	bge.n	ba4 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     b94:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b96:	f043 0302 	orr.w	r3, r3, #2
     b9a:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     b9c:	6a3b      	ldr	r3, [r7, #32]
     b9e:	425b      	negs	r3, r3
     ba0:	643b      	str	r3, [r7, #64]	; 0x40
     ba2:	e001      	b.n	ba8 <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     ba4:	6a3b      	ldr	r3, [r7, #32]
     ba6:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     ba8:	683b      	ldr	r3, [r7, #0]
     baa:	3301      	adds	r3, #1
     bac:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     bae:	2300      	movs	r3, #0
     bb0:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     bb2:	683b      	ldr	r3, [r7, #0]
     bb4:	781b      	ldrb	r3, [r3, #0]
     bb6:	2b2e      	cmp	r3, #46	; 0x2e
     bb8:	d124      	bne.n	c04 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     bba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     bbc:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     bc0:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     bc2:	683b      	ldr	r3, [r7, #0]
     bc4:	3301      	adds	r3, #1
     bc6:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     bc8:	683b      	ldr	r3, [r7, #0]
     bca:	781b      	ldrb	r3, [r3, #0]
     bcc:	4618      	mov	r0, r3
     bce:	f7ff fd6f 	bl	6b0 <_is_digit>
     bd2:	4603      	mov	r3, r0
     bd4:	2b00      	cmp	r3, #0
     bd6:	d005      	beq.n	be4 <_vsnprintf+0x19a>
        precision = _atoi(&format);
     bd8:	463b      	mov	r3, r7
     bda:	4618      	mov	r0, r3
     bdc:	f7ff fd7e 	bl	6dc <_atoi>
     be0:	63f8      	str	r0, [r7, #60]	; 0x3c
     be2:	e00f      	b.n	c04 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     be4:	683b      	ldr	r3, [r7, #0]
     be6:	781b      	ldrb	r3, [r3, #0]
     be8:	2b2a      	cmp	r3, #42	; 0x2a
     bea:	d10b      	bne.n	c04 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     bec:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     bee:	1d1a      	adds	r2, r3, #4
     bf0:	65ba      	str	r2, [r7, #88]	; 0x58
     bf2:	681b      	ldr	r3, [r3, #0]
     bf4:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     bf6:	69fb      	ldr	r3, [r7, #28]
     bf8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     bfc:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     bfe:	683b      	ldr	r3, [r7, #0]
     c00:	3301      	adds	r3, #1
     c02:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     c04:	683b      	ldr	r3, [r7, #0]
     c06:	781b      	ldrb	r3, [r3, #0]
     c08:	3b68      	subs	r3, #104	; 0x68
     c0a:	2b12      	cmp	r3, #18
     c0c:	d866      	bhi.n	cdc <_vsnprintf+0x292>
     c0e:	a201      	add	r2, pc, #4	; (adr r2, c14 <_vsnprintf+0x1ca>)
     c10:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     c14:	00000c87 	.word	0x00000c87
     c18:	00000cdd 	.word	0x00000cdd
     c1c:	00000cbd 	.word	0x00000cbd
     c20:	00000cdd 	.word	0x00000cdd
     c24:	00000c61 	.word	0x00000c61
     c28:	00000cdd 	.word	0x00000cdd
     c2c:	00000cdd 	.word	0x00000cdd
     c30:	00000cdd 	.word	0x00000cdd
     c34:	00000cdd 	.word	0x00000cdd
     c38:	00000cdd 	.word	0x00000cdd
     c3c:	00000cdd 	.word	0x00000cdd
     c40:	00000cdd 	.word	0x00000cdd
     c44:	00000cad 	.word	0x00000cad
     c48:	00000cdd 	.word	0x00000cdd
     c4c:	00000cdd 	.word	0x00000cdd
     c50:	00000cdd 	.word	0x00000cdd
     c54:	00000cdd 	.word	0x00000cdd
     c58:	00000cdd 	.word	0x00000cdd
     c5c:	00000ccd 	.word	0x00000ccd
      case 'l' :
        flags |= FLAGS_LONG;
     c60:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c62:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     c66:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c68:	683b      	ldr	r3, [r7, #0]
     c6a:	3301      	adds	r3, #1
     c6c:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     c6e:	683b      	ldr	r3, [r7, #0]
     c70:	781b      	ldrb	r3, [r3, #0]
     c72:	2b6c      	cmp	r3, #108	; 0x6c
     c74:	d134      	bne.n	ce0 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     c76:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c78:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     c7c:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     c7e:	683b      	ldr	r3, [r7, #0]
     c80:	3301      	adds	r3, #1
     c82:	603b      	str	r3, [r7, #0]
        }
        break;
     c84:	e02c      	b.n	ce0 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     c86:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c88:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     c8c:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     c8e:	683b      	ldr	r3, [r7, #0]
     c90:	3301      	adds	r3, #1
     c92:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     c94:	683b      	ldr	r3, [r7, #0]
     c96:	781b      	ldrb	r3, [r3, #0]
     c98:	2b68      	cmp	r3, #104	; 0x68
     c9a:	d125      	bne.n	ce8 <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     c9c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     c9e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     ca2:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     ca4:	683b      	ldr	r3, [r7, #0]
     ca6:	3301      	adds	r3, #1
     ca8:	603b      	str	r3, [r7, #0]
        }
        break;
     caa:	e01d      	b.n	ce8 <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     cac:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cae:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     cb2:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     cb4:	683b      	ldr	r3, [r7, #0]
     cb6:	3301      	adds	r3, #1
     cb8:	603b      	str	r3, [r7, #0]
        break;
     cba:	e016      	b.n	cea <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     cbc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cbe:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     cc2:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     cc4:	683b      	ldr	r3, [r7, #0]
     cc6:	3301      	adds	r3, #1
     cc8:	603b      	str	r3, [r7, #0]
        break;
     cca:	e00e      	b.n	cea <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     ccc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cce:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     cd2:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     cd4:	683b      	ldr	r3, [r7, #0]
     cd6:	3301      	adds	r3, #1
     cd8:	603b      	str	r3, [r7, #0]
        break;
     cda:	e006      	b.n	cea <_vsnprintf+0x2a0>
      default :
        break;
     cdc:	bf00      	nop
     cde:	e004      	b.n	cea <_vsnprintf+0x2a0>
        break;
     ce0:	bf00      	nop
     ce2:	e002      	b.n	cea <_vsnprintf+0x2a0>
     ce4:	0000060d 	.word	0x0000060d
        break;
     ce8:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     cea:	683b      	ldr	r3, [r7, #0]
     cec:	781b      	ldrb	r3, [r3, #0]
     cee:	3b25      	subs	r3, #37	; 0x25
     cf0:	2b53      	cmp	r3, #83	; 0x53
     cf2:	f200 826a 	bhi.w	11ca <_vsnprintf+0x780>
     cf6:	a201      	add	r2, pc, #4	; (adr r2, cfc <_vsnprintf+0x2b2>)
     cf8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     cfc:	000011b3 	.word	0x000011b3
     d00:	000011cb 	.word	0x000011cb
     d04:	000011cb 	.word	0x000011cb
     d08:	000011cb 	.word	0x000011cb
     d0c:	000011cb 	.word	0x000011cb
     d10:	000011cb 	.word	0x000011cb
     d14:	000011cb 	.word	0x000011cb
     d18:	000011cb 	.word	0x000011cb
     d1c:	000011cb 	.word	0x000011cb
     d20:	000011cb 	.word	0x000011cb
     d24:	000011cb 	.word	0x000011cb
     d28:	000011cb 	.word	0x000011cb
     d2c:	000011cb 	.word	0x000011cb
     d30:	000011cb 	.word	0x000011cb
     d34:	000011cb 	.word	0x000011cb
     d38:	000011cb 	.word	0x000011cb
     d3c:	000011cb 	.word	0x000011cb
     d40:	000011cb 	.word	0x000011cb
     d44:	000011cb 	.word	0x000011cb
     d48:	000011cb 	.word	0x000011cb
     d4c:	000011cb 	.word	0x000011cb
     d50:	000011cb 	.word	0x000011cb
     d54:	000011cb 	.word	0x000011cb
     d58:	000011cb 	.word	0x000011cb
     d5c:	000011cb 	.word	0x000011cb
     d60:	000011cb 	.word	0x000011cb
     d64:	000011cb 	.word	0x000011cb
     d68:	000011cb 	.word	0x000011cb
     d6c:	000011cb 	.word	0x000011cb
     d70:	000011cb 	.word	0x000011cb
     d74:	000011cb 	.word	0x000011cb
     d78:	000011cb 	.word	0x000011cb
     d7c:	000011cb 	.word	0x000011cb
     d80:	000011cb 	.word	0x000011cb
     d84:	000011cb 	.word	0x000011cb
     d88:	000011cb 	.word	0x000011cb
     d8c:	000011cb 	.word	0x000011cb
     d90:	000011cb 	.word	0x000011cb
     d94:	000011cb 	.word	0x000011cb
     d98:	000011cb 	.word	0x000011cb
     d9c:	000011cb 	.word	0x000011cb
     da0:	000011cb 	.word	0x000011cb
     da4:	000011cb 	.word	0x000011cb
     da8:	000011cb 	.word	0x000011cb
     dac:	000011cb 	.word	0x000011cb
     db0:	000011cb 	.word	0x000011cb
     db4:	000011cb 	.word	0x000011cb
     db8:	000011cb 	.word	0x000011cb
     dbc:	000011cb 	.word	0x000011cb
     dc0:	000011cb 	.word	0x000011cb
     dc4:	000011cb 	.word	0x000011cb
     dc8:	00000e4d 	.word	0x00000e4d
     dcc:	000011cb 	.word	0x000011cb
     dd0:	000011cb 	.word	0x000011cb
     dd4:	000011cb 	.word	0x000011cb
     dd8:	000011cb 	.word	0x000011cb
     ddc:	000011cb 	.word	0x000011cb
     de0:	000011cb 	.word	0x000011cb
     de4:	000011cb 	.word	0x000011cb
     de8:	000011cb 	.word	0x000011cb
     dec:	000011cb 	.word	0x000011cb
     df0:	00000e4d 	.word	0x00000e4d
     df4:	00001039 	.word	0x00001039
     df8:	00000e4d 	.word	0x00000e4d
     dfc:	000011cb 	.word	0x000011cb
     e00:	000011cb 	.word	0x000011cb
     e04:	000011cb 	.word	0x000011cb
     e08:	000011cb 	.word	0x000011cb
     e0c:	00000e4d 	.word	0x00000e4d
     e10:	000011cb 	.word	0x000011cb
     e14:	000011cb 	.word	0x000011cb
     e18:	000011cb 	.word	0x000011cb
     e1c:	000011cb 	.word	0x000011cb
     e20:	000011cb 	.word	0x000011cb
     e24:	00000e4d 	.word	0x00000e4d
     e28:	00001171 	.word	0x00001171
     e2c:	000011cb 	.word	0x000011cb
     e30:	000011cb 	.word	0x000011cb
     e34:	000010ad 	.word	0x000010ad
     e38:	000011cb 	.word	0x000011cb
     e3c:	00000e4d 	.word	0x00000e4d
     e40:	000011cb 	.word	0x000011cb
     e44:	000011cb 	.word	0x000011cb
     e48:	00000e4d 	.word	0x00000e4d
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
     e4c:	683b      	ldr	r3, [r7, #0]
     e4e:	781b      	ldrb	r3, [r3, #0]
     e50:	2b78      	cmp	r3, #120	; 0x78
     e52:	d003      	beq.n	e5c <_vsnprintf+0x412>
     e54:	683b      	ldr	r3, [r7, #0]
     e56:	781b      	ldrb	r3, [r3, #0]
     e58:	2b58      	cmp	r3, #88	; 0x58
     e5a:	d102      	bne.n	e62 <_vsnprintf+0x418>
          base = 16U;
     e5c:	2310      	movs	r3, #16
     e5e:	633b      	str	r3, [r7, #48]	; 0x30
     e60:	e013      	b.n	e8a <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
     e62:	683b      	ldr	r3, [r7, #0]
     e64:	781b      	ldrb	r3, [r3, #0]
     e66:	2b6f      	cmp	r3, #111	; 0x6f
     e68:	d102      	bne.n	e70 <_vsnprintf+0x426>
          base =  8U;
     e6a:	2308      	movs	r3, #8
     e6c:	633b      	str	r3, [r7, #48]	; 0x30
     e6e:	e00c      	b.n	e8a <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
     e70:	683b      	ldr	r3, [r7, #0]
     e72:	781b      	ldrb	r3, [r3, #0]
     e74:	2b62      	cmp	r3, #98	; 0x62
     e76:	d102      	bne.n	e7e <_vsnprintf+0x434>
          base =  2U;
     e78:	2302      	movs	r3, #2
     e7a:	633b      	str	r3, [r7, #48]	; 0x30
     e7c:	e005      	b.n	e8a <_vsnprintf+0x440>
        }
        else {
          base = 10U;
     e7e:	230a      	movs	r3, #10
     e80:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
     e82:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e84:	f023 0310 	bic.w	r3, r3, #16
     e88:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
     e8a:	683b      	ldr	r3, [r7, #0]
     e8c:	781b      	ldrb	r3, [r3, #0]
     e8e:	2b58      	cmp	r3, #88	; 0x58
     e90:	d103      	bne.n	e9a <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
     e92:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e94:	f043 0320 	orr.w	r3, r3, #32
     e98:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
     e9a:	683b      	ldr	r3, [r7, #0]
     e9c:	781b      	ldrb	r3, [r3, #0]
     e9e:	2b69      	cmp	r3, #105	; 0x69
     ea0:	d007      	beq.n	eb2 <_vsnprintf+0x468>
     ea2:	683b      	ldr	r3, [r7, #0]
     ea4:	781b      	ldrb	r3, [r3, #0]
     ea6:	2b64      	cmp	r3, #100	; 0x64
     ea8:	d003      	beq.n	eb2 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
     eaa:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eac:	f023 030c 	bic.w	r3, r3, #12
     eb0:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
     eb2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eb4:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     eb8:	2b00      	cmp	r3, #0
     eba:	d003      	beq.n	ec4 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
     ebc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ebe:	f023 0301 	bic.w	r3, r3, #1
     ec2:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
     ec4:	683b      	ldr	r3, [r7, #0]
     ec6:	781b      	ldrb	r3, [r3, #0]
     ec8:	2b69      	cmp	r3, #105	; 0x69
     eca:	d003      	beq.n	ed4 <_vsnprintf+0x48a>
     ecc:	683b      	ldr	r3, [r7, #0]
     ece:	781b      	ldrb	r3, [r3, #0]
     ed0:	2b64      	cmp	r3, #100	; 0x64
     ed2:	d15e      	bne.n	f92 <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
     ed4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ed6:	f403 7300 	and.w	r3, r3, #512	; 0x200
     eda:	2b00      	cmp	r3, #0
     edc:	f040 80a8 	bne.w	1030 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     ee0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ee2:	f403 7380 	and.w	r3, r3, #256	; 0x100
     ee6:	2b00      	cmp	r3, #0
     ee8:	d01e      	beq.n	f28 <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
     eea:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     eec:	1d1a      	adds	r2, r3, #4
     eee:	65ba      	str	r2, [r7, #88]	; 0x58
     ef0:	681b      	ldr	r3, [r3, #0]
     ef2:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     ef4:	693b      	ldr	r3, [r7, #16]
     ef6:	2b00      	cmp	r3, #0
     ef8:	bfb8      	it	lt
     efa:	425b      	neglt	r3, r3
     efc:	4619      	mov	r1, r3
     efe:	693b      	ldr	r3, [r7, #16]
     f00:	0fdb      	lsrs	r3, r3, #31
     f02:	b2db      	uxtb	r3, r3
     f04:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f06:	9205      	str	r2, [sp, #20]
     f08:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f0a:	9204      	str	r2, [sp, #16]
     f0c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f0e:	9203      	str	r2, [sp, #12]
     f10:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f12:	9202      	str	r2, [sp, #8]
     f14:	9301      	str	r3, [sp, #4]
     f16:	9100      	str	r1, [sp, #0]
     f18:	687b      	ldr	r3, [r7, #4]
     f1a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f1c:	68b9      	ldr	r1, [r7, #8]
     f1e:	68f8      	ldr	r0, [r7, #12]
     f20:	f7ff fd2c 	bl	97c <_ntoa_long>
     f24:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     f26:	e083      	b.n	1030 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
     f28:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f2a:	f003 0340 	and.w	r3, r3, #64	; 0x40
     f2e:	2b00      	cmp	r3, #0
     f30:	d005      	beq.n	f3e <_vsnprintf+0x4f4>
     f32:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f34:	1d1a      	adds	r2, r3, #4
     f36:	65ba      	str	r2, [r7, #88]	; 0x58
     f38:	681b      	ldr	r3, [r3, #0]
     f3a:	b2db      	uxtb	r3, r3
     f3c:	e00e      	b.n	f5c <_vsnprintf+0x512>
     f3e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f40:	f003 0380 	and.w	r3, r3, #128	; 0x80
     f44:	2b00      	cmp	r3, #0
     f46:	d005      	beq.n	f54 <_vsnprintf+0x50a>
     f48:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f4a:	1d1a      	adds	r2, r3, #4
     f4c:	65ba      	str	r2, [r7, #88]	; 0x58
     f4e:	681b      	ldr	r3, [r3, #0]
     f50:	b21b      	sxth	r3, r3
     f52:	e003      	b.n	f5c <_vsnprintf+0x512>
     f54:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f56:	1d1a      	adds	r2, r3, #4
     f58:	65ba      	str	r2, [r7, #88]	; 0x58
     f5a:	681b      	ldr	r3, [r3, #0]
     f5c:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     f5e:	697b      	ldr	r3, [r7, #20]
     f60:	2b00      	cmp	r3, #0
     f62:	bfb8      	it	lt
     f64:	425b      	neglt	r3, r3
     f66:	4619      	mov	r1, r3
     f68:	697b      	ldr	r3, [r7, #20]
     f6a:	0fdb      	lsrs	r3, r3, #31
     f6c:	b2db      	uxtb	r3, r3
     f6e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     f70:	9205      	str	r2, [sp, #20]
     f72:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f74:	9204      	str	r2, [sp, #16]
     f76:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     f78:	9203      	str	r2, [sp, #12]
     f7a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     f7c:	9202      	str	r2, [sp, #8]
     f7e:	9301      	str	r3, [sp, #4]
     f80:	9100      	str	r1, [sp, #0]
     f82:	687b      	ldr	r3, [r7, #4]
     f84:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f86:	68b9      	ldr	r1, [r7, #8]
     f88:	68f8      	ldr	r0, [r7, #12]
     f8a:	f7ff fcf7 	bl	97c <_ntoa_long>
     f8e:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     f90:	e04e      	b.n	1030 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
     f92:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f94:	f403 7300 	and.w	r3, r3, #512	; 0x200
     f98:	2b00      	cmp	r3, #0
     f9a:	d149      	bne.n	1030 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     f9c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f9e:	f403 7380 	and.w	r3, r3, #256	; 0x100
     fa2:	2b00      	cmp	r3, #0
     fa4:	d016      	beq.n	fd4 <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
     fa6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fa8:	1d1a      	adds	r2, r3, #4
     faa:	65ba      	str	r2, [r7, #88]	; 0x58
     fac:	681b      	ldr	r3, [r3, #0]
     fae:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     fb0:	9205      	str	r2, [sp, #20]
     fb2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     fb4:	9204      	str	r2, [sp, #16]
     fb6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     fb8:	9203      	str	r2, [sp, #12]
     fba:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     fbc:	9202      	str	r2, [sp, #8]
     fbe:	2200      	movs	r2, #0
     fc0:	9201      	str	r2, [sp, #4]
     fc2:	9300      	str	r3, [sp, #0]
     fc4:	687b      	ldr	r3, [r7, #4]
     fc6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     fc8:	68b9      	ldr	r1, [r7, #8]
     fca:	68f8      	ldr	r0, [r7, #12]
     fcc:	f7ff fcd6 	bl	97c <_ntoa_long>
     fd0:	6378      	str	r0, [r7, #52]	; 0x34
     fd2:	e02d      	b.n	1030 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
     fd4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fd6:	f003 0340 	and.w	r3, r3, #64	; 0x40
     fda:	2b00      	cmp	r3, #0
     fdc:	d005      	beq.n	fea <_vsnprintf+0x5a0>
     fde:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     fe0:	1d1a      	adds	r2, r3, #4
     fe2:	65ba      	str	r2, [r7, #88]	; 0x58
     fe4:	681b      	ldr	r3, [r3, #0]
     fe6:	b2db      	uxtb	r3, r3
     fe8:	e00e      	b.n	1008 <_vsnprintf+0x5be>
     fea:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fec:	f003 0380 	and.w	r3, r3, #128	; 0x80
     ff0:	2b00      	cmp	r3, #0
     ff2:	d005      	beq.n	1000 <_vsnprintf+0x5b6>
     ff4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     ff6:	1d1a      	adds	r2, r3, #4
     ff8:	65ba      	str	r2, [r7, #88]	; 0x58
     ffa:	681b      	ldr	r3, [r3, #0]
     ffc:	b29b      	uxth	r3, r3
     ffe:	e003      	b.n	1008 <_vsnprintf+0x5be>
    1000:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1002:	1d1a      	adds	r2, r3, #4
    1004:	65ba      	str	r2, [r7, #88]	; 0x58
    1006:	681b      	ldr	r3, [r3, #0]
    1008:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    100a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    100c:	9305      	str	r3, [sp, #20]
    100e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1010:	9304      	str	r3, [sp, #16]
    1012:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1014:	9303      	str	r3, [sp, #12]
    1016:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1018:	9302      	str	r3, [sp, #8]
    101a:	2300      	movs	r3, #0
    101c:	9301      	str	r3, [sp, #4]
    101e:	69bb      	ldr	r3, [r7, #24]
    1020:	9300      	str	r3, [sp, #0]
    1022:	687b      	ldr	r3, [r7, #4]
    1024:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1026:	68b9      	ldr	r1, [r7, #8]
    1028:	68f8      	ldr	r0, [r7, #12]
    102a:	f7ff fca7 	bl	97c <_ntoa_long>
    102e:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
    1030:	683b      	ldr	r3, [r7, #0]
    1032:	3301      	adds	r3, #1
    1034:	603b      	str	r3, [r7, #0]
        break;
    1036:	e0d5      	b.n	11e4 <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
    1038:	2301      	movs	r3, #1
    103a:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    103c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    103e:	f003 0302 	and.w	r3, r3, #2
    1042:	2b00      	cmp	r3, #0
    1044:	d10e      	bne.n	1064 <_vsnprintf+0x61a>
          while (l++ < width) {
    1046:	e007      	b.n	1058 <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
    1048:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    104a:	1c53      	adds	r3, r2, #1
    104c:	637b      	str	r3, [r7, #52]	; 0x34
    104e:	68fc      	ldr	r4, [r7, #12]
    1050:	687b      	ldr	r3, [r7, #4]
    1052:	68b9      	ldr	r1, [r7, #8]
    1054:	2020      	movs	r0, #32
    1056:	47a0      	blx	r4
          while (l++ < width) {
    1058:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    105a:	1c5a      	adds	r2, r3, #1
    105c:	62fa      	str	r2, [r7, #44]	; 0x2c
    105e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1060:	429a      	cmp	r2, r3
    1062:	d8f1      	bhi.n	1048 <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    1064:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1066:	1d1a      	adds	r2, r3, #4
    1068:	65ba      	str	r2, [r7, #88]	; 0x58
    106a:	681b      	ldr	r3, [r3, #0]
    106c:	b2d8      	uxtb	r0, r3
    106e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1070:	1c53      	adds	r3, r2, #1
    1072:	637b      	str	r3, [r7, #52]	; 0x34
    1074:	68fc      	ldr	r4, [r7, #12]
    1076:	687b      	ldr	r3, [r7, #4]
    1078:	68b9      	ldr	r1, [r7, #8]
    107a:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    107c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    107e:	f003 0302 	and.w	r3, r3, #2
    1082:	2b00      	cmp	r3, #0
    1084:	d00e      	beq.n	10a4 <_vsnprintf+0x65a>
          while (l++ < width) {
    1086:	e007      	b.n	1098 <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
    1088:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    108a:	1c53      	adds	r3, r2, #1
    108c:	637b      	str	r3, [r7, #52]	; 0x34
    108e:	68fc      	ldr	r4, [r7, #12]
    1090:	687b      	ldr	r3, [r7, #4]
    1092:	68b9      	ldr	r1, [r7, #8]
    1094:	2020      	movs	r0, #32
    1096:	47a0      	blx	r4
          while (l++ < width) {
    1098:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    109a:	1c5a      	adds	r2, r3, #1
    109c:	62fa      	str	r2, [r7, #44]	; 0x2c
    109e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    10a0:	429a      	cmp	r2, r3
    10a2:	d8f1      	bhi.n	1088 <_vsnprintf+0x63e>
          }
        }
        format++;
    10a4:	683b      	ldr	r3, [r7, #0]
    10a6:	3301      	adds	r3, #1
    10a8:	603b      	str	r3, [r7, #0]
        break;
    10aa:	e09b      	b.n	11e4 <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    10ac:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    10ae:	1d1a      	adds	r2, r3, #4
    10b0:	65ba      	str	r2, [r7, #88]	; 0x58
    10b2:	681b      	ldr	r3, [r3, #0]
    10b4:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    10b6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10b8:	2b00      	cmp	r3, #0
    10ba:	d001      	beq.n	10c0 <_vsnprintf+0x676>
    10bc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10be:	e001      	b.n	10c4 <_vsnprintf+0x67a>
    10c0:	f04f 33ff 	mov.w	r3, #4294967295
    10c4:	4619      	mov	r1, r3
    10c6:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    10c8:	f7ff fad6 	bl	678 <_strnlen_s>
    10cc:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    10ce:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10d0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    10d4:	2b00      	cmp	r3, #0
    10d6:	d005      	beq.n	10e4 <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
    10d8:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    10da:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10dc:	4293      	cmp	r3, r2
    10de:	bf28      	it	cs
    10e0:	4613      	movcs	r3, r2
    10e2:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    10e4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10e6:	f003 0302 	and.w	r3, r3, #2
    10ea:	2b00      	cmp	r3, #0
    10ec:	d11a      	bne.n	1124 <_vsnprintf+0x6da>
          while (l++ < width) {
    10ee:	e007      	b.n	1100 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
    10f0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10f2:	1c53      	adds	r3, r2, #1
    10f4:	637b      	str	r3, [r7, #52]	; 0x34
    10f6:	68fc      	ldr	r4, [r7, #12]
    10f8:	687b      	ldr	r3, [r7, #4]
    10fa:	68b9      	ldr	r1, [r7, #8]
    10fc:	2020      	movs	r0, #32
    10fe:	47a0      	blx	r4
          while (l++ < width) {
    1100:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1102:	1c5a      	adds	r2, r3, #1
    1104:	627a      	str	r2, [r7, #36]	; 0x24
    1106:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1108:	429a      	cmp	r2, r3
    110a:	d8f1      	bhi.n	10f0 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    110c:	e00a      	b.n	1124 <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
    110e:	6abb      	ldr	r3, [r7, #40]	; 0x28
    1110:	1c5a      	adds	r2, r3, #1
    1112:	62ba      	str	r2, [r7, #40]	; 0x28
    1114:	7818      	ldrb	r0, [r3, #0]
    1116:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1118:	1c53      	adds	r3, r2, #1
    111a:	637b      	str	r3, [r7, #52]	; 0x34
    111c:	68fc      	ldr	r4, [r7, #12]
    111e:	687b      	ldr	r3, [r7, #4]
    1120:	68b9      	ldr	r1, [r7, #8]
    1122:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    1124:	6abb      	ldr	r3, [r7, #40]	; 0x28
    1126:	781b      	ldrb	r3, [r3, #0]
    1128:	2b00      	cmp	r3, #0
    112a:	d009      	beq.n	1140 <_vsnprintf+0x6f6>
    112c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    112e:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1132:	2b00      	cmp	r3, #0
    1134:	d0eb      	beq.n	110e <_vsnprintf+0x6c4>
    1136:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1138:	1e5a      	subs	r2, r3, #1
    113a:	63fa      	str	r2, [r7, #60]	; 0x3c
    113c:	2b00      	cmp	r3, #0
    113e:	d1e6      	bne.n	110e <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    1140:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1142:	f003 0302 	and.w	r3, r3, #2
    1146:	2b00      	cmp	r3, #0
    1148:	d00e      	beq.n	1168 <_vsnprintf+0x71e>
          while (l++ < width) {
    114a:	e007      	b.n	115c <_vsnprintf+0x712>
            out(' ', buffer, idx++, maxlen);
    114c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    114e:	1c53      	adds	r3, r2, #1
    1150:	637b      	str	r3, [r7, #52]	; 0x34
    1152:	68fc      	ldr	r4, [r7, #12]
    1154:	687b      	ldr	r3, [r7, #4]
    1156:	68b9      	ldr	r1, [r7, #8]
    1158:	2020      	movs	r0, #32
    115a:	47a0      	blx	r4
          while (l++ < width) {
    115c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    115e:	1c5a      	adds	r2, r3, #1
    1160:	627a      	str	r2, [r7, #36]	; 0x24
    1162:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1164:	429a      	cmp	r2, r3
    1166:	d8f1      	bhi.n	114c <_vsnprintf+0x702>
          }
        }
        format++;
    1168:	683b      	ldr	r3, [r7, #0]
    116a:	3301      	adds	r3, #1
    116c:	603b      	str	r3, [r7, #0]
        break;
    116e:	e039      	b.n	11e4 <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    1170:	2308      	movs	r3, #8
    1172:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    1174:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1176:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    117a:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    117c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    117e:	1d1a      	adds	r2, r3, #4
    1180:	65ba      	str	r2, [r7, #88]	; 0x58
    1182:	681b      	ldr	r3, [r3, #0]
    1184:	461a      	mov	r2, r3
    1186:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1188:	9305      	str	r3, [sp, #20]
    118a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    118c:	9304      	str	r3, [sp, #16]
    118e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1190:	9303      	str	r3, [sp, #12]
    1192:	2310      	movs	r3, #16
    1194:	9302      	str	r3, [sp, #8]
    1196:	2300      	movs	r3, #0
    1198:	9301      	str	r3, [sp, #4]
    119a:	9200      	str	r2, [sp, #0]
    119c:	687b      	ldr	r3, [r7, #4]
    119e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11a0:	68b9      	ldr	r1, [r7, #8]
    11a2:	68f8      	ldr	r0, [r7, #12]
    11a4:	f7ff fbea 	bl	97c <_ntoa_long>
    11a8:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    11aa:	683b      	ldr	r3, [r7, #0]
    11ac:	3301      	adds	r3, #1
    11ae:	603b      	str	r3, [r7, #0]
        break;
    11b0:	e018      	b.n	11e4 <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    11b2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11b4:	1c53      	adds	r3, r2, #1
    11b6:	637b      	str	r3, [r7, #52]	; 0x34
    11b8:	68fc      	ldr	r4, [r7, #12]
    11ba:	687b      	ldr	r3, [r7, #4]
    11bc:	68b9      	ldr	r1, [r7, #8]
    11be:	2025      	movs	r0, #37	; 0x25
    11c0:	47a0      	blx	r4
        format++;
    11c2:	683b      	ldr	r3, [r7, #0]
    11c4:	3301      	adds	r3, #1
    11c6:	603b      	str	r3, [r7, #0]
        break;
    11c8:	e00c      	b.n	11e4 <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    11ca:	683b      	ldr	r3, [r7, #0]
    11cc:	7818      	ldrb	r0, [r3, #0]
    11ce:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11d0:	1c53      	adds	r3, r2, #1
    11d2:	637b      	str	r3, [r7, #52]	; 0x34
    11d4:	68fc      	ldr	r4, [r7, #12]
    11d6:	687b      	ldr	r3, [r7, #4]
    11d8:	68b9      	ldr	r1, [r7, #8]
    11da:	47a0      	blx	r4
        format++;
    11dc:	683b      	ldr	r3, [r7, #0]
    11de:	3301      	adds	r3, #1
    11e0:	603b      	str	r3, [r7, #0]
        break;
    11e2:	bf00      	nop
  while (*format)
    11e4:	683b      	ldr	r3, [r7, #0]
    11e6:	781b      	ldrb	r3, [r3, #0]
    11e8:	2b00      	cmp	r3, #0
    11ea:	f47f ac3e 	bne.w	a6a <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    11ee:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11f0:	687b      	ldr	r3, [r7, #4]
    11f2:	429a      	cmp	r2, r3
    11f4:	d302      	bcc.n	11fc <_vsnprintf+0x7b2>
    11f6:	687b      	ldr	r3, [r7, #4]
    11f8:	1e5a      	subs	r2, r3, #1
    11fa:	e000      	b.n	11fe <_vsnprintf+0x7b4>
    11fc:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11fe:	68fc      	ldr	r4, [r7, #12]
    1200:	687b      	ldr	r3, [r7, #4]
    1202:	68b9      	ldr	r1, [r7, #8]
    1204:	2000      	movs	r0, #0
    1206:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    1208:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    120a:	4618      	mov	r0, r3
    120c:	374c      	adds	r7, #76	; 0x4c
    120e:	46bd      	mov	sp, r7
    1210:	bd90      	pop	{r4, r7, pc}

00001212 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    1212:	b40f      	push	{r0, r1, r2, r3}
    1214:	b580      	push	{r7, lr}
    1216:	b086      	sub	sp, #24
    1218:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    121a:	f107 031c 	add.w	r3, r7, #28
    121e:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1220:	1d39      	adds	r1, r7, #4
    1222:	68bb      	ldr	r3, [r7, #8]
    1224:	9300      	str	r3, [sp, #0]
    1226:	69bb      	ldr	r3, [r7, #24]
    1228:	f04f 32ff 	mov.w	r2, #4294967295
    122c:	4805      	ldr	r0, [pc, #20]	; (1244 <printf_+0x32>)
    122e:	f7ff fc0c 	bl	a4a <_vsnprintf>
    1232:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1234:	68fb      	ldr	r3, [r7, #12]
}
    1236:	4618      	mov	r0, r3
    1238:	3710      	adds	r7, #16
    123a:	46bd      	mov	sp, r7
    123c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1240:	b004      	add	sp, #16
    1242:	4770      	bx	lr
    1244:	00000627 	.word	0x00000627

00001248 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    1248:	b40e      	push	{r1, r2, r3}
    124a:	b580      	push	{r7, lr}
    124c:	b087      	sub	sp, #28
    124e:	af02      	add	r7, sp, #8
    1250:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    1252:	f107 0320 	add.w	r3, r7, #32
    1256:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    1258:	68bb      	ldr	r3, [r7, #8]
    125a:	9300      	str	r3, [sp, #0]
    125c:	69fb      	ldr	r3, [r7, #28]
    125e:	f04f 32ff 	mov.w	r2, #4294967295
    1262:	6879      	ldr	r1, [r7, #4]
    1264:	4805      	ldr	r0, [pc, #20]	; (127c <sprintf_+0x34>)
    1266:	f7ff fbf0 	bl	a4a <_vsnprintf>
    126a:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    126c:	68fb      	ldr	r3, [r7, #12]
}
    126e:	4618      	mov	r0, r3
    1270:	3714      	adds	r7, #20
    1272:	46bd      	mov	sp, r7
    1274:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1278:	b003      	add	sp, #12
    127a:	4770      	bx	lr
    127c:	000005e1 	.word	0x000005e1

00001280 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1280:	b40c      	push	{r2, r3}
    1282:	b580      	push	{r7, lr}
    1284:	b086      	sub	sp, #24
    1286:	af02      	add	r7, sp, #8
    1288:	6078      	str	r0, [r7, #4]
    128a:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    128c:	f107 031c 	add.w	r3, r7, #28
    1290:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    1292:	68bb      	ldr	r3, [r7, #8]
    1294:	9300      	str	r3, [sp, #0]
    1296:	69bb      	ldr	r3, [r7, #24]
    1298:	683a      	ldr	r2, [r7, #0]
    129a:	6879      	ldr	r1, [r7, #4]
    129c:	4805      	ldr	r0, [pc, #20]	; (12b4 <snprintf_+0x34>)
    129e:	f7ff fbd4 	bl	a4a <_vsnprintf>
    12a2:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    12a4:	68fb      	ldr	r3, [r7, #12]
}
    12a6:	4618      	mov	r0, r3
    12a8:	3710      	adds	r7, #16
    12aa:	46bd      	mov	sp, r7
    12ac:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    12b0:	b002      	add	sp, #8
    12b2:	4770      	bx	lr
    12b4:	000005e1 	.word	0x000005e1

000012b8 <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    12b8:	b580      	push	{r7, lr}
    12ba:	b086      	sub	sp, #24
    12bc:	af02      	add	r7, sp, #8
    12be:	6078      	str	r0, [r7, #4]
    12c0:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    12c2:	f107 010c 	add.w	r1, r7, #12
    12c6:	683b      	ldr	r3, [r7, #0]
    12c8:	9300      	str	r3, [sp, #0]
    12ca:	687b      	ldr	r3, [r7, #4]
    12cc:	f04f 32ff 	mov.w	r2, #4294967295
    12d0:	4803      	ldr	r0, [pc, #12]	; (12e0 <vprintf_+0x28>)
    12d2:	f7ff fbba 	bl	a4a <_vsnprintf>
    12d6:	4603      	mov	r3, r0
}
    12d8:	4618      	mov	r0, r3
    12da:	3710      	adds	r7, #16
    12dc:	46bd      	mov	sp, r7
    12de:	bd80      	pop	{r7, pc}
    12e0:	00000627 	.word	0x00000627

000012e4 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    12e4:	b580      	push	{r7, lr}
    12e6:	b086      	sub	sp, #24
    12e8:	af02      	add	r7, sp, #8
    12ea:	60f8      	str	r0, [r7, #12]
    12ec:	60b9      	str	r1, [r7, #8]
    12ee:	607a      	str	r2, [r7, #4]
    12f0:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    12f2:	683b      	ldr	r3, [r7, #0]
    12f4:	9300      	str	r3, [sp, #0]
    12f6:	687b      	ldr	r3, [r7, #4]
    12f8:	68ba      	ldr	r2, [r7, #8]
    12fa:	68f9      	ldr	r1, [r7, #12]
    12fc:	4803      	ldr	r0, [pc, #12]	; (130c <vsnprintf_+0x28>)
    12fe:	f7ff fba4 	bl	a4a <_vsnprintf>
    1302:	4603      	mov	r3, r0
}
    1304:	4618      	mov	r0, r3
    1306:	3710      	adds	r7, #16
    1308:	46bd      	mov	sp, r7
    130a:	bd80      	pop	{r7, pc}
    130c:	000005e1 	.word	0x000005e1

00001310 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    1310:	b40c      	push	{r2, r3}
    1312:	b580      	push	{r7, lr}
    1314:	b088      	sub	sp, #32
    1316:	af02      	add	r7, sp, #8
    1318:	6078      	str	r0, [r7, #4]
    131a:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    131c:	f107 0324 	add.w	r3, r7, #36	; 0x24
    1320:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    1322:	687b      	ldr	r3, [r7, #4]
    1324:	60bb      	str	r3, [r7, #8]
    1326:	683b      	ldr	r3, [r7, #0]
    1328:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    132a:	f107 0108 	add.w	r1, r7, #8
    132e:	693b      	ldr	r3, [r7, #16]
    1330:	9300      	str	r3, [sp, #0]
    1332:	6a3b      	ldr	r3, [r7, #32]
    1334:	f04f 32ff 	mov.w	r2, #4294967295
    1338:	4805      	ldr	r0, [pc, #20]	; (1350 <fctprintf+0x40>)
    133a:	f7ff fb86 	bl	a4a <_vsnprintf>
    133e:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1340:	697b      	ldr	r3, [r7, #20]
}
    1342:	4618      	mov	r0, r3
    1344:	3718      	adds	r7, #24
    1346:	46bd      	mov	sp, r7
    1348:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    134c:	b002      	add	sp, #8
    134e:	4770      	bx	lr
    1350:	0000064d 	.word	0x0000064d

00001354 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
    1354:	b480      	push	{r7}
    1356:	b083      	sub	sp, #12
    1358:	af00      	add	r7, sp, #0
    135a:	4603      	mov	r3, r0
    135c:	6039      	str	r1, [r7, #0]
    135e:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
    1360:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1364:	2b00      	cmp	r3, #0
    1366:	db0a      	blt.n	137e <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    1368:	683b      	ldr	r3, [r7, #0]
    136a:	b2da      	uxtb	r2, r3
    136c:	490c      	ldr	r1, [pc, #48]	; (13a0 <__NVIC_SetPriority+0x4c>)
    136e:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1372:	0112      	lsls	r2, r2, #4
    1374:	b2d2      	uxtb	r2, r2
    1376:	440b      	add	r3, r1
    1378:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
    137c:	e00a      	b.n	1394 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    137e:	683b      	ldr	r3, [r7, #0]
    1380:	b2da      	uxtb	r2, r3
    1382:	4908      	ldr	r1, [pc, #32]	; (13a4 <__NVIC_SetPriority+0x50>)
    1384:	79fb      	ldrb	r3, [r7, #7]
    1386:	f003 030f 	and.w	r3, r3, #15
    138a:	3b04      	subs	r3, #4
    138c:	0112      	lsls	r2, r2, #4
    138e:	b2d2      	uxtb	r2, r2
    1390:	440b      	add	r3, r1
    1392:	761a      	strb	r2, [r3, #24]
}
    1394:	bf00      	nop
    1396:	370c      	adds	r7, #12
    1398:	46bd      	mov	sp, r7
    139a:	bc80      	pop	{r7}
    139c:	4770      	bx	lr
    139e:	bf00      	nop
    13a0:	e000e100 	.word	0xe000e100
    13a4:	e000ed00 	.word	0xe000ed00

000013a8 <task_entry_1>:
typedef uint32_t tTaskStack;
void task_sched(void);

typedef void (*task_entry_t)(void* param);
void task_entry_1(void* param)
{
    13a8:	b580      	push	{r7, lr}
    13aa:	b082      	sub	sp, #8
    13ac:	af00      	add	r7, sp, #0
    13ae:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    13b0:	4903      	ldr	r1, [pc, #12]	; (13c0 <task_entry_1+0x18>)
    13b2:	4804      	ldr	r0, [pc, #16]	; (13c4 <task_entry_1+0x1c>)
    13b4:	f7ff ff2d 	bl	1212 <printf_>
        // delay_ms(1000);
        task_sched();
    13b8:	f000 f894 	bl	14e4 <task_sched>
        printf("This is %s\n", __func__);
    13bc:	e7f8      	b.n	13b0 <task_entry_1+0x8>
    13be:	bf00      	nop
    13c0:	000021d8 	.word	0x000021d8
    13c4:	000021cc 	.word	0x000021cc

000013c8 <task_entry_2>:
    }
}

void task_entry_2(void* param)
{
    13c8:	b580      	push	{r7, lr}
    13ca:	b082      	sub	sp, #8
    13cc:	af00      	add	r7, sp, #0
    13ce:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    13d0:	4903      	ldr	r1, [pc, #12]	; (13e0 <task_entry_2+0x18>)
    13d2:	4804      	ldr	r0, [pc, #16]	; (13e4 <task_entry_2+0x1c>)
    13d4:	f7ff ff1d 	bl	1212 <printf_>
        // delay_ms(1000);
        task_sched();
    13d8:	f000 f884 	bl	14e4 <task_sched>
        printf("This is %s\n", __func__);
    13dc:	e7f8      	b.n	13d0 <task_entry_2+0x8>
    13de:	bf00      	nop
    13e0:	000021e8 	.word	0x000021e8
    13e4:	000021cc 	.word	0x000021cc

000013e8 <trigget_pendsv>:
    }
}

void trigget_pendsv(void)
{
    13e8:	b480      	push	{r7}
    13ea:	af00      	add	r7, sp, #0
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    13ec:	4b04      	ldr	r3, [pc, #16]	; (1400 <trigget_pendsv+0x18>)
    13ee:	685b      	ldr	r3, [r3, #4]
    13f0:	4a03      	ldr	r2, [pc, #12]	; (1400 <trigget_pendsv+0x18>)
    13f2:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    13f6:	6053      	str	r3, [r2, #4]
}
    13f8:	bf00      	nop
    13fa:	46bd      	mov	sp, r7
    13fc:	bc80      	pop	{r7}
    13fe:	4770      	bx	lr
    1400:	e000ed00 	.word	0xe000ed00

00001404 <task_create>:
tTaskStack stack[2][256];
task_t * current_task;
task_t * next_task;

void task_create(task_t * task, task_entry_t entry, void *param, tTaskStack* stack)
{
    1404:	b480      	push	{r7}
    1406:	b085      	sub	sp, #20
    1408:	af00      	add	r7, sp, #0
    140a:	60f8      	str	r0, [r7, #12]
    140c:	60b9      	str	r1, [r7, #8]
    140e:	607a      	str	r2, [r7, #4]
    1410:	603b      	str	r3, [r7, #0]
    *(--stack) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    1412:	683b      	ldr	r3, [r7, #0]
    1414:	3b04      	subs	r3, #4
    1416:	603b      	str	r3, [r7, #0]
    1418:	683b      	ldr	r3, [r7, #0]
    141a:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
    141e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)entry;                  // 程序的入口地址
    1420:	683b      	ldr	r3, [r7, #0]
    1422:	3b04      	subs	r3, #4
    1424:	603b      	str	r3, [r7, #0]
    1426:	68ba      	ldr	r2, [r7, #8]
    1428:	683b      	ldr	r3, [r7, #0]
    142a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    142c:	683b      	ldr	r3, [r7, #0]
    142e:	3b04      	subs	r3, #4
    1430:	603b      	str	r3, [r7, #0]
    1432:	683b      	ldr	r3, [r7, #0]
    1434:	2214      	movs	r2, #20
    1436:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x12;                   // R12, 未用
    1438:	683b      	ldr	r3, [r7, #0]
    143a:	3b04      	subs	r3, #4
    143c:	603b      	str	r3, [r7, #0]
    143e:	683b      	ldr	r3, [r7, #0]
    1440:	2212      	movs	r2, #18
    1442:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x3;                    // R3, 未用
    1444:	683b      	ldr	r3, [r7, #0]
    1446:	3b04      	subs	r3, #4
    1448:	603b      	str	r3, [r7, #0]
    144a:	683b      	ldr	r3, [r7, #0]
    144c:	2203      	movs	r2, #3
    144e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x2;                    // R2, 未用
    1450:	683b      	ldr	r3, [r7, #0]
    1452:	3b04      	subs	r3, #4
    1454:	603b      	str	r3, [r7, #0]
    1456:	683b      	ldr	r3, [r7, #0]
    1458:	2202      	movs	r2, #2
    145a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x1;                    // R1, 未用
    145c:	683b      	ldr	r3, [r7, #0]
    145e:	3b04      	subs	r3, #4
    1460:	603b      	str	r3, [r7, #0]
    1462:	683b      	ldr	r3, [r7, #0]
    1464:	2201      	movs	r2, #1
    1466:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    1468:	683b      	ldr	r3, [r7, #0]
    146a:	3b04      	subs	r3, #4
    146c:	603b      	str	r3, [r7, #0]
    146e:	687a      	ldr	r2, [r7, #4]
    1470:	683b      	ldr	r3, [r7, #0]
    1472:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x11;                   // R11, 未用
    1474:	683b      	ldr	r3, [r7, #0]
    1476:	3b04      	subs	r3, #4
    1478:	603b      	str	r3, [r7, #0]
    147a:	683b      	ldr	r3, [r7, #0]
    147c:	2211      	movs	r2, #17
    147e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x10;                   // R10, 未用
    1480:	683b      	ldr	r3, [r7, #0]
    1482:	3b04      	subs	r3, #4
    1484:	603b      	str	r3, [r7, #0]
    1486:	683b      	ldr	r3, [r7, #0]
    1488:	2210      	movs	r2, #16
    148a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x9;                    // R9, 未用
    148c:	683b      	ldr	r3, [r7, #0]
    148e:	3b04      	subs	r3, #4
    1490:	603b      	str	r3, [r7, #0]
    1492:	683b      	ldr	r3, [r7, #0]
    1494:	2209      	movs	r2, #9
    1496:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x8;                    // R8, 未用
    1498:	683b      	ldr	r3, [r7, #0]
    149a:	3b04      	subs	r3, #4
    149c:	603b      	str	r3, [r7, #0]
    149e:	683b      	ldr	r3, [r7, #0]
    14a0:	2208      	movs	r2, #8
    14a2:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x7;                    // R7, 未用
    14a4:	683b      	ldr	r3, [r7, #0]
    14a6:	3b04      	subs	r3, #4
    14a8:	603b      	str	r3, [r7, #0]
    14aa:	683b      	ldr	r3, [r7, #0]
    14ac:	2207      	movs	r2, #7
    14ae:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x6;                    // R6, 未用
    14b0:	683b      	ldr	r3, [r7, #0]
    14b2:	3b04      	subs	r3, #4
    14b4:	603b      	str	r3, [r7, #0]
    14b6:	683b      	ldr	r3, [r7, #0]
    14b8:	2206      	movs	r2, #6
    14ba:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x5;                    // R5, 未用
    14bc:	683b      	ldr	r3, [r7, #0]
    14be:	3b04      	subs	r3, #4
    14c0:	603b      	str	r3, [r7, #0]
    14c2:	683b      	ldr	r3, [r7, #0]
    14c4:	2205      	movs	r2, #5
    14c6:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x4;                    // R4, 未用
    14c8:	683b      	ldr	r3, [r7, #0]
    14ca:	3b04      	subs	r3, #4
    14cc:	603b      	str	r3, [r7, #0]
    14ce:	683b      	ldr	r3, [r7, #0]
    14d0:	2204      	movs	r2, #4
    14d2:	601a      	str	r2, [r3, #0]
    task->stack = stack;
    14d4:	68fb      	ldr	r3, [r7, #12]
    14d6:	683a      	ldr	r2, [r7, #0]
    14d8:	601a      	str	r2, [r3, #0]
}
    14da:	bf00      	nop
    14dc:	3714      	adds	r7, #20
    14de:	46bd      	mov	sp, r7
    14e0:	bc80      	pop	{r7}
    14e2:	4770      	bx	lr

000014e4 <task_sched>:

void task_sched(void)
{
    14e4:	b580      	push	{r7, lr}
    14e6:	af00      	add	r7, sp, #0
    if (current_task == &task1) {
    14e8:	4b07      	ldr	r3, [pc, #28]	; (1508 <task_sched+0x24>)
    14ea:	681b      	ldr	r3, [r3, #0]
    14ec:	4a07      	ldr	r2, [pc, #28]	; (150c <task_sched+0x28>)
    14ee:	4293      	cmp	r3, r2
    14f0:	d103      	bne.n	14fa <task_sched+0x16>
        next_task = &task2;
    14f2:	4b07      	ldr	r3, [pc, #28]	; (1510 <task_sched+0x2c>)
    14f4:	4a07      	ldr	r2, [pc, #28]	; (1514 <task_sched+0x30>)
    14f6:	601a      	str	r2, [r3, #0]
    14f8:	e002      	b.n	1500 <task_sched+0x1c>
    } else {
        next_task = &task1;
    14fa:	4b05      	ldr	r3, [pc, #20]	; (1510 <task_sched+0x2c>)
    14fc:	4a03      	ldr	r2, [pc, #12]	; (150c <task_sched+0x28>)
    14fe:	601a      	str	r2, [r3, #0]
    }
    trigget_pendsv();
    1500:	f7ff ff72 	bl	13e8 <trigget_pendsv>
}
    1504:	bf00      	nop
    1506:	bd80      	pop	{r7, pc}
    1508:	200008d4 	.word	0x200008d4
    150c:	200008cc 	.word	0x200008cc
    1510:	200000c8 	.word	0x200000c8
    1514:	200008d0 	.word	0x200008d0

00001518 <run_first_task>:

void run_first_task(void)
{
    1518:	b580      	push	{r7, lr}
    151a:	b082      	sub	sp, #8
    151c:	af00      	add	r7, sp, #0
    151e:	2300      	movs	r3, #0
    1520:	607b      	str	r3, [r7, #4]
  __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
    1522:	687b      	ldr	r3, [r7, #4]
    1524:	f383 8809 	msr	PSP, r3
    __set_PSP(0);
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    1528:	21ff      	movs	r1, #255	; 0xff
    152a:	f06f 0001 	mvn.w	r0, #1
    152e:	f7ff ff11 	bl	1354 <__NVIC_SetPriority>
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    1532:	4b05      	ldr	r3, [pc, #20]	; (1548 <run_first_task+0x30>)
    1534:	685b      	ldr	r3, [r3, #4]
    1536:	4a04      	ldr	r2, [pc, #16]	; (1548 <run_first_task+0x30>)
    1538:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    153c:	6053      	str	r3, [r2, #4]
}
    153e:	bf00      	nop
    1540:	3708      	adds	r7, #8
    1542:	46bd      	mov	sp, r7
    1544:	bd80      	pop	{r7, pc}
    1546:	bf00      	nop
    1548:	e000ed00 	.word	0xe000ed00

0000154c <task_start>:

void task_start(void)
{
    154c:	b580      	push	{r7, lr}
    154e:	af00      	add	r7, sp, #0
    task_create(&task1, task_entry_1, (void*)0x11111111, &stack[0]);
    1550:	4b0a      	ldr	r3, [pc, #40]	; (157c <task_start+0x30>)
    1552:	f04f 3211 	mov.w	r2, #286331153	; 0x11111111
    1556:	490a      	ldr	r1, [pc, #40]	; (1580 <task_start+0x34>)
    1558:	480a      	ldr	r0, [pc, #40]	; (1584 <task_start+0x38>)
    155a:	f7ff ff53 	bl	1404 <task_create>
    task_create(&task2, task_entry_2, (void*)0x22222222, &stack[1]);
    155e:	4b0a      	ldr	r3, [pc, #40]	; (1588 <task_start+0x3c>)
    1560:	f04f 3222 	mov.w	r2, #572662306	; 0x22222222
    1564:	4909      	ldr	r1, [pc, #36]	; (158c <task_start+0x40>)
    1566:	480a      	ldr	r0, [pc, #40]	; (1590 <task_start+0x44>)
    1568:	f7ff ff4c 	bl	1404 <task_create>
    current_task = &task1;
    156c:	4b09      	ldr	r3, [pc, #36]	; (1594 <task_start+0x48>)
    156e:	4a05      	ldr	r2, [pc, #20]	; (1584 <task_start+0x38>)
    1570:	601a      	str	r2, [r3, #0]
    
    run_first_task();
    1572:	f7ff ffd1 	bl	1518 <run_first_task>
}
    1576:	bf00      	nop
    1578:	bd80      	pop	{r7, pc}
    157a:	bf00      	nop
    157c:	200000cc 	.word	0x200000cc
    1580:	000013a9 	.word	0x000013a9
    1584:	200008cc 	.word	0x200008cc
    1588:	200004cc 	.word	0x200004cc
    158c:	000013c9 	.word	0x000013c9
    1590:	200008d0 	.word	0x200008d0
    1594:	200008d4 	.word	0x200008d4

00001598 <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    1598:	b580      	push	{r7, lr}
    159a:	b084      	sub	sp, #16
    159c:	af00      	add	r7, sp, #0
    159e:	6078      	str	r0, [r7, #4]
    15a0:	460b      	mov	r3, r1
    15a2:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    15a4:	f107 030f 	add.w	r3, r7, #15
    15a8:	4618      	mov	r0, r3
    15aa:	f7fe fe77 	bl	29c <lite_getchar>
    {
        if (count >= max_len)
    15ae:	4b22      	ldr	r3, [pc, #136]	; (1638 <shell_get_line+0xa0>)
    15b0:	781b      	ldrb	r3, [r3, #0]
    15b2:	78fa      	ldrb	r2, [r7, #3]
    15b4:	429a      	cmp	r2, r3
    15b6:	d804      	bhi.n	15c2 <shell_get_line+0x2a>
        {
            count = 0;
    15b8:	4b1f      	ldr	r3, [pc, #124]	; (1638 <shell_get_line+0xa0>)
    15ba:	2200      	movs	r2, #0
    15bc:	701a      	strb	r2, [r3, #0]
            return 1;
    15be:	2301      	movs	r3, #1
    15c0:	e036      	b.n	1630 <shell_get_line+0x98>
        }
        line[count] = chr;
    15c2:	4b1d      	ldr	r3, [pc, #116]	; (1638 <shell_get_line+0xa0>)
    15c4:	781b      	ldrb	r3, [r3, #0]
    15c6:	461a      	mov	r2, r3
    15c8:	687b      	ldr	r3, [r7, #4]
    15ca:	4413      	add	r3, r2
    15cc:	7bfa      	ldrb	r2, [r7, #15]
    15ce:	701a      	strb	r2, [r3, #0]
        switch (chr)
    15d0:	7bfb      	ldrb	r3, [r7, #15]
    15d2:	2b0a      	cmp	r3, #10
    15d4:	d013      	beq.n	15fe <shell_get_line+0x66>
    15d6:	2b0a      	cmp	r3, #10
    15d8:	dc02      	bgt.n	15e0 <shell_get_line+0x48>
    15da:	2b08      	cmp	r3, #8
    15dc:	d004      	beq.n	15e8 <shell_get_line+0x50>
    15de:	e01a      	b.n	1616 <shell_get_line+0x7e>
    15e0:	2b0d      	cmp	r3, #13
    15e2:	d00c      	beq.n	15fe <shell_get_line+0x66>
    15e4:	2b7f      	cmp	r3, #127	; 0x7f
    15e6:	d116      	bne.n	1616 <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    15e8:	4b13      	ldr	r3, [pc, #76]	; (1638 <shell_get_line+0xa0>)
    15ea:	781b      	ldrb	r3, [r3, #0]
    15ec:	2b00      	cmp	r3, #0
    15ee:	d019      	beq.n	1624 <shell_get_line+0x8c>
            {
                count--;
    15f0:	4b11      	ldr	r3, [pc, #68]	; (1638 <shell_get_line+0xa0>)
    15f2:	781b      	ldrb	r3, [r3, #0]
    15f4:	3b01      	subs	r3, #1
    15f6:	b2da      	uxtb	r2, r3
    15f8:	4b0f      	ldr	r3, [pc, #60]	; (1638 <shell_get_line+0xa0>)
    15fa:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    15fc:	e012      	b.n	1624 <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    15fe:	4b0e      	ldr	r3, [pc, #56]	; (1638 <shell_get_line+0xa0>)
    1600:	781b      	ldrb	r3, [r3, #0]
    1602:	461a      	mov	r2, r3
    1604:	687b      	ldr	r3, [r7, #4]
    1606:	4413      	add	r3, r2
    1608:	2200      	movs	r2, #0
    160a:	701a      	strb	r2, [r3, #0]
            count = 0;
    160c:	4b0a      	ldr	r3, [pc, #40]	; (1638 <shell_get_line+0xa0>)
    160e:	2200      	movs	r2, #0
    1610:	701a      	strb	r2, [r3, #0]
            return 1;
    1612:	2301      	movs	r3, #1
    1614:	e00c      	b.n	1630 <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    1616:	4b08      	ldr	r3, [pc, #32]	; (1638 <shell_get_line+0xa0>)
    1618:	781b      	ldrb	r3, [r3, #0]
    161a:	3301      	adds	r3, #1
    161c:	b2da      	uxtb	r2, r3
    161e:	4b06      	ldr	r3, [pc, #24]	; (1638 <shell_get_line+0xa0>)
    1620:	701a      	strb	r2, [r3, #0]
    1622:	e000      	b.n	1626 <shell_get_line+0x8e>
        break;
    1624:	bf00      	nop
        }
        lite_putchar(chr);
    1626:	7bfb      	ldrb	r3, [r7, #15]
    1628:	4618      	mov	r0, r3
    162a:	f7fe fe4b 	bl	2c4 <lite_putchar>
    }
    return 0;
    162e:	2300      	movs	r3, #0
}
    1630:	4618      	mov	r0, r3
    1632:	3710      	adds	r7, #16
    1634:	46bd      	mov	sp, r7
    1636:	bd80      	pop	{r7, pc}
    1638:	20000000 	.word	0x20000000

0000163c <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    163c:	b580      	push	{r7, lr}
    163e:	b088      	sub	sp, #32
    1640:	af00      	add	r7, sp, #0
    1642:	60f8      	str	r0, [r7, #12]
    1644:	60b9      	str	r1, [r7, #8]
    1646:	4613      	mov	r3, r2
    1648:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    164a:	2300      	movs	r3, #0
    164c:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    164e:	4912      	ldr	r1, [pc, #72]	; (1698 <shell_get_args+0x5c>)
    1650:	68f8      	ldr	r0, [r7, #12]
    1652:	f000 f8a1 	bl	1798 <strtok>
    1656:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1658:	2300      	movs	r3, #0
    165a:	77fb      	strb	r3, [r7, #31]
    165c:	e00d      	b.n	167a <shell_get_args+0x3e>
    {
        args[i] = ptr;
    165e:	7ffb      	ldrb	r3, [r7, #31]
    1660:	009b      	lsls	r3, r3, #2
    1662:	68ba      	ldr	r2, [r7, #8]
    1664:	4413      	add	r3, r2
    1666:	69ba      	ldr	r2, [r7, #24]
    1668:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    166a:	490c      	ldr	r1, [pc, #48]	; (169c <shell_get_args+0x60>)
    166c:	2000      	movs	r0, #0
    166e:	f000 f893 	bl	1798 <strtok>
    1672:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1674:	7ffb      	ldrb	r3, [r7, #31]
    1676:	3301      	adds	r3, #1
    1678:	77fb      	strb	r3, [r7, #31]
    167a:	69bb      	ldr	r3, [r7, #24]
    167c:	2b00      	cmp	r3, #0
    167e:	d003      	beq.n	1688 <shell_get_args+0x4c>
    1680:	7ffa      	ldrb	r2, [r7, #31]
    1682:	79fb      	ldrb	r3, [r7, #7]
    1684:	429a      	cmp	r2, r3
    1686:	d3ea      	bcc.n	165e <shell_get_args+0x22>
    }
    ret = i;
    1688:	7ffb      	ldrb	r3, [r7, #31]
    168a:	75fb      	strb	r3, [r7, #23]
    return ret;
    168c:	7dfb      	ldrb	r3, [r7, #23]
}
    168e:	4618      	mov	r0, r3
    1690:	3720      	adds	r7, #32
    1692:	46bd      	mov	sp, r7
    1694:	bd80      	pop	{r7, pc}
    1696:	bf00      	nop
    1698:	000021f8 	.word	0x000021f8
    169c:	000021fc 	.word	0x000021fc

000016a0 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    16a0:	b580      	push	{r7, lr}
    16a2:	b084      	sub	sp, #16
    16a4:	af00      	add	r7, sp, #0
    16a6:	6078      	str	r0, [r7, #4]
    16a8:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    16aa:	4b0b      	ldr	r3, [pc, #44]	; (16d8 <shell_help_func+0x38>)
    16ac:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    16ae:	e00a      	b.n	16c6 <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    16b0:	68fb      	ldr	r3, [r7, #12]
    16b2:	6819      	ldr	r1, [r3, #0]
    16b4:	68fb      	ldr	r3, [r7, #12]
    16b6:	685b      	ldr	r3, [r3, #4]
    16b8:	461a      	mov	r2, r3
    16ba:	4808      	ldr	r0, [pc, #32]	; (16dc <shell_help_func+0x3c>)
    16bc:	f7ff fda9 	bl	1212 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    16c0:	68fb      	ldr	r3, [r7, #12]
    16c2:	330c      	adds	r3, #12
    16c4:	60fb      	str	r3, [r7, #12]
    16c6:	68fb      	ldr	r3, [r7, #12]
    16c8:	4a05      	ldr	r2, [pc, #20]	; (16e0 <shell_help_func+0x40>)
    16ca:	4293      	cmp	r3, r2
    16cc:	d3f0      	bcc.n	16b0 <shell_help_func+0x10>
    }
    return 0;
    16ce:	2300      	movs	r3, #0
}
    16d0:	4618      	mov	r0, r3
    16d2:	3710      	adds	r7, #16
    16d4:	46bd      	mov	sp, r7
    16d6:	bd80      	pop	{r7, pc}
    16d8:	000020e0 	.word	0x000020e0
    16dc:	00002200 	.word	0x00002200
    16e0:	00002dd4 	.word	0x00002dd4

000016e4 <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    16e4:	b480      	push	{r7}
    16e6:	b089      	sub	sp, #36	; 0x24
    16e8:	af00      	add	r7, sp, #0
    16ea:	60f8      	str	r0, [r7, #12]
    16ec:	60b9      	str	r1, [r7, #8]
    16ee:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    16f0:	68fb      	ldr	r3, [r7, #12]
    16f2:	2b00      	cmp	r3, #0
    16f4:	d107      	bne.n	1706 <strtok_r+0x22>
    16f6:	687b      	ldr	r3, [r7, #4]
    16f8:	681b      	ldr	r3, [r3, #0]
    16fa:	60fb      	str	r3, [r7, #12]
    16fc:	68fb      	ldr	r3, [r7, #12]
    16fe:	2b00      	cmp	r3, #0
    1700:	d101      	bne.n	1706 <strtok_r+0x22>
    {
    return (NULL);
    1702:	2300      	movs	r3, #0
    1704:	e043      	b.n	178e <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    1706:	bf00      	nop
c = *string_org++;
    1708:	68fb      	ldr	r3, [r7, #12]
    170a:	1c5a      	adds	r2, r3, #1
    170c:	60fa      	str	r2, [r7, #12]
    170e:	781b      	ldrb	r3, [r3, #0]
    1710:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    1712:	68bb      	ldr	r3, [r7, #8]
    1714:	61fb      	str	r3, [r7, #28]
    1716:	e004      	b.n	1722 <strtok_r+0x3e>
    {
    if (c == sc)
    1718:	7efa      	ldrb	r2, [r7, #27]
    171a:	7ebb      	ldrb	r3, [r7, #26]
    171c:	429a      	cmp	r2, r3
    171e:	d100      	bne.n	1722 <strtok_r+0x3e>
        {
        goto count;
    1720:	e7f2      	b.n	1708 <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    1722:	69fb      	ldr	r3, [r7, #28]
    1724:	1c5a      	adds	r2, r3, #1
    1726:	61fa      	str	r2, [r7, #28]
    1728:	781b      	ldrb	r3, [r3, #0]
    172a:	76bb      	strb	r3, [r7, #26]
    172c:	7ebb      	ldrb	r3, [r7, #26]
    172e:	2b00      	cmp	r3, #0
    1730:	d1f2      	bne.n	1718 <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    1732:	7efb      	ldrb	r3, [r7, #27]
    1734:	2b00      	cmp	r3, #0
    1736:	d104      	bne.n	1742 <strtok_r+0x5e>
    {
    *last = NULL;
    1738:	687b      	ldr	r3, [r7, #4]
    173a:	2200      	movs	r2, #0
    173c:	601a      	str	r2, [r3, #0]
    return (NULL);
    173e:	2300      	movs	r3, #0
    1740:	e025      	b.n	178e <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    1742:	68fb      	ldr	r3, [r7, #12]
    1744:	3b01      	subs	r3, #1
    1746:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    1748:	68fb      	ldr	r3, [r7, #12]
    174a:	1c5a      	adds	r2, r3, #1
    174c:	60fa      	str	r2, [r7, #12]
    174e:	781b      	ldrb	r3, [r3, #0]
    1750:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    1752:	68bb      	ldr	r3, [r7, #8]
    1754:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    1756:	69fb      	ldr	r3, [r7, #28]
    1758:	1c5a      	adds	r2, r3, #1
    175a:	61fa      	str	r2, [r7, #28]
    175c:	781b      	ldrb	r3, [r3, #0]
    175e:	76bb      	strb	r3, [r7, #26]
    1760:	7eba      	ldrb	r2, [r7, #26]
    1762:	7efb      	ldrb	r3, [r7, #27]
    1764:	429a      	cmp	r2, r3
    1766:	d10e      	bne.n	1786 <strtok_r+0xa2>
            {
            if (c == 0)
    1768:	7efb      	ldrb	r3, [r7, #27]
    176a:	2b00      	cmp	r3, #0
    176c:	d102      	bne.n	1774 <strtok_r+0x90>
                {
                string_org = NULL;
    176e:	2300      	movs	r3, #0
    1770:	60fb      	str	r3, [r7, #12]
    1772:	e003      	b.n	177c <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    1774:	68fb      	ldr	r3, [r7, #12]
    1776:	3b01      	subs	r3, #1
    1778:	2200      	movs	r2, #0
    177a:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    177c:	687b      	ldr	r3, [r7, #4]
    177e:	68fa      	ldr	r2, [r7, #12]
    1780:	601a      	str	r2, [r3, #0]
            return (tok);
    1782:	697b      	ldr	r3, [r7, #20]
    1784:	e003      	b.n	178e <strtok_r+0xaa>
            }
        } while (sc != 0);
    1786:	7ebb      	ldrb	r3, [r7, #26]
    1788:	2b00      	cmp	r3, #0
    178a:	d1e4      	bne.n	1756 <strtok_r+0x72>
    c = *string_org++;
    178c:	e7dc      	b.n	1748 <strtok_r+0x64>
    }
    
}
    178e:	4618      	mov	r0, r3
    1790:	3724      	adds	r7, #36	; 0x24
    1792:	46bd      	mov	sp, r7
    1794:	bc80      	pop	{r7}
    1796:	4770      	bx	lr

00001798 <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    1798:	b580      	push	{r7, lr}
    179a:	b082      	sub	sp, #8
    179c:	af00      	add	r7, sp, #0
    179e:	6078      	str	r0, [r7, #4]
    17a0:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    17a2:	4a05      	ldr	r2, [pc, #20]	; (17b8 <strtok+0x20>)
    17a4:	6839      	ldr	r1, [r7, #0]
    17a6:	6878      	ldr	r0, [r7, #4]
    17a8:	f7ff ff9c 	bl	16e4 <strtok_r>
    17ac:	4603      	mov	r3, r0
}
    17ae:	4618      	mov	r0, r3
    17b0:	3708      	adds	r7, #8
    17b2:	46bd      	mov	sp, r7
    17b4:	bd80      	pop	{r7, pc}
    17b6:	bf00      	nop
    17b8:	20000004 	.word	0x20000004

000017bc <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    17bc:	b480      	push	{r7}
    17be:	b087      	sub	sp, #28
    17c0:	af00      	add	r7, sp, #0
    17c2:	60f8      	str	r0, [r7, #12]
    17c4:	60b9      	str	r1, [r7, #8]
    17c6:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    17c8:	68fb      	ldr	r3, [r7, #12]
    17ca:	2b00      	cmp	r3, #0
    17cc:	d002      	beq.n	17d4 <memcpy+0x18>
    17ce:	68bb      	ldr	r3, [r7, #8]
    17d0:	2b00      	cmp	r3, #0
    17d2:	d101      	bne.n	17d8 <memcpy+0x1c>
		return NULL;
    17d4:	2300      	movs	r3, #0
    17d6:	e012      	b.n	17fe <memcpy+0x42>
	char *tempDest = (char *)dest;
    17d8:	68fb      	ldr	r3, [r7, #12]
    17da:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    17dc:	68bb      	ldr	r3, [r7, #8]
    17de:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    17e0:	e007      	b.n	17f2 <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    17e2:	693a      	ldr	r2, [r7, #16]
    17e4:	1c53      	adds	r3, r2, #1
    17e6:	613b      	str	r3, [r7, #16]
    17e8:	697b      	ldr	r3, [r7, #20]
    17ea:	1c59      	adds	r1, r3, #1
    17ec:	6179      	str	r1, [r7, #20]
    17ee:	7812      	ldrb	r2, [r2, #0]
    17f0:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    17f2:	687b      	ldr	r3, [r7, #4]
    17f4:	1e5a      	subs	r2, r3, #1
    17f6:	607a      	str	r2, [r7, #4]
    17f8:	2b00      	cmp	r3, #0
    17fa:	d1f2      	bne.n	17e2 <memcpy+0x26>
	return dest;	
    17fc:	68fb      	ldr	r3, [r7, #12]
}
    17fe:	4618      	mov	r0, r3
    1800:	371c      	adds	r7, #28
    1802:	46bd      	mov	sp, r7
    1804:	bc80      	pop	{r7}
    1806:	4770      	bx	lr

00001808 <memset>:
void *memset(void *s, int c, size_t n)
{
    1808:	b480      	push	{r7}
    180a:	b087      	sub	sp, #28
    180c:	af00      	add	r7, sp, #0
    180e:	60f8      	str	r0, [r7, #12]
    1810:	60b9      	str	r1, [r7, #8]
    1812:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    1814:	68fb      	ldr	r3, [r7, #12]
    1816:	2b00      	cmp	r3, #0
    1818:	d101      	bne.n	181e <memset+0x16>
		return NULL;
    181a:	2300      	movs	r3, #0
    181c:	e00e      	b.n	183c <memset+0x34>
	char * tmpS = (char *)s;
    181e:	68fb      	ldr	r3, [r7, #12]
    1820:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    1822:	e005      	b.n	1830 <memset+0x28>
		*tmpS++ = c;
    1824:	697b      	ldr	r3, [r7, #20]
    1826:	1c5a      	adds	r2, r3, #1
    1828:	617a      	str	r2, [r7, #20]
    182a:	68ba      	ldr	r2, [r7, #8]
    182c:	b2d2      	uxtb	r2, r2
    182e:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    1830:	687b      	ldr	r3, [r7, #4]
    1832:	1e5a      	subs	r2, r3, #1
    1834:	607a      	str	r2, [r7, #4]
    1836:	2b00      	cmp	r3, #0
    1838:	d1f4      	bne.n	1824 <memset+0x1c>
		return s; 
    183a:	68fb      	ldr	r3, [r7, #12]
}
    183c:	4618      	mov	r0, r3
    183e:	371c      	adds	r7, #28
    1840:	46bd      	mov	sp, r7
    1842:	bc80      	pop	{r7}
    1844:	4770      	bx	lr

00001846 <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    1846:	b480      	push	{r7}
    1848:	b085      	sub	sp, #20
    184a:	af00      	add	r7, sp, #0
    184c:	6078      	str	r0, [r7, #4]
    184e:	6039      	str	r1, [r7, #0]
	int ret = 0;
    1850:	2300      	movs	r3, #0
    1852:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1854:	e005      	b.n	1862 <strcmp+0x1c>
	{
		str1++;
    1856:	687b      	ldr	r3, [r7, #4]
    1858:	3301      	adds	r3, #1
    185a:	607b      	str	r3, [r7, #4]
		str2++;
    185c:	683b      	ldr	r3, [r7, #0]
    185e:	3301      	adds	r3, #1
    1860:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1862:	687b      	ldr	r3, [r7, #4]
    1864:	781b      	ldrb	r3, [r3, #0]
    1866:	461a      	mov	r2, r3
    1868:	683b      	ldr	r3, [r7, #0]
    186a:	781b      	ldrb	r3, [r3, #0]
    186c:	1ad3      	subs	r3, r2, r3
    186e:	60fb      	str	r3, [r7, #12]
    1870:	68fb      	ldr	r3, [r7, #12]
    1872:	2b00      	cmp	r3, #0
    1874:	d103      	bne.n	187e <strcmp+0x38>
    1876:	687b      	ldr	r3, [r7, #4]
    1878:	781b      	ldrb	r3, [r3, #0]
    187a:	2b00      	cmp	r3, #0
    187c:	d1eb      	bne.n	1856 <strcmp+0x10>
	}
 
 
	if (ret < 0)
    187e:	68fb      	ldr	r3, [r7, #12]
    1880:	2b00      	cmp	r3, #0
    1882:	da02      	bge.n	188a <strcmp+0x44>
	{
		return -1;
    1884:	f04f 33ff 	mov.w	r3, #4294967295
    1888:	e005      	b.n	1896 <strcmp+0x50>
	}
	else if (ret > 0)
    188a:	68fb      	ldr	r3, [r7, #12]
    188c:	2b00      	cmp	r3, #0
    188e:	dd01      	ble.n	1894 <strcmp+0x4e>
	{
		return 1;
    1890:	2301      	movs	r3, #1
    1892:	e000      	b.n	1896 <strcmp+0x50>
	}
	return 0;
    1894:	2300      	movs	r3, #0
}
    1896:	4618      	mov	r0, r3
    1898:	3714      	adds	r7, #20
    189a:	46bd      	mov	sp, r7
    189c:	bc80      	pop	{r7}
    189e:	4770      	bx	lr

000018a0 <shell_main>:
#endif
void shell_main(void)
{
    18a0:	b580      	push	{r7, lr}
    18a2:	b0c2      	sub	sp, #264	; 0x108
    18a4:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    18a6:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18aa:	2280      	movs	r2, #128	; 0x80
    18ac:	2100      	movs	r1, #0
    18ae:	4618      	mov	r0, r3
    18b0:	f7ff ffaa 	bl	1808 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    18b4:	463b      	mov	r3, r7
    18b6:	4618      	mov	r0, r3
    18b8:	2380      	movs	r3, #128	; 0x80
    18ba:	461a      	mov	r2, r3
    18bc:	2100      	movs	r1, #0
    18be:	f7ff ffa3 	bl	1808 <memset>

    uint8_t args_count = 0;
    18c2:	2300      	movs	r3, #0
    18c4:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    18c8:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18cc:	2180      	movs	r1, #128	; 0x80
    18ce:	4618      	mov	r0, r3
    18d0:	f7ff fe62 	bl	1598 <shell_get_line>
    18d4:	4603      	mov	r3, r0
    18d6:	2b00      	cmp	r3, #0
    18d8:	d0f6      	beq.n	18c8 <shell_main+0x28>
        {
            printf("\n");
    18da:	4827      	ldr	r0, [pc, #156]	; (1978 <shell_main+0xd8>)
    18dc:	f7ff fc99 	bl	1212 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    18e0:	4639      	mov	r1, r7
    18e2:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18e6:	2220      	movs	r2, #32
    18e8:	4618      	mov	r0, r3
    18ea:	f7ff fea7 	bl	163c <shell_get_args>
    18ee:	4603      	mov	r3, r0
    18f0:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    18f4:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    18f8:	2b00      	cmp	r3, #0
    18fa:	d033      	beq.n	1964 <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    18fc:	4b1f      	ldr	r3, [pc, #124]	; (197c <shell_main+0xdc>)
    18fe:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1902:	e02a      	b.n	195a <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    1904:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1908:	681a      	ldr	r2, [r3, #0]
    190a:	463b      	mov	r3, r7
    190c:	681b      	ldr	r3, [r3, #0]
    190e:	4619      	mov	r1, r3
    1910:	4610      	mov	r0, r2
    1912:	f7ff ff98 	bl	1846 <strcmp>
    1916:	4603      	mov	r3, r0
    1918:	2b00      	cmp	r3, #0
    191a:	d10a      	bne.n	1932 <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    191c:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1920:	689b      	ldr	r3, [r3, #8]
    1922:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    1926:	1e50      	subs	r0, r2, #1
    1928:	463a      	mov	r2, r7
    192a:	3204      	adds	r2, #4
    192c:	4611      	mov	r1, r2
    192e:	4798      	blx	r3
    1930:	e00e      	b.n	1950 <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    1932:	463b      	mov	r3, r7
    1934:	681b      	ldr	r3, [r3, #0]
    1936:	4619      	mov	r1, r3
    1938:	4811      	ldr	r0, [pc, #68]	; (1980 <shell_main+0xe0>)
    193a:	f7ff ff84 	bl	1846 <strcmp>
    193e:	4603      	mov	r3, r0
    1940:	2b00      	cmp	r3, #0
    1942:	d013      	beq.n	196c <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1944:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1948:	4619      	mov	r1, r3
    194a:	480e      	ldr	r0, [pc, #56]	; (1984 <shell_main+0xe4>)
    194c:	f7ff fc61 	bl	1212 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1950:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1954:	330c      	adds	r3, #12
    1956:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    195a:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    195e:	4a0a      	ldr	r2, [pc, #40]	; (1988 <shell_main+0xe8>)
    1960:	4293      	cmp	r3, r2
    1962:	d3cf      	bcc.n	1904 <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1964:	4809      	ldr	r0, [pc, #36]	; (198c <shell_main+0xec>)
    1966:	f7ff fc54 	bl	1212 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    196a:	e7ad      	b.n	18c8 <shell_main+0x28>
                        return;
    196c:	bf00      	nop
        }
    }
    return;
}
    196e:	f507 7784 	add.w	r7, r7, #264	; 0x108
    1972:	46bd      	mov	sp, r7
    1974:	bd80      	pop	{r7, pc}
    1976:	bf00      	nop
    1978:	00002228 	.word	0x00002228
    197c:	000020e0 	.word	0x000020e0
    1980:	0000222c 	.word	0x0000222c
    1984:	00002234 	.word	0x00002234
    1988:	00002dd4 	.word	0x00002dd4
    198c:	00002250 	.word	0x00002250

00001990 <shell_start>:

void shell_start(void)
{
    1990:	b580      	push	{r7, lr}
    1992:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    1994:	f7ff ff84 	bl	18a0 <shell_main>
    1998:	bf00      	nop
    199a:	bd80      	pop	{r7, pc}

0000199c <test_div>:
#include <stdint.h>
#include "hal_log.h"
#include "backtrace.h"
#include "hal_platform.h"
int test_div(void)
{
    199c:	b480      	push	{r7}
    199e:	b085      	sub	sp, #20
    19a0:	af00      	add	r7, sp, #0
    // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    // SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;

    int a = 1;
    19a2:	2301      	movs	r3, #1
    19a4:	60fb      	str	r3, [r7, #12]
    int b = 0;
    19a6:	2300      	movs	r3, #0
    19a8:	60bb      	str	r3, [r7, #8]
    int z = a / b;
    19aa:	68fa      	ldr	r2, [r7, #12]
    19ac:	68bb      	ldr	r3, [r7, #8]
    19ae:	fb92 f3f3 	sdiv	r3, r2, r3
    19b2:	607b      	str	r3, [r7, #4]

    return z;
    19b4:	687b      	ldr	r3, [r7, #4]
}
    19b6:	4618      	mov	r0, r3
    19b8:	3714      	adds	r7, #20
    19ba:	46bd      	mov	sp, r7
    19bc:	bc80      	pop	{r7}
    19be:	4770      	bx	lr

000019c0 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
    19c0:	b580      	push	{r7, lr}
    19c2:	b084      	sub	sp, #16
    19c4:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    19c6:	4b16      	ldr	r3, [pc, #88]	; (1a20 <fault_test_by_unalign+0x60>)
    19c8:	60fb      	str	r3, [r7, #12]
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
    19ca:	68fb      	ldr	r3, [r7, #12]
    19cc:	681b      	ldr	r3, [r3, #0]
    19ce:	f043 0208 	orr.w	r2, r3, #8
    19d2:	68fb      	ldr	r3, [r7, #12]
    19d4:	601a      	str	r2, [r3, #0]

    p = (int *) 0x00;
    19d6:	2300      	movs	r3, #0
    19d8:	60bb      	str	r3, [r7, #8]
    value = *p;
    19da:	68bb      	ldr	r3, [r7, #8]
    19dc:	681b      	ldr	r3, [r3, #0]
    19de:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19e0:	68bb      	ldr	r3, [r7, #8]
    19e2:	687a      	ldr	r2, [r7, #4]
    19e4:	4619      	mov	r1, r3
    19e6:	480f      	ldr	r0, [pc, #60]	; (1a24 <fault_test_by_unalign+0x64>)
    19e8:	f7ff fc13 	bl	1212 <printf_>

    p = (int *) 0x04;
    19ec:	2304      	movs	r3, #4
    19ee:	60bb      	str	r3, [r7, #8]
    value = *p;
    19f0:	68bb      	ldr	r3, [r7, #8]
    19f2:	681b      	ldr	r3, [r3, #0]
    19f4:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    19f6:	68bb      	ldr	r3, [r7, #8]
    19f8:	687a      	ldr	r2, [r7, #4]
    19fa:	4619      	mov	r1, r3
    19fc:	4809      	ldr	r0, [pc, #36]	; (1a24 <fault_test_by_unalign+0x64>)
    19fe:	f7ff fc08 	bl	1212 <printf_>

    p = (int *) 0x03;
    1a02:	2303      	movs	r3, #3
    1a04:	60bb      	str	r3, [r7, #8]
    value = *p;
    1a06:	68bb      	ldr	r3, [r7, #8]
    1a08:	681b      	ldr	r3, [r3, #0]
    1a0a:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    1a0c:	68bb      	ldr	r3, [r7, #8]
    1a0e:	687a      	ldr	r2, [r7, #4]
    1a10:	4619      	mov	r1, r3
    1a12:	4804      	ldr	r0, [pc, #16]	; (1a24 <fault_test_by_unalign+0x64>)
    1a14:	f7ff fbfd 	bl	1212 <printf_>
}
    1a18:	bf00      	nop
    1a1a:	3710      	adds	r7, #16
    1a1c:	46bd      	mov	sp, r7
    1a1e:	bd80      	pop	{r7, pc}
    1a20:	e000ed14 	.word	0xe000ed14
    1a24:	00002258 	.word	0x00002258

00001a28 <fault_test_by_div0>:

void fault_test_by_div0(void) {
    1a28:	b580      	push	{r7, lr}
    1a2a:	b084      	sub	sp, #16
    1a2c:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    1a2e:	4b0c      	ldr	r3, [pc, #48]	; (1a60 <fault_test_by_div0+0x38>)
    1a30:	60fb      	str	r3, [r7, #12]
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
    1a32:	68fb      	ldr	r3, [r7, #12]
    1a34:	681b      	ldr	r3, [r3, #0]
    1a36:	f043 0210 	orr.w	r2, r3, #16
    1a3a:	68fb      	ldr	r3, [r7, #12]
    1a3c:	601a      	str	r2, [r3, #0]

    x = 10;
    1a3e:	230a      	movs	r3, #10
    1a40:	60bb      	str	r3, [r7, #8]
    y = 0;
    1a42:	2300      	movs	r3, #0
    1a44:	607b      	str	r3, [r7, #4]
    z = x / y;
    1a46:	68ba      	ldr	r2, [r7, #8]
    1a48:	687b      	ldr	r3, [r7, #4]
    1a4a:	fb92 f3f3 	sdiv	r3, r2, r3
    1a4e:	603b      	str	r3, [r7, #0]
    printf("z:%d\n", z);
    1a50:	6839      	ldr	r1, [r7, #0]
    1a52:	4804      	ldr	r0, [pc, #16]	; (1a64 <fault_test_by_div0+0x3c>)
    1a54:	f7ff fbdd 	bl	1212 <printf_>
}
    1a58:	bf00      	nop
    1a5a:	3710      	adds	r7, #16
    1a5c:	46bd      	mov	sp, r7
    1a5e:	bd80      	pop	{r7, pc}
    1a60:	e000ed14 	.word	0xe000ed14
    1a64:	00002270 	.word	0x00002270

00001a68 <dump_stack>:
extern const uint32_t _eheap;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    1a68:	b580      	push	{r7, lr}
    1a6a:	b084      	sub	sp, #16
    1a6c:	af00      	add	r7, sp, #0
    1a6e:	60f8      	str	r0, [r7, #12]
    1a70:	60b9      	str	r1, [r7, #8]
    1a72:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
    1a74:	687b      	ldr	r3, [r7, #4]
    1a76:	68fa      	ldr	r2, [r7, #12]
    1a78:	429a      	cmp	r2, r3
    1a7a:	d902      	bls.n	1a82 <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
    1a7c:	68fb      	ldr	r3, [r7, #12]
    1a7e:	607b      	str	r3, [r7, #4]
    1a80:	e014      	b.n	1aac <dump_stack+0x44>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
    1a82:	68fa      	ldr	r2, [r7, #12]
    1a84:	68bb      	ldr	r3, [r7, #8]
    1a86:	441a      	add	r2, r3
    1a88:	687b      	ldr	r3, [r7, #4]
    1a8a:	429a      	cmp	r2, r3
    1a8c:	d20e      	bcs.n	1aac <dump_stack+0x44>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    1a8e:	68fa      	ldr	r2, [r7, #12]
    1a90:	68bb      	ldr	r3, [r7, #8]
    1a92:	4413      	add	r3, r2
    1a94:	607b      	str	r3, [r7, #4]
    }

    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1a96:	e009      	b.n	1aac <dump_stack+0x44>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    1a98:	6879      	ldr	r1, [r7, #4]
    1a9a:	687b      	ldr	r3, [r7, #4]
    1a9c:	681b      	ldr	r3, [r3, #0]
    1a9e:	461a      	mov	r2, r3
    1aa0:	4809      	ldr	r0, [pc, #36]	; (1ac8 <dump_stack+0x60>)
    1aa2:	f7ff fbb6 	bl	1212 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1aa6:	687b      	ldr	r3, [r7, #4]
    1aa8:	3304      	adds	r3, #4
    1aaa:	607b      	str	r3, [r7, #4]
    1aac:	68fa      	ldr	r2, [r7, #12]
    1aae:	68bb      	ldr	r3, [r7, #8]
    1ab0:	441a      	add	r2, r3
    1ab2:	687b      	ldr	r3, [r7, #4]
    1ab4:	429a      	cmp	r2, r3
    1ab6:	d8ef      	bhi.n	1a98 <dump_stack+0x30>
    }
    printf("====================================\n");
    1ab8:	4804      	ldr	r0, [pc, #16]	; (1acc <dump_stack+0x64>)
    1aba:	f7ff fbaa 	bl	1212 <printf_>
}
    1abe:	bf00      	nop
    1ac0:	3710      	adds	r7, #16
    1ac2:	46bd      	mov	sp, r7
    1ac4:	bd80      	pop	{r7, pc}
    1ac6:	bf00      	nop
    1ac8:	00002278 	.word	0x00002278
    1acc:	00002298 	.word	0x00002298

00001ad0 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
    static bool stack_is_overflow = false;
    static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    1ad0:	b480      	push	{r7}
    1ad2:	b085      	sub	sp, #20
    1ad4:	af00      	add	r7, sp, #0
    1ad6:	6078      	str	r0, [r7, #4]
        uint16_t ins1 = *((uint16_t *)addr);
    1ad8:	687b      	ldr	r3, [r7, #4]
    1ada:	881b      	ldrh	r3, [r3, #0]
    1adc:	81fb      	strh	r3, [r7, #14]
        uint16_t ins2 = *((uint16_t *)(addr + 2));
    1ade:	687b      	ldr	r3, [r7, #4]
    1ae0:	3302      	adds	r3, #2
    1ae2:	881b      	ldrh	r3, [r3, #0]
    1ae4:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

        if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
    1ae6:	89bb      	ldrh	r3, [r7, #12]
    1ae8:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1aec:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
    1af0:	d107      	bne.n	1b02 <disassembly_ins_is_bl_blx+0x32>
    1af2:	89fb      	ldrh	r3, [r7, #14]
    1af4:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    1af8:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
    1afc:	d101      	bne.n	1b02 <disassembly_ins_is_bl_blx+0x32>
            return true;
    1afe:	2301      	movs	r3, #1
    1b00:	e008      	b.n	1b14 <disassembly_ins_is_bl_blx+0x44>
        } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
    1b02:	89bb      	ldrh	r3, [r7, #12]
    1b04:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1b08:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1b0c:	d101      	bne.n	1b12 <disassembly_ins_is_bl_blx+0x42>
            return true;
    1b0e:	2301      	movs	r3, #1
    1b10:	e000      	b.n	1b14 <disassembly_ins_is_bl_blx+0x44>
        } else {
            return false;
    1b12:	2300      	movs	r3, #0
        }
    }
    1b14:	4618      	mov	r0, r3
    1b16:	3714      	adds	r7, #20
    1b18:	46bd      	mov	sp, r7
    1b1a:	bc80      	pop	{r7}
    1b1c:	4770      	bx	lr

00001b1e <cm_backtrace_call_stack>:
     * @param size buffer size
     * @param sp stack pointer
     *
     * @return depth
     */
    size_t cm_backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    1b1e:	b580      	push	{r7, lr}
    1b20:	b08a      	sub	sp, #40	; 0x28
    1b22:	af02      	add	r7, sp, #8
    1b24:	60f8      	str	r0, [r7, #12]
    1b26:	60b9      	str	r1, [r7, #8]
    1b28:	607a      	str	r2, [r7, #4]
        uint32_t pc;
        uint32_t lr;
        size_t depth = 0;
    1b2a:	2300      	movs	r3, #0
    1b2c:	61fb      	str	r3, [r7, #28]
        bool regs_saved_lr_is_valid = false;
    1b2e:	2300      	movs	r3, #0
    1b30:	76fb      	strb	r3, [r7, #27]
  2. LR'的值lsb为1
  3. LR' - 4处的指令是bl或者blx指令
*/

//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1b32:	e04e      	b.n	1bd2 <cm_backtrace_call_stack+0xb4>

        当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
        当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
        最低位为1表示thumb模式，9d1表示地址9d0
    */
    lr = *((uint32_t *) sp);
    1b34:	687b      	ldr	r3, [r7, #4]
    1b36:	681b      	ldr	r3, [r3, #0]
    1b38:	617b      	str	r3, [r7, #20]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
    1b3a:	697b      	ldr	r3, [r7, #20]
    1b3c:	f003 0301 	and.w	r3, r3, #1
    1b40:	2b00      	cmp	r3, #0
    1b42:	d040      	beq.n	1bc6 <cm_backtrace_call_stack+0xa8>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
    1b44:	697b      	ldr	r3, [r7, #20]
    1b46:	3b01      	subs	r3, #1
    1b48:	617b      	str	r3, [r7, #20]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
    1b4a:	4b28      	ldr	r3, [pc, #160]	; (1bec <cm_backtrace_call_stack+0xce>)
    1b4c:	681b      	ldr	r3, [r3, #0]
    1b4e:	697a      	ldr	r2, [r7, #20]
    1b50:	429a      	cmp	r2, r3
    1b52:	d33b      	bcc.n	1bcc <cm_backtrace_call_stack+0xae>
    1b54:	4b25      	ldr	r3, [pc, #148]	; (1bec <cm_backtrace_call_stack+0xce>)
    1b56:	681a      	ldr	r2, [r3, #0]
    1b58:	4b25      	ldr	r3, [pc, #148]	; (1bf0 <cm_backtrace_call_stack+0xd2>)
    1b5a:	681b      	ldr	r3, [r3, #0]
    1b5c:	4413      	add	r3, r2
    1b5e:	697a      	ldr	r2, [r7, #20]
    1b60:	429a      	cmp	r2, r3
    1b62:	d833      	bhi.n	1bcc <cm_backtrace_call_stack+0xae>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
    1b64:	697b      	ldr	r3, [r7, #20]
    1b66:	3b04      	subs	r3, #4
    1b68:	4618      	mov	r0, r3
    1b6a:	f7ff ffb1 	bl	1ad0 <disassembly_ins_is_bl_blx>
    1b6e:	4603      	mov	r3, r0
    1b70:	2b00      	cmp	r3, #0
    1b72:	d02b      	beq.n	1bcc <cm_backtrace_call_stack+0xae>
    1b74:	69fa      	ldr	r2, [r7, #28]
    1b76:	68bb      	ldr	r3, [r7, #8]
    1b78:	429a      	cmp	r2, r3
    1b7a:	d227      	bcs.n	1bcc <cm_backtrace_call_stack+0xae>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
    1b7c:	69fb      	ldr	r3, [r7, #28]
    1b7e:	2b02      	cmp	r3, #2
    1b80:	d108      	bne.n	1b94 <cm_backtrace_call_stack+0x76>
    1b82:	7efb      	ldrb	r3, [r7, #27]
    1b84:	2b00      	cmp	r3, #0
    1b86:	d005      	beq.n	1b94 <cm_backtrace_call_stack+0x76>
    1b88:	68fb      	ldr	r3, [r7, #12]
    1b8a:	3304      	adds	r3, #4
    1b8c:	681b      	ldr	r3, [r3, #0]
    1b8e:	697a      	ldr	r2, [r7, #20]
    1b90:	429a      	cmp	r2, r3
    1b92:	d01a      	beq.n	1bca <cm_backtrace_call_stack+0xac>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1b94:	697b      	ldr	r3, [r7, #20]
    1b96:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1b98:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1b9a:	697b      	ldr	r3, [r7, #20]
    1b9c:	3b04      	subs	r3, #4
    1b9e:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1ba0:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1ba2:	697b      	ldr	r3, [r7, #20]
    1ba4:	3b02      	subs	r3, #2
    1ba6:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1ba8:	9300      	str	r3, [sp, #0]
    1baa:	460b      	mov	r3, r1
    1bac:	6979      	ldr	r1, [r7, #20]
    1bae:	4811      	ldr	r0, [pc, #68]	; (1bf4 <cm_backtrace_call_stack+0xd6>)
    1bb0:	f7ff fb2f 	bl	1212 <printf_>
             buffer[depth++] = lr;
    1bb4:	69fb      	ldr	r3, [r7, #28]
    1bb6:	1c5a      	adds	r2, r3, #1
    1bb8:	61fa      	str	r2, [r7, #28]
    1bba:	009b      	lsls	r3, r3, #2
    1bbc:	68fa      	ldr	r2, [r7, #12]
    1bbe:	4413      	add	r3, r2
    1bc0:	697a      	ldr	r2, [r7, #20]
    1bc2:	601a      	str	r2, [r3, #0]
    1bc4:	e002      	b.n	1bcc <cm_backtrace_call_stack+0xae>
        continue;
    1bc6:	bf00      	nop
    1bc8:	e000      	b.n	1bcc <cm_backtrace_call_stack+0xae>
            continue;
    1bca:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1bcc:	687b      	ldr	r3, [r7, #4]
    1bce:	3304      	adds	r3, #4
    1bd0:	607b      	str	r3, [r7, #4]
    1bd2:	4b09      	ldr	r3, [pc, #36]	; (1bf8 <cm_backtrace_call_stack+0xda>)
    1bd4:	681a      	ldr	r2, [r3, #0]
    1bd6:	4b09      	ldr	r3, [pc, #36]	; (1bfc <cm_backtrace_call_stack+0xde>)
    1bd8:	681b      	ldr	r3, [r3, #0]
    1bda:	4413      	add	r3, r2
    1bdc:	687a      	ldr	r2, [r7, #4]
    1bde:	429a      	cmp	r2, r3
    1be0:	d3a8      	bcc.n	1b34 <cm_backtrace_call_stack+0x16>
    }
}

return depth;
    1be2:	69fb      	ldr	r3, [r7, #28]
    }
    1be4:	4618      	mov	r0, r3
    1be6:	3720      	adds	r7, #32
    1be8:	46bd      	mov	sp, r7
    1bea:	bd80      	pop	{r7, pc}
    1bec:	20000008 	.word	0x20000008
    1bf0:	20000010 	.word	0x20000010
    1bf4:	00002bb4 	.word	0x00002bb4
    1bf8:	20000014 	.word	0x20000014
    1bfc:	2000001c 	.word	0x2000001c

00001c00 <print_call_stack>:

    static void print_call_stack(uint32_t sp) {
    1c00:	b580      	push	{r7, lr}
    1c02:	b096      	sub	sp, #88	; 0x58
    1c04:	af02      	add	r7, sp, #8
    1c06:	6078      	str	r0, [r7, #4]
        size_t i, cur_depth = 0;
    1c08:	2300      	movs	r3, #0
    1c0a:	64bb      	str	r3, [r7, #72]	; 0x48
        uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
    1c0c:	f107 0308 	add.w	r3, r7, #8
    1c10:	2240      	movs	r2, #64	; 0x40
    1c12:	2100      	movs	r1, #0
    1c14:	4618      	mov	r0, r3
    1c16:	f7ff fdf7 	bl	1808 <memset>

        cur_depth = cm_backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
    1c1a:	f107 0308 	add.w	r3, r7, #8
    1c1e:	687a      	ldr	r2, [r7, #4]
    1c20:	2110      	movs	r1, #16
    1c22:	4618      	mov	r0, r3
    1c24:	f7ff ff7b 	bl	1b1e <cm_backtrace_call_stack>
    1c28:	64b8      	str	r0, [r7, #72]	; 0x48

        for (i = 0; i < cur_depth; i++) {
    1c2a:	2300      	movs	r3, #0
    1c2c:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c2e:	e01b      	b.n	1c68 <print_call_stack+0x68>
            sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
    1c30:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c32:	4613      	mov	r3, r2
    1c34:	00db      	lsls	r3, r3, #3
    1c36:	4413      	add	r3, r2
    1c38:	4a1c      	ldr	r2, [pc, #112]	; (1cac <print_call_stack+0xac>)
    1c3a:	1898      	adds	r0, r3, r2
    1c3c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c3e:	009b      	lsls	r3, r3, #2
    1c40:	f107 0250 	add.w	r2, r7, #80	; 0x50
    1c44:	4413      	add	r3, r2
    1c46:	f853 3c48 	ldr.w	r3, [r3, #-72]
    1c4a:	461a      	mov	r2, r3
    1c4c:	4918      	ldr	r1, [pc, #96]	; (1cb0 <print_call_stack+0xb0>)
    1c4e:	f7ff fafb 	bl	1248 <sprintf_>
            call_stack_info[i * (8 + 1) + 8] = ' ';
    1c52:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c54:	4613      	mov	r3, r2
    1c56:	00db      	lsls	r3, r3, #3
    1c58:	4413      	add	r3, r2
    1c5a:	3308      	adds	r3, #8
    1c5c:	4a13      	ldr	r2, [pc, #76]	; (1cac <print_call_stack+0xac>)
    1c5e:	2120      	movs	r1, #32
    1c60:	54d1      	strb	r1, [r2, r3]
        for (i = 0; i < cur_depth; i++) {
    1c62:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1c64:	3301      	adds	r3, #1
    1c66:	64fb      	str	r3, [r7, #76]	; 0x4c
    1c68:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1c6a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1c6c:	429a      	cmp	r2, r3
    1c6e:	d3df      	bcc.n	1c30 <print_call_stack+0x30>
        }

        if (cur_depth) {
    1c70:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1c72:	2b00      	cmp	r3, #0
    1c74:	d00f      	beq.n	1c96 <print_call_stack+0x96>
            cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
    1c76:	480f      	ldr	r0, [pc, #60]	; (1cb4 <print_call_stack+0xb4>)
    1c78:	6cba      	ldr	r2, [r7, #72]	; 0x48
    1c7a:	4613      	mov	r3, r2
    1c7c:	00db      	lsls	r3, r3, #3
    1c7e:	441a      	add	r2, r3
    1c80:	4b0a      	ldr	r3, [pc, #40]	; (1cac <print_call_stack+0xac>)
    1c82:	9300      	str	r3, [sp, #0]
    1c84:	4613      	mov	r3, r2
    1c86:	4a0c      	ldr	r2, [pc, #48]	; (1cb8 <print_call_stack+0xb8>)
    1c88:	490c      	ldr	r1, [pc, #48]	; (1cbc <print_call_stack+0xbc>)
    1c8a:	f7ff fac2 	bl	1212 <printf_>
    1c8e:	480c      	ldr	r0, [pc, #48]	; (1cc0 <print_call_stack+0xc0>)
    1c90:	f7ff fabf 	bl	1212 <printf_>
                        call_stack_info);
        } else {
            cmb_println(print_info[PRINT_CALL_STACK_ERR]);
        }
    }
    1c94:	e006      	b.n	1ca4 <print_call_stack+0xa4>
            cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    1c96:	4b0b      	ldr	r3, [pc, #44]	; (1cc4 <print_call_stack+0xc4>)
    1c98:	4618      	mov	r0, r3
    1c9a:	f7ff faba 	bl	1212 <printf_>
    1c9e:	4808      	ldr	r0, [pc, #32]	; (1cc0 <print_call_stack+0xc0>)
    1ca0:	f7ff fab7 	bl	1212 <printf_>
    }
    1ca4:	bf00      	nop
    1ca6:	3750      	adds	r7, #80	; 0x50
    1ca8:	46bd      	mov	sp, r7
    1caa:	bd80      	pop	{r7, pc}
    1cac:	2000002c 	.word	0x2000002c
    1cb0:	00002bf8 	.word	0x00002bf8
    1cb4:	00002450 	.word	0x00002450
    1cb8:	00002c00 	.word	0x00002c00
    1cbc:	00002c08 	.word	0x00002c08
    1cc0:	00002c18 	.word	0x00002c18
    1cc4:	00002490 	.word	0x00002490

00001cc8 <backtrace_level_3>:
    void BackTraceSub(unsigned long sp);
    void backtrace_level_3(void)
    {
    1cc8:	b598      	push	{r3, r4, r7, lr}
    1cca:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
    1ccc:	490f      	ldr	r1, [pc, #60]	; (1d0c <backtrace_level_3+0x44>)
    1cce:	4810      	ldr	r0, [pc, #64]	; (1d10 <backtrace_level_3+0x48>)
    1cd0:	f7ff fa9f 	bl	1212 <printf_>
        dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
    1cd4:	4b0f      	ldr	r3, [pc, #60]	; (1d14 <backtrace_level_3+0x4c>)
    1cd6:	6818      	ldr	r0, [r3, #0]
    1cd8:	4b0f      	ldr	r3, [pc, #60]	; (1d18 <backtrace_level_3+0x50>)
    1cda:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1cdc:	466a      	mov	r2, sp
    1cde:	4614      	mov	r4, r2
    return(result);
    1ce0:	4622      	mov	r2, r4
    1ce2:	4619      	mov	r1, r3
    1ce4:	f7ff fec0 	bl	1a68 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1ce8:	466b      	mov	r3, sp
    1cea:	461c      	mov	r4, r3
    return(result);
    1cec:	4623      	mov	r3, r4

        print_call_stack(cmb_get_sp());
    1cee:	4618      	mov	r0, r3
    1cf0:	f7ff ff86 	bl	1c00 <print_call_stack>
        printf("======================\n");
    1cf4:	4809      	ldr	r0, [pc, #36]	; (1d1c <backtrace_level_3+0x54>)
    1cf6:	f7ff fa8c 	bl	1212 <printf_>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1cfa:	466b      	mov	r3, sp
    1cfc:	461c      	mov	r4, r3
    return(result);
    1cfe:	4623      	mov	r3, r4
        BackTraceSub(cmb_get_sp());
    1d00:	4618      	mov	r0, r3
    1d02:	f000 f98f 	bl	2024 <BackTraceSub>
    }
    1d06:	bf00      	nop
    1d08:	bd98      	pop	{r3, r4, r7, pc}
    1d0a:	bf00      	nop
    1d0c:	00002d7c 	.word	0x00002d7c
    1d10:	00002c1c 	.word	0x00002c1c
    1d14:	20000014 	.word	0x20000014
    1d18:	2000001c 	.word	0x2000001c
    1d1c:	00002c24 	.word	0x00002c24

00001d20 <backtrace_level_2>:
    void backtrace_level_2(void)
    {
    1d20:	b580      	push	{r7, lr}
    1d22:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
    1d24:	4903      	ldr	r1, [pc, #12]	; (1d34 <backtrace_level_2+0x14>)
    1d26:	4804      	ldr	r0, [pc, #16]	; (1d38 <backtrace_level_2+0x18>)
    1d28:	f7ff fa73 	bl	1212 <printf_>
        backtrace_level_3();
    1d2c:	f7ff ffcc 	bl	1cc8 <backtrace_level_3>
    }
    1d30:	bf00      	nop
    1d32:	bd80      	pop	{r7, pc}
    1d34:	00002d90 	.word	0x00002d90
    1d38:	00002c1c 	.word	0x00002c1c

00001d3c <backtrace_level_1>:
    void backtrace_level_1(void)
    {
    1d3c:	b580      	push	{r7, lr}
    1d3e:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
    1d40:	4903      	ldr	r1, [pc, #12]	; (1d50 <backtrace_level_1+0x14>)
    1d42:	4804      	ldr	r0, [pc, #16]	; (1d54 <backtrace_level_1+0x18>)
    1d44:	f7ff fa65 	bl	1212 <printf_>
        backtrace_level_2();
    1d48:	f7ff ffea 	bl	1d20 <backtrace_level_2>
    }
    1d4c:	bf00      	nop
    1d4e:	bd80      	pop	{r7, pc}
    1d50:	00002da4 	.word	0x00002da4
    1d54:	00002c1c 	.word	0x00002c1c

00001d58 <backtrace_test>:
    void backtrace_test(void)
    {
    1d58:	b590      	push	{r4, r7, lr}
    1d5a:	b089      	sub	sp, #36	; 0x24
    1d5c:	af02      	add	r7, sp, #8
        int bt1 = 0xAA;
    1d5e:	23aa      	movs	r3, #170	; 0xaa
    1d60:	613b      	str	r3, [r7, #16]
        int bt2 = 0x55;
    1d62:	2355      	movs	r3, #85	; 0x55
    1d64:	60fb      	str	r3, [r7, #12]
        int bt3 = 0x77;
    1d66:	2377      	movs	r3, #119	; 0x77
    1d68:	60bb      	str	r3, [r7, #8]
        (void)bt1;
        (void)bt2;
        (void)bt3;

        code_start_addr = (uint32_t)&_stext;
    1d6a:	4a42      	ldr	r2, [pc, #264]	; (1e74 <backtrace_test+0x11c>)
    1d6c:	4b42      	ldr	r3, [pc, #264]	; (1e78 <backtrace_test+0x120>)
    1d6e:	601a      	str	r2, [r3, #0]
        code_end_addr = (uint32_t)&_etext;
    1d70:	4a42      	ldr	r2, [pc, #264]	; (1e7c <backtrace_test+0x124>)
    1d72:	4b43      	ldr	r3, [pc, #268]	; (1e80 <backtrace_test+0x128>)
    1d74:	601a      	str	r2, [r3, #0]
        code_size = code_end_addr - code_start_addr;
    1d76:	4b42      	ldr	r3, [pc, #264]	; (1e80 <backtrace_test+0x128>)
    1d78:	681a      	ldr	r2, [r3, #0]
    1d7a:	4b3f      	ldr	r3, [pc, #252]	; (1e78 <backtrace_test+0x120>)
    1d7c:	681b      	ldr	r3, [r3, #0]
    1d7e:	1ad3      	subs	r3, r2, r3
    1d80:	4a40      	ldr	r2, [pc, #256]	; (1e84 <backtrace_test+0x12c>)
    1d82:	6013      	str	r3, [r2, #0]
        stack_start_addr = (uint32_t)&_sstack;
    1d84:	4a40      	ldr	r2, [pc, #256]	; (1e88 <backtrace_test+0x130>)
    1d86:	4b41      	ldr	r3, [pc, #260]	; (1e8c <backtrace_test+0x134>)
    1d88:	601a      	str	r2, [r3, #0]
        stack_end_addr = (uint32_t)&_estack;
    1d8a:	4a41      	ldr	r2, [pc, #260]	; (1e90 <backtrace_test+0x138>)
    1d8c:	4b41      	ldr	r3, [pc, #260]	; (1e94 <backtrace_test+0x13c>)
    1d8e:	601a      	str	r2, [r3, #0]
        stack_size = stack_end_addr - stack_start_addr;
    1d90:	4b40      	ldr	r3, [pc, #256]	; (1e94 <backtrace_test+0x13c>)
    1d92:	681a      	ldr	r2, [r3, #0]
    1d94:	4b3d      	ldr	r3, [pc, #244]	; (1e8c <backtrace_test+0x134>)
    1d96:	681b      	ldr	r3, [r3, #0]
    1d98:	1ad3      	subs	r3, r2, r3
    1d9a:	4a3f      	ldr	r2, [pc, #252]	; (1e98 <backtrace_test+0x140>)
    1d9c:	6013      	str	r3, [r2, #0]
        heap_start_addr = (uint32_t)&_sheap;
    1d9e:	4a3f      	ldr	r2, [pc, #252]	; (1e9c <backtrace_test+0x144>)
    1da0:	4b3f      	ldr	r3, [pc, #252]	; (1ea0 <backtrace_test+0x148>)
    1da2:	601a      	str	r2, [r3, #0]
        heap_end_addr = (uint32_t)&_eheap;
    1da4:	4a3f      	ldr	r2, [pc, #252]	; (1ea4 <backtrace_test+0x14c>)
    1da6:	4b40      	ldr	r3, [pc, #256]	; (1ea8 <backtrace_test+0x150>)
    1da8:	601a      	str	r2, [r3, #0]
        heap_size = heap_end_addr - heap_start_addr;
    1daa:	4b3f      	ldr	r3, [pc, #252]	; (1ea8 <backtrace_test+0x150>)
    1dac:	681a      	ldr	r2, [r3, #0]
    1dae:	4b3c      	ldr	r3, [pc, #240]	; (1ea0 <backtrace_test+0x148>)
    1db0:	681b      	ldr	r3, [r3, #0]
    1db2:	1ad3      	subs	r3, r2, r3
    1db4:	4a3d      	ldr	r2, [pc, #244]	; (1eac <backtrace_test+0x154>)
    1db6:	6013      	str	r3, [r2, #0]
        printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
    1db8:	4b2f      	ldr	r3, [pc, #188]	; (1e78 <backtrace_test+0x120>)
    1dba:	6819      	ldr	r1, [r3, #0]
    1dbc:	4b30      	ldr	r3, [pc, #192]	; (1e80 <backtrace_test+0x128>)
    1dbe:	6818      	ldr	r0, [r3, #0]
    1dc0:	4b30      	ldr	r3, [pc, #192]	; (1e84 <backtrace_test+0x12c>)
    1dc2:	681b      	ldr	r3, [r3, #0]
    1dc4:	4a2f      	ldr	r2, [pc, #188]	; (1e84 <backtrace_test+0x12c>)
    1dc6:	6812      	ldr	r2, [r2, #0]
    1dc8:	9201      	str	r2, [sp, #4]
    1dca:	9300      	str	r3, [sp, #0]
    1dcc:	4603      	mov	r3, r0
    1dce:	460a      	mov	r2, r1
    1dd0:	4937      	ldr	r1, [pc, #220]	; (1eb0 <backtrace_test+0x158>)
    1dd2:	4838      	ldr	r0, [pc, #224]	; (1eb4 <backtrace_test+0x15c>)
    1dd4:	f7ff fa1d 	bl	1212 <printf_>
        __func__, code_start_addr, code_end_addr, code_size, code_size);
        printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
    1dd8:	4b2c      	ldr	r3, [pc, #176]	; (1e8c <backtrace_test+0x134>)
    1dda:	6819      	ldr	r1, [r3, #0]
    1ddc:	4b2d      	ldr	r3, [pc, #180]	; (1e94 <backtrace_test+0x13c>)
    1dde:	6818      	ldr	r0, [r3, #0]
    1de0:	4b2d      	ldr	r3, [pc, #180]	; (1e98 <backtrace_test+0x140>)
    1de2:	681b      	ldr	r3, [r3, #0]
    1de4:	4a2c      	ldr	r2, [pc, #176]	; (1e98 <backtrace_test+0x140>)
    1de6:	6812      	ldr	r2, [r2, #0]
    1de8:	9201      	str	r2, [sp, #4]
    1dea:	9300      	str	r3, [sp, #0]
    1dec:	4603      	mov	r3, r0
    1dee:	460a      	mov	r2, r1
    1df0:	492f      	ldr	r1, [pc, #188]	; (1eb0 <backtrace_test+0x158>)
    1df2:	4831      	ldr	r0, [pc, #196]	; (1eb8 <backtrace_test+0x160>)
    1df4:	f7ff fa0d 	bl	1212 <printf_>
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
        printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
    1df8:	4b29      	ldr	r3, [pc, #164]	; (1ea0 <backtrace_test+0x148>)
    1dfa:	6819      	ldr	r1, [r3, #0]
    1dfc:	4b2a      	ldr	r3, [pc, #168]	; (1ea8 <backtrace_test+0x150>)
    1dfe:	6818      	ldr	r0, [r3, #0]
    1e00:	4b2a      	ldr	r3, [pc, #168]	; (1eac <backtrace_test+0x154>)
    1e02:	681b      	ldr	r3, [r3, #0]
    1e04:	4a29      	ldr	r2, [pc, #164]	; (1eac <backtrace_test+0x154>)
    1e06:	6812      	ldr	r2, [r2, #0]
    1e08:	9201      	str	r2, [sp, #4]
    1e0a:	9300      	str	r3, [sp, #0]
    1e0c:	4603      	mov	r3, r0
    1e0e:	460a      	mov	r2, r1
    1e10:	4927      	ldr	r1, [pc, #156]	; (1eb0 <backtrace_test+0x158>)
    1e12:	482a      	ldr	r0, [pc, #168]	; (1ebc <backtrace_test+0x164>)
    1e14:	f7ff f9fd 	bl	1212 <printf_>
  __ASM volatile ("cpsie i" : : : "memory");
    1e18:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1e1a:	466b      	mov	r3, sp
    1e1c:	461c      	mov	r4, r3
    return(result);
    1e1e:	4623      	mov	r3, r4
         // test_div();
         // fault_test_by_div0();
         // fault_test_by_unalign();
         // __asm("svc 0");
         // printf("[%s] end\n", __func__);
         uint32_t sp = cmb_get_sp();
    1e20:	617b      	str	r3, [r7, #20]
         printf("sp=0x%lx\n", sp);
    1e22:	6979      	ldr	r1, [r7, #20]
    1e24:	4826      	ldr	r0, [pc, #152]	; (1ec0 <backtrace_test+0x168>)
    1e26:	f7ff f9f4 	bl	1212 <printf_>
         区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
         blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
         进行计算
         */
         uint32_t addr;
         while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1e2a:	e01b      	b.n	1e64 <backtrace_test+0x10c>
             //sp 在代码段内
             addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
    1e2c:	697b      	ldr	r3, [r7, #20]
    1e2e:	681b      	ldr	r3, [r3, #0]
    1e30:	607b      	str	r3, [r7, #4]
             printf("addr :%08x\n", addr);
    1e32:	6879      	ldr	r1, [r7, #4]
    1e34:	4823      	ldr	r0, [pc, #140]	; (1ec4 <backtrace_test+0x16c>)
    1e36:	f7ff f9ec 	bl	1212 <printf_>
             if ((addr >= (uint32_t)&_stext) &&
    1e3a:	4a0e      	ldr	r2, [pc, #56]	; (1e74 <backtrace_test+0x11c>)
    1e3c:	687b      	ldr	r3, [r7, #4]
    1e3e:	4293      	cmp	r3, r2
    1e40:	d30d      	bcc.n	1e5e <backtrace_test+0x106>
             (sp <= (uint32_t)&_etext) &&
    1e42:	4a0e      	ldr	r2, [pc, #56]	; (1e7c <backtrace_test+0x124>)
             if ((addr >= (uint32_t)&_stext) &&
    1e44:	697b      	ldr	r3, [r7, #20]
    1e46:	4293      	cmp	r3, r2
    1e48:	d809      	bhi.n	1e5e <backtrace_test+0x106>
             IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
    1e4a:	687b      	ldr	r3, [r7, #4]
    1e4c:	3b01      	subs	r3, #1
    1e4e:	f003 0301 	and.w	r3, r3, #1
             (sp <= (uint32_t)&_etext) &&
    1e52:	2b00      	cmp	r3, #0
    1e54:	d103      	bne.n	1e5e <backtrace_test+0x106>

                 printf("find ld 0x%08x\n", addr);
    1e56:	6879      	ldr	r1, [r7, #4]
    1e58:	481b      	ldr	r0, [pc, #108]	; (1ec8 <backtrace_test+0x170>)
    1e5a:	f7ff f9da 	bl	1212 <printf_>
             }
             sp += 4;
    1e5e:	697b      	ldr	r3, [r7, #20]
    1e60:	3304      	adds	r3, #4
    1e62:	617b      	str	r3, [r7, #20]
         while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1e64:	4a0a      	ldr	r2, [pc, #40]	; (1e90 <backtrace_test+0x138>)
    1e66:	697b      	ldr	r3, [r7, #20]
    1e68:	4293      	cmp	r3, r2
    1e6a:	d3df      	bcc.n	1e2c <backtrace_test+0xd4>
         }
         backtrace_level_1();
    1e6c:	f7ff ff66 	bl	1d3c <backtrace_level_1>
         while(1);
    1e70:	e7fe      	b.n	1e70 <backtrace_test+0x118>
    1e72:	bf00      	nop
    1e74:	00000000 	.word	0x00000000
    1e78:	20000008 	.word	0x20000008
    1e7c:	00002dd4 	.word	0x00002dd4
    1e80:	2000000c 	.word	0x2000000c
    1e84:	20000010 	.word	0x20000010
    1e88:	200008d8 	.word	0x200008d8
    1e8c:	20000014 	.word	0x20000014
    1e90:	200018d8 	.word	0x200018d8
    1e94:	20000018 	.word	0x20000018
    1e98:	2000001c 	.word	0x2000001c
    1e9c:	200018d8 	.word	0x200018d8
    1ea0:	20000020 	.word	0x20000020
    1ea4:	200058d8 	.word	0x200058d8
    1ea8:	20000024 	.word	0x20000024
    1eac:	20000028 	.word	0x20000028
    1eb0:	00002db8 	.word	0x00002db8
    1eb4:	00002c3c 	.word	0x00002c3c
    1eb8:	00002c84 	.word	0x00002c84
    1ebc:	00002ccc 	.word	0x00002ccc
    1ec0:	00002d14 	.word	0x00002d14
    1ec4:	00002d20 	.word	0x00002d20
    1ec8:	00002d2c 	.word	0x00002d2c

00001ecc <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    1ecc:	b480      	push	{r7}
    1ece:	b083      	sub	sp, #12
    1ed0:	af00      	add	r7, sp, #0
    1ed2:	6078      	str	r0, [r7, #4]
        while (addr > (unsigned long)code_start_addr) {
    1ed4:	e00e      	b.n	1ef4 <LoopUntilEntry+0x28>
            if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
    1ed6:	687b      	ldr	r3, [r7, #4]
    1ed8:	881b      	ldrh	r3, [r3, #0]
    1eda:	0a1b      	lsrs	r3, r3, #8
    1edc:	b29b      	uxth	r3, r3
    1ede:	2bb5      	cmp	r3, #181	; 0xb5
    1ee0:	d00d      	beq.n	1efe <LoopUntilEntry+0x32>
    1ee2:	687b      	ldr	r3, [r7, #4]
    1ee4:	881b      	ldrh	r3, [r3, #0]
    1ee6:	0a1b      	lsrs	r3, r3, #8
    1ee8:	b29b      	uxth	r3, r3
    1eea:	2bb4      	cmp	r3, #180	; 0xb4
    1eec:	d007      	beq.n	1efe <LoopUntilEntry+0x32>
                break;
            }
            addr -= THUM_OFFSET;
    1eee:	687b      	ldr	r3, [r7, #4]
    1ef0:	3b02      	subs	r3, #2
    1ef2:	607b      	str	r3, [r7, #4]
        while (addr > (unsigned long)code_start_addr) {
    1ef4:	4b05      	ldr	r3, [pc, #20]	; (1f0c <LoopUntilEntry+0x40>)
    1ef6:	681b      	ldr	r3, [r3, #0]
    1ef8:	687a      	ldr	r2, [r7, #4]
    1efa:	429a      	cmp	r2, r3
    1efc:	d8eb      	bhi.n	1ed6 <LoopUntilEntry+0xa>
        }

        return addr;
    1efe:	687b      	ldr	r3, [r7, #4]
}
    1f00:	4618      	mov	r0, r3
    1f02:	370c      	adds	r7, #12
    1f04:	46bd      	mov	sp, r7
    1f06:	bc80      	pop	{r7}
    1f08:	4770      	bx	lr
    1f0a:	bf00      	nop
    1f0c:	20000008 	.word	0x20000008

00001f10 <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    1f10:	b480      	push	{r7}
    1f12:	b087      	sub	sp, #28
    1f14:	af00      	add	r7, sp, #0
    1f16:	6078      	str	r0, [r7, #4]
        unsigned long target = 0;
    1f18:	2300      	movs	r3, #0
    1f1a:	617b      	str	r3, [r7, #20]
        uint32_t off0, off1, off;

        if (*(uint16_t *)bl & SIGN_BIT_MASK) {
    1f1c:	687b      	ldr	r3, [r7, #4]
    1f1e:	881b      	ldrh	r3, [r3, #0]
    1f20:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1f24:	2b00      	cmp	r3, #0
    1f26:	d00b      	beq.n	1f40 <CalculateBLTargetAddress+0x30>
            off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f28:	687b      	ldr	r3, [r7, #4]
    1f2a:	881b      	ldrh	r3, [r3, #0]
    1f2c:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f30:	60fb      	str	r3, [r7, #12]
            off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f32:	687b      	ldr	r3, [r7, #4]
    1f34:	3302      	adds	r3, #2
    1f36:	881b      	ldrh	r3, [r3, #0]
    1f38:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f3c:	613b      	str	r3, [r7, #16]
    1f3e:	e00a      	b.n	1f56 <CalculateBLTargetAddress+0x46>
        } else {
            off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1f40:	687b      	ldr	r3, [r7, #4]
    1f42:	881b      	ldrh	r3, [r3, #0]
    1f44:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f48:	613b      	str	r3, [r7, #16]
            off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1f4a:	687b      	ldr	r3, [r7, #4]
    1f4c:	3302      	adds	r3, #2
    1f4e:	881b      	ldrh	r3, [r3, #0]
    1f50:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1f54:	60fb      	str	r3, [r7, #12]
        }
        off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    1f56:	693b      	ldr	r3, [r7, #16]
    1f58:	031a      	lsls	r2, r3, #12
    1f5a:	68fb      	ldr	r3, [r7, #12]
    1f5c:	005b      	lsls	r3, r3, #1
    1f5e:	4413      	add	r3, r2
    1f60:	60bb      	str	r3, [r7, #8]
        if (off & SIGN_BIT_MASK) {
    1f62:	68bb      	ldr	r3, [r7, #8]
    1f64:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1f68:	2b00      	cmp	r3, #0
    1f6a:	d008      	beq.n	1f7e <CalculateBLTargetAddress+0x6e>
            target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    1f6c:	68bb      	ldr	r3, [r7, #8]
    1f6e:	425b      	negs	r3, r3
    1f70:	f3c3 0316 	ubfx	r3, r3, #0, #23
    1f74:	687a      	ldr	r2, [r7, #4]
    1f76:	1ad3      	subs	r3, r2, r3
    1f78:	3304      	adds	r3, #4
    1f7a:	617b      	str	r3, [r7, #20]
    1f7c:	e004      	b.n	1f88 <CalculateBLTargetAddress+0x78>
        } else {
            target = bl + BL_CMD_OFFSET + off;
    1f7e:	687a      	ldr	r2, [r7, #4]
    1f80:	68bb      	ldr	r3, [r7, #8]
    1f82:	4413      	add	r3, r2
    1f84:	3304      	adds	r3, #4
    1f86:	617b      	str	r3, [r7, #20]
        }

        return target;
    1f88:	697b      	ldr	r3, [r7, #20]
}
    1f8a:	4618      	mov	r0, r3
    1f8c:	371c      	adds	r7, #28
    1f8e:	46bd      	mov	sp, r7
    1f90:	bc80      	pop	{r7}
    1f92:	4770      	bx	lr

00001f94 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    1f94:	b580      	push	{r7, lr}
    1f96:	b084      	sub	sp, #16
    1f98:	af00      	add	r7, sp, #0
    1f9a:	6078      	str	r0, [r7, #4]
        unsigned long target = 0;
    1f9c:	2300      	movs	r3, #0
    1f9e:	60fb      	str	r3, [r7, #12]
        static unsigned long tmpBL = 0;

        if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
    1fa0:	687b      	ldr	r3, [r7, #4]
    1fa2:	3b02      	subs	r3, #2
    1fa4:	881b      	ldrh	r3, [r3, #0]
    1fa6:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1faa:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1fae:	d11a      	bne.n	1fe6 <CalculateTargetAddress+0x52>
            if (tmpBL != 0) {
    1fb0:	4b1b      	ldr	r3, [pc, #108]	; (2020 <CalculateTargetAddress+0x8c>)
    1fb2:	681b      	ldr	r3, [r3, #0]
    1fb4:	2b00      	cmp	r3, #0
    1fb6:	d00b      	beq.n	1fd0 <CalculateTargetAddress+0x3c>
                target = LoopUntilEntry (tmpBL);
    1fb8:	4b19      	ldr	r3, [pc, #100]	; (2020 <CalculateTargetAddress+0x8c>)
    1fba:	681b      	ldr	r3, [r3, #0]
    1fbc:	4618      	mov	r0, r3
    1fbe:	f7ff ff85 	bl	1ecc <LoopUntilEntry>
    1fc2:	60f8      	str	r0, [r7, #12]
                tmpBL = bl - BLX_CMD_OFFSET;
    1fc4:	687b      	ldr	r3, [r7, #4]
    1fc6:	3b02      	subs	r3, #2
    1fc8:	4a15      	ldr	r2, [pc, #84]	; (2020 <CalculateTargetAddress+0x8c>)
    1fca:	6013      	str	r3, [r2, #0]
                return target;
    1fcc:	68fb      	ldr	r3, [r7, #12]
    1fce:	e023      	b.n	2018 <CalculateTargetAddress+0x84>
            }
            tmpBL = bl - BLX_CMD_OFFSET;
    1fd0:	687b      	ldr	r3, [r7, #4]
    1fd2:	3b02      	subs	r3, #2
    1fd4:	4a12      	ldr	r2, [pc, #72]	; (2020 <CalculateTargetAddress+0x8c>)
    1fd6:	6013      	str	r3, [r2, #0]
            return LoopUntilEntry(tmpBL);
    1fd8:	4b11      	ldr	r3, [pc, #68]	; (2020 <CalculateTargetAddress+0x8c>)
    1fda:	681b      	ldr	r3, [r3, #0]
    1fdc:	4618      	mov	r0, r3
    1fde:	f7ff ff75 	bl	1ecc <LoopUntilEntry>
    1fe2:	4603      	mov	r3, r0
    1fe4:	e018      	b.n	2018 <CalculateTargetAddress+0x84>
        } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
    1fe6:	687b      	ldr	r3, [r7, #4]
    1fe8:	3b04      	subs	r3, #4
    1fea:	681b      	ldr	r3, [r3, #0]
    1fec:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
    1ff0:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
    1ff4:	d10f      	bne.n	2016 <CalculateTargetAddress+0x82>
            tmpBL = bl - BL_CMD_OFFSET;
    1ff6:	687b      	ldr	r3, [r7, #4]
    1ff8:	3b04      	subs	r3, #4
    1ffa:	4a09      	ldr	r2, [pc, #36]	; (2020 <CalculateTargetAddress+0x8c>)
    1ffc:	6013      	str	r3, [r2, #0]
            CalculateBLTargetAddress (tmpBL);
    1ffe:	4b08      	ldr	r3, [pc, #32]	; (2020 <CalculateTargetAddress+0x8c>)
    2000:	681b      	ldr	r3, [r3, #0]
    2002:	4618      	mov	r0, r3
    2004:	f7ff ff84 	bl	1f10 <CalculateBLTargetAddress>

            return CalculateBLTargetAddress (tmpBL);
    2008:	4b05      	ldr	r3, [pc, #20]	; (2020 <CalculateTargetAddress+0x8c>)
    200a:	681b      	ldr	r3, [r3, #0]
    200c:	4618      	mov	r0, r3
    200e:	f7ff ff7f 	bl	1f10 <CalculateBLTargetAddress>
    2012:	4603      	mov	r3, r0
    2014:	e000      	b.n	2018 <CalculateTargetAddress+0x84>
        }

        return 0;
    2016:	2300      	movs	r3, #0
}
    2018:	4618      	mov	r0, r3
    201a:	3710      	adds	r7, #16
    201c:	46bd      	mov	sp, r7
    201e:	bd80      	pop	{r7, pc}
    2020:	200000c0 	.word	0x200000c0

00002024 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
    2024:	b580      	push	{r7, lr}
    2026:	b086      	sub	sp, #24
    2028:	af00      	add	r7, sp, #0
    202a:	6078      	str	r0, [r7, #4]
        unsigned long stackPointer = sp;
    202c:	687b      	ldr	r3, [r7, #4]
    202e:	617b      	str	r3, [r7, #20]
        uint32_t count = 0;
    2030:	2300      	movs	r3, #0
    2032:	613b      	str	r3, [r7, #16]
        static unsigned long tmpJump = 0;


        while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    2034:	e03b      	b.n	20ae <BackTraceSub+0x8a>
            if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    2036:	697b      	ldr	r3, [r7, #20]
    2038:	681a      	ldr	r2, [r3, #0]
    203a:	4b23      	ldr	r3, [pc, #140]	; (20c8 <BackTraceSub+0xa4>)
    203c:	681b      	ldr	r3, [r3, #0]
    203e:	429a      	cmp	r2, r3
    2040:	d32e      	bcc.n	20a0 <BackTraceSub+0x7c>
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    2042:	697b      	ldr	r3, [r7, #20]
    2044:	681a      	ldr	r2, [r3, #0]
    2046:	4b21      	ldr	r3, [pc, #132]	; (20cc <BackTraceSub+0xa8>)
    2048:	681b      	ldr	r3, [r3, #0]
            if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    204a:	429a      	cmp	r2, r3
    204c:	d828      	bhi.n	20a0 <BackTraceSub+0x7c>
            IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
    204e:	697b      	ldr	r3, [r7, #20]
    2050:	681b      	ldr	r3, [r3, #0]
    2052:	3b01      	subs	r3, #1
    2054:	f003 0301 	and.w	r3, r3, #1
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    2058:	2b00      	cmp	r3, #0
    205a:	d121      	bne.n	20a0 <BackTraceSub+0x7c>

                /* Get the entry address of current function. */
                unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
    205c:	697b      	ldr	r3, [r7, #20]
    205e:	681b      	ldr	r3, [r3, #0]
    2060:	3b01      	subs	r3, #1
    2062:	4618      	mov	r0, r3
    2064:	f7ff ff96 	bl	1f94 <CalculateTargetAddress>
    2068:	60f8      	str	r0, [r7, #12]
                if ((checkBL == 0) || (checkBL == tmpJump)) {
    206a:	68fb      	ldr	r3, [r7, #12]
    206c:	2b00      	cmp	r3, #0
    206e:	d004      	beq.n	207a <BackTraceSub+0x56>
    2070:	4b17      	ldr	r3, [pc, #92]	; (20d0 <BackTraceSub+0xac>)
    2072:	681b      	ldr	r3, [r3, #0]
    2074:	68fa      	ldr	r2, [r7, #12]
    2076:	429a      	cmp	r2, r3
    2078:	d103      	bne.n	2082 <BackTraceSub+0x5e>
                    stackPointer += STACK_OFFSET;
    207a:	697b      	ldr	r3, [r7, #20]
    207c:	3304      	adds	r3, #4
    207e:	617b      	str	r3, [r7, #20]
                    continue;
    2080:	e015      	b.n	20ae <BackTraceSub+0x8a>
                }
                tmpJump = checkBL;
    2082:	4a13      	ldr	r2, [pc, #76]	; (20d0 <BackTraceSub+0xac>)
    2084:	68fb      	ldr	r3, [r7, #12]
    2086:	6013      	str	r3, [r2, #0]
                count++;
    2088:	693b      	ldr	r3, [r7, #16]
    208a:	3301      	adds	r3, #1
    208c:	613b      	str	r3, [r7, #16]
                printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
    208e:	697b      	ldr	r3, [r7, #20]
    2090:	681b      	ldr	r3, [r3, #0]
    2092:	1e5a      	subs	r2, r3, #1
    2094:	4b0e      	ldr	r3, [pc, #56]	; (20d0 <BackTraceSub+0xac>)
    2096:	681b      	ldr	r3, [r3, #0]
    2098:	6939      	ldr	r1, [r7, #16]
    209a:	480e      	ldr	r0, [pc, #56]	; (20d4 <BackTraceSub+0xb0>)
    209c:	f7ff f8b9 	bl	1212 <printf_>
            }
            stackPointer += STACK_OFFSET;
    20a0:	697b      	ldr	r3, [r7, #20]
    20a2:	3304      	adds	r3, #4
    20a4:	617b      	str	r3, [r7, #20]
            printf("stackPointer=0x%x\n",stackPointer);
    20a6:	6979      	ldr	r1, [r7, #20]
    20a8:	480b      	ldr	r0, [pc, #44]	; (20d8 <BackTraceSub+0xb4>)
    20aa:	f7ff f8b2 	bl	1212 <printf_>
        while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    20ae:	4b0b      	ldr	r3, [pc, #44]	; (20dc <BackTraceSub+0xb8>)
    20b0:	681b      	ldr	r3, [r3, #0]
    20b2:	697a      	ldr	r2, [r7, #20]
    20b4:	429a      	cmp	r2, r3
    20b6:	d202      	bcs.n	20be <BackTraceSub+0x9a>
    20b8:	693b      	ldr	r3, [r7, #16]
    20ba:	2b0e      	cmp	r3, #14
    20bc:	d9bb      	bls.n	2036 <BackTraceSub+0x12>
        }
}
    20be:	bf00      	nop
    20c0:	3718      	adds	r7, #24
    20c2:	46bd      	mov	sp, r7
    20c4:	bd80      	pop	{r7, pc}
    20c6:	bf00      	nop
    20c8:	20000008 	.word	0x20000008
    20cc:	2000000c 	.word	0x2000000c
    20d0:	200000c4 	.word	0x200000c4
    20d4:	00002d3c 	.word	0x00002d3c
    20d8:	00002d68 	.word	0x00002d68
    20dc:	20000018 	.word	0x20000018

Disassembly of section .text.default_handler:

000020e0 <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
    20e0:	e7fe      	b.n	20e0 <default_handler>
