# main/drivers/ — Hardware Drivers

**Parent:** ../AGENTS.md

## OVERVIEW

Hardware abstraction layer (HAL) drivers for STM32 microcontrollers, including CMSIS headers and vendor-specific HAL implementations.

## STRUCTURE

```
main/drivers/
├── CMSIS/               # ARM CMSIS headers (core, device definitions)
│   └── Device/ST/       # ST micro device headers
├── chip/                # Vendor HAL drivers
│   ├── stm32l5xx/      # STM32L5xx HAL (Cortex-M33)
│   ├── stm32f4xx/      # STM32F4xx HAL (Cortex-M4)
│   ├── stm32f10x/      # STM32F1xx HAL (Cortex-M3)
│   └── lm3s811/        # TI Stellaris HAL
└── bsp/                # Board support packages
    ├── board/          # LED, buttons, etc.
    └── stepper/        # Stepper motor driver
```

## WHERE TO LOOK

| Task | Location |
|------|----------|
| STM32L5 HAL | `main/drivers/chip/stm32l5xx/STM32L5xx_HAL_Driver/` |
| STM32F4 HAL | `main/drivers/chip/stm32f4xx/STM32F4xx_HAL_Driver/` |
| STM32F1 HAL | `main/drivers/chip/stm32f10x/STM32F1xx_HAL_Driver/` |
| CMSIS headers | `main/drivers/CMSIS/` |
| Board support | `main/drivers/bsp/` |

## HAL STRUCTURE

Each chip HAL follows:
```
stm32xxx_HAL_Driver/
├── inc/                # Public headers
│   ├── stm32xxx_hal.h
│   ├── stm32xxx_hal_*.h (peripheral)
├── src/                # Implementation
│   ├── stm32xxx_hal.c
│   ├── stm32xxx_hal_*.c
└── module.mk           # Build configuration
```

## ANTI-PATTERNS

- Do NOT edit vendor HAL files directly — copy to project if modification needed
- Do NOT mix HAL versions across chip families
- Do NOT assume peripheral registers are same across families
