
SERVICE_DIR = kernel/service

SRC += $(SERVICE_DIR)/printf/printf.c

CFLAGS += -I$(SOURCE_DIR)/$(SERVICE_DIR)/printf
# for printf module
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -DPRINTF_DISABLE_SUPPORT_LONG_LONG
CFLAGS += -DPRINTF_DISABLE_SUPPORT_FLOAT
CFLAGS += -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL
CFLAGS += -D__PRINTF