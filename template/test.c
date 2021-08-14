static volatile unsigned int * const UART_DR = (unsigned int *)0x4000c000;

static void uart_print(const char* s)
{
    while (*s != '\0') {
        *UART_DR = *s;
        s++;
    }
}

void c_entry(void)
{
    uart_print("hello world\n");
    while(1);
}
