
SUPERBUS_DIR = kernel/service/superbus

SRC += $(SUPERBUS_DIR)/src/test.c
SRC += $(SUPERBUS_DIR)/src/superbus.c
SRC += $(SUPERBUS_DIR)/src/spim_gpio.c

CFLAGS += -I$(SDKPATH)/$(SUPERBUS_DIR)/inc
CFLAGS += -DSUPERBUS_ENABLE

