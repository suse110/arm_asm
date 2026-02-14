# main/kernel/ — Kernel Services

**Parent:** ../AGENTS.md

## OVERVIEW

Kernel-level services including custom libc, RTOS support (FreeRTOS), various OS services (printf, shell, backtrace), and third-party libraries.

## STRUCTURE

```
main/kernel/
├── module.mk            # Kernel module aggregator
├── libc/                # Custom C library (memcpy, optimized asm)
├── rtos/
│   └── freertos/       # FreeRTOS integration
├── service/            # OS services
│   ├── printf/         # Printf implementation
│   ├── lite_printf/    # Lightweight printf
│   ├── rtos/           # Custom RTOS (task, sem, mbox)
│   ├── shell/          # Shell command interface
│   ├── backtrace/      # Stack backtrace
│   ├── syslog/         # System logging
│   └── stp/            # Serial transfer protocol
└── third/              # Third-party libraries
    ├── memfault/       # Error tracking SDK
    ├── breakpad/       # Crash reporting
    ├── unit-test/      # Testing frameworks (Unity, CMockery)
    └── ...
```

## WHERE TO LOOK

| Task | Location |
|------|----------|
| Custom libc | `main/kernel/libc/` |
| FreeRTOS | `main/kernel/rtos/freertos/` |
| Printf | `main/kernel/service/printf/` |
| Shell | `main/kernel/service/shell/` |
| Backtrace | `main/kernel/service/backtrace/` |
| Unit testing | `main/kernel/third/unit-test/` |

## MODULE PATTERN

Each service has `module.mk`:
- Defines `SRC +=` source files
- Adds `CFLAGS +=` include paths
- Conditional inclusion via `ifeq ($(SERVICE_ENABLE),y)`

## ANTI-PATTERNS

- Do NOT use dynamic memory in kernel services without pooling
- Do NOT assume OS features unless explicitly enabled
- Do NOT mix custom RTOS with FreeRTOS in same build
