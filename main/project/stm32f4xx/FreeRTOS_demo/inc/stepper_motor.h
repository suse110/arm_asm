#ifndef STEPPER_MOTOR_H
#define STEPPER_MOTOR_H

#include "stm32f4xx_hal.h"
#include <stdint.h>
#include <stdbool.h>
#define STEPPER_MOTOR_INSTANCE_MAX 5
// 相位配置结构体
typedef struct {
    GPIO_TypeDef* port;    // GPIO端口 (如GPIOA)
    uint16_t pin;          // 引脚号 (如GPIO_PIN_0)
    bool active_low;       // 是否低电平有效
} stepper_phase_config_t;

// 步序表配置
typedef struct {
    const uint8_t* sequence;  // 步序表指针
    uint8_t length;          // 步序长度
    uint8_t phase_count;      // 有效相位位数
} step_sequence_t;

// 电机配置
typedef struct {
    stepper_phase_config_t* phases;  // 相位配置数组
    step_sequence_t seq;           // 步序配置
    uint16_t steps_per_rev;     // 每转步数 (200 for 1.8°步距角)
    uint16_t default_rpm;       // 默认转速(RPM)
    uint32_t step_delay_us;     // 步间延迟(微秒)
} stepper_motor_config_t;

// 电机状态
typedef enum {
    MOTOR_STOPPED,
    MOTOR_ACCELERATING,
    MOTOR_RUNNING,
    MOTOR_DECELERATING
} motor_state_t;

// 电机实例
typedef struct {
    stepper_motor_config_t config;
    motor_state_t state;
    uint8_t current_step;
    int16_t config_rpm;
    int16_t target_rpm;
    int16_t current_rpm;
    uint32_t last_step_time;
    uint32_t moter_id;
} stepper_motor_t;

// 初始化API
stepper_motor_t* stepper_motor_create(const stepper_motor_config_t* config);
void stepper_motor_init_hardware(stepper_motor_t* motor);
void stepper_motor_destroy(stepper_motor_t* motor);

// 控制API
void stepper_motor_run(stepper_motor_t* motor, int16_t rpm);
void stepper_motor_stop(stepper_motor_t* motor);
void stepper_motor_start(stepper_motor_t* motor);
void stepper_motor_step(stepper_motor_t* motor, int8_t steps);
void stepper_motor_update(stepper_motor_t* motor); // 需在主循环中调用

// 状态查询
bool stepper_motor_is_running(const stepper_motor_t* motor);
int16_t stepper_motor_get_current_rpm(const stepper_motor_t* motor);

// 设置转速（正值为CW，负值为CCW）
void stepper_motor_set_rpm(stepper_motor_t* motor, int16_t rpm); 

// 立即改变方向（保持当前速度）
void stepper_motor_set_direction(stepper_motor_t* motor, bool clockwise);

// 急停（立即停止）
void stepper_motor_emergency_stop(stepper_motor_t* motor);

void stepper_motor_test_all_pins(stepper_motor_t* motor);
void validate_step_sequence(stepper_motor_t* motor);
#endif // STEPPER_MOTOR_H