
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)
cmake_minimum_required(VERSION 3.16)

include_directories(inc)


option(NOSTDLIB_ENABLE "no stdlib enable" off)
if (NOSTDLIB_ENABLE)
add_library(hal_driver 
    src/hal_log.c
    src/hal_mpu.c
    src/hal_syscalls.c
)
else()
add_library(hal_driver 
    src/hal_log.c
    src/hal_mpu.c
)
endif()

# CFLAGS += -I$(SOURCE_DIR)/drivers/chip/lm3s811/inc
# CFLAGS += -I$(SOURCE_DIR)/drivers/CMSIS/Include
