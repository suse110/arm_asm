STM32 RCC

# Reset

## system Reset

### Software reset

### Low-power management reset

## power Reset

## backup domain Reset.

# Clocks

三种clock可以用来驱动系统时钟（SYSCLK）

* HSI oscillator clock
* HSE oscillator clock
* Main PLL (PLL) clock

secondary clock sources:

* 32 kHz low-speed internal RC (LSI RC)
  * for watch dog
  * for RTC auto-wakeup from Stop/Standby mode
* 32.768 kHz low-speed external crystal (LSE crystal)
  * for RTC clock (RTCCLK)

![](image/stm32_rcc/1651507719860.png)
