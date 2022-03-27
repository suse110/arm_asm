
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)
cmake_minimum_required(VERSION 3.16)

include_directories(
    shell/inc
    rtos
    printf
    lite_printf
    exception/inc
    backtrace/inc
    )


add_library(service 
    shell/src/shell.c
    rtos/rtos.c
    printf/printf.c
    lite_printf/lite_printf.c
    exception/src/exception.c
    exception/src/example.c
    backtrace/src/backtrace.c
)

add_definitions(
    -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL 
    -DPRINTF_DISABLE_SUPPORT_LONG_LONG 
    -DPRINTF_DISABLE_SUPPORT_FLOAT 
    -DPRINTF_DISABLE_SUPPORT_EXPONENTIAL 
    -D__PRINTF
)

# CFLAGS += -I$(SOURCE_DIR)/drivers/chip/lm3s811/inc
# CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include
