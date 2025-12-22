#include "../inc/modules/system_module.h"
#include "../inc/serial_protocol.h"
#if defined(__ARM_ARCH_8M_MAIN__)
#include "core_cm33.h"
#elif defined(__ARM_ARCH_7M__) || defined(__ARM_ARCH_7EM__)
#include "stm32f401xe.h"
#elif defined(__ARM_ARCH_6M__)
#include "core_cm0.h"
#endif
static void stack_overflow(void) {
    stack_overflow();
}
// 前置声明触发异常的函数
static void trigger_hard_fault(void);
static void trigger_usage_fault(void);
static void trigger_mem_manage_fault(void);
static void trigger_bus_fault(void);
static void trigger_stack_overflow_fault(void);
static void trigger_divide_by_zero_fault(void);
static void trigger_alignment_fault(void);

// 触发硬fault异常
static void trigger_hard_fault(void) {
    __asm("BKPT #0"); // 触发断点异常，用于调试
}

// 触发用法fault异常
static void trigger_usage_fault(void) {
    __asm("UDF #0"); // 触发未定义指令异常b
}

// 触发内存管理fault异常
static void trigger_mem_manage_fault(void) {
    volatile uint32_t* illegal_addr = (volatile uint32_t*)0xFFFFFFFF;
    *illegal_addr = 0; // 访问非法地址
}

// 触发总线fault异常
static void trigger_bus_fault(void) {
    __asm volatile (
        "LDR r0, =0x00000000\n"
        "LDR r1, [r0]\n"
        ::: "r0", "r1"
    ); // 从无效地址加载数据
}

// 触发栈溢出异常
static void trigger_stack_overflow_fault(void) {
    stack_overflow(); // 递归调用导致栈溢出
}

// 触发除零异常
static void trigger_divide_by_zero_fault(void) {
    volatile int zero = 0;
    volatile int result = 1 / zero; // 除零操作
    (void)result; // 避免编译器优化
}

// 触发对齐异常
static void trigger_alignment_fault(void) {
    uint8_t misaligned[3];
    volatile uint32_t* misaligned_ptr = (volatile uint32_t*)(misaligned + 1);
    volatile uint32_t value = *misaligned_ptr; // 访问未对齐地址
    (void)value; // 避免编译器优化
}

// 包装 switch case 语句的函数
static bool trigger_exception_by_type(uint8_t exception_type, SerialResponse *response) {
    switch (exception_type) {
        case 0:
            trigger_hard_fault();
            break;
        case 1:
            trigger_usage_fault();
            break;
        case 2:
            trigger_mem_manage_fault();
            break;
        case 3:
            trigger_bus_fault();
            break;
        case 4:
            trigger_stack_overflow_fault();
            break;
        case 5:
            trigger_divide_by_zero_fault();
            break;
        case 6:
            trigger_alignment_fault();
            break;
        default:
            build_response(response, false, PARAM_FORMAT_ERROR, "Unsupported exception type %d", exception_type);
            return false;
    }
    return true;
}

SerialResponse system_exception_trigger_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #sys.exc <exception_type>", &response);
    if (check != PARAM_OK) return response;
    
    uint8_t exception_type;
    if (check_uint_param(params[0], &exception_type, 0, 255, "Invalid exception type (0-255)", &response) != PARAM_OK)
        return response;
    
    if (trigger_exception_by_type(exception_type, &response)) {
        build_response(&response, true, RESP_OK, "Exception type %d triggered", exception_type);
    }
    
    return response;
}
// 前置声明显示系统寄存器状态的处理函数
static SerialResponse system_registers_show_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
// 前置声明显示 ARMv7-M 系统寄存器的函数
static void show_armv7m_registers(SerialResponse *response);


// 辅助函数：打印一个寄存器每个bit的值及含义

static void print_register_bits(const char *reg_name, uint32_t value, const RegisterBitDesc *bit_descs, size_t desc_count) {
    char bit_str[33];
    for (int i = 31; i >= 0; i--) {
        bit_str[31 - i] = (value & (1UL << i)) ? '1' : '0';
    }
    bit_str[32] = '\0';

    // 打印寄存器值和二进制表示
    printf("%s: 0x%08X (Binary: %s)\r\n", reg_name, value, bit_str);

    // 打印每个位的含义
    for (size_t i = 0; i < desc_count; i++) {
        const RegisterBitDesc *desc = &bit_descs[i];
        uint32_t bit_mask = ((1UL << desc->bit_width) - 1) << desc->bit_pos;
        uint32_t bit_value = (value & bit_mask) >> desc->bit_pos;
        printf("  Bit %u-%u: 0x%X - %s\r\n", 
                       desc->bit_pos + desc->bit_width - 1, desc->bit_pos, 
                       bit_value, desc->desc);
    }
}

// 示例 SCB->CPUID 寄存器位描述
static const RegisterBitDesc scb_cpuid_bit_descs[] = {
    {0, 4, "Revision number"},
    {4, 4, "Part number bits[3:0]"},
    {8, 4, "Part number bits[7:4]"},
    {12, 4, "Constant: 0xF"},
    {16, 4, "Variant number"},
    {20, 12, "Implementer code"},
};
// SCB->ICSR 寄存器位描述
static const RegisterBitDesc scb_icsr_bit_descs[] = {
    {0, 9, "Pending exception number (active high)"},
    {24, 1, "Pending pendsv set"},
    {25, 1, "Pending pendsv clear"},
    {26, 1, "Pending systick set"},
    {27, 1, "VECTACTIVE field valid"},
    {28, 1, "VECTPENDING field valid"},
    {29, 1, "VECTPENDING field valid"},
    {30, 1, "PRIMASK active"},
    {31, 1, "NMIPENDSET"}
};

// SCB->VTOR 寄存器位描述
static const RegisterBitDesc scb_vtor_bit_descs[] = {
    {7, 25, "Vector table base address"}
};

// SCB->AIRCR 寄存器位描述
static const RegisterBitDesc scb_aircr_bit_descs[] = {
    {0, 8, "Application interrupt and reset control register key"},
    {8, 3, "Endianness selection"},
    {16, 8, "System reset request"},
    {19, 3, "Priority grouping"}
};

// SCB->SCR 寄存器位描述
static const RegisterBitDesc scb_scr_bit_descs[] = {
    {0, 1, "Sleep on exit"},
    {1, 1, "Sleep deep"},
    {4, 1, "SEVONPEND"}
};

// SCB->CCR 寄存器位描述
static const RegisterBitDesc scb_ccr_bit_descs[] = {
    {0, 1, "Nonbasethrdfirst"},
    {3, 1, "DIV_0_TRP"},
    {4, 1, "UNALIGN_TRP"},
    {9, 1, "USERSETMPEND"},
    {10, 1, "NO_UNALIGN_SUPPORT"},
    {11, 1, "STKALIGN"}
};

// SCB->SHPR1 寄存器位描述
static const RegisterBitDesc scb_shpr1_bit_descs[] = {
    {16, 8, "Priority of memory management fault handler"},
    {24, 8, "Priority of bus fault handler"}
};

// SCB->SHPR2 寄存器位描述
static const RegisterBitDesc scb_shpr2_bit_descs[] = {
    {8, 8, "Priority of usage fault handler"}
};

// SCB->SHPR3 寄存器位描述
static const RegisterBitDesc scb_shpr3_bit_descs[] = {
    {16, 8, "Priority of SVCall handler"},
    {24, 8, "Priority of PendSV handler"},
    {31, 1, "Priority of SysTick handler"}
};

// SCB->SHCSR 寄存器位描述
static const RegisterBitDesc scb_shcsr_bit_descs[] = {
    {0, 1, "Usage fault active"},
    {1, 1, "Bus fault active"},
    {2, 1, "Memory management fault active"},
    {16, 1, "SVCall active"},
    {21, 1, "Debug monitor active"},
    {22, 1, "PendSV active"},
    {23, 1, "SysTick active"},
    {24, 1, "Usage fault pending"},
    {25, 1, "Bus fault pending"},
    {26, 1, "Memory management fault pending"},
    {30, 1, "SVCall pending"},
    {31, 1, "Debug monitor pending"}
};

// SCB->CFSR 寄存器位描述
static const RegisterBitDesc scb_cfsr_bit_descs[] = {
    {0, 1, "Instruction bus error"},
    {1, 1, "Precise data bus error"},
    {2, 1, "Imprecise data bus error"},
    {3, 1, "Unaligned access trap"},
    {4, 1, "Divide by zero trap"},
    {8, 1, "IACCVIOL"},
    {9, 1, "DACCVIOL"},
    {10, 1, "MUNSTKERR"},
    {11, 1, " MSTKERR"},
    {12, 1, "MLSPERR"},
    {16, 1, "UNDEFINSTR"},
    {17, 1, "INVSTATE"},
    {18, 1, "INVPC"},
    {19, 1, "NOCP"},
    {21, 1, "UNALIGNED"},
    {22, 1, "DIVBYZERO"}
};

// SCB->HFSR 寄存器位描述
static const RegisterBitDesc scb_hfsr_bit_descs[] = {
    {30, 1, "Forced hard fault"},
    {31, 1, "Debug event"}
};

// SCB->DFSR 寄存器位描述
static const RegisterBitDesc scb_dfsr_bit_descs[] = {
    {0, 1, "Halt request debug event"},
    {1, 1, "External debug event"},
    {2, 1, "VCATCH debug event"},
    {3, 1, "DWT match debug event"},
    {4, 1, "BKPT debug event"},
    {5, 1, "Step debug event"},
    {6, 1, "EXTERNAL debug event"}
};

// SCB->PFR 寄存器位描述
static const RegisterBitDesc scb_pfr_bit_descs[] = {
    {0, 4, "Primary processor feature"},
    {4, 4, "Secondary processor feature"}
};

// SCB->DFR 寄存器位描述
static const RegisterBitDesc scb_dfr_bit_descs[] = {
    {0, 4, "Debug feature"}
};

// SCB->ADR 寄存器位描述
static const RegisterBitDesc scb_adr_bit_descs[] = {
    {0, 4, "Auxiliary feature"}
};

// SCB->MMFR 寄存器位描述
static const RegisterBitDesc scb_mmfr_bit_descs[] = {
    {0, 4, "Memory model feature"},
    {4, 4, "Memory model feature"},
    {8, 4, "Memory model feature"},
    {12, 4, "Memory model feature"}
};

// SCB->ISAR 寄存器位描述
static const RegisterBitDesc scb_isar_bit_descs[] = {
    {0, 4, "Instruction set attribute"},
    {4, 4, "Instruction set attribute"},
    {8, 4, "Instruction set attribute"},
    {12, 4, "Instruction set attribute"},
    {16, 4, "Instruction set attribute"},
    {20, 4, "Instruction set attribute"},
    {24, 4, "Instruction set attribute"},
    {28, 4, "Instruction set attribute"}
};

// SCB->CPACR 寄存器位描述
static const RegisterBitDesc scb_cpacr_bit_descs[] = {
    {20, 2, "Access control for CP10"},
    {22, 2, "Access control for CP11"}
};
// CoreDebug 寄存器位描述
static const RegisterBitDesc coredebug_dhcsr_bit_descs[] = {
    {0, 1, "C_DEBUGEN"},
    {1, 1, "C_HALT"},
    {2, 1, "C_STEP"},
    {3, 1, "C_MASKINTS"},
    {4, 1, "C_SNAPSTALL"},
    {31, 1, "S_RESET_ST"}
};

static const RegisterBitDesc coredebug_dcrdr_bit_descs[] = {
    {0, 32, "Data register for debug register access"}
};

static const RegisterBitDesc coredebug_dcrsr_bit_descs[] = {
    {0, 1, "WRITE"},
    {1, 4, "REGSEL"},
    {31, 1, "M7S"}
};

// DWT 寄存器位描述
static const RegisterBitDesc dwt_ctrl_bit_descs[] = {
    {0, 1, "CYCCNTENA"},
    {1, 1, "COUNTFLAG"},
    {24, 1, "SYNCTAP"},
    {25, 1, "CYCTAP"},
    {26, 1, "POSTINIT"},
    {27, 1, "POSTPRESCALE"},
    {31, 1, "LAR"},
};

static const RegisterBitDesc dwt_cyccnt_bit_descs[] = {
    {0, 32, "Cycle count"}
};

// TPI 寄存器位描述
static const RegisterBitDesc tpi_acpr_bit_descs[] = {
    {0, 8, "Asynchronous clock prescaler value"}
};

static const RegisterBitDesc tpi_spcr_bit_descs[] = {
    {0, 1, "SWOENA"},
    {1, 2, "FORM"},
    {3, 2, "STPRES"},
    {5, 1, "INV"},
    {6, 1, "CSOURCE"}
};

// ITM 寄存器位描述
static const RegisterBitDesc itm_lar_bit_descs[] = {
    {0, 32, "Lock access register"}
};

static const RegisterBitDesc itm_tcr_bit_descs[] = {
    {0, 1, "ITMENA"},
    {1, 1, "TSENA"},
    {16, 8, "BUSY"},
    {31, 1, "SYNCENA"}
};
// SCnSCB 寄存器位描述
static const RegisterBitDesc scnscb_ictr_bit_descs[] = {
    {0, 4, "INTLINESNUM, int line = 32*(INTLINESNUM+1)"}
};
static const RegisterBitDesc scnscb_actlr_bit_descs[] = {
    {0, 32, "LEMENTATION DEFINED"}
};

// SysTick 寄存器位描述
static const RegisterBitDesc systick_ctrl_bit_descs[] = {
    {0, 1, "ENABLE"},
    {1, 1, "TICKINT"},
    {2, 1, "CLKSOURCE"},
    {16, 1, "COUNTFLAG"},
    {24, 1, "CALIBVALID"}
};

static const RegisterBitDesc systick_load_bit_descs[] = {
    {0, 24, "RELOAD value"}
};

static const RegisterBitDesc systick_val_bit_descs[] = {
    {0, 24, "CURRENT value"}
};

static const RegisterBitDesc systick_calib_bit_descs[] = {
    {0, 24, "TENMS value"},
    {30, 1, "SKEW"},
    {31, 1, "NOREF"}
};

// 修改 show_armv7m_registers 函数以添加新寄存器显示
static void show_armv7m_registers(SerialResponse *response) {
    // 原有 SCB 寄存器显示
    print_register_bits("SCB->CPUID", SCB->CPUID, scb_cpuid_bit_descs, sizeof(scb_cpuid_bit_descs)/sizeof(scb_cpuid_bit_descs[0]));
    print_register_bits("SCB->ICSR", SCB->ICSR, scb_icsr_bit_descs, sizeof(scb_icsr_bit_descs)/sizeof(scb_icsr_bit_descs[0]));
    print_register_bits("SCB->VTOR", SCB->VTOR, scb_vtor_bit_descs, sizeof(scb_vtor_bit_descs)/sizeof(scb_vtor_bit_descs[0]));
    print_register_bits("SCB->AIRCR", SCB->AIRCR, scb_aircr_bit_descs, sizeof(scb_aircr_bit_descs)/sizeof(scb_aircr_bit_descs[0]));
    print_register_bits("SCB->SCR", SCB->SCR, scb_scr_bit_descs, sizeof(scb_scr_bit_descs)/sizeof(scb_scr_bit_descs[0]));
    print_register_bits("SCB->CCR", SCB->CCR, scb_ccr_bit_descs, sizeof(scb_ccr_bit_descs)/sizeof(scb_ccr_bit_descs[0]));
    print_register_bits("SCB->SHPR1", *(uint32_t*)&SCB->SHP[0], scb_shpr1_bit_descs, sizeof(scb_shpr1_bit_descs)/sizeof(scb_shpr1_bit_descs[0]));
    print_register_bits("SCB->SHPR2", *(uint32_t*)&SCB->SHP[4], scb_shpr2_bit_descs, sizeof(scb_shpr2_bit_descs)/sizeof(scb_shpr2_bit_descs[0]));
    print_register_bits("SCB->SHPR3", *(uint32_t*)&SCB->SHP[8], scb_shpr3_bit_descs, sizeof(scb_shpr3_bit_descs)/sizeof(scb_shpr3_bit_descs[0]));
    print_register_bits("SCB->SHCSR", SCB->SHCSR, scb_shcsr_bit_descs, sizeof(scb_shcsr_bit_descs)/sizeof(scb_shcsr_bit_descs[0]));
    print_register_bits("SCB->CFSR", SCB->CFSR, scb_cfsr_bit_descs, sizeof(scb_cfsr_bit_descs)/sizeof(scb_cfsr_bit_descs[0]));
    print_register_bits("SCB->HFSR", SCB->HFSR, scb_hfsr_bit_descs, sizeof(scb_hfsr_bit_descs)/sizeof(scb_hfsr_bit_descs[0]));
    print_register_bits("SCB->DFSR", SCB->DFSR, scb_dfsr_bit_descs, sizeof(scb_dfsr_bit_descs)/sizeof(scb_dfsr_bit_descs[0]));
    print_register_bits("SCB->MMFAR", SCB->MMFAR, NULL, 0);
    print_register_bits("SCB->BFAR", SCB->BFAR, NULL, 0);
    print_register_bits("SCB->AFSR", SCB->AFSR, NULL, 0);
    print_register_bits("SCB->PFR[0]", SCB->PFR[0], scb_pfr_bit_descs, sizeof(scb_pfr_bit_descs)/sizeof(scb_pfr_bit_descs[0]));
    print_register_bits("SCB->PFR[1]", SCB->PFR[1], scb_pfr_bit_descs, sizeof(scb_pfr_bit_descs)/sizeof(scb_pfr_bit_descs[0]));
    print_register_bits("SCB->DFR", SCB->DFR, scb_dfr_bit_descs, sizeof(scb_dfr_bit_descs)/sizeof(scb_dfr_bit_descs[0]));
    print_register_bits("SCB->ADR", SCB->ADR, scb_adr_bit_descs, sizeof(scb_adr_bit_descs)/sizeof(scb_adr_bit_descs[0]));
    print_register_bits("SCB->MMFR[0]", SCB->MMFR[0], scb_mmfr_bit_descs, sizeof(scb_mmfr_bit_descs)/sizeof(scb_mmfr_bit_descs[0]));
    print_register_bits("SCB->MMFR[1]", SCB->MMFR[1], scb_mmfr_bit_descs, sizeof(scb_mmfr_bit_descs)/sizeof(scb_mmfr_bit_descs[0]));
    print_register_bits("SCB->MMFR[2]", SCB->MMFR[2], scb_mmfr_bit_descs, sizeof(scb_mmfr_bit_descs)/sizeof(scb_mmfr_bit_descs[0]));
    print_register_bits("SCB->MMFR[3]", SCB->MMFR[3], scb_mmfr_bit_descs, sizeof(scb_mmfr_bit_descs)/sizeof(scb_mmfr_bit_descs[0]));
    print_register_bits("SCB->ISAR[0]", SCB->ISAR[0], scb_isar_bit_descs, sizeof(scb_isar_bit_descs)/sizeof(scb_isar_bit_descs[0]));
    print_register_bits("SCB->ISAR[1]", SCB->ISAR[1], scb_isar_bit_descs, sizeof(scb_isar_bit_descs)/sizeof(scb_isar_bit_descs[0]));
    print_register_bits("SCB->ISAR[2]", SCB->ISAR[2], scb_isar_bit_descs, sizeof(scb_isar_bit_descs)/sizeof(scb_isar_bit_descs[0]));
    print_register_bits("SCB->ISAR[3]", SCB->ISAR[3], scb_isar_bit_descs, sizeof(scb_isar_bit_descs)/sizeof(scb_isar_bit_descs[0]));
    print_register_bits("SCB->ISAR[4]", SCB->ISAR[4], scb_isar_bit_descs, sizeof(scb_isar_bit_descs)/sizeof(scb_isar_bit_descs[0]));
    print_register_bits("SCB->CPACR", SCB->CPACR, scb_cpacr_bit_descs, sizeof(scb_cpacr_bit_descs)/sizeof(scb_cpacr_bit_descs[0]));

    // CoreDebug 寄存器显示
    print_register_bits("CoreDebug->DHCSR", CoreDebug->DHCSR, coredebug_dhcsr_bit_descs, sizeof(coredebug_dhcsr_bit_descs)/sizeof(coredebug_dhcsr_bit_descs[0]));
    print_register_bits("CoreDebug->DCRDR", CoreDebug->DCRDR, coredebug_dcrdr_bit_descs, sizeof(coredebug_dcrdr_bit_descs)/sizeof(coredebug_dcrdr_bit_descs[0]));
    print_register_bits("CoreDebug->DCRSR", CoreDebug->DCRSR, coredebug_dcrsr_bit_descs, sizeof(coredebug_dcrsr_bit_descs)/sizeof(coredebug_dcrsr_bit_descs[0]));

    // DWT 寄存器显示
    print_register_bits("DWT->CTRL", DWT->CTRL, dwt_ctrl_bit_descs, sizeof(dwt_ctrl_bit_descs)/sizeof(dwt_ctrl_bit_descs[0]));
    print_register_bits("DWT->CYCCNT", DWT->CYCCNT, dwt_cyccnt_bit_descs, sizeof(dwt_cyccnt_bit_descs)/sizeof(dwt_cyccnt_bit_descs[0]));

    // TPI 寄存器显示
    // print_register_bits("TPI->ACPR", TPI->ACPR, tpi_acpr_bit_descs, sizeof(tpi_acpr_bit_descs)/sizeof(tpi_acpr_bit_descs[0]));
    // print_register_bits("TPI->SPCR", TPI->SPCR, tpi_spcr_bit_descs, sizeof(tpi_spcr_bit_descs)/sizeof(tpi_spcr_bit_descs[0]));

    // ITM 寄存器显示
    print_register_bits("ITM->LAR", ITM->LAR, itm_lar_bit_descs, sizeof(itm_lar_bit_descs)/sizeof(itm_lar_bit_descs[0]));
    print_register_bits("ITM->TCR", ITM->TCR, itm_tcr_bit_descs, sizeof(itm_tcr_bit_descs)/sizeof(itm_tcr_bit_descs[0]));

    // SCnSCB 寄存器显示
    print_register_bits("SCnSCB->ICTR", SCnSCB->ICTR, scnscb_ictr_bit_descs, sizeof(scnscb_ictr_bit_descs)/sizeof(scnscb_ictr_bit_descs[0]));
    print_register_bits("SCnSCB->ACTLR", SCnSCB->ACTLR, scnscb_actlr_bit_descs, sizeof(scnscb_actlr_bit_descs)/sizeof(scnscb_actlr_bit_descs[0]));

    // SysTick 寄存器显示
    print_register_bits("SysTick->CTRL", SysTick->CTRL, systick_ctrl_bit_descs, sizeof(systick_ctrl_bit_descs)/sizeof(systick_ctrl_bit_descs[0]));
    print_register_bits("SysTick->LOAD", SysTick->LOAD, systick_load_bit_descs, sizeof(systick_load_bit_descs)/sizeof(systick_load_bit_descs[0]));
    print_register_bits("SysTick->VAL", SysTick->VAL, systick_val_bit_descs, sizeof(systick_val_bit_descs)/sizeof(systick_val_bit_descs[0]));
    print_register_bits("SysTick->CALIB", SysTick->CALIB, systick_calib_bit_descs, sizeof(systick_calib_bit_descs)/sizeof(systick_calib_bit_descs[0]));
}

static SerialResponse system_registers_show_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    // 检查参数数量是否正确
    ParamCheckResult check = check_param_count(param_count, 0, "Usage: #sys.regs", &response);
    if (check != PARAM_OK) return response;


    // 在 system_registers_show_handler 中调用显示寄存器的函数
    show_armv7m_registers(&response);
    build_response(&response, true, RESP_OK, "System registers status retrieved");
    
    return response;
}

void system_module_init(void) {
    register_module("sys", NULL);
    register_subcommand("sys", "exc", system_exception_trigger_handler);
    register_subcommand("sys", "reg", system_registers_show_handler);
}