
EXCEPTION_DIR = kernel/service/exception

SRC += $(SOURCE_DIR)/$(EXCEPTION_DIR)/src/exception.c
SRC += $(SOURCE_DIR)/$(EXCEPTION_DIR)/src/example.c

CFLAGS += -I$(SOURCE_DIR)/$(EXCEPTION_DIR)/inc

