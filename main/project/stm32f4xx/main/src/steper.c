// #ifdef __cplusplus
// extern "C" {
// #endif
#include "main.h"
#include <stdint.h>
#include <string.h>
// #ifdef __cplusplus
// }
// #endif

#include "steper.h"
#define STEPER_IN1    GPIO_PIN_0
#define STEPER_IN2    GPIO_PIN_1
#define STEPER_IN3    GPIO_PIN_4
#define STEPER_IN4    GPIO_PIN_0

uint8_t CW[8] = {0x08,0x0C,0x04,0x06,0x02,0x03,0x01,0x09};
uint8_t CCW[8] = {0x09,0x01,0x03,0x02,0x06,0x04,0x0c,0x08};

static struct Stepper this;
// static struct Stepper *this = NULL;

/*
 * Sets the speed in revs per minute
 */
void setSpeed(long whatSpeed)
{
  this.step_delay = 60L * 1000L * 1000L / this.number_of_steps / whatSpeed;
}

void stepMotor(int thisStep)
{
    // printf("[%s] start thisStep=%d\r\n", __func__, thisStep);
    switch (thisStep) {
      case 0:  // 0001
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
      break;
      case 1:  // 0011
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
      break;
      case 2:  //0010
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
      break;
      case 3:  //0110
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
      break;
    case 4:  //0100
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
      break;
    case 5:  //1100
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
      break;
    case 6:  //1000
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
      break;
    case 7:  //1001
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
      break;
    }
    // printf("[%s] end thisStep=%d\r\n", __func__, thisStep);
}

/*
 * Moves the motor steps_to_move steps.  If the number is negative,
 * the motor moves in the reverse direction.
 */
void step(int steps_to_move)
{
#if 1
  /* EPRROM 保存地址 */
  int address = 0;
  int valueL = 0;
  int valueH = 0;
  int tempSteps = steps_to_move;
  #define ABS(x) ((x)>0?x:-x)
  int steps_left = ABS(steps_to_move);  // how many steps to take

  // determine direction based on whether steps_to_mode is + or -:
  if (steps_to_move > 0) { this.direction = 1; }
  if (steps_to_move < 0) { this.direction = 0; }


  // decrement the number of steps, moving one step each time:
  while (steps_left > 0)
  {
    
  	unsigned long now = HAL_GetTick();    
    // move only if the appropriate delay has passed:
    if (now - this.last_step_time >= this.step_delay)
    {
    	valueL = steps_left & 0x00FF;
    //   EEPROM.write(address + 1, valueL);
      valueH = steps_left >> 8;
    //   EEPROM.write(address + 2, valueH);
      
      // get the timeStamp of when you stepped:
      this.last_step_time = now;
      // increment or decrement the step number,
      // depending on direction:
      if (this.direction == 1)
      {
        this.step_number++;
        if (this.step_number == this.number_of_steps) {
          this.step_number = 0;
        }
      }
      else
      {
        if (this.step_number == 0) {
          this.step_number = this.number_of_steps;
        }
        this.step_number--;
      }
      // decrement the steps left:
      steps_left--;
      
      // step the motor to step number 0, 1, ..., {3 or 10}
      stepMotor(this.step_number % 8);
    }
  }
  #endif
  // printf("this=0x%08p %x \r\n", this, this.motor_pin_1.number);
  //     HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
}

/*
 *   constructor for four-pin version
 *   Sets which wires should control the motor.
 */
void Stepper(int number_of_steps, struct MotorPin * motor_pin_1, struct MotorPin * motor_pin_2,
                                      struct MotorPin * motor_pin_3, struct MotorPin * motor_pin_4)
{
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  this.step_number = 0;    // which step the motor is on
  this.speed = 0;          // the motor speed, in revolutions per minute
  this.direction = 0;      // motor direction
  this.last_step_time = 0; // time stamp in us of the last step taken
  this.number_of_steps = number_of_steps; // total number of steps for this motor

  // Arduino pins for the motor control connection:
  memcpy(&this.motor_pin_1, motor_pin_1, sizeof(struct MotorPin));
  memcpy(&this.motor_pin_2, motor_pin_2, sizeof(struct MotorPin));
  memcpy(&this.motor_pin_3, motor_pin_3, sizeof(struct MotorPin));
  memcpy(&this.motor_pin_4, motor_pin_4, sizeof(struct MotorPin));

  
  /* -1- Enable GPIOA Clock (to be able to program the configuration registers) */
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  
  /* -2- Configure PA05 IO in output push-pull mode to
         drive external LED */
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;

  GPIO_InitStruct.Pin = this.motor_pin_1.number;
  HAL_GPIO_Init(this.motor_pin_1.Port, &GPIO_InitStruct); 
  GPIO_InitStruct.Pin = this.motor_pin_2.number;
  HAL_GPIO_Init(this.motor_pin_2.Port, &GPIO_InitStruct); 
  GPIO_InitStruct.Pin = this.motor_pin_3.number;
  HAL_GPIO_Init(this.motor_pin_3.Port, &GPIO_InitStruct); 
  GPIO_InitStruct.Pin = this.motor_pin_4.number;
  HAL_GPIO_Init(this.motor_pin_4.Port, &GPIO_InitStruct); 
  // pin_count is used by the stepMotor() method:
  this.pin_count = 4;
}

void InitStepper(void)
{
  struct MotorPin motorPin[] = {
    {GPIOA, STEPER_IN1},
    {GPIOA, STEPER_IN2},
    {GPIOA, STEPER_IN3},
    {GPIOB, STEPER_IN4},
  };
  Stepper(8, &motorPin[0], &motorPin[1], &motorPin[2], &motorPin[3]);
  setSpeed(64);
}