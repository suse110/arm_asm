
HYBRIBUS_DIR = kernel/service/hybribus

SRC += $(HYBRIBUS_DIR)/src/spi/test.c
SRC += $(HYBRIBUS_DIR)/src/hybribus.c
SRC += $(HYBRIBUS_DIR)/src/spi/spim_gpio.c

CFLAGS += -I$(SDKPATH)/$(HYBRIBUS_DIR)/inc
CFLAGS += -I$(SDKPATH)/$(HYBRIBUS_DIR)/inc/spi
CFLAGS += -DHYBRIBUS_ENABLE

