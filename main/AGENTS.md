# main/ — Primary Source Directory

**Parent:** ./AGENTS.md

## OVERVIEW

Central source directory containing all application code, drivers, kernel, middleware, and build system for STM32 embedded OS.

## STRUCTURE

```
main/
├── Makefile              # Top-level build orchestrator (builds all PROJS)
├── rule.mk               # Common build rules (CROSS_COMPILE, CFLAGS, LDFLAGS)
├── bd                    # Build script
├── build/                # Build output directories (chip-specific)
├── drivers/              # HAL drivers (CMSIS, chip-specific)
├── kernel/               # Kernel services, libc, RTOS
├── middleware/           # Reusable middleware components
└── project/              # Target-specific projects
```

## WHERE TO LOOK

| Task | Location | Notes |
|------|----------|-------|
| Add new component | `main/Makefile` | Add to `PROJS` list |
| Build rules | `main/rule.mk` | Toolchain flags, targets |
| Chip drivers | `main/drivers/chip/stm32*/` | STM32L5xx, STM32F4xx, STM32F10x |
| Kernel services | `main/kernel/service/` | printf, shell, backtrace |
| Middleware | `main/middleware/` | ringbuffer, menu, serial_cmd |

## BUILD SYSTEM

**Top-level Makefile:**
- Defines `PROJS` list: `stm32f4xx/main`, `stm32f4xx/NetduinoPlus2`, `stm32l5xx/main`
- Windows vs Linux detection: checks `$(LANG)` env var
- `SDKPATH`: base path to sources

**Quick Commands (from main/):**
```bash
make st          # Build stm32f4xx/main
make stc         # Clean build stm32f4xx/main
make             # Build all projects
make clean       # Clean all
```

## MODULE PATTERN

Each component has `module.mk`:
- `SRC +=` source files
- `CFLAGS +=` includes and defines
- Include conditionally: `ifeq ($(FEATURE_ENABLE),y)`

## ANTI-PATTERNS

- Do NOT edit CMSIS vendor files in `drivers/CMSIS/` — copy to project if needed
- Do NOT use `malloc` in bare-metal without memory pool
- Do NOT assume build context — always check `SDKPATH` in Makefiles
