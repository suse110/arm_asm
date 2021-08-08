
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
  10:	20001000 00000000 00000475 00000475     ... ....u...u...
  20:	00000105 00000475 00000475 00000474     ....u...u...t...
  30:	00000474 00000474 00000474 00000475     t...t...t...u...
  40:	00000475 00000474 00000475 00000475     u...t...u...u...

00000050 <main>:
#include <stdint.h>
#include "hal.h"

void main(void)
{
  50:	b580      	push	{r7, lr}
  52:	af00      	add	r7, sp, #0
    lite_printf("[%s] hello world\n", __func__);
  54:	4903      	ldr	r1, [pc, #12]	; (64 <main+0x14>)
  56:	4804      	ldr	r0, [pc, #16]	; (68 <main+0x18>)
  58:	f000 f8df 	bl	21a <lite_printf>
    hal_mpu_test();
  5c:	f000 f85e 	bl	11c <hal_mpu_test>
    while(1);
  60:	e7fe      	b.n	60 <main+0x10>
  62:	bf00      	nop
  64:	0000048c 	.word	0x0000048c
  68:	00000478 	.word	0x00000478

0000006c <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
  6c:	b480      	push	{r7}
  6e:	b081      	sub	sp, #4
  70:	af00      	add	r7, sp, #0
  72:	6038      	str	r0, [r7, #0]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
  74:	f3bf 8f4f 	dsb	sy
}
  78:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
  7a:	f3bf 8f6f 	isb	sy
}
  7e:	bf00      	nop
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
  80:	4a07      	ldr	r2, [pc, #28]	; (a0 <ARM_MPU_Enable+0x34>)
  82:	683b      	ldr	r3, [r7, #0]
  84:	f043 0301 	orr.w	r3, r3, #1
  88:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
  8a:	4b06      	ldr	r3, [pc, #24]	; (a4 <ARM_MPU_Enable+0x38>)
  8c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
  8e:	4a05      	ldr	r2, [pc, #20]	; (a4 <ARM_MPU_Enable+0x38>)
  90:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
  94:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
  96:	bf00      	nop
  98:	3704      	adds	r7, #4
  9a:	46bd      	mov	sp, r7
  9c:	bc80      	pop	{r7}
  9e:	4770      	bx	lr
  a0:	e000ed90 	.word	0xe000ed90
  a4:	e000ed00 	.word	0xe000ed00

000000a8 <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
  a8:	b480      	push	{r7}
  aa:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
  ac:	f3bf 8f4f 	dsb	sy
}
  b0:	bf00      	nop
  __ASM volatile ("isb 0xF":::"memory");
  b2:	f3bf 8f6f 	isb	sy
}
  b6:	bf00      	nop
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
  b8:	4b07      	ldr	r3, [pc, #28]	; (d8 <ARM_MPU_Disable+0x30>)
  ba:	6a5b      	ldr	r3, [r3, #36]	; 0x24
  bc:	4a06      	ldr	r2, [pc, #24]	; (d8 <ARM_MPU_Disable+0x30>)
  be:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
  c2:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
  c4:	4b05      	ldr	r3, [pc, #20]	; (dc <ARM_MPU_Disable+0x34>)
  c6:	685b      	ldr	r3, [r3, #4]
  c8:	4a04      	ldr	r2, [pc, #16]	; (dc <ARM_MPU_Disable+0x34>)
  ca:	f023 0301 	bic.w	r3, r3, #1
  ce:	6053      	str	r3, [r2, #4]
}
  d0:	bf00      	nop
  d2:	46bd      	mov	sp, r7
  d4:	bc80      	pop	{r7}
  d6:	4770      	bx	lr
  d8:	e000ed00 	.word	0xe000ed00
  dc:	e000ed90 	.word	0xe000ed90

000000e0 <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  e0:	b480      	push	{r7}
  e2:	b082      	sub	sp, #8
  e4:	af00      	add	r7, sp, #0
  e6:	6078      	str	r0, [r7, #4]
  e8:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
  ea:	4a05      	ldr	r2, [pc, #20]	; (100 <ARM_MPU_SetRegion+0x20>)
  ec:	687b      	ldr	r3, [r7, #4]
  ee:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
  f0:	4a03      	ldr	r2, [pc, #12]	; (100 <ARM_MPU_SetRegion+0x20>)
  f2:	683b      	ldr	r3, [r7, #0]
  f4:	6113      	str	r3, [r2, #16]
}
  f6:	bf00      	nop
  f8:	3708      	adds	r7, #8
  fa:	46bd      	mov	sp, r7
  fc:	bc80      	pop	{r7}
  fe:	4770      	bx	lr
 100:	e000ed90 	.word	0xe000ed90

00000104 <mem_manage_handler>:

/*

*/
void mem_manage_handler(void)
{
 104:	b580      	push	{r7, lr}
 106:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 108:	4902      	ldr	r1, [pc, #8]	; (114 <mem_manage_handler+0x10>)
 10a:	4803      	ldr	r0, [pc, #12]	; (118 <mem_manage_handler+0x14>)
 10c:	f000 f885 	bl	21a <lite_printf>

    for(;;);
 110:	e7fe      	b.n	110 <mem_manage_handler+0xc>
 112:	bf00      	nop
 114:	000004bc 	.word	0x000004bc
 118:	00000494 	.word	0x00000494

0000011c <hal_mpu_test>:
}

void hal_mpu_test(void)
{
 11c:	b5b0      	push	{r4, r5, r7, lr}
 11e:	b08a      	sub	sp, #40	; 0x28
 120:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
 122:	4b13      	ldr	r3, [pc, #76]	; (170 <hal_mpu_test+0x54>)
 124:	463c      	mov	r4, r7
 126:	461d      	mov	r5, r3
 128:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 12a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 12c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 130:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
 134:	f7ff ffb8 	bl	a8 <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
 138:	463b      	mov	r3, r7
 13a:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 13c:	e00d      	b.n	15a <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
 13e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 140:	681a      	ldr	r2, [r3, #0]
 142:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 144:	685b      	ldr	r3, [r3, #4]
 146:	4619      	mov	r1, r3
 148:	4610      	mov	r0, r2
 14a:	f7ff ffc9 	bl	e0 <ARM_MPU_SetRegion>
        mpu_region++;
 14e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 150:	3308      	adds	r3, #8
 152:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 154:	6a3b      	ldr	r3, [r7, #32]
 156:	3301      	adds	r3, #1
 158:	623b      	str	r3, [r7, #32]
 15a:	6a3b      	ldr	r3, [r7, #32]
 15c:	2b03      	cmp	r3, #3
 15e:	d9ee      	bls.n	13e <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
 160:	2006      	movs	r0, #6
 162:	f7ff ff83 	bl	6c <ARM_MPU_Enable>
}
 166:	bf00      	nop
 168:	3728      	adds	r7, #40	; 0x28
 16a:	46bd      	mov	sp, r7
 16c:	bdb0      	pop	{r4, r5, r7, pc}
 16e:	bf00      	nop
 170:	0000049c 	.word	0x0000049c

00000174 <m_pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
 174:	b480      	push	{r7}
 176:	b083      	sub	sp, #12
 178:	af00      	add	r7, sp, #0
 17a:	6078      	str	r0, [r7, #4]
 17c:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
 17e:	2301      	movs	r3, #1
 180:	60bb      	str	r3, [r7, #8]
    while (y--)
 182:	e004      	b.n	18e <m_pow+0x1a>
    {
        sum *= x;
 184:	687a      	ldr	r2, [r7, #4]
 186:	68bb      	ldr	r3, [r7, #8]
 188:	fb02 f303 	mul.w	r3, r2, r3
 18c:	60bb      	str	r3, [r7, #8]
    while (y--)
 18e:	683b      	ldr	r3, [r7, #0]
 190:	1e5a      	subs	r2, r3, #1
 192:	603a      	str	r2, [r7, #0]
 194:	2b00      	cmp	r3, #0
 196:	d1f5      	bne.n	184 <m_pow+0x10>
    }
    return sum;
 198:	68bb      	ldr	r3, [r7, #8]
}
 19a:	4618      	mov	r0, r3
 19c:	370c      	adds	r7, #12
 19e:	46bd      	mov	sp, r7
 1a0:	bc80      	pop	{r7}
 1a2:	4770      	bx	lr

000001a4 <m_putchar>:
void m_putchar(const char ch)
{
 1a4:	b480      	push	{r7}
 1a6:	b081      	sub	sp, #4
 1a8:	af00      	add	r7, sp, #0
 1aa:	4603      	mov	r3, r0
 1ac:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
 1ae:	4a04      	ldr	r2, [pc, #16]	; (1c0 <m_putchar+0x1c>)
 1b0:	783b      	ldrb	r3, [r7, #0]
 1b2:	6013      	str	r3, [r2, #0]
}
 1b4:	bf00      	nop
 1b6:	3704      	adds	r7, #4
 1b8:	46bd      	mov	sp, r7
 1ba:	bc80      	pop	{r7}
 1bc:	4770      	bx	lr
 1be:	bf00      	nop
 1c0:	4000c000 	.word	0x4000c000

000001c4 <m_putstr>:
void m_putstr(const char *str)
{
 1c4:	b580      	push	{r7, lr}
 1c6:	b081      	sub	sp, #4
 1c8:	af00      	add	r7, sp, #0
 1ca:	6038      	str	r0, [r7, #0]
    while (*str)
 1cc:	e006      	b.n	1dc <m_putstr+0x18>
    {
        m_putchar(*str++);
 1ce:	683b      	ldr	r3, [r7, #0]
 1d0:	1c5a      	adds	r2, r3, #1
 1d2:	603a      	str	r2, [r7, #0]
 1d4:	781b      	ldrb	r3, [r3, #0]
 1d6:	4618      	mov	r0, r3
 1d8:	f7ff ffe4 	bl	1a4 <m_putchar>
    while (*str)
 1dc:	683b      	ldr	r3, [r7, #0]
 1de:	781b      	ldrb	r3, [r3, #0]
 1e0:	2b00      	cmp	r3, #0
 1e2:	d1f4      	bne.n	1ce <m_putstr+0xa>
    }
}
 1e4:	bf00      	nop
 1e6:	bf00      	nop
 1e8:	3704      	adds	r7, #4
 1ea:	46bd      	mov	sp, r7
 1ec:	bd80      	pop	{r7, pc}

000001ee <m_strlen>:
uint32_t m_strlen (const char *__s)
{
 1ee:	b480      	push	{r7}
 1f0:	b082      	sub	sp, #8
 1f2:	af00      	add	r7, sp, #0
 1f4:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
 1f6:	2300      	movs	r3, #0
 1f8:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
 1fa:	e002      	b.n	202 <m_strlen+0x14>
 1fc:	687b      	ldr	r3, [r7, #4]
 1fe:	3301      	adds	r3, #1
 200:	607b      	str	r3, [r7, #4]
 202:	683b      	ldr	r3, [r7, #0]
 204:	1c5a      	adds	r2, r3, #1
 206:	603a      	str	r2, [r7, #0]
 208:	781b      	ldrb	r3, [r3, #0]
 20a:	2b00      	cmp	r3, #0
 20c:	d1f6      	bne.n	1fc <m_strlen+0xe>
    return i;
 20e:	687b      	ldr	r3, [r7, #4]
}
 210:	4618      	mov	r0, r3
 212:	3708      	adds	r7, #8
 214:	46bd      	mov	sp, r7
 216:	bc80      	pop	{r7}
 218:	4770      	bx	lr

0000021a <lite_printf>:
int lite_printf(const char *str, ...)
{
 21a:	b40f      	push	{r0, r1, r2, r3}
 21c:	b590      	push	{r4, r7, lr}
 21e:	b087      	sub	sp, #28
 220:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
 222:	2300      	movs	r3, #0
 224:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 226:	2300      	movs	r3, #0
 228:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 22a:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 22e:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 230:	e110      	b.n	454 <lite_printf+0x23a>
    {
        switch (*str)
 232:	6abb      	ldr	r3, [r7, #40]	; 0x28
 234:	781b      	ldrb	r3, [r3, #0]
 236:	2b25      	cmp	r3, #37	; 0x25
 238:	d009      	beq.n	24e <lite_printf+0x34>
 23a:	2b25      	cmp	r3, #37	; 0x25
 23c:	f300 80fd 	bgt.w	43a <lite_printf+0x220>
 240:	2b0a      	cmp	r3, #10
 242:	f000 80ec 	beq.w	41e <lite_printf+0x204>
 246:	2b0d      	cmp	r3, #13
 248:	f000 80f0 	beq.w	42c <lite_printf+0x212>
 24c:	e0f5      	b.n	43a <lite_printf+0x220>
        {
        case '%': //发送参数
            str++;
 24e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 250:	3301      	adds	r3, #1
 252:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 254:	6abb      	ldr	r3, [r7, #40]	; 0x28
 256:	781b      	ldrb	r3, [r3, #0]
 258:	3b63      	subs	r3, #99	; 0x63
 25a:	2b15      	cmp	r3, #21
 25c:	f200 80f6 	bhi.w	44c <lite_printf+0x232>
 260:	a201      	add	r2, pc, #4	; (adr r2, 268 <lite_printf+0x4e>)
 262:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 266:	bf00      	nop
 268:	00000405 	.word	0x00000405
 26c:	000002c1 	.word	0x000002c1
 270:	0000044d 	.word	0x0000044d
 274:	0000044d 	.word	0x0000044d
 278:	0000044d 	.word	0x0000044d
 27c:	0000044d 	.word	0x0000044d
 280:	0000044d 	.word	0x0000044d
 284:	0000044d 	.word	0x0000044d
 288:	0000044d 	.word	0x0000044d
 28c:	0000044d 	.word	0x0000044d
 290:	0000044d 	.word	0x0000044d
 294:	0000044d 	.word	0x0000044d
 298:	0000044d 	.word	0x0000044d
 29c:	0000044d 	.word	0x0000044d
 2a0:	0000044d 	.word	0x0000044d
 2a4:	0000044d 	.word	0x0000044d
 2a8:	000003e5 	.word	0x000003e5
 2ac:	0000044d 	.word	0x0000044d
 2b0:	0000044d 	.word	0x0000044d
 2b4:	0000044d 	.word	0x0000044d
 2b8:	0000044d 	.word	0x0000044d
 2bc:	0000034b 	.word	0x0000034b
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
 2c0:	683b      	ldr	r3, [r7, #0]
 2c2:	1d1a      	adds	r2, r3, #4
 2c4:	603a      	str	r2, [r7, #0]
 2c6:	681b      	ldr	r3, [r3, #0]
 2c8:	60bb      	str	r3, [r7, #8]
                r_val = val;
 2ca:	68bb      	ldr	r3, [r7, #8]
 2cc:	61bb      	str	r3, [r7, #24]
                count = 0;
 2ce:	2300      	movs	r3, #0
 2d0:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 2d2:	e00a      	b.n	2ea <lite_printf+0xd0>

                {
                    count++; //整数的长度
 2d4:	7dfb      	ldrb	r3, [r7, #23]
 2d6:	3301      	adds	r3, #1
 2d8:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 2da:	69bb      	ldr	r3, [r7, #24]
 2dc:	4a64      	ldr	r2, [pc, #400]	; (470 <lite_printf+0x256>)
 2de:	fb82 1203 	smull	r1, r2, r2, r3
 2e2:	1092      	asrs	r2, r2, #2
 2e4:	17db      	asrs	r3, r3, #31
 2e6:	1ad3      	subs	r3, r2, r3
 2e8:	61bb      	str	r3, [r7, #24]
                while (r_val)
 2ea:	69bb      	ldr	r3, [r7, #24]
 2ec:	2b00      	cmp	r3, #0
 2ee:	d1f1      	bne.n	2d4 <lite_printf+0xba>
                }

                res += count;
 2f0:	7dfb      	ldrb	r3, [r7, #23]
 2f2:	693a      	ldr	r2, [r7, #16]
 2f4:	4413      	add	r3, r2
 2f6:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 2f8:	68bb      	ldr	r3, [r7, #8]
 2fa:	61bb      	str	r3, [r7, #24]
                while (count)
 2fc:	e021      	b.n	342 <lite_printf+0x128>
                {
                    ch = r_val / m_pow(10, count - 1);
 2fe:	69bc      	ldr	r4, [r7, #24]
 300:	7dfb      	ldrb	r3, [r7, #23]
 302:	3b01      	subs	r3, #1
 304:	4619      	mov	r1, r3
 306:	200a      	movs	r0, #10
 308:	f7ff ff34 	bl	174 <m_pow>
 30c:	4603      	mov	r3, r0
 30e:	fbb4 f3f3 	udiv	r3, r4, r3
 312:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 314:	7dfb      	ldrb	r3, [r7, #23]
 316:	3b01      	subs	r3, #1
 318:	4619      	mov	r1, r3
 31a:	200a      	movs	r0, #10
 31c:	f7ff ff2a 	bl	174 <m_pow>
 320:	4602      	mov	r2, r0
 322:	69bb      	ldr	r3, [r7, #24]
 324:	fbb3 f1f2 	udiv	r1, r3, r2
 328:	fb02 f201 	mul.w	r2, r2, r1
 32c:	1a9b      	subs	r3, r3, r2
 32e:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 330:	79fb      	ldrb	r3, [r7, #7]
 332:	3330      	adds	r3, #48	; 0x30
 334:	b2db      	uxtb	r3, r3
 336:	4618      	mov	r0, r3
 338:	f7ff ff34 	bl	1a4 <m_putchar>
                    //数字到字符的转换
                    count--;
 33c:	7dfb      	ldrb	r3, [r7, #23]
 33e:	3b01      	subs	r3, #1
 340:	75fb      	strb	r3, [r7, #23]
                while (count)
 342:	7dfb      	ldrb	r3, [r7, #23]
 344:	2b00      	cmp	r3, #0
 346:	d1da      	bne.n	2fe <lite_printf+0xe4>
                }
                break;
 348:	e068      	b.n	41c <lite_printf+0x202>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 34a:	683b      	ldr	r3, [r7, #0]
 34c:	1d1a      	adds	r2, r3, #4
 34e:	603a      	str	r2, [r7, #0]
 350:	681b      	ldr	r3, [r3, #0]
 352:	60bb      	str	r3, [r7, #8]
                r_val = val;
 354:	68bb      	ldr	r3, [r7, #8]
 356:	61bb      	str	r3, [r7, #24]
                count = 0;
 358:	2300      	movs	r3, #0
 35a:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 35c:	e008      	b.n	370 <lite_printf+0x156>

                {
                    count++; //整数的长度
 35e:	7dfb      	ldrb	r3, [r7, #23]
 360:	3301      	adds	r3, #1
 362:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 364:	69bb      	ldr	r3, [r7, #24]
 366:	2b00      	cmp	r3, #0
 368:	da00      	bge.n	36c <lite_printf+0x152>
 36a:	330f      	adds	r3, #15
 36c:	111b      	asrs	r3, r3, #4
 36e:	61bb      	str	r3, [r7, #24]
                while (r_val)
 370:	69bb      	ldr	r3, [r7, #24]
 372:	2b00      	cmp	r3, #0
 374:	d1f3      	bne.n	35e <lite_printf+0x144>
                }

                res += count;
 376:	7dfb      	ldrb	r3, [r7, #23]
 378:	693a      	ldr	r2, [r7, #16]
 37a:	4413      	add	r3, r2
 37c:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 37e:	68bb      	ldr	r3, [r7, #8]
 380:	61bb      	str	r3, [r7, #24]
                while (count)
 382:	e02b      	b.n	3dc <lite_printf+0x1c2>
                {
                    ch = r_val / m_pow(16, count - 1);
 384:	69bc      	ldr	r4, [r7, #24]
 386:	7dfb      	ldrb	r3, [r7, #23]
 388:	3b01      	subs	r3, #1
 38a:	4619      	mov	r1, r3
 38c:	2010      	movs	r0, #16
 38e:	f7ff fef1 	bl	174 <m_pow>
 392:	4603      	mov	r3, r0
 394:	fbb4 f3f3 	udiv	r3, r4, r3
 398:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 39a:	7dfb      	ldrb	r3, [r7, #23]
 39c:	3b01      	subs	r3, #1
 39e:	4619      	mov	r1, r3
 3a0:	2010      	movs	r0, #16
 3a2:	f7ff fee7 	bl	174 <m_pow>
 3a6:	4602      	mov	r2, r0
 3a8:	69bb      	ldr	r3, [r7, #24]
 3aa:	fbb3 f1f2 	udiv	r1, r3, r2
 3ae:	fb02 f201 	mul.w	r2, r2, r1
 3b2:	1a9b      	subs	r3, r3, r2
 3b4:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 3b6:	79fb      	ldrb	r3, [r7, #7]
 3b8:	2b09      	cmp	r3, #9
 3ba:	d806      	bhi.n	3ca <lite_printf+0x1b0>
                        m_putchar(ch + '0');
 3bc:	79fb      	ldrb	r3, [r7, #7]
 3be:	3330      	adds	r3, #48	; 0x30
 3c0:	b2db      	uxtb	r3, r3
 3c2:	4618      	mov	r0, r3
 3c4:	f7ff feee 	bl	1a4 <m_putchar>
 3c8:	e005      	b.n	3d6 <lite_printf+0x1bc>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 3ca:	79fb      	ldrb	r3, [r7, #7]
 3cc:	3357      	adds	r3, #87	; 0x57
 3ce:	b2db      	uxtb	r3, r3
 3d0:	4618      	mov	r0, r3
 3d2:	f7ff fee7 	bl	1a4 <m_putchar>
                    count--;
 3d6:	7dfb      	ldrb	r3, [r7, #23]
 3d8:	3b01      	subs	r3, #1
 3da:	75fb      	strb	r3, [r7, #23]
                while (count)
 3dc:	7dfb      	ldrb	r3, [r7, #23]
 3de:	2b00      	cmp	r3, #0
 3e0:	d1d0      	bne.n	384 <lite_printf+0x16a>
                }
                break;
 3e2:	e01b      	b.n	41c <lite_printf+0x202>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 3e4:	683b      	ldr	r3, [r7, #0]
 3e6:	1d1a      	adds	r2, r3, #4
 3e8:	603a      	str	r2, [r7, #0]
 3ea:	681b      	ldr	r3, [r3, #0]
 3ec:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 3ee:	68f8      	ldr	r0, [r7, #12]
 3f0:	f7ff fee8 	bl	1c4 <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 3f4:	68f8      	ldr	r0, [r7, #12]
 3f6:	f7ff fefa 	bl	1ee <m_strlen>
 3fa:	4602      	mov	r2, r0
 3fc:	693b      	ldr	r3, [r7, #16]
 3fe:	4413      	add	r3, r2
 400:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 402:	e00b      	b.n	41c <lite_printf+0x202>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 404:	683b      	ldr	r3, [r7, #0]
 406:	1d1a      	adds	r2, r3, #4
 408:	603a      	str	r2, [r7, #0]
 40a:	681b      	ldr	r3, [r3, #0]
 40c:	b2db      	uxtb	r3, r3
 40e:	4618      	mov	r0, r3
 410:	f7ff fec8 	bl	1a4 <m_putchar>
                res += 1;
 414:	693b      	ldr	r3, [r7, #16]
 416:	3301      	adds	r3, #1
 418:	613b      	str	r3, [r7, #16]

                break;
 41a:	bf00      	nop
            default:;
            }
            break;
 41c:	e016      	b.n	44c <lite_printf+0x232>
        case '\n':
            m_putchar('\n');
 41e:	200a      	movs	r0, #10
 420:	f7ff fec0 	bl	1a4 <m_putchar>
            res += 1;
 424:	693b      	ldr	r3, [r7, #16]
 426:	3301      	adds	r3, #1
 428:	613b      	str	r3, [r7, #16]
            break;
 42a:	e010      	b.n	44e <lite_printf+0x234>
        case '\r':
            m_putchar('\r');
 42c:	200d      	movs	r0, #13
 42e:	f7ff feb9 	bl	1a4 <m_putchar>
            res += 1;
 432:	693b      	ldr	r3, [r7, #16]
 434:	3301      	adds	r3, #1
 436:	613b      	str	r3, [r7, #16]
            break;
 438:	e009      	b.n	44e <lite_printf+0x234>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 43a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 43c:	781b      	ldrb	r3, [r3, #0]
 43e:	4618      	mov	r0, r3
 440:	f7ff feb0 	bl	1a4 <m_putchar>
            res += 1;
 444:	693b      	ldr	r3, [r7, #16]
 446:	3301      	adds	r3, #1
 448:	613b      	str	r3, [r7, #16]
 44a:	e000      	b.n	44e <lite_printf+0x234>
            break;
 44c:	bf00      	nop
        }

        str++;
 44e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 450:	3301      	adds	r3, #1
 452:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 454:	6abb      	ldr	r3, [r7, #40]	; 0x28
 456:	781b      	ldrb	r3, [r3, #0]
 458:	2b00      	cmp	r3, #0
 45a:	f47f aeea 	bne.w	232 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 45e:	693b      	ldr	r3, [r7, #16]
 460:	4618      	mov	r0, r3
 462:	371c      	adds	r7, #28
 464:	46bd      	mov	sp, r7
 466:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 46a:	b004      	add	sp, #16
 46c:	4770      	bx	lr
 46e:	bf00      	nop
 470:	66666667 	.word	0x66666667

Disassembly of section .text.default_handler:

00000474 <bus_fault_handler>:
.section .text.default_handler,"ax",%progbits
default_handler:
    b .
 474:	e7fe      	b.n	474 <bus_fault_handler>
