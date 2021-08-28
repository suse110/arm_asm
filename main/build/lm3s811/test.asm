
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
       8:	200010c8 	.word	0x200010c8
ldr r1, =main
       c:	00000051 	.word	0x00000051

00000010 <g_pfnVectors>:
      10:	200010c8 00000001 0000006d 00000085     ... ....m.......
      20:	0000009d 000000b5 000000cd 00001e9c     ................
      30:	00001e9c 00001e9c 00001e9c 000000e5     ................
      40:	000000fd 00001e9c 00000115 0000012d     ............-...

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
      5c:	f001 fd5a 	bl	1b14 <backtrace_test>
    // hal_mpu_test();
    while(1);
      60:	e7fe      	b.n	60 <main+0x10>
      62:	bf00      	nop
      64:	00001ebc 	.word	0x00001ebc
      68:	00001ea0 	.word	0x00001ea0

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
      7c:	00001ec4 	.word	0x00001ec4
      80:	00001eb4 	.word	0x00001eb4

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
      94:	00001ed0 	.word	0x00001ed0
      98:	00001eb4 	.word	0x00001eb4

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
      ac:	00001ee4 	.word	0x00001ee4
      b0:	00001eb4 	.word	0x00001eb4

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
      c4:	00001ef8 	.word	0x00001ef8
      c8:	00001eb4 	.word	0x00001eb4

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
      dc:	00001f0c 	.word	0x00001f0c
      e0:	00001eb4 	.word	0x00001eb4

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
      f4:	00001f20 	.word	0x00001f20
      f8:	00001eb4 	.word	0x00001eb4

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
     10c:	00001f2c 	.word	0x00001f2c
     110:	00001eb4 	.word	0x00001eb4

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
     124:	00001f40 	.word	0x00001f40
     128:	00001eb4 	.word	0x00001eb4

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
     13c:	00001f50 	.word	0x00001f50
     140:	00001eb4 	.word	0x00001eb4

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
     228:	00001f64 	.word	0x00001f64

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

00001354 <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    1354:	b580      	push	{r7, lr}
    1356:	b084      	sub	sp, #16
    1358:	af00      	add	r7, sp, #0
    135a:	6078      	str	r0, [r7, #4]
    135c:	460b      	mov	r3, r1
    135e:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    1360:	f107 030f 	add.w	r3, r7, #15
    1364:	4618      	mov	r0, r3
    1366:	f7fe ff99 	bl	29c <lite_getchar>
    {
        if (count >= max_len)
    136a:	4b22      	ldr	r3, [pc, #136]	; (13f4 <shell_get_line+0xa0>)
    136c:	781b      	ldrb	r3, [r3, #0]
    136e:	78fa      	ldrb	r2, [r7, #3]
    1370:	429a      	cmp	r2, r3
    1372:	d804      	bhi.n	137e <shell_get_line+0x2a>
        {
            count = 0;
    1374:	4b1f      	ldr	r3, [pc, #124]	; (13f4 <shell_get_line+0xa0>)
    1376:	2200      	movs	r2, #0
    1378:	701a      	strb	r2, [r3, #0]
            return 1;
    137a:	2301      	movs	r3, #1
    137c:	e036      	b.n	13ec <shell_get_line+0x98>
        }
        line[count] = chr;
    137e:	4b1d      	ldr	r3, [pc, #116]	; (13f4 <shell_get_line+0xa0>)
    1380:	781b      	ldrb	r3, [r3, #0]
    1382:	461a      	mov	r2, r3
    1384:	687b      	ldr	r3, [r7, #4]
    1386:	4413      	add	r3, r2
    1388:	7bfa      	ldrb	r2, [r7, #15]
    138a:	701a      	strb	r2, [r3, #0]
        switch (chr)
    138c:	7bfb      	ldrb	r3, [r7, #15]
    138e:	2b0a      	cmp	r3, #10
    1390:	d013      	beq.n	13ba <shell_get_line+0x66>
    1392:	2b0a      	cmp	r3, #10
    1394:	dc02      	bgt.n	139c <shell_get_line+0x48>
    1396:	2b08      	cmp	r3, #8
    1398:	d004      	beq.n	13a4 <shell_get_line+0x50>
    139a:	e01a      	b.n	13d2 <shell_get_line+0x7e>
    139c:	2b0d      	cmp	r3, #13
    139e:	d00c      	beq.n	13ba <shell_get_line+0x66>
    13a0:	2b7f      	cmp	r3, #127	; 0x7f
    13a2:	d116      	bne.n	13d2 <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    13a4:	4b13      	ldr	r3, [pc, #76]	; (13f4 <shell_get_line+0xa0>)
    13a6:	781b      	ldrb	r3, [r3, #0]
    13a8:	2b00      	cmp	r3, #0
    13aa:	d019      	beq.n	13e0 <shell_get_line+0x8c>
            {
                count--;
    13ac:	4b11      	ldr	r3, [pc, #68]	; (13f4 <shell_get_line+0xa0>)
    13ae:	781b      	ldrb	r3, [r3, #0]
    13b0:	3b01      	subs	r3, #1
    13b2:	b2da      	uxtb	r2, r3
    13b4:	4b0f      	ldr	r3, [pc, #60]	; (13f4 <shell_get_line+0xa0>)
    13b6:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    13b8:	e012      	b.n	13e0 <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    13ba:	4b0e      	ldr	r3, [pc, #56]	; (13f4 <shell_get_line+0xa0>)
    13bc:	781b      	ldrb	r3, [r3, #0]
    13be:	461a      	mov	r2, r3
    13c0:	687b      	ldr	r3, [r7, #4]
    13c2:	4413      	add	r3, r2
    13c4:	2200      	movs	r2, #0
    13c6:	701a      	strb	r2, [r3, #0]
            count = 0;
    13c8:	4b0a      	ldr	r3, [pc, #40]	; (13f4 <shell_get_line+0xa0>)
    13ca:	2200      	movs	r2, #0
    13cc:	701a      	strb	r2, [r3, #0]
            return 1;
    13ce:	2301      	movs	r3, #1
    13d0:	e00c      	b.n	13ec <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    13d2:	4b08      	ldr	r3, [pc, #32]	; (13f4 <shell_get_line+0xa0>)
    13d4:	781b      	ldrb	r3, [r3, #0]
    13d6:	3301      	adds	r3, #1
    13d8:	b2da      	uxtb	r2, r3
    13da:	4b06      	ldr	r3, [pc, #24]	; (13f4 <shell_get_line+0xa0>)
    13dc:	701a      	strb	r2, [r3, #0]
    13de:	e000      	b.n	13e2 <shell_get_line+0x8e>
        break;
    13e0:	bf00      	nop
        }
        lite_putchar(chr);
    13e2:	7bfb      	ldrb	r3, [r7, #15]
    13e4:	4618      	mov	r0, r3
    13e6:	f7fe ff6d 	bl	2c4 <lite_putchar>
    }
    return 0;
    13ea:	2300      	movs	r3, #0
}
    13ec:	4618      	mov	r0, r3
    13ee:	3710      	adds	r7, #16
    13f0:	46bd      	mov	sp, r7
    13f2:	bd80      	pop	{r7, pc}
    13f4:	20000000 	.word	0x20000000

000013f8 <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    13f8:	b580      	push	{r7, lr}
    13fa:	b088      	sub	sp, #32
    13fc:	af00      	add	r7, sp, #0
    13fe:	60f8      	str	r0, [r7, #12]
    1400:	60b9      	str	r1, [r7, #8]
    1402:	4613      	mov	r3, r2
    1404:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    1406:	2300      	movs	r3, #0
    1408:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    140a:	4912      	ldr	r1, [pc, #72]	; (1454 <shell_get_args+0x5c>)
    140c:	68f8      	ldr	r0, [r7, #12]
    140e:	f000 f8a1 	bl	1554 <strtok>
    1412:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1414:	2300      	movs	r3, #0
    1416:	77fb      	strb	r3, [r7, #31]
    1418:	e00d      	b.n	1436 <shell_get_args+0x3e>
    {
        args[i] = ptr;
    141a:	7ffb      	ldrb	r3, [r7, #31]
    141c:	009b      	lsls	r3, r3, #2
    141e:	68ba      	ldr	r2, [r7, #8]
    1420:	4413      	add	r3, r2
    1422:	69ba      	ldr	r2, [r7, #24]
    1424:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    1426:	490c      	ldr	r1, [pc, #48]	; (1458 <shell_get_args+0x60>)
    1428:	2000      	movs	r0, #0
    142a:	f000 f893 	bl	1554 <strtok>
    142e:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1430:	7ffb      	ldrb	r3, [r7, #31]
    1432:	3301      	adds	r3, #1
    1434:	77fb      	strb	r3, [r7, #31]
    1436:	69bb      	ldr	r3, [r7, #24]
    1438:	2b00      	cmp	r3, #0
    143a:	d003      	beq.n	1444 <shell_get_args+0x4c>
    143c:	7ffa      	ldrb	r2, [r7, #31]
    143e:	79fb      	ldrb	r3, [r7, #7]
    1440:	429a      	cmp	r2, r3
    1442:	d3ea      	bcc.n	141a <shell_get_args+0x22>
    }
    ret = i;
    1444:	7ffb      	ldrb	r3, [r7, #31]
    1446:	75fb      	strb	r3, [r7, #23]
    return ret;
    1448:	7dfb      	ldrb	r3, [r7, #23]
}
    144a:	4618      	mov	r0, r3
    144c:	3720      	adds	r7, #32
    144e:	46bd      	mov	sp, r7
    1450:	bd80      	pop	{r7, pc}
    1452:	bf00      	nop
    1454:	00001f88 	.word	0x00001f88
    1458:	00001f8c 	.word	0x00001f8c

0000145c <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    145c:	b580      	push	{r7, lr}
    145e:	b084      	sub	sp, #16
    1460:	af00      	add	r7, sp, #0
    1462:	6078      	str	r0, [r7, #4]
    1464:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    1466:	4b0b      	ldr	r3, [pc, #44]	; (1494 <shell_help_func+0x38>)
    1468:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    146a:	e00a      	b.n	1482 <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    146c:	68fb      	ldr	r3, [r7, #12]
    146e:	6819      	ldr	r1, [r3, #0]
    1470:	68fb      	ldr	r3, [r7, #12]
    1472:	685b      	ldr	r3, [r3, #4]
    1474:	461a      	mov	r2, r3
    1476:	4808      	ldr	r0, [pc, #32]	; (1498 <shell_help_func+0x3c>)
    1478:	f7ff fecb 	bl	1212 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    147c:	68fb      	ldr	r3, [r7, #12]
    147e:	330c      	adds	r3, #12
    1480:	60fb      	str	r3, [r7, #12]
    1482:	68fb      	ldr	r3, [r7, #12]
    1484:	4a05      	ldr	r2, [pc, #20]	; (149c <shell_help_func+0x40>)
    1486:	4293      	cmp	r3, r2
    1488:	d3f0      	bcc.n	146c <shell_help_func+0x10>
    }
    return 0;
    148a:	2300      	movs	r3, #0
}
    148c:	4618      	mov	r0, r3
    148e:	3710      	adds	r7, #16
    1490:	46bd      	mov	sp, r7
    1492:	bd80      	pop	{r7, pc}
    1494:	00001e9c 	.word	0x00001e9c
    1498:	00001f90 	.word	0x00001f90
    149c:	00002b64 	.word	0x00002b64

000014a0 <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    14a0:	b480      	push	{r7}
    14a2:	b089      	sub	sp, #36	; 0x24
    14a4:	af00      	add	r7, sp, #0
    14a6:	60f8      	str	r0, [r7, #12]
    14a8:	60b9      	str	r1, [r7, #8]
    14aa:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    14ac:	68fb      	ldr	r3, [r7, #12]
    14ae:	2b00      	cmp	r3, #0
    14b0:	d107      	bne.n	14c2 <strtok_r+0x22>
    14b2:	687b      	ldr	r3, [r7, #4]
    14b4:	681b      	ldr	r3, [r3, #0]
    14b6:	60fb      	str	r3, [r7, #12]
    14b8:	68fb      	ldr	r3, [r7, #12]
    14ba:	2b00      	cmp	r3, #0
    14bc:	d101      	bne.n	14c2 <strtok_r+0x22>
    {
    return (NULL);
    14be:	2300      	movs	r3, #0
    14c0:	e043      	b.n	154a <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    14c2:	bf00      	nop
c = *string_org++;
    14c4:	68fb      	ldr	r3, [r7, #12]
    14c6:	1c5a      	adds	r2, r3, #1
    14c8:	60fa      	str	r2, [r7, #12]
    14ca:	781b      	ldrb	r3, [r3, #0]
    14cc:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    14ce:	68bb      	ldr	r3, [r7, #8]
    14d0:	61fb      	str	r3, [r7, #28]
    14d2:	e004      	b.n	14de <strtok_r+0x3e>
    {
    if (c == sc)
    14d4:	7efa      	ldrb	r2, [r7, #27]
    14d6:	7ebb      	ldrb	r3, [r7, #26]
    14d8:	429a      	cmp	r2, r3
    14da:	d100      	bne.n	14de <strtok_r+0x3e>
        {
        goto count;
    14dc:	e7f2      	b.n	14c4 <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    14de:	69fb      	ldr	r3, [r7, #28]
    14e0:	1c5a      	adds	r2, r3, #1
    14e2:	61fa      	str	r2, [r7, #28]
    14e4:	781b      	ldrb	r3, [r3, #0]
    14e6:	76bb      	strb	r3, [r7, #26]
    14e8:	7ebb      	ldrb	r3, [r7, #26]
    14ea:	2b00      	cmp	r3, #0
    14ec:	d1f2      	bne.n	14d4 <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    14ee:	7efb      	ldrb	r3, [r7, #27]
    14f0:	2b00      	cmp	r3, #0
    14f2:	d104      	bne.n	14fe <strtok_r+0x5e>
    {
    *last = NULL;
    14f4:	687b      	ldr	r3, [r7, #4]
    14f6:	2200      	movs	r2, #0
    14f8:	601a      	str	r2, [r3, #0]
    return (NULL);
    14fa:	2300      	movs	r3, #0
    14fc:	e025      	b.n	154a <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    14fe:	68fb      	ldr	r3, [r7, #12]
    1500:	3b01      	subs	r3, #1
    1502:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    1504:	68fb      	ldr	r3, [r7, #12]
    1506:	1c5a      	adds	r2, r3, #1
    1508:	60fa      	str	r2, [r7, #12]
    150a:	781b      	ldrb	r3, [r3, #0]
    150c:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    150e:	68bb      	ldr	r3, [r7, #8]
    1510:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    1512:	69fb      	ldr	r3, [r7, #28]
    1514:	1c5a      	adds	r2, r3, #1
    1516:	61fa      	str	r2, [r7, #28]
    1518:	781b      	ldrb	r3, [r3, #0]
    151a:	76bb      	strb	r3, [r7, #26]
    151c:	7eba      	ldrb	r2, [r7, #26]
    151e:	7efb      	ldrb	r3, [r7, #27]
    1520:	429a      	cmp	r2, r3
    1522:	d10e      	bne.n	1542 <strtok_r+0xa2>
            {
            if (c == 0)
    1524:	7efb      	ldrb	r3, [r7, #27]
    1526:	2b00      	cmp	r3, #0
    1528:	d102      	bne.n	1530 <strtok_r+0x90>
                {
                string_org = NULL;
    152a:	2300      	movs	r3, #0
    152c:	60fb      	str	r3, [r7, #12]
    152e:	e003      	b.n	1538 <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    1530:	68fb      	ldr	r3, [r7, #12]
    1532:	3b01      	subs	r3, #1
    1534:	2200      	movs	r2, #0
    1536:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    1538:	687b      	ldr	r3, [r7, #4]
    153a:	68fa      	ldr	r2, [r7, #12]
    153c:	601a      	str	r2, [r3, #0]
            return (tok);
    153e:	697b      	ldr	r3, [r7, #20]
    1540:	e003      	b.n	154a <strtok_r+0xaa>
            }
        } while (sc != 0);
    1542:	7ebb      	ldrb	r3, [r7, #26]
    1544:	2b00      	cmp	r3, #0
    1546:	d1e4      	bne.n	1512 <strtok_r+0x72>
    c = *string_org++;
    1548:	e7dc      	b.n	1504 <strtok_r+0x64>
    }
    
}
    154a:	4618      	mov	r0, r3
    154c:	3724      	adds	r7, #36	; 0x24
    154e:	46bd      	mov	sp, r7
    1550:	bc80      	pop	{r7}
    1552:	4770      	bx	lr

00001554 <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    1554:	b580      	push	{r7, lr}
    1556:	b082      	sub	sp, #8
    1558:	af00      	add	r7, sp, #0
    155a:	6078      	str	r0, [r7, #4]
    155c:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    155e:	4a05      	ldr	r2, [pc, #20]	; (1574 <strtok+0x20>)
    1560:	6839      	ldr	r1, [r7, #0]
    1562:	6878      	ldr	r0, [r7, #4]
    1564:	f7ff ff9c 	bl	14a0 <strtok_r>
    1568:	4603      	mov	r3, r0
}
    156a:	4618      	mov	r0, r3
    156c:	3708      	adds	r7, #8
    156e:	46bd      	mov	sp, r7
    1570:	bd80      	pop	{r7, pc}
    1572:	bf00      	nop
    1574:	20000004 	.word	0x20000004

00001578 <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    1578:	b480      	push	{r7}
    157a:	b087      	sub	sp, #28
    157c:	af00      	add	r7, sp, #0
    157e:	60f8      	str	r0, [r7, #12]
    1580:	60b9      	str	r1, [r7, #8]
    1582:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    1584:	68fb      	ldr	r3, [r7, #12]
    1586:	2b00      	cmp	r3, #0
    1588:	d002      	beq.n	1590 <memcpy+0x18>
    158a:	68bb      	ldr	r3, [r7, #8]
    158c:	2b00      	cmp	r3, #0
    158e:	d101      	bne.n	1594 <memcpy+0x1c>
		return NULL;
    1590:	2300      	movs	r3, #0
    1592:	e012      	b.n	15ba <memcpy+0x42>
	char *tempDest = (char *)dest;
    1594:	68fb      	ldr	r3, [r7, #12]
    1596:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    1598:	68bb      	ldr	r3, [r7, #8]
    159a:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    159c:	e007      	b.n	15ae <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    159e:	693a      	ldr	r2, [r7, #16]
    15a0:	1c53      	adds	r3, r2, #1
    15a2:	613b      	str	r3, [r7, #16]
    15a4:	697b      	ldr	r3, [r7, #20]
    15a6:	1c59      	adds	r1, r3, #1
    15a8:	6179      	str	r1, [r7, #20]
    15aa:	7812      	ldrb	r2, [r2, #0]
    15ac:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    15ae:	687b      	ldr	r3, [r7, #4]
    15b0:	1e5a      	subs	r2, r3, #1
    15b2:	607a      	str	r2, [r7, #4]
    15b4:	2b00      	cmp	r3, #0
    15b6:	d1f2      	bne.n	159e <memcpy+0x26>
	return dest;	
    15b8:	68fb      	ldr	r3, [r7, #12]
}
    15ba:	4618      	mov	r0, r3
    15bc:	371c      	adds	r7, #28
    15be:	46bd      	mov	sp, r7
    15c0:	bc80      	pop	{r7}
    15c2:	4770      	bx	lr

000015c4 <memset>:
void *memset(void *s, int c, size_t n)
{
    15c4:	b480      	push	{r7}
    15c6:	b087      	sub	sp, #28
    15c8:	af00      	add	r7, sp, #0
    15ca:	60f8      	str	r0, [r7, #12]
    15cc:	60b9      	str	r1, [r7, #8]
    15ce:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    15d0:	68fb      	ldr	r3, [r7, #12]
    15d2:	2b00      	cmp	r3, #0
    15d4:	d101      	bne.n	15da <memset+0x16>
		return NULL;
    15d6:	2300      	movs	r3, #0
    15d8:	e00e      	b.n	15f8 <memset+0x34>
	char * tmpS = (char *)s;
    15da:	68fb      	ldr	r3, [r7, #12]
    15dc:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    15de:	e005      	b.n	15ec <memset+0x28>
		*tmpS++ = c;
    15e0:	697b      	ldr	r3, [r7, #20]
    15e2:	1c5a      	adds	r2, r3, #1
    15e4:	617a      	str	r2, [r7, #20]
    15e6:	68ba      	ldr	r2, [r7, #8]
    15e8:	b2d2      	uxtb	r2, r2
    15ea:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    15ec:	687b      	ldr	r3, [r7, #4]
    15ee:	1e5a      	subs	r2, r3, #1
    15f0:	607a      	str	r2, [r7, #4]
    15f2:	2b00      	cmp	r3, #0
    15f4:	d1f4      	bne.n	15e0 <memset+0x1c>
		return s; 
    15f6:	68fb      	ldr	r3, [r7, #12]
}
    15f8:	4618      	mov	r0, r3
    15fa:	371c      	adds	r7, #28
    15fc:	46bd      	mov	sp, r7
    15fe:	bc80      	pop	{r7}
    1600:	4770      	bx	lr

00001602 <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    1602:	b480      	push	{r7}
    1604:	b085      	sub	sp, #20
    1606:	af00      	add	r7, sp, #0
    1608:	6078      	str	r0, [r7, #4]
    160a:	6039      	str	r1, [r7, #0]
	int ret = 0;
    160c:	2300      	movs	r3, #0
    160e:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1610:	e005      	b.n	161e <strcmp+0x1c>
	{
		str1++;
    1612:	687b      	ldr	r3, [r7, #4]
    1614:	3301      	adds	r3, #1
    1616:	607b      	str	r3, [r7, #4]
		str2++;
    1618:	683b      	ldr	r3, [r7, #0]
    161a:	3301      	adds	r3, #1
    161c:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    161e:	687b      	ldr	r3, [r7, #4]
    1620:	781b      	ldrb	r3, [r3, #0]
    1622:	461a      	mov	r2, r3
    1624:	683b      	ldr	r3, [r7, #0]
    1626:	781b      	ldrb	r3, [r3, #0]
    1628:	1ad3      	subs	r3, r2, r3
    162a:	60fb      	str	r3, [r7, #12]
    162c:	68fb      	ldr	r3, [r7, #12]
    162e:	2b00      	cmp	r3, #0
    1630:	d103      	bne.n	163a <strcmp+0x38>
    1632:	687b      	ldr	r3, [r7, #4]
    1634:	781b      	ldrb	r3, [r3, #0]
    1636:	2b00      	cmp	r3, #0
    1638:	d1eb      	bne.n	1612 <strcmp+0x10>
	}
 
 
	if (ret < 0)
    163a:	68fb      	ldr	r3, [r7, #12]
    163c:	2b00      	cmp	r3, #0
    163e:	da02      	bge.n	1646 <strcmp+0x44>
	{
		return -1;
    1640:	f04f 33ff 	mov.w	r3, #4294967295
    1644:	e005      	b.n	1652 <strcmp+0x50>
	}
	else if (ret > 0)
    1646:	68fb      	ldr	r3, [r7, #12]
    1648:	2b00      	cmp	r3, #0
    164a:	dd01      	ble.n	1650 <strcmp+0x4e>
	{
		return 1;
    164c:	2301      	movs	r3, #1
    164e:	e000      	b.n	1652 <strcmp+0x50>
	}
	return 0;
    1650:	2300      	movs	r3, #0
}
    1652:	4618      	mov	r0, r3
    1654:	3714      	adds	r7, #20
    1656:	46bd      	mov	sp, r7
    1658:	bc80      	pop	{r7}
    165a:	4770      	bx	lr

0000165c <shell_main>:
#endif
void shell_main(void)
{
    165c:	b580      	push	{r7, lr}
    165e:	b0c2      	sub	sp, #264	; 0x108
    1660:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    1662:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1666:	2280      	movs	r2, #128	; 0x80
    1668:	2100      	movs	r1, #0
    166a:	4618      	mov	r0, r3
    166c:	f7ff ffaa 	bl	15c4 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    1670:	463b      	mov	r3, r7
    1672:	4618      	mov	r0, r3
    1674:	2380      	movs	r3, #128	; 0x80
    1676:	461a      	mov	r2, r3
    1678:	2100      	movs	r1, #0
    167a:	f7ff ffa3 	bl	15c4 <memset>

    uint8_t args_count = 0;
    167e:	2300      	movs	r3, #0
    1680:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1684:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1688:	2180      	movs	r1, #128	; 0x80
    168a:	4618      	mov	r0, r3
    168c:	f7ff fe62 	bl	1354 <shell_get_line>
    1690:	4603      	mov	r3, r0
    1692:	2b00      	cmp	r3, #0
    1694:	d0f6      	beq.n	1684 <shell_main+0x28>
        {
            printf("\n");
    1696:	4827      	ldr	r0, [pc, #156]	; (1734 <shell_main+0xd8>)
    1698:	f7ff fdbb 	bl	1212 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    169c:	4639      	mov	r1, r7
    169e:	f107 0380 	add.w	r3, r7, #128	; 0x80
    16a2:	2220      	movs	r2, #32
    16a4:	4618      	mov	r0, r3
    16a6:	f7ff fea7 	bl	13f8 <shell_get_args>
    16aa:	4603      	mov	r3, r0
    16ac:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    16b0:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    16b4:	2b00      	cmp	r3, #0
    16b6:	d033      	beq.n	1720 <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    16b8:	4b1f      	ldr	r3, [pc, #124]	; (1738 <shell_main+0xdc>)
    16ba:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    16be:	e02a      	b.n	1716 <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    16c0:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    16c4:	681a      	ldr	r2, [r3, #0]
    16c6:	463b      	mov	r3, r7
    16c8:	681b      	ldr	r3, [r3, #0]
    16ca:	4619      	mov	r1, r3
    16cc:	4610      	mov	r0, r2
    16ce:	f7ff ff98 	bl	1602 <strcmp>
    16d2:	4603      	mov	r3, r0
    16d4:	2b00      	cmp	r3, #0
    16d6:	d10a      	bne.n	16ee <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    16d8:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    16dc:	689b      	ldr	r3, [r3, #8]
    16de:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    16e2:	1e50      	subs	r0, r2, #1
    16e4:	463a      	mov	r2, r7
    16e6:	3204      	adds	r2, #4
    16e8:	4611      	mov	r1, r2
    16ea:	4798      	blx	r3
    16ec:	e00e      	b.n	170c <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    16ee:	463b      	mov	r3, r7
    16f0:	681b      	ldr	r3, [r3, #0]
    16f2:	4619      	mov	r1, r3
    16f4:	4811      	ldr	r0, [pc, #68]	; (173c <shell_main+0xe0>)
    16f6:	f7ff ff84 	bl	1602 <strcmp>
    16fa:	4603      	mov	r3, r0
    16fc:	2b00      	cmp	r3, #0
    16fe:	d013      	beq.n	1728 <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1700:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1704:	4619      	mov	r1, r3
    1706:	480e      	ldr	r0, [pc, #56]	; (1740 <shell_main+0xe4>)
    1708:	f7ff fd83 	bl	1212 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    170c:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1710:	330c      	adds	r3, #12
    1712:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    1716:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    171a:	4a0a      	ldr	r2, [pc, #40]	; (1744 <shell_main+0xe8>)
    171c:	4293      	cmp	r3, r2
    171e:	d3cf      	bcc.n	16c0 <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1720:	4809      	ldr	r0, [pc, #36]	; (1748 <shell_main+0xec>)
    1722:	f7ff fd76 	bl	1212 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1726:	e7ad      	b.n	1684 <shell_main+0x28>
                        return;
    1728:	bf00      	nop
        }
    }
    return;
}
    172a:	f507 7784 	add.w	r7, r7, #264	; 0x108
    172e:	46bd      	mov	sp, r7
    1730:	bd80      	pop	{r7, pc}
    1732:	bf00      	nop
    1734:	00001fb8 	.word	0x00001fb8
    1738:	00001e9c 	.word	0x00001e9c
    173c:	00001fbc 	.word	0x00001fbc
    1740:	00001fc4 	.word	0x00001fc4
    1744:	00002b64 	.word	0x00002b64
    1748:	00001fe0 	.word	0x00001fe0

0000174c <shell_start>:

void shell_start(void)
{
    174c:	b580      	push	{r7, lr}
    174e:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    1750:	f7ff ff84 	bl	165c <shell_main>
    1754:	bf00      	nop
    1756:	bd80      	pop	{r7, pc}

00001758 <test_div>:
#include <stdint.h>
#include "hal_log.h"
#include "backtrace.h"
#include "hal_platform.h"
int test_div(void)
{
    1758:	b480      	push	{r7}
    175a:	b085      	sub	sp, #20
    175c:	af00      	add	r7, sp, #0
    // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    // SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;

    int a = 1;
    175e:	2301      	movs	r3, #1
    1760:	60fb      	str	r3, [r7, #12]
    int b = 0;
    1762:	2300      	movs	r3, #0
    1764:	60bb      	str	r3, [r7, #8]
    int z = a / b;
    1766:	68fa      	ldr	r2, [r7, #12]
    1768:	68bb      	ldr	r3, [r7, #8]
    176a:	fb92 f3f3 	sdiv	r3, r2, r3
    176e:	607b      	str	r3, [r7, #4]

    return z;
    1770:	687b      	ldr	r3, [r7, #4]
}
    1772:	4618      	mov	r0, r3
    1774:	3714      	adds	r7, #20
    1776:	46bd      	mov	sp, r7
    1778:	bc80      	pop	{r7}
    177a:	4770      	bx	lr

0000177c <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
    177c:	b580      	push	{r7, lr}
    177e:	b084      	sub	sp, #16
    1780:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    1782:	4b16      	ldr	r3, [pc, #88]	; (17dc <fault_test_by_unalign+0x60>)
    1784:	60fb      	str	r3, [r7, #12]
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
    1786:	68fb      	ldr	r3, [r7, #12]
    1788:	681b      	ldr	r3, [r3, #0]
    178a:	f043 0208 	orr.w	r2, r3, #8
    178e:	68fb      	ldr	r3, [r7, #12]
    1790:	601a      	str	r2, [r3, #0]

    p = (int *) 0x00;
    1792:	2300      	movs	r3, #0
    1794:	60bb      	str	r3, [r7, #8]
    value = *p;
    1796:	68bb      	ldr	r3, [r7, #8]
    1798:	681b      	ldr	r3, [r3, #0]
    179a:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    179c:	68bb      	ldr	r3, [r7, #8]
    179e:	687a      	ldr	r2, [r7, #4]
    17a0:	4619      	mov	r1, r3
    17a2:	480f      	ldr	r0, [pc, #60]	; (17e0 <fault_test_by_unalign+0x64>)
    17a4:	f7ff fd35 	bl	1212 <printf_>

    p = (int *) 0x04;
    17a8:	2304      	movs	r3, #4
    17aa:	60bb      	str	r3, [r7, #8]
    value = *p;
    17ac:	68bb      	ldr	r3, [r7, #8]
    17ae:	681b      	ldr	r3, [r3, #0]
    17b0:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    17b2:	68bb      	ldr	r3, [r7, #8]
    17b4:	687a      	ldr	r2, [r7, #4]
    17b6:	4619      	mov	r1, r3
    17b8:	4809      	ldr	r0, [pc, #36]	; (17e0 <fault_test_by_unalign+0x64>)
    17ba:	f7ff fd2a 	bl	1212 <printf_>

    p = (int *) 0x03;
    17be:	2303      	movs	r3, #3
    17c0:	60bb      	str	r3, [r7, #8]
    value = *p;
    17c2:	68bb      	ldr	r3, [r7, #8]
    17c4:	681b      	ldr	r3, [r3, #0]
    17c6:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    17c8:	68bb      	ldr	r3, [r7, #8]
    17ca:	687a      	ldr	r2, [r7, #4]
    17cc:	4619      	mov	r1, r3
    17ce:	4804      	ldr	r0, [pc, #16]	; (17e0 <fault_test_by_unalign+0x64>)
    17d0:	f7ff fd1f 	bl	1212 <printf_>
}
    17d4:	bf00      	nop
    17d6:	3710      	adds	r7, #16
    17d8:	46bd      	mov	sp, r7
    17da:	bd80      	pop	{r7, pc}
    17dc:	e000ed14 	.word	0xe000ed14
    17e0:	00001fe8 	.word	0x00001fe8

000017e4 <fault_test_by_div0>:

void fault_test_by_div0(void) {
    17e4:	b580      	push	{r7, lr}
    17e6:	b084      	sub	sp, #16
    17e8:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    17ea:	4b0c      	ldr	r3, [pc, #48]	; (181c <fault_test_by_div0+0x38>)
    17ec:	60fb      	str	r3, [r7, #12]
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
    17ee:	68fb      	ldr	r3, [r7, #12]
    17f0:	681b      	ldr	r3, [r3, #0]
    17f2:	f043 0210 	orr.w	r2, r3, #16
    17f6:	68fb      	ldr	r3, [r7, #12]
    17f8:	601a      	str	r2, [r3, #0]

    x = 10;
    17fa:	230a      	movs	r3, #10
    17fc:	60bb      	str	r3, [r7, #8]
    y = 0;
    17fe:	2300      	movs	r3, #0
    1800:	607b      	str	r3, [r7, #4]
    z = x / y;
    1802:	68ba      	ldr	r2, [r7, #8]
    1804:	687b      	ldr	r3, [r7, #4]
    1806:	fb92 f3f3 	sdiv	r3, r2, r3
    180a:	603b      	str	r3, [r7, #0]
    printf("z:%d\n", z);
    180c:	6839      	ldr	r1, [r7, #0]
    180e:	4804      	ldr	r0, [pc, #16]	; (1820 <fault_test_by_div0+0x3c>)
    1810:	f7ff fcff 	bl	1212 <printf_>
}
    1814:	bf00      	nop
    1816:	3710      	adds	r7, #16
    1818:	46bd      	mov	sp, r7
    181a:	bd80      	pop	{r7, pc}
    181c:	e000ed14 	.word	0xe000ed14
    1820:	00002000 	.word	0x00002000

00001824 <dump_stack>:
extern const uint32_t _eheap;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    1824:	b580      	push	{r7, lr}
    1826:	b084      	sub	sp, #16
    1828:	af00      	add	r7, sp, #0
    182a:	60f8      	str	r0, [r7, #12]
    182c:	60b9      	str	r1, [r7, #8]
    182e:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
    1830:	687b      	ldr	r3, [r7, #4]
    1832:	68fa      	ldr	r2, [r7, #12]
    1834:	429a      	cmp	r2, r3
    1836:	d902      	bls.n	183e <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
    1838:	68fb      	ldr	r3, [r7, #12]
    183a:	607b      	str	r3, [r7, #4]
    183c:	e014      	b.n	1868 <dump_stack+0x44>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
    183e:	68fa      	ldr	r2, [r7, #12]
    1840:	68bb      	ldr	r3, [r7, #8]
    1842:	441a      	add	r2, r3
    1844:	687b      	ldr	r3, [r7, #4]
    1846:	429a      	cmp	r2, r3
    1848:	d20e      	bcs.n	1868 <dump_stack+0x44>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    184a:	68fa      	ldr	r2, [r7, #12]
    184c:	68bb      	ldr	r3, [r7, #8]
    184e:	4413      	add	r3, r2
    1850:	607b      	str	r3, [r7, #4]
    }

    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1852:	e009      	b.n	1868 <dump_stack+0x44>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    1854:	6879      	ldr	r1, [r7, #4]
    1856:	687b      	ldr	r3, [r7, #4]
    1858:	681b      	ldr	r3, [r3, #0]
    185a:	461a      	mov	r2, r3
    185c:	4809      	ldr	r0, [pc, #36]	; (1884 <dump_stack+0x60>)
    185e:	f7ff fcd8 	bl	1212 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    1862:	687b      	ldr	r3, [r7, #4]
    1864:	3304      	adds	r3, #4
    1866:	607b      	str	r3, [r7, #4]
    1868:	68fa      	ldr	r2, [r7, #12]
    186a:	68bb      	ldr	r3, [r7, #8]
    186c:	441a      	add	r2, r3
    186e:	687b      	ldr	r3, [r7, #4]
    1870:	429a      	cmp	r2, r3
    1872:	d8ef      	bhi.n	1854 <dump_stack+0x30>
    }
    printf("====================================\n");
    1874:	4804      	ldr	r0, [pc, #16]	; (1888 <dump_stack+0x64>)
    1876:	f7ff fccc 	bl	1212 <printf_>
}
    187a:	bf00      	nop
    187c:	3710      	adds	r7, #16
    187e:	46bd      	mov	sp, r7
    1880:	bd80      	pop	{r7, pc}
    1882:	bf00      	nop
    1884:	00002008 	.word	0x00002008
    1888:	00002028 	.word	0x00002028

0000188c <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
    static bool stack_is_overflow = false;
    static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    188c:	b480      	push	{r7}
    188e:	b085      	sub	sp, #20
    1890:	af00      	add	r7, sp, #0
    1892:	6078      	str	r0, [r7, #4]
        uint16_t ins1 = *((uint16_t *)addr);
    1894:	687b      	ldr	r3, [r7, #4]
    1896:	881b      	ldrh	r3, [r3, #0]
    1898:	81fb      	strh	r3, [r7, #14]
        uint16_t ins2 = *((uint16_t *)(addr + 2));
    189a:	687b      	ldr	r3, [r7, #4]
    189c:	3302      	adds	r3, #2
    189e:	881b      	ldrh	r3, [r3, #0]
    18a0:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

        if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
    18a2:	89bb      	ldrh	r3, [r7, #12]
    18a4:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    18a8:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
    18ac:	d107      	bne.n	18be <disassembly_ins_is_bl_blx+0x32>
    18ae:	89fb      	ldrh	r3, [r7, #14]
    18b0:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    18b4:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
    18b8:	d101      	bne.n	18be <disassembly_ins_is_bl_blx+0x32>
            return true;
    18ba:	2301      	movs	r3, #1
    18bc:	e008      	b.n	18d0 <disassembly_ins_is_bl_blx+0x44>
        } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
    18be:	89bb      	ldrh	r3, [r7, #12]
    18c0:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    18c4:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    18c8:	d101      	bne.n	18ce <disassembly_ins_is_bl_blx+0x42>
            return true;
    18ca:	2301      	movs	r3, #1
    18cc:	e000      	b.n	18d0 <disassembly_ins_is_bl_blx+0x44>
        } else {
            return false;
    18ce:	2300      	movs	r3, #0
        }
    }
    18d0:	4618      	mov	r0, r3
    18d2:	3714      	adds	r7, #20
    18d4:	46bd      	mov	sp, r7
    18d6:	bc80      	pop	{r7}
    18d8:	4770      	bx	lr

000018da <cm_backtrace_call_stack>:
     * @param size buffer size
     * @param sp stack pointer
     *
     * @return depth
     */
    size_t cm_backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    18da:	b580      	push	{r7, lr}
    18dc:	b08a      	sub	sp, #40	; 0x28
    18de:	af02      	add	r7, sp, #8
    18e0:	60f8      	str	r0, [r7, #12]
    18e2:	60b9      	str	r1, [r7, #8]
    18e4:	607a      	str	r2, [r7, #4]
        uint32_t pc;
        uint32_t lr;
        size_t depth = 0;
    18e6:	2300      	movs	r3, #0
    18e8:	61fb      	str	r3, [r7, #28]
        bool regs_saved_lr_is_valid = false;
    18ea:	2300      	movs	r3, #0
    18ec:	76fb      	strb	r3, [r7, #27]
  2. LR'的值lsb为1
  3. LR' - 4处的指令是bl或者blx指令
*/

//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    18ee:	e04e      	b.n	198e <cm_backtrace_call_stack+0xb4>

        当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
        当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
        最低位为1表示thumb模式，9d1表示地址9d0
    */
    lr = *((uint32_t *) sp);
    18f0:	687b      	ldr	r3, [r7, #4]
    18f2:	681b      	ldr	r3, [r3, #0]
    18f4:	617b      	str	r3, [r7, #20]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
    18f6:	697b      	ldr	r3, [r7, #20]
    18f8:	f003 0301 	and.w	r3, r3, #1
    18fc:	2b00      	cmp	r3, #0
    18fe:	d040      	beq.n	1982 <cm_backtrace_call_stack+0xa8>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
    1900:	697b      	ldr	r3, [r7, #20]
    1902:	3b01      	subs	r3, #1
    1904:	617b      	str	r3, [r7, #20]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
    1906:	4b28      	ldr	r3, [pc, #160]	; (19a8 <cm_backtrace_call_stack+0xce>)
    1908:	681b      	ldr	r3, [r3, #0]
    190a:	697a      	ldr	r2, [r7, #20]
    190c:	429a      	cmp	r2, r3
    190e:	d33b      	bcc.n	1988 <cm_backtrace_call_stack+0xae>
    1910:	4b25      	ldr	r3, [pc, #148]	; (19a8 <cm_backtrace_call_stack+0xce>)
    1912:	681a      	ldr	r2, [r3, #0]
    1914:	4b25      	ldr	r3, [pc, #148]	; (19ac <cm_backtrace_call_stack+0xd2>)
    1916:	681b      	ldr	r3, [r3, #0]
    1918:	4413      	add	r3, r2
    191a:	697a      	ldr	r2, [r7, #20]
    191c:	429a      	cmp	r2, r3
    191e:	d833      	bhi.n	1988 <cm_backtrace_call_stack+0xae>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
    1920:	697b      	ldr	r3, [r7, #20]
    1922:	3b04      	subs	r3, #4
    1924:	4618      	mov	r0, r3
    1926:	f7ff ffb1 	bl	188c <disassembly_ins_is_bl_blx>
    192a:	4603      	mov	r3, r0
    192c:	2b00      	cmp	r3, #0
    192e:	d02b      	beq.n	1988 <cm_backtrace_call_stack+0xae>
    1930:	69fa      	ldr	r2, [r7, #28]
    1932:	68bb      	ldr	r3, [r7, #8]
    1934:	429a      	cmp	r2, r3
    1936:	d227      	bcs.n	1988 <cm_backtrace_call_stack+0xae>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
    1938:	69fb      	ldr	r3, [r7, #28]
    193a:	2b02      	cmp	r3, #2
    193c:	d108      	bne.n	1950 <cm_backtrace_call_stack+0x76>
    193e:	7efb      	ldrb	r3, [r7, #27]
    1940:	2b00      	cmp	r3, #0
    1942:	d005      	beq.n	1950 <cm_backtrace_call_stack+0x76>
    1944:	68fb      	ldr	r3, [r7, #12]
    1946:	3304      	adds	r3, #4
    1948:	681b      	ldr	r3, [r3, #0]
    194a:	697a      	ldr	r2, [r7, #20]
    194c:	429a      	cmp	r2, r3
    194e:	d01a      	beq.n	1986 <cm_backtrace_call_stack+0xac>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1950:	697b      	ldr	r3, [r7, #20]
    1952:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1954:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1956:	697b      	ldr	r3, [r7, #20]
    1958:	3b04      	subs	r3, #4
    195a:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    195c:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    195e:	697b      	ldr	r3, [r7, #20]
    1960:	3b02      	subs	r3, #2
    1962:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1964:	9300      	str	r3, [sp, #0]
    1966:	460b      	mov	r3, r1
    1968:	6979      	ldr	r1, [r7, #20]
    196a:	4811      	ldr	r0, [pc, #68]	; (19b0 <cm_backtrace_call_stack+0xd6>)
    196c:	f7ff fc51 	bl	1212 <printf_>
             buffer[depth++] = lr;
    1970:	69fb      	ldr	r3, [r7, #28]
    1972:	1c5a      	adds	r2, r3, #1
    1974:	61fa      	str	r2, [r7, #28]
    1976:	009b      	lsls	r3, r3, #2
    1978:	68fa      	ldr	r2, [r7, #12]
    197a:	4413      	add	r3, r2
    197c:	697a      	ldr	r2, [r7, #20]
    197e:	601a      	str	r2, [r3, #0]
    1980:	e002      	b.n	1988 <cm_backtrace_call_stack+0xae>
        continue;
    1982:	bf00      	nop
    1984:	e000      	b.n	1988 <cm_backtrace_call_stack+0xae>
            continue;
    1986:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1988:	687b      	ldr	r3, [r7, #4]
    198a:	3304      	adds	r3, #4
    198c:	607b      	str	r3, [r7, #4]
    198e:	4b09      	ldr	r3, [pc, #36]	; (19b4 <cm_backtrace_call_stack+0xda>)
    1990:	681a      	ldr	r2, [r3, #0]
    1992:	4b09      	ldr	r3, [pc, #36]	; (19b8 <cm_backtrace_call_stack+0xde>)
    1994:	681b      	ldr	r3, [r3, #0]
    1996:	4413      	add	r3, r2
    1998:	687a      	ldr	r2, [r7, #4]
    199a:	429a      	cmp	r2, r3
    199c:	d3a8      	bcc.n	18f0 <cm_backtrace_call_stack+0x16>
    }
}

return depth;
    199e:	69fb      	ldr	r3, [r7, #28]
    }
    19a0:	4618      	mov	r0, r3
    19a2:	3720      	adds	r7, #32
    19a4:	46bd      	mov	sp, r7
    19a6:	bd80      	pop	{r7, pc}
    19a8:	20000008 	.word	0x20000008
    19ac:	20000010 	.word	0x20000010
    19b0:	00002944 	.word	0x00002944
    19b4:	20000014 	.word	0x20000014
    19b8:	2000001c 	.word	0x2000001c

000019bc <print_call_stack>:

    static void print_call_stack(uint32_t sp) {
    19bc:	b580      	push	{r7, lr}
    19be:	b096      	sub	sp, #88	; 0x58
    19c0:	af02      	add	r7, sp, #8
    19c2:	6078      	str	r0, [r7, #4]
        size_t i, cur_depth = 0;
    19c4:	2300      	movs	r3, #0
    19c6:	64bb      	str	r3, [r7, #72]	; 0x48
        uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
    19c8:	f107 0308 	add.w	r3, r7, #8
    19cc:	2240      	movs	r2, #64	; 0x40
    19ce:	2100      	movs	r1, #0
    19d0:	4618      	mov	r0, r3
    19d2:	f7ff fdf7 	bl	15c4 <memset>

        cur_depth = cm_backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
    19d6:	f107 0308 	add.w	r3, r7, #8
    19da:	687a      	ldr	r2, [r7, #4]
    19dc:	2110      	movs	r1, #16
    19de:	4618      	mov	r0, r3
    19e0:	f7ff ff7b 	bl	18da <cm_backtrace_call_stack>
    19e4:	64b8      	str	r0, [r7, #72]	; 0x48

        for (i = 0; i < cur_depth; i++) {
    19e6:	2300      	movs	r3, #0
    19e8:	64fb      	str	r3, [r7, #76]	; 0x4c
    19ea:	e01b      	b.n	1a24 <print_call_stack+0x68>
            sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
    19ec:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    19ee:	4613      	mov	r3, r2
    19f0:	00db      	lsls	r3, r3, #3
    19f2:	4413      	add	r3, r2
    19f4:	4a1c      	ldr	r2, [pc, #112]	; (1a68 <print_call_stack+0xac>)
    19f6:	1898      	adds	r0, r3, r2
    19f8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    19fa:	009b      	lsls	r3, r3, #2
    19fc:	f107 0250 	add.w	r2, r7, #80	; 0x50
    1a00:	4413      	add	r3, r2
    1a02:	f853 3c48 	ldr.w	r3, [r3, #-72]
    1a06:	461a      	mov	r2, r3
    1a08:	4918      	ldr	r1, [pc, #96]	; (1a6c <print_call_stack+0xb0>)
    1a0a:	f7ff fc1d 	bl	1248 <sprintf_>
            call_stack_info[i * (8 + 1) + 8] = ' ';
    1a0e:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1a10:	4613      	mov	r3, r2
    1a12:	00db      	lsls	r3, r3, #3
    1a14:	4413      	add	r3, r2
    1a16:	3308      	adds	r3, #8
    1a18:	4a13      	ldr	r2, [pc, #76]	; (1a68 <print_call_stack+0xac>)
    1a1a:	2120      	movs	r1, #32
    1a1c:	54d1      	strb	r1, [r2, r3]
        for (i = 0; i < cur_depth; i++) {
    1a1e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1a20:	3301      	adds	r3, #1
    1a22:	64fb      	str	r3, [r7, #76]	; 0x4c
    1a24:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1a26:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1a28:	429a      	cmp	r2, r3
    1a2a:	d3df      	bcc.n	19ec <print_call_stack+0x30>
        }

        if (cur_depth) {
    1a2c:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1a2e:	2b00      	cmp	r3, #0
    1a30:	d00f      	beq.n	1a52 <print_call_stack+0x96>
            cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
    1a32:	480f      	ldr	r0, [pc, #60]	; (1a70 <print_call_stack+0xb4>)
    1a34:	6cba      	ldr	r2, [r7, #72]	; 0x48
    1a36:	4613      	mov	r3, r2
    1a38:	00db      	lsls	r3, r3, #3
    1a3a:	441a      	add	r2, r3
    1a3c:	4b0a      	ldr	r3, [pc, #40]	; (1a68 <print_call_stack+0xac>)
    1a3e:	9300      	str	r3, [sp, #0]
    1a40:	4613      	mov	r3, r2
    1a42:	4a0c      	ldr	r2, [pc, #48]	; (1a74 <print_call_stack+0xb8>)
    1a44:	490c      	ldr	r1, [pc, #48]	; (1a78 <print_call_stack+0xbc>)
    1a46:	f7ff fbe4 	bl	1212 <printf_>
    1a4a:	480c      	ldr	r0, [pc, #48]	; (1a7c <print_call_stack+0xc0>)
    1a4c:	f7ff fbe1 	bl	1212 <printf_>
                        call_stack_info);
        } else {
            cmb_println(print_info[PRINT_CALL_STACK_ERR]);
        }
    }
    1a50:	e006      	b.n	1a60 <print_call_stack+0xa4>
            cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    1a52:	4b0b      	ldr	r3, [pc, #44]	; (1a80 <print_call_stack+0xc4>)
    1a54:	4618      	mov	r0, r3
    1a56:	f7ff fbdc 	bl	1212 <printf_>
    1a5a:	4808      	ldr	r0, [pc, #32]	; (1a7c <print_call_stack+0xc0>)
    1a5c:	f7ff fbd9 	bl	1212 <printf_>
    }
    1a60:	bf00      	nop
    1a62:	3750      	adds	r7, #80	; 0x50
    1a64:	46bd      	mov	sp, r7
    1a66:	bd80      	pop	{r7, pc}
    1a68:	2000002c 	.word	0x2000002c
    1a6c:	00002988 	.word	0x00002988
    1a70:	000021e0 	.word	0x000021e0
    1a74:	00002990 	.word	0x00002990
    1a78:	00002998 	.word	0x00002998
    1a7c:	000029a8 	.word	0x000029a8
    1a80:	00002220 	.word	0x00002220

00001a84 <backtrace_level_3>:
    void BackTraceSub(unsigned long sp);
    void backtrace_level_3(void)
    {
    1a84:	b598      	push	{r3, r4, r7, lr}
    1a86:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
    1a88:	490f      	ldr	r1, [pc, #60]	; (1ac8 <backtrace_level_3+0x44>)
    1a8a:	4810      	ldr	r0, [pc, #64]	; (1acc <backtrace_level_3+0x48>)
    1a8c:	f7ff fbc1 	bl	1212 <printf_>
        dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
    1a90:	4b0f      	ldr	r3, [pc, #60]	; (1ad0 <backtrace_level_3+0x4c>)
    1a92:	6818      	ldr	r0, [r3, #0]
    1a94:	4b0f      	ldr	r3, [pc, #60]	; (1ad4 <backtrace_level_3+0x50>)
    1a96:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1a98:	466a      	mov	r2, sp
    1a9a:	4614      	mov	r4, r2
    return(result);
    1a9c:	4622      	mov	r2, r4
    1a9e:	4619      	mov	r1, r3
    1aa0:	f7ff fec0 	bl	1824 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1aa4:	466b      	mov	r3, sp
    1aa6:	461c      	mov	r4, r3
    return(result);
    1aa8:	4623      	mov	r3, r4

        print_call_stack(cmb_get_sp());
    1aaa:	4618      	mov	r0, r3
    1aac:	f7ff ff86 	bl	19bc <print_call_stack>
        printf("======================\n");
    1ab0:	4809      	ldr	r0, [pc, #36]	; (1ad8 <backtrace_level_3+0x54>)
    1ab2:	f7ff fbae 	bl	1212 <printf_>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1ab6:	466b      	mov	r3, sp
    1ab8:	461c      	mov	r4, r3
    return(result);
    1aba:	4623      	mov	r3, r4
        BackTraceSub(cmb_get_sp());
    1abc:	4618      	mov	r0, r3
    1abe:	f000 f98f 	bl	1de0 <BackTraceSub>
    }
    1ac2:	bf00      	nop
    1ac4:	bd98      	pop	{r3, r4, r7, pc}
    1ac6:	bf00      	nop
    1ac8:	00002b0c 	.word	0x00002b0c
    1acc:	000029ac 	.word	0x000029ac
    1ad0:	20000014 	.word	0x20000014
    1ad4:	2000001c 	.word	0x2000001c
    1ad8:	000029b4 	.word	0x000029b4

00001adc <backtrace_level_2>:
    void backtrace_level_2(void)
    {
    1adc:	b580      	push	{r7, lr}
    1ade:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
    1ae0:	4903      	ldr	r1, [pc, #12]	; (1af0 <backtrace_level_2+0x14>)
    1ae2:	4804      	ldr	r0, [pc, #16]	; (1af4 <backtrace_level_2+0x18>)
    1ae4:	f7ff fb95 	bl	1212 <printf_>
        backtrace_level_3();
    1ae8:	f7ff ffcc 	bl	1a84 <backtrace_level_3>
    }
    1aec:	bf00      	nop
    1aee:	bd80      	pop	{r7, pc}
    1af0:	00002b20 	.word	0x00002b20
    1af4:	000029ac 	.word	0x000029ac

00001af8 <backtrace_level_1>:
    void backtrace_level_1(void)
    {
    1af8:	b580      	push	{r7, lr}
    1afa:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
    1afc:	4903      	ldr	r1, [pc, #12]	; (1b0c <backtrace_level_1+0x14>)
    1afe:	4804      	ldr	r0, [pc, #16]	; (1b10 <backtrace_level_1+0x18>)
    1b00:	f7ff fb87 	bl	1212 <printf_>
        backtrace_level_2();
    1b04:	f7ff ffea 	bl	1adc <backtrace_level_2>
    }
    1b08:	bf00      	nop
    1b0a:	bd80      	pop	{r7, pc}
    1b0c:	00002b34 	.word	0x00002b34
    1b10:	000029ac 	.word	0x000029ac

00001b14 <backtrace_test>:
    void backtrace_test(void)
    {
    1b14:	b590      	push	{r4, r7, lr}
    1b16:	b089      	sub	sp, #36	; 0x24
    1b18:	af02      	add	r7, sp, #8
        int bt1 = 0xAA;
    1b1a:	23aa      	movs	r3, #170	; 0xaa
    1b1c:	613b      	str	r3, [r7, #16]
        int bt2 = 0x55;
    1b1e:	2355      	movs	r3, #85	; 0x55
    1b20:	60fb      	str	r3, [r7, #12]
        int bt3 = 0x77;
    1b22:	2377      	movs	r3, #119	; 0x77
    1b24:	60bb      	str	r3, [r7, #8]
        (void)bt1;
        (void)bt2;
        (void)bt3;

        code_start_addr = (uint32_t)&_stext;
    1b26:	4a42      	ldr	r2, [pc, #264]	; (1c30 <backtrace_test+0x11c>)
    1b28:	4b42      	ldr	r3, [pc, #264]	; (1c34 <backtrace_test+0x120>)
    1b2a:	601a      	str	r2, [r3, #0]
        code_end_addr = (uint32_t)&_etext;
    1b2c:	4a42      	ldr	r2, [pc, #264]	; (1c38 <backtrace_test+0x124>)
    1b2e:	4b43      	ldr	r3, [pc, #268]	; (1c3c <backtrace_test+0x128>)
    1b30:	601a      	str	r2, [r3, #0]
        code_size = code_end_addr - code_start_addr;
    1b32:	4b42      	ldr	r3, [pc, #264]	; (1c3c <backtrace_test+0x128>)
    1b34:	681a      	ldr	r2, [r3, #0]
    1b36:	4b3f      	ldr	r3, [pc, #252]	; (1c34 <backtrace_test+0x120>)
    1b38:	681b      	ldr	r3, [r3, #0]
    1b3a:	1ad3      	subs	r3, r2, r3
    1b3c:	4a40      	ldr	r2, [pc, #256]	; (1c40 <backtrace_test+0x12c>)
    1b3e:	6013      	str	r3, [r2, #0]
        stack_start_addr = (uint32_t)&_sstack;
    1b40:	4a40      	ldr	r2, [pc, #256]	; (1c44 <backtrace_test+0x130>)
    1b42:	4b41      	ldr	r3, [pc, #260]	; (1c48 <backtrace_test+0x134>)
    1b44:	601a      	str	r2, [r3, #0]
        stack_end_addr = (uint32_t)&_estack;
    1b46:	4a41      	ldr	r2, [pc, #260]	; (1c4c <backtrace_test+0x138>)
    1b48:	4b41      	ldr	r3, [pc, #260]	; (1c50 <backtrace_test+0x13c>)
    1b4a:	601a      	str	r2, [r3, #0]
        stack_size = stack_end_addr - stack_start_addr;
    1b4c:	4b40      	ldr	r3, [pc, #256]	; (1c50 <backtrace_test+0x13c>)
    1b4e:	681a      	ldr	r2, [r3, #0]
    1b50:	4b3d      	ldr	r3, [pc, #244]	; (1c48 <backtrace_test+0x134>)
    1b52:	681b      	ldr	r3, [r3, #0]
    1b54:	1ad3      	subs	r3, r2, r3
    1b56:	4a3f      	ldr	r2, [pc, #252]	; (1c54 <backtrace_test+0x140>)
    1b58:	6013      	str	r3, [r2, #0]
        heap_start_addr = (uint32_t)&_sheap;
    1b5a:	4a3f      	ldr	r2, [pc, #252]	; (1c58 <backtrace_test+0x144>)
    1b5c:	4b3f      	ldr	r3, [pc, #252]	; (1c5c <backtrace_test+0x148>)
    1b5e:	601a      	str	r2, [r3, #0]
        heap_end_addr = (uint32_t)&_eheap;
    1b60:	4a3f      	ldr	r2, [pc, #252]	; (1c60 <backtrace_test+0x14c>)
    1b62:	4b40      	ldr	r3, [pc, #256]	; (1c64 <backtrace_test+0x150>)
    1b64:	601a      	str	r2, [r3, #0]
        heap_size = heap_end_addr - heap_start_addr;
    1b66:	4b3f      	ldr	r3, [pc, #252]	; (1c64 <backtrace_test+0x150>)
    1b68:	681a      	ldr	r2, [r3, #0]
    1b6a:	4b3c      	ldr	r3, [pc, #240]	; (1c5c <backtrace_test+0x148>)
    1b6c:	681b      	ldr	r3, [r3, #0]
    1b6e:	1ad3      	subs	r3, r2, r3
    1b70:	4a3d      	ldr	r2, [pc, #244]	; (1c68 <backtrace_test+0x154>)
    1b72:	6013      	str	r3, [r2, #0]
        printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
    1b74:	4b2f      	ldr	r3, [pc, #188]	; (1c34 <backtrace_test+0x120>)
    1b76:	6819      	ldr	r1, [r3, #0]
    1b78:	4b30      	ldr	r3, [pc, #192]	; (1c3c <backtrace_test+0x128>)
    1b7a:	6818      	ldr	r0, [r3, #0]
    1b7c:	4b30      	ldr	r3, [pc, #192]	; (1c40 <backtrace_test+0x12c>)
    1b7e:	681b      	ldr	r3, [r3, #0]
    1b80:	4a2f      	ldr	r2, [pc, #188]	; (1c40 <backtrace_test+0x12c>)
    1b82:	6812      	ldr	r2, [r2, #0]
    1b84:	9201      	str	r2, [sp, #4]
    1b86:	9300      	str	r3, [sp, #0]
    1b88:	4603      	mov	r3, r0
    1b8a:	460a      	mov	r2, r1
    1b8c:	4937      	ldr	r1, [pc, #220]	; (1c6c <backtrace_test+0x158>)
    1b8e:	4838      	ldr	r0, [pc, #224]	; (1c70 <backtrace_test+0x15c>)
    1b90:	f7ff fb3f 	bl	1212 <printf_>
        __func__, code_start_addr, code_end_addr, code_size, code_size);
        printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
    1b94:	4b2c      	ldr	r3, [pc, #176]	; (1c48 <backtrace_test+0x134>)
    1b96:	6819      	ldr	r1, [r3, #0]
    1b98:	4b2d      	ldr	r3, [pc, #180]	; (1c50 <backtrace_test+0x13c>)
    1b9a:	6818      	ldr	r0, [r3, #0]
    1b9c:	4b2d      	ldr	r3, [pc, #180]	; (1c54 <backtrace_test+0x140>)
    1b9e:	681b      	ldr	r3, [r3, #0]
    1ba0:	4a2c      	ldr	r2, [pc, #176]	; (1c54 <backtrace_test+0x140>)
    1ba2:	6812      	ldr	r2, [r2, #0]
    1ba4:	9201      	str	r2, [sp, #4]
    1ba6:	9300      	str	r3, [sp, #0]
    1ba8:	4603      	mov	r3, r0
    1baa:	460a      	mov	r2, r1
    1bac:	492f      	ldr	r1, [pc, #188]	; (1c6c <backtrace_test+0x158>)
    1bae:	4831      	ldr	r0, [pc, #196]	; (1c74 <backtrace_test+0x160>)
    1bb0:	f7ff fb2f 	bl	1212 <printf_>
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
        printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
    1bb4:	4b29      	ldr	r3, [pc, #164]	; (1c5c <backtrace_test+0x148>)
    1bb6:	6819      	ldr	r1, [r3, #0]
    1bb8:	4b2a      	ldr	r3, [pc, #168]	; (1c64 <backtrace_test+0x150>)
    1bba:	6818      	ldr	r0, [r3, #0]
    1bbc:	4b2a      	ldr	r3, [pc, #168]	; (1c68 <backtrace_test+0x154>)
    1bbe:	681b      	ldr	r3, [r3, #0]
    1bc0:	4a29      	ldr	r2, [pc, #164]	; (1c68 <backtrace_test+0x154>)
    1bc2:	6812      	ldr	r2, [r2, #0]
    1bc4:	9201      	str	r2, [sp, #4]
    1bc6:	9300      	str	r3, [sp, #0]
    1bc8:	4603      	mov	r3, r0
    1bca:	460a      	mov	r2, r1
    1bcc:	4927      	ldr	r1, [pc, #156]	; (1c6c <backtrace_test+0x158>)
    1bce:	482a      	ldr	r0, [pc, #168]	; (1c78 <backtrace_test+0x164>)
    1bd0:	f7ff fb1f 	bl	1212 <printf_>
  __ASM volatile ("cpsie i" : : : "memory");
    1bd4:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1bd6:	466b      	mov	r3, sp
    1bd8:	461c      	mov	r4, r3
    return(result);
    1bda:	4623      	mov	r3, r4
         // test_div();
         // fault_test_by_div0();
         // fault_test_by_unalign();
         // __asm("svc 0");
         // printf("[%s] end\n", __func__);
         uint32_t sp = cmb_get_sp();
    1bdc:	617b      	str	r3, [r7, #20]
         printf("sp=0x%lx\n", sp);
    1bde:	6979      	ldr	r1, [r7, #20]
    1be0:	4826      	ldr	r0, [pc, #152]	; (1c7c <backtrace_test+0x168>)
    1be2:	f7ff fb16 	bl	1212 <printf_>
         区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
         blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
         进行计算
         */
         uint32_t addr;
         while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1be6:	e01b      	b.n	1c20 <backtrace_test+0x10c>
             //sp 在代码段内
             addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
    1be8:	697b      	ldr	r3, [r7, #20]
    1bea:	681b      	ldr	r3, [r3, #0]
    1bec:	607b      	str	r3, [r7, #4]
             printf("addr :%08x\n", addr);
    1bee:	6879      	ldr	r1, [r7, #4]
    1bf0:	4823      	ldr	r0, [pc, #140]	; (1c80 <backtrace_test+0x16c>)
    1bf2:	f7ff fb0e 	bl	1212 <printf_>
             if ((addr >= (uint32_t)&_stext) &&
    1bf6:	4a0e      	ldr	r2, [pc, #56]	; (1c30 <backtrace_test+0x11c>)
    1bf8:	687b      	ldr	r3, [r7, #4]
    1bfa:	4293      	cmp	r3, r2
    1bfc:	d30d      	bcc.n	1c1a <backtrace_test+0x106>
             (sp <= (uint32_t)&_etext) &&
    1bfe:	4a0e      	ldr	r2, [pc, #56]	; (1c38 <backtrace_test+0x124>)
             if ((addr >= (uint32_t)&_stext) &&
    1c00:	697b      	ldr	r3, [r7, #20]
    1c02:	4293      	cmp	r3, r2
    1c04:	d809      	bhi.n	1c1a <backtrace_test+0x106>
             IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
    1c06:	687b      	ldr	r3, [r7, #4]
    1c08:	3b01      	subs	r3, #1
    1c0a:	f003 0301 	and.w	r3, r3, #1
             (sp <= (uint32_t)&_etext) &&
    1c0e:	2b00      	cmp	r3, #0
    1c10:	d103      	bne.n	1c1a <backtrace_test+0x106>

                 printf("find ld 0x%08x\n", addr);
    1c12:	6879      	ldr	r1, [r7, #4]
    1c14:	481b      	ldr	r0, [pc, #108]	; (1c84 <backtrace_test+0x170>)
    1c16:	f7ff fafc 	bl	1212 <printf_>
             }
             sp += 4;
    1c1a:	697b      	ldr	r3, [r7, #20]
    1c1c:	3304      	adds	r3, #4
    1c1e:	617b      	str	r3, [r7, #20]
         while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1c20:	4a0a      	ldr	r2, [pc, #40]	; (1c4c <backtrace_test+0x138>)
    1c22:	697b      	ldr	r3, [r7, #20]
    1c24:	4293      	cmp	r3, r2
    1c26:	d3df      	bcc.n	1be8 <backtrace_test+0xd4>
         }
         backtrace_level_1();
    1c28:	f7ff ff66 	bl	1af8 <backtrace_level_1>
         while(1);
    1c2c:	e7fe      	b.n	1c2c <backtrace_test+0x118>
    1c2e:	bf00      	nop
    1c30:	00000000 	.word	0x00000000
    1c34:	20000008 	.word	0x20000008
    1c38:	00002b64 	.word	0x00002b64
    1c3c:	2000000c 	.word	0x2000000c
    1c40:	20000010 	.word	0x20000010
    1c44:	200000c8 	.word	0x200000c8
    1c48:	20000014 	.word	0x20000014
    1c4c:	200010c8 	.word	0x200010c8
    1c50:	20000018 	.word	0x20000018
    1c54:	2000001c 	.word	0x2000001c
    1c58:	200010c8 	.word	0x200010c8
    1c5c:	20000020 	.word	0x20000020
    1c60:	200050c8 	.word	0x200050c8
    1c64:	20000024 	.word	0x20000024
    1c68:	20000028 	.word	0x20000028
    1c6c:	00002b48 	.word	0x00002b48
    1c70:	000029cc 	.word	0x000029cc
    1c74:	00002a14 	.word	0x00002a14
    1c78:	00002a5c 	.word	0x00002a5c
    1c7c:	00002aa4 	.word	0x00002aa4
    1c80:	00002ab0 	.word	0x00002ab0
    1c84:	00002abc 	.word	0x00002abc

00001c88 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    1c88:	b480      	push	{r7}
    1c8a:	b083      	sub	sp, #12
    1c8c:	af00      	add	r7, sp, #0
    1c8e:	6078      	str	r0, [r7, #4]
        while (addr > (unsigned long)code_start_addr) {
    1c90:	e00e      	b.n	1cb0 <LoopUntilEntry+0x28>
            if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
    1c92:	687b      	ldr	r3, [r7, #4]
    1c94:	881b      	ldrh	r3, [r3, #0]
    1c96:	0a1b      	lsrs	r3, r3, #8
    1c98:	b29b      	uxth	r3, r3
    1c9a:	2bb5      	cmp	r3, #181	; 0xb5
    1c9c:	d00d      	beq.n	1cba <LoopUntilEntry+0x32>
    1c9e:	687b      	ldr	r3, [r7, #4]
    1ca0:	881b      	ldrh	r3, [r3, #0]
    1ca2:	0a1b      	lsrs	r3, r3, #8
    1ca4:	b29b      	uxth	r3, r3
    1ca6:	2bb4      	cmp	r3, #180	; 0xb4
    1ca8:	d007      	beq.n	1cba <LoopUntilEntry+0x32>
                break;
            }
            addr -= THUM_OFFSET;
    1caa:	687b      	ldr	r3, [r7, #4]
    1cac:	3b02      	subs	r3, #2
    1cae:	607b      	str	r3, [r7, #4]
        while (addr > (unsigned long)code_start_addr) {
    1cb0:	4b05      	ldr	r3, [pc, #20]	; (1cc8 <LoopUntilEntry+0x40>)
    1cb2:	681b      	ldr	r3, [r3, #0]
    1cb4:	687a      	ldr	r2, [r7, #4]
    1cb6:	429a      	cmp	r2, r3
    1cb8:	d8eb      	bhi.n	1c92 <LoopUntilEntry+0xa>
        }

        return addr;
    1cba:	687b      	ldr	r3, [r7, #4]
}
    1cbc:	4618      	mov	r0, r3
    1cbe:	370c      	adds	r7, #12
    1cc0:	46bd      	mov	sp, r7
    1cc2:	bc80      	pop	{r7}
    1cc4:	4770      	bx	lr
    1cc6:	bf00      	nop
    1cc8:	20000008 	.word	0x20000008

00001ccc <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    1ccc:	b480      	push	{r7}
    1cce:	b087      	sub	sp, #28
    1cd0:	af00      	add	r7, sp, #0
    1cd2:	6078      	str	r0, [r7, #4]
        unsigned long target = 0;
    1cd4:	2300      	movs	r3, #0
    1cd6:	617b      	str	r3, [r7, #20]
        uint32_t off0, off1, off;

        if (*(uint16_t *)bl & SIGN_BIT_MASK) {
    1cd8:	687b      	ldr	r3, [r7, #4]
    1cda:	881b      	ldrh	r3, [r3, #0]
    1cdc:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1ce0:	2b00      	cmp	r3, #0
    1ce2:	d00b      	beq.n	1cfc <CalculateBLTargetAddress+0x30>
            off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1ce4:	687b      	ldr	r3, [r7, #4]
    1ce6:	881b      	ldrh	r3, [r3, #0]
    1ce8:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1cec:	60fb      	str	r3, [r7, #12]
            off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1cee:	687b      	ldr	r3, [r7, #4]
    1cf0:	3302      	adds	r3, #2
    1cf2:	881b      	ldrh	r3, [r3, #0]
    1cf4:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1cf8:	613b      	str	r3, [r7, #16]
    1cfa:	e00a      	b.n	1d12 <CalculateBLTargetAddress+0x46>
        } else {
            off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1cfc:	687b      	ldr	r3, [r7, #4]
    1cfe:	881b      	ldrh	r3, [r3, #0]
    1d00:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1d04:	613b      	str	r3, [r7, #16]
            off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1d06:	687b      	ldr	r3, [r7, #4]
    1d08:	3302      	adds	r3, #2
    1d0a:	881b      	ldrh	r3, [r3, #0]
    1d0c:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1d10:	60fb      	str	r3, [r7, #12]
        }
        off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    1d12:	693b      	ldr	r3, [r7, #16]
    1d14:	031a      	lsls	r2, r3, #12
    1d16:	68fb      	ldr	r3, [r7, #12]
    1d18:	005b      	lsls	r3, r3, #1
    1d1a:	4413      	add	r3, r2
    1d1c:	60bb      	str	r3, [r7, #8]
        if (off & SIGN_BIT_MASK) {
    1d1e:	68bb      	ldr	r3, [r7, #8]
    1d20:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1d24:	2b00      	cmp	r3, #0
    1d26:	d008      	beq.n	1d3a <CalculateBLTargetAddress+0x6e>
            target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    1d28:	68bb      	ldr	r3, [r7, #8]
    1d2a:	425b      	negs	r3, r3
    1d2c:	f3c3 0316 	ubfx	r3, r3, #0, #23
    1d30:	687a      	ldr	r2, [r7, #4]
    1d32:	1ad3      	subs	r3, r2, r3
    1d34:	3304      	adds	r3, #4
    1d36:	617b      	str	r3, [r7, #20]
    1d38:	e004      	b.n	1d44 <CalculateBLTargetAddress+0x78>
        } else {
            target = bl + BL_CMD_OFFSET + off;
    1d3a:	687a      	ldr	r2, [r7, #4]
    1d3c:	68bb      	ldr	r3, [r7, #8]
    1d3e:	4413      	add	r3, r2
    1d40:	3304      	adds	r3, #4
    1d42:	617b      	str	r3, [r7, #20]
        }

        return target;
    1d44:	697b      	ldr	r3, [r7, #20]
}
    1d46:	4618      	mov	r0, r3
    1d48:	371c      	adds	r7, #28
    1d4a:	46bd      	mov	sp, r7
    1d4c:	bc80      	pop	{r7}
    1d4e:	4770      	bx	lr

00001d50 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    1d50:	b580      	push	{r7, lr}
    1d52:	b084      	sub	sp, #16
    1d54:	af00      	add	r7, sp, #0
    1d56:	6078      	str	r0, [r7, #4]
        unsigned long target = 0;
    1d58:	2300      	movs	r3, #0
    1d5a:	60fb      	str	r3, [r7, #12]
        static unsigned long tmpBL = 0;

        if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
    1d5c:	687b      	ldr	r3, [r7, #4]
    1d5e:	3b02      	subs	r3, #2
    1d60:	881b      	ldrh	r3, [r3, #0]
    1d62:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1d66:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1d6a:	d11a      	bne.n	1da2 <CalculateTargetAddress+0x52>
            if (tmpBL != 0) {
    1d6c:	4b1b      	ldr	r3, [pc, #108]	; (1ddc <CalculateTargetAddress+0x8c>)
    1d6e:	681b      	ldr	r3, [r3, #0]
    1d70:	2b00      	cmp	r3, #0
    1d72:	d00b      	beq.n	1d8c <CalculateTargetAddress+0x3c>
                target = LoopUntilEntry (tmpBL);
    1d74:	4b19      	ldr	r3, [pc, #100]	; (1ddc <CalculateTargetAddress+0x8c>)
    1d76:	681b      	ldr	r3, [r3, #0]
    1d78:	4618      	mov	r0, r3
    1d7a:	f7ff ff85 	bl	1c88 <LoopUntilEntry>
    1d7e:	60f8      	str	r0, [r7, #12]
                tmpBL = bl - BLX_CMD_OFFSET;
    1d80:	687b      	ldr	r3, [r7, #4]
    1d82:	3b02      	subs	r3, #2
    1d84:	4a15      	ldr	r2, [pc, #84]	; (1ddc <CalculateTargetAddress+0x8c>)
    1d86:	6013      	str	r3, [r2, #0]
                return target;
    1d88:	68fb      	ldr	r3, [r7, #12]
    1d8a:	e023      	b.n	1dd4 <CalculateTargetAddress+0x84>
            }
            tmpBL = bl - BLX_CMD_OFFSET;
    1d8c:	687b      	ldr	r3, [r7, #4]
    1d8e:	3b02      	subs	r3, #2
    1d90:	4a12      	ldr	r2, [pc, #72]	; (1ddc <CalculateTargetAddress+0x8c>)
    1d92:	6013      	str	r3, [r2, #0]
            return LoopUntilEntry(tmpBL);
    1d94:	4b11      	ldr	r3, [pc, #68]	; (1ddc <CalculateTargetAddress+0x8c>)
    1d96:	681b      	ldr	r3, [r3, #0]
    1d98:	4618      	mov	r0, r3
    1d9a:	f7ff ff75 	bl	1c88 <LoopUntilEntry>
    1d9e:	4603      	mov	r3, r0
    1da0:	e018      	b.n	1dd4 <CalculateTargetAddress+0x84>
        } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
    1da2:	687b      	ldr	r3, [r7, #4]
    1da4:	3b04      	subs	r3, #4
    1da6:	681b      	ldr	r3, [r3, #0]
    1da8:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
    1dac:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
    1db0:	d10f      	bne.n	1dd2 <CalculateTargetAddress+0x82>
            tmpBL = bl - BL_CMD_OFFSET;
    1db2:	687b      	ldr	r3, [r7, #4]
    1db4:	3b04      	subs	r3, #4
    1db6:	4a09      	ldr	r2, [pc, #36]	; (1ddc <CalculateTargetAddress+0x8c>)
    1db8:	6013      	str	r3, [r2, #0]
            CalculateBLTargetAddress (tmpBL);
    1dba:	4b08      	ldr	r3, [pc, #32]	; (1ddc <CalculateTargetAddress+0x8c>)
    1dbc:	681b      	ldr	r3, [r3, #0]
    1dbe:	4618      	mov	r0, r3
    1dc0:	f7ff ff84 	bl	1ccc <CalculateBLTargetAddress>

            return CalculateBLTargetAddress (tmpBL);
    1dc4:	4b05      	ldr	r3, [pc, #20]	; (1ddc <CalculateTargetAddress+0x8c>)
    1dc6:	681b      	ldr	r3, [r3, #0]
    1dc8:	4618      	mov	r0, r3
    1dca:	f7ff ff7f 	bl	1ccc <CalculateBLTargetAddress>
    1dce:	4603      	mov	r3, r0
    1dd0:	e000      	b.n	1dd4 <CalculateTargetAddress+0x84>
        }

        return 0;
    1dd2:	2300      	movs	r3, #0
}
    1dd4:	4618      	mov	r0, r3
    1dd6:	3710      	adds	r7, #16
    1dd8:	46bd      	mov	sp, r7
    1dda:	bd80      	pop	{r7, pc}
    1ddc:	200000c0 	.word	0x200000c0

00001de0 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
    1de0:	b580      	push	{r7, lr}
    1de2:	b086      	sub	sp, #24
    1de4:	af00      	add	r7, sp, #0
    1de6:	6078      	str	r0, [r7, #4]
        unsigned long stackPointer = sp;
    1de8:	687b      	ldr	r3, [r7, #4]
    1dea:	617b      	str	r3, [r7, #20]
        uint32_t count = 0;
    1dec:	2300      	movs	r3, #0
    1dee:	613b      	str	r3, [r7, #16]
        static unsigned long tmpJump = 0;


        while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    1df0:	e03b      	b.n	1e6a <BackTraceSub+0x8a>
            if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    1df2:	697b      	ldr	r3, [r7, #20]
    1df4:	681a      	ldr	r2, [r3, #0]
    1df6:	4b23      	ldr	r3, [pc, #140]	; (1e84 <BackTraceSub+0xa4>)
    1df8:	681b      	ldr	r3, [r3, #0]
    1dfa:	429a      	cmp	r2, r3
    1dfc:	d32e      	bcc.n	1e5c <BackTraceSub+0x7c>
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    1dfe:	697b      	ldr	r3, [r7, #20]
    1e00:	681a      	ldr	r2, [r3, #0]
    1e02:	4b21      	ldr	r3, [pc, #132]	; (1e88 <BackTraceSub+0xa8>)
    1e04:	681b      	ldr	r3, [r3, #0]
            if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    1e06:	429a      	cmp	r2, r3
    1e08:	d828      	bhi.n	1e5c <BackTraceSub+0x7c>
            IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
    1e0a:	697b      	ldr	r3, [r7, #20]
    1e0c:	681b      	ldr	r3, [r3, #0]
    1e0e:	3b01      	subs	r3, #1
    1e10:	f003 0301 	and.w	r3, r3, #1
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    1e14:	2b00      	cmp	r3, #0
    1e16:	d121      	bne.n	1e5c <BackTraceSub+0x7c>

                /* Get the entry address of current function. */
                unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
    1e18:	697b      	ldr	r3, [r7, #20]
    1e1a:	681b      	ldr	r3, [r3, #0]
    1e1c:	3b01      	subs	r3, #1
    1e1e:	4618      	mov	r0, r3
    1e20:	f7ff ff96 	bl	1d50 <CalculateTargetAddress>
    1e24:	60f8      	str	r0, [r7, #12]
                if ((checkBL == 0) || (checkBL == tmpJump)) {
    1e26:	68fb      	ldr	r3, [r7, #12]
    1e28:	2b00      	cmp	r3, #0
    1e2a:	d004      	beq.n	1e36 <BackTraceSub+0x56>
    1e2c:	4b17      	ldr	r3, [pc, #92]	; (1e8c <BackTraceSub+0xac>)
    1e2e:	681b      	ldr	r3, [r3, #0]
    1e30:	68fa      	ldr	r2, [r7, #12]
    1e32:	429a      	cmp	r2, r3
    1e34:	d103      	bne.n	1e3e <BackTraceSub+0x5e>
                    stackPointer += STACK_OFFSET;
    1e36:	697b      	ldr	r3, [r7, #20]
    1e38:	3304      	adds	r3, #4
    1e3a:	617b      	str	r3, [r7, #20]
                    continue;
    1e3c:	e015      	b.n	1e6a <BackTraceSub+0x8a>
                }
                tmpJump = checkBL;
    1e3e:	4a13      	ldr	r2, [pc, #76]	; (1e8c <BackTraceSub+0xac>)
    1e40:	68fb      	ldr	r3, [r7, #12]
    1e42:	6013      	str	r3, [r2, #0]
                count++;
    1e44:	693b      	ldr	r3, [r7, #16]
    1e46:	3301      	adds	r3, #1
    1e48:	613b      	str	r3, [r7, #16]
                printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
    1e4a:	697b      	ldr	r3, [r7, #20]
    1e4c:	681b      	ldr	r3, [r3, #0]
    1e4e:	1e5a      	subs	r2, r3, #1
    1e50:	4b0e      	ldr	r3, [pc, #56]	; (1e8c <BackTraceSub+0xac>)
    1e52:	681b      	ldr	r3, [r3, #0]
    1e54:	6939      	ldr	r1, [r7, #16]
    1e56:	480e      	ldr	r0, [pc, #56]	; (1e90 <BackTraceSub+0xb0>)
    1e58:	f7ff f9db 	bl	1212 <printf_>
            }
            stackPointer += STACK_OFFSET;
    1e5c:	697b      	ldr	r3, [r7, #20]
    1e5e:	3304      	adds	r3, #4
    1e60:	617b      	str	r3, [r7, #20]
            printf("stackPointer=0x%x\n",stackPointer);
    1e62:	6979      	ldr	r1, [r7, #20]
    1e64:	480b      	ldr	r0, [pc, #44]	; (1e94 <BackTraceSub+0xb4>)
    1e66:	f7ff f9d4 	bl	1212 <printf_>
        while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    1e6a:	4b0b      	ldr	r3, [pc, #44]	; (1e98 <BackTraceSub+0xb8>)
    1e6c:	681b      	ldr	r3, [r3, #0]
    1e6e:	697a      	ldr	r2, [r7, #20]
    1e70:	429a      	cmp	r2, r3
    1e72:	d202      	bcs.n	1e7a <BackTraceSub+0x9a>
    1e74:	693b      	ldr	r3, [r7, #16]
    1e76:	2b0e      	cmp	r3, #14
    1e78:	d9bb      	bls.n	1df2 <BackTraceSub+0x12>
        }
}
    1e7a:	bf00      	nop
    1e7c:	3718      	adds	r7, #24
    1e7e:	46bd      	mov	sp, r7
    1e80:	bd80      	pop	{r7, pc}
    1e82:	bf00      	nop
    1e84:	20000008 	.word	0x20000008
    1e88:	2000000c 	.word	0x2000000c
    1e8c:	200000c4 	.word	0x200000c4
    1e90:	00002acc 	.word	0x00002acc
    1e94:	00002af8 	.word	0x00002af8
    1e98:	20000018 	.word	0x20000018

Disassembly of section .text.default_handler:

00001e9c <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
    1e9c:	e7fe      	b.n	1e9c <default_handler>
