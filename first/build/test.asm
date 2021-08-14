
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
       8:	20001a30 	.word	0x20001a30
ldr r1, =main
       c:	00000105 	.word	0x00000105

00000010 <g_pfnVectors>:
      10:	20001a30 00000091 00000121 00000139     0.. ....!...9...
      20:	00000151 00000169 00000181 00002a1c     Q...i........*..
      30:	00002a1c 00002a1c 00002a1c 00000199     .*...*...*......
      40:	000001b1 00002a1c 000001c9 000001e1     .....*..........

00000050 <__do_global_dtors_aux>:
      50:	b510      	push	{r4, lr}
      52:	4c05      	ldr	r4, [pc, #20]	; (68 <__do_global_dtors_aux+0x18>)
      54:	7823      	ldrb	r3, [r4, #0]
      56:	b933      	cbnz	r3, 66 <__do_global_dtors_aux+0x16>
      58:	4b04      	ldr	r3, [pc, #16]	; (6c <__do_global_dtors_aux+0x1c>)
      5a:	b113      	cbz	r3, 62 <__do_global_dtors_aux+0x12>
      5c:	4804      	ldr	r0, [pc, #16]	; (70 <__do_global_dtors_aux+0x20>)
      5e:	f3af 8000 	nop.w
      62:	2301      	movs	r3, #1
      64:	7023      	strb	r3, [r4, #0]
      66:	bd10      	pop	{r4, pc}
      68:	200009c4 	.word	0x200009c4
      6c:	00000000 	.word	0x00000000
      70:	00008788 	.word	0x00008788

00000074 <frame_dummy>:
      74:	b508      	push	{r3, lr}
      76:	4b03      	ldr	r3, [pc, #12]	; (84 <frame_dummy+0x10>)
      78:	b11b      	cbz	r3, 82 <frame_dummy+0xe>
      7a:	4903      	ldr	r1, [pc, #12]	; (88 <frame_dummy+0x14>)
      7c:	4803      	ldr	r0, [pc, #12]	; (8c <frame_dummy+0x18>)
      7e:	f3af 8000 	nop.w
      82:	bd08      	pop	{r3, pc}
      84:	00000000 	.word	0x00000000
      88:	200009c8 	.word	0x200009c8
      8c:	00008788 	.word	0x00008788

00000090 <_mainCRTStartup>:
      90:	4b15      	ldr	r3, [pc, #84]	; (e8 <_mainCRTStartup+0x58>)
      92:	2b00      	cmp	r3, #0
      94:	bf08      	it	eq
      96:	4b13      	ldreq	r3, [pc, #76]	; (e4 <_mainCRTStartup+0x54>)
      98:	469d      	mov	sp, r3
      9a:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
      9e:	2100      	movs	r1, #0
      a0:	468b      	mov	fp, r1
      a2:	460f      	mov	r7, r1
      a4:	4813      	ldr	r0, [pc, #76]	; (f4 <_mainCRTStartup+0x64>)
      a6:	4a14      	ldr	r2, [pc, #80]	; (f8 <_mainCRTStartup+0x68>)
      a8:	1a12      	subs	r2, r2, r0
      aa:	f002 fcf3 	bl	2a94 <memset>
      ae:	4b0f      	ldr	r3, [pc, #60]	; (ec <_mainCRTStartup+0x5c>)
      b0:	2b00      	cmp	r3, #0
      b2:	d000      	beq.n	b6 <_mainCRTStartup+0x26>
      b4:	4798      	blx	r3
      b6:	4b0e      	ldr	r3, [pc, #56]	; (f0 <_mainCRTStartup+0x60>)
      b8:	2b00      	cmp	r3, #0
      ba:	d000      	beq.n	be <_mainCRTStartup+0x2e>
      bc:	4798      	blx	r3
      be:	2000      	movs	r0, #0
      c0:	2100      	movs	r1, #0
      c2:	0004      	movs	r4, r0
      c4:	000d      	movs	r5, r1
      c6:	480d      	ldr	r0, [pc, #52]	; (fc <_mainCRTStartup+0x6c>)
      c8:	2800      	cmp	r0, #0
      ca:	d002      	beq.n	d2 <_mainCRTStartup+0x42>
      cc:	480c      	ldr	r0, [pc, #48]	; (100 <_mainCRTStartup+0x70>)
      ce:	f004 f9b1 	bl	4434 <atexit>
      d2:	f002 fcbb 	bl	2a4c <__libc_init_array>
      d6:	0020      	movs	r0, r4
      d8:	0029      	movs	r1, r5
      da:	f000 f813 	bl	104 <main>
      de:	f002 fca5 	bl	2a2c <exit>
      e2:	bf00      	nop
      e4:	00080000 	.word	0x00080000
	...
      f4:	20000008 	.word	0x20000008
      f8:	20000a30 	.word	0x20000a30
      fc:	00004435 	.word	0x00004435
     100:	000057c1 	.word	0x000057c1

00000104 <main>:
#include "hal.h"
#include "shell.h"


void main(void)
{
     104:	b580      	push	{r7, lr}
     106:	af00      	add	r7, sp, #0

    printf("[%s] hello world\n", __func__);
     108:	4903      	ldr	r1, [pc, #12]	; (118 <main+0x14>)
     10a:	4804      	ldr	r0, [pc, #16]	; (11c <main+0x18>)
     10c:	f001 fb4b 	bl	17a6 <printf_>
    shell_start();
     110:	f001 fd08 	bl	1b24 <shell_start>
    // backtrace_test();
    // hal_mpu_test();
    while(1);
     114:	e7fe      	b.n	114 <main+0x10>
     116:	bf00      	nop
     118:	000087b0 	.word	0x000087b0
     11c:	00008794 	.word	0x00008794

00000120 <nmi_handler>:
}

void nmi_handler(void)
{
     120:	b580      	push	{r7, lr}
     122:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     124:	4902      	ldr	r1, [pc, #8]	; (130 <nmi_handler+0x10>)
     126:	4803      	ldr	r0, [pc, #12]	; (134 <nmi_handler+0x14>)
     128:	f001 fb3d 	bl	17a6 <printf_>
    while(1);
     12c:	e7fe      	b.n	12c <nmi_handler+0xc>
     12e:	bf00      	nop
     130:	000087b8 	.word	0x000087b8
     134:	000087a8 	.word	0x000087a8

00000138 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
     138:	b580      	push	{r7, lr}
     13a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     13c:	4902      	ldr	r1, [pc, #8]	; (148 <hard_fault_handler+0x10>)
     13e:	4803      	ldr	r0, [pc, #12]	; (14c <hard_fault_handler+0x14>)
     140:	f001 fb31 	bl	17a6 <printf_>
    while(1);
     144:	e7fe      	b.n	144 <hard_fault_handler+0xc>
     146:	bf00      	nop
     148:	000087c4 	.word	0x000087c4
     14c:	000087a8 	.word	0x000087a8

00000150 <mem_manage_handler>:
}

void mem_manage_handler(void)
{
     150:	b580      	push	{r7, lr}
     152:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     154:	4902      	ldr	r1, [pc, #8]	; (160 <mem_manage_handler+0x10>)
     156:	4803      	ldr	r0, [pc, #12]	; (164 <mem_manage_handler+0x14>)
     158:	f001 fb25 	bl	17a6 <printf_>
    while(1);
     15c:	e7fe      	b.n	15c <mem_manage_handler+0xc>
     15e:	bf00      	nop
     160:	000087d8 	.word	0x000087d8
     164:	000087a8 	.word	0x000087a8

00000168 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
     168:	b580      	push	{r7, lr}
     16a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     16c:	4902      	ldr	r1, [pc, #8]	; (178 <bus_fault_handler+0x10>)
     16e:	4803      	ldr	r0, [pc, #12]	; (17c <bus_fault_handler+0x14>)
     170:	f001 fb19 	bl	17a6 <printf_>
    while(1);
     174:	e7fe      	b.n	174 <bus_fault_handler+0xc>
     176:	bf00      	nop
     178:	000087ec 	.word	0x000087ec
     17c:	000087a8 	.word	0x000087a8

00000180 <usage_fault_handler>:
}

void usage_fault_handler(void)
{
     180:	b580      	push	{r7, lr}
     182:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     184:	4902      	ldr	r1, [pc, #8]	; (190 <usage_fault_handler+0x10>)
     186:	4803      	ldr	r0, [pc, #12]	; (194 <usage_fault_handler+0x14>)
     188:	f001 fb0d 	bl	17a6 <printf_>
    while(1);
     18c:	e7fe      	b.n	18c <usage_fault_handler+0xc>
     18e:	bf00      	nop
     190:	00008800 	.word	0x00008800
     194:	000087a8 	.word	0x000087a8

00000198 <svc_handler>:
}

void svc_handler(void)
{
     198:	b580      	push	{r7, lr}
     19a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     19c:	4902      	ldr	r1, [pc, #8]	; (1a8 <svc_handler+0x10>)
     19e:	4803      	ldr	r0, [pc, #12]	; (1ac <svc_handler+0x14>)
     1a0:	f001 fb01 	bl	17a6 <printf_>
    while(1);
     1a4:	e7fe      	b.n	1a4 <svc_handler+0xc>
     1a6:	bf00      	nop
     1a8:	00008814 	.word	0x00008814
     1ac:	000087a8 	.word	0x000087a8

000001b0 <debug_mon_handler>:
}

void debug_mon_handler(void)
{
     1b0:	b580      	push	{r7, lr}
     1b2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     1b4:	4902      	ldr	r1, [pc, #8]	; (1c0 <debug_mon_handler+0x10>)
     1b6:	4803      	ldr	r0, [pc, #12]	; (1c4 <debug_mon_handler+0x14>)
     1b8:	f001 faf5 	bl	17a6 <printf_>
    while(1);
     1bc:	e7fe      	b.n	1bc <debug_mon_handler+0xc>
     1be:	bf00      	nop
     1c0:	00008820 	.word	0x00008820
     1c4:	000087a8 	.word	0x000087a8

000001c8 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
     1c8:	b580      	push	{r7, lr}
     1ca:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     1cc:	4902      	ldr	r1, [pc, #8]	; (1d8 <pend_sv_handler+0x10>)
     1ce:	4803      	ldr	r0, [pc, #12]	; (1dc <pend_sv_handler+0x14>)
     1d0:	f001 fae9 	bl	17a6 <printf_>
    while(1);
     1d4:	e7fe      	b.n	1d4 <pend_sv_handler+0xc>
     1d6:	bf00      	nop
     1d8:	00008834 	.word	0x00008834
     1dc:	000087a8 	.word	0x000087a8

000001e0 <sys_tick_handler>:
}

void sys_tick_handler(void)
{
     1e0:	b580      	push	{r7, lr}
     1e2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
     1e4:	4902      	ldr	r1, [pc, #8]	; (1f0 <sys_tick_handler+0x10>)
     1e6:	4803      	ldr	r0, [pc, #12]	; (1f4 <sys_tick_handler+0x14>)
     1e8:	f001 fadd 	bl	17a6 <printf_>
    while(1);
     1ec:	e7fe      	b.n	1ec <sys_tick_handler+0xc>
     1ee:	bf00      	nop
     1f0:	00008844 	.word	0x00008844
     1f4:	000087a8 	.word	0x000087a8

000001f8 <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
     1f8:	b480      	push	{r7}
     1fa:	b083      	sub	sp, #12
     1fc:	af00      	add	r7, sp, #0
     1fe:	6078      	str	r0, [r7, #4]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
     200:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
     204:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
     208:	4a07      	ldr	r2, [pc, #28]	; (228 <ARM_MPU_Enable+0x30>)
     20a:	687b      	ldr	r3, [r7, #4]
     20c:	f043 0301 	orr.w	r3, r3, #1
     210:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
     212:	4b06      	ldr	r3, [pc, #24]	; (22c <ARM_MPU_Enable+0x34>)
     214:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     216:	4a05      	ldr	r2, [pc, #20]	; (22c <ARM_MPU_Enable+0x34>)
     218:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
     21c:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
     21e:	bf00      	nop
     220:	370c      	adds	r7, #12
     222:	46bd      	mov	sp, r7
     224:	bc80      	pop	{r7}
     226:	4770      	bx	lr
     228:	e000ed90 	.word	0xe000ed90
     22c:	e000ed00 	.word	0xe000ed00

00000230 <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
     230:	b480      	push	{r7}
     232:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
     234:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
     238:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
     23c:	4b07      	ldr	r3, [pc, #28]	; (25c <ARM_MPU_Disable+0x2c>)
     23e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
     240:	4a06      	ldr	r2, [pc, #24]	; (25c <ARM_MPU_Disable+0x2c>)
     242:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
     246:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
     248:	4b05      	ldr	r3, [pc, #20]	; (260 <ARM_MPU_Disable+0x30>)
     24a:	685b      	ldr	r3, [r3, #4]
     24c:	4a04      	ldr	r2, [pc, #16]	; (260 <ARM_MPU_Disable+0x30>)
     24e:	f023 0301 	bic.w	r3, r3, #1
     252:	6053      	str	r3, [r2, #4]
}
     254:	bf00      	nop
     256:	46bd      	mov	sp, r7
     258:	bc80      	pop	{r7}
     25a:	4770      	bx	lr
     25c:	e000ed00 	.word	0xe000ed00
     260:	e000ed90 	.word	0xe000ed90

00000264 <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
     264:	b480      	push	{r7}
     266:	b083      	sub	sp, #12
     268:	af00      	add	r7, sp, #0
     26a:	6078      	str	r0, [r7, #4]
     26c:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
     26e:	4a05      	ldr	r2, [pc, #20]	; (284 <ARM_MPU_SetRegion+0x20>)
     270:	687b      	ldr	r3, [r7, #4]
     272:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
     274:	4a03      	ldr	r2, [pc, #12]	; (284 <ARM_MPU_SetRegion+0x20>)
     276:	683b      	ldr	r3, [r7, #0]
     278:	6113      	str	r3, [r2, #16]
}
     27a:	bf00      	nop
     27c:	370c      	adds	r7, #12
     27e:	46bd      	mov	sp, r7
     280:	bc80      	pop	{r7}
     282:	4770      	bx	lr
     284:	e000ed90 	.word	0xe000ed90

00000288 <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
     288:	b5b0      	push	{r4, r5, r7, lr}
     28a:	b08a      	sub	sp, #40	; 0x28
     28c:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
     28e:	4b13      	ldr	r3, [pc, #76]	; (2dc <hal_mpu_test+0x54>)
     290:	463c      	mov	r4, r7
     292:	461d      	mov	r5, r3
     294:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
     296:	c40f      	stmia	r4!, {r0, r1, r2, r3}
     298:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
     29c:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
     2a0:	f7ff ffc6 	bl	230 <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
     2a4:	463b      	mov	r3, r7
     2a6:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     2a8:	e00d      	b.n	2c6 <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
     2aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     2ac:	681a      	ldr	r2, [r3, #0]
     2ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     2b0:	685b      	ldr	r3, [r3, #4]
     2b2:	4619      	mov	r1, r3
     2b4:	4610      	mov	r0, r2
     2b6:	f7ff ffd5 	bl	264 <ARM_MPU_SetRegion>
        mpu_region++;
     2ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     2bc:	3308      	adds	r3, #8
     2be:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     2c0:	6a3b      	ldr	r3, [r7, #32]
     2c2:	3301      	adds	r3, #1
     2c4:	623b      	str	r3, [r7, #32]
     2c6:	6a3b      	ldr	r3, [r7, #32]
     2c8:	2b03      	cmp	r3, #3
     2ca:	d9ee      	bls.n	2aa <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
     2cc:	2006      	movs	r0, #6
     2ce:	f7ff ff93 	bl	1f8 <ARM_MPU_Enable>
}
     2d2:	bf00      	nop
     2d4:	3728      	adds	r7, #40	; 0x28
     2d6:	46bd      	mov	sp, r7
     2d8:	bdb0      	pop	{r4, r5, r7, pc}
     2da:	bf00      	nop
     2dc:	00008858 	.word	0x00008858

000002e0 <__pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long __pow(int x, int y)
{
     2e0:	b480      	push	{r7}
     2e2:	b085      	sub	sp, #20
     2e4:	af00      	add	r7, sp, #0
     2e6:	6078      	str	r0, [r7, #4]
     2e8:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
     2ea:	2301      	movs	r3, #1
     2ec:	60fb      	str	r3, [r7, #12]
    while (y--)
     2ee:	e004      	b.n	2fa <__pow+0x1a>
    {
        sum *= x;
     2f0:	687a      	ldr	r2, [r7, #4]
     2f2:	68fb      	ldr	r3, [r7, #12]
     2f4:	fb02 f303 	mul.w	r3, r2, r3
     2f8:	60fb      	str	r3, [r7, #12]
    while (y--)
     2fa:	683b      	ldr	r3, [r7, #0]
     2fc:	1e5a      	subs	r2, r3, #1
     2fe:	603a      	str	r2, [r7, #0]
     300:	2b00      	cmp	r3, #0
     302:	d1f5      	bne.n	2f0 <__pow+0x10>
    }
    return sum;
     304:	68fb      	ldr	r3, [r7, #12]
}
     306:	4618      	mov	r0, r3
     308:	3714      	adds	r7, #20
     30a:	46bd      	mov	sp, r7
     30c:	bc80      	pop	{r7}
     30e:	4770      	bx	lr

00000310 <__putchar>:

void __putchar(const char ch)
{
     310:	b480      	push	{r7}
     312:	b083      	sub	sp, #12
     314:	af00      	add	r7, sp, #0
     316:	4603      	mov	r3, r0
     318:	71fb      	strb	r3, [r7, #7]
    *UART_DR = ch;
     31a:	4a04      	ldr	r2, [pc, #16]	; (32c <__putchar+0x1c>)
     31c:	79fb      	ldrb	r3, [r7, #7]
     31e:	6013      	str	r3, [r2, #0]
}
     320:	bf00      	nop
     322:	370c      	adds	r7, #12
     324:	46bd      	mov	sp, r7
     326:	bc80      	pop	{r7}
     328:	4770      	bx	lr
     32a:	bf00      	nop
     32c:	4000c000 	.word	0x4000c000

00000330 <__getchar>:
#define __putchar(ch) do {*UART_DR = ch;} while(0)
void __getchar(char *chr)
{
     330:	b480      	push	{r7}
     332:	b083      	sub	sp, #12
     334:	af00      	add	r7, sp, #0
     336:	6078      	str	r0, [r7, #4]
    *chr = (char)*UART_DR;
     338:	4b04      	ldr	r3, [pc, #16]	; (34c <__getchar+0x1c>)
     33a:	681b      	ldr	r3, [r3, #0]
     33c:	b2da      	uxtb	r2, r3
     33e:	687b      	ldr	r3, [r7, #4]
     340:	701a      	strb	r2, [r3, #0]
}
     342:	bf00      	nop
     344:	370c      	adds	r7, #12
     346:	46bd      	mov	sp, r7
     348:	bc80      	pop	{r7}
     34a:	4770      	bx	lr
     34c:	4000c000 	.word	0x4000c000

00000350 <lite_getchar>:
void lite_getchar(char *chr)
{
     350:	b480      	push	{r7}
     352:	b083      	sub	sp, #12
     354:	af00      	add	r7, sp, #0
     356:	6078      	str	r0, [r7, #4]
    do {
        *chr = (char)*UART_DR;
     358:	4b06      	ldr	r3, [pc, #24]	; (374 <lite_getchar+0x24>)
     35a:	681b      	ldr	r3, [r3, #0]
     35c:	b2da      	uxtb	r2, r3
     35e:	687b      	ldr	r3, [r7, #4]
     360:	701a      	strb	r2, [r3, #0]
    } while (*chr == 0);
     362:	687b      	ldr	r3, [r7, #4]
     364:	781b      	ldrb	r3, [r3, #0]
     366:	2b00      	cmp	r3, #0
     368:	d0f6      	beq.n	358 <lite_getchar+0x8>
}
     36a:	bf00      	nop
     36c:	370c      	adds	r7, #12
     36e:	46bd      	mov	sp, r7
     370:	bc80      	pop	{r7}
     372:	4770      	bx	lr
     374:	4000c000 	.word	0x4000c000

00000378 <lite_putchar>:
void lite_putchar(char character)
{
     378:	b480      	push	{r7}
     37a:	b083      	sub	sp, #12
     37c:	af00      	add	r7, sp, #0
     37e:	4603      	mov	r3, r0
     380:	71fb      	strb	r3, [r7, #7]
    __putchar(character);
     382:	4a04      	ldr	r2, [pc, #16]	; (394 <lite_putchar+0x1c>)
     384:	79fb      	ldrb	r3, [r7, #7]
     386:	6013      	str	r3, [r2, #0]
}
     388:	bf00      	nop
     38a:	370c      	adds	r7, #12
     38c:	46bd      	mov	sp, r7
     38e:	bc80      	pop	{r7}
     390:	4770      	bx	lr
     392:	bf00      	nop
     394:	4000c000 	.word	0x4000c000

00000398 <_putchar>:

void _putchar(char character)
{
     398:	b480      	push	{r7}
     39a:	b083      	sub	sp, #12
     39c:	af00      	add	r7, sp, #0
     39e:	4603      	mov	r3, r0
     3a0:	71fb      	strb	r3, [r7, #7]
    __putchar(character);
     3a2:	4a04      	ldr	r2, [pc, #16]	; (3b4 <_putchar+0x1c>)
     3a4:	79fb      	ldrb	r3, [r7, #7]
     3a6:	6013      	str	r3, [r2, #0]
}
     3a8:	bf00      	nop
     3aa:	370c      	adds	r7, #12
     3ac:	46bd      	mov	sp, r7
     3ae:	bc80      	pop	{r7}
     3b0:	4770      	bx	lr
     3b2:	bf00      	nop
     3b4:	4000c000 	.word	0x4000c000

000003b8 <__putstr>:
void __putstr(const char *str)
{
     3b8:	b480      	push	{r7}
     3ba:	b083      	sub	sp, #12
     3bc:	af00      	add	r7, sp, #0
     3be:	6078      	str	r0, [r7, #4]
    while (*str)
     3c0:	e005      	b.n	3ce <__putstr+0x16>
    {
        __putchar(*str++);
     3c2:	687b      	ldr	r3, [r7, #4]
     3c4:	1c5a      	adds	r2, r3, #1
     3c6:	607a      	str	r2, [r7, #4]
     3c8:	781a      	ldrb	r2, [r3, #0]
     3ca:	4b05      	ldr	r3, [pc, #20]	; (3e0 <__putstr+0x28>)
     3cc:	601a      	str	r2, [r3, #0]
    while (*str)
     3ce:	687b      	ldr	r3, [r7, #4]
     3d0:	781b      	ldrb	r3, [r3, #0]
     3d2:	2b00      	cmp	r3, #0
     3d4:	d1f5      	bne.n	3c2 <__putstr+0xa>
    }
}
     3d6:	bf00      	nop
     3d8:	370c      	adds	r7, #12
     3da:	46bd      	mov	sp, r7
     3dc:	bc80      	pop	{r7}
     3de:	4770      	bx	lr
     3e0:	4000c000 	.word	0x4000c000

000003e4 <__strlen>:
uint32_t __strlen (const char *__s)
{
     3e4:	b480      	push	{r7}
     3e6:	b085      	sub	sp, #20
     3e8:	af00      	add	r7, sp, #0
     3ea:	6078      	str	r0, [r7, #4]
    uint32_t i = 0;
     3ec:	2300      	movs	r3, #0
     3ee:	60fb      	str	r3, [r7, #12]
    while(*__s++ != '\0') i++;
     3f0:	e002      	b.n	3f8 <__strlen+0x14>
     3f2:	68fb      	ldr	r3, [r7, #12]
     3f4:	3301      	adds	r3, #1
     3f6:	60fb      	str	r3, [r7, #12]
     3f8:	687b      	ldr	r3, [r7, #4]
     3fa:	1c5a      	adds	r2, r3, #1
     3fc:	607a      	str	r2, [r7, #4]
     3fe:	781b      	ldrb	r3, [r3, #0]
     400:	2b00      	cmp	r3, #0
     402:	d1f6      	bne.n	3f2 <__strlen+0xe>
    return i;
     404:	68fb      	ldr	r3, [r7, #12]
}
     406:	4618      	mov	r0, r3
     408:	3714      	adds	r7, #20
     40a:	46bd      	mov	sp, r7
     40c:	bc80      	pop	{r7}
     40e:	4770      	bx	lr

00000410 <lite_printf>:
int lite_printf(const char *str, ...)
{
     410:	b40f      	push	{r0, r1, r2, r3}
     412:	b590      	push	{r4, r7, lr}
     414:	b089      	sub	sp, #36	; 0x24
     416:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
     418:	2300      	movs	r3, #0
     41a:	613b      	str	r3, [r7, #16]
    int res = 0; //返回值
     41c:	2300      	movs	r3, #0
     41e:	617b      	str	r3, [r7, #20]

    va_start(ap, str);   //初始化ap
     420:	f107 0334 	add.w	r3, r7, #52	; 0x34
     424:	607b      	str	r3, [r7, #4]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     426:	e108      	b.n	63a <lite_printf+0x22a>
    {
        switch (*str)
     428:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     42a:	781b      	ldrb	r3, [r3, #0]
     42c:	2b0d      	cmp	r3, #13
     42e:	f000 80f1 	beq.w	614 <lite_printf+0x204>
     432:	2b25      	cmp	r3, #37	; 0x25
     434:	d003      	beq.n	43e <lite_printf+0x2e>
     436:	2b0a      	cmp	r3, #10
     438:	f000 80e5 	beq.w	606 <lite_printf+0x1f6>
     43c:	e0f1      	b.n	622 <lite_printf+0x212>
        {
        case '%': //发送参数
            str++;
     43e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     440:	3301      	adds	r3, #1
     442:	633b      	str	r3, [r7, #48]	; 0x30
            switch (*str)
     444:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     446:	781b      	ldrb	r3, [r3, #0]
     448:	3b63      	subs	r3, #99	; 0x63
     44a:	2b15      	cmp	r3, #21
     44c:	f200 80f1 	bhi.w	632 <lite_printf+0x222>
     450:	a201      	add	r2, pc, #4	; (adr r2, 458 <lite_printf+0x48>)
     452:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     456:	bf00      	nop
     458:	000005ef 	.word	0x000005ef
     45c:	000004b1 	.word	0x000004b1
     460:	00000633 	.word	0x00000633
     464:	00000633 	.word	0x00000633
     468:	00000633 	.word	0x00000633
     46c:	00000633 	.word	0x00000633
     470:	00000633 	.word	0x00000633
     474:	00000633 	.word	0x00000633
     478:	00000633 	.word	0x00000633
     47c:	00000633 	.word	0x00000633
     480:	00000633 	.word	0x00000633
     484:	00000633 	.word	0x00000633
     488:	00000633 	.word	0x00000633
     48c:	00000633 	.word	0x00000633
     490:	00000633 	.word	0x00000633
     494:	00000633 	.word	0x00000633
     498:	000005cf 	.word	0x000005cf
     49c:	00000633 	.word	0x00000633
     4a0:	00000633 	.word	0x00000633
     4a4:	00000633 	.word	0x00000633
     4a8:	00000633 	.word	0x00000633
     4ac:	00000539 	.word	0x00000539
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     4b0:	687b      	ldr	r3, [r7, #4]
     4b2:	1d1a      	adds	r2, r3, #4
     4b4:	607a      	str	r2, [r7, #4]
     4b6:	681b      	ldr	r3, [r3, #0]
     4b8:	60fb      	str	r3, [r7, #12]
                r_val = val;
     4ba:	68fb      	ldr	r3, [r7, #12]
     4bc:	61fb      	str	r3, [r7, #28]
                count = 0;
     4be:	2300      	movs	r3, #0
     4c0:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     4c2:	e00a      	b.n	4da <lite_printf+0xca>

                {
                    count++; //整数的长度
     4c4:	7efb      	ldrb	r3, [r7, #27]
     4c6:	3301      	adds	r3, #1
     4c8:	76fb      	strb	r3, [r7, #27]
                    r_val /= 10;
     4ca:	69fb      	ldr	r3, [r7, #28]
     4cc:	4a61      	ldr	r2, [pc, #388]	; (654 <lite_printf+0x244>)
     4ce:	fb82 1203 	smull	r1, r2, r2, r3
     4d2:	1092      	asrs	r2, r2, #2
     4d4:	17db      	asrs	r3, r3, #31
     4d6:	1ad3      	subs	r3, r2, r3
     4d8:	61fb      	str	r3, [r7, #28]
                while (r_val)
     4da:	69fb      	ldr	r3, [r7, #28]
     4dc:	2b00      	cmp	r3, #0
     4de:	d1f1      	bne.n	4c4 <lite_printf+0xb4>
                }

                res += count;
     4e0:	7efb      	ldrb	r3, [r7, #27]
     4e2:	697a      	ldr	r2, [r7, #20]
     4e4:	4413      	add	r3, r2
     4e6:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     4e8:	68fb      	ldr	r3, [r7, #12]
     4ea:	61fb      	str	r3, [r7, #28]
                while (count)
     4ec:	e020      	b.n	530 <lite_printf+0x120>
                {
                    ch = r_val / __pow(10, count - 1);
     4ee:	69fc      	ldr	r4, [r7, #28]
     4f0:	7efb      	ldrb	r3, [r7, #27]
     4f2:	3b01      	subs	r3, #1
     4f4:	4619      	mov	r1, r3
     4f6:	200a      	movs	r0, #10
     4f8:	f7ff fef2 	bl	2e0 <__pow>
     4fc:	4603      	mov	r3, r0
     4fe:	fbb4 f3f3 	udiv	r3, r4, r3
     502:	72fb      	strb	r3, [r7, #11]
                    r_val %= __pow(10, count - 1);
     504:	7efb      	ldrb	r3, [r7, #27]
     506:	3b01      	subs	r3, #1
     508:	4619      	mov	r1, r3
     50a:	200a      	movs	r0, #10
     50c:	f7ff fee8 	bl	2e0 <__pow>
     510:	4602      	mov	r2, r0
     512:	69fb      	ldr	r3, [r7, #28]
     514:	fbb3 f1f2 	udiv	r1, r3, r2
     518:	fb02 f201 	mul.w	r2, r2, r1
     51c:	1a9b      	subs	r3, r3, r2
     51e:	61fb      	str	r3, [r7, #28]

                    __putchar(ch + '0');
     520:	7afb      	ldrb	r3, [r7, #11]
     522:	f103 0230 	add.w	r2, r3, #48	; 0x30
     526:	4b4c      	ldr	r3, [pc, #304]	; (658 <lite_printf+0x248>)
     528:	601a      	str	r2, [r3, #0]
                    //数字到字符的转换
                    count--;
     52a:	7efb      	ldrb	r3, [r7, #27]
     52c:	3b01      	subs	r3, #1
     52e:	76fb      	strb	r3, [r7, #27]
                while (count)
     530:	7efb      	ldrb	r3, [r7, #27]
     532:	2b00      	cmp	r3, #0
     534:	d1db      	bne.n	4ee <lite_printf+0xde>
                }
                break;
     536:	e065      	b.n	604 <lite_printf+0x1f4>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     538:	687b      	ldr	r3, [r7, #4]
     53a:	1d1a      	adds	r2, r3, #4
     53c:	607a      	str	r2, [r7, #4]
     53e:	681b      	ldr	r3, [r3, #0]
     540:	60fb      	str	r3, [r7, #12]
                r_val = val;
     542:	68fb      	ldr	r3, [r7, #12]
     544:	61fb      	str	r3, [r7, #28]
                count = 0;
     546:	2300      	movs	r3, #0
     548:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     54a:	e008      	b.n	55e <lite_printf+0x14e>

                {
                    count++; //整数的长度
     54c:	7efb      	ldrb	r3, [r7, #27]
     54e:	3301      	adds	r3, #1
     550:	76fb      	strb	r3, [r7, #27]
                    r_val /= 16;
     552:	69fb      	ldr	r3, [r7, #28]
     554:	2b00      	cmp	r3, #0
     556:	da00      	bge.n	55a <lite_printf+0x14a>
     558:	330f      	adds	r3, #15
     55a:	111b      	asrs	r3, r3, #4
     55c:	61fb      	str	r3, [r7, #28]
                while (r_val)
     55e:	69fb      	ldr	r3, [r7, #28]
     560:	2b00      	cmp	r3, #0
     562:	d1f3      	bne.n	54c <lite_printf+0x13c>
                }

                res += count;
     564:	7efb      	ldrb	r3, [r7, #27]
     566:	697a      	ldr	r2, [r7, #20]
     568:	4413      	add	r3, r2
     56a:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     56c:	68fb      	ldr	r3, [r7, #12]
     56e:	61fb      	str	r3, [r7, #28]
                while (count)
     570:	e029      	b.n	5c6 <lite_printf+0x1b6>
                {
                    ch = r_val / __pow(16, count - 1);
     572:	69fc      	ldr	r4, [r7, #28]
     574:	7efb      	ldrb	r3, [r7, #27]
     576:	3b01      	subs	r3, #1
     578:	4619      	mov	r1, r3
     57a:	2010      	movs	r0, #16
     57c:	f7ff feb0 	bl	2e0 <__pow>
     580:	4603      	mov	r3, r0
     582:	fbb4 f3f3 	udiv	r3, r4, r3
     586:	72fb      	strb	r3, [r7, #11]
                    r_val %= __pow(16, count - 1);
     588:	7efb      	ldrb	r3, [r7, #27]
     58a:	3b01      	subs	r3, #1
     58c:	4619      	mov	r1, r3
     58e:	2010      	movs	r0, #16
     590:	f7ff fea6 	bl	2e0 <__pow>
     594:	4602      	mov	r2, r0
     596:	69fb      	ldr	r3, [r7, #28]
     598:	fbb3 f1f2 	udiv	r1, r3, r2
     59c:	fb02 f201 	mul.w	r2, r2, r1
     5a0:	1a9b      	subs	r3, r3, r2
     5a2:	61fb      	str	r3, [r7, #28]
                    if (ch <= 9)
     5a4:	7afb      	ldrb	r3, [r7, #11]
     5a6:	2b09      	cmp	r3, #9
     5a8:	d805      	bhi.n	5b6 <lite_printf+0x1a6>
                        __putchar(ch + '0');
     5aa:	7afb      	ldrb	r3, [r7, #11]
     5ac:	f103 0230 	add.w	r2, r3, #48	; 0x30
     5b0:	4b29      	ldr	r3, [pc, #164]	; (658 <lite_printf+0x248>)
     5b2:	601a      	str	r2, [r3, #0]
     5b4:	e004      	b.n	5c0 <lite_printf+0x1b0>
                    //数字到字符的转换
                    else
                        __putchar(ch - 10 + 'a');
     5b6:	7afb      	ldrb	r3, [r7, #11]
     5b8:	f103 0257 	add.w	r2, r3, #87	; 0x57
     5bc:	4b26      	ldr	r3, [pc, #152]	; (658 <lite_printf+0x248>)
     5be:	601a      	str	r2, [r3, #0]
                    count--;
     5c0:	7efb      	ldrb	r3, [r7, #27]
     5c2:	3b01      	subs	r3, #1
     5c4:	76fb      	strb	r3, [r7, #27]
                while (count)
     5c6:	7efb      	ldrb	r3, [r7, #27]
     5c8:	2b00      	cmp	r3, #0
     5ca:	d1d2      	bne.n	572 <lite_printf+0x162>
                }
                break;
     5cc:	e01a      	b.n	604 <lite_printf+0x1f4>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     5ce:	687b      	ldr	r3, [r7, #4]
     5d0:	1d1a      	adds	r2, r3, #4
     5d2:	607a      	str	r2, [r7, #4]
     5d4:	681b      	ldr	r3, [r3, #0]
     5d6:	613b      	str	r3, [r7, #16]
                __putstr(s);
     5d8:	6938      	ldr	r0, [r7, #16]
     5da:	f7ff feed 	bl	3b8 <__putstr>
                //字符串,返回值为字符指针
                res += __strlen(s);
     5de:	6938      	ldr	r0, [r7, #16]
     5e0:	f7ff ff00 	bl	3e4 <__strlen>
     5e4:	4602      	mov	r2, r0
     5e6:	697b      	ldr	r3, [r7, #20]
     5e8:	4413      	add	r3, r2
     5ea:	617b      	str	r3, [r7, #20]
                //返回值长度增加
                break;
     5ec:	e00a      	b.n	604 <lite_printf+0x1f4>
            case 'c':
                __putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     5ee:	687b      	ldr	r3, [r7, #4]
     5f0:	1d1a      	adds	r2, r3, #4
     5f2:	607a      	str	r2, [r7, #4]
     5f4:	681b      	ldr	r3, [r3, #0]
     5f6:	b2da      	uxtb	r2, r3
     5f8:	4b17      	ldr	r3, [pc, #92]	; (658 <lite_printf+0x248>)
     5fa:	601a      	str	r2, [r3, #0]
                res += 1;
     5fc:	697b      	ldr	r3, [r7, #20]
     5fe:	3301      	adds	r3, #1
     600:	617b      	str	r3, [r7, #20]

                break;
     602:	bf00      	nop
            default:;
            }
            break;
     604:	e015      	b.n	632 <lite_printf+0x222>
        case '\n':
            __putchar('\n');
     606:	4b14      	ldr	r3, [pc, #80]	; (658 <lite_printf+0x248>)
     608:	220a      	movs	r2, #10
     60a:	601a      	str	r2, [r3, #0]
            res += 1;
     60c:	697b      	ldr	r3, [r7, #20]
     60e:	3301      	adds	r3, #1
     610:	617b      	str	r3, [r7, #20]
            break;
     612:	e00f      	b.n	634 <lite_printf+0x224>
        case '\r':
            __putchar('\r');
     614:	4b10      	ldr	r3, [pc, #64]	; (658 <lite_printf+0x248>)
     616:	220d      	movs	r2, #13
     618:	601a      	str	r2, [r3, #0]
            res += 1;
     61a:	697b      	ldr	r3, [r7, #20]
     61c:	3301      	adds	r3, #1
     61e:	617b      	str	r3, [r7, #20]
            break;
     620:	e008      	b.n	634 <lite_printf+0x224>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            __putchar(*str);
     622:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     624:	781a      	ldrb	r2, [r3, #0]
     626:	4b0c      	ldr	r3, [pc, #48]	; (658 <lite_printf+0x248>)
     628:	601a      	str	r2, [r3, #0]
            res += 1;
     62a:	697b      	ldr	r3, [r7, #20]
     62c:	3301      	adds	r3, #1
     62e:	617b      	str	r3, [r7, #20]
     630:	e000      	b.n	634 <lite_printf+0x224>
            break;
     632:	bf00      	nop
        }

        str++;
     634:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     636:	3301      	adds	r3, #1
     638:	633b      	str	r3, [r7, #48]	; 0x30
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     63a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     63c:	781b      	ldrb	r3, [r3, #0]
     63e:	2b00      	cmp	r3, #0
     640:	f47f aef2 	bne.w	428 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     644:	697b      	ldr	r3, [r7, #20]
}
     646:	4618      	mov	r0, r3
     648:	3724      	adds	r7, #36	; 0x24
     64a:	46bd      	mov	sp, r7
     64c:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     650:	b004      	add	sp, #16
     652:	4770      	bx	lr
     654:	66666667 	.word	0x66666667
     658:	4000c000 	.word	0x4000c000

0000065c <__io_putchar>:

int __io_putchar(int ch)
{
     65c:	b480      	push	{r7}
     65e:	b083      	sub	sp, #12
     660:	af00      	add	r7, sp, #0
     662:	6078      	str	r0, [r7, #4]
    __putchar(ch);
     664:	4a04      	ldr	r2, [pc, #16]	; (678 <__io_putchar+0x1c>)
     666:	687b      	ldr	r3, [r7, #4]
     668:	6013      	str	r3, [r2, #0]
    return 0;
     66a:	2300      	movs	r3, #0
}
     66c:	4618      	mov	r0, r3
     66e:	370c      	adds	r7, #12
     670:	46bd      	mov	sp, r7
     672:	bc80      	pop	{r7}
     674:	4770      	bx	lr
     676:	bf00      	nop
     678:	4000c000 	.word	0x4000c000

0000067c <__io_getchar>:

int __io_getchar(void)
{   char chr;
     67c:	b580      	push	{r7, lr}
     67e:	b082      	sub	sp, #8
     680:	af00      	add	r7, sp, #0
    __getchar(&chr);
     682:	1dfb      	adds	r3, r7, #7
     684:	4618      	mov	r0, r3
     686:	f7ff fe53 	bl	330 <__getchar>
    return chr;
     68a:	79fb      	ldrb	r3, [r7, #7]
}
     68c:	4618      	mov	r0, r3
     68e:	3708      	adds	r7, #8
     690:	46bd      	mov	sp, r7
     692:	bd80      	pop	{r7, pc}

00000694 <test_div>:
#include "backtrace.h"
#include "hal_log.h"
#include "hal_platform.h"

int test_div(void)
{
     694:	b480      	push	{r7}
     696:	b085      	sub	sp, #20
     698:	af00      	add	r7, sp, #0
    // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
     69a:	4b0a      	ldr	r3, [pc, #40]	; (6c4 <test_div+0x30>)
     69c:	695b      	ldr	r3, [r3, #20]
     69e:	4a09      	ldr	r2, [pc, #36]	; (6c4 <test_div+0x30>)
     6a0:	f043 0318 	orr.w	r3, r3, #24
     6a4:	6153      	str	r3, [r2, #20]

    int a = 1;
     6a6:	2301      	movs	r3, #1
     6a8:	60fb      	str	r3, [r7, #12]
    int b = 0;
     6aa:	2300      	movs	r3, #0
     6ac:	60bb      	str	r3, [r7, #8]
    int z = a / b;
     6ae:	68fa      	ldr	r2, [r7, #12]
     6b0:	68bb      	ldr	r3, [r7, #8]
     6b2:	fb92 f3f3 	sdiv	r3, r2, r3
     6b6:	607b      	str	r3, [r7, #4]

    return z;
     6b8:	687b      	ldr	r3, [r7, #4]
}
     6ba:	4618      	mov	r0, r3
     6bc:	3714      	adds	r7, #20
     6be:	46bd      	mov	sp, r7
     6c0:	bc80      	pop	{r7}
     6c2:	4770      	bx	lr
     6c4:	e000ed00 	.word	0xe000ed00

000006c8 <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
     6c8:	b580      	push	{r7, lr}
     6ca:	b084      	sub	sp, #16
     6cc:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
     6ce:	4b16      	ldr	r3, [pc, #88]	; (728 <fault_test_by_unalign+0x60>)
     6d0:	60fb      	str	r3, [r7, #12]
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
     6d2:	68fb      	ldr	r3, [r7, #12]
     6d4:	681b      	ldr	r3, [r3, #0]
     6d6:	f043 0208 	orr.w	r2, r3, #8
     6da:	68fb      	ldr	r3, [r7, #12]
     6dc:	601a      	str	r2, [r3, #0]

    p = (int *) 0x00;
     6de:	2300      	movs	r3, #0
     6e0:	60bb      	str	r3, [r7, #8]
    value = *p;
     6e2:	68bb      	ldr	r3, [r7, #8]
     6e4:	681b      	ldr	r3, [r3, #0]
     6e6:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     6e8:	68bb      	ldr	r3, [r7, #8]
     6ea:	687a      	ldr	r2, [r7, #4]
     6ec:	4619      	mov	r1, r3
     6ee:	480f      	ldr	r0, [pc, #60]	; (72c <fault_test_by_unalign+0x64>)
     6f0:	f001 f859 	bl	17a6 <printf_>

    p = (int *) 0x04;
     6f4:	2304      	movs	r3, #4
     6f6:	60bb      	str	r3, [r7, #8]
    value = *p;
     6f8:	68bb      	ldr	r3, [r7, #8]
     6fa:	681b      	ldr	r3, [r3, #0]
     6fc:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     6fe:	68bb      	ldr	r3, [r7, #8]
     700:	687a      	ldr	r2, [r7, #4]
     702:	4619      	mov	r1, r3
     704:	4809      	ldr	r0, [pc, #36]	; (72c <fault_test_by_unalign+0x64>)
     706:	f001 f84e 	bl	17a6 <printf_>

    p = (int *) 0x03;
     70a:	2303      	movs	r3, #3
     70c:	60bb      	str	r3, [r7, #8]
    value = *p;
     70e:	68bb      	ldr	r3, [r7, #8]
     710:	681b      	ldr	r3, [r3, #0]
     712:	607b      	str	r3, [r7, #4]
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
     714:	68bb      	ldr	r3, [r7, #8]
     716:	687a      	ldr	r2, [r7, #4]
     718:	4619      	mov	r1, r3
     71a:	4804      	ldr	r0, [pc, #16]	; (72c <fault_test_by_unalign+0x64>)
     71c:	f001 f843 	bl	17a6 <printf_>
}
     720:	bf00      	nop
     722:	3710      	adds	r7, #16
     724:	46bd      	mov	sp, r7
     726:	bd80      	pop	{r7, pc}
     728:	e000ed14 	.word	0xe000ed14
     72c:	0000887c 	.word	0x0000887c

00000730 <fault_test_by_div0>:

void fault_test_by_div0(void) {
     730:	b580      	push	{r7, lr}
     732:	b084      	sub	sp, #16
     734:	af00      	add	r7, sp, #0
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
     736:	4b0c      	ldr	r3, [pc, #48]	; (768 <fault_test_by_div0+0x38>)
     738:	60fb      	str	r3, [r7, #12]
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
     73a:	68fb      	ldr	r3, [r7, #12]
     73c:	681b      	ldr	r3, [r3, #0]
     73e:	f043 0210 	orr.w	r2, r3, #16
     742:	68fb      	ldr	r3, [r7, #12]
     744:	601a      	str	r2, [r3, #0]

    x = 10;
     746:	230a      	movs	r3, #10
     748:	60bb      	str	r3, [r7, #8]
    y = 0;
     74a:	2300      	movs	r3, #0
     74c:	607b      	str	r3, [r7, #4]
    z = x / y;
     74e:	68ba      	ldr	r2, [r7, #8]
     750:	687b      	ldr	r3, [r7, #4]
     752:	fb92 f3f3 	sdiv	r3, r2, r3
     756:	603b      	str	r3, [r7, #0]
    printf("z:%d\n", z);
     758:	6839      	ldr	r1, [r7, #0]
     75a:	4804      	ldr	r0, [pc, #16]	; (76c <fault_test_by_div0+0x3c>)
     75c:	f001 f823 	bl	17a6 <printf_>
}
     760:	bf00      	nop
     762:	3710      	adds	r7, #16
     764:	46bd      	mov	sp, r7
     766:	bd80      	pop	{r7, pc}
     768:	e000ed14 	.word	0xe000ed14
     76c:	00008894 	.word	0x00008894

00000770 <dump_stack>:
extern const uint32_t _sstack;
extern const uint32_t _estack;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer) {
     770:	b580      	push	{r7, lr}
     772:	b084      	sub	sp, #16
     774:	af00      	add	r7, sp, #0
     776:	60f8      	str	r0, [r7, #12]
     778:	60b9      	str	r1, [r7, #8]
     77a:	607a      	str	r2, [r7, #4]
        // if (on_thread_before_fault) {
        //     printf(print_info[PRINT_THREAD_STACK_OVERFLOW], stack_pointer);
        // } else {
        //     printf(print_info[PRINT_MAIN_STACK_OVERFLOW], stack_pointer);
        // }
        if ((uint32_t) stack_pointer < stack_start_addr) {
     77c:	687b      	ldr	r3, [r7, #4]
     77e:	68fa      	ldr	r2, [r7, #12]
     780:	429a      	cmp	r2, r3
     782:	d902      	bls.n	78a <dump_stack+0x1a>
            stack_pointer = (uint32_t *) stack_start_addr;
     784:	68fb      	ldr	r3, [r7, #12]
     786:	607b      	str	r3, [r7, #4]
     788:	e014      	b.n	7b4 <dump_stack+0x44>
        } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
     78a:	68fa      	ldr	r2, [r7, #12]
     78c:	68bb      	ldr	r3, [r7, #8]
     78e:	441a      	add	r2, r3
     790:	687b      	ldr	r3, [r7, #4]
     792:	429a      	cmp	r2, r3
     794:	d20e      	bcs.n	7b4 <dump_stack+0x44>
            stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
     796:	68fa      	ldr	r2, [r7, #12]
     798:	68bb      	ldr	r3, [r7, #8]
     79a:	4413      	add	r3, r2
     79c:	607b      	str	r3, [r7, #4]
        }
    // }
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
     79e:	e009      	b.n	7b4 <dump_stack+0x44>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
     7a0:	6879      	ldr	r1, [r7, #4]
     7a2:	687b      	ldr	r3, [r7, #4]
     7a4:	681b      	ldr	r3, [r3, #0]
     7a6:	461a      	mov	r2, r3
     7a8:	4809      	ldr	r0, [pc, #36]	; (7d0 <dump_stack+0x60>)
     7aa:	f000 fffc 	bl	17a6 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
     7ae:	687b      	ldr	r3, [r7, #4]
     7b0:	3304      	adds	r3, #4
     7b2:	607b      	str	r3, [r7, #4]
     7b4:	68fa      	ldr	r2, [r7, #12]
     7b6:	68bb      	ldr	r3, [r7, #8]
     7b8:	441a      	add	r2, r3
     7ba:	687b      	ldr	r3, [r7, #4]
     7bc:	429a      	cmp	r2, r3
     7be:	d8ef      	bhi.n	7a0 <dump_stack+0x30>
    }
    printf("====================================");
     7c0:	4804      	ldr	r0, [pc, #16]	; (7d4 <dump_stack+0x64>)
     7c2:	f000 fff0 	bl	17a6 <printf_>
}
     7c6:	bf00      	nop
     7c8:	3710      	adds	r7, #16
     7ca:	46bd      	mov	sp, r7
     7cc:	bd80      	pop	{r7, pc}
     7ce:	bf00      	nop
     7d0:	0000889c 	.word	0x0000889c
     7d4:	000088bc 	.word	0x000088bc

000007d8 <backtrace_test>:

void backtrace_test(void)
{
     7d8:	b590      	push	{r4, r7, lr}
     7da:	b089      	sub	sp, #36	; 0x24
     7dc:	af02      	add	r7, sp, #8

    code_start_addr = (uint32_t)&_stext;
     7de:	4a34      	ldr	r2, [pc, #208]	; (8b0 <backtrace_test+0xd8>)
     7e0:	4b34      	ldr	r3, [pc, #208]	; (8b4 <backtrace_test+0xdc>)
     7e2:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
     7e4:	4a34      	ldr	r2, [pc, #208]	; (8b8 <backtrace_test+0xe0>)
     7e6:	4b35      	ldr	r3, [pc, #212]	; (8bc <backtrace_test+0xe4>)
     7e8:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
     7ea:	4b34      	ldr	r3, [pc, #208]	; (8bc <backtrace_test+0xe4>)
     7ec:	681a      	ldr	r2, [r3, #0]
     7ee:	4b31      	ldr	r3, [pc, #196]	; (8b4 <backtrace_test+0xdc>)
     7f0:	681b      	ldr	r3, [r3, #0]
     7f2:	1ad3      	subs	r3, r2, r3
     7f4:	4a32      	ldr	r2, [pc, #200]	; (8c0 <backtrace_test+0xe8>)
     7f6:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
     7f8:	4a32      	ldr	r2, [pc, #200]	; (8c4 <backtrace_test+0xec>)
     7fa:	4b33      	ldr	r3, [pc, #204]	; (8c8 <backtrace_test+0xf0>)
     7fc:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
     7fe:	4a33      	ldr	r2, [pc, #204]	; (8cc <backtrace_test+0xf4>)
     800:	4b33      	ldr	r3, [pc, #204]	; (8d0 <backtrace_test+0xf8>)
     802:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
     804:	4b32      	ldr	r3, [pc, #200]	; (8d0 <backtrace_test+0xf8>)
     806:	681a      	ldr	r2, [r3, #0]
     808:	4b2f      	ldr	r3, [pc, #188]	; (8c8 <backtrace_test+0xf0>)
     80a:	681b      	ldr	r3, [r3, #0]
     80c:	1ad3      	subs	r3, r2, r3
     80e:	4a31      	ldr	r2, [pc, #196]	; (8d4 <backtrace_test+0xfc>)
     810:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
     812:	4b28      	ldr	r3, [pc, #160]	; (8b4 <backtrace_test+0xdc>)
     814:	6819      	ldr	r1, [r3, #0]
     816:	4b29      	ldr	r3, [pc, #164]	; (8bc <backtrace_test+0xe4>)
     818:	6818      	ldr	r0, [r3, #0]
     81a:	4b29      	ldr	r3, [pc, #164]	; (8c0 <backtrace_test+0xe8>)
     81c:	681b      	ldr	r3, [r3, #0]
     81e:	4a28      	ldr	r2, [pc, #160]	; (8c0 <backtrace_test+0xe8>)
     820:	6812      	ldr	r2, [r2, #0]
     822:	9201      	str	r2, [sp, #4]
     824:	9300      	str	r3, [sp, #0]
     826:	4603      	mov	r3, r0
     828:	460a      	mov	r2, r1
     82a:	492b      	ldr	r1, [pc, #172]	; (8d8 <backtrace_test+0x100>)
     82c:	482b      	ldr	r0, [pc, #172]	; (8dc <backtrace_test+0x104>)
     82e:	f000 ffba 	bl	17a6 <printf_>
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
     832:	4b25      	ldr	r3, [pc, #148]	; (8c8 <backtrace_test+0xf0>)
     834:	6819      	ldr	r1, [r3, #0]
     836:	4b26      	ldr	r3, [pc, #152]	; (8d0 <backtrace_test+0xf8>)
     838:	6818      	ldr	r0, [r3, #0]
     83a:	4b26      	ldr	r3, [pc, #152]	; (8d4 <backtrace_test+0xfc>)
     83c:	681b      	ldr	r3, [r3, #0]
     83e:	4a25      	ldr	r2, [pc, #148]	; (8d4 <backtrace_test+0xfc>)
     840:	6812      	ldr	r2, [r2, #0]
     842:	9201      	str	r2, [sp, #4]
     844:	9300      	str	r3, [sp, #0]
     846:	4603      	mov	r3, r0
     848:	460a      	mov	r2, r1
     84a:	4923      	ldr	r1, [pc, #140]	; (8d8 <backtrace_test+0x100>)
     84c:	4824      	ldr	r0, [pc, #144]	; (8e0 <backtrace_test+0x108>)
     84e:	f000 ffaa 	bl	17a6 <printf_>
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
     852:	4b1d      	ldr	r3, [pc, #116]	; (8c8 <backtrace_test+0xf0>)
     854:	6818      	ldr	r0, [r3, #0]
     856:	4b1f      	ldr	r3, [pc, #124]	; (8d4 <backtrace_test+0xfc>)
     858:	681b      	ldr	r3, [r3, #0]
        __asm volatile ("MRS %0, psp\n" : "=r" (result) );
        return(result);
    }
    __attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
        register uint32_t result;
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
     85a:	466a      	mov	r2, sp
     85c:	4614      	mov	r4, r2
        return(result);
     85e:	4622      	mov	r2, r4
     860:	4619      	mov	r1, r3
     862:	f7ff ff85 	bl	770 <dump_stack>

    int bt1 = 0xAA;
     866:	23aa      	movs	r3, #170	; 0xaa
     868:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
     86a:	2355      	movs	r3, #85	; 0x55
     86c:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
     86e:	2377      	movs	r3, #119	; 0x77
     870:	60bb      	str	r3, [r7, #8]
  __ASM volatile ("cpsie i" : : : "memory");
     872:	b662      	cpsie	i
        __asm volatile ("MOV %0, sp\n" : "=r" (result) );
     874:	466b      	mov	r3, sp
     876:	461c      	mov	r4, r3
        return(result);
     878:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();
    // fault_test_by_div0();
    // fault_test_by_unalign();
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
     87a:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
     87c:	6979      	ldr	r1, [r7, #20]
     87e:	4819      	ldr	r0, [pc, #100]	; (8e4 <backtrace_test+0x10c>)
     880:	f000 ff91 	bl	17a6 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
   uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
     884:	e00c      	b.n	8a0 <backtrace_test+0xc8>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
     886:	697b      	ldr	r3, [r7, #20]
     888:	681b      	ldr	r3, [r3, #0]
     88a:	607b      	str	r3, [r7, #4]
        if ((addr >= (uint32_t)&_stext) && 
     88c:	4a08      	ldr	r2, [pc, #32]	; (8b0 <backtrace_test+0xd8>)
     88e:	687b      	ldr	r3, [r7, #4]
     890:	4293      	cmp	r3, r2
     892:	d302      	bcc.n	89a <backtrace_test+0xc2>
            (sp <= (uint32_t)&_etext) &&
     894:	4a08      	ldr	r2, [pc, #32]	; (8b8 <backtrace_test+0xe0>)
        if ((addr >= (uint32_t)&_stext) && 
     896:	697b      	ldr	r3, [r7, #20]
     898:	4293      	cmp	r3, r2
            IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
            

        }
        sp += 4;
     89a:	697b      	ldr	r3, [r7, #20]
     89c:	3304      	adds	r3, #4
     89e:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
     8a0:	4a0a      	ldr	r2, [pc, #40]	; (8cc <backtrace_test+0xf4>)
     8a2:	697b      	ldr	r3, [r7, #20]
     8a4:	4293      	cmp	r3, r2
     8a6:	d3ee      	bcc.n	886 <backtrace_test+0xae>
    }

     8a8:	bf00      	nop
     8aa:	371c      	adds	r7, #28
     8ac:	46bd      	mov	sp, r7
     8ae:	bd90      	pop	{r4, r7, pc}
     8b0:	00000000 	.word	0x00000000
     8b4:	200009e0 	.word	0x200009e0
     8b8:	00008d28 	.word	0x00008d28
     8bc:	200009e4 	.word	0x200009e4
     8c0:	200009e8 	.word	0x200009e8
     8c4:	20000a30 	.word	0x20000a30
     8c8:	200009ec 	.word	0x200009ec
     8cc:	20001a30 	.word	0x20001a30
     8d0:	200009f0 	.word	0x200009f0
     8d4:	200009f4 	.word	0x200009f4
     8d8:	00008980 	.word	0x00008980
     8dc:	000088e4 	.word	0x000088e4
     8e0:	0000892c 	.word	0x0000892c
     8e4:	00008974 	.word	0x00008974

000008e8 <initialise_monitor_handles>:
char **environ = __env;


/* Functions */
void initialise_monitor_handles()
{
     8e8:	b480      	push	{r7}
     8ea:	af00      	add	r7, sp, #0
}
     8ec:	bf00      	nop
     8ee:	46bd      	mov	sp, r7
     8f0:	bc80      	pop	{r7}
     8f2:	4770      	bx	lr

000008f4 <_getpid>:

int _getpid(void)
{
     8f4:	b480      	push	{r7}
     8f6:	af00      	add	r7, sp, #0
	return 1;
     8f8:	2301      	movs	r3, #1
}
     8fa:	4618      	mov	r0, r3
     8fc:	46bd      	mov	sp, r7
     8fe:	bc80      	pop	{r7}
     900:	4770      	bx	lr

00000902 <_kill>:

int _kill(int pid, int sig)
{
     902:	b580      	push	{r7, lr}
     904:	b082      	sub	sp, #8
     906:	af00      	add	r7, sp, #0
     908:	6078      	str	r0, [r7, #4]
     90a:	6039      	str	r1, [r7, #0]
	errno = EINVAL;
     90c:	f002 f888 	bl	2a20 <__errno>
     910:	4602      	mov	r2, r0
     912:	2316      	movs	r3, #22
     914:	6013      	str	r3, [r2, #0]
	return -1;
     916:	f04f 33ff 	mov.w	r3, #4294967295
}
     91a:	4618      	mov	r0, r3
     91c:	3708      	adds	r7, #8
     91e:	46bd      	mov	sp, r7
     920:	bd80      	pop	{r7, pc}

void _exit (int status)
{
     922:	b580      	push	{r7, lr}
     924:	b082      	sub	sp, #8
     926:	af00      	add	r7, sp, #0
     928:	6078      	str	r0, [r7, #4]
	_kill(status, -1);
     92a:	f04f 31ff 	mov.w	r1, #4294967295
     92e:	6878      	ldr	r0, [r7, #4]
     930:	f7ff ffe7 	bl	902 <_kill>
	while (1) {}		/* Make sure we hang here */
     934:	e7fe      	b.n	934 <_kill+0x32>

00000936 <_read>:
}
//当我们需要重定向到usart 到pc com调试打印时候可以重新实现_write() 和 _read() 
//使用 printf ，scanf ，malloc 等函数需要实现`_read'`_lseek'`_isatty'`_fstat'`_write'`_sbrk' 函数。libnosys.a 实现了上述函数 ，可以添加 --specs=nosys.spece来解决这个问题
//printf ->_puts_r->__swbuf_r->__sflush_r->_write_r->_write
int _read (int file, char *ptr, int len)
{
     936:	b580      	push	{r7, lr}
     938:	b086      	sub	sp, #24
     93a:	af00      	add	r7, sp, #0
     93c:	60f8      	str	r0, [r7, #12]
     93e:	60b9      	str	r1, [r7, #8]
     940:	607a      	str	r2, [r7, #4]
	int DataIdx;
	printf("[%s]\n", __func__);
     942:	490d      	ldr	r1, [pc, #52]	; (978 <_read+0x42>)
     944:	480d      	ldr	r0, [pc, #52]	; (97c <_read+0x46>)
     946:	f002 f8ff 	bl	2b48 <printf>

	for (DataIdx = 0; DataIdx < len; DataIdx++)
     94a:	2300      	movs	r3, #0
     94c:	617b      	str	r3, [r7, #20]
     94e:	e00a      	b.n	966 <_read+0x30>
	{
		*ptr++ = __io_getchar();
     950:	f7ff fe94 	bl	67c <__io_getchar>
     954:	4601      	mov	r1, r0
     956:	68bb      	ldr	r3, [r7, #8]
     958:	1c5a      	adds	r2, r3, #1
     95a:	60ba      	str	r2, [r7, #8]
     95c:	b2ca      	uxtb	r2, r1
     95e:	701a      	strb	r2, [r3, #0]
	for (DataIdx = 0; DataIdx < len; DataIdx++)
     960:	697b      	ldr	r3, [r7, #20]
     962:	3301      	adds	r3, #1
     964:	617b      	str	r3, [r7, #20]
     966:	697a      	ldr	r2, [r7, #20]
     968:	687b      	ldr	r3, [r7, #4]
     96a:	429a      	cmp	r2, r3
     96c:	dbf0      	blt.n	950 <_read+0x1a>
	}

return len;
     96e:	687b      	ldr	r3, [r7, #4]
}
     970:	4618      	mov	r0, r3
     972:	3718      	adds	r7, #24
     974:	46bd      	mov	sp, r7
     976:	bd80      	pop	{r7, pc}
     978:	00008998 	.word	0x00008998
     97c:	00008990 	.word	0x00008990

00000980 <_write>:

int _write(int file, char *ptr, int len)
{
     980:	b580      	push	{r7, lr}
     982:	b086      	sub	sp, #24
     984:	af00      	add	r7, sp, #0
     986:	60f8      	str	r0, [r7, #12]
     988:	60b9      	str	r1, [r7, #8]
     98a:	607a      	str	r2, [r7, #4]
	int DataIdx;
	printf("[%s]\n", __func__);
     98c:	490c      	ldr	r1, [pc, #48]	; (9c0 <_write+0x40>)
     98e:	480d      	ldr	r0, [pc, #52]	; (9c4 <_write+0x44>)
     990:	f002 f8da 	bl	2b48 <printf>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
     994:	2300      	movs	r3, #0
     996:	617b      	str	r3, [r7, #20]
     998:	e009      	b.n	9ae <_write+0x2e>
	{
		__io_putchar(*ptr++);
     99a:	68bb      	ldr	r3, [r7, #8]
     99c:	1c5a      	adds	r2, r3, #1
     99e:	60ba      	str	r2, [r7, #8]
     9a0:	781b      	ldrb	r3, [r3, #0]
     9a2:	4618      	mov	r0, r3
     9a4:	f7ff fe5a 	bl	65c <__io_putchar>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
     9a8:	697b      	ldr	r3, [r7, #20]
     9aa:	3301      	adds	r3, #1
     9ac:	617b      	str	r3, [r7, #20]
     9ae:	697a      	ldr	r2, [r7, #20]
     9b0:	687b      	ldr	r3, [r7, #4]
     9b2:	429a      	cmp	r2, r3
     9b4:	dbf1      	blt.n	99a <_write+0x1a>
	}
	return len;
     9b6:	687b      	ldr	r3, [r7, #4]
}
     9b8:	4618      	mov	r0, r3
     9ba:	3718      	adds	r7, #24
     9bc:	46bd      	mov	sp, r7
     9be:	bd80      	pop	{r7, pc}
     9c0:	000089a0 	.word	0x000089a0
     9c4:	00008990 	.word	0x00008990

000009c8 <_sbrk>:

caddr_t _sbrk(int incr)
{
     9c8:	b580      	push	{r7, lr}
     9ca:	b084      	sub	sp, #16
     9cc:	af00      	add	r7, sp, #0
     9ce:	6078      	str	r0, [r7, #4]
	extern char _eheap asm("_eheap");
	static char *heap_end;
	char *prev_heap_end;
	printf("[%s]\n", __func__);
     9d0:	4913      	ldr	r1, [pc, #76]	; (a20 <_sbrk+0x58>)
     9d2:	4814      	ldr	r0, [pc, #80]	; (a24 <_sbrk+0x5c>)
     9d4:	f002 f8b8 	bl	2b48 <printf>

	if (heap_end == 0)
     9d8:	4b13      	ldr	r3, [pc, #76]	; (a28 <_sbrk+0x60>)
     9da:	681b      	ldr	r3, [r3, #0]
     9dc:	2b00      	cmp	r3, #0
     9de:	d102      	bne.n	9e6 <_sbrk+0x1e>
		heap_end = &_eheap;
     9e0:	4b11      	ldr	r3, [pc, #68]	; (a28 <_sbrk+0x60>)
     9e2:	4a12      	ldr	r2, [pc, #72]	; (a2c <_sbrk+0x64>)
     9e4:	601a      	str	r2, [r3, #0]

	prev_heap_end = heap_end;
     9e6:	4b10      	ldr	r3, [pc, #64]	; (a28 <_sbrk+0x60>)
     9e8:	681b      	ldr	r3, [r3, #0]
     9ea:	60fb      	str	r3, [r7, #12]
	if (heap_end + incr > stack_ptr)
     9ec:	4b0e      	ldr	r3, [pc, #56]	; (a28 <_sbrk+0x60>)
     9ee:	681a      	ldr	r2, [r3, #0]
     9f0:	687b      	ldr	r3, [r7, #4]
     9f2:	4413      	add	r3, r2
     9f4:	466a      	mov	r2, sp
     9f6:	4293      	cmp	r3, r2
     9f8:	d907      	bls.n	a0a <_sbrk+0x42>
	{
		// write(1, "Heap and stack collision\n", 25);
		// abort();
		errno = ENOMEM;
     9fa:	f002 f811 	bl	2a20 <__errno>
     9fe:	4602      	mov	r2, r0
     a00:	230c      	movs	r3, #12
     a02:	6013      	str	r3, [r2, #0]
		return (caddr_t) -1;
     a04:	f04f 33ff 	mov.w	r3, #4294967295
     a08:	e006      	b.n	a18 <_sbrk+0x50>
	}

	heap_end += incr;
     a0a:	4b07      	ldr	r3, [pc, #28]	; (a28 <_sbrk+0x60>)
     a0c:	681a      	ldr	r2, [r3, #0]
     a0e:	687b      	ldr	r3, [r7, #4]
     a10:	4413      	add	r3, r2
     a12:	4a05      	ldr	r2, [pc, #20]	; (a28 <_sbrk+0x60>)
     a14:	6013      	str	r3, [r2, #0]

	return (caddr_t) prev_heap_end;
     a16:	68fb      	ldr	r3, [r7, #12]
}
     a18:	4618      	mov	r0, r3
     a1a:	3710      	adds	r7, #16
     a1c:	46bd      	mov	sp, r7
     a1e:	bd80      	pop	{r7, pc}
     a20:	000089a8 	.word	0x000089a8
     a24:	00008990 	.word	0x00008990
     a28:	200009fc 	.word	0x200009fc
     a2c:	20005a30 	.word	0x20005a30

00000a30 <_close>:

int _close(int file)
{
     a30:	b480      	push	{r7}
     a32:	b083      	sub	sp, #12
     a34:	af00      	add	r7, sp, #0
     a36:	6078      	str	r0, [r7, #4]
	return -1;
     a38:	f04f 33ff 	mov.w	r3, #4294967295
}
     a3c:	4618      	mov	r0, r3
     a3e:	370c      	adds	r7, #12
     a40:	46bd      	mov	sp, r7
     a42:	bc80      	pop	{r7}
     a44:	4770      	bx	lr

00000a46 <_fstat>:


int _fstat(int file, struct stat *st)
{
     a46:	b480      	push	{r7}
     a48:	b083      	sub	sp, #12
     a4a:	af00      	add	r7, sp, #0
     a4c:	6078      	str	r0, [r7, #4]
     a4e:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
     a50:	683b      	ldr	r3, [r7, #0]
     a52:	f44f 5200 	mov.w	r2, #8192	; 0x2000
     a56:	605a      	str	r2, [r3, #4]
	return 0;
     a58:	2300      	movs	r3, #0
}
     a5a:	4618      	mov	r0, r3
     a5c:	370c      	adds	r7, #12
     a5e:	46bd      	mov	sp, r7
     a60:	bc80      	pop	{r7}
     a62:	4770      	bx	lr

00000a64 <_isatty>:

int _isatty(int file)
{
     a64:	b480      	push	{r7}
     a66:	b083      	sub	sp, #12
     a68:	af00      	add	r7, sp, #0
     a6a:	6078      	str	r0, [r7, #4]
	return 1;
     a6c:	2301      	movs	r3, #1
}
     a6e:	4618      	mov	r0, r3
     a70:	370c      	adds	r7, #12
     a72:	46bd      	mov	sp, r7
     a74:	bc80      	pop	{r7}
     a76:	4770      	bx	lr

00000a78 <_lseek>:

int _lseek(int file, int ptr, int dir)
{
     a78:	b480      	push	{r7}
     a7a:	b085      	sub	sp, #20
     a7c:	af00      	add	r7, sp, #0
     a7e:	60f8      	str	r0, [r7, #12]
     a80:	60b9      	str	r1, [r7, #8]
     a82:	607a      	str	r2, [r7, #4]
	return 0;
     a84:	2300      	movs	r3, #0
}
     a86:	4618      	mov	r0, r3
     a88:	3714      	adds	r7, #20
     a8a:	46bd      	mov	sp, r7
     a8c:	bc80      	pop	{r7}
     a8e:	4770      	bx	lr

00000a90 <_open>:

int _open(char *path, int flags, ...)
{
     a90:	b40e      	push	{r1, r2, r3}
     a92:	b480      	push	{r7}
     a94:	b082      	sub	sp, #8
     a96:	af00      	add	r7, sp, #0
     a98:	6078      	str	r0, [r7, #4]
	/* Pretend like we always fail */
	return -1;
     a9a:	f04f 33ff 	mov.w	r3, #4294967295
}
     a9e:	4618      	mov	r0, r3
     aa0:	3708      	adds	r7, #8
     aa2:	46bd      	mov	sp, r7
     aa4:	bc80      	pop	{r7}
     aa6:	b003      	add	sp, #12
     aa8:	4770      	bx	lr

00000aaa <_wait>:

int _wait(int *status)
{
     aaa:	b580      	push	{r7, lr}
     aac:	b082      	sub	sp, #8
     aae:	af00      	add	r7, sp, #0
     ab0:	6078      	str	r0, [r7, #4]
	errno = ECHILD;
     ab2:	f001 ffb5 	bl	2a20 <__errno>
     ab6:	4602      	mov	r2, r0
     ab8:	230a      	movs	r3, #10
     aba:	6013      	str	r3, [r2, #0]
	return -1;
     abc:	f04f 33ff 	mov.w	r3, #4294967295
}
     ac0:	4618      	mov	r0, r3
     ac2:	3708      	adds	r7, #8
     ac4:	46bd      	mov	sp, r7
     ac6:	bd80      	pop	{r7, pc}

00000ac8 <_unlink>:

int _unlink(char *name)
{
     ac8:	b580      	push	{r7, lr}
     aca:	b082      	sub	sp, #8
     acc:	af00      	add	r7, sp, #0
     ace:	6078      	str	r0, [r7, #4]
	errno = ENOENT;
     ad0:	f001 ffa6 	bl	2a20 <__errno>
     ad4:	4602      	mov	r2, r0
     ad6:	2302      	movs	r3, #2
     ad8:	6013      	str	r3, [r2, #0]
	return -1;
     ada:	f04f 33ff 	mov.w	r3, #4294967295
}
     ade:	4618      	mov	r0, r3
     ae0:	3708      	adds	r7, #8
     ae2:	46bd      	mov	sp, r7
     ae4:	bd80      	pop	{r7, pc}

00000ae6 <_times>:

int _times(struct tms *buf)
{
     ae6:	b480      	push	{r7}
     ae8:	b083      	sub	sp, #12
     aea:	af00      	add	r7, sp, #0
     aec:	6078      	str	r0, [r7, #4]
	return -1;
     aee:	f04f 33ff 	mov.w	r3, #4294967295
}
     af2:	4618      	mov	r0, r3
     af4:	370c      	adds	r7, #12
     af6:	46bd      	mov	sp, r7
     af8:	bc80      	pop	{r7}
     afa:	4770      	bx	lr

00000afc <_stat>:

int _stat(char *file, struct stat *st)
{
     afc:	b480      	push	{r7}
     afe:	b083      	sub	sp, #12
     b00:	af00      	add	r7, sp, #0
     b02:	6078      	str	r0, [r7, #4]
     b04:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
     b06:	683b      	ldr	r3, [r7, #0]
     b08:	f44f 5200 	mov.w	r2, #8192	; 0x2000
     b0c:	605a      	str	r2, [r3, #4]
	return 0;
     b0e:	2300      	movs	r3, #0
}
     b10:	4618      	mov	r0, r3
     b12:	370c      	adds	r7, #12
     b14:	46bd      	mov	sp, r7
     b16:	bc80      	pop	{r7}
     b18:	4770      	bx	lr

00000b1a <_link>:

int _link(char *old, char *new)
{
     b1a:	b580      	push	{r7, lr}
     b1c:	b082      	sub	sp, #8
     b1e:	af00      	add	r7, sp, #0
     b20:	6078      	str	r0, [r7, #4]
     b22:	6039      	str	r1, [r7, #0]
	errno = EMLINK;
     b24:	f001 ff7c 	bl	2a20 <__errno>
     b28:	4602      	mov	r2, r0
     b2a:	231f      	movs	r3, #31
     b2c:	6013      	str	r3, [r2, #0]
	return -1;
     b2e:	f04f 33ff 	mov.w	r3, #4294967295
}
     b32:	4618      	mov	r0, r3
     b34:	3708      	adds	r7, #8
     b36:	46bd      	mov	sp, r7
     b38:	bd80      	pop	{r7, pc}

00000b3a <_fork>:

int _fork(void)
{
     b3a:	b580      	push	{r7, lr}
     b3c:	af00      	add	r7, sp, #0
	errno = EAGAIN;
     b3e:	f001 ff6f 	bl	2a20 <__errno>
     b42:	4602      	mov	r2, r0
     b44:	230b      	movs	r3, #11
     b46:	6013      	str	r3, [r2, #0]
	return -1;
     b48:	f04f 33ff 	mov.w	r3, #4294967295
}
     b4c:	4618      	mov	r0, r3
     b4e:	bd80      	pop	{r7, pc}

00000b50 <_execve>:

int _execve(char *name, char **argv, char **env)
{
     b50:	b580      	push	{r7, lr}
     b52:	b084      	sub	sp, #16
     b54:	af00      	add	r7, sp, #0
     b56:	60f8      	str	r0, [r7, #12]
     b58:	60b9      	str	r1, [r7, #8]
     b5a:	607a      	str	r2, [r7, #4]
	errno = ENOMEM;
     b5c:	f001 ff60 	bl	2a20 <__errno>
     b60:	4602      	mov	r2, r0
     b62:	230c      	movs	r3, #12
     b64:	6013      	str	r3, [r2, #0]
	return -1;
     b66:	f04f 33ff 	mov.w	r3, #4294967295
}
     b6a:	4618      	mov	r0, r3
     b6c:	3710      	adds	r7, #16
     b6e:	46bd      	mov	sp, r7
     b70:	bd80      	pop	{r7, pc}
     b72:	bf00      	nop

00000b74 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     b74:	b480      	push	{r7}
     b76:	b085      	sub	sp, #20
     b78:	af00      	add	r7, sp, #0
     b7a:	60b9      	str	r1, [r7, #8]
     b7c:	607a      	str	r2, [r7, #4]
     b7e:	603b      	str	r3, [r7, #0]
     b80:	4603      	mov	r3, r0
     b82:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     b84:	687a      	ldr	r2, [r7, #4]
     b86:	683b      	ldr	r3, [r7, #0]
     b88:	429a      	cmp	r2, r3
     b8a:	d204      	bcs.n	b96 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     b8c:	68ba      	ldr	r2, [r7, #8]
     b8e:	687b      	ldr	r3, [r7, #4]
     b90:	4413      	add	r3, r2
     b92:	7bfa      	ldrb	r2, [r7, #15]
     b94:	701a      	strb	r2, [r3, #0]
  }
}
     b96:	bf00      	nop
     b98:	3714      	adds	r7, #20
     b9a:	46bd      	mov	sp, r7
     b9c:	bc80      	pop	{r7}
     b9e:	4770      	bx	lr

00000ba0 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     ba0:	b480      	push	{r7}
     ba2:	b085      	sub	sp, #20
     ba4:	af00      	add	r7, sp, #0
     ba6:	60b9      	str	r1, [r7, #8]
     ba8:	607a      	str	r2, [r7, #4]
     baa:	603b      	str	r3, [r7, #0]
     bac:	4603      	mov	r3, r0
     bae:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     bb0:	bf00      	nop
     bb2:	3714      	adds	r7, #20
     bb4:	46bd      	mov	sp, r7
     bb6:	bc80      	pop	{r7}
     bb8:	4770      	bx	lr

00000bba <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     bba:	b580      	push	{r7, lr}
     bbc:	b084      	sub	sp, #16
     bbe:	af00      	add	r7, sp, #0
     bc0:	60b9      	str	r1, [r7, #8]
     bc2:	607a      	str	r2, [r7, #4]
     bc4:	603b      	str	r3, [r7, #0]
     bc6:	4603      	mov	r3, r0
     bc8:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     bca:	7bfb      	ldrb	r3, [r7, #15]
     bcc:	2b00      	cmp	r3, #0
     bce:	d003      	beq.n	bd8 <_out_char+0x1e>
    _putchar(character);
     bd0:	7bfb      	ldrb	r3, [r7, #15]
     bd2:	4618      	mov	r0, r3
     bd4:	f7ff fbe0 	bl	398 <_putchar>
  }
}
     bd8:	bf00      	nop
     bda:	3710      	adds	r7, #16
     bdc:	46bd      	mov	sp, r7
     bde:	bd80      	pop	{r7, pc}

00000be0 <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     be0:	b580      	push	{r7, lr}
     be2:	b084      	sub	sp, #16
     be4:	af00      	add	r7, sp, #0
     be6:	60b9      	str	r1, [r7, #8]
     be8:	607a      	str	r2, [r7, #4]
     bea:	603b      	str	r3, [r7, #0]
     bec:	4603      	mov	r3, r0
     bee:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     bf0:	7bfb      	ldrb	r3, [r7, #15]
     bf2:	2b00      	cmp	r3, #0
     bf4:	d006      	beq.n	c04 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     bf6:	68bb      	ldr	r3, [r7, #8]
     bf8:	681b      	ldr	r3, [r3, #0]
     bfa:	68ba      	ldr	r2, [r7, #8]
     bfc:	6851      	ldr	r1, [r2, #4]
     bfe:	7bfa      	ldrb	r2, [r7, #15]
     c00:	4610      	mov	r0, r2
     c02:	4798      	blx	r3
  }
}
     c04:	bf00      	nop
     c06:	3710      	adds	r7, #16
     c08:	46bd      	mov	sp, r7
     c0a:	bd80      	pop	{r7, pc}

00000c0c <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     c0c:	b480      	push	{r7}
     c0e:	b085      	sub	sp, #20
     c10:	af00      	add	r7, sp, #0
     c12:	6078      	str	r0, [r7, #4]
     c14:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     c16:	687b      	ldr	r3, [r7, #4]
     c18:	60fb      	str	r3, [r7, #12]
     c1a:	e002      	b.n	c22 <_strnlen_s+0x16>
     c1c:	68fb      	ldr	r3, [r7, #12]
     c1e:	3301      	adds	r3, #1
     c20:	60fb      	str	r3, [r7, #12]
     c22:	68fb      	ldr	r3, [r7, #12]
     c24:	781b      	ldrb	r3, [r3, #0]
     c26:	2b00      	cmp	r3, #0
     c28:	d004      	beq.n	c34 <_strnlen_s+0x28>
     c2a:	683b      	ldr	r3, [r7, #0]
     c2c:	1e5a      	subs	r2, r3, #1
     c2e:	603a      	str	r2, [r7, #0]
     c30:	2b00      	cmp	r3, #0
     c32:	d1f3      	bne.n	c1c <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     c34:	68fa      	ldr	r2, [r7, #12]
     c36:	687b      	ldr	r3, [r7, #4]
     c38:	1ad3      	subs	r3, r2, r3
}
     c3a:	4618      	mov	r0, r3
     c3c:	3714      	adds	r7, #20
     c3e:	46bd      	mov	sp, r7
     c40:	bc80      	pop	{r7}
     c42:	4770      	bx	lr

00000c44 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     c44:	b480      	push	{r7}
     c46:	b083      	sub	sp, #12
     c48:	af00      	add	r7, sp, #0
     c4a:	4603      	mov	r3, r0
     c4c:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     c4e:	79fb      	ldrb	r3, [r7, #7]
     c50:	2b2f      	cmp	r3, #47	; 0x2f
     c52:	d904      	bls.n	c5e <_is_digit+0x1a>
     c54:	79fb      	ldrb	r3, [r7, #7]
     c56:	2b39      	cmp	r3, #57	; 0x39
     c58:	d801      	bhi.n	c5e <_is_digit+0x1a>
     c5a:	2301      	movs	r3, #1
     c5c:	e000      	b.n	c60 <_is_digit+0x1c>
     c5e:	2300      	movs	r3, #0
     c60:	f003 0301 	and.w	r3, r3, #1
     c64:	b2db      	uxtb	r3, r3
}
     c66:	4618      	mov	r0, r3
     c68:	370c      	adds	r7, #12
     c6a:	46bd      	mov	sp, r7
     c6c:	bc80      	pop	{r7}
     c6e:	4770      	bx	lr

00000c70 <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     c70:	b580      	push	{r7, lr}
     c72:	b084      	sub	sp, #16
     c74:	af00      	add	r7, sp, #0
     c76:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     c78:	2300      	movs	r3, #0
     c7a:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     c7c:	e00e      	b.n	c9c <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     c7e:	68fa      	ldr	r2, [r7, #12]
     c80:	4613      	mov	r3, r2
     c82:	009b      	lsls	r3, r3, #2
     c84:	4413      	add	r3, r2
     c86:	005b      	lsls	r3, r3, #1
     c88:	4618      	mov	r0, r3
     c8a:	687b      	ldr	r3, [r7, #4]
     c8c:	681b      	ldr	r3, [r3, #0]
     c8e:	1c59      	adds	r1, r3, #1
     c90:	687a      	ldr	r2, [r7, #4]
     c92:	6011      	str	r1, [r2, #0]
     c94:	781b      	ldrb	r3, [r3, #0]
     c96:	4403      	add	r3, r0
     c98:	3b30      	subs	r3, #48	; 0x30
     c9a:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     c9c:	687b      	ldr	r3, [r7, #4]
     c9e:	681b      	ldr	r3, [r3, #0]
     ca0:	781b      	ldrb	r3, [r3, #0]
     ca2:	4618      	mov	r0, r3
     ca4:	f7ff ffce 	bl	c44 <_is_digit>
     ca8:	4603      	mov	r3, r0
     caa:	2b00      	cmp	r3, #0
     cac:	d1e7      	bne.n	c7e <_atoi+0xe>
  }
  return i;
     cae:	68fb      	ldr	r3, [r7, #12]
}
     cb0:	4618      	mov	r0, r3
     cb2:	3710      	adds	r7, #16
     cb4:	46bd      	mov	sp, r7
     cb6:	bd80      	pop	{r7, pc}

00000cb8 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     cb8:	b590      	push	{r4, r7, lr}
     cba:	b087      	sub	sp, #28
     cbc:	af00      	add	r7, sp, #0
     cbe:	60f8      	str	r0, [r7, #12]
     cc0:	60b9      	str	r1, [r7, #8]
     cc2:	607a      	str	r2, [r7, #4]
     cc4:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     cc6:	687b      	ldr	r3, [r7, #4]
     cc8:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     cca:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     ccc:	f003 0302 	and.w	r3, r3, #2
     cd0:	2b00      	cmp	r3, #0
     cd2:	d125      	bne.n	d20 <_out_rev+0x68>
     cd4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     cd6:	f003 0301 	and.w	r3, r3, #1
     cda:	2b00      	cmp	r3, #0
     cdc:	d120      	bne.n	d20 <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     cde:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     ce0:	617b      	str	r3, [r7, #20]
     ce2:	e00a      	b.n	cfa <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     ce4:	687a      	ldr	r2, [r7, #4]
     ce6:	1c53      	adds	r3, r2, #1
     ce8:	607b      	str	r3, [r7, #4]
     cea:	68fc      	ldr	r4, [r7, #12]
     cec:	683b      	ldr	r3, [r7, #0]
     cee:	68b9      	ldr	r1, [r7, #8]
     cf0:	2020      	movs	r0, #32
     cf2:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     cf4:	697b      	ldr	r3, [r7, #20]
     cf6:	3301      	adds	r3, #1
     cf8:	617b      	str	r3, [r7, #20]
     cfa:	697a      	ldr	r2, [r7, #20]
     cfc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     cfe:	429a      	cmp	r2, r3
     d00:	d3f0      	bcc.n	ce4 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     d02:	e00d      	b.n	d20 <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     d04:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     d06:	3b01      	subs	r3, #1
     d08:	62fb      	str	r3, [r7, #44]	; 0x2c
     d0a:	6aba      	ldr	r2, [r7, #40]	; 0x28
     d0c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     d0e:	4413      	add	r3, r2
     d10:	7818      	ldrb	r0, [r3, #0]
     d12:	687a      	ldr	r2, [r7, #4]
     d14:	1c53      	adds	r3, r2, #1
     d16:	607b      	str	r3, [r7, #4]
     d18:	68fc      	ldr	r4, [r7, #12]
     d1a:	683b      	ldr	r3, [r7, #0]
     d1c:	68b9      	ldr	r1, [r7, #8]
     d1e:	47a0      	blx	r4
  while (len) {
     d20:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     d22:	2b00      	cmp	r3, #0
     d24:	d1ee      	bne.n	d04 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     d26:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     d28:	f003 0302 	and.w	r3, r3, #2
     d2c:	2b00      	cmp	r3, #0
     d2e:	d00e      	beq.n	d4e <_out_rev+0x96>
    while (idx - start_idx < width) {
     d30:	e007      	b.n	d42 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     d32:	687a      	ldr	r2, [r7, #4]
     d34:	1c53      	adds	r3, r2, #1
     d36:	607b      	str	r3, [r7, #4]
     d38:	68fc      	ldr	r4, [r7, #12]
     d3a:	683b      	ldr	r3, [r7, #0]
     d3c:	68b9      	ldr	r1, [r7, #8]
     d3e:	2020      	movs	r0, #32
     d40:	47a0      	blx	r4
    while (idx - start_idx < width) {
     d42:	687a      	ldr	r2, [r7, #4]
     d44:	693b      	ldr	r3, [r7, #16]
     d46:	1ad3      	subs	r3, r2, r3
     d48:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     d4a:	429a      	cmp	r2, r3
     d4c:	d8f1      	bhi.n	d32 <_out_rev+0x7a>
    }
  }

  return idx;
     d4e:	687b      	ldr	r3, [r7, #4]
}
     d50:	4618      	mov	r0, r3
     d52:	371c      	adds	r7, #28
     d54:	46bd      	mov	sp, r7
     d56:	bd90      	pop	{r4, r7, pc}

00000d58 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     d58:	b580      	push	{r7, lr}
     d5a:	b088      	sub	sp, #32
     d5c:	af04      	add	r7, sp, #16
     d5e:	60f8      	str	r0, [r7, #12]
     d60:	60b9      	str	r1, [r7, #8]
     d62:	607a      	str	r2, [r7, #4]
     d64:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     d66:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     d68:	f003 0302 	and.w	r3, r3, #2
     d6c:	2b00      	cmp	r3, #0
     d6e:	d136      	bne.n	dde <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     d70:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     d72:	2b00      	cmp	r3, #0
     d74:	d018      	beq.n	da8 <_ntoa_format+0x50>
     d76:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     d78:	f003 0301 	and.w	r3, r3, #1
     d7c:	2b00      	cmp	r3, #0
     d7e:	d013      	beq.n	da8 <_ntoa_format+0x50>
     d80:	f897 3020 	ldrb.w	r3, [r7, #32]
     d84:	2b00      	cmp	r3, #0
     d86:	d104      	bne.n	d92 <_ntoa_format+0x3a>
     d88:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     d8a:	f003 030c 	and.w	r3, r3, #12
     d8e:	2b00      	cmp	r3, #0
     d90:	d00a      	beq.n	da8 <_ntoa_format+0x50>
      width--;
     d92:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     d94:	3b01      	subs	r3, #1
     d96:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     d98:	e006      	b.n	da8 <_ntoa_format+0x50>
      buf[len++] = '0';
     d9a:	69fb      	ldr	r3, [r7, #28]
     d9c:	1c5a      	adds	r2, r3, #1
     d9e:	61fa      	str	r2, [r7, #28]
     da0:	69ba      	ldr	r2, [r7, #24]
     da2:	4413      	add	r3, r2
     da4:	2230      	movs	r2, #48	; 0x30
     da6:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     da8:	69fa      	ldr	r2, [r7, #28]
     daa:	6abb      	ldr	r3, [r7, #40]	; 0x28
     dac:	429a      	cmp	r2, r3
     dae:	d20a      	bcs.n	dc6 <_ntoa_format+0x6e>
     db0:	69fb      	ldr	r3, [r7, #28]
     db2:	2b1f      	cmp	r3, #31
     db4:	d9f1      	bls.n	d9a <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     db6:	e006      	b.n	dc6 <_ntoa_format+0x6e>
      buf[len++] = '0';
     db8:	69fb      	ldr	r3, [r7, #28]
     dba:	1c5a      	adds	r2, r3, #1
     dbc:	61fa      	str	r2, [r7, #28]
     dbe:	69ba      	ldr	r2, [r7, #24]
     dc0:	4413      	add	r3, r2
     dc2:	2230      	movs	r2, #48	; 0x30
     dc4:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     dc6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     dc8:	f003 0301 	and.w	r3, r3, #1
     dcc:	2b00      	cmp	r3, #0
     dce:	d006      	beq.n	dde <_ntoa_format+0x86>
     dd0:	69fa      	ldr	r2, [r7, #28]
     dd2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     dd4:	429a      	cmp	r2, r3
     dd6:	d202      	bcs.n	dde <_ntoa_format+0x86>
     dd8:	69fb      	ldr	r3, [r7, #28]
     dda:	2b1f      	cmp	r3, #31
     ddc:	d9ec      	bls.n	db8 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     dde:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     de0:	f003 0310 	and.w	r3, r3, #16
     de4:	2b00      	cmp	r3, #0
     de6:	d058      	beq.n	e9a <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     de8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     dea:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     dee:	2b00      	cmp	r3, #0
     df0:	d116      	bne.n	e20 <_ntoa_format+0xc8>
     df2:	69fb      	ldr	r3, [r7, #28]
     df4:	2b00      	cmp	r3, #0
     df6:	d013      	beq.n	e20 <_ntoa_format+0xc8>
     df8:	69fa      	ldr	r2, [r7, #28]
     dfa:	6abb      	ldr	r3, [r7, #40]	; 0x28
     dfc:	429a      	cmp	r2, r3
     dfe:	d003      	beq.n	e08 <_ntoa_format+0xb0>
     e00:	69fa      	ldr	r2, [r7, #28]
     e02:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e04:	429a      	cmp	r2, r3
     e06:	d10b      	bne.n	e20 <_ntoa_format+0xc8>
      len--;
     e08:	69fb      	ldr	r3, [r7, #28]
     e0a:	3b01      	subs	r3, #1
     e0c:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     e0e:	69fb      	ldr	r3, [r7, #28]
     e10:	2b00      	cmp	r3, #0
     e12:	d005      	beq.n	e20 <_ntoa_format+0xc8>
     e14:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e16:	2b10      	cmp	r3, #16
     e18:	d102      	bne.n	e20 <_ntoa_format+0xc8>
        len--;
     e1a:	69fb      	ldr	r3, [r7, #28]
     e1c:	3b01      	subs	r3, #1
     e1e:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     e20:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e22:	2b10      	cmp	r3, #16
     e24:	d10f      	bne.n	e46 <_ntoa_format+0xee>
     e26:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e28:	f003 0320 	and.w	r3, r3, #32
     e2c:	2b00      	cmp	r3, #0
     e2e:	d10a      	bne.n	e46 <_ntoa_format+0xee>
     e30:	69fb      	ldr	r3, [r7, #28]
     e32:	2b1f      	cmp	r3, #31
     e34:	d807      	bhi.n	e46 <_ntoa_format+0xee>
      buf[len++] = 'x';
     e36:	69fb      	ldr	r3, [r7, #28]
     e38:	1c5a      	adds	r2, r3, #1
     e3a:	61fa      	str	r2, [r7, #28]
     e3c:	69ba      	ldr	r2, [r7, #24]
     e3e:	4413      	add	r3, r2
     e40:	2278      	movs	r2, #120	; 0x78
     e42:	701a      	strb	r2, [r3, #0]
     e44:	e01f      	b.n	e86 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     e46:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e48:	2b10      	cmp	r3, #16
     e4a:	d10f      	bne.n	e6c <_ntoa_format+0x114>
     e4c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e4e:	f003 0320 	and.w	r3, r3, #32
     e52:	2b00      	cmp	r3, #0
     e54:	d00a      	beq.n	e6c <_ntoa_format+0x114>
     e56:	69fb      	ldr	r3, [r7, #28]
     e58:	2b1f      	cmp	r3, #31
     e5a:	d807      	bhi.n	e6c <_ntoa_format+0x114>
      buf[len++] = 'X';
     e5c:	69fb      	ldr	r3, [r7, #28]
     e5e:	1c5a      	adds	r2, r3, #1
     e60:	61fa      	str	r2, [r7, #28]
     e62:	69ba      	ldr	r2, [r7, #24]
     e64:	4413      	add	r3, r2
     e66:	2258      	movs	r2, #88	; 0x58
     e68:	701a      	strb	r2, [r3, #0]
     e6a:	e00c      	b.n	e86 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     e6c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e6e:	2b02      	cmp	r3, #2
     e70:	d109      	bne.n	e86 <_ntoa_format+0x12e>
     e72:	69fb      	ldr	r3, [r7, #28]
     e74:	2b1f      	cmp	r3, #31
     e76:	d806      	bhi.n	e86 <_ntoa_format+0x12e>
      buf[len++] = 'b';
     e78:	69fb      	ldr	r3, [r7, #28]
     e7a:	1c5a      	adds	r2, r3, #1
     e7c:	61fa      	str	r2, [r7, #28]
     e7e:	69ba      	ldr	r2, [r7, #24]
     e80:	4413      	add	r3, r2
     e82:	2262      	movs	r2, #98	; 0x62
     e84:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     e86:	69fb      	ldr	r3, [r7, #28]
     e88:	2b1f      	cmp	r3, #31
     e8a:	d806      	bhi.n	e9a <_ntoa_format+0x142>
      buf[len++] = '0';
     e8c:	69fb      	ldr	r3, [r7, #28]
     e8e:	1c5a      	adds	r2, r3, #1
     e90:	61fa      	str	r2, [r7, #28]
     e92:	69ba      	ldr	r2, [r7, #24]
     e94:	4413      	add	r3, r2
     e96:	2230      	movs	r2, #48	; 0x30
     e98:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     e9a:	69fb      	ldr	r3, [r7, #28]
     e9c:	2b1f      	cmp	r3, #31
     e9e:	d824      	bhi.n	eea <_ntoa_format+0x192>
    if (negative) {
     ea0:	f897 3020 	ldrb.w	r3, [r7, #32]
     ea4:	2b00      	cmp	r3, #0
     ea6:	d007      	beq.n	eb8 <_ntoa_format+0x160>
      buf[len++] = '-';
     ea8:	69fb      	ldr	r3, [r7, #28]
     eaa:	1c5a      	adds	r2, r3, #1
     eac:	61fa      	str	r2, [r7, #28]
     eae:	69ba      	ldr	r2, [r7, #24]
     eb0:	4413      	add	r3, r2
     eb2:	222d      	movs	r2, #45	; 0x2d
     eb4:	701a      	strb	r2, [r3, #0]
     eb6:	e018      	b.n	eea <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     eb8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     eba:	f003 0304 	and.w	r3, r3, #4
     ebe:	2b00      	cmp	r3, #0
     ec0:	d007      	beq.n	ed2 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     ec2:	69fb      	ldr	r3, [r7, #28]
     ec4:	1c5a      	adds	r2, r3, #1
     ec6:	61fa      	str	r2, [r7, #28]
     ec8:	69ba      	ldr	r2, [r7, #24]
     eca:	4413      	add	r3, r2
     ecc:	222b      	movs	r2, #43	; 0x2b
     ece:	701a      	strb	r2, [r3, #0]
     ed0:	e00b      	b.n	eea <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     ed2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ed4:	f003 0308 	and.w	r3, r3, #8
     ed8:	2b00      	cmp	r3, #0
     eda:	d006      	beq.n	eea <_ntoa_format+0x192>
      buf[len++] = ' ';
     edc:	69fb      	ldr	r3, [r7, #28]
     ede:	1c5a      	adds	r2, r3, #1
     ee0:	61fa      	str	r2, [r7, #28]
     ee2:	69ba      	ldr	r2, [r7, #24]
     ee4:	4413      	add	r3, r2
     ee6:	2220      	movs	r2, #32
     ee8:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     eea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     eec:	9303      	str	r3, [sp, #12]
     eee:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     ef0:	9302      	str	r3, [sp, #8]
     ef2:	69fb      	ldr	r3, [r7, #28]
     ef4:	9301      	str	r3, [sp, #4]
     ef6:	69bb      	ldr	r3, [r7, #24]
     ef8:	9300      	str	r3, [sp, #0]
     efa:	683b      	ldr	r3, [r7, #0]
     efc:	687a      	ldr	r2, [r7, #4]
     efe:	68b9      	ldr	r1, [r7, #8]
     f00:	68f8      	ldr	r0, [r7, #12]
     f02:	f7ff fed9 	bl	cb8 <_out_rev>
     f06:	4603      	mov	r3, r0
}
     f08:	4618      	mov	r0, r3
     f0a:	3710      	adds	r7, #16
     f0c:	46bd      	mov	sp, r7
     f0e:	bd80      	pop	{r7, pc}

00000f10 <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     f10:	b580      	push	{r7, lr}
     f12:	b096      	sub	sp, #88	; 0x58
     f14:	af08      	add	r7, sp, #32
     f16:	60f8      	str	r0, [r7, #12]
     f18:	60b9      	str	r1, [r7, #8]
     f1a:	607a      	str	r2, [r7, #4]
     f1c:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     f1e:	2300      	movs	r3, #0
     f20:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     f22:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     f24:	2b00      	cmp	r3, #0
     f26:	d103      	bne.n	f30 <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     f28:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     f2a:	f023 0310 	bic.w	r3, r3, #16
     f2e:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     f30:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     f32:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     f36:	2b00      	cmp	r3, #0
     f38:	d002      	beq.n	f40 <_ntoa_long+0x30>
     f3a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     f3c:	2b00      	cmp	r3, #0
     f3e:	d033      	beq.n	fa8 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     f40:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     f42:	6cba      	ldr	r2, [r7, #72]	; 0x48
     f44:	fbb3 f2f2 	udiv	r2, r3, r2
     f48:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     f4a:	fb01 f202 	mul.w	r2, r1, r2
     f4e:	1a9b      	subs	r3, r3, r2
     f50:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     f54:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     f58:	2b09      	cmp	r3, #9
     f5a:	d804      	bhi.n	f66 <_ntoa_long+0x56>
     f5c:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     f60:	3330      	adds	r3, #48	; 0x30
     f62:	b2da      	uxtb	r2, r3
     f64:	e00d      	b.n	f82 <_ntoa_long+0x72>
     f66:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     f68:	f003 0320 	and.w	r3, r3, #32
     f6c:	2b00      	cmp	r3, #0
     f6e:	d001      	beq.n	f74 <_ntoa_long+0x64>
     f70:	2241      	movs	r2, #65	; 0x41
     f72:	e000      	b.n	f76 <_ntoa_long+0x66>
     f74:	2261      	movs	r2, #97	; 0x61
     f76:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     f7a:	4413      	add	r3, r2
     f7c:	b2db      	uxtb	r3, r3
     f7e:	3b0a      	subs	r3, #10
     f80:	b2da      	uxtb	r2, r3
     f82:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     f84:	1c59      	adds	r1, r3, #1
     f86:	6379      	str	r1, [r7, #52]	; 0x34
     f88:	f107 0138 	add.w	r1, r7, #56	; 0x38
     f8c:	440b      	add	r3, r1
     f8e:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     f92:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f94:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     f96:	fbb2 f3f3 	udiv	r3, r2, r3
     f9a:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     f9c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     f9e:	2b00      	cmp	r3, #0
     fa0:	d002      	beq.n	fa8 <_ntoa_long+0x98>
     fa2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     fa4:	2b1f      	cmp	r3, #31
     fa6:	d9cb      	bls.n	f40 <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     fa8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     faa:	9306      	str	r3, [sp, #24]
     fac:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     fae:	9305      	str	r3, [sp, #20]
     fb0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     fb2:	9304      	str	r3, [sp, #16]
     fb4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     fb6:	9303      	str	r3, [sp, #12]
     fb8:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     fbc:	9302      	str	r3, [sp, #8]
     fbe:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     fc0:	9301      	str	r3, [sp, #4]
     fc2:	f107 0310 	add.w	r3, r7, #16
     fc6:	9300      	str	r3, [sp, #0]
     fc8:	683b      	ldr	r3, [r7, #0]
     fca:	687a      	ldr	r2, [r7, #4]
     fcc:	68b9      	ldr	r1, [r7, #8]
     fce:	68f8      	ldr	r0, [r7, #12]
     fd0:	f7ff fec2 	bl	d58 <_ntoa_format>
     fd4:	4603      	mov	r3, r0
}
     fd6:	4618      	mov	r0, r3
     fd8:	3738      	adds	r7, #56	; 0x38
     fda:	46bd      	mov	sp, r7
     fdc:	bd80      	pop	{r7, pc}

00000fde <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     fde:	b590      	push	{r4, r7, lr}
     fe0:	b099      	sub	sp, #100	; 0x64
     fe2:	af06      	add	r7, sp, #24
     fe4:	60f8      	str	r0, [r7, #12]
     fe6:	60b9      	str	r1, [r7, #8]
     fe8:	607a      	str	r2, [r7, #4]
     fea:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     fec:	2300      	movs	r3, #0
     fee:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     ff0:	68bb      	ldr	r3, [r7, #8]
     ff2:	2b00      	cmp	r3, #0
     ff4:	f040 83c0 	bne.w	1778 <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     ff8:	4b9f      	ldr	r3, [pc, #636]	; (1278 <_vsnprintf+0x29a>)
     ffa:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     ffc:	e3bc      	b.n	1778 <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     ffe:	683b      	ldr	r3, [r7, #0]
    1000:	781b      	ldrb	r3, [r3, #0]
    1002:	2b25      	cmp	r3, #37	; 0x25
    1004:	d00c      	beq.n	1020 <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
    1006:	683b      	ldr	r3, [r7, #0]
    1008:	7818      	ldrb	r0, [r3, #0]
    100a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    100c:	1c53      	adds	r3, r2, #1
    100e:	637b      	str	r3, [r7, #52]	; 0x34
    1010:	68fc      	ldr	r4, [r7, #12]
    1012:	687b      	ldr	r3, [r7, #4]
    1014:	68b9      	ldr	r1, [r7, #8]
    1016:	47a0      	blx	r4
      format++;
    1018:	683b      	ldr	r3, [r7, #0]
    101a:	3301      	adds	r3, #1
    101c:	603b      	str	r3, [r7, #0]
      continue;
    101e:	e3ab      	b.n	1778 <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
    1020:	683b      	ldr	r3, [r7, #0]
    1022:	3301      	adds	r3, #1
    1024:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
    1026:	2300      	movs	r3, #0
    1028:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
    102a:	683b      	ldr	r3, [r7, #0]
    102c:	781b      	ldrb	r3, [r3, #0]
    102e:	3b20      	subs	r3, #32
    1030:	2b10      	cmp	r3, #16
    1032:	d857      	bhi.n	10e4 <_vsnprintf+0x106>
    1034:	a201      	add	r2, pc, #4	; (adr r2, 103c <_vsnprintf+0x5e>)
    1036:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    103a:	bf00      	nop
    103c:	000010bd 	.word	0x000010bd
    1040:	000010e5 	.word	0x000010e5
    1044:	000010e5 	.word	0x000010e5
    1048:	000010d1 	.word	0x000010d1
    104c:	000010e5 	.word	0x000010e5
    1050:	000010e5 	.word	0x000010e5
    1054:	000010e5 	.word	0x000010e5
    1058:	000010e5 	.word	0x000010e5
    105c:	000010e5 	.word	0x000010e5
    1060:	000010e5 	.word	0x000010e5
    1064:	000010e5 	.word	0x000010e5
    1068:	000010a9 	.word	0x000010a9
    106c:	000010e5 	.word	0x000010e5
    1070:	00001095 	.word	0x00001095
    1074:	000010e5 	.word	0x000010e5
    1078:	000010e5 	.word	0x000010e5
    107c:	00001081 	.word	0x00001081
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
    1080:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1082:	f043 0301 	orr.w	r3, r3, #1
    1086:	647b      	str	r3, [r7, #68]	; 0x44
    1088:	683b      	ldr	r3, [r7, #0]
    108a:	3301      	adds	r3, #1
    108c:	603b      	str	r3, [r7, #0]
    108e:	2301      	movs	r3, #1
    1090:	63bb      	str	r3, [r7, #56]	; 0x38
    1092:	e02a      	b.n	10ea <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
    1094:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1096:	f043 0302 	orr.w	r3, r3, #2
    109a:	647b      	str	r3, [r7, #68]	; 0x44
    109c:	683b      	ldr	r3, [r7, #0]
    109e:	3301      	adds	r3, #1
    10a0:	603b      	str	r3, [r7, #0]
    10a2:	2301      	movs	r3, #1
    10a4:	63bb      	str	r3, [r7, #56]	; 0x38
    10a6:	e020      	b.n	10ea <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
    10a8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10aa:	f043 0304 	orr.w	r3, r3, #4
    10ae:	647b      	str	r3, [r7, #68]	; 0x44
    10b0:	683b      	ldr	r3, [r7, #0]
    10b2:	3301      	adds	r3, #1
    10b4:	603b      	str	r3, [r7, #0]
    10b6:	2301      	movs	r3, #1
    10b8:	63bb      	str	r3, [r7, #56]	; 0x38
    10ba:	e016      	b.n	10ea <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
    10bc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10be:	f043 0308 	orr.w	r3, r3, #8
    10c2:	647b      	str	r3, [r7, #68]	; 0x44
    10c4:	683b      	ldr	r3, [r7, #0]
    10c6:	3301      	adds	r3, #1
    10c8:	603b      	str	r3, [r7, #0]
    10ca:	2301      	movs	r3, #1
    10cc:	63bb      	str	r3, [r7, #56]	; 0x38
    10ce:	e00c      	b.n	10ea <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
    10d0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    10d2:	f043 0310 	orr.w	r3, r3, #16
    10d6:	647b      	str	r3, [r7, #68]	; 0x44
    10d8:	683b      	ldr	r3, [r7, #0]
    10da:	3301      	adds	r3, #1
    10dc:	603b      	str	r3, [r7, #0]
    10de:	2301      	movs	r3, #1
    10e0:	63bb      	str	r3, [r7, #56]	; 0x38
    10e2:	e002      	b.n	10ea <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
    10e4:	2300      	movs	r3, #0
    10e6:	63bb      	str	r3, [r7, #56]	; 0x38
    10e8:	bf00      	nop
      }
    } while (n);
    10ea:	6bbb      	ldr	r3, [r7, #56]	; 0x38
    10ec:	2b00      	cmp	r3, #0
    10ee:	d19c      	bne.n	102a <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
    10f0:	2300      	movs	r3, #0
    10f2:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
    10f4:	683b      	ldr	r3, [r7, #0]
    10f6:	781b      	ldrb	r3, [r3, #0]
    10f8:	4618      	mov	r0, r3
    10fa:	f7ff fda3 	bl	c44 <_is_digit>
    10fe:	4603      	mov	r3, r0
    1100:	2b00      	cmp	r3, #0
    1102:	d005      	beq.n	1110 <_vsnprintf+0x132>
      width = _atoi(&format);
    1104:	463b      	mov	r3, r7
    1106:	4618      	mov	r0, r3
    1108:	f7ff fdb2 	bl	c70 <_atoi>
    110c:	6438      	str	r0, [r7, #64]	; 0x40
    110e:	e018      	b.n	1142 <_vsnprintf+0x164>
    }
    else if (*format == '*') {
    1110:	683b      	ldr	r3, [r7, #0]
    1112:	781b      	ldrb	r3, [r3, #0]
    1114:	2b2a      	cmp	r3, #42	; 0x2a
    1116:	d114      	bne.n	1142 <_vsnprintf+0x164>
      const int w = va_arg(va, int);
    1118:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    111a:	1d1a      	adds	r2, r3, #4
    111c:	65ba      	str	r2, [r7, #88]	; 0x58
    111e:	681b      	ldr	r3, [r3, #0]
    1120:	623b      	str	r3, [r7, #32]
      if (w < 0) {
    1122:	6a3b      	ldr	r3, [r7, #32]
    1124:	2b00      	cmp	r3, #0
    1126:	da07      	bge.n	1138 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
    1128:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    112a:	f043 0302 	orr.w	r3, r3, #2
    112e:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
    1130:	6a3b      	ldr	r3, [r7, #32]
    1132:	425b      	negs	r3, r3
    1134:	643b      	str	r3, [r7, #64]	; 0x40
    1136:	e001      	b.n	113c <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
    1138:	6a3b      	ldr	r3, [r7, #32]
    113a:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
    113c:	683b      	ldr	r3, [r7, #0]
    113e:	3301      	adds	r3, #1
    1140:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
    1142:	2300      	movs	r3, #0
    1144:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
    1146:	683b      	ldr	r3, [r7, #0]
    1148:	781b      	ldrb	r3, [r3, #0]
    114a:	2b2e      	cmp	r3, #46	; 0x2e
    114c:	d124      	bne.n	1198 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
    114e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1150:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
    1154:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
    1156:	683b      	ldr	r3, [r7, #0]
    1158:	3301      	adds	r3, #1
    115a:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
    115c:	683b      	ldr	r3, [r7, #0]
    115e:	781b      	ldrb	r3, [r3, #0]
    1160:	4618      	mov	r0, r3
    1162:	f7ff fd6f 	bl	c44 <_is_digit>
    1166:	4603      	mov	r3, r0
    1168:	2b00      	cmp	r3, #0
    116a:	d005      	beq.n	1178 <_vsnprintf+0x19a>
        precision = _atoi(&format);
    116c:	463b      	mov	r3, r7
    116e:	4618      	mov	r0, r3
    1170:	f7ff fd7e 	bl	c70 <_atoi>
    1174:	63f8      	str	r0, [r7, #60]	; 0x3c
    1176:	e00f      	b.n	1198 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
    1178:	683b      	ldr	r3, [r7, #0]
    117a:	781b      	ldrb	r3, [r3, #0]
    117c:	2b2a      	cmp	r3, #42	; 0x2a
    117e:	d10b      	bne.n	1198 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
    1180:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1182:	1d1a      	adds	r2, r3, #4
    1184:	65ba      	str	r2, [r7, #88]	; 0x58
    1186:	681b      	ldr	r3, [r3, #0]
    1188:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
    118a:	69fb      	ldr	r3, [r7, #28]
    118c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    1190:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
    1192:	683b      	ldr	r3, [r7, #0]
    1194:	3301      	adds	r3, #1
    1196:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
    1198:	683b      	ldr	r3, [r7, #0]
    119a:	781b      	ldrb	r3, [r3, #0]
    119c:	3b68      	subs	r3, #104	; 0x68
    119e:	2b12      	cmp	r3, #18
    11a0:	d866      	bhi.n	1270 <_vsnprintf+0x292>
    11a2:	a201      	add	r2, pc, #4	; (adr r2, 11a8 <_vsnprintf+0x1ca>)
    11a4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    11a8:	0000121b 	.word	0x0000121b
    11ac:	00001271 	.word	0x00001271
    11b0:	00001251 	.word	0x00001251
    11b4:	00001271 	.word	0x00001271
    11b8:	000011f5 	.word	0x000011f5
    11bc:	00001271 	.word	0x00001271
    11c0:	00001271 	.word	0x00001271
    11c4:	00001271 	.word	0x00001271
    11c8:	00001271 	.word	0x00001271
    11cc:	00001271 	.word	0x00001271
    11d0:	00001271 	.word	0x00001271
    11d4:	00001271 	.word	0x00001271
    11d8:	00001241 	.word	0x00001241
    11dc:	00001271 	.word	0x00001271
    11e0:	00001271 	.word	0x00001271
    11e4:	00001271 	.word	0x00001271
    11e8:	00001271 	.word	0x00001271
    11ec:	00001271 	.word	0x00001271
    11f0:	00001261 	.word	0x00001261
      case 'l' :
        flags |= FLAGS_LONG;
    11f4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    11f6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    11fa:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
    11fc:	683b      	ldr	r3, [r7, #0]
    11fe:	3301      	adds	r3, #1
    1200:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
    1202:	683b      	ldr	r3, [r7, #0]
    1204:	781b      	ldrb	r3, [r3, #0]
    1206:	2b6c      	cmp	r3, #108	; 0x6c
    1208:	d134      	bne.n	1274 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
    120a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    120c:	f443 7300 	orr.w	r3, r3, #512	; 0x200
    1210:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
    1212:	683b      	ldr	r3, [r7, #0]
    1214:	3301      	adds	r3, #1
    1216:	603b      	str	r3, [r7, #0]
        }
        break;
    1218:	e02c      	b.n	1274 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
    121a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    121c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    1220:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
    1222:	683b      	ldr	r3, [r7, #0]
    1224:	3301      	adds	r3, #1
    1226:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
    1228:	683b      	ldr	r3, [r7, #0]
    122a:	781b      	ldrb	r3, [r3, #0]
    122c:	2b68      	cmp	r3, #104	; 0x68
    122e:	d125      	bne.n	127c <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
    1230:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1232:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    1236:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
    1238:	683b      	ldr	r3, [r7, #0]
    123a:	3301      	adds	r3, #1
    123c:	603b      	str	r3, [r7, #0]
        }
        break;
    123e:	e01d      	b.n	127c <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    1240:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1242:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1246:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
    1248:	683b      	ldr	r3, [r7, #0]
    124a:	3301      	adds	r3, #1
    124c:	603b      	str	r3, [r7, #0]
        break;
    124e:	e016      	b.n	127e <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    1250:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1252:	f443 7300 	orr.w	r3, r3, #512	; 0x200
    1256:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
    1258:	683b      	ldr	r3, [r7, #0]
    125a:	3301      	adds	r3, #1
    125c:	603b      	str	r3, [r7, #0]
        break;
    125e:	e00e      	b.n	127e <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    1260:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1262:	f443 7380 	orr.w	r3, r3, #256	; 0x100
    1266:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
    1268:	683b      	ldr	r3, [r7, #0]
    126a:	3301      	adds	r3, #1
    126c:	603b      	str	r3, [r7, #0]
        break;
    126e:	e006      	b.n	127e <_vsnprintf+0x2a0>
      default :
        break;
    1270:	bf00      	nop
    1272:	e004      	b.n	127e <_vsnprintf+0x2a0>
        break;
    1274:	bf00      	nop
    1276:	e002      	b.n	127e <_vsnprintf+0x2a0>
    1278:	00000ba1 	.word	0x00000ba1
        break;
    127c:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
    127e:	683b      	ldr	r3, [r7, #0]
    1280:	781b      	ldrb	r3, [r3, #0]
    1282:	3b25      	subs	r3, #37	; 0x25
    1284:	2b53      	cmp	r3, #83	; 0x53
    1286:	f200 826a 	bhi.w	175e <_vsnprintf+0x780>
    128a:	a201      	add	r2, pc, #4	; (adr r2, 1290 <_vsnprintf+0x2b2>)
    128c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    1290:	00001747 	.word	0x00001747
    1294:	0000175f 	.word	0x0000175f
    1298:	0000175f 	.word	0x0000175f
    129c:	0000175f 	.word	0x0000175f
    12a0:	0000175f 	.word	0x0000175f
    12a4:	0000175f 	.word	0x0000175f
    12a8:	0000175f 	.word	0x0000175f
    12ac:	0000175f 	.word	0x0000175f
    12b0:	0000175f 	.word	0x0000175f
    12b4:	0000175f 	.word	0x0000175f
    12b8:	0000175f 	.word	0x0000175f
    12bc:	0000175f 	.word	0x0000175f
    12c0:	0000175f 	.word	0x0000175f
    12c4:	0000175f 	.word	0x0000175f
    12c8:	0000175f 	.word	0x0000175f
    12cc:	0000175f 	.word	0x0000175f
    12d0:	0000175f 	.word	0x0000175f
    12d4:	0000175f 	.word	0x0000175f
    12d8:	0000175f 	.word	0x0000175f
    12dc:	0000175f 	.word	0x0000175f
    12e0:	0000175f 	.word	0x0000175f
    12e4:	0000175f 	.word	0x0000175f
    12e8:	0000175f 	.word	0x0000175f
    12ec:	0000175f 	.word	0x0000175f
    12f0:	0000175f 	.word	0x0000175f
    12f4:	0000175f 	.word	0x0000175f
    12f8:	0000175f 	.word	0x0000175f
    12fc:	0000175f 	.word	0x0000175f
    1300:	0000175f 	.word	0x0000175f
    1304:	0000175f 	.word	0x0000175f
    1308:	0000175f 	.word	0x0000175f
    130c:	0000175f 	.word	0x0000175f
    1310:	0000175f 	.word	0x0000175f
    1314:	0000175f 	.word	0x0000175f
    1318:	0000175f 	.word	0x0000175f
    131c:	0000175f 	.word	0x0000175f
    1320:	0000175f 	.word	0x0000175f
    1324:	0000175f 	.word	0x0000175f
    1328:	0000175f 	.word	0x0000175f
    132c:	0000175f 	.word	0x0000175f
    1330:	0000175f 	.word	0x0000175f
    1334:	0000175f 	.word	0x0000175f
    1338:	0000175f 	.word	0x0000175f
    133c:	0000175f 	.word	0x0000175f
    1340:	0000175f 	.word	0x0000175f
    1344:	0000175f 	.word	0x0000175f
    1348:	0000175f 	.word	0x0000175f
    134c:	0000175f 	.word	0x0000175f
    1350:	0000175f 	.word	0x0000175f
    1354:	0000175f 	.word	0x0000175f
    1358:	0000175f 	.word	0x0000175f
    135c:	000013e1 	.word	0x000013e1
    1360:	0000175f 	.word	0x0000175f
    1364:	0000175f 	.word	0x0000175f
    1368:	0000175f 	.word	0x0000175f
    136c:	0000175f 	.word	0x0000175f
    1370:	0000175f 	.word	0x0000175f
    1374:	0000175f 	.word	0x0000175f
    1378:	0000175f 	.word	0x0000175f
    137c:	0000175f 	.word	0x0000175f
    1380:	0000175f 	.word	0x0000175f
    1384:	000013e1 	.word	0x000013e1
    1388:	000015cd 	.word	0x000015cd
    138c:	000013e1 	.word	0x000013e1
    1390:	0000175f 	.word	0x0000175f
    1394:	0000175f 	.word	0x0000175f
    1398:	0000175f 	.word	0x0000175f
    139c:	0000175f 	.word	0x0000175f
    13a0:	000013e1 	.word	0x000013e1
    13a4:	0000175f 	.word	0x0000175f
    13a8:	0000175f 	.word	0x0000175f
    13ac:	0000175f 	.word	0x0000175f
    13b0:	0000175f 	.word	0x0000175f
    13b4:	0000175f 	.word	0x0000175f
    13b8:	000013e1 	.word	0x000013e1
    13bc:	00001705 	.word	0x00001705
    13c0:	0000175f 	.word	0x0000175f
    13c4:	0000175f 	.word	0x0000175f
    13c8:	00001641 	.word	0x00001641
    13cc:	0000175f 	.word	0x0000175f
    13d0:	000013e1 	.word	0x000013e1
    13d4:	0000175f 	.word	0x0000175f
    13d8:	0000175f 	.word	0x0000175f
    13dc:	000013e1 	.word	0x000013e1
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
    13e0:	683b      	ldr	r3, [r7, #0]
    13e2:	781b      	ldrb	r3, [r3, #0]
    13e4:	2b78      	cmp	r3, #120	; 0x78
    13e6:	d003      	beq.n	13f0 <_vsnprintf+0x412>
    13e8:	683b      	ldr	r3, [r7, #0]
    13ea:	781b      	ldrb	r3, [r3, #0]
    13ec:	2b58      	cmp	r3, #88	; 0x58
    13ee:	d102      	bne.n	13f6 <_vsnprintf+0x418>
          base = 16U;
    13f0:	2310      	movs	r3, #16
    13f2:	633b      	str	r3, [r7, #48]	; 0x30
    13f4:	e013      	b.n	141e <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
    13f6:	683b      	ldr	r3, [r7, #0]
    13f8:	781b      	ldrb	r3, [r3, #0]
    13fa:	2b6f      	cmp	r3, #111	; 0x6f
    13fc:	d102      	bne.n	1404 <_vsnprintf+0x426>
          base =  8U;
    13fe:	2308      	movs	r3, #8
    1400:	633b      	str	r3, [r7, #48]	; 0x30
    1402:	e00c      	b.n	141e <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
    1404:	683b      	ldr	r3, [r7, #0]
    1406:	781b      	ldrb	r3, [r3, #0]
    1408:	2b62      	cmp	r3, #98	; 0x62
    140a:	d102      	bne.n	1412 <_vsnprintf+0x434>
          base =  2U;
    140c:	2302      	movs	r3, #2
    140e:	633b      	str	r3, [r7, #48]	; 0x30
    1410:	e005      	b.n	141e <_vsnprintf+0x440>
        }
        else {
          base = 10U;
    1412:	230a      	movs	r3, #10
    1414:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
    1416:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1418:	f023 0310 	bic.w	r3, r3, #16
    141c:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
    141e:	683b      	ldr	r3, [r7, #0]
    1420:	781b      	ldrb	r3, [r3, #0]
    1422:	2b58      	cmp	r3, #88	; 0x58
    1424:	d103      	bne.n	142e <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
    1426:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1428:	f043 0320 	orr.w	r3, r3, #32
    142c:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
    142e:	683b      	ldr	r3, [r7, #0]
    1430:	781b      	ldrb	r3, [r3, #0]
    1432:	2b69      	cmp	r3, #105	; 0x69
    1434:	d007      	beq.n	1446 <_vsnprintf+0x468>
    1436:	683b      	ldr	r3, [r7, #0]
    1438:	781b      	ldrb	r3, [r3, #0]
    143a:	2b64      	cmp	r3, #100	; 0x64
    143c:	d003      	beq.n	1446 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
    143e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1440:	f023 030c 	bic.w	r3, r3, #12
    1444:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
    1446:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1448:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    144c:	2b00      	cmp	r3, #0
    144e:	d003      	beq.n	1458 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
    1450:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1452:	f023 0301 	bic.w	r3, r3, #1
    1456:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
    1458:	683b      	ldr	r3, [r7, #0]
    145a:	781b      	ldrb	r3, [r3, #0]
    145c:	2b69      	cmp	r3, #105	; 0x69
    145e:	d003      	beq.n	1468 <_vsnprintf+0x48a>
    1460:	683b      	ldr	r3, [r7, #0]
    1462:	781b      	ldrb	r3, [r3, #0]
    1464:	2b64      	cmp	r3, #100	; 0x64
    1466:	d15e      	bne.n	1526 <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
    1468:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    146a:	f403 7300 	and.w	r3, r3, #512	; 0x200
    146e:	2b00      	cmp	r3, #0
    1470:	f040 80a8 	bne.w	15c4 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
    1474:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1476:	f403 7380 	and.w	r3, r3, #256	; 0x100
    147a:	2b00      	cmp	r3, #0
    147c:	d01e      	beq.n	14bc <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
    147e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1480:	1d1a      	adds	r2, r3, #4
    1482:	65ba      	str	r2, [r7, #88]	; 0x58
    1484:	681b      	ldr	r3, [r3, #0]
    1486:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    1488:	693b      	ldr	r3, [r7, #16]
    148a:	2b00      	cmp	r3, #0
    148c:	bfb8      	it	lt
    148e:	425b      	neglt	r3, r3
    1490:	4619      	mov	r1, r3
    1492:	693b      	ldr	r3, [r7, #16]
    1494:	0fdb      	lsrs	r3, r3, #31
    1496:	b2db      	uxtb	r3, r3
    1498:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    149a:	9205      	str	r2, [sp, #20]
    149c:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    149e:	9204      	str	r2, [sp, #16]
    14a0:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    14a2:	9203      	str	r2, [sp, #12]
    14a4:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    14a6:	9202      	str	r2, [sp, #8]
    14a8:	9301      	str	r3, [sp, #4]
    14aa:	9100      	str	r1, [sp, #0]
    14ac:	687b      	ldr	r3, [r7, #4]
    14ae:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    14b0:	68b9      	ldr	r1, [r7, #8]
    14b2:	68f8      	ldr	r0, [r7, #12]
    14b4:	f7ff fd2c 	bl	f10 <_ntoa_long>
    14b8:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
    14ba:	e083      	b.n	15c4 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
    14bc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    14be:	f003 0340 	and.w	r3, r3, #64	; 0x40
    14c2:	2b00      	cmp	r3, #0
    14c4:	d005      	beq.n	14d2 <_vsnprintf+0x4f4>
    14c6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    14c8:	1d1a      	adds	r2, r3, #4
    14ca:	65ba      	str	r2, [r7, #88]	; 0x58
    14cc:	681b      	ldr	r3, [r3, #0]
    14ce:	b2db      	uxtb	r3, r3
    14d0:	e00e      	b.n	14f0 <_vsnprintf+0x512>
    14d2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    14d4:	f003 0380 	and.w	r3, r3, #128	; 0x80
    14d8:	2b00      	cmp	r3, #0
    14da:	d005      	beq.n	14e8 <_vsnprintf+0x50a>
    14dc:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    14de:	1d1a      	adds	r2, r3, #4
    14e0:	65ba      	str	r2, [r7, #88]	; 0x58
    14e2:	681b      	ldr	r3, [r3, #0]
    14e4:	b21b      	sxth	r3, r3
    14e6:	e003      	b.n	14f0 <_vsnprintf+0x512>
    14e8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    14ea:	1d1a      	adds	r2, r3, #4
    14ec:	65ba      	str	r2, [r7, #88]	; 0x58
    14ee:	681b      	ldr	r3, [r3, #0]
    14f0:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
    14f2:	697b      	ldr	r3, [r7, #20]
    14f4:	2b00      	cmp	r3, #0
    14f6:	bfb8      	it	lt
    14f8:	425b      	neglt	r3, r3
    14fa:	4619      	mov	r1, r3
    14fc:	697b      	ldr	r3, [r7, #20]
    14fe:	0fdb      	lsrs	r3, r3, #31
    1500:	b2db      	uxtb	r3, r3
    1502:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    1504:	9205      	str	r2, [sp, #20]
    1506:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1508:	9204      	str	r2, [sp, #16]
    150a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    150c:	9203      	str	r2, [sp, #12]
    150e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    1510:	9202      	str	r2, [sp, #8]
    1512:	9301      	str	r3, [sp, #4]
    1514:	9100      	str	r1, [sp, #0]
    1516:	687b      	ldr	r3, [r7, #4]
    1518:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    151a:	68b9      	ldr	r1, [r7, #8]
    151c:	68f8      	ldr	r0, [r7, #12]
    151e:	f7ff fcf7 	bl	f10 <_ntoa_long>
    1522:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
    1524:	e04e      	b.n	15c4 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
    1526:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1528:	f403 7300 	and.w	r3, r3, #512	; 0x200
    152c:	2b00      	cmp	r3, #0
    152e:	d149      	bne.n	15c4 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
    1530:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1532:	f403 7380 	and.w	r3, r3, #256	; 0x100
    1536:	2b00      	cmp	r3, #0
    1538:	d016      	beq.n	1568 <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    153a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    153c:	1d1a      	adds	r2, r3, #4
    153e:	65ba      	str	r2, [r7, #88]	; 0x58
    1540:	681b      	ldr	r3, [r3, #0]
    1542:	6c7a      	ldr	r2, [r7, #68]	; 0x44
    1544:	9205      	str	r2, [sp, #20]
    1546:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1548:	9204      	str	r2, [sp, #16]
    154a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
    154c:	9203      	str	r2, [sp, #12]
    154e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
    1550:	9202      	str	r2, [sp, #8]
    1552:	2200      	movs	r2, #0
    1554:	9201      	str	r2, [sp, #4]
    1556:	9300      	str	r3, [sp, #0]
    1558:	687b      	ldr	r3, [r7, #4]
    155a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    155c:	68b9      	ldr	r1, [r7, #8]
    155e:	68f8      	ldr	r0, [r7, #12]
    1560:	f7ff fcd6 	bl	f10 <_ntoa_long>
    1564:	6378      	str	r0, [r7, #52]	; 0x34
    1566:	e02d      	b.n	15c4 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
    1568:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    156a:	f003 0340 	and.w	r3, r3, #64	; 0x40
    156e:	2b00      	cmp	r3, #0
    1570:	d005      	beq.n	157e <_vsnprintf+0x5a0>
    1572:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1574:	1d1a      	adds	r2, r3, #4
    1576:	65ba      	str	r2, [r7, #88]	; 0x58
    1578:	681b      	ldr	r3, [r3, #0]
    157a:	b2db      	uxtb	r3, r3
    157c:	e00e      	b.n	159c <_vsnprintf+0x5be>
    157e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1580:	f003 0380 	and.w	r3, r3, #128	; 0x80
    1584:	2b00      	cmp	r3, #0
    1586:	d005      	beq.n	1594 <_vsnprintf+0x5b6>
    1588:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    158a:	1d1a      	adds	r2, r3, #4
    158c:	65ba      	str	r2, [r7, #88]	; 0x58
    158e:	681b      	ldr	r3, [r3, #0]
    1590:	b29b      	uxth	r3, r3
    1592:	e003      	b.n	159c <_vsnprintf+0x5be>
    1594:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1596:	1d1a      	adds	r2, r3, #4
    1598:	65ba      	str	r2, [r7, #88]	; 0x58
    159a:	681b      	ldr	r3, [r3, #0]
    159c:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    159e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    15a0:	9305      	str	r3, [sp, #20]
    15a2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    15a4:	9304      	str	r3, [sp, #16]
    15a6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    15a8:	9303      	str	r3, [sp, #12]
    15aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15ac:	9302      	str	r3, [sp, #8]
    15ae:	2300      	movs	r3, #0
    15b0:	9301      	str	r3, [sp, #4]
    15b2:	69bb      	ldr	r3, [r7, #24]
    15b4:	9300      	str	r3, [sp, #0]
    15b6:	687b      	ldr	r3, [r7, #4]
    15b8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    15ba:	68b9      	ldr	r1, [r7, #8]
    15bc:	68f8      	ldr	r0, [r7, #12]
    15be:	f7ff fca7 	bl	f10 <_ntoa_long>
    15c2:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
    15c4:	683b      	ldr	r3, [r7, #0]
    15c6:	3301      	adds	r3, #1
    15c8:	603b      	str	r3, [r7, #0]
        break;
    15ca:	e0d5      	b.n	1778 <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
    15cc:	2301      	movs	r3, #1
    15ce:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
    15d0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    15d2:	f003 0302 	and.w	r3, r3, #2
    15d6:	2b00      	cmp	r3, #0
    15d8:	d10e      	bne.n	15f8 <_vsnprintf+0x61a>
          while (l++ < width) {
    15da:	e007      	b.n	15ec <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
    15dc:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    15de:	1c53      	adds	r3, r2, #1
    15e0:	637b      	str	r3, [r7, #52]	; 0x34
    15e2:	68fc      	ldr	r4, [r7, #12]
    15e4:	687b      	ldr	r3, [r7, #4]
    15e6:	68b9      	ldr	r1, [r7, #8]
    15e8:	2020      	movs	r0, #32
    15ea:	47a0      	blx	r4
          while (l++ < width) {
    15ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    15ee:	1c5a      	adds	r2, r3, #1
    15f0:	62fa      	str	r2, [r7, #44]	; 0x2c
    15f2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    15f4:	429a      	cmp	r2, r3
    15f6:	d8f1      	bhi.n	15dc <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
    15f8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    15fa:	1d1a      	adds	r2, r3, #4
    15fc:	65ba      	str	r2, [r7, #88]	; 0x58
    15fe:	681b      	ldr	r3, [r3, #0]
    1600:	b2d8      	uxtb	r0, r3
    1602:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1604:	1c53      	adds	r3, r2, #1
    1606:	637b      	str	r3, [r7, #52]	; 0x34
    1608:	68fc      	ldr	r4, [r7, #12]
    160a:	687b      	ldr	r3, [r7, #4]
    160c:	68b9      	ldr	r1, [r7, #8]
    160e:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
    1610:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1612:	f003 0302 	and.w	r3, r3, #2
    1616:	2b00      	cmp	r3, #0
    1618:	d00e      	beq.n	1638 <_vsnprintf+0x65a>
          while (l++ < width) {
    161a:	e007      	b.n	162c <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
    161c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    161e:	1c53      	adds	r3, r2, #1
    1620:	637b      	str	r3, [r7, #52]	; 0x34
    1622:	68fc      	ldr	r4, [r7, #12]
    1624:	687b      	ldr	r3, [r7, #4]
    1626:	68b9      	ldr	r1, [r7, #8]
    1628:	2020      	movs	r0, #32
    162a:	47a0      	blx	r4
          while (l++ < width) {
    162c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    162e:	1c5a      	adds	r2, r3, #1
    1630:	62fa      	str	r2, [r7, #44]	; 0x2c
    1632:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1634:	429a      	cmp	r2, r3
    1636:	d8f1      	bhi.n	161c <_vsnprintf+0x63e>
          }
        }
        format++;
    1638:	683b      	ldr	r3, [r7, #0]
    163a:	3301      	adds	r3, #1
    163c:	603b      	str	r3, [r7, #0]
        break;
    163e:	e09b      	b.n	1778 <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
    1640:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1642:	1d1a      	adds	r2, r3, #4
    1644:	65ba      	str	r2, [r7, #88]	; 0x58
    1646:	681b      	ldr	r3, [r3, #0]
    1648:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    164a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    164c:	2b00      	cmp	r3, #0
    164e:	d001      	beq.n	1654 <_vsnprintf+0x676>
    1650:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1652:	e001      	b.n	1658 <_vsnprintf+0x67a>
    1654:	f04f 33ff 	mov.w	r3, #4294967295
    1658:	4619      	mov	r1, r3
    165a:	6ab8      	ldr	r0, [r7, #40]	; 0x28
    165c:	f7ff fad6 	bl	c0c <_strnlen_s>
    1660:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
    1662:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1664:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1668:	2b00      	cmp	r3, #0
    166a:	d005      	beq.n	1678 <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
    166c:	6a7a      	ldr	r2, [r7, #36]	; 0x24
    166e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1670:	4293      	cmp	r3, r2
    1672:	bf28      	it	cs
    1674:	4613      	movcs	r3, r2
    1676:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
    1678:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    167a:	f003 0302 	and.w	r3, r3, #2
    167e:	2b00      	cmp	r3, #0
    1680:	d11a      	bne.n	16b8 <_vsnprintf+0x6da>
          while (l++ < width) {
    1682:	e007      	b.n	1694 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
    1684:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1686:	1c53      	adds	r3, r2, #1
    1688:	637b      	str	r3, [r7, #52]	; 0x34
    168a:	68fc      	ldr	r4, [r7, #12]
    168c:	687b      	ldr	r3, [r7, #4]
    168e:	68b9      	ldr	r1, [r7, #8]
    1690:	2020      	movs	r0, #32
    1692:	47a0      	blx	r4
          while (l++ < width) {
    1694:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1696:	1c5a      	adds	r2, r3, #1
    1698:	627a      	str	r2, [r7, #36]	; 0x24
    169a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    169c:	429a      	cmp	r2, r3
    169e:	d8f1      	bhi.n	1684 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    16a0:	e00a      	b.n	16b8 <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
    16a2:	6abb      	ldr	r3, [r7, #40]	; 0x28
    16a4:	1c5a      	adds	r2, r3, #1
    16a6:	62ba      	str	r2, [r7, #40]	; 0x28
    16a8:	7818      	ldrb	r0, [r3, #0]
    16aa:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    16ac:	1c53      	adds	r3, r2, #1
    16ae:	637b      	str	r3, [r7, #52]	; 0x34
    16b0:	68fc      	ldr	r4, [r7, #12]
    16b2:	687b      	ldr	r3, [r7, #4]
    16b4:	68b9      	ldr	r1, [r7, #8]
    16b6:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    16b8:	6abb      	ldr	r3, [r7, #40]	; 0x28
    16ba:	781b      	ldrb	r3, [r3, #0]
    16bc:	2b00      	cmp	r3, #0
    16be:	d009      	beq.n	16d4 <_vsnprintf+0x6f6>
    16c0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    16c2:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    16c6:	2b00      	cmp	r3, #0
    16c8:	d0eb      	beq.n	16a2 <_vsnprintf+0x6c4>
    16ca:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    16cc:	1e5a      	subs	r2, r3, #1
    16ce:	63fa      	str	r2, [r7, #60]	; 0x3c
    16d0:	2b00      	cmp	r3, #0
    16d2:	d1e6      	bne.n	16a2 <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    16d4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    16d6:	f003 0302 	and.w	r3, r3, #2
    16da:	2b00      	cmp	r3, #0
    16dc:	d00e      	beq.n	16fc <_vsnprintf+0x71e>
          while (l++ < width) {
    16de:	e007      	b.n	16f0 <_vsnprintf+0x712>
            out(' ', buffer, idx++, maxlen);
    16e0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    16e2:	1c53      	adds	r3, r2, #1
    16e4:	637b      	str	r3, [r7, #52]	; 0x34
    16e6:	68fc      	ldr	r4, [r7, #12]
    16e8:	687b      	ldr	r3, [r7, #4]
    16ea:	68b9      	ldr	r1, [r7, #8]
    16ec:	2020      	movs	r0, #32
    16ee:	47a0      	blx	r4
          while (l++ < width) {
    16f0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16f2:	1c5a      	adds	r2, r3, #1
    16f4:	627a      	str	r2, [r7, #36]	; 0x24
    16f6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    16f8:	429a      	cmp	r2, r3
    16fa:	d8f1      	bhi.n	16e0 <_vsnprintf+0x702>
          }
        }
        format++;
    16fc:	683b      	ldr	r3, [r7, #0]
    16fe:	3301      	adds	r3, #1
    1700:	603b      	str	r3, [r7, #0]
        break;
    1702:	e039      	b.n	1778 <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    1704:	2308      	movs	r3, #8
    1706:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    1708:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    170a:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    170e:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    1710:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    1712:	1d1a      	adds	r2, r3, #4
    1714:	65ba      	str	r2, [r7, #88]	; 0x58
    1716:	681b      	ldr	r3, [r3, #0]
    1718:	461a      	mov	r2, r3
    171a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    171c:	9305      	str	r3, [sp, #20]
    171e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    1720:	9304      	str	r3, [sp, #16]
    1722:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1724:	9303      	str	r3, [sp, #12]
    1726:	2310      	movs	r3, #16
    1728:	9302      	str	r3, [sp, #8]
    172a:	2300      	movs	r3, #0
    172c:	9301      	str	r3, [sp, #4]
    172e:	9200      	str	r2, [sp, #0]
    1730:	687b      	ldr	r3, [r7, #4]
    1732:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1734:	68b9      	ldr	r1, [r7, #8]
    1736:	68f8      	ldr	r0, [r7, #12]
    1738:	f7ff fbea 	bl	f10 <_ntoa_long>
    173c:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    173e:	683b      	ldr	r3, [r7, #0]
    1740:	3301      	adds	r3, #1
    1742:	603b      	str	r3, [r7, #0]
        break;
    1744:	e018      	b.n	1778 <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    1746:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1748:	1c53      	adds	r3, r2, #1
    174a:	637b      	str	r3, [r7, #52]	; 0x34
    174c:	68fc      	ldr	r4, [r7, #12]
    174e:	687b      	ldr	r3, [r7, #4]
    1750:	68b9      	ldr	r1, [r7, #8]
    1752:	2025      	movs	r0, #37	; 0x25
    1754:	47a0      	blx	r4
        format++;
    1756:	683b      	ldr	r3, [r7, #0]
    1758:	3301      	adds	r3, #1
    175a:	603b      	str	r3, [r7, #0]
        break;
    175c:	e00c      	b.n	1778 <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    175e:	683b      	ldr	r3, [r7, #0]
    1760:	7818      	ldrb	r0, [r3, #0]
    1762:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1764:	1c53      	adds	r3, r2, #1
    1766:	637b      	str	r3, [r7, #52]	; 0x34
    1768:	68fc      	ldr	r4, [r7, #12]
    176a:	687b      	ldr	r3, [r7, #4]
    176c:	68b9      	ldr	r1, [r7, #8]
    176e:	47a0      	blx	r4
        format++;
    1770:	683b      	ldr	r3, [r7, #0]
    1772:	3301      	adds	r3, #1
    1774:	603b      	str	r3, [r7, #0]
        break;
    1776:	bf00      	nop
  while (*format)
    1778:	683b      	ldr	r3, [r7, #0]
    177a:	781b      	ldrb	r3, [r3, #0]
    177c:	2b00      	cmp	r3, #0
    177e:	f47f ac3e 	bne.w	ffe <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    1782:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1784:	687b      	ldr	r3, [r7, #4]
    1786:	429a      	cmp	r2, r3
    1788:	d302      	bcc.n	1790 <_vsnprintf+0x7b2>
    178a:	687b      	ldr	r3, [r7, #4]
    178c:	1e5a      	subs	r2, r3, #1
    178e:	e000      	b.n	1792 <_vsnprintf+0x7b4>
    1790:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1792:	68fc      	ldr	r4, [r7, #12]
    1794:	687b      	ldr	r3, [r7, #4]
    1796:	68b9      	ldr	r1, [r7, #8]
    1798:	2000      	movs	r0, #0
    179a:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    179c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    179e:	4618      	mov	r0, r3
    17a0:	374c      	adds	r7, #76	; 0x4c
    17a2:	46bd      	mov	sp, r7
    17a4:	bd90      	pop	{r4, r7, pc}

000017a6 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    17a6:	b40f      	push	{r0, r1, r2, r3}
    17a8:	b580      	push	{r7, lr}
    17aa:	b086      	sub	sp, #24
    17ac:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    17ae:	f107 031c 	add.w	r3, r7, #28
    17b2:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    17b4:	1d39      	adds	r1, r7, #4
    17b6:	68bb      	ldr	r3, [r7, #8]
    17b8:	9300      	str	r3, [sp, #0]
    17ba:	69bb      	ldr	r3, [r7, #24]
    17bc:	f04f 32ff 	mov.w	r2, #4294967295
    17c0:	4805      	ldr	r0, [pc, #20]	; (17d8 <printf_+0x32>)
    17c2:	f7ff fc0c 	bl	fde <_vsnprintf>
    17c6:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    17c8:	68fb      	ldr	r3, [r7, #12]
}
    17ca:	4618      	mov	r0, r3
    17cc:	3710      	adds	r7, #16
    17ce:	46bd      	mov	sp, r7
    17d0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    17d4:	b004      	add	sp, #16
    17d6:	4770      	bx	lr
    17d8:	00000bbb 	.word	0x00000bbb

000017dc <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    17dc:	b40e      	push	{r1, r2, r3}
    17de:	b580      	push	{r7, lr}
    17e0:	b087      	sub	sp, #28
    17e2:	af02      	add	r7, sp, #8
    17e4:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    17e6:	f107 0320 	add.w	r3, r7, #32
    17ea:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    17ec:	68bb      	ldr	r3, [r7, #8]
    17ee:	9300      	str	r3, [sp, #0]
    17f0:	69fb      	ldr	r3, [r7, #28]
    17f2:	f04f 32ff 	mov.w	r2, #4294967295
    17f6:	6879      	ldr	r1, [r7, #4]
    17f8:	4805      	ldr	r0, [pc, #20]	; (1810 <sprintf_+0x34>)
    17fa:	f7ff fbf0 	bl	fde <_vsnprintf>
    17fe:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1800:	68fb      	ldr	r3, [r7, #12]
}
    1802:	4618      	mov	r0, r3
    1804:	3714      	adds	r7, #20
    1806:	46bd      	mov	sp, r7
    1808:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    180c:	b003      	add	sp, #12
    180e:	4770      	bx	lr
    1810:	00000b75 	.word	0x00000b75

00001814 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1814:	b40c      	push	{r2, r3}
    1816:	b580      	push	{r7, lr}
    1818:	b086      	sub	sp, #24
    181a:	af02      	add	r7, sp, #8
    181c:	6078      	str	r0, [r7, #4]
    181e:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    1820:	f107 031c 	add.w	r3, r7, #28
    1824:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    1826:	68bb      	ldr	r3, [r7, #8]
    1828:	9300      	str	r3, [sp, #0]
    182a:	69bb      	ldr	r3, [r7, #24]
    182c:	683a      	ldr	r2, [r7, #0]
    182e:	6879      	ldr	r1, [r7, #4]
    1830:	4805      	ldr	r0, [pc, #20]	; (1848 <snprintf_+0x34>)
    1832:	f7ff fbd4 	bl	fde <_vsnprintf>
    1836:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1838:	68fb      	ldr	r3, [r7, #12]
}
    183a:	4618      	mov	r0, r3
    183c:	3710      	adds	r7, #16
    183e:	46bd      	mov	sp, r7
    1840:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1844:	b002      	add	sp, #8
    1846:	4770      	bx	lr
    1848:	00000b75 	.word	0x00000b75

0000184c <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    184c:	b580      	push	{r7, lr}
    184e:	b086      	sub	sp, #24
    1850:	af02      	add	r7, sp, #8
    1852:	6078      	str	r0, [r7, #4]
    1854:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1856:	f107 010c 	add.w	r1, r7, #12
    185a:	683b      	ldr	r3, [r7, #0]
    185c:	9300      	str	r3, [sp, #0]
    185e:	687b      	ldr	r3, [r7, #4]
    1860:	f04f 32ff 	mov.w	r2, #4294967295
    1864:	4803      	ldr	r0, [pc, #12]	; (1874 <vprintf_+0x28>)
    1866:	f7ff fbba 	bl	fde <_vsnprintf>
    186a:	4603      	mov	r3, r0
}
    186c:	4618      	mov	r0, r3
    186e:	3710      	adds	r7, #16
    1870:	46bd      	mov	sp, r7
    1872:	bd80      	pop	{r7, pc}
    1874:	00000bbb 	.word	0x00000bbb

00001878 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    1878:	b580      	push	{r7, lr}
    187a:	b086      	sub	sp, #24
    187c:	af02      	add	r7, sp, #8
    187e:	60f8      	str	r0, [r7, #12]
    1880:	60b9      	str	r1, [r7, #8]
    1882:	607a      	str	r2, [r7, #4]
    1884:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    1886:	683b      	ldr	r3, [r7, #0]
    1888:	9300      	str	r3, [sp, #0]
    188a:	687b      	ldr	r3, [r7, #4]
    188c:	68ba      	ldr	r2, [r7, #8]
    188e:	68f9      	ldr	r1, [r7, #12]
    1890:	4803      	ldr	r0, [pc, #12]	; (18a0 <vsnprintf_+0x28>)
    1892:	f7ff fba4 	bl	fde <_vsnprintf>
    1896:	4603      	mov	r3, r0
}
    1898:	4618      	mov	r0, r3
    189a:	3710      	adds	r7, #16
    189c:	46bd      	mov	sp, r7
    189e:	bd80      	pop	{r7, pc}
    18a0:	00000b75 	.word	0x00000b75

000018a4 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    18a4:	b40c      	push	{r2, r3}
    18a6:	b580      	push	{r7, lr}
    18a8:	b088      	sub	sp, #32
    18aa:	af02      	add	r7, sp, #8
    18ac:	6078      	str	r0, [r7, #4]
    18ae:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    18b0:	f107 0324 	add.w	r3, r7, #36	; 0x24
    18b4:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    18b6:	687b      	ldr	r3, [r7, #4]
    18b8:	60bb      	str	r3, [r7, #8]
    18ba:	683b      	ldr	r3, [r7, #0]
    18bc:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    18be:	f107 0108 	add.w	r1, r7, #8
    18c2:	693b      	ldr	r3, [r7, #16]
    18c4:	9300      	str	r3, [sp, #0]
    18c6:	6a3b      	ldr	r3, [r7, #32]
    18c8:	f04f 32ff 	mov.w	r2, #4294967295
    18cc:	4805      	ldr	r0, [pc, #20]	; (18e4 <fctprintf+0x40>)
    18ce:	f7ff fb86 	bl	fde <_vsnprintf>
    18d2:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    18d4:	697b      	ldr	r3, [r7, #20]
}
    18d6:	4618      	mov	r0, r3
    18d8:	3718      	adds	r7, #24
    18da:	46bd      	mov	sp, r7
    18dc:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    18e0:	b002      	add	sp, #8
    18e2:	4770      	bx	lr
    18e4:	00000be1 	.word	0x00000be1

000018e8 <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    18e8:	b580      	push	{r7, lr}
    18ea:	b084      	sub	sp, #16
    18ec:	af00      	add	r7, sp, #0
    18ee:	6078      	str	r0, [r7, #4]
    18f0:	460b      	mov	r3, r1
    18f2:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    18f4:	f107 030f 	add.w	r3, r7, #15
    18f8:	4618      	mov	r0, r3
    18fa:	f7fe fd29 	bl	350 <lite_getchar>
    {
        if (count >= max_len)
    18fe:	4b22      	ldr	r3, [pc, #136]	; (1988 <shell_get_line+0xa0>)
    1900:	781b      	ldrb	r3, [r3, #0]
    1902:	78fa      	ldrb	r2, [r7, #3]
    1904:	429a      	cmp	r2, r3
    1906:	d804      	bhi.n	1912 <shell_get_line+0x2a>
        {
            count = 0;
    1908:	4b1f      	ldr	r3, [pc, #124]	; (1988 <shell_get_line+0xa0>)
    190a:	2200      	movs	r2, #0
    190c:	701a      	strb	r2, [r3, #0]
            return 1;
    190e:	2301      	movs	r3, #1
    1910:	e036      	b.n	1980 <shell_get_line+0x98>
        }
        line[count] = chr;
    1912:	4b1d      	ldr	r3, [pc, #116]	; (1988 <shell_get_line+0xa0>)
    1914:	781b      	ldrb	r3, [r3, #0]
    1916:	461a      	mov	r2, r3
    1918:	687b      	ldr	r3, [r7, #4]
    191a:	4413      	add	r3, r2
    191c:	7bfa      	ldrb	r2, [r7, #15]
    191e:	701a      	strb	r2, [r3, #0]
        switch (chr)
    1920:	7bfb      	ldrb	r3, [r7, #15]
    1922:	2b0a      	cmp	r3, #10
    1924:	d013      	beq.n	194e <shell_get_line+0x66>
    1926:	2b0a      	cmp	r3, #10
    1928:	dc02      	bgt.n	1930 <shell_get_line+0x48>
    192a:	2b08      	cmp	r3, #8
    192c:	d004      	beq.n	1938 <shell_get_line+0x50>
    192e:	e01a      	b.n	1966 <shell_get_line+0x7e>
    1930:	2b0d      	cmp	r3, #13
    1932:	d00c      	beq.n	194e <shell_get_line+0x66>
    1934:	2b7f      	cmp	r3, #127	; 0x7f
    1936:	d116      	bne.n	1966 <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    1938:	4b13      	ldr	r3, [pc, #76]	; (1988 <shell_get_line+0xa0>)
    193a:	781b      	ldrb	r3, [r3, #0]
    193c:	2b00      	cmp	r3, #0
    193e:	d019      	beq.n	1974 <shell_get_line+0x8c>
            {
                count--;
    1940:	4b11      	ldr	r3, [pc, #68]	; (1988 <shell_get_line+0xa0>)
    1942:	781b      	ldrb	r3, [r3, #0]
    1944:	3b01      	subs	r3, #1
    1946:	b2da      	uxtb	r2, r3
    1948:	4b0f      	ldr	r3, [pc, #60]	; (1988 <shell_get_line+0xa0>)
    194a:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    194c:	e012      	b.n	1974 <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    194e:	4b0e      	ldr	r3, [pc, #56]	; (1988 <shell_get_line+0xa0>)
    1950:	781b      	ldrb	r3, [r3, #0]
    1952:	461a      	mov	r2, r3
    1954:	687b      	ldr	r3, [r7, #4]
    1956:	4413      	add	r3, r2
    1958:	2200      	movs	r2, #0
    195a:	701a      	strb	r2, [r3, #0]
            count = 0;
    195c:	4b0a      	ldr	r3, [pc, #40]	; (1988 <shell_get_line+0xa0>)
    195e:	2200      	movs	r2, #0
    1960:	701a      	strb	r2, [r3, #0]
            return 1;
    1962:	2301      	movs	r3, #1
    1964:	e00c      	b.n	1980 <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    1966:	4b08      	ldr	r3, [pc, #32]	; (1988 <shell_get_line+0xa0>)
    1968:	781b      	ldrb	r3, [r3, #0]
    196a:	3301      	adds	r3, #1
    196c:	b2da      	uxtb	r2, r3
    196e:	4b06      	ldr	r3, [pc, #24]	; (1988 <shell_get_line+0xa0>)
    1970:	701a      	strb	r2, [r3, #0]
    1972:	e000      	b.n	1976 <shell_get_line+0x8e>
        break;
    1974:	bf00      	nop
        }
        lite_putchar(chr);
    1976:	7bfb      	ldrb	r3, [r7, #15]
    1978:	4618      	mov	r0, r3
    197a:	f7fe fcfd 	bl	378 <lite_putchar>
    }
    return 0;
    197e:	2300      	movs	r3, #0
}
    1980:	4618      	mov	r0, r3
    1982:	3710      	adds	r7, #16
    1984:	46bd      	mov	sp, r7
    1986:	bd80      	pop	{r7, pc}
    1988:	20000a00 	.word	0x20000a00

0000198c <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    198c:	b580      	push	{r7, lr}
    198e:	b088      	sub	sp, #32
    1990:	af00      	add	r7, sp, #0
    1992:	60f8      	str	r0, [r7, #12]
    1994:	60b9      	str	r1, [r7, #8]
    1996:	4613      	mov	r3, r2
    1998:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    199a:	2300      	movs	r3, #0
    199c:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    199e:	4912      	ldr	r1, [pc, #72]	; (19e8 <shell_get_args+0x5c>)
    19a0:	68f8      	ldr	r0, [r7, #12]
    19a2:	f001 f8e5 	bl	2b70 <strtok>
    19a6:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    19a8:	2300      	movs	r3, #0
    19aa:	77fb      	strb	r3, [r7, #31]
    19ac:	e00d      	b.n	19ca <shell_get_args+0x3e>
    {
        args[i] = ptr;
    19ae:	7ffb      	ldrb	r3, [r7, #31]
    19b0:	009b      	lsls	r3, r3, #2
    19b2:	68ba      	ldr	r2, [r7, #8]
    19b4:	4413      	add	r3, r2
    19b6:	69ba      	ldr	r2, [r7, #24]
    19b8:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    19ba:	490c      	ldr	r1, [pc, #48]	; (19ec <shell_get_args+0x60>)
    19bc:	2000      	movs	r0, #0
    19be:	f001 f8d7 	bl	2b70 <strtok>
    19c2:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    19c4:	7ffb      	ldrb	r3, [r7, #31]
    19c6:	3301      	adds	r3, #1
    19c8:	77fb      	strb	r3, [r7, #31]
    19ca:	69bb      	ldr	r3, [r7, #24]
    19cc:	2b00      	cmp	r3, #0
    19ce:	d003      	beq.n	19d8 <shell_get_args+0x4c>
    19d0:	7ffa      	ldrb	r2, [r7, #31]
    19d2:	79fb      	ldrb	r3, [r7, #7]
    19d4:	429a      	cmp	r2, r3
    19d6:	d3ea      	bcc.n	19ae <shell_get_args+0x22>
    }
    ret = i;
    19d8:	7ffb      	ldrb	r3, [r7, #31]
    19da:	75fb      	strb	r3, [r7, #23]
    return ret;
    19dc:	7dfb      	ldrb	r3, [r7, #23]
}
    19de:	4618      	mov	r0, r3
    19e0:	3720      	adds	r7, #32
    19e2:	46bd      	mov	sp, r7
    19e4:	bd80      	pop	{r7, pc}
    19e6:	bf00      	nop
    19e8:	000089b0 	.word	0x000089b0
    19ec:	000089b4 	.word	0x000089b4

000019f0 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    19f0:	b580      	push	{r7, lr}
    19f2:	b084      	sub	sp, #16
    19f4:	af00      	add	r7, sp, #0
    19f6:	6078      	str	r0, [r7, #4]
    19f8:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    19fa:	4b0b      	ldr	r3, [pc, #44]	; (1a28 <shell_help_func+0x38>)
    19fc:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    19fe:	e00a      	b.n	1a16 <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    1a00:	68fb      	ldr	r3, [r7, #12]
    1a02:	6819      	ldr	r1, [r3, #0]
    1a04:	68fb      	ldr	r3, [r7, #12]
    1a06:	685b      	ldr	r3, [r3, #4]
    1a08:	461a      	mov	r2, r3
    1a0a:	4808      	ldr	r0, [pc, #32]	; (1a2c <shell_help_func+0x3c>)
    1a0c:	f7ff fecb 	bl	17a6 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1a10:	68fb      	ldr	r3, [r7, #12]
    1a12:	330c      	adds	r3, #12
    1a14:	60fb      	str	r3, [r7, #12]
    1a16:	68fb      	ldr	r3, [r7, #12]
    1a18:	4a05      	ldr	r2, [pc, #20]	; (1a30 <shell_help_func+0x40>)
    1a1a:	4293      	cmp	r3, r2
    1a1c:	d3f0      	bcc.n	1a00 <shell_help_func+0x10>
    }
    return 0;
    1a1e:	2300      	movs	r3, #0
}
    1a20:	4618      	mov	r0, r3
    1a22:	3710      	adds	r7, #16
    1a24:	46bd      	mov	sp, r7
    1a26:	bd80      	pop	{r7, pc}
    1a28:	00002a04 	.word	0x00002a04
    1a2c:	000089b8 	.word	0x000089b8
    1a30:	00008d28 	.word	0x00008d28

00001a34 <shell_main>:
	}
	return 0;
}
#endif
void shell_main(void)
{
    1a34:	b580      	push	{r7, lr}
    1a36:	b0c2      	sub	sp, #264	; 0x108
    1a38:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    1a3a:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1a3e:	2280      	movs	r2, #128	; 0x80
    1a40:	2100      	movs	r1, #0
    1a42:	4618      	mov	r0, r3
    1a44:	f001 f826 	bl	2a94 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    1a48:	463b      	mov	r3, r7
    1a4a:	4618      	mov	r0, r3
    1a4c:	2380      	movs	r3, #128	; 0x80
    1a4e:	461a      	mov	r2, r3
    1a50:	2100      	movs	r1, #0
    1a52:	f001 f81f 	bl	2a94 <memset>

    uint8_t args_count = 0;
    1a56:	2300      	movs	r3, #0
    1a58:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1a5c:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1a60:	2180      	movs	r1, #128	; 0x80
    1a62:	4618      	mov	r0, r3
    1a64:	f7ff ff40 	bl	18e8 <shell_get_line>
    1a68:	4603      	mov	r3, r0
    1a6a:	2b00      	cmp	r3, #0
    1a6c:	d0f6      	beq.n	1a5c <shell_main+0x28>
        {
            printf("\n");
    1a6e:	4827      	ldr	r0, [pc, #156]	; (1b0c <shell_main+0xd8>)
    1a70:	f7ff fe99 	bl	17a6 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    1a74:	4639      	mov	r1, r7
    1a76:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1a7a:	2220      	movs	r2, #32
    1a7c:	4618      	mov	r0, r3
    1a7e:	f7ff ff85 	bl	198c <shell_get_args>
    1a82:	4603      	mov	r3, r0
    1a84:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    1a88:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    1a8c:	2b00      	cmp	r3, #0
    1a8e:	d033      	beq.n	1af8 <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    1a90:	4b1f      	ldr	r3, [pc, #124]	; (1b10 <shell_main+0xdc>)
    1a92:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1a96:	e02a      	b.n	1aee <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    1a98:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1a9c:	681a      	ldr	r2, [r3, #0]
    1a9e:	463b      	mov	r3, r7
    1aa0:	681b      	ldr	r3, [r3, #0]
    1aa2:	4619      	mov	r1, r3
    1aa4:	4610      	mov	r0, r2
    1aa6:	f000 f843 	bl	1b30 <strcmp>
    1aaa:	4603      	mov	r3, r0
    1aac:	2b00      	cmp	r3, #0
    1aae:	d10a      	bne.n	1ac6 <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    1ab0:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1ab4:	689b      	ldr	r3, [r3, #8]
    1ab6:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    1aba:	1e50      	subs	r0, r2, #1
    1abc:	463a      	mov	r2, r7
    1abe:	3204      	adds	r2, #4
    1ac0:	4611      	mov	r1, r2
    1ac2:	4798      	blx	r3
    1ac4:	e00e      	b.n	1ae4 <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    1ac6:	463b      	mov	r3, r7
    1ac8:	681b      	ldr	r3, [r3, #0]
    1aca:	4619      	mov	r1, r3
    1acc:	4811      	ldr	r0, [pc, #68]	; (1b14 <shell_main+0xe0>)
    1ace:	f000 f82f 	bl	1b30 <strcmp>
    1ad2:	4603      	mov	r3, r0
    1ad4:	2b00      	cmp	r3, #0
    1ad6:	d013      	beq.n	1b00 <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1ad8:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1adc:	4619      	mov	r1, r3
    1ade:	480e      	ldr	r0, [pc, #56]	; (1b18 <shell_main+0xe4>)
    1ae0:	f7ff fe61 	bl	17a6 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1ae4:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1ae8:	330c      	adds	r3, #12
    1aea:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    1aee:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1af2:	4a0a      	ldr	r2, [pc, #40]	; (1b1c <shell_main+0xe8>)
    1af4:	4293      	cmp	r3, r2
    1af6:	d3cf      	bcc.n	1a98 <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1af8:	4809      	ldr	r0, [pc, #36]	; (1b20 <shell_main+0xec>)
    1afa:	f7ff fe54 	bl	17a6 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1afe:	e7ad      	b.n	1a5c <shell_main+0x28>
                        return;
    1b00:	bf00      	nop
        }
    }
    return;
}
    1b02:	f507 7784 	add.w	r7, r7, #264	; 0x108
    1b06:	46bd      	mov	sp, r7
    1b08:	bd80      	pop	{r7, pc}
    1b0a:	bf00      	nop
    1b0c:	000089e0 	.word	0x000089e0
    1b10:	00002a04 	.word	0x00002a04
    1b14:	000089e4 	.word	0x000089e4
    1b18:	000089ec 	.word	0x000089ec
    1b1c:	00008d28 	.word	0x00008d28
    1b20:	00008a08 	.word	0x00008a08

00001b24 <shell_start>:

void shell_start(void)
{
    1b24:	b580      	push	{r7, lr}
    1b26:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    1b28:	f7ff ff84 	bl	1a34 <shell_main>
    1b2c:	bf00      	nop
    1b2e:	bd80      	pop	{r7, pc}

00001b30 <strcmp>:
    1b30:	ea80 0c01 	eor.w	ip, r0, r1
    1b34:	f01c 0f03 	tst.w	ip, #3
    1b38:	d137      	bne.n	1baa <strcmp+0x7a>
    1b3a:	f010 0c03 	ands.w	ip, r0, #3
    1b3e:	f020 0003 	bic.w	r0, r0, #3
    1b42:	f021 0103 	bic.w	r1, r1, #3
    1b46:	f850 2b04 	ldr.w	r2, [r0], #4
    1b4a:	bf08      	it	eq
    1b4c:	f851 3b04 	ldreq.w	r3, [r1], #4
    1b50:	d00e      	beq.n	1b70 <strcmp+0x40>
    1b52:	f08c 0c03 	eor.w	ip, ip, #3
    1b56:	f06f 437f 	mvn.w	r3, #4278190080	; 0xff000000
    1b5a:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
    1b5e:	fa23 fc0c 	lsr.w	ip, r3, ip
    1b62:	f851 3b04 	ldr.w	r3, [r1], #4
    1b66:	ea42 020c 	orr.w	r2, r2, ip
    1b6a:	ea43 030c 	orr.w	r3, r3, ip
    1b6e:	bf00      	nop
    1b70:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
    1b74:	429a      	cmp	r2, r3
    1b76:	bf01      	itttt	eq
    1b78:	ea2c 0c02 	biceq.w	ip, ip, r2
    1b7c:	f01c 3f80 	tsteq.w	ip, #2155905152	; 0x80808080
    1b80:	f850 2b04 	ldreq.w	r2, [r0], #4
    1b84:	f851 3b04 	ldreq.w	r3, [r1], #4
    1b88:	d0f2      	beq.n	1b70 <strcmp+0x40>
    1b8a:	ea4f 6002 	mov.w	r0, r2, lsl #24
    1b8e:	ea4f 2212 	mov.w	r2, r2, lsr #8
    1b92:	2801      	cmp	r0, #1
    1b94:	bf28      	it	cs
    1b96:	ebb0 6f03 	cmpcs.w	r0, r3, lsl #24
    1b9a:	bf08      	it	eq
    1b9c:	0a1b      	lsreq	r3, r3, #8
    1b9e:	d0f4      	beq.n	1b8a <strcmp+0x5a>
    1ba0:	f003 03ff 	and.w	r3, r3, #255	; 0xff
    1ba4:	0e00      	lsrs	r0, r0, #24
    1ba6:	1ac0      	subs	r0, r0, r3
    1ba8:	4770      	bx	lr
    1baa:	f010 0f03 	tst.w	r0, #3
    1bae:	d00a      	beq.n	1bc6 <strcmp+0x96>
    1bb0:	f810 2b01 	ldrb.w	r2, [r0], #1
    1bb4:	f811 3b01 	ldrb.w	r3, [r1], #1
    1bb8:	2a01      	cmp	r2, #1
    1bba:	bf28      	it	cs
    1bbc:	429a      	cmpcs	r2, r3
    1bbe:	d0f4      	beq.n	1baa <strcmp+0x7a>
    1bc0:	eba2 0003 	sub.w	r0, r2, r3
    1bc4:	4770      	bx	lr
    1bc6:	f84d 5d04 	str.w	r5, [sp, #-4]!
    1bca:	f850 2b04 	ldr.w	r2, [r0], #4
    1bce:	f001 0503 	and.w	r5, r1, #3
    1bd2:	f021 0103 	bic.w	r1, r1, #3
    1bd6:	f851 3b04 	ldr.w	r3, [r1], #4
    1bda:	2d02      	cmp	r5, #2
    1bdc:	d026      	beq.n	1c2c <strcmp+0xfc>
    1bde:	d84d      	bhi.n	1c7c <strcmp+0x14c>
    1be0:	f022 457f 	bic.w	r5, r2, #4278190080	; 0xff000000
    1be4:	ebb5 2f13 	cmp.w	r5, r3, lsr #8
    1be8:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
    1bec:	ea2c 0c02 	bic.w	ip, ip, r2
    1bf0:	d10d      	bne.n	1c0e <strcmp+0xde>
    1bf2:	f01c 3c80 	ands.w	ip, ip, #2155905152	; 0x80808080
    1bf6:	bf08      	it	eq
    1bf8:	f851 3b04 	ldreq.w	r3, [r1], #4
    1bfc:	d10a      	bne.n	1c14 <strcmp+0xe4>
    1bfe:	ea85 0502 	eor.w	r5, r5, r2
    1c02:	ebb5 6f03 	cmp.w	r5, r3, lsl #24
    1c06:	d10c      	bne.n	1c22 <strcmp+0xf2>
    1c08:	f850 2b04 	ldr.w	r2, [r0], #4
    1c0c:	e7e8      	b.n	1be0 <strcmp+0xb0>
    1c0e:	ea4f 2313 	mov.w	r3, r3, lsr #8
    1c12:	e05b      	b.n	1ccc <strcmp+0x19c>
    1c14:	f03c 4c7f 	bics.w	ip, ip, #4278190080	; 0xff000000
    1c18:	d154      	bne.n	1cc4 <strcmp+0x194>
    1c1a:	780b      	ldrb	r3, [r1, #0]
    1c1c:	ea4f 6512 	mov.w	r5, r2, lsr #24
    1c20:	e054      	b.n	1ccc <strcmp+0x19c>
    1c22:	ea4f 6512 	mov.w	r5, r2, lsr #24
    1c26:	f003 03ff 	and.w	r3, r3, #255	; 0xff
    1c2a:	e04f      	b.n	1ccc <strcmp+0x19c>
    1c2c:	ea4f 4502 	mov.w	r5, r2, lsl #16
    1c30:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
    1c34:	ea4f 4515 	mov.w	r5, r5, lsr #16
    1c38:	ea2c 0c02 	bic.w	ip, ip, r2
    1c3c:	ebb5 4f13 	cmp.w	r5, r3, lsr #16
    1c40:	d118      	bne.n	1c74 <strcmp+0x144>
    1c42:	f01c 3c80 	ands.w	ip, ip, #2155905152	; 0x80808080
    1c46:	bf08      	it	eq
    1c48:	f851 3b04 	ldreq.w	r3, [r1], #4
    1c4c:	d107      	bne.n	1c5e <strcmp+0x12e>
    1c4e:	ea85 0502 	eor.w	r5, r5, r2
    1c52:	ebb5 4f03 	cmp.w	r5, r3, lsl #16
    1c56:	d109      	bne.n	1c6c <strcmp+0x13c>
    1c58:	f850 2b04 	ldr.w	r2, [r0], #4
    1c5c:	e7e6      	b.n	1c2c <strcmp+0xfc>
    1c5e:	ea5f 4c0c 	movs.w	ip, ip, lsl #16
    1c62:	d12f      	bne.n	1cc4 <strcmp+0x194>
    1c64:	880b      	ldrh	r3, [r1, #0]
    1c66:	ea4f 4512 	mov.w	r5, r2, lsr #16
    1c6a:	e02f      	b.n	1ccc <strcmp+0x19c>
    1c6c:	ea4f 4303 	mov.w	r3, r3, lsl #16
    1c70:	ea4f 4512 	mov.w	r5, r2, lsr #16
    1c74:	ea4f 4313 	mov.w	r3, r3, lsr #16
    1c78:	e028      	b.n	1ccc <strcmp+0x19c>
    1c7a:	bf00      	nop
    1c7c:	f002 05ff 	and.w	r5, r2, #255	; 0xff
    1c80:	ebb5 6f13 	cmp.w	r5, r3, lsr #24
    1c84:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
    1c88:	ea2c 0c02 	bic.w	ip, ip, r2
    1c8c:	d10d      	bne.n	1caa <strcmp+0x17a>
    1c8e:	f01c 3c80 	ands.w	ip, ip, #2155905152	; 0x80808080
    1c92:	bf08      	it	eq
    1c94:	f851 3b04 	ldreq.w	r3, [r1], #4
    1c98:	d10a      	bne.n	1cb0 <strcmp+0x180>
    1c9a:	ea85 0502 	eor.w	r5, r5, r2
    1c9e:	ebb5 2f03 	cmp.w	r5, r3, lsl #8
    1ca2:	d10a      	bne.n	1cba <strcmp+0x18a>
    1ca4:	f850 2b04 	ldr.w	r2, [r0], #4
    1ca8:	e7e8      	b.n	1c7c <strcmp+0x14c>
    1caa:	ea4f 6313 	mov.w	r3, r3, lsr #24
    1cae:	e00d      	b.n	1ccc <strcmp+0x19c>
    1cb0:	f012 0fff 	tst.w	r2, #255	; 0xff
    1cb4:	d006      	beq.n	1cc4 <strcmp+0x194>
    1cb6:	f851 3b04 	ldr.w	r3, [r1], #4
    1cba:	ea4f 2512 	mov.w	r5, r2, lsr #8
    1cbe:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
    1cc2:	e003      	b.n	1ccc <strcmp+0x19c>
    1cc4:	f04f 0000 	mov.w	r0, #0
    1cc8:	bc20      	pop	{r5}
    1cca:	4770      	bx	lr
    1ccc:	f005 02ff 	and.w	r2, r5, #255	; 0xff
    1cd0:	f003 00ff 	and.w	r0, r3, #255	; 0xff
    1cd4:	2801      	cmp	r0, #1
    1cd6:	bf28      	it	cs
    1cd8:	4290      	cmpcs	r0, r2
    1cda:	bf04      	itt	eq
    1cdc:	0a2d      	lsreq	r5, r5, #8
    1cde:	0a1b      	lsreq	r3, r3, #8
    1ce0:	d0f4      	beq.n	1ccc <strcmp+0x19c>
    1ce2:	eba2 0000 	sub.w	r0, r2, r0
    1ce6:	bc20      	pop	{r5}
    1ce8:	4770      	bx	lr
    1cea:	bf00      	nop

00001cec <memcpy>:
    1cec:	4684      	mov	ip, r0
    1cee:	ea41 0300 	orr.w	r3, r1, r0
    1cf2:	f013 0303 	ands.w	r3, r3, #3
    1cf6:	d149      	bne.n	1d8c <memcpy+0xa0>
    1cf8:	3a40      	subs	r2, #64	; 0x40
    1cfa:	d323      	bcc.n	1d44 <memcpy+0x58>
    1cfc:	680b      	ldr	r3, [r1, #0]
    1cfe:	6003      	str	r3, [r0, #0]
    1d00:	684b      	ldr	r3, [r1, #4]
    1d02:	6043      	str	r3, [r0, #4]
    1d04:	688b      	ldr	r3, [r1, #8]
    1d06:	6083      	str	r3, [r0, #8]
    1d08:	68cb      	ldr	r3, [r1, #12]
    1d0a:	60c3      	str	r3, [r0, #12]
    1d0c:	690b      	ldr	r3, [r1, #16]
    1d0e:	6103      	str	r3, [r0, #16]
    1d10:	694b      	ldr	r3, [r1, #20]
    1d12:	6143      	str	r3, [r0, #20]
    1d14:	698b      	ldr	r3, [r1, #24]
    1d16:	6183      	str	r3, [r0, #24]
    1d18:	69cb      	ldr	r3, [r1, #28]
    1d1a:	61c3      	str	r3, [r0, #28]
    1d1c:	6a0b      	ldr	r3, [r1, #32]
    1d1e:	6203      	str	r3, [r0, #32]
    1d20:	6a4b      	ldr	r3, [r1, #36]	; 0x24
    1d22:	6243      	str	r3, [r0, #36]	; 0x24
    1d24:	6a8b      	ldr	r3, [r1, #40]	; 0x28
    1d26:	6283      	str	r3, [r0, #40]	; 0x28
    1d28:	6acb      	ldr	r3, [r1, #44]	; 0x2c
    1d2a:	62c3      	str	r3, [r0, #44]	; 0x2c
    1d2c:	6b0b      	ldr	r3, [r1, #48]	; 0x30
    1d2e:	6303      	str	r3, [r0, #48]	; 0x30
    1d30:	6b4b      	ldr	r3, [r1, #52]	; 0x34
    1d32:	6343      	str	r3, [r0, #52]	; 0x34
    1d34:	6b8b      	ldr	r3, [r1, #56]	; 0x38
    1d36:	6383      	str	r3, [r0, #56]	; 0x38
    1d38:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
    1d3a:	63c3      	str	r3, [r0, #60]	; 0x3c
    1d3c:	3040      	adds	r0, #64	; 0x40
    1d3e:	3140      	adds	r1, #64	; 0x40
    1d40:	3a40      	subs	r2, #64	; 0x40
    1d42:	d2db      	bcs.n	1cfc <memcpy+0x10>
    1d44:	3230      	adds	r2, #48	; 0x30
    1d46:	d30b      	bcc.n	1d60 <memcpy+0x74>
    1d48:	680b      	ldr	r3, [r1, #0]
    1d4a:	6003      	str	r3, [r0, #0]
    1d4c:	684b      	ldr	r3, [r1, #4]
    1d4e:	6043      	str	r3, [r0, #4]
    1d50:	688b      	ldr	r3, [r1, #8]
    1d52:	6083      	str	r3, [r0, #8]
    1d54:	68cb      	ldr	r3, [r1, #12]
    1d56:	60c3      	str	r3, [r0, #12]
    1d58:	3010      	adds	r0, #16
    1d5a:	3110      	adds	r1, #16
    1d5c:	3a10      	subs	r2, #16
    1d5e:	d2f3      	bcs.n	1d48 <memcpy+0x5c>
    1d60:	320c      	adds	r2, #12
    1d62:	d305      	bcc.n	1d70 <memcpy+0x84>
    1d64:	f851 3b04 	ldr.w	r3, [r1], #4
    1d68:	f840 3b04 	str.w	r3, [r0], #4
    1d6c:	3a04      	subs	r2, #4
    1d6e:	d2f9      	bcs.n	1d64 <memcpy+0x78>
    1d70:	3204      	adds	r2, #4
    1d72:	d008      	beq.n	1d86 <memcpy+0x9a>
    1d74:	07d2      	lsls	r2, r2, #31
    1d76:	bf1c      	itt	ne
    1d78:	f811 3b01 	ldrbne.w	r3, [r1], #1
    1d7c:	f800 3b01 	strbne.w	r3, [r0], #1
    1d80:	d301      	bcc.n	1d86 <memcpy+0x9a>
    1d82:	880b      	ldrh	r3, [r1, #0]
    1d84:	8003      	strh	r3, [r0, #0]
    1d86:	4660      	mov	r0, ip
    1d88:	4770      	bx	lr
    1d8a:	bf00      	nop
    1d8c:	2a08      	cmp	r2, #8
    1d8e:	d313      	bcc.n	1db8 <memcpy+0xcc>
    1d90:	078b      	lsls	r3, r1, #30
    1d92:	d0b1      	beq.n	1cf8 <memcpy+0xc>
    1d94:	f010 0303 	ands.w	r3, r0, #3
    1d98:	d0ae      	beq.n	1cf8 <memcpy+0xc>
    1d9a:	f1c3 0304 	rsb	r3, r3, #4
    1d9e:	1ad2      	subs	r2, r2, r3
    1da0:	07db      	lsls	r3, r3, #31
    1da2:	bf1c      	itt	ne
    1da4:	f811 3b01 	ldrbne.w	r3, [r1], #1
    1da8:	f800 3b01 	strbne.w	r3, [r0], #1
    1dac:	d3a4      	bcc.n	1cf8 <memcpy+0xc>
    1dae:	f831 3b02 	ldrh.w	r3, [r1], #2
    1db2:	f820 3b02 	strh.w	r3, [r0], #2
    1db6:	e79f      	b.n	1cf8 <memcpy+0xc>
    1db8:	3a04      	subs	r2, #4
    1dba:	d3d9      	bcc.n	1d70 <memcpy+0x84>
    1dbc:	3a01      	subs	r2, #1
    1dbe:	f811 3b01 	ldrb.w	r3, [r1], #1
    1dc2:	f800 3b01 	strb.w	r3, [r0], #1
    1dc6:	d2f9      	bcs.n	1dbc <memcpy+0xd0>
    1dc8:	780b      	ldrb	r3, [r1, #0]
    1dca:	7003      	strb	r3, [r0, #0]
    1dcc:	784b      	ldrb	r3, [r1, #1]
    1dce:	7043      	strb	r3, [r0, #1]
    1dd0:	788b      	ldrb	r3, [r1, #2]
    1dd2:	7083      	strb	r3, [r0, #2]
    1dd4:	4660      	mov	r0, ip
    1dd6:	4770      	bx	lr

00001dd8 <__aeabi_drsub>:
    1dd8:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
    1ddc:	e002      	b.n	1de4 <__adddf3>
    1dde:	bf00      	nop

00001de0 <__aeabi_dsub>:
    1de0:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

00001de4 <__adddf3>:
    1de4:	b530      	push	{r4, r5, lr}
    1de6:	ea4f 0441 	mov.w	r4, r1, lsl #1
    1dea:	ea4f 0543 	mov.w	r5, r3, lsl #1
    1dee:	ea94 0f05 	teq	r4, r5
    1df2:	bf08      	it	eq
    1df4:	ea90 0f02 	teqeq	r0, r2
    1df8:	bf1f      	itttt	ne
    1dfa:	ea54 0c00 	orrsne.w	ip, r4, r0
    1dfe:	ea55 0c02 	orrsne.w	ip, r5, r2
    1e02:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
    1e06:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
    1e0a:	f000 80e2 	beq.w	1fd2 <__adddf3+0x1ee>
    1e0e:	ea4f 5454 	mov.w	r4, r4, lsr #21
    1e12:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
    1e16:	bfb8      	it	lt
    1e18:	426d      	neglt	r5, r5
    1e1a:	dd0c      	ble.n	1e36 <__adddf3+0x52>
    1e1c:	442c      	add	r4, r5
    1e1e:	ea80 0202 	eor.w	r2, r0, r2
    1e22:	ea81 0303 	eor.w	r3, r1, r3
    1e26:	ea82 0000 	eor.w	r0, r2, r0
    1e2a:	ea83 0101 	eor.w	r1, r3, r1
    1e2e:	ea80 0202 	eor.w	r2, r0, r2
    1e32:	ea81 0303 	eor.w	r3, r1, r3
    1e36:	2d36      	cmp	r5, #54	; 0x36
    1e38:	bf88      	it	hi
    1e3a:	bd30      	pophi	{r4, r5, pc}
    1e3c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
    1e40:	ea4f 3101 	mov.w	r1, r1, lsl #12
    1e44:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
    1e48:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
    1e4c:	d002      	beq.n	1e54 <__adddf3+0x70>
    1e4e:	4240      	negs	r0, r0
    1e50:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
    1e54:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
    1e58:	ea4f 3303 	mov.w	r3, r3, lsl #12
    1e5c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
    1e60:	d002      	beq.n	1e68 <__adddf3+0x84>
    1e62:	4252      	negs	r2, r2
    1e64:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
    1e68:	ea94 0f05 	teq	r4, r5
    1e6c:	f000 80a7 	beq.w	1fbe <__adddf3+0x1da>
    1e70:	f1a4 0401 	sub.w	r4, r4, #1
    1e74:	f1d5 0e20 	rsbs	lr, r5, #32
    1e78:	db0d      	blt.n	1e96 <__adddf3+0xb2>
    1e7a:	fa02 fc0e 	lsl.w	ip, r2, lr
    1e7e:	fa22 f205 	lsr.w	r2, r2, r5
    1e82:	1880      	adds	r0, r0, r2
    1e84:	f141 0100 	adc.w	r1, r1, #0
    1e88:	fa03 f20e 	lsl.w	r2, r3, lr
    1e8c:	1880      	adds	r0, r0, r2
    1e8e:	fa43 f305 	asr.w	r3, r3, r5
    1e92:	4159      	adcs	r1, r3
    1e94:	e00e      	b.n	1eb4 <__adddf3+0xd0>
    1e96:	f1a5 0520 	sub.w	r5, r5, #32
    1e9a:	f10e 0e20 	add.w	lr, lr, #32
    1e9e:	2a01      	cmp	r2, #1
    1ea0:	fa03 fc0e 	lsl.w	ip, r3, lr
    1ea4:	bf28      	it	cs
    1ea6:	f04c 0c02 	orrcs.w	ip, ip, #2
    1eaa:	fa43 f305 	asr.w	r3, r3, r5
    1eae:	18c0      	adds	r0, r0, r3
    1eb0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
    1eb4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    1eb8:	d507      	bpl.n	1eca <__adddf3+0xe6>
    1eba:	f04f 0e00 	mov.w	lr, #0
    1ebe:	f1dc 0c00 	rsbs	ip, ip, #0
    1ec2:	eb7e 0000 	sbcs.w	r0, lr, r0
    1ec6:	eb6e 0101 	sbc.w	r1, lr, r1
    1eca:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
    1ece:	d31b      	bcc.n	1f08 <__adddf3+0x124>
    1ed0:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
    1ed4:	d30c      	bcc.n	1ef0 <__adddf3+0x10c>
    1ed6:	0849      	lsrs	r1, r1, #1
    1ed8:	ea5f 0030 	movs.w	r0, r0, rrx
    1edc:	ea4f 0c3c 	mov.w	ip, ip, rrx
    1ee0:	f104 0401 	add.w	r4, r4, #1
    1ee4:	ea4f 5244 	mov.w	r2, r4, lsl #21
    1ee8:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
    1eec:	f080 809a 	bcs.w	2024 <__adddf3+0x240>
    1ef0:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
    1ef4:	bf08      	it	eq
    1ef6:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
    1efa:	f150 0000 	adcs.w	r0, r0, #0
    1efe:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    1f02:	ea41 0105 	orr.w	r1, r1, r5
    1f06:	bd30      	pop	{r4, r5, pc}
    1f08:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
    1f0c:	4140      	adcs	r0, r0
    1f0e:	eb41 0101 	adc.w	r1, r1, r1
    1f12:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    1f16:	f1a4 0401 	sub.w	r4, r4, #1
    1f1a:	d1e9      	bne.n	1ef0 <__adddf3+0x10c>
    1f1c:	f091 0f00 	teq	r1, #0
    1f20:	bf04      	itt	eq
    1f22:	4601      	moveq	r1, r0
    1f24:	2000      	moveq	r0, #0
    1f26:	fab1 f381 	clz	r3, r1
    1f2a:	bf08      	it	eq
    1f2c:	3320      	addeq	r3, #32
    1f2e:	f1a3 030b 	sub.w	r3, r3, #11
    1f32:	f1b3 0220 	subs.w	r2, r3, #32
    1f36:	da0c      	bge.n	1f52 <__adddf3+0x16e>
    1f38:	320c      	adds	r2, #12
    1f3a:	dd08      	ble.n	1f4e <__adddf3+0x16a>
    1f3c:	f102 0c14 	add.w	ip, r2, #20
    1f40:	f1c2 020c 	rsb	r2, r2, #12
    1f44:	fa01 f00c 	lsl.w	r0, r1, ip
    1f48:	fa21 f102 	lsr.w	r1, r1, r2
    1f4c:	e00c      	b.n	1f68 <__adddf3+0x184>
    1f4e:	f102 0214 	add.w	r2, r2, #20
    1f52:	bfd8      	it	le
    1f54:	f1c2 0c20 	rsble	ip, r2, #32
    1f58:	fa01 f102 	lsl.w	r1, r1, r2
    1f5c:	fa20 fc0c 	lsr.w	ip, r0, ip
    1f60:	bfdc      	itt	le
    1f62:	ea41 010c 	orrle.w	r1, r1, ip
    1f66:	4090      	lslle	r0, r2
    1f68:	1ae4      	subs	r4, r4, r3
    1f6a:	bfa2      	ittt	ge
    1f6c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
    1f70:	4329      	orrge	r1, r5
    1f72:	bd30      	popge	{r4, r5, pc}
    1f74:	ea6f 0404 	mvn.w	r4, r4
    1f78:	3c1f      	subs	r4, #31
    1f7a:	da1c      	bge.n	1fb6 <__adddf3+0x1d2>
    1f7c:	340c      	adds	r4, #12
    1f7e:	dc0e      	bgt.n	1f9e <__adddf3+0x1ba>
    1f80:	f104 0414 	add.w	r4, r4, #20
    1f84:	f1c4 0220 	rsb	r2, r4, #32
    1f88:	fa20 f004 	lsr.w	r0, r0, r4
    1f8c:	fa01 f302 	lsl.w	r3, r1, r2
    1f90:	ea40 0003 	orr.w	r0, r0, r3
    1f94:	fa21 f304 	lsr.w	r3, r1, r4
    1f98:	ea45 0103 	orr.w	r1, r5, r3
    1f9c:	bd30      	pop	{r4, r5, pc}
    1f9e:	f1c4 040c 	rsb	r4, r4, #12
    1fa2:	f1c4 0220 	rsb	r2, r4, #32
    1fa6:	fa20 f002 	lsr.w	r0, r0, r2
    1faa:	fa01 f304 	lsl.w	r3, r1, r4
    1fae:	ea40 0003 	orr.w	r0, r0, r3
    1fb2:	4629      	mov	r1, r5
    1fb4:	bd30      	pop	{r4, r5, pc}
    1fb6:	fa21 f004 	lsr.w	r0, r1, r4
    1fba:	4629      	mov	r1, r5
    1fbc:	bd30      	pop	{r4, r5, pc}
    1fbe:	f094 0f00 	teq	r4, #0
    1fc2:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
    1fc6:	bf06      	itte	eq
    1fc8:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
    1fcc:	3401      	addeq	r4, #1
    1fce:	3d01      	subne	r5, #1
    1fd0:	e74e      	b.n	1e70 <__adddf3+0x8c>
    1fd2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
    1fd6:	bf18      	it	ne
    1fd8:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
    1fdc:	d029      	beq.n	2032 <__adddf3+0x24e>
    1fde:	ea94 0f05 	teq	r4, r5
    1fe2:	bf08      	it	eq
    1fe4:	ea90 0f02 	teqeq	r0, r2
    1fe8:	d005      	beq.n	1ff6 <__adddf3+0x212>
    1fea:	ea54 0c00 	orrs.w	ip, r4, r0
    1fee:	bf04      	itt	eq
    1ff0:	4619      	moveq	r1, r3
    1ff2:	4610      	moveq	r0, r2
    1ff4:	bd30      	pop	{r4, r5, pc}
    1ff6:	ea91 0f03 	teq	r1, r3
    1ffa:	bf1e      	ittt	ne
    1ffc:	2100      	movne	r1, #0
    1ffe:	2000      	movne	r0, #0
    2000:	bd30      	popne	{r4, r5, pc}
    2002:	ea5f 5c54 	movs.w	ip, r4, lsr #21
    2006:	d105      	bne.n	2014 <__adddf3+0x230>
    2008:	0040      	lsls	r0, r0, #1
    200a:	4149      	adcs	r1, r1
    200c:	bf28      	it	cs
    200e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
    2012:	bd30      	pop	{r4, r5, pc}
    2014:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
    2018:	bf3c      	itt	cc
    201a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
    201e:	bd30      	popcc	{r4, r5, pc}
    2020:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    2024:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
    2028:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    202c:	f04f 0000 	mov.w	r0, #0
    2030:	bd30      	pop	{r4, r5, pc}
    2032:	ea7f 5c64 	mvns.w	ip, r4, asr #21
    2036:	bf1a      	itte	ne
    2038:	4619      	movne	r1, r3
    203a:	4610      	movne	r0, r2
    203c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
    2040:	bf1c      	itt	ne
    2042:	460b      	movne	r3, r1
    2044:	4602      	movne	r2, r0
    2046:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
    204a:	bf06      	itte	eq
    204c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
    2050:	ea91 0f03 	teqeq	r1, r3
    2054:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
    2058:	bd30      	pop	{r4, r5, pc}
    205a:	bf00      	nop

0000205c <__aeabi_ui2d>:
    205c:	f090 0f00 	teq	r0, #0
    2060:	bf04      	itt	eq
    2062:	2100      	moveq	r1, #0
    2064:	4770      	bxeq	lr
    2066:	b530      	push	{r4, r5, lr}
    2068:	f44f 6480 	mov.w	r4, #1024	; 0x400
    206c:	f104 0432 	add.w	r4, r4, #50	; 0x32
    2070:	f04f 0500 	mov.w	r5, #0
    2074:	f04f 0100 	mov.w	r1, #0
    2078:	e750      	b.n	1f1c <__adddf3+0x138>
    207a:	bf00      	nop

0000207c <__aeabi_i2d>:
    207c:	f090 0f00 	teq	r0, #0
    2080:	bf04      	itt	eq
    2082:	2100      	moveq	r1, #0
    2084:	4770      	bxeq	lr
    2086:	b530      	push	{r4, r5, lr}
    2088:	f44f 6480 	mov.w	r4, #1024	; 0x400
    208c:	f104 0432 	add.w	r4, r4, #50	; 0x32
    2090:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
    2094:	bf48      	it	mi
    2096:	4240      	negmi	r0, r0
    2098:	f04f 0100 	mov.w	r1, #0
    209c:	e73e      	b.n	1f1c <__adddf3+0x138>
    209e:	bf00      	nop

000020a0 <__aeabi_f2d>:
    20a0:	0042      	lsls	r2, r0, #1
    20a2:	ea4f 01e2 	mov.w	r1, r2, asr #3
    20a6:	ea4f 0131 	mov.w	r1, r1, rrx
    20aa:	ea4f 7002 	mov.w	r0, r2, lsl #28
    20ae:	bf1f      	itttt	ne
    20b0:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
    20b4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
    20b8:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
    20bc:	4770      	bxne	lr
    20be:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
    20c2:	bf08      	it	eq
    20c4:	4770      	bxeq	lr
    20c6:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
    20ca:	bf04      	itt	eq
    20cc:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
    20d0:	4770      	bxeq	lr
    20d2:	b530      	push	{r4, r5, lr}
    20d4:	f44f 7460 	mov.w	r4, #896	; 0x380
    20d8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
    20dc:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    20e0:	e71c      	b.n	1f1c <__adddf3+0x138>
    20e2:	bf00      	nop

000020e4 <__aeabi_ul2d>:
    20e4:	ea50 0201 	orrs.w	r2, r0, r1
    20e8:	bf08      	it	eq
    20ea:	4770      	bxeq	lr
    20ec:	b530      	push	{r4, r5, lr}
    20ee:	f04f 0500 	mov.w	r5, #0
    20f2:	e00a      	b.n	210a <__aeabi_l2d+0x16>

000020f4 <__aeabi_l2d>:
    20f4:	ea50 0201 	orrs.w	r2, r0, r1
    20f8:	bf08      	it	eq
    20fa:	4770      	bxeq	lr
    20fc:	b530      	push	{r4, r5, lr}
    20fe:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
    2102:	d502      	bpl.n	210a <__aeabi_l2d+0x16>
    2104:	4240      	negs	r0, r0
    2106:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
    210a:	f44f 6480 	mov.w	r4, #1024	; 0x400
    210e:	f104 0432 	add.w	r4, r4, #50	; 0x32
    2112:	ea5f 5c91 	movs.w	ip, r1, lsr #22
    2116:	f43f aed8 	beq.w	1eca <__adddf3+0xe6>
    211a:	f04f 0203 	mov.w	r2, #3
    211e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
    2122:	bf18      	it	ne
    2124:	3203      	addne	r2, #3
    2126:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
    212a:	bf18      	it	ne
    212c:	3203      	addne	r2, #3
    212e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
    2132:	f1c2 0320 	rsb	r3, r2, #32
    2136:	fa00 fc03 	lsl.w	ip, r0, r3
    213a:	fa20 f002 	lsr.w	r0, r0, r2
    213e:	fa01 fe03 	lsl.w	lr, r1, r3
    2142:	ea40 000e 	orr.w	r0, r0, lr
    2146:	fa21 f102 	lsr.w	r1, r1, r2
    214a:	4414      	add	r4, r2
    214c:	e6bd      	b.n	1eca <__adddf3+0xe6>
    214e:	bf00      	nop

00002150 <__aeabi_dmul>:
    2150:	b570      	push	{r4, r5, r6, lr}
    2152:	f04f 0cff 	mov.w	ip, #255	; 0xff
    2156:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    215a:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    215e:	bf1d      	ittte	ne
    2160:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    2164:	ea94 0f0c 	teqne	r4, ip
    2168:	ea95 0f0c 	teqne	r5, ip
    216c:	f000 f8de 	bleq	232c <__aeabi_dmul+0x1dc>
    2170:	442c      	add	r4, r5
    2172:	ea81 0603 	eor.w	r6, r1, r3
    2176:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
    217a:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
    217e:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
    2182:	bf18      	it	ne
    2184:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
    2188:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    218c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
    2190:	d038      	beq.n	2204 <__aeabi_dmul+0xb4>
    2192:	fba0 ce02 	umull	ip, lr, r0, r2
    2196:	f04f 0500 	mov.w	r5, #0
    219a:	fbe1 e502 	umlal	lr, r5, r1, r2
    219e:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
    21a2:	fbe0 e503 	umlal	lr, r5, r0, r3
    21a6:	f04f 0600 	mov.w	r6, #0
    21aa:	fbe1 5603 	umlal	r5, r6, r1, r3
    21ae:	f09c 0f00 	teq	ip, #0
    21b2:	bf18      	it	ne
    21b4:	f04e 0e01 	orrne.w	lr, lr, #1
    21b8:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
    21bc:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
    21c0:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
    21c4:	d204      	bcs.n	21d0 <__aeabi_dmul+0x80>
    21c6:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
    21ca:	416d      	adcs	r5, r5
    21cc:	eb46 0606 	adc.w	r6, r6, r6
    21d0:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
    21d4:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
    21d8:	ea4f 20c5 	mov.w	r0, r5, lsl #11
    21dc:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
    21e0:	ea4f 2ece 	mov.w	lr, lr, lsl #11
    21e4:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    21e8:	bf88      	it	hi
    21ea:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    21ee:	d81e      	bhi.n	222e <__aeabi_dmul+0xde>
    21f0:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
    21f4:	bf08      	it	eq
    21f6:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
    21fa:	f150 0000 	adcs.w	r0, r0, #0
    21fe:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    2202:	bd70      	pop	{r4, r5, r6, pc}
    2204:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
    2208:	ea46 0101 	orr.w	r1, r6, r1
    220c:	ea40 0002 	orr.w	r0, r0, r2
    2210:	ea81 0103 	eor.w	r1, r1, r3
    2214:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
    2218:	bfc2      	ittt	gt
    221a:	ebd4 050c 	rsbsgt	r5, r4, ip
    221e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    2222:	bd70      	popgt	{r4, r5, r6, pc}
    2224:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    2228:	f04f 0e00 	mov.w	lr, #0
    222c:	3c01      	subs	r4, #1
    222e:	f300 80ab 	bgt.w	2388 <__aeabi_dmul+0x238>
    2232:	f114 0f36 	cmn.w	r4, #54	; 0x36
    2236:	bfde      	ittt	le
    2238:	2000      	movle	r0, #0
    223a:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
    223e:	bd70      	pople	{r4, r5, r6, pc}
    2240:	f1c4 0400 	rsb	r4, r4, #0
    2244:	3c20      	subs	r4, #32
    2246:	da35      	bge.n	22b4 <__aeabi_dmul+0x164>
    2248:	340c      	adds	r4, #12
    224a:	dc1b      	bgt.n	2284 <__aeabi_dmul+0x134>
    224c:	f104 0414 	add.w	r4, r4, #20
    2250:	f1c4 0520 	rsb	r5, r4, #32
    2254:	fa00 f305 	lsl.w	r3, r0, r5
    2258:	fa20 f004 	lsr.w	r0, r0, r4
    225c:	fa01 f205 	lsl.w	r2, r1, r5
    2260:	ea40 0002 	orr.w	r0, r0, r2
    2264:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
    2268:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
    226c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    2270:	fa21 f604 	lsr.w	r6, r1, r4
    2274:	eb42 0106 	adc.w	r1, r2, r6
    2278:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    227c:	bf08      	it	eq
    227e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    2282:	bd70      	pop	{r4, r5, r6, pc}
    2284:	f1c4 040c 	rsb	r4, r4, #12
    2288:	f1c4 0520 	rsb	r5, r4, #32
    228c:	fa00 f304 	lsl.w	r3, r0, r4
    2290:	fa20 f005 	lsr.w	r0, r0, r5
    2294:	fa01 f204 	lsl.w	r2, r1, r4
    2298:	ea40 0002 	orr.w	r0, r0, r2
    229c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    22a0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
    22a4:	f141 0100 	adc.w	r1, r1, #0
    22a8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    22ac:	bf08      	it	eq
    22ae:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    22b2:	bd70      	pop	{r4, r5, r6, pc}
    22b4:	f1c4 0520 	rsb	r5, r4, #32
    22b8:	fa00 f205 	lsl.w	r2, r0, r5
    22bc:	ea4e 0e02 	orr.w	lr, lr, r2
    22c0:	fa20 f304 	lsr.w	r3, r0, r4
    22c4:	fa01 f205 	lsl.w	r2, r1, r5
    22c8:	ea43 0302 	orr.w	r3, r3, r2
    22cc:	fa21 f004 	lsr.w	r0, r1, r4
    22d0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    22d4:	fa21 f204 	lsr.w	r2, r1, r4
    22d8:	ea20 0002 	bic.w	r0, r0, r2
    22dc:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
    22e0:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
    22e4:	bf08      	it	eq
    22e6:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
    22ea:	bd70      	pop	{r4, r5, r6, pc}
    22ec:	f094 0f00 	teq	r4, #0
    22f0:	d10f      	bne.n	2312 <__aeabi_dmul+0x1c2>
    22f2:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
    22f6:	0040      	lsls	r0, r0, #1
    22f8:	eb41 0101 	adc.w	r1, r1, r1
    22fc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    2300:	bf08      	it	eq
    2302:	3c01      	subeq	r4, #1
    2304:	d0f7      	beq.n	22f6 <__aeabi_dmul+0x1a6>
    2306:	ea41 0106 	orr.w	r1, r1, r6
    230a:	f095 0f00 	teq	r5, #0
    230e:	bf18      	it	ne
    2310:	4770      	bxne	lr
    2312:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
    2316:	0052      	lsls	r2, r2, #1
    2318:	eb43 0303 	adc.w	r3, r3, r3
    231c:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
    2320:	bf08      	it	eq
    2322:	3d01      	subeq	r5, #1
    2324:	d0f7      	beq.n	2316 <__aeabi_dmul+0x1c6>
    2326:	ea43 0306 	orr.w	r3, r3, r6
    232a:	4770      	bx	lr
    232c:	ea94 0f0c 	teq	r4, ip
    2330:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    2334:	bf18      	it	ne
    2336:	ea95 0f0c 	teqne	r5, ip
    233a:	d00c      	beq.n	2356 <__aeabi_dmul+0x206>
    233c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    2340:	bf18      	it	ne
    2342:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    2346:	d1d1      	bne.n	22ec <__aeabi_dmul+0x19c>
    2348:	ea81 0103 	eor.w	r1, r1, r3
    234c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    2350:	f04f 0000 	mov.w	r0, #0
    2354:	bd70      	pop	{r4, r5, r6, pc}
    2356:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    235a:	bf06      	itte	eq
    235c:	4610      	moveq	r0, r2
    235e:	4619      	moveq	r1, r3
    2360:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    2364:	d019      	beq.n	239a <__aeabi_dmul+0x24a>
    2366:	ea94 0f0c 	teq	r4, ip
    236a:	d102      	bne.n	2372 <__aeabi_dmul+0x222>
    236c:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
    2370:	d113      	bne.n	239a <__aeabi_dmul+0x24a>
    2372:	ea95 0f0c 	teq	r5, ip
    2376:	d105      	bne.n	2384 <__aeabi_dmul+0x234>
    2378:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
    237c:	bf1c      	itt	ne
    237e:	4610      	movne	r0, r2
    2380:	4619      	movne	r1, r3
    2382:	d10a      	bne.n	239a <__aeabi_dmul+0x24a>
    2384:	ea81 0103 	eor.w	r1, r1, r3
    2388:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
    238c:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    2390:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
    2394:	f04f 0000 	mov.w	r0, #0
    2398:	bd70      	pop	{r4, r5, r6, pc}
    239a:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
    239e:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
    23a2:	bd70      	pop	{r4, r5, r6, pc}

000023a4 <__aeabi_ddiv>:
    23a4:	b570      	push	{r4, r5, r6, lr}
    23a6:	f04f 0cff 	mov.w	ip, #255	; 0xff
    23aa:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
    23ae:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
    23b2:	bf1d      	ittte	ne
    23b4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
    23b8:	ea94 0f0c 	teqne	r4, ip
    23bc:	ea95 0f0c 	teqne	r5, ip
    23c0:	f000 f8a7 	bleq	2512 <__aeabi_ddiv+0x16e>
    23c4:	eba4 0405 	sub.w	r4, r4, r5
    23c8:	ea81 0e03 	eor.w	lr, r1, r3
    23cc:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
    23d0:	ea4f 3101 	mov.w	r1, r1, lsl #12
    23d4:	f000 8088 	beq.w	24e8 <__aeabi_ddiv+0x144>
    23d8:	ea4f 3303 	mov.w	r3, r3, lsl #12
    23dc:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
    23e0:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
    23e4:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
    23e8:	ea4f 2202 	mov.w	r2, r2, lsl #8
    23ec:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
    23f0:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
    23f4:	ea4f 2600 	mov.w	r6, r0, lsl #8
    23f8:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
    23fc:	429d      	cmp	r5, r3
    23fe:	bf08      	it	eq
    2400:	4296      	cmpeq	r6, r2
    2402:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
    2406:	f504 7440 	add.w	r4, r4, #768	; 0x300
    240a:	d202      	bcs.n	2412 <__aeabi_ddiv+0x6e>
    240c:	085b      	lsrs	r3, r3, #1
    240e:	ea4f 0232 	mov.w	r2, r2, rrx
    2412:	1ab6      	subs	r6, r6, r2
    2414:	eb65 0503 	sbc.w	r5, r5, r3
    2418:	085b      	lsrs	r3, r3, #1
    241a:	ea4f 0232 	mov.w	r2, r2, rrx
    241e:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
    2422:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
    2426:	ebb6 0e02 	subs.w	lr, r6, r2
    242a:	eb75 0e03 	sbcs.w	lr, r5, r3
    242e:	bf22      	ittt	cs
    2430:	1ab6      	subcs	r6, r6, r2
    2432:	4675      	movcs	r5, lr
    2434:	ea40 000c 	orrcs.w	r0, r0, ip
    2438:	085b      	lsrs	r3, r3, #1
    243a:	ea4f 0232 	mov.w	r2, r2, rrx
    243e:	ebb6 0e02 	subs.w	lr, r6, r2
    2442:	eb75 0e03 	sbcs.w	lr, r5, r3
    2446:	bf22      	ittt	cs
    2448:	1ab6      	subcs	r6, r6, r2
    244a:	4675      	movcs	r5, lr
    244c:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
    2450:	085b      	lsrs	r3, r3, #1
    2452:	ea4f 0232 	mov.w	r2, r2, rrx
    2456:	ebb6 0e02 	subs.w	lr, r6, r2
    245a:	eb75 0e03 	sbcs.w	lr, r5, r3
    245e:	bf22      	ittt	cs
    2460:	1ab6      	subcs	r6, r6, r2
    2462:	4675      	movcs	r5, lr
    2464:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
    2468:	085b      	lsrs	r3, r3, #1
    246a:	ea4f 0232 	mov.w	r2, r2, rrx
    246e:	ebb6 0e02 	subs.w	lr, r6, r2
    2472:	eb75 0e03 	sbcs.w	lr, r5, r3
    2476:	bf22      	ittt	cs
    2478:	1ab6      	subcs	r6, r6, r2
    247a:	4675      	movcs	r5, lr
    247c:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
    2480:	ea55 0e06 	orrs.w	lr, r5, r6
    2484:	d018      	beq.n	24b8 <__aeabi_ddiv+0x114>
    2486:	ea4f 1505 	mov.w	r5, r5, lsl #4
    248a:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
    248e:	ea4f 1606 	mov.w	r6, r6, lsl #4
    2492:	ea4f 03c3 	mov.w	r3, r3, lsl #3
    2496:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
    249a:	ea4f 02c2 	mov.w	r2, r2, lsl #3
    249e:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
    24a2:	d1c0      	bne.n	2426 <__aeabi_ddiv+0x82>
    24a4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    24a8:	d10b      	bne.n	24c2 <__aeabi_ddiv+0x11e>
    24aa:	ea41 0100 	orr.w	r1, r1, r0
    24ae:	f04f 0000 	mov.w	r0, #0
    24b2:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
    24b6:	e7b6      	b.n	2426 <__aeabi_ddiv+0x82>
    24b8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
    24bc:	bf04      	itt	eq
    24be:	4301      	orreq	r1, r0
    24c0:	2000      	moveq	r0, #0
    24c2:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
    24c6:	bf88      	it	hi
    24c8:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
    24cc:	f63f aeaf 	bhi.w	222e <__aeabi_dmul+0xde>
    24d0:	ebb5 0c03 	subs.w	ip, r5, r3
    24d4:	bf04      	itt	eq
    24d6:	ebb6 0c02 	subseq.w	ip, r6, r2
    24da:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
    24de:	f150 0000 	adcs.w	r0, r0, #0
    24e2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
    24e6:	bd70      	pop	{r4, r5, r6, pc}
    24e8:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
    24ec:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
    24f0:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
    24f4:	bfc2      	ittt	gt
    24f6:	ebd4 050c 	rsbsgt	r5, r4, ip
    24fa:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
    24fe:	bd70      	popgt	{r4, r5, r6, pc}
    2500:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
    2504:	f04f 0e00 	mov.w	lr, #0
    2508:	3c01      	subs	r4, #1
    250a:	e690      	b.n	222e <__aeabi_dmul+0xde>
    250c:	ea45 0e06 	orr.w	lr, r5, r6
    2510:	e68d      	b.n	222e <__aeabi_dmul+0xde>
    2512:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
    2516:	ea94 0f0c 	teq	r4, ip
    251a:	bf08      	it	eq
    251c:	ea95 0f0c 	teqeq	r5, ip
    2520:	f43f af3b 	beq.w	239a <__aeabi_dmul+0x24a>
    2524:	ea94 0f0c 	teq	r4, ip
    2528:	d10a      	bne.n	2540 <__aeabi_ddiv+0x19c>
    252a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
    252e:	f47f af34 	bne.w	239a <__aeabi_dmul+0x24a>
    2532:	ea95 0f0c 	teq	r5, ip
    2536:	f47f af25 	bne.w	2384 <__aeabi_dmul+0x234>
    253a:	4610      	mov	r0, r2
    253c:	4619      	mov	r1, r3
    253e:	e72c      	b.n	239a <__aeabi_dmul+0x24a>
    2540:	ea95 0f0c 	teq	r5, ip
    2544:	d106      	bne.n	2554 <__aeabi_ddiv+0x1b0>
    2546:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
    254a:	f43f aefd 	beq.w	2348 <__aeabi_dmul+0x1f8>
    254e:	4610      	mov	r0, r2
    2550:	4619      	mov	r1, r3
    2552:	e722      	b.n	239a <__aeabi_dmul+0x24a>
    2554:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
    2558:	bf18      	it	ne
    255a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
    255e:	f47f aec5 	bne.w	22ec <__aeabi_dmul+0x19c>
    2562:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
    2566:	f47f af0d 	bne.w	2384 <__aeabi_dmul+0x234>
    256a:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
    256e:	f47f aeeb 	bne.w	2348 <__aeabi_dmul+0x1f8>
    2572:	e712      	b.n	239a <__aeabi_dmul+0x24a>

00002574 <__gedf2>:
    2574:	f04f 3cff 	mov.w	ip, #4294967295
    2578:	e006      	b.n	2588 <__cmpdf2+0x4>
    257a:	bf00      	nop

0000257c <__ledf2>:
    257c:	f04f 0c01 	mov.w	ip, #1
    2580:	e002      	b.n	2588 <__cmpdf2+0x4>
    2582:	bf00      	nop

00002584 <__cmpdf2>:
    2584:	f04f 0c01 	mov.w	ip, #1
    2588:	f84d cd04 	str.w	ip, [sp, #-4]!
    258c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    2590:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    2594:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    2598:	bf18      	it	ne
    259a:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
    259e:	d01b      	beq.n	25d8 <__cmpdf2+0x54>
    25a0:	b001      	add	sp, #4
    25a2:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
    25a6:	bf0c      	ite	eq
    25a8:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
    25ac:	ea91 0f03 	teqne	r1, r3
    25b0:	bf02      	ittt	eq
    25b2:	ea90 0f02 	teqeq	r0, r2
    25b6:	2000      	moveq	r0, #0
    25b8:	4770      	bxeq	lr
    25ba:	f110 0f00 	cmn.w	r0, #0
    25be:	ea91 0f03 	teq	r1, r3
    25c2:	bf58      	it	pl
    25c4:	4299      	cmppl	r1, r3
    25c6:	bf08      	it	eq
    25c8:	4290      	cmpeq	r0, r2
    25ca:	bf2c      	ite	cs
    25cc:	17d8      	asrcs	r0, r3, #31
    25ce:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
    25d2:	f040 0001 	orr.w	r0, r0, #1
    25d6:	4770      	bx	lr
    25d8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    25dc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    25e0:	d102      	bne.n	25e8 <__cmpdf2+0x64>
    25e2:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
    25e6:	d107      	bne.n	25f8 <__cmpdf2+0x74>
    25e8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    25ec:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    25f0:	d1d6      	bne.n	25a0 <__cmpdf2+0x1c>
    25f2:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
    25f6:	d0d3      	beq.n	25a0 <__cmpdf2+0x1c>
    25f8:	f85d 0b04 	ldr.w	r0, [sp], #4
    25fc:	4770      	bx	lr
    25fe:	bf00      	nop

00002600 <__aeabi_cdrcmple>:
    2600:	4684      	mov	ip, r0
    2602:	4610      	mov	r0, r2
    2604:	4662      	mov	r2, ip
    2606:	468c      	mov	ip, r1
    2608:	4619      	mov	r1, r3
    260a:	4663      	mov	r3, ip
    260c:	e000      	b.n	2610 <__aeabi_cdcmpeq>
    260e:	bf00      	nop

00002610 <__aeabi_cdcmpeq>:
    2610:	b501      	push	{r0, lr}
    2612:	f7ff ffb7 	bl	2584 <__cmpdf2>
    2616:	2800      	cmp	r0, #0
    2618:	bf48      	it	mi
    261a:	f110 0f00 	cmnmi.w	r0, #0
    261e:	bd01      	pop	{r0, pc}

00002620 <__aeabi_dcmpeq>:
    2620:	f84d ed08 	str.w	lr, [sp, #-8]!
    2624:	f7ff fff4 	bl	2610 <__aeabi_cdcmpeq>
    2628:	bf0c      	ite	eq
    262a:	2001      	moveq	r0, #1
    262c:	2000      	movne	r0, #0
    262e:	f85d fb08 	ldr.w	pc, [sp], #8
    2632:	bf00      	nop

00002634 <__aeabi_dcmplt>:
    2634:	f84d ed08 	str.w	lr, [sp, #-8]!
    2638:	f7ff ffea 	bl	2610 <__aeabi_cdcmpeq>
    263c:	bf34      	ite	cc
    263e:	2001      	movcc	r0, #1
    2640:	2000      	movcs	r0, #0
    2642:	f85d fb08 	ldr.w	pc, [sp], #8
    2646:	bf00      	nop

00002648 <__aeabi_dcmple>:
    2648:	f84d ed08 	str.w	lr, [sp, #-8]!
    264c:	f7ff ffe0 	bl	2610 <__aeabi_cdcmpeq>
    2650:	bf94      	ite	ls
    2652:	2001      	movls	r0, #1
    2654:	2000      	movhi	r0, #0
    2656:	f85d fb08 	ldr.w	pc, [sp], #8
    265a:	bf00      	nop

0000265c <__aeabi_dcmpge>:
    265c:	f84d ed08 	str.w	lr, [sp, #-8]!
    2660:	f7ff ffce 	bl	2600 <__aeabi_cdrcmple>
    2664:	bf94      	ite	ls
    2666:	2001      	movls	r0, #1
    2668:	2000      	movhi	r0, #0
    266a:	f85d fb08 	ldr.w	pc, [sp], #8
    266e:	bf00      	nop

00002670 <__aeabi_dcmpgt>:
    2670:	f84d ed08 	str.w	lr, [sp, #-8]!
    2674:	f7ff ffc4 	bl	2600 <__aeabi_cdrcmple>
    2678:	bf34      	ite	cc
    267a:	2001      	movcc	r0, #1
    267c:	2000      	movcs	r0, #0
    267e:	f85d fb08 	ldr.w	pc, [sp], #8
    2682:	bf00      	nop

00002684 <__aeabi_dcmpun>:
    2684:	ea4f 0c41 	mov.w	ip, r1, lsl #1
    2688:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    268c:	d102      	bne.n	2694 <__aeabi_dcmpun+0x10>
    268e:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
    2692:	d10a      	bne.n	26aa <__aeabi_dcmpun+0x26>
    2694:	ea4f 0c43 	mov.w	ip, r3, lsl #1
    2698:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
    269c:	d102      	bne.n	26a4 <__aeabi_dcmpun+0x20>
    269e:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
    26a2:	d102      	bne.n	26aa <__aeabi_dcmpun+0x26>
    26a4:	f04f 0000 	mov.w	r0, #0
    26a8:	4770      	bx	lr
    26aa:	f04f 0001 	mov.w	r0, #1
    26ae:	4770      	bx	lr

000026b0 <__aeabi_d2iz>:
    26b0:	ea4f 0241 	mov.w	r2, r1, lsl #1
    26b4:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
    26b8:	d215      	bcs.n	26e6 <__aeabi_d2iz+0x36>
    26ba:	d511      	bpl.n	26e0 <__aeabi_d2iz+0x30>
    26bc:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
    26c0:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
    26c4:	d912      	bls.n	26ec <__aeabi_d2iz+0x3c>
    26c6:	ea4f 23c1 	mov.w	r3, r1, lsl #11
    26ca:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
    26ce:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
    26d2:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
    26d6:	fa23 f002 	lsr.w	r0, r3, r2
    26da:	bf18      	it	ne
    26dc:	4240      	negne	r0, r0
    26de:	4770      	bx	lr
    26e0:	f04f 0000 	mov.w	r0, #0
    26e4:	4770      	bx	lr
    26e6:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
    26ea:	d105      	bne.n	26f8 <__aeabi_d2iz+0x48>
    26ec:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
    26f0:	bf08      	it	eq
    26f2:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
    26f6:	4770      	bx	lr
    26f8:	f04f 0000 	mov.w	r0, #0
    26fc:	4770      	bx	lr
    26fe:	bf00      	nop

00002700 <__aeabi_uldivmod>:
    2700:	b953      	cbnz	r3, 2718 <__aeabi_uldivmod+0x18>
    2702:	b94a      	cbnz	r2, 2718 <__aeabi_uldivmod+0x18>
    2704:	2900      	cmp	r1, #0
    2706:	bf08      	it	eq
    2708:	2800      	cmpeq	r0, #0
    270a:	bf1c      	itt	ne
    270c:	f04f 31ff 	movne.w	r1, #4294967295
    2710:	f04f 30ff 	movne.w	r0, #4294967295
    2714:	f000 b974 	b.w	2a00 <__aeabi_idiv0>
    2718:	f1ad 0c08 	sub.w	ip, sp, #8
    271c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
    2720:	f000 f806 	bl	2730 <__udivmoddi4>
    2724:	f8dd e004 	ldr.w	lr, [sp, #4]
    2728:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    272c:	b004      	add	sp, #16
    272e:	4770      	bx	lr

00002730 <__udivmoddi4>:
    2730:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    2734:	468c      	mov	ip, r1
    2736:	4604      	mov	r4, r0
    2738:	9e08      	ldr	r6, [sp, #32]
    273a:	2b00      	cmp	r3, #0
    273c:	d14b      	bne.n	27d6 <__udivmoddi4+0xa6>
    273e:	428a      	cmp	r2, r1
    2740:	4615      	mov	r5, r2
    2742:	d967      	bls.n	2814 <__udivmoddi4+0xe4>
    2744:	fab2 f282 	clz	r2, r2
    2748:	b14a      	cbz	r2, 275e <__udivmoddi4+0x2e>
    274a:	f1c2 0720 	rsb	r7, r2, #32
    274e:	fa01 f302 	lsl.w	r3, r1, r2
    2752:	fa20 f707 	lsr.w	r7, r0, r7
    2756:	4095      	lsls	r5, r2
    2758:	ea47 0c03 	orr.w	ip, r7, r3
    275c:	4094      	lsls	r4, r2
    275e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
    2762:	fbbc f7fe 	udiv	r7, ip, lr
    2766:	fa1f f885 	uxth.w	r8, r5
    276a:	fb0e c317 	mls	r3, lr, r7, ip
    276e:	fb07 f908 	mul.w	r9, r7, r8
    2772:	0c21      	lsrs	r1, r4, #16
    2774:	ea41 4303 	orr.w	r3, r1, r3, lsl #16
    2778:	4599      	cmp	r9, r3
    277a:	d909      	bls.n	2790 <__udivmoddi4+0x60>
    277c:	18eb      	adds	r3, r5, r3
    277e:	f107 31ff 	add.w	r1, r7, #4294967295
    2782:	f080 811c 	bcs.w	29be <__udivmoddi4+0x28e>
    2786:	4599      	cmp	r9, r3
    2788:	f240 8119 	bls.w	29be <__udivmoddi4+0x28e>
    278c:	3f02      	subs	r7, #2
    278e:	442b      	add	r3, r5
    2790:	eba3 0309 	sub.w	r3, r3, r9
    2794:	fbb3 f0fe 	udiv	r0, r3, lr
    2798:	fb0e 3310 	mls	r3, lr, r0, r3
    279c:	fb00 f108 	mul.w	r1, r0, r8
    27a0:	b2a4      	uxth	r4, r4
    27a2:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
    27a6:	42a1      	cmp	r1, r4
    27a8:	d909      	bls.n	27be <__udivmoddi4+0x8e>
    27aa:	192c      	adds	r4, r5, r4
    27ac:	f100 33ff 	add.w	r3, r0, #4294967295
    27b0:	f080 8107 	bcs.w	29c2 <__udivmoddi4+0x292>
    27b4:	42a1      	cmp	r1, r4
    27b6:	f240 8104 	bls.w	29c2 <__udivmoddi4+0x292>
    27ba:	3802      	subs	r0, #2
    27bc:	442c      	add	r4, r5
    27be:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
    27c2:	2700      	movs	r7, #0
    27c4:	1a64      	subs	r4, r4, r1
    27c6:	b11e      	cbz	r6, 27d0 <__udivmoddi4+0xa0>
    27c8:	2300      	movs	r3, #0
    27ca:	40d4      	lsrs	r4, r2
    27cc:	e9c6 4300 	strd	r4, r3, [r6]
    27d0:	4639      	mov	r1, r7
    27d2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    27d6:	428b      	cmp	r3, r1
    27d8:	d909      	bls.n	27ee <__udivmoddi4+0xbe>
    27da:	2e00      	cmp	r6, #0
    27dc:	f000 80ec 	beq.w	29b8 <__udivmoddi4+0x288>
    27e0:	2700      	movs	r7, #0
    27e2:	e9c6 0100 	strd	r0, r1, [r6]
    27e6:	4638      	mov	r0, r7
    27e8:	4639      	mov	r1, r7
    27ea:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    27ee:	fab3 f783 	clz	r7, r3
    27f2:	2f00      	cmp	r7, #0
    27f4:	d148      	bne.n	2888 <__udivmoddi4+0x158>
    27f6:	428b      	cmp	r3, r1
    27f8:	d302      	bcc.n	2800 <__udivmoddi4+0xd0>
    27fa:	4282      	cmp	r2, r0
    27fc:	f200 80fb 	bhi.w	29f6 <__udivmoddi4+0x2c6>
    2800:	1a84      	subs	r4, r0, r2
    2802:	eb61 0303 	sbc.w	r3, r1, r3
    2806:	2001      	movs	r0, #1
    2808:	469c      	mov	ip, r3
    280a:	2e00      	cmp	r6, #0
    280c:	d0e0      	beq.n	27d0 <__udivmoddi4+0xa0>
    280e:	e9c6 4c00 	strd	r4, ip, [r6]
    2812:	e7dd      	b.n	27d0 <__udivmoddi4+0xa0>
    2814:	b902      	cbnz	r2, 2818 <__udivmoddi4+0xe8>
    2816:	deff      	udf	#255	; 0xff
    2818:	fab2 f282 	clz	r2, r2
    281c:	2a00      	cmp	r2, #0
    281e:	f040 808f 	bne.w	2940 <__udivmoddi4+0x210>
    2822:	2701      	movs	r7, #1
    2824:	1b49      	subs	r1, r1, r5
    2826:	ea4f 4815 	mov.w	r8, r5, lsr #16
    282a:	fa1f f985 	uxth.w	r9, r5
    282e:	fbb1 fef8 	udiv	lr, r1, r8
    2832:	fb08 111e 	mls	r1, r8, lr, r1
    2836:	fb09 f00e 	mul.w	r0, r9, lr
    283a:	ea4f 4c14 	mov.w	ip, r4, lsr #16
    283e:	ea4c 4301 	orr.w	r3, ip, r1, lsl #16
    2842:	4298      	cmp	r0, r3
    2844:	d907      	bls.n	2856 <__udivmoddi4+0x126>
    2846:	18eb      	adds	r3, r5, r3
    2848:	f10e 31ff 	add.w	r1, lr, #4294967295
    284c:	d202      	bcs.n	2854 <__udivmoddi4+0x124>
    284e:	4298      	cmp	r0, r3
    2850:	f200 80cd 	bhi.w	29ee <__udivmoddi4+0x2be>
    2854:	468e      	mov	lr, r1
    2856:	1a1b      	subs	r3, r3, r0
    2858:	fbb3 f0f8 	udiv	r0, r3, r8
    285c:	fb08 3310 	mls	r3, r8, r0, r3
    2860:	fb09 f900 	mul.w	r9, r9, r0
    2864:	b2a4      	uxth	r4, r4
    2866:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
    286a:	45a1      	cmp	r9, r4
    286c:	d907      	bls.n	287e <__udivmoddi4+0x14e>
    286e:	192c      	adds	r4, r5, r4
    2870:	f100 33ff 	add.w	r3, r0, #4294967295
    2874:	d202      	bcs.n	287c <__udivmoddi4+0x14c>
    2876:	45a1      	cmp	r9, r4
    2878:	f200 80b6 	bhi.w	29e8 <__udivmoddi4+0x2b8>
    287c:	4618      	mov	r0, r3
    287e:	eba4 0409 	sub.w	r4, r4, r9
    2882:	ea40 400e 	orr.w	r0, r0, lr, lsl #16
    2886:	e79e      	b.n	27c6 <__udivmoddi4+0x96>
    2888:	f1c7 0520 	rsb	r5, r7, #32
    288c:	40bb      	lsls	r3, r7
    288e:	fa22 fc05 	lsr.w	ip, r2, r5
    2892:	ea4c 0c03 	orr.w	ip, ip, r3
    2896:	fa21 f405 	lsr.w	r4, r1, r5
    289a:	ea4f 4e1c 	mov.w	lr, ip, lsr #16
    289e:	fbb4 f9fe 	udiv	r9, r4, lr
    28a2:	fa1f f88c 	uxth.w	r8, ip
    28a6:	fb0e 4419 	mls	r4, lr, r9, r4
    28aa:	fa20 f305 	lsr.w	r3, r0, r5
    28ae:	40b9      	lsls	r1, r7
    28b0:	fb09 fa08 	mul.w	sl, r9, r8
    28b4:	4319      	orrs	r1, r3
    28b6:	0c0b      	lsrs	r3, r1, #16
    28b8:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
    28bc:	45a2      	cmp	sl, r4
    28be:	fa02 f207 	lsl.w	r2, r2, r7
    28c2:	fa00 f307 	lsl.w	r3, r0, r7
    28c6:	d90b      	bls.n	28e0 <__udivmoddi4+0x1b0>
    28c8:	eb1c 0404 	adds.w	r4, ip, r4
    28cc:	f109 30ff 	add.w	r0, r9, #4294967295
    28d0:	f080 8088 	bcs.w	29e4 <__udivmoddi4+0x2b4>
    28d4:	45a2      	cmp	sl, r4
    28d6:	f240 8085 	bls.w	29e4 <__udivmoddi4+0x2b4>
    28da:	f1a9 0902 	sub.w	r9, r9, #2
    28de:	4464      	add	r4, ip
    28e0:	eba4 040a 	sub.w	r4, r4, sl
    28e4:	fbb4 f0fe 	udiv	r0, r4, lr
    28e8:	fb0e 4410 	mls	r4, lr, r0, r4
    28ec:	fb00 fa08 	mul.w	sl, r0, r8
    28f0:	b289      	uxth	r1, r1
    28f2:	ea41 4404 	orr.w	r4, r1, r4, lsl #16
    28f6:	45a2      	cmp	sl, r4
    28f8:	d908      	bls.n	290c <__udivmoddi4+0x1dc>
    28fa:	eb1c 0404 	adds.w	r4, ip, r4
    28fe:	f100 31ff 	add.w	r1, r0, #4294967295
    2902:	d26b      	bcs.n	29dc <__udivmoddi4+0x2ac>
    2904:	45a2      	cmp	sl, r4
    2906:	d969      	bls.n	29dc <__udivmoddi4+0x2ac>
    2908:	3802      	subs	r0, #2
    290a:	4464      	add	r4, ip
    290c:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
    2910:	fba0 8902 	umull	r8, r9, r0, r2
    2914:	eba4 040a 	sub.w	r4, r4, sl
    2918:	454c      	cmp	r4, r9
    291a:	4641      	mov	r1, r8
    291c:	46ce      	mov	lr, r9
    291e:	d354      	bcc.n	29ca <__udivmoddi4+0x29a>
    2920:	d051      	beq.n	29c6 <__udivmoddi4+0x296>
    2922:	2e00      	cmp	r6, #0
    2924:	d069      	beq.n	29fa <__udivmoddi4+0x2ca>
    2926:	1a5a      	subs	r2, r3, r1
    2928:	eb64 040e 	sbc.w	r4, r4, lr
    292c:	fa04 f505 	lsl.w	r5, r4, r5
    2930:	fa22 f307 	lsr.w	r3, r2, r7
    2934:	40fc      	lsrs	r4, r7
    2936:	431d      	orrs	r5, r3
    2938:	e9c6 5400 	strd	r5, r4, [r6]
    293c:	2700      	movs	r7, #0
    293e:	e747      	b.n	27d0 <__udivmoddi4+0xa0>
    2940:	4095      	lsls	r5, r2
    2942:	f1c2 0320 	rsb	r3, r2, #32
    2946:	fa21 f003 	lsr.w	r0, r1, r3
    294a:	ea4f 4815 	mov.w	r8, r5, lsr #16
    294e:	fbb0 f7f8 	udiv	r7, r0, r8
    2952:	fa1f f985 	uxth.w	r9, r5
    2956:	fb08 0017 	mls	r0, r8, r7, r0
    295a:	fa24 f303 	lsr.w	r3, r4, r3
    295e:	4091      	lsls	r1, r2
    2960:	fb07 fc09 	mul.w	ip, r7, r9
    2964:	430b      	orrs	r3, r1
    2966:	0c19      	lsrs	r1, r3, #16
    2968:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
    296c:	458c      	cmp	ip, r1
    296e:	fa04 f402 	lsl.w	r4, r4, r2
    2972:	d907      	bls.n	2984 <__udivmoddi4+0x254>
    2974:	1869      	adds	r1, r5, r1
    2976:	f107 30ff 	add.w	r0, r7, #4294967295
    297a:	d231      	bcs.n	29e0 <__udivmoddi4+0x2b0>
    297c:	458c      	cmp	ip, r1
    297e:	d92f      	bls.n	29e0 <__udivmoddi4+0x2b0>
    2980:	3f02      	subs	r7, #2
    2982:	4429      	add	r1, r5
    2984:	eba1 010c 	sub.w	r1, r1, ip
    2988:	fbb1 f0f8 	udiv	r0, r1, r8
    298c:	fb08 1c10 	mls	ip, r8, r0, r1
    2990:	fb00 fe09 	mul.w	lr, r0, r9
    2994:	b299      	uxth	r1, r3
    2996:	ea41 410c 	orr.w	r1, r1, ip, lsl #16
    299a:	458e      	cmp	lr, r1
    299c:	d907      	bls.n	29ae <__udivmoddi4+0x27e>
    299e:	1869      	adds	r1, r5, r1
    29a0:	f100 33ff 	add.w	r3, r0, #4294967295
    29a4:	d218      	bcs.n	29d8 <__udivmoddi4+0x2a8>
    29a6:	458e      	cmp	lr, r1
    29a8:	d916      	bls.n	29d8 <__udivmoddi4+0x2a8>
    29aa:	3802      	subs	r0, #2
    29ac:	4429      	add	r1, r5
    29ae:	eba1 010e 	sub.w	r1, r1, lr
    29b2:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
    29b6:	e73a      	b.n	282e <__udivmoddi4+0xfe>
    29b8:	4637      	mov	r7, r6
    29ba:	4630      	mov	r0, r6
    29bc:	e708      	b.n	27d0 <__udivmoddi4+0xa0>
    29be:	460f      	mov	r7, r1
    29c0:	e6e6      	b.n	2790 <__udivmoddi4+0x60>
    29c2:	4618      	mov	r0, r3
    29c4:	e6fb      	b.n	27be <__udivmoddi4+0x8e>
    29c6:	4543      	cmp	r3, r8
    29c8:	d2ab      	bcs.n	2922 <__udivmoddi4+0x1f2>
    29ca:	ebb8 0102 	subs.w	r1, r8, r2
    29ce:	eb69 020c 	sbc.w	r2, r9, ip
    29d2:	3801      	subs	r0, #1
    29d4:	4696      	mov	lr, r2
    29d6:	e7a4      	b.n	2922 <__udivmoddi4+0x1f2>
    29d8:	4618      	mov	r0, r3
    29da:	e7e8      	b.n	29ae <__udivmoddi4+0x27e>
    29dc:	4608      	mov	r0, r1
    29de:	e795      	b.n	290c <__udivmoddi4+0x1dc>
    29e0:	4607      	mov	r7, r0
    29e2:	e7cf      	b.n	2984 <__udivmoddi4+0x254>
    29e4:	4681      	mov	r9, r0
    29e6:	e77b      	b.n	28e0 <__udivmoddi4+0x1b0>
    29e8:	3802      	subs	r0, #2
    29ea:	442c      	add	r4, r5
    29ec:	e747      	b.n	287e <__udivmoddi4+0x14e>
    29ee:	f1ae 0e02 	sub.w	lr, lr, #2
    29f2:	442b      	add	r3, r5
    29f4:	e72f      	b.n	2856 <__udivmoddi4+0x126>
    29f6:	4638      	mov	r0, r7
    29f8:	e707      	b.n	280a <__udivmoddi4+0xda>
    29fa:	4637      	mov	r7, r6
    29fc:	e6e8      	b.n	27d0 <__udivmoddi4+0xa0>
    29fe:	bf00      	nop

00002a00 <__aeabi_idiv0>:
    2a00:	4770      	bx	lr
    2a02:	bf00      	nop

Disassembly of section .init:

00002a04 <_init>:
    2a04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2a06:	bf00      	nop
    2a08:	bcf8      	pop	{r3, r4, r5, r6, r7}
    2a0a:	bc08      	pop	{r3}
    2a0c:	469e      	mov	lr, r3
    2a0e:	4770      	bx	lr

Disassembly of section .fini:

00002a10 <_fini>:
    2a10:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2a12:	bf00      	nop
    2a14:	bcf8      	pop	{r3, r4, r5, r6, r7}
    2a16:	bc08      	pop	{r3}
    2a18:	469e      	mov	lr, r3
    2a1a:	4770      	bx	lr

Disassembly of section .text.default_handler:

00002a1c <default_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
    2a1c:	e7fe      	b.n	2a1c <default_handler>

Disassembly of section .text.__errno:

00002a20 <__errno>:
    2a20:	4b01      	ldr	r3, [pc, #4]	; (2a28 <__errno+0x8>)
    2a22:	6818      	ldr	r0, [r3, #0]
    2a24:	4770      	bx	lr
    2a26:	bf00      	nop
    2a28:	20000010 	.word	0x20000010

Disassembly of section .text.exit:

00002a2c <exit>:
    2a2c:	b508      	push	{r3, lr}
    2a2e:	2100      	movs	r1, #0
    2a30:	4604      	mov	r4, r0
    2a32:	f001 fc8b 	bl	434c <__call_exitprocs>
    2a36:	4b04      	ldr	r3, [pc, #16]	; (2a48 <exit+0x1c>)
    2a38:	6818      	ldr	r0, [r3, #0]
    2a3a:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
    2a3c:	b103      	cbz	r3, 2a40 <exit+0x14>
    2a3e:	4798      	blx	r3
    2a40:	4620      	mov	r0, r4
    2a42:	f006 f971 	bl	8d28 <__shell_command_end>
    2a46:	bf00      	nop
    2a48:	00008a10 	.word	0x00008a10

Disassembly of section .text.__libc_init_array:

00002a4c <__libc_init_array>:
    2a4c:	b570      	push	{r4, r5, r6, lr}
    2a4e:	4e0d      	ldr	r6, [pc, #52]	; (2a84 <__libc_init_array+0x38>)
    2a50:	4d0d      	ldr	r5, [pc, #52]	; (2a88 <__libc_init_array+0x3c>)
    2a52:	1b76      	subs	r6, r6, r5
    2a54:	10b6      	asrs	r6, r6, #2
    2a56:	d006      	beq.n	2a66 <__libc_init_array+0x1a>
    2a58:	2400      	movs	r4, #0
    2a5a:	3401      	adds	r4, #1
    2a5c:	f855 3b04 	ldr.w	r3, [r5], #4
    2a60:	4798      	blx	r3
    2a62:	42a6      	cmp	r6, r4
    2a64:	d1f9      	bne.n	2a5a <__libc_init_array+0xe>
    2a66:	4e09      	ldr	r6, [pc, #36]	; (2a8c <__libc_init_array+0x40>)
    2a68:	4d09      	ldr	r5, [pc, #36]	; (2a90 <__libc_init_array+0x44>)
    2a6a:	f7ff ffcb 	bl	2a04 <__shell_command_start>
    2a6e:	1b76      	subs	r6, r6, r5
    2a70:	10b6      	asrs	r6, r6, #2
    2a72:	d006      	beq.n	2a82 <__libc_init_array+0x36>
    2a74:	2400      	movs	r4, #0
    2a76:	3401      	adds	r4, #1
    2a78:	f855 3b04 	ldr.w	r3, [r5], #4
    2a7c:	4798      	blx	r3
    2a7e:	42a6      	cmp	r6, r4
    2a80:	d1f9      	bne.n	2a76 <__libc_init_array+0x2a>
    2a82:	bd70      	pop	{r4, r5, r6, pc}
	...

Disassembly of section .text.memset:

00002a94 <memset>:
    2a94:	b4f0      	push	{r4, r5, r6, r7}
    2a96:	0786      	lsls	r6, r0, #30
    2a98:	d043      	beq.n	2b22 <memset+0x8e>
    2a9a:	1e54      	subs	r4, r2, #1
    2a9c:	2a00      	cmp	r2, #0
    2a9e:	d03e      	beq.n	2b1e <memset+0x8a>
    2aa0:	b2ca      	uxtb	r2, r1
    2aa2:	4603      	mov	r3, r0
    2aa4:	e002      	b.n	2aac <memset+0x18>
    2aa6:	f114 34ff 	adds.w	r4, r4, #4294967295
    2aaa:	d338      	bcc.n	2b1e <memset+0x8a>
    2aac:	f803 2b01 	strb.w	r2, [r3], #1
    2ab0:	079d      	lsls	r5, r3, #30
    2ab2:	d1f8      	bne.n	2aa6 <memset+0x12>
    2ab4:	2c03      	cmp	r4, #3
    2ab6:	d92b      	bls.n	2b10 <memset+0x7c>
    2ab8:	b2cd      	uxtb	r5, r1
    2aba:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
    2abe:	2c0f      	cmp	r4, #15
    2ac0:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
    2ac4:	d916      	bls.n	2af4 <memset+0x60>
    2ac6:	f1a4 0710 	sub.w	r7, r4, #16
    2aca:	093f      	lsrs	r7, r7, #4
    2acc:	f103 0620 	add.w	r6, r3, #32
    2ad0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
    2ad4:	f103 0210 	add.w	r2, r3, #16
    2ad8:	e942 5504 	strd	r5, r5, [r2, #-16]
    2adc:	e942 5502 	strd	r5, r5, [r2, #-8]
    2ae0:	3210      	adds	r2, #16
    2ae2:	42b2      	cmp	r2, r6
    2ae4:	d1f8      	bne.n	2ad8 <memset+0x44>
    2ae6:	f004 040f 	and.w	r4, r4, #15
    2aea:	3701      	adds	r7, #1
    2aec:	2c03      	cmp	r4, #3
    2aee:	eb03 1307 	add.w	r3, r3, r7, lsl #4
    2af2:	d90d      	bls.n	2b10 <memset+0x7c>
    2af4:	461e      	mov	r6, r3
    2af6:	4622      	mov	r2, r4
    2af8:	3a04      	subs	r2, #4
    2afa:	2a03      	cmp	r2, #3
    2afc:	f846 5b04 	str.w	r5, [r6], #4
    2b00:	d8fa      	bhi.n	2af8 <memset+0x64>
    2b02:	1f22      	subs	r2, r4, #4
    2b04:	f022 0203 	bic.w	r2, r2, #3
    2b08:	3204      	adds	r2, #4
    2b0a:	4413      	add	r3, r2
    2b0c:	f004 0403 	and.w	r4, r4, #3
    2b10:	b12c      	cbz	r4, 2b1e <memset+0x8a>
    2b12:	b2c9      	uxtb	r1, r1
    2b14:	441c      	add	r4, r3
    2b16:	f803 1b01 	strb.w	r1, [r3], #1
    2b1a:	429c      	cmp	r4, r3
    2b1c:	d1fb      	bne.n	2b16 <memset+0x82>
    2b1e:	bcf0      	pop	{r4, r5, r6, r7}
    2b20:	4770      	bx	lr
    2b22:	4614      	mov	r4, r2
    2b24:	4603      	mov	r3, r0
    2b26:	e7c5      	b.n	2ab4 <memset+0x20>

Disassembly of section .text._printf_r:

00002b28 <_printf_r>:
    2b28:	b40e      	push	{r1, r2, r3}
    2b2a:	b510      	push	{r4, lr}
    2b2c:	b083      	sub	sp, #12
    2b2e:	ac05      	add	r4, sp, #20
    2b30:	f854 2b04 	ldr.w	r2, [r4], #4
    2b34:	6881      	ldr	r1, [r0, #8]
    2b36:	4623      	mov	r3, r4
    2b38:	9401      	str	r4, [sp, #4]
    2b3a:	f000 f857 	bl	2bec <_vfprintf_r>
    2b3e:	b003      	add	sp, #12
    2b40:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    2b44:	b003      	add	sp, #12
    2b46:	4770      	bx	lr

Disassembly of section .text.printf:

00002b48 <printf>:
    2b48:	b40f      	push	{r0, r1, r2, r3}
    2b4a:	b510      	push	{r4, lr}
    2b4c:	4b07      	ldr	r3, [pc, #28]	; (2b6c <printf+0x24>)
    2b4e:	b082      	sub	sp, #8
    2b50:	ac04      	add	r4, sp, #16
    2b52:	f854 2b04 	ldr.w	r2, [r4], #4
    2b56:	6818      	ldr	r0, [r3, #0]
    2b58:	4623      	mov	r3, r4
    2b5a:	6881      	ldr	r1, [r0, #8]
    2b5c:	9401      	str	r4, [sp, #4]
    2b5e:	f000 f845 	bl	2bec <_vfprintf_r>
    2b62:	b002      	add	sp, #8
    2b64:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    2b68:	b004      	add	sp, #16
    2b6a:	4770      	bx	lr
    2b6c:	20000010 	.word	0x20000010

Disassembly of section .text.strtok:

00002b70 <strtok>:
    2b70:	4a02      	ldr	r2, [pc, #8]	; (2b7c <strtok+0xc>)
    2b72:	2301      	movs	r3, #1
    2b74:	6812      	ldr	r2, [r2, #0]
    2b76:	325c      	adds	r2, #92	; 0x5c
    2b78:	f000 b802 	b.w	2b80 <__strtok_r>
    2b7c:	20000010 	.word	0x20000010

Disassembly of section .text.__strtok_r:

00002b80 <__strtok_r>:
    2b80:	b4f0      	push	{r4, r5, r6, r7}
    2b82:	b320      	cbz	r0, 2bce <__strtok_r+0x4e>
    2b84:	4607      	mov	r7, r0
    2b86:	460d      	mov	r5, r1
    2b88:	f817 6b01 	ldrb.w	r6, [r7], #1
    2b8c:	e001      	b.n	2b92 <__strtok_r+0x12>
    2b8e:	42a6      	cmp	r6, r4
    2b90:	d016      	beq.n	2bc0 <__strtok_r+0x40>
    2b92:	f815 4b01 	ldrb.w	r4, [r5], #1
    2b96:	2c00      	cmp	r4, #0
    2b98:	d1f9      	bne.n	2b8e <__strtok_r+0xe>
    2b9a:	b1ee      	cbz	r6, 2bd8 <__strtok_r+0x58>
    2b9c:	463e      	mov	r6, r7
    2b9e:	460c      	mov	r4, r1
    2ba0:	f816 5b01 	ldrb.w	r5, [r6], #1
    2ba4:	e000      	b.n	2ba8 <__strtok_r+0x28>
    2ba6:	b173      	cbz	r3, 2bc6 <__strtok_r+0x46>
    2ba8:	f814 3b01 	ldrb.w	r3, [r4], #1
    2bac:	429d      	cmp	r5, r3
    2bae:	d1fa      	bne.n	2ba6 <__strtok_r+0x26>
    2bb0:	b15d      	cbz	r5, 2bca <__strtok_r+0x4a>
    2bb2:	2300      	movs	r3, #0
    2bb4:	703b      	strb	r3, [r7, #0]
    2bb6:	6016      	str	r6, [r2, #0]
    2bb8:	4606      	mov	r6, r0
    2bba:	4630      	mov	r0, r6
    2bbc:	bcf0      	pop	{r4, r5, r6, r7}
    2bbe:	4770      	bx	lr
    2bc0:	b163      	cbz	r3, 2bdc <__strtok_r+0x5c>
    2bc2:	4638      	mov	r0, r7
    2bc4:	e7de      	b.n	2b84 <__strtok_r+0x4>
    2bc6:	4637      	mov	r7, r6
    2bc8:	e7e8      	b.n	2b9c <__strtok_r+0x1c>
    2bca:	462e      	mov	r6, r5
    2bcc:	e7f3      	b.n	2bb6 <__strtok_r+0x36>
    2bce:	6810      	ldr	r0, [r2, #0]
    2bd0:	2800      	cmp	r0, #0
    2bd2:	d1d7      	bne.n	2b84 <__strtok_r+0x4>
    2bd4:	4606      	mov	r6, r0
    2bd6:	e7f0      	b.n	2bba <__strtok_r+0x3a>
    2bd8:	6016      	str	r6, [r2, #0]
    2bda:	e7ee      	b.n	2bba <__strtok_r+0x3a>
    2bdc:	6017      	str	r7, [r2, #0]
    2bde:	4606      	mov	r6, r0
    2be0:	7003      	strb	r3, [r0, #0]
    2be2:	e7ea      	b.n	2bba <__strtok_r+0x3a>

Disassembly of section .text.strtok_r:

00002be4 <strtok_r>:
    2be4:	2301      	movs	r3, #1
    2be6:	f7ff bfcb 	b.w	2b80 <__strtok_r>
    2bea:	bf00      	nop

Disassembly of section .text._vfprintf_r:

00002bec <_vfprintf_r>:
    2bec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    2bf0:	b0c1      	sub	sp, #260	; 0x104
    2bf2:	461c      	mov	r4, r3
    2bf4:	4688      	mov	r8, r1
    2bf6:	4692      	mov	sl, r2
    2bf8:	4605      	mov	r5, r0
    2bfa:	900a      	str	r0, [sp, #40]	; 0x28
    2bfc:	f002 ff8c 	bl	5b18 <_localeconv_r>
    2c00:	6803      	ldr	r3, [r0, #0]
    2c02:	940d      	str	r4, [sp, #52]	; 0x34
    2c04:	4618      	mov	r0, r3
    2c06:	9313      	str	r3, [sp, #76]	; 0x4c
    2c08:	f003 ffde 	bl	6bc8 <strlen>
    2c0c:	9011      	str	r0, [sp, #68]	; 0x44
    2c0e:	b11d      	cbz	r5, 2c18 <_vfprintf_r+0x2c>
    2c10:	6bab      	ldr	r3, [r5, #56]	; 0x38
    2c12:	2b00      	cmp	r3, #0
    2c14:	f000 80fe 	beq.w	2e14 <_vfprintf_r+0x228>
    2c18:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
    2c1c:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
    2c20:	07cd      	lsls	r5, r1, #31
    2c22:	b293      	uxth	r3, r2
    2c24:	d402      	bmi.n	2c2c <_vfprintf_r+0x40>
    2c26:	0598      	lsls	r0, r3, #22
    2c28:	f140 813e 	bpl.w	2ea8 <_vfprintf_r+0x2bc>
    2c2c:	0499      	lsls	r1, r3, #18
    2c2e:	d40a      	bmi.n	2c46 <_vfprintf_r+0x5a>
    2c30:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
    2c34:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
    2c38:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    2c3c:	f8a8 300c 	strh.w	r3, [r8, #12]
    2c40:	f8c8 1064 	str.w	r1, [r8, #100]	; 0x64
    2c44:	b29b      	uxth	r3, r3
    2c46:	071a      	lsls	r2, r3, #28
    2c48:	f140 80ae 	bpl.w	2da8 <_vfprintf_r+0x1bc>
    2c4c:	f8d8 2010 	ldr.w	r2, [r8, #16]
    2c50:	2a00      	cmp	r2, #0
    2c52:	f000 80a9 	beq.w	2da8 <_vfprintf_r+0x1bc>
    2c56:	f003 021a 	and.w	r2, r3, #26
    2c5a:	2a0a      	cmp	r2, #10
    2c5c:	f000 80c0 	beq.w	2de0 <_vfprintf_r+0x1f4>
    2c60:	2300      	movs	r3, #0
    2c62:	e9cd 3317 	strd	r3, r3, [sp, #92]	; 0x5c
    2c66:	e9cd 3315 	strd	r3, r3, [sp, #84]	; 0x54
    2c6a:	e9cd 3324 	strd	r3, r3, [sp, #144]	; 0x90
    2c6e:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    2c72:	9314      	str	r3, [sp, #80]	; 0x50
    2c74:	9310      	str	r3, [sp, #64]	; 0x40
    2c76:	9312      	str	r3, [sp, #72]	; 0x48
    2c78:	9309      	str	r3, [sp, #36]	; 0x24
    2c7a:	f8cd 908c 	str.w	r9, [sp, #140]	; 0x8c
    2c7e:	f89a 3000 	ldrb.w	r3, [sl]
    2c82:	2b00      	cmp	r3, #0
    2c84:	f000 80fb 	beq.w	2e7e <_vfprintf_r+0x292>
    2c88:	2b25      	cmp	r3, #37	; 0x25
    2c8a:	4654      	mov	r4, sl
    2c8c:	d102      	bne.n	2c94 <_vfprintf_r+0xa8>
    2c8e:	e01c      	b.n	2cca <_vfprintf_r+0xde>
    2c90:	2b25      	cmp	r3, #37	; 0x25
    2c92:	d003      	beq.n	2c9c <_vfprintf_r+0xb0>
    2c94:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    2c98:	2b00      	cmp	r3, #0
    2c9a:	d1f9      	bne.n	2c90 <_vfprintf_r+0xa4>
    2c9c:	eba4 050a 	sub.w	r5, r4, sl
    2ca0:	b17d      	cbz	r5, 2cc2 <_vfprintf_r+0xd6>
    2ca2:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
    2ca6:	3301      	adds	r3, #1
    2ca8:	442a      	add	r2, r5
    2caa:	2b07      	cmp	r3, #7
    2cac:	e9c9 a500 	strd	sl, r5, [r9]
    2cb0:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
    2cb4:	f300 80da 	bgt.w	2e6c <_vfprintf_r+0x280>
    2cb8:	f109 0908 	add.w	r9, r9, #8
    2cbc:	9b09      	ldr	r3, [sp, #36]	; 0x24
    2cbe:	442b      	add	r3, r5
    2cc0:	9309      	str	r3, [sp, #36]	; 0x24
    2cc2:	7823      	ldrb	r3, [r4, #0]
    2cc4:	2b00      	cmp	r3, #0
    2cc6:	f000 80da 	beq.w	2e7e <_vfprintf_r+0x292>
    2cca:	2300      	movs	r3, #0
    2ccc:	461a      	mov	r2, r3
    2cce:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
    2cd2:	4619      	mov	r1, r3
    2cd4:	930b      	str	r3, [sp, #44]	; 0x2c
    2cd6:	469b      	mov	fp, r3
    2cd8:	f04f 33ff 	mov.w	r3, #4294967295
    2cdc:	7866      	ldrb	r6, [r4, #1]
    2cde:	f104 0a01 	add.w	sl, r4, #1
    2ce2:	9308      	str	r3, [sp, #32]
    2ce4:	f10a 0a01 	add.w	sl, sl, #1
    2ce8:	f1a6 0320 	sub.w	r3, r6, #32
    2cec:	2b58      	cmp	r3, #88	; 0x58
    2cee:	f200 83e4 	bhi.w	34ba <_vfprintf_r+0x8ce>
    2cf2:	e8df f013 	tbh	[pc, r3, lsl #1]
    2cf6:	02bb      	.short	0x02bb
    2cf8:	03e203e2 	.word	0x03e203e2
    2cfc:	03e202c3 	.word	0x03e202c3
    2d00:	03e203e2 	.word	0x03e203e2
    2d04:	03e203e2 	.word	0x03e203e2
    2d08:	031b03e2 	.word	0x031b03e2
    2d0c:	03e2032a 	.word	0x03e2032a
    2d10:	0332032f 	.word	0x0332032f
    2d14:	024d03e2 	.word	0x024d03e2
    2d18:	00e100e1 	.word	0x00e100e1
    2d1c:	00e100e1 	.word	0x00e100e1
    2d20:	00e100e1 	.word	0x00e100e1
    2d24:	00e100e1 	.word	0x00e100e1
    2d28:	03e200e1 	.word	0x03e200e1
    2d2c:	03e203e2 	.word	0x03e203e2
    2d30:	03e203e2 	.word	0x03e203e2
    2d34:	03e203e2 	.word	0x03e203e2
    2d38:	03e203e2 	.word	0x03e203e2
    2d3c:	034c03e2 	.word	0x034c03e2
    2d40:	03e20364 	.word	0x03e20364
    2d44:	03e20364 	.word	0x03e20364
    2d48:	03e203e2 	.word	0x03e203e2
    2d4c:	03b803e2 	.word	0x03b803e2
    2d50:	03e203e2 	.word	0x03e203e2
    2d54:	03e20093 	.word	0x03e20093
    2d58:	03e203e2 	.word	0x03e203e2
    2d5c:	03e203e2 	.word	0x03e203e2
    2d60:	03e200a7 	.word	0x03e200a7
    2d64:	025203e2 	.word	0x025203e2
    2d68:	03e203e2 	.word	0x03e203e2
    2d6c:	03e203e2 	.word	0x03e203e2
    2d70:	03e203e2 	.word	0x03e203e2
    2d74:	03e203e2 	.word	0x03e203e2
    2d78:	03e203e2 	.word	0x03e203e2
    2d7c:	00f002a7 	.word	0x00f002a7
    2d80:	03640364 	.word	0x03640364
    2d84:	023b0364 	.word	0x023b0364
    2d88:	03e200f0 	.word	0x03e200f0
    2d8c:	024003e2 	.word	0x024003e2
    2d90:	030a03e2 	.word	0x030a03e2
    2d94:	03a30095 	.word	0x03a30095
    2d98:	03e203b3 	.word	0x03e203b3
    2d9c:	03e202e7 	.word	0x03e202e7
    2da0:	03e200a9 	.word	0x03e200a9
    2da4:	02c803e2 	.word	0x02c803e2
    2da8:	4641      	mov	r1, r8
    2daa:	980a      	ldr	r0, [sp, #40]	; 0x28
    2dac:	f001 fa5e 	bl	426c <__swsetup_r>
    2db0:	b178      	cbz	r0, 2dd2 <_vfprintf_r+0x1e6>
    2db2:	f8d8 3064 	ldr.w	r3, [r8, #100]	; 0x64
    2db6:	07db      	lsls	r3, r3, #31
    2db8:	d404      	bmi.n	2dc4 <_vfprintf_r+0x1d8>
    2dba:	f8b8 300c 	ldrh.w	r3, [r8, #12]
    2dbe:	059f      	lsls	r7, r3, #22
    2dc0:	f140 8373 	bpl.w	34aa <_vfprintf_r+0x8be>
    2dc4:	f04f 33ff 	mov.w	r3, #4294967295
    2dc8:	9309      	str	r3, [sp, #36]	; 0x24
    2dca:	9809      	ldr	r0, [sp, #36]	; 0x24
    2dcc:	b041      	add	sp, #260	; 0x104
    2dce:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2dd2:	f8b8 300c 	ldrh.w	r3, [r8, #12]
    2dd6:	f003 021a 	and.w	r2, r3, #26
    2dda:	2a0a      	cmp	r2, #10
    2ddc:	f47f af40 	bne.w	2c60 <_vfprintf_r+0x74>
    2de0:	f9b8 200e 	ldrsh.w	r2, [r8, #14]
    2de4:	2a00      	cmp	r2, #0
    2de6:	f6ff af3b 	blt.w	2c60 <_vfprintf_r+0x74>
    2dea:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
    2dee:	07d6      	lsls	r6, r2, #31
    2df0:	d405      	bmi.n	2dfe <_vfprintf_r+0x212>
    2df2:	059d      	lsls	r5, r3, #22
    2df4:	d403      	bmi.n	2dfe <_vfprintf_r+0x212>
    2df6:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
    2dfa:	f002 febb 	bl	5b74 <__retarget_lock_release_recursive>
    2dfe:	4623      	mov	r3, r4
    2e00:	4652      	mov	r2, sl
    2e02:	4641      	mov	r1, r8
    2e04:	980a      	ldr	r0, [sp, #40]	; 0x28
    2e06:	f001 f9a9 	bl	415c <__sbprintf>
    2e0a:	9009      	str	r0, [sp, #36]	; 0x24
    2e0c:	9809      	ldr	r0, [sp, #36]	; 0x24
    2e0e:	b041      	add	sp, #260	; 0x104
    2e10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2e14:	980a      	ldr	r0, [sp, #40]	; 0x28
    2e16:	f002 fc15 	bl	5644 <__sinit>
    2e1a:	e6fd      	b.n	2c18 <_vfprintf_r+0x2c>
    2e1c:	f04b 0b10 	orr.w	fp, fp, #16
    2e20:	f01b 0320 	ands.w	r3, fp, #32
    2e24:	f040 8324 	bne.w	3470 <_vfprintf_r+0x884>
    2e28:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    2e2a:	f852 4b04 	ldr.w	r4, [r2], #4
    2e2e:	920d      	str	r2, [sp, #52]	; 0x34
    2e30:	f01b 0210 	ands.w	r2, fp, #16
    2e34:	d104      	bne.n	2e40 <_vfprintf_r+0x254>
    2e36:	f01b 0340 	ands.w	r3, fp, #64	; 0x40
    2e3a:	bf1c      	itt	ne
    2e3c:	4613      	movne	r3, r2
    2e3e:	b2a4      	uxthne	r4, r4
    2e40:	2500      	movs	r5, #0
    2e42:	e1cb      	b.n	31dc <_vfprintf_r+0x5f0>
    2e44:	f04b 0b10 	orr.w	fp, fp, #16
    2e48:	f01b 0f20 	tst.w	fp, #32
    2e4c:	f040 831b 	bne.w	3486 <_vfprintf_r+0x89a>
    2e50:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    2e52:	f01b 0f10 	tst.w	fp, #16
    2e56:	f853 4b04 	ldr.w	r4, [r3], #4
    2e5a:	930d      	str	r3, [sp, #52]	; 0x34
    2e5c:	d103      	bne.n	2e66 <_vfprintf_r+0x27a>
    2e5e:	f01b 0f40 	tst.w	fp, #64	; 0x40
    2e62:	bf18      	it	ne
    2e64:	b2a4      	uxthne	r4, r4
    2e66:	2500      	movs	r5, #0
    2e68:	2301      	movs	r3, #1
    2e6a:	e1b7      	b.n	31dc <_vfprintf_r+0x5f0>
    2e6c:	aa23      	add	r2, sp, #140	; 0x8c
    2e6e:	4641      	mov	r1, r8
    2e70:	980a      	ldr	r0, [sp, #40]	; 0x28
    2e72:	f003 ff13 	bl	6c9c <__sprint_r>
    2e76:	b940      	cbnz	r0, 2e8a <_vfprintf_r+0x29e>
    2e78:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    2e7c:	e71e      	b.n	2cbc <_vfprintf_r+0xd0>
    2e7e:	9b25      	ldr	r3, [sp, #148]	; 0x94
    2e80:	2b00      	cmp	r3, #0
    2e82:	f041 8041 	bne.w	3f08 <_vfprintf_r+0x131c>
    2e86:	2300      	movs	r3, #0
    2e88:	9324      	str	r3, [sp, #144]	; 0x90
    2e8a:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
    2e8e:	f8b8 300c 	ldrh.w	r3, [r8, #12]
    2e92:	07d1      	lsls	r1, r2, #31
    2e94:	d402      	bmi.n	2e9c <_vfprintf_r+0x2b0>
    2e96:	059a      	lsls	r2, r3, #22
    2e98:	f140 8300 	bpl.w	349c <_vfprintf_r+0x8b0>
    2e9c:	065b      	lsls	r3, r3, #25
    2e9e:	d491      	bmi.n	2dc4 <_vfprintf_r+0x1d8>
    2ea0:	9809      	ldr	r0, [sp, #36]	; 0x24
    2ea2:	b041      	add	sp, #260	; 0x104
    2ea4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    2ea8:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
    2eac:	f002 fe5a 	bl	5b64 <__retarget_lock_acquire_recursive>
    2eb0:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
    2eb4:	b293      	uxth	r3, r2
    2eb6:	e6b9      	b.n	2c2c <_vfprintf_r+0x40>
    2eb8:	2000      	movs	r0, #0
    2eba:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
    2ebe:	f81a 6b01 	ldrb.w	r6, [sl], #1
    2ec2:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    2ec6:	eb03 0040 	add.w	r0, r3, r0, lsl #1
    2eca:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
    2ece:	2b09      	cmp	r3, #9
    2ed0:	d9f5      	bls.n	2ebe <_vfprintf_r+0x2d2>
    2ed2:	900b      	str	r0, [sp, #44]	; 0x2c
    2ed4:	e708      	b.n	2ce8 <_vfprintf_r+0xfc>
    2ed6:	2a00      	cmp	r2, #0
    2ed8:	f041 811d 	bne.w	4116 <_vfprintf_r+0x152a>
    2edc:	f01b 0f20 	tst.w	fp, #32
    2ee0:	f000 825e 	beq.w	33a0 <_vfprintf_r+0x7b4>
    2ee4:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    2ee6:	3407      	adds	r4, #7
    2ee8:	f024 0307 	bic.w	r3, r4, #7
    2eec:	f103 0208 	add.w	r2, r3, #8
    2ef0:	920d      	str	r2, [sp, #52]	; 0x34
    2ef2:	e9d3 4500 	ldrd	r4, r5, [r3]
    2ef6:	2c00      	cmp	r4, #0
    2ef8:	f175 0300 	sbcs.w	r3, r5, #0
    2efc:	f2c0 850d 	blt.w	391a <_vfprintf_r+0xd2e>
    2f00:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    2f04:	9b08      	ldr	r3, [sp, #32]
    2f06:	3301      	adds	r3, #1
    2f08:	f000 846c 	beq.w	37e4 <_vfprintf_r+0xbf8>
    2f0c:	2301      	movs	r3, #1
    2f0e:	f02b 0280 	bic.w	r2, fp, #128	; 0x80
    2f12:	9206      	str	r2, [sp, #24]
    2f14:	ea54 0205 	orrs.w	r2, r4, r5
    2f18:	f040 8169 	bne.w	31ee <_vfprintf_r+0x602>
    2f1c:	9a08      	ldr	r2, [sp, #32]
    2f1e:	2a00      	cmp	r2, #0
    2f20:	f040 85aa 	bne.w	3a78 <_vfprintf_r+0xe8c>
    2f24:	2b00      	cmp	r3, #0
    2f26:	f040 84c1 	bne.w	38ac <_vfprintf_r+0xcc0>
    2f2a:	f01b 0301 	ands.w	r3, fp, #1
    2f2e:	930c      	str	r3, [sp, #48]	; 0x30
    2f30:	f000 85c4 	beq.w	3abc <_vfprintf_r+0xed0>
    2f34:	2330      	movs	r3, #48	; 0x30
    2f36:	aa40      	add	r2, sp, #256	; 0x100
    2f38:	f802 3d41 	strb.w	r3, [r2, #-65]!
    2f3c:	920e      	str	r2, [sp, #56]	; 0x38
    2f3e:	9b08      	ldr	r3, [sp, #32]
    2f40:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    2f42:	4293      	cmp	r3, r2
    2f44:	bfb8      	it	lt
    2f46:	4613      	movlt	r3, r2
    2f48:	9307      	str	r3, [sp, #28]
    2f4a:	2300      	movs	r3, #0
    2f4c:	930f      	str	r3, [sp, #60]	; 0x3c
    2f4e:	b117      	cbz	r7, 2f56 <_vfprintf_r+0x36a>
    2f50:	9b07      	ldr	r3, [sp, #28]
    2f52:	3301      	adds	r3, #1
    2f54:	9307      	str	r3, [sp, #28]
    2f56:	9b06      	ldr	r3, [sp, #24]
    2f58:	f013 0302 	ands.w	r3, r3, #2
    2f5c:	d002      	beq.n	2f64 <_vfprintf_r+0x378>
    2f5e:	9a07      	ldr	r2, [sp, #28]
    2f60:	3202      	adds	r2, #2
    2f62:	9207      	str	r2, [sp, #28]
    2f64:	9a06      	ldr	r2, [sp, #24]
    2f66:	9c25      	ldr	r4, [sp, #148]	; 0x94
    2f68:	f012 0b84 	ands.w	fp, r2, #132	; 0x84
    2f6c:	d142      	bne.n	2ff4 <_vfprintf_r+0x408>
    2f6e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    2f70:	9907      	ldr	r1, [sp, #28]
    2f72:	1a55      	subs	r5, r2, r1
    2f74:	2d00      	cmp	r5, #0
    2f76:	dd3d      	ble.n	2ff4 <_vfprintf_r+0x408>
    2f78:	2d10      	cmp	r5, #16
    2f7a:	9a24      	ldr	r2, [sp, #144]	; 0x90
    2f7c:	dd2c      	ble.n	2fd8 <_vfprintf_r+0x3ec>
    2f7e:	4648      	mov	r0, r9
    2f80:	4621      	mov	r1, r4
    2f82:	46a9      	mov	r9, r5
    2f84:	2710      	movs	r7, #16
    2f86:	461d      	mov	r5, r3
    2f88:	9c0a      	ldr	r4, [sp, #40]	; 0x28
    2f8a:	4603      	mov	r3, r0
    2f8c:	e006      	b.n	2f9c <_vfprintf_r+0x3b0>
    2f8e:	f1a9 0910 	sub.w	r9, r9, #16
    2f92:	f1b9 0f10 	cmp.w	r9, #16
    2f96:	f103 0308 	add.w	r3, r3, #8
    2f9a:	dd18      	ble.n	2fce <_vfprintf_r+0x3e2>
    2f9c:	3201      	adds	r2, #1
    2f9e:	48c5      	ldr	r0, [pc, #788]	; (32b4 <_vfprintf_r+0x6c8>)
    2fa0:	3110      	adds	r1, #16
    2fa2:	2a07      	cmp	r2, #7
    2fa4:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
    2fa8:	e9c3 0700 	strd	r0, r7, [r3]
    2fac:	ddef      	ble.n	2f8e <_vfprintf_r+0x3a2>
    2fae:	aa23      	add	r2, sp, #140	; 0x8c
    2fb0:	4641      	mov	r1, r8
    2fb2:	4620      	mov	r0, r4
    2fb4:	f003 fe72 	bl	6c9c <__sprint_r>
    2fb8:	2800      	cmp	r0, #0
    2fba:	f47f af66 	bne.w	2e8a <_vfprintf_r+0x29e>
    2fbe:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
    2fc2:	f1a9 0910 	sub.w	r9, r9, #16
    2fc6:	f1b9 0f10 	cmp.w	r9, #16
    2fca:	ab30      	add	r3, sp, #192	; 0xc0
    2fcc:	dce6      	bgt.n	2f9c <_vfprintf_r+0x3b0>
    2fce:	4618      	mov	r0, r3
    2fd0:	460c      	mov	r4, r1
    2fd2:	462b      	mov	r3, r5
    2fd4:	464d      	mov	r5, r9
    2fd6:	4681      	mov	r9, r0
    2fd8:	3201      	adds	r2, #1
    2fda:	49b6      	ldr	r1, [pc, #728]	; (32b4 <_vfprintf_r+0x6c8>)
    2fdc:	442c      	add	r4, r5
    2fde:	2a07      	cmp	r2, #7
    2fe0:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    2fe4:	e9c9 1500 	strd	r1, r5, [r9]
    2fe8:	f300 84b3 	bgt.w	3952 <_vfprintf_r+0xd66>
    2fec:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    2ff0:	f109 0908 	add.w	r9, r9, #8
    2ff4:	b177      	cbz	r7, 3014 <_vfprintf_r+0x428>
    2ff6:	2001      	movs	r0, #1
    2ff8:	9a24      	ldr	r2, [sp, #144]	; 0x90
    2ffa:	4404      	add	r4, r0
    2ffc:	4402      	add	r2, r0
    2ffe:	f10d 016f 	add.w	r1, sp, #111	; 0x6f
    3002:	2a07      	cmp	r2, #7
    3004:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3008:	e9c9 1000 	strd	r1, r0, [r9]
    300c:	f300 83d0 	bgt.w	37b0 <_vfprintf_r+0xbc4>
    3010:	f109 0908 	add.w	r9, r9, #8
    3014:	b16b      	cbz	r3, 3032 <_vfprintf_r+0x446>
    3016:	2102      	movs	r1, #2
    3018:	9b24      	ldr	r3, [sp, #144]	; 0x90
    301a:	440c      	add	r4, r1
    301c:	3301      	adds	r3, #1
    301e:	aa1c      	add	r2, sp, #112	; 0x70
    3020:	2b07      	cmp	r3, #7
    3022:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
    3026:	e9c9 2100 	strd	r2, r1, [r9]
    302a:	f300 83cf 	bgt.w	37cc <_vfprintf_r+0xbe0>
    302e:	f109 0908 	add.w	r9, r9, #8
    3032:	f1bb 0f80 	cmp.w	fp, #128	; 0x80
    3036:	f000 82b2 	beq.w	359e <_vfprintf_r+0x9b2>
    303a:	9b08      	ldr	r3, [sp, #32]
    303c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    303e:	1a9d      	subs	r5, r3, r2
    3040:	2d00      	cmp	r5, #0
    3042:	dd34      	ble.n	30ae <_vfprintf_r+0x4c2>
    3044:	2d10      	cmp	r5, #16
    3046:	9a24      	ldr	r2, [sp, #144]	; 0x90
    3048:	f340 85f6 	ble.w	3c38 <_vfprintf_r+0x104c>
    304c:	f8df b270 	ldr.w	fp, [pc, #624]	; 32c0 <_vfprintf_r+0x6d4>
    3050:	4623      	mov	r3, r4
    3052:	2710      	movs	r7, #16
    3054:	465c      	mov	r4, fp
    3056:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    305a:	e004      	b.n	3066 <_vfprintf_r+0x47a>
    305c:	3d10      	subs	r5, #16
    305e:	2d10      	cmp	r5, #16
    3060:	f109 0908 	add.w	r9, r9, #8
    3064:	dd16      	ble.n	3094 <_vfprintf_r+0x4a8>
    3066:	3201      	adds	r2, #1
    3068:	3310      	adds	r3, #16
    306a:	2a07      	cmp	r2, #7
    306c:	e9cd 2324 	strd	r2, r3, [sp, #144]	; 0x90
    3070:	e9c9 4700 	strd	r4, r7, [r9]
    3074:	ddf2      	ble.n	305c <_vfprintf_r+0x470>
    3076:	aa23      	add	r2, sp, #140	; 0x8c
    3078:	4641      	mov	r1, r8
    307a:	4658      	mov	r0, fp
    307c:	f003 fe0e 	bl	6c9c <__sprint_r>
    3080:	2800      	cmp	r0, #0
    3082:	f47f af02 	bne.w	2e8a <_vfprintf_r+0x29e>
    3086:	e9dd 2324 	ldrd	r2, r3, [sp, #144]	; 0x90
    308a:	3d10      	subs	r5, #16
    308c:	2d10      	cmp	r5, #16
    308e:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3092:	dce8      	bgt.n	3066 <_vfprintf_r+0x47a>
    3094:	46a3      	mov	fp, r4
    3096:	461c      	mov	r4, r3
    3098:	3201      	adds	r2, #1
    309a:	442c      	add	r4, r5
    309c:	2a07      	cmp	r2, #7
    309e:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    30a2:	e9c9 b500 	strd	fp, r5, [r9]
    30a6:	f300 83af 	bgt.w	3808 <_vfprintf_r+0xc1c>
    30aa:	f109 0908 	add.w	r9, r9, #8
    30ae:	9b06      	ldr	r3, [sp, #24]
    30b0:	05dd      	lsls	r5, r3, #23
    30b2:	f100 8218 	bmi.w	34e6 <_vfprintf_r+0x8fa>
    30b6:	9b24      	ldr	r3, [sp, #144]	; 0x90
    30b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    30ba:	3301      	adds	r3, #1
    30bc:	990e      	ldr	r1, [sp, #56]	; 0x38
    30be:	4414      	add	r4, r2
    30c0:	2b07      	cmp	r3, #7
    30c2:	9425      	str	r4, [sp, #148]	; 0x94
    30c4:	e9c9 1200 	strd	r1, r2, [r9]
    30c8:	9324      	str	r3, [sp, #144]	; 0x90
    30ca:	f300 8365 	bgt.w	3798 <_vfprintf_r+0xbac>
    30ce:	f109 0908 	add.w	r9, r9, #8
    30d2:	9b06      	ldr	r3, [sp, #24]
    30d4:	0758      	lsls	r0, r3, #29
    30d6:	d539      	bpl.n	314c <_vfprintf_r+0x560>
    30d8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    30da:	9a07      	ldr	r2, [sp, #28]
    30dc:	1a9d      	subs	r5, r3, r2
    30de:	2d00      	cmp	r5, #0
    30e0:	dd34      	ble.n	314c <_vfprintf_r+0x560>
    30e2:	2d10      	cmp	r5, #16
    30e4:	9b24      	ldr	r3, [sp, #144]	; 0x90
    30e6:	dd1f      	ble.n	3128 <_vfprintf_r+0x53c>
    30e8:	2610      	movs	r6, #16
    30ea:	9f0a      	ldr	r7, [sp, #40]	; 0x28
    30ec:	e004      	b.n	30f8 <_vfprintf_r+0x50c>
    30ee:	3d10      	subs	r5, #16
    30f0:	2d10      	cmp	r5, #16
    30f2:	f109 0908 	add.w	r9, r9, #8
    30f6:	dd17      	ble.n	3128 <_vfprintf_r+0x53c>
    30f8:	3301      	adds	r3, #1
    30fa:	4a6e      	ldr	r2, [pc, #440]	; (32b4 <_vfprintf_r+0x6c8>)
    30fc:	3410      	adds	r4, #16
    30fe:	2b07      	cmp	r3, #7
    3100:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
    3104:	e9c9 2600 	strd	r2, r6, [r9]
    3108:	ddf1      	ble.n	30ee <_vfprintf_r+0x502>
    310a:	aa23      	add	r2, sp, #140	; 0x8c
    310c:	4641      	mov	r1, r8
    310e:	4638      	mov	r0, r7
    3110:	f003 fdc4 	bl	6c9c <__sprint_r>
    3114:	2800      	cmp	r0, #0
    3116:	f47f aeb8 	bne.w	2e8a <_vfprintf_r+0x29e>
    311a:	e9dd 3424 	ldrd	r3, r4, [sp, #144]	; 0x90
    311e:	3d10      	subs	r5, #16
    3120:	2d10      	cmp	r5, #16
    3122:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3126:	dce7      	bgt.n	30f8 <_vfprintf_r+0x50c>
    3128:	3301      	adds	r3, #1
    312a:	4a62      	ldr	r2, [pc, #392]	; (32b4 <_vfprintf_r+0x6c8>)
    312c:	442c      	add	r4, r5
    312e:	2b07      	cmp	r3, #7
    3130:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
    3134:	e9c9 2500 	strd	r2, r5, [r9]
    3138:	dd08      	ble.n	314c <_vfprintf_r+0x560>
    313a:	aa23      	add	r2, sp, #140	; 0x8c
    313c:	4641      	mov	r1, r8
    313e:	980a      	ldr	r0, [sp, #40]	; 0x28
    3140:	f003 fdac 	bl	6c9c <__sprint_r>
    3144:	2800      	cmp	r0, #0
    3146:	f47f aea0 	bne.w	2e8a <_vfprintf_r+0x29e>
    314a:	9c25      	ldr	r4, [sp, #148]	; 0x94
    314c:	9b09      	ldr	r3, [sp, #36]	; 0x24
    314e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    3150:	9907      	ldr	r1, [sp, #28]
    3152:	428a      	cmp	r2, r1
    3154:	bfac      	ite	ge
    3156:	189b      	addge	r3, r3, r2
    3158:	185b      	addlt	r3, r3, r1
    315a:	9309      	str	r3, [sp, #36]	; 0x24
    315c:	2c00      	cmp	r4, #0
    315e:	f040 825a 	bne.w	3616 <_vfprintf_r+0xa2a>
    3162:	2300      	movs	r3, #0
    3164:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3168:	9324      	str	r3, [sp, #144]	; 0x90
    316a:	e588      	b.n	2c7e <_vfprintf_r+0x92>
    316c:	f04b 0b40 	orr.w	fp, fp, #64	; 0x40
    3170:	f89a 6000 	ldrb.w	r6, [sl]
    3174:	e5b6      	b.n	2ce4 <_vfprintf_r+0xf8>
    3176:	f89a 6000 	ldrb.w	r6, [sl]
    317a:	2e6c      	cmp	r6, #108	; 0x6c
    317c:	bf03      	ittte	eq
    317e:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
    3182:	f04b 0b20 	orreq.w	fp, fp, #32
    3186:	f10a 0a01 	addeq.w	sl, sl, #1
    318a:	f04b 0b10 	orrne.w	fp, fp, #16
    318e:	e5a9      	b.n	2ce4 <_vfprintf_r+0xf8>
    3190:	f04b 0b80 	orr.w	fp, fp, #128	; 0x80
    3194:	f89a 6000 	ldrb.w	r6, [sl]
    3198:	e5a4      	b.n	2ce4 <_vfprintf_r+0xf8>
    319a:	2a00      	cmp	r2, #0
    319c:	f040 87bf 	bne.w	411e <_vfprintf_r+0x1532>
    31a0:	4b45      	ldr	r3, [pc, #276]	; (32b8 <_vfprintf_r+0x6cc>)
    31a2:	f01b 0f20 	tst.w	fp, #32
    31a6:	9317      	str	r3, [sp, #92]	; 0x5c
    31a8:	d075      	beq.n	3296 <_vfprintf_r+0x6aa>
    31aa:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    31ac:	3407      	adds	r4, #7
    31ae:	f024 0307 	bic.w	r3, r4, #7
    31b2:	f103 0208 	add.w	r2, r3, #8
    31b6:	920d      	str	r2, [sp, #52]	; 0x34
    31b8:	e9d3 4500 	ldrd	r4, r5, [r3]
    31bc:	f01b 0f01 	tst.w	fp, #1
    31c0:	f000 8320 	beq.w	3804 <_vfprintf_r+0xc18>
    31c4:	ea54 0305 	orrs.w	r3, r4, r5
    31c8:	f000 831c 	beq.w	3804 <_vfprintf_r+0xc18>
    31cc:	2330      	movs	r3, #48	; 0x30
    31ce:	f88d 3070 	strb.w	r3, [sp, #112]	; 0x70
    31d2:	2302      	movs	r3, #2
    31d4:	f88d 6071 	strb.w	r6, [sp, #113]	; 0x71
    31d8:	f04b 0b02 	orr.w	fp, fp, #2
    31dc:	2700      	movs	r7, #0
    31de:	9a08      	ldr	r2, [sp, #32]
    31e0:	f88d 706f 	strb.w	r7, [sp, #111]	; 0x6f
    31e4:	3201      	adds	r2, #1
    31e6:	f47f ae92 	bne.w	2f0e <_vfprintf_r+0x322>
    31ea:	f8cd b018 	str.w	fp, [sp, #24]
    31ee:	2b01      	cmp	r3, #1
    31f0:	f000 82fa 	beq.w	37e8 <_vfprintf_r+0xbfc>
    31f4:	2b02      	cmp	r3, #2
    31f6:	f000 827d 	beq.w	36f4 <_vfprintf_r+0xb08>
    31fa:	a930      	add	r1, sp, #192	; 0xc0
    31fc:	e000      	b.n	3200 <_vfprintf_r+0x614>
    31fe:	4611      	mov	r1, r2
    3200:	08e2      	lsrs	r2, r4, #3
    3202:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
    3206:	08e8      	lsrs	r0, r5, #3
    3208:	f004 0307 	and.w	r3, r4, #7
    320c:	4605      	mov	r5, r0
    320e:	4614      	mov	r4, r2
    3210:	3330      	adds	r3, #48	; 0x30
    3212:	ea54 0005 	orrs.w	r0, r4, r5
    3216:	f801 3c01 	strb.w	r3, [r1, #-1]
    321a:	f101 32ff 	add.w	r2, r1, #4294967295
    321e:	d1ee      	bne.n	31fe <_vfprintf_r+0x612>
    3220:	9806      	ldr	r0, [sp, #24]
    3222:	920e      	str	r2, [sp, #56]	; 0x38
    3224:	07c0      	lsls	r0, r0, #31
    3226:	f140 8278 	bpl.w	371a <_vfprintf_r+0xb2e>
    322a:	2b30      	cmp	r3, #48	; 0x30
    322c:	f000 856f 	beq.w	3d0e <_vfprintf_r+0x1122>
    3230:	2330      	movs	r3, #48	; 0x30
    3232:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    3234:	3902      	subs	r1, #2
    3236:	f802 3c01 	strb.w	r3, [r2, #-1]
    323a:	ab30      	add	r3, sp, #192	; 0xc0
    323c:	1a5b      	subs	r3, r3, r1
    323e:	930c      	str	r3, [sp, #48]	; 0x30
    3240:	910e      	str	r1, [sp, #56]	; 0x38
    3242:	e67c      	b.n	2f3e <_vfprintf_r+0x352>
    3244:	2300      	movs	r3, #0
    3246:	2101      	movs	r1, #1
    3248:	980d      	ldr	r0, [sp, #52]	; 0x34
    324a:	461f      	mov	r7, r3
    324c:	6802      	ldr	r2, [r0, #0]
    324e:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
    3252:	9308      	str	r3, [sp, #32]
    3254:	930f      	str	r3, [sp, #60]	; 0x3c
    3256:	1d03      	adds	r3, r0, #4
    3258:	930d      	str	r3, [sp, #52]	; 0x34
    325a:	ab26      	add	r3, sp, #152	; 0x98
    325c:	9107      	str	r1, [sp, #28]
    325e:	f8cd b018 	str.w	fp, [sp, #24]
    3262:	910c      	str	r1, [sp, #48]	; 0x30
    3264:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
    3268:	930e      	str	r3, [sp, #56]	; 0x38
    326a:	e674      	b.n	2f56 <_vfprintf_r+0x36a>
    326c:	f89a 6000 	ldrb.w	r6, [sl]
    3270:	2900      	cmp	r1, #0
    3272:	f47f ad37 	bne.w	2ce4 <_vfprintf_r+0xf8>
    3276:	2201      	movs	r2, #1
    3278:	2120      	movs	r1, #32
    327a:	e533      	b.n	2ce4 <_vfprintf_r+0xf8>
    327c:	f04b 0b01 	orr.w	fp, fp, #1
    3280:	f89a 6000 	ldrb.w	r6, [sl]
    3284:	e52e      	b.n	2ce4 <_vfprintf_r+0xf8>
    3286:	2a00      	cmp	r2, #0
    3288:	f040 8741 	bne.w	410e <_vfprintf_r+0x1522>
    328c:	4b0b      	ldr	r3, [pc, #44]	; (32bc <_vfprintf_r+0x6d0>)
    328e:	f01b 0f20 	tst.w	fp, #32
    3292:	9317      	str	r3, [sp, #92]	; 0x5c
    3294:	d189      	bne.n	31aa <_vfprintf_r+0x5be>
    3296:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    3298:	f01b 0f10 	tst.w	fp, #16
    329c:	f853 4b04 	ldr.w	r4, [r3], #4
    32a0:	930d      	str	r3, [sp, #52]	; 0x34
    32a2:	f040 8332 	bne.w	390a <_vfprintf_r+0xd1e>
    32a6:	f01b 0f40 	tst.w	fp, #64	; 0x40
    32aa:	f000 832e 	beq.w	390a <_vfprintf_r+0xd1e>
    32ae:	b2a4      	uxth	r4, r4
    32b0:	2500      	movs	r5, #0
    32b2:	e783      	b.n	31bc <_vfprintf_r+0x5d0>
    32b4:	00008a58 	.word	0x00008a58
    32b8:	00008a24 	.word	0x00008a24
    32bc:	00008a38 	.word	0x00008a38
    32c0:	00008a68 	.word	0x00008a68
    32c4:	2500      	movs	r5, #0
    32c6:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    32c8:	f88d 506f 	strb.w	r5, [sp, #111]	; 0x6f
    32cc:	6813      	ldr	r3, [r2, #0]
    32ce:	1d14      	adds	r4, r2, #4
    32d0:	930e      	str	r3, [sp, #56]	; 0x38
    32d2:	2b00      	cmp	r3, #0
    32d4:	f000 850b 	beq.w	3cee <_vfprintf_r+0x1102>
    32d8:	9a08      	ldr	r2, [sp, #32]
    32da:	1c53      	adds	r3, r2, #1
    32dc:	f000 855a 	beq.w	3d94 <_vfprintf_r+0x11a8>
    32e0:	4629      	mov	r1, r5
    32e2:	980e      	ldr	r0, [sp, #56]	; 0x38
    32e4:	f002 ff52 	bl	618c <memchr>
    32e8:	2800      	cmp	r0, #0
    32ea:	f000 84d4 	beq.w	3c96 <_vfprintf_r+0x10aa>
    32ee:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    32f0:	9508      	str	r5, [sp, #32]
    32f2:	1ac3      	subs	r3, r0, r3
    32f4:	e9cd 340c 	strd	r3, r4, [sp, #48]	; 0x30
    32f8:	f8cd b018 	str.w	fp, [sp, #24]
    32fc:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    3300:	9307      	str	r3, [sp, #28]
    3302:	950f      	str	r5, [sp, #60]	; 0x3c
    3304:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    3308:	e621      	b.n	2f4e <_vfprintf_r+0x362>
    330a:	2a00      	cmp	r2, #0
    330c:	f040 86f7 	bne.w	40fe <_vfprintf_r+0x1512>
    3310:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    3312:	f01b 0f20 	tst.w	fp, #32
    3316:	f852 3b04 	ldr.w	r3, [r2], #4
    331a:	920d      	str	r2, [sp, #52]	; 0x34
    331c:	f000 8455 	beq.w	3bca <_vfprintf_r+0xfde>
    3320:	9a09      	ldr	r2, [sp, #36]	; 0x24
    3322:	4610      	mov	r0, r2
    3324:	17d1      	asrs	r1, r2, #31
    3326:	e9c3 0100 	strd	r0, r1, [r3]
    332a:	e4a8      	b.n	2c7e <_vfprintf_r+0x92>
    332c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    332e:	f89a 6000 	ldrb.w	r6, [sl]
    3332:	6818      	ldr	r0, [r3, #0]
    3334:	3304      	adds	r3, #4
    3336:	2800      	cmp	r0, #0
    3338:	900b      	str	r0, [sp, #44]	; 0x2c
    333a:	930d      	str	r3, [sp, #52]	; 0x34
    333c:	f6bf acd2 	bge.w	2ce4 <_vfprintf_r+0xf8>
    3340:	4243      	negs	r3, r0
    3342:	930b      	str	r3, [sp, #44]	; 0x2c
    3344:	f04b 0b04 	orr.w	fp, fp, #4
    3348:	e4cc      	b.n	2ce4 <_vfprintf_r+0xf8>
    334a:	f89a 6000 	ldrb.w	r6, [sl]
    334e:	2201      	movs	r2, #1
    3350:	212b      	movs	r1, #43	; 0x2b
    3352:	e4c7      	b.n	2ce4 <_vfprintf_r+0xf8>
    3354:	f89a 6000 	ldrb.w	r6, [sl]
    3358:	e7f4      	b.n	3344 <_vfprintf_r+0x758>
    335a:	f89a 6000 	ldrb.w	r6, [sl]
    335e:	f10a 0001 	add.w	r0, sl, #1
    3362:	2e2a      	cmp	r6, #42	; 0x2a
    3364:	f000 869c 	beq.w	40a0 <_vfprintf_r+0x14b4>
    3368:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
    336c:	2b09      	cmp	r3, #9
    336e:	4682      	mov	sl, r0
    3370:	f200 8576 	bhi.w	3e60 <_vfprintf_r+0x1274>
    3374:	2000      	movs	r0, #0
    3376:	f81a 6b01 	ldrb.w	r6, [sl], #1
    337a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
    337e:	eb03 0040 	add.w	r0, r3, r0, lsl #1
    3382:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
    3386:	2b09      	cmp	r3, #9
    3388:	d9f5      	bls.n	3376 <_vfprintf_r+0x78a>
    338a:	9008      	str	r0, [sp, #32]
    338c:	e4ac      	b.n	2ce8 <_vfprintf_r+0xfc>
    338e:	2a00      	cmp	r2, #0
    3390:	f040 86cd 	bne.w	412e <_vfprintf_r+0x1542>
    3394:	f04b 0b10 	orr.w	fp, fp, #16
    3398:	f01b 0f20 	tst.w	fp, #32
    339c:	f47f ada2 	bne.w	2ee4 <_vfprintf_r+0x2f8>
    33a0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    33a2:	f01b 0f10 	tst.w	fp, #16
    33a6:	f853 4b04 	ldr.w	r4, [r3], #4
    33aa:	930d      	str	r3, [sp, #52]	; 0x34
    33ac:	f040 82af 	bne.w	390e <_vfprintf_r+0xd22>
    33b0:	f01b 0f40 	tst.w	fp, #64	; 0x40
    33b4:	f000 82ab 	beq.w	390e <_vfprintf_r+0xd22>
    33b8:	b224      	sxth	r4, r4
    33ba:	17e5      	asrs	r5, r4, #31
    33bc:	e59b      	b.n	2ef6 <_vfprintf_r+0x30a>
    33be:	2a00      	cmp	r2, #0
    33c0:	f040 86b1 	bne.w	4126 <_vfprintf_r+0x153a>
    33c4:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    33c6:	3407      	adds	r4, #7
    33c8:	f024 0707 	bic.w	r7, r4, #7
    33cc:	e9d7 2300 	ldrd	r2, r3, [r7]
    33d0:	f023 4400 	bic.w	r4, r3, #2147483648	; 0x80000000
    33d4:	9214      	str	r2, [sp, #80]	; 0x50
    33d6:	4615      	mov	r5, r2
    33d8:	4610      	mov	r0, r2
    33da:	9312      	str	r3, [sp, #72]	; 0x48
    33dc:	3708      	adds	r7, #8
    33de:	4621      	mov	r1, r4
    33e0:	f04f 32ff 	mov.w	r2, #4294967295
    33e4:	4bbd      	ldr	r3, [pc, #756]	; (36dc <_vfprintf_r+0xaf0>)
    33e6:	970d      	str	r7, [sp, #52]	; 0x34
    33e8:	f7ff f94c 	bl	2684 <__aeabi_dcmpun>
    33ec:	2800      	cmp	r0, #0
    33ee:	f040 8374 	bne.w	3ada <_vfprintf_r+0xeee>
    33f2:	4628      	mov	r0, r5
    33f4:	4621      	mov	r1, r4
    33f6:	f04f 32ff 	mov.w	r2, #4294967295
    33fa:	4bb8      	ldr	r3, [pc, #736]	; (36dc <_vfprintf_r+0xaf0>)
    33fc:	f7ff f924 	bl	2648 <__aeabi_dcmple>
    3400:	2800      	cmp	r0, #0
    3402:	f040 836a 	bne.w	3ada <_vfprintf_r+0xeee>
    3406:	e9dd 0214 	ldrd	r0, r2, [sp, #80]	; 0x50
    340a:	9b16      	ldr	r3, [sp, #88]	; 0x58
    340c:	9912      	ldr	r1, [sp, #72]	; 0x48
    340e:	f7ff f911 	bl	2634 <__aeabi_dcmplt>
    3412:	2800      	cmp	r0, #0
    3414:	f040 8417 	bne.w	3c46 <_vfprintf_r+0x105a>
    3418:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    341c:	2103      	movs	r1, #3
    341e:	2000      	movs	r0, #0
    3420:	e9cd 1007 	strd	r1, r0, [sp, #28]
    3424:	4aae      	ldr	r2, [pc, #696]	; (36e0 <_vfprintf_r+0xaf4>)
    3426:	4baf      	ldr	r3, [pc, #700]	; (36e4 <_vfprintf_r+0xaf8>)
    3428:	2e47      	cmp	r6, #71	; 0x47
    342a:	bfd8      	it	le
    342c:	461a      	movle	r2, r3
    342e:	f02b 0480 	bic.w	r4, fp, #128	; 0x80
    3432:	9406      	str	r4, [sp, #24]
    3434:	910c      	str	r1, [sp, #48]	; 0x30
    3436:	900f      	str	r0, [sp, #60]	; 0x3c
    3438:	920e      	str	r2, [sp, #56]	; 0x38
    343a:	e588      	b.n	2f4e <_vfprintf_r+0x362>
    343c:	f647 0330 	movw	r3, #30768	; 0x7830
    3440:	9a0d      	ldr	r2, [sp, #52]	; 0x34
    3442:	f8ad 3070 	strh.w	r3, [sp, #112]	; 0x70
    3446:	1d13      	adds	r3, r2, #4
    3448:	930d      	str	r3, [sp, #52]	; 0x34
    344a:	4ba7      	ldr	r3, [pc, #668]	; (36e8 <_vfprintf_r+0xafc>)
    344c:	6814      	ldr	r4, [r2, #0]
    344e:	9317      	str	r3, [sp, #92]	; 0x5c
    3450:	f04b 0b02 	orr.w	fp, fp, #2
    3454:	2500      	movs	r5, #0
    3456:	2302      	movs	r3, #2
    3458:	2678      	movs	r6, #120	; 0x78
    345a:	e6bf      	b.n	31dc <_vfprintf_r+0x5f0>
    345c:	f04b 0b20 	orr.w	fp, fp, #32
    3460:	f89a 6000 	ldrb.w	r6, [sl]
    3464:	e43e      	b.n	2ce4 <_vfprintf_r+0xf8>
    3466:	f04b 0b08 	orr.w	fp, fp, #8
    346a:	f89a 6000 	ldrb.w	r6, [sl]
    346e:	e439      	b.n	2ce4 <_vfprintf_r+0xf8>
    3470:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    3472:	3407      	adds	r4, #7
    3474:	f024 0307 	bic.w	r3, r4, #7
    3478:	f103 0208 	add.w	r2, r3, #8
    347c:	e9d3 4500 	ldrd	r4, r5, [r3]
    3480:	920d      	str	r2, [sp, #52]	; 0x34
    3482:	2300      	movs	r3, #0
    3484:	e6aa      	b.n	31dc <_vfprintf_r+0x5f0>
    3486:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    3488:	3407      	adds	r4, #7
    348a:	f024 0307 	bic.w	r3, r4, #7
    348e:	f103 0208 	add.w	r2, r3, #8
    3492:	e9d3 4500 	ldrd	r4, r5, [r3]
    3496:	920d      	str	r2, [sp, #52]	; 0x34
    3498:	2301      	movs	r3, #1
    349a:	e69f      	b.n	31dc <_vfprintf_r+0x5f0>
    349c:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
    34a0:	f002 fb68 	bl	5b74 <__retarget_lock_release_recursive>
    34a4:	f8b8 300c 	ldrh.w	r3, [r8, #12]
    34a8:	e4f8      	b.n	2e9c <_vfprintf_r+0x2b0>
    34aa:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
    34ae:	f002 fb61 	bl	5b74 <__retarget_lock_release_recursive>
    34b2:	f04f 33ff 	mov.w	r3, #4294967295
    34b6:	9309      	str	r3, [sp, #36]	; 0x24
    34b8:	e4f2      	b.n	2ea0 <_vfprintf_r+0x2b4>
    34ba:	2a00      	cmp	r2, #0
    34bc:	f040 8623 	bne.w	4106 <_vfprintf_r+0x151a>
    34c0:	2e00      	cmp	r6, #0
    34c2:	f43f acdc 	beq.w	2e7e <_vfprintf_r+0x292>
    34c6:	2300      	movs	r3, #0
    34c8:	2201      	movs	r2, #1
    34ca:	461f      	mov	r7, r3
    34cc:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
    34d0:	9308      	str	r3, [sp, #32]
    34d2:	930f      	str	r3, [sp, #60]	; 0x3c
    34d4:	ab26      	add	r3, sp, #152	; 0x98
    34d6:	9207      	str	r2, [sp, #28]
    34d8:	f88d 6098 	strb.w	r6, [sp, #152]	; 0x98
    34dc:	f8cd b018 	str.w	fp, [sp, #24]
    34e0:	920c      	str	r2, [sp, #48]	; 0x30
    34e2:	930e      	str	r3, [sp, #56]	; 0x38
    34e4:	e537      	b.n	2f56 <_vfprintf_r+0x36a>
    34e6:	2e65      	cmp	r6, #101	; 0x65
    34e8:	f340 809e 	ble.w	3628 <_vfprintf_r+0xa3c>
    34ec:	e9dd 0214 	ldrd	r0, r2, [sp, #80]	; 0x50
    34f0:	9b16      	ldr	r3, [sp, #88]	; 0x58
    34f2:	9912      	ldr	r1, [sp, #72]	; 0x48
    34f4:	f7ff f894 	bl	2620 <__aeabi_dcmpeq>
    34f8:	2800      	cmp	r0, #0
    34fa:	f000 8191 	beq.w	3820 <_vfprintf_r+0xc34>
    34fe:	2101      	movs	r1, #1
    3500:	9b24      	ldr	r3, [sp, #144]	; 0x90
    3502:	4a7a      	ldr	r2, [pc, #488]	; (36ec <_vfprintf_r+0xb00>)
    3504:	440b      	add	r3, r1
    3506:	440c      	add	r4, r1
    3508:	2b07      	cmp	r3, #7
    350a:	9425      	str	r4, [sp, #148]	; 0x94
    350c:	9324      	str	r3, [sp, #144]	; 0x90
    350e:	e9c9 2100 	strd	r2, r1, [r9]
    3512:	f300 8386 	bgt.w	3c22 <_vfprintf_r+0x1036>
    3516:	f109 0908 	add.w	r9, r9, #8
    351a:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    351c:	9a10      	ldr	r2, [sp, #64]	; 0x40
    351e:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3520:	4293      	cmp	r3, r2
    3522:	db03      	blt.n	352c <_vfprintf_r+0x940>
    3524:	9b06      	ldr	r3, [sp, #24]
    3526:	07d8      	lsls	r0, r3, #31
    3528:	f57f add3 	bpl.w	30d2 <_vfprintf_r+0x4e6>
    352c:	9b24      	ldr	r3, [sp, #144]	; 0x90
    352e:	9a11      	ldr	r2, [sp, #68]	; 0x44
    3530:	3301      	adds	r3, #1
    3532:	9913      	ldr	r1, [sp, #76]	; 0x4c
    3534:	4414      	add	r4, r2
    3536:	2b07      	cmp	r3, #7
    3538:	e9c9 1200 	strd	r1, r2, [r9]
    353c:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
    3540:	f300 83c9 	bgt.w	3cd6 <_vfprintf_r+0x10ea>
    3544:	f109 0908 	add.w	r9, r9, #8
    3548:	9b10      	ldr	r3, [sp, #64]	; 0x40
    354a:	1e5d      	subs	r5, r3, #1
    354c:	2d00      	cmp	r5, #0
    354e:	f77f adc0 	ble.w	30d2 <_vfprintf_r+0x4e6>
    3552:	2d10      	cmp	r5, #16
    3554:	9a24      	ldr	r2, [sp, #144]	; 0x90
    3556:	f340 8567 	ble.w	4028 <_vfprintf_r+0x143c>
    355a:	f8df b194 	ldr.w	fp, [pc, #404]	; 36f0 <_vfprintf_r+0xb04>
    355e:	2610      	movs	r6, #16
    3560:	465f      	mov	r7, fp
    3562:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    3566:	e005      	b.n	3574 <_vfprintf_r+0x988>
    3568:	f109 0908 	add.w	r9, r9, #8
    356c:	3d10      	subs	r5, #16
    356e:	2d10      	cmp	r5, #16
    3570:	f340 82a8 	ble.w	3ac4 <_vfprintf_r+0xed8>
    3574:	3201      	adds	r2, #1
    3576:	3410      	adds	r4, #16
    3578:	2a07      	cmp	r2, #7
    357a:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    357e:	e9c9 7600 	strd	r7, r6, [r9]
    3582:	ddf1      	ble.n	3568 <_vfprintf_r+0x97c>
    3584:	aa23      	add	r2, sp, #140	; 0x8c
    3586:	4641      	mov	r1, r8
    3588:	4658      	mov	r0, fp
    358a:	f003 fb87 	bl	6c9c <__sprint_r>
    358e:	2800      	cmp	r0, #0
    3590:	f47f ac7b 	bne.w	2e8a <_vfprintf_r+0x29e>
    3594:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
    3598:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    359c:	e7e6      	b.n	356c <_vfprintf_r+0x980>
    359e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    35a0:	9a07      	ldr	r2, [sp, #28]
    35a2:	1a9d      	subs	r5, r3, r2
    35a4:	2d00      	cmp	r5, #0
    35a6:	f77f ad48 	ble.w	303a <_vfprintf_r+0x44e>
    35aa:	2d10      	cmp	r5, #16
    35ac:	9a24      	ldr	r2, [sp, #144]	; 0x90
    35ae:	f340 8453 	ble.w	3e58 <_vfprintf_r+0x126c>
    35b2:	f8df b13c 	ldr.w	fp, [pc, #316]	; 36f0 <_vfprintf_r+0xb04>
    35b6:	4623      	mov	r3, r4
    35b8:	2710      	movs	r7, #16
    35ba:	465c      	mov	r4, fp
    35bc:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    35c0:	e004      	b.n	35cc <_vfprintf_r+0x9e0>
    35c2:	3d10      	subs	r5, #16
    35c4:	2d10      	cmp	r5, #16
    35c6:	f109 0908 	add.w	r9, r9, #8
    35ca:	dd16      	ble.n	35fa <_vfprintf_r+0xa0e>
    35cc:	3201      	adds	r2, #1
    35ce:	3310      	adds	r3, #16
    35d0:	2a07      	cmp	r2, #7
    35d2:	e9cd 2324 	strd	r2, r3, [sp, #144]	; 0x90
    35d6:	e9c9 4700 	strd	r4, r7, [r9]
    35da:	ddf2      	ble.n	35c2 <_vfprintf_r+0x9d6>
    35dc:	aa23      	add	r2, sp, #140	; 0x8c
    35de:	4641      	mov	r1, r8
    35e0:	4658      	mov	r0, fp
    35e2:	f003 fb5b 	bl	6c9c <__sprint_r>
    35e6:	2800      	cmp	r0, #0
    35e8:	f47f ac4f 	bne.w	2e8a <_vfprintf_r+0x29e>
    35ec:	e9dd 2324 	ldrd	r2, r3, [sp, #144]	; 0x90
    35f0:	3d10      	subs	r5, #16
    35f2:	2d10      	cmp	r5, #16
    35f4:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    35f8:	dce8      	bgt.n	35cc <_vfprintf_r+0x9e0>
    35fa:	46a3      	mov	fp, r4
    35fc:	461c      	mov	r4, r3
    35fe:	3201      	adds	r2, #1
    3600:	442c      	add	r4, r5
    3602:	2a07      	cmp	r2, #7
    3604:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3608:	e9c9 b500 	strd	fp, r5, [r9]
    360c:	f300 82ec 	bgt.w	3be8 <_vfprintf_r+0xffc>
    3610:	f109 0908 	add.w	r9, r9, #8
    3614:	e511      	b.n	303a <_vfprintf_r+0x44e>
    3616:	aa23      	add	r2, sp, #140	; 0x8c
    3618:	4641      	mov	r1, r8
    361a:	980a      	ldr	r0, [sp, #40]	; 0x28
    361c:	f003 fb3e 	bl	6c9c <__sprint_r>
    3620:	2800      	cmp	r0, #0
    3622:	f43f ad9e 	beq.w	3162 <_vfprintf_r+0x576>
    3626:	e430      	b.n	2e8a <_vfprintf_r+0x29e>
    3628:	9a10      	ldr	r2, [sp, #64]	; 0x40
    362a:	9b24      	ldr	r3, [sp, #144]	; 0x90
    362c:	2a01      	cmp	r2, #1
    362e:	f104 0401 	add.w	r4, r4, #1
    3632:	f103 0501 	add.w	r5, r3, #1
    3636:	f109 0608 	add.w	r6, r9, #8
    363a:	f340 8176 	ble.w	392a <_vfprintf_r+0xd3e>
    363e:	2301      	movs	r3, #1
    3640:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    3642:	2d07      	cmp	r5, #7
    3644:	f8c9 2000 	str.w	r2, [r9]
    3648:	e9cd 5424 	strd	r5, r4, [sp, #144]	; 0x90
    364c:	f8c9 3004 	str.w	r3, [r9, #4]
    3650:	f300 81fa 	bgt.w	3a48 <_vfprintf_r+0xe5c>
    3654:	9b11      	ldr	r3, [sp, #68]	; 0x44
    3656:	3501      	adds	r5, #1
    3658:	9a13      	ldr	r2, [sp, #76]	; 0x4c
    365a:	441c      	add	r4, r3
    365c:	2d07      	cmp	r5, #7
    365e:	e9cd 5424 	strd	r5, r4, [sp, #144]	; 0x90
    3662:	e9c6 2300 	strd	r2, r3, [r6]
    3666:	f300 81fb 	bgt.w	3a60 <_vfprintf_r+0xe74>
    366a:	3608      	adds	r6, #8
    366c:	1c6f      	adds	r7, r5, #1
    366e:	970c      	str	r7, [sp, #48]	; 0x30
    3670:	9708      	str	r7, [sp, #32]
    3672:	9f10      	ldr	r7, [sp, #64]	; 0x40
    3674:	e9dd 0214 	ldrd	r0, r2, [sp, #80]	; 0x50
    3678:	9b16      	ldr	r3, [sp, #88]	; 0x58
    367a:	9912      	ldr	r1, [sp, #72]	; 0x48
    367c:	3f01      	subs	r7, #1
    367e:	f106 0908 	add.w	r9, r6, #8
    3682:	f7fe ffcd 	bl	2620 <__aeabi_dcmpeq>
    3686:	2800      	cmp	r0, #0
    3688:	f040 8116 	bne.w	38b8 <_vfprintf_r+0xccc>
    368c:	443c      	add	r4, r7
    368e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    3690:	6077      	str	r7, [r6, #4]
    3692:	9f08      	ldr	r7, [sp, #32]
    3694:	3301      	adds	r3, #1
    3696:	2f07      	cmp	r7, #7
    3698:	6033      	str	r3, [r6, #0]
    369a:	9425      	str	r4, [sp, #148]	; 0x94
    369c:	9724      	str	r7, [sp, #144]	; 0x90
    369e:	f300 82b0 	bgt.w	3c02 <_vfprintf_r+0x1016>
    36a2:	f106 0310 	add.w	r3, r6, #16
    36a6:	464e      	mov	r6, r9
    36a8:	4699      	mov	r9, r3
    36aa:	1caa      	adds	r2, r5, #2
    36ac:	9208      	str	r2, [sp, #32]
    36ae:	9a18      	ldr	r2, [sp, #96]	; 0x60
    36b0:	ab1f      	add	r3, sp, #124	; 0x7c
    36b2:	4414      	add	r4, r2
    36b4:	6072      	str	r2, [r6, #4]
    36b6:	9a08      	ldr	r2, [sp, #32]
    36b8:	9425      	str	r4, [sp, #148]	; 0x94
    36ba:	2a07      	cmp	r2, #7
    36bc:	9224      	str	r2, [sp, #144]	; 0x90
    36be:	6033      	str	r3, [r6, #0]
    36c0:	f77f ad07 	ble.w	30d2 <_vfprintf_r+0x4e6>
    36c4:	aa23      	add	r2, sp, #140	; 0x8c
    36c6:	4641      	mov	r1, r8
    36c8:	980a      	ldr	r0, [sp, #40]	; 0x28
    36ca:	f003 fae7 	bl	6c9c <__sprint_r>
    36ce:	2800      	cmp	r0, #0
    36d0:	f47f abdb 	bne.w	2e8a <_vfprintf_r+0x29e>
    36d4:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    36d8:	9c25      	ldr	r4, [sp, #148]	; 0x94
    36da:	e4fa      	b.n	30d2 <_vfprintf_r+0x4e6>
    36dc:	7fefffff 	.word	0x7fefffff
    36e0:	00008a18 	.word	0x00008a18
    36e4:	00008a14 	.word	0x00008a14
    36e8:	00008a38 	.word	0x00008a38
    36ec:	00008a54 	.word	0x00008a54
    36f0:	00008a68 	.word	0x00008a68
    36f4:	f8dd c05c 	ldr.w	ip, [sp, #92]	; 0x5c
    36f8:	aa30      	add	r2, sp, #192	; 0xc0
    36fa:	0923      	lsrs	r3, r4, #4
    36fc:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
    3700:	0928      	lsrs	r0, r5, #4
    3702:	f004 010f 	and.w	r1, r4, #15
    3706:	4605      	mov	r5, r0
    3708:	461c      	mov	r4, r3
    370a:	f81c 3001 	ldrb.w	r3, [ip, r1]
    370e:	f802 3d01 	strb.w	r3, [r2, #-1]!
    3712:	ea54 0305 	orrs.w	r3, r4, r5
    3716:	d1f0      	bne.n	36fa <_vfprintf_r+0xb0e>
    3718:	920e      	str	r2, [sp, #56]	; 0x38
    371a:	ab30      	add	r3, sp, #192	; 0xc0
    371c:	1a9b      	subs	r3, r3, r2
    371e:	930c      	str	r3, [sp, #48]	; 0x30
    3720:	e40d      	b.n	2f3e <_vfprintf_r+0x352>
    3722:	2001      	movs	r0, #1
    3724:	9a24      	ldr	r2, [sp, #144]	; 0x90
    3726:	49b9      	ldr	r1, [pc, #740]	; (3a0c <_vfprintf_r+0xe20>)
    3728:	4402      	add	r2, r0
    372a:	4404      	add	r4, r0
    372c:	2a07      	cmp	r2, #7
    372e:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3732:	e9c9 1000 	strd	r1, r0, [r9]
    3736:	f340 8283 	ble.w	3c40 <_vfprintf_r+0x1054>
    373a:	aa23      	add	r2, sp, #140	; 0x8c
    373c:	4641      	mov	r1, r8
    373e:	980a      	ldr	r0, [sp, #40]	; 0x28
    3740:	f003 faac 	bl	6c9c <__sprint_r>
    3744:	2800      	cmp	r0, #0
    3746:	f47f aba0 	bne.w	2e8a <_vfprintf_r+0x29e>
    374a:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    374c:	9c25      	ldr	r4, [sp, #148]	; 0x94
    374e:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3752:	b92b      	cbnz	r3, 3760 <_vfprintf_r+0xb74>
    3754:	9a10      	ldr	r2, [sp, #64]	; 0x40
    3756:	b91a      	cbnz	r2, 3760 <_vfprintf_r+0xb74>
    3758:	9a06      	ldr	r2, [sp, #24]
    375a:	07d1      	lsls	r1, r2, #31
    375c:	f57f acb9 	bpl.w	30d2 <_vfprintf_r+0x4e6>
    3760:	9a24      	ldr	r2, [sp, #144]	; 0x90
    3762:	9911      	ldr	r1, [sp, #68]	; 0x44
    3764:	3201      	adds	r2, #1
    3766:	9813      	ldr	r0, [sp, #76]	; 0x4c
    3768:	440c      	add	r4, r1
    376a:	2a07      	cmp	r2, #7
    376c:	9425      	str	r4, [sp, #148]	; 0x94
    376e:	e9c9 0100 	strd	r0, r1, [r9]
    3772:	9224      	str	r2, [sp, #144]	; 0x90
    3774:	f300 8378 	bgt.w	3e68 <_vfprintf_r+0x127c>
    3778:	f109 0908 	add.w	r9, r9, #8
    377c:	2b00      	cmp	r3, #0
    377e:	f2c0 83d9 	blt.w	3f34 <_vfprintf_r+0x1348>
    3782:	9b10      	ldr	r3, [sp, #64]	; 0x40
    3784:	3201      	adds	r2, #1
    3786:	990e      	ldr	r1, [sp, #56]	; 0x38
    3788:	441c      	add	r4, r3
    378a:	2a07      	cmp	r2, #7
    378c:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3790:	e9c9 1300 	strd	r1, r3, [r9]
    3794:	f77f ac9b 	ble.w	30ce <_vfprintf_r+0x4e2>
    3798:	aa23      	add	r2, sp, #140	; 0x8c
    379a:	4641      	mov	r1, r8
    379c:	980a      	ldr	r0, [sp, #40]	; 0x28
    379e:	f003 fa7d 	bl	6c9c <__sprint_r>
    37a2:	2800      	cmp	r0, #0
    37a4:	f47f ab71 	bne.w	2e8a <_vfprintf_r+0x29e>
    37a8:	9c25      	ldr	r4, [sp, #148]	; 0x94
    37aa:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    37ae:	e490      	b.n	30d2 <_vfprintf_r+0x4e6>
    37b0:	aa23      	add	r2, sp, #140	; 0x8c
    37b2:	4641      	mov	r1, r8
    37b4:	980a      	ldr	r0, [sp, #40]	; 0x28
    37b6:	9319      	str	r3, [sp, #100]	; 0x64
    37b8:	f003 fa70 	bl	6c9c <__sprint_r>
    37bc:	2800      	cmp	r0, #0
    37be:	f47f ab64 	bne.w	2e8a <_vfprintf_r+0x29e>
    37c2:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    37c6:	9c25      	ldr	r4, [sp, #148]	; 0x94
    37c8:	9b19      	ldr	r3, [sp, #100]	; 0x64
    37ca:	e423      	b.n	3014 <_vfprintf_r+0x428>
    37cc:	aa23      	add	r2, sp, #140	; 0x8c
    37ce:	4641      	mov	r1, r8
    37d0:	980a      	ldr	r0, [sp, #40]	; 0x28
    37d2:	f003 fa63 	bl	6c9c <__sprint_r>
    37d6:	2800      	cmp	r0, #0
    37d8:	f47f ab57 	bne.w	2e8a <_vfprintf_r+0x29e>
    37dc:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    37e0:	9c25      	ldr	r4, [sp, #148]	; 0x94
    37e2:	e426      	b.n	3032 <_vfprintf_r+0x446>
    37e4:	f8cd b018 	str.w	fp, [sp, #24]
    37e8:	2d00      	cmp	r5, #0
    37ea:	bf08      	it	eq
    37ec:	2c0a      	cmpeq	r4, #10
    37ee:	f080 8147 	bcs.w	3a80 <_vfprintf_r+0xe94>
    37f2:	ab40      	add	r3, sp, #256	; 0x100
    37f4:	3430      	adds	r4, #48	; 0x30
    37f6:	f803 4d41 	strb.w	r4, [r3, #-65]!
    37fa:	930e      	str	r3, [sp, #56]	; 0x38
    37fc:	2301      	movs	r3, #1
    37fe:	930c      	str	r3, [sp, #48]	; 0x30
    3800:	f7ff bb9d 	b.w	2f3e <_vfprintf_r+0x352>
    3804:	2302      	movs	r3, #2
    3806:	e4e9      	b.n	31dc <_vfprintf_r+0x5f0>
    3808:	aa23      	add	r2, sp, #140	; 0x8c
    380a:	4641      	mov	r1, r8
    380c:	980a      	ldr	r0, [sp, #40]	; 0x28
    380e:	f003 fa45 	bl	6c9c <__sprint_r>
    3812:	2800      	cmp	r0, #0
    3814:	f47f ab39 	bne.w	2e8a <_vfprintf_r+0x29e>
    3818:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    381c:	9c25      	ldr	r4, [sp, #148]	; 0x94
    381e:	e446      	b.n	30ae <_vfprintf_r+0x4c2>
    3820:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    3822:	2b00      	cmp	r3, #0
    3824:	f77f af7d 	ble.w	3722 <_vfprintf_r+0xb36>
    3828:	e9dd 320f 	ldrd	r3, r2, [sp, #60]	; 0x3c
    382c:	4293      	cmp	r3, r2
    382e:	bfa8      	it	ge
    3830:	4613      	movge	r3, r2
    3832:	2b00      	cmp	r3, #0
    3834:	461d      	mov	r5, r3
    3836:	dd0c      	ble.n	3852 <_vfprintf_r+0xc66>
    3838:	9b24      	ldr	r3, [sp, #144]	; 0x90
    383a:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    383c:	3301      	adds	r3, #1
    383e:	442c      	add	r4, r5
    3840:	2b07      	cmp	r3, #7
    3842:	9425      	str	r4, [sp, #148]	; 0x94
    3844:	e9c9 2500 	strd	r2, r5, [r9]
    3848:	9324      	str	r3, [sp, #144]	; 0x90
    384a:	f300 82d3 	bgt.w	3df4 <_vfprintf_r+0x1208>
    384e:	f109 0908 	add.w	r9, r9, #8
    3852:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3854:	2d00      	cmp	r5, #0
    3856:	bfa8      	it	ge
    3858:	1b5b      	subge	r3, r3, r5
    385a:	2b00      	cmp	r3, #0
    385c:	461d      	mov	r5, r3
    385e:	f340 8095 	ble.w	398c <_vfprintf_r+0xda0>
    3862:	2b10      	cmp	r3, #16
    3864:	9a24      	ldr	r2, [sp, #144]	; 0x90
    3866:	f340 8415 	ble.w	4094 <_vfprintf_r+0x14a8>
    386a:	f8df b1a4 	ldr.w	fp, [pc, #420]	; 3a10 <_vfprintf_r+0xe24>
    386e:	2610      	movs	r6, #16
    3870:	465f      	mov	r7, fp
    3872:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    3876:	e004      	b.n	3882 <_vfprintf_r+0xc96>
    3878:	f109 0908 	add.w	r9, r9, #8
    387c:	3d10      	subs	r5, #16
    387e:	2d10      	cmp	r5, #16
    3880:	dd78      	ble.n	3974 <_vfprintf_r+0xd88>
    3882:	3201      	adds	r2, #1
    3884:	3410      	adds	r4, #16
    3886:	2a07      	cmp	r2, #7
    3888:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    388c:	e9c9 7600 	strd	r7, r6, [r9]
    3890:	ddf2      	ble.n	3878 <_vfprintf_r+0xc8c>
    3892:	aa23      	add	r2, sp, #140	; 0x8c
    3894:	4641      	mov	r1, r8
    3896:	4658      	mov	r0, fp
    3898:	f003 fa00 	bl	6c9c <__sprint_r>
    389c:	2800      	cmp	r0, #0
    389e:	f47f aaf4 	bne.w	2e8a <_vfprintf_r+0x29e>
    38a2:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
    38a6:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    38aa:	e7e7      	b.n	387c <_vfprintf_r+0xc90>
    38ac:	9b08      	ldr	r3, [sp, #32]
    38ae:	930c      	str	r3, [sp, #48]	; 0x30
    38b0:	ab30      	add	r3, sp, #192	; 0xc0
    38b2:	930e      	str	r3, [sp, #56]	; 0x38
    38b4:	f7ff bb43 	b.w	2f3e <_vfprintf_r+0x352>
    38b8:	2f00      	cmp	r7, #0
    38ba:	f77f aef8 	ble.w	36ae <_vfprintf_r+0xac2>
    38be:	2f10      	cmp	r7, #16
    38c0:	f340 83e4 	ble.w	408c <_vfprintf_r+0x14a0>
    38c4:	f8df b148 	ldr.w	fp, [pc, #328]	; 3a10 <_vfprintf_r+0xe24>
    38c8:	4623      	mov	r3, r4
    38ca:	f04f 0910 	mov.w	r9, #16
    38ce:	465c      	mov	r4, fp
    38d0:	9d0c      	ldr	r5, [sp, #48]	; 0x30
    38d2:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    38d6:	e005      	b.n	38e4 <_vfprintf_r+0xcf8>
    38d8:	3608      	adds	r6, #8
    38da:	3f10      	subs	r7, #16
    38dc:	2f10      	cmp	r7, #16
    38de:	f340 81e6 	ble.w	3cae <_vfprintf_r+0x10c2>
    38e2:	3501      	adds	r5, #1
    38e4:	3310      	adds	r3, #16
    38e6:	2d07      	cmp	r5, #7
    38e8:	e9cd 5324 	strd	r5, r3, [sp, #144]	; 0x90
    38ec:	e9c6 4900 	strd	r4, r9, [r6]
    38f0:	ddf2      	ble.n	38d8 <_vfprintf_r+0xcec>
    38f2:	aa23      	add	r2, sp, #140	; 0x8c
    38f4:	4641      	mov	r1, r8
    38f6:	4658      	mov	r0, fp
    38f8:	f003 f9d0 	bl	6c9c <__sprint_r>
    38fc:	2800      	cmp	r0, #0
    38fe:	f47f aac4 	bne.w	2e8a <_vfprintf_r+0x29e>
    3902:	e9dd 5324 	ldrd	r5, r3, [sp, #144]	; 0x90
    3906:	ae30      	add	r6, sp, #192	; 0xc0
    3908:	e7e7      	b.n	38da <_vfprintf_r+0xcee>
    390a:	2500      	movs	r5, #0
    390c:	e456      	b.n	31bc <_vfprintf_r+0x5d0>
    390e:	17e5      	asrs	r5, r4, #31
    3910:	2c00      	cmp	r4, #0
    3912:	f175 0300 	sbcs.w	r3, r5, #0
    3916:	f6bf aaf3 	bge.w	2f00 <_vfprintf_r+0x314>
    391a:	272d      	movs	r7, #45	; 0x2d
    391c:	4264      	negs	r4, r4
    391e:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
    3922:	f88d 706f 	strb.w	r7, [sp, #111]	; 0x6f
    3926:	f7ff baed 	b.w	2f04 <_vfprintf_r+0x318>
    392a:	9a06      	ldr	r2, [sp, #24]
    392c:	07d7      	lsls	r7, r2, #31
    392e:	f53f ae86 	bmi.w	363e <_vfprintf_r+0xa52>
    3932:	2201      	movs	r2, #1
    3934:	990e      	ldr	r1, [sp, #56]	; 0x38
    3936:	2d07      	cmp	r5, #7
    3938:	f8c9 1000 	str.w	r1, [r9]
    393c:	e9cd 5424 	strd	r5, r4, [sp, #144]	; 0x90
    3940:	f8c9 2004 	str.w	r2, [r9, #4]
    3944:	f300 8185 	bgt.w	3c52 <_vfprintf_r+0x1066>
    3948:	3302      	adds	r3, #2
    394a:	9308      	str	r3, [sp, #32]
    394c:	f109 0910 	add.w	r9, r9, #16
    3950:	e6ad      	b.n	36ae <_vfprintf_r+0xac2>
    3952:	aa23      	add	r2, sp, #140	; 0x8c
    3954:	4641      	mov	r1, r8
    3956:	980a      	ldr	r0, [sp, #40]	; 0x28
    3958:	9319      	str	r3, [sp, #100]	; 0x64
    395a:	f003 f99f 	bl	6c9c <__sprint_r>
    395e:	2800      	cmp	r0, #0
    3960:	f47f aa93 	bne.w	2e8a <_vfprintf_r+0x29e>
    3964:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3968:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    396c:	9c25      	ldr	r4, [sp, #148]	; 0x94
    396e:	9b19      	ldr	r3, [sp, #100]	; 0x64
    3970:	f7ff bb40 	b.w	2ff4 <_vfprintf_r+0x408>
    3974:	46bb      	mov	fp, r7
    3976:	3201      	adds	r2, #1
    3978:	442c      	add	r4, r5
    397a:	2a07      	cmp	r2, #7
    397c:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3980:	e9c9 b500 	strd	fp, r5, [r9]
    3984:	f300 82ca 	bgt.w	3f1c <_vfprintf_r+0x1330>
    3988:	f109 0908 	add.w	r9, r9, #8
    398c:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    398e:	9a10      	ldr	r2, [sp, #64]	; 0x40
    3990:	4293      	cmp	r3, r2
    3992:	db02      	blt.n	399a <_vfprintf_r+0xdae>
    3994:	9a06      	ldr	r2, [sp, #24]
    3996:	07d2      	lsls	r2, r2, #31
    3998:	d50d      	bpl.n	39b6 <_vfprintf_r+0xdca>
    399a:	9a24      	ldr	r2, [sp, #144]	; 0x90
    399c:	9911      	ldr	r1, [sp, #68]	; 0x44
    399e:	3201      	adds	r2, #1
    39a0:	9813      	ldr	r0, [sp, #76]	; 0x4c
    39a2:	440c      	add	r4, r1
    39a4:	2a07      	cmp	r2, #7
    39a6:	9425      	str	r4, [sp, #148]	; 0x94
    39a8:	e9c9 0100 	strd	r0, r1, [r9]
    39ac:	9224      	str	r2, [sp, #144]	; 0x90
    39ae:	f300 8214 	bgt.w	3dda <_vfprintf_r+0x11ee>
    39b2:	f109 0908 	add.w	r9, r9, #8
    39b6:	9a10      	ldr	r2, [sp, #64]	; 0x40
    39b8:	980f      	ldr	r0, [sp, #60]	; 0x3c
    39ba:	1ad3      	subs	r3, r2, r3
    39bc:	1a15      	subs	r5, r2, r0
    39be:	429d      	cmp	r5, r3
    39c0:	bfa8      	it	ge
    39c2:	461d      	movge	r5, r3
    39c4:	2d00      	cmp	r5, #0
    39c6:	dd0f      	ble.n	39e8 <_vfprintf_r+0xdfc>
    39c8:	9a24      	ldr	r2, [sp, #144]	; 0x90
    39ca:	990e      	ldr	r1, [sp, #56]	; 0x38
    39cc:	3201      	adds	r2, #1
    39ce:	4401      	add	r1, r0
    39d0:	442c      	add	r4, r5
    39d2:	2a07      	cmp	r2, #7
    39d4:	f8c9 1000 	str.w	r1, [r9]
    39d8:	9425      	str	r4, [sp, #148]	; 0x94
    39da:	f8c9 5004 	str.w	r5, [r9, #4]
    39de:	9224      	str	r2, [sp, #144]	; 0x90
    39e0:	f300 8147 	bgt.w	3c72 <_vfprintf_r+0x1086>
    39e4:	f109 0908 	add.w	r9, r9, #8
    39e8:	2d00      	cmp	r5, #0
    39ea:	bfb4      	ite	lt
    39ec:	461d      	movlt	r5, r3
    39ee:	1b5d      	subge	r5, r3, r5
    39f0:	2d00      	cmp	r5, #0
    39f2:	f77f ab6e 	ble.w	30d2 <_vfprintf_r+0x4e6>
    39f6:	2d10      	cmp	r5, #16
    39f8:	9a24      	ldr	r2, [sp, #144]	; 0x90
    39fa:	f340 8315 	ble.w	4028 <_vfprintf_r+0x143c>
    39fe:	f8df b010 	ldr.w	fp, [pc, #16]	; 3a10 <_vfprintf_r+0xe24>
    3a02:	2610      	movs	r6, #16
    3a04:	465f      	mov	r7, fp
    3a06:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    3a0a:	e008      	b.n	3a1e <_vfprintf_r+0xe32>
    3a0c:	00008a54 	.word	0x00008a54
    3a10:	00008a68 	.word	0x00008a68
    3a14:	f109 0908 	add.w	r9, r9, #8
    3a18:	3d10      	subs	r5, #16
    3a1a:	2d10      	cmp	r5, #16
    3a1c:	dd52      	ble.n	3ac4 <_vfprintf_r+0xed8>
    3a1e:	3201      	adds	r2, #1
    3a20:	3410      	adds	r4, #16
    3a22:	2a07      	cmp	r2, #7
    3a24:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3a28:	e9c9 7600 	strd	r7, r6, [r9]
    3a2c:	ddf2      	ble.n	3a14 <_vfprintf_r+0xe28>
    3a2e:	aa23      	add	r2, sp, #140	; 0x8c
    3a30:	4641      	mov	r1, r8
    3a32:	4658      	mov	r0, fp
    3a34:	f003 f932 	bl	6c9c <__sprint_r>
    3a38:	2800      	cmp	r0, #0
    3a3a:	f47f aa26 	bne.w	2e8a <_vfprintf_r+0x29e>
    3a3e:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
    3a42:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3a46:	e7e7      	b.n	3a18 <_vfprintf_r+0xe2c>
    3a48:	aa23      	add	r2, sp, #140	; 0x8c
    3a4a:	4641      	mov	r1, r8
    3a4c:	980a      	ldr	r0, [sp, #40]	; 0x28
    3a4e:	f003 f925 	bl	6c9c <__sprint_r>
    3a52:	2800      	cmp	r0, #0
    3a54:	f47f aa19 	bne.w	2e8a <_vfprintf_r+0x29e>
    3a58:	e9dd 5424 	ldrd	r5, r4, [sp, #144]	; 0x90
    3a5c:	ae30      	add	r6, sp, #192	; 0xc0
    3a5e:	e5f9      	b.n	3654 <_vfprintf_r+0xa68>
    3a60:	aa23      	add	r2, sp, #140	; 0x8c
    3a62:	4641      	mov	r1, r8
    3a64:	980a      	ldr	r0, [sp, #40]	; 0x28
    3a66:	f003 f919 	bl	6c9c <__sprint_r>
    3a6a:	2800      	cmp	r0, #0
    3a6c:	f47f aa0d 	bne.w	2e8a <_vfprintf_r+0x29e>
    3a70:	e9dd 5424 	ldrd	r5, r4, [sp, #144]	; 0x90
    3a74:	ae30      	add	r6, sp, #192	; 0xc0
    3a76:	e5f9      	b.n	366c <_vfprintf_r+0xa80>
    3a78:	2b01      	cmp	r3, #1
    3a7a:	f47f abbb 	bne.w	31f4 <_vfprintf_r+0x608>
    3a7e:	e6b8      	b.n	37f2 <_vfprintf_r+0xc06>
    3a80:	ab30      	add	r3, sp, #192	; 0xc0
    3a82:	469b      	mov	fp, r3
    3a84:	4620      	mov	r0, r4
    3a86:	4629      	mov	r1, r5
    3a88:	220a      	movs	r2, #10
    3a8a:	2300      	movs	r3, #0
    3a8c:	f7fe fe38 	bl	2700 <__aeabi_uldivmod>
    3a90:	3230      	adds	r2, #48	; 0x30
    3a92:	f80b 2d01 	strb.w	r2, [fp, #-1]!
    3a96:	4620      	mov	r0, r4
    3a98:	4629      	mov	r1, r5
    3a9a:	2300      	movs	r3, #0
    3a9c:	220a      	movs	r2, #10
    3a9e:	f7fe fe2f 	bl	2700 <__aeabi_uldivmod>
    3aa2:	4604      	mov	r4, r0
    3aa4:	460d      	mov	r5, r1
    3aa6:	ea54 0305 	orrs.w	r3, r4, r5
    3aaa:	d1eb      	bne.n	3a84 <_vfprintf_r+0xe98>
    3aac:	465a      	mov	r2, fp
    3aae:	ab30      	add	r3, sp, #192	; 0xc0
    3ab0:	1a9b      	subs	r3, r3, r2
    3ab2:	f8cd b038 	str.w	fp, [sp, #56]	; 0x38
    3ab6:	930c      	str	r3, [sp, #48]	; 0x30
    3ab8:	f7ff ba41 	b.w	2f3e <_vfprintf_r+0x352>
    3abc:	ab30      	add	r3, sp, #192	; 0xc0
    3abe:	930e      	str	r3, [sp, #56]	; 0x38
    3ac0:	f7ff ba3d 	b.w	2f3e <_vfprintf_r+0x352>
    3ac4:	46bb      	mov	fp, r7
    3ac6:	3201      	adds	r2, #1
    3ac8:	442c      	add	r4, r5
    3aca:	2a07      	cmp	r2, #7
    3acc:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3ad0:	e9c9 b500 	strd	fp, r5, [r9]
    3ad4:	f77f aafb 	ble.w	30ce <_vfprintf_r+0x4e2>
    3ad8:	e65e      	b.n	3798 <_vfprintf_r+0xbac>
    3ada:	9c14      	ldr	r4, [sp, #80]	; 0x50
    3adc:	4622      	mov	r2, r4
    3ade:	4620      	mov	r0, r4
    3ae0:	9c12      	ldr	r4, [sp, #72]	; 0x48
    3ae2:	4623      	mov	r3, r4
    3ae4:	4621      	mov	r1, r4
    3ae6:	f7fe fdcd 	bl	2684 <__aeabi_dcmpun>
    3aea:	2800      	cmp	r0, #0
    3aec:	f040 82b3 	bne.w	4056 <_vfprintf_r+0x146a>
    3af0:	9a08      	ldr	r2, [sp, #32]
    3af2:	f026 0320 	bic.w	r3, r6, #32
    3af6:	1c54      	adds	r4, r2, #1
    3af8:	9307      	str	r3, [sp, #28]
    3afa:	f000 80c9 	beq.w	3c90 <_vfprintf_r+0x10a4>
    3afe:	2b47      	cmp	r3, #71	; 0x47
    3b00:	d104      	bne.n	3b0c <_vfprintf_r+0xf20>
    3b02:	2a00      	cmp	r2, #0
    3b04:	4613      	mov	r3, r2
    3b06:	bf08      	it	eq
    3b08:	2301      	moveq	r3, #1
    3b0a:	9308      	str	r3, [sp, #32]
    3b0c:	f44b 7380 	orr.w	r3, fp, #256	; 0x100
    3b10:	9306      	str	r3, [sp, #24]
    3b12:	9b12      	ldr	r3, [sp, #72]	; 0x48
    3b14:	9f14      	ldr	r7, [sp, #80]	; 0x50
    3b16:	1e1d      	subs	r5, r3, #0
    3b18:	bfb6      	itet	lt
    3b1a:	f103 4500 	addlt.w	r5, r3, #2147483648	; 0x80000000
    3b1e:	2300      	movge	r3, #0
    3b20:	232d      	movlt	r3, #45	; 0x2d
    3b22:	2e66      	cmp	r6, #102	; 0x66
    3b24:	9319      	str	r3, [sp, #100]	; 0x64
    3b26:	f000 817d 	beq.w	3e24 <_vfprintf_r+0x1238>
    3b2a:	2e46      	cmp	r6, #70	; 0x46
    3b2c:	f000 81da 	beq.w	3ee4 <_vfprintf_r+0x12f8>
    3b30:	9b07      	ldr	r3, [sp, #28]
    3b32:	463a      	mov	r2, r7
    3b34:	2b45      	cmp	r3, #69	; 0x45
    3b36:	f04f 0002 	mov.w	r0, #2
    3b3a:	462b      	mov	r3, r5
    3b3c:	f000 81a2 	beq.w	3e84 <_vfprintf_r+0x1298>
    3b40:	9c08      	ldr	r4, [sp, #32]
    3b42:	a921      	add	r1, sp, #132	; 0x84
    3b44:	e9cd 0400 	strd	r0, r4, [sp]
    3b48:	9104      	str	r1, [sp, #16]
    3b4a:	a81e      	add	r0, sp, #120	; 0x78
    3b4c:	a91d      	add	r1, sp, #116	; 0x74
    3b4e:	e9cd 1002 	strd	r1, r0, [sp, #8]
    3b52:	980a      	ldr	r0, [sp, #40]	; 0x28
    3b54:	f000 fd08 	bl	4568 <_dtoa_r>
    3b58:	2e67      	cmp	r6, #103	; 0x67
    3b5a:	900e      	str	r0, [sp, #56]	; 0x38
    3b5c:	f040 82cc 	bne.w	40f8 <_vfprintf_r+0x150c>
    3b60:	f01b 0f01 	tst.w	fp, #1
    3b64:	f000 80d9 	beq.w	3d1a <_vfprintf_r+0x112e>
    3b68:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    3b6a:	9a08      	ldr	r2, [sp, #32]
    3b6c:	189c      	adds	r4, r3, r2
    3b6e:	9a15      	ldr	r2, [sp, #84]	; 0x54
    3b70:	4638      	mov	r0, r7
    3b72:	9b16      	ldr	r3, [sp, #88]	; 0x58
    3b74:	4629      	mov	r1, r5
    3b76:	f7fe fd53 	bl	2620 <__aeabi_dcmpeq>
    3b7a:	2800      	cmp	r0, #0
    3b7c:	f000 8146 	beq.w	3e0c <_vfprintf_r+0x1220>
    3b80:	4623      	mov	r3, r4
    3b82:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    3b84:	1a9b      	subs	r3, r3, r2
    3b86:	9310      	str	r3, [sp, #64]	; 0x40
    3b88:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    3b8a:	930f      	str	r3, [sp, #60]	; 0x3c
    3b8c:	9b07      	ldr	r3, [sp, #28]
    3b8e:	2b47      	cmp	r3, #71	; 0x47
    3b90:	f000 80cc 	beq.w	3d2c <_vfprintf_r+0x1140>
    3b94:	2e66      	cmp	r6, #102	; 0x66
    3b96:	f040 80d0 	bne.w	3d3a <_vfprintf_r+0x114e>
    3b9a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3b9c:	2b00      	cmp	r3, #0
    3b9e:	9b08      	ldr	r3, [sp, #32]
    3ba0:	f340 826c 	ble.w	407c <_vfprintf_r+0x1490>
    3ba4:	2b00      	cmp	r3, #0
    3ba6:	f040 824c 	bne.w	4042 <_vfprintf_r+0x1456>
    3baa:	f01b 0f01 	tst.w	fp, #1
    3bae:	f040 8248 	bne.w	4042 <_vfprintf_r+0x1456>
    3bb2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3bb4:	9307      	str	r3, [sp, #28]
    3bb6:	930c      	str	r3, [sp, #48]	; 0x30
    3bb8:	9b19      	ldr	r3, [sp, #100]	; 0x64
    3bba:	2b00      	cmp	r3, #0
    3bbc:	f040 80f5 	bne.w	3daa <_vfprintf_r+0x11be>
    3bc0:	9308      	str	r3, [sp, #32]
    3bc2:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    3bc6:	f7ff b9c2 	b.w	2f4e <_vfprintf_r+0x362>
    3bca:	f01b 0f10 	tst.w	fp, #16
    3bce:	d107      	bne.n	3be0 <_vfprintf_r+0xff4>
    3bd0:	f01b 0f40 	tst.w	fp, #64	; 0x40
    3bd4:	d004      	beq.n	3be0 <_vfprintf_r+0xff4>
    3bd6:	f8bd 2024 	ldrh.w	r2, [sp, #36]	; 0x24
    3bda:	801a      	strh	r2, [r3, #0]
    3bdc:	f7ff b84f 	b.w	2c7e <_vfprintf_r+0x92>
    3be0:	9a09      	ldr	r2, [sp, #36]	; 0x24
    3be2:	601a      	str	r2, [r3, #0]
    3be4:	f7ff b84b 	b.w	2c7e <_vfprintf_r+0x92>
    3be8:	aa23      	add	r2, sp, #140	; 0x8c
    3bea:	4641      	mov	r1, r8
    3bec:	980a      	ldr	r0, [sp, #40]	; 0x28
    3bee:	f003 f855 	bl	6c9c <__sprint_r>
    3bf2:	2800      	cmp	r0, #0
    3bf4:	f47f a949 	bne.w	2e8a <_vfprintf_r+0x29e>
    3bf8:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3bfc:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3bfe:	f7ff ba1c 	b.w	303a <_vfprintf_r+0x44e>
    3c02:	aa23      	add	r2, sp, #140	; 0x8c
    3c04:	4641      	mov	r1, r8
    3c06:	980a      	ldr	r0, [sp, #40]	; 0x28
    3c08:	f003 f848 	bl	6c9c <__sprint_r>
    3c0c:	2800      	cmp	r0, #0
    3c0e:	f47f a93c 	bne.w	2e8a <_vfprintf_r+0x29e>
    3c12:	e9dd 3424 	ldrd	r3, r4, [sp, #144]	; 0x90
    3c16:	3301      	adds	r3, #1
    3c18:	9308      	str	r3, [sp, #32]
    3c1a:	f10d 09c8 	add.w	r9, sp, #200	; 0xc8
    3c1e:	ae30      	add	r6, sp, #192	; 0xc0
    3c20:	e545      	b.n	36ae <_vfprintf_r+0xac2>
    3c22:	aa23      	add	r2, sp, #140	; 0x8c
    3c24:	4641      	mov	r1, r8
    3c26:	980a      	ldr	r0, [sp, #40]	; 0x28
    3c28:	f003 f838 	bl	6c9c <__sprint_r>
    3c2c:	2800      	cmp	r0, #0
    3c2e:	f47f a92c 	bne.w	2e8a <_vfprintf_r+0x29e>
    3c32:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3c36:	e470      	b.n	351a <_vfprintf_r+0x92e>
    3c38:	f8df b3a4 	ldr.w	fp, [pc, #932]	; 3fe0 <_vfprintf_r+0x13f4>
    3c3c:	f7ff ba2c 	b.w	3098 <_vfprintf_r+0x4ac>
    3c40:	f109 0908 	add.w	r9, r9, #8
    3c44:	e585      	b.n	3752 <_vfprintf_r+0xb66>
    3c46:	232d      	movs	r3, #45	; 0x2d
    3c48:	461f      	mov	r7, r3
    3c4a:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
    3c4e:	f7ff bbe5 	b.w	341c <_vfprintf_r+0x830>
    3c52:	aa23      	add	r2, sp, #140	; 0x8c
    3c54:	4641      	mov	r1, r8
    3c56:	980a      	ldr	r0, [sp, #40]	; 0x28
    3c58:	f003 f820 	bl	6c9c <__sprint_r>
    3c5c:	2800      	cmp	r0, #0
    3c5e:	f47f a914 	bne.w	2e8a <_vfprintf_r+0x29e>
    3c62:	e9dd 3424 	ldrd	r3, r4, [sp, #144]	; 0x90
    3c66:	3301      	adds	r3, #1
    3c68:	ae30      	add	r6, sp, #192	; 0xc0
    3c6a:	9308      	str	r3, [sp, #32]
    3c6c:	f10d 09c8 	add.w	r9, sp, #200	; 0xc8
    3c70:	e51d      	b.n	36ae <_vfprintf_r+0xac2>
    3c72:	aa23      	add	r2, sp, #140	; 0x8c
    3c74:	4641      	mov	r1, r8
    3c76:	980a      	ldr	r0, [sp, #40]	; 0x28
    3c78:	f003 f810 	bl	6c9c <__sprint_r>
    3c7c:	2800      	cmp	r0, #0
    3c7e:	f47f a904 	bne.w	2e8a <_vfprintf_r+0x29e>
    3c82:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    3c84:	9a10      	ldr	r2, [sp, #64]	; 0x40
    3c86:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3c8a:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3c8c:	1ad3      	subs	r3, r2, r3
    3c8e:	e6ab      	b.n	39e8 <_vfprintf_r+0xdfc>
    3c90:	2306      	movs	r3, #6
    3c92:	9308      	str	r3, [sp, #32]
    3c94:	e73a      	b.n	3b0c <_vfprintf_r+0xf20>
    3c96:	9b08      	ldr	r3, [sp, #32]
    3c98:	940d      	str	r4, [sp, #52]	; 0x34
    3c9a:	9307      	str	r3, [sp, #28]
    3c9c:	930c      	str	r3, [sp, #48]	; 0x30
    3c9e:	9008      	str	r0, [sp, #32]
    3ca0:	f8cd b018 	str.w	fp, [sp, #24]
    3ca4:	900f      	str	r0, [sp, #60]	; 0x3c
    3ca6:	f89d 706f 	ldrb.w	r7, [sp, #111]	; 0x6f
    3caa:	f7ff b950 	b.w	2f4e <_vfprintf_r+0x362>
    3cae:	46a3      	mov	fp, r4
    3cb0:	461c      	mov	r4, r3
    3cb2:	1c6b      	adds	r3, r5, #1
    3cb4:	9308      	str	r3, [sp, #32]
    3cb6:	f106 0208 	add.w	r2, r6, #8
    3cba:	9b08      	ldr	r3, [sp, #32]
    3cbc:	443c      	add	r4, r7
    3cbe:	2b07      	cmp	r3, #7
    3cc0:	9425      	str	r4, [sp, #148]	; 0x94
    3cc2:	e9c6 b700 	strd	fp, r7, [r6]
    3cc6:	9324      	str	r3, [sp, #144]	; 0x90
    3cc8:	dc9b      	bgt.n	3c02 <_vfprintf_r+0x1016>
    3cca:	3301      	adds	r3, #1
    3ccc:	9308      	str	r3, [sp, #32]
    3cce:	f102 0908 	add.w	r9, r2, #8
    3cd2:	4616      	mov	r6, r2
    3cd4:	e4eb      	b.n	36ae <_vfprintf_r+0xac2>
    3cd6:	aa23      	add	r2, sp, #140	; 0x8c
    3cd8:	4641      	mov	r1, r8
    3cda:	980a      	ldr	r0, [sp, #40]	; 0x28
    3cdc:	f002 ffde 	bl	6c9c <__sprint_r>
    3ce0:	2800      	cmp	r0, #0
    3ce2:	f47f a8d2 	bne.w	2e8a <_vfprintf_r+0x29e>
    3ce6:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3cea:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3cec:	e42c      	b.n	3548 <_vfprintf_r+0x95c>
    3cee:	9b08      	ldr	r3, [sp, #32]
    3cf0:	9f0e      	ldr	r7, [sp, #56]	; 0x38
    3cf2:	2b06      	cmp	r3, #6
    3cf4:	bf28      	it	cs
    3cf6:	2306      	movcs	r3, #6
    3cf8:	9307      	str	r3, [sp, #28]
    3cfa:	930c      	str	r3, [sp, #48]	; 0x30
    3cfc:	4bb6      	ldr	r3, [pc, #728]	; (3fd8 <_vfprintf_r+0x13ec>)
    3cfe:	9708      	str	r7, [sp, #32]
    3d00:	940d      	str	r4, [sp, #52]	; 0x34
    3d02:	f8cd b018 	str.w	fp, [sp, #24]
    3d06:	970f      	str	r7, [sp, #60]	; 0x3c
    3d08:	930e      	str	r3, [sp, #56]	; 0x38
    3d0a:	f7ff b920 	b.w	2f4e <_vfprintf_r+0x362>
    3d0e:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    3d10:	ab30      	add	r3, sp, #192	; 0xc0
    3d12:	1a9b      	subs	r3, r3, r2
    3d14:	930c      	str	r3, [sp, #48]	; 0x30
    3d16:	f7ff b912 	b.w	2f3e <_vfprintf_r+0x352>
    3d1a:	9a1d      	ldr	r2, [sp, #116]	; 0x74
    3d1c:	9b21      	ldr	r3, [sp, #132]	; 0x84
    3d1e:	920f      	str	r2, [sp, #60]	; 0x3c
    3d20:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    3d22:	1a9b      	subs	r3, r3, r2
    3d24:	9310      	str	r3, [sp, #64]	; 0x40
    3d26:	9b07      	ldr	r3, [sp, #28]
    3d28:	2b47      	cmp	r3, #71	; 0x47
    3d2a:	d106      	bne.n	3d3a <_vfprintf_r+0x114e>
    3d2c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3d2e:	1cda      	adds	r2, r3, #3
    3d30:	db02      	blt.n	3d38 <_vfprintf_r+0x114c>
    3d32:	9a08      	ldr	r2, [sp, #32]
    3d34:	429a      	cmp	r2, r3
    3d36:	da3f      	bge.n	3db8 <_vfprintf_r+0x11cc>
    3d38:	3e02      	subs	r6, #2
    3d3a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3d3c:	f88d 607c 	strb.w	r6, [sp, #124]	; 0x7c
    3d40:	3b01      	subs	r3, #1
    3d42:	2b00      	cmp	r3, #0
    3d44:	bfb4      	ite	lt
    3d46:	222d      	movlt	r2, #45	; 0x2d
    3d48:	222b      	movge	r2, #43	; 0x2b
    3d4a:	931d      	str	r3, [sp, #116]	; 0x74
    3d4c:	bfb8      	it	lt
    3d4e:	9b0f      	ldrlt	r3, [sp, #60]	; 0x3c
    3d50:	f88d 207d 	strb.w	r2, [sp, #125]	; 0x7d
    3d54:	bfb8      	it	lt
    3d56:	f1c3 0301 	rsblt	r3, r3, #1
    3d5a:	2b09      	cmp	r3, #9
    3d5c:	f300 810f 	bgt.w	3f7e <_vfprintf_r+0x1392>
    3d60:	2230      	movs	r2, #48	; 0x30
    3d62:	4413      	add	r3, r2
    3d64:	f88d 307f 	strb.w	r3, [sp, #127]	; 0x7f
    3d68:	f88d 207e 	strb.w	r2, [sp, #126]	; 0x7e
    3d6c:	ab20      	add	r3, sp, #128	; 0x80
    3d6e:	aa1f      	add	r2, sp, #124	; 0x7c
    3d70:	1a9b      	subs	r3, r3, r2
    3d72:	9a10      	ldr	r2, [sp, #64]	; 0x40
    3d74:	9318      	str	r3, [sp, #96]	; 0x60
    3d76:	2a01      	cmp	r2, #1
    3d78:	4413      	add	r3, r2
    3d7a:	930c      	str	r3, [sp, #48]	; 0x30
    3d7c:	f340 8157 	ble.w	402e <_vfprintf_r+0x1442>
    3d80:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    3d82:	9a11      	ldr	r2, [sp, #68]	; 0x44
    3d84:	4413      	add	r3, r2
    3d86:	930c      	str	r3, [sp, #48]	; 0x30
    3d88:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    3d8c:	9307      	str	r3, [sp, #28]
    3d8e:	2300      	movs	r3, #0
    3d90:	930f      	str	r3, [sp, #60]	; 0x3c
    3d92:	e711      	b.n	3bb8 <_vfprintf_r+0xfcc>
    3d94:	980e      	ldr	r0, [sp, #56]	; 0x38
    3d96:	9508      	str	r5, [sp, #32]
    3d98:	f002 ff16 	bl	6bc8 <strlen>
    3d9c:	f8cd b018 	str.w	fp, [sp, #24]
    3da0:	e9cd 040c 	strd	r0, r4, [sp, #48]	; 0x30
    3da4:	4603      	mov	r3, r0
    3da6:	f7ff baa9 	b.w	32fc <_vfprintf_r+0x710>
    3daa:	272d      	movs	r7, #45	; 0x2d
    3dac:	2300      	movs	r3, #0
    3dae:	f88d 706f 	strb.w	r7, [sp, #111]	; 0x6f
    3db2:	9308      	str	r3, [sp, #32]
    3db4:	f7ff b8cc 	b.w	2f50 <_vfprintf_r+0x364>
    3db8:	e9dd 310f 	ldrd	r3, r1, [sp, #60]	; 0x3c
    3dbc:	428b      	cmp	r3, r1
    3dbe:	db7e      	blt.n	3ebe <_vfprintf_r+0x12d2>
    3dc0:	f01b 0f01 	tst.w	fp, #1
    3dc4:	f000 811b 	beq.w	3ffe <_vfprintf_r+0x1412>
    3dc8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3dca:	9a11      	ldr	r2, [sp, #68]	; 0x44
    3dcc:	2667      	movs	r6, #103	; 0x67
    3dce:	4413      	add	r3, r2
    3dd0:	930c      	str	r3, [sp, #48]	; 0x30
    3dd2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    3dd6:	9307      	str	r3, [sp, #28]
    3dd8:	e6ee      	b.n	3bb8 <_vfprintf_r+0xfcc>
    3dda:	aa23      	add	r2, sp, #140	; 0x8c
    3ddc:	4641      	mov	r1, r8
    3dde:	980a      	ldr	r0, [sp, #40]	; 0x28
    3de0:	f002 ff5c 	bl	6c9c <__sprint_r>
    3de4:	2800      	cmp	r0, #0
    3de6:	f47f a850 	bne.w	2e8a <_vfprintf_r+0x29e>
    3dea:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3dee:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    3df0:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3df2:	e5e0      	b.n	39b6 <_vfprintf_r+0xdca>
    3df4:	aa23      	add	r2, sp, #140	; 0x8c
    3df6:	4641      	mov	r1, r8
    3df8:	980a      	ldr	r0, [sp, #40]	; 0x28
    3dfa:	f002 ff4f 	bl	6c9c <__sprint_r>
    3dfe:	2800      	cmp	r0, #0
    3e00:	f47f a843 	bne.w	2e8a <_vfprintf_r+0x29e>
    3e04:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3e08:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3e0a:	e522      	b.n	3852 <_vfprintf_r+0xc66>
    3e0c:	9b21      	ldr	r3, [sp, #132]	; 0x84
    3e0e:	42a3      	cmp	r3, r4
    3e10:	f4bf aeb7 	bcs.w	3b82 <_vfprintf_r+0xf96>
    3e14:	2130      	movs	r1, #48	; 0x30
    3e16:	1c5a      	adds	r2, r3, #1
    3e18:	9221      	str	r2, [sp, #132]	; 0x84
    3e1a:	7019      	strb	r1, [r3, #0]
    3e1c:	9b21      	ldr	r3, [sp, #132]	; 0x84
    3e1e:	429c      	cmp	r4, r3
    3e20:	d8f9      	bhi.n	3e16 <_vfprintf_r+0x122a>
    3e22:	e6ae      	b.n	3b82 <_vfprintf_r+0xf96>
    3e24:	2003      	movs	r0, #3
    3e26:	9c08      	ldr	r4, [sp, #32]
    3e28:	a921      	add	r1, sp, #132	; 0x84
    3e2a:	e9cd 0400 	strd	r0, r4, [sp]
    3e2e:	9104      	str	r1, [sp, #16]
    3e30:	a81e      	add	r0, sp, #120	; 0x78
    3e32:	a91d      	add	r1, sp, #116	; 0x74
    3e34:	e9cd 1002 	strd	r1, r0, [sp, #8]
    3e38:	463a      	mov	r2, r7
    3e3a:	462b      	mov	r3, r5
    3e3c:	980a      	ldr	r0, [sp, #40]	; 0x28
    3e3e:	f000 fb93 	bl	4568 <_dtoa_r>
    3e42:	940c      	str	r4, [sp, #48]	; 0x30
    3e44:	900e      	str	r0, [sp, #56]	; 0x38
    3e46:	1904      	adds	r4, r0, r4
    3e48:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    3e4a:	781b      	ldrb	r3, [r3, #0]
    3e4c:	2b30      	cmp	r3, #48	; 0x30
    3e4e:	f000 80dc 	beq.w	400a <_vfprintf_r+0x141e>
    3e52:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    3e54:	441c      	add	r4, r3
    3e56:	e68a      	b.n	3b6e <_vfprintf_r+0xf82>
    3e58:	f8df b184 	ldr.w	fp, [pc, #388]	; 3fe0 <_vfprintf_r+0x13f4>
    3e5c:	f7ff bbcf 	b.w	35fe <_vfprintf_r+0xa12>
    3e60:	2300      	movs	r3, #0
    3e62:	9308      	str	r3, [sp, #32]
    3e64:	f7fe bf40 	b.w	2ce8 <_vfprintf_r+0xfc>
    3e68:	aa23      	add	r2, sp, #140	; 0x8c
    3e6a:	4641      	mov	r1, r8
    3e6c:	980a      	ldr	r0, [sp, #40]	; 0x28
    3e6e:	f002 ff15 	bl	6c9c <__sprint_r>
    3e72:	2800      	cmp	r0, #0
    3e74:	f47f a809 	bne.w	2e8a <_vfprintf_r+0x29e>
    3e78:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
    3e7c:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3e80:	9b1d      	ldr	r3, [sp, #116]	; 0x74
    3e82:	e47b      	b.n	377c <_vfprintf_r+0xb90>
    3e84:	9908      	ldr	r1, [sp, #32]
    3e86:	9000      	str	r0, [sp, #0]
    3e88:	1c4c      	adds	r4, r1, #1
    3e8a:	a921      	add	r1, sp, #132	; 0x84
    3e8c:	a81e      	add	r0, sp, #120	; 0x78
    3e8e:	9104      	str	r1, [sp, #16]
    3e90:	a91d      	add	r1, sp, #116	; 0x74
    3e92:	e9cd 1002 	strd	r1, r0, [sp, #8]
    3e96:	9401      	str	r4, [sp, #4]
    3e98:	980a      	ldr	r0, [sp, #40]	; 0x28
    3e9a:	940c      	str	r4, [sp, #48]	; 0x30
    3e9c:	f000 fb64 	bl	4568 <_dtoa_r>
    3ea0:	900e      	str	r0, [sp, #56]	; 0x38
    3ea2:	2e47      	cmp	r6, #71	; 0x47
    3ea4:	f040 811d 	bne.w	40e2 <_vfprintf_r+0x14f6>
    3ea8:	f01b 0f01 	tst.w	fp, #1
    3eac:	f000 8112 	beq.w	40d4 <_vfprintf_r+0x14e8>
    3eb0:	9b0e      	ldr	r3, [sp, #56]	; 0x38
    3eb2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    3eb4:	2e46      	cmp	r6, #70	; 0x46
    3eb6:	eb03 0402 	add.w	r4, r3, r2
    3eba:	d0c5      	beq.n	3e48 <_vfprintf_r+0x125c>
    3ebc:	e657      	b.n	3b6e <_vfprintf_r+0xf82>
    3ebe:	e9dd 3210 	ldrd	r3, r2, [sp, #64]	; 0x40
    3ec2:	4413      	add	r3, r2
    3ec4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
    3ec6:	930c      	str	r3, [sp, #48]	; 0x30
    3ec8:	2a00      	cmp	r2, #0
    3eca:	dc06      	bgt.n	3eda <_vfprintf_r+0x12ee>
    3ecc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    3ece:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    3ed0:	f1c3 0301 	rsb	r3, r3, #1
    3ed4:	441a      	add	r2, r3
    3ed6:	4613      	mov	r3, r2
    3ed8:	920c      	str	r2, [sp, #48]	; 0x30
    3eda:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    3ede:	9307      	str	r3, [sp, #28]
    3ee0:	2667      	movs	r6, #103	; 0x67
    3ee2:	e669      	b.n	3bb8 <_vfprintf_r+0xfcc>
    3ee4:	2003      	movs	r0, #3
    3ee6:	9c08      	ldr	r4, [sp, #32]
    3ee8:	a921      	add	r1, sp, #132	; 0x84
    3eea:	e9cd 0400 	strd	r0, r4, [sp]
    3eee:	9104      	str	r1, [sp, #16]
    3ef0:	a81e      	add	r0, sp, #120	; 0x78
    3ef2:	a91d      	add	r1, sp, #116	; 0x74
    3ef4:	e9cd 1002 	strd	r1, r0, [sp, #8]
    3ef8:	463a      	mov	r2, r7
    3efa:	462b      	mov	r3, r5
    3efc:	980a      	ldr	r0, [sp, #40]	; 0x28
    3efe:	f000 fb33 	bl	4568 <_dtoa_r>
    3f02:	940c      	str	r4, [sp, #48]	; 0x30
    3f04:	900e      	str	r0, [sp, #56]	; 0x38
    3f06:	e7d3      	b.n	3eb0 <_vfprintf_r+0x12c4>
    3f08:	980a      	ldr	r0, [sp, #40]	; 0x28
    3f0a:	aa23      	add	r2, sp, #140	; 0x8c
    3f0c:	4641      	mov	r1, r8
    3f0e:	f002 fec5 	bl	6c9c <__sprint_r>
    3f12:	2800      	cmp	r0, #0
    3f14:	f43e afb7 	beq.w	2e86 <_vfprintf_r+0x29a>
    3f18:	f7fe bfb7 	b.w	2e8a <_vfprintf_r+0x29e>
    3f1c:	aa23      	add	r2, sp, #140	; 0x8c
    3f1e:	4641      	mov	r1, r8
    3f20:	980a      	ldr	r0, [sp, #40]	; 0x28
    3f22:	f002 febb 	bl	6c9c <__sprint_r>
    3f26:	2800      	cmp	r0, #0
    3f28:	f47e afaf 	bne.w	2e8a <_vfprintf_r+0x29e>
    3f2c:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3f30:	9c25      	ldr	r4, [sp, #148]	; 0x94
    3f32:	e52b      	b.n	398c <_vfprintf_r+0xda0>
    3f34:	425d      	negs	r5, r3
    3f36:	3310      	adds	r3, #16
    3f38:	f280 80db 	bge.w	40f2 <_vfprintf_r+0x1506>
    3f3c:	f8df b0a0 	ldr.w	fp, [pc, #160]	; 3fe0 <_vfprintf_r+0x13f4>
    3f40:	2610      	movs	r6, #16
    3f42:	465f      	mov	r7, fp
    3f44:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
    3f48:	e004      	b.n	3f54 <_vfprintf_r+0x1368>
    3f4a:	f109 0908 	add.w	r9, r9, #8
    3f4e:	3d10      	subs	r5, #16
    3f50:	2d10      	cmp	r5, #16
    3f52:	dd47      	ble.n	3fe4 <_vfprintf_r+0x13f8>
    3f54:	3201      	adds	r2, #1
    3f56:	3410      	adds	r4, #16
    3f58:	2a07      	cmp	r2, #7
    3f5a:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3f5e:	e9c9 7600 	strd	r7, r6, [r9]
    3f62:	ddf2      	ble.n	3f4a <_vfprintf_r+0x135e>
    3f64:	aa23      	add	r2, sp, #140	; 0x8c
    3f66:	4641      	mov	r1, r8
    3f68:	4658      	mov	r0, fp
    3f6a:	f002 fe97 	bl	6c9c <__sprint_r>
    3f6e:	2800      	cmp	r0, #0
    3f70:	f47e af8b 	bne.w	2e8a <_vfprintf_r+0x29e>
    3f74:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
    3f78:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    3f7c:	e7e7      	b.n	3f4e <_vfprintf_r+0x1362>
    3f7e:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
    3f82:	4601      	mov	r1, r0
    3f84:	4c15      	ldr	r4, [pc, #84]	; (3fdc <_vfprintf_r+0x13f0>)
    3f86:	e000      	b.n	3f8a <_vfprintf_r+0x139e>
    3f88:	4611      	mov	r1, r2
    3f8a:	fba4 2503 	umull	r2, r5, r4, r3
    3f8e:	08ed      	lsrs	r5, r5, #3
    3f90:	eb05 0285 	add.w	r2, r5, r5, lsl #2
    3f94:	eba3 0242 	sub.w	r2, r3, r2, lsl #1
    3f98:	3230      	adds	r2, #48	; 0x30
    3f9a:	2d09      	cmp	r5, #9
    3f9c:	f801 2c01 	strb.w	r2, [r1, #-1]
    3fa0:	462b      	mov	r3, r5
    3fa2:	f101 32ff 	add.w	r2, r1, #4294967295
    3fa6:	dcef      	bgt.n	3f88 <_vfprintf_r+0x139c>
    3fa8:	3330      	adds	r3, #48	; 0x30
    3faa:	3902      	subs	r1, #2
    3fac:	b2dc      	uxtb	r4, r3
    3fae:	4288      	cmp	r0, r1
    3fb0:	f802 4c01 	strb.w	r4, [r2, #-1]
    3fb4:	f240 809a 	bls.w	40ec <_vfprintf_r+0x1500>
    3fb8:	f10d 017e 	add.w	r1, sp, #126	; 0x7e
    3fbc:	4613      	mov	r3, r2
    3fbe:	e001      	b.n	3fc4 <_vfprintf_r+0x13d8>
    3fc0:	f813 4b01 	ldrb.w	r4, [r3], #1
    3fc4:	4298      	cmp	r0, r3
    3fc6:	f801 4b01 	strb.w	r4, [r1], #1
    3fca:	d1f9      	bne.n	3fc0 <_vfprintf_r+0x13d4>
    3fcc:	ab23      	add	r3, sp, #140	; 0x8c
    3fce:	1a9b      	subs	r3, r3, r2
    3fd0:	f10d 027e 	add.w	r2, sp, #126	; 0x7e
    3fd4:	4413      	add	r3, r2
    3fd6:	e6ca      	b.n	3d6e <_vfprintf_r+0x1182>
    3fd8:	00008a4c 	.word	0x00008a4c
    3fdc:	cccccccd 	.word	0xcccccccd
    3fe0:	00008a68 	.word	0x00008a68
    3fe4:	46bb      	mov	fp, r7
    3fe6:	3201      	adds	r2, #1
    3fe8:	442c      	add	r4, r5
    3fea:	2a07      	cmp	r2, #7
    3fec:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
    3ff0:	e9c9 b500 	strd	fp, r5, [r9]
    3ff4:	dc60      	bgt.n	40b8 <_vfprintf_r+0x14cc>
    3ff6:	f109 0908 	add.w	r9, r9, #8
    3ffa:	f7ff bbc2 	b.w	3782 <_vfprintf_r+0xb96>
    3ffe:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
    4002:	9207      	str	r2, [sp, #28]
    4004:	930c      	str	r3, [sp, #48]	; 0x30
    4006:	2667      	movs	r6, #103	; 0x67
    4008:	e5d6      	b.n	3bb8 <_vfprintf_r+0xfcc>
    400a:	9a15      	ldr	r2, [sp, #84]	; 0x54
    400c:	4638      	mov	r0, r7
    400e:	9b16      	ldr	r3, [sp, #88]	; 0x58
    4010:	4629      	mov	r1, r5
    4012:	f7fe fb05 	bl	2620 <__aeabi_dcmpeq>
    4016:	2800      	cmp	r0, #0
    4018:	f47f af1b 	bne.w	3e52 <_vfprintf_r+0x1266>
    401c:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    401e:	f1c3 0301 	rsb	r3, r3, #1
    4022:	931d      	str	r3, [sp, #116]	; 0x74
    4024:	441c      	add	r4, r3
    4026:	e5a2      	b.n	3b6e <_vfprintf_r+0xf82>
    4028:	f8df b114 	ldr.w	fp, [pc, #276]	; 4140 <_vfprintf_r+0x1554>
    402c:	e54b      	b.n	3ac6 <_vfprintf_r+0xeda>
    402e:	f01b 0301 	ands.w	r3, fp, #1
    4032:	930f      	str	r3, [sp, #60]	; 0x3c
    4034:	f47f aea4 	bne.w	3d80 <_vfprintf_r+0x1194>
    4038:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    403a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
    403e:	9307      	str	r3, [sp, #28]
    4040:	e5ba      	b.n	3bb8 <_vfprintf_r+0xfcc>
    4042:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
    4044:	9a11      	ldr	r2, [sp, #68]	; 0x44
    4046:	4413      	add	r3, r2
    4048:	9a08      	ldr	r2, [sp, #32]
    404a:	441a      	add	r2, r3
    404c:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
    4050:	920c      	str	r2, [sp, #48]	; 0x30
    4052:	9307      	str	r3, [sp, #28]
    4054:	e5b0      	b.n	3bb8 <_vfprintf_r+0xfcc>
    4056:	9b12      	ldr	r3, [sp, #72]	; 0x48
    4058:	2103      	movs	r1, #3
    405a:	2b00      	cmp	r3, #0
    405c:	bfb8      	it	lt
    405e:	232d      	movlt	r3, #45	; 0x2d
    4060:	f04f 0000 	mov.w	r0, #0
    4064:	bfba      	itte	lt
    4066:	461f      	movlt	r7, r3
    4068:	f88d 306f 	strblt.w	r3, [sp, #111]	; 0x6f
    406c:	f89d 706f 	ldrbge.w	r7, [sp, #111]	; 0x6f
    4070:	e9cd 1007 	strd	r1, r0, [sp, #28]
    4074:	4a30      	ldr	r2, [pc, #192]	; (4138 <_vfprintf_r+0x154c>)
    4076:	4b31      	ldr	r3, [pc, #196]	; (413c <_vfprintf_r+0x1550>)
    4078:	f7ff b9d6 	b.w	3428 <_vfprintf_r+0x83c>
    407c:	b96b      	cbnz	r3, 409a <_vfprintf_r+0x14ae>
    407e:	f01b 0f01 	tst.w	fp, #1
    4082:	d10a      	bne.n	409a <_vfprintf_r+0x14ae>
    4084:	2301      	movs	r3, #1
    4086:	9307      	str	r3, [sp, #28]
    4088:	930c      	str	r3, [sp, #48]	; 0x30
    408a:	e595      	b.n	3bb8 <_vfprintf_r+0xfcc>
    408c:	464a      	mov	r2, r9
    408e:	f8df b0b0 	ldr.w	fp, [pc, #176]	; 4140 <_vfprintf_r+0x1554>
    4092:	e612      	b.n	3cba <_vfprintf_r+0x10ce>
    4094:	f8df b0a8 	ldr.w	fp, [pc, #168]	; 4140 <_vfprintf_r+0x1554>
    4098:	e46d      	b.n	3976 <_vfprintf_r+0xd8a>
    409a:	9b11      	ldr	r3, [sp, #68]	; 0x44
    409c:	3301      	adds	r3, #1
    409e:	e7d3      	b.n	4048 <_vfprintf_r+0x145c>
    40a0:	9c0d      	ldr	r4, [sp, #52]	; 0x34
    40a2:	f89a 6001 	ldrb.w	r6, [sl, #1]
    40a6:	6823      	ldr	r3, [r4, #0]
    40a8:	4682      	mov	sl, r0
    40aa:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
    40ae:	9308      	str	r3, [sp, #32]
    40b0:	1d23      	adds	r3, r4, #4
    40b2:	930d      	str	r3, [sp, #52]	; 0x34
    40b4:	f7fe be16 	b.w	2ce4 <_vfprintf_r+0xf8>
    40b8:	aa23      	add	r2, sp, #140	; 0x8c
    40ba:	4641      	mov	r1, r8
    40bc:	980a      	ldr	r0, [sp, #40]	; 0x28
    40be:	f002 fded 	bl	6c9c <__sprint_r>
    40c2:	2800      	cmp	r0, #0
    40c4:	f47e aee1 	bne.w	2e8a <_vfprintf_r+0x29e>
    40c8:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
    40cc:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
    40d0:	f7ff bb57 	b.w	3782 <_vfprintf_r+0xb96>
    40d4:	9a1d      	ldr	r2, [sp, #116]	; 0x74
    40d6:	9b21      	ldr	r3, [sp, #132]	; 0x84
    40d8:	920f      	str	r2, [sp, #60]	; 0x3c
    40da:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    40dc:	1a9b      	subs	r3, r3, r2
    40de:	9310      	str	r3, [sp, #64]	; 0x40
    40e0:	e624      	b.n	3d2c <_vfprintf_r+0x1140>
    40e2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    40e4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
    40e6:	4413      	add	r3, r2
    40e8:	461c      	mov	r4, r3
    40ea:	e540      	b.n	3b6e <_vfprintf_r+0xf82>
    40ec:	f10d 037e 	add.w	r3, sp, #126	; 0x7e
    40f0:	e63d      	b.n	3d6e <_vfprintf_r+0x1182>
    40f2:	f8df b04c 	ldr.w	fp, [pc, #76]	; 4140 <_vfprintf_r+0x1554>
    40f6:	e776      	b.n	3fe6 <_vfprintf_r+0x13fa>
    40f8:	9b08      	ldr	r3, [sp, #32]
    40fa:	930c      	str	r3, [sp, #48]	; 0x30
    40fc:	e6d1      	b.n	3ea2 <_vfprintf_r+0x12b6>
    40fe:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    4102:	f7ff b905 	b.w	3310 <_vfprintf_r+0x724>
    4106:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    410a:	f7ff b9d9 	b.w	34c0 <_vfprintf_r+0x8d4>
    410e:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    4112:	f7ff b8bb 	b.w	328c <_vfprintf_r+0x6a0>
    4116:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    411a:	f7fe bedf 	b.w	2edc <_vfprintf_r+0x2f0>
    411e:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    4122:	f7ff b83d 	b.w	31a0 <_vfprintf_r+0x5b4>
    4126:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    412a:	f7ff b94b 	b.w	33c4 <_vfprintf_r+0x7d8>
    412e:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
    4132:	f7ff b92f 	b.w	3394 <_vfprintf_r+0x7a8>
    4136:	bf00      	nop
    4138:	00008a20 	.word	0x00008a20
    413c:	00008a1c 	.word	0x00008a1c
    4140:	00008a68 	.word	0x00008a68

Disassembly of section .text.vfprintf:

00004144 <vfprintf>:
    4144:	b410      	push	{r4}
    4146:	4c04      	ldr	r4, [pc, #16]	; (4158 <vfprintf+0x14>)
    4148:	4613      	mov	r3, r2
    414a:	460a      	mov	r2, r1
    414c:	4601      	mov	r1, r0
    414e:	6820      	ldr	r0, [r4, #0]
    4150:	bc10      	pop	{r4}
    4152:	f7fe bd4b 	b.w	2bec <_vfprintf_r>
    4156:	bf00      	nop
    4158:	20000010 	.word	0x20000010

Disassembly of section .text.__sbprintf:

0000415c <__sbprintf>:
    415c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    4160:	460c      	mov	r4, r1
    4162:	f04f 0c00 	mov.w	ip, #0
    4166:	f44f 6580 	mov.w	r5, #1024	; 0x400
    416a:	4606      	mov	r6, r0
    416c:	4617      	mov	r7, r2
    416e:	4698      	mov	r8, r3
    4170:	6e62      	ldr	r2, [r4, #100]	; 0x64
    4172:	89e3      	ldrh	r3, [r4, #14]
    4174:	8989      	ldrh	r1, [r1, #12]
    4176:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
    417a:	f021 0102 	bic.w	r1, r1, #2
    417e:	9219      	str	r2, [sp, #100]	; 0x64
    4180:	f8ad 300e 	strh.w	r3, [sp, #14]
    4184:	69e2      	ldr	r2, [r4, #28]
    4186:	6a63      	ldr	r3, [r4, #36]	; 0x24
    4188:	f8ad 100c 	strh.w	r1, [sp, #12]
    418c:	a816      	add	r0, sp, #88	; 0x58
    418e:	a91a      	add	r1, sp, #104	; 0x68
    4190:	f8cd c018 	str.w	ip, [sp, #24]
    4194:	9207      	str	r2, [sp, #28]
    4196:	9309      	str	r3, [sp, #36]	; 0x24
    4198:	9100      	str	r1, [sp, #0]
    419a:	9104      	str	r1, [sp, #16]
    419c:	9502      	str	r5, [sp, #8]
    419e:	9505      	str	r5, [sp, #20]
    41a0:	f001 fcd8 	bl	5b54 <__retarget_lock_init_recursive>
    41a4:	4643      	mov	r3, r8
    41a6:	463a      	mov	r2, r7
    41a8:	4669      	mov	r1, sp
    41aa:	4630      	mov	r0, r6
    41ac:	f7fe fd1e 	bl	2bec <_vfprintf_r>
    41b0:	1e05      	subs	r5, r0, #0
    41b2:	db07      	blt.n	41c4 <__sbprintf+0x68>
    41b4:	4630      	mov	r0, r6
    41b6:	4669      	mov	r1, sp
    41b8:	f001 f998 	bl	54ec <_fflush_r>
    41bc:	2800      	cmp	r0, #0
    41be:	bf18      	it	ne
    41c0:	f04f 35ff 	movne.w	r5, #4294967295
    41c4:	f8bd 300c 	ldrh.w	r3, [sp, #12]
    41c8:	065b      	lsls	r3, r3, #25
    41ca:	d503      	bpl.n	41d4 <__sbprintf+0x78>
    41cc:	89a3      	ldrh	r3, [r4, #12]
    41ce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    41d2:	81a3      	strh	r3, [r4, #12]
    41d4:	9816      	ldr	r0, [sp, #88]	; 0x58
    41d6:	f001 fcc1 	bl	5b5c <__retarget_lock_close_recursive>
    41da:	4628      	mov	r0, r5
    41dc:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
    41e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

000041e4 <__sbprintf>:
    41e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    41e8:	460c      	mov	r4, r1
    41ea:	f04f 0c00 	mov.w	ip, #0
    41ee:	f44f 6580 	mov.w	r5, #1024	; 0x400
    41f2:	4606      	mov	r6, r0
    41f4:	4617      	mov	r7, r2
    41f6:	4698      	mov	r8, r3
    41f8:	6e62      	ldr	r2, [r4, #100]	; 0x64
    41fa:	89e3      	ldrh	r3, [r4, #14]
    41fc:	8989      	ldrh	r1, [r1, #12]
    41fe:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
    4202:	f021 0102 	bic.w	r1, r1, #2
    4206:	9219      	str	r2, [sp, #100]	; 0x64
    4208:	f8ad 300e 	strh.w	r3, [sp, #14]
    420c:	69e2      	ldr	r2, [r4, #28]
    420e:	6a63      	ldr	r3, [r4, #36]	; 0x24
    4210:	f8ad 100c 	strh.w	r1, [sp, #12]
    4214:	a816      	add	r0, sp, #88	; 0x58
    4216:	a91a      	add	r1, sp, #104	; 0x68
    4218:	f8cd c018 	str.w	ip, [sp, #24]
    421c:	9207      	str	r2, [sp, #28]
    421e:	9309      	str	r3, [sp, #36]	; 0x24
    4220:	9100      	str	r1, [sp, #0]
    4222:	9104      	str	r1, [sp, #16]
    4224:	9502      	str	r5, [sp, #8]
    4226:	9505      	str	r5, [sp, #20]
    4228:	f001 fc94 	bl	5b54 <__retarget_lock_init_recursive>
    422c:	4643      	mov	r3, r8
    422e:	463a      	mov	r2, r7
    4230:	4669      	mov	r1, sp
    4232:	4630      	mov	r0, r6
    4234:	f002 fd3c 	bl	6cb0 <_vfiprintf_r>
    4238:	1e05      	subs	r5, r0, #0
    423a:	db07      	blt.n	424c <__sbprintf+0x68>
    423c:	4630      	mov	r0, r6
    423e:	4669      	mov	r1, sp
    4240:	f001 f954 	bl	54ec <_fflush_r>
    4244:	2800      	cmp	r0, #0
    4246:	bf18      	it	ne
    4248:	f04f 35ff 	movne.w	r5, #4294967295
    424c:	f8bd 300c 	ldrh.w	r3, [sp, #12]
    4250:	065b      	lsls	r3, r3, #25
    4252:	d503      	bpl.n	425c <__sbprintf+0x78>
    4254:	89a3      	ldrh	r3, [r4, #12]
    4256:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    425a:	81a3      	strh	r3, [r4, #12]
    425c:	9816      	ldr	r0, [sp, #88]	; 0x58
    425e:	f001 fc7d 	bl	5b5c <__retarget_lock_close_recursive>
    4262:	4628      	mov	r0, r5
    4264:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
    4268:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

Disassembly of section .text.__swsetup_r:

0000426c <__swsetup_r>:
    426c:	b538      	push	{r3, r4, r5, lr}
    426e:	4b31      	ldr	r3, [pc, #196]	; (4334 <__swsetup_r+0xc8>)
    4270:	4605      	mov	r5, r0
    4272:	6818      	ldr	r0, [r3, #0]
    4274:	460c      	mov	r4, r1
    4276:	b110      	cbz	r0, 427e <__swsetup_r+0x12>
    4278:	6b83      	ldr	r3, [r0, #56]	; 0x38
    427a:	2b00      	cmp	r3, #0
    427c:	d03a      	beq.n	42f4 <__swsetup_r+0x88>
    427e:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    4282:	b293      	uxth	r3, r2
    4284:	0718      	lsls	r0, r3, #28
    4286:	d50c      	bpl.n	42a2 <__swsetup_r+0x36>
    4288:	6920      	ldr	r0, [r4, #16]
    428a:	b1a8      	cbz	r0, 42b8 <__swsetup_r+0x4c>
    428c:	f013 0201 	ands.w	r2, r3, #1
    4290:	d020      	beq.n	42d4 <__swsetup_r+0x68>
    4292:	2200      	movs	r2, #0
    4294:	6963      	ldr	r3, [r4, #20]
    4296:	60a2      	str	r2, [r4, #8]
    4298:	425b      	negs	r3, r3
    429a:	61a3      	str	r3, [r4, #24]
    429c:	b300      	cbz	r0, 42e0 <__swsetup_r+0x74>
    429e:	2000      	movs	r0, #0
    42a0:	bd38      	pop	{r3, r4, r5, pc}
    42a2:	06d9      	lsls	r1, r3, #27
    42a4:	d53d      	bpl.n	4322 <__swsetup_r+0xb6>
    42a6:	0758      	lsls	r0, r3, #29
    42a8:	d427      	bmi.n	42fa <__swsetup_r+0x8e>
    42aa:	6920      	ldr	r0, [r4, #16]
    42ac:	f042 0308 	orr.w	r3, r2, #8
    42b0:	81a3      	strh	r3, [r4, #12]
    42b2:	b29b      	uxth	r3, r3
    42b4:	2800      	cmp	r0, #0
    42b6:	d1e9      	bne.n	428c <__swsetup_r+0x20>
    42b8:	f403 7220 	and.w	r2, r3, #640	; 0x280
    42bc:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
    42c0:	d0e4      	beq.n	428c <__swsetup_r+0x20>
    42c2:	4628      	mov	r0, r5
    42c4:	4621      	mov	r1, r4
    42c6:	f001 fc85 	bl	5bd4 <__smakebuf_r>
    42ca:	89a3      	ldrh	r3, [r4, #12]
    42cc:	6920      	ldr	r0, [r4, #16]
    42ce:	f013 0201 	ands.w	r2, r3, #1
    42d2:	d1de      	bne.n	4292 <__swsetup_r+0x26>
    42d4:	0799      	lsls	r1, r3, #30
    42d6:	bf58      	it	pl
    42d8:	6962      	ldrpl	r2, [r4, #20]
    42da:	60a2      	str	r2, [r4, #8]
    42dc:	2800      	cmp	r0, #0
    42de:	d1de      	bne.n	429e <__swsetup_r+0x32>
    42e0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    42e4:	061a      	lsls	r2, r3, #24
    42e6:	d5db      	bpl.n	42a0 <__swsetup_r+0x34>
    42e8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    42ec:	81a3      	strh	r3, [r4, #12]
    42ee:	f04f 30ff 	mov.w	r0, #4294967295
    42f2:	bd38      	pop	{r3, r4, r5, pc}
    42f4:	f001 f9a6 	bl	5644 <__sinit>
    42f8:	e7c1      	b.n	427e <__swsetup_r+0x12>
    42fa:	6b21      	ldr	r1, [r4, #48]	; 0x30
    42fc:	b151      	cbz	r1, 4314 <__swsetup_r+0xa8>
    42fe:	f104 0340 	add.w	r3, r4, #64	; 0x40
    4302:	4299      	cmp	r1, r3
    4304:	d004      	beq.n	4310 <__swsetup_r+0xa4>
    4306:	4628      	mov	r0, r5
    4308:	f001 fac4 	bl	5894 <_free_r>
    430c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    4310:	2300      	movs	r3, #0
    4312:	6323      	str	r3, [r4, #48]	; 0x30
    4314:	2300      	movs	r3, #0
    4316:	6920      	ldr	r0, [r4, #16]
    4318:	f022 0224 	bic.w	r2, r2, #36	; 0x24
    431c:	e9c4 0300 	strd	r0, r3, [r4]
    4320:	e7c4      	b.n	42ac <__swsetup_r+0x40>
    4322:	2309      	movs	r3, #9
    4324:	f042 0240 	orr.w	r2, r2, #64	; 0x40
    4328:	602b      	str	r3, [r5, #0]
    432a:	f04f 30ff 	mov.w	r0, #4294967295
    432e:	81a2      	strh	r2, [r4, #12]
    4330:	bd38      	pop	{r3, r4, r5, pc}
    4332:	bf00      	nop
    4334:	20000010 	.word	0x20000010

Disassembly of section .text.startup.register_fini:

00004338 <register_fini>:
    4338:	4b02      	ldr	r3, [pc, #8]	; (4344 <register_fini+0xc>)
    433a:	b113      	cbz	r3, 4342 <register_fini+0xa>
    433c:	4802      	ldr	r0, [pc, #8]	; (4348 <register_fini+0x10>)
    433e:	f000 b879 	b.w	4434 <atexit>
    4342:	4770      	bx	lr
    4344:	00000000 	.word	0x00000000
    4348:	000057c1 	.word	0x000057c1

Disassembly of section .text.__call_exitprocs:

0000434c <__call_exitprocs>:
    434c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4350:	460f      	mov	r7, r1
    4352:	46b9      	mov	r9, r7
    4354:	4b34      	ldr	r3, [pc, #208]	; (4428 <__call_exitprocs+0xdc>)
    4356:	b085      	sub	sp, #20
    4358:	9003      	str	r0, [sp, #12]
    435a:	6818      	ldr	r0, [r3, #0]
    435c:	f001 fc02 	bl	5b64 <__retarget_lock_acquire_recursive>
    4360:	4b32      	ldr	r3, [pc, #200]	; (442c <__call_exitprocs+0xe0>)
    4362:	681b      	ldr	r3, [r3, #0]
    4364:	9301      	str	r3, [sp, #4]
    4366:	f503 73a4 	add.w	r3, r3, #328	; 0x148
    436a:	9302      	str	r3, [sp, #8]
    436c:	9b01      	ldr	r3, [sp, #4]
    436e:	f8d3 6148 	ldr.w	r6, [r3, #328]	; 0x148
    4372:	b33e      	cbz	r6, 43c4 <__call_exitprocs+0x78>
    4374:	f04f 0801 	mov.w	r8, #1
    4378:	f8dd a008 	ldr.w	sl, [sp, #8]
    437c:	6874      	ldr	r4, [r6, #4]
    437e:	1e65      	subs	r5, r4, #1
    4380:	d40f      	bmi.n	43a2 <__call_exitprocs+0x56>
    4382:	2700      	movs	r7, #0
    4384:	3401      	adds	r4, #1
    4386:	eb06 0484 	add.w	r4, r6, r4, lsl #2
    438a:	f1b9 0f00 	cmp.w	r9, #0
    438e:	d020      	beq.n	43d2 <__call_exitprocs+0x86>
    4390:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
    4394:	454b      	cmp	r3, r9
    4396:	d01c      	beq.n	43d2 <__call_exitprocs+0x86>
    4398:	3d01      	subs	r5, #1
    439a:	1c6b      	adds	r3, r5, #1
    439c:	f1a4 0404 	sub.w	r4, r4, #4
    43a0:	d1f3      	bne.n	438a <__call_exitprocs+0x3e>
    43a2:	4b23      	ldr	r3, [pc, #140]	; (4430 <__call_exitprocs+0xe4>)
    43a4:	b173      	cbz	r3, 43c4 <__call_exitprocs+0x78>
    43a6:	e9d6 3200 	ldrd	r3, r2, [r6]
    43aa:	2a00      	cmp	r2, #0
    43ac:	d134      	bne.n	4418 <__call_exitprocs+0xcc>
    43ae:	2b00      	cmp	r3, #0
    43b0:	d032      	beq.n	4418 <__call_exitprocs+0xcc>
    43b2:	4630      	mov	r0, r6
    43b4:	f8ca 3000 	str.w	r3, [sl]
    43b8:	f3af 8000 	nop.w
    43bc:	f8da 6000 	ldr.w	r6, [sl]
    43c0:	2e00      	cmp	r6, #0
    43c2:	d1db      	bne.n	437c <__call_exitprocs+0x30>
    43c4:	4b18      	ldr	r3, [pc, #96]	; (4428 <__call_exitprocs+0xdc>)
    43c6:	6818      	ldr	r0, [r3, #0]
    43c8:	b005      	add	sp, #20
    43ca:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    43ce:	f001 bbd1 	b.w	5b74 <__retarget_lock_release_recursive>
    43d2:	6873      	ldr	r3, [r6, #4]
    43d4:	6822      	ldr	r2, [r4, #0]
    43d6:	3b01      	subs	r3, #1
    43d8:	42ab      	cmp	r3, r5
    43da:	bf0c      	ite	eq
    43dc:	6075      	streq	r5, [r6, #4]
    43de:	6027      	strne	r7, [r4, #0]
    43e0:	2a00      	cmp	r2, #0
    43e2:	d0d9      	beq.n	4398 <__call_exitprocs+0x4c>
    43e4:	f8d6 1188 	ldr.w	r1, [r6, #392]	; 0x188
    43e8:	fa08 f305 	lsl.w	r3, r8, r5
    43ec:	420b      	tst	r3, r1
    43ee:	f8d6 b004 	ldr.w	fp, [r6, #4]
    43f2:	d108      	bne.n	4406 <__call_exitprocs+0xba>
    43f4:	4790      	blx	r2
    43f6:	6873      	ldr	r3, [r6, #4]
    43f8:	455b      	cmp	r3, fp
    43fa:	d1b7      	bne.n	436c <__call_exitprocs+0x20>
    43fc:	f8da 3000 	ldr.w	r3, [sl]
    4400:	42b3      	cmp	r3, r6
    4402:	d0c9      	beq.n	4398 <__call_exitprocs+0x4c>
    4404:	e7b2      	b.n	436c <__call_exitprocs+0x20>
    4406:	f8d6 018c 	ldr.w	r0, [r6, #396]	; 0x18c
    440a:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
    440e:	4203      	tst	r3, r0
    4410:	d107      	bne.n	4422 <__call_exitprocs+0xd6>
    4412:	9803      	ldr	r0, [sp, #12]
    4414:	4790      	blx	r2
    4416:	e7ee      	b.n	43f6 <__call_exitprocs+0xaa>
    4418:	46b2      	mov	sl, r6
    441a:	461e      	mov	r6, r3
    441c:	2e00      	cmp	r6, #0
    441e:	d1ad      	bne.n	437c <__call_exitprocs+0x30>
    4420:	e7d0      	b.n	43c4 <__call_exitprocs+0x78>
    4422:	4608      	mov	r0, r1
    4424:	4790      	blx	r2
    4426:	e7e6      	b.n	43f6 <__call_exitprocs+0xaa>
    4428:	20000444 	.word	0x20000444
    442c:	00008a10 	.word	0x00008a10
    4430:	00000000 	.word	0x00000000

Disassembly of section .text.atexit:

00004434 <atexit>:
    4434:	2300      	movs	r3, #0
    4436:	4601      	mov	r1, r0
    4438:	461a      	mov	r2, r3
    443a:	4618      	mov	r0, r3
    443c:	f003 ba70 	b.w	7920 <__register_exitproc>

Disassembly of section .text.quorem:

00004440 <quorem>:
    4440:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4444:	6903      	ldr	r3, [r0, #16]
    4446:	690e      	ldr	r6, [r1, #16]
    4448:	b083      	sub	sp, #12
    444a:	42b3      	cmp	r3, r6
    444c:	f2c0 8086 	blt.w	455c <quorem+0x11c>
    4450:	3e01      	subs	r6, #1
    4452:	f101 0814 	add.w	r8, r1, #20
    4456:	f100 0914 	add.w	r9, r0, #20
    445a:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
    445e:	f859 7026 	ldr.w	r7, [r9, r6, lsl #2]
    4462:	3301      	adds	r3, #1
    4464:	fbb7 f7f3 	udiv	r7, r7, r3
    4468:	00b3      	lsls	r3, r6, #2
    446a:	9300      	str	r3, [sp, #0]
    446c:	eb08 0a03 	add.w	sl, r8, r3
    4470:	444b      	add	r3, r9
    4472:	9301      	str	r3, [sp, #4]
    4474:	2f00      	cmp	r7, #0
    4476:	d03b      	beq.n	44f0 <quorem+0xb0>
    4478:	2300      	movs	r3, #0
    447a:	46c6      	mov	lr, r8
    447c:	461c      	mov	r4, r3
    447e:	46cc      	mov	ip, r9
    4480:	f85e 2b04 	ldr.w	r2, [lr], #4
    4484:	f8dc 5000 	ldr.w	r5, [ip]
    4488:	fa1f fb82 	uxth.w	fp, r2
    448c:	fb07 330b 	mla	r3, r7, fp, r3
    4490:	0c12      	lsrs	r2, r2, #16
    4492:	ea4f 4b13 	mov.w	fp, r3, lsr #16
    4496:	fb07 bb02 	mla	fp, r7, r2, fp
    449a:	b29a      	uxth	r2, r3
    449c:	1aa2      	subs	r2, r4, r2
    449e:	b2ab      	uxth	r3, r5
    44a0:	fa1f f48b 	uxth.w	r4, fp
    44a4:	441a      	add	r2, r3
    44a6:	ebc4 4415 	rsb	r4, r4, r5, lsr #16
    44aa:	eb04 4422 	add.w	r4, r4, r2, asr #16
    44ae:	b292      	uxth	r2, r2
    44b0:	ea42 4204 	orr.w	r2, r2, r4, lsl #16
    44b4:	45f2      	cmp	sl, lr
    44b6:	f84c 2b04 	str.w	r2, [ip], #4
    44ba:	ea4f 4424 	mov.w	r4, r4, asr #16
    44be:	ea4f 431b 	mov.w	r3, fp, lsr #16
    44c2:	d2dd      	bcs.n	4480 <quorem+0x40>
    44c4:	9b00      	ldr	r3, [sp, #0]
    44c6:	f859 3003 	ldr.w	r3, [r9, r3]
    44ca:	b98b      	cbnz	r3, 44f0 <quorem+0xb0>
    44cc:	9a01      	ldr	r2, [sp, #4]
    44ce:	1f13      	subs	r3, r2, #4
    44d0:	4599      	cmp	r9, r3
    44d2:	d20c      	bcs.n	44ee <quorem+0xae>
    44d4:	f852 3c04 	ldr.w	r3, [r2, #-4]
    44d8:	b94b      	cbnz	r3, 44ee <quorem+0xae>
    44da:	f1a2 0308 	sub.w	r3, r2, #8
    44de:	e002      	b.n	44e6 <quorem+0xa6>
    44e0:	681a      	ldr	r2, [r3, #0]
    44e2:	3b04      	subs	r3, #4
    44e4:	b91a      	cbnz	r2, 44ee <quorem+0xae>
    44e6:	4599      	cmp	r9, r3
    44e8:	f106 36ff 	add.w	r6, r6, #4294967295
    44ec:	d3f8      	bcc.n	44e0 <quorem+0xa0>
    44ee:	6106      	str	r6, [r0, #16]
    44f0:	4604      	mov	r4, r0
    44f2:	f002 f905 	bl	6700 <__mcmp>
    44f6:	2800      	cmp	r0, #0
    44f8:	db2c      	blt.n	4554 <quorem+0x114>
    44fa:	464d      	mov	r5, r9
    44fc:	2300      	movs	r3, #0
    44fe:	3701      	adds	r7, #1
    4500:	f858 1b04 	ldr.w	r1, [r8], #4
    4504:	6828      	ldr	r0, [r5, #0]
    4506:	b28a      	uxth	r2, r1
    4508:	1a9a      	subs	r2, r3, r2
    450a:	0c0b      	lsrs	r3, r1, #16
    450c:	b281      	uxth	r1, r0
    450e:	440a      	add	r2, r1
    4510:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
    4514:	eb03 4322 	add.w	r3, r3, r2, asr #16
    4518:	b292      	uxth	r2, r2
    451a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
    451e:	45c2      	cmp	sl, r8
    4520:	f845 2b04 	str.w	r2, [r5], #4
    4524:	ea4f 4323 	mov.w	r3, r3, asr #16
    4528:	d2ea      	bcs.n	4500 <quorem+0xc0>
    452a:	f859 2026 	ldr.w	r2, [r9, r6, lsl #2]
    452e:	eb09 0386 	add.w	r3, r9, r6, lsl #2
    4532:	b97a      	cbnz	r2, 4554 <quorem+0x114>
    4534:	1f1a      	subs	r2, r3, #4
    4536:	4591      	cmp	r9, r2
    4538:	d20b      	bcs.n	4552 <quorem+0x112>
    453a:	f853 2c04 	ldr.w	r2, [r3, #-4]
    453e:	b942      	cbnz	r2, 4552 <quorem+0x112>
    4540:	3b08      	subs	r3, #8
    4542:	e002      	b.n	454a <quorem+0x10a>
    4544:	681a      	ldr	r2, [r3, #0]
    4546:	3b04      	subs	r3, #4
    4548:	b91a      	cbnz	r2, 4552 <quorem+0x112>
    454a:	4599      	cmp	r9, r3
    454c:	f106 36ff 	add.w	r6, r6, #4294967295
    4550:	d3f8      	bcc.n	4544 <quorem+0x104>
    4552:	6126      	str	r6, [r4, #16]
    4554:	4638      	mov	r0, r7
    4556:	b003      	add	sp, #12
    4558:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    455c:	2000      	movs	r0, #0
    455e:	b003      	add	sp, #12
    4560:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text._dtoa_r:

00004568 <_dtoa_r>:
    4568:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    456c:	461f      	mov	r7, r3
    456e:	4616      	mov	r6, r2
    4570:	6c03      	ldr	r3, [r0, #64]	; 0x40
    4572:	b099      	sub	sp, #100	; 0x64
    4574:	4604      	mov	r4, r0
    4576:	e9cd 6702 	strd	r6, r7, [sp, #8]
    457a:	b14b      	cbz	r3, 4590 <_dtoa_r+0x28>
    457c:	2201      	movs	r2, #1
    457e:	6c45      	ldr	r5, [r0, #68]	; 0x44
    4580:	4619      	mov	r1, r3
    4582:	40aa      	lsls	r2, r5
    4584:	e9c3 5201 	strd	r5, r2, [r3, #4]
    4588:	f001 fe78 	bl	627c <_Bfree>
    458c:	2300      	movs	r3, #0
    458e:	6423      	str	r3, [r4, #64]	; 0x40
    4590:	1e3e      	subs	r6, r7, #0
    4592:	bfb4      	ite	lt
    4594:	2301      	movlt	r3, #1
    4596:	2300      	movge	r3, #0
    4598:	9a25      	ldr	r2, [sp, #148]	; 0x94
    459a:	bfb8      	it	lt
    459c:	f026 4600 	biclt.w	r6, r6, #2147483648	; 0x80000000
    45a0:	6013      	str	r3, [r2, #0]
    45a2:	4b75      	ldr	r3, [pc, #468]	; (4778 <_dtoa_r+0x210>)
    45a4:	bfb8      	it	lt
    45a6:	9603      	strlt	r6, [sp, #12]
    45a8:	43b3      	bics	r3, r6
    45aa:	f000 80a3 	beq.w	46f4 <_dtoa_r+0x18c>
    45ae:	e9dd 8902 	ldrd	r8, r9, [sp, #8]
    45b2:	2200      	movs	r2, #0
    45b4:	2300      	movs	r3, #0
    45b6:	4640      	mov	r0, r8
    45b8:	4649      	mov	r1, r9
    45ba:	f7fe f831 	bl	2620 <__aeabi_dcmpeq>
    45be:	4607      	mov	r7, r0
    45c0:	b178      	cbz	r0, 45e2 <_dtoa_r+0x7a>
    45c2:	2301      	movs	r3, #1
    45c4:	9a24      	ldr	r2, [sp, #144]	; 0x90
    45c6:	6013      	str	r3, [r2, #0]
    45c8:	9b26      	ldr	r3, [sp, #152]	; 0x98
    45ca:	2b00      	cmp	r3, #0
    45cc:	f000 80bf 	beq.w	474e <_dtoa_r+0x1e6>
    45d0:	4b6a      	ldr	r3, [pc, #424]	; (477c <_dtoa_r+0x214>)
    45d2:	9a26      	ldr	r2, [sp, #152]	; 0x98
    45d4:	f103 39ff 	add.w	r9, r3, #4294967295
    45d8:	6013      	str	r3, [r2, #0]
    45da:	4648      	mov	r0, r9
    45dc:	b019      	add	sp, #100	; 0x64
    45de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    45e2:	aa16      	add	r2, sp, #88	; 0x58
    45e4:	ab17      	add	r3, sp, #92	; 0x5c
    45e6:	e9cd 3200 	strd	r3, r2, [sp]
    45ea:	4620      	mov	r0, r4
    45ec:	4642      	mov	r2, r8
    45ee:	464b      	mov	r3, r9
    45f0:	f002 f9a4 	bl	693c <__d2b>
    45f4:	0d35      	lsrs	r5, r6, #20
    45f6:	4683      	mov	fp, r0
    45f8:	f040 809c 	bne.w	4734 <_dtoa_r+0x1cc>
    45fc:	e9dd 8516 	ldrd	r8, r5, [sp, #88]	; 0x58
    4600:	4445      	add	r5, r8
    4602:	f205 4332 	addw	r3, r5, #1074	; 0x432
    4606:	2b20      	cmp	r3, #32
    4608:	f340 8431 	ble.w	4e6e <_dtoa_r+0x906>
    460c:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
    4610:	409e      	lsls	r6, r3
    4612:	9b02      	ldr	r3, [sp, #8]
    4614:	f205 4012 	addw	r0, r5, #1042	; 0x412
    4618:	fa23 f000 	lsr.w	r0, r3, r0
    461c:	4330      	orrs	r0, r6
    461e:	f7fd fd1d 	bl	205c <__aeabi_ui2d>
    4622:	2201      	movs	r2, #1
    4624:	3d01      	subs	r5, #1
    4626:	920a      	str	r2, [sp, #40]	; 0x28
    4628:	f1a1 71f8 	sub.w	r1, r1, #32505856	; 0x1f00000
    462c:	2200      	movs	r2, #0
    462e:	4b54      	ldr	r3, [pc, #336]	; (4780 <_dtoa_r+0x218>)
    4630:	f7fd fbd6 	bl	1de0 <__aeabi_dsub>
    4634:	a34a      	add	r3, pc, #296	; (adr r3, 4760 <_dtoa_r+0x1f8>)
    4636:	e9d3 2300 	ldrd	r2, r3, [r3]
    463a:	f7fd fd89 	bl	2150 <__aeabi_dmul>
    463e:	a34a      	add	r3, pc, #296	; (adr r3, 4768 <_dtoa_r+0x200>)
    4640:	e9d3 2300 	ldrd	r2, r3, [r3]
    4644:	f7fd fbce 	bl	1de4 <__adddf3>
    4648:	4606      	mov	r6, r0
    464a:	4628      	mov	r0, r5
    464c:	460f      	mov	r7, r1
    464e:	f7fd fd15 	bl	207c <__aeabi_i2d>
    4652:	a347      	add	r3, pc, #284	; (adr r3, 4770 <_dtoa_r+0x208>)
    4654:	e9d3 2300 	ldrd	r2, r3, [r3]
    4658:	f7fd fd7a 	bl	2150 <__aeabi_dmul>
    465c:	4602      	mov	r2, r0
    465e:	460b      	mov	r3, r1
    4660:	4630      	mov	r0, r6
    4662:	4639      	mov	r1, r7
    4664:	f7fd fbbe 	bl	1de4 <__adddf3>
    4668:	4606      	mov	r6, r0
    466a:	460f      	mov	r7, r1
    466c:	f7fe f820 	bl	26b0 <__aeabi_d2iz>
    4670:	2200      	movs	r2, #0
    4672:	9005      	str	r0, [sp, #20]
    4674:	2300      	movs	r3, #0
    4676:	4630      	mov	r0, r6
    4678:	4639      	mov	r1, r7
    467a:	f7fd ffdb 	bl	2634 <__aeabi_dcmplt>
    467e:	2800      	cmp	r0, #0
    4680:	f040 8277 	bne.w	4b72 <_dtoa_r+0x60a>
    4684:	9e05      	ldr	r6, [sp, #20]
    4686:	2e16      	cmp	r6, #22
    4688:	f200 8261 	bhi.w	4b4e <_dtoa_r+0x5e6>
    468c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    4690:	493c      	ldr	r1, [pc, #240]	; (4784 <_dtoa_r+0x21c>)
    4692:	eb01 01c6 	add.w	r1, r1, r6, lsl #3
    4696:	e9d1 0100 	ldrd	r0, r1, [r1]
    469a:	f7fd ffe9 	bl	2670 <__aeabi_dcmpgt>
    469e:	2800      	cmp	r0, #0
    46a0:	f000 83e1 	beq.w	4e66 <_dtoa_r+0x8fe>
    46a4:	1e73      	subs	r3, r6, #1
    46a6:	9305      	str	r3, [sp, #20]
    46a8:	2300      	movs	r3, #0
    46aa:	930d      	str	r3, [sp, #52]	; 0x34
    46ac:	eba8 0505 	sub.w	r5, r8, r5
    46b0:	f1b5 0a01 	subs.w	sl, r5, #1
    46b4:	f100 8257 	bmi.w	4b66 <_dtoa_r+0x5fe>
    46b8:	2300      	movs	r3, #0
    46ba:	9306      	str	r3, [sp, #24]
    46bc:	9b05      	ldr	r3, [sp, #20]
    46be:	2b00      	cmp	r3, #0
    46c0:	f2c0 8248 	blt.w	4b54 <_dtoa_r+0x5ec>
    46c4:	449a      	add	sl, r3
    46c6:	930c      	str	r3, [sp, #48]	; 0x30
    46c8:	2300      	movs	r3, #0
    46ca:	930b      	str	r3, [sp, #44]	; 0x2c
    46cc:	9b22      	ldr	r3, [sp, #136]	; 0x88
    46ce:	2b09      	cmp	r3, #9
    46d0:	d860      	bhi.n	4794 <_dtoa_r+0x22c>
    46d2:	2b05      	cmp	r3, #5
    46d4:	f340 83c9 	ble.w	4e6a <_dtoa_r+0x902>
    46d8:	2600      	movs	r6, #0
    46da:	3b04      	subs	r3, #4
    46dc:	9322      	str	r3, [sp, #136]	; 0x88
    46de:	9b22      	ldr	r3, [sp, #136]	; 0x88
    46e0:	3b02      	subs	r3, #2
    46e2:	2b03      	cmp	r3, #3
    46e4:	f200 84a1 	bhi.w	502a <_dtoa_r+0xac2>
    46e8:	e8df f013 	tbh	[pc, r3, lsl #1]
    46ec:	03c803e6 	.word	0x03c803e6
    46f0:	04fc03f0 	.word	0x04fc03f0
    46f4:	f242 730f 	movw	r3, #9999	; 0x270f
    46f8:	9a24      	ldr	r2, [sp, #144]	; 0x90
    46fa:	6013      	str	r3, [r2, #0]
    46fc:	9b02      	ldr	r3, [sp, #8]
    46fe:	b983      	cbnz	r3, 4722 <_dtoa_r+0x1ba>
    4700:	f3c6 0613 	ubfx	r6, r6, #0, #20
    4704:	b96e      	cbnz	r6, 4722 <_dtoa_r+0x1ba>
    4706:	9b26      	ldr	r3, [sp, #152]	; 0x98
    4708:	f8df 907c 	ldr.w	r9, [pc, #124]	; 4788 <_dtoa_r+0x220>
    470c:	2b00      	cmp	r3, #0
    470e:	f43f af64 	beq.w	45da <_dtoa_r+0x72>
    4712:	f109 0308 	add.w	r3, r9, #8
    4716:	4648      	mov	r0, r9
    4718:	9a26      	ldr	r2, [sp, #152]	; 0x98
    471a:	6013      	str	r3, [r2, #0]
    471c:	b019      	add	sp, #100	; 0x64
    471e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4722:	9b26      	ldr	r3, [sp, #152]	; 0x98
    4724:	f8df 9064 	ldr.w	r9, [pc, #100]	; 478c <_dtoa_r+0x224>
    4728:	2b00      	cmp	r3, #0
    472a:	f43f af56 	beq.w	45da <_dtoa_r+0x72>
    472e:	f109 0303 	add.w	r3, r9, #3
    4732:	e7f0      	b.n	4716 <_dtoa_r+0x1ae>
    4734:	f3c9 0313 	ubfx	r3, r9, #0, #20
    4738:	f043 517f 	orr.w	r1, r3, #1069547520	; 0x3fc00000
    473c:	4640      	mov	r0, r8
    473e:	f2a5 35ff 	subw	r5, r5, #1023	; 0x3ff
    4742:	970a      	str	r7, [sp, #40]	; 0x28
    4744:	f441 1140 	orr.w	r1, r1, #3145728	; 0x300000
    4748:	f8dd 8058 	ldr.w	r8, [sp, #88]	; 0x58
    474c:	e76e      	b.n	462c <_dtoa_r+0xc4>
    474e:	f8df 9040 	ldr.w	r9, [pc, #64]	; 4790 <_dtoa_r+0x228>
    4752:	4648      	mov	r0, r9
    4754:	b019      	add	sp, #100	; 0x64
    4756:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    475a:	bf00      	nop
    475c:	f3af 8000 	nop.w
    4760:	636f4361 	.word	0x636f4361
    4764:	3fd287a7 	.word	0x3fd287a7
    4768:	8b60c8b3 	.word	0x8b60c8b3
    476c:	3fc68a28 	.word	0x3fc68a28
    4770:	509f79fb 	.word	0x509f79fb
    4774:	3fd34413 	.word	0x3fd34413
    4778:	7ff00000 	.word	0x7ff00000
    477c:	00008a89 	.word	0x00008a89
    4780:	3ff80000 	.word	0x3ff80000
    4784:	00008ab8 	.word	0x00008ab8
    4788:	00008a78 	.word	0x00008a78
    478c:	00008a84 	.word	0x00008a84
    4790:	00008a88 	.word	0x00008a88
    4794:	f04f 35ff 	mov.w	r5, #4294967295
    4798:	2601      	movs	r6, #1
    479a:	2300      	movs	r3, #0
    479c:	e9cd 5608 	strd	r5, r6, [sp, #32]
    47a0:	9322      	str	r3, [sp, #136]	; 0x88
    47a2:	9323      	str	r3, [sp, #140]	; 0x8c
    47a4:	2100      	movs	r1, #0
    47a6:	9514      	str	r5, [sp, #80]	; 0x50
    47a8:	6461      	str	r1, [r4, #68]	; 0x44
    47aa:	4620      	mov	r0, r4
    47ac:	f001 fd40 	bl	6230 <_Balloc>
    47b0:	2d0e      	cmp	r5, #14
    47b2:	4681      	mov	r9, r0
    47b4:	6420      	str	r0, [r4, #64]	; 0x40
    47b6:	f200 80fe 	bhi.w	49b6 <_dtoa_r+0x44e>
    47ba:	2e00      	cmp	r6, #0
    47bc:	f000 80fb 	beq.w	49b6 <_dtoa_r+0x44e>
    47c0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    47c4:	4616      	mov	r6, r2
    47c6:	461f      	mov	r7, r3
    47c8:	9905      	ldr	r1, [sp, #20]
    47ca:	e9cd 670e 	strd	r6, r7, [sp, #56]	; 0x38
    47ce:	2900      	cmp	r1, #0
    47d0:	f340 83e9 	ble.w	4fa6 <_dtoa_r+0xa3e>
    47d4:	4b9b      	ldr	r3, [pc, #620]	; (4a44 <_dtoa_r+0x4dc>)
    47d6:	f001 020f 	and.w	r2, r1, #15
    47da:	110d      	asrs	r5, r1, #4
    47dc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    47e0:	e9d3 1200 	ldrd	r1, r2, [r3]
    47e4:	e9cd 1202 	strd	r1, r2, [sp, #8]
    47e8:	06ea      	lsls	r2, r5, #27
    47ea:	f140 84a0 	bpl.w	512e <_dtoa_r+0xbc6>
    47ee:	4b96      	ldr	r3, [pc, #600]	; (4a48 <_dtoa_r+0x4e0>)
    47f0:	4639      	mov	r1, r7
    47f2:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
    47f6:	4630      	mov	r0, r6
    47f8:	f7fd fdd4 	bl	23a4 <__aeabi_ddiv>
    47fc:	2703      	movs	r7, #3
    47fe:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
    4802:	f005 050f 	and.w	r5, r5, #15
    4806:	b17d      	cbz	r5, 4828 <_dtoa_r+0x2c0>
    4808:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    480c:	4e8e      	ldr	r6, [pc, #568]	; (4a48 <_dtoa_r+0x4e0>)
    480e:	07eb      	lsls	r3, r5, #31
    4810:	d504      	bpl.n	481c <_dtoa_r+0x2b4>
    4812:	e9d6 2300 	ldrd	r2, r3, [r6]
    4816:	f7fd fc9b 	bl	2150 <__aeabi_dmul>
    481a:	3701      	adds	r7, #1
    481c:	106d      	asrs	r5, r5, #1
    481e:	f106 0608 	add.w	r6, r6, #8
    4822:	d1f4      	bne.n	480e <_dtoa_r+0x2a6>
    4824:	e9cd 0102 	strd	r0, r1, [sp, #8]
    4828:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    482c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
    4830:	f7fd fdb8 	bl	23a4 <__aeabi_ddiv>
    4834:	e9cd 0102 	strd	r0, r1, [sp, #8]
    4838:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    483a:	b143      	cbz	r3, 484e <_dtoa_r+0x2e6>
    483c:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    4840:	2200      	movs	r2, #0
    4842:	4b82      	ldr	r3, [pc, #520]	; (4a4c <_dtoa_r+0x4e4>)
    4844:	f7fd fef6 	bl	2634 <__aeabi_dcmplt>
    4848:	2800      	cmp	r0, #0
    484a:	f040 8509 	bne.w	5260 <_dtoa_r+0xcf8>
    484e:	4638      	mov	r0, r7
    4850:	f7fd fc14 	bl	207c <__aeabi_i2d>
    4854:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    4858:	f7fd fc7a 	bl	2150 <__aeabi_dmul>
    485c:	4b7c      	ldr	r3, [pc, #496]	; (4a50 <_dtoa_r+0x4e8>)
    485e:	2200      	movs	r2, #0
    4860:	f7fd fac0 	bl	1de4 <__adddf3>
    4864:	9b08      	ldr	r3, [sp, #32]
    4866:	4605      	mov	r5, r0
    4868:	f1a1 7650 	sub.w	r6, r1, #54525952	; 0x3400000
    486c:	2b00      	cmp	r3, #0
    486e:	f000 841e 	beq.w	50ae <_dtoa_r+0xb46>
    4872:	9b05      	ldr	r3, [sp, #20]
    4874:	9315      	str	r3, [sp, #84]	; 0x54
    4876:	9b08      	ldr	r3, [sp, #32]
    4878:	9310      	str	r3, [sp, #64]	; 0x40
    487a:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    487e:	f7fd ff17 	bl	26b0 <__aeabi_d2iz>
    4882:	9a10      	ldr	r2, [sp, #64]	; 0x40
    4884:	4b6f      	ldr	r3, [pc, #444]	; (4a44 <_dtoa_r+0x4dc>)
    4886:	f100 0830 	add.w	r8, r0, #48	; 0x30
    488a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    488e:	e953 1202 	ldrd	r1, r2, [r3, #-8]
    4892:	e9cd 1212 	strd	r1, r2, [sp, #72]	; 0x48
    4896:	f7fd fbf1 	bl	207c <__aeabi_i2d>
    489a:	460b      	mov	r3, r1
    489c:	4602      	mov	r2, r0
    489e:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    48a2:	e9cd 5602 	strd	r5, r6, [sp, #8]
    48a6:	f7fd fa9b 	bl	1de0 <__aeabi_dsub>
    48aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
    48ac:	fa5f f888 	uxtb.w	r8, r8
    48b0:	4606      	mov	r6, r0
    48b2:	460f      	mov	r7, r1
    48b4:	f109 0501 	add.w	r5, r9, #1
    48b8:	2b00      	cmp	r3, #0
    48ba:	f000 8463 	beq.w	5184 <_dtoa_r+0xc1c>
    48be:	e9dd 2312 	ldrd	r2, r3, [sp, #72]	; 0x48
    48c2:	2000      	movs	r0, #0
    48c4:	4963      	ldr	r1, [pc, #396]	; (4a54 <_dtoa_r+0x4ec>)
    48c6:	f7fd fd6d 	bl	23a4 <__aeabi_ddiv>
    48ca:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    48ce:	f7fd fa87 	bl	1de0 <__aeabi_dsub>
    48d2:	f889 8000 	strb.w	r8, [r9]
    48d6:	4632      	mov	r2, r6
    48d8:	463b      	mov	r3, r7
    48da:	e9cd 0102 	strd	r0, r1, [sp, #8]
    48de:	f7fd fec7 	bl	2670 <__aeabi_dcmpgt>
    48e2:	2800      	cmp	r0, #0
    48e4:	f040 850e 	bne.w	5304 <_dtoa_r+0xd9c>
    48e8:	4632      	mov	r2, r6
    48ea:	463b      	mov	r3, r7
    48ec:	2000      	movs	r0, #0
    48ee:	4957      	ldr	r1, [pc, #348]	; (4a4c <_dtoa_r+0x4e4>)
    48f0:	f7fd fa76 	bl	1de0 <__aeabi_dsub>
    48f4:	4602      	mov	r2, r0
    48f6:	460b      	mov	r3, r1
    48f8:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    48fc:	f7fd feb8 	bl	2670 <__aeabi_dcmpgt>
    4900:	2800      	cmp	r0, #0
    4902:	f040 8509 	bne.w	5318 <_dtoa_r+0xdb0>
    4906:	9a10      	ldr	r2, [sp, #64]	; 0x40
    4908:	2a01      	cmp	r2, #1
    490a:	d050      	beq.n	49ae <_dtoa_r+0x446>
    490c:	444a      	add	r2, r9
    490e:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
    4912:	f8cd b040 	str.w	fp, [sp, #64]	; 0x40
    4916:	46a0      	mov	r8, r4
    4918:	e9dd ab02 	ldrd	sl, fp, [sp, #8]
    491c:	f8cd 9008 	str.w	r9, [sp, #8]
    4920:	4691      	mov	r9, r2
    4922:	e00e      	b.n	4942 <_dtoa_r+0x3da>
    4924:	4632      	mov	r2, r6
    4926:	463b      	mov	r3, r7
    4928:	2000      	movs	r0, #0
    492a:	4948      	ldr	r1, [pc, #288]	; (4a4c <_dtoa_r+0x4e4>)
    492c:	f7fd fa58 	bl	1de0 <__aeabi_dsub>
    4930:	4652      	mov	r2, sl
    4932:	465b      	mov	r3, fp
    4934:	f7fd fe7e 	bl	2634 <__aeabi_dcmplt>
    4938:	2800      	cmp	r0, #0
    493a:	f040 84e6 	bne.w	530a <_dtoa_r+0xda2>
    493e:	454d      	cmp	r5, r9
    4940:	d02e      	beq.n	49a0 <_dtoa_r+0x438>
    4942:	4650      	mov	r0, sl
    4944:	4659      	mov	r1, fp
    4946:	2200      	movs	r2, #0
    4948:	4b43      	ldr	r3, [pc, #268]	; (4a58 <_dtoa_r+0x4f0>)
    494a:	f7fd fc01 	bl	2150 <__aeabi_dmul>
    494e:	2200      	movs	r2, #0
    4950:	4b41      	ldr	r3, [pc, #260]	; (4a58 <_dtoa_r+0x4f0>)
    4952:	4682      	mov	sl, r0
    4954:	468b      	mov	fp, r1
    4956:	4630      	mov	r0, r6
    4958:	4639      	mov	r1, r7
    495a:	f7fd fbf9 	bl	2150 <__aeabi_dmul>
    495e:	460f      	mov	r7, r1
    4960:	4606      	mov	r6, r0
    4962:	f7fd fea5 	bl	26b0 <__aeabi_d2iz>
    4966:	4604      	mov	r4, r0
    4968:	f7fd fb88 	bl	207c <__aeabi_i2d>
    496c:	4602      	mov	r2, r0
    496e:	460b      	mov	r3, r1
    4970:	4630      	mov	r0, r6
    4972:	4639      	mov	r1, r7
    4974:	f7fd fa34 	bl	1de0 <__aeabi_dsub>
    4978:	3430      	adds	r4, #48	; 0x30
    497a:	b2e4      	uxtb	r4, r4
    497c:	f805 4b01 	strb.w	r4, [r5], #1
    4980:	4652      	mov	r2, sl
    4982:	465b      	mov	r3, fp
    4984:	4606      	mov	r6, r0
    4986:	460f      	mov	r7, r1
    4988:	f7fd fe54 	bl	2634 <__aeabi_dcmplt>
    498c:	2800      	cmp	r0, #0
    498e:	d0c9      	beq.n	4924 <_dtoa_r+0x3bc>
    4990:	9b15      	ldr	r3, [sp, #84]	; 0x54
    4992:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
    4996:	f8dd 9008 	ldr.w	r9, [sp, #8]
    499a:	4644      	mov	r4, r8
    499c:	9305      	str	r3, [sp, #20]
    499e:	e239      	b.n	4e14 <_dtoa_r+0x8ac>
    49a0:	4644      	mov	r4, r8
    49a2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
    49a6:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
    49aa:	f8dd 9008 	ldr.w	r9, [sp, #8]
    49ae:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
    49b2:	e9cd 2302 	strd	r2, r3, [sp, #8]
    49b6:	9b17      	ldr	r3, [sp, #92]	; 0x5c
    49b8:	2b00      	cmp	r3, #0
    49ba:	f2c0 80a9 	blt.w	4b10 <_dtoa_r+0x5a8>
    49be:	9a05      	ldr	r2, [sp, #20]
    49c0:	2a0e      	cmp	r2, #14
    49c2:	f300 80a5 	bgt.w	4b10 <_dtoa_r+0x5a8>
    49c6:	4b1f      	ldr	r3, [pc, #124]	; (4a44 <_dtoa_r+0x4dc>)
    49c8:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    49cc:	e9d3 2300 	ldrd	r2, r3, [r3]
    49d0:	e9cd 2306 	strd	r2, r3, [sp, #24]
    49d4:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    49d6:	2b00      	cmp	r3, #0
    49d8:	f2c0 82c1 	blt.w	4f5e <_dtoa_r+0x9f6>
    49dc:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
    49e0:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
    49e4:	4630      	mov	r0, r6
    49e6:	4639      	mov	r1, r7
    49e8:	f7fd fcdc 	bl	23a4 <__aeabi_ddiv>
    49ec:	f7fd fe60 	bl	26b0 <__aeabi_d2iz>
    49f0:	4680      	mov	r8, r0
    49f2:	f7fd fb43 	bl	207c <__aeabi_i2d>
    49f6:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
    49fa:	f7fd fba9 	bl	2150 <__aeabi_dmul>
    49fe:	4602      	mov	r2, r0
    4a00:	460b      	mov	r3, r1
    4a02:	4630      	mov	r0, r6
    4a04:	4639      	mov	r1, r7
    4a06:	f7fd f9eb 	bl	1de0 <__aeabi_dsub>
    4a0a:	9e08      	ldr	r6, [sp, #32]
    4a0c:	f108 0530 	add.w	r5, r8, #48	; 0x30
    4a10:	2e01      	cmp	r6, #1
    4a12:	f889 5000 	strb.w	r5, [r9]
    4a16:	4602      	mov	r2, r0
    4a18:	460b      	mov	r3, r1
    4a1a:	f109 0501 	add.w	r5, r9, #1
    4a1e:	d04c      	beq.n	4aba <_dtoa_r+0x552>
    4a20:	2200      	movs	r2, #0
    4a22:	4b0d      	ldr	r3, [pc, #52]	; (4a58 <_dtoa_r+0x4f0>)
    4a24:	f7fd fb94 	bl	2150 <__aeabi_dmul>
    4a28:	2200      	movs	r2, #0
    4a2a:	2300      	movs	r3, #0
    4a2c:	4606      	mov	r6, r0
    4a2e:	460f      	mov	r7, r1
    4a30:	f7fd fdf6 	bl	2620 <__aeabi_dcmpeq>
    4a34:	2800      	cmp	r0, #0
    4a36:	f040 81ed 	bne.w	4e14 <_dtoa_r+0x8ac>
    4a3a:	f8cd b008 	str.w	fp, [sp, #8]
    4a3e:	e9dd ab06 	ldrd	sl, fp, [sp, #24]
    4a42:	e018      	b.n	4a76 <_dtoa_r+0x50e>
    4a44:	00008ab8 	.word	0x00008ab8
    4a48:	00008a90 	.word	0x00008a90
    4a4c:	3ff00000 	.word	0x3ff00000
    4a50:	401c0000 	.word	0x401c0000
    4a54:	3fe00000 	.word	0x3fe00000
    4a58:	40240000 	.word	0x40240000
    4a5c:	2200      	movs	r2, #0
    4a5e:	4bc6      	ldr	r3, [pc, #792]	; (4d78 <_dtoa_r+0x810>)
    4a60:	f7fd fb76 	bl	2150 <__aeabi_dmul>
    4a64:	2200      	movs	r2, #0
    4a66:	2300      	movs	r3, #0
    4a68:	4606      	mov	r6, r0
    4a6a:	460f      	mov	r7, r1
    4a6c:	f7fd fdd8 	bl	2620 <__aeabi_dcmpeq>
    4a70:	2800      	cmp	r0, #0
    4a72:	f040 8341 	bne.w	50f8 <_dtoa_r+0xb90>
    4a76:	4652      	mov	r2, sl
    4a78:	465b      	mov	r3, fp
    4a7a:	4630      	mov	r0, r6
    4a7c:	4639      	mov	r1, r7
    4a7e:	f7fd fc91 	bl	23a4 <__aeabi_ddiv>
    4a82:	f7fd fe15 	bl	26b0 <__aeabi_d2iz>
    4a86:	4680      	mov	r8, r0
    4a88:	f7fd faf8 	bl	207c <__aeabi_i2d>
    4a8c:	4652      	mov	r2, sl
    4a8e:	465b      	mov	r3, fp
    4a90:	f7fd fb5e 	bl	2150 <__aeabi_dmul>
    4a94:	4602      	mov	r2, r0
    4a96:	460b      	mov	r3, r1
    4a98:	4630      	mov	r0, r6
    4a9a:	4639      	mov	r1, r7
    4a9c:	f7fd f9a0 	bl	1de0 <__aeabi_dsub>
    4aa0:	f108 0630 	add.w	r6, r8, #48	; 0x30
    4aa4:	f805 6b01 	strb.w	r6, [r5], #1
    4aa8:	9f08      	ldr	r7, [sp, #32]
    4aaa:	eba5 0609 	sub.w	r6, r5, r9
    4aae:	42b7      	cmp	r7, r6
    4ab0:	4602      	mov	r2, r0
    4ab2:	460b      	mov	r3, r1
    4ab4:	d1d2      	bne.n	4a5c <_dtoa_r+0x4f4>
    4ab6:	f8dd b008 	ldr.w	fp, [sp, #8]
    4aba:	4610      	mov	r0, r2
    4abc:	4619      	mov	r1, r3
    4abe:	f7fd f991 	bl	1de4 <__adddf3>
    4ac2:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
    4ac6:	4606      	mov	r6, r0
    4ac8:	460f      	mov	r7, r1
    4aca:	f7fd fdd1 	bl	2670 <__aeabi_dcmpgt>
    4ace:	b960      	cbnz	r0, 4aea <_dtoa_r+0x582>
    4ad0:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
    4ad4:	4630      	mov	r0, r6
    4ad6:	4639      	mov	r1, r7
    4ad8:	f7fd fda2 	bl	2620 <__aeabi_dcmpeq>
    4adc:	2800      	cmp	r0, #0
    4ade:	f000 8199 	beq.w	4e14 <_dtoa_r+0x8ac>
    4ae2:	f018 0f01 	tst.w	r8, #1
    4ae6:	f000 8195 	beq.w	4e14 <_dtoa_r+0x8ac>
    4aea:	f815 8c01 	ldrb.w	r8, [r5, #-1]
    4aee:	e005      	b.n	4afc <_dtoa_r+0x594>
    4af0:	4599      	cmp	r9, r3
    4af2:	f000 833a 	beq.w	516a <_dtoa_r+0xc02>
    4af6:	461d      	mov	r5, r3
    4af8:	f813 8c01 	ldrb.w	r8, [r3, #-1]
    4afc:	f1b8 0f39 	cmp.w	r8, #57	; 0x39
    4b00:	f105 33ff 	add.w	r3, r5, #4294967295
    4b04:	d0f4      	beq.n	4af0 <_dtoa_r+0x588>
    4b06:	f108 0801 	add.w	r8, r8, #1
    4b0a:	f883 8000 	strb.w	r8, [r3]
    4b0e:	e181      	b.n	4e14 <_dtoa_r+0x8ac>
    4b10:	9a09      	ldr	r2, [sp, #36]	; 0x24
    4b12:	2a00      	cmp	r2, #0
    4b14:	d03d      	beq.n	4b92 <_dtoa_r+0x62a>
    4b16:	9a22      	ldr	r2, [sp, #136]	; 0x88
    4b18:	2a01      	cmp	r2, #1
    4b1a:	f340 8212 	ble.w	4f42 <_dtoa_r+0x9da>
    4b1e:	9b08      	ldr	r3, [sp, #32]
    4b20:	f103 38ff 	add.w	r8, r3, #4294967295
    4b24:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    4b26:	4543      	cmp	r3, r8
    4b28:	f2c0 82e9 	blt.w	50fe <_dtoa_r+0xb96>
    4b2c:	eba3 0808 	sub.w	r8, r3, r8
    4b30:	9b08      	ldr	r3, [sp, #32]
    4b32:	2b00      	cmp	r3, #0
    4b34:	f2c0 830e 	blt.w	5154 <_dtoa_r+0xbec>
    4b38:	9a06      	ldr	r2, [sp, #24]
    4b3a:	449a      	add	sl, r3
    4b3c:	920a      	str	r2, [sp, #40]	; 0x28
    4b3e:	441a      	add	r2, r3
    4b40:	9206      	str	r2, [sp, #24]
    4b42:	2101      	movs	r1, #1
    4b44:	4620      	mov	r0, r4
    4b46:	f001 fc81 	bl	644c <__i2b>
    4b4a:	4606      	mov	r6, r0
    4b4c:	e026      	b.n	4b9c <_dtoa_r+0x634>
    4b4e:	2301      	movs	r3, #1
    4b50:	930d      	str	r3, [sp, #52]	; 0x34
    4b52:	e5ab      	b.n	46ac <_dtoa_r+0x144>
    4b54:	2300      	movs	r3, #0
    4b56:	930c      	str	r3, [sp, #48]	; 0x30
    4b58:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
    4b5c:	1ad2      	subs	r2, r2, r3
    4b5e:	425b      	negs	r3, r3
    4b60:	9206      	str	r2, [sp, #24]
    4b62:	930b      	str	r3, [sp, #44]	; 0x2c
    4b64:	e5b2      	b.n	46cc <_dtoa_r+0x164>
    4b66:	f1c5 0301 	rsb	r3, r5, #1
    4b6a:	9306      	str	r3, [sp, #24]
    4b6c:	f04f 0a00 	mov.w	sl, #0
    4b70:	e5a4      	b.n	46bc <_dtoa_r+0x154>
    4b72:	f8dd 9014 	ldr.w	r9, [sp, #20]
    4b76:	4648      	mov	r0, r9
    4b78:	f7fd fa80 	bl	207c <__aeabi_i2d>
    4b7c:	4632      	mov	r2, r6
    4b7e:	463b      	mov	r3, r7
    4b80:	f7fd fd4e 	bl	2620 <__aeabi_dcmpeq>
    4b84:	2800      	cmp	r0, #0
    4b86:	f47f ad7d 	bne.w	4684 <_dtoa_r+0x11c>
    4b8a:	f109 33ff 	add.w	r3, r9, #4294967295
    4b8e:	9305      	str	r3, [sp, #20]
    4b90:	e578      	b.n	4684 <_dtoa_r+0x11c>
    4b92:	9b06      	ldr	r3, [sp, #24]
    4b94:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    4b98:	9e09      	ldr	r6, [sp, #36]	; 0x24
    4b9a:	930a      	str	r3, [sp, #40]	; 0x28
    4b9c:	990a      	ldr	r1, [sp, #40]	; 0x28
    4b9e:	2900      	cmp	r1, #0
    4ba0:	460b      	mov	r3, r1
    4ba2:	dd0c      	ble.n	4bbe <_dtoa_r+0x656>
    4ba4:	f1ba 0f00 	cmp.w	sl, #0
    4ba8:	dd09      	ble.n	4bbe <_dtoa_r+0x656>
    4baa:	4551      	cmp	r1, sl
    4bac:	bfa8      	it	ge
    4bae:	4653      	movge	r3, sl
    4bb0:	9a06      	ldr	r2, [sp, #24]
    4bb2:	ebaa 0a03 	sub.w	sl, sl, r3
    4bb6:	1ad2      	subs	r2, r2, r3
    4bb8:	9206      	str	r2, [sp, #24]
    4bba:	1aca      	subs	r2, r1, r3
    4bbc:	920a      	str	r2, [sp, #40]	; 0x28
    4bbe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    4bc0:	b17b      	cbz	r3, 4be2 <_dtoa_r+0x67a>
    4bc2:	9a09      	ldr	r2, [sp, #36]	; 0x24
    4bc4:	2a00      	cmp	r2, #0
    4bc6:	f000 8290 	beq.w	50ea <_dtoa_r+0xb82>
    4bca:	eba3 0708 	sub.w	r7, r3, r8
    4bce:	f1b8 0f00 	cmp.w	r8, #0
    4bd2:	f040 819a 	bne.w	4f0a <_dtoa_r+0x9a2>
    4bd6:	4659      	mov	r1, fp
    4bd8:	463a      	mov	r2, r7
    4bda:	4620      	mov	r0, r4
    4bdc:	f001 fce6 	bl	65ac <__pow5mult>
    4be0:	4683      	mov	fp, r0
    4be2:	2101      	movs	r1, #1
    4be4:	4620      	mov	r0, r4
    4be6:	f001 fc31 	bl	644c <__i2b>
    4bea:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    4bec:	4607      	mov	r7, r0
    4bee:	2a00      	cmp	r2, #0
    4bf0:	f040 8125 	bne.w	4e3e <_dtoa_r+0x8d6>
    4bf4:	9b22      	ldr	r3, [sp, #136]	; 0x88
    4bf6:	2b01      	cmp	r3, #1
    4bf8:	f340 816b 	ble.w	4ed2 <_dtoa_r+0x96a>
    4bfc:	2001      	movs	r0, #1
    4bfe:	4450      	add	r0, sl
    4c00:	f010 001f 	ands.w	r0, r0, #31
    4c04:	f000 8119 	beq.w	4e3a <_dtoa_r+0x8d2>
    4c08:	f1c0 0320 	rsb	r3, r0, #32
    4c0c:	2b04      	cmp	r3, #4
    4c0e:	f340 83b4 	ble.w	537a <_dtoa_r+0xe12>
    4c12:	f1c0 001c 	rsb	r0, r0, #28
    4c16:	9b06      	ldr	r3, [sp, #24]
    4c18:	4482      	add	sl, r0
    4c1a:	4403      	add	r3, r0
    4c1c:	9306      	str	r3, [sp, #24]
    4c1e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    4c20:	4403      	add	r3, r0
    4c22:	930a      	str	r3, [sp, #40]	; 0x28
    4c24:	9b06      	ldr	r3, [sp, #24]
    4c26:	2b00      	cmp	r3, #0
    4c28:	dd05      	ble.n	4c36 <_dtoa_r+0x6ce>
    4c2a:	4659      	mov	r1, fp
    4c2c:	461a      	mov	r2, r3
    4c2e:	4620      	mov	r0, r4
    4c30:	f001 fd0c 	bl	664c <__lshift>
    4c34:	4683      	mov	fp, r0
    4c36:	f1ba 0f00 	cmp.w	sl, #0
    4c3a:	dd05      	ble.n	4c48 <_dtoa_r+0x6e0>
    4c3c:	4639      	mov	r1, r7
    4c3e:	4652      	mov	r2, sl
    4c40:	4620      	mov	r0, r4
    4c42:	f001 fd03 	bl	664c <__lshift>
    4c46:	4607      	mov	r7, r0
    4c48:	9b0d      	ldr	r3, [sp, #52]	; 0x34
    4c4a:	2b00      	cmp	r3, #0
    4c4c:	d177      	bne.n	4d3e <_dtoa_r+0x7d6>
    4c4e:	9b08      	ldr	r3, [sp, #32]
    4c50:	2b00      	cmp	r3, #0
    4c52:	f340 8205 	ble.w	5060 <_dtoa_r+0xaf8>
    4c56:	9b09      	ldr	r3, [sp, #36]	; 0x24
    4c58:	2b00      	cmp	r3, #0
    4c5a:	f000 8089 	beq.w	4d70 <_dtoa_r+0x808>
    4c5e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    4c60:	2b00      	cmp	r3, #0
    4c62:	f300 8167 	bgt.w	4f34 <_dtoa_r+0x9cc>
    4c66:	9b0c      	ldr	r3, [sp, #48]	; 0x30
    4c68:	2b00      	cmp	r3, #0
    4c6a:	f040 81ca 	bne.w	5002 <_dtoa_r+0xa9a>
    4c6e:	46b2      	mov	sl, r6
    4c70:	46c8      	mov	r8, r9
    4c72:	9b02      	ldr	r3, [sp, #8]
    4c74:	9a08      	ldr	r2, [sp, #32]
    4c76:	f003 0301 	and.w	r3, r3, #1
    4c7a:	930a      	str	r3, [sp, #40]	; 0x28
    4c7c:	f109 33ff 	add.w	r3, r9, #4294967295
    4c80:	441a      	add	r2, r3
    4c82:	9206      	str	r2, [sp, #24]
    4c84:	f8cd 902c 	str.w	r9, [sp, #44]	; 0x2c
    4c88:	4639      	mov	r1, r7
    4c8a:	4658      	mov	r0, fp
    4c8c:	f7ff fbd8 	bl	4440 <quorem>
    4c90:	4631      	mov	r1, r6
    4c92:	4681      	mov	r9, r0
    4c94:	9009      	str	r0, [sp, #36]	; 0x24
    4c96:	4658      	mov	r0, fp
    4c98:	f001 fd32 	bl	6700 <__mcmp>
    4c9c:	4652      	mov	r2, sl
    4c9e:	9002      	str	r0, [sp, #8]
    4ca0:	4639      	mov	r1, r7
    4ca2:	4620      	mov	r0, r4
    4ca4:	f001 fd48 	bl	6738 <__mdiff>
    4ca8:	68c2      	ldr	r2, [r0, #12]
    4caa:	4605      	mov	r5, r0
    4cac:	f109 0930 	add.w	r9, r9, #48	; 0x30
    4cb0:	4601      	mov	r1, r0
    4cb2:	2a00      	cmp	r2, #0
    4cb4:	f040 81cf 	bne.w	5056 <_dtoa_r+0xaee>
    4cb8:	4658      	mov	r0, fp
    4cba:	f001 fd21 	bl	6700 <__mcmp>
    4cbe:	4629      	mov	r1, r5
    4cc0:	9008      	str	r0, [sp, #32]
    4cc2:	4620      	mov	r0, r4
    4cc4:	f001 fada 	bl	627c <_Bfree>
    4cc8:	9a08      	ldr	r2, [sp, #32]
    4cca:	b932      	cbnz	r2, 4cda <_dtoa_r+0x772>
    4ccc:	9b22      	ldr	r3, [sp, #136]	; 0x88
    4cce:	b923      	cbnz	r3, 4cda <_dtoa_r+0x772>
    4cd0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    4cd2:	2b00      	cmp	r3, #0
    4cd4:	f000 8324 	beq.w	5320 <_dtoa_r+0xdb8>
    4cd8:	9a22      	ldr	r2, [sp, #136]	; 0x88
    4cda:	9b02      	ldr	r3, [sp, #8]
    4cdc:	2b00      	cmp	r3, #0
    4cde:	f2c0 8219 	blt.w	5114 <_dtoa_r+0xbac>
    4ce2:	d105      	bne.n	4cf0 <_dtoa_r+0x788>
    4ce4:	9b22      	ldr	r3, [sp, #136]	; 0x88
    4ce6:	b91b      	cbnz	r3, 4cf0 <_dtoa_r+0x788>
    4ce8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
    4cea:	2b00      	cmp	r3, #0
    4cec:	f000 8212 	beq.w	5114 <_dtoa_r+0xbac>
    4cf0:	2a00      	cmp	r2, #0
    4cf2:	f108 0501 	add.w	r5, r8, #1
    4cf6:	f300 8221 	bgt.w	513c <_dtoa_r+0xbd4>
    4cfa:	9b06      	ldr	r3, [sp, #24]
    4cfc:	f888 9000 	strb.w	r9, [r8]
    4d00:	4543      	cmp	r3, r8
    4d02:	f000 822c 	beq.w	515e <_dtoa_r+0xbf6>
    4d06:	4659      	mov	r1, fp
    4d08:	2300      	movs	r3, #0
    4d0a:	220a      	movs	r2, #10
    4d0c:	4620      	mov	r0, r4
    4d0e:	f001 fabf 	bl	6290 <__multadd>
    4d12:	4556      	cmp	r6, sl
    4d14:	4683      	mov	fp, r0
    4d16:	4631      	mov	r1, r6
    4d18:	f04f 0300 	mov.w	r3, #0
    4d1c:	f04f 020a 	mov.w	r2, #10
    4d20:	4620      	mov	r0, r4
    4d22:	f000 8192 	beq.w	504a <_dtoa_r+0xae2>
    4d26:	f001 fab3 	bl	6290 <__multadd>
    4d2a:	4651      	mov	r1, sl
    4d2c:	4606      	mov	r6, r0
    4d2e:	2300      	movs	r3, #0
    4d30:	220a      	movs	r2, #10
    4d32:	4620      	mov	r0, r4
    4d34:	f001 faac 	bl	6290 <__multadd>
    4d38:	46a8      	mov	r8, r5
    4d3a:	4682      	mov	sl, r0
    4d3c:	e7a4      	b.n	4c88 <_dtoa_r+0x720>
    4d3e:	4639      	mov	r1, r7
    4d40:	4658      	mov	r0, fp
    4d42:	f001 fcdd 	bl	6700 <__mcmp>
    4d46:	2800      	cmp	r0, #0
    4d48:	da81      	bge.n	4c4e <_dtoa_r+0x6e6>
    4d4a:	9d05      	ldr	r5, [sp, #20]
    4d4c:	4659      	mov	r1, fp
    4d4e:	2300      	movs	r3, #0
    4d50:	220a      	movs	r2, #10
    4d52:	4620      	mov	r0, r4
    4d54:	3d01      	subs	r5, #1
    4d56:	9505      	str	r5, [sp, #20]
    4d58:	f001 fa9a 	bl	6290 <__multadd>
    4d5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
    4d5e:	4683      	mov	fp, r0
    4d60:	2b00      	cmp	r3, #0
    4d62:	f040 82ee 	bne.w	5342 <_dtoa_r+0xdda>
    4d66:	9b14      	ldr	r3, [sp, #80]	; 0x50
    4d68:	2b00      	cmp	r3, #0
    4d6a:	f340 82f9 	ble.w	5360 <_dtoa_r+0xdf8>
    4d6e:	9308      	str	r3, [sp, #32]
    4d70:	464d      	mov	r5, r9
    4d72:	f8dd 8020 	ldr.w	r8, [sp, #32]
    4d76:	e008      	b.n	4d8a <_dtoa_r+0x822>
    4d78:	40240000 	.word	0x40240000
    4d7c:	4659      	mov	r1, fp
    4d7e:	2300      	movs	r3, #0
    4d80:	220a      	movs	r2, #10
    4d82:	4620      	mov	r0, r4
    4d84:	f001 fa84 	bl	6290 <__multadd>
    4d88:	4683      	mov	fp, r0
    4d8a:	4639      	mov	r1, r7
    4d8c:	4658      	mov	r0, fp
    4d8e:	f7ff fb57 	bl	4440 <quorem>
    4d92:	3030      	adds	r0, #48	; 0x30
    4d94:	f805 0b01 	strb.w	r0, [r5], #1
    4d98:	eba5 0209 	sub.w	r2, r5, r9
    4d9c:	4590      	cmp	r8, r2
    4d9e:	dced      	bgt.n	4d7c <_dtoa_r+0x814>
    4da0:	2200      	movs	r2, #0
    4da2:	4603      	mov	r3, r0
    4da4:	9202      	str	r2, [sp, #8]
    4da6:	4659      	mov	r1, fp
    4da8:	2201      	movs	r2, #1
    4daa:	4620      	mov	r0, r4
    4dac:	9308      	str	r3, [sp, #32]
    4dae:	f001 fc4d 	bl	664c <__lshift>
    4db2:	4639      	mov	r1, r7
    4db4:	4683      	mov	fp, r0
    4db6:	f001 fca3 	bl	6700 <__mcmp>
    4dba:	2800      	cmp	r0, #0
    4dbc:	f815 2c01 	ldrb.w	r2, [r5, #-1]
    4dc0:	9b08      	ldr	r3, [sp, #32]
    4dc2:	dc11      	bgt.n	4de8 <_dtoa_r+0x880>
    4dc4:	d105      	bne.n	4dd2 <_dtoa_r+0x86a>
    4dc6:	07db      	lsls	r3, r3, #31
    4dc8:	d40e      	bmi.n	4de8 <_dtoa_r+0x880>
    4dca:	e002      	b.n	4dd2 <_dtoa_r+0x86a>
    4dcc:	f815 2c02 	ldrb.w	r2, [r5, #-2]
    4dd0:	461d      	mov	r5, r3
    4dd2:	2a30      	cmp	r2, #48	; 0x30
    4dd4:	f105 33ff 	add.w	r3, r5, #4294967295
    4dd8:	d0f8      	beq.n	4dcc <_dtoa_r+0x864>
    4dda:	e00b      	b.n	4df4 <_dtoa_r+0x88c>
    4ddc:	4599      	cmp	r9, r3
    4dde:	f000 814c 	beq.w	507a <_dtoa_r+0xb12>
    4de2:	461d      	mov	r5, r3
    4de4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
    4de8:	2a39      	cmp	r2, #57	; 0x39
    4dea:	f105 33ff 	add.w	r3, r5, #4294967295
    4dee:	d0f5      	beq.n	4ddc <_dtoa_r+0x874>
    4df0:	3201      	adds	r2, #1
    4df2:	701a      	strb	r2, [r3, #0]
    4df4:	4639      	mov	r1, r7
    4df6:	4620      	mov	r0, r4
    4df8:	f001 fa40 	bl	627c <_Bfree>
    4dfc:	b156      	cbz	r6, 4e14 <_dtoa_r+0x8ac>
    4dfe:	9902      	ldr	r1, [sp, #8]
    4e00:	b121      	cbz	r1, 4e0c <_dtoa_r+0x8a4>
    4e02:	42b1      	cmp	r1, r6
    4e04:	d002      	beq.n	4e0c <_dtoa_r+0x8a4>
    4e06:	4620      	mov	r0, r4
    4e08:	f001 fa38 	bl	627c <_Bfree>
    4e0c:	4631      	mov	r1, r6
    4e0e:	4620      	mov	r0, r4
    4e10:	f001 fa34 	bl	627c <_Bfree>
    4e14:	4659      	mov	r1, fp
    4e16:	4620      	mov	r0, r4
    4e18:	f001 fa30 	bl	627c <_Bfree>
    4e1c:	2200      	movs	r2, #0
    4e1e:	9b05      	ldr	r3, [sp, #20]
    4e20:	702a      	strb	r2, [r5, #0]
    4e22:	9a24      	ldr	r2, [sp, #144]	; 0x90
    4e24:	3301      	adds	r3, #1
    4e26:	6013      	str	r3, [r2, #0]
    4e28:	9b26      	ldr	r3, [sp, #152]	; 0x98
    4e2a:	2b00      	cmp	r3, #0
    4e2c:	f43f abd5 	beq.w	45da <_dtoa_r+0x72>
    4e30:	4648      	mov	r0, r9
    4e32:	601d      	str	r5, [r3, #0]
    4e34:	b019      	add	sp, #100	; 0x64
    4e36:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4e3a:	201c      	movs	r0, #28
    4e3c:	e6eb      	b.n	4c16 <_dtoa_r+0x6ae>
    4e3e:	4601      	mov	r1, r0
    4e40:	4620      	mov	r0, r4
    4e42:	f001 fbb3 	bl	65ac <__pow5mult>
    4e46:	9b22      	ldr	r3, [sp, #136]	; 0x88
    4e48:	4607      	mov	r7, r0
    4e4a:	2b01      	cmp	r3, #1
    4e4c:	f340 80d4 	ble.w	4ff8 <_dtoa_r+0xa90>
    4e50:	2300      	movs	r3, #0
    4e52:	930c      	str	r3, [sp, #48]	; 0x30
    4e54:	693b      	ldr	r3, [r7, #16]
    4e56:	eb07 0383 	add.w	r3, r7, r3, lsl #2
    4e5a:	6918      	ldr	r0, [r3, #16]
    4e5c:	f001 faa6 	bl	63ac <__hi0bits>
    4e60:	f1c0 0020 	rsb	r0, r0, #32
    4e64:	e6cb      	b.n	4bfe <_dtoa_r+0x696>
    4e66:	900d      	str	r0, [sp, #52]	; 0x34
    4e68:	e420      	b.n	46ac <_dtoa_r+0x144>
    4e6a:	2601      	movs	r6, #1
    4e6c:	e437      	b.n	46de <_dtoa_r+0x176>
    4e6e:	f1c3 0620 	rsb	r6, r3, #32
    4e72:	9b02      	ldr	r3, [sp, #8]
    4e74:	fa03 f006 	lsl.w	r0, r3, r6
    4e78:	f7ff bbd1 	b.w	461e <_dtoa_r+0xb6>
    4e7c:	2300      	movs	r3, #0
    4e7e:	9309      	str	r3, [sp, #36]	; 0x24
    4e80:	9b05      	ldr	r3, [sp, #20]
    4e82:	9a23      	ldr	r2, [sp, #140]	; 0x8c
    4e84:	4413      	add	r3, r2
    4e86:	9314      	str	r3, [sp, #80]	; 0x50
    4e88:	3301      	adds	r3, #1
    4e8a:	2b01      	cmp	r3, #1
    4e8c:	461f      	mov	r7, r3
    4e8e:	bfb8      	it	lt
    4e90:	2701      	movlt	r7, #1
    4e92:	9308      	str	r3, [sp, #32]
    4e94:	2100      	movs	r1, #0
    4e96:	2f17      	cmp	r7, #23
    4e98:	9d08      	ldr	r5, [sp, #32]
    4e9a:	6461      	str	r1, [r4, #68]	; 0x44
    4e9c:	f77f ac85 	ble.w	47aa <_dtoa_r+0x242>
    4ea0:	2201      	movs	r2, #1
    4ea2:	2304      	movs	r3, #4
    4ea4:	005b      	lsls	r3, r3, #1
    4ea6:	f103 0014 	add.w	r0, r3, #20
    4eaa:	42b8      	cmp	r0, r7
    4eac:	4611      	mov	r1, r2
    4eae:	f102 0201 	add.w	r2, r2, #1
    4eb2:	d9f7      	bls.n	4ea4 <_dtoa_r+0x93c>
    4eb4:	6461      	str	r1, [r4, #68]	; 0x44
    4eb6:	e478      	b.n	47aa <_dtoa_r+0x242>
    4eb8:	2300      	movs	r3, #0
    4eba:	9309      	str	r3, [sp, #36]	; 0x24
    4ebc:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    4ebe:	2b00      	cmp	r3, #0
    4ec0:	f340 80e2 	ble.w	5088 <_dtoa_r+0xb20>
    4ec4:	9314      	str	r3, [sp, #80]	; 0x50
    4ec6:	9308      	str	r3, [sp, #32]
    4ec8:	461f      	mov	r7, r3
    4eca:	e7e3      	b.n	4e94 <_dtoa_r+0x92c>
    4ecc:	2301      	movs	r3, #1
    4ece:	9309      	str	r3, [sp, #36]	; 0x24
    4ed0:	e7f4      	b.n	4ebc <_dtoa_r+0x954>
    4ed2:	9b02      	ldr	r3, [sp, #8]
    4ed4:	2b00      	cmp	r3, #0
    4ed6:	f47f ae91 	bne.w	4bfc <_dtoa_r+0x694>
    4eda:	e9dd 1202 	ldrd	r1, r2, [sp, #8]
    4ede:	f3c2 0313 	ubfx	r3, r2, #0, #20
    4ee2:	2b00      	cmp	r3, #0
    4ee4:	f040 8199 	bne.w	521a <_dtoa_r+0xcb2>
    4ee8:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
    4eec:	0d1b      	lsrs	r3, r3, #20
    4eee:	051b      	lsls	r3, r3, #20
    4ef0:	b12b      	cbz	r3, 4efe <_dtoa_r+0x996>
    4ef2:	9b06      	ldr	r3, [sp, #24]
    4ef4:	f10a 0a01 	add.w	sl, sl, #1
    4ef8:	3301      	adds	r3, #1
    4efa:	9306      	str	r3, [sp, #24]
    4efc:	2301      	movs	r3, #1
    4efe:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    4f00:	930c      	str	r3, [sp, #48]	; 0x30
    4f02:	2a00      	cmp	r2, #0
    4f04:	f43f ae7a 	beq.w	4bfc <_dtoa_r+0x694>
    4f08:	e7a4      	b.n	4e54 <_dtoa_r+0x8ec>
    4f0a:	4642      	mov	r2, r8
    4f0c:	4631      	mov	r1, r6
    4f0e:	4620      	mov	r0, r4
    4f10:	f001 fb4c 	bl	65ac <__pow5mult>
    4f14:	465a      	mov	r2, fp
    4f16:	4601      	mov	r1, r0
    4f18:	4606      	mov	r6, r0
    4f1a:	4620      	mov	r0, r4
    4f1c:	f001 faa0 	bl	6460 <__multiply>
    4f20:	4680      	mov	r8, r0
    4f22:	4659      	mov	r1, fp
    4f24:	4620      	mov	r0, r4
    4f26:	f001 f9a9 	bl	627c <_Bfree>
    4f2a:	46c3      	mov	fp, r8
    4f2c:	2f00      	cmp	r7, #0
    4f2e:	f43f ae58 	beq.w	4be2 <_dtoa_r+0x67a>
    4f32:	e650      	b.n	4bd6 <_dtoa_r+0x66e>
    4f34:	4631      	mov	r1, r6
    4f36:	461a      	mov	r2, r3
    4f38:	4620      	mov	r0, r4
    4f3a:	f001 fb87 	bl	664c <__lshift>
    4f3e:	4606      	mov	r6, r0
    4f40:	e691      	b.n	4c66 <_dtoa_r+0x6fe>
    4f42:	9a0a      	ldr	r2, [sp, #40]	; 0x28
    4f44:	2a00      	cmp	r2, #0
    4f46:	f000 815d 	beq.w	5204 <_dtoa_r+0xc9c>
    4f4a:	9a06      	ldr	r2, [sp, #24]
    4f4c:	f203 4333 	addw	r3, r3, #1075	; 0x433
    4f50:	920a      	str	r2, [sp, #40]	; 0x28
    4f52:	441a      	add	r2, r3
    4f54:	449a      	add	sl, r3
    4f56:	9206      	str	r2, [sp, #24]
    4f58:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    4f5c:	e5f1      	b.n	4b42 <_dtoa_r+0x5da>
    4f5e:	9b08      	ldr	r3, [sp, #32]
    4f60:	2b00      	cmp	r3, #0
    4f62:	f73f ad3b 	bgt.w	49dc <_dtoa_r+0x474>
    4f66:	f040 81f8 	bne.w	535a <_dtoa_r+0xdf2>
    4f6a:	e9dd 0106 	ldrd	r0, r1, [sp, #24]
    4f6e:	2200      	movs	r2, #0
    4f70:	4bb5      	ldr	r3, [pc, #724]	; (5248 <_dtoa_r+0xce0>)
    4f72:	f7fd f8ed 	bl	2150 <__aeabi_dmul>
    4f76:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    4f7a:	f7fd fb6f 	bl	265c <__aeabi_dcmpge>
    4f7e:	9f08      	ldr	r7, [sp, #32]
    4f80:	463e      	mov	r6, r7
    4f82:	2800      	cmp	r0, #0
    4f84:	d174      	bne.n	5070 <_dtoa_r+0xb08>
    4f86:	2331      	movs	r3, #49	; 0x31
    4f88:	9a05      	ldr	r2, [sp, #20]
    4f8a:	f889 3000 	strb.w	r3, [r9]
    4f8e:	3201      	adds	r2, #1
    4f90:	9205      	str	r2, [sp, #20]
    4f92:	f109 0501 	add.w	r5, r9, #1
    4f96:	4639      	mov	r1, r7
    4f98:	4620      	mov	r0, r4
    4f9a:	f001 f96f 	bl	627c <_Bfree>
    4f9e:	2e00      	cmp	r6, #0
    4fa0:	f47f af34 	bne.w	4e0c <_dtoa_r+0x8a4>
    4fa4:	e736      	b.n	4e14 <_dtoa_r+0x8ac>
    4fa6:	f000 8148 	beq.w	523a <_dtoa_r+0xcd2>
    4faa:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
    4fae:	9b05      	ldr	r3, [sp, #20]
    4fb0:	425d      	negs	r5, r3
    4fb2:	4ba6      	ldr	r3, [pc, #664]	; (524c <_dtoa_r+0xce4>)
    4fb4:	f005 020f 	and.w	r2, r5, #15
    4fb8:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
    4fbc:	e9d3 2300 	ldrd	r2, r3, [r3]
    4fc0:	f7fd f8c6 	bl	2150 <__aeabi_dmul>
    4fc4:	112d      	asrs	r5, r5, #4
    4fc6:	e9cd 0102 	strd	r0, r1, [sp, #8]
    4fca:	f000 81ce 	beq.w	536a <_dtoa_r+0xe02>
    4fce:	2300      	movs	r3, #0
    4fd0:	2702      	movs	r7, #2
    4fd2:	4e9f      	ldr	r6, [pc, #636]	; (5250 <_dtoa_r+0xce8>)
    4fd4:	07ea      	lsls	r2, r5, #31
    4fd6:	d505      	bpl.n	4fe4 <_dtoa_r+0xa7c>
    4fd8:	e9d6 2300 	ldrd	r2, r3, [r6]
    4fdc:	f7fd f8b8 	bl	2150 <__aeabi_dmul>
    4fe0:	2301      	movs	r3, #1
    4fe2:	441f      	add	r7, r3
    4fe4:	106d      	asrs	r5, r5, #1
    4fe6:	f106 0608 	add.w	r6, r6, #8
    4fea:	d1f3      	bne.n	4fd4 <_dtoa_r+0xa6c>
    4fec:	2b00      	cmp	r3, #0
    4fee:	f43f ac23 	beq.w	4838 <_dtoa_r+0x2d0>
    4ff2:	e9cd 0102 	strd	r0, r1, [sp, #8]
    4ff6:	e41f      	b.n	4838 <_dtoa_r+0x2d0>
    4ff8:	9b02      	ldr	r3, [sp, #8]
    4ffa:	2b00      	cmp	r3, #0
    4ffc:	f43f af6d 	beq.w	4eda <_dtoa_r+0x972>
    5000:	e726      	b.n	4e50 <_dtoa_r+0x8e8>
    5002:	6871      	ldr	r1, [r6, #4]
    5004:	4620      	mov	r0, r4
    5006:	f001 f913 	bl	6230 <_Balloc>
    500a:	4605      	mov	r5, r0
    500c:	6933      	ldr	r3, [r6, #16]
    500e:	f106 010c 	add.w	r1, r6, #12
    5012:	3302      	adds	r3, #2
    5014:	009a      	lsls	r2, r3, #2
    5016:	300c      	adds	r0, #12
    5018:	f7fc fe68 	bl	1cec <memcpy>
    501c:	4629      	mov	r1, r5
    501e:	2201      	movs	r2, #1
    5020:	4620      	mov	r0, r4
    5022:	f001 fb13 	bl	664c <__lshift>
    5026:	4682      	mov	sl, r0
    5028:	e622      	b.n	4c70 <_dtoa_r+0x708>
    502a:	2500      	movs	r5, #0
    502c:	4620      	mov	r0, r4
    502e:	6465      	str	r5, [r4, #68]	; 0x44
    5030:	4629      	mov	r1, r5
    5032:	f001 f8fd 	bl	6230 <_Balloc>
    5036:	f04f 33ff 	mov.w	r3, #4294967295
    503a:	9314      	str	r3, [sp, #80]	; 0x50
    503c:	9308      	str	r3, [sp, #32]
    503e:	2301      	movs	r3, #1
    5040:	4681      	mov	r9, r0
    5042:	9523      	str	r5, [sp, #140]	; 0x8c
    5044:	6420      	str	r0, [r4, #64]	; 0x40
    5046:	9309      	str	r3, [sp, #36]	; 0x24
    5048:	e4b5      	b.n	49b6 <_dtoa_r+0x44e>
    504a:	f001 f921 	bl	6290 <__multadd>
    504e:	46a8      	mov	r8, r5
    5050:	4606      	mov	r6, r0
    5052:	4682      	mov	sl, r0
    5054:	e618      	b.n	4c88 <_dtoa_r+0x720>
    5056:	4620      	mov	r0, r4
    5058:	f001 f910 	bl	627c <_Bfree>
    505c:	2201      	movs	r2, #1
    505e:	e63c      	b.n	4cda <_dtoa_r+0x772>
    5060:	9b22      	ldr	r3, [sp, #136]	; 0x88
    5062:	2b02      	cmp	r3, #2
    5064:	f77f adf7 	ble.w	4c56 <_dtoa_r+0x6ee>
    5068:	9b08      	ldr	r3, [sp, #32]
    506a:	2b00      	cmp	r3, #0
    506c:	f000 80d7 	beq.w	521e <_dtoa_r+0xcb6>
    5070:	9b23      	ldr	r3, [sp, #140]	; 0x8c
    5072:	464d      	mov	r5, r9
    5074:	43db      	mvns	r3, r3
    5076:	9305      	str	r3, [sp, #20]
    5078:	e78d      	b.n	4f96 <_dtoa_r+0xa2e>
    507a:	2331      	movs	r3, #49	; 0x31
    507c:	9a05      	ldr	r2, [sp, #20]
    507e:	f889 3000 	strb.w	r3, [r9]
    5082:	3201      	adds	r2, #1
    5084:	9205      	str	r2, [sp, #20]
    5086:	e6b5      	b.n	4df4 <_dtoa_r+0x88c>
    5088:	2501      	movs	r5, #1
    508a:	9523      	str	r5, [sp, #140]	; 0x8c
    508c:	9508      	str	r5, [sp, #32]
    508e:	f7ff bb89 	b.w	47a4 <_dtoa_r+0x23c>
    5092:	4638      	mov	r0, r7
    5094:	f7fc fff2 	bl	207c <__aeabi_i2d>
    5098:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    509c:	f7fd f858 	bl	2150 <__aeabi_dmul>
    50a0:	2200      	movs	r2, #0
    50a2:	4b6c      	ldr	r3, [pc, #432]	; (5254 <_dtoa_r+0xcec>)
    50a4:	f7fc fe9e 	bl	1de4 <__adddf3>
    50a8:	4605      	mov	r5, r0
    50aa:	f1a1 7650 	sub.w	r6, r1, #54525952	; 0x3400000
    50ae:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    50b2:	2200      	movs	r2, #0
    50b4:	4b64      	ldr	r3, [pc, #400]	; (5248 <_dtoa_r+0xce0>)
    50b6:	f7fc fe93 	bl	1de0 <__aeabi_dsub>
    50ba:	462a      	mov	r2, r5
    50bc:	4633      	mov	r3, r6
    50be:	e9cd 0102 	strd	r0, r1, [sp, #8]
    50c2:	f7fd fad5 	bl	2670 <__aeabi_dcmpgt>
    50c6:	4607      	mov	r7, r0
    50c8:	2800      	cmp	r0, #0
    50ca:	d158      	bne.n	517e <_dtoa_r+0xc16>
    50cc:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    50d0:	462a      	mov	r2, r5
    50d2:	f106 4300 	add.w	r3, r6, #2147483648	; 0x80000000
    50d6:	f7fd faad 	bl	2634 <__aeabi_dcmplt>
    50da:	2800      	cmp	r0, #0
    50dc:	f43f ac67 	beq.w	49ae <_dtoa_r+0x446>
    50e0:	463e      	mov	r6, r7
    50e2:	e7c5      	b.n	5070 <_dtoa_r+0xb08>
    50e4:	2301      	movs	r3, #1
    50e6:	9309      	str	r3, [sp, #36]	; 0x24
    50e8:	e6ca      	b.n	4e80 <_dtoa_r+0x918>
    50ea:	4659      	mov	r1, fp
    50ec:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
    50ee:	4620      	mov	r0, r4
    50f0:	f001 fa5c 	bl	65ac <__pow5mult>
    50f4:	4683      	mov	fp, r0
    50f6:	e574      	b.n	4be2 <_dtoa_r+0x67a>
    50f8:	f8dd b008 	ldr.w	fp, [sp, #8]
    50fc:	e68a      	b.n	4e14 <_dtoa_r+0x8ac>
    50fe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    5100:	9a0c      	ldr	r2, [sp, #48]	; 0x30
    5102:	eba8 0303 	sub.w	r3, r8, r3
    5106:	441a      	add	r2, r3
    5108:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
    510c:	920c      	str	r2, [sp, #48]	; 0x30
    510e:	f04f 0800 	mov.w	r8, #0
    5112:	e50d      	b.n	4b30 <_dtoa_r+0x5c8>
    5114:	2a00      	cmp	r2, #0
    5116:	464b      	mov	r3, r9
    5118:	f108 0501 	add.w	r5, r8, #1
    511c:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
    5120:	f300 80c5 	bgt.w	52ae <_dtoa_r+0xd46>
    5124:	9602      	str	r6, [sp, #8]
    5126:	f888 3000 	strb.w	r3, [r8]
    512a:	4656      	mov	r6, sl
    512c:	e662      	b.n	4df4 <_dtoa_r+0x88c>
    512e:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
    5132:	2702      	movs	r7, #2
    5134:	e9cd 2310 	strd	r2, r3, [sp, #64]	; 0x40
    5138:	f7ff bb65 	b.w	4806 <_dtoa_r+0x29e>
    513c:	464b      	mov	r3, r9
    513e:	2b39      	cmp	r3, #57	; 0x39
    5140:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
    5144:	f000 80c5 	beq.w	52d2 <_dtoa_r+0xd6a>
    5148:	3301      	adds	r3, #1
    514a:	9602      	str	r6, [sp, #8]
    514c:	f888 3000 	strb.w	r3, [r8]
    5150:	4656      	mov	r6, sl
    5152:	e64f      	b.n	4df4 <_dtoa_r+0x88c>
    5154:	9b06      	ldr	r3, [sp, #24]
    5156:	9a08      	ldr	r2, [sp, #32]
    5158:	1a9b      	subs	r3, r3, r2
    515a:	930a      	str	r3, [sp, #40]	; 0x28
    515c:	e4f1      	b.n	4b42 <_dtoa_r+0x5da>
    515e:	464b      	mov	r3, r9
    5160:	9602      	str	r6, [sp, #8]
    5162:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
    5166:	4656      	mov	r6, sl
    5168:	e61d      	b.n	4da6 <_dtoa_r+0x83e>
    516a:	2330      	movs	r3, #48	; 0x30
    516c:	f889 3000 	strb.w	r3, [r9]
    5170:	9b05      	ldr	r3, [sp, #20]
    5172:	f815 8c01 	ldrb.w	r8, [r5, #-1]
    5176:	3301      	adds	r3, #1
    5178:	9305      	str	r3, [sp, #20]
    517a:	464b      	mov	r3, r9
    517c:	e4c3      	b.n	4b06 <_dtoa_r+0x59e>
    517e:	2700      	movs	r7, #0
    5180:	463e      	mov	r6, r7
    5182:	e700      	b.n	4f86 <_dtoa_r+0xa1e>
    5184:	e9dd 2312 	ldrd	r2, r3, [sp, #72]	; 0x48
    5188:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    518c:	f7fc ffe0 	bl	2150 <__aeabi_dmul>
    5190:	9b10      	ldr	r3, [sp, #64]	; 0x40
    5192:	e9cd 0102 	strd	r0, r1, [sp, #8]
    5196:	2b01      	cmp	r3, #1
    5198:	f889 8000 	strb.w	r8, [r9]
    519c:	d021      	beq.n	51e2 <_dtoa_r+0xc7a>
    519e:	9b10      	ldr	r3, [sp, #64]	; 0x40
    51a0:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
    51a4:	444b      	add	r3, r9
    51a6:	469a      	mov	sl, r3
    51a8:	2200      	movs	r2, #0
    51aa:	4b2b      	ldr	r3, [pc, #172]	; (5258 <_dtoa_r+0xcf0>)
    51ac:	4630      	mov	r0, r6
    51ae:	4639      	mov	r1, r7
    51b0:	f7fc ffce 	bl	2150 <__aeabi_dmul>
    51b4:	460f      	mov	r7, r1
    51b6:	4606      	mov	r6, r0
    51b8:	f7fd fa7a 	bl	26b0 <__aeabi_d2iz>
    51bc:	4680      	mov	r8, r0
    51be:	f7fc ff5d 	bl	207c <__aeabi_i2d>
    51c2:	4602      	mov	r2, r0
    51c4:	460b      	mov	r3, r1
    51c6:	4630      	mov	r0, r6
    51c8:	4639      	mov	r1, r7
    51ca:	f7fc fe09 	bl	1de0 <__aeabi_dsub>
    51ce:	f108 0830 	add.w	r8, r8, #48	; 0x30
    51d2:	f805 8b01 	strb.w	r8, [r5], #1
    51d6:	4555      	cmp	r5, sl
    51d8:	4606      	mov	r6, r0
    51da:	460f      	mov	r7, r1
    51dc:	d1e4      	bne.n	51a8 <_dtoa_r+0xc40>
    51de:	f8dd a040 	ldr.w	sl, [sp, #64]	; 0x40
    51e2:	2200      	movs	r2, #0
    51e4:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    51e8:	4b1c      	ldr	r3, [pc, #112]	; (525c <_dtoa_r+0xcf4>)
    51ea:	f7fc fdfb 	bl	1de4 <__adddf3>
    51ee:	4632      	mov	r2, r6
    51f0:	463b      	mov	r3, r7
    51f2:	f7fd fa1f 	bl	2634 <__aeabi_dcmplt>
    51f6:	2800      	cmp	r0, #0
    51f8:	d071      	beq.n	52de <_dtoa_r+0xd76>
    51fa:	9b15      	ldr	r3, [sp, #84]	; 0x54
    51fc:	9305      	str	r3, [sp, #20]
    51fe:	f815 8c01 	ldrb.w	r8, [r5, #-1]
    5202:	e47b      	b.n	4afc <_dtoa_r+0x594>
    5204:	9b16      	ldr	r3, [sp, #88]	; 0x58
    5206:	9a06      	ldr	r2, [sp, #24]
    5208:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
    520c:	920a      	str	r2, [sp, #40]	; 0x28
    520e:	441a      	add	r2, r3
    5210:	449a      	add	sl, r3
    5212:	9206      	str	r2, [sp, #24]
    5214:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
    5218:	e493      	b.n	4b42 <_dtoa_r+0x5da>
    521a:	2300      	movs	r3, #0
    521c:	e66f      	b.n	4efe <_dtoa_r+0x996>
    521e:	4639      	mov	r1, r7
    5220:	2205      	movs	r2, #5
    5222:	4620      	mov	r0, r4
    5224:	f001 f834 	bl	6290 <__multadd>
    5228:	4601      	mov	r1, r0
    522a:	4607      	mov	r7, r0
    522c:	4658      	mov	r0, fp
    522e:	f001 fa67 	bl	6700 <__mcmp>
    5232:	2800      	cmp	r0, #0
    5234:	f73f aea7 	bgt.w	4f86 <_dtoa_r+0xa1e>
    5238:	e71a      	b.n	5070 <_dtoa_r+0xb08>
    523a:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
    523e:	2702      	movs	r7, #2
    5240:	e9cd 2302 	strd	r2, r3, [sp, #8]
    5244:	f7ff baf8 	b.w	4838 <_dtoa_r+0x2d0>
    5248:	40140000 	.word	0x40140000
    524c:	00008ab8 	.word	0x00008ab8
    5250:	00008a90 	.word	0x00008a90
    5254:	401c0000 	.word	0x401c0000
    5258:	40240000 	.word	0x40240000
    525c:	3fe00000 	.word	0x3fe00000
    5260:	9b08      	ldr	r3, [sp, #32]
    5262:	2b00      	cmp	r3, #0
    5264:	f43f af15 	beq.w	5092 <_dtoa_r+0xb2a>
    5268:	9b14      	ldr	r3, [sp, #80]	; 0x50
    526a:	2b00      	cmp	r3, #0
    526c:	f77f ab9f 	ble.w	49ae <_dtoa_r+0x446>
    5270:	e9dd 0102 	ldrd	r0, r1, [sp, #8]
    5274:	2200      	movs	r2, #0
    5276:	4b45      	ldr	r3, [pc, #276]	; (538c <_dtoa_r+0xe24>)
    5278:	f7fc ff6a 	bl	2150 <__aeabi_dmul>
    527c:	4605      	mov	r5, r0
    527e:	460e      	mov	r6, r1
    5280:	1c78      	adds	r0, r7, #1
    5282:	e9cd 5602 	strd	r5, r6, [sp, #8]
    5286:	f7fc fef9 	bl	207c <__aeabi_i2d>
    528a:	462a      	mov	r2, r5
    528c:	4633      	mov	r3, r6
    528e:	f7fc ff5f 	bl	2150 <__aeabi_dmul>
    5292:	2200      	movs	r2, #0
    5294:	4b3e      	ldr	r3, [pc, #248]	; (5390 <_dtoa_r+0xe28>)
    5296:	f7fc fda5 	bl	1de4 <__adddf3>
    529a:	9a05      	ldr	r2, [sp, #20]
    529c:	9b14      	ldr	r3, [sp, #80]	; 0x50
    529e:	3a01      	subs	r2, #1
    52a0:	4605      	mov	r5, r0
    52a2:	9215      	str	r2, [sp, #84]	; 0x54
    52a4:	f1a1 7650 	sub.w	r6, r1, #54525952	; 0x3400000
    52a8:	9310      	str	r3, [sp, #64]	; 0x40
    52aa:	f7ff bae6 	b.w	487a <_dtoa_r+0x312>
    52ae:	4659      	mov	r1, fp
    52b0:	2201      	movs	r2, #1
    52b2:	4620      	mov	r0, r4
    52b4:	9302      	str	r3, [sp, #8]
    52b6:	f001 f9c9 	bl	664c <__lshift>
    52ba:	4639      	mov	r1, r7
    52bc:	4683      	mov	fp, r0
    52be:	f001 fa1f 	bl	6700 <__mcmp>
    52c2:	2800      	cmp	r0, #0
    52c4:	9b02      	ldr	r3, [sp, #8]
    52c6:	dd36      	ble.n	5336 <_dtoa_r+0xdce>
    52c8:	2b39      	cmp	r3, #57	; 0x39
    52ca:	d002      	beq.n	52d2 <_dtoa_r+0xd6a>
    52cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
    52ce:	3331      	adds	r3, #49	; 0x31
    52d0:	e728      	b.n	5124 <_dtoa_r+0xbbc>
    52d2:	2239      	movs	r2, #57	; 0x39
    52d4:	9602      	str	r6, [sp, #8]
    52d6:	f888 2000 	strb.w	r2, [r8]
    52da:	4656      	mov	r6, sl
    52dc:	e584      	b.n	4de8 <_dtoa_r+0x880>
    52de:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
    52e2:	2000      	movs	r0, #0
    52e4:	492b      	ldr	r1, [pc, #172]	; (5394 <_dtoa_r+0xe2c>)
    52e6:	f7fc fd7b 	bl	1de0 <__aeabi_dsub>
    52ea:	4632      	mov	r2, r6
    52ec:	463b      	mov	r3, r7
    52ee:	f7fd f9bf 	bl	2670 <__aeabi_dcmpgt>
    52f2:	b910      	cbnz	r0, 52fa <_dtoa_r+0xd92>
    52f4:	f7ff bb5b 	b.w	49ae <_dtoa_r+0x446>
    52f8:	4615      	mov	r5, r2
    52fa:	f815 3c01 	ldrb.w	r3, [r5, #-1]
    52fe:	1e6a      	subs	r2, r5, #1
    5300:	2b30      	cmp	r3, #48	; 0x30
    5302:	d0f9      	beq.n	52f8 <_dtoa_r+0xd90>
    5304:	9b15      	ldr	r3, [sp, #84]	; 0x54
    5306:	9305      	str	r3, [sp, #20]
    5308:	e584      	b.n	4e14 <_dtoa_r+0x8ac>
    530a:	4643      	mov	r3, r8
    530c:	46a0      	mov	r8, r4
    530e:	461c      	mov	r4, r3
    5310:	f8dd b040 	ldr.w	fp, [sp, #64]	; 0x40
    5314:	f8dd 9008 	ldr.w	r9, [sp, #8]
    5318:	9b15      	ldr	r3, [sp, #84]	; 0x54
    531a:	9305      	str	r3, [sp, #20]
    531c:	f7ff bbee 	b.w	4afc <_dtoa_r+0x594>
    5320:	464b      	mov	r3, r9
    5322:	2b39      	cmp	r3, #57	; 0x39
    5324:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
    5328:	f108 0501 	add.w	r5, r8, #1
    532c:	d0d1      	beq.n	52d2 <_dtoa_r+0xd6a>
    532e:	9a02      	ldr	r2, [sp, #8]
    5330:	2a00      	cmp	r2, #0
    5332:	dccb      	bgt.n	52cc <_dtoa_r+0xd64>
    5334:	e6f6      	b.n	5124 <_dtoa_r+0xbbc>
    5336:	f47f aef5 	bne.w	5124 <_dtoa_r+0xbbc>
    533a:	07da      	lsls	r2, r3, #31
    533c:	f57f aef2 	bpl.w	5124 <_dtoa_r+0xbbc>
    5340:	e7c2      	b.n	52c8 <_dtoa_r+0xd60>
    5342:	4631      	mov	r1, r6
    5344:	2300      	movs	r3, #0
    5346:	220a      	movs	r2, #10
    5348:	4620      	mov	r0, r4
    534a:	f000 ffa1 	bl	6290 <__multadd>
    534e:	9b14      	ldr	r3, [sp, #80]	; 0x50
    5350:	4606      	mov	r6, r0
    5352:	2b00      	cmp	r3, #0
    5354:	dd0c      	ble.n	5370 <_dtoa_r+0xe08>
    5356:	9308      	str	r3, [sp, #32]
    5358:	e481      	b.n	4c5e <_dtoa_r+0x6f6>
    535a:	2700      	movs	r7, #0
    535c:	463e      	mov	r6, r7
    535e:	e687      	b.n	5070 <_dtoa_r+0xb08>
    5360:	9b22      	ldr	r3, [sp, #136]	; 0x88
    5362:	2b02      	cmp	r3, #2
    5364:	dc0e      	bgt.n	5384 <_dtoa_r+0xe1c>
    5366:	9b14      	ldr	r3, [sp, #80]	; 0x50
    5368:	e501      	b.n	4d6e <_dtoa_r+0x806>
    536a:	2702      	movs	r7, #2
    536c:	f7ff ba64 	b.w	4838 <_dtoa_r+0x2d0>
    5370:	9b22      	ldr	r3, [sp, #136]	; 0x88
    5372:	2b02      	cmp	r3, #2
    5374:	dc06      	bgt.n	5384 <_dtoa_r+0xe1c>
    5376:	9b14      	ldr	r3, [sp, #80]	; 0x50
    5378:	e7ed      	b.n	5356 <_dtoa_r+0xdee>
    537a:	f43f ac53 	beq.w	4c24 <_dtoa_r+0x6bc>
    537e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
    5382:	e448      	b.n	4c16 <_dtoa_r+0x6ae>
    5384:	9b14      	ldr	r3, [sp, #80]	; 0x50
    5386:	9308      	str	r3, [sp, #32]
    5388:	e66e      	b.n	5068 <_dtoa_r+0xb00>
    538a:	bf00      	nop
    538c:	40240000 	.word	0x40240000
    5390:	401c0000 	.word	0x401c0000
    5394:	3fe00000 	.word	0x3fe00000

Disassembly of section .text.__sflush_r:

00005398 <__sflush_r>:
    5398:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
    539c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    53a0:	b29a      	uxth	r2, r3
    53a2:	460c      	mov	r4, r1
    53a4:	0711      	lsls	r1, r2, #28
    53a6:	4680      	mov	r8, r0
    53a8:	d444      	bmi.n	5434 <__sflush_r+0x9c>
    53aa:	6862      	ldr	r2, [r4, #4]
    53ac:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
    53b0:	2a00      	cmp	r2, #0
    53b2:	81a3      	strh	r3, [r4, #12]
    53b4:	dd5a      	ble.n	546c <__sflush_r+0xd4>
    53b6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    53b8:	2d00      	cmp	r5, #0
    53ba:	d054      	beq.n	5466 <__sflush_r+0xce>
    53bc:	2200      	movs	r2, #0
    53be:	b29b      	uxth	r3, r3
    53c0:	f8d8 6000 	ldr.w	r6, [r8]
    53c4:	69e1      	ldr	r1, [r4, #28]
    53c6:	f8c8 2000 	str.w	r2, [r8]
    53ca:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
    53ce:	f040 8084 	bne.w	54da <__sflush_r+0x142>
    53d2:	2301      	movs	r3, #1
    53d4:	4640      	mov	r0, r8
    53d6:	47a8      	blx	r5
    53d8:	1c43      	adds	r3, r0, #1
    53da:	d04b      	beq.n	5474 <__sflush_r+0xdc>
    53dc:	89a3      	ldrh	r3, [r4, #12]
    53de:	6aa5      	ldr	r5, [r4, #40]	; 0x28
    53e0:	69e1      	ldr	r1, [r4, #28]
    53e2:	075f      	lsls	r7, r3, #29
    53e4:	d505      	bpl.n	53f2 <__sflush_r+0x5a>
    53e6:	6862      	ldr	r2, [r4, #4]
    53e8:	6b23      	ldr	r3, [r4, #48]	; 0x30
    53ea:	1a80      	subs	r0, r0, r2
    53ec:	b10b      	cbz	r3, 53f2 <__sflush_r+0x5a>
    53ee:	6be3      	ldr	r3, [r4, #60]	; 0x3c
    53f0:	1ac0      	subs	r0, r0, r3
    53f2:	4602      	mov	r2, r0
    53f4:	2300      	movs	r3, #0
    53f6:	4640      	mov	r0, r8
    53f8:	47a8      	blx	r5
    53fa:	1c45      	adds	r5, r0, #1
    53fc:	d046      	beq.n	548c <__sflush_r+0xf4>
    53fe:	2100      	movs	r1, #0
    5400:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    5404:	6922      	ldr	r2, [r4, #16]
    5406:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
    540a:	81a3      	strh	r3, [r4, #12]
    540c:	04db      	lsls	r3, r3, #19
    540e:	e9c4 2100 	strd	r2, r1, [r4]
    5412:	d500      	bpl.n	5416 <__sflush_r+0x7e>
    5414:	6520      	str	r0, [r4, #80]	; 0x50
    5416:	6b21      	ldr	r1, [r4, #48]	; 0x30
    5418:	f8c8 6000 	str.w	r6, [r8]
    541c:	b319      	cbz	r1, 5466 <__sflush_r+0xce>
    541e:	f104 0340 	add.w	r3, r4, #64	; 0x40
    5422:	4299      	cmp	r1, r3
    5424:	d002      	beq.n	542c <__sflush_r+0x94>
    5426:	4640      	mov	r0, r8
    5428:	f000 fa34 	bl	5894 <_free_r>
    542c:	2000      	movs	r0, #0
    542e:	6320      	str	r0, [r4, #48]	; 0x30
    5430:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    5434:	6926      	ldr	r6, [r4, #16]
    5436:	b1b6      	cbz	r6, 5466 <__sflush_r+0xce>
    5438:	0792      	lsls	r2, r2, #30
    543a:	bf18      	it	ne
    543c:	2300      	movne	r3, #0
    543e:	6825      	ldr	r5, [r4, #0]
    5440:	bf08      	it	eq
    5442:	6963      	ldreq	r3, [r4, #20]
    5444:	6026      	str	r6, [r4, #0]
    5446:	1bad      	subs	r5, r5, r6
    5448:	60a3      	str	r3, [r4, #8]
    544a:	e00a      	b.n	5462 <__sflush_r+0xca>
    544c:	462b      	mov	r3, r5
    544e:	4632      	mov	r2, r6
    5450:	6a67      	ldr	r7, [r4, #36]	; 0x24
    5452:	69e1      	ldr	r1, [r4, #28]
    5454:	4640      	mov	r0, r8
    5456:	47b8      	blx	r7
    5458:	2800      	cmp	r0, #0
    545a:	eba5 0500 	sub.w	r5, r5, r0
    545e:	4406      	add	r6, r0
    5460:	dd2b      	ble.n	54ba <__sflush_r+0x122>
    5462:	2d00      	cmp	r5, #0
    5464:	dcf2      	bgt.n	544c <__sflush_r+0xb4>
    5466:	2000      	movs	r0, #0
    5468:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    546c:	6be2      	ldr	r2, [r4, #60]	; 0x3c
    546e:	2a00      	cmp	r2, #0
    5470:	dca1      	bgt.n	53b6 <__sflush_r+0x1e>
    5472:	e7f8      	b.n	5466 <__sflush_r+0xce>
    5474:	f8d8 3000 	ldr.w	r3, [r8]
    5478:	2b00      	cmp	r3, #0
    547a:	d0af      	beq.n	53dc <__sflush_r+0x44>
    547c:	2b1d      	cmp	r3, #29
    547e:	d001      	beq.n	5484 <__sflush_r+0xec>
    5480:	2b16      	cmp	r3, #22
    5482:	d12c      	bne.n	54de <__sflush_r+0x146>
    5484:	f8c8 6000 	str.w	r6, [r8]
    5488:	2000      	movs	r0, #0
    548a:	e7ed      	b.n	5468 <__sflush_r+0xd0>
    548c:	f8d8 5000 	ldr.w	r5, [r8]
    5490:	2d1d      	cmp	r5, #29
    5492:	d81a      	bhi.n	54ca <__sflush_r+0x132>
    5494:	4b14      	ldr	r3, [pc, #80]	; (54e8 <__sflush_r+0x150>)
    5496:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    549a:	40eb      	lsrs	r3, r5
    549c:	43db      	mvns	r3, r3
    549e:	f013 0301 	ands.w	r3, r3, #1
    54a2:	d114      	bne.n	54ce <__sflush_r+0x136>
    54a4:	6921      	ldr	r1, [r4, #16]
    54a6:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
    54aa:	e9c4 1300 	strd	r1, r3, [r4]
    54ae:	04d1      	lsls	r1, r2, #19
    54b0:	81a2      	strh	r2, [r4, #12]
    54b2:	d5b0      	bpl.n	5416 <__sflush_r+0x7e>
    54b4:	2d00      	cmp	r5, #0
    54b6:	d1ae      	bne.n	5416 <__sflush_r+0x7e>
    54b8:	e7ac      	b.n	5414 <__sflush_r+0x7c>
    54ba:	89a3      	ldrh	r3, [r4, #12]
    54bc:	f04f 30ff 	mov.w	r0, #4294967295
    54c0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    54c4:	81a3      	strh	r3, [r4, #12]
    54c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    54ca:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    54ce:	f042 0240 	orr.w	r2, r2, #64	; 0x40
    54d2:	81a2      	strh	r2, [r4, #12]
    54d4:	f04f 30ff 	mov.w	r0, #4294967295
    54d8:	e7c6      	b.n	5468 <__sflush_r+0xd0>
    54da:	6d20      	ldr	r0, [r4, #80]	; 0x50
    54dc:	e781      	b.n	53e2 <__sflush_r+0x4a>
    54de:	89a3      	ldrh	r3, [r4, #12]
    54e0:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    54e4:	81a3      	strh	r3, [r4, #12]
    54e6:	e7bf      	b.n	5468 <__sflush_r+0xd0>
    54e8:	20400001 	.word	0x20400001

Disassembly of section .text._fflush_r:

000054ec <_fflush_r>:
    54ec:	b538      	push	{r3, r4, r5, lr}
    54ee:	460d      	mov	r5, r1
    54f0:	4604      	mov	r4, r0
    54f2:	b108      	cbz	r0, 54f8 <_fflush_r+0xc>
    54f4:	6b83      	ldr	r3, [r0, #56]	; 0x38
    54f6:	b1a3      	cbz	r3, 5522 <_fflush_r+0x36>
    54f8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
    54fc:	b1b8      	cbz	r0, 552e <_fflush_r+0x42>
    54fe:	6e6b      	ldr	r3, [r5, #100]	; 0x64
    5500:	07db      	lsls	r3, r3, #31
    5502:	d401      	bmi.n	5508 <_fflush_r+0x1c>
    5504:	0581      	lsls	r1, r0, #22
    5506:	d51a      	bpl.n	553e <_fflush_r+0x52>
    5508:	4620      	mov	r0, r4
    550a:	4629      	mov	r1, r5
    550c:	f7ff ff44 	bl	5398 <__sflush_r>
    5510:	6e6b      	ldr	r3, [r5, #100]	; 0x64
    5512:	4604      	mov	r4, r0
    5514:	07da      	lsls	r2, r3, #31
    5516:	d402      	bmi.n	551e <_fflush_r+0x32>
    5518:	89ab      	ldrh	r3, [r5, #12]
    551a:	059b      	lsls	r3, r3, #22
    551c:	d50a      	bpl.n	5534 <_fflush_r+0x48>
    551e:	4620      	mov	r0, r4
    5520:	bd38      	pop	{r3, r4, r5, pc}
    5522:	f000 f88f 	bl	5644 <__sinit>
    5526:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
    552a:	2800      	cmp	r0, #0
    552c:	d1e7      	bne.n	54fe <_fflush_r+0x12>
    552e:	4604      	mov	r4, r0
    5530:	4620      	mov	r0, r4
    5532:	bd38      	pop	{r3, r4, r5, pc}
    5534:	6da8      	ldr	r0, [r5, #88]	; 0x58
    5536:	f000 fb1d 	bl	5b74 <__retarget_lock_release_recursive>
    553a:	4620      	mov	r0, r4
    553c:	bd38      	pop	{r3, r4, r5, pc}
    553e:	6da8      	ldr	r0, [r5, #88]	; 0x58
    5540:	f000 fb10 	bl	5b64 <__retarget_lock_acquire_recursive>
    5544:	e7e0      	b.n	5508 <_fflush_r+0x1c>
    5546:	bf00      	nop

Disassembly of section .text.fflush:

00005548 <fflush>:
    5548:	b120      	cbz	r0, 5554 <fflush+0xc>
    554a:	4b05      	ldr	r3, [pc, #20]	; (5560 <fflush+0x18>)
    554c:	4601      	mov	r1, r0
    554e:	6818      	ldr	r0, [r3, #0]
    5550:	f7ff bfcc 	b.w	54ec <_fflush_r>
    5554:	4b03      	ldr	r3, [pc, #12]	; (5564 <fflush+0x1c>)
    5556:	4904      	ldr	r1, [pc, #16]	; (5568 <fflush+0x20>)
    5558:	6818      	ldr	r0, [r3, #0]
    555a:	f000 bab3 	b.w	5ac4 <_fwalk_reent>
    555e:	bf00      	nop
    5560:	20000010 	.word	0x20000010
    5564:	00008a10 	.word	0x00008a10
    5568:	000054ed 	.word	0x000054ed

Disassembly of section .text.std:

0000556c <std>:
    556c:	2300      	movs	r3, #0
    556e:	b510      	push	{r4, lr}
    5570:	4604      	mov	r4, r0
    5572:	8181      	strh	r1, [r0, #12]
    5574:	81c2      	strh	r2, [r0, #14]
    5576:	e9c0 3300 	strd	r3, r3, [r0]
    557a:	6083      	str	r3, [r0, #8]
    557c:	6643      	str	r3, [r0, #100]	; 0x64
    557e:	e9c0 3304 	strd	r3, r3, [r0, #16]
    5582:	6183      	str	r3, [r0, #24]
    5584:	4619      	mov	r1, r3
    5586:	2208      	movs	r2, #8
    5588:	305c      	adds	r0, #92	; 0x5c
    558a:	f7fd fa83 	bl	2a94 <memset>
    558e:	4807      	ldr	r0, [pc, #28]	; (55ac <std+0x40>)
    5590:	4907      	ldr	r1, [pc, #28]	; (55b0 <std+0x44>)
    5592:	4a08      	ldr	r2, [pc, #32]	; (55b4 <std+0x48>)
    5594:	4b08      	ldr	r3, [pc, #32]	; (55b8 <std+0x4c>)
    5596:	e9c4 4007 	strd	r4, r0, [r4, #28]
    559a:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
    559e:	62e3      	str	r3, [r4, #44]	; 0x2c
    55a0:	f104 0058 	add.w	r0, r4, #88	; 0x58
    55a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    55a8:	f000 bad4 	b.w	5b54 <__retarget_lock_init_recursive>
    55ac:	00006b3d 	.word	0x00006b3d
    55b0:	00006b65 	.word	0x00006b65
    55b4:	00006ba1 	.word	0x00006ba1
    55b8:	00006bc1 	.word	0x00006bc1

Disassembly of section .text._cleanup_r:

000055bc <_cleanup_r>:
    55bc:	4901      	ldr	r1, [pc, #4]	; (55c4 <_cleanup_r+0x8>)
    55be:	f000 ba81 	b.w	5ac4 <_fwalk_reent>
    55c2:	bf00      	nop
    55c4:	00007a71 	.word	0x00007a71

Disassembly of section .text.__fp_lock:

000055c8 <__fp_lock>:
    55c8:	b508      	push	{r3, lr}
    55ca:	6e43      	ldr	r3, [r0, #100]	; 0x64
    55cc:	07da      	lsls	r2, r3, #31
    55ce:	d402      	bmi.n	55d6 <__fp_lock+0xe>
    55d0:	8983      	ldrh	r3, [r0, #12]
    55d2:	059b      	lsls	r3, r3, #22
    55d4:	d501      	bpl.n	55da <__fp_lock+0x12>
    55d6:	2000      	movs	r0, #0
    55d8:	bd08      	pop	{r3, pc}
    55da:	6d80      	ldr	r0, [r0, #88]	; 0x58
    55dc:	f000 fac2 	bl	5b64 <__retarget_lock_acquire_recursive>
    55e0:	2000      	movs	r0, #0
    55e2:	bd08      	pop	{r3, pc}

Disassembly of section .text.__fp_unlock:

000055e4 <__fp_unlock>:
    55e4:	b508      	push	{r3, lr}
    55e6:	6e43      	ldr	r3, [r0, #100]	; 0x64
    55e8:	07da      	lsls	r2, r3, #31
    55ea:	d402      	bmi.n	55f2 <__fp_unlock+0xe>
    55ec:	8983      	ldrh	r3, [r0, #12]
    55ee:	059b      	lsls	r3, r3, #22
    55f0:	d501      	bpl.n	55f6 <__fp_unlock+0x12>
    55f2:	2000      	movs	r0, #0
    55f4:	bd08      	pop	{r3, pc}
    55f6:	6d80      	ldr	r0, [r0, #88]	; 0x58
    55f8:	f000 fabc 	bl	5b74 <__retarget_lock_release_recursive>
    55fc:	2000      	movs	r0, #0
    55fe:	bd08      	pop	{r3, pc}

Disassembly of section .text.__sfmoreglue:

00005600 <__sfmoreglue>:
    5600:	b570      	push	{r4, r5, r6, lr}
    5602:	2568      	movs	r5, #104	; 0x68
    5604:	1e4a      	subs	r2, r1, #1
    5606:	fb05 f502 	mul.w	r5, r5, r2
    560a:	460e      	mov	r6, r1
    560c:	f105 0174 	add.w	r1, r5, #116	; 0x74
    5610:	f000 fb2a 	bl	5c68 <_malloc_r>
    5614:	4604      	mov	r4, r0
    5616:	b140      	cbz	r0, 562a <__sfmoreglue+0x2a>
    5618:	2100      	movs	r1, #0
    561a:	300c      	adds	r0, #12
    561c:	6066      	str	r6, [r4, #4]
    561e:	f105 0268 	add.w	r2, r5, #104	; 0x68
    5622:	6021      	str	r1, [r4, #0]
    5624:	60a0      	str	r0, [r4, #8]
    5626:	f7fd fa35 	bl	2a94 <memset>
    562a:	4620      	mov	r0, r4
    562c:	bd70      	pop	{r4, r5, r6, pc}
    562e:	bf00      	nop

Disassembly of section .text._cleanup:

00005630 <_cleanup>:
    5630:	4b02      	ldr	r3, [pc, #8]	; (563c <_cleanup+0xc>)
    5632:	4903      	ldr	r1, [pc, #12]	; (5640 <_cleanup+0x10>)
    5634:	6818      	ldr	r0, [r3, #0]
    5636:	f000 ba45 	b.w	5ac4 <_fwalk_reent>
    563a:	bf00      	nop
    563c:	00008a10 	.word	0x00008a10
    5640:	00007a71 	.word	0x00007a71

Disassembly of section .text.__sinit:

00005644 <__sinit>:
    5644:	b510      	push	{r4, lr}
    5646:	4604      	mov	r4, r0
    5648:	4814      	ldr	r0, [pc, #80]	; (569c <__sinit+0x58>)
    564a:	f000 fa8b 	bl	5b64 <__retarget_lock_acquire_recursive>
    564e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
    5650:	b9fa      	cbnz	r2, 5692 <__sinit+0x4e>
    5652:	2003      	movs	r0, #3
    5654:	4912      	ldr	r1, [pc, #72]	; (56a0 <__sinit+0x5c>)
    5656:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
    565a:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
    565e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
    5662:	f8c4 02e4 	str.w	r0, [r4, #740]	; 0x2e4
    5666:	63e1      	str	r1, [r4, #60]	; 0x3c
    5668:	6860      	ldr	r0, [r4, #4]
    566a:	2104      	movs	r1, #4
    566c:	f7ff ff7e 	bl	556c <std>
    5670:	68a0      	ldr	r0, [r4, #8]
    5672:	2201      	movs	r2, #1
    5674:	2109      	movs	r1, #9
    5676:	f7ff ff79 	bl	556c <std>
    567a:	68e0      	ldr	r0, [r4, #12]
    567c:	2202      	movs	r2, #2
    567e:	2112      	movs	r1, #18
    5680:	f7ff ff74 	bl	556c <std>
    5684:	2301      	movs	r3, #1
    5686:	4805      	ldr	r0, [pc, #20]	; (569c <__sinit+0x58>)
    5688:	63a3      	str	r3, [r4, #56]	; 0x38
    568a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    568e:	f000 ba71 	b.w	5b74 <__retarget_lock_release_recursive>
    5692:	4802      	ldr	r0, [pc, #8]	; (569c <__sinit+0x58>)
    5694:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
    5698:	f000 ba6c 	b.w	5b74 <__retarget_lock_release_recursive>
    569c:	20000a10 	.word	0x20000a10
    56a0:	000055bd 	.word	0x000055bd

Disassembly of section .text.__sfp:

000056a4 <__sfp>:
    56a4:	b570      	push	{r4, r5, r6, lr}
    56a6:	4606      	mov	r6, r0
    56a8:	4824      	ldr	r0, [pc, #144]	; (573c <__sfp+0x98>)
    56aa:	f000 fa5b 	bl	5b64 <__retarget_lock_acquire_recursive>
    56ae:	4b24      	ldr	r3, [pc, #144]	; (5740 <__sfp+0x9c>)
    56b0:	681d      	ldr	r5, [r3, #0]
    56b2:	6bab      	ldr	r3, [r5, #56]	; 0x38
    56b4:	b383      	cbz	r3, 5718 <__sfp+0x74>
    56b6:	f505 7538 	add.w	r5, r5, #736	; 0x2e0
    56ba:	e9d5 3401 	ldrd	r3, r4, [r5, #4]
    56be:	3b01      	subs	r3, #1
    56c0:	d505      	bpl.n	56ce <__sfp+0x2a>
    56c2:	e025      	b.n	5710 <__sfp+0x6c>
    56c4:	3b01      	subs	r3, #1
    56c6:	1c5a      	adds	r2, r3, #1
    56c8:	f104 0468 	add.w	r4, r4, #104	; 0x68
    56cc:	d020      	beq.n	5710 <__sfp+0x6c>
    56ce:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    56d2:	2a00      	cmp	r2, #0
    56d4:	d1f6      	bne.n	56c4 <__sfp+0x20>
    56d6:	2500      	movs	r5, #0
    56d8:	4b1a      	ldr	r3, [pc, #104]	; (5744 <__sfp+0xa0>)
    56da:	f104 0058 	add.w	r0, r4, #88	; 0x58
    56de:	60e3      	str	r3, [r4, #12]
    56e0:	6665      	str	r5, [r4, #100]	; 0x64
    56e2:	f000 fa37 	bl	5b54 <__retarget_lock_init_recursive>
    56e6:	4815      	ldr	r0, [pc, #84]	; (573c <__sfp+0x98>)
    56e8:	f000 fa44 	bl	5b74 <__retarget_lock_release_recursive>
    56ec:	6025      	str	r5, [r4, #0]
    56ee:	e9c4 5501 	strd	r5, r5, [r4, #4]
    56f2:	e9c4 5504 	strd	r5, r5, [r4, #16]
    56f6:	61a5      	str	r5, [r4, #24]
    56f8:	4629      	mov	r1, r5
    56fa:	2208      	movs	r2, #8
    56fc:	f104 005c 	add.w	r0, r4, #92	; 0x5c
    5700:	f7fd f9c8 	bl	2a94 <memset>
    5704:	e9c4 550c 	strd	r5, r5, [r4, #48]	; 0x30
    5708:	e9c4 5511 	strd	r5, r5, [r4, #68]	; 0x44
    570c:	4620      	mov	r0, r4
    570e:	bd70      	pop	{r4, r5, r6, pc}
    5710:	682c      	ldr	r4, [r5, #0]
    5712:	b12c      	cbz	r4, 5720 <__sfp+0x7c>
    5714:	4625      	mov	r5, r4
    5716:	e7d0      	b.n	56ba <__sfp+0x16>
    5718:	4628      	mov	r0, r5
    571a:	f7ff ff93 	bl	5644 <__sinit>
    571e:	e7ca      	b.n	56b6 <__sfp+0x12>
    5720:	2104      	movs	r1, #4
    5722:	4630      	mov	r0, r6
    5724:	f7ff ff6c 	bl	5600 <__sfmoreglue>
    5728:	4604      	mov	r4, r0
    572a:	6028      	str	r0, [r5, #0]
    572c:	2800      	cmp	r0, #0
    572e:	d1f1      	bne.n	5714 <__sfp+0x70>
    5730:	4802      	ldr	r0, [pc, #8]	; (573c <__sfp+0x98>)
    5732:	f000 fa1f 	bl	5b74 <__retarget_lock_release_recursive>
    5736:	230c      	movs	r3, #12
    5738:	6033      	str	r3, [r6, #0]
    573a:	e7e7      	b.n	570c <__sfp+0x68>
    573c:	20000a24 	.word	0x20000a24
    5740:	00008a10 	.word	0x00008a10
    5744:	ffff0001 	.word	0xffff0001

Disassembly of section .text.__sfp_lock_acquire:

00005748 <__sfp_lock_acquire>:
    5748:	4801      	ldr	r0, [pc, #4]	; (5750 <__sfp_lock_acquire+0x8>)
    574a:	f000 ba0b 	b.w	5b64 <__retarget_lock_acquire_recursive>
    574e:	bf00      	nop
    5750:	20000a24 	.word	0x20000a24

Disassembly of section .text.__sfp_lock_release:

00005754 <__sfp_lock_release>:
    5754:	4801      	ldr	r0, [pc, #4]	; (575c <__sfp_lock_release+0x8>)
    5756:	f000 ba0d 	b.w	5b74 <__retarget_lock_release_recursive>
    575a:	bf00      	nop
    575c:	20000a24 	.word	0x20000a24

Disassembly of section .text.__sinit_lock_acquire:

00005760 <__sinit_lock_acquire>:
    5760:	4801      	ldr	r0, [pc, #4]	; (5768 <__sinit_lock_acquire+0x8>)
    5762:	f000 b9ff 	b.w	5b64 <__retarget_lock_acquire_recursive>
    5766:	bf00      	nop
    5768:	20000a10 	.word	0x20000a10

Disassembly of section .text.__sinit_lock_release:

0000576c <__sinit_lock_release>:
    576c:	4801      	ldr	r0, [pc, #4]	; (5774 <__sinit_lock_release+0x8>)
    576e:	f000 ba01 	b.w	5b74 <__retarget_lock_release_recursive>
    5772:	bf00      	nop
    5774:	20000a10 	.word	0x20000a10

Disassembly of section .text.__fp_lock_all:

00005778 <__fp_lock_all>:
    5778:	b508      	push	{r3, lr}
    577a:	4805      	ldr	r0, [pc, #20]	; (5790 <__fp_lock_all+0x18>)
    577c:	f000 f9f2 	bl	5b64 <__retarget_lock_acquire_recursive>
    5780:	4b04      	ldr	r3, [pc, #16]	; (5794 <__fp_lock_all+0x1c>)
    5782:	4905      	ldr	r1, [pc, #20]	; (5798 <__fp_lock_all+0x20>)
    5784:	6818      	ldr	r0, [r3, #0]
    5786:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    578a:	f000 b977 	b.w	5a7c <_fwalk>
    578e:	bf00      	nop
    5790:	20000a24 	.word	0x20000a24
    5794:	20000010 	.word	0x20000010
    5798:	000055c9 	.word	0x000055c9

Disassembly of section .text.__fp_unlock_all:

0000579c <__fp_unlock_all>:
    579c:	b508      	push	{r3, lr}
    579e:	4b05      	ldr	r3, [pc, #20]	; (57b4 <__fp_unlock_all+0x18>)
    57a0:	4905      	ldr	r1, [pc, #20]	; (57b8 <__fp_unlock_all+0x1c>)
    57a2:	6818      	ldr	r0, [r3, #0]
    57a4:	f000 f96a 	bl	5a7c <_fwalk>
    57a8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
    57ac:	4803      	ldr	r0, [pc, #12]	; (57bc <__fp_unlock_all+0x20>)
    57ae:	f000 b9e1 	b.w	5b74 <__retarget_lock_release_recursive>
    57b2:	bf00      	nop
    57b4:	20000010 	.word	0x20000010
    57b8:	000055e5 	.word	0x000055e5
    57bc:	20000a24 	.word	0x20000a24

Disassembly of section .text.__libc_fini_array:

000057c0 <__libc_fini_array>:
    57c0:	b538      	push	{r3, r4, r5, lr}
    57c2:	4c0a      	ldr	r4, [pc, #40]	; (57ec <__libc_fini_array+0x2c>)
    57c4:	4d0a      	ldr	r5, [pc, #40]	; (57f0 <__libc_fini_array+0x30>)
    57c6:	1b64      	subs	r4, r4, r5
    57c8:	10a4      	asrs	r4, r4, #2
    57ca:	d00a      	beq.n	57e2 <__libc_fini_array+0x22>
    57cc:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
    57d0:	3b01      	subs	r3, #1
    57d2:	eb05 0583 	add.w	r5, r5, r3, lsl #2
    57d6:	3c01      	subs	r4, #1
    57d8:	f855 3904 	ldr.w	r3, [r5], #-4
    57dc:	4798      	blx	r3
    57de:	2c00      	cmp	r4, #0
    57e0:	d1f9      	bne.n	57d6 <__libc_fini_array+0x16>
    57e2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    57e6:	f7fd b913 	b.w	2a10 <_fini>
    57ea:	bf00      	nop
	...

Disassembly of section .text._malloc_trim_r:

000057f4 <_malloc_trim_r>:
    57f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    57f6:	460c      	mov	r4, r1
    57f8:	4f23      	ldr	r7, [pc, #140]	; (5888 <_malloc_trim_r+0x94>)
    57fa:	4606      	mov	r6, r0
    57fc:	f000 fd0c 	bl	6218 <__malloc_lock>
    5800:	68bb      	ldr	r3, [r7, #8]
    5802:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
    5806:	685d      	ldr	r5, [r3, #4]
    5808:	310f      	adds	r1, #15
    580a:	f025 0503 	bic.w	r5, r5, #3
    580e:	4429      	add	r1, r5
    5810:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
    5814:	f021 010f 	bic.w	r1, r1, #15
    5818:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
    581c:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
    5820:	db07      	blt.n	5832 <_malloc_trim_r+0x3e>
    5822:	2100      	movs	r1, #0
    5824:	4630      	mov	r0, r6
    5826:	f001 f977 	bl	6b18 <_sbrk_r>
    582a:	68bb      	ldr	r3, [r7, #8]
    582c:	442b      	add	r3, r5
    582e:	4298      	cmp	r0, r3
    5830:	d004      	beq.n	583c <_malloc_trim_r+0x48>
    5832:	4630      	mov	r0, r6
    5834:	f000 fcf6 	bl	6224 <__malloc_unlock>
    5838:	2000      	movs	r0, #0
    583a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    583c:	4261      	negs	r1, r4
    583e:	4630      	mov	r0, r6
    5840:	f001 f96a 	bl	6b18 <_sbrk_r>
    5844:	3001      	adds	r0, #1
    5846:	d00d      	beq.n	5864 <_malloc_trim_r+0x70>
    5848:	4b10      	ldr	r3, [pc, #64]	; (588c <_malloc_trim_r+0x98>)
    584a:	68ba      	ldr	r2, [r7, #8]
    584c:	6819      	ldr	r1, [r3, #0]
    584e:	1b2d      	subs	r5, r5, r4
    5850:	f045 0501 	orr.w	r5, r5, #1
    5854:	4630      	mov	r0, r6
    5856:	1b09      	subs	r1, r1, r4
    5858:	6055      	str	r5, [r2, #4]
    585a:	6019      	str	r1, [r3, #0]
    585c:	f000 fce2 	bl	6224 <__malloc_unlock>
    5860:	2001      	movs	r0, #1
    5862:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    5864:	2100      	movs	r1, #0
    5866:	4630      	mov	r0, r6
    5868:	f001 f956 	bl	6b18 <_sbrk_r>
    586c:	68ba      	ldr	r2, [r7, #8]
    586e:	1a83      	subs	r3, r0, r2
    5870:	2b0f      	cmp	r3, #15
    5872:	ddde      	ble.n	5832 <_malloc_trim_r+0x3e>
    5874:	4906      	ldr	r1, [pc, #24]	; (5890 <_malloc_trim_r+0x9c>)
    5876:	f043 0301 	orr.w	r3, r3, #1
    587a:	680c      	ldr	r4, [r1, #0]
    587c:	4903      	ldr	r1, [pc, #12]	; (588c <_malloc_trim_r+0x98>)
    587e:	1b00      	subs	r0, r0, r4
    5880:	6053      	str	r3, [r2, #4]
    5882:	6008      	str	r0, [r1, #0]
    5884:	e7d5      	b.n	5832 <_malloc_trim_r+0x3e>
    5886:	bf00      	nop
    5888:	20000448 	.word	0x20000448
    588c:	20005a30 	.word	0x20005a30
    5890:	20000850 	.word	0x20000850

Disassembly of section .text._free_r:

00005894 <_free_r>:
    5894:	2900      	cmp	r1, #0
    5896:	d053      	beq.n	5940 <_free_r+0xac>
    5898:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    589a:	460d      	mov	r5, r1
    589c:	4606      	mov	r6, r0
    589e:	f000 fcbb 	bl	6218 <__malloc_lock>
    58a2:	f855 cc04 	ldr.w	ip, [r5, #-4]
    58a6:	4f71      	ldr	r7, [pc, #452]	; (5a6c <_free_r+0x1d8>)
    58a8:	f1a5 0108 	sub.w	r1, r5, #8
    58ac:	f02c 0301 	bic.w	r3, ip, #1
    58b0:	18ca      	adds	r2, r1, r3
    58b2:	68b8      	ldr	r0, [r7, #8]
    58b4:	6854      	ldr	r4, [r2, #4]
    58b6:	4290      	cmp	r0, r2
    58b8:	f024 0403 	bic.w	r4, r4, #3
    58bc:	d053      	beq.n	5966 <_free_r+0xd2>
    58be:	f01c 0f01 	tst.w	ip, #1
    58c2:	6054      	str	r4, [r2, #4]
    58c4:	eb02 0004 	add.w	r0, r2, r4
    58c8:	d13b      	bne.n	5942 <_free_r+0xae>
    58ca:	f855 cc08 	ldr.w	ip, [r5, #-8]
    58ce:	6840      	ldr	r0, [r0, #4]
    58d0:	eba1 010c 	sub.w	r1, r1, ip
    58d4:	688d      	ldr	r5, [r1, #8]
    58d6:	f107 0e08 	add.w	lr, r7, #8
    58da:	4575      	cmp	r5, lr
    58dc:	4463      	add	r3, ip
    58de:	f000 0001 	and.w	r0, r0, #1
    58e2:	d075      	beq.n	59d0 <_free_r+0x13c>
    58e4:	f8d1 c00c 	ldr.w	ip, [r1, #12]
    58e8:	f8c5 c00c 	str.w	ip, [r5, #12]
    58ec:	f8cc 5008 	str.w	r5, [ip, #8]
    58f0:	b360      	cbz	r0, 594c <_free_r+0xb8>
    58f2:	f043 0201 	orr.w	r2, r3, #1
    58f6:	604a      	str	r2, [r1, #4]
    58f8:	50cb      	str	r3, [r1, r3]
    58fa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    58fe:	d350      	bcc.n	59a2 <_free_r+0x10e>
    5900:	0a5a      	lsrs	r2, r3, #9
    5902:	2a04      	cmp	r2, #4
    5904:	d870      	bhi.n	59e8 <_free_r+0x154>
    5906:	099a      	lsrs	r2, r3, #6
    5908:	f102 0539 	add.w	r5, r2, #57	; 0x39
    590c:	00ed      	lsls	r5, r5, #3
    590e:	f102 0038 	add.w	r0, r2, #56	; 0x38
    5912:	197c      	adds	r4, r7, r5
    5914:	597a      	ldr	r2, [r7, r5]
    5916:	3c08      	subs	r4, #8
    5918:	4294      	cmp	r4, r2
    591a:	d078      	beq.n	5a0e <_free_r+0x17a>
    591c:	6850      	ldr	r0, [r2, #4]
    591e:	f020 0003 	bic.w	r0, r0, #3
    5922:	4298      	cmp	r0, r3
    5924:	d971      	bls.n	5a0a <_free_r+0x176>
    5926:	6892      	ldr	r2, [r2, #8]
    5928:	4294      	cmp	r4, r2
    592a:	d1f7      	bne.n	591c <_free_r+0x88>
    592c:	68e3      	ldr	r3, [r4, #12]
    592e:	e9c1 4302 	strd	r4, r3, [r1, #8]
    5932:	4630      	mov	r0, r6
    5934:	6099      	str	r1, [r3, #8]
    5936:	60e1      	str	r1, [r4, #12]
    5938:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    593c:	f000 bc72 	b.w	6224 <__malloc_unlock>
    5940:	4770      	bx	lr
    5942:	6840      	ldr	r0, [r0, #4]
    5944:	f000 0001 	and.w	r0, r0, #1
    5948:	2800      	cmp	r0, #0
    594a:	d1d2      	bne.n	58f2 <_free_r+0x5e>
    594c:	6890      	ldr	r0, [r2, #8]
    594e:	4d48      	ldr	r5, [pc, #288]	; (5a70 <_free_r+0x1dc>)
    5950:	4423      	add	r3, r4
    5952:	42a8      	cmp	r0, r5
    5954:	f043 0401 	orr.w	r4, r3, #1
    5958:	d062      	beq.n	5a20 <_free_r+0x18c>
    595a:	68d2      	ldr	r2, [r2, #12]
    595c:	60c2      	str	r2, [r0, #12]
    595e:	6090      	str	r0, [r2, #8]
    5960:	604c      	str	r4, [r1, #4]
    5962:	50cb      	str	r3, [r1, r3]
    5964:	e7c9      	b.n	58fa <_free_r+0x66>
    5966:	f01c 0f01 	tst.w	ip, #1
    596a:	4423      	add	r3, r4
    596c:	d107      	bne.n	597e <_free_r+0xea>
    596e:	f855 4c08 	ldr.w	r4, [r5, #-8]
    5972:	1b09      	subs	r1, r1, r4
    5974:	e9d1 0202 	ldrd	r0, r2, [r1, #8]
    5978:	4423      	add	r3, r4
    597a:	60c2      	str	r2, [r0, #12]
    597c:	6090      	str	r0, [r2, #8]
    597e:	4a3d      	ldr	r2, [pc, #244]	; (5a74 <_free_r+0x1e0>)
    5980:	f043 0001 	orr.w	r0, r3, #1
    5984:	6812      	ldr	r2, [r2, #0]
    5986:	6048      	str	r0, [r1, #4]
    5988:	429a      	cmp	r2, r3
    598a:	60b9      	str	r1, [r7, #8]
    598c:	d804      	bhi.n	5998 <_free_r+0x104>
    598e:	4b3a      	ldr	r3, [pc, #232]	; (5a78 <_free_r+0x1e4>)
    5990:	4630      	mov	r0, r6
    5992:	6819      	ldr	r1, [r3, #0]
    5994:	f7ff ff2e 	bl	57f4 <_malloc_trim_r>
    5998:	4630      	mov	r0, r6
    599a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    599e:	f000 bc41 	b.w	6224 <__malloc_unlock>
    59a2:	2201      	movs	r2, #1
    59a4:	08db      	lsrs	r3, r3, #3
    59a6:	687c      	ldr	r4, [r7, #4]
    59a8:	1098      	asrs	r0, r3, #2
    59aa:	4413      	add	r3, r2
    59ac:	4082      	lsls	r2, r0
    59ae:	4322      	orrs	r2, r4
    59b0:	eb07 00c3 	add.w	r0, r7, r3, lsl #3
    59b4:	f857 4033 	ldr.w	r4, [r7, r3, lsl #3]
    59b8:	3808      	subs	r0, #8
    59ba:	e9c1 4002 	strd	r4, r0, [r1, #8]
    59be:	607a      	str	r2, [r7, #4]
    59c0:	4630      	mov	r0, r6
    59c2:	f847 1033 	str.w	r1, [r7, r3, lsl #3]
    59c6:	60e1      	str	r1, [r4, #12]
    59c8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
    59cc:	f000 bc2a 	b.w	6224 <__malloc_unlock>
    59d0:	2800      	cmp	r0, #0
    59d2:	d145      	bne.n	5a60 <_free_r+0x1cc>
    59d4:	e9d2 0202 	ldrd	r0, r2, [r2, #8]
    59d8:	4423      	add	r3, r4
    59da:	f043 0401 	orr.w	r4, r3, #1
    59de:	60c2      	str	r2, [r0, #12]
    59e0:	6090      	str	r0, [r2, #8]
    59e2:	604c      	str	r4, [r1, #4]
    59e4:	50cb      	str	r3, [r1, r3]
    59e6:	e7d7      	b.n	5998 <_free_r+0x104>
    59e8:	2a14      	cmp	r2, #20
    59ea:	d908      	bls.n	59fe <_free_r+0x16a>
    59ec:	2a54      	cmp	r2, #84	; 0x54
    59ee:	d81e      	bhi.n	5a2e <_free_r+0x19a>
    59f0:	0b1a      	lsrs	r2, r3, #12
    59f2:	f102 056f 	add.w	r5, r2, #111	; 0x6f
    59f6:	00ed      	lsls	r5, r5, #3
    59f8:	f102 006e 	add.w	r0, r2, #110	; 0x6e
    59fc:	e789      	b.n	5912 <_free_r+0x7e>
    59fe:	f102 055c 	add.w	r5, r2, #92	; 0x5c
    5a02:	00ed      	lsls	r5, r5, #3
    5a04:	f102 005b 	add.w	r0, r2, #91	; 0x5b
    5a08:	e783      	b.n	5912 <_free_r+0x7e>
    5a0a:	4614      	mov	r4, r2
    5a0c:	e78e      	b.n	592c <_free_r+0x98>
    5a0e:	2301      	movs	r3, #1
    5a10:	1082      	asrs	r2, r0, #2
    5a12:	6878      	ldr	r0, [r7, #4]
    5a14:	fa03 f202 	lsl.w	r2, r3, r2
    5a18:	4302      	orrs	r2, r0
    5a1a:	607a      	str	r2, [r7, #4]
    5a1c:	4623      	mov	r3, r4
    5a1e:	e786      	b.n	592e <_free_r+0x9a>
    5a20:	e9c7 1104 	strd	r1, r1, [r7, #16]
    5a24:	e9c1 0002 	strd	r0, r0, [r1, #8]
    5a28:	604c      	str	r4, [r1, #4]
    5a2a:	50cb      	str	r3, [r1, r3]
    5a2c:	e7b4      	b.n	5998 <_free_r+0x104>
    5a2e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
    5a32:	d806      	bhi.n	5a42 <_free_r+0x1ae>
    5a34:	0bda      	lsrs	r2, r3, #15
    5a36:	f102 0578 	add.w	r5, r2, #120	; 0x78
    5a3a:	00ed      	lsls	r5, r5, #3
    5a3c:	f102 0077 	add.w	r0, r2, #119	; 0x77
    5a40:	e767      	b.n	5912 <_free_r+0x7e>
    5a42:	f240 5054 	movw	r0, #1364	; 0x554
    5a46:	4282      	cmp	r2, r0
    5a48:	d806      	bhi.n	5a58 <_free_r+0x1c4>
    5a4a:	0c9a      	lsrs	r2, r3, #18
    5a4c:	f102 057d 	add.w	r5, r2, #125	; 0x7d
    5a50:	00ed      	lsls	r5, r5, #3
    5a52:	f102 007c 	add.w	r0, r2, #124	; 0x7c
    5a56:	e75c      	b.n	5912 <_free_r+0x7e>
    5a58:	f44f 757e 	mov.w	r5, #1016	; 0x3f8
    5a5c:	207e      	movs	r0, #126	; 0x7e
    5a5e:	e758      	b.n	5912 <_free_r+0x7e>
    5a60:	f043 0001 	orr.w	r0, r3, #1
    5a64:	6048      	str	r0, [r1, #4]
    5a66:	6013      	str	r3, [r2, #0]
    5a68:	e796      	b.n	5998 <_free_r+0x104>
    5a6a:	bf00      	nop
    5a6c:	20000448 	.word	0x20000448
    5a70:	20000450 	.word	0x20000450
    5a74:	20000854 	.word	0x20000854
    5a78:	20005a60 	.word	0x20005a60

Disassembly of section .text._fwalk:

00005a7c <_fwalk>:
    5a7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    5a80:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
    5a84:	d01a      	beq.n	5abc <_fwalk+0x40>
    5a86:	4688      	mov	r8, r1
    5a88:	2600      	movs	r6, #0
    5a8a:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
    5a8e:	3d01      	subs	r5, #1
    5a90:	d40e      	bmi.n	5ab0 <_fwalk+0x34>
    5a92:	89a3      	ldrh	r3, [r4, #12]
    5a94:	3d01      	subs	r5, #1
    5a96:	2b01      	cmp	r3, #1
    5a98:	d906      	bls.n	5aa8 <_fwalk+0x2c>
    5a9a:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
    5a9e:	3301      	adds	r3, #1
    5aa0:	d002      	beq.n	5aa8 <_fwalk+0x2c>
    5aa2:	4620      	mov	r0, r4
    5aa4:	47c0      	blx	r8
    5aa6:	4306      	orrs	r6, r0
    5aa8:	1c6b      	adds	r3, r5, #1
    5aaa:	f104 0468 	add.w	r4, r4, #104	; 0x68
    5aae:	d1f0      	bne.n	5a92 <_fwalk+0x16>
    5ab0:	683f      	ldr	r7, [r7, #0]
    5ab2:	2f00      	cmp	r7, #0
    5ab4:	d1e9      	bne.n	5a8a <_fwalk+0xe>
    5ab6:	4630      	mov	r0, r6
    5ab8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    5abc:	463e      	mov	r6, r7
    5abe:	4630      	mov	r0, r6
    5ac0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

Disassembly of section .text._fwalk_reent:

00005ac4 <_fwalk_reent>:
    5ac4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    5ac8:	f510 7638 	adds.w	r6, r0, #736	; 0x2e0
    5acc:	d01e      	beq.n	5b0c <_fwalk_reent+0x48>
    5ace:	4688      	mov	r8, r1
    5ad0:	4607      	mov	r7, r0
    5ad2:	f04f 0900 	mov.w	r9, #0
    5ad6:	e9d6 5401 	ldrd	r5, r4, [r6, #4]
    5ada:	3d01      	subs	r5, #1
    5adc:	d410      	bmi.n	5b00 <_fwalk_reent+0x3c>
    5ade:	89a3      	ldrh	r3, [r4, #12]
    5ae0:	3d01      	subs	r5, #1
    5ae2:	2b01      	cmp	r3, #1
    5ae4:	d908      	bls.n	5af8 <_fwalk_reent+0x34>
    5ae6:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
    5aea:	3301      	adds	r3, #1
    5aec:	d004      	beq.n	5af8 <_fwalk_reent+0x34>
    5aee:	4621      	mov	r1, r4
    5af0:	4638      	mov	r0, r7
    5af2:	47c0      	blx	r8
    5af4:	ea49 0900 	orr.w	r9, r9, r0
    5af8:	1c6b      	adds	r3, r5, #1
    5afa:	f104 0468 	add.w	r4, r4, #104	; 0x68
    5afe:	d1ee      	bne.n	5ade <_fwalk_reent+0x1a>
    5b00:	6836      	ldr	r6, [r6, #0]
    5b02:	2e00      	cmp	r6, #0
    5b04:	d1e7      	bne.n	5ad6 <_fwalk_reent+0x12>
    5b06:	4648      	mov	r0, r9
    5b08:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    5b0c:	46b1      	mov	r9, r6
    5b0e:	4648      	mov	r0, r9
    5b10:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text.__localeconv_l:

00005b14 <__localeconv_l>:
    5b14:	30f0      	adds	r0, #240	; 0xf0
    5b16:	4770      	bx	lr

Disassembly of section .text._localeconv_r:

00005b18 <_localeconv_r>:
    5b18:	4a04      	ldr	r2, [pc, #16]	; (5b2c <_localeconv_r+0x14>)
    5b1a:	4b05      	ldr	r3, [pc, #20]	; (5b30 <_localeconv_r+0x18>)
    5b1c:	6812      	ldr	r2, [r2, #0]
    5b1e:	6b50      	ldr	r0, [r2, #52]	; 0x34
    5b20:	2800      	cmp	r0, #0
    5b22:	bf08      	it	eq
    5b24:	4618      	moveq	r0, r3
    5b26:	30f0      	adds	r0, #240	; 0xf0
    5b28:	4770      	bx	lr
    5b2a:	bf00      	nop
    5b2c:	20000010 	.word	0x20000010
    5b30:	20000858 	.word	0x20000858

Disassembly of section .text.localeconv:

00005b34 <localeconv>:
    5b34:	4a04      	ldr	r2, [pc, #16]	; (5b48 <localeconv+0x14>)
    5b36:	4b05      	ldr	r3, [pc, #20]	; (5b4c <localeconv+0x18>)
    5b38:	6812      	ldr	r2, [r2, #0]
    5b3a:	6b50      	ldr	r0, [r2, #52]	; 0x34
    5b3c:	2800      	cmp	r0, #0
    5b3e:	bf08      	it	eq
    5b40:	4618      	moveq	r0, r3
    5b42:	30f0      	adds	r0, #240	; 0xf0
    5b44:	4770      	bx	lr
    5b46:	bf00      	nop
    5b48:	20000010 	.word	0x20000010
    5b4c:	20000858 	.word	0x20000858

Disassembly of section .text.__retarget_lock_init:

00005b50 <__retarget_lock_init>:
    5b50:	4770      	bx	lr
    5b52:	bf00      	nop

Disassembly of section .text.__retarget_lock_init_recursive:

00005b54 <__retarget_lock_init_recursive>:
    5b54:	4770      	bx	lr
    5b56:	bf00      	nop

Disassembly of section .text.__retarget_lock_close:

00005b58 <__retarget_lock_close>:
    5b58:	4770      	bx	lr
    5b5a:	bf00      	nop

Disassembly of section .text.__retarget_lock_close_recursive:

00005b5c <__retarget_lock_close_recursive>:
    5b5c:	4770      	bx	lr
    5b5e:	bf00      	nop

Disassembly of section .text.__retarget_lock_acquire:

00005b60 <__retarget_lock_acquire>:
    5b60:	4770      	bx	lr
    5b62:	bf00      	nop

Disassembly of section .text.__retarget_lock_acquire_recursive:

00005b64 <__retarget_lock_acquire_recursive>:
    5b64:	4770      	bx	lr
    5b66:	bf00      	nop

Disassembly of section .text.__retarget_lock_try_acquire:

00005b68 <__retarget_lock_try_acquire>:
    5b68:	2001      	movs	r0, #1
    5b6a:	4770      	bx	lr

Disassembly of section .text.__retarget_lock_try_acquire_recursive:

00005b6c <__retarget_lock_try_acquire_recursive>:
    5b6c:	2001      	movs	r0, #1
    5b6e:	4770      	bx	lr

Disassembly of section .text.__retarget_lock_release:

00005b70 <__retarget_lock_release>:
    5b70:	4770      	bx	lr
    5b72:	bf00      	nop

Disassembly of section .text.__retarget_lock_release_recursive:

00005b74 <__retarget_lock_release_recursive>:
    5b74:	4770      	bx	lr
    5b76:	bf00      	nop

Disassembly of section .text.__swhatbuf_r:

00005b78 <__swhatbuf_r>:
    5b78:	b570      	push	{r4, r5, r6, lr}
    5b7a:	460c      	mov	r4, r1
    5b7c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    5b80:	b096      	sub	sp, #88	; 0x58
    5b82:	2900      	cmp	r1, #0
    5b84:	4615      	mov	r5, r2
    5b86:	461e      	mov	r6, r3
    5b88:	da0f      	bge.n	5baa <__swhatbuf_r+0x32>
    5b8a:	2300      	movs	r3, #0
    5b8c:	89a2      	ldrh	r2, [r4, #12]
    5b8e:	6033      	str	r3, [r6, #0]
    5b90:	f012 0080 	ands.w	r0, r2, #128	; 0x80
    5b94:	d104      	bne.n	5ba0 <__swhatbuf_r+0x28>
    5b96:	f44f 6380 	mov.w	r3, #1024	; 0x400
    5b9a:	602b      	str	r3, [r5, #0]
    5b9c:	b016      	add	sp, #88	; 0x58
    5b9e:	bd70      	pop	{r4, r5, r6, pc}
    5ba0:	2240      	movs	r2, #64	; 0x40
    5ba2:	4618      	mov	r0, r3
    5ba4:	602a      	str	r2, [r5, #0]
    5ba6:	b016      	add	sp, #88	; 0x58
    5ba8:	bd70      	pop	{r4, r5, r6, pc}
    5baa:	466a      	mov	r2, sp
    5bac:	f002 f868 	bl	7c80 <_fstat_r>
    5bb0:	2800      	cmp	r0, #0
    5bb2:	dbea      	blt.n	5b8a <__swhatbuf_r+0x12>
    5bb4:	9b01      	ldr	r3, [sp, #4]
    5bb6:	f44f 6280 	mov.w	r2, #1024	; 0x400
    5bba:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
    5bbe:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
    5bc2:	fab3 f383 	clz	r3, r3
    5bc6:	f44f 6000 	mov.w	r0, #2048	; 0x800
    5bca:	095b      	lsrs	r3, r3, #5
    5bcc:	6033      	str	r3, [r6, #0]
    5bce:	602a      	str	r2, [r5, #0]
    5bd0:	b016      	add	sp, #88	; 0x58
    5bd2:	bd70      	pop	{r4, r5, r6, pc}

Disassembly of section .text.__smakebuf_r:

00005bd4 <__smakebuf_r>:
    5bd4:	898a      	ldrh	r2, [r1, #12]
    5bd6:	460b      	mov	r3, r1
    5bd8:	0792      	lsls	r2, r2, #30
    5bda:	d506      	bpl.n	5bea <__smakebuf_r+0x16>
    5bdc:	2101      	movs	r1, #1
    5bde:	f103 0243 	add.w	r2, r3, #67	; 0x43
    5be2:	6159      	str	r1, [r3, #20]
    5be4:	601a      	str	r2, [r3, #0]
    5be6:	611a      	str	r2, [r3, #16]
    5be8:	4770      	bx	lr
    5bea:	b570      	push	{r4, r5, r6, lr}
    5bec:	b082      	sub	sp, #8
    5bee:	ab01      	add	r3, sp, #4
    5bf0:	466a      	mov	r2, sp
    5bf2:	460c      	mov	r4, r1
    5bf4:	4605      	mov	r5, r0
    5bf6:	f7ff ffbf 	bl	5b78 <__swhatbuf_r>
    5bfa:	9900      	ldr	r1, [sp, #0]
    5bfc:	4606      	mov	r6, r0
    5bfe:	4628      	mov	r0, r5
    5c00:	f000 f832 	bl	5c68 <_malloc_r>
    5c04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    5c08:	b1d8      	cbz	r0, 5c42 <__smakebuf_r+0x6e>
    5c0a:	4a16      	ldr	r2, [pc, #88]	; (5c64 <__smakebuf_r+0x90>)
    5c0c:	9900      	ldr	r1, [sp, #0]
    5c0e:	63ea      	str	r2, [r5, #60]	; 0x3c
    5c10:	9a01      	ldr	r2, [sp, #4]
    5c12:	f043 0380 	orr.w	r3, r3, #128	; 0x80
    5c16:	81a3      	strh	r3, [r4, #12]
    5c18:	6020      	str	r0, [r4, #0]
    5c1a:	e9c4 0104 	strd	r0, r1, [r4, #16]
    5c1e:	b91a      	cbnz	r2, 5c28 <__smakebuf_r+0x54>
    5c20:	4333      	orrs	r3, r6
    5c22:	81a3      	strh	r3, [r4, #12]
    5c24:	b002      	add	sp, #8
    5c26:	bd70      	pop	{r4, r5, r6, pc}
    5c28:	4628      	mov	r0, r5
    5c2a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
    5c2e:	f002 f9b5 	bl	7f9c <_isatty_r>
    5c32:	b1a0      	cbz	r0, 5c5e <__smakebuf_r+0x8a>
    5c34:	89a3      	ldrh	r3, [r4, #12]
    5c36:	f023 0303 	bic.w	r3, r3, #3
    5c3a:	f043 0301 	orr.w	r3, r3, #1
    5c3e:	b21b      	sxth	r3, r3
    5c40:	e7ee      	b.n	5c20 <__smakebuf_r+0x4c>
    5c42:	059a      	lsls	r2, r3, #22
    5c44:	d4ee      	bmi.n	5c24 <__smakebuf_r+0x50>
    5c46:	2101      	movs	r1, #1
    5c48:	f023 0303 	bic.w	r3, r3, #3
    5c4c:	f104 0243 	add.w	r2, r4, #67	; 0x43
    5c50:	f043 0302 	orr.w	r3, r3, #2
    5c54:	81a3      	strh	r3, [r4, #12]
    5c56:	6161      	str	r1, [r4, #20]
    5c58:	6022      	str	r2, [r4, #0]
    5c5a:	6122      	str	r2, [r4, #16]
    5c5c:	e7e2      	b.n	5c24 <__smakebuf_r+0x50>
    5c5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    5c62:	e7dd      	b.n	5c20 <__smakebuf_r+0x4c>
    5c64:	000055bd 	.word	0x000055bd

Disassembly of section .text._malloc_r:

00005c68 <_malloc_r>:
    5c68:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    5c6c:	f101 050b 	add.w	r5, r1, #11
    5c70:	2d16      	cmp	r5, #22
    5c72:	b083      	sub	sp, #12
    5c74:	4606      	mov	r6, r0
    5c76:	d823      	bhi.n	5cc0 <_malloc_r+0x58>
    5c78:	2910      	cmp	r1, #16
    5c7a:	f200 80b6 	bhi.w	5dea <_malloc_r+0x182>
    5c7e:	f000 facb 	bl	6218 <__malloc_lock>
    5c82:	2510      	movs	r5, #16
    5c84:	2318      	movs	r3, #24
    5c86:	2002      	movs	r0, #2
    5c88:	4fcc      	ldr	r7, [pc, #816]	; (5fbc <_malloc_r+0x354>)
    5c8a:	443b      	add	r3, r7
    5c8c:	685c      	ldr	r4, [r3, #4]
    5c8e:	f1a3 0208 	sub.w	r2, r3, #8
    5c92:	4294      	cmp	r4, r2
    5c94:	f000 8156 	beq.w	5f44 <_malloc_r+0x2dc>
    5c98:	6863      	ldr	r3, [r4, #4]
    5c9a:	68e1      	ldr	r1, [r4, #12]
    5c9c:	f023 0303 	bic.w	r3, r3, #3
    5ca0:	4423      	add	r3, r4
    5ca2:	685a      	ldr	r2, [r3, #4]
    5ca4:	68a5      	ldr	r5, [r4, #8]
    5ca6:	f042 0201 	orr.w	r2, r2, #1
    5caa:	60e9      	str	r1, [r5, #12]
    5cac:	4630      	mov	r0, r6
    5cae:	608d      	str	r5, [r1, #8]
    5cb0:	605a      	str	r2, [r3, #4]
    5cb2:	f000 fab7 	bl	6224 <__malloc_unlock>
    5cb6:	3408      	adds	r4, #8
    5cb8:	4620      	mov	r0, r4
    5cba:	b003      	add	sp, #12
    5cbc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    5cc0:	f035 0507 	bics.w	r5, r5, #7
    5cc4:	f100 8091 	bmi.w	5dea <_malloc_r+0x182>
    5cc8:	42a9      	cmp	r1, r5
    5cca:	f200 808e 	bhi.w	5dea <_malloc_r+0x182>
    5cce:	f000 faa3 	bl	6218 <__malloc_lock>
    5cd2:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
    5cd6:	f0c0 8164 	bcc.w	5fa2 <_malloc_r+0x33a>
    5cda:	0a6b      	lsrs	r3, r5, #9
    5cdc:	f000 808c 	beq.w	5df8 <_malloc_r+0x190>
    5ce0:	2b04      	cmp	r3, #4
    5ce2:	f200 8136 	bhi.w	5f52 <_malloc_r+0x2ea>
    5ce6:	09ab      	lsrs	r3, r5, #6
    5ce8:	f103 0039 	add.w	r0, r3, #57	; 0x39
    5cec:	f103 0c38 	add.w	ip, r3, #56	; 0x38
    5cf0:	00c1      	lsls	r1, r0, #3
    5cf2:	4fb2      	ldr	r7, [pc, #712]	; (5fbc <_malloc_r+0x354>)
    5cf4:	4439      	add	r1, r7
    5cf6:	684c      	ldr	r4, [r1, #4]
    5cf8:	3908      	subs	r1, #8
    5cfa:	42a1      	cmp	r1, r4
    5cfc:	d106      	bne.n	5d0c <_malloc_r+0xa4>
    5cfe:	e00c      	b.n	5d1a <_malloc_r+0xb2>
    5d00:	2a00      	cmp	r2, #0
    5d02:	f280 811b 	bge.w	5f3c <_malloc_r+0x2d4>
    5d06:	68e4      	ldr	r4, [r4, #12]
    5d08:	42a1      	cmp	r1, r4
    5d0a:	d006      	beq.n	5d1a <_malloc_r+0xb2>
    5d0c:	6863      	ldr	r3, [r4, #4]
    5d0e:	f023 0303 	bic.w	r3, r3, #3
    5d12:	1b5a      	subs	r2, r3, r5
    5d14:	2a0f      	cmp	r2, #15
    5d16:	ddf3      	ble.n	5d00 <_malloc_r+0x98>
    5d18:	4660      	mov	r0, ip
    5d1a:	693c      	ldr	r4, [r7, #16]
    5d1c:	f8df c2b0 	ldr.w	ip, [pc, #688]	; 5fd0 <_malloc_r+0x368>
    5d20:	4564      	cmp	r4, ip
    5d22:	d06f      	beq.n	5e04 <_malloc_r+0x19c>
    5d24:	6863      	ldr	r3, [r4, #4]
    5d26:	f023 0303 	bic.w	r3, r3, #3
    5d2a:	1b5a      	subs	r2, r3, r5
    5d2c:	2a0f      	cmp	r2, #15
    5d2e:	f300 8126 	bgt.w	5f7e <_malloc_r+0x316>
    5d32:	2a00      	cmp	r2, #0
    5d34:	e9c7 cc04 	strd	ip, ip, [r7, #16]
    5d38:	f280 8117 	bge.w	5f6a <_malloc_r+0x302>
    5d3c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
    5d40:	f080 8159 	bcs.w	5ff6 <_malloc_r+0x38e>
    5d44:	2201      	movs	r2, #1
    5d46:	08db      	lsrs	r3, r3, #3
    5d48:	1099      	asrs	r1, r3, #2
    5d4a:	4413      	add	r3, r2
    5d4c:	408a      	lsls	r2, r1
    5d4e:	6879      	ldr	r1, [r7, #4]
    5d50:	f857 e033 	ldr.w	lr, [r7, r3, lsl #3]
    5d54:	eb07 08c3 	add.w	r8, r7, r3, lsl #3
    5d58:	430a      	orrs	r2, r1
    5d5a:	f1a8 0108 	sub.w	r1, r8, #8
    5d5e:	e9c4 e102 	strd	lr, r1, [r4, #8]
    5d62:	607a      	str	r2, [r7, #4]
    5d64:	f847 4033 	str.w	r4, [r7, r3, lsl #3]
    5d68:	f8ce 400c 	str.w	r4, [lr, #12]
    5d6c:	2401      	movs	r4, #1
    5d6e:	1083      	asrs	r3, r0, #2
    5d70:	409c      	lsls	r4, r3
    5d72:	4294      	cmp	r4, r2
    5d74:	d84c      	bhi.n	5e10 <_malloc_r+0x1a8>
    5d76:	4214      	tst	r4, r2
    5d78:	d106      	bne.n	5d88 <_malloc_r+0x120>
    5d7a:	f020 0003 	bic.w	r0, r0, #3
    5d7e:	0064      	lsls	r4, r4, #1
    5d80:	4214      	tst	r4, r2
    5d82:	f100 0004 	add.w	r0, r0, #4
    5d86:	d0fa      	beq.n	5d7e <_malloc_r+0x116>
    5d88:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
    5d8c:	46ce      	mov	lr, r9
    5d8e:	4680      	mov	r8, r0
    5d90:	f8de 300c 	ldr.w	r3, [lr, #12]
    5d94:	459e      	cmp	lr, r3
    5d96:	d107      	bne.n	5da8 <_malloc_r+0x140>
    5d98:	e107      	b.n	5faa <_malloc_r+0x342>
    5d9a:	2a00      	cmp	r2, #0
    5d9c:	f280 811c 	bge.w	5fd8 <_malloc_r+0x370>
    5da0:	68db      	ldr	r3, [r3, #12]
    5da2:	459e      	cmp	lr, r3
    5da4:	f000 8101 	beq.w	5faa <_malloc_r+0x342>
    5da8:	6859      	ldr	r1, [r3, #4]
    5daa:	f021 0103 	bic.w	r1, r1, #3
    5dae:	1b4a      	subs	r2, r1, r5
    5db0:	2a0f      	cmp	r2, #15
    5db2:	ddf2      	ble.n	5d9a <_malloc_r+0x132>
    5db4:	f045 0801 	orr.w	r8, r5, #1
    5db8:	4630      	mov	r0, r6
    5dba:	e9d3 e402 	ldrd	lr, r4, [r3, #8]
    5dbe:	441d      	add	r5, r3
    5dc0:	f042 0601 	orr.w	r6, r2, #1
    5dc4:	f8c3 8004 	str.w	r8, [r3, #4]
    5dc8:	f8ce 400c 	str.w	r4, [lr, #12]
    5dcc:	f8c4 e008 	str.w	lr, [r4, #8]
    5dd0:	e9c7 5504 	strd	r5, r5, [r7, #16]
    5dd4:	e9c5 cc02 	strd	ip, ip, [r5, #8]
    5dd8:	606e      	str	r6, [r5, #4]
    5dda:	505a      	str	r2, [r3, r1]
    5ddc:	9301      	str	r3, [sp, #4]
    5dde:	f000 fa21 	bl	6224 <__malloc_unlock>
    5de2:	9b01      	ldr	r3, [sp, #4]
    5de4:	f103 0408 	add.w	r4, r3, #8
    5de8:	e766      	b.n	5cb8 <_malloc_r+0x50>
    5dea:	2400      	movs	r4, #0
    5dec:	230c      	movs	r3, #12
    5dee:	4620      	mov	r0, r4
    5df0:	6033      	str	r3, [r6, #0]
    5df2:	b003      	add	sp, #12
    5df4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    5df8:	f44f 7100 	mov.w	r1, #512	; 0x200
    5dfc:	2040      	movs	r0, #64	; 0x40
    5dfe:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
    5e02:	e776      	b.n	5cf2 <_malloc_r+0x8a>
    5e04:	2401      	movs	r4, #1
    5e06:	687a      	ldr	r2, [r7, #4]
    5e08:	1083      	asrs	r3, r0, #2
    5e0a:	409c      	lsls	r4, r3
    5e0c:	4294      	cmp	r4, r2
    5e0e:	d9b2      	bls.n	5d76 <_malloc_r+0x10e>
    5e10:	68bc      	ldr	r4, [r7, #8]
    5e12:	6863      	ldr	r3, [r4, #4]
    5e14:	f023 0903 	bic.w	r9, r3, #3
    5e18:	45a9      	cmp	r9, r5
    5e1a:	d303      	bcc.n	5e24 <_malloc_r+0x1bc>
    5e1c:	eba9 0305 	sub.w	r3, r9, r5
    5e20:	2b0f      	cmp	r3, #15
    5e22:	dc7b      	bgt.n	5f1c <_malloc_r+0x2b4>
    5e24:	4b66      	ldr	r3, [pc, #408]	; (5fc0 <_malloc_r+0x358>)
    5e26:	f8df a1ac 	ldr.w	sl, [pc, #428]	; 5fd4 <_malloc_r+0x36c>
    5e2a:	681a      	ldr	r2, [r3, #0]
    5e2c:	f8da 3000 	ldr.w	r3, [sl]
    5e30:	eb05 0802 	add.w	r8, r5, r2
    5e34:	3301      	adds	r3, #1
    5e36:	f000 813a 	beq.w	60ae <_malloc_r+0x446>
    5e3a:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
    5e3e:	f108 080f 	add.w	r8, r8, #15
    5e42:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
    5e46:	f028 080f 	bic.w	r8, r8, #15
    5e4a:	4641      	mov	r1, r8
    5e4c:	4630      	mov	r0, r6
    5e4e:	f000 fe63 	bl	6b18 <_sbrk_r>
    5e52:	f1b0 3fff 	cmp.w	r0, #4294967295
    5e56:	4683      	mov	fp, r0
    5e58:	f000 80f6 	beq.w	6048 <_malloc_r+0x3e0>
    5e5c:	eb04 0009 	add.w	r0, r4, r9
    5e60:	4558      	cmp	r0, fp
    5e62:	f200 80ef 	bhi.w	6044 <_malloc_r+0x3dc>
    5e66:	4a57      	ldr	r2, [pc, #348]	; (5fc4 <_malloc_r+0x35c>)
    5e68:	6813      	ldr	r3, [r2, #0]
    5e6a:	4443      	add	r3, r8
    5e6c:	6013      	str	r3, [r2, #0]
    5e6e:	f000 813f 	beq.w	60f0 <_malloc_r+0x488>
    5e72:	f8da 1000 	ldr.w	r1, [sl]
    5e76:	3101      	adds	r1, #1
    5e78:	bf1b      	ittet	ne
    5e7a:	ebab 0000 	subne.w	r0, fp, r0
    5e7e:	181b      	addne	r3, r3, r0
    5e80:	f8ca b000 	streq.w	fp, [sl]
    5e84:	6013      	strne	r3, [r2, #0]
    5e86:	f01b 0307 	ands.w	r3, fp, #7
    5e8a:	f000 8126 	beq.w	60da <_malloc_r+0x472>
    5e8e:	f1c3 0108 	rsb	r1, r3, #8
    5e92:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
    5e96:	448b      	add	fp, r1
    5e98:	3308      	adds	r3, #8
    5e9a:	44d8      	add	r8, fp
    5e9c:	f3c8 080b 	ubfx	r8, r8, #0, #12
    5ea0:	eba3 0808 	sub.w	r8, r3, r8
    5ea4:	4641      	mov	r1, r8
    5ea6:	4630      	mov	r0, r6
    5ea8:	9201      	str	r2, [sp, #4]
    5eaa:	f000 fe35 	bl	6b18 <_sbrk_r>
    5eae:	1c43      	adds	r3, r0, #1
    5eb0:	9a01      	ldr	r2, [sp, #4]
    5eb2:	f000 8138 	beq.w	6126 <_malloc_r+0x4be>
    5eb6:	eba0 010b 	sub.w	r1, r0, fp
    5eba:	4441      	add	r1, r8
    5ebc:	f041 0101 	orr.w	r1, r1, #1
    5ec0:	6813      	ldr	r3, [r2, #0]
    5ec2:	42bc      	cmp	r4, r7
    5ec4:	4443      	add	r3, r8
    5ec6:	f8c7 b008 	str.w	fp, [r7, #8]
    5eca:	6013      	str	r3, [r2, #0]
    5ecc:	f8cb 1004 	str.w	r1, [fp, #4]
    5ed0:	d015      	beq.n	5efe <_malloc_r+0x296>
    5ed2:	f1b9 0f0f 	cmp.w	r9, #15
    5ed6:	f240 8122 	bls.w	611e <_malloc_r+0x4b6>
    5eda:	f04f 0e05 	mov.w	lr, #5
    5ede:	6861      	ldr	r1, [r4, #4]
    5ee0:	f1a9 000c 	sub.w	r0, r9, #12
    5ee4:	f020 0007 	bic.w	r0, r0, #7
    5ee8:	f001 0101 	and.w	r1, r1, #1
    5eec:	4301      	orrs	r1, r0
    5eee:	eb04 0c00 	add.w	ip, r4, r0
    5ef2:	280f      	cmp	r0, #15
    5ef4:	6061      	str	r1, [r4, #4]
    5ef6:	e9cc ee01 	strd	lr, lr, [ip, #4]
    5efa:	f200 812c 	bhi.w	6156 <_malloc_r+0x4ee>
    5efe:	4a32      	ldr	r2, [pc, #200]	; (5fc8 <_malloc_r+0x360>)
    5f00:	4832      	ldr	r0, [pc, #200]	; (5fcc <_malloc_r+0x364>)
    5f02:	6811      	ldr	r1, [r2, #0]
    5f04:	68bc      	ldr	r4, [r7, #8]
    5f06:	428b      	cmp	r3, r1
    5f08:	6801      	ldr	r1, [r0, #0]
    5f0a:	bf88      	it	hi
    5f0c:	6013      	strhi	r3, [r2, #0]
    5f0e:	6862      	ldr	r2, [r4, #4]
    5f10:	428b      	cmp	r3, r1
    5f12:	f022 0203 	bic.w	r2, r2, #3
    5f16:	bf88      	it	hi
    5f18:	6003      	strhi	r3, [r0, #0]
    5f1a:	e099      	b.n	6050 <_malloc_r+0x3e8>
    5f1c:	f045 0201 	orr.w	r2, r5, #1
    5f20:	f043 0301 	orr.w	r3, r3, #1
    5f24:	4425      	add	r5, r4
    5f26:	6062      	str	r2, [r4, #4]
    5f28:	4630      	mov	r0, r6
    5f2a:	60bd      	str	r5, [r7, #8]
    5f2c:	3408      	adds	r4, #8
    5f2e:	606b      	str	r3, [r5, #4]
    5f30:	f000 f978 	bl	6224 <__malloc_unlock>
    5f34:	4620      	mov	r0, r4
    5f36:	b003      	add	sp, #12
    5f38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    5f3c:	4423      	add	r3, r4
    5f3e:	685a      	ldr	r2, [r3, #4]
    5f40:	68e1      	ldr	r1, [r4, #12]
    5f42:	e6af      	b.n	5ca4 <_malloc_r+0x3c>
    5f44:	68dc      	ldr	r4, [r3, #12]
    5f46:	42a3      	cmp	r3, r4
    5f48:	bf08      	it	eq
    5f4a:	3002      	addeq	r0, #2
    5f4c:	f43f aee5 	beq.w	5d1a <_malloc_r+0xb2>
    5f50:	e6a2      	b.n	5c98 <_malloc_r+0x30>
    5f52:	2b14      	cmp	r3, #20
    5f54:	d970      	bls.n	6038 <_malloc_r+0x3d0>
    5f56:	2b54      	cmp	r3, #84	; 0x54
    5f58:	f200 80ac 	bhi.w	60b4 <_malloc_r+0x44c>
    5f5c:	0b2b      	lsrs	r3, r5, #12
    5f5e:	f103 006f 	add.w	r0, r3, #111	; 0x6f
    5f62:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
    5f66:	00c1      	lsls	r1, r0, #3
    5f68:	e6c3      	b.n	5cf2 <_malloc_r+0x8a>
    5f6a:	4423      	add	r3, r4
    5f6c:	685a      	ldr	r2, [r3, #4]
    5f6e:	4630      	mov	r0, r6
    5f70:	f042 0201 	orr.w	r2, r2, #1
    5f74:	605a      	str	r2, [r3, #4]
    5f76:	3408      	adds	r4, #8
    5f78:	f000 f954 	bl	6224 <__malloc_unlock>
    5f7c:	e69c      	b.n	5cb8 <_malloc_r+0x50>
    5f7e:	f045 0e01 	orr.w	lr, r5, #1
    5f82:	f042 0101 	orr.w	r1, r2, #1
    5f86:	4425      	add	r5, r4
    5f88:	f8c4 e004 	str.w	lr, [r4, #4]
    5f8c:	4630      	mov	r0, r6
    5f8e:	e9c7 5504 	strd	r5, r5, [r7, #16]
    5f92:	e9c5 cc02 	strd	ip, ip, [r5, #8]
    5f96:	6069      	str	r1, [r5, #4]
    5f98:	50e2      	str	r2, [r4, r3]
    5f9a:	f000 f943 	bl	6224 <__malloc_unlock>
    5f9e:	3408      	adds	r4, #8
    5fa0:	e68a      	b.n	5cb8 <_malloc_r+0x50>
    5fa2:	08e8      	lsrs	r0, r5, #3
    5fa4:	f105 0308 	add.w	r3, r5, #8
    5fa8:	e66e      	b.n	5c88 <_malloc_r+0x20>
    5faa:	f108 0801 	add.w	r8, r8, #1
    5fae:	f018 0f03 	tst.w	r8, #3
    5fb2:	f10e 0e08 	add.w	lr, lr, #8
    5fb6:	f47f aeeb 	bne.w	5d90 <_malloc_r+0x128>
    5fba:	e060      	b.n	607e <_malloc_r+0x416>
    5fbc:	20000448 	.word	0x20000448
    5fc0:	20005a60 	.word	0x20005a60
    5fc4:	20005a30 	.word	0x20005a30
    5fc8:	20005a58 	.word	0x20005a58
    5fcc:	20005a5c 	.word	0x20005a5c
    5fd0:	20000450 	.word	0x20000450
    5fd4:	20000850 	.word	0x20000850
    5fd8:	461c      	mov	r4, r3
    5fda:	4419      	add	r1, r3
    5fdc:	684a      	ldr	r2, [r1, #4]
    5fde:	68db      	ldr	r3, [r3, #12]
    5fe0:	f854 5f08 	ldr.w	r5, [r4, #8]!
    5fe4:	f042 0201 	orr.w	r2, r2, #1
    5fe8:	604a      	str	r2, [r1, #4]
    5fea:	4630      	mov	r0, r6
    5fec:	60eb      	str	r3, [r5, #12]
    5fee:	609d      	str	r5, [r3, #8]
    5ff0:	f000 f918 	bl	6224 <__malloc_unlock>
    5ff4:	e660      	b.n	5cb8 <_malloc_r+0x50>
    5ff6:	0a5a      	lsrs	r2, r3, #9
    5ff8:	2a04      	cmp	r2, #4
    5ffa:	d935      	bls.n	6068 <_malloc_r+0x400>
    5ffc:	2a14      	cmp	r2, #20
    5ffe:	d86f      	bhi.n	60e0 <_malloc_r+0x478>
    6000:	f102 015c 	add.w	r1, r2, #92	; 0x5c
    6004:	00c9      	lsls	r1, r1, #3
    6006:	325b      	adds	r2, #91	; 0x5b
    6008:	eb07 0e01 	add.w	lr, r7, r1
    600c:	5879      	ldr	r1, [r7, r1]
    600e:	f1ae 0e08 	sub.w	lr, lr, #8
    6012:	458e      	cmp	lr, r1
    6014:	d058      	beq.n	60c8 <_malloc_r+0x460>
    6016:	684a      	ldr	r2, [r1, #4]
    6018:	f022 0203 	bic.w	r2, r2, #3
    601c:	429a      	cmp	r2, r3
    601e:	d902      	bls.n	6026 <_malloc_r+0x3be>
    6020:	6889      	ldr	r1, [r1, #8]
    6022:	458e      	cmp	lr, r1
    6024:	d1f7      	bne.n	6016 <_malloc_r+0x3ae>
    6026:	f8d1 e00c 	ldr.w	lr, [r1, #12]
    602a:	687a      	ldr	r2, [r7, #4]
    602c:	e9c4 1e02 	strd	r1, lr, [r4, #8]
    6030:	f8ce 4008 	str.w	r4, [lr, #8]
    6034:	60cc      	str	r4, [r1, #12]
    6036:	e699      	b.n	5d6c <_malloc_r+0x104>
    6038:	f103 005c 	add.w	r0, r3, #92	; 0x5c
    603c:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
    6040:	00c1      	lsls	r1, r0, #3
    6042:	e656      	b.n	5cf2 <_malloc_r+0x8a>
    6044:	42bc      	cmp	r4, r7
    6046:	d072      	beq.n	612e <_malloc_r+0x4c6>
    6048:	68bc      	ldr	r4, [r7, #8]
    604a:	6862      	ldr	r2, [r4, #4]
    604c:	f022 0203 	bic.w	r2, r2, #3
    6050:	4295      	cmp	r5, r2
    6052:	eba2 0305 	sub.w	r3, r2, r5
    6056:	d802      	bhi.n	605e <_malloc_r+0x3f6>
    6058:	2b0f      	cmp	r3, #15
    605a:	f73f af5f 	bgt.w	5f1c <_malloc_r+0x2b4>
    605e:	4630      	mov	r0, r6
    6060:	f000 f8e0 	bl	6224 <__malloc_unlock>
    6064:	2400      	movs	r4, #0
    6066:	e627      	b.n	5cb8 <_malloc_r+0x50>
    6068:	099a      	lsrs	r2, r3, #6
    606a:	f102 0139 	add.w	r1, r2, #57	; 0x39
    606e:	00c9      	lsls	r1, r1, #3
    6070:	3238      	adds	r2, #56	; 0x38
    6072:	e7c9      	b.n	6008 <_malloc_r+0x3a0>
    6074:	f8d9 9000 	ldr.w	r9, [r9]
    6078:	4599      	cmp	r9, r3
    607a:	f040 8083 	bne.w	6184 <_malloc_r+0x51c>
    607e:	f010 0f03 	tst.w	r0, #3
    6082:	f1a9 0308 	sub.w	r3, r9, #8
    6086:	f100 30ff 	add.w	r0, r0, #4294967295
    608a:	d1f3      	bne.n	6074 <_malloc_r+0x40c>
    608c:	687b      	ldr	r3, [r7, #4]
    608e:	ea23 0304 	bic.w	r3, r3, r4
    6092:	607b      	str	r3, [r7, #4]
    6094:	0064      	lsls	r4, r4, #1
    6096:	429c      	cmp	r4, r3
    6098:	f63f aeba 	bhi.w	5e10 <_malloc_r+0x1a8>
    609c:	b91c      	cbnz	r4, 60a6 <_malloc_r+0x43e>
    609e:	e6b7      	b.n	5e10 <_malloc_r+0x1a8>
    60a0:	0064      	lsls	r4, r4, #1
    60a2:	f108 0804 	add.w	r8, r8, #4
    60a6:	421c      	tst	r4, r3
    60a8:	d0fa      	beq.n	60a0 <_malloc_r+0x438>
    60aa:	4640      	mov	r0, r8
    60ac:	e66c      	b.n	5d88 <_malloc_r+0x120>
    60ae:	f108 0810 	add.w	r8, r8, #16
    60b2:	e6ca      	b.n	5e4a <_malloc_r+0x1e2>
    60b4:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
    60b8:	d826      	bhi.n	6108 <_malloc_r+0x4a0>
    60ba:	0beb      	lsrs	r3, r5, #15
    60bc:	f103 0078 	add.w	r0, r3, #120	; 0x78
    60c0:	f103 0c77 	add.w	ip, r3, #119	; 0x77
    60c4:	00c1      	lsls	r1, r0, #3
    60c6:	e614      	b.n	5cf2 <_malloc_r+0x8a>
    60c8:	f04f 0801 	mov.w	r8, #1
    60cc:	687b      	ldr	r3, [r7, #4]
    60ce:	1092      	asrs	r2, r2, #2
    60d0:	fa08 f202 	lsl.w	r2, r8, r2
    60d4:	431a      	orrs	r2, r3
    60d6:	607a      	str	r2, [r7, #4]
    60d8:	e7a8      	b.n	602c <_malloc_r+0x3c4>
    60da:	f44f 5380 	mov.w	r3, #4096	; 0x1000
    60de:	e6dc      	b.n	5e9a <_malloc_r+0x232>
    60e0:	2a54      	cmp	r2, #84	; 0x54
    60e2:	d829      	bhi.n	6138 <_malloc_r+0x4d0>
    60e4:	0b1a      	lsrs	r2, r3, #12
    60e6:	f102 016f 	add.w	r1, r2, #111	; 0x6f
    60ea:	00c9      	lsls	r1, r1, #3
    60ec:	326e      	adds	r2, #110	; 0x6e
    60ee:	e78b      	b.n	6008 <_malloc_r+0x3a0>
    60f0:	f3c0 010b 	ubfx	r1, r0, #0, #12
    60f4:	2900      	cmp	r1, #0
    60f6:	f47f aebc 	bne.w	5e72 <_malloc_r+0x20a>
    60fa:	eb09 0208 	add.w	r2, r9, r8
    60fe:	68b9      	ldr	r1, [r7, #8]
    6100:	f042 0201 	orr.w	r2, r2, #1
    6104:	604a      	str	r2, [r1, #4]
    6106:	e6fa      	b.n	5efe <_malloc_r+0x296>
    6108:	f240 5254 	movw	r2, #1364	; 0x554
    610c:	4293      	cmp	r3, r2
    610e:	d81c      	bhi.n	614a <_malloc_r+0x4e2>
    6110:	0cab      	lsrs	r3, r5, #18
    6112:	f103 007d 	add.w	r0, r3, #125	; 0x7d
    6116:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
    611a:	00c1      	lsls	r1, r0, #3
    611c:	e5e9      	b.n	5cf2 <_malloc_r+0x8a>
    611e:	2301      	movs	r3, #1
    6120:	f8cb 3004 	str.w	r3, [fp, #4]
    6124:	e79b      	b.n	605e <_malloc_r+0x3f6>
    6126:	2101      	movs	r1, #1
    6128:	f04f 0800 	mov.w	r8, #0
    612c:	e6c8      	b.n	5ec0 <_malloc_r+0x258>
    612e:	4a16      	ldr	r2, [pc, #88]	; (6188 <_malloc_r+0x520>)
    6130:	6813      	ldr	r3, [r2, #0]
    6132:	4443      	add	r3, r8
    6134:	6013      	str	r3, [r2, #0]
    6136:	e69c      	b.n	5e72 <_malloc_r+0x20a>
    6138:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
    613c:	d814      	bhi.n	6168 <_malloc_r+0x500>
    613e:	0bda      	lsrs	r2, r3, #15
    6140:	f102 0178 	add.w	r1, r2, #120	; 0x78
    6144:	00c9      	lsls	r1, r1, #3
    6146:	3277      	adds	r2, #119	; 0x77
    6148:	e75e      	b.n	6008 <_malloc_r+0x3a0>
    614a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
    614e:	207f      	movs	r0, #127	; 0x7f
    6150:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
    6154:	e5cd      	b.n	5cf2 <_malloc_r+0x8a>
    6156:	f104 0108 	add.w	r1, r4, #8
    615a:	4630      	mov	r0, r6
    615c:	9201      	str	r2, [sp, #4]
    615e:	f7ff fb99 	bl	5894 <_free_r>
    6162:	9a01      	ldr	r2, [sp, #4]
    6164:	6813      	ldr	r3, [r2, #0]
    6166:	e6ca      	b.n	5efe <_malloc_r+0x296>
    6168:	f240 5154 	movw	r1, #1364	; 0x554
    616c:	428a      	cmp	r2, r1
    616e:	d805      	bhi.n	617c <_malloc_r+0x514>
    6170:	0c9a      	lsrs	r2, r3, #18
    6172:	f102 017d 	add.w	r1, r2, #125	; 0x7d
    6176:	00c9      	lsls	r1, r1, #3
    6178:	327c      	adds	r2, #124	; 0x7c
    617a:	e745      	b.n	6008 <_malloc_r+0x3a0>
    617c:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
    6180:	227e      	movs	r2, #126	; 0x7e
    6182:	e741      	b.n	6008 <_malloc_r+0x3a0>
    6184:	687b      	ldr	r3, [r7, #4]
    6186:	e785      	b.n	6094 <_malloc_r+0x42c>
    6188:	20005a30 	.word	0x20005a30

Disassembly of section .text.memchr:

0000618c <memchr>:
    618c:	0783      	lsls	r3, r0, #30
    618e:	b470      	push	{r4, r5, r6}
    6190:	b2cd      	uxtb	r5, r1
    6192:	d03d      	beq.n	6210 <memchr+0x84>
    6194:	1e54      	subs	r4, r2, #1
    6196:	b30a      	cbz	r2, 61dc <memchr+0x50>
    6198:	7803      	ldrb	r3, [r0, #0]
    619a:	42ab      	cmp	r3, r5
    619c:	d01f      	beq.n	61de <memchr+0x52>
    619e:	1c43      	adds	r3, r0, #1
    61a0:	e005      	b.n	61ae <memchr+0x22>
    61a2:	f114 34ff 	adds.w	r4, r4, #4294967295
    61a6:	d319      	bcc.n	61dc <memchr+0x50>
    61a8:	7802      	ldrb	r2, [r0, #0]
    61aa:	42aa      	cmp	r2, r5
    61ac:	d017      	beq.n	61de <memchr+0x52>
    61ae:	f013 0f03 	tst.w	r3, #3
    61b2:	4618      	mov	r0, r3
    61b4:	f103 0301 	add.w	r3, r3, #1
    61b8:	d1f3      	bne.n	61a2 <memchr+0x16>
    61ba:	2c03      	cmp	r4, #3
    61bc:	d811      	bhi.n	61e2 <memchr+0x56>
    61be:	b34c      	cbz	r4, 6214 <memchr+0x88>
    61c0:	7803      	ldrb	r3, [r0, #0]
    61c2:	42ab      	cmp	r3, r5
    61c4:	d00b      	beq.n	61de <memchr+0x52>
    61c6:	4404      	add	r4, r0
    61c8:	1c43      	adds	r3, r0, #1
    61ca:	e002      	b.n	61d2 <memchr+0x46>
    61cc:	7802      	ldrb	r2, [r0, #0]
    61ce:	42aa      	cmp	r2, r5
    61d0:	d005      	beq.n	61de <memchr+0x52>
    61d2:	429c      	cmp	r4, r3
    61d4:	4618      	mov	r0, r3
    61d6:	f103 0301 	add.w	r3, r3, #1
    61da:	d1f7      	bne.n	61cc <memchr+0x40>
    61dc:	2000      	movs	r0, #0
    61de:	bc70      	pop	{r4, r5, r6}
    61e0:	4770      	bx	lr
    61e2:	4606      	mov	r6, r0
    61e4:	020a      	lsls	r2, r1, #8
    61e6:	b292      	uxth	r2, r2
    61e8:	432a      	orrs	r2, r5
    61ea:	ea42 4202 	orr.w	r2, r2, r2, lsl #16
    61ee:	6833      	ldr	r3, [r6, #0]
    61f0:	4630      	mov	r0, r6
    61f2:	4053      	eors	r3, r2
    61f4:	f1a3 3101 	sub.w	r1, r3, #16843009	; 0x1010101
    61f8:	ea21 0303 	bic.w	r3, r1, r3
    61fc:	f013 3f80 	tst.w	r3, #2155905152	; 0x80808080
    6200:	f106 0604 	add.w	r6, r6, #4
    6204:	d1dc      	bne.n	61c0 <memchr+0x34>
    6206:	3c04      	subs	r4, #4
    6208:	2c03      	cmp	r4, #3
    620a:	4630      	mov	r0, r6
    620c:	d8ef      	bhi.n	61ee <memchr+0x62>
    620e:	e7d6      	b.n	61be <memchr+0x32>
    6210:	4614      	mov	r4, r2
    6212:	e7d2      	b.n	61ba <memchr+0x2e>
    6214:	4620      	mov	r0, r4
    6216:	e7e2      	b.n	61de <memchr+0x52>

Disassembly of section .text.__malloc_lock:

00006218 <__malloc_lock>:
    6218:	4801      	ldr	r0, [pc, #4]	; (6220 <__malloc_lock+0x8>)
    621a:	f7ff bca3 	b.w	5b64 <__retarget_lock_acquire_recursive>
    621e:	bf00      	nop
    6220:	20000a14 	.word	0x20000a14

Disassembly of section .text.__malloc_unlock:

00006224 <__malloc_unlock>:
    6224:	4801      	ldr	r0, [pc, #4]	; (622c <__malloc_unlock+0x8>)
    6226:	f7ff bca5 	b.w	5b74 <__retarget_lock_release_recursive>
    622a:	bf00      	nop
    622c:	20000a14 	.word	0x20000a14

Disassembly of section .text._Balloc:

00006230 <_Balloc>:
    6230:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    6232:	b570      	push	{r4, r5, r6, lr}
    6234:	4605      	mov	r5, r0
    6236:	460c      	mov	r4, r1
    6238:	b14b      	cbz	r3, 624e <_Balloc+0x1e>
    623a:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
    623e:	b180      	cbz	r0, 6262 <_Balloc+0x32>
    6240:	6802      	ldr	r2, [r0, #0]
    6242:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
    6246:	2300      	movs	r3, #0
    6248:	e9c0 3303 	strd	r3, r3, [r0, #12]
    624c:	bd70      	pop	{r4, r5, r6, pc}
    624e:	2221      	movs	r2, #33	; 0x21
    6250:	2104      	movs	r1, #4
    6252:	f001 fbc5 	bl	79e0 <_calloc_r>
    6256:	4603      	mov	r3, r0
    6258:	64e8      	str	r0, [r5, #76]	; 0x4c
    625a:	2800      	cmp	r0, #0
    625c:	d1ed      	bne.n	623a <_Balloc+0xa>
    625e:	2000      	movs	r0, #0
    6260:	bd70      	pop	{r4, r5, r6, pc}
    6262:	2101      	movs	r1, #1
    6264:	fa01 f604 	lsl.w	r6, r1, r4
    6268:	1d72      	adds	r2, r6, #5
    626a:	4628      	mov	r0, r5
    626c:	0092      	lsls	r2, r2, #2
    626e:	f001 fbb7 	bl	79e0 <_calloc_r>
    6272:	2800      	cmp	r0, #0
    6274:	d0f3      	beq.n	625e <_Balloc+0x2e>
    6276:	e9c0 4601 	strd	r4, r6, [r0, #4]
    627a:	e7e4      	b.n	6246 <_Balloc+0x16>

Disassembly of section .text._Bfree:

0000627c <_Bfree>:
    627c:	b131      	cbz	r1, 628c <_Bfree+0x10>
    627e:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    6280:	684a      	ldr	r2, [r1, #4]
    6282:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
    6286:	6008      	str	r0, [r1, #0]
    6288:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
    628c:	4770      	bx	lr
    628e:	bf00      	nop

Disassembly of section .text.__multadd:

00006290 <__multadd>:
    6290:	b5f0      	push	{r4, r5, r6, r7, lr}
    6292:	f04f 0c00 	mov.w	ip, #0
    6296:	460c      	mov	r4, r1
    6298:	4605      	mov	r5, r0
    629a:	690e      	ldr	r6, [r1, #16]
    629c:	b083      	sub	sp, #12
    629e:	f101 0714 	add.w	r7, r1, #20
    62a2:	6838      	ldr	r0, [r7, #0]
    62a4:	f10c 0c01 	add.w	ip, ip, #1
    62a8:	b281      	uxth	r1, r0
    62aa:	fb02 3301 	mla	r3, r2, r1, r3
    62ae:	0c01      	lsrs	r1, r0, #16
    62b0:	0c18      	lsrs	r0, r3, #16
    62b2:	fb02 0101 	mla	r1, r2, r1, r0
    62b6:	b29b      	uxth	r3, r3
    62b8:	eb03 4301 	add.w	r3, r3, r1, lsl #16
    62bc:	4566      	cmp	r6, ip
    62be:	f847 3b04 	str.w	r3, [r7], #4
    62c2:	ea4f 4311 	mov.w	r3, r1, lsr #16
    62c6:	dcec      	bgt.n	62a2 <__multadd+0x12>
    62c8:	b13b      	cbz	r3, 62da <__multadd+0x4a>
    62ca:	68a2      	ldr	r2, [r4, #8]
    62cc:	42b2      	cmp	r2, r6
    62ce:	dd07      	ble.n	62e0 <__multadd+0x50>
    62d0:	eb04 0286 	add.w	r2, r4, r6, lsl #2
    62d4:	3601      	adds	r6, #1
    62d6:	6153      	str	r3, [r2, #20]
    62d8:	6126      	str	r6, [r4, #16]
    62da:	4620      	mov	r0, r4
    62dc:	b003      	add	sp, #12
    62de:	bdf0      	pop	{r4, r5, r6, r7, pc}
    62e0:	6861      	ldr	r1, [r4, #4]
    62e2:	4628      	mov	r0, r5
    62e4:	3101      	adds	r1, #1
    62e6:	9301      	str	r3, [sp, #4]
    62e8:	f7ff ffa2 	bl	6230 <_Balloc>
    62ec:	4607      	mov	r7, r0
    62ee:	6922      	ldr	r2, [r4, #16]
    62f0:	f104 010c 	add.w	r1, r4, #12
    62f4:	3202      	adds	r2, #2
    62f6:	0092      	lsls	r2, r2, #2
    62f8:	300c      	adds	r0, #12
    62fa:	f7fb fcf7 	bl	1cec <memcpy>
    62fe:	6cea      	ldr	r2, [r5, #76]	; 0x4c
    6300:	6861      	ldr	r1, [r4, #4]
    6302:	9b01      	ldr	r3, [sp, #4]
    6304:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
    6308:	6020      	str	r0, [r4, #0]
    630a:	f842 4021 	str.w	r4, [r2, r1, lsl #2]
    630e:	463c      	mov	r4, r7
    6310:	e7de      	b.n	62d0 <__multadd+0x40>
    6312:	bf00      	nop

Disassembly of section .text.__s2b:

00006314 <__s2b>:
    6314:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    6318:	4c23      	ldr	r4, [pc, #140]	; (63a8 <__s2b+0x94>)
    631a:	461e      	mov	r6, r3
    631c:	3308      	adds	r3, #8
    631e:	fb84 4c03 	smull	r4, ip, r4, r3
    6322:	17db      	asrs	r3, r3, #31
    6324:	ebc3 0c6c 	rsb	ip, r3, ip, asr #1
    6328:	f1bc 0f01 	cmp.w	ip, #1
    632c:	4607      	mov	r7, r0
    632e:	460c      	mov	r4, r1
    6330:	4690      	mov	r8, r2
    6332:	9d08      	ldr	r5, [sp, #32]
    6334:	dd35      	ble.n	63a2 <__s2b+0x8e>
    6336:	2301      	movs	r3, #1
    6338:	2100      	movs	r1, #0
    633a:	005b      	lsls	r3, r3, #1
    633c:	459c      	cmp	ip, r3
    633e:	f101 0101 	add.w	r1, r1, #1
    6342:	dcfa      	bgt.n	633a <__s2b+0x26>
    6344:	4638      	mov	r0, r7
    6346:	f7ff ff73 	bl	6230 <_Balloc>
    634a:	2301      	movs	r3, #1
    634c:	f1b8 0f09 	cmp.w	r8, #9
    6350:	e9c0 3504 	strd	r3, r5, [r0, #16]
    6354:	dd21      	ble.n	639a <__s2b+0x86>
    6356:	f104 0909 	add.w	r9, r4, #9
    635a:	464d      	mov	r5, r9
    635c:	4444      	add	r4, r8
    635e:	f815 3b01 	ldrb.w	r3, [r5], #1
    6362:	4601      	mov	r1, r0
    6364:	3b30      	subs	r3, #48	; 0x30
    6366:	220a      	movs	r2, #10
    6368:	4638      	mov	r0, r7
    636a:	f7ff ff91 	bl	6290 <__multadd>
    636e:	42ac      	cmp	r4, r5
    6370:	d1f5      	bne.n	635e <__s2b+0x4a>
    6372:	eb09 0408 	add.w	r4, r9, r8
    6376:	3c08      	subs	r4, #8
    6378:	4546      	cmp	r6, r8
    637a:	dd0c      	ble.n	6396 <__s2b+0x82>
    637c:	eba6 0608 	sub.w	r6, r6, r8
    6380:	4426      	add	r6, r4
    6382:	f814 3b01 	ldrb.w	r3, [r4], #1
    6386:	4601      	mov	r1, r0
    6388:	3b30      	subs	r3, #48	; 0x30
    638a:	220a      	movs	r2, #10
    638c:	4638      	mov	r0, r7
    638e:	f7ff ff7f 	bl	6290 <__multadd>
    6392:	42a6      	cmp	r6, r4
    6394:	d1f5      	bne.n	6382 <__s2b+0x6e>
    6396:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    639a:	f04f 0809 	mov.w	r8, #9
    639e:	340a      	adds	r4, #10
    63a0:	e7ea      	b.n	6378 <__s2b+0x64>
    63a2:	2100      	movs	r1, #0
    63a4:	e7ce      	b.n	6344 <__s2b+0x30>
    63a6:	bf00      	nop
    63a8:	38e38e39 	.word	0x38e38e39

Disassembly of section .text.__hi0bits:

000063ac <__hi0bits>:
    63ac:	0c02      	lsrs	r2, r0, #16
    63ae:	0412      	lsls	r2, r2, #16
    63b0:	4603      	mov	r3, r0
    63b2:	b9c2      	cbnz	r2, 63e6 <__hi0bits+0x3a>
    63b4:	0403      	lsls	r3, r0, #16
    63b6:	2010      	movs	r0, #16
    63b8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
    63bc:	bf04      	itt	eq
    63be:	021b      	lsleq	r3, r3, #8
    63c0:	3008      	addeq	r0, #8
    63c2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
    63c6:	bf04      	itt	eq
    63c8:	011b      	lsleq	r3, r3, #4
    63ca:	3004      	addeq	r0, #4
    63cc:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
    63d0:	bf04      	itt	eq
    63d2:	009b      	lsleq	r3, r3, #2
    63d4:	3002      	addeq	r0, #2
    63d6:	2b00      	cmp	r3, #0
    63d8:	db04      	blt.n	63e4 <__hi0bits+0x38>
    63da:	005b      	lsls	r3, r3, #1
    63dc:	d501      	bpl.n	63e2 <__hi0bits+0x36>
    63de:	3001      	adds	r0, #1
    63e0:	4770      	bx	lr
    63e2:	2020      	movs	r0, #32
    63e4:	4770      	bx	lr
    63e6:	2000      	movs	r0, #0
    63e8:	e7e6      	b.n	63b8 <__hi0bits+0xc>
    63ea:	bf00      	nop

Disassembly of section .text.__lo0bits:

000063ec <__lo0bits>:
    63ec:	6803      	ldr	r3, [r0, #0]
    63ee:	4601      	mov	r1, r0
    63f0:	f013 0207 	ands.w	r2, r3, #7
    63f4:	d007      	beq.n	6406 <__lo0bits+0x1a>
    63f6:	07da      	lsls	r2, r3, #31
    63f8:	d41f      	bmi.n	643a <__lo0bits+0x4e>
    63fa:	0798      	lsls	r0, r3, #30
    63fc:	d51f      	bpl.n	643e <__lo0bits+0x52>
    63fe:	085b      	lsrs	r3, r3, #1
    6400:	600b      	str	r3, [r1, #0]
    6402:	2001      	movs	r0, #1
    6404:	4770      	bx	lr
    6406:	b298      	uxth	r0, r3
    6408:	b1a0      	cbz	r0, 6434 <__lo0bits+0x48>
    640a:	4610      	mov	r0, r2
    640c:	f013 0fff 	tst.w	r3, #255	; 0xff
    6410:	bf04      	itt	eq
    6412:	0a1b      	lsreq	r3, r3, #8
    6414:	3008      	addeq	r0, #8
    6416:	071a      	lsls	r2, r3, #28
    6418:	bf04      	itt	eq
    641a:	091b      	lsreq	r3, r3, #4
    641c:	3004      	addeq	r0, #4
    641e:	079a      	lsls	r2, r3, #30
    6420:	bf04      	itt	eq
    6422:	089b      	lsreq	r3, r3, #2
    6424:	3002      	addeq	r0, #2
    6426:	07da      	lsls	r2, r3, #31
    6428:	d402      	bmi.n	6430 <__lo0bits+0x44>
    642a:	085b      	lsrs	r3, r3, #1
    642c:	d00b      	beq.n	6446 <__lo0bits+0x5a>
    642e:	3001      	adds	r0, #1
    6430:	600b      	str	r3, [r1, #0]
    6432:	4770      	bx	lr
    6434:	0c1b      	lsrs	r3, r3, #16
    6436:	2010      	movs	r0, #16
    6438:	e7e8      	b.n	640c <__lo0bits+0x20>
    643a:	2000      	movs	r0, #0
    643c:	4770      	bx	lr
    643e:	089b      	lsrs	r3, r3, #2
    6440:	600b      	str	r3, [r1, #0]
    6442:	2002      	movs	r0, #2
    6444:	4770      	bx	lr
    6446:	2020      	movs	r0, #32
    6448:	4770      	bx	lr
    644a:	bf00      	nop

Disassembly of section .text.__i2b:

0000644c <__i2b>:
    644c:	b510      	push	{r4, lr}
    644e:	460c      	mov	r4, r1
    6450:	2101      	movs	r1, #1
    6452:	f7ff feed 	bl	6230 <_Balloc>
    6456:	2201      	movs	r2, #1
    6458:	e9c0 2404 	strd	r2, r4, [r0, #16]
    645c:	bd10      	pop	{r4, pc}
    645e:	bf00      	nop

Disassembly of section .text.__multiply:

00006460 <__multiply>:
    6460:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6464:	690d      	ldr	r5, [r1, #16]
    6466:	6914      	ldr	r4, [r2, #16]
    6468:	b085      	sub	sp, #20
    646a:	42a5      	cmp	r5, r4
    646c:	460e      	mov	r6, r1
    646e:	4691      	mov	r9, r2
    6470:	da04      	bge.n	647c <__multiply+0x1c>
    6472:	462a      	mov	r2, r5
    6474:	464e      	mov	r6, r9
    6476:	4625      	mov	r5, r4
    6478:	4689      	mov	r9, r1
    647a:	4614      	mov	r4, r2
    647c:	68b3      	ldr	r3, [r6, #8]
    647e:	eb05 0804 	add.w	r8, r5, r4
    6482:	6871      	ldr	r1, [r6, #4]
    6484:	4543      	cmp	r3, r8
    6486:	bfb8      	it	lt
    6488:	3101      	addlt	r1, #1
    648a:	f7ff fed1 	bl	6230 <_Balloc>
    648e:	f100 0b14 	add.w	fp, r0, #20
    6492:	eb0b 0a88 	add.w	sl, fp, r8, lsl #2
    6496:	45d3      	cmp	fp, sl
    6498:	9001      	str	r0, [sp, #4]
    649a:	d205      	bcs.n	64a8 <__multiply+0x48>
    649c:	465b      	mov	r3, fp
    649e:	2200      	movs	r2, #0
    64a0:	f843 2b04 	str.w	r2, [r3], #4
    64a4:	459a      	cmp	sl, r3
    64a6:	d8fb      	bhi.n	64a0 <__multiply+0x40>
    64a8:	f109 0314 	add.w	r3, r9, #20
    64ac:	eb03 0484 	add.w	r4, r3, r4, lsl #2
    64b0:	f106 0214 	add.w	r2, r6, #20
    64b4:	42a3      	cmp	r3, r4
    64b6:	eb02 0e85 	add.w	lr, r2, r5, lsl #2
    64ba:	d262      	bcs.n	6582 <__multiply+0x122>
    64bc:	eba4 0409 	sub.w	r4, r4, r9
    64c0:	3c15      	subs	r4, #21
    64c2:	f024 0403 	bic.w	r4, r4, #3
    64c6:	4423      	add	r3, r4
    64c8:	e9cd a802 	strd	sl, r8, [sp, #8]
    64cc:	f109 0910 	add.w	r9, r9, #16
    64d0:	4690      	mov	r8, r2
    64d2:	469a      	mov	sl, r3
    64d4:	e005      	b.n	64e2 <__multiply+0x82>
    64d6:	0c09      	lsrs	r1, r1, #16
    64d8:	d12c      	bne.n	6534 <__multiply+0xd4>
    64da:	45ca      	cmp	sl, r9
    64dc:	f10b 0b04 	add.w	fp, fp, #4
    64e0:	d04d      	beq.n	657e <__multiply+0x11e>
    64e2:	f859 1f04 	ldr.w	r1, [r9, #4]!
    64e6:	fa1f fc81 	uxth.w	ip, r1
    64ea:	f1bc 0f00 	cmp.w	ip, #0
    64ee:	d0f2      	beq.n	64d6 <__multiply+0x76>
    64f0:	4647      	mov	r7, r8
    64f2:	465e      	mov	r6, fp
    64f4:	2100      	movs	r1, #0
    64f6:	e000      	b.n	64fa <__multiply+0x9a>
    64f8:	4606      	mov	r6, r0
    64fa:	4630      	mov	r0, r6
    64fc:	f857 2b04 	ldr.w	r2, [r7], #4
    6500:	6834      	ldr	r4, [r6, #0]
    6502:	b293      	uxth	r3, r2
    6504:	b2a5      	uxth	r5, r4
    6506:	0c12      	lsrs	r2, r2, #16
    6508:	fb0c 5303 	mla	r3, ip, r3, r5
    650c:	0c24      	lsrs	r4, r4, #16
    650e:	fb0c 4202 	mla	r2, ip, r2, r4
    6512:	440b      	add	r3, r1
    6514:	eb02 4113 	add.w	r1, r2, r3, lsr #16
    6518:	b29b      	uxth	r3, r3
    651a:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
    651e:	45be      	cmp	lr, r7
    6520:	ea4f 4111 	mov.w	r1, r1, lsr #16
    6524:	f840 3b04 	str.w	r3, [r0], #4
    6528:	d8e6      	bhi.n	64f8 <__multiply+0x98>
    652a:	6071      	str	r1, [r6, #4]
    652c:	f8d9 1000 	ldr.w	r1, [r9]
    6530:	0c09      	lsrs	r1, r1, #16
    6532:	d0d2      	beq.n	64da <__multiply+0x7a>
    6534:	f8db 3000 	ldr.w	r3, [fp]
    6538:	4640      	mov	r0, r8
    653a:	461e      	mov	r6, r3
    653c:	465d      	mov	r5, fp
    653e:	2200      	movs	r2, #0
    6540:	e000      	b.n	6544 <__multiply+0xe4>
    6542:	4625      	mov	r5, r4
    6544:	462c      	mov	r4, r5
    6546:	8807      	ldrh	r7, [r0, #0]
    6548:	0c36      	lsrs	r6, r6, #16
    654a:	fb01 6607 	mla	r6, r1, r7, r6
    654e:	b29b      	uxth	r3, r3
    6550:	4432      	add	r2, r6
    6552:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
    6556:	f844 3b04 	str.w	r3, [r4], #4
    655a:	f850 3b04 	ldr.w	r3, [r0], #4
    655e:	686e      	ldr	r6, [r5, #4]
    6560:	0c1b      	lsrs	r3, r3, #16
    6562:	b2b7      	uxth	r7, r6
    6564:	fb01 7303 	mla	r3, r1, r3, r7
    6568:	4586      	cmp	lr, r0
    656a:	eb03 4312 	add.w	r3, r3, r2, lsr #16
    656e:	ea4f 4213 	mov.w	r2, r3, lsr #16
    6572:	d8e6      	bhi.n	6542 <__multiply+0xe2>
    6574:	45ca      	cmp	sl, r9
    6576:	606b      	str	r3, [r5, #4]
    6578:	f10b 0b04 	add.w	fp, fp, #4
    657c:	d1b1      	bne.n	64e2 <__multiply+0x82>
    657e:	e9dd a802 	ldrd	sl, r8, [sp, #8]
    6582:	f1b8 0f00 	cmp.w	r8, #0
    6586:	dd0b      	ble.n	65a0 <__multiply+0x140>
    6588:	f85a 3c04 	ldr.w	r3, [sl, #-4]
    658c:	f1aa 0a04 	sub.w	sl, sl, #4
    6590:	b11b      	cbz	r3, 659a <__multiply+0x13a>
    6592:	e005      	b.n	65a0 <__multiply+0x140>
    6594:	f85a 3d04 	ldr.w	r3, [sl, #-4]!
    6598:	b913      	cbnz	r3, 65a0 <__multiply+0x140>
    659a:	f1b8 0801 	subs.w	r8, r8, #1
    659e:	d1f9      	bne.n	6594 <__multiply+0x134>
    65a0:	9801      	ldr	r0, [sp, #4]
    65a2:	f8c0 8010 	str.w	r8, [r0, #16]
    65a6:	b005      	add	sp, #20
    65a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

Disassembly of section .text.__pow5mult:

000065ac <__pow5mult>:
    65ac:	f012 0303 	ands.w	r3, r2, #3
    65b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    65b4:	4614      	mov	r4, r2
    65b6:	4607      	mov	r7, r0
    65b8:	d12e      	bne.n	6618 <__pow5mult+0x6c>
    65ba:	460d      	mov	r5, r1
    65bc:	10a4      	asrs	r4, r4, #2
    65be:	d01c      	beq.n	65fa <__pow5mult+0x4e>
    65c0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
    65c2:	b396      	cbz	r6, 662a <__pow5mult+0x7e>
    65c4:	07e3      	lsls	r3, r4, #31
    65c6:	f04f 0800 	mov.w	r8, #0
    65ca:	d406      	bmi.n	65da <__pow5mult+0x2e>
    65cc:	1064      	asrs	r4, r4, #1
    65ce:	d014      	beq.n	65fa <__pow5mult+0x4e>
    65d0:	6830      	ldr	r0, [r6, #0]
    65d2:	b1a8      	cbz	r0, 6600 <__pow5mult+0x54>
    65d4:	4606      	mov	r6, r0
    65d6:	07e3      	lsls	r3, r4, #31
    65d8:	d5f8      	bpl.n	65cc <__pow5mult+0x20>
    65da:	4632      	mov	r2, r6
    65dc:	4629      	mov	r1, r5
    65de:	4638      	mov	r0, r7
    65e0:	f7ff ff3e 	bl	6460 <__multiply>
    65e4:	b1b5      	cbz	r5, 6614 <__pow5mult+0x68>
    65e6:	686a      	ldr	r2, [r5, #4]
    65e8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    65ea:	1064      	asrs	r4, r4, #1
    65ec:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
    65f0:	6029      	str	r1, [r5, #0]
    65f2:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
    65f6:	4605      	mov	r5, r0
    65f8:	d1ea      	bne.n	65d0 <__pow5mult+0x24>
    65fa:	4628      	mov	r0, r5
    65fc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    6600:	4632      	mov	r2, r6
    6602:	4631      	mov	r1, r6
    6604:	4638      	mov	r0, r7
    6606:	f7ff ff2b 	bl	6460 <__multiply>
    660a:	6030      	str	r0, [r6, #0]
    660c:	f8c0 8000 	str.w	r8, [r0]
    6610:	4606      	mov	r6, r0
    6612:	e7e0      	b.n	65d6 <__pow5mult+0x2a>
    6614:	4605      	mov	r5, r0
    6616:	e7d9      	b.n	65cc <__pow5mult+0x20>
    6618:	4a0b      	ldr	r2, [pc, #44]	; (6648 <__pow5mult+0x9c>)
    661a:	3b01      	subs	r3, #1
    661c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
    6620:	2300      	movs	r3, #0
    6622:	f7ff fe35 	bl	6290 <__multadd>
    6626:	4605      	mov	r5, r0
    6628:	e7c8      	b.n	65bc <__pow5mult+0x10>
    662a:	2101      	movs	r1, #1
    662c:	4638      	mov	r0, r7
    662e:	f7ff fdff 	bl	6230 <_Balloc>
    6632:	f240 2171 	movw	r1, #625	; 0x271
    6636:	2201      	movs	r2, #1
    6638:	2300      	movs	r3, #0
    663a:	e9c0 2104 	strd	r2, r1, [r0, #16]
    663e:	4606      	mov	r6, r0
    6640:	64b8      	str	r0, [r7, #72]	; 0x48
    6642:	6003      	str	r3, [r0, #0]
    6644:	e7be      	b.n	65c4 <__pow5mult+0x18>
    6646:	bf00      	nop
    6648:	00008ba8 	.word	0x00008ba8

Disassembly of section .text.__lshift:

0000664c <__lshift>:
    664c:	690b      	ldr	r3, [r1, #16]
    664e:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    6652:	1154      	asrs	r4, r2, #5
    6654:	eb04 0803 	add.w	r8, r4, r3
    6658:	688b      	ldr	r3, [r1, #8]
    665a:	f108 0501 	add.w	r5, r8, #1
    665e:	429d      	cmp	r5, r3
    6660:	460e      	mov	r6, r1
    6662:	4691      	mov	r9, r2
    6664:	4607      	mov	r7, r0
    6666:	6849      	ldr	r1, [r1, #4]
    6668:	dd04      	ble.n	6674 <__lshift+0x28>
    666a:	005b      	lsls	r3, r3, #1
    666c:	429d      	cmp	r5, r3
    666e:	f101 0101 	add.w	r1, r1, #1
    6672:	dcfa      	bgt.n	666a <__lshift+0x1e>
    6674:	4638      	mov	r0, r7
    6676:	f7ff fddb 	bl	6230 <_Balloc>
    667a:	2c00      	cmp	r4, #0
    667c:	f100 0314 	add.w	r3, r0, #20
    6680:	dd3c      	ble.n	66fc <__lshift+0xb0>
    6682:	2200      	movs	r2, #0
    6684:	eb03 0184 	add.w	r1, r3, r4, lsl #2
    6688:	f843 2b04 	str.w	r2, [r3], #4
    668c:	428b      	cmp	r3, r1
    668e:	d1fb      	bne.n	6688 <__lshift+0x3c>
    6690:	6934      	ldr	r4, [r6, #16]
    6692:	f106 0314 	add.w	r3, r6, #20
    6696:	f019 091f 	ands.w	r9, r9, #31
    669a:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
    669e:	d025      	beq.n	66ec <__lshift+0xa0>
    66a0:	f1c9 0220 	rsb	r2, r9, #32
    66a4:	f04f 0a00 	mov.w	sl, #0
    66a8:	e000      	b.n	66ac <__lshift+0x60>
    66aa:	4671      	mov	r1, lr
    66ac:	468e      	mov	lr, r1
    66ae:	681c      	ldr	r4, [r3, #0]
    66b0:	fa04 f409 	lsl.w	r4, r4, r9
    66b4:	ea44 040a 	orr.w	r4, r4, sl
    66b8:	f84e 4b04 	str.w	r4, [lr], #4
    66bc:	f853 4b04 	ldr.w	r4, [r3], #4
    66c0:	4563      	cmp	r3, ip
    66c2:	fa24 fa02 	lsr.w	sl, r4, r2
    66c6:	d3f0      	bcc.n	66aa <__lshift+0x5e>
    66c8:	f8c1 a004 	str.w	sl, [r1, #4]
    66cc:	f1ba 0f00 	cmp.w	sl, #0
    66d0:	d001      	beq.n	66d6 <__lshift+0x8a>
    66d2:	f108 0502 	add.w	r5, r8, #2
    66d6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    66d8:	6872      	ldr	r2, [r6, #4]
    66da:	3d01      	subs	r5, #1
    66dc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
    66e0:	6105      	str	r5, [r0, #16]
    66e2:	6031      	str	r1, [r6, #0]
    66e4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
    66e8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
    66ec:	3904      	subs	r1, #4
    66ee:	f853 2b04 	ldr.w	r2, [r3], #4
    66f2:	459c      	cmp	ip, r3
    66f4:	f841 2f04 	str.w	r2, [r1, #4]!
    66f8:	d8f9      	bhi.n	66ee <__lshift+0xa2>
    66fa:	e7ec      	b.n	66d6 <__lshift+0x8a>
    66fc:	4619      	mov	r1, r3
    66fe:	e7c7      	b.n	6690 <__lshift+0x44>

Disassembly of section .text.__mcmp:

00006700 <__mcmp>:
    6700:	b430      	push	{r4, r5}
    6702:	690b      	ldr	r3, [r1, #16]
    6704:	4605      	mov	r5, r0
    6706:	6900      	ldr	r0, [r0, #16]
    6708:	1ac0      	subs	r0, r0, r3
    670a:	d10f      	bne.n	672c <__mcmp+0x2c>
    670c:	009b      	lsls	r3, r3, #2
    670e:	3514      	adds	r5, #20
    6710:	3114      	adds	r1, #20
    6712:	4419      	add	r1, r3
    6714:	442b      	add	r3, r5
    6716:	e001      	b.n	671c <__mcmp+0x1c>
    6718:	429d      	cmp	r5, r3
    671a:	d207      	bcs.n	672c <__mcmp+0x2c>
    671c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
    6720:	f851 2d04 	ldr.w	r2, [r1, #-4]!
    6724:	4294      	cmp	r4, r2
    6726:	d0f7      	beq.n	6718 <__mcmp+0x18>
    6728:	d302      	bcc.n	6730 <__mcmp+0x30>
    672a:	2001      	movs	r0, #1
    672c:	bc30      	pop	{r4, r5}
    672e:	4770      	bx	lr
    6730:	f04f 30ff 	mov.w	r0, #4294967295
    6734:	e7fa      	b.n	672c <__mcmp+0x2c>
    6736:	bf00      	nop

Disassembly of section .text.__mdiff:

00006738 <__mdiff>:
    6738:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    673c:	690c      	ldr	r4, [r1, #16]
    673e:	6913      	ldr	r3, [r2, #16]
    6740:	4689      	mov	r9, r1
    6742:	1ae4      	subs	r4, r4, r3
    6744:	2c00      	cmp	r4, #0
    6746:	4692      	mov	sl, r2
    6748:	f101 0714 	add.w	r7, r1, #20
    674c:	f102 0b14 	add.w	fp, r2, #20
    6750:	d114      	bne.n	677c <__mdiff+0x44>
    6752:	009b      	lsls	r3, r3, #2
    6754:	18fa      	adds	r2, r7, r3
    6756:	445b      	add	r3, fp
    6758:	e001      	b.n	675e <__mdiff+0x26>
    675a:	42ba      	cmp	r2, r7
    675c:	d962      	bls.n	6824 <__mdiff+0xec>
    675e:	f852 5d04 	ldr.w	r5, [r2, #-4]!
    6762:	f853 1d04 	ldr.w	r1, [r3, #-4]!
    6766:	428d      	cmp	r5, r1
    6768:	d0f7      	beq.n	675a <__mdiff+0x22>
    676a:	d209      	bcs.n	6780 <__mdiff+0x48>
    676c:	463a      	mov	r2, r7
    676e:	464b      	mov	r3, r9
    6770:	465f      	mov	r7, fp
    6772:	46d1      	mov	r9, sl
    6774:	4693      	mov	fp, r2
    6776:	469a      	mov	sl, r3
    6778:	2401      	movs	r4, #1
    677a:	e001      	b.n	6780 <__mdiff+0x48>
    677c:	dbf6      	blt.n	676c <__mdiff+0x34>
    677e:	2400      	movs	r4, #0
    6780:	f8d9 1004 	ldr.w	r1, [r9, #4]
    6784:	f7ff fd54 	bl	6230 <_Balloc>
    6788:	465e      	mov	r6, fp
    678a:	f04f 0800 	mov.w	r8, #0
    678e:	f8d9 c010 	ldr.w	ip, [r9, #16]
    6792:	f8da 3010 	ldr.w	r3, [sl, #16]
    6796:	463d      	mov	r5, r7
    6798:	60c4      	str	r4, [r0, #12]
    679a:	eb0b 0e83 	add.w	lr, fp, r3, lsl #2
    679e:	eb07 078c 	add.w	r7, r7, ip, lsl #2
    67a2:	f100 0414 	add.w	r4, r0, #20
    67a6:	f855 9b04 	ldr.w	r9, [r5], #4
    67aa:	f856 2b04 	ldr.w	r2, [r6], #4
    67ae:	fa1f f389 	uxth.w	r3, r9
    67b2:	4443      	add	r3, r8
    67b4:	fa1f f882 	uxth.w	r8, r2
    67b8:	0c12      	lsrs	r2, r2, #16
    67ba:	eba3 0308 	sub.w	r3, r3, r8
    67be:	ebc2 4219 	rsb	r2, r2, r9, lsr #16
    67c2:	eb02 4223 	add.w	r2, r2, r3, asr #16
    67c6:	b29b      	uxth	r3, r3
    67c8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
    67cc:	45b6      	cmp	lr, r6
    67ce:	f844 3b04 	str.w	r3, [r4], #4
    67d2:	ea4f 4822 	mov.w	r8, r2, asr #16
    67d6:	d8e6      	bhi.n	67a6 <__mdiff+0x6e>
    67d8:	42af      	cmp	r7, r5
    67da:	d917      	bls.n	680c <__mdiff+0xd4>
    67dc:	46a6      	mov	lr, r4
    67de:	462e      	mov	r6, r5
    67e0:	f856 3b04 	ldr.w	r3, [r6], #4
    67e4:	b299      	uxth	r1, r3
    67e6:	4441      	add	r1, r8
    67e8:	140a      	asrs	r2, r1, #16
    67ea:	eb02 4213 	add.w	r2, r2, r3, lsr #16
    67ee:	b289      	uxth	r1, r1
    67f0:	ea41 4302 	orr.w	r3, r1, r2, lsl #16
    67f4:	42b7      	cmp	r7, r6
    67f6:	f84e 3b04 	str.w	r3, [lr], #4
    67fa:	ea4f 4822 	mov.w	r8, r2, asr #16
    67fe:	d8ef      	bhi.n	67e0 <__mdiff+0xa8>
    6800:	43ed      	mvns	r5, r5
    6802:	442f      	add	r7, r5
    6804:	f027 0703 	bic.w	r7, r7, #3
    6808:	3704      	adds	r7, #4
    680a:	443c      	add	r4, r7
    680c:	3c04      	subs	r4, #4
    680e:	b92b      	cbnz	r3, 681c <__mdiff+0xe4>
    6810:	f854 3d04 	ldr.w	r3, [r4, #-4]!
    6814:	f10c 3cff 	add.w	ip, ip, #4294967295
    6818:	2b00      	cmp	r3, #0
    681a:	d0f9      	beq.n	6810 <__mdiff+0xd8>
    681c:	f8c0 c010 	str.w	ip, [r0, #16]
    6820:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6824:	2100      	movs	r1, #0
    6826:	f7ff fd03 	bl	6230 <_Balloc>
    682a:	2201      	movs	r2, #1
    682c:	2300      	movs	r3, #0
    682e:	e9c0 2304 	strd	r2, r3, [r0, #16]
    6832:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6836:	bf00      	nop

Disassembly of section .text.__ulp:

00006838 <__ulp>:
    6838:	4b0f      	ldr	r3, [pc, #60]	; (6878 <__ulp+0x40>)
    683a:	400b      	ands	r3, r1
    683c:	f1a3 7350 	sub.w	r3, r3, #54525952	; 0x3400000
    6840:	2b00      	cmp	r3, #0
    6842:	dd02      	ble.n	684a <__ulp+0x12>
    6844:	2000      	movs	r0, #0
    6846:	4619      	mov	r1, r3
    6848:	4770      	bx	lr
    684a:	425b      	negs	r3, r3
    684c:	151b      	asrs	r3, r3, #20
    684e:	2b13      	cmp	r3, #19
    6850:	dd0b      	ble.n	686a <__ulp+0x32>
    6852:	3b14      	subs	r3, #20
    6854:	2b1e      	cmp	r3, #30
    6856:	bfd7      	itett	le
    6858:	2201      	movle	r2, #1
    685a:	2301      	movgt	r3, #1
    685c:	f1c3 031f 	rsble	r3, r3, #31
    6860:	fa02 f303 	lslle.w	r3, r2, r3
    6864:	2100      	movs	r1, #0
    6866:	4618      	mov	r0, r3
    6868:	4770      	bx	lr
    686a:	f44f 2200 	mov.w	r2, #524288	; 0x80000
    686e:	2000      	movs	r0, #0
    6870:	fa42 f103 	asr.w	r1, r2, r3
    6874:	4770      	bx	lr
    6876:	bf00      	nop
    6878:	7ff00000 	.word	0x7ff00000

Disassembly of section .text.__b2d:

0000687c <__b2d>:
    687c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    6880:	6907      	ldr	r7, [r0, #16]
    6882:	f100 0614 	add.w	r6, r0, #20
    6886:	eb06 0787 	add.w	r7, r6, r7, lsl #2
    688a:	f857 8c04 	ldr.w	r8, [r7, #-4]
    688e:	4640      	mov	r0, r8
    6890:	f7ff fd8c 	bl	63ac <__hi0bits>
    6894:	f1c0 0320 	rsb	r3, r0, #32
    6898:	280a      	cmp	r0, #10
    689a:	600b      	str	r3, [r1, #0]
    689c:	f1a7 0204 	sub.w	r2, r7, #4
    68a0:	dc18      	bgt.n	68d4 <__b2d+0x58>
    68a2:	4296      	cmp	r6, r2
    68a4:	bf2c      	ite	cs
    68a6:	2200      	movcs	r2, #0
    68a8:	f857 2c08 	ldrcc.w	r2, [r7, #-8]
    68ac:	f1c0 030b 	rsb	r3, r0, #11
    68b0:	fa28 f103 	lsr.w	r1, r8, r3
    68b4:	bf38      	it	cc
    68b6:	40da      	lsrcc	r2, r3
    68b8:	f100 0315 	add.w	r3, r0, #21
    68bc:	f041 557f 	orr.w	r5, r1, #1069547520	; 0x3fc00000
    68c0:	fa08 f303 	lsl.w	r3, r8, r3
    68c4:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    68c8:	ea43 0402 	orr.w	r4, r3, r2
    68cc:	4620      	mov	r0, r4
    68ce:	4629      	mov	r1, r5
    68d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    68d4:	4296      	cmp	r6, r2
    68d6:	f1a0 030b 	sub.w	r3, r0, #11
    68da:	d21d      	bcs.n	6918 <__b2d+0x9c>
    68dc:	f857 0c08 	ldr.w	r0, [r7, #-8]
    68e0:	b1e3      	cbz	r3, 691c <__b2d+0xa0>
    68e2:	fa08 f803 	lsl.w	r8, r8, r3
    68e6:	f048 587f 	orr.w	r8, r8, #1069547520	; 0x3fc00000
    68ea:	f1c3 0120 	rsb	r1, r3, #32
    68ee:	f1a7 0208 	sub.w	r2, r7, #8
    68f2:	fa20 fc01 	lsr.w	ip, r0, r1
    68f6:	f448 1840 	orr.w	r8, r8, #3145728	; 0x300000
    68fa:	4296      	cmp	r6, r2
    68fc:	fa00 f003 	lsl.w	r0, r0, r3
    6900:	ea48 050c 	orr.w	r5, r8, ip
    6904:	d203      	bcs.n	690e <__b2d+0x92>
    6906:	f857 3c0c 	ldr.w	r3, [r7, #-12]
    690a:	40cb      	lsrs	r3, r1
    690c:	4318      	orrs	r0, r3
    690e:	4604      	mov	r4, r0
    6910:	4620      	mov	r0, r4
    6912:	4629      	mov	r1, r5
    6914:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    6918:	b933      	cbnz	r3, 6928 <__b2d+0xac>
    691a:	4618      	mov	r0, r3
    691c:	f048 557f 	orr.w	r5, r8, #1069547520	; 0x3fc00000
    6920:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    6924:	4604      	mov	r4, r0
    6926:	e7f3      	b.n	6910 <__b2d+0x94>
    6928:	2000      	movs	r0, #0
    692a:	fa08 f303 	lsl.w	r3, r8, r3
    692e:	f043 557f 	orr.w	r5, r3, #1069547520	; 0x3fc00000
    6932:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
    6936:	4604      	mov	r4, r0
    6938:	e7ea      	b.n	6910 <__b2d+0x94>
    693a:	bf00      	nop

Disassembly of section .text.__d2b:

0000693c <__d2b>:
    693c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    6940:	461c      	mov	r4, r3
    6942:	b082      	sub	sp, #8
    6944:	2101      	movs	r1, #1
    6946:	e9dd 6508 	ldrd	r6, r5, [sp, #32]
    694a:	4690      	mov	r8, r2
    694c:	f7ff fc70 	bl	6230 <_Balloc>
    6950:	4623      	mov	r3, r4
    6952:	f3c4 540a 	ubfx	r4, r4, #20, #11
    6956:	4607      	mov	r7, r0
    6958:	f3c3 0313 	ubfx	r3, r3, #0, #20
    695c:	b10c      	cbz	r4, 6962 <__d2b+0x26>
    695e:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
    6962:	f1b8 0200 	subs.w	r2, r8, #0
    6966:	9301      	str	r3, [sp, #4]
    6968:	d01e      	beq.n	69a8 <__d2b+0x6c>
    696a:	a802      	add	r0, sp, #8
    696c:	f840 2d08 	str.w	r2, [r0, #-8]!
    6970:	f7ff fd3c 	bl	63ec <__lo0bits>
    6974:	bb70      	cbnz	r0, 69d4 <__d2b+0x98>
    6976:	e9dd 2300 	ldrd	r2, r3, [sp]
    697a:	617a      	str	r2, [r7, #20]
    697c:	2b00      	cmp	r3, #0
    697e:	bf0c      	ite	eq
    6980:	2101      	moveq	r1, #1
    6982:	2102      	movne	r1, #2
    6984:	61bb      	str	r3, [r7, #24]
    6986:	6139      	str	r1, [r7, #16]
    6988:	b9cc      	cbnz	r4, 69be <__d2b+0x82>
    698a:	eb07 0381 	add.w	r3, r7, r1, lsl #2
    698e:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
    6992:	6030      	str	r0, [r6, #0]
    6994:	6918      	ldr	r0, [r3, #16]
    6996:	f7ff fd09 	bl	63ac <__hi0bits>
    699a:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
    699e:	6028      	str	r0, [r5, #0]
    69a0:	4638      	mov	r0, r7
    69a2:	b002      	add	sp, #8
    69a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    69a8:	a801      	add	r0, sp, #4
    69aa:	f7ff fd1f 	bl	63ec <__lo0bits>
    69ae:	2201      	movs	r2, #1
    69b0:	9b01      	ldr	r3, [sp, #4]
    69b2:	4611      	mov	r1, r2
    69b4:	3020      	adds	r0, #32
    69b6:	e9c7 2304 	strd	r2, r3, [r7, #16]
    69ba:	2c00      	cmp	r4, #0
    69bc:	d0e5      	beq.n	698a <__d2b+0x4e>
    69be:	f2a4 4333 	subw	r3, r4, #1075	; 0x433
    69c2:	4403      	add	r3, r0
    69c4:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
    69c8:	6033      	str	r3, [r6, #0]
    69ca:	6028      	str	r0, [r5, #0]
    69cc:	4638      	mov	r0, r7
    69ce:	b002      	add	sp, #8
    69d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
    69d4:	9b01      	ldr	r3, [sp, #4]
    69d6:	f1c0 0220 	rsb	r2, r0, #32
    69da:	9900      	ldr	r1, [sp, #0]
    69dc:	fa03 f202 	lsl.w	r2, r3, r2
    69e0:	430a      	orrs	r2, r1
    69e2:	40c3      	lsrs	r3, r0
    69e4:	9301      	str	r3, [sp, #4]
    69e6:	617a      	str	r2, [r7, #20]
    69e8:	e7c8      	b.n	697c <__d2b+0x40>
    69ea:	bf00      	nop

Disassembly of section .text.__ratio:

000069ec <__ratio>:
    69ec:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    69f0:	b083      	sub	sp, #12
    69f2:	460f      	mov	r7, r1
    69f4:	4669      	mov	r1, sp
    69f6:	4606      	mov	r6, r0
    69f8:	f7ff ff40 	bl	687c <__b2d>
    69fc:	4604      	mov	r4, r0
    69fe:	460d      	mov	r5, r1
    6a00:	4638      	mov	r0, r7
    6a02:	a901      	add	r1, sp, #4
    6a04:	f7ff ff3a 	bl	687c <__b2d>
    6a08:	6936      	ldr	r6, [r6, #16]
    6a0a:	693a      	ldr	r2, [r7, #16]
    6a0c:	4689      	mov	r9, r1
    6a0e:	e9dd 1300 	ldrd	r1, r3, [sp]
    6a12:	1ab6      	subs	r6, r6, r2
    6a14:	1acb      	subs	r3, r1, r3
    6a16:	eb03 1346 	add.w	r3, r3, r6, lsl #5
    6a1a:	2b00      	cmp	r3, #0
    6a1c:	4680      	mov	r8, r0
    6a1e:	dd0b      	ble.n	6a38 <__ratio+0x4c>
    6a20:	eb05 5703 	add.w	r7, r5, r3, lsl #20
    6a24:	463d      	mov	r5, r7
    6a26:	4642      	mov	r2, r8
    6a28:	464b      	mov	r3, r9
    6a2a:	4620      	mov	r0, r4
    6a2c:	4629      	mov	r1, r5
    6a2e:	f7fb fcb9 	bl	23a4 <__aeabi_ddiv>
    6a32:	b003      	add	sp, #12
    6a34:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    6a38:	ebc3 3303 	rsb	r3, r3, r3, lsl #12
    6a3c:	eb09 5103 	add.w	r1, r9, r3, lsl #20
    6a40:	4689      	mov	r9, r1
    6a42:	e7f0      	b.n	6a26 <__ratio+0x3a>

Disassembly of section .text._mprec_log10:

00006a44 <_mprec_log10>:
    6a44:	2817      	cmp	r0, #23
    6a46:	b5d0      	push	{r4, r6, r7, lr}
    6a48:	4604      	mov	r4, r0
    6a4a:	dd0a      	ble.n	6a62 <_mprec_log10+0x1e>
    6a4c:	2000      	movs	r0, #0
    6a4e:	2600      	movs	r6, #0
    6a50:	4907      	ldr	r1, [pc, #28]	; (6a70 <_mprec_log10+0x2c>)
    6a52:	4f08      	ldr	r7, [pc, #32]	; (6a74 <_mprec_log10+0x30>)
    6a54:	4632      	mov	r2, r6
    6a56:	463b      	mov	r3, r7
    6a58:	f7fb fb7a 	bl	2150 <__aeabi_dmul>
    6a5c:	3c01      	subs	r4, #1
    6a5e:	d1f9      	bne.n	6a54 <_mprec_log10+0x10>
    6a60:	bdd0      	pop	{r4, r6, r7, pc}
    6a62:	4b05      	ldr	r3, [pc, #20]	; (6a78 <_mprec_log10+0x34>)
    6a64:	eb03 04c0 	add.w	r4, r3, r0, lsl #3
    6a68:	e9d4 0100 	ldrd	r0, r1, [r4]
    6a6c:	bdd0      	pop	{r4, r6, r7, pc}
    6a6e:	bf00      	nop
    6a70:	3ff00000 	.word	0x3ff00000
    6a74:	40240000 	.word	0x40240000
    6a78:	00008ab8 	.word	0x00008ab8

Disassembly of section .text.__copybits:

00006a7c <__copybits>:
    6a7c:	b470      	push	{r4, r5, r6}
    6a7e:	6914      	ldr	r4, [r2, #16]
    6a80:	1e4d      	subs	r5, r1, #1
    6a82:	f102 0314 	add.w	r3, r2, #20
    6a86:	eb03 0184 	add.w	r1, r3, r4, lsl #2
    6a8a:	116d      	asrs	r5, r5, #5
    6a8c:	3501      	adds	r5, #1
    6a8e:	428b      	cmp	r3, r1
    6a90:	eb00 0485 	add.w	r4, r0, r5, lsl #2
    6a94:	d20c      	bcs.n	6ab0 <__copybits+0x34>
    6a96:	1f05      	subs	r5, r0, #4
    6a98:	f853 6b04 	ldr.w	r6, [r3], #4
    6a9c:	4299      	cmp	r1, r3
    6a9e:	f845 6f04 	str.w	r6, [r5, #4]!
    6aa2:	d8f9      	bhi.n	6a98 <__copybits+0x1c>
    6aa4:	1a8b      	subs	r3, r1, r2
    6aa6:	3b15      	subs	r3, #21
    6aa8:	f023 0303 	bic.w	r3, r3, #3
    6aac:	3304      	adds	r3, #4
    6aae:	4418      	add	r0, r3
    6ab0:	4284      	cmp	r4, r0
    6ab2:	d904      	bls.n	6abe <__copybits+0x42>
    6ab4:	2300      	movs	r3, #0
    6ab6:	f840 3b04 	str.w	r3, [r0], #4
    6aba:	4284      	cmp	r4, r0
    6abc:	d8fb      	bhi.n	6ab6 <__copybits+0x3a>
    6abe:	bc70      	pop	{r4, r5, r6}
    6ac0:	4770      	bx	lr
    6ac2:	bf00      	nop

Disassembly of section .text.__any_on:

00006ac4 <__any_on>:
    6ac4:	6903      	ldr	r3, [r0, #16]
    6ac6:	b410      	push	{r4}
    6ac8:	114c      	asrs	r4, r1, #5
    6aca:	42a3      	cmp	r3, r4
    6acc:	f100 0214 	add.w	r2, r0, #20
    6ad0:	da0f      	bge.n	6af2 <__any_on+0x2e>
    6ad2:	eb02 0383 	add.w	r3, r2, r3, lsl #2
    6ad6:	429a      	cmp	r2, r3
    6ad8:	d21c      	bcs.n	6b14 <__any_on+0x50>
    6ada:	f853 0c04 	ldr.w	r0, [r3, #-4]
    6ade:	3b04      	subs	r3, #4
    6ae0:	b118      	cbz	r0, 6aea <__any_on+0x26>
    6ae2:	e014      	b.n	6b0e <__any_on+0x4a>
    6ae4:	f853 1d04 	ldr.w	r1, [r3, #-4]!
    6ae8:	b989      	cbnz	r1, 6b0e <__any_on+0x4a>
    6aea:	429a      	cmp	r2, r3
    6aec:	d3fa      	bcc.n	6ae4 <__any_on+0x20>
    6aee:	bc10      	pop	{r4}
    6af0:	4770      	bx	lr
    6af2:	eb02 0384 	add.w	r3, r2, r4, lsl #2
    6af6:	ddee      	ble.n	6ad6 <__any_on+0x12>
    6af8:	f011 011f 	ands.w	r1, r1, #31
    6afc:	d0eb      	beq.n	6ad6 <__any_on+0x12>
    6afe:	f852 4024 	ldr.w	r4, [r2, r4, lsl #2]
    6b02:	fa24 f001 	lsr.w	r0, r4, r1
    6b06:	fa00 f101 	lsl.w	r1, r0, r1
    6b0a:	428c      	cmp	r4, r1
    6b0c:	d0e3      	beq.n	6ad6 <__any_on+0x12>
    6b0e:	2001      	movs	r0, #1
    6b10:	bc10      	pop	{r4}
    6b12:	4770      	bx	lr
    6b14:	2000      	movs	r0, #0
    6b16:	e7ea      	b.n	6aee <__any_on+0x2a>

Disassembly of section .text._sbrk_r:

00006b18 <_sbrk_r>:
    6b18:	b538      	push	{r3, r4, r5, lr}
    6b1a:	2300      	movs	r3, #0
    6b1c:	4c06      	ldr	r4, [pc, #24]	; (6b38 <_sbrk_r+0x20>)
    6b1e:	4605      	mov	r5, r0
    6b20:	4608      	mov	r0, r1
    6b22:	6023      	str	r3, [r4, #0]
    6b24:	f7f9 ff50 	bl	9c8 <_sbrk>
    6b28:	1c43      	adds	r3, r0, #1
    6b2a:	d000      	beq.n	6b2e <_sbrk_r+0x16>
    6b2c:	bd38      	pop	{r3, r4, r5, pc}
    6b2e:	6823      	ldr	r3, [r4, #0]
    6b30:	2b00      	cmp	r3, #0
    6b32:	d0fb      	beq.n	6b2c <_sbrk_r+0x14>
    6b34:	602b      	str	r3, [r5, #0]
    6b36:	bd38      	pop	{r3, r4, r5, pc}
    6b38:	20000a28 	.word	0x20000a28

Disassembly of section .text.__sread:

00006b3c <__sread>:
    6b3c:	b510      	push	{r4, lr}
    6b3e:	460c      	mov	r4, r1
    6b40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    6b44:	f001 fb24 	bl	8190 <_read_r>
    6b48:	2800      	cmp	r0, #0
    6b4a:	db03      	blt.n	6b54 <__sread+0x18>
    6b4c:	6d23      	ldr	r3, [r4, #80]	; 0x50
    6b4e:	4403      	add	r3, r0
    6b50:	6523      	str	r3, [r4, #80]	; 0x50
    6b52:	bd10      	pop	{r4, pc}
    6b54:	89a3      	ldrh	r3, [r4, #12]
    6b56:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
    6b5a:	81a3      	strh	r3, [r4, #12]
    6b5c:	bd10      	pop	{r4, pc}
    6b5e:	bf00      	nop

Disassembly of section .text.__seofread:

00006b60 <__seofread>:
    6b60:	2000      	movs	r0, #0
    6b62:	4770      	bx	lr

Disassembly of section .text.__swrite:

00006b64 <__swrite>:
    6b64:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
    6b68:	f9b1 400c 	ldrsh.w	r4, [r1, #12]
    6b6c:	4698      	mov	r8, r3
    6b6e:	05e3      	lsls	r3, r4, #23
    6b70:	460d      	mov	r5, r1
    6b72:	4617      	mov	r7, r2
    6b74:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    6b78:	4606      	mov	r6, r0
    6b7a:	d507      	bpl.n	6b8c <__swrite+0x28>
    6b7c:	2302      	movs	r3, #2
    6b7e:	2200      	movs	r2, #0
    6b80:	f001 fa66 	bl	8050 <_lseek_r>
    6b84:	f9b5 400c 	ldrsh.w	r4, [r5, #12]
    6b88:	f9b5 100e 	ldrsh.w	r1, [r5, #14]
    6b8c:	f424 5480 	bic.w	r4, r4, #4096	; 0x1000
    6b90:	81ac      	strh	r4, [r5, #12]
    6b92:	4643      	mov	r3, r8
    6b94:	463a      	mov	r2, r7
    6b96:	4630      	mov	r0, r6
    6b98:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
    6b9c:	f000 beaa 	b.w	78f4 <_write_r>

Disassembly of section .text.__sseek:

00006ba0 <__sseek>:
    6ba0:	b510      	push	{r4, lr}
    6ba2:	460c      	mov	r4, r1
    6ba4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    6ba8:	f001 fa52 	bl	8050 <_lseek_r>
    6bac:	89a3      	ldrh	r3, [r4, #12]
    6bae:	1c42      	adds	r2, r0, #1
    6bb0:	bf0e      	itee	eq
    6bb2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
    6bb6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
    6bba:	6520      	strne	r0, [r4, #80]	; 0x50
    6bbc:	81a3      	strh	r3, [r4, #12]
    6bbe:	bd10      	pop	{r4, pc}

Disassembly of section .text.__sclose:

00006bc0 <__sclose>:
    6bc0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
    6bc4:	f000 bf42 	b.w	7a4c <_close_r>

Disassembly of section .text.strlen:

00006bc8 <strlen>:
    6bc8:	f020 0103 	bic.w	r1, r0, #3
    6bcc:	f010 0003 	ands.w	r0, r0, #3
    6bd0:	f1c0 0000 	rsb	r0, r0, #0
    6bd4:	f851 3b04 	ldr.w	r3, [r1], #4
    6bd8:	f100 0c04 	add.w	ip, r0, #4
    6bdc:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
    6be0:	f06f 0200 	mvn.w	r2, #0
    6be4:	bf1c      	itt	ne
    6be6:	fa22 f20c 	lsrne.w	r2, r2, ip
    6bea:	4313      	orrne	r3, r2
    6bec:	f04f 0c01 	mov.w	ip, #1
    6bf0:	ea4c 2c0c 	orr.w	ip, ip, ip, lsl #8
    6bf4:	ea4c 4c0c 	orr.w	ip, ip, ip, lsl #16
    6bf8:	eba3 020c 	sub.w	r2, r3, ip
    6bfc:	ea22 0203 	bic.w	r2, r2, r3
    6c00:	ea12 12cc 	ands.w	r2, r2, ip, lsl #7
    6c04:	bf04      	itt	eq
    6c06:	f851 3b04 	ldreq.w	r3, [r1], #4
    6c0a:	3004      	addeq	r0, #4
    6c0c:	d0f4      	beq.n	6bf8 <strlen+0x30>
    6c0e:	f1c2 0100 	rsb	r1, r2, #0
    6c12:	ea02 0201 	and.w	r2, r2, r1
    6c16:	fab2 f282 	clz	r2, r2
    6c1a:	f1c2 021f 	rsb	r2, r2, #31
    6c1e:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
    6c22:	4770      	bx	lr

Disassembly of section .text.__sprint_r.part.0:

00006c24 <__sprint_r.part.0>:
    6c24:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6c28:	6e4b      	ldr	r3, [r1, #100]	; 0x64
    6c2a:	4692      	mov	sl, r2
    6c2c:	049c      	lsls	r4, r3, #18
    6c2e:	d52d      	bpl.n	6c8c <__sprint_r.part.0+0x68>
    6c30:	6893      	ldr	r3, [r2, #8]
    6c32:	6812      	ldr	r2, [r2, #0]
    6c34:	b343      	cbz	r3, 6c88 <__sprint_r.part.0+0x64>
    6c36:	460e      	mov	r6, r1
    6c38:	4607      	mov	r7, r0
    6c3a:	f102 0908 	add.w	r9, r2, #8
    6c3e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
    6c42:	ea5f 089b 	movs.w	r8, fp, lsr #2
    6c46:	d015      	beq.n	6c74 <__sprint_r.part.0+0x50>
    6c48:	2400      	movs	r4, #0
    6c4a:	3d04      	subs	r5, #4
    6c4c:	e001      	b.n	6c52 <__sprint_r.part.0+0x2e>
    6c4e:	45a0      	cmp	r8, r4
    6c50:	d00e      	beq.n	6c70 <__sprint_r.part.0+0x4c>
    6c52:	4632      	mov	r2, r6
    6c54:	f855 1f04 	ldr.w	r1, [r5, #4]!
    6c58:	4638      	mov	r0, r7
    6c5a:	f000 ffc3 	bl	7be4 <_fputwc_r>
    6c5e:	1c43      	adds	r3, r0, #1
    6c60:	f104 0401 	add.w	r4, r4, #1
    6c64:	d1f3      	bne.n	6c4e <__sprint_r.part.0+0x2a>
    6c66:	2300      	movs	r3, #0
    6c68:	e9ca 3301 	strd	r3, r3, [sl, #4]
    6c6c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6c70:	f8da 3008 	ldr.w	r3, [sl, #8]
    6c74:	f02b 0b03 	bic.w	fp, fp, #3
    6c78:	eba3 030b 	sub.w	r3, r3, fp
    6c7c:	f8ca 3008 	str.w	r3, [sl, #8]
    6c80:	f109 0908 	add.w	r9, r9, #8
    6c84:	2b00      	cmp	r3, #0
    6c86:	d1da      	bne.n	6c3e <__sprint_r.part.0+0x1a>
    6c88:	2000      	movs	r0, #0
    6c8a:	e7ec      	b.n	6c66 <__sprint_r.part.0+0x42>
    6c8c:	f001 f80c 	bl	7ca8 <__sfvwrite_r>
    6c90:	2300      	movs	r3, #0
    6c92:	e9ca 3301 	strd	r3, r3, [sl, #4]
    6c96:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6c9a:	bf00      	nop

Disassembly of section .text.__sprint_r:

00006c9c <__sprint_r>:
    6c9c:	6893      	ldr	r3, [r2, #8]
    6c9e:	b10b      	cbz	r3, 6ca4 <__sprint_r+0x8>
    6ca0:	f7ff bfc0 	b.w	6c24 <__sprint_r.part.0>
    6ca4:	b410      	push	{r4}
    6ca6:	4618      	mov	r0, r3
    6ca8:	6053      	str	r3, [r2, #4]
    6caa:	bc10      	pop	{r4}
    6cac:	4770      	bx	lr
    6cae:	bf00      	nop

Disassembly of section .text._vfiprintf_r:

00006cb0 <_vfiprintf_r>:
    6cb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    6cb4:	b0ad      	sub	sp, #180	; 0xb4
    6cb6:	461c      	mov	r4, r3
    6cb8:	9102      	str	r1, [sp, #8]
    6cba:	4691      	mov	r9, r2
    6cbc:	e9cd 0307 	strd	r0, r3, [sp, #28]
    6cc0:	b118      	cbz	r0, 6cca <_vfiprintf_r+0x1a>
    6cc2:	6b83      	ldr	r3, [r0, #56]	; 0x38
    6cc4:	2b00      	cmp	r3, #0
    6cc6:	f000 83a4 	beq.w	7412 <_vfiprintf_r+0x762>
    6cca:	9b02      	ldr	r3, [sp, #8]
    6ccc:	f9b3 100c 	ldrsh.w	r1, [r3, #12]
    6cd0:	6e5b      	ldr	r3, [r3, #100]	; 0x64
    6cd2:	b28a      	uxth	r2, r1
    6cd4:	07d8      	lsls	r0, r3, #31
    6cd6:	d402      	bmi.n	6cde <_vfiprintf_r+0x2e>
    6cd8:	0593      	lsls	r3, r2, #22
    6cda:	f140 8521 	bpl.w	7720 <_vfiprintf_r+0xa70>
    6cde:	0497      	lsls	r7, r2, #18
    6ce0:	d408      	bmi.n	6cf4 <_vfiprintf_r+0x44>
    6ce2:	9802      	ldr	r0, [sp, #8]
    6ce4:	f441 5200 	orr.w	r2, r1, #8192	; 0x2000
    6ce8:	6e43      	ldr	r3, [r0, #100]	; 0x64
    6cea:	8182      	strh	r2, [r0, #12]
    6cec:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
    6cf0:	b292      	uxth	r2, r2
    6cf2:	6643      	str	r3, [r0, #100]	; 0x64
    6cf4:	0716      	lsls	r6, r2, #28
    6cf6:	f140 80ff 	bpl.w	6ef8 <_vfiprintf_r+0x248>
    6cfa:	9b02      	ldr	r3, [sp, #8]
    6cfc:	691b      	ldr	r3, [r3, #16]
    6cfe:	2b00      	cmp	r3, #0
    6d00:	f000 80fa 	beq.w	6ef8 <_vfiprintf_r+0x248>
    6d04:	f002 031a 	and.w	r3, r2, #26
    6d08:	2b0a      	cmp	r3, #10
    6d0a:	f000 8369 	beq.w	73e0 <_vfiprintf_r+0x730>
    6d0e:	2300      	movs	r3, #0
    6d10:	f10d 0b70 	add.w	fp, sp, #112	; 0x70
    6d14:	46da      	mov	sl, fp
    6d16:	e9cd 3310 	strd	r3, r3, [sp, #64]	; 0x40
    6d1a:	930a      	str	r3, [sp, #40]	; 0x28
    6d1c:	9304      	str	r3, [sp, #16]
    6d1e:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
    6d22:	f899 3000 	ldrb.w	r3, [r9]
    6d26:	2b00      	cmp	r3, #0
    6d28:	f000 841f 	beq.w	756a <_vfiprintf_r+0x8ba>
    6d2c:	2b25      	cmp	r3, #37	; 0x25
    6d2e:	464c      	mov	r4, r9
    6d30:	d102      	bne.n	6d38 <_vfiprintf_r+0x88>
    6d32:	e01c      	b.n	6d6e <_vfiprintf_r+0xbe>
    6d34:	2b25      	cmp	r3, #37	; 0x25
    6d36:	d003      	beq.n	6d40 <_vfiprintf_r+0x90>
    6d38:	f814 3f01 	ldrb.w	r3, [r4, #1]!
    6d3c:	2b00      	cmp	r3, #0
    6d3e:	d1f9      	bne.n	6d34 <_vfiprintf_r+0x84>
    6d40:	eba4 0509 	sub.w	r5, r4, r9
    6d44:	b17d      	cbz	r5, 6d66 <_vfiprintf_r+0xb6>
    6d46:	e9dd 3210 	ldrd	r3, r2, [sp, #64]	; 0x40
    6d4a:	3301      	adds	r3, #1
    6d4c:	442a      	add	r2, r5
    6d4e:	2b07      	cmp	r3, #7
    6d50:	e9ca 9500 	strd	r9, r5, [sl]
    6d54:	e9cd 3210 	strd	r3, r2, [sp, #64]	; 0x40
    6d58:	f300 80e5 	bgt.w	6f26 <_vfiprintf_r+0x276>
    6d5c:	f10a 0a08 	add.w	sl, sl, #8
    6d60:	9b04      	ldr	r3, [sp, #16]
    6d62:	442b      	add	r3, r5
    6d64:	9304      	str	r3, [sp, #16]
    6d66:	7823      	ldrb	r3, [r4, #0]
    6d68:	2b00      	cmp	r3, #0
    6d6a:	f000 83fe 	beq.w	756a <_vfiprintf_r+0x8ba>
    6d6e:	2100      	movs	r1, #0
    6d70:	f04f 0300 	mov.w	r3, #0
    6d74:	4608      	mov	r0, r1
    6d76:	460f      	mov	r7, r1
    6d78:	f04f 38ff 	mov.w	r8, #4294967295
    6d7c:	7862      	ldrb	r2, [r4, #1]
    6d7e:	f88d 3037 	strb.w	r3, [sp, #55]	; 0x37
    6d82:	9106      	str	r1, [sp, #24]
    6d84:	f104 0901 	add.w	r9, r4, #1
    6d88:	f109 0901 	add.w	r9, r9, #1
    6d8c:	f1a2 0320 	sub.w	r3, r2, #32
    6d90:	2b58      	cmp	r3, #88	; 0x58
    6d92:	f200 8343 	bhi.w	741c <_vfiprintf_r+0x76c>
    6d96:	e8df f013 	tbh	[pc, r3, lsl #1]
    6d9a:	02dd      	.short	0x02dd
    6d9c:	03410341 	.word	0x03410341
    6da0:	034102d8 	.word	0x034102d8
    6da4:	03410341 	.word	0x03410341
    6da8:	03410341 	.word	0x03410341
    6dac:	02cb0341 	.word	0x02cb0341
    6db0:	034102ea 	.word	0x034102ea
    6db4:	02ef02e5 	.word	0x02ef02e5
    6db8:	00db0341 	.word	0x00db0341
    6dbc:	00cc00cc 	.word	0x00cc00cc
    6dc0:	00cc00cc 	.word	0x00cc00cc
    6dc4:	00cc00cc 	.word	0x00cc00cc
    6dc8:	00cc00cc 	.word	0x00cc00cc
    6dcc:	034100cc 	.word	0x034100cc
    6dd0:	03410341 	.word	0x03410341
    6dd4:	03410341 	.word	0x03410341
    6dd8:	03410341 	.word	0x03410341
    6ddc:	03410341 	.word	0x03410341
    6de0:	02b60341 	.word	0x02b60341
    6de4:	03410341 	.word	0x03410341
    6de8:	03410341 	.word	0x03410341
    6dec:	03410341 	.word	0x03410341
    6df0:	03410341 	.word	0x03410341
    6df4:	03410341 	.word	0x03410341
    6df8:	0341009e 	.word	0x0341009e
    6dfc:	03410341 	.word	0x03410341
    6e00:	03410341 	.word	0x03410341
    6e04:	03410059 	.word	0x03410059
    6e08:	02a10341 	.word	0x02a10341
    6e0c:	03410341 	.word	0x03410341
    6e10:	03410341 	.word	0x03410341
    6e14:	03410341 	.word	0x03410341
    6e18:	03410341 	.word	0x03410341
    6e1c:	03410341 	.word	0x03410341
    6e20:	017c0199 	.word	0x017c0199
    6e24:	03410341 	.word	0x03410341
    6e28:	01770341 	.word	0x01770341
    6e2c:	0341017c 	.word	0x0341017c
    6e30:	016a0341 	.word	0x016a0341
    6e34:	01560341 	.word	0x01560341
    6e38:	012600a0 	.word	0x012600a0
    6e3c:	03410121 	.word	0x03410121
    6e40:	03410101 	.word	0x03410101
    6e44:	0341005b 	.word	0x0341005b
    6e48:	00e00341 	.word	0x00e00341
    6e4c:	f047 0710 	orr.w	r7, r7, #16
    6e50:	06bb      	lsls	r3, r7, #26
    6e52:	f140 82ab 	bpl.w	73ac <_vfiprintf_r+0x6fc>
    6e56:	9c08      	ldr	r4, [sp, #32]
    6e58:	f1b8 3fff 	cmp.w	r8, #4294967295
    6e5c:	f104 0407 	add.w	r4, r4, #7
    6e60:	f024 0307 	bic.w	r3, r4, #7
    6e64:	f103 0208 	add.w	r2, r3, #8
    6e68:	9208      	str	r2, [sp, #32]
    6e6a:	f04f 0200 	mov.w	r2, #0
    6e6e:	e9d3 4500 	ldrd	r4, r5, [r3]
    6e72:	f88d 2037 	strb.w	r2, [sp, #55]	; 0x37
    6e76:	f04f 0301 	mov.w	r3, #1
    6e7a:	f040 80ca 	bne.w	7012 <_vfiprintf_r+0x362>
    6e7e:	2200      	movs	r2, #0
    6e80:	9703      	str	r7, [sp, #12]
    6e82:	9209      	str	r2, [sp, #36]	; 0x24
    6e84:	2b01      	cmp	r3, #1
    6e86:	f000 83fa 	beq.w	767e <_vfiprintf_r+0x9ce>
    6e8a:	2b02      	cmp	r3, #2
    6e8c:	f000 8386 	beq.w	759c <_vfiprintf_r+0x8ec>
    6e90:	4659      	mov	r1, fp
    6e92:	e000      	b.n	6e96 <_vfiprintf_r+0x1e6>
    6e94:	4631      	mov	r1, r6
    6e96:	08e2      	lsrs	r2, r4, #3
    6e98:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
    6e9c:	08e8      	lsrs	r0, r5, #3
    6e9e:	f004 0307 	and.w	r3, r4, #7
    6ea2:	4605      	mov	r5, r0
    6ea4:	4614      	mov	r4, r2
    6ea6:	3330      	adds	r3, #48	; 0x30
    6ea8:	ea54 0205 	orrs.w	r2, r4, r5
    6eac:	f801 3c01 	strb.w	r3, [r1, #-1]
    6eb0:	f101 36ff 	add.w	r6, r1, #4294967295
    6eb4:	d1ee      	bne.n	6e94 <_vfiprintf_r+0x1e4>
    6eb6:	9a03      	ldr	r2, [sp, #12]
    6eb8:	07d7      	lsls	r7, r2, #31
    6eba:	f140 837f 	bpl.w	75bc <_vfiprintf_r+0x90c>
    6ebe:	2b30      	cmp	r3, #48	; 0x30
    6ec0:	f000 837c 	beq.w	75bc <_vfiprintf_r+0x90c>
    6ec4:	2330      	movs	r3, #48	; 0x30
    6ec6:	3902      	subs	r1, #2
    6ec8:	f806 3c01 	strb.w	r3, [r6, #-1]
    6ecc:	ebab 0301 	sub.w	r3, fp, r1
    6ed0:	9305      	str	r3, [sp, #20]
    6ed2:	460e      	mov	r6, r1
    6ed4:	e375      	b.n	75c2 <_vfiprintf_r+0x912>
    6ed6:	f047 0710 	orr.w	r7, r7, #16
    6eda:	f017 0320 	ands.w	r3, r7, #32
    6ede:	f000 826f 	beq.w	73c0 <_vfiprintf_r+0x710>
    6ee2:	9c08      	ldr	r4, [sp, #32]
    6ee4:	3407      	adds	r4, #7
    6ee6:	f024 0307 	bic.w	r3, r4, #7
    6eea:	f103 0208 	add.w	r2, r3, #8
    6eee:	e9d3 4500 	ldrd	r4, r5, [r3]
    6ef2:	9208      	str	r2, [sp, #32]
    6ef4:	2300      	movs	r3, #0
    6ef6:	e084      	b.n	7002 <_vfiprintf_r+0x352>
    6ef8:	9d02      	ldr	r5, [sp, #8]
    6efa:	9807      	ldr	r0, [sp, #28]
    6efc:	4629      	mov	r1, r5
    6efe:	f7fd f9b5 	bl	426c <__swsetup_r>
    6f02:	2800      	cmp	r0, #0
    6f04:	f000 8266 	beq.w	73d4 <_vfiprintf_r+0x724>
    6f08:	9a02      	ldr	r2, [sp, #8]
    6f0a:	6e53      	ldr	r3, [r2, #100]	; 0x64
    6f0c:	07dd      	lsls	r5, r3, #31
    6f0e:	d403      	bmi.n	6f18 <_vfiprintf_r+0x268>
    6f10:	8993      	ldrh	r3, [r2, #12]
    6f12:	059c      	lsls	r4, r3, #22
    6f14:	f140 843b 	bpl.w	778e <_vfiprintf_r+0xade>
    6f18:	f04f 33ff 	mov.w	r3, #4294967295
    6f1c:	9304      	str	r3, [sp, #16]
    6f1e:	9804      	ldr	r0, [sp, #16]
    6f20:	b02d      	add	sp, #180	; 0xb4
    6f22:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    6f26:	2a00      	cmp	r2, #0
    6f28:	f040 83b9 	bne.w	769e <_vfiprintf_r+0x9ee>
    6f2c:	9210      	str	r2, [sp, #64]	; 0x40
    6f2e:	46da      	mov	sl, fp
    6f30:	e716      	b.n	6d60 <_vfiprintf_r+0xb0>
    6f32:	2400      	movs	r4, #0
    6f34:	f1a2 0330 	sub.w	r3, r2, #48	; 0x30
    6f38:	f819 2b01 	ldrb.w	r2, [r9], #1
    6f3c:	eb04 0484 	add.w	r4, r4, r4, lsl #2
    6f40:	eb03 0444 	add.w	r4, r3, r4, lsl #1
    6f44:	f1a2 0330 	sub.w	r3, r2, #48	; 0x30
    6f48:	2b09      	cmp	r3, #9
    6f4a:	d9f5      	bls.n	6f38 <_vfiprintf_r+0x288>
    6f4c:	9406      	str	r4, [sp, #24]
    6f4e:	e71d      	b.n	6d8c <_vfiprintf_r+0xdc>
    6f50:	f047 0780 	orr.w	r7, r7, #128	; 0x80
    6f54:	f899 2000 	ldrb.w	r2, [r9]
    6f58:	e716      	b.n	6d88 <_vfiprintf_r+0xd8>
    6f5a:	2900      	cmp	r1, #0
    6f5c:	f040 84ac 	bne.w	78b8 <_vfiprintf_r+0xc08>
    6f60:	4bc5      	ldr	r3, [pc, #788]	; (7278 <_vfiprintf_r+0x5c8>)
    6f62:	06bc      	lsls	r4, r7, #26
    6f64:	930a      	str	r3, [sp, #40]	; 0x28
    6f66:	f140 81c1 	bpl.w	72ec <_vfiprintf_r+0x63c>
    6f6a:	9c08      	ldr	r4, [sp, #32]
    6f6c:	3407      	adds	r4, #7
    6f6e:	f024 0307 	bic.w	r3, r4, #7
    6f72:	f103 0108 	add.w	r1, r3, #8
    6f76:	9108      	str	r1, [sp, #32]
    6f78:	e9d3 4500 	ldrd	r4, r5, [r3]
    6f7c:	07fb      	lsls	r3, r7, #31
    6f7e:	f140 824b 	bpl.w	7418 <_vfiprintf_r+0x768>
    6f82:	ea54 0305 	orrs.w	r3, r4, r5
    6f86:	f000 8247 	beq.w	7418 <_vfiprintf_r+0x768>
    6f8a:	2330      	movs	r3, #48	; 0x30
    6f8c:	f88d 2039 	strb.w	r2, [sp, #57]	; 0x39
    6f90:	f88d 3038 	strb.w	r3, [sp, #56]	; 0x38
    6f94:	f047 0702 	orr.w	r7, r7, #2
    6f98:	2302      	movs	r3, #2
    6f9a:	e032      	b.n	7002 <_vfiprintf_r+0x352>
    6f9c:	f04f 0200 	mov.w	r2, #0
    6fa0:	9b08      	ldr	r3, [sp, #32]
    6fa2:	f88d 2037 	strb.w	r2, [sp, #55]	; 0x37
    6fa6:	681e      	ldr	r6, [r3, #0]
    6fa8:	1d1c      	adds	r4, r3, #4
    6faa:	2e00      	cmp	r6, #0
    6fac:	f000 83f6 	beq.w	779c <_vfiprintf_r+0xaec>
    6fb0:	f1b8 3fff 	cmp.w	r8, #4294967295
    6fb4:	f000 843b 	beq.w	782e <_vfiprintf_r+0xb7e>
    6fb8:	4642      	mov	r2, r8
    6fba:	2100      	movs	r1, #0
    6fbc:	4630      	mov	r0, r6
    6fbe:	f7ff f8e5 	bl	618c <memchr>
    6fc2:	2800      	cmp	r0, #0
    6fc4:	f000 844d 	beq.w	7862 <_vfiprintf_r+0xbb2>
    6fc8:	1b83      	subs	r3, r0, r6
    6fca:	9305      	str	r3, [sp, #20]
    6fcc:	f89d 3037 	ldrb.w	r3, [sp, #55]	; 0x37
    6fd0:	9408      	str	r4, [sp, #32]
    6fd2:	9703      	str	r7, [sp, #12]
    6fd4:	9309      	str	r3, [sp, #36]	; 0x24
    6fd6:	f04f 0800 	mov.w	r8, #0
    6fda:	e2f2      	b.n	75c2 <_vfiprintf_r+0x912>
    6fdc:	f047 0720 	orr.w	r7, r7, #32
    6fe0:	f899 2000 	ldrb.w	r2, [r9]
    6fe4:	e6d0      	b.n	6d88 <_vfiprintf_r+0xd8>
    6fe6:	f647 0330 	movw	r3, #30768	; 0x7830
    6fea:	9a08      	ldr	r2, [sp, #32]
    6fec:	f8ad 3038 	strh.w	r3, [sp, #56]	; 0x38
    6ff0:	1d13      	adds	r3, r2, #4
    6ff2:	9308      	str	r3, [sp, #32]
    6ff4:	4ba0      	ldr	r3, [pc, #640]	; (7278 <_vfiprintf_r+0x5c8>)
    6ff6:	2500      	movs	r5, #0
    6ff8:	930a      	str	r3, [sp, #40]	; 0x28
    6ffa:	2302      	movs	r3, #2
    6ffc:	6814      	ldr	r4, [r2, #0]
    6ffe:	f047 0702 	orr.w	r7, r7, #2
    7002:	f04f 0200 	mov.w	r2, #0
    7006:	f1b8 3fff 	cmp.w	r8, #4294967295
    700a:	f88d 2037 	strb.w	r2, [sp, #55]	; 0x37
    700e:	f43f af36 	beq.w	6e7e <_vfiprintf_r+0x1ce>
    7012:	2200      	movs	r2, #0
    7014:	9209      	str	r2, [sp, #36]	; 0x24
    7016:	f027 0280 	bic.w	r2, r7, #128	; 0x80
    701a:	9203      	str	r2, [sp, #12]
    701c:	ea54 0205 	orrs.w	r2, r4, r5
    7020:	f47f af30 	bne.w	6e84 <_vfiprintf_r+0x1d4>
    7024:	f1b8 0f00 	cmp.w	r8, #0
    7028:	f040 83d4 	bne.w	77d4 <_vfiprintf_r+0xb24>
    702c:	2b00      	cmp	r3, #0
    702e:	f040 8332 	bne.w	7696 <_vfiprintf_r+0x9e6>
    7032:	f017 0301 	ands.w	r3, r7, #1
    7036:	9305      	str	r3, [sp, #20]
    7038:	f000 837b 	beq.w	7732 <_vfiprintf_r+0xa82>
    703c:	2330      	movs	r3, #48	; 0x30
    703e:	ae2c      	add	r6, sp, #176	; 0xb0
    7040:	f806 3d41 	strb.w	r3, [r6, #-65]!
    7044:	e2bd      	b.n	75c2 <_vfiprintf_r+0x912>
    7046:	2900      	cmp	r1, #0
    7048:	f040 843a 	bne.w	78c0 <_vfiprintf_r+0xc10>
    704c:	9a08      	ldr	r2, [sp, #32]
    704e:	06b8      	lsls	r0, r7, #26
    7050:	f852 3b04 	ldr.w	r3, [r2], #4
    7054:	9208      	str	r2, [sp, #32]
    7056:	f100 837b 	bmi.w	7750 <_vfiprintf_r+0xaa0>
    705a:	06f9      	lsls	r1, r7, #27
    705c:	f100 83b6 	bmi.w	77cc <_vfiprintf_r+0xb1c>
    7060:	067a      	lsls	r2, r7, #25
    7062:	f140 83b3 	bpl.w	77cc <_vfiprintf_r+0xb1c>
    7066:	f8bd 2010 	ldrh.w	r2, [sp, #16]
    706a:	801a      	strh	r2, [r3, #0]
    706c:	e659      	b.n	6d22 <_vfiprintf_r+0x72>
    706e:	f899 2000 	ldrb.w	r2, [r9]
    7072:	2a6c      	cmp	r2, #108	; 0x6c
    7074:	bf03      	ittte	eq
    7076:	f899 2001 	ldrbeq.w	r2, [r9, #1]
    707a:	f047 0720 	orreq.w	r7, r7, #32
    707e:	f109 0901 	addeq.w	r9, r9, #1
    7082:	f047 0710 	orrne.w	r7, r7, #16
    7086:	e67f      	b.n	6d88 <_vfiprintf_r+0xd8>
    7088:	f047 0740 	orr.w	r7, r7, #64	; 0x40
    708c:	f899 2000 	ldrb.w	r2, [r9]
    7090:	e67a      	b.n	6d88 <_vfiprintf_r+0xd8>
    7092:	2900      	cmp	r1, #0
    7094:	f040 840c 	bne.w	78b0 <_vfiprintf_r+0xc00>
    7098:	06bb      	lsls	r3, r7, #26
    709a:	f140 813c 	bpl.w	7316 <_vfiprintf_r+0x666>
    709e:	9c08      	ldr	r4, [sp, #32]
    70a0:	3407      	adds	r4, #7
    70a2:	f024 0307 	bic.w	r3, r4, #7
    70a6:	f103 0208 	add.w	r2, r3, #8
    70aa:	9208      	str	r2, [sp, #32]
    70ac:	e9d3 4500 	ldrd	r4, r5, [r3]
    70b0:	2c00      	cmp	r4, #0
    70b2:	f175 0300 	sbcs.w	r3, r5, #0
    70b6:	f2c0 8305 	blt.w	76c4 <_vfiprintf_r+0xa14>
    70ba:	f89d 3037 	ldrb.w	r3, [sp, #55]	; 0x37
    70be:	9309      	str	r3, [sp, #36]	; 0x24
    70c0:	f1b8 3fff 	cmp.w	r8, #4294967295
    70c4:	f000 82da 	beq.w	767c <_vfiprintf_r+0x9cc>
    70c8:	2301      	movs	r3, #1
    70ca:	e7a4      	b.n	7016 <_vfiprintf_r+0x366>
    70cc:	2301      	movs	r3, #1
    70ce:	f04f 0000 	mov.w	r0, #0
    70d2:	9908      	ldr	r1, [sp, #32]
    70d4:	9301      	str	r3, [sp, #4]
    70d6:	680a      	ldr	r2, [r1, #0]
    70d8:	9305      	str	r3, [sp, #20]
    70da:	1d0b      	adds	r3, r1, #4
    70dc:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    70e0:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
    70e4:	9308      	str	r3, [sp, #32]
    70e6:	ae12      	add	r6, sp, #72	; 0x48
    70e8:	f04f 0800 	mov.w	r8, #0
    70ec:	9703      	str	r7, [sp, #12]
    70ee:	9b03      	ldr	r3, [sp, #12]
    70f0:	f013 0302 	ands.w	r3, r3, #2
    70f4:	d002      	beq.n	70fc <_vfiprintf_r+0x44c>
    70f6:	9a01      	ldr	r2, [sp, #4]
    70f8:	3202      	adds	r2, #2
    70fa:	9201      	str	r2, [sp, #4]
    70fc:	9c03      	ldr	r4, [sp, #12]
    70fe:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    7102:	f014 0484 	ands.w	r4, r4, #132	; 0x84
    7106:	f101 0001 	add.w	r0, r1, #1
    710a:	4684      	mov	ip, r0
    710c:	9409      	str	r4, [sp, #36]	; 0x24
    710e:	d138      	bne.n	7182 <_vfiprintf_r+0x4d2>
    7110:	9c06      	ldr	r4, [sp, #24]
    7112:	9d01      	ldr	r5, [sp, #4]
    7114:	1b64      	subs	r4, r4, r5
    7116:	2c00      	cmp	r4, #0
    7118:	dd33      	ble.n	7182 <_vfiprintf_r+0x4d2>
    711a:	2c10      	cmp	r4, #16
    711c:	f340 8393 	ble.w	7846 <_vfiprintf_r+0xb96>
    7120:	46d4      	mov	ip, sl
    7122:	2710      	movs	r7, #16
    7124:	469a      	mov	sl, r3
    7126:	4d55      	ldr	r5, [pc, #340]	; (727c <_vfiprintf_r+0x5cc>)
    7128:	4663      	mov	r3, ip
    712a:	e007      	b.n	713c <_vfiprintf_r+0x48c>
    712c:	f101 0e02 	add.w	lr, r1, #2
    7130:	4601      	mov	r1, r0
    7132:	3308      	adds	r3, #8
    7134:	3c10      	subs	r4, #16
    7136:	2c10      	cmp	r4, #16
    7138:	dd11      	ble.n	715e <_vfiprintf_r+0x4ae>
    713a:	1c48      	adds	r0, r1, #1
    713c:	3210      	adds	r2, #16
    713e:	2807      	cmp	r0, #7
    7140:	9211      	str	r2, [sp, #68]	; 0x44
    7142:	e9c3 5700 	strd	r5, r7, [r3]
    7146:	9010      	str	r0, [sp, #64]	; 0x40
    7148:	ddf0      	ble.n	712c <_vfiprintf_r+0x47c>
    714a:	2a00      	cmp	r2, #0
    714c:	f040 8245 	bne.w	75da <_vfiprintf_r+0x92a>
    7150:	3c10      	subs	r4, #16
    7152:	2c10      	cmp	r4, #16
    7154:	4611      	mov	r1, r2
    7156:	f04f 0e01 	mov.w	lr, #1
    715a:	465b      	mov	r3, fp
    715c:	dced      	bgt.n	713a <_vfiprintf_r+0x48a>
    715e:	4619      	mov	r1, r3
    7160:	4653      	mov	r3, sl
    7162:	468a      	mov	sl, r1
    7164:	4422      	add	r2, r4
    7166:	f1be 0f07 	cmp.w	lr, #7
    716a:	9211      	str	r2, [sp, #68]	; 0x44
    716c:	e9ca 5400 	strd	r5, r4, [sl]
    7170:	f8cd e040 	str.w	lr, [sp, #64]	; 0x40
    7174:	f300 8256 	bgt.w	7624 <_vfiprintf_r+0x974>
    7178:	4671      	mov	r1, lr
    717a:	f10a 0a08 	add.w	sl, sl, #8
    717e:	f10e 0c01 	add.w	ip, lr, #1
    7182:	f89d 4037 	ldrb.w	r4, [sp, #55]	; 0x37
    7186:	f10a 0008 	add.w	r0, sl, #8
    718a:	2c00      	cmp	r4, #0
    718c:	f000 8175 	beq.w	747a <_vfiprintf_r+0x7ca>
    7190:	2101      	movs	r1, #1
    7192:	f10d 0437 	add.w	r4, sp, #55	; 0x37
    7196:	440a      	add	r2, r1
    7198:	f1bc 0f07 	cmp.w	ip, #7
    719c:	e9cd c210 	strd	ip, r2, [sp, #64]	; 0x40
    71a0:	e9ca 4100 	strd	r4, r1, [sl]
    71a4:	f340 824e 	ble.w	7644 <_vfiprintf_r+0x994>
    71a8:	2a00      	cmp	r2, #0
    71aa:	f040 8156 	bne.w	745a <_vfiprintf_r+0x7aa>
    71ae:	2b00      	cmp	r3, #0
    71b0:	f040 824e 	bne.w	7650 <_vfiprintf_r+0x9a0>
    71b4:	468c      	mov	ip, r1
    71b6:	46da      	mov	sl, fp
    71b8:	4611      	mov	r1, r2
    71ba:	a81e      	add	r0, sp, #120	; 0x78
    71bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
    71be:	2b80      	cmp	r3, #128	; 0x80
    71c0:	f000 8175 	beq.w	74ae <_vfiprintf_r+0x7fe>
    71c4:	9b05      	ldr	r3, [sp, #20]
    71c6:	eba8 0503 	sub.w	r5, r8, r3
    71ca:	2d00      	cmp	r5, #0
    71cc:	dd32      	ble.n	7234 <_vfiprintf_r+0x584>
    71ce:	2d10      	cmp	r5, #16
    71d0:	f340 832a 	ble.w	7828 <_vfiprintf_r+0xb78>
    71d4:	2710      	movs	r7, #16
    71d6:	4c2a      	ldr	r4, [pc, #168]	; (7280 <_vfiprintf_r+0x5d0>)
    71d8:	f8dd 801c 	ldr.w	r8, [sp, #28]
    71dc:	e007      	b.n	71ee <_vfiprintf_r+0x53e>
    71de:	f101 0c02 	add.w	ip, r1, #2
    71e2:	4619      	mov	r1, r3
    71e4:	f10a 0a08 	add.w	sl, sl, #8
    71e8:	3d10      	subs	r5, #16
    71ea:	2d10      	cmp	r5, #16
    71ec:	dd11      	ble.n	7212 <_vfiprintf_r+0x562>
    71ee:	1c4b      	adds	r3, r1, #1
    71f0:	3210      	adds	r2, #16
    71f2:	2b07      	cmp	r3, #7
    71f4:	9211      	str	r2, [sp, #68]	; 0x44
    71f6:	e9ca 4700 	strd	r4, r7, [sl]
    71fa:	9310      	str	r3, [sp, #64]	; 0x40
    71fc:	ddef      	ble.n	71de <_vfiprintf_r+0x52e>
    71fe:	2a00      	cmp	r2, #0
    7200:	f040 811d 	bne.w	743e <_vfiprintf_r+0x78e>
    7204:	3d10      	subs	r5, #16
    7206:	2d10      	cmp	r5, #16
    7208:	f04f 0c01 	mov.w	ip, #1
    720c:	4611      	mov	r1, r2
    720e:	46da      	mov	sl, fp
    7210:	dced      	bgt.n	71ee <_vfiprintf_r+0x53e>
    7212:	f10a 0108 	add.w	r1, sl, #8
    7216:	442a      	add	r2, r5
    7218:	f1bc 0f07 	cmp.w	ip, #7
    721c:	9211      	str	r2, [sp, #68]	; 0x44
    721e:	e9ca 4500 	strd	r4, r5, [sl]
    7222:	f8cd c040 	str.w	ip, [sp, #64]	; 0x40
    7226:	f300 821f 	bgt.w	7668 <_vfiprintf_r+0x9b8>
    722a:	468a      	mov	sl, r1
    722c:	f10c 0c01 	add.w	ip, ip, #1
    7230:	f101 0008 	add.w	r0, r1, #8
    7234:	9b05      	ldr	r3, [sp, #20]
    7236:	f1bc 0f07 	cmp.w	ip, #7
    723a:	441a      	add	r2, r3
    723c:	9211      	str	r2, [sp, #68]	; 0x44
    723e:	e9ca 6300 	strd	r6, r3, [sl]
    7242:	f8cd c040 	str.w	ip, [sp, #64]	; 0x40
    7246:	f340 8170 	ble.w	752a <_vfiprintf_r+0x87a>
    724a:	2a00      	cmp	r2, #0
    724c:	f040 8165 	bne.w	751a <_vfiprintf_r+0x86a>
    7250:	9b03      	ldr	r3, [sp, #12]
    7252:	9210      	str	r2, [sp, #64]	; 0x40
    7254:	075d      	lsls	r5, r3, #29
    7256:	d538      	bpl.n	72ca <_vfiprintf_r+0x61a>
    7258:	9b06      	ldr	r3, [sp, #24]
    725a:	9901      	ldr	r1, [sp, #4]
    725c:	1a5c      	subs	r4, r3, r1
    725e:	2c00      	cmp	r4, #0
    7260:	dd33      	ble.n	72ca <_vfiprintf_r+0x61a>
    7262:	4658      	mov	r0, fp
    7264:	2c10      	cmp	r4, #16
    7266:	9f10      	ldr	r7, [sp, #64]	; 0x40
    7268:	f340 82f8 	ble.w	785c <_vfiprintf_r+0xbac>
    726c:	2610      	movs	r6, #16
    726e:	4d03      	ldr	r5, [pc, #12]	; (727c <_vfiprintf_r+0x5cc>)
    7270:	f8dd 801c 	ldr.w	r8, [sp, #28]
    7274:	e00c      	b.n	7290 <_vfiprintf_r+0x5e0>
    7276:	bf00      	nop
    7278:	00008bc8 	.word	0x00008bc8
    727c:	00008be4 	.word	0x00008be4
    7280:	00008bf4 	.word	0x00008bf4
    7284:	1cbb      	adds	r3, r7, #2
    7286:	460f      	mov	r7, r1
    7288:	3008      	adds	r0, #8
    728a:	3c10      	subs	r4, #16
    728c:	2c10      	cmp	r4, #16
    728e:	dd11      	ble.n	72b4 <_vfiprintf_r+0x604>
    7290:	1c79      	adds	r1, r7, #1
    7292:	3210      	adds	r2, #16
    7294:	2907      	cmp	r1, #7
    7296:	9211      	str	r2, [sp, #68]	; 0x44
    7298:	e9c0 5600 	strd	r5, r6, [r0]
    729c:	9110      	str	r1, [sp, #64]	; 0x40
    729e:	ddf1      	ble.n	7284 <_vfiprintf_r+0x5d4>
    72a0:	2a00      	cmp	r2, #0
    72a2:	f040 81a7 	bne.w	75f4 <_vfiprintf_r+0x944>
    72a6:	3c10      	subs	r4, #16
    72a8:	2c10      	cmp	r4, #16
    72aa:	f04f 0301 	mov.w	r3, #1
    72ae:	4617      	mov	r7, r2
    72b0:	4658      	mov	r0, fp
    72b2:	dced      	bgt.n	7290 <_vfiprintf_r+0x5e0>
    72b4:	4422      	add	r2, r4
    72b6:	2b07      	cmp	r3, #7
    72b8:	9211      	str	r2, [sp, #68]	; 0x44
    72ba:	e9c0 5400 	strd	r5, r4, [r0]
    72be:	9310      	str	r3, [sp, #64]	; 0x40
    72c0:	f340 813c 	ble.w	753c <_vfiprintf_r+0x88c>
    72c4:	2a00      	cmp	r2, #0
    72c6:	f040 8258 	bne.w	777a <_vfiprintf_r+0xaca>
    72ca:	9b04      	ldr	r3, [sp, #16]
    72cc:	9a06      	ldr	r2, [sp, #24]
    72ce:	9901      	ldr	r1, [sp, #4]
    72d0:	428a      	cmp	r2, r1
    72d2:	bfac      	ite	ge
    72d4:	189b      	addge	r3, r3, r2
    72d6:	185b      	addlt	r3, r3, r1
    72d8:	9304      	str	r3, [sp, #16]
    72da:	e13e      	b.n	755a <_vfiprintf_r+0x8aa>
    72dc:	2900      	cmp	r1, #0
    72de:	f040 82f3 	bne.w	78c8 <_vfiprintf_r+0xc18>
    72e2:	4bac      	ldr	r3, [pc, #688]	; (7594 <_vfiprintf_r+0x8e4>)
    72e4:	06bc      	lsls	r4, r7, #26
    72e6:	930a      	str	r3, [sp, #40]	; 0x28
    72e8:	f53f ae3f 	bmi.w	6f6a <_vfiprintf_r+0x2ba>
    72ec:	9b08      	ldr	r3, [sp, #32]
    72ee:	06f8      	lsls	r0, r7, #27
    72f0:	f853 4b04 	ldr.w	r4, [r3], #4
    72f4:	9308      	str	r3, [sp, #32]
    72f6:	f100 81dd 	bmi.w	76b4 <_vfiprintf_r+0xa04>
    72fa:	0679      	lsls	r1, r7, #25
    72fc:	f140 81da 	bpl.w	76b4 <_vfiprintf_r+0xa04>
    7300:	b2a4      	uxth	r4, r4
    7302:	2500      	movs	r5, #0
    7304:	e63a      	b.n	6f7c <_vfiprintf_r+0x2cc>
    7306:	2900      	cmp	r1, #0
    7308:	f040 82cf 	bne.w	78aa <_vfiprintf_r+0xbfa>
    730c:	f047 0710 	orr.w	r7, r7, #16
    7310:	06bb      	lsls	r3, r7, #26
    7312:	f53f aec4 	bmi.w	709e <_vfiprintf_r+0x3ee>
    7316:	9b08      	ldr	r3, [sp, #32]
    7318:	06fe      	lsls	r6, r7, #27
    731a:	f853 4b04 	ldr.w	r4, [r3], #4
    731e:	9308      	str	r3, [sp, #32]
    7320:	f100 81ca 	bmi.w	76b8 <_vfiprintf_r+0xa08>
    7324:	067d      	lsls	r5, r7, #25
    7326:	f140 81c7 	bpl.w	76b8 <_vfiprintf_r+0xa08>
    732a:	b224      	sxth	r4, r4
    732c:	17e5      	asrs	r5, r4, #31
    732e:	e6bf      	b.n	70b0 <_vfiprintf_r+0x400>
    7330:	9b08      	ldr	r3, [sp, #32]
    7332:	f899 2000 	ldrb.w	r2, [r9]
    7336:	681c      	ldr	r4, [r3, #0]
    7338:	3304      	adds	r3, #4
    733a:	2c00      	cmp	r4, #0
    733c:	9406      	str	r4, [sp, #24]
    733e:	9308      	str	r3, [sp, #32]
    7340:	f6bf ad22 	bge.w	6d88 <_vfiprintf_r+0xd8>
    7344:	4263      	negs	r3, r4
    7346:	9306      	str	r3, [sp, #24]
    7348:	e00e      	b.n	7368 <_vfiprintf_r+0x6b8>
    734a:	f047 0701 	orr.w	r7, r7, #1
    734e:	f899 2000 	ldrb.w	r2, [r9]
    7352:	e519      	b.n	6d88 <_vfiprintf_r+0xd8>
    7354:	f899 2000 	ldrb.w	r2, [r9]
    7358:	2800      	cmp	r0, #0
    735a:	f47f ad15 	bne.w	6d88 <_vfiprintf_r+0xd8>
    735e:	2101      	movs	r1, #1
    7360:	2020      	movs	r0, #32
    7362:	e511      	b.n	6d88 <_vfiprintf_r+0xd8>
    7364:	f899 2000 	ldrb.w	r2, [r9]
    7368:	f047 0704 	orr.w	r7, r7, #4
    736c:	e50c      	b.n	6d88 <_vfiprintf_r+0xd8>
    736e:	f899 2000 	ldrb.w	r2, [r9]
    7372:	2101      	movs	r1, #1
    7374:	202b      	movs	r0, #43	; 0x2b
    7376:	e507      	b.n	6d88 <_vfiprintf_r+0xd8>
    7378:	f899 2000 	ldrb.w	r2, [r9]
    737c:	f109 0401 	add.w	r4, r9, #1
    7380:	2a2a      	cmp	r2, #42	; 0x2a
    7382:	f000 8284 	beq.w	788e <_vfiprintf_r+0xbde>
    7386:	f1a2 0330 	sub.w	r3, r2, #48	; 0x30
    738a:	2b09      	cmp	r3, #9
    738c:	46a1      	mov	r9, r4
    738e:	f04f 0800 	mov.w	r8, #0
    7392:	f63f acfb 	bhi.w	6d8c <_vfiprintf_r+0xdc>
    7396:	f819 2b01 	ldrb.w	r2, [r9], #1
    739a:	eb08 0888 	add.w	r8, r8, r8, lsl #2
    739e:	eb03 0848 	add.w	r8, r3, r8, lsl #1
    73a2:	f1a2 0330 	sub.w	r3, r2, #48	; 0x30
    73a6:	2b09      	cmp	r3, #9
    73a8:	d9f5      	bls.n	7396 <_vfiprintf_r+0x6e6>
    73aa:	e4ef      	b.n	6d8c <_vfiprintf_r+0xdc>
    73ac:	9b08      	ldr	r3, [sp, #32]
    73ae:	06fe      	lsls	r6, r7, #27
    73b0:	f853 4b04 	ldr.w	r4, [r3], #4
    73b4:	9308      	str	r3, [sp, #32]
    73b6:	f140 81be 	bpl.w	7736 <_vfiprintf_r+0xa86>
    73ba:	2500      	movs	r5, #0
    73bc:	2301      	movs	r3, #1
    73be:	e620      	b.n	7002 <_vfiprintf_r+0x352>
    73c0:	9a08      	ldr	r2, [sp, #32]
    73c2:	f852 4b04 	ldr.w	r4, [r2], #4
    73c6:	9208      	str	r2, [sp, #32]
    73c8:	f017 0210 	ands.w	r2, r7, #16
    73cc:	f000 81b9 	beq.w	7742 <_vfiprintf_r+0xa92>
    73d0:	2500      	movs	r5, #0
    73d2:	e616      	b.n	7002 <_vfiprintf_r+0x352>
    73d4:	89aa      	ldrh	r2, [r5, #12]
    73d6:	f002 031a 	and.w	r3, r2, #26
    73da:	2b0a      	cmp	r3, #10
    73dc:	f47f ac97 	bne.w	6d0e <_vfiprintf_r+0x5e>
    73e0:	9902      	ldr	r1, [sp, #8]
    73e2:	f9b1 300e 	ldrsh.w	r3, [r1, #14]
    73e6:	2b00      	cmp	r3, #0
    73e8:	f6ff ac91 	blt.w	6d0e <_vfiprintf_r+0x5e>
    73ec:	6e4b      	ldr	r3, [r1, #100]	; 0x64
    73ee:	07d8      	lsls	r0, r3, #31
    73f0:	d404      	bmi.n	73fc <_vfiprintf_r+0x74c>
    73f2:	0592      	lsls	r2, r2, #22
    73f4:	d402      	bmi.n	73fc <_vfiprintf_r+0x74c>
    73f6:	6d88      	ldr	r0, [r1, #88]	; 0x58
    73f8:	f7fe fbbc 	bl	5b74 <__retarget_lock_release_recursive>
    73fc:	4623      	mov	r3, r4
    73fe:	464a      	mov	r2, r9
    7400:	9902      	ldr	r1, [sp, #8]
    7402:	9807      	ldr	r0, [sp, #28]
    7404:	f7fc feee 	bl	41e4 <__sbprintf>
    7408:	9004      	str	r0, [sp, #16]
    740a:	9804      	ldr	r0, [sp, #16]
    740c:	b02d      	add	sp, #180	; 0xb4
    740e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7412:	f7fe f917 	bl	5644 <__sinit>
    7416:	e458      	b.n	6cca <_vfiprintf_r+0x1a>
    7418:	2302      	movs	r3, #2
    741a:	e5f2      	b.n	7002 <_vfiprintf_r+0x352>
    741c:	2900      	cmp	r1, #0
    741e:	f040 8241 	bne.w	78a4 <_vfiprintf_r+0xbf4>
    7422:	2a00      	cmp	r2, #0
    7424:	f000 80a1 	beq.w	756a <_vfiprintf_r+0x8ba>
    7428:	2301      	movs	r3, #1
    742a:	f88d 2048 	strb.w	r2, [sp, #72]	; 0x48
    742e:	f04f 0200 	mov.w	r2, #0
    7432:	9301      	str	r3, [sp, #4]
    7434:	f88d 2037 	strb.w	r2, [sp, #55]	; 0x37
    7438:	9305      	str	r3, [sp, #20]
    743a:	ae12      	add	r6, sp, #72	; 0x48
    743c:	e654      	b.n	70e8 <_vfiprintf_r+0x438>
    743e:	aa0f      	add	r2, sp, #60	; 0x3c
    7440:	9902      	ldr	r1, [sp, #8]
    7442:	4640      	mov	r0, r8
    7444:	f7ff fbee 	bl	6c24 <__sprint_r.part.0>
    7448:	2800      	cmp	r0, #0
    744a:	f040 8094 	bne.w	7576 <_vfiprintf_r+0x8c6>
    744e:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    7452:	46da      	mov	sl, fp
    7454:	f101 0c01 	add.w	ip, r1, #1
    7458:	e6c6      	b.n	71e8 <_vfiprintf_r+0x538>
    745a:	aa0f      	add	r2, sp, #60	; 0x3c
    745c:	9902      	ldr	r1, [sp, #8]
    745e:	9807      	ldr	r0, [sp, #28]
    7460:	930b      	str	r3, [sp, #44]	; 0x2c
    7462:	f7ff fbdf 	bl	6c24 <__sprint_r.part.0>
    7466:	2800      	cmp	r0, #0
    7468:	f040 8085 	bne.w	7576 <_vfiprintf_r+0x8c6>
    746c:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    7470:	46da      	mov	sl, fp
    7472:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    7474:	f101 0c01 	add.w	ip, r1, #1
    7478:	a81e      	add	r0, sp, #120	; 0x78
    747a:	2b00      	cmp	r3, #0
    747c:	f43f ae9e 	beq.w	71bc <_vfiprintf_r+0x50c>
    7480:	2402      	movs	r4, #2
    7482:	a90e      	add	r1, sp, #56	; 0x38
    7484:	4422      	add	r2, r4
    7486:	f1bc 0f07 	cmp.w	ip, #7
    748a:	e9cd c210 	strd	ip, r2, [sp, #64]	; 0x40
    748e:	e9ca 1400 	strd	r1, r4, [sl]
    7492:	f340 80e3 	ble.w	765c <_vfiprintf_r+0x9ac>
    7496:	2a00      	cmp	r2, #0
    7498:	f040 811c 	bne.w	76d4 <_vfiprintf_r+0xa24>
    749c:	9b09      	ldr	r3, [sp, #36]	; 0x24
    749e:	a81e      	add	r0, sp, #120	; 0x78
    74a0:	2b80      	cmp	r3, #128	; 0x80
    74a2:	f04f 0c01 	mov.w	ip, #1
    74a6:	4611      	mov	r1, r2
    74a8:	46da      	mov	sl, fp
    74aa:	f47f ae8b 	bne.w	71c4 <_vfiprintf_r+0x514>
    74ae:	9b06      	ldr	r3, [sp, #24]
    74b0:	9c01      	ldr	r4, [sp, #4]
    74b2:	1b1d      	subs	r5, r3, r4
    74b4:	2d00      	cmp	r5, #0
    74b6:	f77f ae85 	ble.w	71c4 <_vfiprintf_r+0x514>
    74ba:	2d10      	cmp	r5, #16
    74bc:	f340 81da 	ble.w	7874 <_vfiprintf_r+0xbc4>
    74c0:	2710      	movs	r7, #16
    74c2:	4c35      	ldr	r4, [pc, #212]	; (7598 <_vfiprintf_r+0x8e8>)
    74c4:	e006      	b.n	74d4 <_vfiprintf_r+0x824>
    74c6:	1c88      	adds	r0, r1, #2
    74c8:	4619      	mov	r1, r3
    74ca:	f10a 0a08 	add.w	sl, sl, #8
    74ce:	3d10      	subs	r5, #16
    74d0:	2d10      	cmp	r5, #16
    74d2:	dd11      	ble.n	74f8 <_vfiprintf_r+0x848>
    74d4:	1c4b      	adds	r3, r1, #1
    74d6:	3210      	adds	r2, #16
    74d8:	2b07      	cmp	r3, #7
    74da:	9211      	str	r2, [sp, #68]	; 0x44
    74dc:	e9ca 4700 	strd	r4, r7, [sl]
    74e0:	9310      	str	r3, [sp, #64]	; 0x40
    74e2:	ddf0      	ble.n	74c6 <_vfiprintf_r+0x816>
    74e4:	2a00      	cmp	r2, #0
    74e6:	f040 8091 	bne.w	760c <_vfiprintf_r+0x95c>
    74ea:	3d10      	subs	r5, #16
    74ec:	2d10      	cmp	r5, #16
    74ee:	f04f 0001 	mov.w	r0, #1
    74f2:	4611      	mov	r1, r2
    74f4:	46da      	mov	sl, fp
    74f6:	dced      	bgt.n	74d4 <_vfiprintf_r+0x824>
    74f8:	f10a 0708 	add.w	r7, sl, #8
    74fc:	442a      	add	r2, r5
    74fe:	2807      	cmp	r0, #7
    7500:	9211      	str	r2, [sp, #68]	; 0x44
    7502:	e9ca 4500 	strd	r4, r5, [sl]
    7506:	9010      	str	r0, [sp, #64]	; 0x40
    7508:	f300 80f3 	bgt.w	76f2 <_vfiprintf_r+0xa42>
    750c:	f100 0c01 	add.w	ip, r0, #1
    7510:	4601      	mov	r1, r0
    7512:	46ba      	mov	sl, r7
    7514:	f107 0008 	add.w	r0, r7, #8
    7518:	e654      	b.n	71c4 <_vfiprintf_r+0x514>
    751a:	aa0f      	add	r2, sp, #60	; 0x3c
    751c:	9902      	ldr	r1, [sp, #8]
    751e:	9807      	ldr	r0, [sp, #28]
    7520:	f7ff fb80 	bl	6c24 <__sprint_r.part.0>
    7524:	bb38      	cbnz	r0, 7576 <_vfiprintf_r+0x8c6>
    7526:	4658      	mov	r0, fp
    7528:	9a11      	ldr	r2, [sp, #68]	; 0x44
    752a:	9b03      	ldr	r3, [sp, #12]
    752c:	075c      	lsls	r4, r3, #29
    752e:	d505      	bpl.n	753c <_vfiprintf_r+0x88c>
    7530:	9b06      	ldr	r3, [sp, #24]
    7532:	9901      	ldr	r1, [sp, #4]
    7534:	1a5c      	subs	r4, r3, r1
    7536:	2c00      	cmp	r4, #0
    7538:	f73f ae94 	bgt.w	7264 <_vfiprintf_r+0x5b4>
    753c:	9b04      	ldr	r3, [sp, #16]
    753e:	9906      	ldr	r1, [sp, #24]
    7540:	9801      	ldr	r0, [sp, #4]
    7542:	4281      	cmp	r1, r0
    7544:	bfac      	ite	ge
    7546:	185b      	addge	r3, r3, r1
    7548:	181b      	addlt	r3, r3, r0
    754a:	9304      	str	r3, [sp, #16]
    754c:	b12a      	cbz	r2, 755a <_vfiprintf_r+0x8aa>
    754e:	aa0f      	add	r2, sp, #60	; 0x3c
    7550:	9902      	ldr	r1, [sp, #8]
    7552:	9807      	ldr	r0, [sp, #28]
    7554:	f7ff fb66 	bl	6c24 <__sprint_r.part.0>
    7558:	b968      	cbnz	r0, 7576 <_vfiprintf_r+0x8c6>
    755a:	2300      	movs	r3, #0
    755c:	9310      	str	r3, [sp, #64]	; 0x40
    755e:	f899 3000 	ldrb.w	r3, [r9]
    7562:	46da      	mov	sl, fp
    7564:	2b00      	cmp	r3, #0
    7566:	f47f abe1 	bne.w	6d2c <_vfiprintf_r+0x7c>
    756a:	9b11      	ldr	r3, [sp, #68]	; 0x44
    756c:	2b00      	cmp	r3, #0
    756e:	f040 8185 	bne.w	787c <_vfiprintf_r+0xbcc>
    7572:	2300      	movs	r3, #0
    7574:	9310      	str	r3, [sp, #64]	; 0x40
    7576:	9b02      	ldr	r3, [sp, #8]
    7578:	6e5a      	ldr	r2, [r3, #100]	; 0x64
    757a:	899b      	ldrh	r3, [r3, #12]
    757c:	07d1      	lsls	r1, r2, #31
    757e:	d402      	bmi.n	7586 <_vfiprintf_r+0x8d6>
    7580:	059a      	lsls	r2, r3, #22
    7582:	f140 80f4 	bpl.w	776e <_vfiprintf_r+0xabe>
    7586:	065b      	lsls	r3, r3, #25
    7588:	f53f acc6 	bmi.w	6f18 <_vfiprintf_r+0x268>
    758c:	9804      	ldr	r0, [sp, #16]
    758e:	b02d      	add	sp, #180	; 0xb4
    7590:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7594:	00008bb4 	.word	0x00008bb4
    7598:	00008bf4 	.word	0x00008bf4
    759c:	465e      	mov	r6, fp
    759e:	980a      	ldr	r0, [sp, #40]	; 0x28
    75a0:	0923      	lsrs	r3, r4, #4
    75a2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
    75a6:	0929      	lsrs	r1, r5, #4
    75a8:	f004 020f 	and.w	r2, r4, #15
    75ac:	460d      	mov	r5, r1
    75ae:	461c      	mov	r4, r3
    75b0:	5c83      	ldrb	r3, [r0, r2]
    75b2:	f806 3d01 	strb.w	r3, [r6, #-1]!
    75b6:	ea54 0305 	orrs.w	r3, r4, r5
    75ba:	d1f1      	bne.n	75a0 <_vfiprintf_r+0x8f0>
    75bc:	ebab 0306 	sub.w	r3, fp, r6
    75c0:	9305      	str	r3, [sp, #20]
    75c2:	9b05      	ldr	r3, [sp, #20]
    75c4:	9a09      	ldr	r2, [sp, #36]	; 0x24
    75c6:	4543      	cmp	r3, r8
    75c8:	bfb8      	it	lt
    75ca:	4643      	movlt	r3, r8
    75cc:	9301      	str	r3, [sp, #4]
    75ce:	2a00      	cmp	r2, #0
    75d0:	f43f ad8d 	beq.w	70ee <_vfiprintf_r+0x43e>
    75d4:	3301      	adds	r3, #1
    75d6:	9301      	str	r3, [sp, #4]
    75d8:	e589      	b.n	70ee <_vfiprintf_r+0x43e>
    75da:	aa0f      	add	r2, sp, #60	; 0x3c
    75dc:	9902      	ldr	r1, [sp, #8]
    75de:	9807      	ldr	r0, [sp, #28]
    75e0:	f7ff fb20 	bl	6c24 <__sprint_r.part.0>
    75e4:	2800      	cmp	r0, #0
    75e6:	d1c6      	bne.n	7576 <_vfiprintf_r+0x8c6>
    75e8:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    75ec:	465b      	mov	r3, fp
    75ee:	f101 0e01 	add.w	lr, r1, #1
    75f2:	e59f      	b.n	7134 <_vfiprintf_r+0x484>
    75f4:	aa0f      	add	r2, sp, #60	; 0x3c
    75f6:	9902      	ldr	r1, [sp, #8]
    75f8:	4640      	mov	r0, r8
    75fa:	f7ff fb13 	bl	6c24 <__sprint_r.part.0>
    75fe:	2800      	cmp	r0, #0
    7600:	d1b9      	bne.n	7576 <_vfiprintf_r+0x8c6>
    7602:	e9dd 7210 	ldrd	r7, r2, [sp, #64]	; 0x40
    7606:	4658      	mov	r0, fp
    7608:	1c7b      	adds	r3, r7, #1
    760a:	e63e      	b.n	728a <_vfiprintf_r+0x5da>
    760c:	aa0f      	add	r2, sp, #60	; 0x3c
    760e:	9902      	ldr	r1, [sp, #8]
    7610:	9807      	ldr	r0, [sp, #28]
    7612:	f7ff fb07 	bl	6c24 <__sprint_r.part.0>
    7616:	2800      	cmp	r0, #0
    7618:	d1ad      	bne.n	7576 <_vfiprintf_r+0x8c6>
    761a:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    761e:	46da      	mov	sl, fp
    7620:	1c48      	adds	r0, r1, #1
    7622:	e754      	b.n	74ce <_vfiprintf_r+0x81e>
    7624:	2a00      	cmp	r2, #0
    7626:	f040 80ef 	bne.w	7808 <_vfiprintf_r+0xb58>
    762a:	f89d 1037 	ldrb.w	r1, [sp, #55]	; 0x37
    762e:	2900      	cmp	r1, #0
    7630:	f000 8095 	beq.w	775e <_vfiprintf_r+0xaae>
    7634:	2101      	movs	r1, #1
    7636:	460a      	mov	r2, r1
    7638:	468c      	mov	ip, r1
    763a:	f10d 0037 	add.w	r0, sp, #55	; 0x37
    763e:	901c      	str	r0, [sp, #112]	; 0x70
    7640:	911d      	str	r1, [sp, #116]	; 0x74
    7642:	a81e      	add	r0, sp, #120	; 0x78
    7644:	4661      	mov	r1, ip
    7646:	4682      	mov	sl, r0
    7648:	f10c 0c01 	add.w	ip, ip, #1
    764c:	3008      	adds	r0, #8
    764e:	e714      	b.n	747a <_vfiprintf_r+0x7ca>
    7650:	2202      	movs	r2, #2
    7652:	468c      	mov	ip, r1
    7654:	a80e      	add	r0, sp, #56	; 0x38
    7656:	e9cd 021c 	strd	r0, r2, [sp, #112]	; 0x70
    765a:	a81e      	add	r0, sp, #120	; 0x78
    765c:	4661      	mov	r1, ip
    765e:	4682      	mov	sl, r0
    7660:	f10c 0c01 	add.w	ip, ip, #1
    7664:	3008      	adds	r0, #8
    7666:	e5a9      	b.n	71bc <_vfiprintf_r+0x50c>
    7668:	2a00      	cmp	r2, #0
    766a:	d14a      	bne.n	7702 <_vfiprintf_r+0xa52>
    766c:	2101      	movs	r1, #1
    766e:	9a05      	ldr	r2, [sp, #20]
    7670:	961c      	str	r6, [sp, #112]	; 0x70
    7672:	921d      	str	r2, [sp, #116]	; 0x74
    7674:	9211      	str	r2, [sp, #68]	; 0x44
    7676:	9110      	str	r1, [sp, #64]	; 0x40
    7678:	a81e      	add	r0, sp, #120	; 0x78
    767a:	e756      	b.n	752a <_vfiprintf_r+0x87a>
    767c:	9703      	str	r7, [sp, #12]
    767e:	2d00      	cmp	r5, #0
    7680:	bf08      	it	eq
    7682:	2c0a      	cmpeq	r4, #10
    7684:	f080 80aa 	bcs.w	77dc <_vfiprintf_r+0xb2c>
    7688:	2301      	movs	r3, #1
    768a:	ae2c      	add	r6, sp, #176	; 0xb0
    768c:	3430      	adds	r4, #48	; 0x30
    768e:	f806 4d41 	strb.w	r4, [r6, #-65]!
    7692:	9305      	str	r3, [sp, #20]
    7694:	e795      	b.n	75c2 <_vfiprintf_r+0x912>
    7696:	f8cd 8014 	str.w	r8, [sp, #20]
    769a:	465e      	mov	r6, fp
    769c:	e791      	b.n	75c2 <_vfiprintf_r+0x912>
    769e:	aa0f      	add	r2, sp, #60	; 0x3c
    76a0:	9902      	ldr	r1, [sp, #8]
    76a2:	9807      	ldr	r0, [sp, #28]
    76a4:	f7ff fabe 	bl	6c24 <__sprint_r.part.0>
    76a8:	2800      	cmp	r0, #0
    76aa:	f47f af64 	bne.w	7576 <_vfiprintf_r+0x8c6>
    76ae:	46da      	mov	sl, fp
    76b0:	f7ff bb56 	b.w	6d60 <_vfiprintf_r+0xb0>
    76b4:	2500      	movs	r5, #0
    76b6:	e461      	b.n	6f7c <_vfiprintf_r+0x2cc>
    76b8:	17e5      	asrs	r5, r4, #31
    76ba:	2c00      	cmp	r4, #0
    76bc:	f175 0300 	sbcs.w	r3, r5, #0
    76c0:	f6bf acfb 	bge.w	70ba <_vfiprintf_r+0x40a>
    76c4:	232d      	movs	r3, #45	; 0x2d
    76c6:	4264      	negs	r4, r4
    76c8:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
    76cc:	f88d 3037 	strb.w	r3, [sp, #55]	; 0x37
    76d0:	9309      	str	r3, [sp, #36]	; 0x24
    76d2:	e4f5      	b.n	70c0 <_vfiprintf_r+0x410>
    76d4:	aa0f      	add	r2, sp, #60	; 0x3c
    76d6:	9902      	ldr	r1, [sp, #8]
    76d8:	9807      	ldr	r0, [sp, #28]
    76da:	f7ff faa3 	bl	6c24 <__sprint_r.part.0>
    76de:	2800      	cmp	r0, #0
    76e0:	f47f af49 	bne.w	7576 <_vfiprintf_r+0x8c6>
    76e4:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    76e8:	46da      	mov	sl, fp
    76ea:	f101 0c01 	add.w	ip, r1, #1
    76ee:	a81e      	add	r0, sp, #120	; 0x78
    76f0:	e564      	b.n	71bc <_vfiprintf_r+0x50c>
    76f2:	2a00      	cmp	r2, #0
    76f4:	d15b      	bne.n	77ae <_vfiprintf_r+0xafe>
    76f6:	a81e      	add	r0, sp, #120	; 0x78
    76f8:	f04f 0c01 	mov.w	ip, #1
    76fc:	4611      	mov	r1, r2
    76fe:	46da      	mov	sl, fp
    7700:	e560      	b.n	71c4 <_vfiprintf_r+0x514>
    7702:	aa0f      	add	r2, sp, #60	; 0x3c
    7704:	9902      	ldr	r1, [sp, #8]
    7706:	9807      	ldr	r0, [sp, #28]
    7708:	f7ff fa8c 	bl	6c24 <__sprint_r.part.0>
    770c:	2800      	cmp	r0, #0
    770e:	f47f af32 	bne.w	7576 <_vfiprintf_r+0x8c6>
    7712:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    7716:	46da      	mov	sl, fp
    7718:	f101 0c01 	add.w	ip, r1, #1
    771c:	a81e      	add	r0, sp, #120	; 0x78
    771e:	e589      	b.n	7234 <_vfiprintf_r+0x584>
    7720:	9d02      	ldr	r5, [sp, #8]
    7722:	6da8      	ldr	r0, [r5, #88]	; 0x58
    7724:	f7fe fa1e 	bl	5b64 <__retarget_lock_acquire_recursive>
    7728:	f9b5 100c 	ldrsh.w	r1, [r5, #12]
    772c:	b28a      	uxth	r2, r1
    772e:	f7ff bad6 	b.w	6cde <_vfiprintf_r+0x2e>
    7732:	465e      	mov	r6, fp
    7734:	e745      	b.n	75c2 <_vfiprintf_r+0x912>
    7736:	067d      	lsls	r5, r7, #25
    7738:	bf48      	it	mi
    773a:	b2a4      	uxthmi	r4, r4
    773c:	2500      	movs	r5, #0
    773e:	2301      	movs	r3, #1
    7740:	e45f      	b.n	7002 <_vfiprintf_r+0x352>
    7742:	f017 0340 	ands.w	r3, r7, #64	; 0x40
    7746:	bf1c      	itt	ne
    7748:	4613      	movne	r3, r2
    774a:	b2a4      	uxthne	r4, r4
    774c:	2500      	movs	r5, #0
    774e:	e458      	b.n	7002 <_vfiprintf_r+0x352>
    7750:	9a04      	ldr	r2, [sp, #16]
    7752:	4610      	mov	r0, r2
    7754:	17d1      	asrs	r1, r2, #31
    7756:	e9c3 0100 	strd	r0, r1, [r3]
    775a:	f7ff bae2 	b.w	6d22 <_vfiprintf_r+0x72>
    775e:	2b00      	cmp	r3, #0
    7760:	d174      	bne.n	784c <_vfiprintf_r+0xb9c>
    7762:	4611      	mov	r1, r2
    7764:	a81e      	add	r0, sp, #120	; 0x78
    7766:	f04f 0c01 	mov.w	ip, #1
    776a:	46da      	mov	sl, fp
    776c:	e52a      	b.n	71c4 <_vfiprintf_r+0x514>
    776e:	9c02      	ldr	r4, [sp, #8]
    7770:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7772:	f7fe f9ff 	bl	5b74 <__retarget_lock_release_recursive>
    7776:	89a3      	ldrh	r3, [r4, #12]
    7778:	e705      	b.n	7586 <_vfiprintf_r+0x8d6>
    777a:	aa0f      	add	r2, sp, #60	; 0x3c
    777c:	9902      	ldr	r1, [sp, #8]
    777e:	9807      	ldr	r0, [sp, #28]
    7780:	f7ff fa50 	bl	6c24 <__sprint_r.part.0>
    7784:	2800      	cmp	r0, #0
    7786:	f47f aef6 	bne.w	7576 <_vfiprintf_r+0x8c6>
    778a:	9a11      	ldr	r2, [sp, #68]	; 0x44
    778c:	e6d6      	b.n	753c <_vfiprintf_r+0x88c>
    778e:	6d90      	ldr	r0, [r2, #88]	; 0x58
    7790:	f7fe f9f0 	bl	5b74 <__retarget_lock_release_recursive>
    7794:	f04f 33ff 	mov.w	r3, #4294967295
    7798:	9304      	str	r3, [sp, #16]
    779a:	e6f7      	b.n	758c <_vfiprintf_r+0x8dc>
    779c:	4643      	mov	r3, r8
    779e:	2b06      	cmp	r3, #6
    77a0:	bf28      	it	cs
    77a2:	2306      	movcs	r3, #6
    77a4:	9408      	str	r4, [sp, #32]
    77a6:	9305      	str	r3, [sp, #20]
    77a8:	9301      	str	r3, [sp, #4]
    77aa:	4e49      	ldr	r6, [pc, #292]	; (78d0 <_vfiprintf_r+0xc20>)
    77ac:	e49c      	b.n	70e8 <_vfiprintf_r+0x438>
    77ae:	aa0f      	add	r2, sp, #60	; 0x3c
    77b0:	9902      	ldr	r1, [sp, #8]
    77b2:	9807      	ldr	r0, [sp, #28]
    77b4:	f7ff fa36 	bl	6c24 <__sprint_r.part.0>
    77b8:	2800      	cmp	r0, #0
    77ba:	f47f aedc 	bne.w	7576 <_vfiprintf_r+0x8c6>
    77be:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    77c2:	46da      	mov	sl, fp
    77c4:	f101 0c01 	add.w	ip, r1, #1
    77c8:	a81e      	add	r0, sp, #120	; 0x78
    77ca:	e4fb      	b.n	71c4 <_vfiprintf_r+0x514>
    77cc:	9a04      	ldr	r2, [sp, #16]
    77ce:	601a      	str	r2, [r3, #0]
    77d0:	f7ff baa7 	b.w	6d22 <_vfiprintf_r+0x72>
    77d4:	2b01      	cmp	r3, #1
    77d6:	f47f ab58 	bne.w	6e8a <_vfiprintf_r+0x1da>
    77da:	e755      	b.n	7688 <_vfiprintf_r+0x9d8>
    77dc:	465e      	mov	r6, fp
    77de:	4620      	mov	r0, r4
    77e0:	4629      	mov	r1, r5
    77e2:	220a      	movs	r2, #10
    77e4:	2300      	movs	r3, #0
    77e6:	f7fa ff8b 	bl	2700 <__aeabi_uldivmod>
    77ea:	3230      	adds	r2, #48	; 0x30
    77ec:	f806 2d01 	strb.w	r2, [r6, #-1]!
    77f0:	4620      	mov	r0, r4
    77f2:	4629      	mov	r1, r5
    77f4:	2300      	movs	r3, #0
    77f6:	220a      	movs	r2, #10
    77f8:	f7fa ff82 	bl	2700 <__aeabi_uldivmod>
    77fc:	4604      	mov	r4, r0
    77fe:	460d      	mov	r5, r1
    7800:	ea54 0305 	orrs.w	r3, r4, r5
    7804:	d1eb      	bne.n	77de <_vfiprintf_r+0xb2e>
    7806:	e6d9      	b.n	75bc <_vfiprintf_r+0x90c>
    7808:	aa0f      	add	r2, sp, #60	; 0x3c
    780a:	9902      	ldr	r1, [sp, #8]
    780c:	9807      	ldr	r0, [sp, #28]
    780e:	930b      	str	r3, [sp, #44]	; 0x2c
    7810:	f7ff fa08 	bl	6c24 <__sprint_r.part.0>
    7814:	2800      	cmp	r0, #0
    7816:	f47f aeae 	bne.w	7576 <_vfiprintf_r+0x8c6>
    781a:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
    781e:	46da      	mov	sl, fp
    7820:	f101 0c01 	add.w	ip, r1, #1
    7824:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
    7826:	e4ac      	b.n	7182 <_vfiprintf_r+0x4d2>
    7828:	4601      	mov	r1, r0
    782a:	4c2a      	ldr	r4, [pc, #168]	; (78d4 <_vfiprintf_r+0xc24>)
    782c:	e4f3      	b.n	7216 <_vfiprintf_r+0x566>
    782e:	4630      	mov	r0, r6
    7830:	9408      	str	r4, [sp, #32]
    7832:	9703      	str	r7, [sp, #12]
    7834:	f7ff f9c8 	bl	6bc8 <strlen>
    7838:	f89d 3037 	ldrb.w	r3, [sp, #55]	; 0x37
    783c:	9005      	str	r0, [sp, #20]
    783e:	9309      	str	r3, [sp, #36]	; 0x24
    7840:	f04f 0800 	mov.w	r8, #0
    7844:	e6bd      	b.n	75c2 <_vfiprintf_r+0x912>
    7846:	4686      	mov	lr, r0
    7848:	4d23      	ldr	r5, [pc, #140]	; (78d8 <_vfiprintf_r+0xc28>)
    784a:	e48b      	b.n	7164 <_vfiprintf_r+0x4b4>
    784c:	2202      	movs	r2, #2
    784e:	a90e      	add	r1, sp, #56	; 0x38
    7850:	e9cd 121c 	strd	r1, r2, [sp, #112]	; 0x70
    7854:	a81e      	add	r0, sp, #120	; 0x78
    7856:	f04f 0c01 	mov.w	ip, #1
    785a:	e6ff      	b.n	765c <_vfiprintf_r+0x9ac>
    785c:	4d1e      	ldr	r5, [pc, #120]	; (78d8 <_vfiprintf_r+0xc28>)
    785e:	1c7b      	adds	r3, r7, #1
    7860:	e528      	b.n	72b4 <_vfiprintf_r+0x604>
    7862:	f89d 3037 	ldrb.w	r3, [sp, #55]	; 0x37
    7866:	f8cd 8014 	str.w	r8, [sp, #20]
    786a:	9408      	str	r4, [sp, #32]
    786c:	9703      	str	r7, [sp, #12]
    786e:	4680      	mov	r8, r0
    7870:	9309      	str	r3, [sp, #36]	; 0x24
    7872:	e6a6      	b.n	75c2 <_vfiprintf_r+0x912>
    7874:	4607      	mov	r7, r0
    7876:	4c17      	ldr	r4, [pc, #92]	; (78d4 <_vfiprintf_r+0xc24>)
    7878:	4660      	mov	r0, ip
    787a:	e63f      	b.n	74fc <_vfiprintf_r+0x84c>
    787c:	9807      	ldr	r0, [sp, #28]
    787e:	aa0f      	add	r2, sp, #60	; 0x3c
    7880:	9902      	ldr	r1, [sp, #8]
    7882:	f7ff f9cf 	bl	6c24 <__sprint_r.part.0>
    7886:	2800      	cmp	r0, #0
    7888:	f43f ae73 	beq.w	7572 <_vfiprintf_r+0x8c2>
    788c:	e673      	b.n	7576 <_vfiprintf_r+0x8c6>
    788e:	9d08      	ldr	r5, [sp, #32]
    7890:	f899 2001 	ldrb.w	r2, [r9, #1]
    7894:	682b      	ldr	r3, [r5, #0]
    7896:	46a1      	mov	r9, r4
    7898:	ea43 78e3 	orr.w	r8, r3, r3, asr #31
    789c:	1d2b      	adds	r3, r5, #4
    789e:	9308      	str	r3, [sp, #32]
    78a0:	f7ff ba72 	b.w	6d88 <_vfiprintf_r+0xd8>
    78a4:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    78a8:	e5bb      	b.n	7422 <_vfiprintf_r+0x772>
    78aa:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    78ae:	e52d      	b.n	730c <_vfiprintf_r+0x65c>
    78b0:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    78b4:	f7ff bbf0 	b.w	7098 <_vfiprintf_r+0x3e8>
    78b8:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    78bc:	f7ff bb50 	b.w	6f60 <_vfiprintf_r+0x2b0>
    78c0:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    78c4:	f7ff bbc2 	b.w	704c <_vfiprintf_r+0x39c>
    78c8:	f88d 0037 	strb.w	r0, [sp, #55]	; 0x37
    78cc:	e509      	b.n	72e2 <_vfiprintf_r+0x632>
    78ce:	bf00      	nop
    78d0:	00008bdc 	.word	0x00008bdc
    78d4:	00008bf4 	.word	0x00008bf4
    78d8:	00008be4 	.word	0x00008be4

Disassembly of section .text.vfiprintf:

000078dc <vfiprintf>:
    78dc:	b410      	push	{r4}
    78de:	4c04      	ldr	r4, [pc, #16]	; (78f0 <vfiprintf+0x14>)
    78e0:	4613      	mov	r3, r2
    78e2:	460a      	mov	r2, r1
    78e4:	4601      	mov	r1, r0
    78e6:	6820      	ldr	r0, [r4, #0]
    78e8:	bc10      	pop	{r4}
    78ea:	f7ff b9e1 	b.w	6cb0 <_vfiprintf_r>
    78ee:	bf00      	nop
    78f0:	20000010 	.word	0x20000010

Disassembly of section .text._write_r:

000078f4 <_write_r>:
    78f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    78f6:	460e      	mov	r6, r1
    78f8:	2500      	movs	r5, #0
    78fa:	4c08      	ldr	r4, [pc, #32]	; (791c <_write_r+0x28>)
    78fc:	4611      	mov	r1, r2
    78fe:	4607      	mov	r7, r0
    7900:	461a      	mov	r2, r3
    7902:	4630      	mov	r0, r6
    7904:	6025      	str	r5, [r4, #0]
    7906:	f7f9 f83b 	bl	980 <_write>
    790a:	1c43      	adds	r3, r0, #1
    790c:	d000      	beq.n	7910 <_write_r+0x1c>
    790e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    7910:	6823      	ldr	r3, [r4, #0]
    7912:	2b00      	cmp	r3, #0
    7914:	d0fb      	beq.n	790e <_write_r+0x1a>
    7916:	603b      	str	r3, [r7, #0]
    7918:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    791a:	bf00      	nop
    791c:	20000a28 	.word	0x20000a28

Disassembly of section .text.__register_exitproc:

00007920 <__register_exitproc>:
    7920:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
    7924:	4d2b      	ldr	r5, [pc, #172]	; (79d4 <__register_exitproc+0xb4>)
    7926:	4606      	mov	r6, r0
    7928:	6828      	ldr	r0, [r5, #0]
    792a:	4698      	mov	r8, r3
    792c:	460f      	mov	r7, r1
    792e:	4691      	mov	r9, r2
    7930:	f7fe f918 	bl	5b64 <__retarget_lock_acquire_recursive>
    7934:	4b28      	ldr	r3, [pc, #160]	; (79d8 <__register_exitproc+0xb8>)
    7936:	681c      	ldr	r4, [r3, #0]
    7938:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
    793c:	2b00      	cmp	r3, #0
    793e:	d03d      	beq.n	79bc <__register_exitproc+0x9c>
    7940:	685a      	ldr	r2, [r3, #4]
    7942:	2a1f      	cmp	r2, #31
    7944:	dc0d      	bgt.n	7962 <__register_exitproc+0x42>
    7946:	f102 0c01 	add.w	ip, r2, #1
    794a:	bb16      	cbnz	r6, 7992 <__register_exitproc+0x72>
    794c:	3202      	adds	r2, #2
    794e:	f8c3 c004 	str.w	ip, [r3, #4]
    7952:	6828      	ldr	r0, [r5, #0]
    7954:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
    7958:	f7fe f90c 	bl	5b74 <__retarget_lock_release_recursive>
    795c:	2000      	movs	r0, #0
    795e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
    7962:	4b1e      	ldr	r3, [pc, #120]	; (79dc <__register_exitproc+0xbc>)
    7964:	b37b      	cbz	r3, 79c6 <__register_exitproc+0xa6>
    7966:	f44f 70c8 	mov.w	r0, #400	; 0x190
    796a:	f3af 8000 	nop.w
    796e:	4603      	mov	r3, r0
    7970:	b348      	cbz	r0, 79c6 <__register_exitproc+0xa6>
    7972:	2000      	movs	r0, #0
    7974:	f8d4 1148 	ldr.w	r1, [r4, #328]	; 0x148
    7978:	f04f 0c01 	mov.w	ip, #1
    797c:	e9c3 1000 	strd	r1, r0, [r3]
    7980:	4602      	mov	r2, r0
    7982:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
    7986:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
    798a:	f8c3 018c 	str.w	r0, [r3, #396]	; 0x18c
    798e:	2e00      	cmp	r6, #0
    7990:	d0dc      	beq.n	794c <__register_exitproc+0x2c>
    7992:	2101      	movs	r1, #1
    7994:	eb03 0482 	add.w	r4, r3, r2, lsl #2
    7998:	f8c4 9088 	str.w	r9, [r4, #136]	; 0x88
    799c:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
    79a0:	4091      	lsls	r1, r2
    79a2:	4308      	orrs	r0, r1
    79a4:	2e02      	cmp	r6, #2
    79a6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
    79aa:	f8c4 8108 	str.w	r8, [r4, #264]	; 0x108
    79ae:	d1cd      	bne.n	794c <__register_exitproc+0x2c>
    79b0:	f8d3 018c 	ldr.w	r0, [r3, #396]	; 0x18c
    79b4:	4301      	orrs	r1, r0
    79b6:	f8c3 118c 	str.w	r1, [r3, #396]	; 0x18c
    79ba:	e7c7      	b.n	794c <__register_exitproc+0x2c>
    79bc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
    79c0:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
    79c4:	e7bc      	b.n	7940 <__register_exitproc+0x20>
    79c6:	6828      	ldr	r0, [r5, #0]
    79c8:	f7fe f8d4 	bl	5b74 <__retarget_lock_release_recursive>
    79cc:	f04f 30ff 	mov.w	r0, #4294967295
    79d0:	e7c5      	b.n	795e <__register_exitproc+0x3e>
    79d2:	bf00      	nop
    79d4:	20000444 	.word	0x20000444
    79d8:	00008a10 	.word	0x00008a10
    79dc:	00000000 	.word	0x00000000

Disassembly of section .text._calloc_r:

000079e0 <_calloc_r>:
    79e0:	b510      	push	{r4, lr}
    79e2:	fb02 f101 	mul.w	r1, r2, r1
    79e6:	f7fe f93f 	bl	5c68 <_malloc_r>
    79ea:	4604      	mov	r4, r0
    79ec:	b1e8      	cbz	r0, 7a2a <_calloc_r+0x4a>
    79ee:	f850 2c04 	ldr.w	r2, [r0, #-4]
    79f2:	f022 0203 	bic.w	r2, r2, #3
    79f6:	3a04      	subs	r2, #4
    79f8:	2a24      	cmp	r2, #36	; 0x24
    79fa:	d81f      	bhi.n	7a3c <_calloc_r+0x5c>
    79fc:	2a13      	cmp	r2, #19
    79fe:	d916      	bls.n	7a2e <_calloc_r+0x4e>
    7a00:	2300      	movs	r3, #0
    7a02:	2a1b      	cmp	r2, #27
    7a04:	e9c0 3300 	strd	r3, r3, [r0]
    7a08:	d91d      	bls.n	7a46 <_calloc_r+0x66>
    7a0a:	2a24      	cmp	r2, #36	; 0x24
    7a0c:	e9c0 3302 	strd	r3, r3, [r0, #8]
    7a10:	bf08      	it	eq
    7a12:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
    7a16:	f04f 0300 	mov.w	r3, #0
    7a1a:	bf14      	ite	ne
    7a1c:	f100 0210 	addne.w	r2, r0, #16
    7a20:	f100 0218 	addeq.w	r2, r0, #24
    7a24:	e9c2 3300 	strd	r3, r3, [r2]
    7a28:	6093      	str	r3, [r2, #8]
    7a2a:	4620      	mov	r0, r4
    7a2c:	bd10      	pop	{r4, pc}
    7a2e:	4602      	mov	r2, r0
    7a30:	2300      	movs	r3, #0
    7a32:	4620      	mov	r0, r4
    7a34:	e9c2 3300 	strd	r3, r3, [r2]
    7a38:	6093      	str	r3, [r2, #8]
    7a3a:	bd10      	pop	{r4, pc}
    7a3c:	2100      	movs	r1, #0
    7a3e:	f7fb f829 	bl	2a94 <memset>
    7a42:	4620      	mov	r0, r4
    7a44:	bd10      	pop	{r4, pc}
    7a46:	f100 0208 	add.w	r2, r0, #8
    7a4a:	e7f1      	b.n	7a30 <_calloc_r+0x50>

Disassembly of section .text._close_r:

00007a4c <_close_r>:
    7a4c:	b538      	push	{r3, r4, r5, lr}
    7a4e:	2300      	movs	r3, #0
    7a50:	4c06      	ldr	r4, [pc, #24]	; (7a6c <_close_r+0x20>)
    7a52:	4605      	mov	r5, r0
    7a54:	4608      	mov	r0, r1
    7a56:	6023      	str	r3, [r4, #0]
    7a58:	f7f8 ffea 	bl	a30 <_close>
    7a5c:	1c43      	adds	r3, r0, #1
    7a5e:	d000      	beq.n	7a62 <_close_r+0x16>
    7a60:	bd38      	pop	{r3, r4, r5, pc}
    7a62:	6823      	ldr	r3, [r4, #0]
    7a64:	2b00      	cmp	r3, #0
    7a66:	d0fb      	beq.n	7a60 <_close_r+0x14>
    7a68:	602b      	str	r3, [r5, #0]
    7a6a:	bd38      	pop	{r3, r4, r5, pc}
    7a6c:	20000a28 	.word	0x20000a28

Disassembly of section .text._fclose_r:

00007a70 <_fclose_r>:
    7a70:	b570      	push	{r4, r5, r6, lr}
    7a72:	2900      	cmp	r1, #0
    7a74:	d048      	beq.n	7b08 <_fclose_r+0x98>
    7a76:	4605      	mov	r5, r0
    7a78:	460c      	mov	r4, r1
    7a7a:	b110      	cbz	r0, 7a82 <_fclose_r+0x12>
    7a7c:	6b83      	ldr	r3, [r0, #56]	; 0x38
    7a7e:	2b00      	cmp	r3, #0
    7a80:	d048      	beq.n	7b14 <_fclose_r+0xa4>
    7a82:	6e62      	ldr	r2, [r4, #100]	; 0x64
    7a84:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7a88:	07d0      	lsls	r0, r2, #31
    7a8a:	d440      	bmi.n	7b0e <_fclose_r+0x9e>
    7a8c:	0599      	lsls	r1, r3, #22
    7a8e:	d530      	bpl.n	7af2 <_fclose_r+0x82>
    7a90:	4621      	mov	r1, r4
    7a92:	4628      	mov	r0, r5
    7a94:	f7fd fc80 	bl	5398 <__sflush_r>
    7a98:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
    7a9a:	4606      	mov	r6, r0
    7a9c:	b133      	cbz	r3, 7aac <_fclose_r+0x3c>
    7a9e:	69e1      	ldr	r1, [r4, #28]
    7aa0:	4628      	mov	r0, r5
    7aa2:	4798      	blx	r3
    7aa4:	2800      	cmp	r0, #0
    7aa6:	bfb8      	it	lt
    7aa8:	f04f 36ff 	movlt.w	r6, #4294967295
    7aac:	89a3      	ldrh	r3, [r4, #12]
    7aae:	061a      	lsls	r2, r3, #24
    7ab0:	d43c      	bmi.n	7b2c <_fclose_r+0xbc>
    7ab2:	6b21      	ldr	r1, [r4, #48]	; 0x30
    7ab4:	b141      	cbz	r1, 7ac8 <_fclose_r+0x58>
    7ab6:	f104 0340 	add.w	r3, r4, #64	; 0x40
    7aba:	4299      	cmp	r1, r3
    7abc:	d002      	beq.n	7ac4 <_fclose_r+0x54>
    7abe:	4628      	mov	r0, r5
    7ac0:	f7fd fee8 	bl	5894 <_free_r>
    7ac4:	2300      	movs	r3, #0
    7ac6:	6323      	str	r3, [r4, #48]	; 0x30
    7ac8:	6c61      	ldr	r1, [r4, #68]	; 0x44
    7aca:	b121      	cbz	r1, 7ad6 <_fclose_r+0x66>
    7acc:	4628      	mov	r0, r5
    7ace:	f7fd fee1 	bl	5894 <_free_r>
    7ad2:	2300      	movs	r3, #0
    7ad4:	6463      	str	r3, [r4, #68]	; 0x44
    7ad6:	f7fd fe37 	bl	5748 <__sfp_lock_acquire>
    7ada:	2200      	movs	r2, #0
    7adc:	6e63      	ldr	r3, [r4, #100]	; 0x64
    7ade:	81a2      	strh	r2, [r4, #12]
    7ae0:	07db      	lsls	r3, r3, #31
    7ae2:	d51f      	bpl.n	7b24 <_fclose_r+0xb4>
    7ae4:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7ae6:	f7fe f839 	bl	5b5c <__retarget_lock_close_recursive>
    7aea:	f7fd fe33 	bl	5754 <__sfp_lock_release>
    7aee:	4630      	mov	r0, r6
    7af0:	bd70      	pop	{r4, r5, r6, pc}
    7af2:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7af4:	f7fe f836 	bl	5b64 <__retarget_lock_acquire_recursive>
    7af8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7afc:	2b00      	cmp	r3, #0
    7afe:	d1c7      	bne.n	7a90 <_fclose_r+0x20>
    7b00:	6e66      	ldr	r6, [r4, #100]	; 0x64
    7b02:	f016 0601 	ands.w	r6, r6, #1
    7b06:	d016      	beq.n	7b36 <_fclose_r+0xc6>
    7b08:	2600      	movs	r6, #0
    7b0a:	4630      	mov	r0, r6
    7b0c:	bd70      	pop	{r4, r5, r6, pc}
    7b0e:	2b00      	cmp	r3, #0
    7b10:	d0fa      	beq.n	7b08 <_fclose_r+0x98>
    7b12:	e7bd      	b.n	7a90 <_fclose_r+0x20>
    7b14:	f7fd fd96 	bl	5644 <__sinit>
    7b18:	6e62      	ldr	r2, [r4, #100]	; 0x64
    7b1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7b1e:	07d0      	lsls	r0, r2, #31
    7b20:	d4f5      	bmi.n	7b0e <_fclose_r+0x9e>
    7b22:	e7b3      	b.n	7a8c <_fclose_r+0x1c>
    7b24:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7b26:	f7fe f825 	bl	5b74 <__retarget_lock_release_recursive>
    7b2a:	e7db      	b.n	7ae4 <_fclose_r+0x74>
    7b2c:	6921      	ldr	r1, [r4, #16]
    7b2e:	4628      	mov	r0, r5
    7b30:	f7fd feb0 	bl	5894 <_free_r>
    7b34:	e7bd      	b.n	7ab2 <_fclose_r+0x42>
    7b36:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7b38:	f7fe f81c 	bl	5b74 <__retarget_lock_release_recursive>
    7b3c:	4630      	mov	r0, r6
    7b3e:	bd70      	pop	{r4, r5, r6, pc}

Disassembly of section .text.fclose:

00007b40 <fclose>:
    7b40:	4b02      	ldr	r3, [pc, #8]	; (7b4c <fclose+0xc>)
    7b42:	4601      	mov	r1, r0
    7b44:	6818      	ldr	r0, [r3, #0]
    7b46:	f7ff bf93 	b.w	7a70 <_fclose_r>
    7b4a:	bf00      	nop
    7b4c:	20000010 	.word	0x20000010

Disassembly of section .text.__fputwc:

00007b50 <__fputwc>:
    7b50:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
    7b54:	b083      	sub	sp, #12
    7b56:	4680      	mov	r8, r0
    7b58:	460f      	mov	r7, r1
    7b5a:	4614      	mov	r4, r2
    7b5c:	f000 fa50 	bl	8000 <__locale_mb_cur_max>
    7b60:	2801      	cmp	r0, #1
    7b62:	d102      	bne.n	7b6a <__fputwc+0x1a>
    7b64:	1e7b      	subs	r3, r7, #1
    7b66:	2bfe      	cmp	r3, #254	; 0xfe
    7b68:	d930      	bls.n	7bcc <__fputwc+0x7c>
    7b6a:	463a      	mov	r2, r7
    7b6c:	f104 035c 	add.w	r3, r4, #92	; 0x5c
    7b70:	a901      	add	r1, sp, #4
    7b72:	4640      	mov	r0, r8
    7b74:	f000 fd94 	bl	86a0 <_wcrtomb_r>
    7b78:	1c42      	adds	r2, r0, #1
    7b7a:	4606      	mov	r6, r0
    7b7c:	d02b      	beq.n	7bd6 <__fputwc+0x86>
    7b7e:	b308      	cbz	r0, 7bc4 <__fputwc+0x74>
    7b80:	f89d 1004 	ldrb.w	r1, [sp, #4]
    7b84:	2500      	movs	r5, #0
    7b86:	f10d 0904 	add.w	r9, sp, #4
    7b8a:	e008      	b.n	7b9e <__fputwc+0x4e>
    7b8c:	6823      	ldr	r3, [r4, #0]
    7b8e:	1c5a      	adds	r2, r3, #1
    7b90:	6022      	str	r2, [r4, #0]
    7b92:	7019      	strb	r1, [r3, #0]
    7b94:	3501      	adds	r5, #1
    7b96:	42b5      	cmp	r5, r6
    7b98:	d214      	bcs.n	7bc4 <__fputwc+0x74>
    7b9a:	f815 1009 	ldrb.w	r1, [r5, r9]
    7b9e:	68a3      	ldr	r3, [r4, #8]
    7ba0:	3b01      	subs	r3, #1
    7ba2:	2b00      	cmp	r3, #0
    7ba4:	60a3      	str	r3, [r4, #8]
    7ba6:	daf1      	bge.n	7b8c <__fputwc+0x3c>
    7ba8:	69a2      	ldr	r2, [r4, #24]
    7baa:	4293      	cmp	r3, r2
    7bac:	db01      	blt.n	7bb2 <__fputwc+0x62>
    7bae:	290a      	cmp	r1, #10
    7bb0:	d1ec      	bne.n	7b8c <__fputwc+0x3c>
    7bb2:	4622      	mov	r2, r4
    7bb4:	4640      	mov	r0, r8
    7bb6:	f000 fd13 	bl	85e0 <__swbuf_r>
    7bba:	1c43      	adds	r3, r0, #1
    7bbc:	d1ea      	bne.n	7b94 <__fputwc+0x44>
    7bbe:	b003      	add	sp, #12
    7bc0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    7bc4:	4638      	mov	r0, r7
    7bc6:	b003      	add	sp, #12
    7bc8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
    7bcc:	b2f9      	uxtb	r1, r7
    7bce:	4606      	mov	r6, r0
    7bd0:	f88d 1004 	strb.w	r1, [sp, #4]
    7bd4:	e7d6      	b.n	7b84 <__fputwc+0x34>
    7bd6:	89a3      	ldrh	r3, [r4, #12]
    7bd8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    7bdc:	81a3      	strh	r3, [r4, #12]
    7bde:	b003      	add	sp, #12
    7be0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

Disassembly of section .text._fputwc_r:

00007be4 <_fputwc_r>:
    7be4:	b570      	push	{r4, r5, r6, lr}
    7be6:	6e56      	ldr	r6, [r2, #100]	; 0x64
    7be8:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
    7bec:	4605      	mov	r5, r0
    7bee:	07f0      	lsls	r0, r6, #31
    7bf0:	4614      	mov	r4, r2
    7bf2:	b082      	sub	sp, #8
    7bf4:	b29a      	uxth	r2, r3
    7bf6:	d401      	bmi.n	7bfc <_fputwc_r+0x18>
    7bf8:	0596      	lsls	r6, r2, #22
    7bfa:	d51c      	bpl.n	7c36 <_fputwc_r+0x52>
    7bfc:	0490      	lsls	r0, r2, #18
    7bfe:	d406      	bmi.n	7c0e <_fputwc_r+0x2a>
    7c00:	6e62      	ldr	r2, [r4, #100]	; 0x64
    7c02:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
    7c06:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    7c0a:	81a3      	strh	r3, [r4, #12]
    7c0c:	6662      	str	r2, [r4, #100]	; 0x64
    7c0e:	4628      	mov	r0, r5
    7c10:	4622      	mov	r2, r4
    7c12:	f7ff ff9d 	bl	7b50 <__fputwc>
    7c16:	6e63      	ldr	r3, [r4, #100]	; 0x64
    7c18:	4605      	mov	r5, r0
    7c1a:	07da      	lsls	r2, r3, #31
    7c1c:	d402      	bmi.n	7c24 <_fputwc_r+0x40>
    7c1e:	89a3      	ldrh	r3, [r4, #12]
    7c20:	059b      	lsls	r3, r3, #22
    7c22:	d502      	bpl.n	7c2a <_fputwc_r+0x46>
    7c24:	4628      	mov	r0, r5
    7c26:	b002      	add	sp, #8
    7c28:	bd70      	pop	{r4, r5, r6, pc}
    7c2a:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7c2c:	f7fd ffa2 	bl	5b74 <__retarget_lock_release_recursive>
    7c30:	4628      	mov	r0, r5
    7c32:	b002      	add	sp, #8
    7c34:	bd70      	pop	{r4, r5, r6, pc}
    7c36:	6da0      	ldr	r0, [r4, #88]	; 0x58
    7c38:	9101      	str	r1, [sp, #4]
    7c3a:	f7fd ff93 	bl	5b64 <__retarget_lock_acquire_recursive>
    7c3e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7c42:	9901      	ldr	r1, [sp, #4]
    7c44:	b29a      	uxth	r2, r3
    7c46:	e7d9      	b.n	7bfc <_fputwc_r+0x18>

Disassembly of section .text.fputwc:

00007c48 <fputwc>:
    7c48:	4b0c      	ldr	r3, [pc, #48]	; (7c7c <fputwc+0x34>)
    7c4a:	b570      	push	{r4, r5, r6, lr}
    7c4c:	681c      	ldr	r4, [r3, #0]
    7c4e:	4605      	mov	r5, r0
    7c50:	460e      	mov	r6, r1
    7c52:	b10c      	cbz	r4, 7c58 <fputwc+0x10>
    7c54:	6ba3      	ldr	r3, [r4, #56]	; 0x38
    7c56:	b133      	cbz	r3, 7c66 <fputwc+0x1e>
    7c58:	4632      	mov	r2, r6
    7c5a:	4629      	mov	r1, r5
    7c5c:	4620      	mov	r0, r4
    7c5e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    7c62:	f7ff bfbf 	b.w	7be4 <_fputwc_r>
    7c66:	4620      	mov	r0, r4
    7c68:	f7fd fcec 	bl	5644 <__sinit>
    7c6c:	4632      	mov	r2, r6
    7c6e:	4629      	mov	r1, r5
    7c70:	4620      	mov	r0, r4
    7c72:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    7c76:	f7ff bfb5 	b.w	7be4 <_fputwc_r>
    7c7a:	bf00      	nop
    7c7c:	20000010 	.word	0x20000010

Disassembly of section .text._fstat_r:

00007c80 <_fstat_r>:
    7c80:	b570      	push	{r4, r5, r6, lr}
    7c82:	460d      	mov	r5, r1
    7c84:	2300      	movs	r3, #0
    7c86:	4c07      	ldr	r4, [pc, #28]	; (7ca4 <_fstat_r+0x24>)
    7c88:	4606      	mov	r6, r0
    7c8a:	4611      	mov	r1, r2
    7c8c:	4628      	mov	r0, r5
    7c8e:	6023      	str	r3, [r4, #0]
    7c90:	f7f8 fed9 	bl	a46 <_fstat>
    7c94:	1c43      	adds	r3, r0, #1
    7c96:	d000      	beq.n	7c9a <_fstat_r+0x1a>
    7c98:	bd70      	pop	{r4, r5, r6, pc}
    7c9a:	6823      	ldr	r3, [r4, #0]
    7c9c:	2b00      	cmp	r3, #0
    7c9e:	d0fb      	beq.n	7c98 <_fstat_r+0x18>
    7ca0:	6033      	str	r3, [r6, #0]
    7ca2:	bd70      	pop	{r4, r5, r6, pc}
    7ca4:	20000a28 	.word	0x20000a28

Disassembly of section .text.__sfvwrite_r:

00007ca8 <__sfvwrite_r>:
    7ca8:	6893      	ldr	r3, [r2, #8]
    7caa:	2b00      	cmp	r3, #0
    7cac:	f000 80db 	beq.w	7e66 <__sfvwrite_r+0x1be>
    7cb0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    7cb4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
    7cb8:	460c      	mov	r4, r1
    7cba:	b29b      	uxth	r3, r3
    7cbc:	0719      	lsls	r1, r3, #28
    7cbe:	b083      	sub	sp, #12
    7cc0:	4682      	mov	sl, r0
    7cc2:	4690      	mov	r8, r2
    7cc4:	d52b      	bpl.n	7d1e <__sfvwrite_r+0x76>
    7cc6:	6922      	ldr	r2, [r4, #16]
    7cc8:	b34a      	cbz	r2, 7d1e <__sfvwrite_r+0x76>
    7cca:	f013 0202 	ands.w	r2, r3, #2
    7cce:	f8d8 6000 	ldr.w	r6, [r8]
    7cd2:	d033      	beq.n	7d3c <__sfvwrite_r+0x94>
    7cd4:	2700      	movs	r7, #0
    7cd6:	463d      	mov	r5, r7
    7cd8:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
    7cdc:	69e1      	ldr	r1, [r4, #28]
    7cde:	f8df 92b8 	ldr.w	r9, [pc, #696]	; 7f98 <__sfvwrite_r+0x2f0>
    7ce2:	b1c5      	cbz	r5, 7d16 <__sfvwrite_r+0x6e>
    7ce4:	454d      	cmp	r5, r9
    7ce6:	462b      	mov	r3, r5
    7ce8:	463a      	mov	r2, r7
    7cea:	bf28      	it	cs
    7cec:	464b      	movcs	r3, r9
    7cee:	4650      	mov	r0, sl
    7cf0:	47d8      	blx	fp
    7cf2:	2800      	cmp	r0, #0
    7cf4:	f340 80bf 	ble.w	7e76 <__sfvwrite_r+0x1ce>
    7cf8:	f8d8 3008 	ldr.w	r3, [r8, #8]
    7cfc:	4407      	add	r7, r0
    7cfe:	1a1b      	subs	r3, r3, r0
    7d00:	1a2d      	subs	r5, r5, r0
    7d02:	f8c8 3008 	str.w	r3, [r8, #8]
    7d06:	2b00      	cmp	r3, #0
    7d08:	f000 80a9 	beq.w	7e5e <__sfvwrite_r+0x1b6>
    7d0c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
    7d10:	69e1      	ldr	r1, [r4, #28]
    7d12:	2d00      	cmp	r5, #0
    7d14:	d1e6      	bne.n	7ce4 <__sfvwrite_r+0x3c>
    7d16:	e9d6 7500 	ldrd	r7, r5, [r6]
    7d1a:	3608      	adds	r6, #8
    7d1c:	e7e1      	b.n	7ce2 <__sfvwrite_r+0x3a>
    7d1e:	4621      	mov	r1, r4
    7d20:	4650      	mov	r0, sl
    7d22:	f7fc faa3 	bl	426c <__swsetup_r>
    7d26:	2800      	cmp	r0, #0
    7d28:	f040 8130 	bne.w	7f8c <__sfvwrite_r+0x2e4>
    7d2c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7d30:	f8d8 6000 	ldr.w	r6, [r8]
    7d34:	b29b      	uxth	r3, r3
    7d36:	f013 0202 	ands.w	r2, r3, #2
    7d3a:	d1cb      	bne.n	7cd4 <__sfvwrite_r+0x2c>
    7d3c:	f013 0901 	ands.w	r9, r3, #1
    7d40:	d15e      	bne.n	7e00 <__sfvwrite_r+0x158>
    7d42:	464d      	mov	r5, r9
    7d44:	68a7      	ldr	r7, [r4, #8]
    7d46:	6820      	ldr	r0, [r4, #0]
    7d48:	2d00      	cmp	r5, #0
    7d4a:	d055      	beq.n	7df8 <__sfvwrite_r+0x150>
    7d4c:	059a      	lsls	r2, r3, #22
    7d4e:	f140 809c 	bpl.w	7e8a <__sfvwrite_r+0x1e2>
    7d52:	42af      	cmp	r7, r5
    7d54:	46bb      	mov	fp, r7
    7d56:	f200 80de 	bhi.w	7f16 <__sfvwrite_r+0x26e>
    7d5a:	f413 6f90 	tst.w	r3, #1152	; 0x480
    7d5e:	d02f      	beq.n	7dc0 <__sfvwrite_r+0x118>
    7d60:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
    7d64:	eb07 0747 	add.w	r7, r7, r7, lsl #1
    7d68:	eba0 0b01 	sub.w	fp, r0, r1
    7d6c:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
    7d70:	1c68      	adds	r0, r5, #1
    7d72:	107f      	asrs	r7, r7, #1
    7d74:	4458      	add	r0, fp
    7d76:	42b8      	cmp	r0, r7
    7d78:	463a      	mov	r2, r7
    7d7a:	bf84      	itt	hi
    7d7c:	4607      	movhi	r7, r0
    7d7e:	463a      	movhi	r2, r7
    7d80:	055b      	lsls	r3, r3, #21
    7d82:	f140 80d9 	bpl.w	7f38 <__sfvwrite_r+0x290>
    7d86:	4611      	mov	r1, r2
    7d88:	4650      	mov	r0, sl
    7d8a:	f7fd ff6d 	bl	5c68 <_malloc_r>
    7d8e:	2800      	cmp	r0, #0
    7d90:	f000 80f6 	beq.w	7f80 <__sfvwrite_r+0x2d8>
    7d94:	465a      	mov	r2, fp
    7d96:	6921      	ldr	r1, [r4, #16]
    7d98:	9001      	str	r0, [sp, #4]
    7d9a:	f7f9 ffa7 	bl	1cec <memcpy>
    7d9e:	89a2      	ldrh	r2, [r4, #12]
    7da0:	9b01      	ldr	r3, [sp, #4]
    7da2:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
    7da6:	f042 0280 	orr.w	r2, r2, #128	; 0x80
    7daa:	81a2      	strh	r2, [r4, #12]
    7dac:	eba7 020b 	sub.w	r2, r7, fp
    7db0:	eb03 000b 	add.w	r0, r3, fp
    7db4:	6167      	str	r7, [r4, #20]
    7db6:	46ab      	mov	fp, r5
    7db8:	462f      	mov	r7, r5
    7dba:	6123      	str	r3, [r4, #16]
    7dbc:	6020      	str	r0, [r4, #0]
    7dbe:	60a2      	str	r2, [r4, #8]
    7dc0:	465a      	mov	r2, fp
    7dc2:	4649      	mov	r1, r9
    7dc4:	f000 f982 	bl	80cc <memmove>
    7dc8:	6823      	ldr	r3, [r4, #0]
    7dca:	68a2      	ldr	r2, [r4, #8]
    7dcc:	445b      	add	r3, fp
    7dce:	46ab      	mov	fp, r5
    7dd0:	2500      	movs	r5, #0
    7dd2:	1bd7      	subs	r7, r2, r7
    7dd4:	60a7      	str	r7, [r4, #8]
    7dd6:	6023      	str	r3, [r4, #0]
    7dd8:	f8d8 7008 	ldr.w	r7, [r8, #8]
    7ddc:	44d9      	add	r9, fp
    7dde:	eba7 070b 	sub.w	r7, r7, fp
    7de2:	f8c8 7008 	str.w	r7, [r8, #8]
    7de6:	2f00      	cmp	r7, #0
    7de8:	d039      	beq.n	7e5e <__sfvwrite_r+0x1b6>
    7dea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7dee:	68a7      	ldr	r7, [r4, #8]
    7df0:	b29b      	uxth	r3, r3
    7df2:	6820      	ldr	r0, [r4, #0]
    7df4:	2d00      	cmp	r5, #0
    7df6:	d1a9      	bne.n	7d4c <__sfvwrite_r+0xa4>
    7df8:	e9d6 9500 	ldrd	r9, r5, [r6]
    7dfc:	3608      	adds	r6, #8
    7dfe:	e7a3      	b.n	7d48 <__sfvwrite_r+0xa0>
    7e00:	4633      	mov	r3, r6
    7e02:	4691      	mov	r9, r2
    7e04:	4610      	mov	r0, r2
    7e06:	4617      	mov	r7, r2
    7e08:	464e      	mov	r6, r9
    7e0a:	469b      	mov	fp, r3
    7e0c:	2f00      	cmp	r7, #0
    7e0e:	d06e      	beq.n	7eee <__sfvwrite_r+0x246>
    7e10:	2800      	cmp	r0, #0
    7e12:	d076      	beq.n	7f02 <__sfvwrite_r+0x25a>
    7e14:	6820      	ldr	r0, [r4, #0]
    7e16:	6921      	ldr	r1, [r4, #16]
    7e18:	45b9      	cmp	r9, r7
    7e1a:	464b      	mov	r3, r9
    7e1c:	bf28      	it	cs
    7e1e:	463b      	movcs	r3, r7
    7e20:	4288      	cmp	r0, r1
    7e22:	6962      	ldr	r2, [r4, #20]
    7e24:	d903      	bls.n	7e2e <__sfvwrite_r+0x186>
    7e26:	68a5      	ldr	r5, [r4, #8]
    7e28:	4415      	add	r5, r2
    7e2a:	42ab      	cmp	r3, r5
    7e2c:	dc76      	bgt.n	7f1c <__sfvwrite_r+0x274>
    7e2e:	429a      	cmp	r2, r3
    7e30:	f300 8098 	bgt.w	7f64 <__sfvwrite_r+0x2bc>
    7e34:	4613      	mov	r3, r2
    7e36:	6a65      	ldr	r5, [r4, #36]	; 0x24
    7e38:	4632      	mov	r2, r6
    7e3a:	69e1      	ldr	r1, [r4, #28]
    7e3c:	4650      	mov	r0, sl
    7e3e:	47a8      	blx	r5
    7e40:	1e05      	subs	r5, r0, #0
    7e42:	dd18      	ble.n	7e76 <__sfvwrite_r+0x1ce>
    7e44:	ebb9 0905 	subs.w	r9, r9, r5
    7e48:	d00f      	beq.n	7e6a <__sfvwrite_r+0x1c2>
    7e4a:	2001      	movs	r0, #1
    7e4c:	f8d8 3008 	ldr.w	r3, [r8, #8]
    7e50:	442e      	add	r6, r5
    7e52:	1b5b      	subs	r3, r3, r5
    7e54:	1b7f      	subs	r7, r7, r5
    7e56:	f8c8 3008 	str.w	r3, [r8, #8]
    7e5a:	2b00      	cmp	r3, #0
    7e5c:	d1d6      	bne.n	7e0c <__sfvwrite_r+0x164>
    7e5e:	2000      	movs	r0, #0
    7e60:	b003      	add	sp, #12
    7e62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7e66:	2000      	movs	r0, #0
    7e68:	4770      	bx	lr
    7e6a:	4621      	mov	r1, r4
    7e6c:	4650      	mov	r0, sl
    7e6e:	f7fd fb3d 	bl	54ec <_fflush_r>
    7e72:	2800      	cmp	r0, #0
    7e74:	d0ea      	beq.n	7e4c <__sfvwrite_r+0x1a4>
    7e76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7e7a:	f04f 30ff 	mov.w	r0, #4294967295
    7e7e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
    7e82:	81a3      	strh	r3, [r4, #12]
    7e84:	b003      	add	sp, #12
    7e86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    7e8a:	6923      	ldr	r3, [r4, #16]
    7e8c:	4283      	cmp	r3, r0
    7e8e:	d317      	bcc.n	7ec0 <__sfvwrite_r+0x218>
    7e90:	6962      	ldr	r2, [r4, #20]
    7e92:	42aa      	cmp	r2, r5
    7e94:	d814      	bhi.n	7ec0 <__sfvwrite_r+0x218>
    7e96:	4b3f      	ldr	r3, [pc, #252]	; (7f94 <__sfvwrite_r+0x2ec>)
    7e98:	6a67      	ldr	r7, [r4, #36]	; 0x24
    7e9a:	429d      	cmp	r5, r3
    7e9c:	bf94      	ite	ls
    7e9e:	462b      	movls	r3, r5
    7ea0:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
    7ea4:	fb93 f3f2 	sdiv	r3, r3, r2
    7ea8:	69e1      	ldr	r1, [r4, #28]
    7eaa:	fb02 f303 	mul.w	r3, r2, r3
    7eae:	4650      	mov	r0, sl
    7eb0:	464a      	mov	r2, r9
    7eb2:	47b8      	blx	r7
    7eb4:	f1b0 0b00 	subs.w	fp, r0, #0
    7eb8:	dddd      	ble.n	7e76 <__sfvwrite_r+0x1ce>
    7eba:	eba5 050b 	sub.w	r5, r5, fp
    7ebe:	e78b      	b.n	7dd8 <__sfvwrite_r+0x130>
    7ec0:	42af      	cmp	r7, r5
    7ec2:	bf28      	it	cs
    7ec4:	462f      	movcs	r7, r5
    7ec6:	4649      	mov	r1, r9
    7ec8:	463a      	mov	r2, r7
    7eca:	f000 f8ff 	bl	80cc <memmove>
    7ece:	68a3      	ldr	r3, [r4, #8]
    7ed0:	6822      	ldr	r2, [r4, #0]
    7ed2:	1bdb      	subs	r3, r3, r7
    7ed4:	443a      	add	r2, r7
    7ed6:	46bb      	mov	fp, r7
    7ed8:	60a3      	str	r3, [r4, #8]
    7eda:	6022      	str	r2, [r4, #0]
    7edc:	2b00      	cmp	r3, #0
    7ede:	d1ec      	bne.n	7eba <__sfvwrite_r+0x212>
    7ee0:	4621      	mov	r1, r4
    7ee2:	4650      	mov	r0, sl
    7ee4:	f7fd fb02 	bl	54ec <_fflush_r>
    7ee8:	2800      	cmp	r0, #0
    7eea:	d0e6      	beq.n	7eba <__sfvwrite_r+0x212>
    7eec:	e7c3      	b.n	7e76 <__sfvwrite_r+0x1ce>
    7eee:	f10b 0308 	add.w	r3, fp, #8
    7ef2:	f853 7c04 	ldr.w	r7, [r3, #-4]
    7ef6:	469b      	mov	fp, r3
    7ef8:	f853 6c08 	ldr.w	r6, [r3, #-8]
    7efc:	3308      	adds	r3, #8
    7efe:	2f00      	cmp	r7, #0
    7f00:	d0f7      	beq.n	7ef2 <__sfvwrite_r+0x24a>
    7f02:	463a      	mov	r2, r7
    7f04:	210a      	movs	r1, #10
    7f06:	4630      	mov	r0, r6
    7f08:	f7fe f940 	bl	618c <memchr>
    7f0c:	b338      	cbz	r0, 7f5e <__sfvwrite_r+0x2b6>
    7f0e:	3001      	adds	r0, #1
    7f10:	eba0 0906 	sub.w	r9, r0, r6
    7f14:	e77e      	b.n	7e14 <__sfvwrite_r+0x16c>
    7f16:	462f      	mov	r7, r5
    7f18:	46ab      	mov	fp, r5
    7f1a:	e751      	b.n	7dc0 <__sfvwrite_r+0x118>
    7f1c:	4631      	mov	r1, r6
    7f1e:	462a      	mov	r2, r5
    7f20:	f000 f8d4 	bl	80cc <memmove>
    7f24:	6823      	ldr	r3, [r4, #0]
    7f26:	4621      	mov	r1, r4
    7f28:	442b      	add	r3, r5
    7f2a:	6023      	str	r3, [r4, #0]
    7f2c:	4650      	mov	r0, sl
    7f2e:	f7fd fadd 	bl	54ec <_fflush_r>
    7f32:	2800      	cmp	r0, #0
    7f34:	d086      	beq.n	7e44 <__sfvwrite_r+0x19c>
    7f36:	e79e      	b.n	7e76 <__sfvwrite_r+0x1ce>
    7f38:	4650      	mov	r0, sl
    7f3a:	f000 f93f 	bl	81bc <_realloc_r>
    7f3e:	4603      	mov	r3, r0
    7f40:	2800      	cmp	r0, #0
    7f42:	f47f af33 	bne.w	7dac <__sfvwrite_r+0x104>
    7f46:	6921      	ldr	r1, [r4, #16]
    7f48:	4650      	mov	r0, sl
    7f4a:	f7fd fca3 	bl	5894 <_free_r>
    7f4e:	220c      	movs	r2, #12
    7f50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7f54:	f8ca 2000 	str.w	r2, [sl]
    7f58:	f023 0380 	bic.w	r3, r3, #128	; 0x80
    7f5c:	e78d      	b.n	7e7a <__sfvwrite_r+0x1d2>
    7f5e:	f107 0901 	add.w	r9, r7, #1
    7f62:	e757      	b.n	7e14 <__sfvwrite_r+0x16c>
    7f64:	461a      	mov	r2, r3
    7f66:	4631      	mov	r1, r6
    7f68:	461d      	mov	r5, r3
    7f6a:	9301      	str	r3, [sp, #4]
    7f6c:	f000 f8ae 	bl	80cc <memmove>
    7f70:	68a1      	ldr	r1, [r4, #8]
    7f72:	6822      	ldr	r2, [r4, #0]
    7f74:	9b01      	ldr	r3, [sp, #4]
    7f76:	1ac9      	subs	r1, r1, r3
    7f78:	4413      	add	r3, r2
    7f7a:	60a1      	str	r1, [r4, #8]
    7f7c:	6023      	str	r3, [r4, #0]
    7f7e:	e761      	b.n	7e44 <__sfvwrite_r+0x19c>
    7f80:	220c      	movs	r2, #12
    7f82:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
    7f86:	f8ca 2000 	str.w	r2, [sl]
    7f8a:	e776      	b.n	7e7a <__sfvwrite_r+0x1d2>
    7f8c:	f04f 30ff 	mov.w	r0, #4294967295
    7f90:	e766      	b.n	7e60 <__sfvwrite_r+0x1b8>
    7f92:	bf00      	nop
    7f94:	7ffffffe 	.word	0x7ffffffe
    7f98:	7ffffc00 	.word	0x7ffffc00

Disassembly of section .text._isatty_r:

00007f9c <_isatty_r>:
    7f9c:	b538      	push	{r3, r4, r5, lr}
    7f9e:	2300      	movs	r3, #0
    7fa0:	4c06      	ldr	r4, [pc, #24]	; (7fbc <_isatty_r+0x20>)
    7fa2:	4605      	mov	r5, r0
    7fa4:	4608      	mov	r0, r1
    7fa6:	6023      	str	r3, [r4, #0]
    7fa8:	f7f8 fd5c 	bl	a64 <_isatty>
    7fac:	1c43      	adds	r3, r0, #1
    7fae:	d000      	beq.n	7fb2 <_isatty_r+0x16>
    7fb0:	bd38      	pop	{r3, r4, r5, pc}
    7fb2:	6823      	ldr	r3, [r4, #0]
    7fb4:	2b00      	cmp	r3, #0
    7fb6:	d0fb      	beq.n	7fb0 <_isatty_r+0x14>
    7fb8:	602b      	str	r3, [r5, #0]
    7fba:	bd38      	pop	{r3, r4, r5, pc}
    7fbc:	20000a28 	.word	0x20000a28

Disassembly of section .text._setlocale_r:

00007fc0 <_setlocale_r>:
    7fc0:	b1b2      	cbz	r2, 7ff0 <_setlocale_r+0x30>
    7fc2:	b510      	push	{r4, lr}
    7fc4:	490b      	ldr	r1, [pc, #44]	; (7ff4 <_setlocale_r+0x34>)
    7fc6:	4610      	mov	r0, r2
    7fc8:	4614      	mov	r4, r2
    7fca:	f7f9 fdb1 	bl	1b30 <strcmp>
    7fce:	b908      	cbnz	r0, 7fd4 <_setlocale_r+0x14>
    7fd0:	4809      	ldr	r0, [pc, #36]	; (7ff8 <_setlocale_r+0x38>)
    7fd2:	bd10      	pop	{r4, pc}
    7fd4:	4908      	ldr	r1, [pc, #32]	; (7ff8 <_setlocale_r+0x38>)
    7fd6:	4620      	mov	r0, r4
    7fd8:	f7f9 fdaa 	bl	1b30 <strcmp>
    7fdc:	2800      	cmp	r0, #0
    7fde:	d0f7      	beq.n	7fd0 <_setlocale_r+0x10>
    7fe0:	4620      	mov	r0, r4
    7fe2:	4906      	ldr	r1, [pc, #24]	; (7ffc <_setlocale_r+0x3c>)
    7fe4:	f7f9 fda4 	bl	1b30 <strcmp>
    7fe8:	2800      	cmp	r0, #0
    7fea:	d0f1      	beq.n	7fd0 <_setlocale_r+0x10>
    7fec:	2000      	movs	r0, #0
    7fee:	bd10      	pop	{r4, pc}
    7ff0:	4801      	ldr	r0, [pc, #4]	; (7ff8 <_setlocale_r+0x38>)
    7ff2:	4770      	bx	lr
    7ff4:	00008c08 	.word	0x00008c08
    7ff8:	00008c04 	.word	0x00008c04
    7ffc:	00008c10 	.word	0x00008c10

Disassembly of section .text.__locale_mb_cur_max:

00008000 <__locale_mb_cur_max>:
    8000:	4b04      	ldr	r3, [pc, #16]	; (8014 <__locale_mb_cur_max+0x14>)
    8002:	4a05      	ldr	r2, [pc, #20]	; (8018 <__locale_mb_cur_max+0x18>)
    8004:	681b      	ldr	r3, [r3, #0]
    8006:	6b5b      	ldr	r3, [r3, #52]	; 0x34
    8008:	2b00      	cmp	r3, #0
    800a:	bf08      	it	eq
    800c:	4613      	moveq	r3, r2
    800e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
    8012:	4770      	bx	lr
    8014:	20000010 	.word	0x20000010
    8018:	20000858 	.word	0x20000858

Disassembly of section .text.__locale_ctype_ptr_l:

0000801c <__locale_ctype_ptr_l>:
    801c:	f8d0 00ec 	ldr.w	r0, [r0, #236]	; 0xec
    8020:	4770      	bx	lr
    8022:	bf00      	nop

Disassembly of section .text.__locale_ctype_ptr:

00008024 <__locale_ctype_ptr>:
    8024:	4b04      	ldr	r3, [pc, #16]	; (8038 <__locale_ctype_ptr+0x14>)
    8026:	4a05      	ldr	r2, [pc, #20]	; (803c <__locale_ctype_ptr+0x18>)
    8028:	681b      	ldr	r3, [r3, #0]
    802a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
    802c:	2b00      	cmp	r3, #0
    802e:	bf08      	it	eq
    8030:	4613      	moveq	r3, r2
    8032:	f8d3 00ec 	ldr.w	r0, [r3, #236]	; 0xec
    8036:	4770      	bx	lr
    8038:	20000010 	.word	0x20000010
    803c:	20000858 	.word	0x20000858

Disassembly of section .text.setlocale:

00008040 <setlocale>:
    8040:	4b02      	ldr	r3, [pc, #8]	; (804c <setlocale+0xc>)
    8042:	460a      	mov	r2, r1
    8044:	4601      	mov	r1, r0
    8046:	6818      	ldr	r0, [r3, #0]
    8048:	f7ff bfba 	b.w	7fc0 <_setlocale_r>
    804c:	20000010 	.word	0x20000010

Disassembly of section .text._lseek_r:

00008050 <_lseek_r>:
    8050:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8052:	460e      	mov	r6, r1
    8054:	2500      	movs	r5, #0
    8056:	4c08      	ldr	r4, [pc, #32]	; (8078 <_lseek_r+0x28>)
    8058:	4611      	mov	r1, r2
    805a:	4607      	mov	r7, r0
    805c:	461a      	mov	r2, r3
    805e:	4630      	mov	r0, r6
    8060:	6025      	str	r5, [r4, #0]
    8062:	f7f8 fd09 	bl	a78 <_lseek>
    8066:	1c43      	adds	r3, r0, #1
    8068:	d000      	beq.n	806c <_lseek_r+0x1c>
    806a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    806c:	6823      	ldr	r3, [r4, #0]
    806e:	2b00      	cmp	r3, #0
    8070:	d0fb      	beq.n	806a <_lseek_r+0x1a>
    8072:	603b      	str	r3, [r7, #0]
    8074:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8076:	bf00      	nop
    8078:	20000a28 	.word	0x20000a28

Disassembly of section .text._mbtowc_r:

0000807c <_mbtowc_r>:
    807c:	b430      	push	{r4, r5}
    807e:	4c06      	ldr	r4, [pc, #24]	; (8098 <_mbtowc_r+0x1c>)
    8080:	4d06      	ldr	r5, [pc, #24]	; (809c <_mbtowc_r+0x20>)
    8082:	6824      	ldr	r4, [r4, #0]
    8084:	6b64      	ldr	r4, [r4, #52]	; 0x34
    8086:	2c00      	cmp	r4, #0
    8088:	bf08      	it	eq
    808a:	462c      	moveq	r4, r5
    808c:	f8d4 40e4 	ldr.w	r4, [r4, #228]	; 0xe4
    8090:	46a4      	mov	ip, r4
    8092:	bc30      	pop	{r4, r5}
    8094:	4760      	bx	ip
    8096:	bf00      	nop
    8098:	20000010 	.word	0x20000010
    809c:	20000858 	.word	0x20000858

Disassembly of section .text.__ascii_mbtowc:

000080a0 <__ascii_mbtowc>:
    80a0:	b082      	sub	sp, #8
    80a2:	b149      	cbz	r1, 80b8 <__ascii_mbtowc+0x18>
    80a4:	b15a      	cbz	r2, 80be <__ascii_mbtowc+0x1e>
    80a6:	b16b      	cbz	r3, 80c4 <__ascii_mbtowc+0x24>
    80a8:	7813      	ldrb	r3, [r2, #0]
    80aa:	600b      	str	r3, [r1, #0]
    80ac:	7812      	ldrb	r2, [r2, #0]
    80ae:	1c10      	adds	r0, r2, #0
    80b0:	bf18      	it	ne
    80b2:	2001      	movne	r0, #1
    80b4:	b002      	add	sp, #8
    80b6:	4770      	bx	lr
    80b8:	a901      	add	r1, sp, #4
    80ba:	2a00      	cmp	r2, #0
    80bc:	d1f3      	bne.n	80a6 <__ascii_mbtowc+0x6>
    80be:	4610      	mov	r0, r2
    80c0:	b002      	add	sp, #8
    80c2:	4770      	bx	lr
    80c4:	f06f 0001 	mvn.w	r0, #1
    80c8:	e7f4      	b.n	80b4 <__ascii_mbtowc+0x14>
    80ca:	bf00      	nop

Disassembly of section .text.memmove:

000080cc <memmove>:
    80cc:	4288      	cmp	r0, r1
    80ce:	b4f0      	push	{r4, r5, r6, r7}
    80d0:	d90d      	bls.n	80ee <memmove+0x22>
    80d2:	188b      	adds	r3, r1, r2
    80d4:	4283      	cmp	r3, r0
    80d6:	d90a      	bls.n	80ee <memmove+0x22>
    80d8:	1884      	adds	r4, r0, r2
    80da:	b132      	cbz	r2, 80ea <memmove+0x1e>
    80dc:	4622      	mov	r2, r4
    80de:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
    80e2:	4299      	cmp	r1, r3
    80e4:	f802 4d01 	strb.w	r4, [r2, #-1]!
    80e8:	d1f9      	bne.n	80de <memmove+0x12>
    80ea:	bcf0      	pop	{r4, r5, r6, r7}
    80ec:	4770      	bx	lr
    80ee:	2a0f      	cmp	r2, #15
    80f0:	d948      	bls.n	8184 <memmove+0xb8>
    80f2:	ea40 0301 	orr.w	r3, r0, r1
    80f6:	079b      	lsls	r3, r3, #30
    80f8:	d146      	bne.n	8188 <memmove+0xbc>
    80fa:	f1a2 0310 	sub.w	r3, r2, #16
    80fe:	091b      	lsrs	r3, r3, #4
    8100:	f101 0720 	add.w	r7, r1, #32
    8104:	eb07 1703 	add.w	r7, r7, r3, lsl #4
    8108:	f101 0410 	add.w	r4, r1, #16
    810c:	f100 0510 	add.w	r5, r0, #16
    8110:	f854 6c10 	ldr.w	r6, [r4, #-16]
    8114:	3410      	adds	r4, #16
    8116:	f845 6c10 	str.w	r6, [r5, #-16]
    811a:	f854 6c1c 	ldr.w	r6, [r4, #-28]
    811e:	3510      	adds	r5, #16
    8120:	f845 6c1c 	str.w	r6, [r5, #-28]
    8124:	f854 6c18 	ldr.w	r6, [r4, #-24]
    8128:	f845 6c18 	str.w	r6, [r5, #-24]
    812c:	f854 6c14 	ldr.w	r6, [r4, #-20]
    8130:	42bc      	cmp	r4, r7
    8132:	f845 6c14 	str.w	r6, [r5, #-20]
    8136:	d1eb      	bne.n	8110 <memmove+0x44>
    8138:	3301      	adds	r3, #1
    813a:	f002 050f 	and.w	r5, r2, #15
    813e:	011b      	lsls	r3, r3, #4
    8140:	2d03      	cmp	r5, #3
    8142:	4419      	add	r1, r3
    8144:	4403      	add	r3, r0
    8146:	d921      	bls.n	818c <memmove+0xc0>
    8148:	460f      	mov	r7, r1
    814a:	462c      	mov	r4, r5
    814c:	1f1e      	subs	r6, r3, #4
    814e:	f857 cb04 	ldr.w	ip, [r7], #4
    8152:	3c04      	subs	r4, #4
    8154:	2c03      	cmp	r4, #3
    8156:	f846 cf04 	str.w	ip, [r6, #4]!
    815a:	d8f8      	bhi.n	814e <memmove+0x82>
    815c:	1f2c      	subs	r4, r5, #4
    815e:	f024 0403 	bic.w	r4, r4, #3
    8162:	3404      	adds	r4, #4
    8164:	4423      	add	r3, r4
    8166:	4421      	add	r1, r4
    8168:	f002 0203 	and.w	r2, r2, #3
    816c:	2a00      	cmp	r2, #0
    816e:	d0bc      	beq.n	80ea <memmove+0x1e>
    8170:	3b01      	subs	r3, #1
    8172:	440a      	add	r2, r1
    8174:	f811 4b01 	ldrb.w	r4, [r1], #1
    8178:	4291      	cmp	r1, r2
    817a:	f803 4f01 	strb.w	r4, [r3, #1]!
    817e:	d1f9      	bne.n	8174 <memmove+0xa8>
    8180:	bcf0      	pop	{r4, r5, r6, r7}
    8182:	4770      	bx	lr
    8184:	4603      	mov	r3, r0
    8186:	e7f1      	b.n	816c <memmove+0xa0>
    8188:	4603      	mov	r3, r0
    818a:	e7f1      	b.n	8170 <memmove+0xa4>
    818c:	462a      	mov	r2, r5
    818e:	e7ed      	b.n	816c <memmove+0xa0>

Disassembly of section .text._read_r:

00008190 <_read_r>:
    8190:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    8192:	460e      	mov	r6, r1
    8194:	2500      	movs	r5, #0
    8196:	4c08      	ldr	r4, [pc, #32]	; (81b8 <_read_r+0x28>)
    8198:	4611      	mov	r1, r2
    819a:	4607      	mov	r7, r0
    819c:	461a      	mov	r2, r3
    819e:	4630      	mov	r0, r6
    81a0:	6025      	str	r5, [r4, #0]
    81a2:	f7f8 fbc8 	bl	936 <_read>
    81a6:	1c43      	adds	r3, r0, #1
    81a8:	d000      	beq.n	81ac <_read_r+0x1c>
    81aa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    81ac:	6823      	ldr	r3, [r4, #0]
    81ae:	2b00      	cmp	r3, #0
    81b0:	d0fb      	beq.n	81aa <_read_r+0x1a>
    81b2:	603b      	str	r3, [r7, #0]
    81b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    81b6:	bf00      	nop
    81b8:	20000a28 	.word	0x20000a28

Disassembly of section .text._realloc_r:

000081bc <_realloc_r>:
    81bc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    81c0:	4692      	mov	sl, r2
    81c2:	b083      	sub	sp, #12
    81c4:	2900      	cmp	r1, #0
    81c6:	f000 80a1 	beq.w	830c <_realloc_r+0x150>
    81ca:	460d      	mov	r5, r1
    81cc:	4680      	mov	r8, r0
    81ce:	f10a 040b 	add.w	r4, sl, #11
    81d2:	f7fe f821 	bl	6218 <__malloc_lock>
    81d6:	f855 2c04 	ldr.w	r2, [r5, #-4]
    81da:	2c16      	cmp	r4, #22
    81dc:	f022 0603 	bic.w	r6, r2, #3
    81e0:	f1a5 0708 	sub.w	r7, r5, #8
    81e4:	d83e      	bhi.n	8264 <_realloc_r+0xa8>
    81e6:	2410      	movs	r4, #16
    81e8:	4621      	mov	r1, r4
    81ea:	45a2      	cmp	sl, r4
    81ec:	d83f      	bhi.n	826e <_realloc_r+0xb2>
    81ee:	428e      	cmp	r6, r1
    81f0:	eb07 0906 	add.w	r9, r7, r6
    81f4:	da74      	bge.n	82e0 <_realloc_r+0x124>
    81f6:	4bc8      	ldr	r3, [pc, #800]	; (8518 <_realloc_r+0x35c>)
    81f8:	6898      	ldr	r0, [r3, #8]
    81fa:	4548      	cmp	r0, r9
    81fc:	f000 80aa 	beq.w	8354 <_realloc_r+0x198>
    8200:	f8d9 0004 	ldr.w	r0, [r9, #4]
    8204:	f020 0301 	bic.w	r3, r0, #1
    8208:	444b      	add	r3, r9
    820a:	685b      	ldr	r3, [r3, #4]
    820c:	07db      	lsls	r3, r3, #31
    820e:	f140 8083 	bpl.w	8318 <_realloc_r+0x15c>
    8212:	07d2      	lsls	r2, r2, #31
    8214:	d534      	bpl.n	8280 <_realloc_r+0xc4>
    8216:	4651      	mov	r1, sl
    8218:	4640      	mov	r0, r8
    821a:	f7fd fd25 	bl	5c68 <_malloc_r>
    821e:	4682      	mov	sl, r0
    8220:	b1e0      	cbz	r0, 825c <_realloc_r+0xa0>
    8222:	f855 3c04 	ldr.w	r3, [r5, #-4]
    8226:	f1a0 0208 	sub.w	r2, r0, #8
    822a:	f023 0301 	bic.w	r3, r3, #1
    822e:	443b      	add	r3, r7
    8230:	4293      	cmp	r3, r2
    8232:	f000 810e 	beq.w	8452 <_realloc_r+0x296>
    8236:	1f32      	subs	r2, r6, #4
    8238:	2a24      	cmp	r2, #36	; 0x24
    823a:	f200 8114 	bhi.w	8466 <_realloc_r+0x2aa>
    823e:	2a13      	cmp	r2, #19
    8240:	6829      	ldr	r1, [r5, #0]
    8242:	f200 80fb 	bhi.w	843c <_realloc_r+0x280>
    8246:	4603      	mov	r3, r0
    8248:	462a      	mov	r2, r5
    824a:	6019      	str	r1, [r3, #0]
    824c:	6851      	ldr	r1, [r2, #4]
    824e:	6059      	str	r1, [r3, #4]
    8250:	6892      	ldr	r2, [r2, #8]
    8252:	609a      	str	r2, [r3, #8]
    8254:	4629      	mov	r1, r5
    8256:	4640      	mov	r0, r8
    8258:	f7fd fb1c 	bl	5894 <_free_r>
    825c:	4640      	mov	r0, r8
    825e:	f7fd ffe1 	bl	6224 <__malloc_unlock>
    8262:	e04f      	b.n	8304 <_realloc_r+0x148>
    8264:	f024 0407 	bic.w	r4, r4, #7
    8268:	2c00      	cmp	r4, #0
    826a:	4621      	mov	r1, r4
    826c:	dabd      	bge.n	81ea <_realloc_r+0x2e>
    826e:	f04f 0a00 	mov.w	sl, #0
    8272:	230c      	movs	r3, #12
    8274:	4650      	mov	r0, sl
    8276:	f8c8 3000 	str.w	r3, [r8]
    827a:	b003      	add	sp, #12
    827c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    8280:	f855 3c08 	ldr.w	r3, [r5, #-8]
    8284:	eba7 0b03 	sub.w	fp, r7, r3
    8288:	f8db 2004 	ldr.w	r2, [fp, #4]
    828c:	f022 0203 	bic.w	r2, r2, #3
    8290:	18b3      	adds	r3, r6, r2
    8292:	428b      	cmp	r3, r1
    8294:	dbbf      	blt.n	8216 <_realloc_r+0x5a>
    8296:	46da      	mov	sl, fp
    8298:	f8db 100c 	ldr.w	r1, [fp, #12]
    829c:	f85a 0f08 	ldr.w	r0, [sl, #8]!
    82a0:	1f32      	subs	r2, r6, #4
    82a2:	2a24      	cmp	r2, #36	; 0x24
    82a4:	60c1      	str	r1, [r0, #12]
    82a6:	eb0b 0903 	add.w	r9, fp, r3
    82aa:	6088      	str	r0, [r1, #8]
    82ac:	f200 80be 	bhi.w	842c <_realloc_r+0x270>
    82b0:	2a13      	cmp	r2, #19
    82b2:	6829      	ldr	r1, [r5, #0]
    82b4:	f240 80d5 	bls.w	8462 <_realloc_r+0x2a6>
    82b8:	f8cb 1008 	str.w	r1, [fp, #8]
    82bc:	6869      	ldr	r1, [r5, #4]
    82be:	2a1b      	cmp	r2, #27
    82c0:	f8cb 100c 	str.w	r1, [fp, #12]
    82c4:	68a9      	ldr	r1, [r5, #8]
    82c6:	f200 80e5 	bhi.w	8494 <_realloc_r+0x2d8>
    82ca:	f10b 0210 	add.w	r2, fp, #16
    82ce:	3508      	adds	r5, #8
    82d0:	6011      	str	r1, [r2, #0]
    82d2:	6869      	ldr	r1, [r5, #4]
    82d4:	461e      	mov	r6, r3
    82d6:	6051      	str	r1, [r2, #4]
    82d8:	68ab      	ldr	r3, [r5, #8]
    82da:	465f      	mov	r7, fp
    82dc:	4655      	mov	r5, sl
    82de:	6093      	str	r3, [r2, #8]
    82e0:	687a      	ldr	r2, [r7, #4]
    82e2:	1b33      	subs	r3, r6, r4
    82e4:	2b0f      	cmp	r3, #15
    82e6:	f002 0201 	and.w	r2, r2, #1
    82ea:	d822      	bhi.n	8332 <_realloc_r+0x176>
    82ec:	4332      	orrs	r2, r6
    82ee:	607a      	str	r2, [r7, #4]
    82f0:	f8d9 3004 	ldr.w	r3, [r9, #4]
    82f4:	f043 0301 	orr.w	r3, r3, #1
    82f8:	f8c9 3004 	str.w	r3, [r9, #4]
    82fc:	4640      	mov	r0, r8
    82fe:	f7fd ff91 	bl	6224 <__malloc_unlock>
    8302:	46aa      	mov	sl, r5
    8304:	4650      	mov	r0, sl
    8306:	b003      	add	sp, #12
    8308:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    830c:	4611      	mov	r1, r2
    830e:	b003      	add	sp, #12
    8310:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8314:	f7fd bca8 	b.w	5c68 <_malloc_r>
    8318:	f020 0003 	bic.w	r0, r0, #3
    831c:	1833      	adds	r3, r6, r0
    831e:	428b      	cmp	r3, r1
    8320:	db63      	blt.n	83ea <_realloc_r+0x22e>
    8322:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
    8326:	461e      	mov	r6, r3
    8328:	60ca      	str	r2, [r1, #12]
    832a:	eb07 0903 	add.w	r9, r7, r3
    832e:	6091      	str	r1, [r2, #8]
    8330:	e7d6      	b.n	82e0 <_realloc_r+0x124>
    8332:	1939      	adds	r1, r7, r4
    8334:	4322      	orrs	r2, r4
    8336:	f043 0301 	orr.w	r3, r3, #1
    833a:	607a      	str	r2, [r7, #4]
    833c:	604b      	str	r3, [r1, #4]
    833e:	f8d9 3004 	ldr.w	r3, [r9, #4]
    8342:	3108      	adds	r1, #8
    8344:	f043 0301 	orr.w	r3, r3, #1
    8348:	f8c9 3004 	str.w	r3, [r9, #4]
    834c:	4640      	mov	r0, r8
    834e:	f7fd faa1 	bl	5894 <_free_r>
    8352:	e7d3      	b.n	82fc <_realloc_r+0x140>
    8354:	f8d0 9004 	ldr.w	r9, [r0, #4]
    8358:	f104 0010 	add.w	r0, r4, #16
    835c:	f029 0903 	bic.w	r9, r9, #3
    8360:	44b1      	add	r9, r6
    8362:	4581      	cmp	r9, r0
    8364:	f280 8083 	bge.w	846e <_realloc_r+0x2b2>
    8368:	07d2      	lsls	r2, r2, #31
    836a:	f53f af54 	bmi.w	8216 <_realloc_r+0x5a>
    836e:	f855 2c08 	ldr.w	r2, [r5, #-8]
    8372:	eba7 0b02 	sub.w	fp, r7, r2
    8376:	f8db 2004 	ldr.w	r2, [fp, #4]
    837a:	f022 0203 	bic.w	r2, r2, #3
    837e:	4491      	add	r9, r2
    8380:	4548      	cmp	r0, r9
    8382:	dc85      	bgt.n	8290 <_realloc_r+0xd4>
    8384:	46da      	mov	sl, fp
    8386:	f8db 100c 	ldr.w	r1, [fp, #12]
    838a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
    838e:	1f32      	subs	r2, r6, #4
    8390:	2a24      	cmp	r2, #36	; 0x24
    8392:	60c1      	str	r1, [r0, #12]
    8394:	6088      	str	r0, [r1, #8]
    8396:	f200 80ab 	bhi.w	84f0 <_realloc_r+0x334>
    839a:	2a13      	cmp	r2, #19
    839c:	6829      	ldr	r1, [r5, #0]
    839e:	f240 80a5 	bls.w	84ec <_realloc_r+0x330>
    83a2:	f8cb 1008 	str.w	r1, [fp, #8]
    83a6:	6869      	ldr	r1, [r5, #4]
    83a8:	2a1b      	cmp	r2, #27
    83aa:	f8cb 100c 	str.w	r1, [fp, #12]
    83ae:	68a9      	ldr	r1, [r5, #8]
    83b0:	f200 80a5 	bhi.w	84fe <_realloc_r+0x342>
    83b4:	f10b 0210 	add.w	r2, fp, #16
    83b8:	3508      	adds	r5, #8
    83ba:	6011      	str	r1, [r2, #0]
    83bc:	6869      	ldr	r1, [r5, #4]
    83be:	6051      	str	r1, [r2, #4]
    83c0:	68a9      	ldr	r1, [r5, #8]
    83c2:	6091      	str	r1, [r2, #8]
    83c4:	eba9 0204 	sub.w	r2, r9, r4
    83c8:	eb0b 0104 	add.w	r1, fp, r4
    83cc:	f042 0201 	orr.w	r2, r2, #1
    83d0:	6099      	str	r1, [r3, #8]
    83d2:	604a      	str	r2, [r1, #4]
    83d4:	f8db 3004 	ldr.w	r3, [fp, #4]
    83d8:	4640      	mov	r0, r8
    83da:	f003 0301 	and.w	r3, r3, #1
    83de:	431c      	orrs	r4, r3
    83e0:	f8cb 4004 	str.w	r4, [fp, #4]
    83e4:	f7fd ff1e 	bl	6224 <__malloc_unlock>
    83e8:	e78c      	b.n	8304 <_realloc_r+0x148>
    83ea:	07d3      	lsls	r3, r2, #31
    83ec:	f53f af13 	bmi.w	8216 <_realloc_r+0x5a>
    83f0:	f855 3c08 	ldr.w	r3, [r5, #-8]
    83f4:	eba7 0b03 	sub.w	fp, r7, r3
    83f8:	f8db 2004 	ldr.w	r2, [fp, #4]
    83fc:	f022 0203 	bic.w	r2, r2, #3
    8400:	4410      	add	r0, r2
    8402:	1983      	adds	r3, r0, r6
    8404:	428b      	cmp	r3, r1
    8406:	f6ff af43 	blt.w	8290 <_realloc_r+0xd4>
    840a:	e9d9 0102 	ldrd	r0, r1, [r9, #8]
    840e:	46da      	mov	sl, fp
    8410:	60c1      	str	r1, [r0, #12]
    8412:	6088      	str	r0, [r1, #8]
    8414:	f85a 0f08 	ldr.w	r0, [sl, #8]!
    8418:	f8db 100c 	ldr.w	r1, [fp, #12]
    841c:	1f32      	subs	r2, r6, #4
    841e:	2a24      	cmp	r2, #36	; 0x24
    8420:	60c1      	str	r1, [r0, #12]
    8422:	eb0b 0903 	add.w	r9, fp, r3
    8426:	6088      	str	r0, [r1, #8]
    8428:	f67f af42 	bls.w	82b0 <_realloc_r+0xf4>
    842c:	4629      	mov	r1, r5
    842e:	4650      	mov	r0, sl
    8430:	461e      	mov	r6, r3
    8432:	465f      	mov	r7, fp
    8434:	f7ff fe4a 	bl	80cc <memmove>
    8438:	4655      	mov	r5, sl
    843a:	e751      	b.n	82e0 <_realloc_r+0x124>
    843c:	6001      	str	r1, [r0, #0]
    843e:	686b      	ldr	r3, [r5, #4]
    8440:	2a1b      	cmp	r2, #27
    8442:	6043      	str	r3, [r0, #4]
    8444:	d832      	bhi.n	84ac <_realloc_r+0x2f0>
    8446:	f105 0208 	add.w	r2, r5, #8
    844a:	f100 0308 	add.w	r3, r0, #8
    844e:	68a9      	ldr	r1, [r5, #8]
    8450:	e6fb      	b.n	824a <_realloc_r+0x8e>
    8452:	f850 3c04 	ldr.w	r3, [r0, #-4]
    8456:	f023 0303 	bic.w	r3, r3, #3
    845a:	441e      	add	r6, r3
    845c:	eb07 0906 	add.w	r9, r7, r6
    8460:	e73e      	b.n	82e0 <_realloc_r+0x124>
    8462:	4652      	mov	r2, sl
    8464:	e734      	b.n	82d0 <_realloc_r+0x114>
    8466:	4629      	mov	r1, r5
    8468:	f7ff fe30 	bl	80cc <memmove>
    846c:	e6f2      	b.n	8254 <_realloc_r+0x98>
    846e:	eba9 0904 	sub.w	r9, r9, r4
    8472:	4427      	add	r7, r4
    8474:	f049 0201 	orr.w	r2, r9, #1
    8478:	609f      	str	r7, [r3, #8]
    847a:	607a      	str	r2, [r7, #4]
    847c:	f855 3c04 	ldr.w	r3, [r5, #-4]
    8480:	4640      	mov	r0, r8
    8482:	f003 0301 	and.w	r3, r3, #1
    8486:	431c      	orrs	r4, r3
    8488:	f845 4c04 	str.w	r4, [r5, #-4]
    848c:	f7fd feca 	bl	6224 <__malloc_unlock>
    8490:	46aa      	mov	sl, r5
    8492:	e737      	b.n	8304 <_realloc_r+0x148>
    8494:	f8cb 1010 	str.w	r1, [fp, #16]
    8498:	68e9      	ldr	r1, [r5, #12]
    849a:	2a24      	cmp	r2, #36	; 0x24
    849c:	f8cb 1014 	str.w	r1, [fp, #20]
    84a0:	6929      	ldr	r1, [r5, #16]
    84a2:	d00f      	beq.n	84c4 <_realloc_r+0x308>
    84a4:	f10b 0218 	add.w	r2, fp, #24
    84a8:	3510      	adds	r5, #16
    84aa:	e711      	b.n	82d0 <_realloc_r+0x114>
    84ac:	68ab      	ldr	r3, [r5, #8]
    84ae:	2a24      	cmp	r2, #36	; 0x24
    84b0:	6083      	str	r3, [r0, #8]
    84b2:	68eb      	ldr	r3, [r5, #12]
    84b4:	60c3      	str	r3, [r0, #12]
    84b6:	d00f      	beq.n	84d8 <_realloc_r+0x31c>
    84b8:	f105 0210 	add.w	r2, r5, #16
    84bc:	f100 0310 	add.w	r3, r0, #16
    84c0:	6929      	ldr	r1, [r5, #16]
    84c2:	e6c2      	b.n	824a <_realloc_r+0x8e>
    84c4:	f8cb 1018 	str.w	r1, [fp, #24]
    84c8:	6969      	ldr	r1, [r5, #20]
    84ca:	f10b 0220 	add.w	r2, fp, #32
    84ce:	f8cb 101c 	str.w	r1, [fp, #28]
    84d2:	69a9      	ldr	r1, [r5, #24]
    84d4:	3518      	adds	r5, #24
    84d6:	e6fb      	b.n	82d0 <_realloc_r+0x114>
    84d8:	692b      	ldr	r3, [r5, #16]
    84da:	f105 0218 	add.w	r2, r5, #24
    84de:	6103      	str	r3, [r0, #16]
    84e0:	6969      	ldr	r1, [r5, #20]
    84e2:	f100 0318 	add.w	r3, r0, #24
    84e6:	6141      	str	r1, [r0, #20]
    84e8:	69a9      	ldr	r1, [r5, #24]
    84ea:	e6ae      	b.n	824a <_realloc_r+0x8e>
    84ec:	4652      	mov	r2, sl
    84ee:	e764      	b.n	83ba <_realloc_r+0x1fe>
    84f0:	4629      	mov	r1, r5
    84f2:	4650      	mov	r0, sl
    84f4:	9301      	str	r3, [sp, #4]
    84f6:	f7ff fde9 	bl	80cc <memmove>
    84fa:	9b01      	ldr	r3, [sp, #4]
    84fc:	e762      	b.n	83c4 <_realloc_r+0x208>
    84fe:	f8cb 1010 	str.w	r1, [fp, #16]
    8502:	68e9      	ldr	r1, [r5, #12]
    8504:	2a24      	cmp	r2, #36	; 0x24
    8506:	f8cb 1014 	str.w	r1, [fp, #20]
    850a:	6929      	ldr	r1, [r5, #16]
    850c:	d006      	beq.n	851c <_realloc_r+0x360>
    850e:	f10b 0218 	add.w	r2, fp, #24
    8512:	3510      	adds	r5, #16
    8514:	e751      	b.n	83ba <_realloc_r+0x1fe>
    8516:	bf00      	nop
    8518:	20000448 	.word	0x20000448
    851c:	f8cb 1018 	str.w	r1, [fp, #24]
    8520:	6969      	ldr	r1, [r5, #20]
    8522:	f10b 0220 	add.w	r2, fp, #32
    8526:	f8cb 101c 	str.w	r1, [fp, #28]
    852a:	69a9      	ldr	r1, [r5, #24]
    852c:	3518      	adds	r5, #24
    852e:	e744      	b.n	83ba <_realloc_r+0x1fe>

Disassembly of section .text.cleanup_glue:

00008530 <cleanup_glue>:
    8530:	b538      	push	{r3, r4, r5, lr}
    8532:	460c      	mov	r4, r1
    8534:	6809      	ldr	r1, [r1, #0]
    8536:	4605      	mov	r5, r0
    8538:	b929      	cbnz	r1, 8546 <cleanup_glue+0x16>
    853a:	4621      	mov	r1, r4
    853c:	4628      	mov	r0, r5
    853e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    8542:	f7fd b9a7 	b.w	5894 <_free_r>
    8546:	f7ff fff3 	bl	8530 <cleanup_glue>
    854a:	4621      	mov	r1, r4
    854c:	4628      	mov	r0, r5
    854e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
    8552:	f7fd b99f 	b.w	5894 <_free_r>
    8556:	bf00      	nop

Disassembly of section .text._reclaim_reent:

00008558 <_reclaim_reent>:
    8558:	4b20      	ldr	r3, [pc, #128]	; (85dc <_reclaim_reent+0x84>)
    855a:	681b      	ldr	r3, [r3, #0]
    855c:	4283      	cmp	r3, r0
    855e:	d03b      	beq.n	85d8 <_reclaim_reent+0x80>
    8560:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
    8562:	b570      	push	{r4, r5, r6, lr}
    8564:	4605      	mov	r5, r0
    8566:	b18b      	cbz	r3, 858c <_reclaim_reent+0x34>
    8568:	2600      	movs	r6, #0
    856a:	5999      	ldr	r1, [r3, r6]
    856c:	b139      	cbz	r1, 857e <_reclaim_reent+0x26>
    856e:	680c      	ldr	r4, [r1, #0]
    8570:	4628      	mov	r0, r5
    8572:	f7fd f98f 	bl	5894 <_free_r>
    8576:	4621      	mov	r1, r4
    8578:	2c00      	cmp	r4, #0
    857a:	d1f8      	bne.n	856e <_reclaim_reent+0x16>
    857c:	6ceb      	ldr	r3, [r5, #76]	; 0x4c
    857e:	3604      	adds	r6, #4
    8580:	2e80      	cmp	r6, #128	; 0x80
    8582:	d1f2      	bne.n	856a <_reclaim_reent+0x12>
    8584:	4619      	mov	r1, r3
    8586:	4628      	mov	r0, r5
    8588:	f7fd f984 	bl	5894 <_free_r>
    858c:	6c29      	ldr	r1, [r5, #64]	; 0x40
    858e:	b111      	cbz	r1, 8596 <_reclaim_reent+0x3e>
    8590:	4628      	mov	r0, r5
    8592:	f7fd f97f 	bl	5894 <_free_r>
    8596:	f8d5 1148 	ldr.w	r1, [r5, #328]	; 0x148
    859a:	b151      	cbz	r1, 85b2 <_reclaim_reent+0x5a>
    859c:	f505 76a6 	add.w	r6, r5, #332	; 0x14c
    85a0:	42b1      	cmp	r1, r6
    85a2:	d006      	beq.n	85b2 <_reclaim_reent+0x5a>
    85a4:	680c      	ldr	r4, [r1, #0]
    85a6:	4628      	mov	r0, r5
    85a8:	f7fd f974 	bl	5894 <_free_r>
    85ac:	42a6      	cmp	r6, r4
    85ae:	4621      	mov	r1, r4
    85b0:	d1f8      	bne.n	85a4 <_reclaim_reent+0x4c>
    85b2:	6d69      	ldr	r1, [r5, #84]	; 0x54
    85b4:	b111      	cbz	r1, 85bc <_reclaim_reent+0x64>
    85b6:	4628      	mov	r0, r5
    85b8:	f7fd f96c 	bl	5894 <_free_r>
    85bc:	6bab      	ldr	r3, [r5, #56]	; 0x38
    85be:	b153      	cbz	r3, 85d6 <_reclaim_reent+0x7e>
    85c0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
    85c2:	4628      	mov	r0, r5
    85c4:	4798      	blx	r3
    85c6:	f8d5 12e0 	ldr.w	r1, [r5, #736]	; 0x2e0
    85ca:	b121      	cbz	r1, 85d6 <_reclaim_reent+0x7e>
    85cc:	4628      	mov	r0, r5
    85ce:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
    85d2:	f7ff bfad 	b.w	8530 <cleanup_glue>
    85d6:	bd70      	pop	{r4, r5, r6, pc}
    85d8:	4770      	bx	lr
    85da:	bf00      	nop
    85dc:	20000010 	.word	0x20000010

Disassembly of section .text.__swbuf_r:

000085e0 <__swbuf_r>:
    85e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    85e2:	460d      	mov	r5, r1
    85e4:	4614      	mov	r4, r2
    85e6:	4606      	mov	r6, r0
    85e8:	b110      	cbz	r0, 85f0 <__swbuf_r+0x10>
    85ea:	6b83      	ldr	r3, [r0, #56]	; 0x38
    85ec:	2b00      	cmp	r3, #0
    85ee:	d043      	beq.n	8678 <__swbuf_r+0x98>
    85f0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    85f4:	69a3      	ldr	r3, [r4, #24]
    85f6:	b291      	uxth	r1, r2
    85f8:	0708      	lsls	r0, r1, #28
    85fa:	60a3      	str	r3, [r4, #8]
    85fc:	d51b      	bpl.n	8636 <__swbuf_r+0x56>
    85fe:	6923      	ldr	r3, [r4, #16]
    8600:	b1cb      	cbz	r3, 8636 <__swbuf_r+0x56>
    8602:	b2ed      	uxtb	r5, r5
    8604:	0489      	lsls	r1, r1, #18
    8606:	462f      	mov	r7, r5
    8608:	d522      	bpl.n	8650 <__swbuf_r+0x70>
    860a:	6822      	ldr	r2, [r4, #0]
    860c:	6961      	ldr	r1, [r4, #20]
    860e:	1ad3      	subs	r3, r2, r3
    8610:	4299      	cmp	r1, r3
    8612:	dd29      	ble.n	8668 <__swbuf_r+0x88>
    8614:	3301      	adds	r3, #1
    8616:	68a1      	ldr	r1, [r4, #8]
    8618:	1c50      	adds	r0, r2, #1
    861a:	3901      	subs	r1, #1
    861c:	60a1      	str	r1, [r4, #8]
    861e:	6020      	str	r0, [r4, #0]
    8620:	7015      	strb	r5, [r2, #0]
    8622:	6962      	ldr	r2, [r4, #20]
    8624:	429a      	cmp	r2, r3
    8626:	d02a      	beq.n	867e <__swbuf_r+0x9e>
    8628:	89a3      	ldrh	r3, [r4, #12]
    862a:	07db      	lsls	r3, r3, #31
    862c:	d501      	bpl.n	8632 <__swbuf_r+0x52>
    862e:	2d0a      	cmp	r5, #10
    8630:	d025      	beq.n	867e <__swbuf_r+0x9e>
    8632:	4638      	mov	r0, r7
    8634:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    8636:	4621      	mov	r1, r4
    8638:	4630      	mov	r0, r6
    863a:	f7fb fe17 	bl	426c <__swsetup_r>
    863e:	bb20      	cbnz	r0, 868a <__swbuf_r+0xaa>
    8640:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
    8644:	b2ed      	uxtb	r5, r5
    8646:	b291      	uxth	r1, r2
    8648:	0489      	lsls	r1, r1, #18
    864a:	6923      	ldr	r3, [r4, #16]
    864c:	462f      	mov	r7, r5
    864e:	d4dc      	bmi.n	860a <__swbuf_r+0x2a>
    8650:	6e61      	ldr	r1, [r4, #100]	; 0x64
    8652:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
    8656:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
    865a:	81a2      	strh	r2, [r4, #12]
    865c:	6822      	ldr	r2, [r4, #0]
    865e:	6661      	str	r1, [r4, #100]	; 0x64
    8660:	6961      	ldr	r1, [r4, #20]
    8662:	1ad3      	subs	r3, r2, r3
    8664:	4299      	cmp	r1, r3
    8666:	dcd5      	bgt.n	8614 <__swbuf_r+0x34>
    8668:	4621      	mov	r1, r4
    866a:	4630      	mov	r0, r6
    866c:	f7fc ff3e 	bl	54ec <_fflush_r>
    8670:	b958      	cbnz	r0, 868a <__swbuf_r+0xaa>
    8672:	2301      	movs	r3, #1
    8674:	6822      	ldr	r2, [r4, #0]
    8676:	e7ce      	b.n	8616 <__swbuf_r+0x36>
    8678:	f7fc ffe4 	bl	5644 <__sinit>
    867c:	e7b8      	b.n	85f0 <__swbuf_r+0x10>
    867e:	4621      	mov	r1, r4
    8680:	4630      	mov	r0, r6
    8682:	f7fc ff33 	bl	54ec <_fflush_r>
    8686:	2800      	cmp	r0, #0
    8688:	d0d3      	beq.n	8632 <__swbuf_r+0x52>
    868a:	f04f 37ff 	mov.w	r7, #4294967295
    868e:	e7d0      	b.n	8632 <__swbuf_r+0x52>

Disassembly of section .text.__swbuf:

00008690 <__swbuf>:
    8690:	4b02      	ldr	r3, [pc, #8]	; (869c <__swbuf+0xc>)
    8692:	460a      	mov	r2, r1
    8694:	4601      	mov	r1, r0
    8696:	6818      	ldr	r0, [r3, #0]
    8698:	f7ff bfa2 	b.w	85e0 <__swbuf_r>
    869c:	20000010 	.word	0x20000010

Disassembly of section .text._wcrtomb_r:

000086a0 <_wcrtomb_r>:
    86a0:	b5f0      	push	{r4, r5, r6, r7, lr}
    86a2:	4c12      	ldr	r4, [pc, #72]	; (86ec <_wcrtomb_r+0x4c>)
    86a4:	b085      	sub	sp, #20
    86a6:	6824      	ldr	r4, [r4, #0]
    86a8:	4606      	mov	r6, r0
    86aa:	461f      	mov	r7, r3
    86ac:	6b64      	ldr	r4, [r4, #52]	; 0x34
    86ae:	b151      	cbz	r1, 86c6 <_wcrtomb_r+0x26>
    86b0:	4d0f      	ldr	r5, [pc, #60]	; (86f0 <_wcrtomb_r+0x50>)
    86b2:	2c00      	cmp	r4, #0
    86b4:	bf08      	it	eq
    86b6:	462c      	moveq	r4, r5
    86b8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    86bc:	47a0      	blx	r4
    86be:	1c43      	adds	r3, r0, #1
    86c0:	d00d      	beq.n	86de <_wcrtomb_r+0x3e>
    86c2:	b005      	add	sp, #20
    86c4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    86c6:	460d      	mov	r5, r1
    86c8:	4909      	ldr	r1, [pc, #36]	; (86f0 <_wcrtomb_r+0x50>)
    86ca:	462a      	mov	r2, r5
    86cc:	2c00      	cmp	r4, #0
    86ce:	bf08      	it	eq
    86d0:	460c      	moveq	r4, r1
    86d2:	a901      	add	r1, sp, #4
    86d4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    86d8:	47a0      	blx	r4
    86da:	1c43      	adds	r3, r0, #1
    86dc:	d1f1      	bne.n	86c2 <_wcrtomb_r+0x22>
    86de:	2200      	movs	r2, #0
    86e0:	238a      	movs	r3, #138	; 0x8a
    86e2:	603a      	str	r2, [r7, #0]
    86e4:	6033      	str	r3, [r6, #0]
    86e6:	b005      	add	sp, #20
    86e8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    86ea:	bf00      	nop
    86ec:	20000010 	.word	0x20000010
    86f0:	20000858 	.word	0x20000858

Disassembly of section .text.wcrtomb:

000086f4 <wcrtomb>:
    86f4:	b570      	push	{r4, r5, r6, lr}
    86f6:	4b13      	ldr	r3, [pc, #76]	; (8744 <wcrtomb+0x50>)
    86f8:	b084      	sub	sp, #16
    86fa:	681d      	ldr	r5, [r3, #0]
    86fc:	4616      	mov	r6, r2
    86fe:	6b6c      	ldr	r4, [r5, #52]	; 0x34
    8700:	4b11      	ldr	r3, [pc, #68]	; (8748 <wcrtomb+0x54>)
    8702:	b168      	cbz	r0, 8720 <wcrtomb+0x2c>
    8704:	2c00      	cmp	r4, #0
    8706:	bf08      	it	eq
    8708:	461c      	moveq	r4, r3
    870a:	460a      	mov	r2, r1
    870c:	4633      	mov	r3, r6
    870e:	4601      	mov	r1, r0
    8710:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    8714:	4628      	mov	r0, r5
    8716:	47a0      	blx	r4
    8718:	1c43      	adds	r3, r0, #1
    871a:	d00d      	beq.n	8738 <wcrtomb+0x44>
    871c:	b004      	add	sp, #16
    871e:	bd70      	pop	{r4, r5, r6, pc}
    8720:	2c00      	cmp	r4, #0
    8722:	bf08      	it	eq
    8724:	461c      	moveq	r4, r3
    8726:	4602      	mov	r2, r0
    8728:	4633      	mov	r3, r6
    872a:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    872e:	a901      	add	r1, sp, #4
    8730:	4628      	mov	r0, r5
    8732:	47a0      	blx	r4
    8734:	1c43      	adds	r3, r0, #1
    8736:	d1f1      	bne.n	871c <wcrtomb+0x28>
    8738:	2200      	movs	r2, #0
    873a:	238a      	movs	r3, #138	; 0x8a
    873c:	6032      	str	r2, [r6, #0]
    873e:	602b      	str	r3, [r5, #0]
    8740:	b004      	add	sp, #16
    8742:	bd70      	pop	{r4, r5, r6, pc}
    8744:	20000010 	.word	0x20000010
    8748:	20000858 	.word	0x20000858

Disassembly of section .text._wctomb_r:

0000874c <_wctomb_r>:
    874c:	b430      	push	{r4, r5}
    874e:	4c06      	ldr	r4, [pc, #24]	; (8768 <_wctomb_r+0x1c>)
    8750:	4d06      	ldr	r5, [pc, #24]	; (876c <_wctomb_r+0x20>)
    8752:	6824      	ldr	r4, [r4, #0]
    8754:	6b64      	ldr	r4, [r4, #52]	; 0x34
    8756:	2c00      	cmp	r4, #0
    8758:	bf08      	it	eq
    875a:	462c      	moveq	r4, r5
    875c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
    8760:	46a4      	mov	ip, r4
    8762:	bc30      	pop	{r4, r5}
    8764:	4760      	bx	ip
    8766:	bf00      	nop
    8768:	20000010 	.word	0x20000010
    876c:	20000858 	.word	0x20000858

Disassembly of section .text.__ascii_wctomb:

00008770 <__ascii_wctomb>:
    8770:	b119      	cbz	r1, 877a <__ascii_wctomb+0xa>
    8772:	2aff      	cmp	r2, #255	; 0xff
    8774:	d803      	bhi.n	877e <__ascii_wctomb+0xe>
    8776:	700a      	strb	r2, [r1, #0]
    8778:	2101      	movs	r1, #1
    877a:	4608      	mov	r0, r1
    877c:	4770      	bx	lr
    877e:	238a      	movs	r3, #138	; 0x8a
    8780:	f04f 31ff 	mov.w	r1, #4294967295
    8784:	6003      	str	r3, [r0, #0]
    8786:	e7f8      	b.n	877a <__ascii_wctomb+0xa>
