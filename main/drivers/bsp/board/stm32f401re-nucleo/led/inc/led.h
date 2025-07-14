#ifndef __LED_H
#define __LED_H	 

typedef enum {
    BSP_LED0,
    BSP_LED_GREEN = BSP_LED0,
    BSP_LED_MAX,
} bsp_led_t;
typedef enum {
    BSP_LED_STATUS_OFF,
    BSP_LED_STATUS_ON,
    BSP_LED_STATUS_MAX,
} bsp_led_status_t;

void led_init(void);
void led_toggle(bsp_led_t led);
void led_on(bsp_led_t led);
void led_off(bsp_led_t led);
bsp_led_status_t led_status(bsp_led_t led);   
void set_led_status(bsp_led_t led, bsp_led_status_t status);


#endif
