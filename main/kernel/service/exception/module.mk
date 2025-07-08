
EXCEPTION_DIR = kernel/service/exception

# ASMSRC += $(EXCEPTION_DIR)/src/exception.s
SRC += $(EXCEPTION_DIR)/src/exception_handler.c
SRC += $(EXCEPTION_DIR)/src/example.c

CFLAGS += -I$(SDKPATH)/$(EXCEPTION_DIR)/inc
CFLAGS += -DEXCEPTION_ENABLE

