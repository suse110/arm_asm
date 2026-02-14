# rules.cmake - Common build rules and flags
# Equivalent to rule.mk in Makefile system

# ============================================================================
# Common C Flags (from rule.mk)
# ============================================================================
set(COMMON_C_FLAGS
    -g                      # Debug info
    -Wall                   # All warnings
    -mlittle-endian         # Little endian
    -mthumb                 # Thumb instruction set
    -mabi=aapcs             # ARM Procedure Call Standard
    -ffreestanding          # Freestanding environment (no stdlib)
    -std=gnu99              # C99 standard with GNU extensions
    -ffunction-sections     # Place each function in its own section
    -fdata-sections         # Place each data item in its own section
)

# ============================================================================
# Common Linker Flags (from rule.mk)
# ============================================================================
set(COMMON_LINK_FLAGS
    -static                 # Static linking
    -Wl,--gc-sections       # Remove unused sections
)

# ============================================================================
# Function to apply common settings to a target
# ============================================================================
function(apply_common_rules TARGET_NAME)
    # Apply compile options
    target_compile_options(${TARGET_NAME} PRIVATE ${COMMON_C_FLAGS})
    
    # Apply link options
    target_link_options(${TARGET_NAME} PRIVATE ${COMMON_LINK_FLAGS})
endfunction()

# ============================================================================
# Function to add binary generation post-build steps
# ============================================================================
function(add_binary_generation TARGET_NAME)
    add_custom_command(TARGET ${TARGET_NAME} POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -O binary $<TARGET_FILE:${TARGET_NAME}> ${TARGET_NAME}.bin
        COMMAND ${CMAKE_OBJCOPY} -O ihex $<TARGET_FILE:${TARGET_NAME}> ${TARGET_NAME}.hex
        COMMAND ${CMAKE_OBJDUMP} -d $<TARGET_FILE:${TARGET_NAME}> > ${TARGET_NAME}.asm
        COMMAND ${CMAKE_SIZE} $<TARGET_FILE:${TARGET_NAME}>
        COMMENT "Generating ${TARGET_NAME}.bin, .hex, .asm"
    )
endfunction()

# ============================================================================
# QEMU helpers (from rule.mk)
# ============================================================================
set(QEMU qemu-system-arm)
set(QEMU_FLAGS -nographic -smp 1)

function(add_qemu_targets TARGET_NAME QEMU_MACHINE)
    # Run target
    add_custom_target(run_${TARGET_NAME}
        COMMAND ${QEMU} ${QEMU_FLAGS} -machine ${QEMU_MACHINE} -kernel $<TARGET_FILE:${TARGET_NAME}> -s -S &
        DEPENDS ${TARGET_NAME}
        COMMENT "Running ${TARGET_NAME} in QEMU (Ctrl-A then X to exit)"
    )
    
    # Debug target
    add_custom_target(debug_${TARGET_NAME}
        COMMAND ${QEMU} ${QEMU_FLAGS} -machine ${QEMU_MACHINE} -kernel $<TARGET_FILE:${TARGET_NAME}> -s -S &
        COMMAND ${CMAKE_GDB} $<TARGET_FILE:${TARGET_NAME}> -q -x ${CMAKE_SOURCE_DIR}/gdbinit
        DEPENDS ${TARGET_NAME}
        COMMENT "Debugging ${TARGET_NAME} with GDB"
    )
endfunction()
