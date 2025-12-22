#include "stepper_motor.h"
#include "main.h"
#include <stdlib.h>
#include <math.h>

// 默认4相8拍步序表
static const uint8_t default_8step_sequence[] = {
    0b0001, 0b0011, 0b0010, 0b0110,
    0b0100, 0b1100, 0b1000, 0b1001
};
stepper_motor_t *stepper_motor_instance[STEPPER_MOTOR_INSTANCE_MAX];
uint32_t stepper_motor_instance_count = 0;

stepper_motor_t* stepper_motor_get(uint32_t moter_id) {
  if (moter_id >= stepper_motor_instance_count) {
    return NULL;
  }
  return stepper_motor_instance[moter_id];
}
uint32_t stepper_motor_get_instance_count(void) {
  return stepper_motor_instance_count;
}

// 创建电机实例
stepper_motor_t* stepper_motor_create(const stepper_motor_config_t* config) {
    stepper_motor_t* motor = malloc(sizeof(stepper_motor_t));
    if (!motor) return NULL;
    if (stepper_motor_instance_count >= STEPPER_MOTOR_INSTANCE_MAX) {
      return NULL;
    }
    stepper_motor_instance[stepper_motor_instance_count] = motor;
    motor->moter_id = stepper_motor_instance_count;
    stepper_motor_instance_count++;
    // 复制基础配置
    motor->config = *config;

    // 设置默认步序表（如果未提供）
    if (!motor->config.seq.sequence) {
        motor->config.seq.sequence = default_8step_sequence;
        motor->config.seq.length = 8;
        motor->config.seq.phase_count = 4;
    }

    // 初始化状态
    motor->state = MOTOR_STOPPED;
    motor->current_step = 0;
    motor->target_rpm = 0;
    motor->current_rpm = 0;
    motor->last_step_time = 0;

    return motor;
}

// 初始化硬件
void stepper_motor_init_hardware(stepper_motor_t* motor) {
    GPIO_InitTypeDef GPIO_InitStruct = {0};
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;

    // 初始化所有相位引脚
    for (uint8_t i = 0; i < motor->config.seq.phase_count; i++) {
        GPIO_TypeDef* port = motor->config.phases[i].port;
        // 根据端口类型启用对应时钟（支持GPIOA-GPIOK）
        if (port == GPIOA) __HAL_RCC_GPIOA_CLK_ENABLE();
        else if (port == GPIOB) __HAL_RCC_GPIOB_CLK_ENABLE();
        else if (port == GPIOC) __HAL_RCC_GPIOC_CLK_ENABLE();
        // else if (port == GPIOD) __HAL_RCC_GPIOD_CLK_ENABLE();
        // else if (port == GPIOE) __HAL_RCC_GPIOE_CLK_ENABLE();
        GPIO_InitStruct.Pin = motor->config.phases[i].pin;
        HAL_GPIO_Init(motor->config.phases[i].port, &GPIO_InitStruct);

        // 初始状态设为不激活
        HAL_GPIO_WritePin(motor->config.phases[i].port, 
                         motor->config.phases[i].pin,
                         motor->config.phases[i].active_low ? GPIO_PIN_RESET : GPIO_PIN_SET);
    }
}

// 释放资源
void stepper_motor_destroy(stepper_motor_t* motor) {
    if (motor) {
      for (uint32_t i = 0; i < stepper_motor_instance_count; i++) {
        if (stepper_motor_instance[i] == motor) {
          stepper_motor_instance[i] = NULL;
          stepper_motor_instance_count--;
          break;
        }
      }
        free(motor);
    }
}

// 执行单步
static void execute_step(stepper_motor_t* motor, int8_t direction) {
    // 更新步序
    if (direction >= 0) {
        motor->current_step = (motor->current_step + 1) % motor->config.seq.length;
    } else {
        motor->current_step = (motor->current_step == 0) ? 
            (motor->config.seq.length - 1) : (motor->current_step - 1);
    }

    // 获取当前步序模式
    uint8_t pattern = motor->config.seq.sequence[motor->current_step] & 0x0F;

    // 设置相位输出
    for (uint8_t i = 0; i < motor->config.seq.phase_count; i++) {
        bool active = (pattern & (1 << i)) != 0;
        GPIO_PinState state = (active ^ motor->config.phases[i].active_low) ? 
            GPIO_PIN_SET : GPIO_PIN_RESET;
        HAL_GPIO_WritePin(motor->config.phases[i].port, 
                         motor->config.phases[i].pin, 
                         state);
    }
// printf("[STEP] #%d Dir:%s Pattern:0x%02X -> Phases: A=%d B=%d C=%d D=%d\n",
//        motor->current_step,
//        direction > 0 ? "CW" : "CCW",
//        pattern,
//        (pattern & 0x01) ? 1 : 0,
//        (pattern & 0x02) ? 1 : 0,
//        (pattern & 0x04) ? 1 : 0,
//        (pattern & 0x08) ? 1 : 0);
}
void stepper_motor_test_all_pins(stepper_motor_t* motor) {
    for (uint8_t i = 0; i < motor->config.seq.phase_count; i++) {
        HAL_GPIO_WritePin(motor->config.phases[i].port, 
                         motor->config.phases[i].pin, 
                         GPIO_PIN_SET);
                         HAL_Delay(500);
        HAL_GPIO_WritePin(motor->config.phases[i].port, 
                         motor->config.phases[i].pin, 
                         GPIO_PIN_RESET);
    }

}
// 在main()中添加步序表验证
void validate_step_sequence(stepper_motor_t* motor) {
    const uint8_t expected[] = {0x01,0x03,0x02,0x06,0x04,0x0C,0x08,0x09};
    for(int i=0; i<8; i++) {
        if(motor->config.seq.sequence[i] != expected[i]) {
            printf("ERROR: Step %d mismatch! Got 0x%02X, Expected 0x%02X\n",
                   i, motor->config.seq.sequence[i], expected[i]);
        }
    }
}
// 运行电机
void stepper_motor_run(stepper_motor_t* motor, int16_t rpm) {
    if (!motor) return;

    motor->target_rpm = rpm;
    if (rpm == 0) {
        motor->state = MOTOR_DECELERATING;
    } else if (motor->state == MOTOR_STOPPED) {
        motor->state = MOTOR_ACCELERATING;
    }
}

// 停止电机
void stepper_motor_stop(stepper_motor_t* motor) {
    stepper_motor_run(motor, 0);
}
void stepper_motor_start(stepper_motor_t* motor) {
    stepper_motor_run(motor, motor->target_rpm);
}

// 执行指定步数
void stepper_motor_step(stepper_motor_t* motor, int8_t steps) {
    if (!motor || steps == 0) return;

    int8_t dir = steps > 0 ? 1 : -1;
    steps = abs(steps);

    for (int8_t i = 0; i < steps; i++) {
        execute_step(motor, dir);
        delay_us(motor->config.step_delay_us);
    }
}
// 实现梯形加速曲线
void trapezoidal_move(stepper_motor_t* motor, int16_t target_rpm, uint32_t accel_time_ms) {
    int16_t start_rpm = motor->current_rpm;
    uint32_t steps = abs(target_rpm - start_rpm) * accel_time_ms / 60000;
    
    for (uint32_t i = 0; i < steps; i++) {
        int16_t intermediate_rpm = start_rpm + (target_rpm - start_rpm) * i / steps;
        stepper_motor_set_rpm(motor, intermediate_rpm);
        delay_us(1000);
    }
    stepper_motor_set_rpm(motor, target_rpm);
}
// 更新电机状态（需在主循环中调用）
void stepper_motor_update(stepper_motor_t* motor) {
    if (!motor) {
        printf("[ERROR] Motor pointer is NULL!\r\n");
        return;
    }

    // 调试信息：当前状态
    const char* state_str[] = {"STOPPED", "ACCELERATING", "RUNNING", "DECELERATING"};
    
    if (motor->state == MOTOR_STOPPED) {
        // printf("[MOTOR] State: %s, Current RPM: %d, Target RPM: %d\r\n", 
        //       state_str[motor->state], motor->current_rpm, motor->target_rpm);
        return;
    }

    uint32_t now = HAL_GetTick() * 1000; // 转换为微秒
    uint32_t elapsed = now - motor->last_step_time;

    // 计算当前步间延迟（微秒）
    uint32_t step_delay_us = (60 * 1000000) / 
                           (motor->config.steps_per_rev * abs(motor->current_rpm) * 
                            motor->config.seq.length);

    // printf("[TIMING] Now: %lums, Last Step: %lums, Elapsed: %lums, Required Delay: %luus\r\n",
          //  now, motor->last_step_time, elapsed, step_delay_us);

    if (elapsed >= step_delay_us) {
        // 调试：即将执行步进
        // printf("[STEP] Executing step %d, Direction: %s\r\n", 
        //        motor->current_step, 
        //        motor->target_rpm >= 0 ? "CW" : "CCW");

        // 打印当前GPIO状态（执行前）
        // printf("[GPIO BEFORE] ");
        // for (uint8_t i = 0; i < motor->config.seq.phase_count; i++) {
        //     GPIO_PinState state = HAL_GPIO_ReadPin(motor->config.phases[i].port, 
        //                                           motor->config.phases[i].pin);
        //     printf("%c:%d ", 'A'+i, state);
        // }
        // printf("\r\n");

        // 执行步进
        execute_step(motor, motor->target_rpm >= 0 ? 1 : -1);
        motor->last_step_time = now;

        // 打印当前GPIO状态（执行后）
        // printf("[GPIO AFTER]  ");
        // for (uint8_t i = 0; i < motor->config.seq.phase_count; i++) {
        //     GPIO_PinState state = HAL_GPIO_ReadPin(motor->config.phases[i].port, 
        //                                           motor->config.phases[i].pin);
        //     printf("%c:%d ", 'A'+i, state);
        // }
        // printf("\r\n");

        // 速度控制逻辑
        if (motor->state == MOTOR_ACCELERATING) {
            motor->current_rpm += (motor->current_rpm < motor->target_rpm) ? 1 : -1;
            if (abs(motor->current_rpm - motor->target_rpm) <= 1) {
                motor->state = MOTOR_RUNNING;
                motor->current_rpm = motor->target_rpm;
                printf("[STATE] Transition to RUNNING at %d RPM\r\n", motor->current_rpm);
            }
        } 
        else if (motor->state == MOTOR_DECELERATING) {
            motor->current_rpm -= (motor->current_rpm > 0) ? 1 : -1;
            if (motor->current_rpm == 0) {
                motor->state = MOTOR_STOPPED;
                printf("[STATE] Transition to STOPPED\r\n");
            }
        }
    } else {
        // printf("[TIMING] Not yet time for next step. Waiting...\r\n");
    }
}

// 状态查询
bool stepper_motor_is_running(const stepper_motor_t* motor) {
    return motor && motor->state != MOTOR_STOPPED;
}

int16_t stepper_motor_get_current_rpm(const stepper_motor_t* motor) {
    return motor ? motor->current_rpm : 0;
}
// stepper_motor.c
void stepper_motor_set_rpm(stepper_motor_t* motor, int16_t rpm) {
    if (!motor) return;
    
    // 方向由rpm正负决定
    motor->target_rpm = rpm;
    
    // 状态机切换
    if (rpm == 0) {
        motor->state = MOTOR_DECELERATING;
    } else if (motor->state == MOTOR_STOPPED) {
        motor->state = MOTOR_ACCELERATING;
    }
}

void stepper_motor_set_direction(stepper_motor_t* motor, bool clockwise) {
    if (!motor || motor->state == MOTOR_STOPPED) return;
    
    // 保持速度绝对值，仅改变方向
    motor->target_rpm = clockwise ? 
        abs(motor->target_rpm) : -abs(motor->target_rpm);
}

void stepper_motor_emergency_stop(stepper_motor_t* motor) {
    if (!motor) return;
    motor->target_rpm = 0;
    motor->current_rpm = 0;
    motor->state = MOTOR_STOPPED;
    // DisableAllPhases(motor); // 关闭所有相位
}