KERNEL_DIR = kernel

#include $(SDKPATH)/$(KERNEL_DIR)/libc/module.mk
include $(SDKPATH)/$(KERNEL_DIR)/service/module.mk
ifeq ($(FREERTOS_ENABLE),y)
include $(SDKPATH)/$(KERNEL_DIR)/rtos/freertos/FreeRTOS/module.mk
endif

ifeq ($(MEMFAULT_ENABLE),y)
include $(SDKPATH)/$(KERNEL_DIR)/third/memfault/module.mk
endif
