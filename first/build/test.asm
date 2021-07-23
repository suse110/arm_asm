
./build/test.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <_start-0x40>:
   0:	20001008 	.word	0x20001008
   4:	00000040 	.word	0x00000040
   8:	000005b9 	.word	0x000005b9
   c:	000005b9 	.word	0x000005b9
  10:	0000024d 	.word	0x0000024d
  14:	000005b9 	.word	0x000005b9
  18:	000005b9 	.word	0x000005b9
  1c:	000005b8 	.word	0x000005b8
  20:	000005b8 	.word	0x000005b8
  24:	000005b8 	.word	0x000005b8
  28:	000005b8 	.word	0x000005b8
  2c:	000005b9 	.word	0x000005b9
  30:	000005b9 	.word	0x000005b9
  34:	000005b8 	.word	0x000005b8
  38:	000005b9 	.word	0x000005b9
  3c:	000005b9 	.word	0x000005b9

00000040 <_start>:

_start:

# bl mmu_setting_1

ldr r1, =main
  40:	494a      	ldr	r1, [pc, #296]	; (16c <MpuRegionDisable+0x1a>)
bx r1
  42:	4708      	bx	r1

00000044 <mmu_setting_1>:
特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     缓存可
系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格乎序，XN
 */
/* MPU region基址寄存器 */
LDR R0, =0xE000ED9C
  44:	484a      	ldr	r0, [pc, #296]	; (170 <MpuRegionDisable+0x1e>)
/* 基址=0x00000000, region=0, valid=1  */
LDR R1, =0x00000010
  46:	f04f 0110 	mov.w	r1, #16
/* 设置region 0的基址 */
STR R1, [R0, #0]
  4a:	6001      	str	r1, [r0, #0]
/* R/W, TEX=0,S=1,C=1,B=1, 16MB, Enable=1  */
LDR R1, =0x0307002F
  4c:	4949      	ldr	r1, [pc, #292]	; (174 <MpuRegionDisable+0x22>)
/* MPU Region 属性及容量寄存器 */
STR R1, [R0, #4]
  4e:	6041      	str	r1, [r0, #4]
/* 基址=0x08000000, region=1, valid=1 */
LDR R1, =0x08000011
  50:	4949      	ldr	r1, [pc, #292]	; (178 <MpuRegionDisable+0x26>)
/* MPU Region 基址寄存器 */
STR R1, [R0, #0]
  52:	6001      	str	r1, [r0, #0]
/* R/W, TEX=0,S=1,C=1,B=1, 4MB, Enable=1  */
LDR R1, =0x0307002B
  54:	4949      	ldr	r1, [pc, #292]	; (17c <MpuRegionDisable+0x2a>)
/* MPU Region 属性及容量寄存器 */
STR R1, [R0, #4]
  56:	6041      	str	r1, [r0, #4]
/* 基址=0x40000000, region=2, valid=1  */
LDR R1, =0x40000012
  58:	4949      	ldr	r1, [pc, #292]	; (180 <MpuRegionDisable+0x2e>)
/* MPU Region基址寄存器 */
STR R1, [R0, #0]
  5a:	6001      	str	r1, [r0, #0]
/* R/W, TEX=0,S=1,C=0,B=1, 512MB, Enable=1  */
LDR R1, =0x03050039
  5c:	4949      	ldr	r1, [pc, #292]	; (184 <MpuRegionDisable+0x32>)
/* MPU Region属性及容量寄存器 */
STR R1, [R0, #4]
  5e:	6041      	str	r1, [r0, #4]
/* 基址=0xE0000000, region=3, valid=1 */
LDR R1, =0xE0000013
  60:	4949      	ldr	r1, [pc, #292]	; (188 <MpuRegionDisable+0x36>)
/* MPU Region 基址寄存器 */
STR R1, [R0, #0]
  62:	6001      	str	r1, [r0, #0]
/* R/W, TEX=0,S=1,C=0,B=0, 1MB, Enable=1  */
LDR R1, =0x03040027
  64:	4949      	ldr	r1, [pc, #292]	; (18c <MpuRegionDisable+0x3a>)
/* MPU Region 属性及容量寄存器 */
STR R1, [R0, #4]
  66:	6041      	str	r1, [r0, #4]
/* 使能MPU  */
MOV R1, #1
  68:	f04f 0101 	mov.w	r1, #1
/* MPU控制寄存器(0xE000ED9C-8=0xE000ED94) */
STR R1, [R0,#-8]
  6c:	f840 1c08 	str.w	r1, [r0, #-8]

bx lr
  70:	4770      	bx	lr

00000072 <mmu_setting_2>:

mmu_setting_2:
/* MPU reigon基址寄存器 */
LDR    R0, =0xE000ED9C
  72:	483f      	ldr	r0, [pc, #252]	; (170 <MpuRegionDisable+0x1e>)
/* 乘定Н的MPU初始化数值表  */
LDR    R1, =MPUconfigTab
  74:	4946      	ldr	r1, [pc, #280]	; (190 <MpuRegionDisable+0x3e>)
/* 一起从表中读完8个字 */
LDMIA R1!, {R2-R9}
  76:	e8b1 03fc 	ldmia.w	r1!, {r2, r3, r4, r5, r6, r7, r8, r9}
/* 一起初始化4个region  */
STMIA R0!, {R2-R9}
  7a:	e8a0 03fc 	stmia.w	r0!, {r2, r3, r4, r5, r6, r7, r8, r9}
B MPUconfigEnd
  7e:	e00f      	b.n	a0 <MPUconfigEnd>

00000080 <MPUconfigTab>:
  80:	00000010 	.word	0x00000010
  84:	0307002f 	.word	0x0307002f
  88:	08000011 	.word	0x08000011
  8c:	0307002b 	.word	0x0307002b
  90:	40000012 	.word	0x40000012
  94:	03050039 	.word	0x03050039
  98:	e0000013 	.word	0xe0000013
  9c:	03040027 	.word	0x03040027

000000a0 <MPUconfigEnd>:
.word 0xE0000013
/* R/W, TEX=0,S=1,C=0,B=0, 1MB, Enable=1  */
.word 0x03040027
MPUconfigEnd:
/* MPU 控制寄存器 */
LDR R0, =0xE000ED94
  a0:	483c      	ldr	r0, [pc, #240]	; (194 <MpuRegionDisable+0x42>)
/* 使能MPU  */
MOV R1, #1
  a2:	f04f 0101 	mov.w	r1, #1
STR R1, [R0]
  a6:	6001      	str	r1, [r0, #0]
bx lr
  a8:	4770      	bx	lr

000000aa <MpuSetup>:

mmu_setting_3:

/* 入口ߑ数，它内部呼叫若干子程序来完成MPU设置 */
MpuSetup:
PUSH {R0-R6,LR}
  aa:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
/* MPU 控制寄存器 */
LDR R0, =0xE000ED94
  ac:	4839      	ldr	r0, [pc, #228]	; (194 <MpuRegionDisable+0x42>)
MOV R1, #0
  ae:	f04f 0100 	mov.w	r1, #0
/* 䜡置前先䰸能MPU  */

/* --- Region #0 ---  */
STR R1, [R0]
  b2:	6001      	str	r1, [r0, #0]

/* Region 0: 基址 = 0x00000000 */
LDR R0, =0x00000000
  b4:	f04f 0000 	mov.w	r0, #0

/* Region 0: Region号 = 0  */
MOV R1, #0x0
  b8:	f04f 0100 	mov.w	r1, #0
/* Region 0: 容量 = 0x17 (16MB)  */
MOV R2, #0x17
  bc:	f04f 0217 	mov.w	r2, #23
/* Region 0: AP = 0x3 ( ܼ访问)  */
MOV R3, #0x3
  c0:	f04f 0303 	mov.w	r3, #3
/* Region 0: MemAttrib = 0x7  */
MOV R4, #0x7
  c4:	f04f 0407 	mov.w	r4, #7
/* Region 0: 子region䰸能=0  */
MOV R5, #0x0
  c8:	f04f 0500 	mov.w	r5, #0
/* Region 0: {XN, Enable} = 0,1  */
MOV R6, #0x1
  cc:	f04f 0601 	mov.w	r6, #1

/* --- Region #1 ---  */
BL MpuRegionSetup
  d0:	f000 f825 	bl	11e <MpuRegionSetup>

/* Region 1: 基址 = 0x08000000  */
LDR R0, =0x08000000
  d4:	f04f 6000 	mov.w	r0, #134217728	; 0x8000000
/* Region 1: Region号 = 1  */
MOV R1, #0x1
  d8:	f04f 0101 	mov.w	r1, #1
/* Region 1: 容量 = 0x15 (4MB)  */
MOV R2, #0x15
  dc:	f04f 0215 	mov.w	r2, #21
/* Region 1: AP = 0x3 (ܼ访问)  */
MOV R3, #0x3
  e0:	f04f 0303 	mov.w	r3, #3
/* Region 1: MemAttrib = 0x7  */
MOV R4, #0x7
  e4:	f04f 0407 	mov.w	r4, #7
/* Region 1: 子region䰸能= 0  */
MOV R5, #0x0
  e8:	f04f 0500 	mov.w	r5, #0
/* Region 1: {XN, Enable} = 0,1  */
MOV R6, #0x1
  ec:	f04f 0601 	mov.w	r6, #1

/* 以相同的方法建立region #2和region #3  */
BL MpuRegionSetup
  f0:	f000 f815 	bl	11e <MpuRegionSetup>

/* --- Region #4-#7 䰸能 ---  */

MOV R0, #4
  f4:	f04f 0004 	mov.w	r0, #4
BL MpuRegionDisable
  f8:	f000 f82b 	bl	152 <MpuRegionDisable>
MOV R0, #5
  fc:	f04f 0005 	mov.w	r0, #5
BL MpuRegionDisable
 100:	f000 f827 	bl	152 <MpuRegionDisable>
MOV R0, #6
 104:	f04f 0006 	mov.w	r0, #6
BL MpuRegionDisable
 108:	f000 f823 	bl	152 <MpuRegionDisable>
MOV R0, #7
 10c:	f04f 0007 	mov.w	r0, #7
BL MpuRegionDisable
 110:	f000 f81f 	bl	152 <MpuRegionDisable>
/* MPU 控制寄存器 */
LDR R0, =0xE000ED94
 114:	481f      	ldr	r0, [pc, #124]	; (194 <MpuRegionDisable+0x42>)
MOV R1, #1
 116:	f04f 0101 	mov.w	r1, #1
/* 使能MPU  */
STR R1, [R0]
 11a:	6001      	str	r1, [r0, #0]
/* 返回 */
POP {R0-R6,PC}
 11c:	bd7f      	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

0000011e <MpuRegionSetup>:
/* R3 = AP (访问䆌可)  */
/* R4 = MemAttrib ({TEX[2:0], S, C, B})  */
/* R5 = 子region䰸能 */
/* R6 = {XN,Enable}  */

PUSH {R0-R1, LR}
 11e:	b503      	push	{r0, r1, lr}
/* 清䳊基址中䪕定不会用到的位段 */
bic R0, R0, #0x1F
 120:	f020 001f 	bic.w	r0, r0, #31
/* 把region号插入到R0[3:0]  */
BFI R0, R1, #0, #4
 124:	f361 0003 	bfi	r0, r1, #0, #4
/* 置位VALID位 */
ORR R0, R0, #0x10
 128:	f040 0010 	orr.w	r0, r0, #16
/* 加载MPU Region基址寄存器的地址 */
LDR R1, =0xE000ED9C
 12c:	4910      	ldr	r1, [pc, #64]	; (170 <MpuRegionDisable+0x1e>)
/* 填写之 */
STR R0, [R1]
 12e:	6008      	str	r0, [r1, #0]
/* 读প使能位 */
AND R0, R6, #0x01
 130:	f006 0001 	and.w	r0, r6, #1
/*读取XN位 */
UBFX R1, R6, #1, #1
 134:	f3c6 0140 	ubfx	r1, r6, #1, #1
/* 讛 XN 插螤繩 R0[28]  */
BFI R0, R1, #28, #1
 138:	f361 701c 	bfi	r0, r1, #28, #1
/* 把region容量(R2[4:0])插入到R0[5:1]中 */
BFI R0, R2, #1, #5
 13c:	f362 0045 	bfi	r0, r2, #1, #5
/* 把AP(R3[2:0])插入到R0[26:24]中 */
BFI R0, R3, #24, #3
 140:	f363 601a 	bfi	r0, r3, #24, #3
/* 把memattrib(R4[5:0])插入到R0[21:16]中 */
BFI R0, R4, #16, #6
 144:	f364 4015 	bfi	r0, r4, #16, #6
/* 把子SRD(R5[7:0])插入到R0[15:8]中 */
BFI R0, R5, #8, #8
 148:	f365 200f 	bfi	r0, r5, #8, #8
/* 加载MPU Regionሲ性及容量寄存器的地址 */
LDR R1, =0xE000EDA0
 14c:	4912      	ldr	r1, [pc, #72]	; (198 <MpuRegionDisable+0x46>)
/* 填写之 */
STR R0, [R1]
 14e:	6008      	str	r0, [r1, #0]
/* 返回 */
POP {R0-R1, PC}
 150:	bd03      	pop	{r0, r1, pc}

00000152 <MpuRegionDisable>:
/* 䆹子程序用于䰸能一个region  */
MpuRegionDisable:

/* 入口条件： R0 = 待除能的region号 */

PUSH {R1, LR}
 152:	b502      	push	{r1, lr}
/* region号只取低4位 */
AND R0, R0, #0xF
 154:	f000 000f 	and.w	r0, r0, #15
/* 设置VALID位 */
ORR R0, R0, #0x10
 158:	f040 0010 	orr.w	r0, r0, #16
/* 加载MPU Region 基址寄存器的地址 */
LDR R1, =0xE000ED9C
 15c:	4904      	ldr	r1, [pc, #16]	; (170 <MpuRegionDisable+0x1e>)
/* 填写之 */
STR R0, [R1]
 15e:	6008      	str	r0, [r1, #0]
MOV R0, #0
 160:	f04f 0000 	mov.w	r0, #0
/* 加载MPU Region ሲ性及容量寄存器的地址 */
LDR R1, =0xE000EDA0
 164:	490c      	ldr	r1, [pc, #48]	; (198 <MpuRegionDisable+0x46>)
/* 把它归零，这也㭈蕴含了除能的命令 */
STR R0, [R1]
 166:	6008      	str	r0, [r1, #0]
/* 反回 */
POP {R1, PC}
 168:	bd02      	pop	{r1, pc}
 16a:	0000      	.short	0x0000
ldr r1, =main
 16c:	000001a1 	.word	0x000001a1
LDR R0, =0xE000ED9C
 170:	e000ed9c 	.word	0xe000ed9c
LDR R1, =0x0307002F
 174:	0307002f 	.word	0x0307002f
LDR R1, =0x08000011
 178:	08000011 	.word	0x08000011
LDR R1, =0x0307002B
 17c:	0307002b 	.word	0x0307002b
LDR R1, =0x40000012
 180:	40000012 	.word	0x40000012
LDR R1, =0x03050039
 184:	03050039 	.word	0x03050039
LDR R1, =0xE0000013
 188:	e0000013 	.word	0xe0000013
LDR R1, =0x03040027
 18c:	03040027 	.word	0x03040027
LDR    R1, =MPUconfigTab
 190:	00000080 	.word	0x00000080
LDR R0, =0xE000ED94
 194:	e000ed94 	.word	0xe000ed94
LDR R1, =0xE000EDA0
 198:	e000eda0 	.word	0xe000eda0
 19c:	11223344 	.word	0x11223344

000001a0 <main>:
#include <stdint.h>
#include "hal.h"

void main(void)
{
 1a0:	b580      	push	{r7, lr}
 1a2:	af00      	add	r7, sp, #0
    lite_printf("[%s] hello world\n", __func__);
 1a4:	4903      	ldr	r1, [pc, #12]	; (1b4 <main+0x14>)
 1a6:	4804      	ldr	r0, [pc, #16]	; (1b8 <main+0x18>)
 1a8:	f000 f8da 	bl	360 <lite_printf>
    hal_mpu_test();
 1ac:	f000 f85a 	bl	264 <hal_mpu_test>
    while(1);
 1b0:	e7fe      	b.n	1b0 <main+0x10>
 1b2:	bf00      	nop
 1b4:	000005d0 	.word	0x000005d0
 1b8:	000005bc 	.word	0x000005bc

000001bc <ARM_MPU_Enable>:
    
/** Enable the MPU.
* \param MPU_Control Default access permissions for unconfigured regions.
*/
__STATIC_INLINE void ARM_MPU_Enable(uint32_t MPU_Control)
{
 1bc:	b480      	push	{r7}
 1be:	b081      	sub	sp, #4
 1c0:	af00      	add	r7, sp, #0
 1c2:	6038      	str	r0, [r7, #0]
  \details Acts as a special kind of Data Memory Barrier.
           It completes when all explicit memory accesses before this instruction complete.
 */
__STATIC_FORCEINLINE void __DSB(void)
{
  __ASM volatile ("dsb 0xF":::"memory");
 1c4:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
 1c8:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
  MPU->CTRL = MPU_Control | MPU_CTRL_ENABLE_Msk;
 1cc:	4a07      	ldr	r2, [pc, #28]	; (1ec <ARM_MPU_Enable+0x30>)
 1ce:	683b      	ldr	r3, [r7, #0]
 1d0:	f043 0301 	orr.w	r3, r3, #1
 1d4:	6053      	str	r3, [r2, #4]
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR |= SCB_SHCSR_MEMFAULTENA_Msk;
 1d6:	4b06      	ldr	r3, [pc, #24]	; (1f0 <ARM_MPU_Enable+0x34>)
 1d8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 1da:	4a05      	ldr	r2, [pc, #20]	; (1f0 <ARM_MPU_Enable+0x34>)
 1dc:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 1e0:	6253      	str	r3, [r2, #36]	; 0x24
#endif
}
 1e2:	bf00      	nop
 1e4:	3704      	adds	r7, #4
 1e6:	46bd      	mov	sp, r7
 1e8:	bc80      	pop	{r7}
 1ea:	4770      	bx	lr
 1ec:	e000ed90 	.word	0xe000ed90
 1f0:	e000ed00 	.word	0xe000ed00

000001f4 <ARM_MPU_Disable>:

/** Disable the MPU.
*/
__STATIC_INLINE void ARM_MPU_Disable(void)
{
 1f4:	b480      	push	{r7}
 1f6:	af00      	add	r7, sp, #0
  __ASM volatile ("dsb 0xF":::"memory");
 1f8:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
 1fc:	f3bf 8f6f 	isb	sy
  __DSB();
  __ISB();
#ifdef SCB_SHCSR_MEMFAULTENA_Msk
  SCB->SHCSR &= ~SCB_SHCSR_MEMFAULTENA_Msk;
 200:	4b07      	ldr	r3, [pc, #28]	; (220 <ARM_MPU_Disable+0x2c>)
 202:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 204:	4a06      	ldr	r2, [pc, #24]	; (220 <ARM_MPU_Disable+0x2c>)
 206:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 20a:	6253      	str	r3, [r2, #36]	; 0x24
#endif
  MPU->CTRL  &= ~MPU_CTRL_ENABLE_Msk;
 20c:	4b05      	ldr	r3, [pc, #20]	; (224 <ARM_MPU_Disable+0x30>)
 20e:	685b      	ldr	r3, [r3, #4]
 210:	4a04      	ldr	r2, [pc, #16]	; (224 <ARM_MPU_Disable+0x30>)
 212:	f023 0301 	bic.w	r3, r3, #1
 216:	6053      	str	r3, [r2, #4]
}
 218:	bf00      	nop
 21a:	46bd      	mov	sp, r7
 21c:	bc80      	pop	{r7}
 21e:	4770      	bx	lr
 220:	e000ed00 	.word	0xe000ed00
 224:	e000ed90 	.word	0xe000ed90

00000228 <ARM_MPU_SetRegion>:
/** Configure an MPU region.
* \param rbar Value for RBAR register.
* \param rsar Value for RSAR register.
*/   
__STATIC_INLINE void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
 228:	b480      	push	{r7}
 22a:	b082      	sub	sp, #8
 22c:	af00      	add	r7, sp, #0
 22e:	6078      	str	r0, [r7, #4]
 230:	6039      	str	r1, [r7, #0]
  MPU->RBAR = rbar;
 232:	4a05      	ldr	r2, [pc, #20]	; (248 <ARM_MPU_SetRegion+0x20>)
 234:	687b      	ldr	r3, [r7, #4]
 236:	60d3      	str	r3, [r2, #12]
  MPU->RASR = rasr;
 238:	4a03      	ldr	r2, [pc, #12]	; (248 <ARM_MPU_SetRegion+0x20>)
 23a:	683b      	ldr	r3, [r7, #0]
 23c:	6113      	str	r3, [r2, #16]
}
 23e:	bf00      	nop
 240:	3708      	adds	r7, #8
 242:	46bd      	mov	sp, r7
 244:	bc80      	pop	{r7}
 246:	4770      	bx	lr
 248:	e000ed90 	.word	0xe000ed90

0000024c <mem_manage_handler>:

/*

*/
void mem_manage_handler(void)
{
 24c:	b580      	push	{r7, lr}
 24e:	af00      	add	r7, sp, #0
    lite_printf("[%s]\n", __func__);
 250:	4902      	ldr	r1, [pc, #8]	; (25c <mem_manage_handler+0x10>)
 252:	4803      	ldr	r0, [pc, #12]	; (260 <mem_manage_handler+0x14>)
 254:	f000 f884 	bl	360 <lite_printf>

    for(;;);
 258:	e7fe      	b.n	258 <mem_manage_handler+0xc>
 25a:	bf00      	nop
 25c:	00000600 	.word	0x00000600
 260:	000005d8 	.word	0x000005d8

00000264 <hal_mpu_test>:
}

void hal_mpu_test(void)
{
 264:	b5b0      	push	{r4, r5, r7, lr}
 266:	b08a      	sub	sp, #40	; 0x28
 268:	af00      	add	r7, sp, #0
    特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
    特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
    外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     共享设备
    系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格顺序，XN
    */
    ARM_MPU_Region_t table[] = {
 26a:	4b13      	ldr	r3, [pc, #76]	; (2b8 <hal_mpu_test+0x54>)
 26c:	463c      	mov	r4, r7
 26e:	461d      	mov	r5, r3
 270:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 272:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 274:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 278:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
            .RASR = ARM_MPU_RASR(0,           ARM_MPU_AP_FULL,  0,              1,         0,           0,            1,                ARM_MPU_REGION_SIZE_1MB),
            .RBAR = ARM_MPU_RBAR(3, 0xE0000000),
        },
    };
    
    ARM_MPU_Disable();
 27c:	f7ff ffba 	bl	1f4 <ARM_MPU_Disable>
#if 0
    ARM_MPU_Load(table, sizeof(table));
#else
    ARM_MPU_Region_t *mpu_region;
    mpu_region = &table[0];
 280:	463b      	mov	r3, r7
 282:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 284:	e00d      	b.n	2a2 <hal_mpu_test+0x3e>
        ARM_MPU_SetRegion(mpu_region->RBAR, mpu_region->RASR);
 286:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 288:	681a      	ldr	r2, [r3, #0]
 28a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 28c:	685b      	ldr	r3, [r3, #4]
 28e:	4619      	mov	r1, r3
 290:	4610      	mov	r0, r2
 292:	f7ff ffc9 	bl	228 <ARM_MPU_SetRegion>
        mpu_region++;
 296:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 298:	3308      	adds	r3, #8
 29a:	627b      	str	r3, [r7, #36]	; 0x24
    for (uint32_t i; i < sizeof(table)/sizeof(ARM_MPU_Region_t); i++) {
 29c:	6a3b      	ldr	r3, [r7, #32]
 29e:	3301      	adds	r3, #1
 2a0:	623b      	str	r3, [r7, #32]
 2a2:	6a3b      	ldr	r3, [r7, #32]
 2a4:	2b03      	cmp	r3, #3
 2a6:	d9ee      	bls.n	286 <hal_mpu_test+0x22>
    }
#endif
    ARM_MPU_Enable(MPU_CTRL_PRIVDEFENA_Msk|MPU_CTRL_HFNMIENA_Msk);
 2a8:	2006      	movs	r0, #6
 2aa:	f7ff ff87 	bl	1bc <ARM_MPU_Enable>
}
 2ae:	bf00      	nop
 2b0:	3728      	adds	r7, #40	; 0x28
 2b2:	46bd      	mov	sp, r7
 2b4:	bdb0      	pop	{r4, r5, r7, pc}
 2b6:	bf00      	nop
 2b8:	000005e0 	.word	0x000005e0

000002bc <m_pow>:


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
 2bc:	b480      	push	{r7}
 2be:	b083      	sub	sp, #12
 2c0:	af00      	add	r7, sp, #0
 2c2:	6078      	str	r0, [r7, #4]
 2c4:	6039      	str	r1, [r7, #0]
    unsigned long sum = 1;
 2c6:	2301      	movs	r3, #1
 2c8:	60bb      	str	r3, [r7, #8]
    while (y--)
 2ca:	e004      	b.n	2d6 <m_pow+0x1a>
    {
        sum *= x;
 2cc:	687a      	ldr	r2, [r7, #4]
 2ce:	68bb      	ldr	r3, [r7, #8]
 2d0:	fb02 f303 	mul.w	r3, r2, r3
 2d4:	60bb      	str	r3, [r7, #8]
    while (y--)
 2d6:	683b      	ldr	r3, [r7, #0]
 2d8:	1e5a      	subs	r2, r3, #1
 2da:	603a      	str	r2, [r7, #0]
 2dc:	2b00      	cmp	r3, #0
 2de:	d1f5      	bne.n	2cc <m_pow+0x10>
    }
    return sum;
 2e0:	68bb      	ldr	r3, [r7, #8]
}
 2e2:	4618      	mov	r0, r3
 2e4:	370c      	adds	r7, #12
 2e6:	46bd      	mov	sp, r7
 2e8:	bc80      	pop	{r7}
 2ea:	4770      	bx	lr

000002ec <m_putchar>:
void m_putchar(const char ch)
{
 2ec:	b480      	push	{r7}
 2ee:	b081      	sub	sp, #4
 2f0:	af00      	add	r7, sp, #0
 2f2:	4603      	mov	r3, r0
 2f4:	703b      	strb	r3, [r7, #0]
    *UART_DR = ch;
 2f6:	4a04      	ldr	r2, [pc, #16]	; (308 <m_putchar+0x1c>)
 2f8:	783b      	ldrb	r3, [r7, #0]
 2fa:	6013      	str	r3, [r2, #0]
}
 2fc:	bf00      	nop
 2fe:	3704      	adds	r7, #4
 300:	46bd      	mov	sp, r7
 302:	bc80      	pop	{r7}
 304:	4770      	bx	lr
 306:	bf00      	nop
 308:	4000c000 	.word	0x4000c000

0000030c <m_putstr>:
void m_putstr(const char *str)
{
 30c:	b580      	push	{r7, lr}
 30e:	b081      	sub	sp, #4
 310:	af00      	add	r7, sp, #0
 312:	6038      	str	r0, [r7, #0]
    while (*str)
 314:	e006      	b.n	324 <m_putstr+0x18>
    {
        m_putchar(*str++);
 316:	683b      	ldr	r3, [r7, #0]
 318:	1c5a      	adds	r2, r3, #1
 31a:	603a      	str	r2, [r7, #0]
 31c:	781b      	ldrb	r3, [r3, #0]
 31e:	4618      	mov	r0, r3
 320:	f7ff ffe4 	bl	2ec <m_putchar>
    while (*str)
 324:	683b      	ldr	r3, [r7, #0]
 326:	781b      	ldrb	r3, [r3, #0]
 328:	2b00      	cmp	r3, #0
 32a:	d1f4      	bne.n	316 <m_putstr+0xa>
    }
}
 32c:	bf00      	nop
 32e:	3704      	adds	r7, #4
 330:	46bd      	mov	sp, r7
 332:	bd80      	pop	{r7, pc}

00000334 <m_strlen>:
uint32_t m_strlen (const char *__s)
{
 334:	b480      	push	{r7}
 336:	b082      	sub	sp, #8
 338:	af00      	add	r7, sp, #0
 33a:	6038      	str	r0, [r7, #0]
    uint32_t i = 0;
 33c:	2300      	movs	r3, #0
 33e:	607b      	str	r3, [r7, #4]
    while(*__s++ != '\0') i++;
 340:	e002      	b.n	348 <m_strlen+0x14>
 342:	687b      	ldr	r3, [r7, #4]
 344:	3301      	adds	r3, #1
 346:	607b      	str	r3, [r7, #4]
 348:	683b      	ldr	r3, [r7, #0]
 34a:	1c5a      	adds	r2, r3, #1
 34c:	603a      	str	r2, [r7, #0]
 34e:	781b      	ldrb	r3, [r3, #0]
 350:	2b00      	cmp	r3, #0
 352:	d1f6      	bne.n	342 <m_strlen+0xe>
    return i;
 354:	687b      	ldr	r3, [r7, #4]
}
 356:	4618      	mov	r0, r3
 358:	3708      	adds	r7, #8
 35a:	46bd      	mov	sp, r7
 35c:	bc80      	pop	{r7}
 35e:	4770      	bx	lr

00000360 <lite_printf>:
int lite_printf(const char *str, ...)
{
 360:	b40f      	push	{r0, r1, r2, r3}
 362:	b590      	push	{r4, r7, lr}
 364:	b087      	sub	sp, #28
 366:	af00      	add	r7, sp, #0
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
 368:	2300      	movs	r3, #0
 36a:	60fb      	str	r3, [r7, #12]
    int res = 0; //返回值
 36c:	2300      	movs	r3, #0
 36e:	613b      	str	r3, [r7, #16]

    va_start(ap, str);   //初始化ap
 370:	f107 032c 	add.w	r3, r7, #44	; 0x2c
 374:	603b      	str	r3, [r7, #0]
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 376:	e10d      	b.n	594 <lite_printf+0x234>
    {
        switch (*str)
 378:	6abb      	ldr	r3, [r7, #40]	; 0x28
 37a:	781b      	ldrb	r3, [r3, #0]
 37c:	2b0d      	cmp	r3, #13
 37e:	f000 80f5 	beq.w	56c <lite_printf+0x20c>
 382:	2b25      	cmp	r3, #37	; 0x25
 384:	d003      	beq.n	38e <lite_printf+0x2e>
 386:	2b0a      	cmp	r3, #10
 388:	f000 80e9 	beq.w	55e <lite_printf+0x1fe>
 38c:	e0f5      	b.n	57a <lite_printf+0x21a>
        {
        case '%': //发送参数
            str++;
 38e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 390:	3301      	adds	r3, #1
 392:	62bb      	str	r3, [r7, #40]	; 0x28
            switch (*str)
 394:	6abb      	ldr	r3, [r7, #40]	; 0x28
 396:	781b      	ldrb	r3, [r3, #0]
 398:	3b63      	subs	r3, #99	; 0x63
 39a:	2b15      	cmp	r3, #21
 39c:	f200 80f6 	bhi.w	58c <lite_printf+0x22c>
 3a0:	a201      	add	r2, pc, #4	; (adr r2, 3a8 <lite_printf+0x48>)
 3a2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 3a6:	bf00      	nop
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
 400:	683b      	ldr	r3, [r7, #0]
 402:	1d1a      	adds	r2, r3, #4
 404:	603a      	str	r2, [r7, #0]
 406:	681b      	ldr	r3, [r3, #0]
 408:	60bb      	str	r3, [r7, #8]
                r_val = val;
 40a:	68bb      	ldr	r3, [r7, #8]
 40c:	61bb      	str	r3, [r7, #24]
                count = 0;
 40e:	2300      	movs	r3, #0
 410:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 412:	e00a      	b.n	42a <lite_printf+0xca>

                {
                    count++; //整数的长度
 414:	7dfb      	ldrb	r3, [r7, #23]
 416:	3301      	adds	r3, #1
 418:	75fb      	strb	r3, [r7, #23]
                    r_val /= 10;
 41a:	69bb      	ldr	r3, [r7, #24]
 41c:	4a64      	ldr	r2, [pc, #400]	; (5b0 <lite_printf+0x250>)
 41e:	fb82 1203 	smull	r1, r2, r2, r3
 422:	1092      	asrs	r2, r2, #2
 424:	17db      	asrs	r3, r3, #31
 426:	1ad3      	subs	r3, r2, r3
 428:	61bb      	str	r3, [r7, #24]
                while (r_val)
 42a:	69bb      	ldr	r3, [r7, #24]
 42c:	2b00      	cmp	r3, #0
 42e:	d1f1      	bne.n	414 <lite_printf+0xb4>
                }

                res += count;
 430:	7dfb      	ldrb	r3, [r7, #23]
 432:	693a      	ldr	r2, [r7, #16]
 434:	4413      	add	r3, r2
 436:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 438:	68bb      	ldr	r3, [r7, #8]
 43a:	61bb      	str	r3, [r7, #24]
                while (count)
 43c:	e021      	b.n	482 <lite_printf+0x122>
                {
                    ch = r_val / m_pow(10, count - 1);
 43e:	69bc      	ldr	r4, [r7, #24]
 440:	7dfb      	ldrb	r3, [r7, #23]
 442:	3b01      	subs	r3, #1
 444:	4619      	mov	r1, r3
 446:	200a      	movs	r0, #10
 448:	f7ff ff38 	bl	2bc <m_pow>
 44c:	4603      	mov	r3, r0
 44e:	fbb4 f3f3 	udiv	r3, r4, r3
 452:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(10, count - 1);
 454:	7dfb      	ldrb	r3, [r7, #23]
 456:	3b01      	subs	r3, #1
 458:	4619      	mov	r1, r3
 45a:	200a      	movs	r0, #10
 45c:	f7ff ff2e 	bl	2bc <m_pow>
 460:	4602      	mov	r2, r0
 462:	69bb      	ldr	r3, [r7, #24]
 464:	fbb3 f1f2 	udiv	r1, r3, r2
 468:	fb02 f201 	mul.w	r2, r2, r1
 46c:	1a9b      	subs	r3, r3, r2
 46e:	61bb      	str	r3, [r7, #24]

                    m_putchar(ch + '0');
 470:	79fb      	ldrb	r3, [r7, #7]
 472:	3330      	adds	r3, #48	; 0x30
 474:	b2db      	uxtb	r3, r3
 476:	4618      	mov	r0, r3
 478:	f7ff ff38 	bl	2ec <m_putchar>
                    //数字到字符的转换
                    count--;
 47c:	7dfb      	ldrb	r3, [r7, #23]
 47e:	3b01      	subs	r3, #1
 480:	75fb      	strb	r3, [r7, #23]
                while (count)
 482:	7dfb      	ldrb	r3, [r7, #23]
 484:	2b00      	cmp	r3, #0
 486:	d1da      	bne.n	43e <lite_printf+0xde>
                }
                break;
 488:	e068      	b.n	55c <lite_printf+0x1fc>
            case 'x': //16进制输出
                val = va_arg(ap, int);
 48a:	683b      	ldr	r3, [r7, #0]
 48c:	1d1a      	adds	r2, r3, #4
 48e:	603a      	str	r2, [r7, #0]
 490:	681b      	ldr	r3, [r3, #0]
 492:	60bb      	str	r3, [r7, #8]
                r_val = val;
 494:	68bb      	ldr	r3, [r7, #8]
 496:	61bb      	str	r3, [r7, #24]
                count = 0;
 498:	2300      	movs	r3, #0
 49a:	75fb      	strb	r3, [r7, #23]
                while (r_val)
 49c:	e008      	b.n	4b0 <lite_printf+0x150>

                {
                    count++; //整数的长度
 49e:	7dfb      	ldrb	r3, [r7, #23]
 4a0:	3301      	adds	r3, #1
 4a2:	75fb      	strb	r3, [r7, #23]
                    r_val /= 16;
 4a4:	69bb      	ldr	r3, [r7, #24]
 4a6:	2b00      	cmp	r3, #0
 4a8:	da00      	bge.n	4ac <lite_printf+0x14c>
 4aa:	330f      	adds	r3, #15
 4ac:	111b      	asrs	r3, r3, #4
 4ae:	61bb      	str	r3, [r7, #24]
                while (r_val)
 4b0:	69bb      	ldr	r3, [r7, #24]
 4b2:	2b00      	cmp	r3, #0
 4b4:	d1f3      	bne.n	49e <lite_printf+0x13e>
                }

                res += count;
 4b6:	7dfb      	ldrb	r3, [r7, #23]
 4b8:	693a      	ldr	r2, [r7, #16]
 4ba:	4413      	add	r3, r2
 4bc:	613b      	str	r3, [r7, #16]
                //返回值长度增加​
                r_val = val;
 4be:	68bb      	ldr	r3, [r7, #8]
 4c0:	61bb      	str	r3, [r7, #24]
                while (count)
 4c2:	e02b      	b.n	51c <lite_printf+0x1bc>
                {
                    ch = r_val / m_pow(16, count - 1);
 4c4:	69bc      	ldr	r4, [r7, #24]
 4c6:	7dfb      	ldrb	r3, [r7, #23]
 4c8:	3b01      	subs	r3, #1
 4ca:	4619      	mov	r1, r3
 4cc:	2010      	movs	r0, #16
 4ce:	f7ff fef5 	bl	2bc <m_pow>
 4d2:	4603      	mov	r3, r0
 4d4:	fbb4 f3f3 	udiv	r3, r4, r3
 4d8:	71fb      	strb	r3, [r7, #7]
                    r_val %= m_pow(16, count - 1);
 4da:	7dfb      	ldrb	r3, [r7, #23]
 4dc:	3b01      	subs	r3, #1
 4de:	4619      	mov	r1, r3
 4e0:	2010      	movs	r0, #16
 4e2:	f7ff feeb 	bl	2bc <m_pow>
 4e6:	4602      	mov	r2, r0
 4e8:	69bb      	ldr	r3, [r7, #24]
 4ea:	fbb3 f1f2 	udiv	r1, r3, r2
 4ee:	fb02 f201 	mul.w	r2, r2, r1
 4f2:	1a9b      	subs	r3, r3, r2
 4f4:	61bb      	str	r3, [r7, #24]
                    if (ch <= 9)
 4f6:	79fb      	ldrb	r3, [r7, #7]
 4f8:	2b09      	cmp	r3, #9
 4fa:	d806      	bhi.n	50a <lite_printf+0x1aa>
                        m_putchar(ch + '0');
 4fc:	79fb      	ldrb	r3, [r7, #7]
 4fe:	3330      	adds	r3, #48	; 0x30
 500:	b2db      	uxtb	r3, r3
 502:	4618      	mov	r0, r3
 504:	f7ff fef2 	bl	2ec <m_putchar>
 508:	e005      	b.n	516 <lite_printf+0x1b6>
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
 50a:	79fb      	ldrb	r3, [r7, #7]
 50c:	3357      	adds	r3, #87	; 0x57
 50e:	b2db      	uxtb	r3, r3
 510:	4618      	mov	r0, r3
 512:	f7ff feeb 	bl	2ec <m_putchar>
                    count--;
 516:	7dfb      	ldrb	r3, [r7, #23]
 518:	3b01      	subs	r3, #1
 51a:	75fb      	strb	r3, [r7, #23]
                while (count)
 51c:	7dfb      	ldrb	r3, [r7, #23]
 51e:	2b00      	cmp	r3, #0
 520:	d1d0      	bne.n	4c4 <lite_printf+0x164>
                }
                break;
 522:	e01b      	b.n	55c <lite_printf+0x1fc>
            case 's': //发送字符串
                s = va_arg(ap, char *);
 524:	683b      	ldr	r3, [r7, #0]
 526:	1d1a      	adds	r2, r3, #4
 528:	603a      	str	r2, [r7, #0]
 52a:	681b      	ldr	r3, [r3, #0]
 52c:	60fb      	str	r3, [r7, #12]
                m_putstr(s);
 52e:	68f8      	ldr	r0, [r7, #12]
 530:	f7ff feec 	bl	30c <m_putstr>
                //字符串,返回值为字符指针
                res += m_strlen(s);
 534:	68f8      	ldr	r0, [r7, #12]
 536:	f7ff fefd 	bl	334 <m_strlen>
 53a:	4602      	mov	r2, r0
 53c:	693b      	ldr	r3, [r7, #16]
 53e:	4413      	add	r3, r2
 540:	613b      	str	r3, [r7, #16]
                //返回值长度增加
                break;
 542:	e00b      	b.n	55c <lite_printf+0x1fc>
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
 544:	683b      	ldr	r3, [r7, #0]
 546:	1d1a      	adds	r2, r3, #4
 548:	603a      	str	r2, [r7, #0]
 54a:	681b      	ldr	r3, [r3, #0]
 54c:	b2db      	uxtb	r3, r3
 54e:	4618      	mov	r0, r3
 550:	f7ff fecc 	bl	2ec <m_putchar>
                res += 1;
 554:	693b      	ldr	r3, [r7, #16]
 556:	3301      	adds	r3, #1
 558:	613b      	str	r3, [r7, #16]

                break;
 55a:	bf00      	nop
            default:;
            }
            break;
 55c:	e016      	b.n	58c <lite_printf+0x22c>
        case '\n':
            m_putchar('\n');
 55e:	200a      	movs	r0, #10
 560:	f7ff fec4 	bl	2ec <m_putchar>
            res += 1;
 564:	693b      	ldr	r3, [r7, #16]
 566:	3301      	adds	r3, #1
 568:	613b      	str	r3, [r7, #16]
            break;
 56a:	e010      	b.n	58e <lite_printf+0x22e>
        case '\r':
            m_putchar('\r');
 56c:	200d      	movs	r0, #13
 56e:	f7ff febd 	bl	2ec <m_putchar>
            res += 1;
 572:	693b      	ldr	r3, [r7, #16]
 574:	3301      	adds	r3, #1
 576:	613b      	str	r3, [r7, #16]
            break;
 578:	e009      	b.n	58e <lite_printf+0x22e>
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
 57a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 57c:	781b      	ldrb	r3, [r3, #0]
 57e:	4618      	mov	r0, r3
 580:	f7ff feb4 	bl	2ec <m_putchar>
            res += 1;
 584:	693b      	ldr	r3, [r7, #16]
 586:	3301      	adds	r3, #1
 588:	613b      	str	r3, [r7, #16]
 58a:	e000      	b.n	58e <lite_printf+0x22e>
            break;
 58c:	bf00      	nop
        }

        str++;
 58e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 590:	3301      	adds	r3, #1
 592:	62bb      	str	r3, [r7, #40]	; 0x28
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
 594:	6abb      	ldr	r3, [r7, #40]	; 0x28
 596:	781b      	ldrb	r3, [r3, #0]
 598:	2b00      	cmp	r3, #0
 59a:	f47f aeed 	bne.w	378 <lite_printf+0x18>
    }
    va_end(ap);
    return res;
 59e:	693b      	ldr	r3, [r7, #16]
 5a0:	4618      	mov	r0, r3
 5a2:	371c      	adds	r7, #28
 5a4:	46bd      	mov	sp, r7
 5a6:	e8bd 4090 	ldmia.w	sp!, {r4, r7, lr}
 5aa:	b004      	add	sp, #16
 5ac:	4770      	bx	lr
 5ae:	bf00      	nop
 5b0:	66666667 	.word	0x66666667
 5b4:	55aa55aa 	.word	0x55aa55aa

Disassembly of section .text.default_handler:

000005b8 <bus_fault_handler>:
    b .
 5b8:	e7fe      	b.n	5b8 <bus_fault_handler>
