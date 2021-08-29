
../../../../build/stm32f4xx/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_stext>:
 8000000:	20017fff 	.word	0x20017fff
 8000004:	080001d5 	.word	0x080001d5
 8000008:	08000a97 	.word	0x08000a97
 800000c:	08000aa5 	.word	0x08000aa5
 8000010:	08000ac9 	.word	0x08000ac9
 8000014:	08000acf 	.word	0x08000acf
 8000018:	08000ad5 	.word	0x08000ad5
	...
 800002c:	08000adb 	.word	0x08000adb
 8000030:	08000ae9 	.word	0x08000ae9
 8000034:	00000000 	.word	0x00000000
 8000038:	08000225 	.word	0x08000225
 800003c:	08000af7 	.word	0x08000af7
 8000040:	08000225 	.word	0x08000225
 8000044:	08000225 	.word	0x08000225
 8000048:	08000225 	.word	0x08000225
 800004c:	08000225 	.word	0x08000225
 8000050:	08000225 	.word	0x08000225
 8000054:	08000225 	.word	0x08000225
 8000058:	08000225 	.word	0x08000225
 800005c:	08000225 	.word	0x08000225
 8000060:	08000225 	.word	0x08000225
 8000064:	08000225 	.word	0x08000225
 8000068:	08000225 	.word	0x08000225
 800006c:	08000225 	.word	0x08000225
 8000070:	08000225 	.word	0x08000225
 8000074:	08000225 	.word	0x08000225
 8000078:	08000225 	.word	0x08000225
 800007c:	08000225 	.word	0x08000225
 8000080:	08000225 	.word	0x08000225
 8000084:	08000225 	.word	0x08000225
 8000088:	08000225 	.word	0x08000225
	...
 800009c:	08000225 	.word	0x08000225
 80000a0:	08000225 	.word	0x08000225
 80000a4:	08000225 	.word	0x08000225
 80000a8:	08000225 	.word	0x08000225
 80000ac:	08000225 	.word	0x08000225
 80000b0:	08000225 	.word	0x08000225
 80000b4:	08000225 	.word	0x08000225
 80000b8:	08000225 	.word	0x08000225
 80000bc:	08000225 	.word	0x08000225
 80000c0:	08000225 	.word	0x08000225
 80000c4:	08000225 	.word	0x08000225
 80000c8:	08000225 	.word	0x08000225
 80000cc:	08000225 	.word	0x08000225
 80000d0:	08000225 	.word	0x08000225
 80000d4:	08000225 	.word	0x08000225
 80000d8:	08000225 	.word	0x08000225
 80000dc:	00000000 	.word	0x00000000
 80000e0:	08000225 	.word	0x08000225
 80000e4:	08000225 	.word	0x08000225
 80000e8:	08000225 	.word	0x08000225
	...
 80000fc:	08000225 	.word	0x08000225
 8000100:	00000000 	.word	0x00000000
 8000104:	08000225 	.word	0x08000225
 8000108:	08000225 	.word	0x08000225
 800010c:	08000225 	.word	0x08000225
	...
 8000120:	08000225 	.word	0x08000225
 8000124:	08000225 	.word	0x08000225
 8000128:	08000225 	.word	0x08000225
 800012c:	08000225 	.word	0x08000225
 8000130:	08000225 	.word	0x08000225
	...
 800014c:	08000225 	.word	0x08000225
 8000150:	08000225 	.word	0x08000225
 8000154:	08000225 	.word	0x08000225
 8000158:	08000225 	.word	0x08000225
 800015c:	08000225 	.word	0x08000225
 8000160:	08000225 	.word	0x08000225
 8000164:	08000225 	.word	0x08000225
	...
 8000184:	08000225 	.word	0x08000225
	...
 8000190:	08000225 	.word	0x08000225

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
 80001ac:	200009cc 	.word	0x200009cc
 80001b0:	00000000 	.word	0x00000000
 80001b4:	08009d98 	.word	0x08009d98

080001b8 <frame_dummy>:
 80001b8:	b508      	push	{r3, lr}
 80001ba:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <frame_dummy+0x10>)
 80001bc:	b11b      	cbz	r3, 80001c6 <frame_dummy+0xe>
 80001be:	4903      	ldr	r1, [pc, #12]	; (80001cc <frame_dummy+0x14>)
 80001c0:	4803      	ldr	r0, [pc, #12]	; (80001d0 <frame_dummy+0x18>)
 80001c2:	f3af 8000 	nop.w
 80001c6:	bd08      	pop	{r3, pc}
 80001c8:	00000000 	.word	0x00000000
 80001cc:	200009d0 	.word	0x200009d0
 80001d0:	08009d98 	.word	0x08009d98

080001d4 <Reset_Handler>:

    .section  .text.Reset_Handler
  .weak  Reset_Handler
  .type  Reset_Handler, %function
Reset_Handler:  
  ldr   sp, =_estack    		 /* set stack pointer */
 80001d4:	f8df d034 	ldr.w	sp, [pc, #52]	; 800020c <LoopFillZerobss+0x14>

/* Copy the data segment initializers from flash to SRAM */  
  movs  r1, #0
 80001d8:	2100      	movs	r1, #0
  b  LoopCopyDataInit
 80001da:	e003      	b.n	80001e4 <LoopCopyDataInit>

080001dc <CopyDataInit>:

CopyDataInit:
  ldr  r3, =_sidata
 80001dc:	4b0c      	ldr	r3, [pc, #48]	; (8000210 <LoopFillZerobss+0x18>)
  ldr  r3, [r3, r1]
 80001de:	585b      	ldr	r3, [r3, r1]
  str  r3, [r0, r1]
 80001e0:	5043      	str	r3, [r0, r1]
  adds  r1, r1, #4
 80001e2:	3104      	adds	r1, #4

080001e4 <LoopCopyDataInit>:
    
LoopCopyDataInit:
  ldr  r0, =_sdata
 80001e4:	480b      	ldr	r0, [pc, #44]	; (8000214 <LoopFillZerobss+0x1c>)
  ldr  r3, =_edata
 80001e6:	4b0c      	ldr	r3, [pc, #48]	; (8000218 <LoopFillZerobss+0x20>)
  adds  r2, r0, r1
 80001e8:	1842      	adds	r2, r0, r1
  cmp  r2, r3
 80001ea:	429a      	cmp	r2, r3
  bcc  CopyDataInit
 80001ec:	d3f6      	bcc.n	80001dc <CopyDataInit>
  ldr  r2, =_sbss
 80001ee:	4a0b      	ldr	r2, [pc, #44]	; (800021c <LoopFillZerobss+0x24>)
  b  LoopFillZerobss
 80001f0:	e002      	b.n	80001f8 <LoopFillZerobss>

080001f2 <FillZerobss>:
/* Zero fill the bss segment. */  
FillZerobss:
  movs  r3, #0
 80001f2:	2300      	movs	r3, #0
  str  r3, [r2], #4
 80001f4:	f842 3b04 	str.w	r3, [r2], #4

080001f8 <LoopFillZerobss>:
    
LoopFillZerobss:
  ldr  r3, = _ebss
 80001f8:	4b09      	ldr	r3, [pc, #36]	; (8000220 <LoopFillZerobss+0x28>)
  cmp  r2, r3
 80001fa:	429a      	cmp	r2, r3
  bcc  FillZerobss
 80001fc:	d3f9      	bcc.n	80001f2 <FillZerobss>

/* Call the clock system intitialization function.*/
  bl  SystemInit   
 80001fe:	f000 fd19 	bl	8000c34 <SystemInit>
/* Call static constructors */
    bl __libc_init_array
 8000202:	f003 fd93 	bl	8003d2c <__libc_init_array>
/* Call the application's entry point.*/
  bl  main
 8000206:	f000 f80e 	bl	8000226 <main>
  bx  lr    
 800020a:	4770      	bx	lr
  ldr   sp, =_estack    		 /* set stack pointer */
 800020c:	20017fff 	.word	0x20017fff
  ldr  r3, =_sidata
 8000210:	08009da4 	.word	0x08009da4
  ldr  r0, =_sdata
 8000214:	20000000 	.word	0x20000000
  ldr  r3, =_edata
 8000218:	200009cc 	.word	0x200009cc
  ldr  r2, =_sbss
 800021c:	200009cc 	.word	0x200009cc
  ldr  r3, = _ebss
 8000220:	20000c58 	.word	0x20000c58

08000224 <ADC_IRQHandler>:
 * @retval None       
*/
    .section  .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b  Infinite_Loop
 8000224:	e7fe      	b.n	8000224 <ADC_IRQHandler>

08000226 <main>:
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
 8000226:	b580      	push	{r7, lr}
 8000228:	af00      	add	r7, sp, #0
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
  HAL_Init();
 800022a:	f000 fd39 	bl	8000ca0 <HAL_Init>
//  __asm("svc 0");
  /* Configure the system clock to 84 MHz */
  SystemClock_Config();
 800022e:	f000 f813 	bl	8000258 <SystemClock_Config>

  serial_init();
 8000232:	f000 f873 	bl	800031c <serial_init>
  
    //   printf("&__shell_command_start=0x%x &__shell_command_end=0x%x\r\n",\
        &__shell_command_start, &__shell_command_end);
    // shell_command_t * scmd = &__shell_command_start;

  BSP_LED_Init(LED2);
 8000236:	2000      	movs	r0, #0
 8000238:	f002 fa08 	bl	800264c <BSP_LED_Init>
  backtrace_test();
 800023c:	f003 fa2a 	bl	8003694 <backtrace_test>

  InitStepper();
 8000240:	f000 fb14 	bl	800086c <InitStepper>
  while (1) {
    BSP_LED_Toggle(LED2);
 8000244:	2000      	movs	r0, #0
 8000246:	f002 fa4b 	bl	80026e0 <BSP_LED_Toggle>

    HAL_Delay(1);
 800024a:	2001      	movs	r0, #1
 800024c:	f000 fd9a 	bl	8000d84 <HAL_Delay>
    
    step(2);
 8000250:	2002      	movs	r0, #2
 8000252:	f000 fa15 	bl	8000680 <step>
    BSP_LED_Toggle(LED2);
 8000256:	e7f5      	b.n	8000244 <main+0x1e>

08000258 <SystemClock_Config>:
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
 8000258:	b580      	push	{r7, lr}
 800025a:	b094      	sub	sp, #80	; 0x50
 800025c:	af00      	add	r7, sp, #0
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
 800025e:	2300      	movs	r3, #0
 8000260:	60bb      	str	r3, [r7, #8]
 8000262:	4b29      	ldr	r3, [pc, #164]	; (8000308 <SystemClock_Config+0xb0>)
 8000264:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000266:	4a28      	ldr	r2, [pc, #160]	; (8000308 <SystemClock_Config+0xb0>)
 8000268:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800026c:	6413      	str	r3, [r2, #64]	; 0x40
 800026e:	4b26      	ldr	r3, [pc, #152]	; (8000308 <SystemClock_Config+0xb0>)
 8000270:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000272:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000276:	60bb      	str	r3, [r7, #8]
 8000278:	68bb      	ldr	r3, [r7, #8]
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
 800027a:	2300      	movs	r3, #0
 800027c:	607b      	str	r3, [r7, #4]
 800027e:	4b23      	ldr	r3, [pc, #140]	; (800030c <SystemClock_Config+0xb4>)
 8000280:	681b      	ldr	r3, [r3, #0]
 8000282:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 8000286:	4a21      	ldr	r2, [pc, #132]	; (800030c <SystemClock_Config+0xb4>)
 8000288:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800028c:	6013      	str	r3, [r2, #0]
 800028e:	4b1f      	ldr	r3, [pc, #124]	; (800030c <SystemClock_Config+0xb4>)
 8000290:	681b      	ldr	r3, [r3, #0]
 8000292:	f403 4340 	and.w	r3, r3, #49152	; 0xc000
 8000296:	607b      	str	r3, [r7, #4]
 8000298:	687b      	ldr	r3, [r7, #4]
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 800029a:	2302      	movs	r3, #2
 800029c:	60fb      	str	r3, [r7, #12]
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 800029e:	2301      	movs	r3, #1
 80002a0:	61bb      	str	r3, [r7, #24]
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
 80002a2:	2310      	movs	r3, #16
 80002a4:	61fb      	str	r3, [r7, #28]
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 80002a6:	2302      	movs	r3, #2
 80002a8:	627b      	str	r3, [r7, #36]	; 0x24
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
 80002aa:	2300      	movs	r3, #0
 80002ac:	62bb      	str	r3, [r7, #40]	; 0x28
  RCC_OscInitStruct.PLL.PLLM = 16;
 80002ae:	2310      	movs	r3, #16
 80002b0:	62fb      	str	r3, [r7, #44]	; 0x2c
  RCC_OscInitStruct.PLL.PLLN = 336;
 80002b2:	f44f 73a8 	mov.w	r3, #336	; 0x150
 80002b6:	633b      	str	r3, [r7, #48]	; 0x30
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
 80002b8:	2304      	movs	r3, #4
 80002ba:	637b      	str	r3, [r7, #52]	; 0x34
  RCC_OscInitStruct.PLL.PLLQ = 7;
 80002bc:	2307      	movs	r3, #7
 80002be:	63bb      	str	r3, [r7, #56]	; 0x38
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 80002c0:	f107 030c 	add.w	r3, r7, #12
 80002c4:	4618      	mov	r0, r3
 80002c6:	f000 fe9d 	bl	8001004 <HAL_RCC_OscConfig>
 80002ca:	4603      	mov	r3, r0
 80002cc:	2b00      	cmp	r3, #0
 80002ce:	d001      	beq.n	80002d4 <SystemClock_Config+0x7c>
  {
    Error_Handler();
 80002d0:	f000 f81e 	bl	8000310 <Error_Handler>
  }
 
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
 80002d4:	230f      	movs	r3, #15
 80002d6:	63fb      	str	r3, [r7, #60]	; 0x3c
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 80002d8:	2302      	movs	r3, #2
 80002da:	643b      	str	r3, [r7, #64]	; 0x40
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 80002dc:	2300      	movs	r3, #0
 80002de:	647b      	str	r3, [r7, #68]	; 0x44
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
 80002e0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80002e4:	64bb      	str	r3, [r7, #72]	; 0x48
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
 80002e6:	2300      	movs	r3, #0
 80002e8:	64fb      	str	r3, [r7, #76]	; 0x4c
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 80002ea:	f107 033c 	add.w	r3, r7, #60	; 0x3c
 80002ee:	2102      	movs	r1, #2
 80002f0:	4618      	mov	r0, r3
 80002f2:	f001 f8ff 	bl	80014f4 <HAL_RCC_ClockConfig>
 80002f6:	4603      	mov	r3, r0
 80002f8:	2b00      	cmp	r3, #0
 80002fa:	d001      	beq.n	8000300 <SystemClock_Config+0xa8>
  {
    Error_Handler();
 80002fc:	f000 f808 	bl	8000310 <Error_Handler>
  }
}
 8000300:	bf00      	nop
 8000302:	3750      	adds	r7, #80	; 0x50
 8000304:	46bd      	mov	sp, r7
 8000306:	bd80      	pop	{r7, pc}
 8000308:	40023800 	.word	0x40023800
 800030c:	40007000 	.word	0x40007000

08000310 <Error_Handler>:
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
 8000310:	b580      	push	{r7, lr}
 8000312:	af00      	add	r7, sp, #0
  /* Turn LED2 on */
  BSP_LED_On(LED2);
 8000314:	2000      	movs	r0, #0
 8000316:	f002 f9cf 	bl	80026b8 <BSP_LED_On>
  while(1)
 800031a:	e7fe      	b.n	800031a <Error_Handler+0xa>

0800031c <serial_init>:
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

void serial_init(void) 
{
 800031c:	b580      	push	{r7, lr}
 800031e:	af00      	add	r7, sp, #0
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
  UartHandle.Instance          = USARTx;
 8000320:	4b11      	ldr	r3, [pc, #68]	; (8000368 <serial_init+0x4c>)
 8000322:	4a12      	ldr	r2, [pc, #72]	; (800036c <serial_init+0x50>)
 8000324:	601a      	str	r2, [r3, #0]
  
  UartHandle.Init.BaudRate     = 921600;
 8000326:	4b10      	ldr	r3, [pc, #64]	; (8000368 <serial_init+0x4c>)
 8000328:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 800032c:	605a      	str	r2, [r3, #4]
  UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
 800032e:	4b0e      	ldr	r3, [pc, #56]	; (8000368 <serial_init+0x4c>)
 8000330:	2200      	movs	r2, #0
 8000332:	609a      	str	r2, [r3, #8]
  UartHandle.Init.StopBits     = UART_STOPBITS_1;
 8000334:	4b0c      	ldr	r3, [pc, #48]	; (8000368 <serial_init+0x4c>)
 8000336:	2200      	movs	r2, #0
 8000338:	60da      	str	r2, [r3, #12]
  UartHandle.Init.Parity       = UART_PARITY_NONE;
 800033a:	4b0b      	ldr	r3, [pc, #44]	; (8000368 <serial_init+0x4c>)
 800033c:	2200      	movs	r2, #0
 800033e:	611a      	str	r2, [r3, #16]
  UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
 8000340:	4b09      	ldr	r3, [pc, #36]	; (8000368 <serial_init+0x4c>)
 8000342:	2200      	movs	r2, #0
 8000344:	619a      	str	r2, [r3, #24]
  UartHandle.Init.Mode         = UART_MODE_TX_RX;
 8000346:	4b08      	ldr	r3, [pc, #32]	; (8000368 <serial_init+0x4c>)
 8000348:	220c      	movs	r2, #12
 800034a:	615a      	str	r2, [r3, #20]
  UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
 800034c:	4b06      	ldr	r3, [pc, #24]	; (8000368 <serial_init+0x4c>)
 800034e:	2200      	movs	r2, #0
 8000350:	61da      	str	r2, [r3, #28]
    
  if(HAL_UART_Init(&UartHandle) != HAL_OK) {
 8000352:	4805      	ldr	r0, [pc, #20]	; (8000368 <serial_init+0x4c>)
 8000354:	f001 fdd3 	bl	8001efe <HAL_UART_Init>
 8000358:	4603      	mov	r3, r0
 800035a:	2b00      	cmp	r3, #0
 800035c:	d001      	beq.n	8000362 <serial_init+0x46>
    /* Initialization Error */
    Error_Handler(); 
 800035e:	f7ff ffd7 	bl	8000310 <Error_Handler>
  }
  
}
 8000362:	bf00      	nop
 8000364:	bd80      	pop	{r7, pc}
 8000366:	bf00      	nop
 8000368:	20000be8 	.word	0x20000be8
 800036c:	40004400 	.word	0x40004400

08000370 <__io_putchar>:
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
 8000370:	b580      	push	{r7, lr}
 8000372:	b082      	sub	sp, #8
 8000374:	af00      	add	r7, sp, #0
 8000376:	6078      	str	r0, [r7, #4]
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 8000378:	1d39      	adds	r1, r7, #4
 800037a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800037e:	2201      	movs	r2, #1
 8000380:	4803      	ldr	r0, [pc, #12]	; (8000390 <__io_putchar+0x20>)
 8000382:	f001 fe09 	bl	8001f98 <HAL_UART_Transmit>

  return ch;
 8000386:	687b      	ldr	r3, [r7, #4]
}
 8000388:	4618      	mov	r0, r3
 800038a:	3708      	adds	r7, #8
 800038c:	46bd      	mov	sp, r7
 800038e:	bd80      	pop	{r7, pc}
 8000390:	20000be8 	.word	0x20000be8

08000394 <__io_getchar>:
GETCHAR_PROTOTYPE
{
 8000394:	b580      	push	{r7, lr}
 8000396:	b082      	sub	sp, #8
 8000398:	af00      	add	r7, sp, #0
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Receive(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 800039a:	1df9      	adds	r1, r7, #7
 800039c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80003a0:	2201      	movs	r2, #1
 80003a2:	4804      	ldr	r0, [pc, #16]	; (80003b4 <__io_getchar+0x20>)
 80003a4:	f001 fe8a 	bl	80020bc <HAL_UART_Receive>

  return ch;
 80003a8:	79fb      	ldrb	r3, [r7, #7]
 80003aa:	4618      	mov	r0, r3
 80003ac:	3708      	adds	r7, #8
 80003ae:	46bd      	mov	sp, r7
 80003b0:	bd80      	pop	{r7, pc}
 80003b2:	bf00      	nop
 80003b4:	20000be8 	.word	0x20000be8

080003b8 <setSpeed>:

/*
 * Sets the speed in revs per minute
 */
void setSpeed(long whatSpeed)
{
 80003b8:	b480      	push	{r7}
 80003ba:	b083      	sub	sp, #12
 80003bc:	af00      	add	r7, sp, #0
 80003be:	6078      	str	r0, [r7, #4]
  this.step_delay = 60L * 1000L * 1000L / this.number_of_steps / whatSpeed;
 80003c0:	4b08      	ldr	r3, [pc, #32]	; (80003e4 <setSpeed+0x2c>)
 80003c2:	69db      	ldr	r3, [r3, #28]
 80003c4:	4a08      	ldr	r2, [pc, #32]	; (80003e8 <setSpeed+0x30>)
 80003c6:	fb92 f2f3 	sdiv	r2, r2, r3
 80003ca:	687b      	ldr	r3, [r7, #4]
 80003cc:	fb92 f3f3 	sdiv	r3, r2, r3
 80003d0:	461a      	mov	r2, r3
 80003d2:	4b04      	ldr	r3, [pc, #16]	; (80003e4 <setSpeed+0x2c>)
 80003d4:	619a      	str	r2, [r3, #24]
}
 80003d6:	bf00      	nop
 80003d8:	370c      	adds	r7, #12
 80003da:	46bd      	mov	sp, r7
 80003dc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003e0:	4770      	bx	lr
 80003e2:	bf00      	nop
 80003e4:	200009e8 	.word	0x200009e8
 80003e8:	03938700 	.word	0x03938700

080003ec <stepMotor>:

void stepMotor(int thisStep)
{
 80003ec:	b580      	push	{r7, lr}
 80003ee:	b082      	sub	sp, #8
 80003f0:	af00      	add	r7, sp, #0
 80003f2:	6078      	str	r0, [r7, #4]
    // printf("[%s] start thisStep=%d\r\n", __func__, thisStep);
    switch (thisStep) {
 80003f4:	687b      	ldr	r3, [r7, #4]
 80003f6:	2b07      	cmp	r3, #7
 80003f8:	f200 813c 	bhi.w	8000674 <stepMotor+0x288>
 80003fc:	a201      	add	r2, pc, #4	; (adr r2, 8000404 <stepMotor+0x18>)
 80003fe:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000402:	bf00      	nop
 8000404:	08000425 	.word	0x08000425
 8000408:	0800046f 	.word	0x0800046f
 800040c:	080004b9 	.word	0x080004b9
 8000410:	08000503 	.word	0x08000503
 8000414:	0800054d 	.word	0x0800054d
 8000418:	08000597 	.word	0x08000597
 800041c:	080005e1 	.word	0x080005e1
 8000420:	0800062b 	.word	0x0800062b
      case 0:  // 0001
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 8000424:	4b95      	ldr	r3, [pc, #596]	; (800067c <stepMotor+0x290>)
 8000426:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000428:	4b94      	ldr	r3, [pc, #592]	; (800067c <stepMotor+0x290>)
 800042a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800042c:	b29b      	uxth	r3, r3
 800042e:	2200      	movs	r2, #0
 8000430:	4619      	mov	r1, r3
 8000432:	f001 fd31 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 8000436:	4b91      	ldr	r3, [pc, #580]	; (800067c <stepMotor+0x290>)
 8000438:	6b18      	ldr	r0, [r3, #48]	; 0x30
 800043a:	4b90      	ldr	r3, [pc, #576]	; (800067c <stepMotor+0x290>)
 800043c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800043e:	b29b      	uxth	r3, r3
 8000440:	2200      	movs	r2, #0
 8000442:	4619      	mov	r1, r3
 8000444:	f001 fd28 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 8000448:	4b8c      	ldr	r3, [pc, #560]	; (800067c <stepMotor+0x290>)
 800044a:	6b98      	ldr	r0, [r3, #56]	; 0x38
 800044c:	4b8b      	ldr	r3, [pc, #556]	; (800067c <stepMotor+0x290>)
 800044e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000450:	b29b      	uxth	r3, r3
 8000452:	2200      	movs	r2, #0
 8000454:	4619      	mov	r1, r3
 8000456:	f001 fd1f 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
 800045a:	4b88      	ldr	r3, [pc, #544]	; (800067c <stepMotor+0x290>)
 800045c:	6c18      	ldr	r0, [r3, #64]	; 0x40
 800045e:	4b87      	ldr	r3, [pc, #540]	; (800067c <stepMotor+0x290>)
 8000460:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000462:	b29b      	uxth	r3, r3
 8000464:	2201      	movs	r2, #1
 8000466:	4619      	mov	r1, r3
 8000468:	f001 fd16 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 800046c:	e102      	b.n	8000674 <stepMotor+0x288>
      case 1:  // 0011
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 800046e:	4b83      	ldr	r3, [pc, #524]	; (800067c <stepMotor+0x290>)
 8000470:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000472:	4b82      	ldr	r3, [pc, #520]	; (800067c <stepMotor+0x290>)
 8000474:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000476:	b29b      	uxth	r3, r3
 8000478:	2200      	movs	r2, #0
 800047a:	4619      	mov	r1, r3
 800047c:	f001 fd0c 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 8000480:	4b7e      	ldr	r3, [pc, #504]	; (800067c <stepMotor+0x290>)
 8000482:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000484:	4b7d      	ldr	r3, [pc, #500]	; (800067c <stepMotor+0x290>)
 8000486:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000488:	b29b      	uxth	r3, r3
 800048a:	2200      	movs	r2, #0
 800048c:	4619      	mov	r1, r3
 800048e:	f001 fd03 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
 8000492:	4b7a      	ldr	r3, [pc, #488]	; (800067c <stepMotor+0x290>)
 8000494:	6b98      	ldr	r0, [r3, #56]	; 0x38
 8000496:	4b79      	ldr	r3, [pc, #484]	; (800067c <stepMotor+0x290>)
 8000498:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800049a:	b29b      	uxth	r3, r3
 800049c:	2201      	movs	r2, #1
 800049e:	4619      	mov	r1, r3
 80004a0:	f001 fcfa 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
 80004a4:	4b75      	ldr	r3, [pc, #468]	; (800067c <stepMotor+0x290>)
 80004a6:	6c18      	ldr	r0, [r3, #64]	; 0x40
 80004a8:	4b74      	ldr	r3, [pc, #464]	; (800067c <stepMotor+0x290>)
 80004aa:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80004ac:	b29b      	uxth	r3, r3
 80004ae:	2201      	movs	r2, #1
 80004b0:	4619      	mov	r1, r3
 80004b2:	f001 fcf1 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 80004b6:	e0dd      	b.n	8000674 <stepMotor+0x288>
      case 2:  //0010
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 80004b8:	4b70      	ldr	r3, [pc, #448]	; (800067c <stepMotor+0x290>)
 80004ba:	6a98      	ldr	r0, [r3, #40]	; 0x28
 80004bc:	4b6f      	ldr	r3, [pc, #444]	; (800067c <stepMotor+0x290>)
 80004be:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004c0:	b29b      	uxth	r3, r3
 80004c2:	2200      	movs	r2, #0
 80004c4:	4619      	mov	r1, r3
 80004c6:	f001 fce7 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 80004ca:	4b6c      	ldr	r3, [pc, #432]	; (800067c <stepMotor+0x290>)
 80004cc:	6b18      	ldr	r0, [r3, #48]	; 0x30
 80004ce:	4b6b      	ldr	r3, [pc, #428]	; (800067c <stepMotor+0x290>)
 80004d0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80004d2:	b29b      	uxth	r3, r3
 80004d4:	2200      	movs	r2, #0
 80004d6:	4619      	mov	r1, r3
 80004d8:	f001 fcde 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
 80004dc:	4b67      	ldr	r3, [pc, #412]	; (800067c <stepMotor+0x290>)
 80004de:	6b98      	ldr	r0, [r3, #56]	; 0x38
 80004e0:	4b66      	ldr	r3, [pc, #408]	; (800067c <stepMotor+0x290>)
 80004e2:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80004e4:	b29b      	uxth	r3, r3
 80004e6:	2201      	movs	r2, #1
 80004e8:	4619      	mov	r1, r3
 80004ea:	f001 fcd5 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 80004ee:	4b63      	ldr	r3, [pc, #396]	; (800067c <stepMotor+0x290>)
 80004f0:	6c18      	ldr	r0, [r3, #64]	; 0x40
 80004f2:	4b62      	ldr	r3, [pc, #392]	; (800067c <stepMotor+0x290>)
 80004f4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80004f6:	b29b      	uxth	r3, r3
 80004f8:	2200      	movs	r2, #0
 80004fa:	4619      	mov	r1, r3
 80004fc:	f001 fccc 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 8000500:	e0b8      	b.n	8000674 <stepMotor+0x288>
      case 3:  //0110
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 8000502:	4b5e      	ldr	r3, [pc, #376]	; (800067c <stepMotor+0x290>)
 8000504:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000506:	4b5d      	ldr	r3, [pc, #372]	; (800067c <stepMotor+0x290>)
 8000508:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800050a:	b29b      	uxth	r3, r3
 800050c:	2200      	movs	r2, #0
 800050e:	4619      	mov	r1, r3
 8000510:	f001 fcc2 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
 8000514:	4b59      	ldr	r3, [pc, #356]	; (800067c <stepMotor+0x290>)
 8000516:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000518:	4b58      	ldr	r3, [pc, #352]	; (800067c <stepMotor+0x290>)
 800051a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800051c:	b29b      	uxth	r3, r3
 800051e:	2201      	movs	r2, #1
 8000520:	4619      	mov	r1, r3
 8000522:	f001 fcb9 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
 8000526:	4b55      	ldr	r3, [pc, #340]	; (800067c <stepMotor+0x290>)
 8000528:	6b98      	ldr	r0, [r3, #56]	; 0x38
 800052a:	4b54      	ldr	r3, [pc, #336]	; (800067c <stepMotor+0x290>)
 800052c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800052e:	b29b      	uxth	r3, r3
 8000530:	2201      	movs	r2, #1
 8000532:	4619      	mov	r1, r3
 8000534:	f001 fcb0 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 8000538:	4b50      	ldr	r3, [pc, #320]	; (800067c <stepMotor+0x290>)
 800053a:	6c18      	ldr	r0, [r3, #64]	; 0x40
 800053c:	4b4f      	ldr	r3, [pc, #316]	; (800067c <stepMotor+0x290>)
 800053e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000540:	b29b      	uxth	r3, r3
 8000542:	2200      	movs	r2, #0
 8000544:	4619      	mov	r1, r3
 8000546:	f001 fca7 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 800054a:	e093      	b.n	8000674 <stepMotor+0x288>
    case 4:  //0100
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 800054c:	4b4b      	ldr	r3, [pc, #300]	; (800067c <stepMotor+0x290>)
 800054e:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000550:	4b4a      	ldr	r3, [pc, #296]	; (800067c <stepMotor+0x290>)
 8000552:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000554:	b29b      	uxth	r3, r3
 8000556:	2200      	movs	r2, #0
 8000558:	4619      	mov	r1, r3
 800055a:	f001 fc9d 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
 800055e:	4b47      	ldr	r3, [pc, #284]	; (800067c <stepMotor+0x290>)
 8000560:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000562:	4b46      	ldr	r3, [pc, #280]	; (800067c <stepMotor+0x290>)
 8000564:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000566:	b29b      	uxth	r3, r3
 8000568:	2201      	movs	r2, #1
 800056a:	4619      	mov	r1, r3
 800056c:	f001 fc94 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 8000570:	4b42      	ldr	r3, [pc, #264]	; (800067c <stepMotor+0x290>)
 8000572:	6b98      	ldr	r0, [r3, #56]	; 0x38
 8000574:	4b41      	ldr	r3, [pc, #260]	; (800067c <stepMotor+0x290>)
 8000576:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000578:	b29b      	uxth	r3, r3
 800057a:	2200      	movs	r2, #0
 800057c:	4619      	mov	r1, r3
 800057e:	f001 fc8b 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 8000582:	4b3e      	ldr	r3, [pc, #248]	; (800067c <stepMotor+0x290>)
 8000584:	6c18      	ldr	r0, [r3, #64]	; 0x40
 8000586:	4b3d      	ldr	r3, [pc, #244]	; (800067c <stepMotor+0x290>)
 8000588:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800058a:	b29b      	uxth	r3, r3
 800058c:	2200      	movs	r2, #0
 800058e:	4619      	mov	r1, r3
 8000590:	f001 fc82 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 8000594:	e06e      	b.n	8000674 <stepMotor+0x288>
    case 5:  //1100
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
 8000596:	4b39      	ldr	r3, [pc, #228]	; (800067c <stepMotor+0x290>)
 8000598:	6a98      	ldr	r0, [r3, #40]	; 0x28
 800059a:	4b38      	ldr	r3, [pc, #224]	; (800067c <stepMotor+0x290>)
 800059c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800059e:	b29b      	uxth	r3, r3
 80005a0:	2201      	movs	r2, #1
 80005a2:	4619      	mov	r1, r3
 80005a4:	f001 fc78 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
 80005a8:	4b34      	ldr	r3, [pc, #208]	; (800067c <stepMotor+0x290>)
 80005aa:	6b18      	ldr	r0, [r3, #48]	; 0x30
 80005ac:	4b33      	ldr	r3, [pc, #204]	; (800067c <stepMotor+0x290>)
 80005ae:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80005b0:	b29b      	uxth	r3, r3
 80005b2:	2201      	movs	r2, #1
 80005b4:	4619      	mov	r1, r3
 80005b6:	f001 fc6f 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 80005ba:	4b30      	ldr	r3, [pc, #192]	; (800067c <stepMotor+0x290>)
 80005bc:	6b98      	ldr	r0, [r3, #56]	; 0x38
 80005be:	4b2f      	ldr	r3, [pc, #188]	; (800067c <stepMotor+0x290>)
 80005c0:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80005c2:	b29b      	uxth	r3, r3
 80005c4:	2200      	movs	r2, #0
 80005c6:	4619      	mov	r1, r3
 80005c8:	f001 fc66 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 80005cc:	4b2b      	ldr	r3, [pc, #172]	; (800067c <stepMotor+0x290>)
 80005ce:	6c18      	ldr	r0, [r3, #64]	; 0x40
 80005d0:	4b2a      	ldr	r3, [pc, #168]	; (800067c <stepMotor+0x290>)
 80005d2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80005d4:	b29b      	uxth	r3, r3
 80005d6:	2200      	movs	r2, #0
 80005d8:	4619      	mov	r1, r3
 80005da:	f001 fc5d 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 80005de:	e049      	b.n	8000674 <stepMotor+0x288>
    case 6:  //1000
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
 80005e0:	4b26      	ldr	r3, [pc, #152]	; (800067c <stepMotor+0x290>)
 80005e2:	6a98      	ldr	r0, [r3, #40]	; 0x28
 80005e4:	4b25      	ldr	r3, [pc, #148]	; (800067c <stepMotor+0x290>)
 80005e6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80005e8:	b29b      	uxth	r3, r3
 80005ea:	2201      	movs	r2, #1
 80005ec:	4619      	mov	r1, r3
 80005ee:	f001 fc53 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 80005f2:	4b22      	ldr	r3, [pc, #136]	; (800067c <stepMotor+0x290>)
 80005f4:	6b18      	ldr	r0, [r3, #48]	; 0x30
 80005f6:	4b21      	ldr	r3, [pc, #132]	; (800067c <stepMotor+0x290>)
 80005f8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80005fa:	b29b      	uxth	r3, r3
 80005fc:	2200      	movs	r2, #0
 80005fe:	4619      	mov	r1, r3
 8000600:	f001 fc4a 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 8000604:	4b1d      	ldr	r3, [pc, #116]	; (800067c <stepMotor+0x290>)
 8000606:	6b98      	ldr	r0, [r3, #56]	; 0x38
 8000608:	4b1c      	ldr	r3, [pc, #112]	; (800067c <stepMotor+0x290>)
 800060a:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800060c:	b29b      	uxth	r3, r3
 800060e:	2200      	movs	r2, #0
 8000610:	4619      	mov	r1, r3
 8000612:	f001 fc41 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 8000616:	4b19      	ldr	r3, [pc, #100]	; (800067c <stepMotor+0x290>)
 8000618:	6c18      	ldr	r0, [r3, #64]	; 0x40
 800061a:	4b18      	ldr	r3, [pc, #96]	; (800067c <stepMotor+0x290>)
 800061c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800061e:	b29b      	uxth	r3, r3
 8000620:	2200      	movs	r2, #0
 8000622:	4619      	mov	r1, r3
 8000624:	f001 fc38 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 8000628:	e024      	b.n	8000674 <stepMotor+0x288>
    case 7:  //1001
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
 800062a:	4b14      	ldr	r3, [pc, #80]	; (800067c <stepMotor+0x290>)
 800062c:	6a98      	ldr	r0, [r3, #40]	; 0x28
 800062e:	4b13      	ldr	r3, [pc, #76]	; (800067c <stepMotor+0x290>)
 8000630:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000632:	b29b      	uxth	r3, r3
 8000634:	2201      	movs	r2, #1
 8000636:	4619      	mov	r1, r3
 8000638:	f001 fc2e 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 800063c:	4b0f      	ldr	r3, [pc, #60]	; (800067c <stepMotor+0x290>)
 800063e:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000640:	4b0e      	ldr	r3, [pc, #56]	; (800067c <stepMotor+0x290>)
 8000642:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000644:	b29b      	uxth	r3, r3
 8000646:	2200      	movs	r2, #0
 8000648:	4619      	mov	r1, r3
 800064a:	f001 fc25 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 800064e:	4b0b      	ldr	r3, [pc, #44]	; (800067c <stepMotor+0x290>)
 8000650:	6b98      	ldr	r0, [r3, #56]	; 0x38
 8000652:	4b0a      	ldr	r3, [pc, #40]	; (800067c <stepMotor+0x290>)
 8000654:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000656:	b29b      	uxth	r3, r3
 8000658:	2200      	movs	r2, #0
 800065a:	4619      	mov	r1, r3
 800065c:	f001 fc1c 	bl	8001e98 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
 8000660:	4b06      	ldr	r3, [pc, #24]	; (800067c <stepMotor+0x290>)
 8000662:	6c18      	ldr	r0, [r3, #64]	; 0x40
 8000664:	4b05      	ldr	r3, [pc, #20]	; (800067c <stepMotor+0x290>)
 8000666:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000668:	b29b      	uxth	r3, r3
 800066a:	2201      	movs	r2, #1
 800066c:	4619      	mov	r1, r3
 800066e:	f001 fc13 	bl	8001e98 <HAL_GPIO_WritePin>
      break;
 8000672:	bf00      	nop
    }
    // printf("[%s] end thisStep=%d\r\n", __func__, thisStep);
}
 8000674:	bf00      	nop
 8000676:	3708      	adds	r7, #8
 8000678:	46bd      	mov	sp, r7
 800067a:	bd80      	pop	{r7, pc}
 800067c:	200009e8 	.word	0x200009e8

08000680 <step>:
/*
 * Moves the motor steps_to_move steps.  If the number is negative,
 * the motor moves in the reverse direction.
 */
void step(int steps_to_move)
{
 8000680:	b580      	push	{r7, lr}
 8000682:	b088      	sub	sp, #32
 8000684:	af00      	add	r7, sp, #0
 8000686:	6078      	str	r0, [r7, #4]
#if 1
  /* EPRROM 保存地址 */
  int address = 0;
 8000688:	2300      	movs	r3, #0
 800068a:	61bb      	str	r3, [r7, #24]
  int valueL = 0;
 800068c:	2300      	movs	r3, #0
 800068e:	617b      	str	r3, [r7, #20]
  int valueH = 0;
 8000690:	2300      	movs	r3, #0
 8000692:	613b      	str	r3, [r7, #16]
  int tempSteps = steps_to_move;
 8000694:	687b      	ldr	r3, [r7, #4]
 8000696:	60fb      	str	r3, [r7, #12]
  #define ABS(x) ((x)>0?x:-x)
  int steps_left = ABS(steps_to_move);  // how many steps to take
 8000698:	687b      	ldr	r3, [r7, #4]
 800069a:	2b00      	cmp	r3, #0
 800069c:	bfb8      	it	lt
 800069e:	425b      	neglt	r3, r3
 80006a0:	61fb      	str	r3, [r7, #28]

  // determine direction based on whether steps_to_mode is + or -:
  if (steps_to_move > 0) { this.direction = 1; }
 80006a2:	687b      	ldr	r3, [r7, #4]
 80006a4:	2b00      	cmp	r3, #0
 80006a6:	dd02      	ble.n	80006ae <step+0x2e>
 80006a8:	4b29      	ldr	r3, [pc, #164]	; (8000750 <step+0xd0>)
 80006aa:	2201      	movs	r2, #1
 80006ac:	611a      	str	r2, [r3, #16]
  if (steps_to_move < 0) { this.direction = 0; }
 80006ae:	687b      	ldr	r3, [r7, #4]
 80006b0:	2b00      	cmp	r3, #0
 80006b2:	da46      	bge.n	8000742 <step+0xc2>
 80006b4:	4b26      	ldr	r3, [pc, #152]	; (8000750 <step+0xd0>)
 80006b6:	2200      	movs	r2, #0
 80006b8:	611a      	str	r2, [r3, #16]


  // decrement the number of steps, moving one step each time:
  while (steps_left > 0)
 80006ba:	e042      	b.n	8000742 <step+0xc2>
  {
    
  	unsigned long now = HAL_GetTick();    
 80006bc:	f000 fb56 	bl	8000d6c <HAL_GetTick>
 80006c0:	60b8      	str	r0, [r7, #8]
    // move only if the appropriate delay has passed:
    if (now - this.last_step_time >= this.step_delay)
 80006c2:	4b23      	ldr	r3, [pc, #140]	; (8000750 <step+0xd0>)
 80006c4:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80006c6:	68ba      	ldr	r2, [r7, #8]
 80006c8:	1ad2      	subs	r2, r2, r3
 80006ca:	4b21      	ldr	r3, [pc, #132]	; (8000750 <step+0xd0>)
 80006cc:	699b      	ldr	r3, [r3, #24]
 80006ce:	429a      	cmp	r2, r3
 80006d0:	d337      	bcc.n	8000742 <step+0xc2>
    {
    	valueL = steps_left & 0x00FF;
 80006d2:	69fb      	ldr	r3, [r7, #28]
 80006d4:	b2db      	uxtb	r3, r3
 80006d6:	617b      	str	r3, [r7, #20]
    //   EEPROM.write(address + 1, valueL);
      valueH = steps_left >> 8;
 80006d8:	69fb      	ldr	r3, [r7, #28]
 80006da:	121b      	asrs	r3, r3, #8
 80006dc:	613b      	str	r3, [r7, #16]
    //   EEPROM.write(address + 2, valueH);
      
      // get the timeStamp of when you stepped:
      this.last_step_time = now;
 80006de:	4a1c      	ldr	r2, [pc, #112]	; (8000750 <step+0xd0>)
 80006e0:	68bb      	ldr	r3, [r7, #8]
 80006e2:	6493      	str	r3, [r2, #72]	; 0x48
      // increment or decrement the step number,
      // depending on direction:
      if (this.direction == 1)
 80006e4:	4b1a      	ldr	r3, [pc, #104]	; (8000750 <step+0xd0>)
 80006e6:	691b      	ldr	r3, [r3, #16]
 80006e8:	2b01      	cmp	r3, #1
 80006ea:	d10e      	bne.n	800070a <step+0x8a>
      {
        this.step_number++;
 80006ec:	4b18      	ldr	r3, [pc, #96]	; (8000750 <step+0xd0>)
 80006ee:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80006f0:	3301      	adds	r3, #1
 80006f2:	4a17      	ldr	r2, [pc, #92]	; (8000750 <step+0xd0>)
 80006f4:	6253      	str	r3, [r2, #36]	; 0x24
        if (this.step_number == this.number_of_steps) {
 80006f6:	4b16      	ldr	r3, [pc, #88]	; (8000750 <step+0xd0>)
 80006f8:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 80006fa:	4b15      	ldr	r3, [pc, #84]	; (8000750 <step+0xd0>)
 80006fc:	69db      	ldr	r3, [r3, #28]
 80006fe:	429a      	cmp	r2, r3
 8000700:	d110      	bne.n	8000724 <step+0xa4>
          this.step_number = 0;
 8000702:	4b13      	ldr	r3, [pc, #76]	; (8000750 <step+0xd0>)
 8000704:	2200      	movs	r2, #0
 8000706:	625a      	str	r2, [r3, #36]	; 0x24
 8000708:	e00c      	b.n	8000724 <step+0xa4>
        }
      }
      else
      {
        if (this.step_number == 0) {
 800070a:	4b11      	ldr	r3, [pc, #68]	; (8000750 <step+0xd0>)
 800070c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800070e:	2b00      	cmp	r3, #0
 8000710:	d103      	bne.n	800071a <step+0x9a>
          this.step_number = this.number_of_steps;
 8000712:	4b0f      	ldr	r3, [pc, #60]	; (8000750 <step+0xd0>)
 8000714:	69db      	ldr	r3, [r3, #28]
 8000716:	4a0e      	ldr	r2, [pc, #56]	; (8000750 <step+0xd0>)
 8000718:	6253      	str	r3, [r2, #36]	; 0x24
        }
        this.step_number--;
 800071a:	4b0d      	ldr	r3, [pc, #52]	; (8000750 <step+0xd0>)
 800071c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800071e:	3b01      	subs	r3, #1
 8000720:	4a0b      	ldr	r2, [pc, #44]	; (8000750 <step+0xd0>)
 8000722:	6253      	str	r3, [r2, #36]	; 0x24
      }
      // decrement the steps left:
      steps_left--;
 8000724:	69fb      	ldr	r3, [r7, #28]
 8000726:	3b01      	subs	r3, #1
 8000728:	61fb      	str	r3, [r7, #28]
      
      // step the motor to step number 0, 1, ..., {3 or 10}
      stepMotor(this.step_number % 8);
 800072a:	4b09      	ldr	r3, [pc, #36]	; (8000750 <step+0xd0>)
 800072c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800072e:	425a      	negs	r2, r3
 8000730:	f003 0307 	and.w	r3, r3, #7
 8000734:	f002 0207 	and.w	r2, r2, #7
 8000738:	bf58      	it	pl
 800073a:	4253      	negpl	r3, r2
 800073c:	4618      	mov	r0, r3
 800073e:	f7ff fe55 	bl	80003ec <stepMotor>
  while (steps_left > 0)
 8000742:	69fb      	ldr	r3, [r7, #28]
 8000744:	2b00      	cmp	r3, #0
 8000746:	dcb9      	bgt.n	80006bc <step+0x3c>
  // printf("this=0x%08p %x \r\n", this, this.motor_pin_1.number);
  //     HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
}
 8000748:	bf00      	nop
 800074a:	3720      	adds	r7, #32
 800074c:	46bd      	mov	sp, r7
 800074e:	bd80      	pop	{r7, pc}
 8000750:	200009e8 	.word	0x200009e8

08000754 <Stepper>:
 *   constructor for four-pin version
 *   Sets which wires should control the motor.
 */
void Stepper(int number_of_steps, struct MotorPin * motor_pin_1, struct MotorPin * motor_pin_2,
                                      struct MotorPin * motor_pin_3, struct MotorPin * motor_pin_4)
{
 8000754:	b580      	push	{r7, lr}
 8000756:	b08c      	sub	sp, #48	; 0x30
 8000758:	af00      	add	r7, sp, #0
 800075a:	60f8      	str	r0, [r7, #12]
 800075c:	60b9      	str	r1, [r7, #8]
 800075e:	607a      	str	r2, [r7, #4]
 8000760:	603b      	str	r3, [r7, #0]
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  this.step_number = 0;    // which step the motor is on
 8000762:	4b3c      	ldr	r3, [pc, #240]	; (8000854 <Stepper+0x100>)
 8000764:	2200      	movs	r2, #0
 8000766:	625a      	str	r2, [r3, #36]	; 0x24
  this.speed = 0;          // the motor speed, in revolutions per minute
 8000768:	4b3a      	ldr	r3, [pc, #232]	; (8000854 <Stepper+0x100>)
 800076a:	2200      	movs	r2, #0
 800076c:	615a      	str	r2, [r3, #20]
  this.direction = 0;      // motor direction
 800076e:	4b39      	ldr	r3, [pc, #228]	; (8000854 <Stepper+0x100>)
 8000770:	2200      	movs	r2, #0
 8000772:	611a      	str	r2, [r3, #16]
  this.last_step_time = 0; // time stamp in us of the last step taken
 8000774:	4b37      	ldr	r3, [pc, #220]	; (8000854 <Stepper+0x100>)
 8000776:	2200      	movs	r2, #0
 8000778:	649a      	str	r2, [r3, #72]	; 0x48
  this.number_of_steps = number_of_steps; // total number of steps for this motor
 800077a:	4a36      	ldr	r2, [pc, #216]	; (8000854 <Stepper+0x100>)
 800077c:	68fb      	ldr	r3, [r7, #12]
 800077e:	61d3      	str	r3, [r2, #28]

  // Arduino pins for the motor control connection:
  memcpy(&this.motor_pin_1, motor_pin_1, sizeof(struct MotorPin));
 8000780:	2208      	movs	r2, #8
 8000782:	68b9      	ldr	r1, [r7, #8]
 8000784:	4834      	ldr	r0, [pc, #208]	; (8000858 <Stepper+0x104>)
 8000786:	f003 faf5 	bl	8003d74 <memcpy>
  memcpy(&this.motor_pin_2, motor_pin_2, sizeof(struct MotorPin));
 800078a:	2208      	movs	r2, #8
 800078c:	6879      	ldr	r1, [r7, #4]
 800078e:	4833      	ldr	r0, [pc, #204]	; (800085c <Stepper+0x108>)
 8000790:	f003 faf0 	bl	8003d74 <memcpy>
  memcpy(&this.motor_pin_3, motor_pin_3, sizeof(struct MotorPin));
 8000794:	2208      	movs	r2, #8
 8000796:	6839      	ldr	r1, [r7, #0]
 8000798:	4831      	ldr	r0, [pc, #196]	; (8000860 <Stepper+0x10c>)
 800079a:	f003 faeb 	bl	8003d74 <memcpy>
  memcpy(&this.motor_pin_4, motor_pin_4, sizeof(struct MotorPin));
 800079e:	2208      	movs	r2, #8
 80007a0:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 80007a2:	4830      	ldr	r0, [pc, #192]	; (8000864 <Stepper+0x110>)
 80007a4:	f003 fae6 	bl	8003d74 <memcpy>

  
  /* -1- Enable GPIOA Clock (to be able to program the configuration registers) */
  __HAL_RCC_GPIOA_CLK_ENABLE();
 80007a8:	2300      	movs	r3, #0
 80007aa:	61bb      	str	r3, [r7, #24]
 80007ac:	4b2e      	ldr	r3, [pc, #184]	; (8000868 <Stepper+0x114>)
 80007ae:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007b0:	4a2d      	ldr	r2, [pc, #180]	; (8000868 <Stepper+0x114>)
 80007b2:	f043 0301 	orr.w	r3, r3, #1
 80007b6:	6313      	str	r3, [r2, #48]	; 0x30
 80007b8:	4b2b      	ldr	r3, [pc, #172]	; (8000868 <Stepper+0x114>)
 80007ba:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007bc:	f003 0301 	and.w	r3, r3, #1
 80007c0:	61bb      	str	r3, [r7, #24]
 80007c2:	69bb      	ldr	r3, [r7, #24]
  __HAL_RCC_GPIOB_CLK_ENABLE();
 80007c4:	2300      	movs	r3, #0
 80007c6:	617b      	str	r3, [r7, #20]
 80007c8:	4b27      	ldr	r3, [pc, #156]	; (8000868 <Stepper+0x114>)
 80007ca:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007cc:	4a26      	ldr	r2, [pc, #152]	; (8000868 <Stepper+0x114>)
 80007ce:	f043 0302 	orr.w	r3, r3, #2
 80007d2:	6313      	str	r3, [r2, #48]	; 0x30
 80007d4:	4b24      	ldr	r3, [pc, #144]	; (8000868 <Stepper+0x114>)
 80007d6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007d8:	f003 0302 	and.w	r3, r3, #2
 80007dc:	617b      	str	r3, [r7, #20]
 80007de:	697b      	ldr	r3, [r7, #20]
  
  /* -2- Configure PA05 IO in output push-pull mode to
         drive external LED */
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 80007e0:	2301      	movs	r3, #1
 80007e2:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull = GPIO_PULLUP;
 80007e4:	2301      	movs	r3, #1
 80007e6:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
 80007e8:	2302      	movs	r3, #2
 80007ea:	62bb      	str	r3, [r7, #40]	; 0x28

  GPIO_InitStruct.Pin = this.motor_pin_1.number;
 80007ec:	4b19      	ldr	r3, [pc, #100]	; (8000854 <Stepper+0x100>)
 80007ee:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80007f0:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_1.Port, &GPIO_InitStruct); 
 80007f2:	4b18      	ldr	r3, [pc, #96]	; (8000854 <Stepper+0x100>)
 80007f4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80007f6:	f107 021c 	add.w	r2, r7, #28
 80007fa:	4611      	mov	r1, r2
 80007fc:	4618      	mov	r0, r3
 80007fe:	f001 f9c9 	bl	8001b94 <HAL_GPIO_Init>
  GPIO_InitStruct.Pin = this.motor_pin_2.number;
 8000802:	4b14      	ldr	r3, [pc, #80]	; (8000854 <Stepper+0x100>)
 8000804:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000806:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_2.Port, &GPIO_InitStruct); 
 8000808:	4b12      	ldr	r3, [pc, #72]	; (8000854 <Stepper+0x100>)
 800080a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800080c:	f107 021c 	add.w	r2, r7, #28
 8000810:	4611      	mov	r1, r2
 8000812:	4618      	mov	r0, r3
 8000814:	f001 f9be 	bl	8001b94 <HAL_GPIO_Init>
  GPIO_InitStruct.Pin = this.motor_pin_3.number;
 8000818:	4b0e      	ldr	r3, [pc, #56]	; (8000854 <Stepper+0x100>)
 800081a:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800081c:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_3.Port, &GPIO_InitStruct); 
 800081e:	4b0d      	ldr	r3, [pc, #52]	; (8000854 <Stepper+0x100>)
 8000820:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8000822:	f107 021c 	add.w	r2, r7, #28
 8000826:	4611      	mov	r1, r2
 8000828:	4618      	mov	r0, r3
 800082a:	f001 f9b3 	bl	8001b94 <HAL_GPIO_Init>
  GPIO_InitStruct.Pin = this.motor_pin_4.number;
 800082e:	4b09      	ldr	r3, [pc, #36]	; (8000854 <Stepper+0x100>)
 8000830:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000832:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_4.Port, &GPIO_InitStruct); 
 8000834:	4b07      	ldr	r3, [pc, #28]	; (8000854 <Stepper+0x100>)
 8000836:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000838:	f107 021c 	add.w	r2, r7, #28
 800083c:	4611      	mov	r1, r2
 800083e:	4618      	mov	r0, r3
 8000840:	f001 f9a8 	bl	8001b94 <HAL_GPIO_Init>
  // pin_count is used by the stepMotor() method:
  this.pin_count = 4;
 8000844:	4b03      	ldr	r3, [pc, #12]	; (8000854 <Stepper+0x100>)
 8000846:	2204      	movs	r2, #4
 8000848:	621a      	str	r2, [r3, #32]
}
 800084a:	bf00      	nop
 800084c:	3730      	adds	r7, #48	; 0x30
 800084e:	46bd      	mov	sp, r7
 8000850:	bd80      	pop	{r7, pc}
 8000852:	bf00      	nop
 8000854:	200009e8 	.word	0x200009e8
 8000858:	20000a10 	.word	0x20000a10
 800085c:	20000a18 	.word	0x20000a18
 8000860:	20000a20 	.word	0x20000a20
 8000864:	20000a28 	.word	0x20000a28
 8000868:	40023800 	.word	0x40023800

0800086c <InitStepper>:

void InitStepper(void)
{
 800086c:	b5b0      	push	{r4, r5, r7, lr}
 800086e:	b08a      	sub	sp, #40	; 0x28
 8000870:	af02      	add	r7, sp, #8
  struct MotorPin motorPin[] = {
 8000872:	4b0f      	ldr	r3, [pc, #60]	; (80008b0 <InitStepper+0x44>)
 8000874:	463c      	mov	r4, r7
 8000876:	461d      	mov	r5, r3
 8000878:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 800087a:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 800087c:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 8000880:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
    {GPIOA, STEPER_IN1},
    {GPIOA, STEPER_IN2},
    {GPIOA, STEPER_IN3},
    {GPIOB, STEPER_IN4},
  };
  Stepper(8, &motorPin[0], &motorPin[1], &motorPin[2], &motorPin[3]);
 8000884:	463b      	mov	r3, r7
 8000886:	f103 0010 	add.w	r0, r3, #16
 800088a:	463b      	mov	r3, r7
 800088c:	f103 0208 	add.w	r2, r3, #8
 8000890:	4639      	mov	r1, r7
 8000892:	463b      	mov	r3, r7
 8000894:	3318      	adds	r3, #24
 8000896:	9300      	str	r3, [sp, #0]
 8000898:	4603      	mov	r3, r0
 800089a:	2008      	movs	r0, #8
 800089c:	f7ff ff5a 	bl	8000754 <Stepper>
  setSpeed(64);
 80008a0:	2040      	movs	r0, #64	; 0x40
 80008a2:	f7ff fd89 	bl	80003b8 <setSpeed>
 80008a6:	bf00      	nop
 80008a8:	3720      	adds	r7, #32
 80008aa:	46bd      	mov	sp, r7
 80008ac:	bdb0      	pop	{r4, r5, r7, pc}
 80008ae:	bf00      	nop
 80008b0:	08008fdc 	.word	0x08008fdc

080008b4 <HAL_UART_MspInit>:
  *           - NVIC configuration for DMA interrupt request enable
  * @param huart: UART handle pointer
  * @retval None
  */
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
 80008b4:	b580      	push	{r7, lr}
 80008b6:	b08c      	sub	sp, #48	; 0x30
 80008b8:	af00      	add	r7, sp, #0
 80008ba:	6078      	str	r0, [r7, #4]
  
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
 80008bc:	2300      	movs	r3, #0
 80008be:	61bb      	str	r3, [r7, #24]
 80008c0:	4b6a      	ldr	r3, [pc, #424]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008c2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008c4:	4a69      	ldr	r2, [pc, #420]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008c6:	f043 0301 	orr.w	r3, r3, #1
 80008ca:	6313      	str	r3, [r2, #48]	; 0x30
 80008cc:	4b67      	ldr	r3, [pc, #412]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008ce:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008d0:	f003 0301 	and.w	r3, r3, #1
 80008d4:	61bb      	str	r3, [r7, #24]
 80008d6:	69bb      	ldr	r3, [r7, #24]
  USARTx_RX_GPIO_CLK_ENABLE();
 80008d8:	2300      	movs	r3, #0
 80008da:	617b      	str	r3, [r7, #20]
 80008dc:	4b63      	ldr	r3, [pc, #396]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008de:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008e0:	4a62      	ldr	r2, [pc, #392]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008e2:	f043 0301 	orr.w	r3, r3, #1
 80008e6:	6313      	str	r3, [r2, #48]	; 0x30
 80008e8:	4b60      	ldr	r3, [pc, #384]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008ea:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008ec:	f003 0301 	and.w	r3, r3, #1
 80008f0:	617b      	str	r3, [r7, #20]
 80008f2:	697b      	ldr	r3, [r7, #20]
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE(); 
 80008f4:	2300      	movs	r3, #0
 80008f6:	613b      	str	r3, [r7, #16]
 80008f8:	4b5c      	ldr	r3, [pc, #368]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008fa:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80008fc:	4a5b      	ldr	r2, [pc, #364]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 80008fe:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000902:	6413      	str	r3, [r2, #64]	; 0x40
 8000904:	4b59      	ldr	r3, [pc, #356]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 8000906:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000908:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800090c:	613b      	str	r3, [r7, #16]
 800090e:	693b      	ldr	r3, [r7, #16]
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();   
 8000910:	2300      	movs	r3, #0
 8000912:	60fb      	str	r3, [r7, #12]
 8000914:	4b55      	ldr	r3, [pc, #340]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 8000916:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000918:	4a54      	ldr	r2, [pc, #336]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 800091a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800091e:	6313      	str	r3, [r2, #48]	; 0x30
 8000920:	4b52      	ldr	r3, [pc, #328]	; (8000a6c <HAL_UART_MspInit+0x1b8>)
 8000922:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000924:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8000928:	60fb      	str	r3, [r7, #12]
 800092a:	68fb      	ldr	r3, [r7, #12]
  
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = USARTx_TX_PIN;
 800092c:	2304      	movs	r3, #4
 800092e:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
 8000930:	2302      	movs	r3, #2
 8000932:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull      = GPIO_NOPULL;
 8000934:	2300      	movs	r3, #0
 8000936:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed     = GPIO_SPEED_FAST;
 8000938:	2302      	movs	r3, #2
 800093a:	62bb      	str	r3, [r7, #40]	; 0x28
  GPIO_InitStruct.Alternate = USARTx_TX_AF;
 800093c:	2307      	movs	r3, #7
 800093e:	62fb      	str	r3, [r7, #44]	; 0x2c
  
  HAL_GPIO_Init(USARTx_TX_GPIO_PORT, &GPIO_InitStruct);
 8000940:	f107 031c 	add.w	r3, r7, #28
 8000944:	4619      	mov	r1, r3
 8000946:	484a      	ldr	r0, [pc, #296]	; (8000a70 <HAL_UART_MspInit+0x1bc>)
 8000948:	f001 f924 	bl	8001b94 <HAL_GPIO_Init>
    
  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = USARTx_RX_PIN;
 800094c:	2308      	movs	r3, #8
 800094e:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Alternate = USARTx_RX_AF;
 8000950:	2307      	movs	r3, #7
 8000952:	62fb      	str	r3, [r7, #44]	; 0x2c
    
  HAL_GPIO_Init(USARTx_RX_GPIO_PORT, &GPIO_InitStruct);
 8000954:	f107 031c 	add.w	r3, r7, #28
 8000958:	4619      	mov	r1, r3
 800095a:	4845      	ldr	r0, [pc, #276]	; (8000a70 <HAL_UART_MspInit+0x1bc>)
 800095c:	f001 f91a 	bl	8001b94 <HAL_GPIO_Init>
    
  /*##-3- Configure the DMA streams ##########################################*/
  /* Configure the DMA handler for Transmission process */
  hdma_tx.Instance                 = USARTx_TX_DMA_STREAM;
 8000960:	4b44      	ldr	r3, [pc, #272]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000962:	4a45      	ldr	r2, [pc, #276]	; (8000a78 <HAL_UART_MspInit+0x1c4>)
 8000964:	601a      	str	r2, [r3, #0]
  
  hdma_tx.Init.Channel             = USARTx_TX_DMA_CHANNEL;
 8000966:	4b43      	ldr	r3, [pc, #268]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000968:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800096c:	605a      	str	r2, [r3, #4]
  hdma_tx.Init.Direction           = DMA_MEMORY_TO_PERIPH;
 800096e:	4b41      	ldr	r3, [pc, #260]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000970:	2240      	movs	r2, #64	; 0x40
 8000972:	609a      	str	r2, [r3, #8]
  hdma_tx.Init.PeriphInc           = DMA_PINC_DISABLE;
 8000974:	4b3f      	ldr	r3, [pc, #252]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000976:	2200      	movs	r2, #0
 8000978:	60da      	str	r2, [r3, #12]
  hdma_tx.Init.MemInc              = DMA_MINC_ENABLE;
 800097a:	4b3e      	ldr	r3, [pc, #248]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 800097c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000980:	611a      	str	r2, [r3, #16]
  hdma_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 8000982:	4b3c      	ldr	r3, [pc, #240]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000984:	2200      	movs	r2, #0
 8000986:	615a      	str	r2, [r3, #20]
  hdma_tx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 8000988:	4b3a      	ldr	r3, [pc, #232]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 800098a:	2200      	movs	r2, #0
 800098c:	619a      	str	r2, [r3, #24]
  hdma_tx.Init.Mode                = DMA_NORMAL;
 800098e:	4b39      	ldr	r3, [pc, #228]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000990:	2200      	movs	r2, #0
 8000992:	61da      	str	r2, [r3, #28]
  hdma_tx.Init.Priority            = DMA_PRIORITY_LOW;
 8000994:	4b37      	ldr	r3, [pc, #220]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 8000996:	2200      	movs	r2, #0
 8000998:	621a      	str	r2, [r3, #32]
  hdma_tx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;
 800099a:	4b36      	ldr	r3, [pc, #216]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 800099c:	2200      	movs	r2, #0
 800099e:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_tx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 80009a0:	4b34      	ldr	r3, [pc, #208]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 80009a2:	2203      	movs	r2, #3
 80009a4:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_tx.Init.MemBurst            = DMA_MBURST_INC4;
 80009a6:	4b33      	ldr	r3, [pc, #204]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 80009a8:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 80009ac:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_tx.Init.PeriphBurst         = DMA_PBURST_INC4;
 80009ae:	4b31      	ldr	r3, [pc, #196]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 80009b0:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 80009b4:	631a      	str	r2, [r3, #48]	; 0x30
  
  HAL_DMA_Init(&hdma_tx);   
 80009b6:	482f      	ldr	r0, [pc, #188]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 80009b8:	f000 ff8e 	bl	80018d8 <HAL_DMA_Init>
  
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmatx, hdma_tx);
 80009bc:	687b      	ldr	r3, [r7, #4]
 80009be:	4a2d      	ldr	r2, [pc, #180]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 80009c0:	635a      	str	r2, [r3, #52]	; 0x34
 80009c2:	4a2c      	ldr	r2, [pc, #176]	; (8000a74 <HAL_UART_MspInit+0x1c0>)
 80009c4:	687b      	ldr	r3, [r7, #4]
 80009c6:	6393      	str	r3, [r2, #56]	; 0x38
    
  /* Configure the DMA handler for Transmission process */
  hdma_rx.Instance                 = USARTx_RX_DMA_STREAM;
 80009c8:	4b2c      	ldr	r3, [pc, #176]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009ca:	4a2d      	ldr	r2, [pc, #180]	; (8000a80 <HAL_UART_MspInit+0x1cc>)
 80009cc:	601a      	str	r2, [r3, #0]
  
  hdma_rx.Init.Channel             = USARTx_RX_DMA_CHANNEL;
 80009ce:	4b2b      	ldr	r3, [pc, #172]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009d0:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80009d4:	605a      	str	r2, [r3, #4]
  hdma_rx.Init.Direction           = DMA_PERIPH_TO_MEMORY;
 80009d6:	4b29      	ldr	r3, [pc, #164]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009d8:	2200      	movs	r2, #0
 80009da:	609a      	str	r2, [r3, #8]
  hdma_rx.Init.PeriphInc           = DMA_PINC_DISABLE;
 80009dc:	4b27      	ldr	r3, [pc, #156]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009de:	2200      	movs	r2, #0
 80009e0:	60da      	str	r2, [r3, #12]
  hdma_rx.Init.MemInc              = DMA_MINC_ENABLE;
 80009e2:	4b26      	ldr	r3, [pc, #152]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009e4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80009e8:	611a      	str	r2, [r3, #16]
  hdma_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 80009ea:	4b24      	ldr	r3, [pc, #144]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009ec:	2200      	movs	r2, #0
 80009ee:	615a      	str	r2, [r3, #20]
  hdma_rx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 80009f0:	4b22      	ldr	r3, [pc, #136]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009f2:	2200      	movs	r2, #0
 80009f4:	619a      	str	r2, [r3, #24]
  hdma_rx.Init.Mode                = DMA_NORMAL;
 80009f6:	4b21      	ldr	r3, [pc, #132]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009f8:	2200      	movs	r2, #0
 80009fa:	61da      	str	r2, [r3, #28]
  hdma_rx.Init.Priority            = DMA_PRIORITY_HIGH;
 80009fc:	4b1f      	ldr	r3, [pc, #124]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 80009fe:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 8000a02:	621a      	str	r2, [r3, #32]
  hdma_rx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;         
 8000a04:	4b1d      	ldr	r3, [pc, #116]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a06:	2200      	movs	r2, #0
 8000a08:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_rx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 8000a0a:	4b1c      	ldr	r3, [pc, #112]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a0c:	2203      	movs	r2, #3
 8000a0e:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_rx.Init.MemBurst            = DMA_MBURST_INC4;
 8000a10:	4b1a      	ldr	r3, [pc, #104]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a12:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8000a16:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_rx.Init.PeriphBurst         = DMA_PBURST_INC4; 
 8000a18:	4b18      	ldr	r3, [pc, #96]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a1a:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8000a1e:	631a      	str	r2, [r3, #48]	; 0x30

  HAL_DMA_Init(&hdma_rx);
 8000a20:	4816      	ldr	r0, [pc, #88]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a22:	f000 ff59 	bl	80018d8 <HAL_DMA_Init>
    
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmarx, hdma_rx);
 8000a26:	687b      	ldr	r3, [r7, #4]
 8000a28:	4a14      	ldr	r2, [pc, #80]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a2a:	639a      	str	r2, [r3, #56]	; 0x38
 8000a2c:	4a13      	ldr	r2, [pc, #76]	; (8000a7c <HAL_UART_MspInit+0x1c8>)
 8000a2e:	687b      	ldr	r3, [r7, #4]
 8000a30:	6393      	str	r3, [r2, #56]	; 0x38
    
  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_TX) */
  HAL_NVIC_SetPriority(USARTx_DMA_TX_IRQn, 0, 1);
 8000a32:	2201      	movs	r2, #1
 8000a34:	2100      	movs	r1, #0
 8000a36:	2011      	movs	r0, #17
 8000a38:	f000 faad 	bl	8000f96 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_TX_IRQn);
 8000a3c:	2011      	movs	r0, #17
 8000a3e:	f000 fac6 	bl	8000fce <HAL_NVIC_EnableIRQ>
    
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_RX) */
  HAL_NVIC_SetPriority(USARTx_DMA_RX_IRQn, 0, 0);   
 8000a42:	2200      	movs	r2, #0
 8000a44:	2100      	movs	r1, #0
 8000a46:	2010      	movs	r0, #16
 8000a48:	f000 faa5 	bl	8000f96 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_RX_IRQn);
 8000a4c:	2010      	movs	r0, #16
 8000a4e:	f000 fabe 	bl	8000fce <HAL_NVIC_EnableIRQ>
  
  /* NVIC configuration for USART TC interrupt */
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
 8000a52:	2200      	movs	r2, #0
 8000a54:	2100      	movs	r1, #0
 8000a56:	2026      	movs	r0, #38	; 0x26
 8000a58:	f000 fa9d 	bl	8000f96 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_IRQn);
 8000a5c:	2026      	movs	r0, #38	; 0x26
 8000a5e:	f000 fab6 	bl	8000fce <HAL_NVIC_EnableIRQ>
}
 8000a62:	bf00      	nop
 8000a64:	3730      	adds	r7, #48	; 0x30
 8000a66:	46bd      	mov	sp, r7
 8000a68:	bd80      	pop	{r7, pc}
 8000a6a:	bf00      	nop
 8000a6c:	40023800 	.word	0x40023800
 8000a70:	40020000 	.word	0x40020000
 8000a74:	20000a34 	.word	0x20000a34
 8000a78:	400260a0 	.word	0x400260a0
 8000a7c:	20000a94 	.word	0x20000a94
 8000a80:	40026088 	.word	0x40026088

08000a84 <cmb_get_sp>:
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_psp(void) {
    register uint32_t result;
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
 8000a84:	b490      	push	{r4, r7}
 8000a86:	af00      	add	r7, sp, #0
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8000a88:	466b      	mov	r3, sp
 8000a8a:	461c      	mov	r4, r3
    return(result);
 8000a8c:	4623      	mov	r3, r4
}
 8000a8e:	4618      	mov	r0, r3
 8000a90:	46bd      	mov	sp, r7
 8000a92:	bc90      	pop	{r4, r7}
 8000a94:	4770      	bx	lr

08000a96 <NMI_Handler>:
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
 8000a96:	b480      	push	{r7}
 8000a98:	af00      	add	r7, sp, #0
}
 8000a9a:	bf00      	nop
 8000a9c:	46bd      	mov	sp, r7
 8000a9e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000aa2:	4770      	bx	lr

08000aa4 <HardFault_Handler>:
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
 8000aa4:	b580      	push	{r7, lr}
 8000aa6:	af00      	add	r7, sp, #0
  printf("[%s]\n", __func__);
 8000aa8:	4904      	ldr	r1, [pc, #16]	; (8000abc <HardFault_Handler+0x18>)
 8000aaa:	4805      	ldr	r0, [pc, #20]	; (8000ac0 <HardFault_Handler+0x1c>)
 8000aac:	f003 fa46 	bl	8003f3c <printf>
  //   "MOV     r0, lr\n"                 /* get lr */
  //   "MOV     r1, sp\n"                  /* get stack pointer (current is MSP) */
  //   "BL      cm_backtrace_fault\n"
  // );
    //dump_stack()
  print_call_stack(cmb_get_sp);
 8000ab0:	4b04      	ldr	r3, [pc, #16]	; (8000ac4 <HardFault_Handler+0x20>)
 8000ab2:	4618      	mov	r0, r3
 8000ab4:	f002 fd42 	bl	800353c <print_call_stack>
  for(;;);
 8000ab8:	e7fe      	b.n	8000ab8 <HardFault_Handler+0x14>
 8000aba:	bf00      	nop
 8000abc:	08009004 	.word	0x08009004
 8000ac0:	08008ffc 	.word	0x08008ffc
 8000ac4:	08000a85 	.word	0x08000a85

08000ac8 <MemManage_Handler>:
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
 8000ac8:	b480      	push	{r7}
 8000aca:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
 8000acc:	e7fe      	b.n	8000acc <MemManage_Handler+0x4>

08000ace <BusFault_Handler>:
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
 8000ace:	b480      	push	{r7}
 8000ad0:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
 8000ad2:	e7fe      	b.n	8000ad2 <BusFault_Handler+0x4>

08000ad4 <UsageFault_Handler>:
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
 8000ad4:	b480      	push	{r7}
 8000ad6:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
 8000ad8:	e7fe      	b.n	8000ad8 <UsageFault_Handler+0x4>

08000ada <SVC_Handler>:
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
 8000ada:	b480      	push	{r7}
 8000adc:	af00      	add	r7, sp, #0
}
 8000ade:	bf00      	nop
 8000ae0:	46bd      	mov	sp, r7
 8000ae2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ae6:	4770      	bx	lr

08000ae8 <DebugMon_Handler>:
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
 8000ae8:	b480      	push	{r7}
 8000aea:	af00      	add	r7, sp, #0
}
 8000aec:	bf00      	nop
 8000aee:	46bd      	mov	sp, r7
 8000af0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000af4:	4770      	bx	lr

08000af6 <SysTick_Handler>:
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
 8000af6:	b580      	push	{r7, lr}
 8000af8:	af00      	add	r7, sp, #0
  HAL_IncTick();
 8000afa:	f000 f923 	bl	8000d44 <HAL_IncTick>
}
 8000afe:	bf00      	nop
 8000b00:	bd80      	pop	{r7, pc}

08000b02 <_read>:
	_kill(status, -1);
	while (1) {}		/* Make sure we hang here */
}

int _read (int file, char *ptr, int len)
{
 8000b02:	b580      	push	{r7, lr}
 8000b04:	b086      	sub	sp, #24
 8000b06:	af00      	add	r7, sp, #0
 8000b08:	60f8      	str	r0, [r7, #12]
 8000b0a:	60b9      	str	r1, [r7, #8]
 8000b0c:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000b0e:	2300      	movs	r3, #0
 8000b10:	617b      	str	r3, [r7, #20]
 8000b12:	e00a      	b.n	8000b2a <_read+0x28>
	{
		*ptr++ = __io_getchar();
 8000b14:	f7ff fc3e 	bl	8000394 <__io_getchar>
 8000b18:	4601      	mov	r1, r0
 8000b1a:	68bb      	ldr	r3, [r7, #8]
 8000b1c:	1c5a      	adds	r2, r3, #1
 8000b1e:	60ba      	str	r2, [r7, #8]
 8000b20:	b2ca      	uxtb	r2, r1
 8000b22:	701a      	strb	r2, [r3, #0]
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000b24:	697b      	ldr	r3, [r7, #20]
 8000b26:	3301      	adds	r3, #1
 8000b28:	617b      	str	r3, [r7, #20]
 8000b2a:	697a      	ldr	r2, [r7, #20]
 8000b2c:	687b      	ldr	r3, [r7, #4]
 8000b2e:	429a      	cmp	r2, r3
 8000b30:	dbf0      	blt.n	8000b14 <_read+0x12>
	}

return len;
 8000b32:	687b      	ldr	r3, [r7, #4]
}
 8000b34:	4618      	mov	r0, r3
 8000b36:	3718      	adds	r7, #24
 8000b38:	46bd      	mov	sp, r7
 8000b3a:	bd80      	pop	{r7, pc}

08000b3c <_write>:

int _write(int file, char *ptr, int len)
{
 8000b3c:	b580      	push	{r7, lr}
 8000b3e:	b086      	sub	sp, #24
 8000b40:	af00      	add	r7, sp, #0
 8000b42:	60f8      	str	r0, [r7, #12]
 8000b44:	60b9      	str	r1, [r7, #8]
 8000b46:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000b48:	2300      	movs	r3, #0
 8000b4a:	617b      	str	r3, [r7, #20]
 8000b4c:	e009      	b.n	8000b62 <_write+0x26>
	{
		__io_putchar(*ptr++);
 8000b4e:	68bb      	ldr	r3, [r7, #8]
 8000b50:	1c5a      	adds	r2, r3, #1
 8000b52:	60ba      	str	r2, [r7, #8]
 8000b54:	781b      	ldrb	r3, [r3, #0]
 8000b56:	4618      	mov	r0, r3
 8000b58:	f7ff fc0a 	bl	8000370 <__io_putchar>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000b5c:	697b      	ldr	r3, [r7, #20]
 8000b5e:	3301      	adds	r3, #1
 8000b60:	617b      	str	r3, [r7, #20]
 8000b62:	697a      	ldr	r2, [r7, #20]
 8000b64:	687b      	ldr	r3, [r7, #4]
 8000b66:	429a      	cmp	r2, r3
 8000b68:	dbf1      	blt.n	8000b4e <_write+0x12>
	}
	return len;
 8000b6a:	687b      	ldr	r3, [r7, #4]
}
 8000b6c:	4618      	mov	r0, r3
 8000b6e:	3718      	adds	r7, #24
 8000b70:	46bd      	mov	sp, r7
 8000b72:	bd80      	pop	{r7, pc}

08000b74 <_sbrk>:

caddr_t _sbrk(int incr)
{
 8000b74:	b580      	push	{r7, lr}
 8000b76:	b084      	sub	sp, #16
 8000b78:	af00      	add	r7, sp, #0
 8000b7a:	6078      	str	r0, [r7, #4]
	extern char end asm("end");
	static char *heap_end;
	char *prev_heap_end;

	if (heap_end == 0)
 8000b7c:	4b11      	ldr	r3, [pc, #68]	; (8000bc4 <_sbrk+0x50>)
 8000b7e:	681b      	ldr	r3, [r3, #0]
 8000b80:	2b00      	cmp	r3, #0
 8000b82:	d102      	bne.n	8000b8a <_sbrk+0x16>
		heap_end = &end;
 8000b84:	4b0f      	ldr	r3, [pc, #60]	; (8000bc4 <_sbrk+0x50>)
 8000b86:	4a10      	ldr	r2, [pc, #64]	; (8000bc8 <_sbrk+0x54>)
 8000b88:	601a      	str	r2, [r3, #0]

	prev_heap_end = heap_end;
 8000b8a:	4b0e      	ldr	r3, [pc, #56]	; (8000bc4 <_sbrk+0x50>)
 8000b8c:	681b      	ldr	r3, [r3, #0]
 8000b8e:	60fb      	str	r3, [r7, #12]
	if (heap_end + incr > stack_ptr)
 8000b90:	4b0c      	ldr	r3, [pc, #48]	; (8000bc4 <_sbrk+0x50>)
 8000b92:	681a      	ldr	r2, [r3, #0]
 8000b94:	687b      	ldr	r3, [r7, #4]
 8000b96:	4413      	add	r3, r2
 8000b98:	466a      	mov	r2, sp
 8000b9a:	4293      	cmp	r3, r2
 8000b9c:	d907      	bls.n	8000bae <_sbrk+0x3a>
	{
//		write(1, "Heap and stack collision\n", 25);
//		abort();
		errno = ENOMEM;
 8000b9e:	f003 f8bf 	bl	8003d20 <__errno>
 8000ba2:	4602      	mov	r2, r0
 8000ba4:	230c      	movs	r3, #12
 8000ba6:	6013      	str	r3, [r2, #0]
		return (caddr_t) -1;
 8000ba8:	f04f 33ff 	mov.w	r3, #4294967295
 8000bac:	e006      	b.n	8000bbc <_sbrk+0x48>
	}

	heap_end += incr;
 8000bae:	4b05      	ldr	r3, [pc, #20]	; (8000bc4 <_sbrk+0x50>)
 8000bb0:	681a      	ldr	r2, [r3, #0]
 8000bb2:	687b      	ldr	r3, [r7, #4]
 8000bb4:	4413      	add	r3, r2
 8000bb6:	4a03      	ldr	r2, [pc, #12]	; (8000bc4 <_sbrk+0x50>)
 8000bb8:	6013      	str	r3, [r2, #0]

	return (caddr_t) prev_heap_end;
 8000bba:	68fb      	ldr	r3, [r7, #12]
}
 8000bbc:	4618      	mov	r0, r3
 8000bbe:	3710      	adds	r7, #16
 8000bc0:	46bd      	mov	sp, r7
 8000bc2:	bd80      	pop	{r7, pc}
 8000bc4:	20000af4 	.word	0x20000af4
 8000bc8:	20000c58 	.word	0x20000c58

08000bcc <_close>:

int _close(int file)
{
 8000bcc:	b480      	push	{r7}
 8000bce:	b083      	sub	sp, #12
 8000bd0:	af00      	add	r7, sp, #0
 8000bd2:	6078      	str	r0, [r7, #4]
	return -1;
 8000bd4:	f04f 33ff 	mov.w	r3, #4294967295
}
 8000bd8:	4618      	mov	r0, r3
 8000bda:	370c      	adds	r7, #12
 8000bdc:	46bd      	mov	sp, r7
 8000bde:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000be2:	4770      	bx	lr

08000be4 <_fstat>:


int _fstat(int file, struct stat *st)
{
 8000be4:	b480      	push	{r7}
 8000be6:	b083      	sub	sp, #12
 8000be8:	af00      	add	r7, sp, #0
 8000bea:	6078      	str	r0, [r7, #4]
 8000bec:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
 8000bee:	683b      	ldr	r3, [r7, #0]
 8000bf0:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000bf4:	605a      	str	r2, [r3, #4]
	return 0;
 8000bf6:	2300      	movs	r3, #0
}
 8000bf8:	4618      	mov	r0, r3
 8000bfa:	370c      	adds	r7, #12
 8000bfc:	46bd      	mov	sp, r7
 8000bfe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c02:	4770      	bx	lr

08000c04 <_isatty>:

int _isatty(int file)
{
 8000c04:	b480      	push	{r7}
 8000c06:	b083      	sub	sp, #12
 8000c08:	af00      	add	r7, sp, #0
 8000c0a:	6078      	str	r0, [r7, #4]
	return 1;
 8000c0c:	2301      	movs	r3, #1
}
 8000c0e:	4618      	mov	r0, r3
 8000c10:	370c      	adds	r7, #12
 8000c12:	46bd      	mov	sp, r7
 8000c14:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c18:	4770      	bx	lr

08000c1a <_lseek>:

int _lseek(int file, int ptr, int dir)
{
 8000c1a:	b480      	push	{r7}
 8000c1c:	b085      	sub	sp, #20
 8000c1e:	af00      	add	r7, sp, #0
 8000c20:	60f8      	str	r0, [r7, #12]
 8000c22:	60b9      	str	r1, [r7, #8]
 8000c24:	607a      	str	r2, [r7, #4]
	return 0;
 8000c26:	2300      	movs	r3, #0
}
 8000c28:	4618      	mov	r0, r3
 8000c2a:	3714      	adds	r7, #20
 8000c2c:	46bd      	mov	sp, r7
 8000c2e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c32:	4770      	bx	lr

08000c34 <SystemInit>:
  *         configuration.
  * @param  None
  * @retval None
  */
void SystemInit(void)
{
 8000c34:	b480      	push	{r7}
 8000c36:	af00      	add	r7, sp, #0
  /* FPU settings ------------------------------------------------------------*/
  #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
    SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
 8000c38:	4b16      	ldr	r3, [pc, #88]	; (8000c94 <SystemInit+0x60>)
 8000c3a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8000c3e:	4a15      	ldr	r2, [pc, #84]	; (8000c94 <SystemInit+0x60>)
 8000c40:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8000c44:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
  #endif
  /* Reset the RCC clock configuration to the default reset state ------------*/
  /* Set HSION bit */
  RCC->CR |= (uint32_t)0x00000001;
 8000c48:	4b13      	ldr	r3, [pc, #76]	; (8000c98 <SystemInit+0x64>)
 8000c4a:	681b      	ldr	r3, [r3, #0]
 8000c4c:	4a12      	ldr	r2, [pc, #72]	; (8000c98 <SystemInit+0x64>)
 8000c4e:	f043 0301 	orr.w	r3, r3, #1
 8000c52:	6013      	str	r3, [r2, #0]

  /* Reset CFGR register */
  RCC->CFGR = 0x00000000;
 8000c54:	4b10      	ldr	r3, [pc, #64]	; (8000c98 <SystemInit+0x64>)
 8000c56:	2200      	movs	r2, #0
 8000c58:	609a      	str	r2, [r3, #8]

  /* Reset HSEON, CSSON and PLLON bits */
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 8000c5a:	4b0f      	ldr	r3, [pc, #60]	; (8000c98 <SystemInit+0x64>)
 8000c5c:	681b      	ldr	r3, [r3, #0]
 8000c5e:	4a0e      	ldr	r2, [pc, #56]	; (8000c98 <SystemInit+0x64>)
 8000c60:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000c64:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000c68:	6013      	str	r3, [r2, #0]

  /* Reset PLLCFGR register */
  RCC->PLLCFGR = 0x24003010;
 8000c6a:	4b0b      	ldr	r3, [pc, #44]	; (8000c98 <SystemInit+0x64>)
 8000c6c:	4a0b      	ldr	r2, [pc, #44]	; (8000c9c <SystemInit+0x68>)
 8000c6e:	605a      	str	r2, [r3, #4]

  /* Reset HSEBYP bit */
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 8000c70:	4b09      	ldr	r3, [pc, #36]	; (8000c98 <SystemInit+0x64>)
 8000c72:	681b      	ldr	r3, [r3, #0]
 8000c74:	4a08      	ldr	r2, [pc, #32]	; (8000c98 <SystemInit+0x64>)
 8000c76:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000c7a:	6013      	str	r3, [r2, #0]

  /* Disable all interrupts */
  RCC->CIR = 0x00000000;
 8000c7c:	4b06      	ldr	r3, [pc, #24]	; (8000c98 <SystemInit+0x64>)
 8000c7e:	2200      	movs	r2, #0
 8000c80:	60da      	str	r2, [r3, #12]

  /* Configure the Vector Table location add offset address ------------------*/
#ifdef VECT_TAB_SRAM
  SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
#else
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
 8000c82:	4b04      	ldr	r3, [pc, #16]	; (8000c94 <SystemInit+0x60>)
 8000c84:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000c88:	609a      	str	r2, [r3, #8]
#endif
}
 8000c8a:	bf00      	nop
 8000c8c:	46bd      	mov	sp, r7
 8000c8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c92:	4770      	bx	lr
 8000c94:	e000ed00 	.word	0xe000ed00
 8000c98:	40023800 	.word	0x40023800
 8000c9c:	24003010 	.word	0x24003010

08000ca0 <HAL_Init>:
  *         need to ensure that the SysTick time base is always set to 1 millisecond
  *         to have correct HAL operation.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_Init(void)
{
 8000ca0:	b580      	push	{r7, lr}
 8000ca2:	af00      	add	r7, sp, #0
  /* Configure Flash prefetch, Instruction cache, Data cache */ 
#if (INSTRUCTION_CACHE_ENABLE != 0U)
  __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
 8000ca4:	4b0e      	ldr	r3, [pc, #56]	; (8000ce0 <HAL_Init+0x40>)
 8000ca6:	681b      	ldr	r3, [r3, #0]
 8000ca8:	4a0d      	ldr	r2, [pc, #52]	; (8000ce0 <HAL_Init+0x40>)
 8000caa:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000cae:	6013      	str	r3, [r2, #0]
#endif /* INSTRUCTION_CACHE_ENABLE */

#if (DATA_CACHE_ENABLE != 0U)
  __HAL_FLASH_DATA_CACHE_ENABLE();
 8000cb0:	4b0b      	ldr	r3, [pc, #44]	; (8000ce0 <HAL_Init+0x40>)
 8000cb2:	681b      	ldr	r3, [r3, #0]
 8000cb4:	4a0a      	ldr	r2, [pc, #40]	; (8000ce0 <HAL_Init+0x40>)
 8000cb6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000cba:	6013      	str	r3, [r2, #0]
#endif /* DATA_CACHE_ENABLE */

#if (PREFETCH_ENABLE != 0U)
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 8000cbc:	4b08      	ldr	r3, [pc, #32]	; (8000ce0 <HAL_Init+0x40>)
 8000cbe:	681b      	ldr	r3, [r3, #0]
 8000cc0:	4a07      	ldr	r2, [pc, #28]	; (8000ce0 <HAL_Init+0x40>)
 8000cc2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000cc6:	6013      	str	r3, [r2, #0]
#endif /* PREFETCH_ENABLE */

  /* Set Interrupt Group Priority */
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 8000cc8:	2003      	movs	r0, #3
 8000cca:	f000 f959 	bl	8000f80 <HAL_NVIC_SetPriorityGrouping>

  /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
  HAL_InitTick(TICK_INT_PRIORITY);
 8000cce:	200f      	movs	r0, #15
 8000cd0:	f000 f808 	bl	8000ce4 <HAL_InitTick>

  /* Init the low level hardware */
  HAL_MspInit();
 8000cd4:	f000 f87c 	bl	8000dd0 <HAL_MspInit>

  /* Return function status */
  return HAL_OK;
 8000cd8:	2300      	movs	r3, #0
}
 8000cda:	4618      	mov	r0, r3
 8000cdc:	bd80      	pop	{r7, pc}
 8000cde:	bf00      	nop
 8000ce0:	40023c00 	.word	0x40023c00

08000ce4 <HAL_InitTick>:
  *       implementation  in user file.
  * @param TickPriority Tick interrupt priority.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
 8000ce4:	b580      	push	{r7, lr}
 8000ce6:	b082      	sub	sp, #8
 8000ce8:	af00      	add	r7, sp, #0
 8000cea:	6078      	str	r0, [r7, #4]
  /* Configure the SysTick to have interrupt in 1ms time basis*/
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000cec:	4b12      	ldr	r3, [pc, #72]	; (8000d38 <HAL_InitTick+0x54>)
 8000cee:	681a      	ldr	r2, [r3, #0]
 8000cf0:	4b12      	ldr	r3, [pc, #72]	; (8000d3c <HAL_InitTick+0x58>)
 8000cf2:	781b      	ldrb	r3, [r3, #0]
 8000cf4:	4619      	mov	r1, r3
 8000cf6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000cfa:	fbb3 f3f1 	udiv	r3, r3, r1
 8000cfe:	fbb2 f3f3 	udiv	r3, r2, r3
 8000d02:	4618      	mov	r0, r3
 8000d04:	f000 f971 	bl	8000fea <HAL_SYSTICK_Config>
 8000d08:	4603      	mov	r3, r0
 8000d0a:	2b00      	cmp	r3, #0
 8000d0c:	d001      	beq.n	8000d12 <HAL_InitTick+0x2e>
  {
    return HAL_ERROR;
 8000d0e:	2301      	movs	r3, #1
 8000d10:	e00e      	b.n	8000d30 <HAL_InitTick+0x4c>
  }

  /* Configure the SysTick IRQ priority */
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 8000d12:	687b      	ldr	r3, [r7, #4]
 8000d14:	2b0f      	cmp	r3, #15
 8000d16:	d80a      	bhi.n	8000d2e <HAL_InitTick+0x4a>
  {
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8000d18:	2200      	movs	r2, #0
 8000d1a:	6879      	ldr	r1, [r7, #4]
 8000d1c:	f04f 30ff 	mov.w	r0, #4294967295
 8000d20:	f000 f939 	bl	8000f96 <HAL_NVIC_SetPriority>
    uwTickPrio = TickPriority;
 8000d24:	4a06      	ldr	r2, [pc, #24]	; (8000d40 <HAL_InitTick+0x5c>)
 8000d26:	687b      	ldr	r3, [r7, #4]
 8000d28:	6013      	str	r3, [r2, #0]
  {
    return HAL_ERROR;
  }

  /* Return function status */
  return HAL_OK;
 8000d2a:	2300      	movs	r3, #0
 8000d2c:	e000      	b.n	8000d30 <HAL_InitTick+0x4c>
    return HAL_ERROR;
 8000d2e:	2301      	movs	r3, #1
}
 8000d30:	4618      	mov	r0, r3
 8000d32:	3708      	adds	r7, #8
 8000d34:	46bd      	mov	sp, r7
 8000d36:	bd80      	pop	{r7, pc}
 8000d38:	20000000 	.word	0x20000000
 8000d3c:	20000008 	.word	0x20000008
 8000d40:	20000004 	.word	0x20000004

08000d44 <HAL_IncTick>:
 * @note This function is declared as __weak to be overwritten in case of other 
  *      implementations in user file.
  * @retval None
  */
__weak void HAL_IncTick(void)
{
 8000d44:	b480      	push	{r7}
 8000d46:	af00      	add	r7, sp, #0
  uwTick += uwTickFreq;
 8000d48:	4b06      	ldr	r3, [pc, #24]	; (8000d64 <HAL_IncTick+0x20>)
 8000d4a:	781b      	ldrb	r3, [r3, #0]
 8000d4c:	461a      	mov	r2, r3
 8000d4e:	4b06      	ldr	r3, [pc, #24]	; (8000d68 <HAL_IncTick+0x24>)
 8000d50:	681b      	ldr	r3, [r3, #0]
 8000d52:	4413      	add	r3, r2
 8000d54:	4a04      	ldr	r2, [pc, #16]	; (8000d68 <HAL_IncTick+0x24>)
 8000d56:	6013      	str	r3, [r2, #0]
}
 8000d58:	bf00      	nop
 8000d5a:	46bd      	mov	sp, r7
 8000d5c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d60:	4770      	bx	lr
 8000d62:	bf00      	nop
 8000d64:	20000008 	.word	0x20000008
 8000d68:	20000c2c 	.word	0x20000c2c

08000d6c <HAL_GetTick>:
  * @note This function is declared as __weak to be overwritten in case of other 
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
 8000d6c:	b480      	push	{r7}
 8000d6e:	af00      	add	r7, sp, #0
  return uwTick;
 8000d70:	4b03      	ldr	r3, [pc, #12]	; (8000d80 <HAL_GetTick+0x14>)
 8000d72:	681b      	ldr	r3, [r3, #0]
}
 8000d74:	4618      	mov	r0, r3
 8000d76:	46bd      	mov	sp, r7
 8000d78:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d7c:	4770      	bx	lr
 8000d7e:	bf00      	nop
 8000d80:	20000c2c 	.word	0x20000c2c

08000d84 <HAL_Delay>:
  *       implementations in user file.
  * @param Delay specifies the delay time length, in milliseconds.
  * @retval None
  */
__weak void HAL_Delay(uint32_t Delay)
{
 8000d84:	b580      	push	{r7, lr}
 8000d86:	b086      	sub	sp, #24
 8000d88:	af00      	add	r7, sp, #0
 8000d8a:	6078      	str	r0, [r7, #4]
  uint32_t tickstart = HAL_GetTick();
 8000d8c:	f7ff ffee 	bl	8000d6c <HAL_GetTick>
 8000d90:	60f8      	str	r0, [r7, #12]
  uint32_t wait = Delay;
 8000d92:	687b      	ldr	r3, [r7, #4]
 8000d94:	617b      	str	r3, [r7, #20]
  uint32_t tickend;
  /* Add a freq to guarantee minimum wait */
  if (wait < HAL_MAX_DELAY)
 8000d96:	697b      	ldr	r3, [r7, #20]
 8000d98:	f1b3 3fff 	cmp.w	r3, #4294967295
 8000d9c:	d005      	beq.n	8000daa <HAL_Delay+0x26>
  {
    wait += (uint32_t)(uwTickFreq);
 8000d9e:	4b0b      	ldr	r3, [pc, #44]	; (8000dcc <HAL_Delay+0x48>)
 8000da0:	781b      	ldrb	r3, [r3, #0]
 8000da2:	461a      	mov	r2, r3
 8000da4:	697b      	ldr	r3, [r7, #20]
 8000da6:	4413      	add	r3, r2
 8000da8:	617b      	str	r3, [r7, #20]
  }
  tickend = HAL_GetTick();
 8000daa:	f7ff ffdf 	bl	8000d6c <HAL_GetTick>
 8000dae:	6138      	str	r0, [r7, #16]
  while((tickend - tickstart) < wait)
 8000db0:	e002      	b.n	8000db8 <HAL_Delay+0x34>
  {
    tickend = HAL_GetTick();
 8000db2:	f7ff ffdb 	bl	8000d6c <HAL_GetTick>
 8000db6:	6138      	str	r0, [r7, #16]
  while((tickend - tickstart) < wait)
 8000db8:	693a      	ldr	r2, [r7, #16]
 8000dba:	68fb      	ldr	r3, [r7, #12]
 8000dbc:	1ad3      	subs	r3, r2, r3
 8000dbe:	697a      	ldr	r2, [r7, #20]
 8000dc0:	429a      	cmp	r2, r3
 8000dc2:	d8f6      	bhi.n	8000db2 <HAL_Delay+0x2e>
  }
}
 8000dc4:	bf00      	nop
 8000dc6:	3718      	adds	r7, #24
 8000dc8:	46bd      	mov	sp, r7
 8000dca:	bd80      	pop	{r7, pc}
 8000dcc:	20000008 	.word	0x20000008

08000dd0 <HAL_MspInit>:
  * @note   This function is called from HAL_Init() function to perform system
  *         level initialization (GPIOs, clock, DMA, interrupt).
  * @retval None
  */
void HAL_MspInit(void)
{
 8000dd0:	b480      	push	{r7}
 8000dd2:	af00      	add	r7, sp, #0

}
 8000dd4:	bf00      	nop
 8000dd6:	46bd      	mov	sp, r7
 8000dd8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ddc:	4770      	bx	lr
	...

08000de0 <__NVIC_SetPriorityGrouping>:
           In case of a conflict between priority grouping and available
           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  \param [in]      PriorityGroup  Priority grouping field.
 */
__STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000de0:	b480      	push	{r7}
 8000de2:	b085      	sub	sp, #20
 8000de4:	af00      	add	r7, sp, #0
 8000de6:	6078      	str	r0, [r7, #4]
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8000de8:	687b      	ldr	r3, [r7, #4]
 8000dea:	f003 0307 	and.w	r3, r3, #7
 8000dee:	60fb      	str	r3, [r7, #12]

  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000df0:	4b0c      	ldr	r3, [pc, #48]	; (8000e24 <__NVIC_SetPriorityGrouping+0x44>)
 8000df2:	68db      	ldr	r3, [r3, #12]
 8000df4:	60bb      	str	r3, [r7, #8]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 8000df6:	68ba      	ldr	r2, [r7, #8]
 8000df8:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000dfc:	4013      	ands	r3, r2
 8000dfe:	60bb      	str	r3, [r7, #8]
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
                (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 8000e00:	68fb      	ldr	r3, [r7, #12]
 8000e02:	021a      	lsls	r2, r3, #8
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 8000e04:	68bb      	ldr	r3, [r7, #8]
 8000e06:	4313      	orrs	r3, r2
  reg_value  =  (reg_value                                   |
 8000e08:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000e0c:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000e10:	60bb      	str	r3, [r7, #8]
  SCB->AIRCR =  reg_value;
 8000e12:	4a04      	ldr	r2, [pc, #16]	; (8000e24 <__NVIC_SetPriorityGrouping+0x44>)
 8000e14:	68bb      	ldr	r3, [r7, #8]
 8000e16:	60d3      	str	r3, [r2, #12]
}
 8000e18:	bf00      	nop
 8000e1a:	3714      	adds	r7, #20
 8000e1c:	46bd      	mov	sp, r7
 8000e1e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e22:	4770      	bx	lr
 8000e24:	e000ed00 	.word	0xe000ed00

08000e28 <__NVIC_GetPriorityGrouping>:
  \brief   Get Priority Grouping
  \details Reads the priority grouping field from the NVIC Interrupt Controller.
  \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
__STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
{
 8000e28:	b480      	push	{r7}
 8000e2a:	af00      	add	r7, sp, #0
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8000e2c:	4b04      	ldr	r3, [pc, #16]	; (8000e40 <__NVIC_GetPriorityGrouping+0x18>)
 8000e2e:	68db      	ldr	r3, [r3, #12]
 8000e30:	0a1b      	lsrs	r3, r3, #8
 8000e32:	f003 0307 	and.w	r3, r3, #7
}
 8000e36:	4618      	mov	r0, r3
 8000e38:	46bd      	mov	sp, r7
 8000e3a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e3e:	4770      	bx	lr
 8000e40:	e000ed00 	.word	0xe000ed00

08000e44 <__NVIC_EnableIRQ>:
  \details Enables a device specific interrupt in the NVIC interrupt controller.
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000e44:	b480      	push	{r7}
 8000e46:	b083      	sub	sp, #12
 8000e48:	af00      	add	r7, sp, #0
 8000e4a:	4603      	mov	r3, r0
 8000e4c:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8000e4e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e52:	2b00      	cmp	r3, #0
 8000e54:	db0b      	blt.n	8000e6e <__NVIC_EnableIRQ+0x2a>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 8000e56:	79fb      	ldrb	r3, [r7, #7]
 8000e58:	f003 021f 	and.w	r2, r3, #31
 8000e5c:	4907      	ldr	r1, [pc, #28]	; (8000e7c <__NVIC_EnableIRQ+0x38>)
 8000e5e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e62:	095b      	lsrs	r3, r3, #5
 8000e64:	2001      	movs	r0, #1
 8000e66:	fa00 f202 	lsl.w	r2, r0, r2
 8000e6a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
  }
}
 8000e6e:	bf00      	nop
 8000e70:	370c      	adds	r7, #12
 8000e72:	46bd      	mov	sp, r7
 8000e74:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e78:	4770      	bx	lr
 8000e7a:	bf00      	nop
 8000e7c:	e000e100 	.word	0xe000e100

08000e80 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
 8000e80:	b480      	push	{r7}
 8000e82:	b083      	sub	sp, #12
 8000e84:	af00      	add	r7, sp, #0
 8000e86:	4603      	mov	r3, r0
 8000e88:	6039      	str	r1, [r7, #0]
 8000e8a:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8000e8c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e90:	2b00      	cmp	r3, #0
 8000e92:	db0a      	blt.n	8000eaa <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000e94:	683b      	ldr	r3, [r7, #0]
 8000e96:	b2da      	uxtb	r2, r3
 8000e98:	490c      	ldr	r1, [pc, #48]	; (8000ecc <__NVIC_SetPriority+0x4c>)
 8000e9a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e9e:	0112      	lsls	r2, r2, #4
 8000ea0:	b2d2      	uxtb	r2, r2
 8000ea2:	440b      	add	r3, r1
 8000ea4:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
 8000ea8:	e00a      	b.n	8000ec0 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000eaa:	683b      	ldr	r3, [r7, #0]
 8000eac:	b2da      	uxtb	r2, r3
 8000eae:	4908      	ldr	r1, [pc, #32]	; (8000ed0 <__NVIC_SetPriority+0x50>)
 8000eb0:	79fb      	ldrb	r3, [r7, #7]
 8000eb2:	f003 030f 	and.w	r3, r3, #15
 8000eb6:	3b04      	subs	r3, #4
 8000eb8:	0112      	lsls	r2, r2, #4
 8000eba:	b2d2      	uxtb	r2, r2
 8000ebc:	440b      	add	r3, r1
 8000ebe:	761a      	strb	r2, [r3, #24]
}
 8000ec0:	bf00      	nop
 8000ec2:	370c      	adds	r7, #12
 8000ec4:	46bd      	mov	sp, r7
 8000ec6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000eca:	4770      	bx	lr
 8000ecc:	e000e100 	.word	0xe000e100
 8000ed0:	e000ed00 	.word	0xe000ed00

08000ed4 <NVIC_EncodePriority>:
  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  \param [in]       SubPriority  Subpriority value (starting from 0).
  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
__STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
 8000ed4:	b480      	push	{r7}
 8000ed6:	b089      	sub	sp, #36	; 0x24
 8000ed8:	af00      	add	r7, sp, #0
 8000eda:	60f8      	str	r0, [r7, #12]
 8000edc:	60b9      	str	r1, [r7, #8]
 8000ede:	607a      	str	r2, [r7, #4]
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 8000ee0:	68fb      	ldr	r3, [r7, #12]
 8000ee2:	f003 0307 	and.w	r3, r3, #7
 8000ee6:	61fb      	str	r3, [r7, #28]
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 8000ee8:	69fb      	ldr	r3, [r7, #28]
 8000eea:	f1c3 0307 	rsb	r3, r3, #7
 8000eee:	2b04      	cmp	r3, #4
 8000ef0:	bf28      	it	cs
 8000ef2:	2304      	movcs	r3, #4
 8000ef4:	61bb      	str	r3, [r7, #24]
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8000ef6:	69fb      	ldr	r3, [r7, #28]
 8000ef8:	3304      	adds	r3, #4
 8000efa:	2b06      	cmp	r3, #6
 8000efc:	d902      	bls.n	8000f04 <NVIC_EncodePriority+0x30>
 8000efe:	69fb      	ldr	r3, [r7, #28]
 8000f00:	3b03      	subs	r3, #3
 8000f02:	e000      	b.n	8000f06 <NVIC_EncodePriority+0x32>
 8000f04:	2300      	movs	r3, #0
 8000f06:	617b      	str	r3, [r7, #20]

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000f08:	f04f 32ff 	mov.w	r2, #4294967295
 8000f0c:	69bb      	ldr	r3, [r7, #24]
 8000f0e:	fa02 f303 	lsl.w	r3, r2, r3
 8000f12:	43da      	mvns	r2, r3
 8000f14:	68bb      	ldr	r3, [r7, #8]
 8000f16:	401a      	ands	r2, r3
 8000f18:	697b      	ldr	r3, [r7, #20]
 8000f1a:	409a      	lsls	r2, r3
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8000f1c:	f04f 31ff 	mov.w	r1, #4294967295
 8000f20:	697b      	ldr	r3, [r7, #20]
 8000f22:	fa01 f303 	lsl.w	r3, r1, r3
 8000f26:	43d9      	mvns	r1, r3
 8000f28:	687b      	ldr	r3, [r7, #4]
 8000f2a:	400b      	ands	r3, r1
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000f2c:	4313      	orrs	r3, r2
         );
}
 8000f2e:	4618      	mov	r0, r3
 8000f30:	3724      	adds	r7, #36	; 0x24
 8000f32:	46bd      	mov	sp, r7
 8000f34:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000f38:	4770      	bx	lr
	...

08000f3c <SysTick_Config>:
  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
 8000f3c:	b580      	push	{r7, lr}
 8000f3e:	b082      	sub	sp, #8
 8000f40:	af00      	add	r7, sp, #0
 8000f42:	6078      	str	r0, [r7, #4]
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8000f44:	687b      	ldr	r3, [r7, #4]
 8000f46:	3b01      	subs	r3, #1
 8000f48:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000f4c:	d301      	bcc.n	8000f52 <SysTick_Config+0x16>
  {
    return (1UL);                                                   /* Reload value impossible */
 8000f4e:	2301      	movs	r3, #1
 8000f50:	e00f      	b.n	8000f72 <SysTick_Config+0x36>
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8000f52:	4a0a      	ldr	r2, [pc, #40]	; (8000f7c <SysTick_Config+0x40>)
 8000f54:	687b      	ldr	r3, [r7, #4]
 8000f56:	3b01      	subs	r3, #1
 8000f58:	6053      	str	r3, [r2, #4]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 8000f5a:	210f      	movs	r1, #15
 8000f5c:	f04f 30ff 	mov.w	r0, #4294967295
 8000f60:	f7ff ff8e 	bl	8000e80 <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8000f64:	4b05      	ldr	r3, [pc, #20]	; (8000f7c <SysTick_Config+0x40>)
 8000f66:	2200      	movs	r2, #0
 8000f68:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8000f6a:	4b04      	ldr	r3, [pc, #16]	; (8000f7c <SysTick_Config+0x40>)
 8000f6c:	2207      	movs	r2, #7
 8000f6e:	601a      	str	r2, [r3, #0]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 8000f70:	2300      	movs	r3, #0
}
 8000f72:	4618      	mov	r0, r3
 8000f74:	3708      	adds	r7, #8
 8000f76:	46bd      	mov	sp, r7
 8000f78:	bd80      	pop	{r7, pc}
 8000f7a:	bf00      	nop
 8000f7c:	e000e010 	.word	0xe000e010

08000f80 <HAL_NVIC_SetPriorityGrouping>:
  * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
  *         The pending IRQ priority will be managed only by the subpriority. 
  * @retval None
  */
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000f80:	b580      	push	{r7, lr}
 8000f82:	b082      	sub	sp, #8
 8000f84:	af00      	add	r7, sp, #0
 8000f86:	6078      	str	r0, [r7, #4]
  /* Check the parameters */
  assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
  
  /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
  NVIC_SetPriorityGrouping(PriorityGroup);
 8000f88:	6878      	ldr	r0, [r7, #4]
 8000f8a:	f7ff ff29 	bl	8000de0 <__NVIC_SetPriorityGrouping>
}
 8000f8e:	bf00      	nop
 8000f90:	3708      	adds	r7, #8
 8000f92:	46bd      	mov	sp, r7
 8000f94:	bd80      	pop	{r7, pc}

08000f96 <HAL_NVIC_SetPriority>:
  *         This parameter can be a value between 0 and 15
  *         A lower priority value indicates a higher priority.          
  * @retval None
  */
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
{ 
 8000f96:	b580      	push	{r7, lr}
 8000f98:	b086      	sub	sp, #24
 8000f9a:	af00      	add	r7, sp, #0
 8000f9c:	4603      	mov	r3, r0
 8000f9e:	60b9      	str	r1, [r7, #8]
 8000fa0:	607a      	str	r2, [r7, #4]
 8000fa2:	73fb      	strb	r3, [r7, #15]
  uint32_t prioritygroup = 0x00U;
 8000fa4:	2300      	movs	r3, #0
 8000fa6:	617b      	str	r3, [r7, #20]
  
  /* Check the parameters */
  assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
  
  prioritygroup = NVIC_GetPriorityGrouping();
 8000fa8:	f7ff ff3e 	bl	8000e28 <__NVIC_GetPriorityGrouping>
 8000fac:	6178      	str	r0, [r7, #20]
  
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8000fae:	687a      	ldr	r2, [r7, #4]
 8000fb0:	68b9      	ldr	r1, [r7, #8]
 8000fb2:	6978      	ldr	r0, [r7, #20]
 8000fb4:	f7ff ff8e 	bl	8000ed4 <NVIC_EncodePriority>
 8000fb8:	4602      	mov	r2, r0
 8000fba:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8000fbe:	4611      	mov	r1, r2
 8000fc0:	4618      	mov	r0, r3
 8000fc2:	f7ff ff5d 	bl	8000e80 <__NVIC_SetPriority>
}
 8000fc6:	bf00      	nop
 8000fc8:	3718      	adds	r7, #24
 8000fca:	46bd      	mov	sp, r7
 8000fcc:	bd80      	pop	{r7, pc}

08000fce <HAL_NVIC_EnableIRQ>:
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000fce:	b580      	push	{r7, lr}
 8000fd0:	b082      	sub	sp, #8
 8000fd2:	af00      	add	r7, sp, #0
 8000fd4:	4603      	mov	r3, r0
 8000fd6:	71fb      	strb	r3, [r7, #7]
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
  
  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
 8000fd8:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000fdc:	4618      	mov	r0, r3
 8000fde:	f7ff ff31 	bl	8000e44 <__NVIC_EnableIRQ>
}
 8000fe2:	bf00      	nop
 8000fe4:	3708      	adds	r7, #8
 8000fe6:	46bd      	mov	sp, r7
 8000fe8:	bd80      	pop	{r7, pc}

08000fea <HAL_SYSTICK_Config>:
  * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 8000fea:	b580      	push	{r7, lr}
 8000fec:	b082      	sub	sp, #8
 8000fee:	af00      	add	r7, sp, #0
 8000ff0:	6078      	str	r0, [r7, #4]
   return SysTick_Config(TicksNumb);
 8000ff2:	6878      	ldr	r0, [r7, #4]
 8000ff4:	f7ff ffa2 	bl	8000f3c <SysTick_Config>
 8000ff8:	4603      	mov	r3, r0
}
 8000ffa:	4618      	mov	r0, r3
 8000ffc:	3708      	adds	r7, #8
 8000ffe:	46bd      	mov	sp, r7
 8001000:	bd80      	pop	{r7, pc}
	...

08001004 <HAL_RCC_OscConfig>:
  *         supported by this API. User should request a transition to HSE Off
  *         first and then HSE On or HSE Bypass.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
{
 8001004:	b580      	push	{r7, lr}
 8001006:	b086      	sub	sp, #24
 8001008:	af00      	add	r7, sp, #0
 800100a:	6078      	str	r0, [r7, #4]
  uint32_t tickstart, pll_config;

  /* Check Null pointer */
  if(RCC_OscInitStruct == NULL)
 800100c:	687b      	ldr	r3, [r7, #4]
 800100e:	2b00      	cmp	r3, #0
 8001010:	d101      	bne.n	8001016 <HAL_RCC_OscConfig+0x12>
  {
    return HAL_ERROR;
 8001012:	2301      	movs	r3, #1
 8001014:	e264      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
  }

  /* Check the parameters */
  assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
  /*------------------------------- HSE Configuration ------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8001016:	687b      	ldr	r3, [r7, #4]
 8001018:	681b      	ldr	r3, [r3, #0]
 800101a:	f003 0301 	and.w	r3, r3, #1
 800101e:	2b00      	cmp	r3, #0
 8001020:	d075      	beq.n	800110e <HAL_RCC_OscConfig+0x10a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
    /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8001022:	4ba3      	ldr	r3, [pc, #652]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001024:	689b      	ldr	r3, [r3, #8]
 8001026:	f003 030c 	and.w	r3, r3, #12
 800102a:	2b04      	cmp	r3, #4
 800102c:	d00c      	beq.n	8001048 <HAL_RCC_OscConfig+0x44>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 800102e:	4ba0      	ldr	r3, [pc, #640]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001030:	689b      	ldr	r3, [r3, #8]
 8001032:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8001036:	2b08      	cmp	r3, #8
 8001038:	d112      	bne.n	8001060 <HAL_RCC_OscConfig+0x5c>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 800103a:	4b9d      	ldr	r3, [pc, #628]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 800103c:	685b      	ldr	r3, [r3, #4]
 800103e:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8001042:	f5b3 0f80 	cmp.w	r3, #4194304	; 0x400000
 8001046:	d10b      	bne.n	8001060 <HAL_RCC_OscConfig+0x5c>
    {
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8001048:	4b99      	ldr	r3, [pc, #612]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 800104a:	681b      	ldr	r3, [r3, #0]
 800104c:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001050:	2b00      	cmp	r3, #0
 8001052:	d05b      	beq.n	800110c <HAL_RCC_OscConfig+0x108>
 8001054:	687b      	ldr	r3, [r7, #4]
 8001056:	685b      	ldr	r3, [r3, #4]
 8001058:	2b00      	cmp	r3, #0
 800105a:	d157      	bne.n	800110c <HAL_RCC_OscConfig+0x108>
      {
        return HAL_ERROR;
 800105c:	2301      	movs	r3, #1
 800105e:	e23f      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      }
    }
    else
    {
      /* Set the new HSE configuration ---------------------------------------*/
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8001060:	687b      	ldr	r3, [r7, #4]
 8001062:	685b      	ldr	r3, [r3, #4]
 8001064:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8001068:	d106      	bne.n	8001078 <HAL_RCC_OscConfig+0x74>
 800106a:	4b91      	ldr	r3, [pc, #580]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 800106c:	681b      	ldr	r3, [r3, #0]
 800106e:	4a90      	ldr	r2, [pc, #576]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001070:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001074:	6013      	str	r3, [r2, #0]
 8001076:	e01d      	b.n	80010b4 <HAL_RCC_OscConfig+0xb0>
 8001078:	687b      	ldr	r3, [r7, #4]
 800107a:	685b      	ldr	r3, [r3, #4]
 800107c:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 8001080:	d10c      	bne.n	800109c <HAL_RCC_OscConfig+0x98>
 8001082:	4b8b      	ldr	r3, [pc, #556]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001084:	681b      	ldr	r3, [r3, #0]
 8001086:	4a8a      	ldr	r2, [pc, #552]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001088:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 800108c:	6013      	str	r3, [r2, #0]
 800108e:	4b88      	ldr	r3, [pc, #544]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001090:	681b      	ldr	r3, [r3, #0]
 8001092:	4a87      	ldr	r2, [pc, #540]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001094:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001098:	6013      	str	r3, [r2, #0]
 800109a:	e00b      	b.n	80010b4 <HAL_RCC_OscConfig+0xb0>
 800109c:	4b84      	ldr	r3, [pc, #528]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 800109e:	681b      	ldr	r3, [r3, #0]
 80010a0:	4a83      	ldr	r2, [pc, #524]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80010a2:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 80010a6:	6013      	str	r3, [r2, #0]
 80010a8:	4b81      	ldr	r3, [pc, #516]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80010aa:	681b      	ldr	r3, [r3, #0]
 80010ac:	4a80      	ldr	r2, [pc, #512]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80010ae:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 80010b2:	6013      	str	r3, [r2, #0]

      /* Check the HSE State */
      if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
 80010b4:	687b      	ldr	r3, [r7, #4]
 80010b6:	685b      	ldr	r3, [r3, #4]
 80010b8:	2b00      	cmp	r3, #0
 80010ba:	d013      	beq.n	80010e4 <HAL_RCC_OscConfig+0xe0>
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80010bc:	f7ff fe56 	bl	8000d6c <HAL_GetTick>
 80010c0:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 80010c2:	e008      	b.n	80010d6 <HAL_RCC_OscConfig+0xd2>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 80010c4:	f7ff fe52 	bl	8000d6c <HAL_GetTick>
 80010c8:	4602      	mov	r2, r0
 80010ca:	693b      	ldr	r3, [r7, #16]
 80010cc:	1ad3      	subs	r3, r2, r3
 80010ce:	2b64      	cmp	r3, #100	; 0x64
 80010d0:	d901      	bls.n	80010d6 <HAL_RCC_OscConfig+0xd2>
          {
            return HAL_TIMEOUT;
 80010d2:	2303      	movs	r3, #3
 80010d4:	e204      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 80010d6:	4b76      	ldr	r3, [pc, #472]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80010d8:	681b      	ldr	r3, [r3, #0]
 80010da:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80010de:	2b00      	cmp	r3, #0
 80010e0:	d0f0      	beq.n	80010c4 <HAL_RCC_OscConfig+0xc0>
 80010e2:	e014      	b.n	800110e <HAL_RCC_OscConfig+0x10a>
        }
      }
      else
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80010e4:	f7ff fe42 	bl	8000d6c <HAL_GetTick>
 80010e8:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is bypassed or disabled */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 80010ea:	e008      	b.n	80010fe <HAL_RCC_OscConfig+0xfa>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 80010ec:	f7ff fe3e 	bl	8000d6c <HAL_GetTick>
 80010f0:	4602      	mov	r2, r0
 80010f2:	693b      	ldr	r3, [r7, #16]
 80010f4:	1ad3      	subs	r3, r2, r3
 80010f6:	2b64      	cmp	r3, #100	; 0x64
 80010f8:	d901      	bls.n	80010fe <HAL_RCC_OscConfig+0xfa>
          {
            return HAL_TIMEOUT;
 80010fa:	2303      	movs	r3, #3
 80010fc:	e1f0      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 80010fe:	4b6c      	ldr	r3, [pc, #432]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001100:	681b      	ldr	r3, [r3, #0]
 8001102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001106:	2b00      	cmp	r3, #0
 8001108:	d1f0      	bne.n	80010ec <HAL_RCC_OscConfig+0xe8>
 800110a:	e000      	b.n	800110e <HAL_RCC_OscConfig+0x10a>
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 800110c:	bf00      	nop
        }
      }
    }
  }
  /*----------------------------- HSI Configuration --------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 800110e:	687b      	ldr	r3, [r7, #4]
 8001110:	681b      	ldr	r3, [r3, #0]
 8001112:	f003 0302 	and.w	r3, r3, #2
 8001116:	2b00      	cmp	r3, #0
 8001118:	d063      	beq.n	80011e2 <HAL_RCC_OscConfig+0x1de>
    /* Check the parameters */
    assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
    assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));

    /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 800111a:	4b65      	ldr	r3, [pc, #404]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 800111c:	689b      	ldr	r3, [r3, #8]
 800111e:	f003 030c 	and.w	r3, r3, #12
 8001122:	2b00      	cmp	r3, #0
 8001124:	d00b      	beq.n	800113e <HAL_RCC_OscConfig+0x13a>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 8001126:	4b62      	ldr	r3, [pc, #392]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001128:	689b      	ldr	r3, [r3, #8]
 800112a:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 800112e:	2b08      	cmp	r3, #8
 8001130:	d11c      	bne.n	800116c <HAL_RCC_OscConfig+0x168>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 8001132:	4b5f      	ldr	r3, [pc, #380]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001134:	685b      	ldr	r3, [r3, #4]
 8001136:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800113a:	2b00      	cmp	r3, #0
 800113c:	d116      	bne.n	800116c <HAL_RCC_OscConfig+0x168>
    {
      /* When HSI is used as system clock it will not disabled */
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 800113e:	4b5c      	ldr	r3, [pc, #368]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001140:	681b      	ldr	r3, [r3, #0]
 8001142:	f003 0302 	and.w	r3, r3, #2
 8001146:	2b00      	cmp	r3, #0
 8001148:	d005      	beq.n	8001156 <HAL_RCC_OscConfig+0x152>
 800114a:	687b      	ldr	r3, [r7, #4]
 800114c:	68db      	ldr	r3, [r3, #12]
 800114e:	2b01      	cmp	r3, #1
 8001150:	d001      	beq.n	8001156 <HAL_RCC_OscConfig+0x152>
      {
        return HAL_ERROR;
 8001152:	2301      	movs	r3, #1
 8001154:	e1c4      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      }
      /* Otherwise, just the calibration is allowed */
      else
      {
        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8001156:	4b56      	ldr	r3, [pc, #344]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001158:	681b      	ldr	r3, [r3, #0]
 800115a:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 800115e:	687b      	ldr	r3, [r7, #4]
 8001160:	691b      	ldr	r3, [r3, #16]
 8001162:	00db      	lsls	r3, r3, #3
 8001164:	4952      	ldr	r1, [pc, #328]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001166:	4313      	orrs	r3, r2
 8001168:	600b      	str	r3, [r1, #0]
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 800116a:	e03a      	b.n	80011e2 <HAL_RCC_OscConfig+0x1de>
      }
    }
    else
    {
      /* Check the HSI State */
      if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
 800116c:	687b      	ldr	r3, [r7, #4]
 800116e:	68db      	ldr	r3, [r3, #12]
 8001170:	2b00      	cmp	r3, #0
 8001172:	d020      	beq.n	80011b6 <HAL_RCC_OscConfig+0x1b2>
      {
        /* Enable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_ENABLE();
 8001174:	4b4f      	ldr	r3, [pc, #316]	; (80012b4 <HAL_RCC_OscConfig+0x2b0>)
 8001176:	2201      	movs	r2, #1
 8001178:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 800117a:	f7ff fdf7 	bl	8000d6c <HAL_GetTick>
 800117e:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8001180:	e008      	b.n	8001194 <HAL_RCC_OscConfig+0x190>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 8001182:	f7ff fdf3 	bl	8000d6c <HAL_GetTick>
 8001186:	4602      	mov	r2, r0
 8001188:	693b      	ldr	r3, [r7, #16]
 800118a:	1ad3      	subs	r3, r2, r3
 800118c:	2b02      	cmp	r3, #2
 800118e:	d901      	bls.n	8001194 <HAL_RCC_OscConfig+0x190>
          {
            return HAL_TIMEOUT;
 8001190:	2303      	movs	r3, #3
 8001192:	e1a5      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8001194:	4b46      	ldr	r3, [pc, #280]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001196:	681b      	ldr	r3, [r3, #0]
 8001198:	f003 0302 	and.w	r3, r3, #2
 800119c:	2b00      	cmp	r3, #0
 800119e:	d0f0      	beq.n	8001182 <HAL_RCC_OscConfig+0x17e>
          }
        }

        /* Adjusts the Internal High Speed oscillator (HSI) calibration value. */
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 80011a0:	4b43      	ldr	r3, [pc, #268]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80011a2:	681b      	ldr	r3, [r3, #0]
 80011a4:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 80011a8:	687b      	ldr	r3, [r7, #4]
 80011aa:	691b      	ldr	r3, [r3, #16]
 80011ac:	00db      	lsls	r3, r3, #3
 80011ae:	4940      	ldr	r1, [pc, #256]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80011b0:	4313      	orrs	r3, r2
 80011b2:	600b      	str	r3, [r1, #0]
 80011b4:	e015      	b.n	80011e2 <HAL_RCC_OscConfig+0x1de>
      }
      else
      {
        /* Disable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_DISABLE();
 80011b6:	4b3f      	ldr	r3, [pc, #252]	; (80012b4 <HAL_RCC_OscConfig+0x2b0>)
 80011b8:	2200      	movs	r2, #0
 80011ba:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 80011bc:	f7ff fdd6 	bl	8000d6c <HAL_GetTick>
 80011c0:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 80011c2:	e008      	b.n	80011d6 <HAL_RCC_OscConfig+0x1d2>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 80011c4:	f7ff fdd2 	bl	8000d6c <HAL_GetTick>
 80011c8:	4602      	mov	r2, r0
 80011ca:	693b      	ldr	r3, [r7, #16]
 80011cc:	1ad3      	subs	r3, r2, r3
 80011ce:	2b02      	cmp	r3, #2
 80011d0:	d901      	bls.n	80011d6 <HAL_RCC_OscConfig+0x1d2>
          {
            return HAL_TIMEOUT;
 80011d2:	2303      	movs	r3, #3
 80011d4:	e184      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 80011d6:	4b36      	ldr	r3, [pc, #216]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 80011d8:	681b      	ldr	r3, [r3, #0]
 80011da:	f003 0302 	and.w	r3, r3, #2
 80011de:	2b00      	cmp	r3, #0
 80011e0:	d1f0      	bne.n	80011c4 <HAL_RCC_OscConfig+0x1c0>
        }
      }
    }
  }
  /*------------------------------ LSI Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 80011e2:	687b      	ldr	r3, [r7, #4]
 80011e4:	681b      	ldr	r3, [r3, #0]
 80011e6:	f003 0308 	and.w	r3, r3, #8
 80011ea:	2b00      	cmp	r3, #0
 80011ec:	d030      	beq.n	8001250 <HAL_RCC_OscConfig+0x24c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));

    /* Check the LSI State */
    if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
 80011ee:	687b      	ldr	r3, [r7, #4]
 80011f0:	695b      	ldr	r3, [r3, #20]
 80011f2:	2b00      	cmp	r3, #0
 80011f4:	d016      	beq.n	8001224 <HAL_RCC_OscConfig+0x220>
    {
      /* Enable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_ENABLE();
 80011f6:	4b30      	ldr	r3, [pc, #192]	; (80012b8 <HAL_RCC_OscConfig+0x2b4>)
 80011f8:	2201      	movs	r2, #1
 80011fa:	601a      	str	r2, [r3, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 80011fc:	f7ff fdb6 	bl	8000d6c <HAL_GetTick>
 8001200:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8001202:	e008      	b.n	8001216 <HAL_RCC_OscConfig+0x212>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 8001204:	f7ff fdb2 	bl	8000d6c <HAL_GetTick>
 8001208:	4602      	mov	r2, r0
 800120a:	693b      	ldr	r3, [r7, #16]
 800120c:	1ad3      	subs	r3, r2, r3
 800120e:	2b02      	cmp	r3, #2
 8001210:	d901      	bls.n	8001216 <HAL_RCC_OscConfig+0x212>
        {
          return HAL_TIMEOUT;
 8001212:	2303      	movs	r3, #3
 8001214:	e164      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 8001216:	4b26      	ldr	r3, [pc, #152]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001218:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 800121a:	f003 0302 	and.w	r3, r3, #2
 800121e:	2b00      	cmp	r3, #0
 8001220:	d0f0      	beq.n	8001204 <HAL_RCC_OscConfig+0x200>
 8001222:	e015      	b.n	8001250 <HAL_RCC_OscConfig+0x24c>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_DISABLE();
 8001224:	4b24      	ldr	r3, [pc, #144]	; (80012b8 <HAL_RCC_OscConfig+0x2b4>)
 8001226:	2200      	movs	r2, #0
 8001228:	601a      	str	r2, [r3, #0]

      /* Get Start Tick */
      tickstart = HAL_GetTick();
 800122a:	f7ff fd9f 	bl	8000d6c <HAL_GetTick>
 800122e:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8001230:	e008      	b.n	8001244 <HAL_RCC_OscConfig+0x240>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 8001232:	f7ff fd9b 	bl	8000d6c <HAL_GetTick>
 8001236:	4602      	mov	r2, r0
 8001238:	693b      	ldr	r3, [r7, #16]
 800123a:	1ad3      	subs	r3, r2, r3
 800123c:	2b02      	cmp	r3, #2
 800123e:	d901      	bls.n	8001244 <HAL_RCC_OscConfig+0x240>
        {
          return HAL_TIMEOUT;
 8001240:	2303      	movs	r3, #3
 8001242:	e14d      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8001244:	4b1a      	ldr	r3, [pc, #104]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001246:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8001248:	f003 0302 	and.w	r3, r3, #2
 800124c:	2b00      	cmp	r3, #0
 800124e:	d1f0      	bne.n	8001232 <HAL_RCC_OscConfig+0x22e>
        }
      }
    }
  }
  /*------------------------------ LSE Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 8001250:	687b      	ldr	r3, [r7, #4]
 8001252:	681b      	ldr	r3, [r3, #0]
 8001254:	f003 0304 	and.w	r3, r3, #4
 8001258:	2b00      	cmp	r3, #0
 800125a:	f000 80a0 	beq.w	800139e <HAL_RCC_OscConfig+0x39a>
  {
    FlagStatus       pwrclkchanged = RESET;
 800125e:	2300      	movs	r3, #0
 8001260:	75fb      	strb	r3, [r7, #23]
    /* Check the parameters */
    assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));

    /* Update LSE configuration in Backup Domain control register    */
    /* Requires to enable write access to Backup Domain of necessary */
    if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 8001262:	4b13      	ldr	r3, [pc, #76]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001264:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001266:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800126a:	2b00      	cmp	r3, #0
 800126c:	d10f      	bne.n	800128e <HAL_RCC_OscConfig+0x28a>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 800126e:	2300      	movs	r3, #0
 8001270:	60bb      	str	r3, [r7, #8]
 8001272:	4b0f      	ldr	r3, [pc, #60]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001274:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001276:	4a0e      	ldr	r2, [pc, #56]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001278:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800127c:	6413      	str	r3, [r2, #64]	; 0x40
 800127e:	4b0c      	ldr	r3, [pc, #48]	; (80012b0 <HAL_RCC_OscConfig+0x2ac>)
 8001280:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001282:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001286:	60bb      	str	r3, [r7, #8]
 8001288:	68bb      	ldr	r3, [r7, #8]
      pwrclkchanged = SET;
 800128a:	2301      	movs	r3, #1
 800128c:	75fb      	strb	r3, [r7, #23]
    }

    if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 800128e:	4b0b      	ldr	r3, [pc, #44]	; (80012bc <HAL_RCC_OscConfig+0x2b8>)
 8001290:	681b      	ldr	r3, [r3, #0]
 8001292:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8001296:	2b00      	cmp	r3, #0
 8001298:	d121      	bne.n	80012de <HAL_RCC_OscConfig+0x2da>
    {
      /* Enable write access to Backup domain */
      SET_BIT(PWR->CR, PWR_CR_DBP);
 800129a:	4b08      	ldr	r3, [pc, #32]	; (80012bc <HAL_RCC_OscConfig+0x2b8>)
 800129c:	681b      	ldr	r3, [r3, #0]
 800129e:	4a07      	ldr	r2, [pc, #28]	; (80012bc <HAL_RCC_OscConfig+0x2b8>)
 80012a0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80012a4:	6013      	str	r3, [r2, #0]

      /* Wait for Backup domain Write protection disable */
      tickstart = HAL_GetTick();
 80012a6:	f7ff fd61 	bl	8000d6c <HAL_GetTick>
 80012aa:	6138      	str	r0, [r7, #16]

      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 80012ac:	e011      	b.n	80012d2 <HAL_RCC_OscConfig+0x2ce>
 80012ae:	bf00      	nop
 80012b0:	40023800 	.word	0x40023800
 80012b4:	42470000 	.word	0x42470000
 80012b8:	42470e80 	.word	0x42470e80
 80012bc:	40007000 	.word	0x40007000
      {
        if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 80012c0:	f7ff fd54 	bl	8000d6c <HAL_GetTick>
 80012c4:	4602      	mov	r2, r0
 80012c6:	693b      	ldr	r3, [r7, #16]
 80012c8:	1ad3      	subs	r3, r2, r3
 80012ca:	2b02      	cmp	r3, #2
 80012cc:	d901      	bls.n	80012d2 <HAL_RCC_OscConfig+0x2ce>
        {
          return HAL_TIMEOUT;
 80012ce:	2303      	movs	r3, #3
 80012d0:	e106      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 80012d2:	4b85      	ldr	r3, [pc, #532]	; (80014e8 <HAL_RCC_OscConfig+0x4e4>)
 80012d4:	681b      	ldr	r3, [r3, #0]
 80012d6:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80012da:	2b00      	cmp	r3, #0
 80012dc:	d0f0      	beq.n	80012c0 <HAL_RCC_OscConfig+0x2bc>
        }
      }
    }

    /* Set the new LSE configuration -----------------------------------------*/
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 80012de:	687b      	ldr	r3, [r7, #4]
 80012e0:	689b      	ldr	r3, [r3, #8]
 80012e2:	2b01      	cmp	r3, #1
 80012e4:	d106      	bne.n	80012f4 <HAL_RCC_OscConfig+0x2f0>
 80012e6:	4b81      	ldr	r3, [pc, #516]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 80012e8:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80012ea:	4a80      	ldr	r2, [pc, #512]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 80012ec:	f043 0301 	orr.w	r3, r3, #1
 80012f0:	6713      	str	r3, [r2, #112]	; 0x70
 80012f2:	e01c      	b.n	800132e <HAL_RCC_OscConfig+0x32a>
 80012f4:	687b      	ldr	r3, [r7, #4]
 80012f6:	689b      	ldr	r3, [r3, #8]
 80012f8:	2b05      	cmp	r3, #5
 80012fa:	d10c      	bne.n	8001316 <HAL_RCC_OscConfig+0x312>
 80012fc:	4b7b      	ldr	r3, [pc, #492]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 80012fe:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8001300:	4a7a      	ldr	r2, [pc, #488]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001302:	f043 0304 	orr.w	r3, r3, #4
 8001306:	6713      	str	r3, [r2, #112]	; 0x70
 8001308:	4b78      	ldr	r3, [pc, #480]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 800130a:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 800130c:	4a77      	ldr	r2, [pc, #476]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 800130e:	f043 0301 	orr.w	r3, r3, #1
 8001312:	6713      	str	r3, [r2, #112]	; 0x70
 8001314:	e00b      	b.n	800132e <HAL_RCC_OscConfig+0x32a>
 8001316:	4b75      	ldr	r3, [pc, #468]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001318:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 800131a:	4a74      	ldr	r2, [pc, #464]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 800131c:	f023 0301 	bic.w	r3, r3, #1
 8001320:	6713      	str	r3, [r2, #112]	; 0x70
 8001322:	4b72      	ldr	r3, [pc, #456]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001324:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8001326:	4a71      	ldr	r2, [pc, #452]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001328:	f023 0304 	bic.w	r3, r3, #4
 800132c:	6713      	str	r3, [r2, #112]	; 0x70
    /* Check the LSE State */
    if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
 800132e:	687b      	ldr	r3, [r7, #4]
 8001330:	689b      	ldr	r3, [r3, #8]
 8001332:	2b00      	cmp	r3, #0
 8001334:	d015      	beq.n	8001362 <HAL_RCC_OscConfig+0x35e>
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8001336:	f7ff fd19 	bl	8000d6c <HAL_GetTick>
 800133a:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 800133c:	e00a      	b.n	8001354 <HAL_RCC_OscConfig+0x350>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 800133e:	f7ff fd15 	bl	8000d6c <HAL_GetTick>
 8001342:	4602      	mov	r2, r0
 8001344:	693b      	ldr	r3, [r7, #16]
 8001346:	1ad3      	subs	r3, r2, r3
 8001348:	f241 3288 	movw	r2, #5000	; 0x1388
 800134c:	4293      	cmp	r3, r2
 800134e:	d901      	bls.n	8001354 <HAL_RCC_OscConfig+0x350>
        {
          return HAL_TIMEOUT;
 8001350:	2303      	movs	r3, #3
 8001352:	e0c5      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8001354:	4b65      	ldr	r3, [pc, #404]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001356:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8001358:	f003 0302 	and.w	r3, r3, #2
 800135c:	2b00      	cmp	r3, #0
 800135e:	d0ee      	beq.n	800133e <HAL_RCC_OscConfig+0x33a>
 8001360:	e014      	b.n	800138c <HAL_RCC_OscConfig+0x388>
      }
    }
    else
    {
      /* Get Start Tick */
      tickstart = HAL_GetTick();
 8001362:	f7ff fd03 	bl	8000d6c <HAL_GetTick>
 8001366:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8001368:	e00a      	b.n	8001380 <HAL_RCC_OscConfig+0x37c>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 800136a:	f7ff fcff 	bl	8000d6c <HAL_GetTick>
 800136e:	4602      	mov	r2, r0
 8001370:	693b      	ldr	r3, [r7, #16]
 8001372:	1ad3      	subs	r3, r2, r3
 8001374:	f241 3288 	movw	r2, #5000	; 0x1388
 8001378:	4293      	cmp	r3, r2
 800137a:	d901      	bls.n	8001380 <HAL_RCC_OscConfig+0x37c>
        {
          return HAL_TIMEOUT;
 800137c:	2303      	movs	r3, #3
 800137e:	e0af      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8001380:	4b5a      	ldr	r3, [pc, #360]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001382:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8001384:	f003 0302 	and.w	r3, r3, #2
 8001388:	2b00      	cmp	r3, #0
 800138a:	d1ee      	bne.n	800136a <HAL_RCC_OscConfig+0x366>
        }
      }
    }

    /* Restore clock configuration if changed */
    if(pwrclkchanged == SET)
 800138c:	7dfb      	ldrb	r3, [r7, #23]
 800138e:	2b01      	cmp	r3, #1
 8001390:	d105      	bne.n	800139e <HAL_RCC_OscConfig+0x39a>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 8001392:	4b56      	ldr	r3, [pc, #344]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001394:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001396:	4a55      	ldr	r2, [pc, #340]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001398:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 800139c:	6413      	str	r3, [r2, #64]	; 0x40
    }
  }
  /*-------------------------------- PLL Configuration -----------------------*/
  /* Check the parameters */
  assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 800139e:	687b      	ldr	r3, [r7, #4]
 80013a0:	699b      	ldr	r3, [r3, #24]
 80013a2:	2b00      	cmp	r3, #0
 80013a4:	f000 809b 	beq.w	80014de <HAL_RCC_OscConfig+0x4da>
  {
    /* Check if the PLL is used as system clock or not */
    if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 80013a8:	4b50      	ldr	r3, [pc, #320]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 80013aa:	689b      	ldr	r3, [r3, #8]
 80013ac:	f003 030c 	and.w	r3, r3, #12
 80013b0:	2b08      	cmp	r3, #8
 80013b2:	d05c      	beq.n	800146e <HAL_RCC_OscConfig+0x46a>
    {
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 80013b4:	687b      	ldr	r3, [r7, #4]
 80013b6:	699b      	ldr	r3, [r3, #24]
 80013b8:	2b02      	cmp	r3, #2
 80013ba:	d141      	bne.n	8001440 <HAL_RCC_OscConfig+0x43c>
        assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
        assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
        assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));

        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 80013bc:	4b4c      	ldr	r3, [pc, #304]	; (80014f0 <HAL_RCC_OscConfig+0x4ec>)
 80013be:	2200      	movs	r2, #0
 80013c0:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80013c2:	f7ff fcd3 	bl	8000d6c <HAL_GetTick>
 80013c6:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 80013c8:	e008      	b.n	80013dc <HAL_RCC_OscConfig+0x3d8>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 80013ca:	f7ff fccf 	bl	8000d6c <HAL_GetTick>
 80013ce:	4602      	mov	r2, r0
 80013d0:	693b      	ldr	r3, [r7, #16]
 80013d2:	1ad3      	subs	r3, r2, r3
 80013d4:	2b02      	cmp	r3, #2
 80013d6:	d901      	bls.n	80013dc <HAL_RCC_OscConfig+0x3d8>
          {
            return HAL_TIMEOUT;
 80013d8:	2303      	movs	r3, #3
 80013da:	e081      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 80013dc:	4b43      	ldr	r3, [pc, #268]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 80013de:	681b      	ldr	r3, [r3, #0]
 80013e0:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80013e4:	2b00      	cmp	r3, #0
 80013e6:	d1f0      	bne.n	80013ca <HAL_RCC_OscConfig+0x3c6>
          }
        }

        /* Configure the main PLL clock source, multiplication and division factors. */
        WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \
 80013e8:	687b      	ldr	r3, [r7, #4]
 80013ea:	69da      	ldr	r2, [r3, #28]
 80013ec:	687b      	ldr	r3, [r7, #4]
 80013ee:	6a1b      	ldr	r3, [r3, #32]
 80013f0:	431a      	orrs	r2, r3
 80013f2:	687b      	ldr	r3, [r7, #4]
 80013f4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80013f6:	019b      	lsls	r3, r3, #6
 80013f8:	431a      	orrs	r2, r3
 80013fa:	687b      	ldr	r3, [r7, #4]
 80013fc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80013fe:	085b      	lsrs	r3, r3, #1
 8001400:	3b01      	subs	r3, #1
 8001402:	041b      	lsls	r3, r3, #16
 8001404:	431a      	orrs	r2, r3
 8001406:	687b      	ldr	r3, [r7, #4]
 8001408:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800140a:	061b      	lsls	r3, r3, #24
 800140c:	4937      	ldr	r1, [pc, #220]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 800140e:	4313      	orrs	r3, r2
 8001410:	604b      	str	r3, [r1, #4]
                                 RCC_OscInitStruct->PLL.PLLM                                                 | \
                                 (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)             | \
                                 (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos) | \
                                 (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)));
        /* Enable the main PLL. */
        __HAL_RCC_PLL_ENABLE();
 8001412:	4b37      	ldr	r3, [pc, #220]	; (80014f0 <HAL_RCC_OscConfig+0x4ec>)
 8001414:	2201      	movs	r2, #1
 8001416:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8001418:	f7ff fca8 	bl	8000d6c <HAL_GetTick>
 800141c:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 800141e:	e008      	b.n	8001432 <HAL_RCC_OscConfig+0x42e>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8001420:	f7ff fca4 	bl	8000d6c <HAL_GetTick>
 8001424:	4602      	mov	r2, r0
 8001426:	693b      	ldr	r3, [r7, #16]
 8001428:	1ad3      	subs	r3, r2, r3
 800142a:	2b02      	cmp	r3, #2
 800142c:	d901      	bls.n	8001432 <HAL_RCC_OscConfig+0x42e>
          {
            return HAL_TIMEOUT;
 800142e:	2303      	movs	r3, #3
 8001430:	e056      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8001432:	4b2e      	ldr	r3, [pc, #184]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001434:	681b      	ldr	r3, [r3, #0]
 8001436:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800143a:	2b00      	cmp	r3, #0
 800143c:	d0f0      	beq.n	8001420 <HAL_RCC_OscConfig+0x41c>
 800143e:	e04e      	b.n	80014de <HAL_RCC_OscConfig+0x4da>
        }
      }
      else
      {
        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8001440:	4b2b      	ldr	r3, [pc, #172]	; (80014f0 <HAL_RCC_OscConfig+0x4ec>)
 8001442:	2200      	movs	r2, #0
 8001444:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8001446:	f7ff fc91 	bl	8000d6c <HAL_GetTick>
 800144a:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 800144c:	e008      	b.n	8001460 <HAL_RCC_OscConfig+0x45c>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 800144e:	f7ff fc8d 	bl	8000d6c <HAL_GetTick>
 8001452:	4602      	mov	r2, r0
 8001454:	693b      	ldr	r3, [r7, #16]
 8001456:	1ad3      	subs	r3, r2, r3
 8001458:	2b02      	cmp	r3, #2
 800145a:	d901      	bls.n	8001460 <HAL_RCC_OscConfig+0x45c>
          {
            return HAL_TIMEOUT;
 800145c:	2303      	movs	r3, #3
 800145e:	e03f      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8001460:	4b22      	ldr	r3, [pc, #136]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 8001462:	681b      	ldr	r3, [r3, #0]
 8001464:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8001468:	2b00      	cmp	r3, #0
 800146a:	d1f0      	bne.n	800144e <HAL_RCC_OscConfig+0x44a>
 800146c:	e037      	b.n	80014de <HAL_RCC_OscConfig+0x4da>
      }
    }
    else
    {
      /* Check if there is a request to disable the PLL used as System clock source */
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 800146e:	687b      	ldr	r3, [r7, #4]
 8001470:	699b      	ldr	r3, [r3, #24]
 8001472:	2b01      	cmp	r3, #1
 8001474:	d101      	bne.n	800147a <HAL_RCC_OscConfig+0x476>
      {
        return HAL_ERROR;
 8001476:	2301      	movs	r3, #1
 8001478:	e032      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
      }
      else
      {
        /* Do not return HAL_ERROR if request repeats the current configuration */
        pll_config = RCC->PLLCFGR;
 800147a:	4b1c      	ldr	r3, [pc, #112]	; (80014ec <HAL_RCC_OscConfig+0x4e8>)
 800147c:	685b      	ldr	r3, [r3, #4]
 800147e:	60fb      	str	r3, [r7, #12]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
#else
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8001480:	687b      	ldr	r3, [r7, #4]
 8001482:	699b      	ldr	r3, [r3, #24]
 8001484:	2b01      	cmp	r3, #1
 8001486:	d028      	beq.n	80014da <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8001488:	68fb      	ldr	r3, [r7, #12]
 800148a:	f403 0280 	and.w	r2, r3, #4194304	; 0x400000
 800148e:	687b      	ldr	r3, [r7, #4]
 8001490:	69db      	ldr	r3, [r3, #28]
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8001492:	429a      	cmp	r2, r3
 8001494:	d121      	bne.n	80014da <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 8001496:	68fb      	ldr	r3, [r7, #12]
 8001498:	f003 023f 	and.w	r2, r3, #63	; 0x3f
 800149c:	687b      	ldr	r3, [r7, #4]
 800149e:	6a1b      	ldr	r3, [r3, #32]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 80014a0:	429a      	cmp	r2, r3
 80014a2:	d11a      	bne.n	80014da <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 80014a4:	68fa      	ldr	r2, [r7, #12]
 80014a6:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 80014aa:	4013      	ands	r3, r2
 80014ac:	687a      	ldr	r2, [r7, #4]
 80014ae:	6a52      	ldr	r2, [r2, #36]	; 0x24
 80014b0:	0192      	lsls	r2, r2, #6
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 80014b2:	4293      	cmp	r3, r2
 80014b4:	d111      	bne.n	80014da <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 80014b6:	68fb      	ldr	r3, [r7, #12]
 80014b8:	f403 3240 	and.w	r2, r3, #196608	; 0x30000
 80014bc:	687b      	ldr	r3, [r7, #4]
 80014be:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80014c0:	085b      	lsrs	r3, r3, #1
 80014c2:	3b01      	subs	r3, #1
 80014c4:	041b      	lsls	r3, r3, #16
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 80014c6:	429a      	cmp	r2, r3
 80014c8:	d107      	bne.n	80014da <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
 80014ca:	68fb      	ldr	r3, [r7, #12]
 80014cc:	f003 6270 	and.w	r2, r3, #251658240	; 0xf000000
 80014d0:	687b      	ldr	r3, [r7, #4]
 80014d2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014d4:	061b      	lsls	r3, r3, #24
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 80014d6:	429a      	cmp	r2, r3
 80014d8:	d001      	beq.n	80014de <HAL_RCC_OscConfig+0x4da>
#endif
        {
          return HAL_ERROR;
 80014da:	2301      	movs	r3, #1
 80014dc:	e000      	b.n	80014e0 <HAL_RCC_OscConfig+0x4dc>
        }
      }
    }
  }
  return HAL_OK;
 80014de:	2300      	movs	r3, #0
}
 80014e0:	4618      	mov	r0, r3
 80014e2:	3718      	adds	r7, #24
 80014e4:	46bd      	mov	sp, r7
 80014e6:	bd80      	pop	{r7, pc}
 80014e8:	40007000 	.word	0x40007000
 80014ec:	40023800 	.word	0x40023800
 80014f0:	42470060 	.word	0x42470060

080014f4 <HAL_RCC_ClockConfig>:
  *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
  *         (for more details refer to section above "Initialization/de-initialization functions")
  * @retval None
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 80014f4:	b580      	push	{r7, lr}
 80014f6:	b084      	sub	sp, #16
 80014f8:	af00      	add	r7, sp, #0
 80014fa:	6078      	str	r0, [r7, #4]
 80014fc:	6039      	str	r1, [r7, #0]
  uint32_t tickstart;

  /* Check Null pointer */
  if(RCC_ClkInitStruct == NULL)
 80014fe:	687b      	ldr	r3, [r7, #4]
 8001500:	2b00      	cmp	r3, #0
 8001502:	d101      	bne.n	8001508 <HAL_RCC_ClockConfig+0x14>
  {
    return HAL_ERROR;
 8001504:	2301      	movs	r3, #1
 8001506:	e0cc      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
  /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
    must be correctly programmed according to the frequency of the CPU clock
    (HCLK) and the supply voltage of the device. */

  /* Increasing the number of wait states because of higher CPU frequency */
  if(FLatency > __HAL_FLASH_GET_LATENCY())
 8001508:	4b68      	ldr	r3, [pc, #416]	; (80016ac <HAL_RCC_ClockConfig+0x1b8>)
 800150a:	681b      	ldr	r3, [r3, #0]
 800150c:	f003 0307 	and.w	r3, r3, #7
 8001510:	683a      	ldr	r2, [r7, #0]
 8001512:	429a      	cmp	r2, r3
 8001514:	d90c      	bls.n	8001530 <HAL_RCC_ClockConfig+0x3c>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8001516:	4b65      	ldr	r3, [pc, #404]	; (80016ac <HAL_RCC_ClockConfig+0x1b8>)
 8001518:	683a      	ldr	r2, [r7, #0]
 800151a:	b2d2      	uxtb	r2, r2
 800151c:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 800151e:	4b63      	ldr	r3, [pc, #396]	; (80016ac <HAL_RCC_ClockConfig+0x1b8>)
 8001520:	681b      	ldr	r3, [r3, #0]
 8001522:	f003 0307 	and.w	r3, r3, #7
 8001526:	683a      	ldr	r2, [r7, #0]
 8001528:	429a      	cmp	r2, r3
 800152a:	d001      	beq.n	8001530 <HAL_RCC_ClockConfig+0x3c>
    {
      return HAL_ERROR;
 800152c:	2301      	movs	r3, #1
 800152e:	e0b8      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- HCLK Configuration --------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8001530:	687b      	ldr	r3, [r7, #4]
 8001532:	681b      	ldr	r3, [r3, #0]
 8001534:	f003 0302 	and.w	r3, r3, #2
 8001538:	2b00      	cmp	r3, #0
 800153a:	d020      	beq.n	800157e <HAL_RCC_ClockConfig+0x8a>
  {
    /* Set the highest APBx dividers in order to ensure that we do not go through
       a non-spec phase whatever we decrease or increase HCLK. */
    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 800153c:	687b      	ldr	r3, [r7, #4]
 800153e:	681b      	ldr	r3, [r3, #0]
 8001540:	f003 0304 	and.w	r3, r3, #4
 8001544:	2b00      	cmp	r3, #0
 8001546:	d005      	beq.n	8001554 <HAL_RCC_ClockConfig+0x60>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8001548:	4b59      	ldr	r3, [pc, #356]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 800154a:	689b      	ldr	r3, [r3, #8]
 800154c:	4a58      	ldr	r2, [pc, #352]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 800154e:	f443 53e0 	orr.w	r3, r3, #7168	; 0x1c00
 8001552:	6093      	str	r3, [r2, #8]
    }

    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8001554:	687b      	ldr	r3, [r7, #4]
 8001556:	681b      	ldr	r3, [r3, #0]
 8001558:	f003 0308 	and.w	r3, r3, #8
 800155c:	2b00      	cmp	r3, #0
 800155e:	d005      	beq.n	800156c <HAL_RCC_ClockConfig+0x78>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 8001560:	4b53      	ldr	r3, [pc, #332]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001562:	689b      	ldr	r3, [r3, #8]
 8001564:	4a52      	ldr	r2, [pc, #328]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001566:	f443 4360 	orr.w	r3, r3, #57344	; 0xe000
 800156a:	6093      	str	r3, [r2, #8]
    }

    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 800156c:	4b50      	ldr	r3, [pc, #320]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 800156e:	689b      	ldr	r3, [r3, #8]
 8001570:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8001574:	687b      	ldr	r3, [r7, #4]
 8001576:	689b      	ldr	r3, [r3, #8]
 8001578:	494d      	ldr	r1, [pc, #308]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 800157a:	4313      	orrs	r3, r2
 800157c:	608b      	str	r3, [r1, #8]
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 800157e:	687b      	ldr	r3, [r7, #4]
 8001580:	681b      	ldr	r3, [r3, #0]
 8001582:	f003 0301 	and.w	r3, r3, #1
 8001586:	2b00      	cmp	r3, #0
 8001588:	d044      	beq.n	8001614 <HAL_RCC_ClockConfig+0x120>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* HSE is selected as System Clock Source */
    if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 800158a:	687b      	ldr	r3, [r7, #4]
 800158c:	685b      	ldr	r3, [r3, #4]
 800158e:	2b01      	cmp	r3, #1
 8001590:	d107      	bne.n	80015a2 <HAL_RCC_ClockConfig+0xae>
    {
      /* Check the HSE ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8001592:	4b47      	ldr	r3, [pc, #284]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001594:	681b      	ldr	r3, [r3, #0]
 8001596:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800159a:	2b00      	cmp	r3, #0
 800159c:	d119      	bne.n	80015d2 <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800159e:	2301      	movs	r3, #1
 80015a0:	e07f      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
      }
    }
    /* PLL is selected as System Clock Source */
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 80015a2:	687b      	ldr	r3, [r7, #4]
 80015a4:	685b      	ldr	r3, [r3, #4]
 80015a6:	2b02      	cmp	r3, #2
 80015a8:	d003      	beq.n	80015b2 <HAL_RCC_ClockConfig+0xbe>
            (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLRCLK))
 80015aa:	687b      	ldr	r3, [r7, #4]
 80015ac:	685b      	ldr	r3, [r3, #4]
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 80015ae:	2b03      	cmp	r3, #3
 80015b0:	d107      	bne.n	80015c2 <HAL_RCC_ClockConfig+0xce>
    {
      /* Check the PLL ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 80015b2:	4b3f      	ldr	r3, [pc, #252]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 80015b4:	681b      	ldr	r3, [r3, #0]
 80015b6:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80015ba:	2b00      	cmp	r3, #0
 80015bc:	d109      	bne.n	80015d2 <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 80015be:	2301      	movs	r3, #1
 80015c0:	e06f      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
    }
    /* HSI is selected as System Clock Source */
    else
    {
      /* Check the HSI ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 80015c2:	4b3b      	ldr	r3, [pc, #236]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 80015c4:	681b      	ldr	r3, [r3, #0]
 80015c6:	f003 0302 	and.w	r3, r3, #2
 80015ca:	2b00      	cmp	r3, #0
 80015cc:	d101      	bne.n	80015d2 <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 80015ce:	2301      	movs	r3, #1
 80015d0:	e067      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
      }
    }

    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 80015d2:	4b37      	ldr	r3, [pc, #220]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 80015d4:	689b      	ldr	r3, [r3, #8]
 80015d6:	f023 0203 	bic.w	r2, r3, #3
 80015da:	687b      	ldr	r3, [r7, #4]
 80015dc:	685b      	ldr	r3, [r3, #4]
 80015de:	4934      	ldr	r1, [pc, #208]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 80015e0:	4313      	orrs	r3, r2
 80015e2:	608b      	str	r3, [r1, #8]

    /* Get Start Tick */
    tickstart = HAL_GetTick();
 80015e4:	f7ff fbc2 	bl	8000d6c <HAL_GetTick>
 80015e8:	60f8      	str	r0, [r7, #12]

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80015ea:	e00a      	b.n	8001602 <HAL_RCC_ClockConfig+0x10e>
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 80015ec:	f7ff fbbe 	bl	8000d6c <HAL_GetTick>
 80015f0:	4602      	mov	r2, r0
 80015f2:	68fb      	ldr	r3, [r7, #12]
 80015f4:	1ad3      	subs	r3, r2, r3
 80015f6:	f241 3288 	movw	r2, #5000	; 0x1388
 80015fa:	4293      	cmp	r3, r2
 80015fc:	d901      	bls.n	8001602 <HAL_RCC_ClockConfig+0x10e>
      {
        return HAL_TIMEOUT;
 80015fe:	2303      	movs	r3, #3
 8001600:	e04f      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8001602:	4b2b      	ldr	r3, [pc, #172]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001604:	689b      	ldr	r3, [r3, #8]
 8001606:	f003 020c 	and.w	r2, r3, #12
 800160a:	687b      	ldr	r3, [r7, #4]
 800160c:	685b      	ldr	r3, [r3, #4]
 800160e:	009b      	lsls	r3, r3, #2
 8001610:	429a      	cmp	r2, r3
 8001612:	d1eb      	bne.n	80015ec <HAL_RCC_ClockConfig+0xf8>
      }
    }
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if(FLatency < __HAL_FLASH_GET_LATENCY())
 8001614:	4b25      	ldr	r3, [pc, #148]	; (80016ac <HAL_RCC_ClockConfig+0x1b8>)
 8001616:	681b      	ldr	r3, [r3, #0]
 8001618:	f003 0307 	and.w	r3, r3, #7
 800161c:	683a      	ldr	r2, [r7, #0]
 800161e:	429a      	cmp	r2, r3
 8001620:	d20c      	bcs.n	800163c <HAL_RCC_ClockConfig+0x148>
  {
     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8001622:	4b22      	ldr	r3, [pc, #136]	; (80016ac <HAL_RCC_ClockConfig+0x1b8>)
 8001624:	683a      	ldr	r2, [r7, #0]
 8001626:	b2d2      	uxtb	r2, r2
 8001628:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 800162a:	4b20      	ldr	r3, [pc, #128]	; (80016ac <HAL_RCC_ClockConfig+0x1b8>)
 800162c:	681b      	ldr	r3, [r3, #0]
 800162e:	f003 0307 	and.w	r3, r3, #7
 8001632:	683a      	ldr	r2, [r7, #0]
 8001634:	429a      	cmp	r2, r3
 8001636:	d001      	beq.n	800163c <HAL_RCC_ClockConfig+0x148>
    {
      return HAL_ERROR;
 8001638:	2301      	movs	r3, #1
 800163a:	e032      	b.n	80016a2 <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- PCLK1 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 800163c:	687b      	ldr	r3, [r7, #4]
 800163e:	681b      	ldr	r3, [r3, #0]
 8001640:	f003 0304 	and.w	r3, r3, #4
 8001644:	2b00      	cmp	r3, #0
 8001646:	d008      	beq.n	800165a <HAL_RCC_ClockConfig+0x166>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8001648:	4b19      	ldr	r3, [pc, #100]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 800164a:	689b      	ldr	r3, [r3, #8]
 800164c:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 8001650:	687b      	ldr	r3, [r7, #4]
 8001652:	68db      	ldr	r3, [r3, #12]
 8001654:	4916      	ldr	r1, [pc, #88]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001656:	4313      	orrs	r3, r2
 8001658:	608b      	str	r3, [r1, #8]
  }

  /*-------------------------- PCLK2 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 800165a:	687b      	ldr	r3, [r7, #4]
 800165c:	681b      	ldr	r3, [r3, #0]
 800165e:	f003 0308 	and.w	r3, r3, #8
 8001662:	2b00      	cmp	r3, #0
 8001664:	d009      	beq.n	800167a <HAL_RCC_ClockConfig+0x186>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 8001666:	4b12      	ldr	r3, [pc, #72]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001668:	689b      	ldr	r3, [r3, #8]
 800166a:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 800166e:	687b      	ldr	r3, [r7, #4]
 8001670:	691b      	ldr	r3, [r3, #16]
 8001672:	00db      	lsls	r3, r3, #3
 8001674:	490e      	ldr	r1, [pc, #56]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001676:	4313      	orrs	r3, r2
 8001678:	608b      	str	r3, [r1, #8]
  }

  /* Update the SystemCoreClock global variable */
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_Pos];
 800167a:	f000 f821 	bl	80016c0 <HAL_RCC_GetSysClockFreq>
 800167e:	4601      	mov	r1, r0
 8001680:	4b0b      	ldr	r3, [pc, #44]	; (80016b0 <HAL_RCC_ClockConfig+0x1bc>)
 8001682:	689b      	ldr	r3, [r3, #8]
 8001684:	091b      	lsrs	r3, r3, #4
 8001686:	f003 030f 	and.w	r3, r3, #15
 800168a:	4a0a      	ldr	r2, [pc, #40]	; (80016b4 <HAL_RCC_ClockConfig+0x1c0>)
 800168c:	5cd3      	ldrb	r3, [r2, r3]
 800168e:	fa21 f303 	lsr.w	r3, r1, r3
 8001692:	4a09      	ldr	r2, [pc, #36]	; (80016b8 <HAL_RCC_ClockConfig+0x1c4>)
 8001694:	6013      	str	r3, [r2, #0]

  /* Configure the source of time base considering new system clocks settings */
  HAL_InitTick (uwTickPrio);
 8001696:	4b09      	ldr	r3, [pc, #36]	; (80016bc <HAL_RCC_ClockConfig+0x1c8>)
 8001698:	681b      	ldr	r3, [r3, #0]
 800169a:	4618      	mov	r0, r3
 800169c:	f7ff fb22 	bl	8000ce4 <HAL_InitTick>

  return HAL_OK;
 80016a0:	2300      	movs	r3, #0
}
 80016a2:	4618      	mov	r0, r3
 80016a4:	3710      	adds	r7, #16
 80016a6:	46bd      	mov	sp, r7
 80016a8:	bd80      	pop	{r7, pc}
 80016aa:	bf00      	nop
 80016ac:	40023c00 	.word	0x40023c00
 80016b0:	40023800 	.word	0x40023800
 80016b4:	08009018 	.word	0x08009018
 80016b8:	20000000 	.word	0x20000000
 80016bc:	20000004 	.word	0x20000004

080016c0 <HAL_RCC_GetSysClockFreq>:
  *
  *
  * @retval SYSCLK frequency
  */
__weak uint32_t HAL_RCC_GetSysClockFreq(void)
{
 80016c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80016c2:	b085      	sub	sp, #20
 80016c4:	af00      	add	r7, sp, #0
  uint32_t pllm = 0U, pllvco = 0U, pllp = 0U;
 80016c6:	2300      	movs	r3, #0
 80016c8:	607b      	str	r3, [r7, #4]
 80016ca:	2300      	movs	r3, #0
 80016cc:	60fb      	str	r3, [r7, #12]
 80016ce:	2300      	movs	r3, #0
 80016d0:	603b      	str	r3, [r7, #0]
  uint32_t sysclockfreq = 0U;
 80016d2:	2300      	movs	r3, #0
 80016d4:	60bb      	str	r3, [r7, #8]

  /* Get SYSCLK source -------------------------------------------------------*/
  switch (RCC->CFGR & RCC_CFGR_SWS)
 80016d6:	4b63      	ldr	r3, [pc, #396]	; (8001864 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80016d8:	689b      	ldr	r3, [r3, #8]
 80016da:	f003 030c 	and.w	r3, r3, #12
 80016de:	2b04      	cmp	r3, #4
 80016e0:	d007      	beq.n	80016f2 <HAL_RCC_GetSysClockFreq+0x32>
 80016e2:	2b08      	cmp	r3, #8
 80016e4:	d008      	beq.n	80016f8 <HAL_RCC_GetSysClockFreq+0x38>
 80016e6:	2b00      	cmp	r3, #0
 80016e8:	f040 80b4 	bne.w	8001854 <HAL_RCC_GetSysClockFreq+0x194>
  {
    case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
    {
      sysclockfreq = HSI_VALUE;
 80016ec:	4b5e      	ldr	r3, [pc, #376]	; (8001868 <HAL_RCC_GetSysClockFreq+0x1a8>)
 80016ee:	60bb      	str	r3, [r7, #8]
       break;
 80016f0:	e0b3      	b.n	800185a <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
    {
      sysclockfreq = HSE_VALUE;
 80016f2:	4b5e      	ldr	r3, [pc, #376]	; (800186c <HAL_RCC_GetSysClockFreq+0x1ac>)
 80016f4:	60bb      	str	r3, [r7, #8]
      break;
 80016f6:	e0b0      	b.n	800185a <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_PLL:  /* PLL used as system clock  source */
    {
      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
      SYSCLK = PLL_VCO / PLLP */
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 80016f8:	4b5a      	ldr	r3, [pc, #360]	; (8001864 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80016fa:	685b      	ldr	r3, [r3, #4]
 80016fc:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8001700:	607b      	str	r3, [r7, #4]
      if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
 8001702:	4b58      	ldr	r3, [pc, #352]	; (8001864 <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001704:	685b      	ldr	r3, [r3, #4]
 8001706:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800170a:	2b00      	cmp	r3, #0
 800170c:	d04a      	beq.n	80017a4 <HAL_RCC_GetSysClockFreq+0xe4>
      {
        /* HSE used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 800170e:	4b55      	ldr	r3, [pc, #340]	; (8001864 <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001710:	685b      	ldr	r3, [r3, #4]
 8001712:	099b      	lsrs	r3, r3, #6
 8001714:	f04f 0400 	mov.w	r4, #0
 8001718:	f240 11ff 	movw	r1, #511	; 0x1ff
 800171c:	f04f 0200 	mov.w	r2, #0
 8001720:	ea03 0501 	and.w	r5, r3, r1
 8001724:	ea04 0602 	and.w	r6, r4, r2
 8001728:	4629      	mov	r1, r5
 800172a:	4632      	mov	r2, r6
 800172c:	f04f 0300 	mov.w	r3, #0
 8001730:	f04f 0400 	mov.w	r4, #0
 8001734:	0154      	lsls	r4, r2, #5
 8001736:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 800173a:	014b      	lsls	r3, r1, #5
 800173c:	4619      	mov	r1, r3
 800173e:	4622      	mov	r2, r4
 8001740:	1b49      	subs	r1, r1, r5
 8001742:	eb62 0206 	sbc.w	r2, r2, r6
 8001746:	f04f 0300 	mov.w	r3, #0
 800174a:	f04f 0400 	mov.w	r4, #0
 800174e:	0194      	lsls	r4, r2, #6
 8001750:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 8001754:	018b      	lsls	r3, r1, #6
 8001756:	1a5b      	subs	r3, r3, r1
 8001758:	eb64 0402 	sbc.w	r4, r4, r2
 800175c:	f04f 0100 	mov.w	r1, #0
 8001760:	f04f 0200 	mov.w	r2, #0
 8001764:	00e2      	lsls	r2, r4, #3
 8001766:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 800176a:	00d9      	lsls	r1, r3, #3
 800176c:	460b      	mov	r3, r1
 800176e:	4614      	mov	r4, r2
 8001770:	195b      	adds	r3, r3, r5
 8001772:	eb44 0406 	adc.w	r4, r4, r6
 8001776:	f04f 0100 	mov.w	r1, #0
 800177a:	f04f 0200 	mov.w	r2, #0
 800177e:	0262      	lsls	r2, r4, #9
 8001780:	ea42 52d3 	orr.w	r2, r2, r3, lsr #23
 8001784:	0259      	lsls	r1, r3, #9
 8001786:	460b      	mov	r3, r1
 8001788:	4614      	mov	r4, r2
 800178a:	4618      	mov	r0, r3
 800178c:	4621      	mov	r1, r4
 800178e:	687b      	ldr	r3, [r7, #4]
 8001790:	f04f 0400 	mov.w	r4, #0
 8001794:	461a      	mov	r2, r3
 8001796:	4623      	mov	r3, r4
 8001798:	f002 f942 	bl	8003a20 <__aeabi_uldivmod>
 800179c:	4603      	mov	r3, r0
 800179e:	460c      	mov	r4, r1
 80017a0:	60fb      	str	r3, [r7, #12]
 80017a2:	e049      	b.n	8001838 <HAL_RCC_GetSysClockFreq+0x178>
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 80017a4:	4b2f      	ldr	r3, [pc, #188]	; (8001864 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80017a6:	685b      	ldr	r3, [r3, #4]
 80017a8:	099b      	lsrs	r3, r3, #6
 80017aa:	f04f 0400 	mov.w	r4, #0
 80017ae:	f240 11ff 	movw	r1, #511	; 0x1ff
 80017b2:	f04f 0200 	mov.w	r2, #0
 80017b6:	ea03 0501 	and.w	r5, r3, r1
 80017ba:	ea04 0602 	and.w	r6, r4, r2
 80017be:	4629      	mov	r1, r5
 80017c0:	4632      	mov	r2, r6
 80017c2:	f04f 0300 	mov.w	r3, #0
 80017c6:	f04f 0400 	mov.w	r4, #0
 80017ca:	0154      	lsls	r4, r2, #5
 80017cc:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 80017d0:	014b      	lsls	r3, r1, #5
 80017d2:	4619      	mov	r1, r3
 80017d4:	4622      	mov	r2, r4
 80017d6:	1b49      	subs	r1, r1, r5
 80017d8:	eb62 0206 	sbc.w	r2, r2, r6
 80017dc:	f04f 0300 	mov.w	r3, #0
 80017e0:	f04f 0400 	mov.w	r4, #0
 80017e4:	0194      	lsls	r4, r2, #6
 80017e6:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 80017ea:	018b      	lsls	r3, r1, #6
 80017ec:	1a5b      	subs	r3, r3, r1
 80017ee:	eb64 0402 	sbc.w	r4, r4, r2
 80017f2:	f04f 0100 	mov.w	r1, #0
 80017f6:	f04f 0200 	mov.w	r2, #0
 80017fa:	00e2      	lsls	r2, r4, #3
 80017fc:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 8001800:	00d9      	lsls	r1, r3, #3
 8001802:	460b      	mov	r3, r1
 8001804:	4614      	mov	r4, r2
 8001806:	195b      	adds	r3, r3, r5
 8001808:	eb44 0406 	adc.w	r4, r4, r6
 800180c:	f04f 0100 	mov.w	r1, #0
 8001810:	f04f 0200 	mov.w	r2, #0
 8001814:	02a2      	lsls	r2, r4, #10
 8001816:	ea42 5293 	orr.w	r2, r2, r3, lsr #22
 800181a:	0299      	lsls	r1, r3, #10
 800181c:	460b      	mov	r3, r1
 800181e:	4614      	mov	r4, r2
 8001820:	4618      	mov	r0, r3
 8001822:	4621      	mov	r1, r4
 8001824:	687b      	ldr	r3, [r7, #4]
 8001826:	f04f 0400 	mov.w	r4, #0
 800182a:	461a      	mov	r2, r3
 800182c:	4623      	mov	r3, r4
 800182e:	f002 f8f7 	bl	8003a20 <__aeabi_uldivmod>
 8001832:	4603      	mov	r3, r0
 8001834:	460c      	mov	r4, r1
 8001836:	60fb      	str	r3, [r7, #12]
      }
      pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
 8001838:	4b0a      	ldr	r3, [pc, #40]	; (8001864 <HAL_RCC_GetSysClockFreq+0x1a4>)
 800183a:	685b      	ldr	r3, [r3, #4]
 800183c:	0c1b      	lsrs	r3, r3, #16
 800183e:	f003 0303 	and.w	r3, r3, #3
 8001842:	3301      	adds	r3, #1
 8001844:	005b      	lsls	r3, r3, #1
 8001846:	603b      	str	r3, [r7, #0]

      sysclockfreq = pllvco/pllp;
 8001848:	68fa      	ldr	r2, [r7, #12]
 800184a:	683b      	ldr	r3, [r7, #0]
 800184c:	fbb2 f3f3 	udiv	r3, r2, r3
 8001850:	60bb      	str	r3, [r7, #8]
      break;
 8001852:	e002      	b.n	800185a <HAL_RCC_GetSysClockFreq+0x19a>
    }
    default:
    {
      sysclockfreq = HSI_VALUE;
 8001854:	4b04      	ldr	r3, [pc, #16]	; (8001868 <HAL_RCC_GetSysClockFreq+0x1a8>)
 8001856:	60bb      	str	r3, [r7, #8]
      break;
 8001858:	bf00      	nop
    }
  }
  return sysclockfreq;
 800185a:	68bb      	ldr	r3, [r7, #8]
}
 800185c:	4618      	mov	r0, r3
 800185e:	3714      	adds	r7, #20
 8001860:	46bd      	mov	sp, r7
 8001862:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001864:	40023800 	.word	0x40023800
 8001868:	00f42400 	.word	0x00f42400
 800186c:	007a1200 	.word	0x007a1200

08001870 <HAL_RCC_GetHCLKFreq>:
  * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
 8001870:	b480      	push	{r7}
 8001872:	af00      	add	r7, sp, #0
  return SystemCoreClock;
 8001874:	4b03      	ldr	r3, [pc, #12]	; (8001884 <HAL_RCC_GetHCLKFreq+0x14>)
 8001876:	681b      	ldr	r3, [r3, #0]
}
 8001878:	4618      	mov	r0, r3
 800187a:	46bd      	mov	sp, r7
 800187c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001880:	4770      	bx	lr
 8001882:	bf00      	nop
 8001884:	20000000 	.word	0x20000000

08001888 <HAL_RCC_GetPCLK1Freq>:
  * @note   Each time PCLK1 changes, this function must be called to update the
  *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
 8001888:	b580      	push	{r7, lr}
 800188a:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> RCC_CFGR_PPRE1_Pos]);
 800188c:	f7ff fff0 	bl	8001870 <HAL_RCC_GetHCLKFreq>
 8001890:	4601      	mov	r1, r0
 8001892:	4b05      	ldr	r3, [pc, #20]	; (80018a8 <HAL_RCC_GetPCLK1Freq+0x20>)
 8001894:	689b      	ldr	r3, [r3, #8]
 8001896:	0a9b      	lsrs	r3, r3, #10
 8001898:	f003 0307 	and.w	r3, r3, #7
 800189c:	4a03      	ldr	r2, [pc, #12]	; (80018ac <HAL_RCC_GetPCLK1Freq+0x24>)
 800189e:	5cd3      	ldrb	r3, [r2, r3]
 80018a0:	fa21 f303 	lsr.w	r3, r1, r3
}
 80018a4:	4618      	mov	r0, r3
 80018a6:	bd80      	pop	{r7, pc}
 80018a8:	40023800 	.word	0x40023800
 80018ac:	08009028 	.word	0x08009028

080018b0 <HAL_RCC_GetPCLK2Freq>:
  * @note   Each time PCLK2 changes, this function must be called to update the
  *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
 80018b0:	b580      	push	{r7, lr}
 80018b2:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> RCC_CFGR_PPRE2_Pos]);
 80018b4:	f7ff ffdc 	bl	8001870 <HAL_RCC_GetHCLKFreq>
 80018b8:	4601      	mov	r1, r0
 80018ba:	4b05      	ldr	r3, [pc, #20]	; (80018d0 <HAL_RCC_GetPCLK2Freq+0x20>)
 80018bc:	689b      	ldr	r3, [r3, #8]
 80018be:	0b5b      	lsrs	r3, r3, #13
 80018c0:	f003 0307 	and.w	r3, r3, #7
 80018c4:	4a03      	ldr	r2, [pc, #12]	; (80018d4 <HAL_RCC_GetPCLK2Freq+0x24>)
 80018c6:	5cd3      	ldrb	r3, [r2, r3]
 80018c8:	fa21 f303 	lsr.w	r3, r1, r3
}
 80018cc:	4618      	mov	r0, r3
 80018ce:	bd80      	pop	{r7, pc}
 80018d0:	40023800 	.word	0x40023800
 80018d4:	08009028 	.word	0x08009028

080018d8 <HAL_DMA_Init>:
  * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
  *               the configuration information for the specified DMA Stream.  
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
{
 80018d8:	b580      	push	{r7, lr}
 80018da:	b086      	sub	sp, #24
 80018dc:	af00      	add	r7, sp, #0
 80018de:	6078      	str	r0, [r7, #4]
  uint32_t tmp = 0U;
 80018e0:	2300      	movs	r3, #0
 80018e2:	617b      	str	r3, [r7, #20]
  uint32_t tickstart = HAL_GetTick();
 80018e4:	f7ff fa42 	bl	8000d6c <HAL_GetTick>
 80018e8:	6138      	str	r0, [r7, #16]
  DMA_Base_Registers *regs;

  /* Check the DMA peripheral state */
  if(hdma == NULL)
 80018ea:	687b      	ldr	r3, [r7, #4]
 80018ec:	2b00      	cmp	r3, #0
 80018ee:	d101      	bne.n	80018f4 <HAL_DMA_Init+0x1c>
  {
    return HAL_ERROR;
 80018f0:	2301      	movs	r3, #1
 80018f2:	e099      	b.n	8001a28 <HAL_DMA_Init+0x150>
    assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
    assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
  }
  
  /* Allocate lock resource */
  __HAL_UNLOCK(hdma);
 80018f4:	687b      	ldr	r3, [r7, #4]
 80018f6:	2200      	movs	r2, #0
 80018f8:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34

  /* Change DMA peripheral state */
  hdma->State = HAL_DMA_STATE_BUSY;
 80018fc:	687b      	ldr	r3, [r7, #4]
 80018fe:	2202      	movs	r2, #2
 8001900:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
  
  /* Disable the peripheral */
  __HAL_DMA_DISABLE(hdma);
 8001904:	687b      	ldr	r3, [r7, #4]
 8001906:	681b      	ldr	r3, [r3, #0]
 8001908:	681a      	ldr	r2, [r3, #0]
 800190a:	687b      	ldr	r3, [r7, #4]
 800190c:	681b      	ldr	r3, [r3, #0]
 800190e:	f022 0201 	bic.w	r2, r2, #1
 8001912:	601a      	str	r2, [r3, #0]
  
  /* Check if the DMA Stream is effectively disabled */
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 8001914:	e00f      	b.n	8001936 <HAL_DMA_Init+0x5e>
  {
    /* Check for the Timeout */
    if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 8001916:	f7ff fa29 	bl	8000d6c <HAL_GetTick>
 800191a:	4602      	mov	r2, r0
 800191c:	693b      	ldr	r3, [r7, #16]
 800191e:	1ad3      	subs	r3, r2, r3
 8001920:	2b05      	cmp	r3, #5
 8001922:	d908      	bls.n	8001936 <HAL_DMA_Init+0x5e>
    {
      /* Update error code */
      hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 8001924:	687b      	ldr	r3, [r7, #4]
 8001926:	2220      	movs	r2, #32
 8001928:	655a      	str	r2, [r3, #84]	; 0x54
      
      /* Change the DMA state */
      hdma->State = HAL_DMA_STATE_TIMEOUT;
 800192a:	687b      	ldr	r3, [r7, #4]
 800192c:	2203      	movs	r2, #3
 800192e:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
      
      return HAL_TIMEOUT;
 8001932:	2303      	movs	r3, #3
 8001934:	e078      	b.n	8001a28 <HAL_DMA_Init+0x150>
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 8001936:	687b      	ldr	r3, [r7, #4]
 8001938:	681b      	ldr	r3, [r3, #0]
 800193a:	681b      	ldr	r3, [r3, #0]
 800193c:	f003 0301 	and.w	r3, r3, #1
 8001940:	2b00      	cmp	r3, #0
 8001942:	d1e8      	bne.n	8001916 <HAL_DMA_Init+0x3e>
    }
  }
  
  /* Get the CR register value */
  tmp = hdma->Instance->CR;
 8001944:	687b      	ldr	r3, [r7, #4]
 8001946:	681b      	ldr	r3, [r3, #0]
 8001948:	681b      	ldr	r3, [r3, #0]
 800194a:	617b      	str	r3, [r7, #20]

  /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
  tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
 800194c:	697a      	ldr	r2, [r7, #20]
 800194e:	4b38      	ldr	r3, [pc, #224]	; (8001a30 <HAL_DMA_Init+0x158>)
 8001950:	4013      	ands	r3, r2
 8001952:	617b      	str	r3, [r7, #20]
                      DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
                      DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \
                      DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));

  /* Prepare the DMA Stream configuration */
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001954:	687b      	ldr	r3, [r7, #4]
 8001956:	685a      	ldr	r2, [r3, #4]
 8001958:	687b      	ldr	r3, [r7, #4]
 800195a:	689b      	ldr	r3, [r3, #8]
 800195c:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 800195e:	687b      	ldr	r3, [r7, #4]
 8001960:	68db      	ldr	r3, [r3, #12]
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001962:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8001964:	687b      	ldr	r3, [r7, #4]
 8001966:	691b      	ldr	r3, [r3, #16]
 8001968:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 800196a:	687b      	ldr	r3, [r7, #4]
 800196c:	695b      	ldr	r3, [r3, #20]
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 800196e:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8001970:	687b      	ldr	r3, [r7, #4]
 8001972:	699b      	ldr	r3, [r3, #24]
 8001974:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 8001976:	687b      	ldr	r3, [r7, #4]
 8001978:	69db      	ldr	r3, [r3, #28]
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 800197a:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 800197c:	687b      	ldr	r3, [r7, #4]
 800197e:	6a1b      	ldr	r3, [r3, #32]
 8001980:	4313      	orrs	r3, r2
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001982:	697a      	ldr	r2, [r7, #20]
 8001984:	4313      	orrs	r3, r2
 8001986:	617b      	str	r3, [r7, #20]

  /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 8001988:	687b      	ldr	r3, [r7, #4]
 800198a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800198c:	2b04      	cmp	r3, #4
 800198e:	d107      	bne.n	80019a0 <HAL_DMA_Init+0xc8>
  {
    /* Get memory burst and peripheral burst */
    tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
 8001990:	687b      	ldr	r3, [r7, #4]
 8001992:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001994:	687b      	ldr	r3, [r7, #4]
 8001996:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001998:	4313      	orrs	r3, r2
 800199a:	697a      	ldr	r2, [r7, #20]
 800199c:	4313      	orrs	r3, r2
 800199e:	617b      	str	r3, [r7, #20]
  }
  
  /* Write to DMA Stream CR register */
  hdma->Instance->CR = tmp;  
 80019a0:	687b      	ldr	r3, [r7, #4]
 80019a2:	681b      	ldr	r3, [r3, #0]
 80019a4:	697a      	ldr	r2, [r7, #20]
 80019a6:	601a      	str	r2, [r3, #0]

  /* Get the FCR register value */
  tmp = hdma->Instance->FCR;
 80019a8:	687b      	ldr	r3, [r7, #4]
 80019aa:	681b      	ldr	r3, [r3, #0]
 80019ac:	695b      	ldr	r3, [r3, #20]
 80019ae:	617b      	str	r3, [r7, #20]

  /* Clear Direct mode and FIFO threshold bits */
  tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
 80019b0:	697b      	ldr	r3, [r7, #20]
 80019b2:	f023 0307 	bic.w	r3, r3, #7
 80019b6:	617b      	str	r3, [r7, #20]

  /* Prepare the DMA Stream FIFO configuration */
  tmp |= hdma->Init.FIFOMode;
 80019b8:	687b      	ldr	r3, [r7, #4]
 80019ba:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80019bc:	697a      	ldr	r2, [r7, #20]
 80019be:	4313      	orrs	r3, r2
 80019c0:	617b      	str	r3, [r7, #20]

  /* The FIFO threshold is not used when the FIFO mode is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 80019c2:	687b      	ldr	r3, [r7, #4]
 80019c4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80019c6:	2b04      	cmp	r3, #4
 80019c8:	d117      	bne.n	80019fa <HAL_DMA_Init+0x122>
  {
    /* Get the FIFO threshold */
    tmp |= hdma->Init.FIFOThreshold;
 80019ca:	687b      	ldr	r3, [r7, #4]
 80019cc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80019ce:	697a      	ldr	r2, [r7, #20]
 80019d0:	4313      	orrs	r3, r2
 80019d2:	617b      	str	r3, [r7, #20]
    
    /* Check compatibility between FIFO threshold level and size of the memory burst */
    /* for INCR4, INCR8, INCR16 bursts */
    if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
 80019d4:	687b      	ldr	r3, [r7, #4]
 80019d6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80019d8:	2b00      	cmp	r3, #0
 80019da:	d00e      	beq.n	80019fa <HAL_DMA_Init+0x122>
    {
      if (DMA_CheckFifoParam(hdma) != HAL_OK)
 80019dc:	6878      	ldr	r0, [r7, #4]
 80019de:	f000 f85f 	bl	8001aa0 <DMA_CheckFifoParam>
 80019e2:	4603      	mov	r3, r0
 80019e4:	2b00      	cmp	r3, #0
 80019e6:	d008      	beq.n	80019fa <HAL_DMA_Init+0x122>
      {
        /* Update error code */
        hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
 80019e8:	687b      	ldr	r3, [r7, #4]
 80019ea:	2240      	movs	r2, #64	; 0x40
 80019ec:	655a      	str	r2, [r3, #84]	; 0x54
        
        /* Change the DMA state */
        hdma->State = HAL_DMA_STATE_READY;
 80019ee:	687b      	ldr	r3, [r7, #4]
 80019f0:	2201      	movs	r2, #1
 80019f2:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
        
        return HAL_ERROR; 
 80019f6:	2301      	movs	r3, #1
 80019f8:	e016      	b.n	8001a28 <HAL_DMA_Init+0x150>
      }
    }
  }
  
  /* Write to DMA Stream FCR */
  hdma->Instance->FCR = tmp;
 80019fa:	687b      	ldr	r3, [r7, #4]
 80019fc:	681b      	ldr	r3, [r3, #0]
 80019fe:	697a      	ldr	r2, [r7, #20]
 8001a00:	615a      	str	r2, [r3, #20]

  /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
     DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
  regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 8001a02:	6878      	ldr	r0, [r7, #4]
 8001a04:	f000 f816 	bl	8001a34 <DMA_CalcBaseAndBitshift>
 8001a08:	4603      	mov	r3, r0
 8001a0a:	60fb      	str	r3, [r7, #12]
  
  /* Clear all interrupt flags */
  regs->IFCR = 0x3FU << hdma->StreamIndex;
 8001a0c:	687b      	ldr	r3, [r7, #4]
 8001a0e:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 8001a10:	223f      	movs	r2, #63	; 0x3f
 8001a12:	409a      	lsls	r2, r3
 8001a14:	68fb      	ldr	r3, [r7, #12]
 8001a16:	609a      	str	r2, [r3, #8]

  /* Initialize the error code */
  hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 8001a18:	687b      	ldr	r3, [r7, #4]
 8001a1a:	2200      	movs	r2, #0
 8001a1c:	655a      	str	r2, [r3, #84]	; 0x54
                                                                                     
  /* Initialize the DMA state */
  hdma->State = HAL_DMA_STATE_READY;
 8001a1e:	687b      	ldr	r3, [r7, #4]
 8001a20:	2201      	movs	r2, #1
 8001a22:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35

  return HAL_OK;
 8001a26:	2300      	movs	r3, #0
}
 8001a28:	4618      	mov	r0, r3
 8001a2a:	3718      	adds	r7, #24
 8001a2c:	46bd      	mov	sp, r7
 8001a2e:	bd80      	pop	{r7, pc}
 8001a30:	f010803f 	.word	0xf010803f

08001a34 <DMA_CalcBaseAndBitshift>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval Stream base address
  */
static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
{
 8001a34:	b480      	push	{r7}
 8001a36:	b085      	sub	sp, #20
 8001a38:	af00      	add	r7, sp, #0
 8001a3a:	6078      	str	r0, [r7, #4]
  uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
 8001a3c:	687b      	ldr	r3, [r7, #4]
 8001a3e:	681b      	ldr	r3, [r3, #0]
 8001a40:	b2db      	uxtb	r3, r3
 8001a42:	3b10      	subs	r3, #16
 8001a44:	4a14      	ldr	r2, [pc, #80]	; (8001a98 <DMA_CalcBaseAndBitshift+0x64>)
 8001a46:	fba2 2303 	umull	r2, r3, r2, r3
 8001a4a:	091b      	lsrs	r3, r3, #4
 8001a4c:	60fb      	str	r3, [r7, #12]
  
  /* lookup table for necessary bitshift of flags within status registers */
  static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
  hdma->StreamIndex = flagBitshiftOffset[stream_number];
 8001a4e:	4a13      	ldr	r2, [pc, #76]	; (8001a9c <DMA_CalcBaseAndBitshift+0x68>)
 8001a50:	68fb      	ldr	r3, [r7, #12]
 8001a52:	4413      	add	r3, r2
 8001a54:	781b      	ldrb	r3, [r3, #0]
 8001a56:	461a      	mov	r2, r3
 8001a58:	687b      	ldr	r3, [r7, #4]
 8001a5a:	65da      	str	r2, [r3, #92]	; 0x5c
  
  if (stream_number > 3U)
 8001a5c:	68fb      	ldr	r3, [r7, #12]
 8001a5e:	2b03      	cmp	r3, #3
 8001a60:	d909      	bls.n	8001a76 <DMA_CalcBaseAndBitshift+0x42>
  {
    /* return pointer to HISR and HIFCR */
    hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
 8001a62:	687b      	ldr	r3, [r7, #4]
 8001a64:	681b      	ldr	r3, [r3, #0]
 8001a66:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8001a6a:	f023 0303 	bic.w	r3, r3, #3
 8001a6e:	1d1a      	adds	r2, r3, #4
 8001a70:	687b      	ldr	r3, [r7, #4]
 8001a72:	659a      	str	r2, [r3, #88]	; 0x58
 8001a74:	e007      	b.n	8001a86 <DMA_CalcBaseAndBitshift+0x52>
  }
  else
  {
    /* return pointer to LISR and LIFCR */
    hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
 8001a76:	687b      	ldr	r3, [r7, #4]
 8001a78:	681b      	ldr	r3, [r3, #0]
 8001a7a:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8001a7e:	f023 0303 	bic.w	r3, r3, #3
 8001a82:	687a      	ldr	r2, [r7, #4]
 8001a84:	6593      	str	r3, [r2, #88]	; 0x58
  }
  
  return hdma->StreamBaseAddress;
 8001a86:	687b      	ldr	r3, [r7, #4]
 8001a88:	6d9b      	ldr	r3, [r3, #88]	; 0x58
}
 8001a8a:	4618      	mov	r0, r3
 8001a8c:	3714      	adds	r7, #20
 8001a8e:	46bd      	mov	sp, r7
 8001a90:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a94:	4770      	bx	lr
 8001a96:	bf00      	nop
 8001a98:	aaaaaaab 	.word	0xaaaaaaab
 8001a9c:	08009030 	.word	0x08009030

08001aa0 <DMA_CheckFifoParam>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval HAL status
  */
static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
{
 8001aa0:	b480      	push	{r7}
 8001aa2:	b085      	sub	sp, #20
 8001aa4:	af00      	add	r7, sp, #0
 8001aa6:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef status = HAL_OK;
 8001aa8:	2300      	movs	r3, #0
 8001aaa:	73fb      	strb	r3, [r7, #15]
  uint32_t tmp = hdma->Init.FIFOThreshold;
 8001aac:	687b      	ldr	r3, [r7, #4]
 8001aae:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001ab0:	60bb      	str	r3, [r7, #8]
  
  /* Memory Data size equal to Byte */
  if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
 8001ab2:	687b      	ldr	r3, [r7, #4]
 8001ab4:	699b      	ldr	r3, [r3, #24]
 8001ab6:	2b00      	cmp	r3, #0
 8001ab8:	d11f      	bne.n	8001afa <DMA_CheckFifoParam+0x5a>
  {
    switch (tmp)
 8001aba:	68bb      	ldr	r3, [r7, #8]
 8001abc:	2b03      	cmp	r3, #3
 8001abe:	d855      	bhi.n	8001b6c <DMA_CheckFifoParam+0xcc>
 8001ac0:	a201      	add	r2, pc, #4	; (adr r2, 8001ac8 <DMA_CheckFifoParam+0x28>)
 8001ac2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001ac6:	bf00      	nop
 8001ac8:	08001ad9 	.word	0x08001ad9
 8001acc:	08001aeb 	.word	0x08001aeb
 8001ad0:	08001ad9 	.word	0x08001ad9
 8001ad4:	08001b6d 	.word	0x08001b6d
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001ad8:	687b      	ldr	r3, [r7, #4]
 8001ada:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001adc:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001ae0:	2b00      	cmp	r3, #0
 8001ae2:	d045      	beq.n	8001b70 <DMA_CheckFifoParam+0xd0>
      {
        status = HAL_ERROR;
 8001ae4:	2301      	movs	r3, #1
 8001ae6:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001ae8:	e042      	b.n	8001b70 <DMA_CheckFifoParam+0xd0>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001aea:	687b      	ldr	r3, [r7, #4]
 8001aec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001aee:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001af2:	d13f      	bne.n	8001b74 <DMA_CheckFifoParam+0xd4>
      {
        status = HAL_ERROR;
 8001af4:	2301      	movs	r3, #1
 8001af6:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001af8:	e03c      	b.n	8001b74 <DMA_CheckFifoParam+0xd4>
      break;
    }
  }
  
  /* Memory Data size equal to Half-Word */
  else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
 8001afa:	687b      	ldr	r3, [r7, #4]
 8001afc:	699b      	ldr	r3, [r3, #24]
 8001afe:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8001b02:	d121      	bne.n	8001b48 <DMA_CheckFifoParam+0xa8>
  {
    switch (tmp)
 8001b04:	68bb      	ldr	r3, [r7, #8]
 8001b06:	2b03      	cmp	r3, #3
 8001b08:	d836      	bhi.n	8001b78 <DMA_CheckFifoParam+0xd8>
 8001b0a:	a201      	add	r2, pc, #4	; (adr r2, 8001b10 <DMA_CheckFifoParam+0x70>)
 8001b0c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001b10:	08001b21 	.word	0x08001b21
 8001b14:	08001b27 	.word	0x08001b27
 8001b18:	08001b21 	.word	0x08001b21
 8001b1c:	08001b39 	.word	0x08001b39
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      status = HAL_ERROR;
 8001b20:	2301      	movs	r3, #1
 8001b22:	73fb      	strb	r3, [r7, #15]
      break;
 8001b24:	e02f      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001b26:	687b      	ldr	r3, [r7, #4]
 8001b28:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001b2a:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001b2e:	2b00      	cmp	r3, #0
 8001b30:	d024      	beq.n	8001b7c <DMA_CheckFifoParam+0xdc>
      {
        status = HAL_ERROR;
 8001b32:	2301      	movs	r3, #1
 8001b34:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001b36:	e021      	b.n	8001b7c <DMA_CheckFifoParam+0xdc>
    case DMA_FIFO_THRESHOLD_FULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001b38:	687b      	ldr	r3, [r7, #4]
 8001b3a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001b3c:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001b40:	d11e      	bne.n	8001b80 <DMA_CheckFifoParam+0xe0>
      {
        status = HAL_ERROR;
 8001b42:	2301      	movs	r3, #1
 8001b44:	73fb      	strb	r3, [r7, #15]
      }
      break;   
 8001b46:	e01b      	b.n	8001b80 <DMA_CheckFifoParam+0xe0>
  }
  
  /* Memory Data size equal to Word */
  else
  {
    switch (tmp)
 8001b48:	68bb      	ldr	r3, [r7, #8]
 8001b4a:	2b02      	cmp	r3, #2
 8001b4c:	d902      	bls.n	8001b54 <DMA_CheckFifoParam+0xb4>
 8001b4e:	2b03      	cmp	r3, #3
 8001b50:	d003      	beq.n	8001b5a <DMA_CheckFifoParam+0xba>
      {
        status = HAL_ERROR;
      }
      break;
    default:
      break;
 8001b52:	e018      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      status = HAL_ERROR;
 8001b54:	2301      	movs	r3, #1
 8001b56:	73fb      	strb	r3, [r7, #15]
      break;
 8001b58:	e015      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001b5a:	687b      	ldr	r3, [r7, #4]
 8001b5c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001b5e:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001b62:	2b00      	cmp	r3, #0
 8001b64:	d00e      	beq.n	8001b84 <DMA_CheckFifoParam+0xe4>
        status = HAL_ERROR;
 8001b66:	2301      	movs	r3, #1
 8001b68:	73fb      	strb	r3, [r7, #15]
      break;
 8001b6a:	e00b      	b.n	8001b84 <DMA_CheckFifoParam+0xe4>
      break;
 8001b6c:	bf00      	nop
 8001b6e:	e00a      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      break;
 8001b70:	bf00      	nop
 8001b72:	e008      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      break;
 8001b74:	bf00      	nop
 8001b76:	e006      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      break;
 8001b78:	bf00      	nop
 8001b7a:	e004      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      break;
 8001b7c:	bf00      	nop
 8001b7e:	e002      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      break;   
 8001b80:	bf00      	nop
 8001b82:	e000      	b.n	8001b86 <DMA_CheckFifoParam+0xe6>
      break;
 8001b84:	bf00      	nop
    }
  } 
  
  return status; 
 8001b86:	7bfb      	ldrb	r3, [r7, #15]
}
 8001b88:	4618      	mov	r0, r3
 8001b8a:	3714      	adds	r7, #20
 8001b8c:	46bd      	mov	sp, r7
 8001b8e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001b92:	4770      	bx	lr

08001b94 <HAL_GPIO_Init>:
  * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 8001b94:	b480      	push	{r7}
 8001b96:	b089      	sub	sp, #36	; 0x24
 8001b98:	af00      	add	r7, sp, #0
 8001b9a:	6078      	str	r0, [r7, #4]
 8001b9c:	6039      	str	r1, [r7, #0]
  uint32_t position;
  uint32_t ioposition = 0x00U;
 8001b9e:	2300      	movs	r3, #0
 8001ba0:	617b      	str	r3, [r7, #20]
  uint32_t iocurrent = 0x00U;
 8001ba2:	2300      	movs	r3, #0
 8001ba4:	613b      	str	r3, [r7, #16]
  uint32_t temp = 0x00U;
 8001ba6:	2300      	movs	r3, #0
 8001ba8:	61bb      	str	r3, [r7, #24]
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  assert_param(IS_GPIO_PULL(GPIO_Init->Pull));

  /* Configure the port pins */
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001baa:	2300      	movs	r3, #0
 8001bac:	61fb      	str	r3, [r7, #28]
 8001bae:	e159      	b.n	8001e64 <HAL_GPIO_Init+0x2d0>
  {
    /* Get the IO position */
    ioposition = 0x01U << position;
 8001bb0:	2201      	movs	r2, #1
 8001bb2:	69fb      	ldr	r3, [r7, #28]
 8001bb4:	fa02 f303 	lsl.w	r3, r2, r3
 8001bb8:	617b      	str	r3, [r7, #20]
    /* Get the current IO position */
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 8001bba:	683b      	ldr	r3, [r7, #0]
 8001bbc:	681b      	ldr	r3, [r3, #0]
 8001bbe:	697a      	ldr	r2, [r7, #20]
 8001bc0:	4013      	ands	r3, r2
 8001bc2:	613b      	str	r3, [r7, #16]

    if(iocurrent == ioposition)
 8001bc4:	693a      	ldr	r2, [r7, #16]
 8001bc6:	697b      	ldr	r3, [r7, #20]
 8001bc8:	429a      	cmp	r2, r3
 8001bca:	f040 8148 	bne.w	8001e5e <HAL_GPIO_Init+0x2ca>
    {
      /*--------------------- GPIO Mode Configuration ------------------------*/
      /* In case of Output or Alternate function mode selection */
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 8001bce:	683b      	ldr	r3, [r7, #0]
 8001bd0:	685b      	ldr	r3, [r3, #4]
 8001bd2:	f003 0303 	and.w	r3, r3, #3
 8001bd6:	2b01      	cmp	r3, #1
 8001bd8:	d005      	beq.n	8001be6 <HAL_GPIO_Init+0x52>
          (GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 8001bda:	683b      	ldr	r3, [r7, #0]
 8001bdc:	685b      	ldr	r3, [r3, #4]
 8001bde:	f003 0303 	and.w	r3, r3, #3
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 8001be2:	2b02      	cmp	r3, #2
 8001be4:	d130      	bne.n	8001c48 <HAL_GPIO_Init+0xb4>
      {
        /* Check the Speed parameter */
        assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
        /* Configure the IO Speed */
        temp = GPIOx->OSPEEDR; 
 8001be6:	687b      	ldr	r3, [r7, #4]
 8001be8:	689b      	ldr	r3, [r3, #8]
 8001bea:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
 8001bec:	69fb      	ldr	r3, [r7, #28]
 8001bee:	005b      	lsls	r3, r3, #1
 8001bf0:	2203      	movs	r2, #3
 8001bf2:	fa02 f303 	lsl.w	r3, r2, r3
 8001bf6:	43db      	mvns	r3, r3
 8001bf8:	69ba      	ldr	r2, [r7, #24]
 8001bfa:	4013      	ands	r3, r2
 8001bfc:	61bb      	str	r3, [r7, #24]
        temp |= (GPIO_Init->Speed << (position * 2U));
 8001bfe:	683b      	ldr	r3, [r7, #0]
 8001c00:	68da      	ldr	r2, [r3, #12]
 8001c02:	69fb      	ldr	r3, [r7, #28]
 8001c04:	005b      	lsls	r3, r3, #1
 8001c06:	fa02 f303 	lsl.w	r3, r2, r3
 8001c0a:	69ba      	ldr	r2, [r7, #24]
 8001c0c:	4313      	orrs	r3, r2
 8001c0e:	61bb      	str	r3, [r7, #24]
        GPIOx->OSPEEDR = temp;
 8001c10:	687b      	ldr	r3, [r7, #4]
 8001c12:	69ba      	ldr	r2, [r7, #24]
 8001c14:	609a      	str	r2, [r3, #8]

        /* Configure the IO Output Type */
        temp = GPIOx->OTYPER;
 8001c16:	687b      	ldr	r3, [r7, #4]
 8001c18:	685b      	ldr	r3, [r3, #4]
 8001c1a:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 8001c1c:	2201      	movs	r2, #1
 8001c1e:	69fb      	ldr	r3, [r7, #28]
 8001c20:	fa02 f303 	lsl.w	r3, r2, r3
 8001c24:	43db      	mvns	r3, r3
 8001c26:	69ba      	ldr	r2, [r7, #24]
 8001c28:	4013      	ands	r3, r2
 8001c2a:	61bb      	str	r3, [r7, #24]
        temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 8001c2c:	683b      	ldr	r3, [r7, #0]
 8001c2e:	685b      	ldr	r3, [r3, #4]
 8001c30:	091b      	lsrs	r3, r3, #4
 8001c32:	f003 0201 	and.w	r2, r3, #1
 8001c36:	69fb      	ldr	r3, [r7, #28]
 8001c38:	fa02 f303 	lsl.w	r3, r2, r3
 8001c3c:	69ba      	ldr	r2, [r7, #24]
 8001c3e:	4313      	orrs	r3, r2
 8001c40:	61bb      	str	r3, [r7, #24]
        GPIOx->OTYPER = temp;
 8001c42:	687b      	ldr	r3, [r7, #4]
 8001c44:	69ba      	ldr	r2, [r7, #24]
 8001c46:	605a      	str	r2, [r3, #4]
       }

      if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
 8001c48:	683b      	ldr	r3, [r7, #0]
 8001c4a:	685b      	ldr	r3, [r3, #4]
 8001c4c:	f003 0303 	and.w	r3, r3, #3
 8001c50:	2b03      	cmp	r3, #3
 8001c52:	d017      	beq.n	8001c84 <HAL_GPIO_Init+0xf0>
      {
        /* Activate the Pull-up or Pull down resistor for the current IO */
        temp = GPIOx->PUPDR;
 8001c54:	687b      	ldr	r3, [r7, #4]
 8001c56:	68db      	ldr	r3, [r3, #12]
 8001c58:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
 8001c5a:	69fb      	ldr	r3, [r7, #28]
 8001c5c:	005b      	lsls	r3, r3, #1
 8001c5e:	2203      	movs	r2, #3
 8001c60:	fa02 f303 	lsl.w	r3, r2, r3
 8001c64:	43db      	mvns	r3, r3
 8001c66:	69ba      	ldr	r2, [r7, #24]
 8001c68:	4013      	ands	r3, r2
 8001c6a:	61bb      	str	r3, [r7, #24]
        temp |= ((GPIO_Init->Pull) << (position * 2U));
 8001c6c:	683b      	ldr	r3, [r7, #0]
 8001c6e:	689a      	ldr	r2, [r3, #8]
 8001c70:	69fb      	ldr	r3, [r7, #28]
 8001c72:	005b      	lsls	r3, r3, #1
 8001c74:	fa02 f303 	lsl.w	r3, r2, r3
 8001c78:	69ba      	ldr	r2, [r7, #24]
 8001c7a:	4313      	orrs	r3, r2
 8001c7c:	61bb      	str	r3, [r7, #24]
        GPIOx->PUPDR = temp;
 8001c7e:	687b      	ldr	r3, [r7, #4]
 8001c80:	69ba      	ldr	r2, [r7, #24]
 8001c82:	60da      	str	r2, [r3, #12]
      }

      /* In case of Alternate function mode selection */
      if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 8001c84:	683b      	ldr	r3, [r7, #0]
 8001c86:	685b      	ldr	r3, [r3, #4]
 8001c88:	f003 0303 	and.w	r3, r3, #3
 8001c8c:	2b02      	cmp	r3, #2
 8001c8e:	d123      	bne.n	8001cd8 <HAL_GPIO_Init+0x144>
      {
        /* Check the Alternate function parameter */
        assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
        /* Configure Alternate function mapped with the current IO */
        temp = GPIOx->AFR[position >> 3U];
 8001c90:	69fb      	ldr	r3, [r7, #28]
 8001c92:	08da      	lsrs	r2, r3, #3
 8001c94:	687b      	ldr	r3, [r7, #4]
 8001c96:	3208      	adds	r2, #8
 8001c98:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001c9c:	61bb      	str	r3, [r7, #24]
        temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
 8001c9e:	69fb      	ldr	r3, [r7, #28]
 8001ca0:	f003 0307 	and.w	r3, r3, #7
 8001ca4:	009b      	lsls	r3, r3, #2
 8001ca6:	220f      	movs	r2, #15
 8001ca8:	fa02 f303 	lsl.w	r3, r2, r3
 8001cac:	43db      	mvns	r3, r3
 8001cae:	69ba      	ldr	r2, [r7, #24]
 8001cb0:	4013      	ands	r3, r2
 8001cb2:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
 8001cb4:	683b      	ldr	r3, [r7, #0]
 8001cb6:	691a      	ldr	r2, [r3, #16]
 8001cb8:	69fb      	ldr	r3, [r7, #28]
 8001cba:	f003 0307 	and.w	r3, r3, #7
 8001cbe:	009b      	lsls	r3, r3, #2
 8001cc0:	fa02 f303 	lsl.w	r3, r2, r3
 8001cc4:	69ba      	ldr	r2, [r7, #24]
 8001cc6:	4313      	orrs	r3, r2
 8001cc8:	61bb      	str	r3, [r7, #24]
        GPIOx->AFR[position >> 3U] = temp;
 8001cca:	69fb      	ldr	r3, [r7, #28]
 8001ccc:	08da      	lsrs	r2, r3, #3
 8001cce:	687b      	ldr	r3, [r7, #4]
 8001cd0:	3208      	adds	r2, #8
 8001cd2:	69b9      	ldr	r1, [r7, #24]
 8001cd4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
      }

      /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
      temp = GPIOx->MODER;
 8001cd8:	687b      	ldr	r3, [r7, #4]
 8001cda:	681b      	ldr	r3, [r3, #0]
 8001cdc:	61bb      	str	r3, [r7, #24]
      temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
 8001cde:	69fb      	ldr	r3, [r7, #28]
 8001ce0:	005b      	lsls	r3, r3, #1
 8001ce2:	2203      	movs	r2, #3
 8001ce4:	fa02 f303 	lsl.w	r3, r2, r3
 8001ce8:	43db      	mvns	r3, r3
 8001cea:	69ba      	ldr	r2, [r7, #24]
 8001cec:	4013      	ands	r3, r2
 8001cee:	61bb      	str	r3, [r7, #24]
      temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 8001cf0:	683b      	ldr	r3, [r7, #0]
 8001cf2:	685b      	ldr	r3, [r3, #4]
 8001cf4:	f003 0203 	and.w	r2, r3, #3
 8001cf8:	69fb      	ldr	r3, [r7, #28]
 8001cfa:	005b      	lsls	r3, r3, #1
 8001cfc:	fa02 f303 	lsl.w	r3, r2, r3
 8001d00:	69ba      	ldr	r2, [r7, #24]
 8001d02:	4313      	orrs	r3, r2
 8001d04:	61bb      	str	r3, [r7, #24]
      GPIOx->MODER = temp;
 8001d06:	687b      	ldr	r3, [r7, #4]
 8001d08:	69ba      	ldr	r2, [r7, #24]
 8001d0a:	601a      	str	r2, [r3, #0]

      /*--------------------- EXTI Mode Configuration ------------------------*/
      /* Configure the External Interrupt or event for the current IO */
      if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 8001d0c:	683b      	ldr	r3, [r7, #0]
 8001d0e:	685b      	ldr	r3, [r3, #4]
 8001d10:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001d14:	2b00      	cmp	r3, #0
 8001d16:	f000 80a2 	beq.w	8001e5e <HAL_GPIO_Init+0x2ca>
      {
        /* Enable SYSCFG Clock */
        __HAL_RCC_SYSCFG_CLK_ENABLE();
 8001d1a:	2300      	movs	r3, #0
 8001d1c:	60fb      	str	r3, [r7, #12]
 8001d1e:	4b56      	ldr	r3, [pc, #344]	; (8001e78 <HAL_GPIO_Init+0x2e4>)
 8001d20:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001d22:	4a55      	ldr	r2, [pc, #340]	; (8001e78 <HAL_GPIO_Init+0x2e4>)
 8001d24:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001d28:	6453      	str	r3, [r2, #68]	; 0x44
 8001d2a:	4b53      	ldr	r3, [pc, #332]	; (8001e78 <HAL_GPIO_Init+0x2e4>)
 8001d2c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001d2e:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8001d32:	60fb      	str	r3, [r7, #12]
 8001d34:	68fb      	ldr	r3, [r7, #12]

        temp = SYSCFG->EXTICR[position >> 2U];
 8001d36:	4a51      	ldr	r2, [pc, #324]	; (8001e7c <HAL_GPIO_Init+0x2e8>)
 8001d38:	69fb      	ldr	r3, [r7, #28]
 8001d3a:	089b      	lsrs	r3, r3, #2
 8001d3c:	3302      	adds	r3, #2
 8001d3e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001d42:	61bb      	str	r3, [r7, #24]
        temp &= ~(0x0FU << (4U * (position & 0x03U)));
 8001d44:	69fb      	ldr	r3, [r7, #28]
 8001d46:	f003 0303 	and.w	r3, r3, #3
 8001d4a:	009b      	lsls	r3, r3, #2
 8001d4c:	220f      	movs	r2, #15
 8001d4e:	fa02 f303 	lsl.w	r3, r2, r3
 8001d52:	43db      	mvns	r3, r3
 8001d54:	69ba      	ldr	r2, [r7, #24]
 8001d56:	4013      	ands	r3, r2
 8001d58:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
 8001d5a:	687b      	ldr	r3, [r7, #4]
 8001d5c:	4a48      	ldr	r2, [pc, #288]	; (8001e80 <HAL_GPIO_Init+0x2ec>)
 8001d5e:	4293      	cmp	r3, r2
 8001d60:	d019      	beq.n	8001d96 <HAL_GPIO_Init+0x202>
 8001d62:	687b      	ldr	r3, [r7, #4]
 8001d64:	4a47      	ldr	r2, [pc, #284]	; (8001e84 <HAL_GPIO_Init+0x2f0>)
 8001d66:	4293      	cmp	r3, r2
 8001d68:	d013      	beq.n	8001d92 <HAL_GPIO_Init+0x1fe>
 8001d6a:	687b      	ldr	r3, [r7, #4]
 8001d6c:	4a46      	ldr	r2, [pc, #280]	; (8001e88 <HAL_GPIO_Init+0x2f4>)
 8001d6e:	4293      	cmp	r3, r2
 8001d70:	d00d      	beq.n	8001d8e <HAL_GPIO_Init+0x1fa>
 8001d72:	687b      	ldr	r3, [r7, #4]
 8001d74:	4a45      	ldr	r2, [pc, #276]	; (8001e8c <HAL_GPIO_Init+0x2f8>)
 8001d76:	4293      	cmp	r3, r2
 8001d78:	d007      	beq.n	8001d8a <HAL_GPIO_Init+0x1f6>
 8001d7a:	687b      	ldr	r3, [r7, #4]
 8001d7c:	4a44      	ldr	r2, [pc, #272]	; (8001e90 <HAL_GPIO_Init+0x2fc>)
 8001d7e:	4293      	cmp	r3, r2
 8001d80:	d101      	bne.n	8001d86 <HAL_GPIO_Init+0x1f2>
 8001d82:	2304      	movs	r3, #4
 8001d84:	e008      	b.n	8001d98 <HAL_GPIO_Init+0x204>
 8001d86:	2307      	movs	r3, #7
 8001d88:	e006      	b.n	8001d98 <HAL_GPIO_Init+0x204>
 8001d8a:	2303      	movs	r3, #3
 8001d8c:	e004      	b.n	8001d98 <HAL_GPIO_Init+0x204>
 8001d8e:	2302      	movs	r3, #2
 8001d90:	e002      	b.n	8001d98 <HAL_GPIO_Init+0x204>
 8001d92:	2301      	movs	r3, #1
 8001d94:	e000      	b.n	8001d98 <HAL_GPIO_Init+0x204>
 8001d96:	2300      	movs	r3, #0
 8001d98:	69fa      	ldr	r2, [r7, #28]
 8001d9a:	f002 0203 	and.w	r2, r2, #3
 8001d9e:	0092      	lsls	r2, r2, #2
 8001da0:	4093      	lsls	r3, r2
 8001da2:	69ba      	ldr	r2, [r7, #24]
 8001da4:	4313      	orrs	r3, r2
 8001da6:	61bb      	str	r3, [r7, #24]
        SYSCFG->EXTICR[position >> 2U] = temp;
 8001da8:	4934      	ldr	r1, [pc, #208]	; (8001e7c <HAL_GPIO_Init+0x2e8>)
 8001daa:	69fb      	ldr	r3, [r7, #28]
 8001dac:	089b      	lsrs	r3, r3, #2
 8001dae:	3302      	adds	r3, #2
 8001db0:	69ba      	ldr	r2, [r7, #24]
 8001db2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]

        /* Clear EXTI line configuration */
        temp = EXTI->IMR;
 8001db6:	4b37      	ldr	r3, [pc, #220]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001db8:	681b      	ldr	r3, [r3, #0]
 8001dba:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001dbc:	693b      	ldr	r3, [r7, #16]
 8001dbe:	43db      	mvns	r3, r3
 8001dc0:	69ba      	ldr	r2, [r7, #24]
 8001dc2:	4013      	ands	r3, r2
 8001dc4:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 8001dc6:	683b      	ldr	r3, [r7, #0]
 8001dc8:	685b      	ldr	r3, [r3, #4]
 8001dca:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 8001dce:	2b00      	cmp	r3, #0
 8001dd0:	d003      	beq.n	8001dda <HAL_GPIO_Init+0x246>
        {
          temp |= iocurrent;
 8001dd2:	69ba      	ldr	r2, [r7, #24]
 8001dd4:	693b      	ldr	r3, [r7, #16]
 8001dd6:	4313      	orrs	r3, r2
 8001dd8:	61bb      	str	r3, [r7, #24]
        }
        EXTI->IMR = temp;
 8001dda:	4a2e      	ldr	r2, [pc, #184]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001ddc:	69bb      	ldr	r3, [r7, #24]
 8001dde:	6013      	str	r3, [r2, #0]

        temp = EXTI->EMR;
 8001de0:	4b2c      	ldr	r3, [pc, #176]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001de2:	685b      	ldr	r3, [r3, #4]
 8001de4:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001de6:	693b      	ldr	r3, [r7, #16]
 8001de8:	43db      	mvns	r3, r3
 8001dea:	69ba      	ldr	r2, [r7, #24]
 8001dec:	4013      	ands	r3, r2
 8001dee:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 8001df0:	683b      	ldr	r3, [r7, #0]
 8001df2:	685b      	ldr	r3, [r3, #4]
 8001df4:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001df8:	2b00      	cmp	r3, #0
 8001dfa:	d003      	beq.n	8001e04 <HAL_GPIO_Init+0x270>
        {
          temp |= iocurrent;
 8001dfc:	69ba      	ldr	r2, [r7, #24]
 8001dfe:	693b      	ldr	r3, [r7, #16]
 8001e00:	4313      	orrs	r3, r2
 8001e02:	61bb      	str	r3, [r7, #24]
        }
        EXTI->EMR = temp;
 8001e04:	4a23      	ldr	r2, [pc, #140]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001e06:	69bb      	ldr	r3, [r7, #24]
 8001e08:	6053      	str	r3, [r2, #4]

        /* Clear Rising Falling edge configuration */
        temp = EXTI->RTSR;
 8001e0a:	4b22      	ldr	r3, [pc, #136]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001e0c:	689b      	ldr	r3, [r3, #8]
 8001e0e:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001e10:	693b      	ldr	r3, [r7, #16]
 8001e12:	43db      	mvns	r3, r3
 8001e14:	69ba      	ldr	r2, [r7, #24]
 8001e16:	4013      	ands	r3, r2
 8001e18:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8001e1a:	683b      	ldr	r3, [r7, #0]
 8001e1c:	685b      	ldr	r3, [r3, #4]
 8001e1e:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 8001e22:	2b00      	cmp	r3, #0
 8001e24:	d003      	beq.n	8001e2e <HAL_GPIO_Init+0x29a>
        {
          temp |= iocurrent;
 8001e26:	69ba      	ldr	r2, [r7, #24]
 8001e28:	693b      	ldr	r3, [r7, #16]
 8001e2a:	4313      	orrs	r3, r2
 8001e2c:	61bb      	str	r3, [r7, #24]
        }
        EXTI->RTSR = temp;
 8001e2e:	4a19      	ldr	r2, [pc, #100]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001e30:	69bb      	ldr	r3, [r7, #24]
 8001e32:	6093      	str	r3, [r2, #8]

        temp = EXTI->FTSR;
 8001e34:	4b17      	ldr	r3, [pc, #92]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001e36:	68db      	ldr	r3, [r3, #12]
 8001e38:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001e3a:	693b      	ldr	r3, [r7, #16]
 8001e3c:	43db      	mvns	r3, r3
 8001e3e:	69ba      	ldr	r2, [r7, #24]
 8001e40:	4013      	ands	r3, r2
 8001e42:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 8001e44:	683b      	ldr	r3, [r7, #0]
 8001e46:	685b      	ldr	r3, [r3, #4]
 8001e48:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8001e4c:	2b00      	cmp	r3, #0
 8001e4e:	d003      	beq.n	8001e58 <HAL_GPIO_Init+0x2c4>
        {
          temp |= iocurrent;
 8001e50:	69ba      	ldr	r2, [r7, #24]
 8001e52:	693b      	ldr	r3, [r7, #16]
 8001e54:	4313      	orrs	r3, r2
 8001e56:	61bb      	str	r3, [r7, #24]
        }
        EXTI->FTSR = temp;
 8001e58:	4a0e      	ldr	r2, [pc, #56]	; (8001e94 <HAL_GPIO_Init+0x300>)
 8001e5a:	69bb      	ldr	r3, [r7, #24]
 8001e5c:	60d3      	str	r3, [r2, #12]
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001e5e:	69fb      	ldr	r3, [r7, #28]
 8001e60:	3301      	adds	r3, #1
 8001e62:	61fb      	str	r3, [r7, #28]
 8001e64:	69fb      	ldr	r3, [r7, #28]
 8001e66:	2b0f      	cmp	r3, #15
 8001e68:	f67f aea2 	bls.w	8001bb0 <HAL_GPIO_Init+0x1c>
      }
    }
  }
}
 8001e6c:	bf00      	nop
 8001e6e:	3724      	adds	r7, #36	; 0x24
 8001e70:	46bd      	mov	sp, r7
 8001e72:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001e76:	4770      	bx	lr
 8001e78:	40023800 	.word	0x40023800
 8001e7c:	40013800 	.word	0x40013800
 8001e80:	40020000 	.word	0x40020000
 8001e84:	40020400 	.word	0x40020400
 8001e88:	40020800 	.word	0x40020800
 8001e8c:	40020c00 	.word	0x40020c00
 8001e90:	40021000 	.word	0x40021000
 8001e94:	40013c00 	.word	0x40013c00

08001e98 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 8001e98:	b480      	push	{r7}
 8001e9a:	b083      	sub	sp, #12
 8001e9c:	af00      	add	r7, sp, #0
 8001e9e:	6078      	str	r0, [r7, #4]
 8001ea0:	460b      	mov	r3, r1
 8001ea2:	807b      	strh	r3, [r7, #2]
 8001ea4:	4613      	mov	r3, r2
 8001ea6:	707b      	strb	r3, [r7, #1]
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if(PinState != GPIO_PIN_RESET)
 8001ea8:	787b      	ldrb	r3, [r7, #1]
 8001eaa:	2b00      	cmp	r3, #0
 8001eac:	d003      	beq.n	8001eb6 <HAL_GPIO_WritePin+0x1e>
  {
    GPIOx->BSRR = GPIO_Pin;
 8001eae:	887a      	ldrh	r2, [r7, #2]
 8001eb0:	687b      	ldr	r3, [r7, #4]
 8001eb2:	619a      	str	r2, [r3, #24]
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
  }
}
 8001eb4:	e003      	b.n	8001ebe <HAL_GPIO_WritePin+0x26>
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
 8001eb6:	887b      	ldrh	r3, [r7, #2]
 8001eb8:	041a      	lsls	r2, r3, #16
 8001eba:	687b      	ldr	r3, [r7, #4]
 8001ebc:	619a      	str	r2, [r3, #24]
}
 8001ebe:	bf00      	nop
 8001ec0:	370c      	adds	r7, #12
 8001ec2:	46bd      	mov	sp, r7
 8001ec4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ec8:	4770      	bx	lr

08001eca <HAL_GPIO_TogglePin>:
  *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
  * @param  GPIO_Pin Specifies the pins to be toggled.
  * @retval None
  */
void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
 8001eca:	b480      	push	{r7}
 8001ecc:	b085      	sub	sp, #20
 8001ece:	af00      	add	r7, sp, #0
 8001ed0:	6078      	str	r0, [r7, #4]
 8001ed2:	460b      	mov	r3, r1
 8001ed4:	807b      	strh	r3, [r7, #2]

  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));

  /* get current Ouput Data Register value */
  odr = GPIOx->ODR;
 8001ed6:	687b      	ldr	r3, [r7, #4]
 8001ed8:	695b      	ldr	r3, [r3, #20]
 8001eda:	60fb      	str	r3, [r7, #12]

  /* Set selected pins that were at low level, and reset ones that were high */
  GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 8001edc:	887a      	ldrh	r2, [r7, #2]
 8001ede:	68fb      	ldr	r3, [r7, #12]
 8001ee0:	4013      	ands	r3, r2
 8001ee2:	041a      	lsls	r2, r3, #16
 8001ee4:	68fb      	ldr	r3, [r7, #12]
 8001ee6:	43d9      	mvns	r1, r3
 8001ee8:	887b      	ldrh	r3, [r7, #2]
 8001eea:	400b      	ands	r3, r1
 8001eec:	431a      	orrs	r2, r3
 8001eee:	687b      	ldr	r3, [r7, #4]
 8001ef0:	619a      	str	r2, [r3, #24]
}
 8001ef2:	bf00      	nop
 8001ef4:	3714      	adds	r7, #20
 8001ef6:	46bd      	mov	sp, r7
 8001ef8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001efc:	4770      	bx	lr

08001efe <HAL_UART_Init>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 8001efe:	b580      	push	{r7, lr}
 8001f00:	b082      	sub	sp, #8
 8001f02:	af00      	add	r7, sp, #0
 8001f04:	6078      	str	r0, [r7, #4]
  /* Check the UART handle allocation */
  if (huart == NULL)
 8001f06:	687b      	ldr	r3, [r7, #4]
 8001f08:	2b00      	cmp	r3, #0
 8001f0a:	d101      	bne.n	8001f10 <HAL_UART_Init+0x12>
  {
    return HAL_ERROR;
 8001f0c:	2301      	movs	r3, #1
 8001f0e:	e03f      	b.n	8001f90 <HAL_UART_Init+0x92>
    assert_param(IS_UART_INSTANCE(huart->Instance));
  }
  assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
  assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));

  if (huart->gState == HAL_UART_STATE_RESET)
 8001f10:	687b      	ldr	r3, [r7, #4]
 8001f12:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001f16:	b2db      	uxtb	r3, r3
 8001f18:	2b00      	cmp	r3, #0
 8001f1a:	d106      	bne.n	8001f2a <HAL_UART_Init+0x2c>
  {
    /* Allocate lock resource and initialize it */
    huart->Lock = HAL_UNLOCKED;
 8001f1c:	687b      	ldr	r3, [r7, #4]
 8001f1e:	2200      	movs	r2, #0
 8001f20:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Init the low level hardware */
    huart->MspInitCallback(huart);
#else
    /* Init the low level hardware : GPIO, CLOCK */
    HAL_UART_MspInit(huart);
 8001f24:	6878      	ldr	r0, [r7, #4]
 8001f26:	f7fe fcc5 	bl	80008b4 <HAL_UART_MspInit>
#endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
  }

  huart->gState = HAL_UART_STATE_BUSY;
 8001f2a:	687b      	ldr	r3, [r7, #4]
 8001f2c:	2224      	movs	r2, #36	; 0x24
 8001f2e:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

  /* Disable the peripheral */
  __HAL_UART_DISABLE(huart);
 8001f32:	687b      	ldr	r3, [r7, #4]
 8001f34:	681b      	ldr	r3, [r3, #0]
 8001f36:	68da      	ldr	r2, [r3, #12]
 8001f38:	687b      	ldr	r3, [r7, #4]
 8001f3a:	681b      	ldr	r3, [r3, #0]
 8001f3c:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8001f40:	60da      	str	r2, [r3, #12]

  /* Set the UART Communication parameters */
  UART_SetConfig(huart);
 8001f42:	6878      	ldr	r0, [r7, #4]
 8001f44:	f000 f9a6 	bl	8002294 <UART_SetConfig>

  /* In asynchronous mode, the following bits must be kept cleared:
     - LINEN and CLKEN bits in the USART_CR2 register,
     - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 8001f48:	687b      	ldr	r3, [r7, #4]
 8001f4a:	681b      	ldr	r3, [r3, #0]
 8001f4c:	691a      	ldr	r2, [r3, #16]
 8001f4e:	687b      	ldr	r3, [r7, #4]
 8001f50:	681b      	ldr	r3, [r3, #0]
 8001f52:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 8001f56:	611a      	str	r2, [r3, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 8001f58:	687b      	ldr	r3, [r7, #4]
 8001f5a:	681b      	ldr	r3, [r3, #0]
 8001f5c:	695a      	ldr	r2, [r3, #20]
 8001f5e:	687b      	ldr	r3, [r7, #4]
 8001f60:	681b      	ldr	r3, [r3, #0]
 8001f62:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 8001f66:	615a      	str	r2, [r3, #20]

  /* Enable the peripheral */
  __HAL_UART_ENABLE(huart);
 8001f68:	687b      	ldr	r3, [r7, #4]
 8001f6a:	681b      	ldr	r3, [r3, #0]
 8001f6c:	68da      	ldr	r2, [r3, #12]
 8001f6e:	687b      	ldr	r3, [r7, #4]
 8001f70:	681b      	ldr	r3, [r3, #0]
 8001f72:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001f76:	60da      	str	r2, [r3, #12]

  /* Initialize the UART state */
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001f78:	687b      	ldr	r3, [r7, #4]
 8001f7a:	2200      	movs	r2, #0
 8001f7c:	641a      	str	r2, [r3, #64]	; 0x40
  huart->gState = HAL_UART_STATE_READY;
 8001f7e:	687b      	ldr	r3, [r7, #4]
 8001f80:	2220      	movs	r2, #32
 8001f82:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
  huart->RxState = HAL_UART_STATE_READY;
 8001f86:	687b      	ldr	r3, [r7, #4]
 8001f88:	2220      	movs	r2, #32
 8001f8a:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

  return HAL_OK;
 8001f8e:	2300      	movs	r3, #0
}
 8001f90:	4618      	mov	r0, r3
 8001f92:	3708      	adds	r7, #8
 8001f94:	46bd      	mov	sp, r7
 8001f96:	bd80      	pop	{r7, pc}

08001f98 <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001f98:	b580      	push	{r7, lr}
 8001f9a:	b08a      	sub	sp, #40	; 0x28
 8001f9c:	af02      	add	r7, sp, #8
 8001f9e:	60f8      	str	r0, [r7, #12]
 8001fa0:	60b9      	str	r1, [r7, #8]
 8001fa2:	603b      	str	r3, [r7, #0]
 8001fa4:	4613      	mov	r3, r2
 8001fa6:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 8001fa8:	2300      	movs	r3, #0
 8001faa:	617b      	str	r3, [r7, #20]

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 8001fac:	68fb      	ldr	r3, [r7, #12]
 8001fae:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001fb2:	b2db      	uxtb	r3, r3
 8001fb4:	2b20      	cmp	r3, #32
 8001fb6:	d17c      	bne.n	80020b2 <HAL_UART_Transmit+0x11a>
  {
    if ((pData == NULL) || (Size == 0U))
 8001fb8:	68bb      	ldr	r3, [r7, #8]
 8001fba:	2b00      	cmp	r3, #0
 8001fbc:	d002      	beq.n	8001fc4 <HAL_UART_Transmit+0x2c>
 8001fbe:	88fb      	ldrh	r3, [r7, #6]
 8001fc0:	2b00      	cmp	r3, #0
 8001fc2:	d101      	bne.n	8001fc8 <HAL_UART_Transmit+0x30>
    {
      return  HAL_ERROR;
 8001fc4:	2301      	movs	r3, #1
 8001fc6:	e075      	b.n	80020b4 <HAL_UART_Transmit+0x11c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 8001fc8:	68fb      	ldr	r3, [r7, #12]
 8001fca:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 8001fce:	2b01      	cmp	r3, #1
 8001fd0:	d101      	bne.n	8001fd6 <HAL_UART_Transmit+0x3e>
 8001fd2:	2302      	movs	r3, #2
 8001fd4:	e06e      	b.n	80020b4 <HAL_UART_Transmit+0x11c>
 8001fd6:	68fb      	ldr	r3, [r7, #12]
 8001fd8:	2201      	movs	r2, #1
 8001fda:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001fde:	68fb      	ldr	r3, [r7, #12]
 8001fe0:	2200      	movs	r2, #0
 8001fe2:	641a      	str	r2, [r3, #64]	; 0x40
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8001fe4:	68fb      	ldr	r3, [r7, #12]
 8001fe6:	2221      	movs	r2, #33	; 0x21
 8001fe8:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8001fec:	f7fe febe 	bl	8000d6c <HAL_GetTick>
 8001ff0:	6178      	str	r0, [r7, #20]

    huart->TxXferSize = Size;
 8001ff2:	68fb      	ldr	r3, [r7, #12]
 8001ff4:	88fa      	ldrh	r2, [r7, #6]
 8001ff6:	849a      	strh	r2, [r3, #36]	; 0x24
    huart->TxXferCount = Size;
 8001ff8:	68fb      	ldr	r3, [r7, #12]
 8001ffa:	88fa      	ldrh	r2, [r7, #6]
 8001ffc:	84da      	strh	r2, [r3, #38]	; 0x26

    /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001ffe:	68fb      	ldr	r3, [r7, #12]
 8002000:	689b      	ldr	r3, [r3, #8]
 8002002:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8002006:	d108      	bne.n	800201a <HAL_UART_Transmit+0x82>
 8002008:	68fb      	ldr	r3, [r7, #12]
 800200a:	691b      	ldr	r3, [r3, #16]
 800200c:	2b00      	cmp	r3, #0
 800200e:	d104      	bne.n	800201a <HAL_UART_Transmit+0x82>
    {
      pdata8bits  = NULL;
 8002010:	2300      	movs	r3, #0
 8002012:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8002014:	68bb      	ldr	r3, [r7, #8]
 8002016:	61bb      	str	r3, [r7, #24]
 8002018:	e003      	b.n	8002022 <HAL_UART_Transmit+0x8a>
    }
    else
    {
      pdata8bits  = pData;
 800201a:	68bb      	ldr	r3, [r7, #8]
 800201c:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 800201e:	2300      	movs	r3, #0
 8002020:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 8002022:	68fb      	ldr	r3, [r7, #12]
 8002024:	2200      	movs	r2, #0
 8002026:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    while (huart->TxXferCount > 0U)
 800202a:	e02a      	b.n	8002082 <HAL_UART_Transmit+0xea>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 800202c:	683b      	ldr	r3, [r7, #0]
 800202e:	9300      	str	r3, [sp, #0]
 8002030:	697b      	ldr	r3, [r7, #20]
 8002032:	2200      	movs	r2, #0
 8002034:	2180      	movs	r1, #128	; 0x80
 8002036:	68f8      	ldr	r0, [r7, #12]
 8002038:	f000 f8e2 	bl	8002200 <UART_WaitOnFlagUntilTimeout>
 800203c:	4603      	mov	r3, r0
 800203e:	2b00      	cmp	r3, #0
 8002040:	d001      	beq.n	8002046 <HAL_UART_Transmit+0xae>
      {
        return HAL_TIMEOUT;
 8002042:	2303      	movs	r3, #3
 8002044:	e036      	b.n	80020b4 <HAL_UART_Transmit+0x11c>
      }
      if (pdata8bits == NULL)
 8002046:	69fb      	ldr	r3, [r7, #28]
 8002048:	2b00      	cmp	r3, #0
 800204a:	d10b      	bne.n	8002064 <HAL_UART_Transmit+0xcc>
      {
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 800204c:	69bb      	ldr	r3, [r7, #24]
 800204e:	881b      	ldrh	r3, [r3, #0]
 8002050:	461a      	mov	r2, r3
 8002052:	68fb      	ldr	r3, [r7, #12]
 8002054:	681b      	ldr	r3, [r3, #0]
 8002056:	f3c2 0208 	ubfx	r2, r2, #0, #9
 800205a:	605a      	str	r2, [r3, #4]
        pdata16bits++;
 800205c:	69bb      	ldr	r3, [r7, #24]
 800205e:	3302      	adds	r3, #2
 8002060:	61bb      	str	r3, [r7, #24]
 8002062:	e007      	b.n	8002074 <HAL_UART_Transmit+0xdc>
      }
      else
      {
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 8002064:	69fb      	ldr	r3, [r7, #28]
 8002066:	781a      	ldrb	r2, [r3, #0]
 8002068:	68fb      	ldr	r3, [r7, #12]
 800206a:	681b      	ldr	r3, [r3, #0]
 800206c:	605a      	str	r2, [r3, #4]
        pdata8bits++;
 800206e:	69fb      	ldr	r3, [r7, #28]
 8002070:	3301      	adds	r3, #1
 8002072:	61fb      	str	r3, [r7, #28]
      }
      huart->TxXferCount--;
 8002074:	68fb      	ldr	r3, [r7, #12]
 8002076:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8002078:	b29b      	uxth	r3, r3
 800207a:	3b01      	subs	r3, #1
 800207c:	b29a      	uxth	r2, r3
 800207e:	68fb      	ldr	r3, [r7, #12]
 8002080:	84da      	strh	r2, [r3, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 8002082:	68fb      	ldr	r3, [r7, #12]
 8002084:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8002086:	b29b      	uxth	r3, r3
 8002088:	2b00      	cmp	r3, #0
 800208a:	d1cf      	bne.n	800202c <HAL_UART_Transmit+0x94>
    }

    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 800208c:	683b      	ldr	r3, [r7, #0]
 800208e:	9300      	str	r3, [sp, #0]
 8002090:	697b      	ldr	r3, [r7, #20]
 8002092:	2200      	movs	r2, #0
 8002094:	2140      	movs	r1, #64	; 0x40
 8002096:	68f8      	ldr	r0, [r7, #12]
 8002098:	f000 f8b2 	bl	8002200 <UART_WaitOnFlagUntilTimeout>
 800209c:	4603      	mov	r3, r0
 800209e:	2b00      	cmp	r3, #0
 80020a0:	d001      	beq.n	80020a6 <HAL_UART_Transmit+0x10e>
    {
      return HAL_TIMEOUT;
 80020a2:	2303      	movs	r3, #3
 80020a4:	e006      	b.n	80020b4 <HAL_UART_Transmit+0x11c>
    }

    /* At end of Tx process, restore huart->gState to Ready */
    huart->gState = HAL_UART_STATE_READY;
 80020a6:	68fb      	ldr	r3, [r7, #12]
 80020a8:	2220      	movs	r2, #32
 80020aa:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    return HAL_OK;
 80020ae:	2300      	movs	r3, #0
 80020b0:	e000      	b.n	80020b4 <HAL_UART_Transmit+0x11c>
  }
  else
  {
    return HAL_BUSY;
 80020b2:	2302      	movs	r3, #2
  }
}
 80020b4:	4618      	mov	r0, r3
 80020b6:	3720      	adds	r7, #32
 80020b8:	46bd      	mov	sp, r7
 80020ba:	bd80      	pop	{r7, pc}

080020bc <HAL_UART_Receive>:
  * @param  Size  Amount of data elements (u8 or u16) to be received.
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 80020bc:	b580      	push	{r7, lr}
 80020be:	b08a      	sub	sp, #40	; 0x28
 80020c0:	af02      	add	r7, sp, #8
 80020c2:	60f8      	str	r0, [r7, #12]
 80020c4:	60b9      	str	r1, [r7, #8]
 80020c6:	603b      	str	r3, [r7, #0]
 80020c8:	4613      	mov	r3, r2
 80020ca:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 80020cc:	2300      	movs	r3, #0
 80020ce:	617b      	str	r3, [r7, #20]

  /* Check that a Rx process is not already ongoing */
  if (huart->RxState == HAL_UART_STATE_READY)
 80020d0:	68fb      	ldr	r3, [r7, #12]
 80020d2:	f893 303e 	ldrb.w	r3, [r3, #62]	; 0x3e
 80020d6:	b2db      	uxtb	r3, r3
 80020d8:	2b20      	cmp	r3, #32
 80020da:	f040 808c 	bne.w	80021f6 <HAL_UART_Receive+0x13a>
  {
    if ((pData == NULL) || (Size == 0U))
 80020de:	68bb      	ldr	r3, [r7, #8]
 80020e0:	2b00      	cmp	r3, #0
 80020e2:	d002      	beq.n	80020ea <HAL_UART_Receive+0x2e>
 80020e4:	88fb      	ldrh	r3, [r7, #6]
 80020e6:	2b00      	cmp	r3, #0
 80020e8:	d101      	bne.n	80020ee <HAL_UART_Receive+0x32>
    {
      return  HAL_ERROR;
 80020ea:	2301      	movs	r3, #1
 80020ec:	e084      	b.n	80021f8 <HAL_UART_Receive+0x13c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 80020ee:	68fb      	ldr	r3, [r7, #12]
 80020f0:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 80020f4:	2b01      	cmp	r3, #1
 80020f6:	d101      	bne.n	80020fc <HAL_UART_Receive+0x40>
 80020f8:	2302      	movs	r3, #2
 80020fa:	e07d      	b.n	80021f8 <HAL_UART_Receive+0x13c>
 80020fc:	68fb      	ldr	r3, [r7, #12]
 80020fe:	2201      	movs	r2, #1
 8002100:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8002104:	68fb      	ldr	r3, [r7, #12]
 8002106:	2200      	movs	r2, #0
 8002108:	641a      	str	r2, [r3, #64]	; 0x40
    huart->RxState = HAL_UART_STATE_BUSY_RX;
 800210a:	68fb      	ldr	r3, [r7, #12]
 800210c:	2222      	movs	r2, #34	; 0x22
 800210e:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e
    huart->ReceptionType = HAL_UART_RECEPTION_STANDARD;
 8002112:	68fb      	ldr	r3, [r7, #12]
 8002114:	2200      	movs	r2, #0
 8002116:	631a      	str	r2, [r3, #48]	; 0x30

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8002118:	f7fe fe28 	bl	8000d6c <HAL_GetTick>
 800211c:	6178      	str	r0, [r7, #20]

    huart->RxXferSize = Size;
 800211e:	68fb      	ldr	r3, [r7, #12]
 8002120:	88fa      	ldrh	r2, [r7, #6]
 8002122:	859a      	strh	r2, [r3, #44]	; 0x2c
    huart->RxXferCount = Size;
 8002124:	68fb      	ldr	r3, [r7, #12]
 8002126:	88fa      	ldrh	r2, [r7, #6]
 8002128:	85da      	strh	r2, [r3, #46]	; 0x2e

    /* In case of 9bits/No Parity transfer, pRxData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 800212a:	68fb      	ldr	r3, [r7, #12]
 800212c:	689b      	ldr	r3, [r3, #8]
 800212e:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8002132:	d108      	bne.n	8002146 <HAL_UART_Receive+0x8a>
 8002134:	68fb      	ldr	r3, [r7, #12]
 8002136:	691b      	ldr	r3, [r3, #16]
 8002138:	2b00      	cmp	r3, #0
 800213a:	d104      	bne.n	8002146 <HAL_UART_Receive+0x8a>
    {
      pdata8bits  = NULL;
 800213c:	2300      	movs	r3, #0
 800213e:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8002140:	68bb      	ldr	r3, [r7, #8]
 8002142:	61bb      	str	r3, [r7, #24]
 8002144:	e003      	b.n	800214e <HAL_UART_Receive+0x92>
    }
    else
    {
      pdata8bits  = pData;
 8002146:	68bb      	ldr	r3, [r7, #8]
 8002148:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 800214a:	2300      	movs	r3, #0
 800214c:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 800214e:	68fb      	ldr	r3, [r7, #12]
 8002150:	2200      	movs	r2, #0
 8002152:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Check the remain data to be received */
    while (huart->RxXferCount > 0U)
 8002156:	e043      	b.n	80021e0 <HAL_UART_Receive+0x124>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
 8002158:	683b      	ldr	r3, [r7, #0]
 800215a:	9300      	str	r3, [sp, #0]
 800215c:	697b      	ldr	r3, [r7, #20]
 800215e:	2200      	movs	r2, #0
 8002160:	2120      	movs	r1, #32
 8002162:	68f8      	ldr	r0, [r7, #12]
 8002164:	f000 f84c 	bl	8002200 <UART_WaitOnFlagUntilTimeout>
 8002168:	4603      	mov	r3, r0
 800216a:	2b00      	cmp	r3, #0
 800216c:	d001      	beq.n	8002172 <HAL_UART_Receive+0xb6>
      {
        return HAL_TIMEOUT;
 800216e:	2303      	movs	r3, #3
 8002170:	e042      	b.n	80021f8 <HAL_UART_Receive+0x13c>
      }
      if (pdata8bits == NULL)
 8002172:	69fb      	ldr	r3, [r7, #28]
 8002174:	2b00      	cmp	r3, #0
 8002176:	d10c      	bne.n	8002192 <HAL_UART_Receive+0xd6>
      {
        *pdata16bits = (uint16_t)(huart->Instance->DR & 0x01FF);
 8002178:	68fb      	ldr	r3, [r7, #12]
 800217a:	681b      	ldr	r3, [r3, #0]
 800217c:	685b      	ldr	r3, [r3, #4]
 800217e:	b29b      	uxth	r3, r3
 8002180:	f3c3 0308 	ubfx	r3, r3, #0, #9
 8002184:	b29a      	uxth	r2, r3
 8002186:	69bb      	ldr	r3, [r7, #24]
 8002188:	801a      	strh	r2, [r3, #0]
        pdata16bits++;
 800218a:	69bb      	ldr	r3, [r7, #24]
 800218c:	3302      	adds	r3, #2
 800218e:	61bb      	str	r3, [r7, #24]
 8002190:	e01f      	b.n	80021d2 <HAL_UART_Receive+0x116>
      }
      else
      {
        if ((huart->Init.WordLength == UART_WORDLENGTH_9B) || ((huart->Init.WordLength == UART_WORDLENGTH_8B) && (huart->Init.Parity == UART_PARITY_NONE)))
 8002192:	68fb      	ldr	r3, [r7, #12]
 8002194:	689b      	ldr	r3, [r3, #8]
 8002196:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 800219a:	d007      	beq.n	80021ac <HAL_UART_Receive+0xf0>
 800219c:	68fb      	ldr	r3, [r7, #12]
 800219e:	689b      	ldr	r3, [r3, #8]
 80021a0:	2b00      	cmp	r3, #0
 80021a2:	d10a      	bne.n	80021ba <HAL_UART_Receive+0xfe>
 80021a4:	68fb      	ldr	r3, [r7, #12]
 80021a6:	691b      	ldr	r3, [r3, #16]
 80021a8:	2b00      	cmp	r3, #0
 80021aa:	d106      	bne.n	80021ba <HAL_UART_Receive+0xfe>
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x00FF);
 80021ac:	68fb      	ldr	r3, [r7, #12]
 80021ae:	681b      	ldr	r3, [r3, #0]
 80021b0:	685b      	ldr	r3, [r3, #4]
 80021b2:	b2da      	uxtb	r2, r3
 80021b4:	69fb      	ldr	r3, [r7, #28]
 80021b6:	701a      	strb	r2, [r3, #0]
 80021b8:	e008      	b.n	80021cc <HAL_UART_Receive+0x110>
        }
        else
        {
          *pdata8bits = (uint8_t)(huart->Instance->DR & (uint8_t)0x007F);
 80021ba:	68fb      	ldr	r3, [r7, #12]
 80021bc:	681b      	ldr	r3, [r3, #0]
 80021be:	685b      	ldr	r3, [r3, #4]
 80021c0:	b2db      	uxtb	r3, r3
 80021c2:	f003 037f 	and.w	r3, r3, #127	; 0x7f
 80021c6:	b2da      	uxtb	r2, r3
 80021c8:	69fb      	ldr	r3, [r7, #28]
 80021ca:	701a      	strb	r2, [r3, #0]
        }
        pdata8bits++;
 80021cc:	69fb      	ldr	r3, [r7, #28]
 80021ce:	3301      	adds	r3, #1
 80021d0:	61fb      	str	r3, [r7, #28]
      }
      huart->RxXferCount--;
 80021d2:	68fb      	ldr	r3, [r7, #12]
 80021d4:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
 80021d6:	b29b      	uxth	r3, r3
 80021d8:	3b01      	subs	r3, #1
 80021da:	b29a      	uxth	r2, r3
 80021dc:	68fb      	ldr	r3, [r7, #12]
 80021de:	85da      	strh	r2, [r3, #46]	; 0x2e
    while (huart->RxXferCount > 0U)
 80021e0:	68fb      	ldr	r3, [r7, #12]
 80021e2:	8ddb      	ldrh	r3, [r3, #46]	; 0x2e
 80021e4:	b29b      	uxth	r3, r3
 80021e6:	2b00      	cmp	r3, #0
 80021e8:	d1b6      	bne.n	8002158 <HAL_UART_Receive+0x9c>
    }

    /* At end of Rx process, restore huart->RxState to Ready */
    huart->RxState = HAL_UART_STATE_READY;
 80021ea:	68fb      	ldr	r3, [r7, #12]
 80021ec:	2220      	movs	r2, #32
 80021ee:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

    return HAL_OK;
 80021f2:	2300      	movs	r3, #0
 80021f4:	e000      	b.n	80021f8 <HAL_UART_Receive+0x13c>
  }
  else
  {
    return HAL_BUSY;
 80021f6:	2302      	movs	r3, #2
  }
}
 80021f8:	4618      	mov	r0, r3
 80021fa:	3720      	adds	r7, #32
 80021fc:	46bd      	mov	sp, r7
 80021fe:	bd80      	pop	{r7, pc}

08002200 <UART_WaitOnFlagUntilTimeout>:
  * @param  Tickstart Tick start value
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout)
{
 8002200:	b580      	push	{r7, lr}
 8002202:	b084      	sub	sp, #16
 8002204:	af00      	add	r7, sp, #0
 8002206:	60f8      	str	r0, [r7, #12]
 8002208:	60b9      	str	r1, [r7, #8]
 800220a:	603b      	str	r3, [r7, #0]
 800220c:	4613      	mov	r3, r2
 800220e:	71fb      	strb	r3, [r7, #7]
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8002210:	e02c      	b.n	800226c <UART_WaitOnFlagUntilTimeout+0x6c>
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
 8002212:	69bb      	ldr	r3, [r7, #24]
 8002214:	f1b3 3fff 	cmp.w	r3, #4294967295
 8002218:	d028      	beq.n	800226c <UART_WaitOnFlagUntilTimeout+0x6c>
    {
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 800221a:	69bb      	ldr	r3, [r7, #24]
 800221c:	2b00      	cmp	r3, #0
 800221e:	d007      	beq.n	8002230 <UART_WaitOnFlagUntilTimeout+0x30>
 8002220:	f7fe fda4 	bl	8000d6c <HAL_GetTick>
 8002224:	4602      	mov	r2, r0
 8002226:	683b      	ldr	r3, [r7, #0]
 8002228:	1ad3      	subs	r3, r2, r3
 800222a:	69ba      	ldr	r2, [r7, #24]
 800222c:	429a      	cmp	r2, r3
 800222e:	d21d      	bcs.n	800226c <UART_WaitOnFlagUntilTimeout+0x6c>
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 8002230:	68fb      	ldr	r3, [r7, #12]
 8002232:	681b      	ldr	r3, [r3, #0]
 8002234:	68da      	ldr	r2, [r3, #12]
 8002236:	68fb      	ldr	r3, [r7, #12]
 8002238:	681b      	ldr	r3, [r3, #0]
 800223a:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 800223e:	60da      	str	r2, [r3, #12]
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 8002240:	68fb      	ldr	r3, [r7, #12]
 8002242:	681b      	ldr	r3, [r3, #0]
 8002244:	695a      	ldr	r2, [r3, #20]
 8002246:	68fb      	ldr	r3, [r7, #12]
 8002248:	681b      	ldr	r3, [r3, #0]
 800224a:	f022 0201 	bic.w	r2, r2, #1
 800224e:	615a      	str	r2, [r3, #20]

        huart->gState  = HAL_UART_STATE_READY;
 8002250:	68fb      	ldr	r3, [r7, #12]
 8002252:	2220      	movs	r2, #32
 8002254:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
        huart->RxState = HAL_UART_STATE_READY;
 8002258:	68fb      	ldr	r3, [r7, #12]
 800225a:	2220      	movs	r2, #32
 800225c:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

        /* Process Unlocked */
        __HAL_UNLOCK(huart);
 8002260:	68fb      	ldr	r3, [r7, #12]
 8002262:	2200      	movs	r2, #0
 8002264:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

        return HAL_TIMEOUT;
 8002268:	2303      	movs	r3, #3
 800226a:	e00f      	b.n	800228c <UART_WaitOnFlagUntilTimeout+0x8c>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 800226c:	68fb      	ldr	r3, [r7, #12]
 800226e:	681b      	ldr	r3, [r3, #0]
 8002270:	681a      	ldr	r2, [r3, #0]
 8002272:	68bb      	ldr	r3, [r7, #8]
 8002274:	4013      	ands	r3, r2
 8002276:	68ba      	ldr	r2, [r7, #8]
 8002278:	429a      	cmp	r2, r3
 800227a:	bf0c      	ite	eq
 800227c:	2301      	moveq	r3, #1
 800227e:	2300      	movne	r3, #0
 8002280:	b2db      	uxtb	r3, r3
 8002282:	461a      	mov	r2, r3
 8002284:	79fb      	ldrb	r3, [r7, #7]
 8002286:	429a      	cmp	r2, r3
 8002288:	d0c3      	beq.n	8002212 <UART_WaitOnFlagUntilTimeout+0x12>
      }
    }
  }
  return HAL_OK;
 800228a:	2300      	movs	r3, #0
}
 800228c:	4618      	mov	r0, r3
 800228e:	3710      	adds	r7, #16
 8002290:	46bd      	mov	sp, r7
 8002292:	bd80      	pop	{r7, pc}

08002294 <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 8002294:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002298:	b085      	sub	sp, #20
 800229a:	af00      	add	r7, sp, #0
 800229c:	6078      	str	r0, [r7, #4]
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 800229e:	687b      	ldr	r3, [r7, #4]
 80022a0:	681b      	ldr	r3, [r3, #0]
 80022a2:	691b      	ldr	r3, [r3, #16]
 80022a4:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 80022a8:	687b      	ldr	r3, [r7, #4]
 80022aa:	68da      	ldr	r2, [r3, #12]
 80022ac:	687b      	ldr	r3, [r7, #4]
 80022ae:	681b      	ldr	r3, [r3, #0]
 80022b0:	430a      	orrs	r2, r1
 80022b2:	611a      	str	r2, [r3, #16]
     Set the M bits according to huart->Init.WordLength value
     Set PCE and PS bits according to huart->Init.Parity value
     Set TE and RE bits according to huart->Init.Mode value
     Set OVER8 bit according to huart->Init.OverSampling value */

  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
 80022b4:	687b      	ldr	r3, [r7, #4]
 80022b6:	689a      	ldr	r2, [r3, #8]
 80022b8:	687b      	ldr	r3, [r7, #4]
 80022ba:	691b      	ldr	r3, [r3, #16]
 80022bc:	431a      	orrs	r2, r3
 80022be:	687b      	ldr	r3, [r7, #4]
 80022c0:	695b      	ldr	r3, [r3, #20]
 80022c2:	431a      	orrs	r2, r3
 80022c4:	687b      	ldr	r3, [r7, #4]
 80022c6:	69db      	ldr	r3, [r3, #28]
 80022c8:	4313      	orrs	r3, r2
 80022ca:	60bb      	str	r3, [r7, #8]
  MODIFY_REG(huart->Instance->CR1,
 80022cc:	687b      	ldr	r3, [r7, #4]
 80022ce:	681b      	ldr	r3, [r3, #0]
 80022d0:	68db      	ldr	r3, [r3, #12]
 80022d2:	f423 4316 	bic.w	r3, r3, #38400	; 0x9600
 80022d6:	f023 030c 	bic.w	r3, r3, #12
 80022da:	687a      	ldr	r2, [r7, #4]
 80022dc:	6812      	ldr	r2, [r2, #0]
 80022de:	68b9      	ldr	r1, [r7, #8]
 80022e0:	430b      	orrs	r3, r1
 80022e2:	60d3      	str	r3, [r2, #12]
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 80022e4:	687b      	ldr	r3, [r7, #4]
 80022e6:	681b      	ldr	r3, [r3, #0]
 80022e8:	695b      	ldr	r3, [r3, #20]
 80022ea:	f423 7140 	bic.w	r1, r3, #768	; 0x300
 80022ee:	687b      	ldr	r3, [r7, #4]
 80022f0:	699a      	ldr	r2, [r3, #24]
 80022f2:	687b      	ldr	r3, [r7, #4]
 80022f4:	681b      	ldr	r3, [r3, #0]
 80022f6:	430a      	orrs	r2, r1
 80022f8:	615a      	str	r2, [r3, #20]
    if ((huart->Instance == USART1) || (huart->Instance == USART6) || (huart->Instance == UART9) || (huart->Instance == UART10))
    {
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#elif defined(USART6)
    if ((huart->Instance == USART1) || (huart->Instance == USART6))
 80022fa:	687b      	ldr	r3, [r7, #4]
 80022fc:	681b      	ldr	r3, [r3, #0]
 80022fe:	4ad0      	ldr	r2, [pc, #832]	; (8002640 <UART_SetConfig+0x3ac>)
 8002300:	4293      	cmp	r3, r2
 8002302:	d004      	beq.n	800230e <UART_SetConfig+0x7a>
 8002304:	687b      	ldr	r3, [r7, #4]
 8002306:	681b      	ldr	r3, [r3, #0]
 8002308:	4ace      	ldr	r2, [pc, #824]	; (8002644 <UART_SetConfig+0x3b0>)
 800230a:	4293      	cmp	r3, r2
 800230c:	d103      	bne.n	8002316 <UART_SetConfig+0x82>
    {
      pclk = HAL_RCC_GetPCLK2Freq();
 800230e:	f7ff facf 	bl	80018b0 <HAL_RCC_GetPCLK2Freq>
 8002312:	60f8      	str	r0, [r7, #12]
 8002314:	e002      	b.n	800231c <UART_SetConfig+0x88>
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#endif /* USART6 */
    else
    {
      pclk = HAL_RCC_GetPCLK1Freq();
 8002316:	f7ff fab7 	bl	8001888 <HAL_RCC_GetPCLK1Freq>
 800231a:	60f8      	str	r0, [r7, #12]
    }
  /*-------------------------- USART BRR Configuration ---------------------*/
  if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 800231c:	687b      	ldr	r3, [r7, #4]
 800231e:	69db      	ldr	r3, [r3, #28]
 8002320:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8002324:	f040 80ba 	bne.w	800249c <UART_SetConfig+0x208>
  {
    huart->Instance->BRR = UART_BRR_SAMPLING8(pclk, huart->Init.BaudRate);
 8002328:	68fb      	ldr	r3, [r7, #12]
 800232a:	461d      	mov	r5, r3
 800232c:	f04f 0600 	mov.w	r6, #0
 8002330:	46a8      	mov	r8, r5
 8002332:	46b1      	mov	r9, r6
 8002334:	eb18 0308 	adds.w	r3, r8, r8
 8002338:	eb49 0409 	adc.w	r4, r9, r9
 800233c:	4698      	mov	r8, r3
 800233e:	46a1      	mov	r9, r4
 8002340:	eb18 0805 	adds.w	r8, r8, r5
 8002344:	eb49 0906 	adc.w	r9, r9, r6
 8002348:	f04f 0100 	mov.w	r1, #0
 800234c:	f04f 0200 	mov.w	r2, #0
 8002350:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 8002354:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 8002358:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 800235c:	4688      	mov	r8, r1
 800235e:	4691      	mov	r9, r2
 8002360:	eb18 0005 	adds.w	r0, r8, r5
 8002364:	eb49 0106 	adc.w	r1, r9, r6
 8002368:	687b      	ldr	r3, [r7, #4]
 800236a:	685b      	ldr	r3, [r3, #4]
 800236c:	461d      	mov	r5, r3
 800236e:	f04f 0600 	mov.w	r6, #0
 8002372:	196b      	adds	r3, r5, r5
 8002374:	eb46 0406 	adc.w	r4, r6, r6
 8002378:	461a      	mov	r2, r3
 800237a:	4623      	mov	r3, r4
 800237c:	f001 fb50 	bl	8003a20 <__aeabi_uldivmod>
 8002380:	4603      	mov	r3, r0
 8002382:	460c      	mov	r4, r1
 8002384:	461a      	mov	r2, r3
 8002386:	4bb0      	ldr	r3, [pc, #704]	; (8002648 <UART_SetConfig+0x3b4>)
 8002388:	fba3 2302 	umull	r2, r3, r3, r2
 800238c:	095b      	lsrs	r3, r3, #5
 800238e:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8002392:	68fb      	ldr	r3, [r7, #12]
 8002394:	461d      	mov	r5, r3
 8002396:	f04f 0600 	mov.w	r6, #0
 800239a:	46a9      	mov	r9, r5
 800239c:	46b2      	mov	sl, r6
 800239e:	eb19 0309 	adds.w	r3, r9, r9
 80023a2:	eb4a 040a 	adc.w	r4, sl, sl
 80023a6:	4699      	mov	r9, r3
 80023a8:	46a2      	mov	sl, r4
 80023aa:	eb19 0905 	adds.w	r9, r9, r5
 80023ae:	eb4a 0a06 	adc.w	sl, sl, r6
 80023b2:	f04f 0100 	mov.w	r1, #0
 80023b6:	f04f 0200 	mov.w	r2, #0
 80023ba:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80023be:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80023c2:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80023c6:	4689      	mov	r9, r1
 80023c8:	4692      	mov	sl, r2
 80023ca:	eb19 0005 	adds.w	r0, r9, r5
 80023ce:	eb4a 0106 	adc.w	r1, sl, r6
 80023d2:	687b      	ldr	r3, [r7, #4]
 80023d4:	685b      	ldr	r3, [r3, #4]
 80023d6:	461d      	mov	r5, r3
 80023d8:	f04f 0600 	mov.w	r6, #0
 80023dc:	196b      	adds	r3, r5, r5
 80023de:	eb46 0406 	adc.w	r4, r6, r6
 80023e2:	461a      	mov	r2, r3
 80023e4:	4623      	mov	r3, r4
 80023e6:	f001 fb1b 	bl	8003a20 <__aeabi_uldivmod>
 80023ea:	4603      	mov	r3, r0
 80023ec:	460c      	mov	r4, r1
 80023ee:	461a      	mov	r2, r3
 80023f0:	4b95      	ldr	r3, [pc, #596]	; (8002648 <UART_SetConfig+0x3b4>)
 80023f2:	fba3 1302 	umull	r1, r3, r3, r2
 80023f6:	095b      	lsrs	r3, r3, #5
 80023f8:	2164      	movs	r1, #100	; 0x64
 80023fa:	fb01 f303 	mul.w	r3, r1, r3
 80023fe:	1ad3      	subs	r3, r2, r3
 8002400:	00db      	lsls	r3, r3, #3
 8002402:	3332      	adds	r3, #50	; 0x32
 8002404:	4a90      	ldr	r2, [pc, #576]	; (8002648 <UART_SetConfig+0x3b4>)
 8002406:	fba2 2303 	umull	r2, r3, r2, r3
 800240a:	095b      	lsrs	r3, r3, #5
 800240c:	005b      	lsls	r3, r3, #1
 800240e:	f403 73f8 	and.w	r3, r3, #496	; 0x1f0
 8002412:	4498      	add	r8, r3
 8002414:	68fb      	ldr	r3, [r7, #12]
 8002416:	461d      	mov	r5, r3
 8002418:	f04f 0600 	mov.w	r6, #0
 800241c:	46a9      	mov	r9, r5
 800241e:	46b2      	mov	sl, r6
 8002420:	eb19 0309 	adds.w	r3, r9, r9
 8002424:	eb4a 040a 	adc.w	r4, sl, sl
 8002428:	4699      	mov	r9, r3
 800242a:	46a2      	mov	sl, r4
 800242c:	eb19 0905 	adds.w	r9, r9, r5
 8002430:	eb4a 0a06 	adc.w	sl, sl, r6
 8002434:	f04f 0100 	mov.w	r1, #0
 8002438:	f04f 0200 	mov.w	r2, #0
 800243c:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8002440:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8002444:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8002448:	4689      	mov	r9, r1
 800244a:	4692      	mov	sl, r2
 800244c:	eb19 0005 	adds.w	r0, r9, r5
 8002450:	eb4a 0106 	adc.w	r1, sl, r6
 8002454:	687b      	ldr	r3, [r7, #4]
 8002456:	685b      	ldr	r3, [r3, #4]
 8002458:	461d      	mov	r5, r3
 800245a:	f04f 0600 	mov.w	r6, #0
 800245e:	196b      	adds	r3, r5, r5
 8002460:	eb46 0406 	adc.w	r4, r6, r6
 8002464:	461a      	mov	r2, r3
 8002466:	4623      	mov	r3, r4
 8002468:	f001 fada 	bl	8003a20 <__aeabi_uldivmod>
 800246c:	4603      	mov	r3, r0
 800246e:	460c      	mov	r4, r1
 8002470:	461a      	mov	r2, r3
 8002472:	4b75      	ldr	r3, [pc, #468]	; (8002648 <UART_SetConfig+0x3b4>)
 8002474:	fba3 1302 	umull	r1, r3, r3, r2
 8002478:	095b      	lsrs	r3, r3, #5
 800247a:	2164      	movs	r1, #100	; 0x64
 800247c:	fb01 f303 	mul.w	r3, r1, r3
 8002480:	1ad3      	subs	r3, r2, r3
 8002482:	00db      	lsls	r3, r3, #3
 8002484:	3332      	adds	r3, #50	; 0x32
 8002486:	4a70      	ldr	r2, [pc, #448]	; (8002648 <UART_SetConfig+0x3b4>)
 8002488:	fba2 2303 	umull	r2, r3, r2, r3
 800248c:	095b      	lsrs	r3, r3, #5
 800248e:	f003 0207 	and.w	r2, r3, #7
 8002492:	687b      	ldr	r3, [r7, #4]
 8002494:	681b      	ldr	r3, [r3, #0]
 8002496:	4442      	add	r2, r8
 8002498:	609a      	str	r2, [r3, #8]
  }
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
}
 800249a:	e0cc      	b.n	8002636 <UART_SetConfig+0x3a2>
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 800249c:	68fb      	ldr	r3, [r7, #12]
 800249e:	469a      	mov	sl, r3
 80024a0:	f04f 0b00 	mov.w	fp, #0
 80024a4:	46d0      	mov	r8, sl
 80024a6:	46d9      	mov	r9, fp
 80024a8:	eb18 0308 	adds.w	r3, r8, r8
 80024ac:	eb49 0409 	adc.w	r4, r9, r9
 80024b0:	4698      	mov	r8, r3
 80024b2:	46a1      	mov	r9, r4
 80024b4:	eb18 080a 	adds.w	r8, r8, sl
 80024b8:	eb49 090b 	adc.w	r9, r9, fp
 80024bc:	f04f 0100 	mov.w	r1, #0
 80024c0:	f04f 0200 	mov.w	r2, #0
 80024c4:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 80024c8:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 80024cc:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 80024d0:	4688      	mov	r8, r1
 80024d2:	4691      	mov	r9, r2
 80024d4:	eb1a 0508 	adds.w	r5, sl, r8
 80024d8:	eb4b 0609 	adc.w	r6, fp, r9
 80024dc:	687b      	ldr	r3, [r7, #4]
 80024de:	685b      	ldr	r3, [r3, #4]
 80024e0:	4619      	mov	r1, r3
 80024e2:	f04f 0200 	mov.w	r2, #0
 80024e6:	f04f 0300 	mov.w	r3, #0
 80024ea:	f04f 0400 	mov.w	r4, #0
 80024ee:	0094      	lsls	r4, r2, #2
 80024f0:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 80024f4:	008b      	lsls	r3, r1, #2
 80024f6:	461a      	mov	r2, r3
 80024f8:	4623      	mov	r3, r4
 80024fa:	4628      	mov	r0, r5
 80024fc:	4631      	mov	r1, r6
 80024fe:	f001 fa8f 	bl	8003a20 <__aeabi_uldivmod>
 8002502:	4603      	mov	r3, r0
 8002504:	460c      	mov	r4, r1
 8002506:	461a      	mov	r2, r3
 8002508:	4b4f      	ldr	r3, [pc, #316]	; (8002648 <UART_SetConfig+0x3b4>)
 800250a:	fba3 2302 	umull	r2, r3, r3, r2
 800250e:	095b      	lsrs	r3, r3, #5
 8002510:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8002514:	68fb      	ldr	r3, [r7, #12]
 8002516:	469b      	mov	fp, r3
 8002518:	f04f 0c00 	mov.w	ip, #0
 800251c:	46d9      	mov	r9, fp
 800251e:	46e2      	mov	sl, ip
 8002520:	eb19 0309 	adds.w	r3, r9, r9
 8002524:	eb4a 040a 	adc.w	r4, sl, sl
 8002528:	4699      	mov	r9, r3
 800252a:	46a2      	mov	sl, r4
 800252c:	eb19 090b 	adds.w	r9, r9, fp
 8002530:	eb4a 0a0c 	adc.w	sl, sl, ip
 8002534:	f04f 0100 	mov.w	r1, #0
 8002538:	f04f 0200 	mov.w	r2, #0
 800253c:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8002540:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8002544:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8002548:	4689      	mov	r9, r1
 800254a:	4692      	mov	sl, r2
 800254c:	eb1b 0509 	adds.w	r5, fp, r9
 8002550:	eb4c 060a 	adc.w	r6, ip, sl
 8002554:	687b      	ldr	r3, [r7, #4]
 8002556:	685b      	ldr	r3, [r3, #4]
 8002558:	4619      	mov	r1, r3
 800255a:	f04f 0200 	mov.w	r2, #0
 800255e:	f04f 0300 	mov.w	r3, #0
 8002562:	f04f 0400 	mov.w	r4, #0
 8002566:	0094      	lsls	r4, r2, #2
 8002568:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 800256c:	008b      	lsls	r3, r1, #2
 800256e:	461a      	mov	r2, r3
 8002570:	4623      	mov	r3, r4
 8002572:	4628      	mov	r0, r5
 8002574:	4631      	mov	r1, r6
 8002576:	f001 fa53 	bl	8003a20 <__aeabi_uldivmod>
 800257a:	4603      	mov	r3, r0
 800257c:	460c      	mov	r4, r1
 800257e:	461a      	mov	r2, r3
 8002580:	4b31      	ldr	r3, [pc, #196]	; (8002648 <UART_SetConfig+0x3b4>)
 8002582:	fba3 1302 	umull	r1, r3, r3, r2
 8002586:	095b      	lsrs	r3, r3, #5
 8002588:	2164      	movs	r1, #100	; 0x64
 800258a:	fb01 f303 	mul.w	r3, r1, r3
 800258e:	1ad3      	subs	r3, r2, r3
 8002590:	011b      	lsls	r3, r3, #4
 8002592:	3332      	adds	r3, #50	; 0x32
 8002594:	4a2c      	ldr	r2, [pc, #176]	; (8002648 <UART_SetConfig+0x3b4>)
 8002596:	fba2 2303 	umull	r2, r3, r2, r3
 800259a:	095b      	lsrs	r3, r3, #5
 800259c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80025a0:	4498      	add	r8, r3
 80025a2:	68fb      	ldr	r3, [r7, #12]
 80025a4:	469b      	mov	fp, r3
 80025a6:	f04f 0c00 	mov.w	ip, #0
 80025aa:	46d9      	mov	r9, fp
 80025ac:	46e2      	mov	sl, ip
 80025ae:	eb19 0309 	adds.w	r3, r9, r9
 80025b2:	eb4a 040a 	adc.w	r4, sl, sl
 80025b6:	4699      	mov	r9, r3
 80025b8:	46a2      	mov	sl, r4
 80025ba:	eb19 090b 	adds.w	r9, r9, fp
 80025be:	eb4a 0a0c 	adc.w	sl, sl, ip
 80025c2:	f04f 0100 	mov.w	r1, #0
 80025c6:	f04f 0200 	mov.w	r2, #0
 80025ca:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80025ce:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80025d2:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80025d6:	4689      	mov	r9, r1
 80025d8:	4692      	mov	sl, r2
 80025da:	eb1b 0509 	adds.w	r5, fp, r9
 80025de:	eb4c 060a 	adc.w	r6, ip, sl
 80025e2:	687b      	ldr	r3, [r7, #4]
 80025e4:	685b      	ldr	r3, [r3, #4]
 80025e6:	4619      	mov	r1, r3
 80025e8:	f04f 0200 	mov.w	r2, #0
 80025ec:	f04f 0300 	mov.w	r3, #0
 80025f0:	f04f 0400 	mov.w	r4, #0
 80025f4:	0094      	lsls	r4, r2, #2
 80025f6:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 80025fa:	008b      	lsls	r3, r1, #2
 80025fc:	461a      	mov	r2, r3
 80025fe:	4623      	mov	r3, r4
 8002600:	4628      	mov	r0, r5
 8002602:	4631      	mov	r1, r6
 8002604:	f001 fa0c 	bl	8003a20 <__aeabi_uldivmod>
 8002608:	4603      	mov	r3, r0
 800260a:	460c      	mov	r4, r1
 800260c:	461a      	mov	r2, r3
 800260e:	4b0e      	ldr	r3, [pc, #56]	; (8002648 <UART_SetConfig+0x3b4>)
 8002610:	fba3 1302 	umull	r1, r3, r3, r2
 8002614:	095b      	lsrs	r3, r3, #5
 8002616:	2164      	movs	r1, #100	; 0x64
 8002618:	fb01 f303 	mul.w	r3, r1, r3
 800261c:	1ad3      	subs	r3, r2, r3
 800261e:	011b      	lsls	r3, r3, #4
 8002620:	3332      	adds	r3, #50	; 0x32
 8002622:	4a09      	ldr	r2, [pc, #36]	; (8002648 <UART_SetConfig+0x3b4>)
 8002624:	fba2 2303 	umull	r2, r3, r2, r3
 8002628:	095b      	lsrs	r3, r3, #5
 800262a:	f003 020f 	and.w	r2, r3, #15
 800262e:	687b      	ldr	r3, [r7, #4]
 8002630:	681b      	ldr	r3, [r3, #0]
 8002632:	4442      	add	r2, r8
 8002634:	609a      	str	r2, [r3, #8]
}
 8002636:	bf00      	nop
 8002638:	3714      	adds	r7, #20
 800263a:	46bd      	mov	sp, r7
 800263c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002640:	40011000 	.word	0x40011000
 8002644:	40011400 	.word	0x40011400
 8002648:	51eb851f 	.word	0x51eb851f

0800264c <BSP_LED_Init>:
  * @param  Led: Specifies the Led to be configured. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_Init(Led_TypeDef Led)
{
 800264c:	b580      	push	{r7, lr}
 800264e:	b088      	sub	sp, #32
 8002650:	af00      	add	r7, sp, #0
 8002652:	4603      	mov	r3, r0
 8002654:	71fb      	strb	r3, [r7, #7]
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /* Enable the GPIO_LED Clock */
  LEDx_GPIO_CLK_ENABLE(Led);
 8002656:	2300      	movs	r3, #0
 8002658:	60bb      	str	r3, [r7, #8]
 800265a:	4b15      	ldr	r3, [pc, #84]	; (80026b0 <BSP_LED_Init+0x64>)
 800265c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800265e:	4a14      	ldr	r2, [pc, #80]	; (80026b0 <BSP_LED_Init+0x64>)
 8002660:	f043 0301 	orr.w	r3, r3, #1
 8002664:	6313      	str	r3, [r2, #48]	; 0x30
 8002666:	4b12      	ldr	r3, [pc, #72]	; (80026b0 <BSP_LED_Init+0x64>)
 8002668:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800266a:	f003 0301 	and.w	r3, r3, #1
 800266e:	60bb      	str	r3, [r7, #8]
 8002670:	68bb      	ldr	r3, [r7, #8]
  
  /* Configure the GPIO_LED pin */
  GPIO_InitStruct.Pin = GPIO_PIN[Led];
 8002672:	2320      	movs	r3, #32
 8002674:	60fb      	str	r3, [r7, #12]
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 8002676:	2301      	movs	r3, #1
 8002678:	613b      	str	r3, [r7, #16]
  GPIO_InitStruct.Pull = GPIO_NOPULL;
 800267a:	2300      	movs	r3, #0
 800267c:	617b      	str	r3, [r7, #20]
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
 800267e:	2302      	movs	r3, #2
 8002680:	61bb      	str	r3, [r7, #24]
  
  HAL_GPIO_Init(GPIO_PORT[Led], &GPIO_InitStruct);
 8002682:	79fb      	ldrb	r3, [r7, #7]
 8002684:	4a0b      	ldr	r2, [pc, #44]	; (80026b4 <BSP_LED_Init+0x68>)
 8002686:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800268a:	f107 020c 	add.w	r2, r7, #12
 800268e:	4611      	mov	r1, r2
 8002690:	4618      	mov	r0, r3
 8002692:	f7ff fa7f 	bl	8001b94 <HAL_GPIO_Init>
  
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_RESET); 
 8002696:	79fb      	ldrb	r3, [r7, #7]
 8002698:	4a06      	ldr	r2, [pc, #24]	; (80026b4 <BSP_LED_Init+0x68>)
 800269a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800269e:	2120      	movs	r1, #32
 80026a0:	2200      	movs	r2, #0
 80026a2:	4618      	mov	r0, r3
 80026a4:	f7ff fbf8 	bl	8001e98 <HAL_GPIO_WritePin>
}
 80026a8:	bf00      	nop
 80026aa:	3720      	adds	r7, #32
 80026ac:	46bd      	mov	sp, r7
 80026ae:	bd80      	pop	{r7, pc}
 80026b0:	40023800 	.word	0x40023800
 80026b4:	2000000c 	.word	0x2000000c

080026b8 <BSP_LED_On>:
  * @param  Led: Specifies the Led to be set on. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_On(Led_TypeDef Led)
{
 80026b8:	b580      	push	{r7, lr}
 80026ba:	b082      	sub	sp, #8
 80026bc:	af00      	add	r7, sp, #0
 80026be:	4603      	mov	r3, r0
 80026c0:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_SET); 
 80026c2:	79fb      	ldrb	r3, [r7, #7]
 80026c4:	4a05      	ldr	r2, [pc, #20]	; (80026dc <BSP_LED_On+0x24>)
 80026c6:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80026ca:	2120      	movs	r1, #32
 80026cc:	2201      	movs	r2, #1
 80026ce:	4618      	mov	r0, r3
 80026d0:	f7ff fbe2 	bl	8001e98 <HAL_GPIO_WritePin>
}
 80026d4:	bf00      	nop
 80026d6:	3708      	adds	r7, #8
 80026d8:	46bd      	mov	sp, r7
 80026da:	bd80      	pop	{r7, pc}
 80026dc:	2000000c 	.word	0x2000000c

080026e0 <BSP_LED_Toggle>:
  * @param  Led: Specifies the Led to be toggled. 
  *   This parameter can be one of following parameters:
  *     @arg LED2  
  */
void BSP_LED_Toggle(Led_TypeDef Led)
{
 80026e0:	b580      	push	{r7, lr}
 80026e2:	b082      	sub	sp, #8
 80026e4:	af00      	add	r7, sp, #0
 80026e6:	4603      	mov	r3, r0
 80026e8:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_TogglePin(GPIO_PORT[Led], GPIO_PIN[Led]);
 80026ea:	79fb      	ldrb	r3, [r7, #7]
 80026ec:	4a05      	ldr	r2, [pc, #20]	; (8002704 <BSP_LED_Toggle+0x24>)
 80026ee:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80026f2:	2220      	movs	r2, #32
 80026f4:	4611      	mov	r1, r2
 80026f6:	4618      	mov	r0, r3
 80026f8:	f7ff fbe7 	bl	8001eca <HAL_GPIO_TogglePin>
}
 80026fc:	bf00      	nop
 80026fe:	3708      	adds	r7, #8
 8002700:	46bd      	mov	sp, r7
 8002702:	bd80      	pop	{r7, pc}
 8002704:	2000000c 	.word	0x2000000c

08002708 <_putchar>:

#else
extern int __io_putchar(int ch);
extern int __io_getchar(void);
void _putchar(const char ch)
{
 8002708:	b580      	push	{r7, lr}
 800270a:	b082      	sub	sp, #8
 800270c:	af00      	add	r7, sp, #0
 800270e:	4603      	mov	r3, r0
 8002710:	71fb      	strb	r3, [r7, #7]
    __io_putchar(ch);
 8002712:	79fb      	ldrb	r3, [r7, #7]
 8002714:	4618      	mov	r0, r3
 8002716:	f7fd fe2b 	bl	8000370 <__io_putchar>
}
 800271a:	bf00      	nop
 800271c:	3708      	adds	r7, #8
 800271e:	46bd      	mov	sp, r7
 8002720:	bd80      	pop	{r7, pc}

08002722 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
 8002722:	b480      	push	{r7}
 8002724:	b085      	sub	sp, #20
 8002726:	af00      	add	r7, sp, #0
 8002728:	60b9      	str	r1, [r7, #8]
 800272a:	607a      	str	r2, [r7, #4]
 800272c:	603b      	str	r3, [r7, #0]
 800272e:	4603      	mov	r3, r0
 8002730:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
 8002732:	687a      	ldr	r2, [r7, #4]
 8002734:	683b      	ldr	r3, [r7, #0]
 8002736:	429a      	cmp	r2, r3
 8002738:	d204      	bcs.n	8002744 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
 800273a:	68ba      	ldr	r2, [r7, #8]
 800273c:	687b      	ldr	r3, [r7, #4]
 800273e:	4413      	add	r3, r2
 8002740:	7bfa      	ldrb	r2, [r7, #15]
 8002742:	701a      	strb	r2, [r3, #0]
  }
}
 8002744:	bf00      	nop
 8002746:	3714      	adds	r7, #20
 8002748:	46bd      	mov	sp, r7
 800274a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800274e:	4770      	bx	lr

08002750 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
 8002750:	b480      	push	{r7}
 8002752:	b085      	sub	sp, #20
 8002754:	af00      	add	r7, sp, #0
 8002756:	60b9      	str	r1, [r7, #8]
 8002758:	607a      	str	r2, [r7, #4]
 800275a:	603b      	str	r3, [r7, #0]
 800275c:	4603      	mov	r3, r0
 800275e:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
 8002760:	bf00      	nop
 8002762:	3714      	adds	r7, #20
 8002764:	46bd      	mov	sp, r7
 8002766:	f85d 7b04 	ldr.w	r7, [sp], #4
 800276a:	4770      	bx	lr

0800276c <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
 800276c:	b580      	push	{r7, lr}
 800276e:	b084      	sub	sp, #16
 8002770:	af00      	add	r7, sp, #0
 8002772:	60b9      	str	r1, [r7, #8]
 8002774:	607a      	str	r2, [r7, #4]
 8002776:	603b      	str	r3, [r7, #0]
 8002778:	4603      	mov	r3, r0
 800277a:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
 800277c:	7bfb      	ldrb	r3, [r7, #15]
 800277e:	2b00      	cmp	r3, #0
 8002780:	d003      	beq.n	800278a <_out_char+0x1e>
    _putchar(character);
 8002782:	7bfb      	ldrb	r3, [r7, #15]
 8002784:	4618      	mov	r0, r3
 8002786:	f7ff ffbf 	bl	8002708 <_putchar>
  }
}
 800278a:	bf00      	nop
 800278c:	3710      	adds	r7, #16
 800278e:	46bd      	mov	sp, r7
 8002790:	bd80      	pop	{r7, pc}

08002792 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
 8002792:	b480      	push	{r7}
 8002794:	b085      	sub	sp, #20
 8002796:	af00      	add	r7, sp, #0
 8002798:	6078      	str	r0, [r7, #4]
 800279a:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
 800279c:	687b      	ldr	r3, [r7, #4]
 800279e:	60fb      	str	r3, [r7, #12]
 80027a0:	e002      	b.n	80027a8 <_strnlen_s+0x16>
 80027a2:	68fb      	ldr	r3, [r7, #12]
 80027a4:	3301      	adds	r3, #1
 80027a6:	60fb      	str	r3, [r7, #12]
 80027a8:	68fb      	ldr	r3, [r7, #12]
 80027aa:	781b      	ldrb	r3, [r3, #0]
 80027ac:	2b00      	cmp	r3, #0
 80027ae:	d004      	beq.n	80027ba <_strnlen_s+0x28>
 80027b0:	683b      	ldr	r3, [r7, #0]
 80027b2:	1e5a      	subs	r2, r3, #1
 80027b4:	603a      	str	r2, [r7, #0]
 80027b6:	2b00      	cmp	r3, #0
 80027b8:	d1f3      	bne.n	80027a2 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
 80027ba:	68fa      	ldr	r2, [r7, #12]
 80027bc:	687b      	ldr	r3, [r7, #4]
 80027be:	1ad3      	subs	r3, r2, r3
}
 80027c0:	4618      	mov	r0, r3
 80027c2:	3714      	adds	r7, #20
 80027c4:	46bd      	mov	sp, r7
 80027c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027ca:	4770      	bx	lr

080027cc <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
 80027cc:	b480      	push	{r7}
 80027ce:	b083      	sub	sp, #12
 80027d0:	af00      	add	r7, sp, #0
 80027d2:	4603      	mov	r3, r0
 80027d4:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
 80027d6:	79fb      	ldrb	r3, [r7, #7]
 80027d8:	2b2f      	cmp	r3, #47	; 0x2f
 80027da:	d904      	bls.n	80027e6 <_is_digit+0x1a>
 80027dc:	79fb      	ldrb	r3, [r7, #7]
 80027de:	2b39      	cmp	r3, #57	; 0x39
 80027e0:	d801      	bhi.n	80027e6 <_is_digit+0x1a>
 80027e2:	2301      	movs	r3, #1
 80027e4:	e000      	b.n	80027e8 <_is_digit+0x1c>
 80027e6:	2300      	movs	r3, #0
 80027e8:	f003 0301 	and.w	r3, r3, #1
 80027ec:	b2db      	uxtb	r3, r3
}
 80027ee:	4618      	mov	r0, r3
 80027f0:	370c      	adds	r7, #12
 80027f2:	46bd      	mov	sp, r7
 80027f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80027f8:	4770      	bx	lr

080027fa <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
 80027fa:	b580      	push	{r7, lr}
 80027fc:	b084      	sub	sp, #16
 80027fe:	af00      	add	r7, sp, #0
 8002800:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
 8002802:	2300      	movs	r3, #0
 8002804:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8002806:	e00e      	b.n	8002826 <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
 8002808:	68fa      	ldr	r2, [r7, #12]
 800280a:	4613      	mov	r3, r2
 800280c:	009b      	lsls	r3, r3, #2
 800280e:	4413      	add	r3, r2
 8002810:	005b      	lsls	r3, r3, #1
 8002812:	4618      	mov	r0, r3
 8002814:	687b      	ldr	r3, [r7, #4]
 8002816:	681b      	ldr	r3, [r3, #0]
 8002818:	1c59      	adds	r1, r3, #1
 800281a:	687a      	ldr	r2, [r7, #4]
 800281c:	6011      	str	r1, [r2, #0]
 800281e:	781b      	ldrb	r3, [r3, #0]
 8002820:	4403      	add	r3, r0
 8002822:	3b30      	subs	r3, #48	; 0x30
 8002824:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8002826:	687b      	ldr	r3, [r7, #4]
 8002828:	681b      	ldr	r3, [r3, #0]
 800282a:	781b      	ldrb	r3, [r3, #0]
 800282c:	4618      	mov	r0, r3
 800282e:	f7ff ffcd 	bl	80027cc <_is_digit>
 8002832:	4603      	mov	r3, r0
 8002834:	2b00      	cmp	r3, #0
 8002836:	d1e7      	bne.n	8002808 <_atoi+0xe>
  }
  return i;
 8002838:	68fb      	ldr	r3, [r7, #12]
}
 800283a:	4618      	mov	r0, r3
 800283c:	3710      	adds	r7, #16
 800283e:	46bd      	mov	sp, r7
 8002840:	bd80      	pop	{r7, pc}

08002842 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
 8002842:	b590      	push	{r4, r7, lr}
 8002844:	b087      	sub	sp, #28
 8002846:	af00      	add	r7, sp, #0
 8002848:	60f8      	str	r0, [r7, #12]
 800284a:	60b9      	str	r1, [r7, #8]
 800284c:	607a      	str	r2, [r7, #4]
 800284e:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
 8002850:	687b      	ldr	r3, [r7, #4]
 8002852:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
 8002854:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002856:	f003 0302 	and.w	r3, r3, #2
 800285a:	2b00      	cmp	r3, #0
 800285c:	d125      	bne.n	80028aa <_out_rev+0x68>
 800285e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002860:	f003 0301 	and.w	r3, r3, #1
 8002864:	2b00      	cmp	r3, #0
 8002866:	d120      	bne.n	80028aa <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
 8002868:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800286a:	617b      	str	r3, [r7, #20]
 800286c:	e00a      	b.n	8002884 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
 800286e:	687a      	ldr	r2, [r7, #4]
 8002870:	1c53      	adds	r3, r2, #1
 8002872:	607b      	str	r3, [r7, #4]
 8002874:	68fc      	ldr	r4, [r7, #12]
 8002876:	683b      	ldr	r3, [r7, #0]
 8002878:	68b9      	ldr	r1, [r7, #8]
 800287a:	2020      	movs	r0, #32
 800287c:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
 800287e:	697b      	ldr	r3, [r7, #20]
 8002880:	3301      	adds	r3, #1
 8002882:	617b      	str	r3, [r7, #20]
 8002884:	697a      	ldr	r2, [r7, #20]
 8002886:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002888:	429a      	cmp	r2, r3
 800288a:	d3f0      	bcc.n	800286e <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
 800288c:	e00d      	b.n	80028aa <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
 800288e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002890:	3b01      	subs	r3, #1
 8002892:	62fb      	str	r3, [r7, #44]	; 0x2c
 8002894:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8002896:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002898:	4413      	add	r3, r2
 800289a:	7818      	ldrb	r0, [r3, #0]
 800289c:	687a      	ldr	r2, [r7, #4]
 800289e:	1c53      	adds	r3, r2, #1
 80028a0:	607b      	str	r3, [r7, #4]
 80028a2:	68fc      	ldr	r4, [r7, #12]
 80028a4:	683b      	ldr	r3, [r7, #0]
 80028a6:	68b9      	ldr	r1, [r7, #8]
 80028a8:	47a0      	blx	r4
  while (len) {
 80028aa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80028ac:	2b00      	cmp	r3, #0
 80028ae:	d1ee      	bne.n	800288e <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
 80028b0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 80028b2:	f003 0302 	and.w	r3, r3, #2
 80028b6:	2b00      	cmp	r3, #0
 80028b8:	d00e      	beq.n	80028d8 <_out_rev+0x96>
    while (idx - start_idx < width) {
 80028ba:	e007      	b.n	80028cc <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
 80028bc:	687a      	ldr	r2, [r7, #4]
 80028be:	1c53      	adds	r3, r2, #1
 80028c0:	607b      	str	r3, [r7, #4]
 80028c2:	68fc      	ldr	r4, [r7, #12]
 80028c4:	683b      	ldr	r3, [r7, #0]
 80028c6:	68b9      	ldr	r1, [r7, #8]
 80028c8:	2020      	movs	r0, #32
 80028ca:	47a0      	blx	r4
    while (idx - start_idx < width) {
 80028cc:	687a      	ldr	r2, [r7, #4]
 80028ce:	693b      	ldr	r3, [r7, #16]
 80028d0:	1ad3      	subs	r3, r2, r3
 80028d2:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80028d4:	429a      	cmp	r2, r3
 80028d6:	d8f1      	bhi.n	80028bc <_out_rev+0x7a>
    }
  }

  return idx;
 80028d8:	687b      	ldr	r3, [r7, #4]
}
 80028da:	4618      	mov	r0, r3
 80028dc:	371c      	adds	r7, #28
 80028de:	46bd      	mov	sp, r7
 80028e0:	bd90      	pop	{r4, r7, pc}

080028e2 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
 80028e2:	b580      	push	{r7, lr}
 80028e4:	b088      	sub	sp, #32
 80028e6:	af04      	add	r7, sp, #16
 80028e8:	60f8      	str	r0, [r7, #12]
 80028ea:	60b9      	str	r1, [r7, #8]
 80028ec:	607a      	str	r2, [r7, #4]
 80028ee:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
 80028f0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80028f2:	f003 0302 	and.w	r3, r3, #2
 80028f6:	2b00      	cmp	r3, #0
 80028f8:	d136      	bne.n	8002968 <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
 80028fa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80028fc:	2b00      	cmp	r3, #0
 80028fe:	d018      	beq.n	8002932 <_ntoa_format+0x50>
 8002900:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002902:	f003 0301 	and.w	r3, r3, #1
 8002906:	2b00      	cmp	r3, #0
 8002908:	d013      	beq.n	8002932 <_ntoa_format+0x50>
 800290a:	f897 3020 	ldrb.w	r3, [r7, #32]
 800290e:	2b00      	cmp	r3, #0
 8002910:	d104      	bne.n	800291c <_ntoa_format+0x3a>
 8002912:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002914:	f003 030c 	and.w	r3, r3, #12
 8002918:	2b00      	cmp	r3, #0
 800291a:	d00a      	beq.n	8002932 <_ntoa_format+0x50>
      width--;
 800291c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800291e:	3b01      	subs	r3, #1
 8002920:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8002922:	e006      	b.n	8002932 <_ntoa_format+0x50>
      buf[len++] = '0';
 8002924:	69fb      	ldr	r3, [r7, #28]
 8002926:	1c5a      	adds	r2, r3, #1
 8002928:	61fa      	str	r2, [r7, #28]
 800292a:	69ba      	ldr	r2, [r7, #24]
 800292c:	4413      	add	r3, r2
 800292e:	2230      	movs	r2, #48	; 0x30
 8002930:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8002932:	69fa      	ldr	r2, [r7, #28]
 8002934:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002936:	429a      	cmp	r2, r3
 8002938:	d20a      	bcs.n	8002950 <_ntoa_format+0x6e>
 800293a:	69fb      	ldr	r3, [r7, #28]
 800293c:	2b1f      	cmp	r3, #31
 800293e:	d9f1      	bls.n	8002924 <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8002940:	e006      	b.n	8002950 <_ntoa_format+0x6e>
      buf[len++] = '0';
 8002942:	69fb      	ldr	r3, [r7, #28]
 8002944:	1c5a      	adds	r2, r3, #1
 8002946:	61fa      	str	r2, [r7, #28]
 8002948:	69ba      	ldr	r2, [r7, #24]
 800294a:	4413      	add	r3, r2
 800294c:	2230      	movs	r2, #48	; 0x30
 800294e:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8002950:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002952:	f003 0301 	and.w	r3, r3, #1
 8002956:	2b00      	cmp	r3, #0
 8002958:	d006      	beq.n	8002968 <_ntoa_format+0x86>
 800295a:	69fa      	ldr	r2, [r7, #28]
 800295c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800295e:	429a      	cmp	r2, r3
 8002960:	d202      	bcs.n	8002968 <_ntoa_format+0x86>
 8002962:	69fb      	ldr	r3, [r7, #28]
 8002964:	2b1f      	cmp	r3, #31
 8002966:	d9ec      	bls.n	8002942 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
 8002968:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 800296a:	f003 0310 	and.w	r3, r3, #16
 800296e:	2b00      	cmp	r3, #0
 8002970:	d058      	beq.n	8002a24 <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
 8002972:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002974:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002978:	2b00      	cmp	r3, #0
 800297a:	d116      	bne.n	80029aa <_ntoa_format+0xc8>
 800297c:	69fb      	ldr	r3, [r7, #28]
 800297e:	2b00      	cmp	r3, #0
 8002980:	d013      	beq.n	80029aa <_ntoa_format+0xc8>
 8002982:	69fa      	ldr	r2, [r7, #28]
 8002984:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002986:	429a      	cmp	r2, r3
 8002988:	d003      	beq.n	8002992 <_ntoa_format+0xb0>
 800298a:	69fa      	ldr	r2, [r7, #28]
 800298c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800298e:	429a      	cmp	r2, r3
 8002990:	d10b      	bne.n	80029aa <_ntoa_format+0xc8>
      len--;
 8002992:	69fb      	ldr	r3, [r7, #28]
 8002994:	3b01      	subs	r3, #1
 8002996:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
 8002998:	69fb      	ldr	r3, [r7, #28]
 800299a:	2b00      	cmp	r3, #0
 800299c:	d005      	beq.n	80029aa <_ntoa_format+0xc8>
 800299e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80029a0:	2b10      	cmp	r3, #16
 80029a2:	d102      	bne.n	80029aa <_ntoa_format+0xc8>
        len--;
 80029a4:	69fb      	ldr	r3, [r7, #28]
 80029a6:	3b01      	subs	r3, #1
 80029a8:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80029aa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80029ac:	2b10      	cmp	r3, #16
 80029ae:	d10f      	bne.n	80029d0 <_ntoa_format+0xee>
 80029b0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80029b2:	f003 0320 	and.w	r3, r3, #32
 80029b6:	2b00      	cmp	r3, #0
 80029b8:	d10a      	bne.n	80029d0 <_ntoa_format+0xee>
 80029ba:	69fb      	ldr	r3, [r7, #28]
 80029bc:	2b1f      	cmp	r3, #31
 80029be:	d807      	bhi.n	80029d0 <_ntoa_format+0xee>
      buf[len++] = 'x';
 80029c0:	69fb      	ldr	r3, [r7, #28]
 80029c2:	1c5a      	adds	r2, r3, #1
 80029c4:	61fa      	str	r2, [r7, #28]
 80029c6:	69ba      	ldr	r2, [r7, #24]
 80029c8:	4413      	add	r3, r2
 80029ca:	2278      	movs	r2, #120	; 0x78
 80029cc:	701a      	strb	r2, [r3, #0]
 80029ce:	e01f      	b.n	8002a10 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80029d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80029d2:	2b10      	cmp	r3, #16
 80029d4:	d10f      	bne.n	80029f6 <_ntoa_format+0x114>
 80029d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80029d8:	f003 0320 	and.w	r3, r3, #32
 80029dc:	2b00      	cmp	r3, #0
 80029de:	d00a      	beq.n	80029f6 <_ntoa_format+0x114>
 80029e0:	69fb      	ldr	r3, [r7, #28]
 80029e2:	2b1f      	cmp	r3, #31
 80029e4:	d807      	bhi.n	80029f6 <_ntoa_format+0x114>
      buf[len++] = 'X';
 80029e6:	69fb      	ldr	r3, [r7, #28]
 80029e8:	1c5a      	adds	r2, r3, #1
 80029ea:	61fa      	str	r2, [r7, #28]
 80029ec:	69ba      	ldr	r2, [r7, #24]
 80029ee:	4413      	add	r3, r2
 80029f0:	2258      	movs	r2, #88	; 0x58
 80029f2:	701a      	strb	r2, [r3, #0]
 80029f4:	e00c      	b.n	8002a10 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 80029f6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80029f8:	2b02      	cmp	r3, #2
 80029fa:	d109      	bne.n	8002a10 <_ntoa_format+0x12e>
 80029fc:	69fb      	ldr	r3, [r7, #28]
 80029fe:	2b1f      	cmp	r3, #31
 8002a00:	d806      	bhi.n	8002a10 <_ntoa_format+0x12e>
      buf[len++] = 'b';
 8002a02:	69fb      	ldr	r3, [r7, #28]
 8002a04:	1c5a      	adds	r2, r3, #1
 8002a06:	61fa      	str	r2, [r7, #28]
 8002a08:	69ba      	ldr	r2, [r7, #24]
 8002a0a:	4413      	add	r3, r2
 8002a0c:	2262      	movs	r2, #98	; 0x62
 8002a0e:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8002a10:	69fb      	ldr	r3, [r7, #28]
 8002a12:	2b1f      	cmp	r3, #31
 8002a14:	d806      	bhi.n	8002a24 <_ntoa_format+0x142>
      buf[len++] = '0';
 8002a16:	69fb      	ldr	r3, [r7, #28]
 8002a18:	1c5a      	adds	r2, r3, #1
 8002a1a:	61fa      	str	r2, [r7, #28]
 8002a1c:	69ba      	ldr	r2, [r7, #24]
 8002a1e:	4413      	add	r3, r2
 8002a20:	2230      	movs	r2, #48	; 0x30
 8002a22:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8002a24:	69fb      	ldr	r3, [r7, #28]
 8002a26:	2b1f      	cmp	r3, #31
 8002a28:	d824      	bhi.n	8002a74 <_ntoa_format+0x192>
    if (negative) {
 8002a2a:	f897 3020 	ldrb.w	r3, [r7, #32]
 8002a2e:	2b00      	cmp	r3, #0
 8002a30:	d007      	beq.n	8002a42 <_ntoa_format+0x160>
      buf[len++] = '-';
 8002a32:	69fb      	ldr	r3, [r7, #28]
 8002a34:	1c5a      	adds	r2, r3, #1
 8002a36:	61fa      	str	r2, [r7, #28]
 8002a38:	69ba      	ldr	r2, [r7, #24]
 8002a3a:	4413      	add	r3, r2
 8002a3c:	222d      	movs	r2, #45	; 0x2d
 8002a3e:	701a      	strb	r2, [r3, #0]
 8002a40:	e018      	b.n	8002a74 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
 8002a42:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002a44:	f003 0304 	and.w	r3, r3, #4
 8002a48:	2b00      	cmp	r3, #0
 8002a4a:	d007      	beq.n	8002a5c <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
 8002a4c:	69fb      	ldr	r3, [r7, #28]
 8002a4e:	1c5a      	adds	r2, r3, #1
 8002a50:	61fa      	str	r2, [r7, #28]
 8002a52:	69ba      	ldr	r2, [r7, #24]
 8002a54:	4413      	add	r3, r2
 8002a56:	222b      	movs	r2, #43	; 0x2b
 8002a58:	701a      	strb	r2, [r3, #0]
 8002a5a:	e00b      	b.n	8002a74 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
 8002a5c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002a5e:	f003 0308 	and.w	r3, r3, #8
 8002a62:	2b00      	cmp	r3, #0
 8002a64:	d006      	beq.n	8002a74 <_ntoa_format+0x192>
      buf[len++] = ' ';
 8002a66:	69fb      	ldr	r3, [r7, #28]
 8002a68:	1c5a      	adds	r2, r3, #1
 8002a6a:	61fa      	str	r2, [r7, #28]
 8002a6c:	69ba      	ldr	r2, [r7, #24]
 8002a6e:	4413      	add	r3, r2
 8002a70:	2220      	movs	r2, #32
 8002a72:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
 8002a74:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002a76:	9303      	str	r3, [sp, #12]
 8002a78:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8002a7a:	9302      	str	r3, [sp, #8]
 8002a7c:	69fb      	ldr	r3, [r7, #28]
 8002a7e:	9301      	str	r3, [sp, #4]
 8002a80:	69bb      	ldr	r3, [r7, #24]
 8002a82:	9300      	str	r3, [sp, #0]
 8002a84:	683b      	ldr	r3, [r7, #0]
 8002a86:	687a      	ldr	r2, [r7, #4]
 8002a88:	68b9      	ldr	r1, [r7, #8]
 8002a8a:	68f8      	ldr	r0, [r7, #12]
 8002a8c:	f7ff fed9 	bl	8002842 <_out_rev>
 8002a90:	4603      	mov	r3, r0
}
 8002a92:	4618      	mov	r0, r3
 8002a94:	3710      	adds	r7, #16
 8002a96:	46bd      	mov	sp, r7
 8002a98:	bd80      	pop	{r7, pc}

08002a9a <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8002a9a:	b580      	push	{r7, lr}
 8002a9c:	b096      	sub	sp, #88	; 0x58
 8002a9e:	af08      	add	r7, sp, #32
 8002aa0:	60f8      	str	r0, [r7, #12]
 8002aa2:	60b9      	str	r1, [r7, #8]
 8002aa4:	607a      	str	r2, [r7, #4]
 8002aa6:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
 8002aa8:	2300      	movs	r3, #0
 8002aaa:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
 8002aac:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002aae:	2b00      	cmp	r3, #0
 8002ab0:	d103      	bne.n	8002aba <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
 8002ab2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002ab4:	f023 0310 	bic.w	r3, r3, #16
 8002ab8:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
 8002aba:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002abc:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002ac0:	2b00      	cmp	r3, #0
 8002ac2:	d002      	beq.n	8002aca <_ntoa_long+0x30>
 8002ac4:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002ac6:	2b00      	cmp	r3, #0
 8002ac8:	d033      	beq.n	8002b32 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
 8002aca:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002acc:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8002ace:	fbb3 f2f2 	udiv	r2, r3, r2
 8002ad2:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8002ad4:	fb01 f202 	mul.w	r2, r1, r2
 8002ad8:	1a9b      	subs	r3, r3, r2
 8002ada:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
 8002ade:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8002ae2:	2b09      	cmp	r3, #9
 8002ae4:	d804      	bhi.n	8002af0 <_ntoa_long+0x56>
 8002ae6:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8002aea:	3330      	adds	r3, #48	; 0x30
 8002aec:	b2da      	uxtb	r2, r3
 8002aee:	e00d      	b.n	8002b0c <_ntoa_long+0x72>
 8002af0:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002af2:	f003 0320 	and.w	r3, r3, #32
 8002af6:	2b00      	cmp	r3, #0
 8002af8:	d001      	beq.n	8002afe <_ntoa_long+0x64>
 8002afa:	2241      	movs	r2, #65	; 0x41
 8002afc:	e000      	b.n	8002b00 <_ntoa_long+0x66>
 8002afe:	2261      	movs	r2, #97	; 0x61
 8002b00:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8002b04:	4413      	add	r3, r2
 8002b06:	b2db      	uxtb	r3, r3
 8002b08:	3b0a      	subs	r3, #10
 8002b0a:	b2da      	uxtb	r2, r3
 8002b0c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002b0e:	1c59      	adds	r1, r3, #1
 8002b10:	6379      	str	r1, [r7, #52]	; 0x34
 8002b12:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8002b16:	440b      	add	r3, r1
 8002b18:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
 8002b1c:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002b1e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8002b20:	fbb2 f3f3 	udiv	r3, r2, r3
 8002b24:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
 8002b26:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002b28:	2b00      	cmp	r3, #0
 8002b2a:	d002      	beq.n	8002b32 <_ntoa_long+0x98>
 8002b2c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002b2e:	2b1f      	cmp	r3, #31
 8002b30:	d9cb      	bls.n	8002aca <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
 8002b32:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8002b34:	9306      	str	r3, [sp, #24]
 8002b36:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8002b38:	9305      	str	r3, [sp, #20]
 8002b3a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8002b3c:	9304      	str	r3, [sp, #16]
 8002b3e:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8002b40:	9303      	str	r3, [sp, #12]
 8002b42:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
 8002b46:	9302      	str	r3, [sp, #8]
 8002b48:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8002b4a:	9301      	str	r3, [sp, #4]
 8002b4c:	f107 0310 	add.w	r3, r7, #16
 8002b50:	9300      	str	r3, [sp, #0]
 8002b52:	683b      	ldr	r3, [r7, #0]
 8002b54:	687a      	ldr	r2, [r7, #4]
 8002b56:	68b9      	ldr	r1, [r7, #8]
 8002b58:	68f8      	ldr	r0, [r7, #12]
 8002b5a:	f7ff fec2 	bl	80028e2 <_ntoa_format>
 8002b5e:	4603      	mov	r3, r0
}
 8002b60:	4618      	mov	r0, r3
 8002b62:	3738      	adds	r7, #56	; 0x38
 8002b64:	46bd      	mov	sp, r7
 8002b66:	bd80      	pop	{r7, pc}

08002b68 <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
 8002b68:	b590      	push	{r4, r7, lr}
 8002b6a:	b099      	sub	sp, #100	; 0x64
 8002b6c:	af06      	add	r7, sp, #24
 8002b6e:	60f8      	str	r0, [r7, #12]
 8002b70:	60b9      	str	r1, [r7, #8]
 8002b72:	607a      	str	r2, [r7, #4]
 8002b74:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
 8002b76:	2300      	movs	r3, #0
 8002b78:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
 8002b7a:	68bb      	ldr	r3, [r7, #8]
 8002b7c:	2b00      	cmp	r3, #0
 8002b7e:	f040 83bf 	bne.w	8003300 <_vsnprintf+0x798>
    // use null output function
    out = _out_null;
 8002b82:	4b9f      	ldr	r3, [pc, #636]	; (8002e00 <_vsnprintf+0x298>)
 8002b84:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
 8002b86:	e3bb      	b.n	8003300 <_vsnprintf+0x798>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
 8002b88:	683b      	ldr	r3, [r7, #0]
 8002b8a:	781b      	ldrb	r3, [r3, #0]
 8002b8c:	2b25      	cmp	r3, #37	; 0x25
 8002b8e:	d00c      	beq.n	8002baa <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
 8002b90:	683b      	ldr	r3, [r7, #0]
 8002b92:	7818      	ldrb	r0, [r3, #0]
 8002b94:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002b96:	1c53      	adds	r3, r2, #1
 8002b98:	637b      	str	r3, [r7, #52]	; 0x34
 8002b9a:	68fc      	ldr	r4, [r7, #12]
 8002b9c:	687b      	ldr	r3, [r7, #4]
 8002b9e:	68b9      	ldr	r1, [r7, #8]
 8002ba0:	47a0      	blx	r4
      format++;
 8002ba2:	683b      	ldr	r3, [r7, #0]
 8002ba4:	3301      	adds	r3, #1
 8002ba6:	603b      	str	r3, [r7, #0]
      continue;
 8002ba8:	e3aa      	b.n	8003300 <_vsnprintf+0x798>
    }
    else {
      // yes, evaluate it
      format++;
 8002baa:	683b      	ldr	r3, [r7, #0]
 8002bac:	3301      	adds	r3, #1
 8002bae:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
 8002bb0:	2300      	movs	r3, #0
 8002bb2:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
 8002bb4:	683b      	ldr	r3, [r7, #0]
 8002bb6:	781b      	ldrb	r3, [r3, #0]
 8002bb8:	3b20      	subs	r3, #32
 8002bba:	2b10      	cmp	r3, #16
 8002bbc:	d856      	bhi.n	8002c6c <_vsnprintf+0x104>
 8002bbe:	a201      	add	r2, pc, #4	; (adr r2, 8002bc4 <_vsnprintf+0x5c>)
 8002bc0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002bc4:	08002c45 	.word	0x08002c45
 8002bc8:	08002c6d 	.word	0x08002c6d
 8002bcc:	08002c6d 	.word	0x08002c6d
 8002bd0:	08002c59 	.word	0x08002c59
 8002bd4:	08002c6d 	.word	0x08002c6d
 8002bd8:	08002c6d 	.word	0x08002c6d
 8002bdc:	08002c6d 	.word	0x08002c6d
 8002be0:	08002c6d 	.word	0x08002c6d
 8002be4:	08002c6d 	.word	0x08002c6d
 8002be8:	08002c6d 	.word	0x08002c6d
 8002bec:	08002c6d 	.word	0x08002c6d
 8002bf0:	08002c31 	.word	0x08002c31
 8002bf4:	08002c6d 	.word	0x08002c6d
 8002bf8:	08002c1d 	.word	0x08002c1d
 8002bfc:	08002c6d 	.word	0x08002c6d
 8002c00:	08002c6d 	.word	0x08002c6d
 8002c04:	08002c09 	.word	0x08002c09
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
 8002c08:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c0a:	f043 0301 	orr.w	r3, r3, #1
 8002c0e:	647b      	str	r3, [r7, #68]	; 0x44
 8002c10:	683b      	ldr	r3, [r7, #0]
 8002c12:	3301      	adds	r3, #1
 8002c14:	603b      	str	r3, [r7, #0]
 8002c16:	2301      	movs	r3, #1
 8002c18:	63bb      	str	r3, [r7, #56]	; 0x38
 8002c1a:	e02a      	b.n	8002c72 <_vsnprintf+0x10a>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
 8002c1c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c1e:	f043 0302 	orr.w	r3, r3, #2
 8002c22:	647b      	str	r3, [r7, #68]	; 0x44
 8002c24:	683b      	ldr	r3, [r7, #0]
 8002c26:	3301      	adds	r3, #1
 8002c28:	603b      	str	r3, [r7, #0]
 8002c2a:	2301      	movs	r3, #1
 8002c2c:	63bb      	str	r3, [r7, #56]	; 0x38
 8002c2e:	e020      	b.n	8002c72 <_vsnprintf+0x10a>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
 8002c30:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c32:	f043 0304 	orr.w	r3, r3, #4
 8002c36:	647b      	str	r3, [r7, #68]	; 0x44
 8002c38:	683b      	ldr	r3, [r7, #0]
 8002c3a:	3301      	adds	r3, #1
 8002c3c:	603b      	str	r3, [r7, #0]
 8002c3e:	2301      	movs	r3, #1
 8002c40:	63bb      	str	r3, [r7, #56]	; 0x38
 8002c42:	e016      	b.n	8002c72 <_vsnprintf+0x10a>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
 8002c44:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c46:	f043 0308 	orr.w	r3, r3, #8
 8002c4a:	647b      	str	r3, [r7, #68]	; 0x44
 8002c4c:	683b      	ldr	r3, [r7, #0]
 8002c4e:	3301      	adds	r3, #1
 8002c50:	603b      	str	r3, [r7, #0]
 8002c52:	2301      	movs	r3, #1
 8002c54:	63bb      	str	r3, [r7, #56]	; 0x38
 8002c56:	e00c      	b.n	8002c72 <_vsnprintf+0x10a>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
 8002c58:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002c5a:	f043 0310 	orr.w	r3, r3, #16
 8002c5e:	647b      	str	r3, [r7, #68]	; 0x44
 8002c60:	683b      	ldr	r3, [r7, #0]
 8002c62:	3301      	adds	r3, #1
 8002c64:	603b      	str	r3, [r7, #0]
 8002c66:	2301      	movs	r3, #1
 8002c68:	63bb      	str	r3, [r7, #56]	; 0x38
 8002c6a:	e002      	b.n	8002c72 <_vsnprintf+0x10a>
        default :                                   n = 0U; break;
 8002c6c:	2300      	movs	r3, #0
 8002c6e:	63bb      	str	r3, [r7, #56]	; 0x38
 8002c70:	bf00      	nop
      }
    } while (n);
 8002c72:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8002c74:	2b00      	cmp	r3, #0
 8002c76:	d19d      	bne.n	8002bb4 <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
 8002c78:	2300      	movs	r3, #0
 8002c7a:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
 8002c7c:	683b      	ldr	r3, [r7, #0]
 8002c7e:	781b      	ldrb	r3, [r3, #0]
 8002c80:	4618      	mov	r0, r3
 8002c82:	f7ff fda3 	bl	80027cc <_is_digit>
 8002c86:	4603      	mov	r3, r0
 8002c88:	2b00      	cmp	r3, #0
 8002c8a:	d005      	beq.n	8002c98 <_vsnprintf+0x130>
      width = _atoi(&format);
 8002c8c:	463b      	mov	r3, r7
 8002c8e:	4618      	mov	r0, r3
 8002c90:	f7ff fdb3 	bl	80027fa <_atoi>
 8002c94:	6438      	str	r0, [r7, #64]	; 0x40
 8002c96:	e018      	b.n	8002cca <_vsnprintf+0x162>
    }
    else if (*format == '*') {
 8002c98:	683b      	ldr	r3, [r7, #0]
 8002c9a:	781b      	ldrb	r3, [r3, #0]
 8002c9c:	2b2a      	cmp	r3, #42	; 0x2a
 8002c9e:	d114      	bne.n	8002cca <_vsnprintf+0x162>
      const int w = va_arg(va, int);
 8002ca0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002ca2:	1d1a      	adds	r2, r3, #4
 8002ca4:	65ba      	str	r2, [r7, #88]	; 0x58
 8002ca6:	681b      	ldr	r3, [r3, #0]
 8002ca8:	623b      	str	r3, [r7, #32]
      if (w < 0) {
 8002caa:	6a3b      	ldr	r3, [r7, #32]
 8002cac:	2b00      	cmp	r3, #0
 8002cae:	da07      	bge.n	8002cc0 <_vsnprintf+0x158>
        flags |= FLAGS_LEFT;    // reverse padding
 8002cb0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002cb2:	f043 0302 	orr.w	r3, r3, #2
 8002cb6:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
 8002cb8:	6a3b      	ldr	r3, [r7, #32]
 8002cba:	425b      	negs	r3, r3
 8002cbc:	643b      	str	r3, [r7, #64]	; 0x40
 8002cbe:	e001      	b.n	8002cc4 <_vsnprintf+0x15c>
      }
      else {
        width = (unsigned int)w;
 8002cc0:	6a3b      	ldr	r3, [r7, #32]
 8002cc2:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
 8002cc4:	683b      	ldr	r3, [r7, #0]
 8002cc6:	3301      	adds	r3, #1
 8002cc8:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
 8002cca:	2300      	movs	r3, #0
 8002ccc:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
 8002cce:	683b      	ldr	r3, [r7, #0]
 8002cd0:	781b      	ldrb	r3, [r3, #0]
 8002cd2:	2b2e      	cmp	r3, #46	; 0x2e
 8002cd4:	d124      	bne.n	8002d20 <_vsnprintf+0x1b8>
      flags |= FLAGS_PRECISION;
 8002cd6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002cd8:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8002cdc:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
 8002cde:	683b      	ldr	r3, [r7, #0]
 8002ce0:	3301      	adds	r3, #1
 8002ce2:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
 8002ce4:	683b      	ldr	r3, [r7, #0]
 8002ce6:	781b      	ldrb	r3, [r3, #0]
 8002ce8:	4618      	mov	r0, r3
 8002cea:	f7ff fd6f 	bl	80027cc <_is_digit>
 8002cee:	4603      	mov	r3, r0
 8002cf0:	2b00      	cmp	r3, #0
 8002cf2:	d005      	beq.n	8002d00 <_vsnprintf+0x198>
        precision = _atoi(&format);
 8002cf4:	463b      	mov	r3, r7
 8002cf6:	4618      	mov	r0, r3
 8002cf8:	f7ff fd7f 	bl	80027fa <_atoi>
 8002cfc:	63f8      	str	r0, [r7, #60]	; 0x3c
 8002cfe:	e00f      	b.n	8002d20 <_vsnprintf+0x1b8>
      }
      else if (*format == '*') {
 8002d00:	683b      	ldr	r3, [r7, #0]
 8002d02:	781b      	ldrb	r3, [r3, #0]
 8002d04:	2b2a      	cmp	r3, #42	; 0x2a
 8002d06:	d10b      	bne.n	8002d20 <_vsnprintf+0x1b8>
        const int prec = (int)va_arg(va, int);
 8002d08:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002d0a:	1d1a      	adds	r2, r3, #4
 8002d0c:	65ba      	str	r2, [r7, #88]	; 0x58
 8002d0e:	681b      	ldr	r3, [r3, #0]
 8002d10:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
 8002d12:	69fb      	ldr	r3, [r7, #28]
 8002d14:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002d18:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
 8002d1a:	683b      	ldr	r3, [r7, #0]
 8002d1c:	3301      	adds	r3, #1
 8002d1e:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
 8002d20:	683b      	ldr	r3, [r7, #0]
 8002d22:	781b      	ldrb	r3, [r3, #0]
 8002d24:	3b68      	subs	r3, #104	; 0x68
 8002d26:	2b12      	cmp	r3, #18
 8002d28:	d866      	bhi.n	8002df8 <_vsnprintf+0x290>
 8002d2a:	a201      	add	r2, pc, #4	; (adr r2, 8002d30 <_vsnprintf+0x1c8>)
 8002d2c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002d30:	08002da3 	.word	0x08002da3
 8002d34:	08002df9 	.word	0x08002df9
 8002d38:	08002dd9 	.word	0x08002dd9
 8002d3c:	08002df9 	.word	0x08002df9
 8002d40:	08002d7d 	.word	0x08002d7d
 8002d44:	08002df9 	.word	0x08002df9
 8002d48:	08002df9 	.word	0x08002df9
 8002d4c:	08002df9 	.word	0x08002df9
 8002d50:	08002df9 	.word	0x08002df9
 8002d54:	08002df9 	.word	0x08002df9
 8002d58:	08002df9 	.word	0x08002df9
 8002d5c:	08002df9 	.word	0x08002df9
 8002d60:	08002dc9 	.word	0x08002dc9
 8002d64:	08002df9 	.word	0x08002df9
 8002d68:	08002df9 	.word	0x08002df9
 8002d6c:	08002df9 	.word	0x08002df9
 8002d70:	08002df9 	.word	0x08002df9
 8002d74:	08002df9 	.word	0x08002df9
 8002d78:	08002de9 	.word	0x08002de9
      case 'l' :
        flags |= FLAGS_LONG;
 8002d7c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002d7e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002d82:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002d84:	683b      	ldr	r3, [r7, #0]
 8002d86:	3301      	adds	r3, #1
 8002d88:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
 8002d8a:	683b      	ldr	r3, [r7, #0]
 8002d8c:	781b      	ldrb	r3, [r3, #0]
 8002d8e:	2b6c      	cmp	r3, #108	; 0x6c
 8002d90:	d134      	bne.n	8002dfc <_vsnprintf+0x294>
          flags |= FLAGS_LONG_LONG;
 8002d92:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002d94:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002d98:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 8002d9a:	683b      	ldr	r3, [r7, #0]
 8002d9c:	3301      	adds	r3, #1
 8002d9e:	603b      	str	r3, [r7, #0]
        }
        break;
 8002da0:	e02c      	b.n	8002dfc <_vsnprintf+0x294>
      case 'h' :
        flags |= FLAGS_SHORT;
 8002da2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002da4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002da8:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002daa:	683b      	ldr	r3, [r7, #0]
 8002dac:	3301      	adds	r3, #1
 8002dae:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
 8002db0:	683b      	ldr	r3, [r7, #0]
 8002db2:	781b      	ldrb	r3, [r3, #0]
 8002db4:	2b68      	cmp	r3, #104	; 0x68
 8002db6:	d125      	bne.n	8002e04 <_vsnprintf+0x29c>
          flags |= FLAGS_CHAR;
 8002db8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002dba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002dbe:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 8002dc0:	683b      	ldr	r3, [r7, #0]
 8002dc2:	3301      	adds	r3, #1
 8002dc4:	603b      	str	r3, [r7, #0]
        }
        break;
 8002dc6:	e01d      	b.n	8002e04 <_vsnprintf+0x29c>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8002dc8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002dca:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002dce:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002dd0:	683b      	ldr	r3, [r7, #0]
 8002dd2:	3301      	adds	r3, #1
 8002dd4:	603b      	str	r3, [r7, #0]
        break;
 8002dd6:	e016      	b.n	8002e06 <_vsnprintf+0x29e>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8002dd8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002dda:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002dde:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002de0:	683b      	ldr	r3, [r7, #0]
 8002de2:	3301      	adds	r3, #1
 8002de4:	603b      	str	r3, [r7, #0]
        break;
 8002de6:	e00e      	b.n	8002e06 <_vsnprintf+0x29e>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 8002de8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002dea:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002dee:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002df0:	683b      	ldr	r3, [r7, #0]
 8002df2:	3301      	adds	r3, #1
 8002df4:	603b      	str	r3, [r7, #0]
        break;
 8002df6:	e006      	b.n	8002e06 <_vsnprintf+0x29e>
      default :
        break;
 8002df8:	bf00      	nop
 8002dfa:	e004      	b.n	8002e06 <_vsnprintf+0x29e>
        break;
 8002dfc:	bf00      	nop
 8002dfe:	e002      	b.n	8002e06 <_vsnprintf+0x29e>
 8002e00:	08002751 	.word	0x08002751
        break;
 8002e04:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
 8002e06:	683b      	ldr	r3, [r7, #0]
 8002e08:	781b      	ldrb	r3, [r3, #0]
 8002e0a:	3b25      	subs	r3, #37	; 0x25
 8002e0c:	2b53      	cmp	r3, #83	; 0x53
 8002e0e:	f200 826a 	bhi.w	80032e6 <_vsnprintf+0x77e>
 8002e12:	a201      	add	r2, pc, #4	; (adr r2, 8002e18 <_vsnprintf+0x2b0>)
 8002e14:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002e18:	080032cf 	.word	0x080032cf
 8002e1c:	080032e7 	.word	0x080032e7
 8002e20:	080032e7 	.word	0x080032e7
 8002e24:	080032e7 	.word	0x080032e7
 8002e28:	080032e7 	.word	0x080032e7
 8002e2c:	080032e7 	.word	0x080032e7
 8002e30:	080032e7 	.word	0x080032e7
 8002e34:	080032e7 	.word	0x080032e7
 8002e38:	080032e7 	.word	0x080032e7
 8002e3c:	080032e7 	.word	0x080032e7
 8002e40:	080032e7 	.word	0x080032e7
 8002e44:	080032e7 	.word	0x080032e7
 8002e48:	080032e7 	.word	0x080032e7
 8002e4c:	080032e7 	.word	0x080032e7
 8002e50:	080032e7 	.word	0x080032e7
 8002e54:	080032e7 	.word	0x080032e7
 8002e58:	080032e7 	.word	0x080032e7
 8002e5c:	080032e7 	.word	0x080032e7
 8002e60:	080032e7 	.word	0x080032e7
 8002e64:	080032e7 	.word	0x080032e7
 8002e68:	080032e7 	.word	0x080032e7
 8002e6c:	080032e7 	.word	0x080032e7
 8002e70:	080032e7 	.word	0x080032e7
 8002e74:	080032e7 	.word	0x080032e7
 8002e78:	080032e7 	.word	0x080032e7
 8002e7c:	080032e7 	.word	0x080032e7
 8002e80:	080032e7 	.word	0x080032e7
 8002e84:	080032e7 	.word	0x080032e7
 8002e88:	080032e7 	.word	0x080032e7
 8002e8c:	080032e7 	.word	0x080032e7
 8002e90:	080032e7 	.word	0x080032e7
 8002e94:	080032e7 	.word	0x080032e7
 8002e98:	080032e7 	.word	0x080032e7
 8002e9c:	080032e7 	.word	0x080032e7
 8002ea0:	080032e7 	.word	0x080032e7
 8002ea4:	080032e7 	.word	0x080032e7
 8002ea8:	080032e7 	.word	0x080032e7
 8002eac:	080032e7 	.word	0x080032e7
 8002eb0:	080032e7 	.word	0x080032e7
 8002eb4:	080032e7 	.word	0x080032e7
 8002eb8:	080032e7 	.word	0x080032e7
 8002ebc:	080032e7 	.word	0x080032e7
 8002ec0:	080032e7 	.word	0x080032e7
 8002ec4:	080032e7 	.word	0x080032e7
 8002ec8:	080032e7 	.word	0x080032e7
 8002ecc:	080032e7 	.word	0x080032e7
 8002ed0:	080032e7 	.word	0x080032e7
 8002ed4:	080032e7 	.word	0x080032e7
 8002ed8:	080032e7 	.word	0x080032e7
 8002edc:	080032e7 	.word	0x080032e7
 8002ee0:	080032e7 	.word	0x080032e7
 8002ee4:	08002f69 	.word	0x08002f69
 8002ee8:	080032e7 	.word	0x080032e7
 8002eec:	080032e7 	.word	0x080032e7
 8002ef0:	080032e7 	.word	0x080032e7
 8002ef4:	080032e7 	.word	0x080032e7
 8002ef8:	080032e7 	.word	0x080032e7
 8002efc:	080032e7 	.word	0x080032e7
 8002f00:	080032e7 	.word	0x080032e7
 8002f04:	080032e7 	.word	0x080032e7
 8002f08:	080032e7 	.word	0x080032e7
 8002f0c:	08002f69 	.word	0x08002f69
 8002f10:	08003155 	.word	0x08003155
 8002f14:	08002f69 	.word	0x08002f69
 8002f18:	080032e7 	.word	0x080032e7
 8002f1c:	080032e7 	.word	0x080032e7
 8002f20:	080032e7 	.word	0x080032e7
 8002f24:	080032e7 	.word	0x080032e7
 8002f28:	08002f69 	.word	0x08002f69
 8002f2c:	080032e7 	.word	0x080032e7
 8002f30:	080032e7 	.word	0x080032e7
 8002f34:	080032e7 	.word	0x080032e7
 8002f38:	080032e7 	.word	0x080032e7
 8002f3c:	080032e7 	.word	0x080032e7
 8002f40:	08002f69 	.word	0x08002f69
 8002f44:	0800328d 	.word	0x0800328d
 8002f48:	080032e7 	.word	0x080032e7
 8002f4c:	080032e7 	.word	0x080032e7
 8002f50:	080031c9 	.word	0x080031c9
 8002f54:	080032e7 	.word	0x080032e7
 8002f58:	08002f69 	.word	0x08002f69
 8002f5c:	080032e7 	.word	0x080032e7
 8002f60:	080032e7 	.word	0x080032e7
 8002f64:	08002f69 	.word	0x08002f69
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
 8002f68:	683b      	ldr	r3, [r7, #0]
 8002f6a:	781b      	ldrb	r3, [r3, #0]
 8002f6c:	2b78      	cmp	r3, #120	; 0x78
 8002f6e:	d003      	beq.n	8002f78 <_vsnprintf+0x410>
 8002f70:	683b      	ldr	r3, [r7, #0]
 8002f72:	781b      	ldrb	r3, [r3, #0]
 8002f74:	2b58      	cmp	r3, #88	; 0x58
 8002f76:	d102      	bne.n	8002f7e <_vsnprintf+0x416>
          base = 16U;
 8002f78:	2310      	movs	r3, #16
 8002f7a:	633b      	str	r3, [r7, #48]	; 0x30
 8002f7c:	e013      	b.n	8002fa6 <_vsnprintf+0x43e>
        }
        else if (*format == 'o') {
 8002f7e:	683b      	ldr	r3, [r7, #0]
 8002f80:	781b      	ldrb	r3, [r3, #0]
 8002f82:	2b6f      	cmp	r3, #111	; 0x6f
 8002f84:	d102      	bne.n	8002f8c <_vsnprintf+0x424>
          base =  8U;
 8002f86:	2308      	movs	r3, #8
 8002f88:	633b      	str	r3, [r7, #48]	; 0x30
 8002f8a:	e00c      	b.n	8002fa6 <_vsnprintf+0x43e>
        }
        else if (*format == 'b') {
 8002f8c:	683b      	ldr	r3, [r7, #0]
 8002f8e:	781b      	ldrb	r3, [r3, #0]
 8002f90:	2b62      	cmp	r3, #98	; 0x62
 8002f92:	d102      	bne.n	8002f9a <_vsnprintf+0x432>
          base =  2U;
 8002f94:	2302      	movs	r3, #2
 8002f96:	633b      	str	r3, [r7, #48]	; 0x30
 8002f98:	e005      	b.n	8002fa6 <_vsnprintf+0x43e>
        }
        else {
          base = 10U;
 8002f9a:	230a      	movs	r3, #10
 8002f9c:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
 8002f9e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002fa0:	f023 0310 	bic.w	r3, r3, #16
 8002fa4:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
 8002fa6:	683b      	ldr	r3, [r7, #0]
 8002fa8:	781b      	ldrb	r3, [r3, #0]
 8002faa:	2b58      	cmp	r3, #88	; 0x58
 8002fac:	d103      	bne.n	8002fb6 <_vsnprintf+0x44e>
          flags |= FLAGS_UPPERCASE;
 8002fae:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002fb0:	f043 0320 	orr.w	r3, r3, #32
 8002fb4:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
 8002fb6:	683b      	ldr	r3, [r7, #0]
 8002fb8:	781b      	ldrb	r3, [r3, #0]
 8002fba:	2b69      	cmp	r3, #105	; 0x69
 8002fbc:	d007      	beq.n	8002fce <_vsnprintf+0x466>
 8002fbe:	683b      	ldr	r3, [r7, #0]
 8002fc0:	781b      	ldrb	r3, [r3, #0]
 8002fc2:	2b64      	cmp	r3, #100	; 0x64
 8002fc4:	d003      	beq.n	8002fce <_vsnprintf+0x466>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
 8002fc6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002fc8:	f023 030c 	bic.w	r3, r3, #12
 8002fcc:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
 8002fce:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002fd0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002fd4:	2b00      	cmp	r3, #0
 8002fd6:	d003      	beq.n	8002fe0 <_vsnprintf+0x478>
          flags &= ~FLAGS_ZEROPAD;
 8002fd8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002fda:	f023 0301 	bic.w	r3, r3, #1
 8002fde:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
 8002fe0:	683b      	ldr	r3, [r7, #0]
 8002fe2:	781b      	ldrb	r3, [r3, #0]
 8002fe4:	2b69      	cmp	r3, #105	; 0x69
 8002fe6:	d003      	beq.n	8002ff0 <_vsnprintf+0x488>
 8002fe8:	683b      	ldr	r3, [r7, #0]
 8002fea:	781b      	ldrb	r3, [r3, #0]
 8002fec:	2b64      	cmp	r3, #100	; 0x64
 8002fee:	d15e      	bne.n	80030ae <_vsnprintf+0x546>
          // signed
          if (flags & FLAGS_LONG_LONG) {
 8002ff0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002ff2:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8002ff6:	2b00      	cmp	r3, #0
 8002ff8:	f040 80a8 	bne.w	800314c <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 8002ffc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002ffe:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8003002:	2b00      	cmp	r3, #0
 8003004:	d01e      	beq.n	8003044 <_vsnprintf+0x4dc>
            const long value = va_arg(va, long);
 8003006:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8003008:	1d1a      	adds	r2, r3, #4
 800300a:	65ba      	str	r2, [r7, #88]	; 0x58
 800300c:	681b      	ldr	r3, [r3, #0]
 800300e:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 8003010:	693b      	ldr	r3, [r7, #16]
 8003012:	2b00      	cmp	r3, #0
 8003014:	bfb8      	it	lt
 8003016:	425b      	neglt	r3, r3
 8003018:	4619      	mov	r1, r3
 800301a:	693b      	ldr	r3, [r7, #16]
 800301c:	0fdb      	lsrs	r3, r3, #31
 800301e:	b2db      	uxtb	r3, r3
 8003020:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8003022:	9205      	str	r2, [sp, #20]
 8003024:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8003026:	9204      	str	r2, [sp, #16]
 8003028:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 800302a:	9203      	str	r2, [sp, #12]
 800302c:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 800302e:	9202      	str	r2, [sp, #8]
 8003030:	9301      	str	r3, [sp, #4]
 8003032:	9100      	str	r1, [sp, #0]
 8003034:	687b      	ldr	r3, [r7, #4]
 8003036:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8003038:	68b9      	ldr	r1, [r7, #8]
 800303a:	68f8      	ldr	r0, [r7, #12]
 800303c:	f7ff fd2d 	bl	8002a9a <_ntoa_long>
 8003040:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 8003042:	e083      	b.n	800314c <_vsnprintf+0x5e4>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
 8003044:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8003046:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800304a:	2b00      	cmp	r3, #0
 800304c:	d005      	beq.n	800305a <_vsnprintf+0x4f2>
 800304e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8003050:	1d1a      	adds	r2, r3, #4
 8003052:	65ba      	str	r2, [r7, #88]	; 0x58
 8003054:	681b      	ldr	r3, [r3, #0]
 8003056:	b2db      	uxtb	r3, r3
 8003058:	e00e      	b.n	8003078 <_vsnprintf+0x510>
 800305a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800305c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8003060:	2b00      	cmp	r3, #0
 8003062:	d005      	beq.n	8003070 <_vsnprintf+0x508>
 8003064:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8003066:	1d1a      	adds	r2, r3, #4
 8003068:	65ba      	str	r2, [r7, #88]	; 0x58
 800306a:	681b      	ldr	r3, [r3, #0]
 800306c:	b21b      	sxth	r3, r3
 800306e:	e003      	b.n	8003078 <_vsnprintf+0x510>
 8003070:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8003072:	1d1a      	adds	r2, r3, #4
 8003074:	65ba      	str	r2, [r7, #88]	; 0x58
 8003076:	681b      	ldr	r3, [r3, #0]
 8003078:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 800307a:	697b      	ldr	r3, [r7, #20]
 800307c:	2b00      	cmp	r3, #0
 800307e:	bfb8      	it	lt
 8003080:	425b      	neglt	r3, r3
 8003082:	4619      	mov	r1, r3
 8003084:	697b      	ldr	r3, [r7, #20]
 8003086:	0fdb      	lsrs	r3, r3, #31
 8003088:	b2db      	uxtb	r3, r3
 800308a:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 800308c:	9205      	str	r2, [sp, #20]
 800308e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8003090:	9204      	str	r2, [sp, #16]
 8003092:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8003094:	9203      	str	r2, [sp, #12]
 8003096:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8003098:	9202      	str	r2, [sp, #8]
 800309a:	9301      	str	r3, [sp, #4]
 800309c:	9100      	str	r1, [sp, #0]
 800309e:	687b      	ldr	r3, [r7, #4]
 80030a0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80030a2:	68b9      	ldr	r1, [r7, #8]
 80030a4:	68f8      	ldr	r0, [r7, #12]
 80030a6:	f7ff fcf8 	bl	8002a9a <_ntoa_long>
 80030aa:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 80030ac:	e04e      	b.n	800314c <_vsnprintf+0x5e4>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
 80030ae:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80030b0:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80030b4:	2b00      	cmp	r3, #0
 80030b6:	d149      	bne.n	800314c <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 80030b8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80030ba:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80030be:	2b00      	cmp	r3, #0
 80030c0:	d016      	beq.n	80030f0 <_vsnprintf+0x588>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
 80030c2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80030c4:	1d1a      	adds	r2, r3, #4
 80030c6:	65ba      	str	r2, [r7, #88]	; 0x58
 80030c8:	681b      	ldr	r3, [r3, #0]
 80030ca:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80030cc:	9205      	str	r2, [sp, #20]
 80030ce:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80030d0:	9204      	str	r2, [sp, #16]
 80030d2:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 80030d4:	9203      	str	r2, [sp, #12]
 80030d6:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80030d8:	9202      	str	r2, [sp, #8]
 80030da:	2200      	movs	r2, #0
 80030dc:	9201      	str	r2, [sp, #4]
 80030de:	9300      	str	r3, [sp, #0]
 80030e0:	687b      	ldr	r3, [r7, #4]
 80030e2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80030e4:	68b9      	ldr	r1, [r7, #8]
 80030e6:	68f8      	ldr	r0, [r7, #12]
 80030e8:	f7ff fcd7 	bl	8002a9a <_ntoa_long>
 80030ec:	6378      	str	r0, [r7, #52]	; 0x34
 80030ee:	e02d      	b.n	800314c <_vsnprintf+0x5e4>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
 80030f0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80030f2:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80030f6:	2b00      	cmp	r3, #0
 80030f8:	d005      	beq.n	8003106 <_vsnprintf+0x59e>
 80030fa:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80030fc:	1d1a      	adds	r2, r3, #4
 80030fe:	65ba      	str	r2, [r7, #88]	; 0x58
 8003100:	681b      	ldr	r3, [r3, #0]
 8003102:	b2db      	uxtb	r3, r3
 8003104:	e00e      	b.n	8003124 <_vsnprintf+0x5bc>
 8003106:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8003108:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800310c:	2b00      	cmp	r3, #0
 800310e:	d005      	beq.n	800311c <_vsnprintf+0x5b4>
 8003110:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8003112:	1d1a      	adds	r2, r3, #4
 8003114:	65ba      	str	r2, [r7, #88]	; 0x58
 8003116:	681b      	ldr	r3, [r3, #0]
 8003118:	b29b      	uxth	r3, r3
 800311a:	e003      	b.n	8003124 <_vsnprintf+0x5bc>
 800311c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800311e:	1d1a      	adds	r2, r3, #4
 8003120:	65ba      	str	r2, [r7, #88]	; 0x58
 8003122:	681b      	ldr	r3, [r3, #0]
 8003124:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
 8003126:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8003128:	9305      	str	r3, [sp, #20]
 800312a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800312c:	9304      	str	r3, [sp, #16]
 800312e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003130:	9303      	str	r3, [sp, #12]
 8003132:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8003134:	9302      	str	r3, [sp, #8]
 8003136:	2300      	movs	r3, #0
 8003138:	9301      	str	r3, [sp, #4]
 800313a:	69bb      	ldr	r3, [r7, #24]
 800313c:	9300      	str	r3, [sp, #0]
 800313e:	687b      	ldr	r3, [r7, #4]
 8003140:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8003142:	68b9      	ldr	r1, [r7, #8]
 8003144:	68f8      	ldr	r0, [r7, #12]
 8003146:	f7ff fca8 	bl	8002a9a <_ntoa_long>
 800314a:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
 800314c:	683b      	ldr	r3, [r7, #0]
 800314e:	3301      	adds	r3, #1
 8003150:	603b      	str	r3, [r7, #0]
        break;
 8003152:	e0d5      	b.n	8003300 <_vsnprintf+0x798>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
 8003154:	2301      	movs	r3, #1
 8003156:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
 8003158:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800315a:	f003 0302 	and.w	r3, r3, #2
 800315e:	2b00      	cmp	r3, #0
 8003160:	d10e      	bne.n	8003180 <_vsnprintf+0x618>
          while (l++ < width) {
 8003162:	e007      	b.n	8003174 <_vsnprintf+0x60c>
            out(' ', buffer, idx++, maxlen);
 8003164:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8003166:	1c53      	adds	r3, r2, #1
 8003168:	637b      	str	r3, [r7, #52]	; 0x34
 800316a:	68fc      	ldr	r4, [r7, #12]
 800316c:	687b      	ldr	r3, [r7, #4]
 800316e:	68b9      	ldr	r1, [r7, #8]
 8003170:	2020      	movs	r0, #32
 8003172:	47a0      	blx	r4
          while (l++ < width) {
 8003174:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003176:	1c5a      	adds	r2, r3, #1
 8003178:	62fa      	str	r2, [r7, #44]	; 0x2c
 800317a:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800317c:	429a      	cmp	r2, r3
 800317e:	d8f1      	bhi.n	8003164 <_vsnprintf+0x5fc>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
 8003180:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8003182:	1d1a      	adds	r2, r3, #4
 8003184:	65ba      	str	r2, [r7, #88]	; 0x58
 8003186:	681b      	ldr	r3, [r3, #0]
 8003188:	b2d8      	uxtb	r0, r3
 800318a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800318c:	1c53      	adds	r3, r2, #1
 800318e:	637b      	str	r3, [r7, #52]	; 0x34
 8003190:	68fc      	ldr	r4, [r7, #12]
 8003192:	687b      	ldr	r3, [r7, #4]
 8003194:	68b9      	ldr	r1, [r7, #8]
 8003196:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
 8003198:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800319a:	f003 0302 	and.w	r3, r3, #2
 800319e:	2b00      	cmp	r3, #0
 80031a0:	d00e      	beq.n	80031c0 <_vsnprintf+0x658>
          while (l++ < width) {
 80031a2:	e007      	b.n	80031b4 <_vsnprintf+0x64c>
            out(' ', buffer, idx++, maxlen);
 80031a4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80031a6:	1c53      	adds	r3, r2, #1
 80031a8:	637b      	str	r3, [r7, #52]	; 0x34
 80031aa:	68fc      	ldr	r4, [r7, #12]
 80031ac:	687b      	ldr	r3, [r7, #4]
 80031ae:	68b9      	ldr	r1, [r7, #8]
 80031b0:	2020      	movs	r0, #32
 80031b2:	47a0      	blx	r4
          while (l++ < width) {
 80031b4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80031b6:	1c5a      	adds	r2, r3, #1
 80031b8:	62fa      	str	r2, [r7, #44]	; 0x2c
 80031ba:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80031bc:	429a      	cmp	r2, r3
 80031be:	d8f1      	bhi.n	80031a4 <_vsnprintf+0x63c>
          }
        }
        format++;
 80031c0:	683b      	ldr	r3, [r7, #0]
 80031c2:	3301      	adds	r3, #1
 80031c4:	603b      	str	r3, [r7, #0]
        break;
 80031c6:	e09b      	b.n	8003300 <_vsnprintf+0x798>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
 80031c8:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80031ca:	1d1a      	adds	r2, r3, #4
 80031cc:	65ba      	str	r2, [r7, #88]	; 0x58
 80031ce:	681b      	ldr	r3, [r3, #0]
 80031d0:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
 80031d2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80031d4:	2b00      	cmp	r3, #0
 80031d6:	d001      	beq.n	80031dc <_vsnprintf+0x674>
 80031d8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80031da:	e001      	b.n	80031e0 <_vsnprintf+0x678>
 80031dc:	f04f 33ff 	mov.w	r3, #4294967295
 80031e0:	4619      	mov	r1, r3
 80031e2:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 80031e4:	f7ff fad5 	bl	8002792 <_strnlen_s>
 80031e8:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
 80031ea:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80031ec:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80031f0:	2b00      	cmp	r3, #0
 80031f2:	d005      	beq.n	8003200 <_vsnprintf+0x698>
          l = (l < precision ? l : precision);
 80031f4:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80031f6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80031f8:	4293      	cmp	r3, r2
 80031fa:	bf28      	it	cs
 80031fc:	4613      	movcs	r3, r2
 80031fe:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
 8003200:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8003202:	f003 0302 	and.w	r3, r3, #2
 8003206:	2b00      	cmp	r3, #0
 8003208:	d11a      	bne.n	8003240 <_vsnprintf+0x6d8>
          while (l++ < width) {
 800320a:	e007      	b.n	800321c <_vsnprintf+0x6b4>
            out(' ', buffer, idx++, maxlen);
 800320c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800320e:	1c53      	adds	r3, r2, #1
 8003210:	637b      	str	r3, [r7, #52]	; 0x34
 8003212:	68fc      	ldr	r4, [r7, #12]
 8003214:	687b      	ldr	r3, [r7, #4]
 8003216:	68b9      	ldr	r1, [r7, #8]
 8003218:	2020      	movs	r0, #32
 800321a:	47a0      	blx	r4
          while (l++ < width) {
 800321c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800321e:	1c5a      	adds	r2, r3, #1
 8003220:	627a      	str	r2, [r7, #36]	; 0x24
 8003222:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8003224:	429a      	cmp	r2, r3
 8003226:	d8f1      	bhi.n	800320c <_vsnprintf+0x6a4>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 8003228:	e00a      	b.n	8003240 <_vsnprintf+0x6d8>
          out(*(p++), buffer, idx++, maxlen);
 800322a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 800322c:	1c5a      	adds	r2, r3, #1
 800322e:	62ba      	str	r2, [r7, #40]	; 0x28
 8003230:	7818      	ldrb	r0, [r3, #0]
 8003232:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8003234:	1c53      	adds	r3, r2, #1
 8003236:	637b      	str	r3, [r7, #52]	; 0x34
 8003238:	68fc      	ldr	r4, [r7, #12]
 800323a:	687b      	ldr	r3, [r7, #4]
 800323c:	68b9      	ldr	r1, [r7, #8]
 800323e:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 8003240:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003242:	781b      	ldrb	r3, [r3, #0]
 8003244:	2b00      	cmp	r3, #0
 8003246:	d009      	beq.n	800325c <_vsnprintf+0x6f4>
 8003248:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800324a:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 800324e:	2b00      	cmp	r3, #0
 8003250:	d0eb      	beq.n	800322a <_vsnprintf+0x6c2>
 8003252:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003254:	1e5a      	subs	r2, r3, #1
 8003256:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003258:	2b00      	cmp	r3, #0
 800325a:	d1e6      	bne.n	800322a <_vsnprintf+0x6c2>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
 800325c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800325e:	f003 0302 	and.w	r3, r3, #2
 8003262:	2b00      	cmp	r3, #0
 8003264:	d00e      	beq.n	8003284 <_vsnprintf+0x71c>
          while (l++ < width) {
 8003266:	e007      	b.n	8003278 <_vsnprintf+0x710>
            out(' ', buffer, idx++, maxlen);
 8003268:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800326a:	1c53      	adds	r3, r2, #1
 800326c:	637b      	str	r3, [r7, #52]	; 0x34
 800326e:	68fc      	ldr	r4, [r7, #12]
 8003270:	687b      	ldr	r3, [r7, #4]
 8003272:	68b9      	ldr	r1, [r7, #8]
 8003274:	2020      	movs	r0, #32
 8003276:	47a0      	blx	r4
          while (l++ < width) {
 8003278:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800327a:	1c5a      	adds	r2, r3, #1
 800327c:	627a      	str	r2, [r7, #36]	; 0x24
 800327e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8003280:	429a      	cmp	r2, r3
 8003282:	d8f1      	bhi.n	8003268 <_vsnprintf+0x700>
          }
        }
        format++;
 8003284:	683b      	ldr	r3, [r7, #0]
 8003286:	3301      	adds	r3, #1
 8003288:	603b      	str	r3, [r7, #0]
        break;
 800328a:	e039      	b.n	8003300 <_vsnprintf+0x798>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
 800328c:	2308      	movs	r3, #8
 800328e:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
 8003290:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8003292:	f043 0321 	orr.w	r3, r3, #33	; 0x21
 8003296:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
 8003298:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800329a:	1d1a      	adds	r2, r3, #4
 800329c:	65ba      	str	r2, [r7, #88]	; 0x58
 800329e:	681b      	ldr	r3, [r3, #0]
 80032a0:	461a      	mov	r2, r3
 80032a2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80032a4:	9305      	str	r3, [sp, #20]
 80032a6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80032a8:	9304      	str	r3, [sp, #16]
 80032aa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80032ac:	9303      	str	r3, [sp, #12]
 80032ae:	2310      	movs	r3, #16
 80032b0:	9302      	str	r3, [sp, #8]
 80032b2:	2300      	movs	r3, #0
 80032b4:	9301      	str	r3, [sp, #4]
 80032b6:	9200      	str	r2, [sp, #0]
 80032b8:	687b      	ldr	r3, [r7, #4]
 80032ba:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80032bc:	68b9      	ldr	r1, [r7, #8]
 80032be:	68f8      	ldr	r0, [r7, #12]
 80032c0:	f7ff fbeb 	bl	8002a9a <_ntoa_long>
 80032c4:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
 80032c6:	683b      	ldr	r3, [r7, #0]
 80032c8:	3301      	adds	r3, #1
 80032ca:	603b      	str	r3, [r7, #0]
        break;
 80032cc:	e018      	b.n	8003300 <_vsnprintf+0x798>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
 80032ce:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80032d0:	1c53      	adds	r3, r2, #1
 80032d2:	637b      	str	r3, [r7, #52]	; 0x34
 80032d4:	68fc      	ldr	r4, [r7, #12]
 80032d6:	687b      	ldr	r3, [r7, #4]
 80032d8:	68b9      	ldr	r1, [r7, #8]
 80032da:	2025      	movs	r0, #37	; 0x25
 80032dc:	47a0      	blx	r4
        format++;
 80032de:	683b      	ldr	r3, [r7, #0]
 80032e0:	3301      	adds	r3, #1
 80032e2:	603b      	str	r3, [r7, #0]
        break;
 80032e4:	e00c      	b.n	8003300 <_vsnprintf+0x798>

      default :
        out(*format, buffer, idx++, maxlen);
 80032e6:	683b      	ldr	r3, [r7, #0]
 80032e8:	7818      	ldrb	r0, [r3, #0]
 80032ea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80032ec:	1c53      	adds	r3, r2, #1
 80032ee:	637b      	str	r3, [r7, #52]	; 0x34
 80032f0:	68fc      	ldr	r4, [r7, #12]
 80032f2:	687b      	ldr	r3, [r7, #4]
 80032f4:	68b9      	ldr	r1, [r7, #8]
 80032f6:	47a0      	blx	r4
        format++;
 80032f8:	683b      	ldr	r3, [r7, #0]
 80032fa:	3301      	adds	r3, #1
 80032fc:	603b      	str	r3, [r7, #0]
        break;
 80032fe:	bf00      	nop
  while (*format)
 8003300:	683b      	ldr	r3, [r7, #0]
 8003302:	781b      	ldrb	r3, [r3, #0]
 8003304:	2b00      	cmp	r3, #0
 8003306:	f47f ac3f 	bne.w	8002b88 <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
 800330a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800330c:	687b      	ldr	r3, [r7, #4]
 800330e:	429a      	cmp	r2, r3
 8003310:	d302      	bcc.n	8003318 <_vsnprintf+0x7b0>
 8003312:	687b      	ldr	r3, [r7, #4]
 8003314:	1e5a      	subs	r2, r3, #1
 8003316:	e000      	b.n	800331a <_vsnprintf+0x7b2>
 8003318:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800331a:	68fc      	ldr	r4, [r7, #12]
 800331c:	687b      	ldr	r3, [r7, #4]
 800331e:	68b9      	ldr	r1, [r7, #8]
 8003320:	2000      	movs	r0, #0
 8003322:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
 8003324:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
 8003326:	4618      	mov	r0, r3
 8003328:	374c      	adds	r7, #76	; 0x4c
 800332a:	46bd      	mov	sp, r7
 800332c:	bd90      	pop	{r4, r7, pc}
 800332e:	bf00      	nop

08003330 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
 8003330:	b40f      	push	{r0, r1, r2, r3}
 8003332:	b580      	push	{r7, lr}
 8003334:	b086      	sub	sp, #24
 8003336:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
 8003338:	f107 031c 	add.w	r3, r7, #28
 800333c:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
 800333e:	1d39      	adds	r1, r7, #4
 8003340:	68bb      	ldr	r3, [r7, #8]
 8003342:	9300      	str	r3, [sp, #0]
 8003344:	69bb      	ldr	r3, [r7, #24]
 8003346:	f04f 32ff 	mov.w	r2, #4294967295
 800334a:	4806      	ldr	r0, [pc, #24]	; (8003364 <printf_+0x34>)
 800334c:	f7ff fc0c 	bl	8002b68 <_vsnprintf>
 8003350:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8003352:	68fb      	ldr	r3, [r7, #12]
}
 8003354:	4618      	mov	r0, r3
 8003356:	3710      	adds	r7, #16
 8003358:	46bd      	mov	sp, r7
 800335a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800335e:	b004      	add	sp, #16
 8003360:	4770      	bx	lr
 8003362:	bf00      	nop
 8003364:	0800276d 	.word	0x0800276d

08003368 <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
 8003368:	b40e      	push	{r1, r2, r3}
 800336a:	b580      	push	{r7, lr}
 800336c:	b087      	sub	sp, #28
 800336e:	af02      	add	r7, sp, #8
 8003370:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
 8003372:	f107 0320 	add.w	r3, r7, #32
 8003376:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
 8003378:	68bb      	ldr	r3, [r7, #8]
 800337a:	9300      	str	r3, [sp, #0]
 800337c:	69fb      	ldr	r3, [r7, #28]
 800337e:	f04f 32ff 	mov.w	r2, #4294967295
 8003382:	6879      	ldr	r1, [r7, #4]
 8003384:	4805      	ldr	r0, [pc, #20]	; (800339c <sprintf_+0x34>)
 8003386:	f7ff fbef 	bl	8002b68 <_vsnprintf>
 800338a:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 800338c:	68fb      	ldr	r3, [r7, #12]
}
 800338e:	4618      	mov	r0, r3
 8003390:	3714      	adds	r7, #20
 8003392:	46bd      	mov	sp, r7
 8003394:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8003398:	b003      	add	sp, #12
 800339a:	4770      	bx	lr
 800339c:	08002723 	.word	0x08002723

080033a0 <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
 80033a0:	b580      	push	{r7, lr}
 80033a2:	b084      	sub	sp, #16
 80033a4:	af00      	add	r7, sp, #0
 80033a6:	60f8      	str	r0, [r7, #12]
 80033a8:	60b9      	str	r1, [r7, #8]
 80033aa:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
 80033ac:	687b      	ldr	r3, [r7, #4]
 80033ae:	68fa      	ldr	r2, [r7, #12]
 80033b0:	429a      	cmp	r2, r3
 80033b2:	d902      	bls.n	80033ba <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
 80033b4:	68fb      	ldr	r3, [r7, #12]
 80033b6:	607b      	str	r3, [r7, #4]
 80033b8:	e014      	b.n	80033e4 <dump_stack+0x44>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
 80033ba:	68fa      	ldr	r2, [r7, #12]
 80033bc:	68bb      	ldr	r3, [r7, #8]
 80033be:	441a      	add	r2, r3
 80033c0:	687b      	ldr	r3, [r7, #4]
 80033c2:	429a      	cmp	r2, r3
 80033c4:	d20e      	bcs.n	80033e4 <dump_stack+0x44>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
 80033c6:	68fa      	ldr	r2, [r7, #12]
 80033c8:	68bb      	ldr	r3, [r7, #8]
 80033ca:	4413      	add	r3, r2
 80033cc:	607b      	str	r3, [r7, #4]
    }

    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 80033ce:	e009      	b.n	80033e4 <dump_stack+0x44>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
 80033d0:	6879      	ldr	r1, [r7, #4]
 80033d2:	687b      	ldr	r3, [r7, #4]
 80033d4:	681b      	ldr	r3, [r3, #0]
 80033d6:	461a      	mov	r2, r3
 80033d8:	4809      	ldr	r0, [pc, #36]	; (8003400 <dump_stack+0x60>)
 80033da:	f7ff ffa9 	bl	8003330 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 80033de:	687b      	ldr	r3, [r7, #4]
 80033e0:	3304      	adds	r3, #4
 80033e2:	607b      	str	r3, [r7, #4]
 80033e4:	68fa      	ldr	r2, [r7, #12]
 80033e6:	68bb      	ldr	r3, [r7, #8]
 80033e8:	441a      	add	r2, r3
 80033ea:	687b      	ldr	r3, [r7, #4]
 80033ec:	429a      	cmp	r2, r3
 80033ee:	d8ef      	bhi.n	80033d0 <dump_stack+0x30>
    }
    printf("====================================\n");
 80033f0:	4804      	ldr	r0, [pc, #16]	; (8003404 <dump_stack+0x64>)
 80033f2:	f7ff ff9d 	bl	8003330 <printf_>
}
 80033f6:	bf00      	nop
 80033f8:	3710      	adds	r7, #16
 80033fa:	46bd      	mov	sp, r7
 80033fc:	bd80      	pop	{r7, pc}
 80033fe:	bf00      	nop
 8003400:	08009058 	.word	0x08009058
 8003404:	08009078 	.word	0x08009078

08003408 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
    static bool stack_is_overflow = false;
    static bool disassembly_ins_is_bl_blx(uint32_t addr) {
 8003408:	b480      	push	{r7}
 800340a:	b085      	sub	sp, #20
 800340c:	af00      	add	r7, sp, #0
 800340e:	6078      	str	r0, [r7, #4]
        uint16_t ins1 = *((uint16_t *)addr);
 8003410:	687b      	ldr	r3, [r7, #4]
 8003412:	881b      	ldrh	r3, [r3, #0]
 8003414:	81fb      	strh	r3, [r7, #14]
        uint16_t ins2 = *((uint16_t *)(addr + 2));
 8003416:	687b      	ldr	r3, [r7, #4]
 8003418:	3302      	adds	r3, #2
 800341a:	881b      	ldrh	r3, [r3, #0]
 800341c:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

        if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
 800341e:	89bb      	ldrh	r3, [r7, #12]
 8003420:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8003424:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
 8003428:	d107      	bne.n	800343a <disassembly_ins_is_bl_blx+0x32>
 800342a:	89fb      	ldrh	r3, [r7, #14]
 800342c:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8003430:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
 8003434:	d101      	bne.n	800343a <disassembly_ins_is_bl_blx+0x32>
            return true;
 8003436:	2301      	movs	r3, #1
 8003438:	e008      	b.n	800344c <disassembly_ins_is_bl_blx+0x44>
        } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
 800343a:	89bb      	ldrh	r3, [r7, #12]
 800343c:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8003440:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8003444:	d101      	bne.n	800344a <disassembly_ins_is_bl_blx+0x42>
            return true;
 8003446:	2301      	movs	r3, #1
 8003448:	e000      	b.n	800344c <disassembly_ins_is_bl_blx+0x44>
        } else {
            return false;
 800344a:	2300      	movs	r3, #0
        }
    }
 800344c:	4618      	mov	r0, r3
 800344e:	3714      	adds	r7, #20
 8003450:	46bd      	mov	sp, r7
 8003452:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003456:	4770      	bx	lr

08003458 <backtrace_call_stack>:
     * @param size buffer size
     * @param sp stack pointer
     *
     * @return depth
     */
    size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
 8003458:	b580      	push	{r7, lr}
 800345a:	b08a      	sub	sp, #40	; 0x28
 800345c:	af02      	add	r7, sp, #8
 800345e:	60f8      	str	r0, [r7, #12]
 8003460:	60b9      	str	r1, [r7, #8]
 8003462:	607a      	str	r2, [r7, #4]
        uint32_t pc;
        uint32_t lr;
        size_t depth = 0;
 8003464:	2300      	movs	r3, #0
 8003466:	61fb      	str	r3, [r7, #28]
        bool regs_saved_lr_is_valid = false;
 8003468:	2300      	movs	r3, #0
 800346a:	76fb      	strb	r3, [r7, #27]
  2. LR'的值lsb为1
  3. LR' - 4处的指令是bl或者blx指令
*/

//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 800346c:	e04e      	b.n	800350c <backtrace_call_stack+0xb4>

        当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
        当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
        最低位为1表示thumb模式，9d1表示地址9d0
    */
    lr = *((uint32_t *) sp);
 800346e:	687b      	ldr	r3, [r7, #4]
 8003470:	681b      	ldr	r3, [r3, #0]
 8003472:	617b      	str	r3, [r7, #20]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
 8003474:	697b      	ldr	r3, [r7, #20]
 8003476:	f003 0301 	and.w	r3, r3, #1
 800347a:	2b00      	cmp	r3, #0
 800347c:	d040      	beq.n	8003500 <backtrace_call_stack+0xa8>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
 800347e:	697b      	ldr	r3, [r7, #20]
 8003480:	3b01      	subs	r3, #1
 8003482:	617b      	str	r3, [r7, #20]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
 8003484:	4b28      	ldr	r3, [pc, #160]	; (8003528 <backtrace_call_stack+0xd0>)
 8003486:	681b      	ldr	r3, [r3, #0]
 8003488:	697a      	ldr	r2, [r7, #20]
 800348a:	429a      	cmp	r2, r3
 800348c:	d33b      	bcc.n	8003506 <backtrace_call_stack+0xae>
 800348e:	4b26      	ldr	r3, [pc, #152]	; (8003528 <backtrace_call_stack+0xd0>)
 8003490:	681a      	ldr	r2, [r3, #0]
 8003492:	4b26      	ldr	r3, [pc, #152]	; (800352c <backtrace_call_stack+0xd4>)
 8003494:	681b      	ldr	r3, [r3, #0]
 8003496:	4413      	add	r3, r2
 8003498:	697a      	ldr	r2, [r7, #20]
 800349a:	429a      	cmp	r2, r3
 800349c:	d833      	bhi.n	8003506 <backtrace_call_stack+0xae>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
 800349e:	697b      	ldr	r3, [r7, #20]
 80034a0:	3b04      	subs	r3, #4
 80034a2:	4618      	mov	r0, r3
 80034a4:	f7ff ffb0 	bl	8003408 <disassembly_ins_is_bl_blx>
 80034a8:	4603      	mov	r3, r0
 80034aa:	2b00      	cmp	r3, #0
 80034ac:	d02b      	beq.n	8003506 <backtrace_call_stack+0xae>
 80034ae:	69fa      	ldr	r2, [r7, #28]
 80034b0:	68bb      	ldr	r3, [r7, #8]
 80034b2:	429a      	cmp	r2, r3
 80034b4:	d227      	bcs.n	8003506 <backtrace_call_stack+0xae>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
 80034b6:	69fb      	ldr	r3, [r7, #28]
 80034b8:	2b02      	cmp	r3, #2
 80034ba:	d108      	bne.n	80034ce <backtrace_call_stack+0x76>
 80034bc:	7efb      	ldrb	r3, [r7, #27]
 80034be:	2b00      	cmp	r3, #0
 80034c0:	d005      	beq.n	80034ce <backtrace_call_stack+0x76>
 80034c2:	68fb      	ldr	r3, [r7, #12]
 80034c4:	3304      	adds	r3, #4
 80034c6:	681b      	ldr	r3, [r3, #0]
 80034c8:	697a      	ldr	r2, [r7, #20]
 80034ca:	429a      	cmp	r2, r3
 80034cc:	d01a      	beq.n	8003504 <backtrace_call_stack+0xac>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 80034ce:	697b      	ldr	r3, [r7, #20]
 80034d0:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 80034d2:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 80034d4:	697b      	ldr	r3, [r7, #20]
 80034d6:	3b04      	subs	r3, #4
 80034d8:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 80034da:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 80034dc:	697b      	ldr	r3, [r7, #20]
 80034de:	3b02      	subs	r3, #2
 80034e0:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 80034e2:	9300      	str	r3, [sp, #0]
 80034e4:	460b      	mov	r3, r1
 80034e6:	6979      	ldr	r1, [r7, #20]
 80034e8:	4811      	ldr	r0, [pc, #68]	; (8003530 <backtrace_call_stack+0xd8>)
 80034ea:	f7ff ff21 	bl	8003330 <printf_>
             buffer[depth++] = lr;
 80034ee:	69fb      	ldr	r3, [r7, #28]
 80034f0:	1c5a      	adds	r2, r3, #1
 80034f2:	61fa      	str	r2, [r7, #28]
 80034f4:	009b      	lsls	r3, r3, #2
 80034f6:	68fa      	ldr	r2, [r7, #12]
 80034f8:	4413      	add	r3, r2
 80034fa:	697a      	ldr	r2, [r7, #20]
 80034fc:	601a      	str	r2, [r3, #0]
 80034fe:	e002      	b.n	8003506 <backtrace_call_stack+0xae>
        continue;
 8003500:	bf00      	nop
 8003502:	e000      	b.n	8003506 <backtrace_call_stack+0xae>
            continue;
 8003504:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8003506:	687b      	ldr	r3, [r7, #4]
 8003508:	3304      	adds	r3, #4
 800350a:	607b      	str	r3, [r7, #4]
 800350c:	4b09      	ldr	r3, [pc, #36]	; (8003534 <backtrace_call_stack+0xdc>)
 800350e:	681a      	ldr	r2, [r3, #0]
 8003510:	4b09      	ldr	r3, [pc, #36]	; (8003538 <backtrace_call_stack+0xe0>)
 8003512:	681b      	ldr	r3, [r3, #0]
 8003514:	4413      	add	r3, r2
 8003516:	687a      	ldr	r2, [r7, #4]
 8003518:	429a      	cmp	r2, r3
 800351a:	d3a8      	bcc.n	800346e <backtrace_call_stack+0x16>
    }
}

return depth;
 800351c:	69fb      	ldr	r3, [r7, #28]
    }
 800351e:	4618      	mov	r0, r3
 8003520:	3720      	adds	r7, #32
 8003522:	46bd      	mov	sp, r7
 8003524:	bd80      	pop	{r7, pc}
 8003526:	bf00      	nop
 8003528:	20000af8 	.word	0x20000af8
 800352c:	20000b00 	.word	0x20000b00
 8003530:	080098fc 	.word	0x080098fc
 8003534:	20000b04 	.word	0x20000b04
 8003538:	20000b0c 	.word	0x20000b0c

0800353c <print_call_stack>:

    void print_call_stack(uint32_t sp) {
 800353c:	b580      	push	{r7, lr}
 800353e:	b096      	sub	sp, #88	; 0x58
 8003540:	af02      	add	r7, sp, #8
 8003542:	6078      	str	r0, [r7, #4]
        size_t i, cur_depth = 0;
 8003544:	2300      	movs	r3, #0
 8003546:	64bb      	str	r3, [r7, #72]	; 0x48
        uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
 8003548:	f107 0308 	add.w	r3, r7, #8
 800354c:	2240      	movs	r2, #64	; 0x40
 800354e:	2100      	movs	r1, #0
 8003550:	4618      	mov	r0, r3
 8003552:	f000 fca9 	bl	8003ea8 <memset>

        cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
 8003556:	f107 0308 	add.w	r3, r7, #8
 800355a:	687a      	ldr	r2, [r7, #4]
 800355c:	2110      	movs	r1, #16
 800355e:	4618      	mov	r0, r3
 8003560:	f7ff ff7a 	bl	8003458 <backtrace_call_stack>
 8003564:	64b8      	str	r0, [r7, #72]	; 0x48

        for (i = 0; i < cur_depth; i++) {
 8003566:	2300      	movs	r3, #0
 8003568:	64fb      	str	r3, [r7, #76]	; 0x4c
 800356a:	e01b      	b.n	80035a4 <print_call_stack+0x68>
            sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
 800356c:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 800356e:	4613      	mov	r3, r2
 8003570:	00db      	lsls	r3, r3, #3
 8003572:	4413      	add	r3, r2
 8003574:	4a1c      	ldr	r2, [pc, #112]	; (80035e8 <print_call_stack+0xac>)
 8003576:	1898      	adds	r0, r3, r2
 8003578:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800357a:	009b      	lsls	r3, r3, #2
 800357c:	f107 0250 	add.w	r2, r7, #80	; 0x50
 8003580:	4413      	add	r3, r2
 8003582:	f853 3c48 	ldr.w	r3, [r3, #-72]
 8003586:	461a      	mov	r2, r3
 8003588:	4918      	ldr	r1, [pc, #96]	; (80035ec <print_call_stack+0xb0>)
 800358a:	f7ff feed 	bl	8003368 <sprintf_>
            call_stack_info[i * (8 + 1) + 8] = ' ';
 800358e:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8003590:	4613      	mov	r3, r2
 8003592:	00db      	lsls	r3, r3, #3
 8003594:	4413      	add	r3, r2
 8003596:	3308      	adds	r3, #8
 8003598:	4a13      	ldr	r2, [pc, #76]	; (80035e8 <print_call_stack+0xac>)
 800359a:	2120      	movs	r1, #32
 800359c:	54d1      	strb	r1, [r2, r3]
        for (i = 0; i < cur_depth; i++) {
 800359e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80035a0:	3301      	adds	r3, #1
 80035a2:	64fb      	str	r3, [r7, #76]	; 0x4c
 80035a4:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80035a6:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80035a8:	429a      	cmp	r2, r3
 80035aa:	d3df      	bcc.n	800356c <print_call_stack+0x30>
        }

        if (cur_depth) {
 80035ac:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80035ae:	2b00      	cmp	r3, #0
 80035b0:	d00f      	beq.n	80035d2 <print_call_stack+0x96>
            cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
 80035b2:	480f      	ldr	r0, [pc, #60]	; (80035f0 <print_call_stack+0xb4>)
 80035b4:	6cba      	ldr	r2, [r7, #72]	; 0x48
 80035b6:	4613      	mov	r3, r2
 80035b8:	00db      	lsls	r3, r3, #3
 80035ba:	441a      	add	r2, r3
 80035bc:	4b0a      	ldr	r3, [pc, #40]	; (80035e8 <print_call_stack+0xac>)
 80035be:	9300      	str	r3, [sp, #0]
 80035c0:	4613      	mov	r3, r2
 80035c2:	4a0c      	ldr	r2, [pc, #48]	; (80035f4 <print_call_stack+0xb8>)
 80035c4:	490c      	ldr	r1, [pc, #48]	; (80035f8 <print_call_stack+0xbc>)
 80035c6:	f7ff feb3 	bl	8003330 <printf_>
 80035ca:	480c      	ldr	r0, [pc, #48]	; (80035fc <print_call_stack+0xc0>)
 80035cc:	f7ff feb0 	bl	8003330 <printf_>
                        call_stack_info);
        } else {
            cmb_println(print_info[PRINT_CALL_STACK_ERR]);
        }
    }
 80035d0:	e006      	b.n	80035e0 <print_call_stack+0xa4>
            cmb_println(print_info[PRINT_CALL_STACK_ERR]);
 80035d2:	4b0b      	ldr	r3, [pc, #44]	; (8003600 <print_call_stack+0xc4>)
 80035d4:	4618      	mov	r0, r3
 80035d6:	f7ff feab 	bl	8003330 <printf_>
 80035da:	4808      	ldr	r0, [pc, #32]	; (80035fc <print_call_stack+0xc0>)
 80035dc:	f7ff fea8 	bl	8003330 <printf_>
    }
 80035e0:	bf00      	nop
 80035e2:	3750      	adds	r7, #80	; 0x50
 80035e4:	46bd      	mov	sp, r7
 80035e6:	bd80      	pop	{r7, pc}
 80035e8:	20000b1c 	.word	0x20000b1c
 80035ec:	08009940 	.word	0x08009940
 80035f0:	08009230 	.word	0x08009230
 80035f4:	08009948 	.word	0x08009948
 80035f8:	08009950 	.word	0x08009950
 80035fc:	08009960 	.word	0x08009960
 8003600:	08009270 	.word	0x08009270

08003604 <backtrace_level_3>:
    void BackTraceSub(unsigned long sp);
    void backtrace_level_3(void)
    {
 8003604:	b598      	push	{r3, r4, r7, lr}
 8003606:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
 8003608:	490f      	ldr	r1, [pc, #60]	; (8003648 <backtrace_level_3+0x44>)
 800360a:	4810      	ldr	r0, [pc, #64]	; (800364c <backtrace_level_3+0x48>)
 800360c:	f7ff fe90 	bl	8003330 <printf_>
        dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
 8003610:	4b0f      	ldr	r3, [pc, #60]	; (8003650 <backtrace_level_3+0x4c>)
 8003612:	6818      	ldr	r0, [r3, #0]
 8003614:	4b0f      	ldr	r3, [pc, #60]	; (8003654 <backtrace_level_3+0x50>)
 8003616:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003618:	466a      	mov	r2, sp
 800361a:	4614      	mov	r4, r2
    return(result);
 800361c:	4622      	mov	r2, r4
 800361e:	4619      	mov	r1, r3
 8003620:	f7ff febe 	bl	80033a0 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003624:	466b      	mov	r3, sp
 8003626:	461c      	mov	r4, r3
    return(result);
 8003628:	4623      	mov	r3, r4

        print_call_stack(cmb_get_sp());
 800362a:	4618      	mov	r0, r3
 800362c:	f7ff ff86 	bl	800353c <print_call_stack>
        printf("======================\n");
 8003630:	4809      	ldr	r0, [pc, #36]	; (8003658 <backtrace_level_3+0x54>)
 8003632:	f7ff fe7d 	bl	8003330 <printf_>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003636:	466b      	mov	r3, sp
 8003638:	461c      	mov	r4, r3
    return(result);
 800363a:	4623      	mov	r3, r4
        BackTraceSub(cmb_get_sp());
 800363c:	4618      	mov	r0, r3
 800363e:	f000 f991 	bl	8003964 <BackTraceSub>
    }
 8003642:	bf00      	nop
 8003644:	bd98      	pop	{r3, r4, r7, pc}
 8003646:	bf00      	nop
 8003648:	08009ac4 	.word	0x08009ac4
 800364c:	08009964 	.word	0x08009964
 8003650:	20000b04 	.word	0x20000b04
 8003654:	20000b0c 	.word	0x20000b0c
 8003658:	0800996c 	.word	0x0800996c

0800365c <backtrace_level_2>:
    void backtrace_level_2(void)
    {
 800365c:	b580      	push	{r7, lr}
 800365e:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
 8003660:	4903      	ldr	r1, [pc, #12]	; (8003670 <backtrace_level_2+0x14>)
 8003662:	4804      	ldr	r0, [pc, #16]	; (8003674 <backtrace_level_2+0x18>)
 8003664:	f7ff fe64 	bl	8003330 <printf_>
        backtrace_level_3();
 8003668:	f7ff ffcc 	bl	8003604 <backtrace_level_3>
    }
 800366c:	bf00      	nop
 800366e:	bd80      	pop	{r7, pc}
 8003670:	08009ad8 	.word	0x08009ad8
 8003674:	08009964 	.word	0x08009964

08003678 <backtrace_level_1>:
    void backtrace_level_1(void)
    {
 8003678:	b580      	push	{r7, lr}
 800367a:	af00      	add	r7, sp, #0
        printf("[%s]\n", __func__);
 800367c:	4903      	ldr	r1, [pc, #12]	; (800368c <backtrace_level_1+0x14>)
 800367e:	4804      	ldr	r0, [pc, #16]	; (8003690 <backtrace_level_1+0x18>)
 8003680:	f7ff fe56 	bl	8003330 <printf_>
        backtrace_level_2();
 8003684:	f7ff ffea 	bl	800365c <backtrace_level_2>
    }
 8003688:	bf00      	nop
 800368a:	bd80      	pop	{r7, pc}
 800368c:	08009aec 	.word	0x08009aec
 8003690:	08009964 	.word	0x08009964

08003694 <backtrace_test>:
    void backtrace_test(void)
    {
 8003694:	b590      	push	{r4, r7, lr}
 8003696:	b089      	sub	sp, #36	; 0x24
 8003698:	af02      	add	r7, sp, #8
        int bt1 = 0xAA;
 800369a:	23aa      	movs	r3, #170	; 0xaa
 800369c:	613b      	str	r3, [r7, #16]
        int bt2 = 0x55;
 800369e:	2355      	movs	r3, #85	; 0x55
 80036a0:	60fb      	str	r3, [r7, #12]
        int bt3 = 0x77;
 80036a2:	2377      	movs	r3, #119	; 0x77
 80036a4:	60bb      	str	r3, [r7, #8]
        (void)bt1;
        (void)bt2;
        (void)bt3;

        code_start_addr = (uint32_t)&_stext;
 80036a6:	4a42      	ldr	r2, [pc, #264]	; (80037b0 <backtrace_test+0x11c>)
 80036a8:	4b42      	ldr	r3, [pc, #264]	; (80037b4 <backtrace_test+0x120>)
 80036aa:	601a      	str	r2, [r3, #0]
        code_end_addr = (uint32_t)&_etext;
 80036ac:	4a42      	ldr	r2, [pc, #264]	; (80037b8 <backtrace_test+0x124>)
 80036ae:	4b43      	ldr	r3, [pc, #268]	; (80037bc <backtrace_test+0x128>)
 80036b0:	601a      	str	r2, [r3, #0]
        code_size = code_end_addr - code_start_addr;
 80036b2:	4b42      	ldr	r3, [pc, #264]	; (80037bc <backtrace_test+0x128>)
 80036b4:	681a      	ldr	r2, [r3, #0]
 80036b6:	4b3f      	ldr	r3, [pc, #252]	; (80037b4 <backtrace_test+0x120>)
 80036b8:	681b      	ldr	r3, [r3, #0]
 80036ba:	1ad3      	subs	r3, r2, r3
 80036bc:	4a40      	ldr	r2, [pc, #256]	; (80037c0 <backtrace_test+0x12c>)
 80036be:	6013      	str	r3, [r2, #0]
        stack_start_addr = (uint32_t)&_sstack;
 80036c0:	4a40      	ldr	r2, [pc, #256]	; (80037c4 <backtrace_test+0x130>)
 80036c2:	4b41      	ldr	r3, [pc, #260]	; (80037c8 <backtrace_test+0x134>)
 80036c4:	601a      	str	r2, [r3, #0]
        stack_end_addr = (uint32_t)&_estack;
 80036c6:	4a41      	ldr	r2, [pc, #260]	; (80037cc <backtrace_test+0x138>)
 80036c8:	4b41      	ldr	r3, [pc, #260]	; (80037d0 <backtrace_test+0x13c>)
 80036ca:	601a      	str	r2, [r3, #0]
        stack_size = stack_end_addr - stack_start_addr;
 80036cc:	4b40      	ldr	r3, [pc, #256]	; (80037d0 <backtrace_test+0x13c>)
 80036ce:	681a      	ldr	r2, [r3, #0]
 80036d0:	4b3d      	ldr	r3, [pc, #244]	; (80037c8 <backtrace_test+0x134>)
 80036d2:	681b      	ldr	r3, [r3, #0]
 80036d4:	1ad3      	subs	r3, r2, r3
 80036d6:	4a3f      	ldr	r2, [pc, #252]	; (80037d4 <backtrace_test+0x140>)
 80036d8:	6013      	str	r3, [r2, #0]
        heap_start_addr = (uint32_t)&_sheap;
 80036da:	4a3f      	ldr	r2, [pc, #252]	; (80037d8 <backtrace_test+0x144>)
 80036dc:	4b3f      	ldr	r3, [pc, #252]	; (80037dc <backtrace_test+0x148>)
 80036de:	601a      	str	r2, [r3, #0]
        heap_end_addr = (uint32_t)&_eheap;
 80036e0:	4a3f      	ldr	r2, [pc, #252]	; (80037e0 <backtrace_test+0x14c>)
 80036e2:	4b40      	ldr	r3, [pc, #256]	; (80037e4 <backtrace_test+0x150>)
 80036e4:	601a      	str	r2, [r3, #0]
        heap_size = heap_end_addr - heap_start_addr;
 80036e6:	4b3f      	ldr	r3, [pc, #252]	; (80037e4 <backtrace_test+0x150>)
 80036e8:	681a      	ldr	r2, [r3, #0]
 80036ea:	4b3c      	ldr	r3, [pc, #240]	; (80037dc <backtrace_test+0x148>)
 80036ec:	681b      	ldr	r3, [r3, #0]
 80036ee:	1ad3      	subs	r3, r2, r3
 80036f0:	4a3d      	ldr	r2, [pc, #244]	; (80037e8 <backtrace_test+0x154>)
 80036f2:	6013      	str	r3, [r2, #0]
        printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
 80036f4:	4b2f      	ldr	r3, [pc, #188]	; (80037b4 <backtrace_test+0x120>)
 80036f6:	6819      	ldr	r1, [r3, #0]
 80036f8:	4b30      	ldr	r3, [pc, #192]	; (80037bc <backtrace_test+0x128>)
 80036fa:	6818      	ldr	r0, [r3, #0]
 80036fc:	4b30      	ldr	r3, [pc, #192]	; (80037c0 <backtrace_test+0x12c>)
 80036fe:	681b      	ldr	r3, [r3, #0]
 8003700:	4a2f      	ldr	r2, [pc, #188]	; (80037c0 <backtrace_test+0x12c>)
 8003702:	6812      	ldr	r2, [r2, #0]
 8003704:	9201      	str	r2, [sp, #4]
 8003706:	9300      	str	r3, [sp, #0]
 8003708:	4603      	mov	r3, r0
 800370a:	460a      	mov	r2, r1
 800370c:	4937      	ldr	r1, [pc, #220]	; (80037ec <backtrace_test+0x158>)
 800370e:	4838      	ldr	r0, [pc, #224]	; (80037f0 <backtrace_test+0x15c>)
 8003710:	f7ff fe0e 	bl	8003330 <printf_>
        __func__, code_start_addr, code_end_addr, code_size, code_size);
        printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
 8003714:	4b2c      	ldr	r3, [pc, #176]	; (80037c8 <backtrace_test+0x134>)
 8003716:	6819      	ldr	r1, [r3, #0]
 8003718:	4b2d      	ldr	r3, [pc, #180]	; (80037d0 <backtrace_test+0x13c>)
 800371a:	6818      	ldr	r0, [r3, #0]
 800371c:	4b2d      	ldr	r3, [pc, #180]	; (80037d4 <backtrace_test+0x140>)
 800371e:	681b      	ldr	r3, [r3, #0]
 8003720:	4a2c      	ldr	r2, [pc, #176]	; (80037d4 <backtrace_test+0x140>)
 8003722:	6812      	ldr	r2, [r2, #0]
 8003724:	9201      	str	r2, [sp, #4]
 8003726:	9300      	str	r3, [sp, #0]
 8003728:	4603      	mov	r3, r0
 800372a:	460a      	mov	r2, r1
 800372c:	492f      	ldr	r1, [pc, #188]	; (80037ec <backtrace_test+0x158>)
 800372e:	4831      	ldr	r0, [pc, #196]	; (80037f4 <backtrace_test+0x160>)
 8003730:	f7ff fdfe 	bl	8003330 <printf_>
        __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
        printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
 8003734:	4b29      	ldr	r3, [pc, #164]	; (80037dc <backtrace_test+0x148>)
 8003736:	6819      	ldr	r1, [r3, #0]
 8003738:	4b2a      	ldr	r3, [pc, #168]	; (80037e4 <backtrace_test+0x150>)
 800373a:	6818      	ldr	r0, [r3, #0]
 800373c:	4b2a      	ldr	r3, [pc, #168]	; (80037e8 <backtrace_test+0x154>)
 800373e:	681b      	ldr	r3, [r3, #0]
 8003740:	4a29      	ldr	r2, [pc, #164]	; (80037e8 <backtrace_test+0x154>)
 8003742:	6812      	ldr	r2, [r2, #0]
 8003744:	9201      	str	r2, [sp, #4]
 8003746:	9300      	str	r3, [sp, #0]
 8003748:	4603      	mov	r3, r0
 800374a:	460a      	mov	r2, r1
 800374c:	4927      	ldr	r1, [pc, #156]	; (80037ec <backtrace_test+0x158>)
 800374e:	482a      	ldr	r0, [pc, #168]	; (80037f8 <backtrace_test+0x164>)
 8003750:	f7ff fdee 	bl	8003330 <printf_>
  \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
           Can only be executed in Privileged modes.
 */
__STATIC_FORCEINLINE void __enable_irq(void)
{
  __ASM volatile ("cpsie i" : : : "memory");
 8003754:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8003756:	466b      	mov	r3, sp
 8003758:	461c      	mov	r4, r3
    return(result);
 800375a:	4623      	mov	r3, r4
         // printf("[%s] start\n", __func__);
         // test_div();

         // __asm("svc 0");
         // printf("[%s] end\n", __func__);
         uint32_t sp = cmb_get_sp();
 800375c:	617b      	str	r3, [r7, #20]
         printf("sp=0x%lx\n", sp);
 800375e:	6979      	ldr	r1, [r7, #20]
 8003760:	4826      	ldr	r0, [pc, #152]	; (80037fc <backtrace_test+0x168>)
 8003762:	f7ff fde5 	bl	8003330 <printf_>
         区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
         blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
         进行计算
         */
         uint32_t addr;
         while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 8003766:	e01b      	b.n	80037a0 <backtrace_test+0x10c>
             //sp 在代码段内
             addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
 8003768:	697b      	ldr	r3, [r7, #20]
 800376a:	681b      	ldr	r3, [r3, #0]
 800376c:	607b      	str	r3, [r7, #4]
             printf("addr :%08x\n", addr);
 800376e:	6879      	ldr	r1, [r7, #4]
 8003770:	4823      	ldr	r0, [pc, #140]	; (8003800 <backtrace_test+0x16c>)
 8003772:	f7ff fddd 	bl	8003330 <printf_>
             if ((addr >= (uint32_t)&_stext) &&
 8003776:	4a0e      	ldr	r2, [pc, #56]	; (80037b0 <backtrace_test+0x11c>)
 8003778:	687b      	ldr	r3, [r7, #4]
 800377a:	4293      	cmp	r3, r2
 800377c:	d30d      	bcc.n	800379a <backtrace_test+0x106>
             (sp <= (uint32_t)&_etext) &&
 800377e:	4a0e      	ldr	r2, [pc, #56]	; (80037b8 <backtrace_test+0x124>)
             if ((addr >= (uint32_t)&_stext) &&
 8003780:	697b      	ldr	r3, [r7, #20]
 8003782:	4293      	cmp	r3, r2
 8003784:	d809      	bhi.n	800379a <backtrace_test+0x106>
             IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
 8003786:	687b      	ldr	r3, [r7, #4]
 8003788:	3b01      	subs	r3, #1
 800378a:	f003 0301 	and.w	r3, r3, #1
             (sp <= (uint32_t)&_etext) &&
 800378e:	2b00      	cmp	r3, #0
 8003790:	d103      	bne.n	800379a <backtrace_test+0x106>

                 printf("find ld 0x%08x\n", addr);
 8003792:	6879      	ldr	r1, [r7, #4]
 8003794:	481b      	ldr	r0, [pc, #108]	; (8003804 <backtrace_test+0x170>)
 8003796:	f7ff fdcb 	bl	8003330 <printf_>
             }
             sp += 4;
 800379a:	697b      	ldr	r3, [r7, #20]
 800379c:	3304      	adds	r3, #4
 800379e:	617b      	str	r3, [r7, #20]
         while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 80037a0:	4a0a      	ldr	r2, [pc, #40]	; (80037cc <backtrace_test+0x138>)
 80037a2:	697b      	ldr	r3, [r7, #20]
 80037a4:	4293      	cmp	r3, r2
 80037a6:	d3df      	bcc.n	8003768 <backtrace_test+0xd4>
         }
         backtrace_level_1();
 80037a8:	f7ff ff66 	bl	8003678 <backtrace_level_1>
//         fault_test_by_div0();
//         fault_test_by_unalign();
         while(1);
 80037ac:	e7fe      	b.n	80037ac <backtrace_test+0x118>
 80037ae:	bf00      	nop
 80037b0:	08000000 	.word	0x08000000
 80037b4:	20000af8 	.word	0x20000af8
 80037b8:	08009da4 	.word	0x08009da4
 80037bc:	20000afc 	.word	0x20000afc
 80037c0:	20000b00 	.word	0x20000b00
 80037c4:	20016fff 	.word	0x20016fff
 80037c8:	20000b04 	.word	0x20000b04
 80037cc:	20017fff 	.word	0x20017fff
 80037d0:	20000b08 	.word	0x20000b08
 80037d4:	20000b0c 	.word	0x20000b0c
 80037d8:	20000c58 	.word	0x20000c58
 80037dc:	20000b10 	.word	0x20000b10
 80037e0:	20000c58 	.word	0x20000c58
 80037e4:	20000b14 	.word	0x20000b14
 80037e8:	20000b18 	.word	0x20000b18
 80037ec:	08009b00 	.word	0x08009b00
 80037f0:	08009984 	.word	0x08009984
 80037f4:	080099cc 	.word	0x080099cc
 80037f8:	08009a14 	.word	0x08009a14
 80037fc:	08009a5c 	.word	0x08009a5c
 8003800:	08009a68 	.word	0x08009a68
 8003804:	08009a74 	.word	0x08009a74

08003808 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
 8003808:	b480      	push	{r7}
 800380a:	b083      	sub	sp, #12
 800380c:	af00      	add	r7, sp, #0
 800380e:	6078      	str	r0, [r7, #4]
        while (addr > (unsigned long)code_start_addr) {
 8003810:	e00e      	b.n	8003830 <LoopUntilEntry+0x28>
            if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
 8003812:	687b      	ldr	r3, [r7, #4]
 8003814:	881b      	ldrh	r3, [r3, #0]
 8003816:	0a1b      	lsrs	r3, r3, #8
 8003818:	b29b      	uxth	r3, r3
 800381a:	2bb5      	cmp	r3, #181	; 0xb5
 800381c:	d00d      	beq.n	800383a <LoopUntilEntry+0x32>
 800381e:	687b      	ldr	r3, [r7, #4]
 8003820:	881b      	ldrh	r3, [r3, #0]
 8003822:	0a1b      	lsrs	r3, r3, #8
 8003824:	b29b      	uxth	r3, r3
 8003826:	2bb4      	cmp	r3, #180	; 0xb4
 8003828:	d007      	beq.n	800383a <LoopUntilEntry+0x32>
                break;
            }
            addr -= THUM_OFFSET;
 800382a:	687b      	ldr	r3, [r7, #4]
 800382c:	3b02      	subs	r3, #2
 800382e:	607b      	str	r3, [r7, #4]
        while (addr > (unsigned long)code_start_addr) {
 8003830:	4b05      	ldr	r3, [pc, #20]	; (8003848 <LoopUntilEntry+0x40>)
 8003832:	681b      	ldr	r3, [r3, #0]
 8003834:	687a      	ldr	r2, [r7, #4]
 8003836:	429a      	cmp	r2, r3
 8003838:	d8eb      	bhi.n	8003812 <LoopUntilEntry+0xa>
        }

        return addr;
 800383a:	687b      	ldr	r3, [r7, #4]
}
 800383c:	4618      	mov	r0, r3
 800383e:	370c      	adds	r7, #12
 8003840:	46bd      	mov	sp, r7
 8003842:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003846:	4770      	bx	lr
 8003848:	20000af8 	.word	0x20000af8

0800384c <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
 800384c:	b480      	push	{r7}
 800384e:	b087      	sub	sp, #28
 8003850:	af00      	add	r7, sp, #0
 8003852:	6078      	str	r0, [r7, #4]
        unsigned long target = 0;
 8003854:	2300      	movs	r3, #0
 8003856:	617b      	str	r3, [r7, #20]
        uint32_t off0, off1, off;

        if (*(uint16_t *)bl & SIGN_BIT_MASK) {
 8003858:	687b      	ldr	r3, [r7, #4]
 800385a:	881b      	ldrh	r3, [r3, #0]
 800385c:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8003860:	2b00      	cmp	r3, #0
 8003862:	d00b      	beq.n	800387c <CalculateBLTargetAddress+0x30>
            off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 8003864:	687b      	ldr	r3, [r7, #4]
 8003866:	881b      	ldrh	r3, [r3, #0]
 8003868:	f3c3 030a 	ubfx	r3, r3, #0, #11
 800386c:	60fb      	str	r3, [r7, #12]
            off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 800386e:	687b      	ldr	r3, [r7, #4]
 8003870:	3302      	adds	r3, #2
 8003872:	881b      	ldrh	r3, [r3, #0]
 8003874:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003878:	613b      	str	r3, [r7, #16]
 800387a:	e00a      	b.n	8003892 <CalculateBLTargetAddress+0x46>
        } else {
            off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 800387c:	687b      	ldr	r3, [r7, #4]
 800387e:	881b      	ldrh	r3, [r3, #0]
 8003880:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003884:	613b      	str	r3, [r7, #16]
            off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 8003886:	687b      	ldr	r3, [r7, #4]
 8003888:	3302      	adds	r3, #2
 800388a:	881b      	ldrh	r3, [r3, #0]
 800388c:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8003890:	60fb      	str	r3, [r7, #12]
        }
        off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
 8003892:	693b      	ldr	r3, [r7, #16]
 8003894:	031a      	lsls	r2, r3, #12
 8003896:	68fb      	ldr	r3, [r7, #12]
 8003898:	005b      	lsls	r3, r3, #1
 800389a:	4413      	add	r3, r2
 800389c:	60bb      	str	r3, [r7, #8]
        if (off & SIGN_BIT_MASK) {
 800389e:	68bb      	ldr	r3, [r7, #8]
 80038a0:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80038a4:	2b00      	cmp	r3, #0
 80038a6:	d008      	beq.n	80038ba <CalculateBLTargetAddress+0x6e>
            target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
 80038a8:	68bb      	ldr	r3, [r7, #8]
 80038aa:	425b      	negs	r3, r3
 80038ac:	f3c3 0316 	ubfx	r3, r3, #0, #23
 80038b0:	687a      	ldr	r2, [r7, #4]
 80038b2:	1ad3      	subs	r3, r2, r3
 80038b4:	3304      	adds	r3, #4
 80038b6:	617b      	str	r3, [r7, #20]
 80038b8:	e004      	b.n	80038c4 <CalculateBLTargetAddress+0x78>
        } else {
            target = bl + BL_CMD_OFFSET + off;
 80038ba:	687a      	ldr	r2, [r7, #4]
 80038bc:	68bb      	ldr	r3, [r7, #8]
 80038be:	4413      	add	r3, r2
 80038c0:	3304      	adds	r3, #4
 80038c2:	617b      	str	r3, [r7, #20]
        }

        return target;
 80038c4:	697b      	ldr	r3, [r7, #20]
}
 80038c6:	4618      	mov	r0, r3
 80038c8:	371c      	adds	r7, #28
 80038ca:	46bd      	mov	sp, r7
 80038cc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80038d0:	4770      	bx	lr
	...

080038d4 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
 80038d4:	b580      	push	{r7, lr}
 80038d6:	b084      	sub	sp, #16
 80038d8:	af00      	add	r7, sp, #0
 80038da:	6078      	str	r0, [r7, #4]
        unsigned long target = 0;
 80038dc:	2300      	movs	r3, #0
 80038de:	60fb      	str	r3, [r7, #12]
        static unsigned long tmpBL = 0;

        if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
 80038e0:	687b      	ldr	r3, [r7, #4]
 80038e2:	3b02      	subs	r3, #2
 80038e4:	881b      	ldrh	r3, [r3, #0]
 80038e6:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 80038ea:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 80038ee:	d11a      	bne.n	8003926 <CalculateTargetAddress+0x52>
            if (tmpBL != 0) {
 80038f0:	4b1b      	ldr	r3, [pc, #108]	; (8003960 <CalculateTargetAddress+0x8c>)
 80038f2:	681b      	ldr	r3, [r3, #0]
 80038f4:	2b00      	cmp	r3, #0
 80038f6:	d00b      	beq.n	8003910 <CalculateTargetAddress+0x3c>
                target = LoopUntilEntry (tmpBL);
 80038f8:	4b19      	ldr	r3, [pc, #100]	; (8003960 <CalculateTargetAddress+0x8c>)
 80038fa:	681b      	ldr	r3, [r3, #0]
 80038fc:	4618      	mov	r0, r3
 80038fe:	f7ff ff83 	bl	8003808 <LoopUntilEntry>
 8003902:	60f8      	str	r0, [r7, #12]
                tmpBL = bl - BLX_CMD_OFFSET;
 8003904:	687b      	ldr	r3, [r7, #4]
 8003906:	3b02      	subs	r3, #2
 8003908:	4a15      	ldr	r2, [pc, #84]	; (8003960 <CalculateTargetAddress+0x8c>)
 800390a:	6013      	str	r3, [r2, #0]
                return target;
 800390c:	68fb      	ldr	r3, [r7, #12]
 800390e:	e023      	b.n	8003958 <CalculateTargetAddress+0x84>
            }
            tmpBL = bl - BLX_CMD_OFFSET;
 8003910:	687b      	ldr	r3, [r7, #4]
 8003912:	3b02      	subs	r3, #2
 8003914:	4a12      	ldr	r2, [pc, #72]	; (8003960 <CalculateTargetAddress+0x8c>)
 8003916:	6013      	str	r3, [r2, #0]
            return LoopUntilEntry(tmpBL);
 8003918:	4b11      	ldr	r3, [pc, #68]	; (8003960 <CalculateTargetAddress+0x8c>)
 800391a:	681b      	ldr	r3, [r3, #0]
 800391c:	4618      	mov	r0, r3
 800391e:	f7ff ff73 	bl	8003808 <LoopUntilEntry>
 8003922:	4603      	mov	r3, r0
 8003924:	e018      	b.n	8003958 <CalculateTargetAddress+0x84>
        } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
 8003926:	687b      	ldr	r3, [r7, #4]
 8003928:	3b04      	subs	r3, #4
 800392a:	681b      	ldr	r3, [r3, #0]
 800392c:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
 8003930:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
 8003934:	d10f      	bne.n	8003956 <CalculateTargetAddress+0x82>
            tmpBL = bl - BL_CMD_OFFSET;
 8003936:	687b      	ldr	r3, [r7, #4]
 8003938:	3b04      	subs	r3, #4
 800393a:	4a09      	ldr	r2, [pc, #36]	; (8003960 <CalculateTargetAddress+0x8c>)
 800393c:	6013      	str	r3, [r2, #0]
            CalculateBLTargetAddress (tmpBL);
 800393e:	4b08      	ldr	r3, [pc, #32]	; (8003960 <CalculateTargetAddress+0x8c>)
 8003940:	681b      	ldr	r3, [r3, #0]
 8003942:	4618      	mov	r0, r3
 8003944:	f7ff ff82 	bl	800384c <CalculateBLTargetAddress>

            return CalculateBLTargetAddress (tmpBL);
 8003948:	4b05      	ldr	r3, [pc, #20]	; (8003960 <CalculateTargetAddress+0x8c>)
 800394a:	681b      	ldr	r3, [r3, #0]
 800394c:	4618      	mov	r0, r3
 800394e:	f7ff ff7d 	bl	800384c <CalculateBLTargetAddress>
 8003952:	4603      	mov	r3, r0
 8003954:	e000      	b.n	8003958 <CalculateTargetAddress+0x84>
        }

        return 0;
 8003956:	2300      	movs	r3, #0
}
 8003958:	4618      	mov	r0, r3
 800395a:	3710      	adds	r7, #16
 800395c:	46bd      	mov	sp, r7
 800395e:	bd80      	pop	{r7, pc}
 8003960:	20000bac 	.word	0x20000bac

08003964 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
 8003964:	b580      	push	{r7, lr}
 8003966:	b086      	sub	sp, #24
 8003968:	af00      	add	r7, sp, #0
 800396a:	6078      	str	r0, [r7, #4]
        unsigned long stackPointer = sp;
 800396c:	687b      	ldr	r3, [r7, #4]
 800396e:	617b      	str	r3, [r7, #20]
        uint32_t count = 0;
 8003970:	2300      	movs	r3, #0
 8003972:	613b      	str	r3, [r7, #16]
        static unsigned long tmpJump = 0;


        while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 8003974:	e03b      	b.n	80039ee <BackTraceSub+0x8a>
            if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 8003976:	697b      	ldr	r3, [r7, #20]
 8003978:	681a      	ldr	r2, [r3, #0]
 800397a:	4b23      	ldr	r3, [pc, #140]	; (8003a08 <BackTraceSub+0xa4>)
 800397c:	681b      	ldr	r3, [r3, #0]
 800397e:	429a      	cmp	r2, r3
 8003980:	d32e      	bcc.n	80039e0 <BackTraceSub+0x7c>
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 8003982:	697b      	ldr	r3, [r7, #20]
 8003984:	681a      	ldr	r2, [r3, #0]
 8003986:	4b21      	ldr	r3, [pc, #132]	; (8003a0c <BackTraceSub+0xa8>)
 8003988:	681b      	ldr	r3, [r3, #0]
            if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 800398a:	429a      	cmp	r2, r3
 800398c:	d828      	bhi.n	80039e0 <BackTraceSub+0x7c>
            IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
 800398e:	697b      	ldr	r3, [r7, #20]
 8003990:	681b      	ldr	r3, [r3, #0]
 8003992:	3b01      	subs	r3, #1
 8003994:	f003 0301 	and.w	r3, r3, #1
            (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 8003998:	2b00      	cmp	r3, #0
 800399a:	d121      	bne.n	80039e0 <BackTraceSub+0x7c>

                /* Get the entry address of current function. */
                unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
 800399c:	697b      	ldr	r3, [r7, #20]
 800399e:	681b      	ldr	r3, [r3, #0]
 80039a0:	3b01      	subs	r3, #1
 80039a2:	4618      	mov	r0, r3
 80039a4:	f7ff ff96 	bl	80038d4 <CalculateTargetAddress>
 80039a8:	60f8      	str	r0, [r7, #12]
                if ((checkBL == 0) || (checkBL == tmpJump)) {
 80039aa:	68fb      	ldr	r3, [r7, #12]
 80039ac:	2b00      	cmp	r3, #0
 80039ae:	d004      	beq.n	80039ba <BackTraceSub+0x56>
 80039b0:	4b17      	ldr	r3, [pc, #92]	; (8003a10 <BackTraceSub+0xac>)
 80039b2:	681b      	ldr	r3, [r3, #0]
 80039b4:	68fa      	ldr	r2, [r7, #12]
 80039b6:	429a      	cmp	r2, r3
 80039b8:	d103      	bne.n	80039c2 <BackTraceSub+0x5e>
                    stackPointer += STACK_OFFSET;
 80039ba:	697b      	ldr	r3, [r7, #20]
 80039bc:	3304      	adds	r3, #4
 80039be:	617b      	str	r3, [r7, #20]
                    continue;
 80039c0:	e015      	b.n	80039ee <BackTraceSub+0x8a>
                }
                tmpJump = checkBL;
 80039c2:	4a13      	ldr	r2, [pc, #76]	; (8003a10 <BackTraceSub+0xac>)
 80039c4:	68fb      	ldr	r3, [r7, #12]
 80039c6:	6013      	str	r3, [r2, #0]
                count++;
 80039c8:	693b      	ldr	r3, [r7, #16]
 80039ca:	3301      	adds	r3, #1
 80039cc:	613b      	str	r3, [r7, #16]
                printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
 80039ce:	697b      	ldr	r3, [r7, #20]
 80039d0:	681b      	ldr	r3, [r3, #0]
 80039d2:	1e5a      	subs	r2, r3, #1
 80039d4:	4b0e      	ldr	r3, [pc, #56]	; (8003a10 <BackTraceSub+0xac>)
 80039d6:	681b      	ldr	r3, [r3, #0]
 80039d8:	6939      	ldr	r1, [r7, #16]
 80039da:	480e      	ldr	r0, [pc, #56]	; (8003a14 <BackTraceSub+0xb0>)
 80039dc:	f7ff fca8 	bl	8003330 <printf_>
            }
            stackPointer += STACK_OFFSET;
 80039e0:	697b      	ldr	r3, [r7, #20]
 80039e2:	3304      	adds	r3, #4
 80039e4:	617b      	str	r3, [r7, #20]
            printf("stackPointer=0x%x\n",stackPointer);
 80039e6:	6979      	ldr	r1, [r7, #20]
 80039e8:	480b      	ldr	r0, [pc, #44]	; (8003a18 <BackTraceSub+0xb4>)
 80039ea:	f7ff fca1 	bl	8003330 <printf_>
        while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 80039ee:	4b0b      	ldr	r3, [pc, #44]	; (8003a1c <BackTraceSub+0xb8>)
 80039f0:	681b      	ldr	r3, [r3, #0]
 80039f2:	697a      	ldr	r2, [r7, #20]
 80039f4:	429a      	cmp	r2, r3
 80039f6:	d202      	bcs.n	80039fe <BackTraceSub+0x9a>
 80039f8:	693b      	ldr	r3, [r7, #16]
 80039fa:	2b0e      	cmp	r3, #14
 80039fc:	d9bb      	bls.n	8003976 <BackTraceSub+0x12>
        }
}
 80039fe:	bf00      	nop
 8003a00:	3718      	adds	r7, #24
 8003a02:	46bd      	mov	sp, r7
 8003a04:	bd80      	pop	{r7, pc}
 8003a06:	bf00      	nop
 8003a08:	20000af8 	.word	0x20000af8
 8003a0c:	20000afc 	.word	0x20000afc
 8003a10:	20000bb0 	.word	0x20000bb0
 8003a14:	08009a84 	.word	0x08009a84
 8003a18:	08009ab0 	.word	0x08009ab0
 8003a1c:	20000b08 	.word	0x20000b08

08003a20 <__aeabi_uldivmod>:
 8003a20:	b953      	cbnz	r3, 8003a38 <__aeabi_uldivmod+0x18>
 8003a22:	b94a      	cbnz	r2, 8003a38 <__aeabi_uldivmod+0x18>
 8003a24:	2900      	cmp	r1, #0
 8003a26:	bf08      	it	eq
 8003a28:	2800      	cmpeq	r0, #0
 8003a2a:	bf1c      	itt	ne
 8003a2c:	f04f 31ff 	movne.w	r1, #4294967295
 8003a30:	f04f 30ff 	movne.w	r0, #4294967295
 8003a34:	f000 b972 	b.w	8003d1c <__aeabi_idiv0>
 8003a38:	f1ad 0c08 	sub.w	ip, sp, #8
 8003a3c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8003a40:	f000 f806 	bl	8003a50 <__udivmoddi4>
 8003a44:	f8dd e004 	ldr.w	lr, [sp, #4]
 8003a48:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003a4c:	b004      	add	sp, #16
 8003a4e:	4770      	bx	lr

08003a50 <__udivmoddi4>:
 8003a50:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003a54:	9e08      	ldr	r6, [sp, #32]
 8003a56:	4604      	mov	r4, r0
 8003a58:	4688      	mov	r8, r1
 8003a5a:	2b00      	cmp	r3, #0
 8003a5c:	d14b      	bne.n	8003af6 <__udivmoddi4+0xa6>
 8003a5e:	428a      	cmp	r2, r1
 8003a60:	4615      	mov	r5, r2
 8003a62:	d967      	bls.n	8003b34 <__udivmoddi4+0xe4>
 8003a64:	fab2 f282 	clz	r2, r2
 8003a68:	b14a      	cbz	r2, 8003a7e <__udivmoddi4+0x2e>
 8003a6a:	f1c2 0720 	rsb	r7, r2, #32
 8003a6e:	fa01 f302 	lsl.w	r3, r1, r2
 8003a72:	fa20 f707 	lsr.w	r7, r0, r7
 8003a76:	4095      	lsls	r5, r2
 8003a78:	ea47 0803 	orr.w	r8, r7, r3
 8003a7c:	4094      	lsls	r4, r2
 8003a7e:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8003a82:	0c23      	lsrs	r3, r4, #16
 8003a84:	fbb8 f7fe 	udiv	r7, r8, lr
 8003a88:	fa1f fc85 	uxth.w	ip, r5
 8003a8c:	fb0e 8817 	mls	r8, lr, r7, r8
 8003a90:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8003a94:	fb07 f10c 	mul.w	r1, r7, ip
 8003a98:	4299      	cmp	r1, r3
 8003a9a:	d909      	bls.n	8003ab0 <__udivmoddi4+0x60>
 8003a9c:	18eb      	adds	r3, r5, r3
 8003a9e:	f107 30ff 	add.w	r0, r7, #4294967295
 8003aa2:	f080 811b 	bcs.w	8003cdc <__udivmoddi4+0x28c>
 8003aa6:	4299      	cmp	r1, r3
 8003aa8:	f240 8118 	bls.w	8003cdc <__udivmoddi4+0x28c>
 8003aac:	3f02      	subs	r7, #2
 8003aae:	442b      	add	r3, r5
 8003ab0:	1a5b      	subs	r3, r3, r1
 8003ab2:	b2a4      	uxth	r4, r4
 8003ab4:	fbb3 f0fe 	udiv	r0, r3, lr
 8003ab8:	fb0e 3310 	mls	r3, lr, r0, r3
 8003abc:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8003ac0:	fb00 fc0c 	mul.w	ip, r0, ip
 8003ac4:	45a4      	cmp	ip, r4
 8003ac6:	d909      	bls.n	8003adc <__udivmoddi4+0x8c>
 8003ac8:	192c      	adds	r4, r5, r4
 8003aca:	f100 33ff 	add.w	r3, r0, #4294967295
 8003ace:	f080 8107 	bcs.w	8003ce0 <__udivmoddi4+0x290>
 8003ad2:	45a4      	cmp	ip, r4
 8003ad4:	f240 8104 	bls.w	8003ce0 <__udivmoddi4+0x290>
 8003ad8:	3802      	subs	r0, #2
 8003ada:	442c      	add	r4, r5
 8003adc:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8003ae0:	eba4 040c 	sub.w	r4, r4, ip
 8003ae4:	2700      	movs	r7, #0
 8003ae6:	b11e      	cbz	r6, 8003af0 <__udivmoddi4+0xa0>
 8003ae8:	40d4      	lsrs	r4, r2
 8003aea:	2300      	movs	r3, #0
 8003aec:	e9c6 4300 	strd	r4, r3, [r6]
 8003af0:	4639      	mov	r1, r7
 8003af2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003af6:	428b      	cmp	r3, r1
 8003af8:	d909      	bls.n	8003b0e <__udivmoddi4+0xbe>
 8003afa:	2e00      	cmp	r6, #0
 8003afc:	f000 80eb 	beq.w	8003cd6 <__udivmoddi4+0x286>
 8003b00:	2700      	movs	r7, #0
 8003b02:	e9c6 0100 	strd	r0, r1, [r6]
 8003b06:	4638      	mov	r0, r7
 8003b08:	4639      	mov	r1, r7
 8003b0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003b0e:	fab3 f783 	clz	r7, r3
 8003b12:	2f00      	cmp	r7, #0
 8003b14:	d147      	bne.n	8003ba6 <__udivmoddi4+0x156>
 8003b16:	428b      	cmp	r3, r1
 8003b18:	d302      	bcc.n	8003b20 <__udivmoddi4+0xd0>
 8003b1a:	4282      	cmp	r2, r0
 8003b1c:	f200 80fa 	bhi.w	8003d14 <__udivmoddi4+0x2c4>
 8003b20:	1a84      	subs	r4, r0, r2
 8003b22:	eb61 0303 	sbc.w	r3, r1, r3
 8003b26:	2001      	movs	r0, #1
 8003b28:	4698      	mov	r8, r3
 8003b2a:	2e00      	cmp	r6, #0
 8003b2c:	d0e0      	beq.n	8003af0 <__udivmoddi4+0xa0>
 8003b2e:	e9c6 4800 	strd	r4, r8, [r6]
 8003b32:	e7dd      	b.n	8003af0 <__udivmoddi4+0xa0>
 8003b34:	b902      	cbnz	r2, 8003b38 <__udivmoddi4+0xe8>
 8003b36:	deff      	udf	#255	; 0xff
 8003b38:	fab2 f282 	clz	r2, r2
 8003b3c:	2a00      	cmp	r2, #0
 8003b3e:	f040 808f 	bne.w	8003c60 <__udivmoddi4+0x210>
 8003b42:	1b49      	subs	r1, r1, r5
 8003b44:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8003b48:	fa1f f885 	uxth.w	r8, r5
 8003b4c:	2701      	movs	r7, #1
 8003b4e:	fbb1 fcfe 	udiv	ip, r1, lr
 8003b52:	0c23      	lsrs	r3, r4, #16
 8003b54:	fb0e 111c 	mls	r1, lr, ip, r1
 8003b58:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8003b5c:	fb08 f10c 	mul.w	r1, r8, ip
 8003b60:	4299      	cmp	r1, r3
 8003b62:	d907      	bls.n	8003b74 <__udivmoddi4+0x124>
 8003b64:	18eb      	adds	r3, r5, r3
 8003b66:	f10c 30ff 	add.w	r0, ip, #4294967295
 8003b6a:	d202      	bcs.n	8003b72 <__udivmoddi4+0x122>
 8003b6c:	4299      	cmp	r1, r3
 8003b6e:	f200 80cd 	bhi.w	8003d0c <__udivmoddi4+0x2bc>
 8003b72:	4684      	mov	ip, r0
 8003b74:	1a59      	subs	r1, r3, r1
 8003b76:	b2a3      	uxth	r3, r4
 8003b78:	fbb1 f0fe 	udiv	r0, r1, lr
 8003b7c:	fb0e 1410 	mls	r4, lr, r0, r1
 8003b80:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8003b84:	fb08 f800 	mul.w	r8, r8, r0
 8003b88:	45a0      	cmp	r8, r4
 8003b8a:	d907      	bls.n	8003b9c <__udivmoddi4+0x14c>
 8003b8c:	192c      	adds	r4, r5, r4
 8003b8e:	f100 33ff 	add.w	r3, r0, #4294967295
 8003b92:	d202      	bcs.n	8003b9a <__udivmoddi4+0x14a>
 8003b94:	45a0      	cmp	r8, r4
 8003b96:	f200 80b6 	bhi.w	8003d06 <__udivmoddi4+0x2b6>
 8003b9a:	4618      	mov	r0, r3
 8003b9c:	eba4 0408 	sub.w	r4, r4, r8
 8003ba0:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8003ba4:	e79f      	b.n	8003ae6 <__udivmoddi4+0x96>
 8003ba6:	f1c7 0c20 	rsb	ip, r7, #32
 8003baa:	40bb      	lsls	r3, r7
 8003bac:	fa22 fe0c 	lsr.w	lr, r2, ip
 8003bb0:	ea4e 0e03 	orr.w	lr, lr, r3
 8003bb4:	fa01 f407 	lsl.w	r4, r1, r7
 8003bb8:	fa20 f50c 	lsr.w	r5, r0, ip
 8003bbc:	fa21 f30c 	lsr.w	r3, r1, ip
 8003bc0:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8003bc4:	4325      	orrs	r5, r4
 8003bc6:	fbb3 f9f8 	udiv	r9, r3, r8
 8003bca:	0c2c      	lsrs	r4, r5, #16
 8003bcc:	fb08 3319 	mls	r3, r8, r9, r3
 8003bd0:	fa1f fa8e 	uxth.w	sl, lr
 8003bd4:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8003bd8:	fb09 f40a 	mul.w	r4, r9, sl
 8003bdc:	429c      	cmp	r4, r3
 8003bde:	fa02 f207 	lsl.w	r2, r2, r7
 8003be2:	fa00 f107 	lsl.w	r1, r0, r7
 8003be6:	d90b      	bls.n	8003c00 <__udivmoddi4+0x1b0>
 8003be8:	eb1e 0303 	adds.w	r3, lr, r3
 8003bec:	f109 30ff 	add.w	r0, r9, #4294967295
 8003bf0:	f080 8087 	bcs.w	8003d02 <__udivmoddi4+0x2b2>
 8003bf4:	429c      	cmp	r4, r3
 8003bf6:	f240 8084 	bls.w	8003d02 <__udivmoddi4+0x2b2>
 8003bfa:	f1a9 0902 	sub.w	r9, r9, #2
 8003bfe:	4473      	add	r3, lr
 8003c00:	1b1b      	subs	r3, r3, r4
 8003c02:	b2ad      	uxth	r5, r5
 8003c04:	fbb3 f0f8 	udiv	r0, r3, r8
 8003c08:	fb08 3310 	mls	r3, r8, r0, r3
 8003c0c:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8003c10:	fb00 fa0a 	mul.w	sl, r0, sl
 8003c14:	45a2      	cmp	sl, r4
 8003c16:	d908      	bls.n	8003c2a <__udivmoddi4+0x1da>
 8003c18:	eb1e 0404 	adds.w	r4, lr, r4
 8003c1c:	f100 33ff 	add.w	r3, r0, #4294967295
 8003c20:	d26b      	bcs.n	8003cfa <__udivmoddi4+0x2aa>
 8003c22:	45a2      	cmp	sl, r4
 8003c24:	d969      	bls.n	8003cfa <__udivmoddi4+0x2aa>
 8003c26:	3802      	subs	r0, #2
 8003c28:	4474      	add	r4, lr
 8003c2a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8003c2e:	fba0 8902 	umull	r8, r9, r0, r2
 8003c32:	eba4 040a 	sub.w	r4, r4, sl
 8003c36:	454c      	cmp	r4, r9
 8003c38:	46c2      	mov	sl, r8
 8003c3a:	464b      	mov	r3, r9
 8003c3c:	d354      	bcc.n	8003ce8 <__udivmoddi4+0x298>
 8003c3e:	d051      	beq.n	8003ce4 <__udivmoddi4+0x294>
 8003c40:	2e00      	cmp	r6, #0
 8003c42:	d069      	beq.n	8003d18 <__udivmoddi4+0x2c8>
 8003c44:	ebb1 050a 	subs.w	r5, r1, sl
 8003c48:	eb64 0403 	sbc.w	r4, r4, r3
 8003c4c:	fa04 fc0c 	lsl.w	ip, r4, ip
 8003c50:	40fd      	lsrs	r5, r7
 8003c52:	40fc      	lsrs	r4, r7
 8003c54:	ea4c 0505 	orr.w	r5, ip, r5
 8003c58:	e9c6 5400 	strd	r5, r4, [r6]
 8003c5c:	2700      	movs	r7, #0
 8003c5e:	e747      	b.n	8003af0 <__udivmoddi4+0xa0>
 8003c60:	f1c2 0320 	rsb	r3, r2, #32
 8003c64:	fa20 f703 	lsr.w	r7, r0, r3
 8003c68:	4095      	lsls	r5, r2
 8003c6a:	fa01 f002 	lsl.w	r0, r1, r2
 8003c6e:	fa21 f303 	lsr.w	r3, r1, r3
 8003c72:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8003c76:	4338      	orrs	r0, r7
 8003c78:	0c01      	lsrs	r1, r0, #16
 8003c7a:	fbb3 f7fe 	udiv	r7, r3, lr
 8003c7e:	fa1f f885 	uxth.w	r8, r5
 8003c82:	fb0e 3317 	mls	r3, lr, r7, r3
 8003c86:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8003c8a:	fb07 f308 	mul.w	r3, r7, r8
 8003c8e:	428b      	cmp	r3, r1
 8003c90:	fa04 f402 	lsl.w	r4, r4, r2
 8003c94:	d907      	bls.n	8003ca6 <__udivmoddi4+0x256>
 8003c96:	1869      	adds	r1, r5, r1
 8003c98:	f107 3cff 	add.w	ip, r7, #4294967295
 8003c9c:	d22f      	bcs.n	8003cfe <__udivmoddi4+0x2ae>
 8003c9e:	428b      	cmp	r3, r1
 8003ca0:	d92d      	bls.n	8003cfe <__udivmoddi4+0x2ae>
 8003ca2:	3f02      	subs	r7, #2
 8003ca4:	4429      	add	r1, r5
 8003ca6:	1acb      	subs	r3, r1, r3
 8003ca8:	b281      	uxth	r1, r0
 8003caa:	fbb3 f0fe 	udiv	r0, r3, lr
 8003cae:	fb0e 3310 	mls	r3, lr, r0, r3
 8003cb2:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8003cb6:	fb00 f308 	mul.w	r3, r0, r8
 8003cba:	428b      	cmp	r3, r1
 8003cbc:	d907      	bls.n	8003cce <__udivmoddi4+0x27e>
 8003cbe:	1869      	adds	r1, r5, r1
 8003cc0:	f100 3cff 	add.w	ip, r0, #4294967295
 8003cc4:	d217      	bcs.n	8003cf6 <__udivmoddi4+0x2a6>
 8003cc6:	428b      	cmp	r3, r1
 8003cc8:	d915      	bls.n	8003cf6 <__udivmoddi4+0x2a6>
 8003cca:	3802      	subs	r0, #2
 8003ccc:	4429      	add	r1, r5
 8003cce:	1ac9      	subs	r1, r1, r3
 8003cd0:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8003cd4:	e73b      	b.n	8003b4e <__udivmoddi4+0xfe>
 8003cd6:	4637      	mov	r7, r6
 8003cd8:	4630      	mov	r0, r6
 8003cda:	e709      	b.n	8003af0 <__udivmoddi4+0xa0>
 8003cdc:	4607      	mov	r7, r0
 8003cde:	e6e7      	b.n	8003ab0 <__udivmoddi4+0x60>
 8003ce0:	4618      	mov	r0, r3
 8003ce2:	e6fb      	b.n	8003adc <__udivmoddi4+0x8c>
 8003ce4:	4541      	cmp	r1, r8
 8003ce6:	d2ab      	bcs.n	8003c40 <__udivmoddi4+0x1f0>
 8003ce8:	ebb8 0a02 	subs.w	sl, r8, r2
 8003cec:	eb69 020e 	sbc.w	r2, r9, lr
 8003cf0:	3801      	subs	r0, #1
 8003cf2:	4613      	mov	r3, r2
 8003cf4:	e7a4      	b.n	8003c40 <__udivmoddi4+0x1f0>
 8003cf6:	4660      	mov	r0, ip
 8003cf8:	e7e9      	b.n	8003cce <__udivmoddi4+0x27e>
 8003cfa:	4618      	mov	r0, r3
 8003cfc:	e795      	b.n	8003c2a <__udivmoddi4+0x1da>
 8003cfe:	4667      	mov	r7, ip
 8003d00:	e7d1      	b.n	8003ca6 <__udivmoddi4+0x256>
 8003d02:	4681      	mov	r9, r0
 8003d04:	e77c      	b.n	8003c00 <__udivmoddi4+0x1b0>
 8003d06:	3802      	subs	r0, #2
 8003d08:	442c      	add	r4, r5
 8003d0a:	e747      	b.n	8003b9c <__udivmoddi4+0x14c>
 8003d0c:	f1ac 0c02 	sub.w	ip, ip, #2
 8003d10:	442b      	add	r3, r5
 8003d12:	e72f      	b.n	8003b74 <__udivmoddi4+0x124>
 8003d14:	4638      	mov	r0, r7
 8003d16:	e708      	b.n	8003b2a <__udivmoddi4+0xda>
 8003d18:	4637      	mov	r7, r6
 8003d1a:	e6e9      	b.n	8003af0 <__udivmoddi4+0xa0>

08003d1c <__aeabi_idiv0>:
 8003d1c:	4770      	bx	lr
 8003d1e:	bf00      	nop

08003d20 <__errno>:
 8003d20:	4b01      	ldr	r3, [pc, #4]	; (8003d28 <__errno+0x8>)
 8003d22:	6818      	ldr	r0, [r3, #0]
 8003d24:	4770      	bx	lr
 8003d26:	bf00      	nop
 8003d28:	20000010 	.word	0x20000010

08003d2c <__libc_init_array>:
 8003d2c:	b570      	push	{r4, r5, r6, lr}
 8003d2e:	4e0d      	ldr	r6, [pc, #52]	; (8003d64 <__libc_init_array+0x38>)
 8003d30:	4d0d      	ldr	r5, [pc, #52]	; (8003d68 <__libc_init_array+0x3c>)
 8003d32:	1b76      	subs	r6, r6, r5
 8003d34:	10b6      	asrs	r6, r6, #2
 8003d36:	d006      	beq.n	8003d46 <__libc_init_array+0x1a>
 8003d38:	2400      	movs	r4, #0
 8003d3a:	3401      	adds	r4, #1
 8003d3c:	f855 3b04 	ldr.w	r3, [r5], #4
 8003d40:	4798      	blx	r3
 8003d42:	42a6      	cmp	r6, r4
 8003d44:	d1f9      	bne.n	8003d3a <__libc_init_array+0xe>
 8003d46:	4e09      	ldr	r6, [pc, #36]	; (8003d6c <__libc_init_array+0x40>)
 8003d48:	4d09      	ldr	r5, [pc, #36]	; (8003d70 <__libc_init_array+0x44>)
 8003d4a:	1b76      	subs	r6, r6, r5
 8003d4c:	f005 f93a 	bl	8008fc4 <_init>
 8003d50:	10b6      	asrs	r6, r6, #2
 8003d52:	d006      	beq.n	8003d62 <__libc_init_array+0x36>
 8003d54:	2400      	movs	r4, #0
 8003d56:	3401      	adds	r4, #1
 8003d58:	f855 3b04 	ldr.w	r3, [r5], #4
 8003d5c:	4798      	blx	r3
 8003d5e:	42a6      	cmp	r6, r4
 8003d60:	d1f9      	bne.n	8003d56 <__libc_init_array+0x2a>
 8003d62:	bd70      	pop	{r4, r5, r6, pc}
 8003d64:	200009c0 	.word	0x200009c0
 8003d68:	200009c0 	.word	0x200009c0
 8003d6c:	200009c8 	.word	0x200009c8
 8003d70:	200009c0 	.word	0x200009c0

08003d74 <memcpy>:
 8003d74:	4684      	mov	ip, r0
 8003d76:	ea41 0300 	orr.w	r3, r1, r0
 8003d7a:	f013 0303 	ands.w	r3, r3, #3
 8003d7e:	d16d      	bne.n	8003e5c <memcpy+0xe8>
 8003d80:	3a40      	subs	r2, #64	; 0x40
 8003d82:	d341      	bcc.n	8003e08 <memcpy+0x94>
 8003d84:	f851 3b04 	ldr.w	r3, [r1], #4
 8003d88:	f840 3b04 	str.w	r3, [r0], #4
 8003d8c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003d90:	f840 3b04 	str.w	r3, [r0], #4
 8003d94:	f851 3b04 	ldr.w	r3, [r1], #4
 8003d98:	f840 3b04 	str.w	r3, [r0], #4
 8003d9c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003da0:	f840 3b04 	str.w	r3, [r0], #4
 8003da4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003da8:	f840 3b04 	str.w	r3, [r0], #4
 8003dac:	f851 3b04 	ldr.w	r3, [r1], #4
 8003db0:	f840 3b04 	str.w	r3, [r0], #4
 8003db4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003db8:	f840 3b04 	str.w	r3, [r0], #4
 8003dbc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003dc0:	f840 3b04 	str.w	r3, [r0], #4
 8003dc4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003dc8:	f840 3b04 	str.w	r3, [r0], #4
 8003dcc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003dd0:	f840 3b04 	str.w	r3, [r0], #4
 8003dd4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003dd8:	f840 3b04 	str.w	r3, [r0], #4
 8003ddc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003de0:	f840 3b04 	str.w	r3, [r0], #4
 8003de4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003de8:	f840 3b04 	str.w	r3, [r0], #4
 8003dec:	f851 3b04 	ldr.w	r3, [r1], #4
 8003df0:	f840 3b04 	str.w	r3, [r0], #4
 8003df4:	f851 3b04 	ldr.w	r3, [r1], #4
 8003df8:	f840 3b04 	str.w	r3, [r0], #4
 8003dfc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e00:	f840 3b04 	str.w	r3, [r0], #4
 8003e04:	3a40      	subs	r2, #64	; 0x40
 8003e06:	d2bd      	bcs.n	8003d84 <memcpy+0x10>
 8003e08:	3230      	adds	r2, #48	; 0x30
 8003e0a:	d311      	bcc.n	8003e30 <memcpy+0xbc>
 8003e0c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e10:	f840 3b04 	str.w	r3, [r0], #4
 8003e14:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e18:	f840 3b04 	str.w	r3, [r0], #4
 8003e1c:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e20:	f840 3b04 	str.w	r3, [r0], #4
 8003e24:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e28:	f840 3b04 	str.w	r3, [r0], #4
 8003e2c:	3a10      	subs	r2, #16
 8003e2e:	d2ed      	bcs.n	8003e0c <memcpy+0x98>
 8003e30:	320c      	adds	r2, #12
 8003e32:	d305      	bcc.n	8003e40 <memcpy+0xcc>
 8003e34:	f851 3b04 	ldr.w	r3, [r1], #4
 8003e38:	f840 3b04 	str.w	r3, [r0], #4
 8003e3c:	3a04      	subs	r2, #4
 8003e3e:	d2f9      	bcs.n	8003e34 <memcpy+0xc0>
 8003e40:	3204      	adds	r2, #4
 8003e42:	d008      	beq.n	8003e56 <memcpy+0xe2>
 8003e44:	07d2      	lsls	r2, r2, #31
 8003e46:	bf1c      	itt	ne
 8003e48:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003e4c:	f800 3b01 	strbne.w	r3, [r0], #1
 8003e50:	d301      	bcc.n	8003e56 <memcpy+0xe2>
 8003e52:	880b      	ldrh	r3, [r1, #0]
 8003e54:	8003      	strh	r3, [r0, #0]
 8003e56:	4660      	mov	r0, ip
 8003e58:	4770      	bx	lr
 8003e5a:	bf00      	nop
 8003e5c:	2a08      	cmp	r2, #8
 8003e5e:	d313      	bcc.n	8003e88 <memcpy+0x114>
 8003e60:	078b      	lsls	r3, r1, #30
 8003e62:	d08d      	beq.n	8003d80 <memcpy+0xc>
 8003e64:	f010 0303 	ands.w	r3, r0, #3
 8003e68:	d08a      	beq.n	8003d80 <memcpy+0xc>
 8003e6a:	f1c3 0304 	rsb	r3, r3, #4
 8003e6e:	1ad2      	subs	r2, r2, r3
 8003e70:	07db      	lsls	r3, r3, #31
 8003e72:	bf1c      	itt	ne
 8003e74:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003e78:	f800 3b01 	strbne.w	r3, [r0], #1
 8003e7c:	d380      	bcc.n	8003d80 <memcpy+0xc>
 8003e7e:	f831 3b02 	ldrh.w	r3, [r1], #2
 8003e82:	f820 3b02 	strh.w	r3, [r0], #2
 8003e86:	e77b      	b.n	8003d80 <memcpy+0xc>
 8003e88:	3a04      	subs	r2, #4
 8003e8a:	d3d9      	bcc.n	8003e40 <memcpy+0xcc>
 8003e8c:	3a01      	subs	r2, #1
 8003e8e:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003e92:	f800 3b01 	strb.w	r3, [r0], #1
 8003e96:	d2f9      	bcs.n	8003e8c <memcpy+0x118>
 8003e98:	780b      	ldrb	r3, [r1, #0]
 8003e9a:	7003      	strb	r3, [r0, #0]
 8003e9c:	784b      	ldrb	r3, [r1, #1]
 8003e9e:	7043      	strb	r3, [r0, #1]
 8003ea0:	788b      	ldrb	r3, [r1, #2]
 8003ea2:	7083      	strb	r3, [r0, #2]
 8003ea4:	4660      	mov	r0, ip
 8003ea6:	4770      	bx	lr

08003ea8 <memset>:
 8003ea8:	b4f0      	push	{r4, r5, r6, r7}
 8003eaa:	0786      	lsls	r6, r0, #30
 8003eac:	d043      	beq.n	8003f36 <memset+0x8e>
 8003eae:	1e54      	subs	r4, r2, #1
 8003eb0:	2a00      	cmp	r2, #0
 8003eb2:	d03e      	beq.n	8003f32 <memset+0x8a>
 8003eb4:	b2ca      	uxtb	r2, r1
 8003eb6:	4603      	mov	r3, r0
 8003eb8:	e002      	b.n	8003ec0 <memset+0x18>
 8003eba:	f114 34ff 	adds.w	r4, r4, #4294967295
 8003ebe:	d338      	bcc.n	8003f32 <memset+0x8a>
 8003ec0:	f803 2b01 	strb.w	r2, [r3], #1
 8003ec4:	079d      	lsls	r5, r3, #30
 8003ec6:	d1f8      	bne.n	8003eba <memset+0x12>
 8003ec8:	2c03      	cmp	r4, #3
 8003eca:	d92b      	bls.n	8003f24 <memset+0x7c>
 8003ecc:	b2cd      	uxtb	r5, r1
 8003ece:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8003ed2:	2c0f      	cmp	r4, #15
 8003ed4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003ed8:	d916      	bls.n	8003f08 <memset+0x60>
 8003eda:	f1a4 0710 	sub.w	r7, r4, #16
 8003ede:	093f      	lsrs	r7, r7, #4
 8003ee0:	f103 0620 	add.w	r6, r3, #32
 8003ee4:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8003ee8:	f103 0210 	add.w	r2, r3, #16
 8003eec:	e942 5504 	strd	r5, r5, [r2, #-16]
 8003ef0:	e942 5502 	strd	r5, r5, [r2, #-8]
 8003ef4:	3210      	adds	r2, #16
 8003ef6:	42b2      	cmp	r2, r6
 8003ef8:	d1f8      	bne.n	8003eec <memset+0x44>
 8003efa:	f004 040f 	and.w	r4, r4, #15
 8003efe:	3701      	adds	r7, #1
 8003f00:	2c03      	cmp	r4, #3
 8003f02:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8003f06:	d90d      	bls.n	8003f24 <memset+0x7c>
 8003f08:	461e      	mov	r6, r3
 8003f0a:	4622      	mov	r2, r4
 8003f0c:	3a04      	subs	r2, #4
 8003f0e:	2a03      	cmp	r2, #3
 8003f10:	f846 5b04 	str.w	r5, [r6], #4
 8003f14:	d8fa      	bhi.n	8003f0c <memset+0x64>
 8003f16:	1f22      	subs	r2, r4, #4
 8003f18:	f022 0203 	bic.w	r2, r2, #3
 8003f1c:	3204      	adds	r2, #4
 8003f1e:	4413      	add	r3, r2
 8003f20:	f004 0403 	and.w	r4, r4, #3
 8003f24:	b12c      	cbz	r4, 8003f32 <memset+0x8a>
 8003f26:	b2c9      	uxtb	r1, r1
 8003f28:	441c      	add	r4, r3
 8003f2a:	f803 1b01 	strb.w	r1, [r3], #1
 8003f2e:	429c      	cmp	r4, r3
 8003f30:	d1fb      	bne.n	8003f2a <memset+0x82>
 8003f32:	bcf0      	pop	{r4, r5, r6, r7}
 8003f34:	4770      	bx	lr
 8003f36:	4614      	mov	r4, r2
 8003f38:	4603      	mov	r3, r0
 8003f3a:	e7c5      	b.n	8003ec8 <memset+0x20>

08003f3c <printf>:
 8003f3c:	b40f      	push	{r0, r1, r2, r3}
 8003f3e:	b500      	push	{lr}
 8003f40:	4907      	ldr	r1, [pc, #28]	; (8003f60 <printf+0x24>)
 8003f42:	b083      	sub	sp, #12
 8003f44:	ab04      	add	r3, sp, #16
 8003f46:	6808      	ldr	r0, [r1, #0]
 8003f48:	f853 2b04 	ldr.w	r2, [r3], #4
 8003f4c:	6881      	ldr	r1, [r0, #8]
 8003f4e:	9301      	str	r3, [sp, #4]
 8003f50:	f000 f80a 	bl	8003f68 <_vfprintf_r>
 8003f54:	b003      	add	sp, #12
 8003f56:	f85d eb04 	ldr.w	lr, [sp], #4
 8003f5a:	b004      	add	sp, #16
 8003f5c:	4770      	bx	lr
 8003f5e:	bf00      	nop
 8003f60:	20000010 	.word	0x20000010
 8003f64:	00000000 	.word	0x00000000

08003f68 <_vfprintf_r>:
 8003f68:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003f6c:	b0bf      	sub	sp, #252	; 0xfc
 8003f6e:	461c      	mov	r4, r3
 8003f70:	4688      	mov	r8, r1
 8003f72:	4692      	mov	sl, r2
 8003f74:	4605      	mov	r5, r0
 8003f76:	9006      	str	r0, [sp, #24]
 8003f78:	f002 fda0 	bl	8006abc <_localeconv_r>
 8003f7c:	6803      	ldr	r3, [r0, #0]
 8003f7e:	9310      	str	r3, [sp, #64]	; 0x40
 8003f80:	4618      	mov	r0, r3
 8003f82:	f003 fc9d 	bl	80078c0 <strlen>
 8003f86:	9409      	str	r4, [sp, #36]	; 0x24
 8003f88:	900f      	str	r0, [sp, #60]	; 0x3c
 8003f8a:	b11d      	cbz	r5, 8003f94 <_vfprintf_r+0x2c>
 8003f8c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8003f8e:	2b00      	cmp	r3, #0
 8003f90:	f000 8100 	beq.w	8004194 <_vfprintf_r+0x22c>
 8003f94:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
 8003f98:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
 8003f9c:	07cd      	lsls	r5, r1, #31
 8003f9e:	b293      	uxth	r3, r2
 8003fa0:	d402      	bmi.n	8003fa8 <_vfprintf_r+0x40>
 8003fa2:	0598      	lsls	r0, r3, #22
 8003fa4:	f140 8143 	bpl.w	800422e <_vfprintf_r+0x2c6>
 8003fa8:	0499      	lsls	r1, r3, #18
 8003faa:	d40a      	bmi.n	8003fc2 <_vfprintf_r+0x5a>
 8003fac:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
 8003fb0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8003fb4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8003fb8:	f8a8 300c 	strh.w	r3, [r8, #12]
 8003fbc:	f8c8 1064 	str.w	r1, [r8, #100]	; 0x64
 8003fc0:	b29b      	uxth	r3, r3
 8003fc2:	071a      	lsls	r2, r3, #28
 8003fc4:	f140 80b0 	bpl.w	8004128 <_vfprintf_r+0x1c0>
 8003fc8:	f8d8 2010 	ldr.w	r2, [r8, #16]
 8003fcc:	2a00      	cmp	r2, #0
 8003fce:	f000 80ab 	beq.w	8004128 <_vfprintf_r+0x1c0>
 8003fd2:	f003 021a 	and.w	r2, r3, #26
 8003fd6:	2a0a      	cmp	r2, #10
 8003fd8:	f000 80c2 	beq.w	8004160 <_vfprintf_r+0x1f8>
 8003fdc:	ed9f 7ba0 	vldr	d7, [pc, #640]	; 8004260 <_vfprintf_r+0x2f8>
 8003fe0:	2300      	movs	r3, #0
 8003fe2:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 8003fe6:	930e      	str	r3, [sp, #56]	; 0x38
 8003fe8:	e9cd 3322 	strd	r3, r3, [sp, #136]	; 0x88
 8003fec:	9311      	str	r3, [sp, #68]	; 0x44
 8003fee:	9314      	str	r3, [sp, #80]	; 0x50
 8003ff0:	9305      	str	r3, [sp, #20]
 8003ff2:	ab2e      	add	r3, sp, #184	; 0xb8
 8003ff4:	9321      	str	r3, [sp, #132]	; 0x84
 8003ff6:	4699      	mov	r9, r3
 8003ff8:	46c3      	mov	fp, r8
 8003ffa:	f89a 3000 	ldrb.w	r3, [sl]
 8003ffe:	2b00      	cmp	r3, #0
 8004000:	f000 8283 	beq.w	800450a <_vfprintf_r+0x5a2>
 8004004:	2b25      	cmp	r3, #37	; 0x25
 8004006:	4654      	mov	r4, sl
 8004008:	d102      	bne.n	8004010 <_vfprintf_r+0xa8>
 800400a:	e01e      	b.n	800404a <_vfprintf_r+0xe2>
 800400c:	2b25      	cmp	r3, #37	; 0x25
 800400e:	d003      	beq.n	8004018 <_vfprintf_r+0xb0>
 8004010:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8004014:	2b00      	cmp	r3, #0
 8004016:	d1f9      	bne.n	800400c <_vfprintf_r+0xa4>
 8004018:	eba4 050a 	sub.w	r5, r4, sl
 800401c:	b18d      	cbz	r5, 8004042 <_vfprintf_r+0xda>
 800401e:	e9dd 3222 	ldrd	r3, r2, [sp, #136]	; 0x88
 8004022:	3301      	adds	r3, #1
 8004024:	442a      	add	r2, r5
 8004026:	2b07      	cmp	r3, #7
 8004028:	f8c9 a000 	str.w	sl, [r9]
 800402c:	f8c9 5004 	str.w	r5, [r9, #4]
 8004030:	e9cd 3222 	strd	r3, r2, [sp, #136]	; 0x88
 8004034:	f300 80da 	bgt.w	80041ec <_vfprintf_r+0x284>
 8004038:	f109 0908 	add.w	r9, r9, #8
 800403c:	9b05      	ldr	r3, [sp, #20]
 800403e:	442b      	add	r3, r5
 8004040:	9305      	str	r3, [sp, #20]
 8004042:	7823      	ldrb	r3, [r4, #0]
 8004044:	2b00      	cmp	r3, #0
 8004046:	f000 8260 	beq.w	800450a <_vfprintf_r+0x5a2>
 800404a:	2300      	movs	r3, #0
 800404c:	461a      	mov	r2, r3
 800404e:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8004052:	4619      	mov	r1, r3
 8004054:	9307      	str	r3, [sp, #28]
 8004056:	4698      	mov	r8, r3
 8004058:	7866      	ldrb	r6, [r4, #1]
 800405a:	f04f 33ff 	mov.w	r3, #4294967295
 800405e:	f104 0a01 	add.w	sl, r4, #1
 8004062:	9304      	str	r3, [sp, #16]
 8004064:	f10a 0a01 	add.w	sl, sl, #1
 8004068:	f1a6 0320 	sub.w	r3, r6, #32
 800406c:	2b58      	cmp	r3, #88	; 0x58
 800406e:	f200 83fc 	bhi.w	800486a <_vfprintf_r+0x902>
 8004072:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004076:	02d1      	.short	0x02d1
 8004078:	03fa03fa 	.word	0x03fa03fa
 800407c:	03fa02d9 	.word	0x03fa02d9
 8004080:	03fa03fa 	.word	0x03fa03fa
 8004084:	03fa03fa 	.word	0x03fa03fa
 8004088:	033003fa 	.word	0x033003fa
 800408c:	03fa033c 	.word	0x03fa033c
 8004090:	039e03d0 	.word	0x039e03d0
 8004094:	026403fa 	.word	0x026403fa
 8004098:	00e400e4 	.word	0x00e400e4
 800409c:	00e400e4 	.word	0x00e400e4
 80040a0:	00e400e4 	.word	0x00e400e4
 80040a4:	00e400e4 	.word	0x00e400e4
 80040a8:	03fa00e4 	.word	0x03fa00e4
 80040ac:	03fa03fa 	.word	0x03fa03fa
 80040b0:	03fa03fa 	.word	0x03fa03fa
 80040b4:	03fa03fa 	.word	0x03fa03fa
 80040b8:	03fa03fa 	.word	0x03fa03fa
 80040bc:	03b803fa 	.word	0x03b803fa
 80040c0:	03fa0341 	.word	0x03fa0341
 80040c4:	03fa0341 	.word	0x03fa0341
 80040c8:	03fa03fa 	.word	0x03fa03fa
 80040cc:	039903fa 	.word	0x039903fa
 80040d0:	03fa03fa 	.word	0x03fa03fa
 80040d4:	03fa0093 	.word	0x03fa0093
 80040d8:	03fa03fa 	.word	0x03fa03fa
 80040dc:	03fa03fa 	.word	0x03fa03fa
 80040e0:	03fa00a7 	.word	0x03fa00a7
 80040e4:	026903fa 	.word	0x026903fa
 80040e8:	03fa03fa 	.word	0x03fa03fa
 80040ec:	03fa03fa 	.word	0x03fa03fa
 80040f0:	03fa03fa 	.word	0x03fa03fa
 80040f4:	03fa03fa 	.word	0x03fa03fa
 80040f8:	03fa03fa 	.word	0x03fa03fa
 80040fc:	00f902be 	.word	0x00f902be
 8004100:	03410341 	.word	0x03410341
 8004104:	02520341 	.word	0x02520341
 8004108:	03fa00f9 	.word	0x03fa00f9
 800410c:	025703fa 	.word	0x025703fa
 8004110:	031f03fa 	.word	0x031f03fa
 8004114:	03840095 	.word	0x03840095
 8004118:	03fa0394 	.word	0x03fa0394
 800411c:	03fa02fc 	.word	0x03fa02fc
 8004120:	03fa00a9 	.word	0x03fa00a9
 8004124:	02e503fa 	.word	0x02e503fa
 8004128:	4641      	mov	r1, r8
 800412a:	9806      	ldr	r0, [sp, #24]
 800412c:	f001 f9e4 	bl	80054f8 <__swsetup_r>
 8004130:	b178      	cbz	r0, 8004152 <_vfprintf_r+0x1ea>
 8004132:	f8d8 3064 	ldr.w	r3, [r8, #100]	; 0x64
 8004136:	07db      	lsls	r3, r3, #31
 8004138:	d404      	bmi.n	8004144 <_vfprintf_r+0x1dc>
 800413a:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 800413e:	059f      	lsls	r7, r3, #22
 8004140:	f140 838b 	bpl.w	800485a <_vfprintf_r+0x8f2>
 8004144:	f04f 33ff 	mov.w	r3, #4294967295
 8004148:	9305      	str	r3, [sp, #20]
 800414a:	9805      	ldr	r0, [sp, #20]
 800414c:	b03f      	add	sp, #252	; 0xfc
 800414e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004152:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8004156:	f003 021a 	and.w	r2, r3, #26
 800415a:	2a0a      	cmp	r2, #10
 800415c:	f47f af3e 	bne.w	8003fdc <_vfprintf_r+0x74>
 8004160:	f9b8 200e 	ldrsh.w	r2, [r8, #14]
 8004164:	2a00      	cmp	r2, #0
 8004166:	f6ff af39 	blt.w	8003fdc <_vfprintf_r+0x74>
 800416a:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
 800416e:	07d6      	lsls	r6, r2, #31
 8004170:	d405      	bmi.n	800417e <_vfprintf_r+0x216>
 8004172:	059d      	lsls	r5, r3, #22
 8004174:	d403      	bmi.n	800417e <_vfprintf_r+0x216>
 8004176:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 800417a:	f002 fcb3 	bl	8006ae4 <__retarget_lock_release_recursive>
 800417e:	4623      	mov	r3, r4
 8004180:	4652      	mov	r2, sl
 8004182:	4641      	mov	r1, r8
 8004184:	9806      	ldr	r0, [sp, #24]
 8004186:	f001 f975 	bl	8005474 <__sbprintf>
 800418a:	9005      	str	r0, [sp, #20]
 800418c:	9805      	ldr	r0, [sp, #20]
 800418e:	b03f      	add	sp, #252	; 0xfc
 8004190:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004194:	9806      	ldr	r0, [sp, #24]
 8004196:	f002 fad1 	bl	800673c <__sinit>
 800419a:	e6fb      	b.n	8003f94 <_vfprintf_r+0x2c>
 800419c:	f048 0810 	orr.w	r8, r8, #16
 80041a0:	f018 0320 	ands.w	r3, r8, #32
 80041a4:	f040 833c 	bne.w	8004820 <_vfprintf_r+0x8b8>
 80041a8:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80041aa:	f852 4b04 	ldr.w	r4, [r2], #4
 80041ae:	9209      	str	r2, [sp, #36]	; 0x24
 80041b0:	f018 0210 	ands.w	r2, r8, #16
 80041b4:	d104      	bne.n	80041c0 <_vfprintf_r+0x258>
 80041b6:	f018 0340 	ands.w	r3, r8, #64	; 0x40
 80041ba:	bf1c      	itt	ne
 80041bc:	4613      	movne	r3, r2
 80041be:	b2a4      	uxthne	r4, r4
 80041c0:	2500      	movs	r5, #0
 80041c2:	e1e2      	b.n	800458a <_vfprintf_r+0x622>
 80041c4:	f048 0810 	orr.w	r8, r8, #16
 80041c8:	f018 0f20 	tst.w	r8, #32
 80041cc:	f040 8333 	bne.w	8004836 <_vfprintf_r+0x8ce>
 80041d0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80041d2:	f018 0f10 	tst.w	r8, #16
 80041d6:	f853 4b04 	ldr.w	r4, [r3], #4
 80041da:	9309      	str	r3, [sp, #36]	; 0x24
 80041dc:	d103      	bne.n	80041e6 <_vfprintf_r+0x27e>
 80041de:	f018 0f40 	tst.w	r8, #64	; 0x40
 80041e2:	bf18      	it	ne
 80041e4:	b2a4      	uxthne	r4, r4
 80041e6:	2500      	movs	r5, #0
 80041e8:	2301      	movs	r3, #1
 80041ea:	e1ce      	b.n	800458a <_vfprintf_r+0x622>
 80041ec:	aa21      	add	r2, sp, #132	; 0x84
 80041ee:	4659      	mov	r1, fp
 80041f0:	9806      	ldr	r0, [sp, #24]
 80041f2:	f003 fc0f 	bl	8007a14 <__sprint_r>
 80041f6:	b950      	cbnz	r0, 800420e <_vfprintf_r+0x2a6>
 80041f8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80041fc:	e71e      	b.n	800403c <_vfprintf_r+0xd4>
 80041fe:	aa21      	add	r2, sp, #132	; 0x84
 8004200:	4659      	mov	r1, fp
 8004202:	9806      	ldr	r0, [sp, #24]
 8004204:	f003 fc06 	bl	8007a14 <__sprint_r>
 8004208:	2800      	cmp	r0, #0
 800420a:	f000 8175 	beq.w	80044f8 <_vfprintf_r+0x590>
 800420e:	46d8      	mov	r8, fp
 8004210:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
 8004214:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8004218:	07d1      	lsls	r1, r2, #31
 800421a:	d402      	bmi.n	8004222 <_vfprintf_r+0x2ba>
 800421c:	059a      	lsls	r2, r3, #22
 800421e:	f140 8315 	bpl.w	800484c <_vfprintf_r+0x8e4>
 8004222:	065b      	lsls	r3, r3, #25
 8004224:	d48e      	bmi.n	8004144 <_vfprintf_r+0x1dc>
 8004226:	9805      	ldr	r0, [sp, #20]
 8004228:	b03f      	add	sp, #252	; 0xfc
 800422a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800422e:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8004232:	f002 fc55 	bl	8006ae0 <__retarget_lock_acquire_recursive>
 8004236:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
 800423a:	b293      	uxth	r3, r2
 800423c:	e6b4      	b.n	8003fa8 <_vfprintf_r+0x40>
 800423e:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004242:	2000      	movs	r0, #0
 8004244:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8004248:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 800424c:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8004250:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8004254:	2b09      	cmp	r3, #9
 8004256:	d9f5      	bls.n	8004244 <_vfprintf_r+0x2dc>
 8004258:	9007      	str	r0, [sp, #28]
 800425a:	e705      	b.n	8004068 <_vfprintf_r+0x100>
 800425c:	f3af 8000 	nop.w
	...
 8004268:	2a00      	cmp	r2, #0
 800426a:	f041 80ea 	bne.w	8005442 <_vfprintf_r+0x14da>
 800426e:	f018 0f20 	tst.w	r8, #32
 8004272:	f000 82c1 	beq.w	80047f8 <_vfprintf_r+0x890>
 8004276:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004278:	3407      	adds	r4, #7
 800427a:	f024 0307 	bic.w	r3, r4, #7
 800427e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004282:	f103 0208 	add.w	r2, r3, #8
 8004286:	9209      	str	r2, [sp, #36]	; 0x24
 8004288:	2c00      	cmp	r4, #0
 800428a:	f175 0300 	sbcs.w	r3, r5, #0
 800428e:	f2c0 84d1 	blt.w	8004c34 <_vfprintf_r+0xccc>
 8004292:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8004296:	9b04      	ldr	r3, [sp, #16]
 8004298:	3301      	adds	r3, #1
 800429a:	f000 842f 	beq.w	8004afc <_vfprintf_r+0xb94>
 800429e:	2301      	movs	r3, #1
 80042a0:	f028 0280 	bic.w	r2, r8, #128	; 0x80
 80042a4:	9202      	str	r2, [sp, #8]
 80042a6:	ea54 0205 	orrs.w	r2, r4, r5
 80042aa:	f040 8177 	bne.w	800459c <_vfprintf_r+0x634>
 80042ae:	9a04      	ldr	r2, [sp, #16]
 80042b0:	2a00      	cmp	r2, #0
 80042b2:	f040 857b 	bne.w	8004dac <_vfprintf_r+0xe44>
 80042b6:	2b00      	cmp	r3, #0
 80042b8:	f040 8487 	bne.w	8004bca <_vfprintf_r+0xc62>
 80042bc:	f018 0301 	ands.w	r3, r8, #1
 80042c0:	9308      	str	r3, [sp, #32]
 80042c2:	f000 85a0 	beq.w	8004e06 <_vfprintf_r+0xe9e>
 80042c6:	ab3e      	add	r3, sp, #248	; 0xf8
 80042c8:	461a      	mov	r2, r3
 80042ca:	2330      	movs	r3, #48	; 0x30
 80042cc:	f802 3d41 	strb.w	r3, [r2, #-65]!
 80042d0:	920a      	str	r2, [sp, #40]	; 0x28
 80042d2:	9b04      	ldr	r3, [sp, #16]
 80042d4:	9a08      	ldr	r2, [sp, #32]
 80042d6:	4293      	cmp	r3, r2
 80042d8:	bfb8      	it	lt
 80042da:	4613      	movlt	r3, r2
 80042dc:	9303      	str	r3, [sp, #12]
 80042de:	2300      	movs	r3, #0
 80042e0:	930b      	str	r3, [sp, #44]	; 0x2c
 80042e2:	b117      	cbz	r7, 80042ea <_vfprintf_r+0x382>
 80042e4:	9b03      	ldr	r3, [sp, #12]
 80042e6:	3301      	adds	r3, #1
 80042e8:	9303      	str	r3, [sp, #12]
 80042ea:	9b02      	ldr	r3, [sp, #8]
 80042ec:	f013 0302 	ands.w	r3, r3, #2
 80042f0:	d002      	beq.n	80042f8 <_vfprintf_r+0x390>
 80042f2:	9a03      	ldr	r2, [sp, #12]
 80042f4:	3202      	adds	r2, #2
 80042f6:	9203      	str	r2, [sp, #12]
 80042f8:	9a02      	ldr	r2, [sp, #8]
 80042fa:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80042fc:	f012 0884 	ands.w	r8, r2, #132	; 0x84
 8004300:	d142      	bne.n	8004388 <_vfprintf_r+0x420>
 8004302:	9a07      	ldr	r2, [sp, #28]
 8004304:	9903      	ldr	r1, [sp, #12]
 8004306:	1a55      	subs	r5, r2, r1
 8004308:	2d00      	cmp	r5, #0
 800430a:	dd3d      	ble.n	8004388 <_vfprintf_r+0x420>
 800430c:	2d10      	cmp	r5, #16
 800430e:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004310:	dd2c      	ble.n	800436c <_vfprintf_r+0x404>
 8004312:	4648      	mov	r0, r9
 8004314:	4621      	mov	r1, r4
 8004316:	46a9      	mov	r9, r5
 8004318:	2710      	movs	r7, #16
 800431a:	461d      	mov	r5, r3
 800431c:	9c06      	ldr	r4, [sp, #24]
 800431e:	4603      	mov	r3, r0
 8004320:	e006      	b.n	8004330 <_vfprintf_r+0x3c8>
 8004322:	f1a9 0910 	sub.w	r9, r9, #16
 8004326:	f1b9 0f10 	cmp.w	r9, #16
 800432a:	f103 0308 	add.w	r3, r3, #8
 800432e:	dd18      	ble.n	8004362 <_vfprintf_r+0x3fa>
 8004330:	3201      	adds	r2, #1
 8004332:	48c0      	ldr	r0, [pc, #768]	; (8004634 <_vfprintf_r+0x6cc>)
 8004334:	3110      	adds	r1, #16
 8004336:	2a07      	cmp	r2, #7
 8004338:	e9cd 2122 	strd	r2, r1, [sp, #136]	; 0x88
 800433c:	e9c3 0700 	strd	r0, r7, [r3]
 8004340:	ddef      	ble.n	8004322 <_vfprintf_r+0x3ba>
 8004342:	aa21      	add	r2, sp, #132	; 0x84
 8004344:	4659      	mov	r1, fp
 8004346:	4620      	mov	r0, r4
 8004348:	f003 fb64 	bl	8007a14 <__sprint_r>
 800434c:	2800      	cmp	r0, #0
 800434e:	f47f af5e 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004352:	f1a9 0910 	sub.w	r9, r9, #16
 8004356:	f1b9 0f10 	cmp.w	r9, #16
 800435a:	e9dd 2122 	ldrd	r2, r1, [sp, #136]	; 0x88
 800435e:	ab2e      	add	r3, sp, #184	; 0xb8
 8004360:	dce6      	bgt.n	8004330 <_vfprintf_r+0x3c8>
 8004362:	4618      	mov	r0, r3
 8004364:	460c      	mov	r4, r1
 8004366:	462b      	mov	r3, r5
 8004368:	464d      	mov	r5, r9
 800436a:	4681      	mov	r9, r0
 800436c:	3201      	adds	r2, #1
 800436e:	49b1      	ldr	r1, [pc, #708]	; (8004634 <_vfprintf_r+0x6cc>)
 8004370:	442c      	add	r4, r5
 8004372:	2a07      	cmp	r2, #7
 8004374:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004378:	e9c9 1500 	strd	r1, r5, [r9]
 800437c:	f300 8487 	bgt.w	8004c8e <_vfprintf_r+0xd26>
 8004380:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8004384:	f109 0908 	add.w	r9, r9, #8
 8004388:	b177      	cbz	r7, 80043a8 <_vfprintf_r+0x440>
 800438a:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800438c:	3201      	adds	r2, #1
 800438e:	3401      	adds	r4, #1
 8004390:	f10d 0067 	add.w	r0, sp, #103	; 0x67
 8004394:	2101      	movs	r1, #1
 8004396:	2a07      	cmp	r2, #7
 8004398:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800439c:	e9c9 0100 	strd	r0, r1, [r9]
 80043a0:	f300 8392 	bgt.w	8004ac8 <_vfprintf_r+0xb60>
 80043a4:	f109 0908 	add.w	r9, r9, #8
 80043a8:	b16b      	cbz	r3, 80043c6 <_vfprintf_r+0x45e>
 80043aa:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80043ac:	3301      	adds	r3, #1
 80043ae:	3402      	adds	r4, #2
 80043b0:	a91a      	add	r1, sp, #104	; 0x68
 80043b2:	2202      	movs	r2, #2
 80043b4:	2b07      	cmp	r3, #7
 80043b6:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 80043ba:	e9c9 1200 	strd	r1, r2, [r9]
 80043be:	f300 8391 	bgt.w	8004ae4 <_vfprintf_r+0xb7c>
 80043c2:	f109 0908 	add.w	r9, r9, #8
 80043c6:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
 80043ca:	f000 82d0 	beq.w	800496e <_vfprintf_r+0xa06>
 80043ce:	9b04      	ldr	r3, [sp, #16]
 80043d0:	9a08      	ldr	r2, [sp, #32]
 80043d2:	1a9d      	subs	r5, r3, r2
 80043d4:	2d00      	cmp	r5, #0
 80043d6:	dd33      	ble.n	8004440 <_vfprintf_r+0x4d8>
 80043d8:	2d10      	cmp	r5, #16
 80043da:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80043dc:	f8df 825c 	ldr.w	r8, [pc, #604]	; 800463c <_vfprintf_r+0x6d4>
 80043e0:	dd23      	ble.n	800442a <_vfprintf_r+0x4c2>
 80043e2:	4623      	mov	r3, r4
 80043e4:	2710      	movs	r7, #16
 80043e6:	4644      	mov	r4, r8
 80043e8:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80043ec:	e004      	b.n	80043f8 <_vfprintf_r+0x490>
 80043ee:	3d10      	subs	r5, #16
 80043f0:	2d10      	cmp	r5, #16
 80043f2:	f109 0908 	add.w	r9, r9, #8
 80043f6:	dd16      	ble.n	8004426 <_vfprintf_r+0x4be>
 80043f8:	3201      	adds	r2, #1
 80043fa:	3310      	adds	r3, #16
 80043fc:	2a07      	cmp	r2, #7
 80043fe:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 8004402:	e9c9 4700 	strd	r4, r7, [r9]
 8004406:	ddf2      	ble.n	80043ee <_vfprintf_r+0x486>
 8004408:	aa21      	add	r2, sp, #132	; 0x84
 800440a:	4659      	mov	r1, fp
 800440c:	4640      	mov	r0, r8
 800440e:	f003 fb01 	bl	8007a14 <__sprint_r>
 8004412:	2800      	cmp	r0, #0
 8004414:	f47f aefb 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004418:	3d10      	subs	r5, #16
 800441a:	2d10      	cmp	r5, #16
 800441c:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 8004420:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004424:	dce8      	bgt.n	80043f8 <_vfprintf_r+0x490>
 8004426:	46a0      	mov	r8, r4
 8004428:	461c      	mov	r4, r3
 800442a:	3201      	adds	r2, #1
 800442c:	442c      	add	r4, r5
 800442e:	2a07      	cmp	r2, #7
 8004430:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004434:	e9c9 8500 	strd	r8, r5, [r9]
 8004438:	f300 8372 	bgt.w	8004b20 <_vfprintf_r+0xbb8>
 800443c:	f109 0908 	add.w	r9, r9, #8
 8004440:	9b02      	ldr	r3, [sp, #8]
 8004442:	05dd      	lsls	r5, r3, #23
 8004444:	f100 8227 	bmi.w	8004896 <_vfprintf_r+0x92e>
 8004448:	9b22      	ldr	r3, [sp, #136]	; 0x88
 800444a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800444c:	f8c9 2000 	str.w	r2, [r9]
 8004450:	9a08      	ldr	r2, [sp, #32]
 8004452:	f8c9 2004 	str.w	r2, [r9, #4]
 8004456:	3301      	adds	r3, #1
 8004458:	4414      	add	r4, r2
 800445a:	2b07      	cmp	r3, #7
 800445c:	9423      	str	r4, [sp, #140]	; 0x8c
 800445e:	9322      	str	r3, [sp, #136]	; 0x88
 8004460:	f300 830f 	bgt.w	8004a82 <_vfprintf_r+0xb1a>
 8004464:	f109 0908 	add.w	r9, r9, #8
 8004468:	9b02      	ldr	r3, [sp, #8]
 800446a:	0758      	lsls	r0, r3, #29
 800446c:	d539      	bpl.n	80044e2 <_vfprintf_r+0x57a>
 800446e:	9b07      	ldr	r3, [sp, #28]
 8004470:	9a03      	ldr	r2, [sp, #12]
 8004472:	1a9d      	subs	r5, r3, r2
 8004474:	2d00      	cmp	r5, #0
 8004476:	dd34      	ble.n	80044e2 <_vfprintf_r+0x57a>
 8004478:	2d10      	cmp	r5, #16
 800447a:	9b22      	ldr	r3, [sp, #136]	; 0x88
 800447c:	dd1f      	ble.n	80044be <_vfprintf_r+0x556>
 800447e:	2610      	movs	r6, #16
 8004480:	9f06      	ldr	r7, [sp, #24]
 8004482:	e004      	b.n	800448e <_vfprintf_r+0x526>
 8004484:	3d10      	subs	r5, #16
 8004486:	2d10      	cmp	r5, #16
 8004488:	f109 0908 	add.w	r9, r9, #8
 800448c:	dd17      	ble.n	80044be <_vfprintf_r+0x556>
 800448e:	3301      	adds	r3, #1
 8004490:	4a68      	ldr	r2, [pc, #416]	; (8004634 <_vfprintf_r+0x6cc>)
 8004492:	3410      	adds	r4, #16
 8004494:	2b07      	cmp	r3, #7
 8004496:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 800449a:	e9c9 2600 	strd	r2, r6, [r9]
 800449e:	ddf1      	ble.n	8004484 <_vfprintf_r+0x51c>
 80044a0:	aa21      	add	r2, sp, #132	; 0x84
 80044a2:	4659      	mov	r1, fp
 80044a4:	4638      	mov	r0, r7
 80044a6:	f003 fab5 	bl	8007a14 <__sprint_r>
 80044aa:	2800      	cmp	r0, #0
 80044ac:	f47f aeaf 	bne.w	800420e <_vfprintf_r+0x2a6>
 80044b0:	3d10      	subs	r5, #16
 80044b2:	2d10      	cmp	r5, #16
 80044b4:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 80044b8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80044bc:	dce7      	bgt.n	800448e <_vfprintf_r+0x526>
 80044be:	3301      	adds	r3, #1
 80044c0:	4a5c      	ldr	r2, [pc, #368]	; (8004634 <_vfprintf_r+0x6cc>)
 80044c2:	442c      	add	r4, r5
 80044c4:	2b07      	cmp	r3, #7
 80044c6:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 80044ca:	e9c9 2500 	strd	r2, r5, [r9]
 80044ce:	dd08      	ble.n	80044e2 <_vfprintf_r+0x57a>
 80044d0:	aa21      	add	r2, sp, #132	; 0x84
 80044d2:	4659      	mov	r1, fp
 80044d4:	9806      	ldr	r0, [sp, #24]
 80044d6:	f003 fa9d 	bl	8007a14 <__sprint_r>
 80044da:	2800      	cmp	r0, #0
 80044dc:	f47f ae97 	bne.w	800420e <_vfprintf_r+0x2a6>
 80044e0:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80044e2:	9b05      	ldr	r3, [sp, #20]
 80044e4:	9a07      	ldr	r2, [sp, #28]
 80044e6:	9903      	ldr	r1, [sp, #12]
 80044e8:	428a      	cmp	r2, r1
 80044ea:	bfac      	ite	ge
 80044ec:	189b      	addge	r3, r3, r2
 80044ee:	185b      	addlt	r3, r3, r1
 80044f0:	9305      	str	r3, [sp, #20]
 80044f2:	2c00      	cmp	r4, #0
 80044f4:	f47f ae83 	bne.w	80041fe <_vfprintf_r+0x296>
 80044f8:	2300      	movs	r3, #0
 80044fa:	9322      	str	r3, [sp, #136]	; 0x88
 80044fc:	f89a 3000 	ldrb.w	r3, [sl]
 8004500:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004504:	2b00      	cmp	r3, #0
 8004506:	f47f ad7d 	bne.w	8004004 <_vfprintf_r+0x9c>
 800450a:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 800450c:	46d8      	mov	r8, fp
 800450e:	2b00      	cmp	r3, #0
 8004510:	f040 86ba 	bne.w	8005288 <_vfprintf_r+0x1320>
 8004514:	2300      	movs	r3, #0
 8004516:	9322      	str	r3, [sp, #136]	; 0x88
 8004518:	e67a      	b.n	8004210 <_vfprintf_r+0x2a8>
 800451a:	f048 0840 	orr.w	r8, r8, #64	; 0x40
 800451e:	f89a 6000 	ldrb.w	r6, [sl]
 8004522:	e59f      	b.n	8004064 <_vfprintf_r+0xfc>
 8004524:	f89a 6000 	ldrb.w	r6, [sl]
 8004528:	2e6c      	cmp	r6, #108	; 0x6c
 800452a:	bf03      	ittte	eq
 800452c:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8004530:	f048 0820 	orreq.w	r8, r8, #32
 8004534:	f10a 0a01 	addeq.w	sl, sl, #1
 8004538:	f048 0810 	orrne.w	r8, r8, #16
 800453c:	e592      	b.n	8004064 <_vfprintf_r+0xfc>
 800453e:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8004542:	f89a 6000 	ldrb.w	r6, [sl]
 8004546:	e58d      	b.n	8004064 <_vfprintf_r+0xfc>
 8004548:	2a00      	cmp	r2, #0
 800454a:	f040 877e 	bne.w	800544a <_vfprintf_r+0x14e2>
 800454e:	4b3a      	ldr	r3, [pc, #232]	; (8004638 <_vfprintf_r+0x6d0>)
 8004550:	9311      	str	r3, [sp, #68]	; 0x44
 8004552:	f018 0f20 	tst.w	r8, #32
 8004556:	d07b      	beq.n	8004650 <_vfprintf_r+0x6e8>
 8004558:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800455a:	3407      	adds	r4, #7
 800455c:	f024 0307 	bic.w	r3, r4, #7
 8004560:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004564:	f103 0208 	add.w	r2, r3, #8
 8004568:	9209      	str	r2, [sp, #36]	; 0x24
 800456a:	f018 0f01 	tst.w	r8, #1
 800456e:	f000 82d5 	beq.w	8004b1c <_vfprintf_r+0xbb4>
 8004572:	ea54 0305 	orrs.w	r3, r4, r5
 8004576:	f000 82d1 	beq.w	8004b1c <_vfprintf_r+0xbb4>
 800457a:	2330      	movs	r3, #48	; 0x30
 800457c:	f88d 3068 	strb.w	r3, [sp, #104]	; 0x68
 8004580:	f88d 6069 	strb.w	r6, [sp, #105]	; 0x69
 8004584:	f048 0802 	orr.w	r8, r8, #2
 8004588:	2302      	movs	r3, #2
 800458a:	9a04      	ldr	r2, [sp, #16]
 800458c:	2700      	movs	r7, #0
 800458e:	3201      	adds	r2, #1
 8004590:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8004594:	f47f ae84 	bne.w	80042a0 <_vfprintf_r+0x338>
 8004598:	f8cd 8008 	str.w	r8, [sp, #8]
 800459c:	2b01      	cmp	r3, #1
 800459e:	f000 82af 	beq.w	8004b00 <_vfprintf_r+0xb98>
 80045a2:	2b02      	cmp	r3, #2
 80045a4:	f000 8279 	beq.w	8004a9a <_vfprintf_r+0xb32>
 80045a8:	a92e      	add	r1, sp, #184	; 0xb8
 80045aa:	e000      	b.n	80045ae <_vfprintf_r+0x646>
 80045ac:	4611      	mov	r1, r2
 80045ae:	08e2      	lsrs	r2, r4, #3
 80045b0:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80045b4:	08e8      	lsrs	r0, r5, #3
 80045b6:	f004 0307 	and.w	r3, r4, #7
 80045ba:	4605      	mov	r5, r0
 80045bc:	4614      	mov	r4, r2
 80045be:	3330      	adds	r3, #48	; 0x30
 80045c0:	ea54 0005 	orrs.w	r0, r4, r5
 80045c4:	f801 3c01 	strb.w	r3, [r1, #-1]
 80045c8:	f101 32ff 	add.w	r2, r1, #4294967295
 80045cc:	d1ee      	bne.n	80045ac <_vfprintf_r+0x644>
 80045ce:	9802      	ldr	r0, [sp, #8]
 80045d0:	920a      	str	r2, [sp, #40]	; 0x28
 80045d2:	07c0      	lsls	r0, r0, #31
 80045d4:	f140 8274 	bpl.w	8004ac0 <_vfprintf_r+0xb58>
 80045d8:	2b30      	cmp	r3, #48	; 0x30
 80045da:	f000 8555 	beq.w	8005088 <_vfprintf_r+0x1120>
 80045de:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80045e0:	2330      	movs	r3, #48	; 0x30
 80045e2:	3902      	subs	r1, #2
 80045e4:	f802 3c01 	strb.w	r3, [r2, #-1]
 80045e8:	ab2e      	add	r3, sp, #184	; 0xb8
 80045ea:	1a5b      	subs	r3, r3, r1
 80045ec:	9308      	str	r3, [sp, #32]
 80045ee:	910a      	str	r1, [sp, #40]	; 0x28
 80045f0:	e66f      	b.n	80042d2 <_vfprintf_r+0x36a>
 80045f2:	9909      	ldr	r1, [sp, #36]	; 0x24
 80045f4:	2300      	movs	r3, #0
 80045f6:	680a      	ldr	r2, [r1, #0]
 80045f8:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 80045fc:	461f      	mov	r7, r3
 80045fe:	f88d 2090 	strb.w	r2, [sp, #144]	; 0x90
 8004602:	2301      	movs	r3, #1
 8004604:	1d0a      	adds	r2, r1, #4
 8004606:	e9cd 8302 	strd	r8, r3, [sp, #8]
 800460a:	e9cd 3208 	strd	r3, r2, [sp, #32]
 800460e:	ab24      	add	r3, sp, #144	; 0x90
 8004610:	9704      	str	r7, [sp, #16]
 8004612:	970b      	str	r7, [sp, #44]	; 0x2c
 8004614:	930a      	str	r3, [sp, #40]	; 0x28
 8004616:	e668      	b.n	80042ea <_vfprintf_r+0x382>
 8004618:	f89a 6000 	ldrb.w	r6, [sl]
 800461c:	2900      	cmp	r1, #0
 800461e:	f47f ad21 	bne.w	8004064 <_vfprintf_r+0xfc>
 8004622:	2201      	movs	r2, #1
 8004624:	2120      	movs	r1, #32
 8004626:	e51d      	b.n	8004064 <_vfprintf_r+0xfc>
 8004628:	f048 0801 	orr.w	r8, r8, #1
 800462c:	f89a 6000 	ldrb.w	r6, [sl]
 8004630:	e518      	b.n	8004064 <_vfprintf_r+0xfc>
 8004632:	bf00      	nop
 8004634:	08009b58 	.word	0x08009b58
 8004638:	08009b24 	.word	0x08009b24
 800463c:	08009b68 	.word	0x08009b68
 8004640:	2a00      	cmp	r2, #0
 8004642:	f040 870a 	bne.w	800545a <_vfprintf_r+0x14f2>
 8004646:	4bb6      	ldr	r3, [pc, #728]	; (8004920 <_vfprintf_r+0x9b8>)
 8004648:	9311      	str	r3, [sp, #68]	; 0x44
 800464a:	f018 0f20 	tst.w	r8, #32
 800464e:	d183      	bne.n	8004558 <_vfprintf_r+0x5f0>
 8004650:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004652:	f018 0f10 	tst.w	r8, #16
 8004656:	f853 4b04 	ldr.w	r4, [r3], #4
 800465a:	9309      	str	r3, [sp, #36]	; 0x24
 800465c:	f040 82f2 	bne.w	8004c44 <_vfprintf_r+0xcdc>
 8004660:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004664:	f000 82ee 	beq.w	8004c44 <_vfprintf_r+0xcdc>
 8004668:	b2a4      	uxth	r4, r4
 800466a:	2500      	movs	r5, #0
 800466c:	e77d      	b.n	800456a <_vfprintf_r+0x602>
 800466e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004670:	6813      	ldr	r3, [r2, #0]
 8004672:	930a      	str	r3, [sp, #40]	; 0x28
 8004674:	2500      	movs	r5, #0
 8004676:	f88d 5067 	strb.w	r5, [sp, #103]	; 0x67
 800467a:	1d14      	adds	r4, r2, #4
 800467c:	2b00      	cmp	r3, #0
 800467e:	f000 84e6 	beq.w	800504e <_vfprintf_r+0x10e6>
 8004682:	9a04      	ldr	r2, [sp, #16]
 8004684:	1c53      	adds	r3, r2, #1
 8004686:	f000 8540 	beq.w	800510a <_vfprintf_r+0x11a2>
 800468a:	4629      	mov	r1, r5
 800468c:	980a      	ldr	r0, [sp, #40]	; 0x28
 800468e:	f002 fd47 	bl	8007120 <memchr>
 8004692:	2800      	cmp	r0, #0
 8004694:	f000 84ae 	beq.w	8004ff4 <_vfprintf_r+0x108c>
 8004698:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800469a:	9504      	str	r5, [sp, #16]
 800469c:	1ac3      	subs	r3, r0, r3
 800469e:	9308      	str	r3, [sp, #32]
 80046a0:	9409      	str	r4, [sp, #36]	; 0x24
 80046a2:	f8cd 8008 	str.w	r8, [sp, #8]
 80046a6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80046aa:	9303      	str	r3, [sp, #12]
 80046ac:	950b      	str	r5, [sp, #44]	; 0x2c
 80046ae:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 80046b2:	e616      	b.n	80042e2 <_vfprintf_r+0x37a>
 80046b4:	2a00      	cmp	r2, #0
 80046b6:	f040 86bc 	bne.w	8005432 <_vfprintf_r+0x14ca>
 80046ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80046bc:	f018 0f20 	tst.w	r8, #32
 80046c0:	f852 3b04 	ldr.w	r3, [r2], #4
 80046c4:	9209      	str	r2, [sp, #36]	; 0x24
 80046c6:	f000 83a2 	beq.w	8004e0e <_vfprintf_r+0xea6>
 80046ca:	9a05      	ldr	r2, [sp, #20]
 80046cc:	4610      	mov	r0, r2
 80046ce:	17d1      	asrs	r1, r2, #31
 80046d0:	e9c3 0100 	strd	r0, r1, [r3]
 80046d4:	e491      	b.n	8003ffa <_vfprintf_r+0x92>
 80046d6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046d8:	f89a 6000 	ldrb.w	r6, [sl]
 80046dc:	6818      	ldr	r0, [r3, #0]
 80046de:	9007      	str	r0, [sp, #28]
 80046e0:	2800      	cmp	r0, #0
 80046e2:	f103 0304 	add.w	r3, r3, #4
 80046e6:	f2c0 845d 	blt.w	8004fa4 <_vfprintf_r+0x103c>
 80046ea:	9309      	str	r3, [sp, #36]	; 0x24
 80046ec:	e4ba      	b.n	8004064 <_vfprintf_r+0xfc>
 80046ee:	f89a 6000 	ldrb.w	r6, [sl]
 80046f2:	2201      	movs	r2, #1
 80046f4:	212b      	movs	r1, #43	; 0x2b
 80046f6:	e4b5      	b.n	8004064 <_vfprintf_r+0xfc>
 80046f8:	2a00      	cmp	r2, #0
 80046fa:	f040 869e 	bne.w	800543a <_vfprintf_r+0x14d2>
 80046fe:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004700:	3407      	adds	r4, #7
 8004702:	f024 0407 	bic.w	r4, r4, #7
 8004706:	ed94 7b00 	vldr	d7, [r4]
 800470a:	ec52 1b17 	vmov	r1, r2, d7
 800470e:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004712:	9313      	str	r3, [sp, #76]	; 0x4c
 8004714:	ed8d 7a12 	vstr	s14, [sp, #72]	; 0x48
 8004718:	3408      	adds	r4, #8
 800471a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800471e:	f04f 32ff 	mov.w	r2, #4294967295
 8004722:	4b80      	ldr	r3, [pc, #512]	; (8004924 <_vfprintf_r+0x9bc>)
 8004724:	9409      	str	r4, [sp, #36]	; 0x24
 8004726:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 800472a:	f004 fc0d 	bl	8008f48 <__aeabi_dcmpun>
 800472e:	2800      	cmp	r0, #0
 8004730:	f040 837c 	bne.w	8004e2c <_vfprintf_r+0xec4>
 8004734:	f04f 32ff 	mov.w	r2, #4294967295
 8004738:	4b7a      	ldr	r3, [pc, #488]	; (8004924 <_vfprintf_r+0x9bc>)
 800473a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800473e:	f004 fbe5 	bl	8008f0c <__aeabi_dcmple>
 8004742:	2800      	cmp	r0, #0
 8004744:	f040 8372 	bne.w	8004e2c <_vfprintf_r+0xec4>
 8004748:	2200      	movs	r2, #0
 800474a:	2300      	movs	r3, #0
 800474c:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004750:	f004 fbd2 	bl	8008ef8 <__aeabi_dcmplt>
 8004754:	2800      	cmp	r0, #0
 8004756:	f040 8429 	bne.w	8004fac <_vfprintf_r+0x1044>
 800475a:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 800475e:	4a72      	ldr	r2, [pc, #456]	; (8004928 <_vfprintf_r+0x9c0>)
 8004760:	4b72      	ldr	r3, [pc, #456]	; (800492c <_vfprintf_r+0x9c4>)
 8004762:	2103      	movs	r1, #3
 8004764:	2000      	movs	r0, #0
 8004766:	f028 0480 	bic.w	r4, r8, #128	; 0x80
 800476a:	2e47      	cmp	r6, #71	; 0x47
 800476c:	bfd8      	it	le
 800476e:	461a      	movle	r2, r3
 8004770:	e9cd 1003 	strd	r1, r0, [sp, #12]
 8004774:	9402      	str	r4, [sp, #8]
 8004776:	920a      	str	r2, [sp, #40]	; 0x28
 8004778:	9108      	str	r1, [sp, #32]
 800477a:	900b      	str	r0, [sp, #44]	; 0x2c
 800477c:	e5b1      	b.n	80042e2 <_vfprintf_r+0x37a>
 800477e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004780:	4b67      	ldr	r3, [pc, #412]	; (8004920 <_vfprintf_r+0x9b8>)
 8004782:	6814      	ldr	r4, [r2, #0]
 8004784:	9311      	str	r3, [sp, #68]	; 0x44
 8004786:	3204      	adds	r2, #4
 8004788:	f647 0330 	movw	r3, #30768	; 0x7830
 800478c:	f8ad 3068 	strh.w	r3, [sp, #104]	; 0x68
 8004790:	f048 0802 	orr.w	r8, r8, #2
 8004794:	9209      	str	r2, [sp, #36]	; 0x24
 8004796:	2500      	movs	r5, #0
 8004798:	2302      	movs	r3, #2
 800479a:	2678      	movs	r6, #120	; 0x78
 800479c:	e6f5      	b.n	800458a <_vfprintf_r+0x622>
 800479e:	f048 0820 	orr.w	r8, r8, #32
 80047a2:	f89a 6000 	ldrb.w	r6, [sl]
 80047a6:	e45d      	b.n	8004064 <_vfprintf_r+0xfc>
 80047a8:	f048 0808 	orr.w	r8, r8, #8
 80047ac:	f89a 6000 	ldrb.w	r6, [sl]
 80047b0:	e458      	b.n	8004064 <_vfprintf_r+0xfc>
 80047b2:	f89a 6000 	ldrb.w	r6, [sl]
 80047b6:	2e2a      	cmp	r6, #42	; 0x2a
 80047b8:	f10a 0001 	add.w	r0, sl, #1
 80047bc:	f000 860d 	beq.w	80053da <_vfprintf_r+0x1472>
 80047c0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80047c4:	2b09      	cmp	r3, #9
 80047c6:	4682      	mov	sl, r0
 80047c8:	f200 8507 	bhi.w	80051da <_vfprintf_r+0x1272>
 80047cc:	2000      	movs	r0, #0
 80047ce:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80047d2:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 80047d6:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 80047da:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80047de:	2b09      	cmp	r3, #9
 80047e0:	d9f5      	bls.n	80047ce <_vfprintf_r+0x866>
 80047e2:	9004      	str	r0, [sp, #16]
 80047e4:	e440      	b.n	8004068 <_vfprintf_r+0x100>
 80047e6:	2a00      	cmp	r2, #0
 80047e8:	f040 861f 	bne.w	800542a <_vfprintf_r+0x14c2>
 80047ec:	f048 0810 	orr.w	r8, r8, #16
 80047f0:	f018 0f20 	tst.w	r8, #32
 80047f4:	f47f ad3f 	bne.w	8004276 <_vfprintf_r+0x30e>
 80047f8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047fa:	f018 0f10 	tst.w	r8, #16
 80047fe:	f853 4b04 	ldr.w	r4, [r3], #4
 8004802:	9309      	str	r3, [sp, #36]	; 0x24
 8004804:	f040 8210 	bne.w	8004c28 <_vfprintf_r+0xcc0>
 8004808:	f018 0f40 	tst.w	r8, #64	; 0x40
 800480c:	f000 820c 	beq.w	8004c28 <_vfprintf_r+0xcc0>
 8004810:	b224      	sxth	r4, r4
 8004812:	17e5      	asrs	r5, r4, #31
 8004814:	e538      	b.n	8004288 <_vfprintf_r+0x320>
 8004816:	f89a 6000 	ldrb.w	r6, [sl]
 800481a:	f048 0804 	orr.w	r8, r8, #4
 800481e:	e421      	b.n	8004064 <_vfprintf_r+0xfc>
 8004820:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004822:	3407      	adds	r4, #7
 8004824:	f024 0307 	bic.w	r3, r4, #7
 8004828:	f103 0208 	add.w	r2, r3, #8
 800482c:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004830:	9209      	str	r2, [sp, #36]	; 0x24
 8004832:	2300      	movs	r3, #0
 8004834:	e6a9      	b.n	800458a <_vfprintf_r+0x622>
 8004836:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004838:	3407      	adds	r4, #7
 800483a:	f024 0307 	bic.w	r3, r4, #7
 800483e:	f103 0208 	add.w	r2, r3, #8
 8004842:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004846:	9209      	str	r2, [sp, #36]	; 0x24
 8004848:	2301      	movs	r3, #1
 800484a:	e69e      	b.n	800458a <_vfprintf_r+0x622>
 800484c:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8004850:	f002 f948 	bl	8006ae4 <__retarget_lock_release_recursive>
 8004854:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8004858:	e4e3      	b.n	8004222 <_vfprintf_r+0x2ba>
 800485a:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 800485e:	f002 f941 	bl	8006ae4 <__retarget_lock_release_recursive>
 8004862:	f04f 33ff 	mov.w	r3, #4294967295
 8004866:	9305      	str	r3, [sp, #20]
 8004868:	e4dd      	b.n	8004226 <_vfprintf_r+0x2be>
 800486a:	2a00      	cmp	r2, #0
 800486c:	f040 85f1 	bne.w	8005452 <_vfprintf_r+0x14ea>
 8004870:	2e00      	cmp	r6, #0
 8004872:	f43f ae4a 	beq.w	800450a <_vfprintf_r+0x5a2>
 8004876:	2300      	movs	r3, #0
 8004878:	2201      	movs	r2, #1
 800487a:	461f      	mov	r7, r3
 800487c:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8004880:	9304      	str	r3, [sp, #16]
 8004882:	930b      	str	r3, [sp, #44]	; 0x2c
 8004884:	ab24      	add	r3, sp, #144	; 0x90
 8004886:	9203      	str	r2, [sp, #12]
 8004888:	f88d 6090 	strb.w	r6, [sp, #144]	; 0x90
 800488c:	f8cd 8008 	str.w	r8, [sp, #8]
 8004890:	9208      	str	r2, [sp, #32]
 8004892:	930a      	str	r3, [sp, #40]	; 0x28
 8004894:	e529      	b.n	80042ea <_vfprintf_r+0x382>
 8004896:	2e65      	cmp	r6, #101	; 0x65
 8004898:	f340 80a4 	ble.w	80049e4 <_vfprintf_r+0xa7c>
 800489c:	2200      	movs	r2, #0
 800489e:	2300      	movs	r3, #0
 80048a0:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80048a4:	f004 fb1e 	bl	8008ee4 <__aeabi_dcmpeq>
 80048a8:	2800      	cmp	r0, #0
 80048aa:	f000 8145 	beq.w	8004b38 <_vfprintf_r+0xbd0>
 80048ae:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80048b0:	4a1f      	ldr	r2, [pc, #124]	; (8004930 <_vfprintf_r+0x9c8>)
 80048b2:	f8c9 2000 	str.w	r2, [r9]
 80048b6:	3301      	adds	r3, #1
 80048b8:	3401      	adds	r4, #1
 80048ba:	2201      	movs	r2, #1
 80048bc:	2b07      	cmp	r3, #7
 80048be:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 80048c2:	f8c9 2004 	str.w	r2, [r9, #4]
 80048c6:	f300 8362 	bgt.w	8004f8e <_vfprintf_r+0x1026>
 80048ca:	f109 0908 	add.w	r9, r9, #8
 80048ce:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80048d0:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80048d2:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80048d4:	4293      	cmp	r3, r2
 80048d6:	db03      	blt.n	80048e0 <_vfprintf_r+0x978>
 80048d8:	9b02      	ldr	r3, [sp, #8]
 80048da:	07d8      	lsls	r0, r3, #31
 80048dc:	f57f adc4 	bpl.w	8004468 <_vfprintf_r+0x500>
 80048e0:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80048e2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80048e4:	f8c9 2000 	str.w	r2, [r9]
 80048e8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80048ea:	f8c9 2004 	str.w	r2, [r9, #4]
 80048ee:	3301      	adds	r3, #1
 80048f0:	4414      	add	r4, r2
 80048f2:	2b07      	cmp	r3, #7
 80048f4:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 80048f8:	f300 839d 	bgt.w	8005036 <_vfprintf_r+0x10ce>
 80048fc:	f109 0908 	add.w	r9, r9, #8
 8004900:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004902:	1e5d      	subs	r5, r3, #1
 8004904:	2d00      	cmp	r5, #0
 8004906:	f77f adaf 	ble.w	8004468 <_vfprintf_r+0x500>
 800490a:	2d10      	cmp	r5, #16
 800490c:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800490e:	f8df 8024 	ldr.w	r8, [pc, #36]	; 8004934 <_vfprintf_r+0x9cc>
 8004912:	f340 8250 	ble.w	8004db6 <_vfprintf_r+0xe4e>
 8004916:	4647      	mov	r7, r8
 8004918:	2610      	movs	r6, #16
 800491a:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800491e:	e011      	b.n	8004944 <_vfprintf_r+0x9dc>
 8004920:	08009b38 	.word	0x08009b38
 8004924:	7fefffff 	.word	0x7fefffff
 8004928:	08009b18 	.word	0x08009b18
 800492c:	08009b14 	.word	0x08009b14
 8004930:	08009b54 	.word	0x08009b54
 8004934:	08009b68 	.word	0x08009b68
 8004938:	f109 0908 	add.w	r9, r9, #8
 800493c:	3d10      	subs	r5, #16
 800493e:	2d10      	cmp	r5, #16
 8004940:	f340 8238 	ble.w	8004db4 <_vfprintf_r+0xe4c>
 8004944:	3201      	adds	r2, #1
 8004946:	3410      	adds	r4, #16
 8004948:	2a07      	cmp	r2, #7
 800494a:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800494e:	e9c9 7600 	strd	r7, r6, [r9]
 8004952:	ddf1      	ble.n	8004938 <_vfprintf_r+0x9d0>
 8004954:	aa21      	add	r2, sp, #132	; 0x84
 8004956:	4659      	mov	r1, fp
 8004958:	4640      	mov	r0, r8
 800495a:	f003 f85b 	bl	8007a14 <__sprint_r>
 800495e:	2800      	cmp	r0, #0
 8004960:	f47f ac55 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004964:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004968:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800496c:	e7e6      	b.n	800493c <_vfprintf_r+0x9d4>
 800496e:	9b07      	ldr	r3, [sp, #28]
 8004970:	9a03      	ldr	r2, [sp, #12]
 8004972:	1a9d      	subs	r5, r3, r2
 8004974:	2d00      	cmp	r5, #0
 8004976:	f77f ad2a 	ble.w	80043ce <_vfprintf_r+0x466>
 800497a:	2d10      	cmp	r5, #16
 800497c:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800497e:	f8df 886c 	ldr.w	r8, [pc, #2156]	; 80051ec <_vfprintf_r+0x1284>
 8004982:	dd23      	ble.n	80049cc <_vfprintf_r+0xa64>
 8004984:	4623      	mov	r3, r4
 8004986:	2710      	movs	r7, #16
 8004988:	4644      	mov	r4, r8
 800498a:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800498e:	e004      	b.n	800499a <_vfprintf_r+0xa32>
 8004990:	3d10      	subs	r5, #16
 8004992:	2d10      	cmp	r5, #16
 8004994:	f109 0908 	add.w	r9, r9, #8
 8004998:	dd16      	ble.n	80049c8 <_vfprintf_r+0xa60>
 800499a:	3201      	adds	r2, #1
 800499c:	3310      	adds	r3, #16
 800499e:	2a07      	cmp	r2, #7
 80049a0:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 80049a4:	e9c9 4700 	strd	r4, r7, [r9]
 80049a8:	ddf2      	ble.n	8004990 <_vfprintf_r+0xa28>
 80049aa:	aa21      	add	r2, sp, #132	; 0x84
 80049ac:	4659      	mov	r1, fp
 80049ae:	4640      	mov	r0, r8
 80049b0:	f003 f830 	bl	8007a14 <__sprint_r>
 80049b4:	2800      	cmp	r0, #0
 80049b6:	f47f ac2a 	bne.w	800420e <_vfprintf_r+0x2a6>
 80049ba:	3d10      	subs	r5, #16
 80049bc:	2d10      	cmp	r5, #16
 80049be:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 80049c2:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80049c6:	dce8      	bgt.n	800499a <_vfprintf_r+0xa32>
 80049c8:	46a0      	mov	r8, r4
 80049ca:	461c      	mov	r4, r3
 80049cc:	3201      	adds	r2, #1
 80049ce:	442c      	add	r4, r5
 80049d0:	2a07      	cmp	r2, #7
 80049d2:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80049d6:	e9c9 8500 	strd	r8, r5, [r9]
 80049da:	f300 8296 	bgt.w	8004f0a <_vfprintf_r+0xfa2>
 80049de:	f109 0908 	add.w	r9, r9, #8
 80049e2:	e4f4      	b.n	80043ce <_vfprintf_r+0x466>
 80049e4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80049e6:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80049e8:	2a01      	cmp	r2, #1
 80049ea:	f104 0401 	add.w	r4, r4, #1
 80049ee:	f103 0501 	add.w	r5, r3, #1
 80049f2:	f109 0608 	add.w	r6, r9, #8
 80049f6:	f340 8127 	ble.w	8004c48 <_vfprintf_r+0xce0>
 80049fa:	2301      	movs	r3, #1
 80049fc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049fe:	f8c9 2000 	str.w	r2, [r9]
 8004a02:	2d07      	cmp	r5, #7
 8004a04:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 8004a08:	f8c9 3004 	str.w	r3, [r9, #4]
 8004a0c:	f300 81b6 	bgt.w	8004d7c <_vfprintf_r+0xe14>
 8004a10:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004a12:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004a14:	3501      	adds	r5, #1
 8004a16:	441c      	add	r4, r3
 8004a18:	2d07      	cmp	r5, #7
 8004a1a:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 8004a1e:	e9c6 2300 	strd	r2, r3, [r6]
 8004a22:	f300 81b7 	bgt.w	8004d94 <_vfprintf_r+0xe2c>
 8004a26:	3608      	adds	r6, #8
 8004a28:	1c6b      	adds	r3, r5, #1
 8004a2a:	461f      	mov	r7, r3
 8004a2c:	9704      	str	r7, [sp, #16]
 8004a2e:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 8004a30:	9308      	str	r3, [sp, #32]
 8004a32:	2200      	movs	r2, #0
 8004a34:	2300      	movs	r3, #0
 8004a36:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004a3a:	3f01      	subs	r7, #1
 8004a3c:	f106 0908 	add.w	r9, r6, #8
 8004a40:	f004 fa50 	bl	8008ee4 <__aeabi_dcmpeq>
 8004a44:	2800      	cmp	r0, #0
 8004a46:	f040 80c6 	bne.w	8004bd6 <_vfprintf_r+0xc6e>
 8004a4a:	443c      	add	r4, r7
 8004a4c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a4e:	6077      	str	r7, [r6, #4]
 8004a50:	9f04      	ldr	r7, [sp, #16]
 8004a52:	9423      	str	r4, [sp, #140]	; 0x8c
 8004a54:	3301      	adds	r3, #1
 8004a56:	2f07      	cmp	r7, #7
 8004a58:	6033      	str	r3, [r6, #0]
 8004a5a:	9722      	str	r7, [sp, #136]	; 0x88
 8004a5c:	f300 8107 	bgt.w	8004c6e <_vfprintf_r+0xd06>
 8004a60:	f106 0310 	add.w	r3, r6, #16
 8004a64:	1caa      	adds	r2, r5, #2
 8004a66:	464e      	mov	r6, r9
 8004a68:	9204      	str	r2, [sp, #16]
 8004a6a:	4699      	mov	r9, r3
 8004a6c:	9a14      	ldr	r2, [sp, #80]	; 0x50
 8004a6e:	6072      	str	r2, [r6, #4]
 8004a70:	4414      	add	r4, r2
 8004a72:	9a04      	ldr	r2, [sp, #16]
 8004a74:	9423      	str	r4, [sp, #140]	; 0x8c
 8004a76:	ab1d      	add	r3, sp, #116	; 0x74
 8004a78:	2a07      	cmp	r2, #7
 8004a7a:	9222      	str	r2, [sp, #136]	; 0x88
 8004a7c:	6033      	str	r3, [r6, #0]
 8004a7e:	f77f acf3 	ble.w	8004468 <_vfprintf_r+0x500>
 8004a82:	aa21      	add	r2, sp, #132	; 0x84
 8004a84:	4659      	mov	r1, fp
 8004a86:	9806      	ldr	r0, [sp, #24]
 8004a88:	f002 ffc4 	bl	8007a14 <__sprint_r>
 8004a8c:	2800      	cmp	r0, #0
 8004a8e:	f47f abbe 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004a92:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004a94:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004a98:	e4e6      	b.n	8004468 <_vfprintf_r+0x500>
 8004a9a:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
 8004a9e:	aa2e      	add	r2, sp, #184	; 0xb8
 8004aa0:	0923      	lsrs	r3, r4, #4
 8004aa2:	f004 000f 	and.w	r0, r4, #15
 8004aa6:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8004aaa:	0929      	lsrs	r1, r5, #4
 8004aac:	461c      	mov	r4, r3
 8004aae:	460d      	mov	r5, r1
 8004ab0:	f81c 3000 	ldrb.w	r3, [ip, r0]
 8004ab4:	f802 3d01 	strb.w	r3, [r2, #-1]!
 8004ab8:	ea54 0305 	orrs.w	r3, r4, r5
 8004abc:	d1f0      	bne.n	8004aa0 <_vfprintf_r+0xb38>
 8004abe:	920a      	str	r2, [sp, #40]	; 0x28
 8004ac0:	ab2e      	add	r3, sp, #184	; 0xb8
 8004ac2:	1a9b      	subs	r3, r3, r2
 8004ac4:	9308      	str	r3, [sp, #32]
 8004ac6:	e404      	b.n	80042d2 <_vfprintf_r+0x36a>
 8004ac8:	aa21      	add	r2, sp, #132	; 0x84
 8004aca:	4659      	mov	r1, fp
 8004acc:	9806      	ldr	r0, [sp, #24]
 8004ace:	9315      	str	r3, [sp, #84]	; 0x54
 8004ad0:	f002 ffa0 	bl	8007a14 <__sprint_r>
 8004ad4:	2800      	cmp	r0, #0
 8004ad6:	f47f ab9a 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004ada:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004adc:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004ade:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004ae2:	e461      	b.n	80043a8 <_vfprintf_r+0x440>
 8004ae4:	aa21      	add	r2, sp, #132	; 0x84
 8004ae6:	4659      	mov	r1, fp
 8004ae8:	9806      	ldr	r0, [sp, #24]
 8004aea:	f002 ff93 	bl	8007a14 <__sprint_r>
 8004aee:	2800      	cmp	r0, #0
 8004af0:	f47f ab8d 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004af4:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004af6:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004afa:	e464      	b.n	80043c6 <_vfprintf_r+0x45e>
 8004afc:	f8cd 8008 	str.w	r8, [sp, #8]
 8004b00:	2d00      	cmp	r5, #0
 8004b02:	bf08      	it	eq
 8004b04:	2c0a      	cmpeq	r4, #10
 8004b06:	f080 8160 	bcs.w	8004dca <_vfprintf_r+0xe62>
 8004b0a:	ab3e      	add	r3, sp, #248	; 0xf8
 8004b0c:	3430      	adds	r4, #48	; 0x30
 8004b0e:	f803 4d41 	strb.w	r4, [r3, #-65]!
 8004b12:	930a      	str	r3, [sp, #40]	; 0x28
 8004b14:	2301      	movs	r3, #1
 8004b16:	9308      	str	r3, [sp, #32]
 8004b18:	f7ff bbdb 	b.w	80042d2 <_vfprintf_r+0x36a>
 8004b1c:	2302      	movs	r3, #2
 8004b1e:	e534      	b.n	800458a <_vfprintf_r+0x622>
 8004b20:	aa21      	add	r2, sp, #132	; 0x84
 8004b22:	4659      	mov	r1, fp
 8004b24:	9806      	ldr	r0, [sp, #24]
 8004b26:	f002 ff75 	bl	8007a14 <__sprint_r>
 8004b2a:	2800      	cmp	r0, #0
 8004b2c:	f47f ab6f 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004b30:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004b32:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004b36:	e483      	b.n	8004440 <_vfprintf_r+0x4d8>
 8004b38:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004b3a:	2b00      	cmp	r3, #0
 8004b3c:	f340 81f2 	ble.w	8004f24 <_vfprintf_r+0xfbc>
 8004b40:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b42:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004b44:	4293      	cmp	r3, r2
 8004b46:	bfa8      	it	ge
 8004b48:	4613      	movge	r3, r2
 8004b4a:	2b00      	cmp	r3, #0
 8004b4c:	461d      	mov	r5, r3
 8004b4e:	dd0e      	ble.n	8004b6e <_vfprintf_r+0xc06>
 8004b50:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8004b52:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b54:	f8c9 2000 	str.w	r2, [r9]
 8004b58:	3301      	adds	r3, #1
 8004b5a:	442c      	add	r4, r5
 8004b5c:	2b07      	cmp	r3, #7
 8004b5e:	9423      	str	r4, [sp, #140]	; 0x8c
 8004b60:	f8c9 5004 	str.w	r5, [r9, #4]
 8004b64:	9322      	str	r3, [sp, #136]	; 0x88
 8004b66:	f300 82f3 	bgt.w	8005150 <_vfprintf_r+0x11e8>
 8004b6a:	f109 0908 	add.w	r9, r9, #8
 8004b6e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b70:	2d00      	cmp	r5, #0
 8004b72:	bfa8      	it	ge
 8004b74:	1b5b      	subge	r3, r3, r5
 8004b76:	2b00      	cmp	r3, #0
 8004b78:	461d      	mov	r5, r3
 8004b7a:	f340 80a4 	ble.w	8004cc6 <_vfprintf_r+0xd5e>
 8004b7e:	2b10      	cmp	r3, #16
 8004b80:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004b82:	f8df 8668 	ldr.w	r8, [pc, #1640]	; 80051ec <_vfprintf_r+0x1284>
 8004b86:	f340 8273 	ble.w	8005070 <_vfprintf_r+0x1108>
 8004b8a:	4647      	mov	r7, r8
 8004b8c:	2610      	movs	r6, #16
 8004b8e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004b92:	e005      	b.n	8004ba0 <_vfprintf_r+0xc38>
 8004b94:	f109 0908 	add.w	r9, r9, #8
 8004b98:	3d10      	subs	r5, #16
 8004b9a:	2d10      	cmp	r5, #16
 8004b9c:	f340 8267 	ble.w	800506e <_vfprintf_r+0x1106>
 8004ba0:	3201      	adds	r2, #1
 8004ba2:	3410      	adds	r4, #16
 8004ba4:	2a07      	cmp	r2, #7
 8004ba6:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004baa:	e9c9 7600 	strd	r7, r6, [r9]
 8004bae:	ddf1      	ble.n	8004b94 <_vfprintf_r+0xc2c>
 8004bb0:	aa21      	add	r2, sp, #132	; 0x84
 8004bb2:	4659      	mov	r1, fp
 8004bb4:	4640      	mov	r0, r8
 8004bb6:	f002 ff2d 	bl	8007a14 <__sprint_r>
 8004bba:	2800      	cmp	r0, #0
 8004bbc:	f47f ab27 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004bc0:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004bc4:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004bc8:	e7e6      	b.n	8004b98 <_vfprintf_r+0xc30>
 8004bca:	9b04      	ldr	r3, [sp, #16]
 8004bcc:	9308      	str	r3, [sp, #32]
 8004bce:	ab2e      	add	r3, sp, #184	; 0xb8
 8004bd0:	930a      	str	r3, [sp, #40]	; 0x28
 8004bd2:	f7ff bb7e 	b.w	80042d2 <_vfprintf_r+0x36a>
 8004bd6:	2f00      	cmp	r7, #0
 8004bd8:	f77f af48 	ble.w	8004a6c <_vfprintf_r+0xb04>
 8004bdc:	2f10      	cmp	r7, #16
 8004bde:	f8df 860c 	ldr.w	r8, [pc, #1548]	; 80051ec <_vfprintf_r+0x1284>
 8004be2:	f340 83f5 	ble.w	80053d0 <_vfprintf_r+0x1468>
 8004be6:	4623      	mov	r3, r4
 8004be8:	f04f 0910 	mov.w	r9, #16
 8004bec:	4644      	mov	r4, r8
 8004bee:	9d08      	ldr	r5, [sp, #32]
 8004bf0:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004bf4:	e005      	b.n	8004c02 <_vfprintf_r+0xc9a>
 8004bf6:	3608      	adds	r6, #8
 8004bf8:	3f10      	subs	r7, #16
 8004bfa:	2f10      	cmp	r7, #16
 8004bfc:	f340 8206 	ble.w	800500c <_vfprintf_r+0x10a4>
 8004c00:	3501      	adds	r5, #1
 8004c02:	3310      	adds	r3, #16
 8004c04:	2d07      	cmp	r5, #7
 8004c06:	e9cd 5322 	strd	r5, r3, [sp, #136]	; 0x88
 8004c0a:	e9c6 4900 	strd	r4, r9, [r6]
 8004c0e:	ddf2      	ble.n	8004bf6 <_vfprintf_r+0xc8e>
 8004c10:	aa21      	add	r2, sp, #132	; 0x84
 8004c12:	4659      	mov	r1, fp
 8004c14:	4640      	mov	r0, r8
 8004c16:	f002 fefd 	bl	8007a14 <__sprint_r>
 8004c1a:	2800      	cmp	r0, #0
 8004c1c:	f47f aaf7 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004c20:	e9dd 5322 	ldrd	r5, r3, [sp, #136]	; 0x88
 8004c24:	ae2e      	add	r6, sp, #184	; 0xb8
 8004c26:	e7e7      	b.n	8004bf8 <_vfprintf_r+0xc90>
 8004c28:	17e5      	asrs	r5, r4, #31
 8004c2a:	2c00      	cmp	r4, #0
 8004c2c:	f175 0300 	sbcs.w	r3, r5, #0
 8004c30:	f6bf ab2f 	bge.w	8004292 <_vfprintf_r+0x32a>
 8004c34:	272d      	movs	r7, #45	; 0x2d
 8004c36:	4264      	negs	r4, r4
 8004c38:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8004c3c:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8004c40:	f7ff bb29 	b.w	8004296 <_vfprintf_r+0x32e>
 8004c44:	2500      	movs	r5, #0
 8004c46:	e490      	b.n	800456a <_vfprintf_r+0x602>
 8004c48:	9a02      	ldr	r2, [sp, #8]
 8004c4a:	07d7      	lsls	r7, r2, #31
 8004c4c:	f53f aed5 	bmi.w	80049fa <_vfprintf_r+0xa92>
 8004c50:	2201      	movs	r2, #1
 8004c52:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004c54:	f8c9 1000 	str.w	r1, [r9]
 8004c58:	2d07      	cmp	r5, #7
 8004c5a:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 8004c5e:	f8c9 2004 	str.w	r2, [r9, #4]
 8004c62:	dc04      	bgt.n	8004c6e <_vfprintf_r+0xd06>
 8004c64:	3302      	adds	r3, #2
 8004c66:	9304      	str	r3, [sp, #16]
 8004c68:	f109 0910 	add.w	r9, r9, #16
 8004c6c:	e6fe      	b.n	8004a6c <_vfprintf_r+0xb04>
 8004c6e:	aa21      	add	r2, sp, #132	; 0x84
 8004c70:	4659      	mov	r1, fp
 8004c72:	9806      	ldr	r0, [sp, #24]
 8004c74:	f002 fece 	bl	8007a14 <__sprint_r>
 8004c78:	2800      	cmp	r0, #0
 8004c7a:	f47f aac8 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004c7e:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 8004c82:	3301      	adds	r3, #1
 8004c84:	9304      	str	r3, [sp, #16]
 8004c86:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8004c8a:	ae2e      	add	r6, sp, #184	; 0xb8
 8004c8c:	e6ee      	b.n	8004a6c <_vfprintf_r+0xb04>
 8004c8e:	aa21      	add	r2, sp, #132	; 0x84
 8004c90:	4659      	mov	r1, fp
 8004c92:	9806      	ldr	r0, [sp, #24]
 8004c94:	9315      	str	r3, [sp, #84]	; 0x54
 8004c96:	f002 febd 	bl	8007a14 <__sprint_r>
 8004c9a:	2800      	cmp	r0, #0
 8004c9c:	f47f aab7 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004ca0:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8004ca4:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004ca6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004ca8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004cac:	f7ff bb6c 	b.w	8004388 <_vfprintf_r+0x420>
 8004cb0:	aa21      	add	r2, sp, #132	; 0x84
 8004cb2:	4659      	mov	r1, fp
 8004cb4:	9806      	ldr	r0, [sp, #24]
 8004cb6:	f002 fead 	bl	8007a14 <__sprint_r>
 8004cba:	2800      	cmp	r0, #0
 8004cbc:	f47f aaa7 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004cc0:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004cc2:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004cc6:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004cc8:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004cca:	4293      	cmp	r3, r2
 8004ccc:	db02      	blt.n	8004cd4 <_vfprintf_r+0xd6c>
 8004cce:	9a02      	ldr	r2, [sp, #8]
 8004cd0:	07d2      	lsls	r2, r2, #31
 8004cd2:	d50f      	bpl.n	8004cf4 <_vfprintf_r+0xd8c>
 8004cd4:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004cd6:	9910      	ldr	r1, [sp, #64]	; 0x40
 8004cd8:	f8c9 1000 	str.w	r1, [r9]
 8004cdc:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004cde:	f8c9 1004 	str.w	r1, [r9, #4]
 8004ce2:	3201      	adds	r2, #1
 8004ce4:	440c      	add	r4, r1
 8004ce6:	2a07      	cmp	r2, #7
 8004ce8:	9423      	str	r4, [sp, #140]	; 0x8c
 8004cea:	9222      	str	r2, [sp, #136]	; 0x88
 8004cec:	f300 823c 	bgt.w	8005168 <_vfprintf_r+0x1200>
 8004cf0:	f109 0908 	add.w	r9, r9, #8
 8004cf4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004cf6:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8004cf8:	1ad3      	subs	r3, r2, r3
 8004cfa:	1a15      	subs	r5, r2, r0
 8004cfc:	429d      	cmp	r5, r3
 8004cfe:	bfa8      	it	ge
 8004d00:	461d      	movge	r5, r3
 8004d02:	2d00      	cmp	r5, #0
 8004d04:	dd0f      	ble.n	8004d26 <_vfprintf_r+0xdbe>
 8004d06:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004d08:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004d0a:	f8c9 5004 	str.w	r5, [r9, #4]
 8004d0e:	3201      	adds	r2, #1
 8004d10:	4401      	add	r1, r0
 8004d12:	442c      	add	r4, r5
 8004d14:	2a07      	cmp	r2, #7
 8004d16:	f8c9 1000 	str.w	r1, [r9]
 8004d1a:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004d1e:	f300 8157 	bgt.w	8004fd0 <_vfprintf_r+0x1068>
 8004d22:	f109 0908 	add.w	r9, r9, #8
 8004d26:	2d00      	cmp	r5, #0
 8004d28:	bfac      	ite	ge
 8004d2a:	1b5d      	subge	r5, r3, r5
 8004d2c:	461d      	movlt	r5, r3
 8004d2e:	2d00      	cmp	r5, #0
 8004d30:	f77f ab9a 	ble.w	8004468 <_vfprintf_r+0x500>
 8004d34:	2d10      	cmp	r5, #16
 8004d36:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004d38:	f8df 84b0 	ldr.w	r8, [pc, #1200]	; 80051ec <_vfprintf_r+0x1284>
 8004d3c:	dd3b      	ble.n	8004db6 <_vfprintf_r+0xe4e>
 8004d3e:	4647      	mov	r7, r8
 8004d40:	2610      	movs	r6, #16
 8004d42:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d46:	e004      	b.n	8004d52 <_vfprintf_r+0xdea>
 8004d48:	f109 0908 	add.w	r9, r9, #8
 8004d4c:	3d10      	subs	r5, #16
 8004d4e:	2d10      	cmp	r5, #16
 8004d50:	dd30      	ble.n	8004db4 <_vfprintf_r+0xe4c>
 8004d52:	3201      	adds	r2, #1
 8004d54:	3410      	adds	r4, #16
 8004d56:	2a07      	cmp	r2, #7
 8004d58:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004d5c:	e9c9 7600 	strd	r7, r6, [r9]
 8004d60:	ddf2      	ble.n	8004d48 <_vfprintf_r+0xde0>
 8004d62:	aa21      	add	r2, sp, #132	; 0x84
 8004d64:	4659      	mov	r1, fp
 8004d66:	4640      	mov	r0, r8
 8004d68:	f002 fe54 	bl	8007a14 <__sprint_r>
 8004d6c:	2800      	cmp	r0, #0
 8004d6e:	f47f aa4e 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004d72:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8004d76:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004d7a:	e7e7      	b.n	8004d4c <_vfprintf_r+0xde4>
 8004d7c:	aa21      	add	r2, sp, #132	; 0x84
 8004d7e:	4659      	mov	r1, fp
 8004d80:	9806      	ldr	r0, [sp, #24]
 8004d82:	f002 fe47 	bl	8007a14 <__sprint_r>
 8004d86:	2800      	cmp	r0, #0
 8004d88:	f47f aa41 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004d8c:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8004d90:	ae2e      	add	r6, sp, #184	; 0xb8
 8004d92:	e63d      	b.n	8004a10 <_vfprintf_r+0xaa8>
 8004d94:	aa21      	add	r2, sp, #132	; 0x84
 8004d96:	4659      	mov	r1, fp
 8004d98:	9806      	ldr	r0, [sp, #24]
 8004d9a:	f002 fe3b 	bl	8007a14 <__sprint_r>
 8004d9e:	2800      	cmp	r0, #0
 8004da0:	f47f aa35 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004da4:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8004da8:	ae2e      	add	r6, sp, #184	; 0xb8
 8004daa:	e63d      	b.n	8004a28 <_vfprintf_r+0xac0>
 8004dac:	2b01      	cmp	r3, #1
 8004dae:	f47f abf8 	bne.w	80045a2 <_vfprintf_r+0x63a>
 8004db2:	e6aa      	b.n	8004b0a <_vfprintf_r+0xba2>
 8004db4:	46b8      	mov	r8, r7
 8004db6:	3201      	adds	r2, #1
 8004db8:	442c      	add	r4, r5
 8004dba:	2a07      	cmp	r2, #7
 8004dbc:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004dc0:	e9c9 8500 	strd	r8, r5, [r9]
 8004dc4:	f77f ab4e 	ble.w	8004464 <_vfprintf_r+0x4fc>
 8004dc8:	e65b      	b.n	8004a82 <_vfprintf_r+0xb1a>
 8004dca:	ab2e      	add	r3, sp, #184	; 0xb8
 8004dcc:	4698      	mov	r8, r3
 8004dce:	4620      	mov	r0, r4
 8004dd0:	4629      	mov	r1, r5
 8004dd2:	220a      	movs	r2, #10
 8004dd4:	2300      	movs	r3, #0
 8004dd6:	f7fe fe23 	bl	8003a20 <__aeabi_uldivmod>
 8004dda:	3230      	adds	r2, #48	; 0x30
 8004ddc:	f808 2d01 	strb.w	r2, [r8, #-1]!
 8004de0:	4620      	mov	r0, r4
 8004de2:	4629      	mov	r1, r5
 8004de4:	2300      	movs	r3, #0
 8004de6:	220a      	movs	r2, #10
 8004de8:	f7fe fe1a 	bl	8003a20 <__aeabi_uldivmod>
 8004dec:	4604      	mov	r4, r0
 8004dee:	460d      	mov	r5, r1
 8004df0:	ea54 0305 	orrs.w	r3, r4, r5
 8004df4:	d1eb      	bne.n	8004dce <_vfprintf_r+0xe66>
 8004df6:	4642      	mov	r2, r8
 8004df8:	ab2e      	add	r3, sp, #184	; 0xb8
 8004dfa:	1a9b      	subs	r3, r3, r2
 8004dfc:	f8cd 8028 	str.w	r8, [sp, #40]	; 0x28
 8004e00:	9308      	str	r3, [sp, #32]
 8004e02:	f7ff ba66 	b.w	80042d2 <_vfprintf_r+0x36a>
 8004e06:	ab2e      	add	r3, sp, #184	; 0xb8
 8004e08:	930a      	str	r3, [sp, #40]	; 0x28
 8004e0a:	f7ff ba62 	b.w	80042d2 <_vfprintf_r+0x36a>
 8004e0e:	f018 0f10 	tst.w	r8, #16
 8004e12:	d107      	bne.n	8004e24 <_vfprintf_r+0xebc>
 8004e14:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004e18:	d004      	beq.n	8004e24 <_vfprintf_r+0xebc>
 8004e1a:	f8bd 2014 	ldrh.w	r2, [sp, #20]
 8004e1e:	801a      	strh	r2, [r3, #0]
 8004e20:	f7ff b8eb 	b.w	8003ffa <_vfprintf_r+0x92>
 8004e24:	9a05      	ldr	r2, [sp, #20]
 8004e26:	601a      	str	r2, [r3, #0]
 8004e28:	f7ff b8e7 	b.w	8003ffa <_vfprintf_r+0x92>
 8004e2c:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004e30:	4602      	mov	r2, r0
 8004e32:	460b      	mov	r3, r1
 8004e34:	f004 f888 	bl	8008f48 <__aeabi_dcmpun>
 8004e38:	2800      	cmp	r0, #0
 8004e3a:	f040 82ab 	bne.w	8005394 <_vfprintf_r+0x142c>
 8004e3e:	9b04      	ldr	r3, [sp, #16]
 8004e40:	1c5c      	adds	r4, r3, #1
 8004e42:	f026 0720 	bic.w	r7, r6, #32
 8004e46:	f000 80d2 	beq.w	8004fee <_vfprintf_r+0x1086>
 8004e4a:	2f47      	cmp	r7, #71	; 0x47
 8004e4c:	d103      	bne.n	8004e56 <_vfprintf_r+0xeee>
 8004e4e:	2b00      	cmp	r3, #0
 8004e50:	bf08      	it	eq
 8004e52:	2301      	moveq	r3, #1
 8004e54:	9304      	str	r3, [sp, #16]
 8004e56:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e58:	f448 7280 	orr.w	r2, r8, #256	; 0x100
 8004e5c:	2b00      	cmp	r3, #0
 8004e5e:	9202      	str	r2, [sp, #8]
 8004e60:	f2c0 819b 	blt.w	800519a <_vfprintf_r+0x1232>
 8004e64:	ed9d 7b0c 	vldr	d7, [sp, #48]	; 0x30
 8004e68:	ed8d 7b16 	vstr	d7, [sp, #88]	; 0x58
 8004e6c:	2300      	movs	r3, #0
 8004e6e:	9315      	str	r3, [sp, #84]	; 0x54
 8004e70:	2e66      	cmp	r6, #102	; 0x66
 8004e72:	f000 819b 	beq.w	80051ac <_vfprintf_r+0x1244>
 8004e76:	2e46      	cmp	r6, #70	; 0x46
 8004e78:	f000 81f7 	beq.w	800526a <_vfprintf_r+0x1302>
 8004e7c:	2f45      	cmp	r7, #69	; 0x45
 8004e7e:	f000 81d8 	beq.w	8005232 <_vfprintf_r+0x12ca>
 8004e82:	aa1f      	add	r2, sp, #124	; 0x7c
 8004e84:	ab1c      	add	r3, sp, #112	; 0x70
 8004e86:	e9cd 3200 	strd	r3, r2, [sp]
 8004e8a:	2102      	movs	r1, #2
 8004e8c:	ab1b      	add	r3, sp, #108	; 0x6c
 8004e8e:	9a04      	ldr	r2, [sp, #16]
 8004e90:	9806      	ldr	r0, [sp, #24]
 8004e92:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8004e96:	f000 fc37 	bl	8005708 <_dtoa_r>
 8004e9a:	2e67      	cmp	r6, #103	; 0x67
 8004e9c:	900a      	str	r0, [sp, #40]	; 0x28
 8004e9e:	f040 82c2 	bne.w	8005426 <_vfprintf_r+0x14be>
 8004ea2:	f018 0f01 	tst.w	r8, #1
 8004ea6:	f000 80f5 	beq.w	8005094 <_vfprintf_r+0x112c>
 8004eaa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004eac:	9a04      	ldr	r2, [sp, #16]
 8004eae:	189c      	adds	r4, r3, r2
 8004eb0:	2200      	movs	r2, #0
 8004eb2:	2300      	movs	r3, #0
 8004eb4:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8004eb8:	f004 f814 	bl	8008ee4 <__aeabi_dcmpeq>
 8004ebc:	2800      	cmp	r0, #0
 8004ebe:	f000 8160 	beq.w	8005182 <_vfprintf_r+0x121a>
 8004ec2:	4623      	mov	r3, r4
 8004ec4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ec6:	1a9b      	subs	r3, r3, r2
 8004ec8:	930e      	str	r3, [sp, #56]	; 0x38
 8004eca:	2f47      	cmp	r7, #71	; 0x47
 8004ecc:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004ece:	930b      	str	r3, [sp, #44]	; 0x2c
 8004ed0:	f000 80e9 	beq.w	80050a6 <_vfprintf_r+0x113e>
 8004ed4:	2e66      	cmp	r6, #102	; 0x66
 8004ed6:	f040 80ed 	bne.w	80050b4 <_vfprintf_r+0x114c>
 8004eda:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004edc:	2b00      	cmp	r3, #0
 8004ede:	9b04      	ldr	r3, [sp, #16]
 8004ee0:	f340 826e 	ble.w	80053c0 <_vfprintf_r+0x1458>
 8004ee4:	2b00      	cmp	r3, #0
 8004ee6:	f040 824b 	bne.w	8005380 <_vfprintf_r+0x1418>
 8004eea:	f018 0f01 	tst.w	r8, #1
 8004eee:	f040 8247 	bne.w	8005380 <_vfprintf_r+0x1418>
 8004ef2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ef4:	9303      	str	r3, [sp, #12]
 8004ef6:	9308      	str	r3, [sp, #32]
 8004ef8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004efa:	2b00      	cmp	r3, #0
 8004efc:	f040 8110 	bne.w	8005120 <_vfprintf_r+0x11b8>
 8004f00:	9304      	str	r3, [sp, #16]
 8004f02:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8004f06:	f7ff b9ec 	b.w	80042e2 <_vfprintf_r+0x37a>
 8004f0a:	aa21      	add	r2, sp, #132	; 0x84
 8004f0c:	4659      	mov	r1, fp
 8004f0e:	9806      	ldr	r0, [sp, #24]
 8004f10:	f002 fd80 	bl	8007a14 <__sprint_r>
 8004f14:	2800      	cmp	r0, #0
 8004f16:	f47f a97a 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004f1a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004f1c:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004f20:	f7ff ba55 	b.w	80043ce <_vfprintf_r+0x466>
 8004f24:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004f26:	49af      	ldr	r1, [pc, #700]	; (80051e4 <_vfprintf_r+0x127c>)
 8004f28:	f8c9 1000 	str.w	r1, [r9]
 8004f2c:	3201      	adds	r2, #1
 8004f2e:	3401      	adds	r4, #1
 8004f30:	2101      	movs	r1, #1
 8004f32:	2a07      	cmp	r2, #7
 8004f34:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004f38:	f8c9 1004 	str.w	r1, [r9, #4]
 8004f3c:	dc3b      	bgt.n	8004fb6 <_vfprintf_r+0x104e>
 8004f3e:	f109 0908 	add.w	r9, r9, #8
 8004f42:	b92b      	cbnz	r3, 8004f50 <_vfprintf_r+0xfe8>
 8004f44:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004f46:	b91a      	cbnz	r2, 8004f50 <_vfprintf_r+0xfe8>
 8004f48:	9a02      	ldr	r2, [sp, #8]
 8004f4a:	07d1      	lsls	r1, r2, #31
 8004f4c:	f57f aa8c 	bpl.w	8004468 <_vfprintf_r+0x500>
 8004f50:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8004f52:	9910      	ldr	r1, [sp, #64]	; 0x40
 8004f54:	f8c9 1000 	str.w	r1, [r9]
 8004f58:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004f5a:	f8c9 1004 	str.w	r1, [r9, #4]
 8004f5e:	3201      	adds	r2, #1
 8004f60:	440c      	add	r4, r1
 8004f62:	2a07      	cmp	r2, #7
 8004f64:	9423      	str	r4, [sp, #140]	; 0x8c
 8004f66:	9222      	str	r2, [sp, #136]	; 0x88
 8004f68:	f300 8142 	bgt.w	80051f0 <_vfprintf_r+0x1288>
 8004f6c:	f109 0908 	add.w	r9, r9, #8
 8004f70:	2b00      	cmp	r3, #0
 8004f72:	f2c0 8193 	blt.w	800529c <_vfprintf_r+0x1334>
 8004f76:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f78:	990a      	ldr	r1, [sp, #40]	; 0x28
 8004f7a:	3201      	adds	r2, #1
 8004f7c:	441c      	add	r4, r3
 8004f7e:	2a07      	cmp	r2, #7
 8004f80:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8004f84:	e9c9 1300 	strd	r1, r3, [r9]
 8004f88:	f77f aa6c 	ble.w	8004464 <_vfprintf_r+0x4fc>
 8004f8c:	e579      	b.n	8004a82 <_vfprintf_r+0xb1a>
 8004f8e:	aa21      	add	r2, sp, #132	; 0x84
 8004f90:	4659      	mov	r1, fp
 8004f92:	9806      	ldr	r0, [sp, #24]
 8004f94:	f002 fd3e 	bl	8007a14 <__sprint_r>
 8004f98:	2800      	cmp	r0, #0
 8004f9a:	f47f a938 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004f9e:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004fa2:	e494      	b.n	80048ce <_vfprintf_r+0x966>
 8004fa4:	4240      	negs	r0, r0
 8004fa6:	9007      	str	r0, [sp, #28]
 8004fa8:	9309      	str	r3, [sp, #36]	; 0x24
 8004faa:	e436      	b.n	800481a <_vfprintf_r+0x8b2>
 8004fac:	272d      	movs	r7, #45	; 0x2d
 8004fae:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8004fb2:	f7ff bbd4 	b.w	800475e <_vfprintf_r+0x7f6>
 8004fb6:	aa21      	add	r2, sp, #132	; 0x84
 8004fb8:	4659      	mov	r1, fp
 8004fba:	9806      	ldr	r0, [sp, #24]
 8004fbc:	f002 fd2a 	bl	8007a14 <__sprint_r>
 8004fc0:	2800      	cmp	r0, #0
 8004fc2:	f47f a924 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004fc6:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004fc8:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004fca:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004fce:	e7b8      	b.n	8004f42 <_vfprintf_r+0xfda>
 8004fd0:	aa21      	add	r2, sp, #132	; 0x84
 8004fd2:	4659      	mov	r1, fp
 8004fd4:	9806      	ldr	r0, [sp, #24]
 8004fd6:	f002 fd1d 	bl	8007a14 <__sprint_r>
 8004fda:	2800      	cmp	r0, #0
 8004fdc:	f47f a917 	bne.w	800420e <_vfprintf_r+0x2a6>
 8004fe0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004fe2:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8004fe4:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8004fe6:	1ad3      	subs	r3, r2, r3
 8004fe8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8004fec:	e69b      	b.n	8004d26 <_vfprintf_r+0xdbe>
 8004fee:	2306      	movs	r3, #6
 8004ff0:	9304      	str	r3, [sp, #16]
 8004ff2:	e730      	b.n	8004e56 <_vfprintf_r+0xeee>
 8004ff4:	9b04      	ldr	r3, [sp, #16]
 8004ff6:	9303      	str	r3, [sp, #12]
 8004ff8:	9308      	str	r3, [sp, #32]
 8004ffa:	9004      	str	r0, [sp, #16]
 8004ffc:	9409      	str	r4, [sp, #36]	; 0x24
 8004ffe:	f8cd 8008 	str.w	r8, [sp, #8]
 8005002:	900b      	str	r0, [sp, #44]	; 0x2c
 8005004:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8005008:	f7ff b96b 	b.w	80042e2 <_vfprintf_r+0x37a>
 800500c:	46a0      	mov	r8, r4
 800500e:	461c      	mov	r4, r3
 8005010:	1c6b      	adds	r3, r5, #1
 8005012:	9304      	str	r3, [sp, #16]
 8005014:	f106 0208 	add.w	r2, r6, #8
 8005018:	9b04      	ldr	r3, [sp, #16]
 800501a:	9322      	str	r3, [sp, #136]	; 0x88
 800501c:	443c      	add	r4, r7
 800501e:	2b07      	cmp	r3, #7
 8005020:	9423      	str	r4, [sp, #140]	; 0x8c
 8005022:	e9c6 8700 	strd	r8, r7, [r6]
 8005026:	f73f ae22 	bgt.w	8004c6e <_vfprintf_r+0xd06>
 800502a:	3301      	adds	r3, #1
 800502c:	9304      	str	r3, [sp, #16]
 800502e:	f102 0908 	add.w	r9, r2, #8
 8005032:	4616      	mov	r6, r2
 8005034:	e51a      	b.n	8004a6c <_vfprintf_r+0xb04>
 8005036:	aa21      	add	r2, sp, #132	; 0x84
 8005038:	4659      	mov	r1, fp
 800503a:	9806      	ldr	r0, [sp, #24]
 800503c:	f002 fcea 	bl	8007a14 <__sprint_r>
 8005040:	2800      	cmp	r0, #0
 8005042:	f47f a8e4 	bne.w	800420e <_vfprintf_r+0x2a6>
 8005046:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8005048:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800504c:	e458      	b.n	8004900 <_vfprintf_r+0x998>
 800504e:	9b04      	ldr	r3, [sp, #16]
 8005050:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 8005052:	9704      	str	r7, [sp, #16]
 8005054:	2b06      	cmp	r3, #6
 8005056:	bf28      	it	cs
 8005058:	2306      	movcs	r3, #6
 800505a:	9303      	str	r3, [sp, #12]
 800505c:	9308      	str	r3, [sp, #32]
 800505e:	4b62      	ldr	r3, [pc, #392]	; (80051e8 <_vfprintf_r+0x1280>)
 8005060:	9409      	str	r4, [sp, #36]	; 0x24
 8005062:	f8cd 8008 	str.w	r8, [sp, #8]
 8005066:	970b      	str	r7, [sp, #44]	; 0x2c
 8005068:	930a      	str	r3, [sp, #40]	; 0x28
 800506a:	f7ff b93a 	b.w	80042e2 <_vfprintf_r+0x37a>
 800506e:	46b8      	mov	r8, r7
 8005070:	3201      	adds	r2, #1
 8005072:	442c      	add	r4, r5
 8005074:	2a07      	cmp	r2, #7
 8005076:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800507a:	e9c9 8500 	strd	r8, r5, [r9]
 800507e:	f73f ae17 	bgt.w	8004cb0 <_vfprintf_r+0xd48>
 8005082:	f109 0908 	add.w	r9, r9, #8
 8005086:	e61e      	b.n	8004cc6 <_vfprintf_r+0xd5e>
 8005088:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800508a:	ab2e      	add	r3, sp, #184	; 0xb8
 800508c:	1a9b      	subs	r3, r3, r2
 800508e:	9308      	str	r3, [sp, #32]
 8005090:	f7ff b91f 	b.w	80042d2 <_vfprintf_r+0x36a>
 8005094:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8005096:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8005098:	920b      	str	r2, [sp, #44]	; 0x2c
 800509a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800509c:	2f47      	cmp	r7, #71	; 0x47
 800509e:	eba3 0302 	sub.w	r3, r3, r2
 80050a2:	930e      	str	r3, [sp, #56]	; 0x38
 80050a4:	d106      	bne.n	80050b4 <_vfprintf_r+0x114c>
 80050a6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80050a8:	1cda      	adds	r2, r3, #3
 80050aa:	db02      	blt.n	80050b2 <_vfprintf_r+0x114a>
 80050ac:	9a04      	ldr	r2, [sp, #16]
 80050ae:	429a      	cmp	r2, r3
 80050b0:	da3d      	bge.n	800512e <_vfprintf_r+0x11c6>
 80050b2:	3e02      	subs	r6, #2
 80050b4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80050b6:	f88d 6074 	strb.w	r6, [sp, #116]	; 0x74
 80050ba:	3b01      	subs	r3, #1
 80050bc:	2b00      	cmp	r3, #0
 80050be:	931b      	str	r3, [sp, #108]	; 0x6c
 80050c0:	bfbd      	ittte	lt
 80050c2:	9b0b      	ldrlt	r3, [sp, #44]	; 0x2c
 80050c4:	f1c3 0301 	rsblt	r3, r3, #1
 80050c8:	222d      	movlt	r2, #45	; 0x2d
 80050ca:	222b      	movge	r2, #43	; 0x2b
 80050cc:	2b09      	cmp	r3, #9
 80050ce:	f88d 2075 	strb.w	r2, [sp, #117]	; 0x75
 80050d2:	f300 8114 	bgt.w	80052fe <_vfprintf_r+0x1396>
 80050d6:	3330      	adds	r3, #48	; 0x30
 80050d8:	2230      	movs	r2, #48	; 0x30
 80050da:	f88d 3077 	strb.w	r3, [sp, #119]	; 0x77
 80050de:	f88d 2076 	strb.w	r2, [sp, #118]	; 0x76
 80050e2:	ab1e      	add	r3, sp, #120	; 0x78
 80050e4:	aa1d      	add	r2, sp, #116	; 0x74
 80050e6:	1a9b      	subs	r3, r3, r2
 80050e8:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80050ea:	9314      	str	r3, [sp, #80]	; 0x50
 80050ec:	2a01      	cmp	r2, #1
 80050ee:	4413      	add	r3, r2
 80050f0:	9308      	str	r3, [sp, #32]
 80050f2:	f340 815b 	ble.w	80053ac <_vfprintf_r+0x1444>
 80050f6:	9b08      	ldr	r3, [sp, #32]
 80050f8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80050fa:	4413      	add	r3, r2
 80050fc:	9308      	str	r3, [sp, #32]
 80050fe:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005102:	9303      	str	r3, [sp, #12]
 8005104:	2300      	movs	r3, #0
 8005106:	930b      	str	r3, [sp, #44]	; 0x2c
 8005108:	e6f6      	b.n	8004ef8 <_vfprintf_r+0xf90>
 800510a:	980a      	ldr	r0, [sp, #40]	; 0x28
 800510c:	9504      	str	r5, [sp, #16]
 800510e:	f002 fbd7 	bl	80078c0 <strlen>
 8005112:	f8cd 8008 	str.w	r8, [sp, #8]
 8005116:	e9cd 0408 	strd	r0, r4, [sp, #32]
 800511a:	4603      	mov	r3, r0
 800511c:	f7ff bac3 	b.w	80046a6 <_vfprintf_r+0x73e>
 8005120:	272d      	movs	r7, #45	; 0x2d
 8005122:	2300      	movs	r3, #0
 8005124:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8005128:	9304      	str	r3, [sp, #16]
 800512a:	f7ff b8db 	b.w	80042e4 <_vfprintf_r+0x37c>
 800512e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005130:	990e      	ldr	r1, [sp, #56]	; 0x38
 8005132:	428b      	cmp	r3, r1
 8005134:	db6a      	blt.n	800520c <_vfprintf_r+0x12a4>
 8005136:	f018 0f01 	tst.w	r8, #1
 800513a:	f000 811b 	beq.w	8005374 <_vfprintf_r+0x140c>
 800513e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005140:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005142:	4413      	add	r3, r2
 8005144:	9308      	str	r3, [sp, #32]
 8005146:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800514a:	9303      	str	r3, [sp, #12]
 800514c:	2667      	movs	r6, #103	; 0x67
 800514e:	e6d3      	b.n	8004ef8 <_vfprintf_r+0xf90>
 8005150:	aa21      	add	r2, sp, #132	; 0x84
 8005152:	4659      	mov	r1, fp
 8005154:	9806      	ldr	r0, [sp, #24]
 8005156:	f002 fc5d 	bl	8007a14 <__sprint_r>
 800515a:	2800      	cmp	r0, #0
 800515c:	f47f a857 	bne.w	800420e <_vfprintf_r+0x2a6>
 8005160:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8005162:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8005166:	e502      	b.n	8004b6e <_vfprintf_r+0xc06>
 8005168:	aa21      	add	r2, sp, #132	; 0x84
 800516a:	4659      	mov	r1, fp
 800516c:	9806      	ldr	r0, [sp, #24]
 800516e:	f002 fc51 	bl	8007a14 <__sprint_r>
 8005172:	2800      	cmp	r0, #0
 8005174:	f47f a84b 	bne.w	800420e <_vfprintf_r+0x2a6>
 8005178:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800517a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800517c:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8005180:	e5b8      	b.n	8004cf4 <_vfprintf_r+0xd8c>
 8005182:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8005184:	42a3      	cmp	r3, r4
 8005186:	f4bf ae9d 	bcs.w	8004ec4 <_vfprintf_r+0xf5c>
 800518a:	2130      	movs	r1, #48	; 0x30
 800518c:	1c5a      	adds	r2, r3, #1
 800518e:	921f      	str	r2, [sp, #124]	; 0x7c
 8005190:	7019      	strb	r1, [r3, #0]
 8005192:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8005194:	429c      	cmp	r4, r3
 8005196:	d8f9      	bhi.n	800518c <_vfprintf_r+0x1224>
 8005198:	e694      	b.n	8004ec4 <_vfprintf_r+0xf5c>
 800519a:	e9dd 120c 	ldrd	r1, r2, [sp, #48]	; 0x30
 800519e:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80051a2:	9317      	str	r3, [sp, #92]	; 0x5c
 80051a4:	232d      	movs	r3, #45	; 0x2d
 80051a6:	9116      	str	r1, [sp, #88]	; 0x58
 80051a8:	9315      	str	r3, [sp, #84]	; 0x54
 80051aa:	e661      	b.n	8004e70 <_vfprintf_r+0xf08>
 80051ac:	9d04      	ldr	r5, [sp, #16]
 80051ae:	9806      	ldr	r0, [sp, #24]
 80051b0:	aa1f      	add	r2, sp, #124	; 0x7c
 80051b2:	ab1c      	add	r3, sp, #112	; 0x70
 80051b4:	e9cd 3200 	strd	r3, r2, [sp]
 80051b8:	2103      	movs	r1, #3
 80051ba:	ab1b      	add	r3, sp, #108	; 0x6c
 80051bc:	462a      	mov	r2, r5
 80051be:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 80051c2:	f000 faa1 	bl	8005708 <_dtoa_r>
 80051c6:	900a      	str	r0, [sp, #40]	; 0x28
 80051c8:	1944      	adds	r4, r0, r5
 80051ca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80051cc:	781b      	ldrb	r3, [r3, #0]
 80051ce:	2b30      	cmp	r3, #48	; 0x30
 80051d0:	f000 80c2 	beq.w	8005358 <_vfprintf_r+0x13f0>
 80051d4:	9d1b      	ldr	r5, [sp, #108]	; 0x6c
 80051d6:	442c      	add	r4, r5
 80051d8:	e66a      	b.n	8004eb0 <_vfprintf_r+0xf48>
 80051da:	2300      	movs	r3, #0
 80051dc:	9304      	str	r3, [sp, #16]
 80051de:	f7fe bf43 	b.w	8004068 <_vfprintf_r+0x100>
 80051e2:	bf00      	nop
 80051e4:	08009b54 	.word	0x08009b54
 80051e8:	08009b4c 	.word	0x08009b4c
 80051ec:	08009b68 	.word	0x08009b68
 80051f0:	aa21      	add	r2, sp, #132	; 0x84
 80051f2:	4659      	mov	r1, fp
 80051f4:	9806      	ldr	r0, [sp, #24]
 80051f6:	f002 fc0d 	bl	8007a14 <__sprint_r>
 80051fa:	2800      	cmp	r0, #0
 80051fc:	f47f a807 	bne.w	800420e <_vfprintf_r+0x2a6>
 8005200:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8005202:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8005206:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800520a:	e6b1      	b.n	8004f70 <_vfprintf_r+0x1008>
 800520c:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	; 0x38
 8005210:	4413      	add	r3, r2
 8005212:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005214:	9308      	str	r3, [sp, #32]
 8005216:	2a00      	cmp	r2, #0
 8005218:	dc06      	bgt.n	8005228 <_vfprintf_r+0x12c0>
 800521a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800521c:	9a08      	ldr	r2, [sp, #32]
 800521e:	f1c3 0301 	rsb	r3, r3, #1
 8005222:	441a      	add	r2, r3
 8005224:	4613      	mov	r3, r2
 8005226:	9208      	str	r2, [sp, #32]
 8005228:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800522c:	9303      	str	r3, [sp, #12]
 800522e:	2667      	movs	r6, #103	; 0x67
 8005230:	e662      	b.n	8004ef8 <_vfprintf_r+0xf90>
 8005232:	9b04      	ldr	r3, [sp, #16]
 8005234:	9806      	ldr	r0, [sp, #24]
 8005236:	1c5d      	adds	r5, r3, #1
 8005238:	a91f      	add	r1, sp, #124	; 0x7c
 800523a:	ab1c      	add	r3, sp, #112	; 0x70
 800523c:	e9cd 3100 	strd	r3, r1, [sp]
 8005240:	462a      	mov	r2, r5
 8005242:	ab1b      	add	r3, sp, #108	; 0x6c
 8005244:	2102      	movs	r1, #2
 8005246:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 800524a:	f000 fa5d 	bl	8005708 <_dtoa_r>
 800524e:	900a      	str	r0, [sp, #40]	; 0x28
 8005250:	2e47      	cmp	r6, #71	; 0x47
 8005252:	f040 80d5 	bne.w	8005400 <_vfprintf_r+0x1498>
 8005256:	f018 0f01 	tst.w	r8, #1
 800525a:	f000 80ca 	beq.w	80053f2 <_vfprintf_r+0x148a>
 800525e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005260:	2e46      	cmp	r6, #70	; 0x46
 8005262:	eb03 0405 	add.w	r4, r3, r5
 8005266:	d0b0      	beq.n	80051ca <_vfprintf_r+0x1262>
 8005268:	e622      	b.n	8004eb0 <_vfprintf_r+0xf48>
 800526a:	9d04      	ldr	r5, [sp, #16]
 800526c:	9806      	ldr	r0, [sp, #24]
 800526e:	aa1f      	add	r2, sp, #124	; 0x7c
 8005270:	ab1c      	add	r3, sp, #112	; 0x70
 8005272:	e9cd 3200 	strd	r3, r2, [sp]
 8005276:	2103      	movs	r1, #3
 8005278:	ab1b      	add	r3, sp, #108	; 0x6c
 800527a:	462a      	mov	r2, r5
 800527c:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8005280:	f000 fa42 	bl	8005708 <_dtoa_r>
 8005284:	900a      	str	r0, [sp, #40]	; 0x28
 8005286:	e7ea      	b.n	800525e <_vfprintf_r+0x12f6>
 8005288:	9806      	ldr	r0, [sp, #24]
 800528a:	aa21      	add	r2, sp, #132	; 0x84
 800528c:	4659      	mov	r1, fp
 800528e:	f002 fbc1 	bl	8007a14 <__sprint_r>
 8005292:	2800      	cmp	r0, #0
 8005294:	f43f a93e 	beq.w	8004514 <_vfprintf_r+0x5ac>
 8005298:	f7fe bfba 	b.w	8004210 <_vfprintf_r+0x2a8>
 800529c:	425d      	negs	r5, r3
 800529e:	3310      	adds	r3, #16
 80052a0:	f8df 81cc 	ldr.w	r8, [pc, #460]	; 8005470 <_vfprintf_r+0x1508>
 80052a4:	da1f      	bge.n	80052e6 <_vfprintf_r+0x137e>
 80052a6:	4647      	mov	r7, r8
 80052a8:	2610      	movs	r6, #16
 80052aa:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80052ae:	e004      	b.n	80052ba <_vfprintf_r+0x1352>
 80052b0:	f109 0908 	add.w	r9, r9, #8
 80052b4:	3d10      	subs	r5, #16
 80052b6:	2d10      	cmp	r5, #16
 80052b8:	dd14      	ble.n	80052e4 <_vfprintf_r+0x137c>
 80052ba:	3201      	adds	r2, #1
 80052bc:	3410      	adds	r4, #16
 80052be:	2a07      	cmp	r2, #7
 80052c0:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80052c4:	e9c9 7600 	strd	r7, r6, [r9]
 80052c8:	ddf2      	ble.n	80052b0 <_vfprintf_r+0x1348>
 80052ca:	aa21      	add	r2, sp, #132	; 0x84
 80052cc:	4659      	mov	r1, fp
 80052ce:	4640      	mov	r0, r8
 80052d0:	f002 fba0 	bl	8007a14 <__sprint_r>
 80052d4:	2800      	cmp	r0, #0
 80052d6:	f47e af9a 	bne.w	800420e <_vfprintf_r+0x2a6>
 80052da:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 80052de:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80052e2:	e7e7      	b.n	80052b4 <_vfprintf_r+0x134c>
 80052e4:	46b8      	mov	r8, r7
 80052e6:	3201      	adds	r2, #1
 80052e8:	442c      	add	r4, r5
 80052ea:	2a07      	cmp	r2, #7
 80052ec:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80052f0:	e9c9 8500 	strd	r8, r5, [r9]
 80052f4:	f300 8087 	bgt.w	8005406 <_vfprintf_r+0x149e>
 80052f8:	f109 0908 	add.w	r9, r9, #8
 80052fc:	e63b      	b.n	8004f76 <_vfprintf_r+0x100e>
 80052fe:	f10d 0483 	add.w	r4, sp, #131	; 0x83
 8005302:	4620      	mov	r0, r4
 8005304:	4d57      	ldr	r5, [pc, #348]	; (8005464 <_vfprintf_r+0x14fc>)
 8005306:	e000      	b.n	800530a <_vfprintf_r+0x13a2>
 8005308:	4610      	mov	r0, r2
 800530a:	fba5 1203 	umull	r1, r2, r5, r3
 800530e:	08d2      	lsrs	r2, r2, #3
 8005310:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8005314:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8005318:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800531c:	4613      	mov	r3, r2
 800531e:	2b09      	cmp	r3, #9
 8005320:	f800 1c01 	strb.w	r1, [r0, #-1]
 8005324:	f100 32ff 	add.w	r2, r0, #4294967295
 8005328:	dcee      	bgt.n	8005308 <_vfprintf_r+0x13a0>
 800532a:	3330      	adds	r3, #48	; 0x30
 800532c:	3802      	subs	r0, #2
 800532e:	b2d9      	uxtb	r1, r3
 8005330:	4284      	cmp	r4, r0
 8005332:	f802 1c01 	strb.w	r1, [r2, #-1]
 8005336:	d973      	bls.n	8005420 <_vfprintf_r+0x14b8>
 8005338:	f10d 0076 	add.w	r0, sp, #118	; 0x76
 800533c:	4613      	mov	r3, r2
 800533e:	e001      	b.n	8005344 <_vfprintf_r+0x13dc>
 8005340:	f813 1b01 	ldrb.w	r1, [r3], #1
 8005344:	f800 1b01 	strb.w	r1, [r0], #1
 8005348:	429c      	cmp	r4, r3
 800534a:	d1f9      	bne.n	8005340 <_vfprintf_r+0x13d8>
 800534c:	ab21      	add	r3, sp, #132	; 0x84
 800534e:	1a9b      	subs	r3, r3, r2
 8005350:	f10d 0276 	add.w	r2, sp, #118	; 0x76
 8005354:	4413      	add	r3, r2
 8005356:	e6c5      	b.n	80050e4 <_vfprintf_r+0x117c>
 8005358:	2200      	movs	r2, #0
 800535a:	2300      	movs	r3, #0
 800535c:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8005360:	f003 fdc0 	bl	8008ee4 <__aeabi_dcmpeq>
 8005364:	2800      	cmp	r0, #0
 8005366:	f47f af35 	bne.w	80051d4 <_vfprintf_r+0x126c>
 800536a:	f1c5 0501 	rsb	r5, r5, #1
 800536e:	951b      	str	r5, [sp, #108]	; 0x6c
 8005370:	442c      	add	r4, r5
 8005372:	e59d      	b.n	8004eb0 <_vfprintf_r+0xf48>
 8005374:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
 8005378:	9203      	str	r2, [sp, #12]
 800537a:	9308      	str	r3, [sp, #32]
 800537c:	2667      	movs	r6, #103	; 0x67
 800537e:	e5bb      	b.n	8004ef8 <_vfprintf_r+0xf90>
 8005380:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005382:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005384:	4413      	add	r3, r2
 8005386:	9a04      	ldr	r2, [sp, #16]
 8005388:	441a      	add	r2, r3
 800538a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800538e:	9208      	str	r2, [sp, #32]
 8005390:	9303      	str	r3, [sp, #12]
 8005392:	e5b1      	b.n	8004ef8 <_vfprintf_r+0xf90>
 8005394:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005396:	4a34      	ldr	r2, [pc, #208]	; (8005468 <_vfprintf_r+0x1500>)
 8005398:	2b00      	cmp	r3, #0
 800539a:	bfb6      	itet	lt
 800539c:	272d      	movlt	r7, #45	; 0x2d
 800539e:	f89d 7067 	ldrbge.w	r7, [sp, #103]	; 0x67
 80053a2:	f88d 7067 	strblt.w	r7, [sp, #103]	; 0x67
 80053a6:	4b31      	ldr	r3, [pc, #196]	; (800546c <_vfprintf_r+0x1504>)
 80053a8:	f7ff b9db 	b.w	8004762 <_vfprintf_r+0x7fa>
 80053ac:	f018 0301 	ands.w	r3, r8, #1
 80053b0:	930b      	str	r3, [sp, #44]	; 0x2c
 80053b2:	f47f aea0 	bne.w	80050f6 <_vfprintf_r+0x118e>
 80053b6:	9b08      	ldr	r3, [sp, #32]
 80053b8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80053bc:	9303      	str	r3, [sp, #12]
 80053be:	e59b      	b.n	8004ef8 <_vfprintf_r+0xf90>
 80053c0:	b943      	cbnz	r3, 80053d4 <_vfprintf_r+0x146c>
 80053c2:	f018 0f01 	tst.w	r8, #1
 80053c6:	d105      	bne.n	80053d4 <_vfprintf_r+0x146c>
 80053c8:	2301      	movs	r3, #1
 80053ca:	9303      	str	r3, [sp, #12]
 80053cc:	9308      	str	r3, [sp, #32]
 80053ce:	e593      	b.n	8004ef8 <_vfprintf_r+0xf90>
 80053d0:	464a      	mov	r2, r9
 80053d2:	e621      	b.n	8005018 <_vfprintf_r+0x10b0>
 80053d4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80053d6:	3301      	adds	r3, #1
 80053d8:	e7d5      	b.n	8005386 <_vfprintf_r+0x141e>
 80053da:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80053dc:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80053e0:	6823      	ldr	r3, [r4, #0]
 80053e2:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 80053e6:	9304      	str	r3, [sp, #16]
 80053e8:	1d23      	adds	r3, r4, #4
 80053ea:	4682      	mov	sl, r0
 80053ec:	9309      	str	r3, [sp, #36]	; 0x24
 80053ee:	f7fe be39 	b.w	8004064 <_vfprintf_r+0xfc>
 80053f2:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80053f4:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 80053f6:	920b      	str	r2, [sp, #44]	; 0x2c
 80053f8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80053fa:	1a9b      	subs	r3, r3, r2
 80053fc:	930e      	str	r3, [sp, #56]	; 0x38
 80053fe:	e652      	b.n	80050a6 <_vfprintf_r+0x113e>
 8005400:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005402:	195c      	adds	r4, r3, r5
 8005404:	e554      	b.n	8004eb0 <_vfprintf_r+0xf48>
 8005406:	aa21      	add	r2, sp, #132	; 0x84
 8005408:	4659      	mov	r1, fp
 800540a:	9806      	ldr	r0, [sp, #24]
 800540c:	f002 fb02 	bl	8007a14 <__sprint_r>
 8005410:	2800      	cmp	r0, #0
 8005412:	f47e aefc 	bne.w	800420e <_vfprintf_r+0x2a6>
 8005416:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 800541a:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800541e:	e5aa      	b.n	8004f76 <_vfprintf_r+0x100e>
 8005420:	f10d 0376 	add.w	r3, sp, #118	; 0x76
 8005424:	e65e      	b.n	80050e4 <_vfprintf_r+0x117c>
 8005426:	9d04      	ldr	r5, [sp, #16]
 8005428:	e712      	b.n	8005250 <_vfprintf_r+0x12e8>
 800542a:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 800542e:	f7ff b9dd 	b.w	80047ec <_vfprintf_r+0x884>
 8005432:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8005436:	f7ff b940 	b.w	80046ba <_vfprintf_r+0x752>
 800543a:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 800543e:	f7ff b95e 	b.w	80046fe <_vfprintf_r+0x796>
 8005442:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8005446:	f7fe bf12 	b.w	800426e <_vfprintf_r+0x306>
 800544a:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 800544e:	f7ff b87e 	b.w	800454e <_vfprintf_r+0x5e6>
 8005452:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8005456:	f7ff ba0b 	b.w	8004870 <_vfprintf_r+0x908>
 800545a:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 800545e:	f7ff b8f2 	b.w	8004646 <_vfprintf_r+0x6de>
 8005462:	bf00      	nop
 8005464:	cccccccd 	.word	0xcccccccd
 8005468:	08009b20 	.word	0x08009b20
 800546c:	08009b1c 	.word	0x08009b1c
 8005470:	08009b68 	.word	0x08009b68

08005474 <__sbprintf>:
 8005474:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005478:	460c      	mov	r4, r1
 800547a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800547e:	8989      	ldrh	r1, [r1, #12]
 8005480:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8005482:	89e5      	ldrh	r5, [r4, #14]
 8005484:	9619      	str	r6, [sp, #100]	; 0x64
 8005486:	f021 0102 	bic.w	r1, r1, #2
 800548a:	4606      	mov	r6, r0
 800548c:	69e0      	ldr	r0, [r4, #28]
 800548e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8005492:	4617      	mov	r7, r2
 8005494:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8005498:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800549a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800549e:	4698      	mov	r8, r3
 80054a0:	ad1a      	add	r5, sp, #104	; 0x68
 80054a2:	2300      	movs	r3, #0
 80054a4:	9007      	str	r0, [sp, #28]
 80054a6:	a816      	add	r0, sp, #88	; 0x58
 80054a8:	9209      	str	r2, [sp, #36]	; 0x24
 80054aa:	9306      	str	r3, [sp, #24]
 80054ac:	9500      	str	r5, [sp, #0]
 80054ae:	9504      	str	r5, [sp, #16]
 80054b0:	9102      	str	r1, [sp, #8]
 80054b2:	9105      	str	r1, [sp, #20]
 80054b4:	f001 fb10 	bl	8006ad8 <__retarget_lock_init_recursive>
 80054b8:	4643      	mov	r3, r8
 80054ba:	463a      	mov	r2, r7
 80054bc:	4669      	mov	r1, sp
 80054be:	4630      	mov	r0, r6
 80054c0:	f7fe fd52 	bl	8003f68 <_vfprintf_r>
 80054c4:	1e05      	subs	r5, r0, #0
 80054c6:	db07      	blt.n	80054d8 <__sbprintf+0x64>
 80054c8:	4630      	mov	r0, r6
 80054ca:	4669      	mov	r1, sp
 80054cc:	f001 f8da 	bl	8006684 <_fflush_r>
 80054d0:	2800      	cmp	r0, #0
 80054d2:	bf18      	it	ne
 80054d4:	f04f 35ff 	movne.w	r5, #4294967295
 80054d8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80054dc:	065b      	lsls	r3, r3, #25
 80054de:	d503      	bpl.n	80054e8 <__sbprintf+0x74>
 80054e0:	89a3      	ldrh	r3, [r4, #12]
 80054e2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054e6:	81a3      	strh	r3, [r4, #12]
 80054e8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80054ea:	f001 faf7 	bl	8006adc <__retarget_lock_close_recursive>
 80054ee:	4628      	mov	r0, r5
 80054f0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80054f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080054f8 <__swsetup_r>:
 80054f8:	b538      	push	{r3, r4, r5, lr}
 80054fa:	4b31      	ldr	r3, [pc, #196]	; (80055c0 <__swsetup_r+0xc8>)
 80054fc:	681b      	ldr	r3, [r3, #0]
 80054fe:	4605      	mov	r5, r0
 8005500:	460c      	mov	r4, r1
 8005502:	b113      	cbz	r3, 800550a <__swsetup_r+0x12>
 8005504:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8005506:	2a00      	cmp	r2, #0
 8005508:	d03a      	beq.n	8005580 <__swsetup_r+0x88>
 800550a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800550e:	b293      	uxth	r3, r2
 8005510:	0718      	lsls	r0, r3, #28
 8005512:	d50c      	bpl.n	800552e <__swsetup_r+0x36>
 8005514:	6920      	ldr	r0, [r4, #16]
 8005516:	b1a8      	cbz	r0, 8005544 <__swsetup_r+0x4c>
 8005518:	f013 0201 	ands.w	r2, r3, #1
 800551c:	d020      	beq.n	8005560 <__swsetup_r+0x68>
 800551e:	6963      	ldr	r3, [r4, #20]
 8005520:	2200      	movs	r2, #0
 8005522:	425b      	negs	r3, r3
 8005524:	61a3      	str	r3, [r4, #24]
 8005526:	60a2      	str	r2, [r4, #8]
 8005528:	b300      	cbz	r0, 800556c <__swsetup_r+0x74>
 800552a:	2000      	movs	r0, #0
 800552c:	bd38      	pop	{r3, r4, r5, pc}
 800552e:	06d9      	lsls	r1, r3, #27
 8005530:	d53e      	bpl.n	80055b0 <__swsetup_r+0xb8>
 8005532:	0758      	lsls	r0, r3, #29
 8005534:	d428      	bmi.n	8005588 <__swsetup_r+0x90>
 8005536:	6920      	ldr	r0, [r4, #16]
 8005538:	f042 0308 	orr.w	r3, r2, #8
 800553c:	81a3      	strh	r3, [r4, #12]
 800553e:	b29b      	uxth	r3, r3
 8005540:	2800      	cmp	r0, #0
 8005542:	d1e9      	bne.n	8005518 <__swsetup_r+0x20>
 8005544:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8005548:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800554c:	d0e4      	beq.n	8005518 <__swsetup_r+0x20>
 800554e:	4628      	mov	r0, r5
 8005550:	4621      	mov	r1, r4
 8005552:	f001 faf7 	bl	8006b44 <__smakebuf_r>
 8005556:	89a3      	ldrh	r3, [r4, #12]
 8005558:	6920      	ldr	r0, [r4, #16]
 800555a:	f013 0201 	ands.w	r2, r3, #1
 800555e:	d1de      	bne.n	800551e <__swsetup_r+0x26>
 8005560:	0799      	lsls	r1, r3, #30
 8005562:	bf58      	it	pl
 8005564:	6962      	ldrpl	r2, [r4, #20]
 8005566:	60a2      	str	r2, [r4, #8]
 8005568:	2800      	cmp	r0, #0
 800556a:	d1de      	bne.n	800552a <__swsetup_r+0x32>
 800556c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005570:	061a      	lsls	r2, r3, #24
 8005572:	d5db      	bpl.n	800552c <__swsetup_r+0x34>
 8005574:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005578:	81a3      	strh	r3, [r4, #12]
 800557a:	f04f 30ff 	mov.w	r0, #4294967295
 800557e:	bd38      	pop	{r3, r4, r5, pc}
 8005580:	4618      	mov	r0, r3
 8005582:	f001 f8db 	bl	800673c <__sinit>
 8005586:	e7c0      	b.n	800550a <__swsetup_r+0x12>
 8005588:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800558a:	b151      	cbz	r1, 80055a2 <__swsetup_r+0xaa>
 800558c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005590:	4299      	cmp	r1, r3
 8005592:	d004      	beq.n	800559e <__swsetup_r+0xa6>
 8005594:	4628      	mov	r0, r5
 8005596:	f001 f973 	bl	8006880 <_free_r>
 800559a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800559e:	2300      	movs	r3, #0
 80055a0:	6323      	str	r3, [r4, #48]	; 0x30
 80055a2:	2300      	movs	r3, #0
 80055a4:	6920      	ldr	r0, [r4, #16]
 80055a6:	6063      	str	r3, [r4, #4]
 80055a8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80055ac:	6020      	str	r0, [r4, #0]
 80055ae:	e7c3      	b.n	8005538 <__swsetup_r+0x40>
 80055b0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80055b4:	2309      	movs	r3, #9
 80055b6:	602b      	str	r3, [r5, #0]
 80055b8:	f04f 30ff 	mov.w	r0, #4294967295
 80055bc:	81a2      	strh	r2, [r4, #12]
 80055be:	bd38      	pop	{r3, r4, r5, pc}
 80055c0:	20000010 	.word	0x20000010

080055c4 <register_fini>:
 80055c4:	4b02      	ldr	r3, [pc, #8]	; (80055d0 <register_fini+0xc>)
 80055c6:	b113      	cbz	r3, 80055ce <register_fini+0xa>
 80055c8:	4802      	ldr	r0, [pc, #8]	; (80055d4 <register_fini+0x10>)
 80055ca:	f000 b805 	b.w	80055d8 <atexit>
 80055ce:	4770      	bx	lr
 80055d0:	00000000 	.word	0x00000000
 80055d4:	080067ad 	.word	0x080067ad

080055d8 <atexit>:
 80055d8:	2300      	movs	r3, #0
 80055da:	4601      	mov	r1, r0
 80055dc:	461a      	mov	r2, r3
 80055de:	4618      	mov	r0, r3
 80055e0:	f002 ba38 	b.w	8007a54 <__register_exitproc>

080055e4 <quorem>:
 80055e4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055e8:	6903      	ldr	r3, [r0, #16]
 80055ea:	690f      	ldr	r7, [r1, #16]
 80055ec:	42bb      	cmp	r3, r7
 80055ee:	b083      	sub	sp, #12
 80055f0:	f2c0 8086 	blt.w	8005700 <quorem+0x11c>
 80055f4:	3f01      	subs	r7, #1
 80055f6:	f101 0914 	add.w	r9, r1, #20
 80055fa:	f100 0a14 	add.w	sl, r0, #20
 80055fe:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8005602:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8005606:	00bc      	lsls	r4, r7, #2
 8005608:	3201      	adds	r2, #1
 800560a:	fbb3 f8f2 	udiv	r8, r3, r2
 800560e:	eb0a 0304 	add.w	r3, sl, r4
 8005612:	9400      	str	r4, [sp, #0]
 8005614:	eb09 0b04 	add.w	fp, r9, r4
 8005618:	9301      	str	r3, [sp, #4]
 800561a:	f1b8 0f00 	cmp.w	r8, #0
 800561e:	d038      	beq.n	8005692 <quorem+0xae>
 8005620:	2500      	movs	r5, #0
 8005622:	462e      	mov	r6, r5
 8005624:	46ce      	mov	lr, r9
 8005626:	46d4      	mov	ip, sl
 8005628:	f85e 4b04 	ldr.w	r4, [lr], #4
 800562c:	f8dc 3000 	ldr.w	r3, [ip]
 8005630:	b2a2      	uxth	r2, r4
 8005632:	fb08 5502 	mla	r5, r8, r2, r5
 8005636:	0c22      	lsrs	r2, r4, #16
 8005638:	0c2c      	lsrs	r4, r5, #16
 800563a:	fb08 4202 	mla	r2, r8, r2, r4
 800563e:	b2ad      	uxth	r5, r5
 8005640:	1b75      	subs	r5, r6, r5
 8005642:	b296      	uxth	r6, r2
 8005644:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8005648:	fa15 f383 	uxtah	r3, r5, r3
 800564c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8005650:	b29b      	uxth	r3, r3
 8005652:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8005656:	45f3      	cmp	fp, lr
 8005658:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800565c:	f84c 3b04 	str.w	r3, [ip], #4
 8005660:	ea4f 4626 	mov.w	r6, r6, asr #16
 8005664:	d2e0      	bcs.n	8005628 <quorem+0x44>
 8005666:	9b00      	ldr	r3, [sp, #0]
 8005668:	f85a 3003 	ldr.w	r3, [sl, r3]
 800566c:	b98b      	cbnz	r3, 8005692 <quorem+0xae>
 800566e:	9a01      	ldr	r2, [sp, #4]
 8005670:	1f13      	subs	r3, r2, #4
 8005672:	459a      	cmp	sl, r3
 8005674:	d20c      	bcs.n	8005690 <quorem+0xac>
 8005676:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800567a:	b94b      	cbnz	r3, 8005690 <quorem+0xac>
 800567c:	f1a2 0308 	sub.w	r3, r2, #8
 8005680:	e002      	b.n	8005688 <quorem+0xa4>
 8005682:	681a      	ldr	r2, [r3, #0]
 8005684:	3b04      	subs	r3, #4
 8005686:	b91a      	cbnz	r2, 8005690 <quorem+0xac>
 8005688:	459a      	cmp	sl, r3
 800568a:	f107 37ff 	add.w	r7, r7, #4294967295
 800568e:	d3f8      	bcc.n	8005682 <quorem+0x9e>
 8005690:	6107      	str	r7, [r0, #16]
 8005692:	4604      	mov	r4, r0
 8005694:	f001 ffb6 	bl	8007604 <__mcmp>
 8005698:	2800      	cmp	r0, #0
 800569a:	db2d      	blt.n	80056f8 <quorem+0x114>
 800569c:	f108 0801 	add.w	r8, r8, #1
 80056a0:	4655      	mov	r5, sl
 80056a2:	2300      	movs	r3, #0
 80056a4:	f859 1b04 	ldr.w	r1, [r9], #4
 80056a8:	6828      	ldr	r0, [r5, #0]
 80056aa:	b28a      	uxth	r2, r1
 80056ac:	1a9a      	subs	r2, r3, r2
 80056ae:	0c0b      	lsrs	r3, r1, #16
 80056b0:	fa12 f280 	uxtah	r2, r2, r0
 80056b4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80056b8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80056bc:	b292      	uxth	r2, r2
 80056be:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80056c2:	45cb      	cmp	fp, r9
 80056c4:	f845 2b04 	str.w	r2, [r5], #4
 80056c8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80056cc:	d2ea      	bcs.n	80056a4 <quorem+0xc0>
 80056ce:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80056d2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80056d6:	b97a      	cbnz	r2, 80056f8 <quorem+0x114>
 80056d8:	1f1a      	subs	r2, r3, #4
 80056da:	4592      	cmp	sl, r2
 80056dc:	d20b      	bcs.n	80056f6 <quorem+0x112>
 80056de:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80056e2:	b942      	cbnz	r2, 80056f6 <quorem+0x112>
 80056e4:	3b08      	subs	r3, #8
 80056e6:	e002      	b.n	80056ee <quorem+0x10a>
 80056e8:	681a      	ldr	r2, [r3, #0]
 80056ea:	3b04      	subs	r3, #4
 80056ec:	b91a      	cbnz	r2, 80056f6 <quorem+0x112>
 80056ee:	459a      	cmp	sl, r3
 80056f0:	f107 37ff 	add.w	r7, r7, #4294967295
 80056f4:	d3f8      	bcc.n	80056e8 <quorem+0x104>
 80056f6:	6127      	str	r7, [r4, #16]
 80056f8:	4640      	mov	r0, r8
 80056fa:	b003      	add	sp, #12
 80056fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005700:	2000      	movs	r0, #0
 8005702:	b003      	add	sp, #12
 8005704:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08005708 <_dtoa_r>:
 8005708:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800570c:	ec55 4b10 	vmov	r4, r5, d0
 8005710:	b09b      	sub	sp, #108	; 0x6c
 8005712:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8005714:	9102      	str	r1, [sp, #8]
 8005716:	4681      	mov	r9, r0
 8005718:	9207      	str	r2, [sp, #28]
 800571a:	9305      	str	r3, [sp, #20]
 800571c:	e9cd 4500 	strd	r4, r5, [sp]
 8005720:	b156      	cbz	r6, 8005738 <_dtoa_r+0x30>
 8005722:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8005724:	6072      	str	r2, [r6, #4]
 8005726:	2301      	movs	r3, #1
 8005728:	4093      	lsls	r3, r2
 800572a:	60b3      	str	r3, [r6, #8]
 800572c:	4631      	mov	r1, r6
 800572e:	f001 fd79 	bl	8007224 <_Bfree>
 8005732:	2300      	movs	r3, #0
 8005734:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8005738:	f1b5 0800 	subs.w	r8, r5, #0
 800573c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800573e:	bfb4      	ite	lt
 8005740:	2301      	movlt	r3, #1
 8005742:	2300      	movge	r3, #0
 8005744:	6013      	str	r3, [r2, #0]
 8005746:	4b76      	ldr	r3, [pc, #472]	; (8005920 <_dtoa_r+0x218>)
 8005748:	bfbc      	itt	lt
 800574a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800574e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8005752:	ea33 0308 	bics.w	r3, r3, r8
 8005756:	f000 80a6 	beq.w	80058a6 <_dtoa_r+0x19e>
 800575a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800575e:	2200      	movs	r2, #0
 8005760:	2300      	movs	r3, #0
 8005762:	4630      	mov	r0, r6
 8005764:	4639      	mov	r1, r7
 8005766:	f003 fbbd 	bl	8008ee4 <__aeabi_dcmpeq>
 800576a:	4605      	mov	r5, r0
 800576c:	b178      	cbz	r0, 800578e <_dtoa_r+0x86>
 800576e:	9a05      	ldr	r2, [sp, #20]
 8005770:	2301      	movs	r3, #1
 8005772:	6013      	str	r3, [r2, #0]
 8005774:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005776:	2b00      	cmp	r3, #0
 8005778:	f000 80c0 	beq.w	80058fc <_dtoa_r+0x1f4>
 800577c:	4b69      	ldr	r3, [pc, #420]	; (8005924 <_dtoa_r+0x21c>)
 800577e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005780:	f103 3bff 	add.w	fp, r3, #4294967295
 8005784:	6013      	str	r3, [r2, #0]
 8005786:	4658      	mov	r0, fp
 8005788:	b01b      	add	sp, #108	; 0x6c
 800578a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800578e:	aa18      	add	r2, sp, #96	; 0x60
 8005790:	a919      	add	r1, sp, #100	; 0x64
 8005792:	ec47 6b10 	vmov	d0, r6, r7
 8005796:	4648      	mov	r0, r9
 8005798:	f001 ffc6 	bl	8007728 <__d2b>
 800579c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80057a0:	4682      	mov	sl, r0
 80057a2:	f040 80a0 	bne.w	80058e6 <_dtoa_r+0x1de>
 80057a6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80057aa:	442c      	add	r4, r5
 80057ac:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80057b0:	2b20      	cmp	r3, #32
 80057b2:	f340 842e 	ble.w	8006012 <_dtoa_r+0x90a>
 80057b6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80057ba:	fa08 f803 	lsl.w	r8, r8, r3
 80057be:	9b00      	ldr	r3, [sp, #0]
 80057c0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80057c4:	fa23 f000 	lsr.w	r0, r3, r0
 80057c8:	ea48 0000 	orr.w	r0, r8, r0
 80057cc:	f003 f8a8 	bl	8008920 <__aeabi_ui2d>
 80057d0:	2301      	movs	r3, #1
 80057d2:	4606      	mov	r6, r0
 80057d4:	3c01      	subs	r4, #1
 80057d6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80057da:	930f      	str	r3, [sp, #60]	; 0x3c
 80057dc:	4630      	mov	r0, r6
 80057de:	4639      	mov	r1, r7
 80057e0:	2200      	movs	r2, #0
 80057e2:	4b51      	ldr	r3, [pc, #324]	; (8005928 <_dtoa_r+0x220>)
 80057e4:	f002 ff5e 	bl	80086a4 <__aeabi_dsub>
 80057e8:	a347      	add	r3, pc, #284	; (adr r3, 8005908 <_dtoa_r+0x200>)
 80057ea:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057ee:	f003 f911 	bl	8008a14 <__aeabi_dmul>
 80057f2:	a347      	add	r3, pc, #284	; (adr r3, 8005910 <_dtoa_r+0x208>)
 80057f4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057f8:	f002 ff56 	bl	80086a8 <__adddf3>
 80057fc:	4606      	mov	r6, r0
 80057fe:	4620      	mov	r0, r4
 8005800:	460f      	mov	r7, r1
 8005802:	f003 f89d 	bl	8008940 <__aeabi_i2d>
 8005806:	a344      	add	r3, pc, #272	; (adr r3, 8005918 <_dtoa_r+0x210>)
 8005808:	e9d3 2300 	ldrd	r2, r3, [r3]
 800580c:	f003 f902 	bl	8008a14 <__aeabi_dmul>
 8005810:	4602      	mov	r2, r0
 8005812:	460b      	mov	r3, r1
 8005814:	4630      	mov	r0, r6
 8005816:	4639      	mov	r1, r7
 8005818:	f002 ff46 	bl	80086a8 <__adddf3>
 800581c:	4606      	mov	r6, r0
 800581e:	460f      	mov	r7, r1
 8005820:	f003 fba8 	bl	8008f74 <__aeabi_d2iz>
 8005824:	2200      	movs	r2, #0
 8005826:	9006      	str	r0, [sp, #24]
 8005828:	2300      	movs	r3, #0
 800582a:	4630      	mov	r0, r6
 800582c:	4639      	mov	r1, r7
 800582e:	f003 fb63 	bl	8008ef8 <__aeabi_dcmplt>
 8005832:	2800      	cmp	r0, #0
 8005834:	f040 8273 	bne.w	8005d1e <_dtoa_r+0x616>
 8005838:	9e06      	ldr	r6, [sp, #24]
 800583a:	2e16      	cmp	r6, #22
 800583c:	f200 825d 	bhi.w	8005cfa <_dtoa_r+0x5f2>
 8005840:	4b3a      	ldr	r3, [pc, #232]	; (800592c <_dtoa_r+0x224>)
 8005842:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8005846:	e9d3 0100 	ldrd	r0, r1, [r3]
 800584a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800584e:	f003 fb71 	bl	8008f34 <__aeabi_dcmpgt>
 8005852:	2800      	cmp	r0, #0
 8005854:	f000 83d9 	beq.w	800600a <_dtoa_r+0x902>
 8005858:	1e73      	subs	r3, r6, #1
 800585a:	9306      	str	r3, [sp, #24]
 800585c:	2300      	movs	r3, #0
 800585e:	930d      	str	r3, [sp, #52]	; 0x34
 8005860:	1b2c      	subs	r4, r5, r4
 8005862:	f1b4 0801 	subs.w	r8, r4, #1
 8005866:	f100 8254 	bmi.w	8005d12 <_dtoa_r+0x60a>
 800586a:	2300      	movs	r3, #0
 800586c:	9308      	str	r3, [sp, #32]
 800586e:	9b06      	ldr	r3, [sp, #24]
 8005870:	2b00      	cmp	r3, #0
 8005872:	f2c0 8245 	blt.w	8005d00 <_dtoa_r+0x5f8>
 8005876:	4498      	add	r8, r3
 8005878:	930c      	str	r3, [sp, #48]	; 0x30
 800587a:	2300      	movs	r3, #0
 800587c:	930b      	str	r3, [sp, #44]	; 0x2c
 800587e:	9b02      	ldr	r3, [sp, #8]
 8005880:	2b09      	cmp	r3, #9
 8005882:	d85b      	bhi.n	800593c <_dtoa_r+0x234>
 8005884:	2b05      	cmp	r3, #5
 8005886:	f340 83c2 	ble.w	800600e <_dtoa_r+0x906>
 800588a:	3b04      	subs	r3, #4
 800588c:	9302      	str	r3, [sp, #8]
 800588e:	2500      	movs	r5, #0
 8005890:	9b02      	ldr	r3, [sp, #8]
 8005892:	3b02      	subs	r3, #2
 8005894:	2b03      	cmp	r3, #3
 8005896:	f200 849a 	bhi.w	80061ce <_dtoa_r+0xac6>
 800589a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800589e:	03e1      	.short	0x03e1
 80058a0:	03ea03c1 	.word	0x03ea03c1
 80058a4:	04f7      	.short	0x04f7
 80058a6:	9a05      	ldr	r2, [sp, #20]
 80058a8:	f242 730f 	movw	r3, #9999	; 0x270f
 80058ac:	6013      	str	r3, [r2, #0]
 80058ae:	9b00      	ldr	r3, [sp, #0]
 80058b0:	b983      	cbnz	r3, 80058d4 <_dtoa_r+0x1cc>
 80058b2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80058b6:	b96b      	cbnz	r3, 80058d4 <_dtoa_r+0x1cc>
 80058b8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80058ba:	f8df b074 	ldr.w	fp, [pc, #116]	; 8005930 <_dtoa_r+0x228>
 80058be:	2b00      	cmp	r3, #0
 80058c0:	f43f af61 	beq.w	8005786 <_dtoa_r+0x7e>
 80058c4:	f10b 0308 	add.w	r3, fp, #8
 80058c8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80058ca:	4658      	mov	r0, fp
 80058cc:	6013      	str	r3, [r2, #0]
 80058ce:	b01b      	add	sp, #108	; 0x6c
 80058d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058d4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80058d6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8005934 <_dtoa_r+0x22c>
 80058da:	2b00      	cmp	r3, #0
 80058dc:	f43f af53 	beq.w	8005786 <_dtoa_r+0x7e>
 80058e0:	f10b 0303 	add.w	r3, fp, #3
 80058e4:	e7f0      	b.n	80058c8 <_dtoa_r+0x1c0>
 80058e6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80058ea:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80058ee:	950f      	str	r5, [sp, #60]	; 0x3c
 80058f0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80058f4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80058f8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80058fa:	e76f      	b.n	80057dc <_dtoa_r+0xd4>
 80058fc:	f8df b038 	ldr.w	fp, [pc, #56]	; 8005938 <_dtoa_r+0x230>
 8005900:	4658      	mov	r0, fp
 8005902:	b01b      	add	sp, #108	; 0x6c
 8005904:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005908:	636f4361 	.word	0x636f4361
 800590c:	3fd287a7 	.word	0x3fd287a7
 8005910:	8b60c8b3 	.word	0x8b60c8b3
 8005914:	3fc68a28 	.word	0x3fc68a28
 8005918:	509f79fb 	.word	0x509f79fb
 800591c:	3fd34413 	.word	0x3fd34413
 8005920:	7ff00000 	.word	0x7ff00000
 8005924:	08009b55 	.word	0x08009b55
 8005928:	3ff80000 	.word	0x3ff80000
 800592c:	08009bb0 	.word	0x08009bb0
 8005930:	08009b78 	.word	0x08009b78
 8005934:	08009b84 	.word	0x08009b84
 8005938:	08009b54 	.word	0x08009b54
 800593c:	f04f 34ff 	mov.w	r4, #4294967295
 8005940:	2501      	movs	r5, #1
 8005942:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8005946:	2300      	movs	r3, #0
 8005948:	9302      	str	r3, [sp, #8]
 800594a:	9307      	str	r3, [sp, #28]
 800594c:	2100      	movs	r1, #0
 800594e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005952:	940e      	str	r4, [sp, #56]	; 0x38
 8005954:	4648      	mov	r0, r9
 8005956:	f001 fc3f 	bl	80071d8 <_Balloc>
 800595a:	2c0e      	cmp	r4, #14
 800595c:	4683      	mov	fp, r0
 800595e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005962:	f200 80fb 	bhi.w	8005b5c <_dtoa_r+0x454>
 8005966:	2d00      	cmp	r5, #0
 8005968:	f000 80f8 	beq.w	8005b5c <_dtoa_r+0x454>
 800596c:	ed9d 7b00 	vldr	d7, [sp]
 8005970:	9906      	ldr	r1, [sp, #24]
 8005972:	2900      	cmp	r1, #0
 8005974:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005978:	f340 83e7 	ble.w	800614a <_dtoa_r+0xa42>
 800597c:	4b9d      	ldr	r3, [pc, #628]	; (8005bf4 <_dtoa_r+0x4ec>)
 800597e:	f001 020f 	and.w	r2, r1, #15
 8005982:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005986:	ed93 7b00 	vldr	d7, [r3]
 800598a:	110c      	asrs	r4, r1, #4
 800598c:	06e2      	lsls	r2, r4, #27
 800598e:	ed8d 7b00 	vstr	d7, [sp]
 8005992:	f140 84a1 	bpl.w	80062d8 <_dtoa_r+0xbd0>
 8005996:	4b98      	ldr	r3, [pc, #608]	; (8005bf8 <_dtoa_r+0x4f0>)
 8005998:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800599c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80059a0:	f003 f962 	bl	8008c68 <__aeabi_ddiv>
 80059a4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80059a8:	f004 040f 	and.w	r4, r4, #15
 80059ac:	2603      	movs	r6, #3
 80059ae:	b17c      	cbz	r4, 80059d0 <_dtoa_r+0x2c8>
 80059b0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80059b4:	4d90      	ldr	r5, [pc, #576]	; (8005bf8 <_dtoa_r+0x4f0>)
 80059b6:	07e3      	lsls	r3, r4, #31
 80059b8:	d504      	bpl.n	80059c4 <_dtoa_r+0x2bc>
 80059ba:	e9d5 2300 	ldrd	r2, r3, [r5]
 80059be:	f003 f829 	bl	8008a14 <__aeabi_dmul>
 80059c2:	3601      	adds	r6, #1
 80059c4:	1064      	asrs	r4, r4, #1
 80059c6:	f105 0508 	add.w	r5, r5, #8
 80059ca:	d1f4      	bne.n	80059b6 <_dtoa_r+0x2ae>
 80059cc:	e9cd 0100 	strd	r0, r1, [sp]
 80059d0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80059d4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80059d8:	f003 f946 	bl	8008c68 <__aeabi_ddiv>
 80059dc:	e9cd 0100 	strd	r0, r1, [sp]
 80059e0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80059e2:	b143      	cbz	r3, 80059f6 <_dtoa_r+0x2ee>
 80059e4:	2200      	movs	r2, #0
 80059e6:	4b85      	ldr	r3, [pc, #532]	; (8005bfc <_dtoa_r+0x4f4>)
 80059e8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80059ec:	f003 fa84 	bl	8008ef8 <__aeabi_dcmplt>
 80059f0:	2800      	cmp	r0, #0
 80059f2:	f040 8503 	bne.w	80063fc <_dtoa_r+0xcf4>
 80059f6:	4630      	mov	r0, r6
 80059f8:	f002 ffa2 	bl	8008940 <__aeabi_i2d>
 80059fc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005a00:	f003 f808 	bl	8008a14 <__aeabi_dmul>
 8005a04:	4b7e      	ldr	r3, [pc, #504]	; (8005c00 <_dtoa_r+0x4f8>)
 8005a06:	2200      	movs	r2, #0
 8005a08:	f002 fe4e 	bl	80086a8 <__adddf3>
 8005a0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a0e:	4606      	mov	r6, r0
 8005a10:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005a14:	2b00      	cmp	r3, #0
 8005a16:	f000 841e 	beq.w	8006256 <_dtoa_r+0xb4e>
 8005a1a:	9b06      	ldr	r3, [sp, #24]
 8005a1c:	9316      	str	r3, [sp, #88]	; 0x58
 8005a1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005a20:	9312      	str	r3, [sp, #72]	; 0x48
 8005a22:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005a26:	f003 faa5 	bl	8008f74 <__aeabi_d2iz>
 8005a2a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005a2c:	4b71      	ldr	r3, [pc, #452]	; (8005bf4 <_dtoa_r+0x4ec>)
 8005a2e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005a32:	ed13 7b02 	vldr	d7, [r3, #-8]
 8005a36:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8005a3a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8005a3e:	f002 ff7f 	bl	8008940 <__aeabi_i2d>
 8005a42:	460b      	mov	r3, r1
 8005a44:	4602      	mov	r2, r0
 8005a46:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005a4a:	e9cd 6700 	strd	r6, r7, [sp]
 8005a4e:	f002 fe29 	bl	80086a4 <__aeabi_dsub>
 8005a52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005a54:	b2ed      	uxtb	r5, r5
 8005a56:	4606      	mov	r6, r0
 8005a58:	460f      	mov	r7, r1
 8005a5a:	f10b 0401 	add.w	r4, fp, #1
 8005a5e:	2b00      	cmp	r3, #0
 8005a60:	f000 845b 	beq.w	800631a <_dtoa_r+0xc12>
 8005a64:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005a68:	2000      	movs	r0, #0
 8005a6a:	4966      	ldr	r1, [pc, #408]	; (8005c04 <_dtoa_r+0x4fc>)
 8005a6c:	f003 f8fc 	bl	8008c68 <__aeabi_ddiv>
 8005a70:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005a74:	f002 fe16 	bl	80086a4 <__aeabi_dsub>
 8005a78:	f88b 5000 	strb.w	r5, [fp]
 8005a7c:	4632      	mov	r2, r6
 8005a7e:	463b      	mov	r3, r7
 8005a80:	e9cd 0100 	strd	r0, r1, [sp]
 8005a84:	f003 fa56 	bl	8008f34 <__aeabi_dcmpgt>
 8005a88:	2800      	cmp	r0, #0
 8005a8a:	f040 8506 	bne.w	800649a <_dtoa_r+0xd92>
 8005a8e:	4632      	mov	r2, r6
 8005a90:	463b      	mov	r3, r7
 8005a92:	2000      	movs	r0, #0
 8005a94:	4959      	ldr	r1, [pc, #356]	; (8005bfc <_dtoa_r+0x4f4>)
 8005a96:	f002 fe05 	bl	80086a4 <__aeabi_dsub>
 8005a9a:	4602      	mov	r2, r0
 8005a9c:	460b      	mov	r3, r1
 8005a9e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005aa2:	f003 fa47 	bl	8008f34 <__aeabi_dcmpgt>
 8005aa6:	2800      	cmp	r0, #0
 8005aa8:	f040 84ff 	bne.w	80064aa <_dtoa_r+0xda2>
 8005aac:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005aae:	2a01      	cmp	r2, #1
 8005ab0:	d050      	beq.n	8005b54 <_dtoa_r+0x44c>
 8005ab2:	445a      	add	r2, fp
 8005ab4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005ab8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8005abc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005ac0:	4692      	mov	sl, r2
 8005ac2:	46cb      	mov	fp, r9
 8005ac4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005ac8:	e00c      	b.n	8005ae4 <_dtoa_r+0x3dc>
 8005aca:	2000      	movs	r0, #0
 8005acc:	494b      	ldr	r1, [pc, #300]	; (8005bfc <_dtoa_r+0x4f4>)
 8005ace:	f002 fde9 	bl	80086a4 <__aeabi_dsub>
 8005ad2:	4642      	mov	r2, r8
 8005ad4:	464b      	mov	r3, r9
 8005ad6:	f003 fa0f 	bl	8008ef8 <__aeabi_dcmplt>
 8005ada:	2800      	cmp	r0, #0
 8005adc:	f040 84e0 	bne.w	80064a0 <_dtoa_r+0xd98>
 8005ae0:	4554      	cmp	r4, sl
 8005ae2:	d030      	beq.n	8005b46 <_dtoa_r+0x43e>
 8005ae4:	4640      	mov	r0, r8
 8005ae6:	4649      	mov	r1, r9
 8005ae8:	2200      	movs	r2, #0
 8005aea:	4b47      	ldr	r3, [pc, #284]	; (8005c08 <_dtoa_r+0x500>)
 8005aec:	f002 ff92 	bl	8008a14 <__aeabi_dmul>
 8005af0:	2200      	movs	r2, #0
 8005af2:	4b45      	ldr	r3, [pc, #276]	; (8005c08 <_dtoa_r+0x500>)
 8005af4:	4680      	mov	r8, r0
 8005af6:	4689      	mov	r9, r1
 8005af8:	4630      	mov	r0, r6
 8005afa:	4639      	mov	r1, r7
 8005afc:	f002 ff8a 	bl	8008a14 <__aeabi_dmul>
 8005b00:	460f      	mov	r7, r1
 8005b02:	4606      	mov	r6, r0
 8005b04:	f003 fa36 	bl	8008f74 <__aeabi_d2iz>
 8005b08:	4605      	mov	r5, r0
 8005b0a:	f002 ff19 	bl	8008940 <__aeabi_i2d>
 8005b0e:	4602      	mov	r2, r0
 8005b10:	460b      	mov	r3, r1
 8005b12:	4630      	mov	r0, r6
 8005b14:	4639      	mov	r1, r7
 8005b16:	f002 fdc5 	bl	80086a4 <__aeabi_dsub>
 8005b1a:	3530      	adds	r5, #48	; 0x30
 8005b1c:	b2ed      	uxtb	r5, r5
 8005b1e:	4642      	mov	r2, r8
 8005b20:	464b      	mov	r3, r9
 8005b22:	f804 5b01 	strb.w	r5, [r4], #1
 8005b26:	4606      	mov	r6, r0
 8005b28:	460f      	mov	r7, r1
 8005b2a:	f003 f9e5 	bl	8008ef8 <__aeabi_dcmplt>
 8005b2e:	4632      	mov	r2, r6
 8005b30:	463b      	mov	r3, r7
 8005b32:	2800      	cmp	r0, #0
 8005b34:	d0c9      	beq.n	8005aca <_dtoa_r+0x3c2>
 8005b36:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005b38:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005b3c:	9306      	str	r3, [sp, #24]
 8005b3e:	46d9      	mov	r9, fp
 8005b40:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005b44:	e238      	b.n	8005fb8 <_dtoa_r+0x8b0>
 8005b46:	46d9      	mov	r9, fp
 8005b48:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8005b4c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005b50:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005b54:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8005b58:	e9cd 3400 	strd	r3, r4, [sp]
 8005b5c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8005b5e:	2b00      	cmp	r3, #0
 8005b60:	f2c0 80ae 	blt.w	8005cc0 <_dtoa_r+0x5b8>
 8005b64:	9a06      	ldr	r2, [sp, #24]
 8005b66:	2a0e      	cmp	r2, #14
 8005b68:	f300 80aa 	bgt.w	8005cc0 <_dtoa_r+0x5b8>
 8005b6c:	4b21      	ldr	r3, [pc, #132]	; (8005bf4 <_dtoa_r+0x4ec>)
 8005b6e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005b72:	ed93 7b00 	vldr	d7, [r3]
 8005b76:	9b07      	ldr	r3, [sp, #28]
 8005b78:	2b00      	cmp	r3, #0
 8005b7a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8005b7e:	f2c0 82c0 	blt.w	8006102 <_dtoa_r+0x9fa>
 8005b82:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005b86:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005b8a:	4630      	mov	r0, r6
 8005b8c:	4639      	mov	r1, r7
 8005b8e:	f003 f86b 	bl	8008c68 <__aeabi_ddiv>
 8005b92:	f003 f9ef 	bl	8008f74 <__aeabi_d2iz>
 8005b96:	4605      	mov	r5, r0
 8005b98:	f002 fed2 	bl	8008940 <__aeabi_i2d>
 8005b9c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005ba0:	f002 ff38 	bl	8008a14 <__aeabi_dmul>
 8005ba4:	460b      	mov	r3, r1
 8005ba6:	4602      	mov	r2, r0
 8005ba8:	4639      	mov	r1, r7
 8005baa:	4630      	mov	r0, r6
 8005bac:	f002 fd7a 	bl	80086a4 <__aeabi_dsub>
 8005bb0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8005bb4:	f88b 3000 	strb.w	r3, [fp]
 8005bb8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005bba:	2b01      	cmp	r3, #1
 8005bbc:	4606      	mov	r6, r0
 8005bbe:	460f      	mov	r7, r1
 8005bc0:	f10b 0401 	add.w	r4, fp, #1
 8005bc4:	d053      	beq.n	8005c6e <_dtoa_r+0x566>
 8005bc6:	2200      	movs	r2, #0
 8005bc8:	4b0f      	ldr	r3, [pc, #60]	; (8005c08 <_dtoa_r+0x500>)
 8005bca:	f002 ff23 	bl	8008a14 <__aeabi_dmul>
 8005bce:	2200      	movs	r2, #0
 8005bd0:	2300      	movs	r3, #0
 8005bd2:	4606      	mov	r6, r0
 8005bd4:	460f      	mov	r7, r1
 8005bd6:	f003 f985 	bl	8008ee4 <__aeabi_dcmpeq>
 8005bda:	2800      	cmp	r0, #0
 8005bdc:	f040 81ec 	bne.w	8005fb8 <_dtoa_r+0x8b0>
 8005be0:	f8cd a000 	str.w	sl, [sp]
 8005be4:	f8cd 901c 	str.w	r9, [sp, #28]
 8005be8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005bec:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005bf0:	e017      	b.n	8005c22 <_dtoa_r+0x51a>
 8005bf2:	bf00      	nop
 8005bf4:	08009bb0 	.word	0x08009bb0
 8005bf8:	08009b88 	.word	0x08009b88
 8005bfc:	3ff00000 	.word	0x3ff00000
 8005c00:	401c0000 	.word	0x401c0000
 8005c04:	3fe00000 	.word	0x3fe00000
 8005c08:	40240000 	.word	0x40240000
 8005c0c:	f002 ff02 	bl	8008a14 <__aeabi_dmul>
 8005c10:	2200      	movs	r2, #0
 8005c12:	2300      	movs	r3, #0
 8005c14:	4606      	mov	r6, r0
 8005c16:	460f      	mov	r7, r1
 8005c18:	f003 f964 	bl	8008ee4 <__aeabi_dcmpeq>
 8005c1c:	2800      	cmp	r0, #0
 8005c1e:	f040 833f 	bne.w	80062a0 <_dtoa_r+0xb98>
 8005c22:	464a      	mov	r2, r9
 8005c24:	4653      	mov	r3, sl
 8005c26:	4630      	mov	r0, r6
 8005c28:	4639      	mov	r1, r7
 8005c2a:	f003 f81d 	bl	8008c68 <__aeabi_ddiv>
 8005c2e:	f003 f9a1 	bl	8008f74 <__aeabi_d2iz>
 8005c32:	4605      	mov	r5, r0
 8005c34:	f002 fe84 	bl	8008940 <__aeabi_i2d>
 8005c38:	464a      	mov	r2, r9
 8005c3a:	4653      	mov	r3, sl
 8005c3c:	f002 feea 	bl	8008a14 <__aeabi_dmul>
 8005c40:	4602      	mov	r2, r0
 8005c42:	460b      	mov	r3, r1
 8005c44:	4630      	mov	r0, r6
 8005c46:	4639      	mov	r1, r7
 8005c48:	f002 fd2c 	bl	80086a4 <__aeabi_dsub>
 8005c4c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005c50:	f804 cb01 	strb.w	ip, [r4], #1
 8005c54:	eba4 0c0b 	sub.w	ip, r4, fp
 8005c58:	45e0      	cmp	r8, ip
 8005c5a:	4606      	mov	r6, r0
 8005c5c:	460f      	mov	r7, r1
 8005c5e:	f04f 0200 	mov.w	r2, #0
 8005c62:	4bc2      	ldr	r3, [pc, #776]	; (8005f6c <_dtoa_r+0x864>)
 8005c64:	d1d2      	bne.n	8005c0c <_dtoa_r+0x504>
 8005c66:	f8dd a000 	ldr.w	sl, [sp]
 8005c6a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005c6e:	4632      	mov	r2, r6
 8005c70:	463b      	mov	r3, r7
 8005c72:	4630      	mov	r0, r6
 8005c74:	4639      	mov	r1, r7
 8005c76:	f002 fd17 	bl	80086a8 <__adddf3>
 8005c7a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005c7e:	4606      	mov	r6, r0
 8005c80:	460f      	mov	r7, r1
 8005c82:	f003 f957 	bl	8008f34 <__aeabi_dcmpgt>
 8005c86:	b958      	cbnz	r0, 8005ca0 <_dtoa_r+0x598>
 8005c88:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005c8c:	4630      	mov	r0, r6
 8005c8e:	4639      	mov	r1, r7
 8005c90:	f003 f928 	bl	8008ee4 <__aeabi_dcmpeq>
 8005c94:	2800      	cmp	r0, #0
 8005c96:	f000 818f 	beq.w	8005fb8 <_dtoa_r+0x8b0>
 8005c9a:	07e9      	lsls	r1, r5, #31
 8005c9c:	f140 818c 	bpl.w	8005fb8 <_dtoa_r+0x8b0>
 8005ca0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005ca4:	e005      	b.n	8005cb2 <_dtoa_r+0x5aa>
 8005ca6:	459b      	cmp	fp, r3
 8005ca8:	f000 8376 	beq.w	8006398 <_dtoa_r+0xc90>
 8005cac:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005cb0:	461c      	mov	r4, r3
 8005cb2:	2d39      	cmp	r5, #57	; 0x39
 8005cb4:	f104 33ff 	add.w	r3, r4, #4294967295
 8005cb8:	d0f5      	beq.n	8005ca6 <_dtoa_r+0x59e>
 8005cba:	3501      	adds	r5, #1
 8005cbc:	701d      	strb	r5, [r3, #0]
 8005cbe:	e17b      	b.n	8005fb8 <_dtoa_r+0x8b0>
 8005cc0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005cc2:	2a00      	cmp	r2, #0
 8005cc4:	d03b      	beq.n	8005d3e <_dtoa_r+0x636>
 8005cc6:	9a02      	ldr	r2, [sp, #8]
 8005cc8:	2a01      	cmp	r2, #1
 8005cca:	f340 820d 	ble.w	80060e8 <_dtoa_r+0x9e0>
 8005cce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005cd0:	1e5f      	subs	r7, r3, #1
 8005cd2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005cd4:	42bb      	cmp	r3, r7
 8005cd6:	f2c0 82e8 	blt.w	80062aa <_dtoa_r+0xba2>
 8005cda:	1bdf      	subs	r7, r3, r7
 8005cdc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005cde:	2b00      	cmp	r3, #0
 8005ce0:	f2c0 830e 	blt.w	8006300 <_dtoa_r+0xbf8>
 8005ce4:	9a08      	ldr	r2, [sp, #32]
 8005ce6:	4614      	mov	r4, r2
 8005ce8:	441a      	add	r2, r3
 8005cea:	4498      	add	r8, r3
 8005cec:	9208      	str	r2, [sp, #32]
 8005cee:	2101      	movs	r1, #1
 8005cf0:	4648      	mov	r0, r9
 8005cf2:	f001 fb31 	bl	8007358 <__i2b>
 8005cf6:	4605      	mov	r5, r0
 8005cf8:	e024      	b.n	8005d44 <_dtoa_r+0x63c>
 8005cfa:	2301      	movs	r3, #1
 8005cfc:	930d      	str	r3, [sp, #52]	; 0x34
 8005cfe:	e5af      	b.n	8005860 <_dtoa_r+0x158>
 8005d00:	9a08      	ldr	r2, [sp, #32]
 8005d02:	9b06      	ldr	r3, [sp, #24]
 8005d04:	1ad2      	subs	r2, r2, r3
 8005d06:	425b      	negs	r3, r3
 8005d08:	930b      	str	r3, [sp, #44]	; 0x2c
 8005d0a:	2300      	movs	r3, #0
 8005d0c:	9208      	str	r2, [sp, #32]
 8005d0e:	930c      	str	r3, [sp, #48]	; 0x30
 8005d10:	e5b5      	b.n	800587e <_dtoa_r+0x176>
 8005d12:	f1c4 0301 	rsb	r3, r4, #1
 8005d16:	9308      	str	r3, [sp, #32]
 8005d18:	f04f 0800 	mov.w	r8, #0
 8005d1c:	e5a7      	b.n	800586e <_dtoa_r+0x166>
 8005d1e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005d22:	4640      	mov	r0, r8
 8005d24:	f002 fe0c 	bl	8008940 <__aeabi_i2d>
 8005d28:	4632      	mov	r2, r6
 8005d2a:	463b      	mov	r3, r7
 8005d2c:	f003 f8da 	bl	8008ee4 <__aeabi_dcmpeq>
 8005d30:	2800      	cmp	r0, #0
 8005d32:	f47f ad81 	bne.w	8005838 <_dtoa_r+0x130>
 8005d36:	f108 33ff 	add.w	r3, r8, #4294967295
 8005d3a:	9306      	str	r3, [sp, #24]
 8005d3c:	e57c      	b.n	8005838 <_dtoa_r+0x130>
 8005d3e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005d40:	9c08      	ldr	r4, [sp, #32]
 8005d42:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005d44:	2c00      	cmp	r4, #0
 8005d46:	dd0c      	ble.n	8005d62 <_dtoa_r+0x65a>
 8005d48:	f1b8 0f00 	cmp.w	r8, #0
 8005d4c:	dd09      	ble.n	8005d62 <_dtoa_r+0x65a>
 8005d4e:	4544      	cmp	r4, r8
 8005d50:	9a08      	ldr	r2, [sp, #32]
 8005d52:	4623      	mov	r3, r4
 8005d54:	bfa8      	it	ge
 8005d56:	4643      	movge	r3, r8
 8005d58:	1ad2      	subs	r2, r2, r3
 8005d5a:	9208      	str	r2, [sp, #32]
 8005d5c:	1ae4      	subs	r4, r4, r3
 8005d5e:	eba8 0803 	sub.w	r8, r8, r3
 8005d62:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005d64:	b16b      	cbz	r3, 8005d82 <_dtoa_r+0x67a>
 8005d66:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005d68:	2a00      	cmp	r2, #0
 8005d6a:	f000 8292 	beq.w	8006292 <_dtoa_r+0xb8a>
 8005d6e:	1bde      	subs	r6, r3, r7
 8005d70:	2f00      	cmp	r7, #0
 8005d72:	f040 819d 	bne.w	80060b0 <_dtoa_r+0x9a8>
 8005d76:	4651      	mov	r1, sl
 8005d78:	4632      	mov	r2, r6
 8005d7a:	4648      	mov	r0, r9
 8005d7c:	f001 fb9c 	bl	80074b8 <__pow5mult>
 8005d80:	4682      	mov	sl, r0
 8005d82:	2101      	movs	r1, #1
 8005d84:	4648      	mov	r0, r9
 8005d86:	f001 fae7 	bl	8007358 <__i2b>
 8005d8a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005d8c:	4606      	mov	r6, r0
 8005d8e:	2a00      	cmp	r2, #0
 8005d90:	f040 8127 	bne.w	8005fe2 <_dtoa_r+0x8da>
 8005d94:	9b02      	ldr	r3, [sp, #8]
 8005d96:	2b01      	cmp	r3, #1
 8005d98:	f340 816e 	ble.w	8006078 <_dtoa_r+0x970>
 8005d9c:	2001      	movs	r0, #1
 8005d9e:	4440      	add	r0, r8
 8005da0:	f010 001f 	ands.w	r0, r0, #31
 8005da4:	f000 811b 	beq.w	8005fde <_dtoa_r+0x8d6>
 8005da8:	f1c0 0320 	rsb	r3, r0, #32
 8005dac:	2b04      	cmp	r3, #4
 8005dae:	f340 83b0 	ble.w	8006512 <_dtoa_r+0xe0a>
 8005db2:	f1c0 001c 	rsb	r0, r0, #28
 8005db6:	9b08      	ldr	r3, [sp, #32]
 8005db8:	4403      	add	r3, r0
 8005dba:	9308      	str	r3, [sp, #32]
 8005dbc:	4404      	add	r4, r0
 8005dbe:	4480      	add	r8, r0
 8005dc0:	9b08      	ldr	r3, [sp, #32]
 8005dc2:	2b00      	cmp	r3, #0
 8005dc4:	dd05      	ble.n	8005dd2 <_dtoa_r+0x6ca>
 8005dc6:	4651      	mov	r1, sl
 8005dc8:	461a      	mov	r2, r3
 8005dca:	4648      	mov	r0, r9
 8005dcc:	f001 fbc4 	bl	8007558 <__lshift>
 8005dd0:	4682      	mov	sl, r0
 8005dd2:	f1b8 0f00 	cmp.w	r8, #0
 8005dd6:	dd05      	ble.n	8005de4 <_dtoa_r+0x6dc>
 8005dd8:	4631      	mov	r1, r6
 8005dda:	4642      	mov	r2, r8
 8005ddc:	4648      	mov	r0, r9
 8005dde:	f001 fbbb 	bl	8007558 <__lshift>
 8005de2:	4606      	mov	r6, r0
 8005de4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005de6:	2b00      	cmp	r3, #0
 8005de8:	d178      	bne.n	8005edc <_dtoa_r+0x7d4>
 8005dea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005dec:	2b00      	cmp	r3, #0
 8005dee:	f340 820b 	ble.w	8006208 <_dtoa_r+0xb00>
 8005df2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005df4:	2b00      	cmp	r3, #0
 8005df6:	f000 808a 	beq.w	8005f0e <_dtoa_r+0x806>
 8005dfa:	2c00      	cmp	r4, #0
 8005dfc:	f300 816d 	bgt.w	80060da <_dtoa_r+0x9d2>
 8005e00:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005e02:	2b00      	cmp	r3, #0
 8005e04:	f040 81cf 	bne.w	80061a6 <_dtoa_r+0xa9e>
 8005e08:	46a8      	mov	r8, r5
 8005e0a:	9a00      	ldr	r2, [sp, #0]
 8005e0c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005e10:	f002 0201 	and.w	r2, r2, #1
 8005e14:	920a      	str	r2, [sp, #40]	; 0x28
 8005e16:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005e18:	f10b 33ff 	add.w	r3, fp, #4294967295
 8005e1c:	441a      	add	r2, r3
 8005e1e:	465f      	mov	r7, fp
 8005e20:	9209      	str	r2, [sp, #36]	; 0x24
 8005e22:	46b3      	mov	fp, r6
 8005e24:	4659      	mov	r1, fp
 8005e26:	4650      	mov	r0, sl
 8005e28:	f7ff fbdc 	bl	80055e4 <quorem>
 8005e2c:	4629      	mov	r1, r5
 8005e2e:	4604      	mov	r4, r0
 8005e30:	4650      	mov	r0, sl
 8005e32:	f001 fbe7 	bl	8007604 <__mcmp>
 8005e36:	4659      	mov	r1, fp
 8005e38:	4606      	mov	r6, r0
 8005e3a:	4642      	mov	r2, r8
 8005e3c:	4648      	mov	r0, r9
 8005e3e:	f001 fbfd 	bl	800763c <__mdiff>
 8005e42:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005e46:	9300      	str	r3, [sp, #0]
 8005e48:	68c3      	ldr	r3, [r0, #12]
 8005e4a:	4601      	mov	r1, r0
 8005e4c:	2b00      	cmp	r3, #0
 8005e4e:	f040 81d6 	bne.w	80061fe <_dtoa_r+0xaf6>
 8005e52:	9008      	str	r0, [sp, #32]
 8005e54:	4650      	mov	r0, sl
 8005e56:	f001 fbd5 	bl	8007604 <__mcmp>
 8005e5a:	9a08      	ldr	r2, [sp, #32]
 8005e5c:	9007      	str	r0, [sp, #28]
 8005e5e:	4611      	mov	r1, r2
 8005e60:	4648      	mov	r0, r9
 8005e62:	f001 f9df 	bl	8007224 <_Bfree>
 8005e66:	9b07      	ldr	r3, [sp, #28]
 8005e68:	b933      	cbnz	r3, 8005e78 <_dtoa_r+0x770>
 8005e6a:	9a02      	ldr	r2, [sp, #8]
 8005e6c:	b922      	cbnz	r2, 8005e78 <_dtoa_r+0x770>
 8005e6e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005e70:	2b00      	cmp	r3, #0
 8005e72:	f000 831d 	beq.w	80064b0 <_dtoa_r+0xda8>
 8005e76:	9b02      	ldr	r3, [sp, #8]
 8005e78:	2e00      	cmp	r6, #0
 8005e7a:	f2c0 821e 	blt.w	80062ba <_dtoa_r+0xbb2>
 8005e7e:	d105      	bne.n	8005e8c <_dtoa_r+0x784>
 8005e80:	9a02      	ldr	r2, [sp, #8]
 8005e82:	b91a      	cbnz	r2, 8005e8c <_dtoa_r+0x784>
 8005e84:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005e86:	2a00      	cmp	r2, #0
 8005e88:	f000 8217 	beq.w	80062ba <_dtoa_r+0xbb2>
 8005e8c:	2b00      	cmp	r3, #0
 8005e8e:	f107 0401 	add.w	r4, r7, #1
 8005e92:	f300 8228 	bgt.w	80062e6 <_dtoa_r+0xbde>
 8005e96:	f89d 3000 	ldrb.w	r3, [sp]
 8005e9a:	703b      	strb	r3, [r7, #0]
 8005e9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005e9e:	42bb      	cmp	r3, r7
 8005ea0:	f000 8232 	beq.w	8006308 <_dtoa_r+0xc00>
 8005ea4:	4651      	mov	r1, sl
 8005ea6:	2300      	movs	r3, #0
 8005ea8:	220a      	movs	r2, #10
 8005eaa:	4648      	mov	r0, r9
 8005eac:	f001 f9c4 	bl	8007238 <__multadd>
 8005eb0:	4545      	cmp	r5, r8
 8005eb2:	4682      	mov	sl, r0
 8005eb4:	4629      	mov	r1, r5
 8005eb6:	f04f 0300 	mov.w	r3, #0
 8005eba:	f04f 020a 	mov.w	r2, #10
 8005ebe:	4648      	mov	r0, r9
 8005ec0:	f000 8197 	beq.w	80061f2 <_dtoa_r+0xaea>
 8005ec4:	f001 f9b8 	bl	8007238 <__multadd>
 8005ec8:	4641      	mov	r1, r8
 8005eca:	4605      	mov	r5, r0
 8005ecc:	2300      	movs	r3, #0
 8005ece:	220a      	movs	r2, #10
 8005ed0:	4648      	mov	r0, r9
 8005ed2:	f001 f9b1 	bl	8007238 <__multadd>
 8005ed6:	4627      	mov	r7, r4
 8005ed8:	4680      	mov	r8, r0
 8005eda:	e7a3      	b.n	8005e24 <_dtoa_r+0x71c>
 8005edc:	4631      	mov	r1, r6
 8005ede:	4650      	mov	r0, sl
 8005ee0:	f001 fb90 	bl	8007604 <__mcmp>
 8005ee4:	2800      	cmp	r0, #0
 8005ee6:	da80      	bge.n	8005dea <_dtoa_r+0x6e2>
 8005ee8:	9f06      	ldr	r7, [sp, #24]
 8005eea:	4651      	mov	r1, sl
 8005eec:	2300      	movs	r3, #0
 8005eee:	220a      	movs	r2, #10
 8005ef0:	4648      	mov	r0, r9
 8005ef2:	3f01      	subs	r7, #1
 8005ef4:	9706      	str	r7, [sp, #24]
 8005ef6:	f001 f99f 	bl	8007238 <__multadd>
 8005efa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005efc:	4682      	mov	sl, r0
 8005efe:	2b00      	cmp	r3, #0
 8005f00:	f040 82ee 	bne.w	80064e0 <_dtoa_r+0xdd8>
 8005f04:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005f06:	2b00      	cmp	r3, #0
 8005f08:	f340 82f6 	ble.w	80064f8 <_dtoa_r+0xdf0>
 8005f0c:	9309      	str	r3, [sp, #36]	; 0x24
 8005f0e:	465c      	mov	r4, fp
 8005f10:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005f14:	e002      	b.n	8005f1c <_dtoa_r+0x814>
 8005f16:	f001 f98f 	bl	8007238 <__multadd>
 8005f1a:	4682      	mov	sl, r0
 8005f1c:	4631      	mov	r1, r6
 8005f1e:	4650      	mov	r0, sl
 8005f20:	f7ff fb60 	bl	80055e4 <quorem>
 8005f24:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005f28:	f804 7b01 	strb.w	r7, [r4], #1
 8005f2c:	eba4 030b 	sub.w	r3, r4, fp
 8005f30:	4598      	cmp	r8, r3
 8005f32:	f04f 020a 	mov.w	r2, #10
 8005f36:	f04f 0300 	mov.w	r3, #0
 8005f3a:	4651      	mov	r1, sl
 8005f3c:	4648      	mov	r0, r9
 8005f3e:	dcea      	bgt.n	8005f16 <_dtoa_r+0x80e>
 8005f40:	2300      	movs	r3, #0
 8005f42:	9700      	str	r7, [sp, #0]
 8005f44:	9302      	str	r3, [sp, #8]
 8005f46:	4651      	mov	r1, sl
 8005f48:	2201      	movs	r2, #1
 8005f4a:	4648      	mov	r0, r9
 8005f4c:	f001 fb04 	bl	8007558 <__lshift>
 8005f50:	4631      	mov	r1, r6
 8005f52:	4682      	mov	sl, r0
 8005f54:	f001 fb56 	bl	8007604 <__mcmp>
 8005f58:	2800      	cmp	r0, #0
 8005f5a:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8005f5e:	dc15      	bgt.n	8005f8c <_dtoa_r+0x884>
 8005f60:	d109      	bne.n	8005f76 <_dtoa_r+0x86e>
 8005f62:	9b00      	ldr	r3, [sp, #0]
 8005f64:	07db      	lsls	r3, r3, #31
 8005f66:	d411      	bmi.n	8005f8c <_dtoa_r+0x884>
 8005f68:	e005      	b.n	8005f76 <_dtoa_r+0x86e>
 8005f6a:	bf00      	nop
 8005f6c:	40240000 	.word	0x40240000
 8005f70:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005f74:	461c      	mov	r4, r3
 8005f76:	2a30      	cmp	r2, #48	; 0x30
 8005f78:	f104 33ff 	add.w	r3, r4, #4294967295
 8005f7c:	d0f8      	beq.n	8005f70 <_dtoa_r+0x868>
 8005f7e:	e00b      	b.n	8005f98 <_dtoa_r+0x890>
 8005f80:	459b      	cmp	fp, r3
 8005f82:	f000 814e 	beq.w	8006222 <_dtoa_r+0xb1a>
 8005f86:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005f8a:	461c      	mov	r4, r3
 8005f8c:	2a39      	cmp	r2, #57	; 0x39
 8005f8e:	f104 33ff 	add.w	r3, r4, #4294967295
 8005f92:	d0f5      	beq.n	8005f80 <_dtoa_r+0x878>
 8005f94:	3201      	adds	r2, #1
 8005f96:	701a      	strb	r2, [r3, #0]
 8005f98:	4631      	mov	r1, r6
 8005f9a:	4648      	mov	r0, r9
 8005f9c:	f001 f942 	bl	8007224 <_Bfree>
 8005fa0:	b155      	cbz	r5, 8005fb8 <_dtoa_r+0x8b0>
 8005fa2:	9902      	ldr	r1, [sp, #8]
 8005fa4:	b121      	cbz	r1, 8005fb0 <_dtoa_r+0x8a8>
 8005fa6:	42a9      	cmp	r1, r5
 8005fa8:	d002      	beq.n	8005fb0 <_dtoa_r+0x8a8>
 8005faa:	4648      	mov	r0, r9
 8005fac:	f001 f93a 	bl	8007224 <_Bfree>
 8005fb0:	4629      	mov	r1, r5
 8005fb2:	4648      	mov	r0, r9
 8005fb4:	f001 f936 	bl	8007224 <_Bfree>
 8005fb8:	4651      	mov	r1, sl
 8005fba:	4648      	mov	r0, r9
 8005fbc:	f001 f932 	bl	8007224 <_Bfree>
 8005fc0:	2200      	movs	r2, #0
 8005fc2:	9b06      	ldr	r3, [sp, #24]
 8005fc4:	7022      	strb	r2, [r4, #0]
 8005fc6:	9a05      	ldr	r2, [sp, #20]
 8005fc8:	3301      	adds	r3, #1
 8005fca:	6013      	str	r3, [r2, #0]
 8005fcc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005fce:	2b00      	cmp	r3, #0
 8005fd0:	f43f abd9 	beq.w	8005786 <_dtoa_r+0x7e>
 8005fd4:	4658      	mov	r0, fp
 8005fd6:	601c      	str	r4, [r3, #0]
 8005fd8:	b01b      	add	sp, #108	; 0x6c
 8005fda:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005fde:	201c      	movs	r0, #28
 8005fe0:	e6e9      	b.n	8005db6 <_dtoa_r+0x6ae>
 8005fe2:	4601      	mov	r1, r0
 8005fe4:	4648      	mov	r0, r9
 8005fe6:	f001 fa67 	bl	80074b8 <__pow5mult>
 8005fea:	9b02      	ldr	r3, [sp, #8]
 8005fec:	2b01      	cmp	r3, #1
 8005fee:	4606      	mov	r6, r0
 8005ff0:	f340 80d4 	ble.w	800619c <_dtoa_r+0xa94>
 8005ff4:	2300      	movs	r3, #0
 8005ff6:	930c      	str	r3, [sp, #48]	; 0x30
 8005ff8:	6933      	ldr	r3, [r6, #16]
 8005ffa:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005ffe:	6918      	ldr	r0, [r3, #16]
 8006000:	f001 f95a 	bl	80072b8 <__hi0bits>
 8006004:	f1c0 0020 	rsb	r0, r0, #32
 8006008:	e6c9      	b.n	8005d9e <_dtoa_r+0x696>
 800600a:	900d      	str	r0, [sp, #52]	; 0x34
 800600c:	e428      	b.n	8005860 <_dtoa_r+0x158>
 800600e:	2501      	movs	r5, #1
 8006010:	e43e      	b.n	8005890 <_dtoa_r+0x188>
 8006012:	f1c3 0820 	rsb	r8, r3, #32
 8006016:	9b00      	ldr	r3, [sp, #0]
 8006018:	fa03 f008 	lsl.w	r0, r3, r8
 800601c:	f7ff bbd6 	b.w	80057cc <_dtoa_r+0xc4>
 8006020:	2300      	movs	r3, #0
 8006022:	930a      	str	r3, [sp, #40]	; 0x28
 8006024:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8006028:	4413      	add	r3, r2
 800602a:	930e      	str	r3, [sp, #56]	; 0x38
 800602c:	3301      	adds	r3, #1
 800602e:	2b01      	cmp	r3, #1
 8006030:	461e      	mov	r6, r3
 8006032:	9309      	str	r3, [sp, #36]	; 0x24
 8006034:	bfb8      	it	lt
 8006036:	2601      	movlt	r6, #1
 8006038:	2100      	movs	r1, #0
 800603a:	2e17      	cmp	r6, #23
 800603c:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006040:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8006042:	f77f ac87 	ble.w	8005954 <_dtoa_r+0x24c>
 8006046:	2201      	movs	r2, #1
 8006048:	2304      	movs	r3, #4
 800604a:	005b      	lsls	r3, r3, #1
 800604c:	f103 0014 	add.w	r0, r3, #20
 8006050:	42b0      	cmp	r0, r6
 8006052:	4611      	mov	r1, r2
 8006054:	f102 0201 	add.w	r2, r2, #1
 8006058:	d9f7      	bls.n	800604a <_dtoa_r+0x942>
 800605a:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800605e:	e479      	b.n	8005954 <_dtoa_r+0x24c>
 8006060:	2300      	movs	r3, #0
 8006062:	930a      	str	r3, [sp, #40]	; 0x28
 8006064:	9e07      	ldr	r6, [sp, #28]
 8006066:	2e00      	cmp	r6, #0
 8006068:	f340 80e2 	ble.w	8006230 <_dtoa_r+0xb28>
 800606c:	960e      	str	r6, [sp, #56]	; 0x38
 800606e:	9609      	str	r6, [sp, #36]	; 0x24
 8006070:	e7e2      	b.n	8006038 <_dtoa_r+0x930>
 8006072:	2301      	movs	r3, #1
 8006074:	930a      	str	r3, [sp, #40]	; 0x28
 8006076:	e7f5      	b.n	8006064 <_dtoa_r+0x95c>
 8006078:	9b00      	ldr	r3, [sp, #0]
 800607a:	2b00      	cmp	r3, #0
 800607c:	f47f ae8e 	bne.w	8005d9c <_dtoa_r+0x694>
 8006080:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006084:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8006088:	2b00      	cmp	r3, #0
 800608a:	f040 8193 	bne.w	80063b4 <_dtoa_r+0xcac>
 800608e:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8006092:	0d1b      	lsrs	r3, r3, #20
 8006094:	051b      	lsls	r3, r3, #20
 8006096:	b12b      	cbz	r3, 80060a4 <_dtoa_r+0x99c>
 8006098:	9b08      	ldr	r3, [sp, #32]
 800609a:	3301      	adds	r3, #1
 800609c:	9308      	str	r3, [sp, #32]
 800609e:	f108 0801 	add.w	r8, r8, #1
 80060a2:	2301      	movs	r3, #1
 80060a4:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80060a6:	930c      	str	r3, [sp, #48]	; 0x30
 80060a8:	2a00      	cmp	r2, #0
 80060aa:	f43f ae77 	beq.w	8005d9c <_dtoa_r+0x694>
 80060ae:	e7a3      	b.n	8005ff8 <_dtoa_r+0x8f0>
 80060b0:	463a      	mov	r2, r7
 80060b2:	4629      	mov	r1, r5
 80060b4:	4648      	mov	r0, r9
 80060b6:	f001 f9ff 	bl	80074b8 <__pow5mult>
 80060ba:	4652      	mov	r2, sl
 80060bc:	4601      	mov	r1, r0
 80060be:	4605      	mov	r5, r0
 80060c0:	4648      	mov	r0, r9
 80060c2:	f001 f953 	bl	800736c <__multiply>
 80060c6:	4651      	mov	r1, sl
 80060c8:	4607      	mov	r7, r0
 80060ca:	4648      	mov	r0, r9
 80060cc:	f001 f8aa 	bl	8007224 <_Bfree>
 80060d0:	46ba      	mov	sl, r7
 80060d2:	2e00      	cmp	r6, #0
 80060d4:	f43f ae55 	beq.w	8005d82 <_dtoa_r+0x67a>
 80060d8:	e64d      	b.n	8005d76 <_dtoa_r+0x66e>
 80060da:	4629      	mov	r1, r5
 80060dc:	4622      	mov	r2, r4
 80060de:	4648      	mov	r0, r9
 80060e0:	f001 fa3a 	bl	8007558 <__lshift>
 80060e4:	4605      	mov	r5, r0
 80060e6:	e68b      	b.n	8005e00 <_dtoa_r+0x6f8>
 80060e8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80060ea:	2a00      	cmp	r2, #0
 80060ec:	f000 815e 	beq.w	80063ac <_dtoa_r+0xca4>
 80060f0:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80060f4:	9a08      	ldr	r2, [sp, #32]
 80060f6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80060f8:	4614      	mov	r4, r2
 80060fa:	441a      	add	r2, r3
 80060fc:	4498      	add	r8, r3
 80060fe:	9208      	str	r2, [sp, #32]
 8006100:	e5f5      	b.n	8005cee <_dtoa_r+0x5e6>
 8006102:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006104:	2b00      	cmp	r3, #0
 8006106:	f73f ad3c 	bgt.w	8005b82 <_dtoa_r+0x47a>
 800610a:	f040 80bc 	bne.w	8006286 <_dtoa_r+0xb7e>
 800610e:	ec51 0b17 	vmov	r0, r1, d7
 8006112:	2200      	movs	r2, #0
 8006114:	4bb3      	ldr	r3, [pc, #716]	; (80063e4 <_dtoa_r+0xcdc>)
 8006116:	f002 fc7d 	bl	8008a14 <__aeabi_dmul>
 800611a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800611e:	f002 feff 	bl	8008f20 <__aeabi_dcmpge>
 8006122:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8006124:	4635      	mov	r5, r6
 8006126:	2800      	cmp	r0, #0
 8006128:	d176      	bne.n	8006218 <_dtoa_r+0xb10>
 800612a:	9a06      	ldr	r2, [sp, #24]
 800612c:	2331      	movs	r3, #49	; 0x31
 800612e:	3201      	adds	r2, #1
 8006130:	9206      	str	r2, [sp, #24]
 8006132:	f88b 3000 	strb.w	r3, [fp]
 8006136:	f10b 0401 	add.w	r4, fp, #1
 800613a:	4631      	mov	r1, r6
 800613c:	4648      	mov	r0, r9
 800613e:	f001 f871 	bl	8007224 <_Bfree>
 8006142:	2d00      	cmp	r5, #0
 8006144:	f47f af34 	bne.w	8005fb0 <_dtoa_r+0x8a8>
 8006148:	e736      	b.n	8005fb8 <_dtoa_r+0x8b0>
 800614a:	f000 8143 	beq.w	80063d4 <_dtoa_r+0xccc>
 800614e:	9b06      	ldr	r3, [sp, #24]
 8006150:	425c      	negs	r4, r3
 8006152:	4ba5      	ldr	r3, [pc, #660]	; (80063e8 <_dtoa_r+0xce0>)
 8006154:	f004 020f 	and.w	r2, r4, #15
 8006158:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800615c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006160:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006164:	f002 fc56 	bl	8008a14 <__aeabi_dmul>
 8006168:	1124      	asrs	r4, r4, #4
 800616a:	e9cd 0100 	strd	r0, r1, [sp]
 800616e:	f000 81c8 	beq.w	8006502 <_dtoa_r+0xdfa>
 8006172:	4d9e      	ldr	r5, [pc, #632]	; (80063ec <_dtoa_r+0xce4>)
 8006174:	2300      	movs	r3, #0
 8006176:	2602      	movs	r6, #2
 8006178:	07e7      	lsls	r7, r4, #31
 800617a:	d505      	bpl.n	8006188 <_dtoa_r+0xa80>
 800617c:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006180:	f002 fc48 	bl	8008a14 <__aeabi_dmul>
 8006184:	3601      	adds	r6, #1
 8006186:	2301      	movs	r3, #1
 8006188:	1064      	asrs	r4, r4, #1
 800618a:	f105 0508 	add.w	r5, r5, #8
 800618e:	d1f3      	bne.n	8006178 <_dtoa_r+0xa70>
 8006190:	2b00      	cmp	r3, #0
 8006192:	f43f ac25 	beq.w	80059e0 <_dtoa_r+0x2d8>
 8006196:	e9cd 0100 	strd	r0, r1, [sp]
 800619a:	e421      	b.n	80059e0 <_dtoa_r+0x2d8>
 800619c:	9b00      	ldr	r3, [sp, #0]
 800619e:	2b00      	cmp	r3, #0
 80061a0:	f43f af6e 	beq.w	8006080 <_dtoa_r+0x978>
 80061a4:	e726      	b.n	8005ff4 <_dtoa_r+0x8ec>
 80061a6:	6869      	ldr	r1, [r5, #4]
 80061a8:	4648      	mov	r0, r9
 80061aa:	f001 f815 	bl	80071d8 <_Balloc>
 80061ae:	692b      	ldr	r3, [r5, #16]
 80061b0:	3302      	adds	r3, #2
 80061b2:	009a      	lsls	r2, r3, #2
 80061b4:	4604      	mov	r4, r0
 80061b6:	f105 010c 	add.w	r1, r5, #12
 80061ba:	300c      	adds	r0, #12
 80061bc:	f7fd fdda 	bl	8003d74 <memcpy>
 80061c0:	4621      	mov	r1, r4
 80061c2:	2201      	movs	r2, #1
 80061c4:	4648      	mov	r0, r9
 80061c6:	f001 f9c7 	bl	8007558 <__lshift>
 80061ca:	4680      	mov	r8, r0
 80061cc:	e61d      	b.n	8005e0a <_dtoa_r+0x702>
 80061ce:	2400      	movs	r4, #0
 80061d0:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80061d4:	4621      	mov	r1, r4
 80061d6:	4648      	mov	r0, r9
 80061d8:	f000 fffe 	bl	80071d8 <_Balloc>
 80061dc:	f04f 33ff 	mov.w	r3, #4294967295
 80061e0:	930e      	str	r3, [sp, #56]	; 0x38
 80061e2:	9309      	str	r3, [sp, #36]	; 0x24
 80061e4:	2301      	movs	r3, #1
 80061e6:	4683      	mov	fp, r0
 80061e8:	9407      	str	r4, [sp, #28]
 80061ea:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80061ee:	930a      	str	r3, [sp, #40]	; 0x28
 80061f0:	e4b4      	b.n	8005b5c <_dtoa_r+0x454>
 80061f2:	f001 f821 	bl	8007238 <__multadd>
 80061f6:	4627      	mov	r7, r4
 80061f8:	4605      	mov	r5, r0
 80061fa:	4680      	mov	r8, r0
 80061fc:	e612      	b.n	8005e24 <_dtoa_r+0x71c>
 80061fe:	4648      	mov	r0, r9
 8006200:	f001 f810 	bl	8007224 <_Bfree>
 8006204:	2301      	movs	r3, #1
 8006206:	e637      	b.n	8005e78 <_dtoa_r+0x770>
 8006208:	9b02      	ldr	r3, [sp, #8]
 800620a:	2b02      	cmp	r3, #2
 800620c:	f77f adf1 	ble.w	8005df2 <_dtoa_r+0x6ea>
 8006210:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006212:	2b00      	cmp	r3, #0
 8006214:	f000 80d0 	beq.w	80063b8 <_dtoa_r+0xcb0>
 8006218:	9b07      	ldr	r3, [sp, #28]
 800621a:	43db      	mvns	r3, r3
 800621c:	9306      	str	r3, [sp, #24]
 800621e:	465c      	mov	r4, fp
 8006220:	e78b      	b.n	800613a <_dtoa_r+0xa32>
 8006222:	9a06      	ldr	r2, [sp, #24]
 8006224:	2331      	movs	r3, #49	; 0x31
 8006226:	3201      	adds	r2, #1
 8006228:	9206      	str	r2, [sp, #24]
 800622a:	f88b 3000 	strb.w	r3, [fp]
 800622e:	e6b3      	b.n	8005f98 <_dtoa_r+0x890>
 8006230:	2401      	movs	r4, #1
 8006232:	9409      	str	r4, [sp, #36]	; 0x24
 8006234:	9407      	str	r4, [sp, #28]
 8006236:	f7ff bb89 	b.w	800594c <_dtoa_r+0x244>
 800623a:	4630      	mov	r0, r6
 800623c:	f002 fb80 	bl	8008940 <__aeabi_i2d>
 8006240:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006244:	f002 fbe6 	bl	8008a14 <__aeabi_dmul>
 8006248:	2200      	movs	r2, #0
 800624a:	4b69      	ldr	r3, [pc, #420]	; (80063f0 <_dtoa_r+0xce8>)
 800624c:	f002 fa2c 	bl	80086a8 <__adddf3>
 8006250:	4606      	mov	r6, r0
 8006252:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006256:	2200      	movs	r2, #0
 8006258:	4b62      	ldr	r3, [pc, #392]	; (80063e4 <_dtoa_r+0xcdc>)
 800625a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800625e:	f002 fa21 	bl	80086a4 <__aeabi_dsub>
 8006262:	4632      	mov	r2, r6
 8006264:	463b      	mov	r3, r7
 8006266:	4604      	mov	r4, r0
 8006268:	460d      	mov	r5, r1
 800626a:	f002 fe63 	bl	8008f34 <__aeabi_dcmpgt>
 800626e:	2800      	cmp	r0, #0
 8006270:	d150      	bne.n	8006314 <_dtoa_r+0xc0c>
 8006272:	4632      	mov	r2, r6
 8006274:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8006278:	4620      	mov	r0, r4
 800627a:	4629      	mov	r1, r5
 800627c:	f002 fe3c 	bl	8008ef8 <__aeabi_dcmplt>
 8006280:	2800      	cmp	r0, #0
 8006282:	f43f ac67 	beq.w	8005b54 <_dtoa_r+0x44c>
 8006286:	2600      	movs	r6, #0
 8006288:	4635      	mov	r5, r6
 800628a:	e7c5      	b.n	8006218 <_dtoa_r+0xb10>
 800628c:	2301      	movs	r3, #1
 800628e:	930a      	str	r3, [sp, #40]	; 0x28
 8006290:	e6c8      	b.n	8006024 <_dtoa_r+0x91c>
 8006292:	4651      	mov	r1, sl
 8006294:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8006296:	4648      	mov	r0, r9
 8006298:	f001 f90e 	bl	80074b8 <__pow5mult>
 800629c:	4682      	mov	sl, r0
 800629e:	e570      	b.n	8005d82 <_dtoa_r+0x67a>
 80062a0:	f8dd a000 	ldr.w	sl, [sp]
 80062a4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80062a8:	e686      	b.n	8005fb8 <_dtoa_r+0x8b0>
 80062aa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80062ac:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80062ae:	1afb      	subs	r3, r7, r3
 80062b0:	441a      	add	r2, r3
 80062b2:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80062b6:	2700      	movs	r7, #0
 80062b8:	e510      	b.n	8005cdc <_dtoa_r+0x5d4>
 80062ba:	2b00      	cmp	r3, #0
 80062bc:	9402      	str	r4, [sp, #8]
 80062be:	465e      	mov	r6, fp
 80062c0:	f107 0401 	add.w	r4, r7, #1
 80062c4:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80062c8:	f300 80bc 	bgt.w	8006444 <_dtoa_r+0xd3c>
 80062cc:	f89d 3000 	ldrb.w	r3, [sp]
 80062d0:	9502      	str	r5, [sp, #8]
 80062d2:	703b      	strb	r3, [r7, #0]
 80062d4:	4645      	mov	r5, r8
 80062d6:	e65f      	b.n	8005f98 <_dtoa_r+0x890>
 80062d8:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80062dc:	2602      	movs	r6, #2
 80062de:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80062e2:	f7ff bb64 	b.w	80059ae <_dtoa_r+0x2a6>
 80062e6:	9b00      	ldr	r3, [sp, #0]
 80062e8:	2b39      	cmp	r3, #57	; 0x39
 80062ea:	465e      	mov	r6, fp
 80062ec:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80062f0:	f000 80ba 	beq.w	8006468 <_dtoa_r+0xd60>
 80062f4:	9b00      	ldr	r3, [sp, #0]
 80062f6:	9502      	str	r5, [sp, #8]
 80062f8:	3301      	adds	r3, #1
 80062fa:	703b      	strb	r3, [r7, #0]
 80062fc:	4645      	mov	r5, r8
 80062fe:	e64b      	b.n	8005f98 <_dtoa_r+0x890>
 8006300:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8006304:	1a9c      	subs	r4, r3, r2
 8006306:	e4f2      	b.n	8005cee <_dtoa_r+0x5e6>
 8006308:	465e      	mov	r6, fp
 800630a:	9502      	str	r5, [sp, #8]
 800630c:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006310:	4645      	mov	r5, r8
 8006312:	e618      	b.n	8005f46 <_dtoa_r+0x83e>
 8006314:	2600      	movs	r6, #0
 8006316:	4635      	mov	r5, r6
 8006318:	e707      	b.n	800612a <_dtoa_r+0xa22>
 800631a:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 800631e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006322:	f002 fb77 	bl	8008a14 <__aeabi_dmul>
 8006326:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8006328:	f88b 5000 	strb.w	r5, [fp]
 800632c:	2b01      	cmp	r3, #1
 800632e:	e9cd 0100 	strd	r0, r1, [sp]
 8006332:	d020      	beq.n	8006376 <_dtoa_r+0xc6e>
 8006334:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8006336:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800633a:	445b      	add	r3, fp
 800633c:	4698      	mov	r8, r3
 800633e:	2200      	movs	r2, #0
 8006340:	4b2c      	ldr	r3, [pc, #176]	; (80063f4 <_dtoa_r+0xcec>)
 8006342:	4630      	mov	r0, r6
 8006344:	4639      	mov	r1, r7
 8006346:	f002 fb65 	bl	8008a14 <__aeabi_dmul>
 800634a:	460f      	mov	r7, r1
 800634c:	4606      	mov	r6, r0
 800634e:	f002 fe11 	bl	8008f74 <__aeabi_d2iz>
 8006352:	4605      	mov	r5, r0
 8006354:	f002 faf4 	bl	8008940 <__aeabi_i2d>
 8006358:	3530      	adds	r5, #48	; 0x30
 800635a:	4602      	mov	r2, r0
 800635c:	460b      	mov	r3, r1
 800635e:	4630      	mov	r0, r6
 8006360:	4639      	mov	r1, r7
 8006362:	f002 f99f 	bl	80086a4 <__aeabi_dsub>
 8006366:	f804 5b01 	strb.w	r5, [r4], #1
 800636a:	4544      	cmp	r4, r8
 800636c:	4606      	mov	r6, r0
 800636e:	460f      	mov	r7, r1
 8006370:	d1e5      	bne.n	800633e <_dtoa_r+0xc36>
 8006372:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8006376:	4b20      	ldr	r3, [pc, #128]	; (80063f8 <_dtoa_r+0xcf0>)
 8006378:	2200      	movs	r2, #0
 800637a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800637e:	f002 f993 	bl	80086a8 <__adddf3>
 8006382:	4632      	mov	r2, r6
 8006384:	463b      	mov	r3, r7
 8006386:	f002 fdb7 	bl	8008ef8 <__aeabi_dcmplt>
 800638a:	2800      	cmp	r0, #0
 800638c:	d071      	beq.n	8006472 <_dtoa_r+0xd6a>
 800638e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006390:	9306      	str	r3, [sp, #24]
 8006392:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006396:	e48c      	b.n	8005cb2 <_dtoa_r+0x5aa>
 8006398:	2330      	movs	r3, #48	; 0x30
 800639a:	f88b 3000 	strb.w	r3, [fp]
 800639e:	9b06      	ldr	r3, [sp, #24]
 80063a0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80063a4:	3301      	adds	r3, #1
 80063a6:	9306      	str	r3, [sp, #24]
 80063a8:	465b      	mov	r3, fp
 80063aa:	e486      	b.n	8005cba <_dtoa_r+0x5b2>
 80063ac:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80063ae:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80063b2:	e69f      	b.n	80060f4 <_dtoa_r+0x9ec>
 80063b4:	2300      	movs	r3, #0
 80063b6:	e675      	b.n	80060a4 <_dtoa_r+0x99c>
 80063b8:	4631      	mov	r1, r6
 80063ba:	2205      	movs	r2, #5
 80063bc:	4648      	mov	r0, r9
 80063be:	f000 ff3b 	bl	8007238 <__multadd>
 80063c2:	4601      	mov	r1, r0
 80063c4:	4606      	mov	r6, r0
 80063c6:	4650      	mov	r0, sl
 80063c8:	f001 f91c 	bl	8007604 <__mcmp>
 80063cc:	2800      	cmp	r0, #0
 80063ce:	f73f aeac 	bgt.w	800612a <_dtoa_r+0xa22>
 80063d2:	e721      	b.n	8006218 <_dtoa_r+0xb10>
 80063d4:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80063d8:	2602      	movs	r6, #2
 80063da:	ed8d 7b00 	vstr	d7, [sp]
 80063de:	f7ff baff 	b.w	80059e0 <_dtoa_r+0x2d8>
 80063e2:	bf00      	nop
 80063e4:	40140000 	.word	0x40140000
 80063e8:	08009bb0 	.word	0x08009bb0
 80063ec:	08009b88 	.word	0x08009b88
 80063f0:	401c0000 	.word	0x401c0000
 80063f4:	40240000 	.word	0x40240000
 80063f8:	3fe00000 	.word	0x3fe00000
 80063fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80063fe:	2b00      	cmp	r3, #0
 8006400:	f43f af1b 	beq.w	800623a <_dtoa_r+0xb32>
 8006404:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8006406:	2c00      	cmp	r4, #0
 8006408:	f77f aba4 	ble.w	8005b54 <_dtoa_r+0x44c>
 800640c:	2200      	movs	r2, #0
 800640e:	4b45      	ldr	r3, [pc, #276]	; (8006524 <_dtoa_r+0xe1c>)
 8006410:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006414:	f002 fafe 	bl	8008a14 <__aeabi_dmul>
 8006418:	e9cd 0100 	strd	r0, r1, [sp]
 800641c:	1c70      	adds	r0, r6, #1
 800641e:	f002 fa8f 	bl	8008940 <__aeabi_i2d>
 8006422:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006426:	f002 faf5 	bl	8008a14 <__aeabi_dmul>
 800642a:	4b3f      	ldr	r3, [pc, #252]	; (8006528 <_dtoa_r+0xe20>)
 800642c:	2200      	movs	r2, #0
 800642e:	f002 f93b 	bl	80086a8 <__adddf3>
 8006432:	9b06      	ldr	r3, [sp, #24]
 8006434:	9412      	str	r4, [sp, #72]	; 0x48
 8006436:	3b01      	subs	r3, #1
 8006438:	4606      	mov	r6, r0
 800643a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800643e:	9316      	str	r3, [sp, #88]	; 0x58
 8006440:	f7ff baef 	b.w	8005a22 <_dtoa_r+0x31a>
 8006444:	4651      	mov	r1, sl
 8006446:	2201      	movs	r2, #1
 8006448:	4648      	mov	r0, r9
 800644a:	f001 f885 	bl	8007558 <__lshift>
 800644e:	4631      	mov	r1, r6
 8006450:	4682      	mov	sl, r0
 8006452:	f001 f8d7 	bl	8007604 <__mcmp>
 8006456:	2800      	cmp	r0, #0
 8006458:	dd3b      	ble.n	80064d2 <_dtoa_r+0xdca>
 800645a:	9b00      	ldr	r3, [sp, #0]
 800645c:	2b39      	cmp	r3, #57	; 0x39
 800645e:	d003      	beq.n	8006468 <_dtoa_r+0xd60>
 8006460:	9b02      	ldr	r3, [sp, #8]
 8006462:	3331      	adds	r3, #49	; 0x31
 8006464:	9300      	str	r3, [sp, #0]
 8006466:	e731      	b.n	80062cc <_dtoa_r+0xbc4>
 8006468:	2239      	movs	r2, #57	; 0x39
 800646a:	9502      	str	r5, [sp, #8]
 800646c:	703a      	strb	r2, [r7, #0]
 800646e:	4645      	mov	r5, r8
 8006470:	e58c      	b.n	8005f8c <_dtoa_r+0x884>
 8006472:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006476:	2000      	movs	r0, #0
 8006478:	492c      	ldr	r1, [pc, #176]	; (800652c <_dtoa_r+0xe24>)
 800647a:	f002 f913 	bl	80086a4 <__aeabi_dsub>
 800647e:	4632      	mov	r2, r6
 8006480:	463b      	mov	r3, r7
 8006482:	f002 fd57 	bl	8008f34 <__aeabi_dcmpgt>
 8006486:	b910      	cbnz	r0, 800648e <_dtoa_r+0xd86>
 8006488:	f7ff bb64 	b.w	8005b54 <_dtoa_r+0x44c>
 800648c:	4614      	mov	r4, r2
 800648e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8006492:	2b30      	cmp	r3, #48	; 0x30
 8006494:	f104 32ff 	add.w	r2, r4, #4294967295
 8006498:	d0f8      	beq.n	800648c <_dtoa_r+0xd84>
 800649a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800649c:	9306      	str	r3, [sp, #24]
 800649e:	e58b      	b.n	8005fb8 <_dtoa_r+0x8b0>
 80064a0:	46d9      	mov	r9, fp
 80064a2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80064a6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80064aa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80064ac:	9306      	str	r3, [sp, #24]
 80064ae:	e400      	b.n	8005cb2 <_dtoa_r+0x5aa>
 80064b0:	9b00      	ldr	r3, [sp, #0]
 80064b2:	2b39      	cmp	r3, #57	; 0x39
 80064b4:	4621      	mov	r1, r4
 80064b6:	4632      	mov	r2, r6
 80064b8:	f107 0401 	add.w	r4, r7, #1
 80064bc:	465e      	mov	r6, fp
 80064be:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80064c2:	d0d1      	beq.n	8006468 <_dtoa_r+0xd60>
 80064c4:	2a00      	cmp	r2, #0
 80064c6:	f77f af01 	ble.w	80062cc <_dtoa_r+0xbc4>
 80064ca:	460b      	mov	r3, r1
 80064cc:	3331      	adds	r3, #49	; 0x31
 80064ce:	9300      	str	r3, [sp, #0]
 80064d0:	e6fc      	b.n	80062cc <_dtoa_r+0xbc4>
 80064d2:	f47f aefb 	bne.w	80062cc <_dtoa_r+0xbc4>
 80064d6:	9b00      	ldr	r3, [sp, #0]
 80064d8:	07da      	lsls	r2, r3, #31
 80064da:	f57f aef7 	bpl.w	80062cc <_dtoa_r+0xbc4>
 80064de:	e7bc      	b.n	800645a <_dtoa_r+0xd52>
 80064e0:	4629      	mov	r1, r5
 80064e2:	2300      	movs	r3, #0
 80064e4:	220a      	movs	r2, #10
 80064e6:	4648      	mov	r0, r9
 80064e8:	f000 fea6 	bl	8007238 <__multadd>
 80064ec:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80064ee:	2b00      	cmp	r3, #0
 80064f0:	4605      	mov	r5, r0
 80064f2:	dd09      	ble.n	8006508 <_dtoa_r+0xe00>
 80064f4:	9309      	str	r3, [sp, #36]	; 0x24
 80064f6:	e480      	b.n	8005dfa <_dtoa_r+0x6f2>
 80064f8:	9b02      	ldr	r3, [sp, #8]
 80064fa:	2b02      	cmp	r3, #2
 80064fc:	dc0e      	bgt.n	800651c <_dtoa_r+0xe14>
 80064fe:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006500:	e504      	b.n	8005f0c <_dtoa_r+0x804>
 8006502:	2602      	movs	r6, #2
 8006504:	f7ff ba6c 	b.w	80059e0 <_dtoa_r+0x2d8>
 8006508:	9b02      	ldr	r3, [sp, #8]
 800650a:	2b02      	cmp	r3, #2
 800650c:	dc06      	bgt.n	800651c <_dtoa_r+0xe14>
 800650e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006510:	e7f0      	b.n	80064f4 <_dtoa_r+0xdec>
 8006512:	f43f ac55 	beq.w	8005dc0 <_dtoa_r+0x6b8>
 8006516:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800651a:	e44c      	b.n	8005db6 <_dtoa_r+0x6ae>
 800651c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800651e:	9309      	str	r3, [sp, #36]	; 0x24
 8006520:	e676      	b.n	8006210 <_dtoa_r+0xb08>
 8006522:	bf00      	nop
 8006524:	40240000 	.word	0x40240000
 8006528:	401c0000 	.word	0x401c0000
 800652c:	3fe00000 	.word	0x3fe00000

08006530 <__sflush_r>:
 8006530:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8006534:	b29a      	uxth	r2, r3
 8006536:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800653a:	460c      	mov	r4, r1
 800653c:	0711      	lsls	r1, r2, #28
 800653e:	4680      	mov	r8, r0
 8006540:	d444      	bmi.n	80065cc <__sflush_r+0x9c>
 8006542:	6862      	ldr	r2, [r4, #4]
 8006544:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8006548:	2a00      	cmp	r2, #0
 800654a:	81a3      	strh	r3, [r4, #12]
 800654c:	dd59      	ble.n	8006602 <__sflush_r+0xd2>
 800654e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006550:	2d00      	cmp	r5, #0
 8006552:	d053      	beq.n	80065fc <__sflush_r+0xcc>
 8006554:	2200      	movs	r2, #0
 8006556:	b29b      	uxth	r3, r3
 8006558:	f8d8 6000 	ldr.w	r6, [r8]
 800655c:	69e1      	ldr	r1, [r4, #28]
 800655e:	f8c8 2000 	str.w	r2, [r8]
 8006562:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8006566:	f040 8083 	bne.w	8006670 <__sflush_r+0x140>
 800656a:	2301      	movs	r3, #1
 800656c:	4640      	mov	r0, r8
 800656e:	47a8      	blx	r5
 8006570:	1c42      	adds	r2, r0, #1
 8006572:	d04a      	beq.n	800660a <__sflush_r+0xda>
 8006574:	89a3      	ldrh	r3, [r4, #12]
 8006576:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006578:	69e1      	ldr	r1, [r4, #28]
 800657a:	075b      	lsls	r3, r3, #29
 800657c:	d505      	bpl.n	800658a <__sflush_r+0x5a>
 800657e:	6862      	ldr	r2, [r4, #4]
 8006580:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8006582:	1a80      	subs	r0, r0, r2
 8006584:	b10b      	cbz	r3, 800658a <__sflush_r+0x5a>
 8006586:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8006588:	1ac0      	subs	r0, r0, r3
 800658a:	4602      	mov	r2, r0
 800658c:	2300      	movs	r3, #0
 800658e:	4640      	mov	r0, r8
 8006590:	47a8      	blx	r5
 8006592:	1c47      	adds	r7, r0, #1
 8006594:	d045      	beq.n	8006622 <__sflush_r+0xf2>
 8006596:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800659a:	6922      	ldr	r2, [r4, #16]
 800659c:	6022      	str	r2, [r4, #0]
 800659e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80065a2:	2200      	movs	r2, #0
 80065a4:	81a3      	strh	r3, [r4, #12]
 80065a6:	04db      	lsls	r3, r3, #19
 80065a8:	6062      	str	r2, [r4, #4]
 80065aa:	d500      	bpl.n	80065ae <__sflush_r+0x7e>
 80065ac:	6520      	str	r0, [r4, #80]	; 0x50
 80065ae:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80065b0:	f8c8 6000 	str.w	r6, [r8]
 80065b4:	b311      	cbz	r1, 80065fc <__sflush_r+0xcc>
 80065b6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80065ba:	4299      	cmp	r1, r3
 80065bc:	d002      	beq.n	80065c4 <__sflush_r+0x94>
 80065be:	4640      	mov	r0, r8
 80065c0:	f000 f95e 	bl	8006880 <_free_r>
 80065c4:	2000      	movs	r0, #0
 80065c6:	6320      	str	r0, [r4, #48]	; 0x30
 80065c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80065cc:	6926      	ldr	r6, [r4, #16]
 80065ce:	b1ae      	cbz	r6, 80065fc <__sflush_r+0xcc>
 80065d0:	6825      	ldr	r5, [r4, #0]
 80065d2:	6026      	str	r6, [r4, #0]
 80065d4:	0792      	lsls	r2, r2, #30
 80065d6:	bf0c      	ite	eq
 80065d8:	6963      	ldreq	r3, [r4, #20]
 80065da:	2300      	movne	r3, #0
 80065dc:	1bad      	subs	r5, r5, r6
 80065de:	60a3      	str	r3, [r4, #8]
 80065e0:	e00a      	b.n	80065f8 <__sflush_r+0xc8>
 80065e2:	462b      	mov	r3, r5
 80065e4:	4632      	mov	r2, r6
 80065e6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80065e8:	69e1      	ldr	r1, [r4, #28]
 80065ea:	4640      	mov	r0, r8
 80065ec:	47b8      	blx	r7
 80065ee:	2800      	cmp	r0, #0
 80065f0:	eba5 0500 	sub.w	r5, r5, r0
 80065f4:	4406      	add	r6, r0
 80065f6:	dd2b      	ble.n	8006650 <__sflush_r+0x120>
 80065f8:	2d00      	cmp	r5, #0
 80065fa:	dcf2      	bgt.n	80065e2 <__sflush_r+0xb2>
 80065fc:	2000      	movs	r0, #0
 80065fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006602:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8006604:	2a00      	cmp	r2, #0
 8006606:	dca2      	bgt.n	800654e <__sflush_r+0x1e>
 8006608:	e7f8      	b.n	80065fc <__sflush_r+0xcc>
 800660a:	f8d8 3000 	ldr.w	r3, [r8]
 800660e:	2b00      	cmp	r3, #0
 8006610:	d0b0      	beq.n	8006574 <__sflush_r+0x44>
 8006612:	2b1d      	cmp	r3, #29
 8006614:	d001      	beq.n	800661a <__sflush_r+0xea>
 8006616:	2b16      	cmp	r3, #22
 8006618:	d12c      	bne.n	8006674 <__sflush_r+0x144>
 800661a:	f8c8 6000 	str.w	r6, [r8]
 800661e:	2000      	movs	r0, #0
 8006620:	e7ed      	b.n	80065fe <__sflush_r+0xce>
 8006622:	f8d8 1000 	ldr.w	r1, [r8]
 8006626:	291d      	cmp	r1, #29
 8006628:	d81a      	bhi.n	8006660 <__sflush_r+0x130>
 800662a:	4b15      	ldr	r3, [pc, #84]	; (8006680 <__sflush_r+0x150>)
 800662c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006630:	40cb      	lsrs	r3, r1
 8006632:	43db      	mvns	r3, r3
 8006634:	f013 0301 	ands.w	r3, r3, #1
 8006638:	d114      	bne.n	8006664 <__sflush_r+0x134>
 800663a:	6925      	ldr	r5, [r4, #16]
 800663c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8006640:	e9c4 5300 	strd	r5, r3, [r4]
 8006644:	04d5      	lsls	r5, r2, #19
 8006646:	81a2      	strh	r2, [r4, #12]
 8006648:	d5b1      	bpl.n	80065ae <__sflush_r+0x7e>
 800664a:	2900      	cmp	r1, #0
 800664c:	d1af      	bne.n	80065ae <__sflush_r+0x7e>
 800664e:	e7ad      	b.n	80065ac <__sflush_r+0x7c>
 8006650:	89a3      	ldrh	r3, [r4, #12]
 8006652:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006656:	81a3      	strh	r3, [r4, #12]
 8006658:	f04f 30ff 	mov.w	r0, #4294967295
 800665c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006660:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006664:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006668:	81a2      	strh	r2, [r4, #12]
 800666a:	f04f 30ff 	mov.w	r0, #4294967295
 800666e:	e7c6      	b.n	80065fe <__sflush_r+0xce>
 8006670:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8006672:	e782      	b.n	800657a <__sflush_r+0x4a>
 8006674:	89a3      	ldrh	r3, [r4, #12]
 8006676:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800667a:	81a3      	strh	r3, [r4, #12]
 800667c:	e7bf      	b.n	80065fe <__sflush_r+0xce>
 800667e:	bf00      	nop
 8006680:	20400001 	.word	0x20400001

08006684 <_fflush_r>:
 8006684:	b538      	push	{r3, r4, r5, lr}
 8006686:	460d      	mov	r5, r1
 8006688:	4604      	mov	r4, r0
 800668a:	b108      	cbz	r0, 8006690 <_fflush_r+0xc>
 800668c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800668e:	b1a3      	cbz	r3, 80066ba <_fflush_r+0x36>
 8006690:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8006694:	b1b8      	cbz	r0, 80066c6 <_fflush_r+0x42>
 8006696:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006698:	07db      	lsls	r3, r3, #31
 800669a:	d401      	bmi.n	80066a0 <_fflush_r+0x1c>
 800669c:	0581      	lsls	r1, r0, #22
 800669e:	d51a      	bpl.n	80066d6 <_fflush_r+0x52>
 80066a0:	4620      	mov	r0, r4
 80066a2:	4629      	mov	r1, r5
 80066a4:	f7ff ff44 	bl	8006530 <__sflush_r>
 80066a8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80066aa:	07da      	lsls	r2, r3, #31
 80066ac:	4604      	mov	r4, r0
 80066ae:	d402      	bmi.n	80066b6 <_fflush_r+0x32>
 80066b0:	89ab      	ldrh	r3, [r5, #12]
 80066b2:	059b      	lsls	r3, r3, #22
 80066b4:	d50a      	bpl.n	80066cc <_fflush_r+0x48>
 80066b6:	4620      	mov	r0, r4
 80066b8:	bd38      	pop	{r3, r4, r5, pc}
 80066ba:	f000 f83f 	bl	800673c <__sinit>
 80066be:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80066c2:	2800      	cmp	r0, #0
 80066c4:	d1e7      	bne.n	8006696 <_fflush_r+0x12>
 80066c6:	4604      	mov	r4, r0
 80066c8:	4620      	mov	r0, r4
 80066ca:	bd38      	pop	{r3, r4, r5, pc}
 80066cc:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80066ce:	f000 fa09 	bl	8006ae4 <__retarget_lock_release_recursive>
 80066d2:	4620      	mov	r0, r4
 80066d4:	bd38      	pop	{r3, r4, r5, pc}
 80066d6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80066d8:	f000 fa02 	bl	8006ae0 <__retarget_lock_acquire_recursive>
 80066dc:	e7e0      	b.n	80066a0 <_fflush_r+0x1c>
 80066de:	bf00      	nop

080066e0 <std>:
 80066e0:	b510      	push	{r4, lr}
 80066e2:	2300      	movs	r3, #0
 80066e4:	4604      	mov	r4, r0
 80066e6:	8181      	strh	r1, [r0, #12]
 80066e8:	81c2      	strh	r2, [r0, #14]
 80066ea:	e9c0 3300 	strd	r3, r3, [r0]
 80066ee:	6083      	str	r3, [r0, #8]
 80066f0:	6643      	str	r3, [r0, #100]	; 0x64
 80066f2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80066f6:	6183      	str	r3, [r0, #24]
 80066f8:	4619      	mov	r1, r3
 80066fa:	2208      	movs	r2, #8
 80066fc:	305c      	adds	r0, #92	; 0x5c
 80066fe:	f7fd fbd3 	bl	8003ea8 <memset>
 8006702:	4807      	ldr	r0, [pc, #28]	; (8006720 <std+0x40>)
 8006704:	4907      	ldr	r1, [pc, #28]	; (8006724 <std+0x44>)
 8006706:	4a08      	ldr	r2, [pc, #32]	; (8006728 <std+0x48>)
 8006708:	4b08      	ldr	r3, [pc, #32]	; (800672c <std+0x4c>)
 800670a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800670c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8006710:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8006714:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8006718:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800671c:	f000 b9dc 	b.w	8006ad8 <__retarget_lock_init_recursive>
 8006720:	08007811 	.word	0x08007811
 8006724:	08007835 	.word	0x08007835
 8006728:	08007871 	.word	0x08007871
 800672c:	08007891 	.word	0x08007891

08006730 <_cleanup_r>:
 8006730:	4901      	ldr	r1, [pc, #4]	; (8006738 <_cleanup_r+0x8>)
 8006732:	f000 b999 	b.w	8006a68 <_fwalk_reent>
 8006736:	bf00      	nop
 8006738:	08007ba1 	.word	0x08007ba1

0800673c <__sinit>:
 800673c:	b510      	push	{r4, lr}
 800673e:	4604      	mov	r4, r0
 8006740:	4812      	ldr	r0, [pc, #72]	; (800678c <__sinit+0x50>)
 8006742:	f000 f9cd 	bl	8006ae0 <__retarget_lock_acquire_recursive>
 8006746:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8006748:	b9d2      	cbnz	r2, 8006780 <__sinit+0x44>
 800674a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800674e:	4810      	ldr	r0, [pc, #64]	; (8006790 <__sinit+0x54>)
 8006750:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8006754:	2103      	movs	r1, #3
 8006756:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800675a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800675c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8006760:	6860      	ldr	r0, [r4, #4]
 8006762:	2104      	movs	r1, #4
 8006764:	f7ff ffbc 	bl	80066e0 <std>
 8006768:	2201      	movs	r2, #1
 800676a:	2109      	movs	r1, #9
 800676c:	68a0      	ldr	r0, [r4, #8]
 800676e:	f7ff ffb7 	bl	80066e0 <std>
 8006772:	2202      	movs	r2, #2
 8006774:	2112      	movs	r1, #18
 8006776:	68e0      	ldr	r0, [r4, #12]
 8006778:	f7ff ffb2 	bl	80066e0 <std>
 800677c:	2301      	movs	r3, #1
 800677e:	63a3      	str	r3, [r4, #56]	; 0x38
 8006780:	4802      	ldr	r0, [pc, #8]	; (800678c <__sinit+0x50>)
 8006782:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8006786:	f000 b9ad 	b.w	8006ae4 <__retarget_lock_release_recursive>
 800678a:	bf00      	nop
 800678c:	20000c3c 	.word	0x20000c3c
 8006790:	08006731 	.word	0x08006731

08006794 <__sfp_lock_acquire>:
 8006794:	4801      	ldr	r0, [pc, #4]	; (800679c <__sfp_lock_acquire+0x8>)
 8006796:	f000 b9a3 	b.w	8006ae0 <__retarget_lock_acquire_recursive>
 800679a:	bf00      	nop
 800679c:	20000c50 	.word	0x20000c50

080067a0 <__sfp_lock_release>:
 80067a0:	4801      	ldr	r0, [pc, #4]	; (80067a8 <__sfp_lock_release+0x8>)
 80067a2:	f000 b99f 	b.w	8006ae4 <__retarget_lock_release_recursive>
 80067a6:	bf00      	nop
 80067a8:	20000c50 	.word	0x20000c50

080067ac <__libc_fini_array>:
 80067ac:	b538      	push	{r3, r4, r5, lr}
 80067ae:	4c0a      	ldr	r4, [pc, #40]	; (80067d8 <__libc_fini_array+0x2c>)
 80067b0:	4d0a      	ldr	r5, [pc, #40]	; (80067dc <__libc_fini_array+0x30>)
 80067b2:	1b64      	subs	r4, r4, r5
 80067b4:	10a4      	asrs	r4, r4, #2
 80067b6:	d00a      	beq.n	80067ce <__libc_fini_array+0x22>
 80067b8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80067bc:	3b01      	subs	r3, #1
 80067be:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80067c2:	3c01      	subs	r4, #1
 80067c4:	f855 3904 	ldr.w	r3, [r5], #-4
 80067c8:	4798      	blx	r3
 80067ca:	2c00      	cmp	r4, #0
 80067cc:	d1f9      	bne.n	80067c2 <__libc_fini_array+0x16>
 80067ce:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80067d2:	f002 bbfd 	b.w	8008fd0 <_fini>
 80067d6:	bf00      	nop
 80067d8:	200009cc 	.word	0x200009cc
 80067dc:	200009c8 	.word	0x200009c8

080067e0 <_malloc_trim_r>:
 80067e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80067e2:	4f24      	ldr	r7, [pc, #144]	; (8006874 <_malloc_trim_r+0x94>)
 80067e4:	460c      	mov	r4, r1
 80067e6:	4606      	mov	r6, r0
 80067e8:	f000 fcea 	bl	80071c0 <__malloc_lock>
 80067ec:	68bb      	ldr	r3, [r7, #8]
 80067ee:	685d      	ldr	r5, [r3, #4]
 80067f0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80067f4:	310f      	adds	r1, #15
 80067f6:	f025 0503 	bic.w	r5, r5, #3
 80067fa:	4429      	add	r1, r5
 80067fc:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8006800:	f021 010f 	bic.w	r1, r1, #15
 8006804:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8006808:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800680c:	db07      	blt.n	800681e <_malloc_trim_r+0x3e>
 800680e:	2100      	movs	r1, #0
 8006810:	4630      	mov	r0, r6
 8006812:	f000 ffeb 	bl	80077ec <_sbrk_r>
 8006816:	68bb      	ldr	r3, [r7, #8]
 8006818:	442b      	add	r3, r5
 800681a:	4298      	cmp	r0, r3
 800681c:	d004      	beq.n	8006828 <_malloc_trim_r+0x48>
 800681e:	4630      	mov	r0, r6
 8006820:	f000 fcd4 	bl	80071cc <__malloc_unlock>
 8006824:	2000      	movs	r0, #0
 8006826:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006828:	4261      	negs	r1, r4
 800682a:	4630      	mov	r0, r6
 800682c:	f000 ffde 	bl	80077ec <_sbrk_r>
 8006830:	3001      	adds	r0, #1
 8006832:	d00d      	beq.n	8006850 <_malloc_trim_r+0x70>
 8006834:	4b10      	ldr	r3, [pc, #64]	; (8006878 <_malloc_trim_r+0x98>)
 8006836:	68ba      	ldr	r2, [r7, #8]
 8006838:	6819      	ldr	r1, [r3, #0]
 800683a:	1b2d      	subs	r5, r5, r4
 800683c:	f045 0501 	orr.w	r5, r5, #1
 8006840:	4630      	mov	r0, r6
 8006842:	1b09      	subs	r1, r1, r4
 8006844:	6055      	str	r5, [r2, #4]
 8006846:	6019      	str	r1, [r3, #0]
 8006848:	f000 fcc0 	bl	80071cc <__malloc_unlock>
 800684c:	2001      	movs	r0, #1
 800684e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006850:	2100      	movs	r1, #0
 8006852:	4630      	mov	r0, r6
 8006854:	f000 ffca 	bl	80077ec <_sbrk_r>
 8006858:	68ba      	ldr	r2, [r7, #8]
 800685a:	1a83      	subs	r3, r0, r2
 800685c:	2b0f      	cmp	r3, #15
 800685e:	ddde      	ble.n	800681e <_malloc_trim_r+0x3e>
 8006860:	4c06      	ldr	r4, [pc, #24]	; (800687c <_malloc_trim_r+0x9c>)
 8006862:	4905      	ldr	r1, [pc, #20]	; (8006878 <_malloc_trim_r+0x98>)
 8006864:	6824      	ldr	r4, [r4, #0]
 8006866:	f043 0301 	orr.w	r3, r3, #1
 800686a:	1b00      	subs	r0, r0, r4
 800686c:	6053      	str	r3, [r2, #4]
 800686e:	6008      	str	r0, [r1, #0]
 8006870:	e7d5      	b.n	800681e <_malloc_trim_r+0x3e>
 8006872:	bf00      	nop
 8006874:	20000444 	.word	0x20000444
 8006878:	20000bb4 	.word	0x20000bb4
 800687c:	2000084c 	.word	0x2000084c

08006880 <_free_r>:
 8006880:	2900      	cmp	r1, #0
 8006882:	d053      	beq.n	800692c <_free_r+0xac>
 8006884:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006886:	460c      	mov	r4, r1
 8006888:	4606      	mov	r6, r0
 800688a:	f000 fc99 	bl	80071c0 <__malloc_lock>
 800688e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8006892:	4f71      	ldr	r7, [pc, #452]	; (8006a58 <_free_r+0x1d8>)
 8006894:	f02c 0101 	bic.w	r1, ip, #1
 8006898:	f1a4 0508 	sub.w	r5, r4, #8
 800689c:	186b      	adds	r3, r5, r1
 800689e:	68b8      	ldr	r0, [r7, #8]
 80068a0:	685a      	ldr	r2, [r3, #4]
 80068a2:	4298      	cmp	r0, r3
 80068a4:	f022 0203 	bic.w	r2, r2, #3
 80068a8:	d053      	beq.n	8006952 <_free_r+0xd2>
 80068aa:	f01c 0f01 	tst.w	ip, #1
 80068ae:	605a      	str	r2, [r3, #4]
 80068b0:	eb03 0002 	add.w	r0, r3, r2
 80068b4:	d13b      	bne.n	800692e <_free_r+0xae>
 80068b6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80068ba:	6840      	ldr	r0, [r0, #4]
 80068bc:	eba5 050c 	sub.w	r5, r5, ip
 80068c0:	f107 0e08 	add.w	lr, r7, #8
 80068c4:	68ac      	ldr	r4, [r5, #8]
 80068c6:	4574      	cmp	r4, lr
 80068c8:	4461      	add	r1, ip
 80068ca:	f000 0001 	and.w	r0, r0, #1
 80068ce:	d075      	beq.n	80069bc <_free_r+0x13c>
 80068d0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80068d4:	f8c4 c00c 	str.w	ip, [r4, #12]
 80068d8:	f8cc 4008 	str.w	r4, [ip, #8]
 80068dc:	b360      	cbz	r0, 8006938 <_free_r+0xb8>
 80068de:	f041 0301 	orr.w	r3, r1, #1
 80068e2:	606b      	str	r3, [r5, #4]
 80068e4:	5069      	str	r1, [r5, r1]
 80068e6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80068ea:	d350      	bcc.n	800698e <_free_r+0x10e>
 80068ec:	0a4b      	lsrs	r3, r1, #9
 80068ee:	2b04      	cmp	r3, #4
 80068f0:	d870      	bhi.n	80069d4 <_free_r+0x154>
 80068f2:	098b      	lsrs	r3, r1, #6
 80068f4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80068f8:	00e4      	lsls	r4, r4, #3
 80068fa:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80068fe:	1938      	adds	r0, r7, r4
 8006900:	593b      	ldr	r3, [r7, r4]
 8006902:	3808      	subs	r0, #8
 8006904:	4298      	cmp	r0, r3
 8006906:	d078      	beq.n	80069fa <_free_r+0x17a>
 8006908:	685a      	ldr	r2, [r3, #4]
 800690a:	f022 0203 	bic.w	r2, r2, #3
 800690e:	428a      	cmp	r2, r1
 8006910:	d971      	bls.n	80069f6 <_free_r+0x176>
 8006912:	689b      	ldr	r3, [r3, #8]
 8006914:	4298      	cmp	r0, r3
 8006916:	d1f7      	bne.n	8006908 <_free_r+0x88>
 8006918:	68c3      	ldr	r3, [r0, #12]
 800691a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800691e:	609d      	str	r5, [r3, #8]
 8006920:	60c5      	str	r5, [r0, #12]
 8006922:	4630      	mov	r0, r6
 8006924:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006928:	f000 bc50 	b.w	80071cc <__malloc_unlock>
 800692c:	4770      	bx	lr
 800692e:	6840      	ldr	r0, [r0, #4]
 8006930:	f000 0001 	and.w	r0, r0, #1
 8006934:	2800      	cmp	r0, #0
 8006936:	d1d2      	bne.n	80068de <_free_r+0x5e>
 8006938:	6898      	ldr	r0, [r3, #8]
 800693a:	4c48      	ldr	r4, [pc, #288]	; (8006a5c <_free_r+0x1dc>)
 800693c:	4411      	add	r1, r2
 800693e:	42a0      	cmp	r0, r4
 8006940:	f041 0201 	orr.w	r2, r1, #1
 8006944:	d062      	beq.n	8006a0c <_free_r+0x18c>
 8006946:	68db      	ldr	r3, [r3, #12]
 8006948:	60c3      	str	r3, [r0, #12]
 800694a:	6098      	str	r0, [r3, #8]
 800694c:	606a      	str	r2, [r5, #4]
 800694e:	5069      	str	r1, [r5, r1]
 8006950:	e7c9      	b.n	80068e6 <_free_r+0x66>
 8006952:	f01c 0f01 	tst.w	ip, #1
 8006956:	440a      	add	r2, r1
 8006958:	d107      	bne.n	800696a <_free_r+0xea>
 800695a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800695e:	1aed      	subs	r5, r5, r3
 8006960:	441a      	add	r2, r3
 8006962:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8006966:	60cb      	str	r3, [r1, #12]
 8006968:	6099      	str	r1, [r3, #8]
 800696a:	4b3d      	ldr	r3, [pc, #244]	; (8006a60 <_free_r+0x1e0>)
 800696c:	681b      	ldr	r3, [r3, #0]
 800696e:	f042 0101 	orr.w	r1, r2, #1
 8006972:	4293      	cmp	r3, r2
 8006974:	6069      	str	r1, [r5, #4]
 8006976:	60bd      	str	r5, [r7, #8]
 8006978:	d804      	bhi.n	8006984 <_free_r+0x104>
 800697a:	4b3a      	ldr	r3, [pc, #232]	; (8006a64 <_free_r+0x1e4>)
 800697c:	4630      	mov	r0, r6
 800697e:	6819      	ldr	r1, [r3, #0]
 8006980:	f7ff ff2e 	bl	80067e0 <_malloc_trim_r>
 8006984:	4630      	mov	r0, r6
 8006986:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800698a:	f000 bc1f 	b.w	80071cc <__malloc_unlock>
 800698e:	08c9      	lsrs	r1, r1, #3
 8006990:	6878      	ldr	r0, [r7, #4]
 8006992:	1c4a      	adds	r2, r1, #1
 8006994:	2301      	movs	r3, #1
 8006996:	1089      	asrs	r1, r1, #2
 8006998:	408b      	lsls	r3, r1
 800699a:	4303      	orrs	r3, r0
 800699c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80069a0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80069a4:	607b      	str	r3, [r7, #4]
 80069a6:	3908      	subs	r1, #8
 80069a8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80069ac:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80069b0:	60c5      	str	r5, [r0, #12]
 80069b2:	4630      	mov	r0, r6
 80069b4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80069b8:	f000 bc08 	b.w	80071cc <__malloc_unlock>
 80069bc:	2800      	cmp	r0, #0
 80069be:	d145      	bne.n	8006a4c <_free_r+0x1cc>
 80069c0:	440a      	add	r2, r1
 80069c2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80069c6:	f042 0001 	orr.w	r0, r2, #1
 80069ca:	60cb      	str	r3, [r1, #12]
 80069cc:	6099      	str	r1, [r3, #8]
 80069ce:	6068      	str	r0, [r5, #4]
 80069d0:	50aa      	str	r2, [r5, r2]
 80069d2:	e7d7      	b.n	8006984 <_free_r+0x104>
 80069d4:	2b14      	cmp	r3, #20
 80069d6:	d908      	bls.n	80069ea <_free_r+0x16a>
 80069d8:	2b54      	cmp	r3, #84	; 0x54
 80069da:	d81e      	bhi.n	8006a1a <_free_r+0x19a>
 80069dc:	0b0b      	lsrs	r3, r1, #12
 80069de:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80069e2:	00e4      	lsls	r4, r4, #3
 80069e4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80069e8:	e789      	b.n	80068fe <_free_r+0x7e>
 80069ea:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80069ee:	00e4      	lsls	r4, r4, #3
 80069f0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80069f4:	e783      	b.n	80068fe <_free_r+0x7e>
 80069f6:	4618      	mov	r0, r3
 80069f8:	e78e      	b.n	8006918 <_free_r+0x98>
 80069fa:	1093      	asrs	r3, r2, #2
 80069fc:	6879      	ldr	r1, [r7, #4]
 80069fe:	2201      	movs	r2, #1
 8006a00:	fa02 f303 	lsl.w	r3, r2, r3
 8006a04:	430b      	orrs	r3, r1
 8006a06:	607b      	str	r3, [r7, #4]
 8006a08:	4603      	mov	r3, r0
 8006a0a:	e786      	b.n	800691a <_free_r+0x9a>
 8006a0c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8006a10:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8006a14:	606a      	str	r2, [r5, #4]
 8006a16:	5069      	str	r1, [r5, r1]
 8006a18:	e7b4      	b.n	8006984 <_free_r+0x104>
 8006a1a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8006a1e:	d806      	bhi.n	8006a2e <_free_r+0x1ae>
 8006a20:	0bcb      	lsrs	r3, r1, #15
 8006a22:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8006a26:	00e4      	lsls	r4, r4, #3
 8006a28:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8006a2c:	e767      	b.n	80068fe <_free_r+0x7e>
 8006a2e:	f240 5254 	movw	r2, #1364	; 0x554
 8006a32:	4293      	cmp	r3, r2
 8006a34:	d806      	bhi.n	8006a44 <_free_r+0x1c4>
 8006a36:	0c8b      	lsrs	r3, r1, #18
 8006a38:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8006a3c:	00e4      	lsls	r4, r4, #3
 8006a3e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8006a42:	e75c      	b.n	80068fe <_free_r+0x7e>
 8006a44:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8006a48:	227e      	movs	r2, #126	; 0x7e
 8006a4a:	e758      	b.n	80068fe <_free_r+0x7e>
 8006a4c:	f041 0201 	orr.w	r2, r1, #1
 8006a50:	606a      	str	r2, [r5, #4]
 8006a52:	6019      	str	r1, [r3, #0]
 8006a54:	e796      	b.n	8006984 <_free_r+0x104>
 8006a56:	bf00      	nop
 8006a58:	20000444 	.word	0x20000444
 8006a5c:	2000044c 	.word	0x2000044c
 8006a60:	20000850 	.word	0x20000850
 8006a64:	20000be4 	.word	0x20000be4

08006a68 <_fwalk_reent>:
 8006a68:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006a6c:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006a70:	d01f      	beq.n	8006ab2 <_fwalk_reent+0x4a>
 8006a72:	4688      	mov	r8, r1
 8006a74:	4606      	mov	r6, r0
 8006a76:	f04f 0900 	mov.w	r9, #0
 8006a7a:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006a7e:	3d01      	subs	r5, #1
 8006a80:	d411      	bmi.n	8006aa6 <_fwalk_reent+0x3e>
 8006a82:	89a3      	ldrh	r3, [r4, #12]
 8006a84:	2b01      	cmp	r3, #1
 8006a86:	f105 35ff 	add.w	r5, r5, #4294967295
 8006a8a:	4621      	mov	r1, r4
 8006a8c:	4630      	mov	r0, r6
 8006a8e:	d906      	bls.n	8006a9e <_fwalk_reent+0x36>
 8006a90:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006a94:	3301      	adds	r3, #1
 8006a96:	d002      	beq.n	8006a9e <_fwalk_reent+0x36>
 8006a98:	47c0      	blx	r8
 8006a9a:	ea49 0900 	orr.w	r9, r9, r0
 8006a9e:	1c6b      	adds	r3, r5, #1
 8006aa0:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006aa4:	d1ed      	bne.n	8006a82 <_fwalk_reent+0x1a>
 8006aa6:	683f      	ldr	r7, [r7, #0]
 8006aa8:	2f00      	cmp	r7, #0
 8006aaa:	d1e6      	bne.n	8006a7a <_fwalk_reent+0x12>
 8006aac:	4648      	mov	r0, r9
 8006aae:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006ab2:	46b9      	mov	r9, r7
 8006ab4:	4648      	mov	r0, r9
 8006ab6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006aba:	bf00      	nop

08006abc <_localeconv_r>:
 8006abc:	4a04      	ldr	r2, [pc, #16]	; (8006ad0 <_localeconv_r+0x14>)
 8006abe:	4b05      	ldr	r3, [pc, #20]	; (8006ad4 <_localeconv_r+0x18>)
 8006ac0:	6812      	ldr	r2, [r2, #0]
 8006ac2:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006ac4:	2800      	cmp	r0, #0
 8006ac6:	bf08      	it	eq
 8006ac8:	4618      	moveq	r0, r3
 8006aca:	30f0      	adds	r0, #240	; 0xf0
 8006acc:	4770      	bx	lr
 8006ace:	bf00      	nop
 8006ad0:	20000010 	.word	0x20000010
 8006ad4:	20000854 	.word	0x20000854

08006ad8 <__retarget_lock_init_recursive>:
 8006ad8:	4770      	bx	lr
 8006ada:	bf00      	nop

08006adc <__retarget_lock_close_recursive>:
 8006adc:	4770      	bx	lr
 8006ade:	bf00      	nop

08006ae0 <__retarget_lock_acquire_recursive>:
 8006ae0:	4770      	bx	lr
 8006ae2:	bf00      	nop

08006ae4 <__retarget_lock_release_recursive>:
 8006ae4:	4770      	bx	lr
 8006ae6:	bf00      	nop

08006ae8 <__swhatbuf_r>:
 8006ae8:	b570      	push	{r4, r5, r6, lr}
 8006aea:	460c      	mov	r4, r1
 8006aec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006af0:	2900      	cmp	r1, #0
 8006af2:	b096      	sub	sp, #88	; 0x58
 8006af4:	4615      	mov	r5, r2
 8006af6:	461e      	mov	r6, r3
 8006af8:	da0f      	bge.n	8006b1a <__swhatbuf_r+0x32>
 8006afa:	89a2      	ldrh	r2, [r4, #12]
 8006afc:	2300      	movs	r3, #0
 8006afe:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006b02:	6033      	str	r3, [r6, #0]
 8006b04:	d104      	bne.n	8006b10 <__swhatbuf_r+0x28>
 8006b06:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006b0a:	602b      	str	r3, [r5, #0]
 8006b0c:	b016      	add	sp, #88	; 0x58
 8006b0e:	bd70      	pop	{r4, r5, r6, pc}
 8006b10:	2240      	movs	r2, #64	; 0x40
 8006b12:	4618      	mov	r0, r3
 8006b14:	602a      	str	r2, [r5, #0]
 8006b16:	b016      	add	sp, #88	; 0x58
 8006b18:	bd70      	pop	{r4, r5, r6, pc}
 8006b1a:	466a      	mov	r2, sp
 8006b1c:	f001 f92a 	bl	8007d74 <_fstat_r>
 8006b20:	2800      	cmp	r0, #0
 8006b22:	dbea      	blt.n	8006afa <__swhatbuf_r+0x12>
 8006b24:	9b01      	ldr	r3, [sp, #4]
 8006b26:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8006b2a:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006b2e:	fab3 f383 	clz	r3, r3
 8006b32:	095b      	lsrs	r3, r3, #5
 8006b34:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8006b38:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006b3c:	6033      	str	r3, [r6, #0]
 8006b3e:	602a      	str	r2, [r5, #0]
 8006b40:	b016      	add	sp, #88	; 0x58
 8006b42:	bd70      	pop	{r4, r5, r6, pc}

08006b44 <__smakebuf_r>:
 8006b44:	898a      	ldrh	r2, [r1, #12]
 8006b46:	0792      	lsls	r2, r2, #30
 8006b48:	460b      	mov	r3, r1
 8006b4a:	d506      	bpl.n	8006b5a <__smakebuf_r+0x16>
 8006b4c:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006b50:	2101      	movs	r1, #1
 8006b52:	601a      	str	r2, [r3, #0]
 8006b54:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006b58:	4770      	bx	lr
 8006b5a:	b570      	push	{r4, r5, r6, lr}
 8006b5c:	b082      	sub	sp, #8
 8006b5e:	ab01      	add	r3, sp, #4
 8006b60:	466a      	mov	r2, sp
 8006b62:	460c      	mov	r4, r1
 8006b64:	4605      	mov	r5, r0
 8006b66:	f7ff ffbf 	bl	8006ae8 <__swhatbuf_r>
 8006b6a:	9900      	ldr	r1, [sp, #0]
 8006b6c:	4606      	mov	r6, r0
 8006b6e:	4628      	mov	r0, r5
 8006b70:	f000 f832 	bl	8006bd8 <_malloc_r>
 8006b74:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b78:	b1d8      	cbz	r0, 8006bb2 <__smakebuf_r+0x6e>
 8006b7a:	4916      	ldr	r1, [pc, #88]	; (8006bd4 <__smakebuf_r+0x90>)
 8006b7c:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006b7e:	9a01      	ldr	r2, [sp, #4]
 8006b80:	9900      	ldr	r1, [sp, #0]
 8006b82:	6020      	str	r0, [r4, #0]
 8006b84:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006b88:	81a3      	strh	r3, [r4, #12]
 8006b8a:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006b8e:	b91a      	cbnz	r2, 8006b98 <__smakebuf_r+0x54>
 8006b90:	4333      	orrs	r3, r6
 8006b92:	81a3      	strh	r3, [r4, #12]
 8006b94:	b002      	add	sp, #8
 8006b96:	bd70      	pop	{r4, r5, r6, pc}
 8006b98:	4628      	mov	r0, r5
 8006b9a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006b9e:	f001 fa7b 	bl	8008098 <_isatty_r>
 8006ba2:	b1a0      	cbz	r0, 8006bce <__smakebuf_r+0x8a>
 8006ba4:	89a3      	ldrh	r3, [r4, #12]
 8006ba6:	f023 0303 	bic.w	r3, r3, #3
 8006baa:	f043 0301 	orr.w	r3, r3, #1
 8006bae:	b21b      	sxth	r3, r3
 8006bb0:	e7ee      	b.n	8006b90 <__smakebuf_r+0x4c>
 8006bb2:	059a      	lsls	r2, r3, #22
 8006bb4:	d4ee      	bmi.n	8006b94 <__smakebuf_r+0x50>
 8006bb6:	f023 0303 	bic.w	r3, r3, #3
 8006bba:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006bbe:	f043 0302 	orr.w	r3, r3, #2
 8006bc2:	2101      	movs	r1, #1
 8006bc4:	81a3      	strh	r3, [r4, #12]
 8006bc6:	6022      	str	r2, [r4, #0]
 8006bc8:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006bcc:	e7e2      	b.n	8006b94 <__smakebuf_r+0x50>
 8006bce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bd2:	e7dd      	b.n	8006b90 <__smakebuf_r+0x4c>
 8006bd4:	08006731 	.word	0x08006731

08006bd8 <_malloc_r>:
 8006bd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006bdc:	f101 050b 	add.w	r5, r1, #11
 8006be0:	2d16      	cmp	r5, #22
 8006be2:	b083      	sub	sp, #12
 8006be4:	4606      	mov	r6, r0
 8006be6:	d823      	bhi.n	8006c30 <_malloc_r+0x58>
 8006be8:	2910      	cmp	r1, #16
 8006bea:	f200 80b9 	bhi.w	8006d60 <_malloc_r+0x188>
 8006bee:	f000 fae7 	bl	80071c0 <__malloc_lock>
 8006bf2:	2510      	movs	r5, #16
 8006bf4:	2318      	movs	r3, #24
 8006bf6:	2002      	movs	r0, #2
 8006bf8:	4fc5      	ldr	r7, [pc, #788]	; (8006f10 <_malloc_r+0x338>)
 8006bfa:	443b      	add	r3, r7
 8006bfc:	f1a3 0208 	sub.w	r2, r3, #8
 8006c00:	685c      	ldr	r4, [r3, #4]
 8006c02:	4294      	cmp	r4, r2
 8006c04:	f000 8166 	beq.w	8006ed4 <_malloc_r+0x2fc>
 8006c08:	6863      	ldr	r3, [r4, #4]
 8006c0a:	f023 0303 	bic.w	r3, r3, #3
 8006c0e:	4423      	add	r3, r4
 8006c10:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006c14:	685a      	ldr	r2, [r3, #4]
 8006c16:	60e9      	str	r1, [r5, #12]
 8006c18:	f042 0201 	orr.w	r2, r2, #1
 8006c1c:	608d      	str	r5, [r1, #8]
 8006c1e:	4630      	mov	r0, r6
 8006c20:	605a      	str	r2, [r3, #4]
 8006c22:	f000 fad3 	bl	80071cc <__malloc_unlock>
 8006c26:	3408      	adds	r4, #8
 8006c28:	4620      	mov	r0, r4
 8006c2a:	b003      	add	sp, #12
 8006c2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c30:	f035 0507 	bics.w	r5, r5, #7
 8006c34:	f100 8094 	bmi.w	8006d60 <_malloc_r+0x188>
 8006c38:	42a9      	cmp	r1, r5
 8006c3a:	f200 8091 	bhi.w	8006d60 <_malloc_r+0x188>
 8006c3e:	f000 fabf 	bl	80071c0 <__malloc_lock>
 8006c42:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8006c46:	f0c0 8183 	bcc.w	8006f50 <_malloc_r+0x378>
 8006c4a:	0a6b      	lsrs	r3, r5, #9
 8006c4c:	f000 808f 	beq.w	8006d6e <_malloc_r+0x196>
 8006c50:	2b04      	cmp	r3, #4
 8006c52:	f200 8146 	bhi.w	8006ee2 <_malloc_r+0x30a>
 8006c56:	09ab      	lsrs	r3, r5, #6
 8006c58:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006c5c:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006c60:	00c3      	lsls	r3, r0, #3
 8006c62:	4fab      	ldr	r7, [pc, #684]	; (8006f10 <_malloc_r+0x338>)
 8006c64:	443b      	add	r3, r7
 8006c66:	f1a3 0108 	sub.w	r1, r3, #8
 8006c6a:	685c      	ldr	r4, [r3, #4]
 8006c6c:	42a1      	cmp	r1, r4
 8006c6e:	d106      	bne.n	8006c7e <_malloc_r+0xa6>
 8006c70:	e00c      	b.n	8006c8c <_malloc_r+0xb4>
 8006c72:	2a00      	cmp	r2, #0
 8006c74:	f280 811d 	bge.w	8006eb2 <_malloc_r+0x2da>
 8006c78:	68e4      	ldr	r4, [r4, #12]
 8006c7a:	42a1      	cmp	r1, r4
 8006c7c:	d006      	beq.n	8006c8c <_malloc_r+0xb4>
 8006c7e:	6863      	ldr	r3, [r4, #4]
 8006c80:	f023 0303 	bic.w	r3, r3, #3
 8006c84:	1b5a      	subs	r2, r3, r5
 8006c86:	2a0f      	cmp	r2, #15
 8006c88:	ddf3      	ble.n	8006c72 <_malloc_r+0x9a>
 8006c8a:	4660      	mov	r0, ip
 8006c8c:	693c      	ldr	r4, [r7, #16]
 8006c8e:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006f24 <_malloc_r+0x34c>
 8006c92:	4564      	cmp	r4, ip
 8006c94:	d071      	beq.n	8006d7a <_malloc_r+0x1a2>
 8006c96:	6863      	ldr	r3, [r4, #4]
 8006c98:	f023 0303 	bic.w	r3, r3, #3
 8006c9c:	1b5a      	subs	r2, r3, r5
 8006c9e:	2a0f      	cmp	r2, #15
 8006ca0:	f300 8144 	bgt.w	8006f2c <_malloc_r+0x354>
 8006ca4:	2a00      	cmp	r2, #0
 8006ca6:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8006caa:	f280 8126 	bge.w	8006efa <_malloc_r+0x322>
 8006cae:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8006cb2:	f080 8169 	bcs.w	8006f88 <_malloc_r+0x3b0>
 8006cb6:	08db      	lsrs	r3, r3, #3
 8006cb8:	1c59      	adds	r1, r3, #1
 8006cba:	687a      	ldr	r2, [r7, #4]
 8006cbc:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006cc0:	f8c4 8008 	str.w	r8, [r4, #8]
 8006cc4:	f04f 0e01 	mov.w	lr, #1
 8006cc8:	109b      	asrs	r3, r3, #2
 8006cca:	fa0e f303 	lsl.w	r3, lr, r3
 8006cce:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8006cd2:	4313      	orrs	r3, r2
 8006cd4:	f1ae 0208 	sub.w	r2, lr, #8
 8006cd8:	60e2      	str	r2, [r4, #12]
 8006cda:	607b      	str	r3, [r7, #4]
 8006cdc:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006ce0:	f8c8 400c 	str.w	r4, [r8, #12]
 8006ce4:	1082      	asrs	r2, r0, #2
 8006ce6:	2401      	movs	r4, #1
 8006ce8:	4094      	lsls	r4, r2
 8006cea:	429c      	cmp	r4, r3
 8006cec:	d84b      	bhi.n	8006d86 <_malloc_r+0x1ae>
 8006cee:	421c      	tst	r4, r3
 8006cf0:	d106      	bne.n	8006d00 <_malloc_r+0x128>
 8006cf2:	f020 0003 	bic.w	r0, r0, #3
 8006cf6:	0064      	lsls	r4, r4, #1
 8006cf8:	421c      	tst	r4, r3
 8006cfa:	f100 0004 	add.w	r0, r0, #4
 8006cfe:	d0fa      	beq.n	8006cf6 <_malloc_r+0x11e>
 8006d00:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006d04:	46ce      	mov	lr, r9
 8006d06:	4680      	mov	r8, r0
 8006d08:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006d0c:	459e      	cmp	lr, r3
 8006d0e:	d107      	bne.n	8006d20 <_malloc_r+0x148>
 8006d10:	e122      	b.n	8006f58 <_malloc_r+0x380>
 8006d12:	2a00      	cmp	r2, #0
 8006d14:	f280 8129 	bge.w	8006f6a <_malloc_r+0x392>
 8006d18:	68db      	ldr	r3, [r3, #12]
 8006d1a:	459e      	cmp	lr, r3
 8006d1c:	f000 811c 	beq.w	8006f58 <_malloc_r+0x380>
 8006d20:	6859      	ldr	r1, [r3, #4]
 8006d22:	f021 0103 	bic.w	r1, r1, #3
 8006d26:	1b4a      	subs	r2, r1, r5
 8006d28:	2a0f      	cmp	r2, #15
 8006d2a:	ddf2      	ble.n	8006d12 <_malloc_r+0x13a>
 8006d2c:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006d30:	195c      	adds	r4, r3, r5
 8006d32:	f045 0501 	orr.w	r5, r5, #1
 8006d36:	605d      	str	r5, [r3, #4]
 8006d38:	f042 0501 	orr.w	r5, r2, #1
 8006d3c:	f8c8 e00c 	str.w	lr, [r8, #12]
 8006d40:	4630      	mov	r0, r6
 8006d42:	f8ce 8008 	str.w	r8, [lr, #8]
 8006d46:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8006d4a:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8006d4e:	6065      	str	r5, [r4, #4]
 8006d50:	505a      	str	r2, [r3, r1]
 8006d52:	9301      	str	r3, [sp, #4]
 8006d54:	f000 fa3a 	bl	80071cc <__malloc_unlock>
 8006d58:	9b01      	ldr	r3, [sp, #4]
 8006d5a:	f103 0408 	add.w	r4, r3, #8
 8006d5e:	e763      	b.n	8006c28 <_malloc_r+0x50>
 8006d60:	2400      	movs	r4, #0
 8006d62:	230c      	movs	r3, #12
 8006d64:	4620      	mov	r0, r4
 8006d66:	6033      	str	r3, [r6, #0]
 8006d68:	b003      	add	sp, #12
 8006d6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d6e:	f44f 7300 	mov.w	r3, #512	; 0x200
 8006d72:	2040      	movs	r0, #64	; 0x40
 8006d74:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8006d78:	e773      	b.n	8006c62 <_malloc_r+0x8a>
 8006d7a:	687b      	ldr	r3, [r7, #4]
 8006d7c:	1082      	asrs	r2, r0, #2
 8006d7e:	2401      	movs	r4, #1
 8006d80:	4094      	lsls	r4, r2
 8006d82:	429c      	cmp	r4, r3
 8006d84:	d9b3      	bls.n	8006cee <_malloc_r+0x116>
 8006d86:	68bc      	ldr	r4, [r7, #8]
 8006d88:	6863      	ldr	r3, [r4, #4]
 8006d8a:	f023 0903 	bic.w	r9, r3, #3
 8006d8e:	45a9      	cmp	r9, r5
 8006d90:	d303      	bcc.n	8006d9a <_malloc_r+0x1c2>
 8006d92:	eba9 0305 	sub.w	r3, r9, r5
 8006d96:	2b0f      	cmp	r3, #15
 8006d98:	dc7b      	bgt.n	8006e92 <_malloc_r+0x2ba>
 8006d9a:	4b5e      	ldr	r3, [pc, #376]	; (8006f14 <_malloc_r+0x33c>)
 8006d9c:	f8df a188 	ldr.w	sl, [pc, #392]	; 8006f28 <_malloc_r+0x350>
 8006da0:	681a      	ldr	r2, [r3, #0]
 8006da2:	f8da 3000 	ldr.w	r3, [sl]
 8006da6:	3301      	adds	r3, #1
 8006da8:	eb05 0802 	add.w	r8, r5, r2
 8006dac:	f000 8148 	beq.w	8007040 <_malloc_r+0x468>
 8006db0:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8006db4:	f108 080f 	add.w	r8, r8, #15
 8006db8:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8006dbc:	f028 080f 	bic.w	r8, r8, #15
 8006dc0:	4641      	mov	r1, r8
 8006dc2:	4630      	mov	r0, r6
 8006dc4:	f000 fd12 	bl	80077ec <_sbrk_r>
 8006dc8:	f1b0 3fff 	cmp.w	r0, #4294967295
 8006dcc:	4683      	mov	fp, r0
 8006dce:	f000 8104 	beq.w	8006fda <_malloc_r+0x402>
 8006dd2:	eb04 0009 	add.w	r0, r4, r9
 8006dd6:	4558      	cmp	r0, fp
 8006dd8:	f200 80fd 	bhi.w	8006fd6 <_malloc_r+0x3fe>
 8006ddc:	4a4e      	ldr	r2, [pc, #312]	; (8006f18 <_malloc_r+0x340>)
 8006dde:	6813      	ldr	r3, [r2, #0]
 8006de0:	4443      	add	r3, r8
 8006de2:	6013      	str	r3, [r2, #0]
 8006de4:	f000 814d 	beq.w	8007082 <_malloc_r+0x4aa>
 8006de8:	f8da 1000 	ldr.w	r1, [sl]
 8006dec:	3101      	adds	r1, #1
 8006dee:	bf1b      	ittet	ne
 8006df0:	ebab 0000 	subne.w	r0, fp, r0
 8006df4:	181b      	addne	r3, r3, r0
 8006df6:	f8ca b000 	streq.w	fp, [sl]
 8006dfa:	6013      	strne	r3, [r2, #0]
 8006dfc:	f01b 0307 	ands.w	r3, fp, #7
 8006e00:	f000 8134 	beq.w	800706c <_malloc_r+0x494>
 8006e04:	f1c3 0108 	rsb	r1, r3, #8
 8006e08:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8006e0c:	448b      	add	fp, r1
 8006e0e:	3308      	adds	r3, #8
 8006e10:	44d8      	add	r8, fp
 8006e12:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8006e16:	eba3 0808 	sub.w	r8, r3, r8
 8006e1a:	4641      	mov	r1, r8
 8006e1c:	4630      	mov	r0, r6
 8006e1e:	9201      	str	r2, [sp, #4]
 8006e20:	f000 fce4 	bl	80077ec <_sbrk_r>
 8006e24:	1c43      	adds	r3, r0, #1
 8006e26:	9a01      	ldr	r2, [sp, #4]
 8006e28:	f000 8146 	beq.w	80070b8 <_malloc_r+0x4e0>
 8006e2c:	eba0 010b 	sub.w	r1, r0, fp
 8006e30:	4441      	add	r1, r8
 8006e32:	f041 0101 	orr.w	r1, r1, #1
 8006e36:	6813      	ldr	r3, [r2, #0]
 8006e38:	f8c7 b008 	str.w	fp, [r7, #8]
 8006e3c:	4443      	add	r3, r8
 8006e3e:	42bc      	cmp	r4, r7
 8006e40:	f8cb 1004 	str.w	r1, [fp, #4]
 8006e44:	6013      	str	r3, [r2, #0]
 8006e46:	d015      	beq.n	8006e74 <_malloc_r+0x29c>
 8006e48:	f1b9 0f0f 	cmp.w	r9, #15
 8006e4c:	f240 8130 	bls.w	80070b0 <_malloc_r+0x4d8>
 8006e50:	6860      	ldr	r0, [r4, #4]
 8006e52:	f1a9 010c 	sub.w	r1, r9, #12
 8006e56:	f021 0107 	bic.w	r1, r1, #7
 8006e5a:	f000 0001 	and.w	r0, r0, #1
 8006e5e:	eb04 0c01 	add.w	ip, r4, r1
 8006e62:	4308      	orrs	r0, r1
 8006e64:	f04f 0e05 	mov.w	lr, #5
 8006e68:	290f      	cmp	r1, #15
 8006e6a:	6060      	str	r0, [r4, #4]
 8006e6c:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8006e70:	f200 813a 	bhi.w	80070e8 <_malloc_r+0x510>
 8006e74:	4a29      	ldr	r2, [pc, #164]	; (8006f1c <_malloc_r+0x344>)
 8006e76:	482a      	ldr	r0, [pc, #168]	; (8006f20 <_malloc_r+0x348>)
 8006e78:	6811      	ldr	r1, [r2, #0]
 8006e7a:	68bc      	ldr	r4, [r7, #8]
 8006e7c:	428b      	cmp	r3, r1
 8006e7e:	6801      	ldr	r1, [r0, #0]
 8006e80:	bf88      	it	hi
 8006e82:	6013      	strhi	r3, [r2, #0]
 8006e84:	6862      	ldr	r2, [r4, #4]
 8006e86:	428b      	cmp	r3, r1
 8006e88:	f022 0203 	bic.w	r2, r2, #3
 8006e8c:	bf88      	it	hi
 8006e8e:	6003      	strhi	r3, [r0, #0]
 8006e90:	e0a7      	b.n	8006fe2 <_malloc_r+0x40a>
 8006e92:	1962      	adds	r2, r4, r5
 8006e94:	f043 0301 	orr.w	r3, r3, #1
 8006e98:	f045 0501 	orr.w	r5, r5, #1
 8006e9c:	6065      	str	r5, [r4, #4]
 8006e9e:	4630      	mov	r0, r6
 8006ea0:	60ba      	str	r2, [r7, #8]
 8006ea2:	6053      	str	r3, [r2, #4]
 8006ea4:	f000 f992 	bl	80071cc <__malloc_unlock>
 8006ea8:	3408      	adds	r4, #8
 8006eaa:	4620      	mov	r0, r4
 8006eac:	b003      	add	sp, #12
 8006eae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006eb2:	4423      	add	r3, r4
 8006eb4:	68e1      	ldr	r1, [r4, #12]
 8006eb6:	685a      	ldr	r2, [r3, #4]
 8006eb8:	68a5      	ldr	r5, [r4, #8]
 8006eba:	f042 0201 	orr.w	r2, r2, #1
 8006ebe:	60e9      	str	r1, [r5, #12]
 8006ec0:	4630      	mov	r0, r6
 8006ec2:	608d      	str	r5, [r1, #8]
 8006ec4:	605a      	str	r2, [r3, #4]
 8006ec6:	f000 f981 	bl	80071cc <__malloc_unlock>
 8006eca:	3408      	adds	r4, #8
 8006ecc:	4620      	mov	r0, r4
 8006ece:	b003      	add	sp, #12
 8006ed0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ed4:	68dc      	ldr	r4, [r3, #12]
 8006ed6:	42a3      	cmp	r3, r4
 8006ed8:	bf08      	it	eq
 8006eda:	3002      	addeq	r0, #2
 8006edc:	f43f aed6 	beq.w	8006c8c <_malloc_r+0xb4>
 8006ee0:	e692      	b.n	8006c08 <_malloc_r+0x30>
 8006ee2:	2b14      	cmp	r3, #20
 8006ee4:	d971      	bls.n	8006fca <_malloc_r+0x3f2>
 8006ee6:	2b54      	cmp	r3, #84	; 0x54
 8006ee8:	f200 80ad 	bhi.w	8007046 <_malloc_r+0x46e>
 8006eec:	0b2b      	lsrs	r3, r5, #12
 8006eee:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006ef2:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8006ef6:	00c3      	lsls	r3, r0, #3
 8006ef8:	e6b3      	b.n	8006c62 <_malloc_r+0x8a>
 8006efa:	4423      	add	r3, r4
 8006efc:	4630      	mov	r0, r6
 8006efe:	685a      	ldr	r2, [r3, #4]
 8006f00:	f042 0201 	orr.w	r2, r2, #1
 8006f04:	605a      	str	r2, [r3, #4]
 8006f06:	3408      	adds	r4, #8
 8006f08:	f000 f960 	bl	80071cc <__malloc_unlock>
 8006f0c:	e68c      	b.n	8006c28 <_malloc_r+0x50>
 8006f0e:	bf00      	nop
 8006f10:	20000444 	.word	0x20000444
 8006f14:	20000be4 	.word	0x20000be4
 8006f18:	20000bb4 	.word	0x20000bb4
 8006f1c:	20000bdc 	.word	0x20000bdc
 8006f20:	20000be0 	.word	0x20000be0
 8006f24:	2000044c 	.word	0x2000044c
 8006f28:	2000084c 	.word	0x2000084c
 8006f2c:	1961      	adds	r1, r4, r5
 8006f2e:	f045 0e01 	orr.w	lr, r5, #1
 8006f32:	f042 0501 	orr.w	r5, r2, #1
 8006f36:	f8c4 e004 	str.w	lr, [r4, #4]
 8006f3a:	4630      	mov	r0, r6
 8006f3c:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006f40:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006f44:	604d      	str	r5, [r1, #4]
 8006f46:	50e2      	str	r2, [r4, r3]
 8006f48:	f000 f940 	bl	80071cc <__malloc_unlock>
 8006f4c:	3408      	adds	r4, #8
 8006f4e:	e66b      	b.n	8006c28 <_malloc_r+0x50>
 8006f50:	08e8      	lsrs	r0, r5, #3
 8006f52:	f105 0308 	add.w	r3, r5, #8
 8006f56:	e64f      	b.n	8006bf8 <_malloc_r+0x20>
 8006f58:	f108 0801 	add.w	r8, r8, #1
 8006f5c:	f018 0f03 	tst.w	r8, #3
 8006f60:	f10e 0e08 	add.w	lr, lr, #8
 8006f64:	f47f aed0 	bne.w	8006d08 <_malloc_r+0x130>
 8006f68:	e052      	b.n	8007010 <_malloc_r+0x438>
 8006f6a:	4419      	add	r1, r3
 8006f6c:	461c      	mov	r4, r3
 8006f6e:	684a      	ldr	r2, [r1, #4]
 8006f70:	68db      	ldr	r3, [r3, #12]
 8006f72:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8006f76:	f042 0201 	orr.w	r2, r2, #1
 8006f7a:	604a      	str	r2, [r1, #4]
 8006f7c:	4630      	mov	r0, r6
 8006f7e:	60eb      	str	r3, [r5, #12]
 8006f80:	609d      	str	r5, [r3, #8]
 8006f82:	f000 f923 	bl	80071cc <__malloc_unlock>
 8006f86:	e64f      	b.n	8006c28 <_malloc_r+0x50>
 8006f88:	0a5a      	lsrs	r2, r3, #9
 8006f8a:	2a04      	cmp	r2, #4
 8006f8c:	d935      	bls.n	8006ffa <_malloc_r+0x422>
 8006f8e:	2a14      	cmp	r2, #20
 8006f90:	d86f      	bhi.n	8007072 <_malloc_r+0x49a>
 8006f92:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8006f96:	00c9      	lsls	r1, r1, #3
 8006f98:	325b      	adds	r2, #91	; 0x5b
 8006f9a:	eb07 0e01 	add.w	lr, r7, r1
 8006f9e:	5879      	ldr	r1, [r7, r1]
 8006fa0:	f1ae 0e08 	sub.w	lr, lr, #8
 8006fa4:	458e      	cmp	lr, r1
 8006fa6:	d058      	beq.n	800705a <_malloc_r+0x482>
 8006fa8:	684a      	ldr	r2, [r1, #4]
 8006faa:	f022 0203 	bic.w	r2, r2, #3
 8006fae:	429a      	cmp	r2, r3
 8006fb0:	d902      	bls.n	8006fb8 <_malloc_r+0x3e0>
 8006fb2:	6889      	ldr	r1, [r1, #8]
 8006fb4:	458e      	cmp	lr, r1
 8006fb6:	d1f7      	bne.n	8006fa8 <_malloc_r+0x3d0>
 8006fb8:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006fbc:	687b      	ldr	r3, [r7, #4]
 8006fbe:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006fc2:	f8ce 4008 	str.w	r4, [lr, #8]
 8006fc6:	60cc      	str	r4, [r1, #12]
 8006fc8:	e68c      	b.n	8006ce4 <_malloc_r+0x10c>
 8006fca:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006fce:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006fd2:	00c3      	lsls	r3, r0, #3
 8006fd4:	e645      	b.n	8006c62 <_malloc_r+0x8a>
 8006fd6:	42bc      	cmp	r4, r7
 8006fd8:	d072      	beq.n	80070c0 <_malloc_r+0x4e8>
 8006fda:	68bc      	ldr	r4, [r7, #8]
 8006fdc:	6862      	ldr	r2, [r4, #4]
 8006fde:	f022 0203 	bic.w	r2, r2, #3
 8006fe2:	4295      	cmp	r5, r2
 8006fe4:	eba2 0305 	sub.w	r3, r2, r5
 8006fe8:	d802      	bhi.n	8006ff0 <_malloc_r+0x418>
 8006fea:	2b0f      	cmp	r3, #15
 8006fec:	f73f af51 	bgt.w	8006e92 <_malloc_r+0x2ba>
 8006ff0:	4630      	mov	r0, r6
 8006ff2:	f000 f8eb 	bl	80071cc <__malloc_unlock>
 8006ff6:	2400      	movs	r4, #0
 8006ff8:	e616      	b.n	8006c28 <_malloc_r+0x50>
 8006ffa:	099a      	lsrs	r2, r3, #6
 8006ffc:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8007000:	00c9      	lsls	r1, r1, #3
 8007002:	3238      	adds	r2, #56	; 0x38
 8007004:	e7c9      	b.n	8006f9a <_malloc_r+0x3c2>
 8007006:	f8d9 9000 	ldr.w	r9, [r9]
 800700a:	4599      	cmp	r9, r3
 800700c:	f040 8083 	bne.w	8007116 <_malloc_r+0x53e>
 8007010:	f010 0f03 	tst.w	r0, #3
 8007014:	f1a9 0308 	sub.w	r3, r9, #8
 8007018:	f100 30ff 	add.w	r0, r0, #4294967295
 800701c:	d1f3      	bne.n	8007006 <_malloc_r+0x42e>
 800701e:	687b      	ldr	r3, [r7, #4]
 8007020:	ea23 0304 	bic.w	r3, r3, r4
 8007024:	607b      	str	r3, [r7, #4]
 8007026:	0064      	lsls	r4, r4, #1
 8007028:	429c      	cmp	r4, r3
 800702a:	f63f aeac 	bhi.w	8006d86 <_malloc_r+0x1ae>
 800702e:	b91c      	cbnz	r4, 8007038 <_malloc_r+0x460>
 8007030:	e6a9      	b.n	8006d86 <_malloc_r+0x1ae>
 8007032:	0064      	lsls	r4, r4, #1
 8007034:	f108 0804 	add.w	r8, r8, #4
 8007038:	421c      	tst	r4, r3
 800703a:	d0fa      	beq.n	8007032 <_malloc_r+0x45a>
 800703c:	4640      	mov	r0, r8
 800703e:	e65f      	b.n	8006d00 <_malloc_r+0x128>
 8007040:	f108 0810 	add.w	r8, r8, #16
 8007044:	e6bc      	b.n	8006dc0 <_malloc_r+0x1e8>
 8007046:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800704a:	d826      	bhi.n	800709a <_malloc_r+0x4c2>
 800704c:	0beb      	lsrs	r3, r5, #15
 800704e:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8007052:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8007056:	00c3      	lsls	r3, r0, #3
 8007058:	e603      	b.n	8006c62 <_malloc_r+0x8a>
 800705a:	687b      	ldr	r3, [r7, #4]
 800705c:	1092      	asrs	r2, r2, #2
 800705e:	f04f 0801 	mov.w	r8, #1
 8007062:	fa08 f202 	lsl.w	r2, r8, r2
 8007066:	4313      	orrs	r3, r2
 8007068:	607b      	str	r3, [r7, #4]
 800706a:	e7a8      	b.n	8006fbe <_malloc_r+0x3e6>
 800706c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8007070:	e6ce      	b.n	8006e10 <_malloc_r+0x238>
 8007072:	2a54      	cmp	r2, #84	; 0x54
 8007074:	d829      	bhi.n	80070ca <_malloc_r+0x4f2>
 8007076:	0b1a      	lsrs	r2, r3, #12
 8007078:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 800707c:	00c9      	lsls	r1, r1, #3
 800707e:	326e      	adds	r2, #110	; 0x6e
 8007080:	e78b      	b.n	8006f9a <_malloc_r+0x3c2>
 8007082:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8007086:	2900      	cmp	r1, #0
 8007088:	f47f aeae 	bne.w	8006de8 <_malloc_r+0x210>
 800708c:	eb09 0208 	add.w	r2, r9, r8
 8007090:	68b9      	ldr	r1, [r7, #8]
 8007092:	f042 0201 	orr.w	r2, r2, #1
 8007096:	604a      	str	r2, [r1, #4]
 8007098:	e6ec      	b.n	8006e74 <_malloc_r+0x29c>
 800709a:	f240 5254 	movw	r2, #1364	; 0x554
 800709e:	4293      	cmp	r3, r2
 80070a0:	d81c      	bhi.n	80070dc <_malloc_r+0x504>
 80070a2:	0cab      	lsrs	r3, r5, #18
 80070a4:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80070a8:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80070ac:	00c3      	lsls	r3, r0, #3
 80070ae:	e5d8      	b.n	8006c62 <_malloc_r+0x8a>
 80070b0:	2301      	movs	r3, #1
 80070b2:	f8cb 3004 	str.w	r3, [fp, #4]
 80070b6:	e79b      	b.n	8006ff0 <_malloc_r+0x418>
 80070b8:	2101      	movs	r1, #1
 80070ba:	f04f 0800 	mov.w	r8, #0
 80070be:	e6ba      	b.n	8006e36 <_malloc_r+0x25e>
 80070c0:	4a16      	ldr	r2, [pc, #88]	; (800711c <_malloc_r+0x544>)
 80070c2:	6813      	ldr	r3, [r2, #0]
 80070c4:	4443      	add	r3, r8
 80070c6:	6013      	str	r3, [r2, #0]
 80070c8:	e68e      	b.n	8006de8 <_malloc_r+0x210>
 80070ca:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80070ce:	d814      	bhi.n	80070fa <_malloc_r+0x522>
 80070d0:	0bda      	lsrs	r2, r3, #15
 80070d2:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80070d6:	00c9      	lsls	r1, r1, #3
 80070d8:	3277      	adds	r2, #119	; 0x77
 80070da:	e75e      	b.n	8006f9a <_malloc_r+0x3c2>
 80070dc:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80070e0:	207f      	movs	r0, #127	; 0x7f
 80070e2:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80070e6:	e5bc      	b.n	8006c62 <_malloc_r+0x8a>
 80070e8:	f104 0108 	add.w	r1, r4, #8
 80070ec:	4630      	mov	r0, r6
 80070ee:	9201      	str	r2, [sp, #4]
 80070f0:	f7ff fbc6 	bl	8006880 <_free_r>
 80070f4:	9a01      	ldr	r2, [sp, #4]
 80070f6:	6813      	ldr	r3, [r2, #0]
 80070f8:	e6bc      	b.n	8006e74 <_malloc_r+0x29c>
 80070fa:	f240 5154 	movw	r1, #1364	; 0x554
 80070fe:	428a      	cmp	r2, r1
 8007100:	d805      	bhi.n	800710e <_malloc_r+0x536>
 8007102:	0c9a      	lsrs	r2, r3, #18
 8007104:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8007108:	00c9      	lsls	r1, r1, #3
 800710a:	327c      	adds	r2, #124	; 0x7c
 800710c:	e745      	b.n	8006f9a <_malloc_r+0x3c2>
 800710e:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8007112:	227e      	movs	r2, #126	; 0x7e
 8007114:	e741      	b.n	8006f9a <_malloc_r+0x3c2>
 8007116:	687b      	ldr	r3, [r7, #4]
 8007118:	e785      	b.n	8007026 <_malloc_r+0x44e>
 800711a:	bf00      	nop
 800711c:	20000bb4 	.word	0x20000bb4

08007120 <memchr>:
 8007120:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8007124:	2a10      	cmp	r2, #16
 8007126:	db2b      	blt.n	8007180 <memchr+0x60>
 8007128:	f010 0f07 	tst.w	r0, #7
 800712c:	d008      	beq.n	8007140 <memchr+0x20>
 800712e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8007132:	3a01      	subs	r2, #1
 8007134:	428b      	cmp	r3, r1
 8007136:	d02d      	beq.n	8007194 <memchr+0x74>
 8007138:	f010 0f07 	tst.w	r0, #7
 800713c:	b342      	cbz	r2, 8007190 <memchr+0x70>
 800713e:	d1f6      	bne.n	800712e <memchr+0xe>
 8007140:	b4f0      	push	{r4, r5, r6, r7}
 8007142:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8007146:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800714a:	f022 0407 	bic.w	r4, r2, #7
 800714e:	f07f 0700 	mvns.w	r7, #0
 8007152:	2300      	movs	r3, #0
 8007154:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8007158:	3c08      	subs	r4, #8
 800715a:	ea85 0501 	eor.w	r5, r5, r1
 800715e:	ea86 0601 	eor.w	r6, r6, r1
 8007162:	fa85 f547 	uadd8	r5, r5, r7
 8007166:	faa3 f587 	sel	r5, r3, r7
 800716a:	fa86 f647 	uadd8	r6, r6, r7
 800716e:	faa5 f687 	sel	r6, r5, r7
 8007172:	b98e      	cbnz	r6, 8007198 <memchr+0x78>
 8007174:	d1ee      	bne.n	8007154 <memchr+0x34>
 8007176:	bcf0      	pop	{r4, r5, r6, r7}
 8007178:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800717c:	f002 0207 	and.w	r2, r2, #7
 8007180:	b132      	cbz	r2, 8007190 <memchr+0x70>
 8007182:	f810 3b01 	ldrb.w	r3, [r0], #1
 8007186:	3a01      	subs	r2, #1
 8007188:	ea83 0301 	eor.w	r3, r3, r1
 800718c:	b113      	cbz	r3, 8007194 <memchr+0x74>
 800718e:	d1f8      	bne.n	8007182 <memchr+0x62>
 8007190:	2000      	movs	r0, #0
 8007192:	4770      	bx	lr
 8007194:	3801      	subs	r0, #1
 8007196:	4770      	bx	lr
 8007198:	2d00      	cmp	r5, #0
 800719a:	bf06      	itte	eq
 800719c:	4635      	moveq	r5, r6
 800719e:	3803      	subeq	r0, #3
 80071a0:	3807      	subne	r0, #7
 80071a2:	f015 0f01 	tst.w	r5, #1
 80071a6:	d107      	bne.n	80071b8 <memchr+0x98>
 80071a8:	3001      	adds	r0, #1
 80071aa:	f415 7f80 	tst.w	r5, #256	; 0x100
 80071ae:	bf02      	ittt	eq
 80071b0:	3001      	addeq	r0, #1
 80071b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80071b6:	3001      	addeq	r0, #1
 80071b8:	bcf0      	pop	{r4, r5, r6, r7}
 80071ba:	3801      	subs	r0, #1
 80071bc:	4770      	bx	lr
 80071be:	bf00      	nop

080071c0 <__malloc_lock>:
 80071c0:	4801      	ldr	r0, [pc, #4]	; (80071c8 <__malloc_lock+0x8>)
 80071c2:	f7ff bc8d 	b.w	8006ae0 <__retarget_lock_acquire_recursive>
 80071c6:	bf00      	nop
 80071c8:	20000c40 	.word	0x20000c40

080071cc <__malloc_unlock>:
 80071cc:	4801      	ldr	r0, [pc, #4]	; (80071d4 <__malloc_unlock+0x8>)
 80071ce:	f7ff bc89 	b.w	8006ae4 <__retarget_lock_release_recursive>
 80071d2:	bf00      	nop
 80071d4:	20000c40 	.word	0x20000c40

080071d8 <_Balloc>:
 80071d8:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80071da:	b570      	push	{r4, r5, r6, lr}
 80071dc:	4605      	mov	r5, r0
 80071de:	460c      	mov	r4, r1
 80071e0:	b14b      	cbz	r3, 80071f6 <_Balloc+0x1e>
 80071e2:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80071e6:	b180      	cbz	r0, 800720a <_Balloc+0x32>
 80071e8:	6802      	ldr	r2, [r0, #0]
 80071ea:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80071ee:	2300      	movs	r3, #0
 80071f0:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80071f4:	bd70      	pop	{r4, r5, r6, pc}
 80071f6:	2221      	movs	r2, #33	; 0x21
 80071f8:	2104      	movs	r1, #4
 80071fa:	f000 fc8b 	bl	8007b14 <_calloc_r>
 80071fe:	4603      	mov	r3, r0
 8007200:	64e8      	str	r0, [r5, #76]	; 0x4c
 8007202:	2800      	cmp	r0, #0
 8007204:	d1ed      	bne.n	80071e2 <_Balloc+0xa>
 8007206:	2000      	movs	r0, #0
 8007208:	bd70      	pop	{r4, r5, r6, pc}
 800720a:	2101      	movs	r1, #1
 800720c:	fa01 f604 	lsl.w	r6, r1, r4
 8007210:	1d72      	adds	r2, r6, #5
 8007212:	4628      	mov	r0, r5
 8007214:	0092      	lsls	r2, r2, #2
 8007216:	f000 fc7d 	bl	8007b14 <_calloc_r>
 800721a:	2800      	cmp	r0, #0
 800721c:	d0f3      	beq.n	8007206 <_Balloc+0x2e>
 800721e:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8007222:	e7e4      	b.n	80071ee <_Balloc+0x16>

08007224 <_Bfree>:
 8007224:	b131      	cbz	r1, 8007234 <_Bfree+0x10>
 8007226:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007228:	684a      	ldr	r2, [r1, #4]
 800722a:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800722e:	6008      	str	r0, [r1, #0]
 8007230:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007234:	4770      	bx	lr
 8007236:	bf00      	nop

08007238 <__multadd>:
 8007238:	b5f0      	push	{r4, r5, r6, r7, lr}
 800723a:	690c      	ldr	r4, [r1, #16]
 800723c:	b083      	sub	sp, #12
 800723e:	460d      	mov	r5, r1
 8007240:	4606      	mov	r6, r0
 8007242:	f101 0c14 	add.w	ip, r1, #20
 8007246:	2700      	movs	r7, #0
 8007248:	f8dc 0000 	ldr.w	r0, [ip]
 800724c:	b281      	uxth	r1, r0
 800724e:	fb02 3301 	mla	r3, r2, r1, r3
 8007252:	0c01      	lsrs	r1, r0, #16
 8007254:	0c18      	lsrs	r0, r3, #16
 8007256:	fb02 0101 	mla	r1, r2, r1, r0
 800725a:	b29b      	uxth	r3, r3
 800725c:	3701      	adds	r7, #1
 800725e:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8007262:	42bc      	cmp	r4, r7
 8007264:	f84c 3b04 	str.w	r3, [ip], #4
 8007268:	ea4f 4311 	mov.w	r3, r1, lsr #16
 800726c:	dcec      	bgt.n	8007248 <__multadd+0x10>
 800726e:	b13b      	cbz	r3, 8007280 <__multadd+0x48>
 8007270:	68aa      	ldr	r2, [r5, #8]
 8007272:	42a2      	cmp	r2, r4
 8007274:	dd07      	ble.n	8007286 <__multadd+0x4e>
 8007276:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800727a:	3401      	adds	r4, #1
 800727c:	6153      	str	r3, [r2, #20]
 800727e:	612c      	str	r4, [r5, #16]
 8007280:	4628      	mov	r0, r5
 8007282:	b003      	add	sp, #12
 8007284:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007286:	6869      	ldr	r1, [r5, #4]
 8007288:	9301      	str	r3, [sp, #4]
 800728a:	3101      	adds	r1, #1
 800728c:	4630      	mov	r0, r6
 800728e:	f7ff ffa3 	bl	80071d8 <_Balloc>
 8007292:	692a      	ldr	r2, [r5, #16]
 8007294:	3202      	adds	r2, #2
 8007296:	f105 010c 	add.w	r1, r5, #12
 800729a:	4607      	mov	r7, r0
 800729c:	0092      	lsls	r2, r2, #2
 800729e:	300c      	adds	r0, #12
 80072a0:	f7fc fd68 	bl	8003d74 <memcpy>
 80072a4:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80072a6:	6869      	ldr	r1, [r5, #4]
 80072a8:	9b01      	ldr	r3, [sp, #4]
 80072aa:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80072ae:	6028      	str	r0, [r5, #0]
 80072b0:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80072b4:	463d      	mov	r5, r7
 80072b6:	e7de      	b.n	8007276 <__multadd+0x3e>

080072b8 <__hi0bits>:
 80072b8:	0c02      	lsrs	r2, r0, #16
 80072ba:	0412      	lsls	r2, r2, #16
 80072bc:	4603      	mov	r3, r0
 80072be:	b9c2      	cbnz	r2, 80072f2 <__hi0bits+0x3a>
 80072c0:	0403      	lsls	r3, r0, #16
 80072c2:	2010      	movs	r0, #16
 80072c4:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80072c8:	bf04      	itt	eq
 80072ca:	021b      	lsleq	r3, r3, #8
 80072cc:	3008      	addeq	r0, #8
 80072ce:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80072d2:	bf04      	itt	eq
 80072d4:	011b      	lsleq	r3, r3, #4
 80072d6:	3004      	addeq	r0, #4
 80072d8:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80072dc:	bf04      	itt	eq
 80072de:	009b      	lsleq	r3, r3, #2
 80072e0:	3002      	addeq	r0, #2
 80072e2:	2b00      	cmp	r3, #0
 80072e4:	db04      	blt.n	80072f0 <__hi0bits+0x38>
 80072e6:	005b      	lsls	r3, r3, #1
 80072e8:	d501      	bpl.n	80072ee <__hi0bits+0x36>
 80072ea:	3001      	adds	r0, #1
 80072ec:	4770      	bx	lr
 80072ee:	2020      	movs	r0, #32
 80072f0:	4770      	bx	lr
 80072f2:	2000      	movs	r0, #0
 80072f4:	e7e6      	b.n	80072c4 <__hi0bits+0xc>
 80072f6:	bf00      	nop

080072f8 <__lo0bits>:
 80072f8:	6803      	ldr	r3, [r0, #0]
 80072fa:	f013 0207 	ands.w	r2, r3, #7
 80072fe:	4601      	mov	r1, r0
 8007300:	d007      	beq.n	8007312 <__lo0bits+0x1a>
 8007302:	07da      	lsls	r2, r3, #31
 8007304:	d41f      	bmi.n	8007346 <__lo0bits+0x4e>
 8007306:	0798      	lsls	r0, r3, #30
 8007308:	d51f      	bpl.n	800734a <__lo0bits+0x52>
 800730a:	085b      	lsrs	r3, r3, #1
 800730c:	600b      	str	r3, [r1, #0]
 800730e:	2001      	movs	r0, #1
 8007310:	4770      	bx	lr
 8007312:	b298      	uxth	r0, r3
 8007314:	b1a0      	cbz	r0, 8007340 <__lo0bits+0x48>
 8007316:	4610      	mov	r0, r2
 8007318:	f013 0fff 	tst.w	r3, #255	; 0xff
 800731c:	bf04      	itt	eq
 800731e:	0a1b      	lsreq	r3, r3, #8
 8007320:	3008      	addeq	r0, #8
 8007322:	071a      	lsls	r2, r3, #28
 8007324:	bf04      	itt	eq
 8007326:	091b      	lsreq	r3, r3, #4
 8007328:	3004      	addeq	r0, #4
 800732a:	079a      	lsls	r2, r3, #30
 800732c:	bf04      	itt	eq
 800732e:	089b      	lsreq	r3, r3, #2
 8007330:	3002      	addeq	r0, #2
 8007332:	07da      	lsls	r2, r3, #31
 8007334:	d402      	bmi.n	800733c <__lo0bits+0x44>
 8007336:	085b      	lsrs	r3, r3, #1
 8007338:	d00b      	beq.n	8007352 <__lo0bits+0x5a>
 800733a:	3001      	adds	r0, #1
 800733c:	600b      	str	r3, [r1, #0]
 800733e:	4770      	bx	lr
 8007340:	0c1b      	lsrs	r3, r3, #16
 8007342:	2010      	movs	r0, #16
 8007344:	e7e8      	b.n	8007318 <__lo0bits+0x20>
 8007346:	2000      	movs	r0, #0
 8007348:	4770      	bx	lr
 800734a:	089b      	lsrs	r3, r3, #2
 800734c:	600b      	str	r3, [r1, #0]
 800734e:	2002      	movs	r0, #2
 8007350:	4770      	bx	lr
 8007352:	2020      	movs	r0, #32
 8007354:	4770      	bx	lr
 8007356:	bf00      	nop

08007358 <__i2b>:
 8007358:	b510      	push	{r4, lr}
 800735a:	460c      	mov	r4, r1
 800735c:	2101      	movs	r1, #1
 800735e:	f7ff ff3b 	bl	80071d8 <_Balloc>
 8007362:	2201      	movs	r2, #1
 8007364:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8007368:	bd10      	pop	{r4, pc}
 800736a:	bf00      	nop

0800736c <__multiply>:
 800736c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007370:	690e      	ldr	r6, [r1, #16]
 8007372:	6914      	ldr	r4, [r2, #16]
 8007374:	42a6      	cmp	r6, r4
 8007376:	b083      	sub	sp, #12
 8007378:	460f      	mov	r7, r1
 800737a:	4615      	mov	r5, r2
 800737c:	da04      	bge.n	8007388 <__multiply+0x1c>
 800737e:	4632      	mov	r2, r6
 8007380:	462f      	mov	r7, r5
 8007382:	4626      	mov	r6, r4
 8007384:	460d      	mov	r5, r1
 8007386:	4614      	mov	r4, r2
 8007388:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 800738c:	eb06 0804 	add.w	r8, r6, r4
 8007390:	4543      	cmp	r3, r8
 8007392:	bfb8      	it	lt
 8007394:	3101      	addlt	r1, #1
 8007396:	f7ff ff1f 	bl	80071d8 <_Balloc>
 800739a:	f100 0914 	add.w	r9, r0, #20
 800739e:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80073a2:	45f1      	cmp	r9, lr
 80073a4:	9000      	str	r0, [sp, #0]
 80073a6:	d205      	bcs.n	80073b4 <__multiply+0x48>
 80073a8:	464b      	mov	r3, r9
 80073aa:	2200      	movs	r2, #0
 80073ac:	f843 2b04 	str.w	r2, [r3], #4
 80073b0:	459e      	cmp	lr, r3
 80073b2:	d8fb      	bhi.n	80073ac <__multiply+0x40>
 80073b4:	f105 0a14 	add.w	sl, r5, #20
 80073b8:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80073bc:	f107 0314 	add.w	r3, r7, #20
 80073c0:	45a2      	cmp	sl, r4
 80073c2:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80073c6:	d261      	bcs.n	800748c <__multiply+0x120>
 80073c8:	1b64      	subs	r4, r4, r5
 80073ca:	3c15      	subs	r4, #21
 80073cc:	f024 0403 	bic.w	r4, r4, #3
 80073d0:	f8cd e004 	str.w	lr, [sp, #4]
 80073d4:	44a2      	add	sl, r4
 80073d6:	f105 0210 	add.w	r2, r5, #16
 80073da:	469e      	mov	lr, r3
 80073dc:	e005      	b.n	80073ea <__multiply+0x7e>
 80073de:	0c2d      	lsrs	r5, r5, #16
 80073e0:	d12b      	bne.n	800743a <__multiply+0xce>
 80073e2:	4592      	cmp	sl, r2
 80073e4:	f109 0904 	add.w	r9, r9, #4
 80073e8:	d04e      	beq.n	8007488 <__multiply+0x11c>
 80073ea:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80073ee:	fa1f fb85 	uxth.w	fp, r5
 80073f2:	f1bb 0f00 	cmp.w	fp, #0
 80073f6:	d0f2      	beq.n	80073de <__multiply+0x72>
 80073f8:	4677      	mov	r7, lr
 80073fa:	464e      	mov	r6, r9
 80073fc:	2000      	movs	r0, #0
 80073fe:	e000      	b.n	8007402 <__multiply+0x96>
 8007400:	4626      	mov	r6, r4
 8007402:	f857 1b04 	ldr.w	r1, [r7], #4
 8007406:	6834      	ldr	r4, [r6, #0]
 8007408:	b28b      	uxth	r3, r1
 800740a:	b2a5      	uxth	r5, r4
 800740c:	0c09      	lsrs	r1, r1, #16
 800740e:	0c24      	lsrs	r4, r4, #16
 8007410:	fb0b 5303 	mla	r3, fp, r3, r5
 8007414:	4403      	add	r3, r0
 8007416:	fb0b 4001 	mla	r0, fp, r1, r4
 800741a:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800741e:	4634      	mov	r4, r6
 8007420:	b29b      	uxth	r3, r3
 8007422:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8007426:	45bc      	cmp	ip, r7
 8007428:	ea4f 4010 	mov.w	r0, r0, lsr #16
 800742c:	f844 3b04 	str.w	r3, [r4], #4
 8007430:	d8e6      	bhi.n	8007400 <__multiply+0x94>
 8007432:	6070      	str	r0, [r6, #4]
 8007434:	6815      	ldr	r5, [r2, #0]
 8007436:	0c2d      	lsrs	r5, r5, #16
 8007438:	d0d3      	beq.n	80073e2 <__multiply+0x76>
 800743a:	f8d9 3000 	ldr.w	r3, [r9]
 800743e:	4676      	mov	r6, lr
 8007440:	4618      	mov	r0, r3
 8007442:	46cb      	mov	fp, r9
 8007444:	2100      	movs	r1, #0
 8007446:	e000      	b.n	800744a <__multiply+0xde>
 8007448:	46a3      	mov	fp, r4
 800744a:	8834      	ldrh	r4, [r6, #0]
 800744c:	0c00      	lsrs	r0, r0, #16
 800744e:	fb05 0004 	mla	r0, r5, r4, r0
 8007452:	4401      	add	r1, r0
 8007454:	b29b      	uxth	r3, r3
 8007456:	465c      	mov	r4, fp
 8007458:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800745c:	f844 3b04 	str.w	r3, [r4], #4
 8007460:	f856 3b04 	ldr.w	r3, [r6], #4
 8007464:	f8db 0004 	ldr.w	r0, [fp, #4]
 8007468:	0c1b      	lsrs	r3, r3, #16
 800746a:	b287      	uxth	r7, r0
 800746c:	fb05 7303 	mla	r3, r5, r3, r7
 8007470:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8007474:	45b4      	cmp	ip, r6
 8007476:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800747a:	d8e5      	bhi.n	8007448 <__multiply+0xdc>
 800747c:	4592      	cmp	sl, r2
 800747e:	f8cb 3004 	str.w	r3, [fp, #4]
 8007482:	f109 0904 	add.w	r9, r9, #4
 8007486:	d1b0      	bne.n	80073ea <__multiply+0x7e>
 8007488:	f8dd e004 	ldr.w	lr, [sp, #4]
 800748c:	f1b8 0f00 	cmp.w	r8, #0
 8007490:	dd0b      	ble.n	80074aa <__multiply+0x13e>
 8007492:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8007496:	f1ae 0e04 	sub.w	lr, lr, #4
 800749a:	b11b      	cbz	r3, 80074a4 <__multiply+0x138>
 800749c:	e005      	b.n	80074aa <__multiply+0x13e>
 800749e:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80074a2:	b913      	cbnz	r3, 80074aa <__multiply+0x13e>
 80074a4:	f1b8 0801 	subs.w	r8, r8, #1
 80074a8:	d1f9      	bne.n	800749e <__multiply+0x132>
 80074aa:	9800      	ldr	r0, [sp, #0]
 80074ac:	f8c0 8010 	str.w	r8, [r0, #16]
 80074b0:	b003      	add	sp, #12
 80074b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80074b6:	bf00      	nop

080074b8 <__pow5mult>:
 80074b8:	f012 0303 	ands.w	r3, r2, #3
 80074bc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80074c0:	4614      	mov	r4, r2
 80074c2:	4607      	mov	r7, r0
 80074c4:	d12e      	bne.n	8007524 <__pow5mult+0x6c>
 80074c6:	460d      	mov	r5, r1
 80074c8:	10a4      	asrs	r4, r4, #2
 80074ca:	d01c      	beq.n	8007506 <__pow5mult+0x4e>
 80074cc:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80074ce:	b396      	cbz	r6, 8007536 <__pow5mult+0x7e>
 80074d0:	07e3      	lsls	r3, r4, #31
 80074d2:	f04f 0800 	mov.w	r8, #0
 80074d6:	d406      	bmi.n	80074e6 <__pow5mult+0x2e>
 80074d8:	1064      	asrs	r4, r4, #1
 80074da:	d014      	beq.n	8007506 <__pow5mult+0x4e>
 80074dc:	6830      	ldr	r0, [r6, #0]
 80074de:	b1a8      	cbz	r0, 800750c <__pow5mult+0x54>
 80074e0:	4606      	mov	r6, r0
 80074e2:	07e3      	lsls	r3, r4, #31
 80074e4:	d5f8      	bpl.n	80074d8 <__pow5mult+0x20>
 80074e6:	4632      	mov	r2, r6
 80074e8:	4629      	mov	r1, r5
 80074ea:	4638      	mov	r0, r7
 80074ec:	f7ff ff3e 	bl	800736c <__multiply>
 80074f0:	b1b5      	cbz	r5, 8007520 <__pow5mult+0x68>
 80074f2:	686a      	ldr	r2, [r5, #4]
 80074f4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80074f6:	1064      	asrs	r4, r4, #1
 80074f8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80074fc:	6029      	str	r1, [r5, #0]
 80074fe:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8007502:	4605      	mov	r5, r0
 8007504:	d1ea      	bne.n	80074dc <__pow5mult+0x24>
 8007506:	4628      	mov	r0, r5
 8007508:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800750c:	4632      	mov	r2, r6
 800750e:	4631      	mov	r1, r6
 8007510:	4638      	mov	r0, r7
 8007512:	f7ff ff2b 	bl	800736c <__multiply>
 8007516:	6030      	str	r0, [r6, #0]
 8007518:	f8c0 8000 	str.w	r8, [r0]
 800751c:	4606      	mov	r6, r0
 800751e:	e7e0      	b.n	80074e2 <__pow5mult+0x2a>
 8007520:	4605      	mov	r5, r0
 8007522:	e7d9      	b.n	80074d8 <__pow5mult+0x20>
 8007524:	3b01      	subs	r3, #1
 8007526:	4a0b      	ldr	r2, [pc, #44]	; (8007554 <__pow5mult+0x9c>)
 8007528:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800752c:	2300      	movs	r3, #0
 800752e:	f7ff fe83 	bl	8007238 <__multadd>
 8007532:	4605      	mov	r5, r0
 8007534:	e7c8      	b.n	80074c8 <__pow5mult+0x10>
 8007536:	2101      	movs	r1, #1
 8007538:	4638      	mov	r0, r7
 800753a:	f7ff fe4d 	bl	80071d8 <_Balloc>
 800753e:	f240 2371 	movw	r3, #625	; 0x271
 8007542:	6143      	str	r3, [r0, #20]
 8007544:	2201      	movs	r2, #1
 8007546:	2300      	movs	r3, #0
 8007548:	6102      	str	r2, [r0, #16]
 800754a:	4606      	mov	r6, r0
 800754c:	64b8      	str	r0, [r7, #72]	; 0x48
 800754e:	6003      	str	r3, [r0, #0]
 8007550:	e7be      	b.n	80074d0 <__pow5mult+0x18>
 8007552:	bf00      	nop
 8007554:	08009c78 	.word	0x08009c78

08007558 <__lshift>:
 8007558:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800755c:	4691      	mov	r9, r2
 800755e:	690a      	ldr	r2, [r1, #16]
 8007560:	460e      	mov	r6, r1
 8007562:	ea4f 1469 	mov.w	r4, r9, asr #5
 8007566:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800756a:	eb04 0802 	add.w	r8, r4, r2
 800756e:	f108 0501 	add.w	r5, r8, #1
 8007572:	429d      	cmp	r5, r3
 8007574:	4607      	mov	r7, r0
 8007576:	dd04      	ble.n	8007582 <__lshift+0x2a>
 8007578:	005b      	lsls	r3, r3, #1
 800757a:	429d      	cmp	r5, r3
 800757c:	f101 0101 	add.w	r1, r1, #1
 8007580:	dcfa      	bgt.n	8007578 <__lshift+0x20>
 8007582:	4638      	mov	r0, r7
 8007584:	f7ff fe28 	bl	80071d8 <_Balloc>
 8007588:	2c00      	cmp	r4, #0
 800758a:	f100 0314 	add.w	r3, r0, #20
 800758e:	dd37      	ble.n	8007600 <__lshift+0xa8>
 8007590:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007594:	2200      	movs	r2, #0
 8007596:	f843 2b04 	str.w	r2, [r3], #4
 800759a:	428b      	cmp	r3, r1
 800759c:	d1fb      	bne.n	8007596 <__lshift+0x3e>
 800759e:	6934      	ldr	r4, [r6, #16]
 80075a0:	f106 0314 	add.w	r3, r6, #20
 80075a4:	f019 091f 	ands.w	r9, r9, #31
 80075a8:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80075ac:	d020      	beq.n	80075f0 <__lshift+0x98>
 80075ae:	f1c9 0e20 	rsb	lr, r9, #32
 80075b2:	2200      	movs	r2, #0
 80075b4:	e000      	b.n	80075b8 <__lshift+0x60>
 80075b6:	4651      	mov	r1, sl
 80075b8:	681c      	ldr	r4, [r3, #0]
 80075ba:	468a      	mov	sl, r1
 80075bc:	fa04 f409 	lsl.w	r4, r4, r9
 80075c0:	4314      	orrs	r4, r2
 80075c2:	f84a 4b04 	str.w	r4, [sl], #4
 80075c6:	f853 2b04 	ldr.w	r2, [r3], #4
 80075ca:	4563      	cmp	r3, ip
 80075cc:	fa22 f20e 	lsr.w	r2, r2, lr
 80075d0:	d3f1      	bcc.n	80075b6 <__lshift+0x5e>
 80075d2:	604a      	str	r2, [r1, #4]
 80075d4:	b10a      	cbz	r2, 80075da <__lshift+0x82>
 80075d6:	f108 0502 	add.w	r5, r8, #2
 80075da:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80075dc:	6872      	ldr	r2, [r6, #4]
 80075de:	3d01      	subs	r5, #1
 80075e0:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80075e4:	6105      	str	r5, [r0, #16]
 80075e6:	6031      	str	r1, [r6, #0]
 80075e8:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80075ec:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80075f0:	3904      	subs	r1, #4
 80075f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80075f6:	f841 2f04 	str.w	r2, [r1, #4]!
 80075fa:	459c      	cmp	ip, r3
 80075fc:	d8f9      	bhi.n	80075f2 <__lshift+0x9a>
 80075fe:	e7ec      	b.n	80075da <__lshift+0x82>
 8007600:	4619      	mov	r1, r3
 8007602:	e7cc      	b.n	800759e <__lshift+0x46>

08007604 <__mcmp>:
 8007604:	b430      	push	{r4, r5}
 8007606:	690b      	ldr	r3, [r1, #16]
 8007608:	4605      	mov	r5, r0
 800760a:	6900      	ldr	r0, [r0, #16]
 800760c:	1ac0      	subs	r0, r0, r3
 800760e:	d10f      	bne.n	8007630 <__mcmp+0x2c>
 8007610:	009b      	lsls	r3, r3, #2
 8007612:	3514      	adds	r5, #20
 8007614:	3114      	adds	r1, #20
 8007616:	4419      	add	r1, r3
 8007618:	442b      	add	r3, r5
 800761a:	e001      	b.n	8007620 <__mcmp+0x1c>
 800761c:	429d      	cmp	r5, r3
 800761e:	d207      	bcs.n	8007630 <__mcmp+0x2c>
 8007620:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8007624:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8007628:	4294      	cmp	r4, r2
 800762a:	d0f7      	beq.n	800761c <__mcmp+0x18>
 800762c:	d302      	bcc.n	8007634 <__mcmp+0x30>
 800762e:	2001      	movs	r0, #1
 8007630:	bc30      	pop	{r4, r5}
 8007632:	4770      	bx	lr
 8007634:	f04f 30ff 	mov.w	r0, #4294967295
 8007638:	e7fa      	b.n	8007630 <__mcmp+0x2c>
 800763a:	bf00      	nop

0800763c <__mdiff>:
 800763c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007640:	6913      	ldr	r3, [r2, #16]
 8007642:	690d      	ldr	r5, [r1, #16]
 8007644:	1aed      	subs	r5, r5, r3
 8007646:	2d00      	cmp	r5, #0
 8007648:	460e      	mov	r6, r1
 800764a:	4690      	mov	r8, r2
 800764c:	f101 0414 	add.w	r4, r1, #20
 8007650:	f102 0714 	add.w	r7, r2, #20
 8007654:	d114      	bne.n	8007680 <__mdiff+0x44>
 8007656:	009b      	lsls	r3, r3, #2
 8007658:	18e2      	adds	r2, r4, r3
 800765a:	443b      	add	r3, r7
 800765c:	e001      	b.n	8007662 <__mdiff+0x26>
 800765e:	42a2      	cmp	r2, r4
 8007660:	d959      	bls.n	8007716 <__mdiff+0xda>
 8007662:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8007666:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800766a:	458c      	cmp	ip, r1
 800766c:	d0f7      	beq.n	800765e <__mdiff+0x22>
 800766e:	d209      	bcs.n	8007684 <__mdiff+0x48>
 8007670:	4622      	mov	r2, r4
 8007672:	4633      	mov	r3, r6
 8007674:	463c      	mov	r4, r7
 8007676:	4646      	mov	r6, r8
 8007678:	4617      	mov	r7, r2
 800767a:	4698      	mov	r8, r3
 800767c:	2501      	movs	r5, #1
 800767e:	e001      	b.n	8007684 <__mdiff+0x48>
 8007680:	dbf6      	blt.n	8007670 <__mdiff+0x34>
 8007682:	2500      	movs	r5, #0
 8007684:	6871      	ldr	r1, [r6, #4]
 8007686:	f7ff fda7 	bl	80071d8 <_Balloc>
 800768a:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800768e:	6936      	ldr	r6, [r6, #16]
 8007690:	60c5      	str	r5, [r0, #12]
 8007692:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8007696:	46bc      	mov	ip, r7
 8007698:	f100 0514 	add.w	r5, r0, #20
 800769c:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80076a0:	2300      	movs	r3, #0
 80076a2:	f85c 1b04 	ldr.w	r1, [ip], #4
 80076a6:	f854 8b04 	ldr.w	r8, [r4], #4
 80076aa:	b28a      	uxth	r2, r1
 80076ac:	fa13 f388 	uxtah	r3, r3, r8
 80076b0:	0c09      	lsrs	r1, r1, #16
 80076b2:	1a9a      	subs	r2, r3, r2
 80076b4:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80076b8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80076bc:	b292      	uxth	r2, r2
 80076be:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80076c2:	45e6      	cmp	lr, ip
 80076c4:	f845 2b04 	str.w	r2, [r5], #4
 80076c8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80076cc:	d8e9      	bhi.n	80076a2 <__mdiff+0x66>
 80076ce:	42a7      	cmp	r7, r4
 80076d0:	d917      	bls.n	8007702 <__mdiff+0xc6>
 80076d2:	46ae      	mov	lr, r5
 80076d4:	46a4      	mov	ip, r4
 80076d6:	f85c 2b04 	ldr.w	r2, [ip], #4
 80076da:	fa13 f382 	uxtah	r3, r3, r2
 80076de:	1419      	asrs	r1, r3, #16
 80076e0:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80076e4:	b29b      	uxth	r3, r3
 80076e6:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80076ea:	4567      	cmp	r7, ip
 80076ec:	f84e 2b04 	str.w	r2, [lr], #4
 80076f0:	ea4f 4321 	mov.w	r3, r1, asr #16
 80076f4:	d8ef      	bhi.n	80076d6 <__mdiff+0x9a>
 80076f6:	43e4      	mvns	r4, r4
 80076f8:	4427      	add	r7, r4
 80076fa:	f027 0703 	bic.w	r7, r7, #3
 80076fe:	3704      	adds	r7, #4
 8007700:	443d      	add	r5, r7
 8007702:	3d04      	subs	r5, #4
 8007704:	b922      	cbnz	r2, 8007710 <__mdiff+0xd4>
 8007706:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800770a:	3e01      	subs	r6, #1
 800770c:	2b00      	cmp	r3, #0
 800770e:	d0fa      	beq.n	8007706 <__mdiff+0xca>
 8007710:	6106      	str	r6, [r0, #16]
 8007712:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007716:	2100      	movs	r1, #0
 8007718:	f7ff fd5e 	bl	80071d8 <_Balloc>
 800771c:	2201      	movs	r2, #1
 800771e:	2300      	movs	r3, #0
 8007720:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8007724:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007728 <__d2b>:
 8007728:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800772c:	460f      	mov	r7, r1
 800772e:	b083      	sub	sp, #12
 8007730:	2101      	movs	r1, #1
 8007732:	ec55 4b10 	vmov	r4, r5, d0
 8007736:	4616      	mov	r6, r2
 8007738:	f7ff fd4e 	bl	80071d8 <_Balloc>
 800773c:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8007740:	4681      	mov	r9, r0
 8007742:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8007746:	f1b8 0f00 	cmp.w	r8, #0
 800774a:	d001      	beq.n	8007750 <__d2b+0x28>
 800774c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8007750:	2c00      	cmp	r4, #0
 8007752:	9301      	str	r3, [sp, #4]
 8007754:	d024      	beq.n	80077a0 <__d2b+0x78>
 8007756:	a802      	add	r0, sp, #8
 8007758:	f840 4d08 	str.w	r4, [r0, #-8]!
 800775c:	f7ff fdcc 	bl	80072f8 <__lo0bits>
 8007760:	2800      	cmp	r0, #0
 8007762:	d136      	bne.n	80077d2 <__d2b+0xaa>
 8007764:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007768:	f8c9 2014 	str.w	r2, [r9, #20]
 800776c:	2b00      	cmp	r3, #0
 800776e:	bf0c      	ite	eq
 8007770:	2101      	moveq	r1, #1
 8007772:	2102      	movne	r1, #2
 8007774:	f8c9 3018 	str.w	r3, [r9, #24]
 8007778:	f8c9 1010 	str.w	r1, [r9, #16]
 800777c:	f1b8 0f00 	cmp.w	r8, #0
 8007780:	d11b      	bne.n	80077ba <__d2b+0x92>
 8007782:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8007786:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800778a:	6038      	str	r0, [r7, #0]
 800778c:	6918      	ldr	r0, [r3, #16]
 800778e:	f7ff fd93 	bl	80072b8 <__hi0bits>
 8007792:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007796:	6030      	str	r0, [r6, #0]
 8007798:	4648      	mov	r0, r9
 800779a:	b003      	add	sp, #12
 800779c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80077a0:	a801      	add	r0, sp, #4
 80077a2:	f7ff fda9 	bl	80072f8 <__lo0bits>
 80077a6:	9b01      	ldr	r3, [sp, #4]
 80077a8:	f8c9 3014 	str.w	r3, [r9, #20]
 80077ac:	2101      	movs	r1, #1
 80077ae:	3020      	adds	r0, #32
 80077b0:	f8c9 1010 	str.w	r1, [r9, #16]
 80077b4:	f1b8 0f00 	cmp.w	r8, #0
 80077b8:	d0e3      	beq.n	8007782 <__d2b+0x5a>
 80077ba:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80077be:	eb08 0300 	add.w	r3, r8, r0
 80077c2:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80077c6:	603b      	str	r3, [r7, #0]
 80077c8:	6030      	str	r0, [r6, #0]
 80077ca:	4648      	mov	r0, r9
 80077cc:	b003      	add	sp, #12
 80077ce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80077d2:	e9dd 1300 	ldrd	r1, r3, [sp]
 80077d6:	f1c0 0220 	rsb	r2, r0, #32
 80077da:	fa03 f202 	lsl.w	r2, r3, r2
 80077de:	430a      	orrs	r2, r1
 80077e0:	40c3      	lsrs	r3, r0
 80077e2:	9301      	str	r3, [sp, #4]
 80077e4:	f8c9 2014 	str.w	r2, [r9, #20]
 80077e8:	e7c0      	b.n	800776c <__d2b+0x44>
 80077ea:	bf00      	nop

080077ec <_sbrk_r>:
 80077ec:	b538      	push	{r3, r4, r5, lr}
 80077ee:	4c07      	ldr	r4, [pc, #28]	; (800780c <_sbrk_r+0x20>)
 80077f0:	2300      	movs	r3, #0
 80077f2:	4605      	mov	r5, r0
 80077f4:	4608      	mov	r0, r1
 80077f6:	6023      	str	r3, [r4, #0]
 80077f8:	f7f9 f9bc 	bl	8000b74 <_sbrk>
 80077fc:	1c43      	adds	r3, r0, #1
 80077fe:	d000      	beq.n	8007802 <_sbrk_r+0x16>
 8007800:	bd38      	pop	{r3, r4, r5, pc}
 8007802:	6823      	ldr	r3, [r4, #0]
 8007804:	2b00      	cmp	r3, #0
 8007806:	d0fb      	beq.n	8007800 <_sbrk_r+0x14>
 8007808:	602b      	str	r3, [r5, #0]
 800780a:	bd38      	pop	{r3, r4, r5, pc}
 800780c:	20000c54 	.word	0x20000c54

08007810 <__sread>:
 8007810:	b510      	push	{r4, lr}
 8007812:	460c      	mov	r4, r1
 8007814:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007818:	f000 fcee 	bl	80081f8 <_read_r>
 800781c:	2800      	cmp	r0, #0
 800781e:	db03      	blt.n	8007828 <__sread+0x18>
 8007820:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007822:	4403      	add	r3, r0
 8007824:	6523      	str	r3, [r4, #80]	; 0x50
 8007826:	bd10      	pop	{r4, pc}
 8007828:	89a3      	ldrh	r3, [r4, #12]
 800782a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800782e:	81a3      	strh	r3, [r4, #12]
 8007830:	bd10      	pop	{r4, pc}
 8007832:	bf00      	nop

08007834 <__swrite>:
 8007834:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007838:	4616      	mov	r6, r2
 800783a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800783e:	461f      	mov	r7, r3
 8007840:	05d3      	lsls	r3, r2, #23
 8007842:	460c      	mov	r4, r1
 8007844:	4605      	mov	r5, r0
 8007846:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800784a:	d507      	bpl.n	800785c <__swrite+0x28>
 800784c:	2200      	movs	r2, #0
 800784e:	2302      	movs	r3, #2
 8007850:	f000 fc42 	bl	80080d8 <_lseek_r>
 8007854:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007858:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800785c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8007860:	81a2      	strh	r2, [r4, #12]
 8007862:	463b      	mov	r3, r7
 8007864:	4632      	mov	r2, r6
 8007866:	4628      	mov	r0, r5
 8007868:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800786c:	f000 b8dc 	b.w	8007a28 <_write_r>

08007870 <__sseek>:
 8007870:	b510      	push	{r4, lr}
 8007872:	460c      	mov	r4, r1
 8007874:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007878:	f000 fc2e 	bl	80080d8 <_lseek_r>
 800787c:	89a3      	ldrh	r3, [r4, #12]
 800787e:	1c42      	adds	r2, r0, #1
 8007880:	bf0e      	itee	eq
 8007882:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007886:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800788a:	6520      	strne	r0, [r4, #80]	; 0x50
 800788c:	81a3      	strh	r3, [r4, #12]
 800788e:	bd10      	pop	{r4, pc}

08007890 <__sclose>:
 8007890:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007894:	f000 b972 	b.w	8007b7c <_close_r>
	...

080078c0 <strlen>:
 80078c0:	f890 f000 	pld	[r0]
 80078c4:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 80078c8:	f020 0107 	bic.w	r1, r0, #7
 80078cc:	f06f 0c00 	mvn.w	ip, #0
 80078d0:	f010 0407 	ands.w	r4, r0, #7
 80078d4:	f891 f020 	pld	[r1, #32]
 80078d8:	f040 8049 	bne.w	800796e <strlen+0xae>
 80078dc:	f04f 0400 	mov.w	r4, #0
 80078e0:	f06f 0007 	mvn.w	r0, #7
 80078e4:	e9d1 2300 	ldrd	r2, r3, [r1]
 80078e8:	f891 f040 	pld	[r1, #64]	; 0x40
 80078ec:	f100 0008 	add.w	r0, r0, #8
 80078f0:	fa82 f24c 	uadd8	r2, r2, ip
 80078f4:	faa4 f28c 	sel	r2, r4, ip
 80078f8:	fa83 f34c 	uadd8	r3, r3, ip
 80078fc:	faa2 f38c 	sel	r3, r2, ip
 8007900:	bb4b      	cbnz	r3, 8007956 <strlen+0x96>
 8007902:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8007906:	fa82 f24c 	uadd8	r2, r2, ip
 800790a:	f100 0008 	add.w	r0, r0, #8
 800790e:	faa4 f28c 	sel	r2, r4, ip
 8007912:	fa83 f34c 	uadd8	r3, r3, ip
 8007916:	faa2 f38c 	sel	r3, r2, ip
 800791a:	b9e3      	cbnz	r3, 8007956 <strlen+0x96>
 800791c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8007920:	fa82 f24c 	uadd8	r2, r2, ip
 8007924:	f100 0008 	add.w	r0, r0, #8
 8007928:	faa4 f28c 	sel	r2, r4, ip
 800792c:	fa83 f34c 	uadd8	r3, r3, ip
 8007930:	faa2 f38c 	sel	r3, r2, ip
 8007934:	b97b      	cbnz	r3, 8007956 <strlen+0x96>
 8007936:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 800793a:	f101 0120 	add.w	r1, r1, #32
 800793e:	fa82 f24c 	uadd8	r2, r2, ip
 8007942:	f100 0008 	add.w	r0, r0, #8
 8007946:	faa4 f28c 	sel	r2, r4, ip
 800794a:	fa83 f34c 	uadd8	r3, r3, ip
 800794e:	faa2 f38c 	sel	r3, r2, ip
 8007952:	2b00      	cmp	r3, #0
 8007954:	d0c6      	beq.n	80078e4 <strlen+0x24>
 8007956:	2a00      	cmp	r2, #0
 8007958:	bf04      	itt	eq
 800795a:	3004      	addeq	r0, #4
 800795c:	461a      	moveq	r2, r3
 800795e:	ba12      	rev	r2, r2
 8007960:	fab2 f282 	clz	r2, r2
 8007964:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 8007968:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 800796c:	4770      	bx	lr
 800796e:	e9d1 2300 	ldrd	r2, r3, [r1]
 8007972:	f004 0503 	and.w	r5, r4, #3
 8007976:	f1c4 0000 	rsb	r0, r4, #0
 800797a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 800797e:	f014 0f04 	tst.w	r4, #4
 8007982:	f891 f040 	pld	[r1, #64]	; 0x40
 8007986:	fa0c f505 	lsl.w	r5, ip, r5
 800798a:	ea62 0205 	orn	r2, r2, r5
 800798e:	bf1c      	itt	ne
 8007990:	ea63 0305 	ornne	r3, r3, r5
 8007994:	4662      	movne	r2, ip
 8007996:	f04f 0400 	mov.w	r4, #0
 800799a:	e7a9      	b.n	80078f0 <strlen+0x30>

0800799c <__sprint_r.part.0>:
 800799c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80079a0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80079a2:	049c      	lsls	r4, r3, #18
 80079a4:	4692      	mov	sl, r2
 80079a6:	d52d      	bpl.n	8007a04 <__sprint_r.part.0+0x68>
 80079a8:	6893      	ldr	r3, [r2, #8]
 80079aa:	6812      	ldr	r2, [r2, #0]
 80079ac:	b343      	cbz	r3, 8007a00 <__sprint_r.part.0+0x64>
 80079ae:	460e      	mov	r6, r1
 80079b0:	4607      	mov	r7, r0
 80079b2:	f102 0908 	add.w	r9, r2, #8
 80079b6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80079ba:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80079be:	d015      	beq.n	80079ec <__sprint_r.part.0+0x50>
 80079c0:	3d04      	subs	r5, #4
 80079c2:	2400      	movs	r4, #0
 80079c4:	e001      	b.n	80079ca <__sprint_r.part.0+0x2e>
 80079c6:	45a0      	cmp	r8, r4
 80079c8:	d00e      	beq.n	80079e8 <__sprint_r.part.0+0x4c>
 80079ca:	4632      	mov	r2, r6
 80079cc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80079d0:	4638      	mov	r0, r7
 80079d2:	f000 f99d 	bl	8007d10 <_fputwc_r>
 80079d6:	1c43      	adds	r3, r0, #1
 80079d8:	f104 0401 	add.w	r4, r4, #1
 80079dc:	d1f3      	bne.n	80079c6 <__sprint_r.part.0+0x2a>
 80079de:	2300      	movs	r3, #0
 80079e0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80079e4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80079e8:	f8da 3008 	ldr.w	r3, [sl, #8]
 80079ec:	f02b 0b03 	bic.w	fp, fp, #3
 80079f0:	eba3 030b 	sub.w	r3, r3, fp
 80079f4:	f8ca 3008 	str.w	r3, [sl, #8]
 80079f8:	f109 0908 	add.w	r9, r9, #8
 80079fc:	2b00      	cmp	r3, #0
 80079fe:	d1da      	bne.n	80079b6 <__sprint_r.part.0+0x1a>
 8007a00:	2000      	movs	r0, #0
 8007a02:	e7ec      	b.n	80079de <__sprint_r.part.0+0x42>
 8007a04:	f000 f9ca 	bl	8007d9c <__sfvwrite_r>
 8007a08:	2300      	movs	r3, #0
 8007a0a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007a0e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007a12:	bf00      	nop

08007a14 <__sprint_r>:
 8007a14:	6893      	ldr	r3, [r2, #8]
 8007a16:	b10b      	cbz	r3, 8007a1c <__sprint_r+0x8>
 8007a18:	f7ff bfc0 	b.w	800799c <__sprint_r.part.0>
 8007a1c:	b410      	push	{r4}
 8007a1e:	4618      	mov	r0, r3
 8007a20:	6053      	str	r3, [r2, #4]
 8007a22:	f85d 4b04 	ldr.w	r4, [sp], #4
 8007a26:	4770      	bx	lr

08007a28 <_write_r>:
 8007a28:	b570      	push	{r4, r5, r6, lr}
 8007a2a:	460d      	mov	r5, r1
 8007a2c:	4c08      	ldr	r4, [pc, #32]	; (8007a50 <_write_r+0x28>)
 8007a2e:	4611      	mov	r1, r2
 8007a30:	4606      	mov	r6, r0
 8007a32:	461a      	mov	r2, r3
 8007a34:	4628      	mov	r0, r5
 8007a36:	2300      	movs	r3, #0
 8007a38:	6023      	str	r3, [r4, #0]
 8007a3a:	f7f9 f87f 	bl	8000b3c <_write>
 8007a3e:	1c43      	adds	r3, r0, #1
 8007a40:	d000      	beq.n	8007a44 <_write_r+0x1c>
 8007a42:	bd70      	pop	{r4, r5, r6, pc}
 8007a44:	6823      	ldr	r3, [r4, #0]
 8007a46:	2b00      	cmp	r3, #0
 8007a48:	d0fb      	beq.n	8007a42 <_write_r+0x1a>
 8007a4a:	6033      	str	r3, [r6, #0]
 8007a4c:	bd70      	pop	{r4, r5, r6, pc}
 8007a4e:	bf00      	nop
 8007a50:	20000c54 	.word	0x20000c54

08007a54 <__register_exitproc>:
 8007a54:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007a58:	4d2b      	ldr	r5, [pc, #172]	; (8007b08 <__register_exitproc+0xb4>)
 8007a5a:	4606      	mov	r6, r0
 8007a5c:	6828      	ldr	r0, [r5, #0]
 8007a5e:	4698      	mov	r8, r3
 8007a60:	460f      	mov	r7, r1
 8007a62:	4691      	mov	r9, r2
 8007a64:	f7ff f83c 	bl	8006ae0 <__retarget_lock_acquire_recursive>
 8007a68:	4b28      	ldr	r3, [pc, #160]	; (8007b0c <__register_exitproc+0xb8>)
 8007a6a:	681c      	ldr	r4, [r3, #0]
 8007a6c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8007a70:	2b00      	cmp	r3, #0
 8007a72:	d03d      	beq.n	8007af0 <__register_exitproc+0x9c>
 8007a74:	685a      	ldr	r2, [r3, #4]
 8007a76:	2a1f      	cmp	r2, #31
 8007a78:	dc0d      	bgt.n	8007a96 <__register_exitproc+0x42>
 8007a7a:	f102 0c01 	add.w	ip, r2, #1
 8007a7e:	bb16      	cbnz	r6, 8007ac6 <__register_exitproc+0x72>
 8007a80:	3202      	adds	r2, #2
 8007a82:	f8c3 c004 	str.w	ip, [r3, #4]
 8007a86:	6828      	ldr	r0, [r5, #0]
 8007a88:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8007a8c:	f7ff f82a 	bl	8006ae4 <__retarget_lock_release_recursive>
 8007a90:	2000      	movs	r0, #0
 8007a92:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007a96:	4b1e      	ldr	r3, [pc, #120]	; (8007b10 <__register_exitproc+0xbc>)
 8007a98:	b37b      	cbz	r3, 8007afa <__register_exitproc+0xa6>
 8007a9a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8007a9e:	f3af 8000 	nop.w
 8007aa2:	4603      	mov	r3, r0
 8007aa4:	b348      	cbz	r0, 8007afa <__register_exitproc+0xa6>
 8007aa6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8007aaa:	2100      	movs	r1, #0
 8007aac:	e9c0 2100 	strd	r2, r1, [r0]
 8007ab0:	f04f 0c01 	mov.w	ip, #1
 8007ab4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8007ab8:	460a      	mov	r2, r1
 8007aba:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8007abe:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8007ac2:	2e00      	cmp	r6, #0
 8007ac4:	d0dc      	beq.n	8007a80 <__register_exitproc+0x2c>
 8007ac6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8007aca:	2401      	movs	r4, #1
 8007acc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8007ad0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8007ad4:	4094      	lsls	r4, r2
 8007ad6:	4320      	orrs	r0, r4
 8007ad8:	2e02      	cmp	r6, #2
 8007ada:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8007ade:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8007ae2:	d1cd      	bne.n	8007a80 <__register_exitproc+0x2c>
 8007ae4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8007ae8:	430c      	orrs	r4, r1
 8007aea:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8007aee:	e7c7      	b.n	8007a80 <__register_exitproc+0x2c>
 8007af0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8007af4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8007af8:	e7bc      	b.n	8007a74 <__register_exitproc+0x20>
 8007afa:	6828      	ldr	r0, [r5, #0]
 8007afc:	f7fe fff2 	bl	8006ae4 <__retarget_lock_release_recursive>
 8007b00:	f04f 30ff 	mov.w	r0, #4294967295
 8007b04:	e7c5      	b.n	8007a92 <__register_exitproc+0x3e>
 8007b06:	bf00      	nop
 8007b08:	20000440 	.word	0x20000440
 8007b0c:	08009b10 	.word	0x08009b10
 8007b10:	00000000 	.word	0x00000000

08007b14 <_calloc_r>:
 8007b14:	b510      	push	{r4, lr}
 8007b16:	fb02 f101 	mul.w	r1, r2, r1
 8007b1a:	f7ff f85d 	bl	8006bd8 <_malloc_r>
 8007b1e:	4604      	mov	r4, r0
 8007b20:	b1d8      	cbz	r0, 8007b5a <_calloc_r+0x46>
 8007b22:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8007b26:	f022 0203 	bic.w	r2, r2, #3
 8007b2a:	3a04      	subs	r2, #4
 8007b2c:	2a24      	cmp	r2, #36	; 0x24
 8007b2e:	d81d      	bhi.n	8007b6c <_calloc_r+0x58>
 8007b30:	2a13      	cmp	r2, #19
 8007b32:	d914      	bls.n	8007b5e <_calloc_r+0x4a>
 8007b34:	2300      	movs	r3, #0
 8007b36:	2a1b      	cmp	r2, #27
 8007b38:	e9c0 3300 	strd	r3, r3, [r0]
 8007b3c:	d91b      	bls.n	8007b76 <_calloc_r+0x62>
 8007b3e:	2a24      	cmp	r2, #36	; 0x24
 8007b40:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8007b44:	bf0a      	itet	eq
 8007b46:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8007b4a:	f100 0210 	addne.w	r2, r0, #16
 8007b4e:	f100 0218 	addeq.w	r2, r0, #24
 8007b52:	2300      	movs	r3, #0
 8007b54:	e9c2 3300 	strd	r3, r3, [r2]
 8007b58:	6093      	str	r3, [r2, #8]
 8007b5a:	4620      	mov	r0, r4
 8007b5c:	bd10      	pop	{r4, pc}
 8007b5e:	4602      	mov	r2, r0
 8007b60:	2300      	movs	r3, #0
 8007b62:	e9c2 3300 	strd	r3, r3, [r2]
 8007b66:	6093      	str	r3, [r2, #8]
 8007b68:	4620      	mov	r0, r4
 8007b6a:	bd10      	pop	{r4, pc}
 8007b6c:	2100      	movs	r1, #0
 8007b6e:	f7fc f99b 	bl	8003ea8 <memset>
 8007b72:	4620      	mov	r0, r4
 8007b74:	bd10      	pop	{r4, pc}
 8007b76:	f100 0208 	add.w	r2, r0, #8
 8007b7a:	e7f1      	b.n	8007b60 <_calloc_r+0x4c>

08007b7c <_close_r>:
 8007b7c:	b538      	push	{r3, r4, r5, lr}
 8007b7e:	4c07      	ldr	r4, [pc, #28]	; (8007b9c <_close_r+0x20>)
 8007b80:	2300      	movs	r3, #0
 8007b82:	4605      	mov	r5, r0
 8007b84:	4608      	mov	r0, r1
 8007b86:	6023      	str	r3, [r4, #0]
 8007b88:	f7f9 f820 	bl	8000bcc <_close>
 8007b8c:	1c43      	adds	r3, r0, #1
 8007b8e:	d000      	beq.n	8007b92 <_close_r+0x16>
 8007b90:	bd38      	pop	{r3, r4, r5, pc}
 8007b92:	6823      	ldr	r3, [r4, #0]
 8007b94:	2b00      	cmp	r3, #0
 8007b96:	d0fb      	beq.n	8007b90 <_close_r+0x14>
 8007b98:	602b      	str	r3, [r5, #0]
 8007b9a:	bd38      	pop	{r3, r4, r5, pc}
 8007b9c:	20000c54 	.word	0x20000c54

08007ba0 <_fclose_r>:
 8007ba0:	b570      	push	{r4, r5, r6, lr}
 8007ba2:	2900      	cmp	r1, #0
 8007ba4:	d048      	beq.n	8007c38 <_fclose_r+0x98>
 8007ba6:	4605      	mov	r5, r0
 8007ba8:	460c      	mov	r4, r1
 8007baa:	b110      	cbz	r0, 8007bb2 <_fclose_r+0x12>
 8007bac:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007bae:	2b00      	cmp	r3, #0
 8007bb0:	d048      	beq.n	8007c44 <_fclose_r+0xa4>
 8007bb2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007bb4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007bb8:	07d0      	lsls	r0, r2, #31
 8007bba:	d440      	bmi.n	8007c3e <_fclose_r+0x9e>
 8007bbc:	0599      	lsls	r1, r3, #22
 8007bbe:	d530      	bpl.n	8007c22 <_fclose_r+0x82>
 8007bc0:	4621      	mov	r1, r4
 8007bc2:	4628      	mov	r0, r5
 8007bc4:	f7fe fcb4 	bl	8006530 <__sflush_r>
 8007bc8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8007bca:	4606      	mov	r6, r0
 8007bcc:	b133      	cbz	r3, 8007bdc <_fclose_r+0x3c>
 8007bce:	69e1      	ldr	r1, [r4, #28]
 8007bd0:	4628      	mov	r0, r5
 8007bd2:	4798      	blx	r3
 8007bd4:	2800      	cmp	r0, #0
 8007bd6:	bfb8      	it	lt
 8007bd8:	f04f 36ff 	movlt.w	r6, #4294967295
 8007bdc:	89a3      	ldrh	r3, [r4, #12]
 8007bde:	061a      	lsls	r2, r3, #24
 8007be0:	d43c      	bmi.n	8007c5c <_fclose_r+0xbc>
 8007be2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007be4:	b141      	cbz	r1, 8007bf8 <_fclose_r+0x58>
 8007be6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8007bea:	4299      	cmp	r1, r3
 8007bec:	d002      	beq.n	8007bf4 <_fclose_r+0x54>
 8007bee:	4628      	mov	r0, r5
 8007bf0:	f7fe fe46 	bl	8006880 <_free_r>
 8007bf4:	2300      	movs	r3, #0
 8007bf6:	6323      	str	r3, [r4, #48]	; 0x30
 8007bf8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8007bfa:	b121      	cbz	r1, 8007c06 <_fclose_r+0x66>
 8007bfc:	4628      	mov	r0, r5
 8007bfe:	f7fe fe3f 	bl	8006880 <_free_r>
 8007c02:	2300      	movs	r3, #0
 8007c04:	6463      	str	r3, [r4, #68]	; 0x44
 8007c06:	f7fe fdc5 	bl	8006794 <__sfp_lock_acquire>
 8007c0a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007c0c:	2200      	movs	r2, #0
 8007c0e:	07db      	lsls	r3, r3, #31
 8007c10:	81a2      	strh	r2, [r4, #12]
 8007c12:	d51f      	bpl.n	8007c54 <_fclose_r+0xb4>
 8007c14:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007c16:	f7fe ff61 	bl	8006adc <__retarget_lock_close_recursive>
 8007c1a:	f7fe fdc1 	bl	80067a0 <__sfp_lock_release>
 8007c1e:	4630      	mov	r0, r6
 8007c20:	bd70      	pop	{r4, r5, r6, pc}
 8007c22:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007c24:	f7fe ff5c 	bl	8006ae0 <__retarget_lock_acquire_recursive>
 8007c28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007c2c:	2b00      	cmp	r3, #0
 8007c2e:	d1c7      	bne.n	8007bc0 <_fclose_r+0x20>
 8007c30:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007c32:	f016 0601 	ands.w	r6, r6, #1
 8007c36:	d016      	beq.n	8007c66 <_fclose_r+0xc6>
 8007c38:	2600      	movs	r6, #0
 8007c3a:	4630      	mov	r0, r6
 8007c3c:	bd70      	pop	{r4, r5, r6, pc}
 8007c3e:	2b00      	cmp	r3, #0
 8007c40:	d0fa      	beq.n	8007c38 <_fclose_r+0x98>
 8007c42:	e7bd      	b.n	8007bc0 <_fclose_r+0x20>
 8007c44:	f7fe fd7a 	bl	800673c <__sinit>
 8007c48:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007c4a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007c4e:	07d0      	lsls	r0, r2, #31
 8007c50:	d4f5      	bmi.n	8007c3e <_fclose_r+0x9e>
 8007c52:	e7b3      	b.n	8007bbc <_fclose_r+0x1c>
 8007c54:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007c56:	f7fe ff45 	bl	8006ae4 <__retarget_lock_release_recursive>
 8007c5a:	e7db      	b.n	8007c14 <_fclose_r+0x74>
 8007c5c:	6921      	ldr	r1, [r4, #16]
 8007c5e:	4628      	mov	r0, r5
 8007c60:	f7fe fe0e 	bl	8006880 <_free_r>
 8007c64:	e7bd      	b.n	8007be2 <_fclose_r+0x42>
 8007c66:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007c68:	f7fe ff3c 	bl	8006ae4 <__retarget_lock_release_recursive>
 8007c6c:	4630      	mov	r0, r6
 8007c6e:	bd70      	pop	{r4, r5, r6, pc}

08007c70 <__fputwc>:
 8007c70:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007c74:	b082      	sub	sp, #8
 8007c76:	4681      	mov	r9, r0
 8007c78:	4688      	mov	r8, r1
 8007c7a:	4614      	mov	r4, r2
 8007c7c:	f000 fa1e 	bl	80080bc <__locale_mb_cur_max>
 8007c80:	2801      	cmp	r0, #1
 8007c82:	d103      	bne.n	8007c8c <__fputwc+0x1c>
 8007c84:	f108 33ff 	add.w	r3, r8, #4294967295
 8007c88:	2bfe      	cmp	r3, #254	; 0xfe
 8007c8a:	d933      	bls.n	8007cf4 <__fputwc+0x84>
 8007c8c:	4642      	mov	r2, r8
 8007c8e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007c92:	a901      	add	r1, sp, #4
 8007c94:	4648      	mov	r0, r9
 8007c96:	f000 fccb 	bl	8008630 <_wcrtomb_r>
 8007c9a:	1c42      	adds	r2, r0, #1
 8007c9c:	4606      	mov	r6, r0
 8007c9e:	d02f      	beq.n	8007d00 <__fputwc+0x90>
 8007ca0:	b320      	cbz	r0, 8007cec <__fputwc+0x7c>
 8007ca2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007ca6:	2500      	movs	r5, #0
 8007ca8:	f10d 0a04 	add.w	sl, sp, #4
 8007cac:	e009      	b.n	8007cc2 <__fputwc+0x52>
 8007cae:	6823      	ldr	r3, [r4, #0]
 8007cb0:	1c5a      	adds	r2, r3, #1
 8007cb2:	6022      	str	r2, [r4, #0]
 8007cb4:	f883 c000 	strb.w	ip, [r3]
 8007cb8:	3501      	adds	r5, #1
 8007cba:	42b5      	cmp	r5, r6
 8007cbc:	d216      	bcs.n	8007cec <__fputwc+0x7c>
 8007cbe:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007cc2:	68a3      	ldr	r3, [r4, #8]
 8007cc4:	3b01      	subs	r3, #1
 8007cc6:	2b00      	cmp	r3, #0
 8007cc8:	60a3      	str	r3, [r4, #8]
 8007cca:	daf0      	bge.n	8007cae <__fputwc+0x3e>
 8007ccc:	69a7      	ldr	r7, [r4, #24]
 8007cce:	42bb      	cmp	r3, r7
 8007cd0:	4661      	mov	r1, ip
 8007cd2:	4622      	mov	r2, r4
 8007cd4:	4648      	mov	r0, r9
 8007cd6:	db02      	blt.n	8007cde <__fputwc+0x6e>
 8007cd8:	f1bc 0f0a 	cmp.w	ip, #10
 8007cdc:	d1e7      	bne.n	8007cae <__fputwc+0x3e>
 8007cde:	f000 fc4f 	bl	8008580 <__swbuf_r>
 8007ce2:	1c43      	adds	r3, r0, #1
 8007ce4:	d1e8      	bne.n	8007cb8 <__fputwc+0x48>
 8007ce6:	b002      	add	sp, #8
 8007ce8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007cec:	4640      	mov	r0, r8
 8007cee:	b002      	add	sp, #8
 8007cf0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007cf4:	fa5f fc88 	uxtb.w	ip, r8
 8007cf8:	4606      	mov	r6, r0
 8007cfa:	f88d c004 	strb.w	ip, [sp, #4]
 8007cfe:	e7d2      	b.n	8007ca6 <__fputwc+0x36>
 8007d00:	89a3      	ldrh	r3, [r4, #12]
 8007d02:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007d06:	81a3      	strh	r3, [r4, #12]
 8007d08:	b002      	add	sp, #8
 8007d0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007d0e:	bf00      	nop

08007d10 <_fputwc_r>:
 8007d10:	b530      	push	{r4, r5, lr}
 8007d12:	4605      	mov	r5, r0
 8007d14:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007d16:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8007d1a:	07c0      	lsls	r0, r0, #31
 8007d1c:	4614      	mov	r4, r2
 8007d1e:	b083      	sub	sp, #12
 8007d20:	b29a      	uxth	r2, r3
 8007d22:	d401      	bmi.n	8007d28 <_fputwc_r+0x18>
 8007d24:	0590      	lsls	r0, r2, #22
 8007d26:	d51c      	bpl.n	8007d62 <_fputwc_r+0x52>
 8007d28:	0490      	lsls	r0, r2, #18
 8007d2a:	d406      	bmi.n	8007d3a <_fputwc_r+0x2a>
 8007d2c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007d2e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007d32:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007d36:	81a3      	strh	r3, [r4, #12]
 8007d38:	6662      	str	r2, [r4, #100]	; 0x64
 8007d3a:	4628      	mov	r0, r5
 8007d3c:	4622      	mov	r2, r4
 8007d3e:	f7ff ff97 	bl	8007c70 <__fputwc>
 8007d42:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007d44:	07da      	lsls	r2, r3, #31
 8007d46:	4605      	mov	r5, r0
 8007d48:	d402      	bmi.n	8007d50 <_fputwc_r+0x40>
 8007d4a:	89a3      	ldrh	r3, [r4, #12]
 8007d4c:	059b      	lsls	r3, r3, #22
 8007d4e:	d502      	bpl.n	8007d56 <_fputwc_r+0x46>
 8007d50:	4628      	mov	r0, r5
 8007d52:	b003      	add	sp, #12
 8007d54:	bd30      	pop	{r4, r5, pc}
 8007d56:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007d58:	f7fe fec4 	bl	8006ae4 <__retarget_lock_release_recursive>
 8007d5c:	4628      	mov	r0, r5
 8007d5e:	b003      	add	sp, #12
 8007d60:	bd30      	pop	{r4, r5, pc}
 8007d62:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007d64:	9101      	str	r1, [sp, #4]
 8007d66:	f7fe febb 	bl	8006ae0 <__retarget_lock_acquire_recursive>
 8007d6a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007d6e:	9901      	ldr	r1, [sp, #4]
 8007d70:	b29a      	uxth	r2, r3
 8007d72:	e7d9      	b.n	8007d28 <_fputwc_r+0x18>

08007d74 <_fstat_r>:
 8007d74:	b538      	push	{r3, r4, r5, lr}
 8007d76:	460b      	mov	r3, r1
 8007d78:	4c07      	ldr	r4, [pc, #28]	; (8007d98 <_fstat_r+0x24>)
 8007d7a:	4605      	mov	r5, r0
 8007d7c:	4611      	mov	r1, r2
 8007d7e:	4618      	mov	r0, r3
 8007d80:	2300      	movs	r3, #0
 8007d82:	6023      	str	r3, [r4, #0]
 8007d84:	f7f8 ff2e 	bl	8000be4 <_fstat>
 8007d88:	1c43      	adds	r3, r0, #1
 8007d8a:	d000      	beq.n	8007d8e <_fstat_r+0x1a>
 8007d8c:	bd38      	pop	{r3, r4, r5, pc}
 8007d8e:	6823      	ldr	r3, [r4, #0]
 8007d90:	2b00      	cmp	r3, #0
 8007d92:	d0fb      	beq.n	8007d8c <_fstat_r+0x18>
 8007d94:	602b      	str	r3, [r5, #0]
 8007d96:	bd38      	pop	{r3, r4, r5, pc}
 8007d98:	20000c54 	.word	0x20000c54

08007d9c <__sfvwrite_r>:
 8007d9c:	6893      	ldr	r3, [r2, #8]
 8007d9e:	2b00      	cmp	r3, #0
 8007da0:	f000 80e4 	beq.w	8007f6c <__sfvwrite_r+0x1d0>
 8007da4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007da8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007dac:	b29b      	uxth	r3, r3
 8007dae:	460c      	mov	r4, r1
 8007db0:	0719      	lsls	r1, r3, #28
 8007db2:	b083      	sub	sp, #12
 8007db4:	4682      	mov	sl, r0
 8007db6:	4690      	mov	r8, r2
 8007db8:	d535      	bpl.n	8007e26 <__sfvwrite_r+0x8a>
 8007dba:	6922      	ldr	r2, [r4, #16]
 8007dbc:	b39a      	cbz	r2, 8007e26 <__sfvwrite_r+0x8a>
 8007dbe:	f013 0202 	ands.w	r2, r3, #2
 8007dc2:	f8d8 6000 	ldr.w	r6, [r8]
 8007dc6:	d03d      	beq.n	8007e44 <__sfvwrite_r+0xa8>
 8007dc8:	2700      	movs	r7, #0
 8007dca:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8007dce:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007dd2:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8008094 <__sfvwrite_r+0x2f8>
 8007dd6:	463d      	mov	r5, r7
 8007dd8:	454d      	cmp	r5, r9
 8007dda:	462b      	mov	r3, r5
 8007ddc:	463a      	mov	r2, r7
 8007dde:	bf28      	it	cs
 8007de0:	464b      	movcs	r3, r9
 8007de2:	4661      	mov	r1, ip
 8007de4:	4650      	mov	r0, sl
 8007de6:	b1d5      	cbz	r5, 8007e1e <__sfvwrite_r+0x82>
 8007de8:	47d8      	blx	fp
 8007dea:	2800      	cmp	r0, #0
 8007dec:	f340 80c6 	ble.w	8007f7c <__sfvwrite_r+0x1e0>
 8007df0:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007df4:	1a1b      	subs	r3, r3, r0
 8007df6:	4407      	add	r7, r0
 8007df8:	1a2d      	subs	r5, r5, r0
 8007dfa:	f8c8 3008 	str.w	r3, [r8, #8]
 8007dfe:	2b00      	cmp	r3, #0
 8007e00:	f000 80b0 	beq.w	8007f64 <__sfvwrite_r+0x1c8>
 8007e04:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007e08:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8007e0c:	454d      	cmp	r5, r9
 8007e0e:	462b      	mov	r3, r5
 8007e10:	463a      	mov	r2, r7
 8007e12:	bf28      	it	cs
 8007e14:	464b      	movcs	r3, r9
 8007e16:	4661      	mov	r1, ip
 8007e18:	4650      	mov	r0, sl
 8007e1a:	2d00      	cmp	r5, #0
 8007e1c:	d1e4      	bne.n	8007de8 <__sfvwrite_r+0x4c>
 8007e1e:	e9d6 7500 	ldrd	r7, r5, [r6]
 8007e22:	3608      	adds	r6, #8
 8007e24:	e7d8      	b.n	8007dd8 <__sfvwrite_r+0x3c>
 8007e26:	4621      	mov	r1, r4
 8007e28:	4650      	mov	r0, sl
 8007e2a:	f7fd fb65 	bl	80054f8 <__swsetup_r>
 8007e2e:	2800      	cmp	r0, #0
 8007e30:	f040 812a 	bne.w	8008088 <__sfvwrite_r+0x2ec>
 8007e34:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007e38:	f8d8 6000 	ldr.w	r6, [r8]
 8007e3c:	b29b      	uxth	r3, r3
 8007e3e:	f013 0202 	ands.w	r2, r3, #2
 8007e42:	d1c1      	bne.n	8007dc8 <__sfvwrite_r+0x2c>
 8007e44:	f013 0901 	ands.w	r9, r3, #1
 8007e48:	d15d      	bne.n	8007f06 <__sfvwrite_r+0x16a>
 8007e4a:	68a7      	ldr	r7, [r4, #8]
 8007e4c:	6820      	ldr	r0, [r4, #0]
 8007e4e:	464d      	mov	r5, r9
 8007e50:	2d00      	cmp	r5, #0
 8007e52:	d054      	beq.n	8007efe <__sfvwrite_r+0x162>
 8007e54:	059a      	lsls	r2, r3, #22
 8007e56:	f140 809b 	bpl.w	8007f90 <__sfvwrite_r+0x1f4>
 8007e5a:	42af      	cmp	r7, r5
 8007e5c:	46bb      	mov	fp, r7
 8007e5e:	f200 80d8 	bhi.w	8008012 <__sfvwrite_r+0x276>
 8007e62:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8007e66:	d02f      	beq.n	8007ec8 <__sfvwrite_r+0x12c>
 8007e68:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8007e6c:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8007e70:	eba0 0b01 	sub.w	fp, r0, r1
 8007e74:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8007e78:	1c68      	adds	r0, r5, #1
 8007e7a:	107f      	asrs	r7, r7, #1
 8007e7c:	4458      	add	r0, fp
 8007e7e:	42b8      	cmp	r0, r7
 8007e80:	463a      	mov	r2, r7
 8007e82:	bf84      	itt	hi
 8007e84:	4607      	movhi	r7, r0
 8007e86:	463a      	movhi	r2, r7
 8007e88:	055b      	lsls	r3, r3, #21
 8007e8a:	f140 80d3 	bpl.w	8008034 <__sfvwrite_r+0x298>
 8007e8e:	4611      	mov	r1, r2
 8007e90:	4650      	mov	r0, sl
 8007e92:	f7fe fea1 	bl	8006bd8 <_malloc_r>
 8007e96:	2800      	cmp	r0, #0
 8007e98:	f000 80f0 	beq.w	800807c <__sfvwrite_r+0x2e0>
 8007e9c:	465a      	mov	r2, fp
 8007e9e:	6921      	ldr	r1, [r4, #16]
 8007ea0:	9001      	str	r0, [sp, #4]
 8007ea2:	f7fb ff67 	bl	8003d74 <memcpy>
 8007ea6:	89a2      	ldrh	r2, [r4, #12]
 8007ea8:	9b01      	ldr	r3, [sp, #4]
 8007eaa:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8007eae:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8007eb2:	81a2      	strh	r2, [r4, #12]
 8007eb4:	eba7 020b 	sub.w	r2, r7, fp
 8007eb8:	eb03 000b 	add.w	r0, r3, fp
 8007ebc:	6167      	str	r7, [r4, #20]
 8007ebe:	6123      	str	r3, [r4, #16]
 8007ec0:	6020      	str	r0, [r4, #0]
 8007ec2:	60a2      	str	r2, [r4, #8]
 8007ec4:	462f      	mov	r7, r5
 8007ec6:	46ab      	mov	fp, r5
 8007ec8:	465a      	mov	r2, fp
 8007eca:	4649      	mov	r1, r9
 8007ecc:	f000 f930 	bl	8008130 <memmove>
 8007ed0:	68a2      	ldr	r2, [r4, #8]
 8007ed2:	6823      	ldr	r3, [r4, #0]
 8007ed4:	1bd2      	subs	r2, r2, r7
 8007ed6:	445b      	add	r3, fp
 8007ed8:	462f      	mov	r7, r5
 8007eda:	60a2      	str	r2, [r4, #8]
 8007edc:	6023      	str	r3, [r4, #0]
 8007ede:	2500      	movs	r5, #0
 8007ee0:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007ee4:	1bdb      	subs	r3, r3, r7
 8007ee6:	44b9      	add	r9, r7
 8007ee8:	f8c8 3008 	str.w	r3, [r8, #8]
 8007eec:	2b00      	cmp	r3, #0
 8007eee:	d039      	beq.n	8007f64 <__sfvwrite_r+0x1c8>
 8007ef0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007ef4:	68a7      	ldr	r7, [r4, #8]
 8007ef6:	6820      	ldr	r0, [r4, #0]
 8007ef8:	b29b      	uxth	r3, r3
 8007efa:	2d00      	cmp	r5, #0
 8007efc:	d1aa      	bne.n	8007e54 <__sfvwrite_r+0xb8>
 8007efe:	e9d6 9500 	ldrd	r9, r5, [r6]
 8007f02:	3608      	adds	r6, #8
 8007f04:	e7a4      	b.n	8007e50 <__sfvwrite_r+0xb4>
 8007f06:	4633      	mov	r3, r6
 8007f08:	4691      	mov	r9, r2
 8007f0a:	4610      	mov	r0, r2
 8007f0c:	4617      	mov	r7, r2
 8007f0e:	464e      	mov	r6, r9
 8007f10:	469b      	mov	fp, r3
 8007f12:	2f00      	cmp	r7, #0
 8007f14:	d06b      	beq.n	8007fee <__sfvwrite_r+0x252>
 8007f16:	2800      	cmp	r0, #0
 8007f18:	d071      	beq.n	8007ffe <__sfvwrite_r+0x262>
 8007f1a:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8007f1e:	6820      	ldr	r0, [r4, #0]
 8007f20:	45b9      	cmp	r9, r7
 8007f22:	464b      	mov	r3, r9
 8007f24:	bf28      	it	cs
 8007f26:	463b      	movcs	r3, r7
 8007f28:	4288      	cmp	r0, r1
 8007f2a:	d903      	bls.n	8007f34 <__sfvwrite_r+0x198>
 8007f2c:	68a5      	ldr	r5, [r4, #8]
 8007f2e:	4415      	add	r5, r2
 8007f30:	42ab      	cmp	r3, r5
 8007f32:	dc71      	bgt.n	8008018 <__sfvwrite_r+0x27c>
 8007f34:	429a      	cmp	r2, r3
 8007f36:	f300 8093 	bgt.w	8008060 <__sfvwrite_r+0x2c4>
 8007f3a:	4613      	mov	r3, r2
 8007f3c:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8007f3e:	69e1      	ldr	r1, [r4, #28]
 8007f40:	4632      	mov	r2, r6
 8007f42:	4650      	mov	r0, sl
 8007f44:	47a8      	blx	r5
 8007f46:	1e05      	subs	r5, r0, #0
 8007f48:	dd18      	ble.n	8007f7c <__sfvwrite_r+0x1e0>
 8007f4a:	ebb9 0905 	subs.w	r9, r9, r5
 8007f4e:	d00f      	beq.n	8007f70 <__sfvwrite_r+0x1d4>
 8007f50:	2001      	movs	r0, #1
 8007f52:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007f56:	1b5b      	subs	r3, r3, r5
 8007f58:	442e      	add	r6, r5
 8007f5a:	1b7f      	subs	r7, r7, r5
 8007f5c:	f8c8 3008 	str.w	r3, [r8, #8]
 8007f60:	2b00      	cmp	r3, #0
 8007f62:	d1d6      	bne.n	8007f12 <__sfvwrite_r+0x176>
 8007f64:	2000      	movs	r0, #0
 8007f66:	b003      	add	sp, #12
 8007f68:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007f6c:	2000      	movs	r0, #0
 8007f6e:	4770      	bx	lr
 8007f70:	4621      	mov	r1, r4
 8007f72:	4650      	mov	r0, sl
 8007f74:	f7fe fb86 	bl	8006684 <_fflush_r>
 8007f78:	2800      	cmp	r0, #0
 8007f7a:	d0ea      	beq.n	8007f52 <__sfvwrite_r+0x1b6>
 8007f7c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007f80:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007f84:	f04f 30ff 	mov.w	r0, #4294967295
 8007f88:	81a3      	strh	r3, [r4, #12]
 8007f8a:	b003      	add	sp, #12
 8007f8c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007f90:	6923      	ldr	r3, [r4, #16]
 8007f92:	4283      	cmp	r3, r0
 8007f94:	d315      	bcc.n	8007fc2 <__sfvwrite_r+0x226>
 8007f96:	6961      	ldr	r1, [r4, #20]
 8007f98:	42a9      	cmp	r1, r5
 8007f9a:	d812      	bhi.n	8007fc2 <__sfvwrite_r+0x226>
 8007f9c:	4b3c      	ldr	r3, [pc, #240]	; (8008090 <__sfvwrite_r+0x2f4>)
 8007f9e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007fa0:	429d      	cmp	r5, r3
 8007fa2:	bf94      	ite	ls
 8007fa4:	462b      	movls	r3, r5
 8007fa6:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8007faa:	464a      	mov	r2, r9
 8007fac:	fb93 f3f1 	sdiv	r3, r3, r1
 8007fb0:	4650      	mov	r0, sl
 8007fb2:	fb01 f303 	mul.w	r3, r1, r3
 8007fb6:	69e1      	ldr	r1, [r4, #28]
 8007fb8:	47b8      	blx	r7
 8007fba:	1e07      	subs	r7, r0, #0
 8007fbc:	ddde      	ble.n	8007f7c <__sfvwrite_r+0x1e0>
 8007fbe:	1bed      	subs	r5, r5, r7
 8007fc0:	e78e      	b.n	8007ee0 <__sfvwrite_r+0x144>
 8007fc2:	42af      	cmp	r7, r5
 8007fc4:	bf28      	it	cs
 8007fc6:	462f      	movcs	r7, r5
 8007fc8:	463a      	mov	r2, r7
 8007fca:	4649      	mov	r1, r9
 8007fcc:	f000 f8b0 	bl	8008130 <memmove>
 8007fd0:	68a3      	ldr	r3, [r4, #8]
 8007fd2:	6822      	ldr	r2, [r4, #0]
 8007fd4:	1bdb      	subs	r3, r3, r7
 8007fd6:	443a      	add	r2, r7
 8007fd8:	60a3      	str	r3, [r4, #8]
 8007fda:	6022      	str	r2, [r4, #0]
 8007fdc:	2b00      	cmp	r3, #0
 8007fde:	d1ee      	bne.n	8007fbe <__sfvwrite_r+0x222>
 8007fe0:	4621      	mov	r1, r4
 8007fe2:	4650      	mov	r0, sl
 8007fe4:	f7fe fb4e 	bl	8006684 <_fflush_r>
 8007fe8:	2800      	cmp	r0, #0
 8007fea:	d0e8      	beq.n	8007fbe <__sfvwrite_r+0x222>
 8007fec:	e7c6      	b.n	8007f7c <__sfvwrite_r+0x1e0>
 8007fee:	f10b 0308 	add.w	r3, fp, #8
 8007ff2:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8007ff6:	469b      	mov	fp, r3
 8007ff8:	3308      	adds	r3, #8
 8007ffa:	2f00      	cmp	r7, #0
 8007ffc:	d0f9      	beq.n	8007ff2 <__sfvwrite_r+0x256>
 8007ffe:	463a      	mov	r2, r7
 8008000:	210a      	movs	r1, #10
 8008002:	4630      	mov	r0, r6
 8008004:	f7ff f88c 	bl	8007120 <memchr>
 8008008:	b338      	cbz	r0, 800805a <__sfvwrite_r+0x2be>
 800800a:	3001      	adds	r0, #1
 800800c:	eba0 0906 	sub.w	r9, r0, r6
 8008010:	e783      	b.n	8007f1a <__sfvwrite_r+0x17e>
 8008012:	462f      	mov	r7, r5
 8008014:	46ab      	mov	fp, r5
 8008016:	e757      	b.n	8007ec8 <__sfvwrite_r+0x12c>
 8008018:	4631      	mov	r1, r6
 800801a:	462a      	mov	r2, r5
 800801c:	f000 f888 	bl	8008130 <memmove>
 8008020:	6823      	ldr	r3, [r4, #0]
 8008022:	442b      	add	r3, r5
 8008024:	6023      	str	r3, [r4, #0]
 8008026:	4621      	mov	r1, r4
 8008028:	4650      	mov	r0, sl
 800802a:	f7fe fb2b 	bl	8006684 <_fflush_r>
 800802e:	2800      	cmp	r0, #0
 8008030:	d08b      	beq.n	8007f4a <__sfvwrite_r+0x1ae>
 8008032:	e7a3      	b.n	8007f7c <__sfvwrite_r+0x1e0>
 8008034:	4650      	mov	r0, sl
 8008036:	f000 f8f5 	bl	8008224 <_realloc_r>
 800803a:	4603      	mov	r3, r0
 800803c:	2800      	cmp	r0, #0
 800803e:	f47f af39 	bne.w	8007eb4 <__sfvwrite_r+0x118>
 8008042:	6921      	ldr	r1, [r4, #16]
 8008044:	4650      	mov	r0, sl
 8008046:	f7fe fc1b 	bl	8006880 <_free_r>
 800804a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800804e:	220c      	movs	r2, #12
 8008050:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008054:	f8ca 2000 	str.w	r2, [sl]
 8008058:	e792      	b.n	8007f80 <__sfvwrite_r+0x1e4>
 800805a:	f107 0901 	add.w	r9, r7, #1
 800805e:	e75c      	b.n	8007f1a <__sfvwrite_r+0x17e>
 8008060:	461a      	mov	r2, r3
 8008062:	4631      	mov	r1, r6
 8008064:	9301      	str	r3, [sp, #4]
 8008066:	f000 f863 	bl	8008130 <memmove>
 800806a:	9b01      	ldr	r3, [sp, #4]
 800806c:	68a1      	ldr	r1, [r4, #8]
 800806e:	6822      	ldr	r2, [r4, #0]
 8008070:	1ac9      	subs	r1, r1, r3
 8008072:	441a      	add	r2, r3
 8008074:	60a1      	str	r1, [r4, #8]
 8008076:	6022      	str	r2, [r4, #0]
 8008078:	461d      	mov	r5, r3
 800807a:	e766      	b.n	8007f4a <__sfvwrite_r+0x1ae>
 800807c:	230c      	movs	r3, #12
 800807e:	f8ca 3000 	str.w	r3, [sl]
 8008082:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008086:	e77b      	b.n	8007f80 <__sfvwrite_r+0x1e4>
 8008088:	f04f 30ff 	mov.w	r0, #4294967295
 800808c:	e76b      	b.n	8007f66 <__sfvwrite_r+0x1ca>
 800808e:	bf00      	nop
 8008090:	7ffffffe 	.word	0x7ffffffe
 8008094:	7ffffc00 	.word	0x7ffffc00

08008098 <_isatty_r>:
 8008098:	b538      	push	{r3, r4, r5, lr}
 800809a:	4c07      	ldr	r4, [pc, #28]	; (80080b8 <_isatty_r+0x20>)
 800809c:	2300      	movs	r3, #0
 800809e:	4605      	mov	r5, r0
 80080a0:	4608      	mov	r0, r1
 80080a2:	6023      	str	r3, [r4, #0]
 80080a4:	f7f8 fdae 	bl	8000c04 <_isatty>
 80080a8:	1c43      	adds	r3, r0, #1
 80080aa:	d000      	beq.n	80080ae <_isatty_r+0x16>
 80080ac:	bd38      	pop	{r3, r4, r5, pc}
 80080ae:	6823      	ldr	r3, [r4, #0]
 80080b0:	2b00      	cmp	r3, #0
 80080b2:	d0fb      	beq.n	80080ac <_isatty_r+0x14>
 80080b4:	602b      	str	r3, [r5, #0]
 80080b6:	bd38      	pop	{r3, r4, r5, pc}
 80080b8:	20000c54 	.word	0x20000c54

080080bc <__locale_mb_cur_max>:
 80080bc:	4b04      	ldr	r3, [pc, #16]	; (80080d0 <__locale_mb_cur_max+0x14>)
 80080be:	4a05      	ldr	r2, [pc, #20]	; (80080d4 <__locale_mb_cur_max+0x18>)
 80080c0:	681b      	ldr	r3, [r3, #0]
 80080c2:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80080c4:	2b00      	cmp	r3, #0
 80080c6:	bf08      	it	eq
 80080c8:	4613      	moveq	r3, r2
 80080ca:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80080ce:	4770      	bx	lr
 80080d0:	20000010 	.word	0x20000010
 80080d4:	20000854 	.word	0x20000854

080080d8 <_lseek_r>:
 80080d8:	b570      	push	{r4, r5, r6, lr}
 80080da:	460d      	mov	r5, r1
 80080dc:	4c08      	ldr	r4, [pc, #32]	; (8008100 <_lseek_r+0x28>)
 80080de:	4611      	mov	r1, r2
 80080e0:	4606      	mov	r6, r0
 80080e2:	461a      	mov	r2, r3
 80080e4:	4628      	mov	r0, r5
 80080e6:	2300      	movs	r3, #0
 80080e8:	6023      	str	r3, [r4, #0]
 80080ea:	f7f8 fd96 	bl	8000c1a <_lseek>
 80080ee:	1c43      	adds	r3, r0, #1
 80080f0:	d000      	beq.n	80080f4 <_lseek_r+0x1c>
 80080f2:	bd70      	pop	{r4, r5, r6, pc}
 80080f4:	6823      	ldr	r3, [r4, #0]
 80080f6:	2b00      	cmp	r3, #0
 80080f8:	d0fb      	beq.n	80080f2 <_lseek_r+0x1a>
 80080fa:	6033      	str	r3, [r6, #0]
 80080fc:	bd70      	pop	{r4, r5, r6, pc}
 80080fe:	bf00      	nop
 8008100:	20000c54 	.word	0x20000c54

08008104 <__ascii_mbtowc>:
 8008104:	b082      	sub	sp, #8
 8008106:	b149      	cbz	r1, 800811c <__ascii_mbtowc+0x18>
 8008108:	b15a      	cbz	r2, 8008122 <__ascii_mbtowc+0x1e>
 800810a:	b16b      	cbz	r3, 8008128 <__ascii_mbtowc+0x24>
 800810c:	7813      	ldrb	r3, [r2, #0]
 800810e:	600b      	str	r3, [r1, #0]
 8008110:	7812      	ldrb	r2, [r2, #0]
 8008112:	1c10      	adds	r0, r2, #0
 8008114:	bf18      	it	ne
 8008116:	2001      	movne	r0, #1
 8008118:	b002      	add	sp, #8
 800811a:	4770      	bx	lr
 800811c:	a901      	add	r1, sp, #4
 800811e:	2a00      	cmp	r2, #0
 8008120:	d1f3      	bne.n	800810a <__ascii_mbtowc+0x6>
 8008122:	4610      	mov	r0, r2
 8008124:	b002      	add	sp, #8
 8008126:	4770      	bx	lr
 8008128:	f06f 0001 	mvn.w	r0, #1
 800812c:	e7f4      	b.n	8008118 <__ascii_mbtowc+0x14>
 800812e:	bf00      	nop

08008130 <memmove>:
 8008130:	4288      	cmp	r0, r1
 8008132:	b4f0      	push	{r4, r5, r6, r7}
 8008134:	d90d      	bls.n	8008152 <memmove+0x22>
 8008136:	188b      	adds	r3, r1, r2
 8008138:	4283      	cmp	r3, r0
 800813a:	d90a      	bls.n	8008152 <memmove+0x22>
 800813c:	1884      	adds	r4, r0, r2
 800813e:	b132      	cbz	r2, 800814e <memmove+0x1e>
 8008140:	4622      	mov	r2, r4
 8008142:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8008146:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800814a:	4299      	cmp	r1, r3
 800814c:	d1f9      	bne.n	8008142 <memmove+0x12>
 800814e:	bcf0      	pop	{r4, r5, r6, r7}
 8008150:	4770      	bx	lr
 8008152:	2a0f      	cmp	r2, #15
 8008154:	d949      	bls.n	80081ea <memmove+0xba>
 8008156:	ea40 0301 	orr.w	r3, r0, r1
 800815a:	079b      	lsls	r3, r3, #30
 800815c:	d147      	bne.n	80081ee <memmove+0xbe>
 800815e:	f1a2 0310 	sub.w	r3, r2, #16
 8008162:	091b      	lsrs	r3, r3, #4
 8008164:	f101 0720 	add.w	r7, r1, #32
 8008168:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 800816c:	f101 0410 	add.w	r4, r1, #16
 8008170:	f100 0510 	add.w	r5, r0, #16
 8008174:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008178:	f845 6c10 	str.w	r6, [r5, #-16]
 800817c:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8008180:	f845 6c0c 	str.w	r6, [r5, #-12]
 8008184:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8008188:	f845 6c08 	str.w	r6, [r5, #-8]
 800818c:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8008190:	f845 6c04 	str.w	r6, [r5, #-4]
 8008194:	3410      	adds	r4, #16
 8008196:	42bc      	cmp	r4, r7
 8008198:	f105 0510 	add.w	r5, r5, #16
 800819c:	d1ea      	bne.n	8008174 <memmove+0x44>
 800819e:	3301      	adds	r3, #1
 80081a0:	f002 050f 	and.w	r5, r2, #15
 80081a4:	011b      	lsls	r3, r3, #4
 80081a6:	2d03      	cmp	r5, #3
 80081a8:	4419      	add	r1, r3
 80081aa:	4403      	add	r3, r0
 80081ac:	d921      	bls.n	80081f2 <memmove+0xc2>
 80081ae:	1f1f      	subs	r7, r3, #4
 80081b0:	460e      	mov	r6, r1
 80081b2:	462c      	mov	r4, r5
 80081b4:	3c04      	subs	r4, #4
 80081b6:	f856 cb04 	ldr.w	ip, [r6], #4
 80081ba:	f847 cf04 	str.w	ip, [r7, #4]!
 80081be:	2c03      	cmp	r4, #3
 80081c0:	d8f8      	bhi.n	80081b4 <memmove+0x84>
 80081c2:	1f2c      	subs	r4, r5, #4
 80081c4:	f024 0403 	bic.w	r4, r4, #3
 80081c8:	3404      	adds	r4, #4
 80081ca:	4423      	add	r3, r4
 80081cc:	4421      	add	r1, r4
 80081ce:	f002 0203 	and.w	r2, r2, #3
 80081d2:	2a00      	cmp	r2, #0
 80081d4:	d0bb      	beq.n	800814e <memmove+0x1e>
 80081d6:	3b01      	subs	r3, #1
 80081d8:	440a      	add	r2, r1
 80081da:	f811 4b01 	ldrb.w	r4, [r1], #1
 80081de:	f803 4f01 	strb.w	r4, [r3, #1]!
 80081e2:	4291      	cmp	r1, r2
 80081e4:	d1f9      	bne.n	80081da <memmove+0xaa>
 80081e6:	bcf0      	pop	{r4, r5, r6, r7}
 80081e8:	4770      	bx	lr
 80081ea:	4603      	mov	r3, r0
 80081ec:	e7f1      	b.n	80081d2 <memmove+0xa2>
 80081ee:	4603      	mov	r3, r0
 80081f0:	e7f1      	b.n	80081d6 <memmove+0xa6>
 80081f2:	462a      	mov	r2, r5
 80081f4:	e7ed      	b.n	80081d2 <memmove+0xa2>
 80081f6:	bf00      	nop

080081f8 <_read_r>:
 80081f8:	b570      	push	{r4, r5, r6, lr}
 80081fa:	460d      	mov	r5, r1
 80081fc:	4c08      	ldr	r4, [pc, #32]	; (8008220 <_read_r+0x28>)
 80081fe:	4611      	mov	r1, r2
 8008200:	4606      	mov	r6, r0
 8008202:	461a      	mov	r2, r3
 8008204:	4628      	mov	r0, r5
 8008206:	2300      	movs	r3, #0
 8008208:	6023      	str	r3, [r4, #0]
 800820a:	f7f8 fc7a 	bl	8000b02 <_read>
 800820e:	1c43      	adds	r3, r0, #1
 8008210:	d000      	beq.n	8008214 <_read_r+0x1c>
 8008212:	bd70      	pop	{r4, r5, r6, pc}
 8008214:	6823      	ldr	r3, [r4, #0]
 8008216:	2b00      	cmp	r3, #0
 8008218:	d0fb      	beq.n	8008212 <_read_r+0x1a>
 800821a:	6033      	str	r3, [r6, #0]
 800821c:	bd70      	pop	{r4, r5, r6, pc}
 800821e:	bf00      	nop
 8008220:	20000c54 	.word	0x20000c54

08008224 <_realloc_r>:
 8008224:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008228:	4692      	mov	sl, r2
 800822a:	b083      	sub	sp, #12
 800822c:	2900      	cmp	r1, #0
 800822e:	f000 80a1 	beq.w	8008374 <_realloc_r+0x150>
 8008232:	460d      	mov	r5, r1
 8008234:	4680      	mov	r8, r0
 8008236:	f10a 040b 	add.w	r4, sl, #11
 800823a:	f7fe ffc1 	bl	80071c0 <__malloc_lock>
 800823e:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8008242:	2c16      	cmp	r4, #22
 8008244:	f022 0603 	bic.w	r6, r2, #3
 8008248:	f1a5 0708 	sub.w	r7, r5, #8
 800824c:	d83e      	bhi.n	80082cc <_realloc_r+0xa8>
 800824e:	2410      	movs	r4, #16
 8008250:	4621      	mov	r1, r4
 8008252:	45a2      	cmp	sl, r4
 8008254:	d83f      	bhi.n	80082d6 <_realloc_r+0xb2>
 8008256:	428e      	cmp	r6, r1
 8008258:	eb07 0906 	add.w	r9, r7, r6
 800825c:	da74      	bge.n	8008348 <_realloc_r+0x124>
 800825e:	4bc7      	ldr	r3, [pc, #796]	; (800857c <_realloc_r+0x358>)
 8008260:	6898      	ldr	r0, [r3, #8]
 8008262:	4548      	cmp	r0, r9
 8008264:	f000 80aa 	beq.w	80083bc <_realloc_r+0x198>
 8008268:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800826c:	f020 0301 	bic.w	r3, r0, #1
 8008270:	444b      	add	r3, r9
 8008272:	685b      	ldr	r3, [r3, #4]
 8008274:	07db      	lsls	r3, r3, #31
 8008276:	f140 8083 	bpl.w	8008380 <_realloc_r+0x15c>
 800827a:	07d2      	lsls	r2, r2, #31
 800827c:	d534      	bpl.n	80082e8 <_realloc_r+0xc4>
 800827e:	4651      	mov	r1, sl
 8008280:	4640      	mov	r0, r8
 8008282:	f7fe fca9 	bl	8006bd8 <_malloc_r>
 8008286:	4682      	mov	sl, r0
 8008288:	b1e0      	cbz	r0, 80082c4 <_realloc_r+0xa0>
 800828a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800828e:	f023 0301 	bic.w	r3, r3, #1
 8008292:	443b      	add	r3, r7
 8008294:	f1a0 0208 	sub.w	r2, r0, #8
 8008298:	4293      	cmp	r3, r2
 800829a:	f000 80f9 	beq.w	8008490 <_realloc_r+0x26c>
 800829e:	1f32      	subs	r2, r6, #4
 80082a0:	2a24      	cmp	r2, #36	; 0x24
 80082a2:	f200 8107 	bhi.w	80084b4 <_realloc_r+0x290>
 80082a6:	2a13      	cmp	r2, #19
 80082a8:	6829      	ldr	r1, [r5, #0]
 80082aa:	f200 80e6 	bhi.w	800847a <_realloc_r+0x256>
 80082ae:	4603      	mov	r3, r0
 80082b0:	462a      	mov	r2, r5
 80082b2:	6019      	str	r1, [r3, #0]
 80082b4:	6851      	ldr	r1, [r2, #4]
 80082b6:	6059      	str	r1, [r3, #4]
 80082b8:	6892      	ldr	r2, [r2, #8]
 80082ba:	609a      	str	r2, [r3, #8]
 80082bc:	4629      	mov	r1, r5
 80082be:	4640      	mov	r0, r8
 80082c0:	f7fe fade 	bl	8006880 <_free_r>
 80082c4:	4640      	mov	r0, r8
 80082c6:	f7fe ff81 	bl	80071cc <__malloc_unlock>
 80082ca:	e04f      	b.n	800836c <_realloc_r+0x148>
 80082cc:	f024 0407 	bic.w	r4, r4, #7
 80082d0:	2c00      	cmp	r4, #0
 80082d2:	4621      	mov	r1, r4
 80082d4:	dabd      	bge.n	8008252 <_realloc_r+0x2e>
 80082d6:	f04f 0a00 	mov.w	sl, #0
 80082da:	230c      	movs	r3, #12
 80082dc:	4650      	mov	r0, sl
 80082de:	f8c8 3000 	str.w	r3, [r8]
 80082e2:	b003      	add	sp, #12
 80082e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80082e8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80082ec:	eba7 0b03 	sub.w	fp, r7, r3
 80082f0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80082f4:	f022 0203 	bic.w	r2, r2, #3
 80082f8:	18b3      	adds	r3, r6, r2
 80082fa:	428b      	cmp	r3, r1
 80082fc:	dbbf      	blt.n	800827e <_realloc_r+0x5a>
 80082fe:	46da      	mov	sl, fp
 8008300:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008304:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008308:	1f32      	subs	r2, r6, #4
 800830a:	2a24      	cmp	r2, #36	; 0x24
 800830c:	60c1      	str	r1, [r0, #12]
 800830e:	eb0b 0903 	add.w	r9, fp, r3
 8008312:	6088      	str	r0, [r1, #8]
 8008314:	f200 80c6 	bhi.w	80084a4 <_realloc_r+0x280>
 8008318:	2a13      	cmp	r2, #19
 800831a:	6829      	ldr	r1, [r5, #0]
 800831c:	f240 80c0 	bls.w	80084a0 <_realloc_r+0x27c>
 8008320:	f8cb 1008 	str.w	r1, [fp, #8]
 8008324:	6869      	ldr	r1, [r5, #4]
 8008326:	f8cb 100c 	str.w	r1, [fp, #12]
 800832a:	2a1b      	cmp	r2, #27
 800832c:	68a9      	ldr	r1, [r5, #8]
 800832e:	f200 80d8 	bhi.w	80084e2 <_realloc_r+0x2be>
 8008332:	f10b 0210 	add.w	r2, fp, #16
 8008336:	3508      	adds	r5, #8
 8008338:	6011      	str	r1, [r2, #0]
 800833a:	6869      	ldr	r1, [r5, #4]
 800833c:	6051      	str	r1, [r2, #4]
 800833e:	68a9      	ldr	r1, [r5, #8]
 8008340:	6091      	str	r1, [r2, #8]
 8008342:	461e      	mov	r6, r3
 8008344:	465f      	mov	r7, fp
 8008346:	4655      	mov	r5, sl
 8008348:	687b      	ldr	r3, [r7, #4]
 800834a:	1b32      	subs	r2, r6, r4
 800834c:	2a0f      	cmp	r2, #15
 800834e:	f003 0301 	and.w	r3, r3, #1
 8008352:	d822      	bhi.n	800839a <_realloc_r+0x176>
 8008354:	4333      	orrs	r3, r6
 8008356:	607b      	str	r3, [r7, #4]
 8008358:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800835c:	f043 0301 	orr.w	r3, r3, #1
 8008360:	f8c9 3004 	str.w	r3, [r9, #4]
 8008364:	4640      	mov	r0, r8
 8008366:	f7fe ff31 	bl	80071cc <__malloc_unlock>
 800836a:	46aa      	mov	sl, r5
 800836c:	4650      	mov	r0, sl
 800836e:	b003      	add	sp, #12
 8008370:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008374:	4611      	mov	r1, r2
 8008376:	b003      	add	sp, #12
 8008378:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800837c:	f7fe bc2c 	b.w	8006bd8 <_malloc_r>
 8008380:	f020 0003 	bic.w	r0, r0, #3
 8008384:	1833      	adds	r3, r6, r0
 8008386:	428b      	cmp	r3, r1
 8008388:	db61      	blt.n	800844e <_realloc_r+0x22a>
 800838a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800838e:	461e      	mov	r6, r3
 8008390:	60ca      	str	r2, [r1, #12]
 8008392:	eb07 0903 	add.w	r9, r7, r3
 8008396:	6091      	str	r1, [r2, #8]
 8008398:	e7d6      	b.n	8008348 <_realloc_r+0x124>
 800839a:	1939      	adds	r1, r7, r4
 800839c:	4323      	orrs	r3, r4
 800839e:	f042 0201 	orr.w	r2, r2, #1
 80083a2:	607b      	str	r3, [r7, #4]
 80083a4:	604a      	str	r2, [r1, #4]
 80083a6:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80083aa:	f043 0301 	orr.w	r3, r3, #1
 80083ae:	3108      	adds	r1, #8
 80083b0:	f8c9 3004 	str.w	r3, [r9, #4]
 80083b4:	4640      	mov	r0, r8
 80083b6:	f7fe fa63 	bl	8006880 <_free_r>
 80083ba:	e7d3      	b.n	8008364 <_realloc_r+0x140>
 80083bc:	6840      	ldr	r0, [r0, #4]
 80083be:	f020 0903 	bic.w	r9, r0, #3
 80083c2:	44b1      	add	r9, r6
 80083c4:	f104 0010 	add.w	r0, r4, #16
 80083c8:	4581      	cmp	r9, r0
 80083ca:	da77      	bge.n	80084bc <_realloc_r+0x298>
 80083cc:	07d2      	lsls	r2, r2, #31
 80083ce:	f53f af56 	bmi.w	800827e <_realloc_r+0x5a>
 80083d2:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80083d6:	eba7 0b02 	sub.w	fp, r7, r2
 80083da:	f8db 2004 	ldr.w	r2, [fp, #4]
 80083de:	f022 0203 	bic.w	r2, r2, #3
 80083e2:	4491      	add	r9, r2
 80083e4:	4548      	cmp	r0, r9
 80083e6:	dc87      	bgt.n	80082f8 <_realloc_r+0xd4>
 80083e8:	46da      	mov	sl, fp
 80083ea:	f8db 100c 	ldr.w	r1, [fp, #12]
 80083ee:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80083f2:	1f32      	subs	r2, r6, #4
 80083f4:	2a24      	cmp	r2, #36	; 0x24
 80083f6:	60c1      	str	r1, [r0, #12]
 80083f8:	6088      	str	r0, [r1, #8]
 80083fa:	f200 80a1 	bhi.w	8008540 <_realloc_r+0x31c>
 80083fe:	2a13      	cmp	r2, #19
 8008400:	6829      	ldr	r1, [r5, #0]
 8008402:	f240 809b 	bls.w	800853c <_realloc_r+0x318>
 8008406:	f8cb 1008 	str.w	r1, [fp, #8]
 800840a:	6869      	ldr	r1, [r5, #4]
 800840c:	f8cb 100c 	str.w	r1, [fp, #12]
 8008410:	2a1b      	cmp	r2, #27
 8008412:	68a9      	ldr	r1, [r5, #8]
 8008414:	f200 809b 	bhi.w	800854e <_realloc_r+0x32a>
 8008418:	f10b 0210 	add.w	r2, fp, #16
 800841c:	3508      	adds	r5, #8
 800841e:	6011      	str	r1, [r2, #0]
 8008420:	6869      	ldr	r1, [r5, #4]
 8008422:	6051      	str	r1, [r2, #4]
 8008424:	68a9      	ldr	r1, [r5, #8]
 8008426:	6091      	str	r1, [r2, #8]
 8008428:	eb0b 0104 	add.w	r1, fp, r4
 800842c:	eba9 0204 	sub.w	r2, r9, r4
 8008430:	f042 0201 	orr.w	r2, r2, #1
 8008434:	6099      	str	r1, [r3, #8]
 8008436:	604a      	str	r2, [r1, #4]
 8008438:	f8db 3004 	ldr.w	r3, [fp, #4]
 800843c:	f003 0301 	and.w	r3, r3, #1
 8008440:	431c      	orrs	r4, r3
 8008442:	4640      	mov	r0, r8
 8008444:	f8cb 4004 	str.w	r4, [fp, #4]
 8008448:	f7fe fec0 	bl	80071cc <__malloc_unlock>
 800844c:	e78e      	b.n	800836c <_realloc_r+0x148>
 800844e:	07d3      	lsls	r3, r2, #31
 8008450:	f53f af15 	bmi.w	800827e <_realloc_r+0x5a>
 8008454:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008458:	eba7 0b03 	sub.w	fp, r7, r3
 800845c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008460:	f022 0203 	bic.w	r2, r2, #3
 8008464:	4410      	add	r0, r2
 8008466:	1983      	adds	r3, r0, r6
 8008468:	428b      	cmp	r3, r1
 800846a:	f6ff af45 	blt.w	80082f8 <_realloc_r+0xd4>
 800846e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008472:	46da      	mov	sl, fp
 8008474:	60ca      	str	r2, [r1, #12]
 8008476:	6091      	str	r1, [r2, #8]
 8008478:	e742      	b.n	8008300 <_realloc_r+0xdc>
 800847a:	6001      	str	r1, [r0, #0]
 800847c:	686b      	ldr	r3, [r5, #4]
 800847e:	6043      	str	r3, [r0, #4]
 8008480:	2a1b      	cmp	r2, #27
 8008482:	d83a      	bhi.n	80084fa <_realloc_r+0x2d6>
 8008484:	f105 0208 	add.w	r2, r5, #8
 8008488:	f100 0308 	add.w	r3, r0, #8
 800848c:	68a9      	ldr	r1, [r5, #8]
 800848e:	e710      	b.n	80082b2 <_realloc_r+0x8e>
 8008490:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008494:	f023 0303 	bic.w	r3, r3, #3
 8008498:	441e      	add	r6, r3
 800849a:	eb07 0906 	add.w	r9, r7, r6
 800849e:	e753      	b.n	8008348 <_realloc_r+0x124>
 80084a0:	4652      	mov	r2, sl
 80084a2:	e749      	b.n	8008338 <_realloc_r+0x114>
 80084a4:	4629      	mov	r1, r5
 80084a6:	4650      	mov	r0, sl
 80084a8:	461e      	mov	r6, r3
 80084aa:	465f      	mov	r7, fp
 80084ac:	f7ff fe40 	bl	8008130 <memmove>
 80084b0:	4655      	mov	r5, sl
 80084b2:	e749      	b.n	8008348 <_realloc_r+0x124>
 80084b4:	4629      	mov	r1, r5
 80084b6:	f7ff fe3b 	bl	8008130 <memmove>
 80084ba:	e6ff      	b.n	80082bc <_realloc_r+0x98>
 80084bc:	4427      	add	r7, r4
 80084be:	eba9 0904 	sub.w	r9, r9, r4
 80084c2:	f049 0201 	orr.w	r2, r9, #1
 80084c6:	609f      	str	r7, [r3, #8]
 80084c8:	607a      	str	r2, [r7, #4]
 80084ca:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80084ce:	f003 0301 	and.w	r3, r3, #1
 80084d2:	431c      	orrs	r4, r3
 80084d4:	4640      	mov	r0, r8
 80084d6:	f845 4c04 	str.w	r4, [r5, #-4]
 80084da:	f7fe fe77 	bl	80071cc <__malloc_unlock>
 80084de:	46aa      	mov	sl, r5
 80084e0:	e744      	b.n	800836c <_realloc_r+0x148>
 80084e2:	f8cb 1010 	str.w	r1, [fp, #16]
 80084e6:	68e9      	ldr	r1, [r5, #12]
 80084e8:	f8cb 1014 	str.w	r1, [fp, #20]
 80084ec:	2a24      	cmp	r2, #36	; 0x24
 80084ee:	d010      	beq.n	8008512 <_realloc_r+0x2ee>
 80084f0:	6929      	ldr	r1, [r5, #16]
 80084f2:	f10b 0218 	add.w	r2, fp, #24
 80084f6:	3510      	adds	r5, #16
 80084f8:	e71e      	b.n	8008338 <_realloc_r+0x114>
 80084fa:	68ab      	ldr	r3, [r5, #8]
 80084fc:	6083      	str	r3, [r0, #8]
 80084fe:	68eb      	ldr	r3, [r5, #12]
 8008500:	60c3      	str	r3, [r0, #12]
 8008502:	2a24      	cmp	r2, #36	; 0x24
 8008504:	d010      	beq.n	8008528 <_realloc_r+0x304>
 8008506:	f105 0210 	add.w	r2, r5, #16
 800850a:	f100 0310 	add.w	r3, r0, #16
 800850e:	6929      	ldr	r1, [r5, #16]
 8008510:	e6cf      	b.n	80082b2 <_realloc_r+0x8e>
 8008512:	692a      	ldr	r2, [r5, #16]
 8008514:	f8cb 2018 	str.w	r2, [fp, #24]
 8008518:	696a      	ldr	r2, [r5, #20]
 800851a:	f8cb 201c 	str.w	r2, [fp, #28]
 800851e:	69a9      	ldr	r1, [r5, #24]
 8008520:	f10b 0220 	add.w	r2, fp, #32
 8008524:	3518      	adds	r5, #24
 8008526:	e707      	b.n	8008338 <_realloc_r+0x114>
 8008528:	692b      	ldr	r3, [r5, #16]
 800852a:	6103      	str	r3, [r0, #16]
 800852c:	696b      	ldr	r3, [r5, #20]
 800852e:	6143      	str	r3, [r0, #20]
 8008530:	69a9      	ldr	r1, [r5, #24]
 8008532:	f105 0218 	add.w	r2, r5, #24
 8008536:	f100 0318 	add.w	r3, r0, #24
 800853a:	e6ba      	b.n	80082b2 <_realloc_r+0x8e>
 800853c:	4652      	mov	r2, sl
 800853e:	e76e      	b.n	800841e <_realloc_r+0x1fa>
 8008540:	4629      	mov	r1, r5
 8008542:	4650      	mov	r0, sl
 8008544:	9301      	str	r3, [sp, #4]
 8008546:	f7ff fdf3 	bl	8008130 <memmove>
 800854a:	9b01      	ldr	r3, [sp, #4]
 800854c:	e76c      	b.n	8008428 <_realloc_r+0x204>
 800854e:	f8cb 1010 	str.w	r1, [fp, #16]
 8008552:	68e9      	ldr	r1, [r5, #12]
 8008554:	f8cb 1014 	str.w	r1, [fp, #20]
 8008558:	2a24      	cmp	r2, #36	; 0x24
 800855a:	d004      	beq.n	8008566 <_realloc_r+0x342>
 800855c:	6929      	ldr	r1, [r5, #16]
 800855e:	f10b 0218 	add.w	r2, fp, #24
 8008562:	3510      	adds	r5, #16
 8008564:	e75b      	b.n	800841e <_realloc_r+0x1fa>
 8008566:	692a      	ldr	r2, [r5, #16]
 8008568:	f8cb 2018 	str.w	r2, [fp, #24]
 800856c:	696a      	ldr	r2, [r5, #20]
 800856e:	f8cb 201c 	str.w	r2, [fp, #28]
 8008572:	69a9      	ldr	r1, [r5, #24]
 8008574:	f10b 0220 	add.w	r2, fp, #32
 8008578:	3518      	adds	r5, #24
 800857a:	e750      	b.n	800841e <_realloc_r+0x1fa>
 800857c:	20000444 	.word	0x20000444

08008580 <__swbuf_r>:
 8008580:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008582:	460d      	mov	r5, r1
 8008584:	4614      	mov	r4, r2
 8008586:	4606      	mov	r6, r0
 8008588:	b110      	cbz	r0, 8008590 <__swbuf_r+0x10>
 800858a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800858c:	2b00      	cmp	r3, #0
 800858e:	d043      	beq.n	8008618 <__swbuf_r+0x98>
 8008590:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008594:	69a3      	ldr	r3, [r4, #24]
 8008596:	60a3      	str	r3, [r4, #8]
 8008598:	b291      	uxth	r1, r2
 800859a:	0708      	lsls	r0, r1, #28
 800859c:	d51b      	bpl.n	80085d6 <__swbuf_r+0x56>
 800859e:	6923      	ldr	r3, [r4, #16]
 80085a0:	b1cb      	cbz	r3, 80085d6 <__swbuf_r+0x56>
 80085a2:	b2ed      	uxtb	r5, r5
 80085a4:	0489      	lsls	r1, r1, #18
 80085a6:	462f      	mov	r7, r5
 80085a8:	d522      	bpl.n	80085f0 <__swbuf_r+0x70>
 80085aa:	6822      	ldr	r2, [r4, #0]
 80085ac:	6961      	ldr	r1, [r4, #20]
 80085ae:	1ad3      	subs	r3, r2, r3
 80085b0:	4299      	cmp	r1, r3
 80085b2:	dd29      	ble.n	8008608 <__swbuf_r+0x88>
 80085b4:	3301      	adds	r3, #1
 80085b6:	68a1      	ldr	r1, [r4, #8]
 80085b8:	1c50      	adds	r0, r2, #1
 80085ba:	3901      	subs	r1, #1
 80085bc:	60a1      	str	r1, [r4, #8]
 80085be:	6020      	str	r0, [r4, #0]
 80085c0:	7015      	strb	r5, [r2, #0]
 80085c2:	6962      	ldr	r2, [r4, #20]
 80085c4:	429a      	cmp	r2, r3
 80085c6:	d02a      	beq.n	800861e <__swbuf_r+0x9e>
 80085c8:	89a3      	ldrh	r3, [r4, #12]
 80085ca:	07db      	lsls	r3, r3, #31
 80085cc:	d501      	bpl.n	80085d2 <__swbuf_r+0x52>
 80085ce:	2d0a      	cmp	r5, #10
 80085d0:	d025      	beq.n	800861e <__swbuf_r+0x9e>
 80085d2:	4638      	mov	r0, r7
 80085d4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80085d6:	4621      	mov	r1, r4
 80085d8:	4630      	mov	r0, r6
 80085da:	f7fc ff8d 	bl	80054f8 <__swsetup_r>
 80085de:	bb20      	cbnz	r0, 800862a <__swbuf_r+0xaa>
 80085e0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80085e4:	6923      	ldr	r3, [r4, #16]
 80085e6:	b291      	uxth	r1, r2
 80085e8:	b2ed      	uxtb	r5, r5
 80085ea:	0489      	lsls	r1, r1, #18
 80085ec:	462f      	mov	r7, r5
 80085ee:	d4dc      	bmi.n	80085aa <__swbuf_r+0x2a>
 80085f0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80085f2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80085f6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80085fa:	81a2      	strh	r2, [r4, #12]
 80085fc:	6822      	ldr	r2, [r4, #0]
 80085fe:	6661      	str	r1, [r4, #100]	; 0x64
 8008600:	6961      	ldr	r1, [r4, #20]
 8008602:	1ad3      	subs	r3, r2, r3
 8008604:	4299      	cmp	r1, r3
 8008606:	dcd5      	bgt.n	80085b4 <__swbuf_r+0x34>
 8008608:	4621      	mov	r1, r4
 800860a:	4630      	mov	r0, r6
 800860c:	f7fe f83a 	bl	8006684 <_fflush_r>
 8008610:	b958      	cbnz	r0, 800862a <__swbuf_r+0xaa>
 8008612:	6822      	ldr	r2, [r4, #0]
 8008614:	2301      	movs	r3, #1
 8008616:	e7ce      	b.n	80085b6 <__swbuf_r+0x36>
 8008618:	f7fe f890 	bl	800673c <__sinit>
 800861c:	e7b8      	b.n	8008590 <__swbuf_r+0x10>
 800861e:	4621      	mov	r1, r4
 8008620:	4630      	mov	r0, r6
 8008622:	f7fe f82f 	bl	8006684 <_fflush_r>
 8008626:	2800      	cmp	r0, #0
 8008628:	d0d3      	beq.n	80085d2 <__swbuf_r+0x52>
 800862a:	f04f 37ff 	mov.w	r7, #4294967295
 800862e:	e7d0      	b.n	80085d2 <__swbuf_r+0x52>

08008630 <_wcrtomb_r>:
 8008630:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008632:	4c11      	ldr	r4, [pc, #68]	; (8008678 <_wcrtomb_r+0x48>)
 8008634:	6824      	ldr	r4, [r4, #0]
 8008636:	b085      	sub	sp, #20
 8008638:	4606      	mov	r6, r0
 800863a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800863c:	461f      	mov	r7, r3
 800863e:	b151      	cbz	r1, 8008656 <_wcrtomb_r+0x26>
 8008640:	4d0e      	ldr	r5, [pc, #56]	; (800867c <_wcrtomb_r+0x4c>)
 8008642:	2c00      	cmp	r4, #0
 8008644:	bf08      	it	eq
 8008646:	462c      	moveq	r4, r5
 8008648:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800864c:	47a0      	blx	r4
 800864e:	1c43      	adds	r3, r0, #1
 8008650:	d00c      	beq.n	800866c <_wcrtomb_r+0x3c>
 8008652:	b005      	add	sp, #20
 8008654:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008656:	4a09      	ldr	r2, [pc, #36]	; (800867c <_wcrtomb_r+0x4c>)
 8008658:	2c00      	cmp	r4, #0
 800865a:	bf08      	it	eq
 800865c:	4614      	moveq	r4, r2
 800865e:	460a      	mov	r2, r1
 8008660:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008664:	a901      	add	r1, sp, #4
 8008666:	47a0      	blx	r4
 8008668:	1c43      	adds	r3, r0, #1
 800866a:	d1f2      	bne.n	8008652 <_wcrtomb_r+0x22>
 800866c:	2200      	movs	r2, #0
 800866e:	238a      	movs	r3, #138	; 0x8a
 8008670:	603a      	str	r2, [r7, #0]
 8008672:	6033      	str	r3, [r6, #0]
 8008674:	b005      	add	sp, #20
 8008676:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008678:	20000010 	.word	0x20000010
 800867c:	20000854 	.word	0x20000854

08008680 <__ascii_wctomb>:
 8008680:	b121      	cbz	r1, 800868c <__ascii_wctomb+0xc>
 8008682:	2aff      	cmp	r2, #255	; 0xff
 8008684:	d804      	bhi.n	8008690 <__ascii_wctomb+0x10>
 8008686:	700a      	strb	r2, [r1, #0]
 8008688:	2001      	movs	r0, #1
 800868a:	4770      	bx	lr
 800868c:	4608      	mov	r0, r1
 800868e:	4770      	bx	lr
 8008690:	238a      	movs	r3, #138	; 0x8a
 8008692:	6003      	str	r3, [r0, #0]
 8008694:	f04f 30ff 	mov.w	r0, #4294967295
 8008698:	4770      	bx	lr
 800869a:	bf00      	nop

0800869c <__aeabi_drsub>:
 800869c:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 80086a0:	e002      	b.n	80086a8 <__adddf3>
 80086a2:	bf00      	nop

080086a4 <__aeabi_dsub>:
 80086a4:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

080086a8 <__adddf3>:
 80086a8:	b530      	push	{r4, r5, lr}
 80086aa:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80086ae:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80086b2:	ea94 0f05 	teq	r4, r5
 80086b6:	bf08      	it	eq
 80086b8:	ea90 0f02 	teqeq	r0, r2
 80086bc:	bf1f      	itttt	ne
 80086be:	ea54 0c00 	orrsne.w	ip, r4, r0
 80086c2:	ea55 0c02 	orrsne.w	ip, r5, r2
 80086c6:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 80086ca:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80086ce:	f000 80e2 	beq.w	8008896 <__adddf3+0x1ee>
 80086d2:	ea4f 5454 	mov.w	r4, r4, lsr #21
 80086d6:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80086da:	bfb8      	it	lt
 80086dc:	426d      	neglt	r5, r5
 80086de:	dd0c      	ble.n	80086fa <__adddf3+0x52>
 80086e0:	442c      	add	r4, r5
 80086e2:	ea80 0202 	eor.w	r2, r0, r2
 80086e6:	ea81 0303 	eor.w	r3, r1, r3
 80086ea:	ea82 0000 	eor.w	r0, r2, r0
 80086ee:	ea83 0101 	eor.w	r1, r3, r1
 80086f2:	ea80 0202 	eor.w	r2, r0, r2
 80086f6:	ea81 0303 	eor.w	r3, r1, r3
 80086fa:	2d36      	cmp	r5, #54	; 0x36
 80086fc:	bf88      	it	hi
 80086fe:	bd30      	pophi	{r4, r5, pc}
 8008700:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8008704:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8008708:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 800870c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8008710:	d002      	beq.n	8008718 <__adddf3+0x70>
 8008712:	4240      	negs	r0, r0
 8008714:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8008718:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 800871c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8008720:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8008724:	d002      	beq.n	800872c <__adddf3+0x84>
 8008726:	4252      	negs	r2, r2
 8008728:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 800872c:	ea94 0f05 	teq	r4, r5
 8008730:	f000 80a7 	beq.w	8008882 <__adddf3+0x1da>
 8008734:	f1a4 0401 	sub.w	r4, r4, #1
 8008738:	f1d5 0e20 	rsbs	lr, r5, #32
 800873c:	db0d      	blt.n	800875a <__adddf3+0xb2>
 800873e:	fa02 fc0e 	lsl.w	ip, r2, lr
 8008742:	fa22 f205 	lsr.w	r2, r2, r5
 8008746:	1880      	adds	r0, r0, r2
 8008748:	f141 0100 	adc.w	r1, r1, #0
 800874c:	fa03 f20e 	lsl.w	r2, r3, lr
 8008750:	1880      	adds	r0, r0, r2
 8008752:	fa43 f305 	asr.w	r3, r3, r5
 8008756:	4159      	adcs	r1, r3
 8008758:	e00e      	b.n	8008778 <__adddf3+0xd0>
 800875a:	f1a5 0520 	sub.w	r5, r5, #32
 800875e:	f10e 0e20 	add.w	lr, lr, #32
 8008762:	2a01      	cmp	r2, #1
 8008764:	fa03 fc0e 	lsl.w	ip, r3, lr
 8008768:	bf28      	it	cs
 800876a:	f04c 0c02 	orrcs.w	ip, ip, #2
 800876e:	fa43 f305 	asr.w	r3, r3, r5
 8008772:	18c0      	adds	r0, r0, r3
 8008774:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8008778:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 800877c:	d507      	bpl.n	800878e <__adddf3+0xe6>
 800877e:	f04f 0e00 	mov.w	lr, #0
 8008782:	f1dc 0c00 	rsbs	ip, ip, #0
 8008786:	eb7e 0000 	sbcs.w	r0, lr, r0
 800878a:	eb6e 0101 	sbc.w	r1, lr, r1
 800878e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8008792:	d31b      	bcc.n	80087cc <__adddf3+0x124>
 8008794:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8008798:	d30c      	bcc.n	80087b4 <__adddf3+0x10c>
 800879a:	0849      	lsrs	r1, r1, #1
 800879c:	ea5f 0030 	movs.w	r0, r0, rrx
 80087a0:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80087a4:	f104 0401 	add.w	r4, r4, #1
 80087a8:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80087ac:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 80087b0:	f080 809a 	bcs.w	80088e8 <__adddf3+0x240>
 80087b4:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 80087b8:	bf08      	it	eq
 80087ba:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80087be:	f150 0000 	adcs.w	r0, r0, #0
 80087c2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80087c6:	ea41 0105 	orr.w	r1, r1, r5
 80087ca:	bd30      	pop	{r4, r5, pc}
 80087cc:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 80087d0:	4140      	adcs	r0, r0
 80087d2:	eb41 0101 	adc.w	r1, r1, r1
 80087d6:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80087da:	f1a4 0401 	sub.w	r4, r4, #1
 80087de:	d1e9      	bne.n	80087b4 <__adddf3+0x10c>
 80087e0:	f091 0f00 	teq	r1, #0
 80087e4:	bf04      	itt	eq
 80087e6:	4601      	moveq	r1, r0
 80087e8:	2000      	moveq	r0, #0
 80087ea:	fab1 f381 	clz	r3, r1
 80087ee:	bf08      	it	eq
 80087f0:	3320      	addeq	r3, #32
 80087f2:	f1a3 030b 	sub.w	r3, r3, #11
 80087f6:	f1b3 0220 	subs.w	r2, r3, #32
 80087fa:	da0c      	bge.n	8008816 <__adddf3+0x16e>
 80087fc:	320c      	adds	r2, #12
 80087fe:	dd08      	ble.n	8008812 <__adddf3+0x16a>
 8008800:	f102 0c14 	add.w	ip, r2, #20
 8008804:	f1c2 020c 	rsb	r2, r2, #12
 8008808:	fa01 f00c 	lsl.w	r0, r1, ip
 800880c:	fa21 f102 	lsr.w	r1, r1, r2
 8008810:	e00c      	b.n	800882c <__adddf3+0x184>
 8008812:	f102 0214 	add.w	r2, r2, #20
 8008816:	bfd8      	it	le
 8008818:	f1c2 0c20 	rsble	ip, r2, #32
 800881c:	fa01 f102 	lsl.w	r1, r1, r2
 8008820:	fa20 fc0c 	lsr.w	ip, r0, ip
 8008824:	bfdc      	itt	le
 8008826:	ea41 010c 	orrle.w	r1, r1, ip
 800882a:	4090      	lslle	r0, r2
 800882c:	1ae4      	subs	r4, r4, r3
 800882e:	bfa2      	ittt	ge
 8008830:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8008834:	4329      	orrge	r1, r5
 8008836:	bd30      	popge	{r4, r5, pc}
 8008838:	ea6f 0404 	mvn.w	r4, r4
 800883c:	3c1f      	subs	r4, #31
 800883e:	da1c      	bge.n	800887a <__adddf3+0x1d2>
 8008840:	340c      	adds	r4, #12
 8008842:	dc0e      	bgt.n	8008862 <__adddf3+0x1ba>
 8008844:	f104 0414 	add.w	r4, r4, #20
 8008848:	f1c4 0220 	rsb	r2, r4, #32
 800884c:	fa20 f004 	lsr.w	r0, r0, r4
 8008850:	fa01 f302 	lsl.w	r3, r1, r2
 8008854:	ea40 0003 	orr.w	r0, r0, r3
 8008858:	fa21 f304 	lsr.w	r3, r1, r4
 800885c:	ea45 0103 	orr.w	r1, r5, r3
 8008860:	bd30      	pop	{r4, r5, pc}
 8008862:	f1c4 040c 	rsb	r4, r4, #12
 8008866:	f1c4 0220 	rsb	r2, r4, #32
 800886a:	fa20 f002 	lsr.w	r0, r0, r2
 800886e:	fa01 f304 	lsl.w	r3, r1, r4
 8008872:	ea40 0003 	orr.w	r0, r0, r3
 8008876:	4629      	mov	r1, r5
 8008878:	bd30      	pop	{r4, r5, pc}
 800887a:	fa21 f004 	lsr.w	r0, r1, r4
 800887e:	4629      	mov	r1, r5
 8008880:	bd30      	pop	{r4, r5, pc}
 8008882:	f094 0f00 	teq	r4, #0
 8008886:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 800888a:	bf06      	itte	eq
 800888c:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8008890:	3401      	addeq	r4, #1
 8008892:	3d01      	subne	r5, #1
 8008894:	e74e      	b.n	8008734 <__adddf3+0x8c>
 8008896:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800889a:	bf18      	it	ne
 800889c:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80088a0:	d029      	beq.n	80088f6 <__adddf3+0x24e>
 80088a2:	ea94 0f05 	teq	r4, r5
 80088a6:	bf08      	it	eq
 80088a8:	ea90 0f02 	teqeq	r0, r2
 80088ac:	d005      	beq.n	80088ba <__adddf3+0x212>
 80088ae:	ea54 0c00 	orrs.w	ip, r4, r0
 80088b2:	bf04      	itt	eq
 80088b4:	4619      	moveq	r1, r3
 80088b6:	4610      	moveq	r0, r2
 80088b8:	bd30      	pop	{r4, r5, pc}
 80088ba:	ea91 0f03 	teq	r1, r3
 80088be:	bf1e      	ittt	ne
 80088c0:	2100      	movne	r1, #0
 80088c2:	2000      	movne	r0, #0
 80088c4:	bd30      	popne	{r4, r5, pc}
 80088c6:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 80088ca:	d105      	bne.n	80088d8 <__adddf3+0x230>
 80088cc:	0040      	lsls	r0, r0, #1
 80088ce:	4149      	adcs	r1, r1
 80088d0:	bf28      	it	cs
 80088d2:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 80088d6:	bd30      	pop	{r4, r5, pc}
 80088d8:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 80088dc:	bf3c      	itt	cc
 80088de:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 80088e2:	bd30      	popcc	{r4, r5, pc}
 80088e4:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80088e8:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 80088ec:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80088f0:	f04f 0000 	mov.w	r0, #0
 80088f4:	bd30      	pop	{r4, r5, pc}
 80088f6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80088fa:	bf1a      	itte	ne
 80088fc:	4619      	movne	r1, r3
 80088fe:	4610      	movne	r0, r2
 8008900:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8008904:	bf1c      	itt	ne
 8008906:	460b      	movne	r3, r1
 8008908:	4602      	movne	r2, r0
 800890a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 800890e:	bf06      	itte	eq
 8008910:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8008914:	ea91 0f03 	teqeq	r1, r3
 8008918:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 800891c:	bd30      	pop	{r4, r5, pc}
 800891e:	bf00      	nop

08008920 <__aeabi_ui2d>:
 8008920:	f090 0f00 	teq	r0, #0
 8008924:	bf04      	itt	eq
 8008926:	2100      	moveq	r1, #0
 8008928:	4770      	bxeq	lr
 800892a:	b530      	push	{r4, r5, lr}
 800892c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8008930:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8008934:	f04f 0500 	mov.w	r5, #0
 8008938:	f04f 0100 	mov.w	r1, #0
 800893c:	e750      	b.n	80087e0 <__adddf3+0x138>
 800893e:	bf00      	nop

08008940 <__aeabi_i2d>:
 8008940:	f090 0f00 	teq	r0, #0
 8008944:	bf04      	itt	eq
 8008946:	2100      	moveq	r1, #0
 8008948:	4770      	bxeq	lr
 800894a:	b530      	push	{r4, r5, lr}
 800894c:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8008950:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8008954:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8008958:	bf48      	it	mi
 800895a:	4240      	negmi	r0, r0
 800895c:	f04f 0100 	mov.w	r1, #0
 8008960:	e73e      	b.n	80087e0 <__adddf3+0x138>
 8008962:	bf00      	nop

08008964 <__aeabi_f2d>:
 8008964:	0042      	lsls	r2, r0, #1
 8008966:	ea4f 01e2 	mov.w	r1, r2, asr #3
 800896a:	ea4f 0131 	mov.w	r1, r1, rrx
 800896e:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8008972:	bf1f      	itttt	ne
 8008974:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8008978:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 800897c:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8008980:	4770      	bxne	lr
 8008982:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8008986:	bf08      	it	eq
 8008988:	4770      	bxeq	lr
 800898a:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 800898e:	bf04      	itt	eq
 8008990:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8008994:	4770      	bxeq	lr
 8008996:	b530      	push	{r4, r5, lr}
 8008998:	f44f 7460 	mov.w	r4, #896	; 0x380
 800899c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80089a0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80089a4:	e71c      	b.n	80087e0 <__adddf3+0x138>
 80089a6:	bf00      	nop

080089a8 <__aeabi_ul2d>:
 80089a8:	ea50 0201 	orrs.w	r2, r0, r1
 80089ac:	bf08      	it	eq
 80089ae:	4770      	bxeq	lr
 80089b0:	b530      	push	{r4, r5, lr}
 80089b2:	f04f 0500 	mov.w	r5, #0
 80089b6:	e00a      	b.n	80089ce <__aeabi_l2d+0x16>

080089b8 <__aeabi_l2d>:
 80089b8:	ea50 0201 	orrs.w	r2, r0, r1
 80089bc:	bf08      	it	eq
 80089be:	4770      	bxeq	lr
 80089c0:	b530      	push	{r4, r5, lr}
 80089c2:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 80089c6:	d502      	bpl.n	80089ce <__aeabi_l2d+0x16>
 80089c8:	4240      	negs	r0, r0
 80089ca:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80089ce:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80089d2:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80089d6:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 80089da:	f43f aed8 	beq.w	800878e <__adddf3+0xe6>
 80089de:	f04f 0203 	mov.w	r2, #3
 80089e2:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80089e6:	bf18      	it	ne
 80089e8:	3203      	addne	r2, #3
 80089ea:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 80089ee:	bf18      	it	ne
 80089f0:	3203      	addne	r2, #3
 80089f2:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 80089f6:	f1c2 0320 	rsb	r3, r2, #32
 80089fa:	fa00 fc03 	lsl.w	ip, r0, r3
 80089fe:	fa20 f002 	lsr.w	r0, r0, r2
 8008a02:	fa01 fe03 	lsl.w	lr, r1, r3
 8008a06:	ea40 000e 	orr.w	r0, r0, lr
 8008a0a:	fa21 f102 	lsr.w	r1, r1, r2
 8008a0e:	4414      	add	r4, r2
 8008a10:	e6bd      	b.n	800878e <__adddf3+0xe6>
 8008a12:	bf00      	nop

08008a14 <__aeabi_dmul>:
 8008a14:	b570      	push	{r4, r5, r6, lr}
 8008a16:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8008a1a:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8008a1e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8008a22:	bf1d      	ittte	ne
 8008a24:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8008a28:	ea94 0f0c 	teqne	r4, ip
 8008a2c:	ea95 0f0c 	teqne	r5, ip
 8008a30:	f000 f8de 	bleq	8008bf0 <__aeabi_dmul+0x1dc>
 8008a34:	442c      	add	r4, r5
 8008a36:	ea81 0603 	eor.w	r6, r1, r3
 8008a3a:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8008a3e:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8008a42:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8008a46:	bf18      	it	ne
 8008a48:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8008a4c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8008a50:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8008a54:	d038      	beq.n	8008ac8 <__aeabi_dmul+0xb4>
 8008a56:	fba0 ce02 	umull	ip, lr, r0, r2
 8008a5a:	f04f 0500 	mov.w	r5, #0
 8008a5e:	fbe1 e502 	umlal	lr, r5, r1, r2
 8008a62:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8008a66:	fbe0 e503 	umlal	lr, r5, r0, r3
 8008a6a:	f04f 0600 	mov.w	r6, #0
 8008a6e:	fbe1 5603 	umlal	r5, r6, r1, r3
 8008a72:	f09c 0f00 	teq	ip, #0
 8008a76:	bf18      	it	ne
 8008a78:	f04e 0e01 	orrne.w	lr, lr, #1
 8008a7c:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8008a80:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8008a84:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8008a88:	d204      	bcs.n	8008a94 <__aeabi_dmul+0x80>
 8008a8a:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8008a8e:	416d      	adcs	r5, r5
 8008a90:	eb46 0606 	adc.w	r6, r6, r6
 8008a94:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8008a98:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8008a9c:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8008aa0:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8008aa4:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8008aa8:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8008aac:	bf88      	it	hi
 8008aae:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8008ab2:	d81e      	bhi.n	8008af2 <__aeabi_dmul+0xde>
 8008ab4:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8008ab8:	bf08      	it	eq
 8008aba:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8008abe:	f150 0000 	adcs.w	r0, r0, #0
 8008ac2:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8008ac6:	bd70      	pop	{r4, r5, r6, pc}
 8008ac8:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8008acc:	ea46 0101 	orr.w	r1, r6, r1
 8008ad0:	ea40 0002 	orr.w	r0, r0, r2
 8008ad4:	ea81 0103 	eor.w	r1, r1, r3
 8008ad8:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8008adc:	bfc2      	ittt	gt
 8008ade:	ebd4 050c 	rsbsgt	r5, r4, ip
 8008ae2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8008ae6:	bd70      	popgt	{r4, r5, r6, pc}
 8008ae8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8008aec:	f04f 0e00 	mov.w	lr, #0
 8008af0:	3c01      	subs	r4, #1
 8008af2:	f300 80ab 	bgt.w	8008c4c <__aeabi_dmul+0x238>
 8008af6:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8008afa:	bfde      	ittt	le
 8008afc:	2000      	movle	r0, #0
 8008afe:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8008b02:	bd70      	pople	{r4, r5, r6, pc}
 8008b04:	f1c4 0400 	rsb	r4, r4, #0
 8008b08:	3c20      	subs	r4, #32
 8008b0a:	da35      	bge.n	8008b78 <__aeabi_dmul+0x164>
 8008b0c:	340c      	adds	r4, #12
 8008b0e:	dc1b      	bgt.n	8008b48 <__aeabi_dmul+0x134>
 8008b10:	f104 0414 	add.w	r4, r4, #20
 8008b14:	f1c4 0520 	rsb	r5, r4, #32
 8008b18:	fa00 f305 	lsl.w	r3, r0, r5
 8008b1c:	fa20 f004 	lsr.w	r0, r0, r4
 8008b20:	fa01 f205 	lsl.w	r2, r1, r5
 8008b24:	ea40 0002 	orr.w	r0, r0, r2
 8008b28:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8008b2c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8008b30:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8008b34:	fa21 f604 	lsr.w	r6, r1, r4
 8008b38:	eb42 0106 	adc.w	r1, r2, r6
 8008b3c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8008b40:	bf08      	it	eq
 8008b42:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8008b46:	bd70      	pop	{r4, r5, r6, pc}
 8008b48:	f1c4 040c 	rsb	r4, r4, #12
 8008b4c:	f1c4 0520 	rsb	r5, r4, #32
 8008b50:	fa00 f304 	lsl.w	r3, r0, r4
 8008b54:	fa20 f005 	lsr.w	r0, r0, r5
 8008b58:	fa01 f204 	lsl.w	r2, r1, r4
 8008b5c:	ea40 0002 	orr.w	r0, r0, r2
 8008b60:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008b64:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8008b68:	f141 0100 	adc.w	r1, r1, #0
 8008b6c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8008b70:	bf08      	it	eq
 8008b72:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8008b76:	bd70      	pop	{r4, r5, r6, pc}
 8008b78:	f1c4 0520 	rsb	r5, r4, #32
 8008b7c:	fa00 f205 	lsl.w	r2, r0, r5
 8008b80:	ea4e 0e02 	orr.w	lr, lr, r2
 8008b84:	fa20 f304 	lsr.w	r3, r0, r4
 8008b88:	fa01 f205 	lsl.w	r2, r1, r5
 8008b8c:	ea43 0302 	orr.w	r3, r3, r2
 8008b90:	fa21 f004 	lsr.w	r0, r1, r4
 8008b94:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008b98:	fa21 f204 	lsr.w	r2, r1, r4
 8008b9c:	ea20 0002 	bic.w	r0, r0, r2
 8008ba0:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8008ba4:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8008ba8:	bf08      	it	eq
 8008baa:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8008bae:	bd70      	pop	{r4, r5, r6, pc}
 8008bb0:	f094 0f00 	teq	r4, #0
 8008bb4:	d10f      	bne.n	8008bd6 <__aeabi_dmul+0x1c2>
 8008bb6:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8008bba:	0040      	lsls	r0, r0, #1
 8008bbc:	eb41 0101 	adc.w	r1, r1, r1
 8008bc0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8008bc4:	bf08      	it	eq
 8008bc6:	3c01      	subeq	r4, #1
 8008bc8:	d0f7      	beq.n	8008bba <__aeabi_dmul+0x1a6>
 8008bca:	ea41 0106 	orr.w	r1, r1, r6
 8008bce:	f095 0f00 	teq	r5, #0
 8008bd2:	bf18      	it	ne
 8008bd4:	4770      	bxne	lr
 8008bd6:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8008bda:	0052      	lsls	r2, r2, #1
 8008bdc:	eb43 0303 	adc.w	r3, r3, r3
 8008be0:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8008be4:	bf08      	it	eq
 8008be6:	3d01      	subeq	r5, #1
 8008be8:	d0f7      	beq.n	8008bda <__aeabi_dmul+0x1c6>
 8008bea:	ea43 0306 	orr.w	r3, r3, r6
 8008bee:	4770      	bx	lr
 8008bf0:	ea94 0f0c 	teq	r4, ip
 8008bf4:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8008bf8:	bf18      	it	ne
 8008bfa:	ea95 0f0c 	teqne	r5, ip
 8008bfe:	d00c      	beq.n	8008c1a <__aeabi_dmul+0x206>
 8008c00:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8008c04:	bf18      	it	ne
 8008c06:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8008c0a:	d1d1      	bne.n	8008bb0 <__aeabi_dmul+0x19c>
 8008c0c:	ea81 0103 	eor.w	r1, r1, r3
 8008c10:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008c14:	f04f 0000 	mov.w	r0, #0
 8008c18:	bd70      	pop	{r4, r5, r6, pc}
 8008c1a:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8008c1e:	bf06      	itte	eq
 8008c20:	4610      	moveq	r0, r2
 8008c22:	4619      	moveq	r1, r3
 8008c24:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8008c28:	d019      	beq.n	8008c5e <__aeabi_dmul+0x24a>
 8008c2a:	ea94 0f0c 	teq	r4, ip
 8008c2e:	d102      	bne.n	8008c36 <__aeabi_dmul+0x222>
 8008c30:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8008c34:	d113      	bne.n	8008c5e <__aeabi_dmul+0x24a>
 8008c36:	ea95 0f0c 	teq	r5, ip
 8008c3a:	d105      	bne.n	8008c48 <__aeabi_dmul+0x234>
 8008c3c:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8008c40:	bf1c      	itt	ne
 8008c42:	4610      	movne	r0, r2
 8008c44:	4619      	movne	r1, r3
 8008c46:	d10a      	bne.n	8008c5e <__aeabi_dmul+0x24a>
 8008c48:	ea81 0103 	eor.w	r1, r1, r3
 8008c4c:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8008c50:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8008c54:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8008c58:	f04f 0000 	mov.w	r0, #0
 8008c5c:	bd70      	pop	{r4, r5, r6, pc}
 8008c5e:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8008c62:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8008c66:	bd70      	pop	{r4, r5, r6, pc}

08008c68 <__aeabi_ddiv>:
 8008c68:	b570      	push	{r4, r5, r6, lr}
 8008c6a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8008c6e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8008c72:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8008c76:	bf1d      	ittte	ne
 8008c78:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8008c7c:	ea94 0f0c 	teqne	r4, ip
 8008c80:	ea95 0f0c 	teqne	r5, ip
 8008c84:	f000 f8a7 	bleq	8008dd6 <__aeabi_ddiv+0x16e>
 8008c88:	eba4 0405 	sub.w	r4, r4, r5
 8008c8c:	ea81 0e03 	eor.w	lr, r1, r3
 8008c90:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8008c94:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8008c98:	f000 8088 	beq.w	8008dac <__aeabi_ddiv+0x144>
 8008c9c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8008ca0:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8008ca4:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8008ca8:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8008cac:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8008cb0:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8008cb4:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8008cb8:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8008cbc:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8008cc0:	429d      	cmp	r5, r3
 8008cc2:	bf08      	it	eq
 8008cc4:	4296      	cmpeq	r6, r2
 8008cc6:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8008cca:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8008cce:	d202      	bcs.n	8008cd6 <__aeabi_ddiv+0x6e>
 8008cd0:	085b      	lsrs	r3, r3, #1
 8008cd2:	ea4f 0232 	mov.w	r2, r2, rrx
 8008cd6:	1ab6      	subs	r6, r6, r2
 8008cd8:	eb65 0503 	sbc.w	r5, r5, r3
 8008cdc:	085b      	lsrs	r3, r3, #1
 8008cde:	ea4f 0232 	mov.w	r2, r2, rrx
 8008ce2:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8008ce6:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8008cea:	ebb6 0e02 	subs.w	lr, r6, r2
 8008cee:	eb75 0e03 	sbcs.w	lr, r5, r3
 8008cf2:	bf22      	ittt	cs
 8008cf4:	1ab6      	subcs	r6, r6, r2
 8008cf6:	4675      	movcs	r5, lr
 8008cf8:	ea40 000c 	orrcs.w	r0, r0, ip
 8008cfc:	085b      	lsrs	r3, r3, #1
 8008cfe:	ea4f 0232 	mov.w	r2, r2, rrx
 8008d02:	ebb6 0e02 	subs.w	lr, r6, r2
 8008d06:	eb75 0e03 	sbcs.w	lr, r5, r3
 8008d0a:	bf22      	ittt	cs
 8008d0c:	1ab6      	subcs	r6, r6, r2
 8008d0e:	4675      	movcs	r5, lr
 8008d10:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8008d14:	085b      	lsrs	r3, r3, #1
 8008d16:	ea4f 0232 	mov.w	r2, r2, rrx
 8008d1a:	ebb6 0e02 	subs.w	lr, r6, r2
 8008d1e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8008d22:	bf22      	ittt	cs
 8008d24:	1ab6      	subcs	r6, r6, r2
 8008d26:	4675      	movcs	r5, lr
 8008d28:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8008d2c:	085b      	lsrs	r3, r3, #1
 8008d2e:	ea4f 0232 	mov.w	r2, r2, rrx
 8008d32:	ebb6 0e02 	subs.w	lr, r6, r2
 8008d36:	eb75 0e03 	sbcs.w	lr, r5, r3
 8008d3a:	bf22      	ittt	cs
 8008d3c:	1ab6      	subcs	r6, r6, r2
 8008d3e:	4675      	movcs	r5, lr
 8008d40:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8008d44:	ea55 0e06 	orrs.w	lr, r5, r6
 8008d48:	d018      	beq.n	8008d7c <__aeabi_ddiv+0x114>
 8008d4a:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8008d4e:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8008d52:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8008d56:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8008d5a:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8008d5e:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8008d62:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8008d66:	d1c0      	bne.n	8008cea <__aeabi_ddiv+0x82>
 8008d68:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8008d6c:	d10b      	bne.n	8008d86 <__aeabi_ddiv+0x11e>
 8008d6e:	ea41 0100 	orr.w	r1, r1, r0
 8008d72:	f04f 0000 	mov.w	r0, #0
 8008d76:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8008d7a:	e7b6      	b.n	8008cea <__aeabi_ddiv+0x82>
 8008d7c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8008d80:	bf04      	itt	eq
 8008d82:	4301      	orreq	r1, r0
 8008d84:	2000      	moveq	r0, #0
 8008d86:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8008d8a:	bf88      	it	hi
 8008d8c:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8008d90:	f63f aeaf 	bhi.w	8008af2 <__aeabi_dmul+0xde>
 8008d94:	ebb5 0c03 	subs.w	ip, r5, r3
 8008d98:	bf04      	itt	eq
 8008d9a:	ebb6 0c02 	subseq.w	ip, r6, r2
 8008d9e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8008da2:	f150 0000 	adcs.w	r0, r0, #0
 8008da6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8008daa:	bd70      	pop	{r4, r5, r6, pc}
 8008dac:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8008db0:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8008db4:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8008db8:	bfc2      	ittt	gt
 8008dba:	ebd4 050c 	rsbsgt	r5, r4, ip
 8008dbe:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8008dc2:	bd70      	popgt	{r4, r5, r6, pc}
 8008dc4:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8008dc8:	f04f 0e00 	mov.w	lr, #0
 8008dcc:	3c01      	subs	r4, #1
 8008dce:	e690      	b.n	8008af2 <__aeabi_dmul+0xde>
 8008dd0:	ea45 0e06 	orr.w	lr, r5, r6
 8008dd4:	e68d      	b.n	8008af2 <__aeabi_dmul+0xde>
 8008dd6:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8008dda:	ea94 0f0c 	teq	r4, ip
 8008dde:	bf08      	it	eq
 8008de0:	ea95 0f0c 	teqeq	r5, ip
 8008de4:	f43f af3b 	beq.w	8008c5e <__aeabi_dmul+0x24a>
 8008de8:	ea94 0f0c 	teq	r4, ip
 8008dec:	d10a      	bne.n	8008e04 <__aeabi_ddiv+0x19c>
 8008dee:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8008df2:	f47f af34 	bne.w	8008c5e <__aeabi_dmul+0x24a>
 8008df6:	ea95 0f0c 	teq	r5, ip
 8008dfa:	f47f af25 	bne.w	8008c48 <__aeabi_dmul+0x234>
 8008dfe:	4610      	mov	r0, r2
 8008e00:	4619      	mov	r1, r3
 8008e02:	e72c      	b.n	8008c5e <__aeabi_dmul+0x24a>
 8008e04:	ea95 0f0c 	teq	r5, ip
 8008e08:	d106      	bne.n	8008e18 <__aeabi_ddiv+0x1b0>
 8008e0a:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8008e0e:	f43f aefd 	beq.w	8008c0c <__aeabi_dmul+0x1f8>
 8008e12:	4610      	mov	r0, r2
 8008e14:	4619      	mov	r1, r3
 8008e16:	e722      	b.n	8008c5e <__aeabi_dmul+0x24a>
 8008e18:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8008e1c:	bf18      	it	ne
 8008e1e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8008e22:	f47f aec5 	bne.w	8008bb0 <__aeabi_dmul+0x19c>
 8008e26:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8008e2a:	f47f af0d 	bne.w	8008c48 <__aeabi_dmul+0x234>
 8008e2e:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8008e32:	f47f aeeb 	bne.w	8008c0c <__aeabi_dmul+0x1f8>
 8008e36:	e712      	b.n	8008c5e <__aeabi_dmul+0x24a>

08008e38 <__gedf2>:
 8008e38:	f04f 3cff 	mov.w	ip, #4294967295
 8008e3c:	e006      	b.n	8008e4c <__cmpdf2+0x4>
 8008e3e:	bf00      	nop

08008e40 <__ledf2>:
 8008e40:	f04f 0c01 	mov.w	ip, #1
 8008e44:	e002      	b.n	8008e4c <__cmpdf2+0x4>
 8008e46:	bf00      	nop

08008e48 <__cmpdf2>:
 8008e48:	f04f 0c01 	mov.w	ip, #1
 8008e4c:	f84d cd04 	str.w	ip, [sp, #-4]!
 8008e50:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8008e54:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008e58:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8008e5c:	bf18      	it	ne
 8008e5e:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8008e62:	d01b      	beq.n	8008e9c <__cmpdf2+0x54>
 8008e64:	b001      	add	sp, #4
 8008e66:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8008e6a:	bf0c      	ite	eq
 8008e6c:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8008e70:	ea91 0f03 	teqne	r1, r3
 8008e74:	bf02      	ittt	eq
 8008e76:	ea90 0f02 	teqeq	r0, r2
 8008e7a:	2000      	moveq	r0, #0
 8008e7c:	4770      	bxeq	lr
 8008e7e:	f110 0f00 	cmn.w	r0, #0
 8008e82:	ea91 0f03 	teq	r1, r3
 8008e86:	bf58      	it	pl
 8008e88:	4299      	cmppl	r1, r3
 8008e8a:	bf08      	it	eq
 8008e8c:	4290      	cmpeq	r0, r2
 8008e8e:	bf2c      	ite	cs
 8008e90:	17d8      	asrcs	r0, r3, #31
 8008e92:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8008e96:	f040 0001 	orr.w	r0, r0, #1
 8008e9a:	4770      	bx	lr
 8008e9c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8008ea0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008ea4:	d102      	bne.n	8008eac <__cmpdf2+0x64>
 8008ea6:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8008eaa:	d107      	bne.n	8008ebc <__cmpdf2+0x74>
 8008eac:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8008eb0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008eb4:	d1d6      	bne.n	8008e64 <__cmpdf2+0x1c>
 8008eb6:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8008eba:	d0d3      	beq.n	8008e64 <__cmpdf2+0x1c>
 8008ebc:	f85d 0b04 	ldr.w	r0, [sp], #4
 8008ec0:	4770      	bx	lr
 8008ec2:	bf00      	nop

08008ec4 <__aeabi_cdrcmple>:
 8008ec4:	4684      	mov	ip, r0
 8008ec6:	4610      	mov	r0, r2
 8008ec8:	4662      	mov	r2, ip
 8008eca:	468c      	mov	ip, r1
 8008ecc:	4619      	mov	r1, r3
 8008ece:	4663      	mov	r3, ip
 8008ed0:	e000      	b.n	8008ed4 <__aeabi_cdcmpeq>
 8008ed2:	bf00      	nop

08008ed4 <__aeabi_cdcmpeq>:
 8008ed4:	b501      	push	{r0, lr}
 8008ed6:	f7ff ffb7 	bl	8008e48 <__cmpdf2>
 8008eda:	2800      	cmp	r0, #0
 8008edc:	bf48      	it	mi
 8008ede:	f110 0f00 	cmnmi.w	r0, #0
 8008ee2:	bd01      	pop	{r0, pc}

08008ee4 <__aeabi_dcmpeq>:
 8008ee4:	f84d ed08 	str.w	lr, [sp, #-8]!
 8008ee8:	f7ff fff4 	bl	8008ed4 <__aeabi_cdcmpeq>
 8008eec:	bf0c      	ite	eq
 8008eee:	2001      	moveq	r0, #1
 8008ef0:	2000      	movne	r0, #0
 8008ef2:	f85d fb08 	ldr.w	pc, [sp], #8
 8008ef6:	bf00      	nop

08008ef8 <__aeabi_dcmplt>:
 8008ef8:	f84d ed08 	str.w	lr, [sp, #-8]!
 8008efc:	f7ff ffea 	bl	8008ed4 <__aeabi_cdcmpeq>
 8008f00:	bf34      	ite	cc
 8008f02:	2001      	movcc	r0, #1
 8008f04:	2000      	movcs	r0, #0
 8008f06:	f85d fb08 	ldr.w	pc, [sp], #8
 8008f0a:	bf00      	nop

08008f0c <__aeabi_dcmple>:
 8008f0c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8008f10:	f7ff ffe0 	bl	8008ed4 <__aeabi_cdcmpeq>
 8008f14:	bf94      	ite	ls
 8008f16:	2001      	movls	r0, #1
 8008f18:	2000      	movhi	r0, #0
 8008f1a:	f85d fb08 	ldr.w	pc, [sp], #8
 8008f1e:	bf00      	nop

08008f20 <__aeabi_dcmpge>:
 8008f20:	f84d ed08 	str.w	lr, [sp, #-8]!
 8008f24:	f7ff ffce 	bl	8008ec4 <__aeabi_cdrcmple>
 8008f28:	bf94      	ite	ls
 8008f2a:	2001      	movls	r0, #1
 8008f2c:	2000      	movhi	r0, #0
 8008f2e:	f85d fb08 	ldr.w	pc, [sp], #8
 8008f32:	bf00      	nop

08008f34 <__aeabi_dcmpgt>:
 8008f34:	f84d ed08 	str.w	lr, [sp, #-8]!
 8008f38:	f7ff ffc4 	bl	8008ec4 <__aeabi_cdrcmple>
 8008f3c:	bf34      	ite	cc
 8008f3e:	2001      	movcc	r0, #1
 8008f40:	2000      	movcs	r0, #0
 8008f42:	f85d fb08 	ldr.w	pc, [sp], #8
 8008f46:	bf00      	nop

08008f48 <__aeabi_dcmpun>:
 8008f48:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8008f4c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008f50:	d102      	bne.n	8008f58 <__aeabi_dcmpun+0x10>
 8008f52:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8008f56:	d10a      	bne.n	8008f6e <__aeabi_dcmpun+0x26>
 8008f58:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8008f5c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8008f60:	d102      	bne.n	8008f68 <__aeabi_dcmpun+0x20>
 8008f62:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8008f66:	d102      	bne.n	8008f6e <__aeabi_dcmpun+0x26>
 8008f68:	f04f 0000 	mov.w	r0, #0
 8008f6c:	4770      	bx	lr
 8008f6e:	f04f 0001 	mov.w	r0, #1
 8008f72:	4770      	bx	lr

08008f74 <__aeabi_d2iz>:
 8008f74:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8008f78:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8008f7c:	d215      	bcs.n	8008faa <__aeabi_d2iz+0x36>
 8008f7e:	d511      	bpl.n	8008fa4 <__aeabi_d2iz+0x30>
 8008f80:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8008f84:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8008f88:	d912      	bls.n	8008fb0 <__aeabi_d2iz+0x3c>
 8008f8a:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8008f8e:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8008f92:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8008f96:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8008f9a:	fa23 f002 	lsr.w	r0, r3, r2
 8008f9e:	bf18      	it	ne
 8008fa0:	4240      	negne	r0, r0
 8008fa2:	4770      	bx	lr
 8008fa4:	f04f 0000 	mov.w	r0, #0
 8008fa8:	4770      	bx	lr
 8008faa:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8008fae:	d105      	bne.n	8008fbc <__aeabi_d2iz+0x48>
 8008fb0:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8008fb4:	bf08      	it	eq
 8008fb6:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8008fba:	4770      	bx	lr
 8008fbc:	f04f 0000 	mov.w	r0, #0
 8008fc0:	4770      	bx	lr
 8008fc2:	bf00      	nop

08008fc4 <_init>:
 8008fc4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008fc6:	bf00      	nop
 8008fc8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008fca:	bc08      	pop	{r3}
 8008fcc:	469e      	mov	lr, r3
 8008fce:	4770      	bx	lr

08008fd0 <_fini>:
 8008fd0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008fd2:	bf00      	nop
 8008fd4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008fd6:	bc08      	pop	{r3}
 8008fd8:	469e      	mov	lr, r3
 8008fda:	4770      	bx	lr
 8008fdc:	40020000 	.word	0x40020000
 8008fe0:	00000001 	.word	0x00000001
 8008fe4:	40020000 	.word	0x40020000
 8008fe8:	00000002 	.word	0x00000002
 8008fec:	40020000 	.word	0x40020000
 8008ff0:	00000010 	.word	0x00000010
 8008ff4:	40020400 	.word	0x40020400
 8008ff8:	00000001 	.word	0x00000001
 8008ffc:	5d73255b 	.word	0x5d73255b
 8009000:	0000000a 	.word	0x0000000a

08009004 <__func__.11164>:
 8009004:	64726148 6c756146 61485f74 656c646e     HardFault_Handle
 8009014:	00000072                                r...

08009018 <AHBPrescTable>:
	...
 8009020:	04030201 09080706                       ........

08009028 <APBPrescTable>:
 8009028:	00000000 04030201                       ........

08009030 <flagBitshiftOffset.10106>:
 8009030:	16100600 16100600 72646461 2578303a     ........addr:0x%
 8009040:	61762078 3a65756c 78257830 00000a0d     x value:0x%x....
 8009050:	64253a7a 0000000a 64612020 203a7264     z:%d....  addr: 
 8009060:	6c383025 20202078 74616420 25203a61     %08lx    data: %
 8009070:	786c3830 0000000a 3d3d3d3d 3d3d3d3d     08lx....========
 8009080:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
 8009090:	3d3d3d3d 3d3d3d3d 3d3d3d3d 0000000a     ============....
 80090a0:	4f525245 55203a52 6c62616e 6f742065     ERROR: Unable to
 80090b0:	74656720 65687420 69616d20 7473206e      get the main st
 80090c0:	206b6361 6f666e69 74616d72 2c6e6f69     ack information,
 80090d0:	656c7020 20657361 63656863 6874206b      please check th
 80090e0:	6f632065 6769666e 74617275 206e6f69     e configuration 
 80090f0:	7420666f 6d206568 206e6961 63617473     of the main stac
 8009100:	0000006b 6d726946 65726177 6d616e20     k...Firmware nam
 8009110:	25203a65 68202c73 77647261 20657261     e: %s, hardware 
 8009120:	73726576 3a6e6f69 2c732520 666f7320     version: %s, sof
 8009130:	72617774 65762065 6f697372 25203a6e     tware version: %
 8009140:	00000073 65737341 6f207472 6874206e     s...Assert on th
 8009150:	64616572 00732520 65737341 6f207472     read %s.Assert o
 8009160:	6e69206e 72726574 20747075 6220726f     n interrupt or b
 8009170:	20657261 6174656d 6f6e286c 29534f20     are metal(no OS)
 8009180:	766e6520 6e6f7269 746e656d 00000000      environment....
 8009190:	3d3d3d3d 6854203d 64616572 61747320     ===== Thread sta
 80091a0:	69206b63 726f666e 6974616d 3d206e6f     ck information =
 80091b0:	3d3d3d3d 00000000 3d3d3d3d 4d203d3d     ====....====== M
 80091c0:	206e6961 63617473 6e69206b 6d726f66     ain stack inform
 80091d0:	6f697461 3d3d206e 3d3d3d3d 00000000     ation ======....
 80091e0:	6f727245 54203a72 61657268 74732064     Error: Thread st
 80091f0:	286b6361 78383025 61772029 766f2073     ack(%08x) was ov
 8009200:	6c667265 0000776f 6f727245 4d203a72     erflow..Error: M
 8009210:	206e6961 63617473 3025286b 20297838     ain stack(%08x) 
 8009220:	20736177 7265766f 776f6c66 00000000     was overflow....
 8009230:	776f6853 726f6d20 61632065 73206c6c     Show more call s
 8009240:	6b636174 666e6920 7962206f 6e757220     tack info by run
 8009250:	6461203a 6c327264 20656e69 2520652d     : addr2line -e %
 8009260:	20732573 2d20612d 2e252066 0000732a     s%s -a -f %.*s..
 8009270:	706d7544 6c616320 7473206c 206b6361     Dump call stack 
 8009280:	20736168 65206e61 726f7272 00000000     has an error....
 8009290:	6c756146 6e6f2074 72687420 20646165     Fault on thread 
 80092a0:	00007325 6c756146 6e6f2074 746e6920     %s..Fault on int
 80092b0:	75727265 6f207470 61622072 6d206572     errupt or bare m
 80092c0:	6c617465 206f6e28 2029534f 69766e65     etal(no OS) envi
 80092d0:	6d6e6f72 00746e65 3d3d3d3d 3d3d3d3d     ronment.========
 80092e0:	3d3d3d3d 3d3d3d3d 203d3d3d 69676552     =========== Regi
 80092f0:	72657473 6e692073 6d726f66 6f697461     sters informatio
 8009300:	3d3d206e 3d3d3d3d 3d3d3d3d 3d3d3d3d     n ==============
 8009310:	3d3d3d3d 00003d3d 64726148 75616620     ======..Hard fau
 8009320:	6920746c 61632073 64657375 20796220     lt is caused by 
 8009330:	6c696166 76206465 6f746365 65662072     failed vector fe
 8009340:	00686374 6f6d654d 6d207972 67616e61     tch.Memory manag
 8009350:	6e656d65 61662074 20746c75 63207369     ement fault is c
 8009360:	65737561 79622064 736e6920 63757274     aused by instruc
 8009370:	6e6f6974 63636120 20737365 6c6f6976     tion access viol
 8009380:	6f697461 0000006e 6f6d654d 6d207972     ation...Memory m
 8009390:	67616e61 6e656d65 61662074 20746c75     anagement fault 
 80093a0:	63207369 65737561 79622064 74616420     is caused by dat
 80093b0:	63612061 73736563 6f697620 6974616c     a access violati
 80093c0:	00006e6f 6f6d654d 6d207972 67616e61     on..Memory manag
 80093d0:	6e656d65 61662074 20746c75 63207369     ement fault is c
 80093e0:	65737561 79622064 736e7520 6b636174     aused by unstack
 80093f0:	20676e69 6f727265 00000072 6f6d654d     ing error...Memo
 8009400:	6d207972 67616e61 6e656d65 61662074     ry management fa
 8009410:	20746c75 63207369 65737561 79622064     ult is caused by
 8009420:	61747320 6e696b63 72652067 00726f72      stacking error.
 8009430:	6f6d654d 6d207972 67616e61 6e656d65     Memory managemen
 8009440:	61662074 20746c75 63207369 65737561     t fault is cause
 8009450:	79622064 6f6c6620 6e697461 6f702d67     d by floating-po
 8009460:	20746e69 797a616c 61747320 70206574     int lazy state p
 8009470:	65736572 74617672 006e6f69 20737542     reservation.Bus 
 8009480:	6c756166 73692074 75616320 20646573     fault is caused 
 8009490:	69207962 7274736e 69746375 61206e6f     by instruction a
 80094a0:	73656363 69762073 74616c6f 006e6f69     ccess violation.
 80094b0:	20737542 6c756166 73692074 75616320     Bus fault is cau
 80094c0:	20646573 70207962 69636572 64206573     sed by precise d
 80094d0:	20617461 65636361 76207373 616c6f69     ata access viola
 80094e0:	6e6f6974 00000000 20737542 6c756166     tion....Bus faul
 80094f0:	73692074 75616320 20646573 69207962     t is caused by i
 8009500:	6572706d 65736963 74616420 63612061     mprecise data ac
 8009510:	73736563 6f697620 6974616c 00006e6f     cess violation..
 8009520:	20737542 6c756166 73692074 75616320     Bus fault is cau
 8009530:	20646573 75207962 6174736e 6e696b63     sed by unstackin
 8009540:	72652067 00726f72 20737542 6c756166     g error.Bus faul
 8009550:	73692074 75616320 20646573 73207962     t is caused by s
 8009560:	6b636174 20676e69 6f727265 00000072     tacking error...
 8009570:	20737542 6c756166 73692074 75616320     Bus fault is cau
 8009580:	20646573 66207962 74616f6c 2d676e69     sed by floating-
 8009590:	6e696f70 616c2074 7320797a 65746174     point lazy state
 80095a0:	65727020 76726573 6f697461 0000006e      preservation...
 80095b0:	67617355 61662065 20746c75 63207369     Usage fault is c
 80095c0:	65737561 79622064 74746120 74706d65     aused by attempt
 80095d0:	6f742073 65786520 65747563 206e6120     s to execute an 
 80095e0:	65646e75 656e6966 6e692064 75727473     undefined instru
 80095f0:	6f697463 0000006e 67617355 61662065     ction...Usage fa
 8009600:	20746c75 63207369 65737561 79622064     ult is caused by
 8009610:	74746120 74706d65 6f742073 69777320      attempts to swi
 8009620:	20686374 61206f74 6e69206e 696c6176     tch to an invali
 8009630:	74732064 20657461 672e6528 41202c2e     d state (e.g., A
 8009640:	00294d52 67617355 61662065 20746c75     RM).Usage fault 
 8009650:	63207369 65737561 79622064 74746120     is caused by att
 8009660:	74706d65 6f742073 206f6420 65206e61     empts to do an e
 8009670:	70656378 6e6f6974 74697720 20612068     xception with a 
 8009680:	20646162 756c6176 6e692065 65687420     bad value in the
 8009690:	43584520 5445525f 204e5255 626d756e      EXC_RETURN numb
 80096a0:	00007265 67617355 61662065 20746c75     er..Usage fault 
 80096b0:	63207369 65737561 79622064 74746120     is caused by att
 80096c0:	74706d65 6f742073 65786520 65747563     empts to execute
 80096d0:	63206120 6f72706f 73736563 6920726f      a coprocessor i
 80096e0:	7274736e 69746375 00006e6f 67617355     nstruction..Usag
 80096f0:	61662065 20746c75 63207369 65737561     e fault is cause
 8009700:	79622064 646e6920 74616369 74207365     d by indicates t
 8009710:	20746168 75206e61 696c616e 64656e67     hat an unaligned
 8009720:	63636120 20737365 6c756166 61682074      access fault ha
 8009730:	61742073 206e656b 63616c70 00000065     s taken place...
 8009740:	67617355 61662065 20746c75 63207369     Usage fault is c
 8009750:	65737561 79622064 646e4920 74616369     aused by Indicat
 8009760:	61207365 76696420 20656469 7a207962     es a divide by z
 8009770:	206f7265 20736168 656b6174 6c70206e     ero has taken pl
 8009780:	20656361 6e616328 20656220 20746573     ace (can be set 
 8009790:	796c6e6f 20666920 5f564944 52545f30     only if DIV_0_TR
 80097a0:	73692050 74657320 00000029 75626544     P is set)...Debu
 80097b0:	61662067 20746c75 63207369 65737561     g fault is cause
 80097c0:	79622064 6c616820 65722074 73657571     d by halt reques
 80097d0:	20646574 4e206e69 00434956 75626544     ted in NVIC.Debu
 80097e0:	61662067 20746c75 63207369 65737561     g fault is cause
 80097f0:	79622064 504b4220 6e692054 75727473     d by BKPT instru
 8009800:	6f697463 7865206e 74756365 00006465     ction executed..
 8009810:	75626544 61662067 20746c75 63207369     Debug fault is c
 8009820:	65737561 79622064 54574420 74616d20     aused by DWT mat
 8009830:	6f206863 72756363 00646572 75626544     ch occurred.Debu
 8009840:	61662067 20746c75 63207369 65737561     g fault is cause
 8009850:	79622064 63655620 20726f74 63746566     d by Vector fetc
 8009860:	636f2068 72727563 00006465 75626544     h occurred..Debu
 8009870:	61662067 20746c75 63207369 65737561     g fault is cause
 8009880:	79622064 42444520 20515247 6e676973     d by EDBGRQ sign
 8009890:	61206c61 72657373 00646574 20656854     al asserted.The 
 80098a0:	6f6d656d 6d207972 67616e61 6e656d65     memory managemen
 80098b0:	61662074 20746c75 7563636f 64657272     t fault occurred
 80098c0:	64646120 73736572 20736920 78383025      address is %08x
 80098d0:	00000000 20656854 20737562 6c756166     ....The bus faul
 80098e0:	636f2074 72727563 61206465 65726464     t occurred addre
 80098f0:	69207373 30252073 00007838 20202020     ss is %08x..    
 8009900:	20202020 6c616572 3d435020 30257830         real PC=0x%0
 8009910:	62207838 726f206c 786c6220 2578303d     8x bl or blx=0x%
 8009920:	20783830 31736e69 2578303d 20783430     08x ins1=0x%04x 
 8009930:	32736e69 2578303d 0a783430 00000000     ins2=0x%04x.....
 8009940:	6c383025 00000078 666c652e 00000000     %08lx....elf....
 8009950:	75622f2e 2f646c69 74736574 00000000     ./build/test....
 8009960:	00000a0d 5d73255b 0000000a 3d3d3d3d     ....[%s]....====
 8009970:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
 8009980:	000a3d3d 5d73255b 646f6320 74735f65     ==..[%s] code_st
 8009990:	5f747261 72646461 2578303d 6320786c     art_addr=0x%lx c
 80099a0:	5f65646f 5f646e65 72646461 2578303d     ode_end_addr=0x%
 80099b0:	6320786c 5f65646f 657a6973 646c253d     lx code_size=%ld
 80099c0:	2578303c 0a3e786c 00000000 5d73255b     <0x%lx>.....[%s]
 80099d0:	61747320 735f6b63 74726174 6464615f      stack_start_add
 80099e0:	78303d72 20786c25 63617473 6e655f6b     r=0x%lx stack_en
 80099f0:	64615f64 303d7264 786c2578 61747320     d_addr=0x%lx sta
 8009a00:	735f6b63 3d657a69 3c646c25 6c257830     ck_size=%ld<0x%l
 8009a10:	000a3e78 5d73255b 61656820 74735f70     x>..[%s] heap_st
 8009a20:	5f747261 72646461 2578303d 6820786c     art_addr=0x%lx h
 8009a30:	5f706165 5f646e65 72646461 2578303d     eap_end_addr=0x%
 8009a40:	6820786c 5f706165 657a6973 646c253d     lx heap_size=%ld
 8009a50:	2578303c 0a3e786c 00000000 303d7073     <0x%lx>.....sp=0
 8009a60:	786c2578 0000000a 72646461 30253a20     x%lx....addr :%0
 8009a70:	000a7838 646e6966 20646c20 30257830     8x..find ld 0x%0
 8009a80:	000a7838 63617274 63616265 7525206b     8x..traceback %u
 8009a90:	202d2d20 3d20726c 25783020 20783830      -- lr = 0x%08x 
 8009aa0:	66202d2d 203d2070 30257830 000a7838     -- fp = 0x%08x..
 8009ab0:	63617473 696f506b 7265746e 2578303d     stackPointer=0x%
 8009ac0:	00000a78                                x...

08009ac4 <__func__.7571>:
 8009ac4:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 8009ad4:	00000033                                3...

08009ad8 <__func__.7575>:
 8009ad8:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 8009ae8:	00000032                                2...

08009aec <__func__.7579>:
 8009aec:	6b636162 63617274 656c5f65 5f6c6576     backtrace_level_
 8009afc:	00000031                                1...

08009b00 <__func__.7586>:
 8009b00:	6b636162 63617274 65745f65 00007473     backtrace_test..

08009b10 <_global_impure_ptr>:
 8009b10:	20000018 00464e49 00666e69 004e414e     ... INF.inf.NAN.
 8009b20:	006e616e 33323130 37363534 42413938     nan.0123456789AB
 8009b30:	46454443 00000000 33323130 37363534     CDEF....01234567
 8009b40:	62613938 66656463 00000000 6c756e28     89abcdef....(nul
 8009b50:	0000296c 00000030                       l)..0...

08009b58 <blanks.8566>:
 8009b58:	20202020 20202020 20202020 20202020                     

08009b68 <zeroes.8567>:
 8009b68:	30303030 30303030 30303030 30303030     0000000000000000
 8009b78:	69666e49 7974696e 00000000 004e614e     Infinity....NaN.

08009b88 <__mprec_bigtens>:
 8009b88:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 8009b98:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 8009ba8:	7f73bf3c 75154fdd                       <.s..O.u

08009bb0 <__mprec_tens>:
 8009bb0:	00000000 3ff00000 00000000 40240000     .......?......$@
 8009bc0:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 8009bd0:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 8009be0:	00000000 412e8480 00000000 416312d0     .......A......cA
 8009bf0:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 8009c00:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 8009c10:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 8009c20:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 8009c30:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 8009c40:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 8009c50:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 8009c60:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 8009c70:	79d99db4 44ea7843                       ...yCx.D

08009c78 <p05.7367>:
 8009c78:	00000005 00000019 0000007d 00000043     ........}...C...
 8009c88:	49534f50 00000058 0000002e              POSIX.......

08009c94 <_ctype_>:
 8009c94:	20202000 20202020 28282020 20282828     .         ((((( 
 8009ca4:	20202020 20202020 20202020 20202020                     
 8009cb4:	10108820 10101010 10101010 10101010      ...............
 8009cc4:	04040410 04040404 10040404 10101010     ................
 8009cd4:	41411010 41414141 01010101 01010101     ..AAAAAA........
 8009ce4:	01010101 01010101 01010101 10101010     ................
 8009cf4:	42421010 42424242 02020202 02020202     ..BBBBBB........
 8009d04:	02020202 02020202 02020202 10101010     ................
 8009d14:	00000020 00000000 00000000 00000000      ...............
	...

08009d98 <__EH_FRAME_BEGIN__>:
 8009d98:	00000000                                ....
