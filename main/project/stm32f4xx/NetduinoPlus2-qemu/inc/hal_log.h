#ifndef __HAL_LOG_H__
#define __HAL_LOG_H__
#include "lite_printf.h"

#define LOGI(fmt, ...) printf("["__func__"]" fmt, __VA_ARGS__)
#endif // __HAL_LOG_H__
