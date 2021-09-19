#define USART1_BASE_ADDR 0x40011000
#define USART_DR_OFFSET   0x04
static volatile unsigned char * UART_DR = (volatile unsigned char*)(USART1_BASE_ADDR + USART_DR_OFFSET);

static void uart_print(const char* s)
{
    while (*s != '\0') {
        *UART_DR = *s;
        s++;
    }
}

void c_entry(void)
{
    uart_print("c_entry hello world\n");
    // SCB->ICSR |= SCB_ICSR_PENDSVSET_Msk;//将pendsv pending bit 设为1
    *(volatile unsigned int *)(0xE000ED04) |= 1 << 28;
    while(1);
}
