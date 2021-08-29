#ifndef __HAL_LOG_H__
#define __HAL_LOG_H__
#include "lite_printf.h"
#define LOGI(fmt, ...) printf("[%s]" fmt, __func__, __VA_ARGS__)

#endif // __HAL_LOG_H__
