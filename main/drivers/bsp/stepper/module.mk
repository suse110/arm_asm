STEPPER_DIR = drivers/bsp/stepper

SRC += $(STEPPER_DIR)/src/stepper_motor.c
CFLAGS += -I$(SDKPATH)/$(STEPPER_DIR)/inc
CFLAGS += -DBSP_STEPPER_MOTOR_ENABLE