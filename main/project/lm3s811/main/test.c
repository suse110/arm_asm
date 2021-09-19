#include <stdint.h>
#include "hal.h"
#ifdef SHELL_ENABLE
#include "shell.h"
#endif

static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

int __io_putchar(int ch)
{
    *UART_DR = ch;
    return 0;
}

int __io_getchar(void)
{
    return(int)*UART_DR;
}


extern void exception_test(void);
void main(void)
{

    printf("[%s] hello world\n", __func__);
    // shell_start();
    backtrace_test();
    exception_test();
    // hal_mpu_test();
    while(1);
}

#if 0

mmu_setting_1:
/*
特权级代码 0x0000_0000‐0x00FF_FFFF(16MB)  全访问     缓存可
特权极数据 0x0800_0000‐0x0803_FFFF(4MB)   全访问     缓存可
外设       0x4000_0000‐0x5FFF_FFFF(512MB) 全访问     缓存可
系统控制   0xE000_0000‐0xE00F_FFFF(1MB)   特权级访问  严格乎序，XN
 */
/* MPU region基址寄存器 */
LDR R0, =0xE000ED9C
/* 基址=0x00000000, region=0, valid=1  */
LDR R1, =0x00000010
/* 设置region 0的基址 */
STR R1, [R0, #0]
/* R/W, TEX=0,S=1,C=1,B=1, 16MB, Enable=1  */
LDR R1, =0x0307002F
/* MPU Region 属性及容量寄存器 */
STR R1, [R0, #4]
/* 基址=0x08000000, region=1, valid=1 */
LDR R1, =0x08000011
/* MPU Region 基址寄存器 */
STR R1, [R0, #0]
/* R/W, TEX=0,S=1,C=1,B=1, 4MB, Enable=1  */
LDR R1, =0x0307002B
/* MPU Region 属性及容量寄存器 */
STR R1, [R0, #4]
/* 基址=0x40000000, region=2, valid=1  */
LDR R1, =0x40000012
/* MPU Region基址寄存器 */
STR R1, [R0, #0]
/* R/W, TEX=0,S=1,C=0,B=1, 512MB, Enable=1  */
LDR R1, =0x03050039
/* MPU Region属性及容量寄存器 */
STR R1, [R0, #4]
/* 基址=0xE0000000, region=3, valid=1 */
LDR R1, =0xE0000013
/* MPU Region 基址寄存器 */
STR R1, [R0, #0]
/* R/W, TEX=0,S=1,C=0,B=0, 1MB, Enable=1  */
LDR R1, =0x03040027
/* MPU Region 属性及容量寄存器 */
STR R1, [R0, #4]
/* 使能MPU  */
MOV R1, #1
/* MPU控制寄存器(0xE000ED9C-8=0xE000ED94) */
STR R1, [R0,#-8]

bx lr

mmu_setting_2:
/* MPU reigon基址寄存器 */
LDR    R0, =0xE000ED9C
/* 乘定Н的MPU初始化数值表  */
LDR    R1, =MPUconfigTab
/* 一起从表中读完8个字 */
LDMIA R1!, {R2-R9}
/* 一起初始化4个region  */
STMIA R0!, {R2-R9}
B MPUconfigEnd
/* 此汇编指示字可以确保下䗄的字定Н一定是对唤到字 */
.align 4
/* 边界的，因为在使用LDM/STM时，地址必须按字对唤 */
MPUconfigTab:
/* 基址=0x00000000, region=0,valid=1  */
.word 0x00000010
/* R/W, TEX=0,S=1,C=1,B=1, 16MB, Enable=1  */
.word 0x0307002F
/* 基址=0x08000000, region=0,valid=1  */
.word 0x08000011
/* R/W, TEX=0,S=1,C=1,B=1, 4MB, Enable=1  */
.word 0x0307002B
/* 基址=0x40000000, region=0,valid=1  */
.word 0x40000012
/* R/W, TEX=0,S=1,C=0,B=1, 512MB, Enable=1  */
.word 0x03050039
/* 基址=0xE0000000, region=0,valid=1  */
.word 0xE0000013
/* R/W, TEX=0,S=1,C=0,B=0, 1MB, Enable=1  */
.word 0x03040027
MPUconfigEnd:
/* MPU 控制寄存器 */
LDR R0, =0xE000ED94
/* 使能MPU  */
MOV R1, #1
STR R1, [R0]
bx lr

/*模块化方式设置mmu */

mmu_setting_3:

/* 入口ߑ数，它内部呼叫若干子程序来完成MPU设置 */
MpuSetup:
PUSH {R0-R6,LR}
/* MPU 控制寄存器 */
LDR R0, =0xE000ED94
MOV R1, #0
/* 䜡置前先䰸能MPU  */

/* --- Region #0 ---  */
STR R1, [R0]

/* Region 0: 基址 = 0x00000000 */
LDR R0, =0x00000000

/* Region 0: Region号 = 0  */
MOV R1, #0x0
/* Region 0: 容量 = 0x17 (16MB)  */
MOV R2, #0x17
/* Region 0: AP = 0x3 ( ܼ访问)  */
MOV R3, #0x3
/* Region 0: MemAttrib = 0x7  */
MOV R4, #0x7
/* Region 0: 子region䰸能=0  */
MOV R5, #0x0
/* Region 0: {XN, Enable} = 0,1  */
MOV R6, #0x1

/* --- Region #1 ---  */
BL MpuRegionSetup

/* Region 1: 基址 = 0x08000000  */
LDR R0, =0x08000000
/* Region 1: Region号 = 1  */
MOV R1, #0x1
/* Region 1: 容量 = 0x15 (4MB)  */
MOV R2, #0x15
/* Region 1: AP = 0x3 (ܼ访问)  */
MOV R3, #0x3
/* Region 1: MemAttrib = 0x7  */
MOV R4, #0x7
/* Region 1: 子region䰸能= 0  */
MOV R5, #0x0
/* Region 1: {XN, Enable} = 0,1  */
MOV R6, #0x1

/* 以相同的方法建立region #2和region #3  */
BL MpuRegionSetup

/* --- Region #4-#7 䰸能 ---  */

MOV R0, #4
BL MpuRegionDisable
MOV R0, #5
BL MpuRegionDisable
MOV R0, #6
BL MpuRegionDisable
MOV R0, #7
BL MpuRegionDisable
/* MPU 控制寄存器 */
LDR R0, =0xE000ED94
MOV R1, #1
/* 使能MPU  */
STR R1, [R0]
/* 返回 */
POP {R0-R6,PC}

/* MPU region 设置及ਃ用子程 */
MpuRegionSetup:
/* 入口条件:  */
/* R0 = 基址 */
/* R1 = Region号 */
/* R2 = 容量 */
/* R3 = AP (访问䆌可)  */
/* R4 = MemAttrib ({TEX[2:0], S, C, B})  */
/* R5 = 子region䰸能 */
/* R6 = {XN,Enable}  */

PUSH {R0-R1, LR}
/* 清䳊基址中䪕定不会用到的位段 */
bic R0, R0, #0x1F
/* 把region号插入到R0[3:0]  */
BFI R0, R1, #0, #4
/* 置位VALID位 */
ORR R0, R0, #0x10
/* 加载MPU Region基址寄存器的地址 */
LDR R1, =0xE000ED9C
/* 填写之 */
STR R0, [R1]
/* 读প使能位 */
AND R0, R6, #0x01
/*读取XN位 */
UBFX R1, R6, #1, #1
/* 讛 XN 插螤繩 R0[28]  */
BFI R0, R1, #28, #1
/* 把region容量(R2[4:0])插入到R0[5:1]中 */
BFI R0, R2, #1, #5
/* 把AP(R3[2:0])插入到R0[26:24]中 */
BFI R0, R3, #24, #3
/* 把memattrib(R4[5:0])插入到R0[21:16]中 */
BFI R0, R4, #16, #6
/* 把子SRD(R5[7:0])插入到R0[15:8]中 */
BFI R0, R5, #8, #8
/* 加载MPU Regionሲ性及容量寄存器的地址 */
LDR R1, =0xE000EDA0
/* 填写之 */
STR R0, [R1]
/* 返回 */
POP {R0-R1, PC}


/* 䆹子程序用于䰸能一个region  */
MpuRegionDisable:

/* 入口条件： R0 = 待除能的region号 */

PUSH {R1, LR}
/* region号只取低4位 */
AND R0, R0, #0xF
/* 设置VALID位 */
ORR R0, R0, #0x10
/* 加载MPU Region 基址寄存器的地址 */
LDR R1, =0xE000ED9C
/* 填写之 */
STR R0, [R1]
MOV R0, #0
/* 加载MPU Region ሲ性及容量寄存器的地址 */
LDR R1, =0xE000EDA0
/* 把它归零，这也㭈蕴含了除能的命令 */
STR R0, [R1]
/* 反回 */
POP {R1, PC}
#endif