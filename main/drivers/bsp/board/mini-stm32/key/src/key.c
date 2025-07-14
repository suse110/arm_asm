#include "key.h"
#include "delay.h"

// Key initialization function
// Set PA0, PA15, and PC5 to input mode
void key_init(void)
{
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    // Enable GPIOA and GPIOC clocks
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();

    // Disable JTAG and enable SWD
    __HAL_AFIO_REMAP_SWJ_DISABLE();

    // Initialize PA15 as pull-up input mode
    GPIO_InitStruct.Pin = GPIO_PIN_15;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_PULLUP;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // Initialize PC5 as pull-up input mode
    GPIO_InitStruct.Pin = GPIO_PIN_5;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    // Initialize PA0 as pull-down input mode
    GPIO_InitStruct.Pin = GPIO_PIN_0;
    GPIO_InitStruct.Pull = GPIO_PULLDOWN;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
	
} 
// Key scanning function
// Return value
// mode: 0, no continuous pressing supported; 1, continuous pressing supported;
// Return values:
// 0: No key is pressed
// KEY0_PRES: KEY0 is pressed
// KEY1_PRES: KEY1 is pressed
// WKUP_PRES: WK_UP is pressed
// Note: This code has response priority, KEY0 > KEY1 > WK_UP!!
uint8_t key_scan(uint8_t mode)
{	 
	static uint8_t key_up=1; // Key release flag
	if(mode)key_up=1;  // Support continuous pressing	  
	if(key_up&&(KEY0==0||KEY1==0||WK_UP==1))
	{
		delay_ms(10); // Debounce
		key_up=0;
		if(KEY0==0)return KEY0_PRES;
		else if(KEY1==0)return KEY1_PRES;
		else if(WK_UP==1)return WKUP_PRES; 
	}else if(KEY0==1&&KEY1==1&&WK_UP==0)key_up=1; 	     
	return 0; // No key is pressed
}
