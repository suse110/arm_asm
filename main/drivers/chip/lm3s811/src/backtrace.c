#include "backtrace.h"
#include "hal_log.h"
#include "hal_platform.h"

int test_div(void)
{
    // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk|SCB_SHCSR_BUSFAULTENA_Msk|SCB_SHCSR_MEMFAULTENA_Msk;
    SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk|SCB_CCR_DIV_0_TRP_Msk;

    int a = 1;
    int b = 0;
    int z = a / b;

    return z;
}

void fault_test_by_unalign(void) {
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */

    p = (int *) 0x00;
    value = *p;
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);

    p = (int *) 0x04;
    value = *p;
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);

    p = (int *) 0x03;
    value = *p;
    printf("addr:0x%x value:0x%x\r\n", (int) p, value);
}

void fault_test_by_div0(void) {
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */

    x = 10;
    y = 0;
    z = x / y;
    printf("z:%d\n", z);
}
// #include <cm_backtrace.h>
#include <stdio.h>
#include "backtrace.h"
#define HARDWARE_VERSION               "V1.0.0"
#define SOFTWARE_VERSION               "V0.1.0"

#define IS_ALIGNED(value, alignSize) ((((uint32_t)(value)) & ((uint32_t)((alignSize) - 1))) == 0)

uint32_t code_start_addr = 0;
uint32_t code_end_addr = 0;
uint32_t code_size = 0;
uint32_t stack_start_addr = 0;
uint32_t stack_end_addr = 0;
uint32_t stack_size = 0;

extern const uint32_t _stext;
extern const uint32_t _etext;
extern const uint32_t _sstack;
extern const uint32_t _estack;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer) {
    // if (stack_is_overflow) {
        // if (on_thread_before_fault) {
        //     printf(print_info[PRINT_THREAD_STACK_OVERFLOW], stack_pointer);
        // } else {
        //     printf(print_info[PRINT_MAIN_STACK_OVERFLOW], stack_pointer);
        // }
        if ((uint32_t) stack_pointer < stack_start_addr) {
            stack_pointer = (uint32_t *) stack_start_addr;
        } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
            stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
        }
    // }
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    }
    printf("====================================");
}

void backtrace_test(void)
{

    code_start_addr = (uint32_t)&_stext;
    code_end_addr = (uint32_t)&_etext;
    code_size = code_end_addr - code_start_addr;
    stack_start_addr = (uint32_t)&_sstack;
    stack_end_addr = (uint32_t)&_estack;
    stack_size = stack_end_addr - stack_start_addr;
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());

    int bt1 = 0xAA;
    int bt2 = 0x55;
    int bt3 = 0x77;
    (void)bt1;
    (void)bt2;
    (void)bt3;
        /* CmBacktrace initialize */
    // cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
    
//    fault_test_by_unalign();
    // fault_test_by_div0();
    
    __enable_irq();
    // printf("[%s] start\n", __func__);
    // test_div();
    // fault_test_by_div0();
    // fault_test_by_unalign();
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
    printf("sp=0x%lx\n", sp);
    /*
    根据函数调用执行流程的原理，当程序跳入异常时，传入当前位置sp指针，
    通过对sp指针进行循环自增访问操作获取栈中的内容，sp指向栈顶，循环
    自增的边界即任务栈的栈底，由于Cortex-M使用的thum-2指令集，汇编指
    令长度为2字节，因此可通过判断栈中的数据是否两字节对齐及位于代码段
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
   uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
        if ((addr >= (uint32_t)&_stext) && 
            (sp <= (uint32_t)&_etext) &&
            IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
            

        }
        sp += 4;
    }

}