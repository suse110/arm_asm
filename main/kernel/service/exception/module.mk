
EXCEPTION_DIR = kernel/service/exception

SRC += $(EXCEPTION_DIR)/src/exception.c
SRC += $(EXCEPTION_DIR)/src/example.c

CFLAGS += -I$(SOURCE_DIR)/$(EXCEPTION_DIR)/inc

