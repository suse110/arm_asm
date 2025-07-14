#ifndef __KEY_H
#define __KEY_H	 
#include "sys.h"
#include "stm32f1xx_hal_conf.h"

//#define KEY0 PCin(5)   	
//#define KEY1 PAin(15)	 
//#define WK_UP  PAin(0)	 
 

#define KEY0  HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_5)
#define KEY1  HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_15)
#define WK_UP HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_0)

#define KEY0_PRES	1		//KEY0  
#define KEY1_PRES	2		//KEY1 
#define WKUP_PRES	3		//WK_UP  

void key_init(void);
uint8_t key_scan(uint8_t mode);		    
#endif
