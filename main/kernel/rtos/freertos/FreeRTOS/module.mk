
FREERTOS_DIR = kernel/rtos/freertos/FreeRTOS

SRC += $(FREERTOS_DIR)/croutine.c
SRC += $(FREERTOS_DIR)/event_groups.c
SRC += $(FREERTOS_DIR)/list.c
SRC += $(FREERTOS_DIR)/queue.c
SRC += $(FREERTOS_DIR)/tasks.c
SRC += $(FREERTOS_DIR)/timers.c
SRC += $(FREERTOS_DIR)/portable/GCC/ARM_CM4F/port.c
SRC += $(FREERTOS_DIR)/portable/MemMang/heap_4.c

CFLAGS += -I$(SDKPATH)/$(FREERTOS_DIR)/include
CFLAGS += -I$(SDKPATH)/$(FREERTOS_DIR)/portable/GCC/ARM_CM4F
CFLAGS += -DFREERTOS_ENABLE

