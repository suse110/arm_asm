#ifndef __LITE_PRINTF_H__
#define __LITE_PRINTF_H__
#include "stp.h"
int lite_printf(const char *str, ...);
void lite_putchar(char character);
void lite_getchar(char *chr);
void flush_printf_buffer(void);

#ifdef __PRINTF
#include "printf.h"
#else
#define printf(...) lite_printf(__VA_ARGS__)
#endif
#endif // __LITE_PRINTF_H__
