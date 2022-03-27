1. 掌握以下module能作为backup解issue，达到和owner相当水平

   1. UART/I2C/PWM/RTC/SDIO/cache/flash/dma/irrx/isink/LED/wdt/lowpower/logging/systeminit/memorylayout/exception/~~nvic/gpio/eint/spi/ept/key/mux~~
   2. 
2. 每天半小时学习
3. 2.7 先从uart开始

```mermaid
gantt
       dateFormat  YYYY-MM-DD
       axisFormat  %m-%d
       title Module Study
       excludes weekends

       section UART
       UART protocol           :active,  s1, 2022-02-07,5d
       UART slide              :         s2, after s1, 5d
       UART code               :         s3, after s2, 5d
       MUX UART                :         s4, after s3, 5d

	section I2C

       I2C protocol           :active,  s5, after s4,10d
```
