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
uint32_t heap_start_addr = 0;
uint32_t heap_end_addr = 0;
uint32_t heap_size = 0;

extern const uint32_t _stext;
extern const uint32_t _etext;
extern const uint32_t _sstack;
extern const uint32_t _estack;
extern const uint32_t _sheap;
extern const uint32_t _eheap;



static void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
    if ((uint32_t) stack_pointer < stack_start_addr) {
        stack_pointer = (uint32_t *) stack_start_addr;
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
    }

    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
    }
    printf("====================================\n");
}


enum {
    PRINT_MAIN_STACK_CFG_ERROR,
    PRINT_FIRMWARE_INFO,
    PRINT_ASSERT_ON_THREAD,
    PRINT_ASSERT_ON_HANDLER,
    PRINT_THREAD_STACK_INFO,
    PRINT_MAIN_STACK_INFO,
    PRINT_THREAD_STACK_OVERFLOW,
    PRINT_MAIN_STACK_OVERFLOW,
    PRINT_CALL_STACK_INFO,
    PRINT_CALL_STACK_ERR,
    PRINT_FAULT_ON_THREAD,
    PRINT_FAULT_ON_HANDLER,
    PRINT_REGS_TITLE,
    PRINT_HFSR_VECTBL,
    PRINT_MFSR_IACCVIOL,
    PRINT_MFSR_DACCVIOL,
    PRINT_MFSR_MUNSTKERR,
    PRINT_MFSR_MSTKERR,
    PRINT_MFSR_MLSPERR,
    PRINT_BFSR_IBUSERR,
    PRINT_BFSR_PRECISERR,
    PRINT_BFSR_IMPREISERR,
    PRINT_BFSR_UNSTKERR,
    PRINT_BFSR_STKERR,
    PRINT_BFSR_LSPERR,
    PRINT_UFSR_UNDEFINSTR,
    PRINT_UFSR_INVSTATE,
    PRINT_UFSR_INVPC,
    PRINT_UFSR_NOCP,
    PRINT_UFSR_UNALIGNED,
    PRINT_UFSR_DIVBYZERO0,
    PRINT_DFSR_HALTED,
    PRINT_DFSR_BKPT,
    PRINT_DFSR_DWTTRAP,
    PRINT_DFSR_VCATCH,
    PRINT_DFSR_EXTERNAL,
    PRINT_MMAR,
    PRINT_BFAR,
};

static const char * const print_info[] = {
#if (CMB_PRINT_LANGUAGE == CMB_PRINT_LANGUAGE_ENGLISH)
        [PRINT_MAIN_STACK_CFG_ERROR]  = "ERROR: Unable to get the main stack information, please check the configuration of the main stack",
        [PRINT_FIRMWARE_INFO]         = "Firmware name: %s, hardware version: %s, software version: %s",
        [PRINT_ASSERT_ON_THREAD]      = "Assert on thread %s",
        [PRINT_ASSERT_ON_HANDLER]     = "Assert on interrupt or bare metal(no OS) environment",
        [PRINT_THREAD_STACK_INFO]     = "===== Thread stack information =====",
        [PRINT_MAIN_STACK_INFO]       = "====== Main stack information ======",
        [PRINT_THREAD_STACK_OVERFLOW] = "Error: Thread stack(%08x) was overflow",
        [PRINT_MAIN_STACK_OVERFLOW]   = "Error: Main stack(%08x) was overflow",
        [PRINT_CALL_STACK_INFO]       = "Show more call stack info by run: addr2line -e %s%s -a -f %.*s",
        [PRINT_CALL_STACK_ERR]        = "Dump call stack has an error",
        [PRINT_FAULT_ON_THREAD]       = "Fault on thread %s",
        [PRINT_FAULT_ON_HANDLER]      = "Fault on interrupt or bare metal(no OS) environment",
        [PRINT_REGS_TITLE]            = "=================== Registers information ====================",
        [PRINT_HFSR_VECTBL]           = "Hard fault is caused by failed vector fetch",
        [PRINT_MFSR_IACCVIOL]         = "Memory management fault is caused by instruction access violation",
        [PRINT_MFSR_DACCVIOL]         = "Memory management fault is caused by data access violation",
        [PRINT_MFSR_MUNSTKERR]        = "Memory management fault is caused by unstacking error",
        [PRINT_MFSR_MSTKERR]          = "Memory management fault is caused by stacking error",
        [PRINT_MFSR_MLSPERR]          = "Memory management fault is caused by floating-point lazy state preservation",
        [PRINT_BFSR_IBUSERR]          = "Bus fault is caused by instruction access violation",
        [PRINT_BFSR_PRECISERR]        = "Bus fault is caused by precise data access violation",
        [PRINT_BFSR_IMPREISERR]       = "Bus fault is caused by imprecise data access violation",
        [PRINT_BFSR_UNSTKERR]         = "Bus fault is caused by unstacking error",
        [PRINT_BFSR_STKERR]           = "Bus fault is caused by stacking error",
        [PRINT_BFSR_LSPERR]           = "Bus fault is caused by floating-point lazy state preservation",
        [PRINT_UFSR_UNDEFINSTR]       = "Usage fault is caused by attempts to execute an undefined instruction",
        [PRINT_UFSR_INVSTATE]         = "Usage fault is caused by attempts to switch to an invalid state (e.g., ARM)",
        [PRINT_UFSR_INVPC]            = "Usage fault is caused by attempts to do an exception with a bad value in the EXC_RETURN number",
        [PRINT_UFSR_NOCP]             = "Usage fault is caused by attempts to execute a coprocessor instruction",
        [PRINT_UFSR_UNALIGNED]        = "Usage fault is caused by indicates that an unaligned access fault has taken place",
        [PRINT_UFSR_DIVBYZERO0]       = "Usage fault is caused by Indicates a divide by zero has taken place (can be set only if DIV_0_TRP is set)",
        [PRINT_DFSR_HALTED]           = "Debug fault is caused by halt requested in NVIC",
        [PRINT_DFSR_BKPT]             = "Debug fault is caused by BKPT instruction executed",
        [PRINT_DFSR_DWTTRAP]          = "Debug fault is caused by DWT match occurred",
        [PRINT_DFSR_VCATCH]           = "Debug fault is caused by Vector fetch occurred",
        [PRINT_DFSR_EXTERNAL]         = "Debug fault is caused by EDBGRQ signal asserted",
        [PRINT_MMAR]                  = "The memory management fault occurred address is %08x",
        [PRINT_BFAR]                  = "The bus fault occurred address is %08x",
#elif (CMB_PRINT_LANGUAGE == CMB_PRINT_LANGUAGE_CHINESE)
        [PRINT_MAIN_STACK_CFG_ERROR]  = "错误：无法获取主栈信息，请检查主栈的相关配置",
        [PRINT_FIRMWARE_INFO]         = "固件名称：%s，硬件版本号：%s，软件版本号：%s",
        [PRINT_ASSERT_ON_THREAD]      = "在线程(%s)中发生断言",
        [PRINT_ASSERT_ON_HANDLER]     = "在中断或裸机环境下发生断言",
        [PRINT_THREAD_STACK_INFO]     = "=========== 线程堆栈信息 ===========",
        [PRINT_MAIN_STACK_INFO]       = "============ 主堆栈信息 ============",
        [PRINT_THREAD_STACK_OVERFLOW] = "错误：线程栈(%08x)发生溢出",
        [PRINT_MAIN_STACK_OVERFLOW]   = "错误：主栈(%08x)发生溢出",
        [PRINT_CALL_STACK_INFO]       = "查看更多函数调用栈信息，请运行：addr2line -e %s%s -a -f %.*s",
        [PRINT_CALL_STACK_ERR]        = "获取函数调用栈失败",
        [PRINT_FAULT_ON_THREAD]       =  "在线程(%s)中发生错误异常",
        [PRINT_FAULT_ON_HANDLER]      = "在中断或裸机环境下发生错误异常",
        [PRINT_REGS_TITLE]            = "========================= 寄存器信息 =========================",
        [PRINT_HFSR_VECTBL]           = "发生硬错误，原因：取中断向量时出错",
        [PRINT_MFSR_IACCVIOL]         = "发生存储器管理错误，原因：企图从不允许访问的区域取指令",
        [PRINT_MFSR_DACCVIOL]         = "发生存储器管理错误，原因：企图从不允许访问的区域读、写数据",
        [PRINT_MFSR_MUNSTKERR]        = "发生存储器管理错误，原因：出栈时企图访问不被允许的区域",
        [PRINT_MFSR_MSTKERR]          = "发生存储器管理错误，原因：入栈时企图访问不被允许的区域",
        [PRINT_MFSR_MLSPERR]          = "发生存储器管理错误，原因：惰性保存浮点状态时发生错误",
        [PRINT_BFSR_IBUSERR]          = "发生总线错误，原因：指令总线错误",
        [PRINT_BFSR_PRECISERR]        = "发生总线错误，原因：精确的数据总线错误",
        [PRINT_BFSR_IMPREISERR]       = "发生总线错误，原因：不精确的数据总线错误",
        [PRINT_BFSR_UNSTKERR]         = "发生总线错误，原因：出栈时发生错误",
        [PRINT_BFSR_STKERR]           = "发生总线错误，原因：入栈时发生错误",
        [PRINT_BFSR_LSPERR]           = "发生总线错误，原因：惰性保存浮点状态时发生错误",
        [PRINT_UFSR_UNDEFINSTR]       = "发生用法错误，原因：企图执行未定义指令",
        [PRINT_UFSR_INVSTATE]         = "发生用法错误，原因：试图切换到 ARM 状态",
        [PRINT_UFSR_INVPC]            = "发生用法错误，原因：无效的异常返回码",
        [PRINT_UFSR_NOCP]             = "发生用法错误，原因：企图执行协处理器指令",
        [PRINT_UFSR_UNALIGNED]        = "发生用法错误，原因：企图执行非对齐访问",
        [PRINT_UFSR_DIVBYZERO0]       = "发生用法错误，原因：企图执行除 0 操作",
        [PRINT_DFSR_HALTED]           = "发生调试错误，原因：NVIC 停机请求",
        [PRINT_DFSR_BKPT]             = "发生调试错误，原因：执行 BKPT 指令",
        [PRINT_DFSR_DWTTRAP]          = "发生调试错误，原因：数据监测点匹配",
        [PRINT_DFSR_VCATCH]           = "发生调试错误，原因：发生向量捕获",
        [PRINT_DFSR_EXTERNAL]         = "发生调试错误，原因：外部调试请求",
        [PRINT_MMAR]                  = "发生存储器管理错误的地址：%08x",
        [PRINT_BFAR]                  = "发生总线错误的地址：%08x",
#else
    #error "CMB_PRINT_LANGUAGE defined error in 'cmb_cfg.h'"
#endif
};
#define CMB_CALL_STACK_MAX_DEPTH       16
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
    uint16_t ins1 = *((uint16_t *)addr);
    uint16_t ins2 = *((uint16_t *)(addr + 2));

#define BL_INS_MASK         0xF800
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
        return true;
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
        return true;
    } else {
        return false;
    }
}

/**
 * backtrace function call stack
 *
 * @param buffer call stack buffer
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t cm_backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
    uint32_t pc;
    size_t depth = 0;
    bool regs_saved_lr_is_valid = false;
#if 0
    if (on_fault) {
        if (!stack_is_overflow) {
            /* first depth is PC */
            buffer[depth++] = regs.saved.pc;
            /* fix the LR address in thumb mode */
            pc = regs.saved.lr - 1;
            if ((pc >= code_start_addr) && (pc <= code_start_addr + code_size) && (depth < CMB_CALL_STACK_MAX_DEPTH)
                    && (depth < size)) {
                buffer[depth++] = pc;
                regs_saved_lr_is_valid = true;
            }
        }
    }
#endif
    
    //堆栈中也放函数的临时变量，如果临时变量的值和thumb指令类似怎么办?
    //->查看LR对应地址前一条指令是否是跳转指令
    for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
        /* the *sp value may be LR, so need decrease a word to PC */
        pc = *((uint32_t *) sp) - sizeof(size_t);
        /* the Cortex-M using thumb instruction, so the pc must be an odd number */
        LOGI("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
        if (pc % 2 == 0) {
            continue;
        }
        LOGI("  valid PC=0x%08x\n", pc);
        
        /* fix the PC address in thumb mode */
        pc = *((uint32_t *) sp) - 1;
        LOGI("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
        if ((pc >= code_start_addr) && (pc <= code_start_addr + code_size) && (depth < CMB_CALL_STACK_MAX_DEPTH)
                /* check the the instruction before PC address is 'BL' or 'BLX' */
                && disassembly_ins_is_bl_blx(pc - sizeof(size_t)) && (depth < size)) {
            /* the second depth function may be already saved, so need ignore repeat */
            if ((depth == 2) && regs_saved_lr_is_valid && (pc == buffer[1])) {
                continue;
            }
            LOGI("  real PC=0x%08x\n", pc);
            buffer[depth++] = pc;
        }
    }

    return depth;
}

static void print_call_stack(uint32_t sp) {
    size_t i, cur_depth = 0;
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};

    cur_depth = cm_backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);

    for (i = 0; i < cur_depth; i++) {
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
        call_stack_info[i * (8 + 1) + 8] = ' ';
    }

    if (cur_depth) {
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "fw_name", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
                call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
void BackTraceSub(unsigned long sp);
void backtrace_test(void)
{
    int bt1 = 0xAA;
    int bt2 = 0x55;
    int bt3 = 0x77;
    (void)bt1;
    (void)bt2;
    (void)bt3;
    
    code_start_addr = (uint32_t)&_stext;
    code_end_addr = (uint32_t)&_etext;
    code_size = code_end_addr - code_start_addr;
    stack_start_addr = (uint32_t)&_sstack;
    stack_end_addr = (uint32_t)&_estack;
    stack_size = stack_end_addr - stack_start_addr;
    heap_start_addr = (uint32_t)&_sheap;
    heap_end_addr = (uint32_t)&_eheap;
    heap_size = heap_end_addr - heap_start_addr;
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
        __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
        __func__, heap_start_addr, heap_end_addr, heap_size, heap_size);

    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());

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
        printf("addr :%08x\n", addr);
        if ((addr >= (uint32_t)&_stext) && 
            (sp <= (uint32_t)&_etext) &&
            IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
            
            printf("find ld 0x%08x\n", addr);
        }
        sp += 4;
    }
    print_call_stack(cmb_get_sp());
    BackTraceSub(cmb_get_sp());
    while(1);
}



#define USGFAULT               (1U << 18)
#define BUSFAULT               (1U << 17)
#define MEMFAULT               (1U << 16)
#define DIV0FAULT              (1U << 4)
#define HARD_FAULT_IRQN        (-13)
#define MASK_16_BIT            16
#define OS_MAX_BACKTRACE       15
#define THUM_OFFSET            2
#define STACK_OFFSET           4
#define BL_CMD_OFFSET          4
#define BLX_CMD_OFFSET         2
#define PUSH_MASK_WITH_LR      0xb5
#define PUSH_MASK              0xb4
#define OFFSET_ADDRESS_MASK    0x7FF07FF
#define LOW_11_BITS_MASK       0x7FF
#define HIGH_11_BITS_MASK      0x7FF0000
#define HIGH_8_BITS_MASK       0xFF00
#define SIGN_BIT_MASK          0x400000
#define HIGH_OFFSET_NUMBER     12
#define LOW_OFFSET_NUMBER      1
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
    while (addr > (unsigned long)code_start_addr) {
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
            break;
        }
        addr -= THUM_OFFSET;
    }

    return addr;
}

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
    unsigned long target = 0;
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
    if (off & SIGN_BIT_MASK) {
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
    } else {
        target = bl + BL_CMD_OFFSET + off;
    }

    return target;
}

unsigned long  CalculateTargetAddress(unsigned long bl)
{
    unsigned long target = 0;
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
        if (tmpBL != 0) {
            target = LoopUntilEntry (tmpBL);
            tmpBL = bl - BLX_CMD_OFFSET;
            return target;
        }
        tmpBL = bl - BLX_CMD_OFFSET;
        return LoopUntilEntry(tmpBL);
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
        tmpBL = bl - BL_CMD_OFFSET;
        CalculateBLTargetAddress (tmpBL);

        return CalculateBLTargetAddress (tmpBL);
    }

    return 0;
}

void BackTraceSub(unsigned long sp)
{
    unsigned long stackPointer = sp;
    uint32_t count = 0;
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
            IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
            if ((checkBL == 0) || (checkBL == tmpJump)) {
                stackPointer += STACK_OFFSET;
                continue;
            }
            tmpJump = checkBL;
            count++;
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
        }
        stackPointer += STACK_OFFSET;
    }
}
