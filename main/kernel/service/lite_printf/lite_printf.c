#include <stdarg.h>
#include <stdint.h>
#include "lite_printf.h"

// #define WS_PRINTF_ENABLE
extern int __io_putchar(int ch);
extern int __io_getchar(void);
uint32_t printf_buffer_data_len = 0;
/*must be power of 2*/
#define PRINTF_BUFFSER_SIZE 2048

uint8_t printf_buffer[PRINTF_BUFFSER_SIZE];

void flush_printf_buffer(void)
{
#ifdef WS_PRINTF_ENABLE
    stp_write_log(printf_buffer, printf_buffer_data_len);
    printf_buffer_data_len = 0;
#endif
}
void _putchar(const char ch)
{
#ifdef WS_PRINTF_ENABLE
    printf_buffer[printf_buffer_data_len++] = ch;
    printf_buffer_data_len &= (PRINTF_BUFFSER_SIZE - 1);
#else
    __io_putchar(ch);
#endif
}

char _getchar(void)
{
    return(char)__io_getchar();
}

void lite_getchar(char *chr)
{
    do {
        *chr = _getchar();
    } while (*chr == 0);
}
void lite_putchar(char character)
{
    _putchar(character);
}

void _putstr(const char *str)
{
    while (*str) {
        _putchar(*str++);
    }
}

uint32_t _strlen (const char *_s)
{
    uint32_t i = 0;
    while(*_s++ != '\0') i++;
    return i;
}

static unsigned long _pow(int x, int y)
{
    unsigned long sum = 1;
    while (y--)
    {
        sum *= x;
    }
    return sum;
}

int lite_printf(const char *str, ...)
{
    va_list ap; //定义一个可变 参数的（字符指针）
    int val, r_val;
    char count, ch;
    char *s = (char*)0;
    int res = 0; //返回值

    va_start(ap, str);   //初始化ap
    while ('\0' != *str) //str为字符串,它的最后一个字符肯定是'\0'（字符串的结束符）
    {
        switch (*str)
        {
        case '%': //发送参数
            str++;
            switch (*str)
            {
            case 'd': //10进制输出
                val = va_arg(ap, int);
                r_val = val;
                count = 0;
                while (r_val)

                {
                    count++; //整数的长度
                    r_val /= 10;
                }

                res += count;
                //返回值长度增加​
                r_val = val;
                while (count)
                {
                    ch = r_val / _pow(10, count - 1);
                    r_val %= _pow(10, count - 1);

                    _putchar(ch + '0');
                    //数字到字符的转换
                    count--;
                }
                break;
            case 'x': //16进制输出
                val = va_arg(ap, int);
                r_val = val;
                count = 0;
                while (r_val)

                {
                    count++; //整数的长度
                    r_val /= 16;
                }

                res += count;
                //返回值长度增加​
                r_val = val;
                while (count)
                {
                    ch = r_val / _pow(16, count - 1);
                    r_val %= _pow(16, count - 1);
                    if (ch <= 9)
                        _putchar(ch + '0');
                    //数字到字符的转换
                    else
                        _putchar(ch - 10 + 'a');
                    count--;
                }
                break;
            case 's': //发送字符串
                s = va_arg(ap, char *);
                _putstr(s);
                //字符串,返回值为字符指针
                res += _strlen(s);
                //返回值长度增加
                break;
            case 'c':
                _putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
                res += 1;

                break;
            default:;
            }
            break;
        case '\n':
            _putchar('\n');
            res += 1;
            break;
        case '\r':
            _putchar('\r');
            res += 1;
            break;
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            _putchar(*str);
            res += 1;
        }

        str++;
    }
    va_end(ap);
    flush_printf_buffer();
    return res;
}
