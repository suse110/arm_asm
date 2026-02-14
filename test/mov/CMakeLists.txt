# Mov Test Project - ARM assembly move instruction tests

set(PROJECT_NAME "mov_test")

# Source files (assembly only)
set(SRCS
    ${CMAKE_CURRENT_SOURCE_DIR}/test.s
)

# Linker script
set(LINKER_SCRIPT ${CMAKE_CURRENT_SOURCE_DIR}/test.ld)

# Create executable
add_executable(${PROJECT_NAME}.elf ${SRCS})

# Set compile options for ARM Cortex-M3
target_compile_options(${PROJECT_NAME}.elf PRIVATE
    -march=armv7-m
    -mcpu=cortex-m3
    -mfloat-abi=soft
    -O1
    -std=gnu11
    -fno-builtin
    -g
    -Wall
    -static
    -mlittle-endian
    -mthumb
    -ffreestanding
    -mabi=aapcs
    -nostdlib
    -DNOSTDLIB_ENABLE
)

# Set linker options
set_target_properties(${PROJECT_NAME}.elf PROPERTIES
    LINK_FLAGS "-T${LINKER_SCRIPT} -static -Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}.map -nostdlib"
)

# Custom commands to generate binary and disassembly
add_custom_command(TARGET ${PROJECT_NAME}.elf POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} -O binary ${PROJECT_NAME}.elf ${PROJECT_NAME}.bin
    COMMAND ${CMAKE_OBJDUMP} -d -S ${PROJECT_NAME}.elf > ${PROJECT_NAME}.asm
    COMMAND ${CMAKE_SIZE} ${PROJECT_NAME}.elf
    COMMENT "Generating ${PROJECT_NAME}.bin and ${PROJECT_NAME}.asm"
)

# QEMU run target
add_custom_target(run_${PROJECT_NAME}
    COMMAND qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel ${PROJECT_NAME}.elf -s -S &
    DEPENDS ${PROJECT_NAME}.elf
    COMMENT "Running ${PROJECT_NAME} in QEMU (press Ctrl-A then X to exit)"
)

# GDB debug target
add_custom_target(debug_${PROJECT_NAME}
    COMMAND qemu-system-arm -nographic -smp 1 -machine lm3s811evb -kernel ${PROJECT_NAME}.elf -s -S &
    COMMAND ${CMAKE_GDB} ${PROJECT_NAME}.elf -q -x ${CMAKE_SOURCE_DIR}/gdbinit
    DEPENDS ${PROJECT_NAME}.elf
    COMMENT "Debugging ${PROJECT_NAME} with GDB"
)

# Install
install(TARGETS ${PROJECT_NAME}.elf
    RUNTIME DESTINATION bin
)
