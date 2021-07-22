
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x40>:
   0:	20001008 	.word	0x20001008
   4:	00000040 	.word	0x00000040
   8:	00000369 	.word	0x00000369
   c:	00000369 	.word	0x00000369
  10:	00000369 	.word	0x00000369
  14:	00000369 	.word	0x00000369
  18:	00000369 	.word	0x00000369
  1c:	00000368 	.word	0x00000368
  20:	00000368 	.word	0x00000368
  24:	00000368 	.word	0x00000368
  28:	00000368 	.word	0x00000368
  2c:	00000369 	.word	0x00000369
  30:	00000369 	.word	0x00000369
  34:	00000368 	.word	0x00000368
  38:	00000369 	.word	0x00000369
  3c:	00000369 	.word	0x00000369

00000040 <_start>:

.global _start

_start:

ldr r1, =main
  40:	4900      	ldr	r1, [pc, #0]	; (44 <_start+0x4>)
bx r1
  42:	4708      	bx	r1
ldr r1, =main
  44:	0000004d 	.word	0x0000004d
  48:	11223344 	.word	0x11223344

0000004c <main>:
#include <stdint.h>
#include "hal.h"

void main(void)
{
  4c:	b580      	push	{r7, lr}
  4e:	af00      	add	r7, sp, #0
    lite_printf("hello world\n");
  50:	4802      	ldr	r0, [pc, #8]	; (5c <main+0x10>)
  52:	f000 f85d 	bl	110 <lite_printf>
    hal_mpu_test();
  56:	f000 f803 	bl	60 <hal_mpu_test>
    while(1);
  5a:	e7fe      	b.n	5a <main+0xe>
  5c:	0000036c 	.word	0x0000036c

00000060 <hal_mpu_test>:
#include "lm3s811.h"
#include "hal_mpu.h"

void hal_mpu_test(void)
{
  60:	b480      	push	{r7}
  62:	af00      	add	r7, sp, #0

  64:	bf00      	nop
  66:	46bd      	mov	sp, r7
  68:	bc80      	pop	{r7}
  6a:	4770      	bx	lr

0000006c <m_pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
  6c:	b480      	push	{r7}
  6e:	b083      	sub	sp, #12
  70:	af00      	add	r7, sp, #0
  72:	6078      	str	r0, [r7, #4]
  74:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
  76:	2301      	movs	r3, #1
  78:	60bb      	str	r3, [r7, #8]
    while (y--)
  7a:	e004      	b.n	86 <m_pow+0x1a>
    {
        sum *= x;
  7c:	687a      	ldr	r2, [r7, #4]
  7e:	68bb      	ldr	r3, [r7, #8]
  80:	fb02 f303 	mul.w	r3, r2, r3
  84:	60bb      	str	r3, [r7, #8]
    while (y--)
  86:	683b      	ldr	r3, [r7, #0]
  88:	1e5a      	subs	r2, r3, #1
  8a:	603a      	str	r2, [r7, #0]
  8c:	2b00      	cmp	r3, #0
  8e:	d1f5      	bne.n	7c <m_pow+0x10>
    }
    return sum;
  90:	68bb      	ldr	r3, [r7, #8]
}
  92:	4618      	mov	r0, r3
  94:	370c      	adds	r7, #12
  96:	46bd      	mov	sp, r7
  98:	bc80      	pop	{r7}
  9a:	4770      	bx	lr

0000009c <m_putchar>:
void m_putchar(const char ch)
{
  9c:	b480      	push	{r7}
  9e:	b081      	sub	sp, #4
  a0:	af00      	add	r7, sp, #0
  a2:	4603      	mov	r3, r0
  a4:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
  a6:	4a04      	ldr	r2, [pc, #16]	; (b8 <m_putchar+0x1c>)
  a8:	783b      	ldrb	r3, [r7, #0]
  aa:	6013      	str	r3, [r2, #0]
}
  ac:	bf00      	nop
  ae:	3704      	adds	r7, #4
  b0:	46bd      	mov	sp, r7
  b2:	bc80      	pop	{r7}
  b4:	4770      	bx	lr
  b6:	bf00      	nop
  b8:	4000c000 	.word	0x4000c000

000000bc <m_putstr>:
void m_putstr(const char *str)
{
  bc:	b580      	push	{r7, lr}
  be:	b081      	sub	sp, #4
  c0:	af00      	add	r7, sp, #0
  c2:	6038      	str	r0, [r7, #0]
    while (*str)
  c4:	e006      	b.n	d4 <m_putstr+0x18>
    {
        m_putchar(*str++);
  c6:	683b      	ldr	r3, [r7, #0]
  c8:	1c5a      	adds	r2, r3, #1
  ca:	603a      	str	r2, [r7, #0]
  cc:	781b      	ldrb	r3, [r3, #0]
  ce:	4618      	mov	r0, r3
  d0:	f7ff ffe4 	bl	9c <m_putchar>
    while (*str)
  d4:	683b      	ldr	r3, [r7, #0]
  d6:	781b      	ldrb	r3, [r3, #0]
  d8:	2b00      	cmp	r3, #0
  da:	d1f4      	bne.n	c6 <m_putstr+0xa>
    }
}
  dc:	bf00      	nop
  de:	3704      	adds	r7, #4
  e0:	46bd      	mov	sp, r7
  e2:	bd80      	pop	{r7, pc}

000000e4 <m_strlen>:
uint32_t m_strlen (const char *__s)
{
  e4:	b480      	push	{r7}
  e6:	b082      	sub	sp, #8
  e8:	af00      	add	r7, sp, #0
  ea:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
  ec:	2300      	movs	r3, #0
  ee:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
  f0:	e002      	b.n	f8 <m_strlen+0x14>
  f2:	687b      	ldr	r3, [r7, #4]
  f4:	3301      	adds	r3, #1
  f6:	607b      	str	r3, [r7, #4]
  f8:	683b      	ldr	r3, [r7, #0]
  fa:	1c5a      	adds	r2, r3, #1
  fc:	603a      	str	r2, [r7, #0]
  fe:	781b      	ldrb	r3, [r3, #0]
 100:	2b00      	cmp	r3, #0
 102:	d1f6      	bne.n	f2 <m_strlen+0xe>
    return i;
 104:	687b      	ldr	r3, [r7, #4]
}
 106:	4618      	mov	r0, r3
 108:	3708      	adds	r7, #8
 10a:	46bd      	mov	sp, r7
 10c:	bc80      	pop	{r7}
 10e:	4770      	bx	lr

00000110 <lite_printf>:
int lite_printf(const char *str, ...)
{
 110:	b40f      	push	{r0, r1, r2, r3}
 112:	b590      	push	{r4, r7, lr}
 114:	b087      	sub	sp, #28
 116:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
 118:	2300      	movs	r3, #0
 11a:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 11c:	2300      	movs	r3, #0
 11e:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 120:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 124:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 126:	e10d      	b.n	344 <lite_printf+0x234>
    {
        switch (*str)
 128:	6abb      	ldr	r3, [r7, #40]	; 0x28
 12a:	781b      	ldrb	r3, [r3, #0]
 12c:	2b0d      	cmp	r3, #13
 12e:	f000 80f5 	beq.w	31c <lite_printf+0x20c>
 132:	2b25      	cmp	r3, #37	; 0x25
 134:	d003      	beq.n	13e <lite_printf+0x2e>
 136:	2b0a      	cmp	r3, #10
 138:	f000 80e9 	beq.w	30e <lite_printf+0x1fe>
 13c:	e0f5      	b.n	32a <lite_printf+0x21a>
        {
        case '%': //发送参数
            str++;
 13e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 140:	3301      	adds	r3, #1
 142:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 144:	6abb      	ldr	r3, [r7, #40]	; 0x28
 146:	781b      	ldrb	r3, [r3, #0]
 148:	3b63      	subs	r3, #99	; 0x63
 14a:	2b15      	cmp	r3, #21
 14c:	f200 80f6 	bhi.w	33c <lite_printf+0x22c>
 150:	a201      	add	r2, pc, #4	; (adr r2, 158 <lite_printf+0x48>)
 152:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 156:	bf00      	nop
 158:	000002f5 	.word	0x000002f5
 15c:	000001b1 	.word	0x000001b1
 160:	0000033d 	.word	0x0000033d
 164:	0000033d 	.word	0x0000033d
 168:	0000033d 	.word	0x0000033d
 16c:	0000033d 	.word	0x0000033d
 170:	0000033d 	.word	0x0000033d
 174:	0000033d 	.word	0x0000033d
 178:	0000033d 	.word	0x0000033d
 17c:	0000033d 	.word	0x0000033d
 180:	0000033d 	.word	0x0000033d
 184:	0000033d 	.word	0x0000033d
 188:	0000033d 	.word	0x0000033d
 18c:	0000033d 	.word	0x0000033d
 190:	0000033d 	.word	0x0000033d
 194:	0000033d 	.word	0x0000033d
 198:	000002d5 	.word	0x000002d5
 19c:	0000033d 	.word	0x0000033d
 1a0:	0000033d 	.word	0x0000033d
 1a4:	0000033d 	.word	0x0000033d
 1a8:	0000033d 	.word	0x0000033d
 1ac:	0000023b 	.word	0x0000023b
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
 1b0:	683b      	ldr	r3, [r7, #0]
 1b2:	1d1a      	adds	r2, r3, #4
 1b4:	603a      	str	r2, [r7, #0]
 1b6:	681b      	ldr	r3, [r3, #0]
 1b8:	60bb      	str	r3, [r7, #8]
                r_val = val;
 1ba:	68bb      	ldr	r3, [r7, #8]
 1bc:	61bb      	str	r3, [r7, #24]
                count = 0;
 1be:	2300      	movs	r3, #0
 1c0:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 1c2:	e00a      	b.n	1da <lite_printf+0xca>

                {
                    count++; //整数的长度
 1c4:	7dfb      	ldrb	r3, [r7, #23]
 1c6:	3301      	adds	r3, #1
 1c8:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 1ca:	69bb      	ldr	r3, [r7, #24]
 1cc:	4a64      	ldr	r2, [pc, #400]	; (360 <lite_printf+0x250>)
 1ce:	fb82 1203 	smull	r1, r2, r2, r3
 1d2:	1092      	asrs	r2, r2, #2
 1d4:	17db      	asrs	r3, r3, #31
 1d6:	1ad3      	subs	r3, r2, r3
 1d8:	61bb      	str	r3, [r7, #24]
                while (r_val)
 1da:	69bb      	ldr	r3, [r7, #24]
 1dc:	2b00      	cmp	r3, #0
 1de:	d1f1      	bne.n	1c4 <lite_printf+0xb4>
                }

                res += count;
 1e0:	7dfb      	ldrb	r3, [r7, #23]
 1e2:	693a      	ldr	r2, [r7, #16]
 1e4:	4413      	add	r3, r2
 1e6:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 1e8:	68bb      	ldr	r3, [r7, #8]
 1ea:	61bb      	str	r3, [r7, #24]
                while (count)
 1ec:	e021      	b.n	232 <lite_printf+0x122>
                {
                    ch = r_val / m_pow(10, count - 1);
 1ee:	69bc      	ldr	r4, [r7, #24]
 1f0:	7dfb      	ldrb	r3, [r7, #23]
 1f2:	3b01      	subs	r3, #1
 1f4:	4619      	mov	r1, r3
 1f6:	200a      	movs	r0, #10
 1f8:	f7ff ff38 	bl	6c <m_pow>
 1fc:	4603      	mov	r3, r0
 1fe:	fbb4 f3f3 	udiv	r3, r4, r3
 202:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 204:	7dfb      	ldrb	r3, [r7, #23]
 206:	3b01      	subs	r3, #1
 208:	4619      	mov	r1, r3
 20a:	200a      	movs	r0, #10
 20c:	f7ff ff2e 	bl	6c <m_pow>
 210:	4602      	mov	r2, r0
 212:	69bb      	ldr	r3, [r7, #24]
 214:	fbb3 f1f2 	udiv	r1, r3, r2
 218:	fb02 f201 	mul.w	r2, r2, r1
 21c:	1a9b      	subs	r3, r3, r2
 21e:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 220:	79fb      	ldrb	r3, [r7, #7]
 222:	3330      	adds	r3, #48	; 0x30
 224:	b2db      	uxtb	r3, r3
 226:	4618      	mov	r0, r3
 228:	f7ff ff38 	bl	9c <m_putchar>
                    //数字到字符的转换
                    count--;
 22c:	7dfb      	ldrb	r3, [r7, #23]
 22e:	3b01      	subs	r3, #1
 230:	75fb      	strb	r3, [r7, #23]
                while (count)
 232:	7dfb      	ldrb	r3, [r7, #23]
 234:	2b00      	cmp	r3, #0
 236:	d1da      	bne.n	1ee <lite_printf+0xde>
                }
                break;
 238:	e068      	b.n	30c <lite_printf+0x1fc>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 23a:	683b      	ldr	r3, [r7, #0]
 23c:	1d1a      	adds	r2, r3, #4
 23e:	603a      	str	r2, [r7, #0]
 240:	681b      	ldr	r3, [r3, #0]
 242:	60bb      	str	r3, [r7, #8]
                r_val = val;
 244:	68bb      	ldr	r3, [r7, #8]
 246:	61bb      	str	r3, [r7, #24]
                count = 0;
 248:	2300      	movs	r3, #0
 24a:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 24c:	e008      	b.n	260 <lite_printf+0x150>

                {
                    count++; //整数的长度
 24e:	7dfb      	ldrb	r3, [r7, #23]
 250:	3301      	adds	r3, #1
 252:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 254:	69bb      	ldr	r3, [r7, #24]
 256:	2b00      	cmp	r3, #0
 258:	da00      	bge.n	25c <lite_printf+0x14c>
 25a:	330f      	adds	r3, #15
 25c:	111b      	asrs	r3, r3, #4
 25e:	61bb      	str	r3, [r7, #24]
                while (r_val)
 260:	69bb      	ldr	r3, [r7, #24]
 262:	2b00      	cmp	r3, #0
 264:	d1f3      	bne.n	24e <lite_printf+0x13e>
                }

                res += count;
 266:	7dfb      	ldrb	r3, [r7, #23]
 268:	693a      	ldr	r2, [r7, #16]
 26a:	4413      	add	r3, r2
 26c:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 26e:	68bb      	ldr	r3, [r7, #8]
 270:	61bb      	str	r3, [r7, #24]
                while (count)
 272:	e02b      	b.n	2cc <lite_printf+0x1bc>
                {
                    ch = r_val / m_pow(16, count - 1);
 274:	69bc      	ldr	r4, [r7, #24]
 276:	7dfb      	ldrb	r3, [r7, #23]
 278:	3b01      	subs	r3, #1
 27a:	4619      	mov	r1, r3
 27c:	2010      	movs	r0, #16
 27e:	f7ff fef5 	bl	6c <m_pow>
 282:	4603      	mov	r3, r0
 284:	fbb4 f3f3 	udiv	r3, r4, r3
 288:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 28a:	7dfb      	ldrb	r3, [r7, #23]
 28c:	3b01      	subs	r3, #1
 28e:	4619      	mov	r1, r3
 290:	2010      	movs	r0, #16
 292:	f7ff feeb 	bl	6c <m_pow>
 296:	4602      	mov	r2, r0
 298:	69bb      	ldr	r3, [r7, #24]
 29a:	fbb3 f1f2 	udiv	r1, r3, r2
 29e:	fb02 f201 	mul.w	r2, r2, r1
 2a2:	1a9b      	subs	r3, r3, r2
 2a4:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 2a6:	79fb      	ldrb	r3, [r7, #7]
 2a8:	2b09      	cmp	r3, #9
 2aa:	d806      	bhi.n	2ba <lite_printf+0x1aa>
                        m_putchar(ch + '0');
 2ac:	79fb      	ldrb	r3, [r7, #7]
 2ae:	3330      	adds	r3, #48	; 0x30
 2b0:	b2db      	uxtb	r3, r3
 2b2:	4618      	mov	r0, r3
 2b4:	f7ff fef2 	bl	9c <m_putchar>
 2b8:	e005      	b.n	2c6 <lite_printf+0x1b6>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 2ba:	79fb      	ldrb	r3, [r7, #7]
 2bc:	3357      	adds	r3, #87	; 0x57
 2be:	b2db      	uxtb	r3, r3
 2c0:	4618      	mov	r0, r3
 2c2:	f7ff feeb 	bl	9c <m_putchar>
                    count--;
 2c6:	7dfb      	ldrb	r3, [r7, #23]
 2c8:	3b01      	subs	r3, #1
 2ca:	75fb      	strb	r3, [r7, #23]
                while (count)
 2cc:	7dfb      	ldrb	r3, [r7, #23]
 2ce:	2b00      	cmp	r3, #0
 2d0:	d1d0      	bne.n	274 <lite_printf+0x164>
                }
                break;
 2d2:	e01b      	b.n	30c <lite_printf+0x1fc>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 2d4:	683b      	ldr	r3, [r7, #0]
 2d6:	1d1a      	adds	r2, r3, #4
 2d8:	603a      	str	r2, [r7, #0]
 2da:	681b      	ldr	r3, [r3, #0]
 2dc:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 2de:	68f8      	ldr	r0, [r7, #12]
 2e0:	f7ff feec 	bl	bc <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 2e4:	68f8      	ldr	r0, [r7, #12]
 2e6:	f7ff fefd 	bl	e4 <m_strlen>
 2ea:	4602      	mov	r2, r0
 2ec:	693b      	ldr	r3, [r7, #16]
 2ee:	4413      	add	r3, r2
 2f0:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 2f2:	e00b      	b.n	30c <lite_printf+0x1fc>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 2f4:	683b      	ldr	r3, [r7, #0]
 2f6:	1d1a      	adds	r2, r3, #4
 2f8:	603a      	str	r2, [r7, #0]
 2fa:	681b      	ldr	r3, [r3, #0]
 2fc:	b2db      	uxtb	r3, r3
 2fe:	4618      	mov	r0, r3
 300:	f7ff fecc 	bl	9c <m_putchar>
                res += 1;
 304:	693b      	ldr	r3, [r7, #16]
 306:	3301      	adds	r3, #1
 308:	613b      	str	r3, [r7, #16]

                break;
 30a:	bf00      	nop
            default:;
            }
            break;
 30c:	e016      	b.n	33c <lite_printf+0x22c>
        case '\n':
            m_putchar('\n');
 30e:	200a      	movs	r0, #10
 310:	f7ff fec4 	bl	9c <m_putchar>
            res += 1;
 314:	693b      	ldr	r3, [r7, #16]
 316:	3301      	adds	r3, #1
 318:	613b      	str	r3, [r7, #16]
            break;
 31a:	e010      	b.n	33e <lite_printf+0x22e>
        case '\r':
            m_putchar('\r');
 31c:	200d      	movs	r0, #13
 31e:	f7ff febd 	bl	9c <m_putchar>
            res += 1;
 322:	693b      	ldr	r3, [r7, #16]
 324:	3301      	adds	r3, #1
 326:	613b      	str	r3, [r7, #16]
            break;
 328:	e009      	b.n	33e <lite_printf+0x22e>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 32a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 32c:	781b      	ldrb	r3, [r3, #0]
 32e:	4618      	mov	r0, r3
 330:	f7ff feb4 	bl	9c <m_putchar>
            res += 1;
 334:	693b      	ldr	r3, [r7, #16]
 336:	3301      	adds	r3, #1
 338:	613b      	str	r3, [r7, #16]
 33a:	e000      	b.n	33e <lite_printf+0x22e>
            break;
 33c:	bf00      	nop
        }

        str++;
 33e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 340:	3301      	adds	r3, #1
 342:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 344:	6abb      	ldr	r3, [r7, #40]	; 0x28
 346:	781b      	ldrb	r3, [r3, #0]
 348:	2b00      	cmp	r3, #0
 34a:	f47f aeed 	bne.w	128 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 34e:	693b      	ldr	r3, [r7, #16]
 350:	4618      	mov	r0, r3
 352:	371c      	adds	r7, #28
 354:	46bd      	mov	sp, r7
 356:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 35a:	b004      	add	sp, #16
 35c:	4770      	bx	lr
 35e:	bf00      	nop
 360:	66666667 	.word	0x66666667
 364:	55aa55aa 	.word	0x55aa55aa

Disassembly of section .text.default_handler:

00000368 <bus_fault_handler>:
    b .
 368:	e7fe      	b.n	368 <bus_fault_handler>
