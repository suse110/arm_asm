#ifndef __HAL_LOG_H__
#define __HAL_LOG_H__
#ifdef __PRINTF
#include "printf.h"
#endif
int lite_printf(const char *str, ...);
void lite_putchar(char character);
void lite_getchar(char *chr);

#endif // __HAL_LOG_H__
