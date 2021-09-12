
../../../../build/lm3s811/main/main.elf:     file format elf32-littlearm


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
       8:	20001948 	.word	0x20001948
ldr r1, =main
       c:	0000244d 	.word	0x0000244d

00000010 <g_pfnVectors>:
      10:	20001948 00000001 00003409 00002165     H.. .....4..e!..
      20:	00003409 00003409 00003409 00003408     .4...4...4...4..
      30:	00003408 00003408 00003408 00003409     .4...4...4...4..
      40:	00003409 00003408 00003409 00003409     .4...4...4...4..

00000050 <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
      50:	b480      	push	{r7}
      52:	b083      	sub	sp, #12
      54:	af00      	add	r7, sp, #0
      56:	6078      	str	r0, [r7, #4]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
      58:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
      5c:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
      60:	4a07      	ldr	r2, [pc, #28]	; (80 <ARM_MPU_Enable+0x30>)
      62:	687b      	ldr	r3, [r7, #4]
      64:	f043 0301 	orr.w	r3, r3, #1
      68:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
      6a:	4b06      	ldr	r3, [pc, #24]	; (84 <ARM_MPU_Enable+0x34>)
      6c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
      6e:	4a05      	ldr	r2, [pc, #20]	; (84 <ARM_MPU_Enable+0x34>)
      70:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
      74:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
      76:	bf00      	nop
      78:	370c      	adds	r7, #12
      7a:	46bd      	mov	sp, r7
      7c:	bc80      	pop	{r7}
      7e:	4770      	bx	lr
      80:	e000ed90 	.word	0xe000ed90
      84:	e000ed00 	.word	0xe000ed00

00000088 <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
      88:	b480      	push	{r7}
      8a:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
      8c:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
      90:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
      94:	4b07      	ldr	r3, [pc, #28]	; (b4 <ARM_MPU_Disable+0x2c>)
      96:	6a5b      	ldr	r3, [r3, #36]	; 0x24
      98:	4a06      	ldr	r2, [pc, #24]	; (b4 <ARM_MPU_Disable+0x2c>)
      9a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
      9e:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
      a0:	4b05      	ldr	r3, [pc, #20]	; (b8 <ARM_MPU_Disable+0x30>)
      a2:	685b      	ldr	r3, [r3, #4]
      a4:	4a04      	ldr	r2, [pc, #16]	; (b8 <ARM_MPU_Disable+0x30>)
      a6:	f023 0301 	bic.w	r3, r3, #1
      aa:	6053      	str	r3, [r2, #4]
}
      ac:	bf00      	nop
      ae:	46bd      	mov	sp, r7
      b0:	bc80      	pop	{r7}
      b2:	4770      	bx	lr
      b4:	e000ed00 	.word	0xe000ed00
      b8:	e000ed90 	.word	0xe000ed90

000000bc <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
      bc:	b480      	push	{r7}
      be:	b083      	sub	sp, #12
      c0:	af00      	add	r7, sp, #0
      c2:	6078      	str	r0, [r7, #4]
      c4:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
      c6:	4a05      	ldr	r2, [pc, #20]	; (dc <ARM_MPU_SetRegion+0x20>)
      c8:	687b      	ldr	r3, [r7, #4]
      ca:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
      cc:	4a03      	ldr	r2, [pc, #12]	; (dc <ARM_MPU_SetRegion+0x20>)
      ce:	683b      	ldr	r3, [r7, #0]
      d0:	6113      	str	r3, [r2, #16]
}
      d2:	bf00      	nop
      d4:	370c      	adds	r7, #12
      d6:	46bd      	mov	sp, r7
      d8:	bc80      	pop	{r7}
      da:	4770      	bx	lr
      dc:	e000ed90 	.word	0xe000ed90

000000e0 <hal_mpu_test>:
#include "hal_mpu.h"
#include "mpu_armv7.h"
#include "hal_log.h"

void hal_mpu_test(void)
{
      e0:	b5b0      	push	{r4, r5, r7, lr}
      e2:	b08a      	sub	sp, #40	; 0x28
      e4:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
      e6:	4b13      	ldr	r3, [pc, #76]	; (134 <hal_mpu_test+0x54>)
      e8:	463c      	mov	r4, r7
      ea:	461d      	mov	r5, r3
      ec:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
      ee:	c40f      	stmia	r4!, {r0, r1, r2, r3}
      f0:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
      f4:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
      f8:	f7ff ffc6 	bl	88 <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
      fc:	463b      	mov	r3, r7
      fe:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     100:	e00d      	b.n	11e <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
     102:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     104:	681a      	ldr	r2, [r3, #0]
     106:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     108:	685b      	ldr	r3, [r3, #4]
     10a:	4619      	mov	r1, r3
     10c:	4610      	mov	r0, r2
     10e:	f7ff ffd5 	bl	bc <ARM_MPU_SetRegion>
        mpu_region++;
     112:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     114:	3308      	adds	r3, #8
     116:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
     118:	6a3b      	ldr	r3, [r7, #32]
     11a:	3301      	adds	r3, #1
     11c:	623b      	str	r3, [r7, #32]
     11e:	6a3b      	ldr	r3, [r7, #32]
     120:	2b03      	cmp	r3, #3
     122:	d9ee      	bls.n	102 <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
     124:	2006      	movs	r0, #6
     126:	f7ff ff93 	bl	50 <ARM_MPU_Enable>
}
     12a:	bf00      	nop
     12c:	3728      	adds	r7, #40	; 0x28
     12e:	46bd      	mov	sp, r7
     130:	bdb0      	pop	{r4, r5, r7, pc}
     132:	bf00      	nop
     134:	00002544 	.word	0x00002544

00000138 <_putchar>:

#ifdef QEMU_DEBUG_ENABLE 
static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

void _putchar(const char ch)
{
     138:	b480      	push	{r7}
     13a:	b083      	sub	sp, #12
     13c:	af00      	add	r7, sp, #0
     13e:	4603      	mov	r3, r0
     140:	71fb      	strb	r3, [r7, #7]
    *UART_DR = ch;
     142:	4a04      	ldr	r2, [pc, #16]	; (154 <_putchar+0x1c>)
     144:	79fb      	ldrb	r3, [r7, #7]
     146:	6013      	str	r3, [r2, #0]
}
     148:	bf00      	nop
     14a:	370c      	adds	r7, #12
     14c:	46bd      	mov	sp, r7
     14e:	bc80      	pop	{r7}
     150:	4770      	bx	lr
     152:	bf00      	nop
     154:	4000c000 	.word	0x4000c000

00000158 <_getchar>:

char _getchar(void)
{
     158:	b480      	push	{r7}
     15a:	af00      	add	r7, sp, #0
    return(char)*UART_DR;
     15c:	4b03      	ldr	r3, [pc, #12]	; (16c <_getchar+0x14>)
     15e:	681b      	ldr	r3, [r3, #0]
     160:	b2db      	uxtb	r3, r3
}
     162:	4618      	mov	r0, r3
     164:	46bd      	mov	sp, r7
     166:	bc80      	pop	{r7}
     168:	4770      	bx	lr
     16a:	bf00      	nop
     16c:	4000c000 	.word	0x4000c000

00000170 <__io_putchar>:

int __io_putchar(int ch)
{
     170:	b580      	push	{r7, lr}
     172:	b082      	sub	sp, #8
     174:	af00      	add	r7, sp, #0
     176:	6078      	str	r0, [r7, #4]
    _putchar(ch);
     178:	687b      	ldr	r3, [r7, #4]
     17a:	b2db      	uxtb	r3, r3
     17c:	4618      	mov	r0, r3
     17e:	f7ff ffdb 	bl	138 <_putchar>
    return 0;
     182:	2300      	movs	r3, #0
}
     184:	4618      	mov	r0, r3
     186:	3708      	adds	r7, #8
     188:	46bd      	mov	sp, r7
     18a:	bd80      	pop	{r7, pc}

0000018c <__io_getchar>:

int __io_getchar(void)
{
     18c:	b580      	push	{r7, lr}
     18e:	af00      	add	r7, sp, #0
    return (int)_getchar();
     190:	f7ff ffe2 	bl	158 <_getchar>
     194:	4603      	mov	r3, r0
}
     196:	4618      	mov	r0, r3
     198:	bd80      	pop	{r7, pc}

0000019a <lite_getchar>:
{
    return(char)__io_getchar();
}
#endif
void lite_getchar(char *chr)
{
     19a:	b580      	push	{r7, lr}
     19c:	b082      	sub	sp, #8
     19e:	af00      	add	r7, sp, #0
     1a0:	6078      	str	r0, [r7, #4]
    do {
        *chr = _getchar();
     1a2:	f7ff ffd9 	bl	158 <_getchar>
     1a6:	4603      	mov	r3, r0
     1a8:	461a      	mov	r2, r3
     1aa:	687b      	ldr	r3, [r7, #4]
     1ac:	701a      	strb	r2, [r3, #0]
    } while (*chr == 0);
     1ae:	687b      	ldr	r3, [r7, #4]
     1b0:	781b      	ldrb	r3, [r3, #0]
     1b2:	2b00      	cmp	r3, #0
     1b4:	d0f5      	beq.n	1a2 <lite_getchar+0x8>
}
     1b6:	bf00      	nop
     1b8:	3708      	adds	r7, #8
     1ba:	46bd      	mov	sp, r7
     1bc:	bd80      	pop	{r7, pc}

000001be <lite_putchar>:
void lite_putchar(char character)
{
     1be:	b580      	push	{r7, lr}
     1c0:	b082      	sub	sp, #8
     1c2:	af00      	add	r7, sp, #0
     1c4:	4603      	mov	r3, r0
     1c6:	71fb      	strb	r3, [r7, #7]
    _putchar(character);
     1c8:	79fb      	ldrb	r3, [r7, #7]
     1ca:	4618      	mov	r0, r3
     1cc:	f7ff ffb4 	bl	138 <_putchar>
}
     1d0:	bf00      	nop
     1d2:	3708      	adds	r7, #8
     1d4:	46bd      	mov	sp, r7
     1d6:	bd80      	pop	{r7, pc}

000001d8 <_putstr>:

void _putstr(const char *str)
{
     1d8:	b580      	push	{r7, lr}
     1da:	b082      	sub	sp, #8
     1dc:	af00      	add	r7, sp, #0
     1de:	6078      	str	r0, [r7, #4]
    while (*str) {
     1e0:	e006      	b.n	1f0 <_putstr+0x18>
        _putchar(*str++);
     1e2:	687b      	ldr	r3, [r7, #4]
     1e4:	1c5a      	adds	r2, r3, #1
     1e6:	607a      	str	r2, [r7, #4]
     1e8:	781b      	ldrb	r3, [r3, #0]
     1ea:	4618      	mov	r0, r3
     1ec:	f7ff ffa4 	bl	138 <_putchar>
    while (*str) {
     1f0:	687b      	ldr	r3, [r7, #4]
     1f2:	781b      	ldrb	r3, [r3, #0]
     1f4:	2b00      	cmp	r3, #0
     1f6:	d1f4      	bne.n	1e2 <_putstr+0xa>
    }
}
     1f8:	bf00      	nop
     1fa:	3708      	adds	r7, #8
     1fc:	46bd      	mov	sp, r7
     1fe:	bd80      	pop	{r7, pc}

00000200 <_strlen>:

uint32_t _strlen (const char *_s)
{
     200:	b480      	push	{r7}
     202:	b085      	sub	sp, #20
     204:	af00      	add	r7, sp, #0
     206:	6078      	str	r0, [r7, #4]
    uint32_t i = 0;
     208:	2300      	movs	r3, #0
     20a:	60fb      	str	r3, [r7, #12]
    while(*_s++ != '\0') i++;
     20c:	e002      	b.n	214 <_strlen+0x14>
     20e:	68fb      	ldr	r3, [r7, #12]
     210:	3301      	adds	r3, #1
     212:	60fb      	str	r3, [r7, #12]
     214:	687b      	ldr	r3, [r7, #4]
     216:	1c5a      	adds	r2, r3, #1
     218:	607a      	str	r2, [r7, #4]
     21a:	781b      	ldrb	r3, [r3, #0]
     21c:	2b00      	cmp	r3, #0
     21e:	d1f6      	bne.n	20e <_strlen+0xe>
    return i;
     220:	68fb      	ldr	r3, [r7, #12]
}
     222:	4618      	mov	r0, r3
     224:	3714      	adds	r7, #20
     226:	46bd      	mov	sp, r7
     228:	bc80      	pop	{r7}
     22a:	4770      	bx	lr

0000022c <_pow>:

static unsigned long _pow(int x, int y)
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
     23a:	e004      	b.n	246 <_pow+0x1a>
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
     24e:	d1f5      	bne.n	23c <_pow+0x10>
    }
    return sum;
     250:	68fb      	ldr	r3, [r7, #12]
}
     252:	4618      	mov	r0, r3
     254:	3714      	adds	r7, #20
     256:	46bd      	mov	sp, r7
     258:	bc80      	pop	{r7}
     25a:	4770      	bx	lr

0000025c <lite_printf>:

int lite_printf(const char *str, ...)
{
     25c:	b40f      	push	{r0, r1, r2, r3}
     25e:	b590      	push	{r4, r7, lr}
     260:	b089      	sub	sp, #36	; 0x24
     262:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
     264:	2300      	movs	r3, #0
     266:	613b      	str	r3, [r7, #16]
    int res = 0; //返回值
     268:	2300      	movs	r3, #0
     26a:	617b      	str	r3, [r7, #20]

    va_start(ap, str);   //初始化ap
     26c:	f107 0334 	add.w	r3, r7, #52	; 0x34
     270:	607b      	str	r3, [r7, #4]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     272:	e10d      	b.n	490 <lite_printf+0x234>
    {
        switch (*str)
     274:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     276:	781b      	ldrb	r3, [r3, #0]
     278:	2b0d      	cmp	r3, #13
     27a:	f000 80f5 	beq.w	468 <lite_printf+0x20c>
     27e:	2b25      	cmp	r3, #37	; 0x25
     280:	d003      	beq.n	28a <lite_printf+0x2e>
     282:	2b0a      	cmp	r3, #10
     284:	f000 80e9 	beq.w	45a <lite_printf+0x1fe>
     288:	e0f5      	b.n	476 <lite_printf+0x21a>
        {
        case '%': //发送参数
            str++;
     28a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     28c:	3301      	adds	r3, #1
     28e:	633b      	str	r3, [r7, #48]	; 0x30
            switch (*str)
     290:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     292:	781b      	ldrb	r3, [r3, #0]
     294:	3b63      	subs	r3, #99	; 0x63
     296:	2b15      	cmp	r3, #21
     298:	f200 80f6 	bhi.w	488 <lite_printf+0x22c>
     29c:	a201      	add	r2, pc, #4	; (adr r2, 2a4 <lite_printf+0x48>)
     29e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     2a2:	bf00      	nop
     2a4:	00000441 	.word	0x00000441
     2a8:	000002fd 	.word	0x000002fd
     2ac:	00000489 	.word	0x00000489
     2b0:	00000489 	.word	0x00000489
     2b4:	00000489 	.word	0x00000489
     2b8:	00000489 	.word	0x00000489
     2bc:	00000489 	.word	0x00000489
     2c0:	00000489 	.word	0x00000489
     2c4:	00000489 	.word	0x00000489
     2c8:	00000489 	.word	0x00000489
     2cc:	00000489 	.word	0x00000489
     2d0:	00000489 	.word	0x00000489
     2d4:	00000489 	.word	0x00000489
     2d8:	00000489 	.word	0x00000489
     2dc:	00000489 	.word	0x00000489
     2e0:	00000489 	.word	0x00000489
     2e4:	00000421 	.word	0x00000421
     2e8:	00000489 	.word	0x00000489
     2ec:	00000489 	.word	0x00000489
     2f0:	00000489 	.word	0x00000489
     2f4:	00000489 	.word	0x00000489
     2f8:	00000387 	.word	0x00000387
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
     2fc:	687b      	ldr	r3, [r7, #4]
     2fe:	1d1a      	adds	r2, r3, #4
     300:	607a      	str	r2, [r7, #4]
     302:	681b      	ldr	r3, [r3, #0]
     304:	60fb      	str	r3, [r7, #12]
                r_val = val;
     306:	68fb      	ldr	r3, [r7, #12]
     308:	61fb      	str	r3, [r7, #28]
                count = 0;
     30a:	2300      	movs	r3, #0
     30c:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     30e:	e00a      	b.n	326 <lite_printf+0xca>

                {
                    count++; //整数的长度
     310:	7efb      	ldrb	r3, [r7, #27]
     312:	3301      	adds	r3, #1
     314:	76fb      	strb	r3, [r7, #27]
                    r_val /= 10;
     316:	69fb      	ldr	r3, [r7, #28]
     318:	4a64      	ldr	r2, [pc, #400]	; (4ac <lite_printf+0x250>)
     31a:	fb82 1203 	smull	r1, r2, r2, r3
     31e:	1092      	asrs	r2, r2, #2
     320:	17db      	asrs	r3, r3, #31
     322:	1ad3      	subs	r3, r2, r3
     324:	61fb      	str	r3, [r7, #28]
                while (r_val)
     326:	69fb      	ldr	r3, [r7, #28]
     328:	2b00      	cmp	r3, #0
     32a:	d1f1      	bne.n	310 <lite_printf+0xb4>
                }

                res += count;
     32c:	7efb      	ldrb	r3, [r7, #27]
     32e:	697a      	ldr	r2, [r7, #20]
     330:	4413      	add	r3, r2
     332:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     334:	68fb      	ldr	r3, [r7, #12]
     336:	61fb      	str	r3, [r7, #28]
                while (count)
     338:	e021      	b.n	37e <lite_printf+0x122>
                {
                    ch = r_val / _pow(10, count - 1);
     33a:	69fc      	ldr	r4, [r7, #28]
     33c:	7efb      	ldrb	r3, [r7, #27]
     33e:	3b01      	subs	r3, #1
     340:	4619      	mov	r1, r3
     342:	200a      	movs	r0, #10
     344:	f7ff ff72 	bl	22c <_pow>
     348:	4603      	mov	r3, r0
     34a:	fbb4 f3f3 	udiv	r3, r4, r3
     34e:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(10, count - 1);
     350:	7efb      	ldrb	r3, [r7, #27]
     352:	3b01      	subs	r3, #1
     354:	4619      	mov	r1, r3
     356:	200a      	movs	r0, #10
     358:	f7ff ff68 	bl	22c <_pow>
     35c:	4602      	mov	r2, r0
     35e:	69fb      	ldr	r3, [r7, #28]
     360:	fbb3 f1f2 	udiv	r1, r3, r2
     364:	fb02 f201 	mul.w	r2, r2, r1
     368:	1a9b      	subs	r3, r3, r2
     36a:	61fb      	str	r3, [r7, #28]

                    _putchar(ch + '0');
     36c:	7afb      	ldrb	r3, [r7, #11]
     36e:	3330      	adds	r3, #48	; 0x30
     370:	b2db      	uxtb	r3, r3
     372:	4618      	mov	r0, r3
     374:	f7ff fee0 	bl	138 <_putchar>
                    //数字到字符的转换
                    count--;
     378:	7efb      	ldrb	r3, [r7, #27]
     37a:	3b01      	subs	r3, #1
     37c:	76fb      	strb	r3, [r7, #27]
                while (count)
     37e:	7efb      	ldrb	r3, [r7, #27]
     380:	2b00      	cmp	r3, #0
     382:	d1da      	bne.n	33a <lite_printf+0xde>
                }
                break;
     384:	e068      	b.n	458 <lite_printf+0x1fc>
            case 'x': //16进制输出
                val = va_arg(ap, int);
     386:	687b      	ldr	r3, [r7, #4]
     388:	1d1a      	adds	r2, r3, #4
     38a:	607a      	str	r2, [r7, #4]
     38c:	681b      	ldr	r3, [r3, #0]
     38e:	60fb      	str	r3, [r7, #12]
                r_val = val;
     390:	68fb      	ldr	r3, [r7, #12]
     392:	61fb      	str	r3, [r7, #28]
                count = 0;
     394:	2300      	movs	r3, #0
     396:	76fb      	strb	r3, [r7, #27]
                while (r_val)
     398:	e008      	b.n	3ac <lite_printf+0x150>

                {
                    count++; //整数的长度
     39a:	7efb      	ldrb	r3, [r7, #27]
     39c:	3301      	adds	r3, #1
     39e:	76fb      	strb	r3, [r7, #27]
                    r_val /= 16;
     3a0:	69fb      	ldr	r3, [r7, #28]
     3a2:	2b00      	cmp	r3, #0
     3a4:	da00      	bge.n	3a8 <lite_printf+0x14c>
     3a6:	330f      	adds	r3, #15
     3a8:	111b      	asrs	r3, r3, #4
     3aa:	61fb      	str	r3, [r7, #28]
                while (r_val)
     3ac:	69fb      	ldr	r3, [r7, #28]
     3ae:	2b00      	cmp	r3, #0
     3b0:	d1f3      	bne.n	39a <lite_printf+0x13e>
                }

                res += count;
     3b2:	7efb      	ldrb	r3, [r7, #27]
     3b4:	697a      	ldr	r2, [r7, #20]
     3b6:	4413      	add	r3, r2
     3b8:	617b      	str	r3, [r7, #20]
                //返回值长度增加​
                r_val = val;
     3ba:	68fb      	ldr	r3, [r7, #12]
     3bc:	61fb      	str	r3, [r7, #28]
                while (count)
     3be:	e02b      	b.n	418 <lite_printf+0x1bc>
                {
                    ch = r_val / _pow(16, count - 1);
     3c0:	69fc      	ldr	r4, [r7, #28]
     3c2:	7efb      	ldrb	r3, [r7, #27]
     3c4:	3b01      	subs	r3, #1
     3c6:	4619      	mov	r1, r3
     3c8:	2010      	movs	r0, #16
     3ca:	f7ff ff2f 	bl	22c <_pow>
     3ce:	4603      	mov	r3, r0
     3d0:	fbb4 f3f3 	udiv	r3, r4, r3
     3d4:	72fb      	strb	r3, [r7, #11]
                    r_val %= _pow(16, count - 1);
     3d6:	7efb      	ldrb	r3, [r7, #27]
     3d8:	3b01      	subs	r3, #1
     3da:	4619      	mov	r1, r3
     3dc:	2010      	movs	r0, #16
     3de:	f7ff ff25 	bl	22c <_pow>
     3e2:	4602      	mov	r2, r0
     3e4:	69fb      	ldr	r3, [r7, #28]
     3e6:	fbb3 f1f2 	udiv	r1, r3, r2
     3ea:	fb02 f201 	mul.w	r2, r2, r1
     3ee:	1a9b      	subs	r3, r3, r2
     3f0:	61fb      	str	r3, [r7, #28]
                    if (ch <= 9)
     3f2:	7afb      	ldrb	r3, [r7, #11]
     3f4:	2b09      	cmp	r3, #9
     3f6:	d806      	bhi.n	406 <lite_printf+0x1aa>
                        _putchar(ch + '0');
     3f8:	7afb      	ldrb	r3, [r7, #11]
     3fa:	3330      	adds	r3, #48	; 0x30
     3fc:	b2db      	uxtb	r3, r3
     3fe:	4618      	mov	r0, r3
     400:	f7ff fe9a 	bl	138 <_putchar>
     404:	e005      	b.n	412 <lite_printf+0x1b6>
                    //数字到字符的转换
                    else
                        _putchar(ch - 10 + 'a');
     406:	7afb      	ldrb	r3, [r7, #11]
     408:	3357      	adds	r3, #87	; 0x57
     40a:	b2db      	uxtb	r3, r3
     40c:	4618      	mov	r0, r3
     40e:	f7ff fe93 	bl	138 <_putchar>
                    count--;
     412:	7efb      	ldrb	r3, [r7, #27]
     414:	3b01      	subs	r3, #1
     416:	76fb      	strb	r3, [r7, #27]
                while (count)
     418:	7efb      	ldrb	r3, [r7, #27]
     41a:	2b00      	cmp	r3, #0
     41c:	d1d0      	bne.n	3c0 <lite_printf+0x164>
                }
                break;
     41e:	e01b      	b.n	458 <lite_printf+0x1fc>
            case 's': //发送字符串
                s = va_arg(ap, char *);
     420:	687b      	ldr	r3, [r7, #4]
     422:	1d1a      	adds	r2, r3, #4
     424:	607a      	str	r2, [r7, #4]
     426:	681b      	ldr	r3, [r3, #0]
     428:	613b      	str	r3, [r7, #16]
                _putstr(s);
     42a:	6938      	ldr	r0, [r7, #16]
     42c:	f7ff fed4 	bl	1d8 <_putstr>
                //字符串,返回值为字符指针
                res += _strlen(s);
     430:	6938      	ldr	r0, [r7, #16]
     432:	f7ff fee5 	bl	200 <_strlen>
     436:	4602      	mov	r2, r0
     438:	697b      	ldr	r3, [r7, #20]
     43a:	4413      	add	r3, r2
     43c:	617b      	str	r3, [r7, #20]
                //返回值长度增加
                break;
     43e:	e00b      	b.n	458 <lite_printf+0x1fc>
            case 'c':
                _putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
     440:	687b      	ldr	r3, [r7, #4]
     442:	1d1a      	adds	r2, r3, #4
     444:	607a      	str	r2, [r7, #4]
     446:	681b      	ldr	r3, [r3, #0]
     448:	b2db      	uxtb	r3, r3
     44a:	4618      	mov	r0, r3
     44c:	f7ff fe74 	bl	138 <_putchar>
                res += 1;
     450:	697b      	ldr	r3, [r7, #20]
     452:	3301      	adds	r3, #1
     454:	617b      	str	r3, [r7, #20]

                break;
     456:	bf00      	nop
            default:;
            }
            break;
     458:	e016      	b.n	488 <lite_printf+0x22c>
        case '\n':
            _putchar('\n');
     45a:	200a      	movs	r0, #10
     45c:	f7ff fe6c 	bl	138 <_putchar>
            res += 1;
     460:	697b      	ldr	r3, [r7, #20]
     462:	3301      	adds	r3, #1
     464:	617b      	str	r3, [r7, #20]
            break;
     466:	e010      	b.n	48a <lite_printf+0x22e>
        case '\r':
            _putchar('\r');
     468:	200d      	movs	r0, #13
     46a:	f7ff fe65 	bl	138 <_putchar>
            res += 1;
     46e:	697b      	ldr	r3, [r7, #20]
     470:	3301      	adds	r3, #1
     472:	617b      	str	r3, [r7, #20]
            break;
     474:	e009      	b.n	48a <lite_printf+0x22e>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            _putchar(*str);
     476:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     478:	781b      	ldrb	r3, [r3, #0]
     47a:	4618      	mov	r0, r3
     47c:	f7ff fe5c 	bl	138 <_putchar>
            res += 1;
     480:	697b      	ldr	r3, [r7, #20]
     482:	3301      	adds	r3, #1
     484:	617b      	str	r3, [r7, #20]
     486:	e000      	b.n	48a <lite_printf+0x22e>
            break;
     488:	bf00      	nop
        }

        str++;
     48a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     48c:	3301      	adds	r3, #1
     48e:	633b      	str	r3, [r7, #48]	; 0x30
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
     490:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     492:	781b      	ldrb	r3, [r3, #0]
     494:	2b00      	cmp	r3, #0
     496:	f47f aeed 	bne.w	274 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
     49a:	697b      	ldr	r3, [r7, #20]
}
     49c:	4618      	mov	r0, r3
     49e:	3724      	adds	r7, #36	; 0x24
     4a0:	46bd      	mov	sp, r7
     4a2:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
     4a6:	b004      	add	sp, #16
     4a8:	4770      	bx	lr
     4aa:	bf00      	nop
     4ac:	66666667 	.word	0x66666667

000004b0 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
     4b0:	b480      	push	{r7}
     4b2:	b085      	sub	sp, #20
     4b4:	af00      	add	r7, sp, #0
     4b6:	60b9      	str	r1, [r7, #8]
     4b8:	607a      	str	r2, [r7, #4]
     4ba:	603b      	str	r3, [r7, #0]
     4bc:	4603      	mov	r3, r0
     4be:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
     4c0:	687a      	ldr	r2, [r7, #4]
     4c2:	683b      	ldr	r3, [r7, #0]
     4c4:	429a      	cmp	r2, r3
     4c6:	d204      	bcs.n	4d2 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
     4c8:	68ba      	ldr	r2, [r7, #8]
     4ca:	687b      	ldr	r3, [r7, #4]
     4cc:	4413      	add	r3, r2
     4ce:	7bfa      	ldrb	r2, [r7, #15]
     4d0:	701a      	strb	r2, [r3, #0]
  }
}
     4d2:	bf00      	nop
     4d4:	3714      	adds	r7, #20
     4d6:	46bd      	mov	sp, r7
     4d8:	bc80      	pop	{r7}
     4da:	4770      	bx	lr

000004dc <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
     4dc:	b480      	push	{r7}
     4de:	b085      	sub	sp, #20
     4e0:	af00      	add	r7, sp, #0
     4e2:	60b9      	str	r1, [r7, #8]
     4e4:	607a      	str	r2, [r7, #4]
     4e6:	603b      	str	r3, [r7, #0]
     4e8:	4603      	mov	r3, r0
     4ea:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
     4ec:	bf00      	nop
     4ee:	3714      	adds	r7, #20
     4f0:	46bd      	mov	sp, r7
     4f2:	bc80      	pop	{r7}
     4f4:	4770      	bx	lr

000004f6 <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
     4f6:	b580      	push	{r7, lr}
     4f8:	b084      	sub	sp, #16
     4fa:	af00      	add	r7, sp, #0
     4fc:	60b9      	str	r1, [r7, #8]
     4fe:	607a      	str	r2, [r7, #4]
     500:	603b      	str	r3, [r7, #0]
     502:	4603      	mov	r3, r0
     504:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
     506:	7bfb      	ldrb	r3, [r7, #15]
     508:	2b00      	cmp	r3, #0
     50a:	d003      	beq.n	514 <_out_char+0x1e>
    _putchar(character);
     50c:	7bfb      	ldrb	r3, [r7, #15]
     50e:	4618      	mov	r0, r3
     510:	f7ff fe12 	bl	138 <_putchar>
  }
}
     514:	bf00      	nop
     516:	3710      	adds	r7, #16
     518:	46bd      	mov	sp, r7
     51a:	bd80      	pop	{r7, pc}

0000051c <_out_fct>:


// internal output function wrapper
static inline void _out_fct(char character, void* buffer, size_t idx, size_t maxlen)
{
     51c:	b580      	push	{r7, lr}
     51e:	b084      	sub	sp, #16
     520:	af00      	add	r7, sp, #0
     522:	60b9      	str	r1, [r7, #8]
     524:	607a      	str	r2, [r7, #4]
     526:	603b      	str	r3, [r7, #0]
     528:	4603      	mov	r3, r0
     52a:	73fb      	strb	r3, [r7, #15]
  (void)idx; (void)maxlen;
  if (character) {
     52c:	7bfb      	ldrb	r3, [r7, #15]
     52e:	2b00      	cmp	r3, #0
     530:	d006      	beq.n	540 <_out_fct+0x24>
    // buffer is the output fct pointer
    ((out_fct_wrap_type*)buffer)->fct(character, ((out_fct_wrap_type*)buffer)->arg);
     532:	68bb      	ldr	r3, [r7, #8]
     534:	681b      	ldr	r3, [r3, #0]
     536:	68ba      	ldr	r2, [r7, #8]
     538:	6851      	ldr	r1, [r2, #4]
     53a:	7bfa      	ldrb	r2, [r7, #15]
     53c:	4610      	mov	r0, r2
     53e:	4798      	blx	r3
  }
}
     540:	bf00      	nop
     542:	3710      	adds	r7, #16
     544:	46bd      	mov	sp, r7
     546:	bd80      	pop	{r7, pc}

00000548 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
     548:	b480      	push	{r7}
     54a:	b085      	sub	sp, #20
     54c:	af00      	add	r7, sp, #0
     54e:	6078      	str	r0, [r7, #4]
     550:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
     552:	687b      	ldr	r3, [r7, #4]
     554:	60fb      	str	r3, [r7, #12]
     556:	e002      	b.n	55e <_strnlen_s+0x16>
     558:	68fb      	ldr	r3, [r7, #12]
     55a:	3301      	adds	r3, #1
     55c:	60fb      	str	r3, [r7, #12]
     55e:	68fb      	ldr	r3, [r7, #12]
     560:	781b      	ldrb	r3, [r3, #0]
     562:	2b00      	cmp	r3, #0
     564:	d004      	beq.n	570 <_strnlen_s+0x28>
     566:	683b      	ldr	r3, [r7, #0]
     568:	1e5a      	subs	r2, r3, #1
     56a:	603a      	str	r2, [r7, #0]
     56c:	2b00      	cmp	r3, #0
     56e:	d1f3      	bne.n	558 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
     570:	68fa      	ldr	r2, [r7, #12]
     572:	687b      	ldr	r3, [r7, #4]
     574:	1ad3      	subs	r3, r2, r3
}
     576:	4618      	mov	r0, r3
     578:	3714      	adds	r7, #20
     57a:	46bd      	mov	sp, r7
     57c:	bc80      	pop	{r7}
     57e:	4770      	bx	lr

00000580 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
     580:	b480      	push	{r7}
     582:	b083      	sub	sp, #12
     584:	af00      	add	r7, sp, #0
     586:	4603      	mov	r3, r0
     588:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
     58a:	79fb      	ldrb	r3, [r7, #7]
     58c:	2b2f      	cmp	r3, #47	; 0x2f
     58e:	d904      	bls.n	59a <_is_digit+0x1a>
     590:	79fb      	ldrb	r3, [r7, #7]
     592:	2b39      	cmp	r3, #57	; 0x39
     594:	d801      	bhi.n	59a <_is_digit+0x1a>
     596:	2301      	movs	r3, #1
     598:	e000      	b.n	59c <_is_digit+0x1c>
     59a:	2300      	movs	r3, #0
     59c:	f003 0301 	and.w	r3, r3, #1
     5a0:	b2db      	uxtb	r3, r3
}
     5a2:	4618      	mov	r0, r3
     5a4:	370c      	adds	r7, #12
     5a6:	46bd      	mov	sp, r7
     5a8:	bc80      	pop	{r7}
     5aa:	4770      	bx	lr

000005ac <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
     5ac:	b580      	push	{r7, lr}
     5ae:	b084      	sub	sp, #16
     5b0:	af00      	add	r7, sp, #0
     5b2:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
     5b4:	2300      	movs	r3, #0
     5b6:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     5b8:	e00e      	b.n	5d8 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
     5ba:	68fa      	ldr	r2, [r7, #12]
     5bc:	4613      	mov	r3, r2
     5be:	009b      	lsls	r3, r3, #2
     5c0:	4413      	add	r3, r2
     5c2:	005b      	lsls	r3, r3, #1
     5c4:	4618      	mov	r0, r3
     5c6:	687b      	ldr	r3, [r7, #4]
     5c8:	681b      	ldr	r3, [r3, #0]
     5ca:	1c59      	adds	r1, r3, #1
     5cc:	687a      	ldr	r2, [r7, #4]
     5ce:	6011      	str	r1, [r2, #0]
     5d0:	781b      	ldrb	r3, [r3, #0]
     5d2:	4403      	add	r3, r0
     5d4:	3b30      	subs	r3, #48	; 0x30
     5d6:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
     5d8:	687b      	ldr	r3, [r7, #4]
     5da:	681b      	ldr	r3, [r3, #0]
     5dc:	781b      	ldrb	r3, [r3, #0]
     5de:	4618      	mov	r0, r3
     5e0:	f7ff ffce 	bl	580 <_is_digit>
     5e4:	4603      	mov	r3, r0
     5e6:	2b00      	cmp	r3, #0
     5e8:	d1e7      	bne.n	5ba <_atoi+0xe>
  }
  return i;
     5ea:	68fb      	ldr	r3, [r7, #12]
}
     5ec:	4618      	mov	r0, r3
     5ee:	3710      	adds	r7, #16
     5f0:	46bd      	mov	sp, r7
     5f2:	bd80      	pop	{r7, pc}

000005f4 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
     5f4:	b590      	push	{r4, r7, lr}
     5f6:	b087      	sub	sp, #28
     5f8:	af00      	add	r7, sp, #0
     5fa:	60f8      	str	r0, [r7, #12]
     5fc:	60b9      	str	r1, [r7, #8]
     5fe:	607a      	str	r2, [r7, #4]
     600:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
     602:	687b      	ldr	r3, [r7, #4]
     604:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
     606:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     608:	f003 0302 	and.w	r3, r3, #2
     60c:	2b00      	cmp	r3, #0
     60e:	d125      	bne.n	65c <_out_rev+0x68>
     610:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     612:	f003 0301 	and.w	r3, r3, #1
     616:	2b00      	cmp	r3, #0
     618:	d120      	bne.n	65c <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
     61a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     61c:	617b      	str	r3, [r7, #20]
     61e:	e00a      	b.n	636 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
     620:	687a      	ldr	r2, [r7, #4]
     622:	1c53      	adds	r3, r2, #1
     624:	607b      	str	r3, [r7, #4]
     626:	68fc      	ldr	r4, [r7, #12]
     628:	683b      	ldr	r3, [r7, #0]
     62a:	68b9      	ldr	r1, [r7, #8]
     62c:	2020      	movs	r0, #32
     62e:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
     630:	697b      	ldr	r3, [r7, #20]
     632:	3301      	adds	r3, #1
     634:	617b      	str	r3, [r7, #20]
     636:	697a      	ldr	r2, [r7, #20]
     638:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     63a:	429a      	cmp	r2, r3
     63c:	d3f0      	bcc.n	620 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
     63e:	e00d      	b.n	65c <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
     640:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     642:	3b01      	subs	r3, #1
     644:	62fb      	str	r3, [r7, #44]	; 0x2c
     646:	6aba      	ldr	r2, [r7, #40]	; 0x28
     648:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     64a:	4413      	add	r3, r2
     64c:	7818      	ldrb	r0, [r3, #0]
     64e:	687a      	ldr	r2, [r7, #4]
     650:	1c53      	adds	r3, r2, #1
     652:	607b      	str	r3, [r7, #4]
     654:	68fc      	ldr	r4, [r7, #12]
     656:	683b      	ldr	r3, [r7, #0]
     658:	68b9      	ldr	r1, [r7, #8]
     65a:	47a0      	blx	r4
  while (len) {
     65c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     65e:	2b00      	cmp	r3, #0
     660:	d1ee      	bne.n	640 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
     662:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     664:	f003 0302 	and.w	r3, r3, #2
     668:	2b00      	cmp	r3, #0
     66a:	d00e      	beq.n	68a <_out_rev+0x96>
    while (idx - start_idx < width) {
     66c:	e007      	b.n	67e <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
     66e:	687a      	ldr	r2, [r7, #4]
     670:	1c53      	adds	r3, r2, #1
     672:	607b      	str	r3, [r7, #4]
     674:	68fc      	ldr	r4, [r7, #12]
     676:	683b      	ldr	r3, [r7, #0]
     678:	68b9      	ldr	r1, [r7, #8]
     67a:	2020      	movs	r0, #32
     67c:	47a0      	blx	r4
    while (idx - start_idx < width) {
     67e:	687a      	ldr	r2, [r7, #4]
     680:	693b      	ldr	r3, [r7, #16]
     682:	1ad3      	subs	r3, r2, r3
     684:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     686:	429a      	cmp	r2, r3
     688:	d8f1      	bhi.n	66e <_out_rev+0x7a>
    }
  }

  return idx;
     68a:	687b      	ldr	r3, [r7, #4]
}
     68c:	4618      	mov	r0, r3
     68e:	371c      	adds	r7, #28
     690:	46bd      	mov	sp, r7
     692:	bd90      	pop	{r4, r7, pc}

00000694 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
     694:	b580      	push	{r7, lr}
     696:	b088      	sub	sp, #32
     698:	af04      	add	r7, sp, #16
     69a:	60f8      	str	r0, [r7, #12]
     69c:	60b9      	str	r1, [r7, #8]
     69e:	607a      	str	r2, [r7, #4]
     6a0:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
     6a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     6a4:	f003 0302 	and.w	r3, r3, #2
     6a8:	2b00      	cmp	r3, #0
     6aa:	d136      	bne.n	71a <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
     6ac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     6ae:	2b00      	cmp	r3, #0
     6b0:	d018      	beq.n	6e4 <_ntoa_format+0x50>
     6b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     6b4:	f003 0301 	and.w	r3, r3, #1
     6b8:	2b00      	cmp	r3, #0
     6ba:	d013      	beq.n	6e4 <_ntoa_format+0x50>
     6bc:	f897 3020 	ldrb.w	r3, [r7, #32]
     6c0:	2b00      	cmp	r3, #0
     6c2:	d104      	bne.n	6ce <_ntoa_format+0x3a>
     6c4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     6c6:	f003 030c 	and.w	r3, r3, #12
     6ca:	2b00      	cmp	r3, #0
     6cc:	d00a      	beq.n	6e4 <_ntoa_format+0x50>
      width--;
     6ce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     6d0:	3b01      	subs	r3, #1
     6d2:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     6d4:	e006      	b.n	6e4 <_ntoa_format+0x50>
      buf[len++] = '0';
     6d6:	69fb      	ldr	r3, [r7, #28]
     6d8:	1c5a      	adds	r2, r3, #1
     6da:	61fa      	str	r2, [r7, #28]
     6dc:	69ba      	ldr	r2, [r7, #24]
     6de:	4413      	add	r3, r2
     6e0:	2230      	movs	r2, #48	; 0x30
     6e2:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     6e4:	69fa      	ldr	r2, [r7, #28]
     6e6:	6abb      	ldr	r3, [r7, #40]	; 0x28
     6e8:	429a      	cmp	r2, r3
     6ea:	d20a      	bcs.n	702 <_ntoa_format+0x6e>
     6ec:	69fb      	ldr	r3, [r7, #28]
     6ee:	2b1f      	cmp	r3, #31
     6f0:	d9f1      	bls.n	6d6 <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     6f2:	e006      	b.n	702 <_ntoa_format+0x6e>
      buf[len++] = '0';
     6f4:	69fb      	ldr	r3, [r7, #28]
     6f6:	1c5a      	adds	r2, r3, #1
     6f8:	61fa      	str	r2, [r7, #28]
     6fa:	69ba      	ldr	r2, [r7, #24]
     6fc:	4413      	add	r3, r2
     6fe:	2230      	movs	r2, #48	; 0x30
     700:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     702:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     704:	f003 0301 	and.w	r3, r3, #1
     708:	2b00      	cmp	r3, #0
     70a:	d006      	beq.n	71a <_ntoa_format+0x86>
     70c:	69fa      	ldr	r2, [r7, #28]
     70e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     710:	429a      	cmp	r2, r3
     712:	d202      	bcs.n	71a <_ntoa_format+0x86>
     714:	69fb      	ldr	r3, [r7, #28]
     716:	2b1f      	cmp	r3, #31
     718:	d9ec      	bls.n	6f4 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
     71a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     71c:	f003 0310 	and.w	r3, r3, #16
     720:	2b00      	cmp	r3, #0
     722:	d058      	beq.n	7d6 <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
     724:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     726:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     72a:	2b00      	cmp	r3, #0
     72c:	d116      	bne.n	75c <_ntoa_format+0xc8>
     72e:	69fb      	ldr	r3, [r7, #28]
     730:	2b00      	cmp	r3, #0
     732:	d013      	beq.n	75c <_ntoa_format+0xc8>
     734:	69fa      	ldr	r2, [r7, #28]
     736:	6abb      	ldr	r3, [r7, #40]	; 0x28
     738:	429a      	cmp	r2, r3
     73a:	d003      	beq.n	744 <_ntoa_format+0xb0>
     73c:	69fa      	ldr	r2, [r7, #28]
     73e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     740:	429a      	cmp	r2, r3
     742:	d10b      	bne.n	75c <_ntoa_format+0xc8>
      len--;
     744:	69fb      	ldr	r3, [r7, #28]
     746:	3b01      	subs	r3, #1
     748:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
     74a:	69fb      	ldr	r3, [r7, #28]
     74c:	2b00      	cmp	r3, #0
     74e:	d005      	beq.n	75c <_ntoa_format+0xc8>
     750:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     752:	2b10      	cmp	r3, #16
     754:	d102      	bne.n	75c <_ntoa_format+0xc8>
        len--;
     756:	69fb      	ldr	r3, [r7, #28]
     758:	3b01      	subs	r3, #1
     75a:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     75c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     75e:	2b10      	cmp	r3, #16
     760:	d10f      	bne.n	782 <_ntoa_format+0xee>
     762:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     764:	f003 0320 	and.w	r3, r3, #32
     768:	2b00      	cmp	r3, #0
     76a:	d10a      	bne.n	782 <_ntoa_format+0xee>
     76c:	69fb      	ldr	r3, [r7, #28]
     76e:	2b1f      	cmp	r3, #31
     770:	d807      	bhi.n	782 <_ntoa_format+0xee>
      buf[len++] = 'x';
     772:	69fb      	ldr	r3, [r7, #28]
     774:	1c5a      	adds	r2, r3, #1
     776:	61fa      	str	r2, [r7, #28]
     778:	69ba      	ldr	r2, [r7, #24]
     77a:	4413      	add	r3, r2
     77c:	2278      	movs	r2, #120	; 0x78
     77e:	701a      	strb	r2, [r3, #0]
     780:	e01f      	b.n	7c2 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     782:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     784:	2b10      	cmp	r3, #16
     786:	d10f      	bne.n	7a8 <_ntoa_format+0x114>
     788:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     78a:	f003 0320 	and.w	r3, r3, #32
     78e:	2b00      	cmp	r3, #0
     790:	d00a      	beq.n	7a8 <_ntoa_format+0x114>
     792:	69fb      	ldr	r3, [r7, #28]
     794:	2b1f      	cmp	r3, #31
     796:	d807      	bhi.n	7a8 <_ntoa_format+0x114>
      buf[len++] = 'X';
     798:	69fb      	ldr	r3, [r7, #28]
     79a:	1c5a      	adds	r2, r3, #1
     79c:	61fa      	str	r2, [r7, #28]
     79e:	69ba      	ldr	r2, [r7, #24]
     7a0:	4413      	add	r3, r2
     7a2:	2258      	movs	r2, #88	; 0x58
     7a4:	701a      	strb	r2, [r3, #0]
     7a6:	e00c      	b.n	7c2 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
     7a8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     7aa:	2b02      	cmp	r3, #2
     7ac:	d109      	bne.n	7c2 <_ntoa_format+0x12e>
     7ae:	69fb      	ldr	r3, [r7, #28]
     7b0:	2b1f      	cmp	r3, #31
     7b2:	d806      	bhi.n	7c2 <_ntoa_format+0x12e>
      buf[len++] = 'b';
     7b4:	69fb      	ldr	r3, [r7, #28]
     7b6:	1c5a      	adds	r2, r3, #1
     7b8:	61fa      	str	r2, [r7, #28]
     7ba:	69ba      	ldr	r2, [r7, #24]
     7bc:	4413      	add	r3, r2
     7be:	2262      	movs	r2, #98	; 0x62
     7c0:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
     7c2:	69fb      	ldr	r3, [r7, #28]
     7c4:	2b1f      	cmp	r3, #31
     7c6:	d806      	bhi.n	7d6 <_ntoa_format+0x142>
      buf[len++] = '0';
     7c8:	69fb      	ldr	r3, [r7, #28]
     7ca:	1c5a      	adds	r2, r3, #1
     7cc:	61fa      	str	r2, [r7, #28]
     7ce:	69ba      	ldr	r2, [r7, #24]
     7d0:	4413      	add	r3, r2
     7d2:	2230      	movs	r2, #48	; 0x30
     7d4:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
     7d6:	69fb      	ldr	r3, [r7, #28]
     7d8:	2b1f      	cmp	r3, #31
     7da:	d824      	bhi.n	826 <_ntoa_format+0x192>
    if (negative) {
     7dc:	f897 3020 	ldrb.w	r3, [r7, #32]
     7e0:	2b00      	cmp	r3, #0
     7e2:	d007      	beq.n	7f4 <_ntoa_format+0x160>
      buf[len++] = '-';
     7e4:	69fb      	ldr	r3, [r7, #28]
     7e6:	1c5a      	adds	r2, r3, #1
     7e8:	61fa      	str	r2, [r7, #28]
     7ea:	69ba      	ldr	r2, [r7, #24]
     7ec:	4413      	add	r3, r2
     7ee:	222d      	movs	r2, #45	; 0x2d
     7f0:	701a      	strb	r2, [r3, #0]
     7f2:	e018      	b.n	826 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
     7f4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     7f6:	f003 0304 	and.w	r3, r3, #4
     7fa:	2b00      	cmp	r3, #0
     7fc:	d007      	beq.n	80e <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
     7fe:	69fb      	ldr	r3, [r7, #28]
     800:	1c5a      	adds	r2, r3, #1
     802:	61fa      	str	r2, [r7, #28]
     804:	69ba      	ldr	r2, [r7, #24]
     806:	4413      	add	r3, r2
     808:	222b      	movs	r2, #43	; 0x2b
     80a:	701a      	strb	r2, [r3, #0]
     80c:	e00b      	b.n	826 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
     80e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     810:	f003 0308 	and.w	r3, r3, #8
     814:	2b00      	cmp	r3, #0
     816:	d006      	beq.n	826 <_ntoa_format+0x192>
      buf[len++] = ' ';
     818:	69fb      	ldr	r3, [r7, #28]
     81a:	1c5a      	adds	r2, r3, #1
     81c:	61fa      	str	r2, [r7, #28]
     81e:	69ba      	ldr	r2, [r7, #24]
     820:	4413      	add	r3, r2
     822:	2220      	movs	r2, #32
     824:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
     826:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     828:	9303      	str	r3, [sp, #12]
     82a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     82c:	9302      	str	r3, [sp, #8]
     82e:	69fb      	ldr	r3, [r7, #28]
     830:	9301      	str	r3, [sp, #4]
     832:	69bb      	ldr	r3, [r7, #24]
     834:	9300      	str	r3, [sp, #0]
     836:	683b      	ldr	r3, [r7, #0]
     838:	687a      	ldr	r2, [r7, #4]
     83a:	68b9      	ldr	r1, [r7, #8]
     83c:	68f8      	ldr	r0, [r7, #12]
     83e:	f7ff fed9 	bl	5f4 <_out_rev>
     842:	4603      	mov	r3, r0
}
     844:	4618      	mov	r0, r3
     846:	3710      	adds	r7, #16
     848:	46bd      	mov	sp, r7
     84a:	bd80      	pop	{r7, pc}

0000084c <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
     84c:	b580      	push	{r7, lr}
     84e:	b096      	sub	sp, #88	; 0x58
     850:	af08      	add	r7, sp, #32
     852:	60f8      	str	r0, [r7, #12]
     854:	60b9      	str	r1, [r7, #8]
     856:	607a      	str	r2, [r7, #4]
     858:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
     85a:	2300      	movs	r3, #0
     85c:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
     85e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     860:	2b00      	cmp	r3, #0
     862:	d103      	bne.n	86c <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
     864:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     866:	f023 0310 	bic.w	r3, r3, #16
     86a:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
     86c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     86e:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     872:	2b00      	cmp	r3, #0
     874:	d002      	beq.n	87c <_ntoa_long+0x30>
     876:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     878:	2b00      	cmp	r3, #0
     87a:	d033      	beq.n	8e4 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
     87c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     87e:	6cba      	ldr	r2, [r7, #72]	; 0x48
     880:	fbb3 f2f2 	udiv	r2, r3, r2
     884:	6cb9      	ldr	r1, [r7, #72]	; 0x48
     886:	fb01 f202 	mul.w	r2, r1, r2
     88a:	1a9b      	subs	r3, r3, r2
     88c:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
     890:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     894:	2b09      	cmp	r3, #9
     896:	d804      	bhi.n	8a2 <_ntoa_long+0x56>
     898:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     89c:	3330      	adds	r3, #48	; 0x30
     89e:	b2da      	uxtb	r2, r3
     8a0:	e00d      	b.n	8be <_ntoa_long+0x72>
     8a2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     8a4:	f003 0320 	and.w	r3, r3, #32
     8a8:	2b00      	cmp	r3, #0
     8aa:	d001      	beq.n	8b0 <_ntoa_long+0x64>
     8ac:	2241      	movs	r2, #65	; 0x41
     8ae:	e000      	b.n	8b2 <_ntoa_long+0x66>
     8b0:	2261      	movs	r2, #97	; 0x61
     8b2:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
     8b6:	4413      	add	r3, r2
     8b8:	b2db      	uxtb	r3, r3
     8ba:	3b0a      	subs	r3, #10
     8bc:	b2da      	uxtb	r2, r3
     8be:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     8c0:	1c59      	adds	r1, r3, #1
     8c2:	6379      	str	r1, [r7, #52]	; 0x34
     8c4:	f107 0138 	add.w	r1, r7, #56	; 0x38
     8c8:	440b      	add	r3, r1
     8ca:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
     8ce:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     8d0:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     8d2:	fbb2 f3f3 	udiv	r3, r2, r3
     8d6:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
     8d8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     8da:	2b00      	cmp	r3, #0
     8dc:	d002      	beq.n	8e4 <_ntoa_long+0x98>
     8de:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     8e0:	2b1f      	cmp	r3, #31
     8e2:	d9cb      	bls.n	87c <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
     8e4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     8e6:	9306      	str	r3, [sp, #24]
     8e8:	6d3b      	ldr	r3, [r7, #80]	; 0x50
     8ea:	9305      	str	r3, [sp, #20]
     8ec:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     8ee:	9304      	str	r3, [sp, #16]
     8f0:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     8f2:	9303      	str	r3, [sp, #12]
     8f4:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
     8f8:	9302      	str	r3, [sp, #8]
     8fa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
     8fc:	9301      	str	r3, [sp, #4]
     8fe:	f107 0310 	add.w	r3, r7, #16
     902:	9300      	str	r3, [sp, #0]
     904:	683b      	ldr	r3, [r7, #0]
     906:	687a      	ldr	r2, [r7, #4]
     908:	68b9      	ldr	r1, [r7, #8]
     90a:	68f8      	ldr	r0, [r7, #12]
     90c:	f7ff fec2 	bl	694 <_ntoa_format>
     910:	4603      	mov	r3, r0
}
     912:	4618      	mov	r0, r3
     914:	3738      	adds	r7, #56	; 0x38
     916:	46bd      	mov	sp, r7
     918:	bd80      	pop	{r7, pc}

0000091a <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
     91a:	b590      	push	{r4, r7, lr}
     91c:	b099      	sub	sp, #100	; 0x64
     91e:	af06      	add	r7, sp, #24
     920:	60f8      	str	r0, [r7, #12]
     922:	60b9      	str	r1, [r7, #8]
     924:	607a      	str	r2, [r7, #4]
     926:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
     928:	2300      	movs	r3, #0
     92a:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
     92c:	68bb      	ldr	r3, [r7, #8]
     92e:	2b00      	cmp	r3, #0
     930:	f040 83c0 	bne.w	10b4 <_vsnprintf+0x79a>
    // use null output function
    out = _out_null;
     934:	4b9f      	ldr	r3, [pc, #636]	; (bb4 <_vsnprintf+0x29a>)
     936:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
     938:	e3bc      	b.n	10b4 <_vsnprintf+0x79a>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
     93a:	683b      	ldr	r3, [r7, #0]
     93c:	781b      	ldrb	r3, [r3, #0]
     93e:	2b25      	cmp	r3, #37	; 0x25
     940:	d00c      	beq.n	95c <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
     942:	683b      	ldr	r3, [r7, #0]
     944:	7818      	ldrb	r0, [r3, #0]
     946:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     948:	1c53      	adds	r3, r2, #1
     94a:	637b      	str	r3, [r7, #52]	; 0x34
     94c:	68fc      	ldr	r4, [r7, #12]
     94e:	687b      	ldr	r3, [r7, #4]
     950:	68b9      	ldr	r1, [r7, #8]
     952:	47a0      	blx	r4
      format++;
     954:	683b      	ldr	r3, [r7, #0]
     956:	3301      	adds	r3, #1
     958:	603b      	str	r3, [r7, #0]
      continue;
     95a:	e3ab      	b.n	10b4 <_vsnprintf+0x79a>
    }
    else {
      // yes, evaluate it
      format++;
     95c:	683b      	ldr	r3, [r7, #0]
     95e:	3301      	adds	r3, #1
     960:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
     962:	2300      	movs	r3, #0
     964:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
     966:	683b      	ldr	r3, [r7, #0]
     968:	781b      	ldrb	r3, [r3, #0]
     96a:	3b20      	subs	r3, #32
     96c:	2b10      	cmp	r3, #16
     96e:	d857      	bhi.n	a20 <_vsnprintf+0x106>
     970:	a201      	add	r2, pc, #4	; (adr r2, 978 <_vsnprintf+0x5e>)
     972:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     976:	bf00      	nop
     978:	000009f9 	.word	0x000009f9
     97c:	00000a21 	.word	0x00000a21
     980:	00000a21 	.word	0x00000a21
     984:	00000a0d 	.word	0x00000a0d
     988:	00000a21 	.word	0x00000a21
     98c:	00000a21 	.word	0x00000a21
     990:	00000a21 	.word	0x00000a21
     994:	00000a21 	.word	0x00000a21
     998:	00000a21 	.word	0x00000a21
     99c:	00000a21 	.word	0x00000a21
     9a0:	00000a21 	.word	0x00000a21
     9a4:	000009e5 	.word	0x000009e5
     9a8:	00000a21 	.word	0x00000a21
     9ac:	000009d1 	.word	0x000009d1
     9b0:	00000a21 	.word	0x00000a21
     9b4:	00000a21 	.word	0x00000a21
     9b8:	000009bd 	.word	0x000009bd
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
     9bc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     9be:	f043 0301 	orr.w	r3, r3, #1
     9c2:	647b      	str	r3, [r7, #68]	; 0x44
     9c4:	683b      	ldr	r3, [r7, #0]
     9c6:	3301      	adds	r3, #1
     9c8:	603b      	str	r3, [r7, #0]
     9ca:	2301      	movs	r3, #1
     9cc:	63bb      	str	r3, [r7, #56]	; 0x38
     9ce:	e02a      	b.n	a26 <_vsnprintf+0x10c>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
     9d0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     9d2:	f043 0302 	orr.w	r3, r3, #2
     9d6:	647b      	str	r3, [r7, #68]	; 0x44
     9d8:	683b      	ldr	r3, [r7, #0]
     9da:	3301      	adds	r3, #1
     9dc:	603b      	str	r3, [r7, #0]
     9de:	2301      	movs	r3, #1
     9e0:	63bb      	str	r3, [r7, #56]	; 0x38
     9e2:	e020      	b.n	a26 <_vsnprintf+0x10c>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
     9e4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     9e6:	f043 0304 	orr.w	r3, r3, #4
     9ea:	647b      	str	r3, [r7, #68]	; 0x44
     9ec:	683b      	ldr	r3, [r7, #0]
     9ee:	3301      	adds	r3, #1
     9f0:	603b      	str	r3, [r7, #0]
     9f2:	2301      	movs	r3, #1
     9f4:	63bb      	str	r3, [r7, #56]	; 0x38
     9f6:	e016      	b.n	a26 <_vsnprintf+0x10c>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
     9f8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     9fa:	f043 0308 	orr.w	r3, r3, #8
     9fe:	647b      	str	r3, [r7, #68]	; 0x44
     a00:	683b      	ldr	r3, [r7, #0]
     a02:	3301      	adds	r3, #1
     a04:	603b      	str	r3, [r7, #0]
     a06:	2301      	movs	r3, #1
     a08:	63bb      	str	r3, [r7, #56]	; 0x38
     a0a:	e00c      	b.n	a26 <_vsnprintf+0x10c>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
     a0c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     a0e:	f043 0310 	orr.w	r3, r3, #16
     a12:	647b      	str	r3, [r7, #68]	; 0x44
     a14:	683b      	ldr	r3, [r7, #0]
     a16:	3301      	adds	r3, #1
     a18:	603b      	str	r3, [r7, #0]
     a1a:	2301      	movs	r3, #1
     a1c:	63bb      	str	r3, [r7, #56]	; 0x38
     a1e:	e002      	b.n	a26 <_vsnprintf+0x10c>
        default :                                   n = 0U; break;
     a20:	2300      	movs	r3, #0
     a22:	63bb      	str	r3, [r7, #56]	; 0x38
     a24:	bf00      	nop
      }
    } while (n);
     a26:	6bbb      	ldr	r3, [r7, #56]	; 0x38
     a28:	2b00      	cmp	r3, #0
     a2a:	d19c      	bne.n	966 <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
     a2c:	2300      	movs	r3, #0
     a2e:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
     a30:	683b      	ldr	r3, [r7, #0]
     a32:	781b      	ldrb	r3, [r3, #0]
     a34:	4618      	mov	r0, r3
     a36:	f7ff fda3 	bl	580 <_is_digit>
     a3a:	4603      	mov	r3, r0
     a3c:	2b00      	cmp	r3, #0
     a3e:	d005      	beq.n	a4c <_vsnprintf+0x132>
      width = _atoi(&format);
     a40:	463b      	mov	r3, r7
     a42:	4618      	mov	r0, r3
     a44:	f7ff fdb2 	bl	5ac <_atoi>
     a48:	6438      	str	r0, [r7, #64]	; 0x40
     a4a:	e018      	b.n	a7e <_vsnprintf+0x164>
    }
    else if (*format == '*') {
     a4c:	683b      	ldr	r3, [r7, #0]
     a4e:	781b      	ldrb	r3, [r3, #0]
     a50:	2b2a      	cmp	r3, #42	; 0x2a
     a52:	d114      	bne.n	a7e <_vsnprintf+0x164>
      const int w = va_arg(va, int);
     a54:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     a56:	1d1a      	adds	r2, r3, #4
     a58:	65ba      	str	r2, [r7, #88]	; 0x58
     a5a:	681b      	ldr	r3, [r3, #0]
     a5c:	623b      	str	r3, [r7, #32]
      if (w < 0) {
     a5e:	6a3b      	ldr	r3, [r7, #32]
     a60:	2b00      	cmp	r3, #0
     a62:	da07      	bge.n	a74 <_vsnprintf+0x15a>
        flags |= FLAGS_LEFT;    // reverse padding
     a64:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     a66:	f043 0302 	orr.w	r3, r3, #2
     a6a:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
     a6c:	6a3b      	ldr	r3, [r7, #32]
     a6e:	425b      	negs	r3, r3
     a70:	643b      	str	r3, [r7, #64]	; 0x40
     a72:	e001      	b.n	a78 <_vsnprintf+0x15e>
      }
      else {
        width = (unsigned int)w;
     a74:	6a3b      	ldr	r3, [r7, #32]
     a76:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
     a78:	683b      	ldr	r3, [r7, #0]
     a7a:	3301      	adds	r3, #1
     a7c:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
     a7e:	2300      	movs	r3, #0
     a80:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
     a82:	683b      	ldr	r3, [r7, #0]
     a84:	781b      	ldrb	r3, [r3, #0]
     a86:	2b2e      	cmp	r3, #46	; 0x2e
     a88:	d124      	bne.n	ad4 <_vsnprintf+0x1ba>
      flags |= FLAGS_PRECISION;
     a8a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     a8c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
     a90:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
     a92:	683b      	ldr	r3, [r7, #0]
     a94:	3301      	adds	r3, #1
     a96:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
     a98:	683b      	ldr	r3, [r7, #0]
     a9a:	781b      	ldrb	r3, [r3, #0]
     a9c:	4618      	mov	r0, r3
     a9e:	f7ff fd6f 	bl	580 <_is_digit>
     aa2:	4603      	mov	r3, r0
     aa4:	2b00      	cmp	r3, #0
     aa6:	d005      	beq.n	ab4 <_vsnprintf+0x19a>
        precision = _atoi(&format);
     aa8:	463b      	mov	r3, r7
     aaa:	4618      	mov	r0, r3
     aac:	f7ff fd7e 	bl	5ac <_atoi>
     ab0:	63f8      	str	r0, [r7, #60]	; 0x3c
     ab2:	e00f      	b.n	ad4 <_vsnprintf+0x1ba>
      }
      else if (*format == '*') {
     ab4:	683b      	ldr	r3, [r7, #0]
     ab6:	781b      	ldrb	r3, [r3, #0]
     ab8:	2b2a      	cmp	r3, #42	; 0x2a
     aba:	d10b      	bne.n	ad4 <_vsnprintf+0x1ba>
        const int prec = (int)va_arg(va, int);
     abc:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     abe:	1d1a      	adds	r2, r3, #4
     ac0:	65ba      	str	r2, [r7, #88]	; 0x58
     ac2:	681b      	ldr	r3, [r3, #0]
     ac4:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
     ac6:	69fb      	ldr	r3, [r7, #28]
     ac8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
     acc:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
     ace:	683b      	ldr	r3, [r7, #0]
     ad0:	3301      	adds	r3, #1
     ad2:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
     ad4:	683b      	ldr	r3, [r7, #0]
     ad6:	781b      	ldrb	r3, [r3, #0]
     ad8:	3b68      	subs	r3, #104	; 0x68
     ada:	2b12      	cmp	r3, #18
     adc:	d866      	bhi.n	bac <_vsnprintf+0x292>
     ade:	a201      	add	r2, pc, #4	; (adr r2, ae4 <_vsnprintf+0x1ca>)
     ae0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     ae4:	00000b57 	.word	0x00000b57
     ae8:	00000bad 	.word	0x00000bad
     aec:	00000b8d 	.word	0x00000b8d
     af0:	00000bad 	.word	0x00000bad
     af4:	00000b31 	.word	0x00000b31
     af8:	00000bad 	.word	0x00000bad
     afc:	00000bad 	.word	0x00000bad
     b00:	00000bad 	.word	0x00000bad
     b04:	00000bad 	.word	0x00000bad
     b08:	00000bad 	.word	0x00000bad
     b0c:	00000bad 	.word	0x00000bad
     b10:	00000bad 	.word	0x00000bad
     b14:	00000b7d 	.word	0x00000b7d
     b18:	00000bad 	.word	0x00000bad
     b1c:	00000bad 	.word	0x00000bad
     b20:	00000bad 	.word	0x00000bad
     b24:	00000bad 	.word	0x00000bad
     b28:	00000bad 	.word	0x00000bad
     b2c:	00000b9d 	.word	0x00000b9d
      case 'l' :
        flags |= FLAGS_LONG;
     b30:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b32:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     b36:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     b38:	683b      	ldr	r3, [r7, #0]
     b3a:	3301      	adds	r3, #1
     b3c:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
     b3e:	683b      	ldr	r3, [r7, #0]
     b40:	781b      	ldrb	r3, [r3, #0]
     b42:	2b6c      	cmp	r3, #108	; 0x6c
     b44:	d134      	bne.n	bb0 <_vsnprintf+0x296>
          flags |= FLAGS_LONG_LONG;
     b46:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b48:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     b4c:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     b4e:	683b      	ldr	r3, [r7, #0]
     b50:	3301      	adds	r3, #1
     b52:	603b      	str	r3, [r7, #0]
        }
        break;
     b54:	e02c      	b.n	bb0 <_vsnprintf+0x296>
      case 'h' :
        flags |= FLAGS_SHORT;
     b56:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b58:	f043 0380 	orr.w	r3, r3, #128	; 0x80
     b5c:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     b5e:	683b      	ldr	r3, [r7, #0]
     b60:	3301      	adds	r3, #1
     b62:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
     b64:	683b      	ldr	r3, [r7, #0]
     b66:	781b      	ldrb	r3, [r3, #0]
     b68:	2b68      	cmp	r3, #104	; 0x68
     b6a:	d125      	bne.n	bb8 <_vsnprintf+0x29e>
          flags |= FLAGS_CHAR;
     b6c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b6e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
     b72:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
     b74:	683b      	ldr	r3, [r7, #0]
     b76:	3301      	adds	r3, #1
     b78:	603b      	str	r3, [r7, #0]
        }
        break;
     b7a:	e01d      	b.n	bb8 <_vsnprintf+0x29e>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     b7c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b7e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     b82:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     b84:	683b      	ldr	r3, [r7, #0]
     b86:	3301      	adds	r3, #1
     b88:	603b      	str	r3, [r7, #0]
        break;
     b8a:	e016      	b.n	bba <_vsnprintf+0x2a0>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     b8c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b8e:	f443 7300 	orr.w	r3, r3, #512	; 0x200
     b92:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     b94:	683b      	ldr	r3, [r7, #0]
     b96:	3301      	adds	r3, #1
     b98:	603b      	str	r3, [r7, #0]
        break;
     b9a:	e00e      	b.n	bba <_vsnprintf+0x2a0>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
     b9c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     b9e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
     ba2:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
     ba4:	683b      	ldr	r3, [r7, #0]
     ba6:	3301      	adds	r3, #1
     ba8:	603b      	str	r3, [r7, #0]
        break;
     baa:	e006      	b.n	bba <_vsnprintf+0x2a0>
      default :
        break;
     bac:	bf00      	nop
     bae:	e004      	b.n	bba <_vsnprintf+0x2a0>
        break;
     bb0:	bf00      	nop
     bb2:	e002      	b.n	bba <_vsnprintf+0x2a0>
     bb4:	000004dd 	.word	0x000004dd
        break;
     bb8:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
     bba:	683b      	ldr	r3, [r7, #0]
     bbc:	781b      	ldrb	r3, [r3, #0]
     bbe:	3b25      	subs	r3, #37	; 0x25
     bc0:	2b53      	cmp	r3, #83	; 0x53
     bc2:	f200 826a 	bhi.w	109a <_vsnprintf+0x780>
     bc6:	a201      	add	r2, pc, #4	; (adr r2, bcc <_vsnprintf+0x2b2>)
     bc8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
     bcc:	00001083 	.word	0x00001083
     bd0:	0000109b 	.word	0x0000109b
     bd4:	0000109b 	.word	0x0000109b
     bd8:	0000109b 	.word	0x0000109b
     bdc:	0000109b 	.word	0x0000109b
     be0:	0000109b 	.word	0x0000109b
     be4:	0000109b 	.word	0x0000109b
     be8:	0000109b 	.word	0x0000109b
     bec:	0000109b 	.word	0x0000109b
     bf0:	0000109b 	.word	0x0000109b
     bf4:	0000109b 	.word	0x0000109b
     bf8:	0000109b 	.word	0x0000109b
     bfc:	0000109b 	.word	0x0000109b
     c00:	0000109b 	.word	0x0000109b
     c04:	0000109b 	.word	0x0000109b
     c08:	0000109b 	.word	0x0000109b
     c0c:	0000109b 	.word	0x0000109b
     c10:	0000109b 	.word	0x0000109b
     c14:	0000109b 	.word	0x0000109b
     c18:	0000109b 	.word	0x0000109b
     c1c:	0000109b 	.word	0x0000109b
     c20:	0000109b 	.word	0x0000109b
     c24:	0000109b 	.word	0x0000109b
     c28:	0000109b 	.word	0x0000109b
     c2c:	0000109b 	.word	0x0000109b
     c30:	0000109b 	.word	0x0000109b
     c34:	0000109b 	.word	0x0000109b
     c38:	0000109b 	.word	0x0000109b
     c3c:	0000109b 	.word	0x0000109b
     c40:	0000109b 	.word	0x0000109b
     c44:	0000109b 	.word	0x0000109b
     c48:	0000109b 	.word	0x0000109b
     c4c:	0000109b 	.word	0x0000109b
     c50:	0000109b 	.word	0x0000109b
     c54:	0000109b 	.word	0x0000109b
     c58:	0000109b 	.word	0x0000109b
     c5c:	0000109b 	.word	0x0000109b
     c60:	0000109b 	.word	0x0000109b
     c64:	0000109b 	.word	0x0000109b
     c68:	0000109b 	.word	0x0000109b
     c6c:	0000109b 	.word	0x0000109b
     c70:	0000109b 	.word	0x0000109b
     c74:	0000109b 	.word	0x0000109b
     c78:	0000109b 	.word	0x0000109b
     c7c:	0000109b 	.word	0x0000109b
     c80:	0000109b 	.word	0x0000109b
     c84:	0000109b 	.word	0x0000109b
     c88:	0000109b 	.word	0x0000109b
     c8c:	0000109b 	.word	0x0000109b
     c90:	0000109b 	.word	0x0000109b
     c94:	0000109b 	.word	0x0000109b
     c98:	00000d1d 	.word	0x00000d1d
     c9c:	0000109b 	.word	0x0000109b
     ca0:	0000109b 	.word	0x0000109b
     ca4:	0000109b 	.word	0x0000109b
     ca8:	0000109b 	.word	0x0000109b
     cac:	0000109b 	.word	0x0000109b
     cb0:	0000109b 	.word	0x0000109b
     cb4:	0000109b 	.word	0x0000109b
     cb8:	0000109b 	.word	0x0000109b
     cbc:	0000109b 	.word	0x0000109b
     cc0:	00000d1d 	.word	0x00000d1d
     cc4:	00000f09 	.word	0x00000f09
     cc8:	00000d1d 	.word	0x00000d1d
     ccc:	0000109b 	.word	0x0000109b
     cd0:	0000109b 	.word	0x0000109b
     cd4:	0000109b 	.word	0x0000109b
     cd8:	0000109b 	.word	0x0000109b
     cdc:	00000d1d 	.word	0x00000d1d
     ce0:	0000109b 	.word	0x0000109b
     ce4:	0000109b 	.word	0x0000109b
     ce8:	0000109b 	.word	0x0000109b
     cec:	0000109b 	.word	0x0000109b
     cf0:	0000109b 	.word	0x0000109b
     cf4:	00000d1d 	.word	0x00000d1d
     cf8:	00001041 	.word	0x00001041
     cfc:	0000109b 	.word	0x0000109b
     d00:	0000109b 	.word	0x0000109b
     d04:	00000f7d 	.word	0x00000f7d
     d08:	0000109b 	.word	0x0000109b
     d0c:	00000d1d 	.word	0x00000d1d
     d10:	0000109b 	.word	0x0000109b
     d14:	0000109b 	.word	0x0000109b
     d18:	00000d1d 	.word	0x00000d1d
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
     d1c:	683b      	ldr	r3, [r7, #0]
     d1e:	781b      	ldrb	r3, [r3, #0]
     d20:	2b78      	cmp	r3, #120	; 0x78
     d22:	d003      	beq.n	d2c <_vsnprintf+0x412>
     d24:	683b      	ldr	r3, [r7, #0]
     d26:	781b      	ldrb	r3, [r3, #0]
     d28:	2b58      	cmp	r3, #88	; 0x58
     d2a:	d102      	bne.n	d32 <_vsnprintf+0x418>
          base = 16U;
     d2c:	2310      	movs	r3, #16
     d2e:	633b      	str	r3, [r7, #48]	; 0x30
     d30:	e013      	b.n	d5a <_vsnprintf+0x440>
        }
        else if (*format == 'o') {
     d32:	683b      	ldr	r3, [r7, #0]
     d34:	781b      	ldrb	r3, [r3, #0]
     d36:	2b6f      	cmp	r3, #111	; 0x6f
     d38:	d102      	bne.n	d40 <_vsnprintf+0x426>
          base =  8U;
     d3a:	2308      	movs	r3, #8
     d3c:	633b      	str	r3, [r7, #48]	; 0x30
     d3e:	e00c      	b.n	d5a <_vsnprintf+0x440>
        }
        else if (*format == 'b') {
     d40:	683b      	ldr	r3, [r7, #0]
     d42:	781b      	ldrb	r3, [r3, #0]
     d44:	2b62      	cmp	r3, #98	; 0x62
     d46:	d102      	bne.n	d4e <_vsnprintf+0x434>
          base =  2U;
     d48:	2302      	movs	r3, #2
     d4a:	633b      	str	r3, [r7, #48]	; 0x30
     d4c:	e005      	b.n	d5a <_vsnprintf+0x440>
        }
        else {
          base = 10U;
     d4e:	230a      	movs	r3, #10
     d50:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
     d52:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d54:	f023 0310 	bic.w	r3, r3, #16
     d58:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
     d5a:	683b      	ldr	r3, [r7, #0]
     d5c:	781b      	ldrb	r3, [r3, #0]
     d5e:	2b58      	cmp	r3, #88	; 0x58
     d60:	d103      	bne.n	d6a <_vsnprintf+0x450>
          flags |= FLAGS_UPPERCASE;
     d62:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d64:	f043 0320 	orr.w	r3, r3, #32
     d68:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
     d6a:	683b      	ldr	r3, [r7, #0]
     d6c:	781b      	ldrb	r3, [r3, #0]
     d6e:	2b69      	cmp	r3, #105	; 0x69
     d70:	d007      	beq.n	d82 <_vsnprintf+0x468>
     d72:	683b      	ldr	r3, [r7, #0]
     d74:	781b      	ldrb	r3, [r3, #0]
     d76:	2b64      	cmp	r3, #100	; 0x64
     d78:	d003      	beq.n	d82 <_vsnprintf+0x468>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
     d7a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d7c:	f023 030c 	bic.w	r3, r3, #12
     d80:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
     d82:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d84:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     d88:	2b00      	cmp	r3, #0
     d8a:	d003      	beq.n	d94 <_vsnprintf+0x47a>
          flags &= ~FLAGS_ZEROPAD;
     d8c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     d8e:	f023 0301 	bic.w	r3, r3, #1
     d92:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
     d94:	683b      	ldr	r3, [r7, #0]
     d96:	781b      	ldrb	r3, [r3, #0]
     d98:	2b69      	cmp	r3, #105	; 0x69
     d9a:	d003      	beq.n	da4 <_vsnprintf+0x48a>
     d9c:	683b      	ldr	r3, [r7, #0]
     d9e:	781b      	ldrb	r3, [r3, #0]
     da0:	2b64      	cmp	r3, #100	; 0x64
     da2:	d15e      	bne.n	e62 <_vsnprintf+0x548>
          // signed
          if (flags & FLAGS_LONG_LONG) {
     da4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     da6:	f403 7300 	and.w	r3, r3, #512	; 0x200
     daa:	2b00      	cmp	r3, #0
     dac:	f040 80a8 	bne.w	f00 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     db0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     db2:	f403 7380 	and.w	r3, r3, #256	; 0x100
     db6:	2b00      	cmp	r3, #0
     db8:	d01e      	beq.n	df8 <_vsnprintf+0x4de>
            const long value = va_arg(va, long);
     dba:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     dbc:	1d1a      	adds	r2, r3, #4
     dbe:	65ba      	str	r2, [r7, #88]	; 0x58
     dc0:	681b      	ldr	r3, [r3, #0]
     dc2:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     dc4:	693b      	ldr	r3, [r7, #16]
     dc6:	2b00      	cmp	r3, #0
     dc8:	bfb8      	it	lt
     dca:	425b      	neglt	r3, r3
     dcc:	4619      	mov	r1, r3
     dce:	693b      	ldr	r3, [r7, #16]
     dd0:	0fdb      	lsrs	r3, r3, #31
     dd2:	b2db      	uxtb	r3, r3
     dd4:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     dd6:	9205      	str	r2, [sp, #20]
     dd8:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     dda:	9204      	str	r2, [sp, #16]
     ddc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     dde:	9203      	str	r2, [sp, #12]
     de0:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     de2:	9202      	str	r2, [sp, #8]
     de4:	9301      	str	r3, [sp, #4]
     de6:	9100      	str	r1, [sp, #0]
     de8:	687b      	ldr	r3, [r7, #4]
     dea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     dec:	68b9      	ldr	r1, [r7, #8]
     dee:	68f8      	ldr	r0, [r7, #12]
     df0:	f7ff fd2c 	bl	84c <_ntoa_long>
     df4:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     df6:	e083      	b.n	f00 <_vsnprintf+0x5e6>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
     df8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     dfa:	f003 0340 	and.w	r3, r3, #64	; 0x40
     dfe:	2b00      	cmp	r3, #0
     e00:	d005      	beq.n	e0e <_vsnprintf+0x4f4>
     e02:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     e04:	1d1a      	adds	r2, r3, #4
     e06:	65ba      	str	r2, [r7, #88]	; 0x58
     e08:	681b      	ldr	r3, [r3, #0]
     e0a:	b2db      	uxtb	r3, r3
     e0c:	e00e      	b.n	e2c <_vsnprintf+0x512>
     e0e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e10:	f003 0380 	and.w	r3, r3, #128	; 0x80
     e14:	2b00      	cmp	r3, #0
     e16:	d005      	beq.n	e24 <_vsnprintf+0x50a>
     e18:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     e1a:	1d1a      	adds	r2, r3, #4
     e1c:	65ba      	str	r2, [r7, #88]	; 0x58
     e1e:	681b      	ldr	r3, [r3, #0]
     e20:	b21b      	sxth	r3, r3
     e22:	e003      	b.n	e2c <_vsnprintf+0x512>
     e24:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     e26:	1d1a      	adds	r2, r3, #4
     e28:	65ba      	str	r2, [r7, #88]	; 0x58
     e2a:	681b      	ldr	r3, [r3, #0]
     e2c:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
     e2e:	697b      	ldr	r3, [r7, #20]
     e30:	2b00      	cmp	r3, #0
     e32:	bfb8      	it	lt
     e34:	425b      	neglt	r3, r3
     e36:	4619      	mov	r1, r3
     e38:	697b      	ldr	r3, [r7, #20]
     e3a:	0fdb      	lsrs	r3, r3, #31
     e3c:	b2db      	uxtb	r3, r3
     e3e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     e40:	9205      	str	r2, [sp, #20]
     e42:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     e44:	9204      	str	r2, [sp, #16]
     e46:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     e48:	9203      	str	r2, [sp, #12]
     e4a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     e4c:	9202      	str	r2, [sp, #8]
     e4e:	9301      	str	r3, [sp, #4]
     e50:	9100      	str	r1, [sp, #0]
     e52:	687b      	ldr	r3, [r7, #4]
     e54:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     e56:	68b9      	ldr	r1, [r7, #8]
     e58:	68f8      	ldr	r0, [r7, #12]
     e5a:	f7ff fcf7 	bl	84c <_ntoa_long>
     e5e:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
     e60:	e04e      	b.n	f00 <_vsnprintf+0x5e6>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
     e62:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e64:	f403 7300 	and.w	r3, r3, #512	; 0x200
     e68:	2b00      	cmp	r3, #0
     e6a:	d149      	bne.n	f00 <_vsnprintf+0x5e6>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
     e6c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     e6e:	f403 7380 	and.w	r3, r3, #256	; 0x100
     e72:	2b00      	cmp	r3, #0
     e74:	d016      	beq.n	ea4 <_vsnprintf+0x58a>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
     e76:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     e78:	1d1a      	adds	r2, r3, #4
     e7a:	65ba      	str	r2, [r7, #88]	; 0x58
     e7c:	681b      	ldr	r3, [r3, #0]
     e7e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     e80:	9205      	str	r2, [sp, #20]
     e82:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     e84:	9204      	str	r2, [sp, #16]
     e86:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     e88:	9203      	str	r2, [sp, #12]
     e8a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     e8c:	9202      	str	r2, [sp, #8]
     e8e:	2200      	movs	r2, #0
     e90:	9201      	str	r2, [sp, #4]
     e92:	9300      	str	r3, [sp, #0]
     e94:	687b      	ldr	r3, [r7, #4]
     e96:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     e98:	68b9      	ldr	r1, [r7, #8]
     e9a:	68f8      	ldr	r0, [r7, #12]
     e9c:	f7ff fcd6 	bl	84c <_ntoa_long>
     ea0:	6378      	str	r0, [r7, #52]	; 0x34
     ea2:	e02d      	b.n	f00 <_vsnprintf+0x5e6>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
     ea4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ea6:	f003 0340 	and.w	r3, r3, #64	; 0x40
     eaa:	2b00      	cmp	r3, #0
     eac:	d005      	beq.n	eba <_vsnprintf+0x5a0>
     eae:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     eb0:	1d1a      	adds	r2, r3, #4
     eb2:	65ba      	str	r2, [r7, #88]	; 0x58
     eb4:	681b      	ldr	r3, [r3, #0]
     eb6:	b2db      	uxtb	r3, r3
     eb8:	e00e      	b.n	ed8 <_vsnprintf+0x5be>
     eba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ebc:	f003 0380 	and.w	r3, r3, #128	; 0x80
     ec0:	2b00      	cmp	r3, #0
     ec2:	d005      	beq.n	ed0 <_vsnprintf+0x5b6>
     ec4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     ec6:	1d1a      	adds	r2, r3, #4
     ec8:	65ba      	str	r2, [r7, #88]	; 0x58
     eca:	681b      	ldr	r3, [r3, #0]
     ecc:	b29b      	uxth	r3, r3
     ece:	e003      	b.n	ed8 <_vsnprintf+0x5be>
     ed0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     ed2:	1d1a      	adds	r2, r3, #4
     ed4:	65ba      	str	r2, [r7, #88]	; 0x58
     ed6:	681b      	ldr	r3, [r3, #0]
     ed8:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
     eda:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     edc:	9305      	str	r3, [sp, #20]
     ede:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     ee0:	9304      	str	r3, [sp, #16]
     ee2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     ee4:	9303      	str	r3, [sp, #12]
     ee6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ee8:	9302      	str	r3, [sp, #8]
     eea:	2300      	movs	r3, #0
     eec:	9301      	str	r3, [sp, #4]
     eee:	69bb      	ldr	r3, [r7, #24]
     ef0:	9300      	str	r3, [sp, #0]
     ef2:	687b      	ldr	r3, [r7, #4]
     ef4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     ef6:	68b9      	ldr	r1, [r7, #8]
     ef8:	68f8      	ldr	r0, [r7, #12]
     efa:	f7ff fca7 	bl	84c <_ntoa_long>
     efe:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
     f00:	683b      	ldr	r3, [r7, #0]
     f02:	3301      	adds	r3, #1
     f04:	603b      	str	r3, [r7, #0]
        break;
     f06:	e0d5      	b.n	10b4 <_vsnprintf+0x79a>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
     f08:	2301      	movs	r3, #1
     f0a:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
     f0c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f0e:	f003 0302 	and.w	r3, r3, #2
     f12:	2b00      	cmp	r3, #0
     f14:	d10e      	bne.n	f34 <_vsnprintf+0x61a>
          while (l++ < width) {
     f16:	e007      	b.n	f28 <_vsnprintf+0x60e>
            out(' ', buffer, idx++, maxlen);
     f18:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f1a:	1c53      	adds	r3, r2, #1
     f1c:	637b      	str	r3, [r7, #52]	; 0x34
     f1e:	68fc      	ldr	r4, [r7, #12]
     f20:	687b      	ldr	r3, [r7, #4]
     f22:	68b9      	ldr	r1, [r7, #8]
     f24:	2020      	movs	r0, #32
     f26:	47a0      	blx	r4
          while (l++ < width) {
     f28:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f2a:	1c5a      	adds	r2, r3, #1
     f2c:	62fa      	str	r2, [r7, #44]	; 0x2c
     f2e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f30:	429a      	cmp	r2, r3
     f32:	d8f1      	bhi.n	f18 <_vsnprintf+0x5fe>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
     f34:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f36:	1d1a      	adds	r2, r3, #4
     f38:	65ba      	str	r2, [r7, #88]	; 0x58
     f3a:	681b      	ldr	r3, [r3, #0]
     f3c:	b2d8      	uxtb	r0, r3
     f3e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f40:	1c53      	adds	r3, r2, #1
     f42:	637b      	str	r3, [r7, #52]	; 0x34
     f44:	68fc      	ldr	r4, [r7, #12]
     f46:	687b      	ldr	r3, [r7, #4]
     f48:	68b9      	ldr	r1, [r7, #8]
     f4a:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
     f4c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     f4e:	f003 0302 	and.w	r3, r3, #2
     f52:	2b00      	cmp	r3, #0
     f54:	d00e      	beq.n	f74 <_vsnprintf+0x65a>
          while (l++ < width) {
     f56:	e007      	b.n	f68 <_vsnprintf+0x64e>
            out(' ', buffer, idx++, maxlen);
     f58:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     f5a:	1c53      	adds	r3, r2, #1
     f5c:	637b      	str	r3, [r7, #52]	; 0x34
     f5e:	68fc      	ldr	r4, [r7, #12]
     f60:	687b      	ldr	r3, [r7, #4]
     f62:	68b9      	ldr	r1, [r7, #8]
     f64:	2020      	movs	r0, #32
     f66:	47a0      	blx	r4
          while (l++ < width) {
     f68:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f6a:	1c5a      	adds	r2, r3, #1
     f6c:	62fa      	str	r2, [r7, #44]	; 0x2c
     f6e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     f70:	429a      	cmp	r2, r3
     f72:	d8f1      	bhi.n	f58 <_vsnprintf+0x63e>
          }
        }
        format++;
     f74:	683b      	ldr	r3, [r7, #0]
     f76:	3301      	adds	r3, #1
     f78:	603b      	str	r3, [r7, #0]
        break;
     f7a:	e09b      	b.n	10b4 <_vsnprintf+0x79a>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
     f7c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     f7e:	1d1a      	adds	r2, r3, #4
     f80:	65ba      	str	r2, [r7, #88]	; 0x58
     f82:	681b      	ldr	r3, [r3, #0]
     f84:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
     f86:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     f88:	2b00      	cmp	r3, #0
     f8a:	d001      	beq.n	f90 <_vsnprintf+0x676>
     f8c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     f8e:	e001      	b.n	f94 <_vsnprintf+0x67a>
     f90:	f04f 33ff 	mov.w	r3, #4294967295
     f94:	4619      	mov	r1, r3
     f96:	6ab8      	ldr	r0, [r7, #40]	; 0x28
     f98:	f7ff fad6 	bl	548 <_strnlen_s>
     f9c:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
     f9e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fa0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
     fa4:	2b00      	cmp	r3, #0
     fa6:	d005      	beq.n	fb4 <_vsnprintf+0x69a>
          l = (l < precision ? l : precision);
     fa8:	6a7a      	ldr	r2, [r7, #36]	; 0x24
     faa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     fac:	4293      	cmp	r3, r2
     fae:	bf28      	it	cs
     fb0:	4613      	movcs	r3, r2
     fb2:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
     fb4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     fb6:	f003 0302 	and.w	r3, r3, #2
     fba:	2b00      	cmp	r3, #0
     fbc:	d11a      	bne.n	ff4 <_vsnprintf+0x6da>
          while (l++ < width) {
     fbe:	e007      	b.n	fd0 <_vsnprintf+0x6b6>
            out(' ', buffer, idx++, maxlen);
     fc0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     fc2:	1c53      	adds	r3, r2, #1
     fc4:	637b      	str	r3, [r7, #52]	; 0x34
     fc6:	68fc      	ldr	r4, [r7, #12]
     fc8:	687b      	ldr	r3, [r7, #4]
     fca:	68b9      	ldr	r1, [r7, #8]
     fcc:	2020      	movs	r0, #32
     fce:	47a0      	blx	r4
          while (l++ < width) {
     fd0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     fd2:	1c5a      	adds	r2, r3, #1
     fd4:	627a      	str	r2, [r7, #36]	; 0x24
     fd6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
     fd8:	429a      	cmp	r2, r3
     fda:	d8f1      	bhi.n	fc0 <_vsnprintf+0x6a6>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
     fdc:	e00a      	b.n	ff4 <_vsnprintf+0x6da>
          out(*(p++), buffer, idx++, maxlen);
     fde:	6abb      	ldr	r3, [r7, #40]	; 0x28
     fe0:	1c5a      	adds	r2, r3, #1
     fe2:	62ba      	str	r2, [r7, #40]	; 0x28
     fe4:	7818      	ldrb	r0, [r3, #0]
     fe6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
     fe8:	1c53      	adds	r3, r2, #1
     fea:	637b      	str	r3, [r7, #52]	; 0x34
     fec:	68fc      	ldr	r4, [r7, #12]
     fee:	687b      	ldr	r3, [r7, #4]
     ff0:	68b9      	ldr	r1, [r7, #8]
     ff2:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
     ff4:	6abb      	ldr	r3, [r7, #40]	; 0x28
     ff6:	781b      	ldrb	r3, [r3, #0]
     ff8:	2b00      	cmp	r3, #0
     ffa:	d009      	beq.n	1010 <_vsnprintf+0x6f6>
     ffc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     ffe:	f403 6380 	and.w	r3, r3, #1024	; 0x400
    1002:	2b00      	cmp	r3, #0
    1004:	d0eb      	beq.n	fde <_vsnprintf+0x6c4>
    1006:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1008:	1e5a      	subs	r2, r3, #1
    100a:	63fa      	str	r2, [r7, #60]	; 0x3c
    100c:	2b00      	cmp	r3, #0
    100e:	d1e6      	bne.n	fde <_vsnprintf+0x6c4>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
    1010:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1012:	f003 0302 	and.w	r3, r3, #2
    1016:	2b00      	cmp	r3, #0
    1018:	d00e      	beq.n	1038 <_vsnprintf+0x71e>
          while (l++ < width) {
    101a:	e007      	b.n	102c <_vsnprintf+0x712>
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
    102c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    102e:	1c5a      	adds	r2, r3, #1
    1030:	627a      	str	r2, [r7, #36]	; 0x24
    1032:	6c3a      	ldr	r2, [r7, #64]	; 0x40
    1034:	429a      	cmp	r2, r3
    1036:	d8f1      	bhi.n	101c <_vsnprintf+0x702>
          }
        }
        format++;
    1038:	683b      	ldr	r3, [r7, #0]
    103a:	3301      	adds	r3, #1
    103c:	603b      	str	r3, [r7, #0]
        break;
    103e:	e039      	b.n	10b4 <_vsnprintf+0x79a>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
    1040:	2308      	movs	r3, #8
    1042:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    1044:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1046:	f043 0321 	orr.w	r3, r3, #33	; 0x21
    104a:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
    104c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
    104e:	1d1a      	adds	r2, r3, #4
    1050:	65ba      	str	r2, [r7, #88]	; 0x58
    1052:	681b      	ldr	r3, [r3, #0]
    1054:	461a      	mov	r2, r3
    1056:	6c7b      	ldr	r3, [r7, #68]	; 0x44
    1058:	9305      	str	r3, [sp, #20]
    105a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
    105c:	9304      	str	r3, [sp, #16]
    105e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
    1060:	9303      	str	r3, [sp, #12]
    1062:	2310      	movs	r3, #16
    1064:	9302      	str	r3, [sp, #8]
    1066:	2300      	movs	r3, #0
    1068:	9301      	str	r3, [sp, #4]
    106a:	9200      	str	r2, [sp, #0]
    106c:	687b      	ldr	r3, [r7, #4]
    106e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1070:	68b9      	ldr	r1, [r7, #8]
    1072:	68f8      	ldr	r0, [r7, #12]
    1074:	f7ff fbea 	bl	84c <_ntoa_long>
    1078:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
    107a:	683b      	ldr	r3, [r7, #0]
    107c:	3301      	adds	r3, #1
    107e:	603b      	str	r3, [r7, #0]
        break;
    1080:	e018      	b.n	10b4 <_vsnprintf+0x79a>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
    1082:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    1084:	1c53      	adds	r3, r2, #1
    1086:	637b      	str	r3, [r7, #52]	; 0x34
    1088:	68fc      	ldr	r4, [r7, #12]
    108a:	687b      	ldr	r3, [r7, #4]
    108c:	68b9      	ldr	r1, [r7, #8]
    108e:	2025      	movs	r0, #37	; 0x25
    1090:	47a0      	blx	r4
        format++;
    1092:	683b      	ldr	r3, [r7, #0]
    1094:	3301      	adds	r3, #1
    1096:	603b      	str	r3, [r7, #0]
        break;
    1098:	e00c      	b.n	10b4 <_vsnprintf+0x79a>

      default :
        out(*format, buffer, idx++, maxlen);
    109a:	683b      	ldr	r3, [r7, #0]
    109c:	7818      	ldrb	r0, [r3, #0]
    109e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10a0:	1c53      	adds	r3, r2, #1
    10a2:	637b      	str	r3, [r7, #52]	; 0x34
    10a4:	68fc      	ldr	r4, [r7, #12]
    10a6:	687b      	ldr	r3, [r7, #4]
    10a8:	68b9      	ldr	r1, [r7, #8]
    10aa:	47a0      	blx	r4
        format++;
    10ac:	683b      	ldr	r3, [r7, #0]
    10ae:	3301      	adds	r3, #1
    10b0:	603b      	str	r3, [r7, #0]
        break;
    10b2:	bf00      	nop
  while (*format)
    10b4:	683b      	ldr	r3, [r7, #0]
    10b6:	781b      	ldrb	r3, [r3, #0]
    10b8:	2b00      	cmp	r3, #0
    10ba:	f47f ac3e 	bne.w	93a <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    10be:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10c0:	687b      	ldr	r3, [r7, #4]
    10c2:	429a      	cmp	r2, r3
    10c4:	d302      	bcc.n	10cc <_vsnprintf+0x7b2>
    10c6:	687b      	ldr	r3, [r7, #4]
    10c8:	1e5a      	subs	r2, r3, #1
    10ca:	e000      	b.n	10ce <_vsnprintf+0x7b4>
    10cc:	6b7a      	ldr	r2, [r7, #52]	; 0x34
    10ce:	68fc      	ldr	r4, [r7, #12]
    10d0:	687b      	ldr	r3, [r7, #4]
    10d2:	68b9      	ldr	r1, [r7, #8]
    10d4:	2000      	movs	r0, #0
    10d6:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
    10d8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
    10da:	4618      	mov	r0, r3
    10dc:	374c      	adds	r7, #76	; 0x4c
    10de:	46bd      	mov	sp, r7
    10e0:	bd90      	pop	{r4, r7, pc}

000010e2 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
    10e2:	b40f      	push	{r0, r1, r2, r3}
    10e4:	b580      	push	{r7, lr}
    10e6:	b086      	sub	sp, #24
    10e8:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
    10ea:	f107 031c 	add.w	r3, r7, #28
    10ee:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    10f0:	1d39      	adds	r1, r7, #4
    10f2:	68bb      	ldr	r3, [r7, #8]
    10f4:	9300      	str	r3, [sp, #0]
    10f6:	69bb      	ldr	r3, [r7, #24]
    10f8:	f04f 32ff 	mov.w	r2, #4294967295
    10fc:	4805      	ldr	r0, [pc, #20]	; (1114 <printf_+0x32>)
    10fe:	f7ff fc0c 	bl	91a <_vsnprintf>
    1102:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1104:	68fb      	ldr	r3, [r7, #12]
}
    1106:	4618      	mov	r0, r3
    1108:	3710      	adds	r7, #16
    110a:	46bd      	mov	sp, r7
    110c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1110:	b004      	add	sp, #16
    1112:	4770      	bx	lr
    1114:	000004f7 	.word	0x000004f7

00001118 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
    1118:	b40e      	push	{r1, r2, r3}
    111a:	b580      	push	{r7, lr}
    111c:	b087      	sub	sp, #28
    111e:	af02      	add	r7, sp, #8
    1120:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
    1122:	f107 0320 	add.w	r3, r7, #32
    1126:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
    1128:	68bb      	ldr	r3, [r7, #8]
    112a:	9300      	str	r3, [sp, #0]
    112c:	69fb      	ldr	r3, [r7, #28]
    112e:	f04f 32ff 	mov.w	r2, #4294967295
    1132:	6879      	ldr	r1, [r7, #4]
    1134:	4805      	ldr	r0, [pc, #20]	; (114c <sprintf_+0x34>)
    1136:	f7ff fbf0 	bl	91a <_vsnprintf>
    113a:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    113c:	68fb      	ldr	r3, [r7, #12]
}
    113e:	4618      	mov	r0, r3
    1140:	3714      	adds	r7, #20
    1142:	46bd      	mov	sp, r7
    1144:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1148:	b003      	add	sp, #12
    114a:	4770      	bx	lr
    114c:	000004b1 	.word	0x000004b1

00001150 <snprintf_>:


int snprintf_(char* buffer, size_t count, const char* format, ...)
{
    1150:	b40c      	push	{r2, r3}
    1152:	b580      	push	{r7, lr}
    1154:	b086      	sub	sp, #24
    1156:	af02      	add	r7, sp, #8
    1158:	6078      	str	r0, [r7, #4]
    115a:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    115c:	f107 031c 	add.w	r3, r7, #28
    1160:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, count, format, va);
    1162:	68bb      	ldr	r3, [r7, #8]
    1164:	9300      	str	r3, [sp, #0]
    1166:	69bb      	ldr	r3, [r7, #24]
    1168:	683a      	ldr	r2, [r7, #0]
    116a:	6879      	ldr	r1, [r7, #4]
    116c:	4805      	ldr	r0, [pc, #20]	; (1184 <snprintf_+0x34>)
    116e:	f7ff fbd4 	bl	91a <_vsnprintf>
    1172:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
    1174:	68fb      	ldr	r3, [r7, #12]
}
    1176:	4618      	mov	r0, r3
    1178:	3710      	adds	r7, #16
    117a:	46bd      	mov	sp, r7
    117c:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    1180:	b002      	add	sp, #8
    1182:	4770      	bx	lr
    1184:	000004b1 	.word	0x000004b1

00001188 <vprintf_>:


int vprintf_(const char* format, va_list va)
{
    1188:	b580      	push	{r7, lr}
    118a:	b086      	sub	sp, #24
    118c:	af02      	add	r7, sp, #8
    118e:	6078      	str	r0, [r7, #4]
    1190:	6039      	str	r1, [r7, #0]
  char buffer[1];
  return _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    1192:	f107 010c 	add.w	r1, r7, #12
    1196:	683b      	ldr	r3, [r7, #0]
    1198:	9300      	str	r3, [sp, #0]
    119a:	687b      	ldr	r3, [r7, #4]
    119c:	f04f 32ff 	mov.w	r2, #4294967295
    11a0:	4803      	ldr	r0, [pc, #12]	; (11b0 <vprintf_+0x28>)
    11a2:	f7ff fbba 	bl	91a <_vsnprintf>
    11a6:	4603      	mov	r3, r0
}
    11a8:	4618      	mov	r0, r3
    11aa:	3710      	adds	r7, #16
    11ac:	46bd      	mov	sp, r7
    11ae:	bd80      	pop	{r7, pc}
    11b0:	000004f7 	.word	0x000004f7

000011b4 <vsnprintf_>:


int vsnprintf_(char* buffer, size_t count, const char* format, va_list va)
{
    11b4:	b580      	push	{r7, lr}
    11b6:	b086      	sub	sp, #24
    11b8:	af02      	add	r7, sp, #8
    11ba:	60f8      	str	r0, [r7, #12]
    11bc:	60b9      	str	r1, [r7, #8]
    11be:	607a      	str	r2, [r7, #4]
    11c0:	603b      	str	r3, [r7, #0]
  return _vsnprintf(_out_buffer, buffer, count, format, va);
    11c2:	683b      	ldr	r3, [r7, #0]
    11c4:	9300      	str	r3, [sp, #0]
    11c6:	687b      	ldr	r3, [r7, #4]
    11c8:	68ba      	ldr	r2, [r7, #8]
    11ca:	68f9      	ldr	r1, [r7, #12]
    11cc:	4803      	ldr	r0, [pc, #12]	; (11dc <vsnprintf_+0x28>)
    11ce:	f7ff fba4 	bl	91a <_vsnprintf>
    11d2:	4603      	mov	r3, r0
}
    11d4:	4618      	mov	r0, r3
    11d6:	3710      	adds	r7, #16
    11d8:	46bd      	mov	sp, r7
    11da:	bd80      	pop	{r7, pc}
    11dc:	000004b1 	.word	0x000004b1

000011e0 <fctprintf>:


int fctprintf(void (*out)(char character, void* arg), void* arg, const char* format, ...)
{
    11e0:	b40c      	push	{r2, r3}
    11e2:	b580      	push	{r7, lr}
    11e4:	b088      	sub	sp, #32
    11e6:	af02      	add	r7, sp, #8
    11e8:	6078      	str	r0, [r7, #4]
    11ea:	6039      	str	r1, [r7, #0]
  va_list va;
  va_start(va, format);
    11ec:	f107 0324 	add.w	r3, r7, #36	; 0x24
    11f0:	613b      	str	r3, [r7, #16]
  const out_fct_wrap_type out_fct_wrap = { out, arg };
    11f2:	687b      	ldr	r3, [r7, #4]
    11f4:	60bb      	str	r3, [r7, #8]
    11f6:	683b      	ldr	r3, [r7, #0]
    11f8:	60fb      	str	r3, [r7, #12]
  const int ret = _vsnprintf(_out_fct, (char*)(uintptr_t)&out_fct_wrap, (size_t)-1, format, va);
    11fa:	f107 0108 	add.w	r1, r7, #8
    11fe:	693b      	ldr	r3, [r7, #16]
    1200:	9300      	str	r3, [sp, #0]
    1202:	6a3b      	ldr	r3, [r7, #32]
    1204:	f04f 32ff 	mov.w	r2, #4294967295
    1208:	4805      	ldr	r0, [pc, #20]	; (1220 <fctprintf+0x40>)
    120a:	f7ff fb86 	bl	91a <_vsnprintf>
    120e:	6178      	str	r0, [r7, #20]
  va_end(va);
  return ret;
    1210:	697b      	ldr	r3, [r7, #20]
}
    1212:	4618      	mov	r0, r3
    1214:	3718      	adds	r7, #24
    1216:	46bd      	mov	sp, r7
    1218:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
    121c:	b002      	add	sp, #8
    121e:	4770      	bx	lr
    1220:	0000051d 	.word	0x0000051d

00001224 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
    1224:	b480      	push	{r7}
    1226:	b083      	sub	sp, #12
    1228:	af00      	add	r7, sp, #0
    122a:	4603      	mov	r3, r0
    122c:	6039      	str	r1, [r7, #0]
    122e:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
    1230:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1234:	2b00      	cmp	r3, #0
    1236:	db0a      	blt.n	124e <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    1238:	683b      	ldr	r3, [r7, #0]
    123a:	b2da      	uxtb	r2, r3
    123c:	490c      	ldr	r1, [pc, #48]	; (1270 <__NVIC_SetPriority+0x4c>)
    123e:	f997 3007 	ldrsb.w	r3, [r7, #7]
    1242:	0112      	lsls	r2, r2, #4
    1244:	b2d2      	uxtb	r2, r2
    1246:	440b      	add	r3, r1
    1248:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
    124c:	e00a      	b.n	1264 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    124e:	683b      	ldr	r3, [r7, #0]
    1250:	b2da      	uxtb	r2, r3
    1252:	4908      	ldr	r1, [pc, #32]	; (1274 <__NVIC_SetPriority+0x50>)
    1254:	79fb      	ldrb	r3, [r7, #7]
    1256:	f003 030f 	and.w	r3, r3, #15
    125a:	3b04      	subs	r3, #4
    125c:	0112      	lsls	r2, r2, #4
    125e:	b2d2      	uxtb	r2, r2
    1260:	440b      	add	r3, r1
    1262:	761a      	strb	r2, [r3, #24]
}
    1264:	bf00      	nop
    1266:	370c      	adds	r7, #12
    1268:	46bd      	mov	sp, r7
    126a:	bc80      	pop	{r7}
    126c:	4770      	bx	lr
    126e:	bf00      	nop
    1270:	e000e100 	.word	0xe000e100
    1274:	e000ed00 	.word	0xe000ed00

00001278 <task_entry_1>:
typedef uint32_t tTaskStack;
void task_sched(void);

typedef void (*task_entry_t)(void* param);
void task_entry_1(void* param)
{
    1278:	b580      	push	{r7, lr}
    127a:	b082      	sub	sp, #8
    127c:	af00      	add	r7, sp, #0
    127e:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    1280:	4903      	ldr	r1, [pc, #12]	; (1290 <task_entry_1+0x18>)
    1282:	4804      	ldr	r0, [pc, #16]	; (1294 <task_entry_1+0x1c>)
    1284:	f7ff ff2d 	bl	10e2 <printf_>
        // delay_ms(1000);
        task_sched();
    1288:	f000 f894 	bl	13b4 <task_sched>
        printf("This is %s\n", __func__);
    128c:	e7f8      	b.n	1280 <task_entry_1+0x8>
    128e:	bf00      	nop
    1290:	00002574 	.word	0x00002574
    1294:	00002568 	.word	0x00002568

00001298 <task_entry_2>:
    }
}

void task_entry_2(void* param)
{
    1298:	b580      	push	{r7, lr}
    129a:	b082      	sub	sp, #8
    129c:	af00      	add	r7, sp, #0
    129e:	6078      	str	r0, [r7, #4]
    for(;;) {
        printf("This is %s\n", __func__);
    12a0:	4903      	ldr	r1, [pc, #12]	; (12b0 <task_entry_2+0x18>)
    12a2:	4804      	ldr	r0, [pc, #16]	; (12b4 <task_entry_2+0x1c>)
    12a4:	f7ff ff1d 	bl	10e2 <printf_>
        // delay_ms(1000);
        task_sched();
    12a8:	f000 f884 	bl	13b4 <task_sched>
        printf("This is %s\n", __func__);
    12ac:	e7f8      	b.n	12a0 <task_entry_2+0x8>
    12ae:	bf00      	nop
    12b0:	00002584 	.word	0x00002584
    12b4:	00002568 	.word	0x00002568

000012b8 <trigget_pendsv>:
    }
}

void trigget_pendsv(void)
{
    12b8:	b480      	push	{r7}
    12ba:	af00      	add	r7, sp, #0
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    12bc:	4b04      	ldr	r3, [pc, #16]	; (12d0 <trigget_pendsv+0x18>)
    12be:	685b      	ldr	r3, [r3, #4]
    12c0:	4a03      	ldr	r2, [pc, #12]	; (12d0 <trigget_pendsv+0x18>)
    12c2:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    12c6:	6053      	str	r3, [r2, #4]
}
    12c8:	bf00      	nop
    12ca:	46bd      	mov	sp, r7
    12cc:	bc80      	pop	{r7}
    12ce:	4770      	bx	lr
    12d0:	e000ed00 	.word	0xe000ed00

000012d4 <task_create>:
tTaskStack stack[2][256];
task_t * current_task;
task_t * next_task;

void task_create(task_t * task, task_entry_t entry, void *param, tTaskStack* stack)
{
    12d4:	b480      	push	{r7}
    12d6:	b085      	sub	sp, #20
    12d8:	af00      	add	r7, sp, #0
    12da:	60f8      	str	r0, [r7, #12]
    12dc:	60b9      	str	r1, [r7, #8]
    12de:	607a      	str	r2, [r7, #4]
    12e0:	603b      	str	r3, [r7, #0]
    *(--stack) = (unsigned long)(1<<24);                // XPSR, 设置了Thumb模式，恢复到Thumb状态而非ARM状态运行
    12e2:	683b      	ldr	r3, [r7, #0]
    12e4:	3b04      	subs	r3, #4
    12e6:	603b      	str	r3, [r7, #0]
    12e8:	683b      	ldr	r3, [r7, #0]
    12ea:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
    12ee:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)entry;                  // 程序的入口地址
    12f0:	683b      	ldr	r3, [r7, #0]
    12f2:	3b04      	subs	r3, #4
    12f4:	603b      	str	r3, [r7, #0]
    12f6:	68ba      	ldr	r2, [r7, #8]
    12f8:	683b      	ldr	r3, [r7, #0]
    12fa:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x14;                   // R14(LR), 任务不会通过return xxx结束自己，所以未用
    12fc:	683b      	ldr	r3, [r7, #0]
    12fe:	3b04      	subs	r3, #4
    1300:	603b      	str	r3, [r7, #0]
    1302:	683b      	ldr	r3, [r7, #0]
    1304:	2214      	movs	r2, #20
    1306:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x12;                   // R12, 未用
    1308:	683b      	ldr	r3, [r7, #0]
    130a:	3b04      	subs	r3, #4
    130c:	603b      	str	r3, [r7, #0]
    130e:	683b      	ldr	r3, [r7, #0]
    1310:	2212      	movs	r2, #18
    1312:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x3;                    // R3, 未用
    1314:	683b      	ldr	r3, [r7, #0]
    1316:	3b04      	subs	r3, #4
    1318:	603b      	str	r3, [r7, #0]
    131a:	683b      	ldr	r3, [r7, #0]
    131c:	2203      	movs	r2, #3
    131e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x2;                    // R2, 未用
    1320:	683b      	ldr	r3, [r7, #0]
    1322:	3b04      	subs	r3, #4
    1324:	603b      	str	r3, [r7, #0]
    1326:	683b      	ldr	r3, [r7, #0]
    1328:	2202      	movs	r2, #2
    132a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x1;                    // R1, 未用
    132c:	683b      	ldr	r3, [r7, #0]
    132e:	3b04      	subs	r3, #4
    1330:	603b      	str	r3, [r7, #0]
    1332:	683b      	ldr	r3, [r7, #0]
    1334:	2201      	movs	r2, #1
    1336:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)param;                  // R0 = param, 传给任务的入口函数
    1338:	683b      	ldr	r3, [r7, #0]
    133a:	3b04      	subs	r3, #4
    133c:	603b      	str	r3, [r7, #0]
    133e:	687a      	ldr	r2, [r7, #4]
    1340:	683b      	ldr	r3, [r7, #0]
    1342:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x11;                   // R11, 未用
    1344:	683b      	ldr	r3, [r7, #0]
    1346:	3b04      	subs	r3, #4
    1348:	603b      	str	r3, [r7, #0]
    134a:	683b      	ldr	r3, [r7, #0]
    134c:	2211      	movs	r2, #17
    134e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x10;                   // R10, 未用
    1350:	683b      	ldr	r3, [r7, #0]
    1352:	3b04      	subs	r3, #4
    1354:	603b      	str	r3, [r7, #0]
    1356:	683b      	ldr	r3, [r7, #0]
    1358:	2210      	movs	r2, #16
    135a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x9;                    // R9, 未用
    135c:	683b      	ldr	r3, [r7, #0]
    135e:	3b04      	subs	r3, #4
    1360:	603b      	str	r3, [r7, #0]
    1362:	683b      	ldr	r3, [r7, #0]
    1364:	2209      	movs	r2, #9
    1366:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x8;                    // R8, 未用
    1368:	683b      	ldr	r3, [r7, #0]
    136a:	3b04      	subs	r3, #4
    136c:	603b      	str	r3, [r7, #0]
    136e:	683b      	ldr	r3, [r7, #0]
    1370:	2208      	movs	r2, #8
    1372:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x7;                    // R7, 未用
    1374:	683b      	ldr	r3, [r7, #0]
    1376:	3b04      	subs	r3, #4
    1378:	603b      	str	r3, [r7, #0]
    137a:	683b      	ldr	r3, [r7, #0]
    137c:	2207      	movs	r2, #7
    137e:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x6;                    // R6, 未用
    1380:	683b      	ldr	r3, [r7, #0]
    1382:	3b04      	subs	r3, #4
    1384:	603b      	str	r3, [r7, #0]
    1386:	683b      	ldr	r3, [r7, #0]
    1388:	2206      	movs	r2, #6
    138a:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x5;                    // R5, 未用
    138c:	683b      	ldr	r3, [r7, #0]
    138e:	3b04      	subs	r3, #4
    1390:	603b      	str	r3, [r7, #0]
    1392:	683b      	ldr	r3, [r7, #0]
    1394:	2205      	movs	r2, #5
    1396:	601a      	str	r2, [r3, #0]
    *(--stack) = (unsigned long)0x4;                    // R4, 未用
    1398:	683b      	ldr	r3, [r7, #0]
    139a:	3b04      	subs	r3, #4
    139c:	603b      	str	r3, [r7, #0]
    139e:	683b      	ldr	r3, [r7, #0]
    13a0:	2204      	movs	r2, #4
    13a2:	601a      	str	r2, [r3, #0]
    task->stack = stack;
    13a4:	68fb      	ldr	r3, [r7, #12]
    13a6:	683a      	ldr	r2, [r7, #0]
    13a8:	601a      	str	r2, [r3, #0]
}
    13aa:	bf00      	nop
    13ac:	3714      	adds	r7, #20
    13ae:	46bd      	mov	sp, r7
    13b0:	bc80      	pop	{r7}
    13b2:	4770      	bx	lr

000013b4 <task_sched>:

void task_sched(void)
{
    13b4:	b580      	push	{r7, lr}
    13b6:	af00      	add	r7, sp, #0
    if (current_task == &task1) {
    13b8:	4b07      	ldr	r3, [pc, #28]	; (13d8 <task_sched+0x24>)
    13ba:	681b      	ldr	r3, [r3, #0]
    13bc:	4a07      	ldr	r2, [pc, #28]	; (13dc <task_sched+0x28>)
    13be:	4293      	cmp	r3, r2
    13c0:	d103      	bne.n	13ca <task_sched+0x16>
        next_task = &task2;
    13c2:	4b07      	ldr	r3, [pc, #28]	; (13e0 <task_sched+0x2c>)
    13c4:	4a07      	ldr	r2, [pc, #28]	; (13e4 <task_sched+0x30>)
    13c6:	601a      	str	r2, [r3, #0]
    13c8:	e002      	b.n	13d0 <task_sched+0x1c>
    } else {
        next_task = &task1;
    13ca:	4b05      	ldr	r3, [pc, #20]	; (13e0 <task_sched+0x2c>)
    13cc:	4a03      	ldr	r2, [pc, #12]	; (13dc <task_sched+0x28>)
    13ce:	601a      	str	r2, [r3, #0]
    }
    trigget_pendsv();
    13d0:	f7ff ff72 	bl	12b8 <trigget_pendsv>
}
    13d4:	bf00      	nop
    13d6:	bd80      	pop	{r7, pc}
    13d8:	20000940 	.word	0x20000940
    13dc:	20000938 	.word	0x20000938
    13e0:	20000134 	.word	0x20000134
    13e4:	2000093c 	.word	0x2000093c

000013e8 <run_first_task>:

void run_first_task(void)
{
    13e8:	b580      	push	{r7, lr}
    13ea:	b082      	sub	sp, #8
    13ec:	af00      	add	r7, sp, #0
    13ee:	2300      	movs	r3, #0
    13f0:	607b      	str	r3, [r7, #4]
  __ASM volatile ("MSR psp, %0" : : "r" (topOfProcStack) : );
    13f2:	687b      	ldr	r3, [r7, #4]
    13f4:	f383 8809 	msr	PSP, r3
    __set_PSP(0);
    NVIC_SetPriority(PendSV_IRQn, 0xFF);//将pendsv优先级配置为最低
    13f8:	21ff      	movs	r1, #255	; 0xff
    13fa:	f06f 0001 	mvn.w	r0, #1
    13fe:	f7ff ff11 	bl	1224 <__NVIC_SetPriority>
    SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    1402:	4b05      	ldr	r3, [pc, #20]	; (1418 <run_first_task+0x30>)
    1404:	685b      	ldr	r3, [r3, #4]
    1406:	4a04      	ldr	r2, [pc, #16]	; (1418 <run_first_task+0x30>)
    1408:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
    140c:	6053      	str	r3, [r2, #4]
}
    140e:	bf00      	nop
    1410:	3708      	adds	r7, #8
    1412:	46bd      	mov	sp, r7
    1414:	bd80      	pop	{r7, pc}
    1416:	bf00      	nop
    1418:	e000ed00 	.word	0xe000ed00

0000141c <task_start>:

void task_start(void)
{
    141c:	b580      	push	{r7, lr}
    141e:	af00      	add	r7, sp, #0
    task_create(&task1, task_entry_1, (void*)0x11111111, &stack[0]);
    1420:	4b0a      	ldr	r3, [pc, #40]	; (144c <task_start+0x30>)
    1422:	f04f 3211 	mov.w	r2, #286331153	; 0x11111111
    1426:	490a      	ldr	r1, [pc, #40]	; (1450 <task_start+0x34>)
    1428:	480a      	ldr	r0, [pc, #40]	; (1454 <task_start+0x38>)
    142a:	f7ff ff53 	bl	12d4 <task_create>
    task_create(&task2, task_entry_2, (void*)0x22222222, &stack[1]);
    142e:	4b0a      	ldr	r3, [pc, #40]	; (1458 <task_start+0x3c>)
    1430:	f04f 3222 	mov.w	r2, #572662306	; 0x22222222
    1434:	4909      	ldr	r1, [pc, #36]	; (145c <task_start+0x40>)
    1436:	480a      	ldr	r0, [pc, #40]	; (1460 <task_start+0x44>)
    1438:	f7ff ff4c 	bl	12d4 <task_create>
    current_task = &task1;
    143c:	4b09      	ldr	r3, [pc, #36]	; (1464 <task_start+0x48>)
    143e:	4a05      	ldr	r2, [pc, #20]	; (1454 <task_start+0x38>)
    1440:	601a      	str	r2, [r3, #0]
    
    run_first_task();
    1442:	f7ff ffd1 	bl	13e8 <run_first_task>
}
    1446:	bf00      	nop
    1448:	bd80      	pop	{r7, pc}
    144a:	bf00      	nop
    144c:	20000138 	.word	0x20000138
    1450:	00001279 	.word	0x00001279
    1454:	20000938 	.word	0x20000938
    1458:	20000538 	.word	0x20000538
    145c:	00001299 	.word	0x00001299
    1460:	2000093c 	.word	0x2000093c
    1464:	20000940 	.word	0x20000940

00001468 <shell_get_line>:
#include <string.h>
#include "shell.h"
#include "hal.h"

uint8_t shell_get_line(char *line, uint8_t max_len)
{
    1468:	b580      	push	{r7, lr}
    146a:	b084      	sub	sp, #16
    146c:	af00      	add	r7, sp, #0
    146e:	6078      	str	r0, [r7, #4]
    1470:	460b      	mov	r3, r1
    1472:	70fb      	strb	r3, [r7, #3]
    char chr;
    static uint8_t count = 0;
    lite_getchar(&chr);
    1474:	f107 030f 	add.w	r3, r7, #15
    1478:	4618      	mov	r0, r3
    147a:	f7fe fe8e 	bl	19a <lite_getchar>
    {
        if (count >= max_len)
    147e:	4b22      	ldr	r3, [pc, #136]	; (1508 <shell_get_line+0xa0>)
    1480:	781b      	ldrb	r3, [r3, #0]
    1482:	78fa      	ldrb	r2, [r7, #3]
    1484:	429a      	cmp	r2, r3
    1486:	d804      	bhi.n	1492 <shell_get_line+0x2a>
        {
            count = 0;
    1488:	4b1f      	ldr	r3, [pc, #124]	; (1508 <shell_get_line+0xa0>)
    148a:	2200      	movs	r2, #0
    148c:	701a      	strb	r2, [r3, #0]
            return 1;
    148e:	2301      	movs	r3, #1
    1490:	e036      	b.n	1500 <shell_get_line+0x98>
        }
        line[count] = chr;
    1492:	4b1d      	ldr	r3, [pc, #116]	; (1508 <shell_get_line+0xa0>)
    1494:	781b      	ldrb	r3, [r3, #0]
    1496:	461a      	mov	r2, r3
    1498:	687b      	ldr	r3, [r7, #4]
    149a:	4413      	add	r3, r2
    149c:	7bfa      	ldrb	r2, [r7, #15]
    149e:	701a      	strb	r2, [r3, #0]
        switch (chr)
    14a0:	7bfb      	ldrb	r3, [r7, #15]
    14a2:	2b0a      	cmp	r3, #10
    14a4:	d013      	beq.n	14ce <shell_get_line+0x66>
    14a6:	2b0a      	cmp	r3, #10
    14a8:	dc02      	bgt.n	14b0 <shell_get_line+0x48>
    14aa:	2b08      	cmp	r3, #8
    14ac:	d004      	beq.n	14b8 <shell_get_line+0x50>
    14ae:	e01a      	b.n	14e6 <shell_get_line+0x7e>
    14b0:	2b0d      	cmp	r3, #13
    14b2:	d00c      	beq.n	14ce <shell_get_line+0x66>
    14b4:	2b7f      	cmp	r3, #127	; 0x7f
    14b6:	d116      	bne.n	14e6 <shell_get_line+0x7e>
        {
        case 0x08:
        case 0x7F:
        {
            if (count > 0)
    14b8:	4b13      	ldr	r3, [pc, #76]	; (1508 <shell_get_line+0xa0>)
    14ba:	781b      	ldrb	r3, [r3, #0]
    14bc:	2b00      	cmp	r3, #0
    14be:	d019      	beq.n	14f4 <shell_get_line+0x8c>
            {
                count--;
    14c0:	4b11      	ldr	r3, [pc, #68]	; (1508 <shell_get_line+0xa0>)
    14c2:	781b      	ldrb	r3, [r3, #0]
    14c4:	3b01      	subs	r3, #1
    14c6:	b2da      	uxtb	r2, r3
    14c8:	4b0f      	ldr	r3, [pc, #60]	; (1508 <shell_get_line+0xa0>)
    14ca:	701a      	strb	r2, [r3, #0]
            }
        }
        break;
    14cc:	e012      	b.n	14f4 <shell_get_line+0x8c>

        case '\r':
        case '\n':
        {
            line[count] = '\0';
    14ce:	4b0e      	ldr	r3, [pc, #56]	; (1508 <shell_get_line+0xa0>)
    14d0:	781b      	ldrb	r3, [r3, #0]
    14d2:	461a      	mov	r2, r3
    14d4:	687b      	ldr	r3, [r7, #4]
    14d6:	4413      	add	r3, r2
    14d8:	2200      	movs	r2, #0
    14da:	701a      	strb	r2, [r3, #0]
            count = 0;
    14dc:	4b0a      	ldr	r3, [pc, #40]	; (1508 <shell_get_line+0xa0>)
    14de:	2200      	movs	r2, #0
    14e0:	701a      	strb	r2, [r3, #0]
            return 1;
    14e2:	2301      	movs	r3, #1
    14e4:	e00c      	b.n	1500 <shell_get_line+0x98>
        }
        break;

        default:
            count++;
    14e6:	4b08      	ldr	r3, [pc, #32]	; (1508 <shell_get_line+0xa0>)
    14e8:	781b      	ldrb	r3, [r3, #0]
    14ea:	3301      	adds	r3, #1
    14ec:	b2da      	uxtb	r2, r3
    14ee:	4b06      	ldr	r3, [pc, #24]	; (1508 <shell_get_line+0xa0>)
    14f0:	701a      	strb	r2, [r3, #0]
    14f2:	e000      	b.n	14f6 <shell_get_line+0x8e>
        break;
    14f4:	bf00      	nop
        }
        lite_putchar(chr);
    14f6:	7bfb      	ldrb	r3, [r7, #15]
    14f8:	4618      	mov	r0, r3
    14fa:	f7fe fe60 	bl	1be <lite_putchar>
    }
    return 0;
    14fe:	2300      	movs	r3, #0
}
    1500:	4618      	mov	r0, r3
    1502:	3710      	adds	r7, #16
    1504:	46bd      	mov	sp, r7
    1506:	bd80      	pop	{r7, pc}
    1508:	2000005c 	.word	0x2000005c

0000150c <shell_get_args>:

uint8_t shell_get_args(char *line, char *args[], uint8_t args_len)
{
    150c:	b580      	push	{r7, lr}
    150e:	b088      	sub	sp, #32
    1510:	af00      	add	r7, sp, #0
    1512:	60f8      	str	r0, [r7, #12]
    1514:	60b9      	str	r1, [r7, #8]
    1516:	4613      	mov	r3, r2
    1518:	71fb      	strb	r3, [r7, #7]
    uint8_t i, ret;
    char *ptr = NULL;
    151a:	2300      	movs	r3, #0
    151c:	61bb      	str	r3, [r7, #24]
    ptr = strtok(line, " ");
    151e:	4912      	ldr	r1, [pc, #72]	; (1568 <shell_get_args+0x5c>)
    1520:	68f8      	ldr	r0, [r7, #12]
    1522:	f000 f8a1 	bl	1668 <strtok>
    1526:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1528:	2300      	movs	r3, #0
    152a:	77fb      	strb	r3, [r7, #31]
    152c:	e00d      	b.n	154a <shell_get_args+0x3e>
    {
        args[i] = ptr;
    152e:	7ffb      	ldrb	r3, [r7, #31]
    1530:	009b      	lsls	r3, r3, #2
    1532:	68ba      	ldr	r2, [r7, #8]
    1534:	4413      	add	r3, r2
    1536:	69ba      	ldr	r2, [r7, #24]
    1538:	601a      	str	r2, [r3, #0]
        ptr = strtok(NULL, ",");
    153a:	490c      	ldr	r1, [pc, #48]	; (156c <shell_get_args+0x60>)
    153c:	2000      	movs	r0, #0
    153e:	f000 f893 	bl	1668 <strtok>
    1542:	61b8      	str	r0, [r7, #24]
    for (i = 0; ptr != NULL && i < args_len; i++)
    1544:	7ffb      	ldrb	r3, [r7, #31]
    1546:	3301      	adds	r3, #1
    1548:	77fb      	strb	r3, [r7, #31]
    154a:	69bb      	ldr	r3, [r7, #24]
    154c:	2b00      	cmp	r3, #0
    154e:	d003      	beq.n	1558 <shell_get_args+0x4c>
    1550:	7ffa      	ldrb	r2, [r7, #31]
    1552:	79fb      	ldrb	r3, [r7, #7]
    1554:	429a      	cmp	r2, r3
    1556:	d3ea      	bcc.n	152e <shell_get_args+0x22>
    }
    ret = i;
    1558:	7ffb      	ldrb	r3, [r7, #31]
    155a:	75fb      	strb	r3, [r7, #23]
    return ret;
    155c:	7dfb      	ldrb	r3, [r7, #23]
}
    155e:	4618      	mov	r0, r3
    1560:	3720      	adds	r7, #32
    1562:	46bd      	mov	sp, r7
    1564:	bd80      	pop	{r7, pc}
    1566:	bf00      	nop
    1568:	00002594 	.word	0x00002594
    156c:	00002598 	.word	0x00002598

00001570 <shell_help_func>:

typedef shell_command_t *shell_command_pointer_t;

int shell_help_func(int argc, char **argv)
{
    1570:	b580      	push	{r7, lr}
    1572:	b084      	sub	sp, #16
    1574:	af00      	add	r7, sp, #0
    1576:	6078      	str	r0, [r7, #4]
    1578:	6039      	str	r1, [r7, #0]
    shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    157a:	4b0b      	ldr	r3, [pc, #44]	; (15a8 <shell_help_func+0x38>)
    157c:	60fb      	str	r3, [r7, #12]
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    157e:	e00a      	b.n	1596 <shell_help_func+0x26>
    {
        printf("[%s] %s\n", shell_command->name, shell_command->type);
    1580:	68fb      	ldr	r3, [r7, #12]
    1582:	6819      	ldr	r1, [r3, #0]
    1584:	68fb      	ldr	r3, [r7, #12]
    1586:	685b      	ldr	r3, [r3, #4]
    1588:	461a      	mov	r2, r3
    158a:	4808      	ldr	r0, [pc, #32]	; (15ac <shell_help_func+0x3c>)
    158c:	f7ff fda9 	bl	10e2 <printf_>
    for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1590:	68fb      	ldr	r3, [r7, #12]
    1592:	330c      	adds	r3, #12
    1594:	60fb      	str	r3, [r7, #12]
    1596:	68fb      	ldr	r3, [r7, #12]
    1598:	4a05      	ldr	r2, [pc, #20]	; (15b0 <shell_help_func+0x40>)
    159a:	4293      	cmp	r3, r2
    159c:	d3f0      	bcc.n	1580 <shell_help_func+0x10>
    }
    return 0;
    159e:	2300      	movs	r3, #0
}
    15a0:	4618      	mov	r0, r3
    15a2:	3710      	adds	r7, #16
    15a4:	46bd      	mov	sp, r7
    15a6:	bd80      	pop	{r7, pc}
    15a8:	00002544 	.word	0x00002544
    15ac:	0000259c 	.word	0x0000259c
    15b0:	00003418 	.word	0x00003418

000015b4 <strtok_r>:
#ifdef NOSTDLIB_ENABLE
/*NetBSD的方法是节约了空间，牺牲了时间(它的时间复杂度为N2)
而微软的方法是节约了时间(它的时间复杂度为N)，牺牲了空间(开了一个32个8位的空间）*/
#if 1 //freebsd
char*  strtok_r(char* string_org,const char* demial,char** last)
{
    15b4:	b480      	push	{r7}
    15b6:	b089      	sub	sp, #36	; 0x24
    15b8:	af00      	add	r7, sp, #0
    15ba:	60f8      	str	r0, [r7, #12]
    15bc:	60b9      	str	r1, [r7, #8]
    15be:	607a      	str	r2, [r7, #4]
const char* spanp; //span表示分隔，p表示指针
char c, sc; //c表示char字符，sc表示 span char
char* tok;  //token表示分隔的段
 
//当开始结尾都为NULL的时候，说明没有字符被查找，所以返回NULL
if (string_org == NULL  && (string_org = *last) == NULL)
    15c0:	68fb      	ldr	r3, [r7, #12]
    15c2:	2b00      	cmp	r3, #0
    15c4:	d107      	bne.n	15d6 <strtok_r+0x22>
    15c6:	687b      	ldr	r3, [r7, #4]
    15c8:	681b      	ldr	r3, [r3, #0]
    15ca:	60fb      	str	r3, [r7, #12]
    15cc:	68fb      	ldr	r3, [r7, #12]
    15ce:	2b00      	cmp	r3, #0
    15d0:	d101      	bne.n	15d6 <strtok_r+0x22>
    {
    return (NULL);
    15d2:	2300      	movs	r3, #0
    15d4:	e043      	b.n	165e <strtok_r+0xaa>
    }
 
//由goto组成的循环是在扫描字符串的时候，当遇到所需要匹配的字符时，略过这个字符。        
count:
    15d6:	bf00      	nop
c = *string_org++;
    15d8:	68fb      	ldr	r3, [r7, #12]
    15da:	1c5a      	adds	r2, r3, #1
    15dc:	60fa      	str	r2, [r7, #12]
    15de:	781b      	ldrb	r3, [r3, #0]
    15e0:	76fb      	strb	r3, [r7, #27]
    
for (spanp = demial; (sc = *spanp++) != 0; )
    15e2:	68bb      	ldr	r3, [r7, #8]
    15e4:	61fb      	str	r3, [r7, #28]
    15e6:	e004      	b.n	15f2 <strtok_r+0x3e>
    {
    if (c == sc)
    15e8:	7efa      	ldrb	r2, [r7, #27]
    15ea:	7ebb      	ldrb	r3, [r7, #26]
    15ec:	429a      	cmp	r2, r3
    15ee:	d100      	bne.n	15f2 <strtok_r+0x3e>
        {
        goto count;
    15f0:	e7f2      	b.n	15d8 <strtok_r+0x24>
for (spanp = demial; (sc = *spanp++) != 0; )
    15f2:	69fb      	ldr	r3, [r7, #28]
    15f4:	1c5a      	adds	r2, r3, #1
    15f6:	61fa      	str	r2, [r7, #28]
    15f8:	781b      	ldrb	r3, [r3, #0]
    15fa:	76bb      	strb	r3, [r7, #26]
    15fc:	7ebb      	ldrb	r3, [r7, #26]
    15fe:	2b00      	cmp	r3, #0
    1600:	d1f2      	bne.n	15e8 <strtok_r+0x34>
        }
    }
 
//下一个字符为0，则表示到达了搜索结果，把last置为NULL，并返回NULL            
if (c == 0)
    1602:	7efb      	ldrb	r3, [r7, #27]
    1604:	2b00      	cmp	r3, #0
    1606:	d104      	bne.n	1612 <strtok_r+0x5e>
    {
    *last = NULL;
    1608:	687b      	ldr	r3, [r7, #4]
    160a:	2200      	movs	r2, #0
    160c:	601a      	str	r2, [r3, #0]
    return (NULL);
    160e:	2300      	movs	r3, #0
    1610:	e025      	b.n	165e <strtok_r+0xaa>
    }
 
//把原始的字符串指针回退。            
tok = string_org -1;
    1612:	68fb      	ldr	r3, [r7, #12]
    1614:	3b01      	subs	r3, #1
    1616:	617b      	str	r3, [r7, #20]
 
//开始扫描字符串中是否含有要匹配的字符，之后把这个匹配字符之前的部分返回。
//这看似是个无限循环，但当源字符串和匹配字符串都走到结尾时，也就是string_org和sc都为NULL时，最外层循环最后会走到return(tok)结束循环。
for (;;)
    {
    c = *string_org++;
    1618:	68fb      	ldr	r3, [r7, #12]
    161a:	1c5a      	adds	r2, r3, #1
    161c:	60fa      	str	r2, [r7, #12]
    161e:	781b      	ldrb	r3, [r3, #0]
    1620:	76fb      	strb	r3, [r7, #27]
    spanp = demial;
    1622:	68bb      	ldr	r3, [r7, #8]
    1624:	61fb      	str	r3, [r7, #28]
    
    do 
        {
        if ((sc = *spanp++) == c) 
    1626:	69fb      	ldr	r3, [r7, #28]
    1628:	1c5a      	adds	r2, r3, #1
    162a:	61fa      	str	r2, [r7, #28]
    162c:	781b      	ldrb	r3, [r3, #0]
    162e:	76bb      	strb	r3, [r7, #26]
    1630:	7eba      	ldrb	r2, [r7, #26]
    1632:	7efb      	ldrb	r3, [r7, #27]
    1634:	429a      	cmp	r2, r3
    1636:	d10e      	bne.n	1656 <strtok_r+0xa2>
            {
            if (c == 0)
    1638:	7efb      	ldrb	r3, [r7, #27]
    163a:	2b00      	cmp	r3, #0
    163c:	d102      	bne.n	1644 <strtok_r+0x90>
                {
                string_org = NULL;
    163e:	2300      	movs	r3, #0
    1640:	60fb      	str	r3, [r7, #12]
    1642:	e003      	b.n	164c <strtok_r+0x98>
                }
            else
                {
                string_org[-1] = 0;
    1644:	68fb      	ldr	r3, [r7, #12]
    1646:	3b01      	subs	r3, #1
    1648:	2200      	movs	r2, #0
    164a:	701a      	strb	r2, [r3, #0]
                }
            *last = string_org;
    164c:	687b      	ldr	r3, [r7, #4]
    164e:	68fa      	ldr	r2, [r7, #12]
    1650:	601a      	str	r2, [r3, #0]
            return (tok);
    1652:	697b      	ldr	r3, [r7, #20]
    1654:	e003      	b.n	165e <strtok_r+0xaa>
            }
        } while (sc != 0);
    1656:	7ebb      	ldrb	r3, [r7, #26]
    1658:	2b00      	cmp	r3, #0
    165a:	d1e4      	bne.n	1626 <strtok_r+0x72>
    c = *string_org++;
    165c:	e7dc      	b.n	1618 <strtok_r+0x64>
    }
    
}
    165e:	4618      	mov	r0, r3
    1660:	3724      	adds	r7, #36	; 0x24
    1662:	46bd      	mov	sp, r7
    1664:	bc80      	pop	{r7}
    1666:	4770      	bx	lr

00001668 <strtok>:
    }
}
#endif
//把last设置为一个静态局部变量来保存余下内容的地址。
char * strtok(char *s, const char *delim)
{
    1668:	b580      	push	{r7, lr}
    166a:	b082      	sub	sp, #8
    166c:	af00      	add	r7, sp, #0
    166e:	6078      	str	r0, [r7, #4]
    1670:	6039      	str	r1, [r7, #0]
    static char *lasts;

    return strtok_r(s, delim, &lasts);
    1672:	4a05      	ldr	r2, [pc, #20]	; (1688 <strtok+0x20>)
    1674:	6839      	ldr	r1, [r7, #0]
    1676:	6878      	ldr	r0, [r7, #4]
    1678:	f7ff ff9c 	bl	15b4 <strtok_r>
    167c:	4603      	mov	r3, r0
}
    167e:	4618      	mov	r0, r3
    1680:	3708      	adds	r7, #8
    1682:	46bd      	mov	sp, r7
    1684:	bd80      	pop	{r7, pc}
    1686:	bf00      	nop
    1688:	20000060 	.word	0x20000060

0000168c <memcpy>:
void *memcpy(void *dest, const void *src, size_t n)
{
    168c:	b480      	push	{r7}
    168e:	b087      	sub	sp, #28
    1690:	af00      	add	r7, sp, #0
    1692:	60f8      	str	r0, [r7, #12]
    1694:	60b9      	str	r1, [r7, #8]
    1696:	607a      	str	r2, [r7, #4]
	if (NULL == dest || NULL == src || n < 0)
    1698:	68fb      	ldr	r3, [r7, #12]
    169a:	2b00      	cmp	r3, #0
    169c:	d002      	beq.n	16a4 <memcpy+0x18>
    169e:	68bb      	ldr	r3, [r7, #8]
    16a0:	2b00      	cmp	r3, #0
    16a2:	d101      	bne.n	16a8 <memcpy+0x1c>
		return NULL;
    16a4:	2300      	movs	r3, #0
    16a6:	e012      	b.n	16ce <memcpy+0x42>
	char *tempDest = (char *)dest;
    16a8:	68fb      	ldr	r3, [r7, #12]
    16aa:	617b      	str	r3, [r7, #20]
	char *tempSrc = (char *)src;
    16ac:	68bb      	ldr	r3, [r7, #8]
    16ae:	613b      	str	r3, [r7, #16]
 
	while (n-- > 0)
    16b0:	e007      	b.n	16c2 <memcpy+0x36>
		*tempDest++ = *tempSrc++;
    16b2:	693a      	ldr	r2, [r7, #16]
    16b4:	1c53      	adds	r3, r2, #1
    16b6:	613b      	str	r3, [r7, #16]
    16b8:	697b      	ldr	r3, [r7, #20]
    16ba:	1c59      	adds	r1, r3, #1
    16bc:	6179      	str	r1, [r7, #20]
    16be:	7812      	ldrb	r2, [r2, #0]
    16c0:	701a      	strb	r2, [r3, #0]
	while (n-- > 0)
    16c2:	687b      	ldr	r3, [r7, #4]
    16c4:	1e5a      	subs	r2, r3, #1
    16c6:	607a      	str	r2, [r7, #4]
    16c8:	2b00      	cmp	r3, #0
    16ca:	d1f2      	bne.n	16b2 <memcpy+0x26>
	return dest;	
    16cc:	68fb      	ldr	r3, [r7, #12]
}
    16ce:	4618      	mov	r0, r3
    16d0:	371c      	adds	r7, #28
    16d2:	46bd      	mov	sp, r7
    16d4:	bc80      	pop	{r7}
    16d6:	4770      	bx	lr

000016d8 <memset>:
void *memset(void *s, int c, size_t n)
{
    16d8:	b480      	push	{r7}
    16da:	b087      	sub	sp, #28
    16dc:	af00      	add	r7, sp, #0
    16de:	60f8      	str	r0, [r7, #12]
    16e0:	60b9      	str	r1, [r7, #8]
    16e2:	607a      	str	r2, [r7, #4]
	if (NULL == s || n < 0)
    16e4:	68fb      	ldr	r3, [r7, #12]
    16e6:	2b00      	cmp	r3, #0
    16e8:	d101      	bne.n	16ee <memset+0x16>
		return NULL;
    16ea:	2300      	movs	r3, #0
    16ec:	e00e      	b.n	170c <memset+0x34>
	char * tmpS = (char *)s;
    16ee:	68fb      	ldr	r3, [r7, #12]
    16f0:	617b      	str	r3, [r7, #20]
	while(n-- > 0)
    16f2:	e005      	b.n	1700 <memset+0x28>
		*tmpS++ = c;
    16f4:	697b      	ldr	r3, [r7, #20]
    16f6:	1c5a      	adds	r2, r3, #1
    16f8:	617a      	str	r2, [r7, #20]
    16fa:	68ba      	ldr	r2, [r7, #8]
    16fc:	b2d2      	uxtb	r2, r2
    16fe:	701a      	strb	r2, [r3, #0]
	while(n-- > 0)
    1700:	687b      	ldr	r3, [r7, #4]
    1702:	1e5a      	subs	r2, r3, #1
    1704:	607a      	str	r2, [r7, #4]
    1706:	2b00      	cmp	r3, #0
    1708:	d1f4      	bne.n	16f4 <memset+0x1c>
		return s; 
    170a:	68fb      	ldr	r3, [r7, #12]
}
    170c:	4618      	mov	r0, r3
    170e:	371c      	adds	r7, #28
    1710:	46bd      	mov	sp, r7
    1712:	bc80      	pop	{r7}
    1714:	4770      	bx	lr

00001716 <strcmp>:
int strcmp(const char* str1, const char* str2)
{
    1716:	b480      	push	{r7}
    1718:	b085      	sub	sp, #20
    171a:	af00      	add	r7, sp, #0
    171c:	6078      	str	r0, [r7, #4]
    171e:	6039      	str	r1, [r7, #0]
	int ret = 0;
    1720:	2300      	movs	r3, #0
    1722:	60fb      	str	r3, [r7, #12]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1724:	e005      	b.n	1732 <strcmp+0x1c>
	{
		str1++;
    1726:	687b      	ldr	r3, [r7, #4]
    1728:	3301      	adds	r3, #1
    172a:	607b      	str	r3, [r7, #4]
		str2++;
    172c:	683b      	ldr	r3, [r7, #0]
    172e:	3301      	adds	r3, #1
    1730:	603b      	str	r3, [r7, #0]
	while(!(ret=*(unsigned char*)str1-*(unsigned char*)str2) && *str1)
    1732:	687b      	ldr	r3, [r7, #4]
    1734:	781b      	ldrb	r3, [r3, #0]
    1736:	461a      	mov	r2, r3
    1738:	683b      	ldr	r3, [r7, #0]
    173a:	781b      	ldrb	r3, [r3, #0]
    173c:	1ad3      	subs	r3, r2, r3
    173e:	60fb      	str	r3, [r7, #12]
    1740:	68fb      	ldr	r3, [r7, #12]
    1742:	2b00      	cmp	r3, #0
    1744:	d103      	bne.n	174e <strcmp+0x38>
    1746:	687b      	ldr	r3, [r7, #4]
    1748:	781b      	ldrb	r3, [r3, #0]
    174a:	2b00      	cmp	r3, #0
    174c:	d1eb      	bne.n	1726 <strcmp+0x10>
	}
 
 
	if (ret < 0)
    174e:	68fb      	ldr	r3, [r7, #12]
    1750:	2b00      	cmp	r3, #0
    1752:	da02      	bge.n	175a <strcmp+0x44>
	{
		return -1;
    1754:	f04f 33ff 	mov.w	r3, #4294967295
    1758:	e005      	b.n	1766 <strcmp+0x50>
	}
	else if (ret > 0)
    175a:	68fb      	ldr	r3, [r7, #12]
    175c:	2b00      	cmp	r3, #0
    175e:	dd01      	ble.n	1764 <strcmp+0x4e>
	{
		return 1;
    1760:	2301      	movs	r3, #1
    1762:	e000      	b.n	1766 <strcmp+0x50>
	}
	return 0;
    1764:	2300      	movs	r3, #0
}
    1766:	4618      	mov	r0, r3
    1768:	3714      	adds	r7, #20
    176a:	46bd      	mov	sp, r7
    176c:	bc80      	pop	{r7}
    176e:	4770      	bx	lr

00001770 <shell_main>:
#endif
void shell_main(void)
{
    1770:	b580      	push	{r7, lr}
    1772:	b0c2      	sub	sp, #264	; 0x108
    1774:	af00      	add	r7, sp, #0
#define MAX_SHELL_ARGS 32
#define MAX_SHELL_LINE_LENGTH 128
    char line[MAX_SHELL_LINE_LENGTH] = {0};
    1776:	f107 0380 	add.w	r3, r7, #128	; 0x80
    177a:	2280      	movs	r2, #128	; 0x80
    177c:	2100      	movs	r1, #0
    177e:	4618      	mov	r0, r3
    1780:	f7ff ffaa 	bl	16d8 <memset>
    char *shell_args[MAX_SHELL_ARGS] = {0};
    1784:	463b      	mov	r3, r7
    1786:	4618      	mov	r0, r3
    1788:	2380      	movs	r3, #128	; 0x80
    178a:	461a      	mov	r2, r3
    178c:	2100      	movs	r1, #0
    178e:	f7ff ffa3 	bl	16d8 <memset>

    uint8_t args_count = 0;
    1792:	2300      	movs	r3, #0
    1794:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
    while (1)
    {
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    1798:	f107 0380 	add.w	r3, r7, #128	; 0x80
    179c:	2180      	movs	r1, #128	; 0x80
    179e:	4618      	mov	r0, r3
    17a0:	f7ff fe62 	bl	1468 <shell_get_line>
    17a4:	4603      	mov	r3, r0
    17a6:	2b00      	cmp	r3, #0
    17a8:	d0f6      	beq.n	1798 <shell_main+0x28>
        {
            printf("\n");
    17aa:	4827      	ldr	r0, [pc, #156]	; (1848 <shell_main+0xd8>)
    17ac:	f7ff fc99 	bl	10e2 <printf_>
            args_count = shell_get_args(line, shell_args, MAX_SHELL_ARGS);
    17b0:	4639      	mov	r1, r7
    17b2:	f107 0380 	add.w	r3, r7, #128	; 0x80
    17b6:	2220      	movs	r2, #32
    17b8:	4618      	mov	r0, r3
    17ba:	f7ff fea7 	bl	150c <shell_get_args>
    17be:	4603      	mov	r3, r0
    17c0:	f887 3103 	strb.w	r3, [r7, #259]	; 0x103
            if (args_count > 0)
    17c4:	f897 3103 	ldrb.w	r3, [r7, #259]	; 0x103
    17c8:	2b00      	cmp	r3, #0
    17ca:	d033      	beq.n	1834 <shell_main+0xc4>
            {
                shell_command_pointer_t shell_command = (shell_command_pointer_t)&__shell_command_start;
    17cc:	4b1f      	ldr	r3, [pc, #124]	; (184c <shell_main+0xdc>)
    17ce:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    17d2:	e02a      	b.n	182a <shell_main+0xba>
                {
                    if (strcmp(shell_command->name, shell_args[0]) == 0)
    17d4:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    17d8:	681a      	ldr	r2, [r3, #0]
    17da:	463b      	mov	r3, r7
    17dc:	681b      	ldr	r3, [r3, #0]
    17de:	4619      	mov	r1, r3
    17e0:	4610      	mov	r0, r2
    17e2:	f7ff ff98 	bl	1716 <strcmp>
    17e6:	4603      	mov	r3, r0
    17e8:	2b00      	cmp	r3, #0
    17ea:	d10a      	bne.n	1802 <shell_main+0x92>
                    {
                        shell_command->func(args_count - 1, &shell_args[1]);
    17ec:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    17f0:	689b      	ldr	r3, [r3, #8]
    17f2:	f897 2103 	ldrb.w	r2, [r7, #259]	; 0x103
    17f6:	1e50      	subs	r0, r2, #1
    17f8:	463a      	mov	r2, r7
    17fa:	3204      	adds	r2, #4
    17fc:	4611      	mov	r1, r2
    17fe:	4798      	blx	r3
    1800:	e00e      	b.n	1820 <shell_main+0xb0>
                    }
                    else if (strcmp("exit", shell_args[0]) == 0)
    1802:	463b      	mov	r3, r7
    1804:	681b      	ldr	r3, [r3, #0]
    1806:	4619      	mov	r1, r3
    1808:	4811      	ldr	r0, [pc, #68]	; (1850 <shell_main+0xe0>)
    180a:	f7ff ff84 	bl	1716 <strcmp>
    180e:	4603      	mov	r3, r0
    1810:	2b00      	cmp	r3, #0
    1812:	d013      	beq.n	183c <shell_main+0xcc>
                    {
                        return;
                    }
                    else
                    {
                        printf("unknown shell command \'%s\'\n", line);
    1814:	f107 0380 	add.w	r3, r7, #128	; 0x80
    1818:	4619      	mov	r1, r3
    181a:	480e      	ldr	r0, [pc, #56]	; (1854 <shell_main+0xe4>)
    181c:	f7ff fc61 	bl	10e2 <printf_>
                for (; shell_command < (shell_command_pointer_t)&__shell_command_end; shell_command++)
    1820:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    1824:	330c      	adds	r3, #12
    1826:	f8c7 3104 	str.w	r3, [r7, #260]	; 0x104
    182a:	f8d7 3104 	ldr.w	r3, [r7, #260]	; 0x104
    182e:	4a0a      	ldr	r2, [pc, #40]	; (1858 <shell_main+0xe8>)
    1830:	4293      	cmp	r3, r2
    1832:	d3cf      	bcc.n	17d4 <shell_main+0x64>
                // if (sysCmd[i] == NULL)
                // {
                //     printf("C interp: unknown symbol name \'%s\' \r\n", line);
                // }
            }
            printf("zsh->");
    1834:	4809      	ldr	r0, [pc, #36]	; (185c <shell_main+0xec>)
    1836:	f7ff fc54 	bl	10e2 <printf_>
        if (shell_get_line(line, MAX_SHELL_LINE_LENGTH))
    183a:	e7ad      	b.n	1798 <shell_main+0x28>
                        return;
    183c:	bf00      	nop
        }
    }
    return;
}
    183e:	f507 7784 	add.w	r7, r7, #264	; 0x108
    1842:	46bd      	mov	sp, r7
    1844:	bd80      	pop	{r7, pc}
    1846:	bf00      	nop
    1848:	000025c4 	.word	0x000025c4
    184c:	00002544 	.word	0x00002544
    1850:	000025c8 	.word	0x000025c8
    1854:	000025d0 	.word	0x000025d0
    1858:	00003418 	.word	0x00003418
    185c:	000025ec 	.word	0x000025ec

00001860 <shell_start>:

void shell_start(void)
{
    1860:	b580      	push	{r7, lr}
    1862:	af00      	add	r7, sp, #0
// setvbuf(stdout, NULL, _IONBF, 0);
// setvbuf(stdin, NULL, _IONBF, 0);
    shell_main();
    1864:	f7ff ff84 	bl	1770 <shell_main>
    1868:	bf00      	nop
    186a:	bd80      	pop	{r7, pc}

0000186c <test_div>:
#include <stdint.h>
#include "hal_log.h"
#include "backtrace.h"
#include "hal_platform.h"
int test_div(void)
{
    186c:	b480      	push	{r7}
    186e:	b085      	sub	sp, #20
    1870:	af00      	add	r7, sp, #0
SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    1872:	4b0d      	ldr	r3, [pc, #52]	; (18a8 <test_div+0x3c>)
    1874:	6a5b      	ldr	r3, [r3, #36]	; 0x24
    1876:	4a0c      	ldr	r2, [pc, #48]	; (18a8 <test_div+0x3c>)
    1878:	f443 23e0 	orr.w	r3, r3, #458752	; 0x70000
    187c:	6253      	str	r3, [r2, #36]	; 0x24
SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;
    187e:	4b0a      	ldr	r3, [pc, #40]	; (18a8 <test_div+0x3c>)
    1880:	695b      	ldr	r3, [r3, #20]
    1882:	4a09      	ldr	r2, [pc, #36]	; (18a8 <test_div+0x3c>)
    1884:	f043 0318 	orr.w	r3, r3, #24
    1888:	6153      	str	r3, [r2, #20]

int a = 1;
    188a:	2301      	movs	r3, #1
    188c:	60fb      	str	r3, [r7, #12]
int b = 0;
    188e:	2300      	movs	r3, #0
    1890:	60bb      	str	r3, [r7, #8]
int z = a / b;
    1892:	68fa      	ldr	r2, [r7, #12]
    1894:	68bb      	ldr	r3, [r7, #8]
    1896:	fb92 f3f3 	sdiv	r3, r2, r3
    189a:	607b      	str	r3, [r7, #4]

return z;
    189c:	687b      	ldr	r3, [r7, #4]
}
    189e:	4618      	mov	r0, r3
    18a0:	3714      	adds	r7, #20
    18a2:	46bd      	mov	sp, r7
    18a4:	bc80      	pop	{r7}
    18a6:	4770      	bx	lr
    18a8:	e000ed00 	.word	0xe000ed00

000018ac <fault_test_by_unalign>:

void fault_test_by_unalign(void) {
    18ac:	b580      	push	{r7, lr}
    18ae:	b084      	sub	sp, #16
    18b0:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    18b2:	4b16      	ldr	r3, [pc, #88]	; (190c <fault_test_by_unalign+0x60>)
    18b4:	60fb      	str	r3, [r7, #12]
volatile int * p;
volatile int value;

*SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */
    18b6:	68fb      	ldr	r3, [r7, #12]
    18b8:	681b      	ldr	r3, [r3, #0]
    18ba:	f043 0208 	orr.w	r2, r3, #8
    18be:	68fb      	ldr	r3, [r7, #12]
    18c0:	601a      	str	r2, [r3, #0]

p = (int *) 0x00;
    18c2:	2300      	movs	r3, #0
    18c4:	60bb      	str	r3, [r7, #8]
value = *p;
    18c6:	68bb      	ldr	r3, [r7, #8]
    18c8:	681b      	ldr	r3, [r3, #0]
    18ca:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    18cc:	68bb      	ldr	r3, [r7, #8]
    18ce:	687a      	ldr	r2, [r7, #4]
    18d0:	4619      	mov	r1, r3
    18d2:	480f      	ldr	r0, [pc, #60]	; (1910 <fault_test_by_unalign+0x64>)
    18d4:	f7ff fc05 	bl	10e2 <printf_>

p = (int *) 0x04;
    18d8:	2304      	movs	r3, #4
    18da:	60bb      	str	r3, [r7, #8]
value = *p;
    18dc:	68bb      	ldr	r3, [r7, #8]
    18de:	681b      	ldr	r3, [r3, #0]
    18e0:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    18e2:	68bb      	ldr	r3, [r7, #8]
    18e4:	687a      	ldr	r2, [r7, #4]
    18e6:	4619      	mov	r1, r3
    18e8:	4809      	ldr	r0, [pc, #36]	; (1910 <fault_test_by_unalign+0x64>)
    18ea:	f7ff fbfa 	bl	10e2 <printf_>

p = (int *) 0x03;
    18ee:	2303      	movs	r3, #3
    18f0:	60bb      	str	r3, [r7, #8]
value = *p;
    18f2:	68bb      	ldr	r3, [r7, #8]
    18f4:	681b      	ldr	r3, [r3, #0]
    18f6:	607b      	str	r3, [r7, #4]
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
    18f8:	68bb      	ldr	r3, [r7, #8]
    18fa:	687a      	ldr	r2, [r7, #4]
    18fc:	4619      	mov	r1, r3
    18fe:	4804      	ldr	r0, [pc, #16]	; (1910 <fault_test_by_unalign+0x64>)
    1900:	f7ff fbef 	bl	10e2 <printf_>
}
    1904:	bf00      	nop
    1906:	3710      	adds	r7, #16
    1908:	46bd      	mov	sp, r7
    190a:	bd80      	pop	{r7, pc}
    190c:	e000ed14 	.word	0xe000ed14
    1910:	000025f4 	.word	0x000025f4

00001914 <fault_test_by_div0>:

void fault_test_by_div0(void) {
    1914:	b580      	push	{r7, lr}
    1916:	b084      	sub	sp, #16
    1918:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    191a:	4b0c      	ldr	r3, [pc, #48]	; (194c <fault_test_by_div0+0x38>)
    191c:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
    191e:	68fb      	ldr	r3, [r7, #12]
    1920:	681b      	ldr	r3, [r3, #0]
    1922:	f043 0210 	orr.w	r2, r3, #16
    1926:	68fb      	ldr	r3, [r7, #12]
    1928:	601a      	str	r2, [r3, #0]

x = 10;
    192a:	230a      	movs	r3, #10
    192c:	60bb      	str	r3, [r7, #8]
y = 0;
    192e:	2300      	movs	r3, #0
    1930:	607b      	str	r3, [r7, #4]
z = x / y;
    1932:	68ba      	ldr	r2, [r7, #8]
    1934:	687b      	ldr	r3, [r7, #4]
    1936:	fb92 f3f3 	sdiv	r3, r2, r3
    193a:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
    193c:	6839      	ldr	r1, [r7, #0]
    193e:	4804      	ldr	r0, [pc, #16]	; (1950 <fault_test_by_div0+0x3c>)
    1940:	f7ff fbcf 	bl	10e2 <printf_>
}
    1944:	bf00      	nop
    1946:	3710      	adds	r7, #16
    1948:	46bd      	mov	sp, r7
    194a:	bd80      	pop	{r7, pc}
    194c:	e000ed14 	.word	0xe000ed14
    1950:	0000260c 	.word	0x0000260c

00001954 <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    1954:	b580      	push	{r7, lr}
    1956:	b084      	sub	sp, #16
    1958:	af00      	add	r7, sp, #0
    195a:	60f8      	str	r0, [r7, #12]
    195c:	60b9      	str	r1, [r7, #8]
    195e:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
    1960:	687b      	ldr	r3, [r7, #4]
    1962:	68fa      	ldr	r2, [r7, #12]
    1964:	429a      	cmp	r2, r3
    1966:	d902      	bls.n	196e <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
    1968:	68fb      	ldr	r3, [r7, #12]
    196a:	607b      	str	r3, [r7, #4]
    196c:	e009      	b.n	1982 <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
    196e:	68fa      	ldr	r2, [r7, #12]
    1970:	68bb      	ldr	r3, [r7, #8]
    1972:	441a      	add	r2, r3
    1974:	687b      	ldr	r3, [r7, #4]
    1976:	429a      	cmp	r2, r3
    1978:	d203      	bcs.n	1982 <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    197a:	68fa      	ldr	r2, [r7, #12]
    197c:	68bb      	ldr	r3, [r7, #8]
    197e:	4413      	add	r3, r2
    1980:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
    1982:	490e      	ldr	r1, [pc, #56]	; (19bc <dump_stack+0x68>)
    1984:	480e      	ldr	r0, [pc, #56]	; (19c0 <dump_stack+0x6c>)
    1986:	f7ff fbac 	bl	10e2 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    198a:	e009      	b.n	19a0 <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    198c:	6879      	ldr	r1, [r7, #4]
    198e:	687b      	ldr	r3, [r7, #4]
    1990:	681b      	ldr	r3, [r3, #0]
    1992:	461a      	mov	r2, r3
    1994:	480b      	ldr	r0, [pc, #44]	; (19c4 <dump_stack+0x70>)
    1996:	f7ff fba4 	bl	10e2 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
    199a:	687b      	ldr	r3, [r7, #4]
    199c:	3304      	adds	r3, #4
    199e:	607b      	str	r3, [r7, #4]
    19a0:	68fa      	ldr	r2, [r7, #12]
    19a2:	68bb      	ldr	r3, [r7, #8]
    19a4:	441a      	add	r2, r3
    19a6:	687b      	ldr	r3, [r7, #4]
    19a8:	429a      	cmp	r2, r3
    19aa:	d8ef      	bhi.n	198c <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
    19ac:	4903      	ldr	r1, [pc, #12]	; (19bc <dump_stack+0x68>)
    19ae:	4804      	ldr	r0, [pc, #16]	; (19c0 <dump_stack+0x6c>)
    19b0:	f7ff fb97 	bl	10e2 <printf_>
}
    19b4:	bf00      	nop
    19b6:	3710      	adds	r7, #16
    19b8:	46bd      	mov	sp, r7
    19ba:	bd80      	pop	{r7, pc}
    19bc:	0000312c 	.word	0x0000312c
    19c0:	00002614 	.word	0x00002614
    19c4:	00002640 	.word	0x00002640

000019c8 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    19c8:	b480      	push	{r7}
    19ca:	b085      	sub	sp, #20
    19cc:	af00      	add	r7, sp, #0
    19ce:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
    19d0:	687b      	ldr	r3, [r7, #4]
    19d2:	881b      	ldrh	r3, [r3, #0]
    19d4:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
    19d6:	687b      	ldr	r3, [r7, #4]
    19d8:	3302      	adds	r3, #2
    19da:	881b      	ldrh	r3, [r3, #0]
    19dc:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
    19de:	89bb      	ldrh	r3, [r7, #12]
    19e0:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    19e4:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
    19e8:	d107      	bne.n	19fa <disassembly_ins_is_bl_blx+0x32>
    19ea:	89fb      	ldrh	r3, [r7, #14]
    19ec:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
    19f0:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
    19f4:	d101      	bne.n	19fa <disassembly_ins_is_bl_blx+0x32>
        return true;
    19f6:	2301      	movs	r3, #1
    19f8:	e008      	b.n	1a0c <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
    19fa:	89bb      	ldrh	r3, [r7, #12]
    19fc:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1a00:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1a04:	d101      	bne.n	1a0a <disassembly_ins_is_bl_blx+0x42>
        return true;
    1a06:	2301      	movs	r3, #1
    1a08:	e000      	b.n	1a0c <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
    1a0a:	2300      	movs	r3, #0
    }
}
    1a0c:	4618      	mov	r0, r3
    1a0e:	3714      	adds	r7, #20
    1a10:	46bd      	mov	sp, r7
    1a12:	bc80      	pop	{r7}
    1a14:	4770      	bx	lr

00001a16 <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    1a16:	b580      	push	{r7, lr}
    1a18:	b08a      	sub	sp, #40	; 0x28
    1a1a:	af02      	add	r7, sp, #8
    1a1c:	60f8      	str	r0, [r7, #12]
    1a1e:	60b9      	str	r1, [r7, #8]
    1a20:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
    1a22:	2300      	movs	r3, #0
    1a24:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
    1a26:	2300      	movs	r3, #0
    1a28:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
    1a2a:	687a      	ldr	r2, [r7, #4]
    1a2c:	4935      	ldr	r1, [pc, #212]	; (1b04 <backtrace_call_stack+0xee>)
    1a2e:	4836      	ldr	r0, [pc, #216]	; (1b08 <backtrace_call_stack+0xf2>)
    1a30:	f7ff fb57 	bl	10e2 <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1a34:	e058      	b.n	1ae8 <backtrace_call_stack+0xd2>
uint32_t i = 0;
    1a36:	2300      	movs	r3, #0
    1a38:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
    1a3a:	687b      	ldr	r3, [r7, #4]
    1a3c:	4a33      	ldr	r2, [pc, #204]	; (1b0c <backtrace_call_stack+0xf6>)
    1a3e:	4293      	cmp	r3, r2
    1a40:	d103      	bne.n	1a4a <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
    1a42:	6879      	ldr	r1, [r7, #4]
    1a44:	4832      	ldr	r0, [pc, #200]	; (1b10 <backtrace_call_stack+0xfa>)
    1a46:	f7ff fb4c 	bl	10e2 <printf_>
    }
    lr = *((uint32_t *) sp);
    1a4a:	687b      	ldr	r3, [r7, #4]
    1a4c:	681b      	ldr	r3, [r3, #0]
    1a4e:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
    1a50:	693b      	ldr	r3, [r7, #16]
    1a52:	f003 0301 	and.w	r3, r3, #1
    1a56:	2b00      	cmp	r3, #0
    1a58:	d040      	beq.n	1adc <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
    1a5a:	693b      	ldr	r3, [r7, #16]
    1a5c:	3b01      	subs	r3, #1
    1a5e:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
    1a60:	4b2c      	ldr	r3, [pc, #176]	; (1b14 <backtrace_call_stack+0xfe>)
    1a62:	681b      	ldr	r3, [r3, #0]
    1a64:	693a      	ldr	r2, [r7, #16]
    1a66:	429a      	cmp	r2, r3
    1a68:	d33b      	bcc.n	1ae2 <backtrace_call_stack+0xcc>
    1a6a:	4b2a      	ldr	r3, [pc, #168]	; (1b14 <backtrace_call_stack+0xfe>)
    1a6c:	681a      	ldr	r2, [r3, #0]
    1a6e:	4b2a      	ldr	r3, [pc, #168]	; (1b18 <backtrace_call_stack+0x102>)
    1a70:	681b      	ldr	r3, [r3, #0]
    1a72:	4413      	add	r3, r2
    1a74:	693a      	ldr	r2, [r7, #16]
    1a76:	429a      	cmp	r2, r3
    1a78:	d833      	bhi.n	1ae2 <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
    1a7a:	693b      	ldr	r3, [r7, #16]
    1a7c:	3b04      	subs	r3, #4
    1a7e:	4618      	mov	r0, r3
    1a80:	f7ff ffa2 	bl	19c8 <disassembly_ins_is_bl_blx>
    1a84:	4603      	mov	r3, r0
    1a86:	2b00      	cmp	r3, #0
    1a88:	d02b      	beq.n	1ae2 <backtrace_call_stack+0xcc>
    1a8a:	69fa      	ldr	r2, [r7, #28]
    1a8c:	68bb      	ldr	r3, [r7, #8]
    1a8e:	429a      	cmp	r2, r3
    1a90:	d227      	bcs.n	1ae2 <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
    1a92:	69fb      	ldr	r3, [r7, #28]
    1a94:	2b02      	cmp	r3, #2
    1a96:	d108      	bne.n	1aaa <backtrace_call_stack+0x94>
    1a98:	7efb      	ldrb	r3, [r7, #27]
    1a9a:	2b00      	cmp	r3, #0
    1a9c:	d005      	beq.n	1aaa <backtrace_call_stack+0x94>
    1a9e:	68fb      	ldr	r3, [r7, #12]
    1aa0:	3304      	adds	r3, #4
    1aa2:	681b      	ldr	r3, [r3, #0]
    1aa4:	693a      	ldr	r2, [r7, #16]
    1aa6:	429a      	cmp	r2, r3
    1aa8:	d01a      	beq.n	1ae0 <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1aaa:	693b      	ldr	r3, [r7, #16]
    1aac:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1aae:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1ab0:	693b      	ldr	r3, [r7, #16]
    1ab2:	3b04      	subs	r3, #4
    1ab4:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1ab6:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
    1ab8:	693b      	ldr	r3, [r7, #16]
    1aba:	3b02      	subs	r3, #2
    1abc:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
    1abe:	9300      	str	r3, [sp, #0]
    1ac0:	460b      	mov	r3, r1
    1ac2:	6939      	ldr	r1, [r7, #16]
    1ac4:	4815      	ldr	r0, [pc, #84]	; (1b1c <backtrace_call_stack+0x106>)
    1ac6:	f7ff fb0c 	bl	10e2 <printf_>
                buffer[depth++] = lr;
    1aca:	69fb      	ldr	r3, [r7, #28]
    1acc:	1c5a      	adds	r2, r3, #1
    1ace:	61fa      	str	r2, [r7, #28]
    1ad0:	009b      	lsls	r3, r3, #2
    1ad2:	68fa      	ldr	r2, [r7, #12]
    1ad4:	4413      	add	r3, r2
    1ad6:	693a      	ldr	r2, [r7, #16]
    1ad8:	601a      	str	r2, [r3, #0]
    1ada:	e002      	b.n	1ae2 <backtrace_call_stack+0xcc>
        continue;
    1adc:	bf00      	nop
    1ade:	e000      	b.n	1ae2 <backtrace_call_stack+0xcc>
            continue;
    1ae0:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
    1ae2:	687b      	ldr	r3, [r7, #4]
    1ae4:	3304      	adds	r3, #4
    1ae6:	607b      	str	r3, [r7, #4]
    1ae8:	4b0d      	ldr	r3, [pc, #52]	; (1b20 <backtrace_call_stack+0x10a>)
    1aea:	681a      	ldr	r2, [r3, #0]
    1aec:	4b0d      	ldr	r3, [pc, #52]	; (1b24 <backtrace_call_stack+0x10e>)
    1aee:	681b      	ldr	r3, [r3, #0]
    1af0:	4413      	add	r3, r2
    1af2:	687a      	ldr	r2, [r7, #4]
    1af4:	429a      	cmp	r2, r3
    1af6:	d39e      	bcc.n	1a36 <backtrace_call_stack+0x20>
    }
}

return depth;
    1af8:	69fb      	ldr	r3, [r7, #28]
}
    1afa:	4618      	mov	r0, r3
    1afc:	3720      	adds	r7, #32
    1afe:	46bd      	mov	sp, r7
    1b00:	bd80      	pop	{r7, pc}
    1b02:	bf00      	nop
    1b04:	00003138 	.word	0x00003138
    1b08:	00002f54 	.word	0x00002f54
    1b0c:	08080541 	.word	0x08080541
    1b10:	00002f64 	.word	0x00002f64
    1b14:	20000064 	.word	0x20000064
    1b18:	2000006c 	.word	0x2000006c
    1b1c:	00002f70 	.word	0x00002f70
    1b20:	20000070 	.word	0x20000070
    1b24:	20000078 	.word	0x20000078

00001b28 <print_call_stack>:

void print_call_stack(uint32_t sp) {
    1b28:	b580      	push	{r7, lr}
    1b2a:	b096      	sub	sp, #88	; 0x58
    1b2c:	af02      	add	r7, sp, #8
    1b2e:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
    1b30:	2300      	movs	r3, #0
    1b32:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
    1b34:	f107 0308 	add.w	r3, r7, #8
    1b38:	2240      	movs	r2, #64	; 0x40
    1b3a:	2100      	movs	r1, #0
    1b3c:	4618      	mov	r0, r3
    1b3e:	f7ff fdcb 	bl	16d8 <memset>
    printf("[%s] ====================================\n", __func__);
    1b42:	4928      	ldr	r1, [pc, #160]	; (1be4 <print_call_stack+0xbc>)
    1b44:	4828      	ldr	r0, [pc, #160]	; (1be8 <print_call_stack+0xc0>)
    1b46:	f7ff facc 	bl	10e2 <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
    1b4a:	f107 0308 	add.w	r3, r7, #8
    1b4e:	687a      	ldr	r2, [r7, #4]
    1b50:	2110      	movs	r1, #16
    1b52:	4618      	mov	r0, r3
    1b54:	f7ff ff5f 	bl	1a16 <backtrace_call_stack>
    1b58:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
    1b5a:	4922      	ldr	r1, [pc, #136]	; (1be4 <print_call_stack+0xbc>)
    1b5c:	4822      	ldr	r0, [pc, #136]	; (1be8 <print_call_stack+0xc0>)
    1b5e:	f7ff fac0 	bl	10e2 <printf_>

    for (i = 0; i < cur_depth; i++) {
    1b62:	2300      	movs	r3, #0
    1b64:	64fb      	str	r3, [r7, #76]	; 0x4c
    1b66:	e01b      	b.n	1ba0 <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
    1b68:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1b6a:	4613      	mov	r3, r2
    1b6c:	00db      	lsls	r3, r3, #3
    1b6e:	4413      	add	r3, r2
    1b70:	4a1e      	ldr	r2, [pc, #120]	; (1bec <print_call_stack+0xc4>)
    1b72:	1898      	adds	r0, r3, r2
    1b74:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1b76:	009b      	lsls	r3, r3, #2
    1b78:	f107 0250 	add.w	r2, r7, #80	; 0x50
    1b7c:	4413      	add	r3, r2
    1b7e:	f853 3c48 	ldr.w	r3, [r3, #-72]
    1b82:	461a      	mov	r2, r3
    1b84:	491a      	ldr	r1, [pc, #104]	; (1bf0 <print_call_stack+0xc8>)
    1b86:	f7ff fac7 	bl	1118 <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
    1b8a:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1b8c:	4613      	mov	r3, r2
    1b8e:	00db      	lsls	r3, r3, #3
    1b90:	4413      	add	r3, r2
    1b92:	3308      	adds	r3, #8
    1b94:	4a15      	ldr	r2, [pc, #84]	; (1bec <print_call_stack+0xc4>)
    1b96:	2120      	movs	r1, #32
    1b98:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
    1b9a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
    1b9c:	3301      	adds	r3, #1
    1b9e:	64fb      	str	r3, [r7, #76]	; 0x4c
    1ba0:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
    1ba2:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1ba4:	429a      	cmp	r2, r3
    1ba6:	d3df      	bcc.n	1b68 <print_call_stack+0x40>
    }

    if (cur_depth) {
    1ba8:	6cbb      	ldr	r3, [r7, #72]	; 0x48
    1baa:	2b00      	cmp	r3, #0
    1bac:	d00f      	beq.n	1bce <print_call_stack+0xa6>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
    1bae:	4811      	ldr	r0, [pc, #68]	; (1bf4 <print_call_stack+0xcc>)
    1bb0:	6cba      	ldr	r2, [r7, #72]	; 0x48
    1bb2:	4613      	mov	r3, r2
    1bb4:	00db      	lsls	r3, r3, #3
    1bb6:	441a      	add	r2, r3
    1bb8:	4b0c      	ldr	r3, [pc, #48]	; (1bec <print_call_stack+0xc4>)
    1bba:	9300      	str	r3, [sp, #0]
    1bbc:	4613      	mov	r3, r2
    1bbe:	4a0e      	ldr	r2, [pc, #56]	; (1bf8 <print_call_stack+0xd0>)
    1bc0:	490e      	ldr	r1, [pc, #56]	; (1bfc <print_call_stack+0xd4>)
    1bc2:	f7ff fa8e 	bl	10e2 <printf_>
    1bc6:	480e      	ldr	r0, [pc, #56]	; (1c00 <print_call_stack+0xd8>)
    1bc8:	f7ff fa8b 	bl	10e2 <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
    1bcc:	e006      	b.n	1bdc <print_call_stack+0xb4>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    1bce:	4b0d      	ldr	r3, [pc, #52]	; (1c04 <print_call_stack+0xdc>)
    1bd0:	4618      	mov	r0, r3
    1bd2:	f7ff fa86 	bl	10e2 <printf_>
    1bd6:	480a      	ldr	r0, [pc, #40]	; (1c00 <print_call_stack+0xd8>)
    1bd8:	f7ff fa83 	bl	10e2 <printf_>
}
    1bdc:	bf00      	nop
    1bde:	3750      	adds	r7, #80	; 0x50
    1be0:	46bd      	mov	sp, r7
    1be2:	bd80      	pop	{r7, pc}
    1be4:	00003150 	.word	0x00003150
    1be8:	00002614 	.word	0x00002614
    1bec:	20000088 	.word	0x20000088
    1bf0:	00002fb4 	.word	0x00002fb4
    1bf4:	000027f0 	.word	0x000027f0
    1bf8:	00002fbc 	.word	0x00002fbc
    1bfc:	00002fc4 	.word	0x00002fc4
    1c00:	00002fd4 	.word	0x00002fd4
    1c04:	00002830 	.word	0x00002830

00001c08 <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
    1c08:	b598      	push	{r3, r4, r7, lr}
    1c0a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1c0c:	490d      	ldr	r1, [pc, #52]	; (1c44 <backtrace_level_3+0x3c>)
    1c0e:	480e      	ldr	r0, [pc, #56]	; (1c48 <backtrace_level_3+0x40>)
    1c10:	f7ff fa67 	bl	10e2 <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
    1c14:	4b0d      	ldr	r3, [pc, #52]	; (1c4c <backtrace_level_3+0x44>)
    1c16:	6818      	ldr	r0, [r3, #0]
    1c18:	4b0d      	ldr	r3, [pc, #52]	; (1c50 <backtrace_level_3+0x48>)
    1c1a:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1c1c:	466a      	mov	r2, sp
    1c1e:	4614      	mov	r4, r2
    return(result);
    1c20:	4622      	mov	r2, r4
    1c22:	4619      	mov	r1, r3
    1c24:	f7ff fe96 	bl	1954 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1c28:	466b      	mov	r3, sp
    1c2a:	461c      	mov	r4, r3
    return(result);
    1c2c:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
    1c2e:	4618      	mov	r0, r3
    1c30:	f7ff ff7a 	bl	1b28 <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1c34:	466b      	mov	r3, sp
    1c36:	461c      	mov	r4, r3
    return(result);
    1c38:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
    1c3a:	4618      	mov	r0, r3
    1c3c:	f000 f998 	bl	1f70 <BackTraceSub>
}
    1c40:	bf00      	nop
    1c42:	bd98      	pop	{r3, r4, r7, pc}
    1c44:	00003164 	.word	0x00003164
    1c48:	00002fd8 	.word	0x00002fd8
    1c4c:	20000070 	.word	0x20000070
    1c50:	20000078 	.word	0x20000078

00001c54 <backtrace_level_2>:
void backtrace_level_2(void)
{
    1c54:	b580      	push	{r7, lr}
    1c56:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1c58:	4903      	ldr	r1, [pc, #12]	; (1c68 <backtrace_level_2+0x14>)
    1c5a:	4804      	ldr	r0, [pc, #16]	; (1c6c <backtrace_level_2+0x18>)
    1c5c:	f7ff fa41 	bl	10e2 <printf_>
    backtrace_level_3();
    1c60:	f7ff ffd2 	bl	1c08 <backtrace_level_3>
}
    1c64:	bf00      	nop
    1c66:	bd80      	pop	{r7, pc}
    1c68:	00003178 	.word	0x00003178
    1c6c:	00002fd8 	.word	0x00002fd8

00001c70 <backtrace_level_1>:
void backtrace_level_1(void)
{
    1c70:	b580      	push	{r7, lr}
    1c72:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    1c74:	4903      	ldr	r1, [pc, #12]	; (1c84 <backtrace_level_1+0x14>)
    1c76:	4804      	ldr	r0, [pc, #16]	; (1c88 <backtrace_level_1+0x18>)
    1c78:	f7ff fa33 	bl	10e2 <printf_>
    backtrace_level_2();
    1c7c:	f7ff ffea 	bl	1c54 <backtrace_level_2>
}
    1c80:	bf00      	nop
    1c82:	bd80      	pop	{r7, pc}
    1c84:	0000318c 	.word	0x0000318c
    1c88:	00002fd8 	.word	0x00002fd8

00001c8c <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
    1c8c:	b590      	push	{r4, r7, lr}
    1c8e:	b089      	sub	sp, #36	; 0x24
    1c90:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
    1c92:	23aa      	movs	r3, #170	; 0xaa
    1c94:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
    1c96:	2355      	movs	r3, #85	; 0x55
    1c98:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
    1c9a:	2377      	movs	r3, #119	; 0x77
    1c9c:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
    1c9e:	4a47      	ldr	r2, [pc, #284]	; (1dbc <backtrace_test+0x130>)
    1ca0:	4b47      	ldr	r3, [pc, #284]	; (1dc0 <backtrace_test+0x134>)
    1ca2:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
    1ca4:	4a47      	ldr	r2, [pc, #284]	; (1dc4 <backtrace_test+0x138>)
    1ca6:	4b48      	ldr	r3, [pc, #288]	; (1dc8 <backtrace_test+0x13c>)
    1ca8:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
    1caa:	4b47      	ldr	r3, [pc, #284]	; (1dc8 <backtrace_test+0x13c>)
    1cac:	681a      	ldr	r2, [r3, #0]
    1cae:	4b44      	ldr	r3, [pc, #272]	; (1dc0 <backtrace_test+0x134>)
    1cb0:	681b      	ldr	r3, [r3, #0]
    1cb2:	1ad3      	subs	r3, r2, r3
    1cb4:	4a45      	ldr	r2, [pc, #276]	; (1dcc <backtrace_test+0x140>)
    1cb6:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
    1cb8:	4a45      	ldr	r2, [pc, #276]	; (1dd0 <backtrace_test+0x144>)
    1cba:	4b46      	ldr	r3, [pc, #280]	; (1dd4 <backtrace_test+0x148>)
    1cbc:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
    1cbe:	4a46      	ldr	r2, [pc, #280]	; (1dd8 <backtrace_test+0x14c>)
    1cc0:	4b46      	ldr	r3, [pc, #280]	; (1ddc <backtrace_test+0x150>)
    1cc2:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
    1cc4:	4b45      	ldr	r3, [pc, #276]	; (1ddc <backtrace_test+0x150>)
    1cc6:	681a      	ldr	r2, [r3, #0]
    1cc8:	4b42      	ldr	r3, [pc, #264]	; (1dd4 <backtrace_test+0x148>)
    1cca:	681b      	ldr	r3, [r3, #0]
    1ccc:	1ad3      	subs	r3, r2, r3
    1cce:	4a44      	ldr	r2, [pc, #272]	; (1de0 <backtrace_test+0x154>)
    1cd0:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
    1cd2:	4a44      	ldr	r2, [pc, #272]	; (1de4 <backtrace_test+0x158>)
    1cd4:	4b44      	ldr	r3, [pc, #272]	; (1de8 <backtrace_test+0x15c>)
    1cd6:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
    1cd8:	4a44      	ldr	r2, [pc, #272]	; (1dec <backtrace_test+0x160>)
    1cda:	4b45      	ldr	r3, [pc, #276]	; (1df0 <backtrace_test+0x164>)
    1cdc:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
    1cde:	4b44      	ldr	r3, [pc, #272]	; (1df0 <backtrace_test+0x164>)
    1ce0:	681a      	ldr	r2, [r3, #0]
    1ce2:	4b41      	ldr	r3, [pc, #260]	; (1de8 <backtrace_test+0x15c>)
    1ce4:	681b      	ldr	r3, [r3, #0]
    1ce6:	1ad3      	subs	r3, r2, r3
    1ce8:	4a42      	ldr	r2, [pc, #264]	; (1df4 <backtrace_test+0x168>)
    1cea:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
    1cec:	4b34      	ldr	r3, [pc, #208]	; (1dc0 <backtrace_test+0x134>)
    1cee:	6819      	ldr	r1, [r3, #0]
    1cf0:	4b35      	ldr	r3, [pc, #212]	; (1dc8 <backtrace_test+0x13c>)
    1cf2:	6818      	ldr	r0, [r3, #0]
    1cf4:	4b35      	ldr	r3, [pc, #212]	; (1dcc <backtrace_test+0x140>)
    1cf6:	681b      	ldr	r3, [r3, #0]
    1cf8:	4a34      	ldr	r2, [pc, #208]	; (1dcc <backtrace_test+0x140>)
    1cfa:	6812      	ldr	r2, [r2, #0]
    1cfc:	9201      	str	r2, [sp, #4]
    1cfe:	9300      	str	r3, [sp, #0]
    1d00:	4603      	mov	r3, r0
    1d02:	460a      	mov	r2, r1
    1d04:	493c      	ldr	r1, [pc, #240]	; (1df8 <backtrace_test+0x16c>)
    1d06:	483d      	ldr	r0, [pc, #244]	; (1dfc <backtrace_test+0x170>)
    1d08:	f7ff f9eb 	bl	10e2 <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
    1d0c:	4b31      	ldr	r3, [pc, #196]	; (1dd4 <backtrace_test+0x148>)
    1d0e:	6819      	ldr	r1, [r3, #0]
    1d10:	4b32      	ldr	r3, [pc, #200]	; (1ddc <backtrace_test+0x150>)
    1d12:	6818      	ldr	r0, [r3, #0]
    1d14:	4b32      	ldr	r3, [pc, #200]	; (1de0 <backtrace_test+0x154>)
    1d16:	681b      	ldr	r3, [r3, #0]
    1d18:	4a31      	ldr	r2, [pc, #196]	; (1de0 <backtrace_test+0x154>)
    1d1a:	6812      	ldr	r2, [r2, #0]
    1d1c:	9201      	str	r2, [sp, #4]
    1d1e:	9300      	str	r3, [sp, #0]
    1d20:	4603      	mov	r3, r0
    1d22:	460a      	mov	r2, r1
    1d24:	4934      	ldr	r1, [pc, #208]	; (1df8 <backtrace_test+0x16c>)
    1d26:	4836      	ldr	r0, [pc, #216]	; (1e00 <backtrace_test+0x174>)
    1d28:	f7ff f9db 	bl	10e2 <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
    1d2c:	4b2e      	ldr	r3, [pc, #184]	; (1de8 <backtrace_test+0x15c>)
    1d2e:	6819      	ldr	r1, [r3, #0]
    1d30:	4b2f      	ldr	r3, [pc, #188]	; (1df0 <backtrace_test+0x164>)
    1d32:	6818      	ldr	r0, [r3, #0]
    1d34:	4b2f      	ldr	r3, [pc, #188]	; (1df4 <backtrace_test+0x168>)
    1d36:	681b      	ldr	r3, [r3, #0]
    1d38:	4a2e      	ldr	r2, [pc, #184]	; (1df4 <backtrace_test+0x168>)
    1d3a:	6812      	ldr	r2, [r2, #0]
    1d3c:	9201      	str	r2, [sp, #4]
    1d3e:	9300      	str	r3, [sp, #0]
    1d40:	4603      	mov	r3, r0
    1d42:	460a      	mov	r2, r1
    1d44:	492c      	ldr	r1, [pc, #176]	; (1df8 <backtrace_test+0x16c>)
    1d46:	482f      	ldr	r0, [pc, #188]	; (1e04 <backtrace_test+0x178>)
    1d48:	f7ff f9cb 	bl	10e2 <printf_>
  __ASM volatile ("cpsie i" : : : "memory");
    1d4c:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
    1d4e:	466b      	mov	r3, sp
    1d50:	461c      	mov	r4, r3
    return(result);
    1d52:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
    1d54:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
    1d56:	6979      	ldr	r1, [r7, #20]
    1d58:	482b      	ldr	r0, [pc, #172]	; (1e08 <backtrace_test+0x17c>)
    1d5a:	f7ff f9c2 	bl	10e2 <printf_>
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
    1d5e:	467b      	mov	r3, pc
    1d60:	461c      	mov	r4, r3
    return(result);
    1d62:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
    1d64:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
    1d66:	6879      	ldr	r1, [r7, #4]
    1d68:	4828      	ldr	r0, [pc, #160]	; (1e0c <backtrace_test+0x180>)
    1d6a:	f7ff f9ba 	bl	10e2 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1d6e:	e01b      	b.n	1da8 <backtrace_test+0x11c>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
    1d70:	697b      	ldr	r3, [r7, #20]
    1d72:	681b      	ldr	r3, [r3, #0]
    1d74:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
    1d76:	6839      	ldr	r1, [r7, #0]
    1d78:	4825      	ldr	r0, [pc, #148]	; (1e10 <backtrace_test+0x184>)
    1d7a:	f7ff f9b2 	bl	10e2 <printf_>
        if ((addr >= (uint32_t)&_stext) &&
    1d7e:	4a0f      	ldr	r2, [pc, #60]	; (1dbc <backtrace_test+0x130>)
    1d80:	683b      	ldr	r3, [r7, #0]
    1d82:	4293      	cmp	r3, r2
    1d84:	d30d      	bcc.n	1da2 <backtrace_test+0x116>
        (sp <= (uint32_t)&_etext) &&
    1d86:	4a0f      	ldr	r2, [pc, #60]	; (1dc4 <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
    1d88:	697b      	ldr	r3, [r7, #20]
    1d8a:	4293      	cmp	r3, r2
    1d8c:	d809      	bhi.n	1da2 <backtrace_test+0x116>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
    1d8e:	683b      	ldr	r3, [r7, #0]
    1d90:	3b01      	subs	r3, #1
    1d92:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
    1d96:	2b00      	cmp	r3, #0
    1d98:	d103      	bne.n	1da2 <backtrace_test+0x116>

            printf("find ld 0x%08x\n", addr);
    1d9a:	6839      	ldr	r1, [r7, #0]
    1d9c:	481d      	ldr	r0, [pc, #116]	; (1e14 <backtrace_test+0x188>)
    1d9e:	f7ff f9a0 	bl	10e2 <printf_>
        }
        sp += 4;
    1da2:	697b      	ldr	r3, [r7, #20]
    1da4:	3304      	adds	r3, #4
    1da6:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
    1da8:	4a0b      	ldr	r2, [pc, #44]	; (1dd8 <backtrace_test+0x14c>)
    1daa:	697b      	ldr	r3, [r7, #20]
    1dac:	4293      	cmp	r3, r2
    1dae:	d3df      	bcc.n	1d70 <backtrace_test+0xe4>
    }
    backtrace_level_1();
    1db0:	f7ff ff5e 	bl	1c70 <backtrace_level_1>
    fault_test_by_div0();
    1db4:	f7ff fdae 	bl	1914 <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
    1db8:	e7fe      	b.n	1db8 <backtrace_test+0x12c>
    1dba:	bf00      	nop
    1dbc:	00000000 	.word	0x00000000
    1dc0:	20000064 	.word	0x20000064
    1dc4:	00003418 	.word	0x00003418
    1dc8:	20000068 	.word	0x20000068
    1dcc:	2000006c 	.word	0x2000006c
    1dd0:	20000948 	.word	0x20000948
    1dd4:	20000070 	.word	0x20000070
    1dd8:	20001948 	.word	0x20001948
    1ddc:	20000074 	.word	0x20000074
    1de0:	20000078 	.word	0x20000078
    1de4:	20001948 	.word	0x20001948
    1de8:	2000007c 	.word	0x2000007c
    1dec:	20005948 	.word	0x20005948
    1df0:	20000080 	.word	0x20000080
    1df4:	20000084 	.word	0x20000084
    1df8:	000031a0 	.word	0x000031a0
    1dfc:	00002fe0 	.word	0x00002fe0
    1e00:	00003028 	.word	0x00003028
    1e04:	00003070 	.word	0x00003070
    1e08:	000030b8 	.word	0x000030b8
    1e0c:	000030c4 	.word	0x000030c4
    1e10:	000030d0 	.word	0x000030d0
    1e14:	000030dc 	.word	0x000030dc

00001e18 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    1e18:	b480      	push	{r7}
    1e1a:	b083      	sub	sp, #12
    1e1c:	af00      	add	r7, sp, #0
    1e1e:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1e20:	e00e      	b.n	1e40 <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
    1e22:	687b      	ldr	r3, [r7, #4]
    1e24:	881b      	ldrh	r3, [r3, #0]
    1e26:	0a1b      	lsrs	r3, r3, #8
    1e28:	b29b      	uxth	r3, r3
    1e2a:	2bb5      	cmp	r3, #181	; 0xb5
    1e2c:	d00d      	beq.n	1e4a <LoopUntilEntry+0x32>
    1e2e:	687b      	ldr	r3, [r7, #4]
    1e30:	881b      	ldrh	r3, [r3, #0]
    1e32:	0a1b      	lsrs	r3, r3, #8
    1e34:	b29b      	uxth	r3, r3
    1e36:	2bb4      	cmp	r3, #180	; 0xb4
    1e38:	d007      	beq.n	1e4a <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
    1e3a:	687b      	ldr	r3, [r7, #4]
    1e3c:	3b02      	subs	r3, #2
    1e3e:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
    1e40:	4b05      	ldr	r3, [pc, #20]	; (1e58 <LoopUntilEntry+0x40>)
    1e42:	681b      	ldr	r3, [r3, #0]
    1e44:	687a      	ldr	r2, [r7, #4]
    1e46:	429a      	cmp	r2, r3
    1e48:	d8eb      	bhi.n	1e22 <LoopUntilEntry+0xa>
    }

    return addr;
    1e4a:	687b      	ldr	r3, [r7, #4]
}
    1e4c:	4618      	mov	r0, r3
    1e4e:	370c      	adds	r7, #12
    1e50:	46bd      	mov	sp, r7
    1e52:	bc80      	pop	{r7}
    1e54:	4770      	bx	lr
    1e56:	bf00      	nop
    1e58:	20000064 	.word	0x20000064

00001e5c <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    1e5c:	b480      	push	{r7}
    1e5e:	b087      	sub	sp, #28
    1e60:	af00      	add	r7, sp, #0
    1e62:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1e64:	2300      	movs	r3, #0
    1e66:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
    1e68:	687b      	ldr	r3, [r7, #4]
    1e6a:	881b      	ldrh	r3, [r3, #0]
    1e6c:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1e70:	2b00      	cmp	r3, #0
    1e72:	d00b      	beq.n	1e8c <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1e74:	687b      	ldr	r3, [r7, #4]
    1e76:	881b      	ldrh	r3, [r3, #0]
    1e78:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1e7c:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1e7e:	687b      	ldr	r3, [r7, #4]
    1e80:	3302      	adds	r3, #2
    1e82:	881b      	ldrh	r3, [r3, #0]
    1e84:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1e88:	613b      	str	r3, [r7, #16]
    1e8a:	e00a      	b.n	1ea2 <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
    1e8c:	687b      	ldr	r3, [r7, #4]
    1e8e:	881b      	ldrh	r3, [r3, #0]
    1e90:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1e94:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    1e96:	687b      	ldr	r3, [r7, #4]
    1e98:	3302      	adds	r3, #2
    1e9a:	881b      	ldrh	r3, [r3, #0]
    1e9c:	f3c3 030a 	ubfx	r3, r3, #0, #11
    1ea0:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    1ea2:	693b      	ldr	r3, [r7, #16]
    1ea4:	031a      	lsls	r2, r3, #12
    1ea6:	68fb      	ldr	r3, [r7, #12]
    1ea8:	005b      	lsls	r3, r3, #1
    1eaa:	4413      	add	r3, r2
    1eac:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
    1eae:	68bb      	ldr	r3, [r7, #8]
    1eb0:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
    1eb4:	2b00      	cmp	r3, #0
    1eb6:	d008      	beq.n	1eca <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    1eb8:	68bb      	ldr	r3, [r7, #8]
    1eba:	425b      	negs	r3, r3
    1ebc:	f3c3 0316 	ubfx	r3, r3, #0, #23
    1ec0:	687a      	ldr	r2, [r7, #4]
    1ec2:	1ad3      	subs	r3, r2, r3
    1ec4:	3304      	adds	r3, #4
    1ec6:	617b      	str	r3, [r7, #20]
    1ec8:	e004      	b.n	1ed4 <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
    1eca:	687a      	ldr	r2, [r7, #4]
    1ecc:	68bb      	ldr	r3, [r7, #8]
    1ece:	4413      	add	r3, r2
    1ed0:	3304      	adds	r3, #4
    1ed2:	617b      	str	r3, [r7, #20]
    }

    return target;
    1ed4:	697b      	ldr	r3, [r7, #20]
}
    1ed6:	4618      	mov	r0, r3
    1ed8:	371c      	adds	r7, #28
    1eda:	46bd      	mov	sp, r7
    1edc:	bc80      	pop	{r7}
    1ede:	4770      	bx	lr

00001ee0 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    1ee0:	b580      	push	{r7, lr}
    1ee2:	b084      	sub	sp, #16
    1ee4:	af00      	add	r7, sp, #0
    1ee6:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
    1ee8:	2300      	movs	r3, #0
    1eea:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
    1eec:	687b      	ldr	r3, [r7, #4]
    1eee:	3b02      	subs	r3, #2
    1ef0:	881b      	ldrh	r3, [r3, #0]
    1ef2:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
    1ef6:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
    1efa:	d11a      	bne.n	1f32 <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
    1efc:	4b1b      	ldr	r3, [pc, #108]	; (1f6c <CalculateTargetAddress+0x8c>)
    1efe:	681b      	ldr	r3, [r3, #0]
    1f00:	2b00      	cmp	r3, #0
    1f02:	d00b      	beq.n	1f1c <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
    1f04:	4b19      	ldr	r3, [pc, #100]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f06:	681b      	ldr	r3, [r3, #0]
    1f08:	4618      	mov	r0, r3
    1f0a:	f7ff ff85 	bl	1e18 <LoopUntilEntry>
    1f0e:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
    1f10:	687b      	ldr	r3, [r7, #4]
    1f12:	3b02      	subs	r3, #2
    1f14:	4a15      	ldr	r2, [pc, #84]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f16:	6013      	str	r3, [r2, #0]
            return target;
    1f18:	68fb      	ldr	r3, [r7, #12]
    1f1a:	e023      	b.n	1f64 <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
    1f1c:	687b      	ldr	r3, [r7, #4]
    1f1e:	3b02      	subs	r3, #2
    1f20:	4a12      	ldr	r2, [pc, #72]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f22:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
    1f24:	4b11      	ldr	r3, [pc, #68]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f26:	681b      	ldr	r3, [r3, #0]
    1f28:	4618      	mov	r0, r3
    1f2a:	f7ff ff75 	bl	1e18 <LoopUntilEntry>
    1f2e:	4603      	mov	r3, r0
    1f30:	e018      	b.n	1f64 <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
    1f32:	687b      	ldr	r3, [r7, #4]
    1f34:	3b04      	subs	r3, #4
    1f36:	681b      	ldr	r3, [r3, #0]
    1f38:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
    1f3c:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
    1f40:	d10f      	bne.n	1f62 <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
    1f42:	687b      	ldr	r3, [r7, #4]
    1f44:	3b04      	subs	r3, #4
    1f46:	4a09      	ldr	r2, [pc, #36]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f48:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
    1f4a:	4b08      	ldr	r3, [pc, #32]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f4c:	681b      	ldr	r3, [r3, #0]
    1f4e:	4618      	mov	r0, r3
    1f50:	f7ff ff84 	bl	1e5c <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
    1f54:	4b05      	ldr	r3, [pc, #20]	; (1f6c <CalculateTargetAddress+0x8c>)
    1f56:	681b      	ldr	r3, [r3, #0]
    1f58:	4618      	mov	r0, r3
    1f5a:	f7ff ff7f 	bl	1e5c <CalculateBLTargetAddress>
    1f5e:	4603      	mov	r3, r0
    1f60:	e000      	b.n	1f64 <CalculateTargetAddress+0x84>
    }

    return 0;
    1f62:	2300      	movs	r3, #0
}
    1f64:	4618      	mov	r0, r3
    1f66:	3710      	adds	r7, #16
    1f68:	46bd      	mov	sp, r7
    1f6a:	bd80      	pop	{r7, pc}
    1f6c:	2000011c 	.word	0x2000011c

00001f70 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
    1f70:	b580      	push	{r7, lr}
    1f72:	b086      	sub	sp, #24
    1f74:	af00      	add	r7, sp, #0
    1f76:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
    1f78:	687b      	ldr	r3, [r7, #4]
    1f7a:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
    1f7c:	2300      	movs	r3, #0
    1f7e:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    1f80:	e03b      	b.n	1ffa <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    1f82:	697b      	ldr	r3, [r7, #20]
    1f84:	681a      	ldr	r2, [r3, #0]
    1f86:	4b23      	ldr	r3, [pc, #140]	; (2014 <BackTraceSub+0xa4>)
    1f88:	681b      	ldr	r3, [r3, #0]
    1f8a:	429a      	cmp	r2, r3
    1f8c:	d32e      	bcc.n	1fec <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    1f8e:	697b      	ldr	r3, [r7, #20]
    1f90:	681a      	ldr	r2, [r3, #0]
    1f92:	4b21      	ldr	r3, [pc, #132]	; (2018 <BackTraceSub+0xa8>)
    1f94:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
    1f96:	429a      	cmp	r2, r3
    1f98:	d828      	bhi.n	1fec <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
    1f9a:	697b      	ldr	r3, [r7, #20]
    1f9c:	681b      	ldr	r3, [r3, #0]
    1f9e:	3b01      	subs	r3, #1
    1fa0:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
    1fa4:	2b00      	cmp	r3, #0
    1fa6:	d121      	bne.n	1fec <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
    1fa8:	697b      	ldr	r3, [r7, #20]
    1faa:	681b      	ldr	r3, [r3, #0]
    1fac:	3b01      	subs	r3, #1
    1fae:	4618      	mov	r0, r3
    1fb0:	f7ff ff96 	bl	1ee0 <CalculateTargetAddress>
    1fb4:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
    1fb6:	68fb      	ldr	r3, [r7, #12]
    1fb8:	2b00      	cmp	r3, #0
    1fba:	d004      	beq.n	1fc6 <BackTraceSub+0x56>
    1fbc:	4b17      	ldr	r3, [pc, #92]	; (201c <BackTraceSub+0xac>)
    1fbe:	681b      	ldr	r3, [r3, #0]
    1fc0:	68fa      	ldr	r2, [r7, #12]
    1fc2:	429a      	cmp	r2, r3
    1fc4:	d103      	bne.n	1fce <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
    1fc6:	697b      	ldr	r3, [r7, #20]
    1fc8:	3304      	adds	r3, #4
    1fca:	617b      	str	r3, [r7, #20]
                continue;
    1fcc:	e015      	b.n	1ffa <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
    1fce:	4a13      	ldr	r2, [pc, #76]	; (201c <BackTraceSub+0xac>)
    1fd0:	68fb      	ldr	r3, [r7, #12]
    1fd2:	6013      	str	r3, [r2, #0]
            count++;
    1fd4:	693b      	ldr	r3, [r7, #16]
    1fd6:	3301      	adds	r3, #1
    1fd8:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
    1fda:	697b      	ldr	r3, [r7, #20]
    1fdc:	681b      	ldr	r3, [r3, #0]
    1fde:	1e5a      	subs	r2, r3, #1
    1fe0:	4b0e      	ldr	r3, [pc, #56]	; (201c <BackTraceSub+0xac>)
    1fe2:	681b      	ldr	r3, [r3, #0]
    1fe4:	6939      	ldr	r1, [r7, #16]
    1fe6:	480e      	ldr	r0, [pc, #56]	; (2020 <BackTraceSub+0xb0>)
    1fe8:	f7ff f87b 	bl	10e2 <printf_>
        }
        stackPointer += STACK_OFFSET;
    1fec:	697b      	ldr	r3, [r7, #20]
    1fee:	3304      	adds	r3, #4
    1ff0:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
    1ff2:	6979      	ldr	r1, [r7, #20]
    1ff4:	480b      	ldr	r0, [pc, #44]	; (2024 <BackTraceSub+0xb4>)
    1ff6:	f7ff f874 	bl	10e2 <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
    1ffa:	4b0b      	ldr	r3, [pc, #44]	; (2028 <BackTraceSub+0xb8>)
    1ffc:	681b      	ldr	r3, [r3, #0]
    1ffe:	697a      	ldr	r2, [r7, #20]
    2000:	429a      	cmp	r2, r3
    2002:	d202      	bcs.n	200a <BackTraceSub+0x9a>
    2004:	693b      	ldr	r3, [r7, #16]
    2006:	2b0e      	cmp	r3, #14
    2008:	d9bb      	bls.n	1f82 <BackTraceSub+0x12>
    }
}
    200a:	bf00      	nop
    200c:	3718      	adds	r7, #24
    200e:	46bd      	mov	sp, r7
    2010:	bd80      	pop	{r7, pc}
    2012:	bf00      	nop
    2014:	20000064 	.word	0x20000064
    2018:	20000068 	.word	0x20000068
    201c:	20000120 	.word	0x20000120
    2020:	000030ec 	.word	0x000030ec
    2024:	00003118 	.word	0x00003118
    2028:	20000074 	.word	0x20000074

0000202c <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sCrashInfo *sCrashInfo) {
    202c:	b480      	push	{r7}
    202e:	b087      	sub	sp, #28
    2030:	af00      	add	r7, sp, #0
    2032:	6078      	str	r0, [r7, #4]
    sContextStateFrame *frame = &sCrashInfo->frame;
    2034:	687b      	ldr	r3, [r7, #4]
    2036:	3304      	adds	r3, #4
    2038:	617b      	str	r3, [r7, #20]

  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
    203a:	4b28      	ldr	r3, [pc, #160]	; (20dc <HardFault_Handler_C+0xb0>)
    203c:	681b      	ldr	r3, [r3, #0]
    203e:	f003 0301 	and.w	r3, r3, #1
    2042:	2b00      	cmp	r3, #0
    2044:	d000      	beq.n	2048 <HardFault_Handler_C+0x1c>
    2046:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
    2048:	4b25      	ldr	r3, [pc, #148]	; (20e0 <HardFault_Handler_C+0xb4>)
    204a:	613b      	str	r3, [r7, #16]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
    204c:	4b25      	ldr	r3, [pc, #148]	; (20e4 <HardFault_Handler_C+0xb8>)
    204e:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    2050:	693b      	ldr	r3, [r7, #16]
    2052:	43db      	mvns	r3, r3
    2054:	4013      	ands	r3, r2
    2056:	2b00      	cmp	r3, #0
    2058:	bf14      	ite	ne
    205a:	2301      	movne	r3, #1
    205c:	2300      	moveq	r3, #0
    205e:	73fb      	strb	r3, [r7, #15]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
    2060:	697b      	ldr	r3, [r7, #20]
    2062:	69db      	ldr	r3, [r3, #28]
    2064:	b2db      	uxtb	r3, r3
    2066:	2b00      	cmp	r3, #0
    2068:	bf14      	ite	ne
    206a:	2301      	movne	r3, #1
    206c:	2300      	moveq	r3, #0
    206e:	73bb      	strb	r3, [r7, #14]

  if (faulted_from_exception || non_usage_fault_occurred) {
    2070:	7bbb      	ldrb	r3, [r7, #14]
    2072:	2b00      	cmp	r3, #0
    2074:	d102      	bne.n	207c <HardFault_Handler_C+0x50>
    2076:	7bfb      	ldrb	r3, [r7, #15]
    2078:	2b00      	cmp	r3, #0
    207a:	d003      	beq.n	2084 <HardFault_Handler_C+0x58>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
    207c:	4b19      	ldr	r3, [pc, #100]	; (20e4 <HardFault_Handler_C+0xb8>)
    207e:	4a1a      	ldr	r2, [pc, #104]	; (20e8 <HardFault_Handler_C+0xbc>)
    2080:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
    2082:	e7fe      	b.n	2082 <HardFault_Handler_C+0x56>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
    2084:	4b17      	ldr	r3, [pc, #92]	; (20e4 <HardFault_Handler_C+0xb8>)
    2086:	6a9a      	ldr	r2, [r3, #40]	; 0x28
    2088:	4b16      	ldr	r3, [pc, #88]	; (20e4 <HardFault_Handler_C+0xb8>)
    208a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
    208c:	4915      	ldr	r1, [pc, #84]	; (20e4 <HardFault_Handler_C+0xb8>)
    208e:	4313      	orrs	r3, r2
    2090:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
    2092:	4a16      	ldr	r2, [pc, #88]	; (20ec <HardFault_Handler_C+0xc0>)
    2094:	697b      	ldr	r3, [r7, #20]
    2096:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
    2098:	697b      	ldr	r3, [r7, #20]
    209a:	2200      	movs	r2, #0
    209c:	f062 0210 	orn	r2, r2, #16
    20a0:	751a      	strb	r2, [r3, #20]
    20a2:	2200      	movs	r2, #0
    20a4:	f062 0241 	orn	r2, r2, #65	; 0x41
    20a8:	755a      	strb	r2, [r3, #21]
    20aa:	2200      	movs	r2, #0
    20ac:	f062 0252 	orn	r2, r2, #82	; 0x52
    20b0:	759a      	strb	r2, [r3, #22]
    20b2:	2200      	movs	r2, #0
    20b4:	f062 0221 	orn	r2, r2, #33	; 0x21
    20b8:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
    20ba:	697b      	ldr	r3, [r7, #20]
    20bc:	2200      	movs	r2, #0
    20be:	771a      	strb	r2, [r3, #28]
    20c0:	2200      	movs	r2, #0
    20c2:	775a      	strb	r2, [r3, #29]
    20c4:	2200      	movs	r2, #0
    20c6:	779a      	strb	r2, [r3, #30]
    20c8:	2200      	movs	r2, #0
    20ca:	f042 0201 	orr.w	r2, r2, #1
    20ce:	77da      	strb	r2, [r3, #31]
}
    20d0:	bf00      	nop
    20d2:	371c      	adds	r7, #28
    20d4:	46bd      	mov	sp, r7
    20d6:	bc80      	pop	{r7}
    20d8:	4770      	bx	lr
    20da:	bf00      	nop
    20dc:	e000edf0 	.word	0xe000edf0
    20e0:	ffff0000 	.word	0xffff0000
    20e4:	e000ed00 	.word	0xe000ed00
    20e8:	05fa0004 	.word	0x05fa0004
    20ec:	00002443 	.word	0x00002443

000020f0 <prv_cinit>:
extern uint32_t _ebss;
// End address for stack
extern uint32_t _estack;

// Prevent inlining to avoid persisting any variables on stack
__attribute__((noinline)) static void prv_cinit(void) {
    20f0:	b480      	push	{r7}
    20f2:	b085      	sub	sp, #20
    20f4:	af00      	add	r7, sp, #0
  // Initialize data and bss
  // Copy the data segment initializers from flash to SRAM
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    20f6:	4b11      	ldr	r3, [pc, #68]	; (213c <prv_cinit+0x4c>)
    20f8:	60fb      	str	r3, [r7, #12]
    20fa:	4b11      	ldr	r3, [pc, #68]	; (2140 <prv_cinit+0x50>)
    20fc:	60bb      	str	r3, [r7, #8]
    20fe:	e007      	b.n	2110 <prv_cinit+0x20>
    *(dst++) = *(src++);
    2100:	68ba      	ldr	r2, [r7, #8]
    2102:	1d13      	adds	r3, r2, #4
    2104:	60bb      	str	r3, [r7, #8]
    2106:	68fb      	ldr	r3, [r7, #12]
    2108:	1d19      	adds	r1, r3, #4
    210a:	60f9      	str	r1, [r7, #12]
    210c:	6812      	ldr	r2, [r2, #0]
    210e:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sdata, *src = &_sidata; dst < &_edata;) {
    2110:	68fb      	ldr	r3, [r7, #12]
    2112:	4a0c      	ldr	r2, [pc, #48]	; (2144 <prv_cinit+0x54>)
    2114:	4293      	cmp	r3, r2
    2116:	d3f3      	bcc.n	2100 <prv_cinit+0x10>
  }

  // Zero fill the bss segment.
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2118:	4b0b      	ldr	r3, [pc, #44]	; (2148 <prv_cinit+0x58>)
    211a:	607b      	str	r3, [r7, #4]
    211c:	e004      	b.n	2128 <prv_cinit+0x38>
    *(dst++) = 0;
    211e:	687b      	ldr	r3, [r7, #4]
    2120:	1d1a      	adds	r2, r3, #4
    2122:	607a      	str	r2, [r7, #4]
    2124:	2200      	movs	r2, #0
    2126:	601a      	str	r2, [r3, #0]
  for (uint32_t *dst = &_sbss; dst < &_ebss;) {
    2128:	687b      	ldr	r3, [r7, #4]
    212a:	4a08      	ldr	r2, [pc, #32]	; (214c <prv_cinit+0x5c>)
    212c:	4293      	cmp	r3, r2
    212e:	d3f6      	bcc.n	211e <prv_cinit+0x2e>
  }
}
    2130:	bf00      	nop
    2132:	3714      	adds	r7, #20
    2134:	46bd      	mov	sp, r7
    2136:	bc80      	pop	{r7}
    2138:	4770      	bx	lr
    213a:	bf00      	nop
    213c:	20000000 	.word	0x20000000
    2140:	20000000 	.word	0x20000000
    2144:	20000000 	.word	0x20000000
    2148:	2000005c 	.word	0x2000005c
    214c:	20000948 	.word	0x20000948

00002150 <DefaultIntHandler>:
static uint8_t s_buffer[10] __attribute__((aligned(4)));
void *g_unaligned_buffer;


// DefaultIntHandler is used for unpopulated interrupts
static void DefaultIntHandler(void) {
    2150:	b480      	push	{r7}
    2152:	af00      	add	r7, sp, #0
  __asm__("bkpt");
    2154:	be00      	bkpt	0x0000
  // Go into an infinite loop.
  while (1)
    2156:	e7fe      	b.n	2156 <DefaultIntHandler+0x6>

00002158 <NMI_Handler>:
    ;
}

static void NMI_Handler(void) {
    2158:	b580      	push	{r7, lr}
    215a:	af00      	add	r7, sp, #0
  DefaultIntHandler();
    215c:	f7ff fff8 	bl	2150 <DefaultIntHandler>
}
    2160:	bf00      	nop
    2162:	bd80      	pop	{r7, pc}

00002164 <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
    2164:	4932      	ldr	r1, [pc, #200]	; (2230 <exception_test+0x14>)
    2166:	4a33      	ldr	r2, [pc, #204]	; (2234 <exception_test+0x18>)
    2168:	600a      	str	r2, [r1, #0]
    216a:	f101 0104 	add.w	r1, r1, #4
    216e:	f01e 0f04 	tst.w	lr, #4
    2172:	bf0c      	ite	eq
    2174:	f3ef 8008 	mrseq	r0, MSP
    2178:	f3ef 8009 	mrsne	r0, PSP
    217c:	6802      	ldr	r2, [r0, #0]
    217e:	600a      	str	r2, [r1, #0]
    2180:	6842      	ldr	r2, [r0, #4]
    2182:	604a      	str	r2, [r1, #4]
    2184:	6882      	ldr	r2, [r0, #8]
    2186:	608a      	str	r2, [r1, #8]
    2188:	68c2      	ldr	r2, [r0, #12]
    218a:	60ca      	str	r2, [r1, #12]
    218c:	6902      	ldr	r2, [r0, #16]
    218e:	610a      	str	r2, [r1, #16]
    2190:	6942      	ldr	r2, [r0, #20]
    2192:	614a      	str	r2, [r1, #20]
    2194:	6982      	ldr	r2, [r0, #24]
    2196:	618a      	str	r2, [r1, #24]
    2198:	69c2      	ldr	r2, [r0, #28]
    219a:	61ca      	str	r2, [r1, #28]
    219c:	f101 011c 	add.w	r1, r1, #28
    21a0:	e8a1 0ff0 	stmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
    21a4:	f3ef 8209 	mrs	r2, PSP
    21a8:	600a      	str	r2, [r1, #0]
    21aa:	f3ef 8208 	mrs	r2, MSP
    21ae:	604a      	str	r2, [r1, #4]
    21b0:	f3ef 8214 	mrs	r2, CONTROL
    21b4:	608a      	str	r2, [r1, #8]
    21b6:	f3ef 8211 	mrs	r2, BASEPRI
    21ba:	60ca      	str	r2, [r1, #12]
    21bc:	f3ef 8210 	mrs	r2, PRIMASK
    21c0:	610a      	str	r2, [r1, #16]
    21c2:	f3ef 8213 	mrs	r2, FAULTMASK
    21c6:	614a      	str	r2, [r1, #20]
    21c8:	4819      	ldr	r0, [pc, #100]	; (2230 <exception_test+0x14>)
    21ca:	f7ff bf2f 	b.w	202c <HardFault_Handler_C>
}
    21ce:	bf00      	nop

000021d0 <MemoryManagement_Handler>:

static void MemoryManagement_Handler(void) {
    21d0:	b480      	push	{r7}
    21d2:	af00      	add	r7, sp, #0
 
}
    21d4:	bf00      	nop
    21d6:	46bd      	mov	sp, r7
    21d8:	bc80      	pop	{r7}
    21da:	4770      	bx	lr

000021dc <BusFault_Handler>:

static void BusFault_Handler(void) {
    21dc:	b480      	push	{r7}
    21de:	af00      	add	r7, sp, #0

}
    21e0:	bf00      	nop
    21e2:	46bd      	mov	sp, r7
    21e4:	bc80      	pop	{r7}
    21e6:	4770      	bx	lr

000021e8 <UsageFault_Handler>:

static void UsageFault_Handler(void) {
    21e8:	b480      	push	{r7}
    21ea:	af00      	add	r7, sp, #0

}
    21ec:	bf00      	nop
    21ee:	46bd      	mov	sp, r7
    21f0:	bc80      	pop	{r7}
    21f2:	4770      	bx	lr

000021f4 <Irq0_Handler>:

void Irq0_Handler(void) {
    21f4:	b480      	push	{r7}
    21f6:	af00      	add	r7, sp, #0

}
    21f8:	bf00      	nop
    21fa:	46bd      	mov	sp, r7
    21fc:	bc80      	pop	{r7}
    21fe:	4770      	bx	lr

00002200 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
    2200:	b480      	push	{r7}
    2202:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
    2204:	4b03      	ldr	r3, [pc, #12]	; (2214 <exception_init+0x14>)
    2206:	4a04      	ldr	r2, [pc, #16]	; (2218 <exception_init+0x18>)
    2208:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
    220a:	bf00      	nop
    220c:	46bd      	mov	sp, r7
    220e:	bc80      	pop	{r7}
    2210:	4770      	bx	lr
    2212:	bf00      	nop
    2214:	20000944 	.word	0x20000944
    2218:	20000125 	.word	0x20000125

0000221c <exception_test>:

void exception_test(void)
{
    221c:	b580      	push	{r7, lr}
    221e:	af00      	add	r7, sp, #0
  exception_init();
    2220:	f7ff ffee 	bl	2200 <exception_init>
  trigger_crash(0);
    2224:	2000      	movs	r0, #0
    2226:	f000 f8d5 	bl	23d4 <trigger_crash>
}
    222a:	bf00      	nop
    222c:	bd80      	pop	{r7, pc}
    222e:	0000      	.short	0x0000
    2230:	20000000 	.word	0x20000000
    2234:	dead55aa 	.word	0xdead55aa

00002238 <trigger_irq>:
#include "exception.h"

void trigger_irq(void) 
{
    2238:	b480      	push	{r7}
    223a:	af00      	add	r7, sp, #0
    NVIC->ISER[0] |= (0x1 << 1);
    223c:	4b09      	ldr	r3, [pc, #36]	; (2264 <trigger_irq+0x2c>)
    223e:	681b      	ldr	r3, [r3, #0]
    2240:	4a08      	ldr	r2, [pc, #32]	; (2264 <trigger_irq+0x2c>)
    2242:	f043 0302 	orr.w	r3, r3, #2
    2246:	6013      	str	r3, [r2, #0]

    // Pend an interrupt
    NVIC->ISPR[0] |= (0x1 << 1);
    2248:	4b06      	ldr	r3, [pc, #24]	; (2264 <trigger_irq+0x2c>)
    224a:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
    224e:	4a05      	ldr	r2, [pc, #20]	; (2264 <trigger_irq+0x2c>)
    2250:	f043 0302 	orr.w	r3, r3, #2
    2254:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
    // flush pipeline to ensure exception takes effect before we
    // return from this routine
    __asm("isb");
    2258:	f3bf 8f6f 	isb	sy
}
    225c:	bf00      	nop
    225e:	46bd      	mov	sp, r7
    2260:	bc80      	pop	{r7}
    2262:	4770      	bx	lr
    2264:	e000e100 	.word	0xe000e100

00002268 <stkerr_from_psp>:
valid. For example, the very last store of the hardware stacking could trigger the fault 
and all the other stores could be valid. However, the order the hardware pushes register 
state on the stack is implementation specific. So when inspecting the frame assume the 
values being looked at may be invalid!
*/
void stkerr_from_psp(void) {
    2268:	b5b0      	push	{r4, r5, r7, lr}
    226a:	b086      	sub	sp, #24
    226c:	af00      	add	r7, sp, #0
    226e:	466b      	mov	r3, sp
    2270:	461d      	mov	r5, r3
  extern uint32_t _sdata[];
  uint8_t dummy_variable;
  const size_t distance_to_ram_bottom = (uint32_t)&dummy_variable - (uint32_t)_sdata;
    2272:	1dfb      	adds	r3, r7, #7
    2274:	4a21      	ldr	r2, [pc, #132]	; (22fc <stkerr_from_psp+0x94>)
    2276:	1a9b      	subs	r3, r3, r2
    2278:	613b      	str	r3, [r7, #16]
  volatile uint8_t big_buf[distance_to_ram_bottom - 8];
    227a:	693b      	ldr	r3, [r7, #16]
    227c:	3b09      	subs	r3, #9
    227e:	60fb      	str	r3, [r7, #12]
    2280:	693b      	ldr	r3, [r7, #16]
    2282:	3b08      	subs	r3, #8
    2284:	4619      	mov	r1, r3
    2286:	f04f 0200 	mov.w	r2, #0
    228a:	f04f 0300 	mov.w	r3, #0
    228e:	f04f 0400 	mov.w	r4, #0
    2292:	00d4      	lsls	r4, r2, #3
    2294:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
    2298:	00cb      	lsls	r3, r1, #3
    229a:	693b      	ldr	r3, [r7, #16]
    229c:	3b08      	subs	r3, #8
    229e:	4619      	mov	r1, r3
    22a0:	f04f 0200 	mov.w	r2, #0
    22a4:	f04f 0300 	mov.w	r3, #0
    22a8:	f04f 0400 	mov.w	r4, #0
    22ac:	00d4      	lsls	r4, r2, #3
    22ae:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
    22b2:	00cb      	lsls	r3, r1, #3
    22b4:	693b      	ldr	r3, [r7, #16]
    22b6:	3b08      	subs	r3, #8
    22b8:	3307      	adds	r3, #7
    22ba:	08db      	lsrs	r3, r3, #3
    22bc:	00db      	lsls	r3, r3, #3
    22be:	ebad 0d03 	sub.w	sp, sp, r3
    22c2:	466b      	mov	r3, sp
    22c4:	3300      	adds	r3, #0
    22c6:	60bb      	str	r3, [r7, #8]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    22c8:	2300      	movs	r3, #0
    22ca:	617b      	str	r3, [r7, #20]
    22cc:	e009      	b.n	22e2 <stkerr_from_psp+0x7a>
    big_buf[i] = i;
    22ce:	697b      	ldr	r3, [r7, #20]
    22d0:	b2d9      	uxtb	r1, r3
    22d2:	68ba      	ldr	r2, [r7, #8]
    22d4:	697b      	ldr	r3, [r7, #20]
    22d6:	4413      	add	r3, r2
    22d8:	460a      	mov	r2, r1
    22da:	701a      	strb	r2, [r3, #0]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
    22dc:	697b      	ldr	r3, [r7, #20]
    22de:	3301      	adds	r3, #1
    22e0:	617b      	str	r3, [r7, #20]
    22e2:	693b      	ldr	r3, [r7, #16]
    22e4:	3b08      	subs	r3, #8
    22e6:	697a      	ldr	r2, [r7, #20]
    22e8:	429a      	cmp	r2, r3
    22ea:	d3f0      	bcc.n	22ce <stkerr_from_psp+0x66>
  }

  trigger_irq();
    22ec:	f7ff ffa4 	bl	2238 <trigger_irq>
    22f0:	46ad      	mov	sp, r5
}
    22f2:	bf00      	nop
    22f4:	3718      	adds	r7, #24
    22f6:	46bd      	mov	sp, r7
    22f8:	bdb0      	pop	{r4, r5, r7, pc}
    22fa:	bf00      	nop
    22fc:	20000000 	.word	0x20000000

00002300 <bad_memory_access_crash>:

int bad_memory_access_crash(void) {
    2300:	b480      	push	{r7}
    2302:	b083      	sub	sp, #12
    2304:	af00      	add	r7, sp, #0
  volatile uint32_t *bad_access = (volatile uint32_t *)0xdeadbeef;
    2306:	4b04      	ldr	r3, [pc, #16]	; (2318 <bad_memory_access_crash+0x18>)
    2308:	607b      	str	r3, [r7, #4]
  return *bad_access;
    230a:	687b      	ldr	r3, [r7, #4]
    230c:	681b      	ldr	r3, [r3, #0]
}
    230e:	4618      	mov	r0, r3
    2310:	370c      	adds	r7, #12
    2312:	46bd      	mov	sp, r7
    2314:	bc80      	pop	{r7}
    2316:	4770      	bx	lr
    2318:	deadbeef 	.word	0xdeadbeef

0000231c <read_from_bad_address>:
/*Bad Address Read*/
uint32_t read_from_bad_address(void) {
    231c:	b480      	push	{r7}
    231e:	af00      	add	r7, sp, #0
  return *(volatile uint32_t *)0xbadcafe;
    2320:	4b02      	ldr	r3, [pc, #8]	; (232c <read_from_bad_address+0x10>)
    2322:	681b      	ldr	r3, [r3, #0]
}
    2324:	4618      	mov	r0, r3
    2326:	46bd      	mov	sp, r7
    2328:	bc80      	pop	{r7}
    232a:	4770      	bx	lr
    232c:	0badcafe 	.word	0x0badcafe

00002330 <illegal_instruction_execution>:

/*eXecute Never Fault*/
int illegal_instruction_execution(void) {
    2330:	b580      	push	{r7, lr}
    2332:	b082      	sub	sp, #8
    2334:	af00      	add	r7, sp, #0
  int (*bad_instruction)(void) = (void *)0xE0000000;
    2336:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    233a:	607b      	str	r3, [r7, #4]
  return bad_instruction();
    233c:	687b      	ldr	r3, [r7, #4]
    233e:	4798      	blx	r3
    2340:	4603      	mov	r3, r0
}
    2342:	4618      	mov	r0, r3
    2344:	3708      	adds	r7, #8
    2346:	46bd      	mov	sp, r7
    2348:	bd80      	pop	{r7, pc}

0000234a <unaligned_double_word_read>:

void unaligned_double_word_read(void) {
    234a:	b480      	push	{r7}
    234c:	af00      	add	r7, sp, #0
//   extern void *g_unaligned_buffer;
//   uint64_t *buf = g_unaligned_buffer;
//   *buf = 0x1122334455667788;
}
    234e:	bf00      	nop
    2350:	46bd      	mov	sp, r7
    2352:	bc80      	pop	{r7}
    2354:	4770      	bx	lr

00002356 <bad_addr_double_word_write>:

/*Imprecise Fault*/
void bad_addr_double_word_write(void) {
    2356:	b490      	push	{r4, r7}
    2358:	b082      	sub	sp, #8
    235a:	af00      	add	r7, sp, #0
  volatile uint64_t *buf = (volatile uint64_t *)0x30000000;
    235c:	f04f 5340 	mov.w	r3, #805306368	; 0x30000000
    2360:	607b      	str	r3, [r7, #4]
  *buf = 0x1122334455667788;
    2362:	687a      	ldr	r2, [r7, #4]
    2364:	a404      	add	r4, pc, #16	; (adr r4, 2378 <bad_addr_double_word_write+0x22>)
    2366:	e9d4 3400 	ldrd	r3, r4, [r4]
    236a:	e9c2 3400 	strd	r3, r4, [r2]
}
    236e:	bf00      	nop
    2370:	3708      	adds	r7, #8
    2372:	46bd      	mov	sp, r7
    2374:	bc90      	pop	{r4, r7}
    2376:	4770      	bx	lr
    2378:	55667788 	.word	0x55667788
    237c:	11223344 	.word	0x11223344

00002380 <access_disabled_coprocessor>:
/*Coprocessor Fault*/
void access_disabled_coprocessor(void) {
    2380:	b480      	push	{r7}
    2382:	af00      	add	r7, sp, #0
  // FreeRTOS will automatically enable the FPU co-processor.
  // Let's disable it for the purposes of this example
  __asm volatile(
    2384:	4830      	ldr	r0, [pc, #192]	; (2448 <recover_from_task_fault+0x6>)
    2386:	f04f 0100 	mov.w	r1, #0
    238a:	6001      	str	r1, [r0, #0]
    238c:	f3bf 8f4f 	dsb	sy
      "mov r1, #0 \n"
      "str r1, [r0]	\n"
      "dsb \n"
    //   "vmov r0, s0 \n"
      );
}
    2390:	bf00      	nop
    2392:	46bd      	mov	sp, r7
    2394:	bc80      	pop	{r7}
    2396:	4770      	bx	lr

00002398 <usagefault>:
void usagefault(void)
{
    2398:	b480      	push	{r7}
    239a:	af00      	add	r7, sp, #0
    239c:	deff      	udf	#255	; 0xff

0000239e <busfault>:
    //udf 0xff
    __builtin_trap();
}

void busfault(void)
{
    239e:	b480      	push	{r7}
    23a0:	af00      	add	r7, sp, #0
    *(uint32_t*)0xdead0000 = 0x20;
    23a2:	4b03      	ldr	r3, [pc, #12]	; (23b0 <busfault+0x12>)
    23a4:	2220      	movs	r2, #32
    23a6:	601a      	str	r2, [r3, #0]
}
    23a8:	bf00      	nop
    23aa:	46bd      	mov	sp, r7
    23ac:	bc80      	pop	{r7}
    23ae:	4770      	bx	lr
    23b0:	dead0000 	.word	0xdead0000

000023b4 <memmanage>:
void memmanage(void)
{
    23b4:	b580      	push	{r7, lr}
    23b6:	b082      	sub	sp, #8
    23b8:	af00      	add	r7, sp, #0
    void (*func_in_xn_region)(void)=(void*)0xE0000000;
    23ba:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
    23be:	607b      	str	r3, [r7, #4]
    func_in_xn_region();
    23c0:	687b      	ldr	r3, [r7, #4]
    23c2:	4798      	blx	r3
}
    23c4:	bf00      	nop
    23c6:	3708      	adds	r7, #8
    23c8:	46bd      	mov	sp, r7
    23ca:	bd80      	pop	{r7, pc}

000023cc <Irq1_Handler>:

__attribute__((naked))
void Irq1_Handler(void) {
  __asm volatile(
    23cc:	f06f 001f 	mvn.w	r0, #31
    23d0:	4700      	bx	r0
      "ldr r0, =0xFFFFFFE0 \n"
      "bx r0 \n"
                 );
}
    23d2:	bf00      	nop

000023d4 <trigger_crash>:
//  4: Exception Entry Fault
//  5: Unaligned 8 byte read
//  6: Bad 4 byte read
//  7: Illegal EXC_RETURN
void trigger_crash(int crash_id) 
{
    23d4:	b580      	push	{r7, lr}
    23d6:	b082      	sub	sp, #8
    23d8:	af00      	add	r7, sp, #0
    23da:	6078      	str	r0, [r7, #4]
  switch (crash_id) {
    23dc:	687b      	ldr	r3, [r7, #4]
    23de:	2b07      	cmp	r3, #7
    23e0:	d82a      	bhi.n	2438 <trigger_crash+0x64>
    23e2:	a201      	add	r2, pc, #4	; (adr r2, 23e8 <trigger_crash+0x14>)
    23e4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
    23e8:	00002409 	.word	0x00002409
    23ec:	0000240f 	.word	0x0000240f
    23f0:	00002415 	.word	0x00002415
    23f4:	0000241b 	.word	0x0000241b
    23f8:	00002421 	.word	0x00002421
    23fc:	00002427 	.word	0x00002427
    2400:	0000242d 	.word	0x0000242d
    2404:	00002433 	.word	0x00002433
    case 0:
      illegal_instruction_execution();      
    2408:	f7ff ff92 	bl	2330 <illegal_instruction_execution>
      break;
    240c:	e015      	b.n	243a <trigger_crash+0x66>
    case 1:
      read_from_bad_address();
    240e:	f7ff ff85 	bl	231c <read_from_bad_address>
      break;
    2412:	e012      	b.n	243a <trigger_crash+0x66>
    case 2:
      access_disabled_coprocessor();
    2414:	f7ff ffb4 	bl	2380 <access_disabled_coprocessor>
      break;
    2418:	e00f      	b.n	243a <trigger_crash+0x66>
    case 3:
      bad_addr_double_word_write();
    241a:	f7ff ff9c 	bl	2356 <bad_addr_double_word_write>
      break;
    241e:	e00c      	b.n	243a <trigger_crash+0x66>
    case 4:
      stkerr_from_psp();
    2420:	f7ff ff22 	bl	2268 <stkerr_from_psp>
      break;
    2424:	e009      	b.n	243a <trigger_crash+0x66>
    case 5:
      unaligned_double_word_read();      
    2426:	f7ff ff90 	bl	234a <unaligned_double_word_read>
      break;
    242a:	e006      	b.n	243a <trigger_crash+0x66>
    case 6:
      bad_memory_access_crash();
    242c:	f7ff ff68 	bl	2300 <bad_memory_access_crash>
      break;
    2430:	e003      	b.n	243a <trigger_crash+0x66>
    case 7:
      trigger_irq();
    2432:	f7ff ff01 	bl	2238 <trigger_irq>
      break;
    2436:	e000      	b.n	243a <trigger_crash+0x66>
    default:
      break;
    2438:	bf00      	nop
  }
}
    243a:	bf00      	nop
    243c:	3708      	adds	r7, #8
    243e:	46bd      	mov	sp, r7
    2440:	bd80      	pop	{r7, pc}

00002442 <recover_from_task_fault>:
void recover_from_task_fault(void) 
{
    2442:	b480      	push	{r7}
    2444:	af00      	add	r7, sp, #0
  while (1) {
    2446:	e7fe      	b.n	2446 <recover_from_task_fault+0x4>
    2448:	e000ed88 	.word	0xe000ed88

0000244c <main>:
#include "hal.h"
#include "shell.h"

extern void exception_test(void);
void main(void)
{
    244c:	b580      	push	{r7, lr}
    244e:	af00      	add	r7, sp, #0

    printf("[%s] hello world\n", __func__);
    2450:	4904      	ldr	r1, [pc, #16]	; (2464 <main+0x18>)
    2452:	4805      	ldr	r0, [pc, #20]	; (2468 <main+0x1c>)
    2454:	f7fe fe45 	bl	10e2 <printf_>
    // shell_start();
    backtrace_test();
    2458:	f7ff fc18 	bl	1c8c <backtrace_test>
    exception_test();
    245c:	f7ff fede 	bl	221c <exception_test>
    // hal_mpu_test();
    while(1);
    2460:	e7fe      	b.n	2460 <main+0x14>
    2462:	bf00      	nop
    2464:	000031cc 	.word	0x000031cc
    2468:	000031b0 	.word	0x000031b0

0000246c <nmi_handler>:
}

void nmi_handler(void)
{
    246c:	b580      	push	{r7, lr}
    246e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    2470:	4902      	ldr	r1, [pc, #8]	; (247c <nmi_handler+0x10>)
    2472:	4803      	ldr	r0, [pc, #12]	; (2480 <nmi_handler+0x14>)
    2474:	f7fe fe35 	bl	10e2 <printf_>
    while(1);
    2478:	e7fe      	b.n	2478 <nmi_handler+0xc>
    247a:	bf00      	nop
    247c:	000031d4 	.word	0x000031d4
    2480:	000031c4 	.word	0x000031c4

00002484 <hard_fault_handler>:
}

void hard_fault_handler(void)
{
    2484:	b580      	push	{r7, lr}
    2486:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    2488:	4902      	ldr	r1, [pc, #8]	; (2494 <hard_fault_handler+0x10>)
    248a:	4803      	ldr	r0, [pc, #12]	; (2498 <hard_fault_handler+0x14>)
    248c:	f7fe fe29 	bl	10e2 <printf_>
    while(1);
    2490:	e7fe      	b.n	2490 <hard_fault_handler+0xc>
    2492:	bf00      	nop
    2494:	000031e0 	.word	0x000031e0
    2498:	000031c4 	.word	0x000031c4

0000249c <mem_manage_handler>:
}

void mem_manage_handler(void)
{
    249c:	b580      	push	{r7, lr}
    249e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    24a0:	4902      	ldr	r1, [pc, #8]	; (24ac <mem_manage_handler+0x10>)
    24a2:	4803      	ldr	r0, [pc, #12]	; (24b0 <mem_manage_handler+0x14>)
    24a4:	f7fe fe1d 	bl	10e2 <printf_>
    while(1);
    24a8:	e7fe      	b.n	24a8 <mem_manage_handler+0xc>
    24aa:	bf00      	nop
    24ac:	000031f4 	.word	0x000031f4
    24b0:	000031c4 	.word	0x000031c4

000024b4 <bus_fault_handler>:
}

void bus_fault_handler(void)
{
    24b4:	b580      	push	{r7, lr}
    24b6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    24b8:	4902      	ldr	r1, [pc, #8]	; (24c4 <bus_fault_handler+0x10>)
    24ba:	4803      	ldr	r0, [pc, #12]	; (24c8 <bus_fault_handler+0x14>)
    24bc:	f7fe fe11 	bl	10e2 <printf_>
    while(1);
    24c0:	e7fe      	b.n	24c0 <bus_fault_handler+0xc>
    24c2:	bf00      	nop
    24c4:	00003208 	.word	0x00003208
    24c8:	000031c4 	.word	0x000031c4

000024cc <usage_fault_handler>:
}

void usage_fault_handler(void)
{
    24cc:	b580      	push	{r7, lr}
    24ce:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    24d0:	4902      	ldr	r1, [pc, #8]	; (24dc <usage_fault_handler+0x10>)
    24d2:	4803      	ldr	r0, [pc, #12]	; (24e0 <usage_fault_handler+0x14>)
    24d4:	f7fe fe05 	bl	10e2 <printf_>
    while(1);
    24d8:	e7fe      	b.n	24d8 <usage_fault_handler+0xc>
    24da:	bf00      	nop
    24dc:	0000321c 	.word	0x0000321c
    24e0:	000031c4 	.word	0x000031c4

000024e4 <svc_handler>:
}

void svc_handler(void)
{
    24e4:	b580      	push	{r7, lr}
    24e6:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    24e8:	4902      	ldr	r1, [pc, #8]	; (24f4 <svc_handler+0x10>)
    24ea:	4803      	ldr	r0, [pc, #12]	; (24f8 <svc_handler+0x14>)
    24ec:	f7fe fdf9 	bl	10e2 <printf_>
    while(1);
    24f0:	e7fe      	b.n	24f0 <svc_handler+0xc>
    24f2:	bf00      	nop
    24f4:	00003230 	.word	0x00003230
    24f8:	000031c4 	.word	0x000031c4

000024fc <debug_mon_handler>:
}

void debug_mon_handler(void)
{
    24fc:	b580      	push	{r7, lr}
    24fe:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    2500:	4902      	ldr	r1, [pc, #8]	; (250c <debug_mon_handler+0x10>)
    2502:	4803      	ldr	r0, [pc, #12]	; (2510 <debug_mon_handler+0x14>)
    2504:	f7fe fded 	bl	10e2 <printf_>
    while(1);
    2508:	e7fe      	b.n	2508 <debug_mon_handler+0xc>
    250a:	bf00      	nop
    250c:	0000323c 	.word	0x0000323c
    2510:	000031c4 	.word	0x000031c4

00002514 <pend_sv_handler>:
}

void pend_sv_handler(void)
{
    2514:	b580      	push	{r7, lr}
    2516:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    2518:	4902      	ldr	r1, [pc, #8]	; (2524 <pend_sv_handler+0x10>)
    251a:	4803      	ldr	r0, [pc, #12]	; (2528 <pend_sv_handler+0x14>)
    251c:	f7fe fde1 	bl	10e2 <printf_>
    while(1);
    2520:	e7fe      	b.n	2520 <pend_sv_handler+0xc>
    2522:	bf00      	nop
    2524:	00003250 	.word	0x00003250
    2528:	000031c4 	.word	0x000031c4

0000252c <sys_tick_handler>:
}

void sys_tick_handler(void)
{
    252c:	b580      	push	{r7, lr}
    252e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
    2530:	4902      	ldr	r1, [pc, #8]	; (253c <sys_tick_handler+0x10>)
    2532:	4803      	ldr	r0, [pc, #12]	; (2540 <sys_tick_handler+0x14>)
    2534:	f7fe fdd5 	bl	10e2 <printf_>
    while(1);
    2538:	e7fe      	b.n	2538 <sys_tick_handler+0xc>
    253a:	bf00      	nop
    253c:	00003260 	.word	0x00003260
    2540:	000031c4 	.word	0x000031c4

Disassembly of section .text.Default_Handler:

00003408 <BusFault_Handler>:
.section .text.Default_Handler,"ax",%progbits
Default_Handler:
    b .
    3408:	e7fe      	b.n	3408 <BusFault_Handler>
