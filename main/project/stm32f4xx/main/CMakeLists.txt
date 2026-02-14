# STM32F4xx Main Project - Nucleo Board
# STM32F401xE Nucleo board with full middleware and kernel services

# Include feature configuration (equivalent to feature.mk)
include(${CMAKE_SOURCE_DIR}/cmake/feature.cmake)

# Include module definitions
include(${CMAKE_SOURCE_DIR}/cmake/modules.cmake)

# Include common rules
include(${CMAKE_SOURCE_DIR}/cmake/rules.cmake)

# Aggregate all module sources based on feature flags
aggregate_module_sources()

# ============================================================================
# Project-Specific Sources (from project/stm32f4xx/main/GCC/Makefile)
# ============================================================================
set(PROJECT_SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/uart_dma.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/serial.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32f4xx_hal_msp.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/stm32f4xx_it.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/syscalls.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/system_stm32f4xx.c
    ${CMAKE_CURRENT_SOURCE_DIR}/src/hal_log.c
)

# Startup file
set(PROJECT_ASM
    ${CMAKE_CURRENT_SOURCE_DIR}/GCC/startup_stm32f401xe.s
)

# ============================================================================
# Include Paths
# ============================================================================
set(PROJECT_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}/inc
    ${CMAKE_SOURCE_DIR}/drivers/chip/stm32f4xx/BSP/STM32F4xx-Nucleo
)

# ============================================================================
# Defines
# ============================================================================
set(PROJECT_DEFINES
    STM32F401xE
    USE_STDPERIPH_DRIVER
    STM32F4XX
)

# ============================================================================
# Linker Script
# ============================================================================
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/GCC/nucleo.ld)

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
add_executable(stm32f4xx_main.elf ${ABS_SRCS})

# ============================================================================
# Compile Options
# ============================================================================
target_compile_options(stm32f4xx_main.elf PRIVATE
    -mcpu=cortex-m4
    -mthumb
    -mlittle-endian
    -mthumb-interwork
    -mfloat-abi=hard
    -mfpu=fpv4-sp-d16
    -ggdb
    -O0
    -Wall
    -Wextra
    -Warray-bounds
    -Wno-unused-parameter
)

# Apply common rules from rules.cmake
apply_common_rules(stm32f4xx_main.elf)

# ============================================================================
# Includes
# ============================================================================
target_include_directories(stm32f4xx_main.elf PRIVATE ${ABS_INCS})

# ============================================================================
# Defines
# ============================================================================
target_compile_definitions(stm32f4xx_main.elf PRIVATE 
    ${PROJECT_DEFINES}
    ${MODULE_DEFS}
    ${FEATURE_DEFINES}
)

# ============================================================================
# Linker Script
# ============================================================================
target_link_options(stm32f4xx_main.elf PRIVATE
    -T${LINKER_SCRIPT}
    -static
    -Wl,--gc-sections
    -Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}/stm32f4xx_main.map
    -mcpu=cortex-m4
    -mthumb
    -mfloat-abi=hard
    -mfpu=fpv4-sp-d16
)

# ============================================================================
# Post-Build: Generate binaries
# ============================================================================
add_binary_generation(stm32f4xx_main.elf)

# ============================================================================
# Install
# ============================================================================
install(TARGETS stm32f4xx_main.elf RUNTIME DESTINATION bin)
