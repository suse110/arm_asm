
SERVICE_DIR = kernel/service

SRC += $(SOURCE_DIR)/$(SERVICE_DIR)/lite_printf/lite_printf.c
SRC += $(SOURCE_DIR)/$(SERVICE_DIR)/printf/printf.c
SRC += $(SOURCE_DIR)/$(SERVICE_DIR)/rtos/task.c

SRC += $(SOURCE_DIR)/$(SERVICE_DIR)/shell/src/shell.c
SRC += $(SOURCE_DIR)/$(SERVICE_DIR)/backtrace/src/backtrace.c

CFLAGS += -I$(SOURCE_DIR)/$(SERVICE_DIR)/rtos
CFLAGS += -I$(SOURCE_DIR)/$(SERVICE_DIR)/lite_printf
CFLAGS += -I$(SOURCE_DIR)/$(SERVICE_DIR)/printf
CFLAGS += -I$(SOURCE_DIR)/$(SERVICE_DIR)/shell/inc
CFLAGS += -I$(SOURCE_DIR)/$(SERVICE_DIR)/backtrace/inc
# for printf module
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -DPRINTF_DISABLE_SUPPORT_LONG_LONG
CFLAGS += -DPRINTF_DISABLE_SUPPORT_FLOAT
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -D__PRINTF
