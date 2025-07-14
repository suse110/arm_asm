
LIBC_DIR = kernel/libc

# ASMSRC += $(LIBC_DIR)/libc_opt.s
SRC += $(LIBC_DIR)/memcpy.c
CFLAGS += -I$(SDKPATH)/$(LIBC_DIR)
CFLAGS += -DLIBC_ENABLE

