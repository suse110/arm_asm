
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_stext>:
.weak  _start
.type  _start, %function
_start:

# bl mmu_setting_1
ldr sp, =_estack
       0:	f8df d004 	ldr.w	sp, [pc, #4]	; 8 <_stext+0x8>
ldr r1, =main
       4:	4901      	ldr	r1, [pc, #4]	; (c <_stext+0xc>)
bx r1
       6:	4708      	bx	r1
ldr sp, =_estack
       8:	20001018 	.word	0x20001018
ldr r1, =main
       c:	00000051 	.word	0x00000051

00000010 <g_pfnVectors>:
      10:	20001018 00000000 00000069 00000081     ... ....i.......
      20:	00000099 000000b1 000000c9 00001514     ................
      30:	00001514 00001514 00001514 000000e1     ................
      40:	000000f9 00001514 00000111 00000129     ............)...

00000050 <main>:
#include <stdint.h>
#include "hal.h"

void main(void)
{
      50:	b580      	push	{r7, lr}
      52:	af00      	add	r7, sp, #0
    printf("[%s] hello world\n", __func__);
      54:	4902      	ldr	r1, [pc, #8]	; (60 <main+0x10>)
      56:	4803      	ldr	r0, [pc, #12]	; (64 <main+0x14>)
      58:	f001 f9ba 	bl	13d0 <printf_>
    // backtrace_test();
    // hal_mpu_test();
    while(1);
      5c:	e7fe      	b.n	5c <main+0xc>
      5e:	bf00      	nop
      60:	00001534 	.word	0x00001534
      64:	00001518 	.word	0x00001518

00000068 <nmi_handler>:
}

void nmi_handler(void)
{
      68:	b580      	push	{r7, lr}
      6a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      6c:	4902      	ldr	r1, [pc, #8]	; (78 <nmi_handler+0x10>)
      6e:	4803      	ldr	r0, [pc, #12]	; (7c <nmi_handler+0x14>)
      70:	f001 f9ae 	bl	13d0 <printf_>
    while(1);
      74:	e7fe      	b.n	74 <nmi_handler+0xc>
      76:	bf00      	nop
      78:	0000153c 	.word	0x0000153c
      7c:	0000152c 	.word	0x0000152c

00000080 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
      80:	b580      	push	{r7, lr}
      82:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      84:	4902      	ldr	r1, [pc, #8]	; (90 <hard_fault_handler+0x10>)
      86:	4803      	ldr	r0, [pc, #12]	; (94 <hard_fault_handler+0x14>)
      88:	f001 f9a2 	bl	13d0 <printf_>
    while(1);
      8c:	e7fe      	b.n	8c <hard_fault_handler+0xc>
      8e:	bf00      	nop
      90:	00001548 	.word	0x00001548
      94:	0000152c 	.word	0x0000152c

00000098 <mem_manage_handler>:
}

void mem_manage_handler(void)
{
      98:	b580      	push	{r7, lr}
      9a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      9c:	4902      	ldr	r1, [pc, #8]	; (a8 <mem_manage_handler+0x10>)
      9e:	4803      	ldr	r0, [pc, #12]	; (ac <mem_manage_handler+0x14>)
      a0:	f001 f996 	bl	13d0 <printf_>
    while(1);
      a4:	e7fe      	b.n	a4 <mem_manage_handler+0xc>
      a6:	bf00      	nop
      a8:	0000155c 	.word	0x0000155c
      ac:	0000152c 	.word	0x0000152c

000000b0 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
      b0:	b580      	push	{r7, lr}
      b2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      b4:	4902      	ldr	r1, [pc, #8]	; (c0 <bus_fault_handler+0x10>)
      b6:	4803      	ldr	r0, [pc, #12]	; (c4 <bus_fault_handler+0x14>)
      b8:	f001 f98a 	bl	13d0 <printf_>
    while(1);
      bc:	e7fe      	b.n	bc <bus_fault_handler+0xc>
      be:	bf00      	nop
      c0:	00001570 	.word	0x00001570
      c4:	0000152c 	.word	0x0000152c

000000c8 <usage_fault_handler>:
}

void usage_fault_handler(void)
{
      c8:	b580      	push	{r7, lr}
      ca:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      cc:	4902      	ldr	r1, [pc, #8]	; (d8 <usage_fault_handler+0x10>)
      ce:	4803      	ldr	r0, [pc, #12]	; (dc <usage_fault_handler+0x14>)
      d0:	f001 f97e 	bl	13d0 <printf_>
    while(1);
      d4:	e7fe      	b.n	d4 <usage_fault_handler+0xc>
      d6:	bf00      	nop
      d8:	00001584 	.word	0x00001584
      dc:	0000152c 	.word	0x0000152c

000000e0 <svc_handler>:
}

void svc_handler(void)
{
      e0:	b580      	push	{r7, lr}
      e2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      e4:	4902      	ldr	r1, [pc, #8]	; (f0 <svc_handler+0x10>)
      e6:	4803      	ldr	r0, [pc, #12]	; (f4 <svc_handler+0x14>)
      e8:	f001 f972 	bl	13d0 <printf_>
    while(1);
      ec:	e7fe      	b.n	ec <svc_handler+0xc>
      ee:	bf00      	nop
      f0:	00001598 	.word	0x00001598
      f4:	0000152c 	.word	0x0000152c

000000f8 <debug_mon_handler>:
}

void debug_mon_handler(void)
{
      f8:	b580      	push	{r7, lr}
      fa:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      fc:	4902      	ldr	r1, [pc, #8]	; (108 <debug_mon_handler+0x10>)
      fe:	4803      	ldr	r0, [pc, #12]	; (10c <debug_mon_handler+0x14>)
     100:	f001 f966 	bl	13d0 <printf_>
    while(1);
     104:	e7fe      	b.n	104 <debug_mon_handler+0xc>
     106:	bf00      	nop
     108:	000015a4 	.word	0x000015a4
     10c:	0000152c 	.word	0x0000152c

00000110 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     110:	b580      	push	{r7, lr}
     112:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     114:	4902      	ldr	r1, [pc, #8]	; (120 <pend_sv_handler+0x10>)
     116:	4803      	ldr	r0, [pc, #12]	; (124 <pend_sv_handler+0x14>)
     118:	f001 f95a 	bl	13d0 <printf_>
    while(1);
     11c:	e7fe      	b.n	11c <pend_sv_handler+0xc>
     11e:	bf00      	nop
     120:	000015b8 	.word	0x000015b8
     124:	0000152c 	.word	0x0000152c

00000128 <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     128:	b580      	push	{r7, lr}
     12a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     12c:	4902      	ldr	r1, [pc, #8]	; (138 <sys_tick_handler+0x10>)
     12e:	4803      	ldr	r0, [pc, #12]	; (13c <sys_tick_handler+0x14>)
     130:	f001 f94e 	bl	13d0 <printf_>
    while(1);
     134:	e7fe      	b.n	134 <sys_tick_handler+0xc>
     136:	bf00      	nop
     138:	000015c8 	.word	0x000015c8
     13c:	0000152c 	.word	0x0000152c

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
     224:	000015dc 	.word	0x000015dc

00000228 <__pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long __pow(int x, int y)
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
     236:	e004      	b.n	242 <__pow+0x1a>
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
     24a:	d1f5      	bne.n	238 <__pow+0x10>
    }
    return sum;
     24c:	68bb      	ldr	r3, [r7, #8]
}
     24e:	4618      	mov	r0, r3
     250:	370c      	adds	r7, #12
     252:	46bd      	mov	sp, r7
     254:	bc80      	pop	{r7}
     256:	4770      	bx	lr

00000258 <__putchar>:

void __putchar(const char ch)
{
     258:	b480      	push	{r7}
     25a:	b081      	sub	sp, #4
     25c:	af00      	add	r7, sp, #0
     25e:	4603      	mov	r3, r0
     260:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
     262:	4a04      	ldr	r2, [pc, #16]	; (274 <__putchar+0x1c>)
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

00000278 <_putchar>:
#define __putchar(ch) do {*UART_DR = ch;} while(0)

void _putchar(char character)
{
     278:	b480      	push	{r7}
     27a:	b081      	sub	sp, #4
     27c:	af00      	add	r7, sp, #0
     27e:	4603      	mov	r3, r0
     280:	703b      	strb	r3, [r7, #0]
    __putchar(character);
     282:	4a04      	ldr	r2, [pc, #16]	; (294 <_putchar+0x1c>)
     284:	783b      	ldrb	r3, [r7, #0]
     286:	6013      	str	r3, [r2, #0]
}
     288:	bf00      	nop
     28a:	3704      	adds	r7, #4
     28c:	46bd      	mov	sp, r7
     28e:	bc80      	pop	{r7}
     290:	4770      	bx	lr
     292:	bf00      	nop
     294:	4000c000 	.word	0x4000c000

00000298 <__putstr>:
void __putstr(const char *str)
{
     298:	b480      	push	{r7}
     29a:	b081      	sub	sp, #4
     29c:	af00      	add	r7, sp, #0
     29e:	6038      	str	r0, [r7, #0]
    while (*str)
     2a0:	e005      	b.n	2ae <__putstr+0x16>
    {
        __putchar(*str++);
     2a2:	683b      	ldr	r3, [r7, #0]
     2a4:	1c5a      	adds	r2, r3, #1
     2a6:	603a      	str	r2, [r7, #0]
     2a8:	781a      	ldrb	r2, [r3, #0]
     2aa:	4b05      	ldr	r3, [pc, #20]	; (2c0 <__putstr+0x28>)
     2ac:	601a      	str	r2, [r3, #0]
    while (*str)
     2ae:	683b      	ldr	r3, [r7, #0]
     2b0:	781b      	ldrb	r3, [r3, #0]
     2b2:	2b00      	cmp	r3, #0
     2b4:	d1f5      	bne.n	2a2 <__putstr+0xa>
    }
}
     2b6:	bf00      	nop
     2b8:	3704      	adds	r7, #4
     2ba:	46bd      	mov	sp, r7
     2bc:	bc80      	pop	{r7}
     2be:	4770      	bx	lr
     2c0:	4000c000 	.word	0x4000c000

000002c4 <__strlen>:
uint32_t __strlen (const char *__s)
{
     2c4:	b480      	push	{r7}
     2c6:	b082      	sub	sp, #8
     2c8:	af00      	add	r7, sp, #0
     2ca:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
     2cc:	2300      	movs	r3, #0
     2ce:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
     2d0:	e002      	b.n	2d8 <__strlen+0x14>
     2d2:	687b      	ldr	r3, [r7, #4]
     2d4:	3301      	adds	r3, #1
     2d6:	607b      	str	r3, [r7, #4]
     2d8:	683b      	ldr	r3, [r7, #0]
     2da:	1c5a      	adds	r2, r3, #1
     2dc:	603a      	str	r2, [r7, #0]
     2de:	781b      	ldrb	r3, [r3, #0]
     2e0:	2b00      	cmp	r3, #0
     2e2:	d1f6      	bne.n	2d2 <__strlen+0xe>
    return i;
     2e4:	687b      	ldr	r3, [r7, #4]
}
     2e6:	4618      	mov	r0, r3
     2e8:	3708      	adds	r7, #8
     2ea:	46bd      	mov	sp, r7
     2ec:	bc80      	pop	{r7}
     2ee:	4770      	bx	lr

000002f0 <lite_printf>:
int lite_printf(const char *str, ...)
{
     2f0:	b40f      	push	{r0, r1, r2, r3}
     2f2:	b590      	push	{r4, r7, lr}
     2f4:	b087      	sub	sp, #28
     2f6:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
     2f8:	2300      	movs	r3, #0
     2fa:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
     2fc:	2300      	movs	r3, #0
     2fe:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
     300:	f107 032c 	add.w	r3, r7, #44	; 0x2c
     304:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     306:	e108      	b.n	51a <lite_printf+0x22a>
    {
        switch (*str)
     308:	6abb      	ldr	r3, [r7, #40]	; 0x28
     30a:	781b      	ldrb	r3, [r3, #0]
     30c:	2b0d      	cmp	r3, #13
     30e:	f000 80f1 	beq.w	4f4 <lite_printf+0x204>
     312:	2b25      	cmp	r3, #37	; 0x25
     314:	d003      	beq.n	31e <lite_printf+0x2e>
     316:	2b0a      	cmp	r3, #10
     318:	f000 80e5 	beq.w	4e6 <lite_printf+0x1f6>
     31c:	e0f1      	b.n	502 <lite_printf+0x212>
        {
        case '%': //发送参数
            str++;
     31e:	6abb      	ldr	r3, [r7, #40]	; 0x28
     320:	3301      	adds	r3, #1
     322:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
     324:	6abb      	ldr	r3, [r7, #40]	; 0x28
     326:	781b      	ldrb	r3, [r3, #0]
     328:	3b63      	subs	r3, #99	; 0x63
     32a:	2b15      	cmp	r3, #21
     32c:	f200 80f1 	bhi.w	512 <lite_printf+0x222>
     330:	a201      	add	r2, pc, #4	; (adr r2, 338 <lite_printf+0x48>)
     332:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     336:	bf00      	nop
     338:	000004cf 	.word	0x000004cf
     33c:	00000391 	.word	0x00000391
     340:	00000513 	.word	0x00000513
     344:	00000513 	.word	0x00000513
     348:	00000513 	.word	0x00000513
     34c:	00000513 	.word	0x00000513
     350:	00000513 	.word	0x00000513
     354:	00000513 	.word	0x00000513
     358:	00000513 	.word	0x00000513
     35c:	00000513 	.word	0x00000513
     360:	00000513 	.word	0x00000513
     364:	00000513 	.word	0x00000513
     368:	00000513 	.word	0x00000513
     36c:	00000513 	.word	0x00000513
     370:	00000513 	.word	0x00000513
     374:	00000513 	.word	0x00000513
     378:	000004af 	.word	0x000004af
     37c:	00000513 	.word	0x00000513
     380:	00000513 	.word	0x00000513
     384:	00000513 	.word	0x00000513
     388:	00000513 	.word	0x00000513
     38c:	00000419 	.word	0x00000419
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     390:	683b      	ldr	r3, [r7, #0]
     392:	1d1a      	adds	r2, r3, #4
     394:	603a      	str	r2, [r7, #0]
     396:	681b      	ldr	r3, [r3, #0]
     398:	60bb      	str	r3, [r7, #8]
                r_val = val;
     39a:	68bb      	ldr	r3, [r7, #8]
     39c:	61bb      	str	r3, [r7, #24]
                count = 0;
     39e:	2300      	movs	r3, #0
     3a0:	75fb      	strb	r3, [r7, #23]
                while (r_val)
     3a2:	e00a      	b.n	3ba <lite_printf+0xca>

                {
                    count++; //整数的长度
     3a4:	7dfb      	ldrb	r3, [r7, #23]
     3a6:	3301      	adds	r3, #1
     3a8:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
     3aa:	69bb      	ldr	r3, [r7, #24]
     3ac:	4a61      	ldr	r2, [pc, #388]	; (534 <lite_printf+0x244>)
     3ae:	fb82 1203 	smull	r1, r2, r2, r3
     3b2:	1092      	asrs	r2, r2, #2
     3b4:	17db      	asrs	r3, r3, #31
     3b6:	1ad3      	subs	r3, r2, r3
     3b8:	61bb      	str	r3, [r7, #24]
                while (r_val)
     3ba:	69bb      	ldr	r3, [r7, #24]
     3bc:	2b00      	cmp	r3, #0
     3be:	d1f1      	bne.n	3a4 <lite_printf+0xb4>
                }

                res += count;
     3c0:	7dfb      	ldrb	r3, [r7, #23]
     3c2:	693a      	ldr	r2, [r7, #16]
     3c4:	4413      	add	r3, r2
     3c6:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
     3c8:	68bb      	ldr	r3, [r7, #8]
     3ca:	61bb      	str	r3, [r7, #24]
                while (count)
     3cc:	e020      	b.n	410 <lite_printf+0x120>
                {
                    ch = r_val / __pow(10, count - 1);
     3ce:	69bc      	ldr	r4, [r7, #24]
     3d0:	7dfb      	ldrb	r3, [r7, #23]
     3d2:	3b01      	subs	r3, #1
     3d4:	4619      	mov	r1, r3
     3d6:	200a      	movs	r0, #10
     3d8:	f7ff ff26 	bl	228 <__pow>
     3dc:	4603      	mov	r3, r0
     3de:	fbb4 f3f3 	udiv	r3, r4, r3
     3e2:	71fb      	strb	r3, [r7, #7]
                    r_val %= __pow(10, count - 1);
     3e4:	7dfb      	ldrb	r3, [r7, #23]
     3e6:	3b01      	subs	r3, #1
     3e8:	4619      	mov	r1, r3
     3ea:	200a      	movs	r0, #10
     3ec:	f7ff ff1c 	bl	228 <__pow>
     3f0:	4602      	mov	r2, r0
     3f2:	69bb      	ldr	r3, [r7, #24]
     3f4:	fbb3 f1f2 	udiv	r1, r3, r2
     3f8:	fb02 f201 	mul.w	r2, r2, r1
     3fc:	1a9b      	subs	r3, r3, r2
     3fe:	61bb      	str	r3, [r7, #24]

                    __putchar(ch + '0');
     400:	79fb      	ldrb	r3, [r7, #7]
     402:	f103 0230 	add.w	r2, r3, #48	; 0x30
     406:	4b4c      	ldr	r3, [pc, #304]	; (538 <lite_printf+0x248>)
     408:	601a      	str	r2, [r3, #0]
                    //数字到字符的转换
                    count--;
     40a:	7dfb      	ldrb	r3, [r7, #23]
     40c:	3b01      	subs	r3, #1
     40e:	75fb      	strb	r3, [r7, #23]
                while (count)
     410:	7dfb      	ldrb	r3, [r7, #23]
     412:	2b00      	cmp	r3, #0
     414:	d1db      	bne.n	3ce <lite_printf+0xde>
                }
                break;
     416:	e065      	b.n	4e4 <lite_printf+0x1f4>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     418:	683b      	ldr	r3, [r7, #0]
     41a:	1d1a      	adds	r2, r3, #4
     41c:	603a      	str	r2, [r7, #0]
     41e:	681b      	ldr	r3, [r3, #0]
     420:	60bb      	str	r3, [r7, #8]
                r_val = val;
     422:	68bb      	ldr	r3, [r7, #8]
     424:	61bb      	str	r3, [r7, #24]
                count = 0;
     426:	2300      	movs	r3, #0
     428:	75fb      	strb	r3, [r7, #23]
                while (r_val)
     42a:	e008      	b.n	43e <lite_printf+0x14e>

                {
                    count++; //整数的长度
     42c:	7dfb      	ldrb	r3, [r7, #23]
     42e:	3301      	adds	r3, #1
     430:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
     432:	69bb      	ldr	r3, [r7, #24]
     434:	2b00      	cmp	r3, #0
     436:	da00      	bge.n	43a <lite_printf+0x14a>
     438:	330f      	adds	r3, #15
     43a:	111b      	asrs	r3, r3, #4
     43c:	61bb      	str	r3, [r7, #24]
                while (r_val)
     43e:	69bb      	ldr	r3, [r7, #24]
     440:	2b00      	cmp	r3, #0
     442:	d1f3      	bne.n	42c <lite_printf+0x13c>
                }

                res += count;
     444:	7dfb      	ldrb	r3, [r7, #23]
     446:	693a      	ldr	r2, [r7, #16]
     448:	4413      	add	r3, r2
     44a:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
     44c:	68bb      	ldr	r3, [r7, #8]
     44e:	61bb      	str	r3, [r7, #24]
                while (count)
     450:	e029      	b.n	4a6 <lite_printf+0x1b6>
                {
                    ch = r_val / __pow(16, count - 1);
     452:	69bc      	ldr	r4, [r7, #24]
     454:	7dfb      	ldrb	r3, [r7, #23]
     456:	3b01      	subs	r3, #1
     458:	4619      	mov	r1, r3
     45a:	2010      	movs	r0, #16
     45c:	f7ff fee4 	bl	228 <__pow>
     460:	4603      	mov	r3, r0
     462:	fbb4 f3f3 	udiv	r3, r4, r3
     466:	71fb      	strb	r3, [r7, #7]
                    r_val %= __pow(16, count - 1);
     468:	7dfb      	ldrb	r3, [r7, #23]
     46a:	3b01      	subs	r3, #1
     46c:	4619      	mov	r1, r3
     46e:	2010      	movs	r0, #16
     470:	f7ff feda 	bl	228 <__pow>
     474:	4602      	mov	r2, r0
     476:	69bb      	ldr	r3, [r7, #24]
     478:	fbb3 f1f2 	udiv	r1, r3, r2
     47c:	fb02 f201 	mul.w	r2, r2, r1
     480:	1a9b      	subs	r3, r3, r2
     482:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
     484:	79fb      	ldrb	r3, [r7, #7]
     486:	2b09      	cmp	r3, #9
     488:	d805      	bhi.n	496 <lite_printf+0x1a6>
                        __putchar(ch + '0');
     48a:	79fb      	ldrb	r3, [r7, #7]
     48c:	f103 0230 	add.w	r2, r3, #48	; 0x30
     490:	4b29      	ldr	r3, [pc, #164]	; (538 <lite_printf+0x248>)
     492:	601a      	str	r2, [r3, #0]
     494:	e004      	b.n	4a0 <lite_printf+0x1b0>
                    //数字到字符的转换
                    else
                        __putchar(ch - 10 + 'a');
     496:	79fb      	ldrb	r3, [r7, #7]
     498:	f103 0257 	add.w	r2, r3, #87	; 0x57
     49c:	4b26      	ldr	r3, [pc, #152]	; (538 <lite_printf+0x248>)
     49e:	601a      	str	r2, [r3, #0]
                    count--;
     4a0:	7dfb      	ldrb	r3, [r7, #23]
     4a2:	3b01      	subs	r3, #1
     4a4:	75fb      	strb	r3, [r7, #23]
                while (count)
     4a6:	7dfb      	ldrb	r3, [r7, #23]
     4a8:	2b00      	cmp	r3, #0
     4aa:	d1d2      	bne.n	452 <lite_printf+0x162>
                }
                break;
     4ac:	e01a      	b.n	4e4 <lite_printf+0x1f4>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     4ae:	683b      	ldr	r3, [r7, #0]
     4b0:	1d1a      	adds	r2, r3, #4
     4b2:	603a      	str	r2, [r7, #0]
     4b4:	681b      	ldr	r3, [r3, #0]
     4b6:	60fb      	str	r3, [r7, #12]
                __putstr(s);
     4b8:	68f8      	ldr	r0, [r7, #12]
     4ba:	f7ff feed 	bl	298 <__putstr>
                //字符串,返回值为字符指针
                res += __strlen(s);
     4be:	68f8      	ldr	r0, [r7, #12]
     4c0:	f7ff ff00 	bl	2c4 <__strlen>
     4c4:	4602      	mov	r2, r0
     4c6:	693b      	ldr	r3, [r7, #16]
     4c8:	4413      	add	r3, r2
     4ca:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
     4cc:	e00a      	b.n	4e4 <lite_printf+0x1f4>
            case 'c':
                __putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     4ce:	683b      	ldr	r3, [r7, #0]
     4d0:	1d1a      	adds	r2, r3, #4
     4d2:	603a      	str	r2, [r7, #0]
     4d4:	681b      	ldr	r3, [r3, #0]
     4d6:	b2da      	uxtb	r2, r3
     4d8:	4b17      	ldr	r3, [pc, #92]	; (538 <lite_printf+0x248>)
     4da:	601a      	str	r2, [r3, #0]
                res += 1;
     4dc:	693b      	ldr	r3, [r7, #16]
     4de:	3301      	adds	r3, #1
     4e0:	613b      	str	r3, [r7, #16]

                break;
     4e2:	bf00      	nop
            default:;
            }
            break;
     4e4:	e015      	b.n	512 <lite_printf+0x222>
        case '\n':
            __putchar('\n');
     4e6:	4b14      	ldr	r3, [pc, #80]	; (538 <lite_printf+0x248>)
     4e8:	220a      	movs	r2, #10
     4ea:	601a      	str	r2, [r3, #0]
            res += 1;
     4ec:	693b      	ldr	r3, [r7, #16]
     4ee:	3301      	adds	r3, #1
     4f0:	613b      	str	r3, [r7, #16]
            break;
     4f2:	e00f      	b.n	514 <lite_printf+0x224>
        case '\r':
            __putchar('\r');
     4f4:	4b10      	ldr	r3, [pc, #64]	; (538 <lite_printf+0x248>)
     4f6:	220d      	movs	r2, #13
     4f8:	601a      	str	r2, [r3, #0]
            res += 1;
     4fa:	693b      	ldr	r3, [r7, #16]
     4fc:	3301      	adds	r3, #1
     4fe:	613b      	str	r3, [r7, #16]
            break;
     500:	e008      	b.n	514 <lite_printf+0x224>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            __putchar(*str);
     502:	6abb      	ldr	r3, [r7, #40]	; 0x28
     504:	781a      	ldrb	r2, [r3, #0]
     506:	4b0c      	ldr	r3, [pc, #48]	; (538 <lite_printf+0x248>)
     508:	601a      	str	r2, [r3, #0]
            res += 1;
     50a:	693b      	ldr	r3, [r7, #16]
     50c:	3301      	adds	r3, #1
     50e:	613b      	str	r3, [r7, #16]
     510:	e000      	b.n	514 <lite_printf+0x224>
            break;
     512:	bf00      	nop
        }

        str++;
     514:	6abb      	ldr	r3, [r7, #40]	; 0x28
     516:	3301      	adds	r3, #1
     518:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     51a:	6abb      	ldr	r3, [r7, #40]	; 0x28
     51c:	781b      	ldrb	r3, [r3, #0]
     51e:	2b00      	cmp	r3, #0
     520:	f47f aef2 	bne.w	308 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     524:	693b      	ldr	r3, [r7, #16]
     526:	4618      	mov	r0, r3
     528:	371c      	adds	r7, #28
     52a:	46bd      	mov	sp, r7
     52c:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     530:	b004      	add	sp, #16
     532:	4770      	bx	lr
     534:	66666667 	.word	0x66666667
     538:	4000c000 	.word	0x4000c000

0000053c <test_div>:
#include "backtrace.h"
#include "hal_log.h"
#include "hal_platform.h"

int test_div(void)
{
     53c:	b480      	push	{r7}
     53e:	b083      	sub	sp, #12
     540:	af00      	add	r7, sp, #0
    // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
     542:	4b0a      	ldr	r3, [pc, #40]	; (56c <test_div+0x30>)
     544:	695b      	ldr	r3, [r3, #20]
     546:	4a09      	ldr	r2, [pc, #36]	; (56c <test_div+0x30>)
     548:	f043 0318 	orr.w	r3, r3, #24
     54c:	6153      	str	r3, [r2, #20]

    int a = 1;
     54e:	2301      	movs	r3, #1
     550:	60bb      	str	r3, [r7, #8]
    int b = 0;
     552:	2300      	movs	r3, #0
     554:	607b      	str	r3, [r7, #4]
    int z = a / b;
     556:	68ba      	ldr	r2, [r7, #8]
     558:	687b      	ldr	r3, [r7, #4]
     55a:	fb92 f3f3 	sdiv	r3, r2, r3
     55e:	603b      	str	r3, [r7, #0]

    return z;
     560:	683b      	ldr	r3, [r7, #0]
}
     562:	4618      	mov	r0, r3
     564:	370c      	adds	r7, #12
     566:	46bd      	mov	sp, r7
     568:	bc80      	pop	{r7}
     56a:	4770      	bx	lr
     56c:	e000ed00 	.word	0xe000ed00

00000570 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
     570:	b580      	push	{r7, lr}
     572:	b083      	sub	sp, #12
     574:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
     576:	4b16      	ldr	r3, [pc, #88]	; (5d0 <fault_test_by_unalign+0x60>)
     578:	60bb      	str	r3, [r7, #8]
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
     57a:	68bb      	ldr	r3, [r7, #8]
     57c:	681b      	ldr	r3, [r3, #0]
     57e:	f043 0208 	orr.w	r2, r3, #8
     582:	68bb      	ldr	r3, [r7, #8]
     584:	601a      	str	r2, [r3, #0]

    p = (int *) 0x00;
     586:	2300      	movs	r3, #0
     588:	607b      	str	r3, [r7, #4]
    value = *p;
     58a:	687b      	ldr	r3, [r7, #4]
     58c:	681b      	ldr	r3, [r3, #0]
     58e:	603b      	str	r3, [r7, #0]
    lite_printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     590:	687b      	ldr	r3, [r7, #4]
     592:	683a      	ldr	r2, [r7, #0]
     594:	4619      	mov	r1, r3
     596:	480f      	ldr	r0, [pc, #60]	; (5d4 <fault_test_by_unalign+0x64>)
     598:	f7ff feaa 	bl	2f0 <lite_printf>

    p = (int *) 0x04;
     59c:	2304      	movs	r3, #4
     59e:	607b      	str	r3, [r7, #4]
    value = *p;
     5a0:	687b      	ldr	r3, [r7, #4]
     5a2:	681b      	ldr	r3, [r3, #0]
     5a4:	603b      	str	r3, [r7, #0]
    lite_printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     5a6:	687b      	ldr	r3, [r7, #4]
     5a8:	683a      	ldr	r2, [r7, #0]
     5aa:	4619      	mov	r1, r3
     5ac:	4809      	ldr	r0, [pc, #36]	; (5d4 <fault_test_by_unalign+0x64>)
     5ae:	f7ff fe9f 	bl	2f0 <lite_printf>

    p = (int *) 0x03;
     5b2:	2303      	movs	r3, #3
     5b4:	607b      	str	r3, [r7, #4]
    value = *p;
     5b6:	687b      	ldr	r3, [r7, #4]
     5b8:	681b      	ldr	r3, [r3, #0]
     5ba:	603b      	str	r3, [r7, #0]
    lite_printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     5bc:	687b      	ldr	r3, [r7, #4]
     5be:	683a      	ldr	r2, [r7, #0]
     5c0:	4619      	mov	r1, r3
     5c2:	4804      	ldr	r0, [pc, #16]	; (5d4 <fault_test_by_unalign+0x64>)
     5c4:	f7ff fe94 	bl	2f0 <lite_printf>
}
     5c8:	bf00      	nop
     5ca:	370c      	adds	r7, #12
     5cc:	46bd      	mov	sp, r7
     5ce:	bd80      	pop	{r7, pc}
     5d0:	e000ed14 	.word	0xe000ed14
     5d4:	00001600 	.word	0x00001600

000005d8 <fault_test_by_div0>:

void fault_test_by_div0(void) {
     5d8:	b580      	push	{r7, lr}
     5da:	b084      	sub	sp, #16
     5dc:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
     5de:	4b0c      	ldr	r3, [pc, #48]	; (610 <fault_test_by_div0+0x38>)
     5e0:	60fb      	str	r3, [r7, #12]
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
     5e2:	68fb      	ldr	r3, [r7, #12]
     5e4:	681b      	ldr	r3, [r3, #0]
     5e6:	f043 0210 	orr.w	r2, r3, #16
     5ea:	68fb      	ldr	r3, [r7, #12]
     5ec:	601a      	str	r2, [r3, #0]

    x = 10;
     5ee:	230a      	movs	r3, #10
     5f0:	60bb      	str	r3, [r7, #8]
    y = 0;
     5f2:	2300      	movs	r3, #0
     5f4:	607b      	str	r3, [r7, #4]
    z = x / y;
     5f6:	68ba      	ldr	r2, [r7, #8]
     5f8:	687b      	ldr	r3, [r7, #4]
     5fa:	fb92 f3f3 	sdiv	r3, r2, r3
     5fe:	603b      	str	r3, [r7, #0]
    lite_printf("z:%d\n", z);
     600:	6839      	ldr	r1, [r7, #0]
     602:	4804      	ldr	r0, [pc, #16]	; (614 <fault_test_by_div0+0x3c>)
     604:	f7ff fe74 	bl	2f0 <lite_printf>
}
     608:	bf00      	nop
     60a:	3710      	adds	r7, #16
     60c:	46bd      	mov	sp, r7
     60e:	bd80      	pop	{r7, pc}
     610:	e000ed14 	.word	0xe000ed14
     614:	00001618 	.word	0x00001618

00000618 <dump_stack>:
extern const uint32_t _sstack;
extern const uint32_t _estack;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer) {
     618:	b580      	push	{r7, lr}
     61a:	b083      	sub	sp, #12
     61c:	af00      	add	r7, sp, #0
     61e:	60b8      	str	r0, [r7, #8]
     620:	6079      	str	r1, [r7, #4]
     622:	603a      	str	r2, [r7, #0]
        // if (on_thread_before_fault) {
        //     printf(print_info[PRINT_THREAD_STACK_OVERFLOW], stack_pointer);
        // } else {
        //     printf(print_info[PRINT_MAIN_STACK_OVERFLOW], stack_pointer);
        // }
        if ((uint32_t) stack_pointer < stack_start_addr) {
     624:	683b      	ldr	r3, [r7, #0]
     626:	68ba      	ldr	r2, [r7, #8]
     628:	429a      	cmp	r2, r3
     62a:	d902      	bls.n	632 <dump_stack+0x1a>
            stack_pointer = (uint32_t *) stack_start_addr;
     62c:	68bb      	ldr	r3, [r7, #8]
     62e:	603b      	str	r3, [r7, #0]
     630:	e014      	b.n	65c <dump_stack+0x44>
        } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
     632:	68ba      	ldr	r2, [r7, #8]
     634:	687b      	ldr	r3, [r7, #4]
     636:	441a      	add	r2, r3
     638:	683b      	ldr	r3, [r7, #0]
     63a:	429a      	cmp	r2, r3
     63c:	d20e      	bcs.n	65c <dump_stack+0x44>
            stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
     63e:	68ba      	ldr	r2, [r7, #8]
     640:	687b      	ldr	r3, [r7, #4]
     642:	4413      	add	r3, r2
     644:	603b      	str	r3, [r7, #0]
        }
    // }
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
     646:	e009      	b.n	65c <dump_stack+0x44>
        printf("  addr: %08x    data: %08x\n", stack_pointer, *stack_pointer);
     648:	683b      	ldr	r3, [r7, #0]
     64a:	681b      	ldr	r3, [r3, #0]
     64c:	461a      	mov	r2, r3
     64e:	6839      	ldr	r1, [r7, #0]
     650:	4809      	ldr	r0, [pc, #36]	; (678 <dump_stack+0x60>)
     652:	f000 febd 	bl	13d0 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
     656:	683b      	ldr	r3, [r7, #0]
     658:	3304      	adds	r3, #4
     65a:	603b      	str	r3, [r7, #0]
     65c:	68ba      	ldr	r2, [r7, #8]
     65e:	687b      	ldr	r3, [r7, #4]
     660:	441a      	add	r2, r3
     662:	683b      	ldr	r3, [r7, #0]
     664:	429a      	cmp	r2, r3
     666:	d8ef      	bhi.n	648 <dump_stack+0x30>
    }
    printf("====================================");
     668:	4804      	ldr	r0, [pc, #16]	; (67c <dump_stack+0x64>)
     66a:	f000 feb1 	bl	13d0 <printf_>
}
     66e:	bf00      	nop
     670:	370c      	adds	r7, #12
     672:	46bd      	mov	sp, r7
     674:	bd80      	pop	{r7, pc}
     676:	bf00      	nop
     678:	00001620 	.word	0x00001620
     67c:	0000163c 	.word	0x0000163c

00000680 <backtrace_test>:

void backtrace_test(void)
{
     680:	b590      	push	{r4, r7, lr}
     682:	b087      	sub	sp, #28
     684:	af02      	add	r7, sp, #8

    code_start_addr = (uint32_t)&_stext;
     686:	4a34      	ldr	r2, [pc, #208]	; (758 <backtrace_test+0xd8>)
     688:	4b34      	ldr	r3, [pc, #208]	; (75c <backtrace_test+0xdc>)
     68a:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
     68c:	4a34      	ldr	r2, [pc, #208]	; (760 <backtrace_test+0xe0>)
     68e:	4b35      	ldr	r3, [pc, #212]	; (764 <backtrace_test+0xe4>)
     690:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
     692:	4b34      	ldr	r3, [pc, #208]	; (764 <backtrace_test+0xe4>)
     694:	681a      	ldr	r2, [r3, #0]
     696:	4b31      	ldr	r3, [pc, #196]	; (75c <backtrace_test+0xdc>)
     698:	681b      	ldr	r3, [r3, #0]
     69a:	1ad3      	subs	r3, r2, r3
     69c:	4a32      	ldr	r2, [pc, #200]	; (768 <backtrace_test+0xe8>)
     69e:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
     6a0:	4a32      	ldr	r2, [pc, #200]	; (76c <backtrace_test+0xec>)
     6a2:	4b33      	ldr	r3, [pc, #204]	; (770 <backtrace_test+0xf0>)
     6a4:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
     6a6:	4a33      	ldr	r2, [pc, #204]	; (774 <backtrace_test+0xf4>)
     6a8:	4b33      	ldr	r3, [pc, #204]	; (778 <backtrace_test+0xf8>)
     6aa:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
     6ac:	4b32      	ldr	r3, [pc, #200]	; (778 <backtrace_test+0xf8>)
     6ae:	681a      	ldr	r2, [r3, #0]
     6b0:	4b2f      	ldr	r3, [pc, #188]	; (770 <backtrace_test+0xf0>)
     6b2:	681b      	ldr	r3, [r3, #0]
     6b4:	1ad3      	subs	r3, r2, r3
     6b6:	4a31      	ldr	r2, [pc, #196]	; (77c <backtrace_test+0xfc>)
     6b8:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%x code_end_addr=0x%x code_size=%ld<0x%x>\n", \
     6ba:	4b28      	ldr	r3, [pc, #160]	; (75c <backtrace_test+0xdc>)
     6bc:	6819      	ldr	r1, [r3, #0]
     6be:	4b29      	ldr	r3, [pc, #164]	; (764 <backtrace_test+0xe4>)
     6c0:	6818      	ldr	r0, [r3, #0]
     6c2:	4b29      	ldr	r3, [pc, #164]	; (768 <backtrace_test+0xe8>)
     6c4:	681b      	ldr	r3, [r3, #0]
     6c6:	4a28      	ldr	r2, [pc, #160]	; (768 <backtrace_test+0xe8>)
     6c8:	6812      	ldr	r2, [r2, #0]
     6ca:	9201      	str	r2, [sp, #4]
     6cc:	9300      	str	r3, [sp, #0]
     6ce:	4603      	mov	r3, r0
     6d0:	460a      	mov	r2, r1
     6d2:	492b      	ldr	r1, [pc, #172]	; (780 <backtrace_test+0x100>)
     6d4:	482b      	ldr	r0, [pc, #172]	; (784 <backtrace_test+0x104>)
     6d6:	f000 fe7b 	bl	13d0 <printf_>
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%x stack_end_addr=0x%x stack_size=%ld<0x%x>\n", \
     6da:	4b25      	ldr	r3, [pc, #148]	; (770 <backtrace_test+0xf0>)
     6dc:	6819      	ldr	r1, [r3, #0]
     6de:	4b26      	ldr	r3, [pc, #152]	; (778 <backtrace_test+0xf8>)
     6e0:	6818      	ldr	r0, [r3, #0]
     6e2:	4b26      	ldr	r3, [pc, #152]	; (77c <backtrace_test+0xfc>)
     6e4:	681b      	ldr	r3, [r3, #0]
     6e6:	4a25      	ldr	r2, [pc, #148]	; (77c <backtrace_test+0xfc>)
     6e8:	6812      	ldr	r2, [r2, #0]
     6ea:	9201      	str	r2, [sp, #4]
     6ec:	9300      	str	r3, [sp, #0]
     6ee:	4603      	mov	r3, r0
     6f0:	460a      	mov	r2, r1
     6f2:	4923      	ldr	r1, [pc, #140]	; (780 <backtrace_test+0x100>)
     6f4:	4824      	ldr	r0, [pc, #144]	; (788 <backtrace_test+0x108>)
     6f6:	f000 fe6b 	bl	13d0 <printf_>
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    dump_stack(stack_start_addr, stack_size, cmb_get_sp());
     6fa:	4b1d      	ldr	r3, [pc, #116]	; (770 <backtrace_test+0xf0>)
     6fc:	6818      	ldr	r0, [r3, #0]
     6fe:	4b1f      	ldr	r3, [pc, #124]	; (77c <backtrace_test+0xfc>)
     700:	681b      	ldr	r3, [r3, #0]
        __asm volatile ("MRS %0, psp\n" : "=r" (result) );
        return(result);
    }
    __attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
        register uint32_t result;
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
     702:	466a      	mov	r2, sp
     704:	4614      	mov	r4, r2
        return(result);
     706:	4622      	mov	r2, r4
     708:	4619      	mov	r1, r3
     70a:	f7ff ff85 	bl	618 <dump_stack>

    int bt1 = 0xAA;
     70e:	23aa      	movs	r3, #170	; 0xaa
     710:	60fb      	str	r3, [r7, #12]
    int bt2 = 0x55;
     712:	2355      	movs	r3, #85	; 0x55
     714:	60bb      	str	r3, [r7, #8]
    int bt3 = 0x77;
     716:	2377      	movs	r3, #119	; 0x77
     718:	607b      	str	r3, [r7, #4]
  __ASM volatile ("cpsie i" : : : "memory");
     71a:	b662      	cpsie	i
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
     71c:	466b      	mov	r3, sp
     71e:	461c      	mov	r4, r3
        return(result);
     720:	4623      	mov	r3, r4
    // lite_printf("[%s] start\n", __func__);
    // test_div();
    // fault_test_by_div0();
    // fault_test_by_unalign();
    // lite_printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
     722:	613b      	str	r3, [r7, #16]
    lite_printf("sp=0x%x\n", sp);
     724:	6939      	ldr	r1, [r7, #16]
     726:	4819      	ldr	r0, [pc, #100]	; (78c <backtrace_test+0x10c>)
     728:	f7ff fde2 	bl	2f0 <lite_printf>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
   uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
     72c:	e00c      	b.n	748 <backtrace_test+0xc8>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
     72e:	693b      	ldr	r3, [r7, #16]
     730:	681b      	ldr	r3, [r3, #0]
     732:	603b      	str	r3, [r7, #0]
        if ((addr >= (uint32_t)&_stext) && 
     734:	4a08      	ldr	r2, [pc, #32]	; (758 <backtrace_test+0xd8>)
     736:	683b      	ldr	r3, [r7, #0]
     738:	4293      	cmp	r3, r2
     73a:	d302      	bcc.n	742 <backtrace_test+0xc2>
            (sp <= (uint32_t)&_etext) &&
     73c:	4a08      	ldr	r2, [pc, #32]	; (760 <backtrace_test+0xe0>)
        if ((addr >= (uint32_t)&_stext) && 
     73e:	693b      	ldr	r3, [r7, #16]
     740:	4293      	cmp	r3, r2
            IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
            

        }
        sp += 4;
     742:	693b      	ldr	r3, [r7, #16]
     744:	3304      	adds	r3, #4
     746:	613b      	str	r3, [r7, #16]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
     748:	4a0a      	ldr	r2, [pc, #40]	; (774 <backtrace_test+0xf4>)
     74a:	693b      	ldr	r3, [r7, #16]
     74c:	4293      	cmp	r3, r2
     74e:	d3ee      	bcc.n	72e <backtrace_test+0xae>
    }

     750:	bf00      	nop
     752:	3714      	adds	r7, #20
     754:	46bd      	mov	sp, r7
     756:	bd90      	pop	{r4, r7, pc}
     758:	00000000 	.word	0x00000000
     75c:	20000000 	.word	0x20000000
     760:	00001514 	.word	0x00001514
     764:	20000004 	.word	0x20000004
     768:	20000008 	.word	0x20000008
     76c:	20000018 	.word	0x20000018
     770:	2000000c 	.word	0x2000000c
     774:	20001018 	.word	0x20001018
     778:	20000010 	.word	0x20000010
     77c:	20000014 	.word	0x20000014
     780:	000016fc 	.word	0x000016fc
     784:	00001664 	.word	0x00001664
     788:	000016a8 	.word	0x000016a8
     78c:	000016f0 	.word	0x000016f0

00000790 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     790:	b480      	push	{r7}
     792:	b084      	sub	sp, #16
     794:	af00      	add	r7, sp, #0
     796:	60b9      	str	r1, [r7, #8]
     798:	607a      	str	r2, [r7, #4]
     79a:	603b      	str	r3, [r7, #0]
     79c:	4603      	mov	r3, r0
     79e:	733b      	strb	r3, [r7, #12]
  if (idx < maxlen) {
     7a0:	687a      	ldr	r2, [r7, #4]
     7a2:	683b      	ldr	r3, [r7, #0]
     7a4:	429a      	cmp	r2, r3
     7a6:	d204      	bcs.n	7b2 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     7a8:	68ba      	ldr	r2, [r7, #8]
     7aa:	687b      	ldr	r3, [r7, #4]
     7ac:	4413      	add	r3, r2
     7ae:	7b3a      	ldrb	r2, [r7, #12]
     7b0:	701a      	strb	r2, [r3, #0]
  }
}
     7b2:	bf00      	nop
     7b4:	3710      	adds	r7, #16
     7b6:	46bd      	mov	sp, r7
     7b8:	bc80      	pop	{r7}
     7ba:	4770      	bx	lr

000007bc <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     7bc:	b480      	push	{r7}
     7be:	b084      	sub	sp, #16
     7c0:	af00      	add	r7, sp, #0
     7c2:	60b9      	str	r1, [r7, #8]
     7c4:	607a      	str	r2, [r7, #4]
     7c6:	603b      	str	r3, [r7, #0]
     7c8:	4603      	mov	r3, r0
     7ca:	733b      	strb	r3, [r7, #12]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     7cc:	bf00      	nop
     7ce:	3710      	adds	r7, #16
     7d0:	46bd      	mov	sp, r7
     7d2:	bc80      	pop	{r7}
     7d4:	4770      	bx	lr

000007d6 <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     7d6:	b580      	push	{r7, lr}
     7d8:	b084      	sub	sp, #16
     7da:	af00      	add	r7, sp, #0
     7dc:	60b9      	str	r1, [r7, #8]
     7de:	607a      	str	r2, [r7, #4]
     7e0:	603b      	str	r3, [r7, #0]
     7e2:	4603      	mov	r3, r0
     7e4:	733b      	strb	r3, [r7, #12]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     7e6:	7b3b      	ldrb	r3, [r7, #12]
     7e8:	2b00      	cmp	r3, #0
     7ea:	d003      	beq.n	7f4 <_out_char+0x1e>
    _putchar(character);
     7ec:	7b3b      	ldrb	r3, [r7, #12]
     7ee:	4618      	mov	r0, r3
     7f0:	f7ff fd42 	bl	278 <_putchar>
  }
}
     7f4:	bf00      	nop
     7f6:	3710      	adds	r7, #16
     7f8:	46bd      	mov	sp, r7
     7fa:	bd80      	pop	{r7, pc}

000007fc <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     7fc:	b580      	push	{r7, lr}
     7fe:	b084      	sub	sp, #16
     800:	af00      	add	r7, sp, #0
     802:	60b9      	str	r1, [r7, #8]
     804:	607a      	str	r2, [r7, #4]
     806:	603b      	str	r3, [r7, #0]
     808:	4603      	mov	r3, r0
     80a:	733b      	strb	r3, [r7, #12]
  (void)idx; (void)maxlen;
  if (character) {
     80c:	7b3b      	ldrb	r3, [r7, #12]
     80e:	2b00      	cmp	r3, #0
     810:	d006      	beq.n	820 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     812:	68bb      	ldr	r3, [r7, #8]
     814:	681b      	ldr	r3, [r3, #0]
     816:	7b38      	ldrb	r0, [r7, #12]
     818:	68ba      	ldr	r2, [r7, #8]
     81a:	6852      	ldr	r2, [r2, #4]
     81c:	4611      	mov	r1, r2
     81e:	4798      	blx	r3
  }
}
     820:	bf00      	nop
     822:	3710      	adds	r7, #16
     824:	46bd      	mov	sp, r7
     826:	bd80      	pop	{r7, pc}

00000828 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     828:	b480      	push	{r7}
     82a:	b083      	sub	sp, #12
     82c:	af00      	add	r7, sp, #0
     82e:	6078      	str	r0, [r7, #4]
     830:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     832:	687b      	ldr	r3, [r7, #4]
     834:	60bb      	str	r3, [r7, #8]
     836:	e002      	b.n	83e <_strnlen_s+0x16>
     838:	68bb      	ldr	r3, [r7, #8]
     83a:	3301      	adds	r3, #1
     83c:	60bb      	str	r3, [r7, #8]
     83e:	68bb      	ldr	r3, [r7, #8]
     840:	781b      	ldrb	r3, [r3, #0]
     842:	2b00      	cmp	r3, #0
     844:	d004      	beq.n	850 <_strnlen_s+0x28>
     846:	683b      	ldr	r3, [r7, #0]
     848:	1e5a      	subs	r2, r3, #1
     84a:	603a      	str	r2, [r7, #0]
     84c:	2b00      	cmp	r3, #0
     84e:	d1f3      	bne.n	838 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     850:	68ba      	ldr	r2, [r7, #8]
     852:	687b      	ldr	r3, [r7, #4]
     854:	1ad3      	subs	r3, r2, r3
}
     856:	4618      	mov	r0, r3
     858:	370c      	adds	r7, #12
     85a:	46bd      	mov	sp, r7
     85c:	bc80      	pop	{r7}
     85e:	4770      	bx	lr

00000860 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     860:	b480      	push	{r7}
     862:	b081      	sub	sp, #4
     864:	af00      	add	r7, sp, #0
     866:	4603      	mov	r3, r0
     868:	703b      	strb	r3, [r7, #0]
  return (ch >= '0') && (ch <= '9');
     86a:	783b      	ldrb	r3, [r7, #0]
     86c:	2b2f      	cmp	r3, #47	; 0x2f
     86e:	d904      	bls.n	87a <_is_digit+0x1a>
     870:	783b      	ldrb	r3, [r7, #0]
     872:	2b39      	cmp	r3, #57	; 0x39
     874:	d801      	bhi.n	87a <_is_digit+0x1a>
     876:	2301      	movs	r3, #1
     878:	e000      	b.n	87c <_is_digit+0x1c>
     87a:	2300      	movs	r3, #0
     87c:	f003 0301 	and.w	r3, r3, #1
     880:	b2db      	uxtb	r3, r3
}
     882:	4618      	mov	r0, r3
     884:	3704      	adds	r7, #4
     886:	46bd      	mov	sp, r7
     888:	bc80      	pop	{r7}
     88a:	4770      	bx	lr

0000088c <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     88c:	b580      	push	{r7, lr}
     88e:	b082      	sub	sp, #8
     890:	af00      	add	r7, sp, #0
     892:	6038      	str	r0, [r7, #0]
  unsigned int i = 0U;
     894:	2300      	movs	r3, #0
     896:	607b      	str	r3, [r7, #4]
  while (_is_digit(**str)) {
     898:	e00e      	b.n	8b8 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     89a:	687a      	ldr	r2, [r7, #4]
     89c:	4613      	mov	r3, r2
     89e:	009b      	lsls	r3, r3, #2
     8a0:	4413      	add	r3, r2
     8a2:	005b      	lsls	r3, r3, #1
     8a4:	4618      	mov	r0, r3
     8a6:	683b      	ldr	r3, [r7, #0]
     8a8:	681b      	ldr	r3, [r3, #0]
     8aa:	1c59      	adds	r1, r3, #1
     8ac:	683a      	ldr	r2, [r7, #0]
     8ae:	6011      	str	r1, [r2, #0]
     8b0:	781b      	ldrb	r3, [r3, #0]
     8b2:	4403      	add	r3, r0
     8b4:	3b30      	subs	r3, #48	; 0x30
     8b6:	607b      	str	r3, [r7, #4]
  while (_is_digit(**str)) {
     8b8:	683b      	ldr	r3, [r7, #0]
     8ba:	681b      	ldr	r3, [r3, #0]
     8bc:	781b      	ldrb	r3, [r3, #0]
     8be:	4618      	mov	r0, r3
     8c0:	f7ff ffce 	bl	860 <_is_digit>
     8c4:	4603      	mov	r3, r0
     8c6:	2b00      	cmp	r3, #0
     8c8:	d1e7      	bne.n	89a <_atoi+0xe>
  }
  return i;
     8ca:	687b      	ldr	r3, [r7, #4]
}
     8cc:	4618      	mov	r0, r3
     8ce:	3708      	adds	r7, #8
     8d0:	46bd      	mov	sp, r7
     8d2:	bd80      	pop	{r7, pc}

000008d4 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     8d4:	b590      	push	{r4, r7, lr}
     8d6:	b086      	sub	sp, #24
     8d8:	af00      	add	r7, sp, #0
     8da:	60f8      	str	r0, [r7, #12]
     8dc:	60b9      	str	r1, [r7, #8]
     8de:	607a      	str	r2, [r7, #4]
     8e0:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     8e2:	687b      	ldr	r3, [r7, #4]
     8e4:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     8e6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8e8:	f003 0302 	and.w	r3, r3, #2
     8ec:	2b00      	cmp	r3, #0
     8ee:	d126      	bne.n	93e <_out_rev+0x6a>
     8f0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8f2:	f003 0301 	and.w	r3, r3, #1
     8f6:	2b00      	cmp	r3, #0
     8f8:	d121      	bne.n	93e <_out_rev+0x6a>
    for (size_t i = len; i < width; i++) {
     8fa:	6abb      	ldr	r3, [r7, #40]	; 0x28
     8fc:	617b      	str	r3, [r7, #20]
     8fe:	e00a      	b.n	916 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     900:	687a      	ldr	r2, [r7, #4]
     902:	1c53      	adds	r3, r2, #1
     904:	607b      	str	r3, [r7, #4]
     906:	68fc      	ldr	r4, [r7, #12]
     908:	683b      	ldr	r3, [r7, #0]
     90a:	68b9      	ldr	r1, [r7, #8]
     90c:	2020      	movs	r0, #32
     90e:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     910:	697b      	ldr	r3, [r7, #20]
     912:	3301      	adds	r3, #1
     914:	617b      	str	r3, [r7, #20]
     916:	697a      	ldr	r2, [r7, #20]
     918:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     91a:	429a      	cmp	r2, r3
     91c:	d3f0      	bcc.n	900 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     91e:	e00e      	b.n	93e <_out_rev+0x6a>
    out(buf[--len], buffer, idx++, maxlen);
     920:	6abb      	ldr	r3, [r7, #40]	; 0x28
     922:	3b01      	subs	r3, #1
     924:	62bb      	str	r3, [r7, #40]	; 0x28
     926:	6a7a      	ldr	r2, [r7, #36]	; 0x24
     928:	6abb      	ldr	r3, [r7, #40]	; 0x28
     92a:	4413      	add	r3, r2
     92c:	781b      	ldrb	r3, [r3, #0]
     92e:	4618      	mov	r0, r3
     930:	687a      	ldr	r2, [r7, #4]
     932:	1c53      	adds	r3, r2, #1
     934:	607b      	str	r3, [r7, #4]
     936:	68fc      	ldr	r4, [r7, #12]
     938:	683b      	ldr	r3, [r7, #0]
     93a:	68b9      	ldr	r1, [r7, #8]
     93c:	47a0      	blx	r4
  while (len) {
     93e:	6abb      	ldr	r3, [r7, #40]	; 0x28
     940:	2b00      	cmp	r3, #0
     942:	d1ed      	bne.n	920 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     944:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     946:	f003 0302 	and.w	r3, r3, #2
     94a:	2b00      	cmp	r3, #0
     94c:	d00e      	beq.n	96c <_out_rev+0x98>
    while (idx - start_idx < width) {
     94e:	e007      	b.n	960 <_out_rev+0x8c>
      out(' ', buffer, idx++, maxlen);
     950:	687a      	ldr	r2, [r7, #4]
     952:	1c53      	adds	r3, r2, #1
     954:	607b      	str	r3, [r7, #4]
     956:	68fc      	ldr	r4, [r7, #12]
     958:	683b      	ldr	r3, [r7, #0]
     95a:	68b9      	ldr	r1, [r7, #8]
     95c:	2020      	movs	r0, #32
     95e:	47a0      	blx	r4
    while (idx - start_idx < width) {
     960:	687a      	ldr	r2, [r7, #4]
     962:	693b      	ldr	r3, [r7, #16]
     964:	1ad3      	subs	r3, r2, r3
     966:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     968:	429a      	cmp	r2, r3
     96a:	d8f1      	bhi.n	950 <_out_rev+0x7c>
    }
  }

  return idx;
     96c:	687b      	ldr	r3, [r7, #4]
}
     96e:	4618      	mov	r0, r3
     970:	3718      	adds	r7, #24
     972:	46bd      	mov	sp, r7
     974:	bd90      	pop	{r4, r7, pc}

00000976 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     976:	b580      	push	{r7, lr}
     978:	b089      	sub	sp, #36	; 0x24
     97a:	af04      	add	r7, sp, #16
     97c:	6138      	str	r0, [r7, #16]
     97e:	60f9      	str	r1, [r7, #12]
     980:	60ba      	str	r2, [r7, #8]
     982:	607b      	str	r3, [r7, #4]
     984:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     986:	703b      	strb	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     988:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     98a:	f003 0302 	and.w	r3, r3, #2
     98e:	2b00      	cmp	r3, #0
     990:	d135      	bne.n	9fe <_ntoa_format+0x88>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     992:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     994:	2b00      	cmp	r3, #0
     996:	d017      	beq.n	9c8 <_ntoa_format+0x52>
     998:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     99a:	f003 0301 	and.w	r3, r3, #1
     99e:	2b00      	cmp	r3, #0
     9a0:	d012      	beq.n	9c8 <_ntoa_format+0x52>
     9a2:	783b      	ldrb	r3, [r7, #0]
     9a4:	2b00      	cmp	r3, #0
     9a6:	d104      	bne.n	9b2 <_ntoa_format+0x3c>
     9a8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9aa:	f003 030c 	and.w	r3, r3, #12
     9ae:	2b00      	cmp	r3, #0
     9b0:	d00a      	beq.n	9c8 <_ntoa_format+0x52>
      width--;
     9b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     9b4:	3b01      	subs	r3, #1
     9b6:	633b      	str	r3, [r7, #48]	; 0x30
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     9b8:	e006      	b.n	9c8 <_ntoa_format+0x52>
      buf[len++] = '0';
     9ba:	6a3b      	ldr	r3, [r7, #32]
     9bc:	1c5a      	adds	r2, r3, #1
     9be:	623a      	str	r2, [r7, #32]
     9c0:	69fa      	ldr	r2, [r7, #28]
     9c2:	4413      	add	r3, r2
     9c4:	2230      	movs	r2, #48	; 0x30
     9c6:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     9c8:	6a3a      	ldr	r2, [r7, #32]
     9ca:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9cc:	429a      	cmp	r2, r3
     9ce:	d20a      	bcs.n	9e6 <_ntoa_format+0x70>
     9d0:	6a3b      	ldr	r3, [r7, #32]
     9d2:	2b1f      	cmp	r3, #31
     9d4:	d9f1      	bls.n	9ba <_ntoa_format+0x44>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     9d6:	e006      	b.n	9e6 <_ntoa_format+0x70>
      buf[len++] = '0';
     9d8:	6a3b      	ldr	r3, [r7, #32]
     9da:	1c5a      	adds	r2, r3, #1
     9dc:	623a      	str	r2, [r7, #32]
     9de:	69fa      	ldr	r2, [r7, #28]
     9e0:	4413      	add	r3, r2
     9e2:	2230      	movs	r2, #48	; 0x30
     9e4:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     9e6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9e8:	f003 0301 	and.w	r3, r3, #1
     9ec:	2b00      	cmp	r3, #0
     9ee:	d006      	beq.n	9fe <_ntoa_format+0x88>
     9f0:	6a3a      	ldr	r2, [r7, #32]
     9f2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     9f4:	429a      	cmp	r2, r3
     9f6:	d202      	bcs.n	9fe <_ntoa_format+0x88>
     9f8:	6a3b      	ldr	r3, [r7, #32]
     9fa:	2b1f      	cmp	r3, #31
     9fc:	d9ec      	bls.n	9d8 <_ntoa_format+0x62>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     9fe:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a00:	f003 0310 	and.w	r3, r3, #16
     a04:	2b00      	cmp	r3, #0
     a06:	d058      	beq.n	aba <_ntoa_format+0x144>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     a08:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a0a:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     a0e:	2b00      	cmp	r3, #0
     a10:	d116      	bne.n	a40 <_ntoa_format+0xca>
     a12:	6a3b      	ldr	r3, [r7, #32]
     a14:	2b00      	cmp	r3, #0
     a16:	d013      	beq.n	a40 <_ntoa_format+0xca>
     a18:	6a3a      	ldr	r2, [r7, #32]
     a1a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     a1c:	429a      	cmp	r2, r3
     a1e:	d003      	beq.n	a28 <_ntoa_format+0xb2>
     a20:	6a3a      	ldr	r2, [r7, #32]
     a22:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     a24:	429a      	cmp	r2, r3
     a26:	d10b      	bne.n	a40 <_ntoa_format+0xca>
      len--;
     a28:	6a3b      	ldr	r3, [r7, #32]
     a2a:	3b01      	subs	r3, #1
     a2c:	623b      	str	r3, [r7, #32]
      if (len && (base == 16U)) {
     a2e:	6a3b      	ldr	r3, [r7, #32]
     a30:	2b00      	cmp	r3, #0
     a32:	d005      	beq.n	a40 <_ntoa_format+0xca>
     a34:	6abb      	ldr	r3, [r7, #40]	; 0x28
     a36:	2b10      	cmp	r3, #16
     a38:	d102      	bne.n	a40 <_ntoa_format+0xca>
        len--;
     a3a:	6a3b      	ldr	r3, [r7, #32]
     a3c:	3b01      	subs	r3, #1
     a3e:	623b      	str	r3, [r7, #32]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a40:	6abb      	ldr	r3, [r7, #40]	; 0x28
     a42:	2b10      	cmp	r3, #16
     a44:	d10f      	bne.n	a66 <_ntoa_format+0xf0>
     a46:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a48:	f003 0320 	and.w	r3, r3, #32
     a4c:	2b00      	cmp	r3, #0
     a4e:	d10a      	bne.n	a66 <_ntoa_format+0xf0>
     a50:	6a3b      	ldr	r3, [r7, #32]
     a52:	2b1f      	cmp	r3, #31
     a54:	d807      	bhi.n	a66 <_ntoa_format+0xf0>
      buf[len++] = 'x';
     a56:	6a3b      	ldr	r3, [r7, #32]
     a58:	1c5a      	adds	r2, r3, #1
     a5a:	623a      	str	r2, [r7, #32]
     a5c:	69fa      	ldr	r2, [r7, #28]
     a5e:	4413      	add	r3, r2
     a60:	2278      	movs	r2, #120	; 0x78
     a62:	701a      	strb	r2, [r3, #0]
     a64:	e01f      	b.n	aa6 <_ntoa_format+0x130>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a66:	6abb      	ldr	r3, [r7, #40]	; 0x28
     a68:	2b10      	cmp	r3, #16
     a6a:	d10f      	bne.n	a8c <_ntoa_format+0x116>
     a6c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     a6e:	f003 0320 	and.w	r3, r3, #32
     a72:	2b00      	cmp	r3, #0
     a74:	d00a      	beq.n	a8c <_ntoa_format+0x116>
     a76:	6a3b      	ldr	r3, [r7, #32]
     a78:	2b1f      	cmp	r3, #31
     a7a:	d807      	bhi.n	a8c <_ntoa_format+0x116>
      buf[len++] = 'X';
     a7c:	6a3b      	ldr	r3, [r7, #32]
     a7e:	1c5a      	adds	r2, r3, #1
     a80:	623a      	str	r2, [r7, #32]
     a82:	69fa      	ldr	r2, [r7, #28]
     a84:	4413      	add	r3, r2
     a86:	2258      	movs	r2, #88	; 0x58
     a88:	701a      	strb	r2, [r3, #0]
     a8a:	e00c      	b.n	aa6 <_ntoa_format+0x130>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a8c:	6abb      	ldr	r3, [r7, #40]	; 0x28
     a8e:	2b02      	cmp	r3, #2
     a90:	d109      	bne.n	aa6 <_ntoa_format+0x130>
     a92:	6a3b      	ldr	r3, [r7, #32]
     a94:	2b1f      	cmp	r3, #31
     a96:	d806      	bhi.n	aa6 <_ntoa_format+0x130>
      buf[len++] = 'b';
     a98:	6a3b      	ldr	r3, [r7, #32]
     a9a:	1c5a      	adds	r2, r3, #1
     a9c:	623a      	str	r2, [r7, #32]
     a9e:	69fa      	ldr	r2, [r7, #28]
     aa0:	4413      	add	r3, r2
     aa2:	2262      	movs	r2, #98	; 0x62
     aa4:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     aa6:	6a3b      	ldr	r3, [r7, #32]
     aa8:	2b1f      	cmp	r3, #31
     aaa:	d806      	bhi.n	aba <_ntoa_format+0x144>
      buf[len++] = '0';
     aac:	6a3b      	ldr	r3, [r7, #32]
     aae:	1c5a      	adds	r2, r3, #1
     ab0:	623a      	str	r2, [r7, #32]
     ab2:	69fa      	ldr	r2, [r7, #28]
     ab4:	4413      	add	r3, r2
     ab6:	2230      	movs	r2, #48	; 0x30
     ab8:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     aba:	6a3b      	ldr	r3, [r7, #32]
     abc:	2b1f      	cmp	r3, #31
     abe:	d823      	bhi.n	b08 <_ntoa_format+0x192>
    if (negative) {
     ac0:	783b      	ldrb	r3, [r7, #0]
     ac2:	2b00      	cmp	r3, #0
     ac4:	d007      	beq.n	ad6 <_ntoa_format+0x160>
      buf[len++] = '-';
     ac6:	6a3b      	ldr	r3, [r7, #32]
     ac8:	1c5a      	adds	r2, r3, #1
     aca:	623a      	str	r2, [r7, #32]
     acc:	69fa      	ldr	r2, [r7, #28]
     ace:	4413      	add	r3, r2
     ad0:	222d      	movs	r2, #45	; 0x2d
     ad2:	701a      	strb	r2, [r3, #0]
     ad4:	e018      	b.n	b08 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     ad6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     ad8:	f003 0304 	and.w	r3, r3, #4
     adc:	2b00      	cmp	r3, #0
     ade:	d007      	beq.n	af0 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     ae0:	6a3b      	ldr	r3, [r7, #32]
     ae2:	1c5a      	adds	r2, r3, #1
     ae4:	623a      	str	r2, [r7, #32]
     ae6:	69fa      	ldr	r2, [r7, #28]
     ae8:	4413      	add	r3, r2
     aea:	222b      	movs	r2, #43	; 0x2b
     aec:	701a      	strb	r2, [r3, #0]
     aee:	e00b      	b.n	b08 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     af0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     af2:	f003 0308 	and.w	r3, r3, #8
     af6:	2b00      	cmp	r3, #0
     af8:	d006      	beq.n	b08 <_ntoa_format+0x192>
      buf[len++] = ' ';
     afa:	6a3b      	ldr	r3, [r7, #32]
     afc:	1c5a      	adds	r2, r3, #1
     afe:	623a      	str	r2, [r7, #32]
     b00:	69fa      	ldr	r2, [r7, #28]
     b02:	4413      	add	r3, r2
     b04:	2220      	movs	r2, #32
     b06:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     b08:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     b0a:	9303      	str	r3, [sp, #12]
     b0c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b0e:	9302      	str	r3, [sp, #8]
     b10:	6a3b      	ldr	r3, [r7, #32]
     b12:	9301      	str	r3, [sp, #4]
     b14:	69fb      	ldr	r3, [r7, #28]
     b16:	9300      	str	r3, [sp, #0]
     b18:	687b      	ldr	r3, [r7, #4]
     b1a:	68ba      	ldr	r2, [r7, #8]
     b1c:	68f9      	ldr	r1, [r7, #12]
     b1e:	6938      	ldr	r0, [r7, #16]
     b20:	f7ff fed8 	bl	8d4 <_out_rev>
     b24:	4603      	mov	r3, r0
}
     b26:	4618      	mov	r0, r3
     b28:	3714      	adds	r7, #20
     b2a:	46bd      	mov	sp, r7
     b2c:	bd80      	pop	{r7, pc}

00000b2e <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     b2e:	b580      	push	{r7, lr}
     b30:	b096      	sub	sp, #88	; 0x58
     b32:	af07      	add	r7, sp, #28
     b34:	6138      	str	r0, [r7, #16]
     b36:	60f9      	str	r1, [r7, #12]
     b38:	60ba      	str	r2, [r7, #8]
     b3a:	607b      	str	r3, [r7, #4]
     b3c:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     b3e:	703b      	strb	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     b40:	2300      	movs	r3, #0
     b42:	63bb      	str	r3, [r7, #56]	; 0x38

  // no hash for 0 values
  if (!value) {
     b44:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b46:	2b00      	cmp	r3, #0
     b48:	d103      	bne.n	b52 <_ntoa_long+0x24>
    flags &= ~FLAGS_HASH;
     b4a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b4c:	f023 0310 	bic.w	r3, r3, #16
     b50:	65bb      	str	r3, [r7, #88]	; 0x58
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     b52:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b54:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     b58:	2b00      	cmp	r3, #0
     b5a:	d002      	beq.n	b62 <_ntoa_long+0x34>
     b5c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b5e:	2b00      	cmp	r3, #0
     b60:	d033      	beq.n	bca <_ntoa_long+0x9c>
    do {
      const char digit = (char)(value % base);
     b62:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b64:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
     b66:	fbb3 f2f2 	udiv	r2, r3, r2
     b6a:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
     b6c:	fb01 f202 	mul.w	r2, r1, r2
     b70:	1a9b      	subs	r3, r3, r2
     b72:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     b76:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
     b7a:	2b09      	cmp	r3, #9
     b7c:	d804      	bhi.n	b88 <_ntoa_long+0x5a>
     b7e:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
     b82:	3330      	adds	r3, #48	; 0x30
     b84:	b2da      	uxtb	r2, r3
     b86:	e00d      	b.n	ba4 <_ntoa_long+0x76>
     b88:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     b8a:	f003 0320 	and.w	r3, r3, #32
     b8e:	2b00      	cmp	r3, #0
     b90:	d001      	beq.n	b96 <_ntoa_long+0x68>
     b92:	2241      	movs	r2, #65	; 0x41
     b94:	e000      	b.n	b98 <_ntoa_long+0x6a>
     b96:	2261      	movs	r2, #97	; 0x61
     b98:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
     b9c:	4413      	add	r3, r2
     b9e:	b2db      	uxtb	r3, r3
     ba0:	3b0a      	subs	r3, #10
     ba2:	b2da      	uxtb	r2, r3
     ba4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     ba6:	1c59      	adds	r1, r3, #1
     ba8:	63b9      	str	r1, [r7, #56]	; 0x38
     baa:	f107 013c 	add.w	r1, r7, #60	; 0x3c
     bae:	440b      	add	r3, r1
     bb0:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     bb4:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     bb6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     bb8:	fbb2 f3f3 	udiv	r3, r2, r3
     bbc:	647b      	str	r3, [r7, #68]	; 0x44
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     bbe:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     bc0:	2b00      	cmp	r3, #0
     bc2:	d002      	beq.n	bca <_ntoa_long+0x9c>
     bc4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     bc6:	2b1f      	cmp	r3, #31
     bc8:	d9cb      	bls.n	b62 <_ntoa_long+0x34>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     bca:	783b      	ldrb	r3, [r7, #0]
     bcc:	6dba      	ldr	r2, [r7, #88]	; 0x58
     bce:	9206      	str	r2, [sp, #24]
     bd0:	6d7a      	ldr	r2, [r7, #84]	; 0x54
     bd2:	9205      	str	r2, [sp, #20]
     bd4:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     bd6:	9204      	str	r2, [sp, #16]
     bd8:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
     bda:	9203      	str	r2, [sp, #12]
     bdc:	9302      	str	r3, [sp, #8]
     bde:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     be0:	9301      	str	r3, [sp, #4]
     be2:	f107 0314 	add.w	r3, r7, #20
     be6:	9300      	str	r3, [sp, #0]
     be8:	687b      	ldr	r3, [r7, #4]
     bea:	68ba      	ldr	r2, [r7, #8]
     bec:	68f9      	ldr	r1, [r7, #12]
     bee:	6938      	ldr	r0, [r7, #16]
     bf0:	f7ff fec1 	bl	976 <_ntoa_format>
     bf4:	4603      	mov	r3, r0
}
     bf6:	4618      	mov	r0, r3
     bf8:	373c      	adds	r7, #60	; 0x3c
     bfa:	46bd      	mov	sp, r7
     bfc:	bd80      	pop	{r7, pc}

00000bfe <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     bfe:	b590      	push	{r4, r7, lr}
     c00:	b098      	sub	sp, #96	; 0x60
     c02:	af06      	add	r7, sp, #24
     c04:	60f8      	str	r0, [r7, #12]
     c06:	60b9      	str	r1, [r7, #8]
     c08:	607a      	str	r2, [r7, #4]
     c0a:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     c0c:	2300      	movs	r3, #0
     c0e:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     c10:	68bb      	ldr	r3, [r7, #8]
     c12:	2b00      	cmp	r3, #0
     c14:	f040 83c5 	bne.w	13a2 <_vsnprintf+0x7a4>
    // use null output function
    out = _out_null;
     c18:	4b9f      	ldr	r3, [pc, #636]	; (e98 <_vsnprintf+0x29a>)
     c1a:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     c1c:	e3c1      	b.n	13a2 <_vsnprintf+0x7a4>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     c1e:	683b      	ldr	r3, [r7, #0]
     c20:	781b      	ldrb	r3, [r3, #0]
     c22:	2b25      	cmp	r3, #37	; 0x25
     c24:	d00d      	beq.n	c42 <_vsnprintf+0x44>
      // no
      out(*format, buffer, idx++, maxlen);
     c26:	683b      	ldr	r3, [r7, #0]
     c28:	781b      	ldrb	r3, [r3, #0]
     c2a:	4618      	mov	r0, r3
     c2c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     c2e:	1c53      	adds	r3, r2, #1
     c30:	637b      	str	r3, [r7, #52]	; 0x34
     c32:	68fc      	ldr	r4, [r7, #12]
     c34:	687b      	ldr	r3, [r7, #4]
     c36:	68b9      	ldr	r1, [r7, #8]
     c38:	47a0      	blx	r4
      format++;
     c3a:	683b      	ldr	r3, [r7, #0]
     c3c:	3301      	adds	r3, #1
     c3e:	603b      	str	r3, [r7, #0]
      continue;
     c40:	e3af      	b.n	13a2 <_vsnprintf+0x7a4>
    }
    else {
      // yes, evaluate it
      format++;
     c42:	683b      	ldr	r3, [r7, #0]
     c44:	3301      	adds	r3, #1
     c46:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     c48:	2300      	movs	r3, #0
     c4a:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     c4c:	683b      	ldr	r3, [r7, #0]
     c4e:	781b      	ldrb	r3, [r3, #0]
     c50:	3b20      	subs	r3, #32
     c52:	2b10      	cmp	r3, #16
     c54:	d856      	bhi.n	d04 <_vsnprintf+0x106>
     c56:	a201      	add	r2, pc, #4	; (adr r2, c5c <_vsnprintf+0x5e>)
     c58:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     c5c:	00000cdd 	.word	0x00000cdd
     c60:	00000d05 	.word	0x00000d05
     c64:	00000d05 	.word	0x00000d05
     c68:	00000cf1 	.word	0x00000cf1
     c6c:	00000d05 	.word	0x00000d05
     c70:	00000d05 	.word	0x00000d05
     c74:	00000d05 	.word	0x00000d05
     c78:	00000d05 	.word	0x00000d05
     c7c:	00000d05 	.word	0x00000d05
     c80:	00000d05 	.word	0x00000d05
     c84:	00000d05 	.word	0x00000d05
     c88:	00000cc9 	.word	0x00000cc9
     c8c:	00000d05 	.word	0x00000d05
     c90:	00000cb5 	.word	0x00000cb5
     c94:	00000d05 	.word	0x00000d05
     c98:	00000d05 	.word	0x00000d05
     c9c:	00000ca1 	.word	0x00000ca1
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     ca0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ca2:	f043 0301 	orr.w	r3, r3, #1
     ca6:	647b      	str	r3, [r7, #68]	; 0x44
     ca8:	683b      	ldr	r3, [r7, #0]
     caa:	3301      	adds	r3, #1
     cac:	603b      	str	r3, [r7, #0]
     cae:	2301      	movs	r3, #1
     cb0:	63bb      	str	r3, [r7, #56]	; 0x38
     cb2:	e02a      	b.n	d0a <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     cb4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cb6:	f043 0302 	orr.w	r3, r3, #2
     cba:	647b      	str	r3, [r7, #68]	; 0x44
     cbc:	683b      	ldr	r3, [r7, #0]
     cbe:	3301      	adds	r3, #1
     cc0:	603b      	str	r3, [r7, #0]
     cc2:	2301      	movs	r3, #1
     cc4:	63bb      	str	r3, [r7, #56]	; 0x38
     cc6:	e020      	b.n	d0a <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     cc8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cca:	f043 0304 	orr.w	r3, r3, #4
     cce:	647b      	str	r3, [r7, #68]	; 0x44
     cd0:	683b      	ldr	r3, [r7, #0]
     cd2:	3301      	adds	r3, #1
     cd4:	603b      	str	r3, [r7, #0]
     cd6:	2301      	movs	r3, #1
     cd8:	63bb      	str	r3, [r7, #56]	; 0x38
     cda:	e016      	b.n	d0a <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     cdc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cde:	f043 0308 	orr.w	r3, r3, #8
     ce2:	647b      	str	r3, [r7, #68]	; 0x44
     ce4:	683b      	ldr	r3, [r7, #0]
     ce6:	3301      	adds	r3, #1
     ce8:	603b      	str	r3, [r7, #0]
     cea:	2301      	movs	r3, #1
     cec:	63bb      	str	r3, [r7, #56]	; 0x38
     cee:	e00c      	b.n	d0a <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     cf0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     cf2:	f043 0310 	orr.w	r3, r3, #16
     cf6:	647b      	str	r3, [r7, #68]	; 0x44
     cf8:	683b      	ldr	r3, [r7, #0]
     cfa:	3301      	adds	r3, #1
     cfc:	603b      	str	r3, [r7, #0]
     cfe:	2301      	movs	r3, #1
     d00:	63bb      	str	r3, [r7, #56]	; 0x38
     d02:	e002      	b.n	d0a <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     d04:	2300      	movs	r3, #0
     d06:	63bb      	str	r3, [r7, #56]	; 0x38
     d08:	bf00      	nop
      }
    } while (n);
     d0a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     d0c:	2b00      	cmp	r3, #0
     d0e:	d19d      	bne.n	c4c <_vsnprintf+0x4e>

    // evaluate width field
    width = 0U;
     d10:	2300      	movs	r3, #0
     d12:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     d14:	683b      	ldr	r3, [r7, #0]
     d16:	781b      	ldrb	r3, [r3, #0]
     d18:	4618      	mov	r0, r3
     d1a:	f7ff fda1 	bl	860 <_is_digit>
     d1e:	4603      	mov	r3, r0
     d20:	2b00      	cmp	r3, #0
     d22:	d005      	beq.n	d30 <_vsnprintf+0x132>
      width = _atoi(&format);
     d24:	463b      	mov	r3, r7
     d26:	4618      	mov	r0, r3
     d28:	f7ff fdb0 	bl	88c <_atoi>
     d2c:	6438      	str	r0, [r7, #64]	; 0x40
     d2e:	e018      	b.n	d62 <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     d30:	683b      	ldr	r3, [r7, #0]
     d32:	781b      	ldrb	r3, [r3, #0]
     d34:	2b2a      	cmp	r3, #42	; 0x2a
     d36:	d114      	bne.n	d62 <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     d38:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     d3a:	1d1a      	adds	r2, r3, #4
     d3c:	657a      	str	r2, [r7, #84]	; 0x54
     d3e:	681b      	ldr	r3, [r3, #0]
     d40:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     d42:	6a3b      	ldr	r3, [r7, #32]
     d44:	2b00      	cmp	r3, #0
     d46:	da07      	bge.n	d58 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     d48:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d4a:	f043 0302 	orr.w	r3, r3, #2
     d4e:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     d50:	6a3b      	ldr	r3, [r7, #32]
     d52:	425b      	negs	r3, r3
     d54:	643b      	str	r3, [r7, #64]	; 0x40
     d56:	e001      	b.n	d5c <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     d58:	6a3b      	ldr	r3, [r7, #32]
     d5a:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     d5c:	683b      	ldr	r3, [r7, #0]
     d5e:	3301      	adds	r3, #1
     d60:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     d62:	2300      	movs	r3, #0
     d64:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     d66:	683b      	ldr	r3, [r7, #0]
     d68:	781b      	ldrb	r3, [r3, #0]
     d6a:	2b2e      	cmp	r3, #46	; 0x2e
     d6c:	d124      	bne.n	db8 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     d6e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d70:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     d74:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     d76:	683b      	ldr	r3, [r7, #0]
     d78:	3301      	adds	r3, #1
     d7a:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     d7c:	683b      	ldr	r3, [r7, #0]
     d7e:	781b      	ldrb	r3, [r3, #0]
     d80:	4618      	mov	r0, r3
     d82:	f7ff fd6d 	bl	860 <_is_digit>
     d86:	4603      	mov	r3, r0
     d88:	2b00      	cmp	r3, #0
     d8a:	d005      	beq.n	d98 <_vsnprintf+0x19a>
        precision = _atoi(&format);
     d8c:	463b      	mov	r3, r7
     d8e:	4618      	mov	r0, r3
     d90:	f7ff fd7c 	bl	88c <_atoi>
     d94:	63f8      	str	r0, [r7, #60]	; 0x3c
     d96:	e00f      	b.n	db8 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     d98:	683b      	ldr	r3, [r7, #0]
     d9a:	781b      	ldrb	r3, [r3, #0]
     d9c:	2b2a      	cmp	r3, #42	; 0x2a
     d9e:	d10b      	bne.n	db8 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     da0:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     da2:	1d1a      	adds	r2, r3, #4
     da4:	657a      	str	r2, [r7, #84]	; 0x54
     da6:	681b      	ldr	r3, [r3, #0]
     da8:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     daa:	69fb      	ldr	r3, [r7, #28]
     dac:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     db0:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     db2:	683b      	ldr	r3, [r7, #0]
     db4:	3301      	adds	r3, #1
     db6:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     db8:	683b      	ldr	r3, [r7, #0]
     dba:	781b      	ldrb	r3, [r3, #0]
     dbc:	3b68      	subs	r3, #104	; 0x68
     dbe:	2b12      	cmp	r3, #18
     dc0:	d866      	bhi.n	e90 <_vsnprintf+0x292>
     dc2:	a201      	add	r2, pc, #4	; (adr r2, dc8 <_vsnprintf+0x1ca>)
     dc4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     dc8:	00000e3b 	.word	0x00000e3b
     dcc:	00000e91 	.word	0x00000e91
     dd0:	00000e71 	.word	0x00000e71
     dd4:	00000e91 	.word	0x00000e91
     dd8:	00000e15 	.word	0x00000e15
     ddc:	00000e91 	.word	0x00000e91
     de0:	00000e91 	.word	0x00000e91
     de4:	00000e91 	.word	0x00000e91
     de8:	00000e91 	.word	0x00000e91
     dec:	00000e91 	.word	0x00000e91
     df0:	00000e91 	.word	0x00000e91
     df4:	00000e91 	.word	0x00000e91
     df8:	00000e61 	.word	0x00000e61
     dfc:	00000e91 	.word	0x00000e91
     e00:	00000e91 	.word	0x00000e91
     e04:	00000e91 	.word	0x00000e91
     e08:	00000e91 	.word	0x00000e91
     e0c:	00000e91 	.word	0x00000e91
     e10:	00000e81 	.word	0x00000e81
      case 'l' :
        flags |= FLAGS_LONG;
     e14:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e16:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     e1a:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     e1c:	683b      	ldr	r3, [r7, #0]
     e1e:	3301      	adds	r3, #1
     e20:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     e22:	683b      	ldr	r3, [r7, #0]
     e24:	781b      	ldrb	r3, [r3, #0]
     e26:	2b6c      	cmp	r3, #108	; 0x6c
     e28:	d134      	bne.n	e94 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     e2a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e2c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     e30:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     e32:	683b      	ldr	r3, [r7, #0]
     e34:	3301      	adds	r3, #1
     e36:	603b      	str	r3, [r7, #0]
        }
        break;
     e38:	e02c      	b.n	e94 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     e3a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e3c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     e40:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     e42:	683b      	ldr	r3, [r7, #0]
     e44:	3301      	adds	r3, #1
     e46:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     e48:	683b      	ldr	r3, [r7, #0]
     e4a:	781b      	ldrb	r3, [r3, #0]
     e4c:	2b68      	cmp	r3, #104	; 0x68
     e4e:	d125      	bne.n	e9c <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     e50:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e52:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     e56:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     e58:	683b      	ldr	r3, [r7, #0]
     e5a:	3301      	adds	r3, #1
     e5c:	603b      	str	r3, [r7, #0]
        }
        break;
     e5e:	e01d      	b.n	e9c <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     e60:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e62:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     e66:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     e68:	683b      	ldr	r3, [r7, #0]
     e6a:	3301      	adds	r3, #1
     e6c:	603b      	str	r3, [r7, #0]
        break;
     e6e:	e016      	b.n	e9e <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     e70:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e72:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     e76:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     e78:	683b      	ldr	r3, [r7, #0]
     e7a:	3301      	adds	r3, #1
     e7c:	603b      	str	r3, [r7, #0]
        break;
     e7e:	e00e      	b.n	e9e <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     e80:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e82:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     e86:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     e88:	683b      	ldr	r3, [r7, #0]
     e8a:	3301      	adds	r3, #1
     e8c:	603b      	str	r3, [r7, #0]
        break;
     e8e:	e006      	b.n	e9e <_vsnprintf+0x2a0>
      default :
        break;
     e90:	bf00      	nop
     e92:	e004      	b.n	e9e <_vsnprintf+0x2a0>
        break;
     e94:	bf00      	nop
     e96:	e002      	b.n	e9e <_vsnprintf+0x2a0>
     e98:	000007bd 	.word	0x000007bd
        break;
     e9c:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     e9e:	683b      	ldr	r3, [r7, #0]
     ea0:	781b      	ldrb	r3, [r3, #0]
     ea2:	3b25      	subs	r3, #37	; 0x25
     ea4:	2b53      	cmp	r3, #83	; 0x53
     ea6:	f200 826e 	bhi.w	1386 <_vsnprintf+0x788>
     eaa:	a201      	add	r2, pc, #4	; (adr r2, eb0 <_vsnprintf+0x2b2>)
     eac:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     eb0:	0000136f 	.word	0x0000136f
     eb4:	00001387 	.word	0x00001387
     eb8:	00001387 	.word	0x00001387
     ebc:	00001387 	.word	0x00001387
     ec0:	00001387 	.word	0x00001387
     ec4:	00001387 	.word	0x00001387
     ec8:	00001387 	.word	0x00001387
     ecc:	00001387 	.word	0x00001387
     ed0:	00001387 	.word	0x00001387
     ed4:	00001387 	.word	0x00001387
     ed8:	00001387 	.word	0x00001387
     edc:	00001387 	.word	0x00001387
     ee0:	00001387 	.word	0x00001387
     ee4:	00001387 	.word	0x00001387
     ee8:	00001387 	.word	0x00001387
     eec:	00001387 	.word	0x00001387
     ef0:	00001387 	.word	0x00001387
     ef4:	00001387 	.word	0x00001387
     ef8:	00001387 	.word	0x00001387
     efc:	00001387 	.word	0x00001387
     f00:	00001387 	.word	0x00001387
     f04:	00001387 	.word	0x00001387
     f08:	00001387 	.word	0x00001387
     f0c:	00001387 	.word	0x00001387
     f10:	00001387 	.word	0x00001387
     f14:	00001387 	.word	0x00001387
     f18:	00001387 	.word	0x00001387
     f1c:	00001387 	.word	0x00001387
     f20:	00001387 	.word	0x00001387
     f24:	00001387 	.word	0x00001387
     f28:	00001387 	.word	0x00001387
     f2c:	00001387 	.word	0x00001387
     f30:	00001387 	.word	0x00001387
     f34:	00001387 	.word	0x00001387
     f38:	00001387 	.word	0x00001387
     f3c:	00001387 	.word	0x00001387
     f40:	00001387 	.word	0x00001387
     f44:	00001387 	.word	0x00001387
     f48:	00001387 	.word	0x00001387
     f4c:	00001387 	.word	0x00001387
     f50:	00001387 	.word	0x00001387
     f54:	00001387 	.word	0x00001387
     f58:	00001387 	.word	0x00001387
     f5c:	00001387 	.word	0x00001387
     f60:	00001387 	.word	0x00001387
     f64:	00001387 	.word	0x00001387
     f68:	00001387 	.word	0x00001387
     f6c:	00001387 	.word	0x00001387
     f70:	00001387 	.word	0x00001387
     f74:	00001387 	.word	0x00001387
     f78:	00001387 	.word	0x00001387
     f7c:	00001001 	.word	0x00001001
     f80:	00001387 	.word	0x00001387
     f84:	00001387 	.word	0x00001387
     f88:	00001387 	.word	0x00001387
     f8c:	00001387 	.word	0x00001387
     f90:	00001387 	.word	0x00001387
     f94:	00001387 	.word	0x00001387
     f98:	00001387 	.word	0x00001387
     f9c:	00001387 	.word	0x00001387
     fa0:	00001387 	.word	0x00001387
     fa4:	00001001 	.word	0x00001001
     fa8:	000011f1 	.word	0x000011f1
     fac:	00001001 	.word	0x00001001
     fb0:	00001387 	.word	0x00001387
     fb4:	00001387 	.word	0x00001387
     fb8:	00001387 	.word	0x00001387
     fbc:	00001387 	.word	0x00001387
     fc0:	00001001 	.word	0x00001001
     fc4:	00001387 	.word	0x00001387
     fc8:	00001387 	.word	0x00001387
     fcc:	00001387 	.word	0x00001387
     fd0:	00001387 	.word	0x00001387
     fd4:	00001387 	.word	0x00001387
     fd8:	00001001 	.word	0x00001001
     fdc:	0000132d 	.word	0x0000132d
     fe0:	00001387 	.word	0x00001387
     fe4:	00001387 	.word	0x00001387
     fe8:	00001267 	.word	0x00001267
     fec:	00001387 	.word	0x00001387
     ff0:	00001001 	.word	0x00001001
     ff4:	00001387 	.word	0x00001387
     ff8:	00001387 	.word	0x00001387
     ffc:	00001001 	.word	0x00001001
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
    1000:	683b      	ldr	r3, [r7, #0]
    1002:	781b      	ldrb	r3, [r3, #0]
    1004:	2b78      	cmp	r3, #120	; 0x78
    1006:	d003      	beq.n	1010 <_vsnprintf+0x412>
    1008:	683b      	ldr	r3, [r7, #0]
    100a:	781b      	ldrb	r3, [r3, #0]
    100c:	2b58      	cmp	r3, #88	; 0x58
    100e:	d102      	bne.n	1016 <_vsnprintf+0x418>
          base = 16U;
    1010:	2310      	movs	r3, #16
    1012:	633b      	str	r3, [r7, #48]	; 0x30
    1014:	e013      	b.n	103e <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
    1016:	683b      	ldr	r3, [r7, #0]
    1018:	781b      	ldrb	r3, [r3, #0]
    101a:	2b6f      	cmp	r3, #111	; 0x6f
    101c:	d102      	bne.n	1024 <_vsnprintf+0x426>
          base =  8U;
    101e:	2308      	movs	r3, #8
    1020:	633b      	str	r3, [r7, #48]	; 0x30
    1022:	e00c      	b.n	103e <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
    1024:	683b      	ldr	r3, [r7, #0]
    1026:	781b      	ldrb	r3, [r3, #0]
    1028:	2b62      	cmp	r3, #98	; 0x62
    102a:	d102      	bne.n	1032 <_vsnprintf+0x434>
          base =  2U;
    102c:	2302      	movs	r3, #2
    102e:	633b      	str	r3, [r7, #48]	; 0x30
    1030:	e005      	b.n	103e <_vsnprintf+0x440>
        }
        else {
          base = 10U;
    1032:	230a      	movs	r3, #10
    1034:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
    1036:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1038:	f023 0310 	bic.w	r3, r3, #16
    103c:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
    103e:	683b      	ldr	r3, [r7, #0]
    1040:	781b      	ldrb	r3, [r3, #0]
    1042:	2b58      	cmp	r3, #88	; 0x58
    1044:	d103      	bne.n	104e <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
    1046:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1048:	f043 0320 	orr.w	r3, r3, #32
    104c:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
    104e:	683b      	ldr	r3, [r7, #0]
    1050:	781b      	ldrb	r3, [r3, #0]
    1052:	2b69      	cmp	r3, #105	; 0x69
    1054:	d007      	beq.n	1066 <_vsnprintf+0x468>
    1056:	683b      	ldr	r3, [r7, #0]
    1058:	781b      	ldrb	r3, [r3, #0]
    105a:	2b64      	cmp	r3, #100	; 0x64
    105c:	d003      	beq.n	1066 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
    105e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1060:	f023 030c 	bic.w	r3, r3, #12
    1064:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
    1066:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1068:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    106c:	2b00      	cmp	r3, #0
    106e:	d003      	beq.n	1078 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
    1070:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1072:	f023 0301 	bic.w	r3, r3, #1
    1076:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
    1078:	683b      	ldr	r3, [r7, #0]
    107a:	781b      	ldrb	r3, [r3, #0]
    107c:	2b69      	cmp	r3, #105	; 0x69
    107e:	d003      	beq.n	1088 <_vsnprintf+0x48a>
    1080:	683b      	ldr	r3, [r7, #0]
    1082:	781b      	ldrb	r3, [r3, #0]
    1084:	2b64      	cmp	r3, #100	; 0x64
    1086:	d160      	bne.n	114a <_vsnprintf+0x54c>
          // signed
          if (flags & FLAGS_LONG_LONG) {
    1088:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    108a:	f403 7300 	and.w	r3, r3, #512	; 0x200
    108e:	2b00      	cmp	r3, #0
    1090:	f040 80aa 	bne.w	11e8 <_vsnprintf+0x5ea>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
    1094:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1096:	f403 7380 	and.w	r3, r3, #256	; 0x100
    109a:	2b00      	cmp	r3, #0
    109c:	d01f      	beq.n	10de <_vsnprintf+0x4e0>
            const long value = va_arg(va, long);
    109e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    10a0:	1d1a      	adds	r2, r3, #4
    10a2:	657a      	str	r2, [r7, #84]	; 0x54
    10a4:	681b      	ldr	r3, [r3, #0]
    10a6:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    10a8:	693b      	ldr	r3, [r7, #16]
    10aa:	2b00      	cmp	r3, #0
    10ac:	bfb8      	it	lt
    10ae:	425b      	neglt	r3, r3
    10b0:	461a      	mov	r2, r3
    10b2:	693b      	ldr	r3, [r7, #16]
    10b4:	0fdb      	lsrs	r3, r3, #31
    10b6:	b2db      	uxtb	r3, r3
    10b8:	4619      	mov	r1, r3
    10ba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10bc:	9305      	str	r3, [sp, #20]
    10be:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    10c0:	9304      	str	r3, [sp, #16]
    10c2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    10c4:	9303      	str	r3, [sp, #12]
    10c6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10c8:	9302      	str	r3, [sp, #8]
    10ca:	9101      	str	r1, [sp, #4]
    10cc:	9200      	str	r2, [sp, #0]
    10ce:	687b      	ldr	r3, [r7, #4]
    10d0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10d2:	68b9      	ldr	r1, [r7, #8]
    10d4:	68f8      	ldr	r0, [r7, #12]
    10d6:	f7ff fd2a 	bl	b2e <_ntoa_long>
    10da:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
    10dc:	e084      	b.n	11e8 <_vsnprintf+0x5ea>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    10de:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10e0:	f003 0340 	and.w	r3, r3, #64	; 0x40
    10e4:	2b00      	cmp	r3, #0
    10e6:	d005      	beq.n	10f4 <_vsnprintf+0x4f6>
    10e8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    10ea:	1d1a      	adds	r2, r3, #4
    10ec:	657a      	str	r2, [r7, #84]	; 0x54
    10ee:	681b      	ldr	r3, [r3, #0]
    10f0:	b2db      	uxtb	r3, r3
    10f2:	e00e      	b.n	1112 <_vsnprintf+0x514>
    10f4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10f6:	f003 0380 	and.w	r3, r3, #128	; 0x80
    10fa:	2b00      	cmp	r3, #0
    10fc:	d005      	beq.n	110a <_vsnprintf+0x50c>
    10fe:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    1100:	1d1a      	adds	r2, r3, #4
    1102:	657a      	str	r2, [r7, #84]	; 0x54
    1104:	681b      	ldr	r3, [r3, #0]
    1106:	b21b      	sxth	r3, r3
    1108:	e003      	b.n	1112 <_vsnprintf+0x514>
    110a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    110c:	1d1a      	adds	r2, r3, #4
    110e:	657a      	str	r2, [r7, #84]	; 0x54
    1110:	681b      	ldr	r3, [r3, #0]
    1112:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    1114:	697b      	ldr	r3, [r7, #20]
    1116:	2b00      	cmp	r3, #0
    1118:	bfb8      	it	lt
    111a:	425b      	neglt	r3, r3
    111c:	461a      	mov	r2, r3
    111e:	697b      	ldr	r3, [r7, #20]
    1120:	0fdb      	lsrs	r3, r3, #31
    1122:	b2db      	uxtb	r3, r3
    1124:	4619      	mov	r1, r3
    1126:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1128:	9305      	str	r3, [sp, #20]
    112a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    112c:	9304      	str	r3, [sp, #16]
    112e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1130:	9303      	str	r3, [sp, #12]
    1132:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1134:	9302      	str	r3, [sp, #8]
    1136:	9101      	str	r1, [sp, #4]
    1138:	9200      	str	r2, [sp, #0]
    113a:	687b      	ldr	r3, [r7, #4]
    113c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    113e:	68b9      	ldr	r1, [r7, #8]
    1140:	68f8      	ldr	r0, [r7, #12]
    1142:	f7ff fcf4 	bl	b2e <_ntoa_long>
    1146:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
    1148:	e04e      	b.n	11e8 <_vsnprintf+0x5ea>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
    114a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    114c:	f403 7300 	and.w	r3, r3, #512	; 0x200
    1150:	2b00      	cmp	r3, #0
    1152:	d149      	bne.n	11e8 <_vsnprintf+0x5ea>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
    1154:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1156:	f403 7380 	and.w	r3, r3, #256	; 0x100
    115a:	2b00      	cmp	r3, #0
    115c:	d016      	beq.n	118c <_vsnprintf+0x58e>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    115e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    1160:	1d1a      	adds	r2, r3, #4
    1162:	657a      	str	r2, [r7, #84]	; 0x54
    1164:	681b      	ldr	r3, [r3, #0]
    1166:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    1168:	9205      	str	r2, [sp, #20]
    116a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    116c:	9204      	str	r2, [sp, #16]
    116e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    1170:	9203      	str	r2, [sp, #12]
    1172:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    1174:	9202      	str	r2, [sp, #8]
    1176:	2200      	movs	r2, #0
    1178:	9201      	str	r2, [sp, #4]
    117a:	9300      	str	r3, [sp, #0]
    117c:	687b      	ldr	r3, [r7, #4]
    117e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1180:	68b9      	ldr	r1, [r7, #8]
    1182:	68f8      	ldr	r0, [r7, #12]
    1184:	f7ff fcd3 	bl	b2e <_ntoa_long>
    1188:	6378      	str	r0, [r7, #52]	; 0x34
    118a:	e02d      	b.n	11e8 <_vsnprintf+0x5ea>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    118c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    118e:	f003 0340 	and.w	r3, r3, #64	; 0x40
    1192:	2b00      	cmp	r3, #0
    1194:	d005      	beq.n	11a2 <_vsnprintf+0x5a4>
    1196:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    1198:	1d1a      	adds	r2, r3, #4
    119a:	657a      	str	r2, [r7, #84]	; 0x54
    119c:	681b      	ldr	r3, [r3, #0]
    119e:	b2db      	uxtb	r3, r3
    11a0:	e00e      	b.n	11c0 <_vsnprintf+0x5c2>
    11a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    11a4:	f003 0380 	and.w	r3, r3, #128	; 0x80
    11a8:	2b00      	cmp	r3, #0
    11aa:	d005      	beq.n	11b8 <_vsnprintf+0x5ba>
    11ac:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    11ae:	1d1a      	adds	r2, r3, #4
    11b0:	657a      	str	r2, [r7, #84]	; 0x54
    11b2:	681b      	ldr	r3, [r3, #0]
    11b4:	b29b      	uxth	r3, r3
    11b6:	e003      	b.n	11c0 <_vsnprintf+0x5c2>
    11b8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    11ba:	1d1a      	adds	r2, r3, #4
    11bc:	657a      	str	r2, [r7, #84]	; 0x54
    11be:	681b      	ldr	r3, [r3, #0]
    11c0:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    11c2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    11c4:	9305      	str	r3, [sp, #20]
    11c6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    11c8:	9304      	str	r3, [sp, #16]
    11ca:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    11cc:	9303      	str	r3, [sp, #12]
    11ce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    11d0:	9302      	str	r3, [sp, #8]
    11d2:	2300      	movs	r3, #0
    11d4:	9301      	str	r3, [sp, #4]
    11d6:	69bb      	ldr	r3, [r7, #24]
    11d8:	9300      	str	r3, [sp, #0]
    11da:	687b      	ldr	r3, [r7, #4]
    11dc:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11de:	68b9      	ldr	r1, [r7, #8]
    11e0:	68f8      	ldr	r0, [r7, #12]
    11e2:	f7ff fca4 	bl	b2e <_ntoa_long>
    11e6:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
    11e8:	683b      	ldr	r3, [r7, #0]
    11ea:	3301      	adds	r3, #1
    11ec:	603b      	str	r3, [r7, #0]
        break;
    11ee:	e0d8      	b.n	13a2 <_vsnprintf+0x7a4>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
    11f0:	2301      	movs	r3, #1
    11f2:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    11f4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    11f6:	f003 0302 	and.w	r3, r3, #2
    11fa:	2b00      	cmp	r3, #0
    11fc:	d10e      	bne.n	121c <_vsnprintf+0x61e>
          while (l++ < width) {
    11fe:	e007      	b.n	1210 <_vsnprintf+0x612>
            out(' ', buffer, idx++, maxlen);
    1200:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1202:	1c53      	adds	r3, r2, #1
    1204:	637b      	str	r3, [r7, #52]	; 0x34
    1206:	68fc      	ldr	r4, [r7, #12]
    1208:	687b      	ldr	r3, [r7, #4]
    120a:	68b9      	ldr	r1, [r7, #8]
    120c:	2020      	movs	r0, #32
    120e:	47a0      	blx	r4
          while (l++ < width) {
    1210:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1212:	1c5a      	adds	r2, r3, #1
    1214:	62fa      	str	r2, [r7, #44]	; 0x2c
    1216:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1218:	429a      	cmp	r2, r3
    121a:	d8f1      	bhi.n	1200 <_vsnprintf+0x602>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    121c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    121e:	1d1a      	adds	r2, r3, #4
    1220:	657a      	str	r2, [r7, #84]	; 0x54
    1222:	681b      	ldr	r3, [r3, #0]
    1224:	b2db      	uxtb	r3, r3
    1226:	4618      	mov	r0, r3
    1228:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    122a:	1c53      	adds	r3, r2, #1
    122c:	637b      	str	r3, [r7, #52]	; 0x34
    122e:	68fc      	ldr	r4, [r7, #12]
    1230:	687b      	ldr	r3, [r7, #4]
    1232:	68b9      	ldr	r1, [r7, #8]
    1234:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    1236:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1238:	f003 0302 	and.w	r3, r3, #2
    123c:	2b00      	cmp	r3, #0
    123e:	d00e      	beq.n	125e <_vsnprintf+0x660>
          while (l++ < width) {
    1240:	e007      	b.n	1252 <_vsnprintf+0x654>
            out(' ', buffer, idx++, maxlen);
    1242:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1244:	1c53      	adds	r3, r2, #1
    1246:	637b      	str	r3, [r7, #52]	; 0x34
    1248:	68fc      	ldr	r4, [r7, #12]
    124a:	687b      	ldr	r3, [r7, #4]
    124c:	68b9      	ldr	r1, [r7, #8]
    124e:	2020      	movs	r0, #32
    1250:	47a0      	blx	r4
          while (l++ < width) {
    1252:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1254:	1c5a      	adds	r2, r3, #1
    1256:	62fa      	str	r2, [r7, #44]	; 0x2c
    1258:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    125a:	429a      	cmp	r2, r3
    125c:	d8f1      	bhi.n	1242 <_vsnprintf+0x644>
          }
        }
        format++;
    125e:	683b      	ldr	r3, [r7, #0]
    1260:	3301      	adds	r3, #1
    1262:	603b      	str	r3, [r7, #0]
        break;
    1264:	e09d      	b.n	13a2 <_vsnprintf+0x7a4>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    1266:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    1268:	1d1a      	adds	r2, r3, #4
    126a:	657a      	str	r2, [r7, #84]	; 0x54
    126c:	681b      	ldr	r3, [r3, #0]
    126e:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    1270:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1272:	2b00      	cmp	r3, #0
    1274:	d001      	beq.n	127a <_vsnprintf+0x67c>
    1276:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1278:	e001      	b.n	127e <_vsnprintf+0x680>
    127a:	f04f 33ff 	mov.w	r3, #4294967295
    127e:	4619      	mov	r1, r3
    1280:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    1282:	f7ff fad1 	bl	828 <_strnlen_s>
    1286:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    1288:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    128a:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    128e:	2b00      	cmp	r3, #0
    1290:	d005      	beq.n	129e <_vsnprintf+0x6a0>
          l = (l < precision ? l : precision);
    1292:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    1294:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1296:	4293      	cmp	r3, r2
    1298:	bf28      	it	cs
    129a:	4613      	movcs	r3, r2
    129c:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    129e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    12a0:	f003 0302 	and.w	r3, r3, #2
    12a4:	2b00      	cmp	r3, #0
    12a6:	d11b      	bne.n	12e0 <_vsnprintf+0x6e2>
          while (l++ < width) {
    12a8:	e007      	b.n	12ba <_vsnprintf+0x6bc>
            out(' ', buffer, idx++, maxlen);
    12aa:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    12ac:	1c53      	adds	r3, r2, #1
    12ae:	637b      	str	r3, [r7, #52]	; 0x34
    12b0:	68fc      	ldr	r4, [r7, #12]
    12b2:	687b      	ldr	r3, [r7, #4]
    12b4:	68b9      	ldr	r1, [r7, #8]
    12b6:	2020      	movs	r0, #32
    12b8:	47a0      	blx	r4
          while (l++ < width) {
    12ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    12bc:	1c5a      	adds	r2, r3, #1
    12be:	627a      	str	r2, [r7, #36]	; 0x24
    12c0:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    12c2:	429a      	cmp	r2, r3
    12c4:	d8f1      	bhi.n	12aa <_vsnprintf+0x6ac>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    12c6:	e00b      	b.n	12e0 <_vsnprintf+0x6e2>
          out(*(p++), buffer, idx++, maxlen);
    12c8:	6abb      	ldr	r3, [r7, #40]	; 0x28
    12ca:	1c5a      	adds	r2, r3, #1
    12cc:	62ba      	str	r2, [r7, #40]	; 0x28
    12ce:	781b      	ldrb	r3, [r3, #0]
    12d0:	4618      	mov	r0, r3
    12d2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    12d4:	1c53      	adds	r3, r2, #1
    12d6:	637b      	str	r3, [r7, #52]	; 0x34
    12d8:	68fc      	ldr	r4, [r7, #12]
    12da:	687b      	ldr	r3, [r7, #4]
    12dc:	68b9      	ldr	r1, [r7, #8]
    12de:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    12e0:	6abb      	ldr	r3, [r7, #40]	; 0x28
    12e2:	781b      	ldrb	r3, [r3, #0]
    12e4:	2b00      	cmp	r3, #0
    12e6:	d009      	beq.n	12fc <_vsnprintf+0x6fe>
    12e8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    12ea:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    12ee:	2b00      	cmp	r3, #0
    12f0:	d0ea      	beq.n	12c8 <_vsnprintf+0x6ca>
    12f2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    12f4:	1e5a      	subs	r2, r3, #1
    12f6:	63fa      	str	r2, [r7, #60]	; 0x3c
    12f8:	2b00      	cmp	r3, #0
    12fa:	d1e5      	bne.n	12c8 <_vsnprintf+0x6ca>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    12fc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    12fe:	f003 0302 	and.w	r3, r3, #2
    1302:	2b00      	cmp	r3, #0
    1304:	d00e      	beq.n	1324 <_vsnprintf+0x726>
          while (l++ < width) {
    1306:	e007      	b.n	1318 <_vsnprintf+0x71a>
            out(' ', buffer, idx++, maxlen);
    1308:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    130a:	1c53      	adds	r3, r2, #1
    130c:	637b      	str	r3, [r7, #52]	; 0x34
    130e:	68fc      	ldr	r4, [r7, #12]
    1310:	687b      	ldr	r3, [r7, #4]
    1312:	68b9      	ldr	r1, [r7, #8]
    1314:	2020      	movs	r0, #32
    1316:	47a0      	blx	r4
          while (l++ < width) {
    1318:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    131a:	1c5a      	adds	r2, r3, #1
    131c:	627a      	str	r2, [r7, #36]	; 0x24
    131e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1320:	429a      	cmp	r2, r3
    1322:	d8f1      	bhi.n	1308 <_vsnprintf+0x70a>
          }
        }
        format++;
    1324:	683b      	ldr	r3, [r7, #0]
    1326:	3301      	adds	r3, #1
    1328:	603b      	str	r3, [r7, #0]
        break;
    132a:	e03a      	b.n	13a2 <_vsnprintf+0x7a4>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    132c:	2308      	movs	r3, #8
    132e:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    1330:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1332:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    1336:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    1338:	6d7b      	ldr	r3, [r7, #84]	; 0x54
    133a:	1d1a      	adds	r2, r3, #4
    133c:	657a      	str	r2, [r7, #84]	; 0x54
    133e:	681b      	ldr	r3, [r3, #0]
    1340:	461a      	mov	r2, r3
    1342:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1344:	9305      	str	r3, [sp, #20]
    1346:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1348:	9304      	str	r3, [sp, #16]
    134a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    134c:	9303      	str	r3, [sp, #12]
    134e:	2310      	movs	r3, #16
    1350:	9302      	str	r3, [sp, #8]
    1352:	2300      	movs	r3, #0
    1354:	9301      	str	r3, [sp, #4]
    1356:	9200      	str	r2, [sp, #0]
    1358:	687b      	ldr	r3, [r7, #4]
    135a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    135c:	68b9      	ldr	r1, [r7, #8]
    135e:	68f8      	ldr	r0, [r7, #12]
    1360:	f7ff fbe5 	bl	b2e <_ntoa_long>
    1364:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    1366:	683b      	ldr	r3, [r7, #0]
    1368:	3301      	adds	r3, #1
    136a:	603b      	str	r3, [r7, #0]
        break;
    136c:	e019      	b.n	13a2 <_vsnprintf+0x7a4>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    136e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1370:	1c53      	adds	r3, r2, #1
    1372:	637b      	str	r3, [r7, #52]	; 0x34
    1374:	68fc      	ldr	r4, [r7, #12]
    1376:	687b      	ldr	r3, [r7, #4]
    1378:	68b9      	ldr	r1, [r7, #8]
    137a:	2025      	movs	r0, #37	; 0x25
    137c:	47a0      	blx	r4
        format++;
    137e:	683b      	ldr	r3, [r7, #0]
    1380:	3301      	adds	r3, #1
    1382:	603b      	str	r3, [r7, #0]
        break;
    1384:	e00d      	b.n	13a2 <_vsnprintf+0x7a4>

      default :
        out(*format, buffer, idx++, maxlen);
    1386:	683b      	ldr	r3, [r7, #0]
    1388:	781b      	ldrb	r3, [r3, #0]
    138a:	4618      	mov	r0, r3
    138c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    138e:	1c53      	adds	r3, r2, #1
    1390:	637b      	str	r3, [r7, #52]	; 0x34
    1392:	68fc      	ldr	r4, [r7, #12]
    1394:	687b      	ldr	r3, [r7, #4]
    1396:	68b9      	ldr	r1, [r7, #8]
    1398:	47a0      	blx	r4
        format++;
    139a:	683b      	ldr	r3, [r7, #0]
    139c:	3301      	adds	r3, #1
    139e:	603b      	str	r3, [r7, #0]
        break;
    13a0:	bf00      	nop
  while (*format)
    13a2:	683b      	ldr	r3, [r7, #0]
    13a4:	781b      	ldrb	r3, [r3, #0]
    13a6:	2b00      	cmp	r3, #0
    13a8:	f47f ac39 	bne.w	c1e <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    13ac:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    13ae:	687b      	ldr	r3, [r7, #4]
    13b0:	429a      	cmp	r2, r3
    13b2:	d302      	bcc.n	13ba <_vsnprintf+0x7bc>
    13b4:	687b      	ldr	r3, [r7, #4]
    13b6:	1e5a      	subs	r2, r3, #1
    13b8:	e000      	b.n	13bc <_vsnprintf+0x7be>
    13ba:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    13bc:	68fc      	ldr	r4, [r7, #12]
    13be:	687b      	ldr	r3, [r7, #4]
    13c0:	68b9      	ldr	r1, [r7, #8]
    13c2:	2000      	movs	r0, #0
    13c4:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    13c6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    13c8:	4618      	mov	r0, r3
    13ca:	3748      	adds	r7, #72	; 0x48
    13cc:	46bd      	mov	sp, r7
    13ce:	bd90      	pop	{r4, r7, pc}

000013d0 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    13d0:	b40f      	push	{r0, r1, r2, r3}
    13d2:	b580      	push	{r7, lr}
    13d4:	b084      	sub	sp, #16
    13d6:	af01      	add	r7, sp, #4
  va_list va;
  va_start(va, format);
    13d8:	f107 0318 	add.w	r3, r7, #24
    13dc:	607b      	str	r3, [r7, #4]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    13de:	687b      	ldr	r3, [r7, #4]
    13e0:	4639      	mov	r1, r7
    13e2:	9300      	str	r3, [sp, #0]
    13e4:	697b      	ldr	r3, [r7, #20]
    13e6:	f04f 32ff 	mov.w	r2, #4294967295
    13ea:	4806      	ldr	r0, [pc, #24]	; (1404 <printf_+0x34>)
    13ec:	f7ff fc07 	bl	bfe <_vsnprintf>
    13f0:	60b8      	str	r0, [r7, #8]
  va_end(va);
  return ret;
    13f2:	68bb      	ldr	r3, [r7, #8]
}
    13f4:	4618      	mov	r0, r3
    13f6:	370c      	adds	r7, #12
    13f8:	46bd      	mov	sp, r7
    13fa:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    13fe:	b004      	add	sp, #16
    1400:	4770      	bx	lr
    1402:	bf00      	nop
    1404:	000007d7 	.word	0x000007d7

00001408 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    1408:	b40e      	push	{r1, r2, r3}
    140a:	b580      	push	{r7, lr}
    140c:	b084      	sub	sp, #16
    140e:	af01      	add	r7, sp, #4
    1410:	6038      	str	r0, [r7, #0]
  va_list va;
  va_start(va, format);
    1412:	f107 0318 	add.w	r3, r7, #24
    1416:	607b      	str	r3, [r7, #4]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    1418:	687b      	ldr	r3, [r7, #4]
    141a:	9300      	str	r3, [sp, #0]
    141c:	697b      	ldr	r3, [r7, #20]
    141e:	f04f 32ff 	mov.w	r2, #4294967295
    1422:	6839      	ldr	r1, [r7, #0]
    1424:	4805      	ldr	r0, [pc, #20]	; (143c <sprintf_+0x34>)
    1426:	f7ff fbea 	bl	bfe <_vsnprintf>
    142a:	60b8      	str	r0, [r7, #8]
  va_end(va);
  return ret;
    142c:	68bb      	ldr	r3, [r7, #8]
}
    142e:	4618      	mov	r0, r3
    1430:	370c      	adds	r7, #12
    1432:	46bd      	mov	sp, r7
    1434:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1438:	b003      	add	sp, #12
    143a:	4770      	bx	lr
    143c:	00000791 	.word	0x00000791

00001440 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1440:	b40c      	push	{r2, r3}
    1442:	b580      	push	{r7, lr}
    1444:	b085      	sub	sp, #20
    1446:	af01      	add	r7, sp, #4
    1448:	6078      	str	r0, [r7, #4]
    144a:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    144c:	f107 031c 	add.w	r3, r7, #28
    1450:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    1452:	68bb      	ldr	r3, [r7, #8]
    1454:	9300      	str	r3, [sp, #0]
    1456:	69bb      	ldr	r3, [r7, #24]
    1458:	683a      	ldr	r2, [r7, #0]
    145a:	6879      	ldr	r1, [r7, #4]
    145c:	4805      	ldr	r0, [pc, #20]	; (1474 <snprintf_+0x34>)
    145e:	f7ff fbce 	bl	bfe <_vsnprintf>
    1462:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1464:	68fb      	ldr	r3, [r7, #12]
}
    1466:	4618      	mov	r0, r3
    1468:	3710      	adds	r7, #16
    146a:	46bd      	mov	sp, r7
    146c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1470:	b002      	add	sp, #8
    1472:	4770      	bx	lr
    1474:	00000791 	.word	0x00000791

00001478 <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    1478:	b580      	push	{r7, lr}
    147a:	b084      	sub	sp, #16
    147c:	af01      	add	r7, sp, #4
    147e:	6078      	str	r0, [r7, #4]
    1480:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1482:	f107 0108 	add.w	r1, r7, #8
    1486:	683b      	ldr	r3, [r7, #0]
    1488:	9300      	str	r3, [sp, #0]
    148a:	687b      	ldr	r3, [r7, #4]
    148c:	f04f 32ff 	mov.w	r2, #4294967295
    1490:	4803      	ldr	r0, [pc, #12]	; (14a0 <vprintf_+0x28>)
    1492:	f7ff fbb4 	bl	bfe <_vsnprintf>
    1496:	4603      	mov	r3, r0
}
    1498:	4618      	mov	r0, r3
    149a:	370c      	adds	r7, #12
    149c:	46bd      	mov	sp, r7
    149e:	bd80      	pop	{r7, pc}
    14a0:	000007d7 	.word	0x000007d7

000014a4 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    14a4:	b580      	push	{r7, lr}
    14a6:	b085      	sub	sp, #20
    14a8:	af01      	add	r7, sp, #4
    14aa:	60f8      	str	r0, [r7, #12]
    14ac:	60b9      	str	r1, [r7, #8]
    14ae:	607a      	str	r2, [r7, #4]
    14b0:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    14b2:	683b      	ldr	r3, [r7, #0]
    14b4:	9300      	str	r3, [sp, #0]
    14b6:	687b      	ldr	r3, [r7, #4]
    14b8:	68ba      	ldr	r2, [r7, #8]
    14ba:	68f9      	ldr	r1, [r7, #12]
    14bc:	4803      	ldr	r0, [pc, #12]	; (14cc <vsnprintf_+0x28>)
    14be:	f7ff fb9e 	bl	bfe <_vsnprintf>
    14c2:	4603      	mov	r3, r0
}
    14c4:	4618      	mov	r0, r3
    14c6:	3710      	adds	r7, #16
    14c8:	46bd      	mov	sp, r7
    14ca:	bd80      	pop	{r7, pc}
    14cc:	00000791 	.word	0x00000791

000014d0 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    14d0:	b40c      	push	{r2, r3}
    14d2:	b580      	push	{r7, lr}
    14d4:	b087      	sub	sp, #28
    14d6:	af01      	add	r7, sp, #4
    14d8:	6078      	str	r0, [r7, #4]
    14da:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    14dc:	f107 0324 	add.w	r3, r7, #36	; 0x24
    14e0:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    14e2:	687b      	ldr	r3, [r7, #4]
    14e4:	60bb      	str	r3, [r7, #8]
    14e6:	683b      	ldr	r3, [r7, #0]
    14e8:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    14ea:	693b      	ldr	r3, [r7, #16]
    14ec:	f107 0108 	add.w	r1, r7, #8
    14f0:	9300      	str	r3, [sp, #0]
    14f2:	6a3b      	ldr	r3, [r7, #32]
    14f4:	f04f 32ff 	mov.w	r2, #4294967295
    14f8:	4805      	ldr	r0, [pc, #20]	; (1510 <fctprintf+0x40>)
    14fa:	f7ff fb80 	bl	bfe <_vsnprintf>
    14fe:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1500:	697b      	ldr	r3, [r7, #20]
}
    1502:	4618      	mov	r0, r3
    1504:	3718      	adds	r7, #24
    1506:	46bd      	mov	sp, r7
    1508:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    150c:	b002      	add	sp, #8
    150e:	4770      	bx	lr
    1510:	000007fd 	.word	0x000007fd

Disassembly of section .text.default_handler:

00001514 <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
    1514:	e7fe      	b.n	1514 <default_handler>
