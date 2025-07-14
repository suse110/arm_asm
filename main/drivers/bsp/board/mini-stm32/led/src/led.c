#include <stdbool.h>
#include "sys.h"   
#include "led.h"
#include "stm32f1xx_hal_conf.h"
bool g_led_init_flag = false;

/**
 * @brief  Initializes the LED GPIO pins.
 *
 * This function configures the GPIO pins connected to LEDs (PA8 and PD2) 
 * as push-pull outputs with a speed of 50 MHz. It also sets the initial state to high.
 */
void led_init(void)
{
    if (g_led_init_flag)
        return;
    g_led_init_flag = true;
#if 1
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // 使能GPIOA和GPIOD时钟
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOD_CLK_ENABLE();

    // 配置LED0 -> PA.8
    GPIO_InitStruct.Pin = GPIO_PIN_8;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // 初始设置PA.8为高电平
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_8, GPIO_PIN_SET);

    // 配置LED1 -> PD.2
    GPIO_InitStruct.Pin = GPIO_PIN_2;
    HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);

    // 初始设置PD.2为高电平
    HAL_GPIO_WritePin(GPIOD, GPIO_PIN_2, GPIO_PIN_SET);
#else
    RCC->APB2ENR |= 1<<2;     // Enable clock for PORTA
    RCC->APB2ENR |= 1<<5;     // Enable clock for PORTD
    GPIOA->CRH &= 0xFFFFFFF0; 
    GPIOA->CRH |= 0x00000003;  // Configure PA8 as push-pull output
    GPIOA->ODR |= 1 << 8;      // Set PA8 high initially

    GPIOD->CRL &= 0xFFFFF0FF;
    GPIOD->CRL |= 0x00000300;  // Configure PD2 as push-pull output
    GPIOD->ODR |= 1 << 2;      // Set PD2 high initially
#endif
}

void led_toggle(bsp_led_t led)
{
    if ((led >= BSP_LED_MAX) && (g_led_init_flag == false)) {
        return;
    }
    switch (led)
    {
    case BSP_LED0:
        GPIOA->ODR ^= 1<<8;
        break;
    case BSP_LED1:
        GPIOD->ODR ^= 1<<2;
        break;
    default:
        break;
    }
}

void led_on(bsp_led_t led)
{
    if ((led >= BSP_LED_MAX) && (g_led_init_flag == false)) {
        return;
    }
    switch (led)
    {
    case BSP_LED0:
        GPIOA->ODR &= ~(1<<8);
        break;
    case BSP_LED1:
        GPIOD->ODR &= ~(1<<2);
        break;
    default:
        break;
    }
}
void led_off(bsp_led_t led)
{
    if ((led >= BSP_LED_MAX) && (g_led_init_flag == false)) {
        return;
    }
    switch (led)
    {
    case BSP_LED0:
        GPIOA->ODR |= 1<<8;
        break;
    case BSP_LED1:
        GPIOD->ODR |= 1<<2;
        break;
    default:
        break;
    }
}
void set_led_status(bsp_led_t led, bsp_led_status_t status)
{
     if (led >= BSP_LED_MAX) {
        return;
     }
    switch (status)
    {
    case BSP_LED_STATUS_ON:
        led_on(led);
        break;
    case BSP_LED_STATUS_OFF:
        led_off(led);
        break;
    default:
        break;
    }
}
bsp_led_status_t led_status(bsp_led_t led)
{
    if ((led >= BSP_LED_MAX) && (g_led_init_flag == false)) {
        return BSP_LED_STATUS_MAX;
    }
    switch (led)
    {
    case BSP_LED0:
        return (GPIOA->IDR & (1<<8)) ? BSP_LED_STATUS_ON : BSP_LED_STATUS_OFF;
    case BSP_LED1:
        return (GPIOD->IDR & (1<<2)) ? BSP_LED_STATUS_ON : BSP_LED_STATUS_OFF;
    default:
        break;
    }
}




