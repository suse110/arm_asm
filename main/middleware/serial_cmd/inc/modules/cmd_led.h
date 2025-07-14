#ifndef __CMD_LED_H__
#define __CMD_LED_H__

#include "../serial_protocol.h"
#include "led.h"
// LED模块初始化
void led_module_init(void);

// LED子命令处理函数
SerialResponse led_set_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse led_get_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse led_toggle_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

#endif // __CMD_LED_H__
