# LM3S811 Main Project
# Simple test project for LM3S811 Cortex-M3

# Include feature configuration
include(${CMAKE_SOURCE_DIR}/cmake/feature.cmake)

# Include module definitions
include(${CMAKE_SOURCE_DIR}/cmake/modules.cmake)

# Include common rules
include(${CMAKE_SOURCE_DIR}/cmake/rules.cmake)

# Override feature flags for this project
set(CHIP_CONFIG "lm3s811")
set(RTOS_ENABLE OFF)
set(FREERTOS_ENABLE OFF)
set(EXCEPTION_ENABLE OFF)
set(SERIAL_CMD_ENABLE OFF)
set(SHELL_ENABLE OFF)
set(BACKTRACE_ENABLE OFF)
set(CM_BACKTRACE_ENABLE OFF)
set(SYSLOG_ENABLE OFF)
set(BSP_STEPPER_MOTOR_ENABLE OFF)

# Aggregate all module sources based on feature flags
aggregate_module_sources()

# ============================================================================
# Project-Specific Sources
# ============================================================================
set(PROJECT_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/test.c
)

# Startup file
set(PROJECT_ASM
    ${CMAKE_CURRENT_SOURCE_DIR}/GCC/test.s
)

# ============================================================================
# Include Paths
# ============================================================================
set(PROJECT_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}
)

# ============================================================================
# Defines
# ============================================================================
set(PROJECT_DEFINES
    LM3S811
    ARM_MATH_CM3
)

# ============================================================================
# Linker Script
# ============================================================================
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/GCC/test.ld)

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
add_executable(lm3s811_main.elf ${ABS_SRCS})

# ============================================================================
# Compile Options
# ============================================================================
target_compile_options(lm3s811_main.elf PRIVATE
    -mcpu=cortex-m3
    -mthumb
    -mlittle-endian
    -mthumb-interwork
    -mfloat-abi=soft
    -ggdb
    -O0
    -Wall
    -Wextra
    -Warray-bounds
    -Wno-unused-parameter
)

# Apply common rules from rules.cmake
apply_common_rules(lm3s811_main.elf)

# ============================================================================
# Includes
# ============================================================================
target_include_directories(lm3s811_main.elf PRIVATE ${ABS_INCS})

# ============================================================================
# Defines
# ============================================================================
target_compile_definitions(lm3s811_main.elf PRIVATE 
    ${PROJECT_DEFINES}
    ${MODULE_DEFS}
    ${FEATURE_DEFINES}
)

# ============================================================================
# Linker Script
# ============================================================================
target_link_options(lm3s811_main.elf PRIVATE
    -T${LINKER_SCRIPT}
    -static
    -Wl,--gc-sections
    -Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}/lm3s811_main.map
    -mcpu=cortex-m3
    -mthumb
    -mfloat-abi=soft
)

# ============================================================================
# Post-Build: Generate binaries
# ============================================================================
add_binary_generation(lm3s811_main.elf)

# ============================================================================
# Install
# ============================================================================
install(TARGETS lm3s811_main.elf RUNTIME DESTINATION bin)