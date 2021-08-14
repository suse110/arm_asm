
./build/test.elf:     file format elf32-littlearm


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
       8:	20001020 	.word	0x20001020
ldr r1, =main
       c:	00000051 	.word	0x00000051

00000010 <g_pfnVectors>:
      10:	20001020 00000001 0000006d 00000085      .. ....m.......
      20:	0000009d 000000b5 000000cd 000019ac     ................
      30:	000019ac 000019ac 000019ac 000000e5     ................
      40:	000000fd 000019ac 00000115 0000012d     ............-...

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
      58:	f001 fa05 	bl	1466 <printf_>
    shell_start();
      5c:	f001 fca0 	bl	19a0 <shell_start>
    // backtrace_test();
    // hal_mpu_test();
    while(1);
      60:	e7fe      	b.n	60 <main+0x10>
      62:	bf00      	nop
      64:	000019cc 	.word	0x000019cc
      68:	000019b0 	.word	0x000019b0

0000006c <nmi_handler>:
}

void nmi_handler(void)
{
      6c:	b580      	push	{r7, lr}
      6e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      70:	4902      	ldr	r1, [pc, #8]	; (7c <nmi_handler+0x10>)
      72:	4803      	ldr	r0, [pc, #12]	; (80 <nmi_handler+0x14>)
      74:	f001 f9f7 	bl	1466 <printf_>
    while(1);
      78:	e7fe      	b.n	78 <nmi_handler+0xc>
      7a:	bf00      	nop
      7c:	000019d4 	.word	0x000019d4
      80:	000019c4 	.word	0x000019c4

00000084 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
      84:	b580      	push	{r7, lr}
      86:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      88:	4902      	ldr	r1, [pc, #8]	; (94 <hard_fault_handler+0x10>)
      8a:	4803      	ldr	r0, [pc, #12]	; (98 <hard_fault_handler+0x14>)
      8c:	f001 f9eb 	bl	1466 <printf_>
    while(1);
      90:	e7fe      	b.n	90 <hard_fault_handler+0xc>
      92:	bf00      	nop
      94:	000019e0 	.word	0x000019e0
      98:	000019c4 	.word	0x000019c4

0000009c <mem_manage_handler>:
}

void mem_manage_handler(void)
{
      9c:	b580      	push	{r7, lr}
      9e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      a0:	4902      	ldr	r1, [pc, #8]	; (ac <mem_manage_handler+0x10>)
      a2:	4803      	ldr	r0, [pc, #12]	; (b0 <mem_manage_handler+0x14>)
      a4:	f001 f9df 	bl	1466 <printf_>
    while(1);
      a8:	e7fe      	b.n	a8 <mem_manage_handler+0xc>
      aa:	bf00      	nop
      ac:	000019f4 	.word	0x000019f4
      b0:	000019c4 	.word	0x000019c4

000000b4 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
      b4:	b580      	push	{r7, lr}
      b6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      b8:	4902      	ldr	r1, [pc, #8]	; (c4 <bus_fault_handler+0x10>)
      ba:	4803      	ldr	r0, [pc, #12]	; (c8 <bus_fault_handler+0x14>)
      bc:	f001 f9d3 	bl	1466 <printf_>
    while(1);
      c0:	e7fe      	b.n	c0 <bus_fault_handler+0xc>
      c2:	bf00      	nop
      c4:	00001a08 	.word	0x00001a08
      c8:	000019c4 	.word	0x000019c4

000000cc <usage_fault_handler>:
}

void usage_fault_handler(void)
{
      cc:	b580      	push	{r7, lr}
      ce:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      d0:	4902      	ldr	r1, [pc, #8]	; (dc <usage_fault_handler+0x10>)
      d2:	4803      	ldr	r0, [pc, #12]	; (e0 <usage_fault_handler+0x14>)
      d4:	f001 f9c7 	bl	1466 <printf_>
    while(1);
      d8:	e7fe      	b.n	d8 <usage_fault_handler+0xc>
      da:	bf00      	nop
      dc:	00001a1c 	.word	0x00001a1c
      e0:	000019c4 	.word	0x000019c4

000000e4 <svc_handler>:
}

void svc_handler(void)
{
      e4:	b580      	push	{r7, lr}
      e6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
      e8:	4902      	ldr	r1, [pc, #8]	; (f4 <svc_handler+0x10>)
      ea:	4803      	ldr	r0, [pc, #12]	; (f8 <svc_handler+0x14>)
      ec:	f001 f9bb 	bl	1466 <printf_>
    while(1);
      f0:	e7fe      	b.n	f0 <svc_handler+0xc>
      f2:	bf00      	nop
      f4:	00001a30 	.word	0x00001a30
      f8:	000019c4 	.word	0x000019c4

000000fc <debug_mon_handler>:
}

void debug_mon_handler(void)
{
      fc:	b580      	push	{r7, lr}
      fe:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     100:	4902      	ldr	r1, [pc, #8]	; (10c <debug_mon_handler+0x10>)
     102:	4803      	ldr	r0, [pc, #12]	; (110 <debug_mon_handler+0x14>)
     104:	f001 f9af 	bl	1466 <printf_>
    while(1);
     108:	e7fe      	b.n	108 <debug_mon_handler+0xc>
     10a:	bf00      	nop
     10c:	00001a3c 	.word	0x00001a3c
     110:	000019c4 	.word	0x000019c4

00000114 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     114:	b580      	push	{r7, lr}
     116:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     118:	4902      	ldr	r1, [pc, #8]	; (124 <pend_sv_handler+0x10>)
     11a:	4803      	ldr	r0, [pc, #12]	; (128 <pend_sv_handler+0x14>)
     11c:	f001 f9a3 	bl	1466 <printf_>
    while(1);
     120:	e7fe      	b.n	120 <pend_sv_handler+0xc>
     122:	bf00      	nop
     124:	00001a50 	.word	0x00001a50
     128:	000019c4 	.word	0x000019c4

0000012c <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     12c:	b580      	push	{r7, lr}
     12e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     130:	4902      	ldr	r1, [pc, #8]	; (13c <sys_tick_handler+0x10>)
     132:	4803      	ldr	r0, [pc, #12]	; (140 <sys_tick_handler+0x14>)
     134:	f001 f997 	bl	1466 <printf_>
    while(1);
     138:	e7fe      	b.n	138 <sys_tick_handler+0xc>
     13a:	bf00      	nop
     13c:	00001a60 	.word	0x00001a60
     140:	000019c4 	.word	0x000019c4

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
     228:	00001a74 	.word	0x00001a74

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

000005e0 <test_div>:
#include "backtrace.h"
#include "hal_log.h"
#include "hal_platform.h"

int test_div(void)
{
     5e0:	b480      	push	{r7}
     5e2:	b085      	sub	sp, #20
     5e4:	af00      	add	r7, sp, #0
    // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
     5e6:	4b0a      	ldr	r3, [pc, #40]	; (610 <test_div+0x30>)
     5e8:	695b      	ldr	r3, [r3, #20]
     5ea:	4a09      	ldr	r2, [pc, #36]	; (610 <test_div+0x30>)
     5ec:	f043 0318 	orr.w	r3, r3, #24
     5f0:	6153      	str	r3, [r2, #20]

    int a = 1;
     5f2:	2301      	movs	r3, #1
     5f4:	60fb      	str	r3, [r7, #12]
    int b = 0;
     5f6:	2300      	movs	r3, #0
     5f8:	60bb      	str	r3, [r7, #8]
    int z = a / b;
     5fa:	68fa      	ldr	r2, [r7, #12]
     5fc:	68bb      	ldr	r3, [r7, #8]
     5fe:	fb92 f3f3 	sdiv	r3, r2, r3
     602:	607b      	str	r3, [r7, #4]

    return z;
     604:	687b      	ldr	r3, [r7, #4]
}
     606:	4618      	mov	r0, r3
     608:	3714      	adds	r7, #20
     60a:	46bd      	mov	sp, r7
     60c:	bc80      	pop	{r7}
     60e:	4770      	bx	lr
     610:	e000ed00 	.word	0xe000ed00

00000614 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
     614:	b580      	push	{r7, lr}
     616:	b084      	sub	sp, #16
     618:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
     61a:	4b16      	ldr	r3, [pc, #88]	; (674 <fault_test_by_unalign+0x60>)
     61c:	60fb      	str	r3, [r7, #12]
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
     61e:	68fb      	ldr	r3, [r7, #12]
     620:	681b      	ldr	r3, [r3, #0]
     622:	f043 0208 	orr.w	r2, r3, #8
     626:	68fb      	ldr	r3, [r7, #12]
     628:	601a      	str	r2, [r3, #0]

    p = (int *) 0x00;
     62a:	2300      	movs	r3, #0
     62c:	60bb      	str	r3, [r7, #8]
    value = *p;
     62e:	68bb      	ldr	r3, [r7, #8]
     630:	681b      	ldr	r3, [r3, #0]
     632:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     634:	68bb      	ldr	r3, [r7, #8]
     636:	687a      	ldr	r2, [r7, #4]
     638:	4619      	mov	r1, r3
     63a:	480f      	ldr	r0, [pc, #60]	; (678 <fault_test_by_unalign+0x64>)
     63c:	f000 ff13 	bl	1466 <printf_>

    p = (int *) 0x04;
     640:	2304      	movs	r3, #4
     642:	60bb      	str	r3, [r7, #8]
    value = *p;
     644:	68bb      	ldr	r3, [r7, #8]
     646:	681b      	ldr	r3, [r3, #0]
     648:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     64a:	68bb      	ldr	r3, [r7, #8]
     64c:	687a      	ldr	r2, [r7, #4]
     64e:	4619      	mov	r1, r3
     650:	4809      	ldr	r0, [pc, #36]	; (678 <fault_test_by_unalign+0x64>)
     652:	f000 ff08 	bl	1466 <printf_>

    p = (int *) 0x03;
     656:	2303      	movs	r3, #3
     658:	60bb      	str	r3, [r7, #8]
    value = *p;
     65a:	68bb      	ldr	r3, [r7, #8]
     65c:	681b      	ldr	r3, [r3, #0]
     65e:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     660:	68bb      	ldr	r3, [r7, #8]
     662:	687a      	ldr	r2, [r7, #4]
     664:	4619      	mov	r1, r3
     666:	4804      	ldr	r0, [pc, #16]	; (678 <fault_test_by_unalign+0x64>)
     668:	f000 fefd 	bl	1466 <printf_>
}
     66c:	bf00      	nop
     66e:	3710      	adds	r7, #16
     670:	46bd      	mov	sp, r7
     672:	bd80      	pop	{r7, pc}
     674:	e000ed14 	.word	0xe000ed14
     678:	00001a98 	.word	0x00001a98

0000067c <fault_test_by_div0>:

void fault_test_by_div0(void) {
     67c:	b580      	push	{r7, lr}
     67e:	b084      	sub	sp, #16
     680:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
     682:	4b0c      	ldr	r3, [pc, #48]	; (6b4 <fault_test_by_div0+0x38>)
     684:	60fb      	str	r3, [r7, #12]
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
     686:	68fb      	ldr	r3, [r7, #12]
     688:	681b      	ldr	r3, [r3, #0]
     68a:	f043 0210 	orr.w	r2, r3, #16
     68e:	68fb      	ldr	r3, [r7, #12]
     690:	601a      	str	r2, [r3, #0]

    x = 10;
     692:	230a      	movs	r3, #10
     694:	60bb      	str	r3, [r7, #8]
    y = 0;
     696:	2300      	movs	r3, #0
     698:	607b      	str	r3, [r7, #4]
    z = x / y;
     69a:	68ba      	ldr	r2, [r7, #8]
     69c:	687b      	ldr	r3, [r7, #4]
     69e:	fb92 f3f3 	sdiv	r3, r2, r3
     6a2:	603b      	str	r3, [r7, #0]
    printf("z:%d\n", z);
     6a4:	6839      	ldr	r1, [r7, #0]
     6a6:	4804      	ldr	r0, [pc, #16]	; (6b8 <fault_test_by_div0+0x3c>)
     6a8:	f000 fedd 	bl	1466 <printf_>
}
     6ac:	bf00      	nop
     6ae:	3710      	adds	r7, #16
     6b0:	46bd      	mov	sp, r7
     6b2:	bd80      	pop	{r7, pc}
     6b4:	e000ed14 	.word	0xe000ed14
     6b8:	00001ab0 	.word	0x00001ab0

000006bc <dump_stack>:
extern const uint32_t _sstack;
extern const uint32_t _estack;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer) {
     6bc:	b580      	push	{r7, lr}
     6be:	b084      	sub	sp, #16
     6c0:	af00      	add	r7, sp, #0
     6c2:	60f8      	str	r0, [r7, #12]
     6c4:	60b9      	str	r1, [r7, #8]
     6c6:	607a      	str	r2, [r7, #4]
        // if (on_thread_before_fault) {
        //     printf(print_info[PRINT_THREAD_STACK_OVERFLOW], stack_pointer);
        // } else {
        //     printf(print_info[PRINT_MAIN_STACK_OVERFLOW], stack_pointer);
        // }
        if ((uint32_t) stack_pointer < stack_start_addr) {
     6c8:	687b      	ldr	r3, [r7, #4]
     6ca:	68fa      	ldr	r2, [r7, #12]
     6cc:	429a      	cmp	r2, r3
     6ce:	d902      	bls.n	6d6 <dump_stack+0x1a>
            stack_pointer = (uint32_t *) stack_start_addr;
     6d0:	68fb      	ldr	r3, [r7, #12]
     6d2:	607b      	str	r3, [r7, #4]
     6d4:	e014      	b.n	700 <dump_stack+0x44>
        } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
     6d6:	68fa      	ldr	r2, [r7, #12]
     6d8:	68bb      	ldr	r3, [r7, #8]
     6da:	441a      	add	r2, r3
     6dc:	687b      	ldr	r3, [r7, #4]
     6de:	429a      	cmp	r2, r3
     6e0:	d20e      	bcs.n	700 <dump_stack+0x44>
            stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
     6e2:	68fa      	ldr	r2, [r7, #12]
     6e4:	68bb      	ldr	r3, [r7, #8]
     6e6:	4413      	add	r3, r2
     6e8:	607b      	str	r3, [r7, #4]
        }
    // }
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
     6ea:	e009      	b.n	700 <dump_stack+0x44>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
     6ec:	6879      	ldr	r1, [r7, #4]
     6ee:	687b      	ldr	r3, [r7, #4]
     6f0:	681b      	ldr	r3, [r3, #0]
     6f2:	461a      	mov	r2, r3
     6f4:	4809      	ldr	r0, [pc, #36]	; (71c <dump_stack+0x60>)
     6f6:	f000 feb6 	bl	1466 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
     6fa:	687b      	ldr	r3, [r7, #4]
     6fc:	3304      	adds	r3, #4
     6fe:	607b      	str	r3, [r7, #4]
     700:	68fa      	ldr	r2, [r7, #12]
     702:	68bb      	ldr	r3, [r7, #8]
     704:	441a      	add	r2, r3
     706:	687b      	ldr	r3, [r7, #4]
     708:	429a      	cmp	r2, r3
     70a:	d8ef      	bhi.n	6ec <dump_stack+0x30>
    }
    printf("====================================");
     70c:	4804      	ldr	r0, [pc, #16]	; (720 <dump_stack+0x64>)
     70e:	f000 feaa 	bl	1466 <printf_>
}
     712:	bf00      	nop
     714:	3710      	adds	r7, #16
     716:	46bd      	mov	sp, r7
     718:	bd80      	pop	{r7, pc}
     71a:	bf00      	nop
     71c:	00001ab8 	.word	0x00001ab8
     720:	00001ad8 	.word	0x00001ad8

00000724 <backtrace_test>:

void backtrace_test(void)
{
     724:	b590      	push	{r4, r7, lr}
     726:	b089      	sub	sp, #36	; 0x24
     728:	af02      	add	r7, sp, #8

    code_start_addr = (uint32_t)&_stext;
     72a:	4a34      	ldr	r2, [pc, #208]	; (7fc <backtrace_test+0xd8>)
     72c:	4b34      	ldr	r3, [pc, #208]	; (800 <backtrace_test+0xdc>)
     72e:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
     730:	4a34      	ldr	r2, [pc, #208]	; (804 <backtrace_test+0xe0>)
     732:	4b35      	ldr	r3, [pc, #212]	; (808 <backtrace_test+0xe4>)
     734:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
     736:	4b34      	ldr	r3, [pc, #208]	; (808 <backtrace_test+0xe4>)
     738:	681a      	ldr	r2, [r3, #0]
     73a:	4b31      	ldr	r3, [pc, #196]	; (800 <backtrace_test+0xdc>)
     73c:	681b      	ldr	r3, [r3, #0]
     73e:	1ad3      	subs	r3, r2, r3
     740:	4a32      	ldr	r2, [pc, #200]	; (80c <backtrace_test+0xe8>)
     742:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
     744:	4a32      	ldr	r2, [pc, #200]	; (810 <backtrace_test+0xec>)
     746:	4b33      	ldr	r3, [pc, #204]	; (814 <backtrace_test+0xf0>)
     748:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
     74a:	4a33      	ldr	r2, [pc, #204]	; (818 <backtrace_test+0xf4>)
     74c:	4b33      	ldr	r3, [pc, #204]	; (81c <backtrace_test+0xf8>)
     74e:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
     750:	4b32      	ldr	r3, [pc, #200]	; (81c <backtrace_test+0xf8>)
     752:	681a      	ldr	r2, [r3, #0]
     754:	4b2f      	ldr	r3, [pc, #188]	; (814 <backtrace_test+0xf0>)
     756:	681b      	ldr	r3, [r3, #0]
     758:	1ad3      	subs	r3, r2, r3
     75a:	4a31      	ldr	r2, [pc, #196]	; (820 <backtrace_test+0xfc>)
     75c:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
     75e:	4b28      	ldr	r3, [pc, #160]	; (800 <backtrace_test+0xdc>)
     760:	6819      	ldr	r1, [r3, #0]
     762:	4b29      	ldr	r3, [pc, #164]	; (808 <backtrace_test+0xe4>)
     764:	6818      	ldr	r0, [r3, #0]
     766:	4b29      	ldr	r3, [pc, #164]	; (80c <backtrace_test+0xe8>)
     768:	681b      	ldr	r3, [r3, #0]
     76a:	4a28      	ldr	r2, [pc, #160]	; (80c <backtrace_test+0xe8>)
     76c:	6812      	ldr	r2, [r2, #0]
     76e:	9201      	str	r2, [sp, #4]
     770:	9300      	str	r3, [sp, #0]
     772:	4603      	mov	r3, r0
     774:	460a      	mov	r2, r1
     776:	492b      	ldr	r1, [pc, #172]	; (824 <backtrace_test+0x100>)
     778:	482b      	ldr	r0, [pc, #172]	; (828 <backtrace_test+0x104>)
     77a:	f000 fe74 	bl	1466 <printf_>
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
     77e:	4b25      	ldr	r3, [pc, #148]	; (814 <backtrace_test+0xf0>)
     780:	6819      	ldr	r1, [r3, #0]
     782:	4b26      	ldr	r3, [pc, #152]	; (81c <backtrace_test+0xf8>)
     784:	6818      	ldr	r0, [r3, #0]
     786:	4b26      	ldr	r3, [pc, #152]	; (820 <backtrace_test+0xfc>)
     788:	681b      	ldr	r3, [r3, #0]
     78a:	4a25      	ldr	r2, [pc, #148]	; (820 <backtrace_test+0xfc>)
     78c:	6812      	ldr	r2, [r2, #0]
     78e:	9201      	str	r2, [sp, #4]
     790:	9300      	str	r3, [sp, #0]
     792:	4603      	mov	r3, r0
     794:	460a      	mov	r2, r1
     796:	4923      	ldr	r1, [pc, #140]	; (824 <backtrace_test+0x100>)
     798:	4824      	ldr	r0, [pc, #144]	; (82c <backtrace_test+0x108>)
     79a:	f000 fe64 	bl	1466 <printf_>
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
     79e:	4b1d      	ldr	r3, [pc, #116]	; (814 <backtrace_test+0xf0>)
     7a0:	6818      	ldr	r0, [r3, #0]
     7a2:	4b1f      	ldr	r3, [pc, #124]	; (820 <backtrace_test+0xfc>)
     7a4:	681b      	ldr	r3, [r3, #0]
        __asm volatile ("MRS %0, psp\n" : "=r" (result) );
        return(result);
    }
    __attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
        register uint32_t result;
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
     7a6:	466a      	mov	r2, sp
     7a8:	4614      	mov	r4, r2
        return(result);
     7aa:	4622      	mov	r2, r4
     7ac:	4619      	mov	r1, r3
     7ae:	f7ff ff85 	bl	6bc <dump_stack>

    int bt1 = 0xAA;
     7b2:	23aa      	movs	r3, #170	; 0xaa
     7b4:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
     7b6:	2355      	movs	r3, #85	; 0x55
     7b8:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
     7ba:	2377      	movs	r3, #119	; 0x77
     7bc:	60bb      	str	r3, [r7, #8]
  __ASM volatile ("cpsie i" : : : "memory");
     7be:	b662      	cpsie	i
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
     7c0:	466b      	mov	r3, sp
     7c2:	461c      	mov	r4, r3
        return(result);
     7c4:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();
    // fault_test_by_div0();
    // fault_test_by_unalign();
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
     7c6:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
     7c8:	6979      	ldr	r1, [r7, #20]
     7ca:	4819      	ldr	r0, [pc, #100]	; (830 <backtrace_test+0x10c>)
     7cc:	f000 fe4b 	bl	1466 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
   uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
     7d0:	e00c      	b.n	7ec <backtrace_test+0xc8>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
     7d2:	697b      	ldr	r3, [r7, #20]
     7d4:	681b      	ldr	r3, [r3, #0]
     7d6:	607b      	str	r3, [r7, #4]
        if ((addr >= (uint32_t)&_stext) && 
     7d8:	4a08      	ldr	r2, [pc, #32]	; (7fc <backtrace_test+0xd8>)
     7da:	687b      	ldr	r3, [r7, #4]
     7dc:	4293      	cmp	r3, r2
     7de:	d302      	bcc.n	7e6 <backtrace_test+0xc2>
            (sp <= (uint32_t)&_etext) &&
     7e0:	4a08      	ldr	r2, [pc, #32]	; (804 <backtrace_test+0xe0>)
        if ((addr >= (uint32_t)&_stext) && 
     7e2:	697b      	ldr	r3, [r7, #20]
     7e4:	4293      	cmp	r3, r2
            IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
            

        }
        sp += 4;
     7e6:	697b      	ldr	r3, [r7, #20]
     7e8:	3304      	adds	r3, #4
     7ea:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
     7ec:	4a0a      	ldr	r2, [pc, #40]	; (818 <backtrace_test+0xf4>)
     7ee:	697b      	ldr	r3, [r7, #20]
     7f0:	4293      	cmp	r3, r2
     7f2:	d3ee      	bcc.n	7d2 <backtrace_test+0xae>
    }

     7f4:	bf00      	nop
     7f6:	371c      	adds	r7, #28
     7f8:	46bd      	mov	sp, r7
     7fa:	bd90      	pop	{r4, r7, pc}
     7fc:	00000000 	.word	0x00000000
     800:	20000000 	.word	0x20000000
     804:	00001c18 	.word	0x00001c18
     808:	20000004 	.word	0x20000004
     80c:	20000008 	.word	0x20000008
     810:	20000020 	.word	0x20000020
     814:	2000000c 	.word	0x2000000c
     818:	20001020 	.word	0x20001020
     81c:	20000010 	.word	0x20000010
     820:	20000014 	.word	0x20000014
     824:	00001b9c 	.word	0x00001b9c
     828:	00001b00 	.word	0x00001b00
     82c:	00001b48 	.word	0x00001b48
     830:	00001b90 	.word	0x00001b90

00000834 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     834:	b480      	push	{r7}
     836:	b085      	sub	sp, #20
     838:	af00      	add	r7, sp, #0
     83a:	60b9      	str	r1, [r7, #8]
     83c:	607a      	str	r2, [r7, #4]
     83e:	603b      	str	r3, [r7, #0]
     840:	4603      	mov	r3, r0
     842:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     844:	687a      	ldr	r2, [r7, #4]
     846:	683b      	ldr	r3, [r7, #0]
     848:	429a      	cmp	r2, r3
     84a:	d204      	bcs.n	856 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     84c:	68ba      	ldr	r2, [r7, #8]
     84e:	687b      	ldr	r3, [r7, #4]
     850:	4413      	add	r3, r2
     852:	7bfa      	ldrb	r2, [r7, #15]
     854:	701a      	strb	r2, [r3, #0]
  }
}
     856:	bf00      	nop
     858:	3714      	adds	r7, #20
     85a:	46bd      	mov	sp, r7
     85c:	bc80      	pop	{r7}
     85e:	4770      	bx	lr

00000860 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     860:	b480      	push	{r7}
     862:	b085      	sub	sp, #20
     864:	af00      	add	r7, sp, #0
     866:	60b9      	str	r1, [r7, #8]
     868:	607a      	str	r2, [r7, #4]
     86a:	603b      	str	r3, [r7, #0]
     86c:	4603      	mov	r3, r0
     86e:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     870:	bf00      	nop
     872:	3714      	adds	r7, #20
     874:	46bd      	mov	sp, r7
     876:	bc80      	pop	{r7}
     878:	4770      	bx	lr

0000087a <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     87a:	b580      	push	{r7, lr}
     87c:	b084      	sub	sp, #16
     87e:	af00      	add	r7, sp, #0
     880:	60b9      	str	r1, [r7, #8]
     882:	607a      	str	r2, [r7, #4]
     884:	603b      	str	r3, [r7, #0]
     886:	4603      	mov	r3, r0
     888:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     88a:	7bfb      	ldrb	r3, [r7, #15]
     88c:	2b00      	cmp	r3, #0
     88e:	d003      	beq.n	898 <_out_char+0x1e>
    _putchar(character);
     890:	7bfb      	ldrb	r3, [r7, #15]
     892:	4618      	mov	r0, r3
     894:	f7ff fd26 	bl	2e4 <_putchar>
  }
}
     898:	bf00      	nop
     89a:	3710      	adds	r7, #16
     89c:	46bd      	mov	sp, r7
     89e:	bd80      	pop	{r7, pc}

000008a0 <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     8a0:	b580      	push	{r7, lr}
     8a2:	b084      	sub	sp, #16
     8a4:	af00      	add	r7, sp, #0
     8a6:	60b9      	str	r1, [r7, #8]
     8a8:	607a      	str	r2, [r7, #4]
     8aa:	603b      	str	r3, [r7, #0]
     8ac:	4603      	mov	r3, r0
     8ae:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     8b0:	7bfb      	ldrb	r3, [r7, #15]
     8b2:	2b00      	cmp	r3, #0
     8b4:	d006      	beq.n	8c4 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     8b6:	68bb      	ldr	r3, [r7, #8]
     8b8:	681b      	ldr	r3, [r3, #0]
     8ba:	68ba      	ldr	r2, [r7, #8]
     8bc:	6851      	ldr	r1, [r2, #4]
     8be:	7bfa      	ldrb	r2, [r7, #15]
     8c0:	4610      	mov	r0, r2
     8c2:	4798      	blx	r3
  }
}
     8c4:	bf00      	nop
     8c6:	3710      	adds	r7, #16
     8c8:	46bd      	mov	sp, r7
     8ca:	bd80      	pop	{r7, pc}

000008cc <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     8cc:	b480      	push	{r7}
     8ce:	b085      	sub	sp, #20
     8d0:	af00      	add	r7, sp, #0
     8d2:	6078      	str	r0, [r7, #4]
     8d4:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     8d6:	687b      	ldr	r3, [r7, #4]
     8d8:	60fb      	str	r3, [r7, #12]
     8da:	e002      	b.n	8e2 <_strnlen_s+0x16>
     8dc:	68fb      	ldr	r3, [r7, #12]
     8de:	3301      	adds	r3, #1
     8e0:	60fb      	str	r3, [r7, #12]
     8e2:	68fb      	ldr	r3, [r7, #12]
     8e4:	781b      	ldrb	r3, [r3, #0]
     8e6:	2b00      	cmp	r3, #0
     8e8:	d004      	beq.n	8f4 <_strnlen_s+0x28>
     8ea:	683b      	ldr	r3, [r7, #0]
     8ec:	1e5a      	subs	r2, r3, #1
     8ee:	603a      	str	r2, [r7, #0]
     8f0:	2b00      	cmp	r3, #0
     8f2:	d1f3      	bne.n	8dc <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     8f4:	68fa      	ldr	r2, [r7, #12]
     8f6:	687b      	ldr	r3, [r7, #4]
     8f8:	1ad3      	subs	r3, r2, r3
}
     8fa:	4618      	mov	r0, r3
     8fc:	3714      	adds	r7, #20
     8fe:	46bd      	mov	sp, r7
     900:	bc80      	pop	{r7}
     902:	4770      	bx	lr

00000904 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     904:	b480      	push	{r7}
     906:	b083      	sub	sp, #12
     908:	af00      	add	r7, sp, #0
     90a:	4603      	mov	r3, r0
     90c:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     90e:	79fb      	ldrb	r3, [r7, #7]
     910:	2b2f      	cmp	r3, #47	; 0x2f
     912:	d904      	bls.n	91e <_is_digit+0x1a>
     914:	79fb      	ldrb	r3, [r7, #7]
     916:	2b39      	cmp	r3, #57	; 0x39
     918:	d801      	bhi.n	91e <_is_digit+0x1a>
     91a:	2301      	movs	r3, #1
     91c:	e000      	b.n	920 <_is_digit+0x1c>
     91e:	2300      	movs	r3, #0
     920:	f003 0301 	and.w	r3, r3, #1
     924:	b2db      	uxtb	r3, r3
}
     926:	4618      	mov	r0, r3
     928:	370c      	adds	r7, #12
     92a:	46bd      	mov	sp, r7
     92c:	bc80      	pop	{r7}
     92e:	4770      	bx	lr

00000930 <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     930:	b580      	push	{r7, lr}
     932:	b084      	sub	sp, #16
     934:	af00      	add	r7, sp, #0
     936:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     938:	2300      	movs	r3, #0
     93a:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     93c:	e00e      	b.n	95c <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     93e:	68fa      	ldr	r2, [r7, #12]
     940:	4613      	mov	r3, r2
     942:	009b      	lsls	r3, r3, #2
     944:	4413      	add	r3, r2
     946:	005b      	lsls	r3, r3, #1
     948:	4618      	mov	r0, r3
     94a:	687b      	ldr	r3, [r7, #4]
     94c:	681b      	ldr	r3, [r3, #0]
     94e:	1c59      	adds	r1, r3, #1
     950:	687a      	ldr	r2, [r7, #4]
     952:	6011      	str	r1, [r2, #0]
     954:	781b      	ldrb	r3, [r3, #0]
     956:	4403      	add	r3, r0
     958:	3b30      	subs	r3, #48	; 0x30
     95a:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     95c:	687b      	ldr	r3, [r7, #4]
     95e:	681b      	ldr	r3, [r3, #0]
     960:	781b      	ldrb	r3, [r3, #0]
     962:	4618      	mov	r0, r3
     964:	f7ff ffce 	bl	904 <_is_digit>
     968:	4603      	mov	r3, r0
     96a:	2b00      	cmp	r3, #0
     96c:	d1e7      	bne.n	93e <_atoi+0xe>
  }
  return i;
     96e:	68fb      	ldr	r3, [r7, #12]
}
     970:	4618      	mov	r0, r3
     972:	3710      	adds	r7, #16
     974:	46bd      	mov	sp, r7
     976:	bd80      	pop	{r7, pc}

00000978 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     978:	b590      	push	{r4, r7, lr}
     97a:	b087      	sub	sp, #28
     97c:	af00      	add	r7, sp, #0
     97e:	60f8      	str	r0, [r7, #12]
     980:	60b9      	str	r1, [r7, #8]
     982:	607a      	str	r2, [r7, #4]
     984:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     986:	687b      	ldr	r3, [r7, #4]
     988:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     98a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     98c:	f003 0302 	and.w	r3, r3, #2
     990:	2b00      	cmp	r3, #0
     992:	d125      	bne.n	9e0 <_out_rev+0x68>
     994:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     996:	f003 0301 	and.w	r3, r3, #1
     99a:	2b00      	cmp	r3, #0
     99c:	d120      	bne.n	9e0 <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     99e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9a0:	617b      	str	r3, [r7, #20]
     9a2:	e00a      	b.n	9ba <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     9a4:	687a      	ldr	r2, [r7, #4]
     9a6:	1c53      	adds	r3, r2, #1
     9a8:	607b      	str	r3, [r7, #4]
     9aa:	68fc      	ldr	r4, [r7, #12]
     9ac:	683b      	ldr	r3, [r7, #0]
     9ae:	68b9      	ldr	r1, [r7, #8]
     9b0:	2020      	movs	r0, #32
     9b2:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     9b4:	697b      	ldr	r3, [r7, #20]
     9b6:	3301      	adds	r3, #1
     9b8:	617b      	str	r3, [r7, #20]
     9ba:	697a      	ldr	r2, [r7, #20]
     9bc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     9be:	429a      	cmp	r2, r3
     9c0:	d3f0      	bcc.n	9a4 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     9c2:	e00d      	b.n	9e0 <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     9c4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9c6:	3b01      	subs	r3, #1
     9c8:	62fb      	str	r3, [r7, #44]	; 0x2c
     9ca:	6aba      	ldr	r2, [r7, #40]	; 0x28
     9cc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9ce:	4413      	add	r3, r2
     9d0:	7818      	ldrb	r0, [r3, #0]
     9d2:	687a      	ldr	r2, [r7, #4]
     9d4:	1c53      	adds	r3, r2, #1
     9d6:	607b      	str	r3, [r7, #4]
     9d8:	68fc      	ldr	r4, [r7, #12]
     9da:	683b      	ldr	r3, [r7, #0]
     9dc:	68b9      	ldr	r1, [r7, #8]
     9de:	47a0      	blx	r4
  while (len) {
     9e0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9e2:	2b00      	cmp	r3, #0
     9e4:	d1ee      	bne.n	9c4 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     9e6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     9e8:	f003 0302 	and.w	r3, r3, #2
     9ec:	2b00      	cmp	r3, #0
     9ee:	d00e      	beq.n	a0e <_out_rev+0x96>
    while (idx - start_idx < width) {
     9f0:	e007      	b.n	a02 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     9f2:	687a      	ldr	r2, [r7, #4]
     9f4:	1c53      	adds	r3, r2, #1
     9f6:	607b      	str	r3, [r7, #4]
     9f8:	68fc      	ldr	r4, [r7, #12]
     9fa:	683b      	ldr	r3, [r7, #0]
     9fc:	68b9      	ldr	r1, [r7, #8]
     9fe:	2020      	movs	r0, #32
     a00:	47a0      	blx	r4
    while (idx - start_idx < width) {
     a02:	687a      	ldr	r2, [r7, #4]
     a04:	693b      	ldr	r3, [r7, #16]
     a06:	1ad3      	subs	r3, r2, r3
     a08:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     a0a:	429a      	cmp	r2, r3
     a0c:	d8f1      	bhi.n	9f2 <_out_rev+0x7a>
    }
  }

  return idx;
     a0e:	687b      	ldr	r3, [r7, #4]
}
     a10:	4618      	mov	r0, r3
     a12:	371c      	adds	r7, #28
     a14:	46bd      	mov	sp, r7
     a16:	bd90      	pop	{r4, r7, pc}

00000a18 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     a18:	b580      	push	{r7, lr}
     a1a:	b088      	sub	sp, #32
     a1c:	af04      	add	r7, sp, #16
     a1e:	60f8      	str	r0, [r7, #12]
     a20:	60b9      	str	r1, [r7, #8]
     a22:	607a      	str	r2, [r7, #4]
     a24:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     a26:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     a28:	f003 0302 	and.w	r3, r3, #2
     a2c:	2b00      	cmp	r3, #0
     a2e:	d136      	bne.n	a9e <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     a30:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     a32:	2b00      	cmp	r3, #0
     a34:	d018      	beq.n	a68 <_ntoa_format+0x50>
     a36:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     a38:	f003 0301 	and.w	r3, r3, #1
     a3c:	2b00      	cmp	r3, #0
     a3e:	d013      	beq.n	a68 <_ntoa_format+0x50>
     a40:	f897 3020 	ldrb.w	r3, [r7, #32]
     a44:	2b00      	cmp	r3, #0
     a46:	d104      	bne.n	a52 <_ntoa_format+0x3a>
     a48:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     a4a:	f003 030c 	and.w	r3, r3, #12
     a4e:	2b00      	cmp	r3, #0
     a50:	d00a      	beq.n	a68 <_ntoa_format+0x50>
      width--;
     a52:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     a54:	3b01      	subs	r3, #1
     a56:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a58:	e006      	b.n	a68 <_ntoa_format+0x50>
      buf[len++] = '0';
     a5a:	69fb      	ldr	r3, [r7, #28]
     a5c:	1c5a      	adds	r2, r3, #1
     a5e:	61fa      	str	r2, [r7, #28]
     a60:	69ba      	ldr	r2, [r7, #24]
     a62:	4413      	add	r3, r2
     a64:	2230      	movs	r2, #48	; 0x30
     a66:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a68:	69fa      	ldr	r2, [r7, #28]
     a6a:	6abb      	ldr	r3, [r7, #40]	; 0x28
     a6c:	429a      	cmp	r2, r3
     a6e:	d20a      	bcs.n	a86 <_ntoa_format+0x6e>
     a70:	69fb      	ldr	r3, [r7, #28]
     a72:	2b1f      	cmp	r3, #31
     a74:	d9f1      	bls.n	a5a <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a76:	e006      	b.n	a86 <_ntoa_format+0x6e>
      buf[len++] = '0';
     a78:	69fb      	ldr	r3, [r7, #28]
     a7a:	1c5a      	adds	r2, r3, #1
     a7c:	61fa      	str	r2, [r7, #28]
     a7e:	69ba      	ldr	r2, [r7, #24]
     a80:	4413      	add	r3, r2
     a82:	2230      	movs	r2, #48	; 0x30
     a84:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     a86:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     a88:	f003 0301 	and.w	r3, r3, #1
     a8c:	2b00      	cmp	r3, #0
     a8e:	d006      	beq.n	a9e <_ntoa_format+0x86>
     a90:	69fa      	ldr	r2, [r7, #28]
     a92:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     a94:	429a      	cmp	r2, r3
     a96:	d202      	bcs.n	a9e <_ntoa_format+0x86>
     a98:	69fb      	ldr	r3, [r7, #28]
     a9a:	2b1f      	cmp	r3, #31
     a9c:	d9ec      	bls.n	a78 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     a9e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     aa0:	f003 0310 	and.w	r3, r3, #16
     aa4:	2b00      	cmp	r3, #0
     aa6:	d058      	beq.n	b5a <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     aa8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     aaa:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     aae:	2b00      	cmp	r3, #0
     ab0:	d116      	bne.n	ae0 <_ntoa_format+0xc8>
     ab2:	69fb      	ldr	r3, [r7, #28]
     ab4:	2b00      	cmp	r3, #0
     ab6:	d013      	beq.n	ae0 <_ntoa_format+0xc8>
     ab8:	69fa      	ldr	r2, [r7, #28]
     aba:	6abb      	ldr	r3, [r7, #40]	; 0x28
     abc:	429a      	cmp	r2, r3
     abe:	d003      	beq.n	ac8 <_ntoa_format+0xb0>
     ac0:	69fa      	ldr	r2, [r7, #28]
     ac2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     ac4:	429a      	cmp	r2, r3
     ac6:	d10b      	bne.n	ae0 <_ntoa_format+0xc8>
      len--;
     ac8:	69fb      	ldr	r3, [r7, #28]
     aca:	3b01      	subs	r3, #1
     acc:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     ace:	69fb      	ldr	r3, [r7, #28]
     ad0:	2b00      	cmp	r3, #0
     ad2:	d005      	beq.n	ae0 <_ntoa_format+0xc8>
     ad4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     ad6:	2b10      	cmp	r3, #16
     ad8:	d102      	bne.n	ae0 <_ntoa_format+0xc8>
        len--;
     ada:	69fb      	ldr	r3, [r7, #28]
     adc:	3b01      	subs	r3, #1
     ade:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     ae0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     ae2:	2b10      	cmp	r3, #16
     ae4:	d10f      	bne.n	b06 <_ntoa_format+0xee>
     ae6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ae8:	f003 0320 	and.w	r3, r3, #32
     aec:	2b00      	cmp	r3, #0
     aee:	d10a      	bne.n	b06 <_ntoa_format+0xee>
     af0:	69fb      	ldr	r3, [r7, #28]
     af2:	2b1f      	cmp	r3, #31
     af4:	d807      	bhi.n	b06 <_ntoa_format+0xee>
      buf[len++] = 'x';
     af6:	69fb      	ldr	r3, [r7, #28]
     af8:	1c5a      	adds	r2, r3, #1
     afa:	61fa      	str	r2, [r7, #28]
     afc:	69ba      	ldr	r2, [r7, #24]
     afe:	4413      	add	r3, r2
     b00:	2278      	movs	r2, #120	; 0x78
     b02:	701a      	strb	r2, [r3, #0]
     b04:	e01f      	b.n	b46 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     b06:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     b08:	2b10      	cmp	r3, #16
     b0a:	d10f      	bne.n	b2c <_ntoa_format+0x114>
     b0c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b0e:	f003 0320 	and.w	r3, r3, #32
     b12:	2b00      	cmp	r3, #0
     b14:	d00a      	beq.n	b2c <_ntoa_format+0x114>
     b16:	69fb      	ldr	r3, [r7, #28]
     b18:	2b1f      	cmp	r3, #31
     b1a:	d807      	bhi.n	b2c <_ntoa_format+0x114>
      buf[len++] = 'X';
     b1c:	69fb      	ldr	r3, [r7, #28]
     b1e:	1c5a      	adds	r2, r3, #1
     b20:	61fa      	str	r2, [r7, #28]
     b22:	69ba      	ldr	r2, [r7, #24]
     b24:	4413      	add	r3, r2
     b26:	2258      	movs	r2, #88	; 0x58
     b28:	701a      	strb	r2, [r3, #0]
     b2a:	e00c      	b.n	b46 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     b2c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     b2e:	2b02      	cmp	r3, #2
     b30:	d109      	bne.n	b46 <_ntoa_format+0x12e>
     b32:	69fb      	ldr	r3, [r7, #28]
     b34:	2b1f      	cmp	r3, #31
     b36:	d806      	bhi.n	b46 <_ntoa_format+0x12e>
      buf[len++] = 'b';
     b38:	69fb      	ldr	r3, [r7, #28]
     b3a:	1c5a      	adds	r2, r3, #1
     b3c:	61fa      	str	r2, [r7, #28]
     b3e:	69ba      	ldr	r2, [r7, #24]
     b40:	4413      	add	r3, r2
     b42:	2262      	movs	r2, #98	; 0x62
     b44:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     b46:	69fb      	ldr	r3, [r7, #28]
     b48:	2b1f      	cmp	r3, #31
     b4a:	d806      	bhi.n	b5a <_ntoa_format+0x142>
      buf[len++] = '0';
     b4c:	69fb      	ldr	r3, [r7, #28]
     b4e:	1c5a      	adds	r2, r3, #1
     b50:	61fa      	str	r2, [r7, #28]
     b52:	69ba      	ldr	r2, [r7, #24]
     b54:	4413      	add	r3, r2
     b56:	2230      	movs	r2, #48	; 0x30
     b58:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     b5a:	69fb      	ldr	r3, [r7, #28]
     b5c:	2b1f      	cmp	r3, #31
     b5e:	d824      	bhi.n	baa <_ntoa_format+0x192>
    if (negative) {
     b60:	f897 3020 	ldrb.w	r3, [r7, #32]
     b64:	2b00      	cmp	r3, #0
     b66:	d007      	beq.n	b78 <_ntoa_format+0x160>
      buf[len++] = '-';
     b68:	69fb      	ldr	r3, [r7, #28]
     b6a:	1c5a      	adds	r2, r3, #1
     b6c:	61fa      	str	r2, [r7, #28]
     b6e:	69ba      	ldr	r2, [r7, #24]
     b70:	4413      	add	r3, r2
     b72:	222d      	movs	r2, #45	; 0x2d
     b74:	701a      	strb	r2, [r3, #0]
     b76:	e018      	b.n	baa <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     b78:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b7a:	f003 0304 	and.w	r3, r3, #4
     b7e:	2b00      	cmp	r3, #0
     b80:	d007      	beq.n	b92 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     b82:	69fb      	ldr	r3, [r7, #28]
     b84:	1c5a      	adds	r2, r3, #1
     b86:	61fa      	str	r2, [r7, #28]
     b88:	69ba      	ldr	r2, [r7, #24]
     b8a:	4413      	add	r3, r2
     b8c:	222b      	movs	r2, #43	; 0x2b
     b8e:	701a      	strb	r2, [r3, #0]
     b90:	e00b      	b.n	baa <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     b92:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     b94:	f003 0308 	and.w	r3, r3, #8
     b98:	2b00      	cmp	r3, #0
     b9a:	d006      	beq.n	baa <_ntoa_format+0x192>
      buf[len++] = ' ';
     b9c:	69fb      	ldr	r3, [r7, #28]
     b9e:	1c5a      	adds	r2, r3, #1
     ba0:	61fa      	str	r2, [r7, #28]
     ba2:	69ba      	ldr	r2, [r7, #24]
     ba4:	4413      	add	r3, r2
     ba6:	2220      	movs	r2, #32
     ba8:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     baa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     bac:	9303      	str	r3, [sp, #12]
     bae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     bb0:	9302      	str	r3, [sp, #8]
     bb2:	69fb      	ldr	r3, [r7, #28]
     bb4:	9301      	str	r3, [sp, #4]
     bb6:	69bb      	ldr	r3, [r7, #24]
     bb8:	9300      	str	r3, [sp, #0]
     bba:	683b      	ldr	r3, [r7, #0]
     bbc:	687a      	ldr	r2, [r7, #4]
     bbe:	68b9      	ldr	r1, [r7, #8]
     bc0:	68f8      	ldr	r0, [r7, #12]
     bc2:	f7ff fed9 	bl	978 <_out_rev>
     bc6:	4603      	mov	r3, r0
}
     bc8:	4618      	mov	r0, r3
     bca:	3710      	adds	r7, #16
     bcc:	46bd      	mov	sp, r7
     bce:	bd80      	pop	{r7, pc}

00000bd0 <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     bd0:	b580      	push	{r7, lr}
     bd2:	b096      	sub	sp, #88	; 0x58
     bd4:	af08      	add	r7, sp, #32
     bd6:	60f8      	str	r0, [r7, #12]
     bd8:	60b9      	str	r1, [r7, #8]
     bda:	607a      	str	r2, [r7, #4]
     bdc:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     bde:	2300      	movs	r3, #0
     be0:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     be2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     be4:	2b00      	cmp	r3, #0
     be6:	d103      	bne.n	bf0 <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     be8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     bea:	f023 0310 	bic.w	r3, r3, #16
     bee:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     bf0:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     bf2:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     bf6:	2b00      	cmp	r3, #0
     bf8:	d002      	beq.n	c00 <_ntoa_long+0x30>
     bfa:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     bfc:	2b00      	cmp	r3, #0
     bfe:	d033      	beq.n	c68 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     c00:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     c02:	6cba      	ldr	r2, [r7, #72]	; 0x48
     c04:	fbb3 f2f2 	udiv	r2, r3, r2
     c08:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     c0a:	fb01 f202 	mul.w	r2, r1, r2
     c0e:	1a9b      	subs	r3, r3, r2
     c10:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     c14:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     c18:	2b09      	cmp	r3, #9
     c1a:	d804      	bhi.n	c26 <_ntoa_long+0x56>
     c1c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     c20:	3330      	adds	r3, #48	; 0x30
     c22:	b2da      	uxtb	r2, r3
     c24:	e00d      	b.n	c42 <_ntoa_long+0x72>
     c26:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     c28:	f003 0320 	and.w	r3, r3, #32
     c2c:	2b00      	cmp	r3, #0
     c2e:	d001      	beq.n	c34 <_ntoa_long+0x64>
     c30:	2241      	movs	r2, #65	; 0x41
     c32:	e000      	b.n	c36 <_ntoa_long+0x66>
     c34:	2261      	movs	r2, #97	; 0x61
     c36:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     c3a:	4413      	add	r3, r2
     c3c:	b2db      	uxtb	r3, r3
     c3e:	3b0a      	subs	r3, #10
     c40:	b2da      	uxtb	r2, r3
     c42:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     c44:	1c59      	adds	r1, r3, #1
     c46:	6379      	str	r1, [r7, #52]	; 0x34
     c48:	f107 0138 	add.w	r1, r7, #56	; 0x38
     c4c:	440b      	add	r3, r1
     c4e:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     c52:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     c54:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     c56:	fbb2 f3f3 	udiv	r3, r2, r3
     c5a:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     c5c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     c5e:	2b00      	cmp	r3, #0
     c60:	d002      	beq.n	c68 <_ntoa_long+0x98>
     c62:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     c64:	2b1f      	cmp	r3, #31
     c66:	d9cb      	bls.n	c00 <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     c68:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     c6a:	9306      	str	r3, [sp, #24]
     c6c:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     c6e:	9305      	str	r3, [sp, #20]
     c70:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     c72:	9304      	str	r3, [sp, #16]
     c74:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     c76:	9303      	str	r3, [sp, #12]
     c78:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     c7c:	9302      	str	r3, [sp, #8]
     c7e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     c80:	9301      	str	r3, [sp, #4]
     c82:	f107 0310 	add.w	r3, r7, #16
     c86:	9300      	str	r3, [sp, #0]
     c88:	683b      	ldr	r3, [r7, #0]
     c8a:	687a      	ldr	r2, [r7, #4]
     c8c:	68b9      	ldr	r1, [r7, #8]
     c8e:	68f8      	ldr	r0, [r7, #12]
     c90:	f7ff fec2 	bl	a18 <_ntoa_format>
     c94:	4603      	mov	r3, r0
}
     c96:	4618      	mov	r0, r3
     c98:	3738      	adds	r7, #56	; 0x38
     c9a:	46bd      	mov	sp, r7
     c9c:	bd80      	pop	{r7, pc}

00000c9e <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     c9e:	b590      	push	{r4, r7, lr}
     ca0:	b099      	sub	sp, #100	; 0x64
     ca2:	af06      	add	r7, sp, #24
     ca4:	60f8      	str	r0, [r7, #12]
     ca6:	60b9      	str	r1, [r7, #8]
     ca8:	607a      	str	r2, [r7, #4]
     caa:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     cac:	2300      	movs	r3, #0
     cae:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     cb0:	68bb      	ldr	r3, [r7, #8]
     cb2:	2b00      	cmp	r3, #0
     cb4:	f040 83c0 	bne.w	1438 <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     cb8:	4b9f      	ldr	r3, [pc, #636]	; (f38 <_vsnprintf+0x29a>)
     cba:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     cbc:	e3bc      	b.n	1438 <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     cbe:	683b      	ldr	r3, [r7, #0]
     cc0:	781b      	ldrb	r3, [r3, #0]
     cc2:	2b25      	cmp	r3, #37	; 0x25
     cc4:	d00c      	beq.n	ce0 <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
     cc6:	683b      	ldr	r3, [r7, #0]
     cc8:	7818      	ldrb	r0, [r3, #0]
     cca:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     ccc:	1c53      	adds	r3, r2, #1
     cce:	637b      	str	r3, [r7, #52]	; 0x34
     cd0:	68fc      	ldr	r4, [r7, #12]
     cd2:	687b      	ldr	r3, [r7, #4]
     cd4:	68b9      	ldr	r1, [r7, #8]
     cd6:	47a0      	blx	r4
      format++;
     cd8:	683b      	ldr	r3, [r7, #0]
     cda:	3301      	adds	r3, #1
     cdc:	603b      	str	r3, [r7, #0]
      continue;
     cde:	e3ab      	b.n	1438 <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
     ce0:	683b      	ldr	r3, [r7, #0]
     ce2:	3301      	adds	r3, #1
     ce4:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     ce6:	2300      	movs	r3, #0
     ce8:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     cea:	683b      	ldr	r3, [r7, #0]
     cec:	781b      	ldrb	r3, [r3, #0]
     cee:	3b20      	subs	r3, #32
     cf0:	2b10      	cmp	r3, #16
     cf2:	d857      	bhi.n	da4 <_vsnprintf+0x106>
     cf4:	a201      	add	r2, pc, #4	; (adr r2, cfc <_vsnprintf+0x5e>)
     cf6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     cfa:	bf00      	nop
     cfc:	00000d7d 	.word	0x00000d7d
     d00:	00000da5 	.word	0x00000da5
     d04:	00000da5 	.word	0x00000da5
     d08:	00000d91 	.word	0x00000d91
     d0c:	00000da5 	.word	0x00000da5
     d10:	00000da5 	.word	0x00000da5
     d14:	00000da5 	.word	0x00000da5
     d18:	00000da5 	.word	0x00000da5
     d1c:	00000da5 	.word	0x00000da5
     d20:	00000da5 	.word	0x00000da5
     d24:	00000da5 	.word	0x00000da5
     d28:	00000d69 	.word	0x00000d69
     d2c:	00000da5 	.word	0x00000da5
     d30:	00000d55 	.word	0x00000d55
     d34:	00000da5 	.word	0x00000da5
     d38:	00000da5 	.word	0x00000da5
     d3c:	00000d41 	.word	0x00000d41
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     d40:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d42:	f043 0301 	orr.w	r3, r3, #1
     d46:	647b      	str	r3, [r7, #68]	; 0x44
     d48:	683b      	ldr	r3, [r7, #0]
     d4a:	3301      	adds	r3, #1
     d4c:	603b      	str	r3, [r7, #0]
     d4e:	2301      	movs	r3, #1
     d50:	63bb      	str	r3, [r7, #56]	; 0x38
     d52:	e02a      	b.n	daa <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     d54:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d56:	f043 0302 	orr.w	r3, r3, #2
     d5a:	647b      	str	r3, [r7, #68]	; 0x44
     d5c:	683b      	ldr	r3, [r7, #0]
     d5e:	3301      	adds	r3, #1
     d60:	603b      	str	r3, [r7, #0]
     d62:	2301      	movs	r3, #1
     d64:	63bb      	str	r3, [r7, #56]	; 0x38
     d66:	e020      	b.n	daa <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     d68:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d6a:	f043 0304 	orr.w	r3, r3, #4
     d6e:	647b      	str	r3, [r7, #68]	; 0x44
     d70:	683b      	ldr	r3, [r7, #0]
     d72:	3301      	adds	r3, #1
     d74:	603b      	str	r3, [r7, #0]
     d76:	2301      	movs	r3, #1
     d78:	63bb      	str	r3, [r7, #56]	; 0x38
     d7a:	e016      	b.n	daa <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     d7c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d7e:	f043 0308 	orr.w	r3, r3, #8
     d82:	647b      	str	r3, [r7, #68]	; 0x44
     d84:	683b      	ldr	r3, [r7, #0]
     d86:	3301      	adds	r3, #1
     d88:	603b      	str	r3, [r7, #0]
     d8a:	2301      	movs	r3, #1
     d8c:	63bb      	str	r3, [r7, #56]	; 0x38
     d8e:	e00c      	b.n	daa <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     d90:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d92:	f043 0310 	orr.w	r3, r3, #16
     d96:	647b      	str	r3, [r7, #68]	; 0x44
     d98:	683b      	ldr	r3, [r7, #0]
     d9a:	3301      	adds	r3, #1
     d9c:	603b      	str	r3, [r7, #0]
     d9e:	2301      	movs	r3, #1
     da0:	63bb      	str	r3, [r7, #56]	; 0x38
     da2:	e002      	b.n	daa <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     da4:	2300      	movs	r3, #0
     da6:	63bb      	str	r3, [r7, #56]	; 0x38
     da8:	bf00      	nop
      }
    } while (n);
     daa:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     dac:	2b00      	cmp	r3, #0
     dae:	d19c      	bne.n	cea <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
     db0:	2300      	movs	r3, #0
     db2:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     db4:	683b      	ldr	r3, [r7, #0]
     db6:	781b      	ldrb	r3, [r3, #0]
     db8:	4618      	mov	r0, r3
     dba:	f7ff fda3 	bl	904 <_is_digit>
     dbe:	4603      	mov	r3, r0
     dc0:	2b00      	cmp	r3, #0
     dc2:	d005      	beq.n	dd0 <_vsnprintf+0x132>
      width = _atoi(&format);
     dc4:	463b      	mov	r3, r7
     dc6:	4618      	mov	r0, r3
     dc8:	f7ff fdb2 	bl	930 <_atoi>
     dcc:	6438      	str	r0, [r7, #64]	; 0x40
     dce:	e018      	b.n	e02 <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     dd0:	683b      	ldr	r3, [r7, #0]
     dd2:	781b      	ldrb	r3, [r3, #0]
     dd4:	2b2a      	cmp	r3, #42	; 0x2a
     dd6:	d114      	bne.n	e02 <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     dd8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     dda:	1d1a      	adds	r2, r3, #4
     ddc:	65ba      	str	r2, [r7, #88]	; 0x58
     dde:	681b      	ldr	r3, [r3, #0]
     de0:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     de2:	6a3b      	ldr	r3, [r7, #32]
     de4:	2b00      	cmp	r3, #0
     de6:	da07      	bge.n	df8 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     de8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     dea:	f043 0302 	orr.w	r3, r3, #2
     dee:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     df0:	6a3b      	ldr	r3, [r7, #32]
     df2:	425b      	negs	r3, r3
     df4:	643b      	str	r3, [r7, #64]	; 0x40
     df6:	e001      	b.n	dfc <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     df8:	6a3b      	ldr	r3, [r7, #32]
     dfa:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     dfc:	683b      	ldr	r3, [r7, #0]
     dfe:	3301      	adds	r3, #1
     e00:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     e02:	2300      	movs	r3, #0
     e04:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     e06:	683b      	ldr	r3, [r7, #0]
     e08:	781b      	ldrb	r3, [r3, #0]
     e0a:	2b2e      	cmp	r3, #46	; 0x2e
     e0c:	d124      	bne.n	e58 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     e0e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e10:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     e14:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     e16:	683b      	ldr	r3, [r7, #0]
     e18:	3301      	adds	r3, #1
     e1a:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     e1c:	683b      	ldr	r3, [r7, #0]
     e1e:	781b      	ldrb	r3, [r3, #0]
     e20:	4618      	mov	r0, r3
     e22:	f7ff fd6f 	bl	904 <_is_digit>
     e26:	4603      	mov	r3, r0
     e28:	2b00      	cmp	r3, #0
     e2a:	d005      	beq.n	e38 <_vsnprintf+0x19a>
        precision = _atoi(&format);
     e2c:	463b      	mov	r3, r7
     e2e:	4618      	mov	r0, r3
     e30:	f7ff fd7e 	bl	930 <_atoi>
     e34:	63f8      	str	r0, [r7, #60]	; 0x3c
     e36:	e00f      	b.n	e58 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     e38:	683b      	ldr	r3, [r7, #0]
     e3a:	781b      	ldrb	r3, [r3, #0]
     e3c:	2b2a      	cmp	r3, #42	; 0x2a
     e3e:	d10b      	bne.n	e58 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     e40:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     e42:	1d1a      	adds	r2, r3, #4
     e44:	65ba      	str	r2, [r7, #88]	; 0x58
     e46:	681b      	ldr	r3, [r3, #0]
     e48:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     e4a:	69fb      	ldr	r3, [r7, #28]
     e4c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     e50:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     e52:	683b      	ldr	r3, [r7, #0]
     e54:	3301      	adds	r3, #1
     e56:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     e58:	683b      	ldr	r3, [r7, #0]
     e5a:	781b      	ldrb	r3, [r3, #0]
     e5c:	3b68      	subs	r3, #104	; 0x68
     e5e:	2b12      	cmp	r3, #18
     e60:	d866      	bhi.n	f30 <_vsnprintf+0x292>
     e62:	a201      	add	r2, pc, #4	; (adr r2, e68 <_vsnprintf+0x1ca>)
     e64:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     e68:	00000edb 	.word	0x00000edb
     e6c:	00000f31 	.word	0x00000f31
     e70:	00000f11 	.word	0x00000f11
     e74:	00000f31 	.word	0x00000f31
     e78:	00000eb5 	.word	0x00000eb5
     e7c:	00000f31 	.word	0x00000f31
     e80:	00000f31 	.word	0x00000f31
     e84:	00000f31 	.word	0x00000f31
     e88:	00000f31 	.word	0x00000f31
     e8c:	00000f31 	.word	0x00000f31
     e90:	00000f31 	.word	0x00000f31
     e94:	00000f31 	.word	0x00000f31
     e98:	00000f01 	.word	0x00000f01
     e9c:	00000f31 	.word	0x00000f31
     ea0:	00000f31 	.word	0x00000f31
     ea4:	00000f31 	.word	0x00000f31
     ea8:	00000f31 	.word	0x00000f31
     eac:	00000f31 	.word	0x00000f31
     eb0:	00000f21 	.word	0x00000f21
      case 'l' :
        flags |= FLAGS_LONG;
     eb4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     eb6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     eba:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     ebc:	683b      	ldr	r3, [r7, #0]
     ebe:	3301      	adds	r3, #1
     ec0:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     ec2:	683b      	ldr	r3, [r7, #0]
     ec4:	781b      	ldrb	r3, [r3, #0]
     ec6:	2b6c      	cmp	r3, #108	; 0x6c
     ec8:	d134      	bne.n	f34 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     eca:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ecc:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     ed0:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     ed2:	683b      	ldr	r3, [r7, #0]
     ed4:	3301      	adds	r3, #1
     ed6:	603b      	str	r3, [r7, #0]
        }
        break;
     ed8:	e02c      	b.n	f34 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     eda:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     edc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     ee0:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     ee2:	683b      	ldr	r3, [r7, #0]
     ee4:	3301      	adds	r3, #1
     ee6:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     ee8:	683b      	ldr	r3, [r7, #0]
     eea:	781b      	ldrb	r3, [r3, #0]
     eec:	2b68      	cmp	r3, #104	; 0x68
     eee:	d125      	bne.n	f3c <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     ef0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ef2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     ef6:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     ef8:	683b      	ldr	r3, [r7, #0]
     efa:	3301      	adds	r3, #1
     efc:	603b      	str	r3, [r7, #0]
        }
        break;
     efe:	e01d      	b.n	f3c <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     f00:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f02:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     f06:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     f08:	683b      	ldr	r3, [r7, #0]
     f0a:	3301      	adds	r3, #1
     f0c:	603b      	str	r3, [r7, #0]
        break;
     f0e:	e016      	b.n	f3e <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     f10:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f12:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     f16:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     f18:	683b      	ldr	r3, [r7, #0]
     f1a:	3301      	adds	r3, #1
     f1c:	603b      	str	r3, [r7, #0]
        break;
     f1e:	e00e      	b.n	f3e <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     f20:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f22:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     f26:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     f28:	683b      	ldr	r3, [r7, #0]
     f2a:	3301      	adds	r3, #1
     f2c:	603b      	str	r3, [r7, #0]
        break;
     f2e:	e006      	b.n	f3e <_vsnprintf+0x2a0>
      default :
        break;
     f30:	bf00      	nop
     f32:	e004      	b.n	f3e <_vsnprintf+0x2a0>
        break;
     f34:	bf00      	nop
     f36:	e002      	b.n	f3e <_vsnprintf+0x2a0>
     f38:	00000861 	.word	0x00000861
        break;
     f3c:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     f3e:	683b      	ldr	r3, [r7, #0]
     f40:	781b      	ldrb	r3, [r3, #0]
     f42:	3b25      	subs	r3, #37	; 0x25
     f44:	2b53      	cmp	r3, #83	; 0x53
     f46:	f200 826a 	bhi.w	141e <_vsnprintf+0x780>
     f4a:	a201      	add	r2, pc, #4	; (adr r2, f50 <_vsnprintf+0x2b2>)
     f4c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     f50:	00001407 	.word	0x00001407
     f54:	0000141f 	.word	0x0000141f
     f58:	0000141f 	.word	0x0000141f
     f5c:	0000141f 	.word	0x0000141f
     f60:	0000141f 	.word	0x0000141f
     f64:	0000141f 	.word	0x0000141f
     f68:	0000141f 	.word	0x0000141f
     f6c:	0000141f 	.word	0x0000141f
     f70:	0000141f 	.word	0x0000141f
     f74:	0000141f 	.word	0x0000141f
     f78:	0000141f 	.word	0x0000141f
     f7c:	0000141f 	.word	0x0000141f
     f80:	0000141f 	.word	0x0000141f
     f84:	0000141f 	.word	0x0000141f
     f88:	0000141f 	.word	0x0000141f
     f8c:	0000141f 	.word	0x0000141f
     f90:	0000141f 	.word	0x0000141f
     f94:	0000141f 	.word	0x0000141f
     f98:	0000141f 	.word	0x0000141f
     f9c:	0000141f 	.word	0x0000141f
     fa0:	0000141f 	.word	0x0000141f
     fa4:	0000141f 	.word	0x0000141f
     fa8:	0000141f 	.word	0x0000141f
     fac:	0000141f 	.word	0x0000141f
     fb0:	0000141f 	.word	0x0000141f
     fb4:	0000141f 	.word	0x0000141f
     fb8:	0000141f 	.word	0x0000141f
     fbc:	0000141f 	.word	0x0000141f
     fc0:	0000141f 	.word	0x0000141f
     fc4:	0000141f 	.word	0x0000141f
     fc8:	0000141f 	.word	0x0000141f
     fcc:	0000141f 	.word	0x0000141f
     fd0:	0000141f 	.word	0x0000141f
     fd4:	0000141f 	.word	0x0000141f
     fd8:	0000141f 	.word	0x0000141f
     fdc:	0000141f 	.word	0x0000141f
     fe0:	0000141f 	.word	0x0000141f
     fe4:	0000141f 	.word	0x0000141f
     fe8:	0000141f 	.word	0x0000141f
     fec:	0000141f 	.word	0x0000141f
     ff0:	0000141f 	.word	0x0000141f
     ff4:	0000141f 	.word	0x0000141f
     ff8:	0000141f 	.word	0x0000141f
     ffc:	0000141f 	.word	0x0000141f
    1000:	0000141f 	.word	0x0000141f
    1004:	0000141f 	.word	0x0000141f
    1008:	0000141f 	.word	0x0000141f
    100c:	0000141f 	.word	0x0000141f
    1010:	0000141f 	.word	0x0000141f
    1014:	0000141f 	.word	0x0000141f
    1018:	0000141f 	.word	0x0000141f
    101c:	000010a1 	.word	0x000010a1
    1020:	0000141f 	.word	0x0000141f
    1024:	0000141f 	.word	0x0000141f
    1028:	0000141f 	.word	0x0000141f
    102c:	0000141f 	.word	0x0000141f
    1030:	0000141f 	.word	0x0000141f
    1034:	0000141f 	.word	0x0000141f
    1038:	0000141f 	.word	0x0000141f
    103c:	0000141f 	.word	0x0000141f
    1040:	0000141f 	.word	0x0000141f
    1044:	000010a1 	.word	0x000010a1
    1048:	0000128d 	.word	0x0000128d
    104c:	000010a1 	.word	0x000010a1
    1050:	0000141f 	.word	0x0000141f
    1054:	0000141f 	.word	0x0000141f
    1058:	0000141f 	.word	0x0000141f
    105c:	0000141f 	.word	0x0000141f
    1060:	000010a1 	.word	0x000010a1
    1064:	0000141f 	.word	0x0000141f
    1068:	0000141f 	.word	0x0000141f
    106c:	0000141f 	.word	0x0000141f
    1070:	0000141f 	.word	0x0000141f
    1074:	0000141f 	.word	0x0000141f
    1078:	000010a1 	.word	0x000010a1
    107c:	000013c5 	.word	0x000013c5
    1080:	0000141f 	.word	0x0000141f
    1084:	0000141f 	.word	0x0000141f
    1088:	00001301 	.word	0x00001301
    108c:	0000141f 	.word	0x0000141f
    1090:	000010a1 	.word	0x000010a1
    1094:	0000141f 	.word	0x0000141f
    1098:	0000141f 	.word	0x0000141f
    109c:	000010a1 	.word	0x000010a1
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
    10a0:	683b      	ldr	r3, [r7, #0]
    10a2:	781b      	ldrb	r3, [r3, #0]
    10a4:	2b78      	cmp	r3, #120	; 0x78
    10a6:	d003      	beq.n	10b0 <_vsnprintf+0x412>
    10a8:	683b      	ldr	r3, [r7, #0]
    10aa:	781b      	ldrb	r3, [r3, #0]
    10ac:	2b58      	cmp	r3, #88	; 0x58
    10ae:	d102      	bne.n	10b6 <_vsnprintf+0x418>
          base = 16U;
    10b0:	2310      	movs	r3, #16
    10b2:	633b      	str	r3, [r7, #48]	; 0x30
    10b4:	e013      	b.n	10de <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
    10b6:	683b      	ldr	r3, [r7, #0]
    10b8:	781b      	ldrb	r3, [r3, #0]
    10ba:	2b6f      	cmp	r3, #111	; 0x6f
    10bc:	d102      	bne.n	10c4 <_vsnprintf+0x426>
          base =  8U;
    10be:	2308      	movs	r3, #8
    10c0:	633b      	str	r3, [r7, #48]	; 0x30
    10c2:	e00c      	b.n	10de <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
    10c4:	683b      	ldr	r3, [r7, #0]
    10c6:	781b      	ldrb	r3, [r3, #0]
    10c8:	2b62      	cmp	r3, #98	; 0x62
    10ca:	d102      	bne.n	10d2 <_vsnprintf+0x434>
          base =  2U;
    10cc:	2302      	movs	r3, #2
    10ce:	633b      	str	r3, [r7, #48]	; 0x30
    10d0:	e005      	b.n	10de <_vsnprintf+0x440>
        }
        else {
          base = 10U;
    10d2:	230a      	movs	r3, #10
    10d4:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
    10d6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10d8:	f023 0310 	bic.w	r3, r3, #16
    10dc:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
    10de:	683b      	ldr	r3, [r7, #0]
    10e0:	781b      	ldrb	r3, [r3, #0]
    10e2:	2b58      	cmp	r3, #88	; 0x58
    10e4:	d103      	bne.n	10ee <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
    10e6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10e8:	f043 0320 	orr.w	r3, r3, #32
    10ec:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
    10ee:	683b      	ldr	r3, [r7, #0]
    10f0:	781b      	ldrb	r3, [r3, #0]
    10f2:	2b69      	cmp	r3, #105	; 0x69
    10f4:	d007      	beq.n	1106 <_vsnprintf+0x468>
    10f6:	683b      	ldr	r3, [r7, #0]
    10f8:	781b      	ldrb	r3, [r3, #0]
    10fa:	2b64      	cmp	r3, #100	; 0x64
    10fc:	d003      	beq.n	1106 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
    10fe:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1100:	f023 030c 	bic.w	r3, r3, #12
    1104:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
    1106:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1108:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    110c:	2b00      	cmp	r3, #0
    110e:	d003      	beq.n	1118 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
    1110:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1112:	f023 0301 	bic.w	r3, r3, #1
    1116:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
    1118:	683b      	ldr	r3, [r7, #0]
    111a:	781b      	ldrb	r3, [r3, #0]
    111c:	2b69      	cmp	r3, #105	; 0x69
    111e:	d003      	beq.n	1128 <_vsnprintf+0x48a>
    1120:	683b      	ldr	r3, [r7, #0]
    1122:	781b      	ldrb	r3, [r3, #0]
    1124:	2b64      	cmp	r3, #100	; 0x64
    1126:	d15e      	bne.n	11e6 <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
    1128:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    112a:	f403 7300 	and.w	r3, r3, #512	; 0x200
    112e:	2b00      	cmp	r3, #0
    1130:	f040 80a8 	bne.w	1284 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
    1134:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1136:	f403 7380 	and.w	r3, r3, #256	; 0x100
    113a:	2b00      	cmp	r3, #0
    113c:	d01e      	beq.n	117c <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
    113e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1140:	1d1a      	adds	r2, r3, #4
    1142:	65ba      	str	r2, [r7, #88]	; 0x58
    1144:	681b      	ldr	r3, [r3, #0]
    1146:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    1148:	693b      	ldr	r3, [r7, #16]
    114a:	2b00      	cmp	r3, #0
    114c:	bfb8      	it	lt
    114e:	425b      	neglt	r3, r3
    1150:	4619      	mov	r1, r3
    1152:	693b      	ldr	r3, [r7, #16]
    1154:	0fdb      	lsrs	r3, r3, #31
    1156:	b2db      	uxtb	r3, r3
    1158:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    115a:	9205      	str	r2, [sp, #20]
    115c:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    115e:	9204      	str	r2, [sp, #16]
    1160:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    1162:	9203      	str	r2, [sp, #12]
    1164:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    1166:	9202      	str	r2, [sp, #8]
    1168:	9301      	str	r3, [sp, #4]
    116a:	9100      	str	r1, [sp, #0]
    116c:	687b      	ldr	r3, [r7, #4]
    116e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1170:	68b9      	ldr	r1, [r7, #8]
    1172:	68f8      	ldr	r0, [r7, #12]
    1174:	f7ff fd2c 	bl	bd0 <_ntoa_long>
    1178:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
    117a:	e083      	b.n	1284 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    117c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    117e:	f003 0340 	and.w	r3, r3, #64	; 0x40
    1182:	2b00      	cmp	r3, #0
    1184:	d005      	beq.n	1192 <_vsnprintf+0x4f4>
    1186:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1188:	1d1a      	adds	r2, r3, #4
    118a:	65ba      	str	r2, [r7, #88]	; 0x58
    118c:	681b      	ldr	r3, [r3, #0]
    118e:	b2db      	uxtb	r3, r3
    1190:	e00e      	b.n	11b0 <_vsnprintf+0x512>
    1192:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1194:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1198:	2b00      	cmp	r3, #0
    119a:	d005      	beq.n	11a8 <_vsnprintf+0x50a>
    119c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    119e:	1d1a      	adds	r2, r3, #4
    11a0:	65ba      	str	r2, [r7, #88]	; 0x58
    11a2:	681b      	ldr	r3, [r3, #0]
    11a4:	b21b      	sxth	r3, r3
    11a6:	e003      	b.n	11b0 <_vsnprintf+0x512>
    11a8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    11aa:	1d1a      	adds	r2, r3, #4
    11ac:	65ba      	str	r2, [r7, #88]	; 0x58
    11ae:	681b      	ldr	r3, [r3, #0]
    11b0:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    11b2:	697b      	ldr	r3, [r7, #20]
    11b4:	2b00      	cmp	r3, #0
    11b6:	bfb8      	it	lt
    11b8:	425b      	neglt	r3, r3
    11ba:	4619      	mov	r1, r3
    11bc:	697b      	ldr	r3, [r7, #20]
    11be:	0fdb      	lsrs	r3, r3, #31
    11c0:	b2db      	uxtb	r3, r3
    11c2:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    11c4:	9205      	str	r2, [sp, #20]
    11c6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    11c8:	9204      	str	r2, [sp, #16]
    11ca:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    11cc:	9203      	str	r2, [sp, #12]
    11ce:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    11d0:	9202      	str	r2, [sp, #8]
    11d2:	9301      	str	r3, [sp, #4]
    11d4:	9100      	str	r1, [sp, #0]
    11d6:	687b      	ldr	r3, [r7, #4]
    11d8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    11da:	68b9      	ldr	r1, [r7, #8]
    11dc:	68f8      	ldr	r0, [r7, #12]
    11de:	f7ff fcf7 	bl	bd0 <_ntoa_long>
    11e2:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
    11e4:	e04e      	b.n	1284 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
    11e6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    11e8:	f403 7300 	and.w	r3, r3, #512	; 0x200
    11ec:	2b00      	cmp	r3, #0
    11ee:	d149      	bne.n	1284 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
    11f0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    11f2:	f403 7380 	and.w	r3, r3, #256	; 0x100
    11f6:	2b00      	cmp	r3, #0
    11f8:	d016      	beq.n	1228 <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    11fa:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    11fc:	1d1a      	adds	r2, r3, #4
    11fe:	65ba      	str	r2, [r7, #88]	; 0x58
    1200:	681b      	ldr	r3, [r3, #0]
    1202:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    1204:	9205      	str	r2, [sp, #20]
    1206:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1208:	9204      	str	r2, [sp, #16]
    120a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    120c:	9203      	str	r2, [sp, #12]
    120e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    1210:	9202      	str	r2, [sp, #8]
    1212:	2200      	movs	r2, #0
    1214:	9201      	str	r2, [sp, #4]
    1216:	9300      	str	r3, [sp, #0]
    1218:	687b      	ldr	r3, [r7, #4]
    121a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    121c:	68b9      	ldr	r1, [r7, #8]
    121e:	68f8      	ldr	r0, [r7, #12]
    1220:	f7ff fcd6 	bl	bd0 <_ntoa_long>
    1224:	6378      	str	r0, [r7, #52]	; 0x34
    1226:	e02d      	b.n	1284 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    1228:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    122a:	f003 0340 	and.w	r3, r3, #64	; 0x40
    122e:	2b00      	cmp	r3, #0
    1230:	d005      	beq.n	123e <_vsnprintf+0x5a0>
    1232:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1234:	1d1a      	adds	r2, r3, #4
    1236:	65ba      	str	r2, [r7, #88]	; 0x58
    1238:	681b      	ldr	r3, [r3, #0]
    123a:	b2db      	uxtb	r3, r3
    123c:	e00e      	b.n	125c <_vsnprintf+0x5be>
    123e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1240:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1244:	2b00      	cmp	r3, #0
    1246:	d005      	beq.n	1254 <_vsnprintf+0x5b6>
    1248:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    124a:	1d1a      	adds	r2, r3, #4
    124c:	65ba      	str	r2, [r7, #88]	; 0x58
    124e:	681b      	ldr	r3, [r3, #0]
    1250:	b29b      	uxth	r3, r3
    1252:	e003      	b.n	125c <_vsnprintf+0x5be>
    1254:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1256:	1d1a      	adds	r2, r3, #4
    1258:	65ba      	str	r2, [r7, #88]	; 0x58
    125a:	681b      	ldr	r3, [r3, #0]
    125c:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    125e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1260:	9305      	str	r3, [sp, #20]
    1262:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1264:	9304      	str	r3, [sp, #16]
    1266:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1268:	9303      	str	r3, [sp, #12]
    126a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    126c:	9302      	str	r3, [sp, #8]
    126e:	2300      	movs	r3, #0
    1270:	9301      	str	r3, [sp, #4]
    1272:	69bb      	ldr	r3, [r7, #24]
    1274:	9300      	str	r3, [sp, #0]
    1276:	687b      	ldr	r3, [r7, #4]
    1278:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    127a:	68b9      	ldr	r1, [r7, #8]
    127c:	68f8      	ldr	r0, [r7, #12]
    127e:	f7ff fca7 	bl	bd0 <_ntoa_long>
    1282:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
    1284:	683b      	ldr	r3, [r7, #0]
    1286:	3301      	adds	r3, #1
    1288:	603b      	str	r3, [r7, #0]
        break;
    128a:	e0d5      	b.n	1438 <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
    128c:	2301      	movs	r3, #1
    128e:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    1290:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1292:	f003 0302 	and.w	r3, r3, #2
    1296:	2b00      	cmp	r3, #0
    1298:	d10e      	bne.n	12b8 <_vsnprintf+0x61a>
          while (l++ < width) {
    129a:	e007      	b.n	12ac <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
    129c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    129e:	1c53      	adds	r3, r2, #1
    12a0:	637b      	str	r3, [r7, #52]	; 0x34
    12a2:	68fc      	ldr	r4, [r7, #12]
    12a4:	687b      	ldr	r3, [r7, #4]
    12a6:	68b9      	ldr	r1, [r7, #8]
    12a8:	2020      	movs	r0, #32
    12aa:	47a0      	blx	r4
          while (l++ < width) {
    12ac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12ae:	1c5a      	adds	r2, r3, #1
    12b0:	62fa      	str	r2, [r7, #44]	; 0x2c
    12b2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    12b4:	429a      	cmp	r2, r3
    12b6:	d8f1      	bhi.n	129c <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    12b8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    12ba:	1d1a      	adds	r2, r3, #4
    12bc:	65ba      	str	r2, [r7, #88]	; 0x58
    12be:	681b      	ldr	r3, [r3, #0]
    12c0:	b2d8      	uxtb	r0, r3
    12c2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    12c4:	1c53      	adds	r3, r2, #1
    12c6:	637b      	str	r3, [r7, #52]	; 0x34
    12c8:	68fc      	ldr	r4, [r7, #12]
    12ca:	687b      	ldr	r3, [r7, #4]
    12cc:	68b9      	ldr	r1, [r7, #8]
    12ce:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    12d0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    12d2:	f003 0302 	and.w	r3, r3, #2
    12d6:	2b00      	cmp	r3, #0
    12d8:	d00e      	beq.n	12f8 <_vsnprintf+0x65a>
          while (l++ < width) {
    12da:	e007      	b.n	12ec <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
    12dc:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    12de:	1c53      	adds	r3, r2, #1
    12e0:	637b      	str	r3, [r7, #52]	; 0x34
    12e2:	68fc      	ldr	r4, [r7, #12]
    12e4:	687b      	ldr	r3, [r7, #4]
    12e6:	68b9      	ldr	r1, [r7, #8]
    12e8:	2020      	movs	r0, #32
    12ea:	47a0      	blx	r4
          while (l++ < width) {
    12ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12ee:	1c5a      	adds	r2, r3, #1
    12f0:	62fa      	str	r2, [r7, #44]	; 0x2c
    12f2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    12f4:	429a      	cmp	r2, r3
    12f6:	d8f1      	bhi.n	12dc <_vsnprintf+0x63e>
          }
        }
        format++;
    12f8:	683b      	ldr	r3, [r7, #0]
    12fa:	3301      	adds	r3, #1
    12fc:	603b      	str	r3, [r7, #0]
        break;
    12fe:	e09b      	b.n	1438 <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    1300:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1302:	1d1a      	adds	r2, r3, #4
    1304:	65ba      	str	r2, [r7, #88]	; 0x58
    1306:	681b      	ldr	r3, [r3, #0]
    1308:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    130a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    130c:	2b00      	cmp	r3, #0
    130e:	d001      	beq.n	1314 <_vsnprintf+0x676>
    1310:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1312:	e001      	b.n	1318 <_vsnprintf+0x67a>
    1314:	f04f 33ff 	mov.w	r3, #4294967295
    1318:	4619      	mov	r1, r3
    131a:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    131c:	f7ff fad6 	bl	8cc <_strnlen_s>
    1320:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    1322:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1324:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1328:	2b00      	cmp	r3, #0
    132a:	d005      	beq.n	1338 <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
    132c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    132e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1330:	4293      	cmp	r3, r2
    1332:	bf28      	it	cs
    1334:	4613      	movcs	r3, r2
    1336:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    1338:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    133a:	f003 0302 	and.w	r3, r3, #2
    133e:	2b00      	cmp	r3, #0
    1340:	d11a      	bne.n	1378 <_vsnprintf+0x6da>
          while (l++ < width) {
    1342:	e007      	b.n	1354 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
    1344:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1346:	1c53      	adds	r3, r2, #1
    1348:	637b      	str	r3, [r7, #52]	; 0x34
    134a:	68fc      	ldr	r4, [r7, #12]
    134c:	687b      	ldr	r3, [r7, #4]
    134e:	68b9      	ldr	r1, [r7, #8]
    1350:	2020      	movs	r0, #32
    1352:	47a0      	blx	r4
          while (l++ < width) {
    1354:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1356:	1c5a      	adds	r2, r3, #1
    1358:	627a      	str	r2, [r7, #36]	; 0x24
    135a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    135c:	429a      	cmp	r2, r3
    135e:	d8f1      	bhi.n	1344 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    1360:	e00a      	b.n	1378 <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
    1362:	6abb      	ldr	r3, [r7, #40]	; 0x28
    1364:	1c5a      	adds	r2, r3, #1
    1366:	62ba      	str	r2, [r7, #40]	; 0x28
    1368:	7818      	ldrb	r0, [r3, #0]
    136a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    136c:	1c53      	adds	r3, r2, #1
    136e:	637b      	str	r3, [r7, #52]	; 0x34
    1370:	68fc      	ldr	r4, [r7, #12]
    1372:	687b      	ldr	r3, [r7, #4]
    1374:	68b9      	ldr	r1, [r7, #8]
    1376:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    1378:	6abb      	ldr	r3, [r7, #40]	; 0x28
    137a:	781b      	ldrb	r3, [r3, #0]
    137c:	2b00      	cmp	r3, #0
    137e:	d009      	beq.n	1394 <_vsnprintf+0x6f6>
    1380:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1382:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1386:	2b00      	cmp	r3, #0
    1388:	d0eb      	beq.n	1362 <_vsnprintf+0x6c4>
    138a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    138c:	1e5a      	subs	r2, r3, #1
    138e:	63fa      	str	r2, [r7, #60]	; 0x3c
    1390:	2b00      	cmp	r3, #0
    1392:	d1e6      	bne.n	1362 <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    1394:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1396:	f003 0302 	and.w	r3, r3, #2
    139a:	2b00      	cmp	r3, #0
    139c:	d00e      	beq.n	13bc <_vsnprintf+0x71e>
          while (l++ < width) {
    139e:	e007      	b.n	13b0 <_vsnprintf+0x712>
            out(' ', buffer, idx++, maxlen);
    13a0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    13a2:	1c53      	adds	r3, r2, #1
    13a4:	637b      	str	r3, [r7, #52]	; 0x34
    13a6:	68fc      	ldr	r4, [r7, #12]
    13a8:	687b      	ldr	r3, [r7, #4]
    13aa:	68b9      	ldr	r1, [r7, #8]
    13ac:	2020      	movs	r0, #32
    13ae:	47a0      	blx	r4
          while (l++ < width) {
    13b0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13b2:	1c5a      	adds	r2, r3, #1
    13b4:	627a      	str	r2, [r7, #36]	; 0x24
    13b6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    13b8:	429a      	cmp	r2, r3
    13ba:	d8f1      	bhi.n	13a0 <_vsnprintf+0x702>
          }
        }
        format++;
    13bc:	683b      	ldr	r3, [r7, #0]
    13be:	3301      	adds	r3, #1
    13c0:	603b      	str	r3, [r7, #0]
        break;
    13c2:	e039      	b.n	1438 <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    13c4:	2308      	movs	r3, #8
    13c6:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    13c8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    13ca:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    13ce:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    13d0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    13d2:	1d1a      	adds	r2, r3, #4
    13d4:	65ba      	str	r2, [r7, #88]	; 0x58
    13d6:	681b      	ldr	r3, [r3, #0]
    13d8:	461a      	mov	r2, r3
    13da:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    13dc:	9305      	str	r3, [sp, #20]
    13de:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    13e0:	9304      	str	r3, [sp, #16]
    13e2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    13e4:	9303      	str	r3, [sp, #12]
    13e6:	2310      	movs	r3, #16
    13e8:	9302      	str	r3, [sp, #8]
    13ea:	2300      	movs	r3, #0
    13ec:	9301      	str	r3, [sp, #4]
    13ee:	9200      	str	r2, [sp, #0]
    13f0:	687b      	ldr	r3, [r7, #4]
    13f2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    13f4:	68b9      	ldr	r1, [r7, #8]
    13f6:	68f8      	ldr	r0, [r7, #12]
    13f8:	f7ff fbea 	bl	bd0 <_ntoa_long>
    13fc:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    13fe:	683b      	ldr	r3, [r7, #0]
    1400:	3301      	adds	r3, #1
    1402:	603b      	str	r3, [r7, #0]
        break;
    1404:	e018      	b.n	1438 <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    1406:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1408:	1c53      	adds	r3, r2, #1
    140a:	637b      	str	r3, [r7, #52]	; 0x34
    140c:	68fc      	ldr	r4, [r7, #12]
    140e:	687b      	ldr	r3, [r7, #4]
    1410:	68b9      	ldr	r1, [r7, #8]
    1412:	2025      	movs	r0, #37	; 0x25
    1414:	47a0      	blx	r4
        format++;
    1416:	683b      	ldr	r3, [r7, #0]
    1418:	3301      	adds	r3, #1
    141a:	603b      	str	r3, [r7, #0]
        break;
    141c:	e00c      	b.n	1438 <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    141e:	683b      	ldr	r3, [r7, #0]
    1420:	7818      	ldrb	r0, [r3, #0]
    1422:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1424:	1c53      	adds	r3, r2, #1
    1426:	637b      	str	r3, [r7, #52]	; 0x34
    1428:	68fc      	ldr	r4, [r7, #12]
    142a:	687b      	ldr	r3, [r7, #4]
    142c:	68b9      	ldr	r1, [r7, #8]
    142e:	47a0      	blx	r4
        format++;
    1430:	683b      	ldr	r3, [r7, #0]
    1432:	3301      	adds	r3, #1
    1434:	603b      	str	r3, [r7, #0]
        break;
    1436:	bf00      	nop
  while (*format)
    1438:	683b      	ldr	r3, [r7, #0]
    143a:	781b      	ldrb	r3, [r3, #0]
    143c:	2b00      	cmp	r3, #0
    143e:	f47f ac3e 	bne.w	cbe <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    1442:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1444:	687b      	ldr	r3, [r7, #4]
    1446:	429a      	cmp	r2, r3
    1448:	d302      	bcc.n	1450 <_vsnprintf+0x7b2>
    144a:	687b      	ldr	r3, [r7, #4]
    144c:	1e5a      	subs	r2, r3, #1
    144e:	e000      	b.n	1452 <_vsnprintf+0x7b4>
    1450:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1452:	68fc      	ldr	r4, [r7, #12]
    1454:	687b      	ldr	r3, [r7, #4]
    1456:	68b9      	ldr	r1, [r7, #8]
    1458:	2000      	movs	r0, #0
    145a:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    145c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    145e:	4618      	mov	r0, r3
    1460:	374c      	adds	r7, #76	; 0x4c
    1462:	46bd      	mov	sp, r7
    1464:	bd90      	pop	{r4, r7, pc}

00001466 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    1466:	b40f      	push	{r0, r1, r2, r3}
    1468:	b580      	push	{r7, lr}
    146a:	b086      	sub	sp, #24
    146c:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    146e:	f107 031c 	add.w	r3, r7, #28
    1472:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1474:	1d39      	adds	r1, r7, #4
    1476:	68bb      	ldr	r3, [r7, #8]
    1478:	9300      	str	r3, [sp, #0]
    147a:	69bb      	ldr	r3, [r7, #24]
    147c:	f04f 32ff 	mov.w	r2, #4294967295
    1480:	4805      	ldr	r0, [pc, #20]	; (1498 <printf_+0x32>)
    1482:	f7ff fc0c 	bl	c9e <_vsnprintf>
    1486:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1488:	68fb      	ldr	r3, [r7, #12]
}
    148a:	4618      	mov	r0, r3
    148c:	3710      	adds	r7, #16
    148e:	46bd      	mov	sp, r7
    1490:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1494:	b004      	add	sp, #16
    1496:	4770      	bx	lr
    1498:	0000087b 	.word	0x0000087b

0000149c <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    149c:	b40e      	push	{r1, r2, r3}
    149e:	b580      	push	{r7, lr}
    14a0:	b087      	sub	sp, #28
    14a2:	af02      	add	r7, sp, #8
    14a4:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    14a6:	f107 0320 	add.w	r3, r7, #32
    14aa:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    14ac:	68bb      	ldr	r3, [r7, #8]
    14ae:	9300      	str	r3, [sp, #0]
    14b0:	69fb      	ldr	r3, [r7, #28]
    14b2:	f04f 32ff 	mov.w	r2, #4294967295
    14b6:	6879      	ldr	r1, [r7, #4]
    14b8:	4805      	ldr	r0, [pc, #20]	; (14d0 <sprintf_+0x34>)
    14ba:	f7ff fbf0 	bl	c9e <_vsnprintf>
    14be:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    14c0:	68fb      	ldr	r3, [r7, #12]
}
    14c2:	4618      	mov	r0, r3
    14c4:	3714      	adds	r7, #20
    14c6:	46bd      	mov	sp, r7
    14c8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    14cc:	b003      	add	sp, #12
    14ce:	4770      	bx	lr
    14d0:	00000835 	.word	0x00000835

000014d4 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    14d4:	b40c      	push	{r2, r3}
    14d6:	b580      	push	{r7, lr}
    14d8:	b086      	sub	sp, #24
    14da:	af02      	add	r7, sp, #8
    14dc:	6078      	str	r0, [r7, #4]
    14de:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    14e0:	f107 031c 	add.w	r3, r7, #28
    14e4:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    14e6:	68bb      	ldr	r3, [r7, #8]
    14e8:	9300      	str	r3, [sp, #0]
    14ea:	69bb      	ldr	r3, [r7, #24]
    14ec:	683a      	ldr	r2, [r7, #0]
    14ee:	6879      	ldr	r1, [r7, #4]
    14f0:	4805      	ldr	r0, [pc, #20]	; (1508 <snprintf_+0x34>)
    14f2:	f7ff fbd4 	bl	c9e <_vsnprintf>
    14f6:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    14f8:	68fb      	ldr	r3, [r7, #12]
}
    14fa:	4618      	mov	r0, r3
    14fc:	3710      	adds	r7, #16
    14fe:	46bd      	mov	sp, r7
    1500:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1504:	b002      	add	sp, #8
    1506:	4770      	bx	lr
    1508:	00000835 	.word	0x00000835

0000150c <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    150c:	b580      	push	{r7, lr}
    150e:	b086      	sub	sp, #24
    1510:	af02      	add	r7, sp, #8
    1512:	6078      	str	r0, [r7, #4]
    1514:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1516:	f107 010c 	add.w	r1, r7, #12
    151a:	683b      	ldr	r3, [r7, #0]
    151c:	9300      	str	r3, [sp, #0]
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	f04f 32ff 	mov.w	r2, #4294967295
    1524:	4803      	ldr	r0, [pc, #12]	; (1534 <vprintf_+0x28>)
    1526:	f7ff fbba 	bl	c9e <_vsnprintf>
    152a:	4603      	mov	r3, r0
}
    152c:	4618      	mov	r0, r3
    152e:	3710      	adds	r7, #16
    1530:	46bd      	mov	sp, r7
    1532:	bd80      	pop	{r7, pc}
    1534:	0000087b 	.word	0x0000087b

00001538 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    1538:	b580      	push	{r7, lr}
    153a:	b086      	sub	sp, #24
    153c:	af02      	add	r7, sp, #8
    153e:	60f8      	str	r0, [r7, #12]
    1540:	60b9      	str	r1, [r7, #8]
    1542:	607a      	str	r2, [r7, #4]
    1544:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    1546:	683b      	ldr	r3, [r7, #0]
    1548:	9300      	str	r3, [sp, #0]
    154a:	687b      	ldr	r3, [r7, #4]
    154c:	68ba      	ldr	r2, [r7, #8]
    154e:	68f9      	ldr	r1, [r7, #12]
    1550:	4803      	ldr	r0, [pc, #12]	; (1560 <vsnprintf_+0x28>)
    1552:	f7ff fba4 	bl	c9e <_vsnprintf>
    1556:	4603      	mov	r3, r0
}
    1558:	4618      	mov	r0, r3
    155a:	3710      	adds	r7, #16
    155c:	46bd      	mov	sp, r7
    155e:	bd80      	pop	{r7, pc}
    1560:	00000835 	.word	0x00000835

00001564 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    1564:	b40c      	push	{r2, r3}
    1566:	b580      	push	{r7, lr}
    1568:	b088      	sub	sp, #32
    156a:	af02      	add	r7, sp, #8
    156c:	6078      	str	r0, [r7, #4]
    156e:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    1570:	f107 0324 	add.w	r3, r7, #36	; 0x24
    1574:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    1576:	687b      	ldr	r3, [r7, #4]
    1578:	60bb      	str	r3, [r7, #8]
    157a:	683b      	ldr	r3, [r7, #0]
    157c:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    157e:	f107 0108 	add.w	r1, r7, #8
    1582:	693b      	ldr	r3, [r7, #16]
    1584:	9300      	str	r3, [sp, #0]
    1586:	6a3b      	ldr	r3, [r7, #32]
    1588:	f04f 32ff 	mov.w	r2, #4294967295
    158c:	4805      	ldr	r0, [pc, #20]	; (15a4 <fctprintf+0x40>)
    158e:	f7ff fb86 	bl	c9e <_vsnprintf>
    1592:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1594:	697b      	ldr	r3, [r7, #20]
}
    1596:	4618      	mov	r0, r3
    1598:	3718      	adds	r7, #24
    159a:	46bd      	mov	sp, r7
    159c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    15a0:	b002      	add	sp, #8
    15a2:	4770      	bx	lr
    15a4:	000008a1 	.word	0x000008a1

000015a8 <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    15a8:	b580      	push	{r7, lr}
    15aa:	b084      	sub	sp, #16
    15ac:	af00      	add	r7, sp, #0
    15ae:	6078      	str	r0, [r7, #4]
    15b0:	460b      	mov	r3, r1
    15b2:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    15b4:	f107 030f 	add.w	r3, r7, #15
    15b8:	4618      	mov	r0, r3
    15ba:	f7fe fe6f 	bl	29c <lite_getchar>
    {
        if (count >= max_len)
    15be:	4b22      	ldr	r3, [pc, #136]	; (1648 <shell_get_line+0xa0>)
    15c0:	781b      	ldrb	r3, [r3, #0]
    15c2:	78fa      	ldrb	r2, [r7, #3]
    15c4:	429a      	cmp	r2, r3
    15c6:	d804      	bhi.n	15d2 <shell_get_line+0x2a>
        {
            count = 0;
    15c8:	4b1f      	ldr	r3, [pc, #124]	; (1648 <shell_get_line+0xa0>)
    15ca:	2200      	movs	r2, #0
    15cc:	701a      	strb	r2, [r3, #0]
            return 1;
    15ce:	2301      	movs	r3, #1
    15d0:	e036      	b.n	1640 <shell_get_line+0x98>
        }
        line[count] = chr;
    15d2:	4b1d      	ldr	r3, [pc, #116]	; (1648 <shell_get_line+0xa0>)
    15d4:	781b      	ldrb	r3, [r3, #0]
    15d6:	461a      	mov	r2, r3
    15d8:	687b      	ldr	r3, [r7, #4]
    15da:	4413      	add	r3, r2
    15dc:	7bfa      	ldrb	r2, [r7, #15]
    15de:	701a      	strb	r2, [r3, #0]
        switch (chr)
    15e0:	7bfb      	ldrb	r3, [r7, #15]
    15e2:	2b0a      	cmp	r3, #10
    15e4:	d013      	beq.n	160e <shell_get_line+0x66>
    15e6:	2b0a      	cmp	r3, #10
    15e8:	dc02      	bgt.n	15f0 <shell_get_line+0x48>
    15ea:	2b08      	cmp	r3, #8
    15ec:	d004      	beq.n	15f8 <shell_get_line+0x50>
    15ee:	e01a      	b.n	1626 <shell_get_line+0x7e>
    15f0:	2b0d      	cmp	r3, #13
    15f2:	d00c      	beq.n	160e <shell_get_line+0x66>
    15f4:	2b7f      	cmp	r3, #127	; 0x7f
    15f6:	d116      	bne.n	1626 <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    15f8:	4b13      	ldr	r3, [pc, #76]	; (1648 <shell_get_line+0xa0>)
    15fa:	781b      	ldrb	r3, [r3, #0]
    15fc:	2b00      	cmp	r3, #0
    15fe:	d019      	beq.n	1634 <shell_get_line+0x8c>
            {
                count--;
    1600:	4b11      	ldr	r3, [pc, #68]	; (1648 <shell_get_line+0xa0>)
    1602:	781b      	ldrb	r3, [r3, #0]
    1604:	3b01      	subs	r3, #1
    1606:	b2da      	uxtb	r2, r3
    1608:	4b0f      	ldr	r3, [pc, #60]	; (1648 <shell_get_line+0xa0>)
    160a:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    160c:	e012      	b.n	1634 <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    160e:	4b0e      	ldr	r3, [pc, #56]	; (1648 <shell_get_line+0xa0>)
    1610:	781b      	ldrb	r3, [r3, #0]
    1612:	461a      	mov	r2, r3
    1614:	687b      	ldr	r3, [r7, #4]
    1616:	4413      	add	r3, r2
    1618:	2200      	movs	r2, #0
    161a:	701a      	strb	r2, [r3, #0]
            count = 0;
    161c:	4b0a      	ldr	r3, [pc, #40]	; (1648 <shell_get_line+0xa0>)
    161e:	2200      	movs	r2, #0
    1620:	701a      	strb	r2, [r3, #0]
            return 1;
    1622:	2301      	movs	r3, #1
    1624:	e00c      	b.n	1640 <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    1626:	4b08      	ldr	r3, [pc, #32]	; (1648 <shell_get_line+0xa0>)
    1628:	781b      	ldrb	r3, [r3, #0]
    162a:	3301      	adds	r3, #1
    162c:	b2da      	uxtb	r2, r3
    162e:	4b06      	ldr	r3, [pc, #24]	; (1648 <shell_get_line+0xa0>)
    1630:	701a      	strb	r2, [r3, #0]
    1632:	e000      	b.n	1636 <shell_get_line+0x8e>
        break;
    1634:	bf00      	nop
        }
        lite_putchar(chr);
    1636:	7bfb      	ldrb	r3, [r7, #15]
    1638:	4618      	mov	r0, r3
    163a:	f7fe fe43 	bl	2c4 <lite_putchar>
    }
    return 0;
    163e:	2300      	movs	r3, #0
}
    1640:	4618      	mov	r0, r3
    1642:	3710      	adds	r7, #16
    1644:	46bd      	mov	sp, r7
    1646:	bd80      	pop	{r7, pc}
    1648:	20000018 	.word	0x20000018

0000164c <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    164c:	b580      	push	{r7, lr}
    164e:	b088      	sub	sp, #32
    1650:	af00      	add	r7, sp, #0
    1652:	60f8      	str	r0, [r7, #12]
    1654:	60b9      	str	r1, [r7, #8]
    1656:	4613      	mov	r3, r2
    1658:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    165a:	2300      	movs	r3, #0
    165c:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    165e:	4912      	ldr	r1, [pc, #72]	; (16a8 <shell_get_args+0x5c>)
    1660:	68f8      	ldr	r0, [r7, #12]
    1662:	f000 f8a1 	bl	17a8 <strtok>
    1666:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1668:	2300      	movs	r3, #0
    166a:	77fb      	strb	r3, [r7, #31]
    166c:	e00d      	b.n	168a <shell_get_args+0x3e>
    {
        args[i] = ptr;
    166e:	7ffb      	ldrb	r3, [r7, #31]
    1670:	009b      	lsls	r3, r3, #2
    1672:	68ba      	ldr	r2, [r7, #8]
    1674:	4413      	add	r3, r2
    1676:	69ba      	ldr	r2, [r7, #24]
    1678:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    167a:	490c      	ldr	r1, [pc, #48]	; (16ac <shell_get_args+0x60>)
    167c:	2000      	movs	r0, #0
    167e:	f000 f893 	bl	17a8 <strtok>
    1682:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1684:	7ffb      	ldrb	r3, [r7, #31]
    1686:	3301      	adds	r3, #1
    1688:	77fb      	strb	r3, [r7, #31]
    168a:	69bb      	ldr	r3, [r7, #24]
    168c:	2b00      	cmp	r3, #0
    168e:	d003      	beq.n	1698 <shell_get_args+0x4c>
    1690:	7ffa      	ldrb	r2, [r7, #31]
    1692:	79fb      	ldrb	r3, [r7, #7]
    1694:	429a      	cmp	r2, r3
    1696:	d3ea      	bcc.n	166e <shell_get_args+0x22>
    }
    ret = i;
    1698:	7ffb      	ldrb	r3, [r7, #31]
    169a:	75fb      	strb	r3, [r7, #23]
    return ret;
    169c:	7dfb      	ldrb	r3, [r7, #23]
}
    169e:	4618      	mov	r0, r3
    16a0:	3720      	adds	r7, #32
    16a2:	46bd      	mov	sp, r7
    16a4:	bd80      	pop	{r7, pc}
    16a6:	bf00      	nop
    16a8:	00001bac 	.word	0x00001bac
    16ac:	00001bb0 	.word	0x00001bb0

000016b0 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    16b0:	b580      	push	{r7, lr}
    16b2:	b084      	sub	sp, #16
    16b4:	af00      	add	r7, sp, #0
    16b6:	6078      	str	r0, [r7, #4]
    16b8:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    16ba:	4b0b      	ldr	r3, [pc, #44]	; (16e8 <shell_help_func+0x38>)
    16bc:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    16be:	e00a      	b.n	16d6 <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    16c0:	68fb      	ldr	r3, [r7, #12]
    16c2:	6819      	ldr	r1, [r3, #0]
    16c4:	68fb      	ldr	r3, [r7, #12]
    16c6:	685b      	ldr	r3, [r3, #4]
    16c8:	461a      	mov	r2, r3
    16ca:	4808      	ldr	r0, [pc, #32]	; (16ec <shell_help_func+0x3c>)
    16cc:	f7ff fecb 	bl	1466 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    16d0:	68fb      	ldr	r3, [r7, #12]
    16d2:	330c      	adds	r3, #12
    16d4:	60fb      	str	r3, [r7, #12]
    16d6:	68fb      	ldr	r3, [r7, #12]
    16d8:	4a05      	ldr	r2, [pc, #20]	; (16f0 <shell_help_func+0x40>)
    16da:	4293      	cmp	r3, r2
    16dc:	d3f0      	bcc.n	16c0 <shell_help_func+0x10>
    }
    return 0;
    16de:	2300      	movs	r3, #0
}
    16e0:	4618      	mov	r0, r3
    16e2:	3710      	adds	r7, #16
    16e4:	46bd      	mov	sp, r7
    16e6:	bd80      	pop	{r7, pc}
    16e8:	000019ac 	.word	0x000019ac
    16ec:	00001bb4 	.word	0x00001bb4
    16f0:	00001c18 	.word	0x00001c18

000016f4 <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    16f4:	b480      	push	{r7}
    16f6:	b089      	sub	sp, #36	; 0x24
    16f8:	af00      	add	r7, sp, #0
    16fa:	60f8      	str	r0, [r7, #12]
    16fc:	60b9      	str	r1, [r7, #8]
    16fe:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    1700:	68fb      	ldr	r3, [r7, #12]
    1702:	2b00      	cmp	r3, #0
    1704:	d107      	bne.n	1716 <strtok_r+0x22>
    1706:	687b      	ldr	r3, [r7, #4]
    1708:	681b      	ldr	r3, [r3, #0]
    170a:	60fb      	str	r3, [r7, #12]
    170c:	68fb      	ldr	r3, [r7, #12]
    170e:	2b00      	cmp	r3, #0
    1710:	d101      	bne.n	1716 <strtok_r+0x22>
    {
    return (NULL);
    1712:	2300      	movs	r3, #0
    1714:	e043      	b.n	179e <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    1716:	bf00      	nop
c = *string_org++;
    1718:	68fb      	ldr	r3, [r7, #12]
    171a:	1c5a      	adds	r2, r3, #1
    171c:	60fa      	str	r2, [r7, #12]
    171e:	781b      	ldrb	r3, [r3, #0]
    1720:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    1722:	68bb      	ldr	r3, [r7, #8]
    1724:	61fb      	str	r3, [r7, #28]
    1726:	e004      	b.n	1732 <strtok_r+0x3e>
    {
    if (c == sc)
    1728:	7efa      	ldrb	r2, [r7, #27]
    172a:	7ebb      	ldrb	r3, [r7, #26]
    172c:	429a      	cmp	r2, r3
    172e:	d100      	bne.n	1732 <strtok_r+0x3e>
        {
        goto count;
    1730:	e7f2      	b.n	1718 <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    1732:	69fb      	ldr	r3, [r7, #28]
    1734:	1c5a      	adds	r2, r3, #1
    1736:	61fa      	str	r2, [r7, #28]
    1738:	781b      	ldrb	r3, [r3, #0]
    173a:	76bb      	strb	r3, [r7, #26]
    173c:	7ebb      	ldrb	r3, [r7, #26]
    173e:	2b00      	cmp	r3, #0
    1740:	d1f2      	bne.n	1728 <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    1742:	7efb      	ldrb	r3, [r7, #27]
    1744:	2b00      	cmp	r3, #0
    1746:	d104      	bne.n	1752 <strtok_r+0x5e>
    {
    *last = NULL;
    1748:	687b      	ldr	r3, [r7, #4]
    174a:	2200      	movs	r2, #0
    174c:	601a      	str	r2, [r3, #0]
    return (NULL);
    174e:	2300      	movs	r3, #0
    1750:	e025      	b.n	179e <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    1752:	68fb      	ldr	r3, [r7, #12]
    1754:	3b01      	subs	r3, #1
    1756:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    1758:	68fb      	ldr	r3, [r7, #12]
    175a:	1c5a      	adds	r2, r3, #1
    175c:	60fa      	str	r2, [r7, #12]
    175e:	781b      	ldrb	r3, [r3, #0]
    1760:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    1762:	68bb      	ldr	r3, [r7, #8]
    1764:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    1766:	69fb      	ldr	r3, [r7, #28]
    1768:	1c5a      	adds	r2, r3, #1
    176a:	61fa      	str	r2, [r7, #28]
    176c:	781b      	ldrb	r3, [r3, #0]
    176e:	76bb      	strb	r3, [r7, #26]
    1770:	7eba      	ldrb	r2, [r7, #26]
    1772:	7efb      	ldrb	r3, [r7, #27]
    1774:	429a      	cmp	r2, r3
    1776:	d10e      	bne.n	1796 <strtok_r+0xa2>
            {
            if (c == 0)
    1778:	7efb      	ldrb	r3, [r7, #27]
    177a:	2b00      	cmp	r3, #0
    177c:	d102      	bne.n	1784 <strtok_r+0x90>
                {
                string_org = NULL;
    177e:	2300      	movs	r3, #0
    1780:	60fb      	str	r3, [r7, #12]
    1782:	e003      	b.n	178c <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    1784:	68fb      	ldr	r3, [r7, #12]
    1786:	3b01      	subs	r3, #1
    1788:	2200      	movs	r2, #0
    178a:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    178c:	687b      	ldr	r3, [r7, #4]
    178e:	68fa      	ldr	r2, [r7, #12]
    1790:	601a      	str	r2, [r3, #0]
            return (tok);
    1792:	697b      	ldr	r3, [r7, #20]
    1794:	e003      	b.n	179e <strtok_r+0xaa>
            }
        } while (sc != 0);
    1796:	7ebb      	ldrb	r3, [r7, #26]
    1798:	2b00      	cmp	r3, #0
    179a:	d1e4      	bne.n	1766 <strtok_r+0x72>
    c = *string_org++;
    179c:	e7dc      	b.n	1758 <strtok_r+0x64>
    }
    
}
    179e:	4618      	mov	r0, r3
    17a0:	3724      	adds	r7, #36	; 0x24
    17a2:	46bd      	mov	sp, r7
    17a4:	bc80      	pop	{r7}
    17a6:	4770      	bx	lr

000017a8 <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    17a8:	b580      	push	{r7, lr}
    17aa:	b082      	sub	sp, #8
    17ac:	af00      	add	r7, sp, #0
    17ae:	6078      	str	r0, [r7, #4]
    17b0:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    17b2:	4a05      	ldr	r2, [pc, #20]	; (17c8 <strtok+0x20>)
    17b4:	6839      	ldr	r1, [r7, #0]
    17b6:	6878      	ldr	r0, [r7, #4]
    17b8:	f7ff ff9c 	bl	16f4 <strtok_r>
    17bc:	4603      	mov	r3, r0
}
    17be:	4618      	mov	r0, r3
    17c0:	3708      	adds	r7, #8
    17c2:	46bd      	mov	sp, r7
    17c4:	bd80      	pop	{r7, pc}
    17c6:	bf00      	nop
    17c8:	2000001c 	.word	0x2000001c

000017cc <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    17cc:	b480      	push	{r7}
    17ce:	b087      	sub	sp, #28
    17d0:	af00      	add	r7, sp, #0
    17d2:	60f8      	str	r0, [r7, #12]
    17d4:	60b9      	str	r1, [r7, #8]
    17d6:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    17d8:	68fb      	ldr	r3, [r7, #12]
    17da:	2b00      	cmp	r3, #0
    17dc:	d002      	beq.n	17e4 <memcpy+0x18>
    17de:	68bb      	ldr	r3, [r7, #8]
    17e0:	2b00      	cmp	r3, #0
    17e2:	d101      	bne.n	17e8 <memcpy+0x1c>
		return NULL;
    17e4:	2300      	movs	r3, #0
    17e6:	e012      	b.n	180e <memcpy+0x42>
	char *tempDest = (char *)dest;
    17e8:	68fb      	ldr	r3, [r7, #12]
    17ea:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    17ec:	68bb      	ldr	r3, [r7, #8]
    17ee:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    17f0:	e007      	b.n	1802 <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    17f2:	693a      	ldr	r2, [r7, #16]
    17f4:	1c53      	adds	r3, r2, #1
    17f6:	613b      	str	r3, [r7, #16]
    17f8:	697b      	ldr	r3, [r7, #20]
    17fa:	1c59      	adds	r1, r3, #1
    17fc:	6179      	str	r1, [r7, #20]
    17fe:	7812      	ldrb	r2, [r2, #0]
    1800:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    1802:	687b      	ldr	r3, [r7, #4]
    1804:	1e5a      	subs	r2, r3, #1
    1806:	607a      	str	r2, [r7, #4]
    1808:	2b00      	cmp	r3, #0
    180a:	d1f2      	bne.n	17f2 <memcpy+0x26>
	return dest;	
    180c:	68fb      	ldr	r3, [r7, #12]
}
    180e:	4618      	mov	r0, r3
    1810:	371c      	adds	r7, #28
    1812:	46bd      	mov	sp, r7
    1814:	bc80      	pop	{r7}
    1816:	4770      	bx	lr

00001818 <memset>:
void *memset(void *s, int c, size_t n)
{
    1818:	b480      	push	{r7}
    181a:	b087      	sub	sp, #28
    181c:	af00      	add	r7, sp, #0
    181e:	60f8      	str	r0, [r7, #12]
    1820:	60b9      	str	r1, [r7, #8]
    1822:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    1824:	68fb      	ldr	r3, [r7, #12]
    1826:	2b00      	cmp	r3, #0
    1828:	d101      	bne.n	182e <memset+0x16>
		return NULL;
    182a:	2300      	movs	r3, #0
    182c:	e00e      	b.n	184c <memset+0x34>
	char * tmpS = (char *)s;
    182e:	68fb      	ldr	r3, [r7, #12]
    1830:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    1832:	e005      	b.n	1840 <memset+0x28>
		*tmpS++ = c;
    1834:	697b      	ldr	r3, [r7, #20]
    1836:	1c5a      	adds	r2, r3, #1
    1838:	617a      	str	r2, [r7, #20]
    183a:	68ba      	ldr	r2, [r7, #8]
    183c:	b2d2      	uxtb	r2, r2
    183e:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    1840:	687b      	ldr	r3, [r7, #4]
    1842:	1e5a      	subs	r2, r3, #1
    1844:	607a      	str	r2, [r7, #4]
    1846:	2b00      	cmp	r3, #0
    1848:	d1f4      	bne.n	1834 <memset+0x1c>
		return s; 
    184a:	68fb      	ldr	r3, [r7, #12]
}
    184c:	4618      	mov	r0, r3
    184e:	371c      	adds	r7, #28
    1850:	46bd      	mov	sp, r7
    1852:	bc80      	pop	{r7}
    1854:	4770      	bx	lr

00001856 <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    1856:	b480      	push	{r7}
    1858:	b085      	sub	sp, #20
    185a:	af00      	add	r7, sp, #0
    185c:	6078      	str	r0, [r7, #4]
    185e:	6039      	str	r1, [r7, #0]
	int ret = 0;
    1860:	2300      	movs	r3, #0
    1862:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1864:	e005      	b.n	1872 <strcmp+0x1c>
	{
		str1++;
    1866:	687b      	ldr	r3, [r7, #4]
    1868:	3301      	adds	r3, #1
    186a:	607b      	str	r3, [r7, #4]
		str2++;
    186c:	683b      	ldr	r3, [r7, #0]
    186e:	3301      	adds	r3, #1
    1870:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1872:	687b      	ldr	r3, [r7, #4]
    1874:	781b      	ldrb	r3, [r3, #0]
    1876:	461a      	mov	r2, r3
    1878:	683b      	ldr	r3, [r7, #0]
    187a:	781b      	ldrb	r3, [r3, #0]
    187c:	1ad3      	subs	r3, r2, r3
    187e:	60fb      	str	r3, [r7, #12]
    1880:	68fb      	ldr	r3, [r7, #12]
    1882:	2b00      	cmp	r3, #0
    1884:	d103      	bne.n	188e <strcmp+0x38>
    1886:	687b      	ldr	r3, [r7, #4]
    1888:	781b      	ldrb	r3, [r3, #0]
    188a:	2b00      	cmp	r3, #0
    188c:	d1eb      	bne.n	1866 <strcmp+0x10>
	}
 
 
	if (ret < 0)
    188e:	68fb      	ldr	r3, [r7, #12]
    1890:	2b00      	cmp	r3, #0
    1892:	da02      	bge.n	189a <strcmp+0x44>
	{
		return -1;
    1894:	f04f 33ff 	mov.w	r3, #4294967295
    1898:	e005      	b.n	18a6 <strcmp+0x50>
	}
	else if (ret > 0)
    189a:	68fb      	ldr	r3, [r7, #12]
    189c:	2b00      	cmp	r3, #0
    189e:	dd01      	ble.n	18a4 <strcmp+0x4e>
	{
		return 1;
    18a0:	2301      	movs	r3, #1
    18a2:	e000      	b.n	18a6 <strcmp+0x50>
	}
	return 0;
    18a4:	2300      	movs	r3, #0
}
    18a6:	4618      	mov	r0, r3
    18a8:	3714      	adds	r7, #20
    18aa:	46bd      	mov	sp, r7
    18ac:	bc80      	pop	{r7}
    18ae:	4770      	bx	lr

000018b0 <shell_main>:
#endif
void shell_main(void)
{
    18b0:	b580      	push	{r7, lr}
    18b2:	b0c2      	sub	sp, #264	; 0x108
    18b4:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    18b6:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18ba:	2280      	movs	r2, #128	; 0x80
    18bc:	2100      	movs	r1, #0
    18be:	4618      	mov	r0, r3
    18c0:	f7ff ffaa 	bl	1818 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    18c4:	463b      	mov	r3, r7
    18c6:	4618      	mov	r0, r3
    18c8:	2380      	movs	r3, #128	; 0x80
    18ca:	461a      	mov	r2, r3
    18cc:	2100      	movs	r1, #0
    18ce:	f7ff ffa3 	bl	1818 <memset>

    uint8_t args_count = 0;
    18d2:	2300      	movs	r3, #0
    18d4:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    18d8:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18dc:	2180      	movs	r1, #128	; 0x80
    18de:	4618      	mov	r0, r3
    18e0:	f7ff fe62 	bl	15a8 <shell_get_line>
    18e4:	4603      	mov	r3, r0
    18e6:	2b00      	cmp	r3, #0
    18e8:	d0f6      	beq.n	18d8 <shell_main+0x28>
        {
            printf("\n");
    18ea:	4827      	ldr	r0, [pc, #156]	; (1988 <shell_main+0xd8>)
    18ec:	f7ff fdbb 	bl	1466 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    18f0:	4639      	mov	r1, r7
    18f2:	f107 0380 	add.w	r3, r7, #128	; 0x80
    18f6:	2220      	movs	r2, #32
    18f8:	4618      	mov	r0, r3
    18fa:	f7ff fea7 	bl	164c <shell_get_args>
    18fe:	4603      	mov	r3, r0
    1900:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    1904:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    1908:	2b00      	cmp	r3, #0
    190a:	d033      	beq.n	1974 <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    190c:	4b1f      	ldr	r3, [pc, #124]	; (198c <shell_main+0xdc>)
    190e:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1912:	e02a      	b.n	196a <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    1914:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1918:	681a      	ldr	r2, [r3, #0]
    191a:	463b      	mov	r3, r7
    191c:	681b      	ldr	r3, [r3, #0]
    191e:	4619      	mov	r1, r3
    1920:	4610      	mov	r0, r2
    1922:	f7ff ff98 	bl	1856 <strcmp>
    1926:	4603      	mov	r3, r0
    1928:	2b00      	cmp	r3, #0
    192a:	d10a      	bne.n	1942 <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    192c:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1930:	689b      	ldr	r3, [r3, #8]
    1932:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    1936:	1e50      	subs	r0, r2, #1
    1938:	463a      	mov	r2, r7
    193a:	3204      	adds	r2, #4
    193c:	4611      	mov	r1, r2
    193e:	4798      	blx	r3
    1940:	e00e      	b.n	1960 <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    1942:	463b      	mov	r3, r7
    1944:	681b      	ldr	r3, [r3, #0]
    1946:	4619      	mov	r1, r3
    1948:	4811      	ldr	r0, [pc, #68]	; (1990 <shell_main+0xe0>)
    194a:	f7ff ff84 	bl	1856 <strcmp>
    194e:	4603      	mov	r3, r0
    1950:	2b00      	cmp	r3, #0
    1952:	d013      	beq.n	197c <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1954:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1958:	4619      	mov	r1, r3
    195a:	480e      	ldr	r0, [pc, #56]	; (1994 <shell_main+0xe4>)
    195c:	f7ff fd83 	bl	1466 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1960:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1964:	330c      	adds	r3, #12
    1966:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    196a:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    196e:	4a0a      	ldr	r2, [pc, #40]	; (1998 <shell_main+0xe8>)
    1970:	4293      	cmp	r3, r2
    1972:	d3cf      	bcc.n	1914 <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1974:	4809      	ldr	r0, [pc, #36]	; (199c <shell_main+0xec>)
    1976:	f7ff fd76 	bl	1466 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    197a:	e7ad      	b.n	18d8 <shell_main+0x28>
                        return;
    197c:	bf00      	nop
        }
    }
    return;
}
    197e:	f507 7784 	add.w	r7, r7, #264	; 0x108
    1982:	46bd      	mov	sp, r7
    1984:	bd80      	pop	{r7, pc}
    1986:	bf00      	nop
    1988:	00001bdc 	.word	0x00001bdc
    198c:	000019ac 	.word	0x000019ac
    1990:	00001be0 	.word	0x00001be0
    1994:	00001be8 	.word	0x00001be8
    1998:	00001c18 	.word	0x00001c18
    199c:	00001c04 	.word	0x00001c04

000019a0 <shell_start>:

void shell_start(void)
{
    19a0:	b580      	push	{r7, lr}
    19a2:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    19a4:	f7ff ff84 	bl	18b0 <shell_main>
    19a8:	bf00      	nop
    19aa:	bd80      	pop	{r7, pc}

Disassembly of section .text.default_handler:

000019ac <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
    19ac:	e7fe      	b.n	19ac <default_handler>
