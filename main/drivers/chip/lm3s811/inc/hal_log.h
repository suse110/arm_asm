#ifndef __HAL_LOG_H__
#define __HAL_LOG_H__

int lite_printf(const char *str, ...);
void lite_putchar(char character);
void lite_getchar(char *chr);

#ifdef __PRINTF
#include "printf.h"
#else
#define printf(...) lite_printf(__VA_ARGS__)
#endif

#define LOGI(fmt, ...) printf("[%s]" fmt, __func__, __VA_ARGS__)
#endif // __HAL_LOG_H__
