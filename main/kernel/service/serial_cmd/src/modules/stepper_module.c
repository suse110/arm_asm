#ifdef BSP_STEPPER_MOTOR_ENABLE
#include "../inc/modules/cmd_stepper.h"
#include "../inc/serial_protocol.h"
#include "stepper_motor.h"
#include "main.h"
#include <stdlib.h>
#include <string.h>

// 假设的步进电机控制函数
static uint8_t stepper_move(uint8_t motor_id, int32_t steps, uint16_t speed_rpm, uint16_t accel) {
    // 实际硬件控制代码
    stepper_motor_run(stepper_motor_get(motor_id), speed_rpm);
    // stepper_motor_set_rpm(stepper_motor_get(motor_id), accel);
    stepper_motor_step(stepper_motor_get(motor_id), steps);
    return 1; // 返回1表示成功
}

static uint8_t stepper_moveto(uint8_t motor_id, int32_t position, uint16_t speed_rpm) {
    // 实际硬件控制代码
    return 1;
}

static uint8_t stepper_stop(uint8_t motor_id) {
    // 实际硬件控制代码
    return 1;
}
static uint8_t stepper_set_direction(uint8_t motor_id, int direction) {
    // 实际硬件控制代码
    stepper_motor_set_direction(stepper_motor_get(motor_id), direction);
    return 1;
}

static uint8_t stepper_enable(uint8_t motor_id, uint8_t state, int16_t rpm) {
  printf("1 stepper_enable: motor_id = %d, state = %d, rpm = %d\n", motor_id, state, rpm);
  if (state) {
    stepper_motor_run(stepper_motor_get(motor_id), rpm);
  } else {
    stepper_motor_stop(stepper_motor_get(motor_id));
  }
  printf("2 stepper_enable: motor_id = %d, state = %d, rpm = %d\n", motor_id, state, rpm);
    return 1;
}

static uint8_t stepper_get_status(uint8_t motor_id, int32_t* position, uint8_t* is_moving) {
    // 实际硬件读取代码
    *position = 0;
    *is_moving = 0;
    return 1;
}

// 步进电机移动命令处理
SerialResponse stepper_move_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #stepper.move <steps> [speed_rpm] [accel]", &response);
    if (check != PARAM_OK) return response;
    
    int32_t steps;
    uint32_t speed_rpm = 100; // 默认100 RPM
    uint32_t accel = 1000;    // 默认1000 steps/s²
    
    if (check_int_param(params[0], &steps, INT32_MIN, INT32_MAX, "Invalid steps value", &response) != PARAM_OK) 
        return response;
        
    if (param_count > 1 && check_uint_param(params[1], &speed_rpm, 1, 1000, "Invalid speed value (1-1000)", &response) != PARAM_OK)
        return response;
        
    if (param_count > 2 && check_uint_param(params[2], &accel, 1, 10000, "Invalid acceleration value (1-10000)", &response) != PARAM_OK)
        return response;
    
    if (stepper_move(0, steps, speed_rpm, accel)) {
        build_response(&response, true, RESP_OK, "Moving %d steps at %d RPM", steps, speed_rpm);
    } else {
        build_response(&response, false, RESP_ERROR, "Move command failed");
    }
    
    return response;
}

// 步进电机绝对位置移动命令处理
SerialResponse stepper_moveto_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #stepper.moveto <position> [speed_rpm]", &response);
    if (check != PARAM_OK) return response;
    
    int32_t position;
    uint32_t speed_rpm = 100; // 默认100 RPM
    
    if (check_int_param(params[0], &position, INT32_MIN, INT32_MAX, "Invalid position value", &response) != PARAM_OK)
        return response;
        
    if (param_count > 1 && check_uint_param(params[1], &speed_rpm, 1, 1000, "Invalid speed value (1-1000)", &response) != PARAM_OK)
        return response;
    
    if (stepper_moveto(0, position, speed_rpm)) {
        build_response(&response, true, RESP_OK, "Moving to position %d at %d RPM", position, speed_rpm);
    } else {
        build_response(&response, false, RESP_ERROR, "Moveto command failed");
    }
    
    return response;
}

// 步进电机停止命令处理
SerialResponse stepper_stop_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    if (stepper_stop(0)) {
        build_response(&response, true, RESP_OK, "Motor stopped");
    } else {
        build_response(&response, false, RESP_ERROR, "Stop command failed");
    }
    
    return response;
}

// 步进电机使能命令处理
SerialResponse stepper_enable_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    ParamCheckResult check = check_param_count(param_count, 2, "Usage: #stepper.enable <0/1> [speed_rpm]", &response);
    if (check != PARAM_OK) return response;
    
    uint32_t state;
    if (check_uint_param(params[0], &state, 0, 1, "Invalid state (0 or 1)", &response) != PARAM_OK)
        return response;
    printf("Stepper enable: %d\n", state);
    int32_t speed_rpm = 0;
    if (param_count > 1 && check_int_param(params[1], &speed_rpm, INT16_MIN, INT16_MAX, "Invalid speed_rpm value", &response) != PARAM_OK)
        return response;
    printf("Stepper speed_rpm: %d state: %d\n ", speed_rpm, state);
    if (stepper_enable(0, state, speed_rpm)) {
        build_response(&response, true, RESP_OK, "Motor %s with speed %d RPM", state ? "enabled" : "disabled", speed_rpm);
    } else {
        build_response(&response, false, RESP_ERROR, "Enable command failed");
    }
    
    return response;
}
SerialResponse stepper_set_direction_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count)
{
    SerialResponse response = {0};
    ParamCheckResult check = check_param_count(param_count, 1, "Usage: #stepper.set_direction <direction>", &response);
    if (check != PARAM_OK) return response;
    int direction;
    if (check_int_param(params[0], &direction, -1, 1, "Invalid direction (-1 or 1)", &response) != PARAM_OK)
        return response;
    stepper_set_direction(0, direction);
    build_response(&response, true, RESP_OK, "Direction set to %d", direction);
    return response;  
}
// 步进电机状态查询处理
SerialResponse stepper_status_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    int32_t position;
    uint8_t is_moving;
    
    if (stepper_get_status(0, &position, &is_moving)) {
        build_response(&response, true, RESP_OK, "pos=%d,moving=%d", position, is_moving);
    } else {
        build_response(&response, false, RESP_ERROR, "Failed to get status");
    }
    
    return response;
}

// 创建步进电机
static uint8_t stepper_create(uint8_t motor_id, const stepper_motor_config_t* config) {
    stepper_motor_t* motor = stepper_motor_create(config);
    return motor != NULL;
}

// 销毁步进电机
static uint8_t stepper_destroy(uint8_t motor_id) {
    // 实际销毁代码
    return 1;
}

// 步进电机创建命令处理
SerialResponse stepper_create_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
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


    if (stepper_create(0, &config)) {
        build_response(&response, true, RESP_OK, "Motor created");
    } else {
        build_response(&response, false, RESP_ERROR, "Create command failed");
    }
    
    return response;
}

// 步进电机销毁命令处理
SerialResponse stepper_destroy_handler(const char(*params)[MAX_PARAM_LEN], uint8_t param_count) {
    SerialResponse response = {0};
    
    if (stepper_destroy(0)) {
        build_response(&response, true, RESP_OK, "Motor destroyed");
    } else {
        build_response(&response, false, RESP_ERROR, "Destroy command failed");
    }
    
    return response;
}

// 步进电机模块初始化
void stepper_module_init(void) {
    // 注册模块和子命令
    register_module("stepper", NULL); // 无默认处理函数
    register_subcommand("stepper", "create", stepper_create_handler);
    register_subcommand("stepper", "destroy", stepper_destroy_handler);
    register_subcommand("stepper", "move", stepper_move_handler);
    register_subcommand("stepper", "moveto", stepper_moveto_handler);
    register_subcommand("stepper", "stop", stepper_stop_handler);
    register_subcommand("stepper", "enable", stepper_enable_handler);
    register_subcommand("stepper", "status", stepper_status_handler);
    register_subcommand("stepper", "set_direction", stepper_set_direction_handler);
}

#endif