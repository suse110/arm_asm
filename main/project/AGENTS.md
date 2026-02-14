# main/project/ — Target-Specific Projects

**Parent:** ../AGENTS.md

## OVERVIEW

Target-specific application projects organized by chip family. Each project contains application source, build configuration, linker script, and startup code.

## STRUCTURE

```
main/project/
├── lm3s811/              # TI Stellaris LM3S811
├── stm32f10x/            # STM32F1xx (Medium/High density)
├── stm32f4xx/            # STM32F4xx (main development)
│   ├── main/             # Primary demo (STM32F401xE Nucleo)
│   ├── FreeRTOS_demo/    # FreeRTOS demonstration
│   ├── NetduinoPlus2/    # Netduino Plus 2 board
│   ├── NetduinoPlus2-qemu/  # QEMU emulator target
│   └── dc-uart/          # UART demonstration
├── stm32l5xx/            # STM32L5xx (Low-power)
    └── main/             # Primary demo (STM32L552ZETxQ)
```

## WHERE TO LOOK

| Task | Location |
|------|----------|
| Active project | `main/project/stm32f4xx/main/` |
| New project | Copy existing `main/project/stm32f4xx/main/` structure |
| Startup code | `main/project/[chip]/[project]/GCC/startup_*.s` |
| Linker script | `main/project/[chip]/[project]/GCC/*.ld` |
| Build config | `main/project/[chip]/[project]/GCC/Makefile` |
| Feature flags | `main/project/[chip]/[project]/GCC/feature.mk` |

## PROJECT STRUCTURE

Each project follows this pattern:
```
[project]/GCC/
├── Makefile           # Project build (includes rule.mk)
├── feature.mk         # Feature flags (NOSTDLIB_ENABLE, etc.)
├── nucleo.ld          # Linker script
├── startup_*.s        # CMSIS startup (Reset_Handler)
├── gdbinit            # GDB configuration
└── src/               # Application source
    ├── main.c         # Entry point
    ├── system_*.c     # SystemInit
    ├── *.c            # Application modules
    └── inc/           # Headers
```

## ANTI-PATTERNS

- Do NOT modify vendor startup files — copy to project GCC folder
- Do NOT hardcode chip-specific settings — use feature.mk
- Do NOT mix chip families in same project
