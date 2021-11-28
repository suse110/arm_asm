
SERVICE_DIR = kernel/service

# for printf module
SRC += $(SERVICE_DIR)/printf/printf.c
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/printf
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -DPRINTF_DISABLE_SUPPORT_LONG_LONG
# CFLAGS += -DPRINTF_DISABLE_SUPPORT_FLOAT
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -D__PRINTF

SRC += $(SERVICE_DIR)/lite_printf/lite_printf.c
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/lite_printf


ifeq ($(RTOS_ENABLE),y)
SRC += $(SERVICE_DIR)/rtos/switch.c
SRC += $(SERVICE_DIR)/rtos/task_main.c
SRC += $(SERVICE_DIR)/rtos/time.c
SRC += $(SERVICE_DIR)/rtos/event.c
SRC += $(SERVICE_DIR)/rtos/sem.c
SRC += $(SERVICE_DIR)/rtos/mbox.c
SRC += $(SERVICE_DIR)/rtos/memblock.c
SRC += $(SERVICE_DIR)/rtos/event_group.c
SRC += $(SERVICE_DIR)/rtos/ostimer.c
SRC += $(SERVICE_DIR)/rtos/mutex.c
SRC += $(SERVICE_DIR)/rtos/task.c
SRC += $(SERVICE_DIR)/rtos/bitmap.c
SRC += $(SERVICE_DIR)/rtos/list.c
ASMSRC+=$(SERVICE_DIR)/rtos/osstart.s
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/rtos
CFLAGS += -DRTOS_ENABLE
endif

ifeq ($(SHELL_ENABLE),y)
SRC += $(SERVICE_DIR)/shell/src/shell.c
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/shell/inc
CFLAGS += -DSHELL_ENABLE
endif

ifeq ($(BACKTRACE_ENABLE),y)
SRC += $(SERVICE_DIR)/backtrace/src/backtrace.c
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/backtrace/inc
CFLAGS += -DBACKTRACE_ENABLE
endif

ifeq ($(CM_BACKTRACE_ENABLE),y)
SRC += $(SERVICE_DIR)/CmBacktrace/cm_backtrace/cm_backtrace.c
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/CmBacktrace/cm_backtrace
CFLAGS += -I$(SDKPATH)/$(SERVICE_DIR)/CmBacktrace/cm_backtrace/config
CFLAGS += -DCM_BACKTRACE_ENABLE
endif


ifeq ($(EXCEPTION_ENABLE),y)
include $(SDKPATH)/$(SERVICE_DIR)/exception/module.mk
endif

# include $(SDKPATH)/$(SERVICE_DIR)/hibribus/module.mk
