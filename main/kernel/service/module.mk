
SERVICE_DIR = kernel/service

SRC += $(SERVICE_DIR)/lite_printf/lite_printf.c
SRC += $(SERVICE_DIR)/printf/printf.c
SRC += $(SERVICE_DIR)/rtos/task.c

SRC += $(SERVICE_DIR)/shell/src/shell.c
SRC += $(SERVICE_DIR)/backtrace/src/backtrace.c


CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/rtos
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/lite_printf
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/printf
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/shell/inc
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/backtrace/inc


ifeq ($(CM_BACKTRACE_ENABLE),y)
SRC += $(SERVICE_DIR)/CmBacktrace/cm_backtrace/cm_backtrace.c
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/CmBacktrace/cm_backtrace
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/CmBacktrace/cm_backtrace/config
CFLAGS += -DCM_BACKTRACE_ENABLE
endif

# for printf module
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -DPRINTF_DISABLE_SUPPORT_LONG_LONG
CFLAGS += -DPRINTF_DISABLE_SUPPORT_FLOAT
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -D__PRINTF

include $(SDKPATH)/$(SERVICE_DIR)/exception/module.mk