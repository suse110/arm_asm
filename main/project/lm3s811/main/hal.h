#ifndef __HAL_H__
#define __HAL_H__

#include <stdint.h>

// Simple HAL definitions for LM3S811
#define HAL_OK    0
#define HAL_ERROR 1

void hal_init(void);
void hal_mpu_test(void);

#endif // __HAL_H__
