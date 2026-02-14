# modules.cmake - Module source file aggregation
# Equivalent to module.mk files in Makefile system
#
# This file collects all source files from enabled modules

# ============================================================================
# Helper function to add module sources
# ============================================================================
function(add_module_sources)
    set(options)
    set(oneValueArgs)
    set(multiValueArgs SOURCES INCLUDES DEFINES)
    cmake_parse_arguments(ARG "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN})

    if(ARG_SOURCES)
        list(APPEND MODULE_SRCS ${ARG_SOURCES})
        set(MODULE_SRCS ${MODULE_SRCS} PARENT_SCOPE)
    endif()

    if(ARG_INCLUDES)
        list(APPEND MODULE_INCS ${ARG_INCLUDES})
        set(MODULE_INCS ${MODULE_INCS} PARENT_SCOPE)
    endif()

    if(ARG_DEFINES)
        list(APPEND MODULE_DEFS ${ARG_DEFINES})
        set(MODULE_DEFS ${MODULE_DEFS} PARENT_SCOPE)
    endif()
endfunction()

# ============================================================================
# STM32F4xx HAL Driver (drivers/chip/stm32f4xx/module.mk)
# ============================================================================
set(HAL_F4_SRCS
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_adc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_adc_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_can.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cortex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_crc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cryp.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_cryp_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dac.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dac_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dcmi.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma2d.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_dma_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_eth.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_flash.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_flash_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_gpio.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hash.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hash_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_hcd.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2c.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2c_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_irda.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_iwdg.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_ltdc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_nand.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_nor.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pccard.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pwr.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_pwr_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rcc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rcc_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rng.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rtc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_rtc_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sai.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sd.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sdram.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_smartcard.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_spi.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_sram.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_tim.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_tim_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_uart.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_usart.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_wwdg.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_i2s_ex.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_irda.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_iwdg.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_hal_ltdc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_fmc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_fsmc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_sdmmc.c
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/src/stm32f4xx_ll_usb.c
)

set(HAL_F4_INCS
    drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/inc
    drivers/CMSIS/Include
    drivers/CMSIS/Device/ST/STM32F4xx/Include
)

# ============================================================================
# STM32F4xx Nucleo BSP (drivers/chip/stm32f4xx/BSP/STM32F4xx-Nucleo)
# ============================================================================
set(STM32F4XX_NUCLEO_SRCS
    drivers/chip/stm32f4xx/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c
)
set(STM32F4XX_NUCLEO_INCS
    drivers/chip/stm32f4xx/BSP/STM32F4xx-Nucleo
)

# ============================================================================
# STM32F10x Standard Peripheral Library (drivers/chip/stm32f10x/module.mk)
# ============================================================================
set(STM32F10X_STDPERIPH_SRCS
    drivers/chip/stm32f10x/STM32F10x_StdPeriph_Driver/src/stm32f10x_gpio.c
    drivers/chip/stm32f10x/STM32F10x_StdPeriph_Driver/src/stm32f10x_rcc.c
    drivers/chip/stm32f10x/STM32F10x_StdPeriph_Driver/src/stm32f10x_usart.c
    drivers/chip/stm32f10x/STM32F10x_StdPeriph_Driver/src/misc.c
)
set(STM32F10X_STDPERIPH_INCS
    drivers/chip/stm32f10x/STM32F10x_StdPeriph_Driver/inc
    drivers/CMSIS/Include
    drivers/CMSIS/Device/ST/STM32F10x____
    drivers/CMSIS/Device/ST/STM32F1xx/Include
)

# ============================================================================
# LM3S811 Driver
# ============================================================================
set(LM3S811_SRCS
)
set(LM3S811_INCS
    drivers/CMSIS/Include
)

# ============================================================================
# STM32L5xx HAL Driver (drivers/chip/stm32l5xx/module.mk)
# ============================================================================
set(HAL_L5_SRCS
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_cortex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_dma.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_dma_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_exti.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_flash.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_flash_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_flash_ramfunc.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_gpio.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_gtzc.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_hash.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_hash_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_icache.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_pwr.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_pwr_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_rcc.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_rcc_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_sram.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_uart.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_uart_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_usart.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_hal_usart_ex.c
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/src/stm32l5xx_ll_utils.c
)

set(HAL_L5_INCS
    drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/inc
    drivers/CMSIS/Include
    drivers/CMSIS/Device/ST/STM32L5xx/Include
)

# ============================================================================
# STM32L5xx Nucleo BSP
# ============================================================================
set(STM32L5XX_NUCLEO_SRCS
    drivers/chip/stm32l5xx/BSP/STM32L5xx_Nucleo/stm32l5xx_nucleo.c
    drivers/chip/stm32l5xx/BSP/STM32L5xx_Nucleo/stm32l5xx_nucleo_usbpd_pwr.c
)
set(STM32L5XX_NUCLEO_INCS
    drivers/chip/stm32l5xx/BSP/STM32L5xx_Nucleo
)

# ============================================================================
# FreeRTOS Kernel (kernel/rtos/freertos/module.mk)
# ============================================================================
set(FREERTOS_SRCS
    kernel/rtos/freertos/FreeRTOS-Kernel/croutine.c
    kernel/rtos/freertos/FreeRTOS-Kernel/event_groups.c
    kernel/rtos/freertos/FreeRTOS-Kernel/list.c
    kernel/rtos/freertos/FreeRTOS-Kernel/queue.c
    kernel/rtos/freertos/FreeRTOS-Kernel/stream_buffer.c
    kernel/rtos/freertos/FreeRTOS-Kernel/tasks.c
    kernel/rtos/freertos/FreeRTOS-Kernel/timers.c
    kernel/rtos/freertos/FreeRTOS-Kernel/portable/GCC/ARM_CM4F/port.c
    kernel/rtos/freertos/FreeRTOS-Kernel/portable/MemMang/heap_4.c
)
set(FREERTOS_INCS
    kernel/rtos/freertos/FreeRTOS-Kernel/include
    kernel/rtos/freertos/FreeRTOS-Kernel/portable/GCC/ARM_CM4F
)
set(FREERTOS_DEFS
    FREERTOS_ENABLE
)

# ============================================================================
# CuTest Unit Testing (kernel/third/unit-test/module.mk)
# ============================================================================
set(CUTEST_SRCS
    kernel/third/unit-test/cutest/CuTest.c
)
set(CUTEST_INCS
    kernel/third/unit-test/cutest
)

# ============================================================================
# BSP Stepper Motor (drivers/bsp/stepper/module.mk)
# ============================================================================
set(STEPPER_SRCS
    drivers/bsp/stepper/src/stepper_motor.c
)
set(STEPPER_INCS
    drivers/bsp/stepper/inc
)

# ============================================================================
# BSP Board LED (drivers/bsp/board/stm32f401re-nucleo/led/module.mk)
# ============================================================================
set(LED_SRCS
    drivers/bsp/board/stm32f401re-nucleo/led/src/led.c
)
set(LED_INCS
    drivers/bsp/board/stm32f401re-nucleo/led/inc
)

# ============================================================================
# Kernel Service - Basic (kernel/service/module.mk always included)
# ============================================================================
set(KERNEL_PRINTF_SRCS
    kernel/service/printf/printf.c
)
set(KERNEL_PRINTF_INCS
    kernel/service/printf
)
set(KERNEL_PRINTF_DEFS
    PRINTF_DISABLE_SUPPORT_EXPONENTIAL
    PRINTF_DISABLE_SUPPORT_LONG_LONG
    __PRINTF
)

set(KERNEL_LITE_PRINTF_SRCS
    kernel/service/lite_printf/lite_printf.c
)
set(KERNEL_LITE_PRINTF_INCS
    kernel/service/lite_printf
)

set(KERNEL_STP_SRCS
    kernel/service/stp/stp.c
)
set(KERNEL_STP_INCS
    kernel/service/stp
)

# ============================================================================
# Kernel Service - RTOS (kernel/service/module.mk conditionally included)
# ============================================================================
set(KERNEL_RTOS_SRCS
    kernel/service/rtos/switch.c
    kernel/service/rtos/task_main.c
    kernel/service/rtos/time.c
    kernel/service/rtos/event.c
    kernel/service/rtos/sem.c
    kernel/service/rtos/mbox.c
    kernel/service/rtos/memblock.c
    kernel/service/rtos/event_group.c
    kernel/service/rtos/ostimer.c
    kernel/service/rtos/mutex.c
    kernel/service/rtos/task.c
    kernel/service/rtos/bitmap.c
    kernel/service/rtos/list.c
)
set(KERNEL_RTOS_ASMS
    kernel/service/rtos/osstart.s
)
set(KERNEL_RTOS_INCS
    kernel/service/rtos
)

# ============================================================================
# Kernel Service - Exception (kernel/service/exception/module.mk)
# ============================================================================
set(KERNEL_EXCEPTION_SRCS
    kernel/service/exception/src/exception_handler.c
    kernel/service/exception/src/example.c
)
set(KERNEL_EXCEPTION_INCS
    kernel/service/exception/inc
)

# ============================================================================
# Kernel Service - Shell (kernel/service/module.mk conditionally)
# ============================================================================
set(KERNEL_SHELL_SRCS
    kernel/service/shell/src/shell.c
)
set(KERNEL_SHELL_INCS
    kernel/service/shell/inc
)

# ============================================================================
# Kernel Service - Backtrace (kernel/service/module.mk conditionally)
# ============================================================================
set(KERNEL_BACKTRACE_SRCS
    kernel/service/backtrace/src/backtrace.c
)
set(KERNEL_BACKTRACE_INCS
    kernel/service/backtrace/inc
)

# ============================================================================
# Kernel Service - CmBacktrace (kernel/service/module.mk conditionally)
# ============================================================================
set(KERNEL_CM_BACKTRACE_SRCS
    kernel/service/CmBacktrace/cm_backtrace/cm_backtrace.c
)
set(KERNEL_CM_BACKTRACE_INCS
    kernel/service/CmBacktrace/cm_backtrace
    kernel/service/CmBacktrace/cm_backtrace/config
)

# ============================================================================
# Kernel Service - Syslog (kernel/service/module.mk conditionally)
# ============================================================================
set(KERNEL_SYSLOG_SRCS
    kernel/service/syslog/src/syslog.c
)
if(CHIP_CONFIG STREQUAL "stm32f4xx" AND NOT QEMU_ENABLE)
    list(APPEND KERNEL_SYSLOG_SRCS kernel/service/syslog/src/portable/stm32/serial.c)
endif()
set(KERNEL_SYSLOG_INCS
    kernel/service/syslog/inc
)

# ============================================================================
# Kernel Service - Serial Command (kernel/service/serial_cmd/module.mk)
# ============================================================================
set(KERNEL_SERIAL_CMD_SRCS
    kernel/service/serial_cmd/src/serial_protocol.c
    kernel/service/serial_cmd/src/modules/led_module.c
    kernel/service/serial_cmd/src/modules/stepper_module.c
    kernel/service/serial_cmd/src/modules/system_module.c
)
set(KERNEL_SERIAL_CMD_INCS
    kernel/service/serial_cmd/inc
    kernel/service/serial_cmd/modules
)

# ============================================================================
# Middleware - Ringbuffer (middleware/ringbuffer/module.mk)
# ============================================================================
set(MW_RINGBUFFER_SRCS
    middleware/ringbuffer/ringbuffer.c
)
set(MW_RINGBUFFER_INCS
    middleware/ringbuffer
)

# ============================================================================
# Middleware - Menu (middleware/menu/module.mk)
# ============================================================================
set(MW_MENU_SRCS
    middleware/menu/menu.c
)
set(MW_MENU_INCS
    middleware/menu
)

# ============================================================================
# Middleware - Utility (middleware/utility/module.mk)
# ============================================================================
set(MW_UTILITY_SRCS
    middleware/utility/src/crc8.c
    middleware/utility/src/crc16.c
    middleware/utility/src/crc32.c
)
set(MW_UTILITY_INCS
    middleware/utility/inc
)

# ============================================================================
# Middleware - Serial Command (middleware/serial_cmd/module.mk)
# ============================================================================
set(MW_SERIAL_CMD_SRCS
    middleware/serial_cmd/src/serial_protocol.c
    middleware/serial_cmd/src/modules/cmd_led.c
    middleware/serial_cmd/src/modules/cmd_stepper.c
    middleware/serial_cmd/src/modules/cmd_system.c
    middleware/serial_cmd/src/modules/cmd_memory.c
)
set(MW_SERIAL_CMD_INCS
    middleware/serial_cmd/inc
    middleware/serial_cmd/modules
)

# ============================================================================
# Aggregate all enabled module sources
# Call this function after including feature.cmake
# ============================================================================
function(aggregate_module_sources)
    # Clear previous values
    set(MODULE_SRCS "")
    set(MODULE_INCS "")
    set(MODULE_DEFS "")
    set(MODULE_ASMS "")

    # Always included - HAL
    if(HAL_DRIVER_ENABLE)
        if(CHIP_CONFIG STREQUAL "stm32f4xx")
            list(APPEND MODULE_SRCS ${HAL_F4_SRCS})
            list(APPEND MODULE_INCS ${HAL_F4_INCS})
            # STM32F4xx Nucleo BSP
            list(APPEND MODULE_SRCS ${STM32F4XX_NUCLEO_SRCS})
            list(APPEND MODULE_INCS ${STM32F4XX_NUCLEO_INCS})
        elseif(CHIP_CONFIG STREQUAL "stm32l5xx")
            list(APPEND MODULE_SRCS ${HAL_L5_SRCS})
            list(APPEND MODULE_INCS ${HAL_L5_INCS})
            # STM32L5xx Nucleo BSP
            list(APPEND MODULE_SRCS ${STM32L5XX_NUCLEO_SRCS})
            list(APPEND MODULE_INCS ${STM32L5XX_NUCLEO_INCS})
            list(APPEND MODULE_DEFS HAL_DRIVER_ENABLE)
        elseif(CHIP_CONFIG STREQUAL "stm32f10x")
            list(APPEND MODULE_SRCS ${STM32F10X_STDPERIPH_SRCS})
            list(APPEND MODULE_INCS ${STM32F10X_STDPERIPH_INCS})
        elseif(CHIP_CONFIG STREQUAL "lm3s811")
            list(APPEND MODULE_SRCS ${LM3S811_SRCS})
            list(APPEND MODULE_INCS ${LM3S811_INCS})
        endif()
    endif()

    # Always included - BSP
    if(BSP_STEPPER_MOTOR_ENABLE)
        list(APPEND MODULE_SRCS ${STEPPER_SRCS})
        list(APPEND MODULE_INCS ${STEPPER_INCS})
    endif()

    # Board LED (only for stm32f4xx)
    if(CHIP_CONFIG STREQUAL "stm32f4xx")
        list(APPEND MODULE_SRCS ${LED_SRCS})
        list(APPEND MODULE_INCS ${LED_INCS})
    endif()

    # Always included - Basic kernel services
    list(APPEND MODULE_SRCS ${KERNEL_PRINTF_SRCS})
    list(APPEND MODULE_SRCS ${KERNEL_LITE_PRINTF_SRCS})
    list(APPEND MODULE_SRCS ${KERNEL_STP_SRCS})
    list(APPEND MODULE_INCS ${KERNEL_PRINTF_INCS})
    list(APPEND MODULE_INCS ${KERNEL_LITE_PRINTF_INCS})
    list(APPEND MODULE_INCS ${KERNEL_STP_INCS})
    list(APPEND MODULE_DEFS ${KERNEL_PRINTF_DEFS})

    # Conditional - RTOS (custom RTOS)
    if(RTOS_ENABLE)
        list(APPEND MODULE_SRCS ${KERNEL_RTOS_SRCS})
        list(APPEND MODULE_ASMS ${KERNEL_RTOS_ASMS})
        list(APPEND MODULE_INCS ${KERNEL_RTOS_INCS})
    endif()

    # Conditional - FreeRTOS
    if(FREERTOS_ENABLE)
        list(APPEND MODULE_SRCS ${FREERTOS_SRCS})
        list(APPEND MODULE_INCS ${FREERTOS_INCS})
        list(APPEND MODULE_DEFS ${FREERTOS_DEFS})
    endif()

    # Conditional - Exception
    if(EXCEPTION_ENABLE)
        list(APPEND MODULE_SRCS ${KERNEL_EXCEPTION_SRCS})
        list(APPEND MODULE_INCS ${KERNEL_EXCEPTION_INCS})
    endif()

    # Conditional - Shell
    if(SHELL_ENABLE)
        list(APPEND MODULE_SRCS ${KERNEL_SHELL_SRCS})
        list(APPEND MODULE_INCS ${KERNEL_SHELL_INCS})
    endif()

    # Conditional - Backtrace
    if(BACKTRACE_ENABLE)
        list(APPEND MODULE_SRCS ${KERNEL_BACKTRACE_SRCS})
        list(APPEND MODULE_INCS ${KERNEL_BACKTRACE_INCS})
    endif()

    # Conditional - CmBacktrace
    if(CM_BACKTRACE_ENABLE)
        list(APPEND MODULE_SRCS ${KERNEL_CM_BACKTRACE_SRCS})
        list(APPEND MODULE_INCS ${KERNEL_CM_BACKTRACE_INCS})
    endif()

    # Conditional - Syslog
    if(SYSLOG_ENABLE)
        list(APPEND MODULE_SRCS ${KERNEL_SYSLOG_SRCS})
        list(APPEND MODULE_INCS ${KERNEL_SYSLOG_INCS})
    endif()

    # Conditional - Serial Command (from middleware)
    if(SERIAL_CMD_ENABLE)
        list(APPEND MODULE_SRCS ${MW_SERIAL_CMD_SRCS})
        list(APPEND MODULE_INCS ${MW_SERIAL_CMD_INCS})
    endif()

    # Conditional - CuTest
    if(CUTEST_ENABLE)
        list(APPEND MODULE_SRCS ${CUTEST_SRCS})
        list(APPEND MODULE_INCS ${CUTEST_INCS})
    endif()

    # Always included - Middleware
    list(APPEND MODULE_SRCS ${MW_RINGBUFFER_SRCS})
    list(APPEND MODULE_SRCS ${MW_MENU_SRCS})
    list(APPEND MODULE_SRCS ${MW_UTILITY_SRCS})
    list(APPEND MODULE_INCS ${MW_RINGBUFFER_INCS})
    list(APPEND MODULE_INCS ${MW_MENU_INCS})
    list(APPEND MODULE_INCS ${MW_UTILITY_INCS})

    # Export to parent scope
    set(MODULE_SRCS ${MODULE_SRCS} PARENT_SCOPE)
    set(MODULE_INCS ${MODULE_INCS} PARENT_SCOPE)
    set(MODULE_DEFS ${MODULE_DEFS} PARENT_SCOPE)
    set(MODULE_ASMS ${MODULE_ASMS} PARENT_SCOPE)

    message(STATUS "Module Sources:")
    message(STATUS "  Sources: ${MODULE_SRCS}")
    message(STATUS "  ASM: ${MODULE_ASMS}")
endfunction()
