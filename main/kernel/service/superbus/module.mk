
SUPERBUS_DIR = kernel/service/superbus

SRC += $(SUPERBUS_DIR)/src/superbus.c
SRC += $(SUPERBUS_DIR)/src/sw_spi_master.c
SRC += $(SUPERBUS_DIR)/src/sw_spi_slave.c

CFLAGS += -I$(SDKPATH)/$(SUPERBUS_DIR)/inc
CFLAGS += -DSUPERBUS_ENABLE

