#ifndef __EXCEPTION_H__
#define __EXCEPTION_H__
#include "hal_platform.h"
#ifdef BACKTRACE_ENABLE
#include "backtrace.h"
#endif
/*Determining Which Exception Handler is Executing*/
#define EXCEPTION_CURRENT_VECTACTIVE_EXCEPTION_NUMBER (SCB->ICSR&SCB_ICSR_VECTACTIVE_Msk)
#define EXCEPTION_CURRENT_VECTACTIVE_ISR_NUMBER (EXCEPTION_CURRENT_VECTACTIVE_EXCEPTION_NUMBER - 16)

// #define FLOAT_POINT_EXCEPTION_DUMP_ENABLE
typedef struct 
{
    /*0*/ uint32_t sp;
    /*1*/ uint32_t reset_handler;
    /*2*/ uint32_t nmi_handler;
    /*3*/ uint32_t hard_fault_handler;
    /*4*/ uint32_t memory_management_handler;
    /*5*/ uint32_t bus_fault_handler;
    /*6*/ uint32_t usage_fault_handler;
    /*7*/ uint32_t default_0_handler;
    /*8*/ uint32_t default_1_handler;
    /*9*/ uint32_t default_2_handler;
    /*10*/ uint32_t default_3_handler;
    /*11*/ uint32_t svc_handler;
    /*12*/ uint32_t debug_monitor_handler;
    /*13*/ uint32_t default_4_handler;
    /*14*/ uint32_t pendsv_handler;
    /*15*/ uint32_t systick_handler;
} exception_vector_t;

typedef struct {
    char *name;
    uint32_t start_address;
    uint32_t end_address;
} exception_dump_address_t;

void exception_test(void);
extern void trigger_crash(int crash_id);
typedef struct {
    char *name;
    uint32_t start_address;
    // uint32_t end_address;
    uint32_t size;
} exception_dump_table_t;


#define EXECPTION_DUMP_ID_INIT          0
#define EXECPTION_DUMP_ID_REGISTER      1
#define EXECPTION_DUMP_ID_REGION_START  2
#define EXECPTION_DUMP_ID_REGION_DATA   3
#define EXECPTION_DUMP_ID_REGION_END    4
#define EXECPTION_DUMP_ID_DEINIT        5

#define EXECPTION_DUMP_PKT_SIZE 2048
#define EXECPTION_DUMP_BUFFER_HEAD_SIZE 4

typedef struct {
    uint8_t id;
    uint8_t region;
    uint16_t length;
    /*
    for EXECPTION_DUMP_ID_START:
        content -> start_addr(4 bytes) + region name string
    for EXECPTION_DUMP_ID_DATA:
        content -> region data
    for EXECPTION_DUMP_ID_START:
        content -> end_addr(4 bytes) 
    */
    void * content;
    uint8_t buffer[EXECPTION_DUMP_PKT_SIZE + EXECPTION_DUMP_BUFFER_HEAD_SIZE];
} exception_dump_buffer_t;

/*define a C struct to represent the register stacking*/
typedef struct __attribute__((packed)) ContextStateFrame {
    /*00*/uint32_t r0;
    /*01*/uint32_t r1;
    /*02*/uint32_t r2;
    /*03*/uint32_t r3;
    /*04*/uint32_t r12;
    /*05*/uint32_t lr;
    /*06*/uint32_t pc;
    /*07*/uint32_t xpsr;
    /*08*/uint32_t r4;
    /*09*/uint32_t r5;
    /*10*/uint32_t r6;
    /*11*/uint32_t r7;
    /*12*/uint32_t r8;
    /*13*/uint32_t r9;
    /*14*/uint32_t r10;
    /*15*/uint32_t r11;
    /*16*/uint32_t psp;
    /*17*/uint32_t msp;
    /*18*/uint32_t control;
    /*19*/uint32_t basepri;
    /*20*/uint32_t primask;
    /*21*/uint32_t faultmask;
    /*22*/uint32_t fpscr;
    /*23*/uint32_t s0;
    /*24*/uint32_t s1;
    /*25*/uint32_t s2;
    /*26*/uint32_t s3;
    /*27*/uint32_t s4;
    /*28*/uint32_t s5;
    /*29*/uint32_t s6;
    /*30*/uint32_t s7;
    /*31*/uint32_t s8;
    /*32*/uint32_t s9;
    /*33*/uint32_t s10;
    /*34*/uint32_t s11;
    /*35*/uint32_t s12;
    /*36*/uint32_t s13;
    /*37*/uint32_t s14;
    /*38*/uint32_t s15;
    /*39*/uint32_t s16;
    /*40*/uint32_t s17;
    /*41*/uint32_t s18;
    /*42*/uint32_t s19;
    /*43*/uint32_t s20;
    /*44*/uint32_t s21;
    /*45*/uint32_t s22;
    /*46*/uint32_t s23;
    /*47*/uint32_t s24;
    /*48*/uint32_t s25;
    /*49*/uint32_t s26;
    /*50*/uint32_t s27;
    /*51*/uint32_t s28;
    /*52*/uint32_t s29;
    /*53*/uint32_t s30;
    /*54*/uint32_t s31;
} sContextStateFrame;

void exception_dump(sContextStateFrame *frame );
void trigger_crash(int crash_id);


#include <stdint.h>

/**
 * @brief Complete exception context structure
 * @note Member order MUST match assembly save sequence exactly
 * @warning Changing member order requires updating offsets in assembly
 */
typedef struct {
#ifdef FLOAT_POINT_EXCEPTION_DUMP_ENABLE
    /* ------------------------------------ */
    /* FPU State (Conditionally Saved) */
    /* ------------------------------------ */
    uint32_t s[32];     // FPU registers S0-S15 (auto-saved if FPU active), S16-S31 (manually saved)
    uint32_t fpscr;  // FPU status/control register
#endif
    uint32_t sp;
    /* ------------------------------------ */
    /* General-Purpose Registers (Manually Saved) */
    /* ------------------------------------ */
    uint32_t r4;  // Must match assembly STMIA sequence
    uint32_t r5;
    uint32_t r6;
    uint32_t r7;
    uint32_t r8;
    uint32_t r9;
    uint32_t r10;
    uint32_t r11;

    /* ------------------------------------ */
    /* Hardware Auto-Saved Registers (From Stack) */
    /* ------------------------------------ */
    uint32_t r0;   // Loaded from exception stack
    uint32_t r1;
    uint32_t r2;
    uint32_t r3;
    uint32_t r12;  // Temporary register
    uint32_t lr;   // EXC_RETURN value
    uint32_t pc;   // Exception PC
    uint32_t xpsr; // Contains exception number

    /* ------------------------------------ */
    /* System Registers */
    /* ------------------------------------ */
    uint32_t msp;      // Main Stack Pointer
    uint32_t psp;      // Process Stack Pointer
    uint32_t primask;  // Interrupt mask (saved immediately on entry)
    uint32_t faultmask;
    uint32_t basepri;
    uint32_t control;  // Stack selection and privilege
    uint32_t exc_return;   // EXC_RETURN value

    /* ------------------------------------ */
    /* Fault Diagnostic Registers */
    /* ------------------------------------ */
    uint32_t mmfar;    // MemManage Fault Address (MMFAR)
    uint32_t bfar;     // Bus Fault Address (BFAR)
    uint32_t cfsr;     // Configurable Fault Status (CFSR)
    uint32_t hfsr;     // HardFault Status (HFSR)
    uint32_t dfsr;     // Debug Fault Status (DFSR)
    uint32_t afsr;     // Auxiliary Fault Status (AFSR)

    /* ------------------------------------ */
    /* Metadata */
    /* ------------------------------------ */
    uint32_t sp_before_exception;
    uint32_t exception_id; // IPSR exception number
    uint32_t timestamp;    // DWT cycle count
} exception_context_t;

extern exception_context_t g_exception_context;
void analyze_exception(void);
void exception_printf(const char *fmt, ...);
#endif // __EXCEPTION_H__
