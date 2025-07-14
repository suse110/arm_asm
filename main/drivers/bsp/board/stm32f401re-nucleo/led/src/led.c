#include <stdbool.h>
#include "led.h"
#include "stm32f4xx_hal_conf.h"
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

    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // 使能GPIOA时钟
    __HAL_RCC_GPIOA_CLK_ENABLE();
    // 配置LED0 -> PA.5
    GPIO_InitStruct.Pin = GPIO_PIN_5;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // 配置LED1 -> PD.2
    // 初始设置PA.5为高电平
    HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, GPIO_PIN_SET);
}

void led_toggle(bsp_led_t led)
{
    if ((led >= BSP_LED_MAX) && (g_led_init_flag == false)) {
        return;
    }
    switch (led)
    {
    case BSP_LED0:
        GPIOA->ODR ^= 1<<5;
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
        GPIOA->ODR &= ~(1<<5);
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
        GPIOA->ODR |= 1<<5;
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
        return (GPIOA->IDR & (1<<5)) ? BSP_LED_STATUS_ON : BSP_LED_STATUS_OFF;
    default:
        break;
    }
}




