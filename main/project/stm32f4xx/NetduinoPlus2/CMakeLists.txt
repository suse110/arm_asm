# STM32F4xx Netduino Plus 2 Project
# Netduino Plus 2 board with RTOS and backtrace support

# Include feature configuration
include(${CMAKE_SOURCE_DIR}/cmake/feature.cmake)

# Include module definitions
include(${CMAKE_SOURCE_DIR}/cmake/modules.cmake)

# Include common rules
include(${CMAKE_SOURCE_DIR}/cmake/rules.cmake)

# Override feature flags for this project
set(CHIP_CONFIG "stm32f4xx")
set(RTOS_ENABLE ON)
set(EXCEPTION_ENABLE OFF)   # Disable exception (conflicts with project handlers)
set(BACKTRACE_ENABLE ON)
set(SHELL_ENABLE OFF)
set(CM_BACKTRACE_ENABLE OFF)
set(SYSLOG_ENABLE OFF)
set(SERIAL_CMD_ENABLE OFF)
set(CUTEST_ENABLE ON)    # Enable CuTest for unit testing
set(BSP_STEPPER_MOTOR_ENABLE OFF)  # NetduinoPlus2 doesn't use stepper motor

# Aggregate all module sources based on feature flags
aggregate_module_sources()

# ============================================================================
# Project-Specific Sources
# ============================================================================
set(PROJECT_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/serial.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32f4xx_hal_msp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32f4xx_it.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/syscalls.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/system_stm32f4xx.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/hal_log.c
)

# Startup file
set(PROJECT_ASM
    ${CMAKE_CURRENT_SOURCE_DIR}/GCC/startup_stm32f405xx.s
)

# ============================================================================
# Include Paths
# ============================================================================
set(PROJECT_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
)

# ============================================================================
# Defines
# ============================================================================
set(PROJECT_DEFINES
    STM32F405xx
    USE_STDPERIPH_DRIVER
    STM32F4XX
)

# ============================================================================
# Linker Script
# ============================================================================
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/GCC/STM32F405RGTx_FLASH.ld)

# ============================================================================
# Combine All Sources
# ============================================================================
set(ALL_SRCS
    ${PROJECT_SRCS}
    ${PROJECT_ASM}
    ${MODULE_SRCS}
    ${MODULE_ASMS}
)

# Convert relative paths to absolute paths
set(ABS_SRCS "")
foreach(src ${ALL_SRCS})
    if(NOT IS_ABSOLUTE ${src})
        set(src ${CMAKE_SOURCE_DIR}/${src})
    endif()
    list(APPEND ABS_SRCS ${src})
endforeach()

# Convert relative include paths to absolute
set(ABS_INCS "")
foreach(inc ${PROJECT_INCLUDES})
    if(NOT IS_ABSOLUTE ${inc})
        set(inc ${CMAKE_SOURCE_DIR}/${inc})
    endif()
    list(APPEND ABS_INCS ${inc})
endforeach()

foreach(inc ${MODULE_INCS})
    if(NOT IS_ABSOLUTE ${inc})
        set(inc ${CMAKE_SOURCE_DIR}/${inc})
    endif()
    list(APPEND ABS_INCS ${inc})
endforeach()

# ============================================================================
# Create Executable
# ============================================================================
add_executable(netduinoplus2.elf ${ABS_SRCS})

# ============================================================================
# Compile Options (No FPU for Netduino Plus 2)
# ============================================================================
target_compile_options(netduinoplus2.elf PRIVATE
    -mcpu=cortex-m4
    -mthumb
    -mlittle-endian
    -mthumb-interwork
    -ggdb
    -O0
    -Wall
    -Wextra
    -Warray-bounds
    -Wno-unused-parameter
)

# Apply common rules from rules.cmake
apply_common_rules(netduinoplus2.elf)

# ============================================================================
# Includes
# ============================================================================
target_include_directories(netduinoplus2.elf PRIVATE ${ABS_INCS})

# ============================================================================
# Defines
# ============================================================================
target_compile_definitions(netduinoplus2.elf PRIVATE 
    ${PROJECT_DEFINES}
    ${MODULE_DEFS}
)

# ============================================================================
# Linker Script
# ============================================================================
target_link_options(netduinoplus2.elf PRIVATE
    -T${LINKER_SCRIPT}
    -static
    -Wl,--gc-sections
    -Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}/netduinoplus2.map
    -mcpu=cortex-m4
    -mthumb
)

# ============================================================================
# Post-Build: Generate binaries
# ============================================================================
add_binary_generation(netduinoplus2.elf)

# ============================================================================
# Install
# ============================================================================
install(TARGETS netduinoplus2.elf RUNTIME DESTINATION bin)
