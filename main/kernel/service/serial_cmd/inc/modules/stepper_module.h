#ifndef STEPPER_MODULE_H
#define STEPPER_MODULE_H

#include "../inc/serial_protocol.h"

// 初始化函数
void stepper_module_init(void);

// 基本运动控制
SerialResponse stepper_move_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_moveto_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_stop_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_home_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

// 参数配置
SerialResponse stepper_setspeed_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_setaccel_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_setmicrostep_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_setcurrent_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

// 状态查询
SerialResponse stepper_status_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_position_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_errors_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

// 高级控制
SerialResponse stepper_syncmove_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);
SerialResponse stepper_queueadd_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count);

#endif // STEPPER_MODULE_H