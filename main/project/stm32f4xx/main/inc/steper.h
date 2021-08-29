#ifndef __STEPER_H__
#define __STEPER_H__

struct MotorPin {
    GPIO_TypeDef *Port;
    int number;
};
typedef struct Stepper {
  
    // constructors:
    void (*Stepper)(int number_of_steps, struct MotorPin *motor_pin_1, struct MotorPin *motor_pin_2,
                                 struct MotorPin *motor_pin_3, struct MotorPin *motor_pin_4);

    // speed setter method:
    void (*setSpeed)(long whatSpeed);

    // mover method:
    void (*step)(int number_of_steps);

  
    void (*stepMotor)(int this_step);

    int direction;            // Direction of rotation
    int speed;                // Speed in RPMs
    unsigned long step_delay; // delay between steps, in ms, based on speed
    int number_of_steps;      // total number of steps this motor can take
    int pin_count;            // how many pins are in use.
    int step_number;          // which step the motor is on

    // motor pin numbers:
    struct MotorPin motor_pin_1;
    struct MotorPin motor_pin_2;
    struct MotorPin motor_pin_3;
    struct MotorPin motor_pin_4;

    unsigned long last_step_time; // time stamp in us of when the last step was taken
} stepper_t;

void Stepper(int number_of_steps, struct MotorPin * motor_pin_1, struct MotorPin * motor_pin_2,
                                      struct MotorPin * motor_pin_3, struct MotorPin * motor_pin_4);
void step(int steps_to_move);
void setSpeed(long whatSpeed);
void InitStepper(void);

#endif // __STEPER_H__
