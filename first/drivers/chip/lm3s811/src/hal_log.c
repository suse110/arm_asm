#include <stdarg.h>
#include <stdint.h>
#include "hal_log.h"


static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static unsigned long m_pow(int x, int y)
{
    unsigned long sum = 1;
    while (y--)
    {
        sum *= x;
    }
    return sum;
}
void m_putchar(const char ch)
{
    *UART_DR = ch;
}
void m_putstr(const char *str)
{
    while (*str)
    {
        m_putchar(*str++);
    }
}
uint32_t m_strlen (const char *__s)
{
    uint32_t i = 0;
    while(*__s++ != '\0') i++;
    return i;
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
                    ch = r_val / m_pow(10, count - 1);
                    r_val %= m_pow(10, count - 1);

                    m_putchar(ch + '0');
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
                    ch = r_val / m_pow(16, count - 1);
                    r_val %= m_pow(16, count - 1);
                    if (ch <= 9)
                        m_putchar(ch + '0');
                    //数字到字符的转换
                    else
                        m_putchar(ch - 10 + 'a');
                    count--;
                }
                break;
            case 's': //发送字符串
                s = va_arg(ap, char *);
                m_putstr(s);
                //字符串,返回值为字符指针
                res += m_strlen(s);
                //返回值长度增加
                break;
            case 'c':
                m_putchar((char)va_arg(ap, int)); //大家猜为什么不写char，而要写int
                res += 1;

                break;
            default:;
            }
            break;
        case '\n':
            m_putchar('\n');
            res += 1;
            break;
        case '\r':
            m_putchar('\r');
            res += 1;
            break;
        default: //显示原来的第一个参数的字符串(不是..里的参数o)
            m_putchar(*str);
            res += 1;
        }

        str++;
    }
    va_end(ap);
    return res;
}