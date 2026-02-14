# feature.cmake - Project feature configuration
# Equivalent to feature.mk in Makefile system
#
# Usage: In project CMakeLists.txt:
#   include(${CMAKE_SOURCE_DIR}/cmake/feature.cmake)

# ============================================================================
# Chip and Board Configuration
# ============================================================================
set(CHIP_CONFIG "stm32f4xx" CACHE STRING "Chip configuration")
set(BOARD_TYPE "stm32f401re-nucleo" CACHE STRING "Board type")

# ============================================================================
# Feature Flags (equivalent to feature.mk)
# ============================================================================

# Standard library support
option(NOSTDLIB_ENABLE "Disable standard library" OFF)

# RTOS support
option(RTOS_ENABLE "Enable custom RTOS" ON)

# Shell support
option(SHELL_ENABLE "Enable shell" OFF)

# Backtrace support
option(BACKTRACE_ENABLE "Enable backtrace" OFF)
option(CM_BACKTRACE_ENABLE "Enable CmBacktrace" OFF)

# Exception handling
option(EXCEPTION_ENABLE "Enable exception handling" ON)

# QEMU support
option(QEMU_ENABLE "Enable QEMU specific code" OFF)
option(QEMU_DEBUG_ENABLE "Enable QEMU debug" OFF)

# Syslog support
option(SYSLOG_ENABLE "Enable syslog" OFF)

# Serial command support
option(SERIAL_CMD_ENABLE "Enable serial command" ON)

# FreeRTOS support
option(FREERTOS_ENABLE "Enable FreeRTOS" OFF)

# Memfault support
option(MEMFAULT_ENABLE "Enable Memfault" OFF)

# HAL Driver
option(HAL_DRIVER_ENABLE "Enable HAL driver" ON)

# Stepper motor
option(BSP_STEPPER_MOTOR_ENABLE "Enable stepper motor" ON)

# ============================================================================
# Derived Flags (from feature.mk logic)
# ============================================================================

if(NOSTDLIB_ENABLE)
    list(APPEND FEATURE_DEFINES NOSTDLIB_ENABLE)
endif()

if(QEMU_DEBUG_ENABLE)
    list(APPEND FEATURE_DEFINES QEMU_DEBUG_ENABLE)
endif()

if(RTOS_ENABLE)
    list(APPEND FEATURE_DEFINES RTOS_ENABLE)
endif()

if(SHELL_ENABLE)
    list(APPEND FEATURE_DEFINES SHELL_ENABLE)
endif()

if(BACKTRACE_ENABLE)
    list(APPEND FEATURE_DEFINES BACKTRACE_ENABLE)
endif()

if(CM_BACKTRACE_ENABLE)
    list(APPEND FEATURE_DEFINES CM_BACKTRACE_ENABLE)
endif()

if(EXCEPTION_ENABLE)
    list(APPEND FEATURE_DEFINES EXCEPTION_ENABLE)
endif()

if(SYSLOG_ENABLE)
    list(APPEND FEATURE_DEFINES SYSLOG_ENABLE)
endif()

if(SERIAL_CMD_ENABLE)
    list(APPEND FEATURE_DEFINES SERIAL_CMD_ENABLE)
endif()

if(FREERTOS_ENABLE)
    list(APPEND FEATURE_DEFINES FREERTOS_ENABLE)
endif()

if(MEMFAULT_ENABLE)
    list(APPEND FEATURE_DEFINES MEMFAULT_ENABLE)
endif()

if(HAL_DRIVER_ENABLE)
    list(APPEND FEATURE_DEFINES HAL_DRIVER_ENABLE)
endif()

if(BSP_STEPPER_MOTOR_ENABLE)
    list(APPEND FEATURE_DEFINES BSP_STEPPER_MOTOR_ENABLE)
endif()

# ============================================================================
# Print Configuration
# ============================================================================
message(STATUS "Feature Configuration:")
message(STATUS "  CHIP: ${CHIP_CONFIG}")
message(STATUS "  BOARD: ${BOARD_TYPE}")
message(STATUS "  RTOS: ${RTOS_ENABLE}")
message(STATUS "  EXCEPTION: ${EXCEPTION_ENABLE}")
message(STATUS "  SERIAL_CMD: ${SERIAL_CMD_ENABLE}")
