#ifndef __EXCEPTION_H__
#define __EXCEPTION_H__
#include "hal_platform.h"

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

void exception_test(void);

#endif // __EXCEPTION_H__
