
J:/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/stm32f4xx/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_stext>:
 8000000:	20017fff 	.word	0x20017fff
 8000004:	08003475 	.word	0x08003475
 8000008:	08000521 	.word	0x08000521
 800000c:	08000531 	.word	0x08000531
 8000010:	0800056d 	.word	0x0800056d
 8000014:	08000573 	.word	0x08000573
 8000018:	08000579 	.word	0x08000579
	...
 800002c:	0800057f 	.word	0x0800057f
 8000030:	0800058d 	.word	0x0800058d
 8000034:	00000000 	.word	0x00000000
 8000038:	080034c5 	.word	0x080034c5
 800003c:	0800059b 	.word	0x0800059b
 8000040:	080034c5 	.word	0x080034c5
 8000044:	080034c5 	.word	0x080034c5
 8000048:	080034c5 	.word	0x080034c5
 800004c:	080034c5 	.word	0x080034c5
 8000050:	080034c5 	.word	0x080034c5
 8000054:	080034c5 	.word	0x080034c5
 8000058:	080034c5 	.word	0x080034c5
 800005c:	080034c5 	.word	0x080034c5
 8000060:	080034c5 	.word	0x080034c5
 8000064:	080034c5 	.word	0x080034c5
 8000068:	080034c5 	.word	0x080034c5
 800006c:	080034c5 	.word	0x080034c5
 8000070:	080034c5 	.word	0x080034c5
 8000074:	080034c5 	.word	0x080034c5
 8000078:	080034c5 	.word	0x080034c5
 800007c:	080034c5 	.word	0x080034c5
 8000080:	080034c5 	.word	0x080034c5
 8000084:	080034c5 	.word	0x080034c5
 8000088:	080034c5 	.word	0x080034c5
	...
 800009c:	080034c5 	.word	0x080034c5
 80000a0:	080034c5 	.word	0x080034c5
 80000a4:	080034c5 	.word	0x080034c5
 80000a8:	080034c5 	.word	0x080034c5
 80000ac:	080034c5 	.word	0x080034c5
 80000b0:	080034c5 	.word	0x080034c5
 80000b4:	080034c5 	.word	0x080034c5
 80000b8:	080034c5 	.word	0x080034c5
 80000bc:	080034c5 	.word	0x080034c5
 80000c0:	080034c5 	.word	0x080034c5
 80000c4:	080034c5 	.word	0x080034c5
 80000c8:	080034c5 	.word	0x080034c5
 80000cc:	080034c5 	.word	0x080034c5
 80000d0:	080034c5 	.word	0x080034c5
 80000d4:	080034c5 	.word	0x080034c5
 80000d8:	080034c5 	.word	0x080034c5
 80000dc:	00000000 	.word	0x00000000
 80000e0:	080034c5 	.word	0x080034c5
 80000e4:	080034c5 	.word	0x080034c5
 80000e8:	080034c5 	.word	0x080034c5
	...
 80000fc:	080034c5 	.word	0x080034c5
 8000100:	00000000 	.word	0x00000000
 8000104:	080034c5 	.word	0x080034c5
 8000108:	080034c5 	.word	0x080034c5
 800010c:	080034c5 	.word	0x080034c5
	...
 8000120:	080034c5 	.word	0x080034c5
 8000124:	080034c5 	.word	0x080034c5
 8000128:	080034c5 	.word	0x080034c5
 800012c:	080034c5 	.word	0x080034c5
 8000130:	080034c5 	.word	0x080034c5
	...
 800014c:	080034c5 	.word	0x080034c5
 8000150:	080034c5 	.word	0x080034c5
 8000154:	080034c5 	.word	0x080034c5
 8000158:	080034c5 	.word	0x080034c5
 800015c:	080034c5 	.word	0x080034c5
 8000160:	080034c5 	.word	0x080034c5
 8000164:	080034c5 	.word	0x080034c5
	...
 8000184:	080034c5 	.word	0x080034c5
	...
 8000190:	080034c5 	.word	0x080034c5

08000194 <__do_global_dtors_aux>:
 8000194:	b510      	push	{r4, lr}
 8000196:	4c05      	ldr	r4, [pc, #20]	; (80001ac <__do_global_dtors_aux+0x18>)
 8000198:	7823      	ldrb	r3, [r4, #0]
 800019a:	b933      	cbnz	r3, 80001aa <__do_global_dtors_aux+0x16>
 800019c:	4b04      	ldr	r3, [pc, #16]	; (80001b0 <__do_global_dtors_aux+0x1c>)
 800019e:	b113      	cbz	r3, 80001a6 <__do_global_dtors_aux+0x12>
 80001a0:	4804      	ldr	r0, [pc, #16]	; (80001b4 <__do_global_dtors_aux+0x20>)
 80001a2:	f3af 8000 	nop.w
 80001a6:	2301      	movs	r3, #1
 80001a8:	7023      	strb	r3, [r4, #0]
 80001aa:	bd10      	pop	{r4, pc}
 80001ac:	20000a00 	.word	0x20000a00
 80001b0:	00000000 	.word	0x00000000
 80001b4:	080098a0 	.word	0x080098a0

080001b8 <frame_dummy>:
 80001b8:	b508      	push	{r3, lr}
 80001ba:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <frame_dummy+0x10>)
 80001bc:	b11b      	cbz	r3, 80001c6 <frame_dummy+0xe>
 80001be:	4903      	ldr	r1, [pc, #12]	; (80001cc <frame_dummy+0x14>)
 80001c0:	4803      	ldr	r0, [pc, #12]	; (80001d0 <frame_dummy+0x18>)
 80001c2:	f3af 8000 	nop.w
 80001c6:	bd08      	pop	{r3, pc}
 80001c8:	00000000 	.word	0x00000000
 80001cc:	20000a04 	.word	0x20000a04
 80001d0:	080098a0 	.word	0x080098a0

080001d4 <main>:
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
 80001d4:	b580      	push	{r7, lr}
 80001d6:	af00      	add	r7, sp, #0
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
  HAL_Init();
 80001d8:	f000 fab4 	bl	8000744 <HAL_Init>
//  __asm("svc 0");
  /* Configure the system clock to 84 MHz */
  SystemClock_Config();
 80001dc:	f000 f808 	bl	80001f0 <SystemClock_Config>

  serial_init();
 80001e0:	f000 f868 	bl	80002b4 <serial_init>
        &__shell_command_start, &__shell_command_end);
    // shell_command_t * scmd = &__shell_command_start;

//  BSP_LED_Init(LED2);
  
  exception_test();
 80001e4:	f003 f940 	bl	8003468 <exception_test>
  backtrace_test();
 80001e8:	f002 ff5e 	bl	80030a8 <backtrace_test>
//  InitStepper();
  while (1) {
 80001ec:	e7fe      	b.n	80001ec <main+0x18>
	...

080001f0 <SystemClock_Config>:
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
 80001f0:	b580      	push	{r7, lr}
 80001f2:	b094      	sub	sp, #80	; 0x50
 80001f4:	af00      	add	r7, sp, #0
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
 80001f6:	2300      	movs	r3, #0
 80001f8:	60bb      	str	r3, [r7, #8]
 80001fa:	4b29      	ldr	r3, [pc, #164]	; (80002a0 <SystemClock_Config+0xb0>)
 80001fc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80001fe:	4a28      	ldr	r2, [pc, #160]	; (80002a0 <SystemClock_Config+0xb0>)
 8000200:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000204:	6413      	str	r3, [r2, #64]	; 0x40
 8000206:	4b26      	ldr	r3, [pc, #152]	; (80002a0 <SystemClock_Config+0xb0>)
 8000208:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800020a:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800020e:	60bb      	str	r3, [r7, #8]
 8000210:	68bb      	ldr	r3, [r7, #8]
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
 8000212:	2300      	movs	r3, #0
 8000214:	607b      	str	r3, [r7, #4]
 8000216:	4b23      	ldr	r3, [pc, #140]	; (80002a4 <SystemClock_Config+0xb4>)
 8000218:	681b      	ldr	r3, [r3, #0]
 800021a:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 800021e:	4a21      	ldr	r2, [pc, #132]	; (80002a4 <SystemClock_Config+0xb4>)
 8000220:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000224:	6013      	str	r3, [r2, #0]
 8000226:	4b1f      	ldr	r3, [pc, #124]	; (80002a4 <SystemClock_Config+0xb4>)
 8000228:	681b      	ldr	r3, [r3, #0]
 800022a:	f403 4340 	and.w	r3, r3, #49152	; 0xc000
 800022e:	607b      	str	r3, [r7, #4]
 8000230:	687b      	ldr	r3, [r7, #4]
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 8000232:	2302      	movs	r3, #2
 8000234:	60fb      	str	r3, [r7, #12]
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 8000236:	2301      	movs	r3, #1
 8000238:	61bb      	str	r3, [r7, #24]
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
 800023a:	2310      	movs	r3, #16
 800023c:	61fb      	str	r3, [r7, #28]
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 800023e:	2302      	movs	r3, #2
 8000240:	627b      	str	r3, [r7, #36]	; 0x24
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
 8000242:	2300      	movs	r3, #0
 8000244:	62bb      	str	r3, [r7, #40]	; 0x28
  RCC_OscInitStruct.PLL.PLLM = 16;
 8000246:	2310      	movs	r3, #16
 8000248:	62fb      	str	r3, [r7, #44]	; 0x2c
  RCC_OscInitStruct.PLL.PLLN = 336;
 800024a:	f44f 73a8 	mov.w	r3, #336	; 0x150
 800024e:	633b      	str	r3, [r7, #48]	; 0x30
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
 8000250:	2304      	movs	r3, #4
 8000252:	637b      	str	r3, [r7, #52]	; 0x34
  RCC_OscInitStruct.PLL.PLLQ = 7;
 8000254:	2307      	movs	r3, #7
 8000256:	63bb      	str	r3, [r7, #56]	; 0x38
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 8000258:	f107 030c 	add.w	r3, r7, #12
 800025c:	4618      	mov	r0, r3
 800025e:	f000 fbfd 	bl	8000a5c <HAL_RCC_OscConfig>
 8000262:	4603      	mov	r3, r0
 8000264:	2b00      	cmp	r3, #0
 8000266:	d001      	beq.n	800026c <SystemClock_Config+0x7c>
  {
    Error_Handler();
 8000268:	f000 f81e 	bl	80002a8 <Error_Handler>
  }
 
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
 800026c:	230f      	movs	r3, #15
 800026e:	63fb      	str	r3, [r7, #60]	; 0x3c
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 8000270:	2302      	movs	r3, #2
 8000272:	643b      	str	r3, [r7, #64]	; 0x40
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 8000274:	2300      	movs	r3, #0
 8000276:	647b      	str	r3, [r7, #68]	; 0x44
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
 8000278:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 800027c:	64bb      	str	r3, [r7, #72]	; 0x48
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
 800027e:	2300      	movs	r3, #0
 8000280:	64fb      	str	r3, [r7, #76]	; 0x4c
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 8000282:	f107 033c 	add.w	r3, r7, #60	; 0x3c
 8000286:	2102      	movs	r1, #2
 8000288:	4618      	mov	r0, r3
 800028a:	f000 fe5f 	bl	8000f4c <HAL_RCC_ClockConfig>
 800028e:	4603      	mov	r3, r0
 8000290:	2b00      	cmp	r3, #0
 8000292:	d001      	beq.n	8000298 <SystemClock_Config+0xa8>
  {
    Error_Handler();
 8000294:	f000 f808 	bl	80002a8 <Error_Handler>
  }
}
 8000298:	bf00      	nop
 800029a:	3750      	adds	r7, #80	; 0x50
 800029c:	46bd      	mov	sp, r7
 800029e:	bd80      	pop	{r7, pc}
 80002a0:	40023800 	.word	0x40023800
 80002a4:	40007000 	.word	0x40007000

080002a8 <Error_Handler>:
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
 80002a8:	b580      	push	{r7, lr}
 80002aa:	af00      	add	r7, sp, #0
  /* Turn LED2 on */
  BSP_LED_On(LED2);
 80002ac:	2000      	movs	r0, #0
 80002ae:	f001 fedf 	bl	8002070 <BSP_LED_On>
  while(1)
 80002b2:	e7fe      	b.n	80002b2 <Error_Handler+0xa>

080002b4 <serial_init>:
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

void serial_init(void) 
{
 80002b4:	b580      	push	{r7, lr}
 80002b6:	af00      	add	r7, sp, #0
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
  UartHandle.Instance          = USARTx;
 80002b8:	4b11      	ldr	r3, [pc, #68]	; (8000300 <serial_init+0x4c>)
 80002ba:	4a12      	ldr	r2, [pc, #72]	; (8000304 <serial_init+0x50>)
 80002bc:	601a      	str	r2, [r3, #0]
  
  UartHandle.Init.BaudRate     = 921600;
 80002be:	4b10      	ldr	r3, [pc, #64]	; (8000300 <serial_init+0x4c>)
 80002c0:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 80002c4:	605a      	str	r2, [r3, #4]
  UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
 80002c6:	4b0e      	ldr	r3, [pc, #56]	; (8000300 <serial_init+0x4c>)
 80002c8:	2200      	movs	r2, #0
 80002ca:	609a      	str	r2, [r3, #8]
  UartHandle.Init.StopBits     = UART_STOPBITS_1;
 80002cc:	4b0c      	ldr	r3, [pc, #48]	; (8000300 <serial_init+0x4c>)
 80002ce:	2200      	movs	r2, #0
 80002d0:	60da      	str	r2, [r3, #12]
  UartHandle.Init.Parity       = UART_PARITY_NONE;
 80002d2:	4b0b      	ldr	r3, [pc, #44]	; (8000300 <serial_init+0x4c>)
 80002d4:	2200      	movs	r2, #0
 80002d6:	611a      	str	r2, [r3, #16]
  UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
 80002d8:	4b09      	ldr	r3, [pc, #36]	; (8000300 <serial_init+0x4c>)
 80002da:	2200      	movs	r2, #0
 80002dc:	619a      	str	r2, [r3, #24]
  UartHandle.Init.Mode         = UART_MODE_TX_RX;
 80002de:	4b08      	ldr	r3, [pc, #32]	; (8000300 <serial_init+0x4c>)
 80002e0:	220c      	movs	r2, #12
 80002e2:	615a      	str	r2, [r3, #20]
  UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
 80002e4:	4b06      	ldr	r3, [pc, #24]	; (8000300 <serial_init+0x4c>)
 80002e6:	2200      	movs	r2, #0
 80002e8:	61da      	str	r2, [r3, #28]
    
  if(HAL_UART_Init(&UartHandle) != HAL_OK) {
 80002ea:	4805      	ldr	r0, [pc, #20]	; (8000300 <serial_init+0x4c>)
 80002ec:	f001 fb19 	bl	8001922 <HAL_UART_Init>
 80002f0:	4603      	mov	r3, r0
 80002f2:	2b00      	cmp	r3, #0
 80002f4:	d001      	beq.n	80002fa <serial_init+0x46>
    /* Initialization Error */
    Error_Handler(); 
 80002f6:	f7ff ffd7 	bl	80002a8 <Error_Handler>
  }
  
}
 80002fa:	bf00      	nop
 80002fc:	bd80      	pop	{r7, pc}
 80002fe:	bf00      	nop
 8000300:	20000bdc 	.word	0x20000bdc
 8000304:	40004400 	.word	0x40004400

08000308 <__io_putchar>:
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
 8000308:	b580      	push	{r7, lr}
 800030a:	b082      	sub	sp, #8
 800030c:	af00      	add	r7, sp, #0
 800030e:	6078      	str	r0, [r7, #4]
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 8000310:	1d39      	adds	r1, r7, #4
 8000312:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8000316:	2201      	movs	r2, #1
 8000318:	4803      	ldr	r0, [pc, #12]	; (8000328 <__io_putchar+0x20>)
 800031a:	f001 fb4f 	bl	80019bc <HAL_UART_Transmit>

  return ch;
 800031e:	687b      	ldr	r3, [r7, #4]
}
 8000320:	4618      	mov	r0, r3
 8000322:	3708      	adds	r7, #8
 8000324:	46bd      	mov	sp, r7
 8000326:	bd80      	pop	{r7, pc}
 8000328:	20000bdc 	.word	0x20000bdc

0800032c <__io_getchar>:
GETCHAR_PROTOTYPE
{
 800032c:	b580      	push	{r7, lr}
 800032e:	b082      	sub	sp, #8
 8000330:	af00      	add	r7, sp, #0
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Receive(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 8000332:	1df9      	adds	r1, r7, #7
 8000334:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8000338:	2201      	movs	r2, #1
 800033a:	4804      	ldr	r0, [pc, #16]	; (800034c <__io_getchar+0x20>)
 800033c:	f001 fbd0 	bl	8001ae0 <HAL_UART_Receive>

  return ch;
 8000340:	79fb      	ldrb	r3, [r7, #7]
 8000342:	4618      	mov	r0, r3
 8000344:	3708      	adds	r7, #8
 8000346:	46bd      	mov	sp, r7
 8000348:	bd80      	pop	{r7, pc}
 800034a:	bf00      	nop
 800034c:	20000bdc 	.word	0x20000bdc

08000350 <HAL_UART_MspInit>:
  *           - NVIC configuration for DMA interrupt request enable
  * @param huart: UART handle pointer
  * @retval None
  */
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
 8000350:	b580      	push	{r7, lr}
 8000352:	b08c      	sub	sp, #48	; 0x30
 8000354:	af00      	add	r7, sp, #0
 8000356:	6078      	str	r0, [r7, #4]
  
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
 8000358:	2300      	movs	r3, #0
 800035a:	61bb      	str	r3, [r7, #24]
 800035c:	4b6a      	ldr	r3, [pc, #424]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 800035e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000360:	4a69      	ldr	r2, [pc, #420]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 8000362:	f043 0301 	orr.w	r3, r3, #1
 8000366:	6313      	str	r3, [r2, #48]	; 0x30
 8000368:	4b67      	ldr	r3, [pc, #412]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 800036a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800036c:	f003 0301 	and.w	r3, r3, #1
 8000370:	61bb      	str	r3, [r7, #24]
 8000372:	69bb      	ldr	r3, [r7, #24]
  USARTx_RX_GPIO_CLK_ENABLE();
 8000374:	2300      	movs	r3, #0
 8000376:	617b      	str	r3, [r7, #20]
 8000378:	4b63      	ldr	r3, [pc, #396]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 800037a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800037c:	4a62      	ldr	r2, [pc, #392]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 800037e:	f043 0301 	orr.w	r3, r3, #1
 8000382:	6313      	str	r3, [r2, #48]	; 0x30
 8000384:	4b60      	ldr	r3, [pc, #384]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 8000386:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000388:	f003 0301 	and.w	r3, r3, #1
 800038c:	617b      	str	r3, [r7, #20]
 800038e:	697b      	ldr	r3, [r7, #20]
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE(); 
 8000390:	2300      	movs	r3, #0
 8000392:	613b      	str	r3, [r7, #16]
 8000394:	4b5c      	ldr	r3, [pc, #368]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 8000396:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000398:	4a5b      	ldr	r2, [pc, #364]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 800039a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800039e:	6413      	str	r3, [r2, #64]	; 0x40
 80003a0:	4b59      	ldr	r3, [pc, #356]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 80003a2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80003a4:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80003a8:	613b      	str	r3, [r7, #16]
 80003aa:	693b      	ldr	r3, [r7, #16]
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();   
 80003ac:	2300      	movs	r3, #0
 80003ae:	60fb      	str	r3, [r7, #12]
 80003b0:	4b55      	ldr	r3, [pc, #340]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 80003b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003b4:	4a54      	ldr	r2, [pc, #336]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 80003b6:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80003ba:	6313      	str	r3, [r2, #48]	; 0x30
 80003bc:	4b52      	ldr	r3, [pc, #328]	; (8000508 <HAL_UART_MspInit+0x1b8>)
 80003be:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003c0:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 80003c4:	60fb      	str	r3, [r7, #12]
 80003c6:	68fb      	ldr	r3, [r7, #12]
  
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = USARTx_TX_PIN;
 80003c8:	2304      	movs	r3, #4
 80003ca:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
 80003cc:	2302      	movs	r3, #2
 80003ce:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull      = GPIO_NOPULL;
 80003d0:	2300      	movs	r3, #0
 80003d2:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed     = GPIO_SPEED_FAST;
 80003d4:	2302      	movs	r3, #2
 80003d6:	62bb      	str	r3, [r7, #40]	; 0x28
  GPIO_InitStruct.Alternate = USARTx_TX_AF;
 80003d8:	2307      	movs	r3, #7
 80003da:	62fb      	str	r3, [r7, #44]	; 0x2c
  
  HAL_GPIO_Init(USARTx_TX_GPIO_PORT, &GPIO_InitStruct);
 80003dc:	f107 031c 	add.w	r3, r7, #28
 80003e0:	4619      	mov	r1, r3
 80003e2:	484a      	ldr	r0, [pc, #296]	; (800050c <HAL_UART_MspInit+0x1bc>)
 80003e4:	f001 f902 	bl	80015ec <HAL_GPIO_Init>
    
  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = USARTx_RX_PIN;
 80003e8:	2308      	movs	r3, #8
 80003ea:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Alternate = USARTx_RX_AF;
 80003ec:	2307      	movs	r3, #7
 80003ee:	62fb      	str	r3, [r7, #44]	; 0x2c
    
  HAL_GPIO_Init(USARTx_RX_GPIO_PORT, &GPIO_InitStruct);
 80003f0:	f107 031c 	add.w	r3, r7, #28
 80003f4:	4619      	mov	r1, r3
 80003f6:	4845      	ldr	r0, [pc, #276]	; (800050c <HAL_UART_MspInit+0x1bc>)
 80003f8:	f001 f8f8 	bl	80015ec <HAL_GPIO_Init>
    
  /*##-3- Configure the DMA streams ##########################################*/
  /* Configure the DMA handler for Transmission process */
  hdma_tx.Instance                 = USARTx_TX_DMA_STREAM;
 80003fc:	4b44      	ldr	r3, [pc, #272]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 80003fe:	4a45      	ldr	r2, [pc, #276]	; (8000514 <HAL_UART_MspInit+0x1c4>)
 8000400:	601a      	str	r2, [r3, #0]
  
  hdma_tx.Init.Channel             = USARTx_TX_DMA_CHANNEL;
 8000402:	4b43      	ldr	r3, [pc, #268]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000404:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000408:	605a      	str	r2, [r3, #4]
  hdma_tx.Init.Direction           = DMA_MEMORY_TO_PERIPH;
 800040a:	4b41      	ldr	r3, [pc, #260]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 800040c:	2240      	movs	r2, #64	; 0x40
 800040e:	609a      	str	r2, [r3, #8]
  hdma_tx.Init.PeriphInc           = DMA_PINC_DISABLE;
 8000410:	4b3f      	ldr	r3, [pc, #252]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000412:	2200      	movs	r2, #0
 8000414:	60da      	str	r2, [r3, #12]
  hdma_tx.Init.MemInc              = DMA_MINC_ENABLE;
 8000416:	4b3e      	ldr	r3, [pc, #248]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000418:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800041c:	611a      	str	r2, [r3, #16]
  hdma_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 800041e:	4b3c      	ldr	r3, [pc, #240]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000420:	2200      	movs	r2, #0
 8000422:	615a      	str	r2, [r3, #20]
  hdma_tx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 8000424:	4b3a      	ldr	r3, [pc, #232]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000426:	2200      	movs	r2, #0
 8000428:	619a      	str	r2, [r3, #24]
  hdma_tx.Init.Mode                = DMA_NORMAL;
 800042a:	4b39      	ldr	r3, [pc, #228]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 800042c:	2200      	movs	r2, #0
 800042e:	61da      	str	r2, [r3, #28]
  hdma_tx.Init.Priority            = DMA_PRIORITY_LOW;
 8000430:	4b37      	ldr	r3, [pc, #220]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000432:	2200      	movs	r2, #0
 8000434:	621a      	str	r2, [r3, #32]
  hdma_tx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;
 8000436:	4b36      	ldr	r3, [pc, #216]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000438:	2200      	movs	r2, #0
 800043a:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_tx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 800043c:	4b34      	ldr	r3, [pc, #208]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 800043e:	2203      	movs	r2, #3
 8000440:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_tx.Init.MemBurst            = DMA_MBURST_INC4;
 8000442:	4b33      	ldr	r3, [pc, #204]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000444:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8000448:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_tx.Init.PeriphBurst         = DMA_PBURST_INC4;
 800044a:	4b31      	ldr	r3, [pc, #196]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 800044c:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8000450:	631a      	str	r2, [r3, #48]	; 0x30
  
  HAL_DMA_Init(&hdma_tx);   
 8000452:	482f      	ldr	r0, [pc, #188]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000454:	f000 ff6c 	bl	8001330 <HAL_DMA_Init>
  
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmatx, hdma_tx);
 8000458:	687b      	ldr	r3, [r7, #4]
 800045a:	4a2d      	ldr	r2, [pc, #180]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 800045c:	635a      	str	r2, [r3, #52]	; 0x34
 800045e:	4a2c      	ldr	r2, [pc, #176]	; (8000510 <HAL_UART_MspInit+0x1c0>)
 8000460:	687b      	ldr	r3, [r7, #4]
 8000462:	6393      	str	r3, [r2, #56]	; 0x38
    
  /* Configure the DMA handler for Transmission process */
  hdma_rx.Instance                 = USARTx_RX_DMA_STREAM;
 8000464:	4b2c      	ldr	r3, [pc, #176]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 8000466:	4a2d      	ldr	r2, [pc, #180]	; (800051c <HAL_UART_MspInit+0x1cc>)
 8000468:	601a      	str	r2, [r3, #0]
  
  hdma_rx.Init.Channel             = USARTx_RX_DMA_CHANNEL;
 800046a:	4b2b      	ldr	r3, [pc, #172]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 800046c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000470:	605a      	str	r2, [r3, #4]
  hdma_rx.Init.Direction           = DMA_PERIPH_TO_MEMORY;
 8000472:	4b29      	ldr	r3, [pc, #164]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 8000474:	2200      	movs	r2, #0
 8000476:	609a      	str	r2, [r3, #8]
  hdma_rx.Init.PeriphInc           = DMA_PINC_DISABLE;
 8000478:	4b27      	ldr	r3, [pc, #156]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 800047a:	2200      	movs	r2, #0
 800047c:	60da      	str	r2, [r3, #12]
  hdma_rx.Init.MemInc              = DMA_MINC_ENABLE;
 800047e:	4b26      	ldr	r3, [pc, #152]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 8000480:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000484:	611a      	str	r2, [r3, #16]
  hdma_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 8000486:	4b24      	ldr	r3, [pc, #144]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 8000488:	2200      	movs	r2, #0
 800048a:	615a      	str	r2, [r3, #20]
  hdma_rx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 800048c:	4b22      	ldr	r3, [pc, #136]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 800048e:	2200      	movs	r2, #0
 8000490:	619a      	str	r2, [r3, #24]
  hdma_rx.Init.Mode                = DMA_NORMAL;
 8000492:	4b21      	ldr	r3, [pc, #132]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 8000494:	2200      	movs	r2, #0
 8000496:	61da      	str	r2, [r3, #28]
  hdma_rx.Init.Priority            = DMA_PRIORITY_HIGH;
 8000498:	4b1f      	ldr	r3, [pc, #124]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 800049a:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 800049e:	621a      	str	r2, [r3, #32]
  hdma_rx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;         
 80004a0:	4b1d      	ldr	r3, [pc, #116]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004a2:	2200      	movs	r2, #0
 80004a4:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_rx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 80004a6:	4b1c      	ldr	r3, [pc, #112]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004a8:	2203      	movs	r2, #3
 80004aa:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_rx.Init.MemBurst            = DMA_MBURST_INC4;
 80004ac:	4b1a      	ldr	r3, [pc, #104]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004ae:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 80004b2:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_rx.Init.PeriphBurst         = DMA_PBURST_INC4; 
 80004b4:	4b18      	ldr	r3, [pc, #96]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004b6:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 80004ba:	631a      	str	r2, [r3, #48]	; 0x30

  HAL_DMA_Init(&hdma_rx);
 80004bc:	4816      	ldr	r0, [pc, #88]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004be:	f000 ff37 	bl	8001330 <HAL_DMA_Init>
    
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmarx, hdma_rx);
 80004c2:	687b      	ldr	r3, [r7, #4]
 80004c4:	4a14      	ldr	r2, [pc, #80]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004c6:	639a      	str	r2, [r3, #56]	; 0x38
 80004c8:	4a13      	ldr	r2, [pc, #76]	; (8000518 <HAL_UART_MspInit+0x1c8>)
 80004ca:	687b      	ldr	r3, [r7, #4]
 80004cc:	6393      	str	r3, [r2, #56]	; 0x38
    
  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_TX) */
  HAL_NVIC_SetPriority(USARTx_DMA_TX_IRQn, 0, 1);
 80004ce:	2201      	movs	r2, #1
 80004d0:	2100      	movs	r1, #0
 80004d2:	2011      	movs	r0, #17
 80004d4:	f000 fa8b 	bl	80009ee <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_TX_IRQn);
 80004d8:	2011      	movs	r0, #17
 80004da:	f000 faa4 	bl	8000a26 <HAL_NVIC_EnableIRQ>
    
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_RX) */
  HAL_NVIC_SetPriority(USARTx_DMA_RX_IRQn, 0, 0);   
 80004de:	2200      	movs	r2, #0
 80004e0:	2100      	movs	r1, #0
 80004e2:	2010      	movs	r0, #16
 80004e4:	f000 fa83 	bl	80009ee <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_RX_IRQn);
 80004e8:	2010      	movs	r0, #16
 80004ea:	f000 fa9c 	bl	8000a26 <HAL_NVIC_EnableIRQ>
  
  /* NVIC configuration for USART TC interrupt */
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
 80004ee:	2200      	movs	r2, #0
 80004f0:	2100      	movs	r1, #0
 80004f2:	2026      	movs	r0, #38	; 0x26
 80004f4:	f000 fa7b 	bl	80009ee <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_IRQn);
 80004f8:	2026      	movs	r0, #38	; 0x26
 80004fa:	f000 fa94 	bl	8000a26 <HAL_NVIC_EnableIRQ>
}
 80004fe:	bf00      	nop
 8000500:	3730      	adds	r7, #48	; 0x30
 8000502:	46bd      	mov	sp, r7
 8000504:	bd80      	pop	{r7, pc}
 8000506:	bf00      	nop
 8000508:	40023800 	.word	0x40023800
 800050c:	40020000 	.word	0x40020000
 8000510:	20000a1c 	.word	0x20000a1c
 8000514:	400260a0 	.word	0x400260a0
 8000518:	20000a7c 	.word	0x20000a7c
 800051c:	40026088 	.word	0x40026088

08000520 <NMI_Handler>:
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
 8000520:	b480      	push	{r7}
 8000522:	af00      	add	r7, sp, #0
}
 8000524:	bf00      	nop
 8000526:	46bd      	mov	sp, r7
 8000528:	f85d 7b04 	ldr.w	r7, [sp], #4
 800052c:	4770      	bx	lr
	...

08000530 <HardFault_Handler>:
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
 8000530:	b598      	push	{r3, r4, r7, lr}
 8000532:	af00      	add	r7, sp, #0
  printf("[%s]\n", __func__);
 8000534:	490a      	ldr	r1, [pc, #40]	; (8000560 <HardFault_Handler+0x30>)
 8000536:	480b      	ldr	r0, [pc, #44]	; (8000564 <HardFault_Handler+0x34>)
 8000538:	f003 fa54 	bl	80039e4 <printf>
    #error "not supported compiler"
#endif
#endif
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_lr(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
 800053c:	4673      	mov	r3, lr
 800053e:	461c      	mov	r4, r3
    return(result);
 8000540:	4622      	mov	r2, r4
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8000542:	466b      	mov	r3, sp
 8000544:	461c      	mov	r4, r3
    return(result);
 8000546:	4623      	mov	r3, r4
  //   "MOV     r0, lr\n"                 /* get lr */
  //   "MOV     r1, sp\n"                  /* get stack pointer (current is MSP) */
  //   "BL      cm_backtrace_fault\n"
  // );
    //dump_stack()
  printf("[%s] lr = 0x%x, sp = 0x%x\r\n", __func__, cmb_get_lr(), cmb_get_sp());
 8000548:	4905      	ldr	r1, [pc, #20]	; (8000560 <HardFault_Handler+0x30>)
 800054a:	4807      	ldr	r0, [pc, #28]	; (8000568 <HardFault_Handler+0x38>)
 800054c:	f003 fa4a 	bl	80039e4 <printf>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8000550:	466b      	mov	r3, sp
 8000552:	461c      	mov	r4, r3
    return(result);
 8000554:	4623      	mov	r3, r4
  print_call_stack(cmb_get_sp());
 8000556:	4618      	mov	r0, r3
 8000558:	f002 fcf4 	bl	8002f44 <print_call_stack>
  #ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_fault(cmb_get_lr(), cmb_get_sp());
  #endif
  for(;;);
 800055c:	e7fe      	b.n	800055c <HardFault_Handler+0x2c>
 800055e:	bf00      	nop
 8000560:	08008ac0 	.word	0x08008ac0
 8000564:	08008a9c 	.word	0x08008a9c
 8000568:	08008aa4 	.word	0x08008aa4

0800056c <MemManage_Handler>:
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
 800056c:	b480      	push	{r7}
 800056e:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
 8000570:	e7fe      	b.n	8000570 <MemManage_Handler+0x4>

08000572 <BusFault_Handler>:
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
 8000572:	b480      	push	{r7}
 8000574:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
 8000576:	e7fe      	b.n	8000576 <BusFault_Handler+0x4>

08000578 <UsageFault_Handler>:
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
 8000578:	b480      	push	{r7}
 800057a:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
 800057c:	e7fe      	b.n	800057c <UsageFault_Handler+0x4>

0800057e <SVC_Handler>:
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
 800057e:	b480      	push	{r7}
 8000580:	af00      	add	r7, sp, #0
}
 8000582:	bf00      	nop
 8000584:	46bd      	mov	sp, r7
 8000586:	f85d 7b04 	ldr.w	r7, [sp], #4
 800058a:	4770      	bx	lr

0800058c <DebugMon_Handler>:
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
 800058c:	b480      	push	{r7}
 800058e:	af00      	add	r7, sp, #0
}
 8000590:	bf00      	nop
 8000592:	46bd      	mov	sp, r7
 8000594:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000598:	4770      	bx	lr

0800059a <SysTick_Handler>:
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
 800059a:	b580      	push	{r7, lr}
 800059c:	af00      	add	r7, sp, #0
  HAL_IncTick();
 800059e:	f000 f923 	bl	80007e8 <HAL_IncTick>
}
 80005a2:	bf00      	nop
 80005a4:	bd80      	pop	{r7, pc}

080005a6 <_read>:
	_kill(status, -1);
	while (1) {}		/* Make sure we hang here */
}

int _read (int file, char *ptr, int len)
{
 80005a6:	b580      	push	{r7, lr}
 80005a8:	b086      	sub	sp, #24
 80005aa:	af00      	add	r7, sp, #0
 80005ac:	60f8      	str	r0, [r7, #12]
 80005ae:	60b9      	str	r1, [r7, #8]
 80005b0:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 80005b2:	2300      	movs	r3, #0
 80005b4:	617b      	str	r3, [r7, #20]
 80005b6:	e00a      	b.n	80005ce <_read+0x28>
	{
		*ptr++ = __io_getchar();
 80005b8:	f7ff feb8 	bl	800032c <__io_getchar>
 80005bc:	4601      	mov	r1, r0
 80005be:	68bb      	ldr	r3, [r7, #8]
 80005c0:	1c5a      	adds	r2, r3, #1
 80005c2:	60ba      	str	r2, [r7, #8]
 80005c4:	b2ca      	uxtb	r2, r1
 80005c6:	701a      	strb	r2, [r3, #0]
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 80005c8:	697b      	ldr	r3, [r7, #20]
 80005ca:	3301      	adds	r3, #1
 80005cc:	617b      	str	r3, [r7, #20]
 80005ce:	697a      	ldr	r2, [r7, #20]
 80005d0:	687b      	ldr	r3, [r7, #4]
 80005d2:	429a      	cmp	r2, r3
 80005d4:	dbf0      	blt.n	80005b8 <_read+0x12>
	}

return len;
 80005d6:	687b      	ldr	r3, [r7, #4]
}
 80005d8:	4618      	mov	r0, r3
 80005da:	3718      	adds	r7, #24
 80005dc:	46bd      	mov	sp, r7
 80005de:	bd80      	pop	{r7, pc}

080005e0 <_write>:

int _write(int file, char *ptr, int len)
{
 80005e0:	b580      	push	{r7, lr}
 80005e2:	b086      	sub	sp, #24
 80005e4:	af00      	add	r7, sp, #0
 80005e6:	60f8      	str	r0, [r7, #12]
 80005e8:	60b9      	str	r1, [r7, #8]
 80005ea:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 80005ec:	2300      	movs	r3, #0
 80005ee:	617b      	str	r3, [r7, #20]
 80005f0:	e009      	b.n	8000606 <_write+0x26>
	{
		__io_putchar(*ptr++);
 80005f2:	68bb      	ldr	r3, [r7, #8]
 80005f4:	1c5a      	adds	r2, r3, #1
 80005f6:	60ba      	str	r2, [r7, #8]
 80005f8:	781b      	ldrb	r3, [r3, #0]
 80005fa:	4618      	mov	r0, r3
 80005fc:	f7ff fe84 	bl	8000308 <__io_putchar>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000600:	697b      	ldr	r3, [r7, #20]
 8000602:	3301      	adds	r3, #1
 8000604:	617b      	str	r3, [r7, #20]
 8000606:	697a      	ldr	r2, [r7, #20]
 8000608:	687b      	ldr	r3, [r7, #4]
 800060a:	429a      	cmp	r2, r3
 800060c:	dbf1      	blt.n	80005f2 <_write+0x12>
	}
	return len;
 800060e:	687b      	ldr	r3, [r7, #4]
}
 8000610:	4618      	mov	r0, r3
 8000612:	3718      	adds	r7, #24
 8000614:	46bd      	mov	sp, r7
 8000616:	bd80      	pop	{r7, pc}

08000618 <_sbrk>:

caddr_t _sbrk(int incr)
{
 8000618:	b580      	push	{r7, lr}
 800061a:	b084      	sub	sp, #16
 800061c:	af00      	add	r7, sp, #0
 800061e:	6078      	str	r0, [r7, #4]
	extern char end asm("end");
	static char *heap_end;
	char *prev_heap_end;

	if (heap_end == 0)
 8000620:	4b11      	ldr	r3, [pc, #68]	; (8000668 <_sbrk+0x50>)
 8000622:	681b      	ldr	r3, [r3, #0]
 8000624:	2b00      	cmp	r3, #0
 8000626:	d102      	bne.n	800062e <_sbrk+0x16>
		heap_end = &end;
 8000628:	4b0f      	ldr	r3, [pc, #60]	; (8000668 <_sbrk+0x50>)
 800062a:	4a10      	ldr	r2, [pc, #64]	; (800066c <_sbrk+0x54>)
 800062c:	601a      	str	r2, [r3, #0]

	prev_heap_end = heap_end;
 800062e:	4b0e      	ldr	r3, [pc, #56]	; (8000668 <_sbrk+0x50>)
 8000630:	681b      	ldr	r3, [r3, #0]
 8000632:	60fb      	str	r3, [r7, #12]
	if (heap_end + incr > stack_ptr)
 8000634:	4b0c      	ldr	r3, [pc, #48]	; (8000668 <_sbrk+0x50>)
 8000636:	681a      	ldr	r2, [r3, #0]
 8000638:	687b      	ldr	r3, [r7, #4]
 800063a:	4413      	add	r3, r2
 800063c:	466a      	mov	r2, sp
 800063e:	4293      	cmp	r3, r2
 8000640:	d907      	bls.n	8000652 <_sbrk+0x3a>
	{
//		write(1, "Heap and stack collision\n", 25);
//		abort();
		errno = ENOMEM;
 8000642:	f003 f8c1 	bl	80037c8 <__errno>
 8000646:	4602      	mov	r2, r0
 8000648:	230c      	movs	r3, #12
 800064a:	6013      	str	r3, [r2, #0]
		return (caddr_t) -1;
 800064c:	f04f 33ff 	mov.w	r3, #4294967295
 8000650:	e006      	b.n	8000660 <_sbrk+0x48>
	}

	heap_end += incr;
 8000652:	4b05      	ldr	r3, [pc, #20]	; (8000668 <_sbrk+0x50>)
 8000654:	681a      	ldr	r2, [r3, #0]
 8000656:	687b      	ldr	r3, [r7, #4]
 8000658:	4413      	add	r3, r2
 800065a:	4a03      	ldr	r2, [pc, #12]	; (8000668 <_sbrk+0x50>)
 800065c:	6013      	str	r3, [r2, #0]

	return (caddr_t) prev_heap_end;
 800065e:	68fb      	ldr	r3, [r7, #12]
}
 8000660:	4618      	mov	r0, r3
 8000662:	3710      	adds	r7, #16
 8000664:	46bd      	mov	sp, r7
 8000666:	bd80      	pop	{r7, pc}
 8000668:	20000adc 	.word	0x20000adc
 800066c:	20000c50 	.word	0x20000c50

08000670 <_close>:

int _close(int file)
{
 8000670:	b480      	push	{r7}
 8000672:	b083      	sub	sp, #12
 8000674:	af00      	add	r7, sp, #0
 8000676:	6078      	str	r0, [r7, #4]
	return -1;
 8000678:	f04f 33ff 	mov.w	r3, #4294967295
}
 800067c:	4618      	mov	r0, r3
 800067e:	370c      	adds	r7, #12
 8000680:	46bd      	mov	sp, r7
 8000682:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000686:	4770      	bx	lr

08000688 <_fstat>:


int _fstat(int file, struct stat *st)
{
 8000688:	b480      	push	{r7}
 800068a:	b083      	sub	sp, #12
 800068c:	af00      	add	r7, sp, #0
 800068e:	6078      	str	r0, [r7, #4]
 8000690:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
 8000692:	683b      	ldr	r3, [r7, #0]
 8000694:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000698:	605a      	str	r2, [r3, #4]
	return 0;
 800069a:	2300      	movs	r3, #0
}
 800069c:	4618      	mov	r0, r3
 800069e:	370c      	adds	r7, #12
 80006a0:	46bd      	mov	sp, r7
 80006a2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006a6:	4770      	bx	lr

080006a8 <_isatty>:

int _isatty(int file)
{
 80006a8:	b480      	push	{r7}
 80006aa:	b083      	sub	sp, #12
 80006ac:	af00      	add	r7, sp, #0
 80006ae:	6078      	str	r0, [r7, #4]
	return 1;
 80006b0:	2301      	movs	r3, #1
}
 80006b2:	4618      	mov	r0, r3
 80006b4:	370c      	adds	r7, #12
 80006b6:	46bd      	mov	sp, r7
 80006b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006bc:	4770      	bx	lr

080006be <_lseek>:

int _lseek(int file, int ptr, int dir)
{
 80006be:	b480      	push	{r7}
 80006c0:	b085      	sub	sp, #20
 80006c2:	af00      	add	r7, sp, #0
 80006c4:	60f8      	str	r0, [r7, #12]
 80006c6:	60b9      	str	r1, [r7, #8]
 80006c8:	607a      	str	r2, [r7, #4]
	return 0;
 80006ca:	2300      	movs	r3, #0
}
 80006cc:	4618      	mov	r0, r3
 80006ce:	3714      	adds	r7, #20
 80006d0:	46bd      	mov	sp, r7
 80006d2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006d6:	4770      	bx	lr

080006d8 <SystemInit>:
  *         configuration.
  * @param  None
  * @retval None
  */
void SystemInit(void)
{
 80006d8:	b480      	push	{r7}
 80006da:	af00      	add	r7, sp, #0
  /* FPU settings ------------------------------------------------------------*/
  #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
    SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
 80006dc:	4b16      	ldr	r3, [pc, #88]	; (8000738 <SystemInit+0x60>)
 80006de:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80006e2:	4a15      	ldr	r2, [pc, #84]	; (8000738 <SystemInit+0x60>)
 80006e4:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80006e8:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
  #endif
  /* Reset the RCC clock configuration to the default reset state ------------*/
  /* Set HSION bit */
  RCC->CR |= (uint32_t)0x00000001;
 80006ec:	4b13      	ldr	r3, [pc, #76]	; (800073c <SystemInit+0x64>)
 80006ee:	681b      	ldr	r3, [r3, #0]
 80006f0:	4a12      	ldr	r2, [pc, #72]	; (800073c <SystemInit+0x64>)
 80006f2:	f043 0301 	orr.w	r3, r3, #1
 80006f6:	6013      	str	r3, [r2, #0]

  /* Reset CFGR register */
  RCC->CFGR = 0x00000000;
 80006f8:	4b10      	ldr	r3, [pc, #64]	; (800073c <SystemInit+0x64>)
 80006fa:	2200      	movs	r2, #0
 80006fc:	609a      	str	r2, [r3, #8]

  /* Reset HSEON, CSSON and PLLON bits */
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 80006fe:	4b0f      	ldr	r3, [pc, #60]	; (800073c <SystemInit+0x64>)
 8000700:	681b      	ldr	r3, [r3, #0]
 8000702:	4a0e      	ldr	r2, [pc, #56]	; (800073c <SystemInit+0x64>)
 8000704:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000708:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800070c:	6013      	str	r3, [r2, #0]

  /* Reset PLLCFGR register */
  RCC->PLLCFGR = 0x24003010;
 800070e:	4b0b      	ldr	r3, [pc, #44]	; (800073c <SystemInit+0x64>)
 8000710:	4a0b      	ldr	r2, [pc, #44]	; (8000740 <SystemInit+0x68>)
 8000712:	605a      	str	r2, [r3, #4]

  /* Reset HSEBYP bit */
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 8000714:	4b09      	ldr	r3, [pc, #36]	; (800073c <SystemInit+0x64>)
 8000716:	681b      	ldr	r3, [r3, #0]
 8000718:	4a08      	ldr	r2, [pc, #32]	; (800073c <SystemInit+0x64>)
 800071a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800071e:	6013      	str	r3, [r2, #0]

  /* Disable all interrupts */
  RCC->CIR = 0x00000000;
 8000720:	4b06      	ldr	r3, [pc, #24]	; (800073c <SystemInit+0x64>)
 8000722:	2200      	movs	r2, #0
 8000724:	60da      	str	r2, [r3, #12]

  /* Configure the Vector Table location add offset address ------------------*/
#ifdef VECT_TAB_SRAM
  SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
#else
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
 8000726:	4b04      	ldr	r3, [pc, #16]	; (8000738 <SystemInit+0x60>)
 8000728:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800072c:	609a      	str	r2, [r3, #8]
#endif
}
 800072e:	bf00      	nop
 8000730:	46bd      	mov	sp, r7
 8000732:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000736:	4770      	bx	lr
 8000738:	e000ed00 	.word	0xe000ed00
 800073c:	40023800 	.word	0x40023800
 8000740:	24003010 	.word	0x24003010

08000744 <HAL_Init>:
  *         need to ensure that the SysTick time base is always set to 1 millisecond
  *         to have correct HAL operation.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_Init(void)
{
 8000744:	b580      	push	{r7, lr}
 8000746:	af00      	add	r7, sp, #0
  /* Configure Flash prefetch, Instruction cache, Data cache */ 
#if (INSTRUCTION_CACHE_ENABLE != 0U)
  __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
 8000748:	4b0e      	ldr	r3, [pc, #56]	; (8000784 <HAL_Init+0x40>)
 800074a:	681b      	ldr	r3, [r3, #0]
 800074c:	4a0d      	ldr	r2, [pc, #52]	; (8000784 <HAL_Init+0x40>)
 800074e:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000752:	6013      	str	r3, [r2, #0]
#endif /* INSTRUCTION_CACHE_ENABLE */

#if (DATA_CACHE_ENABLE != 0U)
  __HAL_FLASH_DATA_CACHE_ENABLE();
 8000754:	4b0b      	ldr	r3, [pc, #44]	; (8000784 <HAL_Init+0x40>)
 8000756:	681b      	ldr	r3, [r3, #0]
 8000758:	4a0a      	ldr	r2, [pc, #40]	; (8000784 <HAL_Init+0x40>)
 800075a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800075e:	6013      	str	r3, [r2, #0]
#endif /* DATA_CACHE_ENABLE */

#if (PREFETCH_ENABLE != 0U)
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 8000760:	4b08      	ldr	r3, [pc, #32]	; (8000784 <HAL_Init+0x40>)
 8000762:	681b      	ldr	r3, [r3, #0]
 8000764:	4a07      	ldr	r2, [pc, #28]	; (8000784 <HAL_Init+0x40>)
 8000766:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800076a:	6013      	str	r3, [r2, #0]
#endif /* PREFETCH_ENABLE */

  /* Set Interrupt Group Priority */
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 800076c:	2003      	movs	r0, #3
 800076e:	f000 f933 	bl	80009d8 <HAL_NVIC_SetPriorityGrouping>

  /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
  HAL_InitTick(TICK_INT_PRIORITY);
 8000772:	200f      	movs	r0, #15
 8000774:	f000 f808 	bl	8000788 <HAL_InitTick>

  /* Init the low level hardware */
  HAL_MspInit();
 8000778:	f000 f856 	bl	8000828 <HAL_MspInit>

  /* Return function status */
  return HAL_OK;
 800077c:	2300      	movs	r3, #0
}
 800077e:	4618      	mov	r0, r3
 8000780:	bd80      	pop	{r7, pc}
 8000782:	bf00      	nop
 8000784:	40023c00 	.word	0x40023c00

08000788 <HAL_InitTick>:
  *       implementation  in user file.
  * @param TickPriority Tick interrupt priority.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
 8000788:	b580      	push	{r7, lr}
 800078a:	b082      	sub	sp, #8
 800078c:	af00      	add	r7, sp, #0
 800078e:	6078      	str	r0, [r7, #4]
  /* Configure the SysTick to have interrupt in 1ms time basis*/
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000790:	4b12      	ldr	r3, [pc, #72]	; (80007dc <HAL_InitTick+0x54>)
 8000792:	681a      	ldr	r2, [r3, #0]
 8000794:	4b12      	ldr	r3, [pc, #72]	; (80007e0 <HAL_InitTick+0x58>)
 8000796:	781b      	ldrb	r3, [r3, #0]
 8000798:	4619      	mov	r1, r3
 800079a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800079e:	fbb3 f3f1 	udiv	r3, r3, r1
 80007a2:	fbb2 f3f3 	udiv	r3, r2, r3
 80007a6:	4618      	mov	r0, r3
 80007a8:	f000 f94b 	bl	8000a42 <HAL_SYSTICK_Config>
 80007ac:	4603      	mov	r3, r0
 80007ae:	2b00      	cmp	r3, #0
 80007b0:	d001      	beq.n	80007b6 <HAL_InitTick+0x2e>
  {
    return HAL_ERROR;
 80007b2:	2301      	movs	r3, #1
 80007b4:	e00e      	b.n	80007d4 <HAL_InitTick+0x4c>
  }

  /* Configure the SysTick IRQ priority */
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 80007b6:	687b      	ldr	r3, [r7, #4]
 80007b8:	2b0f      	cmp	r3, #15
 80007ba:	d80a      	bhi.n	80007d2 <HAL_InitTick+0x4a>
  {
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 80007bc:	2200      	movs	r2, #0
 80007be:	6879      	ldr	r1, [r7, #4]
 80007c0:	f04f 30ff 	mov.w	r0, #4294967295
 80007c4:	f000 f913 	bl	80009ee <HAL_NVIC_SetPriority>
    uwTickPrio = TickPriority;
 80007c8:	4a06      	ldr	r2, [pc, #24]	; (80007e4 <HAL_InitTick+0x5c>)
 80007ca:	687b      	ldr	r3, [r7, #4]
 80007cc:	6013      	str	r3, [r2, #0]
  {
    return HAL_ERROR;
  }

  /* Return function status */
  return HAL_OK;
 80007ce:	2300      	movs	r3, #0
 80007d0:	e000      	b.n	80007d4 <HAL_InitTick+0x4c>
    return HAL_ERROR;
 80007d2:	2301      	movs	r3, #1
}
 80007d4:	4618      	mov	r0, r3
 80007d6:	3708      	adds	r7, #8
 80007d8:	46bd      	mov	sp, r7
 80007da:	bd80      	pop	{r7, pc}
 80007dc:	20000000 	.word	0x20000000
 80007e0:	20000008 	.word	0x20000008
 80007e4:	20000004 	.word	0x20000004

080007e8 <HAL_IncTick>:
 * @note This function is declared as __weak to be overwritten in case of other 
  *      implementations in user file.
  * @retval None
  */
__weak void HAL_IncTick(void)
{
 80007e8:	b480      	push	{r7}
 80007ea:	af00      	add	r7, sp, #0
  uwTick += uwTickFreq;
 80007ec:	4b06      	ldr	r3, [pc, #24]	; (8000808 <HAL_IncTick+0x20>)
 80007ee:	781b      	ldrb	r3, [r3, #0]
 80007f0:	461a      	mov	r2, r3
 80007f2:	4b06      	ldr	r3, [pc, #24]	; (800080c <HAL_IncTick+0x24>)
 80007f4:	681b      	ldr	r3, [r3, #0]
 80007f6:	4413      	add	r3, r2
 80007f8:	4a04      	ldr	r2, [pc, #16]	; (800080c <HAL_IncTick+0x24>)
 80007fa:	6013      	str	r3, [r2, #0]
}
 80007fc:	bf00      	nop
 80007fe:	46bd      	mov	sp, r7
 8000800:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000804:	4770      	bx	lr
 8000806:	bf00      	nop
 8000808:	20000008 	.word	0x20000008
 800080c:	20000c20 	.word	0x20000c20

08000810 <HAL_GetTick>:
  * @note This function is declared as __weak to be overwritten in case of other 
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
 8000810:	b480      	push	{r7}
 8000812:	af00      	add	r7, sp, #0
  return uwTick;
 8000814:	4b03      	ldr	r3, [pc, #12]	; (8000824 <HAL_GetTick+0x14>)
 8000816:	681b      	ldr	r3, [r3, #0]
}
 8000818:	4618      	mov	r0, r3
 800081a:	46bd      	mov	sp, r7
 800081c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000820:	4770      	bx	lr
 8000822:	bf00      	nop
 8000824:	20000c20 	.word	0x20000c20

08000828 <HAL_MspInit>:
  * @note   This function is called from HAL_Init() function to perform system
  *         level initialization (GPIOs, clock, DMA, interrupt).
  * @retval None
  */
void HAL_MspInit(void)
{
 8000828:	b480      	push	{r7}
 800082a:	af00      	add	r7, sp, #0

}
 800082c:	bf00      	nop
 800082e:	46bd      	mov	sp, r7
 8000830:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000834:	4770      	bx	lr
	...

08000838 <__NVIC_SetPriorityGrouping>:
           In case of a conflict between priority grouping and available
           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  \param [in]      PriorityGroup  Priority grouping field.
 */
__STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000838:	b480      	push	{r7}
 800083a:	b085      	sub	sp, #20
 800083c:	af00      	add	r7, sp, #0
 800083e:	6078      	str	r0, [r7, #4]
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8000840:	687b      	ldr	r3, [r7, #4]
 8000842:	f003 0307 	and.w	r3, r3, #7
 8000846:	60fb      	str	r3, [r7, #12]

  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000848:	4b0c      	ldr	r3, [pc, #48]	; (800087c <__NVIC_SetPriorityGrouping+0x44>)
 800084a:	68db      	ldr	r3, [r3, #12]
 800084c:	60bb      	str	r3, [r7, #8]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 800084e:	68ba      	ldr	r2, [r7, #8]
 8000850:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000854:	4013      	ands	r3, r2
 8000856:	60bb      	str	r3, [r7, #8]
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
                (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 8000858:	68fb      	ldr	r3, [r7, #12]
 800085a:	021a      	lsls	r2, r3, #8
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 800085c:	68bb      	ldr	r3, [r7, #8]
 800085e:	4313      	orrs	r3, r2
  reg_value  =  (reg_value                                   |
 8000860:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000864:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000868:	60bb      	str	r3, [r7, #8]
  SCB->AIRCR =  reg_value;
 800086a:	4a04      	ldr	r2, [pc, #16]	; (800087c <__NVIC_SetPriorityGrouping+0x44>)
 800086c:	68bb      	ldr	r3, [r7, #8]
 800086e:	60d3      	str	r3, [r2, #12]
}
 8000870:	bf00      	nop
 8000872:	3714      	adds	r7, #20
 8000874:	46bd      	mov	sp, r7
 8000876:	f85d 7b04 	ldr.w	r7, [sp], #4
 800087a:	4770      	bx	lr
 800087c:	e000ed00 	.word	0xe000ed00

08000880 <__NVIC_GetPriorityGrouping>:
  \brief   Get Priority Grouping
  \details Reads the priority grouping field from the NVIC Interrupt Controller.
  \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
__STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
{
 8000880:	b480      	push	{r7}
 8000882:	af00      	add	r7, sp, #0
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8000884:	4b04      	ldr	r3, [pc, #16]	; (8000898 <__NVIC_GetPriorityGrouping+0x18>)
 8000886:	68db      	ldr	r3, [r3, #12]
 8000888:	0a1b      	lsrs	r3, r3, #8
 800088a:	f003 0307 	and.w	r3, r3, #7
}
 800088e:	4618      	mov	r0, r3
 8000890:	46bd      	mov	sp, r7
 8000892:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000896:	4770      	bx	lr
 8000898:	e000ed00 	.word	0xe000ed00

0800089c <__NVIC_EnableIRQ>:
  \details Enables a device specific interrupt in the NVIC interrupt controller.
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
 800089c:	b480      	push	{r7}
 800089e:	b083      	sub	sp, #12
 80008a0:	af00      	add	r7, sp, #0
 80008a2:	4603      	mov	r3, r0
 80008a4:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 80008a6:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80008aa:	2b00      	cmp	r3, #0
 80008ac:	db0b      	blt.n	80008c6 <__NVIC_EnableIRQ+0x2a>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 80008ae:	79fb      	ldrb	r3, [r7, #7]
 80008b0:	f003 021f 	and.w	r2, r3, #31
 80008b4:	4907      	ldr	r1, [pc, #28]	; (80008d4 <__NVIC_EnableIRQ+0x38>)
 80008b6:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80008ba:	095b      	lsrs	r3, r3, #5
 80008bc:	2001      	movs	r0, #1
 80008be:	fa00 f202 	lsl.w	r2, r0, r2
 80008c2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
  }
}
 80008c6:	bf00      	nop
 80008c8:	370c      	adds	r7, #12
 80008ca:	46bd      	mov	sp, r7
 80008cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008d0:	4770      	bx	lr
 80008d2:	bf00      	nop
 80008d4:	e000e100 	.word	0xe000e100

080008d8 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
 80008d8:	b480      	push	{r7}
 80008da:	b083      	sub	sp, #12
 80008dc:	af00      	add	r7, sp, #0
 80008de:	4603      	mov	r3, r0
 80008e0:	6039      	str	r1, [r7, #0]
 80008e2:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 80008e4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80008e8:	2b00      	cmp	r3, #0
 80008ea:	db0a      	blt.n	8000902 <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 80008ec:	683b      	ldr	r3, [r7, #0]
 80008ee:	b2da      	uxtb	r2, r3
 80008f0:	490c      	ldr	r1, [pc, #48]	; (8000924 <__NVIC_SetPriority+0x4c>)
 80008f2:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80008f6:	0112      	lsls	r2, r2, #4
 80008f8:	b2d2      	uxtb	r2, r2
 80008fa:	440b      	add	r3, r1
 80008fc:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
 8000900:	e00a      	b.n	8000918 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000902:	683b      	ldr	r3, [r7, #0]
 8000904:	b2da      	uxtb	r2, r3
 8000906:	4908      	ldr	r1, [pc, #32]	; (8000928 <__NVIC_SetPriority+0x50>)
 8000908:	79fb      	ldrb	r3, [r7, #7]
 800090a:	f003 030f 	and.w	r3, r3, #15
 800090e:	3b04      	subs	r3, #4
 8000910:	0112      	lsls	r2, r2, #4
 8000912:	b2d2      	uxtb	r2, r2
 8000914:	440b      	add	r3, r1
 8000916:	761a      	strb	r2, [r3, #24]
}
 8000918:	bf00      	nop
 800091a:	370c      	adds	r7, #12
 800091c:	46bd      	mov	sp, r7
 800091e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000922:	4770      	bx	lr
 8000924:	e000e100 	.word	0xe000e100
 8000928:	e000ed00 	.word	0xe000ed00

0800092c <NVIC_EncodePriority>:
  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  \param [in]       SubPriority  Subpriority value (starting from 0).
  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
__STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
 800092c:	b480      	push	{r7}
 800092e:	b089      	sub	sp, #36	; 0x24
 8000930:	af00      	add	r7, sp, #0
 8000932:	60f8      	str	r0, [r7, #12]
 8000934:	60b9      	str	r1, [r7, #8]
 8000936:	607a      	str	r2, [r7, #4]
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 8000938:	68fb      	ldr	r3, [r7, #12]
 800093a:	f003 0307 	and.w	r3, r3, #7
 800093e:	61fb      	str	r3, [r7, #28]
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 8000940:	69fb      	ldr	r3, [r7, #28]
 8000942:	f1c3 0307 	rsb	r3, r3, #7
 8000946:	2b04      	cmp	r3, #4
 8000948:	bf28      	it	cs
 800094a:	2304      	movcs	r3, #4
 800094c:	61bb      	str	r3, [r7, #24]
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 800094e:	69fb      	ldr	r3, [r7, #28]
 8000950:	3304      	adds	r3, #4
 8000952:	2b06      	cmp	r3, #6
 8000954:	d902      	bls.n	800095c <NVIC_EncodePriority+0x30>
 8000956:	69fb      	ldr	r3, [r7, #28]
 8000958:	3b03      	subs	r3, #3
 800095a:	e000      	b.n	800095e <NVIC_EncodePriority+0x32>
 800095c:	2300      	movs	r3, #0
 800095e:	617b      	str	r3, [r7, #20]

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000960:	f04f 32ff 	mov.w	r2, #4294967295
 8000964:	69bb      	ldr	r3, [r7, #24]
 8000966:	fa02 f303 	lsl.w	r3, r2, r3
 800096a:	43da      	mvns	r2, r3
 800096c:	68bb      	ldr	r3, [r7, #8]
 800096e:	401a      	ands	r2, r3
 8000970:	697b      	ldr	r3, [r7, #20]
 8000972:	409a      	lsls	r2, r3
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8000974:	f04f 31ff 	mov.w	r1, #4294967295
 8000978:	697b      	ldr	r3, [r7, #20]
 800097a:	fa01 f303 	lsl.w	r3, r1, r3
 800097e:	43d9      	mvns	r1, r3
 8000980:	687b      	ldr	r3, [r7, #4]
 8000982:	400b      	ands	r3, r1
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000984:	4313      	orrs	r3, r2
         );
}
 8000986:	4618      	mov	r0, r3
 8000988:	3724      	adds	r7, #36	; 0x24
 800098a:	46bd      	mov	sp, r7
 800098c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000990:	4770      	bx	lr
	...

08000994 <SysTick_Config>:
  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
 8000994:	b580      	push	{r7, lr}
 8000996:	b082      	sub	sp, #8
 8000998:	af00      	add	r7, sp, #0
 800099a:	6078      	str	r0, [r7, #4]
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 800099c:	687b      	ldr	r3, [r7, #4]
 800099e:	3b01      	subs	r3, #1
 80009a0:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 80009a4:	d301      	bcc.n	80009aa <SysTick_Config+0x16>
  {
    return (1UL);                                                   /* Reload value impossible */
 80009a6:	2301      	movs	r3, #1
 80009a8:	e00f      	b.n	80009ca <SysTick_Config+0x36>
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 80009aa:	4a0a      	ldr	r2, [pc, #40]	; (80009d4 <SysTick_Config+0x40>)
 80009ac:	687b      	ldr	r3, [r7, #4]
 80009ae:	3b01      	subs	r3, #1
 80009b0:	6053      	str	r3, [r2, #4]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 80009b2:	210f      	movs	r1, #15
 80009b4:	f04f 30ff 	mov.w	r0, #4294967295
 80009b8:	f7ff ff8e 	bl	80008d8 <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 80009bc:	4b05      	ldr	r3, [pc, #20]	; (80009d4 <SysTick_Config+0x40>)
 80009be:	2200      	movs	r2, #0
 80009c0:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 80009c2:	4b04      	ldr	r3, [pc, #16]	; (80009d4 <SysTick_Config+0x40>)
 80009c4:	2207      	movs	r2, #7
 80009c6:	601a      	str	r2, [r3, #0]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 80009c8:	2300      	movs	r3, #0
}
 80009ca:	4618      	mov	r0, r3
 80009cc:	3708      	adds	r7, #8
 80009ce:	46bd      	mov	sp, r7
 80009d0:	bd80      	pop	{r7, pc}
 80009d2:	bf00      	nop
 80009d4:	e000e010 	.word	0xe000e010

080009d8 <HAL_NVIC_SetPriorityGrouping>:
  * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
  *         The pending IRQ priority will be managed only by the subpriority. 
  * @retval None
  */
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 80009d8:	b580      	push	{r7, lr}
 80009da:	b082      	sub	sp, #8
 80009dc:	af00      	add	r7, sp, #0
 80009de:	6078      	str	r0, [r7, #4]
  /* Check the parameters */
  assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
  
  /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
  NVIC_SetPriorityGrouping(PriorityGroup);
 80009e0:	6878      	ldr	r0, [r7, #4]
 80009e2:	f7ff ff29 	bl	8000838 <__NVIC_SetPriorityGrouping>
}
 80009e6:	bf00      	nop
 80009e8:	3708      	adds	r7, #8
 80009ea:	46bd      	mov	sp, r7
 80009ec:	bd80      	pop	{r7, pc}

080009ee <HAL_NVIC_SetPriority>:
  *         This parameter can be a value between 0 and 15
  *         A lower priority value indicates a higher priority.          
  * @retval None
  */
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
{ 
 80009ee:	b580      	push	{r7, lr}
 80009f0:	b086      	sub	sp, #24
 80009f2:	af00      	add	r7, sp, #0
 80009f4:	4603      	mov	r3, r0
 80009f6:	60b9      	str	r1, [r7, #8]
 80009f8:	607a      	str	r2, [r7, #4]
 80009fa:	73fb      	strb	r3, [r7, #15]
  uint32_t prioritygroup = 0x00U;
 80009fc:	2300      	movs	r3, #0
 80009fe:	617b      	str	r3, [r7, #20]
  
  /* Check the parameters */
  assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
  
  prioritygroup = NVIC_GetPriorityGrouping();
 8000a00:	f7ff ff3e 	bl	8000880 <__NVIC_GetPriorityGrouping>
 8000a04:	6178      	str	r0, [r7, #20]
  
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8000a06:	687a      	ldr	r2, [r7, #4]
 8000a08:	68b9      	ldr	r1, [r7, #8]
 8000a0a:	6978      	ldr	r0, [r7, #20]
 8000a0c:	f7ff ff8e 	bl	800092c <NVIC_EncodePriority>
 8000a10:	4602      	mov	r2, r0
 8000a12:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8000a16:	4611      	mov	r1, r2
 8000a18:	4618      	mov	r0, r3
 8000a1a:	f7ff ff5d 	bl	80008d8 <__NVIC_SetPriority>
}
 8000a1e:	bf00      	nop
 8000a20:	3718      	adds	r7, #24
 8000a22:	46bd      	mov	sp, r7
 8000a24:	bd80      	pop	{r7, pc}

08000a26 <HAL_NVIC_EnableIRQ>:
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000a26:	b580      	push	{r7, lr}
 8000a28:	b082      	sub	sp, #8
 8000a2a:	af00      	add	r7, sp, #0
 8000a2c:	4603      	mov	r3, r0
 8000a2e:	71fb      	strb	r3, [r7, #7]
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
  
  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
 8000a30:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000a34:	4618      	mov	r0, r3
 8000a36:	f7ff ff31 	bl	800089c <__NVIC_EnableIRQ>
}
 8000a3a:	bf00      	nop
 8000a3c:	3708      	adds	r7, #8
 8000a3e:	46bd      	mov	sp, r7
 8000a40:	bd80      	pop	{r7, pc}

08000a42 <HAL_SYSTICK_Config>:
  * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 8000a42:	b580      	push	{r7, lr}
 8000a44:	b082      	sub	sp, #8
 8000a46:	af00      	add	r7, sp, #0
 8000a48:	6078      	str	r0, [r7, #4]
   return SysTick_Config(TicksNumb);
 8000a4a:	6878      	ldr	r0, [r7, #4]
 8000a4c:	f7ff ffa2 	bl	8000994 <SysTick_Config>
 8000a50:	4603      	mov	r3, r0
}
 8000a52:	4618      	mov	r0, r3
 8000a54:	3708      	adds	r7, #8
 8000a56:	46bd      	mov	sp, r7
 8000a58:	bd80      	pop	{r7, pc}
	...

08000a5c <HAL_RCC_OscConfig>:
  *         supported by this API. User should request a transition to HSE Off
  *         first and then HSE On or HSE Bypass.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
{
 8000a5c:	b580      	push	{r7, lr}
 8000a5e:	b086      	sub	sp, #24
 8000a60:	af00      	add	r7, sp, #0
 8000a62:	6078      	str	r0, [r7, #4]
  uint32_t tickstart, pll_config;

  /* Check Null pointer */
  if(RCC_OscInitStruct == NULL)
 8000a64:	687b      	ldr	r3, [r7, #4]
 8000a66:	2b00      	cmp	r3, #0
 8000a68:	d101      	bne.n	8000a6e <HAL_RCC_OscConfig+0x12>
  {
    return HAL_ERROR;
 8000a6a:	2301      	movs	r3, #1
 8000a6c:	e264      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
  }

  /* Check the parameters */
  assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
  /*------------------------------- HSE Configuration ------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000a6e:	687b      	ldr	r3, [r7, #4]
 8000a70:	681b      	ldr	r3, [r3, #0]
 8000a72:	f003 0301 	and.w	r3, r3, #1
 8000a76:	2b00      	cmp	r3, #0
 8000a78:	d075      	beq.n	8000b66 <HAL_RCC_OscConfig+0x10a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
    /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8000a7a:	4ba3      	ldr	r3, [pc, #652]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000a7c:	689b      	ldr	r3, [r3, #8]
 8000a7e:	f003 030c 	and.w	r3, r3, #12
 8000a82:	2b04      	cmp	r3, #4
 8000a84:	d00c      	beq.n	8000aa0 <HAL_RCC_OscConfig+0x44>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000a86:	4ba0      	ldr	r3, [pc, #640]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000a88:	689b      	ldr	r3, [r3, #8]
 8000a8a:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8000a8e:	2b08      	cmp	r3, #8
 8000a90:	d112      	bne.n	8000ab8 <HAL_RCC_OscConfig+0x5c>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000a92:	4b9d      	ldr	r3, [pc, #628]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000a94:	685b      	ldr	r3, [r3, #4]
 8000a96:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000a9a:	f5b3 0f80 	cmp.w	r3, #4194304	; 0x400000
 8000a9e:	d10b      	bne.n	8000ab8 <HAL_RCC_OscConfig+0x5c>
    {
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000aa0:	4b99      	ldr	r3, [pc, #612]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000aa2:	681b      	ldr	r3, [r3, #0]
 8000aa4:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000aa8:	2b00      	cmp	r3, #0
 8000aaa:	d05b      	beq.n	8000b64 <HAL_RCC_OscConfig+0x108>
 8000aac:	687b      	ldr	r3, [r7, #4]
 8000aae:	685b      	ldr	r3, [r3, #4]
 8000ab0:	2b00      	cmp	r3, #0
 8000ab2:	d157      	bne.n	8000b64 <HAL_RCC_OscConfig+0x108>
      {
        return HAL_ERROR;
 8000ab4:	2301      	movs	r3, #1
 8000ab6:	e23f      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      }
    }
    else
    {
      /* Set the new HSE configuration ---------------------------------------*/
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000ab8:	687b      	ldr	r3, [r7, #4]
 8000aba:	685b      	ldr	r3, [r3, #4]
 8000abc:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000ac0:	d106      	bne.n	8000ad0 <HAL_RCC_OscConfig+0x74>
 8000ac2:	4b91      	ldr	r3, [pc, #580]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000ac4:	681b      	ldr	r3, [r3, #0]
 8000ac6:	4a90      	ldr	r2, [pc, #576]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000ac8:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000acc:	6013      	str	r3, [r2, #0]
 8000ace:	e01d      	b.n	8000b0c <HAL_RCC_OscConfig+0xb0>
 8000ad0:	687b      	ldr	r3, [r7, #4]
 8000ad2:	685b      	ldr	r3, [r3, #4]
 8000ad4:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 8000ad8:	d10c      	bne.n	8000af4 <HAL_RCC_OscConfig+0x98>
 8000ada:	4b8b      	ldr	r3, [pc, #556]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000adc:	681b      	ldr	r3, [r3, #0]
 8000ade:	4a8a      	ldr	r2, [pc, #552]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000ae0:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8000ae4:	6013      	str	r3, [r2, #0]
 8000ae6:	4b88      	ldr	r3, [pc, #544]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000ae8:	681b      	ldr	r3, [r3, #0]
 8000aea:	4a87      	ldr	r2, [pc, #540]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000aec:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000af0:	6013      	str	r3, [r2, #0]
 8000af2:	e00b      	b.n	8000b0c <HAL_RCC_OscConfig+0xb0>
 8000af4:	4b84      	ldr	r3, [pc, #528]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000af6:	681b      	ldr	r3, [r3, #0]
 8000af8:	4a83      	ldr	r2, [pc, #524]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000afa:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000afe:	6013      	str	r3, [r2, #0]
 8000b00:	4b81      	ldr	r3, [pc, #516]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b02:	681b      	ldr	r3, [r3, #0]
 8000b04:	4a80      	ldr	r2, [pc, #512]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b06:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000b0a:	6013      	str	r3, [r2, #0]

      /* Check the HSE State */
      if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
 8000b0c:	687b      	ldr	r3, [r7, #4]
 8000b0e:	685b      	ldr	r3, [r3, #4]
 8000b10:	2b00      	cmp	r3, #0
 8000b12:	d013      	beq.n	8000b3c <HAL_RCC_OscConfig+0xe0>
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000b14:	f7ff fe7c 	bl	8000810 <HAL_GetTick>
 8000b18:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000b1a:	e008      	b.n	8000b2e <HAL_RCC_OscConfig+0xd2>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 8000b1c:	f7ff fe78 	bl	8000810 <HAL_GetTick>
 8000b20:	4602      	mov	r2, r0
 8000b22:	693b      	ldr	r3, [r7, #16]
 8000b24:	1ad3      	subs	r3, r2, r3
 8000b26:	2b64      	cmp	r3, #100	; 0x64
 8000b28:	d901      	bls.n	8000b2e <HAL_RCC_OscConfig+0xd2>
          {
            return HAL_TIMEOUT;
 8000b2a:	2303      	movs	r3, #3
 8000b2c:	e204      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000b2e:	4b76      	ldr	r3, [pc, #472]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b30:	681b      	ldr	r3, [r3, #0]
 8000b32:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000b36:	2b00      	cmp	r3, #0
 8000b38:	d0f0      	beq.n	8000b1c <HAL_RCC_OscConfig+0xc0>
 8000b3a:	e014      	b.n	8000b66 <HAL_RCC_OscConfig+0x10a>
        }
      }
      else
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000b3c:	f7ff fe68 	bl	8000810 <HAL_GetTick>
 8000b40:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is bypassed or disabled */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000b42:	e008      	b.n	8000b56 <HAL_RCC_OscConfig+0xfa>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 8000b44:	f7ff fe64 	bl	8000810 <HAL_GetTick>
 8000b48:	4602      	mov	r2, r0
 8000b4a:	693b      	ldr	r3, [r7, #16]
 8000b4c:	1ad3      	subs	r3, r2, r3
 8000b4e:	2b64      	cmp	r3, #100	; 0x64
 8000b50:	d901      	bls.n	8000b56 <HAL_RCC_OscConfig+0xfa>
          {
            return HAL_TIMEOUT;
 8000b52:	2303      	movs	r3, #3
 8000b54:	e1f0      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000b56:	4b6c      	ldr	r3, [pc, #432]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b58:	681b      	ldr	r3, [r3, #0]
 8000b5a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000b5e:	2b00      	cmp	r3, #0
 8000b60:	d1f0      	bne.n	8000b44 <HAL_RCC_OscConfig+0xe8>
 8000b62:	e000      	b.n	8000b66 <HAL_RCC_OscConfig+0x10a>
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000b64:	bf00      	nop
        }
      }
    }
  }
  /*----------------------------- HSI Configuration --------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000b66:	687b      	ldr	r3, [r7, #4]
 8000b68:	681b      	ldr	r3, [r3, #0]
 8000b6a:	f003 0302 	and.w	r3, r3, #2
 8000b6e:	2b00      	cmp	r3, #0
 8000b70:	d063      	beq.n	8000c3a <HAL_RCC_OscConfig+0x1de>
    /* Check the parameters */
    assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
    assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));

    /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 8000b72:	4b65      	ldr	r3, [pc, #404]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b74:	689b      	ldr	r3, [r3, #8]
 8000b76:	f003 030c 	and.w	r3, r3, #12
 8000b7a:	2b00      	cmp	r3, #0
 8000b7c:	d00b      	beq.n	8000b96 <HAL_RCC_OscConfig+0x13a>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 8000b7e:	4b62      	ldr	r3, [pc, #392]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b80:	689b      	ldr	r3, [r3, #8]
 8000b82:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 8000b86:	2b08      	cmp	r3, #8
 8000b88:	d11c      	bne.n	8000bc4 <HAL_RCC_OscConfig+0x168>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 8000b8a:	4b5f      	ldr	r3, [pc, #380]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b8c:	685b      	ldr	r3, [r3, #4]
 8000b8e:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000b92:	2b00      	cmp	r3, #0
 8000b94:	d116      	bne.n	8000bc4 <HAL_RCC_OscConfig+0x168>
    {
      /* When HSI is used as system clock it will not disabled */
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000b96:	4b5c      	ldr	r3, [pc, #368]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000b98:	681b      	ldr	r3, [r3, #0]
 8000b9a:	f003 0302 	and.w	r3, r3, #2
 8000b9e:	2b00      	cmp	r3, #0
 8000ba0:	d005      	beq.n	8000bae <HAL_RCC_OscConfig+0x152>
 8000ba2:	687b      	ldr	r3, [r7, #4]
 8000ba4:	68db      	ldr	r3, [r3, #12]
 8000ba6:	2b01      	cmp	r3, #1
 8000ba8:	d001      	beq.n	8000bae <HAL_RCC_OscConfig+0x152>
      {
        return HAL_ERROR;
 8000baa:	2301      	movs	r3, #1
 8000bac:	e1c4      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      }
      /* Otherwise, just the calibration is allowed */
      else
      {
        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000bae:	4b56      	ldr	r3, [pc, #344]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000bb0:	681b      	ldr	r3, [r3, #0]
 8000bb2:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8000bb6:	687b      	ldr	r3, [r7, #4]
 8000bb8:	691b      	ldr	r3, [r3, #16]
 8000bba:	00db      	lsls	r3, r3, #3
 8000bbc:	4952      	ldr	r1, [pc, #328]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000bbe:	4313      	orrs	r3, r2
 8000bc0:	600b      	str	r3, [r1, #0]
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000bc2:	e03a      	b.n	8000c3a <HAL_RCC_OscConfig+0x1de>
      }
    }
    else
    {
      /* Check the HSI State */
      if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
 8000bc4:	687b      	ldr	r3, [r7, #4]
 8000bc6:	68db      	ldr	r3, [r3, #12]
 8000bc8:	2b00      	cmp	r3, #0
 8000bca:	d020      	beq.n	8000c0e <HAL_RCC_OscConfig+0x1b2>
      {
        /* Enable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_ENABLE();
 8000bcc:	4b4f      	ldr	r3, [pc, #316]	; (8000d0c <HAL_RCC_OscConfig+0x2b0>)
 8000bce:	2201      	movs	r2, #1
 8000bd0:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8000bd2:	f7ff fe1d 	bl	8000810 <HAL_GetTick>
 8000bd6:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000bd8:	e008      	b.n	8000bec <HAL_RCC_OscConfig+0x190>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 8000bda:	f7ff fe19 	bl	8000810 <HAL_GetTick>
 8000bde:	4602      	mov	r2, r0
 8000be0:	693b      	ldr	r3, [r7, #16]
 8000be2:	1ad3      	subs	r3, r2, r3
 8000be4:	2b02      	cmp	r3, #2
 8000be6:	d901      	bls.n	8000bec <HAL_RCC_OscConfig+0x190>
          {
            return HAL_TIMEOUT;
 8000be8:	2303      	movs	r3, #3
 8000bea:	e1a5      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000bec:	4b46      	ldr	r3, [pc, #280]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000bee:	681b      	ldr	r3, [r3, #0]
 8000bf0:	f003 0302 	and.w	r3, r3, #2
 8000bf4:	2b00      	cmp	r3, #0
 8000bf6:	d0f0      	beq.n	8000bda <HAL_RCC_OscConfig+0x17e>
          }
        }

        /* Adjusts the Internal High Speed oscillator (HSI) calibration value. */
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000bf8:	4b43      	ldr	r3, [pc, #268]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000bfa:	681b      	ldr	r3, [r3, #0]
 8000bfc:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8000c00:	687b      	ldr	r3, [r7, #4]
 8000c02:	691b      	ldr	r3, [r3, #16]
 8000c04:	00db      	lsls	r3, r3, #3
 8000c06:	4940      	ldr	r1, [pc, #256]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000c08:	4313      	orrs	r3, r2
 8000c0a:	600b      	str	r3, [r1, #0]
 8000c0c:	e015      	b.n	8000c3a <HAL_RCC_OscConfig+0x1de>
      }
      else
      {
        /* Disable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_DISABLE();
 8000c0e:	4b3f      	ldr	r3, [pc, #252]	; (8000d0c <HAL_RCC_OscConfig+0x2b0>)
 8000c10:	2200      	movs	r2, #0
 8000c12:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8000c14:	f7ff fdfc 	bl	8000810 <HAL_GetTick>
 8000c18:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000c1a:	e008      	b.n	8000c2e <HAL_RCC_OscConfig+0x1d2>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 8000c1c:	f7ff fdf8 	bl	8000810 <HAL_GetTick>
 8000c20:	4602      	mov	r2, r0
 8000c22:	693b      	ldr	r3, [r7, #16]
 8000c24:	1ad3      	subs	r3, r2, r3
 8000c26:	2b02      	cmp	r3, #2
 8000c28:	d901      	bls.n	8000c2e <HAL_RCC_OscConfig+0x1d2>
          {
            return HAL_TIMEOUT;
 8000c2a:	2303      	movs	r3, #3
 8000c2c:	e184      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000c2e:	4b36      	ldr	r3, [pc, #216]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000c30:	681b      	ldr	r3, [r3, #0]
 8000c32:	f003 0302 	and.w	r3, r3, #2
 8000c36:	2b00      	cmp	r3, #0
 8000c38:	d1f0      	bne.n	8000c1c <HAL_RCC_OscConfig+0x1c0>
        }
      }
    }
  }
  /*------------------------------ LSI Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 8000c3a:	687b      	ldr	r3, [r7, #4]
 8000c3c:	681b      	ldr	r3, [r3, #0]
 8000c3e:	f003 0308 	and.w	r3, r3, #8
 8000c42:	2b00      	cmp	r3, #0
 8000c44:	d030      	beq.n	8000ca8 <HAL_RCC_OscConfig+0x24c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));

    /* Check the LSI State */
    if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
 8000c46:	687b      	ldr	r3, [r7, #4]
 8000c48:	695b      	ldr	r3, [r3, #20]
 8000c4a:	2b00      	cmp	r3, #0
 8000c4c:	d016      	beq.n	8000c7c <HAL_RCC_OscConfig+0x220>
    {
      /* Enable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_ENABLE();
 8000c4e:	4b30      	ldr	r3, [pc, #192]	; (8000d10 <HAL_RCC_OscConfig+0x2b4>)
 8000c50:	2201      	movs	r2, #1
 8000c52:	601a      	str	r2, [r3, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8000c54:	f7ff fddc 	bl	8000810 <HAL_GetTick>
 8000c58:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000c5a:	e008      	b.n	8000c6e <HAL_RCC_OscConfig+0x212>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 8000c5c:	f7ff fdd8 	bl	8000810 <HAL_GetTick>
 8000c60:	4602      	mov	r2, r0
 8000c62:	693b      	ldr	r3, [r7, #16]
 8000c64:	1ad3      	subs	r3, r2, r3
 8000c66:	2b02      	cmp	r3, #2
 8000c68:	d901      	bls.n	8000c6e <HAL_RCC_OscConfig+0x212>
        {
          return HAL_TIMEOUT;
 8000c6a:	2303      	movs	r3, #3
 8000c6c:	e164      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000c6e:	4b26      	ldr	r3, [pc, #152]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000c70:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8000c72:	f003 0302 	and.w	r3, r3, #2
 8000c76:	2b00      	cmp	r3, #0
 8000c78:	d0f0      	beq.n	8000c5c <HAL_RCC_OscConfig+0x200>
 8000c7a:	e015      	b.n	8000ca8 <HAL_RCC_OscConfig+0x24c>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_DISABLE();
 8000c7c:	4b24      	ldr	r3, [pc, #144]	; (8000d10 <HAL_RCC_OscConfig+0x2b4>)
 8000c7e:	2200      	movs	r2, #0
 8000c80:	601a      	str	r2, [r3, #0]

      /* Get Start Tick */
      tickstart = HAL_GetTick();
 8000c82:	f7ff fdc5 	bl	8000810 <HAL_GetTick>
 8000c86:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000c88:	e008      	b.n	8000c9c <HAL_RCC_OscConfig+0x240>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 8000c8a:	f7ff fdc1 	bl	8000810 <HAL_GetTick>
 8000c8e:	4602      	mov	r2, r0
 8000c90:	693b      	ldr	r3, [r7, #16]
 8000c92:	1ad3      	subs	r3, r2, r3
 8000c94:	2b02      	cmp	r3, #2
 8000c96:	d901      	bls.n	8000c9c <HAL_RCC_OscConfig+0x240>
        {
          return HAL_TIMEOUT;
 8000c98:	2303      	movs	r3, #3
 8000c9a:	e14d      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000c9c:	4b1a      	ldr	r3, [pc, #104]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000c9e:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8000ca0:	f003 0302 	and.w	r3, r3, #2
 8000ca4:	2b00      	cmp	r3, #0
 8000ca6:	d1f0      	bne.n	8000c8a <HAL_RCC_OscConfig+0x22e>
        }
      }
    }
  }
  /*------------------------------ LSE Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 8000ca8:	687b      	ldr	r3, [r7, #4]
 8000caa:	681b      	ldr	r3, [r3, #0]
 8000cac:	f003 0304 	and.w	r3, r3, #4
 8000cb0:	2b00      	cmp	r3, #0
 8000cb2:	f000 80a0 	beq.w	8000df6 <HAL_RCC_OscConfig+0x39a>
  {
    FlagStatus       pwrclkchanged = RESET;
 8000cb6:	2300      	movs	r3, #0
 8000cb8:	75fb      	strb	r3, [r7, #23]
    /* Check the parameters */
    assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));

    /* Update LSE configuration in Backup Domain control register    */
    /* Requires to enable write access to Backup Domain of necessary */
    if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 8000cba:	4b13      	ldr	r3, [pc, #76]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000cbc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000cbe:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000cc2:	2b00      	cmp	r3, #0
 8000cc4:	d10f      	bne.n	8000ce6 <HAL_RCC_OscConfig+0x28a>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 8000cc6:	2300      	movs	r3, #0
 8000cc8:	60bb      	str	r3, [r7, #8]
 8000cca:	4b0f      	ldr	r3, [pc, #60]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000ccc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000cce:	4a0e      	ldr	r2, [pc, #56]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000cd0:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000cd4:	6413      	str	r3, [r2, #64]	; 0x40
 8000cd6:	4b0c      	ldr	r3, [pc, #48]	; (8000d08 <HAL_RCC_OscConfig+0x2ac>)
 8000cd8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000cda:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000cde:	60bb      	str	r3, [r7, #8]
 8000ce0:	68bb      	ldr	r3, [r7, #8]
      pwrclkchanged = SET;
 8000ce2:	2301      	movs	r3, #1
 8000ce4:	75fb      	strb	r3, [r7, #23]
    }

    if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000ce6:	4b0b      	ldr	r3, [pc, #44]	; (8000d14 <HAL_RCC_OscConfig+0x2b8>)
 8000ce8:	681b      	ldr	r3, [r3, #0]
 8000cea:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8000cee:	2b00      	cmp	r3, #0
 8000cf0:	d121      	bne.n	8000d36 <HAL_RCC_OscConfig+0x2da>
    {
      /* Enable write access to Backup domain */
      SET_BIT(PWR->CR, PWR_CR_DBP);
 8000cf2:	4b08      	ldr	r3, [pc, #32]	; (8000d14 <HAL_RCC_OscConfig+0x2b8>)
 8000cf4:	681b      	ldr	r3, [r3, #0]
 8000cf6:	4a07      	ldr	r2, [pc, #28]	; (8000d14 <HAL_RCC_OscConfig+0x2b8>)
 8000cf8:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000cfc:	6013      	str	r3, [r2, #0]

      /* Wait for Backup domain Write protection disable */
      tickstart = HAL_GetTick();
 8000cfe:	f7ff fd87 	bl	8000810 <HAL_GetTick>
 8000d02:	6138      	str	r0, [r7, #16]

      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000d04:	e011      	b.n	8000d2a <HAL_RCC_OscConfig+0x2ce>
 8000d06:	bf00      	nop
 8000d08:	40023800 	.word	0x40023800
 8000d0c:	42470000 	.word	0x42470000
 8000d10:	42470e80 	.word	0x42470e80
 8000d14:	40007000 	.word	0x40007000
      {
        if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 8000d18:	f7ff fd7a 	bl	8000810 <HAL_GetTick>
 8000d1c:	4602      	mov	r2, r0
 8000d1e:	693b      	ldr	r3, [r7, #16]
 8000d20:	1ad3      	subs	r3, r2, r3
 8000d22:	2b02      	cmp	r3, #2
 8000d24:	d901      	bls.n	8000d2a <HAL_RCC_OscConfig+0x2ce>
        {
          return HAL_TIMEOUT;
 8000d26:	2303      	movs	r3, #3
 8000d28:	e106      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000d2a:	4b85      	ldr	r3, [pc, #532]	; (8000f40 <HAL_RCC_OscConfig+0x4e4>)
 8000d2c:	681b      	ldr	r3, [r3, #0]
 8000d2e:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8000d32:	2b00      	cmp	r3, #0
 8000d34:	d0f0      	beq.n	8000d18 <HAL_RCC_OscConfig+0x2bc>
        }
      }
    }

    /* Set the new LSE configuration -----------------------------------------*/
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 8000d36:	687b      	ldr	r3, [r7, #4]
 8000d38:	689b      	ldr	r3, [r3, #8]
 8000d3a:	2b01      	cmp	r3, #1
 8000d3c:	d106      	bne.n	8000d4c <HAL_RCC_OscConfig+0x2f0>
 8000d3e:	4b81      	ldr	r3, [pc, #516]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d40:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000d42:	4a80      	ldr	r2, [pc, #512]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d44:	f043 0301 	orr.w	r3, r3, #1
 8000d48:	6713      	str	r3, [r2, #112]	; 0x70
 8000d4a:	e01c      	b.n	8000d86 <HAL_RCC_OscConfig+0x32a>
 8000d4c:	687b      	ldr	r3, [r7, #4]
 8000d4e:	689b      	ldr	r3, [r3, #8]
 8000d50:	2b05      	cmp	r3, #5
 8000d52:	d10c      	bne.n	8000d6e <HAL_RCC_OscConfig+0x312>
 8000d54:	4b7b      	ldr	r3, [pc, #492]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d56:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000d58:	4a7a      	ldr	r2, [pc, #488]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d5a:	f043 0304 	orr.w	r3, r3, #4
 8000d5e:	6713      	str	r3, [r2, #112]	; 0x70
 8000d60:	4b78      	ldr	r3, [pc, #480]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d62:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000d64:	4a77      	ldr	r2, [pc, #476]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d66:	f043 0301 	orr.w	r3, r3, #1
 8000d6a:	6713      	str	r3, [r2, #112]	; 0x70
 8000d6c:	e00b      	b.n	8000d86 <HAL_RCC_OscConfig+0x32a>
 8000d6e:	4b75      	ldr	r3, [pc, #468]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d70:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000d72:	4a74      	ldr	r2, [pc, #464]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d74:	f023 0301 	bic.w	r3, r3, #1
 8000d78:	6713      	str	r3, [r2, #112]	; 0x70
 8000d7a:	4b72      	ldr	r3, [pc, #456]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d7c:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000d7e:	4a71      	ldr	r2, [pc, #452]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000d80:	f023 0304 	bic.w	r3, r3, #4
 8000d84:	6713      	str	r3, [r2, #112]	; 0x70
    /* Check the LSE State */
    if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
 8000d86:	687b      	ldr	r3, [r7, #4]
 8000d88:	689b      	ldr	r3, [r3, #8]
 8000d8a:	2b00      	cmp	r3, #0
 8000d8c:	d015      	beq.n	8000dba <HAL_RCC_OscConfig+0x35e>
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8000d8e:	f7ff fd3f 	bl	8000810 <HAL_GetTick>
 8000d92:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000d94:	e00a      	b.n	8000dac <HAL_RCC_OscConfig+0x350>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8000d96:	f7ff fd3b 	bl	8000810 <HAL_GetTick>
 8000d9a:	4602      	mov	r2, r0
 8000d9c:	693b      	ldr	r3, [r7, #16]
 8000d9e:	1ad3      	subs	r3, r2, r3
 8000da0:	f241 3288 	movw	r2, #5000	; 0x1388
 8000da4:	4293      	cmp	r3, r2
 8000da6:	d901      	bls.n	8000dac <HAL_RCC_OscConfig+0x350>
        {
          return HAL_TIMEOUT;
 8000da8:	2303      	movs	r3, #3
 8000daa:	e0c5      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000dac:	4b65      	ldr	r3, [pc, #404]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000dae:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000db0:	f003 0302 	and.w	r3, r3, #2
 8000db4:	2b00      	cmp	r3, #0
 8000db6:	d0ee      	beq.n	8000d96 <HAL_RCC_OscConfig+0x33a>
 8000db8:	e014      	b.n	8000de4 <HAL_RCC_OscConfig+0x388>
      }
    }
    else
    {
      /* Get Start Tick */
      tickstart = HAL_GetTick();
 8000dba:	f7ff fd29 	bl	8000810 <HAL_GetTick>
 8000dbe:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000dc0:	e00a      	b.n	8000dd8 <HAL_RCC_OscConfig+0x37c>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8000dc2:	f7ff fd25 	bl	8000810 <HAL_GetTick>
 8000dc6:	4602      	mov	r2, r0
 8000dc8:	693b      	ldr	r3, [r7, #16]
 8000dca:	1ad3      	subs	r3, r2, r3
 8000dcc:	f241 3288 	movw	r2, #5000	; 0x1388
 8000dd0:	4293      	cmp	r3, r2
 8000dd2:	d901      	bls.n	8000dd8 <HAL_RCC_OscConfig+0x37c>
        {
          return HAL_TIMEOUT;
 8000dd4:	2303      	movs	r3, #3
 8000dd6:	e0af      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000dd8:	4b5a      	ldr	r3, [pc, #360]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000dda:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000ddc:	f003 0302 	and.w	r3, r3, #2
 8000de0:	2b00      	cmp	r3, #0
 8000de2:	d1ee      	bne.n	8000dc2 <HAL_RCC_OscConfig+0x366>
        }
      }
    }

    /* Restore clock configuration if changed */
    if(pwrclkchanged == SET)
 8000de4:	7dfb      	ldrb	r3, [r7, #23]
 8000de6:	2b01      	cmp	r3, #1
 8000de8:	d105      	bne.n	8000df6 <HAL_RCC_OscConfig+0x39a>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 8000dea:	4b56      	ldr	r3, [pc, #344]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000dec:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000dee:	4a55      	ldr	r2, [pc, #340]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000df0:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8000df4:	6413      	str	r3, [r2, #64]	; 0x40
    }
  }
  /*-------------------------------- PLL Configuration -----------------------*/
  /* Check the parameters */
  assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 8000df6:	687b      	ldr	r3, [r7, #4]
 8000df8:	699b      	ldr	r3, [r3, #24]
 8000dfa:	2b00      	cmp	r3, #0
 8000dfc:	f000 809b 	beq.w	8000f36 <HAL_RCC_OscConfig+0x4da>
  {
    /* Check if the PLL is used as system clock or not */
    if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 8000e00:	4b50      	ldr	r3, [pc, #320]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000e02:	689b      	ldr	r3, [r3, #8]
 8000e04:	f003 030c 	and.w	r3, r3, #12
 8000e08:	2b08      	cmp	r3, #8
 8000e0a:	d05c      	beq.n	8000ec6 <HAL_RCC_OscConfig+0x46a>
    {
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8000e0c:	687b      	ldr	r3, [r7, #4]
 8000e0e:	699b      	ldr	r3, [r3, #24]
 8000e10:	2b02      	cmp	r3, #2
 8000e12:	d141      	bne.n	8000e98 <HAL_RCC_OscConfig+0x43c>
        assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
        assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
        assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));

        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8000e14:	4b4c      	ldr	r3, [pc, #304]	; (8000f48 <HAL_RCC_OscConfig+0x4ec>)
 8000e16:	2200      	movs	r2, #0
 8000e18:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000e1a:	f7ff fcf9 	bl	8000810 <HAL_GetTick>
 8000e1e:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000e20:	e008      	b.n	8000e34 <HAL_RCC_OscConfig+0x3d8>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000e22:	f7ff fcf5 	bl	8000810 <HAL_GetTick>
 8000e26:	4602      	mov	r2, r0
 8000e28:	693b      	ldr	r3, [r7, #16]
 8000e2a:	1ad3      	subs	r3, r2, r3
 8000e2c:	2b02      	cmp	r3, #2
 8000e2e:	d901      	bls.n	8000e34 <HAL_RCC_OscConfig+0x3d8>
          {
            return HAL_TIMEOUT;
 8000e30:	2303      	movs	r3, #3
 8000e32:	e081      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000e34:	4b43      	ldr	r3, [pc, #268]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000e36:	681b      	ldr	r3, [r3, #0]
 8000e38:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000e3c:	2b00      	cmp	r3, #0
 8000e3e:	d1f0      	bne.n	8000e22 <HAL_RCC_OscConfig+0x3c6>
          }
        }

        /* Configure the main PLL clock source, multiplication and division factors. */
        WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \
 8000e40:	687b      	ldr	r3, [r7, #4]
 8000e42:	69da      	ldr	r2, [r3, #28]
 8000e44:	687b      	ldr	r3, [r7, #4]
 8000e46:	6a1b      	ldr	r3, [r3, #32]
 8000e48:	431a      	orrs	r2, r3
 8000e4a:	687b      	ldr	r3, [r7, #4]
 8000e4c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000e4e:	019b      	lsls	r3, r3, #6
 8000e50:	431a      	orrs	r2, r3
 8000e52:	687b      	ldr	r3, [r7, #4]
 8000e54:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000e56:	085b      	lsrs	r3, r3, #1
 8000e58:	3b01      	subs	r3, #1
 8000e5a:	041b      	lsls	r3, r3, #16
 8000e5c:	431a      	orrs	r2, r3
 8000e5e:	687b      	ldr	r3, [r7, #4]
 8000e60:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000e62:	061b      	lsls	r3, r3, #24
 8000e64:	4937      	ldr	r1, [pc, #220]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000e66:	4313      	orrs	r3, r2
 8000e68:	604b      	str	r3, [r1, #4]
                                 RCC_OscInitStruct->PLL.PLLM                                                 | \
                                 (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)             | \
                                 (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos) | \
                                 (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)));
        /* Enable the main PLL. */
        __HAL_RCC_PLL_ENABLE();
 8000e6a:	4b37      	ldr	r3, [pc, #220]	; (8000f48 <HAL_RCC_OscConfig+0x4ec>)
 8000e6c:	2201      	movs	r2, #1
 8000e6e:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000e70:	f7ff fcce 	bl	8000810 <HAL_GetTick>
 8000e74:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000e76:	e008      	b.n	8000e8a <HAL_RCC_OscConfig+0x42e>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000e78:	f7ff fcca 	bl	8000810 <HAL_GetTick>
 8000e7c:	4602      	mov	r2, r0
 8000e7e:	693b      	ldr	r3, [r7, #16]
 8000e80:	1ad3      	subs	r3, r2, r3
 8000e82:	2b02      	cmp	r3, #2
 8000e84:	d901      	bls.n	8000e8a <HAL_RCC_OscConfig+0x42e>
          {
            return HAL_TIMEOUT;
 8000e86:	2303      	movs	r3, #3
 8000e88:	e056      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000e8a:	4b2e      	ldr	r3, [pc, #184]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000e8c:	681b      	ldr	r3, [r3, #0]
 8000e8e:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000e92:	2b00      	cmp	r3, #0
 8000e94:	d0f0      	beq.n	8000e78 <HAL_RCC_OscConfig+0x41c>
 8000e96:	e04e      	b.n	8000f36 <HAL_RCC_OscConfig+0x4da>
        }
      }
      else
      {
        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8000e98:	4b2b      	ldr	r3, [pc, #172]	; (8000f48 <HAL_RCC_OscConfig+0x4ec>)
 8000e9a:	2200      	movs	r2, #0
 8000e9c:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000e9e:	f7ff fcb7 	bl	8000810 <HAL_GetTick>
 8000ea2:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000ea4:	e008      	b.n	8000eb8 <HAL_RCC_OscConfig+0x45c>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000ea6:	f7ff fcb3 	bl	8000810 <HAL_GetTick>
 8000eaa:	4602      	mov	r2, r0
 8000eac:	693b      	ldr	r3, [r7, #16]
 8000eae:	1ad3      	subs	r3, r2, r3
 8000eb0:	2b02      	cmp	r3, #2
 8000eb2:	d901      	bls.n	8000eb8 <HAL_RCC_OscConfig+0x45c>
          {
            return HAL_TIMEOUT;
 8000eb4:	2303      	movs	r3, #3
 8000eb6:	e03f      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000eb8:	4b22      	ldr	r3, [pc, #136]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000eba:	681b      	ldr	r3, [r3, #0]
 8000ebc:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000ec0:	2b00      	cmp	r3, #0
 8000ec2:	d1f0      	bne.n	8000ea6 <HAL_RCC_OscConfig+0x44a>
 8000ec4:	e037      	b.n	8000f36 <HAL_RCC_OscConfig+0x4da>
      }
    }
    else
    {
      /* Check if there is a request to disable the PLL used as System clock source */
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 8000ec6:	687b      	ldr	r3, [r7, #4]
 8000ec8:	699b      	ldr	r3, [r3, #24]
 8000eca:	2b01      	cmp	r3, #1
 8000ecc:	d101      	bne.n	8000ed2 <HAL_RCC_OscConfig+0x476>
      {
        return HAL_ERROR;
 8000ece:	2301      	movs	r3, #1
 8000ed0:	e032      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
      }
      else
      {
        /* Do not return HAL_ERROR if request repeats the current configuration */
        pll_config = RCC->PLLCFGR;
 8000ed2:	4b1c      	ldr	r3, [pc, #112]	; (8000f44 <HAL_RCC_OscConfig+0x4e8>)
 8000ed4:	685b      	ldr	r3, [r3, #4]
 8000ed6:	60fb      	str	r3, [r7, #12]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
#else
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8000ed8:	687b      	ldr	r3, [r7, #4]
 8000eda:	699b      	ldr	r3, [r3, #24]
 8000edc:	2b01      	cmp	r3, #1
 8000ede:	d028      	beq.n	8000f32 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000ee0:	68fb      	ldr	r3, [r7, #12]
 8000ee2:	f403 0280 	and.w	r2, r3, #4194304	; 0x400000
 8000ee6:	687b      	ldr	r3, [r7, #4]
 8000ee8:	69db      	ldr	r3, [r3, #28]
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8000eea:	429a      	cmp	r2, r3
 8000eec:	d121      	bne.n	8000f32 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 8000eee:	68fb      	ldr	r3, [r7, #12]
 8000ef0:	f003 023f 	and.w	r2, r3, #63	; 0x3f
 8000ef4:	687b      	ldr	r3, [r7, #4]
 8000ef6:	6a1b      	ldr	r3, [r3, #32]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000ef8:	429a      	cmp	r2, r3
 8000efa:	d11a      	bne.n	8000f32 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 8000efc:	68fa      	ldr	r2, [r7, #12]
 8000efe:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8000f02:	4013      	ands	r3, r2
 8000f04:	687a      	ldr	r2, [r7, #4]
 8000f06:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000f08:	0192      	lsls	r2, r2, #6
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 8000f0a:	4293      	cmp	r3, r2
 8000f0c:	d111      	bne.n	8000f32 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 8000f0e:	68fb      	ldr	r3, [r7, #12]
 8000f10:	f403 3240 	and.w	r2, r3, #196608	; 0x30000
 8000f14:	687b      	ldr	r3, [r7, #4]
 8000f16:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000f18:	085b      	lsrs	r3, r3, #1
 8000f1a:	3b01      	subs	r3, #1
 8000f1c:	041b      	lsls	r3, r3, #16
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 8000f1e:	429a      	cmp	r2, r3
 8000f20:	d107      	bne.n	8000f32 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
 8000f22:	68fb      	ldr	r3, [r7, #12]
 8000f24:	f003 6270 	and.w	r2, r3, #251658240	; 0xf000000
 8000f28:	687b      	ldr	r3, [r7, #4]
 8000f2a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000f2c:	061b      	lsls	r3, r3, #24
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 8000f2e:	429a      	cmp	r2, r3
 8000f30:	d001      	beq.n	8000f36 <HAL_RCC_OscConfig+0x4da>
#endif
        {
          return HAL_ERROR;
 8000f32:	2301      	movs	r3, #1
 8000f34:	e000      	b.n	8000f38 <HAL_RCC_OscConfig+0x4dc>
        }
      }
    }
  }
  return HAL_OK;
 8000f36:	2300      	movs	r3, #0
}
 8000f38:	4618      	mov	r0, r3
 8000f3a:	3718      	adds	r7, #24
 8000f3c:	46bd      	mov	sp, r7
 8000f3e:	bd80      	pop	{r7, pc}
 8000f40:	40007000 	.word	0x40007000
 8000f44:	40023800 	.word	0x40023800
 8000f48:	42470060 	.word	0x42470060

08000f4c <HAL_RCC_ClockConfig>:
  *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
  *         (for more details refer to section above "Initialization/de-initialization functions")
  * @retval None
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 8000f4c:	b580      	push	{r7, lr}
 8000f4e:	b084      	sub	sp, #16
 8000f50:	af00      	add	r7, sp, #0
 8000f52:	6078      	str	r0, [r7, #4]
 8000f54:	6039      	str	r1, [r7, #0]
  uint32_t tickstart;

  /* Check Null pointer */
  if(RCC_ClkInitStruct == NULL)
 8000f56:	687b      	ldr	r3, [r7, #4]
 8000f58:	2b00      	cmp	r3, #0
 8000f5a:	d101      	bne.n	8000f60 <HAL_RCC_ClockConfig+0x14>
  {
    return HAL_ERROR;
 8000f5c:	2301      	movs	r3, #1
 8000f5e:	e0cc      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
  /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
    must be correctly programmed according to the frequency of the CPU clock
    (HCLK) and the supply voltage of the device. */

  /* Increasing the number of wait states because of higher CPU frequency */
  if(FLatency > __HAL_FLASH_GET_LATENCY())
 8000f60:	4b68      	ldr	r3, [pc, #416]	; (8001104 <HAL_RCC_ClockConfig+0x1b8>)
 8000f62:	681b      	ldr	r3, [r3, #0]
 8000f64:	f003 0307 	and.w	r3, r3, #7
 8000f68:	683a      	ldr	r2, [r7, #0]
 8000f6a:	429a      	cmp	r2, r3
 8000f6c:	d90c      	bls.n	8000f88 <HAL_RCC_ClockConfig+0x3c>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000f6e:	4b65      	ldr	r3, [pc, #404]	; (8001104 <HAL_RCC_ClockConfig+0x1b8>)
 8000f70:	683a      	ldr	r2, [r7, #0]
 8000f72:	b2d2      	uxtb	r2, r2
 8000f74:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 8000f76:	4b63      	ldr	r3, [pc, #396]	; (8001104 <HAL_RCC_ClockConfig+0x1b8>)
 8000f78:	681b      	ldr	r3, [r3, #0]
 8000f7a:	f003 0307 	and.w	r3, r3, #7
 8000f7e:	683a      	ldr	r2, [r7, #0]
 8000f80:	429a      	cmp	r2, r3
 8000f82:	d001      	beq.n	8000f88 <HAL_RCC_ClockConfig+0x3c>
    {
      return HAL_ERROR;
 8000f84:	2301      	movs	r3, #1
 8000f86:	e0b8      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- HCLK Configuration --------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8000f88:	687b      	ldr	r3, [r7, #4]
 8000f8a:	681b      	ldr	r3, [r3, #0]
 8000f8c:	f003 0302 	and.w	r3, r3, #2
 8000f90:	2b00      	cmp	r3, #0
 8000f92:	d020      	beq.n	8000fd6 <HAL_RCC_ClockConfig+0x8a>
  {
    /* Set the highest APBx dividers in order to ensure that we do not go through
       a non-spec phase whatever we decrease or increase HCLK. */
    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000f94:	687b      	ldr	r3, [r7, #4]
 8000f96:	681b      	ldr	r3, [r3, #0]
 8000f98:	f003 0304 	and.w	r3, r3, #4
 8000f9c:	2b00      	cmp	r3, #0
 8000f9e:	d005      	beq.n	8000fac <HAL_RCC_ClockConfig+0x60>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8000fa0:	4b59      	ldr	r3, [pc, #356]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fa2:	689b      	ldr	r3, [r3, #8]
 8000fa4:	4a58      	ldr	r2, [pc, #352]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fa6:	f443 53e0 	orr.w	r3, r3, #7168	; 0x1c00
 8000faa:	6093      	str	r3, [r2, #8]
    }

    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000fac:	687b      	ldr	r3, [r7, #4]
 8000fae:	681b      	ldr	r3, [r3, #0]
 8000fb0:	f003 0308 	and.w	r3, r3, #8
 8000fb4:	2b00      	cmp	r3, #0
 8000fb6:	d005      	beq.n	8000fc4 <HAL_RCC_ClockConfig+0x78>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 8000fb8:	4b53      	ldr	r3, [pc, #332]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fba:	689b      	ldr	r3, [r3, #8]
 8000fbc:	4a52      	ldr	r2, [pc, #328]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fbe:	f443 4360 	orr.w	r3, r3, #57344	; 0xe000
 8000fc2:	6093      	str	r3, [r2, #8]
    }

    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 8000fc4:	4b50      	ldr	r3, [pc, #320]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fc6:	689b      	ldr	r3, [r3, #8]
 8000fc8:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8000fcc:	687b      	ldr	r3, [r7, #4]
 8000fce:	689b      	ldr	r3, [r3, #8]
 8000fd0:	494d      	ldr	r1, [pc, #308]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fd2:	4313      	orrs	r3, r2
 8000fd4:	608b      	str	r3, [r1, #8]
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 8000fd6:	687b      	ldr	r3, [r7, #4]
 8000fd8:	681b      	ldr	r3, [r3, #0]
 8000fda:	f003 0301 	and.w	r3, r3, #1
 8000fde:	2b00      	cmp	r3, #0
 8000fe0:	d044      	beq.n	800106c <HAL_RCC_ClockConfig+0x120>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* HSE is selected as System Clock Source */
    if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 8000fe2:	687b      	ldr	r3, [r7, #4]
 8000fe4:	685b      	ldr	r3, [r3, #4]
 8000fe6:	2b01      	cmp	r3, #1
 8000fe8:	d107      	bne.n	8000ffa <HAL_RCC_ClockConfig+0xae>
    {
      /* Check the HSE ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000fea:	4b47      	ldr	r3, [pc, #284]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8000fec:	681b      	ldr	r3, [r3, #0]
 8000fee:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000ff2:	2b00      	cmp	r3, #0
 8000ff4:	d119      	bne.n	800102a <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 8000ff6:	2301      	movs	r3, #1
 8000ff8:	e07f      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
      }
    }
    /* PLL is selected as System Clock Source */
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 8000ffa:	687b      	ldr	r3, [r7, #4]
 8000ffc:	685b      	ldr	r3, [r3, #4]
 8000ffe:	2b02      	cmp	r3, #2
 8001000:	d003      	beq.n	800100a <HAL_RCC_ClockConfig+0xbe>
            (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLRCLK))
 8001002:	687b      	ldr	r3, [r7, #4]
 8001004:	685b      	ldr	r3, [r3, #4]
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 8001006:	2b03      	cmp	r3, #3
 8001008:	d107      	bne.n	800101a <HAL_RCC_ClockConfig+0xce>
    {
      /* Check the PLL ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 800100a:	4b3f      	ldr	r3, [pc, #252]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 800100c:	681b      	ldr	r3, [r3, #0]
 800100e:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8001012:	2b00      	cmp	r3, #0
 8001014:	d109      	bne.n	800102a <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 8001016:	2301      	movs	r3, #1
 8001018:	e06f      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
    }
    /* HSI is selected as System Clock Source */
    else
    {
      /* Check the HSI ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 800101a:	4b3b      	ldr	r3, [pc, #236]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 800101c:	681b      	ldr	r3, [r3, #0]
 800101e:	f003 0302 	and.w	r3, r3, #2
 8001022:	2b00      	cmp	r3, #0
 8001024:	d101      	bne.n	800102a <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 8001026:	2301      	movs	r3, #1
 8001028:	e067      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
      }
    }

    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 800102a:	4b37      	ldr	r3, [pc, #220]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 800102c:	689b      	ldr	r3, [r3, #8]
 800102e:	f023 0203 	bic.w	r2, r3, #3
 8001032:	687b      	ldr	r3, [r7, #4]
 8001034:	685b      	ldr	r3, [r3, #4]
 8001036:	4934      	ldr	r1, [pc, #208]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 8001038:	4313      	orrs	r3, r2
 800103a:	608b      	str	r3, [r1, #8]

    /* Get Start Tick */
    tickstart = HAL_GetTick();
 800103c:	f7ff fbe8 	bl	8000810 <HAL_GetTick>
 8001040:	60f8      	str	r0, [r7, #12]

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8001042:	e00a      	b.n	800105a <HAL_RCC_ClockConfig+0x10e>
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 8001044:	f7ff fbe4 	bl	8000810 <HAL_GetTick>
 8001048:	4602      	mov	r2, r0
 800104a:	68fb      	ldr	r3, [r7, #12]
 800104c:	1ad3      	subs	r3, r2, r3
 800104e:	f241 3288 	movw	r2, #5000	; 0x1388
 8001052:	4293      	cmp	r3, r2
 8001054:	d901      	bls.n	800105a <HAL_RCC_ClockConfig+0x10e>
      {
        return HAL_TIMEOUT;
 8001056:	2303      	movs	r3, #3
 8001058:	e04f      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 800105a:	4b2b      	ldr	r3, [pc, #172]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 800105c:	689b      	ldr	r3, [r3, #8]
 800105e:	f003 020c 	and.w	r2, r3, #12
 8001062:	687b      	ldr	r3, [r7, #4]
 8001064:	685b      	ldr	r3, [r3, #4]
 8001066:	009b      	lsls	r3, r3, #2
 8001068:	429a      	cmp	r2, r3
 800106a:	d1eb      	bne.n	8001044 <HAL_RCC_ClockConfig+0xf8>
      }
    }
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if(FLatency < __HAL_FLASH_GET_LATENCY())
 800106c:	4b25      	ldr	r3, [pc, #148]	; (8001104 <HAL_RCC_ClockConfig+0x1b8>)
 800106e:	681b      	ldr	r3, [r3, #0]
 8001070:	f003 0307 	and.w	r3, r3, #7
 8001074:	683a      	ldr	r2, [r7, #0]
 8001076:	429a      	cmp	r2, r3
 8001078:	d20c      	bcs.n	8001094 <HAL_RCC_ClockConfig+0x148>
  {
     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 800107a:	4b22      	ldr	r3, [pc, #136]	; (8001104 <HAL_RCC_ClockConfig+0x1b8>)
 800107c:	683a      	ldr	r2, [r7, #0]
 800107e:	b2d2      	uxtb	r2, r2
 8001080:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 8001082:	4b20      	ldr	r3, [pc, #128]	; (8001104 <HAL_RCC_ClockConfig+0x1b8>)
 8001084:	681b      	ldr	r3, [r3, #0]
 8001086:	f003 0307 	and.w	r3, r3, #7
 800108a:	683a      	ldr	r2, [r7, #0]
 800108c:	429a      	cmp	r2, r3
 800108e:	d001      	beq.n	8001094 <HAL_RCC_ClockConfig+0x148>
    {
      return HAL_ERROR;
 8001090:	2301      	movs	r3, #1
 8001092:	e032      	b.n	80010fa <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- PCLK1 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8001094:	687b      	ldr	r3, [r7, #4]
 8001096:	681b      	ldr	r3, [r3, #0]
 8001098:	f003 0304 	and.w	r3, r3, #4
 800109c:	2b00      	cmp	r3, #0
 800109e:	d008      	beq.n	80010b2 <HAL_RCC_ClockConfig+0x166>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 80010a0:	4b19      	ldr	r3, [pc, #100]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 80010a2:	689b      	ldr	r3, [r3, #8]
 80010a4:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 80010a8:	687b      	ldr	r3, [r7, #4]
 80010aa:	68db      	ldr	r3, [r3, #12]
 80010ac:	4916      	ldr	r1, [pc, #88]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 80010ae:	4313      	orrs	r3, r2
 80010b0:	608b      	str	r3, [r1, #8]
  }

  /*-------------------------- PCLK2 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 80010b2:	687b      	ldr	r3, [r7, #4]
 80010b4:	681b      	ldr	r3, [r3, #0]
 80010b6:	f003 0308 	and.w	r3, r3, #8
 80010ba:	2b00      	cmp	r3, #0
 80010bc:	d009      	beq.n	80010d2 <HAL_RCC_ClockConfig+0x186>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 80010be:	4b12      	ldr	r3, [pc, #72]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 80010c0:	689b      	ldr	r3, [r3, #8]
 80010c2:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 80010c6:	687b      	ldr	r3, [r7, #4]
 80010c8:	691b      	ldr	r3, [r3, #16]
 80010ca:	00db      	lsls	r3, r3, #3
 80010cc:	490e      	ldr	r1, [pc, #56]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 80010ce:	4313      	orrs	r3, r2
 80010d0:	608b      	str	r3, [r1, #8]
  }

  /* Update the SystemCoreClock global variable */
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_Pos];
 80010d2:	f000 f821 	bl	8001118 <HAL_RCC_GetSysClockFreq>
 80010d6:	4601      	mov	r1, r0
 80010d8:	4b0b      	ldr	r3, [pc, #44]	; (8001108 <HAL_RCC_ClockConfig+0x1bc>)
 80010da:	689b      	ldr	r3, [r3, #8]
 80010dc:	091b      	lsrs	r3, r3, #4
 80010de:	f003 030f 	and.w	r3, r3, #15
 80010e2:	4a0a      	ldr	r2, [pc, #40]	; (800110c <HAL_RCC_ClockConfig+0x1c0>)
 80010e4:	5cd3      	ldrb	r3, [r2, r3]
 80010e6:	fa21 f303 	lsr.w	r3, r1, r3
 80010ea:	4a09      	ldr	r2, [pc, #36]	; (8001110 <HAL_RCC_ClockConfig+0x1c4>)
 80010ec:	6013      	str	r3, [r2, #0]

  /* Configure the source of time base considering new system clocks settings */
  HAL_InitTick (uwTickPrio);
 80010ee:	4b09      	ldr	r3, [pc, #36]	; (8001114 <HAL_RCC_ClockConfig+0x1c8>)
 80010f0:	681b      	ldr	r3, [r3, #0]
 80010f2:	4618      	mov	r0, r3
 80010f4:	f7ff fb48 	bl	8000788 <HAL_InitTick>

  return HAL_OK;
 80010f8:	2300      	movs	r3, #0
}
 80010fa:	4618      	mov	r0, r3
 80010fc:	3710      	adds	r7, #16
 80010fe:	46bd      	mov	sp, r7
 8001100:	bd80      	pop	{r7, pc}
 8001102:	bf00      	nop
 8001104:	40023c00 	.word	0x40023c00
 8001108:	40023800 	.word	0x40023800
 800110c:	08008ad4 	.word	0x08008ad4
 8001110:	20000000 	.word	0x20000000
 8001114:	20000004 	.word	0x20000004

08001118 <HAL_RCC_GetSysClockFreq>:
  *
  *
  * @retval SYSCLK frequency
  */
__weak uint32_t HAL_RCC_GetSysClockFreq(void)
{
 8001118:	b5f0      	push	{r4, r5, r6, r7, lr}
 800111a:	b085      	sub	sp, #20
 800111c:	af00      	add	r7, sp, #0
  uint32_t pllm = 0U, pllvco = 0U, pllp = 0U;
 800111e:	2300      	movs	r3, #0
 8001120:	607b      	str	r3, [r7, #4]
 8001122:	2300      	movs	r3, #0
 8001124:	60fb      	str	r3, [r7, #12]
 8001126:	2300      	movs	r3, #0
 8001128:	603b      	str	r3, [r7, #0]
  uint32_t sysclockfreq = 0U;
 800112a:	2300      	movs	r3, #0
 800112c:	60bb      	str	r3, [r7, #8]

  /* Get SYSCLK source -------------------------------------------------------*/
  switch (RCC->CFGR & RCC_CFGR_SWS)
 800112e:	4b63      	ldr	r3, [pc, #396]	; (80012bc <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001130:	689b      	ldr	r3, [r3, #8]
 8001132:	f003 030c 	and.w	r3, r3, #12
 8001136:	2b04      	cmp	r3, #4
 8001138:	d007      	beq.n	800114a <HAL_RCC_GetSysClockFreq+0x32>
 800113a:	2b08      	cmp	r3, #8
 800113c:	d008      	beq.n	8001150 <HAL_RCC_GetSysClockFreq+0x38>
 800113e:	2b00      	cmp	r3, #0
 8001140:	f040 80b4 	bne.w	80012ac <HAL_RCC_GetSysClockFreq+0x194>
  {
    case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
    {
      sysclockfreq = HSI_VALUE;
 8001144:	4b5e      	ldr	r3, [pc, #376]	; (80012c0 <HAL_RCC_GetSysClockFreq+0x1a8>)
 8001146:	60bb      	str	r3, [r7, #8]
       break;
 8001148:	e0b3      	b.n	80012b2 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
    {
      sysclockfreq = HSE_VALUE;
 800114a:	4b5e      	ldr	r3, [pc, #376]	; (80012c4 <HAL_RCC_GetSysClockFreq+0x1ac>)
 800114c:	60bb      	str	r3, [r7, #8]
      break;
 800114e:	e0b0      	b.n	80012b2 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_PLL:  /* PLL used as system clock  source */
    {
      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
      SYSCLK = PLL_VCO / PLLP */
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 8001150:	4b5a      	ldr	r3, [pc, #360]	; (80012bc <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001152:	685b      	ldr	r3, [r3, #4]
 8001154:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8001158:	607b      	str	r3, [r7, #4]
      if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
 800115a:	4b58      	ldr	r3, [pc, #352]	; (80012bc <HAL_RCC_GetSysClockFreq+0x1a4>)
 800115c:	685b      	ldr	r3, [r3, #4]
 800115e:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8001162:	2b00      	cmp	r3, #0
 8001164:	d04a      	beq.n	80011fc <HAL_RCC_GetSysClockFreq+0xe4>
      {
        /* HSE used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 8001166:	4b55      	ldr	r3, [pc, #340]	; (80012bc <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001168:	685b      	ldr	r3, [r3, #4]
 800116a:	099b      	lsrs	r3, r3, #6
 800116c:	f04f 0400 	mov.w	r4, #0
 8001170:	f240 11ff 	movw	r1, #511	; 0x1ff
 8001174:	f04f 0200 	mov.w	r2, #0
 8001178:	ea03 0501 	and.w	r5, r3, r1
 800117c:	ea04 0602 	and.w	r6, r4, r2
 8001180:	4629      	mov	r1, r5
 8001182:	4632      	mov	r2, r6
 8001184:	f04f 0300 	mov.w	r3, #0
 8001188:	f04f 0400 	mov.w	r4, #0
 800118c:	0154      	lsls	r4, r2, #5
 800118e:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 8001192:	014b      	lsls	r3, r1, #5
 8001194:	4619      	mov	r1, r3
 8001196:	4622      	mov	r2, r4
 8001198:	1b49      	subs	r1, r1, r5
 800119a:	eb62 0206 	sbc.w	r2, r2, r6
 800119e:	f04f 0300 	mov.w	r3, #0
 80011a2:	f04f 0400 	mov.w	r4, #0
 80011a6:	0194      	lsls	r4, r2, #6
 80011a8:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 80011ac:	018b      	lsls	r3, r1, #6
 80011ae:	1a5b      	subs	r3, r3, r1
 80011b0:	eb64 0402 	sbc.w	r4, r4, r2
 80011b4:	f04f 0100 	mov.w	r1, #0
 80011b8:	f04f 0200 	mov.w	r2, #0
 80011bc:	00e2      	lsls	r2, r4, #3
 80011be:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 80011c2:	00d9      	lsls	r1, r3, #3
 80011c4:	460b      	mov	r3, r1
 80011c6:	4614      	mov	r4, r2
 80011c8:	195b      	adds	r3, r3, r5
 80011ca:	eb44 0406 	adc.w	r4, r4, r6
 80011ce:	f04f 0100 	mov.w	r1, #0
 80011d2:	f04f 0200 	mov.w	r2, #0
 80011d6:	0262      	lsls	r2, r4, #9
 80011d8:	ea42 52d3 	orr.w	r2, r2, r3, lsr #23
 80011dc:	0259      	lsls	r1, r3, #9
 80011de:	460b      	mov	r3, r1
 80011e0:	4614      	mov	r4, r2
 80011e2:	4618      	mov	r0, r3
 80011e4:	4621      	mov	r1, r4
 80011e6:	687b      	ldr	r3, [r7, #4]
 80011e8:	f04f 0400 	mov.w	r4, #0
 80011ec:	461a      	mov	r2, r3
 80011ee:	4623      	mov	r3, r4
 80011f0:	f002 f96a 	bl	80034c8 <__aeabi_uldivmod>
 80011f4:	4603      	mov	r3, r0
 80011f6:	460c      	mov	r4, r1
 80011f8:	60fb      	str	r3, [r7, #12]
 80011fa:	e049      	b.n	8001290 <HAL_RCC_GetSysClockFreq+0x178>
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 80011fc:	4b2f      	ldr	r3, [pc, #188]	; (80012bc <HAL_RCC_GetSysClockFreq+0x1a4>)
 80011fe:	685b      	ldr	r3, [r3, #4]
 8001200:	099b      	lsrs	r3, r3, #6
 8001202:	f04f 0400 	mov.w	r4, #0
 8001206:	f240 11ff 	movw	r1, #511	; 0x1ff
 800120a:	f04f 0200 	mov.w	r2, #0
 800120e:	ea03 0501 	and.w	r5, r3, r1
 8001212:	ea04 0602 	and.w	r6, r4, r2
 8001216:	4629      	mov	r1, r5
 8001218:	4632      	mov	r2, r6
 800121a:	f04f 0300 	mov.w	r3, #0
 800121e:	f04f 0400 	mov.w	r4, #0
 8001222:	0154      	lsls	r4, r2, #5
 8001224:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 8001228:	014b      	lsls	r3, r1, #5
 800122a:	4619      	mov	r1, r3
 800122c:	4622      	mov	r2, r4
 800122e:	1b49      	subs	r1, r1, r5
 8001230:	eb62 0206 	sbc.w	r2, r2, r6
 8001234:	f04f 0300 	mov.w	r3, #0
 8001238:	f04f 0400 	mov.w	r4, #0
 800123c:	0194      	lsls	r4, r2, #6
 800123e:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 8001242:	018b      	lsls	r3, r1, #6
 8001244:	1a5b      	subs	r3, r3, r1
 8001246:	eb64 0402 	sbc.w	r4, r4, r2
 800124a:	f04f 0100 	mov.w	r1, #0
 800124e:	f04f 0200 	mov.w	r2, #0
 8001252:	00e2      	lsls	r2, r4, #3
 8001254:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 8001258:	00d9      	lsls	r1, r3, #3
 800125a:	460b      	mov	r3, r1
 800125c:	4614      	mov	r4, r2
 800125e:	195b      	adds	r3, r3, r5
 8001260:	eb44 0406 	adc.w	r4, r4, r6
 8001264:	f04f 0100 	mov.w	r1, #0
 8001268:	f04f 0200 	mov.w	r2, #0
 800126c:	02a2      	lsls	r2, r4, #10
 800126e:	ea42 5293 	orr.w	r2, r2, r3, lsr #22
 8001272:	0299      	lsls	r1, r3, #10
 8001274:	460b      	mov	r3, r1
 8001276:	4614      	mov	r4, r2
 8001278:	4618      	mov	r0, r3
 800127a:	4621      	mov	r1, r4
 800127c:	687b      	ldr	r3, [r7, #4]
 800127e:	f04f 0400 	mov.w	r4, #0
 8001282:	461a      	mov	r2, r3
 8001284:	4623      	mov	r3, r4
 8001286:	f002 f91f 	bl	80034c8 <__aeabi_uldivmod>
 800128a:	4603      	mov	r3, r0
 800128c:	460c      	mov	r4, r1
 800128e:	60fb      	str	r3, [r7, #12]
      }
      pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
 8001290:	4b0a      	ldr	r3, [pc, #40]	; (80012bc <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001292:	685b      	ldr	r3, [r3, #4]
 8001294:	0c1b      	lsrs	r3, r3, #16
 8001296:	f003 0303 	and.w	r3, r3, #3
 800129a:	3301      	adds	r3, #1
 800129c:	005b      	lsls	r3, r3, #1
 800129e:	603b      	str	r3, [r7, #0]

      sysclockfreq = pllvco/pllp;
 80012a0:	68fa      	ldr	r2, [r7, #12]
 80012a2:	683b      	ldr	r3, [r7, #0]
 80012a4:	fbb2 f3f3 	udiv	r3, r2, r3
 80012a8:	60bb      	str	r3, [r7, #8]
      break;
 80012aa:	e002      	b.n	80012b2 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    default:
    {
      sysclockfreq = HSI_VALUE;
 80012ac:	4b04      	ldr	r3, [pc, #16]	; (80012c0 <HAL_RCC_GetSysClockFreq+0x1a8>)
 80012ae:	60bb      	str	r3, [r7, #8]
      break;
 80012b0:	bf00      	nop
    }
  }
  return sysclockfreq;
 80012b2:	68bb      	ldr	r3, [r7, #8]
}
 80012b4:	4618      	mov	r0, r3
 80012b6:	3714      	adds	r7, #20
 80012b8:	46bd      	mov	sp, r7
 80012ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80012bc:	40023800 	.word	0x40023800
 80012c0:	00f42400 	.word	0x00f42400
 80012c4:	007a1200 	.word	0x007a1200

080012c8 <HAL_RCC_GetHCLKFreq>:
  * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
 80012c8:	b480      	push	{r7}
 80012ca:	af00      	add	r7, sp, #0
  return SystemCoreClock;
 80012cc:	4b03      	ldr	r3, [pc, #12]	; (80012dc <HAL_RCC_GetHCLKFreq+0x14>)
 80012ce:	681b      	ldr	r3, [r3, #0]
}
 80012d0:	4618      	mov	r0, r3
 80012d2:	46bd      	mov	sp, r7
 80012d4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80012d8:	4770      	bx	lr
 80012da:	bf00      	nop
 80012dc:	20000000 	.word	0x20000000

080012e0 <HAL_RCC_GetPCLK1Freq>:
  * @note   Each time PCLK1 changes, this function must be called to update the
  *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
 80012e0:	b580      	push	{r7, lr}
 80012e2:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> RCC_CFGR_PPRE1_Pos]);
 80012e4:	f7ff fff0 	bl	80012c8 <HAL_RCC_GetHCLKFreq>
 80012e8:	4601      	mov	r1, r0
 80012ea:	4b05      	ldr	r3, [pc, #20]	; (8001300 <HAL_RCC_GetPCLK1Freq+0x20>)
 80012ec:	689b      	ldr	r3, [r3, #8]
 80012ee:	0a9b      	lsrs	r3, r3, #10
 80012f0:	f003 0307 	and.w	r3, r3, #7
 80012f4:	4a03      	ldr	r2, [pc, #12]	; (8001304 <HAL_RCC_GetPCLK1Freq+0x24>)
 80012f6:	5cd3      	ldrb	r3, [r2, r3]
 80012f8:	fa21 f303 	lsr.w	r3, r1, r3
}
 80012fc:	4618      	mov	r0, r3
 80012fe:	bd80      	pop	{r7, pc}
 8001300:	40023800 	.word	0x40023800
 8001304:	08008ae4 	.word	0x08008ae4

08001308 <HAL_RCC_GetPCLK2Freq>:
  * @note   Each time PCLK2 changes, this function must be called to update the
  *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
 8001308:	b580      	push	{r7, lr}
 800130a:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> RCC_CFGR_PPRE2_Pos]);
 800130c:	f7ff ffdc 	bl	80012c8 <HAL_RCC_GetHCLKFreq>
 8001310:	4601      	mov	r1, r0
 8001312:	4b05      	ldr	r3, [pc, #20]	; (8001328 <HAL_RCC_GetPCLK2Freq+0x20>)
 8001314:	689b      	ldr	r3, [r3, #8]
 8001316:	0b5b      	lsrs	r3, r3, #13
 8001318:	f003 0307 	and.w	r3, r3, #7
 800131c:	4a03      	ldr	r2, [pc, #12]	; (800132c <HAL_RCC_GetPCLK2Freq+0x24>)
 800131e:	5cd3      	ldrb	r3, [r2, r3]
 8001320:	fa21 f303 	lsr.w	r3, r1, r3
}
 8001324:	4618      	mov	r0, r3
 8001326:	bd80      	pop	{r7, pc}
 8001328:	40023800 	.word	0x40023800
 800132c:	08008ae4 	.word	0x08008ae4

08001330 <HAL_DMA_Init>:
  * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
  *               the configuration information for the specified DMA Stream.  
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
{
 8001330:	b580      	push	{r7, lr}
 8001332:	b086      	sub	sp, #24
 8001334:	af00      	add	r7, sp, #0
 8001336:	6078      	str	r0, [r7, #4]
  uint32_t tmp = 0U;
 8001338:	2300      	movs	r3, #0
 800133a:	617b      	str	r3, [r7, #20]
  uint32_t tickstart = HAL_GetTick();
 800133c:	f7ff fa68 	bl	8000810 <HAL_GetTick>
 8001340:	6138      	str	r0, [r7, #16]
  DMA_Base_Registers *regs;

  /* Check the DMA peripheral state */
  if(hdma == NULL)
 8001342:	687b      	ldr	r3, [r7, #4]
 8001344:	2b00      	cmp	r3, #0
 8001346:	d101      	bne.n	800134c <HAL_DMA_Init+0x1c>
  {
    return HAL_ERROR;
 8001348:	2301      	movs	r3, #1
 800134a:	e099      	b.n	8001480 <HAL_DMA_Init+0x150>
    assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
    assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
  }
  
  /* Allocate lock resource */
  __HAL_UNLOCK(hdma);
 800134c:	687b      	ldr	r3, [r7, #4]
 800134e:	2200      	movs	r2, #0
 8001350:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34

  /* Change DMA peripheral state */
  hdma->State = HAL_DMA_STATE_BUSY;
 8001354:	687b      	ldr	r3, [r7, #4]
 8001356:	2202      	movs	r2, #2
 8001358:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
  
  /* Disable the peripheral */
  __HAL_DMA_DISABLE(hdma);
 800135c:	687b      	ldr	r3, [r7, #4]
 800135e:	681b      	ldr	r3, [r3, #0]
 8001360:	681a      	ldr	r2, [r3, #0]
 8001362:	687b      	ldr	r3, [r7, #4]
 8001364:	681b      	ldr	r3, [r3, #0]
 8001366:	f022 0201 	bic.w	r2, r2, #1
 800136a:	601a      	str	r2, [r3, #0]
  
  /* Check if the DMA Stream is effectively disabled */
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 800136c:	e00f      	b.n	800138e <HAL_DMA_Init+0x5e>
  {
    /* Check for the Timeout */
    if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 800136e:	f7ff fa4f 	bl	8000810 <HAL_GetTick>
 8001372:	4602      	mov	r2, r0
 8001374:	693b      	ldr	r3, [r7, #16]
 8001376:	1ad3      	subs	r3, r2, r3
 8001378:	2b05      	cmp	r3, #5
 800137a:	d908      	bls.n	800138e <HAL_DMA_Init+0x5e>
    {
      /* Update error code */
      hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 800137c:	687b      	ldr	r3, [r7, #4]
 800137e:	2220      	movs	r2, #32
 8001380:	655a      	str	r2, [r3, #84]	; 0x54
      
      /* Change the DMA state */
      hdma->State = HAL_DMA_STATE_TIMEOUT;
 8001382:	687b      	ldr	r3, [r7, #4]
 8001384:	2203      	movs	r2, #3
 8001386:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
      
      return HAL_TIMEOUT;
 800138a:	2303      	movs	r3, #3
 800138c:	e078      	b.n	8001480 <HAL_DMA_Init+0x150>
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 800138e:	687b      	ldr	r3, [r7, #4]
 8001390:	681b      	ldr	r3, [r3, #0]
 8001392:	681b      	ldr	r3, [r3, #0]
 8001394:	f003 0301 	and.w	r3, r3, #1
 8001398:	2b00      	cmp	r3, #0
 800139a:	d1e8      	bne.n	800136e <HAL_DMA_Init+0x3e>
    }
  }
  
  /* Get the CR register value */
  tmp = hdma->Instance->CR;
 800139c:	687b      	ldr	r3, [r7, #4]
 800139e:	681b      	ldr	r3, [r3, #0]
 80013a0:	681b      	ldr	r3, [r3, #0]
 80013a2:	617b      	str	r3, [r7, #20]

  /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
  tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
 80013a4:	697a      	ldr	r2, [r7, #20]
 80013a6:	4b38      	ldr	r3, [pc, #224]	; (8001488 <HAL_DMA_Init+0x158>)
 80013a8:	4013      	ands	r3, r2
 80013aa:	617b      	str	r3, [r7, #20]
                      DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
                      DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \
                      DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));

  /* Prepare the DMA Stream configuration */
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 80013ac:	687b      	ldr	r3, [r7, #4]
 80013ae:	685a      	ldr	r2, [r3, #4]
 80013b0:	687b      	ldr	r3, [r7, #4]
 80013b2:	689b      	ldr	r3, [r3, #8]
 80013b4:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 80013b6:	687b      	ldr	r3, [r7, #4]
 80013b8:	68db      	ldr	r3, [r3, #12]
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 80013ba:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 80013bc:	687b      	ldr	r3, [r7, #4]
 80013be:	691b      	ldr	r3, [r3, #16]
 80013c0:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 80013c2:	687b      	ldr	r3, [r7, #4]
 80013c4:	695b      	ldr	r3, [r3, #20]
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 80013c6:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 80013c8:	687b      	ldr	r3, [r7, #4]
 80013ca:	699b      	ldr	r3, [r3, #24]
 80013cc:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 80013ce:	687b      	ldr	r3, [r7, #4]
 80013d0:	69db      	ldr	r3, [r3, #28]
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 80013d2:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 80013d4:	687b      	ldr	r3, [r7, #4]
 80013d6:	6a1b      	ldr	r3, [r3, #32]
 80013d8:	4313      	orrs	r3, r2
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 80013da:	697a      	ldr	r2, [r7, #20]
 80013dc:	4313      	orrs	r3, r2
 80013de:	617b      	str	r3, [r7, #20]

  /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 80013e0:	687b      	ldr	r3, [r7, #4]
 80013e2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80013e4:	2b04      	cmp	r3, #4
 80013e6:	d107      	bne.n	80013f8 <HAL_DMA_Init+0xc8>
  {
    /* Get memory burst and peripheral burst */
    tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
 80013e8:	687b      	ldr	r3, [r7, #4]
 80013ea:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80013ec:	687b      	ldr	r3, [r7, #4]
 80013ee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80013f0:	4313      	orrs	r3, r2
 80013f2:	697a      	ldr	r2, [r7, #20]
 80013f4:	4313      	orrs	r3, r2
 80013f6:	617b      	str	r3, [r7, #20]
  }
  
  /* Write to DMA Stream CR register */
  hdma->Instance->CR = tmp;  
 80013f8:	687b      	ldr	r3, [r7, #4]
 80013fa:	681b      	ldr	r3, [r3, #0]
 80013fc:	697a      	ldr	r2, [r7, #20]
 80013fe:	601a      	str	r2, [r3, #0]

  /* Get the FCR register value */
  tmp = hdma->Instance->FCR;
 8001400:	687b      	ldr	r3, [r7, #4]
 8001402:	681b      	ldr	r3, [r3, #0]
 8001404:	695b      	ldr	r3, [r3, #20]
 8001406:	617b      	str	r3, [r7, #20]

  /* Clear Direct mode and FIFO threshold bits */
  tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
 8001408:	697b      	ldr	r3, [r7, #20]
 800140a:	f023 0307 	bic.w	r3, r3, #7
 800140e:	617b      	str	r3, [r7, #20]

  /* Prepare the DMA Stream FIFO configuration */
  tmp |= hdma->Init.FIFOMode;
 8001410:	687b      	ldr	r3, [r7, #4]
 8001412:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001414:	697a      	ldr	r2, [r7, #20]
 8001416:	4313      	orrs	r3, r2
 8001418:	617b      	str	r3, [r7, #20]

  /* The FIFO threshold is not used when the FIFO mode is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 800141a:	687b      	ldr	r3, [r7, #4]
 800141c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800141e:	2b04      	cmp	r3, #4
 8001420:	d117      	bne.n	8001452 <HAL_DMA_Init+0x122>
  {
    /* Get the FIFO threshold */
    tmp |= hdma->Init.FIFOThreshold;
 8001422:	687b      	ldr	r3, [r7, #4]
 8001424:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001426:	697a      	ldr	r2, [r7, #20]
 8001428:	4313      	orrs	r3, r2
 800142a:	617b      	str	r3, [r7, #20]
    
    /* Check compatibility between FIFO threshold level and size of the memory burst */
    /* for INCR4, INCR8, INCR16 bursts */
    if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
 800142c:	687b      	ldr	r3, [r7, #4]
 800142e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001430:	2b00      	cmp	r3, #0
 8001432:	d00e      	beq.n	8001452 <HAL_DMA_Init+0x122>
    {
      if (DMA_CheckFifoParam(hdma) != HAL_OK)
 8001434:	6878      	ldr	r0, [r7, #4]
 8001436:	f000 f85f 	bl	80014f8 <DMA_CheckFifoParam>
 800143a:	4603      	mov	r3, r0
 800143c:	2b00      	cmp	r3, #0
 800143e:	d008      	beq.n	8001452 <HAL_DMA_Init+0x122>
      {
        /* Update error code */
        hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
 8001440:	687b      	ldr	r3, [r7, #4]
 8001442:	2240      	movs	r2, #64	; 0x40
 8001444:	655a      	str	r2, [r3, #84]	; 0x54
        
        /* Change the DMA state */
        hdma->State = HAL_DMA_STATE_READY;
 8001446:	687b      	ldr	r3, [r7, #4]
 8001448:	2201      	movs	r2, #1
 800144a:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
        
        return HAL_ERROR; 
 800144e:	2301      	movs	r3, #1
 8001450:	e016      	b.n	8001480 <HAL_DMA_Init+0x150>
      }
    }
  }
  
  /* Write to DMA Stream FCR */
  hdma->Instance->FCR = tmp;
 8001452:	687b      	ldr	r3, [r7, #4]
 8001454:	681b      	ldr	r3, [r3, #0]
 8001456:	697a      	ldr	r2, [r7, #20]
 8001458:	615a      	str	r2, [r3, #20]

  /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
     DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
  regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 800145a:	6878      	ldr	r0, [r7, #4]
 800145c:	f000 f816 	bl	800148c <DMA_CalcBaseAndBitshift>
 8001460:	4603      	mov	r3, r0
 8001462:	60fb      	str	r3, [r7, #12]
  
  /* Clear all interrupt flags */
  regs->IFCR = 0x3FU << hdma->StreamIndex;
 8001464:	687b      	ldr	r3, [r7, #4]
 8001466:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 8001468:	223f      	movs	r2, #63	; 0x3f
 800146a:	409a      	lsls	r2, r3
 800146c:	68fb      	ldr	r3, [r7, #12]
 800146e:	609a      	str	r2, [r3, #8]

  /* Initialize the error code */
  hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 8001470:	687b      	ldr	r3, [r7, #4]
 8001472:	2200      	movs	r2, #0
 8001474:	655a      	str	r2, [r3, #84]	; 0x54
                                                                                     
  /* Initialize the DMA state */
  hdma->State = HAL_DMA_STATE_READY;
 8001476:	687b      	ldr	r3, [r7, #4]
 8001478:	2201      	movs	r2, #1
 800147a:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35

  return HAL_OK;
 800147e:	2300      	movs	r3, #0
}
 8001480:	4618      	mov	r0, r3
 8001482:	3718      	adds	r7, #24
 8001484:	46bd      	mov	sp, r7
 8001486:	bd80      	pop	{r7, pc}
 8001488:	f010803f 	.word	0xf010803f

0800148c <DMA_CalcBaseAndBitshift>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval Stream base address
  */
static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
{
 800148c:	b480      	push	{r7}
 800148e:	b085      	sub	sp, #20
 8001490:	af00      	add	r7, sp, #0
 8001492:	6078      	str	r0, [r7, #4]
  uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
 8001494:	687b      	ldr	r3, [r7, #4]
 8001496:	681b      	ldr	r3, [r3, #0]
 8001498:	b2db      	uxtb	r3, r3
 800149a:	3b10      	subs	r3, #16
 800149c:	4a14      	ldr	r2, [pc, #80]	; (80014f0 <DMA_CalcBaseAndBitshift+0x64>)
 800149e:	fba2 2303 	umull	r2, r3, r2, r3
 80014a2:	091b      	lsrs	r3, r3, #4
 80014a4:	60fb      	str	r3, [r7, #12]
  
  /* lookup table for necessary bitshift of flags within status registers */
  static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
  hdma->StreamIndex = flagBitshiftOffset[stream_number];
 80014a6:	4a13      	ldr	r2, [pc, #76]	; (80014f4 <DMA_CalcBaseAndBitshift+0x68>)
 80014a8:	68fb      	ldr	r3, [r7, #12]
 80014aa:	4413      	add	r3, r2
 80014ac:	781b      	ldrb	r3, [r3, #0]
 80014ae:	461a      	mov	r2, r3
 80014b0:	687b      	ldr	r3, [r7, #4]
 80014b2:	65da      	str	r2, [r3, #92]	; 0x5c
  
  if (stream_number > 3U)
 80014b4:	68fb      	ldr	r3, [r7, #12]
 80014b6:	2b03      	cmp	r3, #3
 80014b8:	d909      	bls.n	80014ce <DMA_CalcBaseAndBitshift+0x42>
  {
    /* return pointer to HISR and HIFCR */
    hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
 80014ba:	687b      	ldr	r3, [r7, #4]
 80014bc:	681b      	ldr	r3, [r3, #0]
 80014be:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 80014c2:	f023 0303 	bic.w	r3, r3, #3
 80014c6:	1d1a      	adds	r2, r3, #4
 80014c8:	687b      	ldr	r3, [r7, #4]
 80014ca:	659a      	str	r2, [r3, #88]	; 0x58
 80014cc:	e007      	b.n	80014de <DMA_CalcBaseAndBitshift+0x52>
  }
  else
  {
    /* return pointer to LISR and LIFCR */
    hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
 80014ce:	687b      	ldr	r3, [r7, #4]
 80014d0:	681b      	ldr	r3, [r3, #0]
 80014d2:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 80014d6:	f023 0303 	bic.w	r3, r3, #3
 80014da:	687a      	ldr	r2, [r7, #4]
 80014dc:	6593      	str	r3, [r2, #88]	; 0x58
  }
  
  return hdma->StreamBaseAddress;
 80014de:	687b      	ldr	r3, [r7, #4]
 80014e0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
}
 80014e2:	4618      	mov	r0, r3
 80014e4:	3714      	adds	r7, #20
 80014e6:	46bd      	mov	sp, r7
 80014e8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80014ec:	4770      	bx	lr
 80014ee:	bf00      	nop
 80014f0:	aaaaaaab 	.word	0xaaaaaaab
 80014f4:	08008aec 	.word	0x08008aec

080014f8 <DMA_CheckFifoParam>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval HAL status
  */
static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
{
 80014f8:	b480      	push	{r7}
 80014fa:	b085      	sub	sp, #20
 80014fc:	af00      	add	r7, sp, #0
 80014fe:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef status = HAL_OK;
 8001500:	2300      	movs	r3, #0
 8001502:	73fb      	strb	r3, [r7, #15]
  uint32_t tmp = hdma->Init.FIFOThreshold;
 8001504:	687b      	ldr	r3, [r7, #4]
 8001506:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001508:	60bb      	str	r3, [r7, #8]
  
  /* Memory Data size equal to Byte */
  if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
 800150a:	687b      	ldr	r3, [r7, #4]
 800150c:	699b      	ldr	r3, [r3, #24]
 800150e:	2b00      	cmp	r3, #0
 8001510:	d11f      	bne.n	8001552 <DMA_CheckFifoParam+0x5a>
  {
    switch (tmp)
 8001512:	68bb      	ldr	r3, [r7, #8]
 8001514:	2b03      	cmp	r3, #3
 8001516:	d855      	bhi.n	80015c4 <DMA_CheckFifoParam+0xcc>
 8001518:	a201      	add	r2, pc, #4	; (adr r2, 8001520 <DMA_CheckFifoParam+0x28>)
 800151a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800151e:	bf00      	nop
 8001520:	08001531 	.word	0x08001531
 8001524:	08001543 	.word	0x08001543
 8001528:	08001531 	.word	0x08001531
 800152c:	080015c5 	.word	0x080015c5
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001530:	687b      	ldr	r3, [r7, #4]
 8001532:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001534:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001538:	2b00      	cmp	r3, #0
 800153a:	d045      	beq.n	80015c8 <DMA_CheckFifoParam+0xd0>
      {
        status = HAL_ERROR;
 800153c:	2301      	movs	r3, #1
 800153e:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001540:	e042      	b.n	80015c8 <DMA_CheckFifoParam+0xd0>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001542:	687b      	ldr	r3, [r7, #4]
 8001544:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001546:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 800154a:	d13f      	bne.n	80015cc <DMA_CheckFifoParam+0xd4>
      {
        status = HAL_ERROR;
 800154c:	2301      	movs	r3, #1
 800154e:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001550:	e03c      	b.n	80015cc <DMA_CheckFifoParam+0xd4>
      break;
    }
  }
  
  /* Memory Data size equal to Half-Word */
  else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
 8001552:	687b      	ldr	r3, [r7, #4]
 8001554:	699b      	ldr	r3, [r3, #24]
 8001556:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 800155a:	d121      	bne.n	80015a0 <DMA_CheckFifoParam+0xa8>
  {
    switch (tmp)
 800155c:	68bb      	ldr	r3, [r7, #8]
 800155e:	2b03      	cmp	r3, #3
 8001560:	d836      	bhi.n	80015d0 <DMA_CheckFifoParam+0xd8>
 8001562:	a201      	add	r2, pc, #4	; (adr r2, 8001568 <DMA_CheckFifoParam+0x70>)
 8001564:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001568:	08001579 	.word	0x08001579
 800156c:	0800157f 	.word	0x0800157f
 8001570:	08001579 	.word	0x08001579
 8001574:	08001591 	.word	0x08001591
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      status = HAL_ERROR;
 8001578:	2301      	movs	r3, #1
 800157a:	73fb      	strb	r3, [r7, #15]
      break;
 800157c:	e02f      	b.n	80015de <DMA_CheckFifoParam+0xe6>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 800157e:	687b      	ldr	r3, [r7, #4]
 8001580:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001582:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001586:	2b00      	cmp	r3, #0
 8001588:	d024      	beq.n	80015d4 <DMA_CheckFifoParam+0xdc>
      {
        status = HAL_ERROR;
 800158a:	2301      	movs	r3, #1
 800158c:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800158e:	e021      	b.n	80015d4 <DMA_CheckFifoParam+0xdc>
    case DMA_FIFO_THRESHOLD_FULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001590:	687b      	ldr	r3, [r7, #4]
 8001592:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001594:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001598:	d11e      	bne.n	80015d8 <DMA_CheckFifoParam+0xe0>
      {
        status = HAL_ERROR;
 800159a:	2301      	movs	r3, #1
 800159c:	73fb      	strb	r3, [r7, #15]
      }
      break;   
 800159e:	e01b      	b.n	80015d8 <DMA_CheckFifoParam+0xe0>
  }
  
  /* Memory Data size equal to Word */
  else
  {
    switch (tmp)
 80015a0:	68bb      	ldr	r3, [r7, #8]
 80015a2:	2b02      	cmp	r3, #2
 80015a4:	d902      	bls.n	80015ac <DMA_CheckFifoParam+0xb4>
 80015a6:	2b03      	cmp	r3, #3
 80015a8:	d003      	beq.n	80015b2 <DMA_CheckFifoParam+0xba>
      {
        status = HAL_ERROR;
      }
      break;
    default:
      break;
 80015aa:	e018      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      status = HAL_ERROR;
 80015ac:	2301      	movs	r3, #1
 80015ae:	73fb      	strb	r3, [r7, #15]
      break;
 80015b0:	e015      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 80015b2:	687b      	ldr	r3, [r7, #4]
 80015b4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015b6:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 80015ba:	2b00      	cmp	r3, #0
 80015bc:	d00e      	beq.n	80015dc <DMA_CheckFifoParam+0xe4>
        status = HAL_ERROR;
 80015be:	2301      	movs	r3, #1
 80015c0:	73fb      	strb	r3, [r7, #15]
      break;
 80015c2:	e00b      	b.n	80015dc <DMA_CheckFifoParam+0xe4>
      break;
 80015c4:	bf00      	nop
 80015c6:	e00a      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      break;
 80015c8:	bf00      	nop
 80015ca:	e008      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      break;
 80015cc:	bf00      	nop
 80015ce:	e006      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      break;
 80015d0:	bf00      	nop
 80015d2:	e004      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      break;
 80015d4:	bf00      	nop
 80015d6:	e002      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      break;   
 80015d8:	bf00      	nop
 80015da:	e000      	b.n	80015de <DMA_CheckFifoParam+0xe6>
      break;
 80015dc:	bf00      	nop
    }
  } 
  
  return status; 
 80015de:	7bfb      	ldrb	r3, [r7, #15]
}
 80015e0:	4618      	mov	r0, r3
 80015e2:	3714      	adds	r7, #20
 80015e4:	46bd      	mov	sp, r7
 80015e6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80015ea:	4770      	bx	lr

080015ec <HAL_GPIO_Init>:
  * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 80015ec:	b480      	push	{r7}
 80015ee:	b089      	sub	sp, #36	; 0x24
 80015f0:	af00      	add	r7, sp, #0
 80015f2:	6078      	str	r0, [r7, #4]
 80015f4:	6039      	str	r1, [r7, #0]
  uint32_t position;
  uint32_t ioposition = 0x00U;
 80015f6:	2300      	movs	r3, #0
 80015f8:	617b      	str	r3, [r7, #20]
  uint32_t iocurrent = 0x00U;
 80015fa:	2300      	movs	r3, #0
 80015fc:	613b      	str	r3, [r7, #16]
  uint32_t temp = 0x00U;
 80015fe:	2300      	movs	r3, #0
 8001600:	61bb      	str	r3, [r7, #24]
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  assert_param(IS_GPIO_PULL(GPIO_Init->Pull));

  /* Configure the port pins */
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001602:	2300      	movs	r3, #0
 8001604:	61fb      	str	r3, [r7, #28]
 8001606:	e159      	b.n	80018bc <HAL_GPIO_Init+0x2d0>
  {
    /* Get the IO position */
    ioposition = 0x01U << position;
 8001608:	2201      	movs	r2, #1
 800160a:	69fb      	ldr	r3, [r7, #28]
 800160c:	fa02 f303 	lsl.w	r3, r2, r3
 8001610:	617b      	str	r3, [r7, #20]
    /* Get the current IO position */
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 8001612:	683b      	ldr	r3, [r7, #0]
 8001614:	681b      	ldr	r3, [r3, #0]
 8001616:	697a      	ldr	r2, [r7, #20]
 8001618:	4013      	ands	r3, r2
 800161a:	613b      	str	r3, [r7, #16]

    if(iocurrent == ioposition)
 800161c:	693a      	ldr	r2, [r7, #16]
 800161e:	697b      	ldr	r3, [r7, #20]
 8001620:	429a      	cmp	r2, r3
 8001622:	f040 8148 	bne.w	80018b6 <HAL_GPIO_Init+0x2ca>
    {
      /*--------------------- GPIO Mode Configuration ------------------------*/
      /* In case of Output or Alternate function mode selection */
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 8001626:	683b      	ldr	r3, [r7, #0]
 8001628:	685b      	ldr	r3, [r3, #4]
 800162a:	f003 0303 	and.w	r3, r3, #3
 800162e:	2b01      	cmp	r3, #1
 8001630:	d005      	beq.n	800163e <HAL_GPIO_Init+0x52>
          (GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 8001632:	683b      	ldr	r3, [r7, #0]
 8001634:	685b      	ldr	r3, [r3, #4]
 8001636:	f003 0303 	and.w	r3, r3, #3
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 800163a:	2b02      	cmp	r3, #2
 800163c:	d130      	bne.n	80016a0 <HAL_GPIO_Init+0xb4>
      {
        /* Check the Speed parameter */
        assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
        /* Configure the IO Speed */
        temp = GPIOx->OSPEEDR; 
 800163e:	687b      	ldr	r3, [r7, #4]
 8001640:	689b      	ldr	r3, [r3, #8]
 8001642:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
 8001644:	69fb      	ldr	r3, [r7, #28]
 8001646:	005b      	lsls	r3, r3, #1
 8001648:	2203      	movs	r2, #3
 800164a:	fa02 f303 	lsl.w	r3, r2, r3
 800164e:	43db      	mvns	r3, r3
 8001650:	69ba      	ldr	r2, [r7, #24]
 8001652:	4013      	ands	r3, r2
 8001654:	61bb      	str	r3, [r7, #24]
        temp |= (GPIO_Init->Speed << (position * 2U));
 8001656:	683b      	ldr	r3, [r7, #0]
 8001658:	68da      	ldr	r2, [r3, #12]
 800165a:	69fb      	ldr	r3, [r7, #28]
 800165c:	005b      	lsls	r3, r3, #1
 800165e:	fa02 f303 	lsl.w	r3, r2, r3
 8001662:	69ba      	ldr	r2, [r7, #24]
 8001664:	4313      	orrs	r3, r2
 8001666:	61bb      	str	r3, [r7, #24]
        GPIOx->OSPEEDR = temp;
 8001668:	687b      	ldr	r3, [r7, #4]
 800166a:	69ba      	ldr	r2, [r7, #24]
 800166c:	609a      	str	r2, [r3, #8]

        /* Configure the IO Output Type */
        temp = GPIOx->OTYPER;
 800166e:	687b      	ldr	r3, [r7, #4]
 8001670:	685b      	ldr	r3, [r3, #4]
 8001672:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 8001674:	2201      	movs	r2, #1
 8001676:	69fb      	ldr	r3, [r7, #28]
 8001678:	fa02 f303 	lsl.w	r3, r2, r3
 800167c:	43db      	mvns	r3, r3
 800167e:	69ba      	ldr	r2, [r7, #24]
 8001680:	4013      	ands	r3, r2
 8001682:	61bb      	str	r3, [r7, #24]
        temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 8001684:	683b      	ldr	r3, [r7, #0]
 8001686:	685b      	ldr	r3, [r3, #4]
 8001688:	091b      	lsrs	r3, r3, #4
 800168a:	f003 0201 	and.w	r2, r3, #1
 800168e:	69fb      	ldr	r3, [r7, #28]
 8001690:	fa02 f303 	lsl.w	r3, r2, r3
 8001694:	69ba      	ldr	r2, [r7, #24]
 8001696:	4313      	orrs	r3, r2
 8001698:	61bb      	str	r3, [r7, #24]
        GPIOx->OTYPER = temp;
 800169a:	687b      	ldr	r3, [r7, #4]
 800169c:	69ba      	ldr	r2, [r7, #24]
 800169e:	605a      	str	r2, [r3, #4]
       }

      if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
 80016a0:	683b      	ldr	r3, [r7, #0]
 80016a2:	685b      	ldr	r3, [r3, #4]
 80016a4:	f003 0303 	and.w	r3, r3, #3
 80016a8:	2b03      	cmp	r3, #3
 80016aa:	d017      	beq.n	80016dc <HAL_GPIO_Init+0xf0>
      {
        /* Activate the Pull-up or Pull down resistor for the current IO */
        temp = GPIOx->PUPDR;
 80016ac:	687b      	ldr	r3, [r7, #4]
 80016ae:	68db      	ldr	r3, [r3, #12]
 80016b0:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
 80016b2:	69fb      	ldr	r3, [r7, #28]
 80016b4:	005b      	lsls	r3, r3, #1
 80016b6:	2203      	movs	r2, #3
 80016b8:	fa02 f303 	lsl.w	r3, r2, r3
 80016bc:	43db      	mvns	r3, r3
 80016be:	69ba      	ldr	r2, [r7, #24]
 80016c0:	4013      	ands	r3, r2
 80016c2:	61bb      	str	r3, [r7, #24]
        temp |= ((GPIO_Init->Pull) << (position * 2U));
 80016c4:	683b      	ldr	r3, [r7, #0]
 80016c6:	689a      	ldr	r2, [r3, #8]
 80016c8:	69fb      	ldr	r3, [r7, #28]
 80016ca:	005b      	lsls	r3, r3, #1
 80016cc:	fa02 f303 	lsl.w	r3, r2, r3
 80016d0:	69ba      	ldr	r2, [r7, #24]
 80016d2:	4313      	orrs	r3, r2
 80016d4:	61bb      	str	r3, [r7, #24]
        GPIOx->PUPDR = temp;
 80016d6:	687b      	ldr	r3, [r7, #4]
 80016d8:	69ba      	ldr	r2, [r7, #24]
 80016da:	60da      	str	r2, [r3, #12]
      }

      /* In case of Alternate function mode selection */
      if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 80016dc:	683b      	ldr	r3, [r7, #0]
 80016de:	685b      	ldr	r3, [r3, #4]
 80016e0:	f003 0303 	and.w	r3, r3, #3
 80016e4:	2b02      	cmp	r3, #2
 80016e6:	d123      	bne.n	8001730 <HAL_GPIO_Init+0x144>
      {
        /* Check the Alternate function parameter */
        assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
        /* Configure Alternate function mapped with the current IO */
        temp = GPIOx->AFR[position >> 3U];
 80016e8:	69fb      	ldr	r3, [r7, #28]
 80016ea:	08da      	lsrs	r2, r3, #3
 80016ec:	687b      	ldr	r3, [r7, #4]
 80016ee:	3208      	adds	r2, #8
 80016f0:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80016f4:	61bb      	str	r3, [r7, #24]
        temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
 80016f6:	69fb      	ldr	r3, [r7, #28]
 80016f8:	f003 0307 	and.w	r3, r3, #7
 80016fc:	009b      	lsls	r3, r3, #2
 80016fe:	220f      	movs	r2, #15
 8001700:	fa02 f303 	lsl.w	r3, r2, r3
 8001704:	43db      	mvns	r3, r3
 8001706:	69ba      	ldr	r2, [r7, #24]
 8001708:	4013      	ands	r3, r2
 800170a:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
 800170c:	683b      	ldr	r3, [r7, #0]
 800170e:	691a      	ldr	r2, [r3, #16]
 8001710:	69fb      	ldr	r3, [r7, #28]
 8001712:	f003 0307 	and.w	r3, r3, #7
 8001716:	009b      	lsls	r3, r3, #2
 8001718:	fa02 f303 	lsl.w	r3, r2, r3
 800171c:	69ba      	ldr	r2, [r7, #24]
 800171e:	4313      	orrs	r3, r2
 8001720:	61bb      	str	r3, [r7, #24]
        GPIOx->AFR[position >> 3U] = temp;
 8001722:	69fb      	ldr	r3, [r7, #28]
 8001724:	08da      	lsrs	r2, r3, #3
 8001726:	687b      	ldr	r3, [r7, #4]
 8001728:	3208      	adds	r2, #8
 800172a:	69b9      	ldr	r1, [r7, #24]
 800172c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
      }

      /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
      temp = GPIOx->MODER;
 8001730:	687b      	ldr	r3, [r7, #4]
 8001732:	681b      	ldr	r3, [r3, #0]
 8001734:	61bb      	str	r3, [r7, #24]
      temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
 8001736:	69fb      	ldr	r3, [r7, #28]
 8001738:	005b      	lsls	r3, r3, #1
 800173a:	2203      	movs	r2, #3
 800173c:	fa02 f303 	lsl.w	r3, r2, r3
 8001740:	43db      	mvns	r3, r3
 8001742:	69ba      	ldr	r2, [r7, #24]
 8001744:	4013      	ands	r3, r2
 8001746:	61bb      	str	r3, [r7, #24]
      temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 8001748:	683b      	ldr	r3, [r7, #0]
 800174a:	685b      	ldr	r3, [r3, #4]
 800174c:	f003 0203 	and.w	r2, r3, #3
 8001750:	69fb      	ldr	r3, [r7, #28]
 8001752:	005b      	lsls	r3, r3, #1
 8001754:	fa02 f303 	lsl.w	r3, r2, r3
 8001758:	69ba      	ldr	r2, [r7, #24]
 800175a:	4313      	orrs	r3, r2
 800175c:	61bb      	str	r3, [r7, #24]
      GPIOx->MODER = temp;
 800175e:	687b      	ldr	r3, [r7, #4]
 8001760:	69ba      	ldr	r2, [r7, #24]
 8001762:	601a      	str	r2, [r3, #0]

      /*--------------------- EXTI Mode Configuration ------------------------*/
      /* Configure the External Interrupt or event for the current IO */
      if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 8001764:	683b      	ldr	r3, [r7, #0]
 8001766:	685b      	ldr	r3, [r3, #4]
 8001768:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800176c:	2b00      	cmp	r3, #0
 800176e:	f000 80a2 	beq.w	80018b6 <HAL_GPIO_Init+0x2ca>
      {
        /* Enable SYSCFG Clock */
        __HAL_RCC_SYSCFG_CLK_ENABLE();
 8001772:	2300      	movs	r3, #0
 8001774:	60fb      	str	r3, [r7, #12]
 8001776:	4b56      	ldr	r3, [pc, #344]	; (80018d0 <HAL_GPIO_Init+0x2e4>)
 8001778:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800177a:	4a55      	ldr	r2, [pc, #340]	; (80018d0 <HAL_GPIO_Init+0x2e4>)
 800177c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001780:	6453      	str	r3, [r2, #68]	; 0x44
 8001782:	4b53      	ldr	r3, [pc, #332]	; (80018d0 <HAL_GPIO_Init+0x2e4>)
 8001784:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001786:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 800178a:	60fb      	str	r3, [r7, #12]
 800178c:	68fb      	ldr	r3, [r7, #12]

        temp = SYSCFG->EXTICR[position >> 2U];
 800178e:	4a51      	ldr	r2, [pc, #324]	; (80018d4 <HAL_GPIO_Init+0x2e8>)
 8001790:	69fb      	ldr	r3, [r7, #28]
 8001792:	089b      	lsrs	r3, r3, #2
 8001794:	3302      	adds	r3, #2
 8001796:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800179a:	61bb      	str	r3, [r7, #24]
        temp &= ~(0x0FU << (4U * (position & 0x03U)));
 800179c:	69fb      	ldr	r3, [r7, #28]
 800179e:	f003 0303 	and.w	r3, r3, #3
 80017a2:	009b      	lsls	r3, r3, #2
 80017a4:	220f      	movs	r2, #15
 80017a6:	fa02 f303 	lsl.w	r3, r2, r3
 80017aa:	43db      	mvns	r3, r3
 80017ac:	69ba      	ldr	r2, [r7, #24]
 80017ae:	4013      	ands	r3, r2
 80017b0:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
 80017b2:	687b      	ldr	r3, [r7, #4]
 80017b4:	4a48      	ldr	r2, [pc, #288]	; (80018d8 <HAL_GPIO_Init+0x2ec>)
 80017b6:	4293      	cmp	r3, r2
 80017b8:	d019      	beq.n	80017ee <HAL_GPIO_Init+0x202>
 80017ba:	687b      	ldr	r3, [r7, #4]
 80017bc:	4a47      	ldr	r2, [pc, #284]	; (80018dc <HAL_GPIO_Init+0x2f0>)
 80017be:	4293      	cmp	r3, r2
 80017c0:	d013      	beq.n	80017ea <HAL_GPIO_Init+0x1fe>
 80017c2:	687b      	ldr	r3, [r7, #4]
 80017c4:	4a46      	ldr	r2, [pc, #280]	; (80018e0 <HAL_GPIO_Init+0x2f4>)
 80017c6:	4293      	cmp	r3, r2
 80017c8:	d00d      	beq.n	80017e6 <HAL_GPIO_Init+0x1fa>
 80017ca:	687b      	ldr	r3, [r7, #4]
 80017cc:	4a45      	ldr	r2, [pc, #276]	; (80018e4 <HAL_GPIO_Init+0x2f8>)
 80017ce:	4293      	cmp	r3, r2
 80017d0:	d007      	beq.n	80017e2 <HAL_GPIO_Init+0x1f6>
 80017d2:	687b      	ldr	r3, [r7, #4]
 80017d4:	4a44      	ldr	r2, [pc, #272]	; (80018e8 <HAL_GPIO_Init+0x2fc>)
 80017d6:	4293      	cmp	r3, r2
 80017d8:	d101      	bne.n	80017de <HAL_GPIO_Init+0x1f2>
 80017da:	2304      	movs	r3, #4
 80017dc:	e008      	b.n	80017f0 <HAL_GPIO_Init+0x204>
 80017de:	2307      	movs	r3, #7
 80017e0:	e006      	b.n	80017f0 <HAL_GPIO_Init+0x204>
 80017e2:	2303      	movs	r3, #3
 80017e4:	e004      	b.n	80017f0 <HAL_GPIO_Init+0x204>
 80017e6:	2302      	movs	r3, #2
 80017e8:	e002      	b.n	80017f0 <HAL_GPIO_Init+0x204>
 80017ea:	2301      	movs	r3, #1
 80017ec:	e000      	b.n	80017f0 <HAL_GPIO_Init+0x204>
 80017ee:	2300      	movs	r3, #0
 80017f0:	69fa      	ldr	r2, [r7, #28]
 80017f2:	f002 0203 	and.w	r2, r2, #3
 80017f6:	0092      	lsls	r2, r2, #2
 80017f8:	4093      	lsls	r3, r2
 80017fa:	69ba      	ldr	r2, [r7, #24]
 80017fc:	4313      	orrs	r3, r2
 80017fe:	61bb      	str	r3, [r7, #24]
        SYSCFG->EXTICR[position >> 2U] = temp;
 8001800:	4934      	ldr	r1, [pc, #208]	; (80018d4 <HAL_GPIO_Init+0x2e8>)
 8001802:	69fb      	ldr	r3, [r7, #28]
 8001804:	089b      	lsrs	r3, r3, #2
 8001806:	3302      	adds	r3, #2
 8001808:	69ba      	ldr	r2, [r7, #24]
 800180a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]

        /* Clear EXTI line configuration */
        temp = EXTI->IMR;
 800180e:	4b37      	ldr	r3, [pc, #220]	; (80018ec <HAL_GPIO_Init+0x300>)
 8001810:	681b      	ldr	r3, [r3, #0]
 8001812:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001814:	693b      	ldr	r3, [r7, #16]
 8001816:	43db      	mvns	r3, r3
 8001818:	69ba      	ldr	r2, [r7, #24]
 800181a:	4013      	ands	r3, r2
 800181c:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 800181e:	683b      	ldr	r3, [r7, #0]
 8001820:	685b      	ldr	r3, [r3, #4]
 8001822:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 8001826:	2b00      	cmp	r3, #0
 8001828:	d003      	beq.n	8001832 <HAL_GPIO_Init+0x246>
        {
          temp |= iocurrent;
 800182a:	69ba      	ldr	r2, [r7, #24]
 800182c:	693b      	ldr	r3, [r7, #16]
 800182e:	4313      	orrs	r3, r2
 8001830:	61bb      	str	r3, [r7, #24]
        }
        EXTI->IMR = temp;
 8001832:	4a2e      	ldr	r2, [pc, #184]	; (80018ec <HAL_GPIO_Init+0x300>)
 8001834:	69bb      	ldr	r3, [r7, #24]
 8001836:	6013      	str	r3, [r2, #0]

        temp = EXTI->EMR;
 8001838:	4b2c      	ldr	r3, [pc, #176]	; (80018ec <HAL_GPIO_Init+0x300>)
 800183a:	685b      	ldr	r3, [r3, #4]
 800183c:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 800183e:	693b      	ldr	r3, [r7, #16]
 8001840:	43db      	mvns	r3, r3
 8001842:	69ba      	ldr	r2, [r7, #24]
 8001844:	4013      	ands	r3, r2
 8001846:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 8001848:	683b      	ldr	r3, [r7, #0]
 800184a:	685b      	ldr	r3, [r3, #4]
 800184c:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001850:	2b00      	cmp	r3, #0
 8001852:	d003      	beq.n	800185c <HAL_GPIO_Init+0x270>
        {
          temp |= iocurrent;
 8001854:	69ba      	ldr	r2, [r7, #24]
 8001856:	693b      	ldr	r3, [r7, #16]
 8001858:	4313      	orrs	r3, r2
 800185a:	61bb      	str	r3, [r7, #24]
        }
        EXTI->EMR = temp;
 800185c:	4a23      	ldr	r2, [pc, #140]	; (80018ec <HAL_GPIO_Init+0x300>)
 800185e:	69bb      	ldr	r3, [r7, #24]
 8001860:	6053      	str	r3, [r2, #4]

        /* Clear Rising Falling edge configuration */
        temp = EXTI->RTSR;
 8001862:	4b22      	ldr	r3, [pc, #136]	; (80018ec <HAL_GPIO_Init+0x300>)
 8001864:	689b      	ldr	r3, [r3, #8]
 8001866:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001868:	693b      	ldr	r3, [r7, #16]
 800186a:	43db      	mvns	r3, r3
 800186c:	69ba      	ldr	r2, [r7, #24]
 800186e:	4013      	ands	r3, r2
 8001870:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8001872:	683b      	ldr	r3, [r7, #0]
 8001874:	685b      	ldr	r3, [r3, #4]
 8001876:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 800187a:	2b00      	cmp	r3, #0
 800187c:	d003      	beq.n	8001886 <HAL_GPIO_Init+0x29a>
        {
          temp |= iocurrent;
 800187e:	69ba      	ldr	r2, [r7, #24]
 8001880:	693b      	ldr	r3, [r7, #16]
 8001882:	4313      	orrs	r3, r2
 8001884:	61bb      	str	r3, [r7, #24]
        }
        EXTI->RTSR = temp;
 8001886:	4a19      	ldr	r2, [pc, #100]	; (80018ec <HAL_GPIO_Init+0x300>)
 8001888:	69bb      	ldr	r3, [r7, #24]
 800188a:	6093      	str	r3, [r2, #8]

        temp = EXTI->FTSR;
 800188c:	4b17      	ldr	r3, [pc, #92]	; (80018ec <HAL_GPIO_Init+0x300>)
 800188e:	68db      	ldr	r3, [r3, #12]
 8001890:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001892:	693b      	ldr	r3, [r7, #16]
 8001894:	43db      	mvns	r3, r3
 8001896:	69ba      	ldr	r2, [r7, #24]
 8001898:	4013      	ands	r3, r2
 800189a:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 800189c:	683b      	ldr	r3, [r7, #0]
 800189e:	685b      	ldr	r3, [r3, #4]
 80018a0:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 80018a4:	2b00      	cmp	r3, #0
 80018a6:	d003      	beq.n	80018b0 <HAL_GPIO_Init+0x2c4>
        {
          temp |= iocurrent;
 80018a8:	69ba      	ldr	r2, [r7, #24]
 80018aa:	693b      	ldr	r3, [r7, #16]
 80018ac:	4313      	orrs	r3, r2
 80018ae:	61bb      	str	r3, [r7, #24]
        }
        EXTI->FTSR = temp;
 80018b0:	4a0e      	ldr	r2, [pc, #56]	; (80018ec <HAL_GPIO_Init+0x300>)
 80018b2:	69bb      	ldr	r3, [r7, #24]
 80018b4:	60d3      	str	r3, [r2, #12]
  for(position = 0U; position < GPIO_NUMBER; position++)
 80018b6:	69fb      	ldr	r3, [r7, #28]
 80018b8:	3301      	adds	r3, #1
 80018ba:	61fb      	str	r3, [r7, #28]
 80018bc:	69fb      	ldr	r3, [r7, #28]
 80018be:	2b0f      	cmp	r3, #15
 80018c0:	f67f aea2 	bls.w	8001608 <HAL_GPIO_Init+0x1c>
      }
    }
  }
}
 80018c4:	bf00      	nop
 80018c6:	3724      	adds	r7, #36	; 0x24
 80018c8:	46bd      	mov	sp, r7
 80018ca:	f85d 7b04 	ldr.w	r7, [sp], #4
 80018ce:	4770      	bx	lr
 80018d0:	40023800 	.word	0x40023800
 80018d4:	40013800 	.word	0x40013800
 80018d8:	40020000 	.word	0x40020000
 80018dc:	40020400 	.word	0x40020400
 80018e0:	40020800 	.word	0x40020800
 80018e4:	40020c00 	.word	0x40020c00
 80018e8:	40021000 	.word	0x40021000
 80018ec:	40013c00 	.word	0x40013c00

080018f0 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 80018f0:	b480      	push	{r7}
 80018f2:	b083      	sub	sp, #12
 80018f4:	af00      	add	r7, sp, #0
 80018f6:	6078      	str	r0, [r7, #4]
 80018f8:	460b      	mov	r3, r1
 80018fa:	807b      	strh	r3, [r7, #2]
 80018fc:	4613      	mov	r3, r2
 80018fe:	707b      	strb	r3, [r7, #1]
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if(PinState != GPIO_PIN_RESET)
 8001900:	787b      	ldrb	r3, [r7, #1]
 8001902:	2b00      	cmp	r3, #0
 8001904:	d003      	beq.n	800190e <HAL_GPIO_WritePin+0x1e>
  {
    GPIOx->BSRR = GPIO_Pin;
 8001906:	887a      	ldrh	r2, [r7, #2]
 8001908:	687b      	ldr	r3, [r7, #4]
 800190a:	619a      	str	r2, [r3, #24]
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
  }
}
 800190c:	e003      	b.n	8001916 <HAL_GPIO_WritePin+0x26>
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
 800190e:	887b      	ldrh	r3, [r7, #2]
 8001910:	041a      	lsls	r2, r3, #16
 8001912:	687b      	ldr	r3, [r7, #4]
 8001914:	619a      	str	r2, [r3, #24]
}
 8001916:	bf00      	nop
 8001918:	370c      	adds	r7, #12
 800191a:	46bd      	mov	sp, r7
 800191c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001920:	4770      	bx	lr

08001922 <HAL_UART_Init>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 8001922:	b580      	push	{r7, lr}
 8001924:	b082      	sub	sp, #8
 8001926:	af00      	add	r7, sp, #0
 8001928:	6078      	str	r0, [r7, #4]
  /* Check the UART handle allocation */
  if (huart == NULL)
 800192a:	687b      	ldr	r3, [r7, #4]
 800192c:	2b00      	cmp	r3, #0
 800192e:	d101      	bne.n	8001934 <HAL_UART_Init+0x12>
  {
    return HAL_ERROR;
 8001930:	2301      	movs	r3, #1
 8001932:	e03f      	b.n	80019b4 <HAL_UART_Init+0x92>
    assert_param(IS_UART_INSTANCE(huart->Instance));
  }
  assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
  assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));

  if (huart->gState == HAL_UART_STATE_RESET)
 8001934:	687b      	ldr	r3, [r7, #4]
 8001936:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 800193a:	b2db      	uxtb	r3, r3
 800193c:	2b00      	cmp	r3, #0
 800193e:	d106      	bne.n	800194e <HAL_UART_Init+0x2c>
  {
    /* Allocate lock resource and initialize it */
    huart->Lock = HAL_UNLOCKED;
 8001940:	687b      	ldr	r3, [r7, #4]
 8001942:	2200      	movs	r2, #0
 8001944:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Init the low level hardware */
    huart->MspInitCallback(huart);
#else
    /* Init the low level hardware : GPIO, CLOCK */
    HAL_UART_MspInit(huart);
 8001948:	6878      	ldr	r0, [r7, #4]
 800194a:	f7fe fd01 	bl	8000350 <HAL_UART_MspInit>
#endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
  }

  huart->gState = HAL_UART_STATE_BUSY;
 800194e:	687b      	ldr	r3, [r7, #4]
 8001950:	2224      	movs	r2, #36	; 0x24
 8001952:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

  /* Disable the peripheral */
  __HAL_UART_DISABLE(huart);
 8001956:	687b      	ldr	r3, [r7, #4]
 8001958:	681b      	ldr	r3, [r3, #0]
 800195a:	68da      	ldr	r2, [r3, #12]
 800195c:	687b      	ldr	r3, [r7, #4]
 800195e:	681b      	ldr	r3, [r3, #0]
 8001960:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8001964:	60da      	str	r2, [r3, #12]

  /* Set the UART Communication parameters */
  UART_SetConfig(huart);
 8001966:	6878      	ldr	r0, [r7, #4]
 8001968:	f000 f9a6 	bl	8001cb8 <UART_SetConfig>

  /* In asynchronous mode, the following bits must be kept cleared:
     - LINEN and CLKEN bits in the USART_CR2 register,
     - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 800196c:	687b      	ldr	r3, [r7, #4]
 800196e:	681b      	ldr	r3, [r3, #0]
 8001970:	691a      	ldr	r2, [r3, #16]
 8001972:	687b      	ldr	r3, [r7, #4]
 8001974:	681b      	ldr	r3, [r3, #0]
 8001976:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 800197a:	611a      	str	r2, [r3, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 800197c:	687b      	ldr	r3, [r7, #4]
 800197e:	681b      	ldr	r3, [r3, #0]
 8001980:	695a      	ldr	r2, [r3, #20]
 8001982:	687b      	ldr	r3, [r7, #4]
 8001984:	681b      	ldr	r3, [r3, #0]
 8001986:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 800198a:	615a      	str	r2, [r3, #20]

  /* Enable the peripheral */
  __HAL_UART_ENABLE(huart);
 800198c:	687b      	ldr	r3, [r7, #4]
 800198e:	681b      	ldr	r3, [r3, #0]
 8001990:	68da      	ldr	r2, [r3, #12]
 8001992:	687b      	ldr	r3, [r7, #4]
 8001994:	681b      	ldr	r3, [r3, #0]
 8001996:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800199a:	60da      	str	r2, [r3, #12]

  /* Initialize the UART state */
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 800199c:	687b      	ldr	r3, [r7, #4]
 800199e:	2200      	movs	r2, #0
 80019a0:	641a      	str	r2, [r3, #64]	; 0x40
  huart->gState = HAL_UART_STATE_READY;
 80019a2:	687b      	ldr	r3, [r7, #4]
 80019a4:	2220      	movs	r2, #32
 80019a6:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
  huart->RxState = HAL_UART_STATE_READY;
 80019aa:	687b      	ldr	r3, [r7, #4]
 80019ac:	2220      	movs	r2, #32
 80019ae:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

  return HAL_OK;
 80019b2:	2300      	movs	r3, #0
}
 80019b4:	4618      	mov	r0, r3
 80019b6:	3708      	adds	r7, #8
 80019b8:	46bd      	mov	sp, r7
 80019ba:	bd80      	pop	{r7, pc}

080019bc <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 80019bc:	b580      	push	{r7, lr}
 80019be:	b08a      	sub	sp, #40	; 0x28
 80019c0:	af02      	add	r7, sp, #8
 80019c2:	60f8      	str	r0, [r7, #12]
 80019c4:	60b9      	str	r1, [r7, #8]
 80019c6:	603b      	str	r3, [r7, #0]
 80019c8:	4613      	mov	r3, r2
 80019ca:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 80019cc:	2300      	movs	r3, #0
 80019ce:	617b      	str	r3, [r7, #20]

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 80019d0:	68fb      	ldr	r3, [r7, #12]
 80019d2:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 80019d6:	b2db      	uxtb	r3, r3
 80019d8:	2b20      	cmp	r3, #32
 80019da:	d17c      	bne.n	8001ad6 <HAL_UART_Transmit+0x11a>
  {
    if ((pData == NULL) || (Size == 0U))
 80019dc:	68bb      	ldr	r3, [r7, #8]
 80019de:	2b00      	cmp	r3, #0
 80019e0:	d002      	beq.n	80019e8 <HAL_UART_Transmit+0x2c>
 80019e2:	88fb      	ldrh	r3, [r7, #6]
 80019e4:	2b00      	cmp	r3, #0
 80019e6:	d101      	bne.n	80019ec <HAL_UART_Transmit+0x30>
    {
      return  HAL_ERROR;
 80019e8:	2301      	movs	r3, #1
 80019ea:	e075      	b.n	8001ad8 <HAL_UART_Transmit+0x11c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 80019ec:	68fb      	ldr	r3, [r7, #12]
 80019ee:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 80019f2:	2b01      	cmp	r3, #1
 80019f4:	d101      	bne.n	80019fa <HAL_UART_Transmit+0x3e>
 80019f6:	2302      	movs	r3, #2
 80019f8:	e06e      	b.n	8001ad8 <HAL_UART_Transmit+0x11c>
 80019fa:	68fb      	ldr	r3, [r7, #12]
 80019fc:	2201      	movs	r2, #1
 80019fe:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001a02:	68fb      	ldr	r3, [r7, #12]
 8001a04:	2200      	movs	r2, #0
 8001a06:	641a      	str	r2, [r3, #64]	; 0x40
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8001a08:	68fb      	ldr	r3, [r7, #12]
 8001a0a:	2221      	movs	r2, #33	; 0x21
 8001a0c:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8001a10:	f7fe fefe 	bl	8000810 <HAL_GetTick>
 8001a14:	6178      	str	r0, [r7, #20]

    huart->TxXferSize = Size;
 8001a16:	68fb      	ldr	r3, [r7, #12]
 8001a18:	88fa      	ldrh	r2, [r7, #6]
 8001a1a:	849a      	strh	r2, [r3, #36]	; 0x24
    huart->TxXferCount = Size;
 8001a1c:	68fb      	ldr	r3, [r7, #12]
 8001a1e:	88fa      	ldrh	r2, [r7, #6]
 8001a20:	84da      	strh	r2, [r3, #38]	; 0x26

    /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001a22:	68fb      	ldr	r3, [r7, #12]
 8001a24:	689b      	ldr	r3, [r3, #8]
 8001a26:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001a2a:	d108      	bne.n	8001a3e <HAL_UART_Transmit+0x82>
 8001a2c:	68fb      	ldr	r3, [r7, #12]
 8001a2e:	691b      	ldr	r3, [r3, #16]
 8001a30:	2b00      	cmp	r3, #0
 8001a32:	d104      	bne.n	8001a3e <HAL_UART_Transmit+0x82>
    {
      pdata8bits  = NULL;
 8001a34:	2300      	movs	r3, #0
 8001a36:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8001a38:	68bb      	ldr	r3, [r7, #8]
 8001a3a:	61bb      	str	r3, [r7, #24]
 8001a3c:	e003      	b.n	8001a46 <HAL_UART_Transmit+0x8a>
    }
    else
    {
      pdata8bits  = pData;
 8001a3e:	68bb      	ldr	r3, [r7, #8]
 8001a40:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8001a42:	2300      	movs	r3, #0
 8001a44:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 8001a46:	68fb      	ldr	r3, [r7, #12]
 8001a48:	2200      	movs	r2, #0
 8001a4a:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    while (huart->TxXferCount > 0U)
 8001a4e:	e02a      	b.n	8001aa6 <HAL_UART_Transmit+0xea>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 8001a50:	683b      	ldr	r3, [r7, #0]
 8001a52:	9300      	str	r3, [sp, #0]
 8001a54:	697b      	ldr	r3, [r7, #20]
 8001a56:	2200      	movs	r2, #0
 8001a58:	2180      	movs	r1, #128	; 0x80
 8001a5a:	68f8      	ldr	r0, [r7, #12]
 8001a5c:	f000 f8e2 	bl	8001c24 <UART_WaitOnFlagUntilTimeout>
 8001a60:	4603      	mov	r3, r0
 8001a62:	2b00      	cmp	r3, #0
 8001a64:	d001      	beq.n	8001a6a <HAL_UART_Transmit+0xae>
      {
        return HAL_TIMEOUT;
 8001a66:	2303      	movs	r3, #3
 8001a68:	e036      	b.n	8001ad8 <HAL_UART_Transmit+0x11c>
      }
      if (pdata8bits == NULL)
 8001a6a:	69fb      	ldr	r3, [r7, #28]
 8001a6c:	2b00      	cmp	r3, #0
 8001a6e:	d10b      	bne.n	8001a88 <HAL_UART_Transmit+0xcc>
      {
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 8001a70:	69bb      	ldr	r3, [r7, #24]
 8001a72:	881b      	ldrh	r3, [r3, #0]
 8001a74:	461a      	mov	r2, r3
 8001a76:	68fb      	ldr	r3, [r7, #12]
 8001a78:	681b      	ldr	r3, [r3, #0]
 8001a7a:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8001a7e:	605a      	str	r2, [r3, #4]
        pdata16bits++;
 8001a80:	69bb      	ldr	r3, [r7, #24]
 8001a82:	3302      	adds	r3, #2
 8001a84:	61bb      	str	r3, [r7, #24]
 8001a86:	e007      	b.n	8001a98 <HAL_UART_Transmit+0xdc>
      }
      else
      {
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 8001a88:	69fb      	ldr	r3, [r7, #28]
 8001a8a:	781a      	ldrb	r2, [r3, #0]
 8001a8c:	68fb      	ldr	r3, [r7, #12]
 8001a8e:	681b      	ldr	r3, [r3, #0]
 8001a90:	605a      	str	r2, [r3, #4]
        pdata8bits++;
 8001a92:	69fb      	ldr	r3, [r7, #28]
 8001a94:	3301      	adds	r3, #1
 8001a96:	61fb      	str	r3, [r7, #28]
      }
      huart->TxXferCount--;
 8001a98:	68fb      	ldr	r3, [r7, #12]
 8001a9a:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8001a9c:	b29b      	uxth	r3, r3
 8001a9e:	3b01      	subs	r3, #1
 8001aa0:	b29a      	uxth	r2, r3
 8001aa2:	68fb      	ldr	r3, [r7, #12]
 8001aa4:	84da      	strh	r2, [r3, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 8001aa6:	68fb      	ldr	r3, [r7, #12]
 8001aa8:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8001aaa:	b29b      	uxth	r3, r3
 8001aac:	2b00      	cmp	r3, #0
 8001aae:	d1cf      	bne.n	8001a50 <HAL_UART_Transmit+0x94>
    }

    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 8001ab0:	683b      	ldr	r3, [r7, #0]
 8001ab2:	9300      	str	r3, [sp, #0]
 8001ab4:	697b      	ldr	r3, [r7, #20]
 8001ab6:	2200      	movs	r2, #0
 8001ab8:	2140      	movs	r1, #64	; 0x40
 8001aba:	68f8      	ldr	r0, [r7, #12]
 8001abc:	f000 f8b2 	bl	8001c24 <UART_WaitOnFlagUntilTimeout>
 8001ac0:	4603      	mov	r3, r0
 8001ac2:	2b00      	cmp	r3, #0
 8001ac4:	d001      	beq.n	8001aca <HAL_UART_Transmit+0x10e>
    {
      return HAL_TIMEOUT;
 8001ac6:	2303      	movs	r3, #3
 8001ac8:	e006      	b.n	8001ad8 <HAL_UART_Transmit+0x11c>
    }

    /* At end of Tx process, restore huart->gState to Ready */
    huart->gState = HAL_UART_STATE_READY;
 8001aca:	68fb      	ldr	r3, [r7, #12]
 8001acc:	2220      	movs	r2, #32
 8001ace:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    return HAL_OK;
 8001ad2:	2300      	movs	r3, #0
 8001ad4:	e000      	b.n	8001ad8 <HAL_UART_Transmit+0x11c>
  }
  else
  {
    return HAL_BUSY;
 8001ad6:	2302      	movs	r3, #2
  }
}
 8001ad8:	4618      	mov	r0, r3
 8001ada:	3720      	adds	r7, #32
 8001adc:	46bd      	mov	sp, r7
 8001ade:	bd80      	pop	{r7, pc}

08001ae0 <HAL_UART_Receive>:
  * @param  Size  Amount of data elements (u8 or u16) to be received.
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001ae0:	b580      	push	{r7, lr}
 8001ae2:	b08a      	sub	sp, #40	; 0x28
 8001ae4:	af02      	add	r7, sp, #8
 8001ae6:	60f8      	str	r0, [r7, #12]
 8001ae8:	60b9      	str	r1, [r7, #8]
 8001aea:	603b      	str	r3, [r7, #0]
 8001aec:	4613      	mov	r3, r2
 8001aee:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 8001af0:	2300      	movs	r3, #0
 8001af2:	617b      	str	r3, [r7, #20]

  /* Check that a Rx process is not already ongoing */
  if (huart->RxState == HAL_UART_STATE_READY)
 8001af4:	68fb      	ldr	r3, [r7, #12]
 8001af6:	f893 303e 	ldrb.w	r3, [r3, #62]	; 0x3e
 8001afa:	b2db      	uxtb	r3, r3
 8001afc:	2b20      	cmp	r3, #32
 8001afe:	f040 808c 	bne.w	8001c1a <HAL_UART_Receive+0x13a>
  {
    if ((pData == NULL) || (Size == 0U))
 8001b02:	68bb      	ldr	r3, [r7, #8]
 8001b04:	2b00      	cmp	r3, #0
 8001b06:	d002      	beq.n	8001b0e <HAL_UART_Receive+0x2e>
 8001b08:	88fb      	ldrh	r3, [r7, #6]
 8001b0a:	2b00      	cmp	r3, #0
 8001b0c:	d101      	bne.n	8001b12 <HAL_UART_Receive+0x32>
    {
      return  HAL_ERROR;
 8001b0e:	2301      	movs	r3, #1
 8001b10:	e084      	b.n	8001c1c <HAL_UART_Receive+0x13c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 8001b12:	68fb      	ldr	r3, [r7, #12]
 8001b14:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 8001b18:	2b01      	cmp	r3, #1
 8001b1a:	d101      	bne.n	8001b20 <HAL_UART_Receive+0x40>
 8001b1c:	2302      	movs	r3, #2
 8001b1e:	e07d      	b.n	8001c1c <HAL_UART_Receive+0x13c>
 8001b20:	68fb      	ldr	r3, [r7, #12]
 8001b22:	2201      	movs	r2, #1
 8001b24:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001b28:	68fb      	ldr	r3, [r7, #12]
 8001b2a:	2200      	movs	r2, #0
 8001b2c:	641a      	str	r2, [r3, #64]	; 0x40
    huart->RxState = HAL_UART_STATE_BUSY_RX;
 8001b2e:	68fb      	ldr	r3, [r7, #12]
 8001b30:	2222      	movs	r2, #34	; 0x22
 8001b32:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e
    huart->ReceptionType = HAL_UART_RECEPTION_STANDARD;
 8001b36:	68fb      	ldr	r3, [r7, #12]
 8001b38:	2200      	movs	r2, #0
 8001b3a:	631a      	str	r2, [r3, #48]	; 0x30

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8001b3c:	f7fe fe68 	bl	8000810 <HAL_GetTick>
 8001b40:	6178      	str	r0, [r7, #20]

    huart->RxXferSize = Size;
 8001b42:	68fb      	ldr	r3, [r7, #12]
 8001b44:	88fa      	ldrh	r2, [r7, #6]
 8001b46:	859a      	strh	r2, [r3, #44]	; 0x2c
    huart->RxXferCount = Size;
 8001b48:	68fb      	ldr	r3, [r7, #12]
 8001b4a:	88fa      	ldrh	r2, [r7, #6]
 8001b4c:	85da      	strh	r2, [r3, #46]	; 0x2e

    /* In case of 9bits/No Parity transfer, pRxData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001b4e:	68fb      	ldr	r3, [r7, #12]
 8001b50:	689b      	ldr	r3, [r3, #8]
 8001b52:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001b56:	d108      	bne.n	8001b6a <HAL_UART_Receive+0x8a>
 8001b58:	68fb      	ldr	r3, [r7, #12]
 8001b5a:	691b      	ldr	r3, [r3, #16]
 8001b5c:	2b00      	cmp	r3, #0
 8001b5e:	d104      	bne.n	8001b6a <HAL_UART_Receive+0x8a>
    {
      pdata8bits  = NULL;
 8001b60:	2300      	movs	r3, #0
 8001b62:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8001b64:	68bb      	ldr	r3, [r7, #8]
 8001b66:	61bb      	str	r3, [r7, #24]
 8001b68:	e003      	b.n	8001b72 <HAL_UART_Receive+0x92>
    }
    else
    {
      pdata8bits  = pData;
 8001b6a:	68bb      	ldr	r3, [r7, #8]
 8001b6c:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8001b6e:	2300      	movs	r3, #0
 8001b70:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 8001b72:	68fb      	ldr	r3, [r7, #12]
 8001b74:	2200      	movs	r2, #0
 8001b76:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Check the remain data to be received */
    while (huart->RxXferCount > 0U)
 8001b7a:	e043      	b.n	8001c04 <HAL_UART_Receive+0x124>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
 8001b7c:	683b      	ldr	r3, [r7, #0]
 8001b7e:	9300      	str	r3, [sp, #0]
 8001b80:	697b      	ldr	r3, [r7, #20]
 8001b82:	2200      	movs	r2, #0
 8001b84:	2120      	movs	r1, #32
 8001b86:	68f8      	ldr	r0, [r7, #12]
 8001b88:	f000 f84c 	bl	8001c24 <UART_WaitOnFlagUntilTimeout>
 8001b8c:	4603      	mov	r3, r0
 8001b8e:	2b00      	cmp	r3, #0
 8001b90:	d001      	beq.n	8001b96 <HAL_UART_Receive+0xb6>
      {
        return HAL_TIMEOUT;
 8001b92:	2303      	movs	r3, #3
 8001b94:	e042      	b.n	8001c1c <HAL_UART_Receive+0x13c>
      }
      if (pdata8bits == NULL)
 8001b96:	69fb      	ldr	r3, [r7, #28]
 8001b98:	2b00      	cmp	r3, #0
 8001b9a:	d10c      	bne.n	8001bb6 <HAL_UART_Receive+0xd6>
      {
        *pdata16bits = (uint16_t)(huart->Instance->DR & 0x01FF);
 8001b9c:	68fb      	ldr	r3, [r7, #12]
 8001b9e:	681b      	ldr	r3, [r3, #0]
 8001ba0:	685b      	ldr	r3, [r3, #4]
 8001ba2:	b29b      	uxth	r3, r3
 8001ba4:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8001ba8:	b29a      	uxth	r2, r3
 8001baa:	69bb      	ldr	r3, [r7, #24]
 8001bac:	801a      	strh	r2, [r3, #0]
        pdata16bits++;
 8001bae:	69bb      	ldr	r3, [r7, #24]
 8001bb0:	3302      	adds	r3, #2
 8001bb2:	61bb      	str	r3, [r7, #24]
 8001bb4:	e01f      	b.n	8001bf6 <HAL_UART_Receive+0x116>
      }
      else
      {
        if ((huart->Init.WordLength == UART_WORDLENGTH_9B) || ((huart->Init.WordLength == UART_WORDLENGTH_8B) && (huart->Init.Parity == UART_PARITY_NONE)))
 8001bb6:	68fb      	ldr	r3, [r7, #12]
 8001bb8:	689b      	ldr	r3, [r3, #8]
 8001bba:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001bbe:	d007      	beq.n	8001bd0 <HAL_UART_Receive+0xf0>
 8001bc0:	68fb      	ldr	r3, [r7, #12]
 8001bc2:	689b      	ldr	r3, [r3, #8]
 8001bc4:	2b00      	cmp	r3, #0
 8001bc6:	d10a      	bne.n	8001bde <HAL_UART_Receive+0xfe>
 8001bc8:	68fb      	ldr	r3, [r7, #12]
 8001bca:	691b      	ldr	r3, [r3, #16]
 8001bcc:	2b00      	cmp	r3, #0
 8001bce:	d106      	bne.n	8001bde <HAL_UART_Receive+0xfe>
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x00FF);
 8001bd0:	68fb      	ldr	r3, [r7, #12]
 8001bd2:	681b      	ldr	r3, [r3, #0]
 8001bd4:	685b      	ldr	r3, [r3, #4]
 8001bd6:	b2da      	uxtb	r2, r3
 8001bd8:	69fb      	ldr	r3, [r7, #28]
 8001bda:	701a      	strb	r2, [r3, #0]
 8001bdc:	e008      	b.n	8001bf0 <HAL_UART_Receive+0x110>
        }
        else
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x007F);
 8001bde:	68fb      	ldr	r3, [r7, #12]
 8001be0:	681b      	ldr	r3, [r3, #0]
 8001be2:	685b      	ldr	r3, [r3, #4]
 8001be4:	b2db      	uxtb	r3, r3
 8001be6:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8001bea:	b2da      	uxtb	r2, r3
 8001bec:	69fb      	ldr	r3, [r7, #28]
 8001bee:	701a      	strb	r2, [r3, #0]
        }
        pdata8bits++;
 8001bf0:	69fb      	ldr	r3, [r7, #28]
 8001bf2:	3301      	adds	r3, #1
 8001bf4:	61fb      	str	r3, [r7, #28]
      }
      huart->RxXferCount--;
 8001bf6:	68fb      	ldr	r3, [r7, #12]
 8001bf8:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
 8001bfa:	b29b      	uxth	r3, r3
 8001bfc:	3b01      	subs	r3, #1
 8001bfe:	b29a      	uxth	r2, r3
 8001c00:	68fb      	ldr	r3, [r7, #12]
 8001c02:	85da      	strh	r2, [r3, #46]	; 0x2e
    while (huart->RxXferCount > 0U)
 8001c04:	68fb      	ldr	r3, [r7, #12]
 8001c06:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
 8001c08:	b29b      	uxth	r3, r3
 8001c0a:	2b00      	cmp	r3, #0
 8001c0c:	d1b6      	bne.n	8001b7c <HAL_UART_Receive+0x9c>
    }

    /* At end of Rx process, restore huart->RxState to Ready */
    huart->RxState = HAL_UART_STATE_READY;
 8001c0e:	68fb      	ldr	r3, [r7, #12]
 8001c10:	2220      	movs	r2, #32
 8001c12:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

    return HAL_OK;
 8001c16:	2300      	movs	r3, #0
 8001c18:	e000      	b.n	8001c1c <HAL_UART_Receive+0x13c>
  }
  else
  {
    return HAL_BUSY;
 8001c1a:	2302      	movs	r3, #2
  }
}
 8001c1c:	4618      	mov	r0, r3
 8001c1e:	3720      	adds	r7, #32
 8001c20:	46bd      	mov	sp, r7
 8001c22:	bd80      	pop	{r7, pc}

08001c24 <UART_WaitOnFlagUntilTimeout>:
  * @param  Tickstart Tick start value
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout)
{
 8001c24:	b580      	push	{r7, lr}
 8001c26:	b084      	sub	sp, #16
 8001c28:	af00      	add	r7, sp, #0
 8001c2a:	60f8      	str	r0, [r7, #12]
 8001c2c:	60b9      	str	r1, [r7, #8]
 8001c2e:	603b      	str	r3, [r7, #0]
 8001c30:	4613      	mov	r3, r2
 8001c32:	71fb      	strb	r3, [r7, #7]
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001c34:	e02c      	b.n	8001c90 <UART_WaitOnFlagUntilTimeout+0x6c>
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
 8001c36:	69bb      	ldr	r3, [r7, #24]
 8001c38:	f1b3 3fff 	cmp.w	r3, #4294967295
 8001c3c:	d028      	beq.n	8001c90 <UART_WaitOnFlagUntilTimeout+0x6c>
    {
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 8001c3e:	69bb      	ldr	r3, [r7, #24]
 8001c40:	2b00      	cmp	r3, #0
 8001c42:	d007      	beq.n	8001c54 <UART_WaitOnFlagUntilTimeout+0x30>
 8001c44:	f7fe fde4 	bl	8000810 <HAL_GetTick>
 8001c48:	4602      	mov	r2, r0
 8001c4a:	683b      	ldr	r3, [r7, #0]
 8001c4c:	1ad3      	subs	r3, r2, r3
 8001c4e:	69ba      	ldr	r2, [r7, #24]
 8001c50:	429a      	cmp	r2, r3
 8001c52:	d21d      	bcs.n	8001c90 <UART_WaitOnFlagUntilTimeout+0x6c>
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 8001c54:	68fb      	ldr	r3, [r7, #12]
 8001c56:	681b      	ldr	r3, [r3, #0]
 8001c58:	68da      	ldr	r2, [r3, #12]
 8001c5a:	68fb      	ldr	r3, [r7, #12]
 8001c5c:	681b      	ldr	r3, [r3, #0]
 8001c5e:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 8001c62:	60da      	str	r2, [r3, #12]
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 8001c64:	68fb      	ldr	r3, [r7, #12]
 8001c66:	681b      	ldr	r3, [r3, #0]
 8001c68:	695a      	ldr	r2, [r3, #20]
 8001c6a:	68fb      	ldr	r3, [r7, #12]
 8001c6c:	681b      	ldr	r3, [r3, #0]
 8001c6e:	f022 0201 	bic.w	r2, r2, #1
 8001c72:	615a      	str	r2, [r3, #20]

        huart->gState  = HAL_UART_STATE_READY;
 8001c74:	68fb      	ldr	r3, [r7, #12]
 8001c76:	2220      	movs	r2, #32
 8001c78:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
        huart->RxState = HAL_UART_STATE_READY;
 8001c7c:	68fb      	ldr	r3, [r7, #12]
 8001c7e:	2220      	movs	r2, #32
 8001c80:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

        /* Process Unlocked */
        __HAL_UNLOCK(huart);
 8001c84:	68fb      	ldr	r3, [r7, #12]
 8001c86:	2200      	movs	r2, #0
 8001c88:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

        return HAL_TIMEOUT;
 8001c8c:	2303      	movs	r3, #3
 8001c8e:	e00f      	b.n	8001cb0 <UART_WaitOnFlagUntilTimeout+0x8c>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001c90:	68fb      	ldr	r3, [r7, #12]
 8001c92:	681b      	ldr	r3, [r3, #0]
 8001c94:	681a      	ldr	r2, [r3, #0]
 8001c96:	68bb      	ldr	r3, [r7, #8]
 8001c98:	4013      	ands	r3, r2
 8001c9a:	68ba      	ldr	r2, [r7, #8]
 8001c9c:	429a      	cmp	r2, r3
 8001c9e:	bf0c      	ite	eq
 8001ca0:	2301      	moveq	r3, #1
 8001ca2:	2300      	movne	r3, #0
 8001ca4:	b2db      	uxtb	r3, r3
 8001ca6:	461a      	mov	r2, r3
 8001ca8:	79fb      	ldrb	r3, [r7, #7]
 8001caa:	429a      	cmp	r2, r3
 8001cac:	d0c3      	beq.n	8001c36 <UART_WaitOnFlagUntilTimeout+0x12>
      }
    }
  }
  return HAL_OK;
 8001cae:	2300      	movs	r3, #0
}
 8001cb0:	4618      	mov	r0, r3
 8001cb2:	3710      	adds	r7, #16
 8001cb4:	46bd      	mov	sp, r7
 8001cb6:	bd80      	pop	{r7, pc}

08001cb8 <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 8001cb8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001cbc:	b085      	sub	sp, #20
 8001cbe:	af00      	add	r7, sp, #0
 8001cc0:	6078      	str	r0, [r7, #4]
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 8001cc2:	687b      	ldr	r3, [r7, #4]
 8001cc4:	681b      	ldr	r3, [r3, #0]
 8001cc6:	691b      	ldr	r3, [r3, #16]
 8001cc8:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 8001ccc:	687b      	ldr	r3, [r7, #4]
 8001cce:	68da      	ldr	r2, [r3, #12]
 8001cd0:	687b      	ldr	r3, [r7, #4]
 8001cd2:	681b      	ldr	r3, [r3, #0]
 8001cd4:	430a      	orrs	r2, r1
 8001cd6:	611a      	str	r2, [r3, #16]
     Set the M bits according to huart->Init.WordLength value
     Set PCE and PS bits according to huart->Init.Parity value
     Set TE and RE bits according to huart->Init.Mode value
     Set OVER8 bit according to huart->Init.OverSampling value */

  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
 8001cd8:	687b      	ldr	r3, [r7, #4]
 8001cda:	689a      	ldr	r2, [r3, #8]
 8001cdc:	687b      	ldr	r3, [r7, #4]
 8001cde:	691b      	ldr	r3, [r3, #16]
 8001ce0:	431a      	orrs	r2, r3
 8001ce2:	687b      	ldr	r3, [r7, #4]
 8001ce4:	695b      	ldr	r3, [r3, #20]
 8001ce6:	431a      	orrs	r2, r3
 8001ce8:	687b      	ldr	r3, [r7, #4]
 8001cea:	69db      	ldr	r3, [r3, #28]
 8001cec:	4313      	orrs	r3, r2
 8001cee:	60bb      	str	r3, [r7, #8]
  MODIFY_REG(huart->Instance->CR1,
 8001cf0:	687b      	ldr	r3, [r7, #4]
 8001cf2:	681b      	ldr	r3, [r3, #0]
 8001cf4:	68db      	ldr	r3, [r3, #12]
 8001cf6:	f423 4316 	bic.w	r3, r3, #38400	; 0x9600
 8001cfa:	f023 030c 	bic.w	r3, r3, #12
 8001cfe:	687a      	ldr	r2, [r7, #4]
 8001d00:	6812      	ldr	r2, [r2, #0]
 8001d02:	68b9      	ldr	r1, [r7, #8]
 8001d04:	430b      	orrs	r3, r1
 8001d06:	60d3      	str	r3, [r2, #12]
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 8001d08:	687b      	ldr	r3, [r7, #4]
 8001d0a:	681b      	ldr	r3, [r3, #0]
 8001d0c:	695b      	ldr	r3, [r3, #20]
 8001d0e:	f423 7140 	bic.w	r1, r3, #768	; 0x300
 8001d12:	687b      	ldr	r3, [r7, #4]
 8001d14:	699a      	ldr	r2, [r3, #24]
 8001d16:	687b      	ldr	r3, [r7, #4]
 8001d18:	681b      	ldr	r3, [r3, #0]
 8001d1a:	430a      	orrs	r2, r1
 8001d1c:	615a      	str	r2, [r3, #20]
    if ((huart->Instance == USART1) || (huart->Instance == USART6) || (huart->Instance == UART9) || (huart->Instance == UART10))
    {
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#elif defined(USART6)
    if ((huart->Instance == USART1) || (huart->Instance == USART6))
 8001d1e:	687b      	ldr	r3, [r7, #4]
 8001d20:	681b      	ldr	r3, [r3, #0]
 8001d22:	4ad0      	ldr	r2, [pc, #832]	; (8002064 <UART_SetConfig+0x3ac>)
 8001d24:	4293      	cmp	r3, r2
 8001d26:	d004      	beq.n	8001d32 <UART_SetConfig+0x7a>
 8001d28:	687b      	ldr	r3, [r7, #4]
 8001d2a:	681b      	ldr	r3, [r3, #0]
 8001d2c:	4ace      	ldr	r2, [pc, #824]	; (8002068 <UART_SetConfig+0x3b0>)
 8001d2e:	4293      	cmp	r3, r2
 8001d30:	d103      	bne.n	8001d3a <UART_SetConfig+0x82>
    {
      pclk = HAL_RCC_GetPCLK2Freq();
 8001d32:	f7ff fae9 	bl	8001308 <HAL_RCC_GetPCLK2Freq>
 8001d36:	60f8      	str	r0, [r7, #12]
 8001d38:	e002      	b.n	8001d40 <UART_SetConfig+0x88>
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#endif /* USART6 */
    else
    {
      pclk = HAL_RCC_GetPCLK1Freq();
 8001d3a:	f7ff fad1 	bl	80012e0 <HAL_RCC_GetPCLK1Freq>
 8001d3e:	60f8      	str	r0, [r7, #12]
    }
  /*-------------------------- USART BRR Configuration ---------------------*/
  if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 8001d40:	687b      	ldr	r3, [r7, #4]
 8001d42:	69db      	ldr	r3, [r3, #28]
 8001d44:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001d48:	f040 80ba 	bne.w	8001ec0 <UART_SetConfig+0x208>
  {
    huart->Instance->BRR = UART_BRR_SAMPLING8(pclk, huart->Init.BaudRate);
 8001d4c:	68fb      	ldr	r3, [r7, #12]
 8001d4e:	461d      	mov	r5, r3
 8001d50:	f04f 0600 	mov.w	r6, #0
 8001d54:	46a8      	mov	r8, r5
 8001d56:	46b1      	mov	r9, r6
 8001d58:	eb18 0308 	adds.w	r3, r8, r8
 8001d5c:	eb49 0409 	adc.w	r4, r9, r9
 8001d60:	4698      	mov	r8, r3
 8001d62:	46a1      	mov	r9, r4
 8001d64:	eb18 0805 	adds.w	r8, r8, r5
 8001d68:	eb49 0906 	adc.w	r9, r9, r6
 8001d6c:	f04f 0100 	mov.w	r1, #0
 8001d70:	f04f 0200 	mov.w	r2, #0
 8001d74:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 8001d78:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 8001d7c:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 8001d80:	4688      	mov	r8, r1
 8001d82:	4691      	mov	r9, r2
 8001d84:	eb18 0005 	adds.w	r0, r8, r5
 8001d88:	eb49 0106 	adc.w	r1, r9, r6
 8001d8c:	687b      	ldr	r3, [r7, #4]
 8001d8e:	685b      	ldr	r3, [r3, #4]
 8001d90:	461d      	mov	r5, r3
 8001d92:	f04f 0600 	mov.w	r6, #0
 8001d96:	196b      	adds	r3, r5, r5
 8001d98:	eb46 0406 	adc.w	r4, r6, r6
 8001d9c:	461a      	mov	r2, r3
 8001d9e:	4623      	mov	r3, r4
 8001da0:	f001 fb92 	bl	80034c8 <__aeabi_uldivmod>
 8001da4:	4603      	mov	r3, r0
 8001da6:	460c      	mov	r4, r1
 8001da8:	461a      	mov	r2, r3
 8001daa:	4bb0      	ldr	r3, [pc, #704]	; (800206c <UART_SetConfig+0x3b4>)
 8001dac:	fba3 2302 	umull	r2, r3, r3, r2
 8001db0:	095b      	lsrs	r3, r3, #5
 8001db2:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8001db6:	68fb      	ldr	r3, [r7, #12]
 8001db8:	461d      	mov	r5, r3
 8001dba:	f04f 0600 	mov.w	r6, #0
 8001dbe:	46a9      	mov	r9, r5
 8001dc0:	46b2      	mov	sl, r6
 8001dc2:	eb19 0309 	adds.w	r3, r9, r9
 8001dc6:	eb4a 040a 	adc.w	r4, sl, sl
 8001dca:	4699      	mov	r9, r3
 8001dcc:	46a2      	mov	sl, r4
 8001dce:	eb19 0905 	adds.w	r9, r9, r5
 8001dd2:	eb4a 0a06 	adc.w	sl, sl, r6
 8001dd6:	f04f 0100 	mov.w	r1, #0
 8001dda:	f04f 0200 	mov.w	r2, #0
 8001dde:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8001de2:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001de6:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001dea:	4689      	mov	r9, r1
 8001dec:	4692      	mov	sl, r2
 8001dee:	eb19 0005 	adds.w	r0, r9, r5
 8001df2:	eb4a 0106 	adc.w	r1, sl, r6
 8001df6:	687b      	ldr	r3, [r7, #4]
 8001df8:	685b      	ldr	r3, [r3, #4]
 8001dfa:	461d      	mov	r5, r3
 8001dfc:	f04f 0600 	mov.w	r6, #0
 8001e00:	196b      	adds	r3, r5, r5
 8001e02:	eb46 0406 	adc.w	r4, r6, r6
 8001e06:	461a      	mov	r2, r3
 8001e08:	4623      	mov	r3, r4
 8001e0a:	f001 fb5d 	bl	80034c8 <__aeabi_uldivmod>
 8001e0e:	4603      	mov	r3, r0
 8001e10:	460c      	mov	r4, r1
 8001e12:	461a      	mov	r2, r3
 8001e14:	4b95      	ldr	r3, [pc, #596]	; (800206c <UART_SetConfig+0x3b4>)
 8001e16:	fba3 1302 	umull	r1, r3, r3, r2
 8001e1a:	095b      	lsrs	r3, r3, #5
 8001e1c:	2164      	movs	r1, #100	; 0x64
 8001e1e:	fb01 f303 	mul.w	r3, r1, r3
 8001e22:	1ad3      	subs	r3, r2, r3
 8001e24:	00db      	lsls	r3, r3, #3
 8001e26:	3332      	adds	r3, #50	; 0x32
 8001e28:	4a90      	ldr	r2, [pc, #576]	; (800206c <UART_SetConfig+0x3b4>)
 8001e2a:	fba2 2303 	umull	r2, r3, r2, r3
 8001e2e:	095b      	lsrs	r3, r3, #5
 8001e30:	005b      	lsls	r3, r3, #1
 8001e32:	f403 73f8 	and.w	r3, r3, #496	; 0x1f0
 8001e36:	4498      	add	r8, r3
 8001e38:	68fb      	ldr	r3, [r7, #12]
 8001e3a:	461d      	mov	r5, r3
 8001e3c:	f04f 0600 	mov.w	r6, #0
 8001e40:	46a9      	mov	r9, r5
 8001e42:	46b2      	mov	sl, r6
 8001e44:	eb19 0309 	adds.w	r3, r9, r9
 8001e48:	eb4a 040a 	adc.w	r4, sl, sl
 8001e4c:	4699      	mov	r9, r3
 8001e4e:	46a2      	mov	sl, r4
 8001e50:	eb19 0905 	adds.w	r9, r9, r5
 8001e54:	eb4a 0a06 	adc.w	sl, sl, r6
 8001e58:	f04f 0100 	mov.w	r1, #0
 8001e5c:	f04f 0200 	mov.w	r2, #0
 8001e60:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8001e64:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001e68:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001e6c:	4689      	mov	r9, r1
 8001e6e:	4692      	mov	sl, r2
 8001e70:	eb19 0005 	adds.w	r0, r9, r5
 8001e74:	eb4a 0106 	adc.w	r1, sl, r6
 8001e78:	687b      	ldr	r3, [r7, #4]
 8001e7a:	685b      	ldr	r3, [r3, #4]
 8001e7c:	461d      	mov	r5, r3
 8001e7e:	f04f 0600 	mov.w	r6, #0
 8001e82:	196b      	adds	r3, r5, r5
 8001e84:	eb46 0406 	adc.w	r4, r6, r6
 8001e88:	461a      	mov	r2, r3
 8001e8a:	4623      	mov	r3, r4
 8001e8c:	f001 fb1c 	bl	80034c8 <__aeabi_uldivmod>
 8001e90:	4603      	mov	r3, r0
 8001e92:	460c      	mov	r4, r1
 8001e94:	461a      	mov	r2, r3
 8001e96:	4b75      	ldr	r3, [pc, #468]	; (800206c <UART_SetConfig+0x3b4>)
 8001e98:	fba3 1302 	umull	r1, r3, r3, r2
 8001e9c:	095b      	lsrs	r3, r3, #5
 8001e9e:	2164      	movs	r1, #100	; 0x64
 8001ea0:	fb01 f303 	mul.w	r3, r1, r3
 8001ea4:	1ad3      	subs	r3, r2, r3
 8001ea6:	00db      	lsls	r3, r3, #3
 8001ea8:	3332      	adds	r3, #50	; 0x32
 8001eaa:	4a70      	ldr	r2, [pc, #448]	; (800206c <UART_SetConfig+0x3b4>)
 8001eac:	fba2 2303 	umull	r2, r3, r2, r3
 8001eb0:	095b      	lsrs	r3, r3, #5
 8001eb2:	f003 0207 	and.w	r2, r3, #7
 8001eb6:	687b      	ldr	r3, [r7, #4]
 8001eb8:	681b      	ldr	r3, [r3, #0]
 8001eba:	4442      	add	r2, r8
 8001ebc:	609a      	str	r2, [r3, #8]
  }
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
}
 8001ebe:	e0cc      	b.n	800205a <UART_SetConfig+0x3a2>
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 8001ec0:	68fb      	ldr	r3, [r7, #12]
 8001ec2:	469a      	mov	sl, r3
 8001ec4:	f04f 0b00 	mov.w	fp, #0
 8001ec8:	46d0      	mov	r8, sl
 8001eca:	46d9      	mov	r9, fp
 8001ecc:	eb18 0308 	adds.w	r3, r8, r8
 8001ed0:	eb49 0409 	adc.w	r4, r9, r9
 8001ed4:	4698      	mov	r8, r3
 8001ed6:	46a1      	mov	r9, r4
 8001ed8:	eb18 080a 	adds.w	r8, r8, sl
 8001edc:	eb49 090b 	adc.w	r9, r9, fp
 8001ee0:	f04f 0100 	mov.w	r1, #0
 8001ee4:	f04f 0200 	mov.w	r2, #0
 8001ee8:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 8001eec:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 8001ef0:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 8001ef4:	4688      	mov	r8, r1
 8001ef6:	4691      	mov	r9, r2
 8001ef8:	eb1a 0508 	adds.w	r5, sl, r8
 8001efc:	eb4b 0609 	adc.w	r6, fp, r9
 8001f00:	687b      	ldr	r3, [r7, #4]
 8001f02:	685b      	ldr	r3, [r3, #4]
 8001f04:	4619      	mov	r1, r3
 8001f06:	f04f 0200 	mov.w	r2, #0
 8001f0a:	f04f 0300 	mov.w	r3, #0
 8001f0e:	f04f 0400 	mov.w	r4, #0
 8001f12:	0094      	lsls	r4, r2, #2
 8001f14:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 8001f18:	008b      	lsls	r3, r1, #2
 8001f1a:	461a      	mov	r2, r3
 8001f1c:	4623      	mov	r3, r4
 8001f1e:	4628      	mov	r0, r5
 8001f20:	4631      	mov	r1, r6
 8001f22:	f001 fad1 	bl	80034c8 <__aeabi_uldivmod>
 8001f26:	4603      	mov	r3, r0
 8001f28:	460c      	mov	r4, r1
 8001f2a:	461a      	mov	r2, r3
 8001f2c:	4b4f      	ldr	r3, [pc, #316]	; (800206c <UART_SetConfig+0x3b4>)
 8001f2e:	fba3 2302 	umull	r2, r3, r3, r2
 8001f32:	095b      	lsrs	r3, r3, #5
 8001f34:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8001f38:	68fb      	ldr	r3, [r7, #12]
 8001f3a:	469b      	mov	fp, r3
 8001f3c:	f04f 0c00 	mov.w	ip, #0
 8001f40:	46d9      	mov	r9, fp
 8001f42:	46e2      	mov	sl, ip
 8001f44:	eb19 0309 	adds.w	r3, r9, r9
 8001f48:	eb4a 040a 	adc.w	r4, sl, sl
 8001f4c:	4699      	mov	r9, r3
 8001f4e:	46a2      	mov	sl, r4
 8001f50:	eb19 090b 	adds.w	r9, r9, fp
 8001f54:	eb4a 0a0c 	adc.w	sl, sl, ip
 8001f58:	f04f 0100 	mov.w	r1, #0
 8001f5c:	f04f 0200 	mov.w	r2, #0
 8001f60:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8001f64:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001f68:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001f6c:	4689      	mov	r9, r1
 8001f6e:	4692      	mov	sl, r2
 8001f70:	eb1b 0509 	adds.w	r5, fp, r9
 8001f74:	eb4c 060a 	adc.w	r6, ip, sl
 8001f78:	687b      	ldr	r3, [r7, #4]
 8001f7a:	685b      	ldr	r3, [r3, #4]
 8001f7c:	4619      	mov	r1, r3
 8001f7e:	f04f 0200 	mov.w	r2, #0
 8001f82:	f04f 0300 	mov.w	r3, #0
 8001f86:	f04f 0400 	mov.w	r4, #0
 8001f8a:	0094      	lsls	r4, r2, #2
 8001f8c:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 8001f90:	008b      	lsls	r3, r1, #2
 8001f92:	461a      	mov	r2, r3
 8001f94:	4623      	mov	r3, r4
 8001f96:	4628      	mov	r0, r5
 8001f98:	4631      	mov	r1, r6
 8001f9a:	f001 fa95 	bl	80034c8 <__aeabi_uldivmod>
 8001f9e:	4603      	mov	r3, r0
 8001fa0:	460c      	mov	r4, r1
 8001fa2:	461a      	mov	r2, r3
 8001fa4:	4b31      	ldr	r3, [pc, #196]	; (800206c <UART_SetConfig+0x3b4>)
 8001fa6:	fba3 1302 	umull	r1, r3, r3, r2
 8001faa:	095b      	lsrs	r3, r3, #5
 8001fac:	2164      	movs	r1, #100	; 0x64
 8001fae:	fb01 f303 	mul.w	r3, r1, r3
 8001fb2:	1ad3      	subs	r3, r2, r3
 8001fb4:	011b      	lsls	r3, r3, #4
 8001fb6:	3332      	adds	r3, #50	; 0x32
 8001fb8:	4a2c      	ldr	r2, [pc, #176]	; (800206c <UART_SetConfig+0x3b4>)
 8001fba:	fba2 2303 	umull	r2, r3, r2, r3
 8001fbe:	095b      	lsrs	r3, r3, #5
 8001fc0:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001fc4:	4498      	add	r8, r3
 8001fc6:	68fb      	ldr	r3, [r7, #12]
 8001fc8:	469b      	mov	fp, r3
 8001fca:	f04f 0c00 	mov.w	ip, #0
 8001fce:	46d9      	mov	r9, fp
 8001fd0:	46e2      	mov	sl, ip
 8001fd2:	eb19 0309 	adds.w	r3, r9, r9
 8001fd6:	eb4a 040a 	adc.w	r4, sl, sl
 8001fda:	4699      	mov	r9, r3
 8001fdc:	46a2      	mov	sl, r4
 8001fde:	eb19 090b 	adds.w	r9, r9, fp
 8001fe2:	eb4a 0a0c 	adc.w	sl, sl, ip
 8001fe6:	f04f 0100 	mov.w	r1, #0
 8001fea:	f04f 0200 	mov.w	r2, #0
 8001fee:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8001ff2:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001ff6:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001ffa:	4689      	mov	r9, r1
 8001ffc:	4692      	mov	sl, r2
 8001ffe:	eb1b 0509 	adds.w	r5, fp, r9
 8002002:	eb4c 060a 	adc.w	r6, ip, sl
 8002006:	687b      	ldr	r3, [r7, #4]
 8002008:	685b      	ldr	r3, [r3, #4]
 800200a:	4619      	mov	r1, r3
 800200c:	f04f 0200 	mov.w	r2, #0
 8002010:	f04f 0300 	mov.w	r3, #0
 8002014:	f04f 0400 	mov.w	r4, #0
 8002018:	0094      	lsls	r4, r2, #2
 800201a:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 800201e:	008b      	lsls	r3, r1, #2
 8002020:	461a      	mov	r2, r3
 8002022:	4623      	mov	r3, r4
 8002024:	4628      	mov	r0, r5
 8002026:	4631      	mov	r1, r6
 8002028:	f001 fa4e 	bl	80034c8 <__aeabi_uldivmod>
 800202c:	4603      	mov	r3, r0
 800202e:	460c      	mov	r4, r1
 8002030:	461a      	mov	r2, r3
 8002032:	4b0e      	ldr	r3, [pc, #56]	; (800206c <UART_SetConfig+0x3b4>)
 8002034:	fba3 1302 	umull	r1, r3, r3, r2
 8002038:	095b      	lsrs	r3, r3, #5
 800203a:	2164      	movs	r1, #100	; 0x64
 800203c:	fb01 f303 	mul.w	r3, r1, r3
 8002040:	1ad3      	subs	r3, r2, r3
 8002042:	011b      	lsls	r3, r3, #4
 8002044:	3332      	adds	r3, #50	; 0x32
 8002046:	4a09      	ldr	r2, [pc, #36]	; (800206c <UART_SetConfig+0x3b4>)
 8002048:	fba2 2303 	umull	r2, r3, r2, r3
 800204c:	095b      	lsrs	r3, r3, #5
 800204e:	f003 020f 	and.w	r2, r3, #15
 8002052:	687b      	ldr	r3, [r7, #4]
 8002054:	681b      	ldr	r3, [r3, #0]
 8002056:	4442      	add	r2, r8
 8002058:	609a      	str	r2, [r3, #8]
}
 800205a:	bf00      	nop
 800205c:	3714      	adds	r7, #20
 800205e:	46bd      	mov	sp, r7
 8002060:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002064:	40011000 	.word	0x40011000
 8002068:	40011400 	.word	0x40011400
 800206c:	51eb851f 	.word	0x51eb851f

08002070 <BSP_LED_On>:
  * @param  Led: Specifies the Led to be set on. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_On(Led_TypeDef Led)
{
 8002070:	b580      	push	{r7, lr}
 8002072:	b082      	sub	sp, #8
 8002074:	af00      	add	r7, sp, #0
 8002076:	4603      	mov	r3, r0
 8002078:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_SET); 
 800207a:	79fb      	ldrb	r3, [r7, #7]
 800207c:	4a05      	ldr	r2, [pc, #20]	; (8002094 <BSP_LED_On+0x24>)
 800207e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002082:	2120      	movs	r1, #32
 8002084:	2201      	movs	r2, #1
 8002086:	4618      	mov	r0, r3
 8002088:	f7ff fc32 	bl	80018f0 <HAL_GPIO_WritePin>
}
 800208c:	bf00      	nop
 800208e:	3708      	adds	r7, #8
 8002090:	46bd      	mov	sp, r7
 8002092:	bd80      	pop	{r7, pc}
 8002094:	2000000c 	.word	0x2000000c

08002098 <_putchar>:

#else
extern int __io_putchar(int ch);
extern int __io_getchar(void);
void _putchar(const char ch)
{
 8002098:	b580      	push	{r7, lr}
 800209a:	b082      	sub	sp, #8
 800209c:	af00      	add	r7, sp, #0
 800209e:	4603      	mov	r3, r0
 80020a0:	71fb      	strb	r3, [r7, #7]
    __io_putchar(ch);
 80020a2:	79fb      	ldrb	r3, [r7, #7]
 80020a4:	4618      	mov	r0, r3
 80020a6:	f7fe f92f 	bl	8000308 <__io_putchar>
}
 80020aa:	bf00      	nop
 80020ac:	3708      	adds	r7, #8
 80020ae:	46bd      	mov	sp, r7
 80020b0:	bd80      	pop	{r7, pc}

080020b2 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
 80020b2:	b480      	push	{r7}
 80020b4:	b085      	sub	sp, #20
 80020b6:	af00      	add	r7, sp, #0
 80020b8:	60b9      	str	r1, [r7, #8]
 80020ba:	607a      	str	r2, [r7, #4]
 80020bc:	603b      	str	r3, [r7, #0]
 80020be:	4603      	mov	r3, r0
 80020c0:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
 80020c2:	687a      	ldr	r2, [r7, #4]
 80020c4:	683b      	ldr	r3, [r7, #0]
 80020c6:	429a      	cmp	r2, r3
 80020c8:	d204      	bcs.n	80020d4 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
 80020ca:	68ba      	ldr	r2, [r7, #8]
 80020cc:	687b      	ldr	r3, [r7, #4]
 80020ce:	4413      	add	r3, r2
 80020d0:	7bfa      	ldrb	r2, [r7, #15]
 80020d2:	701a      	strb	r2, [r3, #0]
  }
}
 80020d4:	bf00      	nop
 80020d6:	3714      	adds	r7, #20
 80020d8:	46bd      	mov	sp, r7
 80020da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020de:	4770      	bx	lr

080020e0 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
 80020e0:	b480      	push	{r7}
 80020e2:	b085      	sub	sp, #20
 80020e4:	af00      	add	r7, sp, #0
 80020e6:	60b9      	str	r1, [r7, #8]
 80020e8:	607a      	str	r2, [r7, #4]
 80020ea:	603b      	str	r3, [r7, #0]
 80020ec:	4603      	mov	r3, r0
 80020ee:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
 80020f0:	bf00      	nop
 80020f2:	3714      	adds	r7, #20
 80020f4:	46bd      	mov	sp, r7
 80020f6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80020fa:	4770      	bx	lr

080020fc <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
 80020fc:	b580      	push	{r7, lr}
 80020fe:	b084      	sub	sp, #16
 8002100:	af00      	add	r7, sp, #0
 8002102:	60b9      	str	r1, [r7, #8]
 8002104:	607a      	str	r2, [r7, #4]
 8002106:	603b      	str	r3, [r7, #0]
 8002108:	4603      	mov	r3, r0
 800210a:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
 800210c:	7bfb      	ldrb	r3, [r7, #15]
 800210e:	2b00      	cmp	r3, #0
 8002110:	d003      	beq.n	800211a <_out_char+0x1e>
    _putchar(character);
 8002112:	7bfb      	ldrb	r3, [r7, #15]
 8002114:	4618      	mov	r0, r3
 8002116:	f7ff ffbf 	bl	8002098 <_putchar>
  }
}
 800211a:	bf00      	nop
 800211c:	3710      	adds	r7, #16
 800211e:	46bd      	mov	sp, r7
 8002120:	bd80      	pop	{r7, pc}

08002122 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
 8002122:	b480      	push	{r7}
 8002124:	b085      	sub	sp, #20
 8002126:	af00      	add	r7, sp, #0
 8002128:	6078      	str	r0, [r7, #4]
 800212a:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
 800212c:	687b      	ldr	r3, [r7, #4]
 800212e:	60fb      	str	r3, [r7, #12]
 8002130:	e002      	b.n	8002138 <_strnlen_s+0x16>
 8002132:	68fb      	ldr	r3, [r7, #12]
 8002134:	3301      	adds	r3, #1
 8002136:	60fb      	str	r3, [r7, #12]
 8002138:	68fb      	ldr	r3, [r7, #12]
 800213a:	781b      	ldrb	r3, [r3, #0]
 800213c:	2b00      	cmp	r3, #0
 800213e:	d004      	beq.n	800214a <_strnlen_s+0x28>
 8002140:	683b      	ldr	r3, [r7, #0]
 8002142:	1e5a      	subs	r2, r3, #1
 8002144:	603a      	str	r2, [r7, #0]
 8002146:	2b00      	cmp	r3, #0
 8002148:	d1f3      	bne.n	8002132 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
 800214a:	68fa      	ldr	r2, [r7, #12]
 800214c:	687b      	ldr	r3, [r7, #4]
 800214e:	1ad3      	subs	r3, r2, r3
}
 8002150:	4618      	mov	r0, r3
 8002152:	3714      	adds	r7, #20
 8002154:	46bd      	mov	sp, r7
 8002156:	f85d 7b04 	ldr.w	r7, [sp], #4
 800215a:	4770      	bx	lr

0800215c <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
 800215c:	b480      	push	{r7}
 800215e:	b083      	sub	sp, #12
 8002160:	af00      	add	r7, sp, #0
 8002162:	4603      	mov	r3, r0
 8002164:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
 8002166:	79fb      	ldrb	r3, [r7, #7]
 8002168:	2b2f      	cmp	r3, #47	; 0x2f
 800216a:	d904      	bls.n	8002176 <_is_digit+0x1a>
 800216c:	79fb      	ldrb	r3, [r7, #7]
 800216e:	2b39      	cmp	r3, #57	; 0x39
 8002170:	d801      	bhi.n	8002176 <_is_digit+0x1a>
 8002172:	2301      	movs	r3, #1
 8002174:	e000      	b.n	8002178 <_is_digit+0x1c>
 8002176:	2300      	movs	r3, #0
 8002178:	f003 0301 	and.w	r3, r3, #1
 800217c:	b2db      	uxtb	r3, r3
}
 800217e:	4618      	mov	r0, r3
 8002180:	370c      	adds	r7, #12
 8002182:	46bd      	mov	sp, r7
 8002184:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002188:	4770      	bx	lr

0800218a <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
 800218a:	b580      	push	{r7, lr}
 800218c:	b084      	sub	sp, #16
 800218e:	af00      	add	r7, sp, #0
 8002190:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
 8002192:	2300      	movs	r3, #0
 8002194:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8002196:	e00e      	b.n	80021b6 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
 8002198:	68fa      	ldr	r2, [r7, #12]
 800219a:	4613      	mov	r3, r2
 800219c:	009b      	lsls	r3, r3, #2
 800219e:	4413      	add	r3, r2
 80021a0:	005b      	lsls	r3, r3, #1
 80021a2:	4618      	mov	r0, r3
 80021a4:	687b      	ldr	r3, [r7, #4]
 80021a6:	681b      	ldr	r3, [r3, #0]
 80021a8:	1c59      	adds	r1, r3, #1
 80021aa:	687a      	ldr	r2, [r7, #4]
 80021ac:	6011      	str	r1, [r2, #0]
 80021ae:	781b      	ldrb	r3, [r3, #0]
 80021b0:	4403      	add	r3, r0
 80021b2:	3b30      	subs	r3, #48	; 0x30
 80021b4:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 80021b6:	687b      	ldr	r3, [r7, #4]
 80021b8:	681b      	ldr	r3, [r3, #0]
 80021ba:	781b      	ldrb	r3, [r3, #0]
 80021bc:	4618      	mov	r0, r3
 80021be:	f7ff ffcd 	bl	800215c <_is_digit>
 80021c2:	4603      	mov	r3, r0
 80021c4:	2b00      	cmp	r3, #0
 80021c6:	d1e7      	bne.n	8002198 <_atoi+0xe>
  }
  return i;
 80021c8:	68fb      	ldr	r3, [r7, #12]
}
 80021ca:	4618      	mov	r0, r3
 80021cc:	3710      	adds	r7, #16
 80021ce:	46bd      	mov	sp, r7
 80021d0:	bd80      	pop	{r7, pc}

080021d2 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
 80021d2:	b590      	push	{r4, r7, lr}
 80021d4:	b087      	sub	sp, #28
 80021d6:	af00      	add	r7, sp, #0
 80021d8:	60f8      	str	r0, [r7, #12]
 80021da:	60b9      	str	r1, [r7, #8]
 80021dc:	607a      	str	r2, [r7, #4]
 80021de:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
 80021e0:	687b      	ldr	r3, [r7, #4]
 80021e2:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
 80021e4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80021e6:	f003 0302 	and.w	r3, r3, #2
 80021ea:	2b00      	cmp	r3, #0
 80021ec:	d125      	bne.n	800223a <_out_rev+0x68>
 80021ee:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80021f0:	f003 0301 	and.w	r3, r3, #1
 80021f4:	2b00      	cmp	r3, #0
 80021f6:	d120      	bne.n	800223a <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
 80021f8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80021fa:	617b      	str	r3, [r7, #20]
 80021fc:	e00a      	b.n	8002214 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
 80021fe:	687a      	ldr	r2, [r7, #4]
 8002200:	1c53      	adds	r3, r2, #1
 8002202:	607b      	str	r3, [r7, #4]
 8002204:	68fc      	ldr	r4, [r7, #12]
 8002206:	683b      	ldr	r3, [r7, #0]
 8002208:	68b9      	ldr	r1, [r7, #8]
 800220a:	2020      	movs	r0, #32
 800220c:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
 800220e:	697b      	ldr	r3, [r7, #20]
 8002210:	3301      	adds	r3, #1
 8002212:	617b      	str	r3, [r7, #20]
 8002214:	697a      	ldr	r2, [r7, #20]
 8002216:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002218:	429a      	cmp	r2, r3
 800221a:	d3f0      	bcc.n	80021fe <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
 800221c:	e00d      	b.n	800223a <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
 800221e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002220:	3b01      	subs	r3, #1
 8002222:	62fb      	str	r3, [r7, #44]	; 0x2c
 8002224:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8002226:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002228:	4413      	add	r3, r2
 800222a:	7818      	ldrb	r0, [r3, #0]
 800222c:	687a      	ldr	r2, [r7, #4]
 800222e:	1c53      	adds	r3, r2, #1
 8002230:	607b      	str	r3, [r7, #4]
 8002232:	68fc      	ldr	r4, [r7, #12]
 8002234:	683b      	ldr	r3, [r7, #0]
 8002236:	68b9      	ldr	r1, [r7, #8]
 8002238:	47a0      	blx	r4
  while (len) {
 800223a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800223c:	2b00      	cmp	r3, #0
 800223e:	d1ee      	bne.n	800221e <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
 8002240:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002242:	f003 0302 	and.w	r3, r3, #2
 8002246:	2b00      	cmp	r3, #0
 8002248:	d00e      	beq.n	8002268 <_out_rev+0x96>
    while (idx - start_idx < width) {
 800224a:	e007      	b.n	800225c <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
 800224c:	687a      	ldr	r2, [r7, #4]
 800224e:	1c53      	adds	r3, r2, #1
 8002250:	607b      	str	r3, [r7, #4]
 8002252:	68fc      	ldr	r4, [r7, #12]
 8002254:	683b      	ldr	r3, [r7, #0]
 8002256:	68b9      	ldr	r1, [r7, #8]
 8002258:	2020      	movs	r0, #32
 800225a:	47a0      	blx	r4
    while (idx - start_idx < width) {
 800225c:	687a      	ldr	r2, [r7, #4]
 800225e:	693b      	ldr	r3, [r7, #16]
 8002260:	1ad3      	subs	r3, r2, r3
 8002262:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002264:	429a      	cmp	r2, r3
 8002266:	d8f1      	bhi.n	800224c <_out_rev+0x7a>
    }
  }

  return idx;
 8002268:	687b      	ldr	r3, [r7, #4]
}
 800226a:	4618      	mov	r0, r3
 800226c:	371c      	adds	r7, #28
 800226e:	46bd      	mov	sp, r7
 8002270:	bd90      	pop	{r4, r7, pc}

08002272 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8002272:	b580      	push	{r7, lr}
 8002274:	b088      	sub	sp, #32
 8002276:	af04      	add	r7, sp, #16
 8002278:	60f8      	str	r0, [r7, #12]
 800227a:	60b9      	str	r1, [r7, #8]
 800227c:	607a      	str	r2, [r7, #4]
 800227e:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
 8002280:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002282:	f003 0302 	and.w	r3, r3, #2
 8002286:	2b00      	cmp	r3, #0
 8002288:	d136      	bne.n	80022f8 <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
 800228a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800228c:	2b00      	cmp	r3, #0
 800228e:	d018      	beq.n	80022c2 <_ntoa_format+0x50>
 8002290:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002292:	f003 0301 	and.w	r3, r3, #1
 8002296:	2b00      	cmp	r3, #0
 8002298:	d013      	beq.n	80022c2 <_ntoa_format+0x50>
 800229a:	f897 3020 	ldrb.w	r3, [r7, #32]
 800229e:	2b00      	cmp	r3, #0
 80022a0:	d104      	bne.n	80022ac <_ntoa_format+0x3a>
 80022a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80022a4:	f003 030c 	and.w	r3, r3, #12
 80022a8:	2b00      	cmp	r3, #0
 80022aa:	d00a      	beq.n	80022c2 <_ntoa_format+0x50>
      width--;
 80022ac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80022ae:	3b01      	subs	r3, #1
 80022b0:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80022b2:	e006      	b.n	80022c2 <_ntoa_format+0x50>
      buf[len++] = '0';
 80022b4:	69fb      	ldr	r3, [r7, #28]
 80022b6:	1c5a      	adds	r2, r3, #1
 80022b8:	61fa      	str	r2, [r7, #28]
 80022ba:	69ba      	ldr	r2, [r7, #24]
 80022bc:	4413      	add	r3, r2
 80022be:	2230      	movs	r2, #48	; 0x30
 80022c0:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80022c2:	69fa      	ldr	r2, [r7, #28]
 80022c4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80022c6:	429a      	cmp	r2, r3
 80022c8:	d20a      	bcs.n	80022e0 <_ntoa_format+0x6e>
 80022ca:	69fb      	ldr	r3, [r7, #28]
 80022cc:	2b1f      	cmp	r3, #31
 80022ce:	d9f1      	bls.n	80022b4 <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80022d0:	e006      	b.n	80022e0 <_ntoa_format+0x6e>
      buf[len++] = '0';
 80022d2:	69fb      	ldr	r3, [r7, #28]
 80022d4:	1c5a      	adds	r2, r3, #1
 80022d6:	61fa      	str	r2, [r7, #28]
 80022d8:	69ba      	ldr	r2, [r7, #24]
 80022da:	4413      	add	r3, r2
 80022dc:	2230      	movs	r2, #48	; 0x30
 80022de:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80022e0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80022e2:	f003 0301 	and.w	r3, r3, #1
 80022e6:	2b00      	cmp	r3, #0
 80022e8:	d006      	beq.n	80022f8 <_ntoa_format+0x86>
 80022ea:	69fa      	ldr	r2, [r7, #28]
 80022ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80022ee:	429a      	cmp	r2, r3
 80022f0:	d202      	bcs.n	80022f8 <_ntoa_format+0x86>
 80022f2:	69fb      	ldr	r3, [r7, #28]
 80022f4:	2b1f      	cmp	r3, #31
 80022f6:	d9ec      	bls.n	80022d2 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
 80022f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80022fa:	f003 0310 	and.w	r3, r3, #16
 80022fe:	2b00      	cmp	r3, #0
 8002300:	d058      	beq.n	80023b4 <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
 8002302:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002304:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002308:	2b00      	cmp	r3, #0
 800230a:	d116      	bne.n	800233a <_ntoa_format+0xc8>
 800230c:	69fb      	ldr	r3, [r7, #28]
 800230e:	2b00      	cmp	r3, #0
 8002310:	d013      	beq.n	800233a <_ntoa_format+0xc8>
 8002312:	69fa      	ldr	r2, [r7, #28]
 8002314:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002316:	429a      	cmp	r2, r3
 8002318:	d003      	beq.n	8002322 <_ntoa_format+0xb0>
 800231a:	69fa      	ldr	r2, [r7, #28]
 800231c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800231e:	429a      	cmp	r2, r3
 8002320:	d10b      	bne.n	800233a <_ntoa_format+0xc8>
      len--;
 8002322:	69fb      	ldr	r3, [r7, #28]
 8002324:	3b01      	subs	r3, #1
 8002326:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
 8002328:	69fb      	ldr	r3, [r7, #28]
 800232a:	2b00      	cmp	r3, #0
 800232c:	d005      	beq.n	800233a <_ntoa_format+0xc8>
 800232e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002330:	2b10      	cmp	r3, #16
 8002332:	d102      	bne.n	800233a <_ntoa_format+0xc8>
        len--;
 8002334:	69fb      	ldr	r3, [r7, #28]
 8002336:	3b01      	subs	r3, #1
 8002338:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 800233a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800233c:	2b10      	cmp	r3, #16
 800233e:	d10f      	bne.n	8002360 <_ntoa_format+0xee>
 8002340:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002342:	f003 0320 	and.w	r3, r3, #32
 8002346:	2b00      	cmp	r3, #0
 8002348:	d10a      	bne.n	8002360 <_ntoa_format+0xee>
 800234a:	69fb      	ldr	r3, [r7, #28]
 800234c:	2b1f      	cmp	r3, #31
 800234e:	d807      	bhi.n	8002360 <_ntoa_format+0xee>
      buf[len++] = 'x';
 8002350:	69fb      	ldr	r3, [r7, #28]
 8002352:	1c5a      	adds	r2, r3, #1
 8002354:	61fa      	str	r2, [r7, #28]
 8002356:	69ba      	ldr	r2, [r7, #24]
 8002358:	4413      	add	r3, r2
 800235a:	2278      	movs	r2, #120	; 0x78
 800235c:	701a      	strb	r2, [r3, #0]
 800235e:	e01f      	b.n	80023a0 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8002360:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002362:	2b10      	cmp	r3, #16
 8002364:	d10f      	bne.n	8002386 <_ntoa_format+0x114>
 8002366:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002368:	f003 0320 	and.w	r3, r3, #32
 800236c:	2b00      	cmp	r3, #0
 800236e:	d00a      	beq.n	8002386 <_ntoa_format+0x114>
 8002370:	69fb      	ldr	r3, [r7, #28]
 8002372:	2b1f      	cmp	r3, #31
 8002374:	d807      	bhi.n	8002386 <_ntoa_format+0x114>
      buf[len++] = 'X';
 8002376:	69fb      	ldr	r3, [r7, #28]
 8002378:	1c5a      	adds	r2, r3, #1
 800237a:	61fa      	str	r2, [r7, #28]
 800237c:	69ba      	ldr	r2, [r7, #24]
 800237e:	4413      	add	r3, r2
 8002380:	2258      	movs	r2, #88	; 0x58
 8002382:	701a      	strb	r2, [r3, #0]
 8002384:	e00c      	b.n	80023a0 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8002386:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002388:	2b02      	cmp	r3, #2
 800238a:	d109      	bne.n	80023a0 <_ntoa_format+0x12e>
 800238c:	69fb      	ldr	r3, [r7, #28]
 800238e:	2b1f      	cmp	r3, #31
 8002390:	d806      	bhi.n	80023a0 <_ntoa_format+0x12e>
      buf[len++] = 'b';
 8002392:	69fb      	ldr	r3, [r7, #28]
 8002394:	1c5a      	adds	r2, r3, #1
 8002396:	61fa      	str	r2, [r7, #28]
 8002398:	69ba      	ldr	r2, [r7, #24]
 800239a:	4413      	add	r3, r2
 800239c:	2262      	movs	r2, #98	; 0x62
 800239e:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
 80023a0:	69fb      	ldr	r3, [r7, #28]
 80023a2:	2b1f      	cmp	r3, #31
 80023a4:	d806      	bhi.n	80023b4 <_ntoa_format+0x142>
      buf[len++] = '0';
 80023a6:	69fb      	ldr	r3, [r7, #28]
 80023a8:	1c5a      	adds	r2, r3, #1
 80023aa:	61fa      	str	r2, [r7, #28]
 80023ac:	69ba      	ldr	r2, [r7, #24]
 80023ae:	4413      	add	r3, r2
 80023b0:	2230      	movs	r2, #48	; 0x30
 80023b2:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
 80023b4:	69fb      	ldr	r3, [r7, #28]
 80023b6:	2b1f      	cmp	r3, #31
 80023b8:	d824      	bhi.n	8002404 <_ntoa_format+0x192>
    if (negative) {
 80023ba:	f897 3020 	ldrb.w	r3, [r7, #32]
 80023be:	2b00      	cmp	r3, #0
 80023c0:	d007      	beq.n	80023d2 <_ntoa_format+0x160>
      buf[len++] = '-';
 80023c2:	69fb      	ldr	r3, [r7, #28]
 80023c4:	1c5a      	adds	r2, r3, #1
 80023c6:	61fa      	str	r2, [r7, #28]
 80023c8:	69ba      	ldr	r2, [r7, #24]
 80023ca:	4413      	add	r3, r2
 80023cc:	222d      	movs	r2, #45	; 0x2d
 80023ce:	701a      	strb	r2, [r3, #0]
 80023d0:	e018      	b.n	8002404 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
 80023d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80023d4:	f003 0304 	and.w	r3, r3, #4
 80023d8:	2b00      	cmp	r3, #0
 80023da:	d007      	beq.n	80023ec <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
 80023dc:	69fb      	ldr	r3, [r7, #28]
 80023de:	1c5a      	adds	r2, r3, #1
 80023e0:	61fa      	str	r2, [r7, #28]
 80023e2:	69ba      	ldr	r2, [r7, #24]
 80023e4:	4413      	add	r3, r2
 80023e6:	222b      	movs	r2, #43	; 0x2b
 80023e8:	701a      	strb	r2, [r3, #0]
 80023ea:	e00b      	b.n	8002404 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
 80023ec:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80023ee:	f003 0308 	and.w	r3, r3, #8
 80023f2:	2b00      	cmp	r3, #0
 80023f4:	d006      	beq.n	8002404 <_ntoa_format+0x192>
      buf[len++] = ' ';
 80023f6:	69fb      	ldr	r3, [r7, #28]
 80023f8:	1c5a      	adds	r2, r3, #1
 80023fa:	61fa      	str	r2, [r7, #28]
 80023fc:	69ba      	ldr	r2, [r7, #24]
 80023fe:	4413      	add	r3, r2
 8002400:	2220      	movs	r2, #32
 8002402:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
 8002404:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002406:	9303      	str	r3, [sp, #12]
 8002408:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800240a:	9302      	str	r3, [sp, #8]
 800240c:	69fb      	ldr	r3, [r7, #28]
 800240e:	9301      	str	r3, [sp, #4]
 8002410:	69bb      	ldr	r3, [r7, #24]
 8002412:	9300      	str	r3, [sp, #0]
 8002414:	683b      	ldr	r3, [r7, #0]
 8002416:	687a      	ldr	r2, [r7, #4]
 8002418:	68b9      	ldr	r1, [r7, #8]
 800241a:	68f8      	ldr	r0, [r7, #12]
 800241c:	f7ff fed9 	bl	80021d2 <_out_rev>
 8002420:	4603      	mov	r3, r0
}
 8002422:	4618      	mov	r0, r3
 8002424:	3710      	adds	r7, #16
 8002426:	46bd      	mov	sp, r7
 8002428:	bd80      	pop	{r7, pc}

0800242a <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
 800242a:	b580      	push	{r7, lr}
 800242c:	b096      	sub	sp, #88	; 0x58
 800242e:	af08      	add	r7, sp, #32
 8002430:	60f8      	str	r0, [r7, #12]
 8002432:	60b9      	str	r1, [r7, #8]
 8002434:	607a      	str	r2, [r7, #4]
 8002436:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
 8002438:	2300      	movs	r3, #0
 800243a:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
 800243c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800243e:	2b00      	cmp	r3, #0
 8002440:	d103      	bne.n	800244a <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
 8002442:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002444:	f023 0310 	bic.w	r3, r3, #16
 8002448:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
 800244a:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 800244c:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002450:	2b00      	cmp	r3, #0
 8002452:	d002      	beq.n	800245a <_ntoa_long+0x30>
 8002454:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002456:	2b00      	cmp	r3, #0
 8002458:	d033      	beq.n	80024c2 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
 800245a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800245c:	6cba      	ldr	r2, [r7, #72]	; 0x48
 800245e:	fbb3 f2f2 	udiv	r2, r3, r2
 8002462:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8002464:	fb01 f202 	mul.w	r2, r1, r2
 8002468:	1a9b      	subs	r3, r3, r2
 800246a:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
 800246e:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8002472:	2b09      	cmp	r3, #9
 8002474:	d804      	bhi.n	8002480 <_ntoa_long+0x56>
 8002476:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 800247a:	3330      	adds	r3, #48	; 0x30
 800247c:	b2da      	uxtb	r2, r3
 800247e:	e00d      	b.n	800249c <_ntoa_long+0x72>
 8002480:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002482:	f003 0320 	and.w	r3, r3, #32
 8002486:	2b00      	cmp	r3, #0
 8002488:	d001      	beq.n	800248e <_ntoa_long+0x64>
 800248a:	2241      	movs	r2, #65	; 0x41
 800248c:	e000      	b.n	8002490 <_ntoa_long+0x66>
 800248e:	2261      	movs	r2, #97	; 0x61
 8002490:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8002494:	4413      	add	r3, r2
 8002496:	b2db      	uxtb	r3, r3
 8002498:	3b0a      	subs	r3, #10
 800249a:	b2da      	uxtb	r2, r3
 800249c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800249e:	1c59      	adds	r1, r3, #1
 80024a0:	6379      	str	r1, [r7, #52]	; 0x34
 80024a2:	f107 0138 	add.w	r1, r7, #56	; 0x38
 80024a6:	440b      	add	r3, r1
 80024a8:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
 80024ac:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80024ae:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80024b0:	fbb2 f3f3 	udiv	r3, r2, r3
 80024b4:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
 80024b6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80024b8:	2b00      	cmp	r3, #0
 80024ba:	d002      	beq.n	80024c2 <_ntoa_long+0x98>
 80024bc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80024be:	2b1f      	cmp	r3, #31
 80024c0:	d9cb      	bls.n	800245a <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
 80024c2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80024c4:	9306      	str	r3, [sp, #24]
 80024c6:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 80024c8:	9305      	str	r3, [sp, #20]
 80024ca:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80024cc:	9304      	str	r3, [sp, #16]
 80024ce:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80024d0:	9303      	str	r3, [sp, #12]
 80024d2:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
 80024d6:	9302      	str	r3, [sp, #8]
 80024d8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80024da:	9301      	str	r3, [sp, #4]
 80024dc:	f107 0310 	add.w	r3, r7, #16
 80024e0:	9300      	str	r3, [sp, #0]
 80024e2:	683b      	ldr	r3, [r7, #0]
 80024e4:	687a      	ldr	r2, [r7, #4]
 80024e6:	68b9      	ldr	r1, [r7, #8]
 80024e8:	68f8      	ldr	r0, [r7, #12]
 80024ea:	f7ff fec2 	bl	8002272 <_ntoa_format>
 80024ee:	4603      	mov	r3, r0
}
 80024f0:	4618      	mov	r0, r3
 80024f2:	3738      	adds	r7, #56	; 0x38
 80024f4:	46bd      	mov	sp, r7
 80024f6:	bd80      	pop	{r7, pc}

080024f8 <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
 80024f8:	b590      	push	{r4, r7, lr}
 80024fa:	b099      	sub	sp, #100	; 0x64
 80024fc:	af06      	add	r7, sp, #24
 80024fe:	60f8      	str	r0, [r7, #12]
 8002500:	60b9      	str	r1, [r7, #8]
 8002502:	607a      	str	r2, [r7, #4]
 8002504:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
 8002506:	2300      	movs	r3, #0
 8002508:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
 800250a:	68bb      	ldr	r3, [r7, #8]
 800250c:	2b00      	cmp	r3, #0
 800250e:	f040 83bf 	bne.w	8002c90 <_vsnprintf+0x798>
    // use null output function
    out = _out_null;
 8002512:	4b9f      	ldr	r3, [pc, #636]	; (8002790 <_vsnprintf+0x298>)
 8002514:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
 8002516:	e3bb      	b.n	8002c90 <_vsnprintf+0x798>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
 8002518:	683b      	ldr	r3, [r7, #0]
 800251a:	781b      	ldrb	r3, [r3, #0]
 800251c:	2b25      	cmp	r3, #37	; 0x25
 800251e:	d00c      	beq.n	800253a <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
 8002520:	683b      	ldr	r3, [r7, #0]
 8002522:	7818      	ldrb	r0, [r3, #0]
 8002524:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002526:	1c53      	adds	r3, r2, #1
 8002528:	637b      	str	r3, [r7, #52]	; 0x34
 800252a:	68fc      	ldr	r4, [r7, #12]
 800252c:	687b      	ldr	r3, [r7, #4]
 800252e:	68b9      	ldr	r1, [r7, #8]
 8002530:	47a0      	blx	r4
      format++;
 8002532:	683b      	ldr	r3, [r7, #0]
 8002534:	3301      	adds	r3, #1
 8002536:	603b      	str	r3, [r7, #0]
      continue;
 8002538:	e3aa      	b.n	8002c90 <_vsnprintf+0x798>
    }
    else {
      // yes, evaluate it
      format++;
 800253a:	683b      	ldr	r3, [r7, #0]
 800253c:	3301      	adds	r3, #1
 800253e:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
 8002540:	2300      	movs	r3, #0
 8002542:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
 8002544:	683b      	ldr	r3, [r7, #0]
 8002546:	781b      	ldrb	r3, [r3, #0]
 8002548:	3b20      	subs	r3, #32
 800254a:	2b10      	cmp	r3, #16
 800254c:	d856      	bhi.n	80025fc <_vsnprintf+0x104>
 800254e:	a201      	add	r2, pc, #4	; (adr r2, 8002554 <_vsnprintf+0x5c>)
 8002550:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002554:	080025d5 	.word	0x080025d5
 8002558:	080025fd 	.word	0x080025fd
 800255c:	080025fd 	.word	0x080025fd
 8002560:	080025e9 	.word	0x080025e9
 8002564:	080025fd 	.word	0x080025fd
 8002568:	080025fd 	.word	0x080025fd
 800256c:	080025fd 	.word	0x080025fd
 8002570:	080025fd 	.word	0x080025fd
 8002574:	080025fd 	.word	0x080025fd
 8002578:	080025fd 	.word	0x080025fd
 800257c:	080025fd 	.word	0x080025fd
 8002580:	080025c1 	.word	0x080025c1
 8002584:	080025fd 	.word	0x080025fd
 8002588:	080025ad 	.word	0x080025ad
 800258c:	080025fd 	.word	0x080025fd
 8002590:	080025fd 	.word	0x080025fd
 8002594:	08002599 	.word	0x08002599
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
 8002598:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800259a:	f043 0301 	orr.w	r3, r3, #1
 800259e:	647b      	str	r3, [r7, #68]	; 0x44
 80025a0:	683b      	ldr	r3, [r7, #0]
 80025a2:	3301      	adds	r3, #1
 80025a4:	603b      	str	r3, [r7, #0]
 80025a6:	2301      	movs	r3, #1
 80025a8:	63bb      	str	r3, [r7, #56]	; 0x38
 80025aa:	e02a      	b.n	8002602 <_vsnprintf+0x10a>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
 80025ac:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80025ae:	f043 0302 	orr.w	r3, r3, #2
 80025b2:	647b      	str	r3, [r7, #68]	; 0x44
 80025b4:	683b      	ldr	r3, [r7, #0]
 80025b6:	3301      	adds	r3, #1
 80025b8:	603b      	str	r3, [r7, #0]
 80025ba:	2301      	movs	r3, #1
 80025bc:	63bb      	str	r3, [r7, #56]	; 0x38
 80025be:	e020      	b.n	8002602 <_vsnprintf+0x10a>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
 80025c0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80025c2:	f043 0304 	orr.w	r3, r3, #4
 80025c6:	647b      	str	r3, [r7, #68]	; 0x44
 80025c8:	683b      	ldr	r3, [r7, #0]
 80025ca:	3301      	adds	r3, #1
 80025cc:	603b      	str	r3, [r7, #0]
 80025ce:	2301      	movs	r3, #1
 80025d0:	63bb      	str	r3, [r7, #56]	; 0x38
 80025d2:	e016      	b.n	8002602 <_vsnprintf+0x10a>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
 80025d4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80025d6:	f043 0308 	orr.w	r3, r3, #8
 80025da:	647b      	str	r3, [r7, #68]	; 0x44
 80025dc:	683b      	ldr	r3, [r7, #0]
 80025de:	3301      	adds	r3, #1
 80025e0:	603b      	str	r3, [r7, #0]
 80025e2:	2301      	movs	r3, #1
 80025e4:	63bb      	str	r3, [r7, #56]	; 0x38
 80025e6:	e00c      	b.n	8002602 <_vsnprintf+0x10a>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
 80025e8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80025ea:	f043 0310 	orr.w	r3, r3, #16
 80025ee:	647b      	str	r3, [r7, #68]	; 0x44
 80025f0:	683b      	ldr	r3, [r7, #0]
 80025f2:	3301      	adds	r3, #1
 80025f4:	603b      	str	r3, [r7, #0]
 80025f6:	2301      	movs	r3, #1
 80025f8:	63bb      	str	r3, [r7, #56]	; 0x38
 80025fa:	e002      	b.n	8002602 <_vsnprintf+0x10a>
        default :                                   n = 0U; break;
 80025fc:	2300      	movs	r3, #0
 80025fe:	63bb      	str	r3, [r7, #56]	; 0x38
 8002600:	bf00      	nop
      }
    } while (n);
 8002602:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8002604:	2b00      	cmp	r3, #0
 8002606:	d19d      	bne.n	8002544 <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
 8002608:	2300      	movs	r3, #0
 800260a:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
 800260c:	683b      	ldr	r3, [r7, #0]
 800260e:	781b      	ldrb	r3, [r3, #0]
 8002610:	4618      	mov	r0, r3
 8002612:	f7ff fda3 	bl	800215c <_is_digit>
 8002616:	4603      	mov	r3, r0
 8002618:	2b00      	cmp	r3, #0
 800261a:	d005      	beq.n	8002628 <_vsnprintf+0x130>
      width = _atoi(&format);
 800261c:	463b      	mov	r3, r7
 800261e:	4618      	mov	r0, r3
 8002620:	f7ff fdb3 	bl	800218a <_atoi>
 8002624:	6438      	str	r0, [r7, #64]	; 0x40
 8002626:	e018      	b.n	800265a <_vsnprintf+0x162>
    }
    else if (*format == '*') {
 8002628:	683b      	ldr	r3, [r7, #0]
 800262a:	781b      	ldrb	r3, [r3, #0]
 800262c:	2b2a      	cmp	r3, #42	; 0x2a
 800262e:	d114      	bne.n	800265a <_vsnprintf+0x162>
      const int w = va_arg(va, int);
 8002630:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002632:	1d1a      	adds	r2, r3, #4
 8002634:	65ba      	str	r2, [r7, #88]	; 0x58
 8002636:	681b      	ldr	r3, [r3, #0]
 8002638:	623b      	str	r3, [r7, #32]
      if (w < 0) {
 800263a:	6a3b      	ldr	r3, [r7, #32]
 800263c:	2b00      	cmp	r3, #0
 800263e:	da07      	bge.n	8002650 <_vsnprintf+0x158>
        flags |= FLAGS_LEFT;    // reverse padding
 8002640:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002642:	f043 0302 	orr.w	r3, r3, #2
 8002646:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
 8002648:	6a3b      	ldr	r3, [r7, #32]
 800264a:	425b      	negs	r3, r3
 800264c:	643b      	str	r3, [r7, #64]	; 0x40
 800264e:	e001      	b.n	8002654 <_vsnprintf+0x15c>
      }
      else {
        width = (unsigned int)w;
 8002650:	6a3b      	ldr	r3, [r7, #32]
 8002652:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
 8002654:	683b      	ldr	r3, [r7, #0]
 8002656:	3301      	adds	r3, #1
 8002658:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
 800265a:	2300      	movs	r3, #0
 800265c:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
 800265e:	683b      	ldr	r3, [r7, #0]
 8002660:	781b      	ldrb	r3, [r3, #0]
 8002662:	2b2e      	cmp	r3, #46	; 0x2e
 8002664:	d124      	bne.n	80026b0 <_vsnprintf+0x1b8>
      flags |= FLAGS_PRECISION;
 8002666:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002668:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 800266c:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
 800266e:	683b      	ldr	r3, [r7, #0]
 8002670:	3301      	adds	r3, #1
 8002672:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
 8002674:	683b      	ldr	r3, [r7, #0]
 8002676:	781b      	ldrb	r3, [r3, #0]
 8002678:	4618      	mov	r0, r3
 800267a:	f7ff fd6f 	bl	800215c <_is_digit>
 800267e:	4603      	mov	r3, r0
 8002680:	2b00      	cmp	r3, #0
 8002682:	d005      	beq.n	8002690 <_vsnprintf+0x198>
        precision = _atoi(&format);
 8002684:	463b      	mov	r3, r7
 8002686:	4618      	mov	r0, r3
 8002688:	f7ff fd7f 	bl	800218a <_atoi>
 800268c:	63f8      	str	r0, [r7, #60]	; 0x3c
 800268e:	e00f      	b.n	80026b0 <_vsnprintf+0x1b8>
      }
      else if (*format == '*') {
 8002690:	683b      	ldr	r3, [r7, #0]
 8002692:	781b      	ldrb	r3, [r3, #0]
 8002694:	2b2a      	cmp	r3, #42	; 0x2a
 8002696:	d10b      	bne.n	80026b0 <_vsnprintf+0x1b8>
        const int prec = (int)va_arg(va, int);
 8002698:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800269a:	1d1a      	adds	r2, r3, #4
 800269c:	65ba      	str	r2, [r7, #88]	; 0x58
 800269e:	681b      	ldr	r3, [r3, #0]
 80026a0:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
 80026a2:	69fb      	ldr	r3, [r7, #28]
 80026a4:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80026a8:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
 80026aa:	683b      	ldr	r3, [r7, #0]
 80026ac:	3301      	adds	r3, #1
 80026ae:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
 80026b0:	683b      	ldr	r3, [r7, #0]
 80026b2:	781b      	ldrb	r3, [r3, #0]
 80026b4:	3b68      	subs	r3, #104	; 0x68
 80026b6:	2b12      	cmp	r3, #18
 80026b8:	d866      	bhi.n	8002788 <_vsnprintf+0x290>
 80026ba:	a201      	add	r2, pc, #4	; (adr r2, 80026c0 <_vsnprintf+0x1c8>)
 80026bc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80026c0:	08002733 	.word	0x08002733
 80026c4:	08002789 	.word	0x08002789
 80026c8:	08002769 	.word	0x08002769
 80026cc:	08002789 	.word	0x08002789
 80026d0:	0800270d 	.word	0x0800270d
 80026d4:	08002789 	.word	0x08002789
 80026d8:	08002789 	.word	0x08002789
 80026dc:	08002789 	.word	0x08002789
 80026e0:	08002789 	.word	0x08002789
 80026e4:	08002789 	.word	0x08002789
 80026e8:	08002789 	.word	0x08002789
 80026ec:	08002789 	.word	0x08002789
 80026f0:	08002759 	.word	0x08002759
 80026f4:	08002789 	.word	0x08002789
 80026f8:	08002789 	.word	0x08002789
 80026fc:	08002789 	.word	0x08002789
 8002700:	08002789 	.word	0x08002789
 8002704:	08002789 	.word	0x08002789
 8002708:	08002779 	.word	0x08002779
      case 'l' :
        flags |= FLAGS_LONG;
 800270c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800270e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002712:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002714:	683b      	ldr	r3, [r7, #0]
 8002716:	3301      	adds	r3, #1
 8002718:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
 800271a:	683b      	ldr	r3, [r7, #0]
 800271c:	781b      	ldrb	r3, [r3, #0]
 800271e:	2b6c      	cmp	r3, #108	; 0x6c
 8002720:	d134      	bne.n	800278c <_vsnprintf+0x294>
          flags |= FLAGS_LONG_LONG;
 8002722:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002724:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002728:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 800272a:	683b      	ldr	r3, [r7, #0]
 800272c:	3301      	adds	r3, #1
 800272e:	603b      	str	r3, [r7, #0]
        }
        break;
 8002730:	e02c      	b.n	800278c <_vsnprintf+0x294>
      case 'h' :
        flags |= FLAGS_SHORT;
 8002732:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002734:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002738:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 800273a:	683b      	ldr	r3, [r7, #0]
 800273c:	3301      	adds	r3, #1
 800273e:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
 8002740:	683b      	ldr	r3, [r7, #0]
 8002742:	781b      	ldrb	r3, [r3, #0]
 8002744:	2b68      	cmp	r3, #104	; 0x68
 8002746:	d125      	bne.n	8002794 <_vsnprintf+0x29c>
          flags |= FLAGS_CHAR;
 8002748:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800274a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800274e:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 8002750:	683b      	ldr	r3, [r7, #0]
 8002752:	3301      	adds	r3, #1
 8002754:	603b      	str	r3, [r7, #0]
        }
        break;
 8002756:	e01d      	b.n	8002794 <_vsnprintf+0x29c>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8002758:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800275a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800275e:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002760:	683b      	ldr	r3, [r7, #0]
 8002762:	3301      	adds	r3, #1
 8002764:	603b      	str	r3, [r7, #0]
        break;
 8002766:	e016      	b.n	8002796 <_vsnprintf+0x29e>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8002768:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800276a:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800276e:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002770:	683b      	ldr	r3, [r7, #0]
 8002772:	3301      	adds	r3, #1
 8002774:	603b      	str	r3, [r7, #0]
        break;
 8002776:	e00e      	b.n	8002796 <_vsnprintf+0x29e>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8002778:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800277a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800277e:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002780:	683b      	ldr	r3, [r7, #0]
 8002782:	3301      	adds	r3, #1
 8002784:	603b      	str	r3, [r7, #0]
        break;
 8002786:	e006      	b.n	8002796 <_vsnprintf+0x29e>
      default :
        break;
 8002788:	bf00      	nop
 800278a:	e004      	b.n	8002796 <_vsnprintf+0x29e>
        break;
 800278c:	bf00      	nop
 800278e:	e002      	b.n	8002796 <_vsnprintf+0x29e>
 8002790:	080020e1 	.word	0x080020e1
        break;
 8002794:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
 8002796:	683b      	ldr	r3, [r7, #0]
 8002798:	781b      	ldrb	r3, [r3, #0]
 800279a:	3b25      	subs	r3, #37	; 0x25
 800279c:	2b53      	cmp	r3, #83	; 0x53
 800279e:	f200 826a 	bhi.w	8002c76 <_vsnprintf+0x77e>
 80027a2:	a201      	add	r2, pc, #4	; (adr r2, 80027a8 <_vsnprintf+0x2b0>)
 80027a4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80027a8:	08002c5f 	.word	0x08002c5f
 80027ac:	08002c77 	.word	0x08002c77
 80027b0:	08002c77 	.word	0x08002c77
 80027b4:	08002c77 	.word	0x08002c77
 80027b8:	08002c77 	.word	0x08002c77
 80027bc:	08002c77 	.word	0x08002c77
 80027c0:	08002c77 	.word	0x08002c77
 80027c4:	08002c77 	.word	0x08002c77
 80027c8:	08002c77 	.word	0x08002c77
 80027cc:	08002c77 	.word	0x08002c77
 80027d0:	08002c77 	.word	0x08002c77
 80027d4:	08002c77 	.word	0x08002c77
 80027d8:	08002c77 	.word	0x08002c77
 80027dc:	08002c77 	.word	0x08002c77
 80027e0:	08002c77 	.word	0x08002c77
 80027e4:	08002c77 	.word	0x08002c77
 80027e8:	08002c77 	.word	0x08002c77
 80027ec:	08002c77 	.word	0x08002c77
 80027f0:	08002c77 	.word	0x08002c77
 80027f4:	08002c77 	.word	0x08002c77
 80027f8:	08002c77 	.word	0x08002c77
 80027fc:	08002c77 	.word	0x08002c77
 8002800:	08002c77 	.word	0x08002c77
 8002804:	08002c77 	.word	0x08002c77
 8002808:	08002c77 	.word	0x08002c77
 800280c:	08002c77 	.word	0x08002c77
 8002810:	08002c77 	.word	0x08002c77
 8002814:	08002c77 	.word	0x08002c77
 8002818:	08002c77 	.word	0x08002c77
 800281c:	08002c77 	.word	0x08002c77
 8002820:	08002c77 	.word	0x08002c77
 8002824:	08002c77 	.word	0x08002c77
 8002828:	08002c77 	.word	0x08002c77
 800282c:	08002c77 	.word	0x08002c77
 8002830:	08002c77 	.word	0x08002c77
 8002834:	08002c77 	.word	0x08002c77
 8002838:	08002c77 	.word	0x08002c77
 800283c:	08002c77 	.word	0x08002c77
 8002840:	08002c77 	.word	0x08002c77
 8002844:	08002c77 	.word	0x08002c77
 8002848:	08002c77 	.word	0x08002c77
 800284c:	08002c77 	.word	0x08002c77
 8002850:	08002c77 	.word	0x08002c77
 8002854:	08002c77 	.word	0x08002c77
 8002858:	08002c77 	.word	0x08002c77
 800285c:	08002c77 	.word	0x08002c77
 8002860:	08002c77 	.word	0x08002c77
 8002864:	08002c77 	.word	0x08002c77
 8002868:	08002c77 	.word	0x08002c77
 800286c:	08002c77 	.word	0x08002c77
 8002870:	08002c77 	.word	0x08002c77
 8002874:	080028f9 	.word	0x080028f9
 8002878:	08002c77 	.word	0x08002c77
 800287c:	08002c77 	.word	0x08002c77
 8002880:	08002c77 	.word	0x08002c77
 8002884:	08002c77 	.word	0x08002c77
 8002888:	08002c77 	.word	0x08002c77
 800288c:	08002c77 	.word	0x08002c77
 8002890:	08002c77 	.word	0x08002c77
 8002894:	08002c77 	.word	0x08002c77
 8002898:	08002c77 	.word	0x08002c77
 800289c:	080028f9 	.word	0x080028f9
 80028a0:	08002ae5 	.word	0x08002ae5
 80028a4:	080028f9 	.word	0x080028f9
 80028a8:	08002c77 	.word	0x08002c77
 80028ac:	08002c77 	.word	0x08002c77
 80028b0:	08002c77 	.word	0x08002c77
 80028b4:	08002c77 	.word	0x08002c77
 80028b8:	080028f9 	.word	0x080028f9
 80028bc:	08002c77 	.word	0x08002c77
 80028c0:	08002c77 	.word	0x08002c77
 80028c4:	08002c77 	.word	0x08002c77
 80028c8:	08002c77 	.word	0x08002c77
 80028cc:	08002c77 	.word	0x08002c77
 80028d0:	080028f9 	.word	0x080028f9
 80028d4:	08002c1d 	.word	0x08002c1d
 80028d8:	08002c77 	.word	0x08002c77
 80028dc:	08002c77 	.word	0x08002c77
 80028e0:	08002b59 	.word	0x08002b59
 80028e4:	08002c77 	.word	0x08002c77
 80028e8:	080028f9 	.word	0x080028f9
 80028ec:	08002c77 	.word	0x08002c77
 80028f0:	08002c77 	.word	0x08002c77
 80028f4:	080028f9 	.word	0x080028f9
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
 80028f8:	683b      	ldr	r3, [r7, #0]
 80028fa:	781b      	ldrb	r3, [r3, #0]
 80028fc:	2b78      	cmp	r3, #120	; 0x78
 80028fe:	d003      	beq.n	8002908 <_vsnprintf+0x410>
 8002900:	683b      	ldr	r3, [r7, #0]
 8002902:	781b      	ldrb	r3, [r3, #0]
 8002904:	2b58      	cmp	r3, #88	; 0x58
 8002906:	d102      	bne.n	800290e <_vsnprintf+0x416>
          base = 16U;
 8002908:	2310      	movs	r3, #16
 800290a:	633b      	str	r3, [r7, #48]	; 0x30
 800290c:	e013      	b.n	8002936 <_vsnprintf+0x43e>
        }
        else if (*format == 'o') {
 800290e:	683b      	ldr	r3, [r7, #0]
 8002910:	781b      	ldrb	r3, [r3, #0]
 8002912:	2b6f      	cmp	r3, #111	; 0x6f
 8002914:	d102      	bne.n	800291c <_vsnprintf+0x424>
          base =  8U;
 8002916:	2308      	movs	r3, #8
 8002918:	633b      	str	r3, [r7, #48]	; 0x30
 800291a:	e00c      	b.n	8002936 <_vsnprintf+0x43e>
        }
        else if (*format == 'b') {
 800291c:	683b      	ldr	r3, [r7, #0]
 800291e:	781b      	ldrb	r3, [r3, #0]
 8002920:	2b62      	cmp	r3, #98	; 0x62
 8002922:	d102      	bne.n	800292a <_vsnprintf+0x432>
          base =  2U;
 8002924:	2302      	movs	r3, #2
 8002926:	633b      	str	r3, [r7, #48]	; 0x30
 8002928:	e005      	b.n	8002936 <_vsnprintf+0x43e>
        }
        else {
          base = 10U;
 800292a:	230a      	movs	r3, #10
 800292c:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
 800292e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002930:	f023 0310 	bic.w	r3, r3, #16
 8002934:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
 8002936:	683b      	ldr	r3, [r7, #0]
 8002938:	781b      	ldrb	r3, [r3, #0]
 800293a:	2b58      	cmp	r3, #88	; 0x58
 800293c:	d103      	bne.n	8002946 <_vsnprintf+0x44e>
          flags |= FLAGS_UPPERCASE;
 800293e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002940:	f043 0320 	orr.w	r3, r3, #32
 8002944:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
 8002946:	683b      	ldr	r3, [r7, #0]
 8002948:	781b      	ldrb	r3, [r3, #0]
 800294a:	2b69      	cmp	r3, #105	; 0x69
 800294c:	d007      	beq.n	800295e <_vsnprintf+0x466>
 800294e:	683b      	ldr	r3, [r7, #0]
 8002950:	781b      	ldrb	r3, [r3, #0]
 8002952:	2b64      	cmp	r3, #100	; 0x64
 8002954:	d003      	beq.n	800295e <_vsnprintf+0x466>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
 8002956:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002958:	f023 030c 	bic.w	r3, r3, #12
 800295c:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
 800295e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002960:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002964:	2b00      	cmp	r3, #0
 8002966:	d003      	beq.n	8002970 <_vsnprintf+0x478>
          flags &= ~FLAGS_ZEROPAD;
 8002968:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800296a:	f023 0301 	bic.w	r3, r3, #1
 800296e:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
 8002970:	683b      	ldr	r3, [r7, #0]
 8002972:	781b      	ldrb	r3, [r3, #0]
 8002974:	2b69      	cmp	r3, #105	; 0x69
 8002976:	d003      	beq.n	8002980 <_vsnprintf+0x488>
 8002978:	683b      	ldr	r3, [r7, #0]
 800297a:	781b      	ldrb	r3, [r3, #0]
 800297c:	2b64      	cmp	r3, #100	; 0x64
 800297e:	d15e      	bne.n	8002a3e <_vsnprintf+0x546>
          // signed
          if (flags & FLAGS_LONG_LONG) {
 8002980:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002982:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8002986:	2b00      	cmp	r3, #0
 8002988:	f040 80a8 	bne.w	8002adc <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 800298c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800298e:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002992:	2b00      	cmp	r3, #0
 8002994:	d01e      	beq.n	80029d4 <_vsnprintf+0x4dc>
            const long value = va_arg(va, long);
 8002996:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002998:	1d1a      	adds	r2, r3, #4
 800299a:	65ba      	str	r2, [r7, #88]	; 0x58
 800299c:	681b      	ldr	r3, [r3, #0]
 800299e:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 80029a0:	693b      	ldr	r3, [r7, #16]
 80029a2:	2b00      	cmp	r3, #0
 80029a4:	bfb8      	it	lt
 80029a6:	425b      	neglt	r3, r3
 80029a8:	4619      	mov	r1, r3
 80029aa:	693b      	ldr	r3, [r7, #16]
 80029ac:	0fdb      	lsrs	r3, r3, #31
 80029ae:	b2db      	uxtb	r3, r3
 80029b0:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80029b2:	9205      	str	r2, [sp, #20]
 80029b4:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80029b6:	9204      	str	r2, [sp, #16]
 80029b8:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 80029ba:	9203      	str	r2, [sp, #12]
 80029bc:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80029be:	9202      	str	r2, [sp, #8]
 80029c0:	9301      	str	r3, [sp, #4]
 80029c2:	9100      	str	r1, [sp, #0]
 80029c4:	687b      	ldr	r3, [r7, #4]
 80029c6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80029c8:	68b9      	ldr	r1, [r7, #8]
 80029ca:	68f8      	ldr	r0, [r7, #12]
 80029cc:	f7ff fd2d 	bl	800242a <_ntoa_long>
 80029d0:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 80029d2:	e083      	b.n	8002adc <_vsnprintf+0x5e4>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
 80029d4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029d6:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80029da:	2b00      	cmp	r3, #0
 80029dc:	d005      	beq.n	80029ea <_vsnprintf+0x4f2>
 80029de:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80029e0:	1d1a      	adds	r2, r3, #4
 80029e2:	65ba      	str	r2, [r7, #88]	; 0x58
 80029e4:	681b      	ldr	r3, [r3, #0]
 80029e6:	b2db      	uxtb	r3, r3
 80029e8:	e00e      	b.n	8002a08 <_vsnprintf+0x510>
 80029ea:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029ec:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80029f0:	2b00      	cmp	r3, #0
 80029f2:	d005      	beq.n	8002a00 <_vsnprintf+0x508>
 80029f4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80029f6:	1d1a      	adds	r2, r3, #4
 80029f8:	65ba      	str	r2, [r7, #88]	; 0x58
 80029fa:	681b      	ldr	r3, [r3, #0]
 80029fc:	b21b      	sxth	r3, r3
 80029fe:	e003      	b.n	8002a08 <_vsnprintf+0x510>
 8002a00:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a02:	1d1a      	adds	r2, r3, #4
 8002a04:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a06:	681b      	ldr	r3, [r3, #0]
 8002a08:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8002a0a:	697b      	ldr	r3, [r7, #20]
 8002a0c:	2b00      	cmp	r3, #0
 8002a0e:	bfb8      	it	lt
 8002a10:	425b      	neglt	r3, r3
 8002a12:	4619      	mov	r1, r3
 8002a14:	697b      	ldr	r3, [r7, #20]
 8002a16:	0fdb      	lsrs	r3, r3, #31
 8002a18:	b2db      	uxtb	r3, r3
 8002a1a:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002a1c:	9205      	str	r2, [sp, #20]
 8002a1e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002a20:	9204      	str	r2, [sp, #16]
 8002a22:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002a24:	9203      	str	r2, [sp, #12]
 8002a26:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002a28:	9202      	str	r2, [sp, #8]
 8002a2a:	9301      	str	r3, [sp, #4]
 8002a2c:	9100      	str	r1, [sp, #0]
 8002a2e:	687b      	ldr	r3, [r7, #4]
 8002a30:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002a32:	68b9      	ldr	r1, [r7, #8]
 8002a34:	68f8      	ldr	r0, [r7, #12]
 8002a36:	f7ff fcf8 	bl	800242a <_ntoa_long>
 8002a3a:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 8002a3c:	e04e      	b.n	8002adc <_vsnprintf+0x5e4>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
 8002a3e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002a40:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8002a44:	2b00      	cmp	r3, #0
 8002a46:	d149      	bne.n	8002adc <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 8002a48:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002a4a:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002a4e:	2b00      	cmp	r3, #0
 8002a50:	d016      	beq.n	8002a80 <_vsnprintf+0x588>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
 8002a52:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a54:	1d1a      	adds	r2, r3, #4
 8002a56:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a58:	681b      	ldr	r3, [r3, #0]
 8002a5a:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002a5c:	9205      	str	r2, [sp, #20]
 8002a5e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002a60:	9204      	str	r2, [sp, #16]
 8002a62:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002a64:	9203      	str	r2, [sp, #12]
 8002a66:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002a68:	9202      	str	r2, [sp, #8]
 8002a6a:	2200      	movs	r2, #0
 8002a6c:	9201      	str	r2, [sp, #4]
 8002a6e:	9300      	str	r3, [sp, #0]
 8002a70:	687b      	ldr	r3, [r7, #4]
 8002a72:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002a74:	68b9      	ldr	r1, [r7, #8]
 8002a76:	68f8      	ldr	r0, [r7, #12]
 8002a78:	f7ff fcd7 	bl	800242a <_ntoa_long>
 8002a7c:	6378      	str	r0, [r7, #52]	; 0x34
 8002a7e:	e02d      	b.n	8002adc <_vsnprintf+0x5e4>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
 8002a80:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002a82:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8002a86:	2b00      	cmp	r3, #0
 8002a88:	d005      	beq.n	8002a96 <_vsnprintf+0x59e>
 8002a8a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a8c:	1d1a      	adds	r2, r3, #4
 8002a8e:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a90:	681b      	ldr	r3, [r3, #0]
 8002a92:	b2db      	uxtb	r3, r3
 8002a94:	e00e      	b.n	8002ab4 <_vsnprintf+0x5bc>
 8002a96:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002a98:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002a9c:	2b00      	cmp	r3, #0
 8002a9e:	d005      	beq.n	8002aac <_vsnprintf+0x5b4>
 8002aa0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002aa2:	1d1a      	adds	r2, r3, #4
 8002aa4:	65ba      	str	r2, [r7, #88]	; 0x58
 8002aa6:	681b      	ldr	r3, [r3, #0]
 8002aa8:	b29b      	uxth	r3, r3
 8002aaa:	e003      	b.n	8002ab4 <_vsnprintf+0x5bc>
 8002aac:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002aae:	1d1a      	adds	r2, r3, #4
 8002ab0:	65ba      	str	r2, [r7, #88]	; 0x58
 8002ab2:	681b      	ldr	r3, [r3, #0]
 8002ab4:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
 8002ab6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002ab8:	9305      	str	r3, [sp, #20]
 8002aba:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002abc:	9304      	str	r3, [sp, #16]
 8002abe:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002ac0:	9303      	str	r3, [sp, #12]
 8002ac2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002ac4:	9302      	str	r3, [sp, #8]
 8002ac6:	2300      	movs	r3, #0
 8002ac8:	9301      	str	r3, [sp, #4]
 8002aca:	69bb      	ldr	r3, [r7, #24]
 8002acc:	9300      	str	r3, [sp, #0]
 8002ace:	687b      	ldr	r3, [r7, #4]
 8002ad0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002ad2:	68b9      	ldr	r1, [r7, #8]
 8002ad4:	68f8      	ldr	r0, [r7, #12]
 8002ad6:	f7ff fca8 	bl	800242a <_ntoa_long>
 8002ada:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
 8002adc:	683b      	ldr	r3, [r7, #0]
 8002ade:	3301      	adds	r3, #1
 8002ae0:	603b      	str	r3, [r7, #0]
        break;
 8002ae2:	e0d5      	b.n	8002c90 <_vsnprintf+0x798>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
 8002ae4:	2301      	movs	r3, #1
 8002ae6:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
 8002ae8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002aea:	f003 0302 	and.w	r3, r3, #2
 8002aee:	2b00      	cmp	r3, #0
 8002af0:	d10e      	bne.n	8002b10 <_vsnprintf+0x618>
          while (l++ < width) {
 8002af2:	e007      	b.n	8002b04 <_vsnprintf+0x60c>
            out(' ', buffer, idx++, maxlen);
 8002af4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002af6:	1c53      	adds	r3, r2, #1
 8002af8:	637b      	str	r3, [r7, #52]	; 0x34
 8002afa:	68fc      	ldr	r4, [r7, #12]
 8002afc:	687b      	ldr	r3, [r7, #4]
 8002afe:	68b9      	ldr	r1, [r7, #8]
 8002b00:	2020      	movs	r0, #32
 8002b02:	47a0      	blx	r4
          while (l++ < width) {
 8002b04:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002b06:	1c5a      	adds	r2, r3, #1
 8002b08:	62fa      	str	r2, [r7, #44]	; 0x2c
 8002b0a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002b0c:	429a      	cmp	r2, r3
 8002b0e:	d8f1      	bhi.n	8002af4 <_vsnprintf+0x5fc>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
 8002b10:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002b12:	1d1a      	adds	r2, r3, #4
 8002b14:	65ba      	str	r2, [r7, #88]	; 0x58
 8002b16:	681b      	ldr	r3, [r3, #0]
 8002b18:	b2d8      	uxtb	r0, r3
 8002b1a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b1c:	1c53      	adds	r3, r2, #1
 8002b1e:	637b      	str	r3, [r7, #52]	; 0x34
 8002b20:	68fc      	ldr	r4, [r7, #12]
 8002b22:	687b      	ldr	r3, [r7, #4]
 8002b24:	68b9      	ldr	r1, [r7, #8]
 8002b26:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
 8002b28:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b2a:	f003 0302 	and.w	r3, r3, #2
 8002b2e:	2b00      	cmp	r3, #0
 8002b30:	d00e      	beq.n	8002b50 <_vsnprintf+0x658>
          while (l++ < width) {
 8002b32:	e007      	b.n	8002b44 <_vsnprintf+0x64c>
            out(' ', buffer, idx++, maxlen);
 8002b34:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b36:	1c53      	adds	r3, r2, #1
 8002b38:	637b      	str	r3, [r7, #52]	; 0x34
 8002b3a:	68fc      	ldr	r4, [r7, #12]
 8002b3c:	687b      	ldr	r3, [r7, #4]
 8002b3e:	68b9      	ldr	r1, [r7, #8]
 8002b40:	2020      	movs	r0, #32
 8002b42:	47a0      	blx	r4
          while (l++ < width) {
 8002b44:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002b46:	1c5a      	adds	r2, r3, #1
 8002b48:	62fa      	str	r2, [r7, #44]	; 0x2c
 8002b4a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002b4c:	429a      	cmp	r2, r3
 8002b4e:	d8f1      	bhi.n	8002b34 <_vsnprintf+0x63c>
          }
        }
        format++;
 8002b50:	683b      	ldr	r3, [r7, #0]
 8002b52:	3301      	adds	r3, #1
 8002b54:	603b      	str	r3, [r7, #0]
        break;
 8002b56:	e09b      	b.n	8002c90 <_vsnprintf+0x798>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
 8002b58:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002b5a:	1d1a      	adds	r2, r3, #4
 8002b5c:	65ba      	str	r2, [r7, #88]	; 0x58
 8002b5e:	681b      	ldr	r3, [r3, #0]
 8002b60:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
 8002b62:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002b64:	2b00      	cmp	r3, #0
 8002b66:	d001      	beq.n	8002b6c <_vsnprintf+0x674>
 8002b68:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002b6a:	e001      	b.n	8002b70 <_vsnprintf+0x678>
 8002b6c:	f04f 33ff 	mov.w	r3, #4294967295
 8002b70:	4619      	mov	r1, r3
 8002b72:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8002b74:	f7ff fad5 	bl	8002122 <_strnlen_s>
 8002b78:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
 8002b7a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b7c:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002b80:	2b00      	cmp	r3, #0
 8002b82:	d005      	beq.n	8002b90 <_vsnprintf+0x698>
          l = (l < precision ? l : precision);
 8002b84:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8002b86:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002b88:	4293      	cmp	r3, r2
 8002b8a:	bf28      	it	cs
 8002b8c:	4613      	movcs	r3, r2
 8002b8e:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
 8002b90:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b92:	f003 0302 	and.w	r3, r3, #2
 8002b96:	2b00      	cmp	r3, #0
 8002b98:	d11a      	bne.n	8002bd0 <_vsnprintf+0x6d8>
          while (l++ < width) {
 8002b9a:	e007      	b.n	8002bac <_vsnprintf+0x6b4>
            out(' ', buffer, idx++, maxlen);
 8002b9c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b9e:	1c53      	adds	r3, r2, #1
 8002ba0:	637b      	str	r3, [r7, #52]	; 0x34
 8002ba2:	68fc      	ldr	r4, [r7, #12]
 8002ba4:	687b      	ldr	r3, [r7, #4]
 8002ba6:	68b9      	ldr	r1, [r7, #8]
 8002ba8:	2020      	movs	r0, #32
 8002baa:	47a0      	blx	r4
          while (l++ < width) {
 8002bac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002bae:	1c5a      	adds	r2, r3, #1
 8002bb0:	627a      	str	r2, [r7, #36]	; 0x24
 8002bb2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002bb4:	429a      	cmp	r2, r3
 8002bb6:	d8f1      	bhi.n	8002b9c <_vsnprintf+0x6a4>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 8002bb8:	e00a      	b.n	8002bd0 <_vsnprintf+0x6d8>
          out(*(p++), buffer, idx++, maxlen);
 8002bba:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002bbc:	1c5a      	adds	r2, r3, #1
 8002bbe:	62ba      	str	r2, [r7, #40]	; 0x28
 8002bc0:	7818      	ldrb	r0, [r3, #0]
 8002bc2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002bc4:	1c53      	adds	r3, r2, #1
 8002bc6:	637b      	str	r3, [r7, #52]	; 0x34
 8002bc8:	68fc      	ldr	r4, [r7, #12]
 8002bca:	687b      	ldr	r3, [r7, #4]
 8002bcc:	68b9      	ldr	r1, [r7, #8]
 8002bce:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 8002bd0:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002bd2:	781b      	ldrb	r3, [r3, #0]
 8002bd4:	2b00      	cmp	r3, #0
 8002bd6:	d009      	beq.n	8002bec <_vsnprintf+0x6f4>
 8002bd8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002bda:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002bde:	2b00      	cmp	r3, #0
 8002be0:	d0eb      	beq.n	8002bba <_vsnprintf+0x6c2>
 8002be2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002be4:	1e5a      	subs	r2, r3, #1
 8002be6:	63fa      	str	r2, [r7, #60]	; 0x3c
 8002be8:	2b00      	cmp	r3, #0
 8002bea:	d1e6      	bne.n	8002bba <_vsnprintf+0x6c2>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
 8002bec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002bee:	f003 0302 	and.w	r3, r3, #2
 8002bf2:	2b00      	cmp	r3, #0
 8002bf4:	d00e      	beq.n	8002c14 <_vsnprintf+0x71c>
          while (l++ < width) {
 8002bf6:	e007      	b.n	8002c08 <_vsnprintf+0x710>
            out(' ', buffer, idx++, maxlen);
 8002bf8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002bfa:	1c53      	adds	r3, r2, #1
 8002bfc:	637b      	str	r3, [r7, #52]	; 0x34
 8002bfe:	68fc      	ldr	r4, [r7, #12]
 8002c00:	687b      	ldr	r3, [r7, #4]
 8002c02:	68b9      	ldr	r1, [r7, #8]
 8002c04:	2020      	movs	r0, #32
 8002c06:	47a0      	blx	r4
          while (l++ < width) {
 8002c08:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002c0a:	1c5a      	adds	r2, r3, #1
 8002c0c:	627a      	str	r2, [r7, #36]	; 0x24
 8002c0e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002c10:	429a      	cmp	r2, r3
 8002c12:	d8f1      	bhi.n	8002bf8 <_vsnprintf+0x700>
          }
        }
        format++;
 8002c14:	683b      	ldr	r3, [r7, #0]
 8002c16:	3301      	adds	r3, #1
 8002c18:	603b      	str	r3, [r7, #0]
        break;
 8002c1a:	e039      	b.n	8002c90 <_vsnprintf+0x798>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
 8002c1c:	2308      	movs	r3, #8
 8002c1e:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
 8002c20:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c22:	f043 0321 	orr.w	r3, r3, #33	; 0x21
 8002c26:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
 8002c28:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002c2a:	1d1a      	adds	r2, r3, #4
 8002c2c:	65ba      	str	r2, [r7, #88]	; 0x58
 8002c2e:	681b      	ldr	r3, [r3, #0]
 8002c30:	461a      	mov	r2, r3
 8002c32:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c34:	9305      	str	r3, [sp, #20]
 8002c36:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002c38:	9304      	str	r3, [sp, #16]
 8002c3a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002c3c:	9303      	str	r3, [sp, #12]
 8002c3e:	2310      	movs	r3, #16
 8002c40:	9302      	str	r3, [sp, #8]
 8002c42:	2300      	movs	r3, #0
 8002c44:	9301      	str	r3, [sp, #4]
 8002c46:	9200      	str	r2, [sp, #0]
 8002c48:	687b      	ldr	r3, [r7, #4]
 8002c4a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c4c:	68b9      	ldr	r1, [r7, #8]
 8002c4e:	68f8      	ldr	r0, [r7, #12]
 8002c50:	f7ff fbeb 	bl	800242a <_ntoa_long>
 8002c54:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
 8002c56:	683b      	ldr	r3, [r7, #0]
 8002c58:	3301      	adds	r3, #1
 8002c5a:	603b      	str	r3, [r7, #0]
        break;
 8002c5c:	e018      	b.n	8002c90 <_vsnprintf+0x798>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
 8002c5e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c60:	1c53      	adds	r3, r2, #1
 8002c62:	637b      	str	r3, [r7, #52]	; 0x34
 8002c64:	68fc      	ldr	r4, [r7, #12]
 8002c66:	687b      	ldr	r3, [r7, #4]
 8002c68:	68b9      	ldr	r1, [r7, #8]
 8002c6a:	2025      	movs	r0, #37	; 0x25
 8002c6c:	47a0      	blx	r4
        format++;
 8002c6e:	683b      	ldr	r3, [r7, #0]
 8002c70:	3301      	adds	r3, #1
 8002c72:	603b      	str	r3, [r7, #0]
        break;
 8002c74:	e00c      	b.n	8002c90 <_vsnprintf+0x798>

      default :
        out(*format, buffer, idx++, maxlen);
 8002c76:	683b      	ldr	r3, [r7, #0]
 8002c78:	7818      	ldrb	r0, [r3, #0]
 8002c7a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c7c:	1c53      	adds	r3, r2, #1
 8002c7e:	637b      	str	r3, [r7, #52]	; 0x34
 8002c80:	68fc      	ldr	r4, [r7, #12]
 8002c82:	687b      	ldr	r3, [r7, #4]
 8002c84:	68b9      	ldr	r1, [r7, #8]
 8002c86:	47a0      	blx	r4
        format++;
 8002c88:	683b      	ldr	r3, [r7, #0]
 8002c8a:	3301      	adds	r3, #1
 8002c8c:	603b      	str	r3, [r7, #0]
        break;
 8002c8e:	bf00      	nop
  while (*format)
 8002c90:	683b      	ldr	r3, [r7, #0]
 8002c92:	781b      	ldrb	r3, [r3, #0]
 8002c94:	2b00      	cmp	r3, #0
 8002c96:	f47f ac3f 	bne.w	8002518 <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
 8002c9a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c9c:	687b      	ldr	r3, [r7, #4]
 8002c9e:	429a      	cmp	r2, r3
 8002ca0:	d302      	bcc.n	8002ca8 <_vsnprintf+0x7b0>
 8002ca2:	687b      	ldr	r3, [r7, #4]
 8002ca4:	1e5a      	subs	r2, r3, #1
 8002ca6:	e000      	b.n	8002caa <_vsnprintf+0x7b2>
 8002ca8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002caa:	68fc      	ldr	r4, [r7, #12]
 8002cac:	687b      	ldr	r3, [r7, #4]
 8002cae:	68b9      	ldr	r1, [r7, #8]
 8002cb0:	2000      	movs	r0, #0
 8002cb2:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
 8002cb4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
 8002cb6:	4618      	mov	r0, r3
 8002cb8:	374c      	adds	r7, #76	; 0x4c
 8002cba:	46bd      	mov	sp, r7
 8002cbc:	bd90      	pop	{r4, r7, pc}
 8002cbe:	bf00      	nop

08002cc0 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
 8002cc0:	b40f      	push	{r0, r1, r2, r3}
 8002cc2:	b580      	push	{r7, lr}
 8002cc4:	b086      	sub	sp, #24
 8002cc6:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
 8002cc8:	f107 031c 	add.w	r3, r7, #28
 8002ccc:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
 8002cce:	1d39      	adds	r1, r7, #4
 8002cd0:	68bb      	ldr	r3, [r7, #8]
 8002cd2:	9300      	str	r3, [sp, #0]
 8002cd4:	69bb      	ldr	r3, [r7, #24]
 8002cd6:	f04f 32ff 	mov.w	r2, #4294967295
 8002cda:	4806      	ldr	r0, [pc, #24]	; (8002cf4 <printf_+0x34>)
 8002cdc:	f7ff fc0c 	bl	80024f8 <_vsnprintf>
 8002ce0:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8002ce2:	68fb      	ldr	r3, [r7, #12]
}
 8002ce4:	4618      	mov	r0, r3
 8002ce6:	3710      	adds	r7, #16
 8002ce8:	46bd      	mov	sp, r7
 8002cea:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002cee:	b004      	add	sp, #16
 8002cf0:	4770      	bx	lr
 8002cf2:	bf00      	nop
 8002cf4:	080020fd 	.word	0x080020fd

08002cf8 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
 8002cf8:	b40e      	push	{r1, r2, r3}
 8002cfa:	b580      	push	{r7, lr}
 8002cfc:	b087      	sub	sp, #28
 8002cfe:	af02      	add	r7, sp, #8
 8002d00:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
 8002d02:	f107 0320 	add.w	r3, r7, #32
 8002d06:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
 8002d08:	68bb      	ldr	r3, [r7, #8]
 8002d0a:	9300      	str	r3, [sp, #0]
 8002d0c:	69fb      	ldr	r3, [r7, #28]
 8002d0e:	f04f 32ff 	mov.w	r2, #4294967295
 8002d12:	6879      	ldr	r1, [r7, #4]
 8002d14:	4805      	ldr	r0, [pc, #20]	; (8002d2c <sprintf_+0x34>)
 8002d16:	f7ff fbef 	bl	80024f8 <_vsnprintf>
 8002d1a:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8002d1c:	68fb      	ldr	r3, [r7, #12]
}
 8002d1e:	4618      	mov	r0, r3
 8002d20:	3714      	adds	r7, #20
 8002d22:	46bd      	mov	sp, r7
 8002d24:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002d28:	b003      	add	sp, #12
 8002d2a:	4770      	bx	lr
 8002d2c:	080020b3 	.word	0x080020b3

08002d30 <fault_test_by_div0>:
p = (int *) 0x03;
value = *p;
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
}

void fault_test_by_div0(void) {
 8002d30:	b580      	push	{r7, lr}
 8002d32:	b084      	sub	sp, #16
 8002d34:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
 8002d36:	4b0c      	ldr	r3, [pc, #48]	; (8002d68 <fault_test_by_div0+0x38>)
 8002d38:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
 8002d3a:	68fb      	ldr	r3, [r7, #12]
 8002d3c:	681b      	ldr	r3, [r3, #0]
 8002d3e:	f043 0210 	orr.w	r2, r3, #16
 8002d42:	68fb      	ldr	r3, [r7, #12]
 8002d44:	601a      	str	r2, [r3, #0]

x = 10;
 8002d46:	230a      	movs	r3, #10
 8002d48:	60bb      	str	r3, [r7, #8]
y = 0;
 8002d4a:	2300      	movs	r3, #0
 8002d4c:	607b      	str	r3, [r7, #4]
z = x / y;
 8002d4e:	68ba      	ldr	r2, [r7, #8]
 8002d50:	687b      	ldr	r3, [r7, #4]
 8002d52:	fb92 f3f3 	sdiv	r3, r2, r3
 8002d56:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
 8002d58:	6839      	ldr	r1, [r7, #0]
 8002d5a:	4804      	ldr	r0, [pc, #16]	; (8002d6c <fault_test_by_div0+0x3c>)
 8002d5c:	f7ff ffb0 	bl	8002cc0 <printf_>
}
 8002d60:	bf00      	nop
 8002d62:	3710      	adds	r7, #16
 8002d64:	46bd      	mov	sp, r7
 8002d66:	bd80      	pop	{r7, pc}
 8002d68:	e000ed14 	.word	0xe000ed14
 8002d6c:	08008b0c 	.word	0x08008b0c

08002d70 <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
 8002d70:	b580      	push	{r7, lr}
 8002d72:	b084      	sub	sp, #16
 8002d74:	af00      	add	r7, sp, #0
 8002d76:	60f8      	str	r0, [r7, #12]
 8002d78:	60b9      	str	r1, [r7, #8]
 8002d7a:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
 8002d7c:	687b      	ldr	r3, [r7, #4]
 8002d7e:	68fa      	ldr	r2, [r7, #12]
 8002d80:	429a      	cmp	r2, r3
 8002d82:	d902      	bls.n	8002d8a <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
 8002d84:	68fb      	ldr	r3, [r7, #12]
 8002d86:	607b      	str	r3, [r7, #4]
 8002d88:	e009      	b.n	8002d9e <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
 8002d8a:	68fa      	ldr	r2, [r7, #12]
 8002d8c:	68bb      	ldr	r3, [r7, #8]
 8002d8e:	441a      	add	r2, r3
 8002d90:	687b      	ldr	r3, [r7, #4]
 8002d92:	429a      	cmp	r2, r3
 8002d94:	d203      	bcs.n	8002d9e <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
 8002d96:	68fa      	ldr	r2, [r7, #12]
 8002d98:	68bb      	ldr	r3, [r7, #8]
 8002d9a:	4413      	add	r3, r2
 8002d9c:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
 8002d9e:	490e      	ldr	r1, [pc, #56]	; (8002dd8 <dump_stack+0x68>)
 8002da0:	480e      	ldr	r0, [pc, #56]	; (8002ddc <dump_stack+0x6c>)
 8002da2:	f7ff ff8d 	bl	8002cc0 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 8002da6:	e009      	b.n	8002dbc <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
 8002da8:	6879      	ldr	r1, [r7, #4]
 8002daa:	687b      	ldr	r3, [r7, #4]
 8002dac:	681b      	ldr	r3, [r3, #0]
 8002dae:	461a      	mov	r2, r3
 8002db0:	480b      	ldr	r0, [pc, #44]	; (8002de0 <dump_stack+0x70>)
 8002db2:	f7ff ff85 	bl	8002cc0 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 8002db6:	687b      	ldr	r3, [r7, #4]
 8002db8:	3304      	adds	r3, #4
 8002dba:	607b      	str	r3, [r7, #4]
 8002dbc:	68fa      	ldr	r2, [r7, #12]
 8002dbe:	68bb      	ldr	r3, [r7, #8]
 8002dc0:	441a      	add	r2, r3
 8002dc2:	687b      	ldr	r3, [r7, #4]
 8002dc4:	429a      	cmp	r2, r3
 8002dc6:	d8ef      	bhi.n	8002da8 <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
 8002dc8:	4903      	ldr	r1, [pc, #12]	; (8002dd8 <dump_stack+0x68>)
 8002dca:	4804      	ldr	r0, [pc, #16]	; (8002ddc <dump_stack+0x6c>)
 8002dcc:	f7ff ff78 	bl	8002cc0 <printf_>
}
 8002dd0:	bf00      	nop
 8002dd2:	3710      	adds	r7, #16
 8002dd4:	46bd      	mov	sp, r7
 8002dd6:	bd80      	pop	{r7, pc}
 8002dd8:	08009594 	.word	0x08009594
 8002ddc:	08008b14 	.word	0x08008b14
 8002de0:	08008b40 	.word	0x08008b40

08002de4 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
 8002de4:	b480      	push	{r7}
 8002de6:	b085      	sub	sp, #20
 8002de8:	af00      	add	r7, sp, #0
 8002dea:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
 8002dec:	687b      	ldr	r3, [r7, #4]
 8002dee:	881b      	ldrh	r3, [r3, #0]
 8002df0:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
 8002df2:	687b      	ldr	r3, [r7, #4]
 8002df4:	3302      	adds	r3, #2
 8002df6:	881b      	ldrh	r3, [r3, #0]
 8002df8:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
 8002dfa:	89bb      	ldrh	r3, [r7, #12]
 8002dfc:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002e00:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
 8002e04:	d107      	bne.n	8002e16 <disassembly_ins_is_bl_blx+0x32>
 8002e06:	89fb      	ldrh	r3, [r7, #14]
 8002e08:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002e0c:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
 8002e10:	d101      	bne.n	8002e16 <disassembly_ins_is_bl_blx+0x32>
        return true;
 8002e12:	2301      	movs	r3, #1
 8002e14:	e008      	b.n	8002e28 <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
 8002e16:	89bb      	ldrh	r3, [r7, #12]
 8002e18:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8002e1c:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8002e20:	d101      	bne.n	8002e26 <disassembly_ins_is_bl_blx+0x42>
        return true;
 8002e22:	2301      	movs	r3, #1
 8002e24:	e000      	b.n	8002e28 <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
 8002e26:	2300      	movs	r3, #0
    }
}
 8002e28:	4618      	mov	r0, r3
 8002e2a:	3714      	adds	r7, #20
 8002e2c:	46bd      	mov	sp, r7
 8002e2e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e32:	4770      	bx	lr

08002e34 <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
 8002e34:	b580      	push	{r7, lr}
 8002e36:	b08a      	sub	sp, #40	; 0x28
 8002e38:	af02      	add	r7, sp, #8
 8002e3a:	60f8      	str	r0, [r7, #12]
 8002e3c:	60b9      	str	r1, [r7, #8]
 8002e3e:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
 8002e40:	2300      	movs	r3, #0
 8002e42:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
 8002e44:	2300      	movs	r3, #0
 8002e46:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
 8002e48:	687a      	ldr	r2, [r7, #4]
 8002e4a:	4935      	ldr	r1, [pc, #212]	; (8002f20 <backtrace_call_stack+0xec>)
 8002e4c:	4835      	ldr	r0, [pc, #212]	; (8002f24 <backtrace_call_stack+0xf0>)
 8002e4e:	f7ff ff37 	bl	8002cc0 <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8002e52:	e058      	b.n	8002f06 <backtrace_call_stack+0xd2>
uint32_t i = 0;
 8002e54:	2300      	movs	r3, #0
 8002e56:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
 8002e58:	687b      	ldr	r3, [r7, #4]
 8002e5a:	4a33      	ldr	r2, [pc, #204]	; (8002f28 <backtrace_call_stack+0xf4>)
 8002e5c:	4293      	cmp	r3, r2
 8002e5e:	d103      	bne.n	8002e68 <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
 8002e60:	6879      	ldr	r1, [r7, #4]
 8002e62:	4832      	ldr	r0, [pc, #200]	; (8002f2c <backtrace_call_stack+0xf8>)
 8002e64:	f7ff ff2c 	bl	8002cc0 <printf_>
    }
    lr = *((uint32_t *) sp);
 8002e68:	687b      	ldr	r3, [r7, #4]
 8002e6a:	681b      	ldr	r3, [r3, #0]
 8002e6c:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
 8002e6e:	693b      	ldr	r3, [r7, #16]
 8002e70:	f003 0301 	and.w	r3, r3, #1
 8002e74:	2b00      	cmp	r3, #0
 8002e76:	d040      	beq.n	8002efa <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
 8002e78:	693b      	ldr	r3, [r7, #16]
 8002e7a:	3b01      	subs	r3, #1
 8002e7c:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
 8002e7e:	4b2c      	ldr	r3, [pc, #176]	; (8002f30 <backtrace_call_stack+0xfc>)
 8002e80:	681b      	ldr	r3, [r3, #0]
 8002e82:	693a      	ldr	r2, [r7, #16]
 8002e84:	429a      	cmp	r2, r3
 8002e86:	d33b      	bcc.n	8002f00 <backtrace_call_stack+0xcc>
 8002e88:	4b29      	ldr	r3, [pc, #164]	; (8002f30 <backtrace_call_stack+0xfc>)
 8002e8a:	681a      	ldr	r2, [r3, #0]
 8002e8c:	4b29      	ldr	r3, [pc, #164]	; (8002f34 <backtrace_call_stack+0x100>)
 8002e8e:	681b      	ldr	r3, [r3, #0]
 8002e90:	4413      	add	r3, r2
 8002e92:	693a      	ldr	r2, [r7, #16]
 8002e94:	429a      	cmp	r2, r3
 8002e96:	d833      	bhi.n	8002f00 <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
 8002e98:	693b      	ldr	r3, [r7, #16]
 8002e9a:	3b04      	subs	r3, #4
 8002e9c:	4618      	mov	r0, r3
 8002e9e:	f7ff ffa1 	bl	8002de4 <disassembly_ins_is_bl_blx>
 8002ea2:	4603      	mov	r3, r0
 8002ea4:	2b00      	cmp	r3, #0
 8002ea6:	d02b      	beq.n	8002f00 <backtrace_call_stack+0xcc>
 8002ea8:	69fa      	ldr	r2, [r7, #28]
 8002eaa:	68bb      	ldr	r3, [r7, #8]
 8002eac:	429a      	cmp	r2, r3
 8002eae:	d227      	bcs.n	8002f00 <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
 8002eb0:	69fb      	ldr	r3, [r7, #28]
 8002eb2:	2b02      	cmp	r3, #2
 8002eb4:	d108      	bne.n	8002ec8 <backtrace_call_stack+0x94>
 8002eb6:	7efb      	ldrb	r3, [r7, #27]
 8002eb8:	2b00      	cmp	r3, #0
 8002eba:	d005      	beq.n	8002ec8 <backtrace_call_stack+0x94>
 8002ebc:	68fb      	ldr	r3, [r7, #12]
 8002ebe:	3304      	adds	r3, #4
 8002ec0:	681b      	ldr	r3, [r3, #0]
 8002ec2:	693a      	ldr	r2, [r7, #16]
 8002ec4:	429a      	cmp	r2, r3
 8002ec6:	d01a      	beq.n	8002efe <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 8002ec8:	693b      	ldr	r3, [r7, #16]
 8002eca:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002ecc:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 8002ece:	693b      	ldr	r3, [r7, #16]
 8002ed0:	3b04      	subs	r3, #4
 8002ed2:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002ed4:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 8002ed6:	693b      	ldr	r3, [r7, #16]
 8002ed8:	3b02      	subs	r3, #2
 8002eda:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002edc:	9300      	str	r3, [sp, #0]
 8002ede:	460b      	mov	r3, r1
 8002ee0:	6939      	ldr	r1, [r7, #16]
 8002ee2:	4815      	ldr	r0, [pc, #84]	; (8002f38 <backtrace_call_stack+0x104>)
 8002ee4:	f7ff feec 	bl	8002cc0 <printf_>
                buffer[depth++] = lr;
 8002ee8:	69fb      	ldr	r3, [r7, #28]
 8002eea:	1c5a      	adds	r2, r3, #1
 8002eec:	61fa      	str	r2, [r7, #28]
 8002eee:	009b      	lsls	r3, r3, #2
 8002ef0:	68fa      	ldr	r2, [r7, #12]
 8002ef2:	4413      	add	r3, r2
 8002ef4:	693a      	ldr	r2, [r7, #16]
 8002ef6:	601a      	str	r2, [r3, #0]
 8002ef8:	e002      	b.n	8002f00 <backtrace_call_stack+0xcc>
        continue;
 8002efa:	bf00      	nop
 8002efc:	e000      	b.n	8002f00 <backtrace_call_stack+0xcc>
            continue;
 8002efe:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8002f00:	687b      	ldr	r3, [r7, #4]
 8002f02:	3304      	adds	r3, #4
 8002f04:	607b      	str	r3, [r7, #4]
 8002f06:	4b0d      	ldr	r3, [pc, #52]	; (8002f3c <backtrace_call_stack+0x108>)
 8002f08:	681a      	ldr	r2, [r3, #0]
 8002f0a:	4b0d      	ldr	r3, [pc, #52]	; (8002f40 <backtrace_call_stack+0x10c>)
 8002f0c:	681b      	ldr	r3, [r3, #0]
 8002f0e:	4413      	add	r3, r2
 8002f10:	687a      	ldr	r2, [r7, #4]
 8002f12:	429a      	cmp	r2, r3
 8002f14:	d39e      	bcc.n	8002e54 <backtrace_call_stack+0x20>
    }
}

return depth;
 8002f16:	69fb      	ldr	r3, [r7, #28]
}
 8002f18:	4618      	mov	r0, r3
 8002f1a:	3720      	adds	r7, #32
 8002f1c:	46bd      	mov	sp, r7
 8002f1e:	bd80      	pop	{r7, pc}
 8002f20:	080095a0 	.word	0x080095a0
 8002f24:	080093bc 	.word	0x080093bc
 8002f28:	08080541 	.word	0x08080541
 8002f2c:	080093cc 	.word	0x080093cc
 8002f30:	20000ae0 	.word	0x20000ae0
 8002f34:	20000ae8 	.word	0x20000ae8
 8002f38:	080093d8 	.word	0x080093d8
 8002f3c:	20000aec 	.word	0x20000aec
 8002f40:	20000af4 	.word	0x20000af4

08002f44 <print_call_stack>:

void print_call_stack(uint32_t sp) {
 8002f44:	b580      	push	{r7, lr}
 8002f46:	b096      	sub	sp, #88	; 0x58
 8002f48:	af02      	add	r7, sp, #8
 8002f4a:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
 8002f4c:	2300      	movs	r3, #0
 8002f4e:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
 8002f50:	f107 0308 	add.w	r3, r7, #8
 8002f54:	2240      	movs	r2, #64	; 0x40
 8002f56:	2100      	movs	r1, #0
 8002f58:	4618      	mov	r0, r3
 8002f5a:	f000 fcf9 	bl	8003950 <memset>
    printf("[%s] ====================================\n", __func__);
 8002f5e:	4928      	ldr	r1, [pc, #160]	; (8003000 <print_call_stack+0xbc>)
 8002f60:	4828      	ldr	r0, [pc, #160]	; (8003004 <print_call_stack+0xc0>)
 8002f62:	f7ff fead 	bl	8002cc0 <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
 8002f66:	f107 0308 	add.w	r3, r7, #8
 8002f6a:	687a      	ldr	r2, [r7, #4]
 8002f6c:	2110      	movs	r1, #16
 8002f6e:	4618      	mov	r0, r3
 8002f70:	f7ff ff60 	bl	8002e34 <backtrace_call_stack>
 8002f74:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
 8002f76:	4922      	ldr	r1, [pc, #136]	; (8003000 <print_call_stack+0xbc>)
 8002f78:	4822      	ldr	r0, [pc, #136]	; (8003004 <print_call_stack+0xc0>)
 8002f7a:	f7ff fea1 	bl	8002cc0 <printf_>

    for (i = 0; i < cur_depth; i++) {
 8002f7e:	2300      	movs	r3, #0
 8002f80:	64fb      	str	r3, [r7, #76]	; 0x4c
 8002f82:	e01b      	b.n	8002fbc <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
 8002f84:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8002f86:	4613      	mov	r3, r2
 8002f88:	00db      	lsls	r3, r3, #3
 8002f8a:	4413      	add	r3, r2
 8002f8c:	4a1e      	ldr	r2, [pc, #120]	; (8003008 <print_call_stack+0xc4>)
 8002f8e:	1898      	adds	r0, r3, r2
 8002f90:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8002f92:	009b      	lsls	r3, r3, #2
 8002f94:	f107 0250 	add.w	r2, r7, #80	; 0x50
 8002f98:	4413      	add	r3, r2
 8002f9a:	f853 3c48 	ldr.w	r3, [r3, #-72]
 8002f9e:	461a      	mov	r2, r3
 8002fa0:	491a      	ldr	r1, [pc, #104]	; (800300c <print_call_stack+0xc8>)
 8002fa2:	f7ff fea9 	bl	8002cf8 <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
 8002fa6:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8002fa8:	4613      	mov	r3, r2
 8002faa:	00db      	lsls	r3, r3, #3
 8002fac:	4413      	add	r3, r2
 8002fae:	3308      	adds	r3, #8
 8002fb0:	4a15      	ldr	r2, [pc, #84]	; (8003008 <print_call_stack+0xc4>)
 8002fb2:	2120      	movs	r1, #32
 8002fb4:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
 8002fb6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8002fb8:	3301      	adds	r3, #1
 8002fba:	64fb      	str	r3, [r7, #76]	; 0x4c
 8002fbc:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8002fbe:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8002fc0:	429a      	cmp	r2, r3
 8002fc2:	d3df      	bcc.n	8002f84 <print_call_stack+0x40>
    }

    if (cur_depth) {
 8002fc4:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8002fc6:	2b00      	cmp	r3, #0
 8002fc8:	d00f      	beq.n	8002fea <print_call_stack+0xa6>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
 8002fca:	4811      	ldr	r0, [pc, #68]	; (8003010 <print_call_stack+0xcc>)
 8002fcc:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8002fce:	4613      	mov	r3, r2
 8002fd0:	00db      	lsls	r3, r3, #3
 8002fd2:	441a      	add	r2, r3
 8002fd4:	4b0c      	ldr	r3, [pc, #48]	; (8003008 <print_call_stack+0xc4>)
 8002fd6:	9300      	str	r3, [sp, #0]
 8002fd8:	4613      	mov	r3, r2
 8002fda:	4a0e      	ldr	r2, [pc, #56]	; (8003014 <print_call_stack+0xd0>)
 8002fdc:	490e      	ldr	r1, [pc, #56]	; (8003018 <print_call_stack+0xd4>)
 8002fde:	f7ff fe6f 	bl	8002cc0 <printf_>
 8002fe2:	480e      	ldr	r0, [pc, #56]	; (800301c <print_call_stack+0xd8>)
 8002fe4:	f7ff fe6c 	bl	8002cc0 <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
 8002fe8:	e006      	b.n	8002ff8 <print_call_stack+0xb4>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
 8002fea:	4b0d      	ldr	r3, [pc, #52]	; (8003020 <print_call_stack+0xdc>)
 8002fec:	4618      	mov	r0, r3
 8002fee:	f7ff fe67 	bl	8002cc0 <printf_>
 8002ff2:	480a      	ldr	r0, [pc, #40]	; (800301c <print_call_stack+0xd8>)
 8002ff4:	f7ff fe64 	bl	8002cc0 <printf_>
}
 8002ff8:	bf00      	nop
 8002ffa:	3750      	adds	r7, #80	; 0x50
 8002ffc:	46bd      	mov	sp, r7
 8002ffe:	bd80      	pop	{r7, pc}
 8003000:	080095b8 	.word	0x080095b8
 8003004:	08008b14 	.word	0x08008b14
 8003008:	20000b04 	.word	0x20000b04
 800300c:	0800941c 	.word	0x0800941c
 8003010:	08008cf0 	.word	0x08008cf0
 8003014:	08009424 	.word	0x08009424
 8003018:	0800942c 	.word	0x0800942c
 800301c:	0800943c 	.word	0x0800943c
 8003020:	08008d30 	.word	0x08008d30

08003024 <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
 8003024:	b598      	push	{r3, r4, r7, lr}
 8003026:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 8003028:	490d      	ldr	r1, [pc, #52]	; (8003060 <backtrace_level_3+0x3c>)
 800302a:	480e      	ldr	r0, [pc, #56]	; (8003064 <backtrace_level_3+0x40>)
 800302c:	f7ff fe48 	bl	8002cc0 <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
 8003030:	4b0d      	ldr	r3, [pc, #52]	; (8003068 <backtrace_level_3+0x44>)
 8003032:	6818      	ldr	r0, [r3, #0]
 8003034:	4b0d      	ldr	r3, [pc, #52]	; (800306c <backtrace_level_3+0x48>)
 8003036:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003038:	466a      	mov	r2, sp
 800303a:	4614      	mov	r4, r2
    return(result);
 800303c:	4622      	mov	r2, r4
 800303e:	4619      	mov	r1, r3
 8003040:	f7ff fe96 	bl	8002d70 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003044:	466b      	mov	r3, sp
 8003046:	461c      	mov	r4, r3
    return(result);
 8003048:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
 800304a:	4618      	mov	r0, r3
 800304c:	f7ff ff7a 	bl	8002f44 <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003050:	466b      	mov	r3, sp
 8003052:	461c      	mov	r4, r3
    return(result);
 8003054:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
 8003056:	4618      	mov	r0, r3
 8003058:	f000 f99a 	bl	8003390 <BackTraceSub>
}
 800305c:	bf00      	nop
 800305e:	bd98      	pop	{r3, r4, r7, pc}
 8003060:	080095cc 	.word	0x080095cc
 8003064:	08009440 	.word	0x08009440
 8003068:	20000aec 	.word	0x20000aec
 800306c:	20000af4 	.word	0x20000af4

08003070 <backtrace_level_2>:
void backtrace_level_2(void)
{
 8003070:	b580      	push	{r7, lr}
 8003072:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 8003074:	4903      	ldr	r1, [pc, #12]	; (8003084 <backtrace_level_2+0x14>)
 8003076:	4804      	ldr	r0, [pc, #16]	; (8003088 <backtrace_level_2+0x18>)
 8003078:	f7ff fe22 	bl	8002cc0 <printf_>
    backtrace_level_3();
 800307c:	f7ff ffd2 	bl	8003024 <backtrace_level_3>
}
 8003080:	bf00      	nop
 8003082:	bd80      	pop	{r7, pc}
 8003084:	080095e0 	.word	0x080095e0
 8003088:	08009440 	.word	0x08009440

0800308c <backtrace_level_1>:
void backtrace_level_1(void)
{
 800308c:	b580      	push	{r7, lr}
 800308e:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 8003090:	4903      	ldr	r1, [pc, #12]	; (80030a0 <backtrace_level_1+0x14>)
 8003092:	4804      	ldr	r0, [pc, #16]	; (80030a4 <backtrace_level_1+0x18>)
 8003094:	f7ff fe14 	bl	8002cc0 <printf_>
    backtrace_level_2();
 8003098:	f7ff ffea 	bl	8003070 <backtrace_level_2>
}
 800309c:	bf00      	nop
 800309e:	bd80      	pop	{r7, pc}
 80030a0:	080095f4 	.word	0x080095f4
 80030a4:	08009440 	.word	0x08009440

080030a8 <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
 80030a8:	b590      	push	{r4, r7, lr}
 80030aa:	b089      	sub	sp, #36	; 0x24
 80030ac:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
 80030ae:	23aa      	movs	r3, #170	; 0xaa
 80030b0:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
 80030b2:	2355      	movs	r3, #85	; 0x55
 80030b4:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
 80030b6:	2377      	movs	r3, #119	; 0x77
 80030b8:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
 80030ba:	4a47      	ldr	r2, [pc, #284]	; (80031d8 <backtrace_test+0x130>)
 80030bc:	4b47      	ldr	r3, [pc, #284]	; (80031dc <backtrace_test+0x134>)
 80030be:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
 80030c0:	4a47      	ldr	r2, [pc, #284]	; (80031e0 <backtrace_test+0x138>)
 80030c2:	4b48      	ldr	r3, [pc, #288]	; (80031e4 <backtrace_test+0x13c>)
 80030c4:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
 80030c6:	4b47      	ldr	r3, [pc, #284]	; (80031e4 <backtrace_test+0x13c>)
 80030c8:	681a      	ldr	r2, [r3, #0]
 80030ca:	4b44      	ldr	r3, [pc, #272]	; (80031dc <backtrace_test+0x134>)
 80030cc:	681b      	ldr	r3, [r3, #0]
 80030ce:	1ad3      	subs	r3, r2, r3
 80030d0:	4a45      	ldr	r2, [pc, #276]	; (80031e8 <backtrace_test+0x140>)
 80030d2:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
 80030d4:	4a45      	ldr	r2, [pc, #276]	; (80031ec <backtrace_test+0x144>)
 80030d6:	4b46      	ldr	r3, [pc, #280]	; (80031f0 <backtrace_test+0x148>)
 80030d8:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
 80030da:	4a46      	ldr	r2, [pc, #280]	; (80031f4 <backtrace_test+0x14c>)
 80030dc:	4b46      	ldr	r3, [pc, #280]	; (80031f8 <backtrace_test+0x150>)
 80030de:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
 80030e0:	4b45      	ldr	r3, [pc, #276]	; (80031f8 <backtrace_test+0x150>)
 80030e2:	681a      	ldr	r2, [r3, #0]
 80030e4:	4b42      	ldr	r3, [pc, #264]	; (80031f0 <backtrace_test+0x148>)
 80030e6:	681b      	ldr	r3, [r3, #0]
 80030e8:	1ad3      	subs	r3, r2, r3
 80030ea:	4a44      	ldr	r2, [pc, #272]	; (80031fc <backtrace_test+0x154>)
 80030ec:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
 80030ee:	4a44      	ldr	r2, [pc, #272]	; (8003200 <backtrace_test+0x158>)
 80030f0:	4b44      	ldr	r3, [pc, #272]	; (8003204 <backtrace_test+0x15c>)
 80030f2:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
 80030f4:	4a44      	ldr	r2, [pc, #272]	; (8003208 <backtrace_test+0x160>)
 80030f6:	4b45      	ldr	r3, [pc, #276]	; (800320c <backtrace_test+0x164>)
 80030f8:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
 80030fa:	4b44      	ldr	r3, [pc, #272]	; (800320c <backtrace_test+0x164>)
 80030fc:	681a      	ldr	r2, [r3, #0]
 80030fe:	4b41      	ldr	r3, [pc, #260]	; (8003204 <backtrace_test+0x15c>)
 8003100:	681b      	ldr	r3, [r3, #0]
 8003102:	1ad3      	subs	r3, r2, r3
 8003104:	4a42      	ldr	r2, [pc, #264]	; (8003210 <backtrace_test+0x168>)
 8003106:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
 8003108:	4b34      	ldr	r3, [pc, #208]	; (80031dc <backtrace_test+0x134>)
 800310a:	6819      	ldr	r1, [r3, #0]
 800310c:	4b35      	ldr	r3, [pc, #212]	; (80031e4 <backtrace_test+0x13c>)
 800310e:	6818      	ldr	r0, [r3, #0]
 8003110:	4b35      	ldr	r3, [pc, #212]	; (80031e8 <backtrace_test+0x140>)
 8003112:	681b      	ldr	r3, [r3, #0]
 8003114:	4a34      	ldr	r2, [pc, #208]	; (80031e8 <backtrace_test+0x140>)
 8003116:	6812      	ldr	r2, [r2, #0]
 8003118:	9201      	str	r2, [sp, #4]
 800311a:	9300      	str	r3, [sp, #0]
 800311c:	4603      	mov	r3, r0
 800311e:	460a      	mov	r2, r1
 8003120:	493c      	ldr	r1, [pc, #240]	; (8003214 <backtrace_test+0x16c>)
 8003122:	483d      	ldr	r0, [pc, #244]	; (8003218 <backtrace_test+0x170>)
 8003124:	f7ff fdcc 	bl	8002cc0 <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
 8003128:	4b31      	ldr	r3, [pc, #196]	; (80031f0 <backtrace_test+0x148>)
 800312a:	6819      	ldr	r1, [r3, #0]
 800312c:	4b32      	ldr	r3, [pc, #200]	; (80031f8 <backtrace_test+0x150>)
 800312e:	6818      	ldr	r0, [r3, #0]
 8003130:	4b32      	ldr	r3, [pc, #200]	; (80031fc <backtrace_test+0x154>)
 8003132:	681b      	ldr	r3, [r3, #0]
 8003134:	4a31      	ldr	r2, [pc, #196]	; (80031fc <backtrace_test+0x154>)
 8003136:	6812      	ldr	r2, [r2, #0]
 8003138:	9201      	str	r2, [sp, #4]
 800313a:	9300      	str	r3, [sp, #0]
 800313c:	4603      	mov	r3, r0
 800313e:	460a      	mov	r2, r1
 8003140:	4934      	ldr	r1, [pc, #208]	; (8003214 <backtrace_test+0x16c>)
 8003142:	4836      	ldr	r0, [pc, #216]	; (800321c <backtrace_test+0x174>)
 8003144:	f7ff fdbc 	bl	8002cc0 <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
 8003148:	4b2e      	ldr	r3, [pc, #184]	; (8003204 <backtrace_test+0x15c>)
 800314a:	6819      	ldr	r1, [r3, #0]
 800314c:	4b2f      	ldr	r3, [pc, #188]	; (800320c <backtrace_test+0x164>)
 800314e:	6818      	ldr	r0, [r3, #0]
 8003150:	4b2f      	ldr	r3, [pc, #188]	; (8003210 <backtrace_test+0x168>)
 8003152:	681b      	ldr	r3, [r3, #0]
 8003154:	4a2e      	ldr	r2, [pc, #184]	; (8003210 <backtrace_test+0x168>)
 8003156:	6812      	ldr	r2, [r2, #0]
 8003158:	9201      	str	r2, [sp, #4]
 800315a:	9300      	str	r3, [sp, #0]
 800315c:	4603      	mov	r3, r0
 800315e:	460a      	mov	r2, r1
 8003160:	492c      	ldr	r1, [pc, #176]	; (8003214 <backtrace_test+0x16c>)
 8003162:	482f      	ldr	r0, [pc, #188]	; (8003220 <backtrace_test+0x178>)
 8003164:	f7ff fdac 	bl	8002cc0 <printf_>
  \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
           Can only be executed in Privileged modes.
 */
__STATIC_FORCEINLINE void __enable_irq(void)
{
  __ASM volatile ("cpsie i" : : : "memory");
 8003168:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 800316a:	466b      	mov	r3, sp
 800316c:	461c      	mov	r4, r3
    return(result);
 800316e:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
 8003170:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
 8003172:	6979      	ldr	r1, [r7, #20]
 8003174:	482b      	ldr	r0, [pc, #172]	; (8003224 <backtrace_test+0x17c>)
 8003176:	f7ff fda3 	bl	8002cc0 <printf_>
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
 800317a:	467b      	mov	r3, pc
 800317c:	461c      	mov	r4, r3
    return(result);
 800317e:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
 8003180:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
 8003182:	6879      	ldr	r1, [r7, #4]
 8003184:	4828      	ldr	r0, [pc, #160]	; (8003228 <backtrace_test+0x180>)
 8003186:	f7ff fd9b 	bl	8002cc0 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 800318a:	e01b      	b.n	80031c4 <backtrace_test+0x11c>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
 800318c:	697b      	ldr	r3, [r7, #20]
 800318e:	681b      	ldr	r3, [r3, #0]
 8003190:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
 8003192:	6839      	ldr	r1, [r7, #0]
 8003194:	4825      	ldr	r0, [pc, #148]	; (800322c <backtrace_test+0x184>)
 8003196:	f7ff fd93 	bl	8002cc0 <printf_>
        if ((addr >= (uint32_t)&_stext) &&
 800319a:	4a0f      	ldr	r2, [pc, #60]	; (80031d8 <backtrace_test+0x130>)
 800319c:	683b      	ldr	r3, [r7, #0]
 800319e:	4293      	cmp	r3, r2
 80031a0:	d30d      	bcc.n	80031be <backtrace_test+0x116>
        (sp <= (uint32_t)&_etext) &&
 80031a2:	4a0f      	ldr	r2, [pc, #60]	; (80031e0 <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
 80031a4:	697b      	ldr	r3, [r7, #20]
 80031a6:	4293      	cmp	r3, r2
 80031a8:	d809      	bhi.n	80031be <backtrace_test+0x116>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
 80031aa:	683b      	ldr	r3, [r7, #0]
 80031ac:	3b01      	subs	r3, #1
 80031ae:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
 80031b2:	2b00      	cmp	r3, #0
 80031b4:	d103      	bne.n	80031be <backtrace_test+0x116>

            printf("find ld 0x%08x\n", addr);
 80031b6:	6839      	ldr	r1, [r7, #0]
 80031b8:	481d      	ldr	r0, [pc, #116]	; (8003230 <backtrace_test+0x188>)
 80031ba:	f7ff fd81 	bl	8002cc0 <printf_>
        }
        sp += 4;
 80031be:	697b      	ldr	r3, [r7, #20]
 80031c0:	3304      	adds	r3, #4
 80031c2:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 80031c4:	4a0b      	ldr	r2, [pc, #44]	; (80031f4 <backtrace_test+0x14c>)
 80031c6:	697b      	ldr	r3, [r7, #20]
 80031c8:	4293      	cmp	r3, r2
 80031ca:	d3df      	bcc.n	800318c <backtrace_test+0xe4>
    }
    backtrace_level_1();
 80031cc:	f7ff ff5e 	bl	800308c <backtrace_level_1>
    fault_test_by_div0();
 80031d0:	f7ff fdae 	bl	8002d30 <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
 80031d4:	e7fe      	b.n	80031d4 <backtrace_test+0x12c>
 80031d6:	bf00      	nop
 80031d8:	08000000 	.word	0x08000000
 80031dc:	20000ae0 	.word	0x20000ae0
 80031e0:	080098ac 	.word	0x080098ac
 80031e4:	20000ae4 	.word	0x20000ae4
 80031e8:	20000ae8 	.word	0x20000ae8
 80031ec:	20016fff 	.word	0x20016fff
 80031f0:	20000aec 	.word	0x20000aec
 80031f4:	20017fff 	.word	0x20017fff
 80031f8:	20000af0 	.word	0x20000af0
 80031fc:	20000af4 	.word	0x20000af4
 8003200:	20000c50 	.word	0x20000c50
 8003204:	20000af8 	.word	0x20000af8
 8003208:	20000c50 	.word	0x20000c50
 800320c:	20000afc 	.word	0x20000afc
 8003210:	20000b00 	.word	0x20000b00
 8003214:	08009608 	.word	0x08009608
 8003218:	08009448 	.word	0x08009448
 800321c:	08009490 	.word	0x08009490
 8003220:	080094d8 	.word	0x080094d8
 8003224:	08009520 	.word	0x08009520
 8003228:	0800952c 	.word	0x0800952c
 800322c:	08009538 	.word	0x08009538
 8003230:	08009544 	.word	0x08009544

08003234 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
 8003234:	b480      	push	{r7}
 8003236:	b083      	sub	sp, #12
 8003238:	af00      	add	r7, sp, #0
 800323a:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
 800323c:	e00e      	b.n	800325c <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
 800323e:	687b      	ldr	r3, [r7, #4]
 8003240:	881b      	ldrh	r3, [r3, #0]
 8003242:	0a1b      	lsrs	r3, r3, #8
 8003244:	b29b      	uxth	r3, r3
 8003246:	2bb5      	cmp	r3, #181	; 0xb5
 8003248:	d00d      	beq.n	8003266 <LoopUntilEntry+0x32>
 800324a:	687b      	ldr	r3, [r7, #4]
 800324c:	881b      	ldrh	r3, [r3, #0]
 800324e:	0a1b      	lsrs	r3, r3, #8
 8003250:	b29b      	uxth	r3, r3
 8003252:	2bb4      	cmp	r3, #180	; 0xb4
 8003254:	d007      	beq.n	8003266 <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
 8003256:	687b      	ldr	r3, [r7, #4]
 8003258:	3b02      	subs	r3, #2
 800325a:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
 800325c:	4b05      	ldr	r3, [pc, #20]	; (8003274 <LoopUntilEntry+0x40>)
 800325e:	681b      	ldr	r3, [r3, #0]
 8003260:	687a      	ldr	r2, [r7, #4]
 8003262:	429a      	cmp	r2, r3
 8003264:	d8eb      	bhi.n	800323e <LoopUntilEntry+0xa>
    }

    return addr;
 8003266:	687b      	ldr	r3, [r7, #4]
}
 8003268:	4618      	mov	r0, r3
 800326a:	370c      	adds	r7, #12
 800326c:	46bd      	mov	sp, r7
 800326e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003272:	4770      	bx	lr
 8003274:	20000ae0 	.word	0x20000ae0

08003278 <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
 8003278:	b480      	push	{r7}
 800327a:	b087      	sub	sp, #28
 800327c:	af00      	add	r7, sp, #0
 800327e:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
 8003280:	2300      	movs	r3, #0
 8003282:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
 8003284:	687b      	ldr	r3, [r7, #4]
 8003286:	881b      	ldrh	r3, [r3, #0]
 8003288:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800328c:	2b00      	cmp	r3, #0
 800328e:	d00b      	beq.n	80032a8 <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 8003290:	687b      	ldr	r3, [r7, #4]
 8003292:	881b      	ldrh	r3, [r3, #0]
 8003294:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003298:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 800329a:	687b      	ldr	r3, [r7, #4]
 800329c:	3302      	adds	r3, #2
 800329e:	881b      	ldrh	r3, [r3, #0]
 80032a0:	f3c3 030a 	ubfx	r3, r3, #0, #11
 80032a4:	613b      	str	r3, [r7, #16]
 80032a6:	e00a      	b.n	80032be <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 80032a8:	687b      	ldr	r3, [r7, #4]
 80032aa:	881b      	ldrh	r3, [r3, #0]
 80032ac:	f3c3 030a 	ubfx	r3, r3, #0, #11
 80032b0:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 80032b2:	687b      	ldr	r3, [r7, #4]
 80032b4:	3302      	adds	r3, #2
 80032b6:	881b      	ldrh	r3, [r3, #0]
 80032b8:	f3c3 030a 	ubfx	r3, r3, #0, #11
 80032bc:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
 80032be:	693b      	ldr	r3, [r7, #16]
 80032c0:	031a      	lsls	r2, r3, #12
 80032c2:	68fb      	ldr	r3, [r7, #12]
 80032c4:	005b      	lsls	r3, r3, #1
 80032c6:	4413      	add	r3, r2
 80032c8:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
 80032ca:	68bb      	ldr	r3, [r7, #8]
 80032cc:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80032d0:	2b00      	cmp	r3, #0
 80032d2:	d008      	beq.n	80032e6 <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
 80032d4:	68bb      	ldr	r3, [r7, #8]
 80032d6:	425b      	negs	r3, r3
 80032d8:	f3c3 0316 	ubfx	r3, r3, #0, #23
 80032dc:	687a      	ldr	r2, [r7, #4]
 80032de:	1ad3      	subs	r3, r2, r3
 80032e0:	3304      	adds	r3, #4
 80032e2:	617b      	str	r3, [r7, #20]
 80032e4:	e004      	b.n	80032f0 <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
 80032e6:	687a      	ldr	r2, [r7, #4]
 80032e8:	68bb      	ldr	r3, [r7, #8]
 80032ea:	4413      	add	r3, r2
 80032ec:	3304      	adds	r3, #4
 80032ee:	617b      	str	r3, [r7, #20]
    }

    return target;
 80032f0:	697b      	ldr	r3, [r7, #20]
}
 80032f2:	4618      	mov	r0, r3
 80032f4:	371c      	adds	r7, #28
 80032f6:	46bd      	mov	sp, r7
 80032f8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80032fc:	4770      	bx	lr
	...

08003300 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
 8003300:	b580      	push	{r7, lr}
 8003302:	b084      	sub	sp, #16
 8003304:	af00      	add	r7, sp, #0
 8003306:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
 8003308:	2300      	movs	r3, #0
 800330a:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
 800330c:	687b      	ldr	r3, [r7, #4]
 800330e:	3b02      	subs	r3, #2
 8003310:	881b      	ldrh	r3, [r3, #0]
 8003312:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8003316:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 800331a:	d11a      	bne.n	8003352 <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
 800331c:	4b1b      	ldr	r3, [pc, #108]	; (800338c <CalculateTargetAddress+0x8c>)
 800331e:	681b      	ldr	r3, [r3, #0]
 8003320:	2b00      	cmp	r3, #0
 8003322:	d00b      	beq.n	800333c <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
 8003324:	4b19      	ldr	r3, [pc, #100]	; (800338c <CalculateTargetAddress+0x8c>)
 8003326:	681b      	ldr	r3, [r3, #0]
 8003328:	4618      	mov	r0, r3
 800332a:	f7ff ff83 	bl	8003234 <LoopUntilEntry>
 800332e:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
 8003330:	687b      	ldr	r3, [r7, #4]
 8003332:	3b02      	subs	r3, #2
 8003334:	4a15      	ldr	r2, [pc, #84]	; (800338c <CalculateTargetAddress+0x8c>)
 8003336:	6013      	str	r3, [r2, #0]
            return target;
 8003338:	68fb      	ldr	r3, [r7, #12]
 800333a:	e023      	b.n	8003384 <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
 800333c:	687b      	ldr	r3, [r7, #4]
 800333e:	3b02      	subs	r3, #2
 8003340:	4a12      	ldr	r2, [pc, #72]	; (800338c <CalculateTargetAddress+0x8c>)
 8003342:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
 8003344:	4b11      	ldr	r3, [pc, #68]	; (800338c <CalculateTargetAddress+0x8c>)
 8003346:	681b      	ldr	r3, [r3, #0]
 8003348:	4618      	mov	r0, r3
 800334a:	f7ff ff73 	bl	8003234 <LoopUntilEntry>
 800334e:	4603      	mov	r3, r0
 8003350:	e018      	b.n	8003384 <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
 8003352:	687b      	ldr	r3, [r7, #4]
 8003354:	3b04      	subs	r3, #4
 8003356:	681b      	ldr	r3, [r3, #0]
 8003358:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
 800335c:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
 8003360:	d10f      	bne.n	8003382 <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
 8003362:	687b      	ldr	r3, [r7, #4]
 8003364:	3b04      	subs	r3, #4
 8003366:	4a09      	ldr	r2, [pc, #36]	; (800338c <CalculateTargetAddress+0x8c>)
 8003368:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
 800336a:	4b08      	ldr	r3, [pc, #32]	; (800338c <CalculateTargetAddress+0x8c>)
 800336c:	681b      	ldr	r3, [r3, #0]
 800336e:	4618      	mov	r0, r3
 8003370:	f7ff ff82 	bl	8003278 <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
 8003374:	4b05      	ldr	r3, [pc, #20]	; (800338c <CalculateTargetAddress+0x8c>)
 8003376:	681b      	ldr	r3, [r3, #0]
 8003378:	4618      	mov	r0, r3
 800337a:	f7ff ff7d 	bl	8003278 <CalculateBLTargetAddress>
 800337e:	4603      	mov	r3, r0
 8003380:	e000      	b.n	8003384 <CalculateTargetAddress+0x84>
    }

    return 0;
 8003382:	2300      	movs	r3, #0
}
 8003384:	4618      	mov	r0, r3
 8003386:	3710      	adds	r7, #16
 8003388:	46bd      	mov	sp, r7
 800338a:	bd80      	pop	{r7, pc}
 800338c:	20000b94 	.word	0x20000b94

08003390 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
 8003390:	b580      	push	{r7, lr}
 8003392:	b086      	sub	sp, #24
 8003394:	af00      	add	r7, sp, #0
 8003396:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
 8003398:	687b      	ldr	r3, [r7, #4]
 800339a:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
 800339c:	2300      	movs	r3, #0
 800339e:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 80033a0:	e03b      	b.n	800341a <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 80033a2:	697b      	ldr	r3, [r7, #20]
 80033a4:	681a      	ldr	r2, [r3, #0]
 80033a6:	4b23      	ldr	r3, [pc, #140]	; (8003434 <BackTraceSub+0xa4>)
 80033a8:	681b      	ldr	r3, [r3, #0]
 80033aa:	429a      	cmp	r2, r3
 80033ac:	d32e      	bcc.n	800340c <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 80033ae:	697b      	ldr	r3, [r7, #20]
 80033b0:	681a      	ldr	r2, [r3, #0]
 80033b2:	4b21      	ldr	r3, [pc, #132]	; (8003438 <BackTraceSub+0xa8>)
 80033b4:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 80033b6:	429a      	cmp	r2, r3
 80033b8:	d828      	bhi.n	800340c <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
 80033ba:	697b      	ldr	r3, [r7, #20]
 80033bc:	681b      	ldr	r3, [r3, #0]
 80033be:	3b01      	subs	r3, #1
 80033c0:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 80033c4:	2b00      	cmp	r3, #0
 80033c6:	d121      	bne.n	800340c <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
 80033c8:	697b      	ldr	r3, [r7, #20]
 80033ca:	681b      	ldr	r3, [r3, #0]
 80033cc:	3b01      	subs	r3, #1
 80033ce:	4618      	mov	r0, r3
 80033d0:	f7ff ff96 	bl	8003300 <CalculateTargetAddress>
 80033d4:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
 80033d6:	68fb      	ldr	r3, [r7, #12]
 80033d8:	2b00      	cmp	r3, #0
 80033da:	d004      	beq.n	80033e6 <BackTraceSub+0x56>
 80033dc:	4b17      	ldr	r3, [pc, #92]	; (800343c <BackTraceSub+0xac>)
 80033de:	681b      	ldr	r3, [r3, #0]
 80033e0:	68fa      	ldr	r2, [r7, #12]
 80033e2:	429a      	cmp	r2, r3
 80033e4:	d103      	bne.n	80033ee <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
 80033e6:	697b      	ldr	r3, [r7, #20]
 80033e8:	3304      	adds	r3, #4
 80033ea:	617b      	str	r3, [r7, #20]
                continue;
 80033ec:	e015      	b.n	800341a <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
 80033ee:	4a13      	ldr	r2, [pc, #76]	; (800343c <BackTraceSub+0xac>)
 80033f0:	68fb      	ldr	r3, [r7, #12]
 80033f2:	6013      	str	r3, [r2, #0]
            count++;
 80033f4:	693b      	ldr	r3, [r7, #16]
 80033f6:	3301      	adds	r3, #1
 80033f8:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
 80033fa:	697b      	ldr	r3, [r7, #20]
 80033fc:	681b      	ldr	r3, [r3, #0]
 80033fe:	1e5a      	subs	r2, r3, #1
 8003400:	4b0e      	ldr	r3, [pc, #56]	; (800343c <BackTraceSub+0xac>)
 8003402:	681b      	ldr	r3, [r3, #0]
 8003404:	6939      	ldr	r1, [r7, #16]
 8003406:	480e      	ldr	r0, [pc, #56]	; (8003440 <BackTraceSub+0xb0>)
 8003408:	f7ff fc5a 	bl	8002cc0 <printf_>
        }
        stackPointer += STACK_OFFSET;
 800340c:	697b      	ldr	r3, [r7, #20]
 800340e:	3304      	adds	r3, #4
 8003410:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
 8003412:	6979      	ldr	r1, [r7, #20]
 8003414:	480b      	ldr	r0, [pc, #44]	; (8003444 <BackTraceSub+0xb4>)
 8003416:	f7ff fc53 	bl	8002cc0 <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 800341a:	4b0b      	ldr	r3, [pc, #44]	; (8003448 <BackTraceSub+0xb8>)
 800341c:	681b      	ldr	r3, [r3, #0]
 800341e:	697a      	ldr	r2, [r7, #20]
 8003420:	429a      	cmp	r2, r3
 8003422:	d202      	bcs.n	800342a <BackTraceSub+0x9a>
 8003424:	693b      	ldr	r3, [r7, #16]
 8003426:	2b0e      	cmp	r3, #14
 8003428:	d9bb      	bls.n	80033a2 <BackTraceSub+0x12>
    }
}
 800342a:	bf00      	nop
 800342c:	3718      	adds	r7, #24
 800342e:	46bd      	mov	sp, r7
 8003430:	bd80      	pop	{r7, pc}
 8003432:	bf00      	nop
 8003434:	20000ae0 	.word	0x20000ae0
 8003438:	20000ae4 	.word	0x20000ae4
 800343c:	20000b98 	.word	0x20000b98
 8003440:	08009554 	.word	0x08009554
 8003444:	08009580 	.word	0x08009580
 8003448:	20000af0 	.word	0x20000af0

0800344c <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
 800344c:	b480      	push	{r7}
 800344e:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
 8003450:	4b03      	ldr	r3, [pc, #12]	; (8003460 <exception_init+0x14>)
 8003452:	4a04      	ldr	r2, [pc, #16]	; (8003464 <exception_init+0x18>)
 8003454:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
 8003456:	bf00      	nop
 8003458:	46bd      	mov	sp, r7
 800345a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800345e:	4770      	bx	lr
 8003460:	20000c24 	.word	0x20000c24
 8003464:	20000b9d 	.word	0x20000b9d

08003468 <exception_test>:
void exception_test(void)
{
 8003468:	b580      	push	{r7, lr}
 800346a:	af00      	add	r7, sp, #0
  exception_init();
 800346c:	f7ff ffee 	bl	800344c <exception_init>
}
 8003470:	bf00      	nop
 8003472:	bd80      	pop	{r7, pc}

08003474 <Reset_Handler>:

    .section  .text.Reset_Handler
  .weak  Reset_Handler
  .type  Reset_Handler, %function
Reset_Handler:  
  ldr   sp, =_estack    		 /* set stack pointer */
 8003474:	f8df d034 	ldr.w	sp, [pc, #52]	; 80034ac <LoopFillZerobss+0x14>

/* Copy the data segment initializers from flash to SRAM */  
  movs  r1, #0
 8003478:	2100      	movs	r1, #0
  b  LoopCopyDataInit
 800347a:	e003      	b.n	8003484 <LoopCopyDataInit>

0800347c <CopyDataInit>:

CopyDataInit:
  ldr  r3, =_sidata
 800347c:	4b0c      	ldr	r3, [pc, #48]	; (80034b0 <LoopFillZerobss+0x18>)
  ldr  r3, [r3, r1]
 800347e:	585b      	ldr	r3, [r3, r1]
  str  r3, [r0, r1]
 8003480:	5043      	str	r3, [r0, r1]
  adds  r1, r1, #4
 8003482:	3104      	adds	r1, #4

08003484 <LoopCopyDataInit>:
    
LoopCopyDataInit:
  ldr  r0, =_sdata
 8003484:	480b      	ldr	r0, [pc, #44]	; (80034b4 <LoopFillZerobss+0x1c>)
  ldr  r3, =_edata
 8003486:	4b0c      	ldr	r3, [pc, #48]	; (80034b8 <LoopFillZerobss+0x20>)
  adds  r2, r0, r1
 8003488:	1842      	adds	r2, r0, r1
  cmp  r2, r3
 800348a:	429a      	cmp	r2, r3
  bcc  CopyDataInit
 800348c:	d3f6      	bcc.n	800347c <CopyDataInit>
  ldr  r2, =_sbss
 800348e:	4a0b      	ldr	r2, [pc, #44]	; (80034bc <LoopFillZerobss+0x24>)
  b  LoopFillZerobss
 8003490:	e002      	b.n	8003498 <LoopFillZerobss>

08003492 <FillZerobss>:
/* Zero fill the bss segment. */  
FillZerobss:
  movs  r3, #0
 8003492:	2300      	movs	r3, #0
  str  r3, [r2], #4
 8003494:	f842 3b04 	str.w	r3, [r2], #4

08003498 <LoopFillZerobss>:
    
LoopFillZerobss:
  ldr  r3, = _ebss
 8003498:	4b09      	ldr	r3, [pc, #36]	; (80034c0 <LoopFillZerobss+0x28>)
  cmp  r2, r3
 800349a:	429a      	cmp	r2, r3
  bcc  FillZerobss
 800349c:	d3f9      	bcc.n	8003492 <FillZerobss>

/* Call the clock system intitialization function.*/
  bl  SystemInit   
 800349e:	f7fd f91b 	bl	80006d8 <SystemInit>
/* Call static constructors */
    bl __libc_init_array
 80034a2:	f000 f997 	bl	80037d4 <__libc_init_array>
/* Call the application's entry point.*/
  bl  main
 80034a6:	f7fc fe95 	bl	80001d4 <main>
  bx  lr    
 80034aa:	4770      	bx	lr
  ldr   sp, =_estack    		 /* set stack pointer */
 80034ac:	20017fff 	.word	0x20017fff
  ldr  r3, =_sidata
 80034b0:	080098ac 	.word	0x080098ac
  ldr  r0, =_sdata
 80034b4:	20000000 	.word	0x20000000
  ldr  r3, =_edata
 80034b8:	200009cc 	.word	0x200009cc
  ldr  r2, =_sbss
 80034bc:	20000a00 	.word	0x20000a00
  ldr  r3, = _ebss
 80034c0:	20000c50 	.word	0x20000c50

080034c4 <ADC_IRQHandler>:
 * @retval None       
*/
    .section  .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b  Infinite_Loop
 80034c4:	e7fe      	b.n	80034c4 <ADC_IRQHandler>
	...

080034c8 <__aeabi_uldivmod>:
 80034c8:	b953      	cbnz	r3, 80034e0 <__aeabi_uldivmod+0x18>
 80034ca:	b94a      	cbnz	r2, 80034e0 <__aeabi_uldivmod+0x18>
 80034cc:	2900      	cmp	r1, #0
 80034ce:	bf08      	it	eq
 80034d0:	2800      	cmpeq	r0, #0
 80034d2:	bf1c      	itt	ne
 80034d4:	f04f 31ff 	movne.w	r1, #4294967295
 80034d8:	f04f 30ff 	movne.w	r0, #4294967295
 80034dc:	f000 b972 	b.w	80037c4 <__aeabi_idiv0>
 80034e0:	f1ad 0c08 	sub.w	ip, sp, #8
 80034e4:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80034e8:	f000 f806 	bl	80034f8 <__udivmoddi4>
 80034ec:	f8dd e004 	ldr.w	lr, [sp, #4]
 80034f0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80034f4:	b004      	add	sp, #16
 80034f6:	4770      	bx	lr

080034f8 <__udivmoddi4>:
 80034f8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80034fc:	9e08      	ldr	r6, [sp, #32]
 80034fe:	4604      	mov	r4, r0
 8003500:	4688      	mov	r8, r1
 8003502:	2b00      	cmp	r3, #0
 8003504:	d14b      	bne.n	800359e <__udivmoddi4+0xa6>
 8003506:	428a      	cmp	r2, r1
 8003508:	4615      	mov	r5, r2
 800350a:	d967      	bls.n	80035dc <__udivmoddi4+0xe4>
 800350c:	fab2 f282 	clz	r2, r2
 8003510:	b14a      	cbz	r2, 8003526 <__udivmoddi4+0x2e>
 8003512:	f1c2 0720 	rsb	r7, r2, #32
 8003516:	fa01 f302 	lsl.w	r3, r1, r2
 800351a:	fa20 f707 	lsr.w	r7, r0, r7
 800351e:	4095      	lsls	r5, r2
 8003520:	ea47 0803 	orr.w	r8, r7, r3
 8003524:	4094      	lsls	r4, r2
 8003526:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 800352a:	0c23      	lsrs	r3, r4, #16
 800352c:	fbb8 f7fe 	udiv	r7, r8, lr
 8003530:	fa1f fc85 	uxth.w	ip, r5
 8003534:	fb0e 8817 	mls	r8, lr, r7, r8
 8003538:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 800353c:	fb07 f10c 	mul.w	r1, r7, ip
 8003540:	4299      	cmp	r1, r3
 8003542:	d909      	bls.n	8003558 <__udivmoddi4+0x60>
 8003544:	18eb      	adds	r3, r5, r3
 8003546:	f107 30ff 	add.w	r0, r7, #4294967295
 800354a:	f080 811b 	bcs.w	8003784 <__udivmoddi4+0x28c>
 800354e:	4299      	cmp	r1, r3
 8003550:	f240 8118 	bls.w	8003784 <__udivmoddi4+0x28c>
 8003554:	3f02      	subs	r7, #2
 8003556:	442b      	add	r3, r5
 8003558:	1a5b      	subs	r3, r3, r1
 800355a:	b2a4      	uxth	r4, r4
 800355c:	fbb3 f0fe 	udiv	r0, r3, lr
 8003560:	fb0e 3310 	mls	r3, lr, r0, r3
 8003564:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8003568:	fb00 fc0c 	mul.w	ip, r0, ip
 800356c:	45a4      	cmp	ip, r4
 800356e:	d909      	bls.n	8003584 <__udivmoddi4+0x8c>
 8003570:	192c      	adds	r4, r5, r4
 8003572:	f100 33ff 	add.w	r3, r0, #4294967295
 8003576:	f080 8107 	bcs.w	8003788 <__udivmoddi4+0x290>
 800357a:	45a4      	cmp	ip, r4
 800357c:	f240 8104 	bls.w	8003788 <__udivmoddi4+0x290>
 8003580:	3802      	subs	r0, #2
 8003582:	442c      	add	r4, r5
 8003584:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8003588:	eba4 040c 	sub.w	r4, r4, ip
 800358c:	2700      	movs	r7, #0
 800358e:	b11e      	cbz	r6, 8003598 <__udivmoddi4+0xa0>
 8003590:	40d4      	lsrs	r4, r2
 8003592:	2300      	movs	r3, #0
 8003594:	e9c6 4300 	strd	r4, r3, [r6]
 8003598:	4639      	mov	r1, r7
 800359a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800359e:	428b      	cmp	r3, r1
 80035a0:	d909      	bls.n	80035b6 <__udivmoddi4+0xbe>
 80035a2:	2e00      	cmp	r6, #0
 80035a4:	f000 80eb 	beq.w	800377e <__udivmoddi4+0x286>
 80035a8:	2700      	movs	r7, #0
 80035aa:	e9c6 0100 	strd	r0, r1, [r6]
 80035ae:	4638      	mov	r0, r7
 80035b0:	4639      	mov	r1, r7
 80035b2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80035b6:	fab3 f783 	clz	r7, r3
 80035ba:	2f00      	cmp	r7, #0
 80035bc:	d147      	bne.n	800364e <__udivmoddi4+0x156>
 80035be:	428b      	cmp	r3, r1
 80035c0:	d302      	bcc.n	80035c8 <__udivmoddi4+0xd0>
 80035c2:	4282      	cmp	r2, r0
 80035c4:	f200 80fa 	bhi.w	80037bc <__udivmoddi4+0x2c4>
 80035c8:	1a84      	subs	r4, r0, r2
 80035ca:	eb61 0303 	sbc.w	r3, r1, r3
 80035ce:	2001      	movs	r0, #1
 80035d0:	4698      	mov	r8, r3
 80035d2:	2e00      	cmp	r6, #0
 80035d4:	d0e0      	beq.n	8003598 <__udivmoddi4+0xa0>
 80035d6:	e9c6 4800 	strd	r4, r8, [r6]
 80035da:	e7dd      	b.n	8003598 <__udivmoddi4+0xa0>
 80035dc:	b902      	cbnz	r2, 80035e0 <__udivmoddi4+0xe8>
 80035de:	deff      	udf	#255	; 0xff
 80035e0:	fab2 f282 	clz	r2, r2
 80035e4:	2a00      	cmp	r2, #0
 80035e6:	f040 808f 	bne.w	8003708 <__udivmoddi4+0x210>
 80035ea:	1b49      	subs	r1, r1, r5
 80035ec:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 80035f0:	fa1f f885 	uxth.w	r8, r5
 80035f4:	2701      	movs	r7, #1
 80035f6:	fbb1 fcfe 	udiv	ip, r1, lr
 80035fa:	0c23      	lsrs	r3, r4, #16
 80035fc:	fb0e 111c 	mls	r1, lr, ip, r1
 8003600:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8003604:	fb08 f10c 	mul.w	r1, r8, ip
 8003608:	4299      	cmp	r1, r3
 800360a:	d907      	bls.n	800361c <__udivmoddi4+0x124>
 800360c:	18eb      	adds	r3, r5, r3
 800360e:	f10c 30ff 	add.w	r0, ip, #4294967295
 8003612:	d202      	bcs.n	800361a <__udivmoddi4+0x122>
 8003614:	4299      	cmp	r1, r3
 8003616:	f200 80cd 	bhi.w	80037b4 <__udivmoddi4+0x2bc>
 800361a:	4684      	mov	ip, r0
 800361c:	1a59      	subs	r1, r3, r1
 800361e:	b2a3      	uxth	r3, r4
 8003620:	fbb1 f0fe 	udiv	r0, r1, lr
 8003624:	fb0e 1410 	mls	r4, lr, r0, r1
 8003628:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 800362c:	fb08 f800 	mul.w	r8, r8, r0
 8003630:	45a0      	cmp	r8, r4
 8003632:	d907      	bls.n	8003644 <__udivmoddi4+0x14c>
 8003634:	192c      	adds	r4, r5, r4
 8003636:	f100 33ff 	add.w	r3, r0, #4294967295
 800363a:	d202      	bcs.n	8003642 <__udivmoddi4+0x14a>
 800363c:	45a0      	cmp	r8, r4
 800363e:	f200 80b6 	bhi.w	80037ae <__udivmoddi4+0x2b6>
 8003642:	4618      	mov	r0, r3
 8003644:	eba4 0408 	sub.w	r4, r4, r8
 8003648:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 800364c:	e79f      	b.n	800358e <__udivmoddi4+0x96>
 800364e:	f1c7 0c20 	rsb	ip, r7, #32
 8003652:	40bb      	lsls	r3, r7
 8003654:	fa22 fe0c 	lsr.w	lr, r2, ip
 8003658:	ea4e 0e03 	orr.w	lr, lr, r3
 800365c:	fa01 f407 	lsl.w	r4, r1, r7
 8003660:	fa20 f50c 	lsr.w	r5, r0, ip
 8003664:	fa21 f30c 	lsr.w	r3, r1, ip
 8003668:	ea4f 481e 	mov.w	r8, lr, lsr #16
 800366c:	4325      	orrs	r5, r4
 800366e:	fbb3 f9f8 	udiv	r9, r3, r8
 8003672:	0c2c      	lsrs	r4, r5, #16
 8003674:	fb08 3319 	mls	r3, r8, r9, r3
 8003678:	fa1f fa8e 	uxth.w	sl, lr
 800367c:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8003680:	fb09 f40a 	mul.w	r4, r9, sl
 8003684:	429c      	cmp	r4, r3
 8003686:	fa02 f207 	lsl.w	r2, r2, r7
 800368a:	fa00 f107 	lsl.w	r1, r0, r7
 800368e:	d90b      	bls.n	80036a8 <__udivmoddi4+0x1b0>
 8003690:	eb1e 0303 	adds.w	r3, lr, r3
 8003694:	f109 30ff 	add.w	r0, r9, #4294967295
 8003698:	f080 8087 	bcs.w	80037aa <__udivmoddi4+0x2b2>
 800369c:	429c      	cmp	r4, r3
 800369e:	f240 8084 	bls.w	80037aa <__udivmoddi4+0x2b2>
 80036a2:	f1a9 0902 	sub.w	r9, r9, #2
 80036a6:	4473      	add	r3, lr
 80036a8:	1b1b      	subs	r3, r3, r4
 80036aa:	b2ad      	uxth	r5, r5
 80036ac:	fbb3 f0f8 	udiv	r0, r3, r8
 80036b0:	fb08 3310 	mls	r3, r8, r0, r3
 80036b4:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 80036b8:	fb00 fa0a 	mul.w	sl, r0, sl
 80036bc:	45a2      	cmp	sl, r4
 80036be:	d908      	bls.n	80036d2 <__udivmoddi4+0x1da>
 80036c0:	eb1e 0404 	adds.w	r4, lr, r4
 80036c4:	f100 33ff 	add.w	r3, r0, #4294967295
 80036c8:	d26b      	bcs.n	80037a2 <__udivmoddi4+0x2aa>
 80036ca:	45a2      	cmp	sl, r4
 80036cc:	d969      	bls.n	80037a2 <__udivmoddi4+0x2aa>
 80036ce:	3802      	subs	r0, #2
 80036d0:	4474      	add	r4, lr
 80036d2:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 80036d6:	fba0 8902 	umull	r8, r9, r0, r2
 80036da:	eba4 040a 	sub.w	r4, r4, sl
 80036de:	454c      	cmp	r4, r9
 80036e0:	46c2      	mov	sl, r8
 80036e2:	464b      	mov	r3, r9
 80036e4:	d354      	bcc.n	8003790 <__udivmoddi4+0x298>
 80036e6:	d051      	beq.n	800378c <__udivmoddi4+0x294>
 80036e8:	2e00      	cmp	r6, #0
 80036ea:	d069      	beq.n	80037c0 <__udivmoddi4+0x2c8>
 80036ec:	ebb1 050a 	subs.w	r5, r1, sl
 80036f0:	eb64 0403 	sbc.w	r4, r4, r3
 80036f4:	fa04 fc0c 	lsl.w	ip, r4, ip
 80036f8:	40fd      	lsrs	r5, r7
 80036fa:	40fc      	lsrs	r4, r7
 80036fc:	ea4c 0505 	orr.w	r5, ip, r5
 8003700:	e9c6 5400 	strd	r5, r4, [r6]
 8003704:	2700      	movs	r7, #0
 8003706:	e747      	b.n	8003598 <__udivmoddi4+0xa0>
 8003708:	f1c2 0320 	rsb	r3, r2, #32
 800370c:	fa20 f703 	lsr.w	r7, r0, r3
 8003710:	4095      	lsls	r5, r2
 8003712:	fa01 f002 	lsl.w	r0, r1, r2
 8003716:	fa21 f303 	lsr.w	r3, r1, r3
 800371a:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 800371e:	4338      	orrs	r0, r7
 8003720:	0c01      	lsrs	r1, r0, #16
 8003722:	fbb3 f7fe 	udiv	r7, r3, lr
 8003726:	fa1f f885 	uxth.w	r8, r5
 800372a:	fb0e 3317 	mls	r3, lr, r7, r3
 800372e:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8003732:	fb07 f308 	mul.w	r3, r7, r8
 8003736:	428b      	cmp	r3, r1
 8003738:	fa04 f402 	lsl.w	r4, r4, r2
 800373c:	d907      	bls.n	800374e <__udivmoddi4+0x256>
 800373e:	1869      	adds	r1, r5, r1
 8003740:	f107 3cff 	add.w	ip, r7, #4294967295
 8003744:	d22f      	bcs.n	80037a6 <__udivmoddi4+0x2ae>
 8003746:	428b      	cmp	r3, r1
 8003748:	d92d      	bls.n	80037a6 <__udivmoddi4+0x2ae>
 800374a:	3f02      	subs	r7, #2
 800374c:	4429      	add	r1, r5
 800374e:	1acb      	subs	r3, r1, r3
 8003750:	b281      	uxth	r1, r0
 8003752:	fbb3 f0fe 	udiv	r0, r3, lr
 8003756:	fb0e 3310 	mls	r3, lr, r0, r3
 800375a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 800375e:	fb00 f308 	mul.w	r3, r0, r8
 8003762:	428b      	cmp	r3, r1
 8003764:	d907      	bls.n	8003776 <__udivmoddi4+0x27e>
 8003766:	1869      	adds	r1, r5, r1
 8003768:	f100 3cff 	add.w	ip, r0, #4294967295
 800376c:	d217      	bcs.n	800379e <__udivmoddi4+0x2a6>
 800376e:	428b      	cmp	r3, r1
 8003770:	d915      	bls.n	800379e <__udivmoddi4+0x2a6>
 8003772:	3802      	subs	r0, #2
 8003774:	4429      	add	r1, r5
 8003776:	1ac9      	subs	r1, r1, r3
 8003778:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 800377c:	e73b      	b.n	80035f6 <__udivmoddi4+0xfe>
 800377e:	4637      	mov	r7, r6
 8003780:	4630      	mov	r0, r6
 8003782:	e709      	b.n	8003598 <__udivmoddi4+0xa0>
 8003784:	4607      	mov	r7, r0
 8003786:	e6e7      	b.n	8003558 <__udivmoddi4+0x60>
 8003788:	4618      	mov	r0, r3
 800378a:	e6fb      	b.n	8003584 <__udivmoddi4+0x8c>
 800378c:	4541      	cmp	r1, r8
 800378e:	d2ab      	bcs.n	80036e8 <__udivmoddi4+0x1f0>
 8003790:	ebb8 0a02 	subs.w	sl, r8, r2
 8003794:	eb69 020e 	sbc.w	r2, r9, lr
 8003798:	3801      	subs	r0, #1
 800379a:	4613      	mov	r3, r2
 800379c:	e7a4      	b.n	80036e8 <__udivmoddi4+0x1f0>
 800379e:	4660      	mov	r0, ip
 80037a0:	e7e9      	b.n	8003776 <__udivmoddi4+0x27e>
 80037a2:	4618      	mov	r0, r3
 80037a4:	e795      	b.n	80036d2 <__udivmoddi4+0x1da>
 80037a6:	4667      	mov	r7, ip
 80037a8:	e7d1      	b.n	800374e <__udivmoddi4+0x256>
 80037aa:	4681      	mov	r9, r0
 80037ac:	e77c      	b.n	80036a8 <__udivmoddi4+0x1b0>
 80037ae:	3802      	subs	r0, #2
 80037b0:	442c      	add	r4, r5
 80037b2:	e747      	b.n	8003644 <__udivmoddi4+0x14c>
 80037b4:	f1ac 0c02 	sub.w	ip, ip, #2
 80037b8:	442b      	add	r3, r5
 80037ba:	e72f      	b.n	800361c <__udivmoddi4+0x124>
 80037bc:	4638      	mov	r0, r7
 80037be:	e708      	b.n	80035d2 <__udivmoddi4+0xda>
 80037c0:	4637      	mov	r7, r6
 80037c2:	e6e9      	b.n	8003598 <__udivmoddi4+0xa0>

080037c4 <__aeabi_idiv0>:
 80037c4:	4770      	bx	lr
 80037c6:	bf00      	nop

080037c8 <__errno>:
 80037c8:	4b01      	ldr	r3, [pc, #4]	; (80037d0 <__errno+0x8>)
 80037ca:	6818      	ldr	r0, [r3, #0]
 80037cc:	4770      	bx	lr
 80037ce:	bf00      	nop
 80037d0:	20000010 	.word	0x20000010

080037d4 <__libc_init_array>:
 80037d4:	b570      	push	{r4, r5, r6, lr}
 80037d6:	4e0d      	ldr	r6, [pc, #52]	; (800380c <__libc_init_array+0x38>)
 80037d8:	4d0d      	ldr	r5, [pc, #52]	; (8003810 <__libc_init_array+0x3c>)
 80037da:	1b76      	subs	r6, r6, r5
 80037dc:	10b6      	asrs	r6, r6, #2
 80037de:	d006      	beq.n	80037ee <__libc_init_array+0x1a>
 80037e0:	2400      	movs	r4, #0
 80037e2:	3401      	adds	r4, #1
 80037e4:	f855 3b04 	ldr.w	r3, [r5], #4
 80037e8:	4798      	blx	r3
 80037ea:	42a6      	cmp	r6, r4
 80037ec:	d1f9      	bne.n	80037e2 <__libc_init_array+0xe>
 80037ee:	4e09      	ldr	r6, [pc, #36]	; (8003814 <__libc_init_array+0x40>)
 80037f0:	4d09      	ldr	r5, [pc, #36]	; (8003818 <__libc_init_array+0x44>)
 80037f2:	1b76      	subs	r6, r6, r5
 80037f4:	f005 f946 	bl	8008a84 <_init>
 80037f8:	10b6      	asrs	r6, r6, #2
 80037fa:	d006      	beq.n	800380a <__libc_init_array+0x36>
 80037fc:	2400      	movs	r4, #0
 80037fe:	3401      	adds	r4, #1
 8003800:	f855 3b04 	ldr.w	r3, [r5], #4
 8003804:	4798      	blx	r3
 8003806:	42a6      	cmp	r6, r4
 8003808:	d1f9      	bne.n	80037fe <__libc_init_array+0x2a>
 800380a:	bd70      	pop	{r4, r5, r6, pc}
 800380c:	200009c0 	.word	0x200009c0
 8003810:	200009c0 	.word	0x200009c0
 8003814:	200009c8 	.word	0x200009c8
 8003818:	200009c0 	.word	0x200009c0

0800381c <memcpy>:
 800381c:	4684      	mov	ip, r0
 800381e:	ea41 0300 	orr.w	r3, r1, r0
 8003822:	f013 0303 	ands.w	r3, r3, #3
 8003826:	d16d      	bne.n	8003904 <memcpy+0xe8>
 8003828:	3a40      	subs	r2, #64	; 0x40
 800382a:	d341      	bcc.n	80038b0 <memcpy+0x94>
 800382c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003830:	f840 3b04 	str.w	r3, [r0], #4
 8003834:	f851 3b04 	ldr.w	r3, [r1], #4
 8003838:	f840 3b04 	str.w	r3, [r0], #4
 800383c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003840:	f840 3b04 	str.w	r3, [r0], #4
 8003844:	f851 3b04 	ldr.w	r3, [r1], #4
 8003848:	f840 3b04 	str.w	r3, [r0], #4
 800384c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003850:	f840 3b04 	str.w	r3, [r0], #4
 8003854:	f851 3b04 	ldr.w	r3, [r1], #4
 8003858:	f840 3b04 	str.w	r3, [r0], #4
 800385c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003860:	f840 3b04 	str.w	r3, [r0], #4
 8003864:	f851 3b04 	ldr.w	r3, [r1], #4
 8003868:	f840 3b04 	str.w	r3, [r0], #4
 800386c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003870:	f840 3b04 	str.w	r3, [r0], #4
 8003874:	f851 3b04 	ldr.w	r3, [r1], #4
 8003878:	f840 3b04 	str.w	r3, [r0], #4
 800387c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003880:	f840 3b04 	str.w	r3, [r0], #4
 8003884:	f851 3b04 	ldr.w	r3, [r1], #4
 8003888:	f840 3b04 	str.w	r3, [r0], #4
 800388c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003890:	f840 3b04 	str.w	r3, [r0], #4
 8003894:	f851 3b04 	ldr.w	r3, [r1], #4
 8003898:	f840 3b04 	str.w	r3, [r0], #4
 800389c:	f851 3b04 	ldr.w	r3, [r1], #4
 80038a0:	f840 3b04 	str.w	r3, [r0], #4
 80038a4:	f851 3b04 	ldr.w	r3, [r1], #4
 80038a8:	f840 3b04 	str.w	r3, [r0], #4
 80038ac:	3a40      	subs	r2, #64	; 0x40
 80038ae:	d2bd      	bcs.n	800382c <memcpy+0x10>
 80038b0:	3230      	adds	r2, #48	; 0x30
 80038b2:	d311      	bcc.n	80038d8 <memcpy+0xbc>
 80038b4:	f851 3b04 	ldr.w	r3, [r1], #4
 80038b8:	f840 3b04 	str.w	r3, [r0], #4
 80038bc:	f851 3b04 	ldr.w	r3, [r1], #4
 80038c0:	f840 3b04 	str.w	r3, [r0], #4
 80038c4:	f851 3b04 	ldr.w	r3, [r1], #4
 80038c8:	f840 3b04 	str.w	r3, [r0], #4
 80038cc:	f851 3b04 	ldr.w	r3, [r1], #4
 80038d0:	f840 3b04 	str.w	r3, [r0], #4
 80038d4:	3a10      	subs	r2, #16
 80038d6:	d2ed      	bcs.n	80038b4 <memcpy+0x98>
 80038d8:	320c      	adds	r2, #12
 80038da:	d305      	bcc.n	80038e8 <memcpy+0xcc>
 80038dc:	f851 3b04 	ldr.w	r3, [r1], #4
 80038e0:	f840 3b04 	str.w	r3, [r0], #4
 80038e4:	3a04      	subs	r2, #4
 80038e6:	d2f9      	bcs.n	80038dc <memcpy+0xc0>
 80038e8:	3204      	adds	r2, #4
 80038ea:	d008      	beq.n	80038fe <memcpy+0xe2>
 80038ec:	07d2      	lsls	r2, r2, #31
 80038ee:	bf1c      	itt	ne
 80038f0:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80038f4:	f800 3b01 	strbne.w	r3, [r0], #1
 80038f8:	d301      	bcc.n	80038fe <memcpy+0xe2>
 80038fa:	880b      	ldrh	r3, [r1, #0]
 80038fc:	8003      	strh	r3, [r0, #0]
 80038fe:	4660      	mov	r0, ip
 8003900:	4770      	bx	lr
 8003902:	bf00      	nop
 8003904:	2a08      	cmp	r2, #8
 8003906:	d313      	bcc.n	8003930 <memcpy+0x114>
 8003908:	078b      	lsls	r3, r1, #30
 800390a:	d08d      	beq.n	8003828 <memcpy+0xc>
 800390c:	f010 0303 	ands.w	r3, r0, #3
 8003910:	d08a      	beq.n	8003828 <memcpy+0xc>
 8003912:	f1c3 0304 	rsb	r3, r3, #4
 8003916:	1ad2      	subs	r2, r2, r3
 8003918:	07db      	lsls	r3, r3, #31
 800391a:	bf1c      	itt	ne
 800391c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003920:	f800 3b01 	strbne.w	r3, [r0], #1
 8003924:	d380      	bcc.n	8003828 <memcpy+0xc>
 8003926:	f831 3b02 	ldrh.w	r3, [r1], #2
 800392a:	f820 3b02 	strh.w	r3, [r0], #2
 800392e:	e77b      	b.n	8003828 <memcpy+0xc>
 8003930:	3a04      	subs	r2, #4
 8003932:	d3d9      	bcc.n	80038e8 <memcpy+0xcc>
 8003934:	3a01      	subs	r2, #1
 8003936:	f811 3b01 	ldrb.w	r3, [r1], #1
 800393a:	f800 3b01 	strb.w	r3, [r0], #1
 800393e:	d2f9      	bcs.n	8003934 <memcpy+0x118>
 8003940:	780b      	ldrb	r3, [r1, #0]
 8003942:	7003      	strb	r3, [r0, #0]
 8003944:	784b      	ldrb	r3, [r1, #1]
 8003946:	7043      	strb	r3, [r0, #1]
 8003948:	788b      	ldrb	r3, [r1, #2]
 800394a:	7083      	strb	r3, [r0, #2]
 800394c:	4660      	mov	r0, ip
 800394e:	4770      	bx	lr

08003950 <memset>:
 8003950:	b4f0      	push	{r4, r5, r6, r7}
 8003952:	0786      	lsls	r6, r0, #30
 8003954:	d043      	beq.n	80039de <memset+0x8e>
 8003956:	1e54      	subs	r4, r2, #1
 8003958:	2a00      	cmp	r2, #0
 800395a:	d03e      	beq.n	80039da <memset+0x8a>
 800395c:	b2ca      	uxtb	r2, r1
 800395e:	4603      	mov	r3, r0
 8003960:	e002      	b.n	8003968 <memset+0x18>
 8003962:	f114 34ff 	adds.w	r4, r4, #4294967295
 8003966:	d338      	bcc.n	80039da <memset+0x8a>
 8003968:	f803 2b01 	strb.w	r2, [r3], #1
 800396c:	079d      	lsls	r5, r3, #30
 800396e:	d1f8      	bne.n	8003962 <memset+0x12>
 8003970:	2c03      	cmp	r4, #3
 8003972:	d92b      	bls.n	80039cc <memset+0x7c>
 8003974:	b2cd      	uxtb	r5, r1
 8003976:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800397a:	2c0f      	cmp	r4, #15
 800397c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003980:	d916      	bls.n	80039b0 <memset+0x60>
 8003982:	f1a4 0710 	sub.w	r7, r4, #16
 8003986:	093f      	lsrs	r7, r7, #4
 8003988:	f103 0620 	add.w	r6, r3, #32
 800398c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8003990:	f103 0210 	add.w	r2, r3, #16
 8003994:	e942 5504 	strd	r5, r5, [r2, #-16]
 8003998:	e942 5502 	strd	r5, r5, [r2, #-8]
 800399c:	3210      	adds	r2, #16
 800399e:	42b2      	cmp	r2, r6
 80039a0:	d1f8      	bne.n	8003994 <memset+0x44>
 80039a2:	f004 040f 	and.w	r4, r4, #15
 80039a6:	3701      	adds	r7, #1
 80039a8:	2c03      	cmp	r4, #3
 80039aa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80039ae:	d90d      	bls.n	80039cc <memset+0x7c>
 80039b0:	461e      	mov	r6, r3
 80039b2:	4622      	mov	r2, r4
 80039b4:	3a04      	subs	r2, #4
 80039b6:	2a03      	cmp	r2, #3
 80039b8:	f846 5b04 	str.w	r5, [r6], #4
 80039bc:	d8fa      	bhi.n	80039b4 <memset+0x64>
 80039be:	1f22      	subs	r2, r4, #4
 80039c0:	f022 0203 	bic.w	r2, r2, #3
 80039c4:	3204      	adds	r2, #4
 80039c6:	4413      	add	r3, r2
 80039c8:	f004 0403 	and.w	r4, r4, #3
 80039cc:	b12c      	cbz	r4, 80039da <memset+0x8a>
 80039ce:	b2c9      	uxtb	r1, r1
 80039d0:	441c      	add	r4, r3
 80039d2:	f803 1b01 	strb.w	r1, [r3], #1
 80039d6:	429c      	cmp	r4, r3
 80039d8:	d1fb      	bne.n	80039d2 <memset+0x82>
 80039da:	bcf0      	pop	{r4, r5, r6, r7}
 80039dc:	4770      	bx	lr
 80039de:	4614      	mov	r4, r2
 80039e0:	4603      	mov	r3, r0
 80039e2:	e7c5      	b.n	8003970 <memset+0x20>

080039e4 <printf>:
 80039e4:	b40f      	push	{r0, r1, r2, r3}
 80039e6:	b500      	push	{lr}
 80039e8:	4907      	ldr	r1, [pc, #28]	; (8003a08 <printf+0x24>)
 80039ea:	b083      	sub	sp, #12
 80039ec:	ab04      	add	r3, sp, #16
 80039ee:	6808      	ldr	r0, [r1, #0]
 80039f0:	f853 2b04 	ldr.w	r2, [r3], #4
 80039f4:	6881      	ldr	r1, [r0, #8]
 80039f6:	9301      	str	r3, [sp, #4]
 80039f8:	f000 f80a 	bl	8003a10 <_vfprintf_r>
 80039fc:	b003      	add	sp, #12
 80039fe:	f85d eb04 	ldr.w	lr, [sp], #4
 8003a02:	b004      	add	sp, #16
 8003a04:	4770      	bx	lr
 8003a06:	bf00      	nop
 8003a08:	20000010 	.word	0x20000010
 8003a0c:	00000000 	.word	0x00000000

08003a10 <_vfprintf_r>:
 8003a10:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003a14:	b0bf      	sub	sp, #252	; 0xfc
 8003a16:	461c      	mov	r4, r3
 8003a18:	4688      	mov	r8, r1
 8003a1a:	4692      	mov	sl, r2
 8003a1c:	4605      	mov	r5, r0
 8003a1e:	9006      	str	r0, [sp, #24]
 8003a20:	f002 fda0 	bl	8006564 <_localeconv_r>
 8003a24:	6803      	ldr	r3, [r0, #0]
 8003a26:	9310      	str	r3, [sp, #64]	; 0x40
 8003a28:	4618      	mov	r0, r3
 8003a2a:	f003 fca9 	bl	8007380 <strlen>
 8003a2e:	9409      	str	r4, [sp, #36]	; 0x24
 8003a30:	900f      	str	r0, [sp, #60]	; 0x3c
 8003a32:	b11d      	cbz	r5, 8003a3c <_vfprintf_r+0x2c>
 8003a34:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8003a36:	2b00      	cmp	r3, #0
 8003a38:	f000 8100 	beq.w	8003c3c <_vfprintf_r+0x22c>
 8003a3c:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
 8003a40:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
 8003a44:	07cd      	lsls	r5, r1, #31
 8003a46:	b293      	uxth	r3, r2
 8003a48:	d402      	bmi.n	8003a50 <_vfprintf_r+0x40>
 8003a4a:	0598      	lsls	r0, r3, #22
 8003a4c:	f140 8143 	bpl.w	8003cd6 <_vfprintf_r+0x2c6>
 8003a50:	0499      	lsls	r1, r3, #18
 8003a52:	d40a      	bmi.n	8003a6a <_vfprintf_r+0x5a>
 8003a54:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
 8003a58:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8003a5c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8003a60:	f8a8 300c 	strh.w	r3, [r8, #12]
 8003a64:	f8c8 1064 	str.w	r1, [r8, #100]	; 0x64
 8003a68:	b29b      	uxth	r3, r3
 8003a6a:	071a      	lsls	r2, r3, #28
 8003a6c:	f140 80b0 	bpl.w	8003bd0 <_vfprintf_r+0x1c0>
 8003a70:	f8d8 2010 	ldr.w	r2, [r8, #16]
 8003a74:	2a00      	cmp	r2, #0
 8003a76:	f000 80ab 	beq.w	8003bd0 <_vfprintf_r+0x1c0>
 8003a7a:	f003 021a 	and.w	r2, r3, #26
 8003a7e:	2a0a      	cmp	r2, #10
 8003a80:	f000 80c2 	beq.w	8003c08 <_vfprintf_r+0x1f8>
 8003a84:	ed9f 7ba0 	vldr	d7, [pc, #640]	; 8003d08 <_vfprintf_r+0x2f8>
 8003a88:	2300      	movs	r3, #0
 8003a8a:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 8003a8e:	930e      	str	r3, [sp, #56]	; 0x38
 8003a90:	e9cd 3322 	strd	r3, r3, [sp, #136]	; 0x88
 8003a94:	9311      	str	r3, [sp, #68]	; 0x44
 8003a96:	9314      	str	r3, [sp, #80]	; 0x50
 8003a98:	9305      	str	r3, [sp, #20]
 8003a9a:	ab2e      	add	r3, sp, #184	; 0xb8
 8003a9c:	9321      	str	r3, [sp, #132]	; 0x84
 8003a9e:	4699      	mov	r9, r3
 8003aa0:	46c3      	mov	fp, r8
 8003aa2:	f89a 3000 	ldrb.w	r3, [sl]
 8003aa6:	2b00      	cmp	r3, #0
 8003aa8:	f000 8283 	beq.w	8003fb2 <_vfprintf_r+0x5a2>
 8003aac:	2b25      	cmp	r3, #37	; 0x25
 8003aae:	4654      	mov	r4, sl
 8003ab0:	d102      	bne.n	8003ab8 <_vfprintf_r+0xa8>
 8003ab2:	e01e      	b.n	8003af2 <_vfprintf_r+0xe2>
 8003ab4:	2b25      	cmp	r3, #37	; 0x25
 8003ab6:	d003      	beq.n	8003ac0 <_vfprintf_r+0xb0>
 8003ab8:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8003abc:	2b00      	cmp	r3, #0
 8003abe:	d1f9      	bne.n	8003ab4 <_vfprintf_r+0xa4>
 8003ac0:	eba4 050a 	sub.w	r5, r4, sl
 8003ac4:	b18d      	cbz	r5, 8003aea <_vfprintf_r+0xda>
 8003ac6:	e9dd 3222 	ldrd	r3, r2, [sp, #136]	; 0x88
 8003aca:	3301      	adds	r3, #1
 8003acc:	442a      	add	r2, r5
 8003ace:	2b07      	cmp	r3, #7
 8003ad0:	f8c9 a000 	str.w	sl, [r9]
 8003ad4:	f8c9 5004 	str.w	r5, [r9, #4]
 8003ad8:	e9cd 3222 	strd	r3, r2, [sp, #136]	; 0x88
 8003adc:	f300 80da 	bgt.w	8003c94 <_vfprintf_r+0x284>
 8003ae0:	f109 0908 	add.w	r9, r9, #8
 8003ae4:	9b05      	ldr	r3, [sp, #20]
 8003ae6:	442b      	add	r3, r5
 8003ae8:	9305      	str	r3, [sp, #20]
 8003aea:	7823      	ldrb	r3, [r4, #0]
 8003aec:	2b00      	cmp	r3, #0
 8003aee:	f000 8260 	beq.w	8003fb2 <_vfprintf_r+0x5a2>
 8003af2:	2300      	movs	r3, #0
 8003af4:	461a      	mov	r2, r3
 8003af6:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8003afa:	4619      	mov	r1, r3
 8003afc:	9307      	str	r3, [sp, #28]
 8003afe:	4698      	mov	r8, r3
 8003b00:	7866      	ldrb	r6, [r4, #1]
 8003b02:	f04f 33ff 	mov.w	r3, #4294967295
 8003b06:	f104 0a01 	add.w	sl, r4, #1
 8003b0a:	9304      	str	r3, [sp, #16]
 8003b0c:	f10a 0a01 	add.w	sl, sl, #1
 8003b10:	f1a6 0320 	sub.w	r3, r6, #32
 8003b14:	2b58      	cmp	r3, #88	; 0x58
 8003b16:	f200 83fc 	bhi.w	8004312 <_vfprintf_r+0x902>
 8003b1a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003b1e:	02d1      	.short	0x02d1
 8003b20:	03fa03fa 	.word	0x03fa03fa
 8003b24:	03fa02d9 	.word	0x03fa02d9
 8003b28:	03fa03fa 	.word	0x03fa03fa
 8003b2c:	03fa03fa 	.word	0x03fa03fa
 8003b30:	033003fa 	.word	0x033003fa
 8003b34:	03fa033c 	.word	0x03fa033c
 8003b38:	039e03d0 	.word	0x039e03d0
 8003b3c:	026403fa 	.word	0x026403fa
 8003b40:	00e400e4 	.word	0x00e400e4
 8003b44:	00e400e4 	.word	0x00e400e4
 8003b48:	00e400e4 	.word	0x00e400e4
 8003b4c:	00e400e4 	.word	0x00e400e4
 8003b50:	03fa00e4 	.word	0x03fa00e4
 8003b54:	03fa03fa 	.word	0x03fa03fa
 8003b58:	03fa03fa 	.word	0x03fa03fa
 8003b5c:	03fa03fa 	.word	0x03fa03fa
 8003b60:	03fa03fa 	.word	0x03fa03fa
 8003b64:	03b803fa 	.word	0x03b803fa
 8003b68:	03fa0341 	.word	0x03fa0341
 8003b6c:	03fa0341 	.word	0x03fa0341
 8003b70:	03fa03fa 	.word	0x03fa03fa
 8003b74:	039903fa 	.word	0x039903fa
 8003b78:	03fa03fa 	.word	0x03fa03fa
 8003b7c:	03fa0093 	.word	0x03fa0093
 8003b80:	03fa03fa 	.word	0x03fa03fa
 8003b84:	03fa03fa 	.word	0x03fa03fa
 8003b88:	03fa00a7 	.word	0x03fa00a7
 8003b8c:	026903fa 	.word	0x026903fa
 8003b90:	03fa03fa 	.word	0x03fa03fa
 8003b94:	03fa03fa 	.word	0x03fa03fa
 8003b98:	03fa03fa 	.word	0x03fa03fa
 8003b9c:	03fa03fa 	.word	0x03fa03fa
 8003ba0:	03fa03fa 	.word	0x03fa03fa
 8003ba4:	00f902be 	.word	0x00f902be
 8003ba8:	03410341 	.word	0x03410341
 8003bac:	02520341 	.word	0x02520341
 8003bb0:	03fa00f9 	.word	0x03fa00f9
 8003bb4:	025703fa 	.word	0x025703fa
 8003bb8:	031f03fa 	.word	0x031f03fa
 8003bbc:	03840095 	.word	0x03840095
 8003bc0:	03fa0394 	.word	0x03fa0394
 8003bc4:	03fa02fc 	.word	0x03fa02fc
 8003bc8:	03fa00a9 	.word	0x03fa00a9
 8003bcc:	02e503fa 	.word	0x02e503fa
 8003bd0:	4641      	mov	r1, r8
 8003bd2:	9806      	ldr	r0, [sp, #24]
 8003bd4:	f001 f9e4 	bl	8004fa0 <__swsetup_r>
 8003bd8:	b178      	cbz	r0, 8003bfa <_vfprintf_r+0x1ea>
 8003bda:	f8d8 3064 	ldr.w	r3, [r8, #100]	; 0x64
 8003bde:	07db      	lsls	r3, r3, #31
 8003be0:	d404      	bmi.n	8003bec <_vfprintf_r+0x1dc>
 8003be2:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8003be6:	059f      	lsls	r7, r3, #22
 8003be8:	f140 838b 	bpl.w	8004302 <_vfprintf_r+0x8f2>
 8003bec:	f04f 33ff 	mov.w	r3, #4294967295
 8003bf0:	9305      	str	r3, [sp, #20]
 8003bf2:	9805      	ldr	r0, [sp, #20]
 8003bf4:	b03f      	add	sp, #252	; 0xfc
 8003bf6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003bfa:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8003bfe:	f003 021a 	and.w	r2, r3, #26
 8003c02:	2a0a      	cmp	r2, #10
 8003c04:	f47f af3e 	bne.w	8003a84 <_vfprintf_r+0x74>
 8003c08:	f9b8 200e 	ldrsh.w	r2, [r8, #14]
 8003c0c:	2a00      	cmp	r2, #0
 8003c0e:	f6ff af39 	blt.w	8003a84 <_vfprintf_r+0x74>
 8003c12:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
 8003c16:	07d6      	lsls	r6, r2, #31
 8003c18:	d405      	bmi.n	8003c26 <_vfprintf_r+0x216>
 8003c1a:	059d      	lsls	r5, r3, #22
 8003c1c:	d403      	bmi.n	8003c26 <_vfprintf_r+0x216>
 8003c1e:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8003c22:	f002 fcb3 	bl	800658c <__retarget_lock_release_recursive>
 8003c26:	4623      	mov	r3, r4
 8003c28:	4652      	mov	r2, sl
 8003c2a:	4641      	mov	r1, r8
 8003c2c:	9806      	ldr	r0, [sp, #24]
 8003c2e:	f001 f975 	bl	8004f1c <__sbprintf>
 8003c32:	9005      	str	r0, [sp, #20]
 8003c34:	9805      	ldr	r0, [sp, #20]
 8003c36:	b03f      	add	sp, #252	; 0xfc
 8003c38:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003c3c:	9806      	ldr	r0, [sp, #24]
 8003c3e:	f002 fad1 	bl	80061e4 <__sinit>
 8003c42:	e6fb      	b.n	8003a3c <_vfprintf_r+0x2c>
 8003c44:	f048 0810 	orr.w	r8, r8, #16
 8003c48:	f018 0320 	ands.w	r3, r8, #32
 8003c4c:	f040 833c 	bne.w	80042c8 <_vfprintf_r+0x8b8>
 8003c50:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c52:	f852 4b04 	ldr.w	r4, [r2], #4
 8003c56:	9209      	str	r2, [sp, #36]	; 0x24
 8003c58:	f018 0210 	ands.w	r2, r8, #16
 8003c5c:	d104      	bne.n	8003c68 <_vfprintf_r+0x258>
 8003c5e:	f018 0340 	ands.w	r3, r8, #64	; 0x40
 8003c62:	bf1c      	itt	ne
 8003c64:	4613      	movne	r3, r2
 8003c66:	b2a4      	uxthne	r4, r4
 8003c68:	2500      	movs	r5, #0
 8003c6a:	e1e2      	b.n	8004032 <_vfprintf_r+0x622>
 8003c6c:	f048 0810 	orr.w	r8, r8, #16
 8003c70:	f018 0f20 	tst.w	r8, #32
 8003c74:	f040 8333 	bne.w	80042de <_vfprintf_r+0x8ce>
 8003c78:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c7a:	f018 0f10 	tst.w	r8, #16
 8003c7e:	f853 4b04 	ldr.w	r4, [r3], #4
 8003c82:	9309      	str	r3, [sp, #36]	; 0x24
 8003c84:	d103      	bne.n	8003c8e <_vfprintf_r+0x27e>
 8003c86:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003c8a:	bf18      	it	ne
 8003c8c:	b2a4      	uxthne	r4, r4
 8003c8e:	2500      	movs	r5, #0
 8003c90:	2301      	movs	r3, #1
 8003c92:	e1ce      	b.n	8004032 <_vfprintf_r+0x622>
 8003c94:	aa21      	add	r2, sp, #132	; 0x84
 8003c96:	4659      	mov	r1, fp
 8003c98:	9806      	ldr	r0, [sp, #24]
 8003c9a:	f003 fc1b 	bl	80074d4 <__sprint_r>
 8003c9e:	b950      	cbnz	r0, 8003cb6 <_vfprintf_r+0x2a6>
 8003ca0:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003ca4:	e71e      	b.n	8003ae4 <_vfprintf_r+0xd4>
 8003ca6:	aa21      	add	r2, sp, #132	; 0x84
 8003ca8:	4659      	mov	r1, fp
 8003caa:	9806      	ldr	r0, [sp, #24]
 8003cac:	f003 fc12 	bl	80074d4 <__sprint_r>
 8003cb0:	2800      	cmp	r0, #0
 8003cb2:	f000 8175 	beq.w	8003fa0 <_vfprintf_r+0x590>
 8003cb6:	46d8      	mov	r8, fp
 8003cb8:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
 8003cbc:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8003cc0:	07d1      	lsls	r1, r2, #31
 8003cc2:	d402      	bmi.n	8003cca <_vfprintf_r+0x2ba>
 8003cc4:	059a      	lsls	r2, r3, #22
 8003cc6:	f140 8315 	bpl.w	80042f4 <_vfprintf_r+0x8e4>
 8003cca:	065b      	lsls	r3, r3, #25
 8003ccc:	d48e      	bmi.n	8003bec <_vfprintf_r+0x1dc>
 8003cce:	9805      	ldr	r0, [sp, #20]
 8003cd0:	b03f      	add	sp, #252	; 0xfc
 8003cd2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003cd6:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8003cda:	f002 fc55 	bl	8006588 <__retarget_lock_acquire_recursive>
 8003cde:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
 8003ce2:	b293      	uxth	r3, r2
 8003ce4:	e6b4      	b.n	8003a50 <_vfprintf_r+0x40>
 8003ce6:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003cea:	2000      	movs	r0, #0
 8003cec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003cf0:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8003cf4:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8003cf8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003cfc:	2b09      	cmp	r3, #9
 8003cfe:	d9f5      	bls.n	8003cec <_vfprintf_r+0x2dc>
 8003d00:	9007      	str	r0, [sp, #28]
 8003d02:	e705      	b.n	8003b10 <_vfprintf_r+0x100>
 8003d04:	f3af 8000 	nop.w
	...
 8003d10:	2a00      	cmp	r2, #0
 8003d12:	f041 80ea 	bne.w	8004eea <_vfprintf_r+0x14da>
 8003d16:	f018 0f20 	tst.w	r8, #32
 8003d1a:	f000 82c1 	beq.w	80042a0 <_vfprintf_r+0x890>
 8003d1e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8003d20:	3407      	adds	r4, #7
 8003d22:	f024 0307 	bic.w	r3, r4, #7
 8003d26:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003d2a:	f103 0208 	add.w	r2, r3, #8
 8003d2e:	9209      	str	r2, [sp, #36]	; 0x24
 8003d30:	2c00      	cmp	r4, #0
 8003d32:	f175 0300 	sbcs.w	r3, r5, #0
 8003d36:	f2c0 84d1 	blt.w	80046dc <_vfprintf_r+0xccc>
 8003d3a:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8003d3e:	9b04      	ldr	r3, [sp, #16]
 8003d40:	3301      	adds	r3, #1
 8003d42:	f000 842f 	beq.w	80045a4 <_vfprintf_r+0xb94>
 8003d46:	2301      	movs	r3, #1
 8003d48:	f028 0280 	bic.w	r2, r8, #128	; 0x80
 8003d4c:	9202      	str	r2, [sp, #8]
 8003d4e:	ea54 0205 	orrs.w	r2, r4, r5
 8003d52:	f040 8177 	bne.w	8004044 <_vfprintf_r+0x634>
 8003d56:	9a04      	ldr	r2, [sp, #16]
 8003d58:	2a00      	cmp	r2, #0
 8003d5a:	f040 857b 	bne.w	8004854 <_vfprintf_r+0xe44>
 8003d5e:	2b00      	cmp	r3, #0
 8003d60:	f040 8487 	bne.w	8004672 <_vfprintf_r+0xc62>
 8003d64:	f018 0301 	ands.w	r3, r8, #1
 8003d68:	9308      	str	r3, [sp, #32]
 8003d6a:	f000 85a0 	beq.w	80048ae <_vfprintf_r+0xe9e>
 8003d6e:	ab3e      	add	r3, sp, #248	; 0xf8
 8003d70:	461a      	mov	r2, r3
 8003d72:	2330      	movs	r3, #48	; 0x30
 8003d74:	f802 3d41 	strb.w	r3, [r2, #-65]!
 8003d78:	920a      	str	r2, [sp, #40]	; 0x28
 8003d7a:	9b04      	ldr	r3, [sp, #16]
 8003d7c:	9a08      	ldr	r2, [sp, #32]
 8003d7e:	4293      	cmp	r3, r2
 8003d80:	bfb8      	it	lt
 8003d82:	4613      	movlt	r3, r2
 8003d84:	9303      	str	r3, [sp, #12]
 8003d86:	2300      	movs	r3, #0
 8003d88:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d8a:	b117      	cbz	r7, 8003d92 <_vfprintf_r+0x382>
 8003d8c:	9b03      	ldr	r3, [sp, #12]
 8003d8e:	3301      	adds	r3, #1
 8003d90:	9303      	str	r3, [sp, #12]
 8003d92:	9b02      	ldr	r3, [sp, #8]
 8003d94:	f013 0302 	ands.w	r3, r3, #2
 8003d98:	d002      	beq.n	8003da0 <_vfprintf_r+0x390>
 8003d9a:	9a03      	ldr	r2, [sp, #12]
 8003d9c:	3202      	adds	r2, #2
 8003d9e:	9203      	str	r2, [sp, #12]
 8003da0:	9a02      	ldr	r2, [sp, #8]
 8003da2:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003da4:	f012 0884 	ands.w	r8, r2, #132	; 0x84
 8003da8:	d142      	bne.n	8003e30 <_vfprintf_r+0x420>
 8003daa:	9a07      	ldr	r2, [sp, #28]
 8003dac:	9903      	ldr	r1, [sp, #12]
 8003dae:	1a55      	subs	r5, r2, r1
 8003db0:	2d00      	cmp	r5, #0
 8003db2:	dd3d      	ble.n	8003e30 <_vfprintf_r+0x420>
 8003db4:	2d10      	cmp	r5, #16
 8003db6:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003db8:	dd2c      	ble.n	8003e14 <_vfprintf_r+0x404>
 8003dba:	4648      	mov	r0, r9
 8003dbc:	4621      	mov	r1, r4
 8003dbe:	46a9      	mov	r9, r5
 8003dc0:	2710      	movs	r7, #16
 8003dc2:	461d      	mov	r5, r3
 8003dc4:	9c06      	ldr	r4, [sp, #24]
 8003dc6:	4603      	mov	r3, r0
 8003dc8:	e006      	b.n	8003dd8 <_vfprintf_r+0x3c8>
 8003dca:	f1a9 0910 	sub.w	r9, r9, #16
 8003dce:	f1b9 0f10 	cmp.w	r9, #16
 8003dd2:	f103 0308 	add.w	r3, r3, #8
 8003dd6:	dd18      	ble.n	8003e0a <_vfprintf_r+0x3fa>
 8003dd8:	3201      	adds	r2, #1
 8003dda:	48c0      	ldr	r0, [pc, #768]	; (80040dc <_vfprintf_r+0x6cc>)
 8003ddc:	3110      	adds	r1, #16
 8003dde:	2a07      	cmp	r2, #7
 8003de0:	e9cd 2122 	strd	r2, r1, [sp, #136]	; 0x88
 8003de4:	e9c3 0700 	strd	r0, r7, [r3]
 8003de8:	ddef      	ble.n	8003dca <_vfprintf_r+0x3ba>
 8003dea:	aa21      	add	r2, sp, #132	; 0x84
 8003dec:	4659      	mov	r1, fp
 8003dee:	4620      	mov	r0, r4
 8003df0:	f003 fb70 	bl	80074d4 <__sprint_r>
 8003df4:	2800      	cmp	r0, #0
 8003df6:	f47f af5e 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8003dfa:	f1a9 0910 	sub.w	r9, r9, #16
 8003dfe:	f1b9 0f10 	cmp.w	r9, #16
 8003e02:	e9dd 2122 	ldrd	r2, r1, [sp, #136]	; 0x88
 8003e06:	ab2e      	add	r3, sp, #184	; 0xb8
 8003e08:	dce6      	bgt.n	8003dd8 <_vfprintf_r+0x3c8>
 8003e0a:	4618      	mov	r0, r3
 8003e0c:	460c      	mov	r4, r1
 8003e0e:	462b      	mov	r3, r5
 8003e10:	464d      	mov	r5, r9
 8003e12:	4681      	mov	r9, r0
 8003e14:	3201      	adds	r2, #1
 8003e16:	49b1      	ldr	r1, [pc, #708]	; (80040dc <_vfprintf_r+0x6cc>)
 8003e18:	442c      	add	r4, r5
 8003e1a:	2a07      	cmp	r2, #7
 8003e1c:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003e20:	e9c9 1500 	strd	r1, r5, [r9]
 8003e24:	f300 8487 	bgt.w	8004736 <_vfprintf_r+0xd26>
 8003e28:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8003e2c:	f109 0908 	add.w	r9, r9, #8
 8003e30:	b177      	cbz	r7, 8003e50 <_vfprintf_r+0x440>
 8003e32:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003e34:	3201      	adds	r2, #1
 8003e36:	3401      	adds	r4, #1
 8003e38:	f10d 0067 	add.w	r0, sp, #103	; 0x67
 8003e3c:	2101      	movs	r1, #1
 8003e3e:	2a07      	cmp	r2, #7
 8003e40:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003e44:	e9c9 0100 	strd	r0, r1, [r9]
 8003e48:	f300 8392 	bgt.w	8004570 <_vfprintf_r+0xb60>
 8003e4c:	f109 0908 	add.w	r9, r9, #8
 8003e50:	b16b      	cbz	r3, 8003e6e <_vfprintf_r+0x45e>
 8003e52:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8003e54:	3301      	adds	r3, #1
 8003e56:	3402      	adds	r4, #2
 8003e58:	a91a      	add	r1, sp, #104	; 0x68
 8003e5a:	2202      	movs	r2, #2
 8003e5c:	2b07      	cmp	r3, #7
 8003e5e:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8003e62:	e9c9 1200 	strd	r1, r2, [r9]
 8003e66:	f300 8391 	bgt.w	800458c <_vfprintf_r+0xb7c>
 8003e6a:	f109 0908 	add.w	r9, r9, #8
 8003e6e:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
 8003e72:	f000 82d0 	beq.w	8004416 <_vfprintf_r+0xa06>
 8003e76:	9b04      	ldr	r3, [sp, #16]
 8003e78:	9a08      	ldr	r2, [sp, #32]
 8003e7a:	1a9d      	subs	r5, r3, r2
 8003e7c:	2d00      	cmp	r5, #0
 8003e7e:	dd33      	ble.n	8003ee8 <_vfprintf_r+0x4d8>
 8003e80:	2d10      	cmp	r5, #16
 8003e82:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003e84:	f8df 825c 	ldr.w	r8, [pc, #604]	; 80040e4 <_vfprintf_r+0x6d4>
 8003e88:	dd23      	ble.n	8003ed2 <_vfprintf_r+0x4c2>
 8003e8a:	4623      	mov	r3, r4
 8003e8c:	2710      	movs	r7, #16
 8003e8e:	4644      	mov	r4, r8
 8003e90:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003e94:	e004      	b.n	8003ea0 <_vfprintf_r+0x490>
 8003e96:	3d10      	subs	r5, #16
 8003e98:	2d10      	cmp	r5, #16
 8003e9a:	f109 0908 	add.w	r9, r9, #8
 8003e9e:	dd16      	ble.n	8003ece <_vfprintf_r+0x4be>
 8003ea0:	3201      	adds	r2, #1
 8003ea2:	3310      	adds	r3, #16
 8003ea4:	2a07      	cmp	r2, #7
 8003ea6:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 8003eaa:	e9c9 4700 	strd	r4, r7, [r9]
 8003eae:	ddf2      	ble.n	8003e96 <_vfprintf_r+0x486>
 8003eb0:	aa21      	add	r2, sp, #132	; 0x84
 8003eb2:	4659      	mov	r1, fp
 8003eb4:	4640      	mov	r0, r8
 8003eb6:	f003 fb0d 	bl	80074d4 <__sprint_r>
 8003eba:	2800      	cmp	r0, #0
 8003ebc:	f47f aefb 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8003ec0:	3d10      	subs	r5, #16
 8003ec2:	2d10      	cmp	r5, #16
 8003ec4:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 8003ec8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003ecc:	dce8      	bgt.n	8003ea0 <_vfprintf_r+0x490>
 8003ece:	46a0      	mov	r8, r4
 8003ed0:	461c      	mov	r4, r3
 8003ed2:	3201      	adds	r2, #1
 8003ed4:	442c      	add	r4, r5
 8003ed6:	2a07      	cmp	r2, #7
 8003ed8:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003edc:	e9c9 8500 	strd	r8, r5, [r9]
 8003ee0:	f300 8372 	bgt.w	80045c8 <_vfprintf_r+0xbb8>
 8003ee4:	f109 0908 	add.w	r9, r9, #8
 8003ee8:	9b02      	ldr	r3, [sp, #8]
 8003eea:	05dd      	lsls	r5, r3, #23
 8003eec:	f100 8227 	bmi.w	800433e <_vfprintf_r+0x92e>
 8003ef0:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8003ef2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003ef4:	f8c9 2000 	str.w	r2, [r9]
 8003ef8:	9a08      	ldr	r2, [sp, #32]
 8003efa:	f8c9 2004 	str.w	r2, [r9, #4]
 8003efe:	3301      	adds	r3, #1
 8003f00:	4414      	add	r4, r2
 8003f02:	2b07      	cmp	r3, #7
 8003f04:	9423      	str	r4, [sp, #140]	; 0x8c
 8003f06:	9322      	str	r3, [sp, #136]	; 0x88
 8003f08:	f300 830f 	bgt.w	800452a <_vfprintf_r+0xb1a>
 8003f0c:	f109 0908 	add.w	r9, r9, #8
 8003f10:	9b02      	ldr	r3, [sp, #8]
 8003f12:	0758      	lsls	r0, r3, #29
 8003f14:	d539      	bpl.n	8003f8a <_vfprintf_r+0x57a>
 8003f16:	9b07      	ldr	r3, [sp, #28]
 8003f18:	9a03      	ldr	r2, [sp, #12]
 8003f1a:	1a9d      	subs	r5, r3, r2
 8003f1c:	2d00      	cmp	r5, #0
 8003f1e:	dd34      	ble.n	8003f8a <_vfprintf_r+0x57a>
 8003f20:	2d10      	cmp	r5, #16
 8003f22:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8003f24:	dd1f      	ble.n	8003f66 <_vfprintf_r+0x556>
 8003f26:	2610      	movs	r6, #16
 8003f28:	9f06      	ldr	r7, [sp, #24]
 8003f2a:	e004      	b.n	8003f36 <_vfprintf_r+0x526>
 8003f2c:	3d10      	subs	r5, #16
 8003f2e:	2d10      	cmp	r5, #16
 8003f30:	f109 0908 	add.w	r9, r9, #8
 8003f34:	dd17      	ble.n	8003f66 <_vfprintf_r+0x556>
 8003f36:	3301      	adds	r3, #1
 8003f38:	4a68      	ldr	r2, [pc, #416]	; (80040dc <_vfprintf_r+0x6cc>)
 8003f3a:	3410      	adds	r4, #16
 8003f3c:	2b07      	cmp	r3, #7
 8003f3e:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8003f42:	e9c9 2600 	strd	r2, r6, [r9]
 8003f46:	ddf1      	ble.n	8003f2c <_vfprintf_r+0x51c>
 8003f48:	aa21      	add	r2, sp, #132	; 0x84
 8003f4a:	4659      	mov	r1, fp
 8003f4c:	4638      	mov	r0, r7
 8003f4e:	f003 fac1 	bl	80074d4 <__sprint_r>
 8003f52:	2800      	cmp	r0, #0
 8003f54:	f47f aeaf 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8003f58:	3d10      	subs	r5, #16
 8003f5a:	2d10      	cmp	r5, #16
 8003f5c:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 8003f60:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003f64:	dce7      	bgt.n	8003f36 <_vfprintf_r+0x526>
 8003f66:	3301      	adds	r3, #1
 8003f68:	4a5c      	ldr	r2, [pc, #368]	; (80040dc <_vfprintf_r+0x6cc>)
 8003f6a:	442c      	add	r4, r5
 8003f6c:	2b07      	cmp	r3, #7
 8003f6e:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8003f72:	e9c9 2500 	strd	r2, r5, [r9]
 8003f76:	dd08      	ble.n	8003f8a <_vfprintf_r+0x57a>
 8003f78:	aa21      	add	r2, sp, #132	; 0x84
 8003f7a:	4659      	mov	r1, fp
 8003f7c:	9806      	ldr	r0, [sp, #24]
 8003f7e:	f003 faa9 	bl	80074d4 <__sprint_r>
 8003f82:	2800      	cmp	r0, #0
 8003f84:	f47f ae97 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8003f88:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003f8a:	9b05      	ldr	r3, [sp, #20]
 8003f8c:	9a07      	ldr	r2, [sp, #28]
 8003f8e:	9903      	ldr	r1, [sp, #12]
 8003f90:	428a      	cmp	r2, r1
 8003f92:	bfac      	ite	ge
 8003f94:	189b      	addge	r3, r3, r2
 8003f96:	185b      	addlt	r3, r3, r1
 8003f98:	9305      	str	r3, [sp, #20]
 8003f9a:	2c00      	cmp	r4, #0
 8003f9c:	f47f ae83 	bne.w	8003ca6 <_vfprintf_r+0x296>
 8003fa0:	2300      	movs	r3, #0
 8003fa2:	9322      	str	r3, [sp, #136]	; 0x88
 8003fa4:	f89a 3000 	ldrb.w	r3, [sl]
 8003fa8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003fac:	2b00      	cmp	r3, #0
 8003fae:	f47f ad7d 	bne.w	8003aac <_vfprintf_r+0x9c>
 8003fb2:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 8003fb4:	46d8      	mov	r8, fp
 8003fb6:	2b00      	cmp	r3, #0
 8003fb8:	f040 86ba 	bne.w	8004d30 <_vfprintf_r+0x1320>
 8003fbc:	2300      	movs	r3, #0
 8003fbe:	9322      	str	r3, [sp, #136]	; 0x88
 8003fc0:	e67a      	b.n	8003cb8 <_vfprintf_r+0x2a8>
 8003fc2:	f048 0840 	orr.w	r8, r8, #64	; 0x40
 8003fc6:	f89a 6000 	ldrb.w	r6, [sl]
 8003fca:	e59f      	b.n	8003b0c <_vfprintf_r+0xfc>
 8003fcc:	f89a 6000 	ldrb.w	r6, [sl]
 8003fd0:	2e6c      	cmp	r6, #108	; 0x6c
 8003fd2:	bf03      	ittte	eq
 8003fd4:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003fd8:	f048 0820 	orreq.w	r8, r8, #32
 8003fdc:	f10a 0a01 	addeq.w	sl, sl, #1
 8003fe0:	f048 0810 	orrne.w	r8, r8, #16
 8003fe4:	e592      	b.n	8003b0c <_vfprintf_r+0xfc>
 8003fe6:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003fea:	f89a 6000 	ldrb.w	r6, [sl]
 8003fee:	e58d      	b.n	8003b0c <_vfprintf_r+0xfc>
 8003ff0:	2a00      	cmp	r2, #0
 8003ff2:	f040 877e 	bne.w	8004ef2 <_vfprintf_r+0x14e2>
 8003ff6:	4b3a      	ldr	r3, [pc, #232]	; (80040e0 <_vfprintf_r+0x6d0>)
 8003ff8:	9311      	str	r3, [sp, #68]	; 0x44
 8003ffa:	f018 0f20 	tst.w	r8, #32
 8003ffe:	d07b      	beq.n	80040f8 <_vfprintf_r+0x6e8>
 8004000:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004002:	3407      	adds	r4, #7
 8004004:	f024 0307 	bic.w	r3, r4, #7
 8004008:	e9d3 4500 	ldrd	r4, r5, [r3]
 800400c:	f103 0208 	add.w	r2, r3, #8
 8004010:	9209      	str	r2, [sp, #36]	; 0x24
 8004012:	f018 0f01 	tst.w	r8, #1
 8004016:	f000 82d5 	beq.w	80045c4 <_vfprintf_r+0xbb4>
 800401a:	ea54 0305 	orrs.w	r3, r4, r5
 800401e:	f000 82d1 	beq.w	80045c4 <_vfprintf_r+0xbb4>
 8004022:	2330      	movs	r3, #48	; 0x30
 8004024:	f88d 3068 	strb.w	r3, [sp, #104]	; 0x68
 8004028:	f88d 6069 	strb.w	r6, [sp, #105]	; 0x69
 800402c:	f048 0802 	orr.w	r8, r8, #2
 8004030:	2302      	movs	r3, #2
 8004032:	9a04      	ldr	r2, [sp, #16]
 8004034:	2700      	movs	r7, #0
 8004036:	3201      	adds	r2, #1
 8004038:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 800403c:	f47f ae84 	bne.w	8003d48 <_vfprintf_r+0x338>
 8004040:	f8cd 8008 	str.w	r8, [sp, #8]
 8004044:	2b01      	cmp	r3, #1
 8004046:	f000 82af 	beq.w	80045a8 <_vfprintf_r+0xb98>
 800404a:	2b02      	cmp	r3, #2
 800404c:	f000 8279 	beq.w	8004542 <_vfprintf_r+0xb32>
 8004050:	a92e      	add	r1, sp, #184	; 0xb8
 8004052:	e000      	b.n	8004056 <_vfprintf_r+0x646>
 8004054:	4611      	mov	r1, r2
 8004056:	08e2      	lsrs	r2, r4, #3
 8004058:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800405c:	08e8      	lsrs	r0, r5, #3
 800405e:	f004 0307 	and.w	r3, r4, #7
 8004062:	4605      	mov	r5, r0
 8004064:	4614      	mov	r4, r2
 8004066:	3330      	adds	r3, #48	; 0x30
 8004068:	ea54 0005 	orrs.w	r0, r4, r5
 800406c:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004070:	f101 32ff 	add.w	r2, r1, #4294967295
 8004074:	d1ee      	bne.n	8004054 <_vfprintf_r+0x644>
 8004076:	9802      	ldr	r0, [sp, #8]
 8004078:	920a      	str	r2, [sp, #40]	; 0x28
 800407a:	07c0      	lsls	r0, r0, #31
 800407c:	f140 8274 	bpl.w	8004568 <_vfprintf_r+0xb58>
 8004080:	2b30      	cmp	r3, #48	; 0x30
 8004082:	f000 8555 	beq.w	8004b30 <_vfprintf_r+0x1120>
 8004086:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004088:	2330      	movs	r3, #48	; 0x30
 800408a:	3902      	subs	r1, #2
 800408c:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004090:	ab2e      	add	r3, sp, #184	; 0xb8
 8004092:	1a5b      	subs	r3, r3, r1
 8004094:	9308      	str	r3, [sp, #32]
 8004096:	910a      	str	r1, [sp, #40]	; 0x28
 8004098:	e66f      	b.n	8003d7a <_vfprintf_r+0x36a>
 800409a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800409c:	2300      	movs	r3, #0
 800409e:	680a      	ldr	r2, [r1, #0]
 80040a0:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 80040a4:	461f      	mov	r7, r3
 80040a6:	f88d 2090 	strb.w	r2, [sp, #144]	; 0x90
 80040aa:	2301      	movs	r3, #1
 80040ac:	1d0a      	adds	r2, r1, #4
 80040ae:	e9cd 8302 	strd	r8, r3, [sp, #8]
 80040b2:	e9cd 3208 	strd	r3, r2, [sp, #32]
 80040b6:	ab24      	add	r3, sp, #144	; 0x90
 80040b8:	9704      	str	r7, [sp, #16]
 80040ba:	970b      	str	r7, [sp, #44]	; 0x2c
 80040bc:	930a      	str	r3, [sp, #40]	; 0x28
 80040be:	e668      	b.n	8003d92 <_vfprintf_r+0x382>
 80040c0:	f89a 6000 	ldrb.w	r6, [sl]
 80040c4:	2900      	cmp	r1, #0
 80040c6:	f47f ad21 	bne.w	8003b0c <_vfprintf_r+0xfc>
 80040ca:	2201      	movs	r2, #1
 80040cc:	2120      	movs	r1, #32
 80040ce:	e51d      	b.n	8003b0c <_vfprintf_r+0xfc>
 80040d0:	f048 0801 	orr.w	r8, r8, #1
 80040d4:	f89a 6000 	ldrb.w	r6, [sl]
 80040d8:	e518      	b.n	8003b0c <_vfprintf_r+0xfc>
 80040da:	bf00      	nop
 80040dc:	08009660 	.word	0x08009660
 80040e0:	0800962c 	.word	0x0800962c
 80040e4:	08009670 	.word	0x08009670
 80040e8:	2a00      	cmp	r2, #0
 80040ea:	f040 870a 	bne.w	8004f02 <_vfprintf_r+0x14f2>
 80040ee:	4bb6      	ldr	r3, [pc, #728]	; (80043c8 <_vfprintf_r+0x9b8>)
 80040f0:	9311      	str	r3, [sp, #68]	; 0x44
 80040f2:	f018 0f20 	tst.w	r8, #32
 80040f6:	d183      	bne.n	8004000 <_vfprintf_r+0x5f0>
 80040f8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040fa:	f018 0f10 	tst.w	r8, #16
 80040fe:	f853 4b04 	ldr.w	r4, [r3], #4
 8004102:	9309      	str	r3, [sp, #36]	; 0x24
 8004104:	f040 82f2 	bne.w	80046ec <_vfprintf_r+0xcdc>
 8004108:	f018 0f40 	tst.w	r8, #64	; 0x40
 800410c:	f000 82ee 	beq.w	80046ec <_vfprintf_r+0xcdc>
 8004110:	b2a4      	uxth	r4, r4
 8004112:	2500      	movs	r5, #0
 8004114:	e77d      	b.n	8004012 <_vfprintf_r+0x602>
 8004116:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004118:	6813      	ldr	r3, [r2, #0]
 800411a:	930a      	str	r3, [sp, #40]	; 0x28
 800411c:	2500      	movs	r5, #0
 800411e:	f88d 5067 	strb.w	r5, [sp, #103]	; 0x67
 8004122:	1d14      	adds	r4, r2, #4
 8004124:	2b00      	cmp	r3, #0
 8004126:	f000 84e6 	beq.w	8004af6 <_vfprintf_r+0x10e6>
 800412a:	9a04      	ldr	r2, [sp, #16]
 800412c:	1c53      	adds	r3, r2, #1
 800412e:	f000 8540 	beq.w	8004bb2 <_vfprintf_r+0x11a2>
 8004132:	4629      	mov	r1, r5
 8004134:	980a      	ldr	r0, [sp, #40]	; 0x28
 8004136:	f002 fd4b 	bl	8006bd0 <memchr>
 800413a:	2800      	cmp	r0, #0
 800413c:	f000 84ae 	beq.w	8004a9c <_vfprintf_r+0x108c>
 8004140:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004142:	9504      	str	r5, [sp, #16]
 8004144:	1ac3      	subs	r3, r0, r3
 8004146:	9308      	str	r3, [sp, #32]
 8004148:	9409      	str	r4, [sp, #36]	; 0x24
 800414a:	f8cd 8008 	str.w	r8, [sp, #8]
 800414e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004152:	9303      	str	r3, [sp, #12]
 8004154:	950b      	str	r5, [sp, #44]	; 0x2c
 8004156:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 800415a:	e616      	b.n	8003d8a <_vfprintf_r+0x37a>
 800415c:	2a00      	cmp	r2, #0
 800415e:	f040 86bc 	bne.w	8004eda <_vfprintf_r+0x14ca>
 8004162:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004164:	f018 0f20 	tst.w	r8, #32
 8004168:	f852 3b04 	ldr.w	r3, [r2], #4
 800416c:	9209      	str	r2, [sp, #36]	; 0x24
 800416e:	f000 83a2 	beq.w	80048b6 <_vfprintf_r+0xea6>
 8004172:	9a05      	ldr	r2, [sp, #20]
 8004174:	4610      	mov	r0, r2
 8004176:	17d1      	asrs	r1, r2, #31
 8004178:	e9c3 0100 	strd	r0, r1, [r3]
 800417c:	e491      	b.n	8003aa2 <_vfprintf_r+0x92>
 800417e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004180:	f89a 6000 	ldrb.w	r6, [sl]
 8004184:	6818      	ldr	r0, [r3, #0]
 8004186:	9007      	str	r0, [sp, #28]
 8004188:	2800      	cmp	r0, #0
 800418a:	f103 0304 	add.w	r3, r3, #4
 800418e:	f2c0 845d 	blt.w	8004a4c <_vfprintf_r+0x103c>
 8004192:	9309      	str	r3, [sp, #36]	; 0x24
 8004194:	e4ba      	b.n	8003b0c <_vfprintf_r+0xfc>
 8004196:	f89a 6000 	ldrb.w	r6, [sl]
 800419a:	2201      	movs	r2, #1
 800419c:	212b      	movs	r1, #43	; 0x2b
 800419e:	e4b5      	b.n	8003b0c <_vfprintf_r+0xfc>
 80041a0:	2a00      	cmp	r2, #0
 80041a2:	f040 869e 	bne.w	8004ee2 <_vfprintf_r+0x14d2>
 80041a6:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80041a8:	3407      	adds	r4, #7
 80041aa:	f024 0407 	bic.w	r4, r4, #7
 80041ae:	ed94 7b00 	vldr	d7, [r4]
 80041b2:	ec52 1b17 	vmov	r1, r2, d7
 80041b6:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80041ba:	9313      	str	r3, [sp, #76]	; 0x4c
 80041bc:	ed8d 7a12 	vstr	s14, [sp, #72]	; 0x48
 80041c0:	3408      	adds	r4, #8
 80041c2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80041c6:	f04f 32ff 	mov.w	r2, #4294967295
 80041ca:	4b80      	ldr	r3, [pc, #512]	; (80043cc <_vfprintf_r+0x9bc>)
 80041cc:	9409      	str	r4, [sp, #36]	; 0x24
 80041ce:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 80041d2:	f004 fc19 	bl	8008a08 <__aeabi_dcmpun>
 80041d6:	2800      	cmp	r0, #0
 80041d8:	f040 837c 	bne.w	80048d4 <_vfprintf_r+0xec4>
 80041dc:	f04f 32ff 	mov.w	r2, #4294967295
 80041e0:	4b7a      	ldr	r3, [pc, #488]	; (80043cc <_vfprintf_r+0x9bc>)
 80041e2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80041e6:	f004 fbf1 	bl	80089cc <__aeabi_dcmple>
 80041ea:	2800      	cmp	r0, #0
 80041ec:	f040 8372 	bne.w	80048d4 <_vfprintf_r+0xec4>
 80041f0:	2200      	movs	r2, #0
 80041f2:	2300      	movs	r3, #0
 80041f4:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80041f8:	f004 fbde 	bl	80089b8 <__aeabi_dcmplt>
 80041fc:	2800      	cmp	r0, #0
 80041fe:	f040 8429 	bne.w	8004a54 <_vfprintf_r+0x1044>
 8004202:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8004206:	4a72      	ldr	r2, [pc, #456]	; (80043d0 <_vfprintf_r+0x9c0>)
 8004208:	4b72      	ldr	r3, [pc, #456]	; (80043d4 <_vfprintf_r+0x9c4>)
 800420a:	2103      	movs	r1, #3
 800420c:	2000      	movs	r0, #0
 800420e:	f028 0480 	bic.w	r4, r8, #128	; 0x80
 8004212:	2e47      	cmp	r6, #71	; 0x47
 8004214:	bfd8      	it	le
 8004216:	461a      	movle	r2, r3
 8004218:	e9cd 1003 	strd	r1, r0, [sp, #12]
 800421c:	9402      	str	r4, [sp, #8]
 800421e:	920a      	str	r2, [sp, #40]	; 0x28
 8004220:	9108      	str	r1, [sp, #32]
 8004222:	900b      	str	r0, [sp, #44]	; 0x2c
 8004224:	e5b1      	b.n	8003d8a <_vfprintf_r+0x37a>
 8004226:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004228:	4b67      	ldr	r3, [pc, #412]	; (80043c8 <_vfprintf_r+0x9b8>)
 800422a:	6814      	ldr	r4, [r2, #0]
 800422c:	9311      	str	r3, [sp, #68]	; 0x44
 800422e:	3204      	adds	r2, #4
 8004230:	f647 0330 	movw	r3, #30768	; 0x7830
 8004234:	f8ad 3068 	strh.w	r3, [sp, #104]	; 0x68
 8004238:	f048 0802 	orr.w	r8, r8, #2
 800423c:	9209      	str	r2, [sp, #36]	; 0x24
 800423e:	2500      	movs	r5, #0
 8004240:	2302      	movs	r3, #2
 8004242:	2678      	movs	r6, #120	; 0x78
 8004244:	e6f5      	b.n	8004032 <_vfprintf_r+0x622>
 8004246:	f048 0820 	orr.w	r8, r8, #32
 800424a:	f89a 6000 	ldrb.w	r6, [sl]
 800424e:	e45d      	b.n	8003b0c <_vfprintf_r+0xfc>
 8004250:	f048 0808 	orr.w	r8, r8, #8
 8004254:	f89a 6000 	ldrb.w	r6, [sl]
 8004258:	e458      	b.n	8003b0c <_vfprintf_r+0xfc>
 800425a:	f89a 6000 	ldrb.w	r6, [sl]
 800425e:	2e2a      	cmp	r6, #42	; 0x2a
 8004260:	f10a 0001 	add.w	r0, sl, #1
 8004264:	f000 860d 	beq.w	8004e82 <_vfprintf_r+0x1472>
 8004268:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800426c:	2b09      	cmp	r3, #9
 800426e:	4682      	mov	sl, r0
 8004270:	f200 8507 	bhi.w	8004c82 <_vfprintf_r+0x1272>
 8004274:	2000      	movs	r0, #0
 8004276:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800427a:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800427e:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8004282:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004286:	2b09      	cmp	r3, #9
 8004288:	d9f5      	bls.n	8004276 <_vfprintf_r+0x866>
 800428a:	9004      	str	r0, [sp, #16]
 800428c:	e440      	b.n	8003b10 <_vfprintf_r+0x100>
 800428e:	2a00      	cmp	r2, #0
 8004290:	f040 861f 	bne.w	8004ed2 <_vfprintf_r+0x14c2>
 8004294:	f048 0810 	orr.w	r8, r8, #16
 8004298:	f018 0f20 	tst.w	r8, #32
 800429c:	f47f ad3f 	bne.w	8003d1e <_vfprintf_r+0x30e>
 80042a0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042a2:	f018 0f10 	tst.w	r8, #16
 80042a6:	f853 4b04 	ldr.w	r4, [r3], #4
 80042aa:	9309      	str	r3, [sp, #36]	; 0x24
 80042ac:	f040 8210 	bne.w	80046d0 <_vfprintf_r+0xcc0>
 80042b0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80042b4:	f000 820c 	beq.w	80046d0 <_vfprintf_r+0xcc0>
 80042b8:	b224      	sxth	r4, r4
 80042ba:	17e5      	asrs	r5, r4, #31
 80042bc:	e538      	b.n	8003d30 <_vfprintf_r+0x320>
 80042be:	f89a 6000 	ldrb.w	r6, [sl]
 80042c2:	f048 0804 	orr.w	r8, r8, #4
 80042c6:	e421      	b.n	8003b0c <_vfprintf_r+0xfc>
 80042c8:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80042ca:	3407      	adds	r4, #7
 80042cc:	f024 0307 	bic.w	r3, r4, #7
 80042d0:	f103 0208 	add.w	r2, r3, #8
 80042d4:	e9d3 4500 	ldrd	r4, r5, [r3]
 80042d8:	9209      	str	r2, [sp, #36]	; 0x24
 80042da:	2300      	movs	r3, #0
 80042dc:	e6a9      	b.n	8004032 <_vfprintf_r+0x622>
 80042de:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80042e0:	3407      	adds	r4, #7
 80042e2:	f024 0307 	bic.w	r3, r4, #7
 80042e6:	f103 0208 	add.w	r2, r3, #8
 80042ea:	e9d3 4500 	ldrd	r4, r5, [r3]
 80042ee:	9209      	str	r2, [sp, #36]	; 0x24
 80042f0:	2301      	movs	r3, #1
 80042f2:	e69e      	b.n	8004032 <_vfprintf_r+0x622>
 80042f4:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 80042f8:	f002 f948 	bl	800658c <__retarget_lock_release_recursive>
 80042fc:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8004300:	e4e3      	b.n	8003cca <_vfprintf_r+0x2ba>
 8004302:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8004306:	f002 f941 	bl	800658c <__retarget_lock_release_recursive>
 800430a:	f04f 33ff 	mov.w	r3, #4294967295
 800430e:	9305      	str	r3, [sp, #20]
 8004310:	e4dd      	b.n	8003cce <_vfprintf_r+0x2be>
 8004312:	2a00      	cmp	r2, #0
 8004314:	f040 85f1 	bne.w	8004efa <_vfprintf_r+0x14ea>
 8004318:	2e00      	cmp	r6, #0
 800431a:	f43f ae4a 	beq.w	8003fb2 <_vfprintf_r+0x5a2>
 800431e:	2300      	movs	r3, #0
 8004320:	2201      	movs	r2, #1
 8004322:	461f      	mov	r7, r3
 8004324:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8004328:	9304      	str	r3, [sp, #16]
 800432a:	930b      	str	r3, [sp, #44]	; 0x2c
 800432c:	ab24      	add	r3, sp, #144	; 0x90
 800432e:	9203      	str	r2, [sp, #12]
 8004330:	f88d 6090 	strb.w	r6, [sp, #144]	; 0x90
 8004334:	f8cd 8008 	str.w	r8, [sp, #8]
 8004338:	9208      	str	r2, [sp, #32]
 800433a:	930a      	str	r3, [sp, #40]	; 0x28
 800433c:	e529      	b.n	8003d92 <_vfprintf_r+0x382>
 800433e:	2e65      	cmp	r6, #101	; 0x65
 8004340:	f340 80a4 	ble.w	800448c <_vfprintf_r+0xa7c>
 8004344:	2200      	movs	r2, #0
 8004346:	2300      	movs	r3, #0
 8004348:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800434c:	f004 fb2a 	bl	80089a4 <__aeabi_dcmpeq>
 8004350:	2800      	cmp	r0, #0
 8004352:	f000 8145 	beq.w	80045e0 <_vfprintf_r+0xbd0>
 8004356:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8004358:	4a1f      	ldr	r2, [pc, #124]	; (80043d8 <_vfprintf_r+0x9c8>)
 800435a:	f8c9 2000 	str.w	r2, [r9]
 800435e:	3301      	adds	r3, #1
 8004360:	3401      	adds	r4, #1
 8004362:	2201      	movs	r2, #1
 8004364:	2b07      	cmp	r3, #7
 8004366:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 800436a:	f8c9 2004 	str.w	r2, [r9, #4]
 800436e:	f300 8362 	bgt.w	8004a36 <_vfprintf_r+0x1026>
 8004372:	f109 0908 	add.w	r9, r9, #8
 8004376:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004378:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800437a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800437c:	4293      	cmp	r3, r2
 800437e:	db03      	blt.n	8004388 <_vfprintf_r+0x978>
 8004380:	9b02      	ldr	r3, [sp, #8]
 8004382:	07d8      	lsls	r0, r3, #31
 8004384:	f57f adc4 	bpl.w	8003f10 <_vfprintf_r+0x500>
 8004388:	9b22      	ldr	r3, [sp, #136]	; 0x88
 800438a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800438c:	f8c9 2000 	str.w	r2, [r9]
 8004390:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004392:	f8c9 2004 	str.w	r2, [r9, #4]
 8004396:	3301      	adds	r3, #1
 8004398:	4414      	add	r4, r2
 800439a:	2b07      	cmp	r3, #7
 800439c:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 80043a0:	f300 839d 	bgt.w	8004ade <_vfprintf_r+0x10ce>
 80043a4:	f109 0908 	add.w	r9, r9, #8
 80043a8:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80043aa:	1e5d      	subs	r5, r3, #1
 80043ac:	2d00      	cmp	r5, #0
 80043ae:	f77f adaf 	ble.w	8003f10 <_vfprintf_r+0x500>
 80043b2:	2d10      	cmp	r5, #16
 80043b4:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80043b6:	f8df 8024 	ldr.w	r8, [pc, #36]	; 80043dc <_vfprintf_r+0x9cc>
 80043ba:	f340 8250 	ble.w	800485e <_vfprintf_r+0xe4e>
 80043be:	4647      	mov	r7, r8
 80043c0:	2610      	movs	r6, #16
 80043c2:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80043c6:	e011      	b.n	80043ec <_vfprintf_r+0x9dc>
 80043c8:	08009640 	.word	0x08009640
 80043cc:	7fefffff 	.word	0x7fefffff
 80043d0:	08009620 	.word	0x08009620
 80043d4:	0800961c 	.word	0x0800961c
 80043d8:	0800965c 	.word	0x0800965c
 80043dc:	08009670 	.word	0x08009670
 80043e0:	f109 0908 	add.w	r9, r9, #8
 80043e4:	3d10      	subs	r5, #16
 80043e6:	2d10      	cmp	r5, #16
 80043e8:	f340 8238 	ble.w	800485c <_vfprintf_r+0xe4c>
 80043ec:	3201      	adds	r2, #1
 80043ee:	3410      	adds	r4, #16
 80043f0:	2a07      	cmp	r2, #7
 80043f2:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80043f6:	e9c9 7600 	strd	r7, r6, [r9]
 80043fa:	ddf1      	ble.n	80043e0 <_vfprintf_r+0x9d0>
 80043fc:	aa21      	add	r2, sp, #132	; 0x84
 80043fe:	4659      	mov	r1, fp
 8004400:	4640      	mov	r0, r8
 8004402:	f003 f867 	bl	80074d4 <__sprint_r>
 8004406:	2800      	cmp	r0, #0
 8004408:	f47f ac55 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 800440c:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004410:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004414:	e7e6      	b.n	80043e4 <_vfprintf_r+0x9d4>
 8004416:	9b07      	ldr	r3, [sp, #28]
 8004418:	9a03      	ldr	r2, [sp, #12]
 800441a:	1a9d      	subs	r5, r3, r2
 800441c:	2d00      	cmp	r5, #0
 800441e:	f77f ad2a 	ble.w	8003e76 <_vfprintf_r+0x466>
 8004422:	2d10      	cmp	r5, #16
 8004424:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004426:	f8df 886c 	ldr.w	r8, [pc, #2156]	; 8004c94 <_vfprintf_r+0x1284>
 800442a:	dd23      	ble.n	8004474 <_vfprintf_r+0xa64>
 800442c:	4623      	mov	r3, r4
 800442e:	2710      	movs	r7, #16
 8004430:	4644      	mov	r4, r8
 8004432:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004436:	e004      	b.n	8004442 <_vfprintf_r+0xa32>
 8004438:	3d10      	subs	r5, #16
 800443a:	2d10      	cmp	r5, #16
 800443c:	f109 0908 	add.w	r9, r9, #8
 8004440:	dd16      	ble.n	8004470 <_vfprintf_r+0xa60>
 8004442:	3201      	adds	r2, #1
 8004444:	3310      	adds	r3, #16
 8004446:	2a07      	cmp	r2, #7
 8004448:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 800444c:	e9c9 4700 	strd	r4, r7, [r9]
 8004450:	ddf2      	ble.n	8004438 <_vfprintf_r+0xa28>
 8004452:	aa21      	add	r2, sp, #132	; 0x84
 8004454:	4659      	mov	r1, fp
 8004456:	4640      	mov	r0, r8
 8004458:	f003 f83c 	bl	80074d4 <__sprint_r>
 800445c:	2800      	cmp	r0, #0
 800445e:	f47f ac2a 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004462:	3d10      	subs	r5, #16
 8004464:	2d10      	cmp	r5, #16
 8004466:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 800446a:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800446e:	dce8      	bgt.n	8004442 <_vfprintf_r+0xa32>
 8004470:	46a0      	mov	r8, r4
 8004472:	461c      	mov	r4, r3
 8004474:	3201      	adds	r2, #1
 8004476:	442c      	add	r4, r5
 8004478:	2a07      	cmp	r2, #7
 800447a:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800447e:	e9c9 8500 	strd	r8, r5, [r9]
 8004482:	f300 8296 	bgt.w	80049b2 <_vfprintf_r+0xfa2>
 8004486:	f109 0908 	add.w	r9, r9, #8
 800448a:	e4f4      	b.n	8003e76 <_vfprintf_r+0x466>
 800448c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800448e:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8004490:	2a01      	cmp	r2, #1
 8004492:	f104 0401 	add.w	r4, r4, #1
 8004496:	f103 0501 	add.w	r5, r3, #1
 800449a:	f109 0608 	add.w	r6, r9, #8
 800449e:	f340 8127 	ble.w	80046f0 <_vfprintf_r+0xce0>
 80044a2:	2301      	movs	r3, #1
 80044a4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80044a6:	f8c9 2000 	str.w	r2, [r9]
 80044aa:	2d07      	cmp	r5, #7
 80044ac:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 80044b0:	f8c9 3004 	str.w	r3, [r9, #4]
 80044b4:	f300 81b6 	bgt.w	8004824 <_vfprintf_r+0xe14>
 80044b8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80044ba:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80044bc:	3501      	adds	r5, #1
 80044be:	441c      	add	r4, r3
 80044c0:	2d07      	cmp	r5, #7
 80044c2:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 80044c6:	e9c6 2300 	strd	r2, r3, [r6]
 80044ca:	f300 81b7 	bgt.w	800483c <_vfprintf_r+0xe2c>
 80044ce:	3608      	adds	r6, #8
 80044d0:	1c6b      	adds	r3, r5, #1
 80044d2:	461f      	mov	r7, r3
 80044d4:	9704      	str	r7, [sp, #16]
 80044d6:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 80044d8:	9308      	str	r3, [sp, #32]
 80044da:	2200      	movs	r2, #0
 80044dc:	2300      	movs	r3, #0
 80044de:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80044e2:	3f01      	subs	r7, #1
 80044e4:	f106 0908 	add.w	r9, r6, #8
 80044e8:	f004 fa5c 	bl	80089a4 <__aeabi_dcmpeq>
 80044ec:	2800      	cmp	r0, #0
 80044ee:	f040 80c6 	bne.w	800467e <_vfprintf_r+0xc6e>
 80044f2:	443c      	add	r4, r7
 80044f4:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044f6:	6077      	str	r7, [r6, #4]
 80044f8:	9f04      	ldr	r7, [sp, #16]
 80044fa:	9423      	str	r4, [sp, #140]	; 0x8c
 80044fc:	3301      	adds	r3, #1
 80044fe:	2f07      	cmp	r7, #7
 8004500:	6033      	str	r3, [r6, #0]
 8004502:	9722      	str	r7, [sp, #136]	; 0x88
 8004504:	f300 8107 	bgt.w	8004716 <_vfprintf_r+0xd06>
 8004508:	f106 0310 	add.w	r3, r6, #16
 800450c:	1caa      	adds	r2, r5, #2
 800450e:	464e      	mov	r6, r9
 8004510:	9204      	str	r2, [sp, #16]
 8004512:	4699      	mov	r9, r3
 8004514:	9a14      	ldr	r2, [sp, #80]	; 0x50
 8004516:	6072      	str	r2, [r6, #4]
 8004518:	4414      	add	r4, r2
 800451a:	9a04      	ldr	r2, [sp, #16]
 800451c:	9423      	str	r4, [sp, #140]	; 0x8c
 800451e:	ab1d      	add	r3, sp, #116	; 0x74
 8004520:	2a07      	cmp	r2, #7
 8004522:	9222      	str	r2, [sp, #136]	; 0x88
 8004524:	6033      	str	r3, [r6, #0]
 8004526:	f77f acf3 	ble.w	8003f10 <_vfprintf_r+0x500>
 800452a:	aa21      	add	r2, sp, #132	; 0x84
 800452c:	4659      	mov	r1, fp
 800452e:	9806      	ldr	r0, [sp, #24]
 8004530:	f002 ffd0 	bl	80074d4 <__sprint_r>
 8004534:	2800      	cmp	r0, #0
 8004536:	f47f abbe 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 800453a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800453c:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004540:	e4e6      	b.n	8003f10 <_vfprintf_r+0x500>
 8004542:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
 8004546:	aa2e      	add	r2, sp, #184	; 0xb8
 8004548:	0923      	lsrs	r3, r4, #4
 800454a:	f004 000f 	and.w	r0, r4, #15
 800454e:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8004552:	0929      	lsrs	r1, r5, #4
 8004554:	461c      	mov	r4, r3
 8004556:	460d      	mov	r5, r1
 8004558:	f81c 3000 	ldrb.w	r3, [ip, r0]
 800455c:	f802 3d01 	strb.w	r3, [r2, #-1]!
 8004560:	ea54 0305 	orrs.w	r3, r4, r5
 8004564:	d1f0      	bne.n	8004548 <_vfprintf_r+0xb38>
 8004566:	920a      	str	r2, [sp, #40]	; 0x28
 8004568:	ab2e      	add	r3, sp, #184	; 0xb8
 800456a:	1a9b      	subs	r3, r3, r2
 800456c:	9308      	str	r3, [sp, #32]
 800456e:	e404      	b.n	8003d7a <_vfprintf_r+0x36a>
 8004570:	aa21      	add	r2, sp, #132	; 0x84
 8004572:	4659      	mov	r1, fp
 8004574:	9806      	ldr	r0, [sp, #24]
 8004576:	9315      	str	r3, [sp, #84]	; 0x54
 8004578:	f002 ffac 	bl	80074d4 <__sprint_r>
 800457c:	2800      	cmp	r0, #0
 800457e:	f47f ab9a 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004582:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004584:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004586:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800458a:	e461      	b.n	8003e50 <_vfprintf_r+0x440>
 800458c:	aa21      	add	r2, sp, #132	; 0x84
 800458e:	4659      	mov	r1, fp
 8004590:	9806      	ldr	r0, [sp, #24]
 8004592:	f002 ff9f 	bl	80074d4 <__sprint_r>
 8004596:	2800      	cmp	r0, #0
 8004598:	f47f ab8d 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 800459c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800459e:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80045a2:	e464      	b.n	8003e6e <_vfprintf_r+0x45e>
 80045a4:	f8cd 8008 	str.w	r8, [sp, #8]
 80045a8:	2d00      	cmp	r5, #0
 80045aa:	bf08      	it	eq
 80045ac:	2c0a      	cmpeq	r4, #10
 80045ae:	f080 8160 	bcs.w	8004872 <_vfprintf_r+0xe62>
 80045b2:	ab3e      	add	r3, sp, #248	; 0xf8
 80045b4:	3430      	adds	r4, #48	; 0x30
 80045b6:	f803 4d41 	strb.w	r4, [r3, #-65]!
 80045ba:	930a      	str	r3, [sp, #40]	; 0x28
 80045bc:	2301      	movs	r3, #1
 80045be:	9308      	str	r3, [sp, #32]
 80045c0:	f7ff bbdb 	b.w	8003d7a <_vfprintf_r+0x36a>
 80045c4:	2302      	movs	r3, #2
 80045c6:	e534      	b.n	8004032 <_vfprintf_r+0x622>
 80045c8:	aa21      	add	r2, sp, #132	; 0x84
 80045ca:	4659      	mov	r1, fp
 80045cc:	9806      	ldr	r0, [sp, #24]
 80045ce:	f002 ff81 	bl	80074d4 <__sprint_r>
 80045d2:	2800      	cmp	r0, #0
 80045d4:	f47f ab6f 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 80045d8:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80045da:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80045de:	e483      	b.n	8003ee8 <_vfprintf_r+0x4d8>
 80045e0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80045e2:	2b00      	cmp	r3, #0
 80045e4:	f340 81f2 	ble.w	80049cc <_vfprintf_r+0xfbc>
 80045e8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80045ea:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80045ec:	4293      	cmp	r3, r2
 80045ee:	bfa8      	it	ge
 80045f0:	4613      	movge	r3, r2
 80045f2:	2b00      	cmp	r3, #0
 80045f4:	461d      	mov	r5, r3
 80045f6:	dd0e      	ble.n	8004616 <_vfprintf_r+0xc06>
 80045f8:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80045fa:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80045fc:	f8c9 2000 	str.w	r2, [r9]
 8004600:	3301      	adds	r3, #1
 8004602:	442c      	add	r4, r5
 8004604:	2b07      	cmp	r3, #7
 8004606:	9423      	str	r4, [sp, #140]	; 0x8c
 8004608:	f8c9 5004 	str.w	r5, [r9, #4]
 800460c:	9322      	str	r3, [sp, #136]	; 0x88
 800460e:	f300 82f3 	bgt.w	8004bf8 <_vfprintf_r+0x11e8>
 8004612:	f109 0908 	add.w	r9, r9, #8
 8004616:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004618:	2d00      	cmp	r5, #0
 800461a:	bfa8      	it	ge
 800461c:	1b5b      	subge	r3, r3, r5
 800461e:	2b00      	cmp	r3, #0
 8004620:	461d      	mov	r5, r3
 8004622:	f340 80a4 	ble.w	800476e <_vfprintf_r+0xd5e>
 8004626:	2b10      	cmp	r3, #16
 8004628:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800462a:	f8df 8668 	ldr.w	r8, [pc, #1640]	; 8004c94 <_vfprintf_r+0x1284>
 800462e:	f340 8273 	ble.w	8004b18 <_vfprintf_r+0x1108>
 8004632:	4647      	mov	r7, r8
 8004634:	2610      	movs	r6, #16
 8004636:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800463a:	e005      	b.n	8004648 <_vfprintf_r+0xc38>
 800463c:	f109 0908 	add.w	r9, r9, #8
 8004640:	3d10      	subs	r5, #16
 8004642:	2d10      	cmp	r5, #16
 8004644:	f340 8267 	ble.w	8004b16 <_vfprintf_r+0x1106>
 8004648:	3201      	adds	r2, #1
 800464a:	3410      	adds	r4, #16
 800464c:	2a07      	cmp	r2, #7
 800464e:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004652:	e9c9 7600 	strd	r7, r6, [r9]
 8004656:	ddf1      	ble.n	800463c <_vfprintf_r+0xc2c>
 8004658:	aa21      	add	r2, sp, #132	; 0x84
 800465a:	4659      	mov	r1, fp
 800465c:	4640      	mov	r0, r8
 800465e:	f002 ff39 	bl	80074d4 <__sprint_r>
 8004662:	2800      	cmp	r0, #0
 8004664:	f47f ab27 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004668:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 800466c:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004670:	e7e6      	b.n	8004640 <_vfprintf_r+0xc30>
 8004672:	9b04      	ldr	r3, [sp, #16]
 8004674:	9308      	str	r3, [sp, #32]
 8004676:	ab2e      	add	r3, sp, #184	; 0xb8
 8004678:	930a      	str	r3, [sp, #40]	; 0x28
 800467a:	f7ff bb7e 	b.w	8003d7a <_vfprintf_r+0x36a>
 800467e:	2f00      	cmp	r7, #0
 8004680:	f77f af48 	ble.w	8004514 <_vfprintf_r+0xb04>
 8004684:	2f10      	cmp	r7, #16
 8004686:	f8df 860c 	ldr.w	r8, [pc, #1548]	; 8004c94 <_vfprintf_r+0x1284>
 800468a:	f340 83f5 	ble.w	8004e78 <_vfprintf_r+0x1468>
 800468e:	4623      	mov	r3, r4
 8004690:	f04f 0910 	mov.w	r9, #16
 8004694:	4644      	mov	r4, r8
 8004696:	9d08      	ldr	r5, [sp, #32]
 8004698:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800469c:	e005      	b.n	80046aa <_vfprintf_r+0xc9a>
 800469e:	3608      	adds	r6, #8
 80046a0:	3f10      	subs	r7, #16
 80046a2:	2f10      	cmp	r7, #16
 80046a4:	f340 8206 	ble.w	8004ab4 <_vfprintf_r+0x10a4>
 80046a8:	3501      	adds	r5, #1
 80046aa:	3310      	adds	r3, #16
 80046ac:	2d07      	cmp	r5, #7
 80046ae:	e9cd 5322 	strd	r5, r3, [sp, #136]	; 0x88
 80046b2:	e9c6 4900 	strd	r4, r9, [r6]
 80046b6:	ddf2      	ble.n	800469e <_vfprintf_r+0xc8e>
 80046b8:	aa21      	add	r2, sp, #132	; 0x84
 80046ba:	4659      	mov	r1, fp
 80046bc:	4640      	mov	r0, r8
 80046be:	f002 ff09 	bl	80074d4 <__sprint_r>
 80046c2:	2800      	cmp	r0, #0
 80046c4:	f47f aaf7 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 80046c8:	e9dd 5322 	ldrd	r5, r3, [sp, #136]	; 0x88
 80046cc:	ae2e      	add	r6, sp, #184	; 0xb8
 80046ce:	e7e7      	b.n	80046a0 <_vfprintf_r+0xc90>
 80046d0:	17e5      	asrs	r5, r4, #31
 80046d2:	2c00      	cmp	r4, #0
 80046d4:	f175 0300 	sbcs.w	r3, r5, #0
 80046d8:	f6bf ab2f 	bge.w	8003d3a <_vfprintf_r+0x32a>
 80046dc:	272d      	movs	r7, #45	; 0x2d
 80046de:	4264      	negs	r4, r4
 80046e0:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80046e4:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 80046e8:	f7ff bb29 	b.w	8003d3e <_vfprintf_r+0x32e>
 80046ec:	2500      	movs	r5, #0
 80046ee:	e490      	b.n	8004012 <_vfprintf_r+0x602>
 80046f0:	9a02      	ldr	r2, [sp, #8]
 80046f2:	07d7      	lsls	r7, r2, #31
 80046f4:	f53f aed5 	bmi.w	80044a2 <_vfprintf_r+0xa92>
 80046f8:	2201      	movs	r2, #1
 80046fa:	990a      	ldr	r1, [sp, #40]	; 0x28
 80046fc:	f8c9 1000 	str.w	r1, [r9]
 8004700:	2d07      	cmp	r5, #7
 8004702:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 8004706:	f8c9 2004 	str.w	r2, [r9, #4]
 800470a:	dc04      	bgt.n	8004716 <_vfprintf_r+0xd06>
 800470c:	3302      	adds	r3, #2
 800470e:	9304      	str	r3, [sp, #16]
 8004710:	f109 0910 	add.w	r9, r9, #16
 8004714:	e6fe      	b.n	8004514 <_vfprintf_r+0xb04>
 8004716:	aa21      	add	r2, sp, #132	; 0x84
 8004718:	4659      	mov	r1, fp
 800471a:	9806      	ldr	r0, [sp, #24]
 800471c:	f002 feda 	bl	80074d4 <__sprint_r>
 8004720:	2800      	cmp	r0, #0
 8004722:	f47f aac8 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004726:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 800472a:	3301      	adds	r3, #1
 800472c:	9304      	str	r3, [sp, #16]
 800472e:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8004732:	ae2e      	add	r6, sp, #184	; 0xb8
 8004734:	e6ee      	b.n	8004514 <_vfprintf_r+0xb04>
 8004736:	aa21      	add	r2, sp, #132	; 0x84
 8004738:	4659      	mov	r1, fp
 800473a:	9806      	ldr	r0, [sp, #24]
 800473c:	9315      	str	r3, [sp, #84]	; 0x54
 800473e:	f002 fec9 	bl	80074d4 <__sprint_r>
 8004742:	2800      	cmp	r0, #0
 8004744:	f47f aab7 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004748:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 800474c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800474e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004750:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004754:	f7ff bb6c 	b.w	8003e30 <_vfprintf_r+0x420>
 8004758:	aa21      	add	r2, sp, #132	; 0x84
 800475a:	4659      	mov	r1, fp
 800475c:	9806      	ldr	r0, [sp, #24]
 800475e:	f002 feb9 	bl	80074d4 <__sprint_r>
 8004762:	2800      	cmp	r0, #0
 8004764:	f47f aaa7 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004768:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800476a:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800476e:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004770:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004772:	4293      	cmp	r3, r2
 8004774:	db02      	blt.n	800477c <_vfprintf_r+0xd6c>
 8004776:	9a02      	ldr	r2, [sp, #8]
 8004778:	07d2      	lsls	r2, r2, #31
 800477a:	d50f      	bpl.n	800479c <_vfprintf_r+0xd8c>
 800477c:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800477e:	9910      	ldr	r1, [sp, #64]	; 0x40
 8004780:	f8c9 1000 	str.w	r1, [r9]
 8004784:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004786:	f8c9 1004 	str.w	r1, [r9, #4]
 800478a:	3201      	adds	r2, #1
 800478c:	440c      	add	r4, r1
 800478e:	2a07      	cmp	r2, #7
 8004790:	9423      	str	r4, [sp, #140]	; 0x8c
 8004792:	9222      	str	r2, [sp, #136]	; 0x88
 8004794:	f300 823c 	bgt.w	8004c10 <_vfprintf_r+0x1200>
 8004798:	f109 0908 	add.w	r9, r9, #8
 800479c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800479e:	980b      	ldr	r0, [sp, #44]	; 0x2c
 80047a0:	1ad3      	subs	r3, r2, r3
 80047a2:	1a15      	subs	r5, r2, r0
 80047a4:	429d      	cmp	r5, r3
 80047a6:	bfa8      	it	ge
 80047a8:	461d      	movge	r5, r3
 80047aa:	2d00      	cmp	r5, #0
 80047ac:	dd0f      	ble.n	80047ce <_vfprintf_r+0xdbe>
 80047ae:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80047b0:	990a      	ldr	r1, [sp, #40]	; 0x28
 80047b2:	f8c9 5004 	str.w	r5, [r9, #4]
 80047b6:	3201      	adds	r2, #1
 80047b8:	4401      	add	r1, r0
 80047ba:	442c      	add	r4, r5
 80047bc:	2a07      	cmp	r2, #7
 80047be:	f8c9 1000 	str.w	r1, [r9]
 80047c2:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80047c6:	f300 8157 	bgt.w	8004a78 <_vfprintf_r+0x1068>
 80047ca:	f109 0908 	add.w	r9, r9, #8
 80047ce:	2d00      	cmp	r5, #0
 80047d0:	bfac      	ite	ge
 80047d2:	1b5d      	subge	r5, r3, r5
 80047d4:	461d      	movlt	r5, r3
 80047d6:	2d00      	cmp	r5, #0
 80047d8:	f77f ab9a 	ble.w	8003f10 <_vfprintf_r+0x500>
 80047dc:	2d10      	cmp	r5, #16
 80047de:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80047e0:	f8df 84b0 	ldr.w	r8, [pc, #1200]	; 8004c94 <_vfprintf_r+0x1284>
 80047e4:	dd3b      	ble.n	800485e <_vfprintf_r+0xe4e>
 80047e6:	4647      	mov	r7, r8
 80047e8:	2610      	movs	r6, #16
 80047ea:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80047ee:	e004      	b.n	80047fa <_vfprintf_r+0xdea>
 80047f0:	f109 0908 	add.w	r9, r9, #8
 80047f4:	3d10      	subs	r5, #16
 80047f6:	2d10      	cmp	r5, #16
 80047f8:	dd30      	ble.n	800485c <_vfprintf_r+0xe4c>
 80047fa:	3201      	adds	r2, #1
 80047fc:	3410      	adds	r4, #16
 80047fe:	2a07      	cmp	r2, #7
 8004800:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004804:	e9c9 7600 	strd	r7, r6, [r9]
 8004808:	ddf2      	ble.n	80047f0 <_vfprintf_r+0xde0>
 800480a:	aa21      	add	r2, sp, #132	; 0x84
 800480c:	4659      	mov	r1, fp
 800480e:	4640      	mov	r0, r8
 8004810:	f002 fe60 	bl	80074d4 <__sprint_r>
 8004814:	2800      	cmp	r0, #0
 8004816:	f47f aa4e 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 800481a:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 800481e:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004822:	e7e7      	b.n	80047f4 <_vfprintf_r+0xde4>
 8004824:	aa21      	add	r2, sp, #132	; 0x84
 8004826:	4659      	mov	r1, fp
 8004828:	9806      	ldr	r0, [sp, #24]
 800482a:	f002 fe53 	bl	80074d4 <__sprint_r>
 800482e:	2800      	cmp	r0, #0
 8004830:	f47f aa41 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004834:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8004838:	ae2e      	add	r6, sp, #184	; 0xb8
 800483a:	e63d      	b.n	80044b8 <_vfprintf_r+0xaa8>
 800483c:	aa21      	add	r2, sp, #132	; 0x84
 800483e:	4659      	mov	r1, fp
 8004840:	9806      	ldr	r0, [sp, #24]
 8004842:	f002 fe47 	bl	80074d4 <__sprint_r>
 8004846:	2800      	cmp	r0, #0
 8004848:	f47f aa35 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 800484c:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8004850:	ae2e      	add	r6, sp, #184	; 0xb8
 8004852:	e63d      	b.n	80044d0 <_vfprintf_r+0xac0>
 8004854:	2b01      	cmp	r3, #1
 8004856:	f47f abf8 	bne.w	800404a <_vfprintf_r+0x63a>
 800485a:	e6aa      	b.n	80045b2 <_vfprintf_r+0xba2>
 800485c:	46b8      	mov	r8, r7
 800485e:	3201      	adds	r2, #1
 8004860:	442c      	add	r4, r5
 8004862:	2a07      	cmp	r2, #7
 8004864:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004868:	e9c9 8500 	strd	r8, r5, [r9]
 800486c:	f77f ab4e 	ble.w	8003f0c <_vfprintf_r+0x4fc>
 8004870:	e65b      	b.n	800452a <_vfprintf_r+0xb1a>
 8004872:	ab2e      	add	r3, sp, #184	; 0xb8
 8004874:	4698      	mov	r8, r3
 8004876:	4620      	mov	r0, r4
 8004878:	4629      	mov	r1, r5
 800487a:	220a      	movs	r2, #10
 800487c:	2300      	movs	r3, #0
 800487e:	f7fe fe23 	bl	80034c8 <__aeabi_uldivmod>
 8004882:	3230      	adds	r2, #48	; 0x30
 8004884:	f808 2d01 	strb.w	r2, [r8, #-1]!
 8004888:	4620      	mov	r0, r4
 800488a:	4629      	mov	r1, r5
 800488c:	2300      	movs	r3, #0
 800488e:	220a      	movs	r2, #10
 8004890:	f7fe fe1a 	bl	80034c8 <__aeabi_uldivmod>
 8004894:	4604      	mov	r4, r0
 8004896:	460d      	mov	r5, r1
 8004898:	ea54 0305 	orrs.w	r3, r4, r5
 800489c:	d1eb      	bne.n	8004876 <_vfprintf_r+0xe66>
 800489e:	4642      	mov	r2, r8
 80048a0:	ab2e      	add	r3, sp, #184	; 0xb8
 80048a2:	1a9b      	subs	r3, r3, r2
 80048a4:	f8cd 8028 	str.w	r8, [sp, #40]	; 0x28
 80048a8:	9308      	str	r3, [sp, #32]
 80048aa:	f7ff ba66 	b.w	8003d7a <_vfprintf_r+0x36a>
 80048ae:	ab2e      	add	r3, sp, #184	; 0xb8
 80048b0:	930a      	str	r3, [sp, #40]	; 0x28
 80048b2:	f7ff ba62 	b.w	8003d7a <_vfprintf_r+0x36a>
 80048b6:	f018 0f10 	tst.w	r8, #16
 80048ba:	d107      	bne.n	80048cc <_vfprintf_r+0xebc>
 80048bc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80048c0:	d004      	beq.n	80048cc <_vfprintf_r+0xebc>
 80048c2:	f8bd 2014 	ldrh.w	r2, [sp, #20]
 80048c6:	801a      	strh	r2, [r3, #0]
 80048c8:	f7ff b8eb 	b.w	8003aa2 <_vfprintf_r+0x92>
 80048cc:	9a05      	ldr	r2, [sp, #20]
 80048ce:	601a      	str	r2, [r3, #0]
 80048d0:	f7ff b8e7 	b.w	8003aa2 <_vfprintf_r+0x92>
 80048d4:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80048d8:	4602      	mov	r2, r0
 80048da:	460b      	mov	r3, r1
 80048dc:	f004 f894 	bl	8008a08 <__aeabi_dcmpun>
 80048e0:	2800      	cmp	r0, #0
 80048e2:	f040 82ab 	bne.w	8004e3c <_vfprintf_r+0x142c>
 80048e6:	9b04      	ldr	r3, [sp, #16]
 80048e8:	1c5c      	adds	r4, r3, #1
 80048ea:	f026 0720 	bic.w	r7, r6, #32
 80048ee:	f000 80d2 	beq.w	8004a96 <_vfprintf_r+0x1086>
 80048f2:	2f47      	cmp	r7, #71	; 0x47
 80048f4:	d103      	bne.n	80048fe <_vfprintf_r+0xeee>
 80048f6:	2b00      	cmp	r3, #0
 80048f8:	bf08      	it	eq
 80048fa:	2301      	moveq	r3, #1
 80048fc:	9304      	str	r3, [sp, #16]
 80048fe:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004900:	f448 7280 	orr.w	r2, r8, #256	; 0x100
 8004904:	2b00      	cmp	r3, #0
 8004906:	9202      	str	r2, [sp, #8]
 8004908:	f2c0 819b 	blt.w	8004c42 <_vfprintf_r+0x1232>
 800490c:	ed9d 7b0c 	vldr	d7, [sp, #48]	; 0x30
 8004910:	ed8d 7b16 	vstr	d7, [sp, #88]	; 0x58
 8004914:	2300      	movs	r3, #0
 8004916:	9315      	str	r3, [sp, #84]	; 0x54
 8004918:	2e66      	cmp	r6, #102	; 0x66
 800491a:	f000 819b 	beq.w	8004c54 <_vfprintf_r+0x1244>
 800491e:	2e46      	cmp	r6, #70	; 0x46
 8004920:	f000 81f7 	beq.w	8004d12 <_vfprintf_r+0x1302>
 8004924:	2f45      	cmp	r7, #69	; 0x45
 8004926:	f000 81d8 	beq.w	8004cda <_vfprintf_r+0x12ca>
 800492a:	aa1f      	add	r2, sp, #124	; 0x7c
 800492c:	ab1c      	add	r3, sp, #112	; 0x70
 800492e:	e9cd 3200 	strd	r3, r2, [sp]
 8004932:	2102      	movs	r1, #2
 8004934:	ab1b      	add	r3, sp, #108	; 0x6c
 8004936:	9a04      	ldr	r2, [sp, #16]
 8004938:	9806      	ldr	r0, [sp, #24]
 800493a:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 800493e:	f000 fc37 	bl	80051b0 <_dtoa_r>
 8004942:	2e67      	cmp	r6, #103	; 0x67
 8004944:	900a      	str	r0, [sp, #40]	; 0x28
 8004946:	f040 82c2 	bne.w	8004ece <_vfprintf_r+0x14be>
 800494a:	f018 0f01 	tst.w	r8, #1
 800494e:	f000 80f5 	beq.w	8004b3c <_vfprintf_r+0x112c>
 8004952:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004954:	9a04      	ldr	r2, [sp, #16]
 8004956:	189c      	adds	r4, r3, r2
 8004958:	2200      	movs	r2, #0
 800495a:	2300      	movs	r3, #0
 800495c:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8004960:	f004 f820 	bl	80089a4 <__aeabi_dcmpeq>
 8004964:	2800      	cmp	r0, #0
 8004966:	f000 8160 	beq.w	8004c2a <_vfprintf_r+0x121a>
 800496a:	4623      	mov	r3, r4
 800496c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800496e:	1a9b      	subs	r3, r3, r2
 8004970:	930e      	str	r3, [sp, #56]	; 0x38
 8004972:	2f47      	cmp	r7, #71	; 0x47
 8004974:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004976:	930b      	str	r3, [sp, #44]	; 0x2c
 8004978:	f000 80e9 	beq.w	8004b4e <_vfprintf_r+0x113e>
 800497c:	2e66      	cmp	r6, #102	; 0x66
 800497e:	f040 80ed 	bne.w	8004b5c <_vfprintf_r+0x114c>
 8004982:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004984:	2b00      	cmp	r3, #0
 8004986:	9b04      	ldr	r3, [sp, #16]
 8004988:	f340 826e 	ble.w	8004e68 <_vfprintf_r+0x1458>
 800498c:	2b00      	cmp	r3, #0
 800498e:	f040 824b 	bne.w	8004e28 <_vfprintf_r+0x1418>
 8004992:	f018 0f01 	tst.w	r8, #1
 8004996:	f040 8247 	bne.w	8004e28 <_vfprintf_r+0x1418>
 800499a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800499c:	9303      	str	r3, [sp, #12]
 800499e:	9308      	str	r3, [sp, #32]
 80049a0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80049a2:	2b00      	cmp	r3, #0
 80049a4:	f040 8110 	bne.w	8004bc8 <_vfprintf_r+0x11b8>
 80049a8:	9304      	str	r3, [sp, #16]
 80049aa:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 80049ae:	f7ff b9ec 	b.w	8003d8a <_vfprintf_r+0x37a>
 80049b2:	aa21      	add	r2, sp, #132	; 0x84
 80049b4:	4659      	mov	r1, fp
 80049b6:	9806      	ldr	r0, [sp, #24]
 80049b8:	f002 fd8c 	bl	80074d4 <__sprint_r>
 80049bc:	2800      	cmp	r0, #0
 80049be:	f47f a97a 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 80049c2:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80049c4:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80049c8:	f7ff ba55 	b.w	8003e76 <_vfprintf_r+0x466>
 80049cc:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80049ce:	49af      	ldr	r1, [pc, #700]	; (8004c8c <_vfprintf_r+0x127c>)
 80049d0:	f8c9 1000 	str.w	r1, [r9]
 80049d4:	3201      	adds	r2, #1
 80049d6:	3401      	adds	r4, #1
 80049d8:	2101      	movs	r1, #1
 80049da:	2a07      	cmp	r2, #7
 80049dc:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80049e0:	f8c9 1004 	str.w	r1, [r9, #4]
 80049e4:	dc3b      	bgt.n	8004a5e <_vfprintf_r+0x104e>
 80049e6:	f109 0908 	add.w	r9, r9, #8
 80049ea:	b92b      	cbnz	r3, 80049f8 <_vfprintf_r+0xfe8>
 80049ec:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80049ee:	b91a      	cbnz	r2, 80049f8 <_vfprintf_r+0xfe8>
 80049f0:	9a02      	ldr	r2, [sp, #8]
 80049f2:	07d1      	lsls	r1, r2, #31
 80049f4:	f57f aa8c 	bpl.w	8003f10 <_vfprintf_r+0x500>
 80049f8:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80049fa:	9910      	ldr	r1, [sp, #64]	; 0x40
 80049fc:	f8c9 1000 	str.w	r1, [r9]
 8004a00:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004a02:	f8c9 1004 	str.w	r1, [r9, #4]
 8004a06:	3201      	adds	r2, #1
 8004a08:	440c      	add	r4, r1
 8004a0a:	2a07      	cmp	r2, #7
 8004a0c:	9423      	str	r4, [sp, #140]	; 0x8c
 8004a0e:	9222      	str	r2, [sp, #136]	; 0x88
 8004a10:	f300 8142 	bgt.w	8004c98 <_vfprintf_r+0x1288>
 8004a14:	f109 0908 	add.w	r9, r9, #8
 8004a18:	2b00      	cmp	r3, #0
 8004a1a:	f2c0 8193 	blt.w	8004d44 <_vfprintf_r+0x1334>
 8004a1e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a20:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004a22:	3201      	adds	r2, #1
 8004a24:	441c      	add	r4, r3
 8004a26:	2a07      	cmp	r2, #7
 8004a28:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004a2c:	e9c9 1300 	strd	r1, r3, [r9]
 8004a30:	f77f aa6c 	ble.w	8003f0c <_vfprintf_r+0x4fc>
 8004a34:	e579      	b.n	800452a <_vfprintf_r+0xb1a>
 8004a36:	aa21      	add	r2, sp, #132	; 0x84
 8004a38:	4659      	mov	r1, fp
 8004a3a:	9806      	ldr	r0, [sp, #24]
 8004a3c:	f002 fd4a 	bl	80074d4 <__sprint_r>
 8004a40:	2800      	cmp	r0, #0
 8004a42:	f47f a938 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004a46:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004a4a:	e494      	b.n	8004376 <_vfprintf_r+0x966>
 8004a4c:	4240      	negs	r0, r0
 8004a4e:	9007      	str	r0, [sp, #28]
 8004a50:	9309      	str	r3, [sp, #36]	; 0x24
 8004a52:	e436      	b.n	80042c2 <_vfprintf_r+0x8b2>
 8004a54:	272d      	movs	r7, #45	; 0x2d
 8004a56:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8004a5a:	f7ff bbd4 	b.w	8004206 <_vfprintf_r+0x7f6>
 8004a5e:	aa21      	add	r2, sp, #132	; 0x84
 8004a60:	4659      	mov	r1, fp
 8004a62:	9806      	ldr	r0, [sp, #24]
 8004a64:	f002 fd36 	bl	80074d4 <__sprint_r>
 8004a68:	2800      	cmp	r0, #0
 8004a6a:	f47f a924 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004a6e:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004a70:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004a72:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004a76:	e7b8      	b.n	80049ea <_vfprintf_r+0xfda>
 8004a78:	aa21      	add	r2, sp, #132	; 0x84
 8004a7a:	4659      	mov	r1, fp
 8004a7c:	9806      	ldr	r0, [sp, #24]
 8004a7e:	f002 fd29 	bl	80074d4 <__sprint_r>
 8004a82:	2800      	cmp	r0, #0
 8004a84:	f47f a917 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004a88:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004a8a:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004a8c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004a8e:	1ad3      	subs	r3, r2, r3
 8004a90:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004a94:	e69b      	b.n	80047ce <_vfprintf_r+0xdbe>
 8004a96:	2306      	movs	r3, #6
 8004a98:	9304      	str	r3, [sp, #16]
 8004a9a:	e730      	b.n	80048fe <_vfprintf_r+0xeee>
 8004a9c:	9b04      	ldr	r3, [sp, #16]
 8004a9e:	9303      	str	r3, [sp, #12]
 8004aa0:	9308      	str	r3, [sp, #32]
 8004aa2:	9004      	str	r0, [sp, #16]
 8004aa4:	9409      	str	r4, [sp, #36]	; 0x24
 8004aa6:	f8cd 8008 	str.w	r8, [sp, #8]
 8004aaa:	900b      	str	r0, [sp, #44]	; 0x2c
 8004aac:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8004ab0:	f7ff b96b 	b.w	8003d8a <_vfprintf_r+0x37a>
 8004ab4:	46a0      	mov	r8, r4
 8004ab6:	461c      	mov	r4, r3
 8004ab8:	1c6b      	adds	r3, r5, #1
 8004aba:	9304      	str	r3, [sp, #16]
 8004abc:	f106 0208 	add.w	r2, r6, #8
 8004ac0:	9b04      	ldr	r3, [sp, #16]
 8004ac2:	9322      	str	r3, [sp, #136]	; 0x88
 8004ac4:	443c      	add	r4, r7
 8004ac6:	2b07      	cmp	r3, #7
 8004ac8:	9423      	str	r4, [sp, #140]	; 0x8c
 8004aca:	e9c6 8700 	strd	r8, r7, [r6]
 8004ace:	f73f ae22 	bgt.w	8004716 <_vfprintf_r+0xd06>
 8004ad2:	3301      	adds	r3, #1
 8004ad4:	9304      	str	r3, [sp, #16]
 8004ad6:	f102 0908 	add.w	r9, r2, #8
 8004ada:	4616      	mov	r6, r2
 8004adc:	e51a      	b.n	8004514 <_vfprintf_r+0xb04>
 8004ade:	aa21      	add	r2, sp, #132	; 0x84
 8004ae0:	4659      	mov	r1, fp
 8004ae2:	9806      	ldr	r0, [sp, #24]
 8004ae4:	f002 fcf6 	bl	80074d4 <__sprint_r>
 8004ae8:	2800      	cmp	r0, #0
 8004aea:	f47f a8e4 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004aee:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004af0:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004af4:	e458      	b.n	80043a8 <_vfprintf_r+0x998>
 8004af6:	9b04      	ldr	r3, [sp, #16]
 8004af8:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 8004afa:	9704      	str	r7, [sp, #16]
 8004afc:	2b06      	cmp	r3, #6
 8004afe:	bf28      	it	cs
 8004b00:	2306      	movcs	r3, #6
 8004b02:	9303      	str	r3, [sp, #12]
 8004b04:	9308      	str	r3, [sp, #32]
 8004b06:	4b62      	ldr	r3, [pc, #392]	; (8004c90 <_vfprintf_r+0x1280>)
 8004b08:	9409      	str	r4, [sp, #36]	; 0x24
 8004b0a:	f8cd 8008 	str.w	r8, [sp, #8]
 8004b0e:	970b      	str	r7, [sp, #44]	; 0x2c
 8004b10:	930a      	str	r3, [sp, #40]	; 0x28
 8004b12:	f7ff b93a 	b.w	8003d8a <_vfprintf_r+0x37a>
 8004b16:	46b8      	mov	r8, r7
 8004b18:	3201      	adds	r2, #1
 8004b1a:	442c      	add	r4, r5
 8004b1c:	2a07      	cmp	r2, #7
 8004b1e:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004b22:	e9c9 8500 	strd	r8, r5, [r9]
 8004b26:	f73f ae17 	bgt.w	8004758 <_vfprintf_r+0xd48>
 8004b2a:	f109 0908 	add.w	r9, r9, #8
 8004b2e:	e61e      	b.n	800476e <_vfprintf_r+0xd5e>
 8004b30:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b32:	ab2e      	add	r3, sp, #184	; 0xb8
 8004b34:	1a9b      	subs	r3, r3, r2
 8004b36:	9308      	str	r3, [sp, #32]
 8004b38:	f7ff b91f 	b.w	8003d7a <_vfprintf_r+0x36a>
 8004b3c:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004b3e:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8004b40:	920b      	str	r2, [sp, #44]	; 0x2c
 8004b42:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b44:	2f47      	cmp	r7, #71	; 0x47
 8004b46:	eba3 0302 	sub.w	r3, r3, r2
 8004b4a:	930e      	str	r3, [sp, #56]	; 0x38
 8004b4c:	d106      	bne.n	8004b5c <_vfprintf_r+0x114c>
 8004b4e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b50:	1cda      	adds	r2, r3, #3
 8004b52:	db02      	blt.n	8004b5a <_vfprintf_r+0x114a>
 8004b54:	9a04      	ldr	r2, [sp, #16]
 8004b56:	429a      	cmp	r2, r3
 8004b58:	da3d      	bge.n	8004bd6 <_vfprintf_r+0x11c6>
 8004b5a:	3e02      	subs	r6, #2
 8004b5c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b5e:	f88d 6074 	strb.w	r6, [sp, #116]	; 0x74
 8004b62:	3b01      	subs	r3, #1
 8004b64:	2b00      	cmp	r3, #0
 8004b66:	931b      	str	r3, [sp, #108]	; 0x6c
 8004b68:	bfbd      	ittte	lt
 8004b6a:	9b0b      	ldrlt	r3, [sp, #44]	; 0x2c
 8004b6c:	f1c3 0301 	rsblt	r3, r3, #1
 8004b70:	222d      	movlt	r2, #45	; 0x2d
 8004b72:	222b      	movge	r2, #43	; 0x2b
 8004b74:	2b09      	cmp	r3, #9
 8004b76:	f88d 2075 	strb.w	r2, [sp, #117]	; 0x75
 8004b7a:	f300 8114 	bgt.w	8004da6 <_vfprintf_r+0x1396>
 8004b7e:	3330      	adds	r3, #48	; 0x30
 8004b80:	2230      	movs	r2, #48	; 0x30
 8004b82:	f88d 3077 	strb.w	r3, [sp, #119]	; 0x77
 8004b86:	f88d 2076 	strb.w	r2, [sp, #118]	; 0x76
 8004b8a:	ab1e      	add	r3, sp, #120	; 0x78
 8004b8c:	aa1d      	add	r2, sp, #116	; 0x74
 8004b8e:	1a9b      	subs	r3, r3, r2
 8004b90:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004b92:	9314      	str	r3, [sp, #80]	; 0x50
 8004b94:	2a01      	cmp	r2, #1
 8004b96:	4413      	add	r3, r2
 8004b98:	9308      	str	r3, [sp, #32]
 8004b9a:	f340 815b 	ble.w	8004e54 <_vfprintf_r+0x1444>
 8004b9e:	9b08      	ldr	r3, [sp, #32]
 8004ba0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004ba2:	4413      	add	r3, r2
 8004ba4:	9308      	str	r3, [sp, #32]
 8004ba6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004baa:	9303      	str	r3, [sp, #12]
 8004bac:	2300      	movs	r3, #0
 8004bae:	930b      	str	r3, [sp, #44]	; 0x2c
 8004bb0:	e6f6      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004bb2:	980a      	ldr	r0, [sp, #40]	; 0x28
 8004bb4:	9504      	str	r5, [sp, #16]
 8004bb6:	f002 fbe3 	bl	8007380 <strlen>
 8004bba:	f8cd 8008 	str.w	r8, [sp, #8]
 8004bbe:	e9cd 0408 	strd	r0, r4, [sp, #32]
 8004bc2:	4603      	mov	r3, r0
 8004bc4:	f7ff bac3 	b.w	800414e <_vfprintf_r+0x73e>
 8004bc8:	272d      	movs	r7, #45	; 0x2d
 8004bca:	2300      	movs	r3, #0
 8004bcc:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8004bd0:	9304      	str	r3, [sp, #16]
 8004bd2:	f7ff b8db 	b.w	8003d8c <_vfprintf_r+0x37c>
 8004bd6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004bd8:	990e      	ldr	r1, [sp, #56]	; 0x38
 8004bda:	428b      	cmp	r3, r1
 8004bdc:	db6a      	blt.n	8004cb4 <_vfprintf_r+0x12a4>
 8004bde:	f018 0f01 	tst.w	r8, #1
 8004be2:	f000 811b 	beq.w	8004e1c <_vfprintf_r+0x140c>
 8004be6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004be8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004bea:	4413      	add	r3, r2
 8004bec:	9308      	str	r3, [sp, #32]
 8004bee:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004bf2:	9303      	str	r3, [sp, #12]
 8004bf4:	2667      	movs	r6, #103	; 0x67
 8004bf6:	e6d3      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004bf8:	aa21      	add	r2, sp, #132	; 0x84
 8004bfa:	4659      	mov	r1, fp
 8004bfc:	9806      	ldr	r0, [sp, #24]
 8004bfe:	f002 fc69 	bl	80074d4 <__sprint_r>
 8004c02:	2800      	cmp	r0, #0
 8004c04:	f47f a857 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004c08:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004c0a:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004c0e:	e502      	b.n	8004616 <_vfprintf_r+0xc06>
 8004c10:	aa21      	add	r2, sp, #132	; 0x84
 8004c12:	4659      	mov	r1, fp
 8004c14:	9806      	ldr	r0, [sp, #24]
 8004c16:	f002 fc5d 	bl	80074d4 <__sprint_r>
 8004c1a:	2800      	cmp	r0, #0
 8004c1c:	f47f a84b 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004c20:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004c22:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004c24:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004c28:	e5b8      	b.n	800479c <_vfprintf_r+0xd8c>
 8004c2a:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8004c2c:	42a3      	cmp	r3, r4
 8004c2e:	f4bf ae9d 	bcs.w	800496c <_vfprintf_r+0xf5c>
 8004c32:	2130      	movs	r1, #48	; 0x30
 8004c34:	1c5a      	adds	r2, r3, #1
 8004c36:	921f      	str	r2, [sp, #124]	; 0x7c
 8004c38:	7019      	strb	r1, [r3, #0]
 8004c3a:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8004c3c:	429c      	cmp	r4, r3
 8004c3e:	d8f9      	bhi.n	8004c34 <_vfprintf_r+0x1224>
 8004c40:	e694      	b.n	800496c <_vfprintf_r+0xf5c>
 8004c42:	e9dd 120c 	ldrd	r1, r2, [sp, #48]	; 0x30
 8004c46:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8004c4a:	9317      	str	r3, [sp, #92]	; 0x5c
 8004c4c:	232d      	movs	r3, #45	; 0x2d
 8004c4e:	9116      	str	r1, [sp, #88]	; 0x58
 8004c50:	9315      	str	r3, [sp, #84]	; 0x54
 8004c52:	e661      	b.n	8004918 <_vfprintf_r+0xf08>
 8004c54:	9d04      	ldr	r5, [sp, #16]
 8004c56:	9806      	ldr	r0, [sp, #24]
 8004c58:	aa1f      	add	r2, sp, #124	; 0x7c
 8004c5a:	ab1c      	add	r3, sp, #112	; 0x70
 8004c5c:	e9cd 3200 	strd	r3, r2, [sp]
 8004c60:	2103      	movs	r1, #3
 8004c62:	ab1b      	add	r3, sp, #108	; 0x6c
 8004c64:	462a      	mov	r2, r5
 8004c66:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8004c6a:	f000 faa1 	bl	80051b0 <_dtoa_r>
 8004c6e:	900a      	str	r0, [sp, #40]	; 0x28
 8004c70:	1944      	adds	r4, r0, r5
 8004c72:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c74:	781b      	ldrb	r3, [r3, #0]
 8004c76:	2b30      	cmp	r3, #48	; 0x30
 8004c78:	f000 80c2 	beq.w	8004e00 <_vfprintf_r+0x13f0>
 8004c7c:	9d1b      	ldr	r5, [sp, #108]	; 0x6c
 8004c7e:	442c      	add	r4, r5
 8004c80:	e66a      	b.n	8004958 <_vfprintf_r+0xf48>
 8004c82:	2300      	movs	r3, #0
 8004c84:	9304      	str	r3, [sp, #16]
 8004c86:	f7fe bf43 	b.w	8003b10 <_vfprintf_r+0x100>
 8004c8a:	bf00      	nop
 8004c8c:	0800965c 	.word	0x0800965c
 8004c90:	08009654 	.word	0x08009654
 8004c94:	08009670 	.word	0x08009670
 8004c98:	aa21      	add	r2, sp, #132	; 0x84
 8004c9a:	4659      	mov	r1, fp
 8004c9c:	9806      	ldr	r0, [sp, #24]
 8004c9e:	f002 fc19 	bl	80074d4 <__sprint_r>
 8004ca2:	2800      	cmp	r0, #0
 8004ca4:	f47f a807 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004ca8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004caa:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004cae:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004cb2:	e6b1      	b.n	8004a18 <_vfprintf_r+0x1008>
 8004cb4:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	; 0x38
 8004cb8:	4413      	add	r3, r2
 8004cba:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004cbc:	9308      	str	r3, [sp, #32]
 8004cbe:	2a00      	cmp	r2, #0
 8004cc0:	dc06      	bgt.n	8004cd0 <_vfprintf_r+0x12c0>
 8004cc2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004cc4:	9a08      	ldr	r2, [sp, #32]
 8004cc6:	f1c3 0301 	rsb	r3, r3, #1
 8004cca:	441a      	add	r2, r3
 8004ccc:	4613      	mov	r3, r2
 8004cce:	9208      	str	r2, [sp, #32]
 8004cd0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004cd4:	9303      	str	r3, [sp, #12]
 8004cd6:	2667      	movs	r6, #103	; 0x67
 8004cd8:	e662      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004cda:	9b04      	ldr	r3, [sp, #16]
 8004cdc:	9806      	ldr	r0, [sp, #24]
 8004cde:	1c5d      	adds	r5, r3, #1
 8004ce0:	a91f      	add	r1, sp, #124	; 0x7c
 8004ce2:	ab1c      	add	r3, sp, #112	; 0x70
 8004ce4:	e9cd 3100 	strd	r3, r1, [sp]
 8004ce8:	462a      	mov	r2, r5
 8004cea:	ab1b      	add	r3, sp, #108	; 0x6c
 8004cec:	2102      	movs	r1, #2
 8004cee:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8004cf2:	f000 fa5d 	bl	80051b0 <_dtoa_r>
 8004cf6:	900a      	str	r0, [sp, #40]	; 0x28
 8004cf8:	2e47      	cmp	r6, #71	; 0x47
 8004cfa:	f040 80d5 	bne.w	8004ea8 <_vfprintf_r+0x1498>
 8004cfe:	f018 0f01 	tst.w	r8, #1
 8004d02:	f000 80ca 	beq.w	8004e9a <_vfprintf_r+0x148a>
 8004d06:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d08:	2e46      	cmp	r6, #70	; 0x46
 8004d0a:	eb03 0405 	add.w	r4, r3, r5
 8004d0e:	d0b0      	beq.n	8004c72 <_vfprintf_r+0x1262>
 8004d10:	e622      	b.n	8004958 <_vfprintf_r+0xf48>
 8004d12:	9d04      	ldr	r5, [sp, #16]
 8004d14:	9806      	ldr	r0, [sp, #24]
 8004d16:	aa1f      	add	r2, sp, #124	; 0x7c
 8004d18:	ab1c      	add	r3, sp, #112	; 0x70
 8004d1a:	e9cd 3200 	strd	r3, r2, [sp]
 8004d1e:	2103      	movs	r1, #3
 8004d20:	ab1b      	add	r3, sp, #108	; 0x6c
 8004d22:	462a      	mov	r2, r5
 8004d24:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8004d28:	f000 fa42 	bl	80051b0 <_dtoa_r>
 8004d2c:	900a      	str	r0, [sp, #40]	; 0x28
 8004d2e:	e7ea      	b.n	8004d06 <_vfprintf_r+0x12f6>
 8004d30:	9806      	ldr	r0, [sp, #24]
 8004d32:	aa21      	add	r2, sp, #132	; 0x84
 8004d34:	4659      	mov	r1, fp
 8004d36:	f002 fbcd 	bl	80074d4 <__sprint_r>
 8004d3a:	2800      	cmp	r0, #0
 8004d3c:	f43f a93e 	beq.w	8003fbc <_vfprintf_r+0x5ac>
 8004d40:	f7fe bfba 	b.w	8003cb8 <_vfprintf_r+0x2a8>
 8004d44:	425d      	negs	r5, r3
 8004d46:	3310      	adds	r3, #16
 8004d48:	f8df 81cc 	ldr.w	r8, [pc, #460]	; 8004f18 <_vfprintf_r+0x1508>
 8004d4c:	da1f      	bge.n	8004d8e <_vfprintf_r+0x137e>
 8004d4e:	4647      	mov	r7, r8
 8004d50:	2610      	movs	r6, #16
 8004d52:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d56:	e004      	b.n	8004d62 <_vfprintf_r+0x1352>
 8004d58:	f109 0908 	add.w	r9, r9, #8
 8004d5c:	3d10      	subs	r5, #16
 8004d5e:	2d10      	cmp	r5, #16
 8004d60:	dd14      	ble.n	8004d8c <_vfprintf_r+0x137c>
 8004d62:	3201      	adds	r2, #1
 8004d64:	3410      	adds	r4, #16
 8004d66:	2a07      	cmp	r2, #7
 8004d68:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004d6c:	e9c9 7600 	strd	r7, r6, [r9]
 8004d70:	ddf2      	ble.n	8004d58 <_vfprintf_r+0x1348>
 8004d72:	aa21      	add	r2, sp, #132	; 0x84
 8004d74:	4659      	mov	r1, fp
 8004d76:	4640      	mov	r0, r8
 8004d78:	f002 fbac 	bl	80074d4 <__sprint_r>
 8004d7c:	2800      	cmp	r0, #0
 8004d7e:	f47e af9a 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004d82:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004d86:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004d8a:	e7e7      	b.n	8004d5c <_vfprintf_r+0x134c>
 8004d8c:	46b8      	mov	r8, r7
 8004d8e:	3201      	adds	r2, #1
 8004d90:	442c      	add	r4, r5
 8004d92:	2a07      	cmp	r2, #7
 8004d94:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004d98:	e9c9 8500 	strd	r8, r5, [r9]
 8004d9c:	f300 8087 	bgt.w	8004eae <_vfprintf_r+0x149e>
 8004da0:	f109 0908 	add.w	r9, r9, #8
 8004da4:	e63b      	b.n	8004a1e <_vfprintf_r+0x100e>
 8004da6:	f10d 0483 	add.w	r4, sp, #131	; 0x83
 8004daa:	4620      	mov	r0, r4
 8004dac:	4d57      	ldr	r5, [pc, #348]	; (8004f0c <_vfprintf_r+0x14fc>)
 8004dae:	e000      	b.n	8004db2 <_vfprintf_r+0x13a2>
 8004db0:	4610      	mov	r0, r2
 8004db2:	fba5 1203 	umull	r1, r2, r5, r3
 8004db6:	08d2      	lsrs	r2, r2, #3
 8004db8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004dbc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004dc0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004dc4:	4613      	mov	r3, r2
 8004dc6:	2b09      	cmp	r3, #9
 8004dc8:	f800 1c01 	strb.w	r1, [r0, #-1]
 8004dcc:	f100 32ff 	add.w	r2, r0, #4294967295
 8004dd0:	dcee      	bgt.n	8004db0 <_vfprintf_r+0x13a0>
 8004dd2:	3330      	adds	r3, #48	; 0x30
 8004dd4:	3802      	subs	r0, #2
 8004dd6:	b2d9      	uxtb	r1, r3
 8004dd8:	4284      	cmp	r4, r0
 8004dda:	f802 1c01 	strb.w	r1, [r2, #-1]
 8004dde:	d973      	bls.n	8004ec8 <_vfprintf_r+0x14b8>
 8004de0:	f10d 0076 	add.w	r0, sp, #118	; 0x76
 8004de4:	4613      	mov	r3, r2
 8004de6:	e001      	b.n	8004dec <_vfprintf_r+0x13dc>
 8004de8:	f813 1b01 	ldrb.w	r1, [r3], #1
 8004dec:	f800 1b01 	strb.w	r1, [r0], #1
 8004df0:	429c      	cmp	r4, r3
 8004df2:	d1f9      	bne.n	8004de8 <_vfprintf_r+0x13d8>
 8004df4:	ab21      	add	r3, sp, #132	; 0x84
 8004df6:	1a9b      	subs	r3, r3, r2
 8004df8:	f10d 0276 	add.w	r2, sp, #118	; 0x76
 8004dfc:	4413      	add	r3, r2
 8004dfe:	e6c5      	b.n	8004b8c <_vfprintf_r+0x117c>
 8004e00:	2200      	movs	r2, #0
 8004e02:	2300      	movs	r3, #0
 8004e04:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8004e08:	f003 fdcc 	bl	80089a4 <__aeabi_dcmpeq>
 8004e0c:	2800      	cmp	r0, #0
 8004e0e:	f47f af35 	bne.w	8004c7c <_vfprintf_r+0x126c>
 8004e12:	f1c5 0501 	rsb	r5, r5, #1
 8004e16:	951b      	str	r5, [sp, #108]	; 0x6c
 8004e18:	442c      	add	r4, r5
 8004e1a:	e59d      	b.n	8004958 <_vfprintf_r+0xf48>
 8004e1c:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
 8004e20:	9203      	str	r2, [sp, #12]
 8004e22:	9308      	str	r3, [sp, #32]
 8004e24:	2667      	movs	r6, #103	; 0x67
 8004e26:	e5bb      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004e28:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e2a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004e2c:	4413      	add	r3, r2
 8004e2e:	9a04      	ldr	r2, [sp, #16]
 8004e30:	441a      	add	r2, r3
 8004e32:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004e36:	9208      	str	r2, [sp, #32]
 8004e38:	9303      	str	r3, [sp, #12]
 8004e3a:	e5b1      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004e3c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e3e:	4a34      	ldr	r2, [pc, #208]	; (8004f10 <_vfprintf_r+0x1500>)
 8004e40:	2b00      	cmp	r3, #0
 8004e42:	bfb6      	itet	lt
 8004e44:	272d      	movlt	r7, #45	; 0x2d
 8004e46:	f89d 7067 	ldrbge.w	r7, [sp, #103]	; 0x67
 8004e4a:	f88d 7067 	strblt.w	r7, [sp, #103]	; 0x67
 8004e4e:	4b31      	ldr	r3, [pc, #196]	; (8004f14 <_vfprintf_r+0x1504>)
 8004e50:	f7ff b9db 	b.w	800420a <_vfprintf_r+0x7fa>
 8004e54:	f018 0301 	ands.w	r3, r8, #1
 8004e58:	930b      	str	r3, [sp, #44]	; 0x2c
 8004e5a:	f47f aea0 	bne.w	8004b9e <_vfprintf_r+0x118e>
 8004e5e:	9b08      	ldr	r3, [sp, #32]
 8004e60:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004e64:	9303      	str	r3, [sp, #12]
 8004e66:	e59b      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004e68:	b943      	cbnz	r3, 8004e7c <_vfprintf_r+0x146c>
 8004e6a:	f018 0f01 	tst.w	r8, #1
 8004e6e:	d105      	bne.n	8004e7c <_vfprintf_r+0x146c>
 8004e70:	2301      	movs	r3, #1
 8004e72:	9303      	str	r3, [sp, #12]
 8004e74:	9308      	str	r3, [sp, #32]
 8004e76:	e593      	b.n	80049a0 <_vfprintf_r+0xf90>
 8004e78:	464a      	mov	r2, r9
 8004e7a:	e621      	b.n	8004ac0 <_vfprintf_r+0x10b0>
 8004e7c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004e7e:	3301      	adds	r3, #1
 8004e80:	e7d5      	b.n	8004e2e <_vfprintf_r+0x141e>
 8004e82:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004e84:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004e88:	6823      	ldr	r3, [r4, #0]
 8004e8a:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 8004e8e:	9304      	str	r3, [sp, #16]
 8004e90:	1d23      	adds	r3, r4, #4
 8004e92:	4682      	mov	sl, r0
 8004e94:	9309      	str	r3, [sp, #36]	; 0x24
 8004e96:	f7fe be39 	b.w	8003b0c <_vfprintf_r+0xfc>
 8004e9a:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004e9c:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8004e9e:	920b      	str	r2, [sp, #44]	; 0x2c
 8004ea0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ea2:	1a9b      	subs	r3, r3, r2
 8004ea4:	930e      	str	r3, [sp, #56]	; 0x38
 8004ea6:	e652      	b.n	8004b4e <_vfprintf_r+0x113e>
 8004ea8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004eaa:	195c      	adds	r4, r3, r5
 8004eac:	e554      	b.n	8004958 <_vfprintf_r+0xf48>
 8004eae:	aa21      	add	r2, sp, #132	; 0x84
 8004eb0:	4659      	mov	r1, fp
 8004eb2:	9806      	ldr	r0, [sp, #24]
 8004eb4:	f002 fb0e 	bl	80074d4 <__sprint_r>
 8004eb8:	2800      	cmp	r0, #0
 8004eba:	f47e aefc 	bne.w	8003cb6 <_vfprintf_r+0x2a6>
 8004ebe:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004ec2:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004ec6:	e5aa      	b.n	8004a1e <_vfprintf_r+0x100e>
 8004ec8:	f10d 0376 	add.w	r3, sp, #118	; 0x76
 8004ecc:	e65e      	b.n	8004b8c <_vfprintf_r+0x117c>
 8004ece:	9d04      	ldr	r5, [sp, #16]
 8004ed0:	e712      	b.n	8004cf8 <_vfprintf_r+0x12e8>
 8004ed2:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004ed6:	f7ff b9dd 	b.w	8004294 <_vfprintf_r+0x884>
 8004eda:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004ede:	f7ff b940 	b.w	8004162 <_vfprintf_r+0x752>
 8004ee2:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004ee6:	f7ff b95e 	b.w	80041a6 <_vfprintf_r+0x796>
 8004eea:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004eee:	f7fe bf12 	b.w	8003d16 <_vfprintf_r+0x306>
 8004ef2:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004ef6:	f7ff b87e 	b.w	8003ff6 <_vfprintf_r+0x5e6>
 8004efa:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004efe:	f7ff ba0b 	b.w	8004318 <_vfprintf_r+0x908>
 8004f02:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8004f06:	f7ff b8f2 	b.w	80040ee <_vfprintf_r+0x6de>
 8004f0a:	bf00      	nop
 8004f0c:	cccccccd 	.word	0xcccccccd
 8004f10:	08009628 	.word	0x08009628
 8004f14:	08009624 	.word	0x08009624
 8004f18:	08009670 	.word	0x08009670

08004f1c <__sbprintf>:
 8004f1c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f20:	460c      	mov	r4, r1
 8004f22:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8004f26:	8989      	ldrh	r1, [r1, #12]
 8004f28:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004f2a:	89e5      	ldrh	r5, [r4, #14]
 8004f2c:	9619      	str	r6, [sp, #100]	; 0x64
 8004f2e:	f021 0102 	bic.w	r1, r1, #2
 8004f32:	4606      	mov	r6, r0
 8004f34:	69e0      	ldr	r0, [r4, #28]
 8004f36:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004f3a:	4617      	mov	r7, r2
 8004f3c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004f40:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004f42:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004f46:	4698      	mov	r8, r3
 8004f48:	ad1a      	add	r5, sp, #104	; 0x68
 8004f4a:	2300      	movs	r3, #0
 8004f4c:	9007      	str	r0, [sp, #28]
 8004f4e:	a816      	add	r0, sp, #88	; 0x58
 8004f50:	9209      	str	r2, [sp, #36]	; 0x24
 8004f52:	9306      	str	r3, [sp, #24]
 8004f54:	9500      	str	r5, [sp, #0]
 8004f56:	9504      	str	r5, [sp, #16]
 8004f58:	9102      	str	r1, [sp, #8]
 8004f5a:	9105      	str	r1, [sp, #20]
 8004f5c:	f001 fb10 	bl	8006580 <__retarget_lock_init_recursive>
 8004f60:	4643      	mov	r3, r8
 8004f62:	463a      	mov	r2, r7
 8004f64:	4669      	mov	r1, sp
 8004f66:	4630      	mov	r0, r6
 8004f68:	f7fe fd52 	bl	8003a10 <_vfprintf_r>
 8004f6c:	1e05      	subs	r5, r0, #0
 8004f6e:	db07      	blt.n	8004f80 <__sbprintf+0x64>
 8004f70:	4630      	mov	r0, r6
 8004f72:	4669      	mov	r1, sp
 8004f74:	f001 f8da 	bl	800612c <_fflush_r>
 8004f78:	2800      	cmp	r0, #0
 8004f7a:	bf18      	it	ne
 8004f7c:	f04f 35ff 	movne.w	r5, #4294967295
 8004f80:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004f84:	065b      	lsls	r3, r3, #25
 8004f86:	d503      	bpl.n	8004f90 <__sbprintf+0x74>
 8004f88:	89a3      	ldrh	r3, [r4, #12]
 8004f8a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f8e:	81a3      	strh	r3, [r4, #12]
 8004f90:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004f92:	f001 faf7 	bl	8006584 <__retarget_lock_close_recursive>
 8004f96:	4628      	mov	r0, r5
 8004f98:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004f9c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004fa0 <__swsetup_r>:
 8004fa0:	b538      	push	{r3, r4, r5, lr}
 8004fa2:	4b31      	ldr	r3, [pc, #196]	; (8005068 <__swsetup_r+0xc8>)
 8004fa4:	681b      	ldr	r3, [r3, #0]
 8004fa6:	4605      	mov	r5, r0
 8004fa8:	460c      	mov	r4, r1
 8004faa:	b113      	cbz	r3, 8004fb2 <__swsetup_r+0x12>
 8004fac:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004fae:	2a00      	cmp	r2, #0
 8004fb0:	d03a      	beq.n	8005028 <__swsetup_r+0x88>
 8004fb2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004fb6:	b293      	uxth	r3, r2
 8004fb8:	0718      	lsls	r0, r3, #28
 8004fba:	d50c      	bpl.n	8004fd6 <__swsetup_r+0x36>
 8004fbc:	6920      	ldr	r0, [r4, #16]
 8004fbe:	b1a8      	cbz	r0, 8004fec <__swsetup_r+0x4c>
 8004fc0:	f013 0201 	ands.w	r2, r3, #1
 8004fc4:	d020      	beq.n	8005008 <__swsetup_r+0x68>
 8004fc6:	6963      	ldr	r3, [r4, #20]
 8004fc8:	2200      	movs	r2, #0
 8004fca:	425b      	negs	r3, r3
 8004fcc:	61a3      	str	r3, [r4, #24]
 8004fce:	60a2      	str	r2, [r4, #8]
 8004fd0:	b300      	cbz	r0, 8005014 <__swsetup_r+0x74>
 8004fd2:	2000      	movs	r0, #0
 8004fd4:	bd38      	pop	{r3, r4, r5, pc}
 8004fd6:	06d9      	lsls	r1, r3, #27
 8004fd8:	d53e      	bpl.n	8005058 <__swsetup_r+0xb8>
 8004fda:	0758      	lsls	r0, r3, #29
 8004fdc:	d428      	bmi.n	8005030 <__swsetup_r+0x90>
 8004fde:	6920      	ldr	r0, [r4, #16]
 8004fe0:	f042 0308 	orr.w	r3, r2, #8
 8004fe4:	81a3      	strh	r3, [r4, #12]
 8004fe6:	b29b      	uxth	r3, r3
 8004fe8:	2800      	cmp	r0, #0
 8004fea:	d1e9      	bne.n	8004fc0 <__swsetup_r+0x20>
 8004fec:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004ff0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004ff4:	d0e4      	beq.n	8004fc0 <__swsetup_r+0x20>
 8004ff6:	4628      	mov	r0, r5
 8004ff8:	4621      	mov	r1, r4
 8004ffa:	f001 faf7 	bl	80065ec <__smakebuf_r>
 8004ffe:	89a3      	ldrh	r3, [r4, #12]
 8005000:	6920      	ldr	r0, [r4, #16]
 8005002:	f013 0201 	ands.w	r2, r3, #1
 8005006:	d1de      	bne.n	8004fc6 <__swsetup_r+0x26>
 8005008:	0799      	lsls	r1, r3, #30
 800500a:	bf58      	it	pl
 800500c:	6962      	ldrpl	r2, [r4, #20]
 800500e:	60a2      	str	r2, [r4, #8]
 8005010:	2800      	cmp	r0, #0
 8005012:	d1de      	bne.n	8004fd2 <__swsetup_r+0x32>
 8005014:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005018:	061a      	lsls	r2, r3, #24
 800501a:	d5db      	bpl.n	8004fd4 <__swsetup_r+0x34>
 800501c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005020:	81a3      	strh	r3, [r4, #12]
 8005022:	f04f 30ff 	mov.w	r0, #4294967295
 8005026:	bd38      	pop	{r3, r4, r5, pc}
 8005028:	4618      	mov	r0, r3
 800502a:	f001 f8db 	bl	80061e4 <__sinit>
 800502e:	e7c0      	b.n	8004fb2 <__swsetup_r+0x12>
 8005030:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005032:	b151      	cbz	r1, 800504a <__swsetup_r+0xaa>
 8005034:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005038:	4299      	cmp	r1, r3
 800503a:	d004      	beq.n	8005046 <__swsetup_r+0xa6>
 800503c:	4628      	mov	r0, r5
 800503e:	f001 f973 	bl	8006328 <_free_r>
 8005042:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005046:	2300      	movs	r3, #0
 8005048:	6323      	str	r3, [r4, #48]	; 0x30
 800504a:	2300      	movs	r3, #0
 800504c:	6920      	ldr	r0, [r4, #16]
 800504e:	6063      	str	r3, [r4, #4]
 8005050:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8005054:	6020      	str	r0, [r4, #0]
 8005056:	e7c3      	b.n	8004fe0 <__swsetup_r+0x40>
 8005058:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800505c:	2309      	movs	r3, #9
 800505e:	602b      	str	r3, [r5, #0]
 8005060:	f04f 30ff 	mov.w	r0, #4294967295
 8005064:	81a2      	strh	r2, [r4, #12]
 8005066:	bd38      	pop	{r3, r4, r5, pc}
 8005068:	20000010 	.word	0x20000010

0800506c <register_fini>:
 800506c:	4b02      	ldr	r3, [pc, #8]	; (8005078 <register_fini+0xc>)
 800506e:	b113      	cbz	r3, 8005076 <register_fini+0xa>
 8005070:	4802      	ldr	r0, [pc, #8]	; (800507c <register_fini+0x10>)
 8005072:	f000 b805 	b.w	8005080 <atexit>
 8005076:	4770      	bx	lr
 8005078:	00000000 	.word	0x00000000
 800507c:	08006255 	.word	0x08006255

08005080 <atexit>:
 8005080:	2300      	movs	r3, #0
 8005082:	4601      	mov	r1, r0
 8005084:	461a      	mov	r2, r3
 8005086:	4618      	mov	r0, r3
 8005088:	f002 ba44 	b.w	8007514 <__register_exitproc>

0800508c <quorem>:
 800508c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005090:	6903      	ldr	r3, [r0, #16]
 8005092:	690f      	ldr	r7, [r1, #16]
 8005094:	42bb      	cmp	r3, r7
 8005096:	b083      	sub	sp, #12
 8005098:	f2c0 8086 	blt.w	80051a8 <quorem+0x11c>
 800509c:	3f01      	subs	r7, #1
 800509e:	f101 0914 	add.w	r9, r1, #20
 80050a2:	f100 0a14 	add.w	sl, r0, #20
 80050a6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80050aa:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80050ae:	00bc      	lsls	r4, r7, #2
 80050b0:	3201      	adds	r2, #1
 80050b2:	fbb3 f8f2 	udiv	r8, r3, r2
 80050b6:	eb0a 0304 	add.w	r3, sl, r4
 80050ba:	9400      	str	r4, [sp, #0]
 80050bc:	eb09 0b04 	add.w	fp, r9, r4
 80050c0:	9301      	str	r3, [sp, #4]
 80050c2:	f1b8 0f00 	cmp.w	r8, #0
 80050c6:	d038      	beq.n	800513a <quorem+0xae>
 80050c8:	2500      	movs	r5, #0
 80050ca:	462e      	mov	r6, r5
 80050cc:	46ce      	mov	lr, r9
 80050ce:	46d4      	mov	ip, sl
 80050d0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80050d4:	f8dc 3000 	ldr.w	r3, [ip]
 80050d8:	b2a2      	uxth	r2, r4
 80050da:	fb08 5502 	mla	r5, r8, r2, r5
 80050de:	0c22      	lsrs	r2, r4, #16
 80050e0:	0c2c      	lsrs	r4, r5, #16
 80050e2:	fb08 4202 	mla	r2, r8, r2, r4
 80050e6:	b2ad      	uxth	r5, r5
 80050e8:	1b75      	subs	r5, r6, r5
 80050ea:	b296      	uxth	r6, r2
 80050ec:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80050f0:	fa15 f383 	uxtah	r3, r5, r3
 80050f4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80050f8:	b29b      	uxth	r3, r3
 80050fa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80050fe:	45f3      	cmp	fp, lr
 8005100:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8005104:	f84c 3b04 	str.w	r3, [ip], #4
 8005108:	ea4f 4626 	mov.w	r6, r6, asr #16
 800510c:	d2e0      	bcs.n	80050d0 <quorem+0x44>
 800510e:	9b00      	ldr	r3, [sp, #0]
 8005110:	f85a 3003 	ldr.w	r3, [sl, r3]
 8005114:	b98b      	cbnz	r3, 800513a <quorem+0xae>
 8005116:	9a01      	ldr	r2, [sp, #4]
 8005118:	1f13      	subs	r3, r2, #4
 800511a:	459a      	cmp	sl, r3
 800511c:	d20c      	bcs.n	8005138 <quorem+0xac>
 800511e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8005122:	b94b      	cbnz	r3, 8005138 <quorem+0xac>
 8005124:	f1a2 0308 	sub.w	r3, r2, #8
 8005128:	e002      	b.n	8005130 <quorem+0xa4>
 800512a:	681a      	ldr	r2, [r3, #0]
 800512c:	3b04      	subs	r3, #4
 800512e:	b91a      	cbnz	r2, 8005138 <quorem+0xac>
 8005130:	459a      	cmp	sl, r3
 8005132:	f107 37ff 	add.w	r7, r7, #4294967295
 8005136:	d3f8      	bcc.n	800512a <quorem+0x9e>
 8005138:	6107      	str	r7, [r0, #16]
 800513a:	4604      	mov	r4, r0
 800513c:	f001 ffba 	bl	80070b4 <__mcmp>
 8005140:	2800      	cmp	r0, #0
 8005142:	db2d      	blt.n	80051a0 <quorem+0x114>
 8005144:	f108 0801 	add.w	r8, r8, #1
 8005148:	4655      	mov	r5, sl
 800514a:	2300      	movs	r3, #0
 800514c:	f859 1b04 	ldr.w	r1, [r9], #4
 8005150:	6828      	ldr	r0, [r5, #0]
 8005152:	b28a      	uxth	r2, r1
 8005154:	1a9a      	subs	r2, r3, r2
 8005156:	0c0b      	lsrs	r3, r1, #16
 8005158:	fa12 f280 	uxtah	r2, r2, r0
 800515c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8005160:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8005164:	b292      	uxth	r2, r2
 8005166:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800516a:	45cb      	cmp	fp, r9
 800516c:	f845 2b04 	str.w	r2, [r5], #4
 8005170:	ea4f 4323 	mov.w	r3, r3, asr #16
 8005174:	d2ea      	bcs.n	800514c <quorem+0xc0>
 8005176:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800517a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800517e:	b97a      	cbnz	r2, 80051a0 <quorem+0x114>
 8005180:	1f1a      	subs	r2, r3, #4
 8005182:	4592      	cmp	sl, r2
 8005184:	d20b      	bcs.n	800519e <quorem+0x112>
 8005186:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800518a:	b942      	cbnz	r2, 800519e <quorem+0x112>
 800518c:	3b08      	subs	r3, #8
 800518e:	e002      	b.n	8005196 <quorem+0x10a>
 8005190:	681a      	ldr	r2, [r3, #0]
 8005192:	3b04      	subs	r3, #4
 8005194:	b91a      	cbnz	r2, 800519e <quorem+0x112>
 8005196:	459a      	cmp	sl, r3
 8005198:	f107 37ff 	add.w	r7, r7, #4294967295
 800519c:	d3f8      	bcc.n	8005190 <quorem+0x104>
 800519e:	6127      	str	r7, [r4, #16]
 80051a0:	4640      	mov	r0, r8
 80051a2:	b003      	add	sp, #12
 80051a4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80051a8:	2000      	movs	r0, #0
 80051aa:	b003      	add	sp, #12
 80051ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080051b0 <_dtoa_r>:
 80051b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80051b4:	ec55 4b10 	vmov	r4, r5, d0
 80051b8:	b09b      	sub	sp, #108	; 0x6c
 80051ba:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80051bc:	9102      	str	r1, [sp, #8]
 80051be:	4681      	mov	r9, r0
 80051c0:	9207      	str	r2, [sp, #28]
 80051c2:	9305      	str	r3, [sp, #20]
 80051c4:	e9cd 4500 	strd	r4, r5, [sp]
 80051c8:	b156      	cbz	r6, 80051e0 <_dtoa_r+0x30>
 80051ca:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80051cc:	6072      	str	r2, [r6, #4]
 80051ce:	2301      	movs	r3, #1
 80051d0:	4093      	lsls	r3, r2
 80051d2:	60b3      	str	r3, [r6, #8]
 80051d4:	4631      	mov	r1, r6
 80051d6:	f001 fd7d 	bl	8006cd4 <_Bfree>
 80051da:	2300      	movs	r3, #0
 80051dc:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80051e0:	f1b5 0800 	subs.w	r8, r5, #0
 80051e4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80051e6:	bfb4      	ite	lt
 80051e8:	2301      	movlt	r3, #1
 80051ea:	2300      	movge	r3, #0
 80051ec:	6013      	str	r3, [r2, #0]
 80051ee:	4b76      	ldr	r3, [pc, #472]	; (80053c8 <_dtoa_r+0x218>)
 80051f0:	bfbc      	itt	lt
 80051f2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80051f6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80051fa:	ea33 0308 	bics.w	r3, r3, r8
 80051fe:	f000 80a6 	beq.w	800534e <_dtoa_r+0x19e>
 8005202:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005206:	2200      	movs	r2, #0
 8005208:	2300      	movs	r3, #0
 800520a:	4630      	mov	r0, r6
 800520c:	4639      	mov	r1, r7
 800520e:	f003 fbc9 	bl	80089a4 <__aeabi_dcmpeq>
 8005212:	4605      	mov	r5, r0
 8005214:	b178      	cbz	r0, 8005236 <_dtoa_r+0x86>
 8005216:	9a05      	ldr	r2, [sp, #20]
 8005218:	2301      	movs	r3, #1
 800521a:	6013      	str	r3, [r2, #0]
 800521c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800521e:	2b00      	cmp	r3, #0
 8005220:	f000 80c0 	beq.w	80053a4 <_dtoa_r+0x1f4>
 8005224:	4b69      	ldr	r3, [pc, #420]	; (80053cc <_dtoa_r+0x21c>)
 8005226:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005228:	f103 3bff 	add.w	fp, r3, #4294967295
 800522c:	6013      	str	r3, [r2, #0]
 800522e:	4658      	mov	r0, fp
 8005230:	b01b      	add	sp, #108	; 0x6c
 8005232:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005236:	aa18      	add	r2, sp, #96	; 0x60
 8005238:	a919      	add	r1, sp, #100	; 0x64
 800523a:	ec47 6b10 	vmov	d0, r6, r7
 800523e:	4648      	mov	r0, r9
 8005240:	f001 ffca 	bl	80071d8 <__d2b>
 8005244:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8005248:	4682      	mov	sl, r0
 800524a:	f040 80a0 	bne.w	800538e <_dtoa_r+0x1de>
 800524e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8005252:	442c      	add	r4, r5
 8005254:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8005258:	2b20      	cmp	r3, #32
 800525a:	f340 842e 	ble.w	8005aba <_dtoa_r+0x90a>
 800525e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8005262:	fa08 f803 	lsl.w	r8, r8, r3
 8005266:	9b00      	ldr	r3, [sp, #0]
 8005268:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800526c:	fa23 f000 	lsr.w	r0, r3, r0
 8005270:	ea48 0000 	orr.w	r0, r8, r0
 8005274:	f003 f8b4 	bl	80083e0 <__aeabi_ui2d>
 8005278:	2301      	movs	r3, #1
 800527a:	4606      	mov	r6, r0
 800527c:	3c01      	subs	r4, #1
 800527e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8005282:	930f      	str	r3, [sp, #60]	; 0x3c
 8005284:	4630      	mov	r0, r6
 8005286:	4639      	mov	r1, r7
 8005288:	2200      	movs	r2, #0
 800528a:	4b51      	ldr	r3, [pc, #324]	; (80053d0 <_dtoa_r+0x220>)
 800528c:	f002 ff6a 	bl	8008164 <__aeabi_dsub>
 8005290:	a347      	add	r3, pc, #284	; (adr r3, 80053b0 <_dtoa_r+0x200>)
 8005292:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005296:	f003 f91d 	bl	80084d4 <__aeabi_dmul>
 800529a:	a347      	add	r3, pc, #284	; (adr r3, 80053b8 <_dtoa_r+0x208>)
 800529c:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052a0:	f002 ff62 	bl	8008168 <__adddf3>
 80052a4:	4606      	mov	r6, r0
 80052a6:	4620      	mov	r0, r4
 80052a8:	460f      	mov	r7, r1
 80052aa:	f003 f8a9 	bl	8008400 <__aeabi_i2d>
 80052ae:	a344      	add	r3, pc, #272	; (adr r3, 80053c0 <_dtoa_r+0x210>)
 80052b0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80052b4:	f003 f90e 	bl	80084d4 <__aeabi_dmul>
 80052b8:	4602      	mov	r2, r0
 80052ba:	460b      	mov	r3, r1
 80052bc:	4630      	mov	r0, r6
 80052be:	4639      	mov	r1, r7
 80052c0:	f002 ff52 	bl	8008168 <__adddf3>
 80052c4:	4606      	mov	r6, r0
 80052c6:	460f      	mov	r7, r1
 80052c8:	f003 fbb4 	bl	8008a34 <__aeabi_d2iz>
 80052cc:	2200      	movs	r2, #0
 80052ce:	9006      	str	r0, [sp, #24]
 80052d0:	2300      	movs	r3, #0
 80052d2:	4630      	mov	r0, r6
 80052d4:	4639      	mov	r1, r7
 80052d6:	f003 fb6f 	bl	80089b8 <__aeabi_dcmplt>
 80052da:	2800      	cmp	r0, #0
 80052dc:	f040 8273 	bne.w	80057c6 <_dtoa_r+0x616>
 80052e0:	9e06      	ldr	r6, [sp, #24]
 80052e2:	2e16      	cmp	r6, #22
 80052e4:	f200 825d 	bhi.w	80057a2 <_dtoa_r+0x5f2>
 80052e8:	4b3a      	ldr	r3, [pc, #232]	; (80053d4 <_dtoa_r+0x224>)
 80052ea:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80052ee:	e9d3 0100 	ldrd	r0, r1, [r3]
 80052f2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80052f6:	f003 fb7d 	bl	80089f4 <__aeabi_dcmpgt>
 80052fa:	2800      	cmp	r0, #0
 80052fc:	f000 83d9 	beq.w	8005ab2 <_dtoa_r+0x902>
 8005300:	1e73      	subs	r3, r6, #1
 8005302:	9306      	str	r3, [sp, #24]
 8005304:	2300      	movs	r3, #0
 8005306:	930d      	str	r3, [sp, #52]	; 0x34
 8005308:	1b2c      	subs	r4, r5, r4
 800530a:	f1b4 0801 	subs.w	r8, r4, #1
 800530e:	f100 8254 	bmi.w	80057ba <_dtoa_r+0x60a>
 8005312:	2300      	movs	r3, #0
 8005314:	9308      	str	r3, [sp, #32]
 8005316:	9b06      	ldr	r3, [sp, #24]
 8005318:	2b00      	cmp	r3, #0
 800531a:	f2c0 8245 	blt.w	80057a8 <_dtoa_r+0x5f8>
 800531e:	4498      	add	r8, r3
 8005320:	930c      	str	r3, [sp, #48]	; 0x30
 8005322:	2300      	movs	r3, #0
 8005324:	930b      	str	r3, [sp, #44]	; 0x2c
 8005326:	9b02      	ldr	r3, [sp, #8]
 8005328:	2b09      	cmp	r3, #9
 800532a:	d85b      	bhi.n	80053e4 <_dtoa_r+0x234>
 800532c:	2b05      	cmp	r3, #5
 800532e:	f340 83c2 	ble.w	8005ab6 <_dtoa_r+0x906>
 8005332:	3b04      	subs	r3, #4
 8005334:	9302      	str	r3, [sp, #8]
 8005336:	2500      	movs	r5, #0
 8005338:	9b02      	ldr	r3, [sp, #8]
 800533a:	3b02      	subs	r3, #2
 800533c:	2b03      	cmp	r3, #3
 800533e:	f200 849a 	bhi.w	8005c76 <_dtoa_r+0xac6>
 8005342:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005346:	03e1      	.short	0x03e1
 8005348:	03ea03c1 	.word	0x03ea03c1
 800534c:	04f7      	.short	0x04f7
 800534e:	9a05      	ldr	r2, [sp, #20]
 8005350:	f242 730f 	movw	r3, #9999	; 0x270f
 8005354:	6013      	str	r3, [r2, #0]
 8005356:	9b00      	ldr	r3, [sp, #0]
 8005358:	b983      	cbnz	r3, 800537c <_dtoa_r+0x1cc>
 800535a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800535e:	b96b      	cbnz	r3, 800537c <_dtoa_r+0x1cc>
 8005360:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005362:	f8df b074 	ldr.w	fp, [pc, #116]	; 80053d8 <_dtoa_r+0x228>
 8005366:	2b00      	cmp	r3, #0
 8005368:	f43f af61 	beq.w	800522e <_dtoa_r+0x7e>
 800536c:	f10b 0308 	add.w	r3, fp, #8
 8005370:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005372:	4658      	mov	r0, fp
 8005374:	6013      	str	r3, [r2, #0]
 8005376:	b01b      	add	sp, #108	; 0x6c
 8005378:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800537c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800537e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80053dc <_dtoa_r+0x22c>
 8005382:	2b00      	cmp	r3, #0
 8005384:	f43f af53 	beq.w	800522e <_dtoa_r+0x7e>
 8005388:	f10b 0303 	add.w	r3, fp, #3
 800538c:	e7f0      	b.n	8005370 <_dtoa_r+0x1c0>
 800538e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8005392:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8005396:	950f      	str	r5, [sp, #60]	; 0x3c
 8005398:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800539c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80053a0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80053a2:	e76f      	b.n	8005284 <_dtoa_r+0xd4>
 80053a4:	f8df b038 	ldr.w	fp, [pc, #56]	; 80053e0 <_dtoa_r+0x230>
 80053a8:	4658      	mov	r0, fp
 80053aa:	b01b      	add	sp, #108	; 0x6c
 80053ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80053b0:	636f4361 	.word	0x636f4361
 80053b4:	3fd287a7 	.word	0x3fd287a7
 80053b8:	8b60c8b3 	.word	0x8b60c8b3
 80053bc:	3fc68a28 	.word	0x3fc68a28
 80053c0:	509f79fb 	.word	0x509f79fb
 80053c4:	3fd34413 	.word	0x3fd34413
 80053c8:	7ff00000 	.word	0x7ff00000
 80053cc:	0800965d 	.word	0x0800965d
 80053d0:	3ff80000 	.word	0x3ff80000
 80053d4:	080096b8 	.word	0x080096b8
 80053d8:	08009680 	.word	0x08009680
 80053dc:	0800968c 	.word	0x0800968c
 80053e0:	0800965c 	.word	0x0800965c
 80053e4:	f04f 34ff 	mov.w	r4, #4294967295
 80053e8:	2501      	movs	r5, #1
 80053ea:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80053ee:	2300      	movs	r3, #0
 80053f0:	9302      	str	r3, [sp, #8]
 80053f2:	9307      	str	r3, [sp, #28]
 80053f4:	2100      	movs	r1, #0
 80053f6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80053fa:	940e      	str	r4, [sp, #56]	; 0x38
 80053fc:	4648      	mov	r0, r9
 80053fe:	f001 fc43 	bl	8006c88 <_Balloc>
 8005402:	2c0e      	cmp	r4, #14
 8005404:	4683      	mov	fp, r0
 8005406:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800540a:	f200 80fb 	bhi.w	8005604 <_dtoa_r+0x454>
 800540e:	2d00      	cmp	r5, #0
 8005410:	f000 80f8 	beq.w	8005604 <_dtoa_r+0x454>
 8005414:	ed9d 7b00 	vldr	d7, [sp]
 8005418:	9906      	ldr	r1, [sp, #24]
 800541a:	2900      	cmp	r1, #0
 800541c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005420:	f340 83e7 	ble.w	8005bf2 <_dtoa_r+0xa42>
 8005424:	4b9d      	ldr	r3, [pc, #628]	; (800569c <_dtoa_r+0x4ec>)
 8005426:	f001 020f 	and.w	r2, r1, #15
 800542a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800542e:	ed93 7b00 	vldr	d7, [r3]
 8005432:	110c      	asrs	r4, r1, #4
 8005434:	06e2      	lsls	r2, r4, #27
 8005436:	ed8d 7b00 	vstr	d7, [sp]
 800543a:	f140 84a1 	bpl.w	8005d80 <_dtoa_r+0xbd0>
 800543e:	4b98      	ldr	r3, [pc, #608]	; (80056a0 <_dtoa_r+0x4f0>)
 8005440:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005444:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005448:	f003 f96e 	bl	8008728 <__aeabi_ddiv>
 800544c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8005450:	f004 040f 	and.w	r4, r4, #15
 8005454:	2603      	movs	r6, #3
 8005456:	b17c      	cbz	r4, 8005478 <_dtoa_r+0x2c8>
 8005458:	e9dd 0100 	ldrd	r0, r1, [sp]
 800545c:	4d90      	ldr	r5, [pc, #576]	; (80056a0 <_dtoa_r+0x4f0>)
 800545e:	07e3      	lsls	r3, r4, #31
 8005460:	d504      	bpl.n	800546c <_dtoa_r+0x2bc>
 8005462:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005466:	f003 f835 	bl	80084d4 <__aeabi_dmul>
 800546a:	3601      	adds	r6, #1
 800546c:	1064      	asrs	r4, r4, #1
 800546e:	f105 0508 	add.w	r5, r5, #8
 8005472:	d1f4      	bne.n	800545e <_dtoa_r+0x2ae>
 8005474:	e9cd 0100 	strd	r0, r1, [sp]
 8005478:	e9dd 2300 	ldrd	r2, r3, [sp]
 800547c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005480:	f003 f952 	bl	8008728 <__aeabi_ddiv>
 8005484:	e9cd 0100 	strd	r0, r1, [sp]
 8005488:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800548a:	b143      	cbz	r3, 800549e <_dtoa_r+0x2ee>
 800548c:	2200      	movs	r2, #0
 800548e:	4b85      	ldr	r3, [pc, #532]	; (80056a4 <_dtoa_r+0x4f4>)
 8005490:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005494:	f003 fa90 	bl	80089b8 <__aeabi_dcmplt>
 8005498:	2800      	cmp	r0, #0
 800549a:	f040 8503 	bne.w	8005ea4 <_dtoa_r+0xcf4>
 800549e:	4630      	mov	r0, r6
 80054a0:	f002 ffae 	bl	8008400 <__aeabi_i2d>
 80054a4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80054a8:	f003 f814 	bl	80084d4 <__aeabi_dmul>
 80054ac:	4b7e      	ldr	r3, [pc, #504]	; (80056a8 <_dtoa_r+0x4f8>)
 80054ae:	2200      	movs	r2, #0
 80054b0:	f002 fe5a 	bl	8008168 <__adddf3>
 80054b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80054b6:	4606      	mov	r6, r0
 80054b8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80054bc:	2b00      	cmp	r3, #0
 80054be:	f000 841e 	beq.w	8005cfe <_dtoa_r+0xb4e>
 80054c2:	9b06      	ldr	r3, [sp, #24]
 80054c4:	9316      	str	r3, [sp, #88]	; 0x58
 80054c6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80054c8:	9312      	str	r3, [sp, #72]	; 0x48
 80054ca:	e9dd 0100 	ldrd	r0, r1, [sp]
 80054ce:	f003 fab1 	bl	8008a34 <__aeabi_d2iz>
 80054d2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80054d4:	4b71      	ldr	r3, [pc, #452]	; (800569c <_dtoa_r+0x4ec>)
 80054d6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80054da:	ed13 7b02 	vldr	d7, [r3, #-8]
 80054de:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80054e2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80054e6:	f002 ff8b 	bl	8008400 <__aeabi_i2d>
 80054ea:	460b      	mov	r3, r1
 80054ec:	4602      	mov	r2, r0
 80054ee:	e9dd 0100 	ldrd	r0, r1, [sp]
 80054f2:	e9cd 6700 	strd	r6, r7, [sp]
 80054f6:	f002 fe35 	bl	8008164 <__aeabi_dsub>
 80054fa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80054fc:	b2ed      	uxtb	r5, r5
 80054fe:	4606      	mov	r6, r0
 8005500:	460f      	mov	r7, r1
 8005502:	f10b 0401 	add.w	r4, fp, #1
 8005506:	2b00      	cmp	r3, #0
 8005508:	f000 845b 	beq.w	8005dc2 <_dtoa_r+0xc12>
 800550c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005510:	2000      	movs	r0, #0
 8005512:	4966      	ldr	r1, [pc, #408]	; (80056ac <_dtoa_r+0x4fc>)
 8005514:	f003 f908 	bl	8008728 <__aeabi_ddiv>
 8005518:	e9dd 2300 	ldrd	r2, r3, [sp]
 800551c:	f002 fe22 	bl	8008164 <__aeabi_dsub>
 8005520:	f88b 5000 	strb.w	r5, [fp]
 8005524:	4632      	mov	r2, r6
 8005526:	463b      	mov	r3, r7
 8005528:	e9cd 0100 	strd	r0, r1, [sp]
 800552c:	f003 fa62 	bl	80089f4 <__aeabi_dcmpgt>
 8005530:	2800      	cmp	r0, #0
 8005532:	f040 8506 	bne.w	8005f42 <_dtoa_r+0xd92>
 8005536:	4632      	mov	r2, r6
 8005538:	463b      	mov	r3, r7
 800553a:	2000      	movs	r0, #0
 800553c:	4959      	ldr	r1, [pc, #356]	; (80056a4 <_dtoa_r+0x4f4>)
 800553e:	f002 fe11 	bl	8008164 <__aeabi_dsub>
 8005542:	4602      	mov	r2, r0
 8005544:	460b      	mov	r3, r1
 8005546:	e9dd 0100 	ldrd	r0, r1, [sp]
 800554a:	f003 fa53 	bl	80089f4 <__aeabi_dcmpgt>
 800554e:	2800      	cmp	r0, #0
 8005550:	f040 84ff 	bne.w	8005f52 <_dtoa_r+0xda2>
 8005554:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005556:	2a01      	cmp	r2, #1
 8005558:	d050      	beq.n	80055fc <_dtoa_r+0x44c>
 800555a:	445a      	add	r2, fp
 800555c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005560:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8005564:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005568:	4692      	mov	sl, r2
 800556a:	46cb      	mov	fp, r9
 800556c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005570:	e00c      	b.n	800558c <_dtoa_r+0x3dc>
 8005572:	2000      	movs	r0, #0
 8005574:	494b      	ldr	r1, [pc, #300]	; (80056a4 <_dtoa_r+0x4f4>)
 8005576:	f002 fdf5 	bl	8008164 <__aeabi_dsub>
 800557a:	4642      	mov	r2, r8
 800557c:	464b      	mov	r3, r9
 800557e:	f003 fa1b 	bl	80089b8 <__aeabi_dcmplt>
 8005582:	2800      	cmp	r0, #0
 8005584:	f040 84e0 	bne.w	8005f48 <_dtoa_r+0xd98>
 8005588:	4554      	cmp	r4, sl
 800558a:	d030      	beq.n	80055ee <_dtoa_r+0x43e>
 800558c:	4640      	mov	r0, r8
 800558e:	4649      	mov	r1, r9
 8005590:	2200      	movs	r2, #0
 8005592:	4b47      	ldr	r3, [pc, #284]	; (80056b0 <_dtoa_r+0x500>)
 8005594:	f002 ff9e 	bl	80084d4 <__aeabi_dmul>
 8005598:	2200      	movs	r2, #0
 800559a:	4b45      	ldr	r3, [pc, #276]	; (80056b0 <_dtoa_r+0x500>)
 800559c:	4680      	mov	r8, r0
 800559e:	4689      	mov	r9, r1
 80055a0:	4630      	mov	r0, r6
 80055a2:	4639      	mov	r1, r7
 80055a4:	f002 ff96 	bl	80084d4 <__aeabi_dmul>
 80055a8:	460f      	mov	r7, r1
 80055aa:	4606      	mov	r6, r0
 80055ac:	f003 fa42 	bl	8008a34 <__aeabi_d2iz>
 80055b0:	4605      	mov	r5, r0
 80055b2:	f002 ff25 	bl	8008400 <__aeabi_i2d>
 80055b6:	4602      	mov	r2, r0
 80055b8:	460b      	mov	r3, r1
 80055ba:	4630      	mov	r0, r6
 80055bc:	4639      	mov	r1, r7
 80055be:	f002 fdd1 	bl	8008164 <__aeabi_dsub>
 80055c2:	3530      	adds	r5, #48	; 0x30
 80055c4:	b2ed      	uxtb	r5, r5
 80055c6:	4642      	mov	r2, r8
 80055c8:	464b      	mov	r3, r9
 80055ca:	f804 5b01 	strb.w	r5, [r4], #1
 80055ce:	4606      	mov	r6, r0
 80055d0:	460f      	mov	r7, r1
 80055d2:	f003 f9f1 	bl	80089b8 <__aeabi_dcmplt>
 80055d6:	4632      	mov	r2, r6
 80055d8:	463b      	mov	r3, r7
 80055da:	2800      	cmp	r0, #0
 80055dc:	d0c9      	beq.n	8005572 <_dtoa_r+0x3c2>
 80055de:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80055e0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80055e4:	9306      	str	r3, [sp, #24]
 80055e6:	46d9      	mov	r9, fp
 80055e8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80055ec:	e238      	b.n	8005a60 <_dtoa_r+0x8b0>
 80055ee:	46d9      	mov	r9, fp
 80055f0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80055f4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80055f8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80055fc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8005600:	e9cd 3400 	strd	r3, r4, [sp]
 8005604:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8005606:	2b00      	cmp	r3, #0
 8005608:	f2c0 80ae 	blt.w	8005768 <_dtoa_r+0x5b8>
 800560c:	9a06      	ldr	r2, [sp, #24]
 800560e:	2a0e      	cmp	r2, #14
 8005610:	f300 80aa 	bgt.w	8005768 <_dtoa_r+0x5b8>
 8005614:	4b21      	ldr	r3, [pc, #132]	; (800569c <_dtoa_r+0x4ec>)
 8005616:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800561a:	ed93 7b00 	vldr	d7, [r3]
 800561e:	9b07      	ldr	r3, [sp, #28]
 8005620:	2b00      	cmp	r3, #0
 8005622:	ed8d 7b02 	vstr	d7, [sp, #8]
 8005626:	f2c0 82c0 	blt.w	8005baa <_dtoa_r+0x9fa>
 800562a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800562e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005632:	4630      	mov	r0, r6
 8005634:	4639      	mov	r1, r7
 8005636:	f003 f877 	bl	8008728 <__aeabi_ddiv>
 800563a:	f003 f9fb 	bl	8008a34 <__aeabi_d2iz>
 800563e:	4605      	mov	r5, r0
 8005640:	f002 fede 	bl	8008400 <__aeabi_i2d>
 8005644:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005648:	f002 ff44 	bl	80084d4 <__aeabi_dmul>
 800564c:	460b      	mov	r3, r1
 800564e:	4602      	mov	r2, r0
 8005650:	4639      	mov	r1, r7
 8005652:	4630      	mov	r0, r6
 8005654:	f002 fd86 	bl	8008164 <__aeabi_dsub>
 8005658:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800565c:	f88b 3000 	strb.w	r3, [fp]
 8005660:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005662:	2b01      	cmp	r3, #1
 8005664:	4606      	mov	r6, r0
 8005666:	460f      	mov	r7, r1
 8005668:	f10b 0401 	add.w	r4, fp, #1
 800566c:	d053      	beq.n	8005716 <_dtoa_r+0x566>
 800566e:	2200      	movs	r2, #0
 8005670:	4b0f      	ldr	r3, [pc, #60]	; (80056b0 <_dtoa_r+0x500>)
 8005672:	f002 ff2f 	bl	80084d4 <__aeabi_dmul>
 8005676:	2200      	movs	r2, #0
 8005678:	2300      	movs	r3, #0
 800567a:	4606      	mov	r6, r0
 800567c:	460f      	mov	r7, r1
 800567e:	f003 f991 	bl	80089a4 <__aeabi_dcmpeq>
 8005682:	2800      	cmp	r0, #0
 8005684:	f040 81ec 	bne.w	8005a60 <_dtoa_r+0x8b0>
 8005688:	f8cd a000 	str.w	sl, [sp]
 800568c:	f8cd 901c 	str.w	r9, [sp, #28]
 8005690:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005694:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005698:	e017      	b.n	80056ca <_dtoa_r+0x51a>
 800569a:	bf00      	nop
 800569c:	080096b8 	.word	0x080096b8
 80056a0:	08009690 	.word	0x08009690
 80056a4:	3ff00000 	.word	0x3ff00000
 80056a8:	401c0000 	.word	0x401c0000
 80056ac:	3fe00000 	.word	0x3fe00000
 80056b0:	40240000 	.word	0x40240000
 80056b4:	f002 ff0e 	bl	80084d4 <__aeabi_dmul>
 80056b8:	2200      	movs	r2, #0
 80056ba:	2300      	movs	r3, #0
 80056bc:	4606      	mov	r6, r0
 80056be:	460f      	mov	r7, r1
 80056c0:	f003 f970 	bl	80089a4 <__aeabi_dcmpeq>
 80056c4:	2800      	cmp	r0, #0
 80056c6:	f040 833f 	bne.w	8005d48 <_dtoa_r+0xb98>
 80056ca:	464a      	mov	r2, r9
 80056cc:	4653      	mov	r3, sl
 80056ce:	4630      	mov	r0, r6
 80056d0:	4639      	mov	r1, r7
 80056d2:	f003 f829 	bl	8008728 <__aeabi_ddiv>
 80056d6:	f003 f9ad 	bl	8008a34 <__aeabi_d2iz>
 80056da:	4605      	mov	r5, r0
 80056dc:	f002 fe90 	bl	8008400 <__aeabi_i2d>
 80056e0:	464a      	mov	r2, r9
 80056e2:	4653      	mov	r3, sl
 80056e4:	f002 fef6 	bl	80084d4 <__aeabi_dmul>
 80056e8:	4602      	mov	r2, r0
 80056ea:	460b      	mov	r3, r1
 80056ec:	4630      	mov	r0, r6
 80056ee:	4639      	mov	r1, r7
 80056f0:	f002 fd38 	bl	8008164 <__aeabi_dsub>
 80056f4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80056f8:	f804 cb01 	strb.w	ip, [r4], #1
 80056fc:	eba4 0c0b 	sub.w	ip, r4, fp
 8005700:	45e0      	cmp	r8, ip
 8005702:	4606      	mov	r6, r0
 8005704:	460f      	mov	r7, r1
 8005706:	f04f 0200 	mov.w	r2, #0
 800570a:	4bc2      	ldr	r3, [pc, #776]	; (8005a14 <_dtoa_r+0x864>)
 800570c:	d1d2      	bne.n	80056b4 <_dtoa_r+0x504>
 800570e:	f8dd a000 	ldr.w	sl, [sp]
 8005712:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005716:	4632      	mov	r2, r6
 8005718:	463b      	mov	r3, r7
 800571a:	4630      	mov	r0, r6
 800571c:	4639      	mov	r1, r7
 800571e:	f002 fd23 	bl	8008168 <__adddf3>
 8005722:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005726:	4606      	mov	r6, r0
 8005728:	460f      	mov	r7, r1
 800572a:	f003 f963 	bl	80089f4 <__aeabi_dcmpgt>
 800572e:	b958      	cbnz	r0, 8005748 <_dtoa_r+0x598>
 8005730:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005734:	4630      	mov	r0, r6
 8005736:	4639      	mov	r1, r7
 8005738:	f003 f934 	bl	80089a4 <__aeabi_dcmpeq>
 800573c:	2800      	cmp	r0, #0
 800573e:	f000 818f 	beq.w	8005a60 <_dtoa_r+0x8b0>
 8005742:	07e9      	lsls	r1, r5, #31
 8005744:	f140 818c 	bpl.w	8005a60 <_dtoa_r+0x8b0>
 8005748:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800574c:	e005      	b.n	800575a <_dtoa_r+0x5aa>
 800574e:	459b      	cmp	fp, r3
 8005750:	f000 8376 	beq.w	8005e40 <_dtoa_r+0xc90>
 8005754:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005758:	461c      	mov	r4, r3
 800575a:	2d39      	cmp	r5, #57	; 0x39
 800575c:	f104 33ff 	add.w	r3, r4, #4294967295
 8005760:	d0f5      	beq.n	800574e <_dtoa_r+0x59e>
 8005762:	3501      	adds	r5, #1
 8005764:	701d      	strb	r5, [r3, #0]
 8005766:	e17b      	b.n	8005a60 <_dtoa_r+0x8b0>
 8005768:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800576a:	2a00      	cmp	r2, #0
 800576c:	d03b      	beq.n	80057e6 <_dtoa_r+0x636>
 800576e:	9a02      	ldr	r2, [sp, #8]
 8005770:	2a01      	cmp	r2, #1
 8005772:	f340 820d 	ble.w	8005b90 <_dtoa_r+0x9e0>
 8005776:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005778:	1e5f      	subs	r7, r3, #1
 800577a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800577c:	42bb      	cmp	r3, r7
 800577e:	f2c0 82e8 	blt.w	8005d52 <_dtoa_r+0xba2>
 8005782:	1bdf      	subs	r7, r3, r7
 8005784:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005786:	2b00      	cmp	r3, #0
 8005788:	f2c0 830e 	blt.w	8005da8 <_dtoa_r+0xbf8>
 800578c:	9a08      	ldr	r2, [sp, #32]
 800578e:	4614      	mov	r4, r2
 8005790:	441a      	add	r2, r3
 8005792:	4498      	add	r8, r3
 8005794:	9208      	str	r2, [sp, #32]
 8005796:	2101      	movs	r1, #1
 8005798:	4648      	mov	r0, r9
 800579a:	f001 fb35 	bl	8006e08 <__i2b>
 800579e:	4605      	mov	r5, r0
 80057a0:	e024      	b.n	80057ec <_dtoa_r+0x63c>
 80057a2:	2301      	movs	r3, #1
 80057a4:	930d      	str	r3, [sp, #52]	; 0x34
 80057a6:	e5af      	b.n	8005308 <_dtoa_r+0x158>
 80057a8:	9a08      	ldr	r2, [sp, #32]
 80057aa:	9b06      	ldr	r3, [sp, #24]
 80057ac:	1ad2      	subs	r2, r2, r3
 80057ae:	425b      	negs	r3, r3
 80057b0:	930b      	str	r3, [sp, #44]	; 0x2c
 80057b2:	2300      	movs	r3, #0
 80057b4:	9208      	str	r2, [sp, #32]
 80057b6:	930c      	str	r3, [sp, #48]	; 0x30
 80057b8:	e5b5      	b.n	8005326 <_dtoa_r+0x176>
 80057ba:	f1c4 0301 	rsb	r3, r4, #1
 80057be:	9308      	str	r3, [sp, #32]
 80057c0:	f04f 0800 	mov.w	r8, #0
 80057c4:	e5a7      	b.n	8005316 <_dtoa_r+0x166>
 80057c6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80057ca:	4640      	mov	r0, r8
 80057cc:	f002 fe18 	bl	8008400 <__aeabi_i2d>
 80057d0:	4632      	mov	r2, r6
 80057d2:	463b      	mov	r3, r7
 80057d4:	f003 f8e6 	bl	80089a4 <__aeabi_dcmpeq>
 80057d8:	2800      	cmp	r0, #0
 80057da:	f47f ad81 	bne.w	80052e0 <_dtoa_r+0x130>
 80057de:	f108 33ff 	add.w	r3, r8, #4294967295
 80057e2:	9306      	str	r3, [sp, #24]
 80057e4:	e57c      	b.n	80052e0 <_dtoa_r+0x130>
 80057e6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80057e8:	9c08      	ldr	r4, [sp, #32]
 80057ea:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80057ec:	2c00      	cmp	r4, #0
 80057ee:	dd0c      	ble.n	800580a <_dtoa_r+0x65a>
 80057f0:	f1b8 0f00 	cmp.w	r8, #0
 80057f4:	dd09      	ble.n	800580a <_dtoa_r+0x65a>
 80057f6:	4544      	cmp	r4, r8
 80057f8:	9a08      	ldr	r2, [sp, #32]
 80057fa:	4623      	mov	r3, r4
 80057fc:	bfa8      	it	ge
 80057fe:	4643      	movge	r3, r8
 8005800:	1ad2      	subs	r2, r2, r3
 8005802:	9208      	str	r2, [sp, #32]
 8005804:	1ae4      	subs	r4, r4, r3
 8005806:	eba8 0803 	sub.w	r8, r8, r3
 800580a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800580c:	b16b      	cbz	r3, 800582a <_dtoa_r+0x67a>
 800580e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005810:	2a00      	cmp	r2, #0
 8005812:	f000 8292 	beq.w	8005d3a <_dtoa_r+0xb8a>
 8005816:	1bde      	subs	r6, r3, r7
 8005818:	2f00      	cmp	r7, #0
 800581a:	f040 819d 	bne.w	8005b58 <_dtoa_r+0x9a8>
 800581e:	4651      	mov	r1, sl
 8005820:	4632      	mov	r2, r6
 8005822:	4648      	mov	r0, r9
 8005824:	f001 fba0 	bl	8006f68 <__pow5mult>
 8005828:	4682      	mov	sl, r0
 800582a:	2101      	movs	r1, #1
 800582c:	4648      	mov	r0, r9
 800582e:	f001 faeb 	bl	8006e08 <__i2b>
 8005832:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005834:	4606      	mov	r6, r0
 8005836:	2a00      	cmp	r2, #0
 8005838:	f040 8127 	bne.w	8005a8a <_dtoa_r+0x8da>
 800583c:	9b02      	ldr	r3, [sp, #8]
 800583e:	2b01      	cmp	r3, #1
 8005840:	f340 816e 	ble.w	8005b20 <_dtoa_r+0x970>
 8005844:	2001      	movs	r0, #1
 8005846:	4440      	add	r0, r8
 8005848:	f010 001f 	ands.w	r0, r0, #31
 800584c:	f000 811b 	beq.w	8005a86 <_dtoa_r+0x8d6>
 8005850:	f1c0 0320 	rsb	r3, r0, #32
 8005854:	2b04      	cmp	r3, #4
 8005856:	f340 83b0 	ble.w	8005fba <_dtoa_r+0xe0a>
 800585a:	f1c0 001c 	rsb	r0, r0, #28
 800585e:	9b08      	ldr	r3, [sp, #32]
 8005860:	4403      	add	r3, r0
 8005862:	9308      	str	r3, [sp, #32]
 8005864:	4404      	add	r4, r0
 8005866:	4480      	add	r8, r0
 8005868:	9b08      	ldr	r3, [sp, #32]
 800586a:	2b00      	cmp	r3, #0
 800586c:	dd05      	ble.n	800587a <_dtoa_r+0x6ca>
 800586e:	4651      	mov	r1, sl
 8005870:	461a      	mov	r2, r3
 8005872:	4648      	mov	r0, r9
 8005874:	f001 fbc8 	bl	8007008 <__lshift>
 8005878:	4682      	mov	sl, r0
 800587a:	f1b8 0f00 	cmp.w	r8, #0
 800587e:	dd05      	ble.n	800588c <_dtoa_r+0x6dc>
 8005880:	4631      	mov	r1, r6
 8005882:	4642      	mov	r2, r8
 8005884:	4648      	mov	r0, r9
 8005886:	f001 fbbf 	bl	8007008 <__lshift>
 800588a:	4606      	mov	r6, r0
 800588c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800588e:	2b00      	cmp	r3, #0
 8005890:	d178      	bne.n	8005984 <_dtoa_r+0x7d4>
 8005892:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005894:	2b00      	cmp	r3, #0
 8005896:	f340 820b 	ble.w	8005cb0 <_dtoa_r+0xb00>
 800589a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800589c:	2b00      	cmp	r3, #0
 800589e:	f000 808a 	beq.w	80059b6 <_dtoa_r+0x806>
 80058a2:	2c00      	cmp	r4, #0
 80058a4:	f300 816d 	bgt.w	8005b82 <_dtoa_r+0x9d2>
 80058a8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80058aa:	2b00      	cmp	r3, #0
 80058ac:	f040 81cf 	bne.w	8005c4e <_dtoa_r+0xa9e>
 80058b0:	46a8      	mov	r8, r5
 80058b2:	9a00      	ldr	r2, [sp, #0]
 80058b4:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80058b8:	f002 0201 	and.w	r2, r2, #1
 80058bc:	920a      	str	r2, [sp, #40]	; 0x28
 80058be:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80058c0:	f10b 33ff 	add.w	r3, fp, #4294967295
 80058c4:	441a      	add	r2, r3
 80058c6:	465f      	mov	r7, fp
 80058c8:	9209      	str	r2, [sp, #36]	; 0x24
 80058ca:	46b3      	mov	fp, r6
 80058cc:	4659      	mov	r1, fp
 80058ce:	4650      	mov	r0, sl
 80058d0:	f7ff fbdc 	bl	800508c <quorem>
 80058d4:	4629      	mov	r1, r5
 80058d6:	4604      	mov	r4, r0
 80058d8:	4650      	mov	r0, sl
 80058da:	f001 fbeb 	bl	80070b4 <__mcmp>
 80058de:	4659      	mov	r1, fp
 80058e0:	4606      	mov	r6, r0
 80058e2:	4642      	mov	r2, r8
 80058e4:	4648      	mov	r0, r9
 80058e6:	f001 fc01 	bl	80070ec <__mdiff>
 80058ea:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80058ee:	9300      	str	r3, [sp, #0]
 80058f0:	68c3      	ldr	r3, [r0, #12]
 80058f2:	4601      	mov	r1, r0
 80058f4:	2b00      	cmp	r3, #0
 80058f6:	f040 81d6 	bne.w	8005ca6 <_dtoa_r+0xaf6>
 80058fa:	9008      	str	r0, [sp, #32]
 80058fc:	4650      	mov	r0, sl
 80058fe:	f001 fbd9 	bl	80070b4 <__mcmp>
 8005902:	9a08      	ldr	r2, [sp, #32]
 8005904:	9007      	str	r0, [sp, #28]
 8005906:	4611      	mov	r1, r2
 8005908:	4648      	mov	r0, r9
 800590a:	f001 f9e3 	bl	8006cd4 <_Bfree>
 800590e:	9b07      	ldr	r3, [sp, #28]
 8005910:	b933      	cbnz	r3, 8005920 <_dtoa_r+0x770>
 8005912:	9a02      	ldr	r2, [sp, #8]
 8005914:	b922      	cbnz	r2, 8005920 <_dtoa_r+0x770>
 8005916:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005918:	2b00      	cmp	r3, #0
 800591a:	f000 831d 	beq.w	8005f58 <_dtoa_r+0xda8>
 800591e:	9b02      	ldr	r3, [sp, #8]
 8005920:	2e00      	cmp	r6, #0
 8005922:	f2c0 821e 	blt.w	8005d62 <_dtoa_r+0xbb2>
 8005926:	d105      	bne.n	8005934 <_dtoa_r+0x784>
 8005928:	9a02      	ldr	r2, [sp, #8]
 800592a:	b91a      	cbnz	r2, 8005934 <_dtoa_r+0x784>
 800592c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800592e:	2a00      	cmp	r2, #0
 8005930:	f000 8217 	beq.w	8005d62 <_dtoa_r+0xbb2>
 8005934:	2b00      	cmp	r3, #0
 8005936:	f107 0401 	add.w	r4, r7, #1
 800593a:	f300 8228 	bgt.w	8005d8e <_dtoa_r+0xbde>
 800593e:	f89d 3000 	ldrb.w	r3, [sp]
 8005942:	703b      	strb	r3, [r7, #0]
 8005944:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005946:	42bb      	cmp	r3, r7
 8005948:	f000 8232 	beq.w	8005db0 <_dtoa_r+0xc00>
 800594c:	4651      	mov	r1, sl
 800594e:	2300      	movs	r3, #0
 8005950:	220a      	movs	r2, #10
 8005952:	4648      	mov	r0, r9
 8005954:	f001 f9c8 	bl	8006ce8 <__multadd>
 8005958:	4545      	cmp	r5, r8
 800595a:	4682      	mov	sl, r0
 800595c:	4629      	mov	r1, r5
 800595e:	f04f 0300 	mov.w	r3, #0
 8005962:	f04f 020a 	mov.w	r2, #10
 8005966:	4648      	mov	r0, r9
 8005968:	f000 8197 	beq.w	8005c9a <_dtoa_r+0xaea>
 800596c:	f001 f9bc 	bl	8006ce8 <__multadd>
 8005970:	4641      	mov	r1, r8
 8005972:	4605      	mov	r5, r0
 8005974:	2300      	movs	r3, #0
 8005976:	220a      	movs	r2, #10
 8005978:	4648      	mov	r0, r9
 800597a:	f001 f9b5 	bl	8006ce8 <__multadd>
 800597e:	4627      	mov	r7, r4
 8005980:	4680      	mov	r8, r0
 8005982:	e7a3      	b.n	80058cc <_dtoa_r+0x71c>
 8005984:	4631      	mov	r1, r6
 8005986:	4650      	mov	r0, sl
 8005988:	f001 fb94 	bl	80070b4 <__mcmp>
 800598c:	2800      	cmp	r0, #0
 800598e:	da80      	bge.n	8005892 <_dtoa_r+0x6e2>
 8005990:	9f06      	ldr	r7, [sp, #24]
 8005992:	4651      	mov	r1, sl
 8005994:	2300      	movs	r3, #0
 8005996:	220a      	movs	r2, #10
 8005998:	4648      	mov	r0, r9
 800599a:	3f01      	subs	r7, #1
 800599c:	9706      	str	r7, [sp, #24]
 800599e:	f001 f9a3 	bl	8006ce8 <__multadd>
 80059a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80059a4:	4682      	mov	sl, r0
 80059a6:	2b00      	cmp	r3, #0
 80059a8:	f040 82ee 	bne.w	8005f88 <_dtoa_r+0xdd8>
 80059ac:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80059ae:	2b00      	cmp	r3, #0
 80059b0:	f340 82f6 	ble.w	8005fa0 <_dtoa_r+0xdf0>
 80059b4:	9309      	str	r3, [sp, #36]	; 0x24
 80059b6:	465c      	mov	r4, fp
 80059b8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80059bc:	e002      	b.n	80059c4 <_dtoa_r+0x814>
 80059be:	f001 f993 	bl	8006ce8 <__multadd>
 80059c2:	4682      	mov	sl, r0
 80059c4:	4631      	mov	r1, r6
 80059c6:	4650      	mov	r0, sl
 80059c8:	f7ff fb60 	bl	800508c <quorem>
 80059cc:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80059d0:	f804 7b01 	strb.w	r7, [r4], #1
 80059d4:	eba4 030b 	sub.w	r3, r4, fp
 80059d8:	4598      	cmp	r8, r3
 80059da:	f04f 020a 	mov.w	r2, #10
 80059de:	f04f 0300 	mov.w	r3, #0
 80059e2:	4651      	mov	r1, sl
 80059e4:	4648      	mov	r0, r9
 80059e6:	dcea      	bgt.n	80059be <_dtoa_r+0x80e>
 80059e8:	2300      	movs	r3, #0
 80059ea:	9700      	str	r7, [sp, #0]
 80059ec:	9302      	str	r3, [sp, #8]
 80059ee:	4651      	mov	r1, sl
 80059f0:	2201      	movs	r2, #1
 80059f2:	4648      	mov	r0, r9
 80059f4:	f001 fb08 	bl	8007008 <__lshift>
 80059f8:	4631      	mov	r1, r6
 80059fa:	4682      	mov	sl, r0
 80059fc:	f001 fb5a 	bl	80070b4 <__mcmp>
 8005a00:	2800      	cmp	r0, #0
 8005a02:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8005a06:	dc15      	bgt.n	8005a34 <_dtoa_r+0x884>
 8005a08:	d109      	bne.n	8005a1e <_dtoa_r+0x86e>
 8005a0a:	9b00      	ldr	r3, [sp, #0]
 8005a0c:	07db      	lsls	r3, r3, #31
 8005a0e:	d411      	bmi.n	8005a34 <_dtoa_r+0x884>
 8005a10:	e005      	b.n	8005a1e <_dtoa_r+0x86e>
 8005a12:	bf00      	nop
 8005a14:	40240000 	.word	0x40240000
 8005a18:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005a1c:	461c      	mov	r4, r3
 8005a1e:	2a30      	cmp	r2, #48	; 0x30
 8005a20:	f104 33ff 	add.w	r3, r4, #4294967295
 8005a24:	d0f8      	beq.n	8005a18 <_dtoa_r+0x868>
 8005a26:	e00b      	b.n	8005a40 <_dtoa_r+0x890>
 8005a28:	459b      	cmp	fp, r3
 8005a2a:	f000 814e 	beq.w	8005cca <_dtoa_r+0xb1a>
 8005a2e:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005a32:	461c      	mov	r4, r3
 8005a34:	2a39      	cmp	r2, #57	; 0x39
 8005a36:	f104 33ff 	add.w	r3, r4, #4294967295
 8005a3a:	d0f5      	beq.n	8005a28 <_dtoa_r+0x878>
 8005a3c:	3201      	adds	r2, #1
 8005a3e:	701a      	strb	r2, [r3, #0]
 8005a40:	4631      	mov	r1, r6
 8005a42:	4648      	mov	r0, r9
 8005a44:	f001 f946 	bl	8006cd4 <_Bfree>
 8005a48:	b155      	cbz	r5, 8005a60 <_dtoa_r+0x8b0>
 8005a4a:	9902      	ldr	r1, [sp, #8]
 8005a4c:	b121      	cbz	r1, 8005a58 <_dtoa_r+0x8a8>
 8005a4e:	42a9      	cmp	r1, r5
 8005a50:	d002      	beq.n	8005a58 <_dtoa_r+0x8a8>
 8005a52:	4648      	mov	r0, r9
 8005a54:	f001 f93e 	bl	8006cd4 <_Bfree>
 8005a58:	4629      	mov	r1, r5
 8005a5a:	4648      	mov	r0, r9
 8005a5c:	f001 f93a 	bl	8006cd4 <_Bfree>
 8005a60:	4651      	mov	r1, sl
 8005a62:	4648      	mov	r0, r9
 8005a64:	f001 f936 	bl	8006cd4 <_Bfree>
 8005a68:	2200      	movs	r2, #0
 8005a6a:	9b06      	ldr	r3, [sp, #24]
 8005a6c:	7022      	strb	r2, [r4, #0]
 8005a6e:	9a05      	ldr	r2, [sp, #20]
 8005a70:	3301      	adds	r3, #1
 8005a72:	6013      	str	r3, [r2, #0]
 8005a74:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005a76:	2b00      	cmp	r3, #0
 8005a78:	f43f abd9 	beq.w	800522e <_dtoa_r+0x7e>
 8005a7c:	4658      	mov	r0, fp
 8005a7e:	601c      	str	r4, [r3, #0]
 8005a80:	b01b      	add	sp, #108	; 0x6c
 8005a82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a86:	201c      	movs	r0, #28
 8005a88:	e6e9      	b.n	800585e <_dtoa_r+0x6ae>
 8005a8a:	4601      	mov	r1, r0
 8005a8c:	4648      	mov	r0, r9
 8005a8e:	f001 fa6b 	bl	8006f68 <__pow5mult>
 8005a92:	9b02      	ldr	r3, [sp, #8]
 8005a94:	2b01      	cmp	r3, #1
 8005a96:	4606      	mov	r6, r0
 8005a98:	f340 80d4 	ble.w	8005c44 <_dtoa_r+0xa94>
 8005a9c:	2300      	movs	r3, #0
 8005a9e:	930c      	str	r3, [sp, #48]	; 0x30
 8005aa0:	6933      	ldr	r3, [r6, #16]
 8005aa2:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005aa6:	6918      	ldr	r0, [r3, #16]
 8005aa8:	f001 f95e 	bl	8006d68 <__hi0bits>
 8005aac:	f1c0 0020 	rsb	r0, r0, #32
 8005ab0:	e6c9      	b.n	8005846 <_dtoa_r+0x696>
 8005ab2:	900d      	str	r0, [sp, #52]	; 0x34
 8005ab4:	e428      	b.n	8005308 <_dtoa_r+0x158>
 8005ab6:	2501      	movs	r5, #1
 8005ab8:	e43e      	b.n	8005338 <_dtoa_r+0x188>
 8005aba:	f1c3 0820 	rsb	r8, r3, #32
 8005abe:	9b00      	ldr	r3, [sp, #0]
 8005ac0:	fa03 f008 	lsl.w	r0, r3, r8
 8005ac4:	f7ff bbd6 	b.w	8005274 <_dtoa_r+0xc4>
 8005ac8:	2300      	movs	r3, #0
 8005aca:	930a      	str	r3, [sp, #40]	; 0x28
 8005acc:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005ad0:	4413      	add	r3, r2
 8005ad2:	930e      	str	r3, [sp, #56]	; 0x38
 8005ad4:	3301      	adds	r3, #1
 8005ad6:	2b01      	cmp	r3, #1
 8005ad8:	461e      	mov	r6, r3
 8005ada:	9309      	str	r3, [sp, #36]	; 0x24
 8005adc:	bfb8      	it	lt
 8005ade:	2601      	movlt	r6, #1
 8005ae0:	2100      	movs	r1, #0
 8005ae2:	2e17      	cmp	r6, #23
 8005ae4:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005ae8:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005aea:	f77f ac87 	ble.w	80053fc <_dtoa_r+0x24c>
 8005aee:	2201      	movs	r2, #1
 8005af0:	2304      	movs	r3, #4
 8005af2:	005b      	lsls	r3, r3, #1
 8005af4:	f103 0014 	add.w	r0, r3, #20
 8005af8:	42b0      	cmp	r0, r6
 8005afa:	4611      	mov	r1, r2
 8005afc:	f102 0201 	add.w	r2, r2, #1
 8005b00:	d9f7      	bls.n	8005af2 <_dtoa_r+0x942>
 8005b02:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005b06:	e479      	b.n	80053fc <_dtoa_r+0x24c>
 8005b08:	2300      	movs	r3, #0
 8005b0a:	930a      	str	r3, [sp, #40]	; 0x28
 8005b0c:	9e07      	ldr	r6, [sp, #28]
 8005b0e:	2e00      	cmp	r6, #0
 8005b10:	f340 80e2 	ble.w	8005cd8 <_dtoa_r+0xb28>
 8005b14:	960e      	str	r6, [sp, #56]	; 0x38
 8005b16:	9609      	str	r6, [sp, #36]	; 0x24
 8005b18:	e7e2      	b.n	8005ae0 <_dtoa_r+0x930>
 8005b1a:	2301      	movs	r3, #1
 8005b1c:	930a      	str	r3, [sp, #40]	; 0x28
 8005b1e:	e7f5      	b.n	8005b0c <_dtoa_r+0x95c>
 8005b20:	9b00      	ldr	r3, [sp, #0]
 8005b22:	2b00      	cmp	r3, #0
 8005b24:	f47f ae8e 	bne.w	8005844 <_dtoa_r+0x694>
 8005b28:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005b2c:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005b30:	2b00      	cmp	r3, #0
 8005b32:	f040 8193 	bne.w	8005e5c <_dtoa_r+0xcac>
 8005b36:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005b3a:	0d1b      	lsrs	r3, r3, #20
 8005b3c:	051b      	lsls	r3, r3, #20
 8005b3e:	b12b      	cbz	r3, 8005b4c <_dtoa_r+0x99c>
 8005b40:	9b08      	ldr	r3, [sp, #32]
 8005b42:	3301      	adds	r3, #1
 8005b44:	9308      	str	r3, [sp, #32]
 8005b46:	f108 0801 	add.w	r8, r8, #1
 8005b4a:	2301      	movs	r3, #1
 8005b4c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005b4e:	930c      	str	r3, [sp, #48]	; 0x30
 8005b50:	2a00      	cmp	r2, #0
 8005b52:	f43f ae77 	beq.w	8005844 <_dtoa_r+0x694>
 8005b56:	e7a3      	b.n	8005aa0 <_dtoa_r+0x8f0>
 8005b58:	463a      	mov	r2, r7
 8005b5a:	4629      	mov	r1, r5
 8005b5c:	4648      	mov	r0, r9
 8005b5e:	f001 fa03 	bl	8006f68 <__pow5mult>
 8005b62:	4652      	mov	r2, sl
 8005b64:	4601      	mov	r1, r0
 8005b66:	4605      	mov	r5, r0
 8005b68:	4648      	mov	r0, r9
 8005b6a:	f001 f957 	bl	8006e1c <__multiply>
 8005b6e:	4651      	mov	r1, sl
 8005b70:	4607      	mov	r7, r0
 8005b72:	4648      	mov	r0, r9
 8005b74:	f001 f8ae 	bl	8006cd4 <_Bfree>
 8005b78:	46ba      	mov	sl, r7
 8005b7a:	2e00      	cmp	r6, #0
 8005b7c:	f43f ae55 	beq.w	800582a <_dtoa_r+0x67a>
 8005b80:	e64d      	b.n	800581e <_dtoa_r+0x66e>
 8005b82:	4629      	mov	r1, r5
 8005b84:	4622      	mov	r2, r4
 8005b86:	4648      	mov	r0, r9
 8005b88:	f001 fa3e 	bl	8007008 <__lshift>
 8005b8c:	4605      	mov	r5, r0
 8005b8e:	e68b      	b.n	80058a8 <_dtoa_r+0x6f8>
 8005b90:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005b92:	2a00      	cmp	r2, #0
 8005b94:	f000 815e 	beq.w	8005e54 <_dtoa_r+0xca4>
 8005b98:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005b9c:	9a08      	ldr	r2, [sp, #32]
 8005b9e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005ba0:	4614      	mov	r4, r2
 8005ba2:	441a      	add	r2, r3
 8005ba4:	4498      	add	r8, r3
 8005ba6:	9208      	str	r2, [sp, #32]
 8005ba8:	e5f5      	b.n	8005796 <_dtoa_r+0x5e6>
 8005baa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005bac:	2b00      	cmp	r3, #0
 8005bae:	f73f ad3c 	bgt.w	800562a <_dtoa_r+0x47a>
 8005bb2:	f040 80bc 	bne.w	8005d2e <_dtoa_r+0xb7e>
 8005bb6:	ec51 0b17 	vmov	r0, r1, d7
 8005bba:	2200      	movs	r2, #0
 8005bbc:	4bb3      	ldr	r3, [pc, #716]	; (8005e8c <_dtoa_r+0xcdc>)
 8005bbe:	f002 fc89 	bl	80084d4 <__aeabi_dmul>
 8005bc2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005bc6:	f002 ff0b 	bl	80089e0 <__aeabi_dcmpge>
 8005bca:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005bcc:	4635      	mov	r5, r6
 8005bce:	2800      	cmp	r0, #0
 8005bd0:	d176      	bne.n	8005cc0 <_dtoa_r+0xb10>
 8005bd2:	9a06      	ldr	r2, [sp, #24]
 8005bd4:	2331      	movs	r3, #49	; 0x31
 8005bd6:	3201      	adds	r2, #1
 8005bd8:	9206      	str	r2, [sp, #24]
 8005bda:	f88b 3000 	strb.w	r3, [fp]
 8005bde:	f10b 0401 	add.w	r4, fp, #1
 8005be2:	4631      	mov	r1, r6
 8005be4:	4648      	mov	r0, r9
 8005be6:	f001 f875 	bl	8006cd4 <_Bfree>
 8005bea:	2d00      	cmp	r5, #0
 8005bec:	f47f af34 	bne.w	8005a58 <_dtoa_r+0x8a8>
 8005bf0:	e736      	b.n	8005a60 <_dtoa_r+0x8b0>
 8005bf2:	f000 8143 	beq.w	8005e7c <_dtoa_r+0xccc>
 8005bf6:	9b06      	ldr	r3, [sp, #24]
 8005bf8:	425c      	negs	r4, r3
 8005bfa:	4ba5      	ldr	r3, [pc, #660]	; (8005e90 <_dtoa_r+0xce0>)
 8005bfc:	f004 020f 	and.w	r2, r4, #15
 8005c00:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005c04:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005c08:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005c0c:	f002 fc62 	bl	80084d4 <__aeabi_dmul>
 8005c10:	1124      	asrs	r4, r4, #4
 8005c12:	e9cd 0100 	strd	r0, r1, [sp]
 8005c16:	f000 81c8 	beq.w	8005faa <_dtoa_r+0xdfa>
 8005c1a:	4d9e      	ldr	r5, [pc, #632]	; (8005e94 <_dtoa_r+0xce4>)
 8005c1c:	2300      	movs	r3, #0
 8005c1e:	2602      	movs	r6, #2
 8005c20:	07e7      	lsls	r7, r4, #31
 8005c22:	d505      	bpl.n	8005c30 <_dtoa_r+0xa80>
 8005c24:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005c28:	f002 fc54 	bl	80084d4 <__aeabi_dmul>
 8005c2c:	3601      	adds	r6, #1
 8005c2e:	2301      	movs	r3, #1
 8005c30:	1064      	asrs	r4, r4, #1
 8005c32:	f105 0508 	add.w	r5, r5, #8
 8005c36:	d1f3      	bne.n	8005c20 <_dtoa_r+0xa70>
 8005c38:	2b00      	cmp	r3, #0
 8005c3a:	f43f ac25 	beq.w	8005488 <_dtoa_r+0x2d8>
 8005c3e:	e9cd 0100 	strd	r0, r1, [sp]
 8005c42:	e421      	b.n	8005488 <_dtoa_r+0x2d8>
 8005c44:	9b00      	ldr	r3, [sp, #0]
 8005c46:	2b00      	cmp	r3, #0
 8005c48:	f43f af6e 	beq.w	8005b28 <_dtoa_r+0x978>
 8005c4c:	e726      	b.n	8005a9c <_dtoa_r+0x8ec>
 8005c4e:	6869      	ldr	r1, [r5, #4]
 8005c50:	4648      	mov	r0, r9
 8005c52:	f001 f819 	bl	8006c88 <_Balloc>
 8005c56:	692b      	ldr	r3, [r5, #16]
 8005c58:	3302      	adds	r3, #2
 8005c5a:	009a      	lsls	r2, r3, #2
 8005c5c:	4604      	mov	r4, r0
 8005c5e:	f105 010c 	add.w	r1, r5, #12
 8005c62:	300c      	adds	r0, #12
 8005c64:	f7fd fdda 	bl	800381c <memcpy>
 8005c68:	4621      	mov	r1, r4
 8005c6a:	2201      	movs	r2, #1
 8005c6c:	4648      	mov	r0, r9
 8005c6e:	f001 f9cb 	bl	8007008 <__lshift>
 8005c72:	4680      	mov	r8, r0
 8005c74:	e61d      	b.n	80058b2 <_dtoa_r+0x702>
 8005c76:	2400      	movs	r4, #0
 8005c78:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005c7c:	4621      	mov	r1, r4
 8005c7e:	4648      	mov	r0, r9
 8005c80:	f001 f802 	bl	8006c88 <_Balloc>
 8005c84:	f04f 33ff 	mov.w	r3, #4294967295
 8005c88:	930e      	str	r3, [sp, #56]	; 0x38
 8005c8a:	9309      	str	r3, [sp, #36]	; 0x24
 8005c8c:	2301      	movs	r3, #1
 8005c8e:	4683      	mov	fp, r0
 8005c90:	9407      	str	r4, [sp, #28]
 8005c92:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005c96:	930a      	str	r3, [sp, #40]	; 0x28
 8005c98:	e4b4      	b.n	8005604 <_dtoa_r+0x454>
 8005c9a:	f001 f825 	bl	8006ce8 <__multadd>
 8005c9e:	4627      	mov	r7, r4
 8005ca0:	4605      	mov	r5, r0
 8005ca2:	4680      	mov	r8, r0
 8005ca4:	e612      	b.n	80058cc <_dtoa_r+0x71c>
 8005ca6:	4648      	mov	r0, r9
 8005ca8:	f001 f814 	bl	8006cd4 <_Bfree>
 8005cac:	2301      	movs	r3, #1
 8005cae:	e637      	b.n	8005920 <_dtoa_r+0x770>
 8005cb0:	9b02      	ldr	r3, [sp, #8]
 8005cb2:	2b02      	cmp	r3, #2
 8005cb4:	f77f adf1 	ble.w	800589a <_dtoa_r+0x6ea>
 8005cb8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005cba:	2b00      	cmp	r3, #0
 8005cbc:	f000 80d0 	beq.w	8005e60 <_dtoa_r+0xcb0>
 8005cc0:	9b07      	ldr	r3, [sp, #28]
 8005cc2:	43db      	mvns	r3, r3
 8005cc4:	9306      	str	r3, [sp, #24]
 8005cc6:	465c      	mov	r4, fp
 8005cc8:	e78b      	b.n	8005be2 <_dtoa_r+0xa32>
 8005cca:	9a06      	ldr	r2, [sp, #24]
 8005ccc:	2331      	movs	r3, #49	; 0x31
 8005cce:	3201      	adds	r2, #1
 8005cd0:	9206      	str	r2, [sp, #24]
 8005cd2:	f88b 3000 	strb.w	r3, [fp]
 8005cd6:	e6b3      	b.n	8005a40 <_dtoa_r+0x890>
 8005cd8:	2401      	movs	r4, #1
 8005cda:	9409      	str	r4, [sp, #36]	; 0x24
 8005cdc:	9407      	str	r4, [sp, #28]
 8005cde:	f7ff bb89 	b.w	80053f4 <_dtoa_r+0x244>
 8005ce2:	4630      	mov	r0, r6
 8005ce4:	f002 fb8c 	bl	8008400 <__aeabi_i2d>
 8005ce8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005cec:	f002 fbf2 	bl	80084d4 <__aeabi_dmul>
 8005cf0:	2200      	movs	r2, #0
 8005cf2:	4b69      	ldr	r3, [pc, #420]	; (8005e98 <_dtoa_r+0xce8>)
 8005cf4:	f002 fa38 	bl	8008168 <__adddf3>
 8005cf8:	4606      	mov	r6, r0
 8005cfa:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005cfe:	2200      	movs	r2, #0
 8005d00:	4b62      	ldr	r3, [pc, #392]	; (8005e8c <_dtoa_r+0xcdc>)
 8005d02:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005d06:	f002 fa2d 	bl	8008164 <__aeabi_dsub>
 8005d0a:	4632      	mov	r2, r6
 8005d0c:	463b      	mov	r3, r7
 8005d0e:	4604      	mov	r4, r0
 8005d10:	460d      	mov	r5, r1
 8005d12:	f002 fe6f 	bl	80089f4 <__aeabi_dcmpgt>
 8005d16:	2800      	cmp	r0, #0
 8005d18:	d150      	bne.n	8005dbc <_dtoa_r+0xc0c>
 8005d1a:	4632      	mov	r2, r6
 8005d1c:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005d20:	4620      	mov	r0, r4
 8005d22:	4629      	mov	r1, r5
 8005d24:	f002 fe48 	bl	80089b8 <__aeabi_dcmplt>
 8005d28:	2800      	cmp	r0, #0
 8005d2a:	f43f ac67 	beq.w	80055fc <_dtoa_r+0x44c>
 8005d2e:	2600      	movs	r6, #0
 8005d30:	4635      	mov	r5, r6
 8005d32:	e7c5      	b.n	8005cc0 <_dtoa_r+0xb10>
 8005d34:	2301      	movs	r3, #1
 8005d36:	930a      	str	r3, [sp, #40]	; 0x28
 8005d38:	e6c8      	b.n	8005acc <_dtoa_r+0x91c>
 8005d3a:	4651      	mov	r1, sl
 8005d3c:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005d3e:	4648      	mov	r0, r9
 8005d40:	f001 f912 	bl	8006f68 <__pow5mult>
 8005d44:	4682      	mov	sl, r0
 8005d46:	e570      	b.n	800582a <_dtoa_r+0x67a>
 8005d48:	f8dd a000 	ldr.w	sl, [sp]
 8005d4c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005d50:	e686      	b.n	8005a60 <_dtoa_r+0x8b0>
 8005d52:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005d54:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005d56:	1afb      	subs	r3, r7, r3
 8005d58:	441a      	add	r2, r3
 8005d5a:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005d5e:	2700      	movs	r7, #0
 8005d60:	e510      	b.n	8005784 <_dtoa_r+0x5d4>
 8005d62:	2b00      	cmp	r3, #0
 8005d64:	9402      	str	r4, [sp, #8]
 8005d66:	465e      	mov	r6, fp
 8005d68:	f107 0401 	add.w	r4, r7, #1
 8005d6c:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005d70:	f300 80bc 	bgt.w	8005eec <_dtoa_r+0xd3c>
 8005d74:	f89d 3000 	ldrb.w	r3, [sp]
 8005d78:	9502      	str	r5, [sp, #8]
 8005d7a:	703b      	strb	r3, [r7, #0]
 8005d7c:	4645      	mov	r5, r8
 8005d7e:	e65f      	b.n	8005a40 <_dtoa_r+0x890>
 8005d80:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005d84:	2602      	movs	r6, #2
 8005d86:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005d8a:	f7ff bb64 	b.w	8005456 <_dtoa_r+0x2a6>
 8005d8e:	9b00      	ldr	r3, [sp, #0]
 8005d90:	2b39      	cmp	r3, #57	; 0x39
 8005d92:	465e      	mov	r6, fp
 8005d94:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005d98:	f000 80ba 	beq.w	8005f10 <_dtoa_r+0xd60>
 8005d9c:	9b00      	ldr	r3, [sp, #0]
 8005d9e:	9502      	str	r5, [sp, #8]
 8005da0:	3301      	adds	r3, #1
 8005da2:	703b      	strb	r3, [r7, #0]
 8005da4:	4645      	mov	r5, r8
 8005da6:	e64b      	b.n	8005a40 <_dtoa_r+0x890>
 8005da8:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005dac:	1a9c      	subs	r4, r3, r2
 8005dae:	e4f2      	b.n	8005796 <_dtoa_r+0x5e6>
 8005db0:	465e      	mov	r6, fp
 8005db2:	9502      	str	r5, [sp, #8]
 8005db4:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005db8:	4645      	mov	r5, r8
 8005dba:	e618      	b.n	80059ee <_dtoa_r+0x83e>
 8005dbc:	2600      	movs	r6, #0
 8005dbe:	4635      	mov	r5, r6
 8005dc0:	e707      	b.n	8005bd2 <_dtoa_r+0xa22>
 8005dc2:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005dc6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005dca:	f002 fb83 	bl	80084d4 <__aeabi_dmul>
 8005dce:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005dd0:	f88b 5000 	strb.w	r5, [fp]
 8005dd4:	2b01      	cmp	r3, #1
 8005dd6:	e9cd 0100 	strd	r0, r1, [sp]
 8005dda:	d020      	beq.n	8005e1e <_dtoa_r+0xc6e>
 8005ddc:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005dde:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005de2:	445b      	add	r3, fp
 8005de4:	4698      	mov	r8, r3
 8005de6:	2200      	movs	r2, #0
 8005de8:	4b2c      	ldr	r3, [pc, #176]	; (8005e9c <_dtoa_r+0xcec>)
 8005dea:	4630      	mov	r0, r6
 8005dec:	4639      	mov	r1, r7
 8005dee:	f002 fb71 	bl	80084d4 <__aeabi_dmul>
 8005df2:	460f      	mov	r7, r1
 8005df4:	4606      	mov	r6, r0
 8005df6:	f002 fe1d 	bl	8008a34 <__aeabi_d2iz>
 8005dfa:	4605      	mov	r5, r0
 8005dfc:	f002 fb00 	bl	8008400 <__aeabi_i2d>
 8005e00:	3530      	adds	r5, #48	; 0x30
 8005e02:	4602      	mov	r2, r0
 8005e04:	460b      	mov	r3, r1
 8005e06:	4630      	mov	r0, r6
 8005e08:	4639      	mov	r1, r7
 8005e0a:	f002 f9ab 	bl	8008164 <__aeabi_dsub>
 8005e0e:	f804 5b01 	strb.w	r5, [r4], #1
 8005e12:	4544      	cmp	r4, r8
 8005e14:	4606      	mov	r6, r0
 8005e16:	460f      	mov	r7, r1
 8005e18:	d1e5      	bne.n	8005de6 <_dtoa_r+0xc36>
 8005e1a:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005e1e:	4b20      	ldr	r3, [pc, #128]	; (8005ea0 <_dtoa_r+0xcf0>)
 8005e20:	2200      	movs	r2, #0
 8005e22:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005e26:	f002 f99f 	bl	8008168 <__adddf3>
 8005e2a:	4632      	mov	r2, r6
 8005e2c:	463b      	mov	r3, r7
 8005e2e:	f002 fdc3 	bl	80089b8 <__aeabi_dcmplt>
 8005e32:	2800      	cmp	r0, #0
 8005e34:	d071      	beq.n	8005f1a <_dtoa_r+0xd6a>
 8005e36:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005e38:	9306      	str	r3, [sp, #24]
 8005e3a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005e3e:	e48c      	b.n	800575a <_dtoa_r+0x5aa>
 8005e40:	2330      	movs	r3, #48	; 0x30
 8005e42:	f88b 3000 	strb.w	r3, [fp]
 8005e46:	9b06      	ldr	r3, [sp, #24]
 8005e48:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005e4c:	3301      	adds	r3, #1
 8005e4e:	9306      	str	r3, [sp, #24]
 8005e50:	465b      	mov	r3, fp
 8005e52:	e486      	b.n	8005762 <_dtoa_r+0x5b2>
 8005e54:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005e56:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005e5a:	e69f      	b.n	8005b9c <_dtoa_r+0x9ec>
 8005e5c:	2300      	movs	r3, #0
 8005e5e:	e675      	b.n	8005b4c <_dtoa_r+0x99c>
 8005e60:	4631      	mov	r1, r6
 8005e62:	2205      	movs	r2, #5
 8005e64:	4648      	mov	r0, r9
 8005e66:	f000 ff3f 	bl	8006ce8 <__multadd>
 8005e6a:	4601      	mov	r1, r0
 8005e6c:	4606      	mov	r6, r0
 8005e6e:	4650      	mov	r0, sl
 8005e70:	f001 f920 	bl	80070b4 <__mcmp>
 8005e74:	2800      	cmp	r0, #0
 8005e76:	f73f aeac 	bgt.w	8005bd2 <_dtoa_r+0xa22>
 8005e7a:	e721      	b.n	8005cc0 <_dtoa_r+0xb10>
 8005e7c:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005e80:	2602      	movs	r6, #2
 8005e82:	ed8d 7b00 	vstr	d7, [sp]
 8005e86:	f7ff baff 	b.w	8005488 <_dtoa_r+0x2d8>
 8005e8a:	bf00      	nop
 8005e8c:	40140000 	.word	0x40140000
 8005e90:	080096b8 	.word	0x080096b8
 8005e94:	08009690 	.word	0x08009690
 8005e98:	401c0000 	.word	0x401c0000
 8005e9c:	40240000 	.word	0x40240000
 8005ea0:	3fe00000 	.word	0x3fe00000
 8005ea4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005ea6:	2b00      	cmp	r3, #0
 8005ea8:	f43f af1b 	beq.w	8005ce2 <_dtoa_r+0xb32>
 8005eac:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005eae:	2c00      	cmp	r4, #0
 8005eb0:	f77f aba4 	ble.w	80055fc <_dtoa_r+0x44c>
 8005eb4:	2200      	movs	r2, #0
 8005eb6:	4b45      	ldr	r3, [pc, #276]	; (8005fcc <_dtoa_r+0xe1c>)
 8005eb8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005ebc:	f002 fb0a 	bl	80084d4 <__aeabi_dmul>
 8005ec0:	e9cd 0100 	strd	r0, r1, [sp]
 8005ec4:	1c70      	adds	r0, r6, #1
 8005ec6:	f002 fa9b 	bl	8008400 <__aeabi_i2d>
 8005eca:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005ece:	f002 fb01 	bl	80084d4 <__aeabi_dmul>
 8005ed2:	4b3f      	ldr	r3, [pc, #252]	; (8005fd0 <_dtoa_r+0xe20>)
 8005ed4:	2200      	movs	r2, #0
 8005ed6:	f002 f947 	bl	8008168 <__adddf3>
 8005eda:	9b06      	ldr	r3, [sp, #24]
 8005edc:	9412      	str	r4, [sp, #72]	; 0x48
 8005ede:	3b01      	subs	r3, #1
 8005ee0:	4606      	mov	r6, r0
 8005ee2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005ee6:	9316      	str	r3, [sp, #88]	; 0x58
 8005ee8:	f7ff baef 	b.w	80054ca <_dtoa_r+0x31a>
 8005eec:	4651      	mov	r1, sl
 8005eee:	2201      	movs	r2, #1
 8005ef0:	4648      	mov	r0, r9
 8005ef2:	f001 f889 	bl	8007008 <__lshift>
 8005ef6:	4631      	mov	r1, r6
 8005ef8:	4682      	mov	sl, r0
 8005efa:	f001 f8db 	bl	80070b4 <__mcmp>
 8005efe:	2800      	cmp	r0, #0
 8005f00:	dd3b      	ble.n	8005f7a <_dtoa_r+0xdca>
 8005f02:	9b00      	ldr	r3, [sp, #0]
 8005f04:	2b39      	cmp	r3, #57	; 0x39
 8005f06:	d003      	beq.n	8005f10 <_dtoa_r+0xd60>
 8005f08:	9b02      	ldr	r3, [sp, #8]
 8005f0a:	3331      	adds	r3, #49	; 0x31
 8005f0c:	9300      	str	r3, [sp, #0]
 8005f0e:	e731      	b.n	8005d74 <_dtoa_r+0xbc4>
 8005f10:	2239      	movs	r2, #57	; 0x39
 8005f12:	9502      	str	r5, [sp, #8]
 8005f14:	703a      	strb	r2, [r7, #0]
 8005f16:	4645      	mov	r5, r8
 8005f18:	e58c      	b.n	8005a34 <_dtoa_r+0x884>
 8005f1a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005f1e:	2000      	movs	r0, #0
 8005f20:	492c      	ldr	r1, [pc, #176]	; (8005fd4 <_dtoa_r+0xe24>)
 8005f22:	f002 f91f 	bl	8008164 <__aeabi_dsub>
 8005f26:	4632      	mov	r2, r6
 8005f28:	463b      	mov	r3, r7
 8005f2a:	f002 fd63 	bl	80089f4 <__aeabi_dcmpgt>
 8005f2e:	b910      	cbnz	r0, 8005f36 <_dtoa_r+0xd86>
 8005f30:	f7ff bb64 	b.w	80055fc <_dtoa_r+0x44c>
 8005f34:	4614      	mov	r4, r2
 8005f36:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005f3a:	2b30      	cmp	r3, #48	; 0x30
 8005f3c:	f104 32ff 	add.w	r2, r4, #4294967295
 8005f40:	d0f8      	beq.n	8005f34 <_dtoa_r+0xd84>
 8005f42:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005f44:	9306      	str	r3, [sp, #24]
 8005f46:	e58b      	b.n	8005a60 <_dtoa_r+0x8b0>
 8005f48:	46d9      	mov	r9, fp
 8005f4a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005f4e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005f52:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005f54:	9306      	str	r3, [sp, #24]
 8005f56:	e400      	b.n	800575a <_dtoa_r+0x5aa>
 8005f58:	9b00      	ldr	r3, [sp, #0]
 8005f5a:	2b39      	cmp	r3, #57	; 0x39
 8005f5c:	4621      	mov	r1, r4
 8005f5e:	4632      	mov	r2, r6
 8005f60:	f107 0401 	add.w	r4, r7, #1
 8005f64:	465e      	mov	r6, fp
 8005f66:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005f6a:	d0d1      	beq.n	8005f10 <_dtoa_r+0xd60>
 8005f6c:	2a00      	cmp	r2, #0
 8005f6e:	f77f af01 	ble.w	8005d74 <_dtoa_r+0xbc4>
 8005f72:	460b      	mov	r3, r1
 8005f74:	3331      	adds	r3, #49	; 0x31
 8005f76:	9300      	str	r3, [sp, #0]
 8005f78:	e6fc      	b.n	8005d74 <_dtoa_r+0xbc4>
 8005f7a:	f47f aefb 	bne.w	8005d74 <_dtoa_r+0xbc4>
 8005f7e:	9b00      	ldr	r3, [sp, #0]
 8005f80:	07da      	lsls	r2, r3, #31
 8005f82:	f57f aef7 	bpl.w	8005d74 <_dtoa_r+0xbc4>
 8005f86:	e7bc      	b.n	8005f02 <_dtoa_r+0xd52>
 8005f88:	4629      	mov	r1, r5
 8005f8a:	2300      	movs	r3, #0
 8005f8c:	220a      	movs	r2, #10
 8005f8e:	4648      	mov	r0, r9
 8005f90:	f000 feaa 	bl	8006ce8 <__multadd>
 8005f94:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005f96:	2b00      	cmp	r3, #0
 8005f98:	4605      	mov	r5, r0
 8005f9a:	dd09      	ble.n	8005fb0 <_dtoa_r+0xe00>
 8005f9c:	9309      	str	r3, [sp, #36]	; 0x24
 8005f9e:	e480      	b.n	80058a2 <_dtoa_r+0x6f2>
 8005fa0:	9b02      	ldr	r3, [sp, #8]
 8005fa2:	2b02      	cmp	r3, #2
 8005fa4:	dc0e      	bgt.n	8005fc4 <_dtoa_r+0xe14>
 8005fa6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005fa8:	e504      	b.n	80059b4 <_dtoa_r+0x804>
 8005faa:	2602      	movs	r6, #2
 8005fac:	f7ff ba6c 	b.w	8005488 <_dtoa_r+0x2d8>
 8005fb0:	9b02      	ldr	r3, [sp, #8]
 8005fb2:	2b02      	cmp	r3, #2
 8005fb4:	dc06      	bgt.n	8005fc4 <_dtoa_r+0xe14>
 8005fb6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005fb8:	e7f0      	b.n	8005f9c <_dtoa_r+0xdec>
 8005fba:	f43f ac55 	beq.w	8005868 <_dtoa_r+0x6b8>
 8005fbe:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005fc2:	e44c      	b.n	800585e <_dtoa_r+0x6ae>
 8005fc4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005fc6:	9309      	str	r3, [sp, #36]	; 0x24
 8005fc8:	e676      	b.n	8005cb8 <_dtoa_r+0xb08>
 8005fca:	bf00      	nop
 8005fcc:	40240000 	.word	0x40240000
 8005fd0:	401c0000 	.word	0x401c0000
 8005fd4:	3fe00000 	.word	0x3fe00000

08005fd8 <__sflush_r>:
 8005fd8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005fdc:	b29a      	uxth	r2, r3
 8005fde:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005fe2:	460c      	mov	r4, r1
 8005fe4:	0711      	lsls	r1, r2, #28
 8005fe6:	4680      	mov	r8, r0
 8005fe8:	d444      	bmi.n	8006074 <__sflush_r+0x9c>
 8005fea:	6862      	ldr	r2, [r4, #4]
 8005fec:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005ff0:	2a00      	cmp	r2, #0
 8005ff2:	81a3      	strh	r3, [r4, #12]
 8005ff4:	dd59      	ble.n	80060aa <__sflush_r+0xd2>
 8005ff6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005ff8:	2d00      	cmp	r5, #0
 8005ffa:	d053      	beq.n	80060a4 <__sflush_r+0xcc>
 8005ffc:	2200      	movs	r2, #0
 8005ffe:	b29b      	uxth	r3, r3
 8006000:	f8d8 6000 	ldr.w	r6, [r8]
 8006004:	69e1      	ldr	r1, [r4, #28]
 8006006:	f8c8 2000 	str.w	r2, [r8]
 800600a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800600e:	f040 8083 	bne.w	8006118 <__sflush_r+0x140>
 8006012:	2301      	movs	r3, #1
 8006014:	4640      	mov	r0, r8
 8006016:	47a8      	blx	r5
 8006018:	1c42      	adds	r2, r0, #1
 800601a:	d04a      	beq.n	80060b2 <__sflush_r+0xda>
 800601c:	89a3      	ldrh	r3, [r4, #12]
 800601e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006020:	69e1      	ldr	r1, [r4, #28]
 8006022:	075b      	lsls	r3, r3, #29
 8006024:	d505      	bpl.n	8006032 <__sflush_r+0x5a>
 8006026:	6862      	ldr	r2, [r4, #4]
 8006028:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800602a:	1a80      	subs	r0, r0, r2
 800602c:	b10b      	cbz	r3, 8006032 <__sflush_r+0x5a>
 800602e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8006030:	1ac0      	subs	r0, r0, r3
 8006032:	4602      	mov	r2, r0
 8006034:	2300      	movs	r3, #0
 8006036:	4640      	mov	r0, r8
 8006038:	47a8      	blx	r5
 800603a:	1c47      	adds	r7, r0, #1
 800603c:	d045      	beq.n	80060ca <__sflush_r+0xf2>
 800603e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006042:	6922      	ldr	r2, [r4, #16]
 8006044:	6022      	str	r2, [r4, #0]
 8006046:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800604a:	2200      	movs	r2, #0
 800604c:	81a3      	strh	r3, [r4, #12]
 800604e:	04db      	lsls	r3, r3, #19
 8006050:	6062      	str	r2, [r4, #4]
 8006052:	d500      	bpl.n	8006056 <__sflush_r+0x7e>
 8006054:	6520      	str	r0, [r4, #80]	; 0x50
 8006056:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006058:	f8c8 6000 	str.w	r6, [r8]
 800605c:	b311      	cbz	r1, 80060a4 <__sflush_r+0xcc>
 800605e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006062:	4299      	cmp	r1, r3
 8006064:	d002      	beq.n	800606c <__sflush_r+0x94>
 8006066:	4640      	mov	r0, r8
 8006068:	f000 f95e 	bl	8006328 <_free_r>
 800606c:	2000      	movs	r0, #0
 800606e:	6320      	str	r0, [r4, #48]	; 0x30
 8006070:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006074:	6926      	ldr	r6, [r4, #16]
 8006076:	b1ae      	cbz	r6, 80060a4 <__sflush_r+0xcc>
 8006078:	6825      	ldr	r5, [r4, #0]
 800607a:	6026      	str	r6, [r4, #0]
 800607c:	0792      	lsls	r2, r2, #30
 800607e:	bf0c      	ite	eq
 8006080:	6963      	ldreq	r3, [r4, #20]
 8006082:	2300      	movne	r3, #0
 8006084:	1bad      	subs	r5, r5, r6
 8006086:	60a3      	str	r3, [r4, #8]
 8006088:	e00a      	b.n	80060a0 <__sflush_r+0xc8>
 800608a:	462b      	mov	r3, r5
 800608c:	4632      	mov	r2, r6
 800608e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006090:	69e1      	ldr	r1, [r4, #28]
 8006092:	4640      	mov	r0, r8
 8006094:	47b8      	blx	r7
 8006096:	2800      	cmp	r0, #0
 8006098:	eba5 0500 	sub.w	r5, r5, r0
 800609c:	4406      	add	r6, r0
 800609e:	dd2b      	ble.n	80060f8 <__sflush_r+0x120>
 80060a0:	2d00      	cmp	r5, #0
 80060a2:	dcf2      	bgt.n	800608a <__sflush_r+0xb2>
 80060a4:	2000      	movs	r0, #0
 80060a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80060aa:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80060ac:	2a00      	cmp	r2, #0
 80060ae:	dca2      	bgt.n	8005ff6 <__sflush_r+0x1e>
 80060b0:	e7f8      	b.n	80060a4 <__sflush_r+0xcc>
 80060b2:	f8d8 3000 	ldr.w	r3, [r8]
 80060b6:	2b00      	cmp	r3, #0
 80060b8:	d0b0      	beq.n	800601c <__sflush_r+0x44>
 80060ba:	2b1d      	cmp	r3, #29
 80060bc:	d001      	beq.n	80060c2 <__sflush_r+0xea>
 80060be:	2b16      	cmp	r3, #22
 80060c0:	d12c      	bne.n	800611c <__sflush_r+0x144>
 80060c2:	f8c8 6000 	str.w	r6, [r8]
 80060c6:	2000      	movs	r0, #0
 80060c8:	e7ed      	b.n	80060a6 <__sflush_r+0xce>
 80060ca:	f8d8 1000 	ldr.w	r1, [r8]
 80060ce:	291d      	cmp	r1, #29
 80060d0:	d81a      	bhi.n	8006108 <__sflush_r+0x130>
 80060d2:	4b15      	ldr	r3, [pc, #84]	; (8006128 <__sflush_r+0x150>)
 80060d4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80060d8:	40cb      	lsrs	r3, r1
 80060da:	43db      	mvns	r3, r3
 80060dc:	f013 0301 	ands.w	r3, r3, #1
 80060e0:	d114      	bne.n	800610c <__sflush_r+0x134>
 80060e2:	6925      	ldr	r5, [r4, #16]
 80060e4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80060e8:	e9c4 5300 	strd	r5, r3, [r4]
 80060ec:	04d5      	lsls	r5, r2, #19
 80060ee:	81a2      	strh	r2, [r4, #12]
 80060f0:	d5b1      	bpl.n	8006056 <__sflush_r+0x7e>
 80060f2:	2900      	cmp	r1, #0
 80060f4:	d1af      	bne.n	8006056 <__sflush_r+0x7e>
 80060f6:	e7ad      	b.n	8006054 <__sflush_r+0x7c>
 80060f8:	89a3      	ldrh	r3, [r4, #12]
 80060fa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80060fe:	81a3      	strh	r3, [r4, #12]
 8006100:	f04f 30ff 	mov.w	r0, #4294967295
 8006104:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006108:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800610c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006110:	81a2      	strh	r2, [r4, #12]
 8006112:	f04f 30ff 	mov.w	r0, #4294967295
 8006116:	e7c6      	b.n	80060a6 <__sflush_r+0xce>
 8006118:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800611a:	e782      	b.n	8006022 <__sflush_r+0x4a>
 800611c:	89a3      	ldrh	r3, [r4, #12]
 800611e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006122:	81a3      	strh	r3, [r4, #12]
 8006124:	e7bf      	b.n	80060a6 <__sflush_r+0xce>
 8006126:	bf00      	nop
 8006128:	20400001 	.word	0x20400001

0800612c <_fflush_r>:
 800612c:	b538      	push	{r3, r4, r5, lr}
 800612e:	460d      	mov	r5, r1
 8006130:	4604      	mov	r4, r0
 8006132:	b108      	cbz	r0, 8006138 <_fflush_r+0xc>
 8006134:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006136:	b1a3      	cbz	r3, 8006162 <_fflush_r+0x36>
 8006138:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800613c:	b1b8      	cbz	r0, 800616e <_fflush_r+0x42>
 800613e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006140:	07db      	lsls	r3, r3, #31
 8006142:	d401      	bmi.n	8006148 <_fflush_r+0x1c>
 8006144:	0581      	lsls	r1, r0, #22
 8006146:	d51a      	bpl.n	800617e <_fflush_r+0x52>
 8006148:	4620      	mov	r0, r4
 800614a:	4629      	mov	r1, r5
 800614c:	f7ff ff44 	bl	8005fd8 <__sflush_r>
 8006150:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006152:	07da      	lsls	r2, r3, #31
 8006154:	4604      	mov	r4, r0
 8006156:	d402      	bmi.n	800615e <_fflush_r+0x32>
 8006158:	89ab      	ldrh	r3, [r5, #12]
 800615a:	059b      	lsls	r3, r3, #22
 800615c:	d50a      	bpl.n	8006174 <_fflush_r+0x48>
 800615e:	4620      	mov	r0, r4
 8006160:	bd38      	pop	{r3, r4, r5, pc}
 8006162:	f000 f83f 	bl	80061e4 <__sinit>
 8006166:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800616a:	2800      	cmp	r0, #0
 800616c:	d1e7      	bne.n	800613e <_fflush_r+0x12>
 800616e:	4604      	mov	r4, r0
 8006170:	4620      	mov	r0, r4
 8006172:	bd38      	pop	{r3, r4, r5, pc}
 8006174:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006176:	f000 fa09 	bl	800658c <__retarget_lock_release_recursive>
 800617a:	4620      	mov	r0, r4
 800617c:	bd38      	pop	{r3, r4, r5, pc}
 800617e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006180:	f000 fa02 	bl	8006588 <__retarget_lock_acquire_recursive>
 8006184:	e7e0      	b.n	8006148 <_fflush_r+0x1c>
 8006186:	bf00      	nop

08006188 <std>:
 8006188:	b510      	push	{r4, lr}
 800618a:	2300      	movs	r3, #0
 800618c:	4604      	mov	r4, r0
 800618e:	8181      	strh	r1, [r0, #12]
 8006190:	81c2      	strh	r2, [r0, #14]
 8006192:	e9c0 3300 	strd	r3, r3, [r0]
 8006196:	6083      	str	r3, [r0, #8]
 8006198:	6643      	str	r3, [r0, #100]	; 0x64
 800619a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800619e:	6183      	str	r3, [r0, #24]
 80061a0:	4619      	mov	r1, r3
 80061a2:	2208      	movs	r2, #8
 80061a4:	305c      	adds	r0, #92	; 0x5c
 80061a6:	f7fd fbd3 	bl	8003950 <memset>
 80061aa:	4807      	ldr	r0, [pc, #28]	; (80061c8 <std+0x40>)
 80061ac:	4907      	ldr	r1, [pc, #28]	; (80061cc <std+0x44>)
 80061ae:	4a08      	ldr	r2, [pc, #32]	; (80061d0 <std+0x48>)
 80061b0:	4b08      	ldr	r3, [pc, #32]	; (80061d4 <std+0x4c>)
 80061b2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80061b4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80061b8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80061bc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80061c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80061c4:	f000 b9dc 	b.w	8006580 <__retarget_lock_init_recursive>
 80061c8:	080072c1 	.word	0x080072c1
 80061cc:	080072e5 	.word	0x080072e5
 80061d0:	08007321 	.word	0x08007321
 80061d4:	08007341 	.word	0x08007341

080061d8 <_cleanup_r>:
 80061d8:	4901      	ldr	r1, [pc, #4]	; (80061e0 <_cleanup_r+0x8>)
 80061da:	f000 b999 	b.w	8006510 <_fwalk_reent>
 80061de:	bf00      	nop
 80061e0:	08007661 	.word	0x08007661

080061e4 <__sinit>:
 80061e4:	b510      	push	{r4, lr}
 80061e6:	4604      	mov	r4, r0
 80061e8:	4812      	ldr	r0, [pc, #72]	; (8006234 <__sinit+0x50>)
 80061ea:	f000 f9cd 	bl	8006588 <__retarget_lock_acquire_recursive>
 80061ee:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80061f0:	b9d2      	cbnz	r2, 8006228 <__sinit+0x44>
 80061f2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80061f6:	4810      	ldr	r0, [pc, #64]	; (8006238 <__sinit+0x54>)
 80061f8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80061fc:	2103      	movs	r1, #3
 80061fe:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8006202:	63e0      	str	r0, [r4, #60]	; 0x3c
 8006204:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8006208:	6860      	ldr	r0, [r4, #4]
 800620a:	2104      	movs	r1, #4
 800620c:	f7ff ffbc 	bl	8006188 <std>
 8006210:	2201      	movs	r2, #1
 8006212:	2109      	movs	r1, #9
 8006214:	68a0      	ldr	r0, [r4, #8]
 8006216:	f7ff ffb7 	bl	8006188 <std>
 800621a:	2202      	movs	r2, #2
 800621c:	2112      	movs	r1, #18
 800621e:	68e0      	ldr	r0, [r4, #12]
 8006220:	f7ff ffb2 	bl	8006188 <std>
 8006224:	2301      	movs	r3, #1
 8006226:	63a3      	str	r3, [r4, #56]	; 0x38
 8006228:	4802      	ldr	r0, [pc, #8]	; (8006234 <__sinit+0x50>)
 800622a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800622e:	f000 b9ad 	b.w	800658c <__retarget_lock_release_recursive>
 8006232:	bf00      	nop
 8006234:	20000c34 	.word	0x20000c34
 8006238:	080061d9 	.word	0x080061d9

0800623c <__sfp_lock_acquire>:
 800623c:	4801      	ldr	r0, [pc, #4]	; (8006244 <__sfp_lock_acquire+0x8>)
 800623e:	f000 b9a3 	b.w	8006588 <__retarget_lock_acquire_recursive>
 8006242:	bf00      	nop
 8006244:	20000c48 	.word	0x20000c48

08006248 <__sfp_lock_release>:
 8006248:	4801      	ldr	r0, [pc, #4]	; (8006250 <__sfp_lock_release+0x8>)
 800624a:	f000 b99f 	b.w	800658c <__retarget_lock_release_recursive>
 800624e:	bf00      	nop
 8006250:	20000c48 	.word	0x20000c48

08006254 <__libc_fini_array>:
 8006254:	b538      	push	{r3, r4, r5, lr}
 8006256:	4c0a      	ldr	r4, [pc, #40]	; (8006280 <__libc_fini_array+0x2c>)
 8006258:	4d0a      	ldr	r5, [pc, #40]	; (8006284 <__libc_fini_array+0x30>)
 800625a:	1b64      	subs	r4, r4, r5
 800625c:	10a4      	asrs	r4, r4, #2
 800625e:	d00a      	beq.n	8006276 <__libc_fini_array+0x22>
 8006260:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8006264:	3b01      	subs	r3, #1
 8006266:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800626a:	3c01      	subs	r4, #1
 800626c:	f855 3904 	ldr.w	r3, [r5], #-4
 8006270:	4798      	blx	r3
 8006272:	2c00      	cmp	r4, #0
 8006274:	d1f9      	bne.n	800626a <__libc_fini_array+0x16>
 8006276:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800627a:	f002 bc09 	b.w	8008a90 <_fini>
 800627e:	bf00      	nop
 8006280:	200009cc 	.word	0x200009cc
 8006284:	200009c8 	.word	0x200009c8

08006288 <_malloc_trim_r>:
 8006288:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800628a:	4f24      	ldr	r7, [pc, #144]	; (800631c <_malloc_trim_r+0x94>)
 800628c:	460c      	mov	r4, r1
 800628e:	4606      	mov	r6, r0
 8006290:	f000 fcee 	bl	8006c70 <__malloc_lock>
 8006294:	68bb      	ldr	r3, [r7, #8]
 8006296:	685d      	ldr	r5, [r3, #4]
 8006298:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800629c:	310f      	adds	r1, #15
 800629e:	f025 0503 	bic.w	r5, r5, #3
 80062a2:	4429      	add	r1, r5
 80062a4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80062a8:	f021 010f 	bic.w	r1, r1, #15
 80062ac:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80062b0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80062b4:	db07      	blt.n	80062c6 <_malloc_trim_r+0x3e>
 80062b6:	2100      	movs	r1, #0
 80062b8:	4630      	mov	r0, r6
 80062ba:	f000 ffef 	bl	800729c <_sbrk_r>
 80062be:	68bb      	ldr	r3, [r7, #8]
 80062c0:	442b      	add	r3, r5
 80062c2:	4298      	cmp	r0, r3
 80062c4:	d004      	beq.n	80062d0 <_malloc_trim_r+0x48>
 80062c6:	4630      	mov	r0, r6
 80062c8:	f000 fcd8 	bl	8006c7c <__malloc_unlock>
 80062cc:	2000      	movs	r0, #0
 80062ce:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80062d0:	4261      	negs	r1, r4
 80062d2:	4630      	mov	r0, r6
 80062d4:	f000 ffe2 	bl	800729c <_sbrk_r>
 80062d8:	3001      	adds	r0, #1
 80062da:	d00d      	beq.n	80062f8 <_malloc_trim_r+0x70>
 80062dc:	4b10      	ldr	r3, [pc, #64]	; (8006320 <_malloc_trim_r+0x98>)
 80062de:	68ba      	ldr	r2, [r7, #8]
 80062e0:	6819      	ldr	r1, [r3, #0]
 80062e2:	1b2d      	subs	r5, r5, r4
 80062e4:	f045 0501 	orr.w	r5, r5, #1
 80062e8:	4630      	mov	r0, r6
 80062ea:	1b09      	subs	r1, r1, r4
 80062ec:	6055      	str	r5, [r2, #4]
 80062ee:	6019      	str	r1, [r3, #0]
 80062f0:	f000 fcc4 	bl	8006c7c <__malloc_unlock>
 80062f4:	2001      	movs	r0, #1
 80062f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80062f8:	2100      	movs	r1, #0
 80062fa:	4630      	mov	r0, r6
 80062fc:	f000 ffce 	bl	800729c <_sbrk_r>
 8006300:	68ba      	ldr	r2, [r7, #8]
 8006302:	1a83      	subs	r3, r0, r2
 8006304:	2b0f      	cmp	r3, #15
 8006306:	ddde      	ble.n	80062c6 <_malloc_trim_r+0x3e>
 8006308:	4c06      	ldr	r4, [pc, #24]	; (8006324 <_malloc_trim_r+0x9c>)
 800630a:	4905      	ldr	r1, [pc, #20]	; (8006320 <_malloc_trim_r+0x98>)
 800630c:	6824      	ldr	r4, [r4, #0]
 800630e:	f043 0301 	orr.w	r3, r3, #1
 8006312:	1b00      	subs	r0, r0, r4
 8006314:	6053      	str	r3, [r2, #4]
 8006316:	6008      	str	r0, [r1, #0]
 8006318:	e7d5      	b.n	80062c6 <_malloc_trim_r+0x3e>
 800631a:	bf00      	nop
 800631c:	20000444 	.word	0x20000444
 8006320:	20000ba8 	.word	0x20000ba8
 8006324:	2000084c 	.word	0x2000084c

08006328 <_free_r>:
 8006328:	2900      	cmp	r1, #0
 800632a:	d053      	beq.n	80063d4 <_free_r+0xac>
 800632c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800632e:	460c      	mov	r4, r1
 8006330:	4606      	mov	r6, r0
 8006332:	f000 fc9d 	bl	8006c70 <__malloc_lock>
 8006336:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800633a:	4f71      	ldr	r7, [pc, #452]	; (8006500 <_free_r+0x1d8>)
 800633c:	f02c 0101 	bic.w	r1, ip, #1
 8006340:	f1a4 0508 	sub.w	r5, r4, #8
 8006344:	186b      	adds	r3, r5, r1
 8006346:	68b8      	ldr	r0, [r7, #8]
 8006348:	685a      	ldr	r2, [r3, #4]
 800634a:	4298      	cmp	r0, r3
 800634c:	f022 0203 	bic.w	r2, r2, #3
 8006350:	d053      	beq.n	80063fa <_free_r+0xd2>
 8006352:	f01c 0f01 	tst.w	ip, #1
 8006356:	605a      	str	r2, [r3, #4]
 8006358:	eb03 0002 	add.w	r0, r3, r2
 800635c:	d13b      	bne.n	80063d6 <_free_r+0xae>
 800635e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8006362:	6840      	ldr	r0, [r0, #4]
 8006364:	eba5 050c 	sub.w	r5, r5, ip
 8006368:	f107 0e08 	add.w	lr, r7, #8
 800636c:	68ac      	ldr	r4, [r5, #8]
 800636e:	4574      	cmp	r4, lr
 8006370:	4461      	add	r1, ip
 8006372:	f000 0001 	and.w	r0, r0, #1
 8006376:	d075      	beq.n	8006464 <_free_r+0x13c>
 8006378:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800637c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8006380:	f8cc 4008 	str.w	r4, [ip, #8]
 8006384:	b360      	cbz	r0, 80063e0 <_free_r+0xb8>
 8006386:	f041 0301 	orr.w	r3, r1, #1
 800638a:	606b      	str	r3, [r5, #4]
 800638c:	5069      	str	r1, [r5, r1]
 800638e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8006392:	d350      	bcc.n	8006436 <_free_r+0x10e>
 8006394:	0a4b      	lsrs	r3, r1, #9
 8006396:	2b04      	cmp	r3, #4
 8006398:	d870      	bhi.n	800647c <_free_r+0x154>
 800639a:	098b      	lsrs	r3, r1, #6
 800639c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80063a0:	00e4      	lsls	r4, r4, #3
 80063a2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80063a6:	1938      	adds	r0, r7, r4
 80063a8:	593b      	ldr	r3, [r7, r4]
 80063aa:	3808      	subs	r0, #8
 80063ac:	4298      	cmp	r0, r3
 80063ae:	d078      	beq.n	80064a2 <_free_r+0x17a>
 80063b0:	685a      	ldr	r2, [r3, #4]
 80063b2:	f022 0203 	bic.w	r2, r2, #3
 80063b6:	428a      	cmp	r2, r1
 80063b8:	d971      	bls.n	800649e <_free_r+0x176>
 80063ba:	689b      	ldr	r3, [r3, #8]
 80063bc:	4298      	cmp	r0, r3
 80063be:	d1f7      	bne.n	80063b0 <_free_r+0x88>
 80063c0:	68c3      	ldr	r3, [r0, #12]
 80063c2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80063c6:	609d      	str	r5, [r3, #8]
 80063c8:	60c5      	str	r5, [r0, #12]
 80063ca:	4630      	mov	r0, r6
 80063cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80063d0:	f000 bc54 	b.w	8006c7c <__malloc_unlock>
 80063d4:	4770      	bx	lr
 80063d6:	6840      	ldr	r0, [r0, #4]
 80063d8:	f000 0001 	and.w	r0, r0, #1
 80063dc:	2800      	cmp	r0, #0
 80063de:	d1d2      	bne.n	8006386 <_free_r+0x5e>
 80063e0:	6898      	ldr	r0, [r3, #8]
 80063e2:	4c48      	ldr	r4, [pc, #288]	; (8006504 <_free_r+0x1dc>)
 80063e4:	4411      	add	r1, r2
 80063e6:	42a0      	cmp	r0, r4
 80063e8:	f041 0201 	orr.w	r2, r1, #1
 80063ec:	d062      	beq.n	80064b4 <_free_r+0x18c>
 80063ee:	68db      	ldr	r3, [r3, #12]
 80063f0:	60c3      	str	r3, [r0, #12]
 80063f2:	6098      	str	r0, [r3, #8]
 80063f4:	606a      	str	r2, [r5, #4]
 80063f6:	5069      	str	r1, [r5, r1]
 80063f8:	e7c9      	b.n	800638e <_free_r+0x66>
 80063fa:	f01c 0f01 	tst.w	ip, #1
 80063fe:	440a      	add	r2, r1
 8006400:	d107      	bne.n	8006412 <_free_r+0xea>
 8006402:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8006406:	1aed      	subs	r5, r5, r3
 8006408:	441a      	add	r2, r3
 800640a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800640e:	60cb      	str	r3, [r1, #12]
 8006410:	6099      	str	r1, [r3, #8]
 8006412:	4b3d      	ldr	r3, [pc, #244]	; (8006508 <_free_r+0x1e0>)
 8006414:	681b      	ldr	r3, [r3, #0]
 8006416:	f042 0101 	orr.w	r1, r2, #1
 800641a:	4293      	cmp	r3, r2
 800641c:	6069      	str	r1, [r5, #4]
 800641e:	60bd      	str	r5, [r7, #8]
 8006420:	d804      	bhi.n	800642c <_free_r+0x104>
 8006422:	4b3a      	ldr	r3, [pc, #232]	; (800650c <_free_r+0x1e4>)
 8006424:	4630      	mov	r0, r6
 8006426:	6819      	ldr	r1, [r3, #0]
 8006428:	f7ff ff2e 	bl	8006288 <_malloc_trim_r>
 800642c:	4630      	mov	r0, r6
 800642e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006432:	f000 bc23 	b.w	8006c7c <__malloc_unlock>
 8006436:	08c9      	lsrs	r1, r1, #3
 8006438:	6878      	ldr	r0, [r7, #4]
 800643a:	1c4a      	adds	r2, r1, #1
 800643c:	2301      	movs	r3, #1
 800643e:	1089      	asrs	r1, r1, #2
 8006440:	408b      	lsls	r3, r1
 8006442:	4303      	orrs	r3, r0
 8006444:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8006448:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800644c:	607b      	str	r3, [r7, #4]
 800644e:	3908      	subs	r1, #8
 8006450:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8006454:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8006458:	60c5      	str	r5, [r0, #12]
 800645a:	4630      	mov	r0, r6
 800645c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006460:	f000 bc0c 	b.w	8006c7c <__malloc_unlock>
 8006464:	2800      	cmp	r0, #0
 8006466:	d145      	bne.n	80064f4 <_free_r+0x1cc>
 8006468:	440a      	add	r2, r1
 800646a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800646e:	f042 0001 	orr.w	r0, r2, #1
 8006472:	60cb      	str	r3, [r1, #12]
 8006474:	6099      	str	r1, [r3, #8]
 8006476:	6068      	str	r0, [r5, #4]
 8006478:	50aa      	str	r2, [r5, r2]
 800647a:	e7d7      	b.n	800642c <_free_r+0x104>
 800647c:	2b14      	cmp	r3, #20
 800647e:	d908      	bls.n	8006492 <_free_r+0x16a>
 8006480:	2b54      	cmp	r3, #84	; 0x54
 8006482:	d81e      	bhi.n	80064c2 <_free_r+0x19a>
 8006484:	0b0b      	lsrs	r3, r1, #12
 8006486:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800648a:	00e4      	lsls	r4, r4, #3
 800648c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8006490:	e789      	b.n	80063a6 <_free_r+0x7e>
 8006492:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8006496:	00e4      	lsls	r4, r4, #3
 8006498:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800649c:	e783      	b.n	80063a6 <_free_r+0x7e>
 800649e:	4618      	mov	r0, r3
 80064a0:	e78e      	b.n	80063c0 <_free_r+0x98>
 80064a2:	1093      	asrs	r3, r2, #2
 80064a4:	6879      	ldr	r1, [r7, #4]
 80064a6:	2201      	movs	r2, #1
 80064a8:	fa02 f303 	lsl.w	r3, r2, r3
 80064ac:	430b      	orrs	r3, r1
 80064ae:	607b      	str	r3, [r7, #4]
 80064b0:	4603      	mov	r3, r0
 80064b2:	e786      	b.n	80063c2 <_free_r+0x9a>
 80064b4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80064b8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80064bc:	606a      	str	r2, [r5, #4]
 80064be:	5069      	str	r1, [r5, r1]
 80064c0:	e7b4      	b.n	800642c <_free_r+0x104>
 80064c2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80064c6:	d806      	bhi.n	80064d6 <_free_r+0x1ae>
 80064c8:	0bcb      	lsrs	r3, r1, #15
 80064ca:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80064ce:	00e4      	lsls	r4, r4, #3
 80064d0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80064d4:	e767      	b.n	80063a6 <_free_r+0x7e>
 80064d6:	f240 5254 	movw	r2, #1364	; 0x554
 80064da:	4293      	cmp	r3, r2
 80064dc:	d806      	bhi.n	80064ec <_free_r+0x1c4>
 80064de:	0c8b      	lsrs	r3, r1, #18
 80064e0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80064e4:	00e4      	lsls	r4, r4, #3
 80064e6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80064ea:	e75c      	b.n	80063a6 <_free_r+0x7e>
 80064ec:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80064f0:	227e      	movs	r2, #126	; 0x7e
 80064f2:	e758      	b.n	80063a6 <_free_r+0x7e>
 80064f4:	f041 0201 	orr.w	r2, r1, #1
 80064f8:	606a      	str	r2, [r5, #4]
 80064fa:	6019      	str	r1, [r3, #0]
 80064fc:	e796      	b.n	800642c <_free_r+0x104>
 80064fe:	bf00      	nop
 8006500:	20000444 	.word	0x20000444
 8006504:	2000044c 	.word	0x2000044c
 8006508:	20000850 	.word	0x20000850
 800650c:	20000bd8 	.word	0x20000bd8

08006510 <_fwalk_reent>:
 8006510:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006514:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006518:	d01f      	beq.n	800655a <_fwalk_reent+0x4a>
 800651a:	4688      	mov	r8, r1
 800651c:	4606      	mov	r6, r0
 800651e:	f04f 0900 	mov.w	r9, #0
 8006522:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006526:	3d01      	subs	r5, #1
 8006528:	d411      	bmi.n	800654e <_fwalk_reent+0x3e>
 800652a:	89a3      	ldrh	r3, [r4, #12]
 800652c:	2b01      	cmp	r3, #1
 800652e:	f105 35ff 	add.w	r5, r5, #4294967295
 8006532:	4621      	mov	r1, r4
 8006534:	4630      	mov	r0, r6
 8006536:	d906      	bls.n	8006546 <_fwalk_reent+0x36>
 8006538:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 800653c:	3301      	adds	r3, #1
 800653e:	d002      	beq.n	8006546 <_fwalk_reent+0x36>
 8006540:	47c0      	blx	r8
 8006542:	ea49 0900 	orr.w	r9, r9, r0
 8006546:	1c6b      	adds	r3, r5, #1
 8006548:	f104 0468 	add.w	r4, r4, #104	; 0x68
 800654c:	d1ed      	bne.n	800652a <_fwalk_reent+0x1a>
 800654e:	683f      	ldr	r7, [r7, #0]
 8006550:	2f00      	cmp	r7, #0
 8006552:	d1e6      	bne.n	8006522 <_fwalk_reent+0x12>
 8006554:	4648      	mov	r0, r9
 8006556:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800655a:	46b9      	mov	r9, r7
 800655c:	4648      	mov	r0, r9
 800655e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006562:	bf00      	nop

08006564 <_localeconv_r>:
 8006564:	4a04      	ldr	r2, [pc, #16]	; (8006578 <_localeconv_r+0x14>)
 8006566:	4b05      	ldr	r3, [pc, #20]	; (800657c <_localeconv_r+0x18>)
 8006568:	6812      	ldr	r2, [r2, #0]
 800656a:	6b50      	ldr	r0, [r2, #52]	; 0x34
 800656c:	2800      	cmp	r0, #0
 800656e:	bf08      	it	eq
 8006570:	4618      	moveq	r0, r3
 8006572:	30f0      	adds	r0, #240	; 0xf0
 8006574:	4770      	bx	lr
 8006576:	bf00      	nop
 8006578:	20000010 	.word	0x20000010
 800657c:	20000854 	.word	0x20000854

08006580 <__retarget_lock_init_recursive>:
 8006580:	4770      	bx	lr
 8006582:	bf00      	nop

08006584 <__retarget_lock_close_recursive>:
 8006584:	4770      	bx	lr
 8006586:	bf00      	nop

08006588 <__retarget_lock_acquire_recursive>:
 8006588:	4770      	bx	lr
 800658a:	bf00      	nop

0800658c <__retarget_lock_release_recursive>:
 800658c:	4770      	bx	lr
 800658e:	bf00      	nop

08006590 <__swhatbuf_r>:
 8006590:	b570      	push	{r4, r5, r6, lr}
 8006592:	460c      	mov	r4, r1
 8006594:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006598:	2900      	cmp	r1, #0
 800659a:	b096      	sub	sp, #88	; 0x58
 800659c:	4615      	mov	r5, r2
 800659e:	461e      	mov	r6, r3
 80065a0:	da0f      	bge.n	80065c2 <__swhatbuf_r+0x32>
 80065a2:	89a2      	ldrh	r2, [r4, #12]
 80065a4:	2300      	movs	r3, #0
 80065a6:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80065aa:	6033      	str	r3, [r6, #0]
 80065ac:	d104      	bne.n	80065b8 <__swhatbuf_r+0x28>
 80065ae:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80065b2:	602b      	str	r3, [r5, #0]
 80065b4:	b016      	add	sp, #88	; 0x58
 80065b6:	bd70      	pop	{r4, r5, r6, pc}
 80065b8:	2240      	movs	r2, #64	; 0x40
 80065ba:	4618      	mov	r0, r3
 80065bc:	602a      	str	r2, [r5, #0]
 80065be:	b016      	add	sp, #88	; 0x58
 80065c0:	bd70      	pop	{r4, r5, r6, pc}
 80065c2:	466a      	mov	r2, sp
 80065c4:	f001 f936 	bl	8007834 <_fstat_r>
 80065c8:	2800      	cmp	r0, #0
 80065ca:	dbea      	blt.n	80065a2 <__swhatbuf_r+0x12>
 80065cc:	9b01      	ldr	r3, [sp, #4]
 80065ce:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80065d2:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80065d6:	fab3 f383 	clz	r3, r3
 80065da:	095b      	lsrs	r3, r3, #5
 80065dc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80065e0:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80065e4:	6033      	str	r3, [r6, #0]
 80065e6:	602a      	str	r2, [r5, #0]
 80065e8:	b016      	add	sp, #88	; 0x58
 80065ea:	bd70      	pop	{r4, r5, r6, pc}

080065ec <__smakebuf_r>:
 80065ec:	898a      	ldrh	r2, [r1, #12]
 80065ee:	0792      	lsls	r2, r2, #30
 80065f0:	460b      	mov	r3, r1
 80065f2:	d506      	bpl.n	8006602 <__smakebuf_r+0x16>
 80065f4:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80065f8:	2101      	movs	r1, #1
 80065fa:	601a      	str	r2, [r3, #0]
 80065fc:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006600:	4770      	bx	lr
 8006602:	b570      	push	{r4, r5, r6, lr}
 8006604:	b082      	sub	sp, #8
 8006606:	ab01      	add	r3, sp, #4
 8006608:	466a      	mov	r2, sp
 800660a:	460c      	mov	r4, r1
 800660c:	4605      	mov	r5, r0
 800660e:	f7ff ffbf 	bl	8006590 <__swhatbuf_r>
 8006612:	9900      	ldr	r1, [sp, #0]
 8006614:	4606      	mov	r6, r0
 8006616:	4628      	mov	r0, r5
 8006618:	f000 f832 	bl	8006680 <_malloc_r>
 800661c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006620:	b1d8      	cbz	r0, 800665a <__smakebuf_r+0x6e>
 8006622:	4916      	ldr	r1, [pc, #88]	; (800667c <__smakebuf_r+0x90>)
 8006624:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006626:	9a01      	ldr	r2, [sp, #4]
 8006628:	9900      	ldr	r1, [sp, #0]
 800662a:	6020      	str	r0, [r4, #0]
 800662c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006630:	81a3      	strh	r3, [r4, #12]
 8006632:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006636:	b91a      	cbnz	r2, 8006640 <__smakebuf_r+0x54>
 8006638:	4333      	orrs	r3, r6
 800663a:	81a3      	strh	r3, [r4, #12]
 800663c:	b002      	add	sp, #8
 800663e:	bd70      	pop	{r4, r5, r6, pc}
 8006640:	4628      	mov	r0, r5
 8006642:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006646:	f001 fa87 	bl	8007b58 <_isatty_r>
 800664a:	b1a0      	cbz	r0, 8006676 <__smakebuf_r+0x8a>
 800664c:	89a3      	ldrh	r3, [r4, #12]
 800664e:	f023 0303 	bic.w	r3, r3, #3
 8006652:	f043 0301 	orr.w	r3, r3, #1
 8006656:	b21b      	sxth	r3, r3
 8006658:	e7ee      	b.n	8006638 <__smakebuf_r+0x4c>
 800665a:	059a      	lsls	r2, r3, #22
 800665c:	d4ee      	bmi.n	800663c <__smakebuf_r+0x50>
 800665e:	f023 0303 	bic.w	r3, r3, #3
 8006662:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006666:	f043 0302 	orr.w	r3, r3, #2
 800666a:	2101      	movs	r1, #1
 800666c:	81a3      	strh	r3, [r4, #12]
 800666e:	6022      	str	r2, [r4, #0]
 8006670:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006674:	e7e2      	b.n	800663c <__smakebuf_r+0x50>
 8006676:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800667a:	e7dd      	b.n	8006638 <__smakebuf_r+0x4c>
 800667c:	080061d9 	.word	0x080061d9

08006680 <_malloc_r>:
 8006680:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006684:	f101 050b 	add.w	r5, r1, #11
 8006688:	2d16      	cmp	r5, #22
 800668a:	b083      	sub	sp, #12
 800668c:	4606      	mov	r6, r0
 800668e:	d823      	bhi.n	80066d8 <_malloc_r+0x58>
 8006690:	2910      	cmp	r1, #16
 8006692:	f200 80b9 	bhi.w	8006808 <_malloc_r+0x188>
 8006696:	f000 faeb 	bl	8006c70 <__malloc_lock>
 800669a:	2510      	movs	r5, #16
 800669c:	2318      	movs	r3, #24
 800669e:	2002      	movs	r0, #2
 80066a0:	4fc5      	ldr	r7, [pc, #788]	; (80069b8 <_malloc_r+0x338>)
 80066a2:	443b      	add	r3, r7
 80066a4:	f1a3 0208 	sub.w	r2, r3, #8
 80066a8:	685c      	ldr	r4, [r3, #4]
 80066aa:	4294      	cmp	r4, r2
 80066ac:	f000 8166 	beq.w	800697c <_malloc_r+0x2fc>
 80066b0:	6863      	ldr	r3, [r4, #4]
 80066b2:	f023 0303 	bic.w	r3, r3, #3
 80066b6:	4423      	add	r3, r4
 80066b8:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80066bc:	685a      	ldr	r2, [r3, #4]
 80066be:	60e9      	str	r1, [r5, #12]
 80066c0:	f042 0201 	orr.w	r2, r2, #1
 80066c4:	608d      	str	r5, [r1, #8]
 80066c6:	4630      	mov	r0, r6
 80066c8:	605a      	str	r2, [r3, #4]
 80066ca:	f000 fad7 	bl	8006c7c <__malloc_unlock>
 80066ce:	3408      	adds	r4, #8
 80066d0:	4620      	mov	r0, r4
 80066d2:	b003      	add	sp, #12
 80066d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066d8:	f035 0507 	bics.w	r5, r5, #7
 80066dc:	f100 8094 	bmi.w	8006808 <_malloc_r+0x188>
 80066e0:	42a9      	cmp	r1, r5
 80066e2:	f200 8091 	bhi.w	8006808 <_malloc_r+0x188>
 80066e6:	f000 fac3 	bl	8006c70 <__malloc_lock>
 80066ea:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80066ee:	f0c0 8183 	bcc.w	80069f8 <_malloc_r+0x378>
 80066f2:	0a6b      	lsrs	r3, r5, #9
 80066f4:	f000 808f 	beq.w	8006816 <_malloc_r+0x196>
 80066f8:	2b04      	cmp	r3, #4
 80066fa:	f200 8146 	bhi.w	800698a <_malloc_r+0x30a>
 80066fe:	09ab      	lsrs	r3, r5, #6
 8006700:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006704:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006708:	00c3      	lsls	r3, r0, #3
 800670a:	4fab      	ldr	r7, [pc, #684]	; (80069b8 <_malloc_r+0x338>)
 800670c:	443b      	add	r3, r7
 800670e:	f1a3 0108 	sub.w	r1, r3, #8
 8006712:	685c      	ldr	r4, [r3, #4]
 8006714:	42a1      	cmp	r1, r4
 8006716:	d106      	bne.n	8006726 <_malloc_r+0xa6>
 8006718:	e00c      	b.n	8006734 <_malloc_r+0xb4>
 800671a:	2a00      	cmp	r2, #0
 800671c:	f280 811d 	bge.w	800695a <_malloc_r+0x2da>
 8006720:	68e4      	ldr	r4, [r4, #12]
 8006722:	42a1      	cmp	r1, r4
 8006724:	d006      	beq.n	8006734 <_malloc_r+0xb4>
 8006726:	6863      	ldr	r3, [r4, #4]
 8006728:	f023 0303 	bic.w	r3, r3, #3
 800672c:	1b5a      	subs	r2, r3, r5
 800672e:	2a0f      	cmp	r2, #15
 8006730:	ddf3      	ble.n	800671a <_malloc_r+0x9a>
 8006732:	4660      	mov	r0, ip
 8006734:	693c      	ldr	r4, [r7, #16]
 8006736:	f8df c294 	ldr.w	ip, [pc, #660]	; 80069cc <_malloc_r+0x34c>
 800673a:	4564      	cmp	r4, ip
 800673c:	d071      	beq.n	8006822 <_malloc_r+0x1a2>
 800673e:	6863      	ldr	r3, [r4, #4]
 8006740:	f023 0303 	bic.w	r3, r3, #3
 8006744:	1b5a      	subs	r2, r3, r5
 8006746:	2a0f      	cmp	r2, #15
 8006748:	f300 8144 	bgt.w	80069d4 <_malloc_r+0x354>
 800674c:	2a00      	cmp	r2, #0
 800674e:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8006752:	f280 8126 	bge.w	80069a2 <_malloc_r+0x322>
 8006756:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800675a:	f080 8169 	bcs.w	8006a30 <_malloc_r+0x3b0>
 800675e:	08db      	lsrs	r3, r3, #3
 8006760:	1c59      	adds	r1, r3, #1
 8006762:	687a      	ldr	r2, [r7, #4]
 8006764:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006768:	f8c4 8008 	str.w	r8, [r4, #8]
 800676c:	f04f 0e01 	mov.w	lr, #1
 8006770:	109b      	asrs	r3, r3, #2
 8006772:	fa0e f303 	lsl.w	r3, lr, r3
 8006776:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800677a:	4313      	orrs	r3, r2
 800677c:	f1ae 0208 	sub.w	r2, lr, #8
 8006780:	60e2      	str	r2, [r4, #12]
 8006782:	607b      	str	r3, [r7, #4]
 8006784:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006788:	f8c8 400c 	str.w	r4, [r8, #12]
 800678c:	1082      	asrs	r2, r0, #2
 800678e:	2401      	movs	r4, #1
 8006790:	4094      	lsls	r4, r2
 8006792:	429c      	cmp	r4, r3
 8006794:	d84b      	bhi.n	800682e <_malloc_r+0x1ae>
 8006796:	421c      	tst	r4, r3
 8006798:	d106      	bne.n	80067a8 <_malloc_r+0x128>
 800679a:	f020 0003 	bic.w	r0, r0, #3
 800679e:	0064      	lsls	r4, r4, #1
 80067a0:	421c      	tst	r4, r3
 80067a2:	f100 0004 	add.w	r0, r0, #4
 80067a6:	d0fa      	beq.n	800679e <_malloc_r+0x11e>
 80067a8:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80067ac:	46ce      	mov	lr, r9
 80067ae:	4680      	mov	r8, r0
 80067b0:	f8de 300c 	ldr.w	r3, [lr, #12]
 80067b4:	459e      	cmp	lr, r3
 80067b6:	d107      	bne.n	80067c8 <_malloc_r+0x148>
 80067b8:	e122      	b.n	8006a00 <_malloc_r+0x380>
 80067ba:	2a00      	cmp	r2, #0
 80067bc:	f280 8129 	bge.w	8006a12 <_malloc_r+0x392>
 80067c0:	68db      	ldr	r3, [r3, #12]
 80067c2:	459e      	cmp	lr, r3
 80067c4:	f000 811c 	beq.w	8006a00 <_malloc_r+0x380>
 80067c8:	6859      	ldr	r1, [r3, #4]
 80067ca:	f021 0103 	bic.w	r1, r1, #3
 80067ce:	1b4a      	subs	r2, r1, r5
 80067d0:	2a0f      	cmp	r2, #15
 80067d2:	ddf2      	ble.n	80067ba <_malloc_r+0x13a>
 80067d4:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80067d8:	195c      	adds	r4, r3, r5
 80067da:	f045 0501 	orr.w	r5, r5, #1
 80067de:	605d      	str	r5, [r3, #4]
 80067e0:	f042 0501 	orr.w	r5, r2, #1
 80067e4:	f8c8 e00c 	str.w	lr, [r8, #12]
 80067e8:	4630      	mov	r0, r6
 80067ea:	f8ce 8008 	str.w	r8, [lr, #8]
 80067ee:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80067f2:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80067f6:	6065      	str	r5, [r4, #4]
 80067f8:	505a      	str	r2, [r3, r1]
 80067fa:	9301      	str	r3, [sp, #4]
 80067fc:	f000 fa3e 	bl	8006c7c <__malloc_unlock>
 8006800:	9b01      	ldr	r3, [sp, #4]
 8006802:	f103 0408 	add.w	r4, r3, #8
 8006806:	e763      	b.n	80066d0 <_malloc_r+0x50>
 8006808:	2400      	movs	r4, #0
 800680a:	230c      	movs	r3, #12
 800680c:	4620      	mov	r0, r4
 800680e:	6033      	str	r3, [r6, #0]
 8006810:	b003      	add	sp, #12
 8006812:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006816:	f44f 7300 	mov.w	r3, #512	; 0x200
 800681a:	2040      	movs	r0, #64	; 0x40
 800681c:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8006820:	e773      	b.n	800670a <_malloc_r+0x8a>
 8006822:	687b      	ldr	r3, [r7, #4]
 8006824:	1082      	asrs	r2, r0, #2
 8006826:	2401      	movs	r4, #1
 8006828:	4094      	lsls	r4, r2
 800682a:	429c      	cmp	r4, r3
 800682c:	d9b3      	bls.n	8006796 <_malloc_r+0x116>
 800682e:	68bc      	ldr	r4, [r7, #8]
 8006830:	6863      	ldr	r3, [r4, #4]
 8006832:	f023 0903 	bic.w	r9, r3, #3
 8006836:	45a9      	cmp	r9, r5
 8006838:	d303      	bcc.n	8006842 <_malloc_r+0x1c2>
 800683a:	eba9 0305 	sub.w	r3, r9, r5
 800683e:	2b0f      	cmp	r3, #15
 8006840:	dc7b      	bgt.n	800693a <_malloc_r+0x2ba>
 8006842:	4b5e      	ldr	r3, [pc, #376]	; (80069bc <_malloc_r+0x33c>)
 8006844:	f8df a188 	ldr.w	sl, [pc, #392]	; 80069d0 <_malloc_r+0x350>
 8006848:	681a      	ldr	r2, [r3, #0]
 800684a:	f8da 3000 	ldr.w	r3, [sl]
 800684e:	3301      	adds	r3, #1
 8006850:	eb05 0802 	add.w	r8, r5, r2
 8006854:	f000 8148 	beq.w	8006ae8 <_malloc_r+0x468>
 8006858:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 800685c:	f108 080f 	add.w	r8, r8, #15
 8006860:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006864:	f028 080f 	bic.w	r8, r8, #15
 8006868:	4641      	mov	r1, r8
 800686a:	4630      	mov	r0, r6
 800686c:	f000 fd16 	bl	800729c <_sbrk_r>
 8006870:	f1b0 3fff 	cmp.w	r0, #4294967295
 8006874:	4683      	mov	fp, r0
 8006876:	f000 8104 	beq.w	8006a82 <_malloc_r+0x402>
 800687a:	eb04 0009 	add.w	r0, r4, r9
 800687e:	4558      	cmp	r0, fp
 8006880:	f200 80fd 	bhi.w	8006a7e <_malloc_r+0x3fe>
 8006884:	4a4e      	ldr	r2, [pc, #312]	; (80069c0 <_malloc_r+0x340>)
 8006886:	6813      	ldr	r3, [r2, #0]
 8006888:	4443      	add	r3, r8
 800688a:	6013      	str	r3, [r2, #0]
 800688c:	f000 814d 	beq.w	8006b2a <_malloc_r+0x4aa>
 8006890:	f8da 1000 	ldr.w	r1, [sl]
 8006894:	3101      	adds	r1, #1
 8006896:	bf1b      	ittet	ne
 8006898:	ebab 0000 	subne.w	r0, fp, r0
 800689c:	181b      	addne	r3, r3, r0
 800689e:	f8ca b000 	streq.w	fp, [sl]
 80068a2:	6013      	strne	r3, [r2, #0]
 80068a4:	f01b 0307 	ands.w	r3, fp, #7
 80068a8:	f000 8134 	beq.w	8006b14 <_malloc_r+0x494>
 80068ac:	f1c3 0108 	rsb	r1, r3, #8
 80068b0:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80068b4:	448b      	add	fp, r1
 80068b6:	3308      	adds	r3, #8
 80068b8:	44d8      	add	r8, fp
 80068ba:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80068be:	eba3 0808 	sub.w	r8, r3, r8
 80068c2:	4641      	mov	r1, r8
 80068c4:	4630      	mov	r0, r6
 80068c6:	9201      	str	r2, [sp, #4]
 80068c8:	f000 fce8 	bl	800729c <_sbrk_r>
 80068cc:	1c43      	adds	r3, r0, #1
 80068ce:	9a01      	ldr	r2, [sp, #4]
 80068d0:	f000 8146 	beq.w	8006b60 <_malloc_r+0x4e0>
 80068d4:	eba0 010b 	sub.w	r1, r0, fp
 80068d8:	4441      	add	r1, r8
 80068da:	f041 0101 	orr.w	r1, r1, #1
 80068de:	6813      	ldr	r3, [r2, #0]
 80068e0:	f8c7 b008 	str.w	fp, [r7, #8]
 80068e4:	4443      	add	r3, r8
 80068e6:	42bc      	cmp	r4, r7
 80068e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80068ec:	6013      	str	r3, [r2, #0]
 80068ee:	d015      	beq.n	800691c <_malloc_r+0x29c>
 80068f0:	f1b9 0f0f 	cmp.w	r9, #15
 80068f4:	f240 8130 	bls.w	8006b58 <_malloc_r+0x4d8>
 80068f8:	6860      	ldr	r0, [r4, #4]
 80068fa:	f1a9 010c 	sub.w	r1, r9, #12
 80068fe:	f021 0107 	bic.w	r1, r1, #7
 8006902:	f000 0001 	and.w	r0, r0, #1
 8006906:	eb04 0c01 	add.w	ip, r4, r1
 800690a:	4308      	orrs	r0, r1
 800690c:	f04f 0e05 	mov.w	lr, #5
 8006910:	290f      	cmp	r1, #15
 8006912:	6060      	str	r0, [r4, #4]
 8006914:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006918:	f200 813a 	bhi.w	8006b90 <_malloc_r+0x510>
 800691c:	4a29      	ldr	r2, [pc, #164]	; (80069c4 <_malloc_r+0x344>)
 800691e:	482a      	ldr	r0, [pc, #168]	; (80069c8 <_malloc_r+0x348>)
 8006920:	6811      	ldr	r1, [r2, #0]
 8006922:	68bc      	ldr	r4, [r7, #8]
 8006924:	428b      	cmp	r3, r1
 8006926:	6801      	ldr	r1, [r0, #0]
 8006928:	bf88      	it	hi
 800692a:	6013      	strhi	r3, [r2, #0]
 800692c:	6862      	ldr	r2, [r4, #4]
 800692e:	428b      	cmp	r3, r1
 8006930:	f022 0203 	bic.w	r2, r2, #3
 8006934:	bf88      	it	hi
 8006936:	6003      	strhi	r3, [r0, #0]
 8006938:	e0a7      	b.n	8006a8a <_malloc_r+0x40a>
 800693a:	1962      	adds	r2, r4, r5
 800693c:	f043 0301 	orr.w	r3, r3, #1
 8006940:	f045 0501 	orr.w	r5, r5, #1
 8006944:	6065      	str	r5, [r4, #4]
 8006946:	4630      	mov	r0, r6
 8006948:	60ba      	str	r2, [r7, #8]
 800694a:	6053      	str	r3, [r2, #4]
 800694c:	f000 f996 	bl	8006c7c <__malloc_unlock>
 8006950:	3408      	adds	r4, #8
 8006952:	4620      	mov	r0, r4
 8006954:	b003      	add	sp, #12
 8006956:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800695a:	4423      	add	r3, r4
 800695c:	68e1      	ldr	r1, [r4, #12]
 800695e:	685a      	ldr	r2, [r3, #4]
 8006960:	68a5      	ldr	r5, [r4, #8]
 8006962:	f042 0201 	orr.w	r2, r2, #1
 8006966:	60e9      	str	r1, [r5, #12]
 8006968:	4630      	mov	r0, r6
 800696a:	608d      	str	r5, [r1, #8]
 800696c:	605a      	str	r2, [r3, #4]
 800696e:	f000 f985 	bl	8006c7c <__malloc_unlock>
 8006972:	3408      	adds	r4, #8
 8006974:	4620      	mov	r0, r4
 8006976:	b003      	add	sp, #12
 8006978:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800697c:	68dc      	ldr	r4, [r3, #12]
 800697e:	42a3      	cmp	r3, r4
 8006980:	bf08      	it	eq
 8006982:	3002      	addeq	r0, #2
 8006984:	f43f aed6 	beq.w	8006734 <_malloc_r+0xb4>
 8006988:	e692      	b.n	80066b0 <_malloc_r+0x30>
 800698a:	2b14      	cmp	r3, #20
 800698c:	d971      	bls.n	8006a72 <_malloc_r+0x3f2>
 800698e:	2b54      	cmp	r3, #84	; 0x54
 8006990:	f200 80ad 	bhi.w	8006aee <_malloc_r+0x46e>
 8006994:	0b2b      	lsrs	r3, r5, #12
 8006996:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800699a:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800699e:	00c3      	lsls	r3, r0, #3
 80069a0:	e6b3      	b.n	800670a <_malloc_r+0x8a>
 80069a2:	4423      	add	r3, r4
 80069a4:	4630      	mov	r0, r6
 80069a6:	685a      	ldr	r2, [r3, #4]
 80069a8:	f042 0201 	orr.w	r2, r2, #1
 80069ac:	605a      	str	r2, [r3, #4]
 80069ae:	3408      	adds	r4, #8
 80069b0:	f000 f964 	bl	8006c7c <__malloc_unlock>
 80069b4:	e68c      	b.n	80066d0 <_malloc_r+0x50>
 80069b6:	bf00      	nop
 80069b8:	20000444 	.word	0x20000444
 80069bc:	20000bd8 	.word	0x20000bd8
 80069c0:	20000ba8 	.word	0x20000ba8
 80069c4:	20000bd0 	.word	0x20000bd0
 80069c8:	20000bd4 	.word	0x20000bd4
 80069cc:	2000044c 	.word	0x2000044c
 80069d0:	2000084c 	.word	0x2000084c
 80069d4:	1961      	adds	r1, r4, r5
 80069d6:	f045 0e01 	orr.w	lr, r5, #1
 80069da:	f042 0501 	orr.w	r5, r2, #1
 80069de:	f8c4 e004 	str.w	lr, [r4, #4]
 80069e2:	4630      	mov	r0, r6
 80069e4:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80069e8:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80069ec:	604d      	str	r5, [r1, #4]
 80069ee:	50e2      	str	r2, [r4, r3]
 80069f0:	f000 f944 	bl	8006c7c <__malloc_unlock>
 80069f4:	3408      	adds	r4, #8
 80069f6:	e66b      	b.n	80066d0 <_malloc_r+0x50>
 80069f8:	08e8      	lsrs	r0, r5, #3
 80069fa:	f105 0308 	add.w	r3, r5, #8
 80069fe:	e64f      	b.n	80066a0 <_malloc_r+0x20>
 8006a00:	f108 0801 	add.w	r8, r8, #1
 8006a04:	f018 0f03 	tst.w	r8, #3
 8006a08:	f10e 0e08 	add.w	lr, lr, #8
 8006a0c:	f47f aed0 	bne.w	80067b0 <_malloc_r+0x130>
 8006a10:	e052      	b.n	8006ab8 <_malloc_r+0x438>
 8006a12:	4419      	add	r1, r3
 8006a14:	461c      	mov	r4, r3
 8006a16:	684a      	ldr	r2, [r1, #4]
 8006a18:	68db      	ldr	r3, [r3, #12]
 8006a1a:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8006a1e:	f042 0201 	orr.w	r2, r2, #1
 8006a22:	604a      	str	r2, [r1, #4]
 8006a24:	4630      	mov	r0, r6
 8006a26:	60eb      	str	r3, [r5, #12]
 8006a28:	609d      	str	r5, [r3, #8]
 8006a2a:	f000 f927 	bl	8006c7c <__malloc_unlock>
 8006a2e:	e64f      	b.n	80066d0 <_malloc_r+0x50>
 8006a30:	0a5a      	lsrs	r2, r3, #9
 8006a32:	2a04      	cmp	r2, #4
 8006a34:	d935      	bls.n	8006aa2 <_malloc_r+0x422>
 8006a36:	2a14      	cmp	r2, #20
 8006a38:	d86f      	bhi.n	8006b1a <_malloc_r+0x49a>
 8006a3a:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8006a3e:	00c9      	lsls	r1, r1, #3
 8006a40:	325b      	adds	r2, #91	; 0x5b
 8006a42:	eb07 0e01 	add.w	lr, r7, r1
 8006a46:	5879      	ldr	r1, [r7, r1]
 8006a48:	f1ae 0e08 	sub.w	lr, lr, #8
 8006a4c:	458e      	cmp	lr, r1
 8006a4e:	d058      	beq.n	8006b02 <_malloc_r+0x482>
 8006a50:	684a      	ldr	r2, [r1, #4]
 8006a52:	f022 0203 	bic.w	r2, r2, #3
 8006a56:	429a      	cmp	r2, r3
 8006a58:	d902      	bls.n	8006a60 <_malloc_r+0x3e0>
 8006a5a:	6889      	ldr	r1, [r1, #8]
 8006a5c:	458e      	cmp	lr, r1
 8006a5e:	d1f7      	bne.n	8006a50 <_malloc_r+0x3d0>
 8006a60:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006a64:	687b      	ldr	r3, [r7, #4]
 8006a66:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006a6a:	f8ce 4008 	str.w	r4, [lr, #8]
 8006a6e:	60cc      	str	r4, [r1, #12]
 8006a70:	e68c      	b.n	800678c <_malloc_r+0x10c>
 8006a72:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006a76:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006a7a:	00c3      	lsls	r3, r0, #3
 8006a7c:	e645      	b.n	800670a <_malloc_r+0x8a>
 8006a7e:	42bc      	cmp	r4, r7
 8006a80:	d072      	beq.n	8006b68 <_malloc_r+0x4e8>
 8006a82:	68bc      	ldr	r4, [r7, #8]
 8006a84:	6862      	ldr	r2, [r4, #4]
 8006a86:	f022 0203 	bic.w	r2, r2, #3
 8006a8a:	4295      	cmp	r5, r2
 8006a8c:	eba2 0305 	sub.w	r3, r2, r5
 8006a90:	d802      	bhi.n	8006a98 <_malloc_r+0x418>
 8006a92:	2b0f      	cmp	r3, #15
 8006a94:	f73f af51 	bgt.w	800693a <_malloc_r+0x2ba>
 8006a98:	4630      	mov	r0, r6
 8006a9a:	f000 f8ef 	bl	8006c7c <__malloc_unlock>
 8006a9e:	2400      	movs	r4, #0
 8006aa0:	e616      	b.n	80066d0 <_malloc_r+0x50>
 8006aa2:	099a      	lsrs	r2, r3, #6
 8006aa4:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006aa8:	00c9      	lsls	r1, r1, #3
 8006aaa:	3238      	adds	r2, #56	; 0x38
 8006aac:	e7c9      	b.n	8006a42 <_malloc_r+0x3c2>
 8006aae:	f8d9 9000 	ldr.w	r9, [r9]
 8006ab2:	4599      	cmp	r9, r3
 8006ab4:	f040 8083 	bne.w	8006bbe <_malloc_r+0x53e>
 8006ab8:	f010 0f03 	tst.w	r0, #3
 8006abc:	f1a9 0308 	sub.w	r3, r9, #8
 8006ac0:	f100 30ff 	add.w	r0, r0, #4294967295
 8006ac4:	d1f3      	bne.n	8006aae <_malloc_r+0x42e>
 8006ac6:	687b      	ldr	r3, [r7, #4]
 8006ac8:	ea23 0304 	bic.w	r3, r3, r4
 8006acc:	607b      	str	r3, [r7, #4]
 8006ace:	0064      	lsls	r4, r4, #1
 8006ad0:	429c      	cmp	r4, r3
 8006ad2:	f63f aeac 	bhi.w	800682e <_malloc_r+0x1ae>
 8006ad6:	b91c      	cbnz	r4, 8006ae0 <_malloc_r+0x460>
 8006ad8:	e6a9      	b.n	800682e <_malloc_r+0x1ae>
 8006ada:	0064      	lsls	r4, r4, #1
 8006adc:	f108 0804 	add.w	r8, r8, #4
 8006ae0:	421c      	tst	r4, r3
 8006ae2:	d0fa      	beq.n	8006ada <_malloc_r+0x45a>
 8006ae4:	4640      	mov	r0, r8
 8006ae6:	e65f      	b.n	80067a8 <_malloc_r+0x128>
 8006ae8:	f108 0810 	add.w	r8, r8, #16
 8006aec:	e6bc      	b.n	8006868 <_malloc_r+0x1e8>
 8006aee:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006af2:	d826      	bhi.n	8006b42 <_malloc_r+0x4c2>
 8006af4:	0beb      	lsrs	r3, r5, #15
 8006af6:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006afa:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8006afe:	00c3      	lsls	r3, r0, #3
 8006b00:	e603      	b.n	800670a <_malloc_r+0x8a>
 8006b02:	687b      	ldr	r3, [r7, #4]
 8006b04:	1092      	asrs	r2, r2, #2
 8006b06:	f04f 0801 	mov.w	r8, #1
 8006b0a:	fa08 f202 	lsl.w	r2, r8, r2
 8006b0e:	4313      	orrs	r3, r2
 8006b10:	607b      	str	r3, [r7, #4]
 8006b12:	e7a8      	b.n	8006a66 <_malloc_r+0x3e6>
 8006b14:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006b18:	e6ce      	b.n	80068b8 <_malloc_r+0x238>
 8006b1a:	2a54      	cmp	r2, #84	; 0x54
 8006b1c:	d829      	bhi.n	8006b72 <_malloc_r+0x4f2>
 8006b1e:	0b1a      	lsrs	r2, r3, #12
 8006b20:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006b24:	00c9      	lsls	r1, r1, #3
 8006b26:	326e      	adds	r2, #110	; 0x6e
 8006b28:	e78b      	b.n	8006a42 <_malloc_r+0x3c2>
 8006b2a:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8006b2e:	2900      	cmp	r1, #0
 8006b30:	f47f aeae 	bne.w	8006890 <_malloc_r+0x210>
 8006b34:	eb09 0208 	add.w	r2, r9, r8
 8006b38:	68b9      	ldr	r1, [r7, #8]
 8006b3a:	f042 0201 	orr.w	r2, r2, #1
 8006b3e:	604a      	str	r2, [r1, #4]
 8006b40:	e6ec      	b.n	800691c <_malloc_r+0x29c>
 8006b42:	f240 5254 	movw	r2, #1364	; 0x554
 8006b46:	4293      	cmp	r3, r2
 8006b48:	d81c      	bhi.n	8006b84 <_malloc_r+0x504>
 8006b4a:	0cab      	lsrs	r3, r5, #18
 8006b4c:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8006b50:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006b54:	00c3      	lsls	r3, r0, #3
 8006b56:	e5d8      	b.n	800670a <_malloc_r+0x8a>
 8006b58:	2301      	movs	r3, #1
 8006b5a:	f8cb 3004 	str.w	r3, [fp, #4]
 8006b5e:	e79b      	b.n	8006a98 <_malloc_r+0x418>
 8006b60:	2101      	movs	r1, #1
 8006b62:	f04f 0800 	mov.w	r8, #0
 8006b66:	e6ba      	b.n	80068de <_malloc_r+0x25e>
 8006b68:	4a16      	ldr	r2, [pc, #88]	; (8006bc4 <_malloc_r+0x544>)
 8006b6a:	6813      	ldr	r3, [r2, #0]
 8006b6c:	4443      	add	r3, r8
 8006b6e:	6013      	str	r3, [r2, #0]
 8006b70:	e68e      	b.n	8006890 <_malloc_r+0x210>
 8006b72:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006b76:	d814      	bhi.n	8006ba2 <_malloc_r+0x522>
 8006b78:	0bda      	lsrs	r2, r3, #15
 8006b7a:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006b7e:	00c9      	lsls	r1, r1, #3
 8006b80:	3277      	adds	r2, #119	; 0x77
 8006b82:	e75e      	b.n	8006a42 <_malloc_r+0x3c2>
 8006b84:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006b88:	207f      	movs	r0, #127	; 0x7f
 8006b8a:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006b8e:	e5bc      	b.n	800670a <_malloc_r+0x8a>
 8006b90:	f104 0108 	add.w	r1, r4, #8
 8006b94:	4630      	mov	r0, r6
 8006b96:	9201      	str	r2, [sp, #4]
 8006b98:	f7ff fbc6 	bl	8006328 <_free_r>
 8006b9c:	9a01      	ldr	r2, [sp, #4]
 8006b9e:	6813      	ldr	r3, [r2, #0]
 8006ba0:	e6bc      	b.n	800691c <_malloc_r+0x29c>
 8006ba2:	f240 5154 	movw	r1, #1364	; 0x554
 8006ba6:	428a      	cmp	r2, r1
 8006ba8:	d805      	bhi.n	8006bb6 <_malloc_r+0x536>
 8006baa:	0c9a      	lsrs	r2, r3, #18
 8006bac:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006bb0:	00c9      	lsls	r1, r1, #3
 8006bb2:	327c      	adds	r2, #124	; 0x7c
 8006bb4:	e745      	b.n	8006a42 <_malloc_r+0x3c2>
 8006bb6:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006bba:	227e      	movs	r2, #126	; 0x7e
 8006bbc:	e741      	b.n	8006a42 <_malloc_r+0x3c2>
 8006bbe:	687b      	ldr	r3, [r7, #4]
 8006bc0:	e785      	b.n	8006ace <_malloc_r+0x44e>
 8006bc2:	bf00      	nop
 8006bc4:	20000ba8 	.word	0x20000ba8
	...

08006bd0 <memchr>:
 8006bd0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8006bd4:	2a10      	cmp	r2, #16
 8006bd6:	db2b      	blt.n	8006c30 <memchr+0x60>
 8006bd8:	f010 0f07 	tst.w	r0, #7
 8006bdc:	d008      	beq.n	8006bf0 <memchr+0x20>
 8006bde:	f810 3b01 	ldrb.w	r3, [r0], #1
 8006be2:	3a01      	subs	r2, #1
 8006be4:	428b      	cmp	r3, r1
 8006be6:	d02d      	beq.n	8006c44 <memchr+0x74>
 8006be8:	f010 0f07 	tst.w	r0, #7
 8006bec:	b342      	cbz	r2, 8006c40 <memchr+0x70>
 8006bee:	d1f6      	bne.n	8006bde <memchr+0xe>
 8006bf0:	b4f0      	push	{r4, r5, r6, r7}
 8006bf2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8006bf6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 8006bfa:	f022 0407 	bic.w	r4, r2, #7
 8006bfe:	f07f 0700 	mvns.w	r7, #0
 8006c02:	2300      	movs	r3, #0
 8006c04:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8006c08:	3c08      	subs	r4, #8
 8006c0a:	ea85 0501 	eor.w	r5, r5, r1
 8006c0e:	ea86 0601 	eor.w	r6, r6, r1
 8006c12:	fa85 f547 	uadd8	r5, r5, r7
 8006c16:	faa3 f587 	sel	r5, r3, r7
 8006c1a:	fa86 f647 	uadd8	r6, r6, r7
 8006c1e:	faa5 f687 	sel	r6, r5, r7
 8006c22:	b98e      	cbnz	r6, 8006c48 <memchr+0x78>
 8006c24:	d1ee      	bne.n	8006c04 <memchr+0x34>
 8006c26:	bcf0      	pop	{r4, r5, r6, r7}
 8006c28:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8006c2c:	f002 0207 	and.w	r2, r2, #7
 8006c30:	b132      	cbz	r2, 8006c40 <memchr+0x70>
 8006c32:	f810 3b01 	ldrb.w	r3, [r0], #1
 8006c36:	3a01      	subs	r2, #1
 8006c38:	ea83 0301 	eor.w	r3, r3, r1
 8006c3c:	b113      	cbz	r3, 8006c44 <memchr+0x74>
 8006c3e:	d1f8      	bne.n	8006c32 <memchr+0x62>
 8006c40:	2000      	movs	r0, #0
 8006c42:	4770      	bx	lr
 8006c44:	3801      	subs	r0, #1
 8006c46:	4770      	bx	lr
 8006c48:	2d00      	cmp	r5, #0
 8006c4a:	bf06      	itte	eq
 8006c4c:	4635      	moveq	r5, r6
 8006c4e:	3803      	subeq	r0, #3
 8006c50:	3807      	subne	r0, #7
 8006c52:	f015 0f01 	tst.w	r5, #1
 8006c56:	d107      	bne.n	8006c68 <memchr+0x98>
 8006c58:	3001      	adds	r0, #1
 8006c5a:	f415 7f80 	tst.w	r5, #256	; 0x100
 8006c5e:	bf02      	ittt	eq
 8006c60:	3001      	addeq	r0, #1
 8006c62:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8006c66:	3001      	addeq	r0, #1
 8006c68:	bcf0      	pop	{r4, r5, r6, r7}
 8006c6a:	3801      	subs	r0, #1
 8006c6c:	4770      	bx	lr
 8006c6e:	bf00      	nop

08006c70 <__malloc_lock>:
 8006c70:	4801      	ldr	r0, [pc, #4]	; (8006c78 <__malloc_lock+0x8>)
 8006c72:	f7ff bc89 	b.w	8006588 <__retarget_lock_acquire_recursive>
 8006c76:	bf00      	nop
 8006c78:	20000c38 	.word	0x20000c38

08006c7c <__malloc_unlock>:
 8006c7c:	4801      	ldr	r0, [pc, #4]	; (8006c84 <__malloc_unlock+0x8>)
 8006c7e:	f7ff bc85 	b.w	800658c <__retarget_lock_release_recursive>
 8006c82:	bf00      	nop
 8006c84:	20000c38 	.word	0x20000c38

08006c88 <_Balloc>:
 8006c88:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006c8a:	b570      	push	{r4, r5, r6, lr}
 8006c8c:	4605      	mov	r5, r0
 8006c8e:	460c      	mov	r4, r1
 8006c90:	b14b      	cbz	r3, 8006ca6 <_Balloc+0x1e>
 8006c92:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006c96:	b180      	cbz	r0, 8006cba <_Balloc+0x32>
 8006c98:	6802      	ldr	r2, [r0, #0]
 8006c9a:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006c9e:	2300      	movs	r3, #0
 8006ca0:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006ca4:	bd70      	pop	{r4, r5, r6, pc}
 8006ca6:	2221      	movs	r2, #33	; 0x21
 8006ca8:	2104      	movs	r1, #4
 8006caa:	f000 fc93 	bl	80075d4 <_calloc_r>
 8006cae:	4603      	mov	r3, r0
 8006cb0:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006cb2:	2800      	cmp	r0, #0
 8006cb4:	d1ed      	bne.n	8006c92 <_Balloc+0xa>
 8006cb6:	2000      	movs	r0, #0
 8006cb8:	bd70      	pop	{r4, r5, r6, pc}
 8006cba:	2101      	movs	r1, #1
 8006cbc:	fa01 f604 	lsl.w	r6, r1, r4
 8006cc0:	1d72      	adds	r2, r6, #5
 8006cc2:	4628      	mov	r0, r5
 8006cc4:	0092      	lsls	r2, r2, #2
 8006cc6:	f000 fc85 	bl	80075d4 <_calloc_r>
 8006cca:	2800      	cmp	r0, #0
 8006ccc:	d0f3      	beq.n	8006cb6 <_Balloc+0x2e>
 8006cce:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006cd2:	e7e4      	b.n	8006c9e <_Balloc+0x16>

08006cd4 <_Bfree>:
 8006cd4:	b131      	cbz	r1, 8006ce4 <_Bfree+0x10>
 8006cd6:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006cd8:	684a      	ldr	r2, [r1, #4]
 8006cda:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006cde:	6008      	str	r0, [r1, #0]
 8006ce0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006ce4:	4770      	bx	lr
 8006ce6:	bf00      	nop

08006ce8 <__multadd>:
 8006ce8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006cea:	690c      	ldr	r4, [r1, #16]
 8006cec:	b083      	sub	sp, #12
 8006cee:	460d      	mov	r5, r1
 8006cf0:	4606      	mov	r6, r0
 8006cf2:	f101 0c14 	add.w	ip, r1, #20
 8006cf6:	2700      	movs	r7, #0
 8006cf8:	f8dc 0000 	ldr.w	r0, [ip]
 8006cfc:	b281      	uxth	r1, r0
 8006cfe:	fb02 3301 	mla	r3, r2, r1, r3
 8006d02:	0c01      	lsrs	r1, r0, #16
 8006d04:	0c18      	lsrs	r0, r3, #16
 8006d06:	fb02 0101 	mla	r1, r2, r1, r0
 8006d0a:	b29b      	uxth	r3, r3
 8006d0c:	3701      	adds	r7, #1
 8006d0e:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006d12:	42bc      	cmp	r4, r7
 8006d14:	f84c 3b04 	str.w	r3, [ip], #4
 8006d18:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006d1c:	dcec      	bgt.n	8006cf8 <__multadd+0x10>
 8006d1e:	b13b      	cbz	r3, 8006d30 <__multadd+0x48>
 8006d20:	68aa      	ldr	r2, [r5, #8]
 8006d22:	42a2      	cmp	r2, r4
 8006d24:	dd07      	ble.n	8006d36 <__multadd+0x4e>
 8006d26:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006d2a:	3401      	adds	r4, #1
 8006d2c:	6153      	str	r3, [r2, #20]
 8006d2e:	612c      	str	r4, [r5, #16]
 8006d30:	4628      	mov	r0, r5
 8006d32:	b003      	add	sp, #12
 8006d34:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006d36:	6869      	ldr	r1, [r5, #4]
 8006d38:	9301      	str	r3, [sp, #4]
 8006d3a:	3101      	adds	r1, #1
 8006d3c:	4630      	mov	r0, r6
 8006d3e:	f7ff ffa3 	bl	8006c88 <_Balloc>
 8006d42:	692a      	ldr	r2, [r5, #16]
 8006d44:	3202      	adds	r2, #2
 8006d46:	f105 010c 	add.w	r1, r5, #12
 8006d4a:	4607      	mov	r7, r0
 8006d4c:	0092      	lsls	r2, r2, #2
 8006d4e:	300c      	adds	r0, #12
 8006d50:	f7fc fd64 	bl	800381c <memcpy>
 8006d54:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006d56:	6869      	ldr	r1, [r5, #4]
 8006d58:	9b01      	ldr	r3, [sp, #4]
 8006d5a:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006d5e:	6028      	str	r0, [r5, #0]
 8006d60:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006d64:	463d      	mov	r5, r7
 8006d66:	e7de      	b.n	8006d26 <__multadd+0x3e>

08006d68 <__hi0bits>:
 8006d68:	0c02      	lsrs	r2, r0, #16
 8006d6a:	0412      	lsls	r2, r2, #16
 8006d6c:	4603      	mov	r3, r0
 8006d6e:	b9c2      	cbnz	r2, 8006da2 <__hi0bits+0x3a>
 8006d70:	0403      	lsls	r3, r0, #16
 8006d72:	2010      	movs	r0, #16
 8006d74:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006d78:	bf04      	itt	eq
 8006d7a:	021b      	lsleq	r3, r3, #8
 8006d7c:	3008      	addeq	r0, #8
 8006d7e:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006d82:	bf04      	itt	eq
 8006d84:	011b      	lsleq	r3, r3, #4
 8006d86:	3004      	addeq	r0, #4
 8006d88:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006d8c:	bf04      	itt	eq
 8006d8e:	009b      	lsleq	r3, r3, #2
 8006d90:	3002      	addeq	r0, #2
 8006d92:	2b00      	cmp	r3, #0
 8006d94:	db04      	blt.n	8006da0 <__hi0bits+0x38>
 8006d96:	005b      	lsls	r3, r3, #1
 8006d98:	d501      	bpl.n	8006d9e <__hi0bits+0x36>
 8006d9a:	3001      	adds	r0, #1
 8006d9c:	4770      	bx	lr
 8006d9e:	2020      	movs	r0, #32
 8006da0:	4770      	bx	lr
 8006da2:	2000      	movs	r0, #0
 8006da4:	e7e6      	b.n	8006d74 <__hi0bits+0xc>
 8006da6:	bf00      	nop

08006da8 <__lo0bits>:
 8006da8:	6803      	ldr	r3, [r0, #0]
 8006daa:	f013 0207 	ands.w	r2, r3, #7
 8006dae:	4601      	mov	r1, r0
 8006db0:	d007      	beq.n	8006dc2 <__lo0bits+0x1a>
 8006db2:	07da      	lsls	r2, r3, #31
 8006db4:	d41f      	bmi.n	8006df6 <__lo0bits+0x4e>
 8006db6:	0798      	lsls	r0, r3, #30
 8006db8:	d51f      	bpl.n	8006dfa <__lo0bits+0x52>
 8006dba:	085b      	lsrs	r3, r3, #1
 8006dbc:	600b      	str	r3, [r1, #0]
 8006dbe:	2001      	movs	r0, #1
 8006dc0:	4770      	bx	lr
 8006dc2:	b298      	uxth	r0, r3
 8006dc4:	b1a0      	cbz	r0, 8006df0 <__lo0bits+0x48>
 8006dc6:	4610      	mov	r0, r2
 8006dc8:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006dcc:	bf04      	itt	eq
 8006dce:	0a1b      	lsreq	r3, r3, #8
 8006dd0:	3008      	addeq	r0, #8
 8006dd2:	071a      	lsls	r2, r3, #28
 8006dd4:	bf04      	itt	eq
 8006dd6:	091b      	lsreq	r3, r3, #4
 8006dd8:	3004      	addeq	r0, #4
 8006dda:	079a      	lsls	r2, r3, #30
 8006ddc:	bf04      	itt	eq
 8006dde:	089b      	lsreq	r3, r3, #2
 8006de0:	3002      	addeq	r0, #2
 8006de2:	07da      	lsls	r2, r3, #31
 8006de4:	d402      	bmi.n	8006dec <__lo0bits+0x44>
 8006de6:	085b      	lsrs	r3, r3, #1
 8006de8:	d00b      	beq.n	8006e02 <__lo0bits+0x5a>
 8006dea:	3001      	adds	r0, #1
 8006dec:	600b      	str	r3, [r1, #0]
 8006dee:	4770      	bx	lr
 8006df0:	0c1b      	lsrs	r3, r3, #16
 8006df2:	2010      	movs	r0, #16
 8006df4:	e7e8      	b.n	8006dc8 <__lo0bits+0x20>
 8006df6:	2000      	movs	r0, #0
 8006df8:	4770      	bx	lr
 8006dfa:	089b      	lsrs	r3, r3, #2
 8006dfc:	600b      	str	r3, [r1, #0]
 8006dfe:	2002      	movs	r0, #2
 8006e00:	4770      	bx	lr
 8006e02:	2020      	movs	r0, #32
 8006e04:	4770      	bx	lr
 8006e06:	bf00      	nop

08006e08 <__i2b>:
 8006e08:	b510      	push	{r4, lr}
 8006e0a:	460c      	mov	r4, r1
 8006e0c:	2101      	movs	r1, #1
 8006e0e:	f7ff ff3b 	bl	8006c88 <_Balloc>
 8006e12:	2201      	movs	r2, #1
 8006e14:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006e18:	bd10      	pop	{r4, pc}
 8006e1a:	bf00      	nop

08006e1c <__multiply>:
 8006e1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e20:	690e      	ldr	r6, [r1, #16]
 8006e22:	6914      	ldr	r4, [r2, #16]
 8006e24:	42a6      	cmp	r6, r4
 8006e26:	b083      	sub	sp, #12
 8006e28:	460f      	mov	r7, r1
 8006e2a:	4615      	mov	r5, r2
 8006e2c:	da04      	bge.n	8006e38 <__multiply+0x1c>
 8006e2e:	4632      	mov	r2, r6
 8006e30:	462f      	mov	r7, r5
 8006e32:	4626      	mov	r6, r4
 8006e34:	460d      	mov	r5, r1
 8006e36:	4614      	mov	r4, r2
 8006e38:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006e3c:	eb06 0804 	add.w	r8, r6, r4
 8006e40:	4543      	cmp	r3, r8
 8006e42:	bfb8      	it	lt
 8006e44:	3101      	addlt	r1, #1
 8006e46:	f7ff ff1f 	bl	8006c88 <_Balloc>
 8006e4a:	f100 0914 	add.w	r9, r0, #20
 8006e4e:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006e52:	45f1      	cmp	r9, lr
 8006e54:	9000      	str	r0, [sp, #0]
 8006e56:	d205      	bcs.n	8006e64 <__multiply+0x48>
 8006e58:	464b      	mov	r3, r9
 8006e5a:	2200      	movs	r2, #0
 8006e5c:	f843 2b04 	str.w	r2, [r3], #4
 8006e60:	459e      	cmp	lr, r3
 8006e62:	d8fb      	bhi.n	8006e5c <__multiply+0x40>
 8006e64:	f105 0a14 	add.w	sl, r5, #20
 8006e68:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006e6c:	f107 0314 	add.w	r3, r7, #20
 8006e70:	45a2      	cmp	sl, r4
 8006e72:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006e76:	d261      	bcs.n	8006f3c <__multiply+0x120>
 8006e78:	1b64      	subs	r4, r4, r5
 8006e7a:	3c15      	subs	r4, #21
 8006e7c:	f024 0403 	bic.w	r4, r4, #3
 8006e80:	f8cd e004 	str.w	lr, [sp, #4]
 8006e84:	44a2      	add	sl, r4
 8006e86:	f105 0210 	add.w	r2, r5, #16
 8006e8a:	469e      	mov	lr, r3
 8006e8c:	e005      	b.n	8006e9a <__multiply+0x7e>
 8006e8e:	0c2d      	lsrs	r5, r5, #16
 8006e90:	d12b      	bne.n	8006eea <__multiply+0xce>
 8006e92:	4592      	cmp	sl, r2
 8006e94:	f109 0904 	add.w	r9, r9, #4
 8006e98:	d04e      	beq.n	8006f38 <__multiply+0x11c>
 8006e9a:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006e9e:	fa1f fb85 	uxth.w	fp, r5
 8006ea2:	f1bb 0f00 	cmp.w	fp, #0
 8006ea6:	d0f2      	beq.n	8006e8e <__multiply+0x72>
 8006ea8:	4677      	mov	r7, lr
 8006eaa:	464e      	mov	r6, r9
 8006eac:	2000      	movs	r0, #0
 8006eae:	e000      	b.n	8006eb2 <__multiply+0x96>
 8006eb0:	4626      	mov	r6, r4
 8006eb2:	f857 1b04 	ldr.w	r1, [r7], #4
 8006eb6:	6834      	ldr	r4, [r6, #0]
 8006eb8:	b28b      	uxth	r3, r1
 8006eba:	b2a5      	uxth	r5, r4
 8006ebc:	0c09      	lsrs	r1, r1, #16
 8006ebe:	0c24      	lsrs	r4, r4, #16
 8006ec0:	fb0b 5303 	mla	r3, fp, r3, r5
 8006ec4:	4403      	add	r3, r0
 8006ec6:	fb0b 4001 	mla	r0, fp, r1, r4
 8006eca:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006ece:	4634      	mov	r4, r6
 8006ed0:	b29b      	uxth	r3, r3
 8006ed2:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006ed6:	45bc      	cmp	ip, r7
 8006ed8:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006edc:	f844 3b04 	str.w	r3, [r4], #4
 8006ee0:	d8e6      	bhi.n	8006eb0 <__multiply+0x94>
 8006ee2:	6070      	str	r0, [r6, #4]
 8006ee4:	6815      	ldr	r5, [r2, #0]
 8006ee6:	0c2d      	lsrs	r5, r5, #16
 8006ee8:	d0d3      	beq.n	8006e92 <__multiply+0x76>
 8006eea:	f8d9 3000 	ldr.w	r3, [r9]
 8006eee:	4676      	mov	r6, lr
 8006ef0:	4618      	mov	r0, r3
 8006ef2:	46cb      	mov	fp, r9
 8006ef4:	2100      	movs	r1, #0
 8006ef6:	e000      	b.n	8006efa <__multiply+0xde>
 8006ef8:	46a3      	mov	fp, r4
 8006efa:	8834      	ldrh	r4, [r6, #0]
 8006efc:	0c00      	lsrs	r0, r0, #16
 8006efe:	fb05 0004 	mla	r0, r5, r4, r0
 8006f02:	4401      	add	r1, r0
 8006f04:	b29b      	uxth	r3, r3
 8006f06:	465c      	mov	r4, fp
 8006f08:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006f0c:	f844 3b04 	str.w	r3, [r4], #4
 8006f10:	f856 3b04 	ldr.w	r3, [r6], #4
 8006f14:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006f18:	0c1b      	lsrs	r3, r3, #16
 8006f1a:	b287      	uxth	r7, r0
 8006f1c:	fb05 7303 	mla	r3, r5, r3, r7
 8006f20:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006f24:	45b4      	cmp	ip, r6
 8006f26:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006f2a:	d8e5      	bhi.n	8006ef8 <__multiply+0xdc>
 8006f2c:	4592      	cmp	sl, r2
 8006f2e:	f8cb 3004 	str.w	r3, [fp, #4]
 8006f32:	f109 0904 	add.w	r9, r9, #4
 8006f36:	d1b0      	bne.n	8006e9a <__multiply+0x7e>
 8006f38:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006f3c:	f1b8 0f00 	cmp.w	r8, #0
 8006f40:	dd0b      	ble.n	8006f5a <__multiply+0x13e>
 8006f42:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006f46:	f1ae 0e04 	sub.w	lr, lr, #4
 8006f4a:	b11b      	cbz	r3, 8006f54 <__multiply+0x138>
 8006f4c:	e005      	b.n	8006f5a <__multiply+0x13e>
 8006f4e:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006f52:	b913      	cbnz	r3, 8006f5a <__multiply+0x13e>
 8006f54:	f1b8 0801 	subs.w	r8, r8, #1
 8006f58:	d1f9      	bne.n	8006f4e <__multiply+0x132>
 8006f5a:	9800      	ldr	r0, [sp, #0]
 8006f5c:	f8c0 8010 	str.w	r8, [r0, #16]
 8006f60:	b003      	add	sp, #12
 8006f62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f66:	bf00      	nop

08006f68 <__pow5mult>:
 8006f68:	f012 0303 	ands.w	r3, r2, #3
 8006f6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006f70:	4614      	mov	r4, r2
 8006f72:	4607      	mov	r7, r0
 8006f74:	d12e      	bne.n	8006fd4 <__pow5mult+0x6c>
 8006f76:	460d      	mov	r5, r1
 8006f78:	10a4      	asrs	r4, r4, #2
 8006f7a:	d01c      	beq.n	8006fb6 <__pow5mult+0x4e>
 8006f7c:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006f7e:	b396      	cbz	r6, 8006fe6 <__pow5mult+0x7e>
 8006f80:	07e3      	lsls	r3, r4, #31
 8006f82:	f04f 0800 	mov.w	r8, #0
 8006f86:	d406      	bmi.n	8006f96 <__pow5mult+0x2e>
 8006f88:	1064      	asrs	r4, r4, #1
 8006f8a:	d014      	beq.n	8006fb6 <__pow5mult+0x4e>
 8006f8c:	6830      	ldr	r0, [r6, #0]
 8006f8e:	b1a8      	cbz	r0, 8006fbc <__pow5mult+0x54>
 8006f90:	4606      	mov	r6, r0
 8006f92:	07e3      	lsls	r3, r4, #31
 8006f94:	d5f8      	bpl.n	8006f88 <__pow5mult+0x20>
 8006f96:	4632      	mov	r2, r6
 8006f98:	4629      	mov	r1, r5
 8006f9a:	4638      	mov	r0, r7
 8006f9c:	f7ff ff3e 	bl	8006e1c <__multiply>
 8006fa0:	b1b5      	cbz	r5, 8006fd0 <__pow5mult+0x68>
 8006fa2:	686a      	ldr	r2, [r5, #4]
 8006fa4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006fa6:	1064      	asrs	r4, r4, #1
 8006fa8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006fac:	6029      	str	r1, [r5, #0]
 8006fae:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006fb2:	4605      	mov	r5, r0
 8006fb4:	d1ea      	bne.n	8006f8c <__pow5mult+0x24>
 8006fb6:	4628      	mov	r0, r5
 8006fb8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006fbc:	4632      	mov	r2, r6
 8006fbe:	4631      	mov	r1, r6
 8006fc0:	4638      	mov	r0, r7
 8006fc2:	f7ff ff2b 	bl	8006e1c <__multiply>
 8006fc6:	6030      	str	r0, [r6, #0]
 8006fc8:	f8c0 8000 	str.w	r8, [r0]
 8006fcc:	4606      	mov	r6, r0
 8006fce:	e7e0      	b.n	8006f92 <__pow5mult+0x2a>
 8006fd0:	4605      	mov	r5, r0
 8006fd2:	e7d9      	b.n	8006f88 <__pow5mult+0x20>
 8006fd4:	3b01      	subs	r3, #1
 8006fd6:	4a0b      	ldr	r2, [pc, #44]	; (8007004 <__pow5mult+0x9c>)
 8006fd8:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006fdc:	2300      	movs	r3, #0
 8006fde:	f7ff fe83 	bl	8006ce8 <__multadd>
 8006fe2:	4605      	mov	r5, r0
 8006fe4:	e7c8      	b.n	8006f78 <__pow5mult+0x10>
 8006fe6:	2101      	movs	r1, #1
 8006fe8:	4638      	mov	r0, r7
 8006fea:	f7ff fe4d 	bl	8006c88 <_Balloc>
 8006fee:	f240 2371 	movw	r3, #625	; 0x271
 8006ff2:	6143      	str	r3, [r0, #20]
 8006ff4:	2201      	movs	r2, #1
 8006ff6:	2300      	movs	r3, #0
 8006ff8:	6102      	str	r2, [r0, #16]
 8006ffa:	4606      	mov	r6, r0
 8006ffc:	64b8      	str	r0, [r7, #72]	; 0x48
 8006ffe:	6003      	str	r3, [r0, #0]
 8007000:	e7be      	b.n	8006f80 <__pow5mult+0x18>
 8007002:	bf00      	nop
 8007004:	08009780 	.word	0x08009780

08007008 <__lshift>:
 8007008:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800700c:	4691      	mov	r9, r2
 800700e:	690a      	ldr	r2, [r1, #16]
 8007010:	460e      	mov	r6, r1
 8007012:	ea4f 1469 	mov.w	r4, r9, asr #5
 8007016:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800701a:	eb04 0802 	add.w	r8, r4, r2
 800701e:	f108 0501 	add.w	r5, r8, #1
 8007022:	429d      	cmp	r5, r3
 8007024:	4607      	mov	r7, r0
 8007026:	dd04      	ble.n	8007032 <__lshift+0x2a>
 8007028:	005b      	lsls	r3, r3, #1
 800702a:	429d      	cmp	r5, r3
 800702c:	f101 0101 	add.w	r1, r1, #1
 8007030:	dcfa      	bgt.n	8007028 <__lshift+0x20>
 8007032:	4638      	mov	r0, r7
 8007034:	f7ff fe28 	bl	8006c88 <_Balloc>
 8007038:	2c00      	cmp	r4, #0
 800703a:	f100 0314 	add.w	r3, r0, #20
 800703e:	dd37      	ble.n	80070b0 <__lshift+0xa8>
 8007040:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007044:	2200      	movs	r2, #0
 8007046:	f843 2b04 	str.w	r2, [r3], #4
 800704a:	428b      	cmp	r3, r1
 800704c:	d1fb      	bne.n	8007046 <__lshift+0x3e>
 800704e:	6934      	ldr	r4, [r6, #16]
 8007050:	f106 0314 	add.w	r3, r6, #20
 8007054:	f019 091f 	ands.w	r9, r9, #31
 8007058:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 800705c:	d020      	beq.n	80070a0 <__lshift+0x98>
 800705e:	f1c9 0e20 	rsb	lr, r9, #32
 8007062:	2200      	movs	r2, #0
 8007064:	e000      	b.n	8007068 <__lshift+0x60>
 8007066:	4651      	mov	r1, sl
 8007068:	681c      	ldr	r4, [r3, #0]
 800706a:	468a      	mov	sl, r1
 800706c:	fa04 f409 	lsl.w	r4, r4, r9
 8007070:	4314      	orrs	r4, r2
 8007072:	f84a 4b04 	str.w	r4, [sl], #4
 8007076:	f853 2b04 	ldr.w	r2, [r3], #4
 800707a:	4563      	cmp	r3, ip
 800707c:	fa22 f20e 	lsr.w	r2, r2, lr
 8007080:	d3f1      	bcc.n	8007066 <__lshift+0x5e>
 8007082:	604a      	str	r2, [r1, #4]
 8007084:	b10a      	cbz	r2, 800708a <__lshift+0x82>
 8007086:	f108 0502 	add.w	r5, r8, #2
 800708a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800708c:	6872      	ldr	r2, [r6, #4]
 800708e:	3d01      	subs	r5, #1
 8007090:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8007094:	6105      	str	r5, [r0, #16]
 8007096:	6031      	str	r1, [r6, #0]
 8007098:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 800709c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070a0:	3904      	subs	r1, #4
 80070a2:	f853 2b04 	ldr.w	r2, [r3], #4
 80070a6:	f841 2f04 	str.w	r2, [r1, #4]!
 80070aa:	459c      	cmp	ip, r3
 80070ac:	d8f9      	bhi.n	80070a2 <__lshift+0x9a>
 80070ae:	e7ec      	b.n	800708a <__lshift+0x82>
 80070b0:	4619      	mov	r1, r3
 80070b2:	e7cc      	b.n	800704e <__lshift+0x46>

080070b4 <__mcmp>:
 80070b4:	b430      	push	{r4, r5}
 80070b6:	690b      	ldr	r3, [r1, #16]
 80070b8:	4605      	mov	r5, r0
 80070ba:	6900      	ldr	r0, [r0, #16]
 80070bc:	1ac0      	subs	r0, r0, r3
 80070be:	d10f      	bne.n	80070e0 <__mcmp+0x2c>
 80070c0:	009b      	lsls	r3, r3, #2
 80070c2:	3514      	adds	r5, #20
 80070c4:	3114      	adds	r1, #20
 80070c6:	4419      	add	r1, r3
 80070c8:	442b      	add	r3, r5
 80070ca:	e001      	b.n	80070d0 <__mcmp+0x1c>
 80070cc:	429d      	cmp	r5, r3
 80070ce:	d207      	bcs.n	80070e0 <__mcmp+0x2c>
 80070d0:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80070d4:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80070d8:	4294      	cmp	r4, r2
 80070da:	d0f7      	beq.n	80070cc <__mcmp+0x18>
 80070dc:	d302      	bcc.n	80070e4 <__mcmp+0x30>
 80070de:	2001      	movs	r0, #1
 80070e0:	bc30      	pop	{r4, r5}
 80070e2:	4770      	bx	lr
 80070e4:	f04f 30ff 	mov.w	r0, #4294967295
 80070e8:	e7fa      	b.n	80070e0 <__mcmp+0x2c>
 80070ea:	bf00      	nop

080070ec <__mdiff>:
 80070ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80070f0:	6913      	ldr	r3, [r2, #16]
 80070f2:	690d      	ldr	r5, [r1, #16]
 80070f4:	1aed      	subs	r5, r5, r3
 80070f6:	2d00      	cmp	r5, #0
 80070f8:	460e      	mov	r6, r1
 80070fa:	4690      	mov	r8, r2
 80070fc:	f101 0414 	add.w	r4, r1, #20
 8007100:	f102 0714 	add.w	r7, r2, #20
 8007104:	d114      	bne.n	8007130 <__mdiff+0x44>
 8007106:	009b      	lsls	r3, r3, #2
 8007108:	18e2      	adds	r2, r4, r3
 800710a:	443b      	add	r3, r7
 800710c:	e001      	b.n	8007112 <__mdiff+0x26>
 800710e:	42a2      	cmp	r2, r4
 8007110:	d959      	bls.n	80071c6 <__mdiff+0xda>
 8007112:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8007116:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800711a:	458c      	cmp	ip, r1
 800711c:	d0f7      	beq.n	800710e <__mdiff+0x22>
 800711e:	d209      	bcs.n	8007134 <__mdiff+0x48>
 8007120:	4622      	mov	r2, r4
 8007122:	4633      	mov	r3, r6
 8007124:	463c      	mov	r4, r7
 8007126:	4646      	mov	r6, r8
 8007128:	4617      	mov	r7, r2
 800712a:	4698      	mov	r8, r3
 800712c:	2501      	movs	r5, #1
 800712e:	e001      	b.n	8007134 <__mdiff+0x48>
 8007130:	dbf6      	blt.n	8007120 <__mdiff+0x34>
 8007132:	2500      	movs	r5, #0
 8007134:	6871      	ldr	r1, [r6, #4]
 8007136:	f7ff fda7 	bl	8006c88 <_Balloc>
 800713a:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800713e:	6936      	ldr	r6, [r6, #16]
 8007140:	60c5      	str	r5, [r0, #12]
 8007142:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8007146:	46bc      	mov	ip, r7
 8007148:	f100 0514 	add.w	r5, r0, #20
 800714c:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8007150:	2300      	movs	r3, #0
 8007152:	f85c 1b04 	ldr.w	r1, [ip], #4
 8007156:	f854 8b04 	ldr.w	r8, [r4], #4
 800715a:	b28a      	uxth	r2, r1
 800715c:	fa13 f388 	uxtah	r3, r3, r8
 8007160:	0c09      	lsrs	r1, r1, #16
 8007162:	1a9a      	subs	r2, r3, r2
 8007164:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8007168:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800716c:	b292      	uxth	r2, r2
 800716e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8007172:	45e6      	cmp	lr, ip
 8007174:	f845 2b04 	str.w	r2, [r5], #4
 8007178:	ea4f 4323 	mov.w	r3, r3, asr #16
 800717c:	d8e9      	bhi.n	8007152 <__mdiff+0x66>
 800717e:	42a7      	cmp	r7, r4
 8007180:	d917      	bls.n	80071b2 <__mdiff+0xc6>
 8007182:	46ae      	mov	lr, r5
 8007184:	46a4      	mov	ip, r4
 8007186:	f85c 2b04 	ldr.w	r2, [ip], #4
 800718a:	fa13 f382 	uxtah	r3, r3, r2
 800718e:	1419      	asrs	r1, r3, #16
 8007190:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8007194:	b29b      	uxth	r3, r3
 8007196:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800719a:	4567      	cmp	r7, ip
 800719c:	f84e 2b04 	str.w	r2, [lr], #4
 80071a0:	ea4f 4321 	mov.w	r3, r1, asr #16
 80071a4:	d8ef      	bhi.n	8007186 <__mdiff+0x9a>
 80071a6:	43e4      	mvns	r4, r4
 80071a8:	4427      	add	r7, r4
 80071aa:	f027 0703 	bic.w	r7, r7, #3
 80071ae:	3704      	adds	r7, #4
 80071b0:	443d      	add	r5, r7
 80071b2:	3d04      	subs	r5, #4
 80071b4:	b922      	cbnz	r2, 80071c0 <__mdiff+0xd4>
 80071b6:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80071ba:	3e01      	subs	r6, #1
 80071bc:	2b00      	cmp	r3, #0
 80071be:	d0fa      	beq.n	80071b6 <__mdiff+0xca>
 80071c0:	6106      	str	r6, [r0, #16]
 80071c2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80071c6:	2100      	movs	r1, #0
 80071c8:	f7ff fd5e 	bl	8006c88 <_Balloc>
 80071cc:	2201      	movs	r2, #1
 80071ce:	2300      	movs	r3, #0
 80071d0:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80071d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080071d8 <__d2b>:
 80071d8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80071dc:	460f      	mov	r7, r1
 80071de:	b083      	sub	sp, #12
 80071e0:	2101      	movs	r1, #1
 80071e2:	ec55 4b10 	vmov	r4, r5, d0
 80071e6:	4616      	mov	r6, r2
 80071e8:	f7ff fd4e 	bl	8006c88 <_Balloc>
 80071ec:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80071f0:	4681      	mov	r9, r0
 80071f2:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80071f6:	f1b8 0f00 	cmp.w	r8, #0
 80071fa:	d001      	beq.n	8007200 <__d2b+0x28>
 80071fc:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8007200:	2c00      	cmp	r4, #0
 8007202:	9301      	str	r3, [sp, #4]
 8007204:	d024      	beq.n	8007250 <__d2b+0x78>
 8007206:	a802      	add	r0, sp, #8
 8007208:	f840 4d08 	str.w	r4, [r0, #-8]!
 800720c:	f7ff fdcc 	bl	8006da8 <__lo0bits>
 8007210:	2800      	cmp	r0, #0
 8007212:	d136      	bne.n	8007282 <__d2b+0xaa>
 8007214:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007218:	f8c9 2014 	str.w	r2, [r9, #20]
 800721c:	2b00      	cmp	r3, #0
 800721e:	bf0c      	ite	eq
 8007220:	2101      	moveq	r1, #1
 8007222:	2102      	movne	r1, #2
 8007224:	f8c9 3018 	str.w	r3, [r9, #24]
 8007228:	f8c9 1010 	str.w	r1, [r9, #16]
 800722c:	f1b8 0f00 	cmp.w	r8, #0
 8007230:	d11b      	bne.n	800726a <__d2b+0x92>
 8007232:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8007236:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800723a:	6038      	str	r0, [r7, #0]
 800723c:	6918      	ldr	r0, [r3, #16]
 800723e:	f7ff fd93 	bl	8006d68 <__hi0bits>
 8007242:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007246:	6030      	str	r0, [r6, #0]
 8007248:	4648      	mov	r0, r9
 800724a:	b003      	add	sp, #12
 800724c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007250:	a801      	add	r0, sp, #4
 8007252:	f7ff fda9 	bl	8006da8 <__lo0bits>
 8007256:	9b01      	ldr	r3, [sp, #4]
 8007258:	f8c9 3014 	str.w	r3, [r9, #20]
 800725c:	2101      	movs	r1, #1
 800725e:	3020      	adds	r0, #32
 8007260:	f8c9 1010 	str.w	r1, [r9, #16]
 8007264:	f1b8 0f00 	cmp.w	r8, #0
 8007268:	d0e3      	beq.n	8007232 <__d2b+0x5a>
 800726a:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800726e:	eb08 0300 	add.w	r3, r8, r0
 8007272:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8007276:	603b      	str	r3, [r7, #0]
 8007278:	6030      	str	r0, [r6, #0]
 800727a:	4648      	mov	r0, r9
 800727c:	b003      	add	sp, #12
 800727e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007282:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007286:	f1c0 0220 	rsb	r2, r0, #32
 800728a:	fa03 f202 	lsl.w	r2, r3, r2
 800728e:	430a      	orrs	r2, r1
 8007290:	40c3      	lsrs	r3, r0
 8007292:	9301      	str	r3, [sp, #4]
 8007294:	f8c9 2014 	str.w	r2, [r9, #20]
 8007298:	e7c0      	b.n	800721c <__d2b+0x44>
 800729a:	bf00      	nop

0800729c <_sbrk_r>:
 800729c:	b538      	push	{r3, r4, r5, lr}
 800729e:	4c07      	ldr	r4, [pc, #28]	; (80072bc <_sbrk_r+0x20>)
 80072a0:	2300      	movs	r3, #0
 80072a2:	4605      	mov	r5, r0
 80072a4:	4608      	mov	r0, r1
 80072a6:	6023      	str	r3, [r4, #0]
 80072a8:	f7f9 f9b6 	bl	8000618 <_sbrk>
 80072ac:	1c43      	adds	r3, r0, #1
 80072ae:	d000      	beq.n	80072b2 <_sbrk_r+0x16>
 80072b0:	bd38      	pop	{r3, r4, r5, pc}
 80072b2:	6823      	ldr	r3, [r4, #0]
 80072b4:	2b00      	cmp	r3, #0
 80072b6:	d0fb      	beq.n	80072b0 <_sbrk_r+0x14>
 80072b8:	602b      	str	r3, [r5, #0]
 80072ba:	bd38      	pop	{r3, r4, r5, pc}
 80072bc:	20000c4c 	.word	0x20000c4c

080072c0 <__sread>:
 80072c0:	b510      	push	{r4, lr}
 80072c2:	460c      	mov	r4, r1
 80072c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80072c8:	f000 fcf6 	bl	8007cb8 <_read_r>
 80072cc:	2800      	cmp	r0, #0
 80072ce:	db03      	blt.n	80072d8 <__sread+0x18>
 80072d0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80072d2:	4403      	add	r3, r0
 80072d4:	6523      	str	r3, [r4, #80]	; 0x50
 80072d6:	bd10      	pop	{r4, pc}
 80072d8:	89a3      	ldrh	r3, [r4, #12]
 80072da:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80072de:	81a3      	strh	r3, [r4, #12]
 80072e0:	bd10      	pop	{r4, pc}
 80072e2:	bf00      	nop

080072e4 <__swrite>:
 80072e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80072e8:	4616      	mov	r6, r2
 80072ea:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80072ee:	461f      	mov	r7, r3
 80072f0:	05d3      	lsls	r3, r2, #23
 80072f2:	460c      	mov	r4, r1
 80072f4:	4605      	mov	r5, r0
 80072f6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80072fa:	d507      	bpl.n	800730c <__swrite+0x28>
 80072fc:	2200      	movs	r2, #0
 80072fe:	2302      	movs	r3, #2
 8007300:	f000 fc4a 	bl	8007b98 <_lseek_r>
 8007304:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007308:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800730c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8007310:	81a2      	strh	r2, [r4, #12]
 8007312:	463b      	mov	r3, r7
 8007314:	4632      	mov	r2, r6
 8007316:	4628      	mov	r0, r5
 8007318:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800731c:	f000 b8e4 	b.w	80074e8 <_write_r>

08007320 <__sseek>:
 8007320:	b510      	push	{r4, lr}
 8007322:	460c      	mov	r4, r1
 8007324:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007328:	f000 fc36 	bl	8007b98 <_lseek_r>
 800732c:	89a3      	ldrh	r3, [r4, #12]
 800732e:	1c42      	adds	r2, r0, #1
 8007330:	bf0e      	itee	eq
 8007332:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007336:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800733a:	6520      	strne	r0, [r4, #80]	; 0x50
 800733c:	81a3      	strh	r3, [r4, #12]
 800733e:	bd10      	pop	{r4, pc}

08007340 <__sclose>:
 8007340:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007344:	f000 b97a 	b.w	800763c <_close_r>
	...

08007380 <strlen>:
 8007380:	f890 f000 	pld	[r0]
 8007384:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8007388:	f020 0107 	bic.w	r1, r0, #7
 800738c:	f06f 0c00 	mvn.w	ip, #0
 8007390:	f010 0407 	ands.w	r4, r0, #7
 8007394:	f891 f020 	pld	[r1, #32]
 8007398:	f040 8049 	bne.w	800742e <strlen+0xae>
 800739c:	f04f 0400 	mov.w	r4, #0
 80073a0:	f06f 0007 	mvn.w	r0, #7
 80073a4:	e9d1 2300 	ldrd	r2, r3, [r1]
 80073a8:	f891 f040 	pld	[r1, #64]	; 0x40
 80073ac:	f100 0008 	add.w	r0, r0, #8
 80073b0:	fa82 f24c 	uadd8	r2, r2, ip
 80073b4:	faa4 f28c 	sel	r2, r4, ip
 80073b8:	fa83 f34c 	uadd8	r3, r3, ip
 80073bc:	faa2 f38c 	sel	r3, r2, ip
 80073c0:	bb4b      	cbnz	r3, 8007416 <strlen+0x96>
 80073c2:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 80073c6:	fa82 f24c 	uadd8	r2, r2, ip
 80073ca:	f100 0008 	add.w	r0, r0, #8
 80073ce:	faa4 f28c 	sel	r2, r4, ip
 80073d2:	fa83 f34c 	uadd8	r3, r3, ip
 80073d6:	faa2 f38c 	sel	r3, r2, ip
 80073da:	b9e3      	cbnz	r3, 8007416 <strlen+0x96>
 80073dc:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 80073e0:	fa82 f24c 	uadd8	r2, r2, ip
 80073e4:	f100 0008 	add.w	r0, r0, #8
 80073e8:	faa4 f28c 	sel	r2, r4, ip
 80073ec:	fa83 f34c 	uadd8	r3, r3, ip
 80073f0:	faa2 f38c 	sel	r3, r2, ip
 80073f4:	b97b      	cbnz	r3, 8007416 <strlen+0x96>
 80073f6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 80073fa:	f101 0120 	add.w	r1, r1, #32
 80073fe:	fa82 f24c 	uadd8	r2, r2, ip
 8007402:	f100 0008 	add.w	r0, r0, #8
 8007406:	faa4 f28c 	sel	r2, r4, ip
 800740a:	fa83 f34c 	uadd8	r3, r3, ip
 800740e:	faa2 f38c 	sel	r3, r2, ip
 8007412:	2b00      	cmp	r3, #0
 8007414:	d0c6      	beq.n	80073a4 <strlen+0x24>
 8007416:	2a00      	cmp	r2, #0
 8007418:	bf04      	itt	eq
 800741a:	3004      	addeq	r0, #4
 800741c:	461a      	moveq	r2, r3
 800741e:	ba12      	rev	r2, r2
 8007420:	fab2 f282 	clz	r2, r2
 8007424:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8007428:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 800742c:	4770      	bx	lr
 800742e:	e9d1 2300 	ldrd	r2, r3, [r1]
 8007432:	f004 0503 	and.w	r5, r4, #3
 8007436:	f1c4 0000 	rsb	r0, r4, #0
 800743a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 800743e:	f014 0f04 	tst.w	r4, #4
 8007442:	f891 f040 	pld	[r1, #64]	; 0x40
 8007446:	fa0c f505 	lsl.w	r5, ip, r5
 800744a:	ea62 0205 	orn	r2, r2, r5
 800744e:	bf1c      	itt	ne
 8007450:	ea63 0305 	ornne	r3, r3, r5
 8007454:	4662      	movne	r2, ip
 8007456:	f04f 0400 	mov.w	r4, #0
 800745a:	e7a9      	b.n	80073b0 <strlen+0x30>

0800745c <__sprint_r.part.0>:
 800745c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007460:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007462:	049c      	lsls	r4, r3, #18
 8007464:	4692      	mov	sl, r2
 8007466:	d52d      	bpl.n	80074c4 <__sprint_r.part.0+0x68>
 8007468:	6893      	ldr	r3, [r2, #8]
 800746a:	6812      	ldr	r2, [r2, #0]
 800746c:	b343      	cbz	r3, 80074c0 <__sprint_r.part.0+0x64>
 800746e:	460e      	mov	r6, r1
 8007470:	4607      	mov	r7, r0
 8007472:	f102 0908 	add.w	r9, r2, #8
 8007476:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800747a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800747e:	d015      	beq.n	80074ac <__sprint_r.part.0+0x50>
 8007480:	3d04      	subs	r5, #4
 8007482:	2400      	movs	r4, #0
 8007484:	e001      	b.n	800748a <__sprint_r.part.0+0x2e>
 8007486:	45a0      	cmp	r8, r4
 8007488:	d00e      	beq.n	80074a8 <__sprint_r.part.0+0x4c>
 800748a:	4632      	mov	r2, r6
 800748c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007490:	4638      	mov	r0, r7
 8007492:	f000 f99d 	bl	80077d0 <_fputwc_r>
 8007496:	1c43      	adds	r3, r0, #1
 8007498:	f104 0401 	add.w	r4, r4, #1
 800749c:	d1f3      	bne.n	8007486 <__sprint_r.part.0+0x2a>
 800749e:	2300      	movs	r3, #0
 80074a0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80074a4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80074a8:	f8da 3008 	ldr.w	r3, [sl, #8]
 80074ac:	f02b 0b03 	bic.w	fp, fp, #3
 80074b0:	eba3 030b 	sub.w	r3, r3, fp
 80074b4:	f8ca 3008 	str.w	r3, [sl, #8]
 80074b8:	f109 0908 	add.w	r9, r9, #8
 80074bc:	2b00      	cmp	r3, #0
 80074be:	d1da      	bne.n	8007476 <__sprint_r.part.0+0x1a>
 80074c0:	2000      	movs	r0, #0
 80074c2:	e7ec      	b.n	800749e <__sprint_r.part.0+0x42>
 80074c4:	f000 f9ca 	bl	800785c <__sfvwrite_r>
 80074c8:	2300      	movs	r3, #0
 80074ca:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80074ce:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80074d2:	bf00      	nop

080074d4 <__sprint_r>:
 80074d4:	6893      	ldr	r3, [r2, #8]
 80074d6:	b10b      	cbz	r3, 80074dc <__sprint_r+0x8>
 80074d8:	f7ff bfc0 	b.w	800745c <__sprint_r.part.0>
 80074dc:	b410      	push	{r4}
 80074de:	4618      	mov	r0, r3
 80074e0:	6053      	str	r3, [r2, #4]
 80074e2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80074e6:	4770      	bx	lr

080074e8 <_write_r>:
 80074e8:	b570      	push	{r4, r5, r6, lr}
 80074ea:	460d      	mov	r5, r1
 80074ec:	4c08      	ldr	r4, [pc, #32]	; (8007510 <_write_r+0x28>)
 80074ee:	4611      	mov	r1, r2
 80074f0:	4606      	mov	r6, r0
 80074f2:	461a      	mov	r2, r3
 80074f4:	4628      	mov	r0, r5
 80074f6:	2300      	movs	r3, #0
 80074f8:	6023      	str	r3, [r4, #0]
 80074fa:	f7f9 f871 	bl	80005e0 <_write>
 80074fe:	1c43      	adds	r3, r0, #1
 8007500:	d000      	beq.n	8007504 <_write_r+0x1c>
 8007502:	bd70      	pop	{r4, r5, r6, pc}
 8007504:	6823      	ldr	r3, [r4, #0]
 8007506:	2b00      	cmp	r3, #0
 8007508:	d0fb      	beq.n	8007502 <_write_r+0x1a>
 800750a:	6033      	str	r3, [r6, #0]
 800750c:	bd70      	pop	{r4, r5, r6, pc}
 800750e:	bf00      	nop
 8007510:	20000c4c 	.word	0x20000c4c

08007514 <__register_exitproc>:
 8007514:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007518:	4d2b      	ldr	r5, [pc, #172]	; (80075c8 <__register_exitproc+0xb4>)
 800751a:	4606      	mov	r6, r0
 800751c:	6828      	ldr	r0, [r5, #0]
 800751e:	4698      	mov	r8, r3
 8007520:	460f      	mov	r7, r1
 8007522:	4691      	mov	r9, r2
 8007524:	f7ff f830 	bl	8006588 <__retarget_lock_acquire_recursive>
 8007528:	4b28      	ldr	r3, [pc, #160]	; (80075cc <__register_exitproc+0xb8>)
 800752a:	681c      	ldr	r4, [r3, #0]
 800752c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007530:	2b00      	cmp	r3, #0
 8007532:	d03d      	beq.n	80075b0 <__register_exitproc+0x9c>
 8007534:	685a      	ldr	r2, [r3, #4]
 8007536:	2a1f      	cmp	r2, #31
 8007538:	dc0d      	bgt.n	8007556 <__register_exitproc+0x42>
 800753a:	f102 0c01 	add.w	ip, r2, #1
 800753e:	bb16      	cbnz	r6, 8007586 <__register_exitproc+0x72>
 8007540:	3202      	adds	r2, #2
 8007542:	f8c3 c004 	str.w	ip, [r3, #4]
 8007546:	6828      	ldr	r0, [r5, #0]
 8007548:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800754c:	f7ff f81e 	bl	800658c <__retarget_lock_release_recursive>
 8007550:	2000      	movs	r0, #0
 8007552:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007556:	4b1e      	ldr	r3, [pc, #120]	; (80075d0 <__register_exitproc+0xbc>)
 8007558:	b37b      	cbz	r3, 80075ba <__register_exitproc+0xa6>
 800755a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800755e:	f3af 8000 	nop.w
 8007562:	4603      	mov	r3, r0
 8007564:	b348      	cbz	r0, 80075ba <__register_exitproc+0xa6>
 8007566:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800756a:	2100      	movs	r1, #0
 800756c:	e9c0 2100 	strd	r2, r1, [r0]
 8007570:	f04f 0c01 	mov.w	ip, #1
 8007574:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007578:	460a      	mov	r2, r1
 800757a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800757e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007582:	2e00      	cmp	r6, #0
 8007584:	d0dc      	beq.n	8007540 <__register_exitproc+0x2c>
 8007586:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800758a:	2401      	movs	r4, #1
 800758c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007590:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007594:	4094      	lsls	r4, r2
 8007596:	4320      	orrs	r0, r4
 8007598:	2e02      	cmp	r6, #2
 800759a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800759e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80075a2:	d1cd      	bne.n	8007540 <__register_exitproc+0x2c>
 80075a4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80075a8:	430c      	orrs	r4, r1
 80075aa:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80075ae:	e7c7      	b.n	8007540 <__register_exitproc+0x2c>
 80075b0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80075b4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 80075b8:	e7bc      	b.n	8007534 <__register_exitproc+0x20>
 80075ba:	6828      	ldr	r0, [r5, #0]
 80075bc:	f7fe ffe6 	bl	800658c <__retarget_lock_release_recursive>
 80075c0:	f04f 30ff 	mov.w	r0, #4294967295
 80075c4:	e7c5      	b.n	8007552 <__register_exitproc+0x3e>
 80075c6:	bf00      	nop
 80075c8:	20000440 	.word	0x20000440
 80075cc:	08009618 	.word	0x08009618
 80075d0:	00000000 	.word	0x00000000

080075d4 <_calloc_r>:
 80075d4:	b510      	push	{r4, lr}
 80075d6:	fb02 f101 	mul.w	r1, r2, r1
 80075da:	f7ff f851 	bl	8006680 <_malloc_r>
 80075de:	4604      	mov	r4, r0
 80075e0:	b1d8      	cbz	r0, 800761a <_calloc_r+0x46>
 80075e2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80075e6:	f022 0203 	bic.w	r2, r2, #3
 80075ea:	3a04      	subs	r2, #4
 80075ec:	2a24      	cmp	r2, #36	; 0x24
 80075ee:	d81d      	bhi.n	800762c <_calloc_r+0x58>
 80075f0:	2a13      	cmp	r2, #19
 80075f2:	d914      	bls.n	800761e <_calloc_r+0x4a>
 80075f4:	2300      	movs	r3, #0
 80075f6:	2a1b      	cmp	r2, #27
 80075f8:	e9c0 3300 	strd	r3, r3, [r0]
 80075fc:	d91b      	bls.n	8007636 <_calloc_r+0x62>
 80075fe:	2a24      	cmp	r2, #36	; 0x24
 8007600:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007604:	bf0a      	itet	eq
 8007606:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800760a:	f100 0210 	addne.w	r2, r0, #16
 800760e:	f100 0218 	addeq.w	r2, r0, #24
 8007612:	2300      	movs	r3, #0
 8007614:	e9c2 3300 	strd	r3, r3, [r2]
 8007618:	6093      	str	r3, [r2, #8]
 800761a:	4620      	mov	r0, r4
 800761c:	bd10      	pop	{r4, pc}
 800761e:	4602      	mov	r2, r0
 8007620:	2300      	movs	r3, #0
 8007622:	e9c2 3300 	strd	r3, r3, [r2]
 8007626:	6093      	str	r3, [r2, #8]
 8007628:	4620      	mov	r0, r4
 800762a:	bd10      	pop	{r4, pc}
 800762c:	2100      	movs	r1, #0
 800762e:	f7fc f98f 	bl	8003950 <memset>
 8007632:	4620      	mov	r0, r4
 8007634:	bd10      	pop	{r4, pc}
 8007636:	f100 0208 	add.w	r2, r0, #8
 800763a:	e7f1      	b.n	8007620 <_calloc_r+0x4c>

0800763c <_close_r>:
 800763c:	b538      	push	{r3, r4, r5, lr}
 800763e:	4c07      	ldr	r4, [pc, #28]	; (800765c <_close_r+0x20>)
 8007640:	2300      	movs	r3, #0
 8007642:	4605      	mov	r5, r0
 8007644:	4608      	mov	r0, r1
 8007646:	6023      	str	r3, [r4, #0]
 8007648:	f7f9 f812 	bl	8000670 <_close>
 800764c:	1c43      	adds	r3, r0, #1
 800764e:	d000      	beq.n	8007652 <_close_r+0x16>
 8007650:	bd38      	pop	{r3, r4, r5, pc}
 8007652:	6823      	ldr	r3, [r4, #0]
 8007654:	2b00      	cmp	r3, #0
 8007656:	d0fb      	beq.n	8007650 <_close_r+0x14>
 8007658:	602b      	str	r3, [r5, #0]
 800765a:	bd38      	pop	{r3, r4, r5, pc}
 800765c:	20000c4c 	.word	0x20000c4c

08007660 <_fclose_r>:
 8007660:	b570      	push	{r4, r5, r6, lr}
 8007662:	2900      	cmp	r1, #0
 8007664:	d048      	beq.n	80076f8 <_fclose_r+0x98>
 8007666:	4605      	mov	r5, r0
 8007668:	460c      	mov	r4, r1
 800766a:	b110      	cbz	r0, 8007672 <_fclose_r+0x12>
 800766c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800766e:	2b00      	cmp	r3, #0
 8007670:	d048      	beq.n	8007704 <_fclose_r+0xa4>
 8007672:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007674:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007678:	07d0      	lsls	r0, r2, #31
 800767a:	d440      	bmi.n	80076fe <_fclose_r+0x9e>
 800767c:	0599      	lsls	r1, r3, #22
 800767e:	d530      	bpl.n	80076e2 <_fclose_r+0x82>
 8007680:	4621      	mov	r1, r4
 8007682:	4628      	mov	r0, r5
 8007684:	f7fe fca8 	bl	8005fd8 <__sflush_r>
 8007688:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800768a:	4606      	mov	r6, r0
 800768c:	b133      	cbz	r3, 800769c <_fclose_r+0x3c>
 800768e:	69e1      	ldr	r1, [r4, #28]
 8007690:	4628      	mov	r0, r5
 8007692:	4798      	blx	r3
 8007694:	2800      	cmp	r0, #0
 8007696:	bfb8      	it	lt
 8007698:	f04f 36ff 	movlt.w	r6, #4294967295
 800769c:	89a3      	ldrh	r3, [r4, #12]
 800769e:	061a      	lsls	r2, r3, #24
 80076a0:	d43c      	bmi.n	800771c <_fclose_r+0xbc>
 80076a2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80076a4:	b141      	cbz	r1, 80076b8 <_fclose_r+0x58>
 80076a6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80076aa:	4299      	cmp	r1, r3
 80076ac:	d002      	beq.n	80076b4 <_fclose_r+0x54>
 80076ae:	4628      	mov	r0, r5
 80076b0:	f7fe fe3a 	bl	8006328 <_free_r>
 80076b4:	2300      	movs	r3, #0
 80076b6:	6323      	str	r3, [r4, #48]	; 0x30
 80076b8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 80076ba:	b121      	cbz	r1, 80076c6 <_fclose_r+0x66>
 80076bc:	4628      	mov	r0, r5
 80076be:	f7fe fe33 	bl	8006328 <_free_r>
 80076c2:	2300      	movs	r3, #0
 80076c4:	6463      	str	r3, [r4, #68]	; 0x44
 80076c6:	f7fe fdb9 	bl	800623c <__sfp_lock_acquire>
 80076ca:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80076cc:	2200      	movs	r2, #0
 80076ce:	07db      	lsls	r3, r3, #31
 80076d0:	81a2      	strh	r2, [r4, #12]
 80076d2:	d51f      	bpl.n	8007714 <_fclose_r+0xb4>
 80076d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80076d6:	f7fe ff55 	bl	8006584 <__retarget_lock_close_recursive>
 80076da:	f7fe fdb5 	bl	8006248 <__sfp_lock_release>
 80076de:	4630      	mov	r0, r6
 80076e0:	bd70      	pop	{r4, r5, r6, pc}
 80076e2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80076e4:	f7fe ff50 	bl	8006588 <__retarget_lock_acquire_recursive>
 80076e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80076ec:	2b00      	cmp	r3, #0
 80076ee:	d1c7      	bne.n	8007680 <_fclose_r+0x20>
 80076f0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80076f2:	f016 0601 	ands.w	r6, r6, #1
 80076f6:	d016      	beq.n	8007726 <_fclose_r+0xc6>
 80076f8:	2600      	movs	r6, #0
 80076fa:	4630      	mov	r0, r6
 80076fc:	bd70      	pop	{r4, r5, r6, pc}
 80076fe:	2b00      	cmp	r3, #0
 8007700:	d0fa      	beq.n	80076f8 <_fclose_r+0x98>
 8007702:	e7bd      	b.n	8007680 <_fclose_r+0x20>
 8007704:	f7fe fd6e 	bl	80061e4 <__sinit>
 8007708:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800770a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800770e:	07d0      	lsls	r0, r2, #31
 8007710:	d4f5      	bmi.n	80076fe <_fclose_r+0x9e>
 8007712:	e7b3      	b.n	800767c <_fclose_r+0x1c>
 8007714:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007716:	f7fe ff39 	bl	800658c <__retarget_lock_release_recursive>
 800771a:	e7db      	b.n	80076d4 <_fclose_r+0x74>
 800771c:	6921      	ldr	r1, [r4, #16]
 800771e:	4628      	mov	r0, r5
 8007720:	f7fe fe02 	bl	8006328 <_free_r>
 8007724:	e7bd      	b.n	80076a2 <_fclose_r+0x42>
 8007726:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007728:	f7fe ff30 	bl	800658c <__retarget_lock_release_recursive>
 800772c:	4630      	mov	r0, r6
 800772e:	bd70      	pop	{r4, r5, r6, pc}

08007730 <__fputwc>:
 8007730:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007734:	b082      	sub	sp, #8
 8007736:	4681      	mov	r9, r0
 8007738:	4688      	mov	r8, r1
 800773a:	4614      	mov	r4, r2
 800773c:	f000 fa1e 	bl	8007b7c <__locale_mb_cur_max>
 8007740:	2801      	cmp	r0, #1
 8007742:	d103      	bne.n	800774c <__fputwc+0x1c>
 8007744:	f108 33ff 	add.w	r3, r8, #4294967295
 8007748:	2bfe      	cmp	r3, #254	; 0xfe
 800774a:	d933      	bls.n	80077b4 <__fputwc+0x84>
 800774c:	4642      	mov	r2, r8
 800774e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007752:	a901      	add	r1, sp, #4
 8007754:	4648      	mov	r0, r9
 8007756:	f000 fccb 	bl	80080f0 <_wcrtomb_r>
 800775a:	1c42      	adds	r2, r0, #1
 800775c:	4606      	mov	r6, r0
 800775e:	d02f      	beq.n	80077c0 <__fputwc+0x90>
 8007760:	b320      	cbz	r0, 80077ac <__fputwc+0x7c>
 8007762:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007766:	2500      	movs	r5, #0
 8007768:	f10d 0a04 	add.w	sl, sp, #4
 800776c:	e009      	b.n	8007782 <__fputwc+0x52>
 800776e:	6823      	ldr	r3, [r4, #0]
 8007770:	1c5a      	adds	r2, r3, #1
 8007772:	6022      	str	r2, [r4, #0]
 8007774:	f883 c000 	strb.w	ip, [r3]
 8007778:	3501      	adds	r5, #1
 800777a:	42b5      	cmp	r5, r6
 800777c:	d216      	bcs.n	80077ac <__fputwc+0x7c>
 800777e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007782:	68a3      	ldr	r3, [r4, #8]
 8007784:	3b01      	subs	r3, #1
 8007786:	2b00      	cmp	r3, #0
 8007788:	60a3      	str	r3, [r4, #8]
 800778a:	daf0      	bge.n	800776e <__fputwc+0x3e>
 800778c:	69a7      	ldr	r7, [r4, #24]
 800778e:	42bb      	cmp	r3, r7
 8007790:	4661      	mov	r1, ip
 8007792:	4622      	mov	r2, r4
 8007794:	4648      	mov	r0, r9
 8007796:	db02      	blt.n	800779e <__fputwc+0x6e>
 8007798:	f1bc 0f0a 	cmp.w	ip, #10
 800779c:	d1e7      	bne.n	800776e <__fputwc+0x3e>
 800779e:	f000 fc4f 	bl	8008040 <__swbuf_r>
 80077a2:	1c43      	adds	r3, r0, #1
 80077a4:	d1e8      	bne.n	8007778 <__fputwc+0x48>
 80077a6:	b002      	add	sp, #8
 80077a8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80077ac:	4640      	mov	r0, r8
 80077ae:	b002      	add	sp, #8
 80077b0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80077b4:	fa5f fc88 	uxtb.w	ip, r8
 80077b8:	4606      	mov	r6, r0
 80077ba:	f88d c004 	strb.w	ip, [sp, #4]
 80077be:	e7d2      	b.n	8007766 <__fputwc+0x36>
 80077c0:	89a3      	ldrh	r3, [r4, #12]
 80077c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80077c6:	81a3      	strh	r3, [r4, #12]
 80077c8:	b002      	add	sp, #8
 80077ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80077ce:	bf00      	nop

080077d0 <_fputwc_r>:
 80077d0:	b530      	push	{r4, r5, lr}
 80077d2:	4605      	mov	r5, r0
 80077d4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 80077d6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80077da:	07c0      	lsls	r0, r0, #31
 80077dc:	4614      	mov	r4, r2
 80077de:	b083      	sub	sp, #12
 80077e0:	b29a      	uxth	r2, r3
 80077e2:	d401      	bmi.n	80077e8 <_fputwc_r+0x18>
 80077e4:	0590      	lsls	r0, r2, #22
 80077e6:	d51c      	bpl.n	8007822 <_fputwc_r+0x52>
 80077e8:	0490      	lsls	r0, r2, #18
 80077ea:	d406      	bmi.n	80077fa <_fputwc_r+0x2a>
 80077ec:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80077ee:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80077f2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80077f6:	81a3      	strh	r3, [r4, #12]
 80077f8:	6662      	str	r2, [r4, #100]	; 0x64
 80077fa:	4628      	mov	r0, r5
 80077fc:	4622      	mov	r2, r4
 80077fe:	f7ff ff97 	bl	8007730 <__fputwc>
 8007802:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007804:	07da      	lsls	r2, r3, #31
 8007806:	4605      	mov	r5, r0
 8007808:	d402      	bmi.n	8007810 <_fputwc_r+0x40>
 800780a:	89a3      	ldrh	r3, [r4, #12]
 800780c:	059b      	lsls	r3, r3, #22
 800780e:	d502      	bpl.n	8007816 <_fputwc_r+0x46>
 8007810:	4628      	mov	r0, r5
 8007812:	b003      	add	sp, #12
 8007814:	bd30      	pop	{r4, r5, pc}
 8007816:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007818:	f7fe feb8 	bl	800658c <__retarget_lock_release_recursive>
 800781c:	4628      	mov	r0, r5
 800781e:	b003      	add	sp, #12
 8007820:	bd30      	pop	{r4, r5, pc}
 8007822:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007824:	9101      	str	r1, [sp, #4]
 8007826:	f7fe feaf 	bl	8006588 <__retarget_lock_acquire_recursive>
 800782a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800782e:	9901      	ldr	r1, [sp, #4]
 8007830:	b29a      	uxth	r2, r3
 8007832:	e7d9      	b.n	80077e8 <_fputwc_r+0x18>

08007834 <_fstat_r>:
 8007834:	b538      	push	{r3, r4, r5, lr}
 8007836:	460b      	mov	r3, r1
 8007838:	4c07      	ldr	r4, [pc, #28]	; (8007858 <_fstat_r+0x24>)
 800783a:	4605      	mov	r5, r0
 800783c:	4611      	mov	r1, r2
 800783e:	4618      	mov	r0, r3
 8007840:	2300      	movs	r3, #0
 8007842:	6023      	str	r3, [r4, #0]
 8007844:	f7f8 ff20 	bl	8000688 <_fstat>
 8007848:	1c43      	adds	r3, r0, #1
 800784a:	d000      	beq.n	800784e <_fstat_r+0x1a>
 800784c:	bd38      	pop	{r3, r4, r5, pc}
 800784e:	6823      	ldr	r3, [r4, #0]
 8007850:	2b00      	cmp	r3, #0
 8007852:	d0fb      	beq.n	800784c <_fstat_r+0x18>
 8007854:	602b      	str	r3, [r5, #0]
 8007856:	bd38      	pop	{r3, r4, r5, pc}
 8007858:	20000c4c 	.word	0x20000c4c

0800785c <__sfvwrite_r>:
 800785c:	6893      	ldr	r3, [r2, #8]
 800785e:	2b00      	cmp	r3, #0
 8007860:	f000 80e4 	beq.w	8007a2c <__sfvwrite_r+0x1d0>
 8007864:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007868:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800786c:	b29b      	uxth	r3, r3
 800786e:	460c      	mov	r4, r1
 8007870:	0719      	lsls	r1, r3, #28
 8007872:	b083      	sub	sp, #12
 8007874:	4682      	mov	sl, r0
 8007876:	4690      	mov	r8, r2
 8007878:	d535      	bpl.n	80078e6 <__sfvwrite_r+0x8a>
 800787a:	6922      	ldr	r2, [r4, #16]
 800787c:	b39a      	cbz	r2, 80078e6 <__sfvwrite_r+0x8a>
 800787e:	f013 0202 	ands.w	r2, r3, #2
 8007882:	f8d8 6000 	ldr.w	r6, [r8]
 8007886:	d03d      	beq.n	8007904 <__sfvwrite_r+0xa8>
 8007888:	2700      	movs	r7, #0
 800788a:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800788e:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007892:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8007b54 <__sfvwrite_r+0x2f8>
 8007896:	463d      	mov	r5, r7
 8007898:	454d      	cmp	r5, r9
 800789a:	462b      	mov	r3, r5
 800789c:	463a      	mov	r2, r7
 800789e:	bf28      	it	cs
 80078a0:	464b      	movcs	r3, r9
 80078a2:	4661      	mov	r1, ip
 80078a4:	4650      	mov	r0, sl
 80078a6:	b1d5      	cbz	r5, 80078de <__sfvwrite_r+0x82>
 80078a8:	47d8      	blx	fp
 80078aa:	2800      	cmp	r0, #0
 80078ac:	f340 80c6 	ble.w	8007a3c <__sfvwrite_r+0x1e0>
 80078b0:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80078b4:	1a1b      	subs	r3, r3, r0
 80078b6:	4407      	add	r7, r0
 80078b8:	1a2d      	subs	r5, r5, r0
 80078ba:	f8c8 3008 	str.w	r3, [r8, #8]
 80078be:	2b00      	cmp	r3, #0
 80078c0:	f000 80b0 	beq.w	8007a24 <__sfvwrite_r+0x1c8>
 80078c4:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80078c8:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80078cc:	454d      	cmp	r5, r9
 80078ce:	462b      	mov	r3, r5
 80078d0:	463a      	mov	r2, r7
 80078d2:	bf28      	it	cs
 80078d4:	464b      	movcs	r3, r9
 80078d6:	4661      	mov	r1, ip
 80078d8:	4650      	mov	r0, sl
 80078da:	2d00      	cmp	r5, #0
 80078dc:	d1e4      	bne.n	80078a8 <__sfvwrite_r+0x4c>
 80078de:	e9d6 7500 	ldrd	r7, r5, [r6]
 80078e2:	3608      	adds	r6, #8
 80078e4:	e7d8      	b.n	8007898 <__sfvwrite_r+0x3c>
 80078e6:	4621      	mov	r1, r4
 80078e8:	4650      	mov	r0, sl
 80078ea:	f7fd fb59 	bl	8004fa0 <__swsetup_r>
 80078ee:	2800      	cmp	r0, #0
 80078f0:	f040 812a 	bne.w	8007b48 <__sfvwrite_r+0x2ec>
 80078f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80078f8:	f8d8 6000 	ldr.w	r6, [r8]
 80078fc:	b29b      	uxth	r3, r3
 80078fe:	f013 0202 	ands.w	r2, r3, #2
 8007902:	d1c1      	bne.n	8007888 <__sfvwrite_r+0x2c>
 8007904:	f013 0901 	ands.w	r9, r3, #1
 8007908:	d15d      	bne.n	80079c6 <__sfvwrite_r+0x16a>
 800790a:	68a7      	ldr	r7, [r4, #8]
 800790c:	6820      	ldr	r0, [r4, #0]
 800790e:	464d      	mov	r5, r9
 8007910:	2d00      	cmp	r5, #0
 8007912:	d054      	beq.n	80079be <__sfvwrite_r+0x162>
 8007914:	059a      	lsls	r2, r3, #22
 8007916:	f140 809b 	bpl.w	8007a50 <__sfvwrite_r+0x1f4>
 800791a:	42af      	cmp	r7, r5
 800791c:	46bb      	mov	fp, r7
 800791e:	f200 80d8 	bhi.w	8007ad2 <__sfvwrite_r+0x276>
 8007922:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8007926:	d02f      	beq.n	8007988 <__sfvwrite_r+0x12c>
 8007928:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 800792c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8007930:	eba0 0b01 	sub.w	fp, r0, r1
 8007934:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8007938:	1c68      	adds	r0, r5, #1
 800793a:	107f      	asrs	r7, r7, #1
 800793c:	4458      	add	r0, fp
 800793e:	42b8      	cmp	r0, r7
 8007940:	463a      	mov	r2, r7
 8007942:	bf84      	itt	hi
 8007944:	4607      	movhi	r7, r0
 8007946:	463a      	movhi	r2, r7
 8007948:	055b      	lsls	r3, r3, #21
 800794a:	f140 80d3 	bpl.w	8007af4 <__sfvwrite_r+0x298>
 800794e:	4611      	mov	r1, r2
 8007950:	4650      	mov	r0, sl
 8007952:	f7fe fe95 	bl	8006680 <_malloc_r>
 8007956:	2800      	cmp	r0, #0
 8007958:	f000 80f0 	beq.w	8007b3c <__sfvwrite_r+0x2e0>
 800795c:	465a      	mov	r2, fp
 800795e:	6921      	ldr	r1, [r4, #16]
 8007960:	9001      	str	r0, [sp, #4]
 8007962:	f7fb ff5b 	bl	800381c <memcpy>
 8007966:	89a2      	ldrh	r2, [r4, #12]
 8007968:	9b01      	ldr	r3, [sp, #4]
 800796a:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800796e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8007972:	81a2      	strh	r2, [r4, #12]
 8007974:	eba7 020b 	sub.w	r2, r7, fp
 8007978:	eb03 000b 	add.w	r0, r3, fp
 800797c:	6167      	str	r7, [r4, #20]
 800797e:	6123      	str	r3, [r4, #16]
 8007980:	6020      	str	r0, [r4, #0]
 8007982:	60a2      	str	r2, [r4, #8]
 8007984:	462f      	mov	r7, r5
 8007986:	46ab      	mov	fp, r5
 8007988:	465a      	mov	r2, fp
 800798a:	4649      	mov	r1, r9
 800798c:	f000 f930 	bl	8007bf0 <memmove>
 8007990:	68a2      	ldr	r2, [r4, #8]
 8007992:	6823      	ldr	r3, [r4, #0]
 8007994:	1bd2      	subs	r2, r2, r7
 8007996:	445b      	add	r3, fp
 8007998:	462f      	mov	r7, r5
 800799a:	60a2      	str	r2, [r4, #8]
 800799c:	6023      	str	r3, [r4, #0]
 800799e:	2500      	movs	r5, #0
 80079a0:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80079a4:	1bdb      	subs	r3, r3, r7
 80079a6:	44b9      	add	r9, r7
 80079a8:	f8c8 3008 	str.w	r3, [r8, #8]
 80079ac:	2b00      	cmp	r3, #0
 80079ae:	d039      	beq.n	8007a24 <__sfvwrite_r+0x1c8>
 80079b0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80079b4:	68a7      	ldr	r7, [r4, #8]
 80079b6:	6820      	ldr	r0, [r4, #0]
 80079b8:	b29b      	uxth	r3, r3
 80079ba:	2d00      	cmp	r5, #0
 80079bc:	d1aa      	bne.n	8007914 <__sfvwrite_r+0xb8>
 80079be:	e9d6 9500 	ldrd	r9, r5, [r6]
 80079c2:	3608      	adds	r6, #8
 80079c4:	e7a4      	b.n	8007910 <__sfvwrite_r+0xb4>
 80079c6:	4633      	mov	r3, r6
 80079c8:	4691      	mov	r9, r2
 80079ca:	4610      	mov	r0, r2
 80079cc:	4617      	mov	r7, r2
 80079ce:	464e      	mov	r6, r9
 80079d0:	469b      	mov	fp, r3
 80079d2:	2f00      	cmp	r7, #0
 80079d4:	d06b      	beq.n	8007aae <__sfvwrite_r+0x252>
 80079d6:	2800      	cmp	r0, #0
 80079d8:	d071      	beq.n	8007abe <__sfvwrite_r+0x262>
 80079da:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80079de:	6820      	ldr	r0, [r4, #0]
 80079e0:	45b9      	cmp	r9, r7
 80079e2:	464b      	mov	r3, r9
 80079e4:	bf28      	it	cs
 80079e6:	463b      	movcs	r3, r7
 80079e8:	4288      	cmp	r0, r1
 80079ea:	d903      	bls.n	80079f4 <__sfvwrite_r+0x198>
 80079ec:	68a5      	ldr	r5, [r4, #8]
 80079ee:	4415      	add	r5, r2
 80079f0:	42ab      	cmp	r3, r5
 80079f2:	dc71      	bgt.n	8007ad8 <__sfvwrite_r+0x27c>
 80079f4:	429a      	cmp	r2, r3
 80079f6:	f300 8093 	bgt.w	8007b20 <__sfvwrite_r+0x2c4>
 80079fa:	4613      	mov	r3, r2
 80079fc:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80079fe:	69e1      	ldr	r1, [r4, #28]
 8007a00:	4632      	mov	r2, r6
 8007a02:	4650      	mov	r0, sl
 8007a04:	47a8      	blx	r5
 8007a06:	1e05      	subs	r5, r0, #0
 8007a08:	dd18      	ble.n	8007a3c <__sfvwrite_r+0x1e0>
 8007a0a:	ebb9 0905 	subs.w	r9, r9, r5
 8007a0e:	d00f      	beq.n	8007a30 <__sfvwrite_r+0x1d4>
 8007a10:	2001      	movs	r0, #1
 8007a12:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007a16:	1b5b      	subs	r3, r3, r5
 8007a18:	442e      	add	r6, r5
 8007a1a:	1b7f      	subs	r7, r7, r5
 8007a1c:	f8c8 3008 	str.w	r3, [r8, #8]
 8007a20:	2b00      	cmp	r3, #0
 8007a22:	d1d6      	bne.n	80079d2 <__sfvwrite_r+0x176>
 8007a24:	2000      	movs	r0, #0
 8007a26:	b003      	add	sp, #12
 8007a28:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007a2c:	2000      	movs	r0, #0
 8007a2e:	4770      	bx	lr
 8007a30:	4621      	mov	r1, r4
 8007a32:	4650      	mov	r0, sl
 8007a34:	f7fe fb7a 	bl	800612c <_fflush_r>
 8007a38:	2800      	cmp	r0, #0
 8007a3a:	d0ea      	beq.n	8007a12 <__sfvwrite_r+0x1b6>
 8007a3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007a40:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007a44:	f04f 30ff 	mov.w	r0, #4294967295
 8007a48:	81a3      	strh	r3, [r4, #12]
 8007a4a:	b003      	add	sp, #12
 8007a4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007a50:	6923      	ldr	r3, [r4, #16]
 8007a52:	4283      	cmp	r3, r0
 8007a54:	d315      	bcc.n	8007a82 <__sfvwrite_r+0x226>
 8007a56:	6961      	ldr	r1, [r4, #20]
 8007a58:	42a9      	cmp	r1, r5
 8007a5a:	d812      	bhi.n	8007a82 <__sfvwrite_r+0x226>
 8007a5c:	4b3c      	ldr	r3, [pc, #240]	; (8007b50 <__sfvwrite_r+0x2f4>)
 8007a5e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007a60:	429d      	cmp	r5, r3
 8007a62:	bf94      	ite	ls
 8007a64:	462b      	movls	r3, r5
 8007a66:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8007a6a:	464a      	mov	r2, r9
 8007a6c:	fb93 f3f1 	sdiv	r3, r3, r1
 8007a70:	4650      	mov	r0, sl
 8007a72:	fb01 f303 	mul.w	r3, r1, r3
 8007a76:	69e1      	ldr	r1, [r4, #28]
 8007a78:	47b8      	blx	r7
 8007a7a:	1e07      	subs	r7, r0, #0
 8007a7c:	ddde      	ble.n	8007a3c <__sfvwrite_r+0x1e0>
 8007a7e:	1bed      	subs	r5, r5, r7
 8007a80:	e78e      	b.n	80079a0 <__sfvwrite_r+0x144>
 8007a82:	42af      	cmp	r7, r5
 8007a84:	bf28      	it	cs
 8007a86:	462f      	movcs	r7, r5
 8007a88:	463a      	mov	r2, r7
 8007a8a:	4649      	mov	r1, r9
 8007a8c:	f000 f8b0 	bl	8007bf0 <memmove>
 8007a90:	68a3      	ldr	r3, [r4, #8]
 8007a92:	6822      	ldr	r2, [r4, #0]
 8007a94:	1bdb      	subs	r3, r3, r7
 8007a96:	443a      	add	r2, r7
 8007a98:	60a3      	str	r3, [r4, #8]
 8007a9a:	6022      	str	r2, [r4, #0]
 8007a9c:	2b00      	cmp	r3, #0
 8007a9e:	d1ee      	bne.n	8007a7e <__sfvwrite_r+0x222>
 8007aa0:	4621      	mov	r1, r4
 8007aa2:	4650      	mov	r0, sl
 8007aa4:	f7fe fb42 	bl	800612c <_fflush_r>
 8007aa8:	2800      	cmp	r0, #0
 8007aaa:	d0e8      	beq.n	8007a7e <__sfvwrite_r+0x222>
 8007aac:	e7c6      	b.n	8007a3c <__sfvwrite_r+0x1e0>
 8007aae:	f10b 0308 	add.w	r3, fp, #8
 8007ab2:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8007ab6:	469b      	mov	fp, r3
 8007ab8:	3308      	adds	r3, #8
 8007aba:	2f00      	cmp	r7, #0
 8007abc:	d0f9      	beq.n	8007ab2 <__sfvwrite_r+0x256>
 8007abe:	463a      	mov	r2, r7
 8007ac0:	210a      	movs	r1, #10
 8007ac2:	4630      	mov	r0, r6
 8007ac4:	f7ff f884 	bl	8006bd0 <memchr>
 8007ac8:	b338      	cbz	r0, 8007b1a <__sfvwrite_r+0x2be>
 8007aca:	3001      	adds	r0, #1
 8007acc:	eba0 0906 	sub.w	r9, r0, r6
 8007ad0:	e783      	b.n	80079da <__sfvwrite_r+0x17e>
 8007ad2:	462f      	mov	r7, r5
 8007ad4:	46ab      	mov	fp, r5
 8007ad6:	e757      	b.n	8007988 <__sfvwrite_r+0x12c>
 8007ad8:	4631      	mov	r1, r6
 8007ada:	462a      	mov	r2, r5
 8007adc:	f000 f888 	bl	8007bf0 <memmove>
 8007ae0:	6823      	ldr	r3, [r4, #0]
 8007ae2:	442b      	add	r3, r5
 8007ae4:	6023      	str	r3, [r4, #0]
 8007ae6:	4621      	mov	r1, r4
 8007ae8:	4650      	mov	r0, sl
 8007aea:	f7fe fb1f 	bl	800612c <_fflush_r>
 8007aee:	2800      	cmp	r0, #0
 8007af0:	d08b      	beq.n	8007a0a <__sfvwrite_r+0x1ae>
 8007af2:	e7a3      	b.n	8007a3c <__sfvwrite_r+0x1e0>
 8007af4:	4650      	mov	r0, sl
 8007af6:	f000 f8f5 	bl	8007ce4 <_realloc_r>
 8007afa:	4603      	mov	r3, r0
 8007afc:	2800      	cmp	r0, #0
 8007afe:	f47f af39 	bne.w	8007974 <__sfvwrite_r+0x118>
 8007b02:	6921      	ldr	r1, [r4, #16]
 8007b04:	4650      	mov	r0, sl
 8007b06:	f7fe fc0f 	bl	8006328 <_free_r>
 8007b0a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007b0e:	220c      	movs	r2, #12
 8007b10:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8007b14:	f8ca 2000 	str.w	r2, [sl]
 8007b18:	e792      	b.n	8007a40 <__sfvwrite_r+0x1e4>
 8007b1a:	f107 0901 	add.w	r9, r7, #1
 8007b1e:	e75c      	b.n	80079da <__sfvwrite_r+0x17e>
 8007b20:	461a      	mov	r2, r3
 8007b22:	4631      	mov	r1, r6
 8007b24:	9301      	str	r3, [sp, #4]
 8007b26:	f000 f863 	bl	8007bf0 <memmove>
 8007b2a:	9b01      	ldr	r3, [sp, #4]
 8007b2c:	68a1      	ldr	r1, [r4, #8]
 8007b2e:	6822      	ldr	r2, [r4, #0]
 8007b30:	1ac9      	subs	r1, r1, r3
 8007b32:	441a      	add	r2, r3
 8007b34:	60a1      	str	r1, [r4, #8]
 8007b36:	6022      	str	r2, [r4, #0]
 8007b38:	461d      	mov	r5, r3
 8007b3a:	e766      	b.n	8007a0a <__sfvwrite_r+0x1ae>
 8007b3c:	230c      	movs	r3, #12
 8007b3e:	f8ca 3000 	str.w	r3, [sl]
 8007b42:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007b46:	e77b      	b.n	8007a40 <__sfvwrite_r+0x1e4>
 8007b48:	f04f 30ff 	mov.w	r0, #4294967295
 8007b4c:	e76b      	b.n	8007a26 <__sfvwrite_r+0x1ca>
 8007b4e:	bf00      	nop
 8007b50:	7ffffffe 	.word	0x7ffffffe
 8007b54:	7ffffc00 	.word	0x7ffffc00

08007b58 <_isatty_r>:
 8007b58:	b538      	push	{r3, r4, r5, lr}
 8007b5a:	4c07      	ldr	r4, [pc, #28]	; (8007b78 <_isatty_r+0x20>)
 8007b5c:	2300      	movs	r3, #0
 8007b5e:	4605      	mov	r5, r0
 8007b60:	4608      	mov	r0, r1
 8007b62:	6023      	str	r3, [r4, #0]
 8007b64:	f7f8 fda0 	bl	80006a8 <_isatty>
 8007b68:	1c43      	adds	r3, r0, #1
 8007b6a:	d000      	beq.n	8007b6e <_isatty_r+0x16>
 8007b6c:	bd38      	pop	{r3, r4, r5, pc}
 8007b6e:	6823      	ldr	r3, [r4, #0]
 8007b70:	2b00      	cmp	r3, #0
 8007b72:	d0fb      	beq.n	8007b6c <_isatty_r+0x14>
 8007b74:	602b      	str	r3, [r5, #0]
 8007b76:	bd38      	pop	{r3, r4, r5, pc}
 8007b78:	20000c4c 	.word	0x20000c4c

08007b7c <__locale_mb_cur_max>:
 8007b7c:	4b04      	ldr	r3, [pc, #16]	; (8007b90 <__locale_mb_cur_max+0x14>)
 8007b7e:	4a05      	ldr	r2, [pc, #20]	; (8007b94 <__locale_mb_cur_max+0x18>)
 8007b80:	681b      	ldr	r3, [r3, #0]
 8007b82:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007b84:	2b00      	cmp	r3, #0
 8007b86:	bf08      	it	eq
 8007b88:	4613      	moveq	r3, r2
 8007b8a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007b8e:	4770      	bx	lr
 8007b90:	20000010 	.word	0x20000010
 8007b94:	20000854 	.word	0x20000854

08007b98 <_lseek_r>:
 8007b98:	b570      	push	{r4, r5, r6, lr}
 8007b9a:	460d      	mov	r5, r1
 8007b9c:	4c08      	ldr	r4, [pc, #32]	; (8007bc0 <_lseek_r+0x28>)
 8007b9e:	4611      	mov	r1, r2
 8007ba0:	4606      	mov	r6, r0
 8007ba2:	461a      	mov	r2, r3
 8007ba4:	4628      	mov	r0, r5
 8007ba6:	2300      	movs	r3, #0
 8007ba8:	6023      	str	r3, [r4, #0]
 8007baa:	f7f8 fd88 	bl	80006be <_lseek>
 8007bae:	1c43      	adds	r3, r0, #1
 8007bb0:	d000      	beq.n	8007bb4 <_lseek_r+0x1c>
 8007bb2:	bd70      	pop	{r4, r5, r6, pc}
 8007bb4:	6823      	ldr	r3, [r4, #0]
 8007bb6:	2b00      	cmp	r3, #0
 8007bb8:	d0fb      	beq.n	8007bb2 <_lseek_r+0x1a>
 8007bba:	6033      	str	r3, [r6, #0]
 8007bbc:	bd70      	pop	{r4, r5, r6, pc}
 8007bbe:	bf00      	nop
 8007bc0:	20000c4c 	.word	0x20000c4c

08007bc4 <__ascii_mbtowc>:
 8007bc4:	b082      	sub	sp, #8
 8007bc6:	b149      	cbz	r1, 8007bdc <__ascii_mbtowc+0x18>
 8007bc8:	b15a      	cbz	r2, 8007be2 <__ascii_mbtowc+0x1e>
 8007bca:	b16b      	cbz	r3, 8007be8 <__ascii_mbtowc+0x24>
 8007bcc:	7813      	ldrb	r3, [r2, #0]
 8007bce:	600b      	str	r3, [r1, #0]
 8007bd0:	7812      	ldrb	r2, [r2, #0]
 8007bd2:	1c10      	adds	r0, r2, #0
 8007bd4:	bf18      	it	ne
 8007bd6:	2001      	movne	r0, #1
 8007bd8:	b002      	add	sp, #8
 8007bda:	4770      	bx	lr
 8007bdc:	a901      	add	r1, sp, #4
 8007bde:	2a00      	cmp	r2, #0
 8007be0:	d1f3      	bne.n	8007bca <__ascii_mbtowc+0x6>
 8007be2:	4610      	mov	r0, r2
 8007be4:	b002      	add	sp, #8
 8007be6:	4770      	bx	lr
 8007be8:	f06f 0001 	mvn.w	r0, #1
 8007bec:	e7f4      	b.n	8007bd8 <__ascii_mbtowc+0x14>
 8007bee:	bf00      	nop

08007bf0 <memmove>:
 8007bf0:	4288      	cmp	r0, r1
 8007bf2:	b4f0      	push	{r4, r5, r6, r7}
 8007bf4:	d90d      	bls.n	8007c12 <memmove+0x22>
 8007bf6:	188b      	adds	r3, r1, r2
 8007bf8:	4283      	cmp	r3, r0
 8007bfa:	d90a      	bls.n	8007c12 <memmove+0x22>
 8007bfc:	1884      	adds	r4, r0, r2
 8007bfe:	b132      	cbz	r2, 8007c0e <memmove+0x1e>
 8007c00:	4622      	mov	r2, r4
 8007c02:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8007c06:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8007c0a:	4299      	cmp	r1, r3
 8007c0c:	d1f9      	bne.n	8007c02 <memmove+0x12>
 8007c0e:	bcf0      	pop	{r4, r5, r6, r7}
 8007c10:	4770      	bx	lr
 8007c12:	2a0f      	cmp	r2, #15
 8007c14:	d949      	bls.n	8007caa <memmove+0xba>
 8007c16:	ea40 0301 	orr.w	r3, r0, r1
 8007c1a:	079b      	lsls	r3, r3, #30
 8007c1c:	d147      	bne.n	8007cae <memmove+0xbe>
 8007c1e:	f1a2 0310 	sub.w	r3, r2, #16
 8007c22:	091b      	lsrs	r3, r3, #4
 8007c24:	f101 0720 	add.w	r7, r1, #32
 8007c28:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8007c2c:	f101 0410 	add.w	r4, r1, #16
 8007c30:	f100 0510 	add.w	r5, r0, #16
 8007c34:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8007c38:	f845 6c10 	str.w	r6, [r5, #-16]
 8007c3c:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8007c40:	f845 6c0c 	str.w	r6, [r5, #-12]
 8007c44:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8007c48:	f845 6c08 	str.w	r6, [r5, #-8]
 8007c4c:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8007c50:	f845 6c04 	str.w	r6, [r5, #-4]
 8007c54:	3410      	adds	r4, #16
 8007c56:	42bc      	cmp	r4, r7
 8007c58:	f105 0510 	add.w	r5, r5, #16
 8007c5c:	d1ea      	bne.n	8007c34 <memmove+0x44>
 8007c5e:	3301      	adds	r3, #1
 8007c60:	f002 050f 	and.w	r5, r2, #15
 8007c64:	011b      	lsls	r3, r3, #4
 8007c66:	2d03      	cmp	r5, #3
 8007c68:	4419      	add	r1, r3
 8007c6a:	4403      	add	r3, r0
 8007c6c:	d921      	bls.n	8007cb2 <memmove+0xc2>
 8007c6e:	1f1f      	subs	r7, r3, #4
 8007c70:	460e      	mov	r6, r1
 8007c72:	462c      	mov	r4, r5
 8007c74:	3c04      	subs	r4, #4
 8007c76:	f856 cb04 	ldr.w	ip, [r6], #4
 8007c7a:	f847 cf04 	str.w	ip, [r7, #4]!
 8007c7e:	2c03      	cmp	r4, #3
 8007c80:	d8f8      	bhi.n	8007c74 <memmove+0x84>
 8007c82:	1f2c      	subs	r4, r5, #4
 8007c84:	f024 0403 	bic.w	r4, r4, #3
 8007c88:	3404      	adds	r4, #4
 8007c8a:	4423      	add	r3, r4
 8007c8c:	4421      	add	r1, r4
 8007c8e:	f002 0203 	and.w	r2, r2, #3
 8007c92:	2a00      	cmp	r2, #0
 8007c94:	d0bb      	beq.n	8007c0e <memmove+0x1e>
 8007c96:	3b01      	subs	r3, #1
 8007c98:	440a      	add	r2, r1
 8007c9a:	f811 4b01 	ldrb.w	r4, [r1], #1
 8007c9e:	f803 4f01 	strb.w	r4, [r3, #1]!
 8007ca2:	4291      	cmp	r1, r2
 8007ca4:	d1f9      	bne.n	8007c9a <memmove+0xaa>
 8007ca6:	bcf0      	pop	{r4, r5, r6, r7}
 8007ca8:	4770      	bx	lr
 8007caa:	4603      	mov	r3, r0
 8007cac:	e7f1      	b.n	8007c92 <memmove+0xa2>
 8007cae:	4603      	mov	r3, r0
 8007cb0:	e7f1      	b.n	8007c96 <memmove+0xa6>
 8007cb2:	462a      	mov	r2, r5
 8007cb4:	e7ed      	b.n	8007c92 <memmove+0xa2>
 8007cb6:	bf00      	nop

08007cb8 <_read_r>:
 8007cb8:	b570      	push	{r4, r5, r6, lr}
 8007cba:	460d      	mov	r5, r1
 8007cbc:	4c08      	ldr	r4, [pc, #32]	; (8007ce0 <_read_r+0x28>)
 8007cbe:	4611      	mov	r1, r2
 8007cc0:	4606      	mov	r6, r0
 8007cc2:	461a      	mov	r2, r3
 8007cc4:	4628      	mov	r0, r5
 8007cc6:	2300      	movs	r3, #0
 8007cc8:	6023      	str	r3, [r4, #0]
 8007cca:	f7f8 fc6c 	bl	80005a6 <_read>
 8007cce:	1c43      	adds	r3, r0, #1
 8007cd0:	d000      	beq.n	8007cd4 <_read_r+0x1c>
 8007cd2:	bd70      	pop	{r4, r5, r6, pc}
 8007cd4:	6823      	ldr	r3, [r4, #0]
 8007cd6:	2b00      	cmp	r3, #0
 8007cd8:	d0fb      	beq.n	8007cd2 <_read_r+0x1a>
 8007cda:	6033      	str	r3, [r6, #0]
 8007cdc:	bd70      	pop	{r4, r5, r6, pc}
 8007cde:	bf00      	nop
 8007ce0:	20000c4c 	.word	0x20000c4c

08007ce4 <_realloc_r>:
 8007ce4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007ce8:	4692      	mov	sl, r2
 8007cea:	b083      	sub	sp, #12
 8007cec:	2900      	cmp	r1, #0
 8007cee:	f000 80a1 	beq.w	8007e34 <_realloc_r+0x150>
 8007cf2:	460d      	mov	r5, r1
 8007cf4:	4680      	mov	r8, r0
 8007cf6:	f10a 040b 	add.w	r4, sl, #11
 8007cfa:	f7fe ffb9 	bl	8006c70 <__malloc_lock>
 8007cfe:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8007d02:	2c16      	cmp	r4, #22
 8007d04:	f022 0603 	bic.w	r6, r2, #3
 8007d08:	f1a5 0708 	sub.w	r7, r5, #8
 8007d0c:	d83e      	bhi.n	8007d8c <_realloc_r+0xa8>
 8007d0e:	2410      	movs	r4, #16
 8007d10:	4621      	mov	r1, r4
 8007d12:	45a2      	cmp	sl, r4
 8007d14:	d83f      	bhi.n	8007d96 <_realloc_r+0xb2>
 8007d16:	428e      	cmp	r6, r1
 8007d18:	eb07 0906 	add.w	r9, r7, r6
 8007d1c:	da74      	bge.n	8007e08 <_realloc_r+0x124>
 8007d1e:	4bc7      	ldr	r3, [pc, #796]	; (800803c <_realloc_r+0x358>)
 8007d20:	6898      	ldr	r0, [r3, #8]
 8007d22:	4548      	cmp	r0, r9
 8007d24:	f000 80aa 	beq.w	8007e7c <_realloc_r+0x198>
 8007d28:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8007d2c:	f020 0301 	bic.w	r3, r0, #1
 8007d30:	444b      	add	r3, r9
 8007d32:	685b      	ldr	r3, [r3, #4]
 8007d34:	07db      	lsls	r3, r3, #31
 8007d36:	f140 8083 	bpl.w	8007e40 <_realloc_r+0x15c>
 8007d3a:	07d2      	lsls	r2, r2, #31
 8007d3c:	d534      	bpl.n	8007da8 <_realloc_r+0xc4>
 8007d3e:	4651      	mov	r1, sl
 8007d40:	4640      	mov	r0, r8
 8007d42:	f7fe fc9d 	bl	8006680 <_malloc_r>
 8007d46:	4682      	mov	sl, r0
 8007d48:	b1e0      	cbz	r0, 8007d84 <_realloc_r+0xa0>
 8007d4a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007d4e:	f023 0301 	bic.w	r3, r3, #1
 8007d52:	443b      	add	r3, r7
 8007d54:	f1a0 0208 	sub.w	r2, r0, #8
 8007d58:	4293      	cmp	r3, r2
 8007d5a:	f000 80f9 	beq.w	8007f50 <_realloc_r+0x26c>
 8007d5e:	1f32      	subs	r2, r6, #4
 8007d60:	2a24      	cmp	r2, #36	; 0x24
 8007d62:	f200 8107 	bhi.w	8007f74 <_realloc_r+0x290>
 8007d66:	2a13      	cmp	r2, #19
 8007d68:	6829      	ldr	r1, [r5, #0]
 8007d6a:	f200 80e6 	bhi.w	8007f3a <_realloc_r+0x256>
 8007d6e:	4603      	mov	r3, r0
 8007d70:	462a      	mov	r2, r5
 8007d72:	6019      	str	r1, [r3, #0]
 8007d74:	6851      	ldr	r1, [r2, #4]
 8007d76:	6059      	str	r1, [r3, #4]
 8007d78:	6892      	ldr	r2, [r2, #8]
 8007d7a:	609a      	str	r2, [r3, #8]
 8007d7c:	4629      	mov	r1, r5
 8007d7e:	4640      	mov	r0, r8
 8007d80:	f7fe fad2 	bl	8006328 <_free_r>
 8007d84:	4640      	mov	r0, r8
 8007d86:	f7fe ff79 	bl	8006c7c <__malloc_unlock>
 8007d8a:	e04f      	b.n	8007e2c <_realloc_r+0x148>
 8007d8c:	f024 0407 	bic.w	r4, r4, #7
 8007d90:	2c00      	cmp	r4, #0
 8007d92:	4621      	mov	r1, r4
 8007d94:	dabd      	bge.n	8007d12 <_realloc_r+0x2e>
 8007d96:	f04f 0a00 	mov.w	sl, #0
 8007d9a:	230c      	movs	r3, #12
 8007d9c:	4650      	mov	r0, sl
 8007d9e:	f8c8 3000 	str.w	r3, [r8]
 8007da2:	b003      	add	sp, #12
 8007da4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007da8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007dac:	eba7 0b03 	sub.w	fp, r7, r3
 8007db0:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007db4:	f022 0203 	bic.w	r2, r2, #3
 8007db8:	18b3      	adds	r3, r6, r2
 8007dba:	428b      	cmp	r3, r1
 8007dbc:	dbbf      	blt.n	8007d3e <_realloc_r+0x5a>
 8007dbe:	46da      	mov	sl, fp
 8007dc0:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007dc4:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007dc8:	1f32      	subs	r2, r6, #4
 8007dca:	2a24      	cmp	r2, #36	; 0x24
 8007dcc:	60c1      	str	r1, [r0, #12]
 8007dce:	eb0b 0903 	add.w	r9, fp, r3
 8007dd2:	6088      	str	r0, [r1, #8]
 8007dd4:	f200 80c6 	bhi.w	8007f64 <_realloc_r+0x280>
 8007dd8:	2a13      	cmp	r2, #19
 8007dda:	6829      	ldr	r1, [r5, #0]
 8007ddc:	f240 80c0 	bls.w	8007f60 <_realloc_r+0x27c>
 8007de0:	f8cb 1008 	str.w	r1, [fp, #8]
 8007de4:	6869      	ldr	r1, [r5, #4]
 8007de6:	f8cb 100c 	str.w	r1, [fp, #12]
 8007dea:	2a1b      	cmp	r2, #27
 8007dec:	68a9      	ldr	r1, [r5, #8]
 8007dee:	f200 80d8 	bhi.w	8007fa2 <_realloc_r+0x2be>
 8007df2:	f10b 0210 	add.w	r2, fp, #16
 8007df6:	3508      	adds	r5, #8
 8007df8:	6011      	str	r1, [r2, #0]
 8007dfa:	6869      	ldr	r1, [r5, #4]
 8007dfc:	6051      	str	r1, [r2, #4]
 8007dfe:	68a9      	ldr	r1, [r5, #8]
 8007e00:	6091      	str	r1, [r2, #8]
 8007e02:	461e      	mov	r6, r3
 8007e04:	465f      	mov	r7, fp
 8007e06:	4655      	mov	r5, sl
 8007e08:	687b      	ldr	r3, [r7, #4]
 8007e0a:	1b32      	subs	r2, r6, r4
 8007e0c:	2a0f      	cmp	r2, #15
 8007e0e:	f003 0301 	and.w	r3, r3, #1
 8007e12:	d822      	bhi.n	8007e5a <_realloc_r+0x176>
 8007e14:	4333      	orrs	r3, r6
 8007e16:	607b      	str	r3, [r7, #4]
 8007e18:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007e1c:	f043 0301 	orr.w	r3, r3, #1
 8007e20:	f8c9 3004 	str.w	r3, [r9, #4]
 8007e24:	4640      	mov	r0, r8
 8007e26:	f7fe ff29 	bl	8006c7c <__malloc_unlock>
 8007e2a:	46aa      	mov	sl, r5
 8007e2c:	4650      	mov	r0, sl
 8007e2e:	b003      	add	sp, #12
 8007e30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007e34:	4611      	mov	r1, r2
 8007e36:	b003      	add	sp, #12
 8007e38:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007e3c:	f7fe bc20 	b.w	8006680 <_malloc_r>
 8007e40:	f020 0003 	bic.w	r0, r0, #3
 8007e44:	1833      	adds	r3, r6, r0
 8007e46:	428b      	cmp	r3, r1
 8007e48:	db61      	blt.n	8007f0e <_realloc_r+0x22a>
 8007e4a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007e4e:	461e      	mov	r6, r3
 8007e50:	60ca      	str	r2, [r1, #12]
 8007e52:	eb07 0903 	add.w	r9, r7, r3
 8007e56:	6091      	str	r1, [r2, #8]
 8007e58:	e7d6      	b.n	8007e08 <_realloc_r+0x124>
 8007e5a:	1939      	adds	r1, r7, r4
 8007e5c:	4323      	orrs	r3, r4
 8007e5e:	f042 0201 	orr.w	r2, r2, #1
 8007e62:	607b      	str	r3, [r7, #4]
 8007e64:	604a      	str	r2, [r1, #4]
 8007e66:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007e6a:	f043 0301 	orr.w	r3, r3, #1
 8007e6e:	3108      	adds	r1, #8
 8007e70:	f8c9 3004 	str.w	r3, [r9, #4]
 8007e74:	4640      	mov	r0, r8
 8007e76:	f7fe fa57 	bl	8006328 <_free_r>
 8007e7a:	e7d3      	b.n	8007e24 <_realloc_r+0x140>
 8007e7c:	6840      	ldr	r0, [r0, #4]
 8007e7e:	f020 0903 	bic.w	r9, r0, #3
 8007e82:	44b1      	add	r9, r6
 8007e84:	f104 0010 	add.w	r0, r4, #16
 8007e88:	4581      	cmp	r9, r0
 8007e8a:	da77      	bge.n	8007f7c <_realloc_r+0x298>
 8007e8c:	07d2      	lsls	r2, r2, #31
 8007e8e:	f53f af56 	bmi.w	8007d3e <_realloc_r+0x5a>
 8007e92:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8007e96:	eba7 0b02 	sub.w	fp, r7, r2
 8007e9a:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007e9e:	f022 0203 	bic.w	r2, r2, #3
 8007ea2:	4491      	add	r9, r2
 8007ea4:	4548      	cmp	r0, r9
 8007ea6:	dc87      	bgt.n	8007db8 <_realloc_r+0xd4>
 8007ea8:	46da      	mov	sl, fp
 8007eaa:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007eae:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007eb2:	1f32      	subs	r2, r6, #4
 8007eb4:	2a24      	cmp	r2, #36	; 0x24
 8007eb6:	60c1      	str	r1, [r0, #12]
 8007eb8:	6088      	str	r0, [r1, #8]
 8007eba:	f200 80a1 	bhi.w	8008000 <_realloc_r+0x31c>
 8007ebe:	2a13      	cmp	r2, #19
 8007ec0:	6829      	ldr	r1, [r5, #0]
 8007ec2:	f240 809b 	bls.w	8007ffc <_realloc_r+0x318>
 8007ec6:	f8cb 1008 	str.w	r1, [fp, #8]
 8007eca:	6869      	ldr	r1, [r5, #4]
 8007ecc:	f8cb 100c 	str.w	r1, [fp, #12]
 8007ed0:	2a1b      	cmp	r2, #27
 8007ed2:	68a9      	ldr	r1, [r5, #8]
 8007ed4:	f200 809b 	bhi.w	800800e <_realloc_r+0x32a>
 8007ed8:	f10b 0210 	add.w	r2, fp, #16
 8007edc:	3508      	adds	r5, #8
 8007ede:	6011      	str	r1, [r2, #0]
 8007ee0:	6869      	ldr	r1, [r5, #4]
 8007ee2:	6051      	str	r1, [r2, #4]
 8007ee4:	68a9      	ldr	r1, [r5, #8]
 8007ee6:	6091      	str	r1, [r2, #8]
 8007ee8:	eb0b 0104 	add.w	r1, fp, r4
 8007eec:	eba9 0204 	sub.w	r2, r9, r4
 8007ef0:	f042 0201 	orr.w	r2, r2, #1
 8007ef4:	6099      	str	r1, [r3, #8]
 8007ef6:	604a      	str	r2, [r1, #4]
 8007ef8:	f8db 3004 	ldr.w	r3, [fp, #4]
 8007efc:	f003 0301 	and.w	r3, r3, #1
 8007f00:	431c      	orrs	r4, r3
 8007f02:	4640      	mov	r0, r8
 8007f04:	f8cb 4004 	str.w	r4, [fp, #4]
 8007f08:	f7fe feb8 	bl	8006c7c <__malloc_unlock>
 8007f0c:	e78e      	b.n	8007e2c <_realloc_r+0x148>
 8007f0e:	07d3      	lsls	r3, r2, #31
 8007f10:	f53f af15 	bmi.w	8007d3e <_realloc_r+0x5a>
 8007f14:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007f18:	eba7 0b03 	sub.w	fp, r7, r3
 8007f1c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007f20:	f022 0203 	bic.w	r2, r2, #3
 8007f24:	4410      	add	r0, r2
 8007f26:	1983      	adds	r3, r0, r6
 8007f28:	428b      	cmp	r3, r1
 8007f2a:	f6ff af45 	blt.w	8007db8 <_realloc_r+0xd4>
 8007f2e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007f32:	46da      	mov	sl, fp
 8007f34:	60ca      	str	r2, [r1, #12]
 8007f36:	6091      	str	r1, [r2, #8]
 8007f38:	e742      	b.n	8007dc0 <_realloc_r+0xdc>
 8007f3a:	6001      	str	r1, [r0, #0]
 8007f3c:	686b      	ldr	r3, [r5, #4]
 8007f3e:	6043      	str	r3, [r0, #4]
 8007f40:	2a1b      	cmp	r2, #27
 8007f42:	d83a      	bhi.n	8007fba <_realloc_r+0x2d6>
 8007f44:	f105 0208 	add.w	r2, r5, #8
 8007f48:	f100 0308 	add.w	r3, r0, #8
 8007f4c:	68a9      	ldr	r1, [r5, #8]
 8007f4e:	e710      	b.n	8007d72 <_realloc_r+0x8e>
 8007f50:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8007f54:	f023 0303 	bic.w	r3, r3, #3
 8007f58:	441e      	add	r6, r3
 8007f5a:	eb07 0906 	add.w	r9, r7, r6
 8007f5e:	e753      	b.n	8007e08 <_realloc_r+0x124>
 8007f60:	4652      	mov	r2, sl
 8007f62:	e749      	b.n	8007df8 <_realloc_r+0x114>
 8007f64:	4629      	mov	r1, r5
 8007f66:	4650      	mov	r0, sl
 8007f68:	461e      	mov	r6, r3
 8007f6a:	465f      	mov	r7, fp
 8007f6c:	f7ff fe40 	bl	8007bf0 <memmove>
 8007f70:	4655      	mov	r5, sl
 8007f72:	e749      	b.n	8007e08 <_realloc_r+0x124>
 8007f74:	4629      	mov	r1, r5
 8007f76:	f7ff fe3b 	bl	8007bf0 <memmove>
 8007f7a:	e6ff      	b.n	8007d7c <_realloc_r+0x98>
 8007f7c:	4427      	add	r7, r4
 8007f7e:	eba9 0904 	sub.w	r9, r9, r4
 8007f82:	f049 0201 	orr.w	r2, r9, #1
 8007f86:	609f      	str	r7, [r3, #8]
 8007f88:	607a      	str	r2, [r7, #4]
 8007f8a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007f8e:	f003 0301 	and.w	r3, r3, #1
 8007f92:	431c      	orrs	r4, r3
 8007f94:	4640      	mov	r0, r8
 8007f96:	f845 4c04 	str.w	r4, [r5, #-4]
 8007f9a:	f7fe fe6f 	bl	8006c7c <__malloc_unlock>
 8007f9e:	46aa      	mov	sl, r5
 8007fa0:	e744      	b.n	8007e2c <_realloc_r+0x148>
 8007fa2:	f8cb 1010 	str.w	r1, [fp, #16]
 8007fa6:	68e9      	ldr	r1, [r5, #12]
 8007fa8:	f8cb 1014 	str.w	r1, [fp, #20]
 8007fac:	2a24      	cmp	r2, #36	; 0x24
 8007fae:	d010      	beq.n	8007fd2 <_realloc_r+0x2ee>
 8007fb0:	6929      	ldr	r1, [r5, #16]
 8007fb2:	f10b 0218 	add.w	r2, fp, #24
 8007fb6:	3510      	adds	r5, #16
 8007fb8:	e71e      	b.n	8007df8 <_realloc_r+0x114>
 8007fba:	68ab      	ldr	r3, [r5, #8]
 8007fbc:	6083      	str	r3, [r0, #8]
 8007fbe:	68eb      	ldr	r3, [r5, #12]
 8007fc0:	60c3      	str	r3, [r0, #12]
 8007fc2:	2a24      	cmp	r2, #36	; 0x24
 8007fc4:	d010      	beq.n	8007fe8 <_realloc_r+0x304>
 8007fc6:	f105 0210 	add.w	r2, r5, #16
 8007fca:	f100 0310 	add.w	r3, r0, #16
 8007fce:	6929      	ldr	r1, [r5, #16]
 8007fd0:	e6cf      	b.n	8007d72 <_realloc_r+0x8e>
 8007fd2:	692a      	ldr	r2, [r5, #16]
 8007fd4:	f8cb 2018 	str.w	r2, [fp, #24]
 8007fd8:	696a      	ldr	r2, [r5, #20]
 8007fda:	f8cb 201c 	str.w	r2, [fp, #28]
 8007fde:	69a9      	ldr	r1, [r5, #24]
 8007fe0:	f10b 0220 	add.w	r2, fp, #32
 8007fe4:	3518      	adds	r5, #24
 8007fe6:	e707      	b.n	8007df8 <_realloc_r+0x114>
 8007fe8:	692b      	ldr	r3, [r5, #16]
 8007fea:	6103      	str	r3, [r0, #16]
 8007fec:	696b      	ldr	r3, [r5, #20]
 8007fee:	6143      	str	r3, [r0, #20]
 8007ff0:	69a9      	ldr	r1, [r5, #24]
 8007ff2:	f105 0218 	add.w	r2, r5, #24
 8007ff6:	f100 0318 	add.w	r3, r0, #24
 8007ffa:	e6ba      	b.n	8007d72 <_realloc_r+0x8e>
 8007ffc:	4652      	mov	r2, sl
 8007ffe:	e76e      	b.n	8007ede <_realloc_r+0x1fa>
 8008000:	4629      	mov	r1, r5
 8008002:	4650      	mov	r0, sl
 8008004:	9301      	str	r3, [sp, #4]
 8008006:	f7ff fdf3 	bl	8007bf0 <memmove>
 800800a:	9b01      	ldr	r3, [sp, #4]
 800800c:	e76c      	b.n	8007ee8 <_realloc_r+0x204>
 800800e:	f8cb 1010 	str.w	r1, [fp, #16]
 8008012:	68e9      	ldr	r1, [r5, #12]
 8008014:	f8cb 1014 	str.w	r1, [fp, #20]
 8008018:	2a24      	cmp	r2, #36	; 0x24
 800801a:	d004      	beq.n	8008026 <_realloc_r+0x342>
 800801c:	6929      	ldr	r1, [r5, #16]
 800801e:	f10b 0218 	add.w	r2, fp, #24
 8008022:	3510      	adds	r5, #16
 8008024:	e75b      	b.n	8007ede <_realloc_r+0x1fa>
 8008026:	692a      	ldr	r2, [r5, #16]
 8008028:	f8cb 2018 	str.w	r2, [fp, #24]
 800802c:	696a      	ldr	r2, [r5, #20]
 800802e:	f8cb 201c 	str.w	r2, [fp, #28]
 8008032:	69a9      	ldr	r1, [r5, #24]
 8008034:	f10b 0220 	add.w	r2, fp, #32
 8008038:	3518      	adds	r5, #24
 800803a:	e750      	b.n	8007ede <_realloc_r+0x1fa>
 800803c:	20000444 	.word	0x20000444

08008040 <__swbuf_r>:
 8008040:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008042:	460d      	mov	r5, r1
 8008044:	4614      	mov	r4, r2
 8008046:	4606      	mov	r6, r0
 8008048:	b110      	cbz	r0, 8008050 <__swbuf_r+0x10>
 800804a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800804c:	2b00      	cmp	r3, #0
 800804e:	d043      	beq.n	80080d8 <__swbuf_r+0x98>
 8008050:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008054:	69a3      	ldr	r3, [r4, #24]
 8008056:	60a3      	str	r3, [r4, #8]
 8008058:	b291      	uxth	r1, r2
 800805a:	0708      	lsls	r0, r1, #28
 800805c:	d51b      	bpl.n	8008096 <__swbuf_r+0x56>
 800805e:	6923      	ldr	r3, [r4, #16]
 8008060:	b1cb      	cbz	r3, 8008096 <__swbuf_r+0x56>
 8008062:	b2ed      	uxtb	r5, r5
 8008064:	0489      	lsls	r1, r1, #18
 8008066:	462f      	mov	r7, r5
 8008068:	d522      	bpl.n	80080b0 <__swbuf_r+0x70>
 800806a:	6822      	ldr	r2, [r4, #0]
 800806c:	6961      	ldr	r1, [r4, #20]
 800806e:	1ad3      	subs	r3, r2, r3
 8008070:	4299      	cmp	r1, r3
 8008072:	dd29      	ble.n	80080c8 <__swbuf_r+0x88>
 8008074:	3301      	adds	r3, #1
 8008076:	68a1      	ldr	r1, [r4, #8]
 8008078:	1c50      	adds	r0, r2, #1
 800807a:	3901      	subs	r1, #1
 800807c:	60a1      	str	r1, [r4, #8]
 800807e:	6020      	str	r0, [r4, #0]
 8008080:	7015      	strb	r5, [r2, #0]
 8008082:	6962      	ldr	r2, [r4, #20]
 8008084:	429a      	cmp	r2, r3
 8008086:	d02a      	beq.n	80080de <__swbuf_r+0x9e>
 8008088:	89a3      	ldrh	r3, [r4, #12]
 800808a:	07db      	lsls	r3, r3, #31
 800808c:	d501      	bpl.n	8008092 <__swbuf_r+0x52>
 800808e:	2d0a      	cmp	r5, #10
 8008090:	d025      	beq.n	80080de <__swbuf_r+0x9e>
 8008092:	4638      	mov	r0, r7
 8008094:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008096:	4621      	mov	r1, r4
 8008098:	4630      	mov	r0, r6
 800809a:	f7fc ff81 	bl	8004fa0 <__swsetup_r>
 800809e:	bb20      	cbnz	r0, 80080ea <__swbuf_r+0xaa>
 80080a0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80080a4:	6923      	ldr	r3, [r4, #16]
 80080a6:	b291      	uxth	r1, r2
 80080a8:	b2ed      	uxtb	r5, r5
 80080aa:	0489      	lsls	r1, r1, #18
 80080ac:	462f      	mov	r7, r5
 80080ae:	d4dc      	bmi.n	800806a <__swbuf_r+0x2a>
 80080b0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80080b2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80080b6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80080ba:	81a2      	strh	r2, [r4, #12]
 80080bc:	6822      	ldr	r2, [r4, #0]
 80080be:	6661      	str	r1, [r4, #100]	; 0x64
 80080c0:	6961      	ldr	r1, [r4, #20]
 80080c2:	1ad3      	subs	r3, r2, r3
 80080c4:	4299      	cmp	r1, r3
 80080c6:	dcd5      	bgt.n	8008074 <__swbuf_r+0x34>
 80080c8:	4621      	mov	r1, r4
 80080ca:	4630      	mov	r0, r6
 80080cc:	f7fe f82e 	bl	800612c <_fflush_r>
 80080d0:	b958      	cbnz	r0, 80080ea <__swbuf_r+0xaa>
 80080d2:	6822      	ldr	r2, [r4, #0]
 80080d4:	2301      	movs	r3, #1
 80080d6:	e7ce      	b.n	8008076 <__swbuf_r+0x36>
 80080d8:	f7fe f884 	bl	80061e4 <__sinit>
 80080dc:	e7b8      	b.n	8008050 <__swbuf_r+0x10>
 80080de:	4621      	mov	r1, r4
 80080e0:	4630      	mov	r0, r6
 80080e2:	f7fe f823 	bl	800612c <_fflush_r>
 80080e6:	2800      	cmp	r0, #0
 80080e8:	d0d3      	beq.n	8008092 <__swbuf_r+0x52>
 80080ea:	f04f 37ff 	mov.w	r7, #4294967295
 80080ee:	e7d0      	b.n	8008092 <__swbuf_r+0x52>

080080f0 <_wcrtomb_r>:
 80080f0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80080f2:	4c11      	ldr	r4, [pc, #68]	; (8008138 <_wcrtomb_r+0x48>)
 80080f4:	6824      	ldr	r4, [r4, #0]
 80080f6:	b085      	sub	sp, #20
 80080f8:	4606      	mov	r6, r0
 80080fa:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80080fc:	461f      	mov	r7, r3
 80080fe:	b151      	cbz	r1, 8008116 <_wcrtomb_r+0x26>
 8008100:	4d0e      	ldr	r5, [pc, #56]	; (800813c <_wcrtomb_r+0x4c>)
 8008102:	2c00      	cmp	r4, #0
 8008104:	bf08      	it	eq
 8008106:	462c      	moveq	r4, r5
 8008108:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800810c:	47a0      	blx	r4
 800810e:	1c43      	adds	r3, r0, #1
 8008110:	d00c      	beq.n	800812c <_wcrtomb_r+0x3c>
 8008112:	b005      	add	sp, #20
 8008114:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008116:	4a09      	ldr	r2, [pc, #36]	; (800813c <_wcrtomb_r+0x4c>)
 8008118:	2c00      	cmp	r4, #0
 800811a:	bf08      	it	eq
 800811c:	4614      	moveq	r4, r2
 800811e:	460a      	mov	r2, r1
 8008120:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008124:	a901      	add	r1, sp, #4
 8008126:	47a0      	blx	r4
 8008128:	1c43      	adds	r3, r0, #1
 800812a:	d1f2      	bne.n	8008112 <_wcrtomb_r+0x22>
 800812c:	2200      	movs	r2, #0
 800812e:	238a      	movs	r3, #138	; 0x8a
 8008130:	603a      	str	r2, [r7, #0]
 8008132:	6033      	str	r3, [r6, #0]
 8008134:	b005      	add	sp, #20
 8008136:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008138:	20000010 	.word	0x20000010
 800813c:	20000854 	.word	0x20000854

08008140 <__ascii_wctomb>:
 8008140:	b121      	cbz	r1, 800814c <__ascii_wctomb+0xc>
 8008142:	2aff      	cmp	r2, #255	; 0xff
 8008144:	d804      	bhi.n	8008150 <__ascii_wctomb+0x10>
 8008146:	700a      	strb	r2, [r1, #0]
 8008148:	2001      	movs	r0, #1
 800814a:	4770      	bx	lr
 800814c:	4608      	mov	r0, r1
 800814e:	4770      	bx	lr
 8008150:	238a      	movs	r3, #138	; 0x8a
 8008152:	6003      	str	r3, [r0, #0]
 8008154:	f04f 30ff 	mov.w	r0, #4294967295
 8008158:	4770      	bx	lr
 800815a:	bf00      	nop

0800815c <__aeabi_drsub>:
 800815c:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8008160:	e002      	b.n	8008168 <__adddf3>
 8008162:	bf00      	nop

08008164 <__aeabi_dsub>:
 8008164:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08008168 <__adddf3>:
 8008168:	b530      	push	{r4, r5, lr}
 800816a:	ea4f 0441 	mov.w	r4, r1, lsl #1
 800816e:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8008172:	ea94 0f05 	teq	r4, r5
 8008176:	bf08      	it	eq
 8008178:	ea90 0f02 	teqeq	r0, r2
 800817c:	bf1f      	itttt	ne
 800817e:	ea54 0c00 	orrsne.w	ip, r4, r0
 8008182:	ea55 0c02 	orrsne.w	ip, r5, r2
 8008186:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 800818a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800818e:	f000 80e2 	beq.w	8008356 <__adddf3+0x1ee>
 8008192:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8008196:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 800819a:	bfb8      	it	lt
 800819c:	426d      	neglt	r5, r5
 800819e:	dd0c      	ble.n	80081ba <__adddf3+0x52>
 80081a0:	442c      	add	r4, r5
 80081a2:	ea80 0202 	eor.w	r2, r0, r2
 80081a6:	ea81 0303 	eor.w	r3, r1, r3
 80081aa:	ea82 0000 	eor.w	r0, r2, r0
 80081ae:	ea83 0101 	eor.w	r1, r3, r1
 80081b2:	ea80 0202 	eor.w	r2, r0, r2
 80081b6:	ea81 0303 	eor.w	r3, r1, r3
 80081ba:	2d36      	cmp	r5, #54	; 0x36
 80081bc:	bf88      	it	hi
 80081be:	bd30      	pophi	{r4, r5, pc}
 80081c0:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80081c4:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80081c8:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 80081cc:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 80081d0:	d002      	beq.n	80081d8 <__adddf3+0x70>
 80081d2:	4240      	negs	r0, r0
 80081d4:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80081d8:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 80081dc:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80081e0:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 80081e4:	d002      	beq.n	80081ec <__adddf3+0x84>
 80081e6:	4252      	negs	r2, r2
 80081e8:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 80081ec:	ea94 0f05 	teq	r4, r5
 80081f0:	f000 80a7 	beq.w	8008342 <__adddf3+0x1da>
 80081f4:	f1a4 0401 	sub.w	r4, r4, #1
 80081f8:	f1d5 0e20 	rsbs	lr, r5, #32
 80081fc:	db0d      	blt.n	800821a <__adddf3+0xb2>
 80081fe:	fa02 fc0e 	lsl.w	ip, r2, lr
 8008202:	fa22 f205 	lsr.w	r2, r2, r5
 8008206:	1880      	adds	r0, r0, r2
 8008208:	f141 0100 	adc.w	r1, r1, #0
 800820c:	fa03 f20e 	lsl.w	r2, r3, lr
 8008210:	1880      	adds	r0, r0, r2
 8008212:	fa43 f305 	asr.w	r3, r3, r5
 8008216:	4159      	adcs	r1, r3
 8008218:	e00e      	b.n	8008238 <__adddf3+0xd0>
 800821a:	f1a5 0520 	sub.w	r5, r5, #32
 800821e:	f10e 0e20 	add.w	lr, lr, #32
 8008222:	2a01      	cmp	r2, #1
 8008224:	fa03 fc0e 	lsl.w	ip, r3, lr
 8008228:	bf28      	it	cs
 800822a:	f04c 0c02 	orrcs.w	ip, ip, #2
 800822e:	fa43 f305 	asr.w	r3, r3, r5
 8008232:	18c0      	adds	r0, r0, r3
 8008234:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8008238:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 800823c:	d507      	bpl.n	800824e <__adddf3+0xe6>
 800823e:	f04f 0e00 	mov.w	lr, #0
 8008242:	f1dc 0c00 	rsbs	ip, ip, #0
 8008246:	eb7e 0000 	sbcs.w	r0, lr, r0
 800824a:	eb6e 0101 	sbc.w	r1, lr, r1
 800824e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8008252:	d31b      	bcc.n	800828c <__adddf3+0x124>
 8008254:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8008258:	d30c      	bcc.n	8008274 <__adddf3+0x10c>
 800825a:	0849      	lsrs	r1, r1, #1
 800825c:	ea5f 0030 	movs.w	r0, r0, rrx
 8008260:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8008264:	f104 0401 	add.w	r4, r4, #1
 8008268:	ea4f 5244 	mov.w	r2, r4, lsl #21
 800826c:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8008270:	f080 809a 	bcs.w	80083a8 <__adddf3+0x240>
 8008274:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8008278:	bf08      	it	eq
 800827a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800827e:	f150 0000 	adcs.w	r0, r0, #0
 8008282:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8008286:	ea41 0105 	orr.w	r1, r1, r5
 800828a:	bd30      	pop	{r4, r5, pc}
 800828c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8008290:	4140      	adcs	r0, r0
 8008292:	eb41 0101 	adc.w	r1, r1, r1
 8008296:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800829a:	f1a4 0401 	sub.w	r4, r4, #1
 800829e:	d1e9      	bne.n	8008274 <__adddf3+0x10c>
 80082a0:	f091 0f00 	teq	r1, #0
 80082a4:	bf04      	itt	eq
 80082a6:	4601      	moveq	r1, r0
 80082a8:	2000      	moveq	r0, #0
 80082aa:	fab1 f381 	clz	r3, r1
 80082ae:	bf08      	it	eq
 80082b0:	3320      	addeq	r3, #32
 80082b2:	f1a3 030b 	sub.w	r3, r3, #11
 80082b6:	f1b3 0220 	subs.w	r2, r3, #32
 80082ba:	da0c      	bge.n	80082d6 <__adddf3+0x16e>
 80082bc:	320c      	adds	r2, #12
 80082be:	dd08      	ble.n	80082d2 <__adddf3+0x16a>
 80082c0:	f102 0c14 	add.w	ip, r2, #20
 80082c4:	f1c2 020c 	rsb	r2, r2, #12
 80082c8:	fa01 f00c 	lsl.w	r0, r1, ip
 80082cc:	fa21 f102 	lsr.w	r1, r1, r2
 80082d0:	e00c      	b.n	80082ec <__adddf3+0x184>
 80082d2:	f102 0214 	add.w	r2, r2, #20
 80082d6:	bfd8      	it	le
 80082d8:	f1c2 0c20 	rsble	ip, r2, #32
 80082dc:	fa01 f102 	lsl.w	r1, r1, r2
 80082e0:	fa20 fc0c 	lsr.w	ip, r0, ip
 80082e4:	bfdc      	itt	le
 80082e6:	ea41 010c 	orrle.w	r1, r1, ip
 80082ea:	4090      	lslle	r0, r2
 80082ec:	1ae4      	subs	r4, r4, r3
 80082ee:	bfa2      	ittt	ge
 80082f0:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 80082f4:	4329      	orrge	r1, r5
 80082f6:	bd30      	popge	{r4, r5, pc}
 80082f8:	ea6f 0404 	mvn.w	r4, r4
 80082fc:	3c1f      	subs	r4, #31
 80082fe:	da1c      	bge.n	800833a <__adddf3+0x1d2>
 8008300:	340c      	adds	r4, #12
 8008302:	dc0e      	bgt.n	8008322 <__adddf3+0x1ba>
 8008304:	f104 0414 	add.w	r4, r4, #20
 8008308:	f1c4 0220 	rsb	r2, r4, #32
 800830c:	fa20 f004 	lsr.w	r0, r0, r4
 8008310:	fa01 f302 	lsl.w	r3, r1, r2
 8008314:	ea40 0003 	orr.w	r0, r0, r3
 8008318:	fa21 f304 	lsr.w	r3, r1, r4
 800831c:	ea45 0103 	orr.w	r1, r5, r3
 8008320:	bd30      	pop	{r4, r5, pc}
 8008322:	f1c4 040c 	rsb	r4, r4, #12
 8008326:	f1c4 0220 	rsb	r2, r4, #32
 800832a:	fa20 f002 	lsr.w	r0, r0, r2
 800832e:	fa01 f304 	lsl.w	r3, r1, r4
 8008332:	ea40 0003 	orr.w	r0, r0, r3
 8008336:	4629      	mov	r1, r5
 8008338:	bd30      	pop	{r4, r5, pc}
 800833a:	fa21 f004 	lsr.w	r0, r1, r4
 800833e:	4629      	mov	r1, r5
 8008340:	bd30      	pop	{r4, r5, pc}
 8008342:	f094 0f00 	teq	r4, #0
 8008346:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 800834a:	bf06      	itte	eq
 800834c:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8008350:	3401      	addeq	r4, #1
 8008352:	3d01      	subne	r5, #1
 8008354:	e74e      	b.n	80081f4 <__adddf3+0x8c>
 8008356:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800835a:	bf18      	it	ne
 800835c:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8008360:	d029      	beq.n	80083b6 <__adddf3+0x24e>
 8008362:	ea94 0f05 	teq	r4, r5
 8008366:	bf08      	it	eq
 8008368:	ea90 0f02 	teqeq	r0, r2
 800836c:	d005      	beq.n	800837a <__adddf3+0x212>
 800836e:	ea54 0c00 	orrs.w	ip, r4, r0
 8008372:	bf04      	itt	eq
 8008374:	4619      	moveq	r1, r3
 8008376:	4610      	moveq	r0, r2
 8008378:	bd30      	pop	{r4, r5, pc}
 800837a:	ea91 0f03 	teq	r1, r3
 800837e:	bf1e      	ittt	ne
 8008380:	2100      	movne	r1, #0
 8008382:	2000      	movne	r0, #0
 8008384:	bd30      	popne	{r4, r5, pc}
 8008386:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 800838a:	d105      	bne.n	8008398 <__adddf3+0x230>
 800838c:	0040      	lsls	r0, r0, #1
 800838e:	4149      	adcs	r1, r1
 8008390:	bf28      	it	cs
 8008392:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8008396:	bd30      	pop	{r4, r5, pc}
 8008398:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 800839c:	bf3c      	itt	cc
 800839e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 80083a2:	bd30      	popcc	{r4, r5, pc}
 80083a4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80083a8:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 80083ac:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80083b0:	f04f 0000 	mov.w	r0, #0
 80083b4:	bd30      	pop	{r4, r5, pc}
 80083b6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80083ba:	bf1a      	itte	ne
 80083bc:	4619      	movne	r1, r3
 80083be:	4610      	movne	r0, r2
 80083c0:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 80083c4:	bf1c      	itt	ne
 80083c6:	460b      	movne	r3, r1
 80083c8:	4602      	movne	r2, r0
 80083ca:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80083ce:	bf06      	itte	eq
 80083d0:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 80083d4:	ea91 0f03 	teqeq	r1, r3
 80083d8:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 80083dc:	bd30      	pop	{r4, r5, pc}
 80083de:	bf00      	nop

080083e0 <__aeabi_ui2d>:
 80083e0:	f090 0f00 	teq	r0, #0
 80083e4:	bf04      	itt	eq
 80083e6:	2100      	moveq	r1, #0
 80083e8:	4770      	bxeq	lr
 80083ea:	b530      	push	{r4, r5, lr}
 80083ec:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80083f0:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80083f4:	f04f 0500 	mov.w	r5, #0
 80083f8:	f04f 0100 	mov.w	r1, #0
 80083fc:	e750      	b.n	80082a0 <__adddf3+0x138>
 80083fe:	bf00      	nop

08008400 <__aeabi_i2d>:
 8008400:	f090 0f00 	teq	r0, #0
 8008404:	bf04      	itt	eq
 8008406:	2100      	moveq	r1, #0
 8008408:	4770      	bxeq	lr
 800840a:	b530      	push	{r4, r5, lr}
 800840c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8008410:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8008414:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8008418:	bf48      	it	mi
 800841a:	4240      	negmi	r0, r0
 800841c:	f04f 0100 	mov.w	r1, #0
 8008420:	e73e      	b.n	80082a0 <__adddf3+0x138>
 8008422:	bf00      	nop

08008424 <__aeabi_f2d>:
 8008424:	0042      	lsls	r2, r0, #1
 8008426:	ea4f 01e2 	mov.w	r1, r2, asr #3
 800842a:	ea4f 0131 	mov.w	r1, r1, rrx
 800842e:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8008432:	bf1f      	itttt	ne
 8008434:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8008438:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 800843c:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8008440:	4770      	bxne	lr
 8008442:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8008446:	bf08      	it	eq
 8008448:	4770      	bxeq	lr
 800844a:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 800844e:	bf04      	itt	eq
 8008450:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8008454:	4770      	bxeq	lr
 8008456:	b530      	push	{r4, r5, lr}
 8008458:	f44f 7460 	mov.w	r4, #896	; 0x380
 800845c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8008460:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8008464:	e71c      	b.n	80082a0 <__adddf3+0x138>
 8008466:	bf00      	nop

08008468 <__aeabi_ul2d>:
 8008468:	ea50 0201 	orrs.w	r2, r0, r1
 800846c:	bf08      	it	eq
 800846e:	4770      	bxeq	lr
 8008470:	b530      	push	{r4, r5, lr}
 8008472:	f04f 0500 	mov.w	r5, #0
 8008476:	e00a      	b.n	800848e <__aeabi_l2d+0x16>

08008478 <__aeabi_l2d>:
 8008478:	ea50 0201 	orrs.w	r2, r0, r1
 800847c:	bf08      	it	eq
 800847e:	4770      	bxeq	lr
 8008480:	b530      	push	{r4, r5, lr}
 8008482:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8008486:	d502      	bpl.n	800848e <__aeabi_l2d+0x16>
 8008488:	4240      	negs	r0, r0
 800848a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800848e:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8008492:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8008496:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800849a:	f43f aed8 	beq.w	800824e <__adddf3+0xe6>
 800849e:	f04f 0203 	mov.w	r2, #3
 80084a2:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80084a6:	bf18      	it	ne
 80084a8:	3203      	addne	r2, #3
 80084aa:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80084ae:	bf18      	it	ne
 80084b0:	3203      	addne	r2, #3
 80084b2:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 80084b6:	f1c2 0320 	rsb	r3, r2, #32
 80084ba:	fa00 fc03 	lsl.w	ip, r0, r3
 80084be:	fa20 f002 	lsr.w	r0, r0, r2
 80084c2:	fa01 fe03 	lsl.w	lr, r1, r3
 80084c6:	ea40 000e 	orr.w	r0, r0, lr
 80084ca:	fa21 f102 	lsr.w	r1, r1, r2
 80084ce:	4414      	add	r4, r2
 80084d0:	e6bd      	b.n	800824e <__adddf3+0xe6>
 80084d2:	bf00      	nop

080084d4 <__aeabi_dmul>:
 80084d4:	b570      	push	{r4, r5, r6, lr}
 80084d6:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80084da:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80084de:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80084e2:	bf1d      	ittte	ne
 80084e4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80084e8:	ea94 0f0c 	teqne	r4, ip
 80084ec:	ea95 0f0c 	teqne	r5, ip
 80084f0:	f000 f8de 	bleq	80086b0 <__aeabi_dmul+0x1dc>
 80084f4:	442c      	add	r4, r5
 80084f6:	ea81 0603 	eor.w	r6, r1, r3
 80084fa:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80084fe:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8008502:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8008506:	bf18      	it	ne
 8008508:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 800850c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8008510:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8008514:	d038      	beq.n	8008588 <__aeabi_dmul+0xb4>
 8008516:	fba0 ce02 	umull	ip, lr, r0, r2
 800851a:	f04f 0500 	mov.w	r5, #0
 800851e:	fbe1 e502 	umlal	lr, r5, r1, r2
 8008522:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8008526:	fbe0 e503 	umlal	lr, r5, r0, r3
 800852a:	f04f 0600 	mov.w	r6, #0
 800852e:	fbe1 5603 	umlal	r5, r6, r1, r3
 8008532:	f09c 0f00 	teq	ip, #0
 8008536:	bf18      	it	ne
 8008538:	f04e 0e01 	orrne.w	lr, lr, #1
 800853c:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8008540:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8008544:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8008548:	d204      	bcs.n	8008554 <__aeabi_dmul+0x80>
 800854a:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 800854e:	416d      	adcs	r5, r5
 8008550:	eb46 0606 	adc.w	r6, r6, r6
 8008554:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8008558:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 800855c:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8008560:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8008564:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8008568:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 800856c:	bf88      	it	hi
 800856e:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8008572:	d81e      	bhi.n	80085b2 <__aeabi_dmul+0xde>
 8008574:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8008578:	bf08      	it	eq
 800857a:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 800857e:	f150 0000 	adcs.w	r0, r0, #0
 8008582:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8008586:	bd70      	pop	{r4, r5, r6, pc}
 8008588:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 800858c:	ea46 0101 	orr.w	r1, r6, r1
 8008590:	ea40 0002 	orr.w	r0, r0, r2
 8008594:	ea81 0103 	eor.w	r1, r1, r3
 8008598:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 800859c:	bfc2      	ittt	gt
 800859e:	ebd4 050c 	rsbsgt	r5, r4, ip
 80085a2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 80085a6:	bd70      	popgt	{r4, r5, r6, pc}
 80085a8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80085ac:	f04f 0e00 	mov.w	lr, #0
 80085b0:	3c01      	subs	r4, #1
 80085b2:	f300 80ab 	bgt.w	800870c <__aeabi_dmul+0x238>
 80085b6:	f114 0f36 	cmn.w	r4, #54	; 0x36
 80085ba:	bfde      	ittt	le
 80085bc:	2000      	movle	r0, #0
 80085be:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 80085c2:	bd70      	pople	{r4, r5, r6, pc}
 80085c4:	f1c4 0400 	rsb	r4, r4, #0
 80085c8:	3c20      	subs	r4, #32
 80085ca:	da35      	bge.n	8008638 <__aeabi_dmul+0x164>
 80085cc:	340c      	adds	r4, #12
 80085ce:	dc1b      	bgt.n	8008608 <__aeabi_dmul+0x134>
 80085d0:	f104 0414 	add.w	r4, r4, #20
 80085d4:	f1c4 0520 	rsb	r5, r4, #32
 80085d8:	fa00 f305 	lsl.w	r3, r0, r5
 80085dc:	fa20 f004 	lsr.w	r0, r0, r4
 80085e0:	fa01 f205 	lsl.w	r2, r1, r5
 80085e4:	ea40 0002 	orr.w	r0, r0, r2
 80085e8:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 80085ec:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80085f0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80085f4:	fa21 f604 	lsr.w	r6, r1, r4
 80085f8:	eb42 0106 	adc.w	r1, r2, r6
 80085fc:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8008600:	bf08      	it	eq
 8008602:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8008606:	bd70      	pop	{r4, r5, r6, pc}
 8008608:	f1c4 040c 	rsb	r4, r4, #12
 800860c:	f1c4 0520 	rsb	r5, r4, #32
 8008610:	fa00 f304 	lsl.w	r3, r0, r4
 8008614:	fa20 f005 	lsr.w	r0, r0, r5
 8008618:	fa01 f204 	lsl.w	r2, r1, r4
 800861c:	ea40 0002 	orr.w	r0, r0, r2
 8008620:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008624:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8008628:	f141 0100 	adc.w	r1, r1, #0
 800862c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8008630:	bf08      	it	eq
 8008632:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8008636:	bd70      	pop	{r4, r5, r6, pc}
 8008638:	f1c4 0520 	rsb	r5, r4, #32
 800863c:	fa00 f205 	lsl.w	r2, r0, r5
 8008640:	ea4e 0e02 	orr.w	lr, lr, r2
 8008644:	fa20 f304 	lsr.w	r3, r0, r4
 8008648:	fa01 f205 	lsl.w	r2, r1, r5
 800864c:	ea43 0302 	orr.w	r3, r3, r2
 8008650:	fa21 f004 	lsr.w	r0, r1, r4
 8008654:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008658:	fa21 f204 	lsr.w	r2, r1, r4
 800865c:	ea20 0002 	bic.w	r0, r0, r2
 8008660:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8008664:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8008668:	bf08      	it	eq
 800866a:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 800866e:	bd70      	pop	{r4, r5, r6, pc}
 8008670:	f094 0f00 	teq	r4, #0
 8008674:	d10f      	bne.n	8008696 <__aeabi_dmul+0x1c2>
 8008676:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 800867a:	0040      	lsls	r0, r0, #1
 800867c:	eb41 0101 	adc.w	r1, r1, r1
 8008680:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8008684:	bf08      	it	eq
 8008686:	3c01      	subeq	r4, #1
 8008688:	d0f7      	beq.n	800867a <__aeabi_dmul+0x1a6>
 800868a:	ea41 0106 	orr.w	r1, r1, r6
 800868e:	f095 0f00 	teq	r5, #0
 8008692:	bf18      	it	ne
 8008694:	4770      	bxne	lr
 8008696:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 800869a:	0052      	lsls	r2, r2, #1
 800869c:	eb43 0303 	adc.w	r3, r3, r3
 80086a0:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 80086a4:	bf08      	it	eq
 80086a6:	3d01      	subeq	r5, #1
 80086a8:	d0f7      	beq.n	800869a <__aeabi_dmul+0x1c6>
 80086aa:	ea43 0306 	orr.w	r3, r3, r6
 80086ae:	4770      	bx	lr
 80086b0:	ea94 0f0c 	teq	r4, ip
 80086b4:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 80086b8:	bf18      	it	ne
 80086ba:	ea95 0f0c 	teqne	r5, ip
 80086be:	d00c      	beq.n	80086da <__aeabi_dmul+0x206>
 80086c0:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 80086c4:	bf18      	it	ne
 80086c6:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80086ca:	d1d1      	bne.n	8008670 <__aeabi_dmul+0x19c>
 80086cc:	ea81 0103 	eor.w	r1, r1, r3
 80086d0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80086d4:	f04f 0000 	mov.w	r0, #0
 80086d8:	bd70      	pop	{r4, r5, r6, pc}
 80086da:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 80086de:	bf06      	itte	eq
 80086e0:	4610      	moveq	r0, r2
 80086e2:	4619      	moveq	r1, r3
 80086e4:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80086e8:	d019      	beq.n	800871e <__aeabi_dmul+0x24a>
 80086ea:	ea94 0f0c 	teq	r4, ip
 80086ee:	d102      	bne.n	80086f6 <__aeabi_dmul+0x222>
 80086f0:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 80086f4:	d113      	bne.n	800871e <__aeabi_dmul+0x24a>
 80086f6:	ea95 0f0c 	teq	r5, ip
 80086fa:	d105      	bne.n	8008708 <__aeabi_dmul+0x234>
 80086fc:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8008700:	bf1c      	itt	ne
 8008702:	4610      	movne	r0, r2
 8008704:	4619      	movne	r1, r3
 8008706:	d10a      	bne.n	800871e <__aeabi_dmul+0x24a>
 8008708:	ea81 0103 	eor.w	r1, r1, r3
 800870c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008710:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8008714:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8008718:	f04f 0000 	mov.w	r0, #0
 800871c:	bd70      	pop	{r4, r5, r6, pc}
 800871e:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8008722:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8008726:	bd70      	pop	{r4, r5, r6, pc}

08008728 <__aeabi_ddiv>:
 8008728:	b570      	push	{r4, r5, r6, lr}
 800872a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800872e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8008732:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8008736:	bf1d      	ittte	ne
 8008738:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 800873c:	ea94 0f0c 	teqne	r4, ip
 8008740:	ea95 0f0c 	teqne	r5, ip
 8008744:	f000 f8a7 	bleq	8008896 <__aeabi_ddiv+0x16e>
 8008748:	eba4 0405 	sub.w	r4, r4, r5
 800874c:	ea81 0e03 	eor.w	lr, r1, r3
 8008750:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8008754:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8008758:	f000 8088 	beq.w	800886c <__aeabi_ddiv+0x144>
 800875c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8008760:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8008764:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8008768:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 800876c:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8008770:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8008774:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8008778:	ea4f 2600 	mov.w	r6, r0, lsl #8
 800877c:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8008780:	429d      	cmp	r5, r3
 8008782:	bf08      	it	eq
 8008784:	4296      	cmpeq	r6, r2
 8008786:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 800878a:	f504 7440 	add.w	r4, r4, #768	; 0x300
 800878e:	d202      	bcs.n	8008796 <__aeabi_ddiv+0x6e>
 8008790:	085b      	lsrs	r3, r3, #1
 8008792:	ea4f 0232 	mov.w	r2, r2, rrx
 8008796:	1ab6      	subs	r6, r6, r2
 8008798:	eb65 0503 	sbc.w	r5, r5, r3
 800879c:	085b      	lsrs	r3, r3, #1
 800879e:	ea4f 0232 	mov.w	r2, r2, rrx
 80087a2:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 80087a6:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 80087aa:	ebb6 0e02 	subs.w	lr, r6, r2
 80087ae:	eb75 0e03 	sbcs.w	lr, r5, r3
 80087b2:	bf22      	ittt	cs
 80087b4:	1ab6      	subcs	r6, r6, r2
 80087b6:	4675      	movcs	r5, lr
 80087b8:	ea40 000c 	orrcs.w	r0, r0, ip
 80087bc:	085b      	lsrs	r3, r3, #1
 80087be:	ea4f 0232 	mov.w	r2, r2, rrx
 80087c2:	ebb6 0e02 	subs.w	lr, r6, r2
 80087c6:	eb75 0e03 	sbcs.w	lr, r5, r3
 80087ca:	bf22      	ittt	cs
 80087cc:	1ab6      	subcs	r6, r6, r2
 80087ce:	4675      	movcs	r5, lr
 80087d0:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 80087d4:	085b      	lsrs	r3, r3, #1
 80087d6:	ea4f 0232 	mov.w	r2, r2, rrx
 80087da:	ebb6 0e02 	subs.w	lr, r6, r2
 80087de:	eb75 0e03 	sbcs.w	lr, r5, r3
 80087e2:	bf22      	ittt	cs
 80087e4:	1ab6      	subcs	r6, r6, r2
 80087e6:	4675      	movcs	r5, lr
 80087e8:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 80087ec:	085b      	lsrs	r3, r3, #1
 80087ee:	ea4f 0232 	mov.w	r2, r2, rrx
 80087f2:	ebb6 0e02 	subs.w	lr, r6, r2
 80087f6:	eb75 0e03 	sbcs.w	lr, r5, r3
 80087fa:	bf22      	ittt	cs
 80087fc:	1ab6      	subcs	r6, r6, r2
 80087fe:	4675      	movcs	r5, lr
 8008800:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8008804:	ea55 0e06 	orrs.w	lr, r5, r6
 8008808:	d018      	beq.n	800883c <__aeabi_ddiv+0x114>
 800880a:	ea4f 1505 	mov.w	r5, r5, lsl #4
 800880e:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8008812:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8008816:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 800881a:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 800881e:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8008822:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8008826:	d1c0      	bne.n	80087aa <__aeabi_ddiv+0x82>
 8008828:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800882c:	d10b      	bne.n	8008846 <__aeabi_ddiv+0x11e>
 800882e:	ea41 0100 	orr.w	r1, r1, r0
 8008832:	f04f 0000 	mov.w	r0, #0
 8008836:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 800883a:	e7b6      	b.n	80087aa <__aeabi_ddiv+0x82>
 800883c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8008840:	bf04      	itt	eq
 8008842:	4301      	orreq	r1, r0
 8008844:	2000      	moveq	r0, #0
 8008846:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 800884a:	bf88      	it	hi
 800884c:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8008850:	f63f aeaf 	bhi.w	80085b2 <__aeabi_dmul+0xde>
 8008854:	ebb5 0c03 	subs.w	ip, r5, r3
 8008858:	bf04      	itt	eq
 800885a:	ebb6 0c02 	subseq.w	ip, r6, r2
 800885e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8008862:	f150 0000 	adcs.w	r0, r0, #0
 8008866:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800886a:	bd70      	pop	{r4, r5, r6, pc}
 800886c:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8008870:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8008874:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8008878:	bfc2      	ittt	gt
 800887a:	ebd4 050c 	rsbsgt	r5, r4, ip
 800887e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8008882:	bd70      	popgt	{r4, r5, r6, pc}
 8008884:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8008888:	f04f 0e00 	mov.w	lr, #0
 800888c:	3c01      	subs	r4, #1
 800888e:	e690      	b.n	80085b2 <__aeabi_dmul+0xde>
 8008890:	ea45 0e06 	orr.w	lr, r5, r6
 8008894:	e68d      	b.n	80085b2 <__aeabi_dmul+0xde>
 8008896:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800889a:	ea94 0f0c 	teq	r4, ip
 800889e:	bf08      	it	eq
 80088a0:	ea95 0f0c 	teqeq	r5, ip
 80088a4:	f43f af3b 	beq.w	800871e <__aeabi_dmul+0x24a>
 80088a8:	ea94 0f0c 	teq	r4, ip
 80088ac:	d10a      	bne.n	80088c4 <__aeabi_ddiv+0x19c>
 80088ae:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80088b2:	f47f af34 	bne.w	800871e <__aeabi_dmul+0x24a>
 80088b6:	ea95 0f0c 	teq	r5, ip
 80088ba:	f47f af25 	bne.w	8008708 <__aeabi_dmul+0x234>
 80088be:	4610      	mov	r0, r2
 80088c0:	4619      	mov	r1, r3
 80088c2:	e72c      	b.n	800871e <__aeabi_dmul+0x24a>
 80088c4:	ea95 0f0c 	teq	r5, ip
 80088c8:	d106      	bne.n	80088d8 <__aeabi_ddiv+0x1b0>
 80088ca:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 80088ce:	f43f aefd 	beq.w	80086cc <__aeabi_dmul+0x1f8>
 80088d2:	4610      	mov	r0, r2
 80088d4:	4619      	mov	r1, r3
 80088d6:	e722      	b.n	800871e <__aeabi_dmul+0x24a>
 80088d8:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 80088dc:	bf18      	it	ne
 80088de:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80088e2:	f47f aec5 	bne.w	8008670 <__aeabi_dmul+0x19c>
 80088e6:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 80088ea:	f47f af0d 	bne.w	8008708 <__aeabi_dmul+0x234>
 80088ee:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 80088f2:	f47f aeeb 	bne.w	80086cc <__aeabi_dmul+0x1f8>
 80088f6:	e712      	b.n	800871e <__aeabi_dmul+0x24a>

080088f8 <__gedf2>:
 80088f8:	f04f 3cff 	mov.w	ip, #4294967295
 80088fc:	e006      	b.n	800890c <__cmpdf2+0x4>
 80088fe:	bf00      	nop

08008900 <__ledf2>:
 8008900:	f04f 0c01 	mov.w	ip, #1
 8008904:	e002      	b.n	800890c <__cmpdf2+0x4>
 8008906:	bf00      	nop

08008908 <__cmpdf2>:
 8008908:	f04f 0c01 	mov.w	ip, #1
 800890c:	f84d cd04 	str.w	ip, [sp, #-4]!
 8008910:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8008914:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008918:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800891c:	bf18      	it	ne
 800891e:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8008922:	d01b      	beq.n	800895c <__cmpdf2+0x54>
 8008924:	b001      	add	sp, #4
 8008926:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 800892a:	bf0c      	ite	eq
 800892c:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8008930:	ea91 0f03 	teqne	r1, r3
 8008934:	bf02      	ittt	eq
 8008936:	ea90 0f02 	teqeq	r0, r2
 800893a:	2000      	moveq	r0, #0
 800893c:	4770      	bxeq	lr
 800893e:	f110 0f00 	cmn.w	r0, #0
 8008942:	ea91 0f03 	teq	r1, r3
 8008946:	bf58      	it	pl
 8008948:	4299      	cmppl	r1, r3
 800894a:	bf08      	it	eq
 800894c:	4290      	cmpeq	r0, r2
 800894e:	bf2c      	ite	cs
 8008950:	17d8      	asrcs	r0, r3, #31
 8008952:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8008956:	f040 0001 	orr.w	r0, r0, #1
 800895a:	4770      	bx	lr
 800895c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8008960:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008964:	d102      	bne.n	800896c <__cmpdf2+0x64>
 8008966:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800896a:	d107      	bne.n	800897c <__cmpdf2+0x74>
 800896c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8008970:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008974:	d1d6      	bne.n	8008924 <__cmpdf2+0x1c>
 8008976:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800897a:	d0d3      	beq.n	8008924 <__cmpdf2+0x1c>
 800897c:	f85d 0b04 	ldr.w	r0, [sp], #4
 8008980:	4770      	bx	lr
 8008982:	bf00      	nop

08008984 <__aeabi_cdrcmple>:
 8008984:	4684      	mov	ip, r0
 8008986:	4610      	mov	r0, r2
 8008988:	4662      	mov	r2, ip
 800898a:	468c      	mov	ip, r1
 800898c:	4619      	mov	r1, r3
 800898e:	4663      	mov	r3, ip
 8008990:	e000      	b.n	8008994 <__aeabi_cdcmpeq>
 8008992:	bf00      	nop

08008994 <__aeabi_cdcmpeq>:
 8008994:	b501      	push	{r0, lr}
 8008996:	f7ff ffb7 	bl	8008908 <__cmpdf2>
 800899a:	2800      	cmp	r0, #0
 800899c:	bf48      	it	mi
 800899e:	f110 0f00 	cmnmi.w	r0, #0
 80089a2:	bd01      	pop	{r0, pc}

080089a4 <__aeabi_dcmpeq>:
 80089a4:	f84d ed08 	str.w	lr, [sp, #-8]!
 80089a8:	f7ff fff4 	bl	8008994 <__aeabi_cdcmpeq>
 80089ac:	bf0c      	ite	eq
 80089ae:	2001      	moveq	r0, #1
 80089b0:	2000      	movne	r0, #0
 80089b2:	f85d fb08 	ldr.w	pc, [sp], #8
 80089b6:	bf00      	nop

080089b8 <__aeabi_dcmplt>:
 80089b8:	f84d ed08 	str.w	lr, [sp, #-8]!
 80089bc:	f7ff ffea 	bl	8008994 <__aeabi_cdcmpeq>
 80089c0:	bf34      	ite	cc
 80089c2:	2001      	movcc	r0, #1
 80089c4:	2000      	movcs	r0, #0
 80089c6:	f85d fb08 	ldr.w	pc, [sp], #8
 80089ca:	bf00      	nop

080089cc <__aeabi_dcmple>:
 80089cc:	f84d ed08 	str.w	lr, [sp, #-8]!
 80089d0:	f7ff ffe0 	bl	8008994 <__aeabi_cdcmpeq>
 80089d4:	bf94      	ite	ls
 80089d6:	2001      	movls	r0, #1
 80089d8:	2000      	movhi	r0, #0
 80089da:	f85d fb08 	ldr.w	pc, [sp], #8
 80089de:	bf00      	nop

080089e0 <__aeabi_dcmpge>:
 80089e0:	f84d ed08 	str.w	lr, [sp, #-8]!
 80089e4:	f7ff ffce 	bl	8008984 <__aeabi_cdrcmple>
 80089e8:	bf94      	ite	ls
 80089ea:	2001      	movls	r0, #1
 80089ec:	2000      	movhi	r0, #0
 80089ee:	f85d fb08 	ldr.w	pc, [sp], #8
 80089f2:	bf00      	nop

080089f4 <__aeabi_dcmpgt>:
 80089f4:	f84d ed08 	str.w	lr, [sp, #-8]!
 80089f8:	f7ff ffc4 	bl	8008984 <__aeabi_cdrcmple>
 80089fc:	bf34      	ite	cc
 80089fe:	2001      	movcc	r0, #1
 8008a00:	2000      	movcs	r0, #0
 8008a02:	f85d fb08 	ldr.w	pc, [sp], #8
 8008a06:	bf00      	nop

08008a08 <__aeabi_dcmpun>:
 8008a08:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8008a0c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008a10:	d102      	bne.n	8008a18 <__aeabi_dcmpun+0x10>
 8008a12:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8008a16:	d10a      	bne.n	8008a2e <__aeabi_dcmpun+0x26>
 8008a18:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8008a1c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008a20:	d102      	bne.n	8008a28 <__aeabi_dcmpun+0x20>
 8008a22:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8008a26:	d102      	bne.n	8008a2e <__aeabi_dcmpun+0x26>
 8008a28:	f04f 0000 	mov.w	r0, #0
 8008a2c:	4770      	bx	lr
 8008a2e:	f04f 0001 	mov.w	r0, #1
 8008a32:	4770      	bx	lr

08008a34 <__aeabi_d2iz>:
 8008a34:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8008a38:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8008a3c:	d215      	bcs.n	8008a6a <__aeabi_d2iz+0x36>
 8008a3e:	d511      	bpl.n	8008a64 <__aeabi_d2iz+0x30>
 8008a40:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8008a44:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8008a48:	d912      	bls.n	8008a70 <__aeabi_d2iz+0x3c>
 8008a4a:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8008a4e:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8008a52:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8008a56:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8008a5a:	fa23 f002 	lsr.w	r0, r3, r2
 8008a5e:	bf18      	it	ne
 8008a60:	4240      	negne	r0, r0
 8008a62:	4770      	bx	lr
 8008a64:	f04f 0000 	mov.w	r0, #0
 8008a68:	4770      	bx	lr
 8008a6a:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8008a6e:	d105      	bne.n	8008a7c <__aeabi_d2iz+0x48>
 8008a70:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8008a74:	bf08      	it	eq
 8008a76:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8008a7a:	4770      	bx	lr
 8008a7c:	f04f 0000 	mov.w	r0, #0
 8008a80:	4770      	bx	lr
 8008a82:	bf00      	nop

08008a84 <_init>:
 8008a84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008a86:	bf00      	nop
 8008a88:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008a8a:	bc08      	pop	{r3}
 8008a8c:	469e      	mov	lr, r3
 8008a8e:	4770      	bx	lr

08008a90 <_fini>:
 8008a90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008a92:	bf00      	nop
 8008a94:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008a96:	bc08      	pop	{r3}
 8008a98:	469e      	mov	lr, r3
 8008a9a:	4770      	bx	lr
 8008a9c:	5d73255b 	.word	0x5d73255b
 8008aa0:	0000000a 	.word	0x0000000a
 8008aa4:	5d73255b 	.word	0x5d73255b
 8008aa8:	20726c20 	.word	0x20726c20
 8008aac:	7830203d 	.word	0x7830203d
 8008ab0:	202c7825 	.word	0x202c7825
 8008ab4:	3d207073 	.word	0x3d207073
 8008ab8:	25783020 	.word	0x25783020
 8008abc:	000a0d78 	.word	0x000a0d78

08008ac0 <__func__.11172>:
 8008ac0:	64726148 6c756146 61485f74 656c646e     HardFault_Handle
 8008ad0:	00000072                                r...

08008ad4 <AHBPrescTable>:
	...
 8008adc:	04030201 09080706                       ........

08008ae4 <APBPrescTable>:
 8008ae4:	00000000 04030201                       ........

08008aec <flagBitshiftOffset.10106>:
 8008aec:	16100600 16100600 72646461 2578303a     ........addr:0x%
 8008afc:	61762078 3a65756c 78257830 00000a0d     x value:0x%x....
 8008b0c:	64253a7a 0000000a 5d73255b 3d3d3d20     z:%d....[%s] ===
 8008b1c:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
 8008b2c:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
 8008b3c:	00000a3d 64612020 203a7264 6c383025     =...  addr: %08l
 8008b4c:	20202078 74616420 25203a61 786c3830     x    data: %08lx
 8008b5c:	0000000a 4f525245 55203a52 6c62616e     ....ERROR: Unabl
 8008b6c:	6f742065 74656720 65687420 69616d20     e to get the mai
 8008b7c:	7473206e 206b6361 6f666e69 74616d72     n stack informat
 8008b8c:	2c6e6f69 656c7020 20657361 63656863     ion, please chec
 8008b9c:	6874206b 6f632065 6769666e 74617275     k the configurat
 8008bac:	206e6f69 7420666f 6d206568 206e6961     ion of the main 
 8008bbc:	63617473 0000006b 6d726946 65726177     stack...Firmware
 8008bcc:	6d616e20 25203a65 68202c73 77647261      name: %s, hardw
 8008bdc:	20657261 73726576 3a6e6f69 2c732520     are version: %s,
 8008bec:	666f7320 72617774 65762065 6f697372      software versio
 8008bfc:	25203a6e 00000073 65737341 6f207472     n: %s...Assert o
 8008c0c:	6874206e 64616572 00732520 65737341     n thread %s.Asse
 8008c1c:	6f207472 6e69206e 72726574 20747075     rt on interrupt 
 8008c2c:	6220726f 20657261 6174656d 6f6e286c     or bare metal(no
 8008c3c:	29534f20 766e6520 6e6f7269 746e656d      OS) environment
 8008c4c:	00000000 3d3d3d3d 6854203d 64616572     ....===== Thread
 8008c5c:	61747320 69206b63 726f666e 6974616d      stack informati
 8008c6c:	3d206e6f 3d3d3d3d 00000000 3d3d3d3d     on =====....====
 8008c7c:	4d203d3d 206e6961 63617473 6e69206b     == Main stack in
 8008c8c:	6d726f66 6f697461 3d3d206e 3d3d3d3d     formation ======
 8008c9c:	00000000 6f727245 54203a72 61657268     ....Error: Threa
 8008cac:	74732064 286b6361 78383025 61772029     d stack(%08x) wa
 8008cbc:	766f2073 6c667265 0000776f 6f727245     s overflow..Erro
 8008ccc:	4d203a72 206e6961 63617473 3025286b     r: Main stack(%0
 8008cdc:	20297838 20736177 7265766f 776f6c66     8x) was overflow
 8008cec:	00000000 776f6853 726f6d20 61632065     ....Show more ca
 8008cfc:	73206c6c 6b636174 666e6920 7962206f     ll stack info by
 8008d0c:	6e757220 6461203a 6c327264 20656e69      run: addr2line 
 8008d1c:	2520652d 20732573 2d20612d 2e252066     -e %s%s -a -f %.
 8008d2c:	0000732a 706d7544 6c616320 7473206c     *s..Dump call st
 8008d3c:	206b6361 20736168 65206e61 726f7272     ack has an error
 8008d4c:	00000000 6c756146 6e6f2074 72687420     ....Fault on thr
 8008d5c:	20646165 00007325 6c756146 6e6f2074     ead %s..Fault on
 8008d6c:	746e6920 75727265 6f207470 61622072      interrupt or ba
 8008d7c:	6d206572 6c617465 206f6e28 2029534f     re metal(no OS) 
 8008d8c:	69766e65 6d6e6f72 00746e65 3d3d3d3d     environment.====
 8008d9c:	3d3d3d3d 3d3d3d3d 3d3d3d3d 203d3d3d     =============== 
 8008dac:	69676552 72657473 6e692073 6d726f66     Registers inform
 8008dbc:	6f697461 3d3d206e 3d3d3d3d 3d3d3d3d     ation ==========
 8008dcc:	3d3d3d3d 3d3d3d3d 00003d3d 64726148     ==========..Hard
 8008ddc:	75616620 6920746c 61632073 64657375      fault is caused
 8008dec:	20796220 6c696166 76206465 6f746365      by failed vecto
 8008dfc:	65662072 00686374 6f6d654d 6d207972     r fetch.Memory m
 8008e0c:	67616e61 6e656d65 61662074 20746c75     anagement fault 
 8008e1c:	63207369 65737561 79622064 736e6920     is caused by ins
 8008e2c:	63757274 6e6f6974 63636120 20737365     truction access 
 8008e3c:	6c6f6976 6f697461 0000006e 6f6d654d     violation...Memo
 8008e4c:	6d207972 67616e61 6e656d65 61662074     ry management fa
 8008e5c:	20746c75 63207369 65737561 79622064     ult is caused by
 8008e6c:	74616420 63612061 73736563 6f697620      data access vio
 8008e7c:	6974616c 00006e6f 6f6d654d 6d207972     lation..Memory m
 8008e8c:	67616e61 6e656d65 61662074 20746c75     anagement fault 
 8008e9c:	63207369 65737561 79622064 736e7520     is caused by uns
 8008eac:	6b636174 20676e69 6f727265 00000072     tacking error...
 8008ebc:	6f6d654d 6d207972 67616e61 6e656d65     Memory managemen
 8008ecc:	61662074 20746c75 63207369 65737561     t fault is cause
 8008edc:	79622064 61747320 6e696b63 72652067     d by stacking er
 8008eec:	00726f72 6f6d654d 6d207972 67616e61     ror.Memory manag
 8008efc:	6e656d65 61662074 20746c75 63207369     ement fault is c
 8008f0c:	65737561 79622064 6f6c6620 6e697461     aused by floatin
 8008f1c:	6f702d67 20746e69 797a616c 61747320     g-point lazy sta
 8008f2c:	70206574 65736572 74617672 006e6f69     te preservation.
 8008f3c:	20737542 6c756166 73692074 75616320     Bus fault is cau
 8008f4c:	20646573 69207962 7274736e 69746375     sed by instructi
 8008f5c:	61206e6f 73656363 69762073 74616c6f     on access violat
 8008f6c:	006e6f69 20737542 6c756166 73692074     ion.Bus fault is
 8008f7c:	75616320 20646573 70207962 69636572      caused by preci
 8008f8c:	64206573 20617461 65636361 76207373     se data access v
 8008f9c:	616c6f69 6e6f6974 00000000 20737542     iolation....Bus 
 8008fac:	6c756166 73692074 75616320 20646573     fault is caused 
 8008fbc:	69207962 6572706d 65736963 74616420     by imprecise dat
 8008fcc:	63612061 73736563 6f697620 6974616c     a access violati
 8008fdc:	00006e6f 20737542 6c756166 73692074     on..Bus fault is
 8008fec:	75616320 20646573 75207962 6174736e      caused by unsta
 8008ffc:	6e696b63 72652067 00726f72 20737542     cking error.Bus 
 800900c:	6c756166 73692074 75616320 20646573     fault is caused 
 800901c:	73207962 6b636174 20676e69 6f727265     by stacking erro
 800902c:	00000072 20737542 6c756166 73692074     r...Bus fault is
 800903c:	75616320 20646573 66207962 74616f6c      caused by float
 800904c:	2d676e69 6e696f70 616c2074 7320797a     ing-point lazy s
 800905c:	65746174 65727020 76726573 6f697461     tate preservatio
 800906c:	0000006e 67617355 61662065 20746c75     n...Usage fault 
 800907c:	63207369 65737561 79622064 74746120     is caused by att
 800908c:	74706d65 6f742073 65786520 65747563     empts to execute
 800909c:	206e6120 65646e75 656e6966 6e692064      an undefined in
 80090ac:	75727473 6f697463 0000006e 67617355     struction...Usag
 80090bc:	61662065 20746c75 63207369 65737561     e fault is cause
 80090cc:	79622064 74746120 74706d65 6f742073     d by attempts to
 80090dc:	69777320 20686374 61206f74 6e69206e      switch to an in
 80090ec:	696c6176 74732064 20657461 672e6528     valid state (e.g
 80090fc:	41202c2e 00294d52 67617355 61662065     ., ARM).Usage fa
 800910c:	20746c75 63207369 65737561 79622064     ult is caused by
 800911c:	74746120 74706d65 6f742073 206f6420      attempts to do 
 800912c:	65206e61 70656378 6e6f6974 74697720     an exception wit
 800913c:	20612068 20646162 756c6176 6e692065     h a bad value in
 800914c:	65687420 43584520 5445525f 204e5255      the EXC_RETURN 
 800915c:	626d756e 00007265 67617355 61662065     number..Usage fa
 800916c:	20746c75 63207369 65737561 79622064     ult is caused by
 800917c:	74746120 74706d65 6f742073 65786520      attempts to exe
 800918c:	65747563 63206120 6f72706f 73736563     cute a coprocess
 800919c:	6920726f 7274736e 69746375 00006e6f     or instruction..
 80091ac:	67617355 61662065 20746c75 63207369     Usage fault is c
 80091bc:	65737561 79622064 646e6920 74616369     aused by indicat
 80091cc:	74207365 20746168 75206e61 696c616e     es that an unali
 80091dc:	64656e67 63636120 20737365 6c756166     gned access faul
 80091ec:	61682074 61742073 206e656b 63616c70     t has taken plac
 80091fc:	00000065 67617355 61662065 20746c75     e...Usage fault 
 800920c:	63207369 65737561 79622064 646e4920     is caused by Ind
 800921c:	74616369 61207365 76696420 20656469     icates a divide 
 800922c:	7a207962 206f7265 20736168 656b6174     by zero has take
 800923c:	6c70206e 20656361 6e616328 20656220     n place (can be 
 800924c:	20746573 796c6e6f 20666920 5f564944     set only if DIV_
 800925c:	52545f30 73692050 74657320 00000029     0_TRP is set)...
 800926c:	75626544 61662067 20746c75 63207369     Debug fault is c
 800927c:	65737561 79622064 6c616820 65722074     aused by halt re
 800928c:	73657571 20646574 4e206e69 00434956     quested in NVIC.
 800929c:	75626544 61662067 20746c75 63207369     Debug fault is c
 80092ac:	65737561 79622064 504b4220 6e692054     aused by BKPT in
 80092bc:	75727473 6f697463 7865206e 74756365     struction execut
 80092cc:	00006465 75626544 61662067 20746c75     ed..Debug fault 
 80092dc:	63207369 65737561 79622064 54574420     is caused by DWT
 80092ec:	74616d20 6f206863 72756363 00646572      match occurred.
 80092fc:	75626544 61662067 20746c75 63207369     Debug fault is c
 800930c:	65737561 79622064 63655620 20726f74     aused by Vector 
 800931c:	63746566 636f2068 72727563 00006465     fetch occurred..
 800932c:	75626544 61662067 20746c75 63207369     Debug fault is c
 800933c:	65737561 79622064 42444520 20515247     aused by EDBGRQ 
 800934c:	6e676973 61206c61 72657373 00646574     signal asserted.
 800935c:	20656854 6f6d656d 6d207972 67616e61     The memory manag
 800936c:	6e656d65 61662074 20746c75 7563636f     ement fault occu
 800937c:	64657272 64646120 73736572 20736920     rred address is 
 800938c:	78383025 00000000 20656854 20737562     %08x....The bus 
 800939c:	6c756166 636f2074 72727563 61206465     fault occurred a
 80093ac:	65726464 69207373 30252073 00007838     ddress is %08x..
 80093bc:	5d73255b 3d707320 78257830 00000a0d     [%s] sp=0x%x....
 80093cc:	303d7073 0a782578 00000000 20202020     sp=0x%x.....    
 80093dc:	20202020 6c616572 3d435020 30257830         real PC=0x%0
 80093ec:	62207838 726f206c 786c6220 2578303d     8x bl or blx=0x%
 80093fc:	20783830 31736e69 2578303d 20783430     08x ins1=0x%04x 
 800940c:	32736e69 2578303d 0a783430 00000000     ins2=0x%04x.....
 800941c:	6c383025 00000078 666c652e 00000000     %08lx....elf....
 800942c:	75622f2e 2f646c69 74736574 00000000     ./build/test....
 800943c:	00000a0d 5d73255b 0000000a 5d73255b     ....[%s]....[%s]
 800944c:	646f6320 74735f65 5f747261 72646461      code_start_addr
 800945c:	2578303d 6320786c 5f65646f 5f646e65     =0x%lx code_end_
 800946c:	72646461 2578303d 6320786c 5f65646f     addr=0x%lx code_
 800947c:	657a6973 646c253d 2578303c 0a3e786c     size=%ld<0x%lx>.
 800948c:	00000000 5d73255b 61747320 735f6b63     ....[%s] stack_s
 800949c:	74726174 6464615f 78303d72 20786c25     tart_addr=0x%lx 
 80094ac:	63617473 6e655f6b 64615f64 303d7264     stack_end_addr=0
 80094bc:	786c2578 61747320 735f6b63 3d657a69     x%lx stack_size=
 80094cc:	3c646c25 6c257830 000a3e78 5d73255b     %ld<0x%lx>..[%s]
 80094dc:	61656820 74735f70 5f747261 72646461      heap_start_addr
 80094ec:	2578303d 6820786c 5f706165 5f646e65     =0x%lx heap_end_
 80094fc:	72646461 2578303d 6820786c 5f706165     addr=0x%lx heap_
 800950c:	657a6973 646c253d 2578303c 0a3e786c     size=%ld<0x%lx>.
 800951c:	00000000 303d7073 786c2578 0000000a     ....sp=0x%lx....
 800952c:	303d6370 786c2578 0000000a 72646461     pc=0x%lx....addr
 800953c:	30253a20 000a7838 646e6966 20646c20      :%08x..find ld 
 800954c:	30257830 000a7838 63617274 63616265     0x%08x..tracebac
 800955c:	7525206b 202d2d20 3d20726c 25783020     k %u -- lr = 0x%
 800956c:	20783830 66202d2d 203d2070 30257830     08x -- fp = 0x%0
 800957c:	000a7838 63617473 696f506b 7265746e     8x..stackPointer
 800958c:	2578303d 00000a78                       =0x%x...

08009594 <__func__.7501>:
 8009594:	706d7564 6174735f 00006b63              dump_stack..

080095a0 <__func__.7562>:
 80095a0:	6b636162 63617274 61635f65 735f6c6c     backtrace_call_s
 80095b0:	6b636174 00000000                       tack....

080095b8 <__func__.7574>:
 80095b8:	6e697270 61635f74 735f6c6c 6b636174     print_call_stack
 80095c8:	00000000                                ....

080095cc <__func__.7583>:
 80095cc:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 80095dc:	00000033                                3...

080095e0 <__func__.7587>:
 80095e0:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 80095f0:	00000032                                2...

080095f4 <__func__.7591>:
 80095f4:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 8009604:	00000031                                1...

08009608 <__func__.7598>:
 8009608:	6b636162 63617274 65745f65 00007473     backtrace_test..

08009618 <_global_impure_ptr>:
 8009618:	20000018 00464e49 00666e69 004e414e     ... INF.inf.NAN.
 8009628:	006e616e 33323130 37363534 42413938     nan.0123456789AB
 8009638:	46454443 00000000 33323130 37363534     CDEF....01234567
 8009648:	62613938 66656463 00000000 6c756e28     89abcdef....(nul
 8009658:	0000296c 00000030                       l)..0...

08009660 <blanks.8566>:
 8009660:	20202020 20202020 20202020 20202020                     

08009670 <zeroes.8567>:
 8009670:	30303030 30303030 30303030 30303030     0000000000000000
 8009680:	69666e49 7974696e 00000000 004e614e     Infinity....NaN.

08009690 <__mprec_bigtens>:
 8009690:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 80096a0:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 80096b0:	7f73bf3c 75154fdd                       <.s..O.u

080096b8 <__mprec_tens>:
 80096b8:	00000000 3ff00000 00000000 40240000     .......?......$@
 80096c8:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 80096d8:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 80096e8:	00000000 412e8480 00000000 416312d0     .......A......cA
 80096f8:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 8009708:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 8009718:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 8009728:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 8009738:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 8009748:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 8009758:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 8009768:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 8009778:	79d99db4 44ea7843                       ...yCx.D

08009780 <p05.7367>:
 8009780:	00000005 00000019 0000007d 00000043     ........}...C...
 8009790:	49534f50 00000058 0000002e              POSIX.......

0800979c <_ctype_>:
 800979c:	20202000 20202020 28282020 20282828     .         ((((( 
 80097ac:	20202020 20202020 20202020 20202020                     
 80097bc:	10108820 10101010 10101010 10101010      ...............
 80097cc:	04040410 04040404 10040404 10101010     ................
 80097dc:	41411010 41414141 01010101 01010101     ..AAAAAA........
 80097ec:	01010101 01010101 01010101 10101010     ................
 80097fc:	42421010 42424242 02020202 02020202     ..BBBBBB........
 800980c:	02020202 02020202 02020202 10101010     ................
 800981c:	00000020 00000000 00000000 00000000      ...............
	...

080098a0 <__EH_FRAME_BEGIN__>:
 80098a0:	00000000                                ....
