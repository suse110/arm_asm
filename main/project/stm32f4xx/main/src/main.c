/**
  ******************************************************************************
  * @file    UART/UART_Printf/Src/main.c 
  * @author  MCD Application Team
  * @brief   This example shows how to retarget the C library printf function 
  *          to the UART.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2017 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */

/* Includes ------------------------------------------------------------------*/
#include "main.h"


/** @addtogroup STM32F4xx_HAL_Examples
  * @{
  */

/** @addtogroup UART_Printf
  * @{
  */ 

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/

static void SystemClock_Config(void);

/* Private functions ---------------------------------------------------------*/

#define HARDWARE_VERSION               "V1.0.0"
#define SOFTWARE_VERSION               "V0.1.0"
TIM_HandleTypeDef htim2;

// 初始化定时器（1MHz计数，1μs分辨率）
uint32_t timer_clock;
uint32_t GetTimerClock(TIM_TypeDef *TIMx) {
    uint32_t pclk;
    if (TIMx == TIM1 ||TIMx == TIM9 || TIMx == TIM10 || TIMx == TIM11) {
        pclk = HAL_RCC_GetPCLK2Freq(); // APB2定时器
        if ((RCC->CFGR & RCC_CFGR_PPRE2) != RCC_CFGR_PPRE2_DIV1) pclk *= 2;
    } else {
        pclk = HAL_RCC_GetPCLK1Freq(); // APB1定时器
        if ((RCC->CFGR & RCC_CFGR_PPRE1) != RCC_CFGR_PPRE1_DIV1) pclk *= 2;
    }
    return pclk;
}
void TIM2_Init(void) {

    __HAL_RCC_TIM2_CLK_ENABLE();
    timer_clock = GetTimerClock(TIM2); // 获取实际定时器时钟
    htim2.Instance = TIM2;
    htim2.Init.Prescaler = timer_clock / 1000000 - 1;  // 1μs/tick
    htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim2.Init.Period = 0xFFFFFFFF;  // 32位最大值
    if (HAL_TIM_Base_Init(&htim2) != HAL_OK) {
        printf("HAL_TIM_Base_Init failed\r\n");
    }
    if (HAL_TIM_Base_Start(&htim2) != HAL_OK) {
        printf("HAL_TIM_Base_Start failed\r\n");
    }
}

// 获取当前计数值（μs）
uint32_t GetMicros_TIM2(void) {
    return __HAL_TIM_GET_COUNTER(&htim2);
}

// 微秒级延时
void Delay_us_TIM2(uint32_t us) {
    uint32_t start = GetMicros_TIM2();
    while (GetMicros_TIM2() - start < us);
}
#if 0
void fault_test_by_unalign(void) {
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    volatile int * p;
    volatile int value;

    *SCB_CCR |= (1 << 3); /* bit3: UNALIGN_TRP. */

    p = (int *) 0x00;
    value = *p;
    printf("addr:0x%02X value:0x%08X\r\n", (int) p, value);

    p = (int *) 0x04;
    value = *p;
    printf("addr:0x%02X value:0x%08X\r\n", (int) p, value);

    p = (int *) 0x03;
    value = *p;
    printf("addr:0x%02X value:0x%08X\r\n", (int) p, value);
}

void fault_test_by_div0(void) {
    volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
    int x, y, z;

    *SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */

    x = 10;
    y = 0;
    z = x / y;
    printf("z:%d\n", z);
}
#endif

typedef struct {
    char* name;
    char* help;

} shell_command_t;

shell_command_t shell_help = {
    .name = "help",
    .help = "show all commands"
};
extern uint32_t	__shell_command_start;
extern uint32_t	__shell_command_end;

// shell_command_t shell_command_help __attribute__((section(".shell_command"))) = {
//     .name = "help",
//     .help = "show all commands"
// };
// shell_command_t* shell_command_help __attribute__((section(".shell_command"))) = &shell_help;
// p (*(shell_command_t*)*(uint32_t*)(&__shell_command_start)).name
static GPIO_InitTypeDef  GPIO_InitStruct;

void gpio_test(void)
{
  /* -1- Enable GPIOA Clock (to be able to program the configuration registers) */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  
  /* -2- Configure PA05 IO in output push-pull mode to
         drive external LED */
  GPIO_InitStruct.Pin = GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct); 
  GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_3|GPIO_PIN_4|GPIO_PIN_5;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct); 
  /* -3- Toggle PA05 IO in an infinite loop */  
  uint32_t count = 1;
  uint32_t val = 1;
  while (1)
  {
      HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, val);
      // HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_5);
  //   HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_10);
  //   HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_3);
  //   HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_4);
    // HAL_GPIO_TogglePin(GPIOB, GPIO_PIN_5);
      val ^= 1;
    /* Insert delay 100 ms */
    HAL_Delay(100);
    if (count-- == 0) {
      break;
    }
  }
}
int main(void)
{
 /* This sample code shows how to use STM32F4xx GPIO HAL API to toggle PA05 IOs 
    connected to LED2 on STM32F4xx-Nucleo board  
    in an infinite loop.
    To proceed, 3 steps are required: */
  /* STM32F4xx HAL library initialization:
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
  HAL_Init();

  /* Configure the system clock to 84 MHz */
  SystemClock_Config();

  serial_init();
  serial_protocol_init();
  /* Output a message on Hyperterminal using printf function */
 printf("1 -- UART Printf Example: retarget the C library printf function to the UART\r\n");
 printf("2 -- UART Printf Example: retarget the C library printf function to the UART\r\n");
  //  __asm("svc 0");
    //   printf("&__shell_command_start=0x%x &__shell_command_end=0x%x\r\n",&__shell_command_start, &__shell_command_end);
    // shell_command_t * scmd = &__shell_command_start;

  BSP_LED_Init(LED2);
  BSP_PB_Init(BUTTON_KEY, BUTTON_MODE_EXTI);
  HAL_SetTickFreq(HAL_TICK_FREQ_1KHZ);
  TIM2_Init();
  // gpio_test();
  // spim_test();
#ifdef RTOS_ENABLE
  void task_start(void);
  // task_start();
#endif
#ifdef EXCEPTION_ENABLE
  // exception_test();
#endif
#ifdef BACKTRACE_ENABLE
  // backtrace_test();
#endif
// 1. 配置相位引脚
    stepper_phase_config_t phases[] = {
        {GPIOA, GPIO_PIN_0, false},  // A相，高电平有效
        {GPIOA, GPIO_PIN_1, false},  // B相
        {GPIOA, GPIO_PIN_4, false},  // C相
        {GPIOB, GPIO_PIN_0, false}   // D相
    };

    // 2. 创建电机配置
    stepper_motor_config_t config = {
        .phases = phases,
        .seq = {
            .sequence = NULL,  // 使用默认8拍步序
            .length = 0,
            .phase_count = 4
        },
        .steps_per_rev = 200,  // 1.8°步距角
        .default_rpm = 60,
        .step_delay_us = 1000
    };

    // 3. 创建电机实例
    stepper_motor_t* motor1 = stepper_motor_create(&config);
    stepper_motor_init_hardware(motor1);

    // 4. 运行电机
    stepper_motor_run(motor1, 600);  // 60 RPM
   BSP_LED_Toggle(LED2);
   printf("Hello World!\n");
   validate_step_sequence(motor1);
   while (1) {
    // stepper_motor_test_all_pins(motor1);
  //  HAL_Delay(1000);
  // delay_us(1000000);
    
  // stepper_motor_update(motor1);
  }
}


/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSE)
  *            SYSCLK(Hz)                     = 84000000
  *            HCLK(Hz)                       = 84000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 2
  *            APB2 Prescaler                 = 1
  *            HSI Frequency(Hz)              = 16000000
  *            PLL_M                          = 16
  *            PLL_N                          = 336
  *            PLL_P                          = 4
  *            PLL_Q                          = 7
  *            VDD(V)                         = 3.3
  *            Main regulator output voltage  = Scale2 mode
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = 16;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
 
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
  /* Turn LED2 on */
  printf("Error_Handler\r\n");
  BSP_LED_On(LED2);
  while(1)
  {
  }
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t* file, uint32_t line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
#ifdef CM_BACKTRACE_ENABLE
  cm_backtrace_assert(cmb_get_sp());
#endif
  /* Infinite loop */
  while (1)
  {
  }
}
#endif

/**
  * @}
  */ 

/**
  * @}
  */ 

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
