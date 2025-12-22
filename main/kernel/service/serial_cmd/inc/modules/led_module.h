#ifndef LED_MODULE_H
#define LED_MODULE_H

#include "../serial_protocol.h"

// LED模块初始化
void led_module_init(void);

// LED子命令处理函数
SerialResponse led_set_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse led_get_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

#endif // LED_MODULE_H