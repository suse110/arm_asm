#ifndef __SERIAL_H__
#define __SERIAL_H__

#define USART_REC_LEN  			200  	//定义最大接收字节数 200
#define EN_USART1_RX 			1		//使能（1）/禁止（0）串口1接收

void serial_init(void) ;

#endif // __SERIAL_H__
