
/mnt/j/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/stm32f4xx/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <g_pfnVectors>:
 8000000:	ff 7f 01 20 e1 34 00 08 69 05 00 08 79 05 00 08     ... .4..i...y...
 8000010:	b5 05 00 08 bb 05 00 08 c1 05 00 08 00 00 00 00     ................
	...
 800002c:	c7 05 00 08 d5 05 00 08 00 00 00 00 31 35 00 08     ............15..
 800003c:	e3 05 00 08 31 35 00 08 31 35 00 08 31 35 00 08     ....15..15..15..
 800004c:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 800005c:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 800006c:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 800007c:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
	...
 800009c:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 80000ac:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 80000bc:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 80000cc:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 80000dc:	00 00 00 00 31 35 00 08 31 35 00 08 31 35 00 08     ....15..15..15..
	...
 80000fc:	31 35 00 08 00 00 00 00 31 35 00 08 31 35 00 08     15......15..15..
 800010c:	31 35 00 08 00 00 00 00 00 00 00 00 00 00 00 00     15..............
 800011c:	00 00 00 00 31 35 00 08 31 35 00 08 31 35 00 08     ....15..15..15..
 800012c:	31 35 00 08 31 35 00 08 00 00 00 00 00 00 00 00     15..15..........
	...
 800014c:	31 35 00 08 31 35 00 08 31 35 00 08 31 35 00 08     15..15..15..15..
 800015c:	31 35 00 08 31 35 00 08 31 35 00 08 00 00 00 00     15..15..15......
	...
 8000184:	31 35 00 08 00 00 00 00 00 00 00 00 31 35 00 08     15..........15..

08000194 <deregister_tm_clones>:
 8000194:	4803      	ldr	r0, [pc, #12]	; (80001a4 <deregister_tm_clones+0x10>)
 8000196:	4b04      	ldr	r3, [pc, #16]	; (80001a8 <deregister_tm_clones+0x14>)
 8000198:	4283      	cmp	r3, r0
 800019a:	d002      	beq.n	80001a2 <deregister_tm_clones+0xe>
 800019c:	4b03      	ldr	r3, [pc, #12]	; (80001ac <deregister_tm_clones+0x18>)
 800019e:	b103      	cbz	r3, 80001a2 <deregister_tm_clones+0xe>
 80001a0:	4718      	bx	r3
 80001a2:	4770      	bx	lr
 80001a4:	200009c8 	.word	0x200009c8
 80001a8:	200009c8 	.word	0x200009c8
 80001ac:	00000000 	.word	0x00000000

080001b0 <register_tm_clones>:
 80001b0:	4805      	ldr	r0, [pc, #20]	; (80001c8 <register_tm_clones+0x18>)
 80001b2:	4906      	ldr	r1, [pc, #24]	; (80001cc <register_tm_clones+0x1c>)
 80001b4:	1a0b      	subs	r3, r1, r0
 80001b6:	0fd9      	lsrs	r1, r3, #31
 80001b8:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 80001bc:	1049      	asrs	r1, r1, #1
 80001be:	d002      	beq.n	80001c6 <register_tm_clones+0x16>
 80001c0:	4b03      	ldr	r3, [pc, #12]	; (80001d0 <register_tm_clones+0x20>)
 80001c2:	b103      	cbz	r3, 80001c6 <register_tm_clones+0x16>
 80001c4:	4718      	bx	r3
 80001c6:	4770      	bx	lr
 80001c8:	200009c8 	.word	0x200009c8
 80001cc:	200009c8 	.word	0x200009c8
 80001d0:	00000000 	.word	0x00000000

080001d4 <__do_global_dtors_aux>:
 80001d4:	b510      	push	{r4, lr}
 80001d6:	4c06      	ldr	r4, [pc, #24]	; (80001f0 <__do_global_dtors_aux+0x1c>)
 80001d8:	7823      	ldrb	r3, [r4, #0]
 80001da:	b943      	cbnz	r3, 80001ee <__do_global_dtors_aux+0x1a>
 80001dc:	f7ff ffda 	bl	8000194 <deregister_tm_clones>
 80001e0:	4b04      	ldr	r3, [pc, #16]	; (80001f4 <__do_global_dtors_aux+0x20>)
 80001e2:	b113      	cbz	r3, 80001ea <__do_global_dtors_aux+0x16>
 80001e4:	4804      	ldr	r0, [pc, #16]	; (80001f8 <__do_global_dtors_aux+0x24>)
 80001e6:	f3af 8000 	nop.w
 80001ea:	2301      	movs	r3, #1
 80001ec:	7023      	strb	r3, [r4, #0]
 80001ee:	bd10      	pop	{r4, pc}
 80001f0:	20000a00 	.word	0x20000a00
 80001f4:	00000000 	.word	0x00000000
 80001f8:	0800b158 	.word	0x0800b158

080001fc <frame_dummy>:
 80001fc:	b508      	push	{r3, lr}
 80001fe:	4b04      	ldr	r3, [pc, #16]	; (8000210 <frame_dummy+0x14>)
 8000200:	b11b      	cbz	r3, 800020a <frame_dummy+0xe>
 8000202:	4904      	ldr	r1, [pc, #16]	; (8000214 <frame_dummy+0x18>)
 8000204:	4804      	ldr	r0, [pc, #16]	; (8000218 <frame_dummy+0x1c>)
 8000206:	f3af 8000 	nop.w
 800020a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800020e:	e7cf      	b.n	80001b0 <register_tm_clones>
 8000210:	00000000 	.word	0x00000000
 8000214:	20000a04 	.word	0x20000a04
 8000218:	0800b158 	.word	0x0800b158

0800021c <main>:
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
 800021c:	b580      	push	{r7, lr}
 800021e:	af00      	add	r7, sp, #0
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
  HAL_Init();
 8000220:	f000 facc 	bl	80007bc <HAL_Init>
//  __asm("svc 0");
  /* Configure the system clock to 84 MHz */
  SystemClock_Config();
 8000224:	f000 f808 	bl	8000238 <SystemClock_Config>

  serial_init();
 8000228:	f000 f868 	bl	80002fc <serial_init>
        &__shell_command_start, &__shell_command_end);
    // shell_command_t * scmd = &__shell_command_start;

//  BSP_LED_Init(LED2);
  
  exception_test();
 800022c:	f003 f952 	bl	80034d4 <exception_test>
  backtrace_test();
 8000230:	f002 ff70 	bl	8003114 <backtrace_test>
//  InitStepper();
  while (1) {
 8000234:	e7fe      	b.n	8000234 <main+0x18>
	...

08000238 <SystemClock_Config>:
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
 8000238:	b580      	push	{r7, lr}
 800023a:	b094      	sub	sp, #80	; 0x50
 800023c:	af00      	add	r7, sp, #0
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
 800023e:	2300      	movs	r3, #0
 8000240:	60bb      	str	r3, [r7, #8]
 8000242:	4b29      	ldr	r3, [pc, #164]	; (80002e8 <SystemClock_Config+0xb0>)
 8000244:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000246:	4a28      	ldr	r2, [pc, #160]	; (80002e8 <SystemClock_Config+0xb0>)
 8000248:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800024c:	6413      	str	r3, [r2, #64]	; 0x40
 800024e:	4b26      	ldr	r3, [pc, #152]	; (80002e8 <SystemClock_Config+0xb0>)
 8000250:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000252:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000256:	60bb      	str	r3, [r7, #8]
 8000258:	68bb      	ldr	r3, [r7, #8]
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
 800025a:	2300      	movs	r3, #0
 800025c:	607b      	str	r3, [r7, #4]
 800025e:	4b23      	ldr	r3, [pc, #140]	; (80002ec <SystemClock_Config+0xb4>)
 8000260:	681b      	ldr	r3, [r3, #0]
 8000262:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 8000266:	4a21      	ldr	r2, [pc, #132]	; (80002ec <SystemClock_Config+0xb4>)
 8000268:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800026c:	6013      	str	r3, [r2, #0]
 800026e:	4b1f      	ldr	r3, [pc, #124]	; (80002ec <SystemClock_Config+0xb4>)
 8000270:	681b      	ldr	r3, [r3, #0]
 8000272:	f403 4340 	and.w	r3, r3, #49152	; 0xc000
 8000276:	607b      	str	r3, [r7, #4]
 8000278:	687b      	ldr	r3, [r7, #4]
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 800027a:	2302      	movs	r3, #2
 800027c:	60fb      	str	r3, [r7, #12]
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 800027e:	2301      	movs	r3, #1
 8000280:	61bb      	str	r3, [r7, #24]
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
 8000282:	2310      	movs	r3, #16
 8000284:	61fb      	str	r3, [r7, #28]
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 8000286:	2302      	movs	r3, #2
 8000288:	627b      	str	r3, [r7, #36]	; 0x24
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
 800028a:	2300      	movs	r3, #0
 800028c:	62bb      	str	r3, [r7, #40]	; 0x28
  RCC_OscInitStruct.PLL.PLLM = 16;
 800028e:	2310      	movs	r3, #16
 8000290:	62fb      	str	r3, [r7, #44]	; 0x2c
  RCC_OscInitStruct.PLL.PLLN = 336;
 8000292:	f44f 73a8 	mov.w	r3, #336	; 0x150
 8000296:	633b      	str	r3, [r7, #48]	; 0x30
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
 8000298:	2304      	movs	r3, #4
 800029a:	637b      	str	r3, [r7, #52]	; 0x34
  RCC_OscInitStruct.PLL.PLLQ = 7;
 800029c:	2307      	movs	r3, #7
 800029e:	63bb      	str	r3, [r7, #56]	; 0x38
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 80002a0:	f107 030c 	add.w	r3, r7, #12
 80002a4:	4618      	mov	r0, r3
 80002a6:	f000 fc15 	bl	8000ad4 <HAL_RCC_OscConfig>
 80002aa:	4603      	mov	r3, r0
 80002ac:	2b00      	cmp	r3, #0
 80002ae:	d001      	beq.n	80002b4 <SystemClock_Config+0x7c>
  {
    Error_Handler();
 80002b0:	f000 f81e 	bl	80002f0 <Error_Handler>
  }
 
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
 80002b4:	230f      	movs	r3, #15
 80002b6:	63fb      	str	r3, [r7, #60]	; 0x3c
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 80002b8:	2302      	movs	r3, #2
 80002ba:	643b      	str	r3, [r7, #64]	; 0x40
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 80002bc:	2300      	movs	r3, #0
 80002be:	647b      	str	r3, [r7, #68]	; 0x44
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
 80002c0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80002c4:	64bb      	str	r3, [r7, #72]	; 0x48
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
 80002c6:	2300      	movs	r3, #0
 80002c8:	64fb      	str	r3, [r7, #76]	; 0x4c
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 80002ca:	f107 033c 	add.w	r3, r7, #60	; 0x3c
 80002ce:	2102      	movs	r1, #2
 80002d0:	4618      	mov	r0, r3
 80002d2:	f000 fe77 	bl	8000fc4 <HAL_RCC_ClockConfig>
 80002d6:	4603      	mov	r3, r0
 80002d8:	2b00      	cmp	r3, #0
 80002da:	d001      	beq.n	80002e0 <SystemClock_Config+0xa8>
  {
    Error_Handler();
 80002dc:	f000 f808 	bl	80002f0 <Error_Handler>
  }
}
 80002e0:	bf00      	nop
 80002e2:	3750      	adds	r7, #80	; 0x50
 80002e4:	46bd      	mov	sp, r7
 80002e6:	bd80      	pop	{r7, pc}
 80002e8:	40023800 	.word	0x40023800
 80002ec:	40007000 	.word	0x40007000

080002f0 <Error_Handler>:
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
 80002f0:	b580      	push	{r7, lr}
 80002f2:	af00      	add	r7, sp, #0
  /* Turn LED2 on */
  BSP_LED_On(LED2);
 80002f4:	2000      	movs	r0, #0
 80002f6:	f001 fef1 	bl	80020dc <BSP_LED_On>
  while(1)
 80002fa:	e7fe      	b.n	80002fa <Error_Handler+0xa>

080002fc <serial_init>:
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

void serial_init(void) 
{
 80002fc:	b580      	push	{r7, lr}
 80002fe:	af00      	add	r7, sp, #0
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
  UartHandle.Instance          = USARTx;
 8000300:	4b11      	ldr	r3, [pc, #68]	; (8000348 <serial_init+0x4c>)
 8000302:	4a12      	ldr	r2, [pc, #72]	; (800034c <serial_init+0x50>)
 8000304:	601a      	str	r2, [r3, #0]
  
  UartHandle.Init.BaudRate     = 921600;
 8000306:	4b10      	ldr	r3, [pc, #64]	; (8000348 <serial_init+0x4c>)
 8000308:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 800030c:	605a      	str	r2, [r3, #4]
  UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
 800030e:	4b0e      	ldr	r3, [pc, #56]	; (8000348 <serial_init+0x4c>)
 8000310:	2200      	movs	r2, #0
 8000312:	609a      	str	r2, [r3, #8]
  UartHandle.Init.StopBits     = UART_STOPBITS_1;
 8000314:	4b0c      	ldr	r3, [pc, #48]	; (8000348 <serial_init+0x4c>)
 8000316:	2200      	movs	r2, #0
 8000318:	60da      	str	r2, [r3, #12]
  UartHandle.Init.Parity       = UART_PARITY_NONE;
 800031a:	4b0b      	ldr	r3, [pc, #44]	; (8000348 <serial_init+0x4c>)
 800031c:	2200      	movs	r2, #0
 800031e:	611a      	str	r2, [r3, #16]
  UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
 8000320:	4b09      	ldr	r3, [pc, #36]	; (8000348 <serial_init+0x4c>)
 8000322:	2200      	movs	r2, #0
 8000324:	619a      	str	r2, [r3, #24]
  UartHandle.Init.Mode         = UART_MODE_TX_RX;
 8000326:	4b08      	ldr	r3, [pc, #32]	; (8000348 <serial_init+0x4c>)
 8000328:	220c      	movs	r2, #12
 800032a:	615a      	str	r2, [r3, #20]
  UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
 800032c:	4b06      	ldr	r3, [pc, #24]	; (8000348 <serial_init+0x4c>)
 800032e:	2200      	movs	r2, #0
 8000330:	61da      	str	r2, [r3, #28]
    
  if(HAL_UART_Init(&UartHandle) != HAL_OK) {
 8000332:	4805      	ldr	r0, [pc, #20]	; (8000348 <serial_init+0x4c>)
 8000334:	f001 fb3f 	bl	80019b6 <HAL_UART_Init>
 8000338:	4603      	mov	r3, r0
 800033a:	2b00      	cmp	r3, #0
 800033c:	d001      	beq.n	8000342 <serial_init+0x46>
    /* Initialization Error */
    Error_Handler(); 
 800033e:	f7ff ffd7 	bl	80002f0 <Error_Handler>
  }
  
}
 8000342:	bf00      	nop
 8000344:	bd80      	pop	{r7, pc}
 8000346:	bf00      	nop
 8000348:	20000bdc 	.word	0x20000bdc
 800034c:	40004400 	.word	0x40004400

08000350 <__io_putchar>:
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
 8000350:	b580      	push	{r7, lr}
 8000352:	b082      	sub	sp, #8
 8000354:	af00      	add	r7, sp, #0
 8000356:	6078      	str	r0, [r7, #4]
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 8000358:	1d39      	adds	r1, r7, #4
 800035a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800035e:	2201      	movs	r2, #1
 8000360:	4803      	ldr	r0, [pc, #12]	; (8000370 <__io_putchar+0x20>)
 8000362:	f001 fb75 	bl	8001a50 <HAL_UART_Transmit>

  return ch;
 8000366:	687b      	ldr	r3, [r7, #4]
}
 8000368:	4618      	mov	r0, r3
 800036a:	3708      	adds	r7, #8
 800036c:	46bd      	mov	sp, r7
 800036e:	bd80      	pop	{r7, pc}
 8000370:	20000bdc 	.word	0x20000bdc

08000374 <__io_getchar>:
GETCHAR_PROTOTYPE
{
 8000374:	b580      	push	{r7, lr}
 8000376:	b082      	sub	sp, #8
 8000378:	af00      	add	r7, sp, #0
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Receive(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 800037a:	1df9      	adds	r1, r7, #7
 800037c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8000380:	2201      	movs	r2, #1
 8000382:	4804      	ldr	r0, [pc, #16]	; (8000394 <__io_getchar+0x20>)
 8000384:	f001 fbf6 	bl	8001b74 <HAL_UART_Receive>

  return ch;
 8000388:	79fb      	ldrb	r3, [r7, #7]
 800038a:	4618      	mov	r0, r3
 800038c:	3708      	adds	r7, #8
 800038e:	46bd      	mov	sp, r7
 8000390:	bd80      	pop	{r7, pc}
 8000392:	bf00      	nop
 8000394:	20000bdc 	.word	0x20000bdc

08000398 <HAL_UART_MspInit>:
  *           - NVIC configuration for DMA interrupt request enable
  * @param huart: UART handle pointer
  * @retval None
  */
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
 8000398:	b580      	push	{r7, lr}
 800039a:	b08c      	sub	sp, #48	; 0x30
 800039c:	af00      	add	r7, sp, #0
 800039e:	6078      	str	r0, [r7, #4]
  
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
 80003a0:	2300      	movs	r3, #0
 80003a2:	61bb      	str	r3, [r7, #24]
 80003a4:	4b6a      	ldr	r3, [pc, #424]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003a6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003a8:	4a69      	ldr	r2, [pc, #420]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003aa:	f043 0301 	orr.w	r3, r3, #1
 80003ae:	6313      	str	r3, [r2, #48]	; 0x30
 80003b0:	4b67      	ldr	r3, [pc, #412]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003b4:	f003 0301 	and.w	r3, r3, #1
 80003b8:	61bb      	str	r3, [r7, #24]
 80003ba:	69bb      	ldr	r3, [r7, #24]
  USARTx_RX_GPIO_CLK_ENABLE();
 80003bc:	2300      	movs	r3, #0
 80003be:	617b      	str	r3, [r7, #20]
 80003c0:	4b63      	ldr	r3, [pc, #396]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003c2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003c4:	4a62      	ldr	r2, [pc, #392]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003c6:	f043 0301 	orr.w	r3, r3, #1
 80003ca:	6313      	str	r3, [r2, #48]	; 0x30
 80003cc:	4b60      	ldr	r3, [pc, #384]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003ce:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003d0:	f003 0301 	and.w	r3, r3, #1
 80003d4:	617b      	str	r3, [r7, #20]
 80003d6:	697b      	ldr	r3, [r7, #20]
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE(); 
 80003d8:	2300      	movs	r3, #0
 80003da:	613b      	str	r3, [r7, #16]
 80003dc:	4b5c      	ldr	r3, [pc, #368]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003de:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80003e0:	4a5b      	ldr	r2, [pc, #364]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003e2:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80003e6:	6413      	str	r3, [r2, #64]	; 0x40
 80003e8:	4b59      	ldr	r3, [pc, #356]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003ea:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80003ec:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80003f0:	613b      	str	r3, [r7, #16]
 80003f2:	693b      	ldr	r3, [r7, #16]
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();   
 80003f4:	2300      	movs	r3, #0
 80003f6:	60fb      	str	r3, [r7, #12]
 80003f8:	4b55      	ldr	r3, [pc, #340]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003fa:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80003fc:	4a54      	ldr	r2, [pc, #336]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 80003fe:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000402:	6313      	str	r3, [r2, #48]	; 0x30
 8000404:	4b52      	ldr	r3, [pc, #328]	; (8000550 <HAL_UART_MspInit+0x1b8>)
 8000406:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000408:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 800040c:	60fb      	str	r3, [r7, #12]
 800040e:	68fb      	ldr	r3, [r7, #12]
  
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = USARTx_TX_PIN;
 8000410:	2304      	movs	r3, #4
 8000412:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
 8000414:	2302      	movs	r3, #2
 8000416:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull      = GPIO_NOPULL;
 8000418:	2300      	movs	r3, #0
 800041a:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed     = GPIO_SPEED_FAST;
 800041c:	2302      	movs	r3, #2
 800041e:	62bb      	str	r3, [r7, #40]	; 0x28
  GPIO_InitStruct.Alternate = USARTx_TX_AF;
 8000420:	2307      	movs	r3, #7
 8000422:	62fb      	str	r3, [r7, #44]	; 0x2c
  
  HAL_GPIO_Init(USARTx_TX_GPIO_PORT, &GPIO_InitStruct);
 8000424:	f107 031c 	add.w	r3, r7, #28
 8000428:	4619      	mov	r1, r3
 800042a:	484a      	ldr	r0, [pc, #296]	; (8000554 <HAL_UART_MspInit+0x1bc>)
 800042c:	f001 f926 	bl	800167c <HAL_GPIO_Init>
    
  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = USARTx_RX_PIN;
 8000430:	2308      	movs	r3, #8
 8000432:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Alternate = USARTx_RX_AF;
 8000434:	2307      	movs	r3, #7
 8000436:	62fb      	str	r3, [r7, #44]	; 0x2c
    
  HAL_GPIO_Init(USARTx_RX_GPIO_PORT, &GPIO_InitStruct);
 8000438:	f107 031c 	add.w	r3, r7, #28
 800043c:	4619      	mov	r1, r3
 800043e:	4845      	ldr	r0, [pc, #276]	; (8000554 <HAL_UART_MspInit+0x1bc>)
 8000440:	f001 f91c 	bl	800167c <HAL_GPIO_Init>
    
  /*##-3- Configure the DMA streams ##########################################*/
  /* Configure the DMA handler for Transmission process */
  hdma_tx.Instance                 = USARTx_TX_DMA_STREAM;
 8000444:	4b44      	ldr	r3, [pc, #272]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000446:	4a45      	ldr	r2, [pc, #276]	; (800055c <HAL_UART_MspInit+0x1c4>)
 8000448:	601a      	str	r2, [r3, #0]
  
  hdma_tx.Init.Channel             = USARTx_TX_DMA_CHANNEL;
 800044a:	4b43      	ldr	r3, [pc, #268]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 800044c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000450:	605a      	str	r2, [r3, #4]
  hdma_tx.Init.Direction           = DMA_MEMORY_TO_PERIPH;
 8000452:	4b41      	ldr	r3, [pc, #260]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000454:	2240      	movs	r2, #64	; 0x40
 8000456:	609a      	str	r2, [r3, #8]
  hdma_tx.Init.PeriphInc           = DMA_PINC_DISABLE;
 8000458:	4b3f      	ldr	r3, [pc, #252]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 800045a:	2200      	movs	r2, #0
 800045c:	60da      	str	r2, [r3, #12]
  hdma_tx.Init.MemInc              = DMA_MINC_ENABLE;
 800045e:	4b3e      	ldr	r3, [pc, #248]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000460:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000464:	611a      	str	r2, [r3, #16]
  hdma_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 8000466:	4b3c      	ldr	r3, [pc, #240]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000468:	2200      	movs	r2, #0
 800046a:	615a      	str	r2, [r3, #20]
  hdma_tx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 800046c:	4b3a      	ldr	r3, [pc, #232]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 800046e:	2200      	movs	r2, #0
 8000470:	619a      	str	r2, [r3, #24]
  hdma_tx.Init.Mode                = DMA_NORMAL;
 8000472:	4b39      	ldr	r3, [pc, #228]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000474:	2200      	movs	r2, #0
 8000476:	61da      	str	r2, [r3, #28]
  hdma_tx.Init.Priority            = DMA_PRIORITY_LOW;
 8000478:	4b37      	ldr	r3, [pc, #220]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 800047a:	2200      	movs	r2, #0
 800047c:	621a      	str	r2, [r3, #32]
  hdma_tx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;
 800047e:	4b36      	ldr	r3, [pc, #216]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000480:	2200      	movs	r2, #0
 8000482:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_tx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 8000484:	4b34      	ldr	r3, [pc, #208]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000486:	2203      	movs	r2, #3
 8000488:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_tx.Init.MemBurst            = DMA_MBURST_INC4;
 800048a:	4b33      	ldr	r3, [pc, #204]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 800048c:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8000490:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_tx.Init.PeriphBurst         = DMA_PBURST_INC4;
 8000492:	4b31      	ldr	r3, [pc, #196]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 8000494:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8000498:	631a      	str	r2, [r3, #48]	; 0x30
  
  HAL_DMA_Init(&hdma_tx);   
 800049a:	482f      	ldr	r0, [pc, #188]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 800049c:	f000 ff8e 	bl	80013bc <HAL_DMA_Init>
  
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmatx, hdma_tx);
 80004a0:	687b      	ldr	r3, [r7, #4]
 80004a2:	4a2d      	ldr	r2, [pc, #180]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 80004a4:	635a      	str	r2, [r3, #52]	; 0x34
 80004a6:	4a2c      	ldr	r2, [pc, #176]	; (8000558 <HAL_UART_MspInit+0x1c0>)
 80004a8:	687b      	ldr	r3, [r7, #4]
 80004aa:	6393      	str	r3, [r2, #56]	; 0x38
    
  /* Configure the DMA handler for Transmission process */
  hdma_rx.Instance                 = USARTx_RX_DMA_STREAM;
 80004ac:	4b2c      	ldr	r3, [pc, #176]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004ae:	4a2d      	ldr	r2, [pc, #180]	; (8000564 <HAL_UART_MspInit+0x1cc>)
 80004b0:	601a      	str	r2, [r3, #0]
  
  hdma_rx.Init.Channel             = USARTx_RX_DMA_CHANNEL;
 80004b2:	4b2b      	ldr	r3, [pc, #172]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004b4:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80004b8:	605a      	str	r2, [r3, #4]
  hdma_rx.Init.Direction           = DMA_PERIPH_TO_MEMORY;
 80004ba:	4b29      	ldr	r3, [pc, #164]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004bc:	2200      	movs	r2, #0
 80004be:	609a      	str	r2, [r3, #8]
  hdma_rx.Init.PeriphInc           = DMA_PINC_DISABLE;
 80004c0:	4b27      	ldr	r3, [pc, #156]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004c2:	2200      	movs	r2, #0
 80004c4:	60da      	str	r2, [r3, #12]
  hdma_rx.Init.MemInc              = DMA_MINC_ENABLE;
 80004c6:	4b26      	ldr	r3, [pc, #152]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004c8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80004cc:	611a      	str	r2, [r3, #16]
  hdma_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 80004ce:	4b24      	ldr	r3, [pc, #144]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004d0:	2200      	movs	r2, #0
 80004d2:	615a      	str	r2, [r3, #20]
  hdma_rx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 80004d4:	4b22      	ldr	r3, [pc, #136]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004d6:	2200      	movs	r2, #0
 80004d8:	619a      	str	r2, [r3, #24]
  hdma_rx.Init.Mode                = DMA_NORMAL;
 80004da:	4b21      	ldr	r3, [pc, #132]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004dc:	2200      	movs	r2, #0
 80004de:	61da      	str	r2, [r3, #28]
  hdma_rx.Init.Priority            = DMA_PRIORITY_HIGH;
 80004e0:	4b1f      	ldr	r3, [pc, #124]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004e2:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 80004e6:	621a      	str	r2, [r3, #32]
  hdma_rx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;         
 80004e8:	4b1d      	ldr	r3, [pc, #116]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004ea:	2200      	movs	r2, #0
 80004ec:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_rx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 80004ee:	4b1c      	ldr	r3, [pc, #112]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004f0:	2203      	movs	r2, #3
 80004f2:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_rx.Init.MemBurst            = DMA_MBURST_INC4;
 80004f4:	4b1a      	ldr	r3, [pc, #104]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004f6:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 80004fa:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_rx.Init.PeriphBurst         = DMA_PBURST_INC4; 
 80004fc:	4b18      	ldr	r3, [pc, #96]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 80004fe:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8000502:	631a      	str	r2, [r3, #48]	; 0x30

  HAL_DMA_Init(&hdma_rx);
 8000504:	4816      	ldr	r0, [pc, #88]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 8000506:	f000 ff59 	bl	80013bc <HAL_DMA_Init>
    
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmarx, hdma_rx);
 800050a:	687b      	ldr	r3, [r7, #4]
 800050c:	4a14      	ldr	r2, [pc, #80]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 800050e:	639a      	str	r2, [r3, #56]	; 0x38
 8000510:	4a13      	ldr	r2, [pc, #76]	; (8000560 <HAL_UART_MspInit+0x1c8>)
 8000512:	687b      	ldr	r3, [r7, #4]
 8000514:	6393      	str	r3, [r2, #56]	; 0x38
    
  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_TX) */
  HAL_NVIC_SetPriority(USARTx_DMA_TX_IRQn, 0, 1);
 8000516:	2201      	movs	r2, #1
 8000518:	2100      	movs	r1, #0
 800051a:	2011      	movs	r0, #17
 800051c:	f000 faa3 	bl	8000a66 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_TX_IRQn);
 8000520:	2011      	movs	r0, #17
 8000522:	f000 fabc 	bl	8000a9e <HAL_NVIC_EnableIRQ>
    
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_RX) */
  HAL_NVIC_SetPriority(USARTx_DMA_RX_IRQn, 0, 0);   
 8000526:	2200      	movs	r2, #0
 8000528:	2100      	movs	r1, #0
 800052a:	2010      	movs	r0, #16
 800052c:	f000 fa9b 	bl	8000a66 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_RX_IRQn);
 8000530:	2010      	movs	r0, #16
 8000532:	f000 fab4 	bl	8000a9e <HAL_NVIC_EnableIRQ>
  
  /* NVIC configuration for USART TC interrupt */
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
 8000536:	2200      	movs	r2, #0
 8000538:	2100      	movs	r1, #0
 800053a:	2026      	movs	r0, #38	; 0x26
 800053c:	f000 fa93 	bl	8000a66 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_IRQn);
 8000540:	2026      	movs	r0, #38	; 0x26
 8000542:	f000 faac 	bl	8000a9e <HAL_NVIC_EnableIRQ>
}
 8000546:	bf00      	nop
 8000548:	3730      	adds	r7, #48	; 0x30
 800054a:	46bd      	mov	sp, r7
 800054c:	bd80      	pop	{r7, pc}
 800054e:	bf00      	nop
 8000550:	40023800 	.word	0x40023800
 8000554:	40020000 	.word	0x40020000
 8000558:	20000a1c 	.word	0x20000a1c
 800055c:	400260a0 	.word	0x400260a0
 8000560:	20000a7c 	.word	0x20000a7c
 8000564:	40026088 	.word	0x40026088

08000568 <NMI_Handler>:
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
 8000568:	b480      	push	{r7}
 800056a:	af00      	add	r7, sp, #0
}
 800056c:	bf00      	nop
 800056e:	46bd      	mov	sp, r7
 8000570:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000574:	4770      	bx	lr
	...

08000578 <HardFault_Handler>:
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
 8000578:	b598      	push	{r3, r4, r7, lr}
 800057a:	af00      	add	r7, sp, #0
  printf("[%s]\n", __func__);
 800057c:	490a      	ldr	r1, [pc, #40]	; (80005a8 <HardFault_Handler+0x30>)
 800057e:	480b      	ldr	r0, [pc, #44]	; (80005ac <HardFault_Handler+0x34>)
 8000580:	f003 fa98 	bl	8003ab4 <printf>
    #error "not supported compiler"
#endif
#endif
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_lr(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
 8000584:	4673      	mov	r3, lr
 8000586:	461c      	mov	r4, r3
    return(result);
 8000588:	4622      	mov	r2, r4
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 800058a:	466b      	mov	r3, sp
 800058c:	461c      	mov	r4, r3
    return(result);
 800058e:	4623      	mov	r3, r4
  //   "MOV     r0, lr\n"                 /* get lr */
  //   "MOV     r1, sp\n"                  /* get stack pointer (current is MSP) */
  //   "BL      cm_backtrace_fault\n"
  // );
    //dump_stack()
  printf("[%s] lr = 0x%x, sp = 0x%x\r\n", __func__, cmb_get_lr(), cmb_get_sp());
 8000590:	4905      	ldr	r1, [pc, #20]	; (80005a8 <HardFault_Handler+0x30>)
 8000592:	4807      	ldr	r0, [pc, #28]	; (80005b0 <HardFault_Handler+0x38>)
 8000594:	f003 fa8e 	bl	8003ab4 <printf>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8000598:	466b      	mov	r3, sp
 800059a:	461c      	mov	r4, r3
    return(result);
 800059c:	4623      	mov	r3, r4
  print_call_stack(cmb_get_sp());
 800059e:	4618      	mov	r0, r3
 80005a0:	f002 fd06 	bl	8002fb0 <print_call_stack>
  #ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_fault(cmb_get_lr(), cmb_get_sp());
  #endif
  for(;;);
 80005a4:	e7fe      	b.n	80005a4 <HardFault_Handler+0x2c>
 80005a6:	bf00      	nop
 80005a8:	0800a26c 	.word	0x0800a26c
 80005ac:	0800a248 	.word	0x0800a248
 80005b0:	0800a250 	.word	0x0800a250

080005b4 <MemManage_Handler>:
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
 80005b4:	b480      	push	{r7}
 80005b6:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
 80005b8:	e7fe      	b.n	80005b8 <MemManage_Handler+0x4>

080005ba <BusFault_Handler>:
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
 80005ba:	b480      	push	{r7}
 80005bc:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
 80005be:	e7fe      	b.n	80005be <BusFault_Handler+0x4>

080005c0 <UsageFault_Handler>:
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
 80005c0:	b480      	push	{r7}
 80005c2:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
 80005c4:	e7fe      	b.n	80005c4 <UsageFault_Handler+0x4>

080005c6 <SVC_Handler>:
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
 80005c6:	b480      	push	{r7}
 80005c8:	af00      	add	r7, sp, #0
}
 80005ca:	bf00      	nop
 80005cc:	46bd      	mov	sp, r7
 80005ce:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005d2:	4770      	bx	lr

080005d4 <DebugMon_Handler>:
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
 80005d4:	b480      	push	{r7}
 80005d6:	af00      	add	r7, sp, #0
}
 80005d8:	bf00      	nop
 80005da:	46bd      	mov	sp, r7
 80005dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005e0:	4770      	bx	lr

080005e2 <SysTick_Handler>:
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
 80005e2:	b580      	push	{r7, lr}
 80005e4:	af00      	add	r7, sp, #0
  HAL_IncTick();
 80005e6:	f000 f93b 	bl	8000860 <HAL_IncTick>
}
 80005ea:	bf00      	nop
 80005ec:	bd80      	pop	{r7, pc}

080005ee <_getpid>:
void initialise_monitor_handles()
{
}

int _getpid(void)
{
 80005ee:	b480      	push	{r7}
 80005f0:	af00      	add	r7, sp, #0
	return 1;
 80005f2:	2301      	movs	r3, #1
}
 80005f4:	4618      	mov	r0, r3
 80005f6:	46bd      	mov	sp, r7
 80005f8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005fc:	4770      	bx	lr

080005fe <_kill>:

int _kill(int pid, int sig)
{
 80005fe:	b580      	push	{r7, lr}
 8000600:	b082      	sub	sp, #8
 8000602:	af00      	add	r7, sp, #0
 8000604:	6078      	str	r0, [r7, #4]
 8000606:	6039      	str	r1, [r7, #0]
	errno = EINVAL;
 8000608:	f003 f916 	bl	8003838 <__errno>
 800060c:	4603      	mov	r3, r0
 800060e:	2216      	movs	r2, #22
 8000610:	601a      	str	r2, [r3, #0]
	return -1;
 8000612:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
 8000616:	4618      	mov	r0, r3
 8000618:	3708      	adds	r7, #8
 800061a:	46bd      	mov	sp, r7
 800061c:	bd80      	pop	{r7, pc}

0800061e <_read>:
	_kill(status, -1);
	while (1) {}		/* Make sure we hang here */
}

int _read (int file, char *ptr, int len)
{
 800061e:	b580      	push	{r7, lr}
 8000620:	b086      	sub	sp, #24
 8000622:	af00      	add	r7, sp, #0
 8000624:	60f8      	str	r0, [r7, #12]
 8000626:	60b9      	str	r1, [r7, #8]
 8000628:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 800062a:	2300      	movs	r3, #0
 800062c:	617b      	str	r3, [r7, #20]
 800062e:	e00a      	b.n	8000646 <_read+0x28>
	{
		*ptr++ = __io_getchar();
 8000630:	f7ff fea0 	bl	8000374 <__io_getchar>
 8000634:	4601      	mov	r1, r0
 8000636:	68bb      	ldr	r3, [r7, #8]
 8000638:	1c5a      	adds	r2, r3, #1
 800063a:	60ba      	str	r2, [r7, #8]
 800063c:	b2ca      	uxtb	r2, r1
 800063e:	701a      	strb	r2, [r3, #0]
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000640:	697b      	ldr	r3, [r7, #20]
 8000642:	3301      	adds	r3, #1
 8000644:	617b      	str	r3, [r7, #20]
 8000646:	697a      	ldr	r2, [r7, #20]
 8000648:	687b      	ldr	r3, [r7, #4]
 800064a:	429a      	cmp	r2, r3
 800064c:	dbf0      	blt.n	8000630 <_read+0x12>
	}

return len;
 800064e:	687b      	ldr	r3, [r7, #4]
}
 8000650:	4618      	mov	r0, r3
 8000652:	3718      	adds	r7, #24
 8000654:	46bd      	mov	sp, r7
 8000656:	bd80      	pop	{r7, pc}

08000658 <_write>:

int _write(int file, char *ptr, int len)
{
 8000658:	b580      	push	{r7, lr}
 800065a:	b086      	sub	sp, #24
 800065c:	af00      	add	r7, sp, #0
 800065e:	60f8      	str	r0, [r7, #12]
 8000660:	60b9      	str	r1, [r7, #8]
 8000662:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000664:	2300      	movs	r3, #0
 8000666:	617b      	str	r3, [r7, #20]
 8000668:	e009      	b.n	800067e <_write+0x26>
	{
		__io_putchar(*ptr++);
 800066a:	68bb      	ldr	r3, [r7, #8]
 800066c:	1c5a      	adds	r2, r3, #1
 800066e:	60ba      	str	r2, [r7, #8]
 8000670:	781b      	ldrb	r3, [r3, #0]
 8000672:	4618      	mov	r0, r3
 8000674:	f7ff fe6c 	bl	8000350 <__io_putchar>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000678:	697b      	ldr	r3, [r7, #20]
 800067a:	3301      	adds	r3, #1
 800067c:	617b      	str	r3, [r7, #20]
 800067e:	697a      	ldr	r2, [r7, #20]
 8000680:	687b      	ldr	r3, [r7, #4]
 8000682:	429a      	cmp	r2, r3
 8000684:	dbf1      	blt.n	800066a <_write+0x12>
	}
	return len;
 8000686:	687b      	ldr	r3, [r7, #4]
}
 8000688:	4618      	mov	r0, r3
 800068a:	3718      	adds	r7, #24
 800068c:	46bd      	mov	sp, r7
 800068e:	bd80      	pop	{r7, pc}

08000690 <_sbrk>:

caddr_t _sbrk(int incr)
{
 8000690:	b580      	push	{r7, lr}
 8000692:	b084      	sub	sp, #16
 8000694:	af00      	add	r7, sp, #0
 8000696:	6078      	str	r0, [r7, #4]
	extern char end asm("end");
	static char *heap_end;
	char *prev_heap_end;

	if (heap_end == 0)
 8000698:	4b11      	ldr	r3, [pc, #68]	; (80006e0 <_sbrk+0x50>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	2b00      	cmp	r3, #0
 800069e:	d102      	bne.n	80006a6 <_sbrk+0x16>
		heap_end = &end;
 80006a0:	4b0f      	ldr	r3, [pc, #60]	; (80006e0 <_sbrk+0x50>)
 80006a2:	4a10      	ldr	r2, [pc, #64]	; (80006e4 <_sbrk+0x54>)
 80006a4:	601a      	str	r2, [r3, #0]

	prev_heap_end = heap_end;
 80006a6:	4b0e      	ldr	r3, [pc, #56]	; (80006e0 <_sbrk+0x50>)
 80006a8:	681b      	ldr	r3, [r3, #0]
 80006aa:	60fb      	str	r3, [r7, #12]
	if (heap_end + incr > stack_ptr)
 80006ac:	4b0c      	ldr	r3, [pc, #48]	; (80006e0 <_sbrk+0x50>)
 80006ae:	681a      	ldr	r2, [r3, #0]
 80006b0:	687b      	ldr	r3, [r7, #4]
 80006b2:	4413      	add	r3, r2
 80006b4:	466a      	mov	r2, sp
 80006b6:	4293      	cmp	r3, r2
 80006b8:	d907      	bls.n	80006ca <_sbrk+0x3a>
	{
//		write(1, "Heap and stack collision\n", 25);
//		abort();
		errno = ENOMEM;
 80006ba:	f003 f8bd 	bl	8003838 <__errno>
 80006be:	4603      	mov	r3, r0
 80006c0:	220c      	movs	r2, #12
 80006c2:	601a      	str	r2, [r3, #0]
		return (caddr_t) -1;
 80006c4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80006c8:	e006      	b.n	80006d8 <_sbrk+0x48>
	}

	heap_end += incr;
 80006ca:	4b05      	ldr	r3, [pc, #20]	; (80006e0 <_sbrk+0x50>)
 80006cc:	681a      	ldr	r2, [r3, #0]
 80006ce:	687b      	ldr	r3, [r7, #4]
 80006d0:	4413      	add	r3, r2
 80006d2:	4a03      	ldr	r2, [pc, #12]	; (80006e0 <_sbrk+0x50>)
 80006d4:	6013      	str	r3, [r2, #0]

	return (caddr_t) prev_heap_end;
 80006d6:	68fb      	ldr	r3, [r7, #12]
}
 80006d8:	4618      	mov	r0, r3
 80006da:	3710      	adds	r7, #16
 80006dc:	46bd      	mov	sp, r7
 80006de:	bd80      	pop	{r7, pc}
 80006e0:	20000adc 	.word	0x20000adc
 80006e4:	20000c2c 	.word	0x20000c2c

080006e8 <_close>:

int _close(int file)
{
 80006e8:	b480      	push	{r7}
 80006ea:	b083      	sub	sp, #12
 80006ec:	af00      	add	r7, sp, #0
 80006ee:	6078      	str	r0, [r7, #4]
	return -1;
 80006f0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
}
 80006f4:	4618      	mov	r0, r3
 80006f6:	370c      	adds	r7, #12
 80006f8:	46bd      	mov	sp, r7
 80006fa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006fe:	4770      	bx	lr

08000700 <_fstat>:


int _fstat(int file, struct stat *st)
{
 8000700:	b480      	push	{r7}
 8000702:	b083      	sub	sp, #12
 8000704:	af00      	add	r7, sp, #0
 8000706:	6078      	str	r0, [r7, #4]
 8000708:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
 800070a:	683b      	ldr	r3, [r7, #0]
 800070c:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000710:	605a      	str	r2, [r3, #4]
	return 0;
 8000712:	2300      	movs	r3, #0
}
 8000714:	4618      	mov	r0, r3
 8000716:	370c      	adds	r7, #12
 8000718:	46bd      	mov	sp, r7
 800071a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800071e:	4770      	bx	lr

08000720 <_isatty>:

int _isatty(int file)
{
 8000720:	b480      	push	{r7}
 8000722:	b083      	sub	sp, #12
 8000724:	af00      	add	r7, sp, #0
 8000726:	6078      	str	r0, [r7, #4]
	return 1;
 8000728:	2301      	movs	r3, #1
}
 800072a:	4618      	mov	r0, r3
 800072c:	370c      	adds	r7, #12
 800072e:	46bd      	mov	sp, r7
 8000730:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000734:	4770      	bx	lr

08000736 <_lseek>:

int _lseek(int file, int ptr, int dir)
{
 8000736:	b480      	push	{r7}
 8000738:	b085      	sub	sp, #20
 800073a:	af00      	add	r7, sp, #0
 800073c:	60f8      	str	r0, [r7, #12]
 800073e:	60b9      	str	r1, [r7, #8]
 8000740:	607a      	str	r2, [r7, #4]
	return 0;
 8000742:	2300      	movs	r3, #0
}
 8000744:	4618      	mov	r0, r3
 8000746:	3714      	adds	r7, #20
 8000748:	46bd      	mov	sp, r7
 800074a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800074e:	4770      	bx	lr

08000750 <SystemInit>:
  *         configuration.
  * @param  None
  * @retval None
  */
void SystemInit(void)
{
 8000750:	b480      	push	{r7}
 8000752:	af00      	add	r7, sp, #0
  /* FPU settings ------------------------------------------------------------*/
  #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
    SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
 8000754:	4b16      	ldr	r3, [pc, #88]	; (80007b0 <SystemInit+0x60>)
 8000756:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800075a:	4a15      	ldr	r2, [pc, #84]	; (80007b0 <SystemInit+0x60>)
 800075c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8000760:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
  #endif
  /* Reset the RCC clock configuration to the default reset state ------------*/
  /* Set HSION bit */
  RCC->CR |= (uint32_t)0x00000001;
 8000764:	4b13      	ldr	r3, [pc, #76]	; (80007b4 <SystemInit+0x64>)
 8000766:	681b      	ldr	r3, [r3, #0]
 8000768:	4a12      	ldr	r2, [pc, #72]	; (80007b4 <SystemInit+0x64>)
 800076a:	f043 0301 	orr.w	r3, r3, #1
 800076e:	6013      	str	r3, [r2, #0]

  /* Reset CFGR register */
  RCC->CFGR = 0x00000000;
 8000770:	4b10      	ldr	r3, [pc, #64]	; (80007b4 <SystemInit+0x64>)
 8000772:	2200      	movs	r2, #0
 8000774:	609a      	str	r2, [r3, #8]

  /* Reset HSEON, CSSON and PLLON bits */
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 8000776:	4b0f      	ldr	r3, [pc, #60]	; (80007b4 <SystemInit+0x64>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	4a0e      	ldr	r2, [pc, #56]	; (80007b4 <SystemInit+0x64>)
 800077c:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000780:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000784:	6013      	str	r3, [r2, #0]

  /* Reset PLLCFGR register */
  RCC->PLLCFGR = 0x24003010;
 8000786:	4b0b      	ldr	r3, [pc, #44]	; (80007b4 <SystemInit+0x64>)
 8000788:	4a0b      	ldr	r2, [pc, #44]	; (80007b8 <SystemInit+0x68>)
 800078a:	605a      	str	r2, [r3, #4]

  /* Reset HSEBYP bit */
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 800078c:	4b09      	ldr	r3, [pc, #36]	; (80007b4 <SystemInit+0x64>)
 800078e:	681b      	ldr	r3, [r3, #0]
 8000790:	4a08      	ldr	r2, [pc, #32]	; (80007b4 <SystemInit+0x64>)
 8000792:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000796:	6013      	str	r3, [r2, #0]

  /* Disable all interrupts */
  RCC->CIR = 0x00000000;
 8000798:	4b06      	ldr	r3, [pc, #24]	; (80007b4 <SystemInit+0x64>)
 800079a:	2200      	movs	r2, #0
 800079c:	60da      	str	r2, [r3, #12]

  /* Configure the Vector Table location add offset address ------------------*/
#ifdef VECT_TAB_SRAM
  SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
#else
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
 800079e:	4b04      	ldr	r3, [pc, #16]	; (80007b0 <SystemInit+0x60>)
 80007a0:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80007a4:	609a      	str	r2, [r3, #8]
#endif
}
 80007a6:	bf00      	nop
 80007a8:	46bd      	mov	sp, r7
 80007aa:	f85d 7b04 	ldr.w	r7, [sp], #4
 80007ae:	4770      	bx	lr
 80007b0:	e000ed00 	.word	0xe000ed00
 80007b4:	40023800 	.word	0x40023800
 80007b8:	24003010 	.word	0x24003010

080007bc <HAL_Init>:
  *         need to ensure that the SysTick time base is always set to 1 millisecond
  *         to have correct HAL operation.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_Init(void)
{
 80007bc:	b580      	push	{r7, lr}
 80007be:	af00      	add	r7, sp, #0
  /* Configure Flash prefetch, Instruction cache, Data cache */ 
#if (INSTRUCTION_CACHE_ENABLE != 0U)
  __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
 80007c0:	4b0e      	ldr	r3, [pc, #56]	; (80007fc <HAL_Init+0x40>)
 80007c2:	681b      	ldr	r3, [r3, #0]
 80007c4:	4a0d      	ldr	r2, [pc, #52]	; (80007fc <HAL_Init+0x40>)
 80007c6:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 80007ca:	6013      	str	r3, [r2, #0]
#endif /* INSTRUCTION_CACHE_ENABLE */

#if (DATA_CACHE_ENABLE != 0U)
  __HAL_FLASH_DATA_CACHE_ENABLE();
 80007cc:	4b0b      	ldr	r3, [pc, #44]	; (80007fc <HAL_Init+0x40>)
 80007ce:	681b      	ldr	r3, [r3, #0]
 80007d0:	4a0a      	ldr	r2, [pc, #40]	; (80007fc <HAL_Init+0x40>)
 80007d2:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80007d6:	6013      	str	r3, [r2, #0]
#endif /* DATA_CACHE_ENABLE */

#if (PREFETCH_ENABLE != 0U)
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 80007d8:	4b08      	ldr	r3, [pc, #32]	; (80007fc <HAL_Init+0x40>)
 80007da:	681b      	ldr	r3, [r3, #0]
 80007dc:	4a07      	ldr	r2, [pc, #28]	; (80007fc <HAL_Init+0x40>)
 80007de:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80007e2:	6013      	str	r3, [r2, #0]
#endif /* PREFETCH_ENABLE */

  /* Set Interrupt Group Priority */
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 80007e4:	2003      	movs	r0, #3
 80007e6:	f000 f933 	bl	8000a50 <HAL_NVIC_SetPriorityGrouping>

  /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
  HAL_InitTick(TICK_INT_PRIORITY);
 80007ea:	200f      	movs	r0, #15
 80007ec:	f000 f808 	bl	8000800 <HAL_InitTick>

  /* Init the low level hardware */
  HAL_MspInit();
 80007f0:	f000 f856 	bl	80008a0 <HAL_MspInit>

  /* Return function status */
  return HAL_OK;
 80007f4:	2300      	movs	r3, #0
}
 80007f6:	4618      	mov	r0, r3
 80007f8:	bd80      	pop	{r7, pc}
 80007fa:	bf00      	nop
 80007fc:	40023c00 	.word	0x40023c00

08000800 <HAL_InitTick>:
  *       implementation  in user file.
  * @param TickPriority Tick interrupt priority.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
 8000800:	b580      	push	{r7, lr}
 8000802:	b082      	sub	sp, #8
 8000804:	af00      	add	r7, sp, #0
 8000806:	6078      	str	r0, [r7, #4]
  /* Configure the SysTick to have interrupt in 1ms time basis*/
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000808:	4b12      	ldr	r3, [pc, #72]	; (8000854 <HAL_InitTick+0x54>)
 800080a:	681a      	ldr	r2, [r3, #0]
 800080c:	4b12      	ldr	r3, [pc, #72]	; (8000858 <HAL_InitTick+0x58>)
 800080e:	781b      	ldrb	r3, [r3, #0]
 8000810:	4619      	mov	r1, r3
 8000812:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000816:	fbb3 f3f1 	udiv	r3, r3, r1
 800081a:	fbb2 f3f3 	udiv	r3, r2, r3
 800081e:	4618      	mov	r0, r3
 8000820:	f000 f94b 	bl	8000aba <HAL_SYSTICK_Config>
 8000824:	4603      	mov	r3, r0
 8000826:	2b00      	cmp	r3, #0
 8000828:	d001      	beq.n	800082e <HAL_InitTick+0x2e>
  {
    return HAL_ERROR;
 800082a:	2301      	movs	r3, #1
 800082c:	e00e      	b.n	800084c <HAL_InitTick+0x4c>
  }

  /* Configure the SysTick IRQ priority */
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 800082e:	687b      	ldr	r3, [r7, #4]
 8000830:	2b0f      	cmp	r3, #15
 8000832:	d80a      	bhi.n	800084a <HAL_InitTick+0x4a>
  {
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8000834:	2200      	movs	r2, #0
 8000836:	6879      	ldr	r1, [r7, #4]
 8000838:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800083c:	f000 f913 	bl	8000a66 <HAL_NVIC_SetPriority>
    uwTickPrio = TickPriority;
 8000840:	4a06      	ldr	r2, [pc, #24]	; (800085c <HAL_InitTick+0x5c>)
 8000842:	687b      	ldr	r3, [r7, #4]
 8000844:	6013      	str	r3, [r2, #0]
  {
    return HAL_ERROR;
  }

  /* Return function status */
  return HAL_OK;
 8000846:	2300      	movs	r3, #0
 8000848:	e000      	b.n	800084c <HAL_InitTick+0x4c>
    return HAL_ERROR;
 800084a:	2301      	movs	r3, #1
}
 800084c:	4618      	mov	r0, r3
 800084e:	3708      	adds	r7, #8
 8000850:	46bd      	mov	sp, r7
 8000852:	bd80      	pop	{r7, pc}
 8000854:	20000000 	.word	0x20000000
 8000858:	20000008 	.word	0x20000008
 800085c:	20000004 	.word	0x20000004

08000860 <HAL_IncTick>:
 * @note This function is declared as __weak to be overwritten in case of other 
  *      implementations in user file.
  * @retval None
  */
__weak void HAL_IncTick(void)
{
 8000860:	b480      	push	{r7}
 8000862:	af00      	add	r7, sp, #0
  uwTick += uwTickFreq;
 8000864:	4b06      	ldr	r3, [pc, #24]	; (8000880 <HAL_IncTick+0x20>)
 8000866:	781b      	ldrb	r3, [r3, #0]
 8000868:	461a      	mov	r2, r3
 800086a:	4b06      	ldr	r3, [pc, #24]	; (8000884 <HAL_IncTick+0x24>)
 800086c:	681b      	ldr	r3, [r3, #0]
 800086e:	4413      	add	r3, r2
 8000870:	4a04      	ldr	r2, [pc, #16]	; (8000884 <HAL_IncTick+0x24>)
 8000872:	6013      	str	r3, [r2, #0]
}
 8000874:	bf00      	nop
 8000876:	46bd      	mov	sp, r7
 8000878:	f85d 7b04 	ldr.w	r7, [sp], #4
 800087c:	4770      	bx	lr
 800087e:	bf00      	nop
 8000880:	20000008 	.word	0x20000008
 8000884:	20000c20 	.word	0x20000c20

08000888 <HAL_GetTick>:
  * @note This function is declared as __weak to be overwritten in case of other 
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
 8000888:	b480      	push	{r7}
 800088a:	af00      	add	r7, sp, #0
  return uwTick;
 800088c:	4b03      	ldr	r3, [pc, #12]	; (800089c <HAL_GetTick+0x14>)
 800088e:	681b      	ldr	r3, [r3, #0]
}
 8000890:	4618      	mov	r0, r3
 8000892:	46bd      	mov	sp, r7
 8000894:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000898:	4770      	bx	lr
 800089a:	bf00      	nop
 800089c:	20000c20 	.word	0x20000c20

080008a0 <HAL_MspInit>:
  * @note   This function is called from HAL_Init() function to perform system
  *         level initialization (GPIOs, clock, DMA, interrupt).
  * @retval None
  */
void HAL_MspInit(void)
{
 80008a0:	b480      	push	{r7}
 80008a2:	af00      	add	r7, sp, #0

}
 80008a4:	bf00      	nop
 80008a6:	46bd      	mov	sp, r7
 80008a8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008ac:	4770      	bx	lr
	...

080008b0 <__NVIC_SetPriorityGrouping>:
           In case of a conflict between priority grouping and available
           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  \param [in]      PriorityGroup  Priority grouping field.
 */
__STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 80008b0:	b480      	push	{r7}
 80008b2:	b085      	sub	sp, #20
 80008b4:	af00      	add	r7, sp, #0
 80008b6:	6078      	str	r0, [r7, #4]
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 80008b8:	687b      	ldr	r3, [r7, #4]
 80008ba:	f003 0307 	and.w	r3, r3, #7
 80008be:	60fb      	str	r3, [r7, #12]

  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 80008c0:	4b0c      	ldr	r3, [pc, #48]	; (80008f4 <__NVIC_SetPriorityGrouping+0x44>)
 80008c2:	68db      	ldr	r3, [r3, #12]
 80008c4:	60bb      	str	r3, [r7, #8]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 80008c6:	68ba      	ldr	r2, [r7, #8]
 80008c8:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80008cc:	4013      	ands	r3, r2
 80008ce:	60bb      	str	r3, [r7, #8]
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
                (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 80008d0:	68fb      	ldr	r3, [r7, #12]
 80008d2:	021a      	lsls	r2, r3, #8
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 80008d4:	68bb      	ldr	r3, [r7, #8]
 80008d6:	4313      	orrs	r3, r2
  reg_value  =  (reg_value                                   |
 80008d8:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80008dc:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80008e0:	60bb      	str	r3, [r7, #8]
  SCB->AIRCR =  reg_value;
 80008e2:	4a04      	ldr	r2, [pc, #16]	; (80008f4 <__NVIC_SetPriorityGrouping+0x44>)
 80008e4:	68bb      	ldr	r3, [r7, #8]
 80008e6:	60d3      	str	r3, [r2, #12]
}
 80008e8:	bf00      	nop
 80008ea:	3714      	adds	r7, #20
 80008ec:	46bd      	mov	sp, r7
 80008ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80008f2:	4770      	bx	lr
 80008f4:	e000ed00 	.word	0xe000ed00

080008f8 <__NVIC_GetPriorityGrouping>:
  \brief   Get Priority Grouping
  \details Reads the priority grouping field from the NVIC Interrupt Controller.
  \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
__STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
{
 80008f8:	b480      	push	{r7}
 80008fa:	af00      	add	r7, sp, #0
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 80008fc:	4b04      	ldr	r3, [pc, #16]	; (8000910 <__NVIC_GetPriorityGrouping+0x18>)
 80008fe:	68db      	ldr	r3, [r3, #12]
 8000900:	0a1b      	lsrs	r3, r3, #8
 8000902:	f003 0307 	and.w	r3, r3, #7
}
 8000906:	4618      	mov	r0, r3
 8000908:	46bd      	mov	sp, r7
 800090a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800090e:	4770      	bx	lr
 8000910:	e000ed00 	.word	0xe000ed00

08000914 <__NVIC_EnableIRQ>:
  \details Enables a device specific interrupt in the NVIC interrupt controller.
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000914:	b480      	push	{r7}
 8000916:	b083      	sub	sp, #12
 8000918:	af00      	add	r7, sp, #0
 800091a:	4603      	mov	r3, r0
 800091c:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 800091e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000922:	2b00      	cmp	r3, #0
 8000924:	db0b      	blt.n	800093e <__NVIC_EnableIRQ+0x2a>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 8000926:	79fb      	ldrb	r3, [r7, #7]
 8000928:	f003 021f 	and.w	r2, r3, #31
 800092c:	4907      	ldr	r1, [pc, #28]	; (800094c <__NVIC_EnableIRQ+0x38>)
 800092e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000932:	095b      	lsrs	r3, r3, #5
 8000934:	2001      	movs	r0, #1
 8000936:	fa00 f202 	lsl.w	r2, r0, r2
 800093a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
  }
}
 800093e:	bf00      	nop
 8000940:	370c      	adds	r7, #12
 8000942:	46bd      	mov	sp, r7
 8000944:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000948:	4770      	bx	lr
 800094a:	bf00      	nop
 800094c:	e000e100 	.word	0xe000e100

08000950 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
 8000950:	b480      	push	{r7}
 8000952:	b083      	sub	sp, #12
 8000954:	af00      	add	r7, sp, #0
 8000956:	4603      	mov	r3, r0
 8000958:	6039      	str	r1, [r7, #0]
 800095a:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 800095c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000960:	2b00      	cmp	r3, #0
 8000962:	db0a      	blt.n	800097a <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000964:	683b      	ldr	r3, [r7, #0]
 8000966:	b2da      	uxtb	r2, r3
 8000968:	490c      	ldr	r1, [pc, #48]	; (800099c <__NVIC_SetPriority+0x4c>)
 800096a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800096e:	0112      	lsls	r2, r2, #4
 8000970:	b2d2      	uxtb	r2, r2
 8000972:	440b      	add	r3, r1
 8000974:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
 8000978:	e00a      	b.n	8000990 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800097a:	683b      	ldr	r3, [r7, #0]
 800097c:	b2da      	uxtb	r2, r3
 800097e:	4908      	ldr	r1, [pc, #32]	; (80009a0 <__NVIC_SetPriority+0x50>)
 8000980:	79fb      	ldrb	r3, [r7, #7]
 8000982:	f003 030f 	and.w	r3, r3, #15
 8000986:	3b04      	subs	r3, #4
 8000988:	0112      	lsls	r2, r2, #4
 800098a:	b2d2      	uxtb	r2, r2
 800098c:	440b      	add	r3, r1
 800098e:	761a      	strb	r2, [r3, #24]
}
 8000990:	bf00      	nop
 8000992:	370c      	adds	r7, #12
 8000994:	46bd      	mov	sp, r7
 8000996:	f85d 7b04 	ldr.w	r7, [sp], #4
 800099a:	4770      	bx	lr
 800099c:	e000e100 	.word	0xe000e100
 80009a0:	e000ed00 	.word	0xe000ed00

080009a4 <NVIC_EncodePriority>:
  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  \param [in]       SubPriority  Subpriority value (starting from 0).
  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
__STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
 80009a4:	b480      	push	{r7}
 80009a6:	b089      	sub	sp, #36	; 0x24
 80009a8:	af00      	add	r7, sp, #0
 80009aa:	60f8      	str	r0, [r7, #12]
 80009ac:	60b9      	str	r1, [r7, #8]
 80009ae:	607a      	str	r2, [r7, #4]
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 80009b0:	68fb      	ldr	r3, [r7, #12]
 80009b2:	f003 0307 	and.w	r3, r3, #7
 80009b6:	61fb      	str	r3, [r7, #28]
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80009b8:	69fb      	ldr	r3, [r7, #28]
 80009ba:	f1c3 0307 	rsb	r3, r3, #7
 80009be:	2b04      	cmp	r3, #4
 80009c0:	bf28      	it	cs
 80009c2:	2304      	movcs	r3, #4
 80009c4:	61bb      	str	r3, [r7, #24]
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 80009c6:	69fb      	ldr	r3, [r7, #28]
 80009c8:	3304      	adds	r3, #4
 80009ca:	2b06      	cmp	r3, #6
 80009cc:	d902      	bls.n	80009d4 <NVIC_EncodePriority+0x30>
 80009ce:	69fb      	ldr	r3, [r7, #28]
 80009d0:	3b03      	subs	r3, #3
 80009d2:	e000      	b.n	80009d6 <NVIC_EncodePriority+0x32>
 80009d4:	2300      	movs	r3, #0
 80009d6:	617b      	str	r3, [r7, #20]

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 80009d8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80009dc:	69bb      	ldr	r3, [r7, #24]
 80009de:	fa02 f303 	lsl.w	r3, r2, r3
 80009e2:	43da      	mvns	r2, r3
 80009e4:	68bb      	ldr	r3, [r7, #8]
 80009e6:	401a      	ands	r2, r3
 80009e8:	697b      	ldr	r3, [r7, #20]
 80009ea:	409a      	lsls	r2, r3
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 80009ec:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80009f0:	697b      	ldr	r3, [r7, #20]
 80009f2:	fa01 f303 	lsl.w	r3, r1, r3
 80009f6:	43d9      	mvns	r1, r3
 80009f8:	687b      	ldr	r3, [r7, #4]
 80009fa:	400b      	ands	r3, r1
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 80009fc:	4313      	orrs	r3, r2
         );
}
 80009fe:	4618      	mov	r0, r3
 8000a00:	3724      	adds	r7, #36	; 0x24
 8000a02:	46bd      	mov	sp, r7
 8000a04:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a08:	4770      	bx	lr
	...

08000a0c <SysTick_Config>:
  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
 8000a0c:	b580      	push	{r7, lr}
 8000a0e:	b082      	sub	sp, #8
 8000a10:	af00      	add	r7, sp, #0
 8000a12:	6078      	str	r0, [r7, #4]
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8000a14:	687b      	ldr	r3, [r7, #4]
 8000a16:	3b01      	subs	r3, #1
 8000a18:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000a1c:	d301      	bcc.n	8000a22 <SysTick_Config+0x16>
  {
    return (1UL);                                                   /* Reload value impossible */
 8000a1e:	2301      	movs	r3, #1
 8000a20:	e00f      	b.n	8000a42 <SysTick_Config+0x36>
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8000a22:	4a0a      	ldr	r2, [pc, #40]	; (8000a4c <SysTick_Config+0x40>)
 8000a24:	687b      	ldr	r3, [r7, #4]
 8000a26:	3b01      	subs	r3, #1
 8000a28:	6053      	str	r3, [r2, #4]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 8000a2a:	210f      	movs	r1, #15
 8000a2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000a30:	f7ff ff8e 	bl	8000950 <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8000a34:	4b05      	ldr	r3, [pc, #20]	; (8000a4c <SysTick_Config+0x40>)
 8000a36:	2200      	movs	r2, #0
 8000a38:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8000a3a:	4b04      	ldr	r3, [pc, #16]	; (8000a4c <SysTick_Config+0x40>)
 8000a3c:	2207      	movs	r2, #7
 8000a3e:	601a      	str	r2, [r3, #0]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 8000a40:	2300      	movs	r3, #0
}
 8000a42:	4618      	mov	r0, r3
 8000a44:	3708      	adds	r7, #8
 8000a46:	46bd      	mov	sp, r7
 8000a48:	bd80      	pop	{r7, pc}
 8000a4a:	bf00      	nop
 8000a4c:	e000e010 	.word	0xe000e010

08000a50 <HAL_NVIC_SetPriorityGrouping>:
  * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
  *         The pending IRQ priority will be managed only by the subpriority. 
  * @retval None
  */
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000a50:	b580      	push	{r7, lr}
 8000a52:	b082      	sub	sp, #8
 8000a54:	af00      	add	r7, sp, #0
 8000a56:	6078      	str	r0, [r7, #4]
  /* Check the parameters */
  assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
  
  /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
  NVIC_SetPriorityGrouping(PriorityGroup);
 8000a58:	6878      	ldr	r0, [r7, #4]
 8000a5a:	f7ff ff29 	bl	80008b0 <__NVIC_SetPriorityGrouping>
}
 8000a5e:	bf00      	nop
 8000a60:	3708      	adds	r7, #8
 8000a62:	46bd      	mov	sp, r7
 8000a64:	bd80      	pop	{r7, pc}

08000a66 <HAL_NVIC_SetPriority>:
  *         This parameter can be a value between 0 and 15
  *         A lower priority value indicates a higher priority.          
  * @retval None
  */
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
{ 
 8000a66:	b580      	push	{r7, lr}
 8000a68:	b086      	sub	sp, #24
 8000a6a:	af00      	add	r7, sp, #0
 8000a6c:	4603      	mov	r3, r0
 8000a6e:	60b9      	str	r1, [r7, #8]
 8000a70:	607a      	str	r2, [r7, #4]
 8000a72:	73fb      	strb	r3, [r7, #15]
  uint32_t prioritygroup = 0x00U;
 8000a74:	2300      	movs	r3, #0
 8000a76:	617b      	str	r3, [r7, #20]
  
  /* Check the parameters */
  assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
  
  prioritygroup = NVIC_GetPriorityGrouping();
 8000a78:	f7ff ff3e 	bl	80008f8 <__NVIC_GetPriorityGrouping>
 8000a7c:	6178      	str	r0, [r7, #20]
  
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8000a7e:	687a      	ldr	r2, [r7, #4]
 8000a80:	68b9      	ldr	r1, [r7, #8]
 8000a82:	6978      	ldr	r0, [r7, #20]
 8000a84:	f7ff ff8e 	bl	80009a4 <NVIC_EncodePriority>
 8000a88:	4602      	mov	r2, r0
 8000a8a:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8000a8e:	4611      	mov	r1, r2
 8000a90:	4618      	mov	r0, r3
 8000a92:	f7ff ff5d 	bl	8000950 <__NVIC_SetPriority>
}
 8000a96:	bf00      	nop
 8000a98:	3718      	adds	r7, #24
 8000a9a:	46bd      	mov	sp, r7
 8000a9c:	bd80      	pop	{r7, pc}

08000a9e <HAL_NVIC_EnableIRQ>:
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000a9e:	b580      	push	{r7, lr}
 8000aa0:	b082      	sub	sp, #8
 8000aa2:	af00      	add	r7, sp, #0
 8000aa4:	4603      	mov	r3, r0
 8000aa6:	71fb      	strb	r3, [r7, #7]
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
  
  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
 8000aa8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000aac:	4618      	mov	r0, r3
 8000aae:	f7ff ff31 	bl	8000914 <__NVIC_EnableIRQ>
}
 8000ab2:	bf00      	nop
 8000ab4:	3708      	adds	r7, #8
 8000ab6:	46bd      	mov	sp, r7
 8000ab8:	bd80      	pop	{r7, pc}

08000aba <HAL_SYSTICK_Config>:
  * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 8000aba:	b580      	push	{r7, lr}
 8000abc:	b082      	sub	sp, #8
 8000abe:	af00      	add	r7, sp, #0
 8000ac0:	6078      	str	r0, [r7, #4]
   return SysTick_Config(TicksNumb);
 8000ac2:	6878      	ldr	r0, [r7, #4]
 8000ac4:	f7ff ffa2 	bl	8000a0c <SysTick_Config>
 8000ac8:	4603      	mov	r3, r0
}
 8000aca:	4618      	mov	r0, r3
 8000acc:	3708      	adds	r7, #8
 8000ace:	46bd      	mov	sp, r7
 8000ad0:	bd80      	pop	{r7, pc}
	...

08000ad4 <HAL_RCC_OscConfig>:
  *         supported by this API. User should request a transition to HSE Off
  *         first and then HSE On or HSE Bypass.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
{
 8000ad4:	b580      	push	{r7, lr}
 8000ad6:	b086      	sub	sp, #24
 8000ad8:	af00      	add	r7, sp, #0
 8000ada:	6078      	str	r0, [r7, #4]
  uint32_t tickstart, pll_config;

  /* Check Null pointer */
  if(RCC_OscInitStruct == NULL)
 8000adc:	687b      	ldr	r3, [r7, #4]
 8000ade:	2b00      	cmp	r3, #0
 8000ae0:	d101      	bne.n	8000ae6 <HAL_RCC_OscConfig+0x12>
  {
    return HAL_ERROR;
 8000ae2:	2301      	movs	r3, #1
 8000ae4:	e264      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
  }

  /* Check the parameters */
  assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
  /*------------------------------- HSE Configuration ------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000ae6:	687b      	ldr	r3, [r7, #4]
 8000ae8:	681b      	ldr	r3, [r3, #0]
 8000aea:	f003 0301 	and.w	r3, r3, #1
 8000aee:	2b00      	cmp	r3, #0
 8000af0:	d075      	beq.n	8000bde <HAL_RCC_OscConfig+0x10a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
    /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8000af2:	4ba3      	ldr	r3, [pc, #652]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000af4:	689b      	ldr	r3, [r3, #8]
 8000af6:	f003 030c 	and.w	r3, r3, #12
 8000afa:	2b04      	cmp	r3, #4
 8000afc:	d00c      	beq.n	8000b18 <HAL_RCC_OscConfig+0x44>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000afe:	4ba0      	ldr	r3, [pc, #640]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b00:	689b      	ldr	r3, [r3, #8]
 8000b02:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8000b06:	2b08      	cmp	r3, #8
 8000b08:	d112      	bne.n	8000b30 <HAL_RCC_OscConfig+0x5c>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000b0a:	4b9d      	ldr	r3, [pc, #628]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b0c:	685b      	ldr	r3, [r3, #4]
 8000b0e:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000b12:	f5b3 0f80 	cmp.w	r3, #4194304	; 0x400000
 8000b16:	d10b      	bne.n	8000b30 <HAL_RCC_OscConfig+0x5c>
    {
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000b18:	4b99      	ldr	r3, [pc, #612]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b1a:	681b      	ldr	r3, [r3, #0]
 8000b1c:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000b20:	2b00      	cmp	r3, #0
 8000b22:	d05b      	beq.n	8000bdc <HAL_RCC_OscConfig+0x108>
 8000b24:	687b      	ldr	r3, [r7, #4]
 8000b26:	685b      	ldr	r3, [r3, #4]
 8000b28:	2b00      	cmp	r3, #0
 8000b2a:	d157      	bne.n	8000bdc <HAL_RCC_OscConfig+0x108>
      {
        return HAL_ERROR;
 8000b2c:	2301      	movs	r3, #1
 8000b2e:	e23f      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      }
    }
    else
    {
      /* Set the new HSE configuration ---------------------------------------*/
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000b30:	687b      	ldr	r3, [r7, #4]
 8000b32:	685b      	ldr	r3, [r3, #4]
 8000b34:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000b38:	d106      	bne.n	8000b48 <HAL_RCC_OscConfig+0x74>
 8000b3a:	4b91      	ldr	r3, [pc, #580]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b3c:	681b      	ldr	r3, [r3, #0]
 8000b3e:	4a90      	ldr	r2, [pc, #576]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b40:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000b44:	6013      	str	r3, [r2, #0]
 8000b46:	e01d      	b.n	8000b84 <HAL_RCC_OscConfig+0xb0>
 8000b48:	687b      	ldr	r3, [r7, #4]
 8000b4a:	685b      	ldr	r3, [r3, #4]
 8000b4c:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 8000b50:	d10c      	bne.n	8000b6c <HAL_RCC_OscConfig+0x98>
 8000b52:	4b8b      	ldr	r3, [pc, #556]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b54:	681b      	ldr	r3, [r3, #0]
 8000b56:	4a8a      	ldr	r2, [pc, #552]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b58:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8000b5c:	6013      	str	r3, [r2, #0]
 8000b5e:	4b88      	ldr	r3, [pc, #544]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b60:	681b      	ldr	r3, [r3, #0]
 8000b62:	4a87      	ldr	r2, [pc, #540]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b64:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000b68:	6013      	str	r3, [r2, #0]
 8000b6a:	e00b      	b.n	8000b84 <HAL_RCC_OscConfig+0xb0>
 8000b6c:	4b84      	ldr	r3, [pc, #528]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b6e:	681b      	ldr	r3, [r3, #0]
 8000b70:	4a83      	ldr	r2, [pc, #524]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b72:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000b76:	6013      	str	r3, [r2, #0]
 8000b78:	4b81      	ldr	r3, [pc, #516]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b7a:	681b      	ldr	r3, [r3, #0]
 8000b7c:	4a80      	ldr	r2, [pc, #512]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000b7e:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000b82:	6013      	str	r3, [r2, #0]

      /* Check the HSE State */
      if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
 8000b84:	687b      	ldr	r3, [r7, #4]
 8000b86:	685b      	ldr	r3, [r3, #4]
 8000b88:	2b00      	cmp	r3, #0
 8000b8a:	d013      	beq.n	8000bb4 <HAL_RCC_OscConfig+0xe0>
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000b8c:	f7ff fe7c 	bl	8000888 <HAL_GetTick>
 8000b90:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000b92:	e008      	b.n	8000ba6 <HAL_RCC_OscConfig+0xd2>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 8000b94:	f7ff fe78 	bl	8000888 <HAL_GetTick>
 8000b98:	4602      	mov	r2, r0
 8000b9a:	693b      	ldr	r3, [r7, #16]
 8000b9c:	1ad3      	subs	r3, r2, r3
 8000b9e:	2b64      	cmp	r3, #100	; 0x64
 8000ba0:	d901      	bls.n	8000ba6 <HAL_RCC_OscConfig+0xd2>
          {
            return HAL_TIMEOUT;
 8000ba2:	2303      	movs	r3, #3
 8000ba4:	e204      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000ba6:	4b76      	ldr	r3, [pc, #472]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000ba8:	681b      	ldr	r3, [r3, #0]
 8000baa:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000bae:	2b00      	cmp	r3, #0
 8000bb0:	d0f0      	beq.n	8000b94 <HAL_RCC_OscConfig+0xc0>
 8000bb2:	e014      	b.n	8000bde <HAL_RCC_OscConfig+0x10a>
        }
      }
      else
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000bb4:	f7ff fe68 	bl	8000888 <HAL_GetTick>
 8000bb8:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is bypassed or disabled */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000bba:	e008      	b.n	8000bce <HAL_RCC_OscConfig+0xfa>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 8000bbc:	f7ff fe64 	bl	8000888 <HAL_GetTick>
 8000bc0:	4602      	mov	r2, r0
 8000bc2:	693b      	ldr	r3, [r7, #16]
 8000bc4:	1ad3      	subs	r3, r2, r3
 8000bc6:	2b64      	cmp	r3, #100	; 0x64
 8000bc8:	d901      	bls.n	8000bce <HAL_RCC_OscConfig+0xfa>
          {
            return HAL_TIMEOUT;
 8000bca:	2303      	movs	r3, #3
 8000bcc:	e1f0      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 8000bce:	4b6c      	ldr	r3, [pc, #432]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000bd0:	681b      	ldr	r3, [r3, #0]
 8000bd2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000bd6:	2b00      	cmp	r3, #0
 8000bd8:	d1f0      	bne.n	8000bbc <HAL_RCC_OscConfig+0xe8>
 8000bda:	e000      	b.n	8000bde <HAL_RCC_OscConfig+0x10a>
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000bdc:	bf00      	nop
        }
      }
    }
  }
  /*----------------------------- HSI Configuration --------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 8000bde:	687b      	ldr	r3, [r7, #4]
 8000be0:	681b      	ldr	r3, [r3, #0]
 8000be2:	f003 0302 	and.w	r3, r3, #2
 8000be6:	2b00      	cmp	r3, #0
 8000be8:	d063      	beq.n	8000cb2 <HAL_RCC_OscConfig+0x1de>
    /* Check the parameters */
    assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
    assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));

    /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 8000bea:	4b65      	ldr	r3, [pc, #404]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000bec:	689b      	ldr	r3, [r3, #8]
 8000bee:	f003 030c 	and.w	r3, r3, #12
 8000bf2:	2b00      	cmp	r3, #0
 8000bf4:	d00b      	beq.n	8000c0e <HAL_RCC_OscConfig+0x13a>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 8000bf6:	4b62      	ldr	r3, [pc, #392]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000bf8:	689b      	ldr	r3, [r3, #8]
 8000bfa:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 8000bfe:	2b08      	cmp	r3, #8
 8000c00:	d11c      	bne.n	8000c3c <HAL_RCC_OscConfig+0x168>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 8000c02:	4b5f      	ldr	r3, [pc, #380]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c04:	685b      	ldr	r3, [r3, #4]
 8000c06:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000c0a:	2b00      	cmp	r3, #0
 8000c0c:	d116      	bne.n	8000c3c <HAL_RCC_OscConfig+0x168>
    {
      /* When HSI is used as system clock it will not disabled */
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000c0e:	4b5c      	ldr	r3, [pc, #368]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c10:	681b      	ldr	r3, [r3, #0]
 8000c12:	f003 0302 	and.w	r3, r3, #2
 8000c16:	2b00      	cmp	r3, #0
 8000c18:	d005      	beq.n	8000c26 <HAL_RCC_OscConfig+0x152>
 8000c1a:	687b      	ldr	r3, [r7, #4]
 8000c1c:	68db      	ldr	r3, [r3, #12]
 8000c1e:	2b01      	cmp	r3, #1
 8000c20:	d001      	beq.n	8000c26 <HAL_RCC_OscConfig+0x152>
      {
        return HAL_ERROR;
 8000c22:	2301      	movs	r3, #1
 8000c24:	e1c4      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      }
      /* Otherwise, just the calibration is allowed */
      else
      {
        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000c26:	4b56      	ldr	r3, [pc, #344]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c28:	681b      	ldr	r3, [r3, #0]
 8000c2a:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8000c2e:	687b      	ldr	r3, [r7, #4]
 8000c30:	691b      	ldr	r3, [r3, #16]
 8000c32:	00db      	lsls	r3, r3, #3
 8000c34:	4952      	ldr	r1, [pc, #328]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c36:	4313      	orrs	r3, r2
 8000c38:	600b      	str	r3, [r1, #0]
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000c3a:	e03a      	b.n	8000cb2 <HAL_RCC_OscConfig+0x1de>
      }
    }
    else
    {
      /* Check the HSI State */
      if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
 8000c3c:	687b      	ldr	r3, [r7, #4]
 8000c3e:	68db      	ldr	r3, [r3, #12]
 8000c40:	2b00      	cmp	r3, #0
 8000c42:	d020      	beq.n	8000c86 <HAL_RCC_OscConfig+0x1b2>
      {
        /* Enable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_ENABLE();
 8000c44:	4b4f      	ldr	r3, [pc, #316]	; (8000d84 <HAL_RCC_OscConfig+0x2b0>)
 8000c46:	2201      	movs	r2, #1
 8000c48:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8000c4a:	f7ff fe1d 	bl	8000888 <HAL_GetTick>
 8000c4e:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000c50:	e008      	b.n	8000c64 <HAL_RCC_OscConfig+0x190>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 8000c52:	f7ff fe19 	bl	8000888 <HAL_GetTick>
 8000c56:	4602      	mov	r2, r0
 8000c58:	693b      	ldr	r3, [r7, #16]
 8000c5a:	1ad3      	subs	r3, r2, r3
 8000c5c:	2b02      	cmp	r3, #2
 8000c5e:	d901      	bls.n	8000c64 <HAL_RCC_OscConfig+0x190>
          {
            return HAL_TIMEOUT;
 8000c60:	2303      	movs	r3, #3
 8000c62:	e1a5      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000c64:	4b46      	ldr	r3, [pc, #280]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c66:	681b      	ldr	r3, [r3, #0]
 8000c68:	f003 0302 	and.w	r3, r3, #2
 8000c6c:	2b00      	cmp	r3, #0
 8000c6e:	d0f0      	beq.n	8000c52 <HAL_RCC_OscConfig+0x17e>
          }
        }

        /* Adjusts the Internal High Speed oscillator (HSI) calibration value. */
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000c70:	4b43      	ldr	r3, [pc, #268]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c72:	681b      	ldr	r3, [r3, #0]
 8000c74:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8000c78:	687b      	ldr	r3, [r7, #4]
 8000c7a:	691b      	ldr	r3, [r3, #16]
 8000c7c:	00db      	lsls	r3, r3, #3
 8000c7e:	4940      	ldr	r1, [pc, #256]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000c80:	4313      	orrs	r3, r2
 8000c82:	600b      	str	r3, [r1, #0]
 8000c84:	e015      	b.n	8000cb2 <HAL_RCC_OscConfig+0x1de>
      }
      else
      {
        /* Disable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_DISABLE();
 8000c86:	4b3f      	ldr	r3, [pc, #252]	; (8000d84 <HAL_RCC_OscConfig+0x2b0>)
 8000c88:	2200      	movs	r2, #0
 8000c8a:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8000c8c:	f7ff fdfc 	bl	8000888 <HAL_GetTick>
 8000c90:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000c92:	e008      	b.n	8000ca6 <HAL_RCC_OscConfig+0x1d2>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 8000c94:	f7ff fdf8 	bl	8000888 <HAL_GetTick>
 8000c98:	4602      	mov	r2, r0
 8000c9a:	693b      	ldr	r3, [r7, #16]
 8000c9c:	1ad3      	subs	r3, r2, r3
 8000c9e:	2b02      	cmp	r3, #2
 8000ca0:	d901      	bls.n	8000ca6 <HAL_RCC_OscConfig+0x1d2>
          {
            return HAL_TIMEOUT;
 8000ca2:	2303      	movs	r3, #3
 8000ca4:	e184      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 8000ca6:	4b36      	ldr	r3, [pc, #216]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000ca8:	681b      	ldr	r3, [r3, #0]
 8000caa:	f003 0302 	and.w	r3, r3, #2
 8000cae:	2b00      	cmp	r3, #0
 8000cb0:	d1f0      	bne.n	8000c94 <HAL_RCC_OscConfig+0x1c0>
        }
      }
    }
  }
  /*------------------------------ LSI Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 8000cb2:	687b      	ldr	r3, [r7, #4]
 8000cb4:	681b      	ldr	r3, [r3, #0]
 8000cb6:	f003 0308 	and.w	r3, r3, #8
 8000cba:	2b00      	cmp	r3, #0
 8000cbc:	d030      	beq.n	8000d20 <HAL_RCC_OscConfig+0x24c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));

    /* Check the LSI State */
    if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
 8000cbe:	687b      	ldr	r3, [r7, #4]
 8000cc0:	695b      	ldr	r3, [r3, #20]
 8000cc2:	2b00      	cmp	r3, #0
 8000cc4:	d016      	beq.n	8000cf4 <HAL_RCC_OscConfig+0x220>
    {
      /* Enable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_ENABLE();
 8000cc6:	4b30      	ldr	r3, [pc, #192]	; (8000d88 <HAL_RCC_OscConfig+0x2b4>)
 8000cc8:	2201      	movs	r2, #1
 8000cca:	601a      	str	r2, [r3, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8000ccc:	f7ff fddc 	bl	8000888 <HAL_GetTick>
 8000cd0:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000cd2:	e008      	b.n	8000ce6 <HAL_RCC_OscConfig+0x212>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 8000cd4:	f7ff fdd8 	bl	8000888 <HAL_GetTick>
 8000cd8:	4602      	mov	r2, r0
 8000cda:	693b      	ldr	r3, [r7, #16]
 8000cdc:	1ad3      	subs	r3, r2, r3
 8000cde:	2b02      	cmp	r3, #2
 8000ce0:	d901      	bls.n	8000ce6 <HAL_RCC_OscConfig+0x212>
        {
          return HAL_TIMEOUT;
 8000ce2:	2303      	movs	r3, #3
 8000ce4:	e164      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8000ce6:	4b26      	ldr	r3, [pc, #152]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000ce8:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8000cea:	f003 0302 	and.w	r3, r3, #2
 8000cee:	2b00      	cmp	r3, #0
 8000cf0:	d0f0      	beq.n	8000cd4 <HAL_RCC_OscConfig+0x200>
 8000cf2:	e015      	b.n	8000d20 <HAL_RCC_OscConfig+0x24c>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_DISABLE();
 8000cf4:	4b24      	ldr	r3, [pc, #144]	; (8000d88 <HAL_RCC_OscConfig+0x2b4>)
 8000cf6:	2200      	movs	r2, #0
 8000cf8:	601a      	str	r2, [r3, #0]

      /* Get Start Tick */
      tickstart = HAL_GetTick();
 8000cfa:	f7ff fdc5 	bl	8000888 <HAL_GetTick>
 8000cfe:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000d00:	e008      	b.n	8000d14 <HAL_RCC_OscConfig+0x240>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 8000d02:	f7ff fdc1 	bl	8000888 <HAL_GetTick>
 8000d06:	4602      	mov	r2, r0
 8000d08:	693b      	ldr	r3, [r7, #16]
 8000d0a:	1ad3      	subs	r3, r2, r3
 8000d0c:	2b02      	cmp	r3, #2
 8000d0e:	d901      	bls.n	8000d14 <HAL_RCC_OscConfig+0x240>
        {
          return HAL_TIMEOUT;
 8000d10:	2303      	movs	r3, #3
 8000d12:	e14d      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000d14:	4b1a      	ldr	r3, [pc, #104]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000d16:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8000d18:	f003 0302 	and.w	r3, r3, #2
 8000d1c:	2b00      	cmp	r3, #0
 8000d1e:	d1f0      	bne.n	8000d02 <HAL_RCC_OscConfig+0x22e>
        }
      }
    }
  }
  /*------------------------------ LSE Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 8000d20:	687b      	ldr	r3, [r7, #4]
 8000d22:	681b      	ldr	r3, [r3, #0]
 8000d24:	f003 0304 	and.w	r3, r3, #4
 8000d28:	2b00      	cmp	r3, #0
 8000d2a:	f000 80a0 	beq.w	8000e6e <HAL_RCC_OscConfig+0x39a>
  {
    FlagStatus       pwrclkchanged = RESET;
 8000d2e:	2300      	movs	r3, #0
 8000d30:	75fb      	strb	r3, [r7, #23]
    /* Check the parameters */
    assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));

    /* Update LSE configuration in Backup Domain control register    */
    /* Requires to enable write access to Backup Domain of necessary */
    if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 8000d32:	4b13      	ldr	r3, [pc, #76]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000d34:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000d36:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000d3a:	2b00      	cmp	r3, #0
 8000d3c:	d10f      	bne.n	8000d5e <HAL_RCC_OscConfig+0x28a>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 8000d3e:	2300      	movs	r3, #0
 8000d40:	60bb      	str	r3, [r7, #8]
 8000d42:	4b0f      	ldr	r3, [pc, #60]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000d44:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000d46:	4a0e      	ldr	r2, [pc, #56]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000d48:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000d4c:	6413      	str	r3, [r2, #64]	; 0x40
 8000d4e:	4b0c      	ldr	r3, [pc, #48]	; (8000d80 <HAL_RCC_OscConfig+0x2ac>)
 8000d50:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000d52:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000d56:	60bb      	str	r3, [r7, #8]
 8000d58:	68bb      	ldr	r3, [r7, #8]
      pwrclkchanged = SET;
 8000d5a:	2301      	movs	r3, #1
 8000d5c:	75fb      	strb	r3, [r7, #23]
    }

    if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000d5e:	4b0b      	ldr	r3, [pc, #44]	; (8000d8c <HAL_RCC_OscConfig+0x2b8>)
 8000d60:	681b      	ldr	r3, [r3, #0]
 8000d62:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8000d66:	2b00      	cmp	r3, #0
 8000d68:	d121      	bne.n	8000dae <HAL_RCC_OscConfig+0x2da>
    {
      /* Enable write access to Backup domain */
      SET_BIT(PWR->CR, PWR_CR_DBP);
 8000d6a:	4b08      	ldr	r3, [pc, #32]	; (8000d8c <HAL_RCC_OscConfig+0x2b8>)
 8000d6c:	681b      	ldr	r3, [r3, #0]
 8000d6e:	4a07      	ldr	r2, [pc, #28]	; (8000d8c <HAL_RCC_OscConfig+0x2b8>)
 8000d70:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000d74:	6013      	str	r3, [r2, #0]

      /* Wait for Backup domain Write protection disable */
      tickstart = HAL_GetTick();
 8000d76:	f7ff fd87 	bl	8000888 <HAL_GetTick>
 8000d7a:	6138      	str	r0, [r7, #16]

      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000d7c:	e011      	b.n	8000da2 <HAL_RCC_OscConfig+0x2ce>
 8000d7e:	bf00      	nop
 8000d80:	40023800 	.word	0x40023800
 8000d84:	42470000 	.word	0x42470000
 8000d88:	42470e80 	.word	0x42470e80
 8000d8c:	40007000 	.word	0x40007000
      {
        if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 8000d90:	f7ff fd7a 	bl	8000888 <HAL_GetTick>
 8000d94:	4602      	mov	r2, r0
 8000d96:	693b      	ldr	r3, [r7, #16]
 8000d98:	1ad3      	subs	r3, r2, r3
 8000d9a:	2b02      	cmp	r3, #2
 8000d9c:	d901      	bls.n	8000da2 <HAL_RCC_OscConfig+0x2ce>
        {
          return HAL_TIMEOUT;
 8000d9e:	2303      	movs	r3, #3
 8000da0:	e106      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000da2:	4b85      	ldr	r3, [pc, #532]	; (8000fb8 <HAL_RCC_OscConfig+0x4e4>)
 8000da4:	681b      	ldr	r3, [r3, #0]
 8000da6:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8000daa:	2b00      	cmp	r3, #0
 8000dac:	d0f0      	beq.n	8000d90 <HAL_RCC_OscConfig+0x2bc>
        }
      }
    }

    /* Set the new LSE configuration -----------------------------------------*/
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 8000dae:	687b      	ldr	r3, [r7, #4]
 8000db0:	689b      	ldr	r3, [r3, #8]
 8000db2:	2b01      	cmp	r3, #1
 8000db4:	d106      	bne.n	8000dc4 <HAL_RCC_OscConfig+0x2f0>
 8000db6:	4b81      	ldr	r3, [pc, #516]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000db8:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000dba:	4a80      	ldr	r2, [pc, #512]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000dbc:	f043 0301 	orr.w	r3, r3, #1
 8000dc0:	6713      	str	r3, [r2, #112]	; 0x70
 8000dc2:	e01c      	b.n	8000dfe <HAL_RCC_OscConfig+0x32a>
 8000dc4:	687b      	ldr	r3, [r7, #4]
 8000dc6:	689b      	ldr	r3, [r3, #8]
 8000dc8:	2b05      	cmp	r3, #5
 8000dca:	d10c      	bne.n	8000de6 <HAL_RCC_OscConfig+0x312>
 8000dcc:	4b7b      	ldr	r3, [pc, #492]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000dce:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000dd0:	4a7a      	ldr	r2, [pc, #488]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000dd2:	f043 0304 	orr.w	r3, r3, #4
 8000dd6:	6713      	str	r3, [r2, #112]	; 0x70
 8000dd8:	4b78      	ldr	r3, [pc, #480]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000dda:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000ddc:	4a77      	ldr	r2, [pc, #476]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000dde:	f043 0301 	orr.w	r3, r3, #1
 8000de2:	6713      	str	r3, [r2, #112]	; 0x70
 8000de4:	e00b      	b.n	8000dfe <HAL_RCC_OscConfig+0x32a>
 8000de6:	4b75      	ldr	r3, [pc, #468]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000de8:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000dea:	4a74      	ldr	r2, [pc, #464]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000dec:	f023 0301 	bic.w	r3, r3, #1
 8000df0:	6713      	str	r3, [r2, #112]	; 0x70
 8000df2:	4b72      	ldr	r3, [pc, #456]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000df4:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000df6:	4a71      	ldr	r2, [pc, #452]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000df8:	f023 0304 	bic.w	r3, r3, #4
 8000dfc:	6713      	str	r3, [r2, #112]	; 0x70
    /* Check the LSE State */
    if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
 8000dfe:	687b      	ldr	r3, [r7, #4]
 8000e00:	689b      	ldr	r3, [r3, #8]
 8000e02:	2b00      	cmp	r3, #0
 8000e04:	d015      	beq.n	8000e32 <HAL_RCC_OscConfig+0x35e>
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8000e06:	f7ff fd3f 	bl	8000888 <HAL_GetTick>
 8000e0a:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000e0c:	e00a      	b.n	8000e24 <HAL_RCC_OscConfig+0x350>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8000e0e:	f7ff fd3b 	bl	8000888 <HAL_GetTick>
 8000e12:	4602      	mov	r2, r0
 8000e14:	693b      	ldr	r3, [r7, #16]
 8000e16:	1ad3      	subs	r3, r2, r3
 8000e18:	f241 3288 	movw	r2, #5000	; 0x1388
 8000e1c:	4293      	cmp	r3, r2
 8000e1e:	d901      	bls.n	8000e24 <HAL_RCC_OscConfig+0x350>
        {
          return HAL_TIMEOUT;
 8000e20:	2303      	movs	r3, #3
 8000e22:	e0c5      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000e24:	4b65      	ldr	r3, [pc, #404]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000e26:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000e28:	f003 0302 	and.w	r3, r3, #2
 8000e2c:	2b00      	cmp	r3, #0
 8000e2e:	d0ee      	beq.n	8000e0e <HAL_RCC_OscConfig+0x33a>
 8000e30:	e014      	b.n	8000e5c <HAL_RCC_OscConfig+0x388>
      }
    }
    else
    {
      /* Get Start Tick */
      tickstart = HAL_GetTick();
 8000e32:	f7ff fd29 	bl	8000888 <HAL_GetTick>
 8000e36:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000e38:	e00a      	b.n	8000e50 <HAL_RCC_OscConfig+0x37c>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8000e3a:	f7ff fd25 	bl	8000888 <HAL_GetTick>
 8000e3e:	4602      	mov	r2, r0
 8000e40:	693b      	ldr	r3, [r7, #16]
 8000e42:	1ad3      	subs	r3, r2, r3
 8000e44:	f241 3288 	movw	r2, #5000	; 0x1388
 8000e48:	4293      	cmp	r3, r2
 8000e4a:	d901      	bls.n	8000e50 <HAL_RCC_OscConfig+0x37c>
        {
          return HAL_TIMEOUT;
 8000e4c:	2303      	movs	r3, #3
 8000e4e:	e0af      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000e50:	4b5a      	ldr	r3, [pc, #360]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000e52:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000e54:	f003 0302 	and.w	r3, r3, #2
 8000e58:	2b00      	cmp	r3, #0
 8000e5a:	d1ee      	bne.n	8000e3a <HAL_RCC_OscConfig+0x366>
        }
      }
    }

    /* Restore clock configuration if changed */
    if(pwrclkchanged == SET)
 8000e5c:	7dfb      	ldrb	r3, [r7, #23]
 8000e5e:	2b01      	cmp	r3, #1
 8000e60:	d105      	bne.n	8000e6e <HAL_RCC_OscConfig+0x39a>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 8000e62:	4b56      	ldr	r3, [pc, #344]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000e64:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000e66:	4a55      	ldr	r2, [pc, #340]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000e68:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8000e6c:	6413      	str	r3, [r2, #64]	; 0x40
    }
  }
  /*-------------------------------- PLL Configuration -----------------------*/
  /* Check the parameters */
  assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 8000e6e:	687b      	ldr	r3, [r7, #4]
 8000e70:	699b      	ldr	r3, [r3, #24]
 8000e72:	2b00      	cmp	r3, #0
 8000e74:	f000 809b 	beq.w	8000fae <HAL_RCC_OscConfig+0x4da>
  {
    /* Check if the PLL is used as system clock or not */
    if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 8000e78:	4b50      	ldr	r3, [pc, #320]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000e7a:	689b      	ldr	r3, [r3, #8]
 8000e7c:	f003 030c 	and.w	r3, r3, #12
 8000e80:	2b08      	cmp	r3, #8
 8000e82:	d05c      	beq.n	8000f3e <HAL_RCC_OscConfig+0x46a>
    {
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8000e84:	687b      	ldr	r3, [r7, #4]
 8000e86:	699b      	ldr	r3, [r3, #24]
 8000e88:	2b02      	cmp	r3, #2
 8000e8a:	d141      	bne.n	8000f10 <HAL_RCC_OscConfig+0x43c>
        assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
        assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
        assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));

        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8000e8c:	4b4c      	ldr	r3, [pc, #304]	; (8000fc0 <HAL_RCC_OscConfig+0x4ec>)
 8000e8e:	2200      	movs	r2, #0
 8000e90:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000e92:	f7ff fcf9 	bl	8000888 <HAL_GetTick>
 8000e96:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000e98:	e008      	b.n	8000eac <HAL_RCC_OscConfig+0x3d8>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000e9a:	f7ff fcf5 	bl	8000888 <HAL_GetTick>
 8000e9e:	4602      	mov	r2, r0
 8000ea0:	693b      	ldr	r3, [r7, #16]
 8000ea2:	1ad3      	subs	r3, r2, r3
 8000ea4:	2b02      	cmp	r3, #2
 8000ea6:	d901      	bls.n	8000eac <HAL_RCC_OscConfig+0x3d8>
          {
            return HAL_TIMEOUT;
 8000ea8:	2303      	movs	r3, #3
 8000eaa:	e081      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000eac:	4b43      	ldr	r3, [pc, #268]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000eae:	681b      	ldr	r3, [r3, #0]
 8000eb0:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000eb4:	2b00      	cmp	r3, #0
 8000eb6:	d1f0      	bne.n	8000e9a <HAL_RCC_OscConfig+0x3c6>
          }
        }

        /* Configure the main PLL clock source, multiplication and division factors. */
        WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \
 8000eb8:	687b      	ldr	r3, [r7, #4]
 8000eba:	69da      	ldr	r2, [r3, #28]
 8000ebc:	687b      	ldr	r3, [r7, #4]
 8000ebe:	6a1b      	ldr	r3, [r3, #32]
 8000ec0:	431a      	orrs	r2, r3
 8000ec2:	687b      	ldr	r3, [r7, #4]
 8000ec4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000ec6:	019b      	lsls	r3, r3, #6
 8000ec8:	431a      	orrs	r2, r3
 8000eca:	687b      	ldr	r3, [r7, #4]
 8000ecc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000ece:	085b      	lsrs	r3, r3, #1
 8000ed0:	3b01      	subs	r3, #1
 8000ed2:	041b      	lsls	r3, r3, #16
 8000ed4:	431a      	orrs	r2, r3
 8000ed6:	687b      	ldr	r3, [r7, #4]
 8000ed8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000eda:	061b      	lsls	r3, r3, #24
 8000edc:	4937      	ldr	r1, [pc, #220]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000ede:	4313      	orrs	r3, r2
 8000ee0:	604b      	str	r3, [r1, #4]
                                 RCC_OscInitStruct->PLL.PLLM                                                 | \
                                 (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)             | \
                                 (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos) | \
                                 (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)));
        /* Enable the main PLL. */
        __HAL_RCC_PLL_ENABLE();
 8000ee2:	4b37      	ldr	r3, [pc, #220]	; (8000fc0 <HAL_RCC_OscConfig+0x4ec>)
 8000ee4:	2201      	movs	r2, #1
 8000ee6:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000ee8:	f7ff fcce 	bl	8000888 <HAL_GetTick>
 8000eec:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000eee:	e008      	b.n	8000f02 <HAL_RCC_OscConfig+0x42e>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000ef0:	f7ff fcca 	bl	8000888 <HAL_GetTick>
 8000ef4:	4602      	mov	r2, r0
 8000ef6:	693b      	ldr	r3, [r7, #16]
 8000ef8:	1ad3      	subs	r3, r2, r3
 8000efa:	2b02      	cmp	r3, #2
 8000efc:	d901      	bls.n	8000f02 <HAL_RCC_OscConfig+0x42e>
          {
            return HAL_TIMEOUT;
 8000efe:	2303      	movs	r3, #3
 8000f00:	e056      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000f02:	4b2e      	ldr	r3, [pc, #184]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000f04:	681b      	ldr	r3, [r3, #0]
 8000f06:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000f0a:	2b00      	cmp	r3, #0
 8000f0c:	d0f0      	beq.n	8000ef0 <HAL_RCC_OscConfig+0x41c>
 8000f0e:	e04e      	b.n	8000fae <HAL_RCC_OscConfig+0x4da>
        }
      }
      else
      {
        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8000f10:	4b2b      	ldr	r3, [pc, #172]	; (8000fc0 <HAL_RCC_OscConfig+0x4ec>)
 8000f12:	2200      	movs	r2, #0
 8000f14:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000f16:	f7ff fcb7 	bl	8000888 <HAL_GetTick>
 8000f1a:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000f1c:	e008      	b.n	8000f30 <HAL_RCC_OscConfig+0x45c>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000f1e:	f7ff fcb3 	bl	8000888 <HAL_GetTick>
 8000f22:	4602      	mov	r2, r0
 8000f24:	693b      	ldr	r3, [r7, #16]
 8000f26:	1ad3      	subs	r3, r2, r3
 8000f28:	2b02      	cmp	r3, #2
 8000f2a:	d901      	bls.n	8000f30 <HAL_RCC_OscConfig+0x45c>
          {
            return HAL_TIMEOUT;
 8000f2c:	2303      	movs	r3, #3
 8000f2e:	e03f      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000f30:	4b22      	ldr	r3, [pc, #136]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000f32:	681b      	ldr	r3, [r3, #0]
 8000f34:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000f38:	2b00      	cmp	r3, #0
 8000f3a:	d1f0      	bne.n	8000f1e <HAL_RCC_OscConfig+0x44a>
 8000f3c:	e037      	b.n	8000fae <HAL_RCC_OscConfig+0x4da>
      }
    }
    else
    {
      /* Check if there is a request to disable the PLL used as System clock source */
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 8000f3e:	687b      	ldr	r3, [r7, #4]
 8000f40:	699b      	ldr	r3, [r3, #24]
 8000f42:	2b01      	cmp	r3, #1
 8000f44:	d101      	bne.n	8000f4a <HAL_RCC_OscConfig+0x476>
      {
        return HAL_ERROR;
 8000f46:	2301      	movs	r3, #1
 8000f48:	e032      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
      }
      else
      {
        /* Do not return HAL_ERROR if request repeats the current configuration */
        pll_config = RCC->PLLCFGR;
 8000f4a:	4b1c      	ldr	r3, [pc, #112]	; (8000fbc <HAL_RCC_OscConfig+0x4e8>)
 8000f4c:	685b      	ldr	r3, [r3, #4]
 8000f4e:	60fb      	str	r3, [r7, #12]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
#else
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8000f50:	687b      	ldr	r3, [r7, #4]
 8000f52:	699b      	ldr	r3, [r3, #24]
 8000f54:	2b01      	cmp	r3, #1
 8000f56:	d028      	beq.n	8000faa <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000f58:	68fb      	ldr	r3, [r7, #12]
 8000f5a:	f403 0280 	and.w	r2, r3, #4194304	; 0x400000
 8000f5e:	687b      	ldr	r3, [r7, #4]
 8000f60:	69db      	ldr	r3, [r3, #28]
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8000f62:	429a      	cmp	r2, r3
 8000f64:	d121      	bne.n	8000faa <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 8000f66:	68fb      	ldr	r3, [r7, #12]
 8000f68:	f003 023f 	and.w	r2, r3, #63	; 0x3f
 8000f6c:	687b      	ldr	r3, [r7, #4]
 8000f6e:	6a1b      	ldr	r3, [r3, #32]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000f70:	429a      	cmp	r2, r3
 8000f72:	d11a      	bne.n	8000faa <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 8000f74:	68fa      	ldr	r2, [r7, #12]
 8000f76:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8000f7a:	4013      	ands	r3, r2
 8000f7c:	687a      	ldr	r2, [r7, #4]
 8000f7e:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000f80:	0192      	lsls	r2, r2, #6
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 8000f82:	4293      	cmp	r3, r2
 8000f84:	d111      	bne.n	8000faa <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 8000f86:	68fb      	ldr	r3, [r7, #12]
 8000f88:	f403 3240 	and.w	r2, r3, #196608	; 0x30000
 8000f8c:	687b      	ldr	r3, [r7, #4]
 8000f8e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000f90:	085b      	lsrs	r3, r3, #1
 8000f92:	3b01      	subs	r3, #1
 8000f94:	041b      	lsls	r3, r3, #16
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 8000f96:	429a      	cmp	r2, r3
 8000f98:	d107      	bne.n	8000faa <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
 8000f9a:	68fb      	ldr	r3, [r7, #12]
 8000f9c:	f003 6270 	and.w	r2, r3, #251658240	; 0xf000000
 8000fa0:	687b      	ldr	r3, [r7, #4]
 8000fa2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000fa4:	061b      	lsls	r3, r3, #24
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 8000fa6:	429a      	cmp	r2, r3
 8000fa8:	d001      	beq.n	8000fae <HAL_RCC_OscConfig+0x4da>
#endif
        {
          return HAL_ERROR;
 8000faa:	2301      	movs	r3, #1
 8000fac:	e000      	b.n	8000fb0 <HAL_RCC_OscConfig+0x4dc>
        }
      }
    }
  }
  return HAL_OK;
 8000fae:	2300      	movs	r3, #0
}
 8000fb0:	4618      	mov	r0, r3
 8000fb2:	3718      	adds	r7, #24
 8000fb4:	46bd      	mov	sp, r7
 8000fb6:	bd80      	pop	{r7, pc}
 8000fb8:	40007000 	.word	0x40007000
 8000fbc:	40023800 	.word	0x40023800
 8000fc0:	42470060 	.word	0x42470060

08000fc4 <HAL_RCC_ClockConfig>:
  *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
  *         (for more details refer to section above "Initialization/de-initialization functions")
  * @retval None
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 8000fc4:	b580      	push	{r7, lr}
 8000fc6:	b084      	sub	sp, #16
 8000fc8:	af00      	add	r7, sp, #0
 8000fca:	6078      	str	r0, [r7, #4]
 8000fcc:	6039      	str	r1, [r7, #0]
  uint32_t tickstart;

  /* Check Null pointer */
  if(RCC_ClkInitStruct == NULL)
 8000fce:	687b      	ldr	r3, [r7, #4]
 8000fd0:	2b00      	cmp	r3, #0
 8000fd2:	d101      	bne.n	8000fd8 <HAL_RCC_ClockConfig+0x14>
  {
    return HAL_ERROR;
 8000fd4:	2301      	movs	r3, #1
 8000fd6:	e0cc      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
  /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
    must be correctly programmed according to the frequency of the CPU clock
    (HCLK) and the supply voltage of the device. */

  /* Increasing the number of wait states because of higher CPU frequency */
  if(FLatency > __HAL_FLASH_GET_LATENCY())
 8000fd8:	4b68      	ldr	r3, [pc, #416]	; (800117c <HAL_RCC_ClockConfig+0x1b8>)
 8000fda:	681b      	ldr	r3, [r3, #0]
 8000fdc:	f003 0307 	and.w	r3, r3, #7
 8000fe0:	683a      	ldr	r2, [r7, #0]
 8000fe2:	429a      	cmp	r2, r3
 8000fe4:	d90c      	bls.n	8001000 <HAL_RCC_ClockConfig+0x3c>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000fe6:	4b65      	ldr	r3, [pc, #404]	; (800117c <HAL_RCC_ClockConfig+0x1b8>)
 8000fe8:	683a      	ldr	r2, [r7, #0]
 8000fea:	b2d2      	uxtb	r2, r2
 8000fec:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 8000fee:	4b63      	ldr	r3, [pc, #396]	; (800117c <HAL_RCC_ClockConfig+0x1b8>)
 8000ff0:	681b      	ldr	r3, [r3, #0]
 8000ff2:	f003 0307 	and.w	r3, r3, #7
 8000ff6:	683a      	ldr	r2, [r7, #0]
 8000ff8:	429a      	cmp	r2, r3
 8000ffa:	d001      	beq.n	8001000 <HAL_RCC_ClockConfig+0x3c>
    {
      return HAL_ERROR;
 8000ffc:	2301      	movs	r3, #1
 8000ffe:	e0b8      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- HCLK Configuration --------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8001000:	687b      	ldr	r3, [r7, #4]
 8001002:	681b      	ldr	r3, [r3, #0]
 8001004:	f003 0302 	and.w	r3, r3, #2
 8001008:	2b00      	cmp	r3, #0
 800100a:	d020      	beq.n	800104e <HAL_RCC_ClockConfig+0x8a>
  {
    /* Set the highest APBx dividers in order to ensure that we do not go through
       a non-spec phase whatever we decrease or increase HCLK. */
    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 800100c:	687b      	ldr	r3, [r7, #4]
 800100e:	681b      	ldr	r3, [r3, #0]
 8001010:	f003 0304 	and.w	r3, r3, #4
 8001014:	2b00      	cmp	r3, #0
 8001016:	d005      	beq.n	8001024 <HAL_RCC_ClockConfig+0x60>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8001018:	4b59      	ldr	r3, [pc, #356]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 800101a:	689b      	ldr	r3, [r3, #8]
 800101c:	4a58      	ldr	r2, [pc, #352]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 800101e:	f443 53e0 	orr.w	r3, r3, #7168	; 0x1c00
 8001022:	6093      	str	r3, [r2, #8]
    }

    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8001024:	687b      	ldr	r3, [r7, #4]
 8001026:	681b      	ldr	r3, [r3, #0]
 8001028:	f003 0308 	and.w	r3, r3, #8
 800102c:	2b00      	cmp	r3, #0
 800102e:	d005      	beq.n	800103c <HAL_RCC_ClockConfig+0x78>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 8001030:	4b53      	ldr	r3, [pc, #332]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001032:	689b      	ldr	r3, [r3, #8]
 8001034:	4a52      	ldr	r2, [pc, #328]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001036:	f443 4360 	orr.w	r3, r3, #57344	; 0xe000
 800103a:	6093      	str	r3, [r2, #8]
    }

    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 800103c:	4b50      	ldr	r3, [pc, #320]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 800103e:	689b      	ldr	r3, [r3, #8]
 8001040:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8001044:	687b      	ldr	r3, [r7, #4]
 8001046:	689b      	ldr	r3, [r3, #8]
 8001048:	494d      	ldr	r1, [pc, #308]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 800104a:	4313      	orrs	r3, r2
 800104c:	608b      	str	r3, [r1, #8]
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 800104e:	687b      	ldr	r3, [r7, #4]
 8001050:	681b      	ldr	r3, [r3, #0]
 8001052:	f003 0301 	and.w	r3, r3, #1
 8001056:	2b00      	cmp	r3, #0
 8001058:	d044      	beq.n	80010e4 <HAL_RCC_ClockConfig+0x120>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* HSE is selected as System Clock Source */
    if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 800105a:	687b      	ldr	r3, [r7, #4]
 800105c:	685b      	ldr	r3, [r3, #4]
 800105e:	2b01      	cmp	r3, #1
 8001060:	d107      	bne.n	8001072 <HAL_RCC_ClockConfig+0xae>
    {
      /* Check the HSE ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8001062:	4b47      	ldr	r3, [pc, #284]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001064:	681b      	ldr	r3, [r3, #0]
 8001066:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800106a:	2b00      	cmp	r3, #0
 800106c:	d119      	bne.n	80010a2 <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800106e:	2301      	movs	r3, #1
 8001070:	e07f      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
      }
    }
    /* PLL is selected as System Clock Source */
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 8001072:	687b      	ldr	r3, [r7, #4]
 8001074:	685b      	ldr	r3, [r3, #4]
 8001076:	2b02      	cmp	r3, #2
 8001078:	d003      	beq.n	8001082 <HAL_RCC_ClockConfig+0xbe>
            (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLRCLK))
 800107a:	687b      	ldr	r3, [r7, #4]
 800107c:	685b      	ldr	r3, [r3, #4]
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 800107e:	2b03      	cmp	r3, #3
 8001080:	d107      	bne.n	8001092 <HAL_RCC_ClockConfig+0xce>
    {
      /* Check the PLL ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8001082:	4b3f      	ldr	r3, [pc, #252]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001084:	681b      	ldr	r3, [r3, #0]
 8001086:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800108a:	2b00      	cmp	r3, #0
 800108c:	d109      	bne.n	80010a2 <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800108e:	2301      	movs	r3, #1
 8001090:	e06f      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
    }
    /* HSI is selected as System Clock Source */
    else
    {
      /* Check the HSI ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8001092:	4b3b      	ldr	r3, [pc, #236]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001094:	681b      	ldr	r3, [r3, #0]
 8001096:	f003 0302 	and.w	r3, r3, #2
 800109a:	2b00      	cmp	r3, #0
 800109c:	d101      	bne.n	80010a2 <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800109e:	2301      	movs	r3, #1
 80010a0:	e067      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
      }
    }

    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 80010a2:	4b37      	ldr	r3, [pc, #220]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 80010a4:	689b      	ldr	r3, [r3, #8]
 80010a6:	f023 0203 	bic.w	r2, r3, #3
 80010aa:	687b      	ldr	r3, [r7, #4]
 80010ac:	685b      	ldr	r3, [r3, #4]
 80010ae:	4934      	ldr	r1, [pc, #208]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 80010b0:	4313      	orrs	r3, r2
 80010b2:	608b      	str	r3, [r1, #8]

    /* Get Start Tick */
    tickstart = HAL_GetTick();
 80010b4:	f7ff fbe8 	bl	8000888 <HAL_GetTick>
 80010b8:	60f8      	str	r0, [r7, #12]

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80010ba:	e00a      	b.n	80010d2 <HAL_RCC_ClockConfig+0x10e>
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 80010bc:	f7ff fbe4 	bl	8000888 <HAL_GetTick>
 80010c0:	4602      	mov	r2, r0
 80010c2:	68fb      	ldr	r3, [r7, #12]
 80010c4:	1ad3      	subs	r3, r2, r3
 80010c6:	f241 3288 	movw	r2, #5000	; 0x1388
 80010ca:	4293      	cmp	r3, r2
 80010cc:	d901      	bls.n	80010d2 <HAL_RCC_ClockConfig+0x10e>
      {
        return HAL_TIMEOUT;
 80010ce:	2303      	movs	r3, #3
 80010d0:	e04f      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80010d2:	4b2b      	ldr	r3, [pc, #172]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 80010d4:	689b      	ldr	r3, [r3, #8]
 80010d6:	f003 020c 	and.w	r2, r3, #12
 80010da:	687b      	ldr	r3, [r7, #4]
 80010dc:	685b      	ldr	r3, [r3, #4]
 80010de:	009b      	lsls	r3, r3, #2
 80010e0:	429a      	cmp	r2, r3
 80010e2:	d1eb      	bne.n	80010bc <HAL_RCC_ClockConfig+0xf8>
      }
    }
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if(FLatency < __HAL_FLASH_GET_LATENCY())
 80010e4:	4b25      	ldr	r3, [pc, #148]	; (800117c <HAL_RCC_ClockConfig+0x1b8>)
 80010e6:	681b      	ldr	r3, [r3, #0]
 80010e8:	f003 0307 	and.w	r3, r3, #7
 80010ec:	683a      	ldr	r2, [r7, #0]
 80010ee:	429a      	cmp	r2, r3
 80010f0:	d20c      	bcs.n	800110c <HAL_RCC_ClockConfig+0x148>
  {
     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 80010f2:	4b22      	ldr	r3, [pc, #136]	; (800117c <HAL_RCC_ClockConfig+0x1b8>)
 80010f4:	683a      	ldr	r2, [r7, #0]
 80010f6:	b2d2      	uxtb	r2, r2
 80010f8:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 80010fa:	4b20      	ldr	r3, [pc, #128]	; (800117c <HAL_RCC_ClockConfig+0x1b8>)
 80010fc:	681b      	ldr	r3, [r3, #0]
 80010fe:	f003 0307 	and.w	r3, r3, #7
 8001102:	683a      	ldr	r2, [r7, #0]
 8001104:	429a      	cmp	r2, r3
 8001106:	d001      	beq.n	800110c <HAL_RCC_ClockConfig+0x148>
    {
      return HAL_ERROR;
 8001108:	2301      	movs	r3, #1
 800110a:	e032      	b.n	8001172 <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- PCLK1 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 800110c:	687b      	ldr	r3, [r7, #4]
 800110e:	681b      	ldr	r3, [r3, #0]
 8001110:	f003 0304 	and.w	r3, r3, #4
 8001114:	2b00      	cmp	r3, #0
 8001116:	d008      	beq.n	800112a <HAL_RCC_ClockConfig+0x166>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8001118:	4b19      	ldr	r3, [pc, #100]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 800111a:	689b      	ldr	r3, [r3, #8]
 800111c:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 8001120:	687b      	ldr	r3, [r7, #4]
 8001122:	68db      	ldr	r3, [r3, #12]
 8001124:	4916      	ldr	r1, [pc, #88]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001126:	4313      	orrs	r3, r2
 8001128:	608b      	str	r3, [r1, #8]
  }

  /*-------------------------- PCLK2 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 800112a:	687b      	ldr	r3, [r7, #4]
 800112c:	681b      	ldr	r3, [r3, #0]
 800112e:	f003 0308 	and.w	r3, r3, #8
 8001132:	2b00      	cmp	r3, #0
 8001134:	d009      	beq.n	800114a <HAL_RCC_ClockConfig+0x186>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 8001136:	4b12      	ldr	r3, [pc, #72]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001138:	689b      	ldr	r3, [r3, #8]
 800113a:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 800113e:	687b      	ldr	r3, [r7, #4]
 8001140:	691b      	ldr	r3, [r3, #16]
 8001142:	00db      	lsls	r3, r3, #3
 8001144:	490e      	ldr	r1, [pc, #56]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001146:	4313      	orrs	r3, r2
 8001148:	608b      	str	r3, [r1, #8]
  }

  /* Update the SystemCoreClock global variable */
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_Pos];
 800114a:	f000 f821 	bl	8001190 <HAL_RCC_GetSysClockFreq>
 800114e:	4602      	mov	r2, r0
 8001150:	4b0b      	ldr	r3, [pc, #44]	; (8001180 <HAL_RCC_ClockConfig+0x1bc>)
 8001152:	689b      	ldr	r3, [r3, #8]
 8001154:	091b      	lsrs	r3, r3, #4
 8001156:	f003 030f 	and.w	r3, r3, #15
 800115a:	490a      	ldr	r1, [pc, #40]	; (8001184 <HAL_RCC_ClockConfig+0x1c0>)
 800115c:	5ccb      	ldrb	r3, [r1, r3]
 800115e:	fa22 f303 	lsr.w	r3, r2, r3
 8001162:	4a09      	ldr	r2, [pc, #36]	; (8001188 <HAL_RCC_ClockConfig+0x1c4>)
 8001164:	6013      	str	r3, [r2, #0]

  /* Configure the source of time base considering new system clocks settings */
  HAL_InitTick (uwTickPrio);
 8001166:	4b09      	ldr	r3, [pc, #36]	; (800118c <HAL_RCC_ClockConfig+0x1c8>)
 8001168:	681b      	ldr	r3, [r3, #0]
 800116a:	4618      	mov	r0, r3
 800116c:	f7ff fb48 	bl	8000800 <HAL_InitTick>

  return HAL_OK;
 8001170:	2300      	movs	r3, #0
}
 8001172:	4618      	mov	r0, r3
 8001174:	3710      	adds	r7, #16
 8001176:	46bd      	mov	sp, r7
 8001178:	bd80      	pop	{r7, pc}
 800117a:	bf00      	nop
 800117c:	40023c00 	.word	0x40023c00
 8001180:	40023800 	.word	0x40023800
 8001184:	0800a280 	.word	0x0800a280
 8001188:	20000000 	.word	0x20000000
 800118c:	20000004 	.word	0x20000004

08001190 <HAL_RCC_GetSysClockFreq>:
  *
  *
  * @retval SYSCLK frequency
  */
__weak uint32_t HAL_RCC_GetSysClockFreq(void)
{
 8001190:	e92d 43b0 	stmdb	sp!, {r4, r5, r7, r8, r9, lr}
 8001194:	b084      	sub	sp, #16
 8001196:	af00      	add	r7, sp, #0
  uint32_t pllm = 0U, pllvco = 0U, pllp = 0U;
 8001198:	2300      	movs	r3, #0
 800119a:	607b      	str	r3, [r7, #4]
 800119c:	2300      	movs	r3, #0
 800119e:	60fb      	str	r3, [r7, #12]
 80011a0:	2300      	movs	r3, #0
 80011a2:	603b      	str	r3, [r7, #0]
  uint32_t sysclockfreq = 0U;
 80011a4:	2300      	movs	r3, #0
 80011a6:	60bb      	str	r3, [r7, #8]

  /* Get SYSCLK source -------------------------------------------------------*/
  switch (RCC->CFGR & RCC_CFGR_SWS)
 80011a8:	4b67      	ldr	r3, [pc, #412]	; (8001348 <HAL_RCC_GetSysClockFreq+0x1b8>)
 80011aa:	689b      	ldr	r3, [r3, #8]
 80011ac:	f003 030c 	and.w	r3, r3, #12
 80011b0:	2b08      	cmp	r3, #8
 80011b2:	d00d      	beq.n	80011d0 <HAL_RCC_GetSysClockFreq+0x40>
 80011b4:	2b08      	cmp	r3, #8
 80011b6:	f200 80bd 	bhi.w	8001334 <HAL_RCC_GetSysClockFreq+0x1a4>
 80011ba:	2b00      	cmp	r3, #0
 80011bc:	d002      	beq.n	80011c4 <HAL_RCC_GetSysClockFreq+0x34>
 80011be:	2b04      	cmp	r3, #4
 80011c0:	d003      	beq.n	80011ca <HAL_RCC_GetSysClockFreq+0x3a>
 80011c2:	e0b7      	b.n	8001334 <HAL_RCC_GetSysClockFreq+0x1a4>
  {
    case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
    {
      sysclockfreq = HSI_VALUE;
 80011c4:	4b61      	ldr	r3, [pc, #388]	; (800134c <HAL_RCC_GetSysClockFreq+0x1bc>)
 80011c6:	60bb      	str	r3, [r7, #8]
       break;
 80011c8:	e0b7      	b.n	800133a <HAL_RCC_GetSysClockFreq+0x1aa>
    }
    case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
    {
      sysclockfreq = HSE_VALUE;
 80011ca:	4b61      	ldr	r3, [pc, #388]	; (8001350 <HAL_RCC_GetSysClockFreq+0x1c0>)
 80011cc:	60bb      	str	r3, [r7, #8]
      break;
 80011ce:	e0b4      	b.n	800133a <HAL_RCC_GetSysClockFreq+0x1aa>
    }
    case RCC_CFGR_SWS_PLL:  /* PLL used as system clock  source */
    {
      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
      SYSCLK = PLL_VCO / PLLP */
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 80011d0:	4b5d      	ldr	r3, [pc, #372]	; (8001348 <HAL_RCC_GetSysClockFreq+0x1b8>)
 80011d2:	685b      	ldr	r3, [r3, #4]
 80011d4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80011d8:	607b      	str	r3, [r7, #4]
      if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
 80011da:	4b5b      	ldr	r3, [pc, #364]	; (8001348 <HAL_RCC_GetSysClockFreq+0x1b8>)
 80011dc:	685b      	ldr	r3, [r3, #4]
 80011de:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80011e2:	2b00      	cmp	r3, #0
 80011e4:	d04d      	beq.n	8001282 <HAL_RCC_GetSysClockFreq+0xf2>
      {
        /* HSE used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 80011e6:	4b58      	ldr	r3, [pc, #352]	; (8001348 <HAL_RCC_GetSysClockFreq+0x1b8>)
 80011e8:	685b      	ldr	r3, [r3, #4]
 80011ea:	099b      	lsrs	r3, r3, #6
 80011ec:	461a      	mov	r2, r3
 80011ee:	f04f 0300 	mov.w	r3, #0
 80011f2:	f240 10ff 	movw	r0, #511	; 0x1ff
 80011f6:	f04f 0100 	mov.w	r1, #0
 80011fa:	ea02 0800 	and.w	r8, r2, r0
 80011fe:	ea03 0901 	and.w	r9, r3, r1
 8001202:	4640      	mov	r0, r8
 8001204:	4649      	mov	r1, r9
 8001206:	f04f 0200 	mov.w	r2, #0
 800120a:	f04f 0300 	mov.w	r3, #0
 800120e:	014b      	lsls	r3, r1, #5
 8001210:	ea43 63d0 	orr.w	r3, r3, r0, lsr #27
 8001214:	0142      	lsls	r2, r0, #5
 8001216:	4610      	mov	r0, r2
 8001218:	4619      	mov	r1, r3
 800121a:	ebb0 0008 	subs.w	r0, r0, r8
 800121e:	eb61 0109 	sbc.w	r1, r1, r9
 8001222:	f04f 0200 	mov.w	r2, #0
 8001226:	f04f 0300 	mov.w	r3, #0
 800122a:	018b      	lsls	r3, r1, #6
 800122c:	ea43 6390 	orr.w	r3, r3, r0, lsr #26
 8001230:	0182      	lsls	r2, r0, #6
 8001232:	1a12      	subs	r2, r2, r0
 8001234:	eb63 0301 	sbc.w	r3, r3, r1
 8001238:	f04f 0000 	mov.w	r0, #0
 800123c:	f04f 0100 	mov.w	r1, #0
 8001240:	00d9      	lsls	r1, r3, #3
 8001242:	ea41 7152 	orr.w	r1, r1, r2, lsr #29
 8001246:	00d0      	lsls	r0, r2, #3
 8001248:	4602      	mov	r2, r0
 800124a:	460b      	mov	r3, r1
 800124c:	eb12 0208 	adds.w	r2, r2, r8
 8001250:	eb43 0309 	adc.w	r3, r3, r9
 8001254:	f04f 0000 	mov.w	r0, #0
 8001258:	f04f 0100 	mov.w	r1, #0
 800125c:	0259      	lsls	r1, r3, #9
 800125e:	ea41 51d2 	orr.w	r1, r1, r2, lsr #23
 8001262:	0250      	lsls	r0, r2, #9
 8001264:	4602      	mov	r2, r0
 8001266:	460b      	mov	r3, r1
 8001268:	4610      	mov	r0, r2
 800126a:	4619      	mov	r1, r3
 800126c:	687b      	ldr	r3, [r7, #4]
 800126e:	461a      	mov	r2, r3
 8001270:	f04f 0300 	mov.w	r3, #0
 8001274:	f002 f95e 	bl	8003534 <__aeabi_uldivmod>
 8001278:	4602      	mov	r2, r0
 800127a:	460b      	mov	r3, r1
 800127c:	4613      	mov	r3, r2
 800127e:	60fb      	str	r3, [r7, #12]
 8001280:	e04a      	b.n	8001318 <HAL_RCC_GetSysClockFreq+0x188>
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 8001282:	4b31      	ldr	r3, [pc, #196]	; (8001348 <HAL_RCC_GetSysClockFreq+0x1b8>)
 8001284:	685b      	ldr	r3, [r3, #4]
 8001286:	099b      	lsrs	r3, r3, #6
 8001288:	461a      	mov	r2, r3
 800128a:	f04f 0300 	mov.w	r3, #0
 800128e:	f240 10ff 	movw	r0, #511	; 0x1ff
 8001292:	f04f 0100 	mov.w	r1, #0
 8001296:	ea02 0400 	and.w	r4, r2, r0
 800129a:	ea03 0501 	and.w	r5, r3, r1
 800129e:	4620      	mov	r0, r4
 80012a0:	4629      	mov	r1, r5
 80012a2:	f04f 0200 	mov.w	r2, #0
 80012a6:	f04f 0300 	mov.w	r3, #0
 80012aa:	014b      	lsls	r3, r1, #5
 80012ac:	ea43 63d0 	orr.w	r3, r3, r0, lsr #27
 80012b0:	0142      	lsls	r2, r0, #5
 80012b2:	4610      	mov	r0, r2
 80012b4:	4619      	mov	r1, r3
 80012b6:	1b00      	subs	r0, r0, r4
 80012b8:	eb61 0105 	sbc.w	r1, r1, r5
 80012bc:	f04f 0200 	mov.w	r2, #0
 80012c0:	f04f 0300 	mov.w	r3, #0
 80012c4:	018b      	lsls	r3, r1, #6
 80012c6:	ea43 6390 	orr.w	r3, r3, r0, lsr #26
 80012ca:	0182      	lsls	r2, r0, #6
 80012cc:	1a12      	subs	r2, r2, r0
 80012ce:	eb63 0301 	sbc.w	r3, r3, r1
 80012d2:	f04f 0000 	mov.w	r0, #0
 80012d6:	f04f 0100 	mov.w	r1, #0
 80012da:	00d9      	lsls	r1, r3, #3
 80012dc:	ea41 7152 	orr.w	r1, r1, r2, lsr #29
 80012e0:	00d0      	lsls	r0, r2, #3
 80012e2:	4602      	mov	r2, r0
 80012e4:	460b      	mov	r3, r1
 80012e6:	1912      	adds	r2, r2, r4
 80012e8:	eb45 0303 	adc.w	r3, r5, r3
 80012ec:	f04f 0000 	mov.w	r0, #0
 80012f0:	f04f 0100 	mov.w	r1, #0
 80012f4:	0299      	lsls	r1, r3, #10
 80012f6:	ea41 5192 	orr.w	r1, r1, r2, lsr #22
 80012fa:	0290      	lsls	r0, r2, #10
 80012fc:	4602      	mov	r2, r0
 80012fe:	460b      	mov	r3, r1
 8001300:	4610      	mov	r0, r2
 8001302:	4619      	mov	r1, r3
 8001304:	687b      	ldr	r3, [r7, #4]
 8001306:	461a      	mov	r2, r3
 8001308:	f04f 0300 	mov.w	r3, #0
 800130c:	f002 f912 	bl	8003534 <__aeabi_uldivmod>
 8001310:	4602      	mov	r2, r0
 8001312:	460b      	mov	r3, r1
 8001314:	4613      	mov	r3, r2
 8001316:	60fb      	str	r3, [r7, #12]
      }
      pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
 8001318:	4b0b      	ldr	r3, [pc, #44]	; (8001348 <HAL_RCC_GetSysClockFreq+0x1b8>)
 800131a:	685b      	ldr	r3, [r3, #4]
 800131c:	0c1b      	lsrs	r3, r3, #16
 800131e:	f003 0303 	and.w	r3, r3, #3
 8001322:	3301      	adds	r3, #1
 8001324:	005b      	lsls	r3, r3, #1
 8001326:	603b      	str	r3, [r7, #0]

      sysclockfreq = pllvco/pllp;
 8001328:	68fa      	ldr	r2, [r7, #12]
 800132a:	683b      	ldr	r3, [r7, #0]
 800132c:	fbb2 f3f3 	udiv	r3, r2, r3
 8001330:	60bb      	str	r3, [r7, #8]
      break;
 8001332:	e002      	b.n	800133a <HAL_RCC_GetSysClockFreq+0x1aa>
    }
    default:
    {
      sysclockfreq = HSI_VALUE;
 8001334:	4b05      	ldr	r3, [pc, #20]	; (800134c <HAL_RCC_GetSysClockFreq+0x1bc>)
 8001336:	60bb      	str	r3, [r7, #8]
      break;
 8001338:	bf00      	nop
    }
  }
  return sysclockfreq;
 800133a:	68bb      	ldr	r3, [r7, #8]
}
 800133c:	4618      	mov	r0, r3
 800133e:	3710      	adds	r7, #16
 8001340:	46bd      	mov	sp, r7
 8001342:	e8bd 83b0 	ldmia.w	sp!, {r4, r5, r7, r8, r9, pc}
 8001346:	bf00      	nop
 8001348:	40023800 	.word	0x40023800
 800134c:	00f42400 	.word	0x00f42400
 8001350:	007a1200 	.word	0x007a1200

08001354 <HAL_RCC_GetHCLKFreq>:
  * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
 8001354:	b480      	push	{r7}
 8001356:	af00      	add	r7, sp, #0
  return SystemCoreClock;
 8001358:	4b03      	ldr	r3, [pc, #12]	; (8001368 <HAL_RCC_GetHCLKFreq+0x14>)
 800135a:	681b      	ldr	r3, [r3, #0]
}
 800135c:	4618      	mov	r0, r3
 800135e:	46bd      	mov	sp, r7
 8001360:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001364:	4770      	bx	lr
 8001366:	bf00      	nop
 8001368:	20000000 	.word	0x20000000

0800136c <HAL_RCC_GetPCLK1Freq>:
  * @note   Each time PCLK1 changes, this function must be called to update the
  *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
 800136c:	b580      	push	{r7, lr}
 800136e:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> RCC_CFGR_PPRE1_Pos]);
 8001370:	f7ff fff0 	bl	8001354 <HAL_RCC_GetHCLKFreq>
 8001374:	4602      	mov	r2, r0
 8001376:	4b05      	ldr	r3, [pc, #20]	; (800138c <HAL_RCC_GetPCLK1Freq+0x20>)
 8001378:	689b      	ldr	r3, [r3, #8]
 800137a:	0a9b      	lsrs	r3, r3, #10
 800137c:	f003 0307 	and.w	r3, r3, #7
 8001380:	4903      	ldr	r1, [pc, #12]	; (8001390 <HAL_RCC_GetPCLK1Freq+0x24>)
 8001382:	5ccb      	ldrb	r3, [r1, r3]
 8001384:	fa22 f303 	lsr.w	r3, r2, r3
}
 8001388:	4618      	mov	r0, r3
 800138a:	bd80      	pop	{r7, pc}
 800138c:	40023800 	.word	0x40023800
 8001390:	0800a290 	.word	0x0800a290

08001394 <HAL_RCC_GetPCLK2Freq>:
  * @note   Each time PCLK2 changes, this function must be called to update the
  *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
 8001394:	b580      	push	{r7, lr}
 8001396:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> RCC_CFGR_PPRE2_Pos]);
 8001398:	f7ff ffdc 	bl	8001354 <HAL_RCC_GetHCLKFreq>
 800139c:	4602      	mov	r2, r0
 800139e:	4b05      	ldr	r3, [pc, #20]	; (80013b4 <HAL_RCC_GetPCLK2Freq+0x20>)
 80013a0:	689b      	ldr	r3, [r3, #8]
 80013a2:	0b5b      	lsrs	r3, r3, #13
 80013a4:	f003 0307 	and.w	r3, r3, #7
 80013a8:	4903      	ldr	r1, [pc, #12]	; (80013b8 <HAL_RCC_GetPCLK2Freq+0x24>)
 80013aa:	5ccb      	ldrb	r3, [r1, r3]
 80013ac:	fa22 f303 	lsr.w	r3, r2, r3
}
 80013b0:	4618      	mov	r0, r3
 80013b2:	bd80      	pop	{r7, pc}
 80013b4:	40023800 	.word	0x40023800
 80013b8:	0800a290 	.word	0x0800a290

080013bc <HAL_DMA_Init>:
  * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
  *               the configuration information for the specified DMA Stream.  
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
{
 80013bc:	b580      	push	{r7, lr}
 80013be:	b086      	sub	sp, #24
 80013c0:	af00      	add	r7, sp, #0
 80013c2:	6078      	str	r0, [r7, #4]
  uint32_t tmp = 0U;
 80013c4:	2300      	movs	r3, #0
 80013c6:	617b      	str	r3, [r7, #20]
  uint32_t tickstart = HAL_GetTick();
 80013c8:	f7ff fa5e 	bl	8000888 <HAL_GetTick>
 80013cc:	6138      	str	r0, [r7, #16]
  DMA_Base_Registers *regs;

  /* Check the DMA peripheral state */
  if(hdma == NULL)
 80013ce:	687b      	ldr	r3, [r7, #4]
 80013d0:	2b00      	cmp	r3, #0
 80013d2:	d101      	bne.n	80013d8 <HAL_DMA_Init+0x1c>
  {
    return HAL_ERROR;
 80013d4:	2301      	movs	r3, #1
 80013d6:	e099      	b.n	800150c <HAL_DMA_Init+0x150>
    assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
    assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
  }
  
  /* Allocate lock resource */
  __HAL_UNLOCK(hdma);
 80013d8:	687b      	ldr	r3, [r7, #4]
 80013da:	2200      	movs	r2, #0
 80013dc:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34

  /* Change DMA peripheral state */
  hdma->State = HAL_DMA_STATE_BUSY;
 80013e0:	687b      	ldr	r3, [r7, #4]
 80013e2:	2202      	movs	r2, #2
 80013e4:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
  
  /* Disable the peripheral */
  __HAL_DMA_DISABLE(hdma);
 80013e8:	687b      	ldr	r3, [r7, #4]
 80013ea:	681b      	ldr	r3, [r3, #0]
 80013ec:	681a      	ldr	r2, [r3, #0]
 80013ee:	687b      	ldr	r3, [r7, #4]
 80013f0:	681b      	ldr	r3, [r3, #0]
 80013f2:	f022 0201 	bic.w	r2, r2, #1
 80013f6:	601a      	str	r2, [r3, #0]
  
  /* Check if the DMA Stream is effectively disabled */
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 80013f8:	e00f      	b.n	800141a <HAL_DMA_Init+0x5e>
  {
    /* Check for the Timeout */
    if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 80013fa:	f7ff fa45 	bl	8000888 <HAL_GetTick>
 80013fe:	4602      	mov	r2, r0
 8001400:	693b      	ldr	r3, [r7, #16]
 8001402:	1ad3      	subs	r3, r2, r3
 8001404:	2b05      	cmp	r3, #5
 8001406:	d908      	bls.n	800141a <HAL_DMA_Init+0x5e>
    {
      /* Update error code */
      hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 8001408:	687b      	ldr	r3, [r7, #4]
 800140a:	2220      	movs	r2, #32
 800140c:	655a      	str	r2, [r3, #84]	; 0x54
      
      /* Change the DMA state */
      hdma->State = HAL_DMA_STATE_TIMEOUT;
 800140e:	687b      	ldr	r3, [r7, #4]
 8001410:	2203      	movs	r2, #3
 8001412:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
      
      return HAL_TIMEOUT;
 8001416:	2303      	movs	r3, #3
 8001418:	e078      	b.n	800150c <HAL_DMA_Init+0x150>
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 800141a:	687b      	ldr	r3, [r7, #4]
 800141c:	681b      	ldr	r3, [r3, #0]
 800141e:	681b      	ldr	r3, [r3, #0]
 8001420:	f003 0301 	and.w	r3, r3, #1
 8001424:	2b00      	cmp	r3, #0
 8001426:	d1e8      	bne.n	80013fa <HAL_DMA_Init+0x3e>
    }
  }
  
  /* Get the CR register value */
  tmp = hdma->Instance->CR;
 8001428:	687b      	ldr	r3, [r7, #4]
 800142a:	681b      	ldr	r3, [r3, #0]
 800142c:	681b      	ldr	r3, [r3, #0]
 800142e:	617b      	str	r3, [r7, #20]

  /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
  tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
 8001430:	697a      	ldr	r2, [r7, #20]
 8001432:	4b38      	ldr	r3, [pc, #224]	; (8001514 <HAL_DMA_Init+0x158>)
 8001434:	4013      	ands	r3, r2
 8001436:	617b      	str	r3, [r7, #20]
                      DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
                      DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \
                      DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));

  /* Prepare the DMA Stream configuration */
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001438:	687b      	ldr	r3, [r7, #4]
 800143a:	685a      	ldr	r2, [r3, #4]
 800143c:	687b      	ldr	r3, [r7, #4]
 800143e:	689b      	ldr	r3, [r3, #8]
 8001440:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8001442:	687b      	ldr	r3, [r7, #4]
 8001444:	68db      	ldr	r3, [r3, #12]
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001446:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8001448:	687b      	ldr	r3, [r7, #4]
 800144a:	691b      	ldr	r3, [r3, #16]
 800144c:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 800144e:	687b      	ldr	r3, [r7, #4]
 8001450:	695b      	ldr	r3, [r3, #20]
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8001452:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8001454:	687b      	ldr	r3, [r7, #4]
 8001456:	699b      	ldr	r3, [r3, #24]
 8001458:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 800145a:	687b      	ldr	r3, [r7, #4]
 800145c:	69db      	ldr	r3, [r3, #28]
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 800145e:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 8001460:	687b      	ldr	r3, [r7, #4]
 8001462:	6a1b      	ldr	r3, [r3, #32]
 8001464:	4313      	orrs	r3, r2
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001466:	697a      	ldr	r2, [r7, #20]
 8001468:	4313      	orrs	r3, r2
 800146a:	617b      	str	r3, [r7, #20]

  /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 800146c:	687b      	ldr	r3, [r7, #4]
 800146e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001470:	2b04      	cmp	r3, #4
 8001472:	d107      	bne.n	8001484 <HAL_DMA_Init+0xc8>
  {
    /* Get memory burst and peripheral burst */
    tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
 8001474:	687b      	ldr	r3, [r7, #4]
 8001476:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001478:	687b      	ldr	r3, [r7, #4]
 800147a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800147c:	4313      	orrs	r3, r2
 800147e:	697a      	ldr	r2, [r7, #20]
 8001480:	4313      	orrs	r3, r2
 8001482:	617b      	str	r3, [r7, #20]
  }
  
  /* Write to DMA Stream CR register */
  hdma->Instance->CR = tmp;  
 8001484:	687b      	ldr	r3, [r7, #4]
 8001486:	681b      	ldr	r3, [r3, #0]
 8001488:	697a      	ldr	r2, [r7, #20]
 800148a:	601a      	str	r2, [r3, #0]

  /* Get the FCR register value */
  tmp = hdma->Instance->FCR;
 800148c:	687b      	ldr	r3, [r7, #4]
 800148e:	681b      	ldr	r3, [r3, #0]
 8001490:	695b      	ldr	r3, [r3, #20]
 8001492:	617b      	str	r3, [r7, #20]

  /* Clear Direct mode and FIFO threshold bits */
  tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
 8001494:	697b      	ldr	r3, [r7, #20]
 8001496:	f023 0307 	bic.w	r3, r3, #7
 800149a:	617b      	str	r3, [r7, #20]

  /* Prepare the DMA Stream FIFO configuration */
  tmp |= hdma->Init.FIFOMode;
 800149c:	687b      	ldr	r3, [r7, #4]
 800149e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80014a0:	697a      	ldr	r2, [r7, #20]
 80014a2:	4313      	orrs	r3, r2
 80014a4:	617b      	str	r3, [r7, #20]

  /* The FIFO threshold is not used when the FIFO mode is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 80014a6:	687b      	ldr	r3, [r7, #4]
 80014a8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80014aa:	2b04      	cmp	r3, #4
 80014ac:	d117      	bne.n	80014de <HAL_DMA_Init+0x122>
  {
    /* Get the FIFO threshold */
    tmp |= hdma->Init.FIFOThreshold;
 80014ae:	687b      	ldr	r3, [r7, #4]
 80014b0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80014b2:	697a      	ldr	r2, [r7, #20]
 80014b4:	4313      	orrs	r3, r2
 80014b6:	617b      	str	r3, [r7, #20]
    
    /* Check compatibility between FIFO threshold level and size of the memory burst */
    /* for INCR4, INCR8, INCR16 bursts */
    if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
 80014b8:	687b      	ldr	r3, [r7, #4]
 80014ba:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014bc:	2b00      	cmp	r3, #0
 80014be:	d00e      	beq.n	80014de <HAL_DMA_Init+0x122>
    {
      if (DMA_CheckFifoParam(hdma) != HAL_OK)
 80014c0:	6878      	ldr	r0, [r7, #4]
 80014c2:	f000 f85f 	bl	8001584 <DMA_CheckFifoParam>
 80014c6:	4603      	mov	r3, r0
 80014c8:	2b00      	cmp	r3, #0
 80014ca:	d008      	beq.n	80014de <HAL_DMA_Init+0x122>
      {
        /* Update error code */
        hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
 80014cc:	687b      	ldr	r3, [r7, #4]
 80014ce:	2240      	movs	r2, #64	; 0x40
 80014d0:	655a      	str	r2, [r3, #84]	; 0x54
        
        /* Change the DMA state */
        hdma->State = HAL_DMA_STATE_READY;
 80014d2:	687b      	ldr	r3, [r7, #4]
 80014d4:	2201      	movs	r2, #1
 80014d6:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
        
        return HAL_ERROR; 
 80014da:	2301      	movs	r3, #1
 80014dc:	e016      	b.n	800150c <HAL_DMA_Init+0x150>
      }
    }
  }
  
  /* Write to DMA Stream FCR */
  hdma->Instance->FCR = tmp;
 80014de:	687b      	ldr	r3, [r7, #4]
 80014e0:	681b      	ldr	r3, [r3, #0]
 80014e2:	697a      	ldr	r2, [r7, #20]
 80014e4:	615a      	str	r2, [r3, #20]

  /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
     DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
  regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 80014e6:	6878      	ldr	r0, [r7, #4]
 80014e8:	f000 f816 	bl	8001518 <DMA_CalcBaseAndBitshift>
 80014ec:	4603      	mov	r3, r0
 80014ee:	60fb      	str	r3, [r7, #12]
  
  /* Clear all interrupt flags */
  regs->IFCR = 0x3FU << hdma->StreamIndex;
 80014f0:	687b      	ldr	r3, [r7, #4]
 80014f2:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 80014f4:	223f      	movs	r2, #63	; 0x3f
 80014f6:	409a      	lsls	r2, r3
 80014f8:	68fb      	ldr	r3, [r7, #12]
 80014fa:	609a      	str	r2, [r3, #8]

  /* Initialize the error code */
  hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 80014fc:	687b      	ldr	r3, [r7, #4]
 80014fe:	2200      	movs	r2, #0
 8001500:	655a      	str	r2, [r3, #84]	; 0x54
                                                                                     
  /* Initialize the DMA state */
  hdma->State = HAL_DMA_STATE_READY;
 8001502:	687b      	ldr	r3, [r7, #4]
 8001504:	2201      	movs	r2, #1
 8001506:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35

  return HAL_OK;
 800150a:	2300      	movs	r3, #0
}
 800150c:	4618      	mov	r0, r3
 800150e:	3718      	adds	r7, #24
 8001510:	46bd      	mov	sp, r7
 8001512:	bd80      	pop	{r7, pc}
 8001514:	f010803f 	.word	0xf010803f

08001518 <DMA_CalcBaseAndBitshift>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval Stream base address
  */
static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
{
 8001518:	b480      	push	{r7}
 800151a:	b085      	sub	sp, #20
 800151c:	af00      	add	r7, sp, #0
 800151e:	6078      	str	r0, [r7, #4]
  uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
 8001520:	687b      	ldr	r3, [r7, #4]
 8001522:	681b      	ldr	r3, [r3, #0]
 8001524:	b2db      	uxtb	r3, r3
 8001526:	3b10      	subs	r3, #16
 8001528:	4a14      	ldr	r2, [pc, #80]	; (800157c <DMA_CalcBaseAndBitshift+0x64>)
 800152a:	fba2 2303 	umull	r2, r3, r2, r3
 800152e:	091b      	lsrs	r3, r3, #4
 8001530:	60fb      	str	r3, [r7, #12]
  
  /* lookup table for necessary bitshift of flags within status registers */
  static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
  hdma->StreamIndex = flagBitshiftOffset[stream_number];
 8001532:	4a13      	ldr	r2, [pc, #76]	; (8001580 <DMA_CalcBaseAndBitshift+0x68>)
 8001534:	68fb      	ldr	r3, [r7, #12]
 8001536:	4413      	add	r3, r2
 8001538:	781b      	ldrb	r3, [r3, #0]
 800153a:	461a      	mov	r2, r3
 800153c:	687b      	ldr	r3, [r7, #4]
 800153e:	65da      	str	r2, [r3, #92]	; 0x5c
  
  if (stream_number > 3U)
 8001540:	68fb      	ldr	r3, [r7, #12]
 8001542:	2b03      	cmp	r3, #3
 8001544:	d909      	bls.n	800155a <DMA_CalcBaseAndBitshift+0x42>
  {
    /* return pointer to HISR and HIFCR */
    hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
 8001546:	687b      	ldr	r3, [r7, #4]
 8001548:	681b      	ldr	r3, [r3, #0]
 800154a:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 800154e:	f023 0303 	bic.w	r3, r3, #3
 8001552:	1d1a      	adds	r2, r3, #4
 8001554:	687b      	ldr	r3, [r7, #4]
 8001556:	659a      	str	r2, [r3, #88]	; 0x58
 8001558:	e007      	b.n	800156a <DMA_CalcBaseAndBitshift+0x52>
  }
  else
  {
    /* return pointer to LISR and LIFCR */
    hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
 800155a:	687b      	ldr	r3, [r7, #4]
 800155c:	681b      	ldr	r3, [r3, #0]
 800155e:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8001562:	f023 0303 	bic.w	r3, r3, #3
 8001566:	687a      	ldr	r2, [r7, #4]
 8001568:	6593      	str	r3, [r2, #88]	; 0x58
  }
  
  return hdma->StreamBaseAddress;
 800156a:	687b      	ldr	r3, [r7, #4]
 800156c:	6d9b      	ldr	r3, [r3, #88]	; 0x58
}
 800156e:	4618      	mov	r0, r3
 8001570:	3714      	adds	r7, #20
 8001572:	46bd      	mov	sp, r7
 8001574:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001578:	4770      	bx	lr
 800157a:	bf00      	nop
 800157c:	aaaaaaab 	.word	0xaaaaaaab
 8001580:	0800a298 	.word	0x0800a298

08001584 <DMA_CheckFifoParam>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval HAL status
  */
static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
{
 8001584:	b480      	push	{r7}
 8001586:	b085      	sub	sp, #20
 8001588:	af00      	add	r7, sp, #0
 800158a:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef status = HAL_OK;
 800158c:	2300      	movs	r3, #0
 800158e:	73fb      	strb	r3, [r7, #15]
  uint32_t tmp = hdma->Init.FIFOThreshold;
 8001590:	687b      	ldr	r3, [r7, #4]
 8001592:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001594:	60bb      	str	r3, [r7, #8]
  
  /* Memory Data size equal to Byte */
  if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
 8001596:	687b      	ldr	r3, [r7, #4]
 8001598:	699b      	ldr	r3, [r3, #24]
 800159a:	2b00      	cmp	r3, #0
 800159c:	d11f      	bne.n	80015de <DMA_CheckFifoParam+0x5a>
 800159e:	68bb      	ldr	r3, [r7, #8]
 80015a0:	2b03      	cmp	r3, #3
 80015a2:	d856      	bhi.n	8001652 <DMA_CheckFifoParam+0xce>
 80015a4:	a201      	add	r2, pc, #4	; (adr r2, 80015ac <DMA_CheckFifoParam+0x28>)
 80015a6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80015aa:	bf00      	nop
 80015ac:	080015bd 	.word	0x080015bd
 80015b0:	080015cf 	.word	0x080015cf
 80015b4:	080015bd 	.word	0x080015bd
 80015b8:	08001653 	.word	0x08001653
  {
    switch (tmp)
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 80015bc:	687b      	ldr	r3, [r7, #4]
 80015be:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015c0:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 80015c4:	2b00      	cmp	r3, #0
 80015c6:	d046      	beq.n	8001656 <DMA_CheckFifoParam+0xd2>
      {
        status = HAL_ERROR;
 80015c8:	2301      	movs	r3, #1
 80015ca:	73fb      	strb	r3, [r7, #15]
      }
      break;
 80015cc:	e043      	b.n	8001656 <DMA_CheckFifoParam+0xd2>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 80015ce:	687b      	ldr	r3, [r7, #4]
 80015d0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80015d2:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 80015d6:	d140      	bne.n	800165a <DMA_CheckFifoParam+0xd6>
      {
        status = HAL_ERROR;
 80015d8:	2301      	movs	r3, #1
 80015da:	73fb      	strb	r3, [r7, #15]
      }
      break;
 80015dc:	e03d      	b.n	800165a <DMA_CheckFifoParam+0xd6>
      break;
    }
  }
  
  /* Memory Data size equal to Half-Word */
  else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
 80015de:	687b      	ldr	r3, [r7, #4]
 80015e0:	699b      	ldr	r3, [r3, #24]
 80015e2:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 80015e6:	d121      	bne.n	800162c <DMA_CheckFifoParam+0xa8>
 80015e8:	68bb      	ldr	r3, [r7, #8]
 80015ea:	2b03      	cmp	r3, #3
 80015ec:	d837      	bhi.n	800165e <DMA_CheckFifoParam+0xda>
 80015ee:	a201      	add	r2, pc, #4	; (adr r2, 80015f4 <DMA_CheckFifoParam+0x70>)
 80015f0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80015f4:	08001605 	.word	0x08001605
 80015f8:	0800160b 	.word	0x0800160b
 80015fc:	08001605 	.word	0x08001605
 8001600:	0800161d 	.word	0x0800161d
  {
    switch (tmp)
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      status = HAL_ERROR;
 8001604:	2301      	movs	r3, #1
 8001606:	73fb      	strb	r3, [r7, #15]
      break;
 8001608:	e030      	b.n	800166c <DMA_CheckFifoParam+0xe8>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 800160a:	687b      	ldr	r3, [r7, #4]
 800160c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800160e:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001612:	2b00      	cmp	r3, #0
 8001614:	d025      	beq.n	8001662 <DMA_CheckFifoParam+0xde>
      {
        status = HAL_ERROR;
 8001616:	2301      	movs	r3, #1
 8001618:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800161a:	e022      	b.n	8001662 <DMA_CheckFifoParam+0xde>
    case DMA_FIFO_THRESHOLD_FULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 800161c:	687b      	ldr	r3, [r7, #4]
 800161e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001620:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001624:	d11f      	bne.n	8001666 <DMA_CheckFifoParam+0xe2>
      {
        status = HAL_ERROR;
 8001626:	2301      	movs	r3, #1
 8001628:	73fb      	strb	r3, [r7, #15]
      }
      break;   
 800162a:	e01c      	b.n	8001666 <DMA_CheckFifoParam+0xe2>
  }
  
  /* Memory Data size equal to Word */
  else
  {
    switch (tmp)
 800162c:	68bb      	ldr	r3, [r7, #8]
 800162e:	2b02      	cmp	r3, #2
 8001630:	d903      	bls.n	800163a <DMA_CheckFifoParam+0xb6>
 8001632:	68bb      	ldr	r3, [r7, #8]
 8001634:	2b03      	cmp	r3, #3
 8001636:	d003      	beq.n	8001640 <DMA_CheckFifoParam+0xbc>
      {
        status = HAL_ERROR;
      }
      break;
    default:
      break;
 8001638:	e018      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      status = HAL_ERROR;
 800163a:	2301      	movs	r3, #1
 800163c:	73fb      	strb	r3, [r7, #15]
      break;
 800163e:	e015      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001640:	687b      	ldr	r3, [r7, #4]
 8001642:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001644:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001648:	2b00      	cmp	r3, #0
 800164a:	d00e      	beq.n	800166a <DMA_CheckFifoParam+0xe6>
        status = HAL_ERROR;
 800164c:	2301      	movs	r3, #1
 800164e:	73fb      	strb	r3, [r7, #15]
      break;
 8001650:	e00b      	b.n	800166a <DMA_CheckFifoParam+0xe6>
      break;
 8001652:	bf00      	nop
 8001654:	e00a      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      break;
 8001656:	bf00      	nop
 8001658:	e008      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      break;
 800165a:	bf00      	nop
 800165c:	e006      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      break;
 800165e:	bf00      	nop
 8001660:	e004      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      break;
 8001662:	bf00      	nop
 8001664:	e002      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      break;   
 8001666:	bf00      	nop
 8001668:	e000      	b.n	800166c <DMA_CheckFifoParam+0xe8>
      break;
 800166a:	bf00      	nop
    }
  } 
  
  return status; 
 800166c:	7bfb      	ldrb	r3, [r7, #15]
}
 800166e:	4618      	mov	r0, r3
 8001670:	3714      	adds	r7, #20
 8001672:	46bd      	mov	sp, r7
 8001674:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001678:	4770      	bx	lr
 800167a:	bf00      	nop

0800167c <HAL_GPIO_Init>:
  * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 800167c:	b480      	push	{r7}
 800167e:	b089      	sub	sp, #36	; 0x24
 8001680:	af00      	add	r7, sp, #0
 8001682:	6078      	str	r0, [r7, #4]
 8001684:	6039      	str	r1, [r7, #0]
  uint32_t position;
  uint32_t ioposition = 0x00U;
 8001686:	2300      	movs	r3, #0
 8001688:	617b      	str	r3, [r7, #20]
  uint32_t iocurrent = 0x00U;
 800168a:	2300      	movs	r3, #0
 800168c:	613b      	str	r3, [r7, #16]
  uint32_t temp = 0x00U;
 800168e:	2300      	movs	r3, #0
 8001690:	61bb      	str	r3, [r7, #24]
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  assert_param(IS_GPIO_PULL(GPIO_Init->Pull));

  /* Configure the port pins */
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001692:	2300      	movs	r3, #0
 8001694:	61fb      	str	r3, [r7, #28]
 8001696:	e159      	b.n	800194c <HAL_GPIO_Init+0x2d0>
  {
    /* Get the IO position */
    ioposition = 0x01U << position;
 8001698:	2201      	movs	r2, #1
 800169a:	69fb      	ldr	r3, [r7, #28]
 800169c:	fa02 f303 	lsl.w	r3, r2, r3
 80016a0:	617b      	str	r3, [r7, #20]
    /* Get the current IO position */
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 80016a2:	683b      	ldr	r3, [r7, #0]
 80016a4:	681b      	ldr	r3, [r3, #0]
 80016a6:	697a      	ldr	r2, [r7, #20]
 80016a8:	4013      	ands	r3, r2
 80016aa:	613b      	str	r3, [r7, #16]

    if(iocurrent == ioposition)
 80016ac:	693a      	ldr	r2, [r7, #16]
 80016ae:	697b      	ldr	r3, [r7, #20]
 80016b0:	429a      	cmp	r2, r3
 80016b2:	f040 8148 	bne.w	8001946 <HAL_GPIO_Init+0x2ca>
    {
      /*--------------------- GPIO Mode Configuration ------------------------*/
      /* In case of Output or Alternate function mode selection */
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 80016b6:	683b      	ldr	r3, [r7, #0]
 80016b8:	685b      	ldr	r3, [r3, #4]
 80016ba:	f003 0303 	and.w	r3, r3, #3
 80016be:	2b01      	cmp	r3, #1
 80016c0:	d005      	beq.n	80016ce <HAL_GPIO_Init+0x52>
          (GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 80016c2:	683b      	ldr	r3, [r7, #0]
 80016c4:	685b      	ldr	r3, [r3, #4]
 80016c6:	f003 0303 	and.w	r3, r3, #3
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 80016ca:	2b02      	cmp	r3, #2
 80016cc:	d130      	bne.n	8001730 <HAL_GPIO_Init+0xb4>
      {
        /* Check the Speed parameter */
        assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
        /* Configure the IO Speed */
        temp = GPIOx->OSPEEDR; 
 80016ce:	687b      	ldr	r3, [r7, #4]
 80016d0:	689b      	ldr	r3, [r3, #8]
 80016d2:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
 80016d4:	69fb      	ldr	r3, [r7, #28]
 80016d6:	005b      	lsls	r3, r3, #1
 80016d8:	2203      	movs	r2, #3
 80016da:	fa02 f303 	lsl.w	r3, r2, r3
 80016de:	43db      	mvns	r3, r3
 80016e0:	69ba      	ldr	r2, [r7, #24]
 80016e2:	4013      	ands	r3, r2
 80016e4:	61bb      	str	r3, [r7, #24]
        temp |= (GPIO_Init->Speed << (position * 2U));
 80016e6:	683b      	ldr	r3, [r7, #0]
 80016e8:	68da      	ldr	r2, [r3, #12]
 80016ea:	69fb      	ldr	r3, [r7, #28]
 80016ec:	005b      	lsls	r3, r3, #1
 80016ee:	fa02 f303 	lsl.w	r3, r2, r3
 80016f2:	69ba      	ldr	r2, [r7, #24]
 80016f4:	4313      	orrs	r3, r2
 80016f6:	61bb      	str	r3, [r7, #24]
        GPIOx->OSPEEDR = temp;
 80016f8:	687b      	ldr	r3, [r7, #4]
 80016fa:	69ba      	ldr	r2, [r7, #24]
 80016fc:	609a      	str	r2, [r3, #8]

        /* Configure the IO Output Type */
        temp = GPIOx->OTYPER;
 80016fe:	687b      	ldr	r3, [r7, #4]
 8001700:	685b      	ldr	r3, [r3, #4]
 8001702:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 8001704:	2201      	movs	r2, #1
 8001706:	69fb      	ldr	r3, [r7, #28]
 8001708:	fa02 f303 	lsl.w	r3, r2, r3
 800170c:	43db      	mvns	r3, r3
 800170e:	69ba      	ldr	r2, [r7, #24]
 8001710:	4013      	ands	r3, r2
 8001712:	61bb      	str	r3, [r7, #24]
        temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 8001714:	683b      	ldr	r3, [r7, #0]
 8001716:	685b      	ldr	r3, [r3, #4]
 8001718:	091b      	lsrs	r3, r3, #4
 800171a:	f003 0201 	and.w	r2, r3, #1
 800171e:	69fb      	ldr	r3, [r7, #28]
 8001720:	fa02 f303 	lsl.w	r3, r2, r3
 8001724:	69ba      	ldr	r2, [r7, #24]
 8001726:	4313      	orrs	r3, r2
 8001728:	61bb      	str	r3, [r7, #24]
        GPIOx->OTYPER = temp;
 800172a:	687b      	ldr	r3, [r7, #4]
 800172c:	69ba      	ldr	r2, [r7, #24]
 800172e:	605a      	str	r2, [r3, #4]
       }

      if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
 8001730:	683b      	ldr	r3, [r7, #0]
 8001732:	685b      	ldr	r3, [r3, #4]
 8001734:	f003 0303 	and.w	r3, r3, #3
 8001738:	2b03      	cmp	r3, #3
 800173a:	d017      	beq.n	800176c <HAL_GPIO_Init+0xf0>
      {
        /* Activate the Pull-up or Pull down resistor for the current IO */
        temp = GPIOx->PUPDR;
 800173c:	687b      	ldr	r3, [r7, #4]
 800173e:	68db      	ldr	r3, [r3, #12]
 8001740:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
 8001742:	69fb      	ldr	r3, [r7, #28]
 8001744:	005b      	lsls	r3, r3, #1
 8001746:	2203      	movs	r2, #3
 8001748:	fa02 f303 	lsl.w	r3, r2, r3
 800174c:	43db      	mvns	r3, r3
 800174e:	69ba      	ldr	r2, [r7, #24]
 8001750:	4013      	ands	r3, r2
 8001752:	61bb      	str	r3, [r7, #24]
        temp |= ((GPIO_Init->Pull) << (position * 2U));
 8001754:	683b      	ldr	r3, [r7, #0]
 8001756:	689a      	ldr	r2, [r3, #8]
 8001758:	69fb      	ldr	r3, [r7, #28]
 800175a:	005b      	lsls	r3, r3, #1
 800175c:	fa02 f303 	lsl.w	r3, r2, r3
 8001760:	69ba      	ldr	r2, [r7, #24]
 8001762:	4313      	orrs	r3, r2
 8001764:	61bb      	str	r3, [r7, #24]
        GPIOx->PUPDR = temp;
 8001766:	687b      	ldr	r3, [r7, #4]
 8001768:	69ba      	ldr	r2, [r7, #24]
 800176a:	60da      	str	r2, [r3, #12]
      }

      /* In case of Alternate function mode selection */
      if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 800176c:	683b      	ldr	r3, [r7, #0]
 800176e:	685b      	ldr	r3, [r3, #4]
 8001770:	f003 0303 	and.w	r3, r3, #3
 8001774:	2b02      	cmp	r3, #2
 8001776:	d123      	bne.n	80017c0 <HAL_GPIO_Init+0x144>
      {
        /* Check the Alternate function parameter */
        assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
        /* Configure Alternate function mapped with the current IO */
        temp = GPIOx->AFR[position >> 3U];
 8001778:	69fb      	ldr	r3, [r7, #28]
 800177a:	08da      	lsrs	r2, r3, #3
 800177c:	687b      	ldr	r3, [r7, #4]
 800177e:	3208      	adds	r2, #8
 8001780:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001784:	61bb      	str	r3, [r7, #24]
        temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
 8001786:	69fb      	ldr	r3, [r7, #28]
 8001788:	f003 0307 	and.w	r3, r3, #7
 800178c:	009b      	lsls	r3, r3, #2
 800178e:	220f      	movs	r2, #15
 8001790:	fa02 f303 	lsl.w	r3, r2, r3
 8001794:	43db      	mvns	r3, r3
 8001796:	69ba      	ldr	r2, [r7, #24]
 8001798:	4013      	ands	r3, r2
 800179a:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
 800179c:	683b      	ldr	r3, [r7, #0]
 800179e:	691a      	ldr	r2, [r3, #16]
 80017a0:	69fb      	ldr	r3, [r7, #28]
 80017a2:	f003 0307 	and.w	r3, r3, #7
 80017a6:	009b      	lsls	r3, r3, #2
 80017a8:	fa02 f303 	lsl.w	r3, r2, r3
 80017ac:	69ba      	ldr	r2, [r7, #24]
 80017ae:	4313      	orrs	r3, r2
 80017b0:	61bb      	str	r3, [r7, #24]
        GPIOx->AFR[position >> 3U] = temp;
 80017b2:	69fb      	ldr	r3, [r7, #28]
 80017b4:	08da      	lsrs	r2, r3, #3
 80017b6:	687b      	ldr	r3, [r7, #4]
 80017b8:	3208      	adds	r2, #8
 80017ba:	69b9      	ldr	r1, [r7, #24]
 80017bc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
      }

      /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
      temp = GPIOx->MODER;
 80017c0:	687b      	ldr	r3, [r7, #4]
 80017c2:	681b      	ldr	r3, [r3, #0]
 80017c4:	61bb      	str	r3, [r7, #24]
      temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
 80017c6:	69fb      	ldr	r3, [r7, #28]
 80017c8:	005b      	lsls	r3, r3, #1
 80017ca:	2203      	movs	r2, #3
 80017cc:	fa02 f303 	lsl.w	r3, r2, r3
 80017d0:	43db      	mvns	r3, r3
 80017d2:	69ba      	ldr	r2, [r7, #24]
 80017d4:	4013      	ands	r3, r2
 80017d6:	61bb      	str	r3, [r7, #24]
      temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 80017d8:	683b      	ldr	r3, [r7, #0]
 80017da:	685b      	ldr	r3, [r3, #4]
 80017dc:	f003 0203 	and.w	r2, r3, #3
 80017e0:	69fb      	ldr	r3, [r7, #28]
 80017e2:	005b      	lsls	r3, r3, #1
 80017e4:	fa02 f303 	lsl.w	r3, r2, r3
 80017e8:	69ba      	ldr	r2, [r7, #24]
 80017ea:	4313      	orrs	r3, r2
 80017ec:	61bb      	str	r3, [r7, #24]
      GPIOx->MODER = temp;
 80017ee:	687b      	ldr	r3, [r7, #4]
 80017f0:	69ba      	ldr	r2, [r7, #24]
 80017f2:	601a      	str	r2, [r3, #0]

      /*--------------------- EXTI Mode Configuration ------------------------*/
      /* Configure the External Interrupt or event for the current IO */
      if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 80017f4:	683b      	ldr	r3, [r7, #0]
 80017f6:	685b      	ldr	r3, [r3, #4]
 80017f8:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80017fc:	2b00      	cmp	r3, #0
 80017fe:	f000 80a2 	beq.w	8001946 <HAL_GPIO_Init+0x2ca>
      {
        /* Enable SYSCFG Clock */
        __HAL_RCC_SYSCFG_CLK_ENABLE();
 8001802:	2300      	movs	r3, #0
 8001804:	60fb      	str	r3, [r7, #12]
 8001806:	4b57      	ldr	r3, [pc, #348]	; (8001964 <HAL_GPIO_Init+0x2e8>)
 8001808:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800180a:	4a56      	ldr	r2, [pc, #344]	; (8001964 <HAL_GPIO_Init+0x2e8>)
 800180c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001810:	6453      	str	r3, [r2, #68]	; 0x44
 8001812:	4b54      	ldr	r3, [pc, #336]	; (8001964 <HAL_GPIO_Init+0x2e8>)
 8001814:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001816:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 800181a:	60fb      	str	r3, [r7, #12]
 800181c:	68fb      	ldr	r3, [r7, #12]

        temp = SYSCFG->EXTICR[position >> 2U];
 800181e:	4a52      	ldr	r2, [pc, #328]	; (8001968 <HAL_GPIO_Init+0x2ec>)
 8001820:	69fb      	ldr	r3, [r7, #28]
 8001822:	089b      	lsrs	r3, r3, #2
 8001824:	3302      	adds	r3, #2
 8001826:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800182a:	61bb      	str	r3, [r7, #24]
        temp &= ~(0x0FU << (4U * (position & 0x03U)));
 800182c:	69fb      	ldr	r3, [r7, #28]
 800182e:	f003 0303 	and.w	r3, r3, #3
 8001832:	009b      	lsls	r3, r3, #2
 8001834:	220f      	movs	r2, #15
 8001836:	fa02 f303 	lsl.w	r3, r2, r3
 800183a:	43db      	mvns	r3, r3
 800183c:	69ba      	ldr	r2, [r7, #24]
 800183e:	4013      	ands	r3, r2
 8001840:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
 8001842:	687b      	ldr	r3, [r7, #4]
 8001844:	4a49      	ldr	r2, [pc, #292]	; (800196c <HAL_GPIO_Init+0x2f0>)
 8001846:	4293      	cmp	r3, r2
 8001848:	d019      	beq.n	800187e <HAL_GPIO_Init+0x202>
 800184a:	687b      	ldr	r3, [r7, #4]
 800184c:	4a48      	ldr	r2, [pc, #288]	; (8001970 <HAL_GPIO_Init+0x2f4>)
 800184e:	4293      	cmp	r3, r2
 8001850:	d013      	beq.n	800187a <HAL_GPIO_Init+0x1fe>
 8001852:	687b      	ldr	r3, [r7, #4]
 8001854:	4a47      	ldr	r2, [pc, #284]	; (8001974 <HAL_GPIO_Init+0x2f8>)
 8001856:	4293      	cmp	r3, r2
 8001858:	d00d      	beq.n	8001876 <HAL_GPIO_Init+0x1fa>
 800185a:	687b      	ldr	r3, [r7, #4]
 800185c:	4a46      	ldr	r2, [pc, #280]	; (8001978 <HAL_GPIO_Init+0x2fc>)
 800185e:	4293      	cmp	r3, r2
 8001860:	d007      	beq.n	8001872 <HAL_GPIO_Init+0x1f6>
 8001862:	687b      	ldr	r3, [r7, #4]
 8001864:	4a45      	ldr	r2, [pc, #276]	; (800197c <HAL_GPIO_Init+0x300>)
 8001866:	4293      	cmp	r3, r2
 8001868:	d101      	bne.n	800186e <HAL_GPIO_Init+0x1f2>
 800186a:	2304      	movs	r3, #4
 800186c:	e008      	b.n	8001880 <HAL_GPIO_Init+0x204>
 800186e:	2307      	movs	r3, #7
 8001870:	e006      	b.n	8001880 <HAL_GPIO_Init+0x204>
 8001872:	2303      	movs	r3, #3
 8001874:	e004      	b.n	8001880 <HAL_GPIO_Init+0x204>
 8001876:	2302      	movs	r3, #2
 8001878:	e002      	b.n	8001880 <HAL_GPIO_Init+0x204>
 800187a:	2301      	movs	r3, #1
 800187c:	e000      	b.n	8001880 <HAL_GPIO_Init+0x204>
 800187e:	2300      	movs	r3, #0
 8001880:	69fa      	ldr	r2, [r7, #28]
 8001882:	f002 0203 	and.w	r2, r2, #3
 8001886:	0092      	lsls	r2, r2, #2
 8001888:	4093      	lsls	r3, r2
 800188a:	69ba      	ldr	r2, [r7, #24]
 800188c:	4313      	orrs	r3, r2
 800188e:	61bb      	str	r3, [r7, #24]
        SYSCFG->EXTICR[position >> 2U] = temp;
 8001890:	4935      	ldr	r1, [pc, #212]	; (8001968 <HAL_GPIO_Init+0x2ec>)
 8001892:	69fb      	ldr	r3, [r7, #28]
 8001894:	089b      	lsrs	r3, r3, #2
 8001896:	3302      	adds	r3, #2
 8001898:	69ba      	ldr	r2, [r7, #24]
 800189a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]

        /* Clear EXTI line configuration */
        temp = EXTI->IMR;
 800189e:	4b38      	ldr	r3, [pc, #224]	; (8001980 <HAL_GPIO_Init+0x304>)
 80018a0:	681b      	ldr	r3, [r3, #0]
 80018a2:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 80018a4:	693b      	ldr	r3, [r7, #16]
 80018a6:	43db      	mvns	r3, r3
 80018a8:	69ba      	ldr	r2, [r7, #24]
 80018aa:	4013      	ands	r3, r2
 80018ac:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 80018ae:	683b      	ldr	r3, [r7, #0]
 80018b0:	685b      	ldr	r3, [r3, #4]
 80018b2:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 80018b6:	2b00      	cmp	r3, #0
 80018b8:	d003      	beq.n	80018c2 <HAL_GPIO_Init+0x246>
        {
          temp |= iocurrent;
 80018ba:	69ba      	ldr	r2, [r7, #24]
 80018bc:	693b      	ldr	r3, [r7, #16]
 80018be:	4313      	orrs	r3, r2
 80018c0:	61bb      	str	r3, [r7, #24]
        }
        EXTI->IMR = temp;
 80018c2:	4a2f      	ldr	r2, [pc, #188]	; (8001980 <HAL_GPIO_Init+0x304>)
 80018c4:	69bb      	ldr	r3, [r7, #24]
 80018c6:	6013      	str	r3, [r2, #0]

        temp = EXTI->EMR;
 80018c8:	4b2d      	ldr	r3, [pc, #180]	; (8001980 <HAL_GPIO_Init+0x304>)
 80018ca:	685b      	ldr	r3, [r3, #4]
 80018cc:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 80018ce:	693b      	ldr	r3, [r7, #16]
 80018d0:	43db      	mvns	r3, r3
 80018d2:	69ba      	ldr	r2, [r7, #24]
 80018d4:	4013      	ands	r3, r2
 80018d6:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 80018d8:	683b      	ldr	r3, [r7, #0]
 80018da:	685b      	ldr	r3, [r3, #4]
 80018dc:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80018e0:	2b00      	cmp	r3, #0
 80018e2:	d003      	beq.n	80018ec <HAL_GPIO_Init+0x270>
        {
          temp |= iocurrent;
 80018e4:	69ba      	ldr	r2, [r7, #24]
 80018e6:	693b      	ldr	r3, [r7, #16]
 80018e8:	4313      	orrs	r3, r2
 80018ea:	61bb      	str	r3, [r7, #24]
        }
        EXTI->EMR = temp;
 80018ec:	4a24      	ldr	r2, [pc, #144]	; (8001980 <HAL_GPIO_Init+0x304>)
 80018ee:	69bb      	ldr	r3, [r7, #24]
 80018f0:	6053      	str	r3, [r2, #4]

        /* Clear Rising Falling edge configuration */
        temp = EXTI->RTSR;
 80018f2:	4b23      	ldr	r3, [pc, #140]	; (8001980 <HAL_GPIO_Init+0x304>)
 80018f4:	689b      	ldr	r3, [r3, #8]
 80018f6:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 80018f8:	693b      	ldr	r3, [r7, #16]
 80018fa:	43db      	mvns	r3, r3
 80018fc:	69ba      	ldr	r2, [r7, #24]
 80018fe:	4013      	ands	r3, r2
 8001900:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8001902:	683b      	ldr	r3, [r7, #0]
 8001904:	685b      	ldr	r3, [r3, #4]
 8001906:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 800190a:	2b00      	cmp	r3, #0
 800190c:	d003      	beq.n	8001916 <HAL_GPIO_Init+0x29a>
        {
          temp |= iocurrent;
 800190e:	69ba      	ldr	r2, [r7, #24]
 8001910:	693b      	ldr	r3, [r7, #16]
 8001912:	4313      	orrs	r3, r2
 8001914:	61bb      	str	r3, [r7, #24]
        }
        EXTI->RTSR = temp;
 8001916:	4a1a      	ldr	r2, [pc, #104]	; (8001980 <HAL_GPIO_Init+0x304>)
 8001918:	69bb      	ldr	r3, [r7, #24]
 800191a:	6093      	str	r3, [r2, #8]

        temp = EXTI->FTSR;
 800191c:	4b18      	ldr	r3, [pc, #96]	; (8001980 <HAL_GPIO_Init+0x304>)
 800191e:	68db      	ldr	r3, [r3, #12]
 8001920:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001922:	693b      	ldr	r3, [r7, #16]
 8001924:	43db      	mvns	r3, r3
 8001926:	69ba      	ldr	r2, [r7, #24]
 8001928:	4013      	ands	r3, r2
 800192a:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 800192c:	683b      	ldr	r3, [r7, #0]
 800192e:	685b      	ldr	r3, [r3, #4]
 8001930:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8001934:	2b00      	cmp	r3, #0
 8001936:	d003      	beq.n	8001940 <HAL_GPIO_Init+0x2c4>
        {
          temp |= iocurrent;
 8001938:	69ba      	ldr	r2, [r7, #24]
 800193a:	693b      	ldr	r3, [r7, #16]
 800193c:	4313      	orrs	r3, r2
 800193e:	61bb      	str	r3, [r7, #24]
        }
        EXTI->FTSR = temp;
 8001940:	4a0f      	ldr	r2, [pc, #60]	; (8001980 <HAL_GPIO_Init+0x304>)
 8001942:	69bb      	ldr	r3, [r7, #24]
 8001944:	60d3      	str	r3, [r2, #12]
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001946:	69fb      	ldr	r3, [r7, #28]
 8001948:	3301      	adds	r3, #1
 800194a:	61fb      	str	r3, [r7, #28]
 800194c:	69fb      	ldr	r3, [r7, #28]
 800194e:	2b0f      	cmp	r3, #15
 8001950:	f67f aea2 	bls.w	8001698 <HAL_GPIO_Init+0x1c>
      }
    }
  }
}
 8001954:	bf00      	nop
 8001956:	bf00      	nop
 8001958:	3724      	adds	r7, #36	; 0x24
 800195a:	46bd      	mov	sp, r7
 800195c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001960:	4770      	bx	lr
 8001962:	bf00      	nop
 8001964:	40023800 	.word	0x40023800
 8001968:	40013800 	.word	0x40013800
 800196c:	40020000 	.word	0x40020000
 8001970:	40020400 	.word	0x40020400
 8001974:	40020800 	.word	0x40020800
 8001978:	40020c00 	.word	0x40020c00
 800197c:	40021000 	.word	0x40021000
 8001980:	40013c00 	.word	0x40013c00

08001984 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 8001984:	b480      	push	{r7}
 8001986:	b083      	sub	sp, #12
 8001988:	af00      	add	r7, sp, #0
 800198a:	6078      	str	r0, [r7, #4]
 800198c:	460b      	mov	r3, r1
 800198e:	807b      	strh	r3, [r7, #2]
 8001990:	4613      	mov	r3, r2
 8001992:	707b      	strb	r3, [r7, #1]
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if(PinState != GPIO_PIN_RESET)
 8001994:	787b      	ldrb	r3, [r7, #1]
 8001996:	2b00      	cmp	r3, #0
 8001998:	d003      	beq.n	80019a2 <HAL_GPIO_WritePin+0x1e>
  {
    GPIOx->BSRR = GPIO_Pin;
 800199a:	887a      	ldrh	r2, [r7, #2]
 800199c:	687b      	ldr	r3, [r7, #4]
 800199e:	619a      	str	r2, [r3, #24]
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
  }
}
 80019a0:	e003      	b.n	80019aa <HAL_GPIO_WritePin+0x26>
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
 80019a2:	887b      	ldrh	r3, [r7, #2]
 80019a4:	041a      	lsls	r2, r3, #16
 80019a6:	687b      	ldr	r3, [r7, #4]
 80019a8:	619a      	str	r2, [r3, #24]
}
 80019aa:	bf00      	nop
 80019ac:	370c      	adds	r7, #12
 80019ae:	46bd      	mov	sp, r7
 80019b0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80019b4:	4770      	bx	lr

080019b6 <HAL_UART_Init>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 80019b6:	b580      	push	{r7, lr}
 80019b8:	b082      	sub	sp, #8
 80019ba:	af00      	add	r7, sp, #0
 80019bc:	6078      	str	r0, [r7, #4]
  /* Check the UART handle allocation */
  if (huart == NULL)
 80019be:	687b      	ldr	r3, [r7, #4]
 80019c0:	2b00      	cmp	r3, #0
 80019c2:	d101      	bne.n	80019c8 <HAL_UART_Init+0x12>
  {
    return HAL_ERROR;
 80019c4:	2301      	movs	r3, #1
 80019c6:	e03f      	b.n	8001a48 <HAL_UART_Init+0x92>
    assert_param(IS_UART_INSTANCE(huart->Instance));
  }
  assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
  assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));

  if (huart->gState == HAL_UART_STATE_RESET)
 80019c8:	687b      	ldr	r3, [r7, #4]
 80019ca:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 80019ce:	b2db      	uxtb	r3, r3
 80019d0:	2b00      	cmp	r3, #0
 80019d2:	d106      	bne.n	80019e2 <HAL_UART_Init+0x2c>
  {
    /* Allocate lock resource and initialize it */
    huart->Lock = HAL_UNLOCKED;
 80019d4:	687b      	ldr	r3, [r7, #4]
 80019d6:	2200      	movs	r2, #0
 80019d8:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Init the low level hardware */
    huart->MspInitCallback(huart);
#else
    /* Init the low level hardware : GPIO, CLOCK */
    HAL_UART_MspInit(huart);
 80019dc:	6878      	ldr	r0, [r7, #4]
 80019de:	f7fe fcdb 	bl	8000398 <HAL_UART_MspInit>
#endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
  }

  huart->gState = HAL_UART_STATE_BUSY;
 80019e2:	687b      	ldr	r3, [r7, #4]
 80019e4:	2224      	movs	r2, #36	; 0x24
 80019e6:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

  /* Disable the peripheral */
  __HAL_UART_DISABLE(huart);
 80019ea:	687b      	ldr	r3, [r7, #4]
 80019ec:	681b      	ldr	r3, [r3, #0]
 80019ee:	68da      	ldr	r2, [r3, #12]
 80019f0:	687b      	ldr	r3, [r7, #4]
 80019f2:	681b      	ldr	r3, [r3, #0]
 80019f4:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80019f8:	60da      	str	r2, [r3, #12]

  /* Set the UART Communication parameters */
  UART_SetConfig(huart);
 80019fa:	6878      	ldr	r0, [r7, #4]
 80019fc:	f000 f9a6 	bl	8001d4c <UART_SetConfig>

  /* In asynchronous mode, the following bits must be kept cleared:
     - LINEN and CLKEN bits in the USART_CR2 register,
     - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 8001a00:	687b      	ldr	r3, [r7, #4]
 8001a02:	681b      	ldr	r3, [r3, #0]
 8001a04:	691a      	ldr	r2, [r3, #16]
 8001a06:	687b      	ldr	r3, [r7, #4]
 8001a08:	681b      	ldr	r3, [r3, #0]
 8001a0a:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 8001a0e:	611a      	str	r2, [r3, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 8001a10:	687b      	ldr	r3, [r7, #4]
 8001a12:	681b      	ldr	r3, [r3, #0]
 8001a14:	695a      	ldr	r2, [r3, #20]
 8001a16:	687b      	ldr	r3, [r7, #4]
 8001a18:	681b      	ldr	r3, [r3, #0]
 8001a1a:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 8001a1e:	615a      	str	r2, [r3, #20]

  /* Enable the peripheral */
  __HAL_UART_ENABLE(huart);
 8001a20:	687b      	ldr	r3, [r7, #4]
 8001a22:	681b      	ldr	r3, [r3, #0]
 8001a24:	68da      	ldr	r2, [r3, #12]
 8001a26:	687b      	ldr	r3, [r7, #4]
 8001a28:	681b      	ldr	r3, [r3, #0]
 8001a2a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001a2e:	60da      	str	r2, [r3, #12]

  /* Initialize the UART state */
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001a30:	687b      	ldr	r3, [r7, #4]
 8001a32:	2200      	movs	r2, #0
 8001a34:	641a      	str	r2, [r3, #64]	; 0x40
  huart->gState = HAL_UART_STATE_READY;
 8001a36:	687b      	ldr	r3, [r7, #4]
 8001a38:	2220      	movs	r2, #32
 8001a3a:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
  huart->RxState = HAL_UART_STATE_READY;
 8001a3e:	687b      	ldr	r3, [r7, #4]
 8001a40:	2220      	movs	r2, #32
 8001a42:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

  return HAL_OK;
 8001a46:	2300      	movs	r3, #0
}
 8001a48:	4618      	mov	r0, r3
 8001a4a:	3708      	adds	r7, #8
 8001a4c:	46bd      	mov	sp, r7
 8001a4e:	bd80      	pop	{r7, pc}

08001a50 <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001a50:	b580      	push	{r7, lr}
 8001a52:	b08a      	sub	sp, #40	; 0x28
 8001a54:	af02      	add	r7, sp, #8
 8001a56:	60f8      	str	r0, [r7, #12]
 8001a58:	60b9      	str	r1, [r7, #8]
 8001a5a:	603b      	str	r3, [r7, #0]
 8001a5c:	4613      	mov	r3, r2
 8001a5e:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 8001a60:	2300      	movs	r3, #0
 8001a62:	617b      	str	r3, [r7, #20]

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 8001a64:	68fb      	ldr	r3, [r7, #12]
 8001a66:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001a6a:	b2db      	uxtb	r3, r3
 8001a6c:	2b20      	cmp	r3, #32
 8001a6e:	d17c      	bne.n	8001b6a <HAL_UART_Transmit+0x11a>
  {
    if ((pData == NULL) || (Size == 0U))
 8001a70:	68bb      	ldr	r3, [r7, #8]
 8001a72:	2b00      	cmp	r3, #0
 8001a74:	d002      	beq.n	8001a7c <HAL_UART_Transmit+0x2c>
 8001a76:	88fb      	ldrh	r3, [r7, #6]
 8001a78:	2b00      	cmp	r3, #0
 8001a7a:	d101      	bne.n	8001a80 <HAL_UART_Transmit+0x30>
    {
      return  HAL_ERROR;
 8001a7c:	2301      	movs	r3, #1
 8001a7e:	e075      	b.n	8001b6c <HAL_UART_Transmit+0x11c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 8001a80:	68fb      	ldr	r3, [r7, #12]
 8001a82:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 8001a86:	2b01      	cmp	r3, #1
 8001a88:	d101      	bne.n	8001a8e <HAL_UART_Transmit+0x3e>
 8001a8a:	2302      	movs	r3, #2
 8001a8c:	e06e      	b.n	8001b6c <HAL_UART_Transmit+0x11c>
 8001a8e:	68fb      	ldr	r3, [r7, #12]
 8001a90:	2201      	movs	r2, #1
 8001a92:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001a96:	68fb      	ldr	r3, [r7, #12]
 8001a98:	2200      	movs	r2, #0
 8001a9a:	641a      	str	r2, [r3, #64]	; 0x40
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8001a9c:	68fb      	ldr	r3, [r7, #12]
 8001a9e:	2221      	movs	r2, #33	; 0x21
 8001aa0:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8001aa4:	f7fe fef0 	bl	8000888 <HAL_GetTick>
 8001aa8:	6178      	str	r0, [r7, #20]

    huart->TxXferSize = Size;
 8001aaa:	68fb      	ldr	r3, [r7, #12]
 8001aac:	88fa      	ldrh	r2, [r7, #6]
 8001aae:	849a      	strh	r2, [r3, #36]	; 0x24
    huart->TxXferCount = Size;
 8001ab0:	68fb      	ldr	r3, [r7, #12]
 8001ab2:	88fa      	ldrh	r2, [r7, #6]
 8001ab4:	84da      	strh	r2, [r3, #38]	; 0x26

    /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001ab6:	68fb      	ldr	r3, [r7, #12]
 8001ab8:	689b      	ldr	r3, [r3, #8]
 8001aba:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001abe:	d108      	bne.n	8001ad2 <HAL_UART_Transmit+0x82>
 8001ac0:	68fb      	ldr	r3, [r7, #12]
 8001ac2:	691b      	ldr	r3, [r3, #16]
 8001ac4:	2b00      	cmp	r3, #0
 8001ac6:	d104      	bne.n	8001ad2 <HAL_UART_Transmit+0x82>
    {
      pdata8bits  = NULL;
 8001ac8:	2300      	movs	r3, #0
 8001aca:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8001acc:	68bb      	ldr	r3, [r7, #8]
 8001ace:	61bb      	str	r3, [r7, #24]
 8001ad0:	e003      	b.n	8001ada <HAL_UART_Transmit+0x8a>
    }
    else
    {
      pdata8bits  = pData;
 8001ad2:	68bb      	ldr	r3, [r7, #8]
 8001ad4:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8001ad6:	2300      	movs	r3, #0
 8001ad8:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 8001ada:	68fb      	ldr	r3, [r7, #12]
 8001adc:	2200      	movs	r2, #0
 8001ade:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    while (huart->TxXferCount > 0U)
 8001ae2:	e02a      	b.n	8001b3a <HAL_UART_Transmit+0xea>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 8001ae4:	683b      	ldr	r3, [r7, #0]
 8001ae6:	9300      	str	r3, [sp, #0]
 8001ae8:	697b      	ldr	r3, [r7, #20]
 8001aea:	2200      	movs	r2, #0
 8001aec:	2180      	movs	r1, #128	; 0x80
 8001aee:	68f8      	ldr	r0, [r7, #12]
 8001af0:	f000 f8e2 	bl	8001cb8 <UART_WaitOnFlagUntilTimeout>
 8001af4:	4603      	mov	r3, r0
 8001af6:	2b00      	cmp	r3, #0
 8001af8:	d001      	beq.n	8001afe <HAL_UART_Transmit+0xae>
      {
        return HAL_TIMEOUT;
 8001afa:	2303      	movs	r3, #3
 8001afc:	e036      	b.n	8001b6c <HAL_UART_Transmit+0x11c>
      }
      if (pdata8bits == NULL)
 8001afe:	69fb      	ldr	r3, [r7, #28]
 8001b00:	2b00      	cmp	r3, #0
 8001b02:	d10b      	bne.n	8001b1c <HAL_UART_Transmit+0xcc>
      {
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 8001b04:	69bb      	ldr	r3, [r7, #24]
 8001b06:	881b      	ldrh	r3, [r3, #0]
 8001b08:	461a      	mov	r2, r3
 8001b0a:	68fb      	ldr	r3, [r7, #12]
 8001b0c:	681b      	ldr	r3, [r3, #0]
 8001b0e:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8001b12:	605a      	str	r2, [r3, #4]
        pdata16bits++;
 8001b14:	69bb      	ldr	r3, [r7, #24]
 8001b16:	3302      	adds	r3, #2
 8001b18:	61bb      	str	r3, [r7, #24]
 8001b1a:	e007      	b.n	8001b2c <HAL_UART_Transmit+0xdc>
      }
      else
      {
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 8001b1c:	69fb      	ldr	r3, [r7, #28]
 8001b1e:	781a      	ldrb	r2, [r3, #0]
 8001b20:	68fb      	ldr	r3, [r7, #12]
 8001b22:	681b      	ldr	r3, [r3, #0]
 8001b24:	605a      	str	r2, [r3, #4]
        pdata8bits++;
 8001b26:	69fb      	ldr	r3, [r7, #28]
 8001b28:	3301      	adds	r3, #1
 8001b2a:	61fb      	str	r3, [r7, #28]
      }
      huart->TxXferCount--;
 8001b2c:	68fb      	ldr	r3, [r7, #12]
 8001b2e:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8001b30:	b29b      	uxth	r3, r3
 8001b32:	3b01      	subs	r3, #1
 8001b34:	b29a      	uxth	r2, r3
 8001b36:	68fb      	ldr	r3, [r7, #12]
 8001b38:	84da      	strh	r2, [r3, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 8001b3a:	68fb      	ldr	r3, [r7, #12]
 8001b3c:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8001b3e:	b29b      	uxth	r3, r3
 8001b40:	2b00      	cmp	r3, #0
 8001b42:	d1cf      	bne.n	8001ae4 <HAL_UART_Transmit+0x94>
    }

    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 8001b44:	683b      	ldr	r3, [r7, #0]
 8001b46:	9300      	str	r3, [sp, #0]
 8001b48:	697b      	ldr	r3, [r7, #20]
 8001b4a:	2200      	movs	r2, #0
 8001b4c:	2140      	movs	r1, #64	; 0x40
 8001b4e:	68f8      	ldr	r0, [r7, #12]
 8001b50:	f000 f8b2 	bl	8001cb8 <UART_WaitOnFlagUntilTimeout>
 8001b54:	4603      	mov	r3, r0
 8001b56:	2b00      	cmp	r3, #0
 8001b58:	d001      	beq.n	8001b5e <HAL_UART_Transmit+0x10e>
    {
      return HAL_TIMEOUT;
 8001b5a:	2303      	movs	r3, #3
 8001b5c:	e006      	b.n	8001b6c <HAL_UART_Transmit+0x11c>
    }

    /* At end of Tx process, restore huart->gState to Ready */
    huart->gState = HAL_UART_STATE_READY;
 8001b5e:	68fb      	ldr	r3, [r7, #12]
 8001b60:	2220      	movs	r2, #32
 8001b62:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    return HAL_OK;
 8001b66:	2300      	movs	r3, #0
 8001b68:	e000      	b.n	8001b6c <HAL_UART_Transmit+0x11c>
  }
  else
  {
    return HAL_BUSY;
 8001b6a:	2302      	movs	r3, #2
  }
}
 8001b6c:	4618      	mov	r0, r3
 8001b6e:	3720      	adds	r7, #32
 8001b70:	46bd      	mov	sp, r7
 8001b72:	bd80      	pop	{r7, pc}

08001b74 <HAL_UART_Receive>:
  * @param  Size  Amount of data elements (u8 or u16) to be received.
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001b74:	b580      	push	{r7, lr}
 8001b76:	b08a      	sub	sp, #40	; 0x28
 8001b78:	af02      	add	r7, sp, #8
 8001b7a:	60f8      	str	r0, [r7, #12]
 8001b7c:	60b9      	str	r1, [r7, #8]
 8001b7e:	603b      	str	r3, [r7, #0]
 8001b80:	4613      	mov	r3, r2
 8001b82:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 8001b84:	2300      	movs	r3, #0
 8001b86:	617b      	str	r3, [r7, #20]

  /* Check that a Rx process is not already ongoing */
  if (huart->RxState == HAL_UART_STATE_READY)
 8001b88:	68fb      	ldr	r3, [r7, #12]
 8001b8a:	f893 303e 	ldrb.w	r3, [r3, #62]	; 0x3e
 8001b8e:	b2db      	uxtb	r3, r3
 8001b90:	2b20      	cmp	r3, #32
 8001b92:	f040 808c 	bne.w	8001cae <HAL_UART_Receive+0x13a>
  {
    if ((pData == NULL) || (Size == 0U))
 8001b96:	68bb      	ldr	r3, [r7, #8]
 8001b98:	2b00      	cmp	r3, #0
 8001b9a:	d002      	beq.n	8001ba2 <HAL_UART_Receive+0x2e>
 8001b9c:	88fb      	ldrh	r3, [r7, #6]
 8001b9e:	2b00      	cmp	r3, #0
 8001ba0:	d101      	bne.n	8001ba6 <HAL_UART_Receive+0x32>
    {
      return  HAL_ERROR;
 8001ba2:	2301      	movs	r3, #1
 8001ba4:	e084      	b.n	8001cb0 <HAL_UART_Receive+0x13c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 8001ba6:	68fb      	ldr	r3, [r7, #12]
 8001ba8:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 8001bac:	2b01      	cmp	r3, #1
 8001bae:	d101      	bne.n	8001bb4 <HAL_UART_Receive+0x40>
 8001bb0:	2302      	movs	r3, #2
 8001bb2:	e07d      	b.n	8001cb0 <HAL_UART_Receive+0x13c>
 8001bb4:	68fb      	ldr	r3, [r7, #12]
 8001bb6:	2201      	movs	r2, #1
 8001bb8:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001bbc:	68fb      	ldr	r3, [r7, #12]
 8001bbe:	2200      	movs	r2, #0
 8001bc0:	641a      	str	r2, [r3, #64]	; 0x40
    huart->RxState = HAL_UART_STATE_BUSY_RX;
 8001bc2:	68fb      	ldr	r3, [r7, #12]
 8001bc4:	2222      	movs	r2, #34	; 0x22
 8001bc6:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e
    huart->ReceptionType = HAL_UART_RECEPTION_STANDARD;
 8001bca:	68fb      	ldr	r3, [r7, #12]
 8001bcc:	2200      	movs	r2, #0
 8001bce:	631a      	str	r2, [r3, #48]	; 0x30

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8001bd0:	f7fe fe5a 	bl	8000888 <HAL_GetTick>
 8001bd4:	6178      	str	r0, [r7, #20]

    huart->RxXferSize = Size;
 8001bd6:	68fb      	ldr	r3, [r7, #12]
 8001bd8:	88fa      	ldrh	r2, [r7, #6]
 8001bda:	859a      	strh	r2, [r3, #44]	; 0x2c
    huart->RxXferCount = Size;
 8001bdc:	68fb      	ldr	r3, [r7, #12]
 8001bde:	88fa      	ldrh	r2, [r7, #6]
 8001be0:	85da      	strh	r2, [r3, #46]	; 0x2e

    /* In case of 9bits/No Parity transfer, pRxData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001be2:	68fb      	ldr	r3, [r7, #12]
 8001be4:	689b      	ldr	r3, [r3, #8]
 8001be6:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001bea:	d108      	bne.n	8001bfe <HAL_UART_Receive+0x8a>
 8001bec:	68fb      	ldr	r3, [r7, #12]
 8001bee:	691b      	ldr	r3, [r3, #16]
 8001bf0:	2b00      	cmp	r3, #0
 8001bf2:	d104      	bne.n	8001bfe <HAL_UART_Receive+0x8a>
    {
      pdata8bits  = NULL;
 8001bf4:	2300      	movs	r3, #0
 8001bf6:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8001bf8:	68bb      	ldr	r3, [r7, #8]
 8001bfa:	61bb      	str	r3, [r7, #24]
 8001bfc:	e003      	b.n	8001c06 <HAL_UART_Receive+0x92>
    }
    else
    {
      pdata8bits  = pData;
 8001bfe:	68bb      	ldr	r3, [r7, #8]
 8001c00:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8001c02:	2300      	movs	r3, #0
 8001c04:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 8001c06:	68fb      	ldr	r3, [r7, #12]
 8001c08:	2200      	movs	r2, #0
 8001c0a:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Check the remain data to be received */
    while (huart->RxXferCount > 0U)
 8001c0e:	e043      	b.n	8001c98 <HAL_UART_Receive+0x124>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
 8001c10:	683b      	ldr	r3, [r7, #0]
 8001c12:	9300      	str	r3, [sp, #0]
 8001c14:	697b      	ldr	r3, [r7, #20]
 8001c16:	2200      	movs	r2, #0
 8001c18:	2120      	movs	r1, #32
 8001c1a:	68f8      	ldr	r0, [r7, #12]
 8001c1c:	f000 f84c 	bl	8001cb8 <UART_WaitOnFlagUntilTimeout>
 8001c20:	4603      	mov	r3, r0
 8001c22:	2b00      	cmp	r3, #0
 8001c24:	d001      	beq.n	8001c2a <HAL_UART_Receive+0xb6>
      {
        return HAL_TIMEOUT;
 8001c26:	2303      	movs	r3, #3
 8001c28:	e042      	b.n	8001cb0 <HAL_UART_Receive+0x13c>
      }
      if (pdata8bits == NULL)
 8001c2a:	69fb      	ldr	r3, [r7, #28]
 8001c2c:	2b00      	cmp	r3, #0
 8001c2e:	d10c      	bne.n	8001c4a <HAL_UART_Receive+0xd6>
      {
        *pdata16bits = (uint16_t)(huart->Instance->DR & 0x01FF);
 8001c30:	68fb      	ldr	r3, [r7, #12]
 8001c32:	681b      	ldr	r3, [r3, #0]
 8001c34:	685b      	ldr	r3, [r3, #4]
 8001c36:	b29b      	uxth	r3, r3
 8001c38:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8001c3c:	b29a      	uxth	r2, r3
 8001c3e:	69bb      	ldr	r3, [r7, #24]
 8001c40:	801a      	strh	r2, [r3, #0]
        pdata16bits++;
 8001c42:	69bb      	ldr	r3, [r7, #24]
 8001c44:	3302      	adds	r3, #2
 8001c46:	61bb      	str	r3, [r7, #24]
 8001c48:	e01f      	b.n	8001c8a <HAL_UART_Receive+0x116>
      }
      else
      {
        if ((huart->Init.WordLength == UART_WORDLENGTH_9B) || ((huart->Init.WordLength == UART_WORDLENGTH_8B) && (huart->Init.Parity == UART_PARITY_NONE)))
 8001c4a:	68fb      	ldr	r3, [r7, #12]
 8001c4c:	689b      	ldr	r3, [r3, #8]
 8001c4e:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001c52:	d007      	beq.n	8001c64 <HAL_UART_Receive+0xf0>
 8001c54:	68fb      	ldr	r3, [r7, #12]
 8001c56:	689b      	ldr	r3, [r3, #8]
 8001c58:	2b00      	cmp	r3, #0
 8001c5a:	d10a      	bne.n	8001c72 <HAL_UART_Receive+0xfe>
 8001c5c:	68fb      	ldr	r3, [r7, #12]
 8001c5e:	691b      	ldr	r3, [r3, #16]
 8001c60:	2b00      	cmp	r3, #0
 8001c62:	d106      	bne.n	8001c72 <HAL_UART_Receive+0xfe>
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x00FF);
 8001c64:	68fb      	ldr	r3, [r7, #12]
 8001c66:	681b      	ldr	r3, [r3, #0]
 8001c68:	685b      	ldr	r3, [r3, #4]
 8001c6a:	b2da      	uxtb	r2, r3
 8001c6c:	69fb      	ldr	r3, [r7, #28]
 8001c6e:	701a      	strb	r2, [r3, #0]
 8001c70:	e008      	b.n	8001c84 <HAL_UART_Receive+0x110>
        }
        else
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x007F);
 8001c72:	68fb      	ldr	r3, [r7, #12]
 8001c74:	681b      	ldr	r3, [r3, #0]
 8001c76:	685b      	ldr	r3, [r3, #4]
 8001c78:	b2db      	uxtb	r3, r3
 8001c7a:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 8001c7e:	b2da      	uxtb	r2, r3
 8001c80:	69fb      	ldr	r3, [r7, #28]
 8001c82:	701a      	strb	r2, [r3, #0]
        }
        pdata8bits++;
 8001c84:	69fb      	ldr	r3, [r7, #28]
 8001c86:	3301      	adds	r3, #1
 8001c88:	61fb      	str	r3, [r7, #28]
      }
      huart->RxXferCount--;
 8001c8a:	68fb      	ldr	r3, [r7, #12]
 8001c8c:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
 8001c8e:	b29b      	uxth	r3, r3
 8001c90:	3b01      	subs	r3, #1
 8001c92:	b29a      	uxth	r2, r3
 8001c94:	68fb      	ldr	r3, [r7, #12]
 8001c96:	85da      	strh	r2, [r3, #46]	; 0x2e
    while (huart->RxXferCount > 0U)
 8001c98:	68fb      	ldr	r3, [r7, #12]
 8001c9a:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
 8001c9c:	b29b      	uxth	r3, r3
 8001c9e:	2b00      	cmp	r3, #0
 8001ca0:	d1b6      	bne.n	8001c10 <HAL_UART_Receive+0x9c>
    }

    /* At end of Rx process, restore huart->RxState to Ready */
    huart->RxState = HAL_UART_STATE_READY;
 8001ca2:	68fb      	ldr	r3, [r7, #12]
 8001ca4:	2220      	movs	r2, #32
 8001ca6:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

    return HAL_OK;
 8001caa:	2300      	movs	r3, #0
 8001cac:	e000      	b.n	8001cb0 <HAL_UART_Receive+0x13c>
  }
  else
  {
    return HAL_BUSY;
 8001cae:	2302      	movs	r3, #2
  }
}
 8001cb0:	4618      	mov	r0, r3
 8001cb2:	3720      	adds	r7, #32
 8001cb4:	46bd      	mov	sp, r7
 8001cb6:	bd80      	pop	{r7, pc}

08001cb8 <UART_WaitOnFlagUntilTimeout>:
  * @param  Tickstart Tick start value
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout)
{
 8001cb8:	b580      	push	{r7, lr}
 8001cba:	b084      	sub	sp, #16
 8001cbc:	af00      	add	r7, sp, #0
 8001cbe:	60f8      	str	r0, [r7, #12]
 8001cc0:	60b9      	str	r1, [r7, #8]
 8001cc2:	603b      	str	r3, [r7, #0]
 8001cc4:	4613      	mov	r3, r2
 8001cc6:	71fb      	strb	r3, [r7, #7]
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001cc8:	e02c      	b.n	8001d24 <UART_WaitOnFlagUntilTimeout+0x6c>
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
 8001cca:	69bb      	ldr	r3, [r7, #24]
 8001ccc:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8001cd0:	d028      	beq.n	8001d24 <UART_WaitOnFlagUntilTimeout+0x6c>
    {
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 8001cd2:	69bb      	ldr	r3, [r7, #24]
 8001cd4:	2b00      	cmp	r3, #0
 8001cd6:	d007      	beq.n	8001ce8 <UART_WaitOnFlagUntilTimeout+0x30>
 8001cd8:	f7fe fdd6 	bl	8000888 <HAL_GetTick>
 8001cdc:	4602      	mov	r2, r0
 8001cde:	683b      	ldr	r3, [r7, #0]
 8001ce0:	1ad3      	subs	r3, r2, r3
 8001ce2:	69ba      	ldr	r2, [r7, #24]
 8001ce4:	429a      	cmp	r2, r3
 8001ce6:	d21d      	bcs.n	8001d24 <UART_WaitOnFlagUntilTimeout+0x6c>
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 8001ce8:	68fb      	ldr	r3, [r7, #12]
 8001cea:	681b      	ldr	r3, [r3, #0]
 8001cec:	68da      	ldr	r2, [r3, #12]
 8001cee:	68fb      	ldr	r3, [r7, #12]
 8001cf0:	681b      	ldr	r3, [r3, #0]
 8001cf2:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 8001cf6:	60da      	str	r2, [r3, #12]
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 8001cf8:	68fb      	ldr	r3, [r7, #12]
 8001cfa:	681b      	ldr	r3, [r3, #0]
 8001cfc:	695a      	ldr	r2, [r3, #20]
 8001cfe:	68fb      	ldr	r3, [r7, #12]
 8001d00:	681b      	ldr	r3, [r3, #0]
 8001d02:	f022 0201 	bic.w	r2, r2, #1
 8001d06:	615a      	str	r2, [r3, #20]

        huart->gState  = HAL_UART_STATE_READY;
 8001d08:	68fb      	ldr	r3, [r7, #12]
 8001d0a:	2220      	movs	r2, #32
 8001d0c:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
        huart->RxState = HAL_UART_STATE_READY;
 8001d10:	68fb      	ldr	r3, [r7, #12]
 8001d12:	2220      	movs	r2, #32
 8001d14:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

        /* Process Unlocked */
        __HAL_UNLOCK(huart);
 8001d18:	68fb      	ldr	r3, [r7, #12]
 8001d1a:	2200      	movs	r2, #0
 8001d1c:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

        return HAL_TIMEOUT;
 8001d20:	2303      	movs	r3, #3
 8001d22:	e00f      	b.n	8001d44 <UART_WaitOnFlagUntilTimeout+0x8c>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001d24:	68fb      	ldr	r3, [r7, #12]
 8001d26:	681b      	ldr	r3, [r3, #0]
 8001d28:	681a      	ldr	r2, [r3, #0]
 8001d2a:	68bb      	ldr	r3, [r7, #8]
 8001d2c:	4013      	ands	r3, r2
 8001d2e:	68ba      	ldr	r2, [r7, #8]
 8001d30:	429a      	cmp	r2, r3
 8001d32:	bf0c      	ite	eq
 8001d34:	2301      	moveq	r3, #1
 8001d36:	2300      	movne	r3, #0
 8001d38:	b2db      	uxtb	r3, r3
 8001d3a:	461a      	mov	r2, r3
 8001d3c:	79fb      	ldrb	r3, [r7, #7]
 8001d3e:	429a      	cmp	r2, r3
 8001d40:	d0c3      	beq.n	8001cca <UART_WaitOnFlagUntilTimeout+0x12>
      }
    }
  }
  return HAL_OK;
 8001d42:	2300      	movs	r3, #0
}
 8001d44:	4618      	mov	r0, r3
 8001d46:	3710      	adds	r7, #16
 8001d48:	46bd      	mov	sp, r7
 8001d4a:	bd80      	pop	{r7, pc}

08001d4c <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 8001d4c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001d50:	b09f      	sub	sp, #124	; 0x7c
 8001d52:	af00      	add	r7, sp, #0
 8001d54:	66f8      	str	r0, [r7, #108]	; 0x6c
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 8001d56:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d58:	681b      	ldr	r3, [r3, #0]
 8001d5a:	691b      	ldr	r3, [r3, #16]
 8001d5c:	f423 5040 	bic.w	r0, r3, #12288	; 0x3000
 8001d60:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d62:	68d9      	ldr	r1, [r3, #12]
 8001d64:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d66:	681a      	ldr	r2, [r3, #0]
 8001d68:	ea40 0301 	orr.w	r3, r0, r1
 8001d6c:	6113      	str	r3, [r2, #16]
     Set the M bits according to huart->Init.WordLength value
     Set PCE and PS bits according to huart->Init.Parity value
     Set TE and RE bits according to huart->Init.Mode value
     Set OVER8 bit according to huart->Init.OverSampling value */

  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
 8001d6e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d70:	689a      	ldr	r2, [r3, #8]
 8001d72:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d74:	691b      	ldr	r3, [r3, #16]
 8001d76:	431a      	orrs	r2, r3
 8001d78:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d7a:	695b      	ldr	r3, [r3, #20]
 8001d7c:	431a      	orrs	r2, r3
 8001d7e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d80:	69db      	ldr	r3, [r3, #28]
 8001d82:	4313      	orrs	r3, r2
 8001d84:	673b      	str	r3, [r7, #112]	; 0x70
  MODIFY_REG(huart->Instance->CR1,
 8001d86:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d88:	681b      	ldr	r3, [r3, #0]
 8001d8a:	68db      	ldr	r3, [r3, #12]
 8001d8c:	f423 4116 	bic.w	r1, r3, #38400	; 0x9600
 8001d90:	f021 010c 	bic.w	r1, r1, #12
 8001d94:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001d96:	681a      	ldr	r2, [r3, #0]
 8001d98:	6f3b      	ldr	r3, [r7, #112]	; 0x70
 8001d9a:	430b      	orrs	r3, r1
 8001d9c:	60d3      	str	r3, [r2, #12]
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 8001d9e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001da0:	681b      	ldr	r3, [r3, #0]
 8001da2:	695b      	ldr	r3, [r3, #20]
 8001da4:	f423 7040 	bic.w	r0, r3, #768	; 0x300
 8001da8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001daa:	6999      	ldr	r1, [r3, #24]
 8001dac:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001dae:	681a      	ldr	r2, [r3, #0]
 8001db0:	ea40 0301 	orr.w	r3, r0, r1
 8001db4:	6153      	str	r3, [r2, #20]
    if ((huart->Instance == USART1) || (huart->Instance == USART6) || (huart->Instance == UART9) || (huart->Instance == UART10))
    {
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#elif defined(USART6)
    if ((huart->Instance == USART1) || (huart->Instance == USART6))
 8001db6:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001db8:	681a      	ldr	r2, [r3, #0]
 8001dba:	4bc5      	ldr	r3, [pc, #788]	; (80020d0 <UART_SetConfig+0x384>)
 8001dbc:	429a      	cmp	r2, r3
 8001dbe:	d004      	beq.n	8001dca <UART_SetConfig+0x7e>
 8001dc0:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001dc2:	681a      	ldr	r2, [r3, #0]
 8001dc4:	4bc3      	ldr	r3, [pc, #780]	; (80020d4 <UART_SetConfig+0x388>)
 8001dc6:	429a      	cmp	r2, r3
 8001dc8:	d103      	bne.n	8001dd2 <UART_SetConfig+0x86>
    {
      pclk = HAL_RCC_GetPCLK2Freq();
 8001dca:	f7ff fae3 	bl	8001394 <HAL_RCC_GetPCLK2Freq>
 8001dce:	6778      	str	r0, [r7, #116]	; 0x74
 8001dd0:	e002      	b.n	8001dd8 <UART_SetConfig+0x8c>
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#endif /* USART6 */
    else
    {
      pclk = HAL_RCC_GetPCLK1Freq();
 8001dd2:	f7ff facb 	bl	800136c <HAL_RCC_GetPCLK1Freq>
 8001dd6:	6778      	str	r0, [r7, #116]	; 0x74
    }
  /*-------------------------- USART BRR Configuration ---------------------*/
  if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 8001dd8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001dda:	69db      	ldr	r3, [r3, #28]
 8001ddc:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001de0:	f040 80b6 	bne.w	8001f50 <UART_SetConfig+0x204>
  {
    huart->Instance->BRR = UART_BRR_SAMPLING8(pclk, huart->Init.BaudRate);
 8001de4:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8001de6:	461c      	mov	r4, r3
 8001de8:	f04f 0500 	mov.w	r5, #0
 8001dec:	4622      	mov	r2, r4
 8001dee:	462b      	mov	r3, r5
 8001df0:	1891      	adds	r1, r2, r2
 8001df2:	6439      	str	r1, [r7, #64]	; 0x40
 8001df4:	415b      	adcs	r3, r3
 8001df6:	647b      	str	r3, [r7, #68]	; 0x44
 8001df8:	e9d7 2310 	ldrd	r2, r3, [r7, #64]	; 0x40
 8001dfc:	1912      	adds	r2, r2, r4
 8001dfe:	eb45 0303 	adc.w	r3, r5, r3
 8001e02:	f04f 0000 	mov.w	r0, #0
 8001e06:	f04f 0100 	mov.w	r1, #0
 8001e0a:	00d9      	lsls	r1, r3, #3
 8001e0c:	ea41 7152 	orr.w	r1, r1, r2, lsr #29
 8001e10:	00d0      	lsls	r0, r2, #3
 8001e12:	4602      	mov	r2, r0
 8001e14:	460b      	mov	r3, r1
 8001e16:	1911      	adds	r1, r2, r4
 8001e18:	6639      	str	r1, [r7, #96]	; 0x60
 8001e1a:	416b      	adcs	r3, r5
 8001e1c:	667b      	str	r3, [r7, #100]	; 0x64
 8001e1e:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001e20:	685b      	ldr	r3, [r3, #4]
 8001e22:	461a      	mov	r2, r3
 8001e24:	f04f 0300 	mov.w	r3, #0
 8001e28:	1891      	adds	r1, r2, r2
 8001e2a:	63b9      	str	r1, [r7, #56]	; 0x38
 8001e2c:	415b      	adcs	r3, r3
 8001e2e:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001e30:	e9d7 230e 	ldrd	r2, r3, [r7, #56]	; 0x38
 8001e34:	e9d7 0118 	ldrd	r0, r1, [r7, #96]	; 0x60
 8001e38:	f001 fb7c 	bl	8003534 <__aeabi_uldivmod>
 8001e3c:	4602      	mov	r2, r0
 8001e3e:	460b      	mov	r3, r1
 8001e40:	4ba5      	ldr	r3, [pc, #660]	; (80020d8 <UART_SetConfig+0x38c>)
 8001e42:	fba3 2302 	umull	r2, r3, r3, r2
 8001e46:	095b      	lsrs	r3, r3, #5
 8001e48:	011e      	lsls	r6, r3, #4
 8001e4a:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8001e4c:	461c      	mov	r4, r3
 8001e4e:	f04f 0500 	mov.w	r5, #0
 8001e52:	4622      	mov	r2, r4
 8001e54:	462b      	mov	r3, r5
 8001e56:	1891      	adds	r1, r2, r2
 8001e58:	6339      	str	r1, [r7, #48]	; 0x30
 8001e5a:	415b      	adcs	r3, r3
 8001e5c:	637b      	str	r3, [r7, #52]	; 0x34
 8001e5e:	e9d7 230c 	ldrd	r2, r3, [r7, #48]	; 0x30
 8001e62:	1912      	adds	r2, r2, r4
 8001e64:	eb45 0303 	adc.w	r3, r5, r3
 8001e68:	f04f 0000 	mov.w	r0, #0
 8001e6c:	f04f 0100 	mov.w	r1, #0
 8001e70:	00d9      	lsls	r1, r3, #3
 8001e72:	ea41 7152 	orr.w	r1, r1, r2, lsr #29
 8001e76:	00d0      	lsls	r0, r2, #3
 8001e78:	4602      	mov	r2, r0
 8001e7a:	460b      	mov	r3, r1
 8001e7c:	1911      	adds	r1, r2, r4
 8001e7e:	65b9      	str	r1, [r7, #88]	; 0x58
 8001e80:	416b      	adcs	r3, r5
 8001e82:	65fb      	str	r3, [r7, #92]	; 0x5c
 8001e84:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001e86:	685b      	ldr	r3, [r3, #4]
 8001e88:	461a      	mov	r2, r3
 8001e8a:	f04f 0300 	mov.w	r3, #0
 8001e8e:	1891      	adds	r1, r2, r2
 8001e90:	62b9      	str	r1, [r7, #40]	; 0x28
 8001e92:	415b      	adcs	r3, r3
 8001e94:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001e96:	e9d7 230a 	ldrd	r2, r3, [r7, #40]	; 0x28
 8001e9a:	e9d7 0116 	ldrd	r0, r1, [r7, #88]	; 0x58
 8001e9e:	f001 fb49 	bl	8003534 <__aeabi_uldivmod>
 8001ea2:	4602      	mov	r2, r0
 8001ea4:	460b      	mov	r3, r1
 8001ea6:	4b8c      	ldr	r3, [pc, #560]	; (80020d8 <UART_SetConfig+0x38c>)
 8001ea8:	fba3 1302 	umull	r1, r3, r3, r2
 8001eac:	095b      	lsrs	r3, r3, #5
 8001eae:	2164      	movs	r1, #100	; 0x64
 8001eb0:	fb01 f303 	mul.w	r3, r1, r3
 8001eb4:	1ad3      	subs	r3, r2, r3
 8001eb6:	00db      	lsls	r3, r3, #3
 8001eb8:	3332      	adds	r3, #50	; 0x32
 8001eba:	4a87      	ldr	r2, [pc, #540]	; (80020d8 <UART_SetConfig+0x38c>)
 8001ebc:	fba2 2303 	umull	r2, r3, r2, r3
 8001ec0:	095b      	lsrs	r3, r3, #5
 8001ec2:	005b      	lsls	r3, r3, #1
 8001ec4:	f403 73f8 	and.w	r3, r3, #496	; 0x1f0
 8001ec8:	441e      	add	r6, r3
 8001eca:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8001ecc:	4618      	mov	r0, r3
 8001ece:	f04f 0100 	mov.w	r1, #0
 8001ed2:	4602      	mov	r2, r0
 8001ed4:	460b      	mov	r3, r1
 8001ed6:	1894      	adds	r4, r2, r2
 8001ed8:	623c      	str	r4, [r7, #32]
 8001eda:	415b      	adcs	r3, r3
 8001edc:	627b      	str	r3, [r7, #36]	; 0x24
 8001ede:	e9d7 2308 	ldrd	r2, r3, [r7, #32]
 8001ee2:	1812      	adds	r2, r2, r0
 8001ee4:	eb41 0303 	adc.w	r3, r1, r3
 8001ee8:	f04f 0400 	mov.w	r4, #0
 8001eec:	f04f 0500 	mov.w	r5, #0
 8001ef0:	00dd      	lsls	r5, r3, #3
 8001ef2:	ea45 7552 	orr.w	r5, r5, r2, lsr #29
 8001ef6:	00d4      	lsls	r4, r2, #3
 8001ef8:	4622      	mov	r2, r4
 8001efa:	462b      	mov	r3, r5
 8001efc:	1814      	adds	r4, r2, r0
 8001efe:	653c      	str	r4, [r7, #80]	; 0x50
 8001f00:	414b      	adcs	r3, r1
 8001f02:	657b      	str	r3, [r7, #84]	; 0x54
 8001f04:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001f06:	685b      	ldr	r3, [r3, #4]
 8001f08:	461a      	mov	r2, r3
 8001f0a:	f04f 0300 	mov.w	r3, #0
 8001f0e:	1891      	adds	r1, r2, r2
 8001f10:	61b9      	str	r1, [r7, #24]
 8001f12:	415b      	adcs	r3, r3
 8001f14:	61fb      	str	r3, [r7, #28]
 8001f16:	e9d7 2306 	ldrd	r2, r3, [r7, #24]
 8001f1a:	e9d7 0114 	ldrd	r0, r1, [r7, #80]	; 0x50
 8001f1e:	f001 fb09 	bl	8003534 <__aeabi_uldivmod>
 8001f22:	4602      	mov	r2, r0
 8001f24:	460b      	mov	r3, r1
 8001f26:	4b6c      	ldr	r3, [pc, #432]	; (80020d8 <UART_SetConfig+0x38c>)
 8001f28:	fba3 1302 	umull	r1, r3, r3, r2
 8001f2c:	095b      	lsrs	r3, r3, #5
 8001f2e:	2164      	movs	r1, #100	; 0x64
 8001f30:	fb01 f303 	mul.w	r3, r1, r3
 8001f34:	1ad3      	subs	r3, r2, r3
 8001f36:	00db      	lsls	r3, r3, #3
 8001f38:	3332      	adds	r3, #50	; 0x32
 8001f3a:	4a67      	ldr	r2, [pc, #412]	; (80020d8 <UART_SetConfig+0x38c>)
 8001f3c:	fba2 2303 	umull	r2, r3, r2, r3
 8001f40:	095b      	lsrs	r3, r3, #5
 8001f42:	f003 0207 	and.w	r2, r3, #7
 8001f46:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001f48:	681b      	ldr	r3, [r3, #0]
 8001f4a:	4432      	add	r2, r6
 8001f4c:	609a      	str	r2, [r3, #8]
  }
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
}
 8001f4e:	e0b9      	b.n	80020c4 <UART_SetConfig+0x378>
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 8001f50:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8001f52:	461c      	mov	r4, r3
 8001f54:	f04f 0500 	mov.w	r5, #0
 8001f58:	4622      	mov	r2, r4
 8001f5a:	462b      	mov	r3, r5
 8001f5c:	1891      	adds	r1, r2, r2
 8001f5e:	6139      	str	r1, [r7, #16]
 8001f60:	415b      	adcs	r3, r3
 8001f62:	617b      	str	r3, [r7, #20]
 8001f64:	e9d7 2304 	ldrd	r2, r3, [r7, #16]
 8001f68:	1912      	adds	r2, r2, r4
 8001f6a:	eb45 0303 	adc.w	r3, r5, r3
 8001f6e:	f04f 0000 	mov.w	r0, #0
 8001f72:	f04f 0100 	mov.w	r1, #0
 8001f76:	00d9      	lsls	r1, r3, #3
 8001f78:	ea41 7152 	orr.w	r1, r1, r2, lsr #29
 8001f7c:	00d0      	lsls	r0, r2, #3
 8001f7e:	4602      	mov	r2, r0
 8001f80:	460b      	mov	r3, r1
 8001f82:	eb12 0804 	adds.w	r8, r2, r4
 8001f86:	eb43 0905 	adc.w	r9, r3, r5
 8001f8a:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001f8c:	685b      	ldr	r3, [r3, #4]
 8001f8e:	4618      	mov	r0, r3
 8001f90:	f04f 0100 	mov.w	r1, #0
 8001f94:	f04f 0200 	mov.w	r2, #0
 8001f98:	f04f 0300 	mov.w	r3, #0
 8001f9c:	008b      	lsls	r3, r1, #2
 8001f9e:	ea43 7390 	orr.w	r3, r3, r0, lsr #30
 8001fa2:	0082      	lsls	r2, r0, #2
 8001fa4:	4640      	mov	r0, r8
 8001fa6:	4649      	mov	r1, r9
 8001fa8:	f001 fac4 	bl	8003534 <__aeabi_uldivmod>
 8001fac:	4602      	mov	r2, r0
 8001fae:	460b      	mov	r3, r1
 8001fb0:	4b49      	ldr	r3, [pc, #292]	; (80020d8 <UART_SetConfig+0x38c>)
 8001fb2:	fba3 2302 	umull	r2, r3, r3, r2
 8001fb6:	095b      	lsrs	r3, r3, #5
 8001fb8:	011e      	lsls	r6, r3, #4
 8001fba:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 8001fbc:	4618      	mov	r0, r3
 8001fbe:	f04f 0100 	mov.w	r1, #0
 8001fc2:	4602      	mov	r2, r0
 8001fc4:	460b      	mov	r3, r1
 8001fc6:	1894      	adds	r4, r2, r2
 8001fc8:	60bc      	str	r4, [r7, #8]
 8001fca:	415b      	adcs	r3, r3
 8001fcc:	60fb      	str	r3, [r7, #12]
 8001fce:	e9d7 2302 	ldrd	r2, r3, [r7, #8]
 8001fd2:	1812      	adds	r2, r2, r0
 8001fd4:	eb41 0303 	adc.w	r3, r1, r3
 8001fd8:	f04f 0400 	mov.w	r4, #0
 8001fdc:	f04f 0500 	mov.w	r5, #0
 8001fe0:	00dd      	lsls	r5, r3, #3
 8001fe2:	ea45 7552 	orr.w	r5, r5, r2, lsr #29
 8001fe6:	00d4      	lsls	r4, r2, #3
 8001fe8:	4622      	mov	r2, r4
 8001fea:	462b      	mov	r3, r5
 8001fec:	1814      	adds	r4, r2, r0
 8001fee:	64bc      	str	r4, [r7, #72]	; 0x48
 8001ff0:	414b      	adcs	r3, r1
 8001ff2:	64fb      	str	r3, [r7, #76]	; 0x4c
 8001ff4:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8001ff6:	685b      	ldr	r3, [r3, #4]
 8001ff8:	4618      	mov	r0, r3
 8001ffa:	f04f 0100 	mov.w	r1, #0
 8001ffe:	f04f 0200 	mov.w	r2, #0
 8002002:	f04f 0300 	mov.w	r3, #0
 8002006:	008b      	lsls	r3, r1, #2
 8002008:	ea43 7390 	orr.w	r3, r3, r0, lsr #30
 800200c:	0082      	lsls	r2, r0, #2
 800200e:	e9d7 0112 	ldrd	r0, r1, [r7, #72]	; 0x48
 8002012:	f001 fa8f 	bl	8003534 <__aeabi_uldivmod>
 8002016:	4602      	mov	r2, r0
 8002018:	460b      	mov	r3, r1
 800201a:	4b2f      	ldr	r3, [pc, #188]	; (80020d8 <UART_SetConfig+0x38c>)
 800201c:	fba3 1302 	umull	r1, r3, r3, r2
 8002020:	095b      	lsrs	r3, r3, #5
 8002022:	2164      	movs	r1, #100	; 0x64
 8002024:	fb01 f303 	mul.w	r3, r1, r3
 8002028:	1ad3      	subs	r3, r2, r3
 800202a:	011b      	lsls	r3, r3, #4
 800202c:	3332      	adds	r3, #50	; 0x32
 800202e:	4a2a      	ldr	r2, [pc, #168]	; (80020d8 <UART_SetConfig+0x38c>)
 8002030:	fba2 2303 	umull	r2, r3, r2, r3
 8002034:	095b      	lsrs	r3, r3, #5
 8002036:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 800203a:	441e      	add	r6, r3
 800203c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
 800203e:	4618      	mov	r0, r3
 8002040:	f04f 0100 	mov.w	r1, #0
 8002044:	4602      	mov	r2, r0
 8002046:	460b      	mov	r3, r1
 8002048:	1894      	adds	r4, r2, r2
 800204a:	603c      	str	r4, [r7, #0]
 800204c:	415b      	adcs	r3, r3
 800204e:	607b      	str	r3, [r7, #4]
 8002050:	e9d7 2300 	ldrd	r2, r3, [r7]
 8002054:	1812      	adds	r2, r2, r0
 8002056:	eb41 0303 	adc.w	r3, r1, r3
 800205a:	f04f 0400 	mov.w	r4, #0
 800205e:	f04f 0500 	mov.w	r5, #0
 8002062:	00dd      	lsls	r5, r3, #3
 8002064:	ea45 7552 	orr.w	r5, r5, r2, lsr #29
 8002068:	00d4      	lsls	r4, r2, #3
 800206a:	4622      	mov	r2, r4
 800206c:	462b      	mov	r3, r5
 800206e:	eb12 0a00 	adds.w	sl, r2, r0
 8002072:	eb43 0b01 	adc.w	fp, r3, r1
 8002076:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 8002078:	685b      	ldr	r3, [r3, #4]
 800207a:	4618      	mov	r0, r3
 800207c:	f04f 0100 	mov.w	r1, #0
 8002080:	f04f 0200 	mov.w	r2, #0
 8002084:	f04f 0300 	mov.w	r3, #0
 8002088:	008b      	lsls	r3, r1, #2
 800208a:	ea43 7390 	orr.w	r3, r3, r0, lsr #30
 800208e:	0082      	lsls	r2, r0, #2
 8002090:	4650      	mov	r0, sl
 8002092:	4659      	mov	r1, fp
 8002094:	f001 fa4e 	bl	8003534 <__aeabi_uldivmod>
 8002098:	4602      	mov	r2, r0
 800209a:	460b      	mov	r3, r1
 800209c:	4b0e      	ldr	r3, [pc, #56]	; (80020d8 <UART_SetConfig+0x38c>)
 800209e:	fba3 1302 	umull	r1, r3, r3, r2
 80020a2:	095b      	lsrs	r3, r3, #5
 80020a4:	2164      	movs	r1, #100	; 0x64
 80020a6:	fb01 f303 	mul.w	r3, r1, r3
 80020aa:	1ad3      	subs	r3, r2, r3
 80020ac:	011b      	lsls	r3, r3, #4
 80020ae:	3332      	adds	r3, #50	; 0x32
 80020b0:	4a09      	ldr	r2, [pc, #36]	; (80020d8 <UART_SetConfig+0x38c>)
 80020b2:	fba2 2303 	umull	r2, r3, r2, r3
 80020b6:	095b      	lsrs	r3, r3, #5
 80020b8:	f003 020f 	and.w	r2, r3, #15
 80020bc:	6efb      	ldr	r3, [r7, #108]	; 0x6c
 80020be:	681b      	ldr	r3, [r3, #0]
 80020c0:	4432      	add	r2, r6
 80020c2:	609a      	str	r2, [r3, #8]
}
 80020c4:	bf00      	nop
 80020c6:	377c      	adds	r7, #124	; 0x7c
 80020c8:	46bd      	mov	sp, r7
 80020ca:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80020ce:	bf00      	nop
 80020d0:	40011000 	.word	0x40011000
 80020d4:	40011400 	.word	0x40011400
 80020d8:	51eb851f 	.word	0x51eb851f

080020dc <BSP_LED_On>:
  * @param  Led: Specifies the Led to be set on. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_On(Led_TypeDef Led)
{
 80020dc:	b580      	push	{r7, lr}
 80020de:	b082      	sub	sp, #8
 80020e0:	af00      	add	r7, sp, #0
 80020e2:	4603      	mov	r3, r0
 80020e4:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_SET); 
 80020e6:	79fb      	ldrb	r3, [r7, #7]
 80020e8:	4a05      	ldr	r2, [pc, #20]	; (8002100 <BSP_LED_On+0x24>)
 80020ea:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80020ee:	2120      	movs	r1, #32
 80020f0:	2201      	movs	r2, #1
 80020f2:	4618      	mov	r0, r3
 80020f4:	f7ff fc46 	bl	8001984 <HAL_GPIO_WritePin>
}
 80020f8:	bf00      	nop
 80020fa:	3708      	adds	r7, #8
 80020fc:	46bd      	mov	sp, r7
 80020fe:	bd80      	pop	{r7, pc}
 8002100:	2000000c 	.word	0x2000000c

08002104 <_putchar>:

#else
extern int __io_putchar(int ch);
extern int __io_getchar(void);
void _putchar(const char ch)
{
 8002104:	b580      	push	{r7, lr}
 8002106:	b082      	sub	sp, #8
 8002108:	af00      	add	r7, sp, #0
 800210a:	4603      	mov	r3, r0
 800210c:	71fb      	strb	r3, [r7, #7]
    __io_putchar(ch);
 800210e:	79fb      	ldrb	r3, [r7, #7]
 8002110:	4618      	mov	r0, r3
 8002112:	f7fe f91d 	bl	8000350 <__io_putchar>
}
 8002116:	bf00      	nop
 8002118:	3708      	adds	r7, #8
 800211a:	46bd      	mov	sp, r7
 800211c:	bd80      	pop	{r7, pc}

0800211e <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
 800211e:	b480      	push	{r7}
 8002120:	b085      	sub	sp, #20
 8002122:	af00      	add	r7, sp, #0
 8002124:	60b9      	str	r1, [r7, #8]
 8002126:	607a      	str	r2, [r7, #4]
 8002128:	603b      	str	r3, [r7, #0]
 800212a:	4603      	mov	r3, r0
 800212c:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
 800212e:	687a      	ldr	r2, [r7, #4]
 8002130:	683b      	ldr	r3, [r7, #0]
 8002132:	429a      	cmp	r2, r3
 8002134:	d204      	bcs.n	8002140 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
 8002136:	68ba      	ldr	r2, [r7, #8]
 8002138:	687b      	ldr	r3, [r7, #4]
 800213a:	4413      	add	r3, r2
 800213c:	7bfa      	ldrb	r2, [r7, #15]
 800213e:	701a      	strb	r2, [r3, #0]
  }
}
 8002140:	bf00      	nop
 8002142:	3714      	adds	r7, #20
 8002144:	46bd      	mov	sp, r7
 8002146:	f85d 7b04 	ldr.w	r7, [sp], #4
 800214a:	4770      	bx	lr

0800214c <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
 800214c:	b480      	push	{r7}
 800214e:	b085      	sub	sp, #20
 8002150:	af00      	add	r7, sp, #0
 8002152:	60b9      	str	r1, [r7, #8]
 8002154:	607a      	str	r2, [r7, #4]
 8002156:	603b      	str	r3, [r7, #0]
 8002158:	4603      	mov	r3, r0
 800215a:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
 800215c:	bf00      	nop
 800215e:	3714      	adds	r7, #20
 8002160:	46bd      	mov	sp, r7
 8002162:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002166:	4770      	bx	lr

08002168 <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
 8002168:	b580      	push	{r7, lr}
 800216a:	b084      	sub	sp, #16
 800216c:	af00      	add	r7, sp, #0
 800216e:	60b9      	str	r1, [r7, #8]
 8002170:	607a      	str	r2, [r7, #4]
 8002172:	603b      	str	r3, [r7, #0]
 8002174:	4603      	mov	r3, r0
 8002176:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
 8002178:	7bfb      	ldrb	r3, [r7, #15]
 800217a:	2b00      	cmp	r3, #0
 800217c:	d003      	beq.n	8002186 <_out_char+0x1e>
    _putchar(character);
 800217e:	7bfb      	ldrb	r3, [r7, #15]
 8002180:	4618      	mov	r0, r3
 8002182:	f7ff ffbf 	bl	8002104 <_putchar>
  }
}
 8002186:	bf00      	nop
 8002188:	3710      	adds	r7, #16
 800218a:	46bd      	mov	sp, r7
 800218c:	bd80      	pop	{r7, pc}

0800218e <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
 800218e:	b480      	push	{r7}
 8002190:	b085      	sub	sp, #20
 8002192:	af00      	add	r7, sp, #0
 8002194:	6078      	str	r0, [r7, #4]
 8002196:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
 8002198:	687b      	ldr	r3, [r7, #4]
 800219a:	60fb      	str	r3, [r7, #12]
 800219c:	e002      	b.n	80021a4 <_strnlen_s+0x16>
 800219e:	68fb      	ldr	r3, [r7, #12]
 80021a0:	3301      	adds	r3, #1
 80021a2:	60fb      	str	r3, [r7, #12]
 80021a4:	68fb      	ldr	r3, [r7, #12]
 80021a6:	781b      	ldrb	r3, [r3, #0]
 80021a8:	2b00      	cmp	r3, #0
 80021aa:	d004      	beq.n	80021b6 <_strnlen_s+0x28>
 80021ac:	683b      	ldr	r3, [r7, #0]
 80021ae:	1e5a      	subs	r2, r3, #1
 80021b0:	603a      	str	r2, [r7, #0]
 80021b2:	2b00      	cmp	r3, #0
 80021b4:	d1f3      	bne.n	800219e <_strnlen_s+0x10>
  return (unsigned int)(s - str);
 80021b6:	68fa      	ldr	r2, [r7, #12]
 80021b8:	687b      	ldr	r3, [r7, #4]
 80021ba:	1ad3      	subs	r3, r2, r3
}
 80021bc:	4618      	mov	r0, r3
 80021be:	3714      	adds	r7, #20
 80021c0:	46bd      	mov	sp, r7
 80021c2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80021c6:	4770      	bx	lr

080021c8 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
 80021c8:	b480      	push	{r7}
 80021ca:	b083      	sub	sp, #12
 80021cc:	af00      	add	r7, sp, #0
 80021ce:	4603      	mov	r3, r0
 80021d0:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
 80021d2:	79fb      	ldrb	r3, [r7, #7]
 80021d4:	2b2f      	cmp	r3, #47	; 0x2f
 80021d6:	d904      	bls.n	80021e2 <_is_digit+0x1a>
 80021d8:	79fb      	ldrb	r3, [r7, #7]
 80021da:	2b39      	cmp	r3, #57	; 0x39
 80021dc:	d801      	bhi.n	80021e2 <_is_digit+0x1a>
 80021de:	2301      	movs	r3, #1
 80021e0:	e000      	b.n	80021e4 <_is_digit+0x1c>
 80021e2:	2300      	movs	r3, #0
 80021e4:	f003 0301 	and.w	r3, r3, #1
 80021e8:	b2db      	uxtb	r3, r3
}
 80021ea:	4618      	mov	r0, r3
 80021ec:	370c      	adds	r7, #12
 80021ee:	46bd      	mov	sp, r7
 80021f0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80021f4:	4770      	bx	lr

080021f6 <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
 80021f6:	b580      	push	{r7, lr}
 80021f8:	b084      	sub	sp, #16
 80021fa:	af00      	add	r7, sp, #0
 80021fc:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
 80021fe:	2300      	movs	r3, #0
 8002200:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8002202:	e00e      	b.n	8002222 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
 8002204:	68fa      	ldr	r2, [r7, #12]
 8002206:	4613      	mov	r3, r2
 8002208:	009b      	lsls	r3, r3, #2
 800220a:	4413      	add	r3, r2
 800220c:	005b      	lsls	r3, r3, #1
 800220e:	4618      	mov	r0, r3
 8002210:	687b      	ldr	r3, [r7, #4]
 8002212:	681b      	ldr	r3, [r3, #0]
 8002214:	1c59      	adds	r1, r3, #1
 8002216:	687a      	ldr	r2, [r7, #4]
 8002218:	6011      	str	r1, [r2, #0]
 800221a:	781b      	ldrb	r3, [r3, #0]
 800221c:	4403      	add	r3, r0
 800221e:	3b30      	subs	r3, #48	; 0x30
 8002220:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8002222:	687b      	ldr	r3, [r7, #4]
 8002224:	681b      	ldr	r3, [r3, #0]
 8002226:	781b      	ldrb	r3, [r3, #0]
 8002228:	4618      	mov	r0, r3
 800222a:	f7ff ffcd 	bl	80021c8 <_is_digit>
 800222e:	4603      	mov	r3, r0
 8002230:	2b00      	cmp	r3, #0
 8002232:	d1e7      	bne.n	8002204 <_atoi+0xe>
  }
  return i;
 8002234:	68fb      	ldr	r3, [r7, #12]
}
 8002236:	4618      	mov	r0, r3
 8002238:	3710      	adds	r7, #16
 800223a:	46bd      	mov	sp, r7
 800223c:	bd80      	pop	{r7, pc}

0800223e <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
 800223e:	b590      	push	{r4, r7, lr}
 8002240:	b087      	sub	sp, #28
 8002242:	af00      	add	r7, sp, #0
 8002244:	60f8      	str	r0, [r7, #12]
 8002246:	60b9      	str	r1, [r7, #8]
 8002248:	607a      	str	r2, [r7, #4]
 800224a:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
 800224c:	687b      	ldr	r3, [r7, #4]
 800224e:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
 8002250:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002252:	f003 0302 	and.w	r3, r3, #2
 8002256:	2b00      	cmp	r3, #0
 8002258:	d125      	bne.n	80022a6 <_out_rev+0x68>
 800225a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800225c:	f003 0301 	and.w	r3, r3, #1
 8002260:	2b00      	cmp	r3, #0
 8002262:	d120      	bne.n	80022a6 <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
 8002264:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002266:	617b      	str	r3, [r7, #20]
 8002268:	e00a      	b.n	8002280 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
 800226a:	687a      	ldr	r2, [r7, #4]
 800226c:	1c53      	adds	r3, r2, #1
 800226e:	607b      	str	r3, [r7, #4]
 8002270:	68fc      	ldr	r4, [r7, #12]
 8002272:	683b      	ldr	r3, [r7, #0]
 8002274:	68b9      	ldr	r1, [r7, #8]
 8002276:	2020      	movs	r0, #32
 8002278:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
 800227a:	697b      	ldr	r3, [r7, #20]
 800227c:	3301      	adds	r3, #1
 800227e:	617b      	str	r3, [r7, #20]
 8002280:	697a      	ldr	r2, [r7, #20]
 8002282:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002284:	429a      	cmp	r2, r3
 8002286:	d3f0      	bcc.n	800226a <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
 8002288:	e00d      	b.n	80022a6 <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
 800228a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800228c:	3b01      	subs	r3, #1
 800228e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8002290:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8002292:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002294:	4413      	add	r3, r2
 8002296:	7818      	ldrb	r0, [r3, #0]
 8002298:	687a      	ldr	r2, [r7, #4]
 800229a:	1c53      	adds	r3, r2, #1
 800229c:	607b      	str	r3, [r7, #4]
 800229e:	68fc      	ldr	r4, [r7, #12]
 80022a0:	683b      	ldr	r3, [r7, #0]
 80022a2:	68b9      	ldr	r1, [r7, #8]
 80022a4:	47a0      	blx	r4
  while (len) {
 80022a6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80022a8:	2b00      	cmp	r3, #0
 80022aa:	d1ee      	bne.n	800228a <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
 80022ac:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80022ae:	f003 0302 	and.w	r3, r3, #2
 80022b2:	2b00      	cmp	r3, #0
 80022b4:	d00e      	beq.n	80022d4 <_out_rev+0x96>
    while (idx - start_idx < width) {
 80022b6:	e007      	b.n	80022c8 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
 80022b8:	687a      	ldr	r2, [r7, #4]
 80022ba:	1c53      	adds	r3, r2, #1
 80022bc:	607b      	str	r3, [r7, #4]
 80022be:	68fc      	ldr	r4, [r7, #12]
 80022c0:	683b      	ldr	r3, [r7, #0]
 80022c2:	68b9      	ldr	r1, [r7, #8]
 80022c4:	2020      	movs	r0, #32
 80022c6:	47a0      	blx	r4
    while (idx - start_idx < width) {
 80022c8:	687a      	ldr	r2, [r7, #4]
 80022ca:	693b      	ldr	r3, [r7, #16]
 80022cc:	1ad3      	subs	r3, r2, r3
 80022ce:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80022d0:	429a      	cmp	r2, r3
 80022d2:	d8f1      	bhi.n	80022b8 <_out_rev+0x7a>
    }
  }

  return idx;
 80022d4:	687b      	ldr	r3, [r7, #4]
}
 80022d6:	4618      	mov	r0, r3
 80022d8:	371c      	adds	r7, #28
 80022da:	46bd      	mov	sp, r7
 80022dc:	bd90      	pop	{r4, r7, pc}

080022de <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
 80022de:	b580      	push	{r7, lr}
 80022e0:	b088      	sub	sp, #32
 80022e2:	af04      	add	r7, sp, #16
 80022e4:	60f8      	str	r0, [r7, #12]
 80022e6:	60b9      	str	r1, [r7, #8]
 80022e8:	607a      	str	r2, [r7, #4]
 80022ea:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
 80022ec:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80022ee:	f003 0302 	and.w	r3, r3, #2
 80022f2:	2b00      	cmp	r3, #0
 80022f4:	d136      	bne.n	8002364 <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
 80022f6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80022f8:	2b00      	cmp	r3, #0
 80022fa:	d018      	beq.n	800232e <_ntoa_format+0x50>
 80022fc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80022fe:	f003 0301 	and.w	r3, r3, #1
 8002302:	2b00      	cmp	r3, #0
 8002304:	d013      	beq.n	800232e <_ntoa_format+0x50>
 8002306:	f897 3020 	ldrb.w	r3, [r7, #32]
 800230a:	2b00      	cmp	r3, #0
 800230c:	d104      	bne.n	8002318 <_ntoa_format+0x3a>
 800230e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002310:	f003 030c 	and.w	r3, r3, #12
 8002314:	2b00      	cmp	r3, #0
 8002316:	d00a      	beq.n	800232e <_ntoa_format+0x50>
      width--;
 8002318:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800231a:	3b01      	subs	r3, #1
 800231c:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 800231e:	e006      	b.n	800232e <_ntoa_format+0x50>
      buf[len++] = '0';
 8002320:	69fb      	ldr	r3, [r7, #28]
 8002322:	1c5a      	adds	r2, r3, #1
 8002324:	61fa      	str	r2, [r7, #28]
 8002326:	69ba      	ldr	r2, [r7, #24]
 8002328:	4413      	add	r3, r2
 800232a:	2230      	movs	r2, #48	; 0x30
 800232c:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 800232e:	69fa      	ldr	r2, [r7, #28]
 8002330:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002332:	429a      	cmp	r2, r3
 8002334:	d20a      	bcs.n	800234c <_ntoa_format+0x6e>
 8002336:	69fb      	ldr	r3, [r7, #28]
 8002338:	2b1f      	cmp	r3, #31
 800233a:	d9f1      	bls.n	8002320 <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 800233c:	e006      	b.n	800234c <_ntoa_format+0x6e>
      buf[len++] = '0';
 800233e:	69fb      	ldr	r3, [r7, #28]
 8002340:	1c5a      	adds	r2, r3, #1
 8002342:	61fa      	str	r2, [r7, #28]
 8002344:	69ba      	ldr	r2, [r7, #24]
 8002346:	4413      	add	r3, r2
 8002348:	2230      	movs	r2, #48	; 0x30
 800234a:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 800234c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800234e:	f003 0301 	and.w	r3, r3, #1
 8002352:	2b00      	cmp	r3, #0
 8002354:	d006      	beq.n	8002364 <_ntoa_format+0x86>
 8002356:	69fa      	ldr	r2, [r7, #28]
 8002358:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800235a:	429a      	cmp	r2, r3
 800235c:	d202      	bcs.n	8002364 <_ntoa_format+0x86>
 800235e:	69fb      	ldr	r3, [r7, #28]
 8002360:	2b1f      	cmp	r3, #31
 8002362:	d9ec      	bls.n	800233e <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
 8002364:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002366:	f003 0310 	and.w	r3, r3, #16
 800236a:	2b00      	cmp	r3, #0
 800236c:	d058      	beq.n	8002420 <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
 800236e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002370:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002374:	2b00      	cmp	r3, #0
 8002376:	d116      	bne.n	80023a6 <_ntoa_format+0xc8>
 8002378:	69fb      	ldr	r3, [r7, #28]
 800237a:	2b00      	cmp	r3, #0
 800237c:	d013      	beq.n	80023a6 <_ntoa_format+0xc8>
 800237e:	69fa      	ldr	r2, [r7, #28]
 8002380:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002382:	429a      	cmp	r2, r3
 8002384:	d003      	beq.n	800238e <_ntoa_format+0xb0>
 8002386:	69fa      	ldr	r2, [r7, #28]
 8002388:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800238a:	429a      	cmp	r2, r3
 800238c:	d10b      	bne.n	80023a6 <_ntoa_format+0xc8>
      len--;
 800238e:	69fb      	ldr	r3, [r7, #28]
 8002390:	3b01      	subs	r3, #1
 8002392:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
 8002394:	69fb      	ldr	r3, [r7, #28]
 8002396:	2b00      	cmp	r3, #0
 8002398:	d005      	beq.n	80023a6 <_ntoa_format+0xc8>
 800239a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800239c:	2b10      	cmp	r3, #16
 800239e:	d102      	bne.n	80023a6 <_ntoa_format+0xc8>
        len--;
 80023a0:	69fb      	ldr	r3, [r7, #28]
 80023a2:	3b01      	subs	r3, #1
 80023a4:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80023a6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80023a8:	2b10      	cmp	r3, #16
 80023aa:	d10f      	bne.n	80023cc <_ntoa_format+0xee>
 80023ac:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80023ae:	f003 0320 	and.w	r3, r3, #32
 80023b2:	2b00      	cmp	r3, #0
 80023b4:	d10a      	bne.n	80023cc <_ntoa_format+0xee>
 80023b6:	69fb      	ldr	r3, [r7, #28]
 80023b8:	2b1f      	cmp	r3, #31
 80023ba:	d807      	bhi.n	80023cc <_ntoa_format+0xee>
      buf[len++] = 'x';
 80023bc:	69fb      	ldr	r3, [r7, #28]
 80023be:	1c5a      	adds	r2, r3, #1
 80023c0:	61fa      	str	r2, [r7, #28]
 80023c2:	69ba      	ldr	r2, [r7, #24]
 80023c4:	4413      	add	r3, r2
 80023c6:	2278      	movs	r2, #120	; 0x78
 80023c8:	701a      	strb	r2, [r3, #0]
 80023ca:	e01f      	b.n	800240c <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80023cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80023ce:	2b10      	cmp	r3, #16
 80023d0:	d10f      	bne.n	80023f2 <_ntoa_format+0x114>
 80023d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80023d4:	f003 0320 	and.w	r3, r3, #32
 80023d8:	2b00      	cmp	r3, #0
 80023da:	d00a      	beq.n	80023f2 <_ntoa_format+0x114>
 80023dc:	69fb      	ldr	r3, [r7, #28]
 80023de:	2b1f      	cmp	r3, #31
 80023e0:	d807      	bhi.n	80023f2 <_ntoa_format+0x114>
      buf[len++] = 'X';
 80023e2:	69fb      	ldr	r3, [r7, #28]
 80023e4:	1c5a      	adds	r2, r3, #1
 80023e6:	61fa      	str	r2, [r7, #28]
 80023e8:	69ba      	ldr	r2, [r7, #24]
 80023ea:	4413      	add	r3, r2
 80023ec:	2258      	movs	r2, #88	; 0x58
 80023ee:	701a      	strb	r2, [r3, #0]
 80023f0:	e00c      	b.n	800240c <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80023f2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80023f4:	2b02      	cmp	r3, #2
 80023f6:	d109      	bne.n	800240c <_ntoa_format+0x12e>
 80023f8:	69fb      	ldr	r3, [r7, #28]
 80023fa:	2b1f      	cmp	r3, #31
 80023fc:	d806      	bhi.n	800240c <_ntoa_format+0x12e>
      buf[len++] = 'b';
 80023fe:	69fb      	ldr	r3, [r7, #28]
 8002400:	1c5a      	adds	r2, r3, #1
 8002402:	61fa      	str	r2, [r7, #28]
 8002404:	69ba      	ldr	r2, [r7, #24]
 8002406:	4413      	add	r3, r2
 8002408:	2262      	movs	r2, #98	; 0x62
 800240a:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
 800240c:	69fb      	ldr	r3, [r7, #28]
 800240e:	2b1f      	cmp	r3, #31
 8002410:	d806      	bhi.n	8002420 <_ntoa_format+0x142>
      buf[len++] = '0';
 8002412:	69fb      	ldr	r3, [r7, #28]
 8002414:	1c5a      	adds	r2, r3, #1
 8002416:	61fa      	str	r2, [r7, #28]
 8002418:	69ba      	ldr	r2, [r7, #24]
 800241a:	4413      	add	r3, r2
 800241c:	2230      	movs	r2, #48	; 0x30
 800241e:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8002420:	69fb      	ldr	r3, [r7, #28]
 8002422:	2b1f      	cmp	r3, #31
 8002424:	d824      	bhi.n	8002470 <_ntoa_format+0x192>
    if (negative) {
 8002426:	f897 3020 	ldrb.w	r3, [r7, #32]
 800242a:	2b00      	cmp	r3, #0
 800242c:	d007      	beq.n	800243e <_ntoa_format+0x160>
      buf[len++] = '-';
 800242e:	69fb      	ldr	r3, [r7, #28]
 8002430:	1c5a      	adds	r2, r3, #1
 8002432:	61fa      	str	r2, [r7, #28]
 8002434:	69ba      	ldr	r2, [r7, #24]
 8002436:	4413      	add	r3, r2
 8002438:	222d      	movs	r2, #45	; 0x2d
 800243a:	701a      	strb	r2, [r3, #0]
 800243c:	e018      	b.n	8002470 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
 800243e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002440:	f003 0304 	and.w	r3, r3, #4
 8002444:	2b00      	cmp	r3, #0
 8002446:	d007      	beq.n	8002458 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
 8002448:	69fb      	ldr	r3, [r7, #28]
 800244a:	1c5a      	adds	r2, r3, #1
 800244c:	61fa      	str	r2, [r7, #28]
 800244e:	69ba      	ldr	r2, [r7, #24]
 8002450:	4413      	add	r3, r2
 8002452:	222b      	movs	r2, #43	; 0x2b
 8002454:	701a      	strb	r2, [r3, #0]
 8002456:	e00b      	b.n	8002470 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
 8002458:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800245a:	f003 0308 	and.w	r3, r3, #8
 800245e:	2b00      	cmp	r3, #0
 8002460:	d006      	beq.n	8002470 <_ntoa_format+0x192>
      buf[len++] = ' ';
 8002462:	69fb      	ldr	r3, [r7, #28]
 8002464:	1c5a      	adds	r2, r3, #1
 8002466:	61fa      	str	r2, [r7, #28]
 8002468:	69ba      	ldr	r2, [r7, #24]
 800246a:	4413      	add	r3, r2
 800246c:	2220      	movs	r2, #32
 800246e:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
 8002470:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002472:	9303      	str	r3, [sp, #12]
 8002474:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002476:	9302      	str	r3, [sp, #8]
 8002478:	69fb      	ldr	r3, [r7, #28]
 800247a:	9301      	str	r3, [sp, #4]
 800247c:	69bb      	ldr	r3, [r7, #24]
 800247e:	9300      	str	r3, [sp, #0]
 8002480:	683b      	ldr	r3, [r7, #0]
 8002482:	687a      	ldr	r2, [r7, #4]
 8002484:	68b9      	ldr	r1, [r7, #8]
 8002486:	68f8      	ldr	r0, [r7, #12]
 8002488:	f7ff fed9 	bl	800223e <_out_rev>
 800248c:	4603      	mov	r3, r0
}
 800248e:	4618      	mov	r0, r3
 8002490:	3710      	adds	r7, #16
 8002492:	46bd      	mov	sp, r7
 8002494:	bd80      	pop	{r7, pc}

08002496 <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8002496:	b580      	push	{r7, lr}
 8002498:	b096      	sub	sp, #88	; 0x58
 800249a:	af08      	add	r7, sp, #32
 800249c:	60f8      	str	r0, [r7, #12]
 800249e:	60b9      	str	r1, [r7, #8]
 80024a0:	607a      	str	r2, [r7, #4]
 80024a2:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
 80024a4:	2300      	movs	r3, #0
 80024a6:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
 80024a8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80024aa:	2b00      	cmp	r3, #0
 80024ac:	d103      	bne.n	80024b6 <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
 80024ae:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80024b0:	f023 0310 	bic.w	r3, r3, #16
 80024b4:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
 80024b6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80024b8:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80024bc:	2b00      	cmp	r3, #0
 80024be:	d002      	beq.n	80024c6 <_ntoa_long+0x30>
 80024c0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80024c2:	2b00      	cmp	r3, #0
 80024c4:	d033      	beq.n	800252e <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
 80024c6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80024c8:	6cba      	ldr	r2, [r7, #72]	; 0x48
 80024ca:	fbb3 f2f2 	udiv	r2, r3, r2
 80024ce:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 80024d0:	fb01 f202 	mul.w	r2, r1, r2
 80024d4:	1a9b      	subs	r3, r3, r2
 80024d6:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
 80024da:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80024de:	2b09      	cmp	r3, #9
 80024e0:	d804      	bhi.n	80024ec <_ntoa_long+0x56>
 80024e2:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 80024e6:	3330      	adds	r3, #48	; 0x30
 80024e8:	b2da      	uxtb	r2, r3
 80024ea:	e00d      	b.n	8002508 <_ntoa_long+0x72>
 80024ec:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 80024ee:	f003 0320 	and.w	r3, r3, #32
 80024f2:	2b00      	cmp	r3, #0
 80024f4:	d001      	beq.n	80024fa <_ntoa_long+0x64>
 80024f6:	2241      	movs	r2, #65	; 0x41
 80024f8:	e000      	b.n	80024fc <_ntoa_long+0x66>
 80024fa:	2261      	movs	r2, #97	; 0x61
 80024fc:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8002500:	4413      	add	r3, r2
 8002502:	b2db      	uxtb	r3, r3
 8002504:	3b0a      	subs	r3, #10
 8002506:	b2da      	uxtb	r2, r3
 8002508:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800250a:	1c59      	adds	r1, r3, #1
 800250c:	6379      	str	r1, [r7, #52]	; 0x34
 800250e:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8002512:	440b      	add	r3, r1
 8002514:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
 8002518:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800251a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 800251c:	fbb2 f3f3 	udiv	r3, r2, r3
 8002520:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
 8002522:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002524:	2b00      	cmp	r3, #0
 8002526:	d002      	beq.n	800252e <_ntoa_long+0x98>
 8002528:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800252a:	2b1f      	cmp	r3, #31
 800252c:	d9cb      	bls.n	80024c6 <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
 800252e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002530:	9306      	str	r3, [sp, #24]
 8002532:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8002534:	9305      	str	r3, [sp, #20]
 8002536:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8002538:	9304      	str	r3, [sp, #16]
 800253a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 800253c:	9303      	str	r3, [sp, #12]
 800253e:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
 8002542:	9302      	str	r3, [sp, #8]
 8002544:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002546:	9301      	str	r3, [sp, #4]
 8002548:	f107 0310 	add.w	r3, r7, #16
 800254c:	9300      	str	r3, [sp, #0]
 800254e:	683b      	ldr	r3, [r7, #0]
 8002550:	687a      	ldr	r2, [r7, #4]
 8002552:	68b9      	ldr	r1, [r7, #8]
 8002554:	68f8      	ldr	r0, [r7, #12]
 8002556:	f7ff fec2 	bl	80022de <_ntoa_format>
 800255a:	4603      	mov	r3, r0
}
 800255c:	4618      	mov	r0, r3
 800255e:	3738      	adds	r7, #56	; 0x38
 8002560:	46bd      	mov	sp, r7
 8002562:	bd80      	pop	{r7, pc}

08002564 <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
 8002564:	b590      	push	{r4, r7, lr}
 8002566:	b099      	sub	sp, #100	; 0x64
 8002568:	af06      	add	r7, sp, #24
 800256a:	60f8      	str	r0, [r7, #12]
 800256c:	60b9      	str	r1, [r7, #8]
 800256e:	607a      	str	r2, [r7, #4]
 8002570:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
 8002572:	2300      	movs	r3, #0
 8002574:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
 8002576:	68bb      	ldr	r3, [r7, #8]
 8002578:	2b00      	cmp	r3, #0
 800257a:	f040 83bf 	bne.w	8002cfc <_vsnprintf+0x798>
    // use null output function
    out = _out_null;
 800257e:	4b9f      	ldr	r3, [pc, #636]	; (80027fc <_vsnprintf+0x298>)
 8002580:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
 8002582:	e3bb      	b.n	8002cfc <_vsnprintf+0x798>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
 8002584:	683b      	ldr	r3, [r7, #0]
 8002586:	781b      	ldrb	r3, [r3, #0]
 8002588:	2b25      	cmp	r3, #37	; 0x25
 800258a:	d00c      	beq.n	80025a6 <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
 800258c:	683b      	ldr	r3, [r7, #0]
 800258e:	7818      	ldrb	r0, [r3, #0]
 8002590:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002592:	1c53      	adds	r3, r2, #1
 8002594:	637b      	str	r3, [r7, #52]	; 0x34
 8002596:	68fc      	ldr	r4, [r7, #12]
 8002598:	687b      	ldr	r3, [r7, #4]
 800259a:	68b9      	ldr	r1, [r7, #8]
 800259c:	47a0      	blx	r4
      format++;
 800259e:	683b      	ldr	r3, [r7, #0]
 80025a0:	3301      	adds	r3, #1
 80025a2:	603b      	str	r3, [r7, #0]
      continue;
 80025a4:	e3aa      	b.n	8002cfc <_vsnprintf+0x798>
    }
    else {
      // yes, evaluate it
      format++;
 80025a6:	683b      	ldr	r3, [r7, #0]
 80025a8:	3301      	adds	r3, #1
 80025aa:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
 80025ac:	2300      	movs	r3, #0
 80025ae:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
 80025b0:	683b      	ldr	r3, [r7, #0]
 80025b2:	781b      	ldrb	r3, [r3, #0]
 80025b4:	3b20      	subs	r3, #32
 80025b6:	2b10      	cmp	r3, #16
 80025b8:	d856      	bhi.n	8002668 <_vsnprintf+0x104>
 80025ba:	a201      	add	r2, pc, #4	; (adr r2, 80025c0 <_vsnprintf+0x5c>)
 80025bc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80025c0:	08002641 	.word	0x08002641
 80025c4:	08002669 	.word	0x08002669
 80025c8:	08002669 	.word	0x08002669
 80025cc:	08002655 	.word	0x08002655
 80025d0:	08002669 	.word	0x08002669
 80025d4:	08002669 	.word	0x08002669
 80025d8:	08002669 	.word	0x08002669
 80025dc:	08002669 	.word	0x08002669
 80025e0:	08002669 	.word	0x08002669
 80025e4:	08002669 	.word	0x08002669
 80025e8:	08002669 	.word	0x08002669
 80025ec:	0800262d 	.word	0x0800262d
 80025f0:	08002669 	.word	0x08002669
 80025f4:	08002619 	.word	0x08002619
 80025f8:	08002669 	.word	0x08002669
 80025fc:	08002669 	.word	0x08002669
 8002600:	08002605 	.word	0x08002605
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
 8002604:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002606:	f043 0301 	orr.w	r3, r3, #1
 800260a:	647b      	str	r3, [r7, #68]	; 0x44
 800260c:	683b      	ldr	r3, [r7, #0]
 800260e:	3301      	adds	r3, #1
 8002610:	603b      	str	r3, [r7, #0]
 8002612:	2301      	movs	r3, #1
 8002614:	63bb      	str	r3, [r7, #56]	; 0x38
 8002616:	e02a      	b.n	800266e <_vsnprintf+0x10a>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
 8002618:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800261a:	f043 0302 	orr.w	r3, r3, #2
 800261e:	647b      	str	r3, [r7, #68]	; 0x44
 8002620:	683b      	ldr	r3, [r7, #0]
 8002622:	3301      	adds	r3, #1
 8002624:	603b      	str	r3, [r7, #0]
 8002626:	2301      	movs	r3, #1
 8002628:	63bb      	str	r3, [r7, #56]	; 0x38
 800262a:	e020      	b.n	800266e <_vsnprintf+0x10a>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
 800262c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800262e:	f043 0304 	orr.w	r3, r3, #4
 8002632:	647b      	str	r3, [r7, #68]	; 0x44
 8002634:	683b      	ldr	r3, [r7, #0]
 8002636:	3301      	adds	r3, #1
 8002638:	603b      	str	r3, [r7, #0]
 800263a:	2301      	movs	r3, #1
 800263c:	63bb      	str	r3, [r7, #56]	; 0x38
 800263e:	e016      	b.n	800266e <_vsnprintf+0x10a>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
 8002640:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002642:	f043 0308 	orr.w	r3, r3, #8
 8002646:	647b      	str	r3, [r7, #68]	; 0x44
 8002648:	683b      	ldr	r3, [r7, #0]
 800264a:	3301      	adds	r3, #1
 800264c:	603b      	str	r3, [r7, #0]
 800264e:	2301      	movs	r3, #1
 8002650:	63bb      	str	r3, [r7, #56]	; 0x38
 8002652:	e00c      	b.n	800266e <_vsnprintf+0x10a>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
 8002654:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002656:	f043 0310 	orr.w	r3, r3, #16
 800265a:	647b      	str	r3, [r7, #68]	; 0x44
 800265c:	683b      	ldr	r3, [r7, #0]
 800265e:	3301      	adds	r3, #1
 8002660:	603b      	str	r3, [r7, #0]
 8002662:	2301      	movs	r3, #1
 8002664:	63bb      	str	r3, [r7, #56]	; 0x38
 8002666:	e002      	b.n	800266e <_vsnprintf+0x10a>
        default :                                   n = 0U; break;
 8002668:	2300      	movs	r3, #0
 800266a:	63bb      	str	r3, [r7, #56]	; 0x38
 800266c:	bf00      	nop
      }
    } while (n);
 800266e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8002670:	2b00      	cmp	r3, #0
 8002672:	d19d      	bne.n	80025b0 <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
 8002674:	2300      	movs	r3, #0
 8002676:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
 8002678:	683b      	ldr	r3, [r7, #0]
 800267a:	781b      	ldrb	r3, [r3, #0]
 800267c:	4618      	mov	r0, r3
 800267e:	f7ff fda3 	bl	80021c8 <_is_digit>
 8002682:	4603      	mov	r3, r0
 8002684:	2b00      	cmp	r3, #0
 8002686:	d005      	beq.n	8002694 <_vsnprintf+0x130>
      width = _atoi(&format);
 8002688:	463b      	mov	r3, r7
 800268a:	4618      	mov	r0, r3
 800268c:	f7ff fdb3 	bl	80021f6 <_atoi>
 8002690:	6438      	str	r0, [r7, #64]	; 0x40
 8002692:	e018      	b.n	80026c6 <_vsnprintf+0x162>
    }
    else if (*format == '*') {
 8002694:	683b      	ldr	r3, [r7, #0]
 8002696:	781b      	ldrb	r3, [r3, #0]
 8002698:	2b2a      	cmp	r3, #42	; 0x2a
 800269a:	d114      	bne.n	80026c6 <_vsnprintf+0x162>
      const int w = va_arg(va, int);
 800269c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800269e:	1d1a      	adds	r2, r3, #4
 80026a0:	65ba      	str	r2, [r7, #88]	; 0x58
 80026a2:	681b      	ldr	r3, [r3, #0]
 80026a4:	623b      	str	r3, [r7, #32]
      if (w < 0) {
 80026a6:	6a3b      	ldr	r3, [r7, #32]
 80026a8:	2b00      	cmp	r3, #0
 80026aa:	da07      	bge.n	80026bc <_vsnprintf+0x158>
        flags |= FLAGS_LEFT;    // reverse padding
 80026ac:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80026ae:	f043 0302 	orr.w	r3, r3, #2
 80026b2:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
 80026b4:	6a3b      	ldr	r3, [r7, #32]
 80026b6:	425b      	negs	r3, r3
 80026b8:	643b      	str	r3, [r7, #64]	; 0x40
 80026ba:	e001      	b.n	80026c0 <_vsnprintf+0x15c>
      }
      else {
        width = (unsigned int)w;
 80026bc:	6a3b      	ldr	r3, [r7, #32]
 80026be:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
 80026c0:	683b      	ldr	r3, [r7, #0]
 80026c2:	3301      	adds	r3, #1
 80026c4:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
 80026c6:	2300      	movs	r3, #0
 80026c8:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
 80026ca:	683b      	ldr	r3, [r7, #0]
 80026cc:	781b      	ldrb	r3, [r3, #0]
 80026ce:	2b2e      	cmp	r3, #46	; 0x2e
 80026d0:	d124      	bne.n	800271c <_vsnprintf+0x1b8>
      flags |= FLAGS_PRECISION;
 80026d2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80026d4:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80026d8:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
 80026da:	683b      	ldr	r3, [r7, #0]
 80026dc:	3301      	adds	r3, #1
 80026de:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
 80026e0:	683b      	ldr	r3, [r7, #0]
 80026e2:	781b      	ldrb	r3, [r3, #0]
 80026e4:	4618      	mov	r0, r3
 80026e6:	f7ff fd6f 	bl	80021c8 <_is_digit>
 80026ea:	4603      	mov	r3, r0
 80026ec:	2b00      	cmp	r3, #0
 80026ee:	d005      	beq.n	80026fc <_vsnprintf+0x198>
        precision = _atoi(&format);
 80026f0:	463b      	mov	r3, r7
 80026f2:	4618      	mov	r0, r3
 80026f4:	f7ff fd7f 	bl	80021f6 <_atoi>
 80026f8:	63f8      	str	r0, [r7, #60]	; 0x3c
 80026fa:	e00f      	b.n	800271c <_vsnprintf+0x1b8>
      }
      else if (*format == '*') {
 80026fc:	683b      	ldr	r3, [r7, #0]
 80026fe:	781b      	ldrb	r3, [r3, #0]
 8002700:	2b2a      	cmp	r3, #42	; 0x2a
 8002702:	d10b      	bne.n	800271c <_vsnprintf+0x1b8>
        const int prec = (int)va_arg(va, int);
 8002704:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002706:	1d1a      	adds	r2, r3, #4
 8002708:	65ba      	str	r2, [r7, #88]	; 0x58
 800270a:	681b      	ldr	r3, [r3, #0]
 800270c:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
 800270e:	69fb      	ldr	r3, [r7, #28]
 8002710:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002714:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
 8002716:	683b      	ldr	r3, [r7, #0]
 8002718:	3301      	adds	r3, #1
 800271a:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
 800271c:	683b      	ldr	r3, [r7, #0]
 800271e:	781b      	ldrb	r3, [r3, #0]
 8002720:	3b68      	subs	r3, #104	; 0x68
 8002722:	2b12      	cmp	r3, #18
 8002724:	d866      	bhi.n	80027f4 <_vsnprintf+0x290>
 8002726:	a201      	add	r2, pc, #4	; (adr r2, 800272c <_vsnprintf+0x1c8>)
 8002728:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800272c:	0800279f 	.word	0x0800279f
 8002730:	080027f5 	.word	0x080027f5
 8002734:	080027d5 	.word	0x080027d5
 8002738:	080027f5 	.word	0x080027f5
 800273c:	08002779 	.word	0x08002779
 8002740:	080027f5 	.word	0x080027f5
 8002744:	080027f5 	.word	0x080027f5
 8002748:	080027f5 	.word	0x080027f5
 800274c:	080027f5 	.word	0x080027f5
 8002750:	080027f5 	.word	0x080027f5
 8002754:	080027f5 	.word	0x080027f5
 8002758:	080027f5 	.word	0x080027f5
 800275c:	080027c5 	.word	0x080027c5
 8002760:	080027f5 	.word	0x080027f5
 8002764:	080027f5 	.word	0x080027f5
 8002768:	080027f5 	.word	0x080027f5
 800276c:	080027f5 	.word	0x080027f5
 8002770:	080027f5 	.word	0x080027f5
 8002774:	080027e5 	.word	0x080027e5
      case 'l' :
        flags |= FLAGS_LONG;
 8002778:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800277a:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800277e:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002780:	683b      	ldr	r3, [r7, #0]
 8002782:	3301      	adds	r3, #1
 8002784:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
 8002786:	683b      	ldr	r3, [r7, #0]
 8002788:	781b      	ldrb	r3, [r3, #0]
 800278a:	2b6c      	cmp	r3, #108	; 0x6c
 800278c:	d134      	bne.n	80027f8 <_vsnprintf+0x294>
          flags |= FLAGS_LONG_LONG;
 800278e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002790:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002794:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 8002796:	683b      	ldr	r3, [r7, #0]
 8002798:	3301      	adds	r3, #1
 800279a:	603b      	str	r3, [r7, #0]
        }
        break;
 800279c:	e02c      	b.n	80027f8 <_vsnprintf+0x294>
      case 'h' :
        flags |= FLAGS_SHORT;
 800279e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80027a0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80027a4:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 80027a6:	683b      	ldr	r3, [r7, #0]
 80027a8:	3301      	adds	r3, #1
 80027aa:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
 80027ac:	683b      	ldr	r3, [r7, #0]
 80027ae:	781b      	ldrb	r3, [r3, #0]
 80027b0:	2b68      	cmp	r3, #104	; 0x68
 80027b2:	d125      	bne.n	8002800 <_vsnprintf+0x29c>
          flags |= FLAGS_CHAR;
 80027b4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80027b6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80027ba:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 80027bc:	683b      	ldr	r3, [r7, #0]
 80027be:	3301      	adds	r3, #1
 80027c0:	603b      	str	r3, [r7, #0]
        }
        break;
 80027c2:	e01d      	b.n	8002800 <_vsnprintf+0x29c>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 80027c4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80027c6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80027ca:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 80027cc:	683b      	ldr	r3, [r7, #0]
 80027ce:	3301      	adds	r3, #1
 80027d0:	603b      	str	r3, [r7, #0]
        break;
 80027d2:	e016      	b.n	8002802 <_vsnprintf+0x29e>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 80027d4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80027d6:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 80027da:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 80027dc:	683b      	ldr	r3, [r7, #0]
 80027de:	3301      	adds	r3, #1
 80027e0:	603b      	str	r3, [r7, #0]
        break;
 80027e2:	e00e      	b.n	8002802 <_vsnprintf+0x29e>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 80027e4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80027e6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80027ea:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 80027ec:	683b      	ldr	r3, [r7, #0]
 80027ee:	3301      	adds	r3, #1
 80027f0:	603b      	str	r3, [r7, #0]
        break;
 80027f2:	e006      	b.n	8002802 <_vsnprintf+0x29e>
      default :
        break;
 80027f4:	bf00      	nop
 80027f6:	e004      	b.n	8002802 <_vsnprintf+0x29e>
        break;
 80027f8:	bf00      	nop
 80027fa:	e002      	b.n	8002802 <_vsnprintf+0x29e>
 80027fc:	0800214d 	.word	0x0800214d
        break;
 8002800:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
 8002802:	683b      	ldr	r3, [r7, #0]
 8002804:	781b      	ldrb	r3, [r3, #0]
 8002806:	3b25      	subs	r3, #37	; 0x25
 8002808:	2b53      	cmp	r3, #83	; 0x53
 800280a:	f200 826a 	bhi.w	8002ce2 <_vsnprintf+0x77e>
 800280e:	a201      	add	r2, pc, #4	; (adr r2, 8002814 <_vsnprintf+0x2b0>)
 8002810:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002814:	08002ccb 	.word	0x08002ccb
 8002818:	08002ce3 	.word	0x08002ce3
 800281c:	08002ce3 	.word	0x08002ce3
 8002820:	08002ce3 	.word	0x08002ce3
 8002824:	08002ce3 	.word	0x08002ce3
 8002828:	08002ce3 	.word	0x08002ce3
 800282c:	08002ce3 	.word	0x08002ce3
 8002830:	08002ce3 	.word	0x08002ce3
 8002834:	08002ce3 	.word	0x08002ce3
 8002838:	08002ce3 	.word	0x08002ce3
 800283c:	08002ce3 	.word	0x08002ce3
 8002840:	08002ce3 	.word	0x08002ce3
 8002844:	08002ce3 	.word	0x08002ce3
 8002848:	08002ce3 	.word	0x08002ce3
 800284c:	08002ce3 	.word	0x08002ce3
 8002850:	08002ce3 	.word	0x08002ce3
 8002854:	08002ce3 	.word	0x08002ce3
 8002858:	08002ce3 	.word	0x08002ce3
 800285c:	08002ce3 	.word	0x08002ce3
 8002860:	08002ce3 	.word	0x08002ce3
 8002864:	08002ce3 	.word	0x08002ce3
 8002868:	08002ce3 	.word	0x08002ce3
 800286c:	08002ce3 	.word	0x08002ce3
 8002870:	08002ce3 	.word	0x08002ce3
 8002874:	08002ce3 	.word	0x08002ce3
 8002878:	08002ce3 	.word	0x08002ce3
 800287c:	08002ce3 	.word	0x08002ce3
 8002880:	08002ce3 	.word	0x08002ce3
 8002884:	08002ce3 	.word	0x08002ce3
 8002888:	08002ce3 	.word	0x08002ce3
 800288c:	08002ce3 	.word	0x08002ce3
 8002890:	08002ce3 	.word	0x08002ce3
 8002894:	08002ce3 	.word	0x08002ce3
 8002898:	08002ce3 	.word	0x08002ce3
 800289c:	08002ce3 	.word	0x08002ce3
 80028a0:	08002ce3 	.word	0x08002ce3
 80028a4:	08002ce3 	.word	0x08002ce3
 80028a8:	08002ce3 	.word	0x08002ce3
 80028ac:	08002ce3 	.word	0x08002ce3
 80028b0:	08002ce3 	.word	0x08002ce3
 80028b4:	08002ce3 	.word	0x08002ce3
 80028b8:	08002ce3 	.word	0x08002ce3
 80028bc:	08002ce3 	.word	0x08002ce3
 80028c0:	08002ce3 	.word	0x08002ce3
 80028c4:	08002ce3 	.word	0x08002ce3
 80028c8:	08002ce3 	.word	0x08002ce3
 80028cc:	08002ce3 	.word	0x08002ce3
 80028d0:	08002ce3 	.word	0x08002ce3
 80028d4:	08002ce3 	.word	0x08002ce3
 80028d8:	08002ce3 	.word	0x08002ce3
 80028dc:	08002ce3 	.word	0x08002ce3
 80028e0:	08002965 	.word	0x08002965
 80028e4:	08002ce3 	.word	0x08002ce3
 80028e8:	08002ce3 	.word	0x08002ce3
 80028ec:	08002ce3 	.word	0x08002ce3
 80028f0:	08002ce3 	.word	0x08002ce3
 80028f4:	08002ce3 	.word	0x08002ce3
 80028f8:	08002ce3 	.word	0x08002ce3
 80028fc:	08002ce3 	.word	0x08002ce3
 8002900:	08002ce3 	.word	0x08002ce3
 8002904:	08002ce3 	.word	0x08002ce3
 8002908:	08002965 	.word	0x08002965
 800290c:	08002b51 	.word	0x08002b51
 8002910:	08002965 	.word	0x08002965
 8002914:	08002ce3 	.word	0x08002ce3
 8002918:	08002ce3 	.word	0x08002ce3
 800291c:	08002ce3 	.word	0x08002ce3
 8002920:	08002ce3 	.word	0x08002ce3
 8002924:	08002965 	.word	0x08002965
 8002928:	08002ce3 	.word	0x08002ce3
 800292c:	08002ce3 	.word	0x08002ce3
 8002930:	08002ce3 	.word	0x08002ce3
 8002934:	08002ce3 	.word	0x08002ce3
 8002938:	08002ce3 	.word	0x08002ce3
 800293c:	08002965 	.word	0x08002965
 8002940:	08002c89 	.word	0x08002c89
 8002944:	08002ce3 	.word	0x08002ce3
 8002948:	08002ce3 	.word	0x08002ce3
 800294c:	08002bc5 	.word	0x08002bc5
 8002950:	08002ce3 	.word	0x08002ce3
 8002954:	08002965 	.word	0x08002965
 8002958:	08002ce3 	.word	0x08002ce3
 800295c:	08002ce3 	.word	0x08002ce3
 8002960:	08002965 	.word	0x08002965
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
 8002964:	683b      	ldr	r3, [r7, #0]
 8002966:	781b      	ldrb	r3, [r3, #0]
 8002968:	2b78      	cmp	r3, #120	; 0x78
 800296a:	d003      	beq.n	8002974 <_vsnprintf+0x410>
 800296c:	683b      	ldr	r3, [r7, #0]
 800296e:	781b      	ldrb	r3, [r3, #0]
 8002970:	2b58      	cmp	r3, #88	; 0x58
 8002972:	d102      	bne.n	800297a <_vsnprintf+0x416>
          base = 16U;
 8002974:	2310      	movs	r3, #16
 8002976:	633b      	str	r3, [r7, #48]	; 0x30
 8002978:	e013      	b.n	80029a2 <_vsnprintf+0x43e>
        }
        else if (*format == 'o') {
 800297a:	683b      	ldr	r3, [r7, #0]
 800297c:	781b      	ldrb	r3, [r3, #0]
 800297e:	2b6f      	cmp	r3, #111	; 0x6f
 8002980:	d102      	bne.n	8002988 <_vsnprintf+0x424>
          base =  8U;
 8002982:	2308      	movs	r3, #8
 8002984:	633b      	str	r3, [r7, #48]	; 0x30
 8002986:	e00c      	b.n	80029a2 <_vsnprintf+0x43e>
        }
        else if (*format == 'b') {
 8002988:	683b      	ldr	r3, [r7, #0]
 800298a:	781b      	ldrb	r3, [r3, #0]
 800298c:	2b62      	cmp	r3, #98	; 0x62
 800298e:	d102      	bne.n	8002996 <_vsnprintf+0x432>
          base =  2U;
 8002990:	2302      	movs	r3, #2
 8002992:	633b      	str	r3, [r7, #48]	; 0x30
 8002994:	e005      	b.n	80029a2 <_vsnprintf+0x43e>
        }
        else {
          base = 10U;
 8002996:	230a      	movs	r3, #10
 8002998:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
 800299a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800299c:	f023 0310 	bic.w	r3, r3, #16
 80029a0:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
 80029a2:	683b      	ldr	r3, [r7, #0]
 80029a4:	781b      	ldrb	r3, [r3, #0]
 80029a6:	2b58      	cmp	r3, #88	; 0x58
 80029a8:	d103      	bne.n	80029b2 <_vsnprintf+0x44e>
          flags |= FLAGS_UPPERCASE;
 80029aa:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029ac:	f043 0320 	orr.w	r3, r3, #32
 80029b0:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
 80029b2:	683b      	ldr	r3, [r7, #0]
 80029b4:	781b      	ldrb	r3, [r3, #0]
 80029b6:	2b69      	cmp	r3, #105	; 0x69
 80029b8:	d007      	beq.n	80029ca <_vsnprintf+0x466>
 80029ba:	683b      	ldr	r3, [r7, #0]
 80029bc:	781b      	ldrb	r3, [r3, #0]
 80029be:	2b64      	cmp	r3, #100	; 0x64
 80029c0:	d003      	beq.n	80029ca <_vsnprintf+0x466>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
 80029c2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029c4:	f023 030c 	bic.w	r3, r3, #12
 80029c8:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
 80029ca:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029cc:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80029d0:	2b00      	cmp	r3, #0
 80029d2:	d003      	beq.n	80029dc <_vsnprintf+0x478>
          flags &= ~FLAGS_ZEROPAD;
 80029d4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029d6:	f023 0301 	bic.w	r3, r3, #1
 80029da:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
 80029dc:	683b      	ldr	r3, [r7, #0]
 80029de:	781b      	ldrb	r3, [r3, #0]
 80029e0:	2b69      	cmp	r3, #105	; 0x69
 80029e2:	d003      	beq.n	80029ec <_vsnprintf+0x488>
 80029e4:	683b      	ldr	r3, [r7, #0]
 80029e6:	781b      	ldrb	r3, [r3, #0]
 80029e8:	2b64      	cmp	r3, #100	; 0x64
 80029ea:	d15e      	bne.n	8002aaa <_vsnprintf+0x546>
          // signed
          if (flags & FLAGS_LONG_LONG) {
 80029ec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029ee:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80029f2:	2b00      	cmp	r3, #0
 80029f4:	f040 80a8 	bne.w	8002b48 <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 80029f8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80029fa:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80029fe:	2b00      	cmp	r3, #0
 8002a00:	d01e      	beq.n	8002a40 <_vsnprintf+0x4dc>
            const long value = va_arg(va, long);
 8002a02:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a04:	1d1a      	adds	r2, r3, #4
 8002a06:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a08:	681b      	ldr	r3, [r3, #0]
 8002a0a:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8002a0c:	693b      	ldr	r3, [r7, #16]
 8002a0e:	2b00      	cmp	r3, #0
 8002a10:	bfb8      	it	lt
 8002a12:	425b      	neglt	r3, r3
 8002a14:	4619      	mov	r1, r3
 8002a16:	693b      	ldr	r3, [r7, #16]
 8002a18:	0fdb      	lsrs	r3, r3, #31
 8002a1a:	b2db      	uxtb	r3, r3
 8002a1c:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002a1e:	9205      	str	r2, [sp, #20]
 8002a20:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002a22:	9204      	str	r2, [sp, #16]
 8002a24:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002a26:	9203      	str	r2, [sp, #12]
 8002a28:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002a2a:	9202      	str	r2, [sp, #8]
 8002a2c:	9301      	str	r3, [sp, #4]
 8002a2e:	9100      	str	r1, [sp, #0]
 8002a30:	687b      	ldr	r3, [r7, #4]
 8002a32:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002a34:	68b9      	ldr	r1, [r7, #8]
 8002a36:	68f8      	ldr	r0, [r7, #12]
 8002a38:	f7ff fd2d 	bl	8002496 <_ntoa_long>
 8002a3c:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 8002a3e:	e083      	b.n	8002b48 <_vsnprintf+0x5e4>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
 8002a40:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002a42:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8002a46:	2b00      	cmp	r3, #0
 8002a48:	d005      	beq.n	8002a56 <_vsnprintf+0x4f2>
 8002a4a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a4c:	1d1a      	adds	r2, r3, #4
 8002a4e:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a50:	681b      	ldr	r3, [r3, #0]
 8002a52:	b2db      	uxtb	r3, r3
 8002a54:	e00e      	b.n	8002a74 <_vsnprintf+0x510>
 8002a56:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002a58:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002a5c:	2b00      	cmp	r3, #0
 8002a5e:	d005      	beq.n	8002a6c <_vsnprintf+0x508>
 8002a60:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a62:	1d1a      	adds	r2, r3, #4
 8002a64:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a66:	681b      	ldr	r3, [r3, #0]
 8002a68:	b21b      	sxth	r3, r3
 8002a6a:	e003      	b.n	8002a74 <_vsnprintf+0x510>
 8002a6c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002a6e:	1d1a      	adds	r2, r3, #4
 8002a70:	65ba      	str	r2, [r7, #88]	; 0x58
 8002a72:	681b      	ldr	r3, [r3, #0]
 8002a74:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8002a76:	697b      	ldr	r3, [r7, #20]
 8002a78:	2b00      	cmp	r3, #0
 8002a7a:	bfb8      	it	lt
 8002a7c:	425b      	neglt	r3, r3
 8002a7e:	4619      	mov	r1, r3
 8002a80:	697b      	ldr	r3, [r7, #20]
 8002a82:	0fdb      	lsrs	r3, r3, #31
 8002a84:	b2db      	uxtb	r3, r3
 8002a86:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002a88:	9205      	str	r2, [sp, #20]
 8002a8a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002a8c:	9204      	str	r2, [sp, #16]
 8002a8e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002a90:	9203      	str	r2, [sp, #12]
 8002a92:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002a94:	9202      	str	r2, [sp, #8]
 8002a96:	9301      	str	r3, [sp, #4]
 8002a98:	9100      	str	r1, [sp, #0]
 8002a9a:	687b      	ldr	r3, [r7, #4]
 8002a9c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002a9e:	68b9      	ldr	r1, [r7, #8]
 8002aa0:	68f8      	ldr	r0, [r7, #12]
 8002aa2:	f7ff fcf8 	bl	8002496 <_ntoa_long>
 8002aa6:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 8002aa8:	e04e      	b.n	8002b48 <_vsnprintf+0x5e4>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
 8002aaa:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002aac:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8002ab0:	2b00      	cmp	r3, #0
 8002ab2:	d149      	bne.n	8002b48 <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 8002ab4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002ab6:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002aba:	2b00      	cmp	r3, #0
 8002abc:	d016      	beq.n	8002aec <_vsnprintf+0x588>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
 8002abe:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002ac0:	1d1a      	adds	r2, r3, #4
 8002ac2:	65ba      	str	r2, [r7, #88]	; 0x58
 8002ac4:	681b      	ldr	r3, [r3, #0]
 8002ac6:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002ac8:	9205      	str	r2, [sp, #20]
 8002aca:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002acc:	9204      	str	r2, [sp, #16]
 8002ace:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002ad0:	9203      	str	r2, [sp, #12]
 8002ad2:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002ad4:	9202      	str	r2, [sp, #8]
 8002ad6:	2200      	movs	r2, #0
 8002ad8:	9201      	str	r2, [sp, #4]
 8002ada:	9300      	str	r3, [sp, #0]
 8002adc:	687b      	ldr	r3, [r7, #4]
 8002ade:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002ae0:	68b9      	ldr	r1, [r7, #8]
 8002ae2:	68f8      	ldr	r0, [r7, #12]
 8002ae4:	f7ff fcd7 	bl	8002496 <_ntoa_long>
 8002ae8:	6378      	str	r0, [r7, #52]	; 0x34
 8002aea:	e02d      	b.n	8002b48 <_vsnprintf+0x5e4>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
 8002aec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002aee:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8002af2:	2b00      	cmp	r3, #0
 8002af4:	d005      	beq.n	8002b02 <_vsnprintf+0x59e>
 8002af6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002af8:	1d1a      	adds	r2, r3, #4
 8002afa:	65ba      	str	r2, [r7, #88]	; 0x58
 8002afc:	681b      	ldr	r3, [r3, #0]
 8002afe:	b2db      	uxtb	r3, r3
 8002b00:	e00e      	b.n	8002b20 <_vsnprintf+0x5bc>
 8002b02:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b04:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002b08:	2b00      	cmp	r3, #0
 8002b0a:	d005      	beq.n	8002b18 <_vsnprintf+0x5b4>
 8002b0c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002b0e:	1d1a      	adds	r2, r3, #4
 8002b10:	65ba      	str	r2, [r7, #88]	; 0x58
 8002b12:	681b      	ldr	r3, [r3, #0]
 8002b14:	b29b      	uxth	r3, r3
 8002b16:	e003      	b.n	8002b20 <_vsnprintf+0x5bc>
 8002b18:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002b1a:	1d1a      	adds	r2, r3, #4
 8002b1c:	65ba      	str	r2, [r7, #88]	; 0x58
 8002b1e:	681b      	ldr	r3, [r3, #0]
 8002b20:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
 8002b22:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b24:	9305      	str	r3, [sp, #20]
 8002b26:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002b28:	9304      	str	r3, [sp, #16]
 8002b2a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002b2c:	9303      	str	r3, [sp, #12]
 8002b2e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002b30:	9302      	str	r3, [sp, #8]
 8002b32:	2300      	movs	r3, #0
 8002b34:	9301      	str	r3, [sp, #4]
 8002b36:	69bb      	ldr	r3, [r7, #24]
 8002b38:	9300      	str	r3, [sp, #0]
 8002b3a:	687b      	ldr	r3, [r7, #4]
 8002b3c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b3e:	68b9      	ldr	r1, [r7, #8]
 8002b40:	68f8      	ldr	r0, [r7, #12]
 8002b42:	f7ff fca8 	bl	8002496 <_ntoa_long>
 8002b46:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
 8002b48:	683b      	ldr	r3, [r7, #0]
 8002b4a:	3301      	adds	r3, #1
 8002b4c:	603b      	str	r3, [r7, #0]
        break;
 8002b4e:	e0d5      	b.n	8002cfc <_vsnprintf+0x798>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
 8002b50:	2301      	movs	r3, #1
 8002b52:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
 8002b54:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b56:	f003 0302 	and.w	r3, r3, #2
 8002b5a:	2b00      	cmp	r3, #0
 8002b5c:	d10e      	bne.n	8002b7c <_vsnprintf+0x618>
          while (l++ < width) {
 8002b5e:	e007      	b.n	8002b70 <_vsnprintf+0x60c>
            out(' ', buffer, idx++, maxlen);
 8002b60:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b62:	1c53      	adds	r3, r2, #1
 8002b64:	637b      	str	r3, [r7, #52]	; 0x34
 8002b66:	68fc      	ldr	r4, [r7, #12]
 8002b68:	687b      	ldr	r3, [r7, #4]
 8002b6a:	68b9      	ldr	r1, [r7, #8]
 8002b6c:	2020      	movs	r0, #32
 8002b6e:	47a0      	blx	r4
          while (l++ < width) {
 8002b70:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002b72:	1c5a      	adds	r2, r3, #1
 8002b74:	62fa      	str	r2, [r7, #44]	; 0x2c
 8002b76:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002b78:	429a      	cmp	r2, r3
 8002b7a:	d8f1      	bhi.n	8002b60 <_vsnprintf+0x5fc>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
 8002b7c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002b7e:	1d1a      	adds	r2, r3, #4
 8002b80:	65ba      	str	r2, [r7, #88]	; 0x58
 8002b82:	681b      	ldr	r3, [r3, #0]
 8002b84:	b2d8      	uxtb	r0, r3
 8002b86:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b88:	1c53      	adds	r3, r2, #1
 8002b8a:	637b      	str	r3, [r7, #52]	; 0x34
 8002b8c:	68fc      	ldr	r4, [r7, #12]
 8002b8e:	687b      	ldr	r3, [r7, #4]
 8002b90:	68b9      	ldr	r1, [r7, #8]
 8002b92:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
 8002b94:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002b96:	f003 0302 	and.w	r3, r3, #2
 8002b9a:	2b00      	cmp	r3, #0
 8002b9c:	d00e      	beq.n	8002bbc <_vsnprintf+0x658>
          while (l++ < width) {
 8002b9e:	e007      	b.n	8002bb0 <_vsnprintf+0x64c>
            out(' ', buffer, idx++, maxlen);
 8002ba0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002ba2:	1c53      	adds	r3, r2, #1
 8002ba4:	637b      	str	r3, [r7, #52]	; 0x34
 8002ba6:	68fc      	ldr	r4, [r7, #12]
 8002ba8:	687b      	ldr	r3, [r7, #4]
 8002baa:	68b9      	ldr	r1, [r7, #8]
 8002bac:	2020      	movs	r0, #32
 8002bae:	47a0      	blx	r4
          while (l++ < width) {
 8002bb0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002bb2:	1c5a      	adds	r2, r3, #1
 8002bb4:	62fa      	str	r2, [r7, #44]	; 0x2c
 8002bb6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002bb8:	429a      	cmp	r2, r3
 8002bba:	d8f1      	bhi.n	8002ba0 <_vsnprintf+0x63c>
          }
        }
        format++;
 8002bbc:	683b      	ldr	r3, [r7, #0]
 8002bbe:	3301      	adds	r3, #1
 8002bc0:	603b      	str	r3, [r7, #0]
        break;
 8002bc2:	e09b      	b.n	8002cfc <_vsnprintf+0x798>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
 8002bc4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002bc6:	1d1a      	adds	r2, r3, #4
 8002bc8:	65ba      	str	r2, [r7, #88]	; 0x58
 8002bca:	681b      	ldr	r3, [r3, #0]
 8002bcc:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
 8002bce:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002bd0:	2b00      	cmp	r3, #0
 8002bd2:	d001      	beq.n	8002bd8 <_vsnprintf+0x674>
 8002bd4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002bd6:	e001      	b.n	8002bdc <_vsnprintf+0x678>
 8002bd8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002bdc:	4619      	mov	r1, r3
 8002bde:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8002be0:	f7ff fad5 	bl	800218e <_strnlen_s>
 8002be4:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
 8002be6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002be8:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002bec:	2b00      	cmp	r3, #0
 8002bee:	d005      	beq.n	8002bfc <_vsnprintf+0x698>
          l = (l < precision ? l : precision);
 8002bf0:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8002bf2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002bf4:	4293      	cmp	r3, r2
 8002bf6:	bf28      	it	cs
 8002bf8:	4613      	movcs	r3, r2
 8002bfa:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
 8002bfc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002bfe:	f003 0302 	and.w	r3, r3, #2
 8002c02:	2b00      	cmp	r3, #0
 8002c04:	d11a      	bne.n	8002c3c <_vsnprintf+0x6d8>
          while (l++ < width) {
 8002c06:	e007      	b.n	8002c18 <_vsnprintf+0x6b4>
            out(' ', buffer, idx++, maxlen);
 8002c08:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c0a:	1c53      	adds	r3, r2, #1
 8002c0c:	637b      	str	r3, [r7, #52]	; 0x34
 8002c0e:	68fc      	ldr	r4, [r7, #12]
 8002c10:	687b      	ldr	r3, [r7, #4]
 8002c12:	68b9      	ldr	r1, [r7, #8]
 8002c14:	2020      	movs	r0, #32
 8002c16:	47a0      	blx	r4
          while (l++ < width) {
 8002c18:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002c1a:	1c5a      	adds	r2, r3, #1
 8002c1c:	627a      	str	r2, [r7, #36]	; 0x24
 8002c1e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002c20:	429a      	cmp	r2, r3
 8002c22:	d8f1      	bhi.n	8002c08 <_vsnprintf+0x6a4>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 8002c24:	e00a      	b.n	8002c3c <_vsnprintf+0x6d8>
          out(*(p++), buffer, idx++, maxlen);
 8002c26:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002c28:	1c5a      	adds	r2, r3, #1
 8002c2a:	62ba      	str	r2, [r7, #40]	; 0x28
 8002c2c:	7818      	ldrb	r0, [r3, #0]
 8002c2e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c30:	1c53      	adds	r3, r2, #1
 8002c32:	637b      	str	r3, [r7, #52]	; 0x34
 8002c34:	68fc      	ldr	r4, [r7, #12]
 8002c36:	687b      	ldr	r3, [r7, #4]
 8002c38:	68b9      	ldr	r1, [r7, #8]
 8002c3a:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 8002c3c:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002c3e:	781b      	ldrb	r3, [r3, #0]
 8002c40:	2b00      	cmp	r3, #0
 8002c42:	d009      	beq.n	8002c58 <_vsnprintf+0x6f4>
 8002c44:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c46:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002c4a:	2b00      	cmp	r3, #0
 8002c4c:	d0eb      	beq.n	8002c26 <_vsnprintf+0x6c2>
 8002c4e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002c50:	1e5a      	subs	r2, r3, #1
 8002c52:	63fa      	str	r2, [r7, #60]	; 0x3c
 8002c54:	2b00      	cmp	r3, #0
 8002c56:	d1e6      	bne.n	8002c26 <_vsnprintf+0x6c2>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
 8002c58:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c5a:	f003 0302 	and.w	r3, r3, #2
 8002c5e:	2b00      	cmp	r3, #0
 8002c60:	d00e      	beq.n	8002c80 <_vsnprintf+0x71c>
          while (l++ < width) {
 8002c62:	e007      	b.n	8002c74 <_vsnprintf+0x710>
            out(' ', buffer, idx++, maxlen);
 8002c64:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002c66:	1c53      	adds	r3, r2, #1
 8002c68:	637b      	str	r3, [r7, #52]	; 0x34
 8002c6a:	68fc      	ldr	r4, [r7, #12]
 8002c6c:	687b      	ldr	r3, [r7, #4]
 8002c6e:	68b9      	ldr	r1, [r7, #8]
 8002c70:	2020      	movs	r0, #32
 8002c72:	47a0      	blx	r4
          while (l++ < width) {
 8002c74:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002c76:	1c5a      	adds	r2, r3, #1
 8002c78:	627a      	str	r2, [r7, #36]	; 0x24
 8002c7a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002c7c:	429a      	cmp	r2, r3
 8002c7e:	d8f1      	bhi.n	8002c64 <_vsnprintf+0x700>
          }
        }
        format++;
 8002c80:	683b      	ldr	r3, [r7, #0]
 8002c82:	3301      	adds	r3, #1
 8002c84:	603b      	str	r3, [r7, #0]
        break;
 8002c86:	e039      	b.n	8002cfc <_vsnprintf+0x798>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
 8002c88:	2308      	movs	r3, #8
 8002c8a:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
 8002c8c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c8e:	f043 0321 	orr.w	r3, r3, #33	; 0x21
 8002c92:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
 8002c94:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002c96:	1d1a      	adds	r2, r3, #4
 8002c98:	65ba      	str	r2, [r7, #88]	; 0x58
 8002c9a:	681b      	ldr	r3, [r3, #0]
 8002c9c:	461a      	mov	r2, r3
 8002c9e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002ca0:	9305      	str	r3, [sp, #20]
 8002ca2:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002ca4:	9304      	str	r3, [sp, #16]
 8002ca6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002ca8:	9303      	str	r3, [sp, #12]
 8002caa:	2310      	movs	r3, #16
 8002cac:	9302      	str	r3, [sp, #8]
 8002cae:	2300      	movs	r3, #0
 8002cb0:	9301      	str	r3, [sp, #4]
 8002cb2:	9200      	str	r2, [sp, #0]
 8002cb4:	687b      	ldr	r3, [r7, #4]
 8002cb6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002cb8:	68b9      	ldr	r1, [r7, #8]
 8002cba:	68f8      	ldr	r0, [r7, #12]
 8002cbc:	f7ff fbeb 	bl	8002496 <_ntoa_long>
 8002cc0:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
 8002cc2:	683b      	ldr	r3, [r7, #0]
 8002cc4:	3301      	adds	r3, #1
 8002cc6:	603b      	str	r3, [r7, #0]
        break;
 8002cc8:	e018      	b.n	8002cfc <_vsnprintf+0x798>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
 8002cca:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002ccc:	1c53      	adds	r3, r2, #1
 8002cce:	637b      	str	r3, [r7, #52]	; 0x34
 8002cd0:	68fc      	ldr	r4, [r7, #12]
 8002cd2:	687b      	ldr	r3, [r7, #4]
 8002cd4:	68b9      	ldr	r1, [r7, #8]
 8002cd6:	2025      	movs	r0, #37	; 0x25
 8002cd8:	47a0      	blx	r4
        format++;
 8002cda:	683b      	ldr	r3, [r7, #0]
 8002cdc:	3301      	adds	r3, #1
 8002cde:	603b      	str	r3, [r7, #0]
        break;
 8002ce0:	e00c      	b.n	8002cfc <_vsnprintf+0x798>

      default :
        out(*format, buffer, idx++, maxlen);
 8002ce2:	683b      	ldr	r3, [r7, #0]
 8002ce4:	7818      	ldrb	r0, [r3, #0]
 8002ce6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002ce8:	1c53      	adds	r3, r2, #1
 8002cea:	637b      	str	r3, [r7, #52]	; 0x34
 8002cec:	68fc      	ldr	r4, [r7, #12]
 8002cee:	687b      	ldr	r3, [r7, #4]
 8002cf0:	68b9      	ldr	r1, [r7, #8]
 8002cf2:	47a0      	blx	r4
        format++;
 8002cf4:	683b      	ldr	r3, [r7, #0]
 8002cf6:	3301      	adds	r3, #1
 8002cf8:	603b      	str	r3, [r7, #0]
        break;
 8002cfa:	bf00      	nop
  while (*format)
 8002cfc:	683b      	ldr	r3, [r7, #0]
 8002cfe:	781b      	ldrb	r3, [r3, #0]
 8002d00:	2b00      	cmp	r3, #0
 8002d02:	f47f ac3f 	bne.w	8002584 <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
 8002d06:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002d08:	687b      	ldr	r3, [r7, #4]
 8002d0a:	429a      	cmp	r2, r3
 8002d0c:	d302      	bcc.n	8002d14 <_vsnprintf+0x7b0>
 8002d0e:	687b      	ldr	r3, [r7, #4]
 8002d10:	1e5a      	subs	r2, r3, #1
 8002d12:	e000      	b.n	8002d16 <_vsnprintf+0x7b2>
 8002d14:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002d16:	68fc      	ldr	r4, [r7, #12]
 8002d18:	687b      	ldr	r3, [r7, #4]
 8002d1a:	68b9      	ldr	r1, [r7, #8]
 8002d1c:	2000      	movs	r0, #0
 8002d1e:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
 8002d20:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
 8002d22:	4618      	mov	r0, r3
 8002d24:	374c      	adds	r7, #76	; 0x4c
 8002d26:	46bd      	mov	sp, r7
 8002d28:	bd90      	pop	{r4, r7, pc}
 8002d2a:	bf00      	nop

08002d2c <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
 8002d2c:	b40f      	push	{r0, r1, r2, r3}
 8002d2e:	b580      	push	{r7, lr}
 8002d30:	b086      	sub	sp, #24
 8002d32:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
 8002d34:	f107 031c 	add.w	r3, r7, #28
 8002d38:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
 8002d3a:	1d39      	adds	r1, r7, #4
 8002d3c:	68bb      	ldr	r3, [r7, #8]
 8002d3e:	9300      	str	r3, [sp, #0]
 8002d40:	69bb      	ldr	r3, [r7, #24]
 8002d42:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d46:	4806      	ldr	r0, [pc, #24]	; (8002d60 <printf_+0x34>)
 8002d48:	f7ff fc0c 	bl	8002564 <_vsnprintf>
 8002d4c:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8002d4e:	68fb      	ldr	r3, [r7, #12]
}
 8002d50:	4618      	mov	r0, r3
 8002d52:	3710      	adds	r7, #16
 8002d54:	46bd      	mov	sp, r7
 8002d56:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002d5a:	b004      	add	sp, #16
 8002d5c:	4770      	bx	lr
 8002d5e:	bf00      	nop
 8002d60:	08002169 	.word	0x08002169

08002d64 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
 8002d64:	b40e      	push	{r1, r2, r3}
 8002d66:	b580      	push	{r7, lr}
 8002d68:	b087      	sub	sp, #28
 8002d6a:	af02      	add	r7, sp, #8
 8002d6c:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
 8002d6e:	f107 0320 	add.w	r3, r7, #32
 8002d72:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
 8002d74:	68bb      	ldr	r3, [r7, #8]
 8002d76:	9300      	str	r3, [sp, #0]
 8002d78:	69fb      	ldr	r3, [r7, #28]
 8002d7a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d7e:	6879      	ldr	r1, [r7, #4]
 8002d80:	4805      	ldr	r0, [pc, #20]	; (8002d98 <sprintf_+0x34>)
 8002d82:	f7ff fbef 	bl	8002564 <_vsnprintf>
 8002d86:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8002d88:	68fb      	ldr	r3, [r7, #12]
}
 8002d8a:	4618      	mov	r0, r3
 8002d8c:	3714      	adds	r7, #20
 8002d8e:	46bd      	mov	sp, r7
 8002d90:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002d94:	b003      	add	sp, #12
 8002d96:	4770      	bx	lr
 8002d98:	0800211f 	.word	0x0800211f

08002d9c <fault_test_by_div0>:
p = (int *) 0x03;
value = *p;
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
}

void fault_test_by_div0(void) {
 8002d9c:	b580      	push	{r7, lr}
 8002d9e:	b084      	sub	sp, #16
 8002da0:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
 8002da2:	4b0c      	ldr	r3, [pc, #48]	; (8002dd4 <fault_test_by_div0+0x38>)
 8002da4:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
 8002da6:	68fb      	ldr	r3, [r7, #12]
 8002da8:	681b      	ldr	r3, [r3, #0]
 8002daa:	f043 0210 	orr.w	r2, r3, #16
 8002dae:	68fb      	ldr	r3, [r7, #12]
 8002db0:	601a      	str	r2, [r3, #0]

x = 10;
 8002db2:	230a      	movs	r3, #10
 8002db4:	60bb      	str	r3, [r7, #8]
y = 0;
 8002db6:	2300      	movs	r3, #0
 8002db8:	607b      	str	r3, [r7, #4]
z = x / y;
 8002dba:	68ba      	ldr	r2, [r7, #8]
 8002dbc:	687b      	ldr	r3, [r7, #4]
 8002dbe:	fb92 f3f3 	sdiv	r3, r2, r3
 8002dc2:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
 8002dc4:	6839      	ldr	r1, [r7, #0]
 8002dc6:	4804      	ldr	r0, [pc, #16]	; (8002dd8 <fault_test_by_div0+0x3c>)
 8002dc8:	f7ff ffb0 	bl	8002d2c <printf_>
}
 8002dcc:	bf00      	nop
 8002dce:	3710      	adds	r7, #16
 8002dd0:	46bd      	mov	sp, r7
 8002dd2:	bd80      	pop	{r7, pc}
 8002dd4:	e000ed14 	.word	0xe000ed14
 8002dd8:	0800a2b8 	.word	0x0800a2b8

08002ddc <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
 8002ddc:	b580      	push	{r7, lr}
 8002dde:	b084      	sub	sp, #16
 8002de0:	af00      	add	r7, sp, #0
 8002de2:	60f8      	str	r0, [r7, #12]
 8002de4:	60b9      	str	r1, [r7, #8]
 8002de6:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
 8002de8:	687b      	ldr	r3, [r7, #4]
 8002dea:	68fa      	ldr	r2, [r7, #12]
 8002dec:	429a      	cmp	r2, r3
 8002dee:	d902      	bls.n	8002df6 <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
 8002df0:	68fb      	ldr	r3, [r7, #12]
 8002df2:	607b      	str	r3, [r7, #4]
 8002df4:	e009      	b.n	8002e0a <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
 8002df6:	68fa      	ldr	r2, [r7, #12]
 8002df8:	68bb      	ldr	r3, [r7, #8]
 8002dfa:	441a      	add	r2, r3
 8002dfc:	687b      	ldr	r3, [r7, #4]
 8002dfe:	429a      	cmp	r2, r3
 8002e00:	d203      	bcs.n	8002e0a <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
 8002e02:	68fa      	ldr	r2, [r7, #12]
 8002e04:	68bb      	ldr	r3, [r7, #8]
 8002e06:	4413      	add	r3, r2
 8002e08:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
 8002e0a:	490e      	ldr	r1, [pc, #56]	; (8002e44 <dump_stack+0x68>)
 8002e0c:	480e      	ldr	r0, [pc, #56]	; (8002e48 <dump_stack+0x6c>)
 8002e0e:	f7ff ff8d 	bl	8002d2c <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 8002e12:	e009      	b.n	8002e28 <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
 8002e14:	6879      	ldr	r1, [r7, #4]
 8002e16:	687b      	ldr	r3, [r7, #4]
 8002e18:	681b      	ldr	r3, [r3, #0]
 8002e1a:	461a      	mov	r2, r3
 8002e1c:	480b      	ldr	r0, [pc, #44]	; (8002e4c <dump_stack+0x70>)
 8002e1e:	f7ff ff85 	bl	8002d2c <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 8002e22:	687b      	ldr	r3, [r7, #4]
 8002e24:	3304      	adds	r3, #4
 8002e26:	607b      	str	r3, [r7, #4]
 8002e28:	68fa      	ldr	r2, [r7, #12]
 8002e2a:	68bb      	ldr	r3, [r7, #8]
 8002e2c:	441a      	add	r2, r3
 8002e2e:	687b      	ldr	r3, [r7, #4]
 8002e30:	429a      	cmp	r2, r3
 8002e32:	d8ef      	bhi.n	8002e14 <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
 8002e34:	4903      	ldr	r1, [pc, #12]	; (8002e44 <dump_stack+0x68>)
 8002e36:	4804      	ldr	r0, [pc, #16]	; (8002e48 <dump_stack+0x6c>)
 8002e38:	f7ff ff78 	bl	8002d2c <printf_>
}
 8002e3c:	bf00      	nop
 8002e3e:	3710      	adds	r7, #16
 8002e40:	46bd      	mov	sp, r7
 8002e42:	bd80      	pop	{r7, pc}
 8002e44:	0800ad40 	.word	0x0800ad40
 8002e48:	0800a2c0 	.word	0x0800a2c0
 8002e4c:	0800a2ec 	.word	0x0800a2ec

08002e50 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
 8002e50:	b480      	push	{r7}
 8002e52:	b085      	sub	sp, #20
 8002e54:	af00      	add	r7, sp, #0
 8002e56:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
 8002e58:	687b      	ldr	r3, [r7, #4]
 8002e5a:	881b      	ldrh	r3, [r3, #0]
 8002e5c:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
 8002e5e:	687b      	ldr	r3, [r7, #4]
 8002e60:	3302      	adds	r3, #2
 8002e62:	881b      	ldrh	r3, [r3, #0]
 8002e64:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
 8002e66:	89bb      	ldrh	r3, [r7, #12]
 8002e68:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002e6c:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
 8002e70:	d107      	bne.n	8002e82 <disassembly_ins_is_bl_blx+0x32>
 8002e72:	89fb      	ldrh	r3, [r7, #14]
 8002e74:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002e78:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
 8002e7c:	d101      	bne.n	8002e82 <disassembly_ins_is_bl_blx+0x32>
        return true;
 8002e7e:	2301      	movs	r3, #1
 8002e80:	e008      	b.n	8002e94 <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
 8002e82:	89bb      	ldrh	r3, [r7, #12]
 8002e84:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8002e88:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8002e8c:	d101      	bne.n	8002e92 <disassembly_ins_is_bl_blx+0x42>
        return true;
 8002e8e:	2301      	movs	r3, #1
 8002e90:	e000      	b.n	8002e94 <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
 8002e92:	2300      	movs	r3, #0
    }
}
 8002e94:	4618      	mov	r0, r3
 8002e96:	3714      	adds	r7, #20
 8002e98:	46bd      	mov	sp, r7
 8002e9a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e9e:	4770      	bx	lr

08002ea0 <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
 8002ea0:	b580      	push	{r7, lr}
 8002ea2:	b08a      	sub	sp, #40	; 0x28
 8002ea4:	af02      	add	r7, sp, #8
 8002ea6:	60f8      	str	r0, [r7, #12]
 8002ea8:	60b9      	str	r1, [r7, #8]
 8002eaa:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
 8002eac:	2300      	movs	r3, #0
 8002eae:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
 8002eb0:	2300      	movs	r3, #0
 8002eb2:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
 8002eb4:	687a      	ldr	r2, [r7, #4]
 8002eb6:	4935      	ldr	r1, [pc, #212]	; (8002f8c <backtrace_call_stack+0xec>)
 8002eb8:	4835      	ldr	r0, [pc, #212]	; (8002f90 <backtrace_call_stack+0xf0>)
 8002eba:	f7ff ff37 	bl	8002d2c <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8002ebe:	e058      	b.n	8002f72 <backtrace_call_stack+0xd2>
uint32_t i = 0;
 8002ec0:	2300      	movs	r3, #0
 8002ec2:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
 8002ec4:	687b      	ldr	r3, [r7, #4]
 8002ec6:	4a33      	ldr	r2, [pc, #204]	; (8002f94 <backtrace_call_stack+0xf4>)
 8002ec8:	4293      	cmp	r3, r2
 8002eca:	d103      	bne.n	8002ed4 <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
 8002ecc:	6879      	ldr	r1, [r7, #4]
 8002ece:	4832      	ldr	r0, [pc, #200]	; (8002f98 <backtrace_call_stack+0xf8>)
 8002ed0:	f7ff ff2c 	bl	8002d2c <printf_>
    }
    lr = *((uint32_t *) sp);
 8002ed4:	687b      	ldr	r3, [r7, #4]
 8002ed6:	681b      	ldr	r3, [r3, #0]
 8002ed8:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
 8002eda:	693b      	ldr	r3, [r7, #16]
 8002edc:	f003 0301 	and.w	r3, r3, #1
 8002ee0:	2b00      	cmp	r3, #0
 8002ee2:	d040      	beq.n	8002f66 <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
 8002ee4:	693b      	ldr	r3, [r7, #16]
 8002ee6:	3b01      	subs	r3, #1
 8002ee8:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
 8002eea:	4b2c      	ldr	r3, [pc, #176]	; (8002f9c <backtrace_call_stack+0xfc>)
 8002eec:	681b      	ldr	r3, [r3, #0]
 8002eee:	693a      	ldr	r2, [r7, #16]
 8002ef0:	429a      	cmp	r2, r3
 8002ef2:	d33b      	bcc.n	8002f6c <backtrace_call_stack+0xcc>
 8002ef4:	4b29      	ldr	r3, [pc, #164]	; (8002f9c <backtrace_call_stack+0xfc>)
 8002ef6:	681a      	ldr	r2, [r3, #0]
 8002ef8:	4b29      	ldr	r3, [pc, #164]	; (8002fa0 <backtrace_call_stack+0x100>)
 8002efa:	681b      	ldr	r3, [r3, #0]
 8002efc:	4413      	add	r3, r2
 8002efe:	693a      	ldr	r2, [r7, #16]
 8002f00:	429a      	cmp	r2, r3
 8002f02:	d833      	bhi.n	8002f6c <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
 8002f04:	693b      	ldr	r3, [r7, #16]
 8002f06:	3b04      	subs	r3, #4
 8002f08:	4618      	mov	r0, r3
 8002f0a:	f7ff ffa1 	bl	8002e50 <disassembly_ins_is_bl_blx>
 8002f0e:	4603      	mov	r3, r0
 8002f10:	2b00      	cmp	r3, #0
 8002f12:	d02b      	beq.n	8002f6c <backtrace_call_stack+0xcc>
 8002f14:	69fa      	ldr	r2, [r7, #28]
 8002f16:	68bb      	ldr	r3, [r7, #8]
 8002f18:	429a      	cmp	r2, r3
 8002f1a:	d227      	bcs.n	8002f6c <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
 8002f1c:	69fb      	ldr	r3, [r7, #28]
 8002f1e:	2b02      	cmp	r3, #2
 8002f20:	d108      	bne.n	8002f34 <backtrace_call_stack+0x94>
 8002f22:	7efb      	ldrb	r3, [r7, #27]
 8002f24:	2b00      	cmp	r3, #0
 8002f26:	d005      	beq.n	8002f34 <backtrace_call_stack+0x94>
 8002f28:	68fb      	ldr	r3, [r7, #12]
 8002f2a:	3304      	adds	r3, #4
 8002f2c:	681b      	ldr	r3, [r3, #0]
 8002f2e:	693a      	ldr	r2, [r7, #16]
 8002f30:	429a      	cmp	r2, r3
 8002f32:	d01a      	beq.n	8002f6a <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 8002f34:	693b      	ldr	r3, [r7, #16]
 8002f36:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002f38:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 8002f3a:	693b      	ldr	r3, [r7, #16]
 8002f3c:	3b04      	subs	r3, #4
 8002f3e:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002f40:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 8002f42:	693b      	ldr	r3, [r7, #16]
 8002f44:	3b02      	subs	r3, #2
 8002f46:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002f48:	9300      	str	r3, [sp, #0]
 8002f4a:	460b      	mov	r3, r1
 8002f4c:	6939      	ldr	r1, [r7, #16]
 8002f4e:	4815      	ldr	r0, [pc, #84]	; (8002fa4 <backtrace_call_stack+0x104>)
 8002f50:	f7ff feec 	bl	8002d2c <printf_>
                buffer[depth++] = lr;
 8002f54:	69fb      	ldr	r3, [r7, #28]
 8002f56:	1c5a      	adds	r2, r3, #1
 8002f58:	61fa      	str	r2, [r7, #28]
 8002f5a:	009b      	lsls	r3, r3, #2
 8002f5c:	68fa      	ldr	r2, [r7, #12]
 8002f5e:	4413      	add	r3, r2
 8002f60:	693a      	ldr	r2, [r7, #16]
 8002f62:	601a      	str	r2, [r3, #0]
 8002f64:	e002      	b.n	8002f6c <backtrace_call_stack+0xcc>
        continue;
 8002f66:	bf00      	nop
 8002f68:	e000      	b.n	8002f6c <backtrace_call_stack+0xcc>
            continue;
 8002f6a:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8002f6c:	687b      	ldr	r3, [r7, #4]
 8002f6e:	3304      	adds	r3, #4
 8002f70:	607b      	str	r3, [r7, #4]
 8002f72:	4b0d      	ldr	r3, [pc, #52]	; (8002fa8 <backtrace_call_stack+0x108>)
 8002f74:	681a      	ldr	r2, [r3, #0]
 8002f76:	4b0d      	ldr	r3, [pc, #52]	; (8002fac <backtrace_call_stack+0x10c>)
 8002f78:	681b      	ldr	r3, [r3, #0]
 8002f7a:	4413      	add	r3, r2
 8002f7c:	687a      	ldr	r2, [r7, #4]
 8002f7e:	429a      	cmp	r2, r3
 8002f80:	d39e      	bcc.n	8002ec0 <backtrace_call_stack+0x20>
    }
}

return depth;
 8002f82:	69fb      	ldr	r3, [r7, #28]
}
 8002f84:	4618      	mov	r0, r3
 8002f86:	3720      	adds	r7, #32
 8002f88:	46bd      	mov	sp, r7
 8002f8a:	bd80      	pop	{r7, pc}
 8002f8c:	0800ad4c 	.word	0x0800ad4c
 8002f90:	0800ab68 	.word	0x0800ab68
 8002f94:	08080541 	.word	0x08080541
 8002f98:	0800ab78 	.word	0x0800ab78
 8002f9c:	20000ae0 	.word	0x20000ae0
 8002fa0:	20000ae8 	.word	0x20000ae8
 8002fa4:	0800ab84 	.word	0x0800ab84
 8002fa8:	20000aec 	.word	0x20000aec
 8002fac:	20000af4 	.word	0x20000af4

08002fb0 <print_call_stack>:

void print_call_stack(uint32_t sp) {
 8002fb0:	b580      	push	{r7, lr}
 8002fb2:	b096      	sub	sp, #88	; 0x58
 8002fb4:	af02      	add	r7, sp, #8
 8002fb6:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
 8002fb8:	2300      	movs	r3, #0
 8002fba:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
 8002fbc:	f107 0308 	add.w	r3, r7, #8
 8002fc0:	2240      	movs	r2, #64	; 0x40
 8002fc2:	2100      	movs	r1, #0
 8002fc4:	4618      	mov	r0, r3
 8002fc6:	f000 fd15 	bl	80039f4 <memset>
    printf("[%s] ====================================\n", __func__);
 8002fca:	4928      	ldr	r1, [pc, #160]	; (800306c <print_call_stack+0xbc>)
 8002fcc:	4828      	ldr	r0, [pc, #160]	; (8003070 <print_call_stack+0xc0>)
 8002fce:	f7ff fead 	bl	8002d2c <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
 8002fd2:	f107 0308 	add.w	r3, r7, #8
 8002fd6:	687a      	ldr	r2, [r7, #4]
 8002fd8:	2110      	movs	r1, #16
 8002fda:	4618      	mov	r0, r3
 8002fdc:	f7ff ff60 	bl	8002ea0 <backtrace_call_stack>
 8002fe0:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
 8002fe2:	4922      	ldr	r1, [pc, #136]	; (800306c <print_call_stack+0xbc>)
 8002fe4:	4822      	ldr	r0, [pc, #136]	; (8003070 <print_call_stack+0xc0>)
 8002fe6:	f7ff fea1 	bl	8002d2c <printf_>

    for (i = 0; i < cur_depth; i++) {
 8002fea:	2300      	movs	r3, #0
 8002fec:	64fb      	str	r3, [r7, #76]	; 0x4c
 8002fee:	e01b      	b.n	8003028 <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
 8002ff0:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8002ff2:	4613      	mov	r3, r2
 8002ff4:	00db      	lsls	r3, r3, #3
 8002ff6:	4413      	add	r3, r2
 8002ff8:	4a1e      	ldr	r2, [pc, #120]	; (8003074 <print_call_stack+0xc4>)
 8002ffa:	1898      	adds	r0, r3, r2
 8002ffc:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8002ffe:	009b      	lsls	r3, r3, #2
 8003000:	f107 0250 	add.w	r2, r7, #80	; 0x50
 8003004:	4413      	add	r3, r2
 8003006:	f853 3c48 	ldr.w	r3, [r3, #-72]
 800300a:	461a      	mov	r2, r3
 800300c:	491a      	ldr	r1, [pc, #104]	; (8003078 <print_call_stack+0xc8>)
 800300e:	f7ff fea9 	bl	8002d64 <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
 8003012:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8003014:	4613      	mov	r3, r2
 8003016:	00db      	lsls	r3, r3, #3
 8003018:	4413      	add	r3, r2
 800301a:	3308      	adds	r3, #8
 800301c:	4a15      	ldr	r2, [pc, #84]	; (8003074 <print_call_stack+0xc4>)
 800301e:	2120      	movs	r1, #32
 8003020:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
 8003022:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8003024:	3301      	adds	r3, #1
 8003026:	64fb      	str	r3, [r7, #76]	; 0x4c
 8003028:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 800302a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 800302c:	429a      	cmp	r2, r3
 800302e:	d3df      	bcc.n	8002ff0 <print_call_stack+0x40>
    }

    if (cur_depth) {
 8003030:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8003032:	2b00      	cmp	r3, #0
 8003034:	d00e      	beq.n	8003054 <print_call_stack+0xa4>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
 8003036:	4811      	ldr	r0, [pc, #68]	; (800307c <print_call_stack+0xcc>)
 8003038:	6cba      	ldr	r2, [r7, #72]	; 0x48
 800303a:	4613      	mov	r3, r2
 800303c:	00db      	lsls	r3, r3, #3
 800303e:	4413      	add	r3, r2
 8003040:	4a0c      	ldr	r2, [pc, #48]	; (8003074 <print_call_stack+0xc4>)
 8003042:	9200      	str	r2, [sp, #0]
 8003044:	4a0e      	ldr	r2, [pc, #56]	; (8003080 <print_call_stack+0xd0>)
 8003046:	490f      	ldr	r1, [pc, #60]	; (8003084 <print_call_stack+0xd4>)
 8003048:	f7ff fe70 	bl	8002d2c <printf_>
 800304c:	480e      	ldr	r0, [pc, #56]	; (8003088 <print_call_stack+0xd8>)
 800304e:	f7ff fe6d 	bl	8002d2c <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
 8003052:	e006      	b.n	8003062 <print_call_stack+0xb2>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
 8003054:	4b0d      	ldr	r3, [pc, #52]	; (800308c <print_call_stack+0xdc>)
 8003056:	4618      	mov	r0, r3
 8003058:	f7ff fe68 	bl	8002d2c <printf_>
 800305c:	480a      	ldr	r0, [pc, #40]	; (8003088 <print_call_stack+0xd8>)
 800305e:	f7ff fe65 	bl	8002d2c <printf_>
}
 8003062:	bf00      	nop
 8003064:	3750      	adds	r7, #80	; 0x50
 8003066:	46bd      	mov	sp, r7
 8003068:	bd80      	pop	{r7, pc}
 800306a:	bf00      	nop
 800306c:	0800ad64 	.word	0x0800ad64
 8003070:	0800a2c0 	.word	0x0800a2c0
 8003074:	20000b04 	.word	0x20000b04
 8003078:	0800abc8 	.word	0x0800abc8
 800307c:	0800a49c 	.word	0x0800a49c
 8003080:	0800abd0 	.word	0x0800abd0
 8003084:	0800abd8 	.word	0x0800abd8
 8003088:	0800abe8 	.word	0x0800abe8
 800308c:	0800a4dc 	.word	0x0800a4dc

08003090 <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
 8003090:	b598      	push	{r3, r4, r7, lr}
 8003092:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 8003094:	490d      	ldr	r1, [pc, #52]	; (80030cc <backtrace_level_3+0x3c>)
 8003096:	480e      	ldr	r0, [pc, #56]	; (80030d0 <backtrace_level_3+0x40>)
 8003098:	f7ff fe48 	bl	8002d2c <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
 800309c:	4b0d      	ldr	r3, [pc, #52]	; (80030d4 <backtrace_level_3+0x44>)
 800309e:	681b      	ldr	r3, [r3, #0]
 80030a0:	4a0d      	ldr	r2, [pc, #52]	; (80030d8 <backtrace_level_3+0x48>)
 80030a2:	6811      	ldr	r1, [r2, #0]
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 80030a4:	466a      	mov	r2, sp
 80030a6:	4614      	mov	r4, r2
    return(result);
 80030a8:	4622      	mov	r2, r4
 80030aa:	4618      	mov	r0, r3
 80030ac:	f7ff fe96 	bl	8002ddc <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 80030b0:	466b      	mov	r3, sp
 80030b2:	461c      	mov	r4, r3
    return(result);
 80030b4:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
 80030b6:	4618      	mov	r0, r3
 80030b8:	f7ff ff7a 	bl	8002fb0 <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 80030bc:	466b      	mov	r3, sp
 80030be:	461c      	mov	r4, r3
    return(result);
 80030c0:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
 80030c2:	4618      	mov	r0, r3
 80030c4:	f000 f99a 	bl	80033fc <BackTraceSub>
}
 80030c8:	bf00      	nop
 80030ca:	bd98      	pop	{r3, r4, r7, pc}
 80030cc:	0800ad78 	.word	0x0800ad78
 80030d0:	0800abec 	.word	0x0800abec
 80030d4:	20000aec 	.word	0x20000aec
 80030d8:	20000af4 	.word	0x20000af4

080030dc <backtrace_level_2>:
void backtrace_level_2(void)
{
 80030dc:	b580      	push	{r7, lr}
 80030de:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 80030e0:	4903      	ldr	r1, [pc, #12]	; (80030f0 <backtrace_level_2+0x14>)
 80030e2:	4804      	ldr	r0, [pc, #16]	; (80030f4 <backtrace_level_2+0x18>)
 80030e4:	f7ff fe22 	bl	8002d2c <printf_>
    backtrace_level_3();
 80030e8:	f7ff ffd2 	bl	8003090 <backtrace_level_3>
}
 80030ec:	bf00      	nop
 80030ee:	bd80      	pop	{r7, pc}
 80030f0:	0800ad8c 	.word	0x0800ad8c
 80030f4:	0800abec 	.word	0x0800abec

080030f8 <backtrace_level_1>:
void backtrace_level_1(void)
{
 80030f8:	b580      	push	{r7, lr}
 80030fa:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 80030fc:	4903      	ldr	r1, [pc, #12]	; (800310c <backtrace_level_1+0x14>)
 80030fe:	4804      	ldr	r0, [pc, #16]	; (8003110 <backtrace_level_1+0x18>)
 8003100:	f7ff fe14 	bl	8002d2c <printf_>
    backtrace_level_2();
 8003104:	f7ff ffea 	bl	80030dc <backtrace_level_2>
}
 8003108:	bf00      	nop
 800310a:	bd80      	pop	{r7, pc}
 800310c:	0800ada0 	.word	0x0800ada0
 8003110:	0800abec 	.word	0x0800abec

08003114 <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
 8003114:	b590      	push	{r4, r7, lr}
 8003116:	b089      	sub	sp, #36	; 0x24
 8003118:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
 800311a:	23aa      	movs	r3, #170	; 0xaa
 800311c:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
 800311e:	2355      	movs	r3, #85	; 0x55
 8003120:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
 8003122:	2377      	movs	r3, #119	; 0x77
 8003124:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
 8003126:	4a47      	ldr	r2, [pc, #284]	; (8003244 <backtrace_test+0x130>)
 8003128:	4b47      	ldr	r3, [pc, #284]	; (8003248 <backtrace_test+0x134>)
 800312a:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
 800312c:	4a47      	ldr	r2, [pc, #284]	; (800324c <backtrace_test+0x138>)
 800312e:	4b48      	ldr	r3, [pc, #288]	; (8003250 <backtrace_test+0x13c>)
 8003130:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
 8003132:	4b47      	ldr	r3, [pc, #284]	; (8003250 <backtrace_test+0x13c>)
 8003134:	681a      	ldr	r2, [r3, #0]
 8003136:	4b44      	ldr	r3, [pc, #272]	; (8003248 <backtrace_test+0x134>)
 8003138:	681b      	ldr	r3, [r3, #0]
 800313a:	1ad3      	subs	r3, r2, r3
 800313c:	4a45      	ldr	r2, [pc, #276]	; (8003254 <backtrace_test+0x140>)
 800313e:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
 8003140:	4a45      	ldr	r2, [pc, #276]	; (8003258 <backtrace_test+0x144>)
 8003142:	4b46      	ldr	r3, [pc, #280]	; (800325c <backtrace_test+0x148>)
 8003144:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
 8003146:	4a46      	ldr	r2, [pc, #280]	; (8003260 <backtrace_test+0x14c>)
 8003148:	4b46      	ldr	r3, [pc, #280]	; (8003264 <backtrace_test+0x150>)
 800314a:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
 800314c:	4b45      	ldr	r3, [pc, #276]	; (8003264 <backtrace_test+0x150>)
 800314e:	681a      	ldr	r2, [r3, #0]
 8003150:	4b42      	ldr	r3, [pc, #264]	; (800325c <backtrace_test+0x148>)
 8003152:	681b      	ldr	r3, [r3, #0]
 8003154:	1ad3      	subs	r3, r2, r3
 8003156:	4a44      	ldr	r2, [pc, #272]	; (8003268 <backtrace_test+0x154>)
 8003158:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
 800315a:	4a44      	ldr	r2, [pc, #272]	; (800326c <backtrace_test+0x158>)
 800315c:	4b44      	ldr	r3, [pc, #272]	; (8003270 <backtrace_test+0x15c>)
 800315e:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
 8003160:	4a44      	ldr	r2, [pc, #272]	; (8003274 <backtrace_test+0x160>)
 8003162:	4b45      	ldr	r3, [pc, #276]	; (8003278 <backtrace_test+0x164>)
 8003164:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
 8003166:	4b44      	ldr	r3, [pc, #272]	; (8003278 <backtrace_test+0x164>)
 8003168:	681a      	ldr	r2, [r3, #0]
 800316a:	4b41      	ldr	r3, [pc, #260]	; (8003270 <backtrace_test+0x15c>)
 800316c:	681b      	ldr	r3, [r3, #0]
 800316e:	1ad3      	subs	r3, r2, r3
 8003170:	4a42      	ldr	r2, [pc, #264]	; (800327c <backtrace_test+0x168>)
 8003172:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
 8003174:	4b34      	ldr	r3, [pc, #208]	; (8003248 <backtrace_test+0x134>)
 8003176:	6819      	ldr	r1, [r3, #0]
 8003178:	4b35      	ldr	r3, [pc, #212]	; (8003250 <backtrace_test+0x13c>)
 800317a:	6818      	ldr	r0, [r3, #0]
 800317c:	4b35      	ldr	r3, [pc, #212]	; (8003254 <backtrace_test+0x140>)
 800317e:	681b      	ldr	r3, [r3, #0]
 8003180:	4a34      	ldr	r2, [pc, #208]	; (8003254 <backtrace_test+0x140>)
 8003182:	6812      	ldr	r2, [r2, #0]
 8003184:	9201      	str	r2, [sp, #4]
 8003186:	9300      	str	r3, [sp, #0]
 8003188:	4603      	mov	r3, r0
 800318a:	460a      	mov	r2, r1
 800318c:	493c      	ldr	r1, [pc, #240]	; (8003280 <backtrace_test+0x16c>)
 800318e:	483d      	ldr	r0, [pc, #244]	; (8003284 <backtrace_test+0x170>)
 8003190:	f7ff fdcc 	bl	8002d2c <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
 8003194:	4b31      	ldr	r3, [pc, #196]	; (800325c <backtrace_test+0x148>)
 8003196:	6819      	ldr	r1, [r3, #0]
 8003198:	4b32      	ldr	r3, [pc, #200]	; (8003264 <backtrace_test+0x150>)
 800319a:	6818      	ldr	r0, [r3, #0]
 800319c:	4b32      	ldr	r3, [pc, #200]	; (8003268 <backtrace_test+0x154>)
 800319e:	681b      	ldr	r3, [r3, #0]
 80031a0:	4a31      	ldr	r2, [pc, #196]	; (8003268 <backtrace_test+0x154>)
 80031a2:	6812      	ldr	r2, [r2, #0]
 80031a4:	9201      	str	r2, [sp, #4]
 80031a6:	9300      	str	r3, [sp, #0]
 80031a8:	4603      	mov	r3, r0
 80031aa:	460a      	mov	r2, r1
 80031ac:	4934      	ldr	r1, [pc, #208]	; (8003280 <backtrace_test+0x16c>)
 80031ae:	4836      	ldr	r0, [pc, #216]	; (8003288 <backtrace_test+0x174>)
 80031b0:	f7ff fdbc 	bl	8002d2c <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
 80031b4:	4b2e      	ldr	r3, [pc, #184]	; (8003270 <backtrace_test+0x15c>)
 80031b6:	6819      	ldr	r1, [r3, #0]
 80031b8:	4b2f      	ldr	r3, [pc, #188]	; (8003278 <backtrace_test+0x164>)
 80031ba:	6818      	ldr	r0, [r3, #0]
 80031bc:	4b2f      	ldr	r3, [pc, #188]	; (800327c <backtrace_test+0x168>)
 80031be:	681b      	ldr	r3, [r3, #0]
 80031c0:	4a2e      	ldr	r2, [pc, #184]	; (800327c <backtrace_test+0x168>)
 80031c2:	6812      	ldr	r2, [r2, #0]
 80031c4:	9201      	str	r2, [sp, #4]
 80031c6:	9300      	str	r3, [sp, #0]
 80031c8:	4603      	mov	r3, r0
 80031ca:	460a      	mov	r2, r1
 80031cc:	492c      	ldr	r1, [pc, #176]	; (8003280 <backtrace_test+0x16c>)
 80031ce:	482f      	ldr	r0, [pc, #188]	; (800328c <backtrace_test+0x178>)
 80031d0:	f7ff fdac 	bl	8002d2c <printf_>
  \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
           Can only be executed in Privileged modes.
 */
__STATIC_FORCEINLINE void __enable_irq(void)
{
  __ASM volatile ("cpsie i" : : : "memory");
 80031d4:	b662      	cpsie	i
}
 80031d6:	bf00      	nop
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 80031d8:	466b      	mov	r3, sp
 80031da:	461c      	mov	r4, r3
    return(result);
 80031dc:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
 80031de:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
 80031e0:	6979      	ldr	r1, [r7, #20]
 80031e2:	482b      	ldr	r0, [pc, #172]	; (8003290 <backtrace_test+0x17c>)
 80031e4:	f7ff fda2 	bl	8002d2c <printf_>
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
 80031e8:	467b      	mov	r3, pc
 80031ea:	461c      	mov	r4, r3
    return(result);
 80031ec:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
 80031ee:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
 80031f0:	6879      	ldr	r1, [r7, #4]
 80031f2:	4828      	ldr	r0, [pc, #160]	; (8003294 <backtrace_test+0x180>)
 80031f4:	f7ff fd9a 	bl	8002d2c <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 80031f8:	e01b      	b.n	8003232 <backtrace_test+0x11e>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
 80031fa:	697b      	ldr	r3, [r7, #20]
 80031fc:	681b      	ldr	r3, [r3, #0]
 80031fe:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
 8003200:	6839      	ldr	r1, [r7, #0]
 8003202:	4825      	ldr	r0, [pc, #148]	; (8003298 <backtrace_test+0x184>)
 8003204:	f7ff fd92 	bl	8002d2c <printf_>
        if ((addr >= (uint32_t)&_stext) &&
 8003208:	4a0e      	ldr	r2, [pc, #56]	; (8003244 <backtrace_test+0x130>)
 800320a:	683b      	ldr	r3, [r7, #0]
 800320c:	4293      	cmp	r3, r2
 800320e:	d30d      	bcc.n	800322c <backtrace_test+0x118>
        (sp <= (uint32_t)&_etext) &&
 8003210:	4a0e      	ldr	r2, [pc, #56]	; (800324c <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
 8003212:	697b      	ldr	r3, [r7, #20]
 8003214:	4293      	cmp	r3, r2
 8003216:	d809      	bhi.n	800322c <backtrace_test+0x118>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
 8003218:	683b      	ldr	r3, [r7, #0]
 800321a:	3b01      	subs	r3, #1
 800321c:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
 8003220:	2b00      	cmp	r3, #0
 8003222:	d103      	bne.n	800322c <backtrace_test+0x118>

            printf("find ld 0x%08x\n", addr);
 8003224:	6839      	ldr	r1, [r7, #0]
 8003226:	481d      	ldr	r0, [pc, #116]	; (800329c <backtrace_test+0x188>)
 8003228:	f7ff fd80 	bl	8002d2c <printf_>
        }
        sp += 4;
 800322c:	697b      	ldr	r3, [r7, #20]
 800322e:	3304      	adds	r3, #4
 8003230:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 8003232:	4a0b      	ldr	r2, [pc, #44]	; (8003260 <backtrace_test+0x14c>)
 8003234:	697b      	ldr	r3, [r7, #20]
 8003236:	4293      	cmp	r3, r2
 8003238:	d3df      	bcc.n	80031fa <backtrace_test+0xe6>
    }
    backtrace_level_1();
 800323a:	f7ff ff5d 	bl	80030f8 <backtrace_level_1>
    fault_test_by_div0();
 800323e:	f7ff fdad 	bl	8002d9c <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
 8003242:	e7fe      	b.n	8003242 <backtrace_test+0x12e>
 8003244:	08000000 	.word	0x08000000
 8003248:	20000ae0 	.word	0x20000ae0
 800324c:	0800b164 	.word	0x0800b164
 8003250:	20000ae4 	.word	0x20000ae4
 8003254:	20000ae8 	.word	0x20000ae8
 8003258:	20016fff 	.word	0x20016fff
 800325c:	20000aec 	.word	0x20000aec
 8003260:	20017fff 	.word	0x20017fff
 8003264:	20000af0 	.word	0x20000af0
 8003268:	20000af4 	.word	0x20000af4
 800326c:	20000c2c 	.word	0x20000c2c
 8003270:	20000af8 	.word	0x20000af8
 8003274:	20000c2c 	.word	0x20000c2c
 8003278:	20000afc 	.word	0x20000afc
 800327c:	20000b00 	.word	0x20000b00
 8003280:	0800adb4 	.word	0x0800adb4
 8003284:	0800abf4 	.word	0x0800abf4
 8003288:	0800ac3c 	.word	0x0800ac3c
 800328c:	0800ac84 	.word	0x0800ac84
 8003290:	0800accc 	.word	0x0800accc
 8003294:	0800acd8 	.word	0x0800acd8
 8003298:	0800ace4 	.word	0x0800ace4
 800329c:	0800acf0 	.word	0x0800acf0

080032a0 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
 80032a0:	b480      	push	{r7}
 80032a2:	b083      	sub	sp, #12
 80032a4:	af00      	add	r7, sp, #0
 80032a6:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
 80032a8:	e00e      	b.n	80032c8 <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
 80032aa:	687b      	ldr	r3, [r7, #4]
 80032ac:	881b      	ldrh	r3, [r3, #0]
 80032ae:	0a1b      	lsrs	r3, r3, #8
 80032b0:	b29b      	uxth	r3, r3
 80032b2:	2bb5      	cmp	r3, #181	; 0xb5
 80032b4:	d00d      	beq.n	80032d2 <LoopUntilEntry+0x32>
 80032b6:	687b      	ldr	r3, [r7, #4]
 80032b8:	881b      	ldrh	r3, [r3, #0]
 80032ba:	0a1b      	lsrs	r3, r3, #8
 80032bc:	b29b      	uxth	r3, r3
 80032be:	2bb4      	cmp	r3, #180	; 0xb4
 80032c0:	d007      	beq.n	80032d2 <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
 80032c2:	687b      	ldr	r3, [r7, #4]
 80032c4:	3b02      	subs	r3, #2
 80032c6:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
 80032c8:	4b05      	ldr	r3, [pc, #20]	; (80032e0 <LoopUntilEntry+0x40>)
 80032ca:	681b      	ldr	r3, [r3, #0]
 80032cc:	687a      	ldr	r2, [r7, #4]
 80032ce:	429a      	cmp	r2, r3
 80032d0:	d8eb      	bhi.n	80032aa <LoopUntilEntry+0xa>
    }

    return addr;
 80032d2:	687b      	ldr	r3, [r7, #4]
}
 80032d4:	4618      	mov	r0, r3
 80032d6:	370c      	adds	r7, #12
 80032d8:	46bd      	mov	sp, r7
 80032da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80032de:	4770      	bx	lr
 80032e0:	20000ae0 	.word	0x20000ae0

080032e4 <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
 80032e4:	b480      	push	{r7}
 80032e6:	b087      	sub	sp, #28
 80032e8:	af00      	add	r7, sp, #0
 80032ea:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
 80032ec:	2300      	movs	r3, #0
 80032ee:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
 80032f0:	687b      	ldr	r3, [r7, #4]
 80032f2:	881b      	ldrh	r3, [r3, #0]
 80032f4:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80032f8:	2b00      	cmp	r3, #0
 80032fa:	d00b      	beq.n	8003314 <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 80032fc:	687b      	ldr	r3, [r7, #4]
 80032fe:	881b      	ldrh	r3, [r3, #0]
 8003300:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003304:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 8003306:	687b      	ldr	r3, [r7, #4]
 8003308:	3302      	adds	r3, #2
 800330a:	881b      	ldrh	r3, [r3, #0]
 800330c:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003310:	613b      	str	r3, [r7, #16]
 8003312:	e00a      	b.n	800332a <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 8003314:	687b      	ldr	r3, [r7, #4]
 8003316:	881b      	ldrh	r3, [r3, #0]
 8003318:	f3c3 030a 	ubfx	r3, r3, #0, #11
 800331c:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 800331e:	687b      	ldr	r3, [r7, #4]
 8003320:	3302      	adds	r3, #2
 8003322:	881b      	ldrh	r3, [r3, #0]
 8003324:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003328:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
 800332a:	693b      	ldr	r3, [r7, #16]
 800332c:	031a      	lsls	r2, r3, #12
 800332e:	68fb      	ldr	r3, [r7, #12]
 8003330:	005b      	lsls	r3, r3, #1
 8003332:	4413      	add	r3, r2
 8003334:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
 8003336:	68bb      	ldr	r3, [r7, #8]
 8003338:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800333c:	2b00      	cmp	r3, #0
 800333e:	d008      	beq.n	8003352 <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
 8003340:	68bb      	ldr	r3, [r7, #8]
 8003342:	425b      	negs	r3, r3
 8003344:	f3c3 0316 	ubfx	r3, r3, #0, #23
 8003348:	687a      	ldr	r2, [r7, #4]
 800334a:	1ad3      	subs	r3, r2, r3
 800334c:	3304      	adds	r3, #4
 800334e:	617b      	str	r3, [r7, #20]
 8003350:	e004      	b.n	800335c <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
 8003352:	687a      	ldr	r2, [r7, #4]
 8003354:	68bb      	ldr	r3, [r7, #8]
 8003356:	4413      	add	r3, r2
 8003358:	3304      	adds	r3, #4
 800335a:	617b      	str	r3, [r7, #20]
    }

    return target;
 800335c:	697b      	ldr	r3, [r7, #20]
}
 800335e:	4618      	mov	r0, r3
 8003360:	371c      	adds	r7, #28
 8003362:	46bd      	mov	sp, r7
 8003364:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003368:	4770      	bx	lr
	...

0800336c <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
 800336c:	b580      	push	{r7, lr}
 800336e:	b084      	sub	sp, #16
 8003370:	af00      	add	r7, sp, #0
 8003372:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
 8003374:	2300      	movs	r3, #0
 8003376:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
 8003378:	687b      	ldr	r3, [r7, #4]
 800337a:	3b02      	subs	r3, #2
 800337c:	881b      	ldrh	r3, [r3, #0]
 800337e:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8003382:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8003386:	d11a      	bne.n	80033be <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
 8003388:	4b1b      	ldr	r3, [pc, #108]	; (80033f8 <CalculateTargetAddress+0x8c>)
 800338a:	681b      	ldr	r3, [r3, #0]
 800338c:	2b00      	cmp	r3, #0
 800338e:	d00b      	beq.n	80033a8 <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
 8003390:	4b19      	ldr	r3, [pc, #100]	; (80033f8 <CalculateTargetAddress+0x8c>)
 8003392:	681b      	ldr	r3, [r3, #0]
 8003394:	4618      	mov	r0, r3
 8003396:	f7ff ff83 	bl	80032a0 <LoopUntilEntry>
 800339a:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
 800339c:	687b      	ldr	r3, [r7, #4]
 800339e:	3b02      	subs	r3, #2
 80033a0:	4a15      	ldr	r2, [pc, #84]	; (80033f8 <CalculateTargetAddress+0x8c>)
 80033a2:	6013      	str	r3, [r2, #0]
            return target;
 80033a4:	68fb      	ldr	r3, [r7, #12]
 80033a6:	e023      	b.n	80033f0 <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
 80033a8:	687b      	ldr	r3, [r7, #4]
 80033aa:	3b02      	subs	r3, #2
 80033ac:	4a12      	ldr	r2, [pc, #72]	; (80033f8 <CalculateTargetAddress+0x8c>)
 80033ae:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
 80033b0:	4b11      	ldr	r3, [pc, #68]	; (80033f8 <CalculateTargetAddress+0x8c>)
 80033b2:	681b      	ldr	r3, [r3, #0]
 80033b4:	4618      	mov	r0, r3
 80033b6:	f7ff ff73 	bl	80032a0 <LoopUntilEntry>
 80033ba:	4603      	mov	r3, r0
 80033bc:	e018      	b.n	80033f0 <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
 80033be:	687b      	ldr	r3, [r7, #4]
 80033c0:	3b04      	subs	r3, #4
 80033c2:	681b      	ldr	r3, [r3, #0]
 80033c4:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
 80033c8:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
 80033cc:	d10f      	bne.n	80033ee <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
 80033ce:	687b      	ldr	r3, [r7, #4]
 80033d0:	3b04      	subs	r3, #4
 80033d2:	4a09      	ldr	r2, [pc, #36]	; (80033f8 <CalculateTargetAddress+0x8c>)
 80033d4:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
 80033d6:	4b08      	ldr	r3, [pc, #32]	; (80033f8 <CalculateTargetAddress+0x8c>)
 80033d8:	681b      	ldr	r3, [r3, #0]
 80033da:	4618      	mov	r0, r3
 80033dc:	f7ff ff82 	bl	80032e4 <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
 80033e0:	4b05      	ldr	r3, [pc, #20]	; (80033f8 <CalculateTargetAddress+0x8c>)
 80033e2:	681b      	ldr	r3, [r3, #0]
 80033e4:	4618      	mov	r0, r3
 80033e6:	f7ff ff7d 	bl	80032e4 <CalculateBLTargetAddress>
 80033ea:	4603      	mov	r3, r0
 80033ec:	e000      	b.n	80033f0 <CalculateTargetAddress+0x84>
    }

    return 0;
 80033ee:	2300      	movs	r3, #0
}
 80033f0:	4618      	mov	r0, r3
 80033f2:	3710      	adds	r7, #16
 80033f4:	46bd      	mov	sp, r7
 80033f6:	bd80      	pop	{r7, pc}
 80033f8:	20000b94 	.word	0x20000b94

080033fc <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
 80033fc:	b580      	push	{r7, lr}
 80033fe:	b086      	sub	sp, #24
 8003400:	af00      	add	r7, sp, #0
 8003402:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
 8003404:	687b      	ldr	r3, [r7, #4]
 8003406:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
 8003408:	2300      	movs	r3, #0
 800340a:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 800340c:	e03b      	b.n	8003486 <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 800340e:	697b      	ldr	r3, [r7, #20]
 8003410:	681a      	ldr	r2, [r3, #0]
 8003412:	4b23      	ldr	r3, [pc, #140]	; (80034a0 <BackTraceSub+0xa4>)
 8003414:	681b      	ldr	r3, [r3, #0]
 8003416:	429a      	cmp	r2, r3
 8003418:	d32e      	bcc.n	8003478 <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 800341a:	697b      	ldr	r3, [r7, #20]
 800341c:	681a      	ldr	r2, [r3, #0]
 800341e:	4b21      	ldr	r3, [pc, #132]	; (80034a4 <BackTraceSub+0xa8>)
 8003420:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 8003422:	429a      	cmp	r2, r3
 8003424:	d828      	bhi.n	8003478 <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
 8003426:	697b      	ldr	r3, [r7, #20]
 8003428:	681b      	ldr	r3, [r3, #0]
 800342a:	3b01      	subs	r3, #1
 800342c:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 8003430:	2b00      	cmp	r3, #0
 8003432:	d121      	bne.n	8003478 <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
 8003434:	697b      	ldr	r3, [r7, #20]
 8003436:	681b      	ldr	r3, [r3, #0]
 8003438:	3b01      	subs	r3, #1
 800343a:	4618      	mov	r0, r3
 800343c:	f7ff ff96 	bl	800336c <CalculateTargetAddress>
 8003440:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
 8003442:	68fb      	ldr	r3, [r7, #12]
 8003444:	2b00      	cmp	r3, #0
 8003446:	d004      	beq.n	8003452 <BackTraceSub+0x56>
 8003448:	4b17      	ldr	r3, [pc, #92]	; (80034a8 <BackTraceSub+0xac>)
 800344a:	681b      	ldr	r3, [r3, #0]
 800344c:	68fa      	ldr	r2, [r7, #12]
 800344e:	429a      	cmp	r2, r3
 8003450:	d103      	bne.n	800345a <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
 8003452:	697b      	ldr	r3, [r7, #20]
 8003454:	3304      	adds	r3, #4
 8003456:	617b      	str	r3, [r7, #20]
                continue;
 8003458:	e015      	b.n	8003486 <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
 800345a:	4a13      	ldr	r2, [pc, #76]	; (80034a8 <BackTraceSub+0xac>)
 800345c:	68fb      	ldr	r3, [r7, #12]
 800345e:	6013      	str	r3, [r2, #0]
            count++;
 8003460:	693b      	ldr	r3, [r7, #16]
 8003462:	3301      	adds	r3, #1
 8003464:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
 8003466:	697b      	ldr	r3, [r7, #20]
 8003468:	681b      	ldr	r3, [r3, #0]
 800346a:	1e5a      	subs	r2, r3, #1
 800346c:	4b0e      	ldr	r3, [pc, #56]	; (80034a8 <BackTraceSub+0xac>)
 800346e:	681b      	ldr	r3, [r3, #0]
 8003470:	6939      	ldr	r1, [r7, #16]
 8003472:	480e      	ldr	r0, [pc, #56]	; (80034ac <BackTraceSub+0xb0>)
 8003474:	f7ff fc5a 	bl	8002d2c <printf_>
        }
        stackPointer += STACK_OFFSET;
 8003478:	697b      	ldr	r3, [r7, #20]
 800347a:	3304      	adds	r3, #4
 800347c:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
 800347e:	6979      	ldr	r1, [r7, #20]
 8003480:	480b      	ldr	r0, [pc, #44]	; (80034b0 <BackTraceSub+0xb4>)
 8003482:	f7ff fc53 	bl	8002d2c <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 8003486:	4b0b      	ldr	r3, [pc, #44]	; (80034b4 <BackTraceSub+0xb8>)
 8003488:	681b      	ldr	r3, [r3, #0]
 800348a:	697a      	ldr	r2, [r7, #20]
 800348c:	429a      	cmp	r2, r3
 800348e:	d202      	bcs.n	8003496 <BackTraceSub+0x9a>
 8003490:	693b      	ldr	r3, [r7, #16]
 8003492:	2b0e      	cmp	r3, #14
 8003494:	d9bb      	bls.n	800340e <BackTraceSub+0x12>
    }
}
 8003496:	bf00      	nop
 8003498:	3718      	adds	r7, #24
 800349a:	46bd      	mov	sp, r7
 800349c:	bd80      	pop	{r7, pc}
 800349e:	bf00      	nop
 80034a0:	20000ae0 	.word	0x20000ae0
 80034a4:	20000ae4 	.word	0x20000ae4
 80034a8:	20000b98 	.word	0x20000b98
 80034ac:	0800ad00 	.word	0x0800ad00
 80034b0:	0800ad2c 	.word	0x0800ad2c
 80034b4:	20000af0 	.word	0x20000af0

080034b8 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
 80034b8:	b480      	push	{r7}
 80034ba:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
 80034bc:	4b03      	ldr	r3, [pc, #12]	; (80034cc <exception_init+0x14>)
 80034be:	4a04      	ldr	r2, [pc, #16]	; (80034d0 <exception_init+0x18>)
 80034c0:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
 80034c2:	bf00      	nop
 80034c4:	46bd      	mov	sp, r7
 80034c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80034ca:	4770      	bx	lr
 80034cc:	20000c24 	.word	0x20000c24
 80034d0:	20000b9d 	.word	0x20000b9d

080034d4 <exception_test>:
void exception_test(void)
{
 80034d4:	b580      	push	{r7, lr}
 80034d6:	af00      	add	r7, sp, #0
  exception_init();
 80034d8:	f7ff ffee 	bl	80034b8 <exception_init>
}
 80034dc:	bf00      	nop
 80034de:	bd80      	pop	{r7, pc}

080034e0 <Reset_Handler>:

    .section  .text.Reset_Handler
  .weak  Reset_Handler
  .type  Reset_Handler, %function
Reset_Handler:  
  ldr   sp, =_estack    		 /* set stack pointer */
 80034e0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8003518 <LoopFillZerobss+0x14>

/* Copy the data segment initializers from flash to SRAM */  
  movs  r1, #0
 80034e4:	2100      	movs	r1, #0
  b  LoopCopyDataInit
 80034e6:	e003      	b.n	80034f0 <LoopCopyDataInit>

080034e8 <CopyDataInit>:

CopyDataInit:
  ldr  r3, =_sidata
 80034e8:	4b0c      	ldr	r3, [pc, #48]	; (800351c <LoopFillZerobss+0x18>)
  ldr  r3, [r3, r1]
 80034ea:	585b      	ldr	r3, [r3, r1]
  str  r3, [r0, r1]
 80034ec:	5043      	str	r3, [r0, r1]
  adds  r1, r1, #4
 80034ee:	3104      	adds	r1, #4

080034f0 <LoopCopyDataInit>:
    
LoopCopyDataInit:
  ldr  r0, =_sdata
 80034f0:	480b      	ldr	r0, [pc, #44]	; (8003520 <LoopFillZerobss+0x1c>)
  ldr  r3, =_edata
 80034f2:	4b0c      	ldr	r3, [pc, #48]	; (8003524 <LoopFillZerobss+0x20>)
  adds  r2, r0, r1
 80034f4:	1842      	adds	r2, r0, r1
  cmp  r2, r3
 80034f6:	429a      	cmp	r2, r3
  bcc  CopyDataInit
 80034f8:	d3f6      	bcc.n	80034e8 <CopyDataInit>
  ldr  r2, =_sbss
 80034fa:	4a0b      	ldr	r2, [pc, #44]	; (8003528 <LoopFillZerobss+0x24>)
  b  LoopFillZerobss
 80034fc:	e002      	b.n	8003504 <LoopFillZerobss>

080034fe <FillZerobss>:
/* Zero fill the bss segment. */  
FillZerobss:
  movs  r3, #0
 80034fe:	2300      	movs	r3, #0
  str  r3, [r2], #4
 8003500:	f842 3b04 	str.w	r3, [r2], #4

08003504 <LoopFillZerobss>:
    
LoopFillZerobss:
  ldr  r3, = _ebss
 8003504:	4b09      	ldr	r3, [pc, #36]	; (800352c <LoopFillZerobss+0x28>)
  cmp  r2, r3
 8003506:	429a      	cmp	r2, r3
  bcc  FillZerobss
 8003508:	d3f9      	bcc.n	80034fe <FillZerobss>

/* Call the clock system intitialization function.*/
  bl  SystemInit   
 800350a:	f7fd f921 	bl	8000750 <SystemInit>
/* Call static constructors */
    bl __libc_init_array
 800350e:	f000 f9b3 	bl	8003878 <__libc_init_array>
/* Call the application's entry point.*/
  bl  main
 8003512:	f7fc fe83 	bl	800021c <main>
  bx  lr    
 8003516:	4770      	bx	lr
  ldr   sp, =_estack    		 /* set stack pointer */
 8003518:	20017fff 	.word	0x20017fff
  ldr  r3, =_sidata
 800351c:	0800b164 	.word	0x0800b164
  ldr  r0, =_sdata
 8003520:	20000000 	.word	0x20000000
  ldr  r3, =_edata
 8003524:	200009c8 	.word	0x200009c8
  ldr  r2, =_sbss
 8003528:	20000a00 	.word	0x20000a00
  ldr  r3, = _ebss
 800352c:	20000c2c 	.word	0x20000c2c

08003530 <ADC_IRQHandler>:
 * @retval None       
*/
    .section  .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b  Infinite_Loop
 8003530:	e7fe      	b.n	8003530 <ADC_IRQHandler>
	...

08003534 <__aeabi_uldivmod>:
 8003534:	b953      	cbnz	r3, 800354c <__aeabi_uldivmod+0x18>
 8003536:	b94a      	cbnz	r2, 800354c <__aeabi_uldivmod+0x18>
 8003538:	2900      	cmp	r1, #0
 800353a:	bf08      	it	eq
 800353c:	2800      	cmpeq	r0, #0
 800353e:	bf1c      	itt	ne
 8003540:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8003544:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8003548:	f000 b96e 	b.w	8003828 <__aeabi_idiv0>
 800354c:	f1ad 0c08 	sub.w	ip, sp, #8
 8003550:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8003554:	f000 f806 	bl	8003564 <__udivmoddi4>
 8003558:	f8dd e004 	ldr.w	lr, [sp, #4]
 800355c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003560:	b004      	add	sp, #16
 8003562:	4770      	bx	lr

08003564 <__udivmoddi4>:
 8003564:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003568:	9d08      	ldr	r5, [sp, #32]
 800356a:	4604      	mov	r4, r0
 800356c:	468c      	mov	ip, r1
 800356e:	2b00      	cmp	r3, #0
 8003570:	f040 8083 	bne.w	800367a <__udivmoddi4+0x116>
 8003574:	428a      	cmp	r2, r1
 8003576:	4617      	mov	r7, r2
 8003578:	d947      	bls.n	800360a <__udivmoddi4+0xa6>
 800357a:	fab2 f282 	clz	r2, r2
 800357e:	b142      	cbz	r2, 8003592 <__udivmoddi4+0x2e>
 8003580:	f1c2 0020 	rsb	r0, r2, #32
 8003584:	fa24 f000 	lsr.w	r0, r4, r0
 8003588:	4091      	lsls	r1, r2
 800358a:	4097      	lsls	r7, r2
 800358c:	ea40 0c01 	orr.w	ip, r0, r1
 8003590:	4094      	lsls	r4, r2
 8003592:	ea4f 4817 	mov.w	r8, r7, lsr #16
 8003596:	0c23      	lsrs	r3, r4, #16
 8003598:	fbbc f6f8 	udiv	r6, ip, r8
 800359c:	fa1f fe87 	uxth.w	lr, r7
 80035a0:	fb08 c116 	mls	r1, r8, r6, ip
 80035a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80035a8:	fb06 f10e 	mul.w	r1, r6, lr
 80035ac:	4299      	cmp	r1, r3
 80035ae:	d909      	bls.n	80035c4 <__udivmoddi4+0x60>
 80035b0:	18fb      	adds	r3, r7, r3
 80035b2:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
 80035b6:	f080 8119 	bcs.w	80037ec <__udivmoddi4+0x288>
 80035ba:	4299      	cmp	r1, r3
 80035bc:	f240 8116 	bls.w	80037ec <__udivmoddi4+0x288>
 80035c0:	3e02      	subs	r6, #2
 80035c2:	443b      	add	r3, r7
 80035c4:	1a5b      	subs	r3, r3, r1
 80035c6:	b2a4      	uxth	r4, r4
 80035c8:	fbb3 f0f8 	udiv	r0, r3, r8
 80035cc:	fb08 3310 	mls	r3, r8, r0, r3
 80035d0:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80035d4:	fb00 fe0e 	mul.w	lr, r0, lr
 80035d8:	45a6      	cmp	lr, r4
 80035da:	d909      	bls.n	80035f0 <__udivmoddi4+0x8c>
 80035dc:	193c      	adds	r4, r7, r4
 80035de:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 80035e2:	f080 8105 	bcs.w	80037f0 <__udivmoddi4+0x28c>
 80035e6:	45a6      	cmp	lr, r4
 80035e8:	f240 8102 	bls.w	80037f0 <__udivmoddi4+0x28c>
 80035ec:	3802      	subs	r0, #2
 80035ee:	443c      	add	r4, r7
 80035f0:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 80035f4:	eba4 040e 	sub.w	r4, r4, lr
 80035f8:	2600      	movs	r6, #0
 80035fa:	b11d      	cbz	r5, 8003604 <__udivmoddi4+0xa0>
 80035fc:	40d4      	lsrs	r4, r2
 80035fe:	2300      	movs	r3, #0
 8003600:	e9c5 4300 	strd	r4, r3, [r5]
 8003604:	4631      	mov	r1, r6
 8003606:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800360a:	b902      	cbnz	r2, 800360e <__udivmoddi4+0xaa>
 800360c:	deff      	udf	#255	; 0xff
 800360e:	fab2 f282 	clz	r2, r2
 8003612:	2a00      	cmp	r2, #0
 8003614:	d150      	bne.n	80036b8 <__udivmoddi4+0x154>
 8003616:	1bcb      	subs	r3, r1, r7
 8003618:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 800361c:	fa1f f887 	uxth.w	r8, r7
 8003620:	2601      	movs	r6, #1
 8003622:	fbb3 fcfe 	udiv	ip, r3, lr
 8003626:	0c21      	lsrs	r1, r4, #16
 8003628:	fb0e 331c 	mls	r3, lr, ip, r3
 800362c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8003630:	fb08 f30c 	mul.w	r3, r8, ip
 8003634:	428b      	cmp	r3, r1
 8003636:	d907      	bls.n	8003648 <__udivmoddi4+0xe4>
 8003638:	1879      	adds	r1, r7, r1
 800363a:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 800363e:	d202      	bcs.n	8003646 <__udivmoddi4+0xe2>
 8003640:	428b      	cmp	r3, r1
 8003642:	f200 80e9 	bhi.w	8003818 <__udivmoddi4+0x2b4>
 8003646:	4684      	mov	ip, r0
 8003648:	1ac9      	subs	r1, r1, r3
 800364a:	b2a3      	uxth	r3, r4
 800364c:	fbb1 f0fe 	udiv	r0, r1, lr
 8003650:	fb0e 1110 	mls	r1, lr, r0, r1
 8003654:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
 8003658:	fb08 f800 	mul.w	r8, r8, r0
 800365c:	45a0      	cmp	r8, r4
 800365e:	d907      	bls.n	8003670 <__udivmoddi4+0x10c>
 8003660:	193c      	adds	r4, r7, r4
 8003662:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8003666:	d202      	bcs.n	800366e <__udivmoddi4+0x10a>
 8003668:	45a0      	cmp	r8, r4
 800366a:	f200 80d9 	bhi.w	8003820 <__udivmoddi4+0x2bc>
 800366e:	4618      	mov	r0, r3
 8003670:	eba4 0408 	sub.w	r4, r4, r8
 8003674:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8003678:	e7bf      	b.n	80035fa <__udivmoddi4+0x96>
 800367a:	428b      	cmp	r3, r1
 800367c:	d909      	bls.n	8003692 <__udivmoddi4+0x12e>
 800367e:	2d00      	cmp	r5, #0
 8003680:	f000 80b1 	beq.w	80037e6 <__udivmoddi4+0x282>
 8003684:	2600      	movs	r6, #0
 8003686:	e9c5 0100 	strd	r0, r1, [r5]
 800368a:	4630      	mov	r0, r6
 800368c:	4631      	mov	r1, r6
 800368e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003692:	fab3 f683 	clz	r6, r3
 8003696:	2e00      	cmp	r6, #0
 8003698:	d14a      	bne.n	8003730 <__udivmoddi4+0x1cc>
 800369a:	428b      	cmp	r3, r1
 800369c:	d302      	bcc.n	80036a4 <__udivmoddi4+0x140>
 800369e:	4282      	cmp	r2, r0
 80036a0:	f200 80b8 	bhi.w	8003814 <__udivmoddi4+0x2b0>
 80036a4:	1a84      	subs	r4, r0, r2
 80036a6:	eb61 0103 	sbc.w	r1, r1, r3
 80036aa:	2001      	movs	r0, #1
 80036ac:	468c      	mov	ip, r1
 80036ae:	2d00      	cmp	r5, #0
 80036b0:	d0a8      	beq.n	8003604 <__udivmoddi4+0xa0>
 80036b2:	e9c5 4c00 	strd	r4, ip, [r5]
 80036b6:	e7a5      	b.n	8003604 <__udivmoddi4+0xa0>
 80036b8:	f1c2 0320 	rsb	r3, r2, #32
 80036bc:	fa20 f603 	lsr.w	r6, r0, r3
 80036c0:	4097      	lsls	r7, r2
 80036c2:	fa01 f002 	lsl.w	r0, r1, r2
 80036c6:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 80036ca:	40d9      	lsrs	r1, r3
 80036cc:	4330      	orrs	r0, r6
 80036ce:	0c03      	lsrs	r3, r0, #16
 80036d0:	fbb1 f6fe 	udiv	r6, r1, lr
 80036d4:	fa1f f887 	uxth.w	r8, r7
 80036d8:	fb0e 1116 	mls	r1, lr, r6, r1
 80036dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80036e0:	fb06 f108 	mul.w	r1, r6, r8
 80036e4:	4299      	cmp	r1, r3
 80036e6:	fa04 f402 	lsl.w	r4, r4, r2
 80036ea:	d909      	bls.n	8003700 <__udivmoddi4+0x19c>
 80036ec:	18fb      	adds	r3, r7, r3
 80036ee:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
 80036f2:	f080 808d 	bcs.w	8003810 <__udivmoddi4+0x2ac>
 80036f6:	4299      	cmp	r1, r3
 80036f8:	f240 808a 	bls.w	8003810 <__udivmoddi4+0x2ac>
 80036fc:	3e02      	subs	r6, #2
 80036fe:	443b      	add	r3, r7
 8003700:	1a5b      	subs	r3, r3, r1
 8003702:	b281      	uxth	r1, r0
 8003704:	fbb3 f0fe 	udiv	r0, r3, lr
 8003708:	fb0e 3310 	mls	r3, lr, r0, r3
 800370c:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8003710:	fb00 f308 	mul.w	r3, r0, r8
 8003714:	428b      	cmp	r3, r1
 8003716:	d907      	bls.n	8003728 <__udivmoddi4+0x1c4>
 8003718:	1879      	adds	r1, r7, r1
 800371a:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 800371e:	d273      	bcs.n	8003808 <__udivmoddi4+0x2a4>
 8003720:	428b      	cmp	r3, r1
 8003722:	d971      	bls.n	8003808 <__udivmoddi4+0x2a4>
 8003724:	3802      	subs	r0, #2
 8003726:	4439      	add	r1, r7
 8003728:	1acb      	subs	r3, r1, r3
 800372a:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
 800372e:	e778      	b.n	8003622 <__udivmoddi4+0xbe>
 8003730:	f1c6 0c20 	rsb	ip, r6, #32
 8003734:	fa03 f406 	lsl.w	r4, r3, r6
 8003738:	fa22 f30c 	lsr.w	r3, r2, ip
 800373c:	431c      	orrs	r4, r3
 800373e:	fa20 f70c 	lsr.w	r7, r0, ip
 8003742:	fa01 f306 	lsl.w	r3, r1, r6
 8003746:	ea4f 4e14 	mov.w	lr, r4, lsr #16
 800374a:	fa21 f10c 	lsr.w	r1, r1, ip
 800374e:	431f      	orrs	r7, r3
 8003750:	0c3b      	lsrs	r3, r7, #16
 8003752:	fbb1 f9fe 	udiv	r9, r1, lr
 8003756:	fa1f f884 	uxth.w	r8, r4
 800375a:	fb0e 1119 	mls	r1, lr, r9, r1
 800375e:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
 8003762:	fb09 fa08 	mul.w	sl, r9, r8
 8003766:	458a      	cmp	sl, r1
 8003768:	fa02 f206 	lsl.w	r2, r2, r6
 800376c:	fa00 f306 	lsl.w	r3, r0, r6
 8003770:	d908      	bls.n	8003784 <__udivmoddi4+0x220>
 8003772:	1861      	adds	r1, r4, r1
 8003774:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8003778:	d248      	bcs.n	800380c <__udivmoddi4+0x2a8>
 800377a:	458a      	cmp	sl, r1
 800377c:	d946      	bls.n	800380c <__udivmoddi4+0x2a8>
 800377e:	f1a9 0902 	sub.w	r9, r9, #2
 8003782:	4421      	add	r1, r4
 8003784:	eba1 010a 	sub.w	r1, r1, sl
 8003788:	b2bf      	uxth	r7, r7
 800378a:	fbb1 f0fe 	udiv	r0, r1, lr
 800378e:	fb0e 1110 	mls	r1, lr, r0, r1
 8003792:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
 8003796:	fb00 f808 	mul.w	r8, r0, r8
 800379a:	45b8      	cmp	r8, r7
 800379c:	d907      	bls.n	80037ae <__udivmoddi4+0x24a>
 800379e:	19e7      	adds	r7, r4, r7
 80037a0:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
 80037a4:	d22e      	bcs.n	8003804 <__udivmoddi4+0x2a0>
 80037a6:	45b8      	cmp	r8, r7
 80037a8:	d92c      	bls.n	8003804 <__udivmoddi4+0x2a0>
 80037aa:	3802      	subs	r0, #2
 80037ac:	4427      	add	r7, r4
 80037ae:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 80037b2:	eba7 0708 	sub.w	r7, r7, r8
 80037b6:	fba0 8902 	umull	r8, r9, r0, r2
 80037ba:	454f      	cmp	r7, r9
 80037bc:	46c6      	mov	lr, r8
 80037be:	4649      	mov	r1, r9
 80037c0:	d31a      	bcc.n	80037f8 <__udivmoddi4+0x294>
 80037c2:	d017      	beq.n	80037f4 <__udivmoddi4+0x290>
 80037c4:	b15d      	cbz	r5, 80037de <__udivmoddi4+0x27a>
 80037c6:	ebb3 020e 	subs.w	r2, r3, lr
 80037ca:	eb67 0701 	sbc.w	r7, r7, r1
 80037ce:	fa07 fc0c 	lsl.w	ip, r7, ip
 80037d2:	40f2      	lsrs	r2, r6
 80037d4:	ea4c 0202 	orr.w	r2, ip, r2
 80037d8:	40f7      	lsrs	r7, r6
 80037da:	e9c5 2700 	strd	r2, r7, [r5]
 80037de:	2600      	movs	r6, #0
 80037e0:	4631      	mov	r1, r6
 80037e2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80037e6:	462e      	mov	r6, r5
 80037e8:	4628      	mov	r0, r5
 80037ea:	e70b      	b.n	8003604 <__udivmoddi4+0xa0>
 80037ec:	4606      	mov	r6, r0
 80037ee:	e6e9      	b.n	80035c4 <__udivmoddi4+0x60>
 80037f0:	4618      	mov	r0, r3
 80037f2:	e6fd      	b.n	80035f0 <__udivmoddi4+0x8c>
 80037f4:	4543      	cmp	r3, r8
 80037f6:	d2e5      	bcs.n	80037c4 <__udivmoddi4+0x260>
 80037f8:	ebb8 0e02 	subs.w	lr, r8, r2
 80037fc:	eb69 0104 	sbc.w	r1, r9, r4
 8003800:	3801      	subs	r0, #1
 8003802:	e7df      	b.n	80037c4 <__udivmoddi4+0x260>
 8003804:	4608      	mov	r0, r1
 8003806:	e7d2      	b.n	80037ae <__udivmoddi4+0x24a>
 8003808:	4660      	mov	r0, ip
 800380a:	e78d      	b.n	8003728 <__udivmoddi4+0x1c4>
 800380c:	4681      	mov	r9, r0
 800380e:	e7b9      	b.n	8003784 <__udivmoddi4+0x220>
 8003810:	4666      	mov	r6, ip
 8003812:	e775      	b.n	8003700 <__udivmoddi4+0x19c>
 8003814:	4630      	mov	r0, r6
 8003816:	e74a      	b.n	80036ae <__udivmoddi4+0x14a>
 8003818:	f1ac 0c02 	sub.w	ip, ip, #2
 800381c:	4439      	add	r1, r7
 800381e:	e713      	b.n	8003648 <__udivmoddi4+0xe4>
 8003820:	3802      	subs	r0, #2
 8003822:	443c      	add	r4, r7
 8003824:	e724      	b.n	8003670 <__udivmoddi4+0x10c>
 8003826:	bf00      	nop

08003828 <__aeabi_idiv0>:
 8003828:	4770      	bx	lr
 800382a:	bf00      	nop

0800382c <atexit>:
 800382c:	2300      	movs	r3, #0
 800382e:	4601      	mov	r1, r0
 8003830:	461a      	mov	r2, r3
 8003832:	4618      	mov	r0, r3
 8003834:	f001 bdec 	b.w	8005410 <__register_exitproc>

08003838 <__errno>:
 8003838:	4b01      	ldr	r3, [pc, #4]	; (8003840 <__errno+0x8>)
 800383a:	6818      	ldr	r0, [r3, #0]
 800383c:	4770      	bx	lr
 800383e:	bf00      	nop
 8003840:	20000010 	.word	0x20000010

08003844 <__libc_fini_array>:
 8003844:	b538      	push	{r3, r4, r5, lr}
 8003846:	4c0a      	ldr	r4, [pc, #40]	; (8003870 <__libc_fini_array+0x2c>)
 8003848:	4d0a      	ldr	r5, [pc, #40]	; (8003874 <__libc_fini_array+0x30>)
 800384a:	1b64      	subs	r4, r4, r5
 800384c:	10a4      	asrs	r4, r4, #2
 800384e:	d00a      	beq.n	8003866 <__libc_fini_array+0x22>
 8003850:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8003854:	3b01      	subs	r3, #1
 8003856:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800385a:	3c01      	subs	r4, #1
 800385c:	f855 3904 	ldr.w	r3, [r5], #-4
 8003860:	4798      	blx	r3
 8003862:	2c00      	cmp	r4, #0
 8003864:	d1f9      	bne.n	800385a <__libc_fini_array+0x16>
 8003866:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800386a:	f006 bce7 	b.w	800a23c <_fini>
 800386e:	bf00      	nop
 8003870:	200009c8 	.word	0x200009c8
 8003874:	200009c4 	.word	0x200009c4

08003878 <__libc_init_array>:
 8003878:	b570      	push	{r4, r5, r6, lr}
 800387a:	4e0d      	ldr	r6, [pc, #52]	; (80038b0 <__libc_init_array+0x38>)
 800387c:	4d0d      	ldr	r5, [pc, #52]	; (80038b4 <__libc_init_array+0x3c>)
 800387e:	1b76      	subs	r6, r6, r5
 8003880:	10b6      	asrs	r6, r6, #2
 8003882:	d006      	beq.n	8003892 <__libc_init_array+0x1a>
 8003884:	2400      	movs	r4, #0
 8003886:	3401      	adds	r4, #1
 8003888:	f855 3b04 	ldr.w	r3, [r5], #4
 800388c:	4798      	blx	r3
 800388e:	42a6      	cmp	r6, r4
 8003890:	d1f9      	bne.n	8003886 <__libc_init_array+0xe>
 8003892:	4e09      	ldr	r6, [pc, #36]	; (80038b8 <__libc_init_array+0x40>)
 8003894:	4d09      	ldr	r5, [pc, #36]	; (80038bc <__libc_init_array+0x44>)
 8003896:	1b76      	subs	r6, r6, r5
 8003898:	f006 fcca 	bl	800a230 <_init>
 800389c:	10b6      	asrs	r6, r6, #2
 800389e:	d006      	beq.n	80038ae <__libc_init_array+0x36>
 80038a0:	2400      	movs	r4, #0
 80038a2:	3401      	adds	r4, #1
 80038a4:	f855 3b04 	ldr.w	r3, [r5], #4
 80038a8:	4798      	blx	r3
 80038aa:	42a6      	cmp	r6, r4
 80038ac:	d1f9      	bne.n	80038a2 <__libc_init_array+0x2a>
 80038ae:	bd70      	pop	{r4, r5, r6, pc}
 80038b0:	200009bc 	.word	0x200009bc
 80038b4:	200009bc 	.word	0x200009bc
 80038b8:	200009c4 	.word	0x200009c4
 80038bc:	200009bc 	.word	0x200009bc

080038c0 <memcpy>:
 80038c0:	4684      	mov	ip, r0
 80038c2:	ea41 0300 	orr.w	r3, r1, r0
 80038c6:	f013 0303 	ands.w	r3, r3, #3
 80038ca:	d16d      	bne.n	80039a8 <memcpy+0xe8>
 80038cc:	3a40      	subs	r2, #64	; 0x40
 80038ce:	d341      	bcc.n	8003954 <memcpy+0x94>
 80038d0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038d4:	f840 3b04 	str.w	r3, [r0], #4
 80038d8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038dc:	f840 3b04 	str.w	r3, [r0], #4
 80038e0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038e4:	f840 3b04 	str.w	r3, [r0], #4
 80038e8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038ec:	f840 3b04 	str.w	r3, [r0], #4
 80038f0:	f851 3b04 	ldr.w	r3, [r1], #4
 80038f4:	f840 3b04 	str.w	r3, [r0], #4
 80038f8:	f851 3b04 	ldr.w	r3, [r1], #4
 80038fc:	f840 3b04 	str.w	r3, [r0], #4
 8003900:	f851 3b04 	ldr.w	r3, [r1], #4
 8003904:	f840 3b04 	str.w	r3, [r0], #4
 8003908:	f851 3b04 	ldr.w	r3, [r1], #4
 800390c:	f840 3b04 	str.w	r3, [r0], #4
 8003910:	f851 3b04 	ldr.w	r3, [r1], #4
 8003914:	f840 3b04 	str.w	r3, [r0], #4
 8003918:	f851 3b04 	ldr.w	r3, [r1], #4
 800391c:	f840 3b04 	str.w	r3, [r0], #4
 8003920:	f851 3b04 	ldr.w	r3, [r1], #4
 8003924:	f840 3b04 	str.w	r3, [r0], #4
 8003928:	f851 3b04 	ldr.w	r3, [r1], #4
 800392c:	f840 3b04 	str.w	r3, [r0], #4
 8003930:	f851 3b04 	ldr.w	r3, [r1], #4
 8003934:	f840 3b04 	str.w	r3, [r0], #4
 8003938:	f851 3b04 	ldr.w	r3, [r1], #4
 800393c:	f840 3b04 	str.w	r3, [r0], #4
 8003940:	f851 3b04 	ldr.w	r3, [r1], #4
 8003944:	f840 3b04 	str.w	r3, [r0], #4
 8003948:	f851 3b04 	ldr.w	r3, [r1], #4
 800394c:	f840 3b04 	str.w	r3, [r0], #4
 8003950:	3a40      	subs	r2, #64	; 0x40
 8003952:	d2bd      	bcs.n	80038d0 <memcpy+0x10>
 8003954:	3230      	adds	r2, #48	; 0x30
 8003956:	d311      	bcc.n	800397c <memcpy+0xbc>
 8003958:	f851 3b04 	ldr.w	r3, [r1], #4
 800395c:	f840 3b04 	str.w	r3, [r0], #4
 8003960:	f851 3b04 	ldr.w	r3, [r1], #4
 8003964:	f840 3b04 	str.w	r3, [r0], #4
 8003968:	f851 3b04 	ldr.w	r3, [r1], #4
 800396c:	f840 3b04 	str.w	r3, [r0], #4
 8003970:	f851 3b04 	ldr.w	r3, [r1], #4
 8003974:	f840 3b04 	str.w	r3, [r0], #4
 8003978:	3a10      	subs	r2, #16
 800397a:	d2ed      	bcs.n	8003958 <memcpy+0x98>
 800397c:	320c      	adds	r2, #12
 800397e:	d305      	bcc.n	800398c <memcpy+0xcc>
 8003980:	f851 3b04 	ldr.w	r3, [r1], #4
 8003984:	f840 3b04 	str.w	r3, [r0], #4
 8003988:	3a04      	subs	r2, #4
 800398a:	d2f9      	bcs.n	8003980 <memcpy+0xc0>
 800398c:	3204      	adds	r2, #4
 800398e:	d008      	beq.n	80039a2 <memcpy+0xe2>
 8003990:	07d2      	lsls	r2, r2, #31
 8003992:	bf1c      	itt	ne
 8003994:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003998:	f800 3b01 	strbne.w	r3, [r0], #1
 800399c:	d301      	bcc.n	80039a2 <memcpy+0xe2>
 800399e:	880b      	ldrh	r3, [r1, #0]
 80039a0:	8003      	strh	r3, [r0, #0]
 80039a2:	4660      	mov	r0, ip
 80039a4:	4770      	bx	lr
 80039a6:	bf00      	nop
 80039a8:	2a08      	cmp	r2, #8
 80039aa:	d313      	bcc.n	80039d4 <memcpy+0x114>
 80039ac:	078b      	lsls	r3, r1, #30
 80039ae:	d08d      	beq.n	80038cc <memcpy+0xc>
 80039b0:	f010 0303 	ands.w	r3, r0, #3
 80039b4:	d08a      	beq.n	80038cc <memcpy+0xc>
 80039b6:	f1c3 0304 	rsb	r3, r3, #4
 80039ba:	1ad2      	subs	r2, r2, r3
 80039bc:	07db      	lsls	r3, r3, #31
 80039be:	bf1c      	itt	ne
 80039c0:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80039c4:	f800 3b01 	strbne.w	r3, [r0], #1
 80039c8:	d380      	bcc.n	80038cc <memcpy+0xc>
 80039ca:	f831 3b02 	ldrh.w	r3, [r1], #2
 80039ce:	f820 3b02 	strh.w	r3, [r0], #2
 80039d2:	e77b      	b.n	80038cc <memcpy+0xc>
 80039d4:	3a04      	subs	r2, #4
 80039d6:	d3d9      	bcc.n	800398c <memcpy+0xcc>
 80039d8:	3a01      	subs	r2, #1
 80039da:	f811 3b01 	ldrb.w	r3, [r1], #1
 80039de:	f800 3b01 	strb.w	r3, [r0], #1
 80039e2:	d2f9      	bcs.n	80039d8 <memcpy+0x118>
 80039e4:	780b      	ldrb	r3, [r1, #0]
 80039e6:	7003      	strb	r3, [r0, #0]
 80039e8:	784b      	ldrb	r3, [r1, #1]
 80039ea:	7043      	strb	r3, [r0, #1]
 80039ec:	788b      	ldrb	r3, [r1, #2]
 80039ee:	7083      	strb	r3, [r0, #2]
 80039f0:	4660      	mov	r0, ip
 80039f2:	4770      	bx	lr

080039f4 <memset>:
 80039f4:	b4f0      	push	{r4, r5, r6, r7}
 80039f6:	0786      	lsls	r6, r0, #30
 80039f8:	d046      	beq.n	8003a88 <memset+0x94>
 80039fa:	1e54      	subs	r4, r2, #1
 80039fc:	2a00      	cmp	r2, #0
 80039fe:	d03c      	beq.n	8003a7a <memset+0x86>
 8003a00:	b2ca      	uxtb	r2, r1
 8003a02:	4603      	mov	r3, r0
 8003a04:	e002      	b.n	8003a0c <memset+0x18>
 8003a06:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8003a0a:	d336      	bcc.n	8003a7a <memset+0x86>
 8003a0c:	f803 2b01 	strb.w	r2, [r3], #1
 8003a10:	079d      	lsls	r5, r3, #30
 8003a12:	d1f8      	bne.n	8003a06 <memset+0x12>
 8003a14:	2c03      	cmp	r4, #3
 8003a16:	d929      	bls.n	8003a6c <memset+0x78>
 8003a18:	b2cd      	uxtb	r5, r1
 8003a1a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8003a1e:	2c0f      	cmp	r4, #15
 8003a20:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003a24:	d933      	bls.n	8003a8e <memset+0x9a>
 8003a26:	f1a4 0610 	sub.w	r6, r4, #16
 8003a2a:	0936      	lsrs	r6, r6, #4
 8003a2c:	f103 0720 	add.w	r7, r3, #32
 8003a30:	eb07 1706 	add.w	r7, r7, r6, lsl #4
 8003a34:	f103 0210 	add.w	r2, r3, #16
 8003a38:	e942 5504 	strd	r5, r5, [r2, #-16]
 8003a3c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8003a40:	3210      	adds	r2, #16
 8003a42:	42ba      	cmp	r2, r7
 8003a44:	d1f8      	bne.n	8003a38 <memset+0x44>
 8003a46:	1c72      	adds	r2, r6, #1
 8003a48:	f014 0f0c 	tst.w	r4, #12
 8003a4c:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 8003a50:	f004 060f 	and.w	r6, r4, #15
 8003a54:	d013      	beq.n	8003a7e <memset+0x8a>
 8003a56:	1f33      	subs	r3, r6, #4
 8003a58:	f023 0303 	bic.w	r3, r3, #3
 8003a5c:	3304      	adds	r3, #4
 8003a5e:	4413      	add	r3, r2
 8003a60:	f842 5b04 	str.w	r5, [r2], #4
 8003a64:	4293      	cmp	r3, r2
 8003a66:	d1fb      	bne.n	8003a60 <memset+0x6c>
 8003a68:	f006 0403 	and.w	r4, r6, #3
 8003a6c:	b12c      	cbz	r4, 8003a7a <memset+0x86>
 8003a6e:	b2c9      	uxtb	r1, r1
 8003a70:	441c      	add	r4, r3
 8003a72:	f803 1b01 	strb.w	r1, [r3], #1
 8003a76:	429c      	cmp	r4, r3
 8003a78:	d1fb      	bne.n	8003a72 <memset+0x7e>
 8003a7a:	bcf0      	pop	{r4, r5, r6, r7}
 8003a7c:	4770      	bx	lr
 8003a7e:	4634      	mov	r4, r6
 8003a80:	4613      	mov	r3, r2
 8003a82:	2c00      	cmp	r4, #0
 8003a84:	d1f3      	bne.n	8003a6e <memset+0x7a>
 8003a86:	e7f8      	b.n	8003a7a <memset+0x86>
 8003a88:	4614      	mov	r4, r2
 8003a8a:	4603      	mov	r3, r0
 8003a8c:	e7c2      	b.n	8003a14 <memset+0x20>
 8003a8e:	461a      	mov	r2, r3
 8003a90:	4626      	mov	r6, r4
 8003a92:	e7e0      	b.n	8003a56 <memset+0x62>

08003a94 <_printf_r>:
 8003a94:	b40e      	push	{r1, r2, r3}
 8003a96:	b500      	push	{lr}
 8003a98:	b082      	sub	sp, #8
 8003a9a:	ab03      	add	r3, sp, #12
 8003a9c:	6881      	ldr	r1, [r0, #8]
 8003a9e:	f853 2b04 	ldr.w	r2, [r3], #4
 8003aa2:	9301      	str	r3, [sp, #4]
 8003aa4:	f000 f98c 	bl	8003dc0 <_vfprintf_r>
 8003aa8:	b002      	add	sp, #8
 8003aaa:	f85d eb04 	ldr.w	lr, [sp], #4
 8003aae:	b003      	add	sp, #12
 8003ab0:	4770      	bx	lr
 8003ab2:	bf00      	nop

08003ab4 <printf>:
 8003ab4:	b40f      	push	{r0, r1, r2, r3}
 8003ab6:	b500      	push	{lr}
 8003ab8:	4907      	ldr	r1, [pc, #28]	; (8003ad8 <printf+0x24>)
 8003aba:	b083      	sub	sp, #12
 8003abc:	ab04      	add	r3, sp, #16
 8003abe:	6808      	ldr	r0, [r1, #0]
 8003ac0:	f853 2b04 	ldr.w	r2, [r3], #4
 8003ac4:	6881      	ldr	r1, [r0, #8]
 8003ac6:	9301      	str	r3, [sp, #4]
 8003ac8:	f000 f97a 	bl	8003dc0 <_vfprintf_r>
 8003acc:	b003      	add	sp, #12
 8003ace:	f85d eb04 	ldr.w	lr, [sp], #4
 8003ad2:	b004      	add	sp, #16
 8003ad4:	4770      	bx	lr
 8003ad6:	bf00      	nop
 8003ad8:	20000010 	.word	0x20000010
 8003adc:	00000000 	.word	0x00000000
 8003ae0:	eba2 0003 	sub.w	r0, r2, r3
 8003ae4:	4770      	bx	lr
 8003ae6:	bf00      	nop

08003ae8 <strcmp>:
 8003ae8:	7802      	ldrb	r2, [r0, #0]
 8003aea:	780b      	ldrb	r3, [r1, #0]
 8003aec:	2a01      	cmp	r2, #1
 8003aee:	bf28      	it	cs
 8003af0:	429a      	cmpcs	r2, r3
 8003af2:	d1f5      	bne.n	8003ae0 <printf+0x2c>
 8003af4:	e96d 4504 	strd	r4, r5, [sp, #-16]!
 8003af8:	ea40 0401 	orr.w	r4, r0, r1
 8003afc:	e9cd 6702 	strd	r6, r7, [sp, #8]
 8003b00:	f06f 0c00 	mvn.w	ip, #0
 8003b04:	ea4f 7244 	mov.w	r2, r4, lsl #29
 8003b08:	b312      	cbz	r2, 8003b50 <strcmp+0x68>
 8003b0a:	ea80 0401 	eor.w	r4, r0, r1
 8003b0e:	f014 0f07 	tst.w	r4, #7
 8003b12:	d16a      	bne.n	8003bea <strcmp+0x102>
 8003b14:	f000 0407 	and.w	r4, r0, #7
 8003b18:	f020 0007 	bic.w	r0, r0, #7
 8003b1c:	f004 0503 	and.w	r5, r4, #3
 8003b20:	f021 0107 	bic.w	r1, r1, #7
 8003b24:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8003b28:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 8003b2c:	f014 0f04 	tst.w	r4, #4
 8003b30:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 8003b34:	fa0c f405 	lsl.w	r4, ip, r5
 8003b38:	ea62 0204 	orn	r2, r2, r4
 8003b3c:	ea66 0604 	orn	r6, r6, r4
 8003b40:	d00a      	beq.n	8003b58 <strcmp+0x70>
 8003b42:	ea63 0304 	orn	r3, r3, r4
 8003b46:	4662      	mov	r2, ip
 8003b48:	ea67 0704 	orn	r7, r7, r4
 8003b4c:	4666      	mov	r6, ip
 8003b4e:	e003      	b.n	8003b58 <strcmp+0x70>
 8003b50:	e8f0 2304 	ldrd	r2, r3, [r0], #16
 8003b54:	e8f1 6704 	ldrd	r6, r7, [r1], #16
 8003b58:	fa82 f54c 	uadd8	r5, r2, ip
 8003b5c:	ea82 0406 	eor.w	r4, r2, r6
 8003b60:	faa4 f48c 	sel	r4, r4, ip
 8003b64:	bb6c      	cbnz	r4, 8003bc2 <strcmp+0xda>
 8003b66:	fa83 f54c 	uadd8	r5, r3, ip
 8003b6a:	ea83 0507 	eor.w	r5, r3, r7
 8003b6e:	faa5 f58c 	sel	r5, r5, ip
 8003b72:	b995      	cbnz	r5, 8003b9a <strcmp+0xb2>
 8003b74:	e950 2302 	ldrd	r2, r3, [r0, #-8]
 8003b78:	e951 6702 	ldrd	r6, r7, [r1, #-8]
 8003b7c:	fa82 f54c 	uadd8	r5, r2, ip
 8003b80:	ea82 0406 	eor.w	r4, r2, r6
 8003b84:	faa4 f48c 	sel	r4, r4, ip
 8003b88:	fa83 f54c 	uadd8	r5, r3, ip
 8003b8c:	ea83 0507 	eor.w	r5, r3, r7
 8003b90:	faa5 f58c 	sel	r5, r5, ip
 8003b94:	4325      	orrs	r5, r4
 8003b96:	d0db      	beq.n	8003b50 <strcmp+0x68>
 8003b98:	b99c      	cbnz	r4, 8003bc2 <strcmp+0xda>
 8003b9a:	ba2d      	rev	r5, r5
 8003b9c:	fab5 f485 	clz	r4, r5
 8003ba0:	f024 0407 	bic.w	r4, r4, #7
 8003ba4:	fa27 f104 	lsr.w	r1, r7, r4
 8003ba8:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8003bac:	fa23 f304 	lsr.w	r3, r3, r4
 8003bb0:	f003 00ff 	and.w	r0, r3, #255	; 0xff
 8003bb4:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003bb8:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003bbc:	eba0 0001 	sub.w	r0, r0, r1
 8003bc0:	4770      	bx	lr
 8003bc2:	ba24      	rev	r4, r4
 8003bc4:	fab4 f484 	clz	r4, r4
 8003bc8:	f024 0407 	bic.w	r4, r4, #7
 8003bcc:	fa26 f104 	lsr.w	r1, r6, r4
 8003bd0:	e9dd 6702 	ldrd	r6, r7, [sp, #8]
 8003bd4:	fa22 f204 	lsr.w	r2, r2, r4
 8003bd8:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8003bdc:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003be0:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003be4:	eba0 0001 	sub.w	r0, r0, r1
 8003be8:	4770      	bx	lr
 8003bea:	f014 0f03 	tst.w	r4, #3
 8003bee:	d13c      	bne.n	8003c6a <strcmp+0x182>
 8003bf0:	f010 0403 	ands.w	r4, r0, #3
 8003bf4:	d128      	bne.n	8003c48 <strcmp+0x160>
 8003bf6:	f850 2b08 	ldr.w	r2, [r0], #8
 8003bfa:	f851 3b08 	ldr.w	r3, [r1], #8
 8003bfe:	fa82 f54c 	uadd8	r5, r2, ip
 8003c02:	ea82 0503 	eor.w	r5, r2, r3
 8003c06:	faa5 f58c 	sel	r5, r5, ip
 8003c0a:	b95d      	cbnz	r5, 8003c24 <strcmp+0x13c>
 8003c0c:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8003c10:	f851 3c04 	ldr.w	r3, [r1, #-4]
 8003c14:	fa82 f54c 	uadd8	r5, r2, ip
 8003c18:	ea82 0503 	eor.w	r5, r2, r3
 8003c1c:	faa5 f58c 	sel	r5, r5, ip
 8003c20:	2d00      	cmp	r5, #0
 8003c22:	d0e8      	beq.n	8003bf6 <strcmp+0x10e>
 8003c24:	ba2d      	rev	r5, r5
 8003c26:	fab5 f485 	clz	r4, r5
 8003c2a:	f024 0407 	bic.w	r4, r4, #7
 8003c2e:	fa23 f104 	lsr.w	r1, r3, r4
 8003c32:	fa22 f204 	lsr.w	r2, r2, r4
 8003c36:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8003c3a:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8003c3e:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003c42:	eba0 0001 	sub.w	r0, r0, r1
 8003c46:	4770      	bx	lr
 8003c48:	ea4f 04c4 	mov.w	r4, r4, lsl #3
 8003c4c:	f020 0003 	bic.w	r0, r0, #3
 8003c50:	f850 2b08 	ldr.w	r2, [r0], #8
 8003c54:	f021 0103 	bic.w	r1, r1, #3
 8003c58:	f851 3b08 	ldr.w	r3, [r1], #8
 8003c5c:	fa0c f404 	lsl.w	r4, ip, r4
 8003c60:	ea62 0204 	orn	r2, r2, r4
 8003c64:	ea63 0304 	orn	r3, r3, r4
 8003c68:	e7c9      	b.n	8003bfe <strcmp+0x116>
 8003c6a:	f010 0403 	ands.w	r4, r0, #3
 8003c6e:	d01a      	beq.n	8003ca6 <strcmp+0x1be>
 8003c70:	eba1 0104 	sub.w	r1, r1, r4
 8003c74:	f020 0003 	bic.w	r0, r0, #3
 8003c78:	07e4      	lsls	r4, r4, #31
 8003c7a:	f850 2b04 	ldr.w	r2, [r0], #4
 8003c7e:	d006      	beq.n	8003c8e <strcmp+0x1a6>
 8003c80:	d20f      	bcs.n	8003ca2 <strcmp+0x1ba>
 8003c82:	788b      	ldrb	r3, [r1, #2]
 8003c84:	fa5f f4a2 	uxtb.w	r4, r2, ror #16
 8003c88:	1ae4      	subs	r4, r4, r3
 8003c8a:	d106      	bne.n	8003c9a <strcmp+0x1b2>
 8003c8c:	b12b      	cbz	r3, 8003c9a <strcmp+0x1b2>
 8003c8e:	78cb      	ldrb	r3, [r1, #3]
 8003c90:	fa5f f4b2 	uxtb.w	r4, r2, ror #24
 8003c94:	1ae4      	subs	r4, r4, r3
 8003c96:	d100      	bne.n	8003c9a <strcmp+0x1b2>
 8003c98:	b91b      	cbnz	r3, 8003ca2 <strcmp+0x1ba>
 8003c9a:	4620      	mov	r0, r4
 8003c9c:	f85d 4b10 	ldr.w	r4, [sp], #16
 8003ca0:	4770      	bx	lr
 8003ca2:	f101 0104 	add.w	r1, r1, #4
 8003ca6:	f850 2b04 	ldr.w	r2, [r0], #4
 8003caa:	07cc      	lsls	r4, r1, #31
 8003cac:	f021 0103 	bic.w	r1, r1, #3
 8003cb0:	f851 3b04 	ldr.w	r3, [r1], #4
 8003cb4:	d848      	bhi.n	8003d48 <strcmp+0x260>
 8003cb6:	d224      	bcs.n	8003d02 <strcmp+0x21a>
 8003cb8:	f022 447f 	bic.w	r4, r2, #4278190080	; 0xff000000
 8003cbc:	fa82 f54c 	uadd8	r5, r2, ip
 8003cc0:	ea94 2513 	eors.w	r5, r4, r3, lsr #8
 8003cc4:	faa5 f58c 	sel	r5, r5, ip
 8003cc8:	d10a      	bne.n	8003ce0 <strcmp+0x1f8>
 8003cca:	b965      	cbnz	r5, 8003ce6 <strcmp+0x1fe>
 8003ccc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003cd0:	ea84 0402 	eor.w	r4, r4, r2
 8003cd4:	ebb4 6f03 	cmp.w	r4, r3, lsl #24
 8003cd8:	d10e      	bne.n	8003cf8 <strcmp+0x210>
 8003cda:	f850 2b04 	ldr.w	r2, [r0], #4
 8003cde:	e7eb      	b.n	8003cb8 <strcmp+0x1d0>
 8003ce0:	ea4f 2313 	mov.w	r3, r3, lsr #8
 8003ce4:	e055      	b.n	8003d92 <strcmp+0x2aa>
 8003ce6:	f035 457f 	bics.w	r5, r5, #4278190080	; 0xff000000
 8003cea:	d14d      	bne.n	8003d88 <strcmp+0x2a0>
 8003cec:	7808      	ldrb	r0, [r1, #0]
 8003cee:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003cf2:	f1c0 0000 	rsb	r0, r0, #0
 8003cf6:	4770      	bx	lr
 8003cf8:	ea4f 6212 	mov.w	r2, r2, lsr #24
 8003cfc:	f003 03ff 	and.w	r3, r3, #255	; 0xff
 8003d00:	e047      	b.n	8003d92 <strcmp+0x2aa>
 8003d02:	ea02 441c 	and.w	r4, r2, ip, lsr #16
 8003d06:	fa82 f54c 	uadd8	r5, r2, ip
 8003d0a:	ea94 4513 	eors.w	r5, r4, r3, lsr #16
 8003d0e:	faa5 f58c 	sel	r5, r5, ip
 8003d12:	d10a      	bne.n	8003d2a <strcmp+0x242>
 8003d14:	b965      	cbnz	r5, 8003d30 <strcmp+0x248>
 8003d16:	f851 3b04 	ldr.w	r3, [r1], #4
 8003d1a:	ea84 0402 	eor.w	r4, r4, r2
 8003d1e:	ebb4 4f03 	cmp.w	r4, r3, lsl #16
 8003d22:	d10c      	bne.n	8003d3e <strcmp+0x256>
 8003d24:	f850 2b04 	ldr.w	r2, [r0], #4
 8003d28:	e7eb      	b.n	8003d02 <strcmp+0x21a>
 8003d2a:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8003d2e:	e030      	b.n	8003d92 <strcmp+0x2aa>
 8003d30:	ea15 451c 	ands.w	r5, r5, ip, lsr #16
 8003d34:	d128      	bne.n	8003d88 <strcmp+0x2a0>
 8003d36:	880b      	ldrh	r3, [r1, #0]
 8003d38:	ea4f 4212 	mov.w	r2, r2, lsr #16
 8003d3c:	e029      	b.n	8003d92 <strcmp+0x2aa>
 8003d3e:	ea4f 4212 	mov.w	r2, r2, lsr #16
 8003d42:	ea03 431c 	and.w	r3, r3, ip, lsr #16
 8003d46:	e024      	b.n	8003d92 <strcmp+0x2aa>
 8003d48:	f002 04ff 	and.w	r4, r2, #255	; 0xff
 8003d4c:	fa82 f54c 	uadd8	r5, r2, ip
 8003d50:	ea94 6513 	eors.w	r5, r4, r3, lsr #24
 8003d54:	faa5 f58c 	sel	r5, r5, ip
 8003d58:	d10a      	bne.n	8003d70 <strcmp+0x288>
 8003d5a:	b965      	cbnz	r5, 8003d76 <strcmp+0x28e>
 8003d5c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003d60:	ea84 0402 	eor.w	r4, r4, r2
 8003d64:	ebb4 2f03 	cmp.w	r4, r3, lsl #8
 8003d68:	d109      	bne.n	8003d7e <strcmp+0x296>
 8003d6a:	f850 2b04 	ldr.w	r2, [r0], #4
 8003d6e:	e7eb      	b.n	8003d48 <strcmp+0x260>
 8003d70:	ea4f 6313 	mov.w	r3, r3, lsr #24
 8003d74:	e00d      	b.n	8003d92 <strcmp+0x2aa>
 8003d76:	f015 0fff 	tst.w	r5, #255	; 0xff
 8003d7a:	d105      	bne.n	8003d88 <strcmp+0x2a0>
 8003d7c:	680b      	ldr	r3, [r1, #0]
 8003d7e:	ea4f 2212 	mov.w	r2, r2, lsr #8
 8003d82:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 8003d86:	e004      	b.n	8003d92 <strcmp+0x2aa>
 8003d88:	f04f 0000 	mov.w	r0, #0
 8003d8c:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003d90:	4770      	bx	lr
 8003d92:	ba12      	rev	r2, r2
 8003d94:	ba1b      	rev	r3, r3
 8003d96:	fa82 f44c 	uadd8	r4, r2, ip
 8003d9a:	ea82 0403 	eor.w	r4, r2, r3
 8003d9e:	faa4 f58c 	sel	r5, r4, ip
 8003da2:	fab5 f485 	clz	r4, r5
 8003da6:	fa02 f204 	lsl.w	r2, r2, r4
 8003daa:	fa03 f304 	lsl.w	r3, r3, r4
 8003dae:	ea4f 6012 	mov.w	r0, r2, lsr #24
 8003db2:	e8fd 4504 	ldrd	r4, r5, [sp], #16
 8003db6:	eba0 6013 	sub.w	r0, r0, r3, lsr #24
 8003dba:	4770      	bx	lr
 8003dbc:	0000      	movs	r0, r0
	...

08003dc0 <_vfprintf_r>:
 8003dc0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003dc4:	b0bf      	sub	sp, #252	; 0xfc
 8003dc6:	461c      	mov	r4, r3
 8003dc8:	9104      	str	r1, [sp, #16]
 8003dca:	4691      	mov	r9, r2
 8003dcc:	4605      	mov	r5, r0
 8003dce:	9008      	str	r0, [sp, #32]
 8003dd0:	f002 fea6 	bl	8006b20 <_localeconv_r>
 8003dd4:	6803      	ldr	r3, [r0, #0]
 8003dd6:	9311      	str	r3, [sp, #68]	; 0x44
 8003dd8:	4618      	mov	r0, r3
 8003dda:	f003 ff71 	bl	8007cc0 <strlen>
 8003dde:	9409      	str	r4, [sp, #36]	; 0x24
 8003de0:	900f      	str	r0, [sp, #60]	; 0x3c
 8003de2:	b11d      	cbz	r5, 8003dec <_vfprintf_r+0x2c>
 8003de4:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8003de6:	2b00      	cmp	r3, #0
 8003de8:	f000 8367 	beq.w	80044ba <_vfprintf_r+0x6fa>
 8003dec:	9904      	ldr	r1, [sp, #16]
 8003dee:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8003df2:	b293      	uxth	r3, r2
 8003df4:	049e      	lsls	r6, r3, #18
 8003df6:	4608      	mov	r0, r1
 8003df8:	d407      	bmi.n	8003e0a <_vfprintf_r+0x4a>
 8003dfa:	6e49      	ldr	r1, [r1, #100]	; 0x64
 8003dfc:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8003e00:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8003e04:	8183      	strh	r3, [r0, #12]
 8003e06:	6641      	str	r1, [r0, #100]	; 0x64
 8003e08:	b29b      	uxth	r3, r3
 8003e0a:	071d      	lsls	r5, r3, #28
 8003e0c:	f140 80d0 	bpl.w	8003fb0 <_vfprintf_r+0x1f0>
 8003e10:	9a04      	ldr	r2, [sp, #16]
 8003e12:	6912      	ldr	r2, [r2, #16]
 8003e14:	2a00      	cmp	r2, #0
 8003e16:	f000 80cb 	beq.w	8003fb0 <_vfprintf_r+0x1f0>
 8003e1a:	f003 031a 	and.w	r3, r3, #26
 8003e1e:	2b0a      	cmp	r3, #10
 8003e20:	f000 80d4 	beq.w	8003fcc <_vfprintf_r+0x20c>
 8003e24:	ed9f 7b9a 	vldr	d7, [pc, #616]	; 8004090 <_vfprintf_r+0x2d0>
 8003e28:	2300      	movs	r3, #0
 8003e2a:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 8003e2e:	930e      	str	r3, [sp, #56]	; 0x38
 8003e30:	e9cd 3322 	strd	r3, r3, [sp, #136]	; 0x88
 8003e34:	9310      	str	r3, [sp, #64]	; 0x40
 8003e36:	9312      	str	r3, [sp, #72]	; 0x48
 8003e38:	9305      	str	r3, [sp, #20]
 8003e3a:	ab2e      	add	r3, sp, #184	; 0xb8
 8003e3c:	9321      	str	r3, [sp, #132]	; 0x84
 8003e3e:	469a      	mov	sl, r3
 8003e40:	f899 3000 	ldrb.w	r3, [r9]
 8003e44:	2b00      	cmp	r3, #0
 8003e46:	f000 80dd 	beq.w	8004004 <_vfprintf_r+0x244>
 8003e4a:	2b25      	cmp	r3, #37	; 0x25
 8003e4c:	f000 86be 	beq.w	8004bcc <_vfprintf_r+0xe0c>
 8003e50:	464d      	mov	r5, r9
 8003e52:	e003      	b.n	8003e5c <_vfprintf_r+0x9c>
 8003e54:	2b25      	cmp	r3, #37	; 0x25
 8003e56:	f000 80c7 	beq.w	8003fe8 <_vfprintf_r+0x228>
 8003e5a:	4625      	mov	r5, r4
 8003e5c:	786b      	ldrb	r3, [r5, #1]
 8003e5e:	1c6c      	adds	r4, r5, #1
 8003e60:	2b00      	cmp	r3, #0
 8003e62:	d1f7      	bne.n	8003e54 <_vfprintf_r+0x94>
 8003e64:	ebb4 0609 	subs.w	r6, r4, r9
 8003e68:	f000 80cc 	beq.w	8004004 <_vfprintf_r+0x244>
 8003e6c:	e9dd 3222 	ldrd	r3, r2, [sp, #136]	; 0x88
 8003e70:	3301      	adds	r3, #1
 8003e72:	4432      	add	r2, r6
 8003e74:	2b07      	cmp	r3, #7
 8003e76:	f8ca 9000 	str.w	r9, [sl]
 8003e7a:	f8ca 6004 	str.w	r6, [sl, #4]
 8003e7e:	e9cd 3222 	strd	r3, r2, [sp, #136]	; 0x88
 8003e82:	f300 80b6 	bgt.w	8003ff2 <_vfprintf_r+0x232>
 8003e86:	f10a 0a08 	add.w	sl, sl, #8
 8003e8a:	9a05      	ldr	r2, [sp, #20]
 8003e8c:	786b      	ldrb	r3, [r5, #1]
 8003e8e:	4432      	add	r2, r6
 8003e90:	9205      	str	r2, [sp, #20]
 8003e92:	2b00      	cmp	r3, #0
 8003e94:	f000 80b6 	beq.w	8004004 <_vfprintf_r+0x244>
 8003e98:	2300      	movs	r3, #0
 8003e9a:	7867      	ldrb	r7, [r4, #1]
 8003e9c:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8003ea0:	461a      	mov	r2, r3
 8003ea2:	4619      	mov	r1, r3
 8003ea4:	9306      	str	r3, [sp, #24]
 8003ea6:	469b      	mov	fp, r3
 8003ea8:	f104 0901 	add.w	r9, r4, #1
 8003eac:	f04f 36ff 	mov.w	r6, #4294967295	; 0xffffffff
 8003eb0:	f109 0901 	add.w	r9, r9, #1
 8003eb4:	f1a7 0320 	sub.w	r3, r7, #32
 8003eb8:	2b58      	cmp	r3, #88	; 0x58
 8003eba:	f200 8302 	bhi.w	80044c2 <_vfprintf_r+0x702>
 8003ebe:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003ec2:	02da      	.short	0x02da
 8003ec4:	03000300 	.word	0x03000300
 8003ec8:	030002e2 	.word	0x030002e2
 8003ecc:	03000300 	.word	0x03000300
 8003ed0:	03000300 	.word	0x03000300
 8003ed4:	02290300 	.word	0x02290300
 8003ed8:	030002bc 	.word	0x030002bc
 8003edc:	02c102b7 	.word	0x02c102b7
 8003ee0:	00c00300 	.word	0x00c00300
 8003ee4:	00b100b1 	.word	0x00b100b1
 8003ee8:	00b100b1 	.word	0x00b100b1
 8003eec:	00b100b1 	.word	0x00b100b1
 8003ef0:	00b100b1 	.word	0x00b100b1
 8003ef4:	030000b1 	.word	0x030000b1
 8003ef8:	03000300 	.word	0x03000300
 8003efc:	03000300 	.word	0x03000300
 8003f00:	03000300 	.word	0x03000300
 8003f04:	03000300 	.word	0x03000300
 8003f08:	029d0300 	.word	0x029d0300
 8003f0c:	03000251 	.word	0x03000251
 8003f10:	03000251 	.word	0x03000251
 8003f14:	03000300 	.word	0x03000300
 8003f18:	024c0300 	.word	0x024c0300
 8003f1c:	03000300 	.word	0x03000300
 8003f20:	03000068 	.word	0x03000068
 8003f24:	03000300 	.word	0x03000300
 8003f28:	03000300 	.word	0x03000300
 8003f2c:	03000059 	.word	0x03000059
 8003f30:	02340300 	.word	0x02340300
 8003f34:	03000300 	.word	0x03000300
 8003f38:	03000300 	.word	0x03000300
 8003f3c:	03000300 	.word	0x03000300
 8003f40:	03000300 	.word	0x03000300
 8003f44:	03000300 	.word	0x03000300
 8003f48:	017401ae 	.word	0x017401ae
 8003f4c:	02510251 	.word	0x02510251
 8003f50:	016f0251 	.word	0x016f0251
 8003f54:	03000174 	.word	0x03000174
 8003f58:	01620300 	.word	0x01620300
 8003f5c:	014c0300 	.word	0x014c0300
 8003f60:	011c006a 	.word	0x011c006a
 8003f64:	03000117 	.word	0x03000117
 8003f68:	030000ed 	.word	0x030000ed
 8003f6c:	0300005b 	.word	0x0300005b
 8003f70:	00c50300 	.word	0x00c50300
 8003f74:	f04b 0b10 	orr.w	fp, fp, #16
 8003f78:	f01b 0f20 	tst.w	fp, #32
 8003f7c:	f000 8292 	beq.w	80044a4 <_vfprintf_r+0x6e4>
 8003f80:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8003f82:	3407      	adds	r4, #7
 8003f84:	f024 0307 	bic.w	r3, r4, #7
 8003f88:	e8f3 4502 	ldrd	r4, r5, [r3], #8
 8003f8c:	9309      	str	r3, [sp, #36]	; 0x24
 8003f8e:	2301      	movs	r3, #1
 8003f90:	e0c3      	b.n	800411a <_vfprintf_r+0x35a>
 8003f92:	f04b 0b10 	orr.w	fp, fp, #16
 8003f96:	f01b 0320 	ands.w	r3, fp, #32
 8003f9a:	f000 8279 	beq.w	8004490 <_vfprintf_r+0x6d0>
 8003f9e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8003fa0:	3407      	adds	r4, #7
 8003fa2:	f024 0307 	bic.w	r3, r4, #7
 8003fa6:	e8f3 4502 	ldrd	r4, r5, [r3], #8
 8003faa:	9309      	str	r3, [sp, #36]	; 0x24
 8003fac:	2300      	movs	r3, #0
 8003fae:	e0b4      	b.n	800411a <_vfprintf_r+0x35a>
 8003fb0:	9904      	ldr	r1, [sp, #16]
 8003fb2:	9808      	ldr	r0, [sp, #32]
 8003fb4:	f001 f9c4 	bl	8005340 <__swsetup_r>
 8003fb8:	2800      	cmp	r0, #0
 8003fba:	f041 8113 	bne.w	80051e4 <_vfprintf_r+0x1424>
 8003fbe:	9b04      	ldr	r3, [sp, #16]
 8003fc0:	899b      	ldrh	r3, [r3, #12]
 8003fc2:	f003 031a 	and.w	r3, r3, #26
 8003fc6:	2b0a      	cmp	r3, #10
 8003fc8:	f47f af2c 	bne.w	8003e24 <_vfprintf_r+0x64>
 8003fcc:	9b04      	ldr	r3, [sp, #16]
 8003fce:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8003fd2:	2b00      	cmp	r3, #0
 8003fd4:	f6ff af26 	blt.w	8003e24 <_vfprintf_r+0x64>
 8003fd8:	4623      	mov	r3, r4
 8003fda:	464a      	mov	r2, r9
 8003fdc:	9904      	ldr	r1, [sp, #16]
 8003fde:	9808      	ldr	r0, [sp, #32]
 8003fe0:	f001 f978 	bl	80052d4 <__sbprintf>
 8003fe4:	9005      	str	r0, [sp, #20]
 8003fe6:	e019      	b.n	800401c <_vfprintf_r+0x25c>
 8003fe8:	ebb4 0609 	subs.w	r6, r4, r9
 8003fec:	f43f af54 	beq.w	8003e98 <_vfprintf_r+0xd8>
 8003ff0:	e73c      	b.n	8003e6c <_vfprintf_r+0xac>
 8003ff2:	aa21      	add	r2, sp, #132	; 0x84
 8003ff4:	9904      	ldr	r1, [sp, #16]
 8003ff6:	9808      	ldr	r0, [sp, #32]
 8003ff8:	f003 ff0c 	bl	8007e14 <__sprint_r>
 8003ffc:	b948      	cbnz	r0, 8004012 <_vfprintf_r+0x252>
 8003ffe:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004002:	e742      	b.n	8003e8a <_vfprintf_r+0xca>
 8004004:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 8004006:	b123      	cbz	r3, 8004012 <_vfprintf_r+0x252>
 8004008:	9808      	ldr	r0, [sp, #32]
 800400a:	9904      	ldr	r1, [sp, #16]
 800400c:	aa21      	add	r2, sp, #132	; 0x84
 800400e:	f003 ff01 	bl	8007e14 <__sprint_r>
 8004012:	9b04      	ldr	r3, [sp, #16]
 8004014:	899b      	ldrh	r3, [r3, #12]
 8004016:	065a      	lsls	r2, r3, #25
 8004018:	f101 80e4 	bmi.w	80051e4 <_vfprintf_r+0x1424>
 800401c:	9805      	ldr	r0, [sp, #20]
 800401e:	b03f      	add	sp, #252	; 0xfc
 8004020:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004024:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
 8004028:	2000      	movs	r0, #0
 800402a:	f819 7b01 	ldrb.w	r7, [r9], #1
 800402e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8004032:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8004036:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
 800403a:	2b09      	cmp	r3, #9
 800403c:	d9f5      	bls.n	800402a <_vfprintf_r+0x26a>
 800403e:	9006      	str	r0, [sp, #24]
 8004040:	e738      	b.n	8003eb4 <_vfprintf_r+0xf4>
 8004042:	f04b 0b80 	orr.w	fp, fp, #128	; 0x80
 8004046:	f899 7000 	ldrb.w	r7, [r9]
 800404a:	e731      	b.n	8003eb0 <_vfprintf_r+0xf0>
 800404c:	2a00      	cmp	r2, #0
 800404e:	f041 80b1 	bne.w	80051b4 <_vfprintf_r+0x13f4>
 8004052:	4b11      	ldr	r3, [pc, #68]	; (8004098 <_vfprintf_r+0x2d8>)
 8004054:	9310      	str	r3, [sp, #64]	; 0x40
 8004056:	f01b 0f20 	tst.w	fp, #32
 800405a:	f000 816f 	beq.w	800433c <_vfprintf_r+0x57c>
 800405e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004060:	3407      	adds	r4, #7
 8004062:	f024 0307 	bic.w	r3, r4, #7
 8004066:	e8f3 4502 	ldrd	r4, r5, [r3], #8
 800406a:	9309      	str	r3, [sp, #36]	; 0x24
 800406c:	f01b 0f01 	tst.w	fp, #1
 8004070:	f000 8238 	beq.w	80044e4 <_vfprintf_r+0x724>
 8004074:	ea54 0305 	orrs.w	r3, r4, r5
 8004078:	f000 8234 	beq.w	80044e4 <_vfprintf_r+0x724>
 800407c:	2330      	movs	r3, #48	; 0x30
 800407e:	f88d 3068 	strb.w	r3, [sp, #104]	; 0x68
 8004082:	f88d 7069 	strb.w	r7, [sp, #105]	; 0x69
 8004086:	f04b 0b02 	orr.w	fp, fp, #2
 800408a:	2302      	movs	r3, #2
 800408c:	e045      	b.n	800411a <_vfprintf_r+0x35a>
 800408e:	bf00      	nop
	...
 8004098:	0800ae0c 	.word	0x0800ae0c
 800409c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800409e:	f854 3b04 	ldr.w	r3, [r4], #4
 80040a2:	930a      	str	r3, [sp, #40]	; 0x28
 80040a4:	2500      	movs	r5, #0
 80040a6:	f88d 5067 	strb.w	r5, [sp, #103]	; 0x67
 80040aa:	2b00      	cmp	r3, #0
 80040ac:	f000 867f 	beq.w	8004dae <_vfprintf_r+0xfee>
 80040b0:	1c71      	adds	r1, r6, #1
 80040b2:	f000 8753 	beq.w	8004f5c <_vfprintf_r+0x119c>
 80040b6:	4632      	mov	r2, r6
 80040b8:	4629      	mov	r1, r5
 80040ba:	980a      	ldr	r0, [sp, #40]	; 0x28
 80040bc:	f003 f868 	bl	8007190 <memchr>
 80040c0:	2800      	cmp	r0, #0
 80040c2:	f001 8059 	beq.w	8005178 <_vfprintf_r+0x13b8>
 80040c6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80040c8:	1ac3      	subs	r3, r0, r3
 80040ca:	9307      	str	r3, [sp, #28]
 80040cc:	462e      	mov	r6, r5
 80040ce:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80040d2:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
 80040d6:	9409      	str	r4, [sp, #36]	; 0x24
 80040d8:	f8cd b008 	str.w	fp, [sp, #8]
 80040dc:	9303      	str	r3, [sp, #12]
 80040de:	960b      	str	r6, [sp, #44]	; 0x2c
 80040e0:	f1b8 0f00 	cmp.w	r8, #0
 80040e4:	f000 80ad 	beq.w	8004242 <_vfprintf_r+0x482>
 80040e8:	9b03      	ldr	r3, [sp, #12]
 80040ea:	3301      	adds	r3, #1
 80040ec:	9303      	str	r3, [sp, #12]
 80040ee:	e0a8      	b.n	8004242 <_vfprintf_r+0x482>
 80040f0:	f04b 0b20 	orr.w	fp, fp, #32
 80040f4:	f899 7000 	ldrb.w	r7, [r9]
 80040f8:	e6da      	b.n	8003eb0 <_vfprintf_r+0xf0>
 80040fa:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80040fc:	f854 3b04 	ldr.w	r3, [r4], #4
 8004100:	9409      	str	r4, [sp, #36]	; 0x24
 8004102:	f647 0230 	movw	r2, #30768	; 0x7830
 8004106:	461c      	mov	r4, r3
 8004108:	4bb7      	ldr	r3, [pc, #732]	; (80043e8 <_vfprintf_r+0x628>)
 800410a:	9310      	str	r3, [sp, #64]	; 0x40
 800410c:	f8ad 2068 	strh.w	r2, [sp, #104]	; 0x68
 8004110:	f04b 0b02 	orr.w	fp, fp, #2
 8004114:	2500      	movs	r5, #0
 8004116:	2302      	movs	r3, #2
 8004118:	2778      	movs	r7, #120	; 0x78
 800411a:	f04f 0800 	mov.w	r8, #0
 800411e:	f88d 8067 	strb.w	r8, [sp, #103]	; 0x67
 8004122:	1c72      	adds	r2, r6, #1
 8004124:	f000 81e2 	beq.w	80044ec <_vfprintf_r+0x72c>
 8004128:	f02b 0280 	bic.w	r2, fp, #128	; 0x80
 800412c:	9202      	str	r2, [sp, #8]
 800412e:	ea54 0205 	orrs.w	r2, r4, r5
 8004132:	f040 81d9 	bne.w	80044e8 <_vfprintf_r+0x728>
 8004136:	2e00      	cmp	r6, #0
 8004138:	f040 8412 	bne.w	8004960 <_vfprintf_r+0xba0>
 800413c:	2b00      	cmp	r3, #0
 800413e:	f040 84dc 	bne.w	8004afa <_vfprintf_r+0xd3a>
 8004142:	f01b 0301 	ands.w	r3, fp, #1
 8004146:	9307      	str	r3, [sp, #28]
 8004148:	f000 8549 	beq.w	8004bde <_vfprintf_r+0xe1e>
 800414c:	2330      	movs	r3, #48	; 0x30
 800414e:	f88d 30b7 	strb.w	r3, [sp, #183]	; 0xb7
 8004152:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
 8004156:	930a      	str	r3, [sp, #40]	; 0x28
 8004158:	e059      	b.n	800420e <_vfprintf_r+0x44e>
 800415a:	2a00      	cmp	r2, #0
 800415c:	f041 8032 	bne.w	80051c4 <_vfprintf_r+0x1404>
 8004160:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004162:	f01b 0f20 	tst.w	fp, #32
 8004166:	f852 3b04 	ldr.w	r3, [r2], #4
 800416a:	9209      	str	r2, [sp, #36]	; 0x24
 800416c:	f040 853b 	bne.w	8004be6 <_vfprintf_r+0xe26>
 8004170:	f01b 0f10 	tst.w	fp, #16
 8004174:	f040 8654 	bne.w	8004e20 <_vfprintf_r+0x1060>
 8004178:	f01b 0f40 	tst.w	fp, #64	; 0x40
 800417c:	f000 8650 	beq.w	8004e20 <_vfprintf_r+0x1060>
 8004180:	9a05      	ldr	r2, [sp, #20]
 8004182:	801a      	strh	r2, [r3, #0]
 8004184:	e65c      	b.n	8003e40 <_vfprintf_r+0x80>
 8004186:	f899 7000 	ldrb.w	r7, [r9]
 800418a:	2f6c      	cmp	r7, #108	; 0x6c
 800418c:	bf03      	ittte	eq
 800418e:	f899 7001 	ldrbeq.w	r7, [r9, #1]
 8004192:	f04b 0b20 	orreq.w	fp, fp, #32
 8004196:	f109 0901 	addeq.w	r9, r9, #1
 800419a:	f04b 0b10 	orrne.w	fp, fp, #16
 800419e:	e687      	b.n	8003eb0 <_vfprintf_r+0xf0>
 80041a0:	f04b 0b40 	orr.w	fp, fp, #64	; 0x40
 80041a4:	f899 7000 	ldrb.w	r7, [r9]
 80041a8:	e682      	b.n	8003eb0 <_vfprintf_r+0xf0>
 80041aa:	2a00      	cmp	r2, #0
 80041ac:	f041 8012 	bne.w	80051d4 <_vfprintf_r+0x1414>
 80041b0:	f01b 0f20 	tst.w	fp, #32
 80041b4:	f000 812b 	beq.w	800440e <_vfprintf_r+0x64e>
 80041b8:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80041ba:	3407      	adds	r4, #7
 80041bc:	f024 0307 	bic.w	r3, r4, #7
 80041c0:	4619      	mov	r1, r3
 80041c2:	e8f1 2302 	ldrd	r2, r3, [r1], #8
 80041c6:	9109      	str	r1, [sp, #36]	; 0x24
 80041c8:	4614      	mov	r4, r2
 80041ca:	461d      	mov	r5, r3
 80041cc:	2a00      	cmp	r2, #0
 80041ce:	f173 0300 	sbcs.w	r3, r3, #0
 80041d2:	f2c0 84f1 	blt.w	8004bb8 <_vfprintf_r+0xdf8>
 80041d6:	1c73      	adds	r3, r6, #1
 80041d8:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
 80041dc:	d008      	beq.n	80041f0 <_vfprintf_r+0x430>
 80041de:	f02b 0380 	bic.w	r3, fp, #128	; 0x80
 80041e2:	9302      	str	r3, [sp, #8]
 80041e4:	ea54 0305 	orrs.w	r3, r4, r5
 80041e8:	f000 8484 	beq.w	8004af4 <_vfprintf_r+0xd34>
 80041ec:	f8dd b008 	ldr.w	fp, [sp, #8]
 80041f0:	2d00      	cmp	r5, #0
 80041f2:	bf08      	it	eq
 80041f4:	2c0a      	cmpeq	r4, #10
 80041f6:	f080 8454 	bcs.w	8004aa2 <_vfprintf_r+0xce2>
 80041fa:	2301      	movs	r3, #1
 80041fc:	3430      	adds	r4, #48	; 0x30
 80041fe:	9307      	str	r3, [sp, #28]
 8004200:	f10d 03b7 	add.w	r3, sp, #183	; 0xb7
 8004204:	f88d 40b7 	strb.w	r4, [sp, #183]	; 0xb7
 8004208:	f8cd b008 	str.w	fp, [sp, #8]
 800420c:	930a      	str	r3, [sp, #40]	; 0x28
 800420e:	9b07      	ldr	r3, [sp, #28]
 8004210:	42b3      	cmp	r3, r6
 8004212:	bfb8      	it	lt
 8004214:	4633      	movlt	r3, r6
 8004216:	9303      	str	r3, [sp, #12]
 8004218:	2300      	movs	r3, #0
 800421a:	930b      	str	r3, [sp, #44]	; 0x2c
 800421c:	e760      	b.n	80040e0 <_vfprintf_r+0x320>
 800421e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004220:	2300      	movs	r3, #0
 8004222:	f854 2b04 	ldr.w	r2, [r4], #4
 8004226:	f88d 2090 	strb.w	r2, [sp, #144]	; 0x90
 800422a:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 800422e:	2201      	movs	r2, #1
 8004230:	ab24      	add	r3, sp, #144	; 0x90
 8004232:	9203      	str	r2, [sp, #12]
 8004234:	9409      	str	r4, [sp, #36]	; 0x24
 8004236:	9207      	str	r2, [sp, #28]
 8004238:	930a      	str	r3, [sp, #40]	; 0x28
 800423a:	2600      	movs	r6, #0
 800423c:	f8cd b008 	str.w	fp, [sp, #8]
 8004240:	960b      	str	r6, [sp, #44]	; 0x2c
 8004242:	9b02      	ldr	r3, [sp, #8]
 8004244:	f013 0302 	ands.w	r3, r3, #2
 8004248:	d002      	beq.n	8004250 <_vfprintf_r+0x490>
 800424a:	9a03      	ldr	r2, [sp, #12]
 800424c:	3202      	adds	r2, #2
 800424e:	9203      	str	r2, [sp, #12]
 8004250:	9a02      	ldr	r2, [sp, #8]
 8004252:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004254:	f012 0b84 	ands.w	fp, r2, #132	; 0x84
 8004258:	d105      	bne.n	8004266 <_vfprintf_r+0x4a6>
 800425a:	9a06      	ldr	r2, [sp, #24]
 800425c:	9903      	ldr	r1, [sp, #12]
 800425e:	1a55      	subs	r5, r2, r1
 8004260:	2d00      	cmp	r5, #0
 8004262:	f300 82e8 	bgt.w	8004836 <_vfprintf_r+0xa76>
 8004266:	f89d 2067 	ldrb.w	r2, [sp, #103]	; 0x67
 800426a:	b172      	cbz	r2, 800428a <_vfprintf_r+0x4ca>
 800426c:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800426e:	3201      	adds	r2, #1
 8004270:	3401      	adds	r4, #1
 8004272:	f10d 0067 	add.w	r0, sp, #103	; 0x67
 8004276:	2101      	movs	r1, #1
 8004278:	2a07      	cmp	r2, #7
 800427a:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800427e:	e9ca 0100 	strd	r0, r1, [sl]
 8004282:	f300 831a 	bgt.w	80048ba <_vfprintf_r+0xafa>
 8004286:	f10a 0a08 	add.w	sl, sl, #8
 800428a:	b16b      	cbz	r3, 80042a8 <_vfprintf_r+0x4e8>
 800428c:	9b22      	ldr	r3, [sp, #136]	; 0x88
 800428e:	3301      	adds	r3, #1
 8004290:	3402      	adds	r4, #2
 8004292:	a91a      	add	r1, sp, #104	; 0x68
 8004294:	2202      	movs	r2, #2
 8004296:	2b07      	cmp	r3, #7
 8004298:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 800429c:	e9ca 1200 	strd	r1, r2, [sl]
 80042a0:	f300 8319 	bgt.w	80048d6 <_vfprintf_r+0xb16>
 80042a4:	f10a 0a08 	add.w	sl, sl, #8
 80042a8:	f1bb 0f80 	cmp.w	fp, #128	; 0x80
 80042ac:	f000 81a8 	beq.w	8004600 <_vfprintf_r+0x840>
 80042b0:	9b07      	ldr	r3, [sp, #28]
 80042b2:	1af6      	subs	r6, r6, r3
 80042b4:	2e00      	cmp	r6, #0
 80042b6:	f300 81ec 	bgt.w	8004692 <_vfprintf_r+0x8d2>
 80042ba:	9b02      	ldr	r3, [sp, #8]
 80042bc:	05db      	lsls	r3, r3, #23
 80042be:	f100 8142 	bmi.w	8004546 <_vfprintf_r+0x786>
 80042c2:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80042c4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80042c6:	f8ca 2000 	str.w	r2, [sl]
 80042ca:	9a07      	ldr	r2, [sp, #28]
 80042cc:	f8ca 2004 	str.w	r2, [sl, #4]
 80042d0:	3301      	adds	r3, #1
 80042d2:	4414      	add	r4, r2
 80042d4:	2b07      	cmp	r3, #7
 80042d6:	9423      	str	r4, [sp, #140]	; 0x8c
 80042d8:	9322      	str	r3, [sp, #136]	; 0x88
 80042da:	f300 824e 	bgt.w	800477a <_vfprintf_r+0x9ba>
 80042de:	f10a 0a08 	add.w	sl, sl, #8
 80042e2:	9b02      	ldr	r3, [sp, #8]
 80042e4:	0759      	lsls	r1, r3, #29
 80042e6:	d505      	bpl.n	80042f4 <_vfprintf_r+0x534>
 80042e8:	9b06      	ldr	r3, [sp, #24]
 80042ea:	9a03      	ldr	r2, [sp, #12]
 80042ec:	1a9d      	subs	r5, r3, r2
 80042ee:	2d00      	cmp	r5, #0
 80042f0:	f300 82fd 	bgt.w	80048ee <_vfprintf_r+0xb2e>
 80042f4:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80042f8:	9903      	ldr	r1, [sp, #12]
 80042fa:	428a      	cmp	r2, r1
 80042fc:	bfac      	ite	ge
 80042fe:	189b      	addge	r3, r3, r2
 8004300:	185b      	addlt	r3, r3, r1
 8004302:	9305      	str	r3, [sp, #20]
 8004304:	2c00      	cmp	r4, #0
 8004306:	f040 81fe 	bne.w	8004706 <_vfprintf_r+0x946>
 800430a:	2300      	movs	r3, #0
 800430c:	9322      	str	r3, [sp, #136]	; 0x88
 800430e:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004312:	e595      	b.n	8003e40 <_vfprintf_r+0x80>
 8004314:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004316:	f899 7000 	ldrb.w	r7, [r9]
 800431a:	f853 0b04 	ldr.w	r0, [r3], #4
 800431e:	9006      	str	r0, [sp, #24]
 8004320:	2800      	cmp	r0, #0
 8004322:	f2c0 8516 	blt.w	8004d52 <_vfprintf_r+0xf92>
 8004326:	9309      	str	r3, [sp, #36]	; 0x24
 8004328:	e5c2      	b.n	8003eb0 <_vfprintf_r+0xf0>
 800432a:	2a00      	cmp	r2, #0
 800432c:	f040 8756 	bne.w	80051dc <_vfprintf_r+0x141c>
 8004330:	4b2e      	ldr	r3, [pc, #184]	; (80043ec <_vfprintf_r+0x62c>)
 8004332:	9310      	str	r3, [sp, #64]	; 0x40
 8004334:	f01b 0f20 	tst.w	fp, #32
 8004338:	f47f ae91 	bne.w	800405e <_vfprintf_r+0x29e>
 800433c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800433e:	f01b 0f10 	tst.w	fp, #16
 8004342:	f853 4b04 	ldr.w	r4, [r3], #4
 8004346:	9309      	str	r3, [sp, #36]	; 0x24
 8004348:	f040 842b 	bne.w	8004ba2 <_vfprintf_r+0xde2>
 800434c:	f01b 0f40 	tst.w	fp, #64	; 0x40
 8004350:	f000 8427 	beq.w	8004ba2 <_vfprintf_r+0xde2>
 8004354:	b2a4      	uxth	r4, r4
 8004356:	2500      	movs	r5, #0
 8004358:	e688      	b.n	800406c <_vfprintf_r+0x2ac>
 800435a:	f04b 0b08 	orr.w	fp, fp, #8
 800435e:	f899 7000 	ldrb.w	r7, [r9]
 8004362:	e5a5      	b.n	8003eb0 <_vfprintf_r+0xf0>
 8004364:	2a00      	cmp	r2, #0
 8004366:	f040 8729 	bne.w	80051bc <_vfprintf_r+0x13fc>
 800436a:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800436c:	3407      	adds	r4, #7
 800436e:	f024 0307 	bic.w	r3, r4, #7
 8004372:	ecb3 7b02 	vldmia	r3!, {d7}
 8004376:	ec55 4b17 	vmov	r4, r5, d7
 800437a:	9309      	str	r3, [sp, #36]	; 0x24
 800437c:	f025 4300 	bic.w	r3, r5, #2147483648	; 0x80000000
 8004380:	9315      	str	r3, [sp, #84]	; 0x54
 8004382:	ed8d 7a14 	vstr	s14, [sp, #80]	; 0x50
 8004386:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
 800438a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800438e:	4b18      	ldr	r3, [pc, #96]	; (80043f0 <_vfprintf_r+0x630>)
 8004390:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 8004394:	f005 ff0e 	bl	800a1b4 <__aeabi_dcmpun>
 8004398:	2800      	cmp	r0, #0
 800439a:	f040 842b 	bne.w	8004bf4 <_vfprintf_r+0xe34>
 800439e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80043a2:	4b13      	ldr	r3, [pc, #76]	; (80043f0 <_vfprintf_r+0x630>)
 80043a4:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
 80043a8:	f005 fee6 	bl	800a178 <__aeabi_dcmple>
 80043ac:	2800      	cmp	r0, #0
 80043ae:	f040 8421 	bne.w	8004bf4 <_vfprintf_r+0xe34>
 80043b2:	2200      	movs	r2, #0
 80043b4:	2300      	movs	r3, #0
 80043b6:	4620      	mov	r0, r4
 80043b8:	4629      	mov	r1, r5
 80043ba:	f005 fed3 	bl	800a164 <__aeabi_dcmplt>
 80043be:	2800      	cmp	r0, #0
 80043c0:	f040 863e 	bne.w	8005040 <_vfprintf_r+0x1280>
 80043c4:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
 80043c8:	4a0a      	ldr	r2, [pc, #40]	; (80043f4 <_vfprintf_r+0x634>)
 80043ca:	4b0b      	ldr	r3, [pc, #44]	; (80043f8 <_vfprintf_r+0x638>)
 80043cc:	2103      	movs	r1, #3
 80043ce:	2600      	movs	r6, #0
 80043d0:	f02b 0080 	bic.w	r0, fp, #128	; 0x80
 80043d4:	2f47      	cmp	r7, #71	; 0x47
 80043d6:	bfc8      	it	gt
 80043d8:	461a      	movgt	r2, r3
 80043da:	9103      	str	r1, [sp, #12]
 80043dc:	9002      	str	r0, [sp, #8]
 80043de:	920a      	str	r2, [sp, #40]	; 0x28
 80043e0:	9107      	str	r1, [sp, #28]
 80043e2:	960b      	str	r6, [sp, #44]	; 0x2c
 80043e4:	e67c      	b.n	80040e0 <_vfprintf_r+0x320>
 80043e6:	bf00      	nop
 80043e8:	0800ae0c 	.word	0x0800ae0c
 80043ec:	0800adf8 	.word	0x0800adf8
 80043f0:	7fefffff 	.word	0x7fefffff
 80043f4:	0800ade8 	.word	0x0800ade8
 80043f8:	0800adec 	.word	0x0800adec
 80043fc:	2a00      	cmp	r2, #0
 80043fe:	f040 86e5 	bne.w	80051cc <_vfprintf_r+0x140c>
 8004402:	f04b 0b10 	orr.w	fp, fp, #16
 8004406:	f01b 0f20 	tst.w	fp, #32
 800440a:	f47f aed5 	bne.w	80041b8 <_vfprintf_r+0x3f8>
 800440e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004410:	f01b 0f10 	tst.w	fp, #16
 8004414:	f853 4b04 	ldr.w	r4, [r3], #4
 8004418:	9309      	str	r3, [sp, #36]	; 0x24
 800441a:	f040 83c5 	bne.w	8004ba8 <_vfprintf_r+0xde8>
 800441e:	f01b 0f40 	tst.w	fp, #64	; 0x40
 8004422:	f000 83c1 	beq.w	8004ba8 <_vfprintf_r+0xde8>
 8004426:	b224      	sxth	r4, r4
 8004428:	17e5      	asrs	r5, r4, #31
 800442a:	4622      	mov	r2, r4
 800442c:	462b      	mov	r3, r5
 800442e:	e6cd      	b.n	80041cc <_vfprintf_r+0x40c>
 8004430:	f899 7000 	ldrb.w	r7, [r9]
 8004434:	f04b 0b04 	orr.w	fp, fp, #4
 8004438:	e53a      	b.n	8003eb0 <_vfprintf_r+0xf0>
 800443a:	f899 7000 	ldrb.w	r7, [r9]
 800443e:	2201      	movs	r2, #1
 8004440:	212b      	movs	r1, #43	; 0x2b
 8004442:	e535      	b.n	8003eb0 <_vfprintf_r+0xf0>
 8004444:	4648      	mov	r0, r9
 8004446:	f810 7b01 	ldrb.w	r7, [r0], #1
 800444a:	2f2a      	cmp	r7, #42	; 0x2a
 800444c:	f000 8723 	beq.w	8005296 <_vfprintf_r+0x14d6>
 8004450:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
 8004454:	2b09      	cmp	r3, #9
 8004456:	4681      	mov	r9, r0
 8004458:	f04f 0600 	mov.w	r6, #0
 800445c:	f63f ad2a 	bhi.w	8003eb4 <_vfprintf_r+0xf4>
 8004460:	f819 7b01 	ldrb.w	r7, [r9], #1
 8004464:	eb06 0686 	add.w	r6, r6, r6, lsl #2
 8004468:	eb03 0646 	add.w	r6, r3, r6, lsl #1
 800446c:	f1a7 0330 	sub.w	r3, r7, #48	; 0x30
 8004470:	2b09      	cmp	r3, #9
 8004472:	d9f5      	bls.n	8004460 <_vfprintf_r+0x6a0>
 8004474:	e51e      	b.n	8003eb4 <_vfprintf_r+0xf4>
 8004476:	f899 7000 	ldrb.w	r7, [r9]
 800447a:	2900      	cmp	r1, #0
 800447c:	f47f ad18 	bne.w	8003eb0 <_vfprintf_r+0xf0>
 8004480:	2201      	movs	r2, #1
 8004482:	2120      	movs	r1, #32
 8004484:	e514      	b.n	8003eb0 <_vfprintf_r+0xf0>
 8004486:	f04b 0b01 	orr.w	fp, fp, #1
 800448a:	f899 7000 	ldrb.w	r7, [r9]
 800448e:	e50f      	b.n	8003eb0 <_vfprintf_r+0xf0>
 8004490:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004492:	f852 4b04 	ldr.w	r4, [r2], #4
 8004496:	9209      	str	r2, [sp, #36]	; 0x24
 8004498:	f01b 0210 	ands.w	r2, fp, #16
 800449c:	f000 8451 	beq.w	8004d42 <_vfprintf_r+0xf82>
 80044a0:	2500      	movs	r5, #0
 80044a2:	e63a      	b.n	800411a <_vfprintf_r+0x35a>
 80044a4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044a6:	f01b 0f10 	tst.w	fp, #16
 80044aa:	f853 4b04 	ldr.w	r4, [r3], #4
 80044ae:	9309      	str	r3, [sp, #36]	; 0x24
 80044b0:	f000 843f 	beq.w	8004d32 <_vfprintf_r+0xf72>
 80044b4:	2500      	movs	r5, #0
 80044b6:	2301      	movs	r3, #1
 80044b8:	e62f      	b.n	800411a <_vfprintf_r+0x35a>
 80044ba:	9808      	ldr	r0, [sp, #32]
 80044bc:	f002 f974 	bl	80067a8 <__sinit>
 80044c0:	e494      	b.n	8003dec <_vfprintf_r+0x2c>
 80044c2:	2a00      	cmp	r2, #0
 80044c4:	f040 85d6 	bne.w	8005074 <_vfprintf_r+0x12b4>
 80044c8:	2f00      	cmp	r7, #0
 80044ca:	f43f ad9b 	beq.w	8004004 <_vfprintf_r+0x244>
 80044ce:	2300      	movs	r3, #0
 80044d0:	2201      	movs	r2, #1
 80044d2:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 80044d6:	ab24      	add	r3, sp, #144	; 0x90
 80044d8:	9203      	str	r2, [sp, #12]
 80044da:	f88d 7090 	strb.w	r7, [sp, #144]	; 0x90
 80044de:	9207      	str	r2, [sp, #28]
 80044e0:	930a      	str	r3, [sp, #40]	; 0x28
 80044e2:	e6aa      	b.n	800423a <_vfprintf_r+0x47a>
 80044e4:	2302      	movs	r3, #2
 80044e6:	e618      	b.n	800411a <_vfprintf_r+0x35a>
 80044e8:	f8dd b008 	ldr.w	fp, [sp, #8]
 80044ec:	2b01      	cmp	r3, #1
 80044ee:	f43f ae7f 	beq.w	80041f0 <_vfprintf_r+0x430>
 80044f2:	2b02      	cmp	r3, #2
 80044f4:	f000 823c 	beq.w	8004970 <_vfprintf_r+0xbb0>
 80044f8:	a92e      	add	r1, sp, #184	; 0xb8
 80044fa:	e000      	b.n	80044fe <_vfprintf_r+0x73e>
 80044fc:	4611      	mov	r1, r2
 80044fe:	08e2      	lsrs	r2, r4, #3
 8004500:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8004504:	08e8      	lsrs	r0, r5, #3
 8004506:	f004 0307 	and.w	r3, r4, #7
 800450a:	4605      	mov	r5, r0
 800450c:	4614      	mov	r4, r2
 800450e:	3330      	adds	r3, #48	; 0x30
 8004510:	ea54 0005 	orrs.w	r0, r4, r5
 8004514:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004518:	f101 32ff 	add.w	r2, r1, #4294967295	; 0xffffffff
 800451c:	d1ee      	bne.n	80044fc <_vfprintf_r+0x73c>
 800451e:	f01b 0f01 	tst.w	fp, #1
 8004522:	920a      	str	r2, [sp, #40]	; 0x28
 8004524:	f000 82df 	beq.w	8004ae6 <_vfprintf_r+0xd26>
 8004528:	2b30      	cmp	r3, #48	; 0x30
 800452a:	f000 844b 	beq.w	8004dc4 <_vfprintf_r+0x1004>
 800452e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004530:	f8cd b008 	str.w	fp, [sp, #8]
 8004534:	2330      	movs	r3, #48	; 0x30
 8004536:	3902      	subs	r1, #2
 8004538:	f802 3c01 	strb.w	r3, [r2, #-1]
 800453c:	ab2e      	add	r3, sp, #184	; 0xb8
 800453e:	1a5b      	subs	r3, r3, r1
 8004540:	9307      	str	r3, [sp, #28]
 8004542:	910a      	str	r1, [sp, #40]	; 0x28
 8004544:	e663      	b.n	800420e <_vfprintf_r+0x44e>
 8004546:	2f65      	cmp	r7, #101	; 0x65
 8004548:	f340 8123 	ble.w	8004792 <_vfprintf_r+0x9d2>
 800454c:	2200      	movs	r2, #0
 800454e:	2300      	movs	r3, #0
 8004550:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004554:	f005 fdfc 	bl	800a150 <__aeabi_dcmpeq>
 8004558:	2800      	cmp	r0, #0
 800455a:	f000 8222 	beq.w	80049a2 <_vfprintf_r+0xbe2>
 800455e:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8004560:	4abc      	ldr	r2, [pc, #752]	; (8004854 <_vfprintf_r+0xa94>)
 8004562:	f8ca 2000 	str.w	r2, [sl]
 8004566:	3301      	adds	r3, #1
 8004568:	3401      	adds	r4, #1
 800456a:	2201      	movs	r2, #1
 800456c:	2b07      	cmp	r3, #7
 800456e:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8004572:	f8ca 2004 	str.w	r2, [sl, #4]
 8004576:	f300 849d 	bgt.w	8004eb4 <_vfprintf_r+0x10f4>
 800457a:	f10a 0a08 	add.w	sl, sl, #8
 800457e:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004580:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004582:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004584:	4293      	cmp	r3, r2
 8004586:	f280 8324 	bge.w	8004bd2 <_vfprintf_r+0xe12>
 800458a:	9b22      	ldr	r3, [sp, #136]	; 0x88
 800458c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800458e:	f8ca 2000 	str.w	r2, [sl]
 8004592:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004594:	f8ca 2004 	str.w	r2, [sl, #4]
 8004598:	3301      	adds	r3, #1
 800459a:	4414      	add	r4, r2
 800459c:	2b07      	cmp	r3, #7
 800459e:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 80045a2:	f300 83f7 	bgt.w	8004d94 <_vfprintf_r+0xfd4>
 80045a6:	f10a 0a08 	add.w	sl, sl, #8
 80045aa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80045ac:	1e5d      	subs	r5, r3, #1
 80045ae:	2d00      	cmp	r5, #0
 80045b0:	f77f ae97 	ble.w	80042e2 <_vfprintf_r+0x522>
 80045b4:	2d10      	cmp	r5, #16
 80045b6:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80045b8:	f8df b29c 	ldr.w	fp, [pc, #668]	; 8004858 <_vfprintf_r+0xa98>
 80045bc:	f340 8470 	ble.w	8004ea0 <_vfprintf_r+0x10e0>
 80045c0:	2610      	movs	r6, #16
 80045c2:	9f08      	ldr	r7, [sp, #32]
 80045c4:	f8dd 8010 	ldr.w	r8, [sp, #16]
 80045c8:	e005      	b.n	80045d6 <_vfprintf_r+0x816>
 80045ca:	f10a 0a08 	add.w	sl, sl, #8
 80045ce:	3d10      	subs	r5, #16
 80045d0:	2d10      	cmp	r5, #16
 80045d2:	f340 8465 	ble.w	8004ea0 <_vfprintf_r+0x10e0>
 80045d6:	3201      	adds	r2, #1
 80045d8:	3410      	adds	r4, #16
 80045da:	2a07      	cmp	r2, #7
 80045dc:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80045e0:	e9ca b600 	strd	fp, r6, [sl]
 80045e4:	ddf1      	ble.n	80045ca <_vfprintf_r+0x80a>
 80045e6:	aa21      	add	r2, sp, #132	; 0x84
 80045e8:	4641      	mov	r1, r8
 80045ea:	4638      	mov	r0, r7
 80045ec:	f003 fc12 	bl	8007e14 <__sprint_r>
 80045f0:	2800      	cmp	r0, #0
 80045f2:	f47f ad0e 	bne.w	8004012 <_vfprintf_r+0x252>
 80045f6:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 80045fa:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 80045fe:	e7e6      	b.n	80045ce <_vfprintf_r+0x80e>
 8004600:	9b06      	ldr	r3, [sp, #24]
 8004602:	9a03      	ldr	r2, [sp, #12]
 8004604:	1a9d      	subs	r5, r3, r2
 8004606:	2d00      	cmp	r5, #0
 8004608:	f77f ae52 	ble.w	80042b0 <_vfprintf_r+0x4f0>
 800460c:	2d10      	cmp	r5, #16
 800460e:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004610:	f8df b244 	ldr.w	fp, [pc, #580]	; 8004858 <_vfprintf_r+0xa98>
 8004614:	dd2d      	ble.n	8004672 <_vfprintf_r+0x8b2>
 8004616:	4658      	mov	r0, fp
 8004618:	4653      	mov	r3, sl
 800461a:	4621      	mov	r1, r4
 800461c:	46ca      	mov	sl, r9
 800461e:	46bb      	mov	fp, r7
 8004620:	46b1      	mov	r9, r6
 8004622:	f04f 0810 	mov.w	r8, #16
 8004626:	9c08      	ldr	r4, [sp, #32]
 8004628:	9e04      	ldr	r6, [sp, #16]
 800462a:	4607      	mov	r7, r0
 800462c:	e004      	b.n	8004638 <_vfprintf_r+0x878>
 800462e:	3d10      	subs	r5, #16
 8004630:	2d10      	cmp	r5, #16
 8004632:	f103 0308 	add.w	r3, r3, #8
 8004636:	dd15      	ble.n	8004664 <_vfprintf_r+0x8a4>
 8004638:	3201      	adds	r2, #1
 800463a:	3110      	adds	r1, #16
 800463c:	2a07      	cmp	r2, #7
 800463e:	e9cd 2122 	strd	r2, r1, [sp, #136]	; 0x88
 8004642:	e9c3 7800 	strd	r7, r8, [r3]
 8004646:	ddf2      	ble.n	800462e <_vfprintf_r+0x86e>
 8004648:	aa21      	add	r2, sp, #132	; 0x84
 800464a:	4631      	mov	r1, r6
 800464c:	4620      	mov	r0, r4
 800464e:	f003 fbe1 	bl	8007e14 <__sprint_r>
 8004652:	2800      	cmp	r0, #0
 8004654:	f47f acdd 	bne.w	8004012 <_vfprintf_r+0x252>
 8004658:	3d10      	subs	r5, #16
 800465a:	2d10      	cmp	r5, #16
 800465c:	e9dd 2122 	ldrd	r2, r1, [sp, #136]	; 0x88
 8004660:	ab2e      	add	r3, sp, #184	; 0xb8
 8004662:	dce9      	bgt.n	8004638 <_vfprintf_r+0x878>
 8004664:	464e      	mov	r6, r9
 8004666:	46d1      	mov	r9, sl
 8004668:	469a      	mov	sl, r3
 800466a:	463b      	mov	r3, r7
 800466c:	460c      	mov	r4, r1
 800466e:	465f      	mov	r7, fp
 8004670:	469b      	mov	fp, r3
 8004672:	3201      	adds	r2, #1
 8004674:	442c      	add	r4, r5
 8004676:	2a07      	cmp	r2, #7
 8004678:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800467c:	e9ca b500 	strd	fp, r5, [sl]
 8004680:	f300 8424 	bgt.w	8004ecc <_vfprintf_r+0x110c>
 8004684:	9b07      	ldr	r3, [sp, #28]
 8004686:	1af6      	subs	r6, r6, r3
 8004688:	2e00      	cmp	r6, #0
 800468a:	f10a 0a08 	add.w	sl, sl, #8
 800468e:	f77f ae14 	ble.w	80042ba <_vfprintf_r+0x4fa>
 8004692:	2e10      	cmp	r6, #16
 8004694:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004696:	f8df b1c0 	ldr.w	fp, [pc, #448]	; 8004858 <_vfprintf_r+0xa98>
 800469a:	dd28      	ble.n	80046ee <_vfprintf_r+0x92e>
 800469c:	4659      	mov	r1, fp
 800469e:	4623      	mov	r3, r4
 80046a0:	46bb      	mov	fp, r7
 80046a2:	2510      	movs	r5, #16
 80046a4:	f8dd 8020 	ldr.w	r8, [sp, #32]
 80046a8:	9c04      	ldr	r4, [sp, #16]
 80046aa:	460f      	mov	r7, r1
 80046ac:	e004      	b.n	80046b8 <_vfprintf_r+0x8f8>
 80046ae:	3e10      	subs	r6, #16
 80046b0:	2e10      	cmp	r6, #16
 80046b2:	f10a 0a08 	add.w	sl, sl, #8
 80046b6:	dd16      	ble.n	80046e6 <_vfprintf_r+0x926>
 80046b8:	3201      	adds	r2, #1
 80046ba:	3310      	adds	r3, #16
 80046bc:	2a07      	cmp	r2, #7
 80046be:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 80046c2:	e9ca 7500 	strd	r7, r5, [sl]
 80046c6:	ddf2      	ble.n	80046ae <_vfprintf_r+0x8ee>
 80046c8:	aa21      	add	r2, sp, #132	; 0x84
 80046ca:	4621      	mov	r1, r4
 80046cc:	4640      	mov	r0, r8
 80046ce:	f003 fba1 	bl	8007e14 <__sprint_r>
 80046d2:	2800      	cmp	r0, #0
 80046d4:	f47f ac9d 	bne.w	8004012 <_vfprintf_r+0x252>
 80046d8:	3e10      	subs	r6, #16
 80046da:	2e10      	cmp	r6, #16
 80046dc:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 80046e0:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 80046e4:	dce8      	bgt.n	80046b8 <_vfprintf_r+0x8f8>
 80046e6:	461c      	mov	r4, r3
 80046e8:	463b      	mov	r3, r7
 80046ea:	465f      	mov	r7, fp
 80046ec:	469b      	mov	fp, r3
 80046ee:	3201      	adds	r2, #1
 80046f0:	4434      	add	r4, r6
 80046f2:	2a07      	cmp	r2, #7
 80046f4:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80046f8:	e9ca b600 	strd	fp, r6, [sl]
 80046fc:	f300 8244 	bgt.w	8004b88 <_vfprintf_r+0xdc8>
 8004700:	f10a 0a08 	add.w	sl, sl, #8
 8004704:	e5d9      	b.n	80042ba <_vfprintf_r+0x4fa>
 8004706:	aa21      	add	r2, sp, #132	; 0x84
 8004708:	9904      	ldr	r1, [sp, #16]
 800470a:	9808      	ldr	r0, [sp, #32]
 800470c:	f003 fb82 	bl	8007e14 <__sprint_r>
 8004710:	2800      	cmp	r0, #0
 8004712:	f43f adfa 	beq.w	800430a <_vfprintf_r+0x54a>
 8004716:	e47c      	b.n	8004012 <_vfprintf_r+0x252>
 8004718:	aa21      	add	r2, sp, #132	; 0x84
 800471a:	9904      	ldr	r1, [sp, #16]
 800471c:	9808      	ldr	r0, [sp, #32]
 800471e:	f003 fb79 	bl	8007e14 <__sprint_r>
 8004722:	2800      	cmp	r0, #0
 8004724:	f47f ac75 	bne.w	8004012 <_vfprintf_r+0x252>
 8004728:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800472a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800472c:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004730:	2b00      	cmp	r3, #0
 8004732:	f040 83d8 	bne.w	8004ee6 <_vfprintf_r+0x1126>
 8004736:	9b02      	ldr	r3, [sp, #8]
 8004738:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800473a:	f003 0301 	and.w	r3, r3, #1
 800473e:	4313      	orrs	r3, r2
 8004740:	f43f adcf 	beq.w	80042e2 <_vfprintf_r+0x522>
 8004744:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004746:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004748:	f8ca 3000 	str.w	r3, [sl]
 800474c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800474e:	f8ca 3004 	str.w	r3, [sl, #4]
 8004752:	3201      	adds	r2, #1
 8004754:	441c      	add	r4, r3
 8004756:	2a07      	cmp	r2, #7
 8004758:	9423      	str	r4, [sp, #140]	; 0x8c
 800475a:	9222      	str	r2, [sp, #136]	; 0x88
 800475c:	f300 849e 	bgt.w	800509c <_vfprintf_r+0x12dc>
 8004760:	f10a 0a08 	add.w	sl, sl, #8
 8004764:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004766:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004768:	3201      	adds	r2, #1
 800476a:	441c      	add	r4, r3
 800476c:	2a07      	cmp	r2, #7
 800476e:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004772:	e9ca 1300 	strd	r1, r3, [sl]
 8004776:	f77f adb2 	ble.w	80042de <_vfprintf_r+0x51e>
 800477a:	aa21      	add	r2, sp, #132	; 0x84
 800477c:	9904      	ldr	r1, [sp, #16]
 800477e:	9808      	ldr	r0, [sp, #32]
 8004780:	f003 fb48 	bl	8007e14 <__sprint_r>
 8004784:	2800      	cmp	r0, #0
 8004786:	f47f ac44 	bne.w	8004012 <_vfprintf_r+0x252>
 800478a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800478c:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004790:	e5a7      	b.n	80042e2 <_vfprintf_r+0x522>
 8004792:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004794:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8004796:	2a01      	cmp	r2, #1
 8004798:	f104 0401 	add.w	r4, r4, #1
 800479c:	f103 0501 	add.w	r5, r3, #1
 80047a0:	f10a 0608 	add.w	r6, sl, #8
 80047a4:	f340 81af 	ble.w	8004b06 <_vfprintf_r+0xd46>
 80047a8:	2301      	movs	r3, #1
 80047aa:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047ac:	f8ca 2000 	str.w	r2, [sl]
 80047b0:	2d07      	cmp	r5, #7
 80047b2:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 80047b6:	f8ca 3004 	str.w	r3, [sl, #4]
 80047ba:	f300 8345 	bgt.w	8004e48 <_vfprintf_r+0x1088>
 80047be:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80047c0:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80047c2:	3501      	adds	r5, #1
 80047c4:	441c      	add	r4, r3
 80047c6:	2d07      	cmp	r5, #7
 80047c8:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 80047cc:	e9c6 2300 	strd	r2, r3, [r6]
 80047d0:	f300 832e 	bgt.w	8004e30 <_vfprintf_r+0x1070>
 80047d4:	3608      	adds	r6, #8
 80047d6:	1c6b      	adds	r3, r5, #1
 80047d8:	461f      	mov	r7, r3
 80047da:	46b8      	mov	r8, r7
 80047dc:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 80047de:	9307      	str	r3, [sp, #28]
 80047e0:	2200      	movs	r2, #0
 80047e2:	2300      	movs	r3, #0
 80047e4:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80047e8:	f106 0a08 	add.w	sl, r6, #8
 80047ec:	3f01      	subs	r7, #1
 80047ee:	f005 fcaf 	bl	800a150 <__aeabi_dcmpeq>
 80047f2:	2800      	cmp	r0, #0
 80047f4:	f040 819b 	bne.w	8004b2e <_vfprintf_r+0xd6e>
 80047f8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047fa:	6077      	str	r7, [r6, #4]
 80047fc:	3301      	adds	r3, #1
 80047fe:	443c      	add	r4, r7
 8004800:	f1b8 0f07 	cmp.w	r8, #7
 8004804:	6033      	str	r3, [r6, #0]
 8004806:	9423      	str	r4, [sp, #140]	; 0x8c
 8004808:	f8cd 8088 	str.w	r8, [sp, #136]	; 0x88
 800480c:	f300 82b2 	bgt.w	8004d74 <_vfprintf_r+0xfb4>
 8004810:	f106 0310 	add.w	r3, r6, #16
 8004814:	f105 0802 	add.w	r8, r5, #2
 8004818:	4656      	mov	r6, sl
 800481a:	469a      	mov	sl, r3
 800481c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800481e:	6072      	str	r2, [r6, #4]
 8004820:	4414      	add	r4, r2
 8004822:	ab1d      	add	r3, sp, #116	; 0x74
 8004824:	f1b8 0f07 	cmp.w	r8, #7
 8004828:	9423      	str	r4, [sp, #140]	; 0x8c
 800482a:	f8cd 8088 	str.w	r8, [sp, #136]	; 0x88
 800482e:	6033      	str	r3, [r6, #0]
 8004830:	f77f ad57 	ble.w	80042e2 <_vfprintf_r+0x522>
 8004834:	e7a1      	b.n	800477a <_vfprintf_r+0x9ba>
 8004836:	2d10      	cmp	r5, #16
 8004838:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800483a:	dd31      	ble.n	80048a0 <_vfprintf_r+0xae0>
 800483c:	4651      	mov	r1, sl
 800483e:	4620      	mov	r0, r4
 8004840:	46ca      	mov	sl, r9
 8004842:	f04f 0810 	mov.w	r8, #16
 8004846:	46b1      	mov	r9, r6
 8004848:	9313      	str	r3, [sp, #76]	; 0x4c
 800484a:	462e      	mov	r6, r5
 800484c:	9c08      	ldr	r4, [sp, #32]
 800484e:	9d04      	ldr	r5, [sp, #16]
 8004850:	e009      	b.n	8004866 <_vfprintf_r+0xaa6>
 8004852:	bf00      	nop
 8004854:	0800ae28 	.word	0x0800ae28
 8004858:	0800add8 	.word	0x0800add8
 800485c:	3e10      	subs	r6, #16
 800485e:	2e10      	cmp	r6, #16
 8004860:	f101 0108 	add.w	r1, r1, #8
 8004864:	dd16      	ble.n	8004894 <_vfprintf_r+0xad4>
 8004866:	3201      	adds	r2, #1
 8004868:	4bc5      	ldr	r3, [pc, #788]	; (8004b80 <_vfprintf_r+0xdc0>)
 800486a:	3010      	adds	r0, #16
 800486c:	2a07      	cmp	r2, #7
 800486e:	e9cd 2022 	strd	r2, r0, [sp, #136]	; 0x88
 8004872:	e9c1 3800 	strd	r3, r8, [r1]
 8004876:	ddf1      	ble.n	800485c <_vfprintf_r+0xa9c>
 8004878:	aa21      	add	r2, sp, #132	; 0x84
 800487a:	4629      	mov	r1, r5
 800487c:	4620      	mov	r0, r4
 800487e:	f003 fac9 	bl	8007e14 <__sprint_r>
 8004882:	2800      	cmp	r0, #0
 8004884:	f47f abc5 	bne.w	8004012 <_vfprintf_r+0x252>
 8004888:	3e10      	subs	r6, #16
 800488a:	2e10      	cmp	r6, #16
 800488c:	e9dd 2022 	ldrd	r2, r0, [sp, #136]	; 0x88
 8004890:	a92e      	add	r1, sp, #184	; 0xb8
 8004892:	dce8      	bgt.n	8004866 <_vfprintf_r+0xaa6>
 8004894:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004896:	4635      	mov	r5, r6
 8004898:	4604      	mov	r4, r0
 800489a:	464e      	mov	r6, r9
 800489c:	46d1      	mov	r9, sl
 800489e:	468a      	mov	sl, r1
 80048a0:	3201      	adds	r2, #1
 80048a2:	49b7      	ldr	r1, [pc, #732]	; (8004b80 <_vfprintf_r+0xdc0>)
 80048a4:	442c      	add	r4, r5
 80048a6:	2a07      	cmp	r2, #7
 80048a8:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80048ac:	e9ca 1500 	strd	r1, r5, [sl]
 80048b0:	f300 82d6 	bgt.w	8004e60 <_vfprintf_r+0x10a0>
 80048b4:	f10a 0a08 	add.w	sl, sl, #8
 80048b8:	e4d5      	b.n	8004266 <_vfprintf_r+0x4a6>
 80048ba:	aa21      	add	r2, sp, #132	; 0x84
 80048bc:	9904      	ldr	r1, [sp, #16]
 80048be:	9808      	ldr	r0, [sp, #32]
 80048c0:	9313      	str	r3, [sp, #76]	; 0x4c
 80048c2:	f003 faa7 	bl	8007e14 <__sprint_r>
 80048c6:	2800      	cmp	r0, #0
 80048c8:	f47f aba3 	bne.w	8004012 <_vfprintf_r+0x252>
 80048cc:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80048ce:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80048d0:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 80048d4:	e4d9      	b.n	800428a <_vfprintf_r+0x4ca>
 80048d6:	aa21      	add	r2, sp, #132	; 0x84
 80048d8:	9904      	ldr	r1, [sp, #16]
 80048da:	9808      	ldr	r0, [sp, #32]
 80048dc:	f003 fa9a 	bl	8007e14 <__sprint_r>
 80048e0:	2800      	cmp	r0, #0
 80048e2:	f47f ab96 	bne.w	8004012 <_vfprintf_r+0x252>
 80048e6:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80048e8:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 80048ec:	e4dc      	b.n	80042a8 <_vfprintf_r+0x4e8>
 80048ee:	2d10      	cmp	r5, #16
 80048f0:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80048f2:	dd21      	ble.n	8004938 <_vfprintf_r+0xb78>
 80048f4:	2610      	movs	r6, #16
 80048f6:	9f08      	ldr	r7, [sp, #32]
 80048f8:	f8dd 8010 	ldr.w	r8, [sp, #16]
 80048fc:	e004      	b.n	8004908 <_vfprintf_r+0xb48>
 80048fe:	3d10      	subs	r5, #16
 8004900:	2d10      	cmp	r5, #16
 8004902:	f10a 0a08 	add.w	sl, sl, #8
 8004906:	dd17      	ble.n	8004938 <_vfprintf_r+0xb78>
 8004908:	3301      	adds	r3, #1
 800490a:	4a9d      	ldr	r2, [pc, #628]	; (8004b80 <_vfprintf_r+0xdc0>)
 800490c:	3410      	adds	r4, #16
 800490e:	2b07      	cmp	r3, #7
 8004910:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8004914:	e9ca 2600 	strd	r2, r6, [sl]
 8004918:	ddf1      	ble.n	80048fe <_vfprintf_r+0xb3e>
 800491a:	aa21      	add	r2, sp, #132	; 0x84
 800491c:	4641      	mov	r1, r8
 800491e:	4638      	mov	r0, r7
 8004920:	f003 fa78 	bl	8007e14 <__sprint_r>
 8004924:	2800      	cmp	r0, #0
 8004926:	f47f ab74 	bne.w	8004012 <_vfprintf_r+0x252>
 800492a:	3d10      	subs	r5, #16
 800492c:	2d10      	cmp	r5, #16
 800492e:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 8004932:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004936:	dce7      	bgt.n	8004908 <_vfprintf_r+0xb48>
 8004938:	3301      	adds	r3, #1
 800493a:	4a91      	ldr	r2, [pc, #580]	; (8004b80 <_vfprintf_r+0xdc0>)
 800493c:	442c      	add	r4, r5
 800493e:	2b07      	cmp	r3, #7
 8004940:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8004944:	e9ca 2500 	strd	r2, r5, [sl]
 8004948:	f77f acd4 	ble.w	80042f4 <_vfprintf_r+0x534>
 800494c:	aa21      	add	r2, sp, #132	; 0x84
 800494e:	9904      	ldr	r1, [sp, #16]
 8004950:	9808      	ldr	r0, [sp, #32]
 8004952:	f003 fa5f 	bl	8007e14 <__sprint_r>
 8004956:	2800      	cmp	r0, #0
 8004958:	f47f ab5b 	bne.w	8004012 <_vfprintf_r+0x252>
 800495c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800495e:	e4c9      	b.n	80042f4 <_vfprintf_r+0x534>
 8004960:	2b01      	cmp	r3, #1
 8004962:	f000 83b5 	beq.w	80050d0 <_vfprintf_r+0x1310>
 8004966:	2b02      	cmp	r3, #2
 8004968:	f8dd b008 	ldr.w	fp, [sp, #8]
 800496c:	f47f adc4 	bne.w	80044f8 <_vfprintf_r+0x738>
 8004970:	f8dd c040 	ldr.w	ip, [sp, #64]	; 0x40
 8004974:	aa2e      	add	r2, sp, #184	; 0xb8
 8004976:	0923      	lsrs	r3, r4, #4
 8004978:	f004 000f 	and.w	r0, r4, #15
 800497c:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8004980:	0929      	lsrs	r1, r5, #4
 8004982:	461c      	mov	r4, r3
 8004984:	460d      	mov	r5, r1
 8004986:	f81c 3000 	ldrb.w	r3, [ip, r0]
 800498a:	f802 3d01 	strb.w	r3, [r2, #-1]!
 800498e:	ea54 0305 	orrs.w	r3, r4, r5
 8004992:	d1f0      	bne.n	8004976 <_vfprintf_r+0xbb6>
 8004994:	ab2e      	add	r3, sp, #184	; 0xb8
 8004996:	1a9b      	subs	r3, r3, r2
 8004998:	920a      	str	r2, [sp, #40]	; 0x28
 800499a:	f8cd b008 	str.w	fp, [sp, #8]
 800499e:	9307      	str	r3, [sp, #28]
 80049a0:	e435      	b.n	800420e <_vfprintf_r+0x44e>
 80049a2:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80049a4:	2b00      	cmp	r3, #0
 80049a6:	f340 826a 	ble.w	8004e7e <_vfprintf_r+0x10be>
 80049aa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80049ac:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80049ae:	4293      	cmp	r3, r2
 80049b0:	bfa8      	it	ge
 80049b2:	4613      	movge	r3, r2
 80049b4:	2b00      	cmp	r3, #0
 80049b6:	461d      	mov	r5, r3
 80049b8:	dd0e      	ble.n	80049d8 <_vfprintf_r+0xc18>
 80049ba:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80049bc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049be:	f8ca 2000 	str.w	r2, [sl]
 80049c2:	3301      	adds	r3, #1
 80049c4:	442c      	add	r4, r5
 80049c6:	2b07      	cmp	r3, #7
 80049c8:	9423      	str	r4, [sp, #140]	; 0x8c
 80049ca:	f8ca 5004 	str.w	r5, [sl, #4]
 80049ce:	9322      	str	r3, [sp, #136]	; 0x88
 80049d0:	f300 83b5 	bgt.w	800513e <_vfprintf_r+0x137e>
 80049d4:	f10a 0a08 	add.w	sl, sl, #8
 80049d8:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80049da:	2d00      	cmp	r5, #0
 80049dc:	bfa8      	it	ge
 80049de:	1b5b      	subge	r3, r3, r5
 80049e0:	2b00      	cmp	r3, #0
 80049e2:	461d      	mov	r5, r3
 80049e4:	f300 81f6 	bgt.w	8004dd4 <_vfprintf_r+0x1014>
 80049e8:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80049ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80049ec:	429a      	cmp	r2, r3
 80049ee:	f280 81b5 	bge.w	8004d5c <_vfprintf_r+0xf9c>
 80049f2:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80049f4:	9911      	ldr	r1, [sp, #68]	; 0x44
 80049f6:	f8ca 1000 	str.w	r1, [sl]
 80049fa:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80049fc:	f8ca 1004 	str.w	r1, [sl, #4]
 8004a00:	3301      	adds	r3, #1
 8004a02:	440c      	add	r4, r1
 8004a04:	2b07      	cmp	r3, #7
 8004a06:	9423      	str	r4, [sp, #140]	; 0x8c
 8004a08:	9322      	str	r3, [sp, #136]	; 0x88
 8004a0a:	f300 8326 	bgt.w	800505a <_vfprintf_r+0x129a>
 8004a0e:	f10a 0a08 	add.w	sl, sl, #8
 8004a12:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8004a14:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a16:	4291      	cmp	r1, r2
 8004a18:	eba3 0302 	sub.w	r3, r3, r2
 8004a1c:	f280 8204 	bge.w	8004e28 <_vfprintf_r+0x1068>
 8004a20:	461d      	mov	r5, r3
 8004a22:	2d00      	cmp	r5, #0
 8004a24:	dd10      	ble.n	8004a48 <_vfprintf_r+0xc88>
 8004a26:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004a28:	f8ca 5004 	str.w	r5, [sl, #4]
 8004a2c:	e9dd 100a 	ldrd	r1, r0, [sp, #40]	; 0x28
 8004a30:	3201      	adds	r2, #1
 8004a32:	4401      	add	r1, r0
 8004a34:	442c      	add	r4, r5
 8004a36:	2a07      	cmp	r2, #7
 8004a38:	f8ca 1000 	str.w	r1, [sl]
 8004a3c:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004a40:	f300 838b 	bgt.w	800515a <_vfprintf_r+0x139a>
 8004a44:	f10a 0a08 	add.w	sl, sl, #8
 8004a48:	2d00      	cmp	r5, #0
 8004a4a:	bfac      	ite	ge
 8004a4c:	1b5d      	subge	r5, r3, r5
 8004a4e:	461d      	movlt	r5, r3
 8004a50:	2d00      	cmp	r5, #0
 8004a52:	f77f ac46 	ble.w	80042e2 <_vfprintf_r+0x522>
 8004a56:	2d10      	cmp	r5, #16
 8004a58:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004a5a:	f8df b128 	ldr.w	fp, [pc, #296]	; 8004b84 <_vfprintf_r+0xdc4>
 8004a5e:	f340 821f 	ble.w	8004ea0 <_vfprintf_r+0x10e0>
 8004a62:	2610      	movs	r6, #16
 8004a64:	9f08      	ldr	r7, [sp, #32]
 8004a66:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8004a6a:	e005      	b.n	8004a78 <_vfprintf_r+0xcb8>
 8004a6c:	f10a 0a08 	add.w	sl, sl, #8
 8004a70:	3d10      	subs	r5, #16
 8004a72:	2d10      	cmp	r5, #16
 8004a74:	f340 8214 	ble.w	8004ea0 <_vfprintf_r+0x10e0>
 8004a78:	3201      	adds	r2, #1
 8004a7a:	3410      	adds	r4, #16
 8004a7c:	2a07      	cmp	r2, #7
 8004a7e:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004a82:	e9ca b600 	strd	fp, r6, [sl]
 8004a86:	ddf1      	ble.n	8004a6c <_vfprintf_r+0xcac>
 8004a88:	aa21      	add	r2, sp, #132	; 0x84
 8004a8a:	4641      	mov	r1, r8
 8004a8c:	4638      	mov	r0, r7
 8004a8e:	f003 f9c1 	bl	8007e14 <__sprint_r>
 8004a92:	2800      	cmp	r0, #0
 8004a94:	f47f aabd 	bne.w	8004012 <_vfprintf_r+0x252>
 8004a98:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004a9c:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004aa0:	e7e6      	b.n	8004a70 <_vfprintf_r+0xcb0>
 8004aa2:	ab2e      	add	r3, sp, #184	; 0xb8
 8004aa4:	f8cd 9008 	str.w	r9, [sp, #8]
 8004aa8:	46c1      	mov	r9, r8
 8004aaa:	46b0      	mov	r8, r6
 8004aac:	461e      	mov	r6, r3
 8004aae:	e001      	b.n	8004ab4 <_vfprintf_r+0xcf4>
 8004ab0:	4604      	mov	r4, r0
 8004ab2:	460d      	mov	r5, r1
 8004ab4:	220a      	movs	r2, #10
 8004ab6:	2300      	movs	r3, #0
 8004ab8:	4620      	mov	r0, r4
 8004aba:	4629      	mov	r1, r5
 8004abc:	f7fe fd3a 	bl	8003534 <__aeabi_uldivmod>
 8004ac0:	3230      	adds	r2, #48	; 0x30
 8004ac2:	f806 2d01 	strb.w	r2, [r6, #-1]!
 8004ac6:	2300      	movs	r3, #0
 8004ac8:	220a      	movs	r2, #10
 8004aca:	4620      	mov	r0, r4
 8004acc:	4629      	mov	r1, r5
 8004ace:	f7fe fd31 	bl	8003534 <__aeabi_uldivmod>
 8004ad2:	2d00      	cmp	r5, #0
 8004ad4:	bf08      	it	eq
 8004ad6:	2c0a      	cmpeq	r4, #10
 8004ad8:	d2ea      	bcs.n	8004ab0 <_vfprintf_r+0xcf0>
 8004ada:	4632      	mov	r2, r6
 8004adc:	960a      	str	r6, [sp, #40]	; 0x28
 8004ade:	4646      	mov	r6, r8
 8004ae0:	46c8      	mov	r8, r9
 8004ae2:	f8dd 9008 	ldr.w	r9, [sp, #8]
 8004ae6:	f8cd b008 	str.w	fp, [sp, #8]
 8004aea:	ab2e      	add	r3, sp, #184	; 0xb8
 8004aec:	1a9b      	subs	r3, r3, r2
 8004aee:	9307      	str	r3, [sp, #28]
 8004af0:	f7ff bb8d 	b.w	800420e <_vfprintf_r+0x44e>
 8004af4:	2e00      	cmp	r6, #0
 8004af6:	f040 82eb 	bne.w	80050d0 <_vfprintf_r+0x1310>
 8004afa:	2600      	movs	r6, #0
 8004afc:	ab2e      	add	r3, sp, #184	; 0xb8
 8004afe:	9607      	str	r6, [sp, #28]
 8004b00:	930a      	str	r3, [sp, #40]	; 0x28
 8004b02:	f7ff bb84 	b.w	800420e <_vfprintf_r+0x44e>
 8004b06:	9a02      	ldr	r2, [sp, #8]
 8004b08:	07d0      	lsls	r0, r2, #31
 8004b0a:	f53f ae4d 	bmi.w	80047a8 <_vfprintf_r+0x9e8>
 8004b0e:	2201      	movs	r2, #1
 8004b10:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004b12:	f8ca 1000 	str.w	r1, [sl]
 8004b16:	2d07      	cmp	r5, #7
 8004b18:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 8004b1c:	f8ca 2004 	str.w	r2, [sl, #4]
 8004b20:	f300 8128 	bgt.w	8004d74 <_vfprintf_r+0xfb4>
 8004b24:	f103 0802 	add.w	r8, r3, #2
 8004b28:	f10a 0a10 	add.w	sl, sl, #16
 8004b2c:	e676      	b.n	800481c <_vfprintf_r+0xa5c>
 8004b2e:	2f00      	cmp	r7, #0
 8004b30:	f77f ae74 	ble.w	800481c <_vfprintf_r+0xa5c>
 8004b34:	2f10      	cmp	r7, #16
 8004b36:	f8df b04c 	ldr.w	fp, [pc, #76]	; 8004b84 <_vfprintf_r+0xdc4>
 8004b3a:	f340 83aa 	ble.w	8005292 <_vfprintf_r+0x14d2>
 8004b3e:	4623      	mov	r3, r4
 8004b40:	f04f 0810 	mov.w	r8, #16
 8004b44:	f8dd a020 	ldr.w	sl, [sp, #32]
 8004b48:	9c04      	ldr	r4, [sp, #16]
 8004b4a:	9d07      	ldr	r5, [sp, #28]
 8004b4c:	e005      	b.n	8004b5a <_vfprintf_r+0xd9a>
 8004b4e:	3608      	adds	r6, #8
 8004b50:	3f10      	subs	r7, #16
 8004b52:	2f10      	cmp	r7, #16
 8004b54:	f340 820a 	ble.w	8004f6c <_vfprintf_r+0x11ac>
 8004b58:	3501      	adds	r5, #1
 8004b5a:	3310      	adds	r3, #16
 8004b5c:	2d07      	cmp	r5, #7
 8004b5e:	e9cd 5322 	strd	r5, r3, [sp, #136]	; 0x88
 8004b62:	e9c6 b800 	strd	fp, r8, [r6]
 8004b66:	ddf2      	ble.n	8004b4e <_vfprintf_r+0xd8e>
 8004b68:	aa21      	add	r2, sp, #132	; 0x84
 8004b6a:	4621      	mov	r1, r4
 8004b6c:	4650      	mov	r0, sl
 8004b6e:	f003 f951 	bl	8007e14 <__sprint_r>
 8004b72:	2800      	cmp	r0, #0
 8004b74:	f47f aa4d 	bne.w	8004012 <_vfprintf_r+0x252>
 8004b78:	e9dd 5322 	ldrd	r5, r3, [sp, #136]	; 0x88
 8004b7c:	ae2e      	add	r6, sp, #184	; 0xb8
 8004b7e:	e7e7      	b.n	8004b50 <_vfprintf_r+0xd90>
 8004b80:	0800adc8 	.word	0x0800adc8
 8004b84:	0800add8 	.word	0x0800add8
 8004b88:	aa21      	add	r2, sp, #132	; 0x84
 8004b8a:	9904      	ldr	r1, [sp, #16]
 8004b8c:	9808      	ldr	r0, [sp, #32]
 8004b8e:	f003 f941 	bl	8007e14 <__sprint_r>
 8004b92:	2800      	cmp	r0, #0
 8004b94:	f47f aa3d 	bne.w	8004012 <_vfprintf_r+0x252>
 8004b98:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004b9a:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004b9e:	f7ff bb8c 	b.w	80042ba <_vfprintf_r+0x4fa>
 8004ba2:	2500      	movs	r5, #0
 8004ba4:	f7ff ba62 	b.w	800406c <_vfprintf_r+0x2ac>
 8004ba8:	17e5      	asrs	r5, r4, #31
 8004baa:	4622      	mov	r2, r4
 8004bac:	462b      	mov	r3, r5
 8004bae:	2a00      	cmp	r2, #0
 8004bb0:	f173 0300 	sbcs.w	r3, r3, #0
 8004bb4:	f6bf ab0f 	bge.w	80041d6 <_vfprintf_r+0x416>
 8004bb8:	f04f 082d 	mov.w	r8, #45	; 0x2d
 8004bbc:	4264      	negs	r4, r4
 8004bbe:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8004bc2:	f88d 8067 	strb.w	r8, [sp, #103]	; 0x67
 8004bc6:	2301      	movs	r3, #1
 8004bc8:	f7ff baab 	b.w	8004122 <_vfprintf_r+0x362>
 8004bcc:	464c      	mov	r4, r9
 8004bce:	f7ff b963 	b.w	8003e98 <_vfprintf_r+0xd8>
 8004bd2:	9b02      	ldr	r3, [sp, #8]
 8004bd4:	07de      	lsls	r6, r3, #31
 8004bd6:	f53f acd8 	bmi.w	800458a <_vfprintf_r+0x7ca>
 8004bda:	f7ff bb82 	b.w	80042e2 <_vfprintf_r+0x522>
 8004bde:	ab2e      	add	r3, sp, #184	; 0xb8
 8004be0:	930a      	str	r3, [sp, #40]	; 0x28
 8004be2:	f7ff bb14 	b.w	800420e <_vfprintf_r+0x44e>
 8004be6:	9a05      	ldr	r2, [sp, #20]
 8004be8:	4610      	mov	r0, r2
 8004bea:	17d1      	asrs	r1, r2, #31
 8004bec:	e9c3 0100 	strd	r0, r1, [r3]
 8004bf0:	f7ff b926 	b.w	8003e40 <_vfprintf_r+0x80>
 8004bf4:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004bf8:	4602      	mov	r2, r0
 8004bfa:	460b      	mov	r3, r1
 8004bfc:	f005 fada 	bl	800a1b4 <__aeabi_dcmpun>
 8004c00:	2800      	cmp	r0, #0
 8004c02:	f040 832c 	bne.w	800525e <_vfprintf_r+0x149e>
 8004c06:	1c74      	adds	r4, r6, #1
 8004c08:	f027 0520 	bic.w	r5, r7, #32
 8004c0c:	f000 82a3 	beq.w	8005156 <_vfprintf_r+0x1396>
 8004c10:	2d47      	cmp	r5, #71	; 0x47
 8004c12:	f000 823f 	beq.w	8005094 <_vfprintf_r+0x12d4>
 8004c16:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004c1a:	f44b 7280 	orr.w	r2, fp, #256	; 0x100
 8004c1e:	2900      	cmp	r1, #0
 8004c20:	9202      	str	r2, [sp, #8]
 8004c22:	f2c0 8213 	blt.w	800504c <_vfprintf_r+0x128c>
 8004c26:	ed9d 7b0c 	vldr	d7, [sp, #48]	; 0x30
 8004c2a:	ed8d 7b16 	vstr	d7, [sp, #88]	; 0x58
 8004c2e:	2300      	movs	r3, #0
 8004c30:	9313      	str	r3, [sp, #76]	; 0x4c
 8004c32:	2f66      	cmp	r7, #102	; 0x66
 8004c34:	f000 81b8 	beq.w	8004fa8 <_vfprintf_r+0x11e8>
 8004c38:	2f46      	cmp	r7, #70	; 0x46
 8004c3a:	f000 81b5 	beq.w	8004fa8 <_vfprintf_r+0x11e8>
 8004c3e:	2d45      	cmp	r5, #69	; 0x45
 8004c40:	f000 824a 	beq.w	80050d8 <_vfprintf_r+0x1318>
 8004c44:	aa1f      	add	r2, sp, #124	; 0x7c
 8004c46:	ab1c      	add	r3, sp, #112	; 0x70
 8004c48:	e9cd 3200 	strd	r3, r2, [sp]
 8004c4c:	2102      	movs	r1, #2
 8004c4e:	ab1b      	add	r3, sp, #108	; 0x6c
 8004c50:	4632      	mov	r2, r6
 8004c52:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8004c56:	9808      	ldr	r0, [sp, #32]
 8004c58:	f000 fcac 	bl	80055b4 <_dtoa_r>
 8004c5c:	2f67      	cmp	r7, #103	; 0x67
 8004c5e:	900a      	str	r0, [sp, #40]	; 0x28
 8004c60:	4634      	mov	r4, r6
 8004c62:	f040 8247 	bne.w	80050f4 <_vfprintf_r+0x1334>
 8004c66:	f01b 0f01 	tst.w	fp, #1
 8004c6a:	f040 8246 	bne.w	80050fa <_vfprintf_r+0x133a>
 8004c6e:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004c70:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8004c72:	920b      	str	r2, [sp, #44]	; 0x2c
 8004c74:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c76:	2d47      	cmp	r5, #71	; 0x47
 8004c78:	eba3 0302 	sub.w	r3, r3, r2
 8004c7c:	930e      	str	r3, [sp, #56]	; 0x38
 8004c7e:	d106      	bne.n	8004c8e <_vfprintf_r+0xece>
 8004c80:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c82:	1cd8      	adds	r0, r3, #3
 8004c84:	db02      	blt.n	8004c8c <_vfprintf_r+0xecc>
 8004c86:	429e      	cmp	r6, r3
 8004c88:	f280 824b 	bge.w	8005122 <_vfprintf_r+0x1362>
 8004c8c:	3f02      	subs	r7, #2
 8004c8e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004c90:	f88d 7074 	strb.w	r7, [sp, #116]	; 0x74
 8004c94:	1e5a      	subs	r2, r3, #1
 8004c96:	2a00      	cmp	r2, #0
 8004c98:	921b      	str	r2, [sp, #108]	; 0x6c
 8004c9a:	bfb6      	itet	lt
 8004c9c:	f1c3 0201 	rsblt	r2, r3, #1
 8004ca0:	232b      	movge	r3, #43	; 0x2b
 8004ca2:	232d      	movlt	r3, #45	; 0x2d
 8004ca4:	2a09      	cmp	r2, #9
 8004ca6:	f88d 3075 	strb.w	r3, [sp, #117]	; 0x75
 8004caa:	f340 82b8 	ble.w	800521e <_vfprintf_r+0x145e>
 8004cae:	f10d 0483 	add.w	r4, sp, #131	; 0x83
 8004cb2:	4620      	mov	r0, r4
 8004cb4:	4db8      	ldr	r5, [pc, #736]	; (8004f98 <_vfprintf_r+0x11d8>)
 8004cb6:	e001      	b.n	8004cbc <_vfprintf_r+0xefc>
 8004cb8:	4608      	mov	r0, r1
 8004cba:	461a      	mov	r2, r3
 8004cbc:	fb85 3102 	smull	r3, r1, r5, r2
 8004cc0:	17d3      	asrs	r3, r2, #31
 8004cc2:	ebc3 03a1 	rsb	r3, r3, r1, asr #2
 8004cc6:	eb03 0183 	add.w	r1, r3, r3, lsl #2
 8004cca:	eba2 0141 	sub.w	r1, r2, r1, lsl #1
 8004cce:	3130      	adds	r1, #48	; 0x30
 8004cd0:	2a63      	cmp	r2, #99	; 0x63
 8004cd2:	f800 1c01 	strb.w	r1, [r0, #-1]
 8004cd6:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
 8004cda:	dced      	bgt.n	8004cb8 <_vfprintf_r+0xef8>
 8004cdc:	3330      	adds	r3, #48	; 0x30
 8004cde:	1e82      	subs	r2, r0, #2
 8004ce0:	b2db      	uxtb	r3, r3
 8004ce2:	4294      	cmp	r4, r2
 8004ce4:	f801 3c01 	strb.w	r3, [r1, #-1]
 8004ce8:	f240 82e0 	bls.w	80052ac <_vfprintf_r+0x14ec>
 8004cec:	f10d 0276 	add.w	r2, sp, #118	; 0x76
 8004cf0:	e001      	b.n	8004cf6 <_vfprintf_r+0xf36>
 8004cf2:	f811 3b01 	ldrb.w	r3, [r1], #1
 8004cf6:	f802 3b01 	strb.w	r3, [r2], #1
 8004cfa:	428c      	cmp	r4, r1
 8004cfc:	d1f9      	bne.n	8004cf2 <_vfprintf_r+0xf32>
 8004cfe:	f10d 0385 	add.w	r3, sp, #133	; 0x85
 8004d02:	f10d 0276 	add.w	r2, sp, #118	; 0x76
 8004d06:	1a1b      	subs	r3, r3, r0
 8004d08:	4413      	add	r3, r2
 8004d0a:	aa1d      	add	r2, sp, #116	; 0x74
 8004d0c:	1a9b      	subs	r3, r3, r2
 8004d0e:	9312      	str	r3, [sp, #72]	; 0x48
 8004d10:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004d12:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d14:	2a01      	cmp	r2, #1
 8004d16:	4413      	add	r3, r2
 8004d18:	9307      	str	r3, [sp, #28]
 8004d1a:	f340 8292 	ble.w	8005242 <_vfprintf_r+0x1482>
 8004d1e:	9b07      	ldr	r3, [sp, #28]
 8004d20:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004d22:	4413      	add	r3, r2
 8004d24:	9307      	str	r3, [sp, #28]
 8004d26:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004d2a:	9303      	str	r3, [sp, #12]
 8004d2c:	2300      	movs	r3, #0
 8004d2e:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d30:	e172      	b.n	8005018 <_vfprintf_r+0x1258>
 8004d32:	f01b 0f40 	tst.w	fp, #64	; 0x40
 8004d36:	bf18      	it	ne
 8004d38:	b2a4      	uxthne	r4, r4
 8004d3a:	2500      	movs	r5, #0
 8004d3c:	2301      	movs	r3, #1
 8004d3e:	f7ff b9ec 	b.w	800411a <_vfprintf_r+0x35a>
 8004d42:	f01b 0340 	ands.w	r3, fp, #64	; 0x40
 8004d46:	bf1c      	itt	ne
 8004d48:	4613      	movne	r3, r2
 8004d4a:	b2a4      	uxthne	r4, r4
 8004d4c:	2500      	movs	r5, #0
 8004d4e:	f7ff b9e4 	b.w	800411a <_vfprintf_r+0x35a>
 8004d52:	4240      	negs	r0, r0
 8004d54:	9006      	str	r0, [sp, #24]
 8004d56:	9309      	str	r3, [sp, #36]	; 0x24
 8004d58:	f7ff bb6c 	b.w	8004434 <_vfprintf_r+0x674>
 8004d5c:	9b02      	ldr	r3, [sp, #8]
 8004d5e:	07dd      	lsls	r5, r3, #31
 8004d60:	f53f ae47 	bmi.w	80049f2 <_vfprintf_r+0xc32>
 8004d64:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8004d66:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d68:	428a      	cmp	r2, r1
 8004d6a:	eba3 0302 	sub.w	r3, r3, r2
 8004d6e:	dd5b      	ble.n	8004e28 <_vfprintf_r+0x1068>
 8004d70:	461d      	mov	r5, r3
 8004d72:	e669      	b.n	8004a48 <_vfprintf_r+0xc88>
 8004d74:	aa21      	add	r2, sp, #132	; 0x84
 8004d76:	9904      	ldr	r1, [sp, #16]
 8004d78:	9808      	ldr	r0, [sp, #32]
 8004d7a:	f003 f84b 	bl	8007e14 <__sprint_r>
 8004d7e:	2800      	cmp	r0, #0
 8004d80:	f47f a947 	bne.w	8004012 <_vfprintf_r+0x252>
 8004d84:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 8004d88:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8004d8c:	f103 0801 	add.w	r8, r3, #1
 8004d90:	ae2e      	add	r6, sp, #184	; 0xb8
 8004d92:	e543      	b.n	800481c <_vfprintf_r+0xa5c>
 8004d94:	aa21      	add	r2, sp, #132	; 0x84
 8004d96:	9904      	ldr	r1, [sp, #16]
 8004d98:	9808      	ldr	r0, [sp, #32]
 8004d9a:	f003 f83b 	bl	8007e14 <__sprint_r>
 8004d9e:	2800      	cmp	r0, #0
 8004da0:	f47f a937 	bne.w	8004012 <_vfprintf_r+0x252>
 8004da4:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004da6:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004daa:	f7ff bbfe 	b.w	80045aa <_vfprintf_r+0x7ea>
 8004dae:	2e06      	cmp	r6, #6
 8004db0:	4633      	mov	r3, r6
 8004db2:	bf28      	it	cs
 8004db4:	2306      	movcs	r3, #6
 8004db6:	9307      	str	r3, [sp, #28]
 8004db8:	9303      	str	r3, [sp, #12]
 8004dba:	4b78      	ldr	r3, [pc, #480]	; (8004f9c <_vfprintf_r+0x11dc>)
 8004dbc:	9409      	str	r4, [sp, #36]	; 0x24
 8004dbe:	930a      	str	r3, [sp, #40]	; 0x28
 8004dc0:	f7ff ba3b 	b.w	800423a <_vfprintf_r+0x47a>
 8004dc4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004dc6:	f8cd b008 	str.w	fp, [sp, #8]
 8004dca:	ab2e      	add	r3, sp, #184	; 0xb8
 8004dcc:	1a9b      	subs	r3, r3, r2
 8004dce:	9307      	str	r3, [sp, #28]
 8004dd0:	f7ff ba1d 	b.w	800420e <_vfprintf_r+0x44e>
 8004dd4:	2b10      	cmp	r3, #16
 8004dd6:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004dd8:	f8df b1c8 	ldr.w	fp, [pc, #456]	; 8004fa4 <_vfprintf_r+0x11e4>
 8004ddc:	f340 8125 	ble.w	800502a <_vfprintf_r+0x126a>
 8004de0:	2610      	movs	r6, #16
 8004de2:	9f08      	ldr	r7, [sp, #32]
 8004de4:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8004de8:	e005      	b.n	8004df6 <_vfprintf_r+0x1036>
 8004dea:	f10a 0a08 	add.w	sl, sl, #8
 8004dee:	3d10      	subs	r5, #16
 8004df0:	2d10      	cmp	r5, #16
 8004df2:	f340 811a 	ble.w	800502a <_vfprintf_r+0x126a>
 8004df6:	3201      	adds	r2, #1
 8004df8:	3410      	adds	r4, #16
 8004dfa:	2a07      	cmp	r2, #7
 8004dfc:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004e00:	e9ca b600 	strd	fp, r6, [sl]
 8004e04:	ddf1      	ble.n	8004dea <_vfprintf_r+0x102a>
 8004e06:	aa21      	add	r2, sp, #132	; 0x84
 8004e08:	4641      	mov	r1, r8
 8004e0a:	4638      	mov	r0, r7
 8004e0c:	f003 f802 	bl	8007e14 <__sprint_r>
 8004e10:	2800      	cmp	r0, #0
 8004e12:	f47f a8fe 	bne.w	8004012 <_vfprintf_r+0x252>
 8004e16:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004e1a:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004e1e:	e7e6      	b.n	8004dee <_vfprintf_r+0x102e>
 8004e20:	9a05      	ldr	r2, [sp, #20]
 8004e22:	601a      	str	r2, [r3, #0]
 8004e24:	f7ff b80c 	b.w	8003e40 <_vfprintf_r+0x80>
 8004e28:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004e2a:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8004e2c:	1a55      	subs	r5, r2, r1
 8004e2e:	e5f8      	b.n	8004a22 <_vfprintf_r+0xc62>
 8004e30:	aa21      	add	r2, sp, #132	; 0x84
 8004e32:	9904      	ldr	r1, [sp, #16]
 8004e34:	9808      	ldr	r0, [sp, #32]
 8004e36:	f002 ffed 	bl	8007e14 <__sprint_r>
 8004e3a:	2800      	cmp	r0, #0
 8004e3c:	f47f a8e9 	bne.w	8004012 <_vfprintf_r+0x252>
 8004e40:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8004e44:	ae2e      	add	r6, sp, #184	; 0xb8
 8004e46:	e4c6      	b.n	80047d6 <_vfprintf_r+0xa16>
 8004e48:	aa21      	add	r2, sp, #132	; 0x84
 8004e4a:	9904      	ldr	r1, [sp, #16]
 8004e4c:	9808      	ldr	r0, [sp, #32]
 8004e4e:	f002 ffe1 	bl	8007e14 <__sprint_r>
 8004e52:	2800      	cmp	r0, #0
 8004e54:	f47f a8dd 	bne.w	8004012 <_vfprintf_r+0x252>
 8004e58:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8004e5c:	ae2e      	add	r6, sp, #184	; 0xb8
 8004e5e:	e4ae      	b.n	80047be <_vfprintf_r+0x9fe>
 8004e60:	aa21      	add	r2, sp, #132	; 0x84
 8004e62:	9904      	ldr	r1, [sp, #16]
 8004e64:	9808      	ldr	r0, [sp, #32]
 8004e66:	9313      	str	r3, [sp, #76]	; 0x4c
 8004e68:	f002 ffd4 	bl	8007e14 <__sprint_r>
 8004e6c:	2800      	cmp	r0, #0
 8004e6e:	f47f a8d0 	bne.w	8004012 <_vfprintf_r+0x252>
 8004e72:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004e74:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004e76:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004e7a:	f7ff b9f4 	b.w	8004266 <_vfprintf_r+0x4a6>
 8004e7e:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004e80:	4947      	ldr	r1, [pc, #284]	; (8004fa0 <_vfprintf_r+0x11e0>)
 8004e82:	f8ca 1000 	str.w	r1, [sl]
 8004e86:	3201      	adds	r2, #1
 8004e88:	3401      	adds	r4, #1
 8004e8a:	2101      	movs	r1, #1
 8004e8c:	2a07      	cmp	r2, #7
 8004e8e:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004e92:	f8ca 1004 	str.w	r1, [sl, #4]
 8004e96:	f73f ac3f 	bgt.w	8004718 <_vfprintf_r+0x958>
 8004e9a:	f10a 0a08 	add.w	sl, sl, #8
 8004e9e:	e447      	b.n	8004730 <_vfprintf_r+0x970>
 8004ea0:	3201      	adds	r2, #1
 8004ea2:	442c      	add	r4, r5
 8004ea4:	2a07      	cmp	r2, #7
 8004ea6:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004eaa:	e9ca b500 	strd	fp, r5, [sl]
 8004eae:	f77f aa16 	ble.w	80042de <_vfprintf_r+0x51e>
 8004eb2:	e462      	b.n	800477a <_vfprintf_r+0x9ba>
 8004eb4:	aa21      	add	r2, sp, #132	; 0x84
 8004eb6:	9904      	ldr	r1, [sp, #16]
 8004eb8:	9808      	ldr	r0, [sp, #32]
 8004eba:	f002 ffab 	bl	8007e14 <__sprint_r>
 8004ebe:	2800      	cmp	r0, #0
 8004ec0:	f47f a8a7 	bne.w	8004012 <_vfprintf_r+0x252>
 8004ec4:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004ec8:	f7ff bb59 	b.w	800457e <_vfprintf_r+0x7be>
 8004ecc:	aa21      	add	r2, sp, #132	; 0x84
 8004ece:	9904      	ldr	r1, [sp, #16]
 8004ed0:	9808      	ldr	r0, [sp, #32]
 8004ed2:	f002 ff9f 	bl	8007e14 <__sprint_r>
 8004ed6:	2800      	cmp	r0, #0
 8004ed8:	f47f a89b 	bne.w	8004012 <_vfprintf_r+0x252>
 8004edc:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004ede:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004ee2:	f7ff b9e5 	b.w	80042b0 <_vfprintf_r+0x4f0>
 8004ee6:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004ee8:	9911      	ldr	r1, [sp, #68]	; 0x44
 8004eea:	f8ca 1000 	str.w	r1, [sl]
 8004eee:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004ef0:	f8ca 1004 	str.w	r1, [sl, #4]
 8004ef4:	3201      	adds	r2, #1
 8004ef6:	440c      	add	r4, r1
 8004ef8:	2a07      	cmp	r2, #7
 8004efa:	9423      	str	r4, [sp, #140]	; 0x8c
 8004efc:	9222      	str	r2, [sp, #136]	; 0x88
 8004efe:	f300 80cd 	bgt.w	800509c <_vfprintf_r+0x12dc>
 8004f02:	f10a 0a08 	add.w	sl, sl, #8
 8004f06:	2b00      	cmp	r3, #0
 8004f08:	f6bf ac2c 	bge.w	8004764 <_vfprintf_r+0x9a4>
 8004f0c:	425d      	negs	r5, r3
 8004f0e:	3310      	adds	r3, #16
 8004f10:	f8df b090 	ldr.w	fp, [pc, #144]	; 8004fa4 <_vfprintf_r+0x11e4>
 8004f14:	f280 816c 	bge.w	80051f0 <_vfprintf_r+0x1430>
 8004f18:	465f      	mov	r7, fp
 8004f1a:	2610      	movs	r6, #16
 8004f1c:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8004f20:	f8dd b020 	ldr.w	fp, [sp, #32]
 8004f24:	e005      	b.n	8004f32 <_vfprintf_r+0x1172>
 8004f26:	f10a 0a08 	add.w	sl, sl, #8
 8004f2a:	3d10      	subs	r5, #16
 8004f2c:	2d10      	cmp	r5, #16
 8004f2e:	f340 815e 	ble.w	80051ee <_vfprintf_r+0x142e>
 8004f32:	3201      	adds	r2, #1
 8004f34:	3410      	adds	r4, #16
 8004f36:	2a07      	cmp	r2, #7
 8004f38:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004f3c:	e9ca 7600 	strd	r7, r6, [sl]
 8004f40:	ddf1      	ble.n	8004f26 <_vfprintf_r+0x1166>
 8004f42:	aa21      	add	r2, sp, #132	; 0x84
 8004f44:	4641      	mov	r1, r8
 8004f46:	4658      	mov	r0, fp
 8004f48:	f002 ff64 	bl	8007e14 <__sprint_r>
 8004f4c:	2800      	cmp	r0, #0
 8004f4e:	f47f a860 	bne.w	8004012 <_vfprintf_r+0x252>
 8004f52:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004f56:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8004f5a:	e7e6      	b.n	8004f2a <_vfprintf_r+0x116a>
 8004f5c:	980a      	ldr	r0, [sp, #40]	; 0x28
 8004f5e:	f002 feaf 	bl	8007cc0 <strlen>
 8004f62:	462e      	mov	r6, r5
 8004f64:	4603      	mov	r3, r0
 8004f66:	9007      	str	r0, [sp, #28]
 8004f68:	f7ff b8b1 	b.w	80040ce <_vfprintf_r+0x30e>
 8004f6c:	461c      	mov	r4, r3
 8004f6e:	f105 0801 	add.w	r8, r5, #1
 8004f72:	f106 0208 	add.w	r2, r6, #8
 8004f76:	443c      	add	r4, r7
 8004f78:	f1b8 0f07 	cmp.w	r8, #7
 8004f7c:	9423      	str	r4, [sp, #140]	; 0x8c
 8004f7e:	e9c6 b700 	strd	fp, r7, [r6]
 8004f82:	f8cd 8088 	str.w	r8, [sp, #136]	; 0x88
 8004f86:	f73f aef5 	bgt.w	8004d74 <_vfprintf_r+0xfb4>
 8004f8a:	f108 0801 	add.w	r8, r8, #1
 8004f8e:	f102 0a08 	add.w	sl, r2, #8
 8004f92:	4616      	mov	r6, r2
 8004f94:	e442      	b.n	800481c <_vfprintf_r+0xa5c>
 8004f96:	bf00      	nop
 8004f98:	66666667 	.word	0x66666667
 8004f9c:	0800ae20 	.word	0x0800ae20
 8004fa0:	0800ae28 	.word	0x0800ae28
 8004fa4:	0800add8 	.word	0x0800add8
 8004fa8:	aa1f      	add	r2, sp, #124	; 0x7c
 8004faa:	ab1c      	add	r3, sp, #112	; 0x70
 8004fac:	e9cd 3200 	strd	r3, r2, [sp]
 8004fb0:	2103      	movs	r1, #3
 8004fb2:	ab1b      	add	r3, sp, #108	; 0x6c
 8004fb4:	4632      	mov	r2, r6
 8004fb6:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8004fba:	9808      	ldr	r0, [sp, #32]
 8004fbc:	f000 fafa 	bl	80055b4 <_dtoa_r>
 8004fc0:	900a      	str	r0, [sp, #40]	; 0x28
 8004fc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004fc4:	781b      	ldrb	r3, [r3, #0]
 8004fc6:	2b30      	cmp	r3, #48	; 0x30
 8004fc8:	eb00 0406 	add.w	r4, r0, r6
 8004fcc:	d056      	beq.n	800507c <_vfprintf_r+0x12bc>
 8004fce:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004fd0:	441c      	add	r4, r3
 8004fd2:	2200      	movs	r2, #0
 8004fd4:	2300      	movs	r3, #0
 8004fd6:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8004fda:	f005 f8b9 	bl	800a150 <__aeabi_dcmpeq>
 8004fde:	2800      	cmp	r0, #0
 8004fe0:	f000 808e 	beq.w	8005100 <_vfprintf_r+0x1340>
 8004fe4:	4623      	mov	r3, r4
 8004fe6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004fe8:	1a9b      	subs	r3, r3, r2
 8004fea:	930e      	str	r3, [sp, #56]	; 0x38
 8004fec:	2d47      	cmp	r5, #71	; 0x47
 8004fee:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004ff0:	930b      	str	r3, [sp, #44]	; 0x2c
 8004ff2:	f43f ae45 	beq.w	8004c80 <_vfprintf_r+0xec0>
 8004ff6:	2f66      	cmp	r7, #102	; 0x66
 8004ff8:	f47f ae49 	bne.w	8004c8e <_vfprintf_r+0xece>
 8004ffc:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004ffe:	f00b 0301 	and.w	r3, fp, #1
 8005002:	2a00      	cmp	r2, #0
 8005004:	ea43 0306 	orr.w	r3, r3, r6
 8005008:	f340 8136 	ble.w	8005278 <_vfprintf_r+0x14b8>
 800500c:	2b00      	cmp	r3, #0
 800500e:	f040 8121 	bne.w	8005254 <_vfprintf_r+0x1494>
 8005012:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005014:	9303      	str	r3, [sp, #12]
 8005016:	9307      	str	r3, [sp, #28]
 8005018:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800501a:	2b00      	cmp	r3, #0
 800501c:	d07c      	beq.n	8005118 <_vfprintf_r+0x1358>
 800501e:	232d      	movs	r3, #45	; 0x2d
 8005020:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8005024:	2600      	movs	r6, #0
 8005026:	f7ff b85f 	b.w	80040e8 <_vfprintf_r+0x328>
 800502a:	3201      	adds	r2, #1
 800502c:	442c      	add	r4, r5
 800502e:	2a07      	cmp	r2, #7
 8005030:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8005034:	e9ca b500 	strd	fp, r5, [sl]
 8005038:	dc3e      	bgt.n	80050b8 <_vfprintf_r+0x12f8>
 800503a:	f10a 0a08 	add.w	sl, sl, #8
 800503e:	e4d3      	b.n	80049e8 <_vfprintf_r+0xc28>
 8005040:	f04f 082d 	mov.w	r8, #45	; 0x2d
 8005044:	f88d 8067 	strb.w	r8, [sp, #103]	; 0x67
 8005048:	f7ff b9be 	b.w	80043c8 <_vfprintf_r+0x608>
 800504c:	f101 4300 	add.w	r3, r1, #2147483648	; 0x80000000
 8005050:	9317      	str	r3, [sp, #92]	; 0x5c
 8005052:	232d      	movs	r3, #45	; 0x2d
 8005054:	9016      	str	r0, [sp, #88]	; 0x58
 8005056:	9313      	str	r3, [sp, #76]	; 0x4c
 8005058:	e5eb      	b.n	8004c32 <_vfprintf_r+0xe72>
 800505a:	aa21      	add	r2, sp, #132	; 0x84
 800505c:	9904      	ldr	r1, [sp, #16]
 800505e:	9808      	ldr	r0, [sp, #32]
 8005060:	f002 fed8 	bl	8007e14 <__sprint_r>
 8005064:	2800      	cmp	r0, #0
 8005066:	f47e afd4 	bne.w	8004012 <_vfprintf_r+0x252>
 800506a:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800506c:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800506e:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8005072:	e4ce      	b.n	8004a12 <_vfprintf_r+0xc52>
 8005074:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8005078:	f7ff ba26 	b.w	80044c8 <_vfprintf_r+0x708>
 800507c:	2200      	movs	r2, #0
 800507e:	2300      	movs	r3, #0
 8005080:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8005084:	f005 f864 	bl	800a150 <__aeabi_dcmpeq>
 8005088:	2800      	cmp	r0, #0
 800508a:	d1a0      	bne.n	8004fce <_vfprintf_r+0x120e>
 800508c:	f1c6 0301 	rsb	r3, r6, #1
 8005090:	931b      	str	r3, [sp, #108]	; 0x6c
 8005092:	e79d      	b.n	8004fd0 <_vfprintf_r+0x1210>
 8005094:	2e00      	cmp	r6, #0
 8005096:	bf08      	it	eq
 8005098:	2601      	moveq	r6, #1
 800509a:	e5bc      	b.n	8004c16 <_vfprintf_r+0xe56>
 800509c:	aa21      	add	r2, sp, #132	; 0x84
 800509e:	9904      	ldr	r1, [sp, #16]
 80050a0:	9808      	ldr	r0, [sp, #32]
 80050a2:	f002 feb7 	bl	8007e14 <__sprint_r>
 80050a6:	2800      	cmp	r0, #0
 80050a8:	f47e afb3 	bne.w	8004012 <_vfprintf_r+0x252>
 80050ac:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80050ae:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 80050b2:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 80050b6:	e726      	b.n	8004f06 <_vfprintf_r+0x1146>
 80050b8:	aa21      	add	r2, sp, #132	; 0x84
 80050ba:	9904      	ldr	r1, [sp, #16]
 80050bc:	9808      	ldr	r0, [sp, #32]
 80050be:	f002 fea9 	bl	8007e14 <__sprint_r>
 80050c2:	2800      	cmp	r0, #0
 80050c4:	f47e afa5 	bne.w	8004012 <_vfprintf_r+0x252>
 80050c8:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80050ca:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 80050ce:	e48b      	b.n	80049e8 <_vfprintf_r+0xc28>
 80050d0:	f8dd b008 	ldr.w	fp, [sp, #8]
 80050d4:	f7ff b891 	b.w	80041fa <_vfprintf_r+0x43a>
 80050d8:	a91f      	add	r1, sp, #124	; 0x7c
 80050da:	ab1c      	add	r3, sp, #112	; 0x70
 80050dc:	1c74      	adds	r4, r6, #1
 80050de:	e9cd 3100 	strd	r3, r1, [sp]
 80050e2:	4622      	mov	r2, r4
 80050e4:	ab1b      	add	r3, sp, #108	; 0x6c
 80050e6:	2102      	movs	r1, #2
 80050e8:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 80050ec:	9808      	ldr	r0, [sp, #32]
 80050ee:	f000 fa61 	bl	80055b4 <_dtoa_r>
 80050f2:	900a      	str	r0, [sp, #40]	; 0x28
 80050f4:	2f47      	cmp	r7, #71	; 0x47
 80050f6:	f43f adb6 	beq.w	8004c66 <_vfprintf_r+0xea6>
 80050fa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80050fc:	441c      	add	r4, r3
 80050fe:	e768      	b.n	8004fd2 <_vfprintf_r+0x1212>
 8005100:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8005102:	42a3      	cmp	r3, r4
 8005104:	f4bf af6f 	bcs.w	8004fe6 <_vfprintf_r+0x1226>
 8005108:	2130      	movs	r1, #48	; 0x30
 800510a:	1c5a      	adds	r2, r3, #1
 800510c:	921f      	str	r2, [sp, #124]	; 0x7c
 800510e:	7019      	strb	r1, [r3, #0]
 8005110:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8005112:	429c      	cmp	r4, r3
 8005114:	d8f9      	bhi.n	800510a <_vfprintf_r+0x134a>
 8005116:	e766      	b.n	8004fe6 <_vfprintf_r+0x1226>
 8005118:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
 800511c:	9e13      	ldr	r6, [sp, #76]	; 0x4c
 800511e:	f7fe bfdf 	b.w	80040e0 <_vfprintf_r+0x320>
 8005122:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005124:	4619      	mov	r1, r3
 8005126:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005128:	4299      	cmp	r1, r3
 800512a:	dc30      	bgt.n	800518e <_vfprintf_r+0x13ce>
 800512c:	f01b 0f01 	tst.w	fp, #1
 8005130:	d17e      	bne.n	8005230 <_vfprintf_r+0x1470>
 8005132:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
 8005136:	9203      	str	r2, [sp, #12]
 8005138:	9307      	str	r3, [sp, #28]
 800513a:	2767      	movs	r7, #103	; 0x67
 800513c:	e76c      	b.n	8005018 <_vfprintf_r+0x1258>
 800513e:	aa21      	add	r2, sp, #132	; 0x84
 8005140:	9904      	ldr	r1, [sp, #16]
 8005142:	9808      	ldr	r0, [sp, #32]
 8005144:	f002 fe66 	bl	8007e14 <__sprint_r>
 8005148:	2800      	cmp	r0, #0
 800514a:	f47e af62 	bne.w	8004012 <_vfprintf_r+0x252>
 800514e:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8005150:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8005154:	e440      	b.n	80049d8 <_vfprintf_r+0xc18>
 8005156:	2606      	movs	r6, #6
 8005158:	e55d      	b.n	8004c16 <_vfprintf_r+0xe56>
 800515a:	aa21      	add	r2, sp, #132	; 0x84
 800515c:	9904      	ldr	r1, [sp, #16]
 800515e:	9808      	ldr	r0, [sp, #32]
 8005160:	f002 fe58 	bl	8007e14 <__sprint_r>
 8005164:	2800      	cmp	r0, #0
 8005166:	f47e af54 	bne.w	8004012 <_vfprintf_r+0x252>
 800516a:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800516c:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800516e:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8005170:	1ad3      	subs	r3, r2, r3
 8005172:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 8005176:	e467      	b.n	8004a48 <_vfprintf_r+0xc88>
 8005178:	9603      	str	r6, [sp, #12]
 800517a:	9607      	str	r6, [sp, #28]
 800517c:	9409      	str	r4, [sp, #36]	; 0x24
 800517e:	4606      	mov	r6, r0
 8005180:	f8cd b008 	str.w	fp, [sp, #8]
 8005184:	900b      	str	r0, [sp, #44]	; 0x2c
 8005186:	f89d 8067 	ldrb.w	r8, [sp, #103]	; 0x67
 800518a:	f7fe bfa9 	b.w	80040e0 <_vfprintf_r+0x320>
 800518e:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	; 0x38
 8005192:	4413      	add	r3, r2
 8005194:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005196:	9307      	str	r3, [sp, #28]
 8005198:	2a00      	cmp	r2, #0
 800519a:	dc06      	bgt.n	80051aa <_vfprintf_r+0x13ea>
 800519c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800519e:	9a07      	ldr	r2, [sp, #28]
 80051a0:	f1c3 0301 	rsb	r3, r3, #1
 80051a4:	441a      	add	r2, r3
 80051a6:	4613      	mov	r3, r2
 80051a8:	9207      	str	r2, [sp, #28]
 80051aa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80051ae:	9303      	str	r3, [sp, #12]
 80051b0:	2767      	movs	r7, #103	; 0x67
 80051b2:	e731      	b.n	8005018 <_vfprintf_r+0x1258>
 80051b4:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 80051b8:	f7fe bf4b 	b.w	8004052 <_vfprintf_r+0x292>
 80051bc:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 80051c0:	f7ff b8d3 	b.w	800436a <_vfprintf_r+0x5aa>
 80051c4:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 80051c8:	f7fe bfca 	b.w	8004160 <_vfprintf_r+0x3a0>
 80051cc:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 80051d0:	f7ff b917 	b.w	8004402 <_vfprintf_r+0x642>
 80051d4:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 80051d8:	f7fe bfea 	b.w	80041b0 <_vfprintf_r+0x3f0>
 80051dc:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 80051e0:	f7ff b8a6 	b.w	8004330 <_vfprintf_r+0x570>
 80051e4:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80051e8:	9305      	str	r3, [sp, #20]
 80051ea:	f7fe bf17 	b.w	800401c <_vfprintf_r+0x25c>
 80051ee:	46bb      	mov	fp, r7
 80051f0:	3201      	adds	r2, #1
 80051f2:	442c      	add	r4, r5
 80051f4:	2a07      	cmp	r2, #7
 80051f6:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80051fa:	e9ca b500 	strd	fp, r5, [sl]
 80051fe:	f77f aaaf 	ble.w	8004760 <_vfprintf_r+0x9a0>
 8005202:	aa21      	add	r2, sp, #132	; 0x84
 8005204:	9904      	ldr	r1, [sp, #16]
 8005206:	9808      	ldr	r0, [sp, #32]
 8005208:	f002 fe04 	bl	8007e14 <__sprint_r>
 800520c:	2800      	cmp	r0, #0
 800520e:	f47e af00 	bne.w	8004012 <_vfprintf_r+0x252>
 8005212:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8005216:	f10d 0ab8 	add.w	sl, sp, #184	; 0xb8
 800521a:	f7ff baa3 	b.w	8004764 <_vfprintf_r+0x9a4>
 800521e:	2330      	movs	r3, #48	; 0x30
 8005220:	3230      	adds	r2, #48	; 0x30
 8005222:	f88d 3076 	strb.w	r3, [sp, #118]	; 0x76
 8005226:	2304      	movs	r3, #4
 8005228:	f88d 2077 	strb.w	r2, [sp, #119]	; 0x77
 800522c:	9312      	str	r3, [sp, #72]	; 0x48
 800522e:	e56f      	b.n	8004d10 <_vfprintf_r+0xf50>
 8005230:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005232:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005234:	4413      	add	r3, r2
 8005236:	9307      	str	r3, [sp, #28]
 8005238:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800523c:	9303      	str	r3, [sp, #12]
 800523e:	2767      	movs	r7, #103	; 0x67
 8005240:	e6ea      	b.n	8005018 <_vfprintf_r+0x1258>
 8005242:	f01b 0201 	ands.w	r2, fp, #1
 8005246:	920b      	str	r2, [sp, #44]	; 0x2c
 8005248:	f47f ad69 	bne.w	8004d1e <_vfprintf_r+0xf5e>
 800524c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005250:	9303      	str	r3, [sp, #12]
 8005252:	e6e1      	b.n	8005018 <_vfprintf_r+0x1258>
 8005254:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005256:	18d3      	adds	r3, r2, r3
 8005258:	4433      	add	r3, r6
 800525a:	9307      	str	r3, [sp, #28]
 800525c:	e7f6      	b.n	800524c <_vfprintf_r+0x148c>
 800525e:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005260:	4a14      	ldr	r2, [pc, #80]	; (80052b4 <_vfprintf_r+0x14f4>)
 8005262:	2b00      	cmp	r3, #0
 8005264:	bfb6      	itet	lt
 8005266:	f04f 082d 	movlt.w	r8, #45	; 0x2d
 800526a:	f89d 8067 	ldrbge.w	r8, [sp, #103]	; 0x67
 800526e:	f88d 8067 	strblt.w	r8, [sp, #103]	; 0x67
 8005272:	4b11      	ldr	r3, [pc, #68]	; (80052b8 <_vfprintf_r+0x14f8>)
 8005274:	f7ff b8aa 	b.w	80043cc <_vfprintf_r+0x60c>
 8005278:	b91b      	cbnz	r3, 8005282 <_vfprintf_r+0x14c2>
 800527a:	2301      	movs	r3, #1
 800527c:	9303      	str	r3, [sp, #12]
 800527e:	9307      	str	r3, [sp, #28]
 8005280:	e6ca      	b.n	8005018 <_vfprintf_r+0x1258>
 8005282:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005284:	3301      	adds	r3, #1
 8005286:	4433      	add	r3, r6
 8005288:	9307      	str	r3, [sp, #28]
 800528a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800528e:	9303      	str	r3, [sp, #12]
 8005290:	e6c2      	b.n	8005018 <_vfprintf_r+0x1258>
 8005292:	4652      	mov	r2, sl
 8005294:	e66f      	b.n	8004f76 <_vfprintf_r+0x11b6>
 8005296:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005298:	f899 7001 	ldrb.w	r7, [r9, #1]
 800529c:	f853 6b04 	ldr.w	r6, [r3], #4
 80052a0:	9309      	str	r3, [sp, #36]	; 0x24
 80052a2:	4681      	mov	r9, r0
 80052a4:	ea46 76e6 	orr.w	r6, r6, r6, asr #31
 80052a8:	f7fe be02 	b.w	8003eb0 <_vfprintf_r+0xf0>
 80052ac:	2302      	movs	r3, #2
 80052ae:	9312      	str	r3, [sp, #72]	; 0x48
 80052b0:	e52e      	b.n	8004d10 <_vfprintf_r+0xf50>
 80052b2:	bf00      	nop
 80052b4:	0800adf0 	.word	0x0800adf0
 80052b8:	0800adf4 	.word	0x0800adf4

080052bc <vfprintf>:
 80052bc:	b410      	push	{r4}
 80052be:	4c04      	ldr	r4, [pc, #16]	; (80052d0 <vfprintf+0x14>)
 80052c0:	4613      	mov	r3, r2
 80052c2:	460a      	mov	r2, r1
 80052c4:	4601      	mov	r1, r0
 80052c6:	6820      	ldr	r0, [r4, #0]
 80052c8:	f85d 4b04 	ldr.w	r4, [sp], #4
 80052cc:	f7fe bd78 	b.w	8003dc0 <_vfprintf_r>
 80052d0:	20000010 	.word	0x20000010

080052d4 <__sbprintf>:
 80052d4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80052d6:	460c      	mov	r4, r1
 80052d8:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 80052dc:	8989      	ldrh	r1, [r1, #12]
 80052de:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80052e0:	89e5      	ldrh	r5, [r4, #14]
 80052e2:	9619      	str	r6, [sp, #100]	; 0x64
 80052e4:	f021 0102 	bic.w	r1, r1, #2
 80052e8:	6a66      	ldr	r6, [r4, #36]	; 0x24
 80052ea:	f8ad 500e 	strh.w	r5, [sp, #14]
 80052ee:	2500      	movs	r5, #0
 80052f0:	69e7      	ldr	r7, [r4, #28]
 80052f2:	f8ad 100c 	strh.w	r1, [sp, #12]
 80052f6:	9609      	str	r6, [sp, #36]	; 0x24
 80052f8:	9506      	str	r5, [sp, #24]
 80052fa:	ae1a      	add	r6, sp, #104	; 0x68
 80052fc:	f44f 6580 	mov.w	r5, #1024	; 0x400
 8005300:	4669      	mov	r1, sp
 8005302:	9600      	str	r6, [sp, #0]
 8005304:	9604      	str	r6, [sp, #16]
 8005306:	9502      	str	r5, [sp, #8]
 8005308:	9505      	str	r5, [sp, #20]
 800530a:	9707      	str	r7, [sp, #28]
 800530c:	4606      	mov	r6, r0
 800530e:	f7fe fd57 	bl	8003dc0 <_vfprintf_r>
 8005312:	1e05      	subs	r5, r0, #0
 8005314:	db07      	blt.n	8005326 <__sbprintf+0x52>
 8005316:	4630      	mov	r0, r6
 8005318:	4669      	mov	r1, sp
 800531a:	f001 f93f 	bl	800659c <_fflush_r>
 800531e:	2800      	cmp	r0, #0
 8005320:	bf18      	it	ne
 8005322:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8005326:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800532a:	065b      	lsls	r3, r3, #25
 800532c:	d503      	bpl.n	8005336 <__sbprintf+0x62>
 800532e:	89a3      	ldrh	r3, [r4, #12]
 8005330:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005334:	81a3      	strh	r3, [r4, #12]
 8005336:	4628      	mov	r0, r5
 8005338:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 800533c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800533e:	bf00      	nop

08005340 <__swsetup_r>:
 8005340:	b538      	push	{r3, r4, r5, lr}
 8005342:	4b32      	ldr	r3, [pc, #200]	; (800540c <__swsetup_r+0xcc>)
 8005344:	681b      	ldr	r3, [r3, #0]
 8005346:	4605      	mov	r5, r0
 8005348:	460c      	mov	r4, r1
 800534a:	b10b      	cbz	r3, 8005350 <__swsetup_r+0x10>
 800534c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800534e:	b312      	cbz	r2, 8005396 <__swsetup_r+0x56>
 8005350:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005354:	b293      	uxth	r3, r2
 8005356:	0718      	lsls	r0, r3, #28
 8005358:	d525      	bpl.n	80053a6 <__swsetup_r+0x66>
 800535a:	6920      	ldr	r0, [r4, #16]
 800535c:	2800      	cmp	r0, #0
 800535e:	d02d      	beq.n	80053bc <__swsetup_r+0x7c>
 8005360:	f013 0201 	ands.w	r2, r3, #1
 8005364:	d007      	beq.n	8005376 <__swsetup_r+0x36>
 8005366:	6963      	ldr	r3, [r4, #20]
 8005368:	2200      	movs	r2, #0
 800536a:	425b      	negs	r3, r3
 800536c:	61a3      	str	r3, [r4, #24]
 800536e:	60a2      	str	r2, [r4, #8]
 8005370:	b138      	cbz	r0, 8005382 <__swsetup_r+0x42>
 8005372:	2000      	movs	r0, #0
 8005374:	bd38      	pop	{r3, r4, r5, pc}
 8005376:	0799      	lsls	r1, r3, #30
 8005378:	bf58      	it	pl
 800537a:	6962      	ldrpl	r2, [r4, #20]
 800537c:	60a2      	str	r2, [r4, #8]
 800537e:	2800      	cmp	r0, #0
 8005380:	d1f7      	bne.n	8005372 <__swsetup_r+0x32>
 8005382:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005386:	061a      	lsls	r2, r3, #24
 8005388:	d5f4      	bpl.n	8005374 <__swsetup_r+0x34>
 800538a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800538e:	81a3      	strh	r3, [r4, #12]
 8005390:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005394:	bd38      	pop	{r3, r4, r5, pc}
 8005396:	4618      	mov	r0, r3
 8005398:	f001 fa06 	bl	80067a8 <__sinit>
 800539c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053a0:	b293      	uxth	r3, r2
 80053a2:	0718      	lsls	r0, r3, #28
 80053a4:	d4d9      	bmi.n	800535a <__swsetup_r+0x1a>
 80053a6:	06d9      	lsls	r1, r3, #27
 80053a8:	d528      	bpl.n	80053fc <__swsetup_r+0xbc>
 80053aa:	0758      	lsls	r0, r3, #29
 80053ac:	d412      	bmi.n	80053d4 <__swsetup_r+0x94>
 80053ae:	6920      	ldr	r0, [r4, #16]
 80053b0:	f042 0308 	orr.w	r3, r2, #8
 80053b4:	81a3      	strh	r3, [r4, #12]
 80053b6:	b29b      	uxth	r3, r3
 80053b8:	2800      	cmp	r0, #0
 80053ba:	d1d1      	bne.n	8005360 <__swsetup_r+0x20>
 80053bc:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80053c0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80053c4:	d0cc      	beq.n	8005360 <__swsetup_r+0x20>
 80053c6:	4628      	mov	r0, r5
 80053c8:	4621      	mov	r1, r4
 80053ca:	f001 fbdf 	bl	8006b8c <__smakebuf_r>
 80053ce:	89a3      	ldrh	r3, [r4, #12]
 80053d0:	6920      	ldr	r0, [r4, #16]
 80053d2:	e7c5      	b.n	8005360 <__swsetup_r+0x20>
 80053d4:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80053d6:	b151      	cbz	r1, 80053ee <__swsetup_r+0xae>
 80053d8:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80053dc:	4299      	cmp	r1, r3
 80053de:	d004      	beq.n	80053ea <__swsetup_r+0xaa>
 80053e0:	4628      	mov	r0, r5
 80053e2:	f001 fa51 	bl	8006888 <_free_r>
 80053e6:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053ea:	2300      	movs	r3, #0
 80053ec:	6323      	str	r3, [r4, #48]	; 0x30
 80053ee:	2300      	movs	r3, #0
 80053f0:	6920      	ldr	r0, [r4, #16]
 80053f2:	6063      	str	r3, [r4, #4]
 80053f4:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80053f8:	6020      	str	r0, [r4, #0]
 80053fa:	e7d9      	b.n	80053b0 <__swsetup_r+0x70>
 80053fc:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005400:	2309      	movs	r3, #9
 8005402:	602b      	str	r3, [r5, #0]
 8005404:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005408:	81a2      	strh	r2, [r4, #12]
 800540a:	bd38      	pop	{r3, r4, r5, pc}
 800540c:	20000010 	.word	0x20000010

08005410 <__register_exitproc>:
 8005410:	b4f0      	push	{r4, r5, r6, r7}
 8005412:	4c18      	ldr	r4, [pc, #96]	; (8005474 <__register_exitproc+0x64>)
 8005414:	6825      	ldr	r5, [r4, #0]
 8005416:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 800541a:	b314      	cbz	r4, 8005462 <__register_exitproc+0x52>
 800541c:	6865      	ldr	r5, [r4, #4]
 800541e:	2d1f      	cmp	r5, #31
 8005420:	dc24      	bgt.n	800546c <__register_exitproc+0x5c>
 8005422:	b938      	cbnz	r0, 8005434 <__register_exitproc+0x24>
 8005424:	1cab      	adds	r3, r5, #2
 8005426:	3501      	adds	r5, #1
 8005428:	6065      	str	r5, [r4, #4]
 800542a:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
 800542e:	2000      	movs	r0, #0
 8005430:	bcf0      	pop	{r4, r5, r6, r7}
 8005432:	4770      	bx	lr
 8005434:	eb04 0685 	add.w	r6, r4, r5, lsl #2
 8005438:	2701      	movs	r7, #1
 800543a:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
 800543e:	fa07 f205 	lsl.w	r2, r7, r5
 8005442:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 8005446:	2802      	cmp	r0, #2
 8005448:	ea47 0702 	orr.w	r7, r7, r2
 800544c:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8005450:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
 8005454:	d1e6      	bne.n	8005424 <__register_exitproc+0x14>
 8005456:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 800545a:	431a      	orrs	r2, r3
 800545c:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8005460:	e7e0      	b.n	8005424 <__register_exitproc+0x14>
 8005462:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8005466:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 800546a:	e7d7      	b.n	800541c <__register_exitproc+0xc>
 800546c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005470:	e7de      	b.n	8005430 <__register_exitproc+0x20>
 8005472:	bf00      	nop
 8005474:	0800adc4 	.word	0x0800adc4

08005478 <register_fini>:
 8005478:	4b02      	ldr	r3, [pc, #8]	; (8005484 <register_fini+0xc>)
 800547a:	b113      	cbz	r3, 8005482 <register_fini+0xa>
 800547c:	4802      	ldr	r0, [pc, #8]	; (8005488 <register_fini+0x10>)
 800547e:	f7fe b9d5 	b.w	800382c <atexit>
 8005482:	4770      	bx	lr
 8005484:	00000000 	.word	0x00000000
 8005488:	08003845 	.word	0x08003845
 800548c:	00000000 	.word	0x00000000

08005490 <quorem>:
 8005490:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005494:	6903      	ldr	r3, [r0, #16]
 8005496:	690f      	ldr	r7, [r1, #16]
 8005498:	42bb      	cmp	r3, r7
 800549a:	b083      	sub	sp, #12
 800549c:	f2c0 8086 	blt.w	80055ac <quorem+0x11c>
 80054a0:	3f01      	subs	r7, #1
 80054a2:	f101 0614 	add.w	r6, r1, #20
 80054a6:	f100 0a14 	add.w	sl, r0, #20
 80054aa:	f856 3027 	ldr.w	r3, [r6, r7, lsl #2]
 80054ae:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80054b2:	00bc      	lsls	r4, r7, #2
 80054b4:	3301      	adds	r3, #1
 80054b6:	9400      	str	r4, [sp, #0]
 80054b8:	eb06 0904 	add.w	r9, r6, r4
 80054bc:	429a      	cmp	r2, r3
 80054be:	4454      	add	r4, sl
 80054c0:	fbb2 f8f3 	udiv	r8, r2, r3
 80054c4:	9401      	str	r4, [sp, #4]
 80054c6:	d33a      	bcc.n	800553e <quorem+0xae>
 80054c8:	2500      	movs	r5, #0
 80054ca:	462a      	mov	r2, r5
 80054cc:	46b6      	mov	lr, r6
 80054ce:	46d4      	mov	ip, sl
 80054d0:	f85e 4b04 	ldr.w	r4, [lr], #4
 80054d4:	f8dc 3000 	ldr.w	r3, [ip]
 80054d8:	fa1f fb84 	uxth.w	fp, r4
 80054dc:	fb08 550b 	mla	r5, r8, fp, r5
 80054e0:	ea4f 4b15 	mov.w	fp, r5, lsr #16
 80054e4:	0c24      	lsrs	r4, r4, #16
 80054e6:	fb08 b404 	mla	r4, r8, r4, fp
 80054ea:	b2ad      	uxth	r5, r5
 80054ec:	1b55      	subs	r5, r2, r5
 80054ee:	b2a2      	uxth	r2, r4
 80054f0:	ebc2 4213 	rsb	r2, r2, r3, lsr #16
 80054f4:	fa15 f383 	uxtah	r3, r5, r3
 80054f8:	eb02 4223 	add.w	r2, r2, r3, asr #16
 80054fc:	b29b      	uxth	r3, r3
 80054fe:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 8005502:	45f1      	cmp	r9, lr
 8005504:	ea4f 4514 	mov.w	r5, r4, lsr #16
 8005508:	f84c 3b04 	str.w	r3, [ip], #4
 800550c:	ea4f 4222 	mov.w	r2, r2, asr #16
 8005510:	d2de      	bcs.n	80054d0 <quorem+0x40>
 8005512:	9b00      	ldr	r3, [sp, #0]
 8005514:	f85a 3003 	ldr.w	r3, [sl, r3]
 8005518:	b98b      	cbnz	r3, 800553e <quorem+0xae>
 800551a:	9a01      	ldr	r2, [sp, #4]
 800551c:	1f13      	subs	r3, r2, #4
 800551e:	459a      	cmp	sl, r3
 8005520:	d20c      	bcs.n	800553c <quorem+0xac>
 8005522:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8005526:	b94b      	cbnz	r3, 800553c <quorem+0xac>
 8005528:	f1a2 0308 	sub.w	r3, r2, #8
 800552c:	e002      	b.n	8005534 <quorem+0xa4>
 800552e:	681a      	ldr	r2, [r3, #0]
 8005530:	3b04      	subs	r3, #4
 8005532:	b91a      	cbnz	r2, 800553c <quorem+0xac>
 8005534:	459a      	cmp	sl, r3
 8005536:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800553a:	d3f8      	bcc.n	800552e <quorem+0x9e>
 800553c:	6107      	str	r7, [r0, #16]
 800553e:	4604      	mov	r4, r0
 8005540:	f002 f910 	bl	8007764 <__mcmp>
 8005544:	2800      	cmp	r0, #0
 8005546:	db2d      	blt.n	80055a4 <quorem+0x114>
 8005548:	f108 0801 	add.w	r8, r8, #1
 800554c:	4650      	mov	r0, sl
 800554e:	2300      	movs	r3, #0
 8005550:	f856 1b04 	ldr.w	r1, [r6], #4
 8005554:	6805      	ldr	r5, [r0, #0]
 8005556:	b28a      	uxth	r2, r1
 8005558:	1a9a      	subs	r2, r3, r2
 800555a:	0c0b      	lsrs	r3, r1, #16
 800555c:	fa12 f285 	uxtah	r2, r2, r5
 8005560:	ebc3 4315 	rsb	r3, r3, r5, lsr #16
 8005564:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8005568:	b292      	uxth	r2, r2
 800556a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800556e:	45b1      	cmp	r9, r6
 8005570:	f840 2b04 	str.w	r2, [r0], #4
 8005574:	ea4f 4323 	mov.w	r3, r3, asr #16
 8005578:	d2ea      	bcs.n	8005550 <quorem+0xc0>
 800557a:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800557e:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8005582:	b97a      	cbnz	r2, 80055a4 <quorem+0x114>
 8005584:	1f1a      	subs	r2, r3, #4
 8005586:	4592      	cmp	sl, r2
 8005588:	d20b      	bcs.n	80055a2 <quorem+0x112>
 800558a:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800558e:	b942      	cbnz	r2, 80055a2 <quorem+0x112>
 8005590:	3b08      	subs	r3, #8
 8005592:	e002      	b.n	800559a <quorem+0x10a>
 8005594:	681a      	ldr	r2, [r3, #0]
 8005596:	3b04      	subs	r3, #4
 8005598:	b91a      	cbnz	r2, 80055a2 <quorem+0x112>
 800559a:	459a      	cmp	sl, r3
 800559c:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80055a0:	d3f8      	bcc.n	8005594 <quorem+0x104>
 80055a2:	6127      	str	r7, [r4, #16]
 80055a4:	4640      	mov	r0, r8
 80055a6:	b003      	add	sp, #12
 80055a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80055ac:	2000      	movs	r0, #0
 80055ae:	b003      	add	sp, #12
 80055b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080055b4 <_dtoa_r>:
 80055b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055b8:	ec57 6b10 	vmov	r6, r7, d0
 80055bc:	b097      	sub	sp, #92	; 0x5c
 80055be:	6c05      	ldr	r5, [r0, #64]	; 0x40
 80055c0:	9c20      	ldr	r4, [sp, #128]	; 0x80
 80055c2:	9103      	str	r1, [sp, #12]
 80055c4:	4682      	mov	sl, r0
 80055c6:	920a      	str	r2, [sp, #40]	; 0x28
 80055c8:	9307      	str	r3, [sp, #28]
 80055ca:	e9cd 6700 	strd	r6, r7, [sp]
 80055ce:	b155      	cbz	r5, 80055e6 <_dtoa_r+0x32>
 80055d0:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80055d2:	606a      	str	r2, [r5, #4]
 80055d4:	2301      	movs	r3, #1
 80055d6:	4093      	lsls	r3, r2
 80055d8:	60ab      	str	r3, [r5, #8]
 80055da:	4629      	mov	r1, r5
 80055dc:	f001 fe52 	bl	8007284 <_Bfree>
 80055e0:	2300      	movs	r3, #0
 80055e2:	f8ca 3040 	str.w	r3, [sl, #64]	; 0x40
 80055e6:	1e3e      	subs	r6, r7, #0
 80055e8:	bfb4      	ite	lt
 80055ea:	2301      	movlt	r3, #1
 80055ec:	2300      	movge	r3, #0
 80055ee:	6023      	str	r3, [r4, #0]
 80055f0:	4b75      	ldr	r3, [pc, #468]	; (80057c8 <_dtoa_r+0x214>)
 80055f2:	bfbc      	itt	lt
 80055f4:	f026 4600 	biclt.w	r6, r6, #2147483648	; 0x80000000
 80055f8:	9601      	strlt	r6, [sp, #4]
 80055fa:	43b3      	bics	r3, r6
 80055fc:	f000 80ae 	beq.w	800575c <_dtoa_r+0x1a8>
 8005600:	ed9d 7b00 	vldr	d7, [sp]
 8005604:	2200      	movs	r2, #0
 8005606:	2300      	movs	r3, #0
 8005608:	ec51 0b17 	vmov	r0, r1, d7
 800560c:	ed8d 7b04 	vstr	d7, [sp, #16]
 8005610:	f004 fd9e 	bl	800a150 <__aeabi_dcmpeq>
 8005614:	4605      	mov	r5, r0
 8005616:	b178      	cbz	r0, 8005638 <_dtoa_r+0x84>
 8005618:	9a07      	ldr	r2, [sp, #28]
 800561a:	2301      	movs	r3, #1
 800561c:	6013      	str	r3, [r2, #0]
 800561e:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8005620:	2b00      	cmp	r3, #0
 8005622:	f000 8310 	beq.w	8005c46 <_dtoa_r+0x692>
 8005626:	4b69      	ldr	r3, [pc, #420]	; (80057cc <_dtoa_r+0x218>)
 8005628:	9a21      	ldr	r2, [sp, #132]	; 0x84
 800562a:	6013      	str	r3, [r2, #0]
 800562c:	3b01      	subs	r3, #1
 800562e:	9302      	str	r3, [sp, #8]
 8005630:	9802      	ldr	r0, [sp, #8]
 8005632:	b017      	add	sp, #92	; 0x5c
 8005634:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005638:	e9dd 7804 	ldrd	r7, r8, [sp, #16]
 800563c:	aa14      	add	r2, sp, #80	; 0x50
 800563e:	a915      	add	r1, sp, #84	; 0x54
 8005640:	ec48 7b10 	vmov	d0, r7, r8
 8005644:	4650      	mov	r0, sl
 8005646:	f002 f9c1 	bl	80079cc <__d2b>
 800564a:	0d34      	lsrs	r4, r6, #20
 800564c:	4683      	mov	fp, r0
 800564e:	f040 809b 	bne.w	8005788 <_dtoa_r+0x1d4>
 8005652:	e9dd 5414 	ldrd	r5, r4, [sp, #80]	; 0x50
 8005656:	442c      	add	r4, r5
 8005658:	f204 4332 	addw	r3, r4, #1074	; 0x432
 800565c:	2b20      	cmp	r3, #32
 800565e:	f340 83ba 	ble.w	8005dd6 <_dtoa_r+0x822>
 8005662:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8005666:	409e      	lsls	r6, r3
 8005668:	9b00      	ldr	r3, [sp, #0]
 800566a:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800566e:	fa23 f000 	lsr.w	r0, r3, r0
 8005672:	4330      	orrs	r0, r6
 8005674:	f004 fa8a 	bl	8009b8c <__aeabi_ui2d>
 8005678:	f1a1 73f8 	sub.w	r3, r1, #32505856	; 0x1f00000
 800567c:	2101      	movs	r1, #1
 800567e:	4602      	mov	r2, r0
 8005680:	3c01      	subs	r4, #1
 8005682:	910e      	str	r1, [sp, #56]	; 0x38
 8005684:	4610      	mov	r0, r2
 8005686:	4619      	mov	r1, r3
 8005688:	2200      	movs	r2, #0
 800568a:	4b51      	ldr	r3, [pc, #324]	; (80057d0 <_dtoa_r+0x21c>)
 800568c:	f004 f940 	bl	8009910 <__aeabi_dsub>
 8005690:	a347      	add	r3, pc, #284	; (adr r3, 80057b0 <_dtoa_r+0x1fc>)
 8005692:	e9d3 2300 	ldrd	r2, r3, [r3]
 8005696:	f004 faf3 	bl	8009c80 <__aeabi_dmul>
 800569a:	a347      	add	r3, pc, #284	; (adr r3, 80057b8 <_dtoa_r+0x204>)
 800569c:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056a0:	f004 f938 	bl	8009914 <__adddf3>
 80056a4:	4606      	mov	r6, r0
 80056a6:	4620      	mov	r0, r4
 80056a8:	460f      	mov	r7, r1
 80056aa:	f004 fa7f 	bl	8009bac <__aeabi_i2d>
 80056ae:	a344      	add	r3, pc, #272	; (adr r3, 80057c0 <_dtoa_r+0x20c>)
 80056b0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056b4:	f004 fae4 	bl	8009c80 <__aeabi_dmul>
 80056b8:	4602      	mov	r2, r0
 80056ba:	460b      	mov	r3, r1
 80056bc:	4630      	mov	r0, r6
 80056be:	4639      	mov	r1, r7
 80056c0:	f004 f928 	bl	8009914 <__adddf3>
 80056c4:	4606      	mov	r6, r0
 80056c6:	460f      	mov	r7, r1
 80056c8:	f004 fd8a 	bl	800a1e0 <__aeabi_d2iz>
 80056cc:	2200      	movs	r2, #0
 80056ce:	4681      	mov	r9, r0
 80056d0:	2300      	movs	r3, #0
 80056d2:	4630      	mov	r0, r6
 80056d4:	4639      	mov	r1, r7
 80056d6:	f004 fd45 	bl	800a164 <__aeabi_dcmplt>
 80056da:	2800      	cmp	r0, #0
 80056dc:	f040 82a6 	bne.w	8005c2c <_dtoa_r+0x678>
 80056e0:	1b2c      	subs	r4, r5, r4
 80056e2:	f1b9 0f16 	cmp.w	r9, #22
 80056e6:	f104 38ff 	add.w	r8, r4, #4294967295	; 0xffffffff
 80056ea:	f200 8293 	bhi.w	8005c14 <_dtoa_r+0x660>
 80056ee:	4b39      	ldr	r3, [pc, #228]	; (80057d4 <_dtoa_r+0x220>)
 80056f0:	eb03 03c9 	add.w	r3, r3, r9, lsl #3
 80056f4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80056f8:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 80056fc:	f004 fd32 	bl	800a164 <__aeabi_dcmplt>
 8005700:	2800      	cmp	r0, #0
 8005702:	d06d      	beq.n	80057e0 <_dtoa_r+0x22c>
 8005704:	2300      	movs	r3, #0
 8005706:	f1b8 0f00 	cmp.w	r8, #0
 800570a:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 800570e:	930d      	str	r3, [sp, #52]	; 0x34
 8005710:	f2c0 8286 	blt.w	8005c20 <_dtoa_r+0x66c>
 8005714:	2300      	movs	r3, #0
 8005716:	9309      	str	r3, [sp, #36]	; 0x24
 8005718:	f1b9 0f00 	cmp.w	r9, #0
 800571c:	da66      	bge.n	80057ec <_dtoa_r+0x238>
 800571e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005720:	f8cd 9018 	str.w	r9, [sp, #24]
 8005724:	eba3 0309 	sub.w	r3, r3, r9
 8005728:	9309      	str	r3, [sp, #36]	; 0x24
 800572a:	f1c9 0300 	rsb	r3, r9, #0
 800572e:	930c      	str	r3, [sp, #48]	; 0x30
 8005730:	9b03      	ldr	r3, [sp, #12]
 8005732:	2b09      	cmp	r3, #9
 8005734:	f04f 0900 	mov.w	r9, #0
 8005738:	d860      	bhi.n	80057fc <_dtoa_r+0x248>
 800573a:	2b05      	cmp	r3, #5
 800573c:	f340 8349 	ble.w	8005dd2 <_dtoa_r+0x81e>
 8005740:	3b04      	subs	r3, #4
 8005742:	9303      	str	r3, [sp, #12]
 8005744:	2400      	movs	r4, #0
 8005746:	9b03      	ldr	r3, [sp, #12]
 8005748:	3b02      	subs	r3, #2
 800574a:	2b03      	cmp	r3, #3
 800574c:	f200 8651 	bhi.w	80063f2 <_dtoa_r+0xe3e>
 8005750:	e8df f013 	tbh	[pc, r3, lsl #1]
 8005754:	04650468 	.word	0x04650468
 8005758:	0458043e 	.word	0x0458043e
 800575c:	9a07      	ldr	r2, [sp, #28]
 800575e:	f242 730f 	movw	r3, #9999	; 0x270f
 8005762:	6013      	str	r3, [r2, #0]
 8005764:	9b00      	ldr	r3, [sp, #0]
 8005766:	f3c6 0613 	ubfx	r6, r6, #0, #20
 800576a:	4333      	orrs	r3, r6
 800576c:	d118      	bne.n	80057a0 <_dtoa_r+0x1ec>
 800576e:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8005770:	2b00      	cmp	r3, #0
 8005772:	f000 8635 	beq.w	80063e0 <_dtoa_r+0xe2c>
 8005776:	4b18      	ldr	r3, [pc, #96]	; (80057d8 <_dtoa_r+0x224>)
 8005778:	9302      	str	r3, [sp, #8]
 800577a:	3308      	adds	r3, #8
 800577c:	9a21      	ldr	r2, [sp, #132]	; 0x84
 800577e:	9802      	ldr	r0, [sp, #8]
 8005780:	6013      	str	r3, [r2, #0]
 8005782:	b017      	add	sp, #92	; 0x5c
 8005784:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005788:	f3c8 0113 	ubfx	r1, r8, #0, #20
 800578c:	f041 537f 	orr.w	r3, r1, #1069547520	; 0x3fc00000
 8005790:	950e      	str	r5, [sp, #56]	; 0x38
 8005792:	463a      	mov	r2, r7
 8005794:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8005798:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 800579c:	9d14      	ldr	r5, [sp, #80]	; 0x50
 800579e:	e771      	b.n	8005684 <_dtoa_r+0xd0>
 80057a0:	9b21      	ldr	r3, [sp, #132]	; 0x84
 80057a2:	2b00      	cmp	r3, #0
 80057a4:	f040 8403 	bne.w	8005fae <_dtoa_r+0x9fa>
 80057a8:	4b0c      	ldr	r3, [pc, #48]	; (80057dc <_dtoa_r+0x228>)
 80057aa:	9302      	str	r3, [sp, #8]
 80057ac:	e740      	b.n	8005630 <_dtoa_r+0x7c>
 80057ae:	bf00      	nop
 80057b0:	636f4361 	.word	0x636f4361
 80057b4:	3fd287a7 	.word	0x3fd287a7
 80057b8:	8b60c8b3 	.word	0x8b60c8b3
 80057bc:	3fc68a28 	.word	0x3fc68a28
 80057c0:	509f79fb 	.word	0x509f79fb
 80057c4:	3fd34413 	.word	0x3fd34413
 80057c8:	7ff00000 	.word	0x7ff00000
 80057cc:	0800ae29 	.word	0x0800ae29
 80057d0:	3ff80000 	.word	0x3ff80000
 80057d4:	0800ae98 	.word	0x0800ae98
 80057d8:	0800ae30 	.word	0x0800ae30
 80057dc:	0800ae2c 	.word	0x0800ae2c
 80057e0:	f1b8 0f00 	cmp.w	r8, #0
 80057e4:	f2c0 84be 	blt.w	8006164 <_dtoa_r+0xbb0>
 80057e8:	900d      	str	r0, [sp, #52]	; 0x34
 80057ea:	9009      	str	r0, [sp, #36]	; 0x24
 80057ec:	2300      	movs	r3, #0
 80057ee:	930c      	str	r3, [sp, #48]	; 0x30
 80057f0:	9b03      	ldr	r3, [sp, #12]
 80057f2:	f8cd 9018 	str.w	r9, [sp, #24]
 80057f6:	2b09      	cmp	r3, #9
 80057f8:	44c8      	add	r8, r9
 80057fa:	d99e      	bls.n	800573a <_dtoa_r+0x186>
 80057fc:	2300      	movs	r3, #0
 80057fe:	2401      	movs	r4, #1
 8005800:	9303      	str	r3, [sp, #12]
 8005802:	e9cd 340a 	strd	r3, r4, [sp, #40]	; 0x28
 8005806:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800580a:	9308      	str	r3, [sp, #32]
 800580c:	2100      	movs	r1, #0
 800580e:	9b08      	ldr	r3, [sp, #32]
 8005810:	f8ca 1044 	str.w	r1, [sl, #68]	; 0x44
 8005814:	930f      	str	r3, [sp, #60]	; 0x3c
 8005816:	4650      	mov	r0, sl
 8005818:	f001 fd0e 	bl	8007238 <_Balloc>
 800581c:	9002      	str	r0, [sp, #8]
 800581e:	2800      	cmp	r0, #0
 8005820:	f000 85f0 	beq.w	8006404 <_dtoa_r+0xe50>
 8005824:	9b02      	ldr	r3, [sp, #8]
 8005826:	f8ca 3040 	str.w	r3, [sl, #64]	; 0x40
 800582a:	9b08      	ldr	r3, [sp, #32]
 800582c:	2b0e      	cmp	r3, #14
 800582e:	f200 810a 	bhi.w	8005a46 <_dtoa_r+0x492>
 8005832:	2c00      	cmp	r4, #0
 8005834:	f000 8107 	beq.w	8005a46 <_dtoa_r+0x492>
 8005838:	9906      	ldr	r1, [sp, #24]
 800583a:	2900      	cmp	r1, #0
 800583c:	f340 8468 	ble.w	8006110 <_dtoa_r+0xb5c>
 8005840:	4bb1      	ldr	r3, [pc, #708]	; (8005b08 <_dtoa_r+0x554>)
 8005842:	f001 020f 	and.w	r2, r1, #15
 8005846:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800584a:	ed93 7b00 	vldr	d7, [r3]
 800584e:	110c      	asrs	r4, r1, #4
 8005850:	06e2      	lsls	r2, r4, #27
 8005852:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005856:	f140 8408 	bpl.w	800606a <_dtoa_r+0xab6>
 800585a:	4bac      	ldr	r3, [pc, #688]	; (8005b0c <_dtoa_r+0x558>)
 800585c:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 8005860:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005864:	f004 fb36 	bl	8009ed4 <__aeabi_ddiv>
 8005868:	e9cd 0100 	strd	r0, r1, [sp]
 800586c:	f004 040f 	and.w	r4, r4, #15
 8005870:	2603      	movs	r6, #3
 8005872:	b17c      	cbz	r4, 8005894 <_dtoa_r+0x2e0>
 8005874:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005878:	4da4      	ldr	r5, [pc, #656]	; (8005b0c <_dtoa_r+0x558>)
 800587a:	07e3      	lsls	r3, r4, #31
 800587c:	d504      	bpl.n	8005888 <_dtoa_r+0x2d4>
 800587e:	e9d5 2300 	ldrd	r2, r3, [r5]
 8005882:	f004 f9fd 	bl	8009c80 <__aeabi_dmul>
 8005886:	3601      	adds	r6, #1
 8005888:	1064      	asrs	r4, r4, #1
 800588a:	f105 0508 	add.w	r5, r5, #8
 800588e:	d1f4      	bne.n	800587a <_dtoa_r+0x2c6>
 8005890:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
 8005894:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005898:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800589c:	f004 fb1a 	bl	8009ed4 <__aeabi_ddiv>
 80058a0:	e9cd 0100 	strd	r0, r1, [sp]
 80058a4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80058a6:	b153      	cbz	r3, 80058be <_dtoa_r+0x30a>
 80058a8:	e9dd 4500 	ldrd	r4, r5, [sp]
 80058ac:	2200      	movs	r2, #0
 80058ae:	4b98      	ldr	r3, [pc, #608]	; (8005b10 <_dtoa_r+0x55c>)
 80058b0:	4620      	mov	r0, r4
 80058b2:	4629      	mov	r1, r5
 80058b4:	f004 fc56 	bl	800a164 <__aeabi_dcmplt>
 80058b8:	2800      	cmp	r0, #0
 80058ba:	f040 8527 	bne.w	800630c <_dtoa_r+0xd58>
 80058be:	4630      	mov	r0, r6
 80058c0:	f004 f974 	bl	8009bac <__aeabi_i2d>
 80058c4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80058c8:	f004 f9da 	bl	8009c80 <__aeabi_dmul>
 80058cc:	4b91      	ldr	r3, [pc, #580]	; (8005b14 <_dtoa_r+0x560>)
 80058ce:	2200      	movs	r2, #0
 80058d0:	f004 f820 	bl	8009914 <__adddf3>
 80058d4:	9b08      	ldr	r3, [sp, #32]
 80058d6:	4604      	mov	r4, r0
 80058d8:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 80058dc:	2b00      	cmp	r3, #0
 80058de:	f000 83fb 	beq.w	80060d8 <_dtoa_r+0xb24>
 80058e2:	9b06      	ldr	r3, [sp, #24]
 80058e4:	9312      	str	r3, [sp, #72]	; 0x48
 80058e6:	9b08      	ldr	r3, [sp, #32]
 80058e8:	9310      	str	r3, [sp, #64]	; 0x40
 80058ea:	e9dd 6700 	ldrd	r6, r7, [sp]
 80058ee:	4639      	mov	r1, r7
 80058f0:	4630      	mov	r0, r6
 80058f2:	f004 fc75 	bl	800a1e0 <__aeabi_d2iz>
 80058f6:	9000      	str	r0, [sp, #0]
 80058f8:	f004 f958 	bl	8009bac <__aeabi_i2d>
 80058fc:	4602      	mov	r2, r0
 80058fe:	460b      	mov	r3, r1
 8005900:	4630      	mov	r0, r6
 8005902:	4639      	mov	r1, r7
 8005904:	f004 f804 	bl	8009910 <__aeabi_dsub>
 8005908:	4b7f      	ldr	r3, [pc, #508]	; (8005b08 <_dtoa_r+0x554>)
 800590a:	9a00      	ldr	r2, [sp, #0]
 800590c:	460f      	mov	r7, r1
 800590e:	9910      	ldr	r1, [sp, #64]	; 0x40
 8005910:	4606      	mov	r6, r0
 8005912:	eb03 03c1 	add.w	r3, r3, r1, lsl #3
 8005916:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8005918:	9902      	ldr	r1, [sp, #8]
 800591a:	3230      	adds	r2, #48	; 0x30
 800591c:	e9cd 4500 	strd	r4, r5, [sp]
 8005920:	b2d5      	uxtb	r5, r2
 8005922:	1c4c      	adds	r4, r1, #1
 8005924:	e953 2302 	ldrd	r2, r3, [r3, #-8]
 8005928:	2800      	cmp	r0, #0
 800592a:	f000 8497 	beq.w	800625c <_dtoa_r+0xca8>
 800592e:	2000      	movs	r0, #0
 8005930:	4979      	ldr	r1, [pc, #484]	; (8005b18 <_dtoa_r+0x564>)
 8005932:	f004 facf 	bl	8009ed4 <__aeabi_ddiv>
 8005936:	e9dd 2300 	ldrd	r2, r3, [sp]
 800593a:	f003 ffe9 	bl	8009910 <__aeabi_dsub>
 800593e:	9b02      	ldr	r3, [sp, #8]
 8005940:	4632      	mov	r2, r6
 8005942:	701d      	strb	r5, [r3, #0]
 8005944:	463b      	mov	r3, r7
 8005946:	e9cd 0100 	strd	r0, r1, [sp]
 800594a:	f004 fc29 	bl	800a1a0 <__aeabi_dcmpgt>
 800594e:	2800      	cmp	r0, #0
 8005950:	f040 84d4 	bne.w	80062fc <_dtoa_r+0xd48>
 8005954:	4632      	mov	r2, r6
 8005956:	463b      	mov	r3, r7
 8005958:	2000      	movs	r0, #0
 800595a:	496d      	ldr	r1, [pc, #436]	; (8005b10 <_dtoa_r+0x55c>)
 800595c:	f003 ffd8 	bl	8009910 <__aeabi_dsub>
 8005960:	4602      	mov	r2, r0
 8005962:	460b      	mov	r3, r1
 8005964:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005968:	f004 fc1a 	bl	800a1a0 <__aeabi_dcmpgt>
 800596c:	2800      	cmp	r0, #0
 800596e:	f040 8532 	bne.w	80063d6 <_dtoa_r+0xe22>
 8005972:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005974:	2b01      	cmp	r3, #1
 8005976:	d062      	beq.n	8005a3e <_dtoa_r+0x48a>
 8005978:	9a02      	ldr	r2, [sp, #8]
 800597a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800597e:	4413      	add	r3, r2
 8005980:	f8cd 804c 	str.w	r8, [sp, #76]	; 0x4c
 8005984:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005988:	f8cd b000 	str.w	fp, [sp]
 800598c:	46d3      	mov	fp, sl
 800598e:	469a      	mov	sl, r3
 8005990:	e00e      	b.n	80059b0 <_dtoa_r+0x3fc>
 8005992:	4632      	mov	r2, r6
 8005994:	463b      	mov	r3, r7
 8005996:	2000      	movs	r0, #0
 8005998:	495d      	ldr	r1, [pc, #372]	; (8005b10 <_dtoa_r+0x55c>)
 800599a:	f003 ffb9 	bl	8009910 <__aeabi_dsub>
 800599e:	4642      	mov	r2, r8
 80059a0:	464b      	mov	r3, r9
 80059a2:	f004 fbdf 	bl	800a164 <__aeabi_dcmplt>
 80059a6:	2800      	cmp	r0, #0
 80059a8:	f040 84ee 	bne.w	8006388 <_dtoa_r+0xdd4>
 80059ac:	4554      	cmp	r4, sl
 80059ae:	d03f      	beq.n	8005a30 <_dtoa_r+0x47c>
 80059b0:	4640      	mov	r0, r8
 80059b2:	4649      	mov	r1, r9
 80059b4:	2200      	movs	r2, #0
 80059b6:	4b59      	ldr	r3, [pc, #356]	; (8005b1c <_dtoa_r+0x568>)
 80059b8:	f004 f962 	bl	8009c80 <__aeabi_dmul>
 80059bc:	2200      	movs	r2, #0
 80059be:	4b57      	ldr	r3, [pc, #348]	; (8005b1c <_dtoa_r+0x568>)
 80059c0:	4680      	mov	r8, r0
 80059c2:	4689      	mov	r9, r1
 80059c4:	4630      	mov	r0, r6
 80059c6:	4639      	mov	r1, r7
 80059c8:	f004 f95a 	bl	8009c80 <__aeabi_dmul>
 80059cc:	460f      	mov	r7, r1
 80059ce:	4606      	mov	r6, r0
 80059d0:	f004 fc06 	bl	800a1e0 <__aeabi_d2iz>
 80059d4:	4605      	mov	r5, r0
 80059d6:	f004 f8e9 	bl	8009bac <__aeabi_i2d>
 80059da:	4602      	mov	r2, r0
 80059dc:	460b      	mov	r3, r1
 80059de:	4630      	mov	r0, r6
 80059e0:	4639      	mov	r1, r7
 80059e2:	f003 ff95 	bl	8009910 <__aeabi_dsub>
 80059e6:	3530      	adds	r5, #48	; 0x30
 80059e8:	b2ed      	uxtb	r5, r5
 80059ea:	f804 5b01 	strb.w	r5, [r4], #1
 80059ee:	4642      	mov	r2, r8
 80059f0:	464b      	mov	r3, r9
 80059f2:	4606      	mov	r6, r0
 80059f4:	460f      	mov	r7, r1
 80059f6:	f004 fbb5 	bl	800a164 <__aeabi_dcmplt>
 80059fa:	2800      	cmp	r0, #0
 80059fc:	d0c9      	beq.n	8005992 <_dtoa_r+0x3de>
 80059fe:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005a00:	46da      	mov	sl, fp
 8005a02:	3301      	adds	r3, #1
 8005a04:	f8dd b000 	ldr.w	fp, [sp]
 8005a08:	9306      	str	r3, [sp, #24]
 8005a0a:	4659      	mov	r1, fp
 8005a0c:	4650      	mov	r0, sl
 8005a0e:	f001 fc39 	bl	8007284 <_Bfree>
 8005a12:	2300      	movs	r3, #0
 8005a14:	7023      	strb	r3, [r4, #0]
 8005a16:	9b07      	ldr	r3, [sp, #28]
 8005a18:	461a      	mov	r2, r3
 8005a1a:	9b06      	ldr	r3, [sp, #24]
 8005a1c:	6013      	str	r3, [r2, #0]
 8005a1e:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8005a20:	2b00      	cmp	r3, #0
 8005a22:	f43f ae05 	beq.w	8005630 <_dtoa_r+0x7c>
 8005a26:	9802      	ldr	r0, [sp, #8]
 8005a28:	601c      	str	r4, [r3, #0]
 8005a2a:	b017      	add	sp, #92	; 0x5c
 8005a2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a30:	46da      	mov	sl, fp
 8005a32:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
 8005a36:	f8dd 804c 	ldr.w	r8, [sp, #76]	; 0x4c
 8005a3a:	f8dd b000 	ldr.w	fp, [sp]
 8005a3e:	e9dd 3404 	ldrd	r3, r4, [sp, #16]
 8005a42:	e9cd 3400 	strd	r3, r4, [sp]
 8005a46:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005a48:	2b00      	cmp	r3, #0
 8005a4a:	f2c0 80c6 	blt.w	8005bda <_dtoa_r+0x626>
 8005a4e:	9a06      	ldr	r2, [sp, #24]
 8005a50:	2a0e      	cmp	r2, #14
 8005a52:	f300 80c2 	bgt.w	8005bda <_dtoa_r+0x626>
 8005a56:	4b2c      	ldr	r3, [pc, #176]	; (8005b08 <_dtoa_r+0x554>)
 8005a58:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005a5c:	e9d3 8900 	ldrd	r8, r9, [r3]
 8005a60:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005a62:	2b00      	cmp	r3, #0
 8005a64:	da17      	bge.n	8005a96 <_dtoa_r+0x4e2>
 8005a66:	9f08      	ldr	r7, [sp, #32]
 8005a68:	2f00      	cmp	r7, #0
 8005a6a:	dc14      	bgt.n	8005a96 <_dtoa_r+0x4e2>
 8005a6c:	f040 834d 	bne.w	800610a <_dtoa_r+0xb56>
 8005a70:	2200      	movs	r2, #0
 8005a72:	4b2b      	ldr	r3, [pc, #172]	; (8005b20 <_dtoa_r+0x56c>)
 8005a74:	4640      	mov	r0, r8
 8005a76:	4649      	mov	r1, r9
 8005a78:	f004 f902 	bl	8009c80 <__aeabi_dmul>
 8005a7c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005a80:	f004 fb84 	bl	800a18c <__aeabi_dcmpge>
 8005a84:	2800      	cmp	r0, #0
 8005a86:	f000 83c4 	beq.w	8006212 <_dtoa_r+0xc5e>
 8005a8a:	9f08      	ldr	r7, [sp, #32]
 8005a8c:	463d      	mov	r5, r7
 8005a8e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005a90:	9c02      	ldr	r4, [sp, #8]
 8005a92:	43db      	mvns	r3, r3
 8005a94:	e25f      	b.n	8005f56 <_dtoa_r+0x9a2>
 8005a96:	e9dd 4500 	ldrd	r4, r5, [sp]
 8005a9a:	4642      	mov	r2, r8
 8005a9c:	464b      	mov	r3, r9
 8005a9e:	4620      	mov	r0, r4
 8005aa0:	4629      	mov	r1, r5
 8005aa2:	f004 fa17 	bl	8009ed4 <__aeabi_ddiv>
 8005aa6:	f004 fb9b 	bl	800a1e0 <__aeabi_d2iz>
 8005aaa:	4606      	mov	r6, r0
 8005aac:	9000      	str	r0, [sp, #0]
 8005aae:	f004 f87d 	bl	8009bac <__aeabi_i2d>
 8005ab2:	4642      	mov	r2, r8
 8005ab4:	464b      	mov	r3, r9
 8005ab6:	f004 f8e3 	bl	8009c80 <__aeabi_dmul>
 8005aba:	4602      	mov	r2, r0
 8005abc:	460b      	mov	r3, r1
 8005abe:	4620      	mov	r0, r4
 8005ac0:	4629      	mov	r1, r5
 8005ac2:	9c02      	ldr	r4, [sp, #8]
 8005ac4:	4635      	mov	r5, r6
 8005ac6:	3530      	adds	r5, #48	; 0x30
 8005ac8:	f003 ff22 	bl	8009910 <__aeabi_dsub>
 8005acc:	9e06      	ldr	r6, [sp, #24]
 8005ace:	f804 5b01 	strb.w	r5, [r4], #1
 8005ad2:	9d08      	ldr	r5, [sp, #32]
 8005ad4:	3601      	adds	r6, #1
 8005ad6:	2d01      	cmp	r5, #1
 8005ad8:	4602      	mov	r2, r0
 8005ada:	460b      	mov	r3, r1
 8005adc:	9606      	str	r6, [sp, #24]
 8005ade:	d052      	beq.n	8005b86 <_dtoa_r+0x5d2>
 8005ae0:	2200      	movs	r2, #0
 8005ae2:	4b0e      	ldr	r3, [pc, #56]	; (8005b1c <_dtoa_r+0x568>)
 8005ae4:	f004 f8cc 	bl	8009c80 <__aeabi_dmul>
 8005ae8:	2200      	movs	r2, #0
 8005aea:	2300      	movs	r3, #0
 8005aec:	4606      	mov	r6, r0
 8005aee:	460f      	mov	r7, r1
 8005af0:	f004 fb2e 	bl	800a150 <__aeabi_dcmpeq>
 8005af4:	2800      	cmp	r0, #0
 8005af6:	d188      	bne.n	8005a0a <_dtoa_r+0x456>
 8005af8:	f8cd b000 	str.w	fp, [sp]
 8005afc:	2501      	movs	r5, #1
 8005afe:	f8dd b020 	ldr.w	fp, [sp, #32]
 8005b02:	f8cd a00c 	str.w	sl, [sp, #12]
 8005b06:	e01a      	b.n	8005b3e <_dtoa_r+0x58a>
 8005b08:	0800ae98 	.word	0x0800ae98
 8005b0c:	0800af88 	.word	0x0800af88
 8005b10:	3ff00000 	.word	0x3ff00000
 8005b14:	401c0000 	.word	0x401c0000
 8005b18:	3fe00000 	.word	0x3fe00000
 8005b1c:	40240000 	.word	0x40240000
 8005b20:	40140000 	.word	0x40140000
 8005b24:	2200      	movs	r2, #0
 8005b26:	4bb9      	ldr	r3, [pc, #740]	; (8005e0c <_dtoa_r+0x858>)
 8005b28:	f004 f8aa 	bl	8009c80 <__aeabi_dmul>
 8005b2c:	2200      	movs	r2, #0
 8005b2e:	2300      	movs	r3, #0
 8005b30:	4606      	mov	r6, r0
 8005b32:	460f      	mov	r7, r1
 8005b34:	f004 fb0c 	bl	800a150 <__aeabi_dcmpeq>
 8005b38:	2800      	cmp	r0, #0
 8005b3a:	f040 8360 	bne.w	80061fe <_dtoa_r+0xc4a>
 8005b3e:	4642      	mov	r2, r8
 8005b40:	464b      	mov	r3, r9
 8005b42:	4630      	mov	r0, r6
 8005b44:	4639      	mov	r1, r7
 8005b46:	f004 f9c5 	bl	8009ed4 <__aeabi_ddiv>
 8005b4a:	f004 fb49 	bl	800a1e0 <__aeabi_d2iz>
 8005b4e:	4682      	mov	sl, r0
 8005b50:	f004 f82c 	bl	8009bac <__aeabi_i2d>
 8005b54:	4642      	mov	r2, r8
 8005b56:	464b      	mov	r3, r9
 8005b58:	f004 f892 	bl	8009c80 <__aeabi_dmul>
 8005b5c:	4602      	mov	r2, r0
 8005b5e:	460b      	mov	r3, r1
 8005b60:	4630      	mov	r0, r6
 8005b62:	4639      	mov	r1, r7
 8005b64:	f003 fed4 	bl	8009910 <__aeabi_dsub>
 8005b68:	3501      	adds	r5, #1
 8005b6a:	f10a 0630 	add.w	r6, sl, #48	; 0x30
 8005b6e:	45ab      	cmp	fp, r5
 8005b70:	4602      	mov	r2, r0
 8005b72:	460b      	mov	r3, r1
 8005b74:	f804 6b01 	strb.w	r6, [r4], #1
 8005b78:	d1d4      	bne.n	8005b24 <_dtoa_r+0x570>
 8005b7a:	f8dd b000 	ldr.w	fp, [sp]
 8005b7e:	f8cd a000 	str.w	sl, [sp]
 8005b82:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8005b86:	4610      	mov	r0, r2
 8005b88:	4619      	mov	r1, r3
 8005b8a:	f003 fec3 	bl	8009914 <__adddf3>
 8005b8e:	4642      	mov	r2, r8
 8005b90:	464b      	mov	r3, r9
 8005b92:	4606      	mov	r6, r0
 8005b94:	460f      	mov	r7, r1
 8005b96:	f004 fb03 	bl	800a1a0 <__aeabi_dcmpgt>
 8005b9a:	b960      	cbnz	r0, 8005bb6 <_dtoa_r+0x602>
 8005b9c:	4642      	mov	r2, r8
 8005b9e:	464b      	mov	r3, r9
 8005ba0:	4630      	mov	r0, r6
 8005ba2:	4639      	mov	r1, r7
 8005ba4:	f004 fad4 	bl	800a150 <__aeabi_dcmpeq>
 8005ba8:	2800      	cmp	r0, #0
 8005baa:	f43f af2e 	beq.w	8005a0a <_dtoa_r+0x456>
 8005bae:	9b00      	ldr	r3, [sp, #0]
 8005bb0:	07d9      	lsls	r1, r3, #31
 8005bb2:	f57f af2a 	bpl.w	8005a0a <_dtoa_r+0x456>
 8005bb6:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005bba:	9a02      	ldr	r2, [sp, #8]
 8005bbc:	1e63      	subs	r3, r4, #1
 8005bbe:	e004      	b.n	8005bca <_dtoa_r+0x616>
 8005bc0:	429a      	cmp	r2, r3
 8005bc2:	f000 83c9 	beq.w	8006358 <_dtoa_r+0xda4>
 8005bc6:	f813 5d01 	ldrb.w	r5, [r3, #-1]!
 8005bca:	2d39      	cmp	r5, #57	; 0x39
 8005bcc:	f103 0401 	add.w	r4, r3, #1
 8005bd0:	d0f6      	beq.n	8005bc0 <_dtoa_r+0x60c>
 8005bd2:	1c6a      	adds	r2, r5, #1
 8005bd4:	b2d2      	uxtb	r2, r2
 8005bd6:	701a      	strb	r2, [r3, #0]
 8005bd8:	e717      	b.n	8005a0a <_dtoa_r+0x456>
 8005bda:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005bdc:	2a00      	cmp	r2, #0
 8005bde:	d038      	beq.n	8005c52 <_dtoa_r+0x69e>
 8005be0:	9a03      	ldr	r2, [sp, #12]
 8005be2:	2a01      	cmp	r2, #1
 8005be4:	f340 8256 	ble.w	8006094 <_dtoa_r+0xae0>
 8005be8:	9b08      	ldr	r3, [sp, #32]
 8005bea:	1e5e      	subs	r6, r3, #1
 8005bec:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005bee:	42b3      	cmp	r3, r6
 8005bf0:	f2c0 8235 	blt.w	800605e <_dtoa_r+0xaaa>
 8005bf4:	1b9e      	subs	r6, r3, r6
 8005bf6:	9b08      	ldr	r3, [sp, #32]
 8005bf8:	2b00      	cmp	r3, #0
 8005bfa:	f2c0 8305 	blt.w	8006208 <_dtoa_r+0xc54>
 8005bfe:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005c00:	4614      	mov	r4, r2
 8005c02:	441a      	add	r2, r3
 8005c04:	4498      	add	r8, r3
 8005c06:	9209      	str	r2, [sp, #36]	; 0x24
 8005c08:	2101      	movs	r1, #1
 8005c0a:	4650      	mov	r0, sl
 8005c0c:	f001 fc3c 	bl	8007488 <__i2b>
 8005c10:	4605      	mov	r5, r0
 8005c12:	e021      	b.n	8005c58 <_dtoa_r+0x6a4>
 8005c14:	2301      	movs	r3, #1
 8005c16:	f1b8 0f00 	cmp.w	r8, #0
 8005c1a:	930d      	str	r3, [sp, #52]	; 0x34
 8005c1c:	f6bf ad7a 	bge.w	8005714 <_dtoa_r+0x160>
 8005c20:	f1c4 0301 	rsb	r3, r4, #1
 8005c24:	9309      	str	r3, [sp, #36]	; 0x24
 8005c26:	f04f 0800 	mov.w	r8, #0
 8005c2a:	e575      	b.n	8005718 <_dtoa_r+0x164>
 8005c2c:	4648      	mov	r0, r9
 8005c2e:	f003 ffbd 	bl	8009bac <__aeabi_i2d>
 8005c32:	4632      	mov	r2, r6
 8005c34:	463b      	mov	r3, r7
 8005c36:	f004 fa8b 	bl	800a150 <__aeabi_dcmpeq>
 8005c3a:	2800      	cmp	r0, #0
 8005c3c:	f47f ad50 	bne.w	80056e0 <_dtoa_r+0x12c>
 8005c40:	f109 39ff 	add.w	r9, r9, #4294967295	; 0xffffffff
 8005c44:	e54c      	b.n	80056e0 <_dtoa_r+0x12c>
 8005c46:	4b72      	ldr	r3, [pc, #456]	; (8005e10 <_dtoa_r+0x85c>)
 8005c48:	9302      	str	r3, [sp, #8]
 8005c4a:	9802      	ldr	r0, [sp, #8]
 8005c4c:	b017      	add	sp, #92	; 0x5c
 8005c4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c52:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 8005c54:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005c56:	9d0b      	ldr	r5, [sp, #44]	; 0x2c
 8005c58:	2c00      	cmp	r4, #0
 8005c5a:	dd0c      	ble.n	8005c76 <_dtoa_r+0x6c2>
 8005c5c:	f1b8 0f00 	cmp.w	r8, #0
 8005c60:	dd09      	ble.n	8005c76 <_dtoa_r+0x6c2>
 8005c62:	4544      	cmp	r4, r8
 8005c64:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005c66:	4623      	mov	r3, r4
 8005c68:	bfa8      	it	ge
 8005c6a:	4643      	movge	r3, r8
 8005c6c:	1ad2      	subs	r2, r2, r3
 8005c6e:	9209      	str	r2, [sp, #36]	; 0x24
 8005c70:	1ae4      	subs	r4, r4, r3
 8005c72:	eba8 0803 	sub.w	r8, r8, r3
 8005c76:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005c78:	b1d3      	cbz	r3, 8005cb0 <_dtoa_r+0x6fc>
 8005c7a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005c7c:	2b00      	cmp	r3, #0
 8005c7e:	f000 818f 	beq.w	8005fa0 <_dtoa_r+0x9ec>
 8005c82:	2e00      	cmp	r6, #0
 8005c84:	dd10      	ble.n	8005ca8 <_dtoa_r+0x6f4>
 8005c86:	4629      	mov	r1, r5
 8005c88:	4632      	mov	r2, r6
 8005c8a:	4650      	mov	r0, sl
 8005c8c:	f001 fcb8 	bl	8007600 <__pow5mult>
 8005c90:	465a      	mov	r2, fp
 8005c92:	4601      	mov	r1, r0
 8005c94:	4605      	mov	r5, r0
 8005c96:	4650      	mov	r0, sl
 8005c98:	f001 fc0c 	bl	80074b4 <__multiply>
 8005c9c:	4659      	mov	r1, fp
 8005c9e:	4607      	mov	r7, r0
 8005ca0:	4650      	mov	r0, sl
 8005ca2:	f001 faef 	bl	8007284 <_Bfree>
 8005ca6:	46bb      	mov	fp, r7
 8005ca8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005caa:	1b9a      	subs	r2, r3, r6
 8005cac:	f040 8179 	bne.w	8005fa2 <_dtoa_r+0x9ee>
 8005cb0:	2101      	movs	r1, #1
 8005cb2:	4650      	mov	r0, sl
 8005cb4:	f001 fbe8 	bl	8007488 <__i2b>
 8005cb8:	f1b9 0f00 	cmp.w	r9, #0
 8005cbc:	4607      	mov	r7, r0
 8005cbe:	f300 8090 	bgt.w	8005de2 <_dtoa_r+0x82e>
 8005cc2:	9b03      	ldr	r3, [sp, #12]
 8005cc4:	2b01      	cmp	r3, #1
 8005cc6:	f340 8177 	ble.w	8005fb8 <_dtoa_r+0xa04>
 8005cca:	2600      	movs	r6, #0
 8005ccc:	2001      	movs	r0, #1
 8005cce:	f1b9 0f00 	cmp.w	r9, #0
 8005cd2:	f040 8091 	bne.w	8005df8 <_dtoa_r+0x844>
 8005cd6:	4440      	add	r0, r8
 8005cd8:	f010 001f 	ands.w	r0, r0, #31
 8005cdc:	d077      	beq.n	8005dce <_dtoa_r+0x81a>
 8005cde:	f1c0 0320 	rsb	r3, r0, #32
 8005ce2:	2b04      	cmp	r3, #4
 8005ce4:	f340 8380 	ble.w	80063e8 <_dtoa_r+0xe34>
 8005ce8:	f1c0 001c 	rsb	r0, r0, #28
 8005cec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005cee:	4403      	add	r3, r0
 8005cf0:	9309      	str	r3, [sp, #36]	; 0x24
 8005cf2:	4404      	add	r4, r0
 8005cf4:	4480      	add	r8, r0
 8005cf6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005cf8:	2b00      	cmp	r3, #0
 8005cfa:	dd05      	ble.n	8005d08 <_dtoa_r+0x754>
 8005cfc:	4659      	mov	r1, fp
 8005cfe:	461a      	mov	r2, r3
 8005d00:	4650      	mov	r0, sl
 8005d02:	f001 fcc9 	bl	8007698 <__lshift>
 8005d06:	4683      	mov	fp, r0
 8005d08:	f1b8 0f00 	cmp.w	r8, #0
 8005d0c:	dd05      	ble.n	8005d1a <_dtoa_r+0x766>
 8005d0e:	4639      	mov	r1, r7
 8005d10:	4642      	mov	r2, r8
 8005d12:	4650      	mov	r0, sl
 8005d14:	f001 fcc0 	bl	8007698 <__lshift>
 8005d18:	4607      	mov	r7, r0
 8005d1a:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005d1c:	2b00      	cmp	r3, #0
 8005d1e:	f040 8124 	bne.w	8005f6a <_dtoa_r+0x9b6>
 8005d22:	9b08      	ldr	r3, [sp, #32]
 8005d24:	2b00      	cmp	r3, #0
 8005d26:	f340 80fb 	ble.w	8005f20 <_dtoa_r+0x96c>
 8005d2a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005d2c:	2b00      	cmp	r3, #0
 8005d2e:	d17f      	bne.n	8005e30 <_dtoa_r+0x87c>
 8005d30:	9b06      	ldr	r3, [sp, #24]
 8005d32:	3301      	adds	r3, #1
 8005d34:	9306      	str	r3, [sp, #24]
 8005d36:	9c02      	ldr	r4, [sp, #8]
 8005d38:	f8dd 8020 	ldr.w	r8, [sp, #32]
 8005d3c:	2601      	movs	r6, #1
 8005d3e:	e007      	b.n	8005d50 <_dtoa_r+0x79c>
 8005d40:	4659      	mov	r1, fp
 8005d42:	2300      	movs	r3, #0
 8005d44:	220a      	movs	r2, #10
 8005d46:	4650      	mov	r0, sl
 8005d48:	f001 faa6 	bl	8007298 <__multadd>
 8005d4c:	3601      	adds	r6, #1
 8005d4e:	4683      	mov	fp, r0
 8005d50:	4639      	mov	r1, r7
 8005d52:	4658      	mov	r0, fp
 8005d54:	f7ff fb9c 	bl	8005490 <quorem>
 8005d58:	45b0      	cmp	r8, r6
 8005d5a:	f100 0030 	add.w	r0, r0, #48	; 0x30
 8005d5e:	f804 0b01 	strb.w	r0, [r4], #1
 8005d62:	dced      	bgt.n	8005d40 <_dtoa_r+0x78c>
 8005d64:	4603      	mov	r3, r0
 8005d66:	f04f 0900 	mov.w	r9, #0
 8005d6a:	4659      	mov	r1, fp
 8005d6c:	2201      	movs	r2, #1
 8005d6e:	4650      	mov	r0, sl
 8005d70:	9300      	str	r3, [sp, #0]
 8005d72:	f001 fc91 	bl	8007698 <__lshift>
 8005d76:	4639      	mov	r1, r7
 8005d78:	4683      	mov	fp, r0
 8005d7a:	f001 fcf3 	bl	8007764 <__mcmp>
 8005d7e:	2800      	cmp	r0, #0
 8005d80:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8005d84:	f340 8178 	ble.w	8006078 <_dtoa_r+0xac4>
 8005d88:	1e63      	subs	r3, r4, #1
 8005d8a:	9902      	ldr	r1, [sp, #8]
 8005d8c:	e004      	b.n	8005d98 <_dtoa_r+0x7e4>
 8005d8e:	4299      	cmp	r1, r3
 8005d90:	f000 818d 	beq.w	80060ae <_dtoa_r+0xafa>
 8005d94:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 8005d98:	2a39      	cmp	r2, #57	; 0x39
 8005d9a:	f103 0401 	add.w	r4, r3, #1
 8005d9e:	d0f6      	beq.n	8005d8e <_dtoa_r+0x7da>
 8005da0:	3201      	adds	r2, #1
 8005da2:	701a      	strb	r2, [r3, #0]
 8005da4:	4639      	mov	r1, r7
 8005da6:	4650      	mov	r0, sl
 8005da8:	f001 fa6c 	bl	8007284 <_Bfree>
 8005dac:	2d00      	cmp	r5, #0
 8005dae:	f43f ae2c 	beq.w	8005a0a <_dtoa_r+0x456>
 8005db2:	f1b9 0f00 	cmp.w	r9, #0
 8005db6:	d005      	beq.n	8005dc4 <_dtoa_r+0x810>
 8005db8:	45a9      	cmp	r9, r5
 8005dba:	d003      	beq.n	8005dc4 <_dtoa_r+0x810>
 8005dbc:	4649      	mov	r1, r9
 8005dbe:	4650      	mov	r0, sl
 8005dc0:	f001 fa60 	bl	8007284 <_Bfree>
 8005dc4:	4629      	mov	r1, r5
 8005dc6:	4650      	mov	r0, sl
 8005dc8:	f001 fa5c 	bl	8007284 <_Bfree>
 8005dcc:	e61d      	b.n	8005a0a <_dtoa_r+0x456>
 8005dce:	201c      	movs	r0, #28
 8005dd0:	e78c      	b.n	8005cec <_dtoa_r+0x738>
 8005dd2:	2401      	movs	r4, #1
 8005dd4:	e4b7      	b.n	8005746 <_dtoa_r+0x192>
 8005dd6:	f1c3 0620 	rsb	r6, r3, #32
 8005dda:	9b00      	ldr	r3, [sp, #0]
 8005ddc:	fa03 f006 	lsl.w	r0, r3, r6
 8005de0:	e448      	b.n	8005674 <_dtoa_r+0xc0>
 8005de2:	4601      	mov	r1, r0
 8005de4:	464a      	mov	r2, r9
 8005de6:	4650      	mov	r0, sl
 8005de8:	f001 fc0a 	bl	8007600 <__pow5mult>
 8005dec:	9b03      	ldr	r3, [sp, #12]
 8005dee:	2b01      	cmp	r3, #1
 8005df0:	4607      	mov	r7, r0
 8005df2:	f340 81b9 	ble.w	8006168 <_dtoa_r+0xbb4>
 8005df6:	2600      	movs	r6, #0
 8005df8:	693b      	ldr	r3, [r7, #16]
 8005dfa:	eb07 0383 	add.w	r3, r7, r3, lsl #2
 8005dfe:	6918      	ldr	r0, [r3, #16]
 8005e00:	f001 faf2 	bl	80073e8 <__hi0bits>
 8005e04:	f1c0 0020 	rsb	r0, r0, #32
 8005e08:	e765      	b.n	8005cd6 <_dtoa_r+0x722>
 8005e0a:	bf00      	nop
 8005e0c:	40240000 	.word	0x40240000
 8005e10:	0800ae28 	.word	0x0800ae28
 8005e14:	4629      	mov	r1, r5
 8005e16:	2300      	movs	r3, #0
 8005e18:	220a      	movs	r2, #10
 8005e1a:	4650      	mov	r0, sl
 8005e1c:	f001 fa3c 	bl	8007298 <__multadd>
 8005e20:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005e22:	2b00      	cmp	r3, #0
 8005e24:	4605      	mov	r5, r0
 8005e26:	f340 82ce 	ble.w	80063c6 <_dtoa_r+0xe12>
 8005e2a:	f8cd 8018 	str.w	r8, [sp, #24]
 8005e2e:	9308      	str	r3, [sp, #32]
 8005e30:	2c00      	cmp	r4, #0
 8005e32:	f300 810d 	bgt.w	8006050 <_dtoa_r+0xa9c>
 8005e36:	2e00      	cmp	r6, #0
 8005e38:	f040 81ca 	bne.w	80061d0 <_dtoa_r+0xc1c>
 8005e3c:	46a8      	mov	r8, r5
 8005e3e:	9b00      	ldr	r3, [sp, #0]
 8005e40:	9903      	ldr	r1, [sp, #12]
 8005e42:	9e02      	ldr	r6, [sp, #8]
 8005e44:	f003 0201 	and.w	r2, r3, #1
 8005e48:	920b      	str	r2, [sp, #44]	; 0x2c
 8005e4a:	430a      	orrs	r2, r1
 8005e4c:	920a      	str	r2, [sp, #40]	; 0x28
 8005e4e:	9a08      	ldr	r2, [sp, #32]
 8005e50:	1e73      	subs	r3, r6, #1
 8005e52:	441a      	add	r2, r3
 8005e54:	9209      	str	r2, [sp, #36]	; 0x24
 8005e56:	4639      	mov	r1, r7
 8005e58:	4658      	mov	r0, fp
 8005e5a:	f7ff fb19 	bl	8005490 <quorem>
 8005e5e:	4629      	mov	r1, r5
 8005e60:	9000      	str	r0, [sp, #0]
 8005e62:	4658      	mov	r0, fp
 8005e64:	f001 fc7e 	bl	8007764 <__mcmp>
 8005e68:	4642      	mov	r2, r8
 8005e6a:	4681      	mov	r9, r0
 8005e6c:	4639      	mov	r1, r7
 8005e6e:	4650      	mov	r0, sl
 8005e70:	f001 fc94 	bl	800779c <__mdiff>
 8005e74:	9b00      	ldr	r3, [sp, #0]
 8005e76:	68c2      	ldr	r2, [r0, #12]
 8005e78:	4604      	mov	r4, r0
 8005e7a:	3330      	adds	r3, #48	; 0x30
 8005e7c:	2a00      	cmp	r2, #0
 8005e7e:	d141      	bne.n	8005f04 <_dtoa_r+0x950>
 8005e80:	4601      	mov	r1, r0
 8005e82:	4658      	mov	r0, fp
 8005e84:	9308      	str	r3, [sp, #32]
 8005e86:	f001 fc6d 	bl	8007764 <__mcmp>
 8005e8a:	4621      	mov	r1, r4
 8005e8c:	9004      	str	r0, [sp, #16]
 8005e8e:	4650      	mov	r0, sl
 8005e90:	f001 f9f8 	bl	8007284 <_Bfree>
 8005e94:	9a04      	ldr	r2, [sp, #16]
 8005e96:	9b08      	ldr	r3, [sp, #32]
 8005e98:	b91a      	cbnz	r2, 8005ea2 <_dtoa_r+0x8ee>
 8005e9a:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005e9c:	2900      	cmp	r1, #0
 8005e9e:	f000 827a 	beq.w	8006396 <_dtoa_r+0xde2>
 8005ea2:	f1b9 0f00 	cmp.w	r9, #0
 8005ea6:	f106 0401 	add.w	r4, r6, #1
 8005eaa:	f2c0 8174 	blt.w	8006196 <_dtoa_r+0xbe2>
 8005eae:	9903      	ldr	r1, [sp, #12]
 8005eb0:	ea41 0909 	orr.w	r9, r1, r9
 8005eb4:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8005eb6:	ea51 0109 	orrs.w	r1, r1, r9
 8005eba:	f000 816c 	beq.w	8006196 <_dtoa_r+0xbe2>
 8005ebe:	2a00      	cmp	r2, #0
 8005ec0:	f300 81a9 	bgt.w	8006216 <_dtoa_r+0xc62>
 8005ec4:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005ec6:	7033      	strb	r3, [r6, #0]
 8005ec8:	42b2      	cmp	r2, r6
 8005eca:	f000 81b0 	beq.w	800622e <_dtoa_r+0xc7a>
 8005ece:	4659      	mov	r1, fp
 8005ed0:	2300      	movs	r3, #0
 8005ed2:	220a      	movs	r2, #10
 8005ed4:	4650      	mov	r0, sl
 8005ed6:	f001 f9df 	bl	8007298 <__multadd>
 8005eda:	4545      	cmp	r5, r8
 8005edc:	4683      	mov	fp, r0
 8005ede:	4629      	mov	r1, r5
 8005ee0:	f04f 0300 	mov.w	r3, #0
 8005ee4:	f04f 020a 	mov.w	r2, #10
 8005ee8:	4650      	mov	r0, sl
 8005eea:	d013      	beq.n	8005f14 <_dtoa_r+0x960>
 8005eec:	f001 f9d4 	bl	8007298 <__multadd>
 8005ef0:	4641      	mov	r1, r8
 8005ef2:	4605      	mov	r5, r0
 8005ef4:	2300      	movs	r3, #0
 8005ef6:	220a      	movs	r2, #10
 8005ef8:	4650      	mov	r0, sl
 8005efa:	f001 f9cd 	bl	8007298 <__multadd>
 8005efe:	4626      	mov	r6, r4
 8005f00:	4680      	mov	r8, r0
 8005f02:	e7a8      	b.n	8005e56 <_dtoa_r+0x8a2>
 8005f04:	4601      	mov	r1, r0
 8005f06:	4650      	mov	r0, sl
 8005f08:	9304      	str	r3, [sp, #16]
 8005f0a:	f001 f9bb 	bl	8007284 <_Bfree>
 8005f0e:	2201      	movs	r2, #1
 8005f10:	9b04      	ldr	r3, [sp, #16]
 8005f12:	e7c6      	b.n	8005ea2 <_dtoa_r+0x8ee>
 8005f14:	f001 f9c0 	bl	8007298 <__multadd>
 8005f18:	4626      	mov	r6, r4
 8005f1a:	4605      	mov	r5, r0
 8005f1c:	4680      	mov	r8, r0
 8005f1e:	e79a      	b.n	8005e56 <_dtoa_r+0x8a2>
 8005f20:	9b03      	ldr	r3, [sp, #12]
 8005f22:	2b02      	cmp	r3, #2
 8005f24:	f340 8081 	ble.w	800602a <_dtoa_r+0xa76>
 8005f28:	9b08      	ldr	r3, [sp, #32]
 8005f2a:	2b00      	cmp	r3, #0
 8005f2c:	f47f adaf 	bne.w	8005a8e <_dtoa_r+0x4da>
 8005f30:	4639      	mov	r1, r7
 8005f32:	2205      	movs	r2, #5
 8005f34:	4650      	mov	r0, sl
 8005f36:	f001 f9af 	bl	8007298 <__multadd>
 8005f3a:	4601      	mov	r1, r0
 8005f3c:	4607      	mov	r7, r0
 8005f3e:	4658      	mov	r0, fp
 8005f40:	f001 fc10 	bl	8007764 <__mcmp>
 8005f44:	2800      	cmp	r0, #0
 8005f46:	f77f ada2 	ble.w	8005a8e <_dtoa_r+0x4da>
 8005f4a:	9c02      	ldr	r4, [sp, #8]
 8005f4c:	9b06      	ldr	r3, [sp, #24]
 8005f4e:	2231      	movs	r2, #49	; 0x31
 8005f50:	f804 2b01 	strb.w	r2, [r4], #1
 8005f54:	3301      	adds	r3, #1
 8005f56:	3301      	adds	r3, #1
 8005f58:	4639      	mov	r1, r7
 8005f5a:	4650      	mov	r0, sl
 8005f5c:	9306      	str	r3, [sp, #24]
 8005f5e:	f001 f991 	bl	8007284 <_Bfree>
 8005f62:	2d00      	cmp	r5, #0
 8005f64:	f47f af2e 	bne.w	8005dc4 <_dtoa_r+0x810>
 8005f68:	e54f      	b.n	8005a0a <_dtoa_r+0x456>
 8005f6a:	4639      	mov	r1, r7
 8005f6c:	4658      	mov	r0, fp
 8005f6e:	f001 fbf9 	bl	8007764 <__mcmp>
 8005f72:	2800      	cmp	r0, #0
 8005f74:	f6bf aed5 	bge.w	8005d22 <_dtoa_r+0x76e>
 8005f78:	4659      	mov	r1, fp
 8005f7a:	2300      	movs	r3, #0
 8005f7c:	220a      	movs	r2, #10
 8005f7e:	4650      	mov	r0, sl
 8005f80:	f001 f98a 	bl	8007298 <__multadd>
 8005f84:	9b06      	ldr	r3, [sp, #24]
 8005f86:	f103 38ff 	add.w	r8, r3, #4294967295	; 0xffffffff
 8005f8a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005f8c:	4683      	mov	fp, r0
 8005f8e:	2b00      	cmp	r3, #0
 8005f90:	f47f af40 	bne.w	8005e14 <_dtoa_r+0x860>
 8005f94:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005f96:	2b00      	cmp	r3, #0
 8005f98:	f340 820a 	ble.w	80063b0 <_dtoa_r+0xdfc>
 8005f9c:	9308      	str	r3, [sp, #32]
 8005f9e:	e6ca      	b.n	8005d36 <_dtoa_r+0x782>
 8005fa0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005fa2:	4659      	mov	r1, fp
 8005fa4:	4650      	mov	r0, sl
 8005fa6:	f001 fb2b 	bl	8007600 <__pow5mult>
 8005faa:	4683      	mov	fp, r0
 8005fac:	e680      	b.n	8005cb0 <_dtoa_r+0x6fc>
 8005fae:	4ba5      	ldr	r3, [pc, #660]	; (8006244 <_dtoa_r+0xc90>)
 8005fb0:	9302      	str	r3, [sp, #8]
 8005fb2:	3303      	adds	r3, #3
 8005fb4:	f7ff bbe2 	b.w	800577c <_dtoa_r+0x1c8>
 8005fb8:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005fbc:	2900      	cmp	r1, #0
 8005fbe:	f47f ae84 	bne.w	8005cca <_dtoa_r+0x716>
 8005fc2:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005fc6:	2b00      	cmp	r3, #0
 8005fc8:	f000 80d9 	beq.w	800617e <_dtoa_r+0xbca>
 8005fcc:	9e00      	ldr	r6, [sp, #0]
 8005fce:	e67d      	b.n	8005ccc <_dtoa_r+0x718>
 8005fd0:	2301      	movs	r3, #1
 8005fd2:	930b      	str	r3, [sp, #44]	; 0x2c
 8005fd4:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005fd6:	2d00      	cmp	r5, #0
 8005fd8:	dd49      	ble.n	800606e <_dtoa_r+0xaba>
 8005fda:	950f      	str	r5, [sp, #60]	; 0x3c
 8005fdc:	9508      	str	r5, [sp, #32]
 8005fde:	2100      	movs	r1, #0
 8005fe0:	2d17      	cmp	r5, #23
 8005fe2:	f8ca 1044 	str.w	r1, [sl, #68]	; 0x44
 8005fe6:	f77f ac16 	ble.w	8005816 <_dtoa_r+0x262>
 8005fea:	2201      	movs	r2, #1
 8005fec:	2304      	movs	r3, #4
 8005fee:	005b      	lsls	r3, r3, #1
 8005ff0:	f103 0014 	add.w	r0, r3, #20
 8005ff4:	42a8      	cmp	r0, r5
 8005ff6:	4611      	mov	r1, r2
 8005ff8:	f102 0201 	add.w	r2, r2, #1
 8005ffc:	d9f7      	bls.n	8005fee <_dtoa_r+0xa3a>
 8005ffe:	f8ca 1044 	str.w	r1, [sl, #68]	; 0x44
 8006002:	e408      	b.n	8005816 <_dtoa_r+0x262>
 8006004:	2301      	movs	r3, #1
 8006006:	930b      	str	r3, [sp, #44]	; 0x2c
 8006008:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800600a:	9a06      	ldr	r2, [sp, #24]
 800600c:	4413      	add	r3, r2
 800600e:	930f      	str	r3, [sp, #60]	; 0x3c
 8006010:	3301      	adds	r3, #1
 8006012:	2b01      	cmp	r3, #1
 8006014:	461d      	mov	r5, r3
 8006016:	9308      	str	r3, [sp, #32]
 8006018:	bfb8      	it	lt
 800601a:	2501      	movlt	r5, #1
 800601c:	e7df      	b.n	8005fde <_dtoa_r+0xa2a>
 800601e:	2300      	movs	r3, #0
 8006020:	930b      	str	r3, [sp, #44]	; 0x2c
 8006022:	e7f1      	b.n	8006008 <_dtoa_r+0xa54>
 8006024:	2300      	movs	r3, #0
 8006026:	930b      	str	r3, [sp, #44]	; 0x2c
 8006028:	e7d4      	b.n	8005fd4 <_dtoa_r+0xa20>
 800602a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800602c:	2b00      	cmp	r3, #0
 800602e:	f47f aeff 	bne.w	8005e30 <_dtoa_r+0x87c>
 8006032:	4639      	mov	r1, r7
 8006034:	4658      	mov	r0, fp
 8006036:	f7ff fa2b 	bl	8005490 <quorem>
 800603a:	9a06      	ldr	r2, [sp, #24]
 800603c:	9c02      	ldr	r4, [sp, #8]
 800603e:	f100 0330 	add.w	r3, r0, #48	; 0x30
 8006042:	3201      	adds	r2, #1
 8006044:	9206      	str	r2, [sp, #24]
 8006046:	f804 3b01 	strb.w	r3, [r4], #1
 800604a:	f04f 0900 	mov.w	r9, #0
 800604e:	e68c      	b.n	8005d6a <_dtoa_r+0x7b6>
 8006050:	4629      	mov	r1, r5
 8006052:	4622      	mov	r2, r4
 8006054:	4650      	mov	r0, sl
 8006056:	f001 fb1f 	bl	8007698 <__lshift>
 800605a:	4605      	mov	r5, r0
 800605c:	e6eb      	b.n	8005e36 <_dtoa_r+0x882>
 800605e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8006060:	960c      	str	r6, [sp, #48]	; 0x30
 8006062:	1af3      	subs	r3, r6, r3
 8006064:	4499      	add	r9, r3
 8006066:	2600      	movs	r6, #0
 8006068:	e5c5      	b.n	8005bf6 <_dtoa_r+0x642>
 800606a:	2602      	movs	r6, #2
 800606c:	e401      	b.n	8005872 <_dtoa_r+0x2be>
 800606e:	2301      	movs	r3, #1
 8006070:	930a      	str	r3, [sp, #40]	; 0x28
 8006072:	9308      	str	r3, [sp, #32]
 8006074:	f7ff bbca 	b.w	800580c <_dtoa_r+0x258>
 8006078:	d103      	bne.n	8006082 <_dtoa_r+0xace>
 800607a:	9b00      	ldr	r3, [sp, #0]
 800607c:	07db      	lsls	r3, r3, #31
 800607e:	f53f ae83 	bmi.w	8005d88 <_dtoa_r+0x7d4>
 8006082:	1e63      	subs	r3, r4, #1
 8006084:	e001      	b.n	800608a <_dtoa_r+0xad6>
 8006086:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 800608a:	2a30      	cmp	r2, #48	; 0x30
 800608c:	f103 0401 	add.w	r4, r3, #1
 8006090:	d0f9      	beq.n	8006086 <_dtoa_r+0xad2>
 8006092:	e687      	b.n	8005da4 <_dtoa_r+0x7f0>
 8006094:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8006096:	2a00      	cmp	r2, #0
 8006098:	f000 80cf 	beq.w	800623a <_dtoa_r+0xc86>
 800609c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80060a0:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80060a2:	9e0c      	ldr	r6, [sp, #48]	; 0x30
 80060a4:	4614      	mov	r4, r2
 80060a6:	441a      	add	r2, r3
 80060a8:	4498      	add	r8, r3
 80060aa:	9209      	str	r2, [sp, #36]	; 0x24
 80060ac:	e5ac      	b.n	8005c08 <_dtoa_r+0x654>
 80060ae:	9a06      	ldr	r2, [sp, #24]
 80060b0:	3201      	adds	r2, #1
 80060b2:	9206      	str	r2, [sp, #24]
 80060b4:	9a02      	ldr	r2, [sp, #8]
 80060b6:	2331      	movs	r3, #49	; 0x31
 80060b8:	7013      	strb	r3, [r2, #0]
 80060ba:	e673      	b.n	8005da4 <_dtoa_r+0x7f0>
 80060bc:	4630      	mov	r0, r6
 80060be:	f003 fd75 	bl	8009bac <__aeabi_i2d>
 80060c2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80060c6:	f003 fddb 	bl	8009c80 <__aeabi_dmul>
 80060ca:	2200      	movs	r2, #0
 80060cc:	4b5e      	ldr	r3, [pc, #376]	; (8006248 <_dtoa_r+0xc94>)
 80060ce:	f003 fc21 	bl	8009914 <__adddf3>
 80060d2:	4604      	mov	r4, r0
 80060d4:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 80060d8:	2200      	movs	r2, #0
 80060da:	4b5c      	ldr	r3, [pc, #368]	; (800624c <_dtoa_r+0xc98>)
 80060dc:	e9dd 0100 	ldrd	r0, r1, [sp]
 80060e0:	f003 fc16 	bl	8009910 <__aeabi_dsub>
 80060e4:	4622      	mov	r2, r4
 80060e6:	462b      	mov	r3, r5
 80060e8:	4606      	mov	r6, r0
 80060ea:	460f      	mov	r7, r1
 80060ec:	f004 f858 	bl	800a1a0 <__aeabi_dcmpgt>
 80060f0:	2800      	cmp	r0, #0
 80060f2:	f040 808d 	bne.w	8006210 <_dtoa_r+0xc5c>
 80060f6:	4622      	mov	r2, r4
 80060f8:	f105 4300 	add.w	r3, r5, #2147483648	; 0x80000000
 80060fc:	4630      	mov	r0, r6
 80060fe:	4639      	mov	r1, r7
 8006100:	f004 f830 	bl	800a164 <__aeabi_dcmplt>
 8006104:	2800      	cmp	r0, #0
 8006106:	f43f ac9a 	beq.w	8005a3e <_dtoa_r+0x48a>
 800610a:	2700      	movs	r7, #0
 800610c:	463d      	mov	r5, r7
 800610e:	e4be      	b.n	8005a8e <_dtoa_r+0x4da>
 8006110:	f000 80f9 	beq.w	8006306 <_dtoa_r+0xd52>
 8006114:	9b06      	ldr	r3, [sp, #24]
 8006116:	425c      	negs	r4, r3
 8006118:	4b4d      	ldr	r3, [pc, #308]	; (8006250 <_dtoa_r+0xc9c>)
 800611a:	f004 020f 	and.w	r2, r4, #15
 800611e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006122:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006126:	e9dd 0104 	ldrd	r0, r1, [sp, #16]
 800612a:	f003 fda9 	bl	8009c80 <__aeabi_dmul>
 800612e:	1124      	asrs	r4, r4, #4
 8006130:	e9cd 0100 	strd	r0, r1, [sp]
 8006134:	f000 80e7 	beq.w	8006306 <_dtoa_r+0xd52>
 8006138:	4d46      	ldr	r5, [pc, #280]	; (8006254 <_dtoa_r+0xca0>)
 800613a:	2300      	movs	r3, #0
 800613c:	2602      	movs	r6, #2
 800613e:	07e7      	lsls	r7, r4, #31
 8006140:	d505      	bpl.n	800614e <_dtoa_r+0xb9a>
 8006142:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006146:	f003 fd9b 	bl	8009c80 <__aeabi_dmul>
 800614a:	3601      	adds	r6, #1
 800614c:	2301      	movs	r3, #1
 800614e:	1064      	asrs	r4, r4, #1
 8006150:	f105 0508 	add.w	r5, r5, #8
 8006154:	d1f3      	bne.n	800613e <_dtoa_r+0xb8a>
 8006156:	2b00      	cmp	r3, #0
 8006158:	f43f aba4 	beq.w	80058a4 <_dtoa_r+0x2f0>
 800615c:	e9cd 0100 	strd	r0, r1, [sp]
 8006160:	f7ff bba0 	b.w	80058a4 <_dtoa_r+0x2f0>
 8006164:	900d      	str	r0, [sp, #52]	; 0x34
 8006166:	e55b      	b.n	8005c20 <_dtoa_r+0x66c>
 8006168:	9b00      	ldr	r3, [sp, #0]
 800616a:	2b00      	cmp	r3, #0
 800616c:	f47f ae43 	bne.w	8005df6 <_dtoa_r+0x842>
 8006170:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006174:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8006178:	2b00      	cmp	r3, #0
 800617a:	f47f ae3c 	bne.w	8005df6 <_dtoa_r+0x842>
 800617e:	4e36      	ldr	r6, [pc, #216]	; (8006258 <_dtoa_r+0xca4>)
 8006180:	4016      	ands	r6, r2
 8006182:	2e00      	cmp	r6, #0
 8006184:	f43f ada2 	beq.w	8005ccc <_dtoa_r+0x718>
 8006188:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800618a:	3301      	adds	r3, #1
 800618c:	9309      	str	r3, [sp, #36]	; 0x24
 800618e:	f108 0801 	add.w	r8, r8, #1
 8006192:	2601      	movs	r6, #1
 8006194:	e59a      	b.n	8005ccc <_dtoa_r+0x718>
 8006196:	9906      	ldr	r1, [sp, #24]
 8006198:	2a00      	cmp	r2, #0
 800619a:	f101 0101 	add.w	r1, r1, #1
 800619e:	9106      	str	r1, [sp, #24]
 80061a0:	dd12      	ble.n	80061c8 <_dtoa_r+0xc14>
 80061a2:	4659      	mov	r1, fp
 80061a4:	2201      	movs	r2, #1
 80061a6:	4650      	mov	r0, sl
 80061a8:	9303      	str	r3, [sp, #12]
 80061aa:	f001 fa75 	bl	8007698 <__lshift>
 80061ae:	4639      	mov	r1, r7
 80061b0:	4683      	mov	fp, r0
 80061b2:	f001 fad7 	bl	8007764 <__mcmp>
 80061b6:	2800      	cmp	r0, #0
 80061b8:	9b03      	ldr	r3, [sp, #12]
 80061ba:	f340 80df 	ble.w	800637c <_dtoa_r+0xdc8>
 80061be:	2b39      	cmp	r3, #57	; 0x39
 80061c0:	f000 80d1 	beq.w	8006366 <_dtoa_r+0xdb2>
 80061c4:	9b00      	ldr	r3, [sp, #0]
 80061c6:	3331      	adds	r3, #49	; 0x31
 80061c8:	46a9      	mov	r9, r5
 80061ca:	7033      	strb	r3, [r6, #0]
 80061cc:	4645      	mov	r5, r8
 80061ce:	e5e9      	b.n	8005da4 <_dtoa_r+0x7f0>
 80061d0:	6869      	ldr	r1, [r5, #4]
 80061d2:	4650      	mov	r0, sl
 80061d4:	f001 f830 	bl	8007238 <_Balloc>
 80061d8:	4604      	mov	r4, r0
 80061da:	2800      	cmp	r0, #0
 80061dc:	f000 8119 	beq.w	8006412 <_dtoa_r+0xe5e>
 80061e0:	692b      	ldr	r3, [r5, #16]
 80061e2:	3302      	adds	r3, #2
 80061e4:	009a      	lsls	r2, r3, #2
 80061e6:	f105 010c 	add.w	r1, r5, #12
 80061ea:	300c      	adds	r0, #12
 80061ec:	f7fd fb68 	bl	80038c0 <memcpy>
 80061f0:	4621      	mov	r1, r4
 80061f2:	2201      	movs	r2, #1
 80061f4:	4650      	mov	r0, sl
 80061f6:	f001 fa4f 	bl	8007698 <__lshift>
 80061fa:	4680      	mov	r8, r0
 80061fc:	e61f      	b.n	8005e3e <_dtoa_r+0x88a>
 80061fe:	f8dd b000 	ldr.w	fp, [sp]
 8006202:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8006206:	e400      	b.n	8005a0a <_dtoa_r+0x456>
 8006208:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 800620c:	1a9c      	subs	r4, r3, r2
 800620e:	e4fb      	b.n	8005c08 <_dtoa_r+0x654>
 8006210:	2700      	movs	r7, #0
 8006212:	463d      	mov	r5, r7
 8006214:	e699      	b.n	8005f4a <_dtoa_r+0x996>
 8006216:	9a06      	ldr	r2, [sp, #24]
 8006218:	2b39      	cmp	r3, #57	; 0x39
 800621a:	f102 0201 	add.w	r2, r2, #1
 800621e:	9206      	str	r2, [sp, #24]
 8006220:	f000 80a1 	beq.w	8006366 <_dtoa_r+0xdb2>
 8006224:	3301      	adds	r3, #1
 8006226:	46a9      	mov	r9, r5
 8006228:	7033      	strb	r3, [r6, #0]
 800622a:	4645      	mov	r5, r8
 800622c:	e5ba      	b.n	8005da4 <_dtoa_r+0x7f0>
 800622e:	9a06      	ldr	r2, [sp, #24]
 8006230:	3201      	adds	r2, #1
 8006232:	46a9      	mov	r9, r5
 8006234:	9206      	str	r2, [sp, #24]
 8006236:	4645      	mov	r5, r8
 8006238:	e597      	b.n	8005d6a <_dtoa_r+0x7b6>
 800623a:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800623c:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8006240:	e72e      	b.n	80060a0 <_dtoa_r+0xaec>
 8006242:	bf00      	nop
 8006244:	0800ae2c 	.word	0x0800ae2c
 8006248:	401c0000 	.word	0x401c0000
 800624c:	40140000 	.word	0x40140000
 8006250:	0800ae98 	.word	0x0800ae98
 8006254:	0800af88 	.word	0x0800af88
 8006258:	7ff00000 	.word	0x7ff00000
 800625c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006260:	f003 fd0e 	bl	8009c80 <__aeabi_dmul>
 8006264:	9b02      	ldr	r3, [sp, #8]
 8006266:	701d      	strb	r5, [r3, #0]
 8006268:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800626a:	2b01      	cmp	r3, #1
 800626c:	e9cd 0100 	strd	r0, r1, [sp]
 8006270:	d023      	beq.n	80062ba <_dtoa_r+0xd06>
 8006272:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006274:	9a02      	ldr	r2, [sp, #8]
 8006276:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800627a:	4413      	add	r3, r2
 800627c:	46c1      	mov	r9, r8
 800627e:	4698      	mov	r8, r3
 8006280:	2200      	movs	r2, #0
 8006282:	4b6d      	ldr	r3, [pc, #436]	; (8006438 <_dtoa_r+0xe84>)
 8006284:	4630      	mov	r0, r6
 8006286:	4639      	mov	r1, r7
 8006288:	f003 fcfa 	bl	8009c80 <__aeabi_dmul>
 800628c:	460f      	mov	r7, r1
 800628e:	4606      	mov	r6, r0
 8006290:	f003 ffa6 	bl	800a1e0 <__aeabi_d2iz>
 8006294:	4605      	mov	r5, r0
 8006296:	f003 fc89 	bl	8009bac <__aeabi_i2d>
 800629a:	3530      	adds	r5, #48	; 0x30
 800629c:	4602      	mov	r2, r0
 800629e:	460b      	mov	r3, r1
 80062a0:	4630      	mov	r0, r6
 80062a2:	4639      	mov	r1, r7
 80062a4:	f003 fb34 	bl	8009910 <__aeabi_dsub>
 80062a8:	f804 5b01 	strb.w	r5, [r4], #1
 80062ac:	4544      	cmp	r4, r8
 80062ae:	4606      	mov	r6, r0
 80062b0:	460f      	mov	r7, r1
 80062b2:	d1e5      	bne.n	8006280 <_dtoa_r+0xccc>
 80062b4:	46c8      	mov	r8, r9
 80062b6:	f8dd 9040 	ldr.w	r9, [sp, #64]	; 0x40
 80062ba:	4b60      	ldr	r3, [pc, #384]	; (800643c <_dtoa_r+0xe88>)
 80062bc:	2200      	movs	r2, #0
 80062be:	e9dd 0100 	ldrd	r0, r1, [sp]
 80062c2:	f003 fb27 	bl	8009914 <__adddf3>
 80062c6:	4632      	mov	r2, r6
 80062c8:	463b      	mov	r3, r7
 80062ca:	f003 ff4b 	bl	800a164 <__aeabi_dcmplt>
 80062ce:	2800      	cmp	r0, #0
 80062d0:	d14e      	bne.n	8006370 <_dtoa_r+0xdbc>
 80062d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80062d6:	2000      	movs	r0, #0
 80062d8:	4958      	ldr	r1, [pc, #352]	; (800643c <_dtoa_r+0xe88>)
 80062da:	f003 fb19 	bl	8009910 <__aeabi_dsub>
 80062de:	4632      	mov	r2, r6
 80062e0:	463b      	mov	r3, r7
 80062e2:	f003 ff5d 	bl	800a1a0 <__aeabi_dcmpgt>
 80062e6:	2800      	cmp	r0, #0
 80062e8:	f43f aba9 	beq.w	8005a3e <_dtoa_r+0x48a>
 80062ec:	e000      	b.n	80062f0 <_dtoa_r+0xd3c>
 80062ee:	4614      	mov	r4, r2
 80062f0:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80062f4:	2b30      	cmp	r3, #48	; 0x30
 80062f6:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80062fa:	d0f8      	beq.n	80062ee <_dtoa_r+0xd3a>
 80062fc:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80062fe:	3301      	adds	r3, #1
 8006300:	9306      	str	r3, [sp, #24]
 8006302:	f7ff bb82 	b.w	8005a0a <_dtoa_r+0x456>
 8006306:	2602      	movs	r6, #2
 8006308:	f7ff bacc 	b.w	80058a4 <_dtoa_r+0x2f0>
 800630c:	9b08      	ldr	r3, [sp, #32]
 800630e:	2b00      	cmp	r3, #0
 8006310:	f43f aed4 	beq.w	80060bc <_dtoa_r+0xb08>
 8006314:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
 8006316:	2f00      	cmp	r7, #0
 8006318:	f77f ab91 	ble.w	8005a3e <_dtoa_r+0x48a>
 800631c:	2200      	movs	r2, #0
 800631e:	4b46      	ldr	r3, [pc, #280]	; (8006438 <_dtoa_r+0xe84>)
 8006320:	4620      	mov	r0, r4
 8006322:	4629      	mov	r1, r5
 8006324:	f003 fcac 	bl	8009c80 <__aeabi_dmul>
 8006328:	4604      	mov	r4, r0
 800632a:	460d      	mov	r5, r1
 800632c:	1c70      	adds	r0, r6, #1
 800632e:	e9cd 4500 	strd	r4, r5, [sp]
 8006332:	f003 fc3b 	bl	8009bac <__aeabi_i2d>
 8006336:	4622      	mov	r2, r4
 8006338:	462b      	mov	r3, r5
 800633a:	f003 fca1 	bl	8009c80 <__aeabi_dmul>
 800633e:	4b40      	ldr	r3, [pc, #256]	; (8006440 <_dtoa_r+0xe8c>)
 8006340:	2200      	movs	r2, #0
 8006342:	f003 fae7 	bl	8009914 <__adddf3>
 8006346:	9b06      	ldr	r3, [sp, #24]
 8006348:	9710      	str	r7, [sp, #64]	; 0x40
 800634a:	3b01      	subs	r3, #1
 800634c:	4604      	mov	r4, r0
 800634e:	f1a1 7550 	sub.w	r5, r1, #54525952	; 0x3400000
 8006352:	9312      	str	r3, [sp, #72]	; 0x48
 8006354:	f7ff bac9 	b.w	80058ea <_dtoa_r+0x336>
 8006358:	9a06      	ldr	r2, [sp, #24]
 800635a:	3201      	adds	r2, #1
 800635c:	9206      	str	r2, [sp, #24]
 800635e:	2231      	movs	r2, #49	; 0x31
 8006360:	701a      	strb	r2, [r3, #0]
 8006362:	f7ff bb52 	b.w	8005a0a <_dtoa_r+0x456>
 8006366:	2239      	movs	r2, #57	; 0x39
 8006368:	46a9      	mov	r9, r5
 800636a:	7032      	strb	r2, [r6, #0]
 800636c:	4645      	mov	r5, r8
 800636e:	e50b      	b.n	8005d88 <_dtoa_r+0x7d4>
 8006370:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8006372:	3301      	adds	r3, #1
 8006374:	9306      	str	r3, [sp, #24]
 8006376:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800637a:	e41e      	b.n	8005bba <_dtoa_r+0x606>
 800637c:	f47f af24 	bne.w	80061c8 <_dtoa_r+0xc14>
 8006380:	07da      	lsls	r2, r3, #31
 8006382:	f57f af21 	bpl.w	80061c8 <_dtoa_r+0xc14>
 8006386:	e71a      	b.n	80061be <_dtoa_r+0xc0a>
 8006388:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800638a:	3301      	adds	r3, #1
 800638c:	46da      	mov	sl, fp
 800638e:	9306      	str	r3, [sp, #24]
 8006390:	f8dd b000 	ldr.w	fp, [sp]
 8006394:	e411      	b.n	8005bba <_dtoa_r+0x606>
 8006396:	9a06      	ldr	r2, [sp, #24]
 8006398:	2b39      	cmp	r3, #57	; 0x39
 800639a:	f102 0201 	add.w	r2, r2, #1
 800639e:	9206      	str	r2, [sp, #24]
 80063a0:	f106 0401 	add.w	r4, r6, #1
 80063a4:	d0df      	beq.n	8006366 <_dtoa_r+0xdb2>
 80063a6:	f1b9 0f00 	cmp.w	r9, #0
 80063aa:	f73f af0b 	bgt.w	80061c4 <_dtoa_r+0xc10>
 80063ae:	e70b      	b.n	80061c8 <_dtoa_r+0xc14>
 80063b0:	9b03      	ldr	r3, [sp, #12]
 80063b2:	2b02      	cmp	r3, #2
 80063b4:	dc02      	bgt.n	80063bc <_dtoa_r+0xe08>
 80063b6:	f8cd 8018 	str.w	r8, [sp, #24]
 80063ba:	e63a      	b.n	8006032 <_dtoa_r+0xa7e>
 80063bc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80063be:	9308      	str	r3, [sp, #32]
 80063c0:	f8cd 8018 	str.w	r8, [sp, #24]
 80063c4:	e5b0      	b.n	8005f28 <_dtoa_r+0x974>
 80063c6:	9b03      	ldr	r3, [sp, #12]
 80063c8:	2b02      	cmp	r3, #2
 80063ca:	dcf7      	bgt.n	80063bc <_dtoa_r+0xe08>
 80063cc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80063ce:	f8cd 8018 	str.w	r8, [sp, #24]
 80063d2:	9308      	str	r3, [sp, #32]
 80063d4:	e52c      	b.n	8005e30 <_dtoa_r+0x87c>
 80063d6:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80063d8:	3301      	adds	r3, #1
 80063da:	9306      	str	r3, [sp, #24]
 80063dc:	f7ff bbed 	b.w	8005bba <_dtoa_r+0x606>
 80063e0:	4b18      	ldr	r3, [pc, #96]	; (8006444 <_dtoa_r+0xe90>)
 80063e2:	9302      	str	r3, [sp, #8]
 80063e4:	f7ff b924 	b.w	8005630 <_dtoa_r+0x7c>
 80063e8:	f43f ac85 	beq.w	8005cf6 <_dtoa_r+0x742>
 80063ec:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80063f0:	e47c      	b.n	8005cec <_dtoa_r+0x738>
 80063f2:	2400      	movs	r4, #0
 80063f4:	f8ca 4044 	str.w	r4, [sl, #68]	; 0x44
 80063f8:	4621      	mov	r1, r4
 80063fa:	4650      	mov	r0, sl
 80063fc:	f000 ff1c 	bl	8007238 <_Balloc>
 8006400:	9002      	str	r0, [sp, #8]
 8006402:	b968      	cbnz	r0, 8006420 <_dtoa_r+0xe6c>
 8006404:	4b10      	ldr	r3, [pc, #64]	; (8006448 <_dtoa_r+0xe94>)
 8006406:	4811      	ldr	r0, [pc, #68]	; (800644c <_dtoa_r+0xe98>)
 8006408:	2200      	movs	r2, #0
 800640a:	f44f 71d5 	mov.w	r1, #426	; 0x1aa
 800640e:	f002 fb5b 	bl	8008ac8 <__assert_func>
 8006412:	4602      	mov	r2, r0
 8006414:	4b0c      	ldr	r3, [pc, #48]	; (8006448 <_dtoa_r+0xe94>)
 8006416:	480d      	ldr	r0, [pc, #52]	; (800644c <_dtoa_r+0xe98>)
 8006418:	f240 21ea 	movw	r1, #746	; 0x2ea
 800641c:	f002 fb54 	bl	8008ac8 <__assert_func>
 8006420:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006424:	9308      	str	r3, [sp, #32]
 8006426:	9a02      	ldr	r2, [sp, #8]
 8006428:	930f      	str	r3, [sp, #60]	; 0x3c
 800642a:	2301      	movs	r3, #1
 800642c:	f8ca 2040 	str.w	r2, [sl, #64]	; 0x40
 8006430:	940a      	str	r4, [sp, #40]	; 0x28
 8006432:	930b      	str	r3, [sp, #44]	; 0x2c
 8006434:	f7ff bb07 	b.w	8005a46 <_dtoa_r+0x492>
 8006438:	40240000 	.word	0x40240000
 800643c:	3fe00000 	.word	0x3fe00000
 8006440:	401c0000 	.word	0x401c0000
 8006444:	0800ae30 	.word	0x0800ae30
 8006448:	0800ae3c 	.word	0x0800ae3c
 800644c:	0800ae50 	.word	0x0800ae50

08006450 <__sflush_r>:
 8006450:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8006454:	b29a      	uxth	r2, r3
 8006456:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800645a:	460c      	mov	r4, r1
 800645c:	0711      	lsls	r1, r2, #28
 800645e:	4680      	mov	r8, r0
 8006460:	d448      	bmi.n	80064f4 <__sflush_r+0xa4>
 8006462:	6862      	ldr	r2, [r4, #4]
 8006464:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8006468:	2a00      	cmp	r2, #0
 800646a:	81a3      	strh	r3, [r4, #12]
 800646c:	dd5d      	ble.n	800652a <__sflush_r+0xda>
 800646e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006470:	2d00      	cmp	r5, #0
 8006472:	d057      	beq.n	8006524 <__sflush_r+0xd4>
 8006474:	2200      	movs	r2, #0
 8006476:	b29b      	uxth	r3, r3
 8006478:	f8d8 6000 	ldr.w	r6, [r8]
 800647c:	69e1      	ldr	r1, [r4, #28]
 800647e:	f8c8 2000 	str.w	r2, [r8]
 8006482:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8006486:	d154      	bne.n	8006532 <__sflush_r+0xe2>
 8006488:	2301      	movs	r3, #1
 800648a:	4640      	mov	r0, r8
 800648c:	47a8      	blx	r5
 800648e:	1c43      	adds	r3, r0, #1
 8006490:	d066      	beq.n	8006560 <__sflush_r+0x110>
 8006492:	89a3      	ldrh	r3, [r4, #12]
 8006494:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006496:	69e1      	ldr	r1, [r4, #28]
 8006498:	075f      	lsls	r7, r3, #29
 800649a:	d505      	bpl.n	80064a8 <__sflush_r+0x58>
 800649c:	6862      	ldr	r2, [r4, #4]
 800649e:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80064a0:	1a80      	subs	r0, r0, r2
 80064a2:	b10b      	cbz	r3, 80064a8 <__sflush_r+0x58>
 80064a4:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80064a6:	1ac0      	subs	r0, r0, r3
 80064a8:	4602      	mov	r2, r0
 80064aa:	2300      	movs	r3, #0
 80064ac:	4640      	mov	r0, r8
 80064ae:	47a8      	blx	r5
 80064b0:	1c45      	adds	r5, r0, #1
 80064b2:	d148      	bne.n	8006546 <__sflush_r+0xf6>
 80064b4:	f8d8 2000 	ldr.w	r2, [r8]
 80064b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80064bc:	2a00      	cmp	r2, #0
 80064be:	d05c      	beq.n	800657a <__sflush_r+0x12a>
 80064c0:	2a1d      	cmp	r2, #29
 80064c2:	d001      	beq.n	80064c8 <__sflush_r+0x78>
 80064c4:	2a16      	cmp	r2, #22
 80064c6:	d164      	bne.n	8006592 <__sflush_r+0x142>
 80064c8:	6922      	ldr	r2, [r4, #16]
 80064ca:	2100      	movs	r1, #0
 80064cc:	e9c4 2100 	strd	r2, r1, [r4]
 80064d0:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80064d4:	81a3      	strh	r3, [r4, #12]
 80064d6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80064d8:	f8c8 6000 	str.w	r6, [r8]
 80064dc:	b311      	cbz	r1, 8006524 <__sflush_r+0xd4>
 80064de:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80064e2:	4299      	cmp	r1, r3
 80064e4:	d002      	beq.n	80064ec <__sflush_r+0x9c>
 80064e6:	4640      	mov	r0, r8
 80064e8:	f000 f9ce 	bl	8006888 <_free_r>
 80064ec:	2000      	movs	r0, #0
 80064ee:	6320      	str	r0, [r4, #48]	; 0x30
 80064f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064f4:	6926      	ldr	r6, [r4, #16]
 80064f6:	b1ae      	cbz	r6, 8006524 <__sflush_r+0xd4>
 80064f8:	6825      	ldr	r5, [r4, #0]
 80064fa:	6026      	str	r6, [r4, #0]
 80064fc:	0791      	lsls	r1, r2, #30
 80064fe:	bf0c      	ite	eq
 8006500:	6963      	ldreq	r3, [r4, #20]
 8006502:	2300      	movne	r3, #0
 8006504:	1bad      	subs	r5, r5, r6
 8006506:	60a3      	str	r3, [r4, #8]
 8006508:	e00a      	b.n	8006520 <__sflush_r+0xd0>
 800650a:	462b      	mov	r3, r5
 800650c:	4632      	mov	r2, r6
 800650e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006510:	69e1      	ldr	r1, [r4, #28]
 8006512:	4640      	mov	r0, r8
 8006514:	47b8      	blx	r7
 8006516:	2800      	cmp	r0, #0
 8006518:	eba5 0500 	sub.w	r5, r5, r0
 800651c:	4406      	add	r6, r0
 800651e:	dd0a      	ble.n	8006536 <__sflush_r+0xe6>
 8006520:	2d00      	cmp	r5, #0
 8006522:	dcf2      	bgt.n	800650a <__sflush_r+0xba>
 8006524:	2000      	movs	r0, #0
 8006526:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800652a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800652c:	2a00      	cmp	r2, #0
 800652e:	dc9e      	bgt.n	800646e <__sflush_r+0x1e>
 8006530:	e7f8      	b.n	8006524 <__sflush_r+0xd4>
 8006532:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8006534:	e7b0      	b.n	8006498 <__sflush_r+0x48>
 8006536:	89a3      	ldrh	r3, [r4, #12]
 8006538:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800653c:	81a3      	strh	r3, [r4, #12]
 800653e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006542:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006546:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800654a:	6922      	ldr	r2, [r4, #16]
 800654c:	6022      	str	r2, [r4, #0]
 800654e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8006552:	2200      	movs	r2, #0
 8006554:	6062      	str	r2, [r4, #4]
 8006556:	04da      	lsls	r2, r3, #19
 8006558:	81a3      	strh	r3, [r4, #12]
 800655a:	d5bc      	bpl.n	80064d6 <__sflush_r+0x86>
 800655c:	6520      	str	r0, [r4, #80]	; 0x50
 800655e:	e7ba      	b.n	80064d6 <__sflush_r+0x86>
 8006560:	f8d8 3000 	ldr.w	r3, [r8]
 8006564:	2b00      	cmp	r3, #0
 8006566:	d094      	beq.n	8006492 <__sflush_r+0x42>
 8006568:	2b1d      	cmp	r3, #29
 800656a:	d00f      	beq.n	800658c <__sflush_r+0x13c>
 800656c:	2b16      	cmp	r3, #22
 800656e:	d00d      	beq.n	800658c <__sflush_r+0x13c>
 8006570:	89a3      	ldrh	r3, [r4, #12]
 8006572:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006576:	81a3      	strh	r3, [r4, #12]
 8006578:	e7d5      	b.n	8006526 <__sflush_r+0xd6>
 800657a:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800657e:	6921      	ldr	r1, [r4, #16]
 8006580:	81a3      	strh	r3, [r4, #12]
 8006582:	04db      	lsls	r3, r3, #19
 8006584:	e9c4 1200 	strd	r1, r2, [r4]
 8006588:	d5a5      	bpl.n	80064d6 <__sflush_r+0x86>
 800658a:	e7e7      	b.n	800655c <__sflush_r+0x10c>
 800658c:	f8c8 6000 	str.w	r6, [r8]
 8006590:	e7c8      	b.n	8006524 <__sflush_r+0xd4>
 8006592:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006596:	81a3      	strh	r3, [r4, #12]
 8006598:	e7c5      	b.n	8006526 <__sflush_r+0xd6>
 800659a:	bf00      	nop

0800659c <_fflush_r>:
 800659c:	b510      	push	{r4, lr}
 800659e:	4604      	mov	r4, r0
 80065a0:	b082      	sub	sp, #8
 80065a2:	b108      	cbz	r0, 80065a8 <_fflush_r+0xc>
 80065a4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80065a6:	b123      	cbz	r3, 80065b2 <_fflush_r+0x16>
 80065a8:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
 80065ac:	b948      	cbnz	r0, 80065c2 <_fflush_r+0x26>
 80065ae:	b002      	add	sp, #8
 80065b0:	bd10      	pop	{r4, pc}
 80065b2:	9101      	str	r1, [sp, #4]
 80065b4:	f000 f8f8 	bl	80067a8 <__sinit>
 80065b8:	9901      	ldr	r1, [sp, #4]
 80065ba:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
 80065be:	2800      	cmp	r0, #0
 80065c0:	d0f5      	beq.n	80065ae <_fflush_r+0x12>
 80065c2:	4620      	mov	r0, r4
 80065c4:	b002      	add	sp, #8
 80065c6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80065ca:	f7ff bf41 	b.w	8006450 <__sflush_r>
 80065ce:	bf00      	nop

080065d0 <fflush>:
 80065d0:	b120      	cbz	r0, 80065dc <fflush+0xc>
 80065d2:	4b05      	ldr	r3, [pc, #20]	; (80065e8 <fflush+0x18>)
 80065d4:	4601      	mov	r1, r0
 80065d6:	6818      	ldr	r0, [r3, #0]
 80065d8:	f7ff bfe0 	b.w	800659c <_fflush_r>
 80065dc:	4b03      	ldr	r3, [pc, #12]	; (80065ec <fflush+0x1c>)
 80065de:	4904      	ldr	r1, [pc, #16]	; (80065f0 <fflush+0x20>)
 80065e0:	6818      	ldr	r0, [r3, #0]
 80065e2:	f000 ba71 	b.w	8006ac8 <_fwalk_reent>
 80065e6:	bf00      	nop
 80065e8:	20000010 	.word	0x20000010
 80065ec:	0800adc4 	.word	0x0800adc4
 80065f0:	0800659d 	.word	0x0800659d

080065f4 <__fp_lock>:
 80065f4:	2000      	movs	r0, #0
 80065f6:	4770      	bx	lr

080065f8 <_cleanup_r>:
 80065f8:	4901      	ldr	r1, [pc, #4]	; (8006600 <_cleanup_r+0x8>)
 80065fa:	f000 ba65 	b.w	8006ac8 <_fwalk_reent>
 80065fe:	bf00      	nop
 8006600:	08008b95 	.word	0x08008b95

08006604 <__sinit.part.0>:
 8006604:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006608:	6845      	ldr	r5, [r0, #4]
 800660a:	4b2c      	ldr	r3, [pc, #176]	; (80066bc <__sinit.part.0+0xb8>)
 800660c:	63c3      	str	r3, [r0, #60]	; 0x3c
 800660e:	2400      	movs	r4, #0
 8006610:	4607      	mov	r7, r0
 8006612:	f500 723b 	add.w	r2, r0, #748	; 0x2ec
 8006616:	2304      	movs	r3, #4
 8006618:	2103      	movs	r1, #3
 800661a:	e9c0 12b9 	strd	r1, r2, [r0, #740]	; 0x2e4
 800661e:	f8c0 42e0 	str.w	r4, [r0, #736]	; 0x2e0
 8006622:	4621      	mov	r1, r4
 8006624:	60eb      	str	r3, [r5, #12]
 8006626:	f105 005c 	add.w	r0, r5, #92	; 0x5c
 800662a:	666c      	str	r4, [r5, #100]	; 0x64
 800662c:	e9c5 4400 	strd	r4, r4, [r5]
 8006630:	60ac      	str	r4, [r5, #8]
 8006632:	e9c5 4404 	strd	r4, r4, [r5, #16]
 8006636:	61ac      	str	r4, [r5, #24]
 8006638:	2208      	movs	r2, #8
 800663a:	f7fd f9db 	bl	80039f4 <memset>
 800663e:	f8df b088 	ldr.w	fp, [pc, #136]	; 80066c8 <__sinit.part.0+0xc4>
 8006642:	68be      	ldr	r6, [r7, #8]
 8006644:	f8df a084 	ldr.w	sl, [pc, #132]	; 80066cc <__sinit.part.0+0xc8>
 8006648:	f8df 9084 	ldr.w	r9, [pc, #132]	; 80066d0 <__sinit.part.0+0xcc>
 800664c:	f8df 8084 	ldr.w	r8, [pc, #132]	; 80066d4 <__sinit.part.0+0xd0>
 8006650:	4b1b      	ldr	r3, [pc, #108]	; (80066c0 <__sinit.part.0+0xbc>)
 8006652:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
 8006656:	e9c5 5b07 	strd	r5, fp, [r5, #28]
 800665a:	e9c5 a909 	strd	sl, r9, [r5, #36]	; 0x24
 800665e:	4621      	mov	r1, r4
 8006660:	60f3      	str	r3, [r6, #12]
 8006662:	2208      	movs	r2, #8
 8006664:	f106 005c 	add.w	r0, r6, #92	; 0x5c
 8006668:	6674      	str	r4, [r6, #100]	; 0x64
 800666a:	e9c6 4400 	strd	r4, r4, [r6]
 800666e:	60b4      	str	r4, [r6, #8]
 8006670:	e9c6 4404 	strd	r4, r4, [r6, #16]
 8006674:	61b4      	str	r4, [r6, #24]
 8006676:	f7fd f9bd 	bl	80039f4 <memset>
 800667a:	68fd      	ldr	r5, [r7, #12]
 800667c:	4b11      	ldr	r3, [pc, #68]	; (80066c4 <__sinit.part.0+0xc0>)
 800667e:	f8c6 802c 	str.w	r8, [r6, #44]	; 0x2c
 8006682:	e9c6 6b07 	strd	r6, fp, [r6, #28]
 8006686:	e9c6 a909 	strd	sl, r9, [r6, #36]	; 0x24
 800668a:	4621      	mov	r1, r4
 800668c:	60eb      	str	r3, [r5, #12]
 800668e:	666c      	str	r4, [r5, #100]	; 0x64
 8006690:	e9c5 4400 	strd	r4, r4, [r5]
 8006694:	60ac      	str	r4, [r5, #8]
 8006696:	e9c5 4404 	strd	r4, r4, [r5, #16]
 800669a:	61ac      	str	r4, [r5, #24]
 800669c:	f105 005c 	add.w	r0, r5, #92	; 0x5c
 80066a0:	2208      	movs	r2, #8
 80066a2:	f7fd f9a7 	bl	80039f4 <memset>
 80066a6:	2301      	movs	r3, #1
 80066a8:	e9c5 5b07 	strd	r5, fp, [r5, #28]
 80066ac:	e9c5 a909 	strd	sl, r9, [r5, #36]	; 0x24
 80066b0:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
 80066b4:	63bb      	str	r3, [r7, #56]	; 0x38
 80066b6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066ba:	bf00      	nop
 80066bc:	080065f9 	.word	0x080065f9
 80066c0:	00010009 	.word	0x00010009
 80066c4:	00020012 	.word	0x00020012
 80066c8:	08007c05 	.word	0x08007c05
 80066cc:	08007c2d 	.word	0x08007c2d
 80066d0:	08007c6d 	.word	0x08007c6d
 80066d4:	08007c8d 	.word	0x08007c8d

080066d8 <__fp_unlock>:
 80066d8:	2000      	movs	r0, #0
 80066da:	4770      	bx	lr

080066dc <__sfmoreglue>:
 80066dc:	b570      	push	{r4, r5, r6, lr}
 80066de:	1e4a      	subs	r2, r1, #1
 80066e0:	2568      	movs	r5, #104	; 0x68
 80066e2:	fb05 f502 	mul.w	r5, r5, r2
 80066e6:	460e      	mov	r6, r1
 80066e8:	f105 0174 	add.w	r1, r5, #116	; 0x74
 80066ec:	f000 fa98 	bl	8006c20 <_malloc_r>
 80066f0:	4604      	mov	r4, r0
 80066f2:	b140      	cbz	r0, 8006706 <__sfmoreglue+0x2a>
 80066f4:	2100      	movs	r1, #0
 80066f6:	300c      	adds	r0, #12
 80066f8:	6066      	str	r6, [r4, #4]
 80066fa:	f105 0268 	add.w	r2, r5, #104	; 0x68
 80066fe:	6021      	str	r1, [r4, #0]
 8006700:	60a0      	str	r0, [r4, #8]
 8006702:	f7fd f977 	bl	80039f4 <memset>
 8006706:	4620      	mov	r0, r4
 8006708:	bd70      	pop	{r4, r5, r6, pc}
 800670a:	bf00      	nop

0800670c <__sfp>:
 800670c:	4b1f      	ldr	r3, [pc, #124]	; (800678c <__sfp+0x80>)
 800670e:	b570      	push	{r4, r5, r6, lr}
 8006710:	681d      	ldr	r5, [r3, #0]
 8006712:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8006714:	4606      	mov	r6, r0
 8006716:	b34b      	cbz	r3, 800676c <__sfp+0x60>
 8006718:	f505 7538 	add.w	r5, r5, #736	; 0x2e0
 800671c:	e9d5 3401 	ldrd	r3, r4, [r5, #4]
 8006720:	3b01      	subs	r3, #1
 8006722:	d505      	bpl.n	8006730 <__sfp+0x24>
 8006724:	e01e      	b.n	8006764 <__sfp+0x58>
 8006726:	3b01      	subs	r3, #1
 8006728:	1c5a      	adds	r2, r3, #1
 800672a:	f104 0468 	add.w	r4, r4, #104	; 0x68
 800672e:	d019      	beq.n	8006764 <__sfp+0x58>
 8006730:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006734:	2a00      	cmp	r2, #0
 8006736:	d1f6      	bne.n	8006726 <__sfp+0x1a>
 8006738:	2500      	movs	r5, #0
 800673a:	4b15      	ldr	r3, [pc, #84]	; (8006790 <__sfp+0x84>)
 800673c:	6665      	str	r5, [r4, #100]	; 0x64
 800673e:	e9c4 5500 	strd	r5, r5, [r4]
 8006742:	60a5      	str	r5, [r4, #8]
 8006744:	e9c4 5504 	strd	r5, r5, [r4, #16]
 8006748:	61a5      	str	r5, [r4, #24]
 800674a:	4629      	mov	r1, r5
 800674c:	60e3      	str	r3, [r4, #12]
 800674e:	2208      	movs	r2, #8
 8006750:	f104 005c 	add.w	r0, r4, #92	; 0x5c
 8006754:	f7fd f94e 	bl	80039f4 <memset>
 8006758:	e9c4 550c 	strd	r5, r5, [r4, #48]	; 0x30
 800675c:	e9c4 5511 	strd	r5, r5, [r4, #68]	; 0x44
 8006760:	4620      	mov	r0, r4
 8006762:	bd70      	pop	{r4, r5, r6, pc}
 8006764:	682c      	ldr	r4, [r5, #0]
 8006766:	b12c      	cbz	r4, 8006774 <__sfp+0x68>
 8006768:	4625      	mov	r5, r4
 800676a:	e7d7      	b.n	800671c <__sfp+0x10>
 800676c:	4628      	mov	r0, r5
 800676e:	f7ff ff49 	bl	8006604 <__sinit.part.0>
 8006772:	e7d1      	b.n	8006718 <__sfp+0xc>
 8006774:	2104      	movs	r1, #4
 8006776:	4630      	mov	r0, r6
 8006778:	f7ff ffb0 	bl	80066dc <__sfmoreglue>
 800677c:	4604      	mov	r4, r0
 800677e:	6028      	str	r0, [r5, #0]
 8006780:	2800      	cmp	r0, #0
 8006782:	d1f1      	bne.n	8006768 <__sfp+0x5c>
 8006784:	230c      	movs	r3, #12
 8006786:	6033      	str	r3, [r6, #0]
 8006788:	e7ea      	b.n	8006760 <__sfp+0x54>
 800678a:	bf00      	nop
 800678c:	0800adc4 	.word	0x0800adc4
 8006790:	ffff0001 	.word	0xffff0001

08006794 <_cleanup>:
 8006794:	4b02      	ldr	r3, [pc, #8]	; (80067a0 <_cleanup+0xc>)
 8006796:	4903      	ldr	r1, [pc, #12]	; (80067a4 <_cleanup+0x10>)
 8006798:	6818      	ldr	r0, [r3, #0]
 800679a:	f000 b995 	b.w	8006ac8 <_fwalk_reent>
 800679e:	bf00      	nop
 80067a0:	0800adc4 	.word	0x0800adc4
 80067a4:	08008b95 	.word	0x08008b95

080067a8 <__sinit>:
 80067a8:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80067aa:	b103      	cbz	r3, 80067ae <__sinit+0x6>
 80067ac:	4770      	bx	lr
 80067ae:	e729      	b.n	8006604 <__sinit.part.0>

080067b0 <__sfp_lock_acquire>:
 80067b0:	4770      	bx	lr
 80067b2:	bf00      	nop

080067b4 <__sfp_lock_release>:
 80067b4:	4770      	bx	lr
 80067b6:	bf00      	nop

080067b8 <__sinit_lock_acquire>:
 80067b8:	4770      	bx	lr
 80067ba:	bf00      	nop

080067bc <__sinit_lock_release>:
 80067bc:	4770      	bx	lr
 80067be:	bf00      	nop

080067c0 <__fp_lock_all>:
 80067c0:	4b02      	ldr	r3, [pc, #8]	; (80067cc <__fp_lock_all+0xc>)
 80067c2:	4903      	ldr	r1, [pc, #12]	; (80067d0 <__fp_lock_all+0x10>)
 80067c4:	6818      	ldr	r0, [r3, #0]
 80067c6:	f000 b959 	b.w	8006a7c <_fwalk>
 80067ca:	bf00      	nop
 80067cc:	20000010 	.word	0x20000010
 80067d0:	080065f5 	.word	0x080065f5

080067d4 <__fp_unlock_all>:
 80067d4:	4b02      	ldr	r3, [pc, #8]	; (80067e0 <__fp_unlock_all+0xc>)
 80067d6:	4903      	ldr	r1, [pc, #12]	; (80067e4 <__fp_unlock_all+0x10>)
 80067d8:	6818      	ldr	r0, [r3, #0]
 80067da:	f000 b94f 	b.w	8006a7c <_fwalk>
 80067de:	bf00      	nop
 80067e0:	20000010 	.word	0x20000010
 80067e4:	080066d9 	.word	0x080066d9

080067e8 <_malloc_trim_r>:
 80067e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80067ea:	4f24      	ldr	r7, [pc, #144]	; (800687c <_malloc_trim_r+0x94>)
 80067ec:	460c      	mov	r4, r1
 80067ee:	4606      	mov	r6, r0
 80067f0:	f000 fd1e 	bl	8007230 <__malloc_lock>
 80067f4:	68bb      	ldr	r3, [r7, #8]
 80067f6:	685d      	ldr	r5, [r3, #4]
 80067f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80067fc:	310f      	adds	r1, #15
 80067fe:	f025 0503 	bic.w	r5, r5, #3
 8006802:	4429      	add	r1, r5
 8006804:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8006808:	f021 010f 	bic.w	r1, r1, #15
 800680c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8006810:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8006814:	db07      	blt.n	8006826 <_malloc_trim_r+0x3e>
 8006816:	2100      	movs	r1, #0
 8006818:	4630      	mov	r0, r6
 800681a:	f001 f9e1 	bl	8007be0 <_sbrk_r>
 800681e:	68bb      	ldr	r3, [r7, #8]
 8006820:	442b      	add	r3, r5
 8006822:	4298      	cmp	r0, r3
 8006824:	d004      	beq.n	8006830 <_malloc_trim_r+0x48>
 8006826:	4630      	mov	r0, r6
 8006828:	f000 fd04 	bl	8007234 <__malloc_unlock>
 800682c:	2000      	movs	r0, #0
 800682e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006830:	4261      	negs	r1, r4
 8006832:	4630      	mov	r0, r6
 8006834:	f001 f9d4 	bl	8007be0 <_sbrk_r>
 8006838:	3001      	adds	r0, #1
 800683a:	d00d      	beq.n	8006858 <_malloc_trim_r+0x70>
 800683c:	4b10      	ldr	r3, [pc, #64]	; (8006880 <_malloc_trim_r+0x98>)
 800683e:	68ba      	ldr	r2, [r7, #8]
 8006840:	6819      	ldr	r1, [r3, #0]
 8006842:	1b2d      	subs	r5, r5, r4
 8006844:	f045 0501 	orr.w	r5, r5, #1
 8006848:	4630      	mov	r0, r6
 800684a:	1b09      	subs	r1, r1, r4
 800684c:	6055      	str	r5, [r2, #4]
 800684e:	6019      	str	r1, [r3, #0]
 8006850:	f000 fcf0 	bl	8007234 <__malloc_unlock>
 8006854:	2001      	movs	r0, #1
 8006856:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006858:	2100      	movs	r1, #0
 800685a:	4630      	mov	r0, r6
 800685c:	f001 f9c0 	bl	8007be0 <_sbrk_r>
 8006860:	68ba      	ldr	r2, [r7, #8]
 8006862:	1a83      	subs	r3, r0, r2
 8006864:	2b0f      	cmp	r3, #15
 8006866:	ddde      	ble.n	8006826 <_malloc_trim_r+0x3e>
 8006868:	4c06      	ldr	r4, [pc, #24]	; (8006884 <_malloc_trim_r+0x9c>)
 800686a:	4905      	ldr	r1, [pc, #20]	; (8006880 <_malloc_trim_r+0x98>)
 800686c:	6824      	ldr	r4, [r4, #0]
 800686e:	f043 0301 	orr.w	r3, r3, #1
 8006872:	1b00      	subs	r0, r0, r4
 8006874:	6053      	str	r3, [r2, #4]
 8006876:	6008      	str	r0, [r1, #0]
 8006878:	e7d5      	b.n	8006826 <_malloc_trim_r+0x3e>
 800687a:	bf00      	nop
 800687c:	20000440 	.word	0x20000440
 8006880:	20000bac 	.word	0x20000bac
 8006884:	20000848 	.word	0x20000848

08006888 <_free_r>:
 8006888:	2900      	cmp	r1, #0
 800688a:	d05e      	beq.n	800694a <_free_r+0xc2>
 800688c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800688e:	460f      	mov	r7, r1
 8006890:	4606      	mov	r6, r0
 8006892:	f000 fccd 	bl	8007230 <__malloc_lock>
 8006896:	f857 cc04 	ldr.w	ip, [r7, #-4]
 800689a:	4d75      	ldr	r5, [pc, #468]	; (8006a70 <_free_r+0x1e8>)
 800689c:	f02c 0301 	bic.w	r3, ip, #1
 80068a0:	f1a7 0008 	sub.w	r0, r7, #8
 80068a4:	18c2      	adds	r2, r0, r3
 80068a6:	68a9      	ldr	r1, [r5, #8]
 80068a8:	6854      	ldr	r4, [r2, #4]
 80068aa:	4291      	cmp	r1, r2
 80068ac:	f024 0403 	bic.w	r4, r4, #3
 80068b0:	f000 8084 	beq.w	80069bc <_free_r+0x134>
 80068b4:	f01c 0f01 	tst.w	ip, #1
 80068b8:	6054      	str	r4, [r2, #4]
 80068ba:	eb02 0104 	add.w	r1, r2, r4
 80068be:	d133      	bne.n	8006928 <_free_r+0xa0>
 80068c0:	f857 ec08 	ldr.w	lr, [r7, #-8]
 80068c4:	6849      	ldr	r1, [r1, #4]
 80068c6:	eba0 000e 	sub.w	r0, r0, lr
 80068ca:	f105 0c08 	add.w	ip, r5, #8
 80068ce:	6887      	ldr	r7, [r0, #8]
 80068d0:	4567      	cmp	r7, ip
 80068d2:	4473      	add	r3, lr
 80068d4:	f001 0101 	and.w	r1, r1, #1
 80068d8:	d060      	beq.n	800699c <_free_r+0x114>
 80068da:	f8d0 e00c 	ldr.w	lr, [r0, #12]
 80068de:	f8c7 e00c 	str.w	lr, [r7, #12]
 80068e2:	f8ce 7008 	str.w	r7, [lr, #8]
 80068e6:	2900      	cmp	r1, #0
 80068e8:	f000 808d 	beq.w	8006a06 <_free_r+0x17e>
 80068ec:	f043 0101 	orr.w	r1, r3, #1
 80068f0:	6041      	str	r1, [r0, #4]
 80068f2:	6013      	str	r3, [r2, #0]
 80068f4:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80068f8:	d230      	bcs.n	800695c <_free_r+0xd4>
 80068fa:	08db      	lsrs	r3, r3, #3
 80068fc:	1c59      	adds	r1, r3, #1
 80068fe:	686c      	ldr	r4, [r5, #4]
 8006900:	109a      	asrs	r2, r3, #2
 8006902:	2301      	movs	r3, #1
 8006904:	4093      	lsls	r3, r2
 8006906:	4323      	orrs	r3, r4
 8006908:	eb05 02c1 	add.w	r2, r5, r1, lsl #3
 800690c:	f855 4031 	ldr.w	r4, [r5, r1, lsl #3]
 8006910:	606b      	str	r3, [r5, #4]
 8006912:	3a08      	subs	r2, #8
 8006914:	e9c0 4202 	strd	r4, r2, [r0, #8]
 8006918:	f845 0031 	str.w	r0, [r5, r1, lsl #3]
 800691c:	60e0      	str	r0, [r4, #12]
 800691e:	4630      	mov	r0, r6
 8006920:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006924:	f000 bc86 	b.w	8007234 <__malloc_unlock>
 8006928:	6849      	ldr	r1, [r1, #4]
 800692a:	07c9      	lsls	r1, r1, #31
 800692c:	d40e      	bmi.n	800694c <_free_r+0xc4>
 800692e:	4423      	add	r3, r4
 8006930:	f105 0c08 	add.w	ip, r5, #8
 8006934:	6891      	ldr	r1, [r2, #8]
 8006936:	4561      	cmp	r1, ip
 8006938:	f043 0401 	orr.w	r4, r3, #1
 800693c:	d06b      	beq.n	8006a16 <_free_r+0x18e>
 800693e:	68d2      	ldr	r2, [r2, #12]
 8006940:	60ca      	str	r2, [r1, #12]
 8006942:	6091      	str	r1, [r2, #8]
 8006944:	6044      	str	r4, [r0, #4]
 8006946:	50c3      	str	r3, [r0, r3]
 8006948:	e7d4      	b.n	80068f4 <_free_r+0x6c>
 800694a:	4770      	bx	lr
 800694c:	f043 0101 	orr.w	r1, r3, #1
 8006950:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8006954:	f847 1c04 	str.w	r1, [r7, #-4]
 8006958:	6013      	str	r3, [r2, #0]
 800695a:	d3ce      	bcc.n	80068fa <_free_r+0x72>
 800695c:	0a5a      	lsrs	r2, r3, #9
 800695e:	2a04      	cmp	r2, #4
 8006960:	d846      	bhi.n	80069f0 <_free_r+0x168>
 8006962:	099a      	lsrs	r2, r3, #6
 8006964:	f102 0739 	add.w	r7, r2, #57	; 0x39
 8006968:	00ff      	lsls	r7, r7, #3
 800696a:	f102 0138 	add.w	r1, r2, #56	; 0x38
 800696e:	19ec      	adds	r4, r5, r7
 8006970:	59ea      	ldr	r2, [r5, r7]
 8006972:	3c08      	subs	r4, #8
 8006974:	4294      	cmp	r4, r2
 8006976:	d055      	beq.n	8006a24 <_free_r+0x19c>
 8006978:	6851      	ldr	r1, [r2, #4]
 800697a:	f021 0103 	bic.w	r1, r1, #3
 800697e:	4299      	cmp	r1, r3
 8006980:	d902      	bls.n	8006988 <_free_r+0x100>
 8006982:	6892      	ldr	r2, [r2, #8]
 8006984:	4294      	cmp	r4, r2
 8006986:	d1f7      	bne.n	8006978 <_free_r+0xf0>
 8006988:	68d4      	ldr	r4, [r2, #12]
 800698a:	e9c0 2402 	strd	r2, r4, [r0, #8]
 800698e:	60a0      	str	r0, [r4, #8]
 8006990:	60d0      	str	r0, [r2, #12]
 8006992:	4630      	mov	r0, r6
 8006994:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006998:	f000 bc4c 	b.w	8007234 <__malloc_unlock>
 800699c:	2900      	cmp	r1, #0
 800699e:	d162      	bne.n	8006a66 <_free_r+0x1de>
 80069a0:	e9d2 2102 	ldrd	r2, r1, [r2, #8]
 80069a4:	4423      	add	r3, r4
 80069a6:	f043 0401 	orr.w	r4, r3, #1
 80069aa:	60d1      	str	r1, [r2, #12]
 80069ac:	608a      	str	r2, [r1, #8]
 80069ae:	6044      	str	r4, [r0, #4]
 80069b0:	50c3      	str	r3, [r0, r3]
 80069b2:	4630      	mov	r0, r6
 80069b4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80069b8:	f000 bc3c 	b.w	8007234 <__malloc_unlock>
 80069bc:	f01c 0f01 	tst.w	ip, #1
 80069c0:	4423      	add	r3, r4
 80069c2:	d107      	bne.n	80069d4 <_free_r+0x14c>
 80069c4:	f857 2c08 	ldr.w	r2, [r7, #-8]
 80069c8:	1a80      	subs	r0, r0, r2
 80069ca:	4413      	add	r3, r2
 80069cc:	e9d0 1202 	ldrd	r1, r2, [r0, #8]
 80069d0:	60ca      	str	r2, [r1, #12]
 80069d2:	6091      	str	r1, [r2, #8]
 80069d4:	4a27      	ldr	r2, [pc, #156]	; (8006a74 <_free_r+0x1ec>)
 80069d6:	6812      	ldr	r2, [r2, #0]
 80069d8:	f043 0101 	orr.w	r1, r3, #1
 80069dc:	429a      	cmp	r2, r3
 80069de:	6041      	str	r1, [r0, #4]
 80069e0:	60a8      	str	r0, [r5, #8]
 80069e2:	d89c      	bhi.n	800691e <_free_r+0x96>
 80069e4:	4b24      	ldr	r3, [pc, #144]	; (8006a78 <_free_r+0x1f0>)
 80069e6:	4630      	mov	r0, r6
 80069e8:	6819      	ldr	r1, [r3, #0]
 80069ea:	f7ff fefd 	bl	80067e8 <_malloc_trim_r>
 80069ee:	e796      	b.n	800691e <_free_r+0x96>
 80069f0:	2a14      	cmp	r2, #20
 80069f2:	d90a      	bls.n	8006a0a <_free_r+0x182>
 80069f4:	2a54      	cmp	r2, #84	; 0x54
 80069f6:	d81d      	bhi.n	8006a34 <_free_r+0x1ac>
 80069f8:	0b1a      	lsrs	r2, r3, #12
 80069fa:	f102 076f 	add.w	r7, r2, #111	; 0x6f
 80069fe:	00ff      	lsls	r7, r7, #3
 8006a00:	f102 016e 	add.w	r1, r2, #110	; 0x6e
 8006a04:	e7b3      	b.n	800696e <_free_r+0xe6>
 8006a06:	4423      	add	r3, r4
 8006a08:	e794      	b.n	8006934 <_free_r+0xac>
 8006a0a:	f102 075c 	add.w	r7, r2, #92	; 0x5c
 8006a0e:	00ff      	lsls	r7, r7, #3
 8006a10:	f102 015b 	add.w	r1, r2, #91	; 0x5b
 8006a14:	e7ab      	b.n	800696e <_free_r+0xe6>
 8006a16:	e9c5 0004 	strd	r0, r0, [r5, #16]
 8006a1a:	e9c0 cc02 	strd	ip, ip, [r0, #8]
 8006a1e:	6044      	str	r4, [r0, #4]
 8006a20:	50c3      	str	r3, [r0, r3]
 8006a22:	e77c      	b.n	800691e <_free_r+0x96>
 8006a24:	686b      	ldr	r3, [r5, #4]
 8006a26:	1089      	asrs	r1, r1, #2
 8006a28:	2701      	movs	r7, #1
 8006a2a:	fa07 f101 	lsl.w	r1, r7, r1
 8006a2e:	4319      	orrs	r1, r3
 8006a30:	6069      	str	r1, [r5, #4]
 8006a32:	e7aa      	b.n	800698a <_free_r+0x102>
 8006a34:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006a38:	d806      	bhi.n	8006a48 <_free_r+0x1c0>
 8006a3a:	0bda      	lsrs	r2, r3, #15
 8006a3c:	f102 0778 	add.w	r7, r2, #120	; 0x78
 8006a40:	00ff      	lsls	r7, r7, #3
 8006a42:	f102 0177 	add.w	r1, r2, #119	; 0x77
 8006a46:	e792      	b.n	800696e <_free_r+0xe6>
 8006a48:	f240 5154 	movw	r1, #1364	; 0x554
 8006a4c:	428a      	cmp	r2, r1
 8006a4e:	d806      	bhi.n	8006a5e <_free_r+0x1d6>
 8006a50:	0c9a      	lsrs	r2, r3, #18
 8006a52:	f102 077d 	add.w	r7, r2, #125	; 0x7d
 8006a56:	00ff      	lsls	r7, r7, #3
 8006a58:	f102 017c 	add.w	r1, r2, #124	; 0x7c
 8006a5c:	e787      	b.n	800696e <_free_r+0xe6>
 8006a5e:	f44f 777e 	mov.w	r7, #1016	; 0x3f8
 8006a62:	217e      	movs	r1, #126	; 0x7e
 8006a64:	e783      	b.n	800696e <_free_r+0xe6>
 8006a66:	f043 0101 	orr.w	r1, r3, #1
 8006a6a:	6041      	str	r1, [r0, #4]
 8006a6c:	6013      	str	r3, [r2, #0]
 8006a6e:	e756      	b.n	800691e <_free_r+0x96>
 8006a70:	20000440 	.word	0x20000440
 8006a74:	2000084c 	.word	0x2000084c
 8006a78:	20000ba8 	.word	0x20000ba8

08006a7c <_fwalk>:
 8006a7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a80:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006a84:	d01b      	beq.n	8006abe <_fwalk+0x42>
 8006a86:	4688      	mov	r8, r1
 8006a88:	2600      	movs	r6, #0
 8006a8a:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006a8e:	3d01      	subs	r5, #1
 8006a90:	d40f      	bmi.n	8006ab2 <_fwalk+0x36>
 8006a92:	89a3      	ldrh	r3, [r4, #12]
 8006a94:	2b01      	cmp	r3, #1
 8006a96:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006a9a:	d906      	bls.n	8006aaa <_fwalk+0x2e>
 8006a9c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006aa0:	3301      	adds	r3, #1
 8006aa2:	4620      	mov	r0, r4
 8006aa4:	d001      	beq.n	8006aaa <_fwalk+0x2e>
 8006aa6:	47c0      	blx	r8
 8006aa8:	4306      	orrs	r6, r0
 8006aaa:	1c6b      	adds	r3, r5, #1
 8006aac:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006ab0:	d1ef      	bne.n	8006a92 <_fwalk+0x16>
 8006ab2:	683f      	ldr	r7, [r7, #0]
 8006ab4:	2f00      	cmp	r7, #0
 8006ab6:	d1e8      	bne.n	8006a8a <_fwalk+0xe>
 8006ab8:	4630      	mov	r0, r6
 8006aba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006abe:	463e      	mov	r6, r7
 8006ac0:	4630      	mov	r0, r6
 8006ac2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006ac6:	bf00      	nop

08006ac8 <_fwalk_reent>:
 8006ac8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006acc:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006ad0:	d01f      	beq.n	8006b12 <_fwalk_reent+0x4a>
 8006ad2:	4688      	mov	r8, r1
 8006ad4:	4606      	mov	r6, r0
 8006ad6:	f04f 0900 	mov.w	r9, #0
 8006ada:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006ade:	3d01      	subs	r5, #1
 8006ae0:	d411      	bmi.n	8006b06 <_fwalk_reent+0x3e>
 8006ae2:	89a3      	ldrh	r3, [r4, #12]
 8006ae4:	2b01      	cmp	r3, #1
 8006ae6:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006aea:	d908      	bls.n	8006afe <_fwalk_reent+0x36>
 8006aec:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006af0:	3301      	adds	r3, #1
 8006af2:	4621      	mov	r1, r4
 8006af4:	4630      	mov	r0, r6
 8006af6:	d002      	beq.n	8006afe <_fwalk_reent+0x36>
 8006af8:	47c0      	blx	r8
 8006afa:	ea49 0900 	orr.w	r9, r9, r0
 8006afe:	1c6b      	adds	r3, r5, #1
 8006b00:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006b04:	d1ed      	bne.n	8006ae2 <_fwalk_reent+0x1a>
 8006b06:	683f      	ldr	r7, [r7, #0]
 8006b08:	2f00      	cmp	r7, #0
 8006b0a:	d1e6      	bne.n	8006ada <_fwalk_reent+0x12>
 8006b0c:	4648      	mov	r0, r9
 8006b0e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b12:	46b9      	mov	r9, r7
 8006b14:	4648      	mov	r0, r9
 8006b16:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b1a:	bf00      	nop

08006b1c <__localeconv_l>:
 8006b1c:	30f0      	adds	r0, #240	; 0xf0
 8006b1e:	4770      	bx	lr

08006b20 <_localeconv_r>:
 8006b20:	4800      	ldr	r0, [pc, #0]	; (8006b24 <_localeconv_r+0x4>)
 8006b22:	4770      	bx	lr
 8006b24:	20000940 	.word	0x20000940

08006b28 <localeconv>:
 8006b28:	4800      	ldr	r0, [pc, #0]	; (8006b2c <localeconv+0x4>)
 8006b2a:	4770      	bx	lr
 8006b2c:	20000940 	.word	0x20000940

08006b30 <__swhatbuf_r>:
 8006b30:	b570      	push	{r4, r5, r6, lr}
 8006b32:	460c      	mov	r4, r1
 8006b34:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b38:	2900      	cmp	r1, #0
 8006b3a:	b096      	sub	sp, #88	; 0x58
 8006b3c:	4615      	mov	r5, r2
 8006b3e:	461e      	mov	r6, r3
 8006b40:	db14      	blt.n	8006b6c <__swhatbuf_r+0x3c>
 8006b42:	466a      	mov	r2, sp
 8006b44:	f002 f91c 	bl	8008d80 <_fstat_r>
 8006b48:	2800      	cmp	r0, #0
 8006b4a:	db0f      	blt.n	8006b6c <__swhatbuf_r+0x3c>
 8006b4c:	9a01      	ldr	r2, [sp, #4]
 8006b4e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
 8006b52:	f5a2 5200 	sub.w	r2, r2, #8192	; 0x2000
 8006b56:	fab2 f282 	clz	r2, r2
 8006b5a:	0952      	lsrs	r2, r2, #5
 8006b5c:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006b60:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006b64:	6032      	str	r2, [r6, #0]
 8006b66:	602b      	str	r3, [r5, #0]
 8006b68:	b016      	add	sp, #88	; 0x58
 8006b6a:	bd70      	pop	{r4, r5, r6, pc}
 8006b6c:	89a2      	ldrh	r2, [r4, #12]
 8006b6e:	2300      	movs	r3, #0
 8006b70:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006b74:	6033      	str	r3, [r6, #0]
 8006b76:	d004      	beq.n	8006b82 <__swhatbuf_r+0x52>
 8006b78:	2240      	movs	r2, #64	; 0x40
 8006b7a:	4618      	mov	r0, r3
 8006b7c:	602a      	str	r2, [r5, #0]
 8006b7e:	b016      	add	sp, #88	; 0x58
 8006b80:	bd70      	pop	{r4, r5, r6, pc}
 8006b82:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006b86:	602b      	str	r3, [r5, #0]
 8006b88:	b016      	add	sp, #88	; 0x58
 8006b8a:	bd70      	pop	{r4, r5, r6, pc}

08006b8c <__smakebuf_r>:
 8006b8c:	898a      	ldrh	r2, [r1, #12]
 8006b8e:	0792      	lsls	r2, r2, #30
 8006b90:	460b      	mov	r3, r1
 8006b92:	d506      	bpl.n	8006ba2 <__smakebuf_r+0x16>
 8006b94:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006b98:	2101      	movs	r1, #1
 8006b9a:	601a      	str	r2, [r3, #0]
 8006b9c:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006ba0:	4770      	bx	lr
 8006ba2:	b570      	push	{r4, r5, r6, lr}
 8006ba4:	b082      	sub	sp, #8
 8006ba6:	ab01      	add	r3, sp, #4
 8006ba8:	466a      	mov	r2, sp
 8006baa:	460c      	mov	r4, r1
 8006bac:	4606      	mov	r6, r0
 8006bae:	f7ff ffbf 	bl	8006b30 <__swhatbuf_r>
 8006bb2:	9900      	ldr	r1, [sp, #0]
 8006bb4:	4605      	mov	r5, r0
 8006bb6:	4630      	mov	r0, r6
 8006bb8:	f000 f832 	bl	8006c20 <_malloc_r>
 8006bbc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bc0:	b170      	cbz	r0, 8006be0 <__smakebuf_r+0x54>
 8006bc2:	4916      	ldr	r1, [pc, #88]	; (8006c1c <__smakebuf_r+0x90>)
 8006bc4:	63f1      	str	r1, [r6, #60]	; 0x3c
 8006bc6:	9a01      	ldr	r2, [sp, #4]
 8006bc8:	9900      	ldr	r1, [sp, #0]
 8006bca:	6020      	str	r0, [r4, #0]
 8006bcc:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006bd0:	81a3      	strh	r3, [r4, #12]
 8006bd2:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006bd6:	b98a      	cbnz	r2, 8006bfc <__smakebuf_r+0x70>
 8006bd8:	432b      	orrs	r3, r5
 8006bda:	81a3      	strh	r3, [r4, #12]
 8006bdc:	b002      	add	sp, #8
 8006bde:	bd70      	pop	{r4, r5, r6, pc}
 8006be0:	059a      	lsls	r2, r3, #22
 8006be2:	d4fb      	bmi.n	8006bdc <__smakebuf_r+0x50>
 8006be4:	f023 0303 	bic.w	r3, r3, #3
 8006be8:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006bec:	f043 0302 	orr.w	r3, r3, #2
 8006bf0:	2101      	movs	r1, #1
 8006bf2:	81a3      	strh	r3, [r4, #12]
 8006bf4:	6022      	str	r2, [r4, #0]
 8006bf6:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006bfa:	e7ef      	b.n	8006bdc <__smakebuf_r+0x50>
 8006bfc:	4630      	mov	r0, r6
 8006bfe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006c02:	f002 fa55 	bl	80090b0 <_isatty_r>
 8006c06:	b910      	cbnz	r0, 8006c0e <__smakebuf_r+0x82>
 8006c08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c0c:	e7e4      	b.n	8006bd8 <__smakebuf_r+0x4c>
 8006c0e:	89a3      	ldrh	r3, [r4, #12]
 8006c10:	f023 0303 	bic.w	r3, r3, #3
 8006c14:	f043 0301 	orr.w	r3, r3, #1
 8006c18:	b21b      	sxth	r3, r3
 8006c1a:	e7dd      	b.n	8006bd8 <__smakebuf_r+0x4c>
 8006c1c:	080065f9 	.word	0x080065f9

08006c20 <_malloc_r>:
 8006c20:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c24:	f101 050b 	add.w	r5, r1, #11
 8006c28:	2d16      	cmp	r5, #22
 8006c2a:	b083      	sub	sp, #12
 8006c2c:	4606      	mov	r6, r0
 8006c2e:	d823      	bhi.n	8006c78 <_malloc_r+0x58>
 8006c30:	2910      	cmp	r1, #16
 8006c32:	f200 80b9 	bhi.w	8006da8 <_malloc_r+0x188>
 8006c36:	f000 fafb 	bl	8007230 <__malloc_lock>
 8006c3a:	2510      	movs	r5, #16
 8006c3c:	2318      	movs	r3, #24
 8006c3e:	2002      	movs	r0, #2
 8006c40:	4fcd      	ldr	r7, [pc, #820]	; (8006f78 <_malloc_r+0x358>)
 8006c42:	443b      	add	r3, r7
 8006c44:	f1a3 0208 	sub.w	r2, r3, #8
 8006c48:	685c      	ldr	r4, [r3, #4]
 8006c4a:	4294      	cmp	r4, r2
 8006c4c:	f000 80b9 	beq.w	8006dc2 <_malloc_r+0x1a2>
 8006c50:	6863      	ldr	r3, [r4, #4]
 8006c52:	f023 0303 	bic.w	r3, r3, #3
 8006c56:	4423      	add	r3, r4
 8006c58:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006c5c:	685a      	ldr	r2, [r3, #4]
 8006c5e:	60e9      	str	r1, [r5, #12]
 8006c60:	f042 0201 	orr.w	r2, r2, #1
 8006c64:	4630      	mov	r0, r6
 8006c66:	608d      	str	r5, [r1, #8]
 8006c68:	605a      	str	r2, [r3, #4]
 8006c6a:	f000 fae3 	bl	8007234 <__malloc_unlock>
 8006c6e:	3408      	adds	r4, #8
 8006c70:	4620      	mov	r0, r4
 8006c72:	b003      	add	sp, #12
 8006c74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c78:	f035 0507 	bics.w	r5, r5, #7
 8006c7c:	f100 8094 	bmi.w	8006da8 <_malloc_r+0x188>
 8006c80:	42a9      	cmp	r1, r5
 8006c82:	f200 8091 	bhi.w	8006da8 <_malloc_r+0x188>
 8006c86:	f000 fad3 	bl	8007230 <__malloc_lock>
 8006c8a:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8006c8e:	f0c0 819d 	bcc.w	8006fcc <_malloc_r+0x3ac>
 8006c92:	0a6b      	lsrs	r3, r5, #9
 8006c94:	f000 808f 	beq.w	8006db6 <_malloc_r+0x196>
 8006c98:	2b04      	cmp	r3, #4
 8006c9a:	f200 8173 	bhi.w	8006f84 <_malloc_r+0x364>
 8006c9e:	09ab      	lsrs	r3, r5, #6
 8006ca0:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006ca4:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006ca8:	00c3      	lsls	r3, r0, #3
 8006caa:	4fb3      	ldr	r7, [pc, #716]	; (8006f78 <_malloc_r+0x358>)
 8006cac:	443b      	add	r3, r7
 8006cae:	f1a3 0108 	sub.w	r1, r3, #8
 8006cb2:	685c      	ldr	r4, [r3, #4]
 8006cb4:	42a1      	cmp	r1, r4
 8006cb6:	d106      	bne.n	8006cc6 <_malloc_r+0xa6>
 8006cb8:	e00c      	b.n	8006cd4 <_malloc_r+0xb4>
 8006cba:	2a00      	cmp	r2, #0
 8006cbc:	f280 812b 	bge.w	8006f16 <_malloc_r+0x2f6>
 8006cc0:	68e4      	ldr	r4, [r4, #12]
 8006cc2:	42a1      	cmp	r1, r4
 8006cc4:	d006      	beq.n	8006cd4 <_malloc_r+0xb4>
 8006cc6:	6863      	ldr	r3, [r4, #4]
 8006cc8:	f023 0303 	bic.w	r3, r3, #3
 8006ccc:	1b5a      	subs	r2, r3, r5
 8006cce:	2a0f      	cmp	r2, #15
 8006cd0:	ddf3      	ble.n	8006cba <_malloc_r+0x9a>
 8006cd2:	4660      	mov	r0, ip
 8006cd4:	693c      	ldr	r4, [r7, #16]
 8006cd6:	f8df c2a4 	ldr.w	ip, [pc, #676]	; 8006f7c <_malloc_r+0x35c>
 8006cda:	4564      	cmp	r4, ip
 8006cdc:	d07c      	beq.n	8006dd8 <_malloc_r+0x1b8>
 8006cde:	6863      	ldr	r3, [r4, #4]
 8006ce0:	f023 0303 	bic.w	r3, r3, #3
 8006ce4:	1b5a      	subs	r2, r3, r5
 8006ce6:	2a0f      	cmp	r2, #15
 8006ce8:	f300 817e 	bgt.w	8006fe8 <_malloc_r+0x3c8>
 8006cec:	2a00      	cmp	r2, #0
 8006cee:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8006cf2:	f280 816f 	bge.w	8006fd4 <_malloc_r+0x3b4>
 8006cf6:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8006cfa:	f080 811a 	bcs.w	8006f32 <_malloc_r+0x312>
 8006cfe:	08db      	lsrs	r3, r3, #3
 8006d00:	1c59      	adds	r1, r3, #1
 8006d02:	687a      	ldr	r2, [r7, #4]
 8006d04:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006d08:	f8c4 8008 	str.w	r8, [r4, #8]
 8006d0c:	f04f 0e01 	mov.w	lr, #1
 8006d10:	109b      	asrs	r3, r3, #2
 8006d12:	fa0e f303 	lsl.w	r3, lr, r3
 8006d16:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8006d1a:	4313      	orrs	r3, r2
 8006d1c:	f1ae 0208 	sub.w	r2, lr, #8
 8006d20:	60e2      	str	r2, [r4, #12]
 8006d22:	607b      	str	r3, [r7, #4]
 8006d24:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006d28:	f8c8 400c 	str.w	r4, [r8, #12]
 8006d2c:	1082      	asrs	r2, r0, #2
 8006d2e:	2401      	movs	r4, #1
 8006d30:	4094      	lsls	r4, r2
 8006d32:	429c      	cmp	r4, r3
 8006d34:	d856      	bhi.n	8006de4 <_malloc_r+0x1c4>
 8006d36:	421c      	tst	r4, r3
 8006d38:	d106      	bne.n	8006d48 <_malloc_r+0x128>
 8006d3a:	f020 0003 	bic.w	r0, r0, #3
 8006d3e:	0064      	lsls	r4, r4, #1
 8006d40:	421c      	tst	r4, r3
 8006d42:	f100 0004 	add.w	r0, r0, #4
 8006d46:	d0fa      	beq.n	8006d3e <_malloc_r+0x11e>
 8006d48:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006d4c:	46ce      	mov	lr, r9
 8006d4e:	4680      	mov	r8, r0
 8006d50:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006d54:	459e      	cmp	lr, r3
 8006d56:	d107      	bne.n	8006d68 <_malloc_r+0x148>
 8006d58:	e120      	b.n	8006f9c <_malloc_r+0x37c>
 8006d5a:	2a00      	cmp	r2, #0
 8006d5c:	f280 8127 	bge.w	8006fae <_malloc_r+0x38e>
 8006d60:	68db      	ldr	r3, [r3, #12]
 8006d62:	459e      	cmp	lr, r3
 8006d64:	f000 811a 	beq.w	8006f9c <_malloc_r+0x37c>
 8006d68:	6859      	ldr	r1, [r3, #4]
 8006d6a:	f021 0103 	bic.w	r1, r1, #3
 8006d6e:	1b4a      	subs	r2, r1, r5
 8006d70:	2a0f      	cmp	r2, #15
 8006d72:	ddf2      	ble.n	8006d5a <_malloc_r+0x13a>
 8006d74:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006d78:	195c      	adds	r4, r3, r5
 8006d7a:	f045 0501 	orr.w	r5, r5, #1
 8006d7e:	605d      	str	r5, [r3, #4]
 8006d80:	f042 0501 	orr.w	r5, r2, #1
 8006d84:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006d88:	4630      	mov	r0, r6
 8006d8a:	f8ce 8008 	str.w	r8, [lr, #8]
 8006d8e:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8006d92:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006d96:	6065      	str	r5, [r4, #4]
 8006d98:	505a      	str	r2, [r3, r1]
 8006d9a:	9300      	str	r3, [sp, #0]
 8006d9c:	f000 fa4a 	bl	8007234 <__malloc_unlock>
 8006da0:	9b00      	ldr	r3, [sp, #0]
 8006da2:	f103 0408 	add.w	r4, r3, #8
 8006da6:	e002      	b.n	8006dae <_malloc_r+0x18e>
 8006da8:	230c      	movs	r3, #12
 8006daa:	6033      	str	r3, [r6, #0]
 8006dac:	2400      	movs	r4, #0
 8006dae:	4620      	mov	r0, r4
 8006db0:	b003      	add	sp, #12
 8006db2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006db6:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006dba:	2040      	movs	r0, #64	; 0x40
 8006dbc:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8006dc0:	e773      	b.n	8006caa <_malloc_r+0x8a>
 8006dc2:	68dc      	ldr	r4, [r3, #12]
 8006dc4:	42a3      	cmp	r3, r4
 8006dc6:	bf08      	it	eq
 8006dc8:	3002      	addeq	r0, #2
 8006dca:	f47f af41 	bne.w	8006c50 <_malloc_r+0x30>
 8006dce:	693c      	ldr	r4, [r7, #16]
 8006dd0:	f8df c1a8 	ldr.w	ip, [pc, #424]	; 8006f7c <_malloc_r+0x35c>
 8006dd4:	4564      	cmp	r4, ip
 8006dd6:	d182      	bne.n	8006cde <_malloc_r+0xbe>
 8006dd8:	687b      	ldr	r3, [r7, #4]
 8006dda:	1082      	asrs	r2, r0, #2
 8006ddc:	2401      	movs	r4, #1
 8006dde:	4094      	lsls	r4, r2
 8006de0:	429c      	cmp	r4, r3
 8006de2:	d9a8      	bls.n	8006d36 <_malloc_r+0x116>
 8006de4:	68bc      	ldr	r4, [r7, #8]
 8006de6:	6863      	ldr	r3, [r4, #4]
 8006de8:	f023 0803 	bic.w	r8, r3, #3
 8006dec:	45a8      	cmp	r8, r5
 8006dee:	d303      	bcc.n	8006df8 <_malloc_r+0x1d8>
 8006df0:	eba8 0305 	sub.w	r3, r8, r5
 8006df4:	2b0f      	cmp	r3, #15
 8006df6:	dc7e      	bgt.n	8006ef6 <_malloc_r+0x2d6>
 8006df8:	f8df 9184 	ldr.w	r9, [pc, #388]	; 8006f80 <_malloc_r+0x360>
 8006dfc:	f8d7 2408 	ldr.w	r2, [r7, #1032]	; 0x408
 8006e00:	f8d9 3000 	ldr.w	r3, [r9]
 8006e04:	3201      	adds	r2, #1
 8006e06:	eb04 0a08 	add.w	sl, r4, r8
 8006e0a:	442b      	add	r3, r5
 8006e0c:	f000 8137 	beq.w	800707e <_malloc_r+0x45e>
 8006e10:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
 8006e14:	330f      	adds	r3, #15
 8006e16:	f423 6b7f 	bic.w	fp, r3, #4080	; 0xff0
 8006e1a:	f02b 0b0f 	bic.w	fp, fp, #15
 8006e1e:	4659      	mov	r1, fp
 8006e20:	4630      	mov	r0, r6
 8006e22:	f000 fedd 	bl	8007be0 <_sbrk_r>
 8006e26:	1c41      	adds	r1, r0, #1
 8006e28:	4602      	mov	r2, r0
 8006e2a:	f000 80f7 	beq.w	800701c <_malloc_r+0x3fc>
 8006e2e:	4582      	cmp	sl, r0
 8006e30:	f200 80f2 	bhi.w	8007018 <_malloc_r+0x3f8>
 8006e34:	f8d9 1004 	ldr.w	r1, [r9, #4]
 8006e38:	4459      	add	r1, fp
 8006e3a:	f8c9 1004 	str.w	r1, [r9, #4]
 8006e3e:	460b      	mov	r3, r1
 8006e40:	f000 8153 	beq.w	80070ea <_malloc_r+0x4ca>
 8006e44:	f8d7 1408 	ldr.w	r1, [r7, #1032]	; 0x408
 8006e48:	3101      	adds	r1, #1
 8006e4a:	bf1b      	ittet	ne
 8006e4c:	eba2 0a0a 	subne.w	sl, r2, sl
 8006e50:	4453      	addne	r3, sl
 8006e52:	f8c7 2408 	streq.w	r2, [r7, #1032]	; 0x408
 8006e56:	f8c9 3004 	strne.w	r3, [r9, #4]
 8006e5a:	f012 0307 	ands.w	r3, r2, #7
 8006e5e:	f000 811a 	beq.w	8007096 <_malloc_r+0x476>
 8006e62:	f1c3 0108 	rsb	r1, r3, #8
 8006e66:	440a      	add	r2, r1
 8006e68:	f5c3 5180 	rsb	r1, r3, #4096	; 0x1000
 8006e6c:	4493      	add	fp, r2
 8006e6e:	3108      	adds	r1, #8
 8006e70:	eba1 010b 	sub.w	r1, r1, fp
 8006e74:	f3c1 0a0b 	ubfx	sl, r1, #0, #12
 8006e78:	4651      	mov	r1, sl
 8006e7a:	4630      	mov	r0, r6
 8006e7c:	9301      	str	r3, [sp, #4]
 8006e7e:	9200      	str	r2, [sp, #0]
 8006e80:	f000 feae 	bl	8007be0 <_sbrk_r>
 8006e84:	1c42      	adds	r2, r0, #1
 8006e86:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006e8a:	f000 8153 	beq.w	8007134 <_malloc_r+0x514>
 8006e8e:	1a83      	subs	r3, r0, r2
 8006e90:	eb03 0b0a 	add.w	fp, r3, sl
 8006e94:	f8d9 1004 	ldr.w	r1, [r9, #4]
 8006e98:	60ba      	str	r2, [r7, #8]
 8006e9a:	f04b 0301 	orr.w	r3, fp, #1
 8006e9e:	4451      	add	r1, sl
 8006ea0:	42bc      	cmp	r4, r7
 8006ea2:	6053      	str	r3, [r2, #4]
 8006ea4:	f8c9 1004 	str.w	r1, [r9, #4]
 8006ea8:	f000 812b 	beq.w	8007102 <_malloc_r+0x4e2>
 8006eac:	f1b8 0f0f 	cmp.w	r8, #15
 8006eb0:	f240 8129 	bls.w	8007106 <_malloc_r+0x4e6>
 8006eb4:	6863      	ldr	r3, [r4, #4]
 8006eb6:	f1a8 000c 	sub.w	r0, r8, #12
 8006eba:	f020 0007 	bic.w	r0, r0, #7
 8006ebe:	f003 0301 	and.w	r3, r3, #1
 8006ec2:	eb04 0c00 	add.w	ip, r4, r0
 8006ec6:	4303      	orrs	r3, r0
 8006ec8:	f04f 0e05 	mov.w	lr, #5
 8006ecc:	280f      	cmp	r0, #15
 8006ece:	6063      	str	r3, [r4, #4]
 8006ed0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006ed4:	f200 8135 	bhi.w	8007142 <_malloc_r+0x522>
 8006ed8:	6853      	ldr	r3, [r2, #4]
 8006eda:	4614      	mov	r4, r2
 8006edc:	f8d9 202c 	ldr.w	r2, [r9, #44]	; 0x2c
 8006ee0:	428a      	cmp	r2, r1
 8006ee2:	f8d9 2030 	ldr.w	r2, [r9, #48]	; 0x30
 8006ee6:	bf38      	it	cc
 8006ee8:	f8c9 102c 	strcc.w	r1, [r9, #44]	; 0x2c
 8006eec:	428a      	cmp	r2, r1
 8006eee:	bf38      	it	cc
 8006ef0:	f8c9 1030 	strcc.w	r1, [r9, #48]	; 0x30
 8006ef4:	e094      	b.n	8007020 <_malloc_r+0x400>
 8006ef6:	1962      	adds	r2, r4, r5
 8006ef8:	f043 0301 	orr.w	r3, r3, #1
 8006efc:	f045 0501 	orr.w	r5, r5, #1
 8006f00:	6065      	str	r5, [r4, #4]
 8006f02:	4630      	mov	r0, r6
 8006f04:	60ba      	str	r2, [r7, #8]
 8006f06:	6053      	str	r3, [r2, #4]
 8006f08:	f000 f994 	bl	8007234 <__malloc_unlock>
 8006f0c:	3408      	adds	r4, #8
 8006f0e:	4620      	mov	r0, r4
 8006f10:	b003      	add	sp, #12
 8006f12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006f16:	4423      	add	r3, r4
 8006f18:	68e1      	ldr	r1, [r4, #12]
 8006f1a:	685a      	ldr	r2, [r3, #4]
 8006f1c:	68a5      	ldr	r5, [r4, #8]
 8006f1e:	f042 0201 	orr.w	r2, r2, #1
 8006f22:	60e9      	str	r1, [r5, #12]
 8006f24:	4630      	mov	r0, r6
 8006f26:	608d      	str	r5, [r1, #8]
 8006f28:	605a      	str	r2, [r3, #4]
 8006f2a:	f000 f983 	bl	8007234 <__malloc_unlock>
 8006f2e:	3408      	adds	r4, #8
 8006f30:	e73d      	b.n	8006dae <_malloc_r+0x18e>
 8006f32:	0a5a      	lsrs	r2, r3, #9
 8006f34:	2a04      	cmp	r2, #4
 8006f36:	d969      	bls.n	800700c <_malloc_r+0x3ec>
 8006f38:	2a14      	cmp	r2, #20
 8006f3a:	f200 80be 	bhi.w	80070ba <_malloc_r+0x49a>
 8006f3e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8006f42:	00c9      	lsls	r1, r1, #3
 8006f44:	325b      	adds	r2, #91	; 0x5b
 8006f46:	eb07 0e01 	add.w	lr, r7, r1
 8006f4a:	5879      	ldr	r1, [r7, r1]
 8006f4c:	f1ae 0e08 	sub.w	lr, lr, #8
 8006f50:	458e      	cmp	lr, r1
 8006f52:	f000 8097 	beq.w	8007084 <_malloc_r+0x464>
 8006f56:	684a      	ldr	r2, [r1, #4]
 8006f58:	f022 0203 	bic.w	r2, r2, #3
 8006f5c:	429a      	cmp	r2, r3
 8006f5e:	d902      	bls.n	8006f66 <_malloc_r+0x346>
 8006f60:	6889      	ldr	r1, [r1, #8]
 8006f62:	458e      	cmp	lr, r1
 8006f64:	d1f7      	bne.n	8006f56 <_malloc_r+0x336>
 8006f66:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006f6a:	687b      	ldr	r3, [r7, #4]
 8006f6c:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006f70:	f8ce 4008 	str.w	r4, [lr, #8]
 8006f74:	60cc      	str	r4, [r1, #12]
 8006f76:	e6d9      	b.n	8006d2c <_malloc_r+0x10c>
 8006f78:	20000440 	.word	0x20000440
 8006f7c:	20000448 	.word	0x20000448
 8006f80:	20000ba8 	.word	0x20000ba8
 8006f84:	2b14      	cmp	r3, #20
 8006f86:	d959      	bls.n	800703c <_malloc_r+0x41c>
 8006f88:	2b54      	cmp	r3, #84	; 0x54
 8006f8a:	f200 809e 	bhi.w	80070ca <_malloc_r+0x4aa>
 8006f8e:	0b2b      	lsrs	r3, r5, #12
 8006f90:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006f94:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8006f98:	00c3      	lsls	r3, r0, #3
 8006f9a:	e686      	b.n	8006caa <_malloc_r+0x8a>
 8006f9c:	f108 0801 	add.w	r8, r8, #1
 8006fa0:	f018 0f03 	tst.w	r8, #3
 8006fa4:	f10e 0e08 	add.w	lr, lr, #8
 8006fa8:	f47f aed2 	bne.w	8006d50 <_malloc_r+0x130>
 8006fac:	e051      	b.n	8007052 <_malloc_r+0x432>
 8006fae:	4419      	add	r1, r3
 8006fb0:	461c      	mov	r4, r3
 8006fb2:	684a      	ldr	r2, [r1, #4]
 8006fb4:	68db      	ldr	r3, [r3, #12]
 8006fb6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8006fba:	f042 0201 	orr.w	r2, r2, #1
 8006fbe:	604a      	str	r2, [r1, #4]
 8006fc0:	4630      	mov	r0, r6
 8006fc2:	60eb      	str	r3, [r5, #12]
 8006fc4:	609d      	str	r5, [r3, #8]
 8006fc6:	f000 f935 	bl	8007234 <__malloc_unlock>
 8006fca:	e6f0      	b.n	8006dae <_malloc_r+0x18e>
 8006fcc:	08e8      	lsrs	r0, r5, #3
 8006fce:	f105 0308 	add.w	r3, r5, #8
 8006fd2:	e635      	b.n	8006c40 <_malloc_r+0x20>
 8006fd4:	4423      	add	r3, r4
 8006fd6:	4630      	mov	r0, r6
 8006fd8:	685a      	ldr	r2, [r3, #4]
 8006fda:	f042 0201 	orr.w	r2, r2, #1
 8006fde:	605a      	str	r2, [r3, #4]
 8006fe0:	3408      	adds	r4, #8
 8006fe2:	f000 f927 	bl	8007234 <__malloc_unlock>
 8006fe6:	e6e2      	b.n	8006dae <_malloc_r+0x18e>
 8006fe8:	1961      	adds	r1, r4, r5
 8006fea:	f045 0e01 	orr.w	lr, r5, #1
 8006fee:	f042 0501 	orr.w	r5, r2, #1
 8006ff2:	f8c4 e004 	str.w	lr, [r4, #4]
 8006ff6:	4630      	mov	r0, r6
 8006ff8:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006ffc:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8007000:	604d      	str	r5, [r1, #4]
 8007002:	50e2      	str	r2, [r4, r3]
 8007004:	f000 f916 	bl	8007234 <__malloc_unlock>
 8007008:	3408      	adds	r4, #8
 800700a:	e6d0      	b.n	8006dae <_malloc_r+0x18e>
 800700c:	099a      	lsrs	r2, r3, #6
 800700e:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8007012:	00c9      	lsls	r1, r1, #3
 8007014:	3238      	adds	r2, #56	; 0x38
 8007016:	e796      	b.n	8006f46 <_malloc_r+0x326>
 8007018:	42bc      	cmp	r4, r7
 800701a:	d060      	beq.n	80070de <_malloc_r+0x4be>
 800701c:	68bc      	ldr	r4, [r7, #8]
 800701e:	6863      	ldr	r3, [r4, #4]
 8007020:	f023 0b03 	bic.w	fp, r3, #3
 8007024:	45ab      	cmp	fp, r5
 8007026:	ebab 0305 	sub.w	r3, fp, r5
 800702a:	d302      	bcc.n	8007032 <_malloc_r+0x412>
 800702c:	2b0f      	cmp	r3, #15
 800702e:	f73f af62 	bgt.w	8006ef6 <_malloc_r+0x2d6>
 8007032:	4630      	mov	r0, r6
 8007034:	f000 f8fe 	bl	8007234 <__malloc_unlock>
 8007038:	2400      	movs	r4, #0
 800703a:	e6b8      	b.n	8006dae <_malloc_r+0x18e>
 800703c:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8007040:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8007044:	00c3      	lsls	r3, r0, #3
 8007046:	e630      	b.n	8006caa <_malloc_r+0x8a>
 8007048:	f859 3908 	ldr.w	r3, [r9], #-8
 800704c:	454b      	cmp	r3, r9
 800704e:	f040 8096 	bne.w	800717e <_malloc_r+0x55e>
 8007052:	f010 0f03 	tst.w	r0, #3
 8007056:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 800705a:	d1f5      	bne.n	8007048 <_malloc_r+0x428>
 800705c:	687b      	ldr	r3, [r7, #4]
 800705e:	ea23 0304 	bic.w	r3, r3, r4
 8007062:	607b      	str	r3, [r7, #4]
 8007064:	0064      	lsls	r4, r4, #1
 8007066:	429c      	cmp	r4, r3
 8007068:	f63f aebc 	bhi.w	8006de4 <_malloc_r+0x1c4>
 800706c:	b91c      	cbnz	r4, 8007076 <_malloc_r+0x456>
 800706e:	e6b9      	b.n	8006de4 <_malloc_r+0x1c4>
 8007070:	0064      	lsls	r4, r4, #1
 8007072:	f108 0804 	add.w	r8, r8, #4
 8007076:	421c      	tst	r4, r3
 8007078:	d0fa      	beq.n	8007070 <_malloc_r+0x450>
 800707a:	4640      	mov	r0, r8
 800707c:	e664      	b.n	8006d48 <_malloc_r+0x128>
 800707e:	f103 0b10 	add.w	fp, r3, #16
 8007082:	e6cc      	b.n	8006e1e <_malloc_r+0x1fe>
 8007084:	687b      	ldr	r3, [r7, #4]
 8007086:	1092      	asrs	r2, r2, #2
 8007088:	f04f 0801 	mov.w	r8, #1
 800708c:	fa08 f202 	lsl.w	r2, r8, r2
 8007090:	4313      	orrs	r3, r2
 8007092:	607b      	str	r3, [r7, #4]
 8007094:	e76a      	b.n	8006f6c <_malloc_r+0x34c>
 8007096:	eb02 010b 	add.w	r1, r2, fp
 800709a:	4249      	negs	r1, r1
 800709c:	f3c1 0a0b 	ubfx	sl, r1, #0, #12
 80070a0:	4651      	mov	r1, sl
 80070a2:	4630      	mov	r0, r6
 80070a4:	9301      	str	r3, [sp, #4]
 80070a6:	9200      	str	r2, [sp, #0]
 80070a8:	f000 fd9a 	bl	8007be0 <_sbrk_r>
 80070ac:	1c43      	adds	r3, r0, #1
 80070ae:	e9dd 2300 	ldrd	r2, r3, [sp]
 80070b2:	f47f aeec 	bne.w	8006e8e <_malloc_r+0x26e>
 80070b6:	469a      	mov	sl, r3
 80070b8:	e6ec      	b.n	8006e94 <_malloc_r+0x274>
 80070ba:	2a54      	cmp	r2, #84	; 0x54
 80070bc:	d826      	bhi.n	800710c <_malloc_r+0x4ec>
 80070be:	0b1a      	lsrs	r2, r3, #12
 80070c0:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80070c4:	00c9      	lsls	r1, r1, #3
 80070c6:	326e      	adds	r2, #110	; 0x6e
 80070c8:	e73d      	b.n	8006f46 <_malloc_r+0x326>
 80070ca:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80070ce:	d826      	bhi.n	800711e <_malloc_r+0x4fe>
 80070d0:	0beb      	lsrs	r3, r5, #15
 80070d2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80070d6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80070da:	00c3      	lsls	r3, r0, #3
 80070dc:	e5e5      	b.n	8006caa <_malloc_r+0x8a>
 80070de:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80070e2:	445b      	add	r3, fp
 80070e4:	f8c9 3004 	str.w	r3, [r9, #4]
 80070e8:	e6ac      	b.n	8006e44 <_malloc_r+0x224>
 80070ea:	f3ca 000b 	ubfx	r0, sl, #0, #12
 80070ee:	2800      	cmp	r0, #0
 80070f0:	f47f aea8 	bne.w	8006e44 <_malloc_r+0x224>
 80070f4:	eb08 030b 	add.w	r3, r8, fp
 80070f8:	68bc      	ldr	r4, [r7, #8]
 80070fa:	f043 0301 	orr.w	r3, r3, #1
 80070fe:	6063      	str	r3, [r4, #4]
 8007100:	e6ec      	b.n	8006edc <_malloc_r+0x2bc>
 8007102:	4614      	mov	r4, r2
 8007104:	e6ea      	b.n	8006edc <_malloc_r+0x2bc>
 8007106:	2301      	movs	r3, #1
 8007108:	6053      	str	r3, [r2, #4]
 800710a:	e792      	b.n	8007032 <_malloc_r+0x412>
 800710c:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8007110:	d821      	bhi.n	8007156 <_malloc_r+0x536>
 8007112:	0bda      	lsrs	r2, r3, #15
 8007114:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8007118:	00c9      	lsls	r1, r1, #3
 800711a:	3277      	adds	r2, #119	; 0x77
 800711c:	e713      	b.n	8006f46 <_malloc_r+0x326>
 800711e:	f240 5254 	movw	r2, #1364	; 0x554
 8007122:	4293      	cmp	r3, r2
 8007124:	d821      	bhi.n	800716a <_malloc_r+0x54a>
 8007126:	0cab      	lsrs	r3, r5, #18
 8007128:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800712c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8007130:	00c3      	lsls	r3, r0, #3
 8007132:	e5ba      	b.n	8006caa <_malloc_r+0x8a>
 8007134:	3b08      	subs	r3, #8
 8007136:	449b      	add	fp, r3
 8007138:	ebab 0b02 	sub.w	fp, fp, r2
 800713c:	f04f 0a00 	mov.w	sl, #0
 8007140:	e6a8      	b.n	8006e94 <_malloc_r+0x274>
 8007142:	f104 0108 	add.w	r1, r4, #8
 8007146:	4630      	mov	r0, r6
 8007148:	f7ff fb9e 	bl	8006888 <_free_r>
 800714c:	68bc      	ldr	r4, [r7, #8]
 800714e:	f8d9 1004 	ldr.w	r1, [r9, #4]
 8007152:	6863      	ldr	r3, [r4, #4]
 8007154:	e6c2      	b.n	8006edc <_malloc_r+0x2bc>
 8007156:	f240 5154 	movw	r1, #1364	; 0x554
 800715a:	428a      	cmp	r2, r1
 800715c:	d80b      	bhi.n	8007176 <_malloc_r+0x556>
 800715e:	0c9a      	lsrs	r2, r3, #18
 8007160:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8007164:	00c9      	lsls	r1, r1, #3
 8007166:	327c      	adds	r2, #124	; 0x7c
 8007168:	e6ed      	b.n	8006f46 <_malloc_r+0x326>
 800716a:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800716e:	207f      	movs	r0, #127	; 0x7f
 8007170:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8007174:	e599      	b.n	8006caa <_malloc_r+0x8a>
 8007176:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800717a:	227e      	movs	r2, #126	; 0x7e
 800717c:	e6e3      	b.n	8006f46 <_malloc_r+0x326>
 800717e:	687b      	ldr	r3, [r7, #4]
 8007180:	e770      	b.n	8007064 <_malloc_r+0x444>
 8007182:	bf00      	nop
	...

08007190 <memchr>:
 8007190:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8007194:	2a10      	cmp	r2, #16
 8007196:	db2b      	blt.n	80071f0 <memchr+0x60>
 8007198:	f010 0f07 	tst.w	r0, #7
 800719c:	d008      	beq.n	80071b0 <memchr+0x20>
 800719e:	f810 3b01 	ldrb.w	r3, [r0], #1
 80071a2:	3a01      	subs	r2, #1
 80071a4:	428b      	cmp	r3, r1
 80071a6:	d02d      	beq.n	8007204 <memchr+0x74>
 80071a8:	f010 0f07 	tst.w	r0, #7
 80071ac:	b342      	cbz	r2, 8007200 <memchr+0x70>
 80071ae:	d1f6      	bne.n	800719e <memchr+0xe>
 80071b0:	b4f0      	push	{r4, r5, r6, r7}
 80071b2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 80071b6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 80071ba:	f022 0407 	bic.w	r4, r2, #7
 80071be:	f07f 0700 	mvns.w	r7, #0
 80071c2:	2300      	movs	r3, #0
 80071c4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 80071c8:	3c08      	subs	r4, #8
 80071ca:	ea85 0501 	eor.w	r5, r5, r1
 80071ce:	ea86 0601 	eor.w	r6, r6, r1
 80071d2:	fa85 f547 	uadd8	r5, r5, r7
 80071d6:	faa3 f587 	sel	r5, r3, r7
 80071da:	fa86 f647 	uadd8	r6, r6, r7
 80071de:	faa5 f687 	sel	r6, r5, r7
 80071e2:	b98e      	cbnz	r6, 8007208 <memchr+0x78>
 80071e4:	d1ee      	bne.n	80071c4 <memchr+0x34>
 80071e6:	bcf0      	pop	{r4, r5, r6, r7}
 80071e8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80071ec:	f002 0207 	and.w	r2, r2, #7
 80071f0:	b132      	cbz	r2, 8007200 <memchr+0x70>
 80071f2:	f810 3b01 	ldrb.w	r3, [r0], #1
 80071f6:	3a01      	subs	r2, #1
 80071f8:	ea83 0301 	eor.w	r3, r3, r1
 80071fc:	b113      	cbz	r3, 8007204 <memchr+0x74>
 80071fe:	d1f8      	bne.n	80071f2 <memchr+0x62>
 8007200:	2000      	movs	r0, #0
 8007202:	4770      	bx	lr
 8007204:	3801      	subs	r0, #1
 8007206:	4770      	bx	lr
 8007208:	2d00      	cmp	r5, #0
 800720a:	bf06      	itte	eq
 800720c:	4635      	moveq	r5, r6
 800720e:	3803      	subeq	r0, #3
 8007210:	3807      	subne	r0, #7
 8007212:	f015 0f01 	tst.w	r5, #1
 8007216:	d107      	bne.n	8007228 <memchr+0x98>
 8007218:	3001      	adds	r0, #1
 800721a:	f415 7f80 	tst.w	r5, #256	; 0x100
 800721e:	bf02      	ittt	eq
 8007220:	3001      	addeq	r0, #1
 8007222:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8007226:	3001      	addeq	r0, #1
 8007228:	bcf0      	pop	{r4, r5, r6, r7}
 800722a:	3801      	subs	r0, #1
 800722c:	4770      	bx	lr
 800722e:	bf00      	nop

08007230 <__malloc_lock>:
 8007230:	4770      	bx	lr
 8007232:	bf00      	nop

08007234 <__malloc_unlock>:
 8007234:	4770      	bx	lr
 8007236:	bf00      	nop

08007238 <_Balloc>:
 8007238:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800723a:	b570      	push	{r4, r5, r6, lr}
 800723c:	4605      	mov	r5, r0
 800723e:	460c      	mov	r4, r1
 8007240:	b14b      	cbz	r3, 8007256 <_Balloc+0x1e>
 8007242:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8007246:	b180      	cbz	r0, 800726a <_Balloc+0x32>
 8007248:	6802      	ldr	r2, [r0, #0]
 800724a:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800724e:	2300      	movs	r3, #0
 8007250:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8007254:	bd70      	pop	{r4, r5, r6, pc}
 8007256:	2221      	movs	r2, #33	; 0x21
 8007258:	2104      	movs	r1, #4
 800725a:	f001 fc59 	bl	8008b10 <_calloc_r>
 800725e:	4603      	mov	r3, r0
 8007260:	64e8      	str	r0, [r5, #76]	; 0x4c
 8007262:	2800      	cmp	r0, #0
 8007264:	d1ed      	bne.n	8007242 <_Balloc+0xa>
 8007266:	2000      	movs	r0, #0
 8007268:	bd70      	pop	{r4, r5, r6, pc}
 800726a:	2101      	movs	r1, #1
 800726c:	fa01 f604 	lsl.w	r6, r1, r4
 8007270:	1d72      	adds	r2, r6, #5
 8007272:	4628      	mov	r0, r5
 8007274:	0092      	lsls	r2, r2, #2
 8007276:	f001 fc4b 	bl	8008b10 <_calloc_r>
 800727a:	2800      	cmp	r0, #0
 800727c:	d0f3      	beq.n	8007266 <_Balloc+0x2e>
 800727e:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8007282:	e7e4      	b.n	800724e <_Balloc+0x16>

08007284 <_Bfree>:
 8007284:	b131      	cbz	r1, 8007294 <_Bfree+0x10>
 8007286:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007288:	684a      	ldr	r2, [r1, #4]
 800728a:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800728e:	6008      	str	r0, [r1, #0]
 8007290:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007294:	4770      	bx	lr
 8007296:	bf00      	nop

08007298 <__multadd>:
 8007298:	b5f0      	push	{r4, r5, r6, r7, lr}
 800729a:	690c      	ldr	r4, [r1, #16]
 800729c:	b083      	sub	sp, #12
 800729e:	460d      	mov	r5, r1
 80072a0:	4606      	mov	r6, r0
 80072a2:	f101 0c14 	add.w	ip, r1, #20
 80072a6:	2700      	movs	r7, #0
 80072a8:	f8dc 0000 	ldr.w	r0, [ip]
 80072ac:	b281      	uxth	r1, r0
 80072ae:	fb02 3301 	mla	r3, r2, r1, r3
 80072b2:	0c19      	lsrs	r1, r3, #16
 80072b4:	0c00      	lsrs	r0, r0, #16
 80072b6:	fb02 1000 	mla	r0, r2, r0, r1
 80072ba:	b29b      	uxth	r3, r3
 80072bc:	3701      	adds	r7, #1
 80072be:	eb03 4300 	add.w	r3, r3, r0, lsl #16
 80072c2:	42bc      	cmp	r4, r7
 80072c4:	f84c 3b04 	str.w	r3, [ip], #4
 80072c8:	ea4f 4310 	mov.w	r3, r0, lsr #16
 80072cc:	dcec      	bgt.n	80072a8 <__multadd+0x10>
 80072ce:	b13b      	cbz	r3, 80072e0 <__multadd+0x48>
 80072d0:	68aa      	ldr	r2, [r5, #8]
 80072d2:	42a2      	cmp	r2, r4
 80072d4:	dd07      	ble.n	80072e6 <__multadd+0x4e>
 80072d6:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80072da:	3401      	adds	r4, #1
 80072dc:	6153      	str	r3, [r2, #20]
 80072de:	612c      	str	r4, [r5, #16]
 80072e0:	4628      	mov	r0, r5
 80072e2:	b003      	add	sp, #12
 80072e4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072e6:	6869      	ldr	r1, [r5, #4]
 80072e8:	9301      	str	r3, [sp, #4]
 80072ea:	4630      	mov	r0, r6
 80072ec:	3101      	adds	r1, #1
 80072ee:	f7ff ffa3 	bl	8007238 <_Balloc>
 80072f2:	9b01      	ldr	r3, [sp, #4]
 80072f4:	4607      	mov	r7, r0
 80072f6:	b1b8      	cbz	r0, 8007328 <__multadd+0x90>
 80072f8:	692a      	ldr	r2, [r5, #16]
 80072fa:	9301      	str	r3, [sp, #4]
 80072fc:	3202      	adds	r2, #2
 80072fe:	f105 010c 	add.w	r1, r5, #12
 8007302:	0092      	lsls	r2, r2, #2
 8007304:	300c      	adds	r0, #12
 8007306:	f7fc fadb 	bl	80038c0 <memcpy>
 800730a:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800730c:	6869      	ldr	r1, [r5, #4]
 800730e:	9b01      	ldr	r3, [sp, #4]
 8007310:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8007314:	6028      	str	r0, [r5, #0]
 8007316:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 800731a:	463d      	mov	r5, r7
 800731c:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8007320:	3401      	adds	r4, #1
 8007322:	6153      	str	r3, [r2, #20]
 8007324:	612c      	str	r4, [r5, #16]
 8007326:	e7db      	b.n	80072e0 <__multadd+0x48>
 8007328:	4602      	mov	r2, r0
 800732a:	4b02      	ldr	r3, [pc, #8]	; (8007334 <__multadd+0x9c>)
 800732c:	4802      	ldr	r0, [pc, #8]	; (8007338 <__multadd+0xa0>)
 800732e:	21b5      	movs	r1, #181	; 0xb5
 8007330:	f001 fbca 	bl	8008ac8 <__assert_func>
 8007334:	0800ae3c 	.word	0x0800ae3c
 8007338:	0800afb0 	.word	0x0800afb0

0800733c <__s2b>:
 800733c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007340:	4c26      	ldr	r4, [pc, #152]	; (80073dc <__s2b+0xa0>)
 8007342:	9e08      	ldr	r6, [sp, #32]
 8007344:	461d      	mov	r5, r3
 8007346:	3308      	adds	r3, #8
 8007348:	fb84 4c03 	smull	r4, ip, r4, r3
 800734c:	2d09      	cmp	r5, #9
 800734e:	ea4f 73e3 	mov.w	r3, r3, asr #31
 8007352:	4690      	mov	r8, r2
 8007354:	4607      	mov	r7, r0
 8007356:	460c      	mov	r4, r1
 8007358:	ebc3 026c 	rsb	r2, r3, ip, asr #1
 800735c:	dd36      	ble.n	80073cc <__s2b+0x90>
 800735e:	2301      	movs	r3, #1
 8007360:	2100      	movs	r1, #0
 8007362:	005b      	lsls	r3, r3, #1
 8007364:	429a      	cmp	r2, r3
 8007366:	f101 0101 	add.w	r1, r1, #1
 800736a:	dcfa      	bgt.n	8007362 <__s2b+0x26>
 800736c:	4638      	mov	r0, r7
 800736e:	f7ff ff63 	bl	8007238 <_Balloc>
 8007372:	b368      	cbz	r0, 80073d0 <__s2b+0x94>
 8007374:	2301      	movs	r3, #1
 8007376:	f1b8 0f09 	cmp.w	r8, #9
 800737a:	e9c0 3604 	strd	r3, r6, [r0, #16]
 800737e:	dc13      	bgt.n	80073a8 <__s2b+0x6c>
 8007380:	340a      	adds	r4, #10
 8007382:	f04f 0809 	mov.w	r8, #9
 8007386:	4545      	cmp	r5, r8
 8007388:	dd0c      	ble.n	80073a4 <__s2b+0x68>
 800738a:	eba5 0508 	sub.w	r5, r5, r8
 800738e:	4425      	add	r5, r4
 8007390:	f814 3b01 	ldrb.w	r3, [r4], #1
 8007394:	4601      	mov	r1, r0
 8007396:	3b30      	subs	r3, #48	; 0x30
 8007398:	220a      	movs	r2, #10
 800739a:	4638      	mov	r0, r7
 800739c:	f7ff ff7c 	bl	8007298 <__multadd>
 80073a0:	42a5      	cmp	r5, r4
 80073a2:	d1f5      	bne.n	8007390 <__s2b+0x54>
 80073a4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80073a8:	f104 0909 	add.w	r9, r4, #9
 80073ac:	464e      	mov	r6, r9
 80073ae:	4444      	add	r4, r8
 80073b0:	f816 3b01 	ldrb.w	r3, [r6], #1
 80073b4:	4601      	mov	r1, r0
 80073b6:	3b30      	subs	r3, #48	; 0x30
 80073b8:	220a      	movs	r2, #10
 80073ba:	4638      	mov	r0, r7
 80073bc:	f7ff ff6c 	bl	8007298 <__multadd>
 80073c0:	42b4      	cmp	r4, r6
 80073c2:	d1f5      	bne.n	80073b0 <__s2b+0x74>
 80073c4:	f1a8 0408 	sub.w	r4, r8, #8
 80073c8:	444c      	add	r4, r9
 80073ca:	e7dc      	b.n	8007386 <__s2b+0x4a>
 80073cc:	2100      	movs	r1, #0
 80073ce:	e7cd      	b.n	800736c <__s2b+0x30>
 80073d0:	4602      	mov	r2, r0
 80073d2:	4b03      	ldr	r3, [pc, #12]	; (80073e0 <__s2b+0xa4>)
 80073d4:	4803      	ldr	r0, [pc, #12]	; (80073e4 <__s2b+0xa8>)
 80073d6:	21ce      	movs	r1, #206	; 0xce
 80073d8:	f001 fb76 	bl	8008ac8 <__assert_func>
 80073dc:	38e38e39 	.word	0x38e38e39
 80073e0:	0800ae3c 	.word	0x0800ae3c
 80073e4:	0800afb0 	.word	0x0800afb0

080073e8 <__hi0bits>:
 80073e8:	0c02      	lsrs	r2, r0, #16
 80073ea:	0412      	lsls	r2, r2, #16
 80073ec:	4603      	mov	r3, r0
 80073ee:	b9ca      	cbnz	r2, 8007424 <__hi0bits+0x3c>
 80073f0:	0403      	lsls	r3, r0, #16
 80073f2:	2010      	movs	r0, #16
 80073f4:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80073f8:	bf04      	itt	eq
 80073fa:	021b      	lsleq	r3, r3, #8
 80073fc:	3008      	addeq	r0, #8
 80073fe:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8007402:	bf04      	itt	eq
 8007404:	011b      	lsleq	r3, r3, #4
 8007406:	3004      	addeq	r0, #4
 8007408:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 800740c:	bf04      	itt	eq
 800740e:	009b      	lsleq	r3, r3, #2
 8007410:	3002      	addeq	r0, #2
 8007412:	2b00      	cmp	r3, #0
 8007414:	db05      	blt.n	8007422 <__hi0bits+0x3a>
 8007416:	f013 4f80 	tst.w	r3, #1073741824	; 0x40000000
 800741a:	f100 0001 	add.w	r0, r0, #1
 800741e:	bf08      	it	eq
 8007420:	2020      	moveq	r0, #32
 8007422:	4770      	bx	lr
 8007424:	2000      	movs	r0, #0
 8007426:	e7e5      	b.n	80073f4 <__hi0bits+0xc>

08007428 <__lo0bits>:
 8007428:	6803      	ldr	r3, [r0, #0]
 800742a:	f013 0207 	ands.w	r2, r3, #7
 800742e:	4601      	mov	r1, r0
 8007430:	d007      	beq.n	8007442 <__lo0bits+0x1a>
 8007432:	07da      	lsls	r2, r3, #31
 8007434:	d420      	bmi.n	8007478 <__lo0bits+0x50>
 8007436:	0798      	lsls	r0, r3, #30
 8007438:	d522      	bpl.n	8007480 <__lo0bits+0x58>
 800743a:	085b      	lsrs	r3, r3, #1
 800743c:	600b      	str	r3, [r1, #0]
 800743e:	2001      	movs	r0, #1
 8007440:	4770      	bx	lr
 8007442:	b298      	uxth	r0, r3
 8007444:	b9b0      	cbnz	r0, 8007474 <__lo0bits+0x4c>
 8007446:	0c1b      	lsrs	r3, r3, #16
 8007448:	2010      	movs	r0, #16
 800744a:	f013 0fff 	tst.w	r3, #255	; 0xff
 800744e:	bf04      	itt	eq
 8007450:	0a1b      	lsreq	r3, r3, #8
 8007452:	3008      	addeq	r0, #8
 8007454:	071a      	lsls	r2, r3, #28
 8007456:	bf04      	itt	eq
 8007458:	091b      	lsreq	r3, r3, #4
 800745a:	3004      	addeq	r0, #4
 800745c:	079a      	lsls	r2, r3, #30
 800745e:	bf04      	itt	eq
 8007460:	089b      	lsreq	r3, r3, #2
 8007462:	3002      	addeq	r0, #2
 8007464:	07da      	lsls	r2, r3, #31
 8007466:	d403      	bmi.n	8007470 <__lo0bits+0x48>
 8007468:	085b      	lsrs	r3, r3, #1
 800746a:	f100 0001 	add.w	r0, r0, #1
 800746e:	d005      	beq.n	800747c <__lo0bits+0x54>
 8007470:	600b      	str	r3, [r1, #0]
 8007472:	4770      	bx	lr
 8007474:	4610      	mov	r0, r2
 8007476:	e7e8      	b.n	800744a <__lo0bits+0x22>
 8007478:	2000      	movs	r0, #0
 800747a:	4770      	bx	lr
 800747c:	2020      	movs	r0, #32
 800747e:	4770      	bx	lr
 8007480:	089b      	lsrs	r3, r3, #2
 8007482:	600b      	str	r3, [r1, #0]
 8007484:	2002      	movs	r0, #2
 8007486:	4770      	bx	lr

08007488 <__i2b>:
 8007488:	b510      	push	{r4, lr}
 800748a:	460c      	mov	r4, r1
 800748c:	2101      	movs	r1, #1
 800748e:	f7ff fed3 	bl	8007238 <_Balloc>
 8007492:	4602      	mov	r2, r0
 8007494:	b118      	cbz	r0, 800749e <__i2b+0x16>
 8007496:	2301      	movs	r3, #1
 8007498:	e9c0 3404 	strd	r3, r4, [r0, #16]
 800749c:	bd10      	pop	{r4, pc}
 800749e:	4b03      	ldr	r3, [pc, #12]	; (80074ac <__i2b+0x24>)
 80074a0:	4803      	ldr	r0, [pc, #12]	; (80074b0 <__i2b+0x28>)
 80074a2:	f44f 71a0 	mov.w	r1, #320	; 0x140
 80074a6:	f001 fb0f 	bl	8008ac8 <__assert_func>
 80074aa:	bf00      	nop
 80074ac:	0800ae3c 	.word	0x0800ae3c
 80074b0:	0800afb0 	.word	0x0800afb0

080074b4 <__multiply>:
 80074b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80074b8:	690e      	ldr	r6, [r1, #16]
 80074ba:	6917      	ldr	r7, [r2, #16]
 80074bc:	42be      	cmp	r6, r7
 80074be:	b083      	sub	sp, #12
 80074c0:	460c      	mov	r4, r1
 80074c2:	4615      	mov	r5, r2
 80074c4:	db05      	blt.n	80074d2 <__multiply+0x1e>
 80074c6:	463a      	mov	r2, r7
 80074c8:	462b      	mov	r3, r5
 80074ca:	4637      	mov	r7, r6
 80074cc:	460d      	mov	r5, r1
 80074ce:	4616      	mov	r6, r2
 80074d0:	461c      	mov	r4, r3
 80074d2:	e9d5 1301 	ldrd	r1, r3, [r5, #4]
 80074d6:	eb07 0806 	add.w	r8, r7, r6
 80074da:	4543      	cmp	r3, r8
 80074dc:	bfb8      	it	lt
 80074de:	3101      	addlt	r1, #1
 80074e0:	f7ff feaa 	bl	8007238 <_Balloc>
 80074e4:	9000      	str	r0, [sp, #0]
 80074e6:	2800      	cmp	r0, #0
 80074e8:	d07f      	beq.n	80075ea <__multiply+0x136>
 80074ea:	9b00      	ldr	r3, [sp, #0]
 80074ec:	f103 0a14 	add.w	sl, r3, #20
 80074f0:	eb0a 0988 	add.w	r9, sl, r8, lsl #2
 80074f4:	45ca      	cmp	sl, r9
 80074f6:	d205      	bcs.n	8007504 <__multiply+0x50>
 80074f8:	4653      	mov	r3, sl
 80074fa:	2100      	movs	r1, #0
 80074fc:	f843 1b04 	str.w	r1, [r3], #4
 8007500:	4599      	cmp	r9, r3
 8007502:	d8fb      	bhi.n	80074fc <__multiply+0x48>
 8007504:	f104 0e14 	add.w	lr, r4, #20
 8007508:	eb0e 0b86 	add.w	fp, lr, r6, lsl #2
 800750c:	f105 0314 	add.w	r3, r5, #20
 8007510:	45de      	cmp	lr, fp
 8007512:	eb03 0787 	add.w	r7, r3, r7, lsl #2
 8007516:	d253      	bcs.n	80075c0 <__multiply+0x10c>
 8007518:	f8cd 8004 	str.w	r8, [sp, #4]
 800751c:	4698      	mov	r8, r3
 800751e:	e005      	b.n	800752c <__multiply+0x78>
 8007520:	0c09      	lsrs	r1, r1, #16
 8007522:	d128      	bne.n	8007576 <__multiply+0xc2>
 8007524:	45f3      	cmp	fp, lr
 8007526:	f10a 0a04 	add.w	sl, sl, #4
 800752a:	d947      	bls.n	80075bc <__multiply+0x108>
 800752c:	f85e 1b04 	ldr.w	r1, [lr], #4
 8007530:	b28e      	uxth	r6, r1
 8007532:	2e00      	cmp	r6, #0
 8007534:	d0f4      	beq.n	8007520 <__multiply+0x6c>
 8007536:	4645      	mov	r5, r8
 8007538:	4654      	mov	r4, sl
 800753a:	2300      	movs	r3, #0
 800753c:	f855 1b04 	ldr.w	r1, [r5], #4
 8007540:	6820      	ldr	r0, [r4, #0]
 8007542:	b28a      	uxth	r2, r1
 8007544:	fa1f fc80 	uxth.w	ip, r0
 8007548:	fb06 c202 	mla	r2, r6, r2, ip
 800754c:	0c09      	lsrs	r1, r1, #16
 800754e:	0c00      	lsrs	r0, r0, #16
 8007550:	4413      	add	r3, r2
 8007552:	fb06 0201 	mla	r2, r6, r1, r0
 8007556:	eb02 4213 	add.w	r2, r2, r3, lsr #16
 800755a:	b29b      	uxth	r3, r3
 800755c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 8007560:	42af      	cmp	r7, r5
 8007562:	f844 3b04 	str.w	r3, [r4], #4
 8007566:	ea4f 4312 	mov.w	r3, r2, lsr #16
 800756a:	d8e7      	bhi.n	800753c <__multiply+0x88>
 800756c:	6023      	str	r3, [r4, #0]
 800756e:	f85e 1c04 	ldr.w	r1, [lr, #-4]
 8007572:	0c09      	lsrs	r1, r1, #16
 8007574:	d0d6      	beq.n	8007524 <__multiply+0x70>
 8007576:	f8da 3000 	ldr.w	r3, [sl]
 800757a:	4640      	mov	r0, r8
 800757c:	461a      	mov	r2, r3
 800757e:	4654      	mov	r4, sl
 8007580:	f04f 0c00 	mov.w	ip, #0
 8007584:	8805      	ldrh	r5, [r0, #0]
 8007586:	0c12      	lsrs	r2, r2, #16
 8007588:	fb01 2205 	mla	r2, r1, r5, r2
 800758c:	4494      	add	ip, r2
 800758e:	b29b      	uxth	r3, r3
 8007590:	ea43 430c 	orr.w	r3, r3, ip, lsl #16
 8007594:	f844 3b04 	str.w	r3, [r4], #4
 8007598:	f850 3b04 	ldr.w	r3, [r0], #4
 800759c:	6822      	ldr	r2, [r4, #0]
 800759e:	0c1b      	lsrs	r3, r3, #16
 80075a0:	b295      	uxth	r5, r2
 80075a2:	fb01 5303 	mla	r3, r1, r3, r5
 80075a6:	eb03 431c 	add.w	r3, r3, ip, lsr #16
 80075aa:	4287      	cmp	r7, r0
 80075ac:	ea4f 4c13 	mov.w	ip, r3, lsr #16
 80075b0:	d8e8      	bhi.n	8007584 <__multiply+0xd0>
 80075b2:	45f3      	cmp	fp, lr
 80075b4:	6023      	str	r3, [r4, #0]
 80075b6:	f10a 0a04 	add.w	sl, sl, #4
 80075ba:	d8b7      	bhi.n	800752c <__multiply+0x78>
 80075bc:	f8dd 8004 	ldr.w	r8, [sp, #4]
 80075c0:	f1b8 0f00 	cmp.w	r8, #0
 80075c4:	dd0b      	ble.n	80075de <__multiply+0x12a>
 80075c6:	f859 3c04 	ldr.w	r3, [r9, #-4]
 80075ca:	f1a9 0904 	sub.w	r9, r9, #4
 80075ce:	b11b      	cbz	r3, 80075d8 <__multiply+0x124>
 80075d0:	e005      	b.n	80075de <__multiply+0x12a>
 80075d2:	f859 3d04 	ldr.w	r3, [r9, #-4]!
 80075d6:	b913      	cbnz	r3, 80075de <__multiply+0x12a>
 80075d8:	f1b8 0801 	subs.w	r8, r8, #1
 80075dc:	d1f9      	bne.n	80075d2 <__multiply+0x11e>
 80075de:	9800      	ldr	r0, [sp, #0]
 80075e0:	f8c0 8010 	str.w	r8, [r0, #16]
 80075e4:	b003      	add	sp, #12
 80075e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80075ea:	4602      	mov	r2, r0
 80075ec:	4b02      	ldr	r3, [pc, #8]	; (80075f8 <__multiply+0x144>)
 80075ee:	4803      	ldr	r0, [pc, #12]	; (80075fc <__multiply+0x148>)
 80075f0:	f240 115d 	movw	r1, #349	; 0x15d
 80075f4:	f001 fa68 	bl	8008ac8 <__assert_func>
 80075f8:	0800ae3c 	.word	0x0800ae3c
 80075fc:	0800afb0 	.word	0x0800afb0

08007600 <__pow5mult>:
 8007600:	f012 0303 	ands.w	r3, r2, #3
 8007604:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007608:	4614      	mov	r4, r2
 800760a:	4607      	mov	r7, r0
 800760c:	d12e      	bne.n	800766c <__pow5mult+0x6c>
 800760e:	460d      	mov	r5, r1
 8007610:	10a4      	asrs	r4, r4, #2
 8007612:	d01c      	beq.n	800764e <__pow5mult+0x4e>
 8007614:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8007616:	b396      	cbz	r6, 800767e <__pow5mult+0x7e>
 8007618:	07e3      	lsls	r3, r4, #31
 800761a:	f04f 0800 	mov.w	r8, #0
 800761e:	d406      	bmi.n	800762e <__pow5mult+0x2e>
 8007620:	1064      	asrs	r4, r4, #1
 8007622:	d014      	beq.n	800764e <__pow5mult+0x4e>
 8007624:	6830      	ldr	r0, [r6, #0]
 8007626:	b1a8      	cbz	r0, 8007654 <__pow5mult+0x54>
 8007628:	4606      	mov	r6, r0
 800762a:	07e3      	lsls	r3, r4, #31
 800762c:	d5f8      	bpl.n	8007620 <__pow5mult+0x20>
 800762e:	4632      	mov	r2, r6
 8007630:	4629      	mov	r1, r5
 8007632:	4638      	mov	r0, r7
 8007634:	f7ff ff3e 	bl	80074b4 <__multiply>
 8007638:	b1b5      	cbz	r5, 8007668 <__pow5mult+0x68>
 800763a:	686a      	ldr	r2, [r5, #4]
 800763c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800763e:	1064      	asrs	r4, r4, #1
 8007640:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8007644:	6029      	str	r1, [r5, #0]
 8007646:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800764a:	4605      	mov	r5, r0
 800764c:	d1ea      	bne.n	8007624 <__pow5mult+0x24>
 800764e:	4628      	mov	r0, r5
 8007650:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007654:	4632      	mov	r2, r6
 8007656:	4631      	mov	r1, r6
 8007658:	4638      	mov	r0, r7
 800765a:	f7ff ff2b 	bl	80074b4 <__multiply>
 800765e:	6030      	str	r0, [r6, #0]
 8007660:	f8c0 8000 	str.w	r8, [r0]
 8007664:	4606      	mov	r6, r0
 8007666:	e7e0      	b.n	800762a <__pow5mult+0x2a>
 8007668:	4605      	mov	r5, r0
 800766a:	e7d9      	b.n	8007620 <__pow5mult+0x20>
 800766c:	3b01      	subs	r3, #1
 800766e:	4a09      	ldr	r2, [pc, #36]	; (8007694 <__pow5mult+0x94>)
 8007670:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8007674:	2300      	movs	r3, #0
 8007676:	f7ff fe0f 	bl	8007298 <__multadd>
 800767a:	4605      	mov	r5, r0
 800767c:	e7c8      	b.n	8007610 <__pow5mult+0x10>
 800767e:	f240 2171 	movw	r1, #625	; 0x271
 8007682:	4638      	mov	r0, r7
 8007684:	f7ff ff00 	bl	8007488 <__i2b>
 8007688:	2300      	movs	r3, #0
 800768a:	64b8      	str	r0, [r7, #72]	; 0x48
 800768c:	4606      	mov	r6, r0
 800768e:	6003      	str	r3, [r0, #0]
 8007690:	e7c2      	b.n	8007618 <__pow5mult+0x18>
 8007692:	bf00      	nop
 8007694:	0800ae88 	.word	0x0800ae88

08007698 <__lshift>:
 8007698:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800769c:	690e      	ldr	r6, [r1, #16]
 800769e:	460d      	mov	r5, r1
 80076a0:	ea4f 1962 	mov.w	r9, r2, asr #5
 80076a4:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80076a8:	444e      	add	r6, r9
 80076aa:	1c74      	adds	r4, r6, #1
 80076ac:	429c      	cmp	r4, r3
 80076ae:	4690      	mov	r8, r2
 80076b0:	4607      	mov	r7, r0
 80076b2:	dd04      	ble.n	80076be <__lshift+0x26>
 80076b4:	005b      	lsls	r3, r3, #1
 80076b6:	429c      	cmp	r4, r3
 80076b8:	f101 0101 	add.w	r1, r1, #1
 80076bc:	dcfa      	bgt.n	80076b4 <__lshift+0x1c>
 80076be:	4638      	mov	r0, r7
 80076c0:	f7ff fdba 	bl	8007238 <_Balloc>
 80076c4:	2800      	cmp	r0, #0
 80076c6:	d042      	beq.n	800774e <__lshift+0xb6>
 80076c8:	f1b9 0f00 	cmp.w	r9, #0
 80076cc:	f100 0c14 	add.w	ip, r0, #20
 80076d0:	dd0e      	ble.n	80076f0 <__lshift+0x58>
 80076d2:	f109 0905 	add.w	r9, r9, #5
 80076d6:	ea4f 0989 	mov.w	r9, r9, lsl #2
 80076da:	eb00 0109 	add.w	r1, r0, r9
 80076de:	4663      	mov	r3, ip
 80076e0:	2200      	movs	r2, #0
 80076e2:	f843 2b04 	str.w	r2, [r3], #4
 80076e6:	428b      	cmp	r3, r1
 80076e8:	d1fb      	bne.n	80076e2 <__lshift+0x4a>
 80076ea:	f1a9 0914 	sub.w	r9, r9, #20
 80076ee:	44cc      	add	ip, r9
 80076f0:	6929      	ldr	r1, [r5, #16]
 80076f2:	f105 0314 	add.w	r3, r5, #20
 80076f6:	f018 081f 	ands.w	r8, r8, #31
 80076fa:	eb03 0e81 	add.w	lr, r3, r1, lsl #2
 80076fe:	d01d      	beq.n	800773c <__lshift+0xa4>
 8007700:	f1c8 0920 	rsb	r9, r8, #32
 8007704:	2200      	movs	r2, #0
 8007706:	6819      	ldr	r1, [r3, #0]
 8007708:	fa01 f108 	lsl.w	r1, r1, r8
 800770c:	4311      	orrs	r1, r2
 800770e:	f84c 1b04 	str.w	r1, [ip], #4
 8007712:	f853 2b04 	ldr.w	r2, [r3], #4
 8007716:	4573      	cmp	r3, lr
 8007718:	fa22 f209 	lsr.w	r2, r2, r9
 800771c:	d3f3      	bcc.n	8007706 <__lshift+0x6e>
 800771e:	f8cc 2000 	str.w	r2, [ip]
 8007722:	2a00      	cmp	r2, #0
 8007724:	bf18      	it	ne
 8007726:	4626      	movne	r6, r4
 8007728:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800772a:	686a      	ldr	r2, [r5, #4]
 800772c:	6106      	str	r6, [r0, #16]
 800772e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8007732:	6029      	str	r1, [r5, #0]
 8007734:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8007738:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800773c:	f1ac 0c04 	sub.w	ip, ip, #4
 8007740:	f853 2b04 	ldr.w	r2, [r3], #4
 8007744:	f84c 2f04 	str.w	r2, [ip, #4]!
 8007748:	459e      	cmp	lr, r3
 800774a:	d8f9      	bhi.n	8007740 <__lshift+0xa8>
 800774c:	e7ec      	b.n	8007728 <__lshift+0x90>
 800774e:	4602      	mov	r2, r0
 8007750:	4b02      	ldr	r3, [pc, #8]	; (800775c <__lshift+0xc4>)
 8007752:	4803      	ldr	r0, [pc, #12]	; (8007760 <__lshift+0xc8>)
 8007754:	f240 11d9 	movw	r1, #473	; 0x1d9
 8007758:	f001 f9b6 	bl	8008ac8 <__assert_func>
 800775c:	0800ae3c 	.word	0x0800ae3c
 8007760:	0800afb0 	.word	0x0800afb0

08007764 <__mcmp>:
 8007764:	b430      	push	{r4, r5}
 8007766:	690b      	ldr	r3, [r1, #16]
 8007768:	4605      	mov	r5, r0
 800776a:	6900      	ldr	r0, [r0, #16]
 800776c:	1ac0      	subs	r0, r0, r3
 800776e:	d110      	bne.n	8007792 <__mcmp+0x2e>
 8007770:	009b      	lsls	r3, r3, #2
 8007772:	3514      	adds	r5, #20
 8007774:	3114      	adds	r1, #20
 8007776:	4419      	add	r1, r3
 8007778:	442b      	add	r3, r5
 800777a:	e001      	b.n	8007780 <__mcmp+0x1c>
 800777c:	429d      	cmp	r5, r3
 800777e:	d208      	bcs.n	8007792 <__mcmp+0x2e>
 8007780:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8007784:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8007788:	4294      	cmp	r4, r2
 800778a:	d0f7      	beq.n	800777c <__mcmp+0x18>
 800778c:	d203      	bcs.n	8007796 <__mcmp+0x32>
 800778e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007792:	bc30      	pop	{r4, r5}
 8007794:	4770      	bx	lr
 8007796:	2001      	movs	r0, #1
 8007798:	bc30      	pop	{r4, r5}
 800779a:	4770      	bx	lr

0800779c <__mdiff>:
 800779c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80077a0:	4616      	mov	r6, r2
 80077a2:	690b      	ldr	r3, [r1, #16]
 80077a4:	6912      	ldr	r2, [r2, #16]
 80077a6:	eba3 0802 	sub.w	r8, r3, r2
 80077aa:	f1b8 0f00 	cmp.w	r8, #0
 80077ae:	460d      	mov	r5, r1
 80077b0:	d167      	bne.n	8007882 <__mdiff+0xe6>
 80077b2:	0092      	lsls	r2, r2, #2
 80077b4:	f101 0714 	add.w	r7, r1, #20
 80077b8:	f106 0114 	add.w	r1, r6, #20
 80077bc:	18bb      	adds	r3, r7, r2
 80077be:	4411      	add	r1, r2
 80077c0:	e001      	b.n	80077c6 <__mdiff+0x2a>
 80077c2:	429f      	cmp	r7, r3
 80077c4:	d261      	bcs.n	800788a <__mdiff+0xee>
 80077c6:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 80077ca:	f851 4d04 	ldr.w	r4, [r1, #-4]!
 80077ce:	42a2      	cmp	r2, r4
 80077d0:	d0f7      	beq.n	80077c2 <__mdiff+0x26>
 80077d2:	d350      	bcc.n	8007876 <__mdiff+0xda>
 80077d4:	6869      	ldr	r1, [r5, #4]
 80077d6:	f7ff fd2f 	bl	8007238 <_Balloc>
 80077da:	2800      	cmp	r0, #0
 80077dc:	d05f      	beq.n	800789e <__mdiff+0x102>
 80077de:	692f      	ldr	r7, [r5, #16]
 80077e0:	6933      	ldr	r3, [r6, #16]
 80077e2:	f8c0 800c 	str.w	r8, [r0, #12]
 80077e6:	f106 0214 	add.w	r2, r6, #20
 80077ea:	3514      	adds	r5, #20
 80077ec:	eb05 0c87 	add.w	ip, r5, r7, lsl #2
 80077f0:	eb02 0e83 	add.w	lr, r2, r3, lsl #2
 80077f4:	f100 0614 	add.w	r6, r0, #20
 80077f8:	2100      	movs	r1, #0
 80077fa:	e000      	b.n	80077fe <__mdiff+0x62>
 80077fc:	4626      	mov	r6, r4
 80077fe:	f852 4b04 	ldr.w	r4, [r2], #4
 8007802:	f855 8b04 	ldr.w	r8, [r5], #4
 8007806:	fa1f f984 	uxth.w	r9, r4
 800780a:	fa11 f388 	uxtah	r3, r1, r8
 800780e:	0c21      	lsrs	r1, r4, #16
 8007810:	eba3 0309 	sub.w	r3, r3, r9
 8007814:	ebc1 4118 	rsb	r1, r1, r8, lsr #16
 8007818:	eb01 4123 	add.w	r1, r1, r3, asr #16
 800781c:	4634      	mov	r4, r6
 800781e:	b29b      	uxth	r3, r3
 8007820:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8007824:	4596      	cmp	lr, r2
 8007826:	ea4f 4121 	mov.w	r1, r1, asr #16
 800782a:	f844 3b04 	str.w	r3, [r4], #4
 800782e:	46a8      	mov	r8, r5
 8007830:	d8e4      	bhi.n	80077fc <__mdiff+0x60>
 8007832:	45ac      	cmp	ip, r5
 8007834:	d916      	bls.n	8007864 <__mdiff+0xc8>
 8007836:	4626      	mov	r6, r4
 8007838:	f858 2b04 	ldr.w	r2, [r8], #4
 800783c:	fa11 f382 	uxtah	r3, r1, r2
 8007840:	1419      	asrs	r1, r3, #16
 8007842:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8007846:	b29b      	uxth	r3, r3
 8007848:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800784c:	45c4      	cmp	ip, r8
 800784e:	f846 3b04 	str.w	r3, [r6], #4
 8007852:	ea4f 4121 	mov.w	r1, r1, asr #16
 8007856:	d8ef      	bhi.n	8007838 <__mdiff+0x9c>
 8007858:	f10c 36ff 	add.w	r6, ip, #4294967295	; 0xffffffff
 800785c:	1b76      	subs	r6, r6, r5
 800785e:	f026 0603 	bic.w	r6, r6, #3
 8007862:	4426      	add	r6, r4
 8007864:	b923      	cbnz	r3, 8007870 <__mdiff+0xd4>
 8007866:	f856 3d04 	ldr.w	r3, [r6, #-4]!
 800786a:	3f01      	subs	r7, #1
 800786c:	2b00      	cmp	r3, #0
 800786e:	d0fa      	beq.n	8007866 <__mdiff+0xca>
 8007870:	6107      	str	r7, [r0, #16]
 8007872:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007876:	462b      	mov	r3, r5
 8007878:	f04f 0801 	mov.w	r8, #1
 800787c:	4635      	mov	r5, r6
 800787e:	461e      	mov	r6, r3
 8007880:	e7a8      	b.n	80077d4 <__mdiff+0x38>
 8007882:	dbf8      	blt.n	8007876 <__mdiff+0xda>
 8007884:	f04f 0800 	mov.w	r8, #0
 8007888:	e7a4      	b.n	80077d4 <__mdiff+0x38>
 800788a:	2100      	movs	r1, #0
 800788c:	f7ff fcd4 	bl	8007238 <_Balloc>
 8007890:	b160      	cbz	r0, 80078ac <__mdiff+0x110>
 8007892:	2201      	movs	r2, #1
 8007894:	2300      	movs	r3, #0
 8007896:	e9c0 2304 	strd	r2, r3, [r0, #16]
 800789a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800789e:	4602      	mov	r2, r0
 80078a0:	4b06      	ldr	r3, [pc, #24]	; (80078bc <__mdiff+0x120>)
 80078a2:	4807      	ldr	r0, [pc, #28]	; (80078c0 <__mdiff+0x124>)
 80078a4:	f44f 7110 	mov.w	r1, #576	; 0x240
 80078a8:	f001 f90e 	bl	8008ac8 <__assert_func>
 80078ac:	4602      	mov	r2, r0
 80078ae:	4b03      	ldr	r3, [pc, #12]	; (80078bc <__mdiff+0x120>)
 80078b0:	4803      	ldr	r0, [pc, #12]	; (80078c0 <__mdiff+0x124>)
 80078b2:	f240 2132 	movw	r1, #562	; 0x232
 80078b6:	f001 f907 	bl	8008ac8 <__assert_func>
 80078ba:	bf00      	nop
 80078bc:	0800ae3c 	.word	0x0800ae3c
 80078c0:	0800afb0 	.word	0x0800afb0

080078c4 <__ulp>:
 80078c4:	4b12      	ldr	r3, [pc, #72]	; (8007910 <__ulp+0x4c>)
 80078c6:	ee10 2a90 	vmov	r2, s1
 80078ca:	401a      	ands	r2, r3
 80078cc:	f1a2 7350 	sub.w	r3, r2, #54525952	; 0x3400000
 80078d0:	2b00      	cmp	r3, #0
 80078d2:	dd04      	ble.n	80078de <__ulp+0x1a>
 80078d4:	2000      	movs	r0, #0
 80078d6:	4619      	mov	r1, r3
 80078d8:	ec41 0b10 	vmov	d0, r0, r1
 80078dc:	4770      	bx	lr
 80078de:	425b      	negs	r3, r3
 80078e0:	151b      	asrs	r3, r3, #20
 80078e2:	2b13      	cmp	r3, #19
 80078e4:	dc07      	bgt.n	80078f6 <__ulp+0x32>
 80078e6:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 80078ea:	2000      	movs	r0, #0
 80078ec:	fa42 f103 	asr.w	r1, r2, r3
 80078f0:	ec41 0b10 	vmov	d0, r0, r1
 80078f4:	4770      	bx	lr
 80078f6:	3b14      	subs	r3, #20
 80078f8:	2b1e      	cmp	r3, #30
 80078fa:	bfda      	itte	le
 80078fc:	f04f 4200 	movle.w	r2, #2147483648	; 0x80000000
 8007900:	fa22 f303 	lsrle.w	r3, r2, r3
 8007904:	2301      	movgt	r3, #1
 8007906:	2100      	movs	r1, #0
 8007908:	4618      	mov	r0, r3
 800790a:	ec41 0b10 	vmov	d0, r0, r1
 800790e:	4770      	bx	lr
 8007910:	7ff00000 	.word	0x7ff00000

08007914 <__b2d>:
 8007914:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007916:	6904      	ldr	r4, [r0, #16]
 8007918:	f100 0614 	add.w	r6, r0, #20
 800791c:	eb06 0484 	add.w	r4, r6, r4, lsl #2
 8007920:	f854 5c04 	ldr.w	r5, [r4, #-4]
 8007924:	4628      	mov	r0, r5
 8007926:	f7ff fd5f 	bl	80073e8 <__hi0bits>
 800792a:	f1c0 0320 	rsb	r3, r0, #32
 800792e:	280a      	cmp	r0, #10
 8007930:	600b      	str	r3, [r1, #0]
 8007932:	f1a4 0104 	sub.w	r1, r4, #4
 8007936:	dd31      	ble.n	800799c <__b2d+0x88>
 8007938:	428e      	cmp	r6, r1
 800793a:	f1a0 000b 	sub.w	r0, r0, #11
 800793e:	d21a      	bcs.n	8007976 <__b2d+0x62>
 8007940:	f854 1c08 	ldr.w	r1, [r4, #-8]
 8007944:	b310      	cbz	r0, 800798c <__b2d+0x78>
 8007946:	f1c0 0720 	rsb	r7, r0, #32
 800794a:	4085      	lsls	r5, r0
 800794c:	fa21 f307 	lsr.w	r3, r1, r7
 8007950:	431d      	orrs	r5, r3
 8007952:	f045 537f 	orr.w	r3, r5, #1069547520	; 0x3fc00000
 8007956:	f1a4 0508 	sub.w	r5, r4, #8
 800795a:	42ae      	cmp	r6, r5
 800795c:	fa01 f000 	lsl.w	r0, r1, r0
 8007960:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8007964:	d203      	bcs.n	800796e <__b2d+0x5a>
 8007966:	f854 1c0c 	ldr.w	r1, [r4, #-12]
 800796a:	40f9      	lsrs	r1, r7
 800796c:	4308      	orrs	r0, r1
 800796e:	4602      	mov	r2, r0
 8007970:	ec43 2b10 	vmov	d0, r2, r3
 8007974:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007976:	b140      	cbz	r0, 800798a <__b2d+0x76>
 8007978:	fa05 f000 	lsl.w	r0, r5, r0
 800797c:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8007980:	2000      	movs	r0, #0
 8007982:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8007986:	4602      	mov	r2, r0
 8007988:	e7f2      	b.n	8007970 <__b2d+0x5c>
 800798a:	4601      	mov	r1, r0
 800798c:	f045 537f 	orr.w	r3, r5, #1069547520	; 0x3fc00000
 8007990:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 8007994:	460a      	mov	r2, r1
 8007996:	ec43 2b10 	vmov	d0, r2, r3
 800799a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800799c:	428e      	cmp	r6, r1
 800799e:	f1c0 070b 	rsb	r7, r0, #11
 80079a2:	bf38      	it	cc
 80079a4:	f854 1c08 	ldrcc.w	r1, [r4, #-8]
 80079a8:	fa25 fc07 	lsr.w	ip, r5, r7
 80079ac:	f100 0015 	add.w	r0, r0, #21
 80079b0:	f04c 537f 	orr.w	r3, ip, #1069547520	; 0x3fc00000
 80079b4:	bf34      	ite	cc
 80079b6:	40f9      	lsrcc	r1, r7
 80079b8:	2100      	movcs	r1, #0
 80079ba:	fa05 f000 	lsl.w	r0, r5, r0
 80079be:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 80079c2:	ea40 0201 	orr.w	r2, r0, r1
 80079c6:	ec43 2b10 	vmov	d0, r2, r3
 80079ca:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

080079cc <__d2b>:
 80079cc:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80079d0:	4688      	mov	r8, r1
 80079d2:	b083      	sub	sp, #12
 80079d4:	2101      	movs	r1, #1
 80079d6:	4615      	mov	r5, r2
 80079d8:	ec57 6b10 	vmov	r6, r7, d0
 80079dc:	f7ff fc2c 	bl	8007238 <_Balloc>
 80079e0:	4604      	mov	r4, r0
 80079e2:	2800      	cmp	r0, #0
 80079e4:	d050      	beq.n	8007a88 <__d2b+0xbc>
 80079e6:	f3c7 590a 	ubfx	r9, r7, #20, #11
 80079ea:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80079ee:	f1b9 0f00 	cmp.w	r9, #0
 80079f2:	d001      	beq.n	80079f8 <__d2b+0x2c>
 80079f4:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80079f8:	2e00      	cmp	r6, #0
 80079fa:	9301      	str	r3, [sp, #4]
 80079fc:	d025      	beq.n	8007a4a <__d2b+0x7e>
 80079fe:	4668      	mov	r0, sp
 8007a00:	9600      	str	r6, [sp, #0]
 8007a02:	f7ff fd11 	bl	8007428 <__lo0bits>
 8007a06:	2800      	cmp	r0, #0
 8007a08:	d03a      	beq.n	8007a80 <__d2b+0xb4>
 8007a0a:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007a0e:	f1c0 0220 	rsb	r2, r0, #32
 8007a12:	fa03 f202 	lsl.w	r2, r3, r2
 8007a16:	430a      	orrs	r2, r1
 8007a18:	40c3      	lsrs	r3, r0
 8007a1a:	9301      	str	r3, [sp, #4]
 8007a1c:	6162      	str	r2, [r4, #20]
 8007a1e:	2b00      	cmp	r3, #0
 8007a20:	bf14      	ite	ne
 8007a22:	2102      	movne	r1, #2
 8007a24:	2101      	moveq	r1, #1
 8007a26:	61a3      	str	r3, [r4, #24]
 8007a28:	6121      	str	r1, [r4, #16]
 8007a2a:	f1b9 0f00 	cmp.w	r9, #0
 8007a2e:	d017      	beq.n	8007a60 <__d2b+0x94>
 8007a30:	f2a9 4933 	subw	r9, r9, #1075	; 0x433
 8007a34:	eb09 0300 	add.w	r3, r9, r0
 8007a38:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8007a3c:	f8c8 3000 	str.w	r3, [r8]
 8007a40:	6028      	str	r0, [r5, #0]
 8007a42:	4620      	mov	r0, r4
 8007a44:	b003      	add	sp, #12
 8007a46:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007a4a:	a801      	add	r0, sp, #4
 8007a4c:	f7ff fcec 	bl	8007428 <__lo0bits>
 8007a50:	9b01      	ldr	r3, [sp, #4]
 8007a52:	6163      	str	r3, [r4, #20]
 8007a54:	2101      	movs	r1, #1
 8007a56:	3020      	adds	r0, #32
 8007a58:	6121      	str	r1, [r4, #16]
 8007a5a:	f1b9 0f00 	cmp.w	r9, #0
 8007a5e:	d1e7      	bne.n	8007a30 <__d2b+0x64>
 8007a60:	eb04 0381 	add.w	r3, r4, r1, lsl #2
 8007a64:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8007a68:	f8c8 0000 	str.w	r0, [r8]
 8007a6c:	6918      	ldr	r0, [r3, #16]
 8007a6e:	f7ff fcbb 	bl	80073e8 <__hi0bits>
 8007a72:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007a76:	6028      	str	r0, [r5, #0]
 8007a78:	4620      	mov	r0, r4
 8007a7a:	b003      	add	sp, #12
 8007a7c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007a80:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007a84:	6162      	str	r2, [r4, #20]
 8007a86:	e7ca      	b.n	8007a1e <__d2b+0x52>
 8007a88:	4602      	mov	r2, r0
 8007a8a:	4b03      	ldr	r3, [pc, #12]	; (8007a98 <__d2b+0xcc>)
 8007a8c:	4803      	ldr	r0, [pc, #12]	; (8007a9c <__d2b+0xd0>)
 8007a8e:	f240 310a 	movw	r1, #778	; 0x30a
 8007a92:	f001 f819 	bl	8008ac8 <__assert_func>
 8007a96:	bf00      	nop
 8007a98:	0800ae3c 	.word	0x0800ae3c
 8007a9c:	0800afb0 	.word	0x0800afb0

08007aa0 <__ratio>:
 8007aa0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8007aa4:	b083      	sub	sp, #12
 8007aa6:	4688      	mov	r8, r1
 8007aa8:	4669      	mov	r1, sp
 8007aaa:	4681      	mov	r9, r0
 8007aac:	f7ff ff32 	bl	8007914 <__b2d>
 8007ab0:	4640      	mov	r0, r8
 8007ab2:	a901      	add	r1, sp, #4
 8007ab4:	ec55 4b10 	vmov	r4, r5, d0
 8007ab8:	f7ff ff2c 	bl	8007914 <__b2d>
 8007abc:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007ac0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8007ac4:	f8d8 0010 	ldr.w	r0, [r8, #16]
 8007ac8:	1acb      	subs	r3, r1, r3
 8007aca:	1a12      	subs	r2, r2, r0
 8007acc:	eb03 1342 	add.w	r3, r3, r2, lsl #5
 8007ad0:	2b00      	cmp	r3, #0
 8007ad2:	ec57 6b10 	vmov	r6, r7, d0
 8007ad6:	dd0d      	ble.n	8007af4 <__ratio+0x54>
 8007ad8:	eb05 5903 	add.w	r9, r5, r3, lsl #20
 8007adc:	464d      	mov	r5, r9
 8007ade:	4632      	mov	r2, r6
 8007ae0:	463b      	mov	r3, r7
 8007ae2:	4620      	mov	r0, r4
 8007ae4:	4629      	mov	r1, r5
 8007ae6:	f002 f9f5 	bl	8009ed4 <__aeabi_ddiv>
 8007aea:	ec41 0b10 	vmov	d0, r0, r1
 8007aee:	b003      	add	sp, #12
 8007af0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007af4:	ebc3 3303 	rsb	r3, r3, r3, lsl #12
 8007af8:	eb07 5103 	add.w	r1, r7, r3, lsl #20
 8007afc:	460f      	mov	r7, r1
 8007afe:	e7ee      	b.n	8007ade <__ratio+0x3e>

08007b00 <_mprec_log10>:
 8007b00:	2817      	cmp	r0, #23
 8007b02:	b5d0      	push	{r4, r6, r7, lr}
 8007b04:	4604      	mov	r4, r0
 8007b06:	dd0c      	ble.n	8007b22 <_mprec_log10+0x22>
 8007b08:	490a      	ldr	r1, [pc, #40]	; (8007b34 <_mprec_log10+0x34>)
 8007b0a:	4f0b      	ldr	r7, [pc, #44]	; (8007b38 <_mprec_log10+0x38>)
 8007b0c:	2000      	movs	r0, #0
 8007b0e:	2600      	movs	r6, #0
 8007b10:	4632      	mov	r2, r6
 8007b12:	463b      	mov	r3, r7
 8007b14:	f002 f8b4 	bl	8009c80 <__aeabi_dmul>
 8007b18:	3c01      	subs	r4, #1
 8007b1a:	d1f9      	bne.n	8007b10 <_mprec_log10+0x10>
 8007b1c:	ec41 0b10 	vmov	d0, r0, r1
 8007b20:	bdd0      	pop	{r4, r6, r7, pc}
 8007b22:	4b06      	ldr	r3, [pc, #24]	; (8007b3c <_mprec_log10+0x3c>)
 8007b24:	eb03 04c0 	add.w	r4, r3, r0, lsl #3
 8007b28:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
 8007b2c:	ec41 0b10 	vmov	d0, r0, r1
 8007b30:	bdd0      	pop	{r4, r6, r7, pc}
 8007b32:	bf00      	nop
 8007b34:	3ff00000 	.word	0x3ff00000
 8007b38:	40240000 	.word	0x40240000
 8007b3c:	0800ae88 	.word	0x0800ae88

08007b40 <__copybits>:
 8007b40:	b470      	push	{r4, r5, r6}
 8007b42:	6914      	ldr	r4, [r2, #16]
 8007b44:	1e4e      	subs	r6, r1, #1
 8007b46:	f102 0314 	add.w	r3, r2, #20
 8007b4a:	1176      	asrs	r6, r6, #5
 8007b4c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007b50:	3601      	adds	r6, #1
 8007b52:	428b      	cmp	r3, r1
 8007b54:	eb00 0686 	add.w	r6, r0, r6, lsl #2
 8007b58:	d20c      	bcs.n	8007b74 <__copybits+0x34>
 8007b5a:	1f04      	subs	r4, r0, #4
 8007b5c:	f853 5b04 	ldr.w	r5, [r3], #4
 8007b60:	f844 5f04 	str.w	r5, [r4, #4]!
 8007b64:	4299      	cmp	r1, r3
 8007b66:	d8f9      	bhi.n	8007b5c <__copybits+0x1c>
 8007b68:	1a8b      	subs	r3, r1, r2
 8007b6a:	3b15      	subs	r3, #21
 8007b6c:	f023 0303 	bic.w	r3, r3, #3
 8007b70:	3304      	adds	r3, #4
 8007b72:	4418      	add	r0, r3
 8007b74:	4286      	cmp	r6, r0
 8007b76:	d904      	bls.n	8007b82 <__copybits+0x42>
 8007b78:	2300      	movs	r3, #0
 8007b7a:	f840 3b04 	str.w	r3, [r0], #4
 8007b7e:	4286      	cmp	r6, r0
 8007b80:	d8fb      	bhi.n	8007b7a <__copybits+0x3a>
 8007b82:	bc70      	pop	{r4, r5, r6}
 8007b84:	4770      	bx	lr
 8007b86:	bf00      	nop

08007b88 <__any_on>:
 8007b88:	6903      	ldr	r3, [r0, #16]
 8007b8a:	114a      	asrs	r2, r1, #5
 8007b8c:	4293      	cmp	r3, r2
 8007b8e:	b410      	push	{r4}
 8007b90:	f100 0414 	add.w	r4, r0, #20
 8007b94:	da10      	bge.n	8007bb8 <__any_on+0x30>
 8007b96:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 8007b9a:	429c      	cmp	r4, r3
 8007b9c:	d21e      	bcs.n	8007bdc <__any_on+0x54>
 8007b9e:	f853 0c04 	ldr.w	r0, [r3, #-4]
 8007ba2:	3b04      	subs	r3, #4
 8007ba4:	b118      	cbz	r0, 8007bae <__any_on+0x26>
 8007ba6:	e015      	b.n	8007bd4 <__any_on+0x4c>
 8007ba8:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 8007bac:	b992      	cbnz	r2, 8007bd4 <__any_on+0x4c>
 8007bae:	429c      	cmp	r4, r3
 8007bb0:	d3fa      	bcc.n	8007ba8 <__any_on+0x20>
 8007bb2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007bb6:	4770      	bx	lr
 8007bb8:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 8007bbc:	dded      	ble.n	8007b9a <__any_on+0x12>
 8007bbe:	f011 011f 	ands.w	r1, r1, #31
 8007bc2:	d0ea      	beq.n	8007b9a <__any_on+0x12>
 8007bc4:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
 8007bc8:	fa20 f201 	lsr.w	r2, r0, r1
 8007bcc:	fa02 f101 	lsl.w	r1, r2, r1
 8007bd0:	4288      	cmp	r0, r1
 8007bd2:	d0e2      	beq.n	8007b9a <__any_on+0x12>
 8007bd4:	2001      	movs	r0, #1
 8007bd6:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007bda:	4770      	bx	lr
 8007bdc:	2000      	movs	r0, #0
 8007bde:	e7e8      	b.n	8007bb2 <__any_on+0x2a>

08007be0 <_sbrk_r>:
 8007be0:	b538      	push	{r3, r4, r5, lr}
 8007be2:	4c07      	ldr	r4, [pc, #28]	; (8007c00 <_sbrk_r+0x20>)
 8007be4:	2300      	movs	r3, #0
 8007be6:	4605      	mov	r5, r0
 8007be8:	4608      	mov	r0, r1
 8007bea:	6023      	str	r3, [r4, #0]
 8007bec:	f7f8 fd50 	bl	8000690 <_sbrk>
 8007bf0:	1c43      	adds	r3, r0, #1
 8007bf2:	d000      	beq.n	8007bf6 <_sbrk_r+0x16>
 8007bf4:	bd38      	pop	{r3, r4, r5, pc}
 8007bf6:	6823      	ldr	r3, [r4, #0]
 8007bf8:	2b00      	cmp	r3, #0
 8007bfa:	d0fb      	beq.n	8007bf4 <_sbrk_r+0x14>
 8007bfc:	602b      	str	r3, [r5, #0]
 8007bfe:	bd38      	pop	{r3, r4, r5, pc}
 8007c00:	20000c28 	.word	0x20000c28

08007c04 <__sread>:
 8007c04:	b510      	push	{r4, lr}
 8007c06:	460c      	mov	r4, r1
 8007c08:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007c0c:	f001 fb2e 	bl	800926c <_read_r>
 8007c10:	2800      	cmp	r0, #0
 8007c12:	db03      	blt.n	8007c1c <__sread+0x18>
 8007c14:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007c16:	4403      	add	r3, r0
 8007c18:	6523      	str	r3, [r4, #80]	; 0x50
 8007c1a:	bd10      	pop	{r4, pc}
 8007c1c:	89a3      	ldrh	r3, [r4, #12]
 8007c1e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8007c22:	81a3      	strh	r3, [r4, #12]
 8007c24:	bd10      	pop	{r4, pc}
 8007c26:	bf00      	nop

08007c28 <__seofread>:
 8007c28:	2000      	movs	r0, #0
 8007c2a:	4770      	bx	lr

08007c2c <__swrite>:
 8007c2c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007c30:	4616      	mov	r6, r2
 8007c32:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8007c36:	461f      	mov	r7, r3
 8007c38:	05d3      	lsls	r3, r2, #23
 8007c3a:	460c      	mov	r4, r1
 8007c3c:	4605      	mov	r5, r0
 8007c3e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007c42:	d409      	bmi.n	8007c58 <__swrite+0x2c>
 8007c44:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8007c48:	81a2      	strh	r2, [r4, #12]
 8007c4a:	463b      	mov	r3, r7
 8007c4c:	4632      	mov	r2, r6
 8007c4e:	4628      	mov	r0, r5
 8007c50:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8007c54:	f000 bf22 	b.w	8008a9c <_write_r>
 8007c58:	2200      	movs	r2, #0
 8007c5a:	2302      	movs	r3, #2
 8007c5c:	f001 fa68 	bl	8009130 <_lseek_r>
 8007c60:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007c64:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8007c68:	e7ec      	b.n	8007c44 <__swrite+0x18>
 8007c6a:	bf00      	nop

08007c6c <__sseek>:
 8007c6c:	b510      	push	{r4, lr}
 8007c6e:	460c      	mov	r4, r1
 8007c70:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007c74:	f001 fa5c 	bl	8009130 <_lseek_r>
 8007c78:	89a3      	ldrh	r3, [r4, #12]
 8007c7a:	1c42      	adds	r2, r0, #1
 8007c7c:	bf0e      	itee	eq
 8007c7e:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007c82:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8007c86:	6520      	strne	r0, [r4, #80]	; 0x50
 8007c88:	81a3      	strh	r3, [r4, #12]
 8007c8a:	bd10      	pop	{r4, pc}

08007c8c <__sclose>:
 8007c8c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007c90:	f000 bf6e 	b.w	8008b70 <_close_r>
	...

08007cc0 <strlen>:
 8007cc0:	f890 f000 	pld	[r0]
 8007cc4:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8007cc8:	f020 0107 	bic.w	r1, r0, #7
 8007ccc:	f06f 0c00 	mvn.w	ip, #0
 8007cd0:	f010 0407 	ands.w	r4, r0, #7
 8007cd4:	f891 f020 	pld	[r1, #32]
 8007cd8:	f040 8049 	bne.w	8007d6e <strlen+0xae>
 8007cdc:	f04f 0400 	mov.w	r4, #0
 8007ce0:	f06f 0007 	mvn.w	r0, #7
 8007ce4:	e9d1 2300 	ldrd	r2, r3, [r1]
 8007ce8:	f891 f040 	pld	[r1, #64]	; 0x40
 8007cec:	f100 0008 	add.w	r0, r0, #8
 8007cf0:	fa82 f24c 	uadd8	r2, r2, ip
 8007cf4:	faa4 f28c 	sel	r2, r4, ip
 8007cf8:	fa83 f34c 	uadd8	r3, r3, ip
 8007cfc:	faa2 f38c 	sel	r3, r2, ip
 8007d00:	bb4b      	cbnz	r3, 8007d56 <strlen+0x96>
 8007d02:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8007d06:	fa82 f24c 	uadd8	r2, r2, ip
 8007d0a:	f100 0008 	add.w	r0, r0, #8
 8007d0e:	faa4 f28c 	sel	r2, r4, ip
 8007d12:	fa83 f34c 	uadd8	r3, r3, ip
 8007d16:	faa2 f38c 	sel	r3, r2, ip
 8007d1a:	b9e3      	cbnz	r3, 8007d56 <strlen+0x96>
 8007d1c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8007d20:	fa82 f24c 	uadd8	r2, r2, ip
 8007d24:	f100 0008 	add.w	r0, r0, #8
 8007d28:	faa4 f28c 	sel	r2, r4, ip
 8007d2c:	fa83 f34c 	uadd8	r3, r3, ip
 8007d30:	faa2 f38c 	sel	r3, r2, ip
 8007d34:	b97b      	cbnz	r3, 8007d56 <strlen+0x96>
 8007d36:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 8007d3a:	f101 0120 	add.w	r1, r1, #32
 8007d3e:	fa82 f24c 	uadd8	r2, r2, ip
 8007d42:	f100 0008 	add.w	r0, r0, #8
 8007d46:	faa4 f28c 	sel	r2, r4, ip
 8007d4a:	fa83 f34c 	uadd8	r3, r3, ip
 8007d4e:	faa2 f38c 	sel	r3, r2, ip
 8007d52:	2b00      	cmp	r3, #0
 8007d54:	d0c6      	beq.n	8007ce4 <strlen+0x24>
 8007d56:	2a00      	cmp	r2, #0
 8007d58:	bf04      	itt	eq
 8007d5a:	3004      	addeq	r0, #4
 8007d5c:	461a      	moveq	r2, r3
 8007d5e:	ba12      	rev	r2, r2
 8007d60:	fab2 f282 	clz	r2, r2
 8007d64:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8007d68:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8007d6c:	4770      	bx	lr
 8007d6e:	e9d1 2300 	ldrd	r2, r3, [r1]
 8007d72:	f004 0503 	and.w	r5, r4, #3
 8007d76:	f1c4 0000 	rsb	r0, r4, #0
 8007d7a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 8007d7e:	f014 0f04 	tst.w	r4, #4
 8007d82:	f891 f040 	pld	[r1, #64]	; 0x40
 8007d86:	fa0c f505 	lsl.w	r5, ip, r5
 8007d8a:	ea62 0205 	orn	r2, r2, r5
 8007d8e:	bf1c      	itt	ne
 8007d90:	ea63 0305 	ornne	r3, r3, r5
 8007d94:	4662      	movne	r2, ip
 8007d96:	f04f 0400 	mov.w	r4, #0
 8007d9a:	e7a9      	b.n	8007cf0 <strlen+0x30>

08007d9c <__sprint_r.part.0>:
 8007d9c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007da0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007da2:	049c      	lsls	r4, r3, #18
 8007da4:	4693      	mov	fp, r2
 8007da6:	d52d      	bpl.n	8007e04 <__sprint_r.part.0+0x68>
 8007da8:	6893      	ldr	r3, [r2, #8]
 8007daa:	6812      	ldr	r2, [r2, #0]
 8007dac:	b343      	cbz	r3, 8007e00 <__sprint_r.part.0+0x64>
 8007dae:	460e      	mov	r6, r1
 8007db0:	4607      	mov	r7, r0
 8007db2:	f102 0908 	add.w	r9, r2, #8
 8007db6:	e959 5a02 	ldrd	r5, sl, [r9, #-8]
 8007dba:	ea5f 089a 	movs.w	r8, sl, lsr #2
 8007dbe:	d015      	beq.n	8007dec <__sprint_r.part.0+0x50>
 8007dc0:	3d04      	subs	r5, #4
 8007dc2:	2400      	movs	r4, #0
 8007dc4:	e001      	b.n	8007dca <__sprint_r.part.0+0x2e>
 8007dc6:	45a0      	cmp	r8, r4
 8007dc8:	d00e      	beq.n	8007de8 <__sprint_r.part.0+0x4c>
 8007dca:	4632      	mov	r2, r6
 8007dcc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007dd0:	4638      	mov	r0, r7
 8007dd2:	f000 ffa1 	bl	8008d18 <_fputwc_r>
 8007dd6:	1c43      	adds	r3, r0, #1
 8007dd8:	f104 0401 	add.w	r4, r4, #1
 8007ddc:	d1f3      	bne.n	8007dc6 <__sprint_r.part.0+0x2a>
 8007dde:	2300      	movs	r3, #0
 8007de0:	e9cb 3301 	strd	r3, r3, [fp, #4]
 8007de4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007de8:	f8db 3008 	ldr.w	r3, [fp, #8]
 8007dec:	f02a 0a03 	bic.w	sl, sl, #3
 8007df0:	eba3 030a 	sub.w	r3, r3, sl
 8007df4:	f8cb 3008 	str.w	r3, [fp, #8]
 8007df8:	f109 0908 	add.w	r9, r9, #8
 8007dfc:	2b00      	cmp	r3, #0
 8007dfe:	d1da      	bne.n	8007db6 <__sprint_r.part.0+0x1a>
 8007e00:	2000      	movs	r0, #0
 8007e02:	e7ec      	b.n	8007dde <__sprint_r.part.0+0x42>
 8007e04:	f000 ffd0 	bl	8008da8 <__sfvwrite_r>
 8007e08:	2300      	movs	r3, #0
 8007e0a:	e9cb 3301 	strd	r3, r3, [fp, #4]
 8007e0e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007e12:	bf00      	nop

08007e14 <__sprint_r>:
 8007e14:	6893      	ldr	r3, [r2, #8]
 8007e16:	b103      	cbz	r3, 8007e1a <__sprint_r+0x6>
 8007e18:	e7c0      	b.n	8007d9c <__sprint_r.part.0>
 8007e1a:	b410      	push	{r4}
 8007e1c:	4618      	mov	r0, r3
 8007e1e:	6053      	str	r3, [r2, #4]
 8007e20:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007e24:	4770      	bx	lr
 8007e26:	bf00      	nop

08007e28 <_vfiprintf_r>:
 8007e28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007e2c:	b0ab      	sub	sp, #172	; 0xac
 8007e2e:	461c      	mov	r4, r3
 8007e30:	468a      	mov	sl, r1
 8007e32:	4690      	mov	r8, r2
 8007e34:	e9cd 3004 	strd	r3, r0, [sp, #16]
 8007e38:	b118      	cbz	r0, 8007e42 <_vfiprintf_r+0x1a>
 8007e3a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007e3c:	2b00      	cmp	r3, #0
 8007e3e:	f000 82ff 	beq.w	8008440 <_vfiprintf_r+0x618>
 8007e42:	f9ba 100c 	ldrsh.w	r1, [sl, #12]
 8007e46:	b28a      	uxth	r2, r1
 8007e48:	0490      	lsls	r0, r2, #18
 8007e4a:	d40a      	bmi.n	8007e62 <_vfiprintf_r+0x3a>
 8007e4c:	f8da 3064 	ldr.w	r3, [sl, #100]	; 0x64
 8007e50:	f441 5200 	orr.w	r2, r1, #8192	; 0x2000
 8007e54:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8007e58:	f8aa 200c 	strh.w	r2, [sl, #12]
 8007e5c:	f8ca 3064 	str.w	r3, [sl, #100]	; 0x64
 8007e60:	b292      	uxth	r2, r2
 8007e62:	0711      	lsls	r1, r2, #28
 8007e64:	f140 80ca 	bpl.w	8007ffc <_vfiprintf_r+0x1d4>
 8007e68:	f8da 3010 	ldr.w	r3, [sl, #16]
 8007e6c:	2b00      	cmp	r3, #0
 8007e6e:	f000 80c5 	beq.w	8007ffc <_vfiprintf_r+0x1d4>
 8007e72:	f002 021a 	and.w	r2, r2, #26
 8007e76:	2a0a      	cmp	r2, #10
 8007e78:	f000 80ce 	beq.w	8008018 <_vfiprintf_r+0x1f0>
 8007e7c:	2300      	movs	r3, #0
 8007e7e:	9308      	str	r3, [sp, #32]
 8007e80:	e9cd 330e 	strd	r3, r3, [sp, #56]	; 0x38
 8007e84:	9302      	str	r3, [sp, #8]
 8007e86:	ab1a      	add	r3, sp, #104	; 0x68
 8007e88:	930d      	str	r3, [sp, #52]	; 0x34
 8007e8a:	469b      	mov	fp, r3
 8007e8c:	f898 3000 	ldrb.w	r3, [r8]
 8007e90:	2b00      	cmp	r3, #0
 8007e92:	f000 80df 	beq.w	8008054 <_vfiprintf_r+0x22c>
 8007e96:	2b25      	cmp	r3, #37	; 0x25
 8007e98:	f000 851c 	beq.w	80088d4 <_vfiprintf_r+0xaac>
 8007e9c:	4645      	mov	r5, r8
 8007e9e:	e003      	b.n	8007ea8 <_vfiprintf_r+0x80>
 8007ea0:	2b25      	cmp	r3, #37	; 0x25
 8007ea2:	f000 80c6 	beq.w	8008032 <_vfiprintf_r+0x20a>
 8007ea6:	4625      	mov	r5, r4
 8007ea8:	786b      	ldrb	r3, [r5, #1]
 8007eaa:	1c6c      	adds	r4, r5, #1
 8007eac:	2b00      	cmp	r3, #0
 8007eae:	d1f7      	bne.n	8007ea0 <_vfiprintf_r+0x78>
 8007eb0:	ebb4 0608 	subs.w	r6, r4, r8
 8007eb4:	f000 80ce 	beq.w	8008054 <_vfiprintf_r+0x22c>
 8007eb8:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	; 0x38
 8007ebc:	3301      	adds	r3, #1
 8007ebe:	4432      	add	r2, r6
 8007ec0:	2b07      	cmp	r3, #7
 8007ec2:	f8cb 8000 	str.w	r8, [fp]
 8007ec6:	f8cb 6004 	str.w	r6, [fp, #4]
 8007eca:	e9cd 320e 	strd	r3, r2, [sp, #56]	; 0x38
 8007ece:	f300 80b5 	bgt.w	800803c <_vfiprintf_r+0x214>
 8007ed2:	f10b 0b08 	add.w	fp, fp, #8
 8007ed6:	9a02      	ldr	r2, [sp, #8]
 8007ed8:	786b      	ldrb	r3, [r5, #1]
 8007eda:	4432      	add	r2, r6
 8007edc:	9202      	str	r2, [sp, #8]
 8007ede:	2b00      	cmp	r3, #0
 8007ee0:	f000 80b8 	beq.w	8008054 <_vfiprintf_r+0x22c>
 8007ee4:	f04f 0300 	mov.w	r3, #0
 8007ee8:	2100      	movs	r1, #0
 8007eea:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
 8007eee:	7863      	ldrb	r3, [r4, #1]
 8007ef0:	9103      	str	r1, [sp, #12]
 8007ef2:	4608      	mov	r0, r1
 8007ef4:	460f      	mov	r7, r1
 8007ef6:	f104 0801 	add.w	r8, r4, #1
 8007efa:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8007efe:	f108 0801 	add.w	r8, r8, #1
 8007f02:	f1a3 0220 	sub.w	r2, r3, #32
 8007f06:	2a58      	cmp	r2, #88	; 0x58
 8007f08:	f200 829d 	bhi.w	8008446 <_vfiprintf_r+0x61e>
 8007f0c:	e8df f012 	tbh	[pc, r2, lsl #1]
 8007f10:	029b00f9 	.word	0x029b00f9
 8007f14:	00f4029b 	.word	0x00f4029b
 8007f18:	029b029b 	.word	0x029b029b
 8007f1c:	029b029b 	.word	0x029b029b
 8007f20:	029b029b 	.word	0x029b029b
 8007f24:	00e400e9 	.word	0x00e400e9
 8007f28:	00df029b 	.word	0x00df029b
 8007f2c:	029b00c6 	.word	0x029b00c6
 8007f30:	00b200c1 	.word	0x00b200c1
 8007f34:	00b200b2 	.word	0x00b200b2
 8007f38:	00b200b2 	.word	0x00b200b2
 8007f3c:	00b200b2 	.word	0x00b200b2
 8007f40:	00b200b2 	.word	0x00b200b2
 8007f44:	029b029b 	.word	0x029b029b
 8007f48:	029b029b 	.word	0x029b029b
 8007f4c:	029b029b 	.word	0x029b029b
 8007f50:	029b029b 	.word	0x029b029b
 8007f54:	029b029b 	.word	0x029b029b
 8007f58:	029b0228 	.word	0x029b0228
 8007f5c:	029b029b 	.word	0x029b029b
 8007f60:	029b029b 	.word	0x029b029b
 8007f64:	029b029b 	.word	0x029b029b
 8007f68:	029b029b 	.word	0x029b029b
 8007f6c:	0067029b 	.word	0x0067029b
 8007f70:	029b029b 	.word	0x029b029b
 8007f74:	029b029b 	.word	0x029b029b
 8007f78:	0059029b 	.word	0x0059029b
 8007f7c:	029b029b 	.word	0x029b029b
 8007f80:	029b0213 	.word	0x029b0213
 8007f84:	029b029b 	.word	0x029b029b
 8007f88:	029b029b 	.word	0x029b029b
 8007f8c:	029b029b 	.word	0x029b029b
 8007f90:	029b029b 	.word	0x029b029b
 8007f94:	0184029b 	.word	0x0184029b
 8007f98:	029b0157 	.word	0x029b0157
 8007f9c:	029b029b 	.word	0x029b029b
 8007fa0:	01570152 	.word	0x01570152
 8007fa4:	029b029b 	.word	0x029b029b
 8007fa8:	029b0145 	.word	0x029b0145
 8007fac:	0069026e 	.word	0x0069026e
 8007fb0:	0140023f 	.word	0x0140023f
 8007fb4:	0120029b 	.word	0x0120029b
 8007fb8:	005b029b 	.word	0x005b029b
 8007fbc:	029b029b 	.word	0x029b029b
 8007fc0:	0101      	.short	0x0101
 8007fc2:	f047 0710 	orr.w	r7, r7, #16
 8007fc6:	06ba      	lsls	r2, r7, #26
 8007fc8:	9b04      	ldr	r3, [sp, #16]
 8007fca:	f140 8222 	bpl.w	8008412 <_vfiprintf_r+0x5ea>
 8007fce:	3307      	adds	r3, #7
 8007fd0:	f023 0307 	bic.w	r3, r3, #7
 8007fd4:	e8f3 4502 	ldrd	r4, r5, [r3], #8
 8007fd8:	9304      	str	r3, [sp, #16]
 8007fda:	2301      	movs	r3, #1
 8007fdc:	e1e5      	b.n	80083aa <_vfiprintf_r+0x582>
 8007fde:	f047 0710 	orr.w	r7, r7, #16
 8007fe2:	f017 0320 	ands.w	r3, r7, #32
 8007fe6:	f000 8221 	beq.w	800842c <_vfiprintf_r+0x604>
 8007fea:	9b04      	ldr	r3, [sp, #16]
 8007fec:	3307      	adds	r3, #7
 8007fee:	f023 0307 	bic.w	r3, r3, #7
 8007ff2:	e8f3 4502 	ldrd	r4, r5, [r3], #8
 8007ff6:	9304      	str	r3, [sp, #16]
 8007ff8:	2300      	movs	r3, #0
 8007ffa:	e1d6      	b.n	80083aa <_vfiprintf_r+0x582>
 8007ffc:	4651      	mov	r1, sl
 8007ffe:	9805      	ldr	r0, [sp, #20]
 8008000:	f7fd f99e 	bl	8005340 <__swsetup_r>
 8008004:	2800      	cmp	r0, #0
 8008006:	f040 84f4 	bne.w	80089f2 <_vfiprintf_r+0xbca>
 800800a:	f8ba 200c 	ldrh.w	r2, [sl, #12]
 800800e:	f002 021a 	and.w	r2, r2, #26
 8008012:	2a0a      	cmp	r2, #10
 8008014:	f47f af32 	bne.w	8007e7c <_vfiprintf_r+0x54>
 8008018:	f9ba 300e 	ldrsh.w	r3, [sl, #14]
 800801c:	2b00      	cmp	r3, #0
 800801e:	f6ff af2d 	blt.w	8007e7c <_vfiprintf_r+0x54>
 8008022:	4623      	mov	r3, r4
 8008024:	4642      	mov	r2, r8
 8008026:	4651      	mov	r1, sl
 8008028:	9805      	ldr	r0, [sp, #20]
 800802a:	f000 fd01 	bl	8008a30 <__sbprintf>
 800802e:	9002      	str	r0, [sp, #8]
 8008030:	e01c      	b.n	800806c <_vfiprintf_r+0x244>
 8008032:	ebb4 0608 	subs.w	r6, r4, r8
 8008036:	f43f af55 	beq.w	8007ee4 <_vfiprintf_r+0xbc>
 800803a:	e73d      	b.n	8007eb8 <_vfiprintf_r+0x90>
 800803c:	2a00      	cmp	r2, #0
 800803e:	f000 840f 	beq.w	8008860 <_vfiprintf_r+0xa38>
 8008042:	aa0d      	add	r2, sp, #52	; 0x34
 8008044:	4651      	mov	r1, sl
 8008046:	9805      	ldr	r0, [sp, #20]
 8008048:	f7ff fea8 	bl	8007d9c <__sprint_r.part.0>
 800804c:	b948      	cbnz	r0, 8008062 <_vfiprintf_r+0x23a>
 800804e:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 8008052:	e740      	b.n	8007ed6 <_vfiprintf_r+0xae>
 8008054:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008056:	b123      	cbz	r3, 8008062 <_vfiprintf_r+0x23a>
 8008058:	9805      	ldr	r0, [sp, #20]
 800805a:	aa0d      	add	r2, sp, #52	; 0x34
 800805c:	4651      	mov	r1, sl
 800805e:	f7ff fe9d 	bl	8007d9c <__sprint_r.part.0>
 8008062:	f8ba 300c 	ldrh.w	r3, [sl, #12]
 8008066:	065b      	lsls	r3, r3, #25
 8008068:	f100 84c3 	bmi.w	80089f2 <_vfiprintf_r+0xbca>
 800806c:	9802      	ldr	r0, [sp, #8]
 800806e:	b02b      	add	sp, #172	; 0xac
 8008070:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008074:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8008078:	2400      	movs	r4, #0
 800807a:	f818 3b01 	ldrb.w	r3, [r8], #1
 800807e:	eb04 0484 	add.w	r4, r4, r4, lsl #2
 8008082:	eb02 0444 	add.w	r4, r2, r4, lsl #1
 8008086:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 800808a:	2a09      	cmp	r2, #9
 800808c:	d9f5      	bls.n	800807a <_vfiprintf_r+0x252>
 800808e:	9403      	str	r4, [sp, #12]
 8008090:	e737      	b.n	8007f02 <_vfiprintf_r+0xda>
 8008092:	f047 0780 	orr.w	r7, r7, #128	; 0x80
 8008096:	f898 3000 	ldrb.w	r3, [r8]
 800809a:	e730      	b.n	8007efe <_vfiprintf_r+0xd6>
 800809c:	4644      	mov	r4, r8
 800809e:	f814 3b01 	ldrb.w	r3, [r4], #1
 80080a2:	2b2a      	cmp	r3, #42	; 0x2a
 80080a4:	f000 84aa 	beq.w	80089fc <_vfiprintf_r+0xbd4>
 80080a8:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 80080ac:	2a09      	cmp	r2, #9
 80080ae:	46a0      	mov	r8, r4
 80080b0:	f04f 0900 	mov.w	r9, #0
 80080b4:	f63f af25 	bhi.w	8007f02 <_vfiprintf_r+0xda>
 80080b8:	f818 3b01 	ldrb.w	r3, [r8], #1
 80080bc:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80080c0:	eb02 0949 	add.w	r9, r2, r9, lsl #1
 80080c4:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 80080c8:	2a09      	cmp	r2, #9
 80080ca:	d9f5      	bls.n	80080b8 <_vfiprintf_r+0x290>
 80080cc:	e719      	b.n	8007f02 <_vfiprintf_r+0xda>
 80080ce:	f898 3000 	ldrb.w	r3, [r8]
 80080d2:	f047 0704 	orr.w	r7, r7, #4
 80080d6:	e712      	b.n	8007efe <_vfiprintf_r+0xd6>
 80080d8:	f898 3000 	ldrb.w	r3, [r8]
 80080dc:	2101      	movs	r1, #1
 80080de:	202b      	movs	r0, #43	; 0x2b
 80080e0:	e70d      	b.n	8007efe <_vfiprintf_r+0xd6>
 80080e2:	9a04      	ldr	r2, [sp, #16]
 80080e4:	f898 3000 	ldrb.w	r3, [r8]
 80080e8:	f852 4b04 	ldr.w	r4, [r2], #4
 80080ec:	9403      	str	r4, [sp, #12]
 80080ee:	2c00      	cmp	r4, #0
 80080f0:	f2c0 8415 	blt.w	800891e <_vfiprintf_r+0xaf6>
 80080f4:	9204      	str	r2, [sp, #16]
 80080f6:	e702      	b.n	8007efe <_vfiprintf_r+0xd6>
 80080f8:	f047 0701 	orr.w	r7, r7, #1
 80080fc:	f898 3000 	ldrb.w	r3, [r8]
 8008100:	e6fd      	b.n	8007efe <_vfiprintf_r+0xd6>
 8008102:	f898 3000 	ldrb.w	r3, [r8]
 8008106:	2800      	cmp	r0, #0
 8008108:	f47f aef9 	bne.w	8007efe <_vfiprintf_r+0xd6>
 800810c:	2101      	movs	r1, #1
 800810e:	2020      	movs	r0, #32
 8008110:	e6f5      	b.n	8007efe <_vfiprintf_r+0xd6>
 8008112:	2900      	cmp	r1, #0
 8008114:	f040 845b 	bne.w	80089ce <_vfiprintf_r+0xba6>
 8008118:	4ac2      	ldr	r2, [pc, #776]	; (8008424 <_vfiprintf_r+0x5fc>)
 800811a:	9208      	str	r2, [sp, #32]
 800811c:	06b8      	lsls	r0, r7, #26
 800811e:	9a04      	ldr	r2, [sp, #16]
 8008120:	f140 8112 	bpl.w	8008348 <_vfiprintf_r+0x520>
 8008124:	3207      	adds	r2, #7
 8008126:	f022 0207 	bic.w	r2, r2, #7
 800812a:	e8f2 4502 	ldrd	r4, r5, [r2], #8
 800812e:	9204      	str	r2, [sp, #16]
 8008130:	07fe      	lsls	r6, r7, #31
 8008132:	f140 8198 	bpl.w	8008466 <_vfiprintf_r+0x63e>
 8008136:	ea54 0205 	orrs.w	r2, r4, r5
 800813a:	f000 8194 	beq.w	8008466 <_vfiprintf_r+0x63e>
 800813e:	2230      	movs	r2, #48	; 0x30
 8008140:	f88d 3031 	strb.w	r3, [sp, #49]	; 0x31
 8008144:	f047 0702 	orr.w	r7, r7, #2
 8008148:	f88d 2030 	strb.w	r2, [sp, #48]	; 0x30
 800814c:	2302      	movs	r3, #2
 800814e:	e12c      	b.n	80083aa <_vfiprintf_r+0x582>
 8008150:	9c04      	ldr	r4, [sp, #16]
 8008152:	f854 6b04 	ldr.w	r6, [r4], #4
 8008156:	f04f 0300 	mov.w	r3, #0
 800815a:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
 800815e:	2e00      	cmp	r6, #0
 8008160:	f000 8407 	beq.w	8008972 <_vfiprintf_r+0xb4a>
 8008164:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8008168:	f000 83de 	beq.w	8008928 <_vfiprintf_r+0xb00>
 800816c:	464a      	mov	r2, r9
 800816e:	2100      	movs	r1, #0
 8008170:	4630      	mov	r0, r6
 8008172:	f7ff f80d 	bl	8007190 <memchr>
 8008176:	2800      	cmp	r0, #0
 8008178:	f000 8419 	beq.w	80089ae <_vfiprintf_r+0xb86>
 800817c:	1b83      	subs	r3, r0, r6
 800817e:	9301      	str	r3, [sp, #4]
 8008180:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
 8008184:	9404      	str	r4, [sp, #16]
 8008186:	9700      	str	r7, [sp, #0]
 8008188:	9306      	str	r3, [sp, #24]
 800818a:	f04f 0900 	mov.w	r9, #0
 800818e:	e1af      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 8008190:	f047 0720 	orr.w	r7, r7, #32
 8008194:	f898 3000 	ldrb.w	r3, [r8]
 8008198:	e6b1      	b.n	8007efe <_vfiprintf_r+0xd6>
 800819a:	f898 3000 	ldrb.w	r3, [r8]
 800819e:	2b6c      	cmp	r3, #108	; 0x6c
 80081a0:	bf03      	ittte	eq
 80081a2:	f898 3001 	ldrbeq.w	r3, [r8, #1]
 80081a6:	f047 0720 	orreq.w	r7, r7, #32
 80081aa:	f108 0801 	addeq.w	r8, r8, #1
 80081ae:	f047 0710 	orrne.w	r7, r7, #16
 80081b2:	e6a4      	b.n	8007efe <_vfiprintf_r+0xd6>
 80081b4:	f047 0740 	orr.w	r7, r7, #64	; 0x40
 80081b8:	f898 3000 	ldrb.w	r3, [r8]
 80081bc:	e69f      	b.n	8007efe <_vfiprintf_r+0xd6>
 80081be:	2900      	cmp	r1, #0
 80081c0:	f040 8401 	bne.w	80089c6 <_vfiprintf_r+0xb9e>
 80081c4:	06ba      	lsls	r2, r7, #26
 80081c6:	9b04      	ldr	r3, [sp, #16]
 80081c8:	f140 80d3 	bpl.w	8008372 <_vfiprintf_r+0x54a>
 80081cc:	3307      	adds	r3, #7
 80081ce:	f023 0307 	bic.w	r3, r3, #7
 80081d2:	4619      	mov	r1, r3
 80081d4:	e8f1 2302 	ldrd	r2, r3, [r1], #8
 80081d8:	9104      	str	r1, [sp, #16]
 80081da:	4614      	mov	r4, r2
 80081dc:	461d      	mov	r5, r3
 80081de:	2a00      	cmp	r2, #0
 80081e0:	f173 0300 	sbcs.w	r3, r3, #0
 80081e4:	f2c0 8349 	blt.w	800887a <_vfiprintf_r+0xa52>
 80081e8:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
 80081ec:	9306      	str	r3, [sp, #24]
 80081ee:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80081f2:	f000 8314 	beq.w	800881e <_vfiprintf_r+0x9f6>
 80081f6:	f027 0380 	bic.w	r3, r7, #128	; 0x80
 80081fa:	9300      	str	r3, [sp, #0]
 80081fc:	ea54 0305 	orrs.w	r3, r4, r5
 8008200:	f040 830c 	bne.w	800881c <_vfiprintf_r+0x9f4>
 8008204:	f1b9 0f00 	cmp.w	r9, #0
 8008208:	f040 83cf 	bne.w	80089aa <_vfiprintf_r+0xb82>
 800820c:	f04f 0900 	mov.w	r9, #0
 8008210:	f8cd 9004 	str.w	r9, [sp, #4]
 8008214:	ae1a      	add	r6, sp, #104	; 0x68
 8008216:	e16b      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 8008218:	9b04      	ldr	r3, [sp, #16]
 800821a:	2501      	movs	r5, #1
 800821c:	f853 2b04 	ldr.w	r2, [r3], #4
 8008220:	f88d 2040 	strb.w	r2, [sp, #64]	; 0x40
 8008224:	f04f 0100 	mov.w	r1, #0
 8008228:	f88d 102f 	strb.w	r1, [sp, #47]	; 0x2f
 800822c:	9304      	str	r3, [sp, #16]
 800822e:	9501      	str	r5, [sp, #4]
 8008230:	ae10      	add	r6, sp, #64	; 0x40
 8008232:	9700      	str	r7, [sp, #0]
 8008234:	f04f 0900 	mov.w	r9, #0
 8008238:	9b00      	ldr	r3, [sp, #0]
 800823a:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
 800823e:	f013 0302 	ands.w	r3, r3, #2
 8008242:	9306      	str	r3, [sp, #24]
 8008244:	9b00      	ldr	r3, [sp, #0]
 8008246:	bf18      	it	ne
 8008248:	3502      	addne	r5, #2
 800824a:	1c50      	adds	r0, r2, #1
 800824c:	f013 0384 	ands.w	r3, r3, #132	; 0x84
 8008250:	4601      	mov	r1, r0
 8008252:	9307      	str	r3, [sp, #28]
 8008254:	d104      	bne.n	8008260 <_vfiprintf_r+0x438>
 8008256:	9b03      	ldr	r3, [sp, #12]
 8008258:	1b5c      	subs	r4, r3, r5
 800825a:	2c00      	cmp	r4, #0
 800825c:	f300 8224 	bgt.w	80086a8 <_vfiprintf_r+0x880>
 8008260:	f89d 402f 	ldrb.w	r4, [sp, #47]	; 0x2f
 8008264:	f10b 0008 	add.w	r0, fp, #8
 8008268:	b17c      	cbz	r4, 800828a <_vfiprintf_r+0x462>
 800826a:	f10c 0c01 	add.w	ip, ip, #1
 800826e:	f10d 042f 	add.w	r4, sp, #47	; 0x2f
 8008272:	2201      	movs	r2, #1
 8008274:	2907      	cmp	r1, #7
 8008276:	e9cd 1c0e 	strd	r1, ip, [sp, #56]	; 0x38
 800827a:	e9cb 4200 	strd	r4, r2, [fp]
 800827e:	f300 81f3 	bgt.w	8008668 <_vfiprintf_r+0x840>
 8008282:	460a      	mov	r2, r1
 8008284:	4683      	mov	fp, r0
 8008286:	3101      	adds	r1, #1
 8008288:	3008      	adds	r0, #8
 800828a:	9b06      	ldr	r3, [sp, #24]
 800828c:	b1e3      	cbz	r3, 80082c8 <_vfiprintf_r+0x4a0>
 800828e:	f10c 0c02 	add.w	ip, ip, #2
 8008292:	aa0c      	add	r2, sp, #48	; 0x30
 8008294:	2302      	movs	r3, #2
 8008296:	2907      	cmp	r1, #7
 8008298:	e9cd 1c0e 	strd	r1, ip, [sp, #56]	; 0x38
 800829c:	e9cb 2300 	strd	r2, r3, [fp]
 80082a0:	f340 81fc 	ble.w	800869c <_vfiprintf_r+0x874>
 80082a4:	f1bc 0f00 	cmp.w	ip, #0
 80082a8:	f000 82fd 	beq.w	80088a6 <_vfiprintf_r+0xa7e>
 80082ac:	aa0d      	add	r2, sp, #52	; 0x34
 80082ae:	4651      	mov	r1, sl
 80082b0:	9805      	ldr	r0, [sp, #20]
 80082b2:	f7ff fd73 	bl	8007d9c <__sprint_r.part.0>
 80082b6:	2800      	cmp	r0, #0
 80082b8:	f47f aed3 	bne.w	8008062 <_vfiprintf_r+0x23a>
 80082bc:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
 80082c0:	a81c      	add	r0, sp, #112	; 0x70
 80082c2:	1c51      	adds	r1, r2, #1
 80082c4:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 80082c8:	9b07      	ldr	r3, [sp, #28]
 80082ca:	2b80      	cmp	r3, #128	; 0x80
 80082cc:	f000 811b 	beq.w	8008506 <_vfiprintf_r+0x6de>
 80082d0:	9b01      	ldr	r3, [sp, #4]
 80082d2:	eba9 0703 	sub.w	r7, r9, r3
 80082d6:	2f00      	cmp	r7, #0
 80082d8:	f300 8172 	bgt.w	80085c0 <_vfiprintf_r+0x798>
 80082dc:	9a01      	ldr	r2, [sp, #4]
 80082de:	910e      	str	r1, [sp, #56]	; 0x38
 80082e0:	4613      	mov	r3, r2
 80082e2:	4463      	add	r3, ip
 80082e4:	2907      	cmp	r1, #7
 80082e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80082e8:	e9cb 6200 	strd	r6, r2, [fp]
 80082ec:	dd0c      	ble.n	8008308 <_vfiprintf_r+0x4e0>
 80082ee:	2b00      	cmp	r3, #0
 80082f0:	f000 8223 	beq.w	800873a <_vfiprintf_r+0x912>
 80082f4:	aa0d      	add	r2, sp, #52	; 0x34
 80082f6:	4651      	mov	r1, sl
 80082f8:	9805      	ldr	r0, [sp, #20]
 80082fa:	f7ff fd4f 	bl	8007d9c <__sprint_r.part.0>
 80082fe:	2800      	cmp	r0, #0
 8008300:	f47f aeaf 	bne.w	8008062 <_vfiprintf_r+0x23a>
 8008304:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008306:	a81a      	add	r0, sp, #104	; 0x68
 8008308:	9a00      	ldr	r2, [sp, #0]
 800830a:	0752      	lsls	r2, r2, #29
 800830c:	d504      	bpl.n	8008318 <_vfiprintf_r+0x4f0>
 800830e:	9a03      	ldr	r2, [sp, #12]
 8008310:	1b54      	subs	r4, r2, r5
 8008312:	2c00      	cmp	r4, #0
 8008314:	f300 821a 	bgt.w	800874c <_vfiprintf_r+0x924>
 8008318:	e9dd 2102 	ldrd	r2, r1, [sp, #8]
 800831c:	42a9      	cmp	r1, r5
 800831e:	bfac      	ite	ge
 8008320:	1852      	addge	r2, r2, r1
 8008322:	1952      	addlt	r2, r2, r5
 8008324:	9202      	str	r2, [sp, #8]
 8008326:	2b00      	cmp	r3, #0
 8008328:	f040 8190 	bne.w	800864c <_vfiprintf_r+0x824>
 800832c:	2300      	movs	r3, #0
 800832e:	930e      	str	r3, [sp, #56]	; 0x38
 8008330:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 8008334:	e5aa      	b.n	8007e8c <_vfiprintf_r+0x64>
 8008336:	2900      	cmp	r1, #0
 8008338:	f040 8352 	bne.w	80089e0 <_vfiprintf_r+0xbb8>
 800833c:	4a3a      	ldr	r2, [pc, #232]	; (8008428 <_vfiprintf_r+0x600>)
 800833e:	9208      	str	r2, [sp, #32]
 8008340:	06b8      	lsls	r0, r7, #26
 8008342:	9a04      	ldr	r2, [sp, #16]
 8008344:	f53f aeee 	bmi.w	8008124 <_vfiprintf_r+0x2fc>
 8008348:	f852 4b04 	ldr.w	r4, [r2], #4
 800834c:	9204      	str	r2, [sp, #16]
 800834e:	06f9      	lsls	r1, r7, #27
 8008350:	f100 829c 	bmi.w	800888c <_vfiprintf_r+0xa64>
 8008354:	067a      	lsls	r2, r7, #25
 8008356:	f140 8299 	bpl.w	800888c <_vfiprintf_r+0xa64>
 800835a:	b2a4      	uxth	r4, r4
 800835c:	2500      	movs	r5, #0
 800835e:	e6e7      	b.n	8008130 <_vfiprintf_r+0x308>
 8008360:	2900      	cmp	r1, #0
 8008362:	f040 832d 	bne.w	80089c0 <_vfiprintf_r+0xb98>
 8008366:	f047 0710 	orr.w	r7, r7, #16
 800836a:	06ba      	lsls	r2, r7, #26
 800836c:	9b04      	ldr	r3, [sp, #16]
 800836e:	f53f af2d 	bmi.w	80081cc <_vfiprintf_r+0x3a4>
 8008372:	f853 4b04 	ldr.w	r4, [r3], #4
 8008376:	9304      	str	r3, [sp, #16]
 8008378:	06fe      	lsls	r6, r7, #27
 800837a:	f100 8276 	bmi.w	800886a <_vfiprintf_r+0xa42>
 800837e:	067d      	lsls	r5, r7, #25
 8008380:	f140 8273 	bpl.w	800886a <_vfiprintf_r+0xa42>
 8008384:	b224      	sxth	r4, r4
 8008386:	17e5      	asrs	r5, r4, #31
 8008388:	4622      	mov	r2, r4
 800838a:	462b      	mov	r3, r5
 800838c:	e727      	b.n	80081de <_vfiprintf_r+0x3b6>
 800838e:	9b04      	ldr	r3, [sp, #16]
 8008390:	f853 4b04 	ldr.w	r4, [r3], #4
 8008394:	9304      	str	r3, [sp, #16]
 8008396:	f647 0230 	movw	r2, #30768	; 0x7830
 800839a:	4b22      	ldr	r3, [pc, #136]	; (8008424 <_vfiprintf_r+0x5fc>)
 800839c:	9308      	str	r3, [sp, #32]
 800839e:	f8ad 2030 	strh.w	r2, [sp, #48]	; 0x30
 80083a2:	f047 0702 	orr.w	r7, r7, #2
 80083a6:	2500      	movs	r5, #0
 80083a8:	2302      	movs	r3, #2
 80083aa:	f04f 0200 	mov.w	r2, #0
 80083ae:	f88d 202f 	strb.w	r2, [sp, #47]	; 0x2f
 80083b2:	2200      	movs	r2, #0
 80083b4:	9206      	str	r2, [sp, #24]
 80083b6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80083ba:	d057      	beq.n	800846c <_vfiprintf_r+0x644>
 80083bc:	f027 0280 	bic.w	r2, r7, #128	; 0x80
 80083c0:	9200      	str	r2, [sp, #0]
 80083c2:	ea54 0205 	orrs.w	r2, r4, r5
 80083c6:	d150      	bne.n	800846a <_vfiprintf_r+0x642>
 80083c8:	f1b9 0f00 	cmp.w	r9, #0
 80083cc:	f040 8209 	bne.w	80087e2 <_vfiprintf_r+0x9ba>
 80083d0:	2b00      	cmp	r3, #0
 80083d2:	f47f af1b 	bne.w	800820c <_vfiprintf_r+0x3e4>
 80083d6:	f017 0301 	ands.w	r3, r7, #1
 80083da:	9301      	str	r3, [sp, #4]
 80083dc:	f000 827d 	beq.w	80088da <_vfiprintf_r+0xab2>
 80083e0:	2330      	movs	r3, #48	; 0x30
 80083e2:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 80083e6:	f10d 0667 	add.w	r6, sp, #103	; 0x67
 80083ea:	e081      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 80083ec:	2900      	cmp	r1, #0
 80083ee:	f040 82f2 	bne.w	80089d6 <_vfiprintf_r+0xbae>
 80083f2:	9a04      	ldr	r2, [sp, #16]
 80083f4:	06bc      	lsls	r4, r7, #26
 80083f6:	f852 3b04 	ldr.w	r3, [r2], #4
 80083fa:	9204      	str	r2, [sp, #16]
 80083fc:	f100 8282 	bmi.w	8008904 <_vfiprintf_r+0xadc>
 8008400:	06f8      	lsls	r0, r7, #27
 8008402:	f100 82aa 	bmi.w	800895a <_vfiprintf_r+0xb32>
 8008406:	0679      	lsls	r1, r7, #25
 8008408:	f140 82a7 	bpl.w	800895a <_vfiprintf_r+0xb32>
 800840c:	9a02      	ldr	r2, [sp, #8]
 800840e:	801a      	strh	r2, [r3, #0]
 8008410:	e53c      	b.n	8007e8c <_vfiprintf_r+0x64>
 8008412:	f853 4b04 	ldr.w	r4, [r3], #4
 8008416:	9304      	str	r3, [sp, #16]
 8008418:	06fe      	lsls	r6, r7, #27
 800841a:	f140 826d 	bpl.w	80088f8 <_vfiprintf_r+0xad0>
 800841e:	2500      	movs	r5, #0
 8008420:	2301      	movs	r3, #1
 8008422:	e7c2      	b.n	80083aa <_vfiprintf_r+0x582>
 8008424:	0800ae0c 	.word	0x0800ae0c
 8008428:	0800adf8 	.word	0x0800adf8
 800842c:	9a04      	ldr	r2, [sp, #16]
 800842e:	f852 4b04 	ldr.w	r4, [r2], #4
 8008432:	9204      	str	r2, [sp, #16]
 8008434:	f017 0210 	ands.w	r2, r7, #16
 8008438:	f000 8257 	beq.w	80088ea <_vfiprintf_r+0xac2>
 800843c:	2500      	movs	r5, #0
 800843e:	e7b4      	b.n	80083aa <_vfiprintf_r+0x582>
 8008440:	f7fe f9b2 	bl	80067a8 <__sinit>
 8008444:	e4fd      	b.n	8007e42 <_vfiprintf_r+0x1a>
 8008446:	2900      	cmp	r1, #0
 8008448:	f040 82ac 	bne.w	80089a4 <_vfiprintf_r+0xb7c>
 800844c:	2b00      	cmp	r3, #0
 800844e:	f43f ae01 	beq.w	8008054 <_vfiprintf_r+0x22c>
 8008452:	2501      	movs	r5, #1
 8008454:	f88d 3040 	strb.w	r3, [sp, #64]	; 0x40
 8008458:	f04f 0300 	mov.w	r3, #0
 800845c:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
 8008460:	9501      	str	r5, [sp, #4]
 8008462:	ae10      	add	r6, sp, #64	; 0x40
 8008464:	e6e5      	b.n	8008232 <_vfiprintf_r+0x40a>
 8008466:	2302      	movs	r3, #2
 8008468:	e79f      	b.n	80083aa <_vfiprintf_r+0x582>
 800846a:	9f00      	ldr	r7, [sp, #0]
 800846c:	2b01      	cmp	r3, #1
 800846e:	f000 81d6 	beq.w	800881e <_vfiprintf_r+0x9f6>
 8008472:	2b02      	cmp	r3, #2
 8008474:	f000 81bc 	beq.w	80087f0 <_vfiprintf_r+0x9c8>
 8008478:	a91a      	add	r1, sp, #104	; 0x68
 800847a:	e000      	b.n	800847e <_vfiprintf_r+0x656>
 800847c:	4631      	mov	r1, r6
 800847e:	08e2      	lsrs	r2, r4, #3
 8008480:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8008484:	08e8      	lsrs	r0, r5, #3
 8008486:	f004 0307 	and.w	r3, r4, #7
 800848a:	4605      	mov	r5, r0
 800848c:	4614      	mov	r4, r2
 800848e:	3330      	adds	r3, #48	; 0x30
 8008490:	ea54 0205 	orrs.w	r2, r4, r5
 8008494:	f801 3c01 	strb.w	r3, [r1, #-1]
 8008498:	f101 36ff 	add.w	r6, r1, #4294967295	; 0xffffffff
 800849c:	d1ee      	bne.n	800847c <_vfiprintf_r+0x654>
 800849e:	07f8      	lsls	r0, r7, #31
 80084a0:	d522      	bpl.n	80084e8 <_vfiprintf_r+0x6c0>
 80084a2:	2b30      	cmp	r3, #48	; 0x30
 80084a4:	d020      	beq.n	80084e8 <_vfiprintf_r+0x6c0>
 80084a6:	2330      	movs	r3, #48	; 0x30
 80084a8:	3902      	subs	r1, #2
 80084aa:	f806 3c01 	strb.w	r3, [r6, #-1]
 80084ae:	ab1a      	add	r3, sp, #104	; 0x68
 80084b0:	1a5b      	subs	r3, r3, r1
 80084b2:	9700      	str	r7, [sp, #0]
 80084b4:	9301      	str	r3, [sp, #4]
 80084b6:	460e      	mov	r6, r1
 80084b8:	e01a      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 80084ba:	ae1a      	add	r6, sp, #104	; 0x68
 80084bc:	e001      	b.n	80084c2 <_vfiprintf_r+0x69a>
 80084be:	4604      	mov	r4, r0
 80084c0:	460d      	mov	r5, r1
 80084c2:	220a      	movs	r2, #10
 80084c4:	2300      	movs	r3, #0
 80084c6:	4620      	mov	r0, r4
 80084c8:	4629      	mov	r1, r5
 80084ca:	f7fb f833 	bl	8003534 <__aeabi_uldivmod>
 80084ce:	3230      	adds	r2, #48	; 0x30
 80084d0:	f806 2d01 	strb.w	r2, [r6, #-1]!
 80084d4:	2300      	movs	r3, #0
 80084d6:	220a      	movs	r2, #10
 80084d8:	4620      	mov	r0, r4
 80084da:	4629      	mov	r1, r5
 80084dc:	f7fb f82a 	bl	8003534 <__aeabi_uldivmod>
 80084e0:	2d00      	cmp	r5, #0
 80084e2:	bf08      	it	eq
 80084e4:	2c0a      	cmpeq	r4, #10
 80084e6:	d2ea      	bcs.n	80084be <_vfiprintf_r+0x696>
 80084e8:	ab1a      	add	r3, sp, #104	; 0x68
 80084ea:	1b9b      	subs	r3, r3, r6
 80084ec:	9700      	str	r7, [sp, #0]
 80084ee:	9301      	str	r3, [sp, #4]
 80084f0:	9b01      	ldr	r3, [sp, #4]
 80084f2:	454b      	cmp	r3, r9
 80084f4:	bfb8      	it	lt
 80084f6:	464b      	movlt	r3, r9
 80084f8:	461d      	mov	r5, r3
 80084fa:	9b06      	ldr	r3, [sp, #24]
 80084fc:	2b00      	cmp	r3, #0
 80084fe:	f43f ae9b 	beq.w	8008238 <_vfiprintf_r+0x410>
 8008502:	3501      	adds	r5, #1
 8008504:	e698      	b.n	8008238 <_vfiprintf_r+0x410>
 8008506:	9b03      	ldr	r3, [sp, #12]
 8008508:	1b5f      	subs	r7, r3, r5
 800850a:	2f00      	cmp	r7, #0
 800850c:	f77f aee0 	ble.w	80082d0 <_vfiprintf_r+0x4a8>
 8008510:	2f10      	cmp	r7, #16
 8008512:	4cc0      	ldr	r4, [pc, #768]	; (8008814 <_vfiprintf_r+0x9ec>)
 8008514:	f340 826a 	ble.w	80089ec <_vfiprintf_r+0xbc4>
 8008518:	4663      	mov	r3, ip
 800851a:	46dc      	mov	ip, fp
 800851c:	46ab      	mov	fp, r5
 800851e:	4625      	mov	r5, r4
 8008520:	9c05      	ldr	r4, [sp, #20]
 8008522:	e006      	b.n	8008532 <_vfiprintf_r+0x70a>
 8008524:	1c90      	adds	r0, r2, #2
 8008526:	f10c 0c08 	add.w	ip, ip, #8
 800852a:	460a      	mov	r2, r1
 800852c:	3f10      	subs	r7, #16
 800852e:	2f10      	cmp	r7, #16
 8008530:	dd1e      	ble.n	8008570 <_vfiprintf_r+0x748>
 8008532:	1c51      	adds	r1, r2, #1
 8008534:	3310      	adds	r3, #16
 8008536:	2010      	movs	r0, #16
 8008538:	2907      	cmp	r1, #7
 800853a:	930f      	str	r3, [sp, #60]	; 0x3c
 800853c:	f8cc 5000 	str.w	r5, [ip]
 8008540:	f8cc 0004 	str.w	r0, [ip, #4]
 8008544:	910e      	str	r1, [sp, #56]	; 0x38
 8008546:	dded      	ble.n	8008524 <_vfiprintf_r+0x6fc>
 8008548:	aa0d      	add	r2, sp, #52	; 0x34
 800854a:	4651      	mov	r1, sl
 800854c:	4620      	mov	r0, r4
 800854e:	2b00      	cmp	r3, #0
 8008550:	f000 8085 	beq.w	800865e <_vfiprintf_r+0x836>
 8008554:	f7ff fc22 	bl	8007d9c <__sprint_r.part.0>
 8008558:	2800      	cmp	r0, #0
 800855a:	f47f ad82 	bne.w	8008062 <_vfiprintf_r+0x23a>
 800855e:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 8008562:	3f10      	subs	r7, #16
 8008564:	2f10      	cmp	r7, #16
 8008566:	f102 0001 	add.w	r0, r2, #1
 800856a:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
 800856e:	dce0      	bgt.n	8008532 <_vfiprintf_r+0x70a>
 8008570:	462c      	mov	r4, r5
 8008572:	465d      	mov	r5, fp
 8008574:	46e3      	mov	fp, ip
 8008576:	469c      	mov	ip, r3
 8008578:	f10b 0308 	add.w	r3, fp, #8
 800857c:	44bc      	add	ip, r7
 800857e:	2807      	cmp	r0, #7
 8008580:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8008584:	e9cb 4700 	strd	r4, r7, [fp]
 8008588:	900e      	str	r0, [sp, #56]	; 0x38
 800858a:	f340 81a8 	ble.w	80088de <_vfiprintf_r+0xab6>
 800858e:	f1bc 0f00 	cmp.w	ip, #0
 8008592:	f000 81f8 	beq.w	8008986 <_vfiprintf_r+0xb5e>
 8008596:	aa0d      	add	r2, sp, #52	; 0x34
 8008598:	4651      	mov	r1, sl
 800859a:	9805      	ldr	r0, [sp, #20]
 800859c:	f7ff fbfe 	bl	8007d9c <__sprint_r.part.0>
 80085a0:	2800      	cmp	r0, #0
 80085a2:	f47f ad5e 	bne.w	8008062 <_vfiprintf_r+0x23a>
 80085a6:	9b01      	ldr	r3, [sp, #4]
 80085a8:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
 80085ac:	eba9 0703 	sub.w	r7, r9, r3
 80085b0:	2f00      	cmp	r7, #0
 80085b2:	f102 0101 	add.w	r1, r2, #1
 80085b6:	a81c      	add	r0, sp, #112	; 0x70
 80085b8:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 80085bc:	f77f ae8e 	ble.w	80082dc <_vfiprintf_r+0x4b4>
 80085c0:	2f10      	cmp	r7, #16
 80085c2:	4c94      	ldr	r4, [pc, #592]	; (8008814 <_vfiprintf_r+0x9ec>)
 80085c4:	f340 81dd 	ble.w	8008982 <_vfiprintf_r+0xb5a>
 80085c8:	4663      	mov	r3, ip
 80085ca:	f04f 0910 	mov.w	r9, #16
 80085ce:	46dc      	mov	ip, fp
 80085d0:	46ab      	mov	fp, r5
 80085d2:	4625      	mov	r5, r4
 80085d4:	9c05      	ldr	r4, [sp, #20]
 80085d6:	e006      	b.n	80085e6 <_vfiprintf_r+0x7be>
 80085d8:	1c91      	adds	r1, r2, #2
 80085da:	f10c 0c08 	add.w	ip, ip, #8
 80085de:	4602      	mov	r2, r0
 80085e0:	3f10      	subs	r7, #16
 80085e2:	2f10      	cmp	r7, #16
 80085e4:	dd19      	ble.n	800861a <_vfiprintf_r+0x7f2>
 80085e6:	1c50      	adds	r0, r2, #1
 80085e8:	3310      	adds	r3, #16
 80085ea:	2807      	cmp	r0, #7
 80085ec:	930f      	str	r3, [sp, #60]	; 0x3c
 80085ee:	e9cc 5900 	strd	r5, r9, [ip]
 80085f2:	900e      	str	r0, [sp, #56]	; 0x38
 80085f4:	ddf0      	ble.n	80085d8 <_vfiprintf_r+0x7b0>
 80085f6:	aa0d      	add	r2, sp, #52	; 0x34
 80085f8:	4651      	mov	r1, sl
 80085fa:	4620      	mov	r0, r4
 80085fc:	b30b      	cbz	r3, 8008642 <_vfiprintf_r+0x81a>
 80085fe:	f7ff fbcd 	bl	8007d9c <__sprint_r.part.0>
 8008602:	2800      	cmp	r0, #0
 8008604:	f47f ad2d 	bne.w	8008062 <_vfiprintf_r+0x23a>
 8008608:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 800860c:	3f10      	subs	r7, #16
 800860e:	2f10      	cmp	r7, #16
 8008610:	f102 0101 	add.w	r1, r2, #1
 8008614:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
 8008618:	dce5      	bgt.n	80085e6 <_vfiprintf_r+0x7be>
 800861a:	462c      	mov	r4, r5
 800861c:	465d      	mov	r5, fp
 800861e:	46e3      	mov	fp, ip
 8008620:	469c      	mov	ip, r3
 8008622:	f10b 0308 	add.w	r3, fp, #8
 8008626:	44bc      	add	ip, r7
 8008628:	2907      	cmp	r1, #7
 800862a:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 800862e:	e9cb 4700 	strd	r4, r7, [fp]
 8008632:	910e      	str	r1, [sp, #56]	; 0x38
 8008634:	f300 8101 	bgt.w	800883a <_vfiprintf_r+0xa12>
 8008638:	3101      	adds	r1, #1
 800863a:	f103 0008 	add.w	r0, r3, #8
 800863e:	469b      	mov	fp, r3
 8008640:	e64c      	b.n	80082dc <_vfiprintf_r+0x4b4>
 8008642:	2101      	movs	r1, #1
 8008644:	461a      	mov	r2, r3
 8008646:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
 800864a:	e7c9      	b.n	80085e0 <_vfiprintf_r+0x7b8>
 800864c:	aa0d      	add	r2, sp, #52	; 0x34
 800864e:	4651      	mov	r1, sl
 8008650:	9805      	ldr	r0, [sp, #20]
 8008652:	f7ff fba3 	bl	8007d9c <__sprint_r.part.0>
 8008656:	2800      	cmp	r0, #0
 8008658:	f43f ae68 	beq.w	800832c <_vfiprintf_r+0x504>
 800865c:	e501      	b.n	8008062 <_vfiprintf_r+0x23a>
 800865e:	2001      	movs	r0, #1
 8008660:	461a      	mov	r2, r3
 8008662:	f10d 0c68 	add.w	ip, sp, #104	; 0x68
 8008666:	e761      	b.n	800852c <_vfiprintf_r+0x704>
 8008668:	f1bc 0f00 	cmp.w	ip, #0
 800866c:	f000 8110 	beq.w	8008890 <_vfiprintf_r+0xa68>
 8008670:	aa0d      	add	r2, sp, #52	; 0x34
 8008672:	4651      	mov	r1, sl
 8008674:	9805      	ldr	r0, [sp, #20]
 8008676:	f7ff fb91 	bl	8007d9c <__sprint_r.part.0>
 800867a:	2800      	cmp	r0, #0
 800867c:	f47f acf1 	bne.w	8008062 <_vfiprintf_r+0x23a>
 8008680:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
 8008684:	a81c      	add	r0, sp, #112	; 0x70
 8008686:	1c51      	adds	r1, r2, #1
 8008688:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 800868c:	e5fd      	b.n	800828a <_vfiprintf_r+0x462>
 800868e:	2302      	movs	r3, #2
 8008690:	aa0c      	add	r2, sp, #48	; 0x30
 8008692:	e9cd 231a 	strd	r2, r3, [sp, #104]	; 0x68
 8008696:	469c      	mov	ip, r3
 8008698:	a81c      	add	r0, sp, #112	; 0x70
 800869a:	2101      	movs	r1, #1
 800869c:	4683      	mov	fp, r0
 800869e:	460a      	mov	r2, r1
 80086a0:	1c51      	adds	r1, r2, #1
 80086a2:	f10b 0008 	add.w	r0, fp, #8
 80086a6:	e60f      	b.n	80082c8 <_vfiprintf_r+0x4a0>
 80086a8:	2c10      	cmp	r4, #16
 80086aa:	4f5b      	ldr	r7, [pc, #364]	; (8008818 <_vfiprintf_r+0x9f0>)
 80086ac:	f340 8196 	ble.w	80089dc <_vfiprintf_r+0xbb4>
 80086b0:	9609      	str	r6, [sp, #36]	; 0x24
 80086b2:	4659      	mov	r1, fp
 80086b4:	2310      	movs	r3, #16
 80086b6:	46c3      	mov	fp, r8
 80086b8:	4666      	mov	r6, ip
 80086ba:	46a8      	mov	r8, r5
 80086bc:	9d05      	ldr	r5, [sp, #20]
 80086be:	e007      	b.n	80086d0 <_vfiprintf_r+0x8a8>
 80086c0:	f102 0e02 	add.w	lr, r2, #2
 80086c4:	3108      	adds	r1, #8
 80086c6:	4602      	mov	r2, r0
 80086c8:	3c10      	subs	r4, #16
 80086ca:	2c10      	cmp	r4, #16
 80086cc:	dd1a      	ble.n	8008704 <_vfiprintf_r+0x8dc>
 80086ce:	1c50      	adds	r0, r2, #1
 80086d0:	3610      	adds	r6, #16
 80086d2:	2807      	cmp	r0, #7
 80086d4:	960f      	str	r6, [sp, #60]	; 0x3c
 80086d6:	e9c1 7300 	strd	r7, r3, [r1]
 80086da:	900e      	str	r0, [sp, #56]	; 0x38
 80086dc:	ddf0      	ble.n	80086c0 <_vfiprintf_r+0x898>
 80086de:	aa0d      	add	r2, sp, #52	; 0x34
 80086e0:	4651      	mov	r1, sl
 80086e2:	4628      	mov	r0, r5
 80086e4:	b326      	cbz	r6, 8008730 <_vfiprintf_r+0x908>
 80086e6:	f7ff fb59 	bl	8007d9c <__sprint_r.part.0>
 80086ea:	2800      	cmp	r0, #0
 80086ec:	f47f acb9 	bne.w	8008062 <_vfiprintf_r+0x23a>
 80086f0:	e9dd 260e 	ldrd	r2, r6, [sp, #56]	; 0x38
 80086f4:	3c10      	subs	r4, #16
 80086f6:	2c10      	cmp	r4, #16
 80086f8:	f102 0e01 	add.w	lr, r2, #1
 80086fc:	a91a      	add	r1, sp, #104	; 0x68
 80086fe:	f04f 0310 	mov.w	r3, #16
 8008702:	dce4      	bgt.n	80086ce <_vfiprintf_r+0x8a6>
 8008704:	46b4      	mov	ip, r6
 8008706:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8008708:	4645      	mov	r5, r8
 800870a:	46d8      	mov	r8, fp
 800870c:	468b      	mov	fp, r1
 800870e:	44a4      	add	ip, r4
 8008710:	f1be 0f07 	cmp.w	lr, #7
 8008714:	f8cd c03c 	str.w	ip, [sp, #60]	; 0x3c
 8008718:	e9cb 7400 	strd	r7, r4, [fp]
 800871c:	f8cd e038 	str.w	lr, [sp, #56]	; 0x38
 8008720:	f300 80c7 	bgt.w	80088b2 <_vfiprintf_r+0xa8a>
 8008724:	f10b 0b08 	add.w	fp, fp, #8
 8008728:	f10e 0101 	add.w	r1, lr, #1
 800872c:	4672      	mov	r2, lr
 800872e:	e597      	b.n	8008260 <_vfiprintf_r+0x438>
 8008730:	4632      	mov	r2, r6
 8008732:	f04f 0e01 	mov.w	lr, #1
 8008736:	a91a      	add	r1, sp, #104	; 0x68
 8008738:	e7c6      	b.n	80086c8 <_vfiprintf_r+0x8a0>
 800873a:	9a00      	ldr	r2, [sp, #0]
 800873c:	930e      	str	r3, [sp, #56]	; 0x38
 800873e:	0751      	lsls	r1, r2, #29
 8008740:	d547      	bpl.n	80087d2 <_vfiprintf_r+0x9aa>
 8008742:	9a03      	ldr	r2, [sp, #12]
 8008744:	1b54      	subs	r4, r2, r5
 8008746:	2c00      	cmp	r4, #0
 8008748:	dd43      	ble.n	80087d2 <_vfiprintf_r+0x9aa>
 800874a:	a81a      	add	r0, sp, #104	; 0x68
 800874c:	2c10      	cmp	r4, #16
 800874e:	990e      	ldr	r1, [sp, #56]	; 0x38
 8008750:	4f31      	ldr	r7, [pc, #196]	; (8008818 <_vfiprintf_r+0x9f0>)
 8008752:	f340 8148 	ble.w	80089e6 <_vfiprintf_r+0xbbe>
 8008756:	2610      	movs	r6, #16
 8008758:	f8dd 9014 	ldr.w	r9, [sp, #20]
 800875c:	e006      	b.n	800876c <_vfiprintf_r+0x944>
 800875e:	f101 0c02 	add.w	ip, r1, #2
 8008762:	3008      	adds	r0, #8
 8008764:	4611      	mov	r1, r2
 8008766:	3c10      	subs	r4, #16
 8008768:	2c10      	cmp	r4, #16
 800876a:	dd18      	ble.n	800879e <_vfiprintf_r+0x976>
 800876c:	1c4a      	adds	r2, r1, #1
 800876e:	3310      	adds	r3, #16
 8008770:	2a07      	cmp	r2, #7
 8008772:	930f      	str	r3, [sp, #60]	; 0x3c
 8008774:	e9c0 7600 	strd	r7, r6, [r0]
 8008778:	920e      	str	r2, [sp, #56]	; 0x38
 800877a:	ddf0      	ble.n	800875e <_vfiprintf_r+0x936>
 800877c:	aa0d      	add	r2, sp, #52	; 0x34
 800877e:	4651      	mov	r1, sl
 8008780:	4648      	mov	r0, r9
 8008782:	b30b      	cbz	r3, 80087c8 <_vfiprintf_r+0x9a0>
 8008784:	f7ff fb0a 	bl	8007d9c <__sprint_r.part.0>
 8008788:	2800      	cmp	r0, #0
 800878a:	f47f ac6a 	bne.w	8008062 <_vfiprintf_r+0x23a>
 800878e:	e9dd 130e 	ldrd	r1, r3, [sp, #56]	; 0x38
 8008792:	3c10      	subs	r4, #16
 8008794:	2c10      	cmp	r4, #16
 8008796:	f101 0c01 	add.w	ip, r1, #1
 800879a:	a81a      	add	r0, sp, #104	; 0x68
 800879c:	dce6      	bgt.n	800876c <_vfiprintf_r+0x944>
 800879e:	4423      	add	r3, r4
 80087a0:	f1bc 0f07 	cmp.w	ip, #7
 80087a4:	930f      	str	r3, [sp, #60]	; 0x3c
 80087a6:	e9c0 7400 	strd	r7, r4, [r0]
 80087aa:	f8cd c038 	str.w	ip, [sp, #56]	; 0x38
 80087ae:	f77f adb3 	ble.w	8008318 <_vfiprintf_r+0x4f0>
 80087b2:	b173      	cbz	r3, 80087d2 <_vfiprintf_r+0x9aa>
 80087b4:	aa0d      	add	r2, sp, #52	; 0x34
 80087b6:	4651      	mov	r1, sl
 80087b8:	9805      	ldr	r0, [sp, #20]
 80087ba:	f7ff faef 	bl	8007d9c <__sprint_r.part.0>
 80087be:	2800      	cmp	r0, #0
 80087c0:	f47f ac4f 	bne.w	8008062 <_vfiprintf_r+0x23a>
 80087c4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80087c6:	e5a7      	b.n	8008318 <_vfiprintf_r+0x4f0>
 80087c8:	f04f 0c01 	mov.w	ip, #1
 80087cc:	4619      	mov	r1, r3
 80087ce:	a81a      	add	r0, sp, #104	; 0x68
 80087d0:	e7c9      	b.n	8008766 <_vfiprintf_r+0x93e>
 80087d2:	e9dd 3202 	ldrd	r3, r2, [sp, #8]
 80087d6:	42aa      	cmp	r2, r5
 80087d8:	bfac      	ite	ge
 80087da:	189b      	addge	r3, r3, r2
 80087dc:	195b      	addlt	r3, r3, r5
 80087de:	9302      	str	r3, [sp, #8]
 80087e0:	e5a4      	b.n	800832c <_vfiprintf_r+0x504>
 80087e2:	2b01      	cmp	r3, #1
 80087e4:	f000 80e1 	beq.w	80089aa <_vfiprintf_r+0xb82>
 80087e8:	2b02      	cmp	r3, #2
 80087ea:	9f00      	ldr	r7, [sp, #0]
 80087ec:	f47f ae44 	bne.w	8008478 <_vfiprintf_r+0x650>
 80087f0:	9808      	ldr	r0, [sp, #32]
 80087f2:	ae1a      	add	r6, sp, #104	; 0x68
 80087f4:	0923      	lsrs	r3, r4, #4
 80087f6:	f004 010f 	and.w	r1, r4, #15
 80087fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80087fe:	092a      	lsrs	r2, r5, #4
 8008800:	461c      	mov	r4, r3
 8008802:	4615      	mov	r5, r2
 8008804:	5c43      	ldrb	r3, [r0, r1]
 8008806:	f806 3d01 	strb.w	r3, [r6, #-1]!
 800880a:	ea54 0305 	orrs.w	r3, r4, r5
 800880e:	d1f1      	bne.n	80087f4 <_vfiprintf_r+0x9cc>
 8008810:	e66a      	b.n	80084e8 <_vfiprintf_r+0x6c0>
 8008812:	bf00      	nop
 8008814:	0800aff4 	.word	0x0800aff4
 8008818:	0800afe4 	.word	0x0800afe4
 800881c:	9f00      	ldr	r7, [sp, #0]
 800881e:	2d00      	cmp	r5, #0
 8008820:	bf08      	it	eq
 8008822:	2c0a      	cmpeq	r4, #10
 8008824:	f4bf ae49 	bcs.w	80084ba <_vfiprintf_r+0x692>
 8008828:	3430      	adds	r4, #48	; 0x30
 800882a:	2301      	movs	r3, #1
 800882c:	f88d 4067 	strb.w	r4, [sp, #103]	; 0x67
 8008830:	9700      	str	r7, [sp, #0]
 8008832:	9301      	str	r3, [sp, #4]
 8008834:	f10d 0667 	add.w	r6, sp, #103	; 0x67
 8008838:	e65a      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 800883a:	f1bc 0f00 	cmp.w	ip, #0
 800883e:	f000 8090 	beq.w	8008962 <_vfiprintf_r+0xb3a>
 8008842:	aa0d      	add	r2, sp, #52	; 0x34
 8008844:	4651      	mov	r1, sl
 8008846:	9805      	ldr	r0, [sp, #20]
 8008848:	f7ff faa8 	bl	8007d9c <__sprint_r.part.0>
 800884c:	2800      	cmp	r0, #0
 800884e:	f47f ac08 	bne.w	8008062 <_vfiprintf_r+0x23a>
 8008852:	e9dd 1c0e 	ldrd	r1, ip, [sp, #56]	; 0x38
 8008856:	a81c      	add	r0, sp, #112	; 0x70
 8008858:	3101      	adds	r1, #1
 800885a:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 800885e:	e53d      	b.n	80082dc <_vfiprintf_r+0x4b4>
 8008860:	920e      	str	r2, [sp, #56]	; 0x38
 8008862:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 8008866:	f7ff bb36 	b.w	8007ed6 <_vfiprintf_r+0xae>
 800886a:	17e5      	asrs	r5, r4, #31
 800886c:	4622      	mov	r2, r4
 800886e:	462b      	mov	r3, r5
 8008870:	2a00      	cmp	r2, #0
 8008872:	f173 0300 	sbcs.w	r3, r3, #0
 8008876:	f6bf acb7 	bge.w	80081e8 <_vfiprintf_r+0x3c0>
 800887a:	232d      	movs	r3, #45	; 0x2d
 800887c:	4264      	negs	r4, r4
 800887e:	f88d 302f 	strb.w	r3, [sp, #47]	; 0x2f
 8008882:	9306      	str	r3, [sp, #24]
 8008884:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8008888:	2301      	movs	r3, #1
 800888a:	e594      	b.n	80083b6 <_vfiprintf_r+0x58e>
 800888c:	2500      	movs	r5, #0
 800888e:	e44f      	b.n	8008130 <_vfiprintf_r+0x308>
 8008890:	9b06      	ldr	r3, [sp, #24]
 8008892:	2b00      	cmp	r3, #0
 8008894:	d03d      	beq.n	8008912 <_vfiprintf_r+0xaea>
 8008896:	2302      	movs	r3, #2
 8008898:	a90c      	add	r1, sp, #48	; 0x30
 800889a:	e9cd 131a 	strd	r1, r3, [sp, #104]	; 0x68
 800889e:	469c      	mov	ip, r3
 80088a0:	f10d 0b70 	add.w	fp, sp, #112	; 0x70
 80088a4:	e6fc      	b.n	80086a0 <_vfiprintf_r+0x878>
 80088a6:	a81c      	add	r0, sp, #112	; 0x70
 80088a8:	2101      	movs	r1, #1
 80088aa:	4662      	mov	r2, ip
 80088ac:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 80088b0:	e50a      	b.n	80082c8 <_vfiprintf_r+0x4a0>
 80088b2:	f1bc 0f00 	cmp.w	ip, #0
 80088b6:	d043      	beq.n	8008940 <_vfiprintf_r+0xb18>
 80088b8:	aa0d      	add	r2, sp, #52	; 0x34
 80088ba:	4651      	mov	r1, sl
 80088bc:	9805      	ldr	r0, [sp, #20]
 80088be:	f7ff fa6d 	bl	8007d9c <__sprint_r.part.0>
 80088c2:	2800      	cmp	r0, #0
 80088c4:	f47f abcd 	bne.w	8008062 <_vfiprintf_r+0x23a>
 80088c8:	e9dd 2c0e 	ldrd	r2, ip, [sp, #56]	; 0x38
 80088cc:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 80088d0:	1c51      	adds	r1, r2, #1
 80088d2:	e4c5      	b.n	8008260 <_vfiprintf_r+0x438>
 80088d4:	4644      	mov	r4, r8
 80088d6:	f7ff bb05 	b.w	8007ee4 <_vfiprintf_r+0xbc>
 80088da:	ae1a      	add	r6, sp, #104	; 0x68
 80088dc:	e608      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 80088de:	1c41      	adds	r1, r0, #1
 80088e0:	4602      	mov	r2, r0
 80088e2:	469b      	mov	fp, r3
 80088e4:	f103 0008 	add.w	r0, r3, #8
 80088e8:	e4f2      	b.n	80082d0 <_vfiprintf_r+0x4a8>
 80088ea:	f017 0340 	ands.w	r3, r7, #64	; 0x40
 80088ee:	bf1c      	itt	ne
 80088f0:	4613      	movne	r3, r2
 80088f2:	b2a4      	uxthne	r4, r4
 80088f4:	2500      	movs	r5, #0
 80088f6:	e558      	b.n	80083aa <_vfiprintf_r+0x582>
 80088f8:	067d      	lsls	r5, r7, #25
 80088fa:	bf48      	it	mi
 80088fc:	b2a4      	uxthmi	r4, r4
 80088fe:	2500      	movs	r5, #0
 8008900:	2301      	movs	r3, #1
 8008902:	e552      	b.n	80083aa <_vfiprintf_r+0x582>
 8008904:	9a02      	ldr	r2, [sp, #8]
 8008906:	4610      	mov	r0, r2
 8008908:	17d1      	asrs	r1, r2, #31
 800890a:	e9c3 0100 	strd	r0, r1, [r3]
 800890e:	f7ff babd 	b.w	8007e8c <_vfiprintf_r+0x64>
 8008912:	4611      	mov	r1, r2
 8008914:	a81c      	add	r0, sp, #112	; 0x70
 8008916:	4662      	mov	r2, ip
 8008918:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 800891c:	e4d4      	b.n	80082c8 <_vfiprintf_r+0x4a0>
 800891e:	4264      	negs	r4, r4
 8008920:	e9cd 4203 	strd	r4, r2, [sp, #12]
 8008924:	f7ff bbd5 	b.w	80080d2 <_vfiprintf_r+0x2aa>
 8008928:	4630      	mov	r0, r6
 800892a:	9404      	str	r4, [sp, #16]
 800892c:	9700      	str	r7, [sp, #0]
 800892e:	f7ff f9c7 	bl	8007cc0 <strlen>
 8008932:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
 8008936:	9001      	str	r0, [sp, #4]
 8008938:	9306      	str	r3, [sp, #24]
 800893a:	f04f 0900 	mov.w	r9, #0
 800893e:	e5d7      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 8008940:	f89d 202f 	ldrb.w	r2, [sp, #47]	; 0x2f
 8008944:	bb2a      	cbnz	r2, 8008992 <_vfiprintf_r+0xb6a>
 8008946:	9b06      	ldr	r3, [sp, #24]
 8008948:	2b00      	cmp	r3, #0
 800894a:	f47f aea0 	bne.w	800868e <_vfiprintf_r+0x866>
 800894e:	4662      	mov	r2, ip
 8008950:	a81c      	add	r0, sp, #112	; 0x70
 8008952:	2101      	movs	r1, #1
 8008954:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 8008958:	e4ba      	b.n	80082d0 <_vfiprintf_r+0x4a8>
 800895a:	9a02      	ldr	r2, [sp, #8]
 800895c:	601a      	str	r2, [r3, #0]
 800895e:	f7ff ba95 	b.w	8007e8c <_vfiprintf_r+0x64>
 8008962:	9b01      	ldr	r3, [sp, #4]
 8008964:	931b      	str	r3, [sp, #108]	; 0x6c
 8008966:	2201      	movs	r2, #1
 8008968:	930f      	str	r3, [sp, #60]	; 0x3c
 800896a:	961a      	str	r6, [sp, #104]	; 0x68
 800896c:	920e      	str	r2, [sp, #56]	; 0x38
 800896e:	a81c      	add	r0, sp, #112	; 0x70
 8008970:	e4ca      	b.n	8008308 <_vfiprintf_r+0x4e0>
 8008972:	464d      	mov	r5, r9
 8008974:	2d06      	cmp	r5, #6
 8008976:	bf28      	it	cs
 8008978:	2506      	movcs	r5, #6
 800897a:	9501      	str	r5, [sp, #4]
 800897c:	9404      	str	r4, [sp, #16]
 800897e:	4e25      	ldr	r6, [pc, #148]	; (8008a14 <_vfiprintf_r+0xbec>)
 8008980:	e457      	b.n	8008232 <_vfiprintf_r+0x40a>
 8008982:	4603      	mov	r3, r0
 8008984:	e64f      	b.n	8008626 <_vfiprintf_r+0x7fe>
 8008986:	a81c      	add	r0, sp, #112	; 0x70
 8008988:	2101      	movs	r1, #1
 800898a:	4662      	mov	r2, ip
 800898c:	f10d 0b68 	add.w	fp, sp, #104	; 0x68
 8008990:	e49e      	b.n	80082d0 <_vfiprintf_r+0x4a8>
 8008992:	2201      	movs	r2, #1
 8008994:	f10d 002f 	add.w	r0, sp, #47	; 0x2f
 8008998:	901a      	str	r0, [sp, #104]	; 0x68
 800899a:	4694      	mov	ip, r2
 800899c:	921b      	str	r2, [sp, #108]	; 0x6c
 800899e:	4611      	mov	r1, r2
 80089a0:	a81c      	add	r0, sp, #112	; 0x70
 80089a2:	e46e      	b.n	8008282 <_vfiprintf_r+0x45a>
 80089a4:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
 80089a8:	e550      	b.n	800844c <_vfiprintf_r+0x624>
 80089aa:	9f00      	ldr	r7, [sp, #0]
 80089ac:	e73c      	b.n	8008828 <_vfiprintf_r+0xa00>
 80089ae:	f89d 302f 	ldrb.w	r3, [sp, #47]	; 0x2f
 80089b2:	f8cd 9004 	str.w	r9, [sp, #4]
 80089b6:	9306      	str	r3, [sp, #24]
 80089b8:	9404      	str	r4, [sp, #16]
 80089ba:	9700      	str	r7, [sp, #0]
 80089bc:	4681      	mov	r9, r0
 80089be:	e597      	b.n	80084f0 <_vfiprintf_r+0x6c8>
 80089c0:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
 80089c4:	e4cf      	b.n	8008366 <_vfiprintf_r+0x53e>
 80089c6:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
 80089ca:	f7ff bbfb 	b.w	80081c4 <_vfiprintf_r+0x39c>
 80089ce:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
 80089d2:	f7ff bba1 	b.w	8008118 <_vfiprintf_r+0x2f0>
 80089d6:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
 80089da:	e50a      	b.n	80083f2 <_vfiprintf_r+0x5ca>
 80089dc:	4686      	mov	lr, r0
 80089de:	e696      	b.n	800870e <_vfiprintf_r+0x8e6>
 80089e0:	f88d 002f 	strb.w	r0, [sp, #47]	; 0x2f
 80089e4:	e4aa      	b.n	800833c <_vfiprintf_r+0x514>
 80089e6:	f101 0c01 	add.w	ip, r1, #1
 80089ea:	e6d8      	b.n	800879e <_vfiprintf_r+0x976>
 80089ec:	4603      	mov	r3, r0
 80089ee:	4608      	mov	r0, r1
 80089f0:	e5c4      	b.n	800857c <_vfiprintf_r+0x754>
 80089f2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80089f6:	9302      	str	r3, [sp, #8]
 80089f8:	f7ff bb38 	b.w	800806c <_vfiprintf_r+0x244>
 80089fc:	9d04      	ldr	r5, [sp, #16]
 80089fe:	f898 3001 	ldrb.w	r3, [r8, #1]
 8008a02:	f855 2b04 	ldr.w	r2, [r5], #4
 8008a06:	9504      	str	r5, [sp, #16]
 8008a08:	46a0      	mov	r8, r4
 8008a0a:	ea42 79e2 	orr.w	r9, r2, r2, asr #31
 8008a0e:	f7ff ba76 	b.w	8007efe <_vfiprintf_r+0xd6>
 8008a12:	bf00      	nop
 8008a14:	0800ae20 	.word	0x0800ae20

08008a18 <vfiprintf>:
 8008a18:	b410      	push	{r4}
 8008a1a:	4c04      	ldr	r4, [pc, #16]	; (8008a2c <vfiprintf+0x14>)
 8008a1c:	4613      	mov	r3, r2
 8008a1e:	460a      	mov	r2, r1
 8008a20:	4601      	mov	r1, r0
 8008a22:	6820      	ldr	r0, [r4, #0]
 8008a24:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008a28:	f7ff b9fe 	b.w	8007e28 <_vfiprintf_r>
 8008a2c:	20000010 	.word	0x20000010

08008a30 <__sbprintf>:
 8008a30:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008a32:	460c      	mov	r4, r1
 8008a34:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 8008a38:	8989      	ldrh	r1, [r1, #12]
 8008a3a:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8008a3c:	89e5      	ldrh	r5, [r4, #14]
 8008a3e:	9619      	str	r6, [sp, #100]	; 0x64
 8008a40:	f021 0102 	bic.w	r1, r1, #2
 8008a44:	6a66      	ldr	r6, [r4, #36]	; 0x24
 8008a46:	f8ad 500e 	strh.w	r5, [sp, #14]
 8008a4a:	2500      	movs	r5, #0
 8008a4c:	69e7      	ldr	r7, [r4, #28]
 8008a4e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8008a52:	9609      	str	r6, [sp, #36]	; 0x24
 8008a54:	9506      	str	r5, [sp, #24]
 8008a56:	ae1a      	add	r6, sp, #104	; 0x68
 8008a58:	f44f 6580 	mov.w	r5, #1024	; 0x400
 8008a5c:	4669      	mov	r1, sp
 8008a5e:	9600      	str	r6, [sp, #0]
 8008a60:	9604      	str	r6, [sp, #16]
 8008a62:	9502      	str	r5, [sp, #8]
 8008a64:	9505      	str	r5, [sp, #20]
 8008a66:	9707      	str	r7, [sp, #28]
 8008a68:	4606      	mov	r6, r0
 8008a6a:	f7ff f9dd 	bl	8007e28 <_vfiprintf_r>
 8008a6e:	1e05      	subs	r5, r0, #0
 8008a70:	db07      	blt.n	8008a82 <__sbprintf+0x52>
 8008a72:	4630      	mov	r0, r6
 8008a74:	4669      	mov	r1, sp
 8008a76:	f7fd fd91 	bl	800659c <_fflush_r>
 8008a7a:	2800      	cmp	r0, #0
 8008a7c:	bf18      	it	ne
 8008a7e:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8008a82:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8008a86:	065b      	lsls	r3, r3, #25
 8008a88:	d503      	bpl.n	8008a92 <__sbprintf+0x62>
 8008a8a:	89a3      	ldrh	r3, [r4, #12]
 8008a8c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008a90:	81a3      	strh	r3, [r4, #12]
 8008a92:	4628      	mov	r0, r5
 8008a94:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 8008a98:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008a9a:	bf00      	nop

08008a9c <_write_r>:
 8008a9c:	b570      	push	{r4, r5, r6, lr}
 8008a9e:	460d      	mov	r5, r1
 8008aa0:	4c08      	ldr	r4, [pc, #32]	; (8008ac4 <_write_r+0x28>)
 8008aa2:	4611      	mov	r1, r2
 8008aa4:	4606      	mov	r6, r0
 8008aa6:	461a      	mov	r2, r3
 8008aa8:	4628      	mov	r0, r5
 8008aaa:	2300      	movs	r3, #0
 8008aac:	6023      	str	r3, [r4, #0]
 8008aae:	f7f7 fdd3 	bl	8000658 <_write>
 8008ab2:	1c43      	adds	r3, r0, #1
 8008ab4:	d000      	beq.n	8008ab8 <_write_r+0x1c>
 8008ab6:	bd70      	pop	{r4, r5, r6, pc}
 8008ab8:	6823      	ldr	r3, [r4, #0]
 8008aba:	2b00      	cmp	r3, #0
 8008abc:	d0fb      	beq.n	8008ab6 <_write_r+0x1a>
 8008abe:	6033      	str	r3, [r6, #0]
 8008ac0:	bd70      	pop	{r4, r5, r6, pc}
 8008ac2:	bf00      	nop
 8008ac4:	20000c28 	.word	0x20000c28

08008ac8 <__assert_func>:
 8008ac8:	b500      	push	{lr}
 8008aca:	4c0a      	ldr	r4, [pc, #40]	; (8008af4 <__assert_func+0x2c>)
 8008acc:	6826      	ldr	r6, [r4, #0]
 8008ace:	4605      	mov	r5, r0
 8008ad0:	b085      	sub	sp, #20
 8008ad2:	461c      	mov	r4, r3
 8008ad4:	68f0      	ldr	r0, [r6, #12]
 8008ad6:	b152      	cbz	r2, 8008aee <__assert_func+0x26>
 8008ad8:	4b07      	ldr	r3, [pc, #28]	; (8008af8 <__assert_func+0x30>)
 8008ada:	9100      	str	r1, [sp, #0]
 8008adc:	e9cd 3201 	strd	r3, r2, [sp, #4]
 8008ae0:	4906      	ldr	r1, [pc, #24]	; (8008afc <__assert_func+0x34>)
 8008ae2:	462b      	mov	r3, r5
 8008ae4:	4622      	mov	r2, r4
 8008ae6:	f000 f8af 	bl	8008c48 <fiprintf>
 8008aea:	f000 fe41 	bl	8009770 <abort>
 8008aee:	4b04      	ldr	r3, [pc, #16]	; (8008b00 <__assert_func+0x38>)
 8008af0:	461a      	mov	r2, r3
 8008af2:	e7f2      	b.n	8008ada <__assert_func+0x12>
 8008af4:	20000010 	.word	0x20000010
 8008af8:	0800b004 	.word	0x0800b004
 8008afc:	0800b014 	.word	0x0800b014
 8008b00:	0800b010 	.word	0x0800b010

08008b04 <__assert>:
 8008b04:	b508      	push	{r3, lr}
 8008b06:	4613      	mov	r3, r2
 8008b08:	2200      	movs	r2, #0
 8008b0a:	f7ff ffdd 	bl	8008ac8 <__assert_func>
 8008b0e:	bf00      	nop

08008b10 <_calloc_r>:
 8008b10:	b510      	push	{r4, lr}
 8008b12:	fb02 f101 	mul.w	r1, r2, r1
 8008b16:	f7fe f883 	bl	8006c20 <_malloc_r>
 8008b1a:	4604      	mov	r4, r0
 8008b1c:	b168      	cbz	r0, 8008b3a <_calloc_r+0x2a>
 8008b1e:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8008b22:	f022 0203 	bic.w	r2, r2, #3
 8008b26:	3a04      	subs	r2, #4
 8008b28:	2a24      	cmp	r2, #36	; 0x24
 8008b2a:	d818      	bhi.n	8008b5e <_calloc_r+0x4e>
 8008b2c:	2a13      	cmp	r2, #19
 8008b2e:	d806      	bhi.n	8008b3e <_calloc_r+0x2e>
 8008b30:	4602      	mov	r2, r0
 8008b32:	2300      	movs	r3, #0
 8008b34:	e9c2 3300 	strd	r3, r3, [r2]
 8008b38:	6093      	str	r3, [r2, #8]
 8008b3a:	4620      	mov	r0, r4
 8008b3c:	bd10      	pop	{r4, pc}
 8008b3e:	2300      	movs	r3, #0
 8008b40:	2a1b      	cmp	r2, #27
 8008b42:	e9c0 3300 	strd	r3, r3, [r0]
 8008b46:	d90f      	bls.n	8008b68 <_calloc_r+0x58>
 8008b48:	2a24      	cmp	r2, #36	; 0x24
 8008b4a:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8008b4e:	bf12      	itee	ne
 8008b50:	f100 0210 	addne.w	r2, r0, #16
 8008b54:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8008b58:	f100 0218 	addeq.w	r2, r0, #24
 8008b5c:	e7e9      	b.n	8008b32 <_calloc_r+0x22>
 8008b5e:	2100      	movs	r1, #0
 8008b60:	f7fa ff48 	bl	80039f4 <memset>
 8008b64:	4620      	mov	r0, r4
 8008b66:	bd10      	pop	{r4, pc}
 8008b68:	f100 0208 	add.w	r2, r0, #8
 8008b6c:	e7e1      	b.n	8008b32 <_calloc_r+0x22>
 8008b6e:	bf00      	nop

08008b70 <_close_r>:
 8008b70:	b538      	push	{r3, r4, r5, lr}
 8008b72:	4c07      	ldr	r4, [pc, #28]	; (8008b90 <_close_r+0x20>)
 8008b74:	2300      	movs	r3, #0
 8008b76:	4605      	mov	r5, r0
 8008b78:	4608      	mov	r0, r1
 8008b7a:	6023      	str	r3, [r4, #0]
 8008b7c:	f7f7 fdb4 	bl	80006e8 <_close>
 8008b80:	1c43      	adds	r3, r0, #1
 8008b82:	d000      	beq.n	8008b86 <_close_r+0x16>
 8008b84:	bd38      	pop	{r3, r4, r5, pc}
 8008b86:	6823      	ldr	r3, [r4, #0]
 8008b88:	2b00      	cmp	r3, #0
 8008b8a:	d0fb      	beq.n	8008b84 <_close_r+0x14>
 8008b8c:	602b      	str	r3, [r5, #0]
 8008b8e:	bd38      	pop	{r3, r4, r5, pc}
 8008b90:	20000c28 	.word	0x20000c28

08008b94 <_fclose_r>:
 8008b94:	b570      	push	{r4, r5, r6, lr}
 8008b96:	b139      	cbz	r1, 8008ba8 <_fclose_r+0x14>
 8008b98:	4605      	mov	r5, r0
 8008b9a:	460c      	mov	r4, r1
 8008b9c:	b108      	cbz	r0, 8008ba2 <_fclose_r+0xe>
 8008b9e:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008ba0:	b383      	cbz	r3, 8008c04 <_fclose_r+0x70>
 8008ba2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008ba6:	b913      	cbnz	r3, 8008bae <_fclose_r+0x1a>
 8008ba8:	2600      	movs	r6, #0
 8008baa:	4630      	mov	r0, r6
 8008bac:	bd70      	pop	{r4, r5, r6, pc}
 8008bae:	4621      	mov	r1, r4
 8008bb0:	4628      	mov	r0, r5
 8008bb2:	f7fd fc4d 	bl	8006450 <__sflush_r>
 8008bb6:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8008bb8:	4606      	mov	r6, r0
 8008bba:	b133      	cbz	r3, 8008bca <_fclose_r+0x36>
 8008bbc:	69e1      	ldr	r1, [r4, #28]
 8008bbe:	4628      	mov	r0, r5
 8008bc0:	4798      	blx	r3
 8008bc2:	2800      	cmp	r0, #0
 8008bc4:	bfb8      	it	lt
 8008bc6:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8008bca:	89a3      	ldrh	r3, [r4, #12]
 8008bcc:	061b      	lsls	r3, r3, #24
 8008bce:	d420      	bmi.n	8008c12 <_fclose_r+0x7e>
 8008bd0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008bd2:	b141      	cbz	r1, 8008be6 <_fclose_r+0x52>
 8008bd4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8008bd8:	4299      	cmp	r1, r3
 8008bda:	d002      	beq.n	8008be2 <_fclose_r+0x4e>
 8008bdc:	4628      	mov	r0, r5
 8008bde:	f7fd fe53 	bl	8006888 <_free_r>
 8008be2:	2300      	movs	r3, #0
 8008be4:	6323      	str	r3, [r4, #48]	; 0x30
 8008be6:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8008be8:	b121      	cbz	r1, 8008bf4 <_fclose_r+0x60>
 8008bea:	4628      	mov	r0, r5
 8008bec:	f7fd fe4c 	bl	8006888 <_free_r>
 8008bf0:	2300      	movs	r3, #0
 8008bf2:	6463      	str	r3, [r4, #68]	; 0x44
 8008bf4:	f7fd fddc 	bl	80067b0 <__sfp_lock_acquire>
 8008bf8:	2300      	movs	r3, #0
 8008bfa:	81a3      	strh	r3, [r4, #12]
 8008bfc:	f7fd fdda 	bl	80067b4 <__sfp_lock_release>
 8008c00:	4630      	mov	r0, r6
 8008c02:	bd70      	pop	{r4, r5, r6, pc}
 8008c04:	f7fd fdd0 	bl	80067a8 <__sinit>
 8008c08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008c0c:	2b00      	cmp	r3, #0
 8008c0e:	d0cb      	beq.n	8008ba8 <_fclose_r+0x14>
 8008c10:	e7cd      	b.n	8008bae <_fclose_r+0x1a>
 8008c12:	6921      	ldr	r1, [r4, #16]
 8008c14:	4628      	mov	r0, r5
 8008c16:	f7fd fe37 	bl	8006888 <_free_r>
 8008c1a:	e7d9      	b.n	8008bd0 <_fclose_r+0x3c>

08008c1c <fclose>:
 8008c1c:	4b02      	ldr	r3, [pc, #8]	; (8008c28 <fclose+0xc>)
 8008c1e:	4601      	mov	r1, r0
 8008c20:	6818      	ldr	r0, [r3, #0]
 8008c22:	f7ff bfb7 	b.w	8008b94 <_fclose_r>
 8008c26:	bf00      	nop
 8008c28:	20000010 	.word	0x20000010

08008c2c <_fiprintf_r>:
 8008c2c:	b40c      	push	{r2, r3}
 8008c2e:	b500      	push	{lr}
 8008c30:	b083      	sub	sp, #12
 8008c32:	ab04      	add	r3, sp, #16
 8008c34:	f853 2b04 	ldr.w	r2, [r3], #4
 8008c38:	9301      	str	r3, [sp, #4]
 8008c3a:	f7ff f8f5 	bl	8007e28 <_vfiprintf_r>
 8008c3e:	b003      	add	sp, #12
 8008c40:	f85d eb04 	ldr.w	lr, [sp], #4
 8008c44:	b002      	add	sp, #8
 8008c46:	4770      	bx	lr

08008c48 <fiprintf>:
 8008c48:	b40e      	push	{r1, r2, r3}
 8008c4a:	b510      	push	{r4, lr}
 8008c4c:	b083      	sub	sp, #12
 8008c4e:	ab05      	add	r3, sp, #20
 8008c50:	4c06      	ldr	r4, [pc, #24]	; (8008c6c <fiprintf+0x24>)
 8008c52:	f853 2b04 	ldr.w	r2, [r3], #4
 8008c56:	9301      	str	r3, [sp, #4]
 8008c58:	4601      	mov	r1, r0
 8008c5a:	6820      	ldr	r0, [r4, #0]
 8008c5c:	f7ff f8e4 	bl	8007e28 <_vfiprintf_r>
 8008c60:	b003      	add	sp, #12
 8008c62:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8008c66:	b003      	add	sp, #12
 8008c68:	4770      	bx	lr
 8008c6a:	bf00      	nop
 8008c6c:	20000010 	.word	0x20000010

08008c70 <__fputwc>:
 8008c70:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008c74:	b082      	sub	sp, #8
 8008c76:	4680      	mov	r8, r0
 8008c78:	4689      	mov	r9, r1
 8008c7a:	4614      	mov	r4, r2
 8008c7c:	f000 fa4a 	bl	8009114 <__locale_mb_cur_max>
 8008c80:	2801      	cmp	r0, #1
 8008c82:	d103      	bne.n	8008c8c <__fputwc+0x1c>
 8008c84:	f109 33ff 	add.w	r3, r9, #4294967295	; 0xffffffff
 8008c88:	2bfe      	cmp	r3, #254	; 0xfe
 8008c8a:	d936      	bls.n	8008cfa <__fputwc+0x8a>
 8008c8c:	464a      	mov	r2, r9
 8008c8e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8008c92:	a901      	add	r1, sp, #4
 8008c94:	4640      	mov	r0, r8
 8008c96:	f000 fd15 	bl	80096c4 <_wcrtomb_r>
 8008c9a:	1c42      	adds	r2, r0, #1
 8008c9c:	4606      	mov	r6, r0
 8008c9e:	d032      	beq.n	8008d06 <__fputwc+0x96>
 8008ca0:	b330      	cbz	r0, 8008cf0 <__fputwc+0x80>
 8008ca2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8008ca6:	2500      	movs	r5, #0
 8008ca8:	f10d 0a04 	add.w	sl, sp, #4
 8008cac:	e009      	b.n	8008cc2 <__fputwc+0x52>
 8008cae:	6823      	ldr	r3, [r4, #0]
 8008cb0:	1c5a      	adds	r2, r3, #1
 8008cb2:	6022      	str	r2, [r4, #0]
 8008cb4:	f883 c000 	strb.w	ip, [r3]
 8008cb8:	3501      	adds	r5, #1
 8008cba:	42b5      	cmp	r5, r6
 8008cbc:	d218      	bcs.n	8008cf0 <__fputwc+0x80>
 8008cbe:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8008cc2:	68a3      	ldr	r3, [r4, #8]
 8008cc4:	3b01      	subs	r3, #1
 8008cc6:	2b00      	cmp	r3, #0
 8008cc8:	60a3      	str	r3, [r4, #8]
 8008cca:	daf0      	bge.n	8008cae <__fputwc+0x3e>
 8008ccc:	69a7      	ldr	r7, [r4, #24]
 8008cce:	42bb      	cmp	r3, r7
 8008cd0:	4661      	mov	r1, ip
 8008cd2:	4622      	mov	r2, r4
 8008cd4:	4640      	mov	r0, r8
 8008cd6:	db02      	blt.n	8008cde <__fputwc+0x6e>
 8008cd8:	f1bc 0f0a 	cmp.w	ip, #10
 8008cdc:	d1e7      	bne.n	8008cae <__fputwc+0x3e>
 8008cde:	f000 fc91 	bl	8009604 <__swbuf_r>
 8008ce2:	1c43      	adds	r3, r0, #1
 8008ce4:	d1e8      	bne.n	8008cb8 <__fputwc+0x48>
 8008ce6:	4606      	mov	r6, r0
 8008ce8:	4630      	mov	r0, r6
 8008cea:	b002      	add	sp, #8
 8008cec:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008cf0:	464e      	mov	r6, r9
 8008cf2:	4630      	mov	r0, r6
 8008cf4:	b002      	add	sp, #8
 8008cf6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008cfa:	fa5f fc89 	uxtb.w	ip, r9
 8008cfe:	4606      	mov	r6, r0
 8008d00:	f88d c004 	strb.w	ip, [sp, #4]
 8008d04:	e7cf      	b.n	8008ca6 <__fputwc+0x36>
 8008d06:	89a3      	ldrh	r3, [r4, #12]
 8008d08:	4630      	mov	r0, r6
 8008d0a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008d0e:	81a3      	strh	r3, [r4, #12]
 8008d10:	b002      	add	sp, #8
 8008d12:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008d16:	bf00      	nop

08008d18 <_fputwc_r>:
 8008d18:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8008d1c:	f413 5f00 	tst.w	r3, #8192	; 0x2000
 8008d20:	d10b      	bne.n	8008d3a <_fputwc_r+0x22>
 8008d22:	b410      	push	{r4}
 8008d24:	6e54      	ldr	r4, [r2, #100]	; 0x64
 8008d26:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008d2a:	f444 5400 	orr.w	r4, r4, #8192	; 0x2000
 8008d2e:	6654      	str	r4, [r2, #100]	; 0x64
 8008d30:	8193      	strh	r3, [r2, #12]
 8008d32:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008d36:	f7ff bf9b 	b.w	8008c70 <__fputwc>
 8008d3a:	f7ff bf99 	b.w	8008c70 <__fputwc>
 8008d3e:	bf00      	nop

08008d40 <fputwc>:
 8008d40:	4b0e      	ldr	r3, [pc, #56]	; (8008d7c <fputwc+0x3c>)
 8008d42:	b570      	push	{r4, r5, r6, lr}
 8008d44:	681d      	ldr	r5, [r3, #0]
 8008d46:	4606      	mov	r6, r0
 8008d48:	460c      	mov	r4, r1
 8008d4a:	b10d      	cbz	r5, 8008d50 <fputwc+0x10>
 8008d4c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8008d4e:	b18b      	cbz	r3, 8008d74 <fputwc+0x34>
 8008d50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008d54:	049a      	lsls	r2, r3, #18
 8008d56:	d406      	bmi.n	8008d66 <fputwc+0x26>
 8008d58:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008d5a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008d5e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8008d62:	81a3      	strh	r3, [r4, #12]
 8008d64:	6662      	str	r2, [r4, #100]	; 0x64
 8008d66:	4622      	mov	r2, r4
 8008d68:	4631      	mov	r1, r6
 8008d6a:	4628      	mov	r0, r5
 8008d6c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8008d70:	f7ff bf7e 	b.w	8008c70 <__fputwc>
 8008d74:	4628      	mov	r0, r5
 8008d76:	f7fd fd17 	bl	80067a8 <__sinit>
 8008d7a:	e7e9      	b.n	8008d50 <fputwc+0x10>
 8008d7c:	20000010 	.word	0x20000010

08008d80 <_fstat_r>:
 8008d80:	b538      	push	{r3, r4, r5, lr}
 8008d82:	460b      	mov	r3, r1
 8008d84:	4c07      	ldr	r4, [pc, #28]	; (8008da4 <_fstat_r+0x24>)
 8008d86:	4605      	mov	r5, r0
 8008d88:	4611      	mov	r1, r2
 8008d8a:	4618      	mov	r0, r3
 8008d8c:	2300      	movs	r3, #0
 8008d8e:	6023      	str	r3, [r4, #0]
 8008d90:	f7f7 fcb6 	bl	8000700 <_fstat>
 8008d94:	1c43      	adds	r3, r0, #1
 8008d96:	d000      	beq.n	8008d9a <_fstat_r+0x1a>
 8008d98:	bd38      	pop	{r3, r4, r5, pc}
 8008d9a:	6823      	ldr	r3, [r4, #0]
 8008d9c:	2b00      	cmp	r3, #0
 8008d9e:	d0fb      	beq.n	8008d98 <_fstat_r+0x18>
 8008da0:	602b      	str	r3, [r5, #0]
 8008da2:	bd38      	pop	{r3, r4, r5, pc}
 8008da4:	20000c28 	.word	0x20000c28

08008da8 <__sfvwrite_r>:
 8008da8:	6893      	ldr	r3, [r2, #8]
 8008daa:	2b00      	cmp	r3, #0
 8008dac:	f000 8102 	beq.w	8008fb4 <__sfvwrite_r+0x20c>
 8008db0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008db4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008db8:	b29b      	uxth	r3, r3
 8008dba:	460c      	mov	r4, r1
 8008dbc:	0719      	lsls	r1, r3, #28
 8008dbe:	b083      	sub	sp, #12
 8008dc0:	4682      	mov	sl, r0
 8008dc2:	4690      	mov	r8, r2
 8008dc4:	d535      	bpl.n	8008e32 <__sfvwrite_r+0x8a>
 8008dc6:	6922      	ldr	r2, [r4, #16]
 8008dc8:	b39a      	cbz	r2, 8008e32 <__sfvwrite_r+0x8a>
 8008dca:	f013 0202 	ands.w	r2, r3, #2
 8008dce:	f8d8 6000 	ldr.w	r6, [r8]
 8008dd2:	d03d      	beq.n	8008e50 <__sfvwrite_r+0xa8>
 8008dd4:	2700      	movs	r7, #0
 8008dd6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008dda:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008dde:	f8df 92cc 	ldr.w	r9, [pc, #716]	; 80090ac <__sfvwrite_r+0x304>
 8008de2:	463d      	mov	r5, r7
 8008de4:	454d      	cmp	r5, r9
 8008de6:	462b      	mov	r3, r5
 8008de8:	463a      	mov	r2, r7
 8008dea:	bf28      	it	cs
 8008dec:	464b      	movcs	r3, r9
 8008dee:	4661      	mov	r1, ip
 8008df0:	4650      	mov	r0, sl
 8008df2:	b1d5      	cbz	r5, 8008e2a <__sfvwrite_r+0x82>
 8008df4:	47d8      	blx	fp
 8008df6:	2800      	cmp	r0, #0
 8008df8:	f340 80d2 	ble.w	8008fa0 <__sfvwrite_r+0x1f8>
 8008dfc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008e00:	1a1b      	subs	r3, r3, r0
 8008e02:	4407      	add	r7, r0
 8008e04:	1a2d      	subs	r5, r5, r0
 8008e06:	f8c8 3008 	str.w	r3, [r8, #8]
 8008e0a:	2b00      	cmp	r3, #0
 8008e0c:	f000 80b7 	beq.w	8008f7e <__sfvwrite_r+0x1d6>
 8008e10:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008e14:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008e18:	454d      	cmp	r5, r9
 8008e1a:	462b      	mov	r3, r5
 8008e1c:	463a      	mov	r2, r7
 8008e1e:	bf28      	it	cs
 8008e20:	464b      	movcs	r3, r9
 8008e22:	4661      	mov	r1, ip
 8008e24:	4650      	mov	r0, sl
 8008e26:	2d00      	cmp	r5, #0
 8008e28:	d1e4      	bne.n	8008df4 <__sfvwrite_r+0x4c>
 8008e2a:	e9d6 7500 	ldrd	r7, r5, [r6]
 8008e2e:	3608      	adds	r6, #8
 8008e30:	e7d8      	b.n	8008de4 <__sfvwrite_r+0x3c>
 8008e32:	4621      	mov	r1, r4
 8008e34:	4650      	mov	r0, sl
 8008e36:	f7fc fa83 	bl	8005340 <__swsetup_r>
 8008e3a:	2800      	cmp	r0, #0
 8008e3c:	f040 8130 	bne.w	80090a0 <__sfvwrite_r+0x2f8>
 8008e40:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008e44:	f8d8 6000 	ldr.w	r6, [r8]
 8008e48:	b29b      	uxth	r3, r3
 8008e4a:	f013 0202 	ands.w	r2, r3, #2
 8008e4e:	d1c1      	bne.n	8008dd4 <__sfvwrite_r+0x2c>
 8008e50:	f013 0901 	ands.w	r9, r3, #1
 8008e54:	f040 80b0 	bne.w	8008fb8 <__sfvwrite_r+0x210>
 8008e58:	68a7      	ldr	r7, [r4, #8]
 8008e5a:	6820      	ldr	r0, [r4, #0]
 8008e5c:	464d      	mov	r5, r9
 8008e5e:	2d00      	cmp	r5, #0
 8008e60:	d054      	beq.n	8008f0c <__sfvwrite_r+0x164>
 8008e62:	059a      	lsls	r2, r3, #22
 8008e64:	f140 80bc 	bpl.w	8008fe0 <__sfvwrite_r+0x238>
 8008e68:	42af      	cmp	r7, r5
 8008e6a:	46bb      	mov	fp, r7
 8008e6c:	f200 80e7 	bhi.w	800903e <__sfvwrite_r+0x296>
 8008e70:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8008e74:	d02f      	beq.n	8008ed6 <__sfvwrite_r+0x12e>
 8008e76:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8008e7a:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8008e7e:	eba0 0b01 	sub.w	fp, r0, r1
 8008e82:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8008e86:	1c68      	adds	r0, r5, #1
 8008e88:	107f      	asrs	r7, r7, #1
 8008e8a:	4458      	add	r0, fp
 8008e8c:	42b8      	cmp	r0, r7
 8008e8e:	463a      	mov	r2, r7
 8008e90:	bf84      	itt	hi
 8008e92:	4607      	movhi	r7, r0
 8008e94:	463a      	movhi	r2, r7
 8008e96:	055b      	lsls	r3, r3, #21
 8008e98:	f140 80e9 	bpl.w	800906e <__sfvwrite_r+0x2c6>
 8008e9c:	4611      	mov	r1, r2
 8008e9e:	4650      	mov	r0, sl
 8008ea0:	f7fd febe 	bl	8006c20 <_malloc_r>
 8008ea4:	2800      	cmp	r0, #0
 8008ea6:	f000 80f5 	beq.w	8009094 <__sfvwrite_r+0x2ec>
 8008eaa:	465a      	mov	r2, fp
 8008eac:	6921      	ldr	r1, [r4, #16]
 8008eae:	9001      	str	r0, [sp, #4]
 8008eb0:	f7fa fd06 	bl	80038c0 <memcpy>
 8008eb4:	89a2      	ldrh	r2, [r4, #12]
 8008eb6:	9b01      	ldr	r3, [sp, #4]
 8008eb8:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008ebc:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8008ec0:	81a2      	strh	r2, [r4, #12]
 8008ec2:	eba7 020b 	sub.w	r2, r7, fp
 8008ec6:	eb03 000b 	add.w	r0, r3, fp
 8008eca:	6167      	str	r7, [r4, #20]
 8008ecc:	6123      	str	r3, [r4, #16]
 8008ece:	6020      	str	r0, [r4, #0]
 8008ed0:	60a2      	str	r2, [r4, #8]
 8008ed2:	462f      	mov	r7, r5
 8008ed4:	46ab      	mov	fp, r5
 8008ed6:	465a      	mov	r2, fp
 8008ed8:	4649      	mov	r1, r9
 8008eda:	f000 f95f 	bl	800919c <memmove>
 8008ede:	68a2      	ldr	r2, [r4, #8]
 8008ee0:	6823      	ldr	r3, [r4, #0]
 8008ee2:	1bd2      	subs	r2, r2, r7
 8008ee4:	445b      	add	r3, fp
 8008ee6:	462f      	mov	r7, r5
 8008ee8:	60a2      	str	r2, [r4, #8]
 8008eea:	6023      	str	r3, [r4, #0]
 8008eec:	2500      	movs	r5, #0
 8008eee:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008ef2:	1bdb      	subs	r3, r3, r7
 8008ef4:	44b9      	add	r9, r7
 8008ef6:	f8c8 3008 	str.w	r3, [r8, #8]
 8008efa:	2b00      	cmp	r3, #0
 8008efc:	d03f      	beq.n	8008f7e <__sfvwrite_r+0x1d6>
 8008efe:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008f02:	68a7      	ldr	r7, [r4, #8]
 8008f04:	6820      	ldr	r0, [r4, #0]
 8008f06:	b29b      	uxth	r3, r3
 8008f08:	2d00      	cmp	r5, #0
 8008f0a:	d1aa      	bne.n	8008e62 <__sfvwrite_r+0xba>
 8008f0c:	e9d6 9500 	ldrd	r9, r5, [r6]
 8008f10:	3608      	adds	r6, #8
 8008f12:	e7a4      	b.n	8008e5e <__sfvwrite_r+0xb6>
 8008f14:	f10b 0308 	add.w	r3, fp, #8
 8008f18:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8008f1c:	469b      	mov	fp, r3
 8008f1e:	3308      	adds	r3, #8
 8008f20:	2f00      	cmp	r7, #0
 8008f22:	d0f9      	beq.n	8008f18 <__sfvwrite_r+0x170>
 8008f24:	463a      	mov	r2, r7
 8008f26:	210a      	movs	r1, #10
 8008f28:	4630      	mov	r0, r6
 8008f2a:	f7fe f931 	bl	8007190 <memchr>
 8008f2e:	2800      	cmp	r0, #0
 8008f30:	d053      	beq.n	8008fda <__sfvwrite_r+0x232>
 8008f32:	3001      	adds	r0, #1
 8008f34:	eba0 0906 	sub.w	r9, r0, r6
 8008f38:	464b      	mov	r3, r9
 8008f3a:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8008f3e:	6820      	ldr	r0, [r4, #0]
 8008f40:	42bb      	cmp	r3, r7
 8008f42:	bf28      	it	cs
 8008f44:	463b      	movcs	r3, r7
 8008f46:	4288      	cmp	r0, r1
 8008f48:	d903      	bls.n	8008f52 <__sfvwrite_r+0x1aa>
 8008f4a:	68a5      	ldr	r5, [r4, #8]
 8008f4c:	4415      	add	r5, r2
 8008f4e:	42ab      	cmp	r3, r5
 8008f50:	dc19      	bgt.n	8008f86 <__sfvwrite_r+0x1de>
 8008f52:	429a      	cmp	r2, r3
 8008f54:	dc7d      	bgt.n	8009052 <__sfvwrite_r+0x2aa>
 8008f56:	4613      	mov	r3, r2
 8008f58:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008f5a:	69e1      	ldr	r1, [r4, #28]
 8008f5c:	4632      	mov	r2, r6
 8008f5e:	4650      	mov	r0, sl
 8008f60:	47a8      	blx	r5
 8008f62:	1e05      	subs	r5, r0, #0
 8008f64:	dd1c      	ble.n	8008fa0 <__sfvwrite_r+0x1f8>
 8008f66:	ebb9 0905 	subs.w	r9, r9, r5
 8008f6a:	d06b      	beq.n	8009044 <__sfvwrite_r+0x29c>
 8008f6c:	2001      	movs	r0, #1
 8008f6e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8008f72:	1b5b      	subs	r3, r3, r5
 8008f74:	442e      	add	r6, r5
 8008f76:	1b7f      	subs	r7, r7, r5
 8008f78:	f8c8 3008 	str.w	r3, [r8, #8]
 8008f7c:	bb13      	cbnz	r3, 8008fc4 <__sfvwrite_r+0x21c>
 8008f7e:	2000      	movs	r0, #0
 8008f80:	b003      	add	sp, #12
 8008f82:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008f86:	4631      	mov	r1, r6
 8008f88:	462a      	mov	r2, r5
 8008f8a:	f000 f907 	bl	800919c <memmove>
 8008f8e:	6823      	ldr	r3, [r4, #0]
 8008f90:	442b      	add	r3, r5
 8008f92:	6023      	str	r3, [r4, #0]
 8008f94:	4621      	mov	r1, r4
 8008f96:	4650      	mov	r0, sl
 8008f98:	f7fd fb00 	bl	800659c <_fflush_r>
 8008f9c:	2800      	cmp	r0, #0
 8008f9e:	d0e2      	beq.n	8008f66 <__sfvwrite_r+0x1be>
 8008fa0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008fa4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008fa8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008fac:	81a3      	strh	r3, [r4, #12]
 8008fae:	b003      	add	sp, #12
 8008fb0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008fb4:	2000      	movs	r0, #0
 8008fb6:	4770      	bx	lr
 8008fb8:	4633      	mov	r3, r6
 8008fba:	4691      	mov	r9, r2
 8008fbc:	4610      	mov	r0, r2
 8008fbe:	4617      	mov	r7, r2
 8008fc0:	464e      	mov	r6, r9
 8008fc2:	469b      	mov	fp, r3
 8008fc4:	2f00      	cmp	r7, #0
 8008fc6:	d0a5      	beq.n	8008f14 <__sfvwrite_r+0x16c>
 8008fc8:	2800      	cmp	r0, #0
 8008fca:	d1b5      	bne.n	8008f38 <__sfvwrite_r+0x190>
 8008fcc:	463a      	mov	r2, r7
 8008fce:	210a      	movs	r1, #10
 8008fd0:	4630      	mov	r0, r6
 8008fd2:	f7fe f8dd 	bl	8007190 <memchr>
 8008fd6:	2800      	cmp	r0, #0
 8008fd8:	d1ab      	bne.n	8008f32 <__sfvwrite_r+0x18a>
 8008fda:	1c7b      	adds	r3, r7, #1
 8008fdc:	4699      	mov	r9, r3
 8008fde:	e7ac      	b.n	8008f3a <__sfvwrite_r+0x192>
 8008fe0:	6923      	ldr	r3, [r4, #16]
 8008fe2:	4283      	cmp	r3, r0
 8008fe4:	d315      	bcc.n	8009012 <__sfvwrite_r+0x26a>
 8008fe6:	6961      	ldr	r1, [r4, #20]
 8008fe8:	42a9      	cmp	r1, r5
 8008fea:	d812      	bhi.n	8009012 <__sfvwrite_r+0x26a>
 8008fec:	4b2e      	ldr	r3, [pc, #184]	; (80090a8 <__sfvwrite_r+0x300>)
 8008fee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8008ff0:	429d      	cmp	r5, r3
 8008ff2:	bf94      	ite	ls
 8008ff4:	462b      	movls	r3, r5
 8008ff6:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8008ffa:	464a      	mov	r2, r9
 8008ffc:	fb93 f3f1 	sdiv	r3, r3, r1
 8009000:	4650      	mov	r0, sl
 8009002:	fb01 f303 	mul.w	r3, r1, r3
 8009006:	69e1      	ldr	r1, [r4, #28]
 8009008:	47b8      	blx	r7
 800900a:	1e07      	subs	r7, r0, #0
 800900c:	ddc8      	ble.n	8008fa0 <__sfvwrite_r+0x1f8>
 800900e:	1bed      	subs	r5, r5, r7
 8009010:	e76d      	b.n	8008eee <__sfvwrite_r+0x146>
 8009012:	42af      	cmp	r7, r5
 8009014:	bf28      	it	cs
 8009016:	462f      	movcs	r7, r5
 8009018:	463a      	mov	r2, r7
 800901a:	4649      	mov	r1, r9
 800901c:	f000 f8be 	bl	800919c <memmove>
 8009020:	68a3      	ldr	r3, [r4, #8]
 8009022:	6822      	ldr	r2, [r4, #0]
 8009024:	1bdb      	subs	r3, r3, r7
 8009026:	443a      	add	r2, r7
 8009028:	60a3      	str	r3, [r4, #8]
 800902a:	6022      	str	r2, [r4, #0]
 800902c:	2b00      	cmp	r3, #0
 800902e:	d1ee      	bne.n	800900e <__sfvwrite_r+0x266>
 8009030:	4621      	mov	r1, r4
 8009032:	4650      	mov	r0, sl
 8009034:	f7fd fab2 	bl	800659c <_fflush_r>
 8009038:	2800      	cmp	r0, #0
 800903a:	d0e8      	beq.n	800900e <__sfvwrite_r+0x266>
 800903c:	e7b0      	b.n	8008fa0 <__sfvwrite_r+0x1f8>
 800903e:	462f      	mov	r7, r5
 8009040:	46ab      	mov	fp, r5
 8009042:	e748      	b.n	8008ed6 <__sfvwrite_r+0x12e>
 8009044:	4621      	mov	r1, r4
 8009046:	4650      	mov	r0, sl
 8009048:	f7fd faa8 	bl	800659c <_fflush_r>
 800904c:	2800      	cmp	r0, #0
 800904e:	d08e      	beq.n	8008f6e <__sfvwrite_r+0x1c6>
 8009050:	e7a6      	b.n	8008fa0 <__sfvwrite_r+0x1f8>
 8009052:	461a      	mov	r2, r3
 8009054:	4631      	mov	r1, r6
 8009056:	9301      	str	r3, [sp, #4]
 8009058:	f000 f8a0 	bl	800919c <memmove>
 800905c:	9b01      	ldr	r3, [sp, #4]
 800905e:	68a1      	ldr	r1, [r4, #8]
 8009060:	6822      	ldr	r2, [r4, #0]
 8009062:	1ac9      	subs	r1, r1, r3
 8009064:	441a      	add	r2, r3
 8009066:	60a1      	str	r1, [r4, #8]
 8009068:	6022      	str	r2, [r4, #0]
 800906a:	461d      	mov	r5, r3
 800906c:	e77b      	b.n	8008f66 <__sfvwrite_r+0x1be>
 800906e:	4650      	mov	r0, sl
 8009070:	f000 f912 	bl	8009298 <_realloc_r>
 8009074:	4603      	mov	r3, r0
 8009076:	2800      	cmp	r0, #0
 8009078:	f47f af23 	bne.w	8008ec2 <__sfvwrite_r+0x11a>
 800907c:	6921      	ldr	r1, [r4, #16]
 800907e:	4650      	mov	r0, sl
 8009080:	f7fd fc02 	bl	8006888 <_free_r>
 8009084:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009088:	220c      	movs	r2, #12
 800908a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800908e:	f8ca 2000 	str.w	r2, [sl]
 8009092:	e787      	b.n	8008fa4 <__sfvwrite_r+0x1fc>
 8009094:	230c      	movs	r3, #12
 8009096:	f8ca 3000 	str.w	r3, [sl]
 800909a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800909e:	e781      	b.n	8008fa4 <__sfvwrite_r+0x1fc>
 80090a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80090a4:	e76c      	b.n	8008f80 <__sfvwrite_r+0x1d8>
 80090a6:	bf00      	nop
 80090a8:	7ffffffe 	.word	0x7ffffffe
 80090ac:	7ffffc00 	.word	0x7ffffc00

080090b0 <_isatty_r>:
 80090b0:	b538      	push	{r3, r4, r5, lr}
 80090b2:	4c07      	ldr	r4, [pc, #28]	; (80090d0 <_isatty_r+0x20>)
 80090b4:	2300      	movs	r3, #0
 80090b6:	4605      	mov	r5, r0
 80090b8:	4608      	mov	r0, r1
 80090ba:	6023      	str	r3, [r4, #0]
 80090bc:	f7f7 fb30 	bl	8000720 <_isatty>
 80090c0:	1c43      	adds	r3, r0, #1
 80090c2:	d000      	beq.n	80090c6 <_isatty_r+0x16>
 80090c4:	bd38      	pop	{r3, r4, r5, pc}
 80090c6:	6823      	ldr	r3, [r4, #0]
 80090c8:	2b00      	cmp	r3, #0
 80090ca:	d0fb      	beq.n	80090c4 <_isatty_r+0x14>
 80090cc:	602b      	str	r3, [r5, #0]
 80090ce:	bd38      	pop	{r3, r4, r5, pc}
 80090d0:	20000c28 	.word	0x20000c28

080090d4 <_setlocale_r>:
 80090d4:	b142      	cbz	r2, 80090e8 <_setlocale_r+0x14>
 80090d6:	b510      	push	{r4, lr}
 80090d8:	490b      	ldr	r1, [pc, #44]	; (8009108 <_setlocale_r+0x34>)
 80090da:	4610      	mov	r0, r2
 80090dc:	4614      	mov	r4, r2
 80090de:	f7fa fd03 	bl	8003ae8 <strcmp>
 80090e2:	b918      	cbnz	r0, 80090ec <_setlocale_r+0x18>
 80090e4:	4809      	ldr	r0, [pc, #36]	; (800910c <_setlocale_r+0x38>)
 80090e6:	bd10      	pop	{r4, pc}
 80090e8:	4808      	ldr	r0, [pc, #32]	; (800910c <_setlocale_r+0x38>)
 80090ea:	4770      	bx	lr
 80090ec:	4907      	ldr	r1, [pc, #28]	; (800910c <_setlocale_r+0x38>)
 80090ee:	4620      	mov	r0, r4
 80090f0:	f7fa fcfa 	bl	8003ae8 <strcmp>
 80090f4:	2800      	cmp	r0, #0
 80090f6:	d0f5      	beq.n	80090e4 <_setlocale_r+0x10>
 80090f8:	4620      	mov	r0, r4
 80090fa:	4905      	ldr	r1, [pc, #20]	; (8009110 <_setlocale_r+0x3c>)
 80090fc:	f7fa fcf4 	bl	8003ae8 <strcmp>
 8009100:	2800      	cmp	r0, #0
 8009102:	d0ef      	beq.n	80090e4 <_setlocale_r+0x10>
 8009104:	2000      	movs	r0, #0
 8009106:	bd10      	pop	{r4, pc}
 8009108:	0800b048 	.word	0x0800b048
 800910c:	0800b044 	.word	0x0800b044
 8009110:	0800b010 	.word	0x0800b010

08009114 <__locale_mb_cur_max>:
 8009114:	4b01      	ldr	r3, [pc, #4]	; (800911c <__locale_mb_cur_max+0x8>)
 8009116:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800911a:	4770      	bx	lr
 800911c:	20000850 	.word	0x20000850

08009120 <setlocale>:
 8009120:	4b02      	ldr	r3, [pc, #8]	; (800912c <setlocale+0xc>)
 8009122:	460a      	mov	r2, r1
 8009124:	4601      	mov	r1, r0
 8009126:	6818      	ldr	r0, [r3, #0]
 8009128:	f7ff bfd4 	b.w	80090d4 <_setlocale_r>
 800912c:	20000010 	.word	0x20000010

08009130 <_lseek_r>:
 8009130:	b570      	push	{r4, r5, r6, lr}
 8009132:	460d      	mov	r5, r1
 8009134:	4c08      	ldr	r4, [pc, #32]	; (8009158 <_lseek_r+0x28>)
 8009136:	4611      	mov	r1, r2
 8009138:	4606      	mov	r6, r0
 800913a:	461a      	mov	r2, r3
 800913c:	4628      	mov	r0, r5
 800913e:	2300      	movs	r3, #0
 8009140:	6023      	str	r3, [r4, #0]
 8009142:	f7f7 faf8 	bl	8000736 <_lseek>
 8009146:	1c43      	adds	r3, r0, #1
 8009148:	d000      	beq.n	800914c <_lseek_r+0x1c>
 800914a:	bd70      	pop	{r4, r5, r6, pc}
 800914c:	6823      	ldr	r3, [r4, #0]
 800914e:	2b00      	cmp	r3, #0
 8009150:	d0fb      	beq.n	800914a <_lseek_r+0x1a>
 8009152:	6033      	str	r3, [r6, #0]
 8009154:	bd70      	pop	{r4, r5, r6, pc}
 8009156:	bf00      	nop
 8009158:	20000c28 	.word	0x20000c28

0800915c <_mbtowc_r>:
 800915c:	b410      	push	{r4}
 800915e:	4c03      	ldr	r4, [pc, #12]	; (800916c <_mbtowc_r+0x10>)
 8009160:	f8d4 40e4 	ldr.w	r4, [r4, #228]	; 0xe4
 8009164:	46a4      	mov	ip, r4
 8009166:	f85d 4b04 	ldr.w	r4, [sp], #4
 800916a:	4760      	bx	ip
 800916c:	20000850 	.word	0x20000850

08009170 <__ascii_mbtowc>:
 8009170:	b082      	sub	sp, #8
 8009172:	b149      	cbz	r1, 8009188 <__ascii_mbtowc+0x18>
 8009174:	b15a      	cbz	r2, 800918e <__ascii_mbtowc+0x1e>
 8009176:	b16b      	cbz	r3, 8009194 <__ascii_mbtowc+0x24>
 8009178:	7813      	ldrb	r3, [r2, #0]
 800917a:	600b      	str	r3, [r1, #0]
 800917c:	7812      	ldrb	r2, [r2, #0]
 800917e:	1c10      	adds	r0, r2, #0
 8009180:	bf18      	it	ne
 8009182:	2001      	movne	r0, #1
 8009184:	b002      	add	sp, #8
 8009186:	4770      	bx	lr
 8009188:	a901      	add	r1, sp, #4
 800918a:	2a00      	cmp	r2, #0
 800918c:	d1f3      	bne.n	8009176 <__ascii_mbtowc+0x6>
 800918e:	4610      	mov	r0, r2
 8009190:	b002      	add	sp, #8
 8009192:	4770      	bx	lr
 8009194:	f06f 0001 	mvn.w	r0, #1
 8009198:	e7f4      	b.n	8009184 <__ascii_mbtowc+0x14>
 800919a:	bf00      	nop

0800919c <memmove>:
 800919c:	4288      	cmp	r0, r1
 800919e:	b4f0      	push	{r4, r5, r6, r7}
 80091a0:	d90d      	bls.n	80091be <memmove+0x22>
 80091a2:	188b      	adds	r3, r1, r2
 80091a4:	4283      	cmp	r3, r0
 80091a6:	d90a      	bls.n	80091be <memmove+0x22>
 80091a8:	1884      	adds	r4, r0, r2
 80091aa:	b132      	cbz	r2, 80091ba <memmove+0x1e>
 80091ac:	4622      	mov	r2, r4
 80091ae:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80091b2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80091b6:	4299      	cmp	r1, r3
 80091b8:	d1f9      	bne.n	80091ae <memmove+0x12>
 80091ba:	bcf0      	pop	{r4, r5, r6, r7}
 80091bc:	4770      	bx	lr
 80091be:	2a0f      	cmp	r2, #15
 80091c0:	d80e      	bhi.n	80091e0 <memmove+0x44>
 80091c2:	4603      	mov	r3, r0
 80091c4:	1e54      	subs	r4, r2, #1
 80091c6:	2a00      	cmp	r2, #0
 80091c8:	d0f7      	beq.n	80091ba <memmove+0x1e>
 80091ca:	3401      	adds	r4, #1
 80091cc:	440c      	add	r4, r1
 80091ce:	3b01      	subs	r3, #1
 80091d0:	f811 2b01 	ldrb.w	r2, [r1], #1
 80091d4:	f803 2f01 	strb.w	r2, [r3, #1]!
 80091d8:	42a1      	cmp	r1, r4
 80091da:	d1f9      	bne.n	80091d0 <memmove+0x34>
 80091dc:	bcf0      	pop	{r4, r5, r6, r7}
 80091de:	4770      	bx	lr
 80091e0:	ea40 0301 	orr.w	r3, r0, r1
 80091e4:	079b      	lsls	r3, r3, #30
 80091e6:	d13b      	bne.n	8009260 <memmove+0xc4>
 80091e8:	f1a2 0710 	sub.w	r7, r2, #16
 80091ec:	093f      	lsrs	r7, r7, #4
 80091ee:	f101 0620 	add.w	r6, r1, #32
 80091f2:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80091f6:	f101 0310 	add.w	r3, r1, #16
 80091fa:	f100 0410 	add.w	r4, r0, #16
 80091fe:	f853 5c10 	ldr.w	r5, [r3, #-16]
 8009202:	f844 5c10 	str.w	r5, [r4, #-16]
 8009206:	f853 5c0c 	ldr.w	r5, [r3, #-12]
 800920a:	f844 5c0c 	str.w	r5, [r4, #-12]
 800920e:	f853 5c08 	ldr.w	r5, [r3, #-8]
 8009212:	f844 5c08 	str.w	r5, [r4, #-8]
 8009216:	f853 5c04 	ldr.w	r5, [r3, #-4]
 800921a:	f844 5c04 	str.w	r5, [r4, #-4]
 800921e:	3310      	adds	r3, #16
 8009220:	42b3      	cmp	r3, r6
 8009222:	f104 0410 	add.w	r4, r4, #16
 8009226:	d1ea      	bne.n	80091fe <memmove+0x62>
 8009228:	1c7b      	adds	r3, r7, #1
 800922a:	011b      	lsls	r3, r3, #4
 800922c:	f012 0f0c 	tst.w	r2, #12
 8009230:	4419      	add	r1, r3
 8009232:	f002 050f 	and.w	r5, r2, #15
 8009236:	4403      	add	r3, r0
 8009238:	d015      	beq.n	8009266 <memmove+0xca>
 800923a:	3d04      	subs	r5, #4
 800923c:	08ad      	lsrs	r5, r5, #2
 800923e:	eb03 0c85 	add.w	ip, r3, r5, lsl #2
 8009242:	1f1c      	subs	r4, r3, #4
 8009244:	460e      	mov	r6, r1
 8009246:	f856 7b04 	ldr.w	r7, [r6], #4
 800924a:	f844 7f04 	str.w	r7, [r4, #4]!
 800924e:	4564      	cmp	r4, ip
 8009250:	d1f9      	bne.n	8009246 <memmove+0xaa>
 8009252:	3501      	adds	r5, #1
 8009254:	00ad      	lsls	r5, r5, #2
 8009256:	442b      	add	r3, r5
 8009258:	4429      	add	r1, r5
 800925a:	f002 0203 	and.w	r2, r2, #3
 800925e:	e7b1      	b.n	80091c4 <memmove+0x28>
 8009260:	1e54      	subs	r4, r2, #1
 8009262:	4603      	mov	r3, r0
 8009264:	e7b1      	b.n	80091ca <memmove+0x2e>
 8009266:	462a      	mov	r2, r5
 8009268:	e7ac      	b.n	80091c4 <memmove+0x28>
 800926a:	bf00      	nop

0800926c <_read_r>:
 800926c:	b570      	push	{r4, r5, r6, lr}
 800926e:	460d      	mov	r5, r1
 8009270:	4c08      	ldr	r4, [pc, #32]	; (8009294 <_read_r+0x28>)
 8009272:	4611      	mov	r1, r2
 8009274:	4606      	mov	r6, r0
 8009276:	461a      	mov	r2, r3
 8009278:	4628      	mov	r0, r5
 800927a:	2300      	movs	r3, #0
 800927c:	6023      	str	r3, [r4, #0]
 800927e:	f7f7 f9ce 	bl	800061e <_read>
 8009282:	1c43      	adds	r3, r0, #1
 8009284:	d000      	beq.n	8009288 <_read_r+0x1c>
 8009286:	bd70      	pop	{r4, r5, r6, pc}
 8009288:	6823      	ldr	r3, [r4, #0]
 800928a:	2b00      	cmp	r3, #0
 800928c:	d0fb      	beq.n	8009286 <_read_r+0x1a>
 800928e:	6033      	str	r3, [r6, #0]
 8009290:	bd70      	pop	{r4, r5, r6, pc}
 8009292:	bf00      	nop
 8009294:	20000c28 	.word	0x20000c28

08009298 <_realloc_r>:
 8009298:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800929c:	4617      	mov	r7, r2
 800929e:	2900      	cmp	r1, #0
 80092a0:	f000 80bb 	beq.w	800941a <_realloc_r+0x182>
 80092a4:	f107 040b 	add.w	r4, r7, #11
 80092a8:	4681      	mov	r9, r0
 80092aa:	460d      	mov	r5, r1
 80092ac:	f7fd ffc0 	bl	8007230 <__malloc_lock>
 80092b0:	2c16      	cmp	r4, #22
 80092b2:	d85e      	bhi.n	8009372 <_realloc_r+0xda>
 80092b4:	2410      	movs	r4, #16
 80092b6:	4622      	mov	r2, r4
 80092b8:	42a7      	cmp	r7, r4
 80092ba:	d85f      	bhi.n	800937c <_realloc_r+0xe4>
 80092bc:	f855 ec04 	ldr.w	lr, [r5, #-4]
 80092c0:	f02e 0603 	bic.w	r6, lr, #3
 80092c4:	f1a5 0808 	sub.w	r8, r5, #8
 80092c8:	4296      	cmp	r6, r2
 80092ca:	eb08 0a06 	add.w	sl, r8, r6
 80092ce:	f280 8081 	bge.w	80093d4 <_realloc_r+0x13c>
 80092d2:	4bcb      	ldr	r3, [pc, #812]	; (8009600 <_realloc_r+0x368>)
 80092d4:	f8da 0004 	ldr.w	r0, [sl, #4]
 80092d8:	6899      	ldr	r1, [r3, #8]
 80092da:	4551      	cmp	r1, sl
 80092dc:	f000 80b5 	beq.w	800944a <_realloc_r+0x1b2>
 80092e0:	f020 0301 	bic.w	r3, r0, #1
 80092e4:	4453      	add	r3, sl
 80092e6:	685b      	ldr	r3, [r3, #4]
 80092e8:	07db      	lsls	r3, r3, #31
 80092ea:	f100 808a 	bmi.w	8009402 <_realloc_r+0x16a>
 80092ee:	f020 0003 	bic.w	r0, r0, #3
 80092f2:	1833      	adds	r3, r6, r0
 80092f4:	4293      	cmp	r3, r2
 80092f6:	f280 8112 	bge.w	800951e <_realloc_r+0x286>
 80092fa:	f01e 0f01 	tst.w	lr, #1
 80092fe:	d10f      	bne.n	8009320 <_realloc_r+0x88>
 8009300:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8009304:	eba8 0b03 	sub.w	fp, r8, r3
 8009308:	f8db 1004 	ldr.w	r1, [fp, #4]
 800930c:	f021 0103 	bic.w	r1, r1, #3
 8009310:	4408      	add	r0, r1
 8009312:	1983      	adds	r3, r0, r6
 8009314:	4293      	cmp	r3, r2
 8009316:	f280 8116 	bge.w	8009546 <_realloc_r+0x2ae>
 800931a:	1873      	adds	r3, r6, r1
 800931c:	4293      	cmp	r3, r2
 800931e:	da34      	bge.n	800938a <_realloc_r+0xf2>
 8009320:	4639      	mov	r1, r7
 8009322:	4648      	mov	r0, r9
 8009324:	f7fd fc7c 	bl	8006c20 <_malloc_r>
 8009328:	4607      	mov	r7, r0
 800932a:	b1e0      	cbz	r0, 8009366 <_realloc_r+0xce>
 800932c:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8009330:	f023 0301 	bic.w	r3, r3, #1
 8009334:	4443      	add	r3, r8
 8009336:	f1a0 0208 	sub.w	r2, r0, #8
 800933a:	4293      	cmp	r3, r2
 800933c:	f000 80f7 	beq.w	800952e <_realloc_r+0x296>
 8009340:	1f32      	subs	r2, r6, #4
 8009342:	2a24      	cmp	r2, #36	; 0x24
 8009344:	f200 80fb 	bhi.w	800953e <_realloc_r+0x2a6>
 8009348:	2a13      	cmp	r2, #19
 800934a:	6829      	ldr	r1, [r5, #0]
 800934c:	f200 80c9 	bhi.w	80094e2 <_realloc_r+0x24a>
 8009350:	4603      	mov	r3, r0
 8009352:	462a      	mov	r2, r5
 8009354:	6019      	str	r1, [r3, #0]
 8009356:	6851      	ldr	r1, [r2, #4]
 8009358:	6059      	str	r1, [r3, #4]
 800935a:	6892      	ldr	r2, [r2, #8]
 800935c:	609a      	str	r2, [r3, #8]
 800935e:	4629      	mov	r1, r5
 8009360:	4648      	mov	r0, r9
 8009362:	f7fd fa91 	bl	8006888 <_free_r>
 8009366:	4648      	mov	r0, r9
 8009368:	f7fd ff64 	bl	8007234 <__malloc_unlock>
 800936c:	4638      	mov	r0, r7
 800936e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009372:	f024 0407 	bic.w	r4, r4, #7
 8009376:	2c00      	cmp	r4, #0
 8009378:	4622      	mov	r2, r4
 800937a:	da9d      	bge.n	80092b8 <_realloc_r+0x20>
 800937c:	230c      	movs	r3, #12
 800937e:	f8c9 3000 	str.w	r3, [r9]
 8009382:	2700      	movs	r7, #0
 8009384:	4638      	mov	r0, r7
 8009386:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800938a:	465f      	mov	r7, fp
 800938c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009390:	f857 0f08 	ldr.w	r0, [r7, #8]!
 8009394:	1f32      	subs	r2, r6, #4
 8009396:	2a24      	cmp	r2, #36	; 0x24
 8009398:	60c1      	str	r1, [r0, #12]
 800939a:	eb0b 0a03 	add.w	sl, fp, r3
 800939e:	6088      	str	r0, [r1, #8]
 80093a0:	f200 80d9 	bhi.w	8009556 <_realloc_r+0x2be>
 80093a4:	2a13      	cmp	r2, #19
 80093a6:	6829      	ldr	r1, [r5, #0]
 80093a8:	f240 80d3 	bls.w	8009552 <_realloc_r+0x2ba>
 80093ac:	f8cb 1008 	str.w	r1, [fp, #8]
 80093b0:	6869      	ldr	r1, [r5, #4]
 80093b2:	f8cb 100c 	str.w	r1, [fp, #12]
 80093b6:	2a1b      	cmp	r2, #27
 80093b8:	68a9      	ldr	r1, [r5, #8]
 80093ba:	f200 80e0 	bhi.w	800957e <_realloc_r+0x2e6>
 80093be:	f10b 0210 	add.w	r2, fp, #16
 80093c2:	3508      	adds	r5, #8
 80093c4:	6011      	str	r1, [r2, #0]
 80093c6:	6869      	ldr	r1, [r5, #4]
 80093c8:	6051      	str	r1, [r2, #4]
 80093ca:	68a9      	ldr	r1, [r5, #8]
 80093cc:	6091      	str	r1, [r2, #8]
 80093ce:	461e      	mov	r6, r3
 80093d0:	46d8      	mov	r8, fp
 80093d2:	463d      	mov	r5, r7
 80093d4:	f8d8 3004 	ldr.w	r3, [r8, #4]
 80093d8:	1b32      	subs	r2, r6, r4
 80093da:	2a0f      	cmp	r2, #15
 80093dc:	f003 0301 	and.w	r3, r3, #1
 80093e0:	d820      	bhi.n	8009424 <_realloc_r+0x18c>
 80093e2:	4333      	orrs	r3, r6
 80093e4:	f8c8 3004 	str.w	r3, [r8, #4]
 80093e8:	f8da 3004 	ldr.w	r3, [sl, #4]
 80093ec:	f043 0301 	orr.w	r3, r3, #1
 80093f0:	f8ca 3004 	str.w	r3, [sl, #4]
 80093f4:	4648      	mov	r0, r9
 80093f6:	462f      	mov	r7, r5
 80093f8:	f7fd ff1c 	bl	8007234 <__malloc_unlock>
 80093fc:	4638      	mov	r0, r7
 80093fe:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009402:	f01e 0f01 	tst.w	lr, #1
 8009406:	d18b      	bne.n	8009320 <_realloc_r+0x88>
 8009408:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800940c:	eba8 0b03 	sub.w	fp, r8, r3
 8009410:	f8db 1004 	ldr.w	r1, [fp, #4]
 8009414:	f021 0103 	bic.w	r1, r1, #3
 8009418:	e77f      	b.n	800931a <_realloc_r+0x82>
 800941a:	4611      	mov	r1, r2
 800941c:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009420:	f7fd bbfe 	b.w	8006c20 <_malloc_r>
 8009424:	eb08 0104 	add.w	r1, r8, r4
 8009428:	4323      	orrs	r3, r4
 800942a:	f042 0201 	orr.w	r2, r2, #1
 800942e:	f8c8 3004 	str.w	r3, [r8, #4]
 8009432:	604a      	str	r2, [r1, #4]
 8009434:	f8da 3004 	ldr.w	r3, [sl, #4]
 8009438:	f043 0301 	orr.w	r3, r3, #1
 800943c:	3108      	adds	r1, #8
 800943e:	f8ca 3004 	str.w	r3, [sl, #4]
 8009442:	4648      	mov	r0, r9
 8009444:	f7fd fa20 	bl	8006888 <_free_r>
 8009448:	e7d4      	b.n	80093f4 <_realloc_r+0x15c>
 800944a:	f020 0003 	bic.w	r0, r0, #3
 800944e:	1831      	adds	r1, r6, r0
 8009450:	f104 0c10 	add.w	ip, r4, #16
 8009454:	4561      	cmp	r1, ip
 8009456:	da4f      	bge.n	80094f8 <_realloc_r+0x260>
 8009458:	f01e 0f01 	tst.w	lr, #1
 800945c:	f47f af60 	bne.w	8009320 <_realloc_r+0x88>
 8009460:	f855 1c08 	ldr.w	r1, [r5, #-8]
 8009464:	eba8 0b01 	sub.w	fp, r8, r1
 8009468:	f8db 1004 	ldr.w	r1, [fp, #4]
 800946c:	f021 0103 	bic.w	r1, r1, #3
 8009470:	4408      	add	r0, r1
 8009472:	eb00 0a06 	add.w	sl, r0, r6
 8009476:	45d4      	cmp	ip, sl
 8009478:	f73f af4f 	bgt.w	800931a <_realloc_r+0x82>
 800947c:	465f      	mov	r7, fp
 800947e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8009482:	f857 0f08 	ldr.w	r0, [r7, #8]!
 8009486:	1f32      	subs	r2, r6, #4
 8009488:	2a24      	cmp	r2, #36	; 0x24
 800948a:	60c1      	str	r1, [r0, #12]
 800948c:	6088      	str	r0, [r1, #8]
 800948e:	f200 8099 	bhi.w	80095c4 <_realloc_r+0x32c>
 8009492:	2a13      	cmp	r2, #19
 8009494:	6829      	ldr	r1, [r5, #0]
 8009496:	f240 8093 	bls.w	80095c0 <_realloc_r+0x328>
 800949a:	f8cb 1008 	str.w	r1, [fp, #8]
 800949e:	6869      	ldr	r1, [r5, #4]
 80094a0:	f8cb 100c 	str.w	r1, [fp, #12]
 80094a4:	2a1b      	cmp	r2, #27
 80094a6:	68a9      	ldr	r1, [r5, #8]
 80094a8:	f200 8092 	bhi.w	80095d0 <_realloc_r+0x338>
 80094ac:	f10b 0210 	add.w	r2, fp, #16
 80094b0:	3508      	adds	r5, #8
 80094b2:	6011      	str	r1, [r2, #0]
 80094b4:	6869      	ldr	r1, [r5, #4]
 80094b6:	6051      	str	r1, [r2, #4]
 80094b8:	68a9      	ldr	r1, [r5, #8]
 80094ba:	6091      	str	r1, [r2, #8]
 80094bc:	eb0b 0104 	add.w	r1, fp, r4
 80094c0:	ebaa 0204 	sub.w	r2, sl, r4
 80094c4:	f042 0201 	orr.w	r2, r2, #1
 80094c8:	6099      	str	r1, [r3, #8]
 80094ca:	604a      	str	r2, [r1, #4]
 80094cc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80094d0:	f003 0301 	and.w	r3, r3, #1
 80094d4:	431c      	orrs	r4, r3
 80094d6:	4648      	mov	r0, r9
 80094d8:	f8cb 4004 	str.w	r4, [fp, #4]
 80094dc:	f7fd feaa 	bl	8007234 <__malloc_unlock>
 80094e0:	e750      	b.n	8009384 <_realloc_r+0xec>
 80094e2:	6001      	str	r1, [r0, #0]
 80094e4:	686b      	ldr	r3, [r5, #4]
 80094e6:	6043      	str	r3, [r0, #4]
 80094e8:	2a1b      	cmp	r2, #27
 80094ea:	d83c      	bhi.n	8009566 <_realloc_r+0x2ce>
 80094ec:	f105 0208 	add.w	r2, r5, #8
 80094f0:	f100 0308 	add.w	r3, r0, #8
 80094f4:	68a9      	ldr	r1, [r5, #8]
 80094f6:	e72d      	b.n	8009354 <_realloc_r+0xbc>
 80094f8:	eb08 0004 	add.w	r0, r8, r4
 80094fc:	1b0a      	subs	r2, r1, r4
 80094fe:	f042 0201 	orr.w	r2, r2, #1
 8009502:	6098      	str	r0, [r3, #8]
 8009504:	6042      	str	r2, [r0, #4]
 8009506:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800950a:	f003 0301 	and.w	r3, r3, #1
 800950e:	431c      	orrs	r4, r3
 8009510:	4648      	mov	r0, r9
 8009512:	f845 4c04 	str.w	r4, [r5, #-4]
 8009516:	f7fd fe8d 	bl	8007234 <__malloc_unlock>
 800951a:	462f      	mov	r7, r5
 800951c:	e732      	b.n	8009384 <_realloc_r+0xec>
 800951e:	e9da 1202 	ldrd	r1, r2, [sl, #8]
 8009522:	461e      	mov	r6, r3
 8009524:	60ca      	str	r2, [r1, #12]
 8009526:	eb08 0a03 	add.w	sl, r8, r3
 800952a:	6091      	str	r1, [r2, #8]
 800952c:	e752      	b.n	80093d4 <_realloc_r+0x13c>
 800952e:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8009532:	f023 0303 	bic.w	r3, r3, #3
 8009536:	441e      	add	r6, r3
 8009538:	eb08 0a06 	add.w	sl, r8, r6
 800953c:	e74a      	b.n	80093d4 <_realloc_r+0x13c>
 800953e:	4629      	mov	r1, r5
 8009540:	f7ff fe2c 	bl	800919c <memmove>
 8009544:	e70b      	b.n	800935e <_realloc_r+0xc6>
 8009546:	e9da 1202 	ldrd	r1, r2, [sl, #8]
 800954a:	465f      	mov	r7, fp
 800954c:	60ca      	str	r2, [r1, #12]
 800954e:	6091      	str	r1, [r2, #8]
 8009550:	e71c      	b.n	800938c <_realloc_r+0xf4>
 8009552:	463a      	mov	r2, r7
 8009554:	e736      	b.n	80093c4 <_realloc_r+0x12c>
 8009556:	4629      	mov	r1, r5
 8009558:	4638      	mov	r0, r7
 800955a:	461e      	mov	r6, r3
 800955c:	46d8      	mov	r8, fp
 800955e:	f7ff fe1d 	bl	800919c <memmove>
 8009562:	463d      	mov	r5, r7
 8009564:	e736      	b.n	80093d4 <_realloc_r+0x13c>
 8009566:	68ab      	ldr	r3, [r5, #8]
 8009568:	6083      	str	r3, [r0, #8]
 800956a:	68eb      	ldr	r3, [r5, #12]
 800956c:	60c3      	str	r3, [r0, #12]
 800956e:	2a24      	cmp	r2, #36	; 0x24
 8009570:	d011      	beq.n	8009596 <_realloc_r+0x2fe>
 8009572:	f105 0210 	add.w	r2, r5, #16
 8009576:	f100 0310 	add.w	r3, r0, #16
 800957a:	6929      	ldr	r1, [r5, #16]
 800957c:	e6ea      	b.n	8009354 <_realloc_r+0xbc>
 800957e:	f8cb 1010 	str.w	r1, [fp, #16]
 8009582:	68e9      	ldr	r1, [r5, #12]
 8009584:	f8cb 1014 	str.w	r1, [fp, #20]
 8009588:	2a24      	cmp	r2, #36	; 0x24
 800958a:	d00e      	beq.n	80095aa <_realloc_r+0x312>
 800958c:	6929      	ldr	r1, [r5, #16]
 800958e:	f10b 0218 	add.w	r2, fp, #24
 8009592:	3510      	adds	r5, #16
 8009594:	e716      	b.n	80093c4 <_realloc_r+0x12c>
 8009596:	692b      	ldr	r3, [r5, #16]
 8009598:	6103      	str	r3, [r0, #16]
 800959a:	696b      	ldr	r3, [r5, #20]
 800959c:	6143      	str	r3, [r0, #20]
 800959e:	69a9      	ldr	r1, [r5, #24]
 80095a0:	f105 0218 	add.w	r2, r5, #24
 80095a4:	f100 0318 	add.w	r3, r0, #24
 80095a8:	e6d4      	b.n	8009354 <_realloc_r+0xbc>
 80095aa:	692a      	ldr	r2, [r5, #16]
 80095ac:	f8cb 2018 	str.w	r2, [fp, #24]
 80095b0:	696a      	ldr	r2, [r5, #20]
 80095b2:	f8cb 201c 	str.w	r2, [fp, #28]
 80095b6:	69a9      	ldr	r1, [r5, #24]
 80095b8:	f10b 0220 	add.w	r2, fp, #32
 80095bc:	3518      	adds	r5, #24
 80095be:	e701      	b.n	80093c4 <_realloc_r+0x12c>
 80095c0:	463a      	mov	r2, r7
 80095c2:	e776      	b.n	80094b2 <_realloc_r+0x21a>
 80095c4:	4629      	mov	r1, r5
 80095c6:	4638      	mov	r0, r7
 80095c8:	f7ff fde8 	bl	800919c <memmove>
 80095cc:	4b0c      	ldr	r3, [pc, #48]	; (8009600 <_realloc_r+0x368>)
 80095ce:	e775      	b.n	80094bc <_realloc_r+0x224>
 80095d0:	f8cb 1010 	str.w	r1, [fp, #16]
 80095d4:	68e9      	ldr	r1, [r5, #12]
 80095d6:	f8cb 1014 	str.w	r1, [fp, #20]
 80095da:	2a24      	cmp	r2, #36	; 0x24
 80095dc:	d004      	beq.n	80095e8 <_realloc_r+0x350>
 80095de:	6929      	ldr	r1, [r5, #16]
 80095e0:	f10b 0218 	add.w	r2, fp, #24
 80095e4:	3510      	adds	r5, #16
 80095e6:	e764      	b.n	80094b2 <_realloc_r+0x21a>
 80095e8:	692a      	ldr	r2, [r5, #16]
 80095ea:	f8cb 2018 	str.w	r2, [fp, #24]
 80095ee:	696a      	ldr	r2, [r5, #20]
 80095f0:	f8cb 201c 	str.w	r2, [fp, #28]
 80095f4:	69a9      	ldr	r1, [r5, #24]
 80095f6:	f10b 0220 	add.w	r2, fp, #32
 80095fa:	3518      	adds	r5, #24
 80095fc:	e759      	b.n	80094b2 <_realloc_r+0x21a>
 80095fe:	bf00      	nop
 8009600:	20000440 	.word	0x20000440

08009604 <__swbuf_r>:
 8009604:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009606:	460d      	mov	r5, r1
 8009608:	4614      	mov	r4, r2
 800960a:	4606      	mov	r6, r0
 800960c:	b110      	cbz	r0, 8009614 <__swbuf_r+0x10>
 800960e:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009610:	2b00      	cmp	r3, #0
 8009612:	d043      	beq.n	800969c <__swbuf_r+0x98>
 8009614:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009618:	69a3      	ldr	r3, [r4, #24]
 800961a:	60a3      	str	r3, [r4, #8]
 800961c:	b291      	uxth	r1, r2
 800961e:	0708      	lsls	r0, r1, #28
 8009620:	d51b      	bpl.n	800965a <__swbuf_r+0x56>
 8009622:	6923      	ldr	r3, [r4, #16]
 8009624:	b1cb      	cbz	r3, 800965a <__swbuf_r+0x56>
 8009626:	b2ed      	uxtb	r5, r5
 8009628:	0489      	lsls	r1, r1, #18
 800962a:	462f      	mov	r7, r5
 800962c:	d522      	bpl.n	8009674 <__swbuf_r+0x70>
 800962e:	6822      	ldr	r2, [r4, #0]
 8009630:	6961      	ldr	r1, [r4, #20]
 8009632:	1ad3      	subs	r3, r2, r3
 8009634:	4299      	cmp	r1, r3
 8009636:	dd29      	ble.n	800968c <__swbuf_r+0x88>
 8009638:	3301      	adds	r3, #1
 800963a:	68a1      	ldr	r1, [r4, #8]
 800963c:	1c50      	adds	r0, r2, #1
 800963e:	3901      	subs	r1, #1
 8009640:	60a1      	str	r1, [r4, #8]
 8009642:	6020      	str	r0, [r4, #0]
 8009644:	7015      	strb	r5, [r2, #0]
 8009646:	6962      	ldr	r2, [r4, #20]
 8009648:	429a      	cmp	r2, r3
 800964a:	d02a      	beq.n	80096a2 <__swbuf_r+0x9e>
 800964c:	89a3      	ldrh	r3, [r4, #12]
 800964e:	07db      	lsls	r3, r3, #31
 8009650:	d501      	bpl.n	8009656 <__swbuf_r+0x52>
 8009652:	2d0a      	cmp	r5, #10
 8009654:	d025      	beq.n	80096a2 <__swbuf_r+0x9e>
 8009656:	4638      	mov	r0, r7
 8009658:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800965a:	4621      	mov	r1, r4
 800965c:	4630      	mov	r0, r6
 800965e:	f7fb fe6f 	bl	8005340 <__swsetup_r>
 8009662:	bb20      	cbnz	r0, 80096ae <__swbuf_r+0xaa>
 8009664:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009668:	6923      	ldr	r3, [r4, #16]
 800966a:	b291      	uxth	r1, r2
 800966c:	b2ed      	uxtb	r5, r5
 800966e:	0489      	lsls	r1, r1, #18
 8009670:	462f      	mov	r7, r5
 8009672:	d4dc      	bmi.n	800962e <__swbuf_r+0x2a>
 8009674:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8009676:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800967a:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800967e:	81a2      	strh	r2, [r4, #12]
 8009680:	6822      	ldr	r2, [r4, #0]
 8009682:	6661      	str	r1, [r4, #100]	; 0x64
 8009684:	6961      	ldr	r1, [r4, #20]
 8009686:	1ad3      	subs	r3, r2, r3
 8009688:	4299      	cmp	r1, r3
 800968a:	dcd5      	bgt.n	8009638 <__swbuf_r+0x34>
 800968c:	4621      	mov	r1, r4
 800968e:	4630      	mov	r0, r6
 8009690:	f7fc ff84 	bl	800659c <_fflush_r>
 8009694:	b958      	cbnz	r0, 80096ae <__swbuf_r+0xaa>
 8009696:	6822      	ldr	r2, [r4, #0]
 8009698:	2301      	movs	r3, #1
 800969a:	e7ce      	b.n	800963a <__swbuf_r+0x36>
 800969c:	f7fd f884 	bl	80067a8 <__sinit>
 80096a0:	e7b8      	b.n	8009614 <__swbuf_r+0x10>
 80096a2:	4621      	mov	r1, r4
 80096a4:	4630      	mov	r0, r6
 80096a6:	f7fc ff79 	bl	800659c <_fflush_r>
 80096aa:	2800      	cmp	r0, #0
 80096ac:	d0d3      	beq.n	8009656 <__swbuf_r+0x52>
 80096ae:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80096b2:	e7d0      	b.n	8009656 <__swbuf_r+0x52>

080096b4 <__swbuf>:
 80096b4:	4b02      	ldr	r3, [pc, #8]	; (80096c0 <__swbuf+0xc>)
 80096b6:	460a      	mov	r2, r1
 80096b8:	4601      	mov	r1, r0
 80096ba:	6818      	ldr	r0, [r3, #0]
 80096bc:	f7ff bfa2 	b.w	8009604 <__swbuf_r>
 80096c0:	20000010 	.word	0x20000010

080096c4 <_wcrtomb_r>:
 80096c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80096c6:	4c0b      	ldr	r4, [pc, #44]	; (80096f4 <_wcrtomb_r+0x30>)
 80096c8:	b085      	sub	sp, #20
 80096ca:	4606      	mov	r6, r0
 80096cc:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80096d0:	461f      	mov	r7, r3
 80096d2:	b121      	cbz	r1, 80096de <_wcrtomb_r+0x1a>
 80096d4:	47a0      	blx	r4
 80096d6:	1c43      	adds	r3, r0, #1
 80096d8:	d006      	beq.n	80096e8 <_wcrtomb_r+0x24>
 80096da:	b005      	add	sp, #20
 80096dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80096de:	460a      	mov	r2, r1
 80096e0:	a901      	add	r1, sp, #4
 80096e2:	47a0      	blx	r4
 80096e4:	1c43      	adds	r3, r0, #1
 80096e6:	d1f8      	bne.n	80096da <_wcrtomb_r+0x16>
 80096e8:	2200      	movs	r2, #0
 80096ea:	238a      	movs	r3, #138	; 0x8a
 80096ec:	603a      	str	r2, [r7, #0]
 80096ee:	6033      	str	r3, [r6, #0]
 80096f0:	b005      	add	sp, #20
 80096f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80096f4:	20000850 	.word	0x20000850

080096f8 <wcrtomb>:
 80096f8:	b570      	push	{r4, r5, r6, lr}
 80096fa:	4b0f      	ldr	r3, [pc, #60]	; (8009738 <wcrtomb+0x40>)
 80096fc:	4c0f      	ldr	r4, [pc, #60]	; (800973c <wcrtomb+0x44>)
 80096fe:	f8d3 60e0 	ldr.w	r6, [r3, #224]	; 0xe0
 8009702:	6824      	ldr	r4, [r4, #0]
 8009704:	b084      	sub	sp, #16
 8009706:	4615      	mov	r5, r2
 8009708:	b140      	cbz	r0, 800971c <wcrtomb+0x24>
 800970a:	460a      	mov	r2, r1
 800970c:	462b      	mov	r3, r5
 800970e:	4601      	mov	r1, r0
 8009710:	4620      	mov	r0, r4
 8009712:	47b0      	blx	r6
 8009714:	1c43      	adds	r3, r0, #1
 8009716:	d008      	beq.n	800972a <wcrtomb+0x32>
 8009718:	b004      	add	sp, #16
 800971a:	bd70      	pop	{r4, r5, r6, pc}
 800971c:	4602      	mov	r2, r0
 800971e:	462b      	mov	r3, r5
 8009720:	a901      	add	r1, sp, #4
 8009722:	4620      	mov	r0, r4
 8009724:	47b0      	blx	r6
 8009726:	1c43      	adds	r3, r0, #1
 8009728:	d1f6      	bne.n	8009718 <wcrtomb+0x20>
 800972a:	2200      	movs	r2, #0
 800972c:	238a      	movs	r3, #138	; 0x8a
 800972e:	602a      	str	r2, [r5, #0]
 8009730:	6023      	str	r3, [r4, #0]
 8009732:	b004      	add	sp, #16
 8009734:	bd70      	pop	{r4, r5, r6, pc}
 8009736:	bf00      	nop
 8009738:	20000850 	.word	0x20000850
 800973c:	20000010 	.word	0x20000010

08009740 <_wctomb_r>:
 8009740:	b410      	push	{r4}
 8009742:	4c03      	ldr	r4, [pc, #12]	; (8009750 <_wctomb_r+0x10>)
 8009744:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009748:	46a4      	mov	ip, r4
 800974a:	f85d 4b04 	ldr.w	r4, [sp], #4
 800974e:	4760      	bx	ip
 8009750:	20000850 	.word	0x20000850

08009754 <__ascii_wctomb>:
 8009754:	b149      	cbz	r1, 800976a <__ascii_wctomb+0x16>
 8009756:	2aff      	cmp	r2, #255	; 0xff
 8009758:	d802      	bhi.n	8009760 <__ascii_wctomb+0xc>
 800975a:	700a      	strb	r2, [r1, #0]
 800975c:	2001      	movs	r0, #1
 800975e:	4770      	bx	lr
 8009760:	238a      	movs	r3, #138	; 0x8a
 8009762:	6003      	str	r3, [r0, #0]
 8009764:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009768:	4770      	bx	lr
 800976a:	4608      	mov	r0, r1
 800976c:	4770      	bx	lr
 800976e:	bf00      	nop

08009770 <abort>:
 8009770:	b508      	push	{r3, lr}
 8009772:	2006      	movs	r0, #6
 8009774:	f000 f890 	bl	8009898 <raise>
 8009778:	2001      	movs	r0, #1
 800977a:	f001 fcf3 	bl	800b164 <_exit>
 800977e:	bf00      	nop

08009780 <_init_signal_r.part.0>:
 8009780:	b510      	push	{r4, lr}
 8009782:	2180      	movs	r1, #128	; 0x80
 8009784:	4604      	mov	r4, r0
 8009786:	f7fd fa4b 	bl	8006c20 <_malloc_r>
 800978a:	f8c4 02dc 	str.w	r0, [r4, #732]	; 0x2dc
 800978e:	b140      	cbz	r0, 80097a2 <_init_signal_r.part.0+0x22>
 8009790:	1f03      	subs	r3, r0, #4
 8009792:	2200      	movs	r2, #0
 8009794:	307c      	adds	r0, #124	; 0x7c
 8009796:	f843 2f04 	str.w	r2, [r3, #4]!
 800979a:	4283      	cmp	r3, r0
 800979c:	d1fb      	bne.n	8009796 <_init_signal_r.part.0+0x16>
 800979e:	2000      	movs	r0, #0
 80097a0:	bd10      	pop	{r4, pc}
 80097a2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80097a6:	bd10      	pop	{r4, pc}

080097a8 <_init_signal_r>:
 80097a8:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 80097ac:	b10b      	cbz	r3, 80097b2 <_init_signal_r+0xa>
 80097ae:	2000      	movs	r0, #0
 80097b0:	4770      	bx	lr
 80097b2:	e7e5      	b.n	8009780 <_init_signal_r.part.0>

080097b4 <_signal_r>:
 80097b4:	291f      	cmp	r1, #31
 80097b6:	b570      	push	{r4, r5, r6, lr}
 80097b8:	4605      	mov	r5, r0
 80097ba:	d809      	bhi.n	80097d0 <_signal_r+0x1c>
 80097bc:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 80097c0:	4616      	mov	r6, r2
 80097c2:	460c      	mov	r4, r1
 80097c4:	b14b      	cbz	r3, 80097da <_signal_r+0x26>
 80097c6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80097ca:	f843 6024 	str.w	r6, [r3, r4, lsl #2]
 80097ce:	bd70      	pop	{r4, r5, r6, pc}
 80097d0:	2216      	movs	r2, #22
 80097d2:	6002      	str	r2, [r0, #0]
 80097d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80097d8:	bd70      	pop	{r4, r5, r6, pc}
 80097da:	f7ff ffd1 	bl	8009780 <_init_signal_r.part.0>
 80097de:	b910      	cbnz	r0, 80097e6 <_signal_r+0x32>
 80097e0:	f8d5 32dc 	ldr.w	r3, [r5, #732]	; 0x2dc
 80097e4:	e7ef      	b.n	80097c6 <_signal_r+0x12>
 80097e6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80097ea:	bd70      	pop	{r4, r5, r6, pc}

080097ec <_raise_r>:
 80097ec:	291f      	cmp	r1, #31
 80097ee:	b538      	push	{r3, r4, r5, lr}
 80097f0:	d822      	bhi.n	8009838 <_raise_r+0x4c>
 80097f2:	f8d0 22dc 	ldr.w	r2, [r0, #732]	; 0x2dc
 80097f6:	4605      	mov	r5, r0
 80097f8:	460c      	mov	r4, r1
 80097fa:	b16a      	cbz	r2, 8009818 <_raise_r+0x2c>
 80097fc:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 8009800:	b153      	cbz	r3, 8009818 <_raise_r+0x2c>
 8009802:	2b01      	cmp	r3, #1
 8009804:	d016      	beq.n	8009834 <_raise_r+0x48>
 8009806:	1c59      	adds	r1, r3, #1
 8009808:	d010      	beq.n	800982c <_raise_r+0x40>
 800980a:	2500      	movs	r5, #0
 800980c:	4620      	mov	r0, r4
 800980e:	f842 5024 	str.w	r5, [r2, r4, lsl #2]
 8009812:	4798      	blx	r3
 8009814:	4628      	mov	r0, r5
 8009816:	bd38      	pop	{r3, r4, r5, pc}
 8009818:	4628      	mov	r0, r5
 800981a:	f000 f873 	bl	8009904 <_getpid_r>
 800981e:	4622      	mov	r2, r4
 8009820:	4601      	mov	r1, r0
 8009822:	4628      	mov	r0, r5
 8009824:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8009828:	f000 b858 	b.w	80098dc <_kill_r>
 800982c:	2316      	movs	r3, #22
 800982e:	6003      	str	r3, [r0, #0]
 8009830:	2001      	movs	r0, #1
 8009832:	bd38      	pop	{r3, r4, r5, pc}
 8009834:	2000      	movs	r0, #0
 8009836:	bd38      	pop	{r3, r4, r5, pc}
 8009838:	2316      	movs	r3, #22
 800983a:	6003      	str	r3, [r0, #0]
 800983c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009840:	bd38      	pop	{r3, r4, r5, pc}
 8009842:	bf00      	nop

08009844 <__sigtramp_r>:
 8009844:	291f      	cmp	r1, #31
 8009846:	d823      	bhi.n	8009890 <__sigtramp_r+0x4c>
 8009848:	b538      	push	{r3, r4, r5, lr}
 800984a:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 800984e:	4605      	mov	r5, r0
 8009850:	460c      	mov	r4, r1
 8009852:	b183      	cbz	r3, 8009876 <__sigtramp_r+0x32>
 8009854:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
 8009858:	eb03 0384 	add.w	r3, r3, r4, lsl #2
 800985c:	b14a      	cbz	r2, 8009872 <__sigtramp_r+0x2e>
 800985e:	1c51      	adds	r1, r2, #1
 8009860:	d011      	beq.n	8009886 <__sigtramp_r+0x42>
 8009862:	2a01      	cmp	r2, #1
 8009864:	d00d      	beq.n	8009882 <__sigtramp_r+0x3e>
 8009866:	2500      	movs	r5, #0
 8009868:	4620      	mov	r0, r4
 800986a:	601d      	str	r5, [r3, #0]
 800986c:	4790      	blx	r2
 800986e:	4628      	mov	r0, r5
 8009870:	bd38      	pop	{r3, r4, r5, pc}
 8009872:	2001      	movs	r0, #1
 8009874:	bd38      	pop	{r3, r4, r5, pc}
 8009876:	f7ff ff83 	bl	8009780 <_init_signal_r.part.0>
 800987a:	b930      	cbnz	r0, 800988a <__sigtramp_r+0x46>
 800987c:	f8d5 32dc 	ldr.w	r3, [r5, #732]	; 0x2dc
 8009880:	e7e8      	b.n	8009854 <__sigtramp_r+0x10>
 8009882:	2003      	movs	r0, #3
 8009884:	bd38      	pop	{r3, r4, r5, pc}
 8009886:	2002      	movs	r0, #2
 8009888:	bd38      	pop	{r3, r4, r5, pc}
 800988a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800988e:	bd38      	pop	{r3, r4, r5, pc}
 8009890:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009894:	4770      	bx	lr
 8009896:	bf00      	nop

08009898 <raise>:
 8009898:	4b02      	ldr	r3, [pc, #8]	; (80098a4 <raise+0xc>)
 800989a:	4601      	mov	r1, r0
 800989c:	6818      	ldr	r0, [r3, #0]
 800989e:	f7ff bfa5 	b.w	80097ec <_raise_r>
 80098a2:	bf00      	nop
 80098a4:	20000010 	.word	0x20000010

080098a8 <signal>:
 80098a8:	4b02      	ldr	r3, [pc, #8]	; (80098b4 <signal+0xc>)
 80098aa:	460a      	mov	r2, r1
 80098ac:	4601      	mov	r1, r0
 80098ae:	6818      	ldr	r0, [r3, #0]
 80098b0:	f7ff bf80 	b.w	80097b4 <_signal_r>
 80098b4:	20000010 	.word	0x20000010

080098b8 <_init_signal>:
 80098b8:	4b03      	ldr	r3, [pc, #12]	; (80098c8 <_init_signal+0x10>)
 80098ba:	6818      	ldr	r0, [r3, #0]
 80098bc:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 80098c0:	b10b      	cbz	r3, 80098c6 <_init_signal+0xe>
 80098c2:	2000      	movs	r0, #0
 80098c4:	4770      	bx	lr
 80098c6:	e75b      	b.n	8009780 <_init_signal_r.part.0>
 80098c8:	20000010 	.word	0x20000010

080098cc <__sigtramp>:
 80098cc:	4b02      	ldr	r3, [pc, #8]	; (80098d8 <__sigtramp+0xc>)
 80098ce:	4601      	mov	r1, r0
 80098d0:	6818      	ldr	r0, [r3, #0]
 80098d2:	f7ff bfb7 	b.w	8009844 <__sigtramp_r>
 80098d6:	bf00      	nop
 80098d8:	20000010 	.word	0x20000010

080098dc <_kill_r>:
 80098dc:	b538      	push	{r3, r4, r5, lr}
 80098de:	460b      	mov	r3, r1
 80098e0:	4c07      	ldr	r4, [pc, #28]	; (8009900 <_kill_r+0x24>)
 80098e2:	4605      	mov	r5, r0
 80098e4:	4611      	mov	r1, r2
 80098e6:	4618      	mov	r0, r3
 80098e8:	2300      	movs	r3, #0
 80098ea:	6023      	str	r3, [r4, #0]
 80098ec:	f7f6 fe87 	bl	80005fe <_kill>
 80098f0:	1c43      	adds	r3, r0, #1
 80098f2:	d000      	beq.n	80098f6 <_kill_r+0x1a>
 80098f4:	bd38      	pop	{r3, r4, r5, pc}
 80098f6:	6823      	ldr	r3, [r4, #0]
 80098f8:	2b00      	cmp	r3, #0
 80098fa:	d0fb      	beq.n	80098f4 <_kill_r+0x18>
 80098fc:	602b      	str	r3, [r5, #0]
 80098fe:	bd38      	pop	{r3, r4, r5, pc}
 8009900:	20000c28 	.word	0x20000c28

08009904 <_getpid_r>:
 8009904:	f7f6 be73 	b.w	80005ee <_getpid>

08009908 <__aeabi_drsub>:
 8009908:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 800990c:	e002      	b.n	8009914 <__adddf3>
 800990e:	bf00      	nop

08009910 <__aeabi_dsub>:
 8009910:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08009914 <__adddf3>:
 8009914:	b530      	push	{r4, r5, lr}
 8009916:	ea4f 0441 	mov.w	r4, r1, lsl #1
 800991a:	ea4f 0543 	mov.w	r5, r3, lsl #1
 800991e:	ea94 0f05 	teq	r4, r5
 8009922:	bf08      	it	eq
 8009924:	ea90 0f02 	teqeq	r0, r2
 8009928:	bf1f      	itttt	ne
 800992a:	ea54 0c00 	orrsne.w	ip, r4, r0
 800992e:	ea55 0c02 	orrsne.w	ip, r5, r2
 8009932:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8009936:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800993a:	f000 80e2 	beq.w	8009b02 <__adddf3+0x1ee>
 800993e:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8009942:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8009946:	bfb8      	it	lt
 8009948:	426d      	neglt	r5, r5
 800994a:	dd0c      	ble.n	8009966 <__adddf3+0x52>
 800994c:	442c      	add	r4, r5
 800994e:	ea80 0202 	eor.w	r2, r0, r2
 8009952:	ea81 0303 	eor.w	r3, r1, r3
 8009956:	ea82 0000 	eor.w	r0, r2, r0
 800995a:	ea83 0101 	eor.w	r1, r3, r1
 800995e:	ea80 0202 	eor.w	r2, r0, r2
 8009962:	ea81 0303 	eor.w	r3, r1, r3
 8009966:	2d36      	cmp	r5, #54	; 0x36
 8009968:	bf88      	it	hi
 800996a:	bd30      	pophi	{r4, r5, pc}
 800996c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8009970:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8009974:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8009978:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 800997c:	d002      	beq.n	8009984 <__adddf3+0x70>
 800997e:	4240      	negs	r0, r0
 8009980:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8009984:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8009988:	ea4f 3303 	mov.w	r3, r3, lsl #12
 800998c:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8009990:	d002      	beq.n	8009998 <__adddf3+0x84>
 8009992:	4252      	negs	r2, r2
 8009994:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8009998:	ea94 0f05 	teq	r4, r5
 800999c:	f000 80a7 	beq.w	8009aee <__adddf3+0x1da>
 80099a0:	f1a4 0401 	sub.w	r4, r4, #1
 80099a4:	f1d5 0e20 	rsbs	lr, r5, #32
 80099a8:	db0d      	blt.n	80099c6 <__adddf3+0xb2>
 80099aa:	fa02 fc0e 	lsl.w	ip, r2, lr
 80099ae:	fa22 f205 	lsr.w	r2, r2, r5
 80099b2:	1880      	adds	r0, r0, r2
 80099b4:	f141 0100 	adc.w	r1, r1, #0
 80099b8:	fa03 f20e 	lsl.w	r2, r3, lr
 80099bc:	1880      	adds	r0, r0, r2
 80099be:	fa43 f305 	asr.w	r3, r3, r5
 80099c2:	4159      	adcs	r1, r3
 80099c4:	e00e      	b.n	80099e4 <__adddf3+0xd0>
 80099c6:	f1a5 0520 	sub.w	r5, r5, #32
 80099ca:	f10e 0e20 	add.w	lr, lr, #32
 80099ce:	2a01      	cmp	r2, #1
 80099d0:	fa03 fc0e 	lsl.w	ip, r3, lr
 80099d4:	bf28      	it	cs
 80099d6:	f04c 0c02 	orrcs.w	ip, ip, #2
 80099da:	fa43 f305 	asr.w	r3, r3, r5
 80099de:	18c0      	adds	r0, r0, r3
 80099e0:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80099e4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80099e8:	d507      	bpl.n	80099fa <__adddf3+0xe6>
 80099ea:	f04f 0e00 	mov.w	lr, #0
 80099ee:	f1dc 0c00 	rsbs	ip, ip, #0
 80099f2:	eb7e 0000 	sbcs.w	r0, lr, r0
 80099f6:	eb6e 0101 	sbc.w	r1, lr, r1
 80099fa:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80099fe:	d31b      	bcc.n	8009a38 <__adddf3+0x124>
 8009a00:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8009a04:	d30c      	bcc.n	8009a20 <__adddf3+0x10c>
 8009a06:	0849      	lsrs	r1, r1, #1
 8009a08:	ea5f 0030 	movs.w	r0, r0, rrx
 8009a0c:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8009a10:	f104 0401 	add.w	r4, r4, #1
 8009a14:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8009a18:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8009a1c:	f080 809a 	bcs.w	8009b54 <__adddf3+0x240>
 8009a20:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8009a24:	bf08      	it	eq
 8009a26:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8009a2a:	f150 0000 	adcs.w	r0, r0, #0
 8009a2e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8009a32:	ea41 0105 	orr.w	r1, r1, r5
 8009a36:	bd30      	pop	{r4, r5, pc}
 8009a38:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8009a3c:	4140      	adcs	r0, r0
 8009a3e:	eb41 0101 	adc.w	r1, r1, r1
 8009a42:	3c01      	subs	r4, #1
 8009a44:	bf28      	it	cs
 8009a46:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
 8009a4a:	d2e9      	bcs.n	8009a20 <__adddf3+0x10c>
 8009a4c:	f091 0f00 	teq	r1, #0
 8009a50:	bf04      	itt	eq
 8009a52:	4601      	moveq	r1, r0
 8009a54:	2000      	moveq	r0, #0
 8009a56:	fab1 f381 	clz	r3, r1
 8009a5a:	bf08      	it	eq
 8009a5c:	3320      	addeq	r3, #32
 8009a5e:	f1a3 030b 	sub.w	r3, r3, #11
 8009a62:	f1b3 0220 	subs.w	r2, r3, #32
 8009a66:	da0c      	bge.n	8009a82 <__adddf3+0x16e>
 8009a68:	320c      	adds	r2, #12
 8009a6a:	dd08      	ble.n	8009a7e <__adddf3+0x16a>
 8009a6c:	f102 0c14 	add.w	ip, r2, #20
 8009a70:	f1c2 020c 	rsb	r2, r2, #12
 8009a74:	fa01 f00c 	lsl.w	r0, r1, ip
 8009a78:	fa21 f102 	lsr.w	r1, r1, r2
 8009a7c:	e00c      	b.n	8009a98 <__adddf3+0x184>
 8009a7e:	f102 0214 	add.w	r2, r2, #20
 8009a82:	bfd8      	it	le
 8009a84:	f1c2 0c20 	rsble	ip, r2, #32
 8009a88:	fa01 f102 	lsl.w	r1, r1, r2
 8009a8c:	fa20 fc0c 	lsr.w	ip, r0, ip
 8009a90:	bfdc      	itt	le
 8009a92:	ea41 010c 	orrle.w	r1, r1, ip
 8009a96:	4090      	lslle	r0, r2
 8009a98:	1ae4      	subs	r4, r4, r3
 8009a9a:	bfa2      	ittt	ge
 8009a9c:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8009aa0:	4329      	orrge	r1, r5
 8009aa2:	bd30      	popge	{r4, r5, pc}
 8009aa4:	ea6f 0404 	mvn.w	r4, r4
 8009aa8:	3c1f      	subs	r4, #31
 8009aaa:	da1c      	bge.n	8009ae6 <__adddf3+0x1d2>
 8009aac:	340c      	adds	r4, #12
 8009aae:	dc0e      	bgt.n	8009ace <__adddf3+0x1ba>
 8009ab0:	f104 0414 	add.w	r4, r4, #20
 8009ab4:	f1c4 0220 	rsb	r2, r4, #32
 8009ab8:	fa20 f004 	lsr.w	r0, r0, r4
 8009abc:	fa01 f302 	lsl.w	r3, r1, r2
 8009ac0:	ea40 0003 	orr.w	r0, r0, r3
 8009ac4:	fa21 f304 	lsr.w	r3, r1, r4
 8009ac8:	ea45 0103 	orr.w	r1, r5, r3
 8009acc:	bd30      	pop	{r4, r5, pc}
 8009ace:	f1c4 040c 	rsb	r4, r4, #12
 8009ad2:	f1c4 0220 	rsb	r2, r4, #32
 8009ad6:	fa20 f002 	lsr.w	r0, r0, r2
 8009ada:	fa01 f304 	lsl.w	r3, r1, r4
 8009ade:	ea40 0003 	orr.w	r0, r0, r3
 8009ae2:	4629      	mov	r1, r5
 8009ae4:	bd30      	pop	{r4, r5, pc}
 8009ae6:	fa21 f004 	lsr.w	r0, r1, r4
 8009aea:	4629      	mov	r1, r5
 8009aec:	bd30      	pop	{r4, r5, pc}
 8009aee:	f094 0f00 	teq	r4, #0
 8009af2:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8009af6:	bf06      	itte	eq
 8009af8:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8009afc:	3401      	addeq	r4, #1
 8009afe:	3d01      	subne	r5, #1
 8009b00:	e74e      	b.n	80099a0 <__adddf3+0x8c>
 8009b02:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8009b06:	bf18      	it	ne
 8009b08:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8009b0c:	d029      	beq.n	8009b62 <__adddf3+0x24e>
 8009b0e:	ea94 0f05 	teq	r4, r5
 8009b12:	bf08      	it	eq
 8009b14:	ea90 0f02 	teqeq	r0, r2
 8009b18:	d005      	beq.n	8009b26 <__adddf3+0x212>
 8009b1a:	ea54 0c00 	orrs.w	ip, r4, r0
 8009b1e:	bf04      	itt	eq
 8009b20:	4619      	moveq	r1, r3
 8009b22:	4610      	moveq	r0, r2
 8009b24:	bd30      	pop	{r4, r5, pc}
 8009b26:	ea91 0f03 	teq	r1, r3
 8009b2a:	bf1e      	ittt	ne
 8009b2c:	2100      	movne	r1, #0
 8009b2e:	2000      	movne	r0, #0
 8009b30:	bd30      	popne	{r4, r5, pc}
 8009b32:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8009b36:	d105      	bne.n	8009b44 <__adddf3+0x230>
 8009b38:	0040      	lsls	r0, r0, #1
 8009b3a:	4149      	adcs	r1, r1
 8009b3c:	bf28      	it	cs
 8009b3e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8009b42:	bd30      	pop	{r4, r5, pc}
 8009b44:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8009b48:	bf3c      	itt	cc
 8009b4a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8009b4e:	bd30      	popcc	{r4, r5, pc}
 8009b50:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8009b54:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8009b58:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8009b5c:	f04f 0000 	mov.w	r0, #0
 8009b60:	bd30      	pop	{r4, r5, pc}
 8009b62:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8009b66:	bf1a      	itte	ne
 8009b68:	4619      	movne	r1, r3
 8009b6a:	4610      	movne	r0, r2
 8009b6c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8009b70:	bf1c      	itt	ne
 8009b72:	460b      	movne	r3, r1
 8009b74:	4602      	movne	r2, r0
 8009b76:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8009b7a:	bf06      	itte	eq
 8009b7c:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8009b80:	ea91 0f03 	teqeq	r1, r3
 8009b84:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8009b88:	bd30      	pop	{r4, r5, pc}
 8009b8a:	bf00      	nop

08009b8c <__aeabi_ui2d>:
 8009b8c:	f090 0f00 	teq	r0, #0
 8009b90:	bf04      	itt	eq
 8009b92:	2100      	moveq	r1, #0
 8009b94:	4770      	bxeq	lr
 8009b96:	b530      	push	{r4, r5, lr}
 8009b98:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8009b9c:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8009ba0:	f04f 0500 	mov.w	r5, #0
 8009ba4:	f04f 0100 	mov.w	r1, #0
 8009ba8:	e750      	b.n	8009a4c <__adddf3+0x138>
 8009baa:	bf00      	nop

08009bac <__aeabi_i2d>:
 8009bac:	f090 0f00 	teq	r0, #0
 8009bb0:	bf04      	itt	eq
 8009bb2:	2100      	moveq	r1, #0
 8009bb4:	4770      	bxeq	lr
 8009bb6:	b530      	push	{r4, r5, lr}
 8009bb8:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8009bbc:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8009bc0:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8009bc4:	bf48      	it	mi
 8009bc6:	4240      	negmi	r0, r0
 8009bc8:	f04f 0100 	mov.w	r1, #0
 8009bcc:	e73e      	b.n	8009a4c <__adddf3+0x138>
 8009bce:	bf00      	nop

08009bd0 <__aeabi_f2d>:
 8009bd0:	0042      	lsls	r2, r0, #1
 8009bd2:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8009bd6:	ea4f 0131 	mov.w	r1, r1, rrx
 8009bda:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8009bde:	bf1f      	itttt	ne
 8009be0:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8009be4:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8009be8:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8009bec:	4770      	bxne	lr
 8009bee:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8009bf2:	bf08      	it	eq
 8009bf4:	4770      	bxeq	lr
 8009bf6:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8009bfa:	bf04      	itt	eq
 8009bfc:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8009c00:	4770      	bxeq	lr
 8009c02:	b530      	push	{r4, r5, lr}
 8009c04:	f44f 7460 	mov.w	r4, #896	; 0x380
 8009c08:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8009c0c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8009c10:	e71c      	b.n	8009a4c <__adddf3+0x138>
 8009c12:	bf00      	nop

08009c14 <__aeabi_ul2d>:
 8009c14:	ea50 0201 	orrs.w	r2, r0, r1
 8009c18:	bf08      	it	eq
 8009c1a:	4770      	bxeq	lr
 8009c1c:	b530      	push	{r4, r5, lr}
 8009c1e:	f04f 0500 	mov.w	r5, #0
 8009c22:	e00a      	b.n	8009c3a <__aeabi_l2d+0x16>

08009c24 <__aeabi_l2d>:
 8009c24:	ea50 0201 	orrs.w	r2, r0, r1
 8009c28:	bf08      	it	eq
 8009c2a:	4770      	bxeq	lr
 8009c2c:	b530      	push	{r4, r5, lr}
 8009c2e:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8009c32:	d502      	bpl.n	8009c3a <__aeabi_l2d+0x16>
 8009c34:	4240      	negs	r0, r0
 8009c36:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8009c3a:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8009c3e:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8009c42:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8009c46:	f43f aed8 	beq.w	80099fa <__adddf3+0xe6>
 8009c4a:	f04f 0203 	mov.w	r2, #3
 8009c4e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8009c52:	bf18      	it	ne
 8009c54:	3203      	addne	r2, #3
 8009c56:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8009c5a:	bf18      	it	ne
 8009c5c:	3203      	addne	r2, #3
 8009c5e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8009c62:	f1c2 0320 	rsb	r3, r2, #32
 8009c66:	fa00 fc03 	lsl.w	ip, r0, r3
 8009c6a:	fa20 f002 	lsr.w	r0, r0, r2
 8009c6e:	fa01 fe03 	lsl.w	lr, r1, r3
 8009c72:	ea40 000e 	orr.w	r0, r0, lr
 8009c76:	fa21 f102 	lsr.w	r1, r1, r2
 8009c7a:	4414      	add	r4, r2
 8009c7c:	e6bd      	b.n	80099fa <__adddf3+0xe6>
 8009c7e:	bf00      	nop

08009c80 <__aeabi_dmul>:
 8009c80:	b570      	push	{r4, r5, r6, lr}
 8009c82:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8009c86:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8009c8a:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8009c8e:	bf1d      	ittte	ne
 8009c90:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8009c94:	ea94 0f0c 	teqne	r4, ip
 8009c98:	ea95 0f0c 	teqne	r5, ip
 8009c9c:	f000 f8de 	bleq	8009e5c <__aeabi_dmul+0x1dc>
 8009ca0:	442c      	add	r4, r5
 8009ca2:	ea81 0603 	eor.w	r6, r1, r3
 8009ca6:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8009caa:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8009cae:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8009cb2:	bf18      	it	ne
 8009cb4:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8009cb8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8009cbc:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009cc0:	d038      	beq.n	8009d34 <__aeabi_dmul+0xb4>
 8009cc2:	fba0 ce02 	umull	ip, lr, r0, r2
 8009cc6:	f04f 0500 	mov.w	r5, #0
 8009cca:	fbe1 e502 	umlal	lr, r5, r1, r2
 8009cce:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8009cd2:	fbe0 e503 	umlal	lr, r5, r0, r3
 8009cd6:	f04f 0600 	mov.w	r6, #0
 8009cda:	fbe1 5603 	umlal	r5, r6, r1, r3
 8009cde:	f09c 0f00 	teq	ip, #0
 8009ce2:	bf18      	it	ne
 8009ce4:	f04e 0e01 	orrne.w	lr, lr, #1
 8009ce8:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8009cec:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8009cf0:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8009cf4:	d204      	bcs.n	8009d00 <__aeabi_dmul+0x80>
 8009cf6:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8009cfa:	416d      	adcs	r5, r5
 8009cfc:	eb46 0606 	adc.w	r6, r6, r6
 8009d00:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8009d04:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8009d08:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8009d0c:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8009d10:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8009d14:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8009d18:	bf88      	it	hi
 8009d1a:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8009d1e:	d81e      	bhi.n	8009d5e <__aeabi_dmul+0xde>
 8009d20:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8009d24:	bf08      	it	eq
 8009d26:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8009d2a:	f150 0000 	adcs.w	r0, r0, #0
 8009d2e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8009d32:	bd70      	pop	{r4, r5, r6, pc}
 8009d34:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8009d38:	ea46 0101 	orr.w	r1, r6, r1
 8009d3c:	ea40 0002 	orr.w	r0, r0, r2
 8009d40:	ea81 0103 	eor.w	r1, r1, r3
 8009d44:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8009d48:	bfc2      	ittt	gt
 8009d4a:	ebd4 050c 	rsbsgt	r5, r4, ip
 8009d4e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8009d52:	bd70      	popgt	{r4, r5, r6, pc}
 8009d54:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8009d58:	f04f 0e00 	mov.w	lr, #0
 8009d5c:	3c01      	subs	r4, #1
 8009d5e:	f300 80ab 	bgt.w	8009eb8 <__aeabi_dmul+0x238>
 8009d62:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8009d66:	bfde      	ittt	le
 8009d68:	2000      	movle	r0, #0
 8009d6a:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8009d6e:	bd70      	pople	{r4, r5, r6, pc}
 8009d70:	f1c4 0400 	rsb	r4, r4, #0
 8009d74:	3c20      	subs	r4, #32
 8009d76:	da35      	bge.n	8009de4 <__aeabi_dmul+0x164>
 8009d78:	340c      	adds	r4, #12
 8009d7a:	dc1b      	bgt.n	8009db4 <__aeabi_dmul+0x134>
 8009d7c:	f104 0414 	add.w	r4, r4, #20
 8009d80:	f1c4 0520 	rsb	r5, r4, #32
 8009d84:	fa00 f305 	lsl.w	r3, r0, r5
 8009d88:	fa20 f004 	lsr.w	r0, r0, r4
 8009d8c:	fa01 f205 	lsl.w	r2, r1, r5
 8009d90:	ea40 0002 	orr.w	r0, r0, r2
 8009d94:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8009d98:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8009d9c:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8009da0:	fa21 f604 	lsr.w	r6, r1, r4
 8009da4:	eb42 0106 	adc.w	r1, r2, r6
 8009da8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8009dac:	bf08      	it	eq
 8009dae:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8009db2:	bd70      	pop	{r4, r5, r6, pc}
 8009db4:	f1c4 040c 	rsb	r4, r4, #12
 8009db8:	f1c4 0520 	rsb	r5, r4, #32
 8009dbc:	fa00 f304 	lsl.w	r3, r0, r4
 8009dc0:	fa20 f005 	lsr.w	r0, r0, r5
 8009dc4:	fa01 f204 	lsl.w	r2, r1, r4
 8009dc8:	ea40 0002 	orr.w	r0, r0, r2
 8009dcc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8009dd0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8009dd4:	f141 0100 	adc.w	r1, r1, #0
 8009dd8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8009ddc:	bf08      	it	eq
 8009dde:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8009de2:	bd70      	pop	{r4, r5, r6, pc}
 8009de4:	f1c4 0520 	rsb	r5, r4, #32
 8009de8:	fa00 f205 	lsl.w	r2, r0, r5
 8009dec:	ea4e 0e02 	orr.w	lr, lr, r2
 8009df0:	fa20 f304 	lsr.w	r3, r0, r4
 8009df4:	fa01 f205 	lsl.w	r2, r1, r5
 8009df8:	ea43 0302 	orr.w	r3, r3, r2
 8009dfc:	fa21 f004 	lsr.w	r0, r1, r4
 8009e00:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8009e04:	fa21 f204 	lsr.w	r2, r1, r4
 8009e08:	ea20 0002 	bic.w	r0, r0, r2
 8009e0c:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8009e10:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8009e14:	bf08      	it	eq
 8009e16:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8009e1a:	bd70      	pop	{r4, r5, r6, pc}
 8009e1c:	f094 0f00 	teq	r4, #0
 8009e20:	d10f      	bne.n	8009e42 <__aeabi_dmul+0x1c2>
 8009e22:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8009e26:	0040      	lsls	r0, r0, #1
 8009e28:	eb41 0101 	adc.w	r1, r1, r1
 8009e2c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8009e30:	bf08      	it	eq
 8009e32:	3c01      	subeq	r4, #1
 8009e34:	d0f7      	beq.n	8009e26 <__aeabi_dmul+0x1a6>
 8009e36:	ea41 0106 	orr.w	r1, r1, r6
 8009e3a:	f095 0f00 	teq	r5, #0
 8009e3e:	bf18      	it	ne
 8009e40:	4770      	bxne	lr
 8009e42:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8009e46:	0052      	lsls	r2, r2, #1
 8009e48:	eb43 0303 	adc.w	r3, r3, r3
 8009e4c:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8009e50:	bf08      	it	eq
 8009e52:	3d01      	subeq	r5, #1
 8009e54:	d0f7      	beq.n	8009e46 <__aeabi_dmul+0x1c6>
 8009e56:	ea43 0306 	orr.w	r3, r3, r6
 8009e5a:	4770      	bx	lr
 8009e5c:	ea94 0f0c 	teq	r4, ip
 8009e60:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8009e64:	bf18      	it	ne
 8009e66:	ea95 0f0c 	teqne	r5, ip
 8009e6a:	d00c      	beq.n	8009e86 <__aeabi_dmul+0x206>
 8009e6c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8009e70:	bf18      	it	ne
 8009e72:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8009e76:	d1d1      	bne.n	8009e1c <__aeabi_dmul+0x19c>
 8009e78:	ea81 0103 	eor.w	r1, r1, r3
 8009e7c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8009e80:	f04f 0000 	mov.w	r0, #0
 8009e84:	bd70      	pop	{r4, r5, r6, pc}
 8009e86:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8009e8a:	bf06      	itte	eq
 8009e8c:	4610      	moveq	r0, r2
 8009e8e:	4619      	moveq	r1, r3
 8009e90:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8009e94:	d019      	beq.n	8009eca <__aeabi_dmul+0x24a>
 8009e96:	ea94 0f0c 	teq	r4, ip
 8009e9a:	d102      	bne.n	8009ea2 <__aeabi_dmul+0x222>
 8009e9c:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8009ea0:	d113      	bne.n	8009eca <__aeabi_dmul+0x24a>
 8009ea2:	ea95 0f0c 	teq	r5, ip
 8009ea6:	d105      	bne.n	8009eb4 <__aeabi_dmul+0x234>
 8009ea8:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8009eac:	bf1c      	itt	ne
 8009eae:	4610      	movne	r0, r2
 8009eb0:	4619      	movne	r1, r3
 8009eb2:	d10a      	bne.n	8009eca <__aeabi_dmul+0x24a>
 8009eb4:	ea81 0103 	eor.w	r1, r1, r3
 8009eb8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8009ebc:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8009ec0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8009ec4:	f04f 0000 	mov.w	r0, #0
 8009ec8:	bd70      	pop	{r4, r5, r6, pc}
 8009eca:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8009ece:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8009ed2:	bd70      	pop	{r4, r5, r6, pc}

08009ed4 <__aeabi_ddiv>:
 8009ed4:	b570      	push	{r4, r5, r6, lr}
 8009ed6:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8009eda:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8009ede:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8009ee2:	bf1d      	ittte	ne
 8009ee4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8009ee8:	ea94 0f0c 	teqne	r4, ip
 8009eec:	ea95 0f0c 	teqne	r5, ip
 8009ef0:	f000 f8a7 	bleq	800a042 <__aeabi_ddiv+0x16e>
 8009ef4:	eba4 0405 	sub.w	r4, r4, r5
 8009ef8:	ea81 0e03 	eor.w	lr, r1, r3
 8009efc:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8009f00:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8009f04:	f000 8088 	beq.w	800a018 <__aeabi_ddiv+0x144>
 8009f08:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8009f0c:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8009f10:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8009f14:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8009f18:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8009f1c:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8009f20:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8009f24:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8009f28:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8009f2c:	429d      	cmp	r5, r3
 8009f2e:	bf08      	it	eq
 8009f30:	4296      	cmpeq	r6, r2
 8009f32:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8009f36:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8009f3a:	d202      	bcs.n	8009f42 <__aeabi_ddiv+0x6e>
 8009f3c:	085b      	lsrs	r3, r3, #1
 8009f3e:	ea4f 0232 	mov.w	r2, r2, rrx
 8009f42:	1ab6      	subs	r6, r6, r2
 8009f44:	eb65 0503 	sbc.w	r5, r5, r3
 8009f48:	085b      	lsrs	r3, r3, #1
 8009f4a:	ea4f 0232 	mov.w	r2, r2, rrx
 8009f4e:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8009f52:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8009f56:	ebb6 0e02 	subs.w	lr, r6, r2
 8009f5a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8009f5e:	bf22      	ittt	cs
 8009f60:	1ab6      	subcs	r6, r6, r2
 8009f62:	4675      	movcs	r5, lr
 8009f64:	ea40 000c 	orrcs.w	r0, r0, ip
 8009f68:	085b      	lsrs	r3, r3, #1
 8009f6a:	ea4f 0232 	mov.w	r2, r2, rrx
 8009f6e:	ebb6 0e02 	subs.w	lr, r6, r2
 8009f72:	eb75 0e03 	sbcs.w	lr, r5, r3
 8009f76:	bf22      	ittt	cs
 8009f78:	1ab6      	subcs	r6, r6, r2
 8009f7a:	4675      	movcs	r5, lr
 8009f7c:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8009f80:	085b      	lsrs	r3, r3, #1
 8009f82:	ea4f 0232 	mov.w	r2, r2, rrx
 8009f86:	ebb6 0e02 	subs.w	lr, r6, r2
 8009f8a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8009f8e:	bf22      	ittt	cs
 8009f90:	1ab6      	subcs	r6, r6, r2
 8009f92:	4675      	movcs	r5, lr
 8009f94:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8009f98:	085b      	lsrs	r3, r3, #1
 8009f9a:	ea4f 0232 	mov.w	r2, r2, rrx
 8009f9e:	ebb6 0e02 	subs.w	lr, r6, r2
 8009fa2:	eb75 0e03 	sbcs.w	lr, r5, r3
 8009fa6:	bf22      	ittt	cs
 8009fa8:	1ab6      	subcs	r6, r6, r2
 8009faa:	4675      	movcs	r5, lr
 8009fac:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8009fb0:	ea55 0e06 	orrs.w	lr, r5, r6
 8009fb4:	d018      	beq.n	8009fe8 <__aeabi_ddiv+0x114>
 8009fb6:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8009fba:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8009fbe:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8009fc2:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8009fc6:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8009fca:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8009fce:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8009fd2:	d1c0      	bne.n	8009f56 <__aeabi_ddiv+0x82>
 8009fd4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8009fd8:	d10b      	bne.n	8009ff2 <__aeabi_ddiv+0x11e>
 8009fda:	ea41 0100 	orr.w	r1, r1, r0
 8009fde:	f04f 0000 	mov.w	r0, #0
 8009fe2:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8009fe6:	e7b6      	b.n	8009f56 <__aeabi_ddiv+0x82>
 8009fe8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8009fec:	bf04      	itt	eq
 8009fee:	4301      	orreq	r1, r0
 8009ff0:	2000      	moveq	r0, #0
 8009ff2:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8009ff6:	bf88      	it	hi
 8009ff8:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8009ffc:	f63f aeaf 	bhi.w	8009d5e <__aeabi_dmul+0xde>
 800a000:	ebb5 0c03 	subs.w	ip, r5, r3
 800a004:	bf04      	itt	eq
 800a006:	ebb6 0c02 	subseq.w	ip, r6, r2
 800a00a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800a00e:	f150 0000 	adcs.w	r0, r0, #0
 800a012:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800a016:	bd70      	pop	{r4, r5, r6, pc}
 800a018:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 800a01c:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 800a020:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 800a024:	bfc2      	ittt	gt
 800a026:	ebd4 050c 	rsbsgt	r5, r4, ip
 800a02a:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 800a02e:	bd70      	popgt	{r4, r5, r6, pc}
 800a030:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800a034:	f04f 0e00 	mov.w	lr, #0
 800a038:	3c01      	subs	r4, #1
 800a03a:	e690      	b.n	8009d5e <__aeabi_dmul+0xde>
 800a03c:	ea45 0e06 	orr.w	lr, r5, r6
 800a040:	e68d      	b.n	8009d5e <__aeabi_dmul+0xde>
 800a042:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800a046:	ea94 0f0c 	teq	r4, ip
 800a04a:	bf08      	it	eq
 800a04c:	ea95 0f0c 	teqeq	r5, ip
 800a050:	f43f af3b 	beq.w	8009eca <__aeabi_dmul+0x24a>
 800a054:	ea94 0f0c 	teq	r4, ip
 800a058:	d10a      	bne.n	800a070 <__aeabi_ddiv+0x19c>
 800a05a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 800a05e:	f47f af34 	bne.w	8009eca <__aeabi_dmul+0x24a>
 800a062:	ea95 0f0c 	teq	r5, ip
 800a066:	f47f af25 	bne.w	8009eb4 <__aeabi_dmul+0x234>
 800a06a:	4610      	mov	r0, r2
 800a06c:	4619      	mov	r1, r3
 800a06e:	e72c      	b.n	8009eca <__aeabi_dmul+0x24a>
 800a070:	ea95 0f0c 	teq	r5, ip
 800a074:	d106      	bne.n	800a084 <__aeabi_ddiv+0x1b0>
 800a076:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 800a07a:	f43f aefd 	beq.w	8009e78 <__aeabi_dmul+0x1f8>
 800a07e:	4610      	mov	r0, r2
 800a080:	4619      	mov	r1, r3
 800a082:	e722      	b.n	8009eca <__aeabi_dmul+0x24a>
 800a084:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800a088:	bf18      	it	ne
 800a08a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800a08e:	f47f aec5 	bne.w	8009e1c <__aeabi_dmul+0x19c>
 800a092:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800a096:	f47f af0d 	bne.w	8009eb4 <__aeabi_dmul+0x234>
 800a09a:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 800a09e:	f47f aeeb 	bne.w	8009e78 <__aeabi_dmul+0x1f8>
 800a0a2:	e712      	b.n	8009eca <__aeabi_dmul+0x24a>

0800a0a4 <__gedf2>:
 800a0a4:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 800a0a8:	e006      	b.n	800a0b8 <__cmpdf2+0x4>
 800a0aa:	bf00      	nop

0800a0ac <__ledf2>:
 800a0ac:	f04f 0c01 	mov.w	ip, #1
 800a0b0:	e002      	b.n	800a0b8 <__cmpdf2+0x4>
 800a0b2:	bf00      	nop

0800a0b4 <__cmpdf2>:
 800a0b4:	f04f 0c01 	mov.w	ip, #1
 800a0b8:	f84d cd04 	str.w	ip, [sp, #-4]!
 800a0bc:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 800a0c0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800a0c4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800a0c8:	bf18      	it	ne
 800a0ca:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 800a0ce:	d01b      	beq.n	800a108 <__cmpdf2+0x54>
 800a0d0:	b001      	add	sp, #4
 800a0d2:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 800a0d6:	bf0c      	ite	eq
 800a0d8:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 800a0dc:	ea91 0f03 	teqne	r1, r3
 800a0e0:	bf02      	ittt	eq
 800a0e2:	ea90 0f02 	teqeq	r0, r2
 800a0e6:	2000      	moveq	r0, #0
 800a0e8:	4770      	bxeq	lr
 800a0ea:	f110 0f00 	cmn.w	r0, #0
 800a0ee:	ea91 0f03 	teq	r1, r3
 800a0f2:	bf58      	it	pl
 800a0f4:	4299      	cmppl	r1, r3
 800a0f6:	bf08      	it	eq
 800a0f8:	4290      	cmpeq	r0, r2
 800a0fa:	bf2c      	ite	cs
 800a0fc:	17d8      	asrcs	r0, r3, #31
 800a0fe:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 800a102:	f040 0001 	orr.w	r0, r0, #1
 800a106:	4770      	bx	lr
 800a108:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 800a10c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800a110:	d102      	bne.n	800a118 <__cmpdf2+0x64>
 800a112:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800a116:	d107      	bne.n	800a128 <__cmpdf2+0x74>
 800a118:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800a11c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800a120:	d1d6      	bne.n	800a0d0 <__cmpdf2+0x1c>
 800a122:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800a126:	d0d3      	beq.n	800a0d0 <__cmpdf2+0x1c>
 800a128:	f85d 0b04 	ldr.w	r0, [sp], #4
 800a12c:	4770      	bx	lr
 800a12e:	bf00      	nop

0800a130 <__aeabi_cdrcmple>:
 800a130:	4684      	mov	ip, r0
 800a132:	4610      	mov	r0, r2
 800a134:	4662      	mov	r2, ip
 800a136:	468c      	mov	ip, r1
 800a138:	4619      	mov	r1, r3
 800a13a:	4663      	mov	r3, ip
 800a13c:	e000      	b.n	800a140 <__aeabi_cdcmpeq>
 800a13e:	bf00      	nop

0800a140 <__aeabi_cdcmpeq>:
 800a140:	b501      	push	{r0, lr}
 800a142:	f7ff ffb7 	bl	800a0b4 <__cmpdf2>
 800a146:	2800      	cmp	r0, #0
 800a148:	bf48      	it	mi
 800a14a:	f110 0f00 	cmnmi.w	r0, #0
 800a14e:	bd01      	pop	{r0, pc}

0800a150 <__aeabi_dcmpeq>:
 800a150:	f84d ed08 	str.w	lr, [sp, #-8]!
 800a154:	f7ff fff4 	bl	800a140 <__aeabi_cdcmpeq>
 800a158:	bf0c      	ite	eq
 800a15a:	2001      	moveq	r0, #1
 800a15c:	2000      	movne	r0, #0
 800a15e:	f85d fb08 	ldr.w	pc, [sp], #8
 800a162:	bf00      	nop

0800a164 <__aeabi_dcmplt>:
 800a164:	f84d ed08 	str.w	lr, [sp, #-8]!
 800a168:	f7ff ffea 	bl	800a140 <__aeabi_cdcmpeq>
 800a16c:	bf34      	ite	cc
 800a16e:	2001      	movcc	r0, #1
 800a170:	2000      	movcs	r0, #0
 800a172:	f85d fb08 	ldr.w	pc, [sp], #8
 800a176:	bf00      	nop

0800a178 <__aeabi_dcmple>:
 800a178:	f84d ed08 	str.w	lr, [sp, #-8]!
 800a17c:	f7ff ffe0 	bl	800a140 <__aeabi_cdcmpeq>
 800a180:	bf94      	ite	ls
 800a182:	2001      	movls	r0, #1
 800a184:	2000      	movhi	r0, #0
 800a186:	f85d fb08 	ldr.w	pc, [sp], #8
 800a18a:	bf00      	nop

0800a18c <__aeabi_dcmpge>:
 800a18c:	f84d ed08 	str.w	lr, [sp, #-8]!
 800a190:	f7ff ffce 	bl	800a130 <__aeabi_cdrcmple>
 800a194:	bf94      	ite	ls
 800a196:	2001      	movls	r0, #1
 800a198:	2000      	movhi	r0, #0
 800a19a:	f85d fb08 	ldr.w	pc, [sp], #8
 800a19e:	bf00      	nop

0800a1a0 <__aeabi_dcmpgt>:
 800a1a0:	f84d ed08 	str.w	lr, [sp, #-8]!
 800a1a4:	f7ff ffc4 	bl	800a130 <__aeabi_cdrcmple>
 800a1a8:	bf34      	ite	cc
 800a1aa:	2001      	movcc	r0, #1
 800a1ac:	2000      	movcs	r0, #0
 800a1ae:	f85d fb08 	ldr.w	pc, [sp], #8
 800a1b2:	bf00      	nop

0800a1b4 <__aeabi_dcmpun>:
 800a1b4:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 800a1b8:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800a1bc:	d102      	bne.n	800a1c4 <__aeabi_dcmpun+0x10>
 800a1be:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800a1c2:	d10a      	bne.n	800a1da <__aeabi_dcmpun+0x26>
 800a1c4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800a1c8:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800a1cc:	d102      	bne.n	800a1d4 <__aeabi_dcmpun+0x20>
 800a1ce:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800a1d2:	d102      	bne.n	800a1da <__aeabi_dcmpun+0x26>
 800a1d4:	f04f 0000 	mov.w	r0, #0
 800a1d8:	4770      	bx	lr
 800a1da:	f04f 0001 	mov.w	r0, #1
 800a1de:	4770      	bx	lr

0800a1e0 <__aeabi_d2iz>:
 800a1e0:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800a1e4:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 800a1e8:	d215      	bcs.n	800a216 <__aeabi_d2iz+0x36>
 800a1ea:	d511      	bpl.n	800a210 <__aeabi_d2iz+0x30>
 800a1ec:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 800a1f0:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 800a1f4:	d912      	bls.n	800a21c <__aeabi_d2iz+0x3c>
 800a1f6:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 800a1fa:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 800a1fe:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800a202:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800a206:	fa23 f002 	lsr.w	r0, r3, r2
 800a20a:	bf18      	it	ne
 800a20c:	4240      	negne	r0, r0
 800a20e:	4770      	bx	lr
 800a210:	f04f 0000 	mov.w	r0, #0
 800a214:	4770      	bx	lr
 800a216:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 800a21a:	d105      	bne.n	800a228 <__aeabi_d2iz+0x48>
 800a21c:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 800a220:	bf08      	it	eq
 800a222:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 800a226:	4770      	bx	lr
 800a228:	f04f 0000 	mov.w	r0, #0
 800a22c:	4770      	bx	lr
 800a22e:	bf00      	nop

0800a230 <_init>:
 800a230:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a232:	bf00      	nop
 800a234:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a236:	bc08      	pop	{r3}
 800a238:	469e      	mov	lr, r3
 800a23a:	4770      	bx	lr

0800a23c <_fini>:
 800a23c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a23e:	bf00      	nop
 800a240:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800a242:	bc08      	pop	{r3}
 800a244:	469e      	mov	lr, r3
 800a246:	4770      	bx	lr
 800a248:	5d73255b 	.word	0x5d73255b
 800a24c:	0000000a 	.word	0x0000000a
 800a250:	5d73255b 	.word	0x5d73255b
 800a254:	20726c20 	.word	0x20726c20
 800a258:	7830203d 	.word	0x7830203d
 800a25c:	202c7825 	.word	0x202c7825
 800a260:	3d207073 	.word	0x3d207073
 800a264:	25783020 	.word	0x25783020
 800a268:	000a0d78 	.word	0x000a0d78

0800a26c <__func__.11264>:
 800a26c:	64726148 6c756146 61485f74 656c646e     HardFault_Handle
 800a27c:	00000072                                r...

0800a280 <AHBPrescTable>:
	...
 800a288:	04030201 09080706                       ........

0800a290 <APBPrescTable>:
 800a290:	00000000 04030201                       ........

0800a298 <flagBitshiftOffset.10216>:
 800a298:	16100600 16100600 72646461 2578303a     ........addr:0x%
 800a2a8:	61762078 3a65756c 78257830 00000a0d     x value:0x%x....
 800a2b8:	64253a7a 0000000a 5d73255b 3d3d3d20     z:%d....[%s] ===
 800a2c8:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
 800a2d8:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
 800a2e8:	00000a3d 64612020 203a7264 6c383025     =...  addr: %08l
 800a2f8:	20202078 74616420 25203a61 786c3830     x    data: %08lx
 800a308:	0000000a 4f525245 55203a52 6c62616e     ....ERROR: Unabl
 800a318:	6f742065 74656720 65687420 69616d20     e to get the mai
 800a328:	7473206e 206b6361 6f666e69 74616d72     n stack informat
 800a338:	2c6e6f69 656c7020 20657361 63656863     ion, please chec
 800a348:	6874206b 6f632065 6769666e 74617275     k the configurat
 800a358:	206e6f69 7420666f 6d206568 206e6961     ion of the main 
 800a368:	63617473 0000006b 6d726946 65726177     stack...Firmware
 800a378:	6d616e20 25203a65 68202c73 77647261      name: %s, hardw
 800a388:	20657261 73726576 3a6e6f69 2c732520     are version: %s,
 800a398:	666f7320 72617774 65762065 6f697372      software versio
 800a3a8:	25203a6e 00000073 65737341 6f207472     n: %s...Assert o
 800a3b8:	6874206e 64616572 00732520 65737341     n thread %s.Asse
 800a3c8:	6f207472 6e69206e 72726574 20747075     rt on interrupt 
 800a3d8:	6220726f 20657261 6174656d 6f6e286c     or bare metal(no
 800a3e8:	29534f20 766e6520 6e6f7269 746e656d      OS) environment
 800a3f8:	00000000 3d3d3d3d 6854203d 64616572     ....===== Thread
 800a408:	61747320 69206b63 726f666e 6974616d      stack informati
 800a418:	3d206e6f 3d3d3d3d 00000000 3d3d3d3d     on =====....====
 800a428:	4d203d3d 206e6961 63617473 6e69206b     == Main stack in
 800a438:	6d726f66 6f697461 3d3d206e 3d3d3d3d     formation ======
 800a448:	00000000 6f727245 54203a72 61657268     ....Error: Threa
 800a458:	74732064 286b6361 78383025 61772029     d stack(%08x) wa
 800a468:	766f2073 6c667265 0000776f 6f727245     s overflow..Erro
 800a478:	4d203a72 206e6961 63617473 3025286b     r: Main stack(%0
 800a488:	20297838 20736177 7265766f 776f6c66     8x) was overflow
 800a498:	00000000 776f6853 726f6d20 61632065     ....Show more ca
 800a4a8:	73206c6c 6b636174 666e6920 7962206f     ll stack info by
 800a4b8:	6e757220 6461203a 6c327264 20656e69      run: addr2line 
 800a4c8:	2520652d 20732573 2d20612d 2e252066     -e %s%s -a -f %.
 800a4d8:	0000732a 706d7544 6c616320 7473206c     *s..Dump call st
 800a4e8:	206b6361 20736168 65206e61 726f7272     ack has an error
 800a4f8:	00000000 6c756146 6e6f2074 72687420     ....Fault on thr
 800a508:	20646165 00007325 6c756146 6e6f2074     ead %s..Fault on
 800a518:	746e6920 75727265 6f207470 61622072      interrupt or ba
 800a528:	6d206572 6c617465 206f6e28 2029534f     re metal(no OS) 
 800a538:	69766e65 6d6e6f72 00746e65 3d3d3d3d     environment.====
 800a548:	3d3d3d3d 3d3d3d3d 3d3d3d3d 203d3d3d     =============== 
 800a558:	69676552 72657473 6e692073 6d726f66     Registers inform
 800a568:	6f697461 3d3d206e 3d3d3d3d 3d3d3d3d     ation ==========
 800a578:	3d3d3d3d 3d3d3d3d 00003d3d 64726148     ==========..Hard
 800a588:	75616620 6920746c 61632073 64657375      fault is caused
 800a598:	20796220 6c696166 76206465 6f746365      by failed vecto
 800a5a8:	65662072 00686374 6f6d654d 6d207972     r fetch.Memory m
 800a5b8:	67616e61 6e656d65 61662074 20746c75     anagement fault 
 800a5c8:	63207369 65737561 79622064 736e6920     is caused by ins
 800a5d8:	63757274 6e6f6974 63636120 20737365     truction access 
 800a5e8:	6c6f6976 6f697461 0000006e 6f6d654d     violation...Memo
 800a5f8:	6d207972 67616e61 6e656d65 61662074     ry management fa
 800a608:	20746c75 63207369 65737561 79622064     ult is caused by
 800a618:	74616420 63612061 73736563 6f697620      data access vio
 800a628:	6974616c 00006e6f 6f6d654d 6d207972     lation..Memory m
 800a638:	67616e61 6e656d65 61662074 20746c75     anagement fault 
 800a648:	63207369 65737561 79622064 736e7520     is caused by uns
 800a658:	6b636174 20676e69 6f727265 00000072     tacking error...
 800a668:	6f6d654d 6d207972 67616e61 6e656d65     Memory managemen
 800a678:	61662074 20746c75 63207369 65737561     t fault is cause
 800a688:	79622064 61747320 6e696b63 72652067     d by stacking er
 800a698:	00726f72 6f6d654d 6d207972 67616e61     ror.Memory manag
 800a6a8:	6e656d65 61662074 20746c75 63207369     ement fault is c
 800a6b8:	65737561 79622064 6f6c6620 6e697461     aused by floatin
 800a6c8:	6f702d67 20746e69 797a616c 61747320     g-point lazy sta
 800a6d8:	70206574 65736572 74617672 006e6f69     te preservation.
 800a6e8:	20737542 6c756166 73692074 75616320     Bus fault is cau
 800a6f8:	20646573 69207962 7274736e 69746375     sed by instructi
 800a708:	61206e6f 73656363 69762073 74616c6f     on access violat
 800a718:	006e6f69 20737542 6c756166 73692074     ion.Bus fault is
 800a728:	75616320 20646573 70207962 69636572      caused by preci
 800a738:	64206573 20617461 65636361 76207373     se data access v
 800a748:	616c6f69 6e6f6974 00000000 20737542     iolation....Bus 
 800a758:	6c756166 73692074 75616320 20646573     fault is caused 
 800a768:	69207962 6572706d 65736963 74616420     by imprecise dat
 800a778:	63612061 73736563 6f697620 6974616c     a access violati
 800a788:	00006e6f 20737542 6c756166 73692074     on..Bus fault is
 800a798:	75616320 20646573 75207962 6174736e      caused by unsta
 800a7a8:	6e696b63 72652067 00726f72 20737542     cking error.Bus 
 800a7b8:	6c756166 73692074 75616320 20646573     fault is caused 
 800a7c8:	73207962 6b636174 20676e69 6f727265     by stacking erro
 800a7d8:	00000072 20737542 6c756166 73692074     r...Bus fault is
 800a7e8:	75616320 20646573 66207962 74616f6c      caused by float
 800a7f8:	2d676e69 6e696f70 616c2074 7320797a     ing-point lazy s
 800a808:	65746174 65727020 76726573 6f697461     tate preservatio
 800a818:	0000006e 67617355 61662065 20746c75     n...Usage fault 
 800a828:	63207369 65737561 79622064 74746120     is caused by att
 800a838:	74706d65 6f742073 65786520 65747563     empts to execute
 800a848:	206e6120 65646e75 656e6966 6e692064      an undefined in
 800a858:	75727473 6f697463 0000006e 67617355     struction...Usag
 800a868:	61662065 20746c75 63207369 65737561     e fault is cause
 800a878:	79622064 74746120 74706d65 6f742073     d by attempts to
 800a888:	69777320 20686374 61206f74 6e69206e      switch to an in
 800a898:	696c6176 74732064 20657461 672e6528     valid state (e.g
 800a8a8:	41202c2e 00294d52 67617355 61662065     ., ARM).Usage fa
 800a8b8:	20746c75 63207369 65737561 79622064     ult is caused by
 800a8c8:	74746120 74706d65 6f742073 206f6420      attempts to do 
 800a8d8:	65206e61 70656378 6e6f6974 74697720     an exception wit
 800a8e8:	20612068 20646162 756c6176 6e692065     h a bad value in
 800a8f8:	65687420 43584520 5445525f 204e5255      the EXC_RETURN 
 800a908:	626d756e 00007265 67617355 61662065     number..Usage fa
 800a918:	20746c75 63207369 65737561 79622064     ult is caused by
 800a928:	74746120 74706d65 6f742073 65786520      attempts to exe
 800a938:	65747563 63206120 6f72706f 73736563     cute a coprocess
 800a948:	6920726f 7274736e 69746375 00006e6f     or instruction..
 800a958:	67617355 61662065 20746c75 63207369     Usage fault is c
 800a968:	65737561 79622064 646e6920 74616369     aused by indicat
 800a978:	74207365 20746168 75206e61 696c616e     es that an unali
 800a988:	64656e67 63636120 20737365 6c756166     gned access faul
 800a998:	61682074 61742073 206e656b 63616c70     t has taken plac
 800a9a8:	00000065 67617355 61662065 20746c75     e...Usage fault 
 800a9b8:	63207369 65737561 79622064 646e4920     is caused by Ind
 800a9c8:	74616369 61207365 76696420 20656469     icates a divide 
 800a9d8:	7a207962 206f7265 20736168 656b6174     by zero has take
 800a9e8:	6c70206e 20656361 6e616328 20656220     n place (can be 
 800a9f8:	20746573 796c6e6f 20666920 5f564944     set only if DIV_
 800aa08:	52545f30 73692050 74657320 00000029     0_TRP is set)...
 800aa18:	75626544 61662067 20746c75 63207369     Debug fault is c
 800aa28:	65737561 79622064 6c616820 65722074     aused by halt re
 800aa38:	73657571 20646574 4e206e69 00434956     quested in NVIC.
 800aa48:	75626544 61662067 20746c75 63207369     Debug fault is c
 800aa58:	65737561 79622064 504b4220 6e692054     aused by BKPT in
 800aa68:	75727473 6f697463 7865206e 74756365     struction execut
 800aa78:	00006465 75626544 61662067 20746c75     ed..Debug fault 
 800aa88:	63207369 65737561 79622064 54574420     is caused by DWT
 800aa98:	74616d20 6f206863 72756363 00646572      match occurred.
 800aaa8:	75626544 61662067 20746c75 63207369     Debug fault is c
 800aab8:	65737561 79622064 63655620 20726f74     aused by Vector 
 800aac8:	63746566 636f2068 72727563 00006465     fetch occurred..
 800aad8:	75626544 61662067 20746c75 63207369     Debug fault is c
 800aae8:	65737561 79622064 42444520 20515247     aused by EDBGRQ 
 800aaf8:	6e676973 61206c61 72657373 00646574     signal asserted.
 800ab08:	20656854 6f6d656d 6d207972 67616e61     The memory manag
 800ab18:	6e656d65 61662074 20746c75 7563636f     ement fault occu
 800ab28:	64657272 64646120 73736572 20736920     rred address is 
 800ab38:	78383025 00000000 20656854 20737562     %08x....The bus 
 800ab48:	6c756166 636f2074 72727563 61206465     fault occurred a
 800ab58:	65726464 69207373 30252073 00007838     ddress is %08x..
 800ab68:	5d73255b 3d707320 78257830 00000a0d     [%s] sp=0x%x....
 800ab78:	303d7073 0a782578 00000000 20202020     sp=0x%x.....    
 800ab88:	20202020 6c616572 3d435020 30257830         real PC=0x%0
 800ab98:	62207838 726f206c 786c6220 2578303d     8x bl or blx=0x%
 800aba8:	20783830 31736e69 2578303d 20783430     08x ins1=0x%04x 
 800abb8:	32736e69 2578303d 0a783430 00000000     ins2=0x%04x.....
 800abc8:	6c383025 00000078 666c652e 00000000     %08lx....elf....
 800abd8:	75622f2e 2f646c69 74736574 00000000     ./build/test....
 800abe8:	00000a0d 5d73255b 0000000a 5d73255b     ....[%s]....[%s]
 800abf8:	646f6320 74735f65 5f747261 72646461      code_start_addr
 800ac08:	2578303d 6320786c 5f65646f 5f646e65     =0x%lx code_end_
 800ac18:	72646461 2578303d 6320786c 5f65646f     addr=0x%lx code_
 800ac28:	657a6973 646c253d 2578303c 0a3e786c     size=%ld<0x%lx>.
 800ac38:	00000000 5d73255b 61747320 735f6b63     ....[%s] stack_s
 800ac48:	74726174 6464615f 78303d72 20786c25     tart_addr=0x%lx 
 800ac58:	63617473 6e655f6b 64615f64 303d7264     stack_end_addr=0
 800ac68:	786c2578 61747320 735f6b63 3d657a69     x%lx stack_size=
 800ac78:	3c646c25 6c257830 000a3e78 5d73255b     %ld<0x%lx>..[%s]
 800ac88:	61656820 74735f70 5f747261 72646461      heap_start_addr
 800ac98:	2578303d 6820786c 5f706165 5f646e65     =0x%lx heap_end_
 800aca8:	72646461 2578303d 6820786c 5f706165     addr=0x%lx heap_
 800acb8:	657a6973 646c253d 2578303c 0a3e786c     size=%ld<0x%lx>.
 800acc8:	00000000 303d7073 786c2578 0000000a     ....sp=0x%lx....
 800acd8:	303d6370 786c2578 0000000a 72646461     pc=0x%lx....addr
 800ace8:	30253a20 000a7838 646e6966 20646c20      :%08x..find ld 
 800acf8:	30257830 000a7838 63617274 63616265     0x%08x..tracebac
 800ad08:	7525206b 202d2d20 3d20726c 25783020     k %u -- lr = 0x%
 800ad18:	20783830 66202d2d 203d2070 30257830     08x -- fp = 0x%0
 800ad28:	000a7838 63617473 696f506b 7265746e     8x..stackPointer
 800ad38:	2578303d 00000a78                       =0x%x...

0800ad40 <__func__.7593>:
 800ad40:	706d7564 6174735f 00006b63              dump_stack..

0800ad4c <__func__.7654>:
 800ad4c:	6b636162 63617274 61635f65 735f6c6c     backtrace_call_s
 800ad5c:	6b636174 00000000                       tack....

0800ad64 <__func__.7666>:
 800ad64:	6e697270 61635f74 735f6c6c 6b636174     print_call_stack
 800ad74:	00000000                                ....

0800ad78 <__func__.7675>:
 800ad78:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 800ad88:	00000033                                3...

0800ad8c <__func__.7679>:
 800ad8c:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 800ad9c:	00000032                                2...

0800ada0 <__func__.7683>:
 800ada0:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 800adb0:	00000031                                1...

0800adb4 <__func__.7690>:
 800adb4:	6b636162 63617274 65745f65 00007473     backtrace_test..

0800adc4 <_global_impure_ptr>:
 800adc4:	20000018                                ... 

0800adc8 <blanks.8652>:
 800adc8:	20202020 20202020 20202020 20202020                     

0800add8 <zeroes.8653>:
 800add8:	30303030 30303030 30303030 30303030     0000000000000000
 800ade8:	00464e49 00666e69 004e414e 006e616e     INF.inf.NAN.nan.
 800adf8:	33323130 37363534 42413938 46454443     0123456789ABCDEF
 800ae08:	00000000 33323130 37363534 62613938     ....0123456789ab
 800ae18:	66656463 00000000 6c756e28 0000296c     cdef....(null)..
 800ae28:	00000030 004e614e 69666e49 7974696e     0...NaN.Infinity
 800ae38:	00000000 6c6c6142 7320636f 65636375     ....Balloc succe
 800ae48:	64656465 00000000 2e2f2e2e 2e2e2f2e     eded....../../..
 800ae58:	2f2e2e2f 2e2f2e2e 2e2e2f2e 2f2e2e2f     /../../../../../
 800ae68:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
 800ae78:	642f6269 2e616f74 00000063 00000000     ib/dtoa.c.......

0800ae88 <p05.7429>:
 800ae88:	00000005 00000019 0000007d 00000000     ........}.......

0800ae98 <__mprec_tens>:
 800ae98:	00000000 3ff00000 00000000 40240000     .......?......$@
 800aea8:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 800aeb8:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 800aec8:	00000000 412e8480 00000000 416312d0     .......A......cA
 800aed8:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 800aee8:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 800aef8:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 800af08:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 800af18:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 800af28:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 800af38:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 800af48:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 800af58:	79d99db4 44ea7843                       ...yCx.D

0800af60 <__mprec_tinytens>:
 800af60:	97d889bc 3c9cd2b2 d5a8a733 3949f623     .......<3...#.I9
 800af70:	44f4a73d 32a50ffd cf8c979d 255bba08     =..D...2......[%
 800af80:	64ac6f43 0ac80628                       Co.d(...

0800af88 <__mprec_bigtens>:
 800af88:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 800af98:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 800afa8:	7f73bf3c 75154fdd 2e2f2e2e 2e2e2f2e     <.s..O.u../../..
 800afb8:	2f2e2e2f 2e2f2e2e 2e2e2f2e 2f2e2e2f     /../../../../../
 800afc8:	6c77656e 6c2f6269 2f636269 6c647473     newlib/libc/stdl
 800afd8:	6d2f6269 63657270 0000632e              ib/mprec.c..

0800afe4 <blanks.8631>:
 800afe4:	20202020 20202020 20202020 20202020                     

0800aff4 <zeroes.8632>:
 800aff4:	30303030 30303030 30303030 30303030     0000000000000000
 800b004:	7566202c 6974636e 203a6e6f 00000000     , function: ....
 800b014:	65737361 6f697472 2522206e 66202273     assertion "%s" f
 800b024:	656c6961 66203a64 20656c69 22732522     ailed: file "%s"
 800b034:	696c202c 2520656e 25732564 00000a73     , line %d%s%s...
 800b044:	00000043 49534f50 00000058 0000002e     C...POSIX.......

0800b054 <_ctype_>:
 800b054:	20202000 20202020 28282020 20282828     .         ((((( 
 800b064:	20202020 20202020 20202020 20202020                     
 800b074:	10108820 10101010 10101010 10101010      ...............
 800b084:	04040410 04040404 10040404 10101010     ................
 800b094:	41411010 41414141 01010101 01010101     ..AAAAAA........
 800b0a4:	01010101 01010101 01010101 10101010     ................
 800b0b4:	42421010 42424242 02020202 02020202     ..BBBBBB........
 800b0c4:	02020202 02020202 02020202 10101010     ................
 800b0d4:	00000020 00000000 00000000 00000000      ...............
	...

0800b158 <__EH_FRAME_BEGIN__>:
 800b158:	00000000                                ....
