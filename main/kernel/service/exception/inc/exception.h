#ifndef __EXCEPTION_H__
#define __EXCEPTION_H__
#include "hal_platform.h"
#ifdef BACKTRACE_ENABLE
#include "backtrace.h"
#endif
/*Determining Which Exception Handler is Executing*/
#define EXCEPTION_CURRENT_VECTACTIVE_EXCEPTION_NUMBER (SCB->ICSR&SCB_ICSR_VECTACTIVE_Msk)
#define EXCEPTION_CURRENT_VECTACTIVE_ISR_NUMBER (EXCEPTION_CURRENT_VECTACTIVE_EXCEPTION_NUMBER - 16)

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


#define EXECPTION_DUMP_ID_START 0
#define EXECPTION_DUMP_ID_DATA  1
#define EXECPTION_DUMP_ID_END   2

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
} exception_dump_buffer_t;

void exception_dump(void);
#endif // __EXCEPTION_H__
