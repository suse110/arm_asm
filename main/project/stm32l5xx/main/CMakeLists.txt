# STM32L5xx Main Project
# STM32L552ZETxQ Nucleo board with Cortex-M33

# Include feature configuration
include(${CMAKE_SOURCE_DIR}/cmake/feature.cmake)

# Include module definitions
include(${CMAKE_SOURCE_DIR}/cmake/modules.cmake)

# Include common rules
include(${CMAKE_SOURCE_DIR}/cmake/rules.cmake)

# Override feature flags for this project
set(CHIP_CONFIG "stm32l5xx")
set(RTOS_ENABLE OFF)
set(EXCEPTION_ENABLE OFF)
set(SHELL_ENABLE OFF)
set(BACKTRACE_ENABLE OFF)
set(CM_BACKTRACE_ENABLE OFF)
set(SYSLOG_ENABLE OFF)
set(SERIAL_CMD_ENABLE OFF)
set(BSP_STEPPER_MOTOR_ENABLE OFF)  # Stepper motor uses STM32F4xx HAL

# Aggregate all module sources based on feature flags
aggregate_module_sources()

# ============================================================================
# Project-Specific Sources
# ============================================================================
set(PROJECT_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/serial.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32l5xx_hal_msp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32l5xx_it.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/system_stm32l5xx.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/user/syscalls.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/user/sysmem.c
)

# Startup file
set(PROJECT_ASM
    ${CMAKE_CURRENT_SOURCE_DIR}/GCC/startup_stm32l552zetxq.s
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
    STM32L552xx
    USE_STDPERIPH_DRIVER
    STM32F5XX
)

# ============================================================================
# Linker Script
# ============================================================================
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/GCC/STM32L552ZETXQ_FLASH.ld)

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
add_executable(stm32l5xx_main.elf ${ABS_SRCS})

# ============================================================================
# Compile Options (Cortex-M33)
# ============================================================================
target_compile_options(stm32l5xx_main.elf PRIVATE
    -mcpu=cortex-m33
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
apply_common_rules(stm32l5xx_main.elf)

# ============================================================================
# Includes
# ============================================================================
target_include_directories(stm32l5xx_main.elf PRIVATE ${ABS_INCS})

# ============================================================================
# Defines
# ============================================================================
target_compile_definitions(stm32l5xx_main.elf PRIVATE 
    ${PROJECT_DEFINES}
    ${MODULE_DEFS}
)

# ============================================================================
# Linker Script
# ============================================================================
target_link_options(stm32l5xx_main.elf PRIVATE
    -T${LINKER_SCRIPT}
    -static
    -Wl,--gc-sections
    -Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}/stm32l5xx_main.map
    -mcpu=cortex-m33
    -mthumb
)

# ============================================================================
# Post-Build: Generate binaries
# ============================================================================
add_binary_generation(stm32l5xx_main.elf)

# ============================================================================
# Install
# ============================================================================
install(TARGETS stm32l5xx_main.elf RUNTIME DESTINATION bin)
