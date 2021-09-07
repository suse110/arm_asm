
EXCEPTION_DIR = kernel/service/exception

SRC += $(EXCEPTION_DIR)/src/exception.c
SRC += $(EXCEPTION_DIR)/src/example.c

CFLAGS += -I$(SDKPATH)/$(EXCEPTION_DIR)/inc

