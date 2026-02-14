# PROJECT KNOWLEDGE BASE

**Generated:** 2026-02-14
**Type:** ARM Embedded OS / STM32 Bare-metal

## OVERVIEW

ARM Cortex-M embedded OS project targeting STM32 microcontrollers (STM32L5xx, STM32F4xx, STM32F10x, LM3S811). Modular Makefile-based build system with HAL drivers, custom kernel services, RTOS support (FreeRTOS), and middleware components.

## STRUCTURE

```
arm_asm/
├── main/                    # Primary source (drivers, kernel, middleware, projects)
├── docs/                    # Architecture, hardware, OS, tools, project docs
├── simulator/              # QEMU/simulator code
├── example/                # Data structure examples
├── tools/                  # Toolchain (GCC ARM, QEMU, OpenOCD)
└── test/
```

## WHERE TO LOOK

| Task | Notes |
| | Location------|----------|-------|
| Build project | `main/Makefile` | `make st` for stm32f4xx |
| Startup code | `main/project/*/GCC/startup_*.s` | Reset_Handler entry |
| HAL drivers | `main/drivers/chip/stm32*/` | STM32L5xx, STM32F4xx, STM32F10x |
| Kernel services | `main/kernel/service/` | printf, shell, backtrace, RTOS |
| RTOS | `main/kernel/rtos/freertos/` | FreeRTOS integration |
| Middleware | `main/middleware/` | ringbuffer, menu, serial_cmd |
| Linker scripts | `main/project/*/GCC/*.ld` | Memory layout |
| Build rules | `main/rule.mk` | Common build rules |

## BOOT FLOW

```
Reset_Handler (startup_*.s)
    -> SystemInit (system_*.c)
    -> __libc_init_array
    -> main (main.c)
```

## CONVENTIONS

- **Build:** Makefile-based, each project in `main/project/[chip]/[name]/GCC/`
- **Startup:** CMSIS-compliant startup files, vector table in `.isr_vector` section
- **Modules:** Each component has `module.mk` for build inclusion
- **Feature flags:** `feature.mk` per project (e.g., `NOSTDLIB_ENABLE`)

## ANTI-PATTERNS

- Do NOT modify CMSIS vendor files directly—copy to project if needed
- Do NOT use dynamic memory (`malloc`) in bare-metal without pooling
- Do NOT assume OS features unless FreeRTOS enabled

## COMMANDS

```bash
# Build all (from main/)
make                    # Linux
make st                # stm32f4xx/main
make stc               # clean build

# Build specific project
make -C ./project/stm32f4xx/main/GCC

# QEMU run/debug
make run
make debug
```

## PROJECTS

- `stm32f4xx/main` — STM32F401xE Nucleo (active dev)
- `stm32f4xx/FreeRTOS_demo` — FreeRTOS demo
- `stm32f4xx/NetduinoPlus2` — Netduino Plus 2
- `stm32l5xx/main` — STM32L5xx low-power
