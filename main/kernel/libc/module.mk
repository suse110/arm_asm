
LIBC_DIR = kernel/libc

ASMSRC += $(LIBC_DIR)/memcpy.s

CFLAGS += -I$(SDKPATH)/$(LIBC_DIR)
CFLAGS += -DLIBC_ENABLE

