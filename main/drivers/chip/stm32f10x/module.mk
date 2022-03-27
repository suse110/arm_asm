
CHIP_DIR = drivers/chip/stm32f10x

SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/misc.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_adc.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_bkp.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_can.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_cec.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_crc.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_dac.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_dbgmcu.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_dma.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_exti.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_flash.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_fsmc.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_gpio.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_i2c.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_iwdg.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_pwr.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_rcc.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_rtc.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_sdio.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_spi.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_tim.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_usart.c
SRC += $(CHIP_DIR)/STM32F10x_StdPeriph_Driver/src/stm32f10x_wwdg.c

CFLAGS += -I$(SDKPATH)/drivers/chip/stm32f10x/STM32F10x_StdPeriph_Driver/inc

CFLAGS += -I$(SDKPATH)/drivers/CMSIS/Include
CFLAGS += -DSTM32F10X_MD
CFLAGS += -DUSE_STDPERIPH_DRIVER



