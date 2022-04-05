#ifndef __SYSLOG_H__
#define __SYSLOG_H__

#include "lite_printf.h"

#define LOGI(fmt, ...) printf("["__func__"]" fmt, __VA_ARGS__)

void syslog_init(void);

#endif // __SYSLOG_H__
