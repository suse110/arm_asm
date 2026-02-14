# main/middleware/ — Reusable Middleware

**Parent:** ../AGENTS.md

## OVERVIEW

Reusable middleware components for embedded applications: ring buffers, menus, serial commands, memory management, and utilities.

## STRUCTURE

```
main/middleware/
├── module.mk           # Middleware aggregator
├── ringbuffer/         # Ring buffer (FIFO) implementation
├── mt_ringbuffer/      # Multi-threaded ring buffer
├── menu/               # Menu system (UI)
├── serial_cmd/         # Serial command parser
├── utility/            # General utilities
├── mpool/             # Memory pool allocator
├── mbuf/              # Memory buffer
└── multi_core_sim/    # Multi-core simulation
```

## WHERE TO LOOK

| Task | Location |
|------|----------|
| Ring buffer | `main/middleware/ringbuffer/` |
| Menu system | `main/middleware/menu/` |
| Serial commands | `main/middleware/serial_cmd/` |
| Memory pool | `main/middleware/mpool/` |

## MODULE PATTERN

Each middleware has:
- `module.mk` for build inclusion
- `inc/` for public headers
- `src/` for implementation

## ANTI-PATTERNS

- Do NOT use dynamic allocation in middleware without pooling
- Do NOT assume thread safety unless explicitly documented
- Do NOT use blocking operations in ISR context
