
../../../../build/stm32f4xx/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_stext>:
 8000000:	20017fff 	.word	0x20017fff
 8000004:	080001d5 	.word	0x080001d5
 8000008:	08000a6d 	.word	0x08000a6d
 800000c:	08000a7d 	.word	0x08000a7d
 8000010:	08000a95 	.word	0x08000a95
 8000014:	08000a9b 	.word	0x08000a9b
 8000018:	08000aa1 	.word	0x08000aa1
	...
 800002c:	08000aa7 	.word	0x08000aa7
 8000030:	08000ab5 	.word	0x08000ab5
 8000034:	00000000 	.word	0x00000000
 8000038:	08000225 	.word	0x08000225
 800003c:	08000ac3 	.word	0x08000ac3
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
 80001b4:	08007eb0 	.word	0x08007eb0

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
 80001d0:	08007eb0 	.word	0x08007eb0

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
 80001fe:	f000 fcff 	bl	8000c00 <SystemInit>
/* Call static constructors */
    bl __libc_init_array
 8000202:	f002 fb4b 	bl	800289c <__libc_init_array>
/* Call the application's entry point.*/
  bl  main
 8000206:	f000 f80f 	bl	8000228 <main>
  bx  lr    
 800020a:	4770      	bx	lr
  ldr   sp, =_estack    		 /* set stack pointer */
 800020c:	20017fff 	.word	0x20017fff
  ldr  r3, =_sidata
 8000210:	08007ebc 	.word	0x08007ebc
  ldr  r0, =_sdata
 8000214:	20000000 	.word	0x20000000
  ldr  r3, =_edata
 8000218:	200009cc 	.word	0x200009cc
  ldr  r2, =_sbss
 800021c:	200009cc 	.word	0x200009cc
  ldr  r3, = _ebss
 8000220:	20000b9c 	.word	0x20000b9c

08000224 <ADC_IRQHandler>:
 * @retval None       
*/
    .section  .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b  Infinite_Loop
 8000224:	e7fe      	b.n	8000224 <ADC_IRQHandler>
	...

08000228 <main>:
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
 8000228:	b580      	push	{r7, lr}
 800022a:	af00      	add	r7, sp, #0
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
  HAL_Init();
 800022c:	f000 fd1e 	bl	8000c6c <HAL_Init>
  __asm("svc 0");
 8000230:	df00      	svc	0
  /* Configure the system clock to 84 MHz */
  SystemClock_Config();
 8000232:	f000 f817 	bl	8000264 <SystemClock_Config>

  serial_init();
 8000236:	f000 f877 	bl	8000328 <serial_init>
  /* Output a message on Hyperterminal using printf function */
  printf("\n\r -- UART Printf Example: retarget the C library printf function to the UART\n\r");
 800023a:	4809      	ldr	r0, [pc, #36]	; (8000260 <main+0x38>)
 800023c:	f002 fc36 	bl	8002aac <printf>
  
    //   printf("&__shell_command_start=0x%x &__shell_command_end=0x%x\r\n",\
        &__shell_command_start, &__shell_command_end);
    // shell_command_t * scmd = &__shell_command_start;

  BSP_LED_Init(LED2);
 8000240:	2000      	movs	r0, #0
 8000242:	f002 f947 	bl	80024d4 <BSP_LED_Init>
  // fault_test_by_unalign();

  InitStepper();
 8000246:	f000 fb05 	bl	8000854 <InitStepper>
  while (1) {
    BSP_LED_Toggle(LED2);
 800024a:	2000      	movs	r0, #0
 800024c:	f002 f98c 	bl	8002568 <BSP_LED_Toggle>

    HAL_Delay(1);
 8000250:	2001      	movs	r0, #1
 8000252:	f000 fd7d 	bl	8000d50 <HAL_Delay>
    
    step(2);
 8000256:	2002      	movs	r0, #2
 8000258:	f000 fa06 	bl	8000668 <step>
    BSP_LED_Toggle(LED2);
 800025c:	e7f5      	b.n	800024a <main+0x22>
 800025e:	bf00      	nop
 8000260:	08007b78 	.word	0x08007b78

08000264 <SystemClock_Config>:
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
 8000264:	b580      	push	{r7, lr}
 8000266:	b094      	sub	sp, #80	; 0x50
 8000268:	af00      	add	r7, sp, #0
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
 800026a:	2300      	movs	r3, #0
 800026c:	60bb      	str	r3, [r7, #8]
 800026e:	4b29      	ldr	r3, [pc, #164]	; (8000314 <SystemClock_Config+0xb0>)
 8000270:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000272:	4a28      	ldr	r2, [pc, #160]	; (8000314 <SystemClock_Config+0xb0>)
 8000274:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000278:	6413      	str	r3, [r2, #64]	; 0x40
 800027a:	4b26      	ldr	r3, [pc, #152]	; (8000314 <SystemClock_Config+0xb0>)
 800027c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800027e:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000282:	60bb      	str	r3, [r7, #8]
 8000284:	68bb      	ldr	r3, [r7, #8]
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
 8000286:	2300      	movs	r3, #0
 8000288:	607b      	str	r3, [r7, #4]
 800028a:	4b23      	ldr	r3, [pc, #140]	; (8000318 <SystemClock_Config+0xb4>)
 800028c:	681b      	ldr	r3, [r3, #0]
 800028e:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 8000292:	4a21      	ldr	r2, [pc, #132]	; (8000318 <SystemClock_Config+0xb4>)
 8000294:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8000298:	6013      	str	r3, [r2, #0]
 800029a:	4b1f      	ldr	r3, [pc, #124]	; (8000318 <SystemClock_Config+0xb4>)
 800029c:	681b      	ldr	r3, [r3, #0]
 800029e:	f403 4340 	and.w	r3, r3, #49152	; 0xc000
 80002a2:	607b      	str	r3, [r7, #4]
 80002a4:	687b      	ldr	r3, [r7, #4]
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 80002a6:	2302      	movs	r3, #2
 80002a8:	60fb      	str	r3, [r7, #12]
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 80002aa:	2301      	movs	r3, #1
 80002ac:	61bb      	str	r3, [r7, #24]
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
 80002ae:	2310      	movs	r3, #16
 80002b0:	61fb      	str	r3, [r7, #28]
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 80002b2:	2302      	movs	r3, #2
 80002b4:	627b      	str	r3, [r7, #36]	; 0x24
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
 80002b6:	2300      	movs	r3, #0
 80002b8:	62bb      	str	r3, [r7, #40]	; 0x28
  RCC_OscInitStruct.PLL.PLLM = 16;
 80002ba:	2310      	movs	r3, #16
 80002bc:	62fb      	str	r3, [r7, #44]	; 0x2c
  RCC_OscInitStruct.PLL.PLLN = 336;
 80002be:	f44f 73a8 	mov.w	r3, #336	; 0x150
 80002c2:	633b      	str	r3, [r7, #48]	; 0x30
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
 80002c4:	2304      	movs	r3, #4
 80002c6:	637b      	str	r3, [r7, #52]	; 0x34
  RCC_OscInitStruct.PLL.PLLQ = 7;
 80002c8:	2307      	movs	r3, #7
 80002ca:	63bb      	str	r3, [r7, #56]	; 0x38
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 80002cc:	f107 030c 	add.w	r3, r7, #12
 80002d0:	4618      	mov	r0, r3
 80002d2:	f000 fe7d 	bl	8000fd0 <HAL_RCC_OscConfig>
 80002d6:	4603      	mov	r3, r0
 80002d8:	2b00      	cmp	r3, #0
 80002da:	d001      	beq.n	80002e0 <SystemClock_Config+0x7c>
  {
    Error_Handler();
 80002dc:	f000 f81e 	bl	800031c <Error_Handler>
  }
 
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
 80002e0:	230f      	movs	r3, #15
 80002e2:	63fb      	str	r3, [r7, #60]	; 0x3c
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 80002e4:	2302      	movs	r3, #2
 80002e6:	643b      	str	r3, [r7, #64]	; 0x40
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 80002e8:	2300      	movs	r3, #0
 80002ea:	647b      	str	r3, [r7, #68]	; 0x44
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
 80002ec:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80002f0:	64bb      	str	r3, [r7, #72]	; 0x48
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
 80002f2:	2300      	movs	r3, #0
 80002f4:	64fb      	str	r3, [r7, #76]	; 0x4c
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 80002f6:	f107 033c 	add.w	r3, r7, #60	; 0x3c
 80002fa:	2102      	movs	r1, #2
 80002fc:	4618      	mov	r0, r3
 80002fe:	f001 f8df 	bl	80014c0 <HAL_RCC_ClockConfig>
 8000302:	4603      	mov	r3, r0
 8000304:	2b00      	cmp	r3, #0
 8000306:	d001      	beq.n	800030c <SystemClock_Config+0xa8>
  {
    Error_Handler();
 8000308:	f000 f808 	bl	800031c <Error_Handler>
  }
}
 800030c:	bf00      	nop
 800030e:	3750      	adds	r7, #80	; 0x50
 8000310:	46bd      	mov	sp, r7
 8000312:	bd80      	pop	{r7, pc}
 8000314:	40023800 	.word	0x40023800
 8000318:	40007000 	.word	0x40007000

0800031c <Error_Handler>:
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
 800031c:	b580      	push	{r7, lr}
 800031e:	af00      	add	r7, sp, #0
  /* Turn LED2 on */
  BSP_LED_On(LED2);
 8000320:	2000      	movs	r0, #0
 8000322:	f002 f90d 	bl	8002540 <BSP_LED_On>
  while(1)
 8000326:	e7fe      	b.n	8000326 <Error_Handler+0xa>

08000328 <serial_init>:
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

void serial_init(void) 
{
 8000328:	b580      	push	{r7, lr}
 800032a:	af00      	add	r7, sp, #0
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
  UartHandle.Instance          = USARTx;
 800032c:	4b11      	ldr	r3, [pc, #68]	; (8000374 <serial_init+0x4c>)
 800032e:	4a12      	ldr	r2, [pc, #72]	; (8000378 <serial_init+0x50>)
 8000330:	601a      	str	r2, [r3, #0]
  
  UartHandle.Init.BaudRate     = 921600;
 8000332:	4b10      	ldr	r3, [pc, #64]	; (8000374 <serial_init+0x4c>)
 8000334:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 8000338:	605a      	str	r2, [r3, #4]
  UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
 800033a:	4b0e      	ldr	r3, [pc, #56]	; (8000374 <serial_init+0x4c>)
 800033c:	2200      	movs	r2, #0
 800033e:	609a      	str	r2, [r3, #8]
  UartHandle.Init.StopBits     = UART_STOPBITS_1;
 8000340:	4b0c      	ldr	r3, [pc, #48]	; (8000374 <serial_init+0x4c>)
 8000342:	2200      	movs	r2, #0
 8000344:	60da      	str	r2, [r3, #12]
  UartHandle.Init.Parity       = UART_PARITY_NONE;
 8000346:	4b0b      	ldr	r3, [pc, #44]	; (8000374 <serial_init+0x4c>)
 8000348:	2200      	movs	r2, #0
 800034a:	611a      	str	r2, [r3, #16]
  UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
 800034c:	4b09      	ldr	r3, [pc, #36]	; (8000374 <serial_init+0x4c>)
 800034e:	2200      	movs	r2, #0
 8000350:	619a      	str	r2, [r3, #24]
  UartHandle.Init.Mode         = UART_MODE_TX_RX;
 8000352:	4b08      	ldr	r3, [pc, #32]	; (8000374 <serial_init+0x4c>)
 8000354:	220c      	movs	r2, #12
 8000356:	615a      	str	r2, [r3, #20]
  UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
 8000358:	4b06      	ldr	r3, [pc, #24]	; (8000374 <serial_init+0x4c>)
 800035a:	2200      	movs	r2, #0
 800035c:	61da      	str	r2, [r3, #28]
    
  if(HAL_UART_Init(&UartHandle) != HAL_OK) {
 800035e:	4805      	ldr	r0, [pc, #20]	; (8000374 <serial_init+0x4c>)
 8000360:	f001 fdb3 	bl	8001eca <HAL_UART_Init>
 8000364:	4603      	mov	r3, r0
 8000366:	2b00      	cmp	r3, #0
 8000368:	d001      	beq.n	800036e <serial_init+0x46>
    /* Initialization Error */
    Error_Handler(); 
 800036a:	f7ff ffd7 	bl	800031c <Error_Handler>
  }
  
}
 800036e:	bf00      	nop
 8000370:	bd80      	pop	{r7, pc}
 8000372:	bf00      	nop
 8000374:	20000b2c 	.word	0x20000b2c
 8000378:	40004400 	.word	0x40004400

0800037c <__io_putchar>:
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
 800037c:	b580      	push	{r7, lr}
 800037e:	b082      	sub	sp, #8
 8000380:	af00      	add	r7, sp, #0
 8000382:	6078      	str	r0, [r7, #4]
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 8000384:	1d39      	adds	r1, r7, #4
 8000386:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800038a:	2201      	movs	r2, #1
 800038c:	4803      	ldr	r0, [pc, #12]	; (800039c <__io_putchar+0x20>)
 800038e:	f001 fde9 	bl	8001f64 <HAL_UART_Transmit>

  return ch;
 8000392:	687b      	ldr	r3, [r7, #4]
 8000394:	4618      	mov	r0, r3
 8000396:	3708      	adds	r7, #8
 8000398:	46bd      	mov	sp, r7
 800039a:	bd80      	pop	{r7, pc}
 800039c:	20000b2c 	.word	0x20000b2c

080003a0 <setSpeed>:

/*
 * Sets the speed in revs per minute
 */
void setSpeed(long whatSpeed)
{
 80003a0:	b480      	push	{r7}
 80003a2:	b083      	sub	sp, #12
 80003a4:	af00      	add	r7, sp, #0
 80003a6:	6078      	str	r0, [r7, #4]
  this.step_delay = 60L * 1000L * 1000L / this.number_of_steps / whatSpeed;
 80003a8:	4b08      	ldr	r3, [pc, #32]	; (80003cc <setSpeed+0x2c>)
 80003aa:	69db      	ldr	r3, [r3, #28]
 80003ac:	4a08      	ldr	r2, [pc, #32]	; (80003d0 <setSpeed+0x30>)
 80003ae:	fb92 f2f3 	sdiv	r2, r2, r3
 80003b2:	687b      	ldr	r3, [r7, #4]
 80003b4:	fb92 f3f3 	sdiv	r3, r2, r3
 80003b8:	461a      	mov	r2, r3
 80003ba:	4b04      	ldr	r3, [pc, #16]	; (80003cc <setSpeed+0x2c>)
 80003bc:	619a      	str	r2, [r3, #24]
}
 80003be:	bf00      	nop
 80003c0:	370c      	adds	r7, #12
 80003c2:	46bd      	mov	sp, r7
 80003c4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003c8:	4770      	bx	lr
 80003ca:	bf00      	nop
 80003cc:	200009e8 	.word	0x200009e8
 80003d0:	03938700 	.word	0x03938700

080003d4 <stepMotor>:

void stepMotor(int thisStep)
{
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b082      	sub	sp, #8
 80003d8:	af00      	add	r7, sp, #0
 80003da:	6078      	str	r0, [r7, #4]
    // printf("[%s] start thisStep=%d\r\n", __func__, thisStep);
    switch (thisStep) {
 80003dc:	687b      	ldr	r3, [r7, #4]
 80003de:	2b07      	cmp	r3, #7
 80003e0:	f200 813c 	bhi.w	800065c <stepMotor+0x288>
 80003e4:	a201      	add	r2, pc, #4	; (adr r2, 80003ec <stepMotor+0x18>)
 80003e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80003ea:	bf00      	nop
 80003ec:	0800040d 	.word	0x0800040d
 80003f0:	08000457 	.word	0x08000457
 80003f4:	080004a1 	.word	0x080004a1
 80003f8:	080004eb 	.word	0x080004eb
 80003fc:	08000535 	.word	0x08000535
 8000400:	0800057f 	.word	0x0800057f
 8000404:	080005c9 	.word	0x080005c9
 8000408:	08000613 	.word	0x08000613
      case 0:  // 0001
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 800040c:	4b95      	ldr	r3, [pc, #596]	; (8000664 <stepMotor+0x290>)
 800040e:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000410:	4b94      	ldr	r3, [pc, #592]	; (8000664 <stepMotor+0x290>)
 8000412:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000414:	b29b      	uxth	r3, r3
 8000416:	2200      	movs	r2, #0
 8000418:	4619      	mov	r1, r3
 800041a:	f001 fd23 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 800041e:	4b91      	ldr	r3, [pc, #580]	; (8000664 <stepMotor+0x290>)
 8000420:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000422:	4b90      	ldr	r3, [pc, #576]	; (8000664 <stepMotor+0x290>)
 8000424:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000426:	b29b      	uxth	r3, r3
 8000428:	2200      	movs	r2, #0
 800042a:	4619      	mov	r1, r3
 800042c:	f001 fd1a 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 8000430:	4b8c      	ldr	r3, [pc, #560]	; (8000664 <stepMotor+0x290>)
 8000432:	6b98      	ldr	r0, [r3, #56]	; 0x38
 8000434:	4b8b      	ldr	r3, [pc, #556]	; (8000664 <stepMotor+0x290>)
 8000436:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000438:	b29b      	uxth	r3, r3
 800043a:	2200      	movs	r2, #0
 800043c:	4619      	mov	r1, r3
 800043e:	f001 fd11 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
 8000442:	4b88      	ldr	r3, [pc, #544]	; (8000664 <stepMotor+0x290>)
 8000444:	6c18      	ldr	r0, [r3, #64]	; 0x40
 8000446:	4b87      	ldr	r3, [pc, #540]	; (8000664 <stepMotor+0x290>)
 8000448:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800044a:	b29b      	uxth	r3, r3
 800044c:	2201      	movs	r2, #1
 800044e:	4619      	mov	r1, r3
 8000450:	f001 fd08 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 8000454:	e102      	b.n	800065c <stepMotor+0x288>
      case 1:  // 0011
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 8000456:	4b83      	ldr	r3, [pc, #524]	; (8000664 <stepMotor+0x290>)
 8000458:	6a98      	ldr	r0, [r3, #40]	; 0x28
 800045a:	4b82      	ldr	r3, [pc, #520]	; (8000664 <stepMotor+0x290>)
 800045c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800045e:	b29b      	uxth	r3, r3
 8000460:	2200      	movs	r2, #0
 8000462:	4619      	mov	r1, r3
 8000464:	f001 fcfe 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 8000468:	4b7e      	ldr	r3, [pc, #504]	; (8000664 <stepMotor+0x290>)
 800046a:	6b18      	ldr	r0, [r3, #48]	; 0x30
 800046c:	4b7d      	ldr	r3, [pc, #500]	; (8000664 <stepMotor+0x290>)
 800046e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000470:	b29b      	uxth	r3, r3
 8000472:	2200      	movs	r2, #0
 8000474:	4619      	mov	r1, r3
 8000476:	f001 fcf5 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
 800047a:	4b7a      	ldr	r3, [pc, #488]	; (8000664 <stepMotor+0x290>)
 800047c:	6b98      	ldr	r0, [r3, #56]	; 0x38
 800047e:	4b79      	ldr	r3, [pc, #484]	; (8000664 <stepMotor+0x290>)
 8000480:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000482:	b29b      	uxth	r3, r3
 8000484:	2201      	movs	r2, #1
 8000486:	4619      	mov	r1, r3
 8000488:	f001 fcec 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
 800048c:	4b75      	ldr	r3, [pc, #468]	; (8000664 <stepMotor+0x290>)
 800048e:	6c18      	ldr	r0, [r3, #64]	; 0x40
 8000490:	4b74      	ldr	r3, [pc, #464]	; (8000664 <stepMotor+0x290>)
 8000492:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000494:	b29b      	uxth	r3, r3
 8000496:	2201      	movs	r2, #1
 8000498:	4619      	mov	r1, r3
 800049a:	f001 fce3 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 800049e:	e0dd      	b.n	800065c <stepMotor+0x288>
      case 2:  //0010
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 80004a0:	4b70      	ldr	r3, [pc, #448]	; (8000664 <stepMotor+0x290>)
 80004a2:	6a98      	ldr	r0, [r3, #40]	; 0x28
 80004a4:	4b6f      	ldr	r3, [pc, #444]	; (8000664 <stepMotor+0x290>)
 80004a6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004a8:	b29b      	uxth	r3, r3
 80004aa:	2200      	movs	r2, #0
 80004ac:	4619      	mov	r1, r3
 80004ae:	f001 fcd9 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 80004b2:	4b6c      	ldr	r3, [pc, #432]	; (8000664 <stepMotor+0x290>)
 80004b4:	6b18      	ldr	r0, [r3, #48]	; 0x30
 80004b6:	4b6b      	ldr	r3, [pc, #428]	; (8000664 <stepMotor+0x290>)
 80004b8:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80004ba:	b29b      	uxth	r3, r3
 80004bc:	2200      	movs	r2, #0
 80004be:	4619      	mov	r1, r3
 80004c0:	f001 fcd0 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
 80004c4:	4b67      	ldr	r3, [pc, #412]	; (8000664 <stepMotor+0x290>)
 80004c6:	6b98      	ldr	r0, [r3, #56]	; 0x38
 80004c8:	4b66      	ldr	r3, [pc, #408]	; (8000664 <stepMotor+0x290>)
 80004ca:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80004cc:	b29b      	uxth	r3, r3
 80004ce:	2201      	movs	r2, #1
 80004d0:	4619      	mov	r1, r3
 80004d2:	f001 fcc7 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 80004d6:	4b63      	ldr	r3, [pc, #396]	; (8000664 <stepMotor+0x290>)
 80004d8:	6c18      	ldr	r0, [r3, #64]	; 0x40
 80004da:	4b62      	ldr	r3, [pc, #392]	; (8000664 <stepMotor+0x290>)
 80004dc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80004de:	b29b      	uxth	r3, r3
 80004e0:	2200      	movs	r2, #0
 80004e2:	4619      	mov	r1, r3
 80004e4:	f001 fcbe 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 80004e8:	e0b8      	b.n	800065c <stepMotor+0x288>
      case 3:  //0110
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 80004ea:	4b5e      	ldr	r3, [pc, #376]	; (8000664 <stepMotor+0x290>)
 80004ec:	6a98      	ldr	r0, [r3, #40]	; 0x28
 80004ee:	4b5d      	ldr	r3, [pc, #372]	; (8000664 <stepMotor+0x290>)
 80004f0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004f2:	b29b      	uxth	r3, r3
 80004f4:	2200      	movs	r2, #0
 80004f6:	4619      	mov	r1, r3
 80004f8:	f001 fcb4 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
 80004fc:	4b59      	ldr	r3, [pc, #356]	; (8000664 <stepMotor+0x290>)
 80004fe:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000500:	4b58      	ldr	r3, [pc, #352]	; (8000664 <stepMotor+0x290>)
 8000502:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000504:	b29b      	uxth	r3, r3
 8000506:	2201      	movs	r2, #1
 8000508:	4619      	mov	r1, r3
 800050a:	f001 fcab 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_SET);
 800050e:	4b55      	ldr	r3, [pc, #340]	; (8000664 <stepMotor+0x290>)
 8000510:	6b98      	ldr	r0, [r3, #56]	; 0x38
 8000512:	4b54      	ldr	r3, [pc, #336]	; (8000664 <stepMotor+0x290>)
 8000514:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000516:	b29b      	uxth	r3, r3
 8000518:	2201      	movs	r2, #1
 800051a:	4619      	mov	r1, r3
 800051c:	f001 fca2 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 8000520:	4b50      	ldr	r3, [pc, #320]	; (8000664 <stepMotor+0x290>)
 8000522:	6c18      	ldr	r0, [r3, #64]	; 0x40
 8000524:	4b4f      	ldr	r3, [pc, #316]	; (8000664 <stepMotor+0x290>)
 8000526:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000528:	b29b      	uxth	r3, r3
 800052a:	2200      	movs	r2, #0
 800052c:	4619      	mov	r1, r3
 800052e:	f001 fc99 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 8000532:	e093      	b.n	800065c <stepMotor+0x288>
    case 4:  //0100
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
 8000534:	4b4b      	ldr	r3, [pc, #300]	; (8000664 <stepMotor+0x290>)
 8000536:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000538:	4b4a      	ldr	r3, [pc, #296]	; (8000664 <stepMotor+0x290>)
 800053a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800053c:	b29b      	uxth	r3, r3
 800053e:	2200      	movs	r2, #0
 8000540:	4619      	mov	r1, r3
 8000542:	f001 fc8f 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
 8000546:	4b47      	ldr	r3, [pc, #284]	; (8000664 <stepMotor+0x290>)
 8000548:	6b18      	ldr	r0, [r3, #48]	; 0x30
 800054a:	4b46      	ldr	r3, [pc, #280]	; (8000664 <stepMotor+0x290>)
 800054c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800054e:	b29b      	uxth	r3, r3
 8000550:	2201      	movs	r2, #1
 8000552:	4619      	mov	r1, r3
 8000554:	f001 fc86 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 8000558:	4b42      	ldr	r3, [pc, #264]	; (8000664 <stepMotor+0x290>)
 800055a:	6b98      	ldr	r0, [r3, #56]	; 0x38
 800055c:	4b41      	ldr	r3, [pc, #260]	; (8000664 <stepMotor+0x290>)
 800055e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000560:	b29b      	uxth	r3, r3
 8000562:	2200      	movs	r2, #0
 8000564:	4619      	mov	r1, r3
 8000566:	f001 fc7d 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 800056a:	4b3e      	ldr	r3, [pc, #248]	; (8000664 <stepMotor+0x290>)
 800056c:	6c18      	ldr	r0, [r3, #64]	; 0x40
 800056e:	4b3d      	ldr	r3, [pc, #244]	; (8000664 <stepMotor+0x290>)
 8000570:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000572:	b29b      	uxth	r3, r3
 8000574:	2200      	movs	r2, #0
 8000576:	4619      	mov	r1, r3
 8000578:	f001 fc74 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 800057c:	e06e      	b.n	800065c <stepMotor+0x288>
    case 5:  //1100
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
 800057e:	4b39      	ldr	r3, [pc, #228]	; (8000664 <stepMotor+0x290>)
 8000580:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000582:	4b38      	ldr	r3, [pc, #224]	; (8000664 <stepMotor+0x290>)
 8000584:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000586:	b29b      	uxth	r3, r3
 8000588:	2201      	movs	r2, #1
 800058a:	4619      	mov	r1, r3
 800058c:	f001 fc6a 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_SET);
 8000590:	4b34      	ldr	r3, [pc, #208]	; (8000664 <stepMotor+0x290>)
 8000592:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000594:	4b33      	ldr	r3, [pc, #204]	; (8000664 <stepMotor+0x290>)
 8000596:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8000598:	b29b      	uxth	r3, r3
 800059a:	2201      	movs	r2, #1
 800059c:	4619      	mov	r1, r3
 800059e:	f001 fc61 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 80005a2:	4b30      	ldr	r3, [pc, #192]	; (8000664 <stepMotor+0x290>)
 80005a4:	6b98      	ldr	r0, [r3, #56]	; 0x38
 80005a6:	4b2f      	ldr	r3, [pc, #188]	; (8000664 <stepMotor+0x290>)
 80005a8:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80005aa:	b29b      	uxth	r3, r3
 80005ac:	2200      	movs	r2, #0
 80005ae:	4619      	mov	r1, r3
 80005b0:	f001 fc58 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 80005b4:	4b2b      	ldr	r3, [pc, #172]	; (8000664 <stepMotor+0x290>)
 80005b6:	6c18      	ldr	r0, [r3, #64]	; 0x40
 80005b8:	4b2a      	ldr	r3, [pc, #168]	; (8000664 <stepMotor+0x290>)
 80005ba:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80005bc:	b29b      	uxth	r3, r3
 80005be:	2200      	movs	r2, #0
 80005c0:	4619      	mov	r1, r3
 80005c2:	f001 fc4f 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 80005c6:	e049      	b.n	800065c <stepMotor+0x288>
    case 6:  //1000
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
 80005c8:	4b26      	ldr	r3, [pc, #152]	; (8000664 <stepMotor+0x290>)
 80005ca:	6a98      	ldr	r0, [r3, #40]	; 0x28
 80005cc:	4b25      	ldr	r3, [pc, #148]	; (8000664 <stepMotor+0x290>)
 80005ce:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80005d0:	b29b      	uxth	r3, r3
 80005d2:	2201      	movs	r2, #1
 80005d4:	4619      	mov	r1, r3
 80005d6:	f001 fc45 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 80005da:	4b22      	ldr	r3, [pc, #136]	; (8000664 <stepMotor+0x290>)
 80005dc:	6b18      	ldr	r0, [r3, #48]	; 0x30
 80005de:	4b21      	ldr	r3, [pc, #132]	; (8000664 <stepMotor+0x290>)
 80005e0:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80005e2:	b29b      	uxth	r3, r3
 80005e4:	2200      	movs	r2, #0
 80005e6:	4619      	mov	r1, r3
 80005e8:	f001 fc3c 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 80005ec:	4b1d      	ldr	r3, [pc, #116]	; (8000664 <stepMotor+0x290>)
 80005ee:	6b98      	ldr	r0, [r3, #56]	; 0x38
 80005f0:	4b1c      	ldr	r3, [pc, #112]	; (8000664 <stepMotor+0x290>)
 80005f2:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80005f4:	b29b      	uxth	r3, r3
 80005f6:	2200      	movs	r2, #0
 80005f8:	4619      	mov	r1, r3
 80005fa:	f001 fc33 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
 80005fe:	4b19      	ldr	r3, [pc, #100]	; (8000664 <stepMotor+0x290>)
 8000600:	6c18      	ldr	r0, [r3, #64]	; 0x40
 8000602:	4b18      	ldr	r3, [pc, #96]	; (8000664 <stepMotor+0x290>)
 8000604:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000606:	b29b      	uxth	r3, r3
 8000608:	2200      	movs	r2, #0
 800060a:	4619      	mov	r1, r3
 800060c:	f001 fc2a 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 8000610:	e024      	b.n	800065c <stepMotor+0x288>
    case 7:  //1001
        HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_SET);
 8000612:	4b14      	ldr	r3, [pc, #80]	; (8000664 <stepMotor+0x290>)
 8000614:	6a98      	ldr	r0, [r3, #40]	; 0x28
 8000616:	4b13      	ldr	r3, [pc, #76]	; (8000664 <stepMotor+0x290>)
 8000618:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800061a:	b29b      	uxth	r3, r3
 800061c:	2201      	movs	r2, #1
 800061e:	4619      	mov	r1, r3
 8000620:	f001 fc20 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
 8000624:	4b0f      	ldr	r3, [pc, #60]	; (8000664 <stepMotor+0x290>)
 8000626:	6b18      	ldr	r0, [r3, #48]	; 0x30
 8000628:	4b0e      	ldr	r3, [pc, #56]	; (8000664 <stepMotor+0x290>)
 800062a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800062c:	b29b      	uxth	r3, r3
 800062e:	2200      	movs	r2, #0
 8000630:	4619      	mov	r1, r3
 8000632:	f001 fc17 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
 8000636:	4b0b      	ldr	r3, [pc, #44]	; (8000664 <stepMotor+0x290>)
 8000638:	6b98      	ldr	r0, [r3, #56]	; 0x38
 800063a:	4b0a      	ldr	r3, [pc, #40]	; (8000664 <stepMotor+0x290>)
 800063c:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 800063e:	b29b      	uxth	r3, r3
 8000640:	2200      	movs	r2, #0
 8000642:	4619      	mov	r1, r3
 8000644:	f001 fc0e 	bl	8001e64 <HAL_GPIO_WritePin>
        HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_SET);
 8000648:	4b06      	ldr	r3, [pc, #24]	; (8000664 <stepMotor+0x290>)
 800064a:	6c18      	ldr	r0, [r3, #64]	; 0x40
 800064c:	4b05      	ldr	r3, [pc, #20]	; (8000664 <stepMotor+0x290>)
 800064e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8000650:	b29b      	uxth	r3, r3
 8000652:	2201      	movs	r2, #1
 8000654:	4619      	mov	r1, r3
 8000656:	f001 fc05 	bl	8001e64 <HAL_GPIO_WritePin>
      break;
 800065a:	bf00      	nop
    }
    // printf("[%s] end thisStep=%d\r\n", __func__, thisStep);
}
 800065c:	bf00      	nop
 800065e:	3708      	adds	r7, #8
 8000660:	46bd      	mov	sp, r7
 8000662:	bd80      	pop	{r7, pc}
 8000664:	200009e8 	.word	0x200009e8

08000668 <step>:
/*
 * Moves the motor steps_to_move steps.  If the number is negative,
 * the motor moves in the reverse direction.
 */
void step(int steps_to_move)
{
 8000668:	b580      	push	{r7, lr}
 800066a:	b088      	sub	sp, #32
 800066c:	af00      	add	r7, sp, #0
 800066e:	6078      	str	r0, [r7, #4]
#if 1
  /* EPRROM 保存地址 */
  int address = 0;
 8000670:	2300      	movs	r3, #0
 8000672:	61bb      	str	r3, [r7, #24]
  int valueL = 0;
 8000674:	2300      	movs	r3, #0
 8000676:	617b      	str	r3, [r7, #20]
  int valueH = 0;
 8000678:	2300      	movs	r3, #0
 800067a:	613b      	str	r3, [r7, #16]
  int tempSteps = steps_to_move;
 800067c:	687b      	ldr	r3, [r7, #4]
 800067e:	60fb      	str	r3, [r7, #12]
  #define ABS(x) ((x)>0?x:-x)
  int steps_left = ABS(steps_to_move);  // how many steps to take
 8000680:	687b      	ldr	r3, [r7, #4]
 8000682:	2b00      	cmp	r3, #0
 8000684:	bfb8      	it	lt
 8000686:	425b      	neglt	r3, r3
 8000688:	61fb      	str	r3, [r7, #28]

  // determine direction based on whether steps_to_mode is + or -:
  if (steps_to_move > 0) { this.direction = 1; }
 800068a:	687b      	ldr	r3, [r7, #4]
 800068c:	2b00      	cmp	r3, #0
 800068e:	dd02      	ble.n	8000696 <step+0x2e>
 8000690:	4b29      	ldr	r3, [pc, #164]	; (8000738 <step+0xd0>)
 8000692:	2201      	movs	r2, #1
 8000694:	611a      	str	r2, [r3, #16]
  if (steps_to_move < 0) { this.direction = 0; }
 8000696:	687b      	ldr	r3, [r7, #4]
 8000698:	2b00      	cmp	r3, #0
 800069a:	da46      	bge.n	800072a <step+0xc2>
 800069c:	4b26      	ldr	r3, [pc, #152]	; (8000738 <step+0xd0>)
 800069e:	2200      	movs	r2, #0
 80006a0:	611a      	str	r2, [r3, #16]


  // decrement the number of steps, moving one step each time:
  while (steps_left > 0)
 80006a2:	e042      	b.n	800072a <step+0xc2>
  {
    
  	unsigned long now = HAL_GetTick();    
 80006a4:	f000 fb48 	bl	8000d38 <HAL_GetTick>
 80006a8:	60b8      	str	r0, [r7, #8]
    // move only if the appropriate delay has passed:
    if (now - this.last_step_time >= this.step_delay)
 80006aa:	4b23      	ldr	r3, [pc, #140]	; (8000738 <step+0xd0>)
 80006ac:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80006ae:	68ba      	ldr	r2, [r7, #8]
 80006b0:	1ad2      	subs	r2, r2, r3
 80006b2:	4b21      	ldr	r3, [pc, #132]	; (8000738 <step+0xd0>)
 80006b4:	699b      	ldr	r3, [r3, #24]
 80006b6:	429a      	cmp	r2, r3
 80006b8:	d337      	bcc.n	800072a <step+0xc2>
    {
    	valueL = steps_left & 0x00FF;
 80006ba:	69fb      	ldr	r3, [r7, #28]
 80006bc:	b2db      	uxtb	r3, r3
 80006be:	617b      	str	r3, [r7, #20]
    //   EEPROM.write(address + 1, valueL);
      valueH = steps_left >> 8;
 80006c0:	69fb      	ldr	r3, [r7, #28]
 80006c2:	121b      	asrs	r3, r3, #8
 80006c4:	613b      	str	r3, [r7, #16]
    //   EEPROM.write(address + 2, valueH);
      
      // get the timeStamp of when you stepped:
      this.last_step_time = now;
 80006c6:	4a1c      	ldr	r2, [pc, #112]	; (8000738 <step+0xd0>)
 80006c8:	68bb      	ldr	r3, [r7, #8]
 80006ca:	6493      	str	r3, [r2, #72]	; 0x48
      // increment or decrement the step number,
      // depending on direction:
      if (this.direction == 1)
 80006cc:	4b1a      	ldr	r3, [pc, #104]	; (8000738 <step+0xd0>)
 80006ce:	691b      	ldr	r3, [r3, #16]
 80006d0:	2b01      	cmp	r3, #1
 80006d2:	d10e      	bne.n	80006f2 <step+0x8a>
      {
        this.step_number++;
 80006d4:	4b18      	ldr	r3, [pc, #96]	; (8000738 <step+0xd0>)
 80006d6:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80006d8:	3301      	adds	r3, #1
 80006da:	4a17      	ldr	r2, [pc, #92]	; (8000738 <step+0xd0>)
 80006dc:	6253      	str	r3, [r2, #36]	; 0x24
        if (this.step_number == this.number_of_steps) {
 80006de:	4b16      	ldr	r3, [pc, #88]	; (8000738 <step+0xd0>)
 80006e0:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 80006e2:	4b15      	ldr	r3, [pc, #84]	; (8000738 <step+0xd0>)
 80006e4:	69db      	ldr	r3, [r3, #28]
 80006e6:	429a      	cmp	r2, r3
 80006e8:	d110      	bne.n	800070c <step+0xa4>
          this.step_number = 0;
 80006ea:	4b13      	ldr	r3, [pc, #76]	; (8000738 <step+0xd0>)
 80006ec:	2200      	movs	r2, #0
 80006ee:	625a      	str	r2, [r3, #36]	; 0x24
 80006f0:	e00c      	b.n	800070c <step+0xa4>
        }
      }
      else
      {
        if (this.step_number == 0) {
 80006f2:	4b11      	ldr	r3, [pc, #68]	; (8000738 <step+0xd0>)
 80006f4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80006f6:	2b00      	cmp	r3, #0
 80006f8:	d103      	bne.n	8000702 <step+0x9a>
          this.step_number = this.number_of_steps;
 80006fa:	4b0f      	ldr	r3, [pc, #60]	; (8000738 <step+0xd0>)
 80006fc:	69db      	ldr	r3, [r3, #28]
 80006fe:	4a0e      	ldr	r2, [pc, #56]	; (8000738 <step+0xd0>)
 8000700:	6253      	str	r3, [r2, #36]	; 0x24
        }
        this.step_number--;
 8000702:	4b0d      	ldr	r3, [pc, #52]	; (8000738 <step+0xd0>)
 8000704:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000706:	3b01      	subs	r3, #1
 8000708:	4a0b      	ldr	r2, [pc, #44]	; (8000738 <step+0xd0>)
 800070a:	6253      	str	r3, [r2, #36]	; 0x24
      }
      // decrement the steps left:
      steps_left--;
 800070c:	69fb      	ldr	r3, [r7, #28]
 800070e:	3b01      	subs	r3, #1
 8000710:	61fb      	str	r3, [r7, #28]
      
      // step the motor to step number 0, 1, ..., {3 or 10}
      stepMotor(this.step_number % 8);
 8000712:	4b09      	ldr	r3, [pc, #36]	; (8000738 <step+0xd0>)
 8000714:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000716:	425a      	negs	r2, r3
 8000718:	f003 0307 	and.w	r3, r3, #7
 800071c:	f002 0207 	and.w	r2, r2, #7
 8000720:	bf58      	it	pl
 8000722:	4253      	negpl	r3, r2
 8000724:	4618      	mov	r0, r3
 8000726:	f7ff fe55 	bl	80003d4 <stepMotor>
  while (steps_left > 0)
 800072a:	69fb      	ldr	r3, [r7, #28]
 800072c:	2b00      	cmp	r3, #0
 800072e:	dcb9      	bgt.n	80006a4 <step+0x3c>
  // printf("this=0x%08p %x \r\n", this, this.motor_pin_1.number);
  //     HAL_GPIO_WritePin(this.motor_pin_1.Port, this.motor_pin_1.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_2.Port, this.motor_pin_2.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_3.Port, this.motor_pin_3.number, GPIO_PIN_RESET);
  //     HAL_GPIO_WritePin(this.motor_pin_4.Port, this.motor_pin_4.number, GPIO_PIN_RESET);
}
 8000730:	bf00      	nop
 8000732:	3720      	adds	r7, #32
 8000734:	46bd      	mov	sp, r7
 8000736:	bd80      	pop	{r7, pc}
 8000738:	200009e8 	.word	0x200009e8

0800073c <Stepper>:
 *   constructor for four-pin version
 *   Sets which wires should control the motor.
 */
void Stepper(int number_of_steps, struct MotorPin * motor_pin_1, struct MotorPin * motor_pin_2,
                                      struct MotorPin * motor_pin_3, struct MotorPin * motor_pin_4)
{
 800073c:	b580      	push	{r7, lr}
 800073e:	b08c      	sub	sp, #48	; 0x30
 8000740:	af00      	add	r7, sp, #0
 8000742:	60f8      	str	r0, [r7, #12]
 8000744:	60b9      	str	r1, [r7, #8]
 8000746:	607a      	str	r2, [r7, #4]
 8000748:	603b      	str	r3, [r7, #0]
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  this.step_number = 0;    // which step the motor is on
 800074a:	4b3c      	ldr	r3, [pc, #240]	; (800083c <Stepper+0x100>)
 800074c:	2200      	movs	r2, #0
 800074e:	625a      	str	r2, [r3, #36]	; 0x24
  this.speed = 0;          // the motor speed, in revolutions per minute
 8000750:	4b3a      	ldr	r3, [pc, #232]	; (800083c <Stepper+0x100>)
 8000752:	2200      	movs	r2, #0
 8000754:	615a      	str	r2, [r3, #20]
  this.direction = 0;      // motor direction
 8000756:	4b39      	ldr	r3, [pc, #228]	; (800083c <Stepper+0x100>)
 8000758:	2200      	movs	r2, #0
 800075a:	611a      	str	r2, [r3, #16]
  this.last_step_time = 0; // time stamp in us of the last step taken
 800075c:	4b37      	ldr	r3, [pc, #220]	; (800083c <Stepper+0x100>)
 800075e:	2200      	movs	r2, #0
 8000760:	649a      	str	r2, [r3, #72]	; 0x48
  this.number_of_steps = number_of_steps; // total number of steps for this motor
 8000762:	4a36      	ldr	r2, [pc, #216]	; (800083c <Stepper+0x100>)
 8000764:	68fb      	ldr	r3, [r7, #12]
 8000766:	61d3      	str	r3, [r2, #28]

  // Arduino pins for the motor control connection:
  memcpy(&this.motor_pin_1, motor_pin_1, sizeof(struct MotorPin));
 8000768:	2208      	movs	r2, #8
 800076a:	68b9      	ldr	r1, [r7, #8]
 800076c:	4834      	ldr	r0, [pc, #208]	; (8000840 <Stepper+0x104>)
 800076e:	f002 f8b9 	bl	80028e4 <memcpy>
  memcpy(&this.motor_pin_2, motor_pin_2, sizeof(struct MotorPin));
 8000772:	2208      	movs	r2, #8
 8000774:	6879      	ldr	r1, [r7, #4]
 8000776:	4833      	ldr	r0, [pc, #204]	; (8000844 <Stepper+0x108>)
 8000778:	f002 f8b4 	bl	80028e4 <memcpy>
  memcpy(&this.motor_pin_3, motor_pin_3, sizeof(struct MotorPin));
 800077c:	2208      	movs	r2, #8
 800077e:	6839      	ldr	r1, [r7, #0]
 8000780:	4831      	ldr	r0, [pc, #196]	; (8000848 <Stepper+0x10c>)
 8000782:	f002 f8af 	bl	80028e4 <memcpy>
  memcpy(&this.motor_pin_4, motor_pin_4, sizeof(struct MotorPin));
 8000786:	2208      	movs	r2, #8
 8000788:	6bb9      	ldr	r1, [r7, #56]	; 0x38
 800078a:	4830      	ldr	r0, [pc, #192]	; (800084c <Stepper+0x110>)
 800078c:	f002 f8aa 	bl	80028e4 <memcpy>

  
  /* -1- Enable GPIOA Clock (to be able to program the configuration registers) */
  __HAL_RCC_GPIOA_CLK_ENABLE();
 8000790:	2300      	movs	r3, #0
 8000792:	61bb      	str	r3, [r7, #24]
 8000794:	4b2e      	ldr	r3, [pc, #184]	; (8000850 <Stepper+0x114>)
 8000796:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000798:	4a2d      	ldr	r2, [pc, #180]	; (8000850 <Stepper+0x114>)
 800079a:	f043 0301 	orr.w	r3, r3, #1
 800079e:	6313      	str	r3, [r2, #48]	; 0x30
 80007a0:	4b2b      	ldr	r3, [pc, #172]	; (8000850 <Stepper+0x114>)
 80007a2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007a4:	f003 0301 	and.w	r3, r3, #1
 80007a8:	61bb      	str	r3, [r7, #24]
 80007aa:	69bb      	ldr	r3, [r7, #24]
  __HAL_RCC_GPIOB_CLK_ENABLE();
 80007ac:	2300      	movs	r3, #0
 80007ae:	617b      	str	r3, [r7, #20]
 80007b0:	4b27      	ldr	r3, [pc, #156]	; (8000850 <Stepper+0x114>)
 80007b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007b4:	4a26      	ldr	r2, [pc, #152]	; (8000850 <Stepper+0x114>)
 80007b6:	f043 0302 	orr.w	r3, r3, #2
 80007ba:	6313      	str	r3, [r2, #48]	; 0x30
 80007bc:	4b24      	ldr	r3, [pc, #144]	; (8000850 <Stepper+0x114>)
 80007be:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007c0:	f003 0302 	and.w	r3, r3, #2
 80007c4:	617b      	str	r3, [r7, #20]
 80007c6:	697b      	ldr	r3, [r7, #20]
  
  /* -2- Configure PA05 IO in output push-pull mode to
         drive external LED */
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 80007c8:	2301      	movs	r3, #1
 80007ca:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull = GPIO_PULLUP;
 80007cc:	2301      	movs	r3, #1
 80007ce:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
 80007d0:	2302      	movs	r3, #2
 80007d2:	62bb      	str	r3, [r7, #40]	; 0x28

  GPIO_InitStruct.Pin = this.motor_pin_1.number;
 80007d4:	4b19      	ldr	r3, [pc, #100]	; (800083c <Stepper+0x100>)
 80007d6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80007d8:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_1.Port, &GPIO_InitStruct); 
 80007da:	4b18      	ldr	r3, [pc, #96]	; (800083c <Stepper+0x100>)
 80007dc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80007de:	f107 021c 	add.w	r2, r7, #28
 80007e2:	4611      	mov	r1, r2
 80007e4:	4618      	mov	r0, r3
 80007e6:	f001 f9bb 	bl	8001b60 <HAL_GPIO_Init>
  GPIO_InitStruct.Pin = this.motor_pin_2.number;
 80007ea:	4b14      	ldr	r3, [pc, #80]	; (800083c <Stepper+0x100>)
 80007ec:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80007ee:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_2.Port, &GPIO_InitStruct); 
 80007f0:	4b12      	ldr	r3, [pc, #72]	; (800083c <Stepper+0x100>)
 80007f2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80007f4:	f107 021c 	add.w	r2, r7, #28
 80007f8:	4611      	mov	r1, r2
 80007fa:	4618      	mov	r0, r3
 80007fc:	f001 f9b0 	bl	8001b60 <HAL_GPIO_Init>
  GPIO_InitStruct.Pin = this.motor_pin_3.number;
 8000800:	4b0e      	ldr	r3, [pc, #56]	; (800083c <Stepper+0x100>)
 8000802:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8000804:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_3.Port, &GPIO_InitStruct); 
 8000806:	4b0d      	ldr	r3, [pc, #52]	; (800083c <Stepper+0x100>)
 8000808:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800080a:	f107 021c 	add.w	r2, r7, #28
 800080e:	4611      	mov	r1, r2
 8000810:	4618      	mov	r0, r3
 8000812:	f001 f9a5 	bl	8001b60 <HAL_GPIO_Init>
  GPIO_InitStruct.Pin = this.motor_pin_4.number;
 8000816:	4b09      	ldr	r3, [pc, #36]	; (800083c <Stepper+0x100>)
 8000818:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800081a:	61fb      	str	r3, [r7, #28]
  HAL_GPIO_Init(this.motor_pin_4.Port, &GPIO_InitStruct); 
 800081c:	4b07      	ldr	r3, [pc, #28]	; (800083c <Stepper+0x100>)
 800081e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000820:	f107 021c 	add.w	r2, r7, #28
 8000824:	4611      	mov	r1, r2
 8000826:	4618      	mov	r0, r3
 8000828:	f001 f99a 	bl	8001b60 <HAL_GPIO_Init>
  // pin_count is used by the stepMotor() method:
  this.pin_count = 4;
 800082c:	4b03      	ldr	r3, [pc, #12]	; (800083c <Stepper+0x100>)
 800082e:	2204      	movs	r2, #4
 8000830:	621a      	str	r2, [r3, #32]
}
 8000832:	bf00      	nop
 8000834:	3730      	adds	r7, #48	; 0x30
 8000836:	46bd      	mov	sp, r7
 8000838:	bd80      	pop	{r7, pc}
 800083a:	bf00      	nop
 800083c:	200009e8 	.word	0x200009e8
 8000840:	20000a10 	.word	0x20000a10
 8000844:	20000a18 	.word	0x20000a18
 8000848:	20000a20 	.word	0x20000a20
 800084c:	20000a28 	.word	0x20000a28
 8000850:	40023800 	.word	0x40023800

08000854 <InitStepper>:

void InitStepper(void)
{
 8000854:	b5b0      	push	{r4, r5, r7, lr}
 8000856:	b08a      	sub	sp, #40	; 0x28
 8000858:	af02      	add	r7, sp, #8
  struct MotorPin motorPin[] = {
 800085a:	4b0f      	ldr	r3, [pc, #60]	; (8000898 <InitStepper+0x44>)
 800085c:	463c      	mov	r4, r7
 800085e:	461d      	mov	r5, r3
 8000860:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8000862:	c40f      	stmia	r4!, {r0, r1, r2, r3}
 8000864:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 8000868:	e884 000f 	stmia.w	r4, {r0, r1, r2, r3}
    {GPIOA, STEPER_IN1},
    {GPIOA, STEPER_IN2},
    {GPIOA, STEPER_IN3},
    {GPIOB, STEPER_IN4},
  };
  Stepper(8, &motorPin[0], &motorPin[1], &motorPin[2], &motorPin[3]);
 800086c:	463b      	mov	r3, r7
 800086e:	f103 0010 	add.w	r0, r3, #16
 8000872:	463b      	mov	r3, r7
 8000874:	f103 0208 	add.w	r2, r3, #8
 8000878:	4639      	mov	r1, r7
 800087a:	463b      	mov	r3, r7
 800087c:	3318      	adds	r3, #24
 800087e:	9300      	str	r3, [sp, #0]
 8000880:	4603      	mov	r3, r0
 8000882:	2008      	movs	r0, #8
 8000884:	f7ff ff5a 	bl	800073c <Stepper>
  setSpeed(64);
 8000888:	2040      	movs	r0, #64	; 0x40
 800088a:	f7ff fd89 	bl	80003a0 <setSpeed>
 800088e:	bf00      	nop
 8000890:	3720      	adds	r7, #32
 8000892:	46bd      	mov	sp, r7
 8000894:	bdb0      	pop	{r4, r5, r7, pc}
 8000896:	bf00      	nop
 8000898:	08007bc8 	.word	0x08007bc8

0800089c <HAL_UART_MspInit>:
  *           - NVIC configuration for DMA interrupt request enable
  * @param huart: UART handle pointer
  * @retval None
  */
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
 800089c:	b580      	push	{r7, lr}
 800089e:	b08c      	sub	sp, #48	; 0x30
 80008a0:	af00      	add	r7, sp, #0
 80008a2:	6078      	str	r0, [r7, #4]
  
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
 80008a4:	2300      	movs	r3, #0
 80008a6:	61bb      	str	r3, [r7, #24]
 80008a8:	4b6a      	ldr	r3, [pc, #424]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008aa:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008ac:	4a69      	ldr	r2, [pc, #420]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008ae:	f043 0301 	orr.w	r3, r3, #1
 80008b2:	6313      	str	r3, [r2, #48]	; 0x30
 80008b4:	4b67      	ldr	r3, [pc, #412]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008b6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008b8:	f003 0301 	and.w	r3, r3, #1
 80008bc:	61bb      	str	r3, [r7, #24]
 80008be:	69bb      	ldr	r3, [r7, #24]
  USARTx_RX_GPIO_CLK_ENABLE();
 80008c0:	2300      	movs	r3, #0
 80008c2:	617b      	str	r3, [r7, #20]
 80008c4:	4b63      	ldr	r3, [pc, #396]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008c6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008c8:	4a62      	ldr	r2, [pc, #392]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008ca:	f043 0301 	orr.w	r3, r3, #1
 80008ce:	6313      	str	r3, [r2, #48]	; 0x30
 80008d0:	4b60      	ldr	r3, [pc, #384]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008d2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80008d4:	f003 0301 	and.w	r3, r3, #1
 80008d8:	617b      	str	r3, [r7, #20]
 80008da:	697b      	ldr	r3, [r7, #20]
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE(); 
 80008dc:	2300      	movs	r3, #0
 80008de:	613b      	str	r3, [r7, #16]
 80008e0:	4b5c      	ldr	r3, [pc, #368]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008e2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80008e4:	4a5b      	ldr	r2, [pc, #364]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008e6:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80008ea:	6413      	str	r3, [r2, #64]	; 0x40
 80008ec:	4b59      	ldr	r3, [pc, #356]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008ee:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80008f0:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80008f4:	613b      	str	r3, [r7, #16]
 80008f6:	693b      	ldr	r3, [r7, #16]
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();   
 80008f8:	2300      	movs	r3, #0
 80008fa:	60fb      	str	r3, [r7, #12]
 80008fc:	4b55      	ldr	r3, [pc, #340]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 80008fe:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000900:	4a54      	ldr	r2, [pc, #336]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 8000902:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000906:	6313      	str	r3, [r2, #48]	; 0x30
 8000908:	4b52      	ldr	r3, [pc, #328]	; (8000a54 <HAL_UART_MspInit+0x1b8>)
 800090a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800090c:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8000910:	60fb      	str	r3, [r7, #12]
 8000912:	68fb      	ldr	r3, [r7, #12]
  
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = USARTx_TX_PIN;
 8000914:	2304      	movs	r3, #4
 8000916:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
 8000918:	2302      	movs	r3, #2
 800091a:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull      = GPIO_NOPULL;
 800091c:	2300      	movs	r3, #0
 800091e:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed     = GPIO_SPEED_FAST;
 8000920:	2302      	movs	r3, #2
 8000922:	62bb      	str	r3, [r7, #40]	; 0x28
  GPIO_InitStruct.Alternate = USARTx_TX_AF;
 8000924:	2307      	movs	r3, #7
 8000926:	62fb      	str	r3, [r7, #44]	; 0x2c
  
  HAL_GPIO_Init(USARTx_TX_GPIO_PORT, &GPIO_InitStruct);
 8000928:	f107 031c 	add.w	r3, r7, #28
 800092c:	4619      	mov	r1, r3
 800092e:	484a      	ldr	r0, [pc, #296]	; (8000a58 <HAL_UART_MspInit+0x1bc>)
 8000930:	f001 f916 	bl	8001b60 <HAL_GPIO_Init>
    
  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = USARTx_RX_PIN;
 8000934:	2308      	movs	r3, #8
 8000936:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Alternate = USARTx_RX_AF;
 8000938:	2307      	movs	r3, #7
 800093a:	62fb      	str	r3, [r7, #44]	; 0x2c
    
  HAL_GPIO_Init(USARTx_RX_GPIO_PORT, &GPIO_InitStruct);
 800093c:	f107 031c 	add.w	r3, r7, #28
 8000940:	4619      	mov	r1, r3
 8000942:	4845      	ldr	r0, [pc, #276]	; (8000a58 <HAL_UART_MspInit+0x1bc>)
 8000944:	f001 f90c 	bl	8001b60 <HAL_GPIO_Init>
    
  /*##-3- Configure the DMA streams ##########################################*/
  /* Configure the DMA handler for Transmission process */
  hdma_tx.Instance                 = USARTx_TX_DMA_STREAM;
 8000948:	4b44      	ldr	r3, [pc, #272]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 800094a:	4a45      	ldr	r2, [pc, #276]	; (8000a60 <HAL_UART_MspInit+0x1c4>)
 800094c:	601a      	str	r2, [r3, #0]
  
  hdma_tx.Init.Channel             = USARTx_TX_DMA_CHANNEL;
 800094e:	4b43      	ldr	r3, [pc, #268]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000950:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000954:	605a      	str	r2, [r3, #4]
  hdma_tx.Init.Direction           = DMA_MEMORY_TO_PERIPH;
 8000956:	4b41      	ldr	r3, [pc, #260]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000958:	2240      	movs	r2, #64	; 0x40
 800095a:	609a      	str	r2, [r3, #8]
  hdma_tx.Init.PeriphInc           = DMA_PINC_DISABLE;
 800095c:	4b3f      	ldr	r3, [pc, #252]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 800095e:	2200      	movs	r2, #0
 8000960:	60da      	str	r2, [r3, #12]
  hdma_tx.Init.MemInc              = DMA_MINC_ENABLE;
 8000962:	4b3e      	ldr	r3, [pc, #248]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000964:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000968:	611a      	str	r2, [r3, #16]
  hdma_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 800096a:	4b3c      	ldr	r3, [pc, #240]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 800096c:	2200      	movs	r2, #0
 800096e:	615a      	str	r2, [r3, #20]
  hdma_tx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 8000970:	4b3a      	ldr	r3, [pc, #232]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000972:	2200      	movs	r2, #0
 8000974:	619a      	str	r2, [r3, #24]
  hdma_tx.Init.Mode                = DMA_NORMAL;
 8000976:	4b39      	ldr	r3, [pc, #228]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000978:	2200      	movs	r2, #0
 800097a:	61da      	str	r2, [r3, #28]
  hdma_tx.Init.Priority            = DMA_PRIORITY_LOW;
 800097c:	4b37      	ldr	r3, [pc, #220]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 800097e:	2200      	movs	r2, #0
 8000980:	621a      	str	r2, [r3, #32]
  hdma_tx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;
 8000982:	4b36      	ldr	r3, [pc, #216]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000984:	2200      	movs	r2, #0
 8000986:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_tx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 8000988:	4b34      	ldr	r3, [pc, #208]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 800098a:	2203      	movs	r2, #3
 800098c:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_tx.Init.MemBurst            = DMA_MBURST_INC4;
 800098e:	4b33      	ldr	r3, [pc, #204]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000990:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8000994:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_tx.Init.PeriphBurst         = DMA_PBURST_INC4;
 8000996:	4b31      	ldr	r3, [pc, #196]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 8000998:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 800099c:	631a      	str	r2, [r3, #48]	; 0x30
  
  HAL_DMA_Init(&hdma_tx);   
 800099e:	482f      	ldr	r0, [pc, #188]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 80009a0:	f000 ff80 	bl	80018a4 <HAL_DMA_Init>
  
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmatx, hdma_tx);
 80009a4:	687b      	ldr	r3, [r7, #4]
 80009a6:	4a2d      	ldr	r2, [pc, #180]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 80009a8:	635a      	str	r2, [r3, #52]	; 0x34
 80009aa:	4a2c      	ldr	r2, [pc, #176]	; (8000a5c <HAL_UART_MspInit+0x1c0>)
 80009ac:	687b      	ldr	r3, [r7, #4]
 80009ae:	6393      	str	r3, [r2, #56]	; 0x38
    
  /* Configure the DMA handler for Transmission process */
  hdma_rx.Instance                 = USARTx_RX_DMA_STREAM;
 80009b0:	4b2c      	ldr	r3, [pc, #176]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009b2:	4a2d      	ldr	r2, [pc, #180]	; (8000a68 <HAL_UART_MspInit+0x1cc>)
 80009b4:	601a      	str	r2, [r3, #0]
  
  hdma_rx.Init.Channel             = USARTx_RX_DMA_CHANNEL;
 80009b6:	4b2b      	ldr	r3, [pc, #172]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009b8:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80009bc:	605a      	str	r2, [r3, #4]
  hdma_rx.Init.Direction           = DMA_PERIPH_TO_MEMORY;
 80009be:	4b29      	ldr	r3, [pc, #164]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009c0:	2200      	movs	r2, #0
 80009c2:	609a      	str	r2, [r3, #8]
  hdma_rx.Init.PeriphInc           = DMA_PINC_DISABLE;
 80009c4:	4b27      	ldr	r3, [pc, #156]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009c6:	2200      	movs	r2, #0
 80009c8:	60da      	str	r2, [r3, #12]
  hdma_rx.Init.MemInc              = DMA_MINC_ENABLE;
 80009ca:	4b26      	ldr	r3, [pc, #152]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009cc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80009d0:	611a      	str	r2, [r3, #16]
  hdma_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 80009d2:	4b24      	ldr	r3, [pc, #144]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009d4:	2200      	movs	r2, #0
 80009d6:	615a      	str	r2, [r3, #20]
  hdma_rx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 80009d8:	4b22      	ldr	r3, [pc, #136]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009da:	2200      	movs	r2, #0
 80009dc:	619a      	str	r2, [r3, #24]
  hdma_rx.Init.Mode                = DMA_NORMAL;
 80009de:	4b21      	ldr	r3, [pc, #132]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009e0:	2200      	movs	r2, #0
 80009e2:	61da      	str	r2, [r3, #28]
  hdma_rx.Init.Priority            = DMA_PRIORITY_HIGH;
 80009e4:	4b1f      	ldr	r3, [pc, #124]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009e6:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 80009ea:	621a      	str	r2, [r3, #32]
  hdma_rx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;         
 80009ec:	4b1d      	ldr	r3, [pc, #116]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009ee:	2200      	movs	r2, #0
 80009f0:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_rx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 80009f2:	4b1c      	ldr	r3, [pc, #112]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009f4:	2203      	movs	r2, #3
 80009f6:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_rx.Init.MemBurst            = DMA_MBURST_INC4;
 80009f8:	4b1a      	ldr	r3, [pc, #104]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 80009fa:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 80009fe:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_rx.Init.PeriphBurst         = DMA_PBURST_INC4; 
 8000a00:	4b18      	ldr	r3, [pc, #96]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 8000a02:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8000a06:	631a      	str	r2, [r3, #48]	; 0x30

  HAL_DMA_Init(&hdma_rx);
 8000a08:	4816      	ldr	r0, [pc, #88]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 8000a0a:	f000 ff4b 	bl	80018a4 <HAL_DMA_Init>
    
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmarx, hdma_rx);
 8000a0e:	687b      	ldr	r3, [r7, #4]
 8000a10:	4a14      	ldr	r2, [pc, #80]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 8000a12:	639a      	str	r2, [r3, #56]	; 0x38
 8000a14:	4a13      	ldr	r2, [pc, #76]	; (8000a64 <HAL_UART_MspInit+0x1c8>)
 8000a16:	687b      	ldr	r3, [r7, #4]
 8000a18:	6393      	str	r3, [r2, #56]	; 0x38
    
  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_TX) */
  HAL_NVIC_SetPriority(USARTx_DMA_TX_IRQn, 0, 1);
 8000a1a:	2201      	movs	r2, #1
 8000a1c:	2100      	movs	r1, #0
 8000a1e:	2011      	movs	r0, #17
 8000a20:	f000 fa9f 	bl	8000f62 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_TX_IRQn);
 8000a24:	2011      	movs	r0, #17
 8000a26:	f000 fab8 	bl	8000f9a <HAL_NVIC_EnableIRQ>
    
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_RX) */
  HAL_NVIC_SetPriority(USARTx_DMA_RX_IRQn, 0, 0);   
 8000a2a:	2200      	movs	r2, #0
 8000a2c:	2100      	movs	r1, #0
 8000a2e:	2010      	movs	r0, #16
 8000a30:	f000 fa97 	bl	8000f62 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_RX_IRQn);
 8000a34:	2010      	movs	r0, #16
 8000a36:	f000 fab0 	bl	8000f9a <HAL_NVIC_EnableIRQ>
  
  /* NVIC configuration for USART TC interrupt */
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
 8000a3a:	2200      	movs	r2, #0
 8000a3c:	2100      	movs	r1, #0
 8000a3e:	2026      	movs	r0, #38	; 0x26
 8000a40:	f000 fa8f 	bl	8000f62 <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_IRQn);
 8000a44:	2026      	movs	r0, #38	; 0x26
 8000a46:	f000 faa8 	bl	8000f9a <HAL_NVIC_EnableIRQ>
}
 8000a4a:	bf00      	nop
 8000a4c:	3730      	adds	r7, #48	; 0x30
 8000a4e:	46bd      	mov	sp, r7
 8000a50:	bd80      	pop	{r7, pc}
 8000a52:	bf00      	nop
 8000a54:	40023800 	.word	0x40023800
 8000a58:	40020000 	.word	0x40020000
 8000a5c:	20000a34 	.word	0x20000a34
 8000a60:	400260a0 	.word	0x400260a0
 8000a64:	20000a94 	.word	0x20000a94
 8000a68:	40026088 	.word	0x40026088

08000a6c <NMI_Handler>:
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
 8000a6c:	b480      	push	{r7}
 8000a6e:	af00      	add	r7, sp, #0
}
 8000a70:	bf00      	nop
 8000a72:	46bd      	mov	sp, r7
 8000a74:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a78:	4770      	bx	lr
	...

08000a7c <HardFault_Handler>:
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	af00      	add	r7, sp, #0
  printf("[%s]\n", __func__);
 8000a80:	4902      	ldr	r1, [pc, #8]	; (8000a8c <HardFault_Handler+0x10>)
 8000a82:	4803      	ldr	r0, [pc, #12]	; (8000a90 <HardFault_Handler+0x14>)
 8000a84:	f002 f812 	bl	8002aac <printf>
  // __asm volatile (
  //   "MOV     r0, lr\n"                 /* get lr */
  //   "MOV     r1, sp\n"                  /* get stack pointer (current is MSP) */
  //   "BL      cm_backtrace_fault\n"
  // );
  for(;;);
 8000a88:	e7fe      	b.n	8000a88 <HardFault_Handler+0xc>
 8000a8a:	bf00      	nop
 8000a8c:	08007bf0 	.word	0x08007bf0
 8000a90:	08007be8 	.word	0x08007be8

08000a94 <MemManage_Handler>:
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
 8000a94:	b480      	push	{r7}
 8000a96:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
 8000a98:	e7fe      	b.n	8000a98 <MemManage_Handler+0x4>

08000a9a <BusFault_Handler>:
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
 8000a9a:	b480      	push	{r7}
 8000a9c:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
 8000a9e:	e7fe      	b.n	8000a9e <BusFault_Handler+0x4>

08000aa0 <UsageFault_Handler>:
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
 8000aa0:	b480      	push	{r7}
 8000aa2:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
 8000aa4:	e7fe      	b.n	8000aa4 <UsageFault_Handler+0x4>

08000aa6 <SVC_Handler>:
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
 8000aa6:	b480      	push	{r7}
 8000aa8:	af00      	add	r7, sp, #0
}
 8000aaa:	bf00      	nop
 8000aac:	46bd      	mov	sp, r7
 8000aae:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ab2:	4770      	bx	lr

08000ab4 <DebugMon_Handler>:
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
 8000ab4:	b480      	push	{r7}
 8000ab6:	af00      	add	r7, sp, #0
}
 8000ab8:	bf00      	nop
 8000aba:	46bd      	mov	sp, r7
 8000abc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ac0:	4770      	bx	lr

08000ac2 <SysTick_Handler>:
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
 8000ac2:	b580      	push	{r7, lr}
 8000ac4:	af00      	add	r7, sp, #0
  HAL_IncTick();
 8000ac6:	f000 f923 	bl	8000d10 <HAL_IncTick>
}
 8000aca:	bf00      	nop
 8000acc:	bd80      	pop	{r7, pc}

08000ace <_read>:
	_kill(status, -1);
	while (1) {}		/* Make sure we hang here */
}

int _read (int file, char *ptr, int len)
{
 8000ace:	b580      	push	{r7, lr}
 8000ad0:	b086      	sub	sp, #24
 8000ad2:	af00      	add	r7, sp, #0
 8000ad4:	60f8      	str	r0, [r7, #12]
 8000ad6:	60b9      	str	r1, [r7, #8]
 8000ad8:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000ada:	2300      	movs	r3, #0
 8000adc:	617b      	str	r3, [r7, #20]
 8000ade:	e00a      	b.n	8000af6 <_read+0x28>
	{
		*ptr++ = __io_getchar();
 8000ae0:	f3af 8000 	nop.w
 8000ae4:	4601      	mov	r1, r0
 8000ae6:	68bb      	ldr	r3, [r7, #8]
 8000ae8:	1c5a      	adds	r2, r3, #1
 8000aea:	60ba      	str	r2, [r7, #8]
 8000aec:	b2ca      	uxtb	r2, r1
 8000aee:	701a      	strb	r2, [r3, #0]
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000af0:	697b      	ldr	r3, [r7, #20]
 8000af2:	3301      	adds	r3, #1
 8000af4:	617b      	str	r3, [r7, #20]
 8000af6:	697a      	ldr	r2, [r7, #20]
 8000af8:	687b      	ldr	r3, [r7, #4]
 8000afa:	429a      	cmp	r2, r3
 8000afc:	dbf0      	blt.n	8000ae0 <_read+0x12>
	}

return len;
 8000afe:	687b      	ldr	r3, [r7, #4]
}
 8000b00:	4618      	mov	r0, r3
 8000b02:	3718      	adds	r7, #24
 8000b04:	46bd      	mov	sp, r7
 8000b06:	bd80      	pop	{r7, pc}

08000b08 <_write>:

int _write(int file, char *ptr, int len)
{
 8000b08:	b580      	push	{r7, lr}
 8000b0a:	b086      	sub	sp, #24
 8000b0c:	af00      	add	r7, sp, #0
 8000b0e:	60f8      	str	r0, [r7, #12]
 8000b10:	60b9      	str	r1, [r7, #8]
 8000b12:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000b14:	2300      	movs	r3, #0
 8000b16:	617b      	str	r3, [r7, #20]
 8000b18:	e009      	b.n	8000b2e <_write+0x26>
	{
		__io_putchar(*ptr++);
 8000b1a:	68bb      	ldr	r3, [r7, #8]
 8000b1c:	1c5a      	adds	r2, r3, #1
 8000b1e:	60ba      	str	r2, [r7, #8]
 8000b20:	781b      	ldrb	r3, [r3, #0]
 8000b22:	4618      	mov	r0, r3
 8000b24:	f7ff fc2a 	bl	800037c <__io_putchar>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8000b28:	697b      	ldr	r3, [r7, #20]
 8000b2a:	3301      	adds	r3, #1
 8000b2c:	617b      	str	r3, [r7, #20]
 8000b2e:	697a      	ldr	r2, [r7, #20]
 8000b30:	687b      	ldr	r3, [r7, #4]
 8000b32:	429a      	cmp	r2, r3
 8000b34:	dbf1      	blt.n	8000b1a <_write+0x12>
	}
	return len;
 8000b36:	687b      	ldr	r3, [r7, #4]
}
 8000b38:	4618      	mov	r0, r3
 8000b3a:	3718      	adds	r7, #24
 8000b3c:	46bd      	mov	sp, r7
 8000b3e:	bd80      	pop	{r7, pc}

08000b40 <_sbrk>:

caddr_t _sbrk(int incr)
{
 8000b40:	b580      	push	{r7, lr}
 8000b42:	b084      	sub	sp, #16
 8000b44:	af00      	add	r7, sp, #0
 8000b46:	6078      	str	r0, [r7, #4]
	extern char end asm("end");
	static char *heap_end;
	char *prev_heap_end;

	if (heap_end == 0)
 8000b48:	4b11      	ldr	r3, [pc, #68]	; (8000b90 <_sbrk+0x50>)
 8000b4a:	681b      	ldr	r3, [r3, #0]
 8000b4c:	2b00      	cmp	r3, #0
 8000b4e:	d102      	bne.n	8000b56 <_sbrk+0x16>
		heap_end = &end;
 8000b50:	4b0f      	ldr	r3, [pc, #60]	; (8000b90 <_sbrk+0x50>)
 8000b52:	4a10      	ldr	r2, [pc, #64]	; (8000b94 <_sbrk+0x54>)
 8000b54:	601a      	str	r2, [r3, #0]

	prev_heap_end = heap_end;
 8000b56:	4b0e      	ldr	r3, [pc, #56]	; (8000b90 <_sbrk+0x50>)
 8000b58:	681b      	ldr	r3, [r3, #0]
 8000b5a:	60fb      	str	r3, [r7, #12]
	if (heap_end + incr > stack_ptr)
 8000b5c:	4b0c      	ldr	r3, [pc, #48]	; (8000b90 <_sbrk+0x50>)
 8000b5e:	681a      	ldr	r2, [r3, #0]
 8000b60:	687b      	ldr	r3, [r7, #4]
 8000b62:	4413      	add	r3, r2
 8000b64:	466a      	mov	r2, sp
 8000b66:	4293      	cmp	r3, r2
 8000b68:	d907      	bls.n	8000b7a <_sbrk+0x3a>
	{
//		write(1, "Heap and stack collision\n", 25);
//		abort();
		errno = ENOMEM;
 8000b6a:	f001 fe91 	bl	8002890 <__errno>
 8000b6e:	4602      	mov	r2, r0
 8000b70:	230c      	movs	r3, #12
 8000b72:	6013      	str	r3, [r2, #0]
		return (caddr_t) -1;
 8000b74:	f04f 33ff 	mov.w	r3, #4294967295
 8000b78:	e006      	b.n	8000b88 <_sbrk+0x48>
	}

	heap_end += incr;
 8000b7a:	4b05      	ldr	r3, [pc, #20]	; (8000b90 <_sbrk+0x50>)
 8000b7c:	681a      	ldr	r2, [r3, #0]
 8000b7e:	687b      	ldr	r3, [r7, #4]
 8000b80:	4413      	add	r3, r2
 8000b82:	4a03      	ldr	r2, [pc, #12]	; (8000b90 <_sbrk+0x50>)
 8000b84:	6013      	str	r3, [r2, #0]

	return (caddr_t) prev_heap_end;
 8000b86:	68fb      	ldr	r3, [r7, #12]
}
 8000b88:	4618      	mov	r0, r3
 8000b8a:	3710      	adds	r7, #16
 8000b8c:	46bd      	mov	sp, r7
 8000b8e:	bd80      	pop	{r7, pc}
 8000b90:	20000af4 	.word	0x20000af4
 8000b94:	20000b9c 	.word	0x20000b9c

08000b98 <_close>:

int _close(int file)
{
 8000b98:	b480      	push	{r7}
 8000b9a:	b083      	sub	sp, #12
 8000b9c:	af00      	add	r7, sp, #0
 8000b9e:	6078      	str	r0, [r7, #4]
	return -1;
 8000ba0:	f04f 33ff 	mov.w	r3, #4294967295
}
 8000ba4:	4618      	mov	r0, r3
 8000ba6:	370c      	adds	r7, #12
 8000ba8:	46bd      	mov	sp, r7
 8000baa:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bae:	4770      	bx	lr

08000bb0 <_fstat>:


int _fstat(int file, struct stat *st)
{
 8000bb0:	b480      	push	{r7}
 8000bb2:	b083      	sub	sp, #12
 8000bb4:	af00      	add	r7, sp, #0
 8000bb6:	6078      	str	r0, [r7, #4]
 8000bb8:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
 8000bba:	683b      	ldr	r3, [r7, #0]
 8000bbc:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000bc0:	605a      	str	r2, [r3, #4]
	return 0;
 8000bc2:	2300      	movs	r3, #0
}
 8000bc4:	4618      	mov	r0, r3
 8000bc6:	370c      	adds	r7, #12
 8000bc8:	46bd      	mov	sp, r7
 8000bca:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bce:	4770      	bx	lr

08000bd0 <_isatty>:

int _isatty(int file)
{
 8000bd0:	b480      	push	{r7}
 8000bd2:	b083      	sub	sp, #12
 8000bd4:	af00      	add	r7, sp, #0
 8000bd6:	6078      	str	r0, [r7, #4]
	return 1;
 8000bd8:	2301      	movs	r3, #1
}
 8000bda:	4618      	mov	r0, r3
 8000bdc:	370c      	adds	r7, #12
 8000bde:	46bd      	mov	sp, r7
 8000be0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000be4:	4770      	bx	lr

08000be6 <_lseek>:

int _lseek(int file, int ptr, int dir)
{
 8000be6:	b480      	push	{r7}
 8000be8:	b085      	sub	sp, #20
 8000bea:	af00      	add	r7, sp, #0
 8000bec:	60f8      	str	r0, [r7, #12]
 8000bee:	60b9      	str	r1, [r7, #8]
 8000bf0:	607a      	str	r2, [r7, #4]
	return 0;
 8000bf2:	2300      	movs	r3, #0
}
 8000bf4:	4618      	mov	r0, r3
 8000bf6:	3714      	adds	r7, #20
 8000bf8:	46bd      	mov	sp, r7
 8000bfa:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bfe:	4770      	bx	lr

08000c00 <SystemInit>:
  *         configuration.
  * @param  None
  * @retval None
  */
void SystemInit(void)
{
 8000c00:	b480      	push	{r7}
 8000c02:	af00      	add	r7, sp, #0
  /* FPU settings ------------------------------------------------------------*/
  #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
    SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
 8000c04:	4b16      	ldr	r3, [pc, #88]	; (8000c60 <SystemInit+0x60>)
 8000c06:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8000c0a:	4a15      	ldr	r2, [pc, #84]	; (8000c60 <SystemInit+0x60>)
 8000c0c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8000c10:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
  #endif
  /* Reset the RCC clock configuration to the default reset state ------------*/
  /* Set HSION bit */
  RCC->CR |= (uint32_t)0x00000001;
 8000c14:	4b13      	ldr	r3, [pc, #76]	; (8000c64 <SystemInit+0x64>)
 8000c16:	681b      	ldr	r3, [r3, #0]
 8000c18:	4a12      	ldr	r2, [pc, #72]	; (8000c64 <SystemInit+0x64>)
 8000c1a:	f043 0301 	orr.w	r3, r3, #1
 8000c1e:	6013      	str	r3, [r2, #0]

  /* Reset CFGR register */
  RCC->CFGR = 0x00000000;
 8000c20:	4b10      	ldr	r3, [pc, #64]	; (8000c64 <SystemInit+0x64>)
 8000c22:	2200      	movs	r2, #0
 8000c24:	609a      	str	r2, [r3, #8]

  /* Reset HSEON, CSSON and PLLON bits */
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 8000c26:	4b0f      	ldr	r3, [pc, #60]	; (8000c64 <SystemInit+0x64>)
 8000c28:	681b      	ldr	r3, [r3, #0]
 8000c2a:	4a0e      	ldr	r2, [pc, #56]	; (8000c64 <SystemInit+0x64>)
 8000c2c:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000c30:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000c34:	6013      	str	r3, [r2, #0]

  /* Reset PLLCFGR register */
  RCC->PLLCFGR = 0x24003010;
 8000c36:	4b0b      	ldr	r3, [pc, #44]	; (8000c64 <SystemInit+0x64>)
 8000c38:	4a0b      	ldr	r2, [pc, #44]	; (8000c68 <SystemInit+0x68>)
 8000c3a:	605a      	str	r2, [r3, #4]

  /* Reset HSEBYP bit */
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 8000c3c:	4b09      	ldr	r3, [pc, #36]	; (8000c64 <SystemInit+0x64>)
 8000c3e:	681b      	ldr	r3, [r3, #0]
 8000c40:	4a08      	ldr	r2, [pc, #32]	; (8000c64 <SystemInit+0x64>)
 8000c42:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8000c46:	6013      	str	r3, [r2, #0]

  /* Disable all interrupts */
  RCC->CIR = 0x00000000;
 8000c48:	4b06      	ldr	r3, [pc, #24]	; (8000c64 <SystemInit+0x64>)
 8000c4a:	2200      	movs	r2, #0
 8000c4c:	60da      	str	r2, [r3, #12]

  /* Configure the Vector Table location add offset address ------------------*/
#ifdef VECT_TAB_SRAM
  SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
#else
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
 8000c4e:	4b04      	ldr	r3, [pc, #16]	; (8000c60 <SystemInit+0x60>)
 8000c50:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000c54:	609a      	str	r2, [r3, #8]
#endif
}
 8000c56:	bf00      	nop
 8000c58:	46bd      	mov	sp, r7
 8000c5a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000c5e:	4770      	bx	lr
 8000c60:	e000ed00 	.word	0xe000ed00
 8000c64:	40023800 	.word	0x40023800
 8000c68:	24003010 	.word	0x24003010

08000c6c <HAL_Init>:
  *         need to ensure that the SysTick time base is always set to 1 millisecond
  *         to have correct HAL operation.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_Init(void)
{
 8000c6c:	b580      	push	{r7, lr}
 8000c6e:	af00      	add	r7, sp, #0
  /* Configure Flash prefetch, Instruction cache, Data cache */ 
#if (INSTRUCTION_CACHE_ENABLE != 0U)
  __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
 8000c70:	4b0e      	ldr	r3, [pc, #56]	; (8000cac <HAL_Init+0x40>)
 8000c72:	681b      	ldr	r3, [r3, #0]
 8000c74:	4a0d      	ldr	r2, [pc, #52]	; (8000cac <HAL_Init+0x40>)
 8000c76:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8000c7a:	6013      	str	r3, [r2, #0]
#endif /* INSTRUCTION_CACHE_ENABLE */

#if (DATA_CACHE_ENABLE != 0U)
  __HAL_FLASH_DATA_CACHE_ENABLE();
 8000c7c:	4b0b      	ldr	r3, [pc, #44]	; (8000cac <HAL_Init+0x40>)
 8000c7e:	681b      	ldr	r3, [r3, #0]
 8000c80:	4a0a      	ldr	r2, [pc, #40]	; (8000cac <HAL_Init+0x40>)
 8000c82:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8000c86:	6013      	str	r3, [r2, #0]
#endif /* DATA_CACHE_ENABLE */

#if (PREFETCH_ENABLE != 0U)
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 8000c88:	4b08      	ldr	r3, [pc, #32]	; (8000cac <HAL_Init+0x40>)
 8000c8a:	681b      	ldr	r3, [r3, #0]
 8000c8c:	4a07      	ldr	r2, [pc, #28]	; (8000cac <HAL_Init+0x40>)
 8000c8e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8000c92:	6013      	str	r3, [r2, #0]
#endif /* PREFETCH_ENABLE */

  /* Set Interrupt Group Priority */
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 8000c94:	2003      	movs	r0, #3
 8000c96:	f000 f959 	bl	8000f4c <HAL_NVIC_SetPriorityGrouping>

  /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
  HAL_InitTick(TICK_INT_PRIORITY);
 8000c9a:	200f      	movs	r0, #15
 8000c9c:	f000 f808 	bl	8000cb0 <HAL_InitTick>

  /* Init the low level hardware */
  HAL_MspInit();
 8000ca0:	f000 f87c 	bl	8000d9c <HAL_MspInit>

  /* Return function status */
  return HAL_OK;
 8000ca4:	2300      	movs	r3, #0
}
 8000ca6:	4618      	mov	r0, r3
 8000ca8:	bd80      	pop	{r7, pc}
 8000caa:	bf00      	nop
 8000cac:	40023c00 	.word	0x40023c00

08000cb0 <HAL_InitTick>:
  *       implementation  in user file.
  * @param TickPriority Tick interrupt priority.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
 8000cb0:	b580      	push	{r7, lr}
 8000cb2:	b082      	sub	sp, #8
 8000cb4:	af00      	add	r7, sp, #0
 8000cb6:	6078      	str	r0, [r7, #4]
  /* Configure the SysTick to have interrupt in 1ms time basis*/
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000cb8:	4b12      	ldr	r3, [pc, #72]	; (8000d04 <HAL_InitTick+0x54>)
 8000cba:	681a      	ldr	r2, [r3, #0]
 8000cbc:	4b12      	ldr	r3, [pc, #72]	; (8000d08 <HAL_InitTick+0x58>)
 8000cbe:	781b      	ldrb	r3, [r3, #0]
 8000cc0:	4619      	mov	r1, r3
 8000cc2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000cc6:	fbb3 f3f1 	udiv	r3, r3, r1
 8000cca:	fbb2 f3f3 	udiv	r3, r2, r3
 8000cce:	4618      	mov	r0, r3
 8000cd0:	f000 f971 	bl	8000fb6 <HAL_SYSTICK_Config>
 8000cd4:	4603      	mov	r3, r0
 8000cd6:	2b00      	cmp	r3, #0
 8000cd8:	d001      	beq.n	8000cde <HAL_InitTick+0x2e>
  {
    return HAL_ERROR;
 8000cda:	2301      	movs	r3, #1
 8000cdc:	e00e      	b.n	8000cfc <HAL_InitTick+0x4c>
  }

  /* Configure the SysTick IRQ priority */
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 8000cde:	687b      	ldr	r3, [r7, #4]
 8000ce0:	2b0f      	cmp	r3, #15
 8000ce2:	d80a      	bhi.n	8000cfa <HAL_InitTick+0x4a>
  {
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8000ce4:	2200      	movs	r2, #0
 8000ce6:	6879      	ldr	r1, [r7, #4]
 8000ce8:	f04f 30ff 	mov.w	r0, #4294967295
 8000cec:	f000 f939 	bl	8000f62 <HAL_NVIC_SetPriority>
    uwTickPrio = TickPriority;
 8000cf0:	4a06      	ldr	r2, [pc, #24]	; (8000d0c <HAL_InitTick+0x5c>)
 8000cf2:	687b      	ldr	r3, [r7, #4]
 8000cf4:	6013      	str	r3, [r2, #0]
  {
    return HAL_ERROR;
  }

  /* Return function status */
  return HAL_OK;
 8000cf6:	2300      	movs	r3, #0
 8000cf8:	e000      	b.n	8000cfc <HAL_InitTick+0x4c>
    return HAL_ERROR;
 8000cfa:	2301      	movs	r3, #1
}
 8000cfc:	4618      	mov	r0, r3
 8000cfe:	3708      	adds	r7, #8
 8000d00:	46bd      	mov	sp, r7
 8000d02:	bd80      	pop	{r7, pc}
 8000d04:	20000000 	.word	0x20000000
 8000d08:	20000008 	.word	0x20000008
 8000d0c:	20000004 	.word	0x20000004

08000d10 <HAL_IncTick>:
 * @note This function is declared as __weak to be overwritten in case of other 
  *      implementations in user file.
  * @retval None
  */
__weak void HAL_IncTick(void)
{
 8000d10:	b480      	push	{r7}
 8000d12:	af00      	add	r7, sp, #0
  uwTick += uwTickFreq;
 8000d14:	4b06      	ldr	r3, [pc, #24]	; (8000d30 <HAL_IncTick+0x20>)
 8000d16:	781b      	ldrb	r3, [r3, #0]
 8000d18:	461a      	mov	r2, r3
 8000d1a:	4b06      	ldr	r3, [pc, #24]	; (8000d34 <HAL_IncTick+0x24>)
 8000d1c:	681b      	ldr	r3, [r3, #0]
 8000d1e:	4413      	add	r3, r2
 8000d20:	4a04      	ldr	r2, [pc, #16]	; (8000d34 <HAL_IncTick+0x24>)
 8000d22:	6013      	str	r3, [r2, #0]
}
 8000d24:	bf00      	nop
 8000d26:	46bd      	mov	sp, r7
 8000d28:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d2c:	4770      	bx	lr
 8000d2e:	bf00      	nop
 8000d30:	20000008 	.word	0x20000008
 8000d34:	20000b70 	.word	0x20000b70

08000d38 <HAL_GetTick>:
  * @note This function is declared as __weak to be overwritten in case of other 
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
 8000d38:	b480      	push	{r7}
 8000d3a:	af00      	add	r7, sp, #0
  return uwTick;
 8000d3c:	4b03      	ldr	r3, [pc, #12]	; (8000d4c <HAL_GetTick+0x14>)
 8000d3e:	681b      	ldr	r3, [r3, #0]
}
 8000d40:	4618      	mov	r0, r3
 8000d42:	46bd      	mov	sp, r7
 8000d44:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d48:	4770      	bx	lr
 8000d4a:	bf00      	nop
 8000d4c:	20000b70 	.word	0x20000b70

08000d50 <HAL_Delay>:
  *       implementations in user file.
  * @param Delay specifies the delay time length, in milliseconds.
  * @retval None
  */
__weak void HAL_Delay(uint32_t Delay)
{
 8000d50:	b580      	push	{r7, lr}
 8000d52:	b086      	sub	sp, #24
 8000d54:	af00      	add	r7, sp, #0
 8000d56:	6078      	str	r0, [r7, #4]
  uint32_t tickstart = HAL_GetTick();
 8000d58:	f7ff ffee 	bl	8000d38 <HAL_GetTick>
 8000d5c:	60f8      	str	r0, [r7, #12]
  uint32_t wait = Delay;
 8000d5e:	687b      	ldr	r3, [r7, #4]
 8000d60:	617b      	str	r3, [r7, #20]
  uint32_t tickend;
  /* Add a freq to guarantee minimum wait */
  if (wait < HAL_MAX_DELAY)
 8000d62:	697b      	ldr	r3, [r7, #20]
 8000d64:	f1b3 3fff 	cmp.w	r3, #4294967295
 8000d68:	d005      	beq.n	8000d76 <HAL_Delay+0x26>
  {
    wait += (uint32_t)(uwTickFreq);
 8000d6a:	4b0b      	ldr	r3, [pc, #44]	; (8000d98 <HAL_Delay+0x48>)
 8000d6c:	781b      	ldrb	r3, [r3, #0]
 8000d6e:	461a      	mov	r2, r3
 8000d70:	697b      	ldr	r3, [r7, #20]
 8000d72:	4413      	add	r3, r2
 8000d74:	617b      	str	r3, [r7, #20]
  }
  tickend = HAL_GetTick();
 8000d76:	f7ff ffdf 	bl	8000d38 <HAL_GetTick>
 8000d7a:	6138      	str	r0, [r7, #16]
  while((tickend - tickstart) < wait)
 8000d7c:	e002      	b.n	8000d84 <HAL_Delay+0x34>
  {
    tickend = HAL_GetTick();
 8000d7e:	f7ff ffdb 	bl	8000d38 <HAL_GetTick>
 8000d82:	6138      	str	r0, [r7, #16]
  while((tickend - tickstart) < wait)
 8000d84:	693a      	ldr	r2, [r7, #16]
 8000d86:	68fb      	ldr	r3, [r7, #12]
 8000d88:	1ad3      	subs	r3, r2, r3
 8000d8a:	697a      	ldr	r2, [r7, #20]
 8000d8c:	429a      	cmp	r2, r3
 8000d8e:	d8f6      	bhi.n	8000d7e <HAL_Delay+0x2e>
  }
}
 8000d90:	bf00      	nop
 8000d92:	3718      	adds	r7, #24
 8000d94:	46bd      	mov	sp, r7
 8000d96:	bd80      	pop	{r7, pc}
 8000d98:	20000008 	.word	0x20000008

08000d9c <HAL_MspInit>:
  * @note   This function is called from HAL_Init() function to perform system
  *         level initialization (GPIOs, clock, DMA, interrupt).
  * @retval None
  */
void HAL_MspInit(void)
{
 8000d9c:	b480      	push	{r7}
 8000d9e:	af00      	add	r7, sp, #0

}
 8000da0:	bf00      	nop
 8000da2:	46bd      	mov	sp, r7
 8000da4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000da8:	4770      	bx	lr
	...

08000dac <__NVIC_SetPriorityGrouping>:
           In case of a conflict between priority grouping and available
           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  \param [in]      PriorityGroup  Priority grouping field.
 */
__STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000dac:	b480      	push	{r7}
 8000dae:	b085      	sub	sp, #20
 8000db0:	af00      	add	r7, sp, #0
 8000db2:	6078      	str	r0, [r7, #4]
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 8000db4:	687b      	ldr	r3, [r7, #4]
 8000db6:	f003 0307 	and.w	r3, r3, #7
 8000dba:	60fb      	str	r3, [r7, #12]

  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 8000dbc:	4b0c      	ldr	r3, [pc, #48]	; (8000df0 <__NVIC_SetPriorityGrouping+0x44>)
 8000dbe:	68db      	ldr	r3, [r3, #12]
 8000dc0:	60bb      	str	r3, [r7, #8]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 8000dc2:	68ba      	ldr	r2, [r7, #8]
 8000dc4:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000dc8:	4013      	ands	r3, r2
 8000dca:	60bb      	str	r3, [r7, #8]
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
                (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 8000dcc:	68fb      	ldr	r3, [r7, #12]
 8000dce:	021a      	lsls	r2, r3, #8
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 8000dd0:	68bb      	ldr	r3, [r7, #8]
 8000dd2:	4313      	orrs	r3, r2
  reg_value  =  (reg_value                                   |
 8000dd4:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000dd8:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000ddc:	60bb      	str	r3, [r7, #8]
  SCB->AIRCR =  reg_value;
 8000dde:	4a04      	ldr	r2, [pc, #16]	; (8000df0 <__NVIC_SetPriorityGrouping+0x44>)
 8000de0:	68bb      	ldr	r3, [r7, #8]
 8000de2:	60d3      	str	r3, [r2, #12]
}
 8000de4:	bf00      	nop
 8000de6:	3714      	adds	r7, #20
 8000de8:	46bd      	mov	sp, r7
 8000dea:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000dee:	4770      	bx	lr
 8000df0:	e000ed00 	.word	0xe000ed00

08000df4 <__NVIC_GetPriorityGrouping>:
  \brief   Get Priority Grouping
  \details Reads the priority grouping field from the NVIC Interrupt Controller.
  \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
__STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
{
 8000df4:	b480      	push	{r7}
 8000df6:	af00      	add	r7, sp, #0
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8000df8:	4b04      	ldr	r3, [pc, #16]	; (8000e0c <__NVIC_GetPriorityGrouping+0x18>)
 8000dfa:	68db      	ldr	r3, [r3, #12]
 8000dfc:	0a1b      	lsrs	r3, r3, #8
 8000dfe:	f003 0307 	and.w	r3, r3, #7
}
 8000e02:	4618      	mov	r0, r3
 8000e04:	46bd      	mov	sp, r7
 8000e06:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e0a:	4770      	bx	lr
 8000e0c:	e000ed00 	.word	0xe000ed00

08000e10 <__NVIC_EnableIRQ>:
  \details Enables a device specific interrupt in the NVIC interrupt controller.
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000e10:	b480      	push	{r7}
 8000e12:	b083      	sub	sp, #12
 8000e14:	af00      	add	r7, sp, #0
 8000e16:	4603      	mov	r3, r0
 8000e18:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8000e1a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e1e:	2b00      	cmp	r3, #0
 8000e20:	db0b      	blt.n	8000e3a <__NVIC_EnableIRQ+0x2a>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 8000e22:	79fb      	ldrb	r3, [r7, #7]
 8000e24:	f003 021f 	and.w	r2, r3, #31
 8000e28:	4907      	ldr	r1, [pc, #28]	; (8000e48 <__NVIC_EnableIRQ+0x38>)
 8000e2a:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e2e:	095b      	lsrs	r3, r3, #5
 8000e30:	2001      	movs	r0, #1
 8000e32:	fa00 f202 	lsl.w	r2, r0, r2
 8000e36:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
  }
}
 8000e3a:	bf00      	nop
 8000e3c:	370c      	adds	r7, #12
 8000e3e:	46bd      	mov	sp, r7
 8000e40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e44:	4770      	bx	lr
 8000e46:	bf00      	nop
 8000e48:	e000e100 	.word	0xe000e100

08000e4c <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
 8000e4c:	b480      	push	{r7}
 8000e4e:	b083      	sub	sp, #12
 8000e50:	af00      	add	r7, sp, #0
 8000e52:	4603      	mov	r3, r0
 8000e54:	6039      	str	r1, [r7, #0]
 8000e56:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8000e58:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e5c:	2b00      	cmp	r3, #0
 8000e5e:	db0a      	blt.n	8000e76 <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000e60:	683b      	ldr	r3, [r7, #0]
 8000e62:	b2da      	uxtb	r2, r3
 8000e64:	490c      	ldr	r1, [pc, #48]	; (8000e98 <__NVIC_SetPriority+0x4c>)
 8000e66:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000e6a:	0112      	lsls	r2, r2, #4
 8000e6c:	b2d2      	uxtb	r2, r2
 8000e6e:	440b      	add	r3, r1
 8000e70:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
 8000e74:	e00a      	b.n	8000e8c <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000e76:	683b      	ldr	r3, [r7, #0]
 8000e78:	b2da      	uxtb	r2, r3
 8000e7a:	4908      	ldr	r1, [pc, #32]	; (8000e9c <__NVIC_SetPriority+0x50>)
 8000e7c:	79fb      	ldrb	r3, [r7, #7]
 8000e7e:	f003 030f 	and.w	r3, r3, #15
 8000e82:	3b04      	subs	r3, #4
 8000e84:	0112      	lsls	r2, r2, #4
 8000e86:	b2d2      	uxtb	r2, r2
 8000e88:	440b      	add	r3, r1
 8000e8a:	761a      	strb	r2, [r3, #24]
}
 8000e8c:	bf00      	nop
 8000e8e:	370c      	adds	r7, #12
 8000e90:	46bd      	mov	sp, r7
 8000e92:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000e96:	4770      	bx	lr
 8000e98:	e000e100 	.word	0xe000e100
 8000e9c:	e000ed00 	.word	0xe000ed00

08000ea0 <NVIC_EncodePriority>:
  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  \param [in]       SubPriority  Subpriority value (starting from 0).
  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
__STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
 8000ea0:	b480      	push	{r7}
 8000ea2:	b089      	sub	sp, #36	; 0x24
 8000ea4:	af00      	add	r7, sp, #0
 8000ea6:	60f8      	str	r0, [r7, #12]
 8000ea8:	60b9      	str	r1, [r7, #8]
 8000eaa:	607a      	str	r2, [r7, #4]
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 8000eac:	68fb      	ldr	r3, [r7, #12]
 8000eae:	f003 0307 	and.w	r3, r3, #7
 8000eb2:	61fb      	str	r3, [r7, #28]
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 8000eb4:	69fb      	ldr	r3, [r7, #28]
 8000eb6:	f1c3 0307 	rsb	r3, r3, #7
 8000eba:	2b04      	cmp	r3, #4
 8000ebc:	bf28      	it	cs
 8000ebe:	2304      	movcs	r3, #4
 8000ec0:	61bb      	str	r3, [r7, #24]
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 8000ec2:	69fb      	ldr	r3, [r7, #28]
 8000ec4:	3304      	adds	r3, #4
 8000ec6:	2b06      	cmp	r3, #6
 8000ec8:	d902      	bls.n	8000ed0 <NVIC_EncodePriority+0x30>
 8000eca:	69fb      	ldr	r3, [r7, #28]
 8000ecc:	3b03      	subs	r3, #3
 8000ece:	e000      	b.n	8000ed2 <NVIC_EncodePriority+0x32>
 8000ed0:	2300      	movs	r3, #0
 8000ed2:	617b      	str	r3, [r7, #20]

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000ed4:	f04f 32ff 	mov.w	r2, #4294967295
 8000ed8:	69bb      	ldr	r3, [r7, #24]
 8000eda:	fa02 f303 	lsl.w	r3, r2, r3
 8000ede:	43da      	mvns	r2, r3
 8000ee0:	68bb      	ldr	r3, [r7, #8]
 8000ee2:	401a      	ands	r2, r3
 8000ee4:	697b      	ldr	r3, [r7, #20]
 8000ee6:	409a      	lsls	r2, r3
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8000ee8:	f04f 31ff 	mov.w	r1, #4294967295
 8000eec:	697b      	ldr	r3, [r7, #20]
 8000eee:	fa01 f303 	lsl.w	r3, r1, r3
 8000ef2:	43d9      	mvns	r1, r3
 8000ef4:	687b      	ldr	r3, [r7, #4]
 8000ef6:	400b      	ands	r3, r1
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000ef8:	4313      	orrs	r3, r2
         );
}
 8000efa:	4618      	mov	r0, r3
 8000efc:	3724      	adds	r7, #36	; 0x24
 8000efe:	46bd      	mov	sp, r7
 8000f00:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000f04:	4770      	bx	lr
	...

08000f08 <SysTick_Config>:
  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
 8000f08:	b580      	push	{r7, lr}
 8000f0a:	b082      	sub	sp, #8
 8000f0c:	af00      	add	r7, sp, #0
 8000f0e:	6078      	str	r0, [r7, #4]
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8000f10:	687b      	ldr	r3, [r7, #4]
 8000f12:	3b01      	subs	r3, #1
 8000f14:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000f18:	d301      	bcc.n	8000f1e <SysTick_Config+0x16>
  {
    return (1UL);                                                   /* Reload value impossible */
 8000f1a:	2301      	movs	r3, #1
 8000f1c:	e00f      	b.n	8000f3e <SysTick_Config+0x36>
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8000f1e:	4a0a      	ldr	r2, [pc, #40]	; (8000f48 <SysTick_Config+0x40>)
 8000f20:	687b      	ldr	r3, [r7, #4]
 8000f22:	3b01      	subs	r3, #1
 8000f24:	6053      	str	r3, [r2, #4]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 8000f26:	210f      	movs	r1, #15
 8000f28:	f04f 30ff 	mov.w	r0, #4294967295
 8000f2c:	f7ff ff8e 	bl	8000e4c <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8000f30:	4b05      	ldr	r3, [pc, #20]	; (8000f48 <SysTick_Config+0x40>)
 8000f32:	2200      	movs	r2, #0
 8000f34:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8000f36:	4b04      	ldr	r3, [pc, #16]	; (8000f48 <SysTick_Config+0x40>)
 8000f38:	2207      	movs	r2, #7
 8000f3a:	601a      	str	r2, [r3, #0]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 8000f3c:	2300      	movs	r3, #0
}
 8000f3e:	4618      	mov	r0, r3
 8000f40:	3708      	adds	r7, #8
 8000f42:	46bd      	mov	sp, r7
 8000f44:	bd80      	pop	{r7, pc}
 8000f46:	bf00      	nop
 8000f48:	e000e010 	.word	0xe000e010

08000f4c <HAL_NVIC_SetPriorityGrouping>:
  * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
  *         The pending IRQ priority will be managed only by the subpriority. 
  * @retval None
  */
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000f4c:	b580      	push	{r7, lr}
 8000f4e:	b082      	sub	sp, #8
 8000f50:	af00      	add	r7, sp, #0
 8000f52:	6078      	str	r0, [r7, #4]
  /* Check the parameters */
  assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
  
  /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
  NVIC_SetPriorityGrouping(PriorityGroup);
 8000f54:	6878      	ldr	r0, [r7, #4]
 8000f56:	f7ff ff29 	bl	8000dac <__NVIC_SetPriorityGrouping>
}
 8000f5a:	bf00      	nop
 8000f5c:	3708      	adds	r7, #8
 8000f5e:	46bd      	mov	sp, r7
 8000f60:	bd80      	pop	{r7, pc}

08000f62 <HAL_NVIC_SetPriority>:
  *         This parameter can be a value between 0 and 15
  *         A lower priority value indicates a higher priority.          
  * @retval None
  */
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
{ 
 8000f62:	b580      	push	{r7, lr}
 8000f64:	b086      	sub	sp, #24
 8000f66:	af00      	add	r7, sp, #0
 8000f68:	4603      	mov	r3, r0
 8000f6a:	60b9      	str	r1, [r7, #8]
 8000f6c:	607a      	str	r2, [r7, #4]
 8000f6e:	73fb      	strb	r3, [r7, #15]
  uint32_t prioritygroup = 0x00U;
 8000f70:	2300      	movs	r3, #0
 8000f72:	617b      	str	r3, [r7, #20]
  
  /* Check the parameters */
  assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
  
  prioritygroup = NVIC_GetPriorityGrouping();
 8000f74:	f7ff ff3e 	bl	8000df4 <__NVIC_GetPriorityGrouping>
 8000f78:	6178      	str	r0, [r7, #20]
  
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8000f7a:	687a      	ldr	r2, [r7, #4]
 8000f7c:	68b9      	ldr	r1, [r7, #8]
 8000f7e:	6978      	ldr	r0, [r7, #20]
 8000f80:	f7ff ff8e 	bl	8000ea0 <NVIC_EncodePriority>
 8000f84:	4602      	mov	r2, r0
 8000f86:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8000f8a:	4611      	mov	r1, r2
 8000f8c:	4618      	mov	r0, r3
 8000f8e:	f7ff ff5d 	bl	8000e4c <__NVIC_SetPriority>
}
 8000f92:	bf00      	nop
 8000f94:	3718      	adds	r7, #24
 8000f96:	46bd      	mov	sp, r7
 8000f98:	bd80      	pop	{r7, pc}

08000f9a <HAL_NVIC_EnableIRQ>:
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 8000f9a:	b580      	push	{r7, lr}
 8000f9c:	b082      	sub	sp, #8
 8000f9e:	af00      	add	r7, sp, #0
 8000fa0:	4603      	mov	r3, r0
 8000fa2:	71fb      	strb	r3, [r7, #7]
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
  
  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
 8000fa4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000fa8:	4618      	mov	r0, r3
 8000faa:	f7ff ff31 	bl	8000e10 <__NVIC_EnableIRQ>
}
 8000fae:	bf00      	nop
 8000fb0:	3708      	adds	r7, #8
 8000fb2:	46bd      	mov	sp, r7
 8000fb4:	bd80      	pop	{r7, pc}

08000fb6 <HAL_SYSTICK_Config>:
  * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 8000fb6:	b580      	push	{r7, lr}
 8000fb8:	b082      	sub	sp, #8
 8000fba:	af00      	add	r7, sp, #0
 8000fbc:	6078      	str	r0, [r7, #4]
   return SysTick_Config(TicksNumb);
 8000fbe:	6878      	ldr	r0, [r7, #4]
 8000fc0:	f7ff ffa2 	bl	8000f08 <SysTick_Config>
 8000fc4:	4603      	mov	r3, r0
}
 8000fc6:	4618      	mov	r0, r3
 8000fc8:	3708      	adds	r7, #8
 8000fca:	46bd      	mov	sp, r7
 8000fcc:	bd80      	pop	{r7, pc}
	...

08000fd0 <HAL_RCC_OscConfig>:
  *         supported by this API. User should request a transition to HSE Off
  *         first and then HSE On or HSE Bypass.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
{
 8000fd0:	b580      	push	{r7, lr}
 8000fd2:	b086      	sub	sp, #24
 8000fd4:	af00      	add	r7, sp, #0
 8000fd6:	6078      	str	r0, [r7, #4]
  uint32_t tickstart, pll_config;

  /* Check Null pointer */
  if(RCC_OscInitStruct == NULL)
 8000fd8:	687b      	ldr	r3, [r7, #4]
 8000fda:	2b00      	cmp	r3, #0
 8000fdc:	d101      	bne.n	8000fe2 <HAL_RCC_OscConfig+0x12>
  {
    return HAL_ERROR;
 8000fde:	2301      	movs	r3, #1
 8000fe0:	e264      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
  }

  /* Check the parameters */
  assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
  /*------------------------------- HSE Configuration ------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8000fe2:	687b      	ldr	r3, [r7, #4]
 8000fe4:	681b      	ldr	r3, [r3, #0]
 8000fe6:	f003 0301 	and.w	r3, r3, #1
 8000fea:	2b00      	cmp	r3, #0
 8000fec:	d075      	beq.n	80010da <HAL_RCC_OscConfig+0x10a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
    /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8000fee:	4ba3      	ldr	r3, [pc, #652]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8000ff0:	689b      	ldr	r3, [r3, #8]
 8000ff2:	f003 030c 	and.w	r3, r3, #12
 8000ff6:	2b04      	cmp	r3, #4
 8000ff8:	d00c      	beq.n	8001014 <HAL_RCC_OscConfig+0x44>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000ffa:	4ba0      	ldr	r3, [pc, #640]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8000ffc:	689b      	ldr	r3, [r3, #8]
 8000ffe:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 8001002:	2b08      	cmp	r3, #8
 8001004:	d112      	bne.n	800102c <HAL_RCC_OscConfig+0x5c>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8001006:	4b9d      	ldr	r3, [pc, #628]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001008:	685b      	ldr	r3, [r3, #4]
 800100a:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800100e:	f5b3 0f80 	cmp.w	r3, #4194304	; 0x400000
 8001012:	d10b      	bne.n	800102c <HAL_RCC_OscConfig+0x5c>
    {
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8001014:	4b99      	ldr	r3, [pc, #612]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001016:	681b      	ldr	r3, [r3, #0]
 8001018:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800101c:	2b00      	cmp	r3, #0
 800101e:	d05b      	beq.n	80010d8 <HAL_RCC_OscConfig+0x108>
 8001020:	687b      	ldr	r3, [r7, #4]
 8001022:	685b      	ldr	r3, [r3, #4]
 8001024:	2b00      	cmp	r3, #0
 8001026:	d157      	bne.n	80010d8 <HAL_RCC_OscConfig+0x108>
      {
        return HAL_ERROR;
 8001028:	2301      	movs	r3, #1
 800102a:	e23f      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      }
    }
    else
    {
      /* Set the new HSE configuration ---------------------------------------*/
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 800102c:	687b      	ldr	r3, [r7, #4]
 800102e:	685b      	ldr	r3, [r3, #4]
 8001030:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8001034:	d106      	bne.n	8001044 <HAL_RCC_OscConfig+0x74>
 8001036:	4b91      	ldr	r3, [pc, #580]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001038:	681b      	ldr	r3, [r3, #0]
 800103a:	4a90      	ldr	r2, [pc, #576]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800103c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001040:	6013      	str	r3, [r2, #0]
 8001042:	e01d      	b.n	8001080 <HAL_RCC_OscConfig+0xb0>
 8001044:	687b      	ldr	r3, [r7, #4]
 8001046:	685b      	ldr	r3, [r3, #4]
 8001048:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 800104c:	d10c      	bne.n	8001068 <HAL_RCC_OscConfig+0x98>
 800104e:	4b8b      	ldr	r3, [pc, #556]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001050:	681b      	ldr	r3, [r3, #0]
 8001052:	4a8a      	ldr	r2, [pc, #552]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001054:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8001058:	6013      	str	r3, [r2, #0]
 800105a:	4b88      	ldr	r3, [pc, #544]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800105c:	681b      	ldr	r3, [r3, #0]
 800105e:	4a87      	ldr	r2, [pc, #540]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001060:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8001064:	6013      	str	r3, [r2, #0]
 8001066:	e00b      	b.n	8001080 <HAL_RCC_OscConfig+0xb0>
 8001068:	4b84      	ldr	r3, [pc, #528]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800106a:	681b      	ldr	r3, [r3, #0]
 800106c:	4a83      	ldr	r2, [pc, #524]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800106e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001072:	6013      	str	r3, [r2, #0]
 8001074:	4b81      	ldr	r3, [pc, #516]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001076:	681b      	ldr	r3, [r3, #0]
 8001078:	4a80      	ldr	r2, [pc, #512]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800107a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800107e:	6013      	str	r3, [r2, #0]

      /* Check the HSE State */
      if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
 8001080:	687b      	ldr	r3, [r7, #4]
 8001082:	685b      	ldr	r3, [r3, #4]
 8001084:	2b00      	cmp	r3, #0
 8001086:	d013      	beq.n	80010b0 <HAL_RCC_OscConfig+0xe0>
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8001088:	f7ff fe56 	bl	8000d38 <HAL_GetTick>
 800108c:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 800108e:	e008      	b.n	80010a2 <HAL_RCC_OscConfig+0xd2>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 8001090:	f7ff fe52 	bl	8000d38 <HAL_GetTick>
 8001094:	4602      	mov	r2, r0
 8001096:	693b      	ldr	r3, [r7, #16]
 8001098:	1ad3      	subs	r3, r2, r3
 800109a:	2b64      	cmp	r3, #100	; 0x64
 800109c:	d901      	bls.n	80010a2 <HAL_RCC_OscConfig+0xd2>
          {
            return HAL_TIMEOUT;
 800109e:	2303      	movs	r3, #3
 80010a0:	e204      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 80010a2:	4b76      	ldr	r3, [pc, #472]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 80010a4:	681b      	ldr	r3, [r3, #0]
 80010a6:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80010aa:	2b00      	cmp	r3, #0
 80010ac:	d0f0      	beq.n	8001090 <HAL_RCC_OscConfig+0xc0>
 80010ae:	e014      	b.n	80010da <HAL_RCC_OscConfig+0x10a>
        }
      }
      else
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80010b0:	f7ff fe42 	bl	8000d38 <HAL_GetTick>
 80010b4:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is bypassed or disabled */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 80010b6:	e008      	b.n	80010ca <HAL_RCC_OscConfig+0xfa>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 80010b8:	f7ff fe3e 	bl	8000d38 <HAL_GetTick>
 80010bc:	4602      	mov	r2, r0
 80010be:	693b      	ldr	r3, [r7, #16]
 80010c0:	1ad3      	subs	r3, r2, r3
 80010c2:	2b64      	cmp	r3, #100	; 0x64
 80010c4:	d901      	bls.n	80010ca <HAL_RCC_OscConfig+0xfa>
          {
            return HAL_TIMEOUT;
 80010c6:	2303      	movs	r3, #3
 80010c8:	e1f0      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 80010ca:	4b6c      	ldr	r3, [pc, #432]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 80010cc:	681b      	ldr	r3, [r3, #0]
 80010ce:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80010d2:	2b00      	cmp	r3, #0
 80010d4:	d1f0      	bne.n	80010b8 <HAL_RCC_OscConfig+0xe8>
 80010d6:	e000      	b.n	80010da <HAL_RCC_OscConfig+0x10a>
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 80010d8:	bf00      	nop
        }
      }
    }
  }
  /*----------------------------- HSI Configuration --------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 80010da:	687b      	ldr	r3, [r7, #4]
 80010dc:	681b      	ldr	r3, [r3, #0]
 80010de:	f003 0302 	and.w	r3, r3, #2
 80010e2:	2b00      	cmp	r3, #0
 80010e4:	d063      	beq.n	80011ae <HAL_RCC_OscConfig+0x1de>
    /* Check the parameters */
    assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
    assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));

    /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 80010e6:	4b65      	ldr	r3, [pc, #404]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 80010e8:	689b      	ldr	r3, [r3, #8]
 80010ea:	f003 030c 	and.w	r3, r3, #12
 80010ee:	2b00      	cmp	r3, #0
 80010f0:	d00b      	beq.n	800110a <HAL_RCC_OscConfig+0x13a>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 80010f2:	4b62      	ldr	r3, [pc, #392]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 80010f4:	689b      	ldr	r3, [r3, #8]
 80010f6:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 80010fa:	2b08      	cmp	r3, #8
 80010fc:	d11c      	bne.n	8001138 <HAL_RCC_OscConfig+0x168>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 80010fe:	4b5f      	ldr	r3, [pc, #380]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001100:	685b      	ldr	r3, [r3, #4]
 8001102:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8001106:	2b00      	cmp	r3, #0
 8001108:	d116      	bne.n	8001138 <HAL_RCC_OscConfig+0x168>
    {
      /* When HSI is used as system clock it will not disabled */
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 800110a:	4b5c      	ldr	r3, [pc, #368]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800110c:	681b      	ldr	r3, [r3, #0]
 800110e:	f003 0302 	and.w	r3, r3, #2
 8001112:	2b00      	cmp	r3, #0
 8001114:	d005      	beq.n	8001122 <HAL_RCC_OscConfig+0x152>
 8001116:	687b      	ldr	r3, [r7, #4]
 8001118:	68db      	ldr	r3, [r3, #12]
 800111a:	2b01      	cmp	r3, #1
 800111c:	d001      	beq.n	8001122 <HAL_RCC_OscConfig+0x152>
      {
        return HAL_ERROR;
 800111e:	2301      	movs	r3, #1
 8001120:	e1c4      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      }
      /* Otherwise, just the calibration is allowed */
      else
      {
        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8001122:	4b56      	ldr	r3, [pc, #344]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001124:	681b      	ldr	r3, [r3, #0]
 8001126:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 800112a:	687b      	ldr	r3, [r7, #4]
 800112c:	691b      	ldr	r3, [r3, #16]
 800112e:	00db      	lsls	r3, r3, #3
 8001130:	4952      	ldr	r1, [pc, #328]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001132:	4313      	orrs	r3, r2
 8001134:	600b      	str	r3, [r1, #0]
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8001136:	e03a      	b.n	80011ae <HAL_RCC_OscConfig+0x1de>
      }
    }
    else
    {
      /* Check the HSI State */
      if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
 8001138:	687b      	ldr	r3, [r7, #4]
 800113a:	68db      	ldr	r3, [r3, #12]
 800113c:	2b00      	cmp	r3, #0
 800113e:	d020      	beq.n	8001182 <HAL_RCC_OscConfig+0x1b2>
      {
        /* Enable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_ENABLE();
 8001140:	4b4f      	ldr	r3, [pc, #316]	; (8001280 <HAL_RCC_OscConfig+0x2b0>)
 8001142:	2201      	movs	r2, #1
 8001144:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8001146:	f7ff fdf7 	bl	8000d38 <HAL_GetTick>
 800114a:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 800114c:	e008      	b.n	8001160 <HAL_RCC_OscConfig+0x190>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 800114e:	f7ff fdf3 	bl	8000d38 <HAL_GetTick>
 8001152:	4602      	mov	r2, r0
 8001154:	693b      	ldr	r3, [r7, #16]
 8001156:	1ad3      	subs	r3, r2, r3
 8001158:	2b02      	cmp	r3, #2
 800115a:	d901      	bls.n	8001160 <HAL_RCC_OscConfig+0x190>
          {
            return HAL_TIMEOUT;
 800115c:	2303      	movs	r3, #3
 800115e:	e1a5      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8001160:	4b46      	ldr	r3, [pc, #280]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001162:	681b      	ldr	r3, [r3, #0]
 8001164:	f003 0302 	and.w	r3, r3, #2
 8001168:	2b00      	cmp	r3, #0
 800116a:	d0f0      	beq.n	800114e <HAL_RCC_OscConfig+0x17e>
          }
        }

        /* Adjusts the Internal High Speed oscillator (HSI) calibration value. */
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 800116c:	4b43      	ldr	r3, [pc, #268]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800116e:	681b      	ldr	r3, [r3, #0]
 8001170:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8001174:	687b      	ldr	r3, [r7, #4]
 8001176:	691b      	ldr	r3, [r3, #16]
 8001178:	00db      	lsls	r3, r3, #3
 800117a:	4940      	ldr	r1, [pc, #256]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800117c:	4313      	orrs	r3, r2
 800117e:	600b      	str	r3, [r1, #0]
 8001180:	e015      	b.n	80011ae <HAL_RCC_OscConfig+0x1de>
      }
      else
      {
        /* Disable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_DISABLE();
 8001182:	4b3f      	ldr	r3, [pc, #252]	; (8001280 <HAL_RCC_OscConfig+0x2b0>)
 8001184:	2200      	movs	r2, #0
 8001186:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8001188:	f7ff fdd6 	bl	8000d38 <HAL_GetTick>
 800118c:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 800118e:	e008      	b.n	80011a2 <HAL_RCC_OscConfig+0x1d2>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 8001190:	f7ff fdd2 	bl	8000d38 <HAL_GetTick>
 8001194:	4602      	mov	r2, r0
 8001196:	693b      	ldr	r3, [r7, #16]
 8001198:	1ad3      	subs	r3, r2, r3
 800119a:	2b02      	cmp	r3, #2
 800119c:	d901      	bls.n	80011a2 <HAL_RCC_OscConfig+0x1d2>
          {
            return HAL_TIMEOUT;
 800119e:	2303      	movs	r3, #3
 80011a0:	e184      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 80011a2:	4b36      	ldr	r3, [pc, #216]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 80011a4:	681b      	ldr	r3, [r3, #0]
 80011a6:	f003 0302 	and.w	r3, r3, #2
 80011aa:	2b00      	cmp	r3, #0
 80011ac:	d1f0      	bne.n	8001190 <HAL_RCC_OscConfig+0x1c0>
        }
      }
    }
  }
  /*------------------------------ LSI Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 80011ae:	687b      	ldr	r3, [r7, #4]
 80011b0:	681b      	ldr	r3, [r3, #0]
 80011b2:	f003 0308 	and.w	r3, r3, #8
 80011b6:	2b00      	cmp	r3, #0
 80011b8:	d030      	beq.n	800121c <HAL_RCC_OscConfig+0x24c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));

    /* Check the LSI State */
    if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
 80011ba:	687b      	ldr	r3, [r7, #4]
 80011bc:	695b      	ldr	r3, [r3, #20]
 80011be:	2b00      	cmp	r3, #0
 80011c0:	d016      	beq.n	80011f0 <HAL_RCC_OscConfig+0x220>
    {
      /* Enable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_ENABLE();
 80011c2:	4b30      	ldr	r3, [pc, #192]	; (8001284 <HAL_RCC_OscConfig+0x2b4>)
 80011c4:	2201      	movs	r2, #1
 80011c6:	601a      	str	r2, [r3, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 80011c8:	f7ff fdb6 	bl	8000d38 <HAL_GetTick>
 80011cc:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 80011ce:	e008      	b.n	80011e2 <HAL_RCC_OscConfig+0x212>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 80011d0:	f7ff fdb2 	bl	8000d38 <HAL_GetTick>
 80011d4:	4602      	mov	r2, r0
 80011d6:	693b      	ldr	r3, [r7, #16]
 80011d8:	1ad3      	subs	r3, r2, r3
 80011da:	2b02      	cmp	r3, #2
 80011dc:	d901      	bls.n	80011e2 <HAL_RCC_OscConfig+0x212>
        {
          return HAL_TIMEOUT;
 80011de:	2303      	movs	r3, #3
 80011e0:	e164      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 80011e2:	4b26      	ldr	r3, [pc, #152]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 80011e4:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 80011e6:	f003 0302 	and.w	r3, r3, #2
 80011ea:	2b00      	cmp	r3, #0
 80011ec:	d0f0      	beq.n	80011d0 <HAL_RCC_OscConfig+0x200>
 80011ee:	e015      	b.n	800121c <HAL_RCC_OscConfig+0x24c>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_DISABLE();
 80011f0:	4b24      	ldr	r3, [pc, #144]	; (8001284 <HAL_RCC_OscConfig+0x2b4>)
 80011f2:	2200      	movs	r2, #0
 80011f4:	601a      	str	r2, [r3, #0]

      /* Get Start Tick */
      tickstart = HAL_GetTick();
 80011f6:	f7ff fd9f 	bl	8000d38 <HAL_GetTick>
 80011fa:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 80011fc:	e008      	b.n	8001210 <HAL_RCC_OscConfig+0x240>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 80011fe:	f7ff fd9b 	bl	8000d38 <HAL_GetTick>
 8001202:	4602      	mov	r2, r0
 8001204:	693b      	ldr	r3, [r7, #16]
 8001206:	1ad3      	subs	r3, r2, r3
 8001208:	2b02      	cmp	r3, #2
 800120a:	d901      	bls.n	8001210 <HAL_RCC_OscConfig+0x240>
        {
          return HAL_TIMEOUT;
 800120c:	2303      	movs	r3, #3
 800120e:	e14d      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8001210:	4b1a      	ldr	r3, [pc, #104]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001212:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8001214:	f003 0302 	and.w	r3, r3, #2
 8001218:	2b00      	cmp	r3, #0
 800121a:	d1f0      	bne.n	80011fe <HAL_RCC_OscConfig+0x22e>
        }
      }
    }
  }
  /*------------------------------ LSE Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 800121c:	687b      	ldr	r3, [r7, #4]
 800121e:	681b      	ldr	r3, [r3, #0]
 8001220:	f003 0304 	and.w	r3, r3, #4
 8001224:	2b00      	cmp	r3, #0
 8001226:	f000 80a0 	beq.w	800136a <HAL_RCC_OscConfig+0x39a>
  {
    FlagStatus       pwrclkchanged = RESET;
 800122a:	2300      	movs	r3, #0
 800122c:	75fb      	strb	r3, [r7, #23]
    /* Check the parameters */
    assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));

    /* Update LSE configuration in Backup Domain control register    */
    /* Requires to enable write access to Backup Domain of necessary */
    if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 800122e:	4b13      	ldr	r3, [pc, #76]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001230:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001232:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001236:	2b00      	cmp	r3, #0
 8001238:	d10f      	bne.n	800125a <HAL_RCC_OscConfig+0x28a>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 800123a:	2300      	movs	r3, #0
 800123c:	60bb      	str	r3, [r7, #8]
 800123e:	4b0f      	ldr	r3, [pc, #60]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001240:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001242:	4a0e      	ldr	r2, [pc, #56]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 8001244:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8001248:	6413      	str	r3, [r2, #64]	; 0x40
 800124a:	4b0c      	ldr	r3, [pc, #48]	; (800127c <HAL_RCC_OscConfig+0x2ac>)
 800124c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800124e:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001252:	60bb      	str	r3, [r7, #8]
 8001254:	68bb      	ldr	r3, [r7, #8]
      pwrclkchanged = SET;
 8001256:	2301      	movs	r3, #1
 8001258:	75fb      	strb	r3, [r7, #23]
    }

    if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 800125a:	4b0b      	ldr	r3, [pc, #44]	; (8001288 <HAL_RCC_OscConfig+0x2b8>)
 800125c:	681b      	ldr	r3, [r3, #0]
 800125e:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8001262:	2b00      	cmp	r3, #0
 8001264:	d121      	bne.n	80012aa <HAL_RCC_OscConfig+0x2da>
    {
      /* Enable write access to Backup domain */
      SET_BIT(PWR->CR, PWR_CR_DBP);
 8001266:	4b08      	ldr	r3, [pc, #32]	; (8001288 <HAL_RCC_OscConfig+0x2b8>)
 8001268:	681b      	ldr	r3, [r3, #0]
 800126a:	4a07      	ldr	r2, [pc, #28]	; (8001288 <HAL_RCC_OscConfig+0x2b8>)
 800126c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001270:	6013      	str	r3, [r2, #0]

      /* Wait for Backup domain Write protection disable */
      tickstart = HAL_GetTick();
 8001272:	f7ff fd61 	bl	8000d38 <HAL_GetTick>
 8001276:	6138      	str	r0, [r7, #16]

      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8001278:	e011      	b.n	800129e <HAL_RCC_OscConfig+0x2ce>
 800127a:	bf00      	nop
 800127c:	40023800 	.word	0x40023800
 8001280:	42470000 	.word	0x42470000
 8001284:	42470e80 	.word	0x42470e80
 8001288:	40007000 	.word	0x40007000
      {
        if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 800128c:	f7ff fd54 	bl	8000d38 <HAL_GetTick>
 8001290:	4602      	mov	r2, r0
 8001292:	693b      	ldr	r3, [r7, #16]
 8001294:	1ad3      	subs	r3, r2, r3
 8001296:	2b02      	cmp	r3, #2
 8001298:	d901      	bls.n	800129e <HAL_RCC_OscConfig+0x2ce>
        {
          return HAL_TIMEOUT;
 800129a:	2303      	movs	r3, #3
 800129c:	e106      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 800129e:	4b85      	ldr	r3, [pc, #532]	; (80014b4 <HAL_RCC_OscConfig+0x4e4>)
 80012a0:	681b      	ldr	r3, [r3, #0]
 80012a2:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80012a6:	2b00      	cmp	r3, #0
 80012a8:	d0f0      	beq.n	800128c <HAL_RCC_OscConfig+0x2bc>
        }
      }
    }

    /* Set the new LSE configuration -----------------------------------------*/
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 80012aa:	687b      	ldr	r3, [r7, #4]
 80012ac:	689b      	ldr	r3, [r3, #8]
 80012ae:	2b01      	cmp	r3, #1
 80012b0:	d106      	bne.n	80012c0 <HAL_RCC_OscConfig+0x2f0>
 80012b2:	4b81      	ldr	r3, [pc, #516]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012b4:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80012b6:	4a80      	ldr	r2, [pc, #512]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012b8:	f043 0301 	orr.w	r3, r3, #1
 80012bc:	6713      	str	r3, [r2, #112]	; 0x70
 80012be:	e01c      	b.n	80012fa <HAL_RCC_OscConfig+0x32a>
 80012c0:	687b      	ldr	r3, [r7, #4]
 80012c2:	689b      	ldr	r3, [r3, #8]
 80012c4:	2b05      	cmp	r3, #5
 80012c6:	d10c      	bne.n	80012e2 <HAL_RCC_OscConfig+0x312>
 80012c8:	4b7b      	ldr	r3, [pc, #492]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012ca:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80012cc:	4a7a      	ldr	r2, [pc, #488]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012ce:	f043 0304 	orr.w	r3, r3, #4
 80012d2:	6713      	str	r3, [r2, #112]	; 0x70
 80012d4:	4b78      	ldr	r3, [pc, #480]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012d6:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80012d8:	4a77      	ldr	r2, [pc, #476]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012da:	f043 0301 	orr.w	r3, r3, #1
 80012de:	6713      	str	r3, [r2, #112]	; 0x70
 80012e0:	e00b      	b.n	80012fa <HAL_RCC_OscConfig+0x32a>
 80012e2:	4b75      	ldr	r3, [pc, #468]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012e4:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80012e6:	4a74      	ldr	r2, [pc, #464]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012e8:	f023 0301 	bic.w	r3, r3, #1
 80012ec:	6713      	str	r3, [r2, #112]	; 0x70
 80012ee:	4b72      	ldr	r3, [pc, #456]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012f0:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80012f2:	4a71      	ldr	r2, [pc, #452]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80012f4:	f023 0304 	bic.w	r3, r3, #4
 80012f8:	6713      	str	r3, [r2, #112]	; 0x70
    /* Check the LSE State */
    if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
 80012fa:	687b      	ldr	r3, [r7, #4]
 80012fc:	689b      	ldr	r3, [r3, #8]
 80012fe:	2b00      	cmp	r3, #0
 8001300:	d015      	beq.n	800132e <HAL_RCC_OscConfig+0x35e>
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8001302:	f7ff fd19 	bl	8000d38 <HAL_GetTick>
 8001306:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8001308:	e00a      	b.n	8001320 <HAL_RCC_OscConfig+0x350>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 800130a:	f7ff fd15 	bl	8000d38 <HAL_GetTick>
 800130e:	4602      	mov	r2, r0
 8001310:	693b      	ldr	r3, [r7, #16]
 8001312:	1ad3      	subs	r3, r2, r3
 8001314:	f241 3288 	movw	r2, #5000	; 0x1388
 8001318:	4293      	cmp	r3, r2
 800131a:	d901      	bls.n	8001320 <HAL_RCC_OscConfig+0x350>
        {
          return HAL_TIMEOUT;
 800131c:	2303      	movs	r3, #3
 800131e:	e0c5      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8001320:	4b65      	ldr	r3, [pc, #404]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 8001322:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8001324:	f003 0302 	and.w	r3, r3, #2
 8001328:	2b00      	cmp	r3, #0
 800132a:	d0ee      	beq.n	800130a <HAL_RCC_OscConfig+0x33a>
 800132c:	e014      	b.n	8001358 <HAL_RCC_OscConfig+0x388>
      }
    }
    else
    {
      /* Get Start Tick */
      tickstart = HAL_GetTick();
 800132e:	f7ff fd03 	bl	8000d38 <HAL_GetTick>
 8001332:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8001334:	e00a      	b.n	800134c <HAL_RCC_OscConfig+0x37c>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8001336:	f7ff fcff 	bl	8000d38 <HAL_GetTick>
 800133a:	4602      	mov	r2, r0
 800133c:	693b      	ldr	r3, [r7, #16]
 800133e:	1ad3      	subs	r3, r2, r3
 8001340:	f241 3288 	movw	r2, #5000	; 0x1388
 8001344:	4293      	cmp	r3, r2
 8001346:	d901      	bls.n	800134c <HAL_RCC_OscConfig+0x37c>
        {
          return HAL_TIMEOUT;
 8001348:	2303      	movs	r3, #3
 800134a:	e0af      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 800134c:	4b5a      	ldr	r3, [pc, #360]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 800134e:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8001350:	f003 0302 	and.w	r3, r3, #2
 8001354:	2b00      	cmp	r3, #0
 8001356:	d1ee      	bne.n	8001336 <HAL_RCC_OscConfig+0x366>
        }
      }
    }

    /* Restore clock configuration if changed */
    if(pwrclkchanged == SET)
 8001358:	7dfb      	ldrb	r3, [r7, #23]
 800135a:	2b01      	cmp	r3, #1
 800135c:	d105      	bne.n	800136a <HAL_RCC_OscConfig+0x39a>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 800135e:	4b56      	ldr	r3, [pc, #344]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 8001360:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8001362:	4a55      	ldr	r2, [pc, #340]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 8001364:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8001368:	6413      	str	r3, [r2, #64]	; 0x40
    }
  }
  /*-------------------------------- PLL Configuration -----------------------*/
  /* Check the parameters */
  assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 800136a:	687b      	ldr	r3, [r7, #4]
 800136c:	699b      	ldr	r3, [r3, #24]
 800136e:	2b00      	cmp	r3, #0
 8001370:	f000 809b 	beq.w	80014aa <HAL_RCC_OscConfig+0x4da>
  {
    /* Check if the PLL is used as system clock or not */
    if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 8001374:	4b50      	ldr	r3, [pc, #320]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 8001376:	689b      	ldr	r3, [r3, #8]
 8001378:	f003 030c 	and.w	r3, r3, #12
 800137c:	2b08      	cmp	r3, #8
 800137e:	d05c      	beq.n	800143a <HAL_RCC_OscConfig+0x46a>
    {
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 8001380:	687b      	ldr	r3, [r7, #4]
 8001382:	699b      	ldr	r3, [r3, #24]
 8001384:	2b02      	cmp	r3, #2
 8001386:	d141      	bne.n	800140c <HAL_RCC_OscConfig+0x43c>
        assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
        assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
        assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));

        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8001388:	4b4c      	ldr	r3, [pc, #304]	; (80014bc <HAL_RCC_OscConfig+0x4ec>)
 800138a:	2200      	movs	r2, #0
 800138c:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 800138e:	f7ff fcd3 	bl	8000d38 <HAL_GetTick>
 8001392:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8001394:	e008      	b.n	80013a8 <HAL_RCC_OscConfig+0x3d8>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8001396:	f7ff fccf 	bl	8000d38 <HAL_GetTick>
 800139a:	4602      	mov	r2, r0
 800139c:	693b      	ldr	r3, [r7, #16]
 800139e:	1ad3      	subs	r3, r2, r3
 80013a0:	2b02      	cmp	r3, #2
 80013a2:	d901      	bls.n	80013a8 <HAL_RCC_OscConfig+0x3d8>
          {
            return HAL_TIMEOUT;
 80013a4:	2303      	movs	r3, #3
 80013a6:	e081      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 80013a8:	4b43      	ldr	r3, [pc, #268]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80013aa:	681b      	ldr	r3, [r3, #0]
 80013ac:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80013b0:	2b00      	cmp	r3, #0
 80013b2:	d1f0      	bne.n	8001396 <HAL_RCC_OscConfig+0x3c6>
          }
        }

        /* Configure the main PLL clock source, multiplication and division factors. */
        WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \
 80013b4:	687b      	ldr	r3, [r7, #4]
 80013b6:	69da      	ldr	r2, [r3, #28]
 80013b8:	687b      	ldr	r3, [r7, #4]
 80013ba:	6a1b      	ldr	r3, [r3, #32]
 80013bc:	431a      	orrs	r2, r3
 80013be:	687b      	ldr	r3, [r7, #4]
 80013c0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80013c2:	019b      	lsls	r3, r3, #6
 80013c4:	431a      	orrs	r2, r3
 80013c6:	687b      	ldr	r3, [r7, #4]
 80013c8:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80013ca:	085b      	lsrs	r3, r3, #1
 80013cc:	3b01      	subs	r3, #1
 80013ce:	041b      	lsls	r3, r3, #16
 80013d0:	431a      	orrs	r2, r3
 80013d2:	687b      	ldr	r3, [r7, #4]
 80013d4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80013d6:	061b      	lsls	r3, r3, #24
 80013d8:	4937      	ldr	r1, [pc, #220]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 80013da:	4313      	orrs	r3, r2
 80013dc:	604b      	str	r3, [r1, #4]
                                 RCC_OscInitStruct->PLL.PLLM                                                 | \
                                 (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)             | \
                                 (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos) | \
                                 (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)));
        /* Enable the main PLL. */
        __HAL_RCC_PLL_ENABLE();
 80013de:	4b37      	ldr	r3, [pc, #220]	; (80014bc <HAL_RCC_OscConfig+0x4ec>)
 80013e0:	2201      	movs	r2, #1
 80013e2:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80013e4:	f7ff fca8 	bl	8000d38 <HAL_GetTick>
 80013e8:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 80013ea:	e008      	b.n	80013fe <HAL_RCC_OscConfig+0x42e>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 80013ec:	f7ff fca4 	bl	8000d38 <HAL_GetTick>
 80013f0:	4602      	mov	r2, r0
 80013f2:	693b      	ldr	r3, [r7, #16]
 80013f4:	1ad3      	subs	r3, r2, r3
 80013f6:	2b02      	cmp	r3, #2
 80013f8:	d901      	bls.n	80013fe <HAL_RCC_OscConfig+0x42e>
          {
            return HAL_TIMEOUT;
 80013fa:	2303      	movs	r3, #3
 80013fc:	e056      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 80013fe:	4b2e      	ldr	r3, [pc, #184]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 8001400:	681b      	ldr	r3, [r3, #0]
 8001402:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8001406:	2b00      	cmp	r3, #0
 8001408:	d0f0      	beq.n	80013ec <HAL_RCC_OscConfig+0x41c>
 800140a:	e04e      	b.n	80014aa <HAL_RCC_OscConfig+0x4da>
        }
      }
      else
      {
        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 800140c:	4b2b      	ldr	r3, [pc, #172]	; (80014bc <HAL_RCC_OscConfig+0x4ec>)
 800140e:	2200      	movs	r2, #0
 8001410:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8001412:	f7ff fc91 	bl	8000d38 <HAL_GetTick>
 8001416:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8001418:	e008      	b.n	800142c <HAL_RCC_OscConfig+0x45c>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 800141a:	f7ff fc8d 	bl	8000d38 <HAL_GetTick>
 800141e:	4602      	mov	r2, r0
 8001420:	693b      	ldr	r3, [r7, #16]
 8001422:	1ad3      	subs	r3, r2, r3
 8001424:	2b02      	cmp	r3, #2
 8001426:	d901      	bls.n	800142c <HAL_RCC_OscConfig+0x45c>
          {
            return HAL_TIMEOUT;
 8001428:	2303      	movs	r3, #3
 800142a:	e03f      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 800142c:	4b22      	ldr	r3, [pc, #136]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 800142e:	681b      	ldr	r3, [r3, #0]
 8001430:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8001434:	2b00      	cmp	r3, #0
 8001436:	d1f0      	bne.n	800141a <HAL_RCC_OscConfig+0x44a>
 8001438:	e037      	b.n	80014aa <HAL_RCC_OscConfig+0x4da>
      }
    }
    else
    {
      /* Check if there is a request to disable the PLL used as System clock source */
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 800143a:	687b      	ldr	r3, [r7, #4]
 800143c:	699b      	ldr	r3, [r3, #24]
 800143e:	2b01      	cmp	r3, #1
 8001440:	d101      	bne.n	8001446 <HAL_RCC_OscConfig+0x476>
      {
        return HAL_ERROR;
 8001442:	2301      	movs	r3, #1
 8001444:	e032      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
      }
      else
      {
        /* Do not return HAL_ERROR if request repeats the current configuration */
        pll_config = RCC->PLLCFGR;
 8001446:	4b1c      	ldr	r3, [pc, #112]	; (80014b8 <HAL_RCC_OscConfig+0x4e8>)
 8001448:	685b      	ldr	r3, [r3, #4]
 800144a:	60fb      	str	r3, [r7, #12]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
#else
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 800144c:	687b      	ldr	r3, [r7, #4]
 800144e:	699b      	ldr	r3, [r3, #24]
 8001450:	2b01      	cmp	r3, #1
 8001452:	d028      	beq.n	80014a6 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8001454:	68fb      	ldr	r3, [r7, #12]
 8001456:	f403 0280 	and.w	r2, r3, #4194304	; 0x400000
 800145a:	687b      	ldr	r3, [r7, #4]
 800145c:	69db      	ldr	r3, [r3, #28]
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 800145e:	429a      	cmp	r2, r3
 8001460:	d121      	bne.n	80014a6 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 8001462:	68fb      	ldr	r3, [r7, #12]
 8001464:	f003 023f 	and.w	r2, r3, #63	; 0x3f
 8001468:	687b      	ldr	r3, [r7, #4]
 800146a:	6a1b      	ldr	r3, [r3, #32]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 800146c:	429a      	cmp	r2, r3
 800146e:	d11a      	bne.n	80014a6 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 8001470:	68fa      	ldr	r2, [r7, #12]
 8001472:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8001476:	4013      	ands	r3, r2
 8001478:	687a      	ldr	r2, [r7, #4]
 800147a:	6a52      	ldr	r2, [r2, #36]	; 0x24
 800147c:	0192      	lsls	r2, r2, #6
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 800147e:	4293      	cmp	r3, r2
 8001480:	d111      	bne.n	80014a6 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 8001482:	68fb      	ldr	r3, [r7, #12]
 8001484:	f403 3240 	and.w	r2, r3, #196608	; 0x30000
 8001488:	687b      	ldr	r3, [r7, #4]
 800148a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800148c:	085b      	lsrs	r3, r3, #1
 800148e:	3b01      	subs	r3, #1
 8001490:	041b      	lsls	r3, r3, #16
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 8001492:	429a      	cmp	r2, r3
 8001494:	d107      	bne.n	80014a6 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
 8001496:	68fb      	ldr	r3, [r7, #12]
 8001498:	f003 6270 	and.w	r2, r3, #251658240	; 0xf000000
 800149c:	687b      	ldr	r3, [r7, #4]
 800149e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80014a0:	061b      	lsls	r3, r3, #24
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 80014a2:	429a      	cmp	r2, r3
 80014a4:	d001      	beq.n	80014aa <HAL_RCC_OscConfig+0x4da>
#endif
        {
          return HAL_ERROR;
 80014a6:	2301      	movs	r3, #1
 80014a8:	e000      	b.n	80014ac <HAL_RCC_OscConfig+0x4dc>
        }
      }
    }
  }
  return HAL_OK;
 80014aa:	2300      	movs	r3, #0
}
 80014ac:	4618      	mov	r0, r3
 80014ae:	3718      	adds	r7, #24
 80014b0:	46bd      	mov	sp, r7
 80014b2:	bd80      	pop	{r7, pc}
 80014b4:	40007000 	.word	0x40007000
 80014b8:	40023800 	.word	0x40023800
 80014bc:	42470060 	.word	0x42470060

080014c0 <HAL_RCC_ClockConfig>:
  *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
  *         (for more details refer to section above "Initialization/de-initialization functions")
  * @retval None
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 80014c0:	b580      	push	{r7, lr}
 80014c2:	b084      	sub	sp, #16
 80014c4:	af00      	add	r7, sp, #0
 80014c6:	6078      	str	r0, [r7, #4]
 80014c8:	6039      	str	r1, [r7, #0]
  uint32_t tickstart;

  /* Check Null pointer */
  if(RCC_ClkInitStruct == NULL)
 80014ca:	687b      	ldr	r3, [r7, #4]
 80014cc:	2b00      	cmp	r3, #0
 80014ce:	d101      	bne.n	80014d4 <HAL_RCC_ClockConfig+0x14>
  {
    return HAL_ERROR;
 80014d0:	2301      	movs	r3, #1
 80014d2:	e0cc      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
  /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
    must be correctly programmed according to the frequency of the CPU clock
    (HCLK) and the supply voltage of the device. */

  /* Increasing the number of wait states because of higher CPU frequency */
  if(FLatency > __HAL_FLASH_GET_LATENCY())
 80014d4:	4b68      	ldr	r3, [pc, #416]	; (8001678 <HAL_RCC_ClockConfig+0x1b8>)
 80014d6:	681b      	ldr	r3, [r3, #0]
 80014d8:	f003 0307 	and.w	r3, r3, #7
 80014dc:	683a      	ldr	r2, [r7, #0]
 80014de:	429a      	cmp	r2, r3
 80014e0:	d90c      	bls.n	80014fc <HAL_RCC_ClockConfig+0x3c>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 80014e2:	4b65      	ldr	r3, [pc, #404]	; (8001678 <HAL_RCC_ClockConfig+0x1b8>)
 80014e4:	683a      	ldr	r2, [r7, #0]
 80014e6:	b2d2      	uxtb	r2, r2
 80014e8:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 80014ea:	4b63      	ldr	r3, [pc, #396]	; (8001678 <HAL_RCC_ClockConfig+0x1b8>)
 80014ec:	681b      	ldr	r3, [r3, #0]
 80014ee:	f003 0307 	and.w	r3, r3, #7
 80014f2:	683a      	ldr	r2, [r7, #0]
 80014f4:	429a      	cmp	r2, r3
 80014f6:	d001      	beq.n	80014fc <HAL_RCC_ClockConfig+0x3c>
    {
      return HAL_ERROR;
 80014f8:	2301      	movs	r3, #1
 80014fa:	e0b8      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- HCLK Configuration --------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 80014fc:	687b      	ldr	r3, [r7, #4]
 80014fe:	681b      	ldr	r3, [r3, #0]
 8001500:	f003 0302 	and.w	r3, r3, #2
 8001504:	2b00      	cmp	r3, #0
 8001506:	d020      	beq.n	800154a <HAL_RCC_ClockConfig+0x8a>
  {
    /* Set the highest APBx dividers in order to ensure that we do not go through
       a non-spec phase whatever we decrease or increase HCLK. */
    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8001508:	687b      	ldr	r3, [r7, #4]
 800150a:	681b      	ldr	r3, [r3, #0]
 800150c:	f003 0304 	and.w	r3, r3, #4
 8001510:	2b00      	cmp	r3, #0
 8001512:	d005      	beq.n	8001520 <HAL_RCC_ClockConfig+0x60>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8001514:	4b59      	ldr	r3, [pc, #356]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001516:	689b      	ldr	r3, [r3, #8]
 8001518:	4a58      	ldr	r2, [pc, #352]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 800151a:	f443 53e0 	orr.w	r3, r3, #7168	; 0x1c00
 800151e:	6093      	str	r3, [r2, #8]
    }

    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8001520:	687b      	ldr	r3, [r7, #4]
 8001522:	681b      	ldr	r3, [r3, #0]
 8001524:	f003 0308 	and.w	r3, r3, #8
 8001528:	2b00      	cmp	r3, #0
 800152a:	d005      	beq.n	8001538 <HAL_RCC_ClockConfig+0x78>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 800152c:	4b53      	ldr	r3, [pc, #332]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 800152e:	689b      	ldr	r3, [r3, #8]
 8001530:	4a52      	ldr	r2, [pc, #328]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001532:	f443 4360 	orr.w	r3, r3, #57344	; 0xe000
 8001536:	6093      	str	r3, [r2, #8]
    }

    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 8001538:	4b50      	ldr	r3, [pc, #320]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 800153a:	689b      	ldr	r3, [r3, #8]
 800153c:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8001540:	687b      	ldr	r3, [r7, #4]
 8001542:	689b      	ldr	r3, [r3, #8]
 8001544:	494d      	ldr	r1, [pc, #308]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001546:	4313      	orrs	r3, r2
 8001548:	608b      	str	r3, [r1, #8]
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 800154a:	687b      	ldr	r3, [r7, #4]
 800154c:	681b      	ldr	r3, [r3, #0]
 800154e:	f003 0301 	and.w	r3, r3, #1
 8001552:	2b00      	cmp	r3, #0
 8001554:	d044      	beq.n	80015e0 <HAL_RCC_ClockConfig+0x120>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* HSE is selected as System Clock Source */
    if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 8001556:	687b      	ldr	r3, [r7, #4]
 8001558:	685b      	ldr	r3, [r3, #4]
 800155a:	2b01      	cmp	r3, #1
 800155c:	d107      	bne.n	800156e <HAL_RCC_ClockConfig+0xae>
    {
      /* Check the HSE ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 800155e:	4b47      	ldr	r3, [pc, #284]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001560:	681b      	ldr	r3, [r3, #0]
 8001562:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001566:	2b00      	cmp	r3, #0
 8001568:	d119      	bne.n	800159e <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800156a:	2301      	movs	r3, #1
 800156c:	e07f      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
      }
    }
    /* PLL is selected as System Clock Source */
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 800156e:	687b      	ldr	r3, [r7, #4]
 8001570:	685b      	ldr	r3, [r3, #4]
 8001572:	2b02      	cmp	r3, #2
 8001574:	d003      	beq.n	800157e <HAL_RCC_ClockConfig+0xbe>
            (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLRCLK))
 8001576:	687b      	ldr	r3, [r7, #4]
 8001578:	685b      	ldr	r3, [r3, #4]
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 800157a:	2b03      	cmp	r3, #3
 800157c:	d107      	bne.n	800158e <HAL_RCC_ClockConfig+0xce>
    {
      /* Check the PLL ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 800157e:	4b3f      	ldr	r3, [pc, #252]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001580:	681b      	ldr	r3, [r3, #0]
 8001582:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8001586:	2b00      	cmp	r3, #0
 8001588:	d109      	bne.n	800159e <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800158a:	2301      	movs	r3, #1
 800158c:	e06f      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
    }
    /* HSI is selected as System Clock Source */
    else
    {
      /* Check the HSI ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 800158e:	4b3b      	ldr	r3, [pc, #236]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001590:	681b      	ldr	r3, [r3, #0]
 8001592:	f003 0302 	and.w	r3, r3, #2
 8001596:	2b00      	cmp	r3, #0
 8001598:	d101      	bne.n	800159e <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 800159a:	2301      	movs	r3, #1
 800159c:	e067      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
      }
    }

    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 800159e:	4b37      	ldr	r3, [pc, #220]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 80015a0:	689b      	ldr	r3, [r3, #8]
 80015a2:	f023 0203 	bic.w	r2, r3, #3
 80015a6:	687b      	ldr	r3, [r7, #4]
 80015a8:	685b      	ldr	r3, [r3, #4]
 80015aa:	4934      	ldr	r1, [pc, #208]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 80015ac:	4313      	orrs	r3, r2
 80015ae:	608b      	str	r3, [r1, #8]

    /* Get Start Tick */
    tickstart = HAL_GetTick();
 80015b0:	f7ff fbc2 	bl	8000d38 <HAL_GetTick>
 80015b4:	60f8      	str	r0, [r7, #12]

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80015b6:	e00a      	b.n	80015ce <HAL_RCC_ClockConfig+0x10e>
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 80015b8:	f7ff fbbe 	bl	8000d38 <HAL_GetTick>
 80015bc:	4602      	mov	r2, r0
 80015be:	68fb      	ldr	r3, [r7, #12]
 80015c0:	1ad3      	subs	r3, r2, r3
 80015c2:	f241 3288 	movw	r2, #5000	; 0x1388
 80015c6:	4293      	cmp	r3, r2
 80015c8:	d901      	bls.n	80015ce <HAL_RCC_ClockConfig+0x10e>
      {
        return HAL_TIMEOUT;
 80015ca:	2303      	movs	r3, #3
 80015cc:	e04f      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80015ce:	4b2b      	ldr	r3, [pc, #172]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 80015d0:	689b      	ldr	r3, [r3, #8]
 80015d2:	f003 020c 	and.w	r2, r3, #12
 80015d6:	687b      	ldr	r3, [r7, #4]
 80015d8:	685b      	ldr	r3, [r3, #4]
 80015da:	009b      	lsls	r3, r3, #2
 80015dc:	429a      	cmp	r2, r3
 80015de:	d1eb      	bne.n	80015b8 <HAL_RCC_ClockConfig+0xf8>
      }
    }
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if(FLatency < __HAL_FLASH_GET_LATENCY())
 80015e0:	4b25      	ldr	r3, [pc, #148]	; (8001678 <HAL_RCC_ClockConfig+0x1b8>)
 80015e2:	681b      	ldr	r3, [r3, #0]
 80015e4:	f003 0307 	and.w	r3, r3, #7
 80015e8:	683a      	ldr	r2, [r7, #0]
 80015ea:	429a      	cmp	r2, r3
 80015ec:	d20c      	bcs.n	8001608 <HAL_RCC_ClockConfig+0x148>
  {
     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 80015ee:	4b22      	ldr	r3, [pc, #136]	; (8001678 <HAL_RCC_ClockConfig+0x1b8>)
 80015f0:	683a      	ldr	r2, [r7, #0]
 80015f2:	b2d2      	uxtb	r2, r2
 80015f4:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 80015f6:	4b20      	ldr	r3, [pc, #128]	; (8001678 <HAL_RCC_ClockConfig+0x1b8>)
 80015f8:	681b      	ldr	r3, [r3, #0]
 80015fa:	f003 0307 	and.w	r3, r3, #7
 80015fe:	683a      	ldr	r2, [r7, #0]
 8001600:	429a      	cmp	r2, r3
 8001602:	d001      	beq.n	8001608 <HAL_RCC_ClockConfig+0x148>
    {
      return HAL_ERROR;
 8001604:	2301      	movs	r3, #1
 8001606:	e032      	b.n	800166e <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- PCLK1 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8001608:	687b      	ldr	r3, [r7, #4]
 800160a:	681b      	ldr	r3, [r3, #0]
 800160c:	f003 0304 	and.w	r3, r3, #4
 8001610:	2b00      	cmp	r3, #0
 8001612:	d008      	beq.n	8001626 <HAL_RCC_ClockConfig+0x166>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8001614:	4b19      	ldr	r3, [pc, #100]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001616:	689b      	ldr	r3, [r3, #8]
 8001618:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 800161c:	687b      	ldr	r3, [r7, #4]
 800161e:	68db      	ldr	r3, [r3, #12]
 8001620:	4916      	ldr	r1, [pc, #88]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001622:	4313      	orrs	r3, r2
 8001624:	608b      	str	r3, [r1, #8]
  }

  /*-------------------------- PCLK2 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8001626:	687b      	ldr	r3, [r7, #4]
 8001628:	681b      	ldr	r3, [r3, #0]
 800162a:	f003 0308 	and.w	r3, r3, #8
 800162e:	2b00      	cmp	r3, #0
 8001630:	d009      	beq.n	8001646 <HAL_RCC_ClockConfig+0x186>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 8001632:	4b12      	ldr	r3, [pc, #72]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001634:	689b      	ldr	r3, [r3, #8]
 8001636:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 800163a:	687b      	ldr	r3, [r7, #4]
 800163c:	691b      	ldr	r3, [r3, #16]
 800163e:	00db      	lsls	r3, r3, #3
 8001640:	490e      	ldr	r1, [pc, #56]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 8001642:	4313      	orrs	r3, r2
 8001644:	608b      	str	r3, [r1, #8]
  }

  /* Update the SystemCoreClock global variable */
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_Pos];
 8001646:	f000 f821 	bl	800168c <HAL_RCC_GetSysClockFreq>
 800164a:	4601      	mov	r1, r0
 800164c:	4b0b      	ldr	r3, [pc, #44]	; (800167c <HAL_RCC_ClockConfig+0x1bc>)
 800164e:	689b      	ldr	r3, [r3, #8]
 8001650:	091b      	lsrs	r3, r3, #4
 8001652:	f003 030f 	and.w	r3, r3, #15
 8001656:	4a0a      	ldr	r2, [pc, #40]	; (8001680 <HAL_RCC_ClockConfig+0x1c0>)
 8001658:	5cd3      	ldrb	r3, [r2, r3]
 800165a:	fa21 f303 	lsr.w	r3, r1, r3
 800165e:	4a09      	ldr	r2, [pc, #36]	; (8001684 <HAL_RCC_ClockConfig+0x1c4>)
 8001660:	6013      	str	r3, [r2, #0]

  /* Configure the source of time base considering new system clocks settings */
  HAL_InitTick (uwTickPrio);
 8001662:	4b09      	ldr	r3, [pc, #36]	; (8001688 <HAL_RCC_ClockConfig+0x1c8>)
 8001664:	681b      	ldr	r3, [r3, #0]
 8001666:	4618      	mov	r0, r3
 8001668:	f7ff fb22 	bl	8000cb0 <HAL_InitTick>

  return HAL_OK;
 800166c:	2300      	movs	r3, #0
}
 800166e:	4618      	mov	r0, r3
 8001670:	3710      	adds	r7, #16
 8001672:	46bd      	mov	sp, r7
 8001674:	bd80      	pop	{r7, pc}
 8001676:	bf00      	nop
 8001678:	40023c00 	.word	0x40023c00
 800167c:	40023800 	.word	0x40023800
 8001680:	08007c04 	.word	0x08007c04
 8001684:	20000000 	.word	0x20000000
 8001688:	20000004 	.word	0x20000004

0800168c <HAL_RCC_GetSysClockFreq>:
  *
  *
  * @retval SYSCLK frequency
  */
__weak uint32_t HAL_RCC_GetSysClockFreq(void)
{
 800168c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800168e:	b085      	sub	sp, #20
 8001690:	af00      	add	r7, sp, #0
  uint32_t pllm = 0U, pllvco = 0U, pllp = 0U;
 8001692:	2300      	movs	r3, #0
 8001694:	607b      	str	r3, [r7, #4]
 8001696:	2300      	movs	r3, #0
 8001698:	60fb      	str	r3, [r7, #12]
 800169a:	2300      	movs	r3, #0
 800169c:	603b      	str	r3, [r7, #0]
  uint32_t sysclockfreq = 0U;
 800169e:	2300      	movs	r3, #0
 80016a0:	60bb      	str	r3, [r7, #8]

  /* Get SYSCLK source -------------------------------------------------------*/
  switch (RCC->CFGR & RCC_CFGR_SWS)
 80016a2:	4b63      	ldr	r3, [pc, #396]	; (8001830 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80016a4:	689b      	ldr	r3, [r3, #8]
 80016a6:	f003 030c 	and.w	r3, r3, #12
 80016aa:	2b04      	cmp	r3, #4
 80016ac:	d007      	beq.n	80016be <HAL_RCC_GetSysClockFreq+0x32>
 80016ae:	2b08      	cmp	r3, #8
 80016b0:	d008      	beq.n	80016c4 <HAL_RCC_GetSysClockFreq+0x38>
 80016b2:	2b00      	cmp	r3, #0
 80016b4:	f040 80b4 	bne.w	8001820 <HAL_RCC_GetSysClockFreq+0x194>
  {
    case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
    {
      sysclockfreq = HSI_VALUE;
 80016b8:	4b5e      	ldr	r3, [pc, #376]	; (8001834 <HAL_RCC_GetSysClockFreq+0x1a8>)
 80016ba:	60bb      	str	r3, [r7, #8]
       break;
 80016bc:	e0b3      	b.n	8001826 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
    {
      sysclockfreq = HSE_VALUE;
 80016be:	4b5e      	ldr	r3, [pc, #376]	; (8001838 <HAL_RCC_GetSysClockFreq+0x1ac>)
 80016c0:	60bb      	str	r3, [r7, #8]
      break;
 80016c2:	e0b0      	b.n	8001826 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_PLL:  /* PLL used as system clock  source */
    {
      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
      SYSCLK = PLL_VCO / PLLP */
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 80016c4:	4b5a      	ldr	r3, [pc, #360]	; (8001830 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80016c6:	685b      	ldr	r3, [r3, #4]
 80016c8:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 80016cc:	607b      	str	r3, [r7, #4]
      if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
 80016ce:	4b58      	ldr	r3, [pc, #352]	; (8001830 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80016d0:	685b      	ldr	r3, [r3, #4]
 80016d2:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80016d6:	2b00      	cmp	r3, #0
 80016d8:	d04a      	beq.n	8001770 <HAL_RCC_GetSysClockFreq+0xe4>
      {
        /* HSE used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 80016da:	4b55      	ldr	r3, [pc, #340]	; (8001830 <HAL_RCC_GetSysClockFreq+0x1a4>)
 80016dc:	685b      	ldr	r3, [r3, #4]
 80016de:	099b      	lsrs	r3, r3, #6
 80016e0:	f04f 0400 	mov.w	r4, #0
 80016e4:	f240 11ff 	movw	r1, #511	; 0x1ff
 80016e8:	f04f 0200 	mov.w	r2, #0
 80016ec:	ea03 0501 	and.w	r5, r3, r1
 80016f0:	ea04 0602 	and.w	r6, r4, r2
 80016f4:	4629      	mov	r1, r5
 80016f6:	4632      	mov	r2, r6
 80016f8:	f04f 0300 	mov.w	r3, #0
 80016fc:	f04f 0400 	mov.w	r4, #0
 8001700:	0154      	lsls	r4, r2, #5
 8001702:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 8001706:	014b      	lsls	r3, r1, #5
 8001708:	4619      	mov	r1, r3
 800170a:	4622      	mov	r2, r4
 800170c:	1b49      	subs	r1, r1, r5
 800170e:	eb62 0206 	sbc.w	r2, r2, r6
 8001712:	f04f 0300 	mov.w	r3, #0
 8001716:	f04f 0400 	mov.w	r4, #0
 800171a:	0194      	lsls	r4, r2, #6
 800171c:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 8001720:	018b      	lsls	r3, r1, #6
 8001722:	1a5b      	subs	r3, r3, r1
 8001724:	eb64 0402 	sbc.w	r4, r4, r2
 8001728:	f04f 0100 	mov.w	r1, #0
 800172c:	f04f 0200 	mov.w	r2, #0
 8001730:	00e2      	lsls	r2, r4, #3
 8001732:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 8001736:	00d9      	lsls	r1, r3, #3
 8001738:	460b      	mov	r3, r1
 800173a:	4614      	mov	r4, r2
 800173c:	195b      	adds	r3, r3, r5
 800173e:	eb44 0406 	adc.w	r4, r4, r6
 8001742:	f04f 0100 	mov.w	r1, #0
 8001746:	f04f 0200 	mov.w	r2, #0
 800174a:	0262      	lsls	r2, r4, #9
 800174c:	ea42 52d3 	orr.w	r2, r2, r3, lsr #23
 8001750:	0259      	lsls	r1, r3, #9
 8001752:	460b      	mov	r3, r1
 8001754:	4614      	mov	r4, r2
 8001756:	4618      	mov	r0, r3
 8001758:	4621      	mov	r1, r4
 800175a:	687b      	ldr	r3, [r7, #4]
 800175c:	f04f 0400 	mov.w	r4, #0
 8001760:	461a      	mov	r2, r3
 8001762:	4623      	mov	r3, r4
 8001764:	f000 ff14 	bl	8002590 <__aeabi_uldivmod>
 8001768:	4603      	mov	r3, r0
 800176a:	460c      	mov	r4, r1
 800176c:	60fb      	str	r3, [r7, #12]
 800176e:	e049      	b.n	8001804 <HAL_RCC_GetSysClockFreq+0x178>
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 8001770:	4b2f      	ldr	r3, [pc, #188]	; (8001830 <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001772:	685b      	ldr	r3, [r3, #4]
 8001774:	099b      	lsrs	r3, r3, #6
 8001776:	f04f 0400 	mov.w	r4, #0
 800177a:	f240 11ff 	movw	r1, #511	; 0x1ff
 800177e:	f04f 0200 	mov.w	r2, #0
 8001782:	ea03 0501 	and.w	r5, r3, r1
 8001786:	ea04 0602 	and.w	r6, r4, r2
 800178a:	4629      	mov	r1, r5
 800178c:	4632      	mov	r2, r6
 800178e:	f04f 0300 	mov.w	r3, #0
 8001792:	f04f 0400 	mov.w	r4, #0
 8001796:	0154      	lsls	r4, r2, #5
 8001798:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 800179c:	014b      	lsls	r3, r1, #5
 800179e:	4619      	mov	r1, r3
 80017a0:	4622      	mov	r2, r4
 80017a2:	1b49      	subs	r1, r1, r5
 80017a4:	eb62 0206 	sbc.w	r2, r2, r6
 80017a8:	f04f 0300 	mov.w	r3, #0
 80017ac:	f04f 0400 	mov.w	r4, #0
 80017b0:	0194      	lsls	r4, r2, #6
 80017b2:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 80017b6:	018b      	lsls	r3, r1, #6
 80017b8:	1a5b      	subs	r3, r3, r1
 80017ba:	eb64 0402 	sbc.w	r4, r4, r2
 80017be:	f04f 0100 	mov.w	r1, #0
 80017c2:	f04f 0200 	mov.w	r2, #0
 80017c6:	00e2      	lsls	r2, r4, #3
 80017c8:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 80017cc:	00d9      	lsls	r1, r3, #3
 80017ce:	460b      	mov	r3, r1
 80017d0:	4614      	mov	r4, r2
 80017d2:	195b      	adds	r3, r3, r5
 80017d4:	eb44 0406 	adc.w	r4, r4, r6
 80017d8:	f04f 0100 	mov.w	r1, #0
 80017dc:	f04f 0200 	mov.w	r2, #0
 80017e0:	02a2      	lsls	r2, r4, #10
 80017e2:	ea42 5293 	orr.w	r2, r2, r3, lsr #22
 80017e6:	0299      	lsls	r1, r3, #10
 80017e8:	460b      	mov	r3, r1
 80017ea:	4614      	mov	r4, r2
 80017ec:	4618      	mov	r0, r3
 80017ee:	4621      	mov	r1, r4
 80017f0:	687b      	ldr	r3, [r7, #4]
 80017f2:	f04f 0400 	mov.w	r4, #0
 80017f6:	461a      	mov	r2, r3
 80017f8:	4623      	mov	r3, r4
 80017fa:	f000 fec9 	bl	8002590 <__aeabi_uldivmod>
 80017fe:	4603      	mov	r3, r0
 8001800:	460c      	mov	r4, r1
 8001802:	60fb      	str	r3, [r7, #12]
      }
      pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
 8001804:	4b0a      	ldr	r3, [pc, #40]	; (8001830 <HAL_RCC_GetSysClockFreq+0x1a4>)
 8001806:	685b      	ldr	r3, [r3, #4]
 8001808:	0c1b      	lsrs	r3, r3, #16
 800180a:	f003 0303 	and.w	r3, r3, #3
 800180e:	3301      	adds	r3, #1
 8001810:	005b      	lsls	r3, r3, #1
 8001812:	603b      	str	r3, [r7, #0]

      sysclockfreq = pllvco/pllp;
 8001814:	68fa      	ldr	r2, [r7, #12]
 8001816:	683b      	ldr	r3, [r7, #0]
 8001818:	fbb2 f3f3 	udiv	r3, r2, r3
 800181c:	60bb      	str	r3, [r7, #8]
      break;
 800181e:	e002      	b.n	8001826 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    default:
    {
      sysclockfreq = HSI_VALUE;
 8001820:	4b04      	ldr	r3, [pc, #16]	; (8001834 <HAL_RCC_GetSysClockFreq+0x1a8>)
 8001822:	60bb      	str	r3, [r7, #8]
      break;
 8001824:	bf00      	nop
    }
  }
  return sysclockfreq;
 8001826:	68bb      	ldr	r3, [r7, #8]
}
 8001828:	4618      	mov	r0, r3
 800182a:	3714      	adds	r7, #20
 800182c:	46bd      	mov	sp, r7
 800182e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001830:	40023800 	.word	0x40023800
 8001834:	00f42400 	.word	0x00f42400
 8001838:	007a1200 	.word	0x007a1200

0800183c <HAL_RCC_GetHCLKFreq>:
  * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
 800183c:	b480      	push	{r7}
 800183e:	af00      	add	r7, sp, #0
  return SystemCoreClock;
 8001840:	4b03      	ldr	r3, [pc, #12]	; (8001850 <HAL_RCC_GetHCLKFreq+0x14>)
 8001842:	681b      	ldr	r3, [r3, #0]
}
 8001844:	4618      	mov	r0, r3
 8001846:	46bd      	mov	sp, r7
 8001848:	f85d 7b04 	ldr.w	r7, [sp], #4
 800184c:	4770      	bx	lr
 800184e:	bf00      	nop
 8001850:	20000000 	.word	0x20000000

08001854 <HAL_RCC_GetPCLK1Freq>:
  * @note   Each time PCLK1 changes, this function must be called to update the
  *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
 8001854:	b580      	push	{r7, lr}
 8001856:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> RCC_CFGR_PPRE1_Pos]);
 8001858:	f7ff fff0 	bl	800183c <HAL_RCC_GetHCLKFreq>
 800185c:	4601      	mov	r1, r0
 800185e:	4b05      	ldr	r3, [pc, #20]	; (8001874 <HAL_RCC_GetPCLK1Freq+0x20>)
 8001860:	689b      	ldr	r3, [r3, #8]
 8001862:	0a9b      	lsrs	r3, r3, #10
 8001864:	f003 0307 	and.w	r3, r3, #7
 8001868:	4a03      	ldr	r2, [pc, #12]	; (8001878 <HAL_RCC_GetPCLK1Freq+0x24>)
 800186a:	5cd3      	ldrb	r3, [r2, r3]
 800186c:	fa21 f303 	lsr.w	r3, r1, r3
}
 8001870:	4618      	mov	r0, r3
 8001872:	bd80      	pop	{r7, pc}
 8001874:	40023800 	.word	0x40023800
 8001878:	08007c14 	.word	0x08007c14

0800187c <HAL_RCC_GetPCLK2Freq>:
  * @note   Each time PCLK2 changes, this function must be called to update the
  *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
 800187c:	b580      	push	{r7, lr}
 800187e:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> RCC_CFGR_PPRE2_Pos]);
 8001880:	f7ff ffdc 	bl	800183c <HAL_RCC_GetHCLKFreq>
 8001884:	4601      	mov	r1, r0
 8001886:	4b05      	ldr	r3, [pc, #20]	; (800189c <HAL_RCC_GetPCLK2Freq+0x20>)
 8001888:	689b      	ldr	r3, [r3, #8]
 800188a:	0b5b      	lsrs	r3, r3, #13
 800188c:	f003 0307 	and.w	r3, r3, #7
 8001890:	4a03      	ldr	r2, [pc, #12]	; (80018a0 <HAL_RCC_GetPCLK2Freq+0x24>)
 8001892:	5cd3      	ldrb	r3, [r2, r3]
 8001894:	fa21 f303 	lsr.w	r3, r1, r3
}
 8001898:	4618      	mov	r0, r3
 800189a:	bd80      	pop	{r7, pc}
 800189c:	40023800 	.word	0x40023800
 80018a0:	08007c14 	.word	0x08007c14

080018a4 <HAL_DMA_Init>:
  * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
  *               the configuration information for the specified DMA Stream.  
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
{
 80018a4:	b580      	push	{r7, lr}
 80018a6:	b086      	sub	sp, #24
 80018a8:	af00      	add	r7, sp, #0
 80018aa:	6078      	str	r0, [r7, #4]
  uint32_t tmp = 0U;
 80018ac:	2300      	movs	r3, #0
 80018ae:	617b      	str	r3, [r7, #20]
  uint32_t tickstart = HAL_GetTick();
 80018b0:	f7ff fa42 	bl	8000d38 <HAL_GetTick>
 80018b4:	6138      	str	r0, [r7, #16]
  DMA_Base_Registers *regs;

  /* Check the DMA peripheral state */
  if(hdma == NULL)
 80018b6:	687b      	ldr	r3, [r7, #4]
 80018b8:	2b00      	cmp	r3, #0
 80018ba:	d101      	bne.n	80018c0 <HAL_DMA_Init+0x1c>
  {
    return HAL_ERROR;
 80018bc:	2301      	movs	r3, #1
 80018be:	e099      	b.n	80019f4 <HAL_DMA_Init+0x150>
    assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
    assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
  }
  
  /* Allocate lock resource */
  __HAL_UNLOCK(hdma);
 80018c0:	687b      	ldr	r3, [r7, #4]
 80018c2:	2200      	movs	r2, #0
 80018c4:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34

  /* Change DMA peripheral state */
  hdma->State = HAL_DMA_STATE_BUSY;
 80018c8:	687b      	ldr	r3, [r7, #4]
 80018ca:	2202      	movs	r2, #2
 80018cc:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
  
  /* Disable the peripheral */
  __HAL_DMA_DISABLE(hdma);
 80018d0:	687b      	ldr	r3, [r7, #4]
 80018d2:	681b      	ldr	r3, [r3, #0]
 80018d4:	681a      	ldr	r2, [r3, #0]
 80018d6:	687b      	ldr	r3, [r7, #4]
 80018d8:	681b      	ldr	r3, [r3, #0]
 80018da:	f022 0201 	bic.w	r2, r2, #1
 80018de:	601a      	str	r2, [r3, #0]
  
  /* Check if the DMA Stream is effectively disabled */
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 80018e0:	e00f      	b.n	8001902 <HAL_DMA_Init+0x5e>
  {
    /* Check for the Timeout */
    if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 80018e2:	f7ff fa29 	bl	8000d38 <HAL_GetTick>
 80018e6:	4602      	mov	r2, r0
 80018e8:	693b      	ldr	r3, [r7, #16]
 80018ea:	1ad3      	subs	r3, r2, r3
 80018ec:	2b05      	cmp	r3, #5
 80018ee:	d908      	bls.n	8001902 <HAL_DMA_Init+0x5e>
    {
      /* Update error code */
      hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 80018f0:	687b      	ldr	r3, [r7, #4]
 80018f2:	2220      	movs	r2, #32
 80018f4:	655a      	str	r2, [r3, #84]	; 0x54
      
      /* Change the DMA state */
      hdma->State = HAL_DMA_STATE_TIMEOUT;
 80018f6:	687b      	ldr	r3, [r7, #4]
 80018f8:	2203      	movs	r2, #3
 80018fa:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
      
      return HAL_TIMEOUT;
 80018fe:	2303      	movs	r3, #3
 8001900:	e078      	b.n	80019f4 <HAL_DMA_Init+0x150>
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 8001902:	687b      	ldr	r3, [r7, #4]
 8001904:	681b      	ldr	r3, [r3, #0]
 8001906:	681b      	ldr	r3, [r3, #0]
 8001908:	f003 0301 	and.w	r3, r3, #1
 800190c:	2b00      	cmp	r3, #0
 800190e:	d1e8      	bne.n	80018e2 <HAL_DMA_Init+0x3e>
    }
  }
  
  /* Get the CR register value */
  tmp = hdma->Instance->CR;
 8001910:	687b      	ldr	r3, [r7, #4]
 8001912:	681b      	ldr	r3, [r3, #0]
 8001914:	681b      	ldr	r3, [r3, #0]
 8001916:	617b      	str	r3, [r7, #20]

  /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
  tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
 8001918:	697a      	ldr	r2, [r7, #20]
 800191a:	4b38      	ldr	r3, [pc, #224]	; (80019fc <HAL_DMA_Init+0x158>)
 800191c:	4013      	ands	r3, r2
 800191e:	617b      	str	r3, [r7, #20]
                      DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
                      DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \
                      DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));

  /* Prepare the DMA Stream configuration */
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8001920:	687b      	ldr	r3, [r7, #4]
 8001922:	685a      	ldr	r2, [r3, #4]
 8001924:	687b      	ldr	r3, [r7, #4]
 8001926:	689b      	ldr	r3, [r3, #8]
 8001928:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 800192a:	687b      	ldr	r3, [r7, #4]
 800192c:	68db      	ldr	r3, [r3, #12]
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 800192e:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8001930:	687b      	ldr	r3, [r7, #4]
 8001932:	691b      	ldr	r3, [r3, #16]
 8001934:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8001936:	687b      	ldr	r3, [r7, #4]
 8001938:	695b      	ldr	r3, [r3, #20]
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 800193a:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 800193c:	687b      	ldr	r3, [r7, #4]
 800193e:	699b      	ldr	r3, [r3, #24]
 8001940:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 8001942:	687b      	ldr	r3, [r7, #4]
 8001944:	69db      	ldr	r3, [r3, #28]
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8001946:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 8001948:	687b      	ldr	r3, [r7, #4]
 800194a:	6a1b      	ldr	r3, [r3, #32]
 800194c:	4313      	orrs	r3, r2
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 800194e:	697a      	ldr	r2, [r7, #20]
 8001950:	4313      	orrs	r3, r2
 8001952:	617b      	str	r3, [r7, #20]

  /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 8001954:	687b      	ldr	r3, [r7, #4]
 8001956:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001958:	2b04      	cmp	r3, #4
 800195a:	d107      	bne.n	800196c <HAL_DMA_Init+0xc8>
  {
    /* Get memory burst and peripheral burst */
    tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
 800195c:	687b      	ldr	r3, [r7, #4]
 800195e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001960:	687b      	ldr	r3, [r7, #4]
 8001962:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001964:	4313      	orrs	r3, r2
 8001966:	697a      	ldr	r2, [r7, #20]
 8001968:	4313      	orrs	r3, r2
 800196a:	617b      	str	r3, [r7, #20]
  }
  
  /* Write to DMA Stream CR register */
  hdma->Instance->CR = tmp;  
 800196c:	687b      	ldr	r3, [r7, #4]
 800196e:	681b      	ldr	r3, [r3, #0]
 8001970:	697a      	ldr	r2, [r7, #20]
 8001972:	601a      	str	r2, [r3, #0]

  /* Get the FCR register value */
  tmp = hdma->Instance->FCR;
 8001974:	687b      	ldr	r3, [r7, #4]
 8001976:	681b      	ldr	r3, [r3, #0]
 8001978:	695b      	ldr	r3, [r3, #20]
 800197a:	617b      	str	r3, [r7, #20]

  /* Clear Direct mode and FIFO threshold bits */
  tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
 800197c:	697b      	ldr	r3, [r7, #20]
 800197e:	f023 0307 	bic.w	r3, r3, #7
 8001982:	617b      	str	r3, [r7, #20]

  /* Prepare the DMA Stream FIFO configuration */
  tmp |= hdma->Init.FIFOMode;
 8001984:	687b      	ldr	r3, [r7, #4]
 8001986:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001988:	697a      	ldr	r2, [r7, #20]
 800198a:	4313      	orrs	r3, r2
 800198c:	617b      	str	r3, [r7, #20]

  /* The FIFO threshold is not used when the FIFO mode is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 800198e:	687b      	ldr	r3, [r7, #4]
 8001990:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001992:	2b04      	cmp	r3, #4
 8001994:	d117      	bne.n	80019c6 <HAL_DMA_Init+0x122>
  {
    /* Get the FIFO threshold */
    tmp |= hdma->Init.FIFOThreshold;
 8001996:	687b      	ldr	r3, [r7, #4]
 8001998:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800199a:	697a      	ldr	r2, [r7, #20]
 800199c:	4313      	orrs	r3, r2
 800199e:	617b      	str	r3, [r7, #20]
    
    /* Check compatibility between FIFO threshold level and size of the memory burst */
    /* for INCR4, INCR8, INCR16 bursts */
    if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
 80019a0:	687b      	ldr	r3, [r7, #4]
 80019a2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80019a4:	2b00      	cmp	r3, #0
 80019a6:	d00e      	beq.n	80019c6 <HAL_DMA_Init+0x122>
    {
      if (DMA_CheckFifoParam(hdma) != HAL_OK)
 80019a8:	6878      	ldr	r0, [r7, #4]
 80019aa:	f000 f85f 	bl	8001a6c <DMA_CheckFifoParam>
 80019ae:	4603      	mov	r3, r0
 80019b0:	2b00      	cmp	r3, #0
 80019b2:	d008      	beq.n	80019c6 <HAL_DMA_Init+0x122>
      {
        /* Update error code */
        hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
 80019b4:	687b      	ldr	r3, [r7, #4]
 80019b6:	2240      	movs	r2, #64	; 0x40
 80019b8:	655a      	str	r2, [r3, #84]	; 0x54
        
        /* Change the DMA state */
        hdma->State = HAL_DMA_STATE_READY;
 80019ba:	687b      	ldr	r3, [r7, #4]
 80019bc:	2201      	movs	r2, #1
 80019be:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
        
        return HAL_ERROR; 
 80019c2:	2301      	movs	r3, #1
 80019c4:	e016      	b.n	80019f4 <HAL_DMA_Init+0x150>
      }
    }
  }
  
  /* Write to DMA Stream FCR */
  hdma->Instance->FCR = tmp;
 80019c6:	687b      	ldr	r3, [r7, #4]
 80019c8:	681b      	ldr	r3, [r3, #0]
 80019ca:	697a      	ldr	r2, [r7, #20]
 80019cc:	615a      	str	r2, [r3, #20]

  /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
     DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
  regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 80019ce:	6878      	ldr	r0, [r7, #4]
 80019d0:	f000 f816 	bl	8001a00 <DMA_CalcBaseAndBitshift>
 80019d4:	4603      	mov	r3, r0
 80019d6:	60fb      	str	r3, [r7, #12]
  
  /* Clear all interrupt flags */
  regs->IFCR = 0x3FU << hdma->StreamIndex;
 80019d8:	687b      	ldr	r3, [r7, #4]
 80019da:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 80019dc:	223f      	movs	r2, #63	; 0x3f
 80019de:	409a      	lsls	r2, r3
 80019e0:	68fb      	ldr	r3, [r7, #12]
 80019e2:	609a      	str	r2, [r3, #8]

  /* Initialize the error code */
  hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 80019e4:	687b      	ldr	r3, [r7, #4]
 80019e6:	2200      	movs	r2, #0
 80019e8:	655a      	str	r2, [r3, #84]	; 0x54
                                                                                     
  /* Initialize the DMA state */
  hdma->State = HAL_DMA_STATE_READY;
 80019ea:	687b      	ldr	r3, [r7, #4]
 80019ec:	2201      	movs	r2, #1
 80019ee:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35

  return HAL_OK;
 80019f2:	2300      	movs	r3, #0
}
 80019f4:	4618      	mov	r0, r3
 80019f6:	3718      	adds	r7, #24
 80019f8:	46bd      	mov	sp, r7
 80019fa:	bd80      	pop	{r7, pc}
 80019fc:	f010803f 	.word	0xf010803f

08001a00 <DMA_CalcBaseAndBitshift>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval Stream base address
  */
static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
{
 8001a00:	b480      	push	{r7}
 8001a02:	b085      	sub	sp, #20
 8001a04:	af00      	add	r7, sp, #0
 8001a06:	6078      	str	r0, [r7, #4]
  uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
 8001a08:	687b      	ldr	r3, [r7, #4]
 8001a0a:	681b      	ldr	r3, [r3, #0]
 8001a0c:	b2db      	uxtb	r3, r3
 8001a0e:	3b10      	subs	r3, #16
 8001a10:	4a14      	ldr	r2, [pc, #80]	; (8001a64 <DMA_CalcBaseAndBitshift+0x64>)
 8001a12:	fba2 2303 	umull	r2, r3, r2, r3
 8001a16:	091b      	lsrs	r3, r3, #4
 8001a18:	60fb      	str	r3, [r7, #12]
  
  /* lookup table for necessary bitshift of flags within status registers */
  static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
  hdma->StreamIndex = flagBitshiftOffset[stream_number];
 8001a1a:	4a13      	ldr	r2, [pc, #76]	; (8001a68 <DMA_CalcBaseAndBitshift+0x68>)
 8001a1c:	68fb      	ldr	r3, [r7, #12]
 8001a1e:	4413      	add	r3, r2
 8001a20:	781b      	ldrb	r3, [r3, #0]
 8001a22:	461a      	mov	r2, r3
 8001a24:	687b      	ldr	r3, [r7, #4]
 8001a26:	65da      	str	r2, [r3, #92]	; 0x5c
  
  if (stream_number > 3U)
 8001a28:	68fb      	ldr	r3, [r7, #12]
 8001a2a:	2b03      	cmp	r3, #3
 8001a2c:	d909      	bls.n	8001a42 <DMA_CalcBaseAndBitshift+0x42>
  {
    /* return pointer to HISR and HIFCR */
    hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
 8001a2e:	687b      	ldr	r3, [r7, #4]
 8001a30:	681b      	ldr	r3, [r3, #0]
 8001a32:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8001a36:	f023 0303 	bic.w	r3, r3, #3
 8001a3a:	1d1a      	adds	r2, r3, #4
 8001a3c:	687b      	ldr	r3, [r7, #4]
 8001a3e:	659a      	str	r2, [r3, #88]	; 0x58
 8001a40:	e007      	b.n	8001a52 <DMA_CalcBaseAndBitshift+0x52>
  }
  else
  {
    /* return pointer to LISR and LIFCR */
    hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
 8001a42:	687b      	ldr	r3, [r7, #4]
 8001a44:	681b      	ldr	r3, [r3, #0]
 8001a46:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8001a4a:	f023 0303 	bic.w	r3, r3, #3
 8001a4e:	687a      	ldr	r2, [r7, #4]
 8001a50:	6593      	str	r3, [r2, #88]	; 0x58
  }
  
  return hdma->StreamBaseAddress;
 8001a52:	687b      	ldr	r3, [r7, #4]
 8001a54:	6d9b      	ldr	r3, [r3, #88]	; 0x58
}
 8001a56:	4618      	mov	r0, r3
 8001a58:	3714      	adds	r7, #20
 8001a5a:	46bd      	mov	sp, r7
 8001a5c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a60:	4770      	bx	lr
 8001a62:	bf00      	nop
 8001a64:	aaaaaaab 	.word	0xaaaaaaab
 8001a68:	08007c1c 	.word	0x08007c1c

08001a6c <DMA_CheckFifoParam>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval HAL status
  */
static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
{
 8001a6c:	b480      	push	{r7}
 8001a6e:	b085      	sub	sp, #20
 8001a70:	af00      	add	r7, sp, #0
 8001a72:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef status = HAL_OK;
 8001a74:	2300      	movs	r3, #0
 8001a76:	73fb      	strb	r3, [r7, #15]
  uint32_t tmp = hdma->Init.FIFOThreshold;
 8001a78:	687b      	ldr	r3, [r7, #4]
 8001a7a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8001a7c:	60bb      	str	r3, [r7, #8]
  
  /* Memory Data size equal to Byte */
  if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
 8001a7e:	687b      	ldr	r3, [r7, #4]
 8001a80:	699b      	ldr	r3, [r3, #24]
 8001a82:	2b00      	cmp	r3, #0
 8001a84:	d11f      	bne.n	8001ac6 <DMA_CheckFifoParam+0x5a>
  {
    switch (tmp)
 8001a86:	68bb      	ldr	r3, [r7, #8]
 8001a88:	2b03      	cmp	r3, #3
 8001a8a:	d855      	bhi.n	8001b38 <DMA_CheckFifoParam+0xcc>
 8001a8c:	a201      	add	r2, pc, #4	; (adr r2, 8001a94 <DMA_CheckFifoParam+0x28>)
 8001a8e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001a92:	bf00      	nop
 8001a94:	08001aa5 	.word	0x08001aa5
 8001a98:	08001ab7 	.word	0x08001ab7
 8001a9c:	08001aa5 	.word	0x08001aa5
 8001aa0:	08001b39 	.word	0x08001b39
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001aa4:	687b      	ldr	r3, [r7, #4]
 8001aa6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001aa8:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001aac:	2b00      	cmp	r3, #0
 8001aae:	d045      	beq.n	8001b3c <DMA_CheckFifoParam+0xd0>
      {
        status = HAL_ERROR;
 8001ab0:	2301      	movs	r3, #1
 8001ab2:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001ab4:	e042      	b.n	8001b3c <DMA_CheckFifoParam+0xd0>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001ab6:	687b      	ldr	r3, [r7, #4]
 8001ab8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001aba:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001abe:	d13f      	bne.n	8001b40 <DMA_CheckFifoParam+0xd4>
      {
        status = HAL_ERROR;
 8001ac0:	2301      	movs	r3, #1
 8001ac2:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001ac4:	e03c      	b.n	8001b40 <DMA_CheckFifoParam+0xd4>
      break;
    }
  }
  
  /* Memory Data size equal to Half-Word */
  else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
 8001ac6:	687b      	ldr	r3, [r7, #4]
 8001ac8:	699b      	ldr	r3, [r3, #24]
 8001aca:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8001ace:	d121      	bne.n	8001b14 <DMA_CheckFifoParam+0xa8>
  {
    switch (tmp)
 8001ad0:	68bb      	ldr	r3, [r7, #8]
 8001ad2:	2b03      	cmp	r3, #3
 8001ad4:	d836      	bhi.n	8001b44 <DMA_CheckFifoParam+0xd8>
 8001ad6:	a201      	add	r2, pc, #4	; (adr r2, 8001adc <DMA_CheckFifoParam+0x70>)
 8001ad8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001adc:	08001aed 	.word	0x08001aed
 8001ae0:	08001af3 	.word	0x08001af3
 8001ae4:	08001aed 	.word	0x08001aed
 8001ae8:	08001b05 	.word	0x08001b05
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      status = HAL_ERROR;
 8001aec:	2301      	movs	r3, #1
 8001aee:	73fb      	strb	r3, [r7, #15]
      break;
 8001af0:	e02f      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001af2:	687b      	ldr	r3, [r7, #4]
 8001af4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001af6:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001afa:	2b00      	cmp	r3, #0
 8001afc:	d024      	beq.n	8001b48 <DMA_CheckFifoParam+0xdc>
      {
        status = HAL_ERROR;
 8001afe:	2301      	movs	r3, #1
 8001b00:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8001b02:	e021      	b.n	8001b48 <DMA_CheckFifoParam+0xdc>
    case DMA_FIFO_THRESHOLD_FULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001b04:	687b      	ldr	r3, [r7, #4]
 8001b06:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001b08:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001b0c:	d11e      	bne.n	8001b4c <DMA_CheckFifoParam+0xe0>
      {
        status = HAL_ERROR;
 8001b0e:	2301      	movs	r3, #1
 8001b10:	73fb      	strb	r3, [r7, #15]
      }
      break;   
 8001b12:	e01b      	b.n	8001b4c <DMA_CheckFifoParam+0xe0>
  }
  
  /* Memory Data size equal to Word */
  else
  {
    switch (tmp)
 8001b14:	68bb      	ldr	r3, [r7, #8]
 8001b16:	2b02      	cmp	r3, #2
 8001b18:	d902      	bls.n	8001b20 <DMA_CheckFifoParam+0xb4>
 8001b1a:	2b03      	cmp	r3, #3
 8001b1c:	d003      	beq.n	8001b26 <DMA_CheckFifoParam+0xba>
      {
        status = HAL_ERROR;
      }
      break;
    default:
      break;
 8001b1e:	e018      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      status = HAL_ERROR;
 8001b20:	2301      	movs	r3, #1
 8001b22:	73fb      	strb	r3, [r7, #15]
      break;
 8001b24:	e015      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001b26:	687b      	ldr	r3, [r7, #4]
 8001b28:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001b2a:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001b2e:	2b00      	cmp	r3, #0
 8001b30:	d00e      	beq.n	8001b50 <DMA_CheckFifoParam+0xe4>
        status = HAL_ERROR;
 8001b32:	2301      	movs	r3, #1
 8001b34:	73fb      	strb	r3, [r7, #15]
      break;
 8001b36:	e00b      	b.n	8001b50 <DMA_CheckFifoParam+0xe4>
      break;
 8001b38:	bf00      	nop
 8001b3a:	e00a      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      break;
 8001b3c:	bf00      	nop
 8001b3e:	e008      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      break;
 8001b40:	bf00      	nop
 8001b42:	e006      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      break;
 8001b44:	bf00      	nop
 8001b46:	e004      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      break;
 8001b48:	bf00      	nop
 8001b4a:	e002      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      break;   
 8001b4c:	bf00      	nop
 8001b4e:	e000      	b.n	8001b52 <DMA_CheckFifoParam+0xe6>
      break;
 8001b50:	bf00      	nop
    }
  } 
  
  return status; 
 8001b52:	7bfb      	ldrb	r3, [r7, #15]
}
 8001b54:	4618      	mov	r0, r3
 8001b56:	3714      	adds	r7, #20
 8001b58:	46bd      	mov	sp, r7
 8001b5a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001b5e:	4770      	bx	lr

08001b60 <HAL_GPIO_Init>:
  * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 8001b60:	b480      	push	{r7}
 8001b62:	b089      	sub	sp, #36	; 0x24
 8001b64:	af00      	add	r7, sp, #0
 8001b66:	6078      	str	r0, [r7, #4]
 8001b68:	6039      	str	r1, [r7, #0]
  uint32_t position;
  uint32_t ioposition = 0x00U;
 8001b6a:	2300      	movs	r3, #0
 8001b6c:	617b      	str	r3, [r7, #20]
  uint32_t iocurrent = 0x00U;
 8001b6e:	2300      	movs	r3, #0
 8001b70:	613b      	str	r3, [r7, #16]
  uint32_t temp = 0x00U;
 8001b72:	2300      	movs	r3, #0
 8001b74:	61bb      	str	r3, [r7, #24]
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  assert_param(IS_GPIO_PULL(GPIO_Init->Pull));

  /* Configure the port pins */
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001b76:	2300      	movs	r3, #0
 8001b78:	61fb      	str	r3, [r7, #28]
 8001b7a:	e159      	b.n	8001e30 <HAL_GPIO_Init+0x2d0>
  {
    /* Get the IO position */
    ioposition = 0x01U << position;
 8001b7c:	2201      	movs	r2, #1
 8001b7e:	69fb      	ldr	r3, [r7, #28]
 8001b80:	fa02 f303 	lsl.w	r3, r2, r3
 8001b84:	617b      	str	r3, [r7, #20]
    /* Get the current IO position */
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 8001b86:	683b      	ldr	r3, [r7, #0]
 8001b88:	681b      	ldr	r3, [r3, #0]
 8001b8a:	697a      	ldr	r2, [r7, #20]
 8001b8c:	4013      	ands	r3, r2
 8001b8e:	613b      	str	r3, [r7, #16]

    if(iocurrent == ioposition)
 8001b90:	693a      	ldr	r2, [r7, #16]
 8001b92:	697b      	ldr	r3, [r7, #20]
 8001b94:	429a      	cmp	r2, r3
 8001b96:	f040 8148 	bne.w	8001e2a <HAL_GPIO_Init+0x2ca>
    {
      /*--------------------- GPIO Mode Configuration ------------------------*/
      /* In case of Output or Alternate function mode selection */
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 8001b9a:	683b      	ldr	r3, [r7, #0]
 8001b9c:	685b      	ldr	r3, [r3, #4]
 8001b9e:	f003 0303 	and.w	r3, r3, #3
 8001ba2:	2b01      	cmp	r3, #1
 8001ba4:	d005      	beq.n	8001bb2 <HAL_GPIO_Init+0x52>
          (GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 8001ba6:	683b      	ldr	r3, [r7, #0]
 8001ba8:	685b      	ldr	r3, [r3, #4]
 8001baa:	f003 0303 	and.w	r3, r3, #3
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 8001bae:	2b02      	cmp	r3, #2
 8001bb0:	d130      	bne.n	8001c14 <HAL_GPIO_Init+0xb4>
      {
        /* Check the Speed parameter */
        assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
        /* Configure the IO Speed */
        temp = GPIOx->OSPEEDR; 
 8001bb2:	687b      	ldr	r3, [r7, #4]
 8001bb4:	689b      	ldr	r3, [r3, #8]
 8001bb6:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
 8001bb8:	69fb      	ldr	r3, [r7, #28]
 8001bba:	005b      	lsls	r3, r3, #1
 8001bbc:	2203      	movs	r2, #3
 8001bbe:	fa02 f303 	lsl.w	r3, r2, r3
 8001bc2:	43db      	mvns	r3, r3
 8001bc4:	69ba      	ldr	r2, [r7, #24]
 8001bc6:	4013      	ands	r3, r2
 8001bc8:	61bb      	str	r3, [r7, #24]
        temp |= (GPIO_Init->Speed << (position * 2U));
 8001bca:	683b      	ldr	r3, [r7, #0]
 8001bcc:	68da      	ldr	r2, [r3, #12]
 8001bce:	69fb      	ldr	r3, [r7, #28]
 8001bd0:	005b      	lsls	r3, r3, #1
 8001bd2:	fa02 f303 	lsl.w	r3, r2, r3
 8001bd6:	69ba      	ldr	r2, [r7, #24]
 8001bd8:	4313      	orrs	r3, r2
 8001bda:	61bb      	str	r3, [r7, #24]
        GPIOx->OSPEEDR = temp;
 8001bdc:	687b      	ldr	r3, [r7, #4]
 8001bde:	69ba      	ldr	r2, [r7, #24]
 8001be0:	609a      	str	r2, [r3, #8]

        /* Configure the IO Output Type */
        temp = GPIOx->OTYPER;
 8001be2:	687b      	ldr	r3, [r7, #4]
 8001be4:	685b      	ldr	r3, [r3, #4]
 8001be6:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 8001be8:	2201      	movs	r2, #1
 8001bea:	69fb      	ldr	r3, [r7, #28]
 8001bec:	fa02 f303 	lsl.w	r3, r2, r3
 8001bf0:	43db      	mvns	r3, r3
 8001bf2:	69ba      	ldr	r2, [r7, #24]
 8001bf4:	4013      	ands	r3, r2
 8001bf6:	61bb      	str	r3, [r7, #24]
        temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 8001bf8:	683b      	ldr	r3, [r7, #0]
 8001bfa:	685b      	ldr	r3, [r3, #4]
 8001bfc:	091b      	lsrs	r3, r3, #4
 8001bfe:	f003 0201 	and.w	r2, r3, #1
 8001c02:	69fb      	ldr	r3, [r7, #28]
 8001c04:	fa02 f303 	lsl.w	r3, r2, r3
 8001c08:	69ba      	ldr	r2, [r7, #24]
 8001c0a:	4313      	orrs	r3, r2
 8001c0c:	61bb      	str	r3, [r7, #24]
        GPIOx->OTYPER = temp;
 8001c0e:	687b      	ldr	r3, [r7, #4]
 8001c10:	69ba      	ldr	r2, [r7, #24]
 8001c12:	605a      	str	r2, [r3, #4]
       }

      if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
 8001c14:	683b      	ldr	r3, [r7, #0]
 8001c16:	685b      	ldr	r3, [r3, #4]
 8001c18:	f003 0303 	and.w	r3, r3, #3
 8001c1c:	2b03      	cmp	r3, #3
 8001c1e:	d017      	beq.n	8001c50 <HAL_GPIO_Init+0xf0>
      {
        /* Activate the Pull-up or Pull down resistor for the current IO */
        temp = GPIOx->PUPDR;
 8001c20:	687b      	ldr	r3, [r7, #4]
 8001c22:	68db      	ldr	r3, [r3, #12]
 8001c24:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
 8001c26:	69fb      	ldr	r3, [r7, #28]
 8001c28:	005b      	lsls	r3, r3, #1
 8001c2a:	2203      	movs	r2, #3
 8001c2c:	fa02 f303 	lsl.w	r3, r2, r3
 8001c30:	43db      	mvns	r3, r3
 8001c32:	69ba      	ldr	r2, [r7, #24]
 8001c34:	4013      	ands	r3, r2
 8001c36:	61bb      	str	r3, [r7, #24]
        temp |= ((GPIO_Init->Pull) << (position * 2U));
 8001c38:	683b      	ldr	r3, [r7, #0]
 8001c3a:	689a      	ldr	r2, [r3, #8]
 8001c3c:	69fb      	ldr	r3, [r7, #28]
 8001c3e:	005b      	lsls	r3, r3, #1
 8001c40:	fa02 f303 	lsl.w	r3, r2, r3
 8001c44:	69ba      	ldr	r2, [r7, #24]
 8001c46:	4313      	orrs	r3, r2
 8001c48:	61bb      	str	r3, [r7, #24]
        GPIOx->PUPDR = temp;
 8001c4a:	687b      	ldr	r3, [r7, #4]
 8001c4c:	69ba      	ldr	r2, [r7, #24]
 8001c4e:	60da      	str	r2, [r3, #12]
      }

      /* In case of Alternate function mode selection */
      if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 8001c50:	683b      	ldr	r3, [r7, #0]
 8001c52:	685b      	ldr	r3, [r3, #4]
 8001c54:	f003 0303 	and.w	r3, r3, #3
 8001c58:	2b02      	cmp	r3, #2
 8001c5a:	d123      	bne.n	8001ca4 <HAL_GPIO_Init+0x144>
      {
        /* Check the Alternate function parameter */
        assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
        /* Configure Alternate function mapped with the current IO */
        temp = GPIOx->AFR[position >> 3U];
 8001c5c:	69fb      	ldr	r3, [r7, #28]
 8001c5e:	08da      	lsrs	r2, r3, #3
 8001c60:	687b      	ldr	r3, [r7, #4]
 8001c62:	3208      	adds	r2, #8
 8001c64:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001c68:	61bb      	str	r3, [r7, #24]
        temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
 8001c6a:	69fb      	ldr	r3, [r7, #28]
 8001c6c:	f003 0307 	and.w	r3, r3, #7
 8001c70:	009b      	lsls	r3, r3, #2
 8001c72:	220f      	movs	r2, #15
 8001c74:	fa02 f303 	lsl.w	r3, r2, r3
 8001c78:	43db      	mvns	r3, r3
 8001c7a:	69ba      	ldr	r2, [r7, #24]
 8001c7c:	4013      	ands	r3, r2
 8001c7e:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
 8001c80:	683b      	ldr	r3, [r7, #0]
 8001c82:	691a      	ldr	r2, [r3, #16]
 8001c84:	69fb      	ldr	r3, [r7, #28]
 8001c86:	f003 0307 	and.w	r3, r3, #7
 8001c8a:	009b      	lsls	r3, r3, #2
 8001c8c:	fa02 f303 	lsl.w	r3, r2, r3
 8001c90:	69ba      	ldr	r2, [r7, #24]
 8001c92:	4313      	orrs	r3, r2
 8001c94:	61bb      	str	r3, [r7, #24]
        GPIOx->AFR[position >> 3U] = temp;
 8001c96:	69fb      	ldr	r3, [r7, #28]
 8001c98:	08da      	lsrs	r2, r3, #3
 8001c9a:	687b      	ldr	r3, [r7, #4]
 8001c9c:	3208      	adds	r2, #8
 8001c9e:	69b9      	ldr	r1, [r7, #24]
 8001ca0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
      }

      /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
      temp = GPIOx->MODER;
 8001ca4:	687b      	ldr	r3, [r7, #4]
 8001ca6:	681b      	ldr	r3, [r3, #0]
 8001ca8:	61bb      	str	r3, [r7, #24]
      temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
 8001caa:	69fb      	ldr	r3, [r7, #28]
 8001cac:	005b      	lsls	r3, r3, #1
 8001cae:	2203      	movs	r2, #3
 8001cb0:	fa02 f303 	lsl.w	r3, r2, r3
 8001cb4:	43db      	mvns	r3, r3
 8001cb6:	69ba      	ldr	r2, [r7, #24]
 8001cb8:	4013      	ands	r3, r2
 8001cba:	61bb      	str	r3, [r7, #24]
      temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 8001cbc:	683b      	ldr	r3, [r7, #0]
 8001cbe:	685b      	ldr	r3, [r3, #4]
 8001cc0:	f003 0203 	and.w	r2, r3, #3
 8001cc4:	69fb      	ldr	r3, [r7, #28]
 8001cc6:	005b      	lsls	r3, r3, #1
 8001cc8:	fa02 f303 	lsl.w	r3, r2, r3
 8001ccc:	69ba      	ldr	r2, [r7, #24]
 8001cce:	4313      	orrs	r3, r2
 8001cd0:	61bb      	str	r3, [r7, #24]
      GPIOx->MODER = temp;
 8001cd2:	687b      	ldr	r3, [r7, #4]
 8001cd4:	69ba      	ldr	r2, [r7, #24]
 8001cd6:	601a      	str	r2, [r3, #0]

      /*--------------------- EXTI Mode Configuration ------------------------*/
      /* Configure the External Interrupt or event for the current IO */
      if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 8001cd8:	683b      	ldr	r3, [r7, #0]
 8001cda:	685b      	ldr	r3, [r3, #4]
 8001cdc:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001ce0:	2b00      	cmp	r3, #0
 8001ce2:	f000 80a2 	beq.w	8001e2a <HAL_GPIO_Init+0x2ca>
      {
        /* Enable SYSCFG Clock */
        __HAL_RCC_SYSCFG_CLK_ENABLE();
 8001ce6:	2300      	movs	r3, #0
 8001ce8:	60fb      	str	r3, [r7, #12]
 8001cea:	4b56      	ldr	r3, [pc, #344]	; (8001e44 <HAL_GPIO_Init+0x2e4>)
 8001cec:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001cee:	4a55      	ldr	r2, [pc, #340]	; (8001e44 <HAL_GPIO_Init+0x2e4>)
 8001cf0:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001cf4:	6453      	str	r3, [r2, #68]	; 0x44
 8001cf6:	4b53      	ldr	r3, [pc, #332]	; (8001e44 <HAL_GPIO_Init+0x2e4>)
 8001cf8:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001cfa:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8001cfe:	60fb      	str	r3, [r7, #12]
 8001d00:	68fb      	ldr	r3, [r7, #12]

        temp = SYSCFG->EXTICR[position >> 2U];
 8001d02:	4a51      	ldr	r2, [pc, #324]	; (8001e48 <HAL_GPIO_Init+0x2e8>)
 8001d04:	69fb      	ldr	r3, [r7, #28]
 8001d06:	089b      	lsrs	r3, r3, #2
 8001d08:	3302      	adds	r3, #2
 8001d0a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001d0e:	61bb      	str	r3, [r7, #24]
        temp &= ~(0x0FU << (4U * (position & 0x03U)));
 8001d10:	69fb      	ldr	r3, [r7, #28]
 8001d12:	f003 0303 	and.w	r3, r3, #3
 8001d16:	009b      	lsls	r3, r3, #2
 8001d18:	220f      	movs	r2, #15
 8001d1a:	fa02 f303 	lsl.w	r3, r2, r3
 8001d1e:	43db      	mvns	r3, r3
 8001d20:	69ba      	ldr	r2, [r7, #24]
 8001d22:	4013      	ands	r3, r2
 8001d24:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
 8001d26:	687b      	ldr	r3, [r7, #4]
 8001d28:	4a48      	ldr	r2, [pc, #288]	; (8001e4c <HAL_GPIO_Init+0x2ec>)
 8001d2a:	4293      	cmp	r3, r2
 8001d2c:	d019      	beq.n	8001d62 <HAL_GPIO_Init+0x202>
 8001d2e:	687b      	ldr	r3, [r7, #4]
 8001d30:	4a47      	ldr	r2, [pc, #284]	; (8001e50 <HAL_GPIO_Init+0x2f0>)
 8001d32:	4293      	cmp	r3, r2
 8001d34:	d013      	beq.n	8001d5e <HAL_GPIO_Init+0x1fe>
 8001d36:	687b      	ldr	r3, [r7, #4]
 8001d38:	4a46      	ldr	r2, [pc, #280]	; (8001e54 <HAL_GPIO_Init+0x2f4>)
 8001d3a:	4293      	cmp	r3, r2
 8001d3c:	d00d      	beq.n	8001d5a <HAL_GPIO_Init+0x1fa>
 8001d3e:	687b      	ldr	r3, [r7, #4]
 8001d40:	4a45      	ldr	r2, [pc, #276]	; (8001e58 <HAL_GPIO_Init+0x2f8>)
 8001d42:	4293      	cmp	r3, r2
 8001d44:	d007      	beq.n	8001d56 <HAL_GPIO_Init+0x1f6>
 8001d46:	687b      	ldr	r3, [r7, #4]
 8001d48:	4a44      	ldr	r2, [pc, #272]	; (8001e5c <HAL_GPIO_Init+0x2fc>)
 8001d4a:	4293      	cmp	r3, r2
 8001d4c:	d101      	bne.n	8001d52 <HAL_GPIO_Init+0x1f2>
 8001d4e:	2304      	movs	r3, #4
 8001d50:	e008      	b.n	8001d64 <HAL_GPIO_Init+0x204>
 8001d52:	2307      	movs	r3, #7
 8001d54:	e006      	b.n	8001d64 <HAL_GPIO_Init+0x204>
 8001d56:	2303      	movs	r3, #3
 8001d58:	e004      	b.n	8001d64 <HAL_GPIO_Init+0x204>
 8001d5a:	2302      	movs	r3, #2
 8001d5c:	e002      	b.n	8001d64 <HAL_GPIO_Init+0x204>
 8001d5e:	2301      	movs	r3, #1
 8001d60:	e000      	b.n	8001d64 <HAL_GPIO_Init+0x204>
 8001d62:	2300      	movs	r3, #0
 8001d64:	69fa      	ldr	r2, [r7, #28]
 8001d66:	f002 0203 	and.w	r2, r2, #3
 8001d6a:	0092      	lsls	r2, r2, #2
 8001d6c:	4093      	lsls	r3, r2
 8001d6e:	69ba      	ldr	r2, [r7, #24]
 8001d70:	4313      	orrs	r3, r2
 8001d72:	61bb      	str	r3, [r7, #24]
        SYSCFG->EXTICR[position >> 2U] = temp;
 8001d74:	4934      	ldr	r1, [pc, #208]	; (8001e48 <HAL_GPIO_Init+0x2e8>)
 8001d76:	69fb      	ldr	r3, [r7, #28]
 8001d78:	089b      	lsrs	r3, r3, #2
 8001d7a:	3302      	adds	r3, #2
 8001d7c:	69ba      	ldr	r2, [r7, #24]
 8001d7e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]

        /* Clear EXTI line configuration */
        temp = EXTI->IMR;
 8001d82:	4b37      	ldr	r3, [pc, #220]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001d84:	681b      	ldr	r3, [r3, #0]
 8001d86:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001d88:	693b      	ldr	r3, [r7, #16]
 8001d8a:	43db      	mvns	r3, r3
 8001d8c:	69ba      	ldr	r2, [r7, #24]
 8001d8e:	4013      	ands	r3, r2
 8001d90:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 8001d92:	683b      	ldr	r3, [r7, #0]
 8001d94:	685b      	ldr	r3, [r3, #4]
 8001d96:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 8001d9a:	2b00      	cmp	r3, #0
 8001d9c:	d003      	beq.n	8001da6 <HAL_GPIO_Init+0x246>
        {
          temp |= iocurrent;
 8001d9e:	69ba      	ldr	r2, [r7, #24]
 8001da0:	693b      	ldr	r3, [r7, #16]
 8001da2:	4313      	orrs	r3, r2
 8001da4:	61bb      	str	r3, [r7, #24]
        }
        EXTI->IMR = temp;
 8001da6:	4a2e      	ldr	r2, [pc, #184]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001da8:	69bb      	ldr	r3, [r7, #24]
 8001daa:	6013      	str	r3, [r2, #0]

        temp = EXTI->EMR;
 8001dac:	4b2c      	ldr	r3, [pc, #176]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001dae:	685b      	ldr	r3, [r3, #4]
 8001db0:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001db2:	693b      	ldr	r3, [r7, #16]
 8001db4:	43db      	mvns	r3, r3
 8001db6:	69ba      	ldr	r2, [r7, #24]
 8001db8:	4013      	ands	r3, r2
 8001dba:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 8001dbc:	683b      	ldr	r3, [r7, #0]
 8001dbe:	685b      	ldr	r3, [r3, #4]
 8001dc0:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001dc4:	2b00      	cmp	r3, #0
 8001dc6:	d003      	beq.n	8001dd0 <HAL_GPIO_Init+0x270>
        {
          temp |= iocurrent;
 8001dc8:	69ba      	ldr	r2, [r7, #24]
 8001dca:	693b      	ldr	r3, [r7, #16]
 8001dcc:	4313      	orrs	r3, r2
 8001dce:	61bb      	str	r3, [r7, #24]
        }
        EXTI->EMR = temp;
 8001dd0:	4a23      	ldr	r2, [pc, #140]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001dd2:	69bb      	ldr	r3, [r7, #24]
 8001dd4:	6053      	str	r3, [r2, #4]

        /* Clear Rising Falling edge configuration */
        temp = EXTI->RTSR;
 8001dd6:	4b22      	ldr	r3, [pc, #136]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001dd8:	689b      	ldr	r3, [r3, #8]
 8001dda:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001ddc:	693b      	ldr	r3, [r7, #16]
 8001dde:	43db      	mvns	r3, r3
 8001de0:	69ba      	ldr	r2, [r7, #24]
 8001de2:	4013      	ands	r3, r2
 8001de4:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8001de6:	683b      	ldr	r3, [r7, #0]
 8001de8:	685b      	ldr	r3, [r3, #4]
 8001dea:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 8001dee:	2b00      	cmp	r3, #0
 8001df0:	d003      	beq.n	8001dfa <HAL_GPIO_Init+0x29a>
        {
          temp |= iocurrent;
 8001df2:	69ba      	ldr	r2, [r7, #24]
 8001df4:	693b      	ldr	r3, [r7, #16]
 8001df6:	4313      	orrs	r3, r2
 8001df8:	61bb      	str	r3, [r7, #24]
        }
        EXTI->RTSR = temp;
 8001dfa:	4a19      	ldr	r2, [pc, #100]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001dfc:	69bb      	ldr	r3, [r7, #24]
 8001dfe:	6093      	str	r3, [r2, #8]

        temp = EXTI->FTSR;
 8001e00:	4b17      	ldr	r3, [pc, #92]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001e02:	68db      	ldr	r3, [r3, #12]
 8001e04:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001e06:	693b      	ldr	r3, [r7, #16]
 8001e08:	43db      	mvns	r3, r3
 8001e0a:	69ba      	ldr	r2, [r7, #24]
 8001e0c:	4013      	ands	r3, r2
 8001e0e:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 8001e10:	683b      	ldr	r3, [r7, #0]
 8001e12:	685b      	ldr	r3, [r3, #4]
 8001e14:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8001e18:	2b00      	cmp	r3, #0
 8001e1a:	d003      	beq.n	8001e24 <HAL_GPIO_Init+0x2c4>
        {
          temp |= iocurrent;
 8001e1c:	69ba      	ldr	r2, [r7, #24]
 8001e1e:	693b      	ldr	r3, [r7, #16]
 8001e20:	4313      	orrs	r3, r2
 8001e22:	61bb      	str	r3, [r7, #24]
        }
        EXTI->FTSR = temp;
 8001e24:	4a0e      	ldr	r2, [pc, #56]	; (8001e60 <HAL_GPIO_Init+0x300>)
 8001e26:	69bb      	ldr	r3, [r7, #24]
 8001e28:	60d3      	str	r3, [r2, #12]
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001e2a:	69fb      	ldr	r3, [r7, #28]
 8001e2c:	3301      	adds	r3, #1
 8001e2e:	61fb      	str	r3, [r7, #28]
 8001e30:	69fb      	ldr	r3, [r7, #28]
 8001e32:	2b0f      	cmp	r3, #15
 8001e34:	f67f aea2 	bls.w	8001b7c <HAL_GPIO_Init+0x1c>
      }
    }
  }
}
 8001e38:	bf00      	nop
 8001e3a:	3724      	adds	r7, #36	; 0x24
 8001e3c:	46bd      	mov	sp, r7
 8001e3e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001e42:	4770      	bx	lr
 8001e44:	40023800 	.word	0x40023800
 8001e48:	40013800 	.word	0x40013800
 8001e4c:	40020000 	.word	0x40020000
 8001e50:	40020400 	.word	0x40020400
 8001e54:	40020800 	.word	0x40020800
 8001e58:	40020c00 	.word	0x40020c00
 8001e5c:	40021000 	.word	0x40021000
 8001e60:	40013c00 	.word	0x40013c00

08001e64 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 8001e64:	b480      	push	{r7}
 8001e66:	b083      	sub	sp, #12
 8001e68:	af00      	add	r7, sp, #0
 8001e6a:	6078      	str	r0, [r7, #4]
 8001e6c:	460b      	mov	r3, r1
 8001e6e:	807b      	strh	r3, [r7, #2]
 8001e70:	4613      	mov	r3, r2
 8001e72:	707b      	strb	r3, [r7, #1]
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if(PinState != GPIO_PIN_RESET)
 8001e74:	787b      	ldrb	r3, [r7, #1]
 8001e76:	2b00      	cmp	r3, #0
 8001e78:	d003      	beq.n	8001e82 <HAL_GPIO_WritePin+0x1e>
  {
    GPIOx->BSRR = GPIO_Pin;
 8001e7a:	887a      	ldrh	r2, [r7, #2]
 8001e7c:	687b      	ldr	r3, [r7, #4]
 8001e7e:	619a      	str	r2, [r3, #24]
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
  }
}
 8001e80:	e003      	b.n	8001e8a <HAL_GPIO_WritePin+0x26>
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
 8001e82:	887b      	ldrh	r3, [r7, #2]
 8001e84:	041a      	lsls	r2, r3, #16
 8001e86:	687b      	ldr	r3, [r7, #4]
 8001e88:	619a      	str	r2, [r3, #24]
}
 8001e8a:	bf00      	nop
 8001e8c:	370c      	adds	r7, #12
 8001e8e:	46bd      	mov	sp, r7
 8001e90:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001e94:	4770      	bx	lr

08001e96 <HAL_GPIO_TogglePin>:
  *                      x can be (A..I) to select the GPIO peripheral for STM32F40XX and STM32F427X devices.
  * @param  GPIO_Pin Specifies the pins to be toggled.
  * @retval None
  */
void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
{
 8001e96:	b480      	push	{r7}
 8001e98:	b085      	sub	sp, #20
 8001e9a:	af00      	add	r7, sp, #0
 8001e9c:	6078      	str	r0, [r7, #4]
 8001e9e:	460b      	mov	r3, r1
 8001ea0:	807b      	strh	r3, [r7, #2]

  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));

  /* get current Ouput Data Register value */
  odr = GPIOx->ODR;
 8001ea2:	687b      	ldr	r3, [r7, #4]
 8001ea4:	695b      	ldr	r3, [r3, #20]
 8001ea6:	60fb      	str	r3, [r7, #12]

  /* Set selected pins that were at low level, and reset ones that were high */
  GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 8001ea8:	887a      	ldrh	r2, [r7, #2]
 8001eaa:	68fb      	ldr	r3, [r7, #12]
 8001eac:	4013      	ands	r3, r2
 8001eae:	041a      	lsls	r2, r3, #16
 8001eb0:	68fb      	ldr	r3, [r7, #12]
 8001eb2:	43d9      	mvns	r1, r3
 8001eb4:	887b      	ldrh	r3, [r7, #2]
 8001eb6:	400b      	ands	r3, r1
 8001eb8:	431a      	orrs	r2, r3
 8001eba:	687b      	ldr	r3, [r7, #4]
 8001ebc:	619a      	str	r2, [r3, #24]
}
 8001ebe:	bf00      	nop
 8001ec0:	3714      	adds	r7, #20
 8001ec2:	46bd      	mov	sp, r7
 8001ec4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001ec8:	4770      	bx	lr

08001eca <HAL_UART_Init>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 8001eca:	b580      	push	{r7, lr}
 8001ecc:	b082      	sub	sp, #8
 8001ece:	af00      	add	r7, sp, #0
 8001ed0:	6078      	str	r0, [r7, #4]
  /* Check the UART handle allocation */
  if (huart == NULL)
 8001ed2:	687b      	ldr	r3, [r7, #4]
 8001ed4:	2b00      	cmp	r3, #0
 8001ed6:	d101      	bne.n	8001edc <HAL_UART_Init+0x12>
  {
    return HAL_ERROR;
 8001ed8:	2301      	movs	r3, #1
 8001eda:	e03f      	b.n	8001f5c <HAL_UART_Init+0x92>
    assert_param(IS_UART_INSTANCE(huart->Instance));
  }
  assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
  assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));

  if (huart->gState == HAL_UART_STATE_RESET)
 8001edc:	687b      	ldr	r3, [r7, #4]
 8001ede:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001ee2:	b2db      	uxtb	r3, r3
 8001ee4:	2b00      	cmp	r3, #0
 8001ee6:	d106      	bne.n	8001ef6 <HAL_UART_Init+0x2c>
  {
    /* Allocate lock resource and initialize it */
    huart->Lock = HAL_UNLOCKED;
 8001ee8:	687b      	ldr	r3, [r7, #4]
 8001eea:	2200      	movs	r2, #0
 8001eec:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Init the low level hardware */
    huart->MspInitCallback(huart);
#else
    /* Init the low level hardware : GPIO, CLOCK */
    HAL_UART_MspInit(huart);
 8001ef0:	6878      	ldr	r0, [r7, #4]
 8001ef2:	f7fe fcd3 	bl	800089c <HAL_UART_MspInit>
#endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
  }

  huart->gState = HAL_UART_STATE_BUSY;
 8001ef6:	687b      	ldr	r3, [r7, #4]
 8001ef8:	2224      	movs	r2, #36	; 0x24
 8001efa:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

  /* Disable the peripheral */
  __HAL_UART_DISABLE(huart);
 8001efe:	687b      	ldr	r3, [r7, #4]
 8001f00:	681b      	ldr	r3, [r3, #0]
 8001f02:	68da      	ldr	r2, [r3, #12]
 8001f04:	687b      	ldr	r3, [r7, #4]
 8001f06:	681b      	ldr	r3, [r3, #0]
 8001f08:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8001f0c:	60da      	str	r2, [r3, #12]

  /* Set the UART Communication parameters */
  UART_SetConfig(huart);
 8001f0e:	6878      	ldr	r0, [r7, #4]
 8001f10:	f000 f904 	bl	800211c <UART_SetConfig>

  /* In asynchronous mode, the following bits must be kept cleared:
     - LINEN and CLKEN bits in the USART_CR2 register,
     - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 8001f14:	687b      	ldr	r3, [r7, #4]
 8001f16:	681b      	ldr	r3, [r3, #0]
 8001f18:	691a      	ldr	r2, [r3, #16]
 8001f1a:	687b      	ldr	r3, [r7, #4]
 8001f1c:	681b      	ldr	r3, [r3, #0]
 8001f1e:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 8001f22:	611a      	str	r2, [r3, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 8001f24:	687b      	ldr	r3, [r7, #4]
 8001f26:	681b      	ldr	r3, [r3, #0]
 8001f28:	695a      	ldr	r2, [r3, #20]
 8001f2a:	687b      	ldr	r3, [r7, #4]
 8001f2c:	681b      	ldr	r3, [r3, #0]
 8001f2e:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 8001f32:	615a      	str	r2, [r3, #20]

  /* Enable the peripheral */
  __HAL_UART_ENABLE(huart);
 8001f34:	687b      	ldr	r3, [r7, #4]
 8001f36:	681b      	ldr	r3, [r3, #0]
 8001f38:	68da      	ldr	r2, [r3, #12]
 8001f3a:	687b      	ldr	r3, [r7, #4]
 8001f3c:	681b      	ldr	r3, [r3, #0]
 8001f3e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001f42:	60da      	str	r2, [r3, #12]

  /* Initialize the UART state */
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001f44:	687b      	ldr	r3, [r7, #4]
 8001f46:	2200      	movs	r2, #0
 8001f48:	641a      	str	r2, [r3, #64]	; 0x40
  huart->gState = HAL_UART_STATE_READY;
 8001f4a:	687b      	ldr	r3, [r7, #4]
 8001f4c:	2220      	movs	r2, #32
 8001f4e:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
  huart->RxState = HAL_UART_STATE_READY;
 8001f52:	687b      	ldr	r3, [r7, #4]
 8001f54:	2220      	movs	r2, #32
 8001f56:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

  return HAL_OK;
 8001f5a:	2300      	movs	r3, #0
}
 8001f5c:	4618      	mov	r0, r3
 8001f5e:	3708      	adds	r7, #8
 8001f60:	46bd      	mov	sp, r7
 8001f62:	bd80      	pop	{r7, pc}

08001f64 <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8001f64:	b580      	push	{r7, lr}
 8001f66:	b08a      	sub	sp, #40	; 0x28
 8001f68:	af02      	add	r7, sp, #8
 8001f6a:	60f8      	str	r0, [r7, #12]
 8001f6c:	60b9      	str	r1, [r7, #8]
 8001f6e:	603b      	str	r3, [r7, #0]
 8001f70:	4613      	mov	r3, r2
 8001f72:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 8001f74:	2300      	movs	r3, #0
 8001f76:	617b      	str	r3, [r7, #20]

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 8001f78:	68fb      	ldr	r3, [r7, #12]
 8001f7a:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001f7e:	b2db      	uxtb	r3, r3
 8001f80:	2b20      	cmp	r3, #32
 8001f82:	d17c      	bne.n	800207e <HAL_UART_Transmit+0x11a>
  {
    if ((pData == NULL) || (Size == 0U))
 8001f84:	68bb      	ldr	r3, [r7, #8]
 8001f86:	2b00      	cmp	r3, #0
 8001f88:	d002      	beq.n	8001f90 <HAL_UART_Transmit+0x2c>
 8001f8a:	88fb      	ldrh	r3, [r7, #6]
 8001f8c:	2b00      	cmp	r3, #0
 8001f8e:	d101      	bne.n	8001f94 <HAL_UART_Transmit+0x30>
    {
      return  HAL_ERROR;
 8001f90:	2301      	movs	r3, #1
 8001f92:	e075      	b.n	8002080 <HAL_UART_Transmit+0x11c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 8001f94:	68fb      	ldr	r3, [r7, #12]
 8001f96:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 8001f9a:	2b01      	cmp	r3, #1
 8001f9c:	d101      	bne.n	8001fa2 <HAL_UART_Transmit+0x3e>
 8001f9e:	2302      	movs	r3, #2
 8001fa0:	e06e      	b.n	8002080 <HAL_UART_Transmit+0x11c>
 8001fa2:	68fb      	ldr	r3, [r7, #12]
 8001fa4:	2201      	movs	r2, #1
 8001fa6:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001faa:	68fb      	ldr	r3, [r7, #12]
 8001fac:	2200      	movs	r2, #0
 8001fae:	641a      	str	r2, [r3, #64]	; 0x40
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8001fb0:	68fb      	ldr	r3, [r7, #12]
 8001fb2:	2221      	movs	r2, #33	; 0x21
 8001fb4:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8001fb8:	f7fe febe 	bl	8000d38 <HAL_GetTick>
 8001fbc:	6178      	str	r0, [r7, #20]

    huart->TxXferSize = Size;
 8001fbe:	68fb      	ldr	r3, [r7, #12]
 8001fc0:	88fa      	ldrh	r2, [r7, #6]
 8001fc2:	849a      	strh	r2, [r3, #36]	; 0x24
    huart->TxXferCount = Size;
 8001fc4:	68fb      	ldr	r3, [r7, #12]
 8001fc6:	88fa      	ldrh	r2, [r7, #6]
 8001fc8:	84da      	strh	r2, [r3, #38]	; 0x26

    /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8001fca:	68fb      	ldr	r3, [r7, #12]
 8001fcc:	689b      	ldr	r3, [r3, #8]
 8001fce:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001fd2:	d108      	bne.n	8001fe6 <HAL_UART_Transmit+0x82>
 8001fd4:	68fb      	ldr	r3, [r7, #12]
 8001fd6:	691b      	ldr	r3, [r3, #16]
 8001fd8:	2b00      	cmp	r3, #0
 8001fda:	d104      	bne.n	8001fe6 <HAL_UART_Transmit+0x82>
    {
      pdata8bits  = NULL;
 8001fdc:	2300      	movs	r3, #0
 8001fde:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8001fe0:	68bb      	ldr	r3, [r7, #8]
 8001fe2:	61bb      	str	r3, [r7, #24]
 8001fe4:	e003      	b.n	8001fee <HAL_UART_Transmit+0x8a>
    }
    else
    {
      pdata8bits  = pData;
 8001fe6:	68bb      	ldr	r3, [r7, #8]
 8001fe8:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8001fea:	2300      	movs	r3, #0
 8001fec:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 8001fee:	68fb      	ldr	r3, [r7, #12]
 8001ff0:	2200      	movs	r2, #0
 8001ff2:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    while (huart->TxXferCount > 0U)
 8001ff6:	e02a      	b.n	800204e <HAL_UART_Transmit+0xea>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 8001ff8:	683b      	ldr	r3, [r7, #0]
 8001ffa:	9300      	str	r3, [sp, #0]
 8001ffc:	697b      	ldr	r3, [r7, #20]
 8001ffe:	2200      	movs	r2, #0
 8002000:	2180      	movs	r1, #128	; 0x80
 8002002:	68f8      	ldr	r0, [r7, #12]
 8002004:	f000 f840 	bl	8002088 <UART_WaitOnFlagUntilTimeout>
 8002008:	4603      	mov	r3, r0
 800200a:	2b00      	cmp	r3, #0
 800200c:	d001      	beq.n	8002012 <HAL_UART_Transmit+0xae>
      {
        return HAL_TIMEOUT;
 800200e:	2303      	movs	r3, #3
 8002010:	e036      	b.n	8002080 <HAL_UART_Transmit+0x11c>
      }
      if (pdata8bits == NULL)
 8002012:	69fb      	ldr	r3, [r7, #28]
 8002014:	2b00      	cmp	r3, #0
 8002016:	d10b      	bne.n	8002030 <HAL_UART_Transmit+0xcc>
      {
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 8002018:	69bb      	ldr	r3, [r7, #24]
 800201a:	881b      	ldrh	r3, [r3, #0]
 800201c:	461a      	mov	r2, r3
 800201e:	68fb      	ldr	r3, [r7, #12]
 8002020:	681b      	ldr	r3, [r3, #0]
 8002022:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8002026:	605a      	str	r2, [r3, #4]
        pdata16bits++;
 8002028:	69bb      	ldr	r3, [r7, #24]
 800202a:	3302      	adds	r3, #2
 800202c:	61bb      	str	r3, [r7, #24]
 800202e:	e007      	b.n	8002040 <HAL_UART_Transmit+0xdc>
      }
      else
      {
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 8002030:	69fb      	ldr	r3, [r7, #28]
 8002032:	781a      	ldrb	r2, [r3, #0]
 8002034:	68fb      	ldr	r3, [r7, #12]
 8002036:	681b      	ldr	r3, [r3, #0]
 8002038:	605a      	str	r2, [r3, #4]
        pdata8bits++;
 800203a:	69fb      	ldr	r3, [r7, #28]
 800203c:	3301      	adds	r3, #1
 800203e:	61fb      	str	r3, [r7, #28]
      }
      huart->TxXferCount--;
 8002040:	68fb      	ldr	r3, [r7, #12]
 8002042:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8002044:	b29b      	uxth	r3, r3
 8002046:	3b01      	subs	r3, #1
 8002048:	b29a      	uxth	r2, r3
 800204a:	68fb      	ldr	r3, [r7, #12]
 800204c:	84da      	strh	r2, [r3, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 800204e:	68fb      	ldr	r3, [r7, #12]
 8002050:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 8002052:	b29b      	uxth	r3, r3
 8002054:	2b00      	cmp	r3, #0
 8002056:	d1cf      	bne.n	8001ff8 <HAL_UART_Transmit+0x94>
    }

    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 8002058:	683b      	ldr	r3, [r7, #0]
 800205a:	9300      	str	r3, [sp, #0]
 800205c:	697b      	ldr	r3, [r7, #20]
 800205e:	2200      	movs	r2, #0
 8002060:	2140      	movs	r1, #64	; 0x40
 8002062:	68f8      	ldr	r0, [r7, #12]
 8002064:	f000 f810 	bl	8002088 <UART_WaitOnFlagUntilTimeout>
 8002068:	4603      	mov	r3, r0
 800206a:	2b00      	cmp	r3, #0
 800206c:	d001      	beq.n	8002072 <HAL_UART_Transmit+0x10e>
    {
      return HAL_TIMEOUT;
 800206e:	2303      	movs	r3, #3
 8002070:	e006      	b.n	8002080 <HAL_UART_Transmit+0x11c>
    }

    /* At end of Tx process, restore huart->gState to Ready */
    huart->gState = HAL_UART_STATE_READY;
 8002072:	68fb      	ldr	r3, [r7, #12]
 8002074:	2220      	movs	r2, #32
 8002076:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    return HAL_OK;
 800207a:	2300      	movs	r3, #0
 800207c:	e000      	b.n	8002080 <HAL_UART_Transmit+0x11c>
  }
  else
  {
    return HAL_BUSY;
 800207e:	2302      	movs	r3, #2
  }
}
 8002080:	4618      	mov	r0, r3
 8002082:	3720      	adds	r7, #32
 8002084:	46bd      	mov	sp, r7
 8002086:	bd80      	pop	{r7, pc}

08002088 <UART_WaitOnFlagUntilTimeout>:
  * @param  Tickstart Tick start value
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout)
{
 8002088:	b580      	push	{r7, lr}
 800208a:	b084      	sub	sp, #16
 800208c:	af00      	add	r7, sp, #0
 800208e:	60f8      	str	r0, [r7, #12]
 8002090:	60b9      	str	r1, [r7, #8]
 8002092:	603b      	str	r3, [r7, #0]
 8002094:	4613      	mov	r3, r2
 8002096:	71fb      	strb	r3, [r7, #7]
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8002098:	e02c      	b.n	80020f4 <UART_WaitOnFlagUntilTimeout+0x6c>
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
 800209a:	69bb      	ldr	r3, [r7, #24]
 800209c:	f1b3 3fff 	cmp.w	r3, #4294967295
 80020a0:	d028      	beq.n	80020f4 <UART_WaitOnFlagUntilTimeout+0x6c>
    {
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 80020a2:	69bb      	ldr	r3, [r7, #24]
 80020a4:	2b00      	cmp	r3, #0
 80020a6:	d007      	beq.n	80020b8 <UART_WaitOnFlagUntilTimeout+0x30>
 80020a8:	f7fe fe46 	bl	8000d38 <HAL_GetTick>
 80020ac:	4602      	mov	r2, r0
 80020ae:	683b      	ldr	r3, [r7, #0]
 80020b0:	1ad3      	subs	r3, r2, r3
 80020b2:	69ba      	ldr	r2, [r7, #24]
 80020b4:	429a      	cmp	r2, r3
 80020b6:	d21d      	bcs.n	80020f4 <UART_WaitOnFlagUntilTimeout+0x6c>
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 80020b8:	68fb      	ldr	r3, [r7, #12]
 80020ba:	681b      	ldr	r3, [r3, #0]
 80020bc:	68da      	ldr	r2, [r3, #12]
 80020be:	68fb      	ldr	r3, [r7, #12]
 80020c0:	681b      	ldr	r3, [r3, #0]
 80020c2:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 80020c6:	60da      	str	r2, [r3, #12]
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 80020c8:	68fb      	ldr	r3, [r7, #12]
 80020ca:	681b      	ldr	r3, [r3, #0]
 80020cc:	695a      	ldr	r2, [r3, #20]
 80020ce:	68fb      	ldr	r3, [r7, #12]
 80020d0:	681b      	ldr	r3, [r3, #0]
 80020d2:	f022 0201 	bic.w	r2, r2, #1
 80020d6:	615a      	str	r2, [r3, #20]

        huart->gState  = HAL_UART_STATE_READY;
 80020d8:	68fb      	ldr	r3, [r7, #12]
 80020da:	2220      	movs	r2, #32
 80020dc:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
        huart->RxState = HAL_UART_STATE_READY;
 80020e0:	68fb      	ldr	r3, [r7, #12]
 80020e2:	2220      	movs	r2, #32
 80020e4:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

        /* Process Unlocked */
        __HAL_UNLOCK(huart);
 80020e8:	68fb      	ldr	r3, [r7, #12]
 80020ea:	2200      	movs	r2, #0
 80020ec:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

        return HAL_TIMEOUT;
 80020f0:	2303      	movs	r3, #3
 80020f2:	e00f      	b.n	8002114 <UART_WaitOnFlagUntilTimeout+0x8c>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 80020f4:	68fb      	ldr	r3, [r7, #12]
 80020f6:	681b      	ldr	r3, [r3, #0]
 80020f8:	681a      	ldr	r2, [r3, #0]
 80020fa:	68bb      	ldr	r3, [r7, #8]
 80020fc:	4013      	ands	r3, r2
 80020fe:	68ba      	ldr	r2, [r7, #8]
 8002100:	429a      	cmp	r2, r3
 8002102:	bf0c      	ite	eq
 8002104:	2301      	moveq	r3, #1
 8002106:	2300      	movne	r3, #0
 8002108:	b2db      	uxtb	r3, r3
 800210a:	461a      	mov	r2, r3
 800210c:	79fb      	ldrb	r3, [r7, #7]
 800210e:	429a      	cmp	r2, r3
 8002110:	d0c3      	beq.n	800209a <UART_WaitOnFlagUntilTimeout+0x12>
      }
    }
  }
  return HAL_OK;
 8002112:	2300      	movs	r3, #0
}
 8002114:	4618      	mov	r0, r3
 8002116:	3710      	adds	r7, #16
 8002118:	46bd      	mov	sp, r7
 800211a:	bd80      	pop	{r7, pc}

0800211c <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 800211c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002120:	b085      	sub	sp, #20
 8002122:	af00      	add	r7, sp, #0
 8002124:	6078      	str	r0, [r7, #4]
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 8002126:	687b      	ldr	r3, [r7, #4]
 8002128:	681b      	ldr	r3, [r3, #0]
 800212a:	691b      	ldr	r3, [r3, #16]
 800212c:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 8002130:	687b      	ldr	r3, [r7, #4]
 8002132:	68da      	ldr	r2, [r3, #12]
 8002134:	687b      	ldr	r3, [r7, #4]
 8002136:	681b      	ldr	r3, [r3, #0]
 8002138:	430a      	orrs	r2, r1
 800213a:	611a      	str	r2, [r3, #16]
     Set the M bits according to huart->Init.WordLength value
     Set PCE and PS bits according to huart->Init.Parity value
     Set TE and RE bits according to huart->Init.Mode value
     Set OVER8 bit according to huart->Init.OverSampling value */

  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
 800213c:	687b      	ldr	r3, [r7, #4]
 800213e:	689a      	ldr	r2, [r3, #8]
 8002140:	687b      	ldr	r3, [r7, #4]
 8002142:	691b      	ldr	r3, [r3, #16]
 8002144:	431a      	orrs	r2, r3
 8002146:	687b      	ldr	r3, [r7, #4]
 8002148:	695b      	ldr	r3, [r3, #20]
 800214a:	431a      	orrs	r2, r3
 800214c:	687b      	ldr	r3, [r7, #4]
 800214e:	69db      	ldr	r3, [r3, #28]
 8002150:	4313      	orrs	r3, r2
 8002152:	60bb      	str	r3, [r7, #8]
  MODIFY_REG(huart->Instance->CR1,
 8002154:	687b      	ldr	r3, [r7, #4]
 8002156:	681b      	ldr	r3, [r3, #0]
 8002158:	68db      	ldr	r3, [r3, #12]
 800215a:	f423 4316 	bic.w	r3, r3, #38400	; 0x9600
 800215e:	f023 030c 	bic.w	r3, r3, #12
 8002162:	687a      	ldr	r2, [r7, #4]
 8002164:	6812      	ldr	r2, [r2, #0]
 8002166:	68b9      	ldr	r1, [r7, #8]
 8002168:	430b      	orrs	r3, r1
 800216a:	60d3      	str	r3, [r2, #12]
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 800216c:	687b      	ldr	r3, [r7, #4]
 800216e:	681b      	ldr	r3, [r3, #0]
 8002170:	695b      	ldr	r3, [r3, #20]
 8002172:	f423 7140 	bic.w	r1, r3, #768	; 0x300
 8002176:	687b      	ldr	r3, [r7, #4]
 8002178:	699a      	ldr	r2, [r3, #24]
 800217a:	687b      	ldr	r3, [r7, #4]
 800217c:	681b      	ldr	r3, [r3, #0]
 800217e:	430a      	orrs	r2, r1
 8002180:	615a      	str	r2, [r3, #20]
    if ((huart->Instance == USART1) || (huart->Instance == USART6) || (huart->Instance == UART9) || (huart->Instance == UART10))
    {
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#elif defined(USART6)
    if ((huart->Instance == USART1) || (huart->Instance == USART6))
 8002182:	687b      	ldr	r3, [r7, #4]
 8002184:	681b      	ldr	r3, [r3, #0]
 8002186:	4ad0      	ldr	r2, [pc, #832]	; (80024c8 <UART_SetConfig+0x3ac>)
 8002188:	4293      	cmp	r3, r2
 800218a:	d004      	beq.n	8002196 <UART_SetConfig+0x7a>
 800218c:	687b      	ldr	r3, [r7, #4]
 800218e:	681b      	ldr	r3, [r3, #0]
 8002190:	4ace      	ldr	r2, [pc, #824]	; (80024cc <UART_SetConfig+0x3b0>)
 8002192:	4293      	cmp	r3, r2
 8002194:	d103      	bne.n	800219e <UART_SetConfig+0x82>
    {
      pclk = HAL_RCC_GetPCLK2Freq();
 8002196:	f7ff fb71 	bl	800187c <HAL_RCC_GetPCLK2Freq>
 800219a:	60f8      	str	r0, [r7, #12]
 800219c:	e002      	b.n	80021a4 <UART_SetConfig+0x88>
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#endif /* USART6 */
    else
    {
      pclk = HAL_RCC_GetPCLK1Freq();
 800219e:	f7ff fb59 	bl	8001854 <HAL_RCC_GetPCLK1Freq>
 80021a2:	60f8      	str	r0, [r7, #12]
    }
  /*-------------------------- USART BRR Configuration ---------------------*/
  if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 80021a4:	687b      	ldr	r3, [r7, #4]
 80021a6:	69db      	ldr	r3, [r3, #28]
 80021a8:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 80021ac:	f040 80ba 	bne.w	8002324 <UART_SetConfig+0x208>
  {
    huart->Instance->BRR = UART_BRR_SAMPLING8(pclk, huart->Init.BaudRate);
 80021b0:	68fb      	ldr	r3, [r7, #12]
 80021b2:	461d      	mov	r5, r3
 80021b4:	f04f 0600 	mov.w	r6, #0
 80021b8:	46a8      	mov	r8, r5
 80021ba:	46b1      	mov	r9, r6
 80021bc:	eb18 0308 	adds.w	r3, r8, r8
 80021c0:	eb49 0409 	adc.w	r4, r9, r9
 80021c4:	4698      	mov	r8, r3
 80021c6:	46a1      	mov	r9, r4
 80021c8:	eb18 0805 	adds.w	r8, r8, r5
 80021cc:	eb49 0906 	adc.w	r9, r9, r6
 80021d0:	f04f 0100 	mov.w	r1, #0
 80021d4:	f04f 0200 	mov.w	r2, #0
 80021d8:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 80021dc:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 80021e0:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 80021e4:	4688      	mov	r8, r1
 80021e6:	4691      	mov	r9, r2
 80021e8:	eb18 0005 	adds.w	r0, r8, r5
 80021ec:	eb49 0106 	adc.w	r1, r9, r6
 80021f0:	687b      	ldr	r3, [r7, #4]
 80021f2:	685b      	ldr	r3, [r3, #4]
 80021f4:	461d      	mov	r5, r3
 80021f6:	f04f 0600 	mov.w	r6, #0
 80021fa:	196b      	adds	r3, r5, r5
 80021fc:	eb46 0406 	adc.w	r4, r6, r6
 8002200:	461a      	mov	r2, r3
 8002202:	4623      	mov	r3, r4
 8002204:	f000 f9c4 	bl	8002590 <__aeabi_uldivmod>
 8002208:	4603      	mov	r3, r0
 800220a:	460c      	mov	r4, r1
 800220c:	461a      	mov	r2, r3
 800220e:	4bb0      	ldr	r3, [pc, #704]	; (80024d0 <UART_SetConfig+0x3b4>)
 8002210:	fba3 2302 	umull	r2, r3, r3, r2
 8002214:	095b      	lsrs	r3, r3, #5
 8002216:	ea4f 1803 	mov.w	r8, r3, lsl #4
 800221a:	68fb      	ldr	r3, [r7, #12]
 800221c:	461d      	mov	r5, r3
 800221e:	f04f 0600 	mov.w	r6, #0
 8002222:	46a9      	mov	r9, r5
 8002224:	46b2      	mov	sl, r6
 8002226:	eb19 0309 	adds.w	r3, r9, r9
 800222a:	eb4a 040a 	adc.w	r4, sl, sl
 800222e:	4699      	mov	r9, r3
 8002230:	46a2      	mov	sl, r4
 8002232:	eb19 0905 	adds.w	r9, r9, r5
 8002236:	eb4a 0a06 	adc.w	sl, sl, r6
 800223a:	f04f 0100 	mov.w	r1, #0
 800223e:	f04f 0200 	mov.w	r2, #0
 8002242:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8002246:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 800224a:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 800224e:	4689      	mov	r9, r1
 8002250:	4692      	mov	sl, r2
 8002252:	eb19 0005 	adds.w	r0, r9, r5
 8002256:	eb4a 0106 	adc.w	r1, sl, r6
 800225a:	687b      	ldr	r3, [r7, #4]
 800225c:	685b      	ldr	r3, [r3, #4]
 800225e:	461d      	mov	r5, r3
 8002260:	f04f 0600 	mov.w	r6, #0
 8002264:	196b      	adds	r3, r5, r5
 8002266:	eb46 0406 	adc.w	r4, r6, r6
 800226a:	461a      	mov	r2, r3
 800226c:	4623      	mov	r3, r4
 800226e:	f000 f98f 	bl	8002590 <__aeabi_uldivmod>
 8002272:	4603      	mov	r3, r0
 8002274:	460c      	mov	r4, r1
 8002276:	461a      	mov	r2, r3
 8002278:	4b95      	ldr	r3, [pc, #596]	; (80024d0 <UART_SetConfig+0x3b4>)
 800227a:	fba3 1302 	umull	r1, r3, r3, r2
 800227e:	095b      	lsrs	r3, r3, #5
 8002280:	2164      	movs	r1, #100	; 0x64
 8002282:	fb01 f303 	mul.w	r3, r1, r3
 8002286:	1ad3      	subs	r3, r2, r3
 8002288:	00db      	lsls	r3, r3, #3
 800228a:	3332      	adds	r3, #50	; 0x32
 800228c:	4a90      	ldr	r2, [pc, #576]	; (80024d0 <UART_SetConfig+0x3b4>)
 800228e:	fba2 2303 	umull	r2, r3, r2, r3
 8002292:	095b      	lsrs	r3, r3, #5
 8002294:	005b      	lsls	r3, r3, #1
 8002296:	f403 73f8 	and.w	r3, r3, #496	; 0x1f0
 800229a:	4498      	add	r8, r3
 800229c:	68fb      	ldr	r3, [r7, #12]
 800229e:	461d      	mov	r5, r3
 80022a0:	f04f 0600 	mov.w	r6, #0
 80022a4:	46a9      	mov	r9, r5
 80022a6:	46b2      	mov	sl, r6
 80022a8:	eb19 0309 	adds.w	r3, r9, r9
 80022ac:	eb4a 040a 	adc.w	r4, sl, sl
 80022b0:	4699      	mov	r9, r3
 80022b2:	46a2      	mov	sl, r4
 80022b4:	eb19 0905 	adds.w	r9, r9, r5
 80022b8:	eb4a 0a06 	adc.w	sl, sl, r6
 80022bc:	f04f 0100 	mov.w	r1, #0
 80022c0:	f04f 0200 	mov.w	r2, #0
 80022c4:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80022c8:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80022cc:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80022d0:	4689      	mov	r9, r1
 80022d2:	4692      	mov	sl, r2
 80022d4:	eb19 0005 	adds.w	r0, r9, r5
 80022d8:	eb4a 0106 	adc.w	r1, sl, r6
 80022dc:	687b      	ldr	r3, [r7, #4]
 80022de:	685b      	ldr	r3, [r3, #4]
 80022e0:	461d      	mov	r5, r3
 80022e2:	f04f 0600 	mov.w	r6, #0
 80022e6:	196b      	adds	r3, r5, r5
 80022e8:	eb46 0406 	adc.w	r4, r6, r6
 80022ec:	461a      	mov	r2, r3
 80022ee:	4623      	mov	r3, r4
 80022f0:	f000 f94e 	bl	8002590 <__aeabi_uldivmod>
 80022f4:	4603      	mov	r3, r0
 80022f6:	460c      	mov	r4, r1
 80022f8:	461a      	mov	r2, r3
 80022fa:	4b75      	ldr	r3, [pc, #468]	; (80024d0 <UART_SetConfig+0x3b4>)
 80022fc:	fba3 1302 	umull	r1, r3, r3, r2
 8002300:	095b      	lsrs	r3, r3, #5
 8002302:	2164      	movs	r1, #100	; 0x64
 8002304:	fb01 f303 	mul.w	r3, r1, r3
 8002308:	1ad3      	subs	r3, r2, r3
 800230a:	00db      	lsls	r3, r3, #3
 800230c:	3332      	adds	r3, #50	; 0x32
 800230e:	4a70      	ldr	r2, [pc, #448]	; (80024d0 <UART_SetConfig+0x3b4>)
 8002310:	fba2 2303 	umull	r2, r3, r2, r3
 8002314:	095b      	lsrs	r3, r3, #5
 8002316:	f003 0207 	and.w	r2, r3, #7
 800231a:	687b      	ldr	r3, [r7, #4]
 800231c:	681b      	ldr	r3, [r3, #0]
 800231e:	4442      	add	r2, r8
 8002320:	609a      	str	r2, [r3, #8]
  }
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
}
 8002322:	e0cc      	b.n	80024be <UART_SetConfig+0x3a2>
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 8002324:	68fb      	ldr	r3, [r7, #12]
 8002326:	469a      	mov	sl, r3
 8002328:	f04f 0b00 	mov.w	fp, #0
 800232c:	46d0      	mov	r8, sl
 800232e:	46d9      	mov	r9, fp
 8002330:	eb18 0308 	adds.w	r3, r8, r8
 8002334:	eb49 0409 	adc.w	r4, r9, r9
 8002338:	4698      	mov	r8, r3
 800233a:	46a1      	mov	r9, r4
 800233c:	eb18 080a 	adds.w	r8, r8, sl
 8002340:	eb49 090b 	adc.w	r9, r9, fp
 8002344:	f04f 0100 	mov.w	r1, #0
 8002348:	f04f 0200 	mov.w	r2, #0
 800234c:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 8002350:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 8002354:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 8002358:	4688      	mov	r8, r1
 800235a:	4691      	mov	r9, r2
 800235c:	eb1a 0508 	adds.w	r5, sl, r8
 8002360:	eb4b 0609 	adc.w	r6, fp, r9
 8002364:	687b      	ldr	r3, [r7, #4]
 8002366:	685b      	ldr	r3, [r3, #4]
 8002368:	4619      	mov	r1, r3
 800236a:	f04f 0200 	mov.w	r2, #0
 800236e:	f04f 0300 	mov.w	r3, #0
 8002372:	f04f 0400 	mov.w	r4, #0
 8002376:	0094      	lsls	r4, r2, #2
 8002378:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 800237c:	008b      	lsls	r3, r1, #2
 800237e:	461a      	mov	r2, r3
 8002380:	4623      	mov	r3, r4
 8002382:	4628      	mov	r0, r5
 8002384:	4631      	mov	r1, r6
 8002386:	f000 f903 	bl	8002590 <__aeabi_uldivmod>
 800238a:	4603      	mov	r3, r0
 800238c:	460c      	mov	r4, r1
 800238e:	461a      	mov	r2, r3
 8002390:	4b4f      	ldr	r3, [pc, #316]	; (80024d0 <UART_SetConfig+0x3b4>)
 8002392:	fba3 2302 	umull	r2, r3, r3, r2
 8002396:	095b      	lsrs	r3, r3, #5
 8002398:	ea4f 1803 	mov.w	r8, r3, lsl #4
 800239c:	68fb      	ldr	r3, [r7, #12]
 800239e:	469b      	mov	fp, r3
 80023a0:	f04f 0c00 	mov.w	ip, #0
 80023a4:	46d9      	mov	r9, fp
 80023a6:	46e2      	mov	sl, ip
 80023a8:	eb19 0309 	adds.w	r3, r9, r9
 80023ac:	eb4a 040a 	adc.w	r4, sl, sl
 80023b0:	4699      	mov	r9, r3
 80023b2:	46a2      	mov	sl, r4
 80023b4:	eb19 090b 	adds.w	r9, r9, fp
 80023b8:	eb4a 0a0c 	adc.w	sl, sl, ip
 80023bc:	f04f 0100 	mov.w	r1, #0
 80023c0:	f04f 0200 	mov.w	r2, #0
 80023c4:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80023c8:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80023cc:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80023d0:	4689      	mov	r9, r1
 80023d2:	4692      	mov	sl, r2
 80023d4:	eb1b 0509 	adds.w	r5, fp, r9
 80023d8:	eb4c 060a 	adc.w	r6, ip, sl
 80023dc:	687b      	ldr	r3, [r7, #4]
 80023de:	685b      	ldr	r3, [r3, #4]
 80023e0:	4619      	mov	r1, r3
 80023e2:	f04f 0200 	mov.w	r2, #0
 80023e6:	f04f 0300 	mov.w	r3, #0
 80023ea:	f04f 0400 	mov.w	r4, #0
 80023ee:	0094      	lsls	r4, r2, #2
 80023f0:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 80023f4:	008b      	lsls	r3, r1, #2
 80023f6:	461a      	mov	r2, r3
 80023f8:	4623      	mov	r3, r4
 80023fa:	4628      	mov	r0, r5
 80023fc:	4631      	mov	r1, r6
 80023fe:	f000 f8c7 	bl	8002590 <__aeabi_uldivmod>
 8002402:	4603      	mov	r3, r0
 8002404:	460c      	mov	r4, r1
 8002406:	461a      	mov	r2, r3
 8002408:	4b31      	ldr	r3, [pc, #196]	; (80024d0 <UART_SetConfig+0x3b4>)
 800240a:	fba3 1302 	umull	r1, r3, r3, r2
 800240e:	095b      	lsrs	r3, r3, #5
 8002410:	2164      	movs	r1, #100	; 0x64
 8002412:	fb01 f303 	mul.w	r3, r1, r3
 8002416:	1ad3      	subs	r3, r2, r3
 8002418:	011b      	lsls	r3, r3, #4
 800241a:	3332      	adds	r3, #50	; 0x32
 800241c:	4a2c      	ldr	r2, [pc, #176]	; (80024d0 <UART_SetConfig+0x3b4>)
 800241e:	fba2 2303 	umull	r2, r3, r2, r3
 8002422:	095b      	lsrs	r3, r3, #5
 8002424:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8002428:	4498      	add	r8, r3
 800242a:	68fb      	ldr	r3, [r7, #12]
 800242c:	469b      	mov	fp, r3
 800242e:	f04f 0c00 	mov.w	ip, #0
 8002432:	46d9      	mov	r9, fp
 8002434:	46e2      	mov	sl, ip
 8002436:	eb19 0309 	adds.w	r3, r9, r9
 800243a:	eb4a 040a 	adc.w	r4, sl, sl
 800243e:	4699      	mov	r9, r3
 8002440:	46a2      	mov	sl, r4
 8002442:	eb19 090b 	adds.w	r9, r9, fp
 8002446:	eb4a 0a0c 	adc.w	sl, sl, ip
 800244a:	f04f 0100 	mov.w	r1, #0
 800244e:	f04f 0200 	mov.w	r2, #0
 8002452:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8002456:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 800245a:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 800245e:	4689      	mov	r9, r1
 8002460:	4692      	mov	sl, r2
 8002462:	eb1b 0509 	adds.w	r5, fp, r9
 8002466:	eb4c 060a 	adc.w	r6, ip, sl
 800246a:	687b      	ldr	r3, [r7, #4]
 800246c:	685b      	ldr	r3, [r3, #4]
 800246e:	4619      	mov	r1, r3
 8002470:	f04f 0200 	mov.w	r2, #0
 8002474:	f04f 0300 	mov.w	r3, #0
 8002478:	f04f 0400 	mov.w	r4, #0
 800247c:	0094      	lsls	r4, r2, #2
 800247e:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 8002482:	008b      	lsls	r3, r1, #2
 8002484:	461a      	mov	r2, r3
 8002486:	4623      	mov	r3, r4
 8002488:	4628      	mov	r0, r5
 800248a:	4631      	mov	r1, r6
 800248c:	f000 f880 	bl	8002590 <__aeabi_uldivmod>
 8002490:	4603      	mov	r3, r0
 8002492:	460c      	mov	r4, r1
 8002494:	461a      	mov	r2, r3
 8002496:	4b0e      	ldr	r3, [pc, #56]	; (80024d0 <UART_SetConfig+0x3b4>)
 8002498:	fba3 1302 	umull	r1, r3, r3, r2
 800249c:	095b      	lsrs	r3, r3, #5
 800249e:	2164      	movs	r1, #100	; 0x64
 80024a0:	fb01 f303 	mul.w	r3, r1, r3
 80024a4:	1ad3      	subs	r3, r2, r3
 80024a6:	011b      	lsls	r3, r3, #4
 80024a8:	3332      	adds	r3, #50	; 0x32
 80024aa:	4a09      	ldr	r2, [pc, #36]	; (80024d0 <UART_SetConfig+0x3b4>)
 80024ac:	fba2 2303 	umull	r2, r3, r2, r3
 80024b0:	095b      	lsrs	r3, r3, #5
 80024b2:	f003 020f 	and.w	r2, r3, #15
 80024b6:	687b      	ldr	r3, [r7, #4]
 80024b8:	681b      	ldr	r3, [r3, #0]
 80024ba:	4442      	add	r2, r8
 80024bc:	609a      	str	r2, [r3, #8]
}
 80024be:	bf00      	nop
 80024c0:	3714      	adds	r7, #20
 80024c2:	46bd      	mov	sp, r7
 80024c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024c8:	40011000 	.word	0x40011000
 80024cc:	40011400 	.word	0x40011400
 80024d0:	51eb851f 	.word	0x51eb851f

080024d4 <BSP_LED_Init>:
  * @param  Led: Specifies the Led to be configured. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_Init(Led_TypeDef Led)
{
 80024d4:	b580      	push	{r7, lr}
 80024d6:	b088      	sub	sp, #32
 80024d8:	af00      	add	r7, sp, #0
 80024da:	4603      	mov	r3, r0
 80024dc:	71fb      	strb	r3, [r7, #7]
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /* Enable the GPIO_LED Clock */
  LEDx_GPIO_CLK_ENABLE(Led);
 80024de:	2300      	movs	r3, #0
 80024e0:	60bb      	str	r3, [r7, #8]
 80024e2:	4b15      	ldr	r3, [pc, #84]	; (8002538 <BSP_LED_Init+0x64>)
 80024e4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80024e6:	4a14      	ldr	r2, [pc, #80]	; (8002538 <BSP_LED_Init+0x64>)
 80024e8:	f043 0301 	orr.w	r3, r3, #1
 80024ec:	6313      	str	r3, [r2, #48]	; 0x30
 80024ee:	4b12      	ldr	r3, [pc, #72]	; (8002538 <BSP_LED_Init+0x64>)
 80024f0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80024f2:	f003 0301 	and.w	r3, r3, #1
 80024f6:	60bb      	str	r3, [r7, #8]
 80024f8:	68bb      	ldr	r3, [r7, #8]
  
  /* Configure the GPIO_LED pin */
  GPIO_InitStruct.Pin = GPIO_PIN[Led];
 80024fa:	2320      	movs	r3, #32
 80024fc:	60fb      	str	r3, [r7, #12]
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 80024fe:	2301      	movs	r3, #1
 8002500:	613b      	str	r3, [r7, #16]
  GPIO_InitStruct.Pull = GPIO_NOPULL;
 8002502:	2300      	movs	r3, #0
 8002504:	617b      	str	r3, [r7, #20]
  GPIO_InitStruct.Speed = GPIO_SPEED_FAST;
 8002506:	2302      	movs	r3, #2
 8002508:	61bb      	str	r3, [r7, #24]
  
  HAL_GPIO_Init(GPIO_PORT[Led], &GPIO_InitStruct);
 800250a:	79fb      	ldrb	r3, [r7, #7]
 800250c:	4a0b      	ldr	r2, [pc, #44]	; (800253c <BSP_LED_Init+0x68>)
 800250e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002512:	f107 020c 	add.w	r2, r7, #12
 8002516:	4611      	mov	r1, r2
 8002518:	4618      	mov	r0, r3
 800251a:	f7ff fb21 	bl	8001b60 <HAL_GPIO_Init>
  
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_RESET); 
 800251e:	79fb      	ldrb	r3, [r7, #7]
 8002520:	4a06      	ldr	r2, [pc, #24]	; (800253c <BSP_LED_Init+0x68>)
 8002522:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002526:	2120      	movs	r1, #32
 8002528:	2200      	movs	r2, #0
 800252a:	4618      	mov	r0, r3
 800252c:	f7ff fc9a 	bl	8001e64 <HAL_GPIO_WritePin>
}
 8002530:	bf00      	nop
 8002532:	3720      	adds	r7, #32
 8002534:	46bd      	mov	sp, r7
 8002536:	bd80      	pop	{r7, pc}
 8002538:	40023800 	.word	0x40023800
 800253c:	2000000c 	.word	0x2000000c

08002540 <BSP_LED_On>:
  * @param  Led: Specifies the Led to be set on. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_On(Led_TypeDef Led)
{
 8002540:	b580      	push	{r7, lr}
 8002542:	b082      	sub	sp, #8
 8002544:	af00      	add	r7, sp, #0
 8002546:	4603      	mov	r3, r0
 8002548:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_SET); 
 800254a:	79fb      	ldrb	r3, [r7, #7]
 800254c:	4a05      	ldr	r2, [pc, #20]	; (8002564 <BSP_LED_On+0x24>)
 800254e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002552:	2120      	movs	r1, #32
 8002554:	2201      	movs	r2, #1
 8002556:	4618      	mov	r0, r3
 8002558:	f7ff fc84 	bl	8001e64 <HAL_GPIO_WritePin>
}
 800255c:	bf00      	nop
 800255e:	3708      	adds	r7, #8
 8002560:	46bd      	mov	sp, r7
 8002562:	bd80      	pop	{r7, pc}
 8002564:	2000000c 	.word	0x2000000c

08002568 <BSP_LED_Toggle>:
  * @param  Led: Specifies the Led to be toggled. 
  *   This parameter can be one of following parameters:
  *     @arg LED2  
  */
void BSP_LED_Toggle(Led_TypeDef Led)
{
 8002568:	b580      	push	{r7, lr}
 800256a:	b082      	sub	sp, #8
 800256c:	af00      	add	r7, sp, #0
 800256e:	4603      	mov	r3, r0
 8002570:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_TogglePin(GPIO_PORT[Led], GPIO_PIN[Led]);
 8002572:	79fb      	ldrb	r3, [r7, #7]
 8002574:	4a05      	ldr	r2, [pc, #20]	; (800258c <BSP_LED_Toggle+0x24>)
 8002576:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800257a:	2220      	movs	r2, #32
 800257c:	4611      	mov	r1, r2
 800257e:	4618      	mov	r0, r3
 8002580:	f7ff fc89 	bl	8001e96 <HAL_GPIO_TogglePin>
}
 8002584:	bf00      	nop
 8002586:	3708      	adds	r7, #8
 8002588:	46bd      	mov	sp, r7
 800258a:	bd80      	pop	{r7, pc}
 800258c:	2000000c 	.word	0x2000000c

08002590 <__aeabi_uldivmod>:
 8002590:	b953      	cbnz	r3, 80025a8 <__aeabi_uldivmod+0x18>
 8002592:	b94a      	cbnz	r2, 80025a8 <__aeabi_uldivmod+0x18>
 8002594:	2900      	cmp	r1, #0
 8002596:	bf08      	it	eq
 8002598:	2800      	cmpeq	r0, #0
 800259a:	bf1c      	itt	ne
 800259c:	f04f 31ff 	movne.w	r1, #4294967295
 80025a0:	f04f 30ff 	movne.w	r0, #4294967295
 80025a4:	f000 b972 	b.w	800288c <__aeabi_idiv0>
 80025a8:	f1ad 0c08 	sub.w	ip, sp, #8
 80025ac:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80025b0:	f000 f806 	bl	80025c0 <__udivmoddi4>
 80025b4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80025b8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80025bc:	b004      	add	sp, #16
 80025be:	4770      	bx	lr

080025c0 <__udivmoddi4>:
 80025c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80025c4:	9e08      	ldr	r6, [sp, #32]
 80025c6:	4604      	mov	r4, r0
 80025c8:	4688      	mov	r8, r1
 80025ca:	2b00      	cmp	r3, #0
 80025cc:	d14b      	bne.n	8002666 <__udivmoddi4+0xa6>
 80025ce:	428a      	cmp	r2, r1
 80025d0:	4615      	mov	r5, r2
 80025d2:	d967      	bls.n	80026a4 <__udivmoddi4+0xe4>
 80025d4:	fab2 f282 	clz	r2, r2
 80025d8:	b14a      	cbz	r2, 80025ee <__udivmoddi4+0x2e>
 80025da:	f1c2 0720 	rsb	r7, r2, #32
 80025de:	fa01 f302 	lsl.w	r3, r1, r2
 80025e2:	fa20 f707 	lsr.w	r7, r0, r7
 80025e6:	4095      	lsls	r5, r2
 80025e8:	ea47 0803 	orr.w	r8, r7, r3
 80025ec:	4094      	lsls	r4, r2
 80025ee:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 80025f2:	0c23      	lsrs	r3, r4, #16
 80025f4:	fbb8 f7fe 	udiv	r7, r8, lr
 80025f8:	fa1f fc85 	uxth.w	ip, r5
 80025fc:	fb0e 8817 	mls	r8, lr, r7, r8
 8002600:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8002604:	fb07 f10c 	mul.w	r1, r7, ip
 8002608:	4299      	cmp	r1, r3
 800260a:	d909      	bls.n	8002620 <__udivmoddi4+0x60>
 800260c:	18eb      	adds	r3, r5, r3
 800260e:	f107 30ff 	add.w	r0, r7, #4294967295
 8002612:	f080 811b 	bcs.w	800284c <__udivmoddi4+0x28c>
 8002616:	4299      	cmp	r1, r3
 8002618:	f240 8118 	bls.w	800284c <__udivmoddi4+0x28c>
 800261c:	3f02      	subs	r7, #2
 800261e:	442b      	add	r3, r5
 8002620:	1a5b      	subs	r3, r3, r1
 8002622:	b2a4      	uxth	r4, r4
 8002624:	fbb3 f0fe 	udiv	r0, r3, lr
 8002628:	fb0e 3310 	mls	r3, lr, r0, r3
 800262c:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 8002630:	fb00 fc0c 	mul.w	ip, r0, ip
 8002634:	45a4      	cmp	ip, r4
 8002636:	d909      	bls.n	800264c <__udivmoddi4+0x8c>
 8002638:	192c      	adds	r4, r5, r4
 800263a:	f100 33ff 	add.w	r3, r0, #4294967295
 800263e:	f080 8107 	bcs.w	8002850 <__udivmoddi4+0x290>
 8002642:	45a4      	cmp	ip, r4
 8002644:	f240 8104 	bls.w	8002850 <__udivmoddi4+0x290>
 8002648:	3802      	subs	r0, #2
 800264a:	442c      	add	r4, r5
 800264c:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 8002650:	eba4 040c 	sub.w	r4, r4, ip
 8002654:	2700      	movs	r7, #0
 8002656:	b11e      	cbz	r6, 8002660 <__udivmoddi4+0xa0>
 8002658:	40d4      	lsrs	r4, r2
 800265a:	2300      	movs	r3, #0
 800265c:	e9c6 4300 	strd	r4, r3, [r6]
 8002660:	4639      	mov	r1, r7
 8002662:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8002666:	428b      	cmp	r3, r1
 8002668:	d909      	bls.n	800267e <__udivmoddi4+0xbe>
 800266a:	2e00      	cmp	r6, #0
 800266c:	f000 80eb 	beq.w	8002846 <__udivmoddi4+0x286>
 8002670:	2700      	movs	r7, #0
 8002672:	e9c6 0100 	strd	r0, r1, [r6]
 8002676:	4638      	mov	r0, r7
 8002678:	4639      	mov	r1, r7
 800267a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800267e:	fab3 f783 	clz	r7, r3
 8002682:	2f00      	cmp	r7, #0
 8002684:	d147      	bne.n	8002716 <__udivmoddi4+0x156>
 8002686:	428b      	cmp	r3, r1
 8002688:	d302      	bcc.n	8002690 <__udivmoddi4+0xd0>
 800268a:	4282      	cmp	r2, r0
 800268c:	f200 80fa 	bhi.w	8002884 <__udivmoddi4+0x2c4>
 8002690:	1a84      	subs	r4, r0, r2
 8002692:	eb61 0303 	sbc.w	r3, r1, r3
 8002696:	2001      	movs	r0, #1
 8002698:	4698      	mov	r8, r3
 800269a:	2e00      	cmp	r6, #0
 800269c:	d0e0      	beq.n	8002660 <__udivmoddi4+0xa0>
 800269e:	e9c6 4800 	strd	r4, r8, [r6]
 80026a2:	e7dd      	b.n	8002660 <__udivmoddi4+0xa0>
 80026a4:	b902      	cbnz	r2, 80026a8 <__udivmoddi4+0xe8>
 80026a6:	deff      	udf	#255	; 0xff
 80026a8:	fab2 f282 	clz	r2, r2
 80026ac:	2a00      	cmp	r2, #0
 80026ae:	f040 808f 	bne.w	80027d0 <__udivmoddi4+0x210>
 80026b2:	1b49      	subs	r1, r1, r5
 80026b4:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 80026b8:	fa1f f885 	uxth.w	r8, r5
 80026bc:	2701      	movs	r7, #1
 80026be:	fbb1 fcfe 	udiv	ip, r1, lr
 80026c2:	0c23      	lsrs	r3, r4, #16
 80026c4:	fb0e 111c 	mls	r1, lr, ip, r1
 80026c8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80026cc:	fb08 f10c 	mul.w	r1, r8, ip
 80026d0:	4299      	cmp	r1, r3
 80026d2:	d907      	bls.n	80026e4 <__udivmoddi4+0x124>
 80026d4:	18eb      	adds	r3, r5, r3
 80026d6:	f10c 30ff 	add.w	r0, ip, #4294967295
 80026da:	d202      	bcs.n	80026e2 <__udivmoddi4+0x122>
 80026dc:	4299      	cmp	r1, r3
 80026de:	f200 80cd 	bhi.w	800287c <__udivmoddi4+0x2bc>
 80026e2:	4684      	mov	ip, r0
 80026e4:	1a59      	subs	r1, r3, r1
 80026e6:	b2a3      	uxth	r3, r4
 80026e8:	fbb1 f0fe 	udiv	r0, r1, lr
 80026ec:	fb0e 1410 	mls	r4, lr, r0, r1
 80026f0:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 80026f4:	fb08 f800 	mul.w	r8, r8, r0
 80026f8:	45a0      	cmp	r8, r4
 80026fa:	d907      	bls.n	800270c <__udivmoddi4+0x14c>
 80026fc:	192c      	adds	r4, r5, r4
 80026fe:	f100 33ff 	add.w	r3, r0, #4294967295
 8002702:	d202      	bcs.n	800270a <__udivmoddi4+0x14a>
 8002704:	45a0      	cmp	r8, r4
 8002706:	f200 80b6 	bhi.w	8002876 <__udivmoddi4+0x2b6>
 800270a:	4618      	mov	r0, r3
 800270c:	eba4 0408 	sub.w	r4, r4, r8
 8002710:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8002714:	e79f      	b.n	8002656 <__udivmoddi4+0x96>
 8002716:	f1c7 0c20 	rsb	ip, r7, #32
 800271a:	40bb      	lsls	r3, r7
 800271c:	fa22 fe0c 	lsr.w	lr, r2, ip
 8002720:	ea4e 0e03 	orr.w	lr, lr, r3
 8002724:	fa01 f407 	lsl.w	r4, r1, r7
 8002728:	fa20 f50c 	lsr.w	r5, r0, ip
 800272c:	fa21 f30c 	lsr.w	r3, r1, ip
 8002730:	ea4f 481e 	mov.w	r8, lr, lsr #16
 8002734:	4325      	orrs	r5, r4
 8002736:	fbb3 f9f8 	udiv	r9, r3, r8
 800273a:	0c2c      	lsrs	r4, r5, #16
 800273c:	fb08 3319 	mls	r3, r8, r9, r3
 8002740:	fa1f fa8e 	uxth.w	sl, lr
 8002744:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 8002748:	fb09 f40a 	mul.w	r4, r9, sl
 800274c:	429c      	cmp	r4, r3
 800274e:	fa02 f207 	lsl.w	r2, r2, r7
 8002752:	fa00 f107 	lsl.w	r1, r0, r7
 8002756:	d90b      	bls.n	8002770 <__udivmoddi4+0x1b0>
 8002758:	eb1e 0303 	adds.w	r3, lr, r3
 800275c:	f109 30ff 	add.w	r0, r9, #4294967295
 8002760:	f080 8087 	bcs.w	8002872 <__udivmoddi4+0x2b2>
 8002764:	429c      	cmp	r4, r3
 8002766:	f240 8084 	bls.w	8002872 <__udivmoddi4+0x2b2>
 800276a:	f1a9 0902 	sub.w	r9, r9, #2
 800276e:	4473      	add	r3, lr
 8002770:	1b1b      	subs	r3, r3, r4
 8002772:	b2ad      	uxth	r5, r5
 8002774:	fbb3 f0f8 	udiv	r0, r3, r8
 8002778:	fb08 3310 	mls	r3, r8, r0, r3
 800277c:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8002780:	fb00 fa0a 	mul.w	sl, r0, sl
 8002784:	45a2      	cmp	sl, r4
 8002786:	d908      	bls.n	800279a <__udivmoddi4+0x1da>
 8002788:	eb1e 0404 	adds.w	r4, lr, r4
 800278c:	f100 33ff 	add.w	r3, r0, #4294967295
 8002790:	d26b      	bcs.n	800286a <__udivmoddi4+0x2aa>
 8002792:	45a2      	cmp	sl, r4
 8002794:	d969      	bls.n	800286a <__udivmoddi4+0x2aa>
 8002796:	3802      	subs	r0, #2
 8002798:	4474      	add	r4, lr
 800279a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 800279e:	fba0 8902 	umull	r8, r9, r0, r2
 80027a2:	eba4 040a 	sub.w	r4, r4, sl
 80027a6:	454c      	cmp	r4, r9
 80027a8:	46c2      	mov	sl, r8
 80027aa:	464b      	mov	r3, r9
 80027ac:	d354      	bcc.n	8002858 <__udivmoddi4+0x298>
 80027ae:	d051      	beq.n	8002854 <__udivmoddi4+0x294>
 80027b0:	2e00      	cmp	r6, #0
 80027b2:	d069      	beq.n	8002888 <__udivmoddi4+0x2c8>
 80027b4:	ebb1 050a 	subs.w	r5, r1, sl
 80027b8:	eb64 0403 	sbc.w	r4, r4, r3
 80027bc:	fa04 fc0c 	lsl.w	ip, r4, ip
 80027c0:	40fd      	lsrs	r5, r7
 80027c2:	40fc      	lsrs	r4, r7
 80027c4:	ea4c 0505 	orr.w	r5, ip, r5
 80027c8:	e9c6 5400 	strd	r5, r4, [r6]
 80027cc:	2700      	movs	r7, #0
 80027ce:	e747      	b.n	8002660 <__udivmoddi4+0xa0>
 80027d0:	f1c2 0320 	rsb	r3, r2, #32
 80027d4:	fa20 f703 	lsr.w	r7, r0, r3
 80027d8:	4095      	lsls	r5, r2
 80027da:	fa01 f002 	lsl.w	r0, r1, r2
 80027de:	fa21 f303 	lsr.w	r3, r1, r3
 80027e2:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 80027e6:	4338      	orrs	r0, r7
 80027e8:	0c01      	lsrs	r1, r0, #16
 80027ea:	fbb3 f7fe 	udiv	r7, r3, lr
 80027ee:	fa1f f885 	uxth.w	r8, r5
 80027f2:	fb0e 3317 	mls	r3, lr, r7, r3
 80027f6:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 80027fa:	fb07 f308 	mul.w	r3, r7, r8
 80027fe:	428b      	cmp	r3, r1
 8002800:	fa04 f402 	lsl.w	r4, r4, r2
 8002804:	d907      	bls.n	8002816 <__udivmoddi4+0x256>
 8002806:	1869      	adds	r1, r5, r1
 8002808:	f107 3cff 	add.w	ip, r7, #4294967295
 800280c:	d22f      	bcs.n	800286e <__udivmoddi4+0x2ae>
 800280e:	428b      	cmp	r3, r1
 8002810:	d92d      	bls.n	800286e <__udivmoddi4+0x2ae>
 8002812:	3f02      	subs	r7, #2
 8002814:	4429      	add	r1, r5
 8002816:	1acb      	subs	r3, r1, r3
 8002818:	b281      	uxth	r1, r0
 800281a:	fbb3 f0fe 	udiv	r0, r3, lr
 800281e:	fb0e 3310 	mls	r3, lr, r0, r3
 8002822:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 8002826:	fb00 f308 	mul.w	r3, r0, r8
 800282a:	428b      	cmp	r3, r1
 800282c:	d907      	bls.n	800283e <__udivmoddi4+0x27e>
 800282e:	1869      	adds	r1, r5, r1
 8002830:	f100 3cff 	add.w	ip, r0, #4294967295
 8002834:	d217      	bcs.n	8002866 <__udivmoddi4+0x2a6>
 8002836:	428b      	cmp	r3, r1
 8002838:	d915      	bls.n	8002866 <__udivmoddi4+0x2a6>
 800283a:	3802      	subs	r0, #2
 800283c:	4429      	add	r1, r5
 800283e:	1ac9      	subs	r1, r1, r3
 8002840:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 8002844:	e73b      	b.n	80026be <__udivmoddi4+0xfe>
 8002846:	4637      	mov	r7, r6
 8002848:	4630      	mov	r0, r6
 800284a:	e709      	b.n	8002660 <__udivmoddi4+0xa0>
 800284c:	4607      	mov	r7, r0
 800284e:	e6e7      	b.n	8002620 <__udivmoddi4+0x60>
 8002850:	4618      	mov	r0, r3
 8002852:	e6fb      	b.n	800264c <__udivmoddi4+0x8c>
 8002854:	4541      	cmp	r1, r8
 8002856:	d2ab      	bcs.n	80027b0 <__udivmoddi4+0x1f0>
 8002858:	ebb8 0a02 	subs.w	sl, r8, r2
 800285c:	eb69 020e 	sbc.w	r2, r9, lr
 8002860:	3801      	subs	r0, #1
 8002862:	4613      	mov	r3, r2
 8002864:	e7a4      	b.n	80027b0 <__udivmoddi4+0x1f0>
 8002866:	4660      	mov	r0, ip
 8002868:	e7e9      	b.n	800283e <__udivmoddi4+0x27e>
 800286a:	4618      	mov	r0, r3
 800286c:	e795      	b.n	800279a <__udivmoddi4+0x1da>
 800286e:	4667      	mov	r7, ip
 8002870:	e7d1      	b.n	8002816 <__udivmoddi4+0x256>
 8002872:	4681      	mov	r9, r0
 8002874:	e77c      	b.n	8002770 <__udivmoddi4+0x1b0>
 8002876:	3802      	subs	r0, #2
 8002878:	442c      	add	r4, r5
 800287a:	e747      	b.n	800270c <__udivmoddi4+0x14c>
 800287c:	f1ac 0c02 	sub.w	ip, ip, #2
 8002880:	442b      	add	r3, r5
 8002882:	e72f      	b.n	80026e4 <__udivmoddi4+0x124>
 8002884:	4638      	mov	r0, r7
 8002886:	e708      	b.n	800269a <__udivmoddi4+0xda>
 8002888:	4637      	mov	r7, r6
 800288a:	e6e9      	b.n	8002660 <__udivmoddi4+0xa0>

0800288c <__aeabi_idiv0>:
 800288c:	4770      	bx	lr
 800288e:	bf00      	nop

08002890 <__errno>:
 8002890:	4b01      	ldr	r3, [pc, #4]	; (8002898 <__errno+0x8>)
 8002892:	6818      	ldr	r0, [r3, #0]
 8002894:	4770      	bx	lr
 8002896:	bf00      	nop
 8002898:	20000010 	.word	0x20000010

0800289c <__libc_init_array>:
 800289c:	b570      	push	{r4, r5, r6, lr}
 800289e:	4e0d      	ldr	r6, [pc, #52]	; (80028d4 <__libc_init_array+0x38>)
 80028a0:	4d0d      	ldr	r5, [pc, #52]	; (80028d8 <__libc_init_array+0x3c>)
 80028a2:	1b76      	subs	r6, r6, r5
 80028a4:	10b6      	asrs	r6, r6, #2
 80028a6:	d006      	beq.n	80028b6 <__libc_init_array+0x1a>
 80028a8:	2400      	movs	r4, #0
 80028aa:	3401      	adds	r4, #1
 80028ac:	f855 3b04 	ldr.w	r3, [r5], #4
 80028b0:	4798      	blx	r3
 80028b2:	42a6      	cmp	r6, r4
 80028b4:	d1f9      	bne.n	80028aa <__libc_init_array+0xe>
 80028b6:	4e09      	ldr	r6, [pc, #36]	; (80028dc <__libc_init_array+0x40>)
 80028b8:	4d09      	ldr	r5, [pc, #36]	; (80028e0 <__libc_init_array+0x44>)
 80028ba:	1b76      	subs	r6, r6, r5
 80028bc:	f005 f942 	bl	8007b44 <_init>
 80028c0:	10b6      	asrs	r6, r6, #2
 80028c2:	d006      	beq.n	80028d2 <__libc_init_array+0x36>
 80028c4:	2400      	movs	r4, #0
 80028c6:	3401      	adds	r4, #1
 80028c8:	f855 3b04 	ldr.w	r3, [r5], #4
 80028cc:	4798      	blx	r3
 80028ce:	42a6      	cmp	r6, r4
 80028d0:	d1f9      	bne.n	80028c6 <__libc_init_array+0x2a>
 80028d2:	bd70      	pop	{r4, r5, r6, pc}
 80028d4:	200009c0 	.word	0x200009c0
 80028d8:	200009c0 	.word	0x200009c0
 80028dc:	200009c8 	.word	0x200009c8
 80028e0:	200009c0 	.word	0x200009c0

080028e4 <memcpy>:
 80028e4:	4684      	mov	ip, r0
 80028e6:	ea41 0300 	orr.w	r3, r1, r0
 80028ea:	f013 0303 	ands.w	r3, r3, #3
 80028ee:	d16d      	bne.n	80029cc <memcpy+0xe8>
 80028f0:	3a40      	subs	r2, #64	; 0x40
 80028f2:	d341      	bcc.n	8002978 <memcpy+0x94>
 80028f4:	f851 3b04 	ldr.w	r3, [r1], #4
 80028f8:	f840 3b04 	str.w	r3, [r0], #4
 80028fc:	f851 3b04 	ldr.w	r3, [r1], #4
 8002900:	f840 3b04 	str.w	r3, [r0], #4
 8002904:	f851 3b04 	ldr.w	r3, [r1], #4
 8002908:	f840 3b04 	str.w	r3, [r0], #4
 800290c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002910:	f840 3b04 	str.w	r3, [r0], #4
 8002914:	f851 3b04 	ldr.w	r3, [r1], #4
 8002918:	f840 3b04 	str.w	r3, [r0], #4
 800291c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002920:	f840 3b04 	str.w	r3, [r0], #4
 8002924:	f851 3b04 	ldr.w	r3, [r1], #4
 8002928:	f840 3b04 	str.w	r3, [r0], #4
 800292c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002930:	f840 3b04 	str.w	r3, [r0], #4
 8002934:	f851 3b04 	ldr.w	r3, [r1], #4
 8002938:	f840 3b04 	str.w	r3, [r0], #4
 800293c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002940:	f840 3b04 	str.w	r3, [r0], #4
 8002944:	f851 3b04 	ldr.w	r3, [r1], #4
 8002948:	f840 3b04 	str.w	r3, [r0], #4
 800294c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002950:	f840 3b04 	str.w	r3, [r0], #4
 8002954:	f851 3b04 	ldr.w	r3, [r1], #4
 8002958:	f840 3b04 	str.w	r3, [r0], #4
 800295c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002960:	f840 3b04 	str.w	r3, [r0], #4
 8002964:	f851 3b04 	ldr.w	r3, [r1], #4
 8002968:	f840 3b04 	str.w	r3, [r0], #4
 800296c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002970:	f840 3b04 	str.w	r3, [r0], #4
 8002974:	3a40      	subs	r2, #64	; 0x40
 8002976:	d2bd      	bcs.n	80028f4 <memcpy+0x10>
 8002978:	3230      	adds	r2, #48	; 0x30
 800297a:	d311      	bcc.n	80029a0 <memcpy+0xbc>
 800297c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002980:	f840 3b04 	str.w	r3, [r0], #4
 8002984:	f851 3b04 	ldr.w	r3, [r1], #4
 8002988:	f840 3b04 	str.w	r3, [r0], #4
 800298c:	f851 3b04 	ldr.w	r3, [r1], #4
 8002990:	f840 3b04 	str.w	r3, [r0], #4
 8002994:	f851 3b04 	ldr.w	r3, [r1], #4
 8002998:	f840 3b04 	str.w	r3, [r0], #4
 800299c:	3a10      	subs	r2, #16
 800299e:	d2ed      	bcs.n	800297c <memcpy+0x98>
 80029a0:	320c      	adds	r2, #12
 80029a2:	d305      	bcc.n	80029b0 <memcpy+0xcc>
 80029a4:	f851 3b04 	ldr.w	r3, [r1], #4
 80029a8:	f840 3b04 	str.w	r3, [r0], #4
 80029ac:	3a04      	subs	r2, #4
 80029ae:	d2f9      	bcs.n	80029a4 <memcpy+0xc0>
 80029b0:	3204      	adds	r2, #4
 80029b2:	d008      	beq.n	80029c6 <memcpy+0xe2>
 80029b4:	07d2      	lsls	r2, r2, #31
 80029b6:	bf1c      	itt	ne
 80029b8:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80029bc:	f800 3b01 	strbne.w	r3, [r0], #1
 80029c0:	d301      	bcc.n	80029c6 <memcpy+0xe2>
 80029c2:	880b      	ldrh	r3, [r1, #0]
 80029c4:	8003      	strh	r3, [r0, #0]
 80029c6:	4660      	mov	r0, ip
 80029c8:	4770      	bx	lr
 80029ca:	bf00      	nop
 80029cc:	2a08      	cmp	r2, #8
 80029ce:	d313      	bcc.n	80029f8 <memcpy+0x114>
 80029d0:	078b      	lsls	r3, r1, #30
 80029d2:	d08d      	beq.n	80028f0 <memcpy+0xc>
 80029d4:	f010 0303 	ands.w	r3, r0, #3
 80029d8:	d08a      	beq.n	80028f0 <memcpy+0xc>
 80029da:	f1c3 0304 	rsb	r3, r3, #4
 80029de:	1ad2      	subs	r2, r2, r3
 80029e0:	07db      	lsls	r3, r3, #31
 80029e2:	bf1c      	itt	ne
 80029e4:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80029e8:	f800 3b01 	strbne.w	r3, [r0], #1
 80029ec:	d380      	bcc.n	80028f0 <memcpy+0xc>
 80029ee:	f831 3b02 	ldrh.w	r3, [r1], #2
 80029f2:	f820 3b02 	strh.w	r3, [r0], #2
 80029f6:	e77b      	b.n	80028f0 <memcpy+0xc>
 80029f8:	3a04      	subs	r2, #4
 80029fa:	d3d9      	bcc.n	80029b0 <memcpy+0xcc>
 80029fc:	3a01      	subs	r2, #1
 80029fe:	f811 3b01 	ldrb.w	r3, [r1], #1
 8002a02:	f800 3b01 	strb.w	r3, [r0], #1
 8002a06:	d2f9      	bcs.n	80029fc <memcpy+0x118>
 8002a08:	780b      	ldrb	r3, [r1, #0]
 8002a0a:	7003      	strb	r3, [r0, #0]
 8002a0c:	784b      	ldrb	r3, [r1, #1]
 8002a0e:	7043      	strb	r3, [r0, #1]
 8002a10:	788b      	ldrb	r3, [r1, #2]
 8002a12:	7083      	strb	r3, [r0, #2]
 8002a14:	4660      	mov	r0, ip
 8002a16:	4770      	bx	lr

08002a18 <memset>:
 8002a18:	b4f0      	push	{r4, r5, r6, r7}
 8002a1a:	0786      	lsls	r6, r0, #30
 8002a1c:	d043      	beq.n	8002aa6 <memset+0x8e>
 8002a1e:	1e54      	subs	r4, r2, #1
 8002a20:	2a00      	cmp	r2, #0
 8002a22:	d03e      	beq.n	8002aa2 <memset+0x8a>
 8002a24:	b2ca      	uxtb	r2, r1
 8002a26:	4603      	mov	r3, r0
 8002a28:	e002      	b.n	8002a30 <memset+0x18>
 8002a2a:	f114 34ff 	adds.w	r4, r4, #4294967295
 8002a2e:	d338      	bcc.n	8002aa2 <memset+0x8a>
 8002a30:	f803 2b01 	strb.w	r2, [r3], #1
 8002a34:	079d      	lsls	r5, r3, #30
 8002a36:	d1f8      	bne.n	8002a2a <memset+0x12>
 8002a38:	2c03      	cmp	r4, #3
 8002a3a:	d92b      	bls.n	8002a94 <memset+0x7c>
 8002a3c:	b2cd      	uxtb	r5, r1
 8002a3e:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002a42:	2c0f      	cmp	r4, #15
 8002a44:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002a48:	d916      	bls.n	8002a78 <memset+0x60>
 8002a4a:	f1a4 0710 	sub.w	r7, r4, #16
 8002a4e:	093f      	lsrs	r7, r7, #4
 8002a50:	f103 0620 	add.w	r6, r3, #32
 8002a54:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002a58:	f103 0210 	add.w	r2, r3, #16
 8002a5c:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002a60:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002a64:	3210      	adds	r2, #16
 8002a66:	42b2      	cmp	r2, r6
 8002a68:	d1f8      	bne.n	8002a5c <memset+0x44>
 8002a6a:	f004 040f 	and.w	r4, r4, #15
 8002a6e:	3701      	adds	r7, #1
 8002a70:	2c03      	cmp	r4, #3
 8002a72:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002a76:	d90d      	bls.n	8002a94 <memset+0x7c>
 8002a78:	461e      	mov	r6, r3
 8002a7a:	4622      	mov	r2, r4
 8002a7c:	3a04      	subs	r2, #4
 8002a7e:	2a03      	cmp	r2, #3
 8002a80:	f846 5b04 	str.w	r5, [r6], #4
 8002a84:	d8fa      	bhi.n	8002a7c <memset+0x64>
 8002a86:	1f22      	subs	r2, r4, #4
 8002a88:	f022 0203 	bic.w	r2, r2, #3
 8002a8c:	3204      	adds	r2, #4
 8002a8e:	4413      	add	r3, r2
 8002a90:	f004 0403 	and.w	r4, r4, #3
 8002a94:	b12c      	cbz	r4, 8002aa2 <memset+0x8a>
 8002a96:	b2c9      	uxtb	r1, r1
 8002a98:	441c      	add	r4, r3
 8002a9a:	f803 1b01 	strb.w	r1, [r3], #1
 8002a9e:	429c      	cmp	r4, r3
 8002aa0:	d1fb      	bne.n	8002a9a <memset+0x82>
 8002aa2:	bcf0      	pop	{r4, r5, r6, r7}
 8002aa4:	4770      	bx	lr
 8002aa6:	4614      	mov	r4, r2
 8002aa8:	4603      	mov	r3, r0
 8002aaa:	e7c5      	b.n	8002a38 <memset+0x20>

08002aac <printf>:
 8002aac:	b40f      	push	{r0, r1, r2, r3}
 8002aae:	b500      	push	{lr}
 8002ab0:	4907      	ldr	r1, [pc, #28]	; (8002ad0 <printf+0x24>)
 8002ab2:	b083      	sub	sp, #12
 8002ab4:	ab04      	add	r3, sp, #16
 8002ab6:	6808      	ldr	r0, [r1, #0]
 8002ab8:	f853 2b04 	ldr.w	r2, [r3], #4
 8002abc:	6881      	ldr	r1, [r0, #8]
 8002abe:	9301      	str	r3, [sp, #4]
 8002ac0:	f000 f80a 	bl	8002ad8 <_vfprintf_r>
 8002ac4:	b003      	add	sp, #12
 8002ac6:	f85d eb04 	ldr.w	lr, [sp], #4
 8002aca:	b004      	add	sp, #16
 8002acc:	4770      	bx	lr
 8002ace:	bf00      	nop
 8002ad0:	20000010 	.word	0x20000010
 8002ad4:	00000000 	.word	0x00000000

08002ad8 <_vfprintf_r>:
 8002ad8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002adc:	b0bf      	sub	sp, #252	; 0xfc
 8002ade:	461c      	mov	r4, r3
 8002ae0:	4688      	mov	r8, r1
 8002ae2:	4692      	mov	sl, r2
 8002ae4:	4605      	mov	r5, r0
 8002ae6:	9006      	str	r0, [sp, #24]
 8002ae8:	f002 fda0 	bl	800562c <_localeconv_r>
 8002aec:	6803      	ldr	r3, [r0, #0]
 8002aee:	9310      	str	r3, [sp, #64]	; 0x40
 8002af0:	4618      	mov	r0, r3
 8002af2:	f003 fca5 	bl	8006440 <strlen>
 8002af6:	9409      	str	r4, [sp, #36]	; 0x24
 8002af8:	900f      	str	r0, [sp, #60]	; 0x3c
 8002afa:	b11d      	cbz	r5, 8002b04 <_vfprintf_r+0x2c>
 8002afc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002afe:	2b00      	cmp	r3, #0
 8002b00:	f000 8100 	beq.w	8002d04 <_vfprintf_r+0x22c>
 8002b04:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
 8002b08:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
 8002b0c:	07cd      	lsls	r5, r1, #31
 8002b0e:	b293      	uxth	r3, r2
 8002b10:	d402      	bmi.n	8002b18 <_vfprintf_r+0x40>
 8002b12:	0598      	lsls	r0, r3, #22
 8002b14:	f140 8143 	bpl.w	8002d9e <_vfprintf_r+0x2c6>
 8002b18:	0499      	lsls	r1, r3, #18
 8002b1a:	d40a      	bmi.n	8002b32 <_vfprintf_r+0x5a>
 8002b1c:	f8d8 1064 	ldr.w	r1, [r8, #100]	; 0x64
 8002b20:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002b24:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002b28:	f8a8 300c 	strh.w	r3, [r8, #12]
 8002b2c:	f8c8 1064 	str.w	r1, [r8, #100]	; 0x64
 8002b30:	b29b      	uxth	r3, r3
 8002b32:	071a      	lsls	r2, r3, #28
 8002b34:	f140 80b0 	bpl.w	8002c98 <_vfprintf_r+0x1c0>
 8002b38:	f8d8 2010 	ldr.w	r2, [r8, #16]
 8002b3c:	2a00      	cmp	r2, #0
 8002b3e:	f000 80ab 	beq.w	8002c98 <_vfprintf_r+0x1c0>
 8002b42:	f003 021a 	and.w	r2, r3, #26
 8002b46:	2a0a      	cmp	r2, #10
 8002b48:	f000 80c2 	beq.w	8002cd0 <_vfprintf_r+0x1f8>
 8002b4c:	ed9f 7ba0 	vldr	d7, [pc, #640]	; 8002dd0 <_vfprintf_r+0x2f8>
 8002b50:	2300      	movs	r3, #0
 8002b52:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 8002b56:	930e      	str	r3, [sp, #56]	; 0x38
 8002b58:	e9cd 3322 	strd	r3, r3, [sp, #136]	; 0x88
 8002b5c:	9311      	str	r3, [sp, #68]	; 0x44
 8002b5e:	9314      	str	r3, [sp, #80]	; 0x50
 8002b60:	9305      	str	r3, [sp, #20]
 8002b62:	ab2e      	add	r3, sp, #184	; 0xb8
 8002b64:	9321      	str	r3, [sp, #132]	; 0x84
 8002b66:	4699      	mov	r9, r3
 8002b68:	46c3      	mov	fp, r8
 8002b6a:	f89a 3000 	ldrb.w	r3, [sl]
 8002b6e:	2b00      	cmp	r3, #0
 8002b70:	f000 8283 	beq.w	800307a <_vfprintf_r+0x5a2>
 8002b74:	2b25      	cmp	r3, #37	; 0x25
 8002b76:	4654      	mov	r4, sl
 8002b78:	d102      	bne.n	8002b80 <_vfprintf_r+0xa8>
 8002b7a:	e01e      	b.n	8002bba <_vfprintf_r+0xe2>
 8002b7c:	2b25      	cmp	r3, #37	; 0x25
 8002b7e:	d003      	beq.n	8002b88 <_vfprintf_r+0xb0>
 8002b80:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002b84:	2b00      	cmp	r3, #0
 8002b86:	d1f9      	bne.n	8002b7c <_vfprintf_r+0xa4>
 8002b88:	eba4 050a 	sub.w	r5, r4, sl
 8002b8c:	b18d      	cbz	r5, 8002bb2 <_vfprintf_r+0xda>
 8002b8e:	e9dd 3222 	ldrd	r3, r2, [sp, #136]	; 0x88
 8002b92:	3301      	adds	r3, #1
 8002b94:	442a      	add	r2, r5
 8002b96:	2b07      	cmp	r3, #7
 8002b98:	f8c9 a000 	str.w	sl, [r9]
 8002b9c:	f8c9 5004 	str.w	r5, [r9, #4]
 8002ba0:	e9cd 3222 	strd	r3, r2, [sp, #136]	; 0x88
 8002ba4:	f300 80da 	bgt.w	8002d5c <_vfprintf_r+0x284>
 8002ba8:	f109 0908 	add.w	r9, r9, #8
 8002bac:	9b05      	ldr	r3, [sp, #20]
 8002bae:	442b      	add	r3, r5
 8002bb0:	9305      	str	r3, [sp, #20]
 8002bb2:	7823      	ldrb	r3, [r4, #0]
 8002bb4:	2b00      	cmp	r3, #0
 8002bb6:	f000 8260 	beq.w	800307a <_vfprintf_r+0x5a2>
 8002bba:	2300      	movs	r3, #0
 8002bbc:	461a      	mov	r2, r3
 8002bbe:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 8002bc2:	4619      	mov	r1, r3
 8002bc4:	9307      	str	r3, [sp, #28]
 8002bc6:	4698      	mov	r8, r3
 8002bc8:	7866      	ldrb	r6, [r4, #1]
 8002bca:	f04f 33ff 	mov.w	r3, #4294967295
 8002bce:	f104 0a01 	add.w	sl, r4, #1
 8002bd2:	9304      	str	r3, [sp, #16]
 8002bd4:	f10a 0a01 	add.w	sl, sl, #1
 8002bd8:	f1a6 0320 	sub.w	r3, r6, #32
 8002bdc:	2b58      	cmp	r3, #88	; 0x58
 8002bde:	f200 83fc 	bhi.w	80033da <_vfprintf_r+0x902>
 8002be2:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002be6:	02d1      	.short	0x02d1
 8002be8:	03fa03fa 	.word	0x03fa03fa
 8002bec:	03fa02d9 	.word	0x03fa02d9
 8002bf0:	03fa03fa 	.word	0x03fa03fa
 8002bf4:	03fa03fa 	.word	0x03fa03fa
 8002bf8:	033003fa 	.word	0x033003fa
 8002bfc:	03fa033c 	.word	0x03fa033c
 8002c00:	039e03d0 	.word	0x039e03d0
 8002c04:	026403fa 	.word	0x026403fa
 8002c08:	00e400e4 	.word	0x00e400e4
 8002c0c:	00e400e4 	.word	0x00e400e4
 8002c10:	00e400e4 	.word	0x00e400e4
 8002c14:	00e400e4 	.word	0x00e400e4
 8002c18:	03fa00e4 	.word	0x03fa00e4
 8002c1c:	03fa03fa 	.word	0x03fa03fa
 8002c20:	03fa03fa 	.word	0x03fa03fa
 8002c24:	03fa03fa 	.word	0x03fa03fa
 8002c28:	03fa03fa 	.word	0x03fa03fa
 8002c2c:	03b803fa 	.word	0x03b803fa
 8002c30:	03fa0341 	.word	0x03fa0341
 8002c34:	03fa0341 	.word	0x03fa0341
 8002c38:	03fa03fa 	.word	0x03fa03fa
 8002c3c:	039903fa 	.word	0x039903fa
 8002c40:	03fa03fa 	.word	0x03fa03fa
 8002c44:	03fa0093 	.word	0x03fa0093
 8002c48:	03fa03fa 	.word	0x03fa03fa
 8002c4c:	03fa03fa 	.word	0x03fa03fa
 8002c50:	03fa00a7 	.word	0x03fa00a7
 8002c54:	026903fa 	.word	0x026903fa
 8002c58:	03fa03fa 	.word	0x03fa03fa
 8002c5c:	03fa03fa 	.word	0x03fa03fa
 8002c60:	03fa03fa 	.word	0x03fa03fa
 8002c64:	03fa03fa 	.word	0x03fa03fa
 8002c68:	03fa03fa 	.word	0x03fa03fa
 8002c6c:	00f902be 	.word	0x00f902be
 8002c70:	03410341 	.word	0x03410341
 8002c74:	02520341 	.word	0x02520341
 8002c78:	03fa00f9 	.word	0x03fa00f9
 8002c7c:	025703fa 	.word	0x025703fa
 8002c80:	031f03fa 	.word	0x031f03fa
 8002c84:	03840095 	.word	0x03840095
 8002c88:	03fa0394 	.word	0x03fa0394
 8002c8c:	03fa02fc 	.word	0x03fa02fc
 8002c90:	03fa00a9 	.word	0x03fa00a9
 8002c94:	02e503fa 	.word	0x02e503fa
 8002c98:	4641      	mov	r1, r8
 8002c9a:	9806      	ldr	r0, [sp, #24]
 8002c9c:	f001 f9e4 	bl	8004068 <__swsetup_r>
 8002ca0:	b178      	cbz	r0, 8002cc2 <_vfprintf_r+0x1ea>
 8002ca2:	f8d8 3064 	ldr.w	r3, [r8, #100]	; 0x64
 8002ca6:	07db      	lsls	r3, r3, #31
 8002ca8:	d404      	bmi.n	8002cb4 <_vfprintf_r+0x1dc>
 8002caa:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8002cae:	059f      	lsls	r7, r3, #22
 8002cb0:	f140 838b 	bpl.w	80033ca <_vfprintf_r+0x8f2>
 8002cb4:	f04f 33ff 	mov.w	r3, #4294967295
 8002cb8:	9305      	str	r3, [sp, #20]
 8002cba:	9805      	ldr	r0, [sp, #20]
 8002cbc:	b03f      	add	sp, #252	; 0xfc
 8002cbe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002cc2:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8002cc6:	f003 021a 	and.w	r2, r3, #26
 8002cca:	2a0a      	cmp	r2, #10
 8002ccc:	f47f af3e 	bne.w	8002b4c <_vfprintf_r+0x74>
 8002cd0:	f9b8 200e 	ldrsh.w	r2, [r8, #14]
 8002cd4:	2a00      	cmp	r2, #0
 8002cd6:	f6ff af39 	blt.w	8002b4c <_vfprintf_r+0x74>
 8002cda:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
 8002cde:	07d6      	lsls	r6, r2, #31
 8002ce0:	d405      	bmi.n	8002cee <_vfprintf_r+0x216>
 8002ce2:	059d      	lsls	r5, r3, #22
 8002ce4:	d403      	bmi.n	8002cee <_vfprintf_r+0x216>
 8002ce6:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8002cea:	f002 fcb3 	bl	8005654 <__retarget_lock_release_recursive>
 8002cee:	4623      	mov	r3, r4
 8002cf0:	4652      	mov	r2, sl
 8002cf2:	4641      	mov	r1, r8
 8002cf4:	9806      	ldr	r0, [sp, #24]
 8002cf6:	f001 f975 	bl	8003fe4 <__sbprintf>
 8002cfa:	9005      	str	r0, [sp, #20]
 8002cfc:	9805      	ldr	r0, [sp, #20]
 8002cfe:	b03f      	add	sp, #252	; 0xfc
 8002d00:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002d04:	9806      	ldr	r0, [sp, #24]
 8002d06:	f002 fad1 	bl	80052ac <__sinit>
 8002d0a:	e6fb      	b.n	8002b04 <_vfprintf_r+0x2c>
 8002d0c:	f048 0810 	orr.w	r8, r8, #16
 8002d10:	f018 0320 	ands.w	r3, r8, #32
 8002d14:	f040 833c 	bne.w	8003390 <_vfprintf_r+0x8b8>
 8002d18:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002d1a:	f852 4b04 	ldr.w	r4, [r2], #4
 8002d1e:	9209      	str	r2, [sp, #36]	; 0x24
 8002d20:	f018 0210 	ands.w	r2, r8, #16
 8002d24:	d104      	bne.n	8002d30 <_vfprintf_r+0x258>
 8002d26:	f018 0340 	ands.w	r3, r8, #64	; 0x40
 8002d2a:	bf1c      	itt	ne
 8002d2c:	4613      	movne	r3, r2
 8002d2e:	b2a4      	uxthne	r4, r4
 8002d30:	2500      	movs	r5, #0
 8002d32:	e1e2      	b.n	80030fa <_vfprintf_r+0x622>
 8002d34:	f048 0810 	orr.w	r8, r8, #16
 8002d38:	f018 0f20 	tst.w	r8, #32
 8002d3c:	f040 8333 	bne.w	80033a6 <_vfprintf_r+0x8ce>
 8002d40:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d42:	f018 0f10 	tst.w	r8, #16
 8002d46:	f853 4b04 	ldr.w	r4, [r3], #4
 8002d4a:	9309      	str	r3, [sp, #36]	; 0x24
 8002d4c:	d103      	bne.n	8002d56 <_vfprintf_r+0x27e>
 8002d4e:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d52:	bf18      	it	ne
 8002d54:	b2a4      	uxthne	r4, r4
 8002d56:	2500      	movs	r5, #0
 8002d58:	2301      	movs	r3, #1
 8002d5a:	e1ce      	b.n	80030fa <_vfprintf_r+0x622>
 8002d5c:	aa21      	add	r2, sp, #132	; 0x84
 8002d5e:	4659      	mov	r1, fp
 8002d60:	9806      	ldr	r0, [sp, #24]
 8002d62:	f003 fc17 	bl	8006594 <__sprint_r>
 8002d66:	b950      	cbnz	r0, 8002d7e <_vfprintf_r+0x2a6>
 8002d68:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8002d6c:	e71e      	b.n	8002bac <_vfprintf_r+0xd4>
 8002d6e:	aa21      	add	r2, sp, #132	; 0x84
 8002d70:	4659      	mov	r1, fp
 8002d72:	9806      	ldr	r0, [sp, #24]
 8002d74:	f003 fc0e 	bl	8006594 <__sprint_r>
 8002d78:	2800      	cmp	r0, #0
 8002d7a:	f000 8175 	beq.w	8003068 <_vfprintf_r+0x590>
 8002d7e:	46d8      	mov	r8, fp
 8002d80:	f8d8 2064 	ldr.w	r2, [r8, #100]	; 0x64
 8002d84:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 8002d88:	07d1      	lsls	r1, r2, #31
 8002d8a:	d402      	bmi.n	8002d92 <_vfprintf_r+0x2ba>
 8002d8c:	059a      	lsls	r2, r3, #22
 8002d8e:	f140 8315 	bpl.w	80033bc <_vfprintf_r+0x8e4>
 8002d92:	065b      	lsls	r3, r3, #25
 8002d94:	d48e      	bmi.n	8002cb4 <_vfprintf_r+0x1dc>
 8002d96:	9805      	ldr	r0, [sp, #20]
 8002d98:	b03f      	add	sp, #252	; 0xfc
 8002d9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002d9e:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 8002da2:	f002 fc55 	bl	8005650 <__retarget_lock_acquire_recursive>
 8002da6:	f9b8 200c 	ldrsh.w	r2, [r8, #12]
 8002daa:	b293      	uxth	r3, r2
 8002dac:	e6b4      	b.n	8002b18 <_vfprintf_r+0x40>
 8002dae:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002db2:	2000      	movs	r0, #0
 8002db4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002db8:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8002dbc:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8002dc0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002dc4:	2b09      	cmp	r3, #9
 8002dc6:	d9f5      	bls.n	8002db4 <_vfprintf_r+0x2dc>
 8002dc8:	9007      	str	r0, [sp, #28]
 8002dca:	e705      	b.n	8002bd8 <_vfprintf_r+0x100>
 8002dcc:	f3af 8000 	nop.w
	...
 8002dd8:	2a00      	cmp	r2, #0
 8002dda:	f041 80ea 	bne.w	8003fb2 <_vfprintf_r+0x14da>
 8002dde:	f018 0f20 	tst.w	r8, #32
 8002de2:	f000 82c1 	beq.w	8003368 <_vfprintf_r+0x890>
 8002de6:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8002de8:	3407      	adds	r4, #7
 8002dea:	f024 0307 	bic.w	r3, r4, #7
 8002dee:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002df2:	f103 0208 	add.w	r2, r3, #8
 8002df6:	9209      	str	r2, [sp, #36]	; 0x24
 8002df8:	2c00      	cmp	r4, #0
 8002dfa:	f175 0300 	sbcs.w	r3, r5, #0
 8002dfe:	f2c0 84d1 	blt.w	80037a4 <_vfprintf_r+0xccc>
 8002e02:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8002e06:	9b04      	ldr	r3, [sp, #16]
 8002e08:	3301      	adds	r3, #1
 8002e0a:	f000 842f 	beq.w	800366c <_vfprintf_r+0xb94>
 8002e0e:	2301      	movs	r3, #1
 8002e10:	f028 0280 	bic.w	r2, r8, #128	; 0x80
 8002e14:	9202      	str	r2, [sp, #8]
 8002e16:	ea54 0205 	orrs.w	r2, r4, r5
 8002e1a:	f040 8177 	bne.w	800310c <_vfprintf_r+0x634>
 8002e1e:	9a04      	ldr	r2, [sp, #16]
 8002e20:	2a00      	cmp	r2, #0
 8002e22:	f040 857b 	bne.w	800391c <_vfprintf_r+0xe44>
 8002e26:	2b00      	cmp	r3, #0
 8002e28:	f040 8487 	bne.w	800373a <_vfprintf_r+0xc62>
 8002e2c:	f018 0301 	ands.w	r3, r8, #1
 8002e30:	9308      	str	r3, [sp, #32]
 8002e32:	f000 85a0 	beq.w	8003976 <_vfprintf_r+0xe9e>
 8002e36:	ab3e      	add	r3, sp, #248	; 0xf8
 8002e38:	461a      	mov	r2, r3
 8002e3a:	2330      	movs	r3, #48	; 0x30
 8002e3c:	f802 3d41 	strb.w	r3, [r2, #-65]!
 8002e40:	920a      	str	r2, [sp, #40]	; 0x28
 8002e42:	9b04      	ldr	r3, [sp, #16]
 8002e44:	9a08      	ldr	r2, [sp, #32]
 8002e46:	4293      	cmp	r3, r2
 8002e48:	bfb8      	it	lt
 8002e4a:	4613      	movlt	r3, r2
 8002e4c:	9303      	str	r3, [sp, #12]
 8002e4e:	2300      	movs	r3, #0
 8002e50:	930b      	str	r3, [sp, #44]	; 0x2c
 8002e52:	b117      	cbz	r7, 8002e5a <_vfprintf_r+0x382>
 8002e54:	9b03      	ldr	r3, [sp, #12]
 8002e56:	3301      	adds	r3, #1
 8002e58:	9303      	str	r3, [sp, #12]
 8002e5a:	9b02      	ldr	r3, [sp, #8]
 8002e5c:	f013 0302 	ands.w	r3, r3, #2
 8002e60:	d002      	beq.n	8002e68 <_vfprintf_r+0x390>
 8002e62:	9a03      	ldr	r2, [sp, #12]
 8002e64:	3202      	adds	r2, #2
 8002e66:	9203      	str	r2, [sp, #12]
 8002e68:	9a02      	ldr	r2, [sp, #8]
 8002e6a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8002e6c:	f012 0884 	ands.w	r8, r2, #132	; 0x84
 8002e70:	d142      	bne.n	8002ef8 <_vfprintf_r+0x420>
 8002e72:	9a07      	ldr	r2, [sp, #28]
 8002e74:	9903      	ldr	r1, [sp, #12]
 8002e76:	1a55      	subs	r5, r2, r1
 8002e78:	2d00      	cmp	r5, #0
 8002e7a:	dd3d      	ble.n	8002ef8 <_vfprintf_r+0x420>
 8002e7c:	2d10      	cmp	r5, #16
 8002e7e:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8002e80:	dd2c      	ble.n	8002edc <_vfprintf_r+0x404>
 8002e82:	4648      	mov	r0, r9
 8002e84:	4621      	mov	r1, r4
 8002e86:	46a9      	mov	r9, r5
 8002e88:	2710      	movs	r7, #16
 8002e8a:	461d      	mov	r5, r3
 8002e8c:	9c06      	ldr	r4, [sp, #24]
 8002e8e:	4603      	mov	r3, r0
 8002e90:	e006      	b.n	8002ea0 <_vfprintf_r+0x3c8>
 8002e92:	f1a9 0910 	sub.w	r9, r9, #16
 8002e96:	f1b9 0f10 	cmp.w	r9, #16
 8002e9a:	f103 0308 	add.w	r3, r3, #8
 8002e9e:	dd18      	ble.n	8002ed2 <_vfprintf_r+0x3fa>
 8002ea0:	3201      	adds	r2, #1
 8002ea2:	48c0      	ldr	r0, [pc, #768]	; (80031a4 <_vfprintf_r+0x6cc>)
 8002ea4:	3110      	adds	r1, #16
 8002ea6:	2a07      	cmp	r2, #7
 8002ea8:	e9cd 2122 	strd	r2, r1, [sp, #136]	; 0x88
 8002eac:	e9c3 0700 	strd	r0, r7, [r3]
 8002eb0:	ddef      	ble.n	8002e92 <_vfprintf_r+0x3ba>
 8002eb2:	aa21      	add	r2, sp, #132	; 0x84
 8002eb4:	4659      	mov	r1, fp
 8002eb6:	4620      	mov	r0, r4
 8002eb8:	f003 fb6c 	bl	8006594 <__sprint_r>
 8002ebc:	2800      	cmp	r0, #0
 8002ebe:	f47f af5e 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8002ec2:	f1a9 0910 	sub.w	r9, r9, #16
 8002ec6:	f1b9 0f10 	cmp.w	r9, #16
 8002eca:	e9dd 2122 	ldrd	r2, r1, [sp, #136]	; 0x88
 8002ece:	ab2e      	add	r3, sp, #184	; 0xb8
 8002ed0:	dce6      	bgt.n	8002ea0 <_vfprintf_r+0x3c8>
 8002ed2:	4618      	mov	r0, r3
 8002ed4:	460c      	mov	r4, r1
 8002ed6:	462b      	mov	r3, r5
 8002ed8:	464d      	mov	r5, r9
 8002eda:	4681      	mov	r9, r0
 8002edc:	3201      	adds	r2, #1
 8002ede:	49b1      	ldr	r1, [pc, #708]	; (80031a4 <_vfprintf_r+0x6cc>)
 8002ee0:	442c      	add	r4, r5
 8002ee2:	2a07      	cmp	r2, #7
 8002ee4:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8002ee8:	e9c9 1500 	strd	r1, r5, [r9]
 8002eec:	f300 8487 	bgt.w	80037fe <_vfprintf_r+0xd26>
 8002ef0:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8002ef4:	f109 0908 	add.w	r9, r9, #8
 8002ef8:	b177      	cbz	r7, 8002f18 <_vfprintf_r+0x440>
 8002efa:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8002efc:	3201      	adds	r2, #1
 8002efe:	3401      	adds	r4, #1
 8002f00:	f10d 0067 	add.w	r0, sp, #103	; 0x67
 8002f04:	2101      	movs	r1, #1
 8002f06:	2a07      	cmp	r2, #7
 8002f08:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8002f0c:	e9c9 0100 	strd	r0, r1, [r9]
 8002f10:	f300 8392 	bgt.w	8003638 <_vfprintf_r+0xb60>
 8002f14:	f109 0908 	add.w	r9, r9, #8
 8002f18:	b16b      	cbz	r3, 8002f36 <_vfprintf_r+0x45e>
 8002f1a:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8002f1c:	3301      	adds	r3, #1
 8002f1e:	3402      	adds	r4, #2
 8002f20:	a91a      	add	r1, sp, #104	; 0x68
 8002f22:	2202      	movs	r2, #2
 8002f24:	2b07      	cmp	r3, #7
 8002f26:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8002f2a:	e9c9 1200 	strd	r1, r2, [r9]
 8002f2e:	f300 8391 	bgt.w	8003654 <_vfprintf_r+0xb7c>
 8002f32:	f109 0908 	add.w	r9, r9, #8
 8002f36:	f1b8 0f80 	cmp.w	r8, #128	; 0x80
 8002f3a:	f000 82d0 	beq.w	80034de <_vfprintf_r+0xa06>
 8002f3e:	9b04      	ldr	r3, [sp, #16]
 8002f40:	9a08      	ldr	r2, [sp, #32]
 8002f42:	1a9d      	subs	r5, r3, r2
 8002f44:	2d00      	cmp	r5, #0
 8002f46:	dd33      	ble.n	8002fb0 <_vfprintf_r+0x4d8>
 8002f48:	2d10      	cmp	r5, #16
 8002f4a:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8002f4c:	f8df 825c 	ldr.w	r8, [pc, #604]	; 80031ac <_vfprintf_r+0x6d4>
 8002f50:	dd23      	ble.n	8002f9a <_vfprintf_r+0x4c2>
 8002f52:	4623      	mov	r3, r4
 8002f54:	2710      	movs	r7, #16
 8002f56:	4644      	mov	r4, r8
 8002f58:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8002f5c:	e004      	b.n	8002f68 <_vfprintf_r+0x490>
 8002f5e:	3d10      	subs	r5, #16
 8002f60:	2d10      	cmp	r5, #16
 8002f62:	f109 0908 	add.w	r9, r9, #8
 8002f66:	dd16      	ble.n	8002f96 <_vfprintf_r+0x4be>
 8002f68:	3201      	adds	r2, #1
 8002f6a:	3310      	adds	r3, #16
 8002f6c:	2a07      	cmp	r2, #7
 8002f6e:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 8002f72:	e9c9 4700 	strd	r4, r7, [r9]
 8002f76:	ddf2      	ble.n	8002f5e <_vfprintf_r+0x486>
 8002f78:	aa21      	add	r2, sp, #132	; 0x84
 8002f7a:	4659      	mov	r1, fp
 8002f7c:	4640      	mov	r0, r8
 8002f7e:	f003 fb09 	bl	8006594 <__sprint_r>
 8002f82:	2800      	cmp	r0, #0
 8002f84:	f47f aefb 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8002f88:	3d10      	subs	r5, #16
 8002f8a:	2d10      	cmp	r5, #16
 8002f8c:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 8002f90:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8002f94:	dce8      	bgt.n	8002f68 <_vfprintf_r+0x490>
 8002f96:	46a0      	mov	r8, r4
 8002f98:	461c      	mov	r4, r3
 8002f9a:	3201      	adds	r2, #1
 8002f9c:	442c      	add	r4, r5
 8002f9e:	2a07      	cmp	r2, #7
 8002fa0:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8002fa4:	e9c9 8500 	strd	r8, r5, [r9]
 8002fa8:	f300 8372 	bgt.w	8003690 <_vfprintf_r+0xbb8>
 8002fac:	f109 0908 	add.w	r9, r9, #8
 8002fb0:	9b02      	ldr	r3, [sp, #8]
 8002fb2:	05dd      	lsls	r5, r3, #23
 8002fb4:	f100 8227 	bmi.w	8003406 <_vfprintf_r+0x92e>
 8002fb8:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8002fba:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8002fbc:	f8c9 2000 	str.w	r2, [r9]
 8002fc0:	9a08      	ldr	r2, [sp, #32]
 8002fc2:	f8c9 2004 	str.w	r2, [r9, #4]
 8002fc6:	3301      	adds	r3, #1
 8002fc8:	4414      	add	r4, r2
 8002fca:	2b07      	cmp	r3, #7
 8002fcc:	9423      	str	r4, [sp, #140]	; 0x8c
 8002fce:	9322      	str	r3, [sp, #136]	; 0x88
 8002fd0:	f300 830f 	bgt.w	80035f2 <_vfprintf_r+0xb1a>
 8002fd4:	f109 0908 	add.w	r9, r9, #8
 8002fd8:	9b02      	ldr	r3, [sp, #8]
 8002fda:	0758      	lsls	r0, r3, #29
 8002fdc:	d539      	bpl.n	8003052 <_vfprintf_r+0x57a>
 8002fde:	9b07      	ldr	r3, [sp, #28]
 8002fe0:	9a03      	ldr	r2, [sp, #12]
 8002fe2:	1a9d      	subs	r5, r3, r2
 8002fe4:	2d00      	cmp	r5, #0
 8002fe6:	dd34      	ble.n	8003052 <_vfprintf_r+0x57a>
 8002fe8:	2d10      	cmp	r5, #16
 8002fea:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8002fec:	dd1f      	ble.n	800302e <_vfprintf_r+0x556>
 8002fee:	2610      	movs	r6, #16
 8002ff0:	9f06      	ldr	r7, [sp, #24]
 8002ff2:	e004      	b.n	8002ffe <_vfprintf_r+0x526>
 8002ff4:	3d10      	subs	r5, #16
 8002ff6:	2d10      	cmp	r5, #16
 8002ff8:	f109 0908 	add.w	r9, r9, #8
 8002ffc:	dd17      	ble.n	800302e <_vfprintf_r+0x556>
 8002ffe:	3301      	adds	r3, #1
 8003000:	4a68      	ldr	r2, [pc, #416]	; (80031a4 <_vfprintf_r+0x6cc>)
 8003002:	3410      	adds	r4, #16
 8003004:	2b07      	cmp	r3, #7
 8003006:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 800300a:	e9c9 2600 	strd	r2, r6, [r9]
 800300e:	ddf1      	ble.n	8002ff4 <_vfprintf_r+0x51c>
 8003010:	aa21      	add	r2, sp, #132	; 0x84
 8003012:	4659      	mov	r1, fp
 8003014:	4638      	mov	r0, r7
 8003016:	f003 fabd 	bl	8006594 <__sprint_r>
 800301a:	2800      	cmp	r0, #0
 800301c:	f47f aeaf 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003020:	3d10      	subs	r5, #16
 8003022:	2d10      	cmp	r5, #16
 8003024:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 8003028:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800302c:	dce7      	bgt.n	8002ffe <_vfprintf_r+0x526>
 800302e:	3301      	adds	r3, #1
 8003030:	4a5c      	ldr	r2, [pc, #368]	; (80031a4 <_vfprintf_r+0x6cc>)
 8003032:	442c      	add	r4, r5
 8003034:	2b07      	cmp	r3, #7
 8003036:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 800303a:	e9c9 2500 	strd	r2, r5, [r9]
 800303e:	dd08      	ble.n	8003052 <_vfprintf_r+0x57a>
 8003040:	aa21      	add	r2, sp, #132	; 0x84
 8003042:	4659      	mov	r1, fp
 8003044:	9806      	ldr	r0, [sp, #24]
 8003046:	f003 faa5 	bl	8006594 <__sprint_r>
 800304a:	2800      	cmp	r0, #0
 800304c:	f47f ae97 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003050:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003052:	9b05      	ldr	r3, [sp, #20]
 8003054:	9a07      	ldr	r2, [sp, #28]
 8003056:	9903      	ldr	r1, [sp, #12]
 8003058:	428a      	cmp	r2, r1
 800305a:	bfac      	ite	ge
 800305c:	189b      	addge	r3, r3, r2
 800305e:	185b      	addlt	r3, r3, r1
 8003060:	9305      	str	r3, [sp, #20]
 8003062:	2c00      	cmp	r4, #0
 8003064:	f47f ae83 	bne.w	8002d6e <_vfprintf_r+0x296>
 8003068:	2300      	movs	r3, #0
 800306a:	9322      	str	r3, [sp, #136]	; 0x88
 800306c:	f89a 3000 	ldrb.w	r3, [sl]
 8003070:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003074:	2b00      	cmp	r3, #0
 8003076:	f47f ad7d 	bne.w	8002b74 <_vfprintf_r+0x9c>
 800307a:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 800307c:	46d8      	mov	r8, fp
 800307e:	2b00      	cmp	r3, #0
 8003080:	f040 86ba 	bne.w	8003df8 <_vfprintf_r+0x1320>
 8003084:	2300      	movs	r3, #0
 8003086:	9322      	str	r3, [sp, #136]	; 0x88
 8003088:	e67a      	b.n	8002d80 <_vfprintf_r+0x2a8>
 800308a:	f048 0840 	orr.w	r8, r8, #64	; 0x40
 800308e:	f89a 6000 	ldrb.w	r6, [sl]
 8003092:	e59f      	b.n	8002bd4 <_vfprintf_r+0xfc>
 8003094:	f89a 6000 	ldrb.w	r6, [sl]
 8003098:	2e6c      	cmp	r6, #108	; 0x6c
 800309a:	bf03      	ittte	eq
 800309c:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80030a0:	f048 0820 	orreq.w	r8, r8, #32
 80030a4:	f10a 0a01 	addeq.w	sl, sl, #1
 80030a8:	f048 0810 	orrne.w	r8, r8, #16
 80030ac:	e592      	b.n	8002bd4 <_vfprintf_r+0xfc>
 80030ae:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80030b2:	f89a 6000 	ldrb.w	r6, [sl]
 80030b6:	e58d      	b.n	8002bd4 <_vfprintf_r+0xfc>
 80030b8:	2a00      	cmp	r2, #0
 80030ba:	f040 877e 	bne.w	8003fba <_vfprintf_r+0x14e2>
 80030be:	4b3a      	ldr	r3, [pc, #232]	; (80031a8 <_vfprintf_r+0x6d0>)
 80030c0:	9311      	str	r3, [sp, #68]	; 0x44
 80030c2:	f018 0f20 	tst.w	r8, #32
 80030c6:	d07b      	beq.n	80031c0 <_vfprintf_r+0x6e8>
 80030c8:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80030ca:	3407      	adds	r4, #7
 80030cc:	f024 0307 	bic.w	r3, r4, #7
 80030d0:	e9d3 4500 	ldrd	r4, r5, [r3]
 80030d4:	f103 0208 	add.w	r2, r3, #8
 80030d8:	9209      	str	r2, [sp, #36]	; 0x24
 80030da:	f018 0f01 	tst.w	r8, #1
 80030de:	f000 82d5 	beq.w	800368c <_vfprintf_r+0xbb4>
 80030e2:	ea54 0305 	orrs.w	r3, r4, r5
 80030e6:	f000 82d1 	beq.w	800368c <_vfprintf_r+0xbb4>
 80030ea:	2330      	movs	r3, #48	; 0x30
 80030ec:	f88d 3068 	strb.w	r3, [sp, #104]	; 0x68
 80030f0:	f88d 6069 	strb.w	r6, [sp, #105]	; 0x69
 80030f4:	f048 0802 	orr.w	r8, r8, #2
 80030f8:	2302      	movs	r3, #2
 80030fa:	9a04      	ldr	r2, [sp, #16]
 80030fc:	2700      	movs	r7, #0
 80030fe:	3201      	adds	r2, #1
 8003100:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8003104:	f47f ae84 	bne.w	8002e10 <_vfprintf_r+0x338>
 8003108:	f8cd 8008 	str.w	r8, [sp, #8]
 800310c:	2b01      	cmp	r3, #1
 800310e:	f000 82af 	beq.w	8003670 <_vfprintf_r+0xb98>
 8003112:	2b02      	cmp	r3, #2
 8003114:	f000 8279 	beq.w	800360a <_vfprintf_r+0xb32>
 8003118:	a92e      	add	r1, sp, #184	; 0xb8
 800311a:	e000      	b.n	800311e <_vfprintf_r+0x646>
 800311c:	4611      	mov	r1, r2
 800311e:	08e2      	lsrs	r2, r4, #3
 8003120:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8003124:	08e8      	lsrs	r0, r5, #3
 8003126:	f004 0307 	and.w	r3, r4, #7
 800312a:	4605      	mov	r5, r0
 800312c:	4614      	mov	r4, r2
 800312e:	3330      	adds	r3, #48	; 0x30
 8003130:	ea54 0005 	orrs.w	r0, r4, r5
 8003134:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003138:	f101 32ff 	add.w	r2, r1, #4294967295
 800313c:	d1ee      	bne.n	800311c <_vfprintf_r+0x644>
 800313e:	9802      	ldr	r0, [sp, #8]
 8003140:	920a      	str	r2, [sp, #40]	; 0x28
 8003142:	07c0      	lsls	r0, r0, #31
 8003144:	f140 8274 	bpl.w	8003630 <_vfprintf_r+0xb58>
 8003148:	2b30      	cmp	r3, #48	; 0x30
 800314a:	f000 8555 	beq.w	8003bf8 <_vfprintf_r+0x1120>
 800314e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003150:	2330      	movs	r3, #48	; 0x30
 8003152:	3902      	subs	r1, #2
 8003154:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003158:	ab2e      	add	r3, sp, #184	; 0xb8
 800315a:	1a5b      	subs	r3, r3, r1
 800315c:	9308      	str	r3, [sp, #32]
 800315e:	910a      	str	r1, [sp, #40]	; 0x28
 8003160:	e66f      	b.n	8002e42 <_vfprintf_r+0x36a>
 8003162:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003164:	2300      	movs	r3, #0
 8003166:	680a      	ldr	r2, [r1, #0]
 8003168:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 800316c:	461f      	mov	r7, r3
 800316e:	f88d 2090 	strb.w	r2, [sp, #144]	; 0x90
 8003172:	2301      	movs	r3, #1
 8003174:	1d0a      	adds	r2, r1, #4
 8003176:	e9cd 8302 	strd	r8, r3, [sp, #8]
 800317a:	e9cd 3208 	strd	r3, r2, [sp, #32]
 800317e:	ab24      	add	r3, sp, #144	; 0x90
 8003180:	9704      	str	r7, [sp, #16]
 8003182:	970b      	str	r7, [sp, #44]	; 0x2c
 8003184:	930a      	str	r3, [sp, #40]	; 0x28
 8003186:	e668      	b.n	8002e5a <_vfprintf_r+0x382>
 8003188:	f89a 6000 	ldrb.w	r6, [sl]
 800318c:	2900      	cmp	r1, #0
 800318e:	f47f ad21 	bne.w	8002bd4 <_vfprintf_r+0xfc>
 8003192:	2201      	movs	r2, #1
 8003194:	2120      	movs	r1, #32
 8003196:	e51d      	b.n	8002bd4 <_vfprintf_r+0xfc>
 8003198:	f048 0801 	orr.w	r8, r8, #1
 800319c:	f89a 6000 	ldrb.w	r6, [sl]
 80031a0:	e518      	b.n	8002bd4 <_vfprintf_r+0xfc>
 80031a2:	bf00      	nop
 80031a4:	08007c6c 	.word	0x08007c6c
 80031a8:	08007c38 	.word	0x08007c38
 80031ac:	08007c7c 	.word	0x08007c7c
 80031b0:	2a00      	cmp	r2, #0
 80031b2:	f040 870a 	bne.w	8003fca <_vfprintf_r+0x14f2>
 80031b6:	4bb6      	ldr	r3, [pc, #728]	; (8003490 <_vfprintf_r+0x9b8>)
 80031b8:	9311      	str	r3, [sp, #68]	; 0x44
 80031ba:	f018 0f20 	tst.w	r8, #32
 80031be:	d183      	bne.n	80030c8 <_vfprintf_r+0x5f0>
 80031c0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80031c2:	f018 0f10 	tst.w	r8, #16
 80031c6:	f853 4b04 	ldr.w	r4, [r3], #4
 80031ca:	9309      	str	r3, [sp, #36]	; 0x24
 80031cc:	f040 82f2 	bne.w	80037b4 <_vfprintf_r+0xcdc>
 80031d0:	f018 0f40 	tst.w	r8, #64	; 0x40
 80031d4:	f000 82ee 	beq.w	80037b4 <_vfprintf_r+0xcdc>
 80031d8:	b2a4      	uxth	r4, r4
 80031da:	2500      	movs	r5, #0
 80031dc:	e77d      	b.n	80030da <_vfprintf_r+0x602>
 80031de:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80031e0:	6813      	ldr	r3, [r2, #0]
 80031e2:	930a      	str	r3, [sp, #40]	; 0x28
 80031e4:	2500      	movs	r5, #0
 80031e6:	f88d 5067 	strb.w	r5, [sp, #103]	; 0x67
 80031ea:	1d14      	adds	r4, r2, #4
 80031ec:	2b00      	cmp	r3, #0
 80031ee:	f000 84e6 	beq.w	8003bbe <_vfprintf_r+0x10e6>
 80031f2:	9a04      	ldr	r2, [sp, #16]
 80031f4:	1c53      	adds	r3, r2, #1
 80031f6:	f000 8540 	beq.w	8003c7a <_vfprintf_r+0x11a2>
 80031fa:	4629      	mov	r1, r5
 80031fc:	980a      	ldr	r0, [sp, #40]	; 0x28
 80031fe:	f002 fd47 	bl	8005c90 <memchr>
 8003202:	2800      	cmp	r0, #0
 8003204:	f000 84ae 	beq.w	8003b64 <_vfprintf_r+0x108c>
 8003208:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800320a:	9504      	str	r5, [sp, #16]
 800320c:	1ac3      	subs	r3, r0, r3
 800320e:	9308      	str	r3, [sp, #32]
 8003210:	9409      	str	r4, [sp, #36]	; 0x24
 8003212:	f8cd 8008 	str.w	r8, [sp, #8]
 8003216:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800321a:	9303      	str	r3, [sp, #12]
 800321c:	950b      	str	r5, [sp, #44]	; 0x2c
 800321e:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8003222:	e616      	b.n	8002e52 <_vfprintf_r+0x37a>
 8003224:	2a00      	cmp	r2, #0
 8003226:	f040 86bc 	bne.w	8003fa2 <_vfprintf_r+0x14ca>
 800322a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800322c:	f018 0f20 	tst.w	r8, #32
 8003230:	f852 3b04 	ldr.w	r3, [r2], #4
 8003234:	9209      	str	r2, [sp, #36]	; 0x24
 8003236:	f000 83a2 	beq.w	800397e <_vfprintf_r+0xea6>
 800323a:	9a05      	ldr	r2, [sp, #20]
 800323c:	4610      	mov	r0, r2
 800323e:	17d1      	asrs	r1, r2, #31
 8003240:	e9c3 0100 	strd	r0, r1, [r3]
 8003244:	e491      	b.n	8002b6a <_vfprintf_r+0x92>
 8003246:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003248:	f89a 6000 	ldrb.w	r6, [sl]
 800324c:	6818      	ldr	r0, [r3, #0]
 800324e:	9007      	str	r0, [sp, #28]
 8003250:	2800      	cmp	r0, #0
 8003252:	f103 0304 	add.w	r3, r3, #4
 8003256:	f2c0 845d 	blt.w	8003b14 <_vfprintf_r+0x103c>
 800325a:	9309      	str	r3, [sp, #36]	; 0x24
 800325c:	e4ba      	b.n	8002bd4 <_vfprintf_r+0xfc>
 800325e:	f89a 6000 	ldrb.w	r6, [sl]
 8003262:	2201      	movs	r2, #1
 8003264:	212b      	movs	r1, #43	; 0x2b
 8003266:	e4b5      	b.n	8002bd4 <_vfprintf_r+0xfc>
 8003268:	2a00      	cmp	r2, #0
 800326a:	f040 869e 	bne.w	8003faa <_vfprintf_r+0x14d2>
 800326e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8003270:	3407      	adds	r4, #7
 8003272:	f024 0407 	bic.w	r4, r4, #7
 8003276:	ed94 7b00 	vldr	d7, [r4]
 800327a:	ec52 1b17 	vmov	r1, r2, d7
 800327e:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003282:	9313      	str	r3, [sp, #76]	; 0x4c
 8003284:	ed8d 7a12 	vstr	s14, [sp, #72]	; 0x48
 8003288:	3408      	adds	r4, #8
 800328a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800328e:	f04f 32ff 	mov.w	r2, #4294967295
 8003292:	4b80      	ldr	r3, [pc, #512]	; (8003494 <_vfprintf_r+0x9bc>)
 8003294:	9409      	str	r4, [sp, #36]	; 0x24
 8003296:	ed8d 7b0c 	vstr	d7, [sp, #48]	; 0x30
 800329a:	f004 fc15 	bl	8007ac8 <__aeabi_dcmpun>
 800329e:	2800      	cmp	r0, #0
 80032a0:	f040 837c 	bne.w	800399c <_vfprintf_r+0xec4>
 80032a4:	f04f 32ff 	mov.w	r2, #4294967295
 80032a8:	4b7a      	ldr	r3, [pc, #488]	; (8003494 <_vfprintf_r+0x9bc>)
 80032aa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032ae:	f004 fbed 	bl	8007a8c <__aeabi_dcmple>
 80032b2:	2800      	cmp	r0, #0
 80032b4:	f040 8372 	bne.w	800399c <_vfprintf_r+0xec4>
 80032b8:	2200      	movs	r2, #0
 80032ba:	2300      	movs	r3, #0
 80032bc:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80032c0:	f004 fbda 	bl	8007a78 <__aeabi_dcmplt>
 80032c4:	2800      	cmp	r0, #0
 80032c6:	f040 8429 	bne.w	8003b1c <_vfprintf_r+0x1044>
 80032ca:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 80032ce:	4a72      	ldr	r2, [pc, #456]	; (8003498 <_vfprintf_r+0x9c0>)
 80032d0:	4b72      	ldr	r3, [pc, #456]	; (800349c <_vfprintf_r+0x9c4>)
 80032d2:	2103      	movs	r1, #3
 80032d4:	2000      	movs	r0, #0
 80032d6:	f028 0480 	bic.w	r4, r8, #128	; 0x80
 80032da:	2e47      	cmp	r6, #71	; 0x47
 80032dc:	bfd8      	it	le
 80032de:	461a      	movle	r2, r3
 80032e0:	e9cd 1003 	strd	r1, r0, [sp, #12]
 80032e4:	9402      	str	r4, [sp, #8]
 80032e6:	920a      	str	r2, [sp, #40]	; 0x28
 80032e8:	9108      	str	r1, [sp, #32]
 80032ea:	900b      	str	r0, [sp, #44]	; 0x2c
 80032ec:	e5b1      	b.n	8002e52 <_vfprintf_r+0x37a>
 80032ee:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80032f0:	4b67      	ldr	r3, [pc, #412]	; (8003490 <_vfprintf_r+0x9b8>)
 80032f2:	6814      	ldr	r4, [r2, #0]
 80032f4:	9311      	str	r3, [sp, #68]	; 0x44
 80032f6:	3204      	adds	r2, #4
 80032f8:	f647 0330 	movw	r3, #30768	; 0x7830
 80032fc:	f8ad 3068 	strh.w	r3, [sp, #104]	; 0x68
 8003300:	f048 0802 	orr.w	r8, r8, #2
 8003304:	9209      	str	r2, [sp, #36]	; 0x24
 8003306:	2500      	movs	r5, #0
 8003308:	2302      	movs	r3, #2
 800330a:	2678      	movs	r6, #120	; 0x78
 800330c:	e6f5      	b.n	80030fa <_vfprintf_r+0x622>
 800330e:	f048 0820 	orr.w	r8, r8, #32
 8003312:	f89a 6000 	ldrb.w	r6, [sl]
 8003316:	e45d      	b.n	8002bd4 <_vfprintf_r+0xfc>
 8003318:	f048 0808 	orr.w	r8, r8, #8
 800331c:	f89a 6000 	ldrb.w	r6, [sl]
 8003320:	e458      	b.n	8002bd4 <_vfprintf_r+0xfc>
 8003322:	f89a 6000 	ldrb.w	r6, [sl]
 8003326:	2e2a      	cmp	r6, #42	; 0x2a
 8003328:	f10a 0001 	add.w	r0, sl, #1
 800332c:	f000 860d 	beq.w	8003f4a <_vfprintf_r+0x1472>
 8003330:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003334:	2b09      	cmp	r3, #9
 8003336:	4682      	mov	sl, r0
 8003338:	f200 8507 	bhi.w	8003d4a <_vfprintf_r+0x1272>
 800333c:	2000      	movs	r0, #0
 800333e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003342:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8003346:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 800334a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800334e:	2b09      	cmp	r3, #9
 8003350:	d9f5      	bls.n	800333e <_vfprintf_r+0x866>
 8003352:	9004      	str	r0, [sp, #16]
 8003354:	e440      	b.n	8002bd8 <_vfprintf_r+0x100>
 8003356:	2a00      	cmp	r2, #0
 8003358:	f040 861f 	bne.w	8003f9a <_vfprintf_r+0x14c2>
 800335c:	f048 0810 	orr.w	r8, r8, #16
 8003360:	f018 0f20 	tst.w	r8, #32
 8003364:	f47f ad3f 	bne.w	8002de6 <_vfprintf_r+0x30e>
 8003368:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800336a:	f018 0f10 	tst.w	r8, #16
 800336e:	f853 4b04 	ldr.w	r4, [r3], #4
 8003372:	9309      	str	r3, [sp, #36]	; 0x24
 8003374:	f040 8210 	bne.w	8003798 <_vfprintf_r+0xcc0>
 8003378:	f018 0f40 	tst.w	r8, #64	; 0x40
 800337c:	f000 820c 	beq.w	8003798 <_vfprintf_r+0xcc0>
 8003380:	b224      	sxth	r4, r4
 8003382:	17e5      	asrs	r5, r4, #31
 8003384:	e538      	b.n	8002df8 <_vfprintf_r+0x320>
 8003386:	f89a 6000 	ldrb.w	r6, [sl]
 800338a:	f048 0804 	orr.w	r8, r8, #4
 800338e:	e421      	b.n	8002bd4 <_vfprintf_r+0xfc>
 8003390:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8003392:	3407      	adds	r4, #7
 8003394:	f024 0307 	bic.w	r3, r4, #7
 8003398:	f103 0208 	add.w	r2, r3, #8
 800339c:	e9d3 4500 	ldrd	r4, r5, [r3]
 80033a0:	9209      	str	r2, [sp, #36]	; 0x24
 80033a2:	2300      	movs	r3, #0
 80033a4:	e6a9      	b.n	80030fa <_vfprintf_r+0x622>
 80033a6:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80033a8:	3407      	adds	r4, #7
 80033aa:	f024 0307 	bic.w	r3, r4, #7
 80033ae:	f103 0208 	add.w	r2, r3, #8
 80033b2:	e9d3 4500 	ldrd	r4, r5, [r3]
 80033b6:	9209      	str	r2, [sp, #36]	; 0x24
 80033b8:	2301      	movs	r3, #1
 80033ba:	e69e      	b.n	80030fa <_vfprintf_r+0x622>
 80033bc:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 80033c0:	f002 f948 	bl	8005654 <__retarget_lock_release_recursive>
 80033c4:	f8b8 300c 	ldrh.w	r3, [r8, #12]
 80033c8:	e4e3      	b.n	8002d92 <_vfprintf_r+0x2ba>
 80033ca:	f8d8 0058 	ldr.w	r0, [r8, #88]	; 0x58
 80033ce:	f002 f941 	bl	8005654 <__retarget_lock_release_recursive>
 80033d2:	f04f 33ff 	mov.w	r3, #4294967295
 80033d6:	9305      	str	r3, [sp, #20]
 80033d8:	e4dd      	b.n	8002d96 <_vfprintf_r+0x2be>
 80033da:	2a00      	cmp	r2, #0
 80033dc:	f040 85f1 	bne.w	8003fc2 <_vfprintf_r+0x14ea>
 80033e0:	2e00      	cmp	r6, #0
 80033e2:	f43f ae4a 	beq.w	800307a <_vfprintf_r+0x5a2>
 80033e6:	2300      	movs	r3, #0
 80033e8:	2201      	movs	r2, #1
 80033ea:	461f      	mov	r7, r3
 80033ec:	f88d 3067 	strb.w	r3, [sp, #103]	; 0x67
 80033f0:	9304      	str	r3, [sp, #16]
 80033f2:	930b      	str	r3, [sp, #44]	; 0x2c
 80033f4:	ab24      	add	r3, sp, #144	; 0x90
 80033f6:	9203      	str	r2, [sp, #12]
 80033f8:	f88d 6090 	strb.w	r6, [sp, #144]	; 0x90
 80033fc:	f8cd 8008 	str.w	r8, [sp, #8]
 8003400:	9208      	str	r2, [sp, #32]
 8003402:	930a      	str	r3, [sp, #40]	; 0x28
 8003404:	e529      	b.n	8002e5a <_vfprintf_r+0x382>
 8003406:	2e65      	cmp	r6, #101	; 0x65
 8003408:	f340 80a4 	ble.w	8003554 <_vfprintf_r+0xa7c>
 800340c:	2200      	movs	r2, #0
 800340e:	2300      	movs	r3, #0
 8003410:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003414:	f004 fb26 	bl	8007a64 <__aeabi_dcmpeq>
 8003418:	2800      	cmp	r0, #0
 800341a:	f000 8145 	beq.w	80036a8 <_vfprintf_r+0xbd0>
 800341e:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8003420:	4a1f      	ldr	r2, [pc, #124]	; (80034a0 <_vfprintf_r+0x9c8>)
 8003422:	f8c9 2000 	str.w	r2, [r9]
 8003426:	3301      	adds	r3, #1
 8003428:	3401      	adds	r4, #1
 800342a:	2201      	movs	r2, #1
 800342c:	2b07      	cmp	r3, #7
 800342e:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8003432:	f8c9 2004 	str.w	r2, [r9, #4]
 8003436:	f300 8362 	bgt.w	8003afe <_vfprintf_r+0x1026>
 800343a:	f109 0908 	add.w	r9, r9, #8
 800343e:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003440:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8003442:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003444:	4293      	cmp	r3, r2
 8003446:	db03      	blt.n	8003450 <_vfprintf_r+0x978>
 8003448:	9b02      	ldr	r3, [sp, #8]
 800344a:	07d8      	lsls	r0, r3, #31
 800344c:	f57f adc4 	bpl.w	8002fd8 <_vfprintf_r+0x500>
 8003450:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8003452:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003454:	f8c9 2000 	str.w	r2, [r9]
 8003458:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800345a:	f8c9 2004 	str.w	r2, [r9, #4]
 800345e:	3301      	adds	r3, #1
 8003460:	4414      	add	r4, r2
 8003462:	2b07      	cmp	r3, #7
 8003464:	e9cd 3422 	strd	r3, r4, [sp, #136]	; 0x88
 8003468:	f300 839d 	bgt.w	8003ba6 <_vfprintf_r+0x10ce>
 800346c:	f109 0908 	add.w	r9, r9, #8
 8003470:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003472:	1e5d      	subs	r5, r3, #1
 8003474:	2d00      	cmp	r5, #0
 8003476:	f77f adaf 	ble.w	8002fd8 <_vfprintf_r+0x500>
 800347a:	2d10      	cmp	r5, #16
 800347c:	9a22      	ldr	r2, [sp, #136]	; 0x88
 800347e:	f8df 8024 	ldr.w	r8, [pc, #36]	; 80034a4 <_vfprintf_r+0x9cc>
 8003482:	f340 8250 	ble.w	8003926 <_vfprintf_r+0xe4e>
 8003486:	4647      	mov	r7, r8
 8003488:	2610      	movs	r6, #16
 800348a:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800348e:	e011      	b.n	80034b4 <_vfprintf_r+0x9dc>
 8003490:	08007c4c 	.word	0x08007c4c
 8003494:	7fefffff 	.word	0x7fefffff
 8003498:	08007c2c 	.word	0x08007c2c
 800349c:	08007c28 	.word	0x08007c28
 80034a0:	08007c68 	.word	0x08007c68
 80034a4:	08007c7c 	.word	0x08007c7c
 80034a8:	f109 0908 	add.w	r9, r9, #8
 80034ac:	3d10      	subs	r5, #16
 80034ae:	2d10      	cmp	r5, #16
 80034b0:	f340 8238 	ble.w	8003924 <_vfprintf_r+0xe4c>
 80034b4:	3201      	adds	r2, #1
 80034b6:	3410      	adds	r4, #16
 80034b8:	2a07      	cmp	r2, #7
 80034ba:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80034be:	e9c9 7600 	strd	r7, r6, [r9]
 80034c2:	ddf1      	ble.n	80034a8 <_vfprintf_r+0x9d0>
 80034c4:	aa21      	add	r2, sp, #132	; 0x84
 80034c6:	4659      	mov	r1, fp
 80034c8:	4640      	mov	r0, r8
 80034ca:	f003 f863 	bl	8006594 <__sprint_r>
 80034ce:	2800      	cmp	r0, #0
 80034d0:	f47f ac55 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 80034d4:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 80034d8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80034dc:	e7e6      	b.n	80034ac <_vfprintf_r+0x9d4>
 80034de:	9b07      	ldr	r3, [sp, #28]
 80034e0:	9a03      	ldr	r2, [sp, #12]
 80034e2:	1a9d      	subs	r5, r3, r2
 80034e4:	2d00      	cmp	r5, #0
 80034e6:	f77f ad2a 	ble.w	8002f3e <_vfprintf_r+0x466>
 80034ea:	2d10      	cmp	r5, #16
 80034ec:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80034ee:	f8df 886c 	ldr.w	r8, [pc, #2156]	; 8003d5c <_vfprintf_r+0x1284>
 80034f2:	dd23      	ble.n	800353c <_vfprintf_r+0xa64>
 80034f4:	4623      	mov	r3, r4
 80034f6:	2710      	movs	r7, #16
 80034f8:	4644      	mov	r4, r8
 80034fa:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80034fe:	e004      	b.n	800350a <_vfprintf_r+0xa32>
 8003500:	3d10      	subs	r5, #16
 8003502:	2d10      	cmp	r5, #16
 8003504:	f109 0908 	add.w	r9, r9, #8
 8003508:	dd16      	ble.n	8003538 <_vfprintf_r+0xa60>
 800350a:	3201      	adds	r2, #1
 800350c:	3310      	adds	r3, #16
 800350e:	2a07      	cmp	r2, #7
 8003510:	e9cd 2322 	strd	r2, r3, [sp, #136]	; 0x88
 8003514:	e9c9 4700 	strd	r4, r7, [r9]
 8003518:	ddf2      	ble.n	8003500 <_vfprintf_r+0xa28>
 800351a:	aa21      	add	r2, sp, #132	; 0x84
 800351c:	4659      	mov	r1, fp
 800351e:	4640      	mov	r0, r8
 8003520:	f003 f838 	bl	8006594 <__sprint_r>
 8003524:	2800      	cmp	r0, #0
 8003526:	f47f ac2a 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 800352a:	3d10      	subs	r5, #16
 800352c:	2d10      	cmp	r5, #16
 800352e:	e9dd 2322 	ldrd	r2, r3, [sp, #136]	; 0x88
 8003532:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003536:	dce8      	bgt.n	800350a <_vfprintf_r+0xa32>
 8003538:	46a0      	mov	r8, r4
 800353a:	461c      	mov	r4, r3
 800353c:	3201      	adds	r2, #1
 800353e:	442c      	add	r4, r5
 8003540:	2a07      	cmp	r2, #7
 8003542:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003546:	e9c9 8500 	strd	r8, r5, [r9]
 800354a:	f300 8296 	bgt.w	8003a7a <_vfprintf_r+0xfa2>
 800354e:	f109 0908 	add.w	r9, r9, #8
 8003552:	e4f4      	b.n	8002f3e <_vfprintf_r+0x466>
 8003554:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8003556:	9b22      	ldr	r3, [sp, #136]	; 0x88
 8003558:	2a01      	cmp	r2, #1
 800355a:	f104 0401 	add.w	r4, r4, #1
 800355e:	f103 0501 	add.w	r5, r3, #1
 8003562:	f109 0608 	add.w	r6, r9, #8
 8003566:	f340 8127 	ble.w	80037b8 <_vfprintf_r+0xce0>
 800356a:	2301      	movs	r3, #1
 800356c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800356e:	f8c9 2000 	str.w	r2, [r9]
 8003572:	2d07      	cmp	r5, #7
 8003574:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 8003578:	f8c9 3004 	str.w	r3, [r9, #4]
 800357c:	f300 81b6 	bgt.w	80038ec <_vfprintf_r+0xe14>
 8003580:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003582:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003584:	3501      	adds	r5, #1
 8003586:	441c      	add	r4, r3
 8003588:	2d07      	cmp	r5, #7
 800358a:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 800358e:	e9c6 2300 	strd	r2, r3, [r6]
 8003592:	f300 81b7 	bgt.w	8003904 <_vfprintf_r+0xe2c>
 8003596:	3608      	adds	r6, #8
 8003598:	1c6b      	adds	r3, r5, #1
 800359a:	461f      	mov	r7, r3
 800359c:	9704      	str	r7, [sp, #16]
 800359e:	9f0e      	ldr	r7, [sp, #56]	; 0x38
 80035a0:	9308      	str	r3, [sp, #32]
 80035a2:	2200      	movs	r2, #0
 80035a4:	2300      	movs	r3, #0
 80035a6:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80035aa:	3f01      	subs	r7, #1
 80035ac:	f106 0908 	add.w	r9, r6, #8
 80035b0:	f004 fa58 	bl	8007a64 <__aeabi_dcmpeq>
 80035b4:	2800      	cmp	r0, #0
 80035b6:	f040 80c6 	bne.w	8003746 <_vfprintf_r+0xc6e>
 80035ba:	443c      	add	r4, r7
 80035bc:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80035be:	6077      	str	r7, [r6, #4]
 80035c0:	9f04      	ldr	r7, [sp, #16]
 80035c2:	9423      	str	r4, [sp, #140]	; 0x8c
 80035c4:	3301      	adds	r3, #1
 80035c6:	2f07      	cmp	r7, #7
 80035c8:	6033      	str	r3, [r6, #0]
 80035ca:	9722      	str	r7, [sp, #136]	; 0x88
 80035cc:	f300 8107 	bgt.w	80037de <_vfprintf_r+0xd06>
 80035d0:	f106 0310 	add.w	r3, r6, #16
 80035d4:	1caa      	adds	r2, r5, #2
 80035d6:	464e      	mov	r6, r9
 80035d8:	9204      	str	r2, [sp, #16]
 80035da:	4699      	mov	r9, r3
 80035dc:	9a14      	ldr	r2, [sp, #80]	; 0x50
 80035de:	6072      	str	r2, [r6, #4]
 80035e0:	4414      	add	r4, r2
 80035e2:	9a04      	ldr	r2, [sp, #16]
 80035e4:	9423      	str	r4, [sp, #140]	; 0x8c
 80035e6:	ab1d      	add	r3, sp, #116	; 0x74
 80035e8:	2a07      	cmp	r2, #7
 80035ea:	9222      	str	r2, [sp, #136]	; 0x88
 80035ec:	6033      	str	r3, [r6, #0]
 80035ee:	f77f acf3 	ble.w	8002fd8 <_vfprintf_r+0x500>
 80035f2:	aa21      	add	r2, sp, #132	; 0x84
 80035f4:	4659      	mov	r1, fp
 80035f6:	9806      	ldr	r0, [sp, #24]
 80035f8:	f002 ffcc 	bl	8006594 <__sprint_r>
 80035fc:	2800      	cmp	r0, #0
 80035fe:	f47f abbe 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003602:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003604:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003608:	e4e6      	b.n	8002fd8 <_vfprintf_r+0x500>
 800360a:	f8dd c044 	ldr.w	ip, [sp, #68]	; 0x44
 800360e:	aa2e      	add	r2, sp, #184	; 0xb8
 8003610:	0923      	lsrs	r3, r4, #4
 8003612:	f004 000f 	and.w	r0, r4, #15
 8003616:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800361a:	0929      	lsrs	r1, r5, #4
 800361c:	461c      	mov	r4, r3
 800361e:	460d      	mov	r5, r1
 8003620:	f81c 3000 	ldrb.w	r3, [ip, r0]
 8003624:	f802 3d01 	strb.w	r3, [r2, #-1]!
 8003628:	ea54 0305 	orrs.w	r3, r4, r5
 800362c:	d1f0      	bne.n	8003610 <_vfprintf_r+0xb38>
 800362e:	920a      	str	r2, [sp, #40]	; 0x28
 8003630:	ab2e      	add	r3, sp, #184	; 0xb8
 8003632:	1a9b      	subs	r3, r3, r2
 8003634:	9308      	str	r3, [sp, #32]
 8003636:	e404      	b.n	8002e42 <_vfprintf_r+0x36a>
 8003638:	aa21      	add	r2, sp, #132	; 0x84
 800363a:	4659      	mov	r1, fp
 800363c:	9806      	ldr	r0, [sp, #24]
 800363e:	9315      	str	r3, [sp, #84]	; 0x54
 8003640:	f002 ffa8 	bl	8006594 <__sprint_r>
 8003644:	2800      	cmp	r0, #0
 8003646:	f47f ab9a 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 800364a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 800364c:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800364e:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003652:	e461      	b.n	8002f18 <_vfprintf_r+0x440>
 8003654:	aa21      	add	r2, sp, #132	; 0x84
 8003656:	4659      	mov	r1, fp
 8003658:	9806      	ldr	r0, [sp, #24]
 800365a:	f002 ff9b 	bl	8006594 <__sprint_r>
 800365e:	2800      	cmp	r0, #0
 8003660:	f47f ab8d 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003664:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003666:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800366a:	e464      	b.n	8002f36 <_vfprintf_r+0x45e>
 800366c:	f8cd 8008 	str.w	r8, [sp, #8]
 8003670:	2d00      	cmp	r5, #0
 8003672:	bf08      	it	eq
 8003674:	2c0a      	cmpeq	r4, #10
 8003676:	f080 8160 	bcs.w	800393a <_vfprintf_r+0xe62>
 800367a:	ab3e      	add	r3, sp, #248	; 0xf8
 800367c:	3430      	adds	r4, #48	; 0x30
 800367e:	f803 4d41 	strb.w	r4, [r3, #-65]!
 8003682:	930a      	str	r3, [sp, #40]	; 0x28
 8003684:	2301      	movs	r3, #1
 8003686:	9308      	str	r3, [sp, #32]
 8003688:	f7ff bbdb 	b.w	8002e42 <_vfprintf_r+0x36a>
 800368c:	2302      	movs	r3, #2
 800368e:	e534      	b.n	80030fa <_vfprintf_r+0x622>
 8003690:	aa21      	add	r2, sp, #132	; 0x84
 8003692:	4659      	mov	r1, fp
 8003694:	9806      	ldr	r0, [sp, #24]
 8003696:	f002 ff7d 	bl	8006594 <__sprint_r>
 800369a:	2800      	cmp	r0, #0
 800369c:	f47f ab6f 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 80036a0:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 80036a2:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80036a6:	e483      	b.n	8002fb0 <_vfprintf_r+0x4d8>
 80036a8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80036aa:	2b00      	cmp	r3, #0
 80036ac:	f340 81f2 	ble.w	8003a94 <_vfprintf_r+0xfbc>
 80036b0:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80036b2:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80036b4:	4293      	cmp	r3, r2
 80036b6:	bfa8      	it	ge
 80036b8:	4613      	movge	r3, r2
 80036ba:	2b00      	cmp	r3, #0
 80036bc:	461d      	mov	r5, r3
 80036be:	dd0e      	ble.n	80036de <_vfprintf_r+0xc06>
 80036c0:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80036c2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80036c4:	f8c9 2000 	str.w	r2, [r9]
 80036c8:	3301      	adds	r3, #1
 80036ca:	442c      	add	r4, r5
 80036cc:	2b07      	cmp	r3, #7
 80036ce:	9423      	str	r4, [sp, #140]	; 0x8c
 80036d0:	f8c9 5004 	str.w	r5, [r9, #4]
 80036d4:	9322      	str	r3, [sp, #136]	; 0x88
 80036d6:	f300 82f3 	bgt.w	8003cc0 <_vfprintf_r+0x11e8>
 80036da:	f109 0908 	add.w	r9, r9, #8
 80036de:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80036e0:	2d00      	cmp	r5, #0
 80036e2:	bfa8      	it	ge
 80036e4:	1b5b      	subge	r3, r3, r5
 80036e6:	2b00      	cmp	r3, #0
 80036e8:	461d      	mov	r5, r3
 80036ea:	f340 80a4 	ble.w	8003836 <_vfprintf_r+0xd5e>
 80036ee:	2b10      	cmp	r3, #16
 80036f0:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80036f2:	f8df 8668 	ldr.w	r8, [pc, #1640]	; 8003d5c <_vfprintf_r+0x1284>
 80036f6:	f340 8273 	ble.w	8003be0 <_vfprintf_r+0x1108>
 80036fa:	4647      	mov	r7, r8
 80036fc:	2610      	movs	r6, #16
 80036fe:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003702:	e005      	b.n	8003710 <_vfprintf_r+0xc38>
 8003704:	f109 0908 	add.w	r9, r9, #8
 8003708:	3d10      	subs	r5, #16
 800370a:	2d10      	cmp	r5, #16
 800370c:	f340 8267 	ble.w	8003bde <_vfprintf_r+0x1106>
 8003710:	3201      	adds	r2, #1
 8003712:	3410      	adds	r4, #16
 8003714:	2a07      	cmp	r2, #7
 8003716:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800371a:	e9c9 7600 	strd	r7, r6, [r9]
 800371e:	ddf1      	ble.n	8003704 <_vfprintf_r+0xc2c>
 8003720:	aa21      	add	r2, sp, #132	; 0x84
 8003722:	4659      	mov	r1, fp
 8003724:	4640      	mov	r0, r8
 8003726:	f002 ff35 	bl	8006594 <__sprint_r>
 800372a:	2800      	cmp	r0, #0
 800372c:	f47f ab27 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003730:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8003734:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003738:	e7e6      	b.n	8003708 <_vfprintf_r+0xc30>
 800373a:	9b04      	ldr	r3, [sp, #16]
 800373c:	9308      	str	r3, [sp, #32]
 800373e:	ab2e      	add	r3, sp, #184	; 0xb8
 8003740:	930a      	str	r3, [sp, #40]	; 0x28
 8003742:	f7ff bb7e 	b.w	8002e42 <_vfprintf_r+0x36a>
 8003746:	2f00      	cmp	r7, #0
 8003748:	f77f af48 	ble.w	80035dc <_vfprintf_r+0xb04>
 800374c:	2f10      	cmp	r7, #16
 800374e:	f8df 860c 	ldr.w	r8, [pc, #1548]	; 8003d5c <_vfprintf_r+0x1284>
 8003752:	f340 83f5 	ble.w	8003f40 <_vfprintf_r+0x1468>
 8003756:	4623      	mov	r3, r4
 8003758:	f04f 0910 	mov.w	r9, #16
 800375c:	4644      	mov	r4, r8
 800375e:	9d08      	ldr	r5, [sp, #32]
 8003760:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003764:	e005      	b.n	8003772 <_vfprintf_r+0xc9a>
 8003766:	3608      	adds	r6, #8
 8003768:	3f10      	subs	r7, #16
 800376a:	2f10      	cmp	r7, #16
 800376c:	f340 8206 	ble.w	8003b7c <_vfprintf_r+0x10a4>
 8003770:	3501      	adds	r5, #1
 8003772:	3310      	adds	r3, #16
 8003774:	2d07      	cmp	r5, #7
 8003776:	e9cd 5322 	strd	r5, r3, [sp, #136]	; 0x88
 800377a:	e9c6 4900 	strd	r4, r9, [r6]
 800377e:	ddf2      	ble.n	8003766 <_vfprintf_r+0xc8e>
 8003780:	aa21      	add	r2, sp, #132	; 0x84
 8003782:	4659      	mov	r1, fp
 8003784:	4640      	mov	r0, r8
 8003786:	f002 ff05 	bl	8006594 <__sprint_r>
 800378a:	2800      	cmp	r0, #0
 800378c:	f47f aaf7 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003790:	e9dd 5322 	ldrd	r5, r3, [sp, #136]	; 0x88
 8003794:	ae2e      	add	r6, sp, #184	; 0xb8
 8003796:	e7e7      	b.n	8003768 <_vfprintf_r+0xc90>
 8003798:	17e5      	asrs	r5, r4, #31
 800379a:	2c00      	cmp	r4, #0
 800379c:	f175 0300 	sbcs.w	r3, r5, #0
 80037a0:	f6bf ab2f 	bge.w	8002e02 <_vfprintf_r+0x32a>
 80037a4:	272d      	movs	r7, #45	; 0x2d
 80037a6:	4264      	negs	r4, r4
 80037a8:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80037ac:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 80037b0:	f7ff bb29 	b.w	8002e06 <_vfprintf_r+0x32e>
 80037b4:	2500      	movs	r5, #0
 80037b6:	e490      	b.n	80030da <_vfprintf_r+0x602>
 80037b8:	9a02      	ldr	r2, [sp, #8]
 80037ba:	07d7      	lsls	r7, r2, #31
 80037bc:	f53f aed5 	bmi.w	800356a <_vfprintf_r+0xa92>
 80037c0:	2201      	movs	r2, #1
 80037c2:	990a      	ldr	r1, [sp, #40]	; 0x28
 80037c4:	f8c9 1000 	str.w	r1, [r9]
 80037c8:	2d07      	cmp	r5, #7
 80037ca:	e9cd 5422 	strd	r5, r4, [sp, #136]	; 0x88
 80037ce:	f8c9 2004 	str.w	r2, [r9, #4]
 80037d2:	dc04      	bgt.n	80037de <_vfprintf_r+0xd06>
 80037d4:	3302      	adds	r3, #2
 80037d6:	9304      	str	r3, [sp, #16]
 80037d8:	f109 0910 	add.w	r9, r9, #16
 80037dc:	e6fe      	b.n	80035dc <_vfprintf_r+0xb04>
 80037de:	aa21      	add	r2, sp, #132	; 0x84
 80037e0:	4659      	mov	r1, fp
 80037e2:	9806      	ldr	r0, [sp, #24]
 80037e4:	f002 fed6 	bl	8006594 <__sprint_r>
 80037e8:	2800      	cmp	r0, #0
 80037ea:	f47f aac8 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 80037ee:	e9dd 3422 	ldrd	r3, r4, [sp, #136]	; 0x88
 80037f2:	3301      	adds	r3, #1
 80037f4:	9304      	str	r3, [sp, #16]
 80037f6:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 80037fa:	ae2e      	add	r6, sp, #184	; 0xb8
 80037fc:	e6ee      	b.n	80035dc <_vfprintf_r+0xb04>
 80037fe:	aa21      	add	r2, sp, #132	; 0x84
 8003800:	4659      	mov	r1, fp
 8003802:	9806      	ldr	r0, [sp, #24]
 8003804:	9315      	str	r3, [sp, #84]	; 0x54
 8003806:	f002 fec5 	bl	8006594 <__sprint_r>
 800380a:	2800      	cmp	r0, #0
 800380c:	f47f aab7 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003810:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8003814:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003816:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003818:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 800381c:	f7ff bb6c 	b.w	8002ef8 <_vfprintf_r+0x420>
 8003820:	aa21      	add	r2, sp, #132	; 0x84
 8003822:	4659      	mov	r1, fp
 8003824:	9806      	ldr	r0, [sp, #24]
 8003826:	f002 feb5 	bl	8006594 <__sprint_r>
 800382a:	2800      	cmp	r0, #0
 800382c:	f47f aaa7 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003830:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003832:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003836:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003838:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800383a:	4293      	cmp	r3, r2
 800383c:	db02      	blt.n	8003844 <_vfprintf_r+0xd6c>
 800383e:	9a02      	ldr	r2, [sp, #8]
 8003840:	07d2      	lsls	r2, r2, #31
 8003842:	d50f      	bpl.n	8003864 <_vfprintf_r+0xd8c>
 8003844:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003846:	9910      	ldr	r1, [sp, #64]	; 0x40
 8003848:	f8c9 1000 	str.w	r1, [r9]
 800384c:	990f      	ldr	r1, [sp, #60]	; 0x3c
 800384e:	f8c9 1004 	str.w	r1, [r9, #4]
 8003852:	3201      	adds	r2, #1
 8003854:	440c      	add	r4, r1
 8003856:	2a07      	cmp	r2, #7
 8003858:	9423      	str	r4, [sp, #140]	; 0x8c
 800385a:	9222      	str	r2, [sp, #136]	; 0x88
 800385c:	f300 823c 	bgt.w	8003cd8 <_vfprintf_r+0x1200>
 8003860:	f109 0908 	add.w	r9, r9, #8
 8003864:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8003866:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8003868:	1ad3      	subs	r3, r2, r3
 800386a:	1a15      	subs	r5, r2, r0
 800386c:	429d      	cmp	r5, r3
 800386e:	bfa8      	it	ge
 8003870:	461d      	movge	r5, r3
 8003872:	2d00      	cmp	r5, #0
 8003874:	dd0f      	ble.n	8003896 <_vfprintf_r+0xdbe>
 8003876:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003878:	990a      	ldr	r1, [sp, #40]	; 0x28
 800387a:	f8c9 5004 	str.w	r5, [r9, #4]
 800387e:	3201      	adds	r2, #1
 8003880:	4401      	add	r1, r0
 8003882:	442c      	add	r4, r5
 8003884:	2a07      	cmp	r2, #7
 8003886:	f8c9 1000 	str.w	r1, [r9]
 800388a:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 800388e:	f300 8157 	bgt.w	8003b40 <_vfprintf_r+0x1068>
 8003892:	f109 0908 	add.w	r9, r9, #8
 8003896:	2d00      	cmp	r5, #0
 8003898:	bfac      	ite	ge
 800389a:	1b5d      	subge	r5, r3, r5
 800389c:	461d      	movlt	r5, r3
 800389e:	2d00      	cmp	r5, #0
 80038a0:	f77f ab9a 	ble.w	8002fd8 <_vfprintf_r+0x500>
 80038a4:	2d10      	cmp	r5, #16
 80038a6:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80038a8:	f8df 84b0 	ldr.w	r8, [pc, #1200]	; 8003d5c <_vfprintf_r+0x1284>
 80038ac:	dd3b      	ble.n	8003926 <_vfprintf_r+0xe4e>
 80038ae:	4647      	mov	r7, r8
 80038b0:	2610      	movs	r6, #16
 80038b2:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80038b6:	e004      	b.n	80038c2 <_vfprintf_r+0xdea>
 80038b8:	f109 0908 	add.w	r9, r9, #8
 80038bc:	3d10      	subs	r5, #16
 80038be:	2d10      	cmp	r5, #16
 80038c0:	dd30      	ble.n	8003924 <_vfprintf_r+0xe4c>
 80038c2:	3201      	adds	r2, #1
 80038c4:	3410      	adds	r4, #16
 80038c6:	2a07      	cmp	r2, #7
 80038c8:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 80038cc:	e9c9 7600 	strd	r7, r6, [r9]
 80038d0:	ddf2      	ble.n	80038b8 <_vfprintf_r+0xde0>
 80038d2:	aa21      	add	r2, sp, #132	; 0x84
 80038d4:	4659      	mov	r1, fp
 80038d6:	4640      	mov	r0, r8
 80038d8:	f002 fe5c 	bl	8006594 <__sprint_r>
 80038dc:	2800      	cmp	r0, #0
 80038de:	f47f aa4e 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 80038e2:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 80038e6:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 80038ea:	e7e7      	b.n	80038bc <_vfprintf_r+0xde4>
 80038ec:	aa21      	add	r2, sp, #132	; 0x84
 80038ee:	4659      	mov	r1, fp
 80038f0:	9806      	ldr	r0, [sp, #24]
 80038f2:	f002 fe4f 	bl	8006594 <__sprint_r>
 80038f6:	2800      	cmp	r0, #0
 80038f8:	f47f aa41 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 80038fc:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8003900:	ae2e      	add	r6, sp, #184	; 0xb8
 8003902:	e63d      	b.n	8003580 <_vfprintf_r+0xaa8>
 8003904:	aa21      	add	r2, sp, #132	; 0x84
 8003906:	4659      	mov	r1, fp
 8003908:	9806      	ldr	r0, [sp, #24]
 800390a:	f002 fe43 	bl	8006594 <__sprint_r>
 800390e:	2800      	cmp	r0, #0
 8003910:	f47f aa35 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003914:	e9dd 5422 	ldrd	r5, r4, [sp, #136]	; 0x88
 8003918:	ae2e      	add	r6, sp, #184	; 0xb8
 800391a:	e63d      	b.n	8003598 <_vfprintf_r+0xac0>
 800391c:	2b01      	cmp	r3, #1
 800391e:	f47f abf8 	bne.w	8003112 <_vfprintf_r+0x63a>
 8003922:	e6aa      	b.n	800367a <_vfprintf_r+0xba2>
 8003924:	46b8      	mov	r8, r7
 8003926:	3201      	adds	r2, #1
 8003928:	442c      	add	r4, r5
 800392a:	2a07      	cmp	r2, #7
 800392c:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003930:	e9c9 8500 	strd	r8, r5, [r9]
 8003934:	f77f ab4e 	ble.w	8002fd4 <_vfprintf_r+0x4fc>
 8003938:	e65b      	b.n	80035f2 <_vfprintf_r+0xb1a>
 800393a:	ab2e      	add	r3, sp, #184	; 0xb8
 800393c:	4698      	mov	r8, r3
 800393e:	4620      	mov	r0, r4
 8003940:	4629      	mov	r1, r5
 8003942:	220a      	movs	r2, #10
 8003944:	2300      	movs	r3, #0
 8003946:	f7fe fe23 	bl	8002590 <__aeabi_uldivmod>
 800394a:	3230      	adds	r2, #48	; 0x30
 800394c:	f808 2d01 	strb.w	r2, [r8, #-1]!
 8003950:	4620      	mov	r0, r4
 8003952:	4629      	mov	r1, r5
 8003954:	2300      	movs	r3, #0
 8003956:	220a      	movs	r2, #10
 8003958:	f7fe fe1a 	bl	8002590 <__aeabi_uldivmod>
 800395c:	4604      	mov	r4, r0
 800395e:	460d      	mov	r5, r1
 8003960:	ea54 0305 	orrs.w	r3, r4, r5
 8003964:	d1eb      	bne.n	800393e <_vfprintf_r+0xe66>
 8003966:	4642      	mov	r2, r8
 8003968:	ab2e      	add	r3, sp, #184	; 0xb8
 800396a:	1a9b      	subs	r3, r3, r2
 800396c:	f8cd 8028 	str.w	r8, [sp, #40]	; 0x28
 8003970:	9308      	str	r3, [sp, #32]
 8003972:	f7ff ba66 	b.w	8002e42 <_vfprintf_r+0x36a>
 8003976:	ab2e      	add	r3, sp, #184	; 0xb8
 8003978:	930a      	str	r3, [sp, #40]	; 0x28
 800397a:	f7ff ba62 	b.w	8002e42 <_vfprintf_r+0x36a>
 800397e:	f018 0f10 	tst.w	r8, #16
 8003982:	d107      	bne.n	8003994 <_vfprintf_r+0xebc>
 8003984:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003988:	d004      	beq.n	8003994 <_vfprintf_r+0xebc>
 800398a:	f8bd 2014 	ldrh.w	r2, [sp, #20]
 800398e:	801a      	strh	r2, [r3, #0]
 8003990:	f7ff b8eb 	b.w	8002b6a <_vfprintf_r+0x92>
 8003994:	9a05      	ldr	r2, [sp, #20]
 8003996:	601a      	str	r2, [r3, #0]
 8003998:	f7ff b8e7 	b.w	8002b6a <_vfprintf_r+0x92>
 800399c:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80039a0:	4602      	mov	r2, r0
 80039a2:	460b      	mov	r3, r1
 80039a4:	f004 f890 	bl	8007ac8 <__aeabi_dcmpun>
 80039a8:	2800      	cmp	r0, #0
 80039aa:	f040 82ab 	bne.w	8003f04 <_vfprintf_r+0x142c>
 80039ae:	9b04      	ldr	r3, [sp, #16]
 80039b0:	1c5c      	adds	r4, r3, #1
 80039b2:	f026 0720 	bic.w	r7, r6, #32
 80039b6:	f000 80d2 	beq.w	8003b5e <_vfprintf_r+0x1086>
 80039ba:	2f47      	cmp	r7, #71	; 0x47
 80039bc:	d103      	bne.n	80039c6 <_vfprintf_r+0xeee>
 80039be:	2b00      	cmp	r3, #0
 80039c0:	bf08      	it	eq
 80039c2:	2301      	moveq	r3, #1
 80039c4:	9304      	str	r3, [sp, #16]
 80039c6:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80039c8:	f448 7280 	orr.w	r2, r8, #256	; 0x100
 80039cc:	2b00      	cmp	r3, #0
 80039ce:	9202      	str	r2, [sp, #8]
 80039d0:	f2c0 819b 	blt.w	8003d0a <_vfprintf_r+0x1232>
 80039d4:	ed9d 7b0c 	vldr	d7, [sp, #48]	; 0x30
 80039d8:	ed8d 7b16 	vstr	d7, [sp, #88]	; 0x58
 80039dc:	2300      	movs	r3, #0
 80039de:	9315      	str	r3, [sp, #84]	; 0x54
 80039e0:	2e66      	cmp	r6, #102	; 0x66
 80039e2:	f000 819b 	beq.w	8003d1c <_vfprintf_r+0x1244>
 80039e6:	2e46      	cmp	r6, #70	; 0x46
 80039e8:	f000 81f7 	beq.w	8003dda <_vfprintf_r+0x1302>
 80039ec:	2f45      	cmp	r7, #69	; 0x45
 80039ee:	f000 81d8 	beq.w	8003da2 <_vfprintf_r+0x12ca>
 80039f2:	aa1f      	add	r2, sp, #124	; 0x7c
 80039f4:	ab1c      	add	r3, sp, #112	; 0x70
 80039f6:	e9cd 3200 	strd	r3, r2, [sp]
 80039fa:	2102      	movs	r1, #2
 80039fc:	ab1b      	add	r3, sp, #108	; 0x6c
 80039fe:	9a04      	ldr	r2, [sp, #16]
 8003a00:	9806      	ldr	r0, [sp, #24]
 8003a02:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8003a06:	f000 fc37 	bl	8004278 <_dtoa_r>
 8003a0a:	2e67      	cmp	r6, #103	; 0x67
 8003a0c:	900a      	str	r0, [sp, #40]	; 0x28
 8003a0e:	f040 82c2 	bne.w	8003f96 <_vfprintf_r+0x14be>
 8003a12:	f018 0f01 	tst.w	r8, #1
 8003a16:	f000 80f5 	beq.w	8003c04 <_vfprintf_r+0x112c>
 8003a1a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003a1c:	9a04      	ldr	r2, [sp, #16]
 8003a1e:	189c      	adds	r4, r3, r2
 8003a20:	2200      	movs	r2, #0
 8003a22:	2300      	movs	r3, #0
 8003a24:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8003a28:	f004 f81c 	bl	8007a64 <__aeabi_dcmpeq>
 8003a2c:	2800      	cmp	r0, #0
 8003a2e:	f000 8160 	beq.w	8003cf2 <_vfprintf_r+0x121a>
 8003a32:	4623      	mov	r3, r4
 8003a34:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003a36:	1a9b      	subs	r3, r3, r2
 8003a38:	930e      	str	r3, [sp, #56]	; 0x38
 8003a3a:	2f47      	cmp	r7, #71	; 0x47
 8003a3c:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003a3e:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a40:	f000 80e9 	beq.w	8003c16 <_vfprintf_r+0x113e>
 8003a44:	2e66      	cmp	r6, #102	; 0x66
 8003a46:	f040 80ed 	bne.w	8003c24 <_vfprintf_r+0x114c>
 8003a4a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003a4c:	2b00      	cmp	r3, #0
 8003a4e:	9b04      	ldr	r3, [sp, #16]
 8003a50:	f340 826e 	ble.w	8003f30 <_vfprintf_r+0x1458>
 8003a54:	2b00      	cmp	r3, #0
 8003a56:	f040 824b 	bne.w	8003ef0 <_vfprintf_r+0x1418>
 8003a5a:	f018 0f01 	tst.w	r8, #1
 8003a5e:	f040 8247 	bne.w	8003ef0 <_vfprintf_r+0x1418>
 8003a62:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003a64:	9303      	str	r3, [sp, #12]
 8003a66:	9308      	str	r3, [sp, #32]
 8003a68:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003a6a:	2b00      	cmp	r3, #0
 8003a6c:	f040 8110 	bne.w	8003c90 <_vfprintf_r+0x11b8>
 8003a70:	9304      	str	r3, [sp, #16]
 8003a72:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8003a76:	f7ff b9ec 	b.w	8002e52 <_vfprintf_r+0x37a>
 8003a7a:	aa21      	add	r2, sp, #132	; 0x84
 8003a7c:	4659      	mov	r1, fp
 8003a7e:	9806      	ldr	r0, [sp, #24]
 8003a80:	f002 fd88 	bl	8006594 <__sprint_r>
 8003a84:	2800      	cmp	r0, #0
 8003a86:	f47f a97a 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003a8a:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003a8c:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003a90:	f7ff ba55 	b.w	8002f3e <_vfprintf_r+0x466>
 8003a94:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003a96:	49af      	ldr	r1, [pc, #700]	; (8003d54 <_vfprintf_r+0x127c>)
 8003a98:	f8c9 1000 	str.w	r1, [r9]
 8003a9c:	3201      	adds	r2, #1
 8003a9e:	3401      	adds	r4, #1
 8003aa0:	2101      	movs	r1, #1
 8003aa2:	2a07      	cmp	r2, #7
 8003aa4:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003aa8:	f8c9 1004 	str.w	r1, [r9, #4]
 8003aac:	dc3b      	bgt.n	8003b26 <_vfprintf_r+0x104e>
 8003aae:	f109 0908 	add.w	r9, r9, #8
 8003ab2:	b92b      	cbnz	r3, 8003ac0 <_vfprintf_r+0xfe8>
 8003ab4:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8003ab6:	b91a      	cbnz	r2, 8003ac0 <_vfprintf_r+0xfe8>
 8003ab8:	9a02      	ldr	r2, [sp, #8]
 8003aba:	07d1      	lsls	r1, r2, #31
 8003abc:	f57f aa8c 	bpl.w	8002fd8 <_vfprintf_r+0x500>
 8003ac0:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8003ac2:	9910      	ldr	r1, [sp, #64]	; 0x40
 8003ac4:	f8c9 1000 	str.w	r1, [r9]
 8003ac8:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003aca:	f8c9 1004 	str.w	r1, [r9, #4]
 8003ace:	3201      	adds	r2, #1
 8003ad0:	440c      	add	r4, r1
 8003ad2:	2a07      	cmp	r2, #7
 8003ad4:	9423      	str	r4, [sp, #140]	; 0x8c
 8003ad6:	9222      	str	r2, [sp, #136]	; 0x88
 8003ad8:	f300 8142 	bgt.w	8003d60 <_vfprintf_r+0x1288>
 8003adc:	f109 0908 	add.w	r9, r9, #8
 8003ae0:	2b00      	cmp	r3, #0
 8003ae2:	f2c0 8193 	blt.w	8003e0c <_vfprintf_r+0x1334>
 8003ae6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003ae8:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003aea:	3201      	adds	r2, #1
 8003aec:	441c      	add	r4, r3
 8003aee:	2a07      	cmp	r2, #7
 8003af0:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003af4:	e9c9 1300 	strd	r1, r3, [r9]
 8003af8:	f77f aa6c 	ble.w	8002fd4 <_vfprintf_r+0x4fc>
 8003afc:	e579      	b.n	80035f2 <_vfprintf_r+0xb1a>
 8003afe:	aa21      	add	r2, sp, #132	; 0x84
 8003b00:	4659      	mov	r1, fp
 8003b02:	9806      	ldr	r0, [sp, #24]
 8003b04:	f002 fd46 	bl	8006594 <__sprint_r>
 8003b08:	2800      	cmp	r0, #0
 8003b0a:	f47f a938 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003b0e:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003b12:	e494      	b.n	800343e <_vfprintf_r+0x966>
 8003b14:	4240      	negs	r0, r0
 8003b16:	9007      	str	r0, [sp, #28]
 8003b18:	9309      	str	r3, [sp, #36]	; 0x24
 8003b1a:	e436      	b.n	800338a <_vfprintf_r+0x8b2>
 8003b1c:	272d      	movs	r7, #45	; 0x2d
 8003b1e:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8003b22:	f7ff bbd4 	b.w	80032ce <_vfprintf_r+0x7f6>
 8003b26:	aa21      	add	r2, sp, #132	; 0x84
 8003b28:	4659      	mov	r1, fp
 8003b2a:	9806      	ldr	r0, [sp, #24]
 8003b2c:	f002 fd32 	bl	8006594 <__sprint_r>
 8003b30:	2800      	cmp	r0, #0
 8003b32:	f47f a924 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003b36:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003b38:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003b3a:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003b3e:	e7b8      	b.n	8003ab2 <_vfprintf_r+0xfda>
 8003b40:	aa21      	add	r2, sp, #132	; 0x84
 8003b42:	4659      	mov	r1, fp
 8003b44:	9806      	ldr	r0, [sp, #24]
 8003b46:	f002 fd25 	bl	8006594 <__sprint_r>
 8003b4a:	2800      	cmp	r0, #0
 8003b4c:	f47f a917 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003b50:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003b52:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8003b54:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003b56:	1ad3      	subs	r3, r2, r3
 8003b58:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003b5c:	e69b      	b.n	8003896 <_vfprintf_r+0xdbe>
 8003b5e:	2306      	movs	r3, #6
 8003b60:	9304      	str	r3, [sp, #16]
 8003b62:	e730      	b.n	80039c6 <_vfprintf_r+0xeee>
 8003b64:	9b04      	ldr	r3, [sp, #16]
 8003b66:	9303      	str	r3, [sp, #12]
 8003b68:	9308      	str	r3, [sp, #32]
 8003b6a:	9004      	str	r0, [sp, #16]
 8003b6c:	9409      	str	r4, [sp, #36]	; 0x24
 8003b6e:	f8cd 8008 	str.w	r8, [sp, #8]
 8003b72:	900b      	str	r0, [sp, #44]	; 0x2c
 8003b74:	f89d 7067 	ldrb.w	r7, [sp, #103]	; 0x67
 8003b78:	f7ff b96b 	b.w	8002e52 <_vfprintf_r+0x37a>
 8003b7c:	46a0      	mov	r8, r4
 8003b7e:	461c      	mov	r4, r3
 8003b80:	1c6b      	adds	r3, r5, #1
 8003b82:	9304      	str	r3, [sp, #16]
 8003b84:	f106 0208 	add.w	r2, r6, #8
 8003b88:	9b04      	ldr	r3, [sp, #16]
 8003b8a:	9322      	str	r3, [sp, #136]	; 0x88
 8003b8c:	443c      	add	r4, r7
 8003b8e:	2b07      	cmp	r3, #7
 8003b90:	9423      	str	r4, [sp, #140]	; 0x8c
 8003b92:	e9c6 8700 	strd	r8, r7, [r6]
 8003b96:	f73f ae22 	bgt.w	80037de <_vfprintf_r+0xd06>
 8003b9a:	3301      	adds	r3, #1
 8003b9c:	9304      	str	r3, [sp, #16]
 8003b9e:	f102 0908 	add.w	r9, r2, #8
 8003ba2:	4616      	mov	r6, r2
 8003ba4:	e51a      	b.n	80035dc <_vfprintf_r+0xb04>
 8003ba6:	aa21      	add	r2, sp, #132	; 0x84
 8003ba8:	4659      	mov	r1, fp
 8003baa:	9806      	ldr	r0, [sp, #24]
 8003bac:	f002 fcf2 	bl	8006594 <__sprint_r>
 8003bb0:	2800      	cmp	r0, #0
 8003bb2:	f47f a8e4 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003bb6:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003bb8:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003bbc:	e458      	b.n	8003470 <_vfprintf_r+0x998>
 8003bbe:	9b04      	ldr	r3, [sp, #16]
 8003bc0:	9f0a      	ldr	r7, [sp, #40]	; 0x28
 8003bc2:	9704      	str	r7, [sp, #16]
 8003bc4:	2b06      	cmp	r3, #6
 8003bc6:	bf28      	it	cs
 8003bc8:	2306      	movcs	r3, #6
 8003bca:	9303      	str	r3, [sp, #12]
 8003bcc:	9308      	str	r3, [sp, #32]
 8003bce:	4b62      	ldr	r3, [pc, #392]	; (8003d58 <_vfprintf_r+0x1280>)
 8003bd0:	9409      	str	r4, [sp, #36]	; 0x24
 8003bd2:	f8cd 8008 	str.w	r8, [sp, #8]
 8003bd6:	970b      	str	r7, [sp, #44]	; 0x2c
 8003bd8:	930a      	str	r3, [sp, #40]	; 0x28
 8003bda:	f7ff b93a 	b.w	8002e52 <_vfprintf_r+0x37a>
 8003bde:	46b8      	mov	r8, r7
 8003be0:	3201      	adds	r2, #1
 8003be2:	442c      	add	r4, r5
 8003be4:	2a07      	cmp	r2, #7
 8003be6:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003bea:	e9c9 8500 	strd	r8, r5, [r9]
 8003bee:	f73f ae17 	bgt.w	8003820 <_vfprintf_r+0xd48>
 8003bf2:	f109 0908 	add.w	r9, r9, #8
 8003bf6:	e61e      	b.n	8003836 <_vfprintf_r+0xd5e>
 8003bf8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003bfa:	ab2e      	add	r3, sp, #184	; 0xb8
 8003bfc:	1a9b      	subs	r3, r3, r2
 8003bfe:	9308      	str	r3, [sp, #32]
 8003c00:	f7ff b91f 	b.w	8002e42 <_vfprintf_r+0x36a>
 8003c04:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c06:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8003c08:	920b      	str	r2, [sp, #44]	; 0x2c
 8003c0a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003c0c:	2f47      	cmp	r7, #71	; 0x47
 8003c0e:	eba3 0302 	sub.w	r3, r3, r2
 8003c12:	930e      	str	r3, [sp, #56]	; 0x38
 8003c14:	d106      	bne.n	8003c24 <_vfprintf_r+0x114c>
 8003c16:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003c18:	1cda      	adds	r2, r3, #3
 8003c1a:	db02      	blt.n	8003c22 <_vfprintf_r+0x114a>
 8003c1c:	9a04      	ldr	r2, [sp, #16]
 8003c1e:	429a      	cmp	r2, r3
 8003c20:	da3d      	bge.n	8003c9e <_vfprintf_r+0x11c6>
 8003c22:	3e02      	subs	r6, #2
 8003c24:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003c26:	f88d 6074 	strb.w	r6, [sp, #116]	; 0x74
 8003c2a:	3b01      	subs	r3, #1
 8003c2c:	2b00      	cmp	r3, #0
 8003c2e:	931b      	str	r3, [sp, #108]	; 0x6c
 8003c30:	bfbd      	ittte	lt
 8003c32:	9b0b      	ldrlt	r3, [sp, #44]	; 0x2c
 8003c34:	f1c3 0301 	rsblt	r3, r3, #1
 8003c38:	222d      	movlt	r2, #45	; 0x2d
 8003c3a:	222b      	movge	r2, #43	; 0x2b
 8003c3c:	2b09      	cmp	r3, #9
 8003c3e:	f88d 2075 	strb.w	r2, [sp, #117]	; 0x75
 8003c42:	f300 8114 	bgt.w	8003e6e <_vfprintf_r+0x1396>
 8003c46:	3330      	adds	r3, #48	; 0x30
 8003c48:	2230      	movs	r2, #48	; 0x30
 8003c4a:	f88d 3077 	strb.w	r3, [sp, #119]	; 0x77
 8003c4e:	f88d 2076 	strb.w	r2, [sp, #118]	; 0x76
 8003c52:	ab1e      	add	r3, sp, #120	; 0x78
 8003c54:	aa1d      	add	r2, sp, #116	; 0x74
 8003c56:	1a9b      	subs	r3, r3, r2
 8003c58:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 8003c5a:	9314      	str	r3, [sp, #80]	; 0x50
 8003c5c:	2a01      	cmp	r2, #1
 8003c5e:	4413      	add	r3, r2
 8003c60:	9308      	str	r3, [sp, #32]
 8003c62:	f340 815b 	ble.w	8003f1c <_vfprintf_r+0x1444>
 8003c66:	9b08      	ldr	r3, [sp, #32]
 8003c68:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c6a:	4413      	add	r3, r2
 8003c6c:	9308      	str	r3, [sp, #32]
 8003c6e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c72:	9303      	str	r3, [sp, #12]
 8003c74:	2300      	movs	r3, #0
 8003c76:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c78:	e6f6      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003c7a:	980a      	ldr	r0, [sp, #40]	; 0x28
 8003c7c:	9504      	str	r5, [sp, #16]
 8003c7e:	f002 fbdf 	bl	8006440 <strlen>
 8003c82:	f8cd 8008 	str.w	r8, [sp, #8]
 8003c86:	e9cd 0408 	strd	r0, r4, [sp, #32]
 8003c8a:	4603      	mov	r3, r0
 8003c8c:	f7ff bac3 	b.w	8003216 <_vfprintf_r+0x73e>
 8003c90:	272d      	movs	r7, #45	; 0x2d
 8003c92:	2300      	movs	r3, #0
 8003c94:	f88d 7067 	strb.w	r7, [sp, #103]	; 0x67
 8003c98:	9304      	str	r3, [sp, #16]
 8003c9a:	f7ff b8db 	b.w	8002e54 <_vfprintf_r+0x37c>
 8003c9e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003ca0:	990e      	ldr	r1, [sp, #56]	; 0x38
 8003ca2:	428b      	cmp	r3, r1
 8003ca4:	db6a      	blt.n	8003d7c <_vfprintf_r+0x12a4>
 8003ca6:	f018 0f01 	tst.w	r8, #1
 8003caa:	f000 811b 	beq.w	8003ee4 <_vfprintf_r+0x140c>
 8003cae:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003cb0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003cb2:	4413      	add	r3, r2
 8003cb4:	9308      	str	r3, [sp, #32]
 8003cb6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cba:	9303      	str	r3, [sp, #12]
 8003cbc:	2667      	movs	r6, #103	; 0x67
 8003cbe:	e6d3      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003cc0:	aa21      	add	r2, sp, #132	; 0x84
 8003cc2:	4659      	mov	r1, fp
 8003cc4:	9806      	ldr	r0, [sp, #24]
 8003cc6:	f002 fc65 	bl	8006594 <__sprint_r>
 8003cca:	2800      	cmp	r0, #0
 8003ccc:	f47f a857 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003cd0:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003cd2:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003cd6:	e502      	b.n	80036de <_vfprintf_r+0xc06>
 8003cd8:	aa21      	add	r2, sp, #132	; 0x84
 8003cda:	4659      	mov	r1, fp
 8003cdc:	9806      	ldr	r0, [sp, #24]
 8003cde:	f002 fc59 	bl	8006594 <__sprint_r>
 8003ce2:	2800      	cmp	r0, #0
 8003ce4:	f47f a84b 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003ce8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003cea:	9c23      	ldr	r4, [sp, #140]	; 0x8c
 8003cec:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003cf0:	e5b8      	b.n	8003864 <_vfprintf_r+0xd8c>
 8003cf2:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8003cf4:	42a3      	cmp	r3, r4
 8003cf6:	f4bf ae9d 	bcs.w	8003a34 <_vfprintf_r+0xf5c>
 8003cfa:	2130      	movs	r1, #48	; 0x30
 8003cfc:	1c5a      	adds	r2, r3, #1
 8003cfe:	921f      	str	r2, [sp, #124]	; 0x7c
 8003d00:	7019      	strb	r1, [r3, #0]
 8003d02:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8003d04:	429c      	cmp	r4, r3
 8003d06:	d8f9      	bhi.n	8003cfc <_vfprintf_r+0x1224>
 8003d08:	e694      	b.n	8003a34 <_vfprintf_r+0xf5c>
 8003d0a:	e9dd 120c 	ldrd	r1, r2, [sp, #48]	; 0x30
 8003d0e:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003d12:	9317      	str	r3, [sp, #92]	; 0x5c
 8003d14:	232d      	movs	r3, #45	; 0x2d
 8003d16:	9116      	str	r1, [sp, #88]	; 0x58
 8003d18:	9315      	str	r3, [sp, #84]	; 0x54
 8003d1a:	e661      	b.n	80039e0 <_vfprintf_r+0xf08>
 8003d1c:	9d04      	ldr	r5, [sp, #16]
 8003d1e:	9806      	ldr	r0, [sp, #24]
 8003d20:	aa1f      	add	r2, sp, #124	; 0x7c
 8003d22:	ab1c      	add	r3, sp, #112	; 0x70
 8003d24:	e9cd 3200 	strd	r3, r2, [sp]
 8003d28:	2103      	movs	r1, #3
 8003d2a:	ab1b      	add	r3, sp, #108	; 0x6c
 8003d2c:	462a      	mov	r2, r5
 8003d2e:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8003d32:	f000 faa1 	bl	8004278 <_dtoa_r>
 8003d36:	900a      	str	r0, [sp, #40]	; 0x28
 8003d38:	1944      	adds	r4, r0, r5
 8003d3a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003d3c:	781b      	ldrb	r3, [r3, #0]
 8003d3e:	2b30      	cmp	r3, #48	; 0x30
 8003d40:	f000 80c2 	beq.w	8003ec8 <_vfprintf_r+0x13f0>
 8003d44:	9d1b      	ldr	r5, [sp, #108]	; 0x6c
 8003d46:	442c      	add	r4, r5
 8003d48:	e66a      	b.n	8003a20 <_vfprintf_r+0xf48>
 8003d4a:	2300      	movs	r3, #0
 8003d4c:	9304      	str	r3, [sp, #16]
 8003d4e:	f7fe bf43 	b.w	8002bd8 <_vfprintf_r+0x100>
 8003d52:	bf00      	nop
 8003d54:	08007c68 	.word	0x08007c68
 8003d58:	08007c60 	.word	0x08007c60
 8003d5c:	08007c7c 	.word	0x08007c7c
 8003d60:	aa21      	add	r2, sp, #132	; 0x84
 8003d62:	4659      	mov	r1, fp
 8003d64:	9806      	ldr	r0, [sp, #24]
 8003d66:	f002 fc15 	bl	8006594 <__sprint_r>
 8003d6a:	2800      	cmp	r0, #0
 8003d6c:	f47f a807 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003d70:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003d72:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8003d76:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003d7a:	e6b1      	b.n	8003ae0 <_vfprintf_r+0x1008>
 8003d7c:	e9dd 320e 	ldrd	r3, r2, [sp, #56]	; 0x38
 8003d80:	4413      	add	r3, r2
 8003d82:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003d84:	9308      	str	r3, [sp, #32]
 8003d86:	2a00      	cmp	r2, #0
 8003d88:	dc06      	bgt.n	8003d98 <_vfprintf_r+0x12c0>
 8003d8a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003d8c:	9a08      	ldr	r2, [sp, #32]
 8003d8e:	f1c3 0301 	rsb	r3, r3, #1
 8003d92:	441a      	add	r2, r3
 8003d94:	4613      	mov	r3, r2
 8003d96:	9208      	str	r2, [sp, #32]
 8003d98:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d9c:	9303      	str	r3, [sp, #12]
 8003d9e:	2667      	movs	r6, #103	; 0x67
 8003da0:	e662      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003da2:	9b04      	ldr	r3, [sp, #16]
 8003da4:	9806      	ldr	r0, [sp, #24]
 8003da6:	1c5d      	adds	r5, r3, #1
 8003da8:	a91f      	add	r1, sp, #124	; 0x7c
 8003daa:	ab1c      	add	r3, sp, #112	; 0x70
 8003dac:	e9cd 3100 	strd	r3, r1, [sp]
 8003db0:	462a      	mov	r2, r5
 8003db2:	ab1b      	add	r3, sp, #108	; 0x6c
 8003db4:	2102      	movs	r1, #2
 8003db6:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8003dba:	f000 fa5d 	bl	8004278 <_dtoa_r>
 8003dbe:	900a      	str	r0, [sp, #40]	; 0x28
 8003dc0:	2e47      	cmp	r6, #71	; 0x47
 8003dc2:	f040 80d5 	bne.w	8003f70 <_vfprintf_r+0x1498>
 8003dc6:	f018 0f01 	tst.w	r8, #1
 8003dca:	f000 80ca 	beq.w	8003f62 <_vfprintf_r+0x148a>
 8003dce:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003dd0:	2e46      	cmp	r6, #70	; 0x46
 8003dd2:	eb03 0405 	add.w	r4, r3, r5
 8003dd6:	d0b0      	beq.n	8003d3a <_vfprintf_r+0x1262>
 8003dd8:	e622      	b.n	8003a20 <_vfprintf_r+0xf48>
 8003dda:	9d04      	ldr	r5, [sp, #16]
 8003ddc:	9806      	ldr	r0, [sp, #24]
 8003dde:	aa1f      	add	r2, sp, #124	; 0x7c
 8003de0:	ab1c      	add	r3, sp, #112	; 0x70
 8003de2:	e9cd 3200 	strd	r3, r2, [sp]
 8003de6:	2103      	movs	r1, #3
 8003de8:	ab1b      	add	r3, sp, #108	; 0x6c
 8003dea:	462a      	mov	r2, r5
 8003dec:	ed9d 0b16 	vldr	d0, [sp, #88]	; 0x58
 8003df0:	f000 fa42 	bl	8004278 <_dtoa_r>
 8003df4:	900a      	str	r0, [sp, #40]	; 0x28
 8003df6:	e7ea      	b.n	8003dce <_vfprintf_r+0x12f6>
 8003df8:	9806      	ldr	r0, [sp, #24]
 8003dfa:	aa21      	add	r2, sp, #132	; 0x84
 8003dfc:	4659      	mov	r1, fp
 8003dfe:	f002 fbc9 	bl	8006594 <__sprint_r>
 8003e02:	2800      	cmp	r0, #0
 8003e04:	f43f a93e 	beq.w	8003084 <_vfprintf_r+0x5ac>
 8003e08:	f7fe bfba 	b.w	8002d80 <_vfprintf_r+0x2a8>
 8003e0c:	425d      	negs	r5, r3
 8003e0e:	3310      	adds	r3, #16
 8003e10:	f8df 81cc 	ldr.w	r8, [pc, #460]	; 8003fe0 <_vfprintf_r+0x1508>
 8003e14:	da1f      	bge.n	8003e56 <_vfprintf_r+0x137e>
 8003e16:	4647      	mov	r7, r8
 8003e18:	2610      	movs	r6, #16
 8003e1a:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8003e1e:	e004      	b.n	8003e2a <_vfprintf_r+0x1352>
 8003e20:	f109 0908 	add.w	r9, r9, #8
 8003e24:	3d10      	subs	r5, #16
 8003e26:	2d10      	cmp	r5, #16
 8003e28:	dd14      	ble.n	8003e54 <_vfprintf_r+0x137c>
 8003e2a:	3201      	adds	r2, #1
 8003e2c:	3410      	adds	r4, #16
 8003e2e:	2a07      	cmp	r2, #7
 8003e30:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003e34:	e9c9 7600 	strd	r7, r6, [r9]
 8003e38:	ddf2      	ble.n	8003e20 <_vfprintf_r+0x1348>
 8003e3a:	aa21      	add	r2, sp, #132	; 0x84
 8003e3c:	4659      	mov	r1, fp
 8003e3e:	4640      	mov	r0, r8
 8003e40:	f002 fba8 	bl	8006594 <__sprint_r>
 8003e44:	2800      	cmp	r0, #0
 8003e46:	f47e af9a 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003e4a:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8003e4e:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003e52:	e7e7      	b.n	8003e24 <_vfprintf_r+0x134c>
 8003e54:	46b8      	mov	r8, r7
 8003e56:	3201      	adds	r2, #1
 8003e58:	442c      	add	r4, r5
 8003e5a:	2a07      	cmp	r2, #7
 8003e5c:	e9cd 2422 	strd	r2, r4, [sp, #136]	; 0x88
 8003e60:	e9c9 8500 	strd	r8, r5, [r9]
 8003e64:	f300 8087 	bgt.w	8003f76 <_vfprintf_r+0x149e>
 8003e68:	f109 0908 	add.w	r9, r9, #8
 8003e6c:	e63b      	b.n	8003ae6 <_vfprintf_r+0x100e>
 8003e6e:	f10d 0483 	add.w	r4, sp, #131	; 0x83
 8003e72:	4620      	mov	r0, r4
 8003e74:	4d57      	ldr	r5, [pc, #348]	; (8003fd4 <_vfprintf_r+0x14fc>)
 8003e76:	e000      	b.n	8003e7a <_vfprintf_r+0x13a2>
 8003e78:	4610      	mov	r0, r2
 8003e7a:	fba5 1203 	umull	r1, r2, r5, r3
 8003e7e:	08d2      	lsrs	r2, r2, #3
 8003e80:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003e84:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003e88:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003e8c:	4613      	mov	r3, r2
 8003e8e:	2b09      	cmp	r3, #9
 8003e90:	f800 1c01 	strb.w	r1, [r0, #-1]
 8003e94:	f100 32ff 	add.w	r2, r0, #4294967295
 8003e98:	dcee      	bgt.n	8003e78 <_vfprintf_r+0x13a0>
 8003e9a:	3330      	adds	r3, #48	; 0x30
 8003e9c:	3802      	subs	r0, #2
 8003e9e:	b2d9      	uxtb	r1, r3
 8003ea0:	4284      	cmp	r4, r0
 8003ea2:	f802 1c01 	strb.w	r1, [r2, #-1]
 8003ea6:	d973      	bls.n	8003f90 <_vfprintf_r+0x14b8>
 8003ea8:	f10d 0076 	add.w	r0, sp, #118	; 0x76
 8003eac:	4613      	mov	r3, r2
 8003eae:	e001      	b.n	8003eb4 <_vfprintf_r+0x13dc>
 8003eb0:	f813 1b01 	ldrb.w	r1, [r3], #1
 8003eb4:	f800 1b01 	strb.w	r1, [r0], #1
 8003eb8:	429c      	cmp	r4, r3
 8003eba:	d1f9      	bne.n	8003eb0 <_vfprintf_r+0x13d8>
 8003ebc:	ab21      	add	r3, sp, #132	; 0x84
 8003ebe:	1a9b      	subs	r3, r3, r2
 8003ec0:	f10d 0276 	add.w	r2, sp, #118	; 0x76
 8003ec4:	4413      	add	r3, r2
 8003ec6:	e6c5      	b.n	8003c54 <_vfprintf_r+0x117c>
 8003ec8:	2200      	movs	r2, #0
 8003eca:	2300      	movs	r3, #0
 8003ecc:	e9dd 0116 	ldrd	r0, r1, [sp, #88]	; 0x58
 8003ed0:	f003 fdc8 	bl	8007a64 <__aeabi_dcmpeq>
 8003ed4:	2800      	cmp	r0, #0
 8003ed6:	f47f af35 	bne.w	8003d44 <_vfprintf_r+0x126c>
 8003eda:	f1c5 0501 	rsb	r5, r5, #1
 8003ede:	951b      	str	r5, [sp, #108]	; 0x6c
 8003ee0:	442c      	add	r4, r5
 8003ee2:	e59d      	b.n	8003a20 <_vfprintf_r+0xf48>
 8003ee4:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
 8003ee8:	9203      	str	r2, [sp, #12]
 8003eea:	9308      	str	r3, [sp, #32]
 8003eec:	2667      	movs	r6, #103	; 0x67
 8003eee:	e5bb      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003ef0:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003ef2:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003ef4:	4413      	add	r3, r2
 8003ef6:	9a04      	ldr	r2, [sp, #16]
 8003ef8:	441a      	add	r2, r3
 8003efa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003efe:	9208      	str	r2, [sp, #32]
 8003f00:	9303      	str	r3, [sp, #12]
 8003f02:	e5b1      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003f04:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8003f06:	4a34      	ldr	r2, [pc, #208]	; (8003fd8 <_vfprintf_r+0x1500>)
 8003f08:	2b00      	cmp	r3, #0
 8003f0a:	bfb6      	itet	lt
 8003f0c:	272d      	movlt	r7, #45	; 0x2d
 8003f0e:	f89d 7067 	ldrbge.w	r7, [sp, #103]	; 0x67
 8003f12:	f88d 7067 	strblt.w	r7, [sp, #103]	; 0x67
 8003f16:	4b31      	ldr	r3, [pc, #196]	; (8003fdc <_vfprintf_r+0x1504>)
 8003f18:	f7ff b9db 	b.w	80032d2 <_vfprintf_r+0x7fa>
 8003f1c:	f018 0301 	ands.w	r3, r8, #1
 8003f20:	930b      	str	r3, [sp, #44]	; 0x2c
 8003f22:	f47f aea0 	bne.w	8003c66 <_vfprintf_r+0x118e>
 8003f26:	9b08      	ldr	r3, [sp, #32]
 8003f28:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f2c:	9303      	str	r3, [sp, #12]
 8003f2e:	e59b      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003f30:	b943      	cbnz	r3, 8003f44 <_vfprintf_r+0x146c>
 8003f32:	f018 0f01 	tst.w	r8, #1
 8003f36:	d105      	bne.n	8003f44 <_vfprintf_r+0x146c>
 8003f38:	2301      	movs	r3, #1
 8003f3a:	9303      	str	r3, [sp, #12]
 8003f3c:	9308      	str	r3, [sp, #32]
 8003f3e:	e593      	b.n	8003a68 <_vfprintf_r+0xf90>
 8003f40:	464a      	mov	r2, r9
 8003f42:	e621      	b.n	8003b88 <_vfprintf_r+0x10b0>
 8003f44:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f46:	3301      	adds	r3, #1
 8003f48:	e7d5      	b.n	8003ef6 <_vfprintf_r+0x141e>
 8003f4a:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8003f4c:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003f50:	6823      	ldr	r3, [r4, #0]
 8003f52:	ea43 73e3 	orr.w	r3, r3, r3, asr #31
 8003f56:	9304      	str	r3, [sp, #16]
 8003f58:	1d23      	adds	r3, r4, #4
 8003f5a:	4682      	mov	sl, r0
 8003f5c:	9309      	str	r3, [sp, #36]	; 0x24
 8003f5e:	f7fe be39 	b.w	8002bd4 <_vfprintf_r+0xfc>
 8003f62:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003f64:	9b1f      	ldr	r3, [sp, #124]	; 0x7c
 8003f66:	920b      	str	r2, [sp, #44]	; 0x2c
 8003f68:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003f6a:	1a9b      	subs	r3, r3, r2
 8003f6c:	930e      	str	r3, [sp, #56]	; 0x38
 8003f6e:	e652      	b.n	8003c16 <_vfprintf_r+0x113e>
 8003f70:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003f72:	195c      	adds	r4, r3, r5
 8003f74:	e554      	b.n	8003a20 <_vfprintf_r+0xf48>
 8003f76:	aa21      	add	r2, sp, #132	; 0x84
 8003f78:	4659      	mov	r1, fp
 8003f7a:	9806      	ldr	r0, [sp, #24]
 8003f7c:	f002 fb0a 	bl	8006594 <__sprint_r>
 8003f80:	2800      	cmp	r0, #0
 8003f82:	f47e aefc 	bne.w	8002d7e <_vfprintf_r+0x2a6>
 8003f86:	e9dd 2422 	ldrd	r2, r4, [sp, #136]	; 0x88
 8003f8a:	f10d 09b8 	add.w	r9, sp, #184	; 0xb8
 8003f8e:	e5aa      	b.n	8003ae6 <_vfprintf_r+0x100e>
 8003f90:	f10d 0376 	add.w	r3, sp, #118	; 0x76
 8003f94:	e65e      	b.n	8003c54 <_vfprintf_r+0x117c>
 8003f96:	9d04      	ldr	r5, [sp, #16]
 8003f98:	e712      	b.n	8003dc0 <_vfprintf_r+0x12e8>
 8003f9a:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003f9e:	f7ff b9dd 	b.w	800335c <_vfprintf_r+0x884>
 8003fa2:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003fa6:	f7ff b940 	b.w	800322a <_vfprintf_r+0x752>
 8003faa:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003fae:	f7ff b95e 	b.w	800326e <_vfprintf_r+0x796>
 8003fb2:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003fb6:	f7fe bf12 	b.w	8002dde <_vfprintf_r+0x306>
 8003fba:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003fbe:	f7ff b87e 	b.w	80030be <_vfprintf_r+0x5e6>
 8003fc2:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003fc6:	f7ff ba0b 	b.w	80033e0 <_vfprintf_r+0x908>
 8003fca:	f88d 1067 	strb.w	r1, [sp, #103]	; 0x67
 8003fce:	f7ff b8f2 	b.w	80031b6 <_vfprintf_r+0x6de>
 8003fd2:	bf00      	nop
 8003fd4:	cccccccd 	.word	0xcccccccd
 8003fd8:	08007c34 	.word	0x08007c34
 8003fdc:	08007c30 	.word	0x08007c30
 8003fe0:	08007c7c 	.word	0x08007c7c

08003fe4 <__sbprintf>:
 8003fe4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003fe8:	460c      	mov	r4, r1
 8003fea:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003fee:	8989      	ldrh	r1, [r1, #12]
 8003ff0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003ff2:	89e5      	ldrh	r5, [r4, #14]
 8003ff4:	9619      	str	r6, [sp, #100]	; 0x64
 8003ff6:	f021 0102 	bic.w	r1, r1, #2
 8003ffa:	4606      	mov	r6, r0
 8003ffc:	69e0      	ldr	r0, [r4, #28]
 8003ffe:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004002:	4617      	mov	r7, r2
 8004004:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004008:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800400a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800400e:	4698      	mov	r8, r3
 8004010:	ad1a      	add	r5, sp, #104	; 0x68
 8004012:	2300      	movs	r3, #0
 8004014:	9007      	str	r0, [sp, #28]
 8004016:	a816      	add	r0, sp, #88	; 0x58
 8004018:	9209      	str	r2, [sp, #36]	; 0x24
 800401a:	9306      	str	r3, [sp, #24]
 800401c:	9500      	str	r5, [sp, #0]
 800401e:	9504      	str	r5, [sp, #16]
 8004020:	9102      	str	r1, [sp, #8]
 8004022:	9105      	str	r1, [sp, #20]
 8004024:	f001 fb10 	bl	8005648 <__retarget_lock_init_recursive>
 8004028:	4643      	mov	r3, r8
 800402a:	463a      	mov	r2, r7
 800402c:	4669      	mov	r1, sp
 800402e:	4630      	mov	r0, r6
 8004030:	f7fe fd52 	bl	8002ad8 <_vfprintf_r>
 8004034:	1e05      	subs	r5, r0, #0
 8004036:	db07      	blt.n	8004048 <__sbprintf+0x64>
 8004038:	4630      	mov	r0, r6
 800403a:	4669      	mov	r1, sp
 800403c:	f001 f8da 	bl	80051f4 <_fflush_r>
 8004040:	2800      	cmp	r0, #0
 8004042:	bf18      	it	ne
 8004044:	f04f 35ff 	movne.w	r5, #4294967295
 8004048:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800404c:	065b      	lsls	r3, r3, #25
 800404e:	d503      	bpl.n	8004058 <__sbprintf+0x74>
 8004050:	89a3      	ldrh	r3, [r4, #12]
 8004052:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004056:	81a3      	strh	r3, [r4, #12]
 8004058:	9816      	ldr	r0, [sp, #88]	; 0x58
 800405a:	f001 faf7 	bl	800564c <__retarget_lock_close_recursive>
 800405e:	4628      	mov	r0, r5
 8004060:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004064:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004068 <__swsetup_r>:
 8004068:	b538      	push	{r3, r4, r5, lr}
 800406a:	4b31      	ldr	r3, [pc, #196]	; (8004130 <__swsetup_r+0xc8>)
 800406c:	681b      	ldr	r3, [r3, #0]
 800406e:	4605      	mov	r5, r0
 8004070:	460c      	mov	r4, r1
 8004072:	b113      	cbz	r3, 800407a <__swsetup_r+0x12>
 8004074:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004076:	2a00      	cmp	r2, #0
 8004078:	d03a      	beq.n	80040f0 <__swsetup_r+0x88>
 800407a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800407e:	b293      	uxth	r3, r2
 8004080:	0718      	lsls	r0, r3, #28
 8004082:	d50c      	bpl.n	800409e <__swsetup_r+0x36>
 8004084:	6920      	ldr	r0, [r4, #16]
 8004086:	b1a8      	cbz	r0, 80040b4 <__swsetup_r+0x4c>
 8004088:	f013 0201 	ands.w	r2, r3, #1
 800408c:	d020      	beq.n	80040d0 <__swsetup_r+0x68>
 800408e:	6963      	ldr	r3, [r4, #20]
 8004090:	2200      	movs	r2, #0
 8004092:	425b      	negs	r3, r3
 8004094:	61a3      	str	r3, [r4, #24]
 8004096:	60a2      	str	r2, [r4, #8]
 8004098:	b300      	cbz	r0, 80040dc <__swsetup_r+0x74>
 800409a:	2000      	movs	r0, #0
 800409c:	bd38      	pop	{r3, r4, r5, pc}
 800409e:	06d9      	lsls	r1, r3, #27
 80040a0:	d53e      	bpl.n	8004120 <__swsetup_r+0xb8>
 80040a2:	0758      	lsls	r0, r3, #29
 80040a4:	d428      	bmi.n	80040f8 <__swsetup_r+0x90>
 80040a6:	6920      	ldr	r0, [r4, #16]
 80040a8:	f042 0308 	orr.w	r3, r2, #8
 80040ac:	81a3      	strh	r3, [r4, #12]
 80040ae:	b29b      	uxth	r3, r3
 80040b0:	2800      	cmp	r0, #0
 80040b2:	d1e9      	bne.n	8004088 <__swsetup_r+0x20>
 80040b4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80040b8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80040bc:	d0e4      	beq.n	8004088 <__swsetup_r+0x20>
 80040be:	4628      	mov	r0, r5
 80040c0:	4621      	mov	r1, r4
 80040c2:	f001 faf7 	bl	80056b4 <__smakebuf_r>
 80040c6:	89a3      	ldrh	r3, [r4, #12]
 80040c8:	6920      	ldr	r0, [r4, #16]
 80040ca:	f013 0201 	ands.w	r2, r3, #1
 80040ce:	d1de      	bne.n	800408e <__swsetup_r+0x26>
 80040d0:	0799      	lsls	r1, r3, #30
 80040d2:	bf58      	it	pl
 80040d4:	6962      	ldrpl	r2, [r4, #20]
 80040d6:	60a2      	str	r2, [r4, #8]
 80040d8:	2800      	cmp	r0, #0
 80040da:	d1de      	bne.n	800409a <__swsetup_r+0x32>
 80040dc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80040e0:	061a      	lsls	r2, r3, #24
 80040e2:	d5db      	bpl.n	800409c <__swsetup_r+0x34>
 80040e4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040e8:	81a3      	strh	r3, [r4, #12]
 80040ea:	f04f 30ff 	mov.w	r0, #4294967295
 80040ee:	bd38      	pop	{r3, r4, r5, pc}
 80040f0:	4618      	mov	r0, r3
 80040f2:	f001 f8db 	bl	80052ac <__sinit>
 80040f6:	e7c0      	b.n	800407a <__swsetup_r+0x12>
 80040f8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80040fa:	b151      	cbz	r1, 8004112 <__swsetup_r+0xaa>
 80040fc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004100:	4299      	cmp	r1, r3
 8004102:	d004      	beq.n	800410e <__swsetup_r+0xa6>
 8004104:	4628      	mov	r0, r5
 8004106:	f001 f973 	bl	80053f0 <_free_r>
 800410a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800410e:	2300      	movs	r3, #0
 8004110:	6323      	str	r3, [r4, #48]	; 0x30
 8004112:	2300      	movs	r3, #0
 8004114:	6920      	ldr	r0, [r4, #16]
 8004116:	6063      	str	r3, [r4, #4]
 8004118:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800411c:	6020      	str	r0, [r4, #0]
 800411e:	e7c3      	b.n	80040a8 <__swsetup_r+0x40>
 8004120:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004124:	2309      	movs	r3, #9
 8004126:	602b      	str	r3, [r5, #0]
 8004128:	f04f 30ff 	mov.w	r0, #4294967295
 800412c:	81a2      	strh	r2, [r4, #12]
 800412e:	bd38      	pop	{r3, r4, r5, pc}
 8004130:	20000010 	.word	0x20000010

08004134 <register_fini>:
 8004134:	4b02      	ldr	r3, [pc, #8]	; (8004140 <register_fini+0xc>)
 8004136:	b113      	cbz	r3, 800413e <register_fini+0xa>
 8004138:	4802      	ldr	r0, [pc, #8]	; (8004144 <register_fini+0x10>)
 800413a:	f000 b805 	b.w	8004148 <atexit>
 800413e:	4770      	bx	lr
 8004140:	00000000 	.word	0x00000000
 8004144:	0800531d 	.word	0x0800531d

08004148 <atexit>:
 8004148:	2300      	movs	r3, #0
 800414a:	4601      	mov	r1, r0
 800414c:	461a      	mov	r2, r3
 800414e:	4618      	mov	r0, r3
 8004150:	f002 ba40 	b.w	80065d4 <__register_exitproc>

08004154 <quorem>:
 8004154:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004158:	6903      	ldr	r3, [r0, #16]
 800415a:	690f      	ldr	r7, [r1, #16]
 800415c:	42bb      	cmp	r3, r7
 800415e:	b083      	sub	sp, #12
 8004160:	f2c0 8086 	blt.w	8004270 <quorem+0x11c>
 8004164:	3f01      	subs	r7, #1
 8004166:	f101 0914 	add.w	r9, r1, #20
 800416a:	f100 0a14 	add.w	sl, r0, #20
 800416e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004172:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004176:	00bc      	lsls	r4, r7, #2
 8004178:	3201      	adds	r2, #1
 800417a:	fbb3 f8f2 	udiv	r8, r3, r2
 800417e:	eb0a 0304 	add.w	r3, sl, r4
 8004182:	9400      	str	r4, [sp, #0]
 8004184:	eb09 0b04 	add.w	fp, r9, r4
 8004188:	9301      	str	r3, [sp, #4]
 800418a:	f1b8 0f00 	cmp.w	r8, #0
 800418e:	d038      	beq.n	8004202 <quorem+0xae>
 8004190:	2500      	movs	r5, #0
 8004192:	462e      	mov	r6, r5
 8004194:	46ce      	mov	lr, r9
 8004196:	46d4      	mov	ip, sl
 8004198:	f85e 4b04 	ldr.w	r4, [lr], #4
 800419c:	f8dc 3000 	ldr.w	r3, [ip]
 80041a0:	b2a2      	uxth	r2, r4
 80041a2:	fb08 5502 	mla	r5, r8, r2, r5
 80041a6:	0c22      	lsrs	r2, r4, #16
 80041a8:	0c2c      	lsrs	r4, r5, #16
 80041aa:	fb08 4202 	mla	r2, r8, r2, r4
 80041ae:	b2ad      	uxth	r5, r5
 80041b0:	1b75      	subs	r5, r6, r5
 80041b2:	b296      	uxth	r6, r2
 80041b4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80041b8:	fa15 f383 	uxtah	r3, r5, r3
 80041bc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80041c0:	b29b      	uxth	r3, r3
 80041c2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80041c6:	45f3      	cmp	fp, lr
 80041c8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80041cc:	f84c 3b04 	str.w	r3, [ip], #4
 80041d0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80041d4:	d2e0      	bcs.n	8004198 <quorem+0x44>
 80041d6:	9b00      	ldr	r3, [sp, #0]
 80041d8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80041dc:	b98b      	cbnz	r3, 8004202 <quorem+0xae>
 80041de:	9a01      	ldr	r2, [sp, #4]
 80041e0:	1f13      	subs	r3, r2, #4
 80041e2:	459a      	cmp	sl, r3
 80041e4:	d20c      	bcs.n	8004200 <quorem+0xac>
 80041e6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80041ea:	b94b      	cbnz	r3, 8004200 <quorem+0xac>
 80041ec:	f1a2 0308 	sub.w	r3, r2, #8
 80041f0:	e002      	b.n	80041f8 <quorem+0xa4>
 80041f2:	681a      	ldr	r2, [r3, #0]
 80041f4:	3b04      	subs	r3, #4
 80041f6:	b91a      	cbnz	r2, 8004200 <quorem+0xac>
 80041f8:	459a      	cmp	sl, r3
 80041fa:	f107 37ff 	add.w	r7, r7, #4294967295
 80041fe:	d3f8      	bcc.n	80041f2 <quorem+0x9e>
 8004200:	6107      	str	r7, [r0, #16]
 8004202:	4604      	mov	r4, r0
 8004204:	f001 ffb6 	bl	8006174 <__mcmp>
 8004208:	2800      	cmp	r0, #0
 800420a:	db2d      	blt.n	8004268 <quorem+0x114>
 800420c:	f108 0801 	add.w	r8, r8, #1
 8004210:	4655      	mov	r5, sl
 8004212:	2300      	movs	r3, #0
 8004214:	f859 1b04 	ldr.w	r1, [r9], #4
 8004218:	6828      	ldr	r0, [r5, #0]
 800421a:	b28a      	uxth	r2, r1
 800421c:	1a9a      	subs	r2, r3, r2
 800421e:	0c0b      	lsrs	r3, r1, #16
 8004220:	fa12 f280 	uxtah	r2, r2, r0
 8004224:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004228:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800422c:	b292      	uxth	r2, r2
 800422e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004232:	45cb      	cmp	fp, r9
 8004234:	f845 2b04 	str.w	r2, [r5], #4
 8004238:	ea4f 4323 	mov.w	r3, r3, asr #16
 800423c:	d2ea      	bcs.n	8004214 <quorem+0xc0>
 800423e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004242:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004246:	b97a      	cbnz	r2, 8004268 <quorem+0x114>
 8004248:	1f1a      	subs	r2, r3, #4
 800424a:	4592      	cmp	sl, r2
 800424c:	d20b      	bcs.n	8004266 <quorem+0x112>
 800424e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004252:	b942      	cbnz	r2, 8004266 <quorem+0x112>
 8004254:	3b08      	subs	r3, #8
 8004256:	e002      	b.n	800425e <quorem+0x10a>
 8004258:	681a      	ldr	r2, [r3, #0]
 800425a:	3b04      	subs	r3, #4
 800425c:	b91a      	cbnz	r2, 8004266 <quorem+0x112>
 800425e:	459a      	cmp	sl, r3
 8004260:	f107 37ff 	add.w	r7, r7, #4294967295
 8004264:	d3f8      	bcc.n	8004258 <quorem+0x104>
 8004266:	6127      	str	r7, [r4, #16]
 8004268:	4640      	mov	r0, r8
 800426a:	b003      	add	sp, #12
 800426c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004270:	2000      	movs	r0, #0
 8004272:	b003      	add	sp, #12
 8004274:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004278 <_dtoa_r>:
 8004278:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800427c:	ec55 4b10 	vmov	r4, r5, d0
 8004280:	b09b      	sub	sp, #108	; 0x6c
 8004282:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004284:	9102      	str	r1, [sp, #8]
 8004286:	4681      	mov	r9, r0
 8004288:	9207      	str	r2, [sp, #28]
 800428a:	9305      	str	r3, [sp, #20]
 800428c:	e9cd 4500 	strd	r4, r5, [sp]
 8004290:	b156      	cbz	r6, 80042a8 <_dtoa_r+0x30>
 8004292:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004294:	6072      	str	r2, [r6, #4]
 8004296:	2301      	movs	r3, #1
 8004298:	4093      	lsls	r3, r2
 800429a:	60b3      	str	r3, [r6, #8]
 800429c:	4631      	mov	r1, r6
 800429e:	f001 fd79 	bl	8005d94 <_Bfree>
 80042a2:	2300      	movs	r3, #0
 80042a4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80042a8:	f1b5 0800 	subs.w	r8, r5, #0
 80042ac:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80042ae:	bfb4      	ite	lt
 80042b0:	2301      	movlt	r3, #1
 80042b2:	2300      	movge	r3, #0
 80042b4:	6013      	str	r3, [r2, #0]
 80042b6:	4b76      	ldr	r3, [pc, #472]	; (8004490 <_dtoa_r+0x218>)
 80042b8:	bfbc      	itt	lt
 80042ba:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80042be:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80042c2:	ea33 0308 	bics.w	r3, r3, r8
 80042c6:	f000 80a6 	beq.w	8004416 <_dtoa_r+0x19e>
 80042ca:	e9dd 6700 	ldrd	r6, r7, [sp]
 80042ce:	2200      	movs	r2, #0
 80042d0:	2300      	movs	r3, #0
 80042d2:	4630      	mov	r0, r6
 80042d4:	4639      	mov	r1, r7
 80042d6:	f003 fbc5 	bl	8007a64 <__aeabi_dcmpeq>
 80042da:	4605      	mov	r5, r0
 80042dc:	b178      	cbz	r0, 80042fe <_dtoa_r+0x86>
 80042de:	9a05      	ldr	r2, [sp, #20]
 80042e0:	2301      	movs	r3, #1
 80042e2:	6013      	str	r3, [r2, #0]
 80042e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80042e6:	2b00      	cmp	r3, #0
 80042e8:	f000 80c0 	beq.w	800446c <_dtoa_r+0x1f4>
 80042ec:	4b69      	ldr	r3, [pc, #420]	; (8004494 <_dtoa_r+0x21c>)
 80042ee:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042f0:	f103 3bff 	add.w	fp, r3, #4294967295
 80042f4:	6013      	str	r3, [r2, #0]
 80042f6:	4658      	mov	r0, fp
 80042f8:	b01b      	add	sp, #108	; 0x6c
 80042fa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042fe:	aa18      	add	r2, sp, #96	; 0x60
 8004300:	a919      	add	r1, sp, #100	; 0x64
 8004302:	ec47 6b10 	vmov	d0, r6, r7
 8004306:	4648      	mov	r0, r9
 8004308:	f001 ffc6 	bl	8006298 <__d2b>
 800430c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004310:	4682      	mov	sl, r0
 8004312:	f040 80a0 	bne.w	8004456 <_dtoa_r+0x1de>
 8004316:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800431a:	442c      	add	r4, r5
 800431c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004320:	2b20      	cmp	r3, #32
 8004322:	f340 842e 	ble.w	8004b82 <_dtoa_r+0x90a>
 8004326:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800432a:	fa08 f803 	lsl.w	r8, r8, r3
 800432e:	9b00      	ldr	r3, [sp, #0]
 8004330:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004334:	fa23 f000 	lsr.w	r0, r3, r0
 8004338:	ea48 0000 	orr.w	r0, r8, r0
 800433c:	f003 f8b0 	bl	80074a0 <__aeabi_ui2d>
 8004340:	2301      	movs	r3, #1
 8004342:	4606      	mov	r6, r0
 8004344:	3c01      	subs	r4, #1
 8004346:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800434a:	930f      	str	r3, [sp, #60]	; 0x3c
 800434c:	4630      	mov	r0, r6
 800434e:	4639      	mov	r1, r7
 8004350:	2200      	movs	r2, #0
 8004352:	4b51      	ldr	r3, [pc, #324]	; (8004498 <_dtoa_r+0x220>)
 8004354:	f002 ff66 	bl	8007224 <__aeabi_dsub>
 8004358:	a347      	add	r3, pc, #284	; (adr r3, 8004478 <_dtoa_r+0x200>)
 800435a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800435e:	f003 f919 	bl	8007594 <__aeabi_dmul>
 8004362:	a347      	add	r3, pc, #284	; (adr r3, 8004480 <_dtoa_r+0x208>)
 8004364:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004368:	f002 ff5e 	bl	8007228 <__adddf3>
 800436c:	4606      	mov	r6, r0
 800436e:	4620      	mov	r0, r4
 8004370:	460f      	mov	r7, r1
 8004372:	f003 f8a5 	bl	80074c0 <__aeabi_i2d>
 8004376:	a344      	add	r3, pc, #272	; (adr r3, 8004488 <_dtoa_r+0x210>)
 8004378:	e9d3 2300 	ldrd	r2, r3, [r3]
 800437c:	f003 f90a 	bl	8007594 <__aeabi_dmul>
 8004380:	4602      	mov	r2, r0
 8004382:	460b      	mov	r3, r1
 8004384:	4630      	mov	r0, r6
 8004386:	4639      	mov	r1, r7
 8004388:	f002 ff4e 	bl	8007228 <__adddf3>
 800438c:	4606      	mov	r6, r0
 800438e:	460f      	mov	r7, r1
 8004390:	f003 fbb0 	bl	8007af4 <__aeabi_d2iz>
 8004394:	2200      	movs	r2, #0
 8004396:	9006      	str	r0, [sp, #24]
 8004398:	2300      	movs	r3, #0
 800439a:	4630      	mov	r0, r6
 800439c:	4639      	mov	r1, r7
 800439e:	f003 fb6b 	bl	8007a78 <__aeabi_dcmplt>
 80043a2:	2800      	cmp	r0, #0
 80043a4:	f040 8273 	bne.w	800488e <_dtoa_r+0x616>
 80043a8:	9e06      	ldr	r6, [sp, #24]
 80043aa:	2e16      	cmp	r6, #22
 80043ac:	f200 825d 	bhi.w	800486a <_dtoa_r+0x5f2>
 80043b0:	4b3a      	ldr	r3, [pc, #232]	; (800449c <_dtoa_r+0x224>)
 80043b2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80043b6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80043ba:	e9dd 2300 	ldrd	r2, r3, [sp]
 80043be:	f003 fb79 	bl	8007ab4 <__aeabi_dcmpgt>
 80043c2:	2800      	cmp	r0, #0
 80043c4:	f000 83d9 	beq.w	8004b7a <_dtoa_r+0x902>
 80043c8:	1e73      	subs	r3, r6, #1
 80043ca:	9306      	str	r3, [sp, #24]
 80043cc:	2300      	movs	r3, #0
 80043ce:	930d      	str	r3, [sp, #52]	; 0x34
 80043d0:	1b2c      	subs	r4, r5, r4
 80043d2:	f1b4 0801 	subs.w	r8, r4, #1
 80043d6:	f100 8254 	bmi.w	8004882 <_dtoa_r+0x60a>
 80043da:	2300      	movs	r3, #0
 80043dc:	9308      	str	r3, [sp, #32]
 80043de:	9b06      	ldr	r3, [sp, #24]
 80043e0:	2b00      	cmp	r3, #0
 80043e2:	f2c0 8245 	blt.w	8004870 <_dtoa_r+0x5f8>
 80043e6:	4498      	add	r8, r3
 80043e8:	930c      	str	r3, [sp, #48]	; 0x30
 80043ea:	2300      	movs	r3, #0
 80043ec:	930b      	str	r3, [sp, #44]	; 0x2c
 80043ee:	9b02      	ldr	r3, [sp, #8]
 80043f0:	2b09      	cmp	r3, #9
 80043f2:	d85b      	bhi.n	80044ac <_dtoa_r+0x234>
 80043f4:	2b05      	cmp	r3, #5
 80043f6:	f340 83c2 	ble.w	8004b7e <_dtoa_r+0x906>
 80043fa:	3b04      	subs	r3, #4
 80043fc:	9302      	str	r3, [sp, #8]
 80043fe:	2500      	movs	r5, #0
 8004400:	9b02      	ldr	r3, [sp, #8]
 8004402:	3b02      	subs	r3, #2
 8004404:	2b03      	cmp	r3, #3
 8004406:	f200 849a 	bhi.w	8004d3e <_dtoa_r+0xac6>
 800440a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800440e:	03e1      	.short	0x03e1
 8004410:	03ea03c1 	.word	0x03ea03c1
 8004414:	04f7      	.short	0x04f7
 8004416:	9a05      	ldr	r2, [sp, #20]
 8004418:	f242 730f 	movw	r3, #9999	; 0x270f
 800441c:	6013      	str	r3, [r2, #0]
 800441e:	9b00      	ldr	r3, [sp, #0]
 8004420:	b983      	cbnz	r3, 8004444 <_dtoa_r+0x1cc>
 8004422:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004426:	b96b      	cbnz	r3, 8004444 <_dtoa_r+0x1cc>
 8004428:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800442a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80044a0 <_dtoa_r+0x228>
 800442e:	2b00      	cmp	r3, #0
 8004430:	f43f af61 	beq.w	80042f6 <_dtoa_r+0x7e>
 8004434:	f10b 0308 	add.w	r3, fp, #8
 8004438:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800443a:	4658      	mov	r0, fp
 800443c:	6013      	str	r3, [r2, #0]
 800443e:	b01b      	add	sp, #108	; 0x6c
 8004440:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004444:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004446:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80044a4 <_dtoa_r+0x22c>
 800444a:	2b00      	cmp	r3, #0
 800444c:	f43f af53 	beq.w	80042f6 <_dtoa_r+0x7e>
 8004450:	f10b 0303 	add.w	r3, fp, #3
 8004454:	e7f0      	b.n	8004438 <_dtoa_r+0x1c0>
 8004456:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800445a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800445e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004460:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004464:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004468:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800446a:	e76f      	b.n	800434c <_dtoa_r+0xd4>
 800446c:	f8df b038 	ldr.w	fp, [pc, #56]	; 80044a8 <_dtoa_r+0x230>
 8004470:	4658      	mov	r0, fp
 8004472:	b01b      	add	sp, #108	; 0x6c
 8004474:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004478:	636f4361 	.word	0x636f4361
 800447c:	3fd287a7 	.word	0x3fd287a7
 8004480:	8b60c8b3 	.word	0x8b60c8b3
 8004484:	3fc68a28 	.word	0x3fc68a28
 8004488:	509f79fb 	.word	0x509f79fb
 800448c:	3fd34413 	.word	0x3fd34413
 8004490:	7ff00000 	.word	0x7ff00000
 8004494:	08007c69 	.word	0x08007c69
 8004498:	3ff80000 	.word	0x3ff80000
 800449c:	08007cc8 	.word	0x08007cc8
 80044a0:	08007c8c 	.word	0x08007c8c
 80044a4:	08007c98 	.word	0x08007c98
 80044a8:	08007c68 	.word	0x08007c68
 80044ac:	f04f 34ff 	mov.w	r4, #4294967295
 80044b0:	2501      	movs	r5, #1
 80044b2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80044b6:	2300      	movs	r3, #0
 80044b8:	9302      	str	r3, [sp, #8]
 80044ba:	9307      	str	r3, [sp, #28]
 80044bc:	2100      	movs	r1, #0
 80044be:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80044c2:	940e      	str	r4, [sp, #56]	; 0x38
 80044c4:	4648      	mov	r0, r9
 80044c6:	f001 fc3f 	bl	8005d48 <_Balloc>
 80044ca:	2c0e      	cmp	r4, #14
 80044cc:	4683      	mov	fp, r0
 80044ce:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80044d2:	f200 80fb 	bhi.w	80046cc <_dtoa_r+0x454>
 80044d6:	2d00      	cmp	r5, #0
 80044d8:	f000 80f8 	beq.w	80046cc <_dtoa_r+0x454>
 80044dc:	ed9d 7b00 	vldr	d7, [sp]
 80044e0:	9906      	ldr	r1, [sp, #24]
 80044e2:	2900      	cmp	r1, #0
 80044e4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80044e8:	f340 83e7 	ble.w	8004cba <_dtoa_r+0xa42>
 80044ec:	4b9d      	ldr	r3, [pc, #628]	; (8004764 <_dtoa_r+0x4ec>)
 80044ee:	f001 020f 	and.w	r2, r1, #15
 80044f2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044f6:	ed93 7b00 	vldr	d7, [r3]
 80044fa:	110c      	asrs	r4, r1, #4
 80044fc:	06e2      	lsls	r2, r4, #27
 80044fe:	ed8d 7b00 	vstr	d7, [sp]
 8004502:	f140 84a1 	bpl.w	8004e48 <_dtoa_r+0xbd0>
 8004506:	4b98      	ldr	r3, [pc, #608]	; (8004768 <_dtoa_r+0x4f0>)
 8004508:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800450c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004510:	f003 f96a 	bl	80077e8 <__aeabi_ddiv>
 8004514:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004518:	f004 040f 	and.w	r4, r4, #15
 800451c:	2603      	movs	r6, #3
 800451e:	b17c      	cbz	r4, 8004540 <_dtoa_r+0x2c8>
 8004520:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004524:	4d90      	ldr	r5, [pc, #576]	; (8004768 <_dtoa_r+0x4f0>)
 8004526:	07e3      	lsls	r3, r4, #31
 8004528:	d504      	bpl.n	8004534 <_dtoa_r+0x2bc>
 800452a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800452e:	f003 f831 	bl	8007594 <__aeabi_dmul>
 8004532:	3601      	adds	r6, #1
 8004534:	1064      	asrs	r4, r4, #1
 8004536:	f105 0508 	add.w	r5, r5, #8
 800453a:	d1f4      	bne.n	8004526 <_dtoa_r+0x2ae>
 800453c:	e9cd 0100 	strd	r0, r1, [sp]
 8004540:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004544:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004548:	f003 f94e 	bl	80077e8 <__aeabi_ddiv>
 800454c:	e9cd 0100 	strd	r0, r1, [sp]
 8004550:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004552:	b143      	cbz	r3, 8004566 <_dtoa_r+0x2ee>
 8004554:	2200      	movs	r2, #0
 8004556:	4b85      	ldr	r3, [pc, #532]	; (800476c <_dtoa_r+0x4f4>)
 8004558:	e9dd 0100 	ldrd	r0, r1, [sp]
 800455c:	f003 fa8c 	bl	8007a78 <__aeabi_dcmplt>
 8004560:	2800      	cmp	r0, #0
 8004562:	f040 8503 	bne.w	8004f6c <_dtoa_r+0xcf4>
 8004566:	4630      	mov	r0, r6
 8004568:	f002 ffaa 	bl	80074c0 <__aeabi_i2d>
 800456c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004570:	f003 f810 	bl	8007594 <__aeabi_dmul>
 8004574:	4b7e      	ldr	r3, [pc, #504]	; (8004770 <_dtoa_r+0x4f8>)
 8004576:	2200      	movs	r2, #0
 8004578:	f002 fe56 	bl	8007228 <__adddf3>
 800457c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800457e:	4606      	mov	r6, r0
 8004580:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004584:	2b00      	cmp	r3, #0
 8004586:	f000 841e 	beq.w	8004dc6 <_dtoa_r+0xb4e>
 800458a:	9b06      	ldr	r3, [sp, #24]
 800458c:	9316      	str	r3, [sp, #88]	; 0x58
 800458e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004590:	9312      	str	r3, [sp, #72]	; 0x48
 8004592:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004596:	f003 faad 	bl	8007af4 <__aeabi_d2iz>
 800459a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800459c:	4b71      	ldr	r3, [pc, #452]	; (8004764 <_dtoa_r+0x4ec>)
 800459e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045a2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80045a6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80045aa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80045ae:	f002 ff87 	bl	80074c0 <__aeabi_i2d>
 80045b2:	460b      	mov	r3, r1
 80045b4:	4602      	mov	r2, r0
 80045b6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045ba:	e9cd 6700 	strd	r6, r7, [sp]
 80045be:	f002 fe31 	bl	8007224 <__aeabi_dsub>
 80045c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80045c4:	b2ed      	uxtb	r5, r5
 80045c6:	4606      	mov	r6, r0
 80045c8:	460f      	mov	r7, r1
 80045ca:	f10b 0401 	add.w	r4, fp, #1
 80045ce:	2b00      	cmp	r3, #0
 80045d0:	f000 845b 	beq.w	8004e8a <_dtoa_r+0xc12>
 80045d4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80045d8:	2000      	movs	r0, #0
 80045da:	4966      	ldr	r1, [pc, #408]	; (8004774 <_dtoa_r+0x4fc>)
 80045dc:	f003 f904 	bl	80077e8 <__aeabi_ddiv>
 80045e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80045e4:	f002 fe1e 	bl	8007224 <__aeabi_dsub>
 80045e8:	f88b 5000 	strb.w	r5, [fp]
 80045ec:	4632      	mov	r2, r6
 80045ee:	463b      	mov	r3, r7
 80045f0:	e9cd 0100 	strd	r0, r1, [sp]
 80045f4:	f003 fa5e 	bl	8007ab4 <__aeabi_dcmpgt>
 80045f8:	2800      	cmp	r0, #0
 80045fa:	f040 8506 	bne.w	800500a <_dtoa_r+0xd92>
 80045fe:	4632      	mov	r2, r6
 8004600:	463b      	mov	r3, r7
 8004602:	2000      	movs	r0, #0
 8004604:	4959      	ldr	r1, [pc, #356]	; (800476c <_dtoa_r+0x4f4>)
 8004606:	f002 fe0d 	bl	8007224 <__aeabi_dsub>
 800460a:	4602      	mov	r2, r0
 800460c:	460b      	mov	r3, r1
 800460e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004612:	f003 fa4f 	bl	8007ab4 <__aeabi_dcmpgt>
 8004616:	2800      	cmp	r0, #0
 8004618:	f040 84ff 	bne.w	800501a <_dtoa_r+0xda2>
 800461c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800461e:	2a01      	cmp	r2, #1
 8004620:	d050      	beq.n	80046c4 <_dtoa_r+0x44c>
 8004622:	445a      	add	r2, fp
 8004624:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004628:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800462c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004630:	4692      	mov	sl, r2
 8004632:	46cb      	mov	fp, r9
 8004634:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004638:	e00c      	b.n	8004654 <_dtoa_r+0x3dc>
 800463a:	2000      	movs	r0, #0
 800463c:	494b      	ldr	r1, [pc, #300]	; (800476c <_dtoa_r+0x4f4>)
 800463e:	f002 fdf1 	bl	8007224 <__aeabi_dsub>
 8004642:	4642      	mov	r2, r8
 8004644:	464b      	mov	r3, r9
 8004646:	f003 fa17 	bl	8007a78 <__aeabi_dcmplt>
 800464a:	2800      	cmp	r0, #0
 800464c:	f040 84e0 	bne.w	8005010 <_dtoa_r+0xd98>
 8004650:	4554      	cmp	r4, sl
 8004652:	d030      	beq.n	80046b6 <_dtoa_r+0x43e>
 8004654:	4640      	mov	r0, r8
 8004656:	4649      	mov	r1, r9
 8004658:	2200      	movs	r2, #0
 800465a:	4b47      	ldr	r3, [pc, #284]	; (8004778 <_dtoa_r+0x500>)
 800465c:	f002 ff9a 	bl	8007594 <__aeabi_dmul>
 8004660:	2200      	movs	r2, #0
 8004662:	4b45      	ldr	r3, [pc, #276]	; (8004778 <_dtoa_r+0x500>)
 8004664:	4680      	mov	r8, r0
 8004666:	4689      	mov	r9, r1
 8004668:	4630      	mov	r0, r6
 800466a:	4639      	mov	r1, r7
 800466c:	f002 ff92 	bl	8007594 <__aeabi_dmul>
 8004670:	460f      	mov	r7, r1
 8004672:	4606      	mov	r6, r0
 8004674:	f003 fa3e 	bl	8007af4 <__aeabi_d2iz>
 8004678:	4605      	mov	r5, r0
 800467a:	f002 ff21 	bl	80074c0 <__aeabi_i2d>
 800467e:	4602      	mov	r2, r0
 8004680:	460b      	mov	r3, r1
 8004682:	4630      	mov	r0, r6
 8004684:	4639      	mov	r1, r7
 8004686:	f002 fdcd 	bl	8007224 <__aeabi_dsub>
 800468a:	3530      	adds	r5, #48	; 0x30
 800468c:	b2ed      	uxtb	r5, r5
 800468e:	4642      	mov	r2, r8
 8004690:	464b      	mov	r3, r9
 8004692:	f804 5b01 	strb.w	r5, [r4], #1
 8004696:	4606      	mov	r6, r0
 8004698:	460f      	mov	r7, r1
 800469a:	f003 f9ed 	bl	8007a78 <__aeabi_dcmplt>
 800469e:	4632      	mov	r2, r6
 80046a0:	463b      	mov	r3, r7
 80046a2:	2800      	cmp	r0, #0
 80046a4:	d0c9      	beq.n	800463a <_dtoa_r+0x3c2>
 80046a6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80046a8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80046ac:	9306      	str	r3, [sp, #24]
 80046ae:	46d9      	mov	r9, fp
 80046b0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80046b4:	e238      	b.n	8004b28 <_dtoa_r+0x8b0>
 80046b6:	46d9      	mov	r9, fp
 80046b8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80046bc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80046c0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80046c4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80046c8:	e9cd 3400 	strd	r3, r4, [sp]
 80046cc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80046ce:	2b00      	cmp	r3, #0
 80046d0:	f2c0 80ae 	blt.w	8004830 <_dtoa_r+0x5b8>
 80046d4:	9a06      	ldr	r2, [sp, #24]
 80046d6:	2a0e      	cmp	r2, #14
 80046d8:	f300 80aa 	bgt.w	8004830 <_dtoa_r+0x5b8>
 80046dc:	4b21      	ldr	r3, [pc, #132]	; (8004764 <_dtoa_r+0x4ec>)
 80046de:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046e2:	ed93 7b00 	vldr	d7, [r3]
 80046e6:	9b07      	ldr	r3, [sp, #28]
 80046e8:	2b00      	cmp	r3, #0
 80046ea:	ed8d 7b02 	vstr	d7, [sp, #8]
 80046ee:	f2c0 82c0 	blt.w	8004c72 <_dtoa_r+0x9fa>
 80046f2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046f6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046fa:	4630      	mov	r0, r6
 80046fc:	4639      	mov	r1, r7
 80046fe:	f003 f873 	bl	80077e8 <__aeabi_ddiv>
 8004702:	f003 f9f7 	bl	8007af4 <__aeabi_d2iz>
 8004706:	4605      	mov	r5, r0
 8004708:	f002 feda 	bl	80074c0 <__aeabi_i2d>
 800470c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004710:	f002 ff40 	bl	8007594 <__aeabi_dmul>
 8004714:	460b      	mov	r3, r1
 8004716:	4602      	mov	r2, r0
 8004718:	4639      	mov	r1, r7
 800471a:	4630      	mov	r0, r6
 800471c:	f002 fd82 	bl	8007224 <__aeabi_dsub>
 8004720:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004724:	f88b 3000 	strb.w	r3, [fp]
 8004728:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800472a:	2b01      	cmp	r3, #1
 800472c:	4606      	mov	r6, r0
 800472e:	460f      	mov	r7, r1
 8004730:	f10b 0401 	add.w	r4, fp, #1
 8004734:	d053      	beq.n	80047de <_dtoa_r+0x566>
 8004736:	2200      	movs	r2, #0
 8004738:	4b0f      	ldr	r3, [pc, #60]	; (8004778 <_dtoa_r+0x500>)
 800473a:	f002 ff2b 	bl	8007594 <__aeabi_dmul>
 800473e:	2200      	movs	r2, #0
 8004740:	2300      	movs	r3, #0
 8004742:	4606      	mov	r6, r0
 8004744:	460f      	mov	r7, r1
 8004746:	f003 f98d 	bl	8007a64 <__aeabi_dcmpeq>
 800474a:	2800      	cmp	r0, #0
 800474c:	f040 81ec 	bne.w	8004b28 <_dtoa_r+0x8b0>
 8004750:	f8cd a000 	str.w	sl, [sp]
 8004754:	f8cd 901c 	str.w	r9, [sp, #28]
 8004758:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800475c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004760:	e017      	b.n	8004792 <_dtoa_r+0x51a>
 8004762:	bf00      	nop
 8004764:	08007cc8 	.word	0x08007cc8
 8004768:	08007ca0 	.word	0x08007ca0
 800476c:	3ff00000 	.word	0x3ff00000
 8004770:	401c0000 	.word	0x401c0000
 8004774:	3fe00000 	.word	0x3fe00000
 8004778:	40240000 	.word	0x40240000
 800477c:	f002 ff0a 	bl	8007594 <__aeabi_dmul>
 8004780:	2200      	movs	r2, #0
 8004782:	2300      	movs	r3, #0
 8004784:	4606      	mov	r6, r0
 8004786:	460f      	mov	r7, r1
 8004788:	f003 f96c 	bl	8007a64 <__aeabi_dcmpeq>
 800478c:	2800      	cmp	r0, #0
 800478e:	f040 833f 	bne.w	8004e10 <_dtoa_r+0xb98>
 8004792:	464a      	mov	r2, r9
 8004794:	4653      	mov	r3, sl
 8004796:	4630      	mov	r0, r6
 8004798:	4639      	mov	r1, r7
 800479a:	f003 f825 	bl	80077e8 <__aeabi_ddiv>
 800479e:	f003 f9a9 	bl	8007af4 <__aeabi_d2iz>
 80047a2:	4605      	mov	r5, r0
 80047a4:	f002 fe8c 	bl	80074c0 <__aeabi_i2d>
 80047a8:	464a      	mov	r2, r9
 80047aa:	4653      	mov	r3, sl
 80047ac:	f002 fef2 	bl	8007594 <__aeabi_dmul>
 80047b0:	4602      	mov	r2, r0
 80047b2:	460b      	mov	r3, r1
 80047b4:	4630      	mov	r0, r6
 80047b6:	4639      	mov	r1, r7
 80047b8:	f002 fd34 	bl	8007224 <__aeabi_dsub>
 80047bc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80047c0:	f804 cb01 	strb.w	ip, [r4], #1
 80047c4:	eba4 0c0b 	sub.w	ip, r4, fp
 80047c8:	45e0      	cmp	r8, ip
 80047ca:	4606      	mov	r6, r0
 80047cc:	460f      	mov	r7, r1
 80047ce:	f04f 0200 	mov.w	r2, #0
 80047d2:	4bc2      	ldr	r3, [pc, #776]	; (8004adc <_dtoa_r+0x864>)
 80047d4:	d1d2      	bne.n	800477c <_dtoa_r+0x504>
 80047d6:	f8dd a000 	ldr.w	sl, [sp]
 80047da:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80047de:	4632      	mov	r2, r6
 80047e0:	463b      	mov	r3, r7
 80047e2:	4630      	mov	r0, r6
 80047e4:	4639      	mov	r1, r7
 80047e6:	f002 fd1f 	bl	8007228 <__adddf3>
 80047ea:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047ee:	4606      	mov	r6, r0
 80047f0:	460f      	mov	r7, r1
 80047f2:	f003 f95f 	bl	8007ab4 <__aeabi_dcmpgt>
 80047f6:	b958      	cbnz	r0, 8004810 <_dtoa_r+0x598>
 80047f8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047fc:	4630      	mov	r0, r6
 80047fe:	4639      	mov	r1, r7
 8004800:	f003 f930 	bl	8007a64 <__aeabi_dcmpeq>
 8004804:	2800      	cmp	r0, #0
 8004806:	f000 818f 	beq.w	8004b28 <_dtoa_r+0x8b0>
 800480a:	07e9      	lsls	r1, r5, #31
 800480c:	f140 818c 	bpl.w	8004b28 <_dtoa_r+0x8b0>
 8004810:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004814:	e005      	b.n	8004822 <_dtoa_r+0x5aa>
 8004816:	459b      	cmp	fp, r3
 8004818:	f000 8376 	beq.w	8004f08 <_dtoa_r+0xc90>
 800481c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004820:	461c      	mov	r4, r3
 8004822:	2d39      	cmp	r5, #57	; 0x39
 8004824:	f104 33ff 	add.w	r3, r4, #4294967295
 8004828:	d0f5      	beq.n	8004816 <_dtoa_r+0x59e>
 800482a:	3501      	adds	r5, #1
 800482c:	701d      	strb	r5, [r3, #0]
 800482e:	e17b      	b.n	8004b28 <_dtoa_r+0x8b0>
 8004830:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004832:	2a00      	cmp	r2, #0
 8004834:	d03b      	beq.n	80048ae <_dtoa_r+0x636>
 8004836:	9a02      	ldr	r2, [sp, #8]
 8004838:	2a01      	cmp	r2, #1
 800483a:	f340 820d 	ble.w	8004c58 <_dtoa_r+0x9e0>
 800483e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004840:	1e5f      	subs	r7, r3, #1
 8004842:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004844:	42bb      	cmp	r3, r7
 8004846:	f2c0 82e8 	blt.w	8004e1a <_dtoa_r+0xba2>
 800484a:	1bdf      	subs	r7, r3, r7
 800484c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800484e:	2b00      	cmp	r3, #0
 8004850:	f2c0 830e 	blt.w	8004e70 <_dtoa_r+0xbf8>
 8004854:	9a08      	ldr	r2, [sp, #32]
 8004856:	4614      	mov	r4, r2
 8004858:	441a      	add	r2, r3
 800485a:	4498      	add	r8, r3
 800485c:	9208      	str	r2, [sp, #32]
 800485e:	2101      	movs	r1, #1
 8004860:	4648      	mov	r0, r9
 8004862:	f001 fb31 	bl	8005ec8 <__i2b>
 8004866:	4605      	mov	r5, r0
 8004868:	e024      	b.n	80048b4 <_dtoa_r+0x63c>
 800486a:	2301      	movs	r3, #1
 800486c:	930d      	str	r3, [sp, #52]	; 0x34
 800486e:	e5af      	b.n	80043d0 <_dtoa_r+0x158>
 8004870:	9a08      	ldr	r2, [sp, #32]
 8004872:	9b06      	ldr	r3, [sp, #24]
 8004874:	1ad2      	subs	r2, r2, r3
 8004876:	425b      	negs	r3, r3
 8004878:	930b      	str	r3, [sp, #44]	; 0x2c
 800487a:	2300      	movs	r3, #0
 800487c:	9208      	str	r2, [sp, #32]
 800487e:	930c      	str	r3, [sp, #48]	; 0x30
 8004880:	e5b5      	b.n	80043ee <_dtoa_r+0x176>
 8004882:	f1c4 0301 	rsb	r3, r4, #1
 8004886:	9308      	str	r3, [sp, #32]
 8004888:	f04f 0800 	mov.w	r8, #0
 800488c:	e5a7      	b.n	80043de <_dtoa_r+0x166>
 800488e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004892:	4640      	mov	r0, r8
 8004894:	f002 fe14 	bl	80074c0 <__aeabi_i2d>
 8004898:	4632      	mov	r2, r6
 800489a:	463b      	mov	r3, r7
 800489c:	f003 f8e2 	bl	8007a64 <__aeabi_dcmpeq>
 80048a0:	2800      	cmp	r0, #0
 80048a2:	f47f ad81 	bne.w	80043a8 <_dtoa_r+0x130>
 80048a6:	f108 33ff 	add.w	r3, r8, #4294967295
 80048aa:	9306      	str	r3, [sp, #24]
 80048ac:	e57c      	b.n	80043a8 <_dtoa_r+0x130>
 80048ae:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80048b0:	9c08      	ldr	r4, [sp, #32]
 80048b2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80048b4:	2c00      	cmp	r4, #0
 80048b6:	dd0c      	ble.n	80048d2 <_dtoa_r+0x65a>
 80048b8:	f1b8 0f00 	cmp.w	r8, #0
 80048bc:	dd09      	ble.n	80048d2 <_dtoa_r+0x65a>
 80048be:	4544      	cmp	r4, r8
 80048c0:	9a08      	ldr	r2, [sp, #32]
 80048c2:	4623      	mov	r3, r4
 80048c4:	bfa8      	it	ge
 80048c6:	4643      	movge	r3, r8
 80048c8:	1ad2      	subs	r2, r2, r3
 80048ca:	9208      	str	r2, [sp, #32]
 80048cc:	1ae4      	subs	r4, r4, r3
 80048ce:	eba8 0803 	sub.w	r8, r8, r3
 80048d2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80048d4:	b16b      	cbz	r3, 80048f2 <_dtoa_r+0x67a>
 80048d6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048d8:	2a00      	cmp	r2, #0
 80048da:	f000 8292 	beq.w	8004e02 <_dtoa_r+0xb8a>
 80048de:	1bde      	subs	r6, r3, r7
 80048e0:	2f00      	cmp	r7, #0
 80048e2:	f040 819d 	bne.w	8004c20 <_dtoa_r+0x9a8>
 80048e6:	4651      	mov	r1, sl
 80048e8:	4632      	mov	r2, r6
 80048ea:	4648      	mov	r0, r9
 80048ec:	f001 fb9c 	bl	8006028 <__pow5mult>
 80048f0:	4682      	mov	sl, r0
 80048f2:	2101      	movs	r1, #1
 80048f4:	4648      	mov	r0, r9
 80048f6:	f001 fae7 	bl	8005ec8 <__i2b>
 80048fa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80048fc:	4606      	mov	r6, r0
 80048fe:	2a00      	cmp	r2, #0
 8004900:	f040 8127 	bne.w	8004b52 <_dtoa_r+0x8da>
 8004904:	9b02      	ldr	r3, [sp, #8]
 8004906:	2b01      	cmp	r3, #1
 8004908:	f340 816e 	ble.w	8004be8 <_dtoa_r+0x970>
 800490c:	2001      	movs	r0, #1
 800490e:	4440      	add	r0, r8
 8004910:	f010 001f 	ands.w	r0, r0, #31
 8004914:	f000 811b 	beq.w	8004b4e <_dtoa_r+0x8d6>
 8004918:	f1c0 0320 	rsb	r3, r0, #32
 800491c:	2b04      	cmp	r3, #4
 800491e:	f340 83b0 	ble.w	8005082 <_dtoa_r+0xe0a>
 8004922:	f1c0 001c 	rsb	r0, r0, #28
 8004926:	9b08      	ldr	r3, [sp, #32]
 8004928:	4403      	add	r3, r0
 800492a:	9308      	str	r3, [sp, #32]
 800492c:	4404      	add	r4, r0
 800492e:	4480      	add	r8, r0
 8004930:	9b08      	ldr	r3, [sp, #32]
 8004932:	2b00      	cmp	r3, #0
 8004934:	dd05      	ble.n	8004942 <_dtoa_r+0x6ca>
 8004936:	4651      	mov	r1, sl
 8004938:	461a      	mov	r2, r3
 800493a:	4648      	mov	r0, r9
 800493c:	f001 fbc4 	bl	80060c8 <__lshift>
 8004940:	4682      	mov	sl, r0
 8004942:	f1b8 0f00 	cmp.w	r8, #0
 8004946:	dd05      	ble.n	8004954 <_dtoa_r+0x6dc>
 8004948:	4631      	mov	r1, r6
 800494a:	4642      	mov	r2, r8
 800494c:	4648      	mov	r0, r9
 800494e:	f001 fbbb 	bl	80060c8 <__lshift>
 8004952:	4606      	mov	r6, r0
 8004954:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004956:	2b00      	cmp	r3, #0
 8004958:	d178      	bne.n	8004a4c <_dtoa_r+0x7d4>
 800495a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800495c:	2b00      	cmp	r3, #0
 800495e:	f340 820b 	ble.w	8004d78 <_dtoa_r+0xb00>
 8004962:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004964:	2b00      	cmp	r3, #0
 8004966:	f000 808a 	beq.w	8004a7e <_dtoa_r+0x806>
 800496a:	2c00      	cmp	r4, #0
 800496c:	f300 816d 	bgt.w	8004c4a <_dtoa_r+0x9d2>
 8004970:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004972:	2b00      	cmp	r3, #0
 8004974:	f040 81cf 	bne.w	8004d16 <_dtoa_r+0xa9e>
 8004978:	46a8      	mov	r8, r5
 800497a:	9a00      	ldr	r2, [sp, #0]
 800497c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004980:	f002 0201 	and.w	r2, r2, #1
 8004984:	920a      	str	r2, [sp, #40]	; 0x28
 8004986:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004988:	f10b 33ff 	add.w	r3, fp, #4294967295
 800498c:	441a      	add	r2, r3
 800498e:	465f      	mov	r7, fp
 8004990:	9209      	str	r2, [sp, #36]	; 0x24
 8004992:	46b3      	mov	fp, r6
 8004994:	4659      	mov	r1, fp
 8004996:	4650      	mov	r0, sl
 8004998:	f7ff fbdc 	bl	8004154 <quorem>
 800499c:	4629      	mov	r1, r5
 800499e:	4604      	mov	r4, r0
 80049a0:	4650      	mov	r0, sl
 80049a2:	f001 fbe7 	bl	8006174 <__mcmp>
 80049a6:	4659      	mov	r1, fp
 80049a8:	4606      	mov	r6, r0
 80049aa:	4642      	mov	r2, r8
 80049ac:	4648      	mov	r0, r9
 80049ae:	f001 fbfd 	bl	80061ac <__mdiff>
 80049b2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80049b6:	9300      	str	r3, [sp, #0]
 80049b8:	68c3      	ldr	r3, [r0, #12]
 80049ba:	4601      	mov	r1, r0
 80049bc:	2b00      	cmp	r3, #0
 80049be:	f040 81d6 	bne.w	8004d6e <_dtoa_r+0xaf6>
 80049c2:	9008      	str	r0, [sp, #32]
 80049c4:	4650      	mov	r0, sl
 80049c6:	f001 fbd5 	bl	8006174 <__mcmp>
 80049ca:	9a08      	ldr	r2, [sp, #32]
 80049cc:	9007      	str	r0, [sp, #28]
 80049ce:	4611      	mov	r1, r2
 80049d0:	4648      	mov	r0, r9
 80049d2:	f001 f9df 	bl	8005d94 <_Bfree>
 80049d6:	9b07      	ldr	r3, [sp, #28]
 80049d8:	b933      	cbnz	r3, 80049e8 <_dtoa_r+0x770>
 80049da:	9a02      	ldr	r2, [sp, #8]
 80049dc:	b922      	cbnz	r2, 80049e8 <_dtoa_r+0x770>
 80049de:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049e0:	2b00      	cmp	r3, #0
 80049e2:	f000 831d 	beq.w	8005020 <_dtoa_r+0xda8>
 80049e6:	9b02      	ldr	r3, [sp, #8]
 80049e8:	2e00      	cmp	r6, #0
 80049ea:	f2c0 821e 	blt.w	8004e2a <_dtoa_r+0xbb2>
 80049ee:	d105      	bne.n	80049fc <_dtoa_r+0x784>
 80049f0:	9a02      	ldr	r2, [sp, #8]
 80049f2:	b91a      	cbnz	r2, 80049fc <_dtoa_r+0x784>
 80049f4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049f6:	2a00      	cmp	r2, #0
 80049f8:	f000 8217 	beq.w	8004e2a <_dtoa_r+0xbb2>
 80049fc:	2b00      	cmp	r3, #0
 80049fe:	f107 0401 	add.w	r4, r7, #1
 8004a02:	f300 8228 	bgt.w	8004e56 <_dtoa_r+0xbde>
 8004a06:	f89d 3000 	ldrb.w	r3, [sp]
 8004a0a:	703b      	strb	r3, [r7, #0]
 8004a0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a0e:	42bb      	cmp	r3, r7
 8004a10:	f000 8232 	beq.w	8004e78 <_dtoa_r+0xc00>
 8004a14:	4651      	mov	r1, sl
 8004a16:	2300      	movs	r3, #0
 8004a18:	220a      	movs	r2, #10
 8004a1a:	4648      	mov	r0, r9
 8004a1c:	f001 f9c4 	bl	8005da8 <__multadd>
 8004a20:	4545      	cmp	r5, r8
 8004a22:	4682      	mov	sl, r0
 8004a24:	4629      	mov	r1, r5
 8004a26:	f04f 0300 	mov.w	r3, #0
 8004a2a:	f04f 020a 	mov.w	r2, #10
 8004a2e:	4648      	mov	r0, r9
 8004a30:	f000 8197 	beq.w	8004d62 <_dtoa_r+0xaea>
 8004a34:	f001 f9b8 	bl	8005da8 <__multadd>
 8004a38:	4641      	mov	r1, r8
 8004a3a:	4605      	mov	r5, r0
 8004a3c:	2300      	movs	r3, #0
 8004a3e:	220a      	movs	r2, #10
 8004a40:	4648      	mov	r0, r9
 8004a42:	f001 f9b1 	bl	8005da8 <__multadd>
 8004a46:	4627      	mov	r7, r4
 8004a48:	4680      	mov	r8, r0
 8004a4a:	e7a3      	b.n	8004994 <_dtoa_r+0x71c>
 8004a4c:	4631      	mov	r1, r6
 8004a4e:	4650      	mov	r0, sl
 8004a50:	f001 fb90 	bl	8006174 <__mcmp>
 8004a54:	2800      	cmp	r0, #0
 8004a56:	da80      	bge.n	800495a <_dtoa_r+0x6e2>
 8004a58:	9f06      	ldr	r7, [sp, #24]
 8004a5a:	4651      	mov	r1, sl
 8004a5c:	2300      	movs	r3, #0
 8004a5e:	220a      	movs	r2, #10
 8004a60:	4648      	mov	r0, r9
 8004a62:	3f01      	subs	r7, #1
 8004a64:	9706      	str	r7, [sp, #24]
 8004a66:	f001 f99f 	bl	8005da8 <__multadd>
 8004a6a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a6c:	4682      	mov	sl, r0
 8004a6e:	2b00      	cmp	r3, #0
 8004a70:	f040 82ee 	bne.w	8005050 <_dtoa_r+0xdd8>
 8004a74:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a76:	2b00      	cmp	r3, #0
 8004a78:	f340 82f6 	ble.w	8005068 <_dtoa_r+0xdf0>
 8004a7c:	9309      	str	r3, [sp, #36]	; 0x24
 8004a7e:	465c      	mov	r4, fp
 8004a80:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a84:	e002      	b.n	8004a8c <_dtoa_r+0x814>
 8004a86:	f001 f98f 	bl	8005da8 <__multadd>
 8004a8a:	4682      	mov	sl, r0
 8004a8c:	4631      	mov	r1, r6
 8004a8e:	4650      	mov	r0, sl
 8004a90:	f7ff fb60 	bl	8004154 <quorem>
 8004a94:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004a98:	f804 7b01 	strb.w	r7, [r4], #1
 8004a9c:	eba4 030b 	sub.w	r3, r4, fp
 8004aa0:	4598      	cmp	r8, r3
 8004aa2:	f04f 020a 	mov.w	r2, #10
 8004aa6:	f04f 0300 	mov.w	r3, #0
 8004aaa:	4651      	mov	r1, sl
 8004aac:	4648      	mov	r0, r9
 8004aae:	dcea      	bgt.n	8004a86 <_dtoa_r+0x80e>
 8004ab0:	2300      	movs	r3, #0
 8004ab2:	9700      	str	r7, [sp, #0]
 8004ab4:	9302      	str	r3, [sp, #8]
 8004ab6:	4651      	mov	r1, sl
 8004ab8:	2201      	movs	r2, #1
 8004aba:	4648      	mov	r0, r9
 8004abc:	f001 fb04 	bl	80060c8 <__lshift>
 8004ac0:	4631      	mov	r1, r6
 8004ac2:	4682      	mov	sl, r0
 8004ac4:	f001 fb56 	bl	8006174 <__mcmp>
 8004ac8:	2800      	cmp	r0, #0
 8004aca:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004ace:	dc15      	bgt.n	8004afc <_dtoa_r+0x884>
 8004ad0:	d109      	bne.n	8004ae6 <_dtoa_r+0x86e>
 8004ad2:	9b00      	ldr	r3, [sp, #0]
 8004ad4:	07db      	lsls	r3, r3, #31
 8004ad6:	d411      	bmi.n	8004afc <_dtoa_r+0x884>
 8004ad8:	e005      	b.n	8004ae6 <_dtoa_r+0x86e>
 8004ada:	bf00      	nop
 8004adc:	40240000 	.word	0x40240000
 8004ae0:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004ae4:	461c      	mov	r4, r3
 8004ae6:	2a30      	cmp	r2, #48	; 0x30
 8004ae8:	f104 33ff 	add.w	r3, r4, #4294967295
 8004aec:	d0f8      	beq.n	8004ae0 <_dtoa_r+0x868>
 8004aee:	e00b      	b.n	8004b08 <_dtoa_r+0x890>
 8004af0:	459b      	cmp	fp, r3
 8004af2:	f000 814e 	beq.w	8004d92 <_dtoa_r+0xb1a>
 8004af6:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004afa:	461c      	mov	r4, r3
 8004afc:	2a39      	cmp	r2, #57	; 0x39
 8004afe:	f104 33ff 	add.w	r3, r4, #4294967295
 8004b02:	d0f5      	beq.n	8004af0 <_dtoa_r+0x878>
 8004b04:	3201      	adds	r2, #1
 8004b06:	701a      	strb	r2, [r3, #0]
 8004b08:	4631      	mov	r1, r6
 8004b0a:	4648      	mov	r0, r9
 8004b0c:	f001 f942 	bl	8005d94 <_Bfree>
 8004b10:	b155      	cbz	r5, 8004b28 <_dtoa_r+0x8b0>
 8004b12:	9902      	ldr	r1, [sp, #8]
 8004b14:	b121      	cbz	r1, 8004b20 <_dtoa_r+0x8a8>
 8004b16:	42a9      	cmp	r1, r5
 8004b18:	d002      	beq.n	8004b20 <_dtoa_r+0x8a8>
 8004b1a:	4648      	mov	r0, r9
 8004b1c:	f001 f93a 	bl	8005d94 <_Bfree>
 8004b20:	4629      	mov	r1, r5
 8004b22:	4648      	mov	r0, r9
 8004b24:	f001 f936 	bl	8005d94 <_Bfree>
 8004b28:	4651      	mov	r1, sl
 8004b2a:	4648      	mov	r0, r9
 8004b2c:	f001 f932 	bl	8005d94 <_Bfree>
 8004b30:	2200      	movs	r2, #0
 8004b32:	9b06      	ldr	r3, [sp, #24]
 8004b34:	7022      	strb	r2, [r4, #0]
 8004b36:	9a05      	ldr	r2, [sp, #20]
 8004b38:	3301      	adds	r3, #1
 8004b3a:	6013      	str	r3, [r2, #0]
 8004b3c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004b3e:	2b00      	cmp	r3, #0
 8004b40:	f43f abd9 	beq.w	80042f6 <_dtoa_r+0x7e>
 8004b44:	4658      	mov	r0, fp
 8004b46:	601c      	str	r4, [r3, #0]
 8004b48:	b01b      	add	sp, #108	; 0x6c
 8004b4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b4e:	201c      	movs	r0, #28
 8004b50:	e6e9      	b.n	8004926 <_dtoa_r+0x6ae>
 8004b52:	4601      	mov	r1, r0
 8004b54:	4648      	mov	r0, r9
 8004b56:	f001 fa67 	bl	8006028 <__pow5mult>
 8004b5a:	9b02      	ldr	r3, [sp, #8]
 8004b5c:	2b01      	cmp	r3, #1
 8004b5e:	4606      	mov	r6, r0
 8004b60:	f340 80d4 	ble.w	8004d0c <_dtoa_r+0xa94>
 8004b64:	2300      	movs	r3, #0
 8004b66:	930c      	str	r3, [sp, #48]	; 0x30
 8004b68:	6933      	ldr	r3, [r6, #16]
 8004b6a:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004b6e:	6918      	ldr	r0, [r3, #16]
 8004b70:	f001 f95a 	bl	8005e28 <__hi0bits>
 8004b74:	f1c0 0020 	rsb	r0, r0, #32
 8004b78:	e6c9      	b.n	800490e <_dtoa_r+0x696>
 8004b7a:	900d      	str	r0, [sp, #52]	; 0x34
 8004b7c:	e428      	b.n	80043d0 <_dtoa_r+0x158>
 8004b7e:	2501      	movs	r5, #1
 8004b80:	e43e      	b.n	8004400 <_dtoa_r+0x188>
 8004b82:	f1c3 0820 	rsb	r8, r3, #32
 8004b86:	9b00      	ldr	r3, [sp, #0]
 8004b88:	fa03 f008 	lsl.w	r0, r3, r8
 8004b8c:	f7ff bbd6 	b.w	800433c <_dtoa_r+0xc4>
 8004b90:	2300      	movs	r3, #0
 8004b92:	930a      	str	r3, [sp, #40]	; 0x28
 8004b94:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004b98:	4413      	add	r3, r2
 8004b9a:	930e      	str	r3, [sp, #56]	; 0x38
 8004b9c:	3301      	adds	r3, #1
 8004b9e:	2b01      	cmp	r3, #1
 8004ba0:	461e      	mov	r6, r3
 8004ba2:	9309      	str	r3, [sp, #36]	; 0x24
 8004ba4:	bfb8      	it	lt
 8004ba6:	2601      	movlt	r6, #1
 8004ba8:	2100      	movs	r1, #0
 8004baa:	2e17      	cmp	r6, #23
 8004bac:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004bb0:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004bb2:	f77f ac87 	ble.w	80044c4 <_dtoa_r+0x24c>
 8004bb6:	2201      	movs	r2, #1
 8004bb8:	2304      	movs	r3, #4
 8004bba:	005b      	lsls	r3, r3, #1
 8004bbc:	f103 0014 	add.w	r0, r3, #20
 8004bc0:	42b0      	cmp	r0, r6
 8004bc2:	4611      	mov	r1, r2
 8004bc4:	f102 0201 	add.w	r2, r2, #1
 8004bc8:	d9f7      	bls.n	8004bba <_dtoa_r+0x942>
 8004bca:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004bce:	e479      	b.n	80044c4 <_dtoa_r+0x24c>
 8004bd0:	2300      	movs	r3, #0
 8004bd2:	930a      	str	r3, [sp, #40]	; 0x28
 8004bd4:	9e07      	ldr	r6, [sp, #28]
 8004bd6:	2e00      	cmp	r6, #0
 8004bd8:	f340 80e2 	ble.w	8004da0 <_dtoa_r+0xb28>
 8004bdc:	960e      	str	r6, [sp, #56]	; 0x38
 8004bde:	9609      	str	r6, [sp, #36]	; 0x24
 8004be0:	e7e2      	b.n	8004ba8 <_dtoa_r+0x930>
 8004be2:	2301      	movs	r3, #1
 8004be4:	930a      	str	r3, [sp, #40]	; 0x28
 8004be6:	e7f5      	b.n	8004bd4 <_dtoa_r+0x95c>
 8004be8:	9b00      	ldr	r3, [sp, #0]
 8004bea:	2b00      	cmp	r3, #0
 8004bec:	f47f ae8e 	bne.w	800490c <_dtoa_r+0x694>
 8004bf0:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004bf4:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004bf8:	2b00      	cmp	r3, #0
 8004bfa:	f040 8193 	bne.w	8004f24 <_dtoa_r+0xcac>
 8004bfe:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004c02:	0d1b      	lsrs	r3, r3, #20
 8004c04:	051b      	lsls	r3, r3, #20
 8004c06:	b12b      	cbz	r3, 8004c14 <_dtoa_r+0x99c>
 8004c08:	9b08      	ldr	r3, [sp, #32]
 8004c0a:	3301      	adds	r3, #1
 8004c0c:	9308      	str	r3, [sp, #32]
 8004c0e:	f108 0801 	add.w	r8, r8, #1
 8004c12:	2301      	movs	r3, #1
 8004c14:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004c16:	930c      	str	r3, [sp, #48]	; 0x30
 8004c18:	2a00      	cmp	r2, #0
 8004c1a:	f43f ae77 	beq.w	800490c <_dtoa_r+0x694>
 8004c1e:	e7a3      	b.n	8004b68 <_dtoa_r+0x8f0>
 8004c20:	463a      	mov	r2, r7
 8004c22:	4629      	mov	r1, r5
 8004c24:	4648      	mov	r0, r9
 8004c26:	f001 f9ff 	bl	8006028 <__pow5mult>
 8004c2a:	4652      	mov	r2, sl
 8004c2c:	4601      	mov	r1, r0
 8004c2e:	4605      	mov	r5, r0
 8004c30:	4648      	mov	r0, r9
 8004c32:	f001 f953 	bl	8005edc <__multiply>
 8004c36:	4651      	mov	r1, sl
 8004c38:	4607      	mov	r7, r0
 8004c3a:	4648      	mov	r0, r9
 8004c3c:	f001 f8aa 	bl	8005d94 <_Bfree>
 8004c40:	46ba      	mov	sl, r7
 8004c42:	2e00      	cmp	r6, #0
 8004c44:	f43f ae55 	beq.w	80048f2 <_dtoa_r+0x67a>
 8004c48:	e64d      	b.n	80048e6 <_dtoa_r+0x66e>
 8004c4a:	4629      	mov	r1, r5
 8004c4c:	4622      	mov	r2, r4
 8004c4e:	4648      	mov	r0, r9
 8004c50:	f001 fa3a 	bl	80060c8 <__lshift>
 8004c54:	4605      	mov	r5, r0
 8004c56:	e68b      	b.n	8004970 <_dtoa_r+0x6f8>
 8004c58:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004c5a:	2a00      	cmp	r2, #0
 8004c5c:	f000 815e 	beq.w	8004f1c <_dtoa_r+0xca4>
 8004c60:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004c64:	9a08      	ldr	r2, [sp, #32]
 8004c66:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c68:	4614      	mov	r4, r2
 8004c6a:	441a      	add	r2, r3
 8004c6c:	4498      	add	r8, r3
 8004c6e:	9208      	str	r2, [sp, #32]
 8004c70:	e5f5      	b.n	800485e <_dtoa_r+0x5e6>
 8004c72:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c74:	2b00      	cmp	r3, #0
 8004c76:	f73f ad3c 	bgt.w	80046f2 <_dtoa_r+0x47a>
 8004c7a:	f040 80bc 	bne.w	8004df6 <_dtoa_r+0xb7e>
 8004c7e:	ec51 0b17 	vmov	r0, r1, d7
 8004c82:	2200      	movs	r2, #0
 8004c84:	4bb3      	ldr	r3, [pc, #716]	; (8004f54 <_dtoa_r+0xcdc>)
 8004c86:	f002 fc85 	bl	8007594 <__aeabi_dmul>
 8004c8a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c8e:	f002 ff07 	bl	8007aa0 <__aeabi_dcmpge>
 8004c92:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004c94:	4635      	mov	r5, r6
 8004c96:	2800      	cmp	r0, #0
 8004c98:	d176      	bne.n	8004d88 <_dtoa_r+0xb10>
 8004c9a:	9a06      	ldr	r2, [sp, #24]
 8004c9c:	2331      	movs	r3, #49	; 0x31
 8004c9e:	3201      	adds	r2, #1
 8004ca0:	9206      	str	r2, [sp, #24]
 8004ca2:	f88b 3000 	strb.w	r3, [fp]
 8004ca6:	f10b 0401 	add.w	r4, fp, #1
 8004caa:	4631      	mov	r1, r6
 8004cac:	4648      	mov	r0, r9
 8004cae:	f001 f871 	bl	8005d94 <_Bfree>
 8004cb2:	2d00      	cmp	r5, #0
 8004cb4:	f47f af34 	bne.w	8004b20 <_dtoa_r+0x8a8>
 8004cb8:	e736      	b.n	8004b28 <_dtoa_r+0x8b0>
 8004cba:	f000 8143 	beq.w	8004f44 <_dtoa_r+0xccc>
 8004cbe:	9b06      	ldr	r3, [sp, #24]
 8004cc0:	425c      	negs	r4, r3
 8004cc2:	4ba5      	ldr	r3, [pc, #660]	; (8004f58 <_dtoa_r+0xce0>)
 8004cc4:	f004 020f 	and.w	r2, r4, #15
 8004cc8:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004ccc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004cd0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004cd4:	f002 fc5e 	bl	8007594 <__aeabi_dmul>
 8004cd8:	1124      	asrs	r4, r4, #4
 8004cda:	e9cd 0100 	strd	r0, r1, [sp]
 8004cde:	f000 81c8 	beq.w	8005072 <_dtoa_r+0xdfa>
 8004ce2:	4d9e      	ldr	r5, [pc, #632]	; (8004f5c <_dtoa_r+0xce4>)
 8004ce4:	2300      	movs	r3, #0
 8004ce6:	2602      	movs	r6, #2
 8004ce8:	07e7      	lsls	r7, r4, #31
 8004cea:	d505      	bpl.n	8004cf8 <_dtoa_r+0xa80>
 8004cec:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004cf0:	f002 fc50 	bl	8007594 <__aeabi_dmul>
 8004cf4:	3601      	adds	r6, #1
 8004cf6:	2301      	movs	r3, #1
 8004cf8:	1064      	asrs	r4, r4, #1
 8004cfa:	f105 0508 	add.w	r5, r5, #8
 8004cfe:	d1f3      	bne.n	8004ce8 <_dtoa_r+0xa70>
 8004d00:	2b00      	cmp	r3, #0
 8004d02:	f43f ac25 	beq.w	8004550 <_dtoa_r+0x2d8>
 8004d06:	e9cd 0100 	strd	r0, r1, [sp]
 8004d0a:	e421      	b.n	8004550 <_dtoa_r+0x2d8>
 8004d0c:	9b00      	ldr	r3, [sp, #0]
 8004d0e:	2b00      	cmp	r3, #0
 8004d10:	f43f af6e 	beq.w	8004bf0 <_dtoa_r+0x978>
 8004d14:	e726      	b.n	8004b64 <_dtoa_r+0x8ec>
 8004d16:	6869      	ldr	r1, [r5, #4]
 8004d18:	4648      	mov	r0, r9
 8004d1a:	f001 f815 	bl	8005d48 <_Balloc>
 8004d1e:	692b      	ldr	r3, [r5, #16]
 8004d20:	3302      	adds	r3, #2
 8004d22:	009a      	lsls	r2, r3, #2
 8004d24:	4604      	mov	r4, r0
 8004d26:	f105 010c 	add.w	r1, r5, #12
 8004d2a:	300c      	adds	r0, #12
 8004d2c:	f7fd fdda 	bl	80028e4 <memcpy>
 8004d30:	4621      	mov	r1, r4
 8004d32:	2201      	movs	r2, #1
 8004d34:	4648      	mov	r0, r9
 8004d36:	f001 f9c7 	bl	80060c8 <__lshift>
 8004d3a:	4680      	mov	r8, r0
 8004d3c:	e61d      	b.n	800497a <_dtoa_r+0x702>
 8004d3e:	2400      	movs	r4, #0
 8004d40:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004d44:	4621      	mov	r1, r4
 8004d46:	4648      	mov	r0, r9
 8004d48:	f000 fffe 	bl	8005d48 <_Balloc>
 8004d4c:	f04f 33ff 	mov.w	r3, #4294967295
 8004d50:	930e      	str	r3, [sp, #56]	; 0x38
 8004d52:	9309      	str	r3, [sp, #36]	; 0x24
 8004d54:	2301      	movs	r3, #1
 8004d56:	4683      	mov	fp, r0
 8004d58:	9407      	str	r4, [sp, #28]
 8004d5a:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d5e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d60:	e4b4      	b.n	80046cc <_dtoa_r+0x454>
 8004d62:	f001 f821 	bl	8005da8 <__multadd>
 8004d66:	4627      	mov	r7, r4
 8004d68:	4605      	mov	r5, r0
 8004d6a:	4680      	mov	r8, r0
 8004d6c:	e612      	b.n	8004994 <_dtoa_r+0x71c>
 8004d6e:	4648      	mov	r0, r9
 8004d70:	f001 f810 	bl	8005d94 <_Bfree>
 8004d74:	2301      	movs	r3, #1
 8004d76:	e637      	b.n	80049e8 <_dtoa_r+0x770>
 8004d78:	9b02      	ldr	r3, [sp, #8]
 8004d7a:	2b02      	cmp	r3, #2
 8004d7c:	f77f adf1 	ble.w	8004962 <_dtoa_r+0x6ea>
 8004d80:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d82:	2b00      	cmp	r3, #0
 8004d84:	f000 80d0 	beq.w	8004f28 <_dtoa_r+0xcb0>
 8004d88:	9b07      	ldr	r3, [sp, #28]
 8004d8a:	43db      	mvns	r3, r3
 8004d8c:	9306      	str	r3, [sp, #24]
 8004d8e:	465c      	mov	r4, fp
 8004d90:	e78b      	b.n	8004caa <_dtoa_r+0xa32>
 8004d92:	9a06      	ldr	r2, [sp, #24]
 8004d94:	2331      	movs	r3, #49	; 0x31
 8004d96:	3201      	adds	r2, #1
 8004d98:	9206      	str	r2, [sp, #24]
 8004d9a:	f88b 3000 	strb.w	r3, [fp]
 8004d9e:	e6b3      	b.n	8004b08 <_dtoa_r+0x890>
 8004da0:	2401      	movs	r4, #1
 8004da2:	9409      	str	r4, [sp, #36]	; 0x24
 8004da4:	9407      	str	r4, [sp, #28]
 8004da6:	f7ff bb89 	b.w	80044bc <_dtoa_r+0x244>
 8004daa:	4630      	mov	r0, r6
 8004dac:	f002 fb88 	bl	80074c0 <__aeabi_i2d>
 8004db0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004db4:	f002 fbee 	bl	8007594 <__aeabi_dmul>
 8004db8:	2200      	movs	r2, #0
 8004dba:	4b69      	ldr	r3, [pc, #420]	; (8004f60 <_dtoa_r+0xce8>)
 8004dbc:	f002 fa34 	bl	8007228 <__adddf3>
 8004dc0:	4606      	mov	r6, r0
 8004dc2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004dc6:	2200      	movs	r2, #0
 8004dc8:	4b62      	ldr	r3, [pc, #392]	; (8004f54 <_dtoa_r+0xcdc>)
 8004dca:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dce:	f002 fa29 	bl	8007224 <__aeabi_dsub>
 8004dd2:	4632      	mov	r2, r6
 8004dd4:	463b      	mov	r3, r7
 8004dd6:	4604      	mov	r4, r0
 8004dd8:	460d      	mov	r5, r1
 8004dda:	f002 fe6b 	bl	8007ab4 <__aeabi_dcmpgt>
 8004dde:	2800      	cmp	r0, #0
 8004de0:	d150      	bne.n	8004e84 <_dtoa_r+0xc0c>
 8004de2:	4632      	mov	r2, r6
 8004de4:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004de8:	4620      	mov	r0, r4
 8004dea:	4629      	mov	r1, r5
 8004dec:	f002 fe44 	bl	8007a78 <__aeabi_dcmplt>
 8004df0:	2800      	cmp	r0, #0
 8004df2:	f43f ac67 	beq.w	80046c4 <_dtoa_r+0x44c>
 8004df6:	2600      	movs	r6, #0
 8004df8:	4635      	mov	r5, r6
 8004dfa:	e7c5      	b.n	8004d88 <_dtoa_r+0xb10>
 8004dfc:	2301      	movs	r3, #1
 8004dfe:	930a      	str	r3, [sp, #40]	; 0x28
 8004e00:	e6c8      	b.n	8004b94 <_dtoa_r+0x91c>
 8004e02:	4651      	mov	r1, sl
 8004e04:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004e06:	4648      	mov	r0, r9
 8004e08:	f001 f90e 	bl	8006028 <__pow5mult>
 8004e0c:	4682      	mov	sl, r0
 8004e0e:	e570      	b.n	80048f2 <_dtoa_r+0x67a>
 8004e10:	f8dd a000 	ldr.w	sl, [sp]
 8004e14:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004e18:	e686      	b.n	8004b28 <_dtoa_r+0x8b0>
 8004e1a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004e1c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e1e:	1afb      	subs	r3, r7, r3
 8004e20:	441a      	add	r2, r3
 8004e22:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004e26:	2700      	movs	r7, #0
 8004e28:	e510      	b.n	800484c <_dtoa_r+0x5d4>
 8004e2a:	2b00      	cmp	r3, #0
 8004e2c:	9402      	str	r4, [sp, #8]
 8004e2e:	465e      	mov	r6, fp
 8004e30:	f107 0401 	add.w	r4, r7, #1
 8004e34:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e38:	f300 80bc 	bgt.w	8004fb4 <_dtoa_r+0xd3c>
 8004e3c:	f89d 3000 	ldrb.w	r3, [sp]
 8004e40:	9502      	str	r5, [sp, #8]
 8004e42:	703b      	strb	r3, [r7, #0]
 8004e44:	4645      	mov	r5, r8
 8004e46:	e65f      	b.n	8004b08 <_dtoa_r+0x890>
 8004e48:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e4c:	2602      	movs	r6, #2
 8004e4e:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004e52:	f7ff bb64 	b.w	800451e <_dtoa_r+0x2a6>
 8004e56:	9b00      	ldr	r3, [sp, #0]
 8004e58:	2b39      	cmp	r3, #57	; 0x39
 8004e5a:	465e      	mov	r6, fp
 8004e5c:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e60:	f000 80ba 	beq.w	8004fd8 <_dtoa_r+0xd60>
 8004e64:	9b00      	ldr	r3, [sp, #0]
 8004e66:	9502      	str	r5, [sp, #8]
 8004e68:	3301      	adds	r3, #1
 8004e6a:	703b      	strb	r3, [r7, #0]
 8004e6c:	4645      	mov	r5, r8
 8004e6e:	e64b      	b.n	8004b08 <_dtoa_r+0x890>
 8004e70:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004e74:	1a9c      	subs	r4, r3, r2
 8004e76:	e4f2      	b.n	800485e <_dtoa_r+0x5e6>
 8004e78:	465e      	mov	r6, fp
 8004e7a:	9502      	str	r5, [sp, #8]
 8004e7c:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e80:	4645      	mov	r5, r8
 8004e82:	e618      	b.n	8004ab6 <_dtoa_r+0x83e>
 8004e84:	2600      	movs	r6, #0
 8004e86:	4635      	mov	r5, r6
 8004e88:	e707      	b.n	8004c9a <_dtoa_r+0xa22>
 8004e8a:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e8e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e92:	f002 fb7f 	bl	8007594 <__aeabi_dmul>
 8004e96:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e98:	f88b 5000 	strb.w	r5, [fp]
 8004e9c:	2b01      	cmp	r3, #1
 8004e9e:	e9cd 0100 	strd	r0, r1, [sp]
 8004ea2:	d020      	beq.n	8004ee6 <_dtoa_r+0xc6e>
 8004ea4:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004ea6:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004eaa:	445b      	add	r3, fp
 8004eac:	4698      	mov	r8, r3
 8004eae:	2200      	movs	r2, #0
 8004eb0:	4b2c      	ldr	r3, [pc, #176]	; (8004f64 <_dtoa_r+0xcec>)
 8004eb2:	4630      	mov	r0, r6
 8004eb4:	4639      	mov	r1, r7
 8004eb6:	f002 fb6d 	bl	8007594 <__aeabi_dmul>
 8004eba:	460f      	mov	r7, r1
 8004ebc:	4606      	mov	r6, r0
 8004ebe:	f002 fe19 	bl	8007af4 <__aeabi_d2iz>
 8004ec2:	4605      	mov	r5, r0
 8004ec4:	f002 fafc 	bl	80074c0 <__aeabi_i2d>
 8004ec8:	3530      	adds	r5, #48	; 0x30
 8004eca:	4602      	mov	r2, r0
 8004ecc:	460b      	mov	r3, r1
 8004ece:	4630      	mov	r0, r6
 8004ed0:	4639      	mov	r1, r7
 8004ed2:	f002 f9a7 	bl	8007224 <__aeabi_dsub>
 8004ed6:	f804 5b01 	strb.w	r5, [r4], #1
 8004eda:	4544      	cmp	r4, r8
 8004edc:	4606      	mov	r6, r0
 8004ede:	460f      	mov	r7, r1
 8004ee0:	d1e5      	bne.n	8004eae <_dtoa_r+0xc36>
 8004ee2:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004ee6:	4b20      	ldr	r3, [pc, #128]	; (8004f68 <_dtoa_r+0xcf0>)
 8004ee8:	2200      	movs	r2, #0
 8004eea:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004eee:	f002 f99b 	bl	8007228 <__adddf3>
 8004ef2:	4632      	mov	r2, r6
 8004ef4:	463b      	mov	r3, r7
 8004ef6:	f002 fdbf 	bl	8007a78 <__aeabi_dcmplt>
 8004efa:	2800      	cmp	r0, #0
 8004efc:	d071      	beq.n	8004fe2 <_dtoa_r+0xd6a>
 8004efe:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f00:	9306      	str	r3, [sp, #24]
 8004f02:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004f06:	e48c      	b.n	8004822 <_dtoa_r+0x5aa>
 8004f08:	2330      	movs	r3, #48	; 0x30
 8004f0a:	f88b 3000 	strb.w	r3, [fp]
 8004f0e:	9b06      	ldr	r3, [sp, #24]
 8004f10:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004f14:	3301      	adds	r3, #1
 8004f16:	9306      	str	r3, [sp, #24]
 8004f18:	465b      	mov	r3, fp
 8004f1a:	e486      	b.n	800482a <_dtoa_r+0x5b2>
 8004f1c:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004f1e:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004f22:	e69f      	b.n	8004c64 <_dtoa_r+0x9ec>
 8004f24:	2300      	movs	r3, #0
 8004f26:	e675      	b.n	8004c14 <_dtoa_r+0x99c>
 8004f28:	4631      	mov	r1, r6
 8004f2a:	2205      	movs	r2, #5
 8004f2c:	4648      	mov	r0, r9
 8004f2e:	f000 ff3b 	bl	8005da8 <__multadd>
 8004f32:	4601      	mov	r1, r0
 8004f34:	4606      	mov	r6, r0
 8004f36:	4650      	mov	r0, sl
 8004f38:	f001 f91c 	bl	8006174 <__mcmp>
 8004f3c:	2800      	cmp	r0, #0
 8004f3e:	f73f aeac 	bgt.w	8004c9a <_dtoa_r+0xa22>
 8004f42:	e721      	b.n	8004d88 <_dtoa_r+0xb10>
 8004f44:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f48:	2602      	movs	r6, #2
 8004f4a:	ed8d 7b00 	vstr	d7, [sp]
 8004f4e:	f7ff baff 	b.w	8004550 <_dtoa_r+0x2d8>
 8004f52:	bf00      	nop
 8004f54:	40140000 	.word	0x40140000
 8004f58:	08007cc8 	.word	0x08007cc8
 8004f5c:	08007ca0 	.word	0x08007ca0
 8004f60:	401c0000 	.word	0x401c0000
 8004f64:	40240000 	.word	0x40240000
 8004f68:	3fe00000 	.word	0x3fe00000
 8004f6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f6e:	2b00      	cmp	r3, #0
 8004f70:	f43f af1b 	beq.w	8004daa <_dtoa_r+0xb32>
 8004f74:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004f76:	2c00      	cmp	r4, #0
 8004f78:	f77f aba4 	ble.w	80046c4 <_dtoa_r+0x44c>
 8004f7c:	2200      	movs	r2, #0
 8004f7e:	4b45      	ldr	r3, [pc, #276]	; (8005094 <_dtoa_r+0xe1c>)
 8004f80:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f84:	f002 fb06 	bl	8007594 <__aeabi_dmul>
 8004f88:	e9cd 0100 	strd	r0, r1, [sp]
 8004f8c:	1c70      	adds	r0, r6, #1
 8004f8e:	f002 fa97 	bl	80074c0 <__aeabi_i2d>
 8004f92:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f96:	f002 fafd 	bl	8007594 <__aeabi_dmul>
 8004f9a:	4b3f      	ldr	r3, [pc, #252]	; (8005098 <_dtoa_r+0xe20>)
 8004f9c:	2200      	movs	r2, #0
 8004f9e:	f002 f943 	bl	8007228 <__adddf3>
 8004fa2:	9b06      	ldr	r3, [sp, #24]
 8004fa4:	9412      	str	r4, [sp, #72]	; 0x48
 8004fa6:	3b01      	subs	r3, #1
 8004fa8:	4606      	mov	r6, r0
 8004faa:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004fae:	9316      	str	r3, [sp, #88]	; 0x58
 8004fb0:	f7ff baef 	b.w	8004592 <_dtoa_r+0x31a>
 8004fb4:	4651      	mov	r1, sl
 8004fb6:	2201      	movs	r2, #1
 8004fb8:	4648      	mov	r0, r9
 8004fba:	f001 f885 	bl	80060c8 <__lshift>
 8004fbe:	4631      	mov	r1, r6
 8004fc0:	4682      	mov	sl, r0
 8004fc2:	f001 f8d7 	bl	8006174 <__mcmp>
 8004fc6:	2800      	cmp	r0, #0
 8004fc8:	dd3b      	ble.n	8005042 <_dtoa_r+0xdca>
 8004fca:	9b00      	ldr	r3, [sp, #0]
 8004fcc:	2b39      	cmp	r3, #57	; 0x39
 8004fce:	d003      	beq.n	8004fd8 <_dtoa_r+0xd60>
 8004fd0:	9b02      	ldr	r3, [sp, #8]
 8004fd2:	3331      	adds	r3, #49	; 0x31
 8004fd4:	9300      	str	r3, [sp, #0]
 8004fd6:	e731      	b.n	8004e3c <_dtoa_r+0xbc4>
 8004fd8:	2239      	movs	r2, #57	; 0x39
 8004fda:	9502      	str	r5, [sp, #8]
 8004fdc:	703a      	strb	r2, [r7, #0]
 8004fde:	4645      	mov	r5, r8
 8004fe0:	e58c      	b.n	8004afc <_dtoa_r+0x884>
 8004fe2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004fe6:	2000      	movs	r0, #0
 8004fe8:	492c      	ldr	r1, [pc, #176]	; (800509c <_dtoa_r+0xe24>)
 8004fea:	f002 f91b 	bl	8007224 <__aeabi_dsub>
 8004fee:	4632      	mov	r2, r6
 8004ff0:	463b      	mov	r3, r7
 8004ff2:	f002 fd5f 	bl	8007ab4 <__aeabi_dcmpgt>
 8004ff6:	b910      	cbnz	r0, 8004ffe <_dtoa_r+0xd86>
 8004ff8:	f7ff bb64 	b.w	80046c4 <_dtoa_r+0x44c>
 8004ffc:	4614      	mov	r4, r2
 8004ffe:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8005002:	2b30      	cmp	r3, #48	; 0x30
 8005004:	f104 32ff 	add.w	r2, r4, #4294967295
 8005008:	d0f8      	beq.n	8004ffc <_dtoa_r+0xd84>
 800500a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800500c:	9306      	str	r3, [sp, #24]
 800500e:	e58b      	b.n	8004b28 <_dtoa_r+0x8b0>
 8005010:	46d9      	mov	r9, fp
 8005012:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005016:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800501a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800501c:	9306      	str	r3, [sp, #24]
 800501e:	e400      	b.n	8004822 <_dtoa_r+0x5aa>
 8005020:	9b00      	ldr	r3, [sp, #0]
 8005022:	2b39      	cmp	r3, #57	; 0x39
 8005024:	4621      	mov	r1, r4
 8005026:	4632      	mov	r2, r6
 8005028:	f107 0401 	add.w	r4, r7, #1
 800502c:	465e      	mov	r6, fp
 800502e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005032:	d0d1      	beq.n	8004fd8 <_dtoa_r+0xd60>
 8005034:	2a00      	cmp	r2, #0
 8005036:	f77f af01 	ble.w	8004e3c <_dtoa_r+0xbc4>
 800503a:	460b      	mov	r3, r1
 800503c:	3331      	adds	r3, #49	; 0x31
 800503e:	9300      	str	r3, [sp, #0]
 8005040:	e6fc      	b.n	8004e3c <_dtoa_r+0xbc4>
 8005042:	f47f aefb 	bne.w	8004e3c <_dtoa_r+0xbc4>
 8005046:	9b00      	ldr	r3, [sp, #0]
 8005048:	07da      	lsls	r2, r3, #31
 800504a:	f57f aef7 	bpl.w	8004e3c <_dtoa_r+0xbc4>
 800504e:	e7bc      	b.n	8004fca <_dtoa_r+0xd52>
 8005050:	4629      	mov	r1, r5
 8005052:	2300      	movs	r3, #0
 8005054:	220a      	movs	r2, #10
 8005056:	4648      	mov	r0, r9
 8005058:	f000 fea6 	bl	8005da8 <__multadd>
 800505c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800505e:	2b00      	cmp	r3, #0
 8005060:	4605      	mov	r5, r0
 8005062:	dd09      	ble.n	8005078 <_dtoa_r+0xe00>
 8005064:	9309      	str	r3, [sp, #36]	; 0x24
 8005066:	e480      	b.n	800496a <_dtoa_r+0x6f2>
 8005068:	9b02      	ldr	r3, [sp, #8]
 800506a:	2b02      	cmp	r3, #2
 800506c:	dc0e      	bgt.n	800508c <_dtoa_r+0xe14>
 800506e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005070:	e504      	b.n	8004a7c <_dtoa_r+0x804>
 8005072:	2602      	movs	r6, #2
 8005074:	f7ff ba6c 	b.w	8004550 <_dtoa_r+0x2d8>
 8005078:	9b02      	ldr	r3, [sp, #8]
 800507a:	2b02      	cmp	r3, #2
 800507c:	dc06      	bgt.n	800508c <_dtoa_r+0xe14>
 800507e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005080:	e7f0      	b.n	8005064 <_dtoa_r+0xdec>
 8005082:	f43f ac55 	beq.w	8004930 <_dtoa_r+0x6b8>
 8005086:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800508a:	e44c      	b.n	8004926 <_dtoa_r+0x6ae>
 800508c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800508e:	9309      	str	r3, [sp, #36]	; 0x24
 8005090:	e676      	b.n	8004d80 <_dtoa_r+0xb08>
 8005092:	bf00      	nop
 8005094:	40240000 	.word	0x40240000
 8005098:	401c0000 	.word	0x401c0000
 800509c:	3fe00000 	.word	0x3fe00000

080050a0 <__sflush_r>:
 80050a0:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80050a4:	b29a      	uxth	r2, r3
 80050a6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80050aa:	460c      	mov	r4, r1
 80050ac:	0711      	lsls	r1, r2, #28
 80050ae:	4680      	mov	r8, r0
 80050b0:	d444      	bmi.n	800513c <__sflush_r+0x9c>
 80050b2:	6862      	ldr	r2, [r4, #4]
 80050b4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80050b8:	2a00      	cmp	r2, #0
 80050ba:	81a3      	strh	r3, [r4, #12]
 80050bc:	dd59      	ble.n	8005172 <__sflush_r+0xd2>
 80050be:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80050c0:	2d00      	cmp	r5, #0
 80050c2:	d053      	beq.n	800516c <__sflush_r+0xcc>
 80050c4:	2200      	movs	r2, #0
 80050c6:	b29b      	uxth	r3, r3
 80050c8:	f8d8 6000 	ldr.w	r6, [r8]
 80050cc:	69e1      	ldr	r1, [r4, #28]
 80050ce:	f8c8 2000 	str.w	r2, [r8]
 80050d2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80050d6:	f040 8083 	bne.w	80051e0 <__sflush_r+0x140>
 80050da:	2301      	movs	r3, #1
 80050dc:	4640      	mov	r0, r8
 80050de:	47a8      	blx	r5
 80050e0:	1c42      	adds	r2, r0, #1
 80050e2:	d04a      	beq.n	800517a <__sflush_r+0xda>
 80050e4:	89a3      	ldrh	r3, [r4, #12]
 80050e6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80050e8:	69e1      	ldr	r1, [r4, #28]
 80050ea:	075b      	lsls	r3, r3, #29
 80050ec:	d505      	bpl.n	80050fa <__sflush_r+0x5a>
 80050ee:	6862      	ldr	r2, [r4, #4]
 80050f0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80050f2:	1a80      	subs	r0, r0, r2
 80050f4:	b10b      	cbz	r3, 80050fa <__sflush_r+0x5a>
 80050f6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80050f8:	1ac0      	subs	r0, r0, r3
 80050fa:	4602      	mov	r2, r0
 80050fc:	2300      	movs	r3, #0
 80050fe:	4640      	mov	r0, r8
 8005100:	47a8      	blx	r5
 8005102:	1c47      	adds	r7, r0, #1
 8005104:	d045      	beq.n	8005192 <__sflush_r+0xf2>
 8005106:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800510a:	6922      	ldr	r2, [r4, #16]
 800510c:	6022      	str	r2, [r4, #0]
 800510e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005112:	2200      	movs	r2, #0
 8005114:	81a3      	strh	r3, [r4, #12]
 8005116:	04db      	lsls	r3, r3, #19
 8005118:	6062      	str	r2, [r4, #4]
 800511a:	d500      	bpl.n	800511e <__sflush_r+0x7e>
 800511c:	6520      	str	r0, [r4, #80]	; 0x50
 800511e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005120:	f8c8 6000 	str.w	r6, [r8]
 8005124:	b311      	cbz	r1, 800516c <__sflush_r+0xcc>
 8005126:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800512a:	4299      	cmp	r1, r3
 800512c:	d002      	beq.n	8005134 <__sflush_r+0x94>
 800512e:	4640      	mov	r0, r8
 8005130:	f000 f95e 	bl	80053f0 <_free_r>
 8005134:	2000      	movs	r0, #0
 8005136:	6320      	str	r0, [r4, #48]	; 0x30
 8005138:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800513c:	6926      	ldr	r6, [r4, #16]
 800513e:	b1ae      	cbz	r6, 800516c <__sflush_r+0xcc>
 8005140:	6825      	ldr	r5, [r4, #0]
 8005142:	6026      	str	r6, [r4, #0]
 8005144:	0792      	lsls	r2, r2, #30
 8005146:	bf0c      	ite	eq
 8005148:	6963      	ldreq	r3, [r4, #20]
 800514a:	2300      	movne	r3, #0
 800514c:	1bad      	subs	r5, r5, r6
 800514e:	60a3      	str	r3, [r4, #8]
 8005150:	e00a      	b.n	8005168 <__sflush_r+0xc8>
 8005152:	462b      	mov	r3, r5
 8005154:	4632      	mov	r2, r6
 8005156:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005158:	69e1      	ldr	r1, [r4, #28]
 800515a:	4640      	mov	r0, r8
 800515c:	47b8      	blx	r7
 800515e:	2800      	cmp	r0, #0
 8005160:	eba5 0500 	sub.w	r5, r5, r0
 8005164:	4406      	add	r6, r0
 8005166:	dd2b      	ble.n	80051c0 <__sflush_r+0x120>
 8005168:	2d00      	cmp	r5, #0
 800516a:	dcf2      	bgt.n	8005152 <__sflush_r+0xb2>
 800516c:	2000      	movs	r0, #0
 800516e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005172:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005174:	2a00      	cmp	r2, #0
 8005176:	dca2      	bgt.n	80050be <__sflush_r+0x1e>
 8005178:	e7f8      	b.n	800516c <__sflush_r+0xcc>
 800517a:	f8d8 3000 	ldr.w	r3, [r8]
 800517e:	2b00      	cmp	r3, #0
 8005180:	d0b0      	beq.n	80050e4 <__sflush_r+0x44>
 8005182:	2b1d      	cmp	r3, #29
 8005184:	d001      	beq.n	800518a <__sflush_r+0xea>
 8005186:	2b16      	cmp	r3, #22
 8005188:	d12c      	bne.n	80051e4 <__sflush_r+0x144>
 800518a:	f8c8 6000 	str.w	r6, [r8]
 800518e:	2000      	movs	r0, #0
 8005190:	e7ed      	b.n	800516e <__sflush_r+0xce>
 8005192:	f8d8 1000 	ldr.w	r1, [r8]
 8005196:	291d      	cmp	r1, #29
 8005198:	d81a      	bhi.n	80051d0 <__sflush_r+0x130>
 800519a:	4b15      	ldr	r3, [pc, #84]	; (80051f0 <__sflush_r+0x150>)
 800519c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80051a0:	40cb      	lsrs	r3, r1
 80051a2:	43db      	mvns	r3, r3
 80051a4:	f013 0301 	ands.w	r3, r3, #1
 80051a8:	d114      	bne.n	80051d4 <__sflush_r+0x134>
 80051aa:	6925      	ldr	r5, [r4, #16]
 80051ac:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80051b0:	e9c4 5300 	strd	r5, r3, [r4]
 80051b4:	04d5      	lsls	r5, r2, #19
 80051b6:	81a2      	strh	r2, [r4, #12]
 80051b8:	d5b1      	bpl.n	800511e <__sflush_r+0x7e>
 80051ba:	2900      	cmp	r1, #0
 80051bc:	d1af      	bne.n	800511e <__sflush_r+0x7e>
 80051be:	e7ad      	b.n	800511c <__sflush_r+0x7c>
 80051c0:	89a3      	ldrh	r3, [r4, #12]
 80051c2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80051c6:	81a3      	strh	r3, [r4, #12]
 80051c8:	f04f 30ff 	mov.w	r0, #4294967295
 80051cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80051d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80051d4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80051d8:	81a2      	strh	r2, [r4, #12]
 80051da:	f04f 30ff 	mov.w	r0, #4294967295
 80051de:	e7c6      	b.n	800516e <__sflush_r+0xce>
 80051e0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80051e2:	e782      	b.n	80050ea <__sflush_r+0x4a>
 80051e4:	89a3      	ldrh	r3, [r4, #12]
 80051e6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80051ea:	81a3      	strh	r3, [r4, #12]
 80051ec:	e7bf      	b.n	800516e <__sflush_r+0xce>
 80051ee:	bf00      	nop
 80051f0:	20400001 	.word	0x20400001

080051f4 <_fflush_r>:
 80051f4:	b538      	push	{r3, r4, r5, lr}
 80051f6:	460d      	mov	r5, r1
 80051f8:	4604      	mov	r4, r0
 80051fa:	b108      	cbz	r0, 8005200 <_fflush_r+0xc>
 80051fc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80051fe:	b1a3      	cbz	r3, 800522a <_fflush_r+0x36>
 8005200:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005204:	b1b8      	cbz	r0, 8005236 <_fflush_r+0x42>
 8005206:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005208:	07db      	lsls	r3, r3, #31
 800520a:	d401      	bmi.n	8005210 <_fflush_r+0x1c>
 800520c:	0581      	lsls	r1, r0, #22
 800520e:	d51a      	bpl.n	8005246 <_fflush_r+0x52>
 8005210:	4620      	mov	r0, r4
 8005212:	4629      	mov	r1, r5
 8005214:	f7ff ff44 	bl	80050a0 <__sflush_r>
 8005218:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800521a:	07da      	lsls	r2, r3, #31
 800521c:	4604      	mov	r4, r0
 800521e:	d402      	bmi.n	8005226 <_fflush_r+0x32>
 8005220:	89ab      	ldrh	r3, [r5, #12]
 8005222:	059b      	lsls	r3, r3, #22
 8005224:	d50a      	bpl.n	800523c <_fflush_r+0x48>
 8005226:	4620      	mov	r0, r4
 8005228:	bd38      	pop	{r3, r4, r5, pc}
 800522a:	f000 f83f 	bl	80052ac <__sinit>
 800522e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005232:	2800      	cmp	r0, #0
 8005234:	d1e7      	bne.n	8005206 <_fflush_r+0x12>
 8005236:	4604      	mov	r4, r0
 8005238:	4620      	mov	r0, r4
 800523a:	bd38      	pop	{r3, r4, r5, pc}
 800523c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800523e:	f000 fa09 	bl	8005654 <__retarget_lock_release_recursive>
 8005242:	4620      	mov	r0, r4
 8005244:	bd38      	pop	{r3, r4, r5, pc}
 8005246:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005248:	f000 fa02 	bl	8005650 <__retarget_lock_acquire_recursive>
 800524c:	e7e0      	b.n	8005210 <_fflush_r+0x1c>
 800524e:	bf00      	nop

08005250 <std>:
 8005250:	b510      	push	{r4, lr}
 8005252:	2300      	movs	r3, #0
 8005254:	4604      	mov	r4, r0
 8005256:	8181      	strh	r1, [r0, #12]
 8005258:	81c2      	strh	r2, [r0, #14]
 800525a:	e9c0 3300 	strd	r3, r3, [r0]
 800525e:	6083      	str	r3, [r0, #8]
 8005260:	6643      	str	r3, [r0, #100]	; 0x64
 8005262:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005266:	6183      	str	r3, [r0, #24]
 8005268:	4619      	mov	r1, r3
 800526a:	2208      	movs	r2, #8
 800526c:	305c      	adds	r0, #92	; 0x5c
 800526e:	f7fd fbd3 	bl	8002a18 <memset>
 8005272:	4807      	ldr	r0, [pc, #28]	; (8005290 <std+0x40>)
 8005274:	4907      	ldr	r1, [pc, #28]	; (8005294 <std+0x44>)
 8005276:	4a08      	ldr	r2, [pc, #32]	; (8005298 <std+0x48>)
 8005278:	4b08      	ldr	r3, [pc, #32]	; (800529c <std+0x4c>)
 800527a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800527c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005280:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005284:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005288:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800528c:	f000 b9dc 	b.w	8005648 <__retarget_lock_init_recursive>
 8005290:	08006381 	.word	0x08006381
 8005294:	080063a5 	.word	0x080063a5
 8005298:	080063e1 	.word	0x080063e1
 800529c:	08006401 	.word	0x08006401

080052a0 <_cleanup_r>:
 80052a0:	4901      	ldr	r1, [pc, #4]	; (80052a8 <_cleanup_r+0x8>)
 80052a2:	f000 b999 	b.w	80055d8 <_fwalk_reent>
 80052a6:	bf00      	nop
 80052a8:	08006721 	.word	0x08006721

080052ac <__sinit>:
 80052ac:	b510      	push	{r4, lr}
 80052ae:	4604      	mov	r4, r0
 80052b0:	4812      	ldr	r0, [pc, #72]	; (80052fc <__sinit+0x50>)
 80052b2:	f000 f9cd 	bl	8005650 <__retarget_lock_acquire_recursive>
 80052b6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80052b8:	b9d2      	cbnz	r2, 80052f0 <__sinit+0x44>
 80052ba:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80052be:	4810      	ldr	r0, [pc, #64]	; (8005300 <__sinit+0x54>)
 80052c0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80052c4:	2103      	movs	r1, #3
 80052c6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80052ca:	63e0      	str	r0, [r4, #60]	; 0x3c
 80052cc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80052d0:	6860      	ldr	r0, [r4, #4]
 80052d2:	2104      	movs	r1, #4
 80052d4:	f7ff ffbc 	bl	8005250 <std>
 80052d8:	2201      	movs	r2, #1
 80052da:	2109      	movs	r1, #9
 80052dc:	68a0      	ldr	r0, [r4, #8]
 80052de:	f7ff ffb7 	bl	8005250 <std>
 80052e2:	2202      	movs	r2, #2
 80052e4:	2112      	movs	r1, #18
 80052e6:	68e0      	ldr	r0, [r4, #12]
 80052e8:	f7ff ffb2 	bl	8005250 <std>
 80052ec:	2301      	movs	r3, #1
 80052ee:	63a3      	str	r3, [r4, #56]	; 0x38
 80052f0:	4802      	ldr	r0, [pc, #8]	; (80052fc <__sinit+0x50>)
 80052f2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80052f6:	f000 b9ad 	b.w	8005654 <__retarget_lock_release_recursive>
 80052fa:	bf00      	nop
 80052fc:	20000b80 	.word	0x20000b80
 8005300:	080052a1 	.word	0x080052a1

08005304 <__sfp_lock_acquire>:
 8005304:	4801      	ldr	r0, [pc, #4]	; (800530c <__sfp_lock_acquire+0x8>)
 8005306:	f000 b9a3 	b.w	8005650 <__retarget_lock_acquire_recursive>
 800530a:	bf00      	nop
 800530c:	20000b94 	.word	0x20000b94

08005310 <__sfp_lock_release>:
 8005310:	4801      	ldr	r0, [pc, #4]	; (8005318 <__sfp_lock_release+0x8>)
 8005312:	f000 b99f 	b.w	8005654 <__retarget_lock_release_recursive>
 8005316:	bf00      	nop
 8005318:	20000b94 	.word	0x20000b94

0800531c <__libc_fini_array>:
 800531c:	b538      	push	{r3, r4, r5, lr}
 800531e:	4c0a      	ldr	r4, [pc, #40]	; (8005348 <__libc_fini_array+0x2c>)
 8005320:	4d0a      	ldr	r5, [pc, #40]	; (800534c <__libc_fini_array+0x30>)
 8005322:	1b64      	subs	r4, r4, r5
 8005324:	10a4      	asrs	r4, r4, #2
 8005326:	d00a      	beq.n	800533e <__libc_fini_array+0x22>
 8005328:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800532c:	3b01      	subs	r3, #1
 800532e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005332:	3c01      	subs	r4, #1
 8005334:	f855 3904 	ldr.w	r3, [r5], #-4
 8005338:	4798      	blx	r3
 800533a:	2c00      	cmp	r4, #0
 800533c:	d1f9      	bne.n	8005332 <__libc_fini_array+0x16>
 800533e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005342:	f002 bc05 	b.w	8007b50 <_fini>
 8005346:	bf00      	nop
 8005348:	200009cc 	.word	0x200009cc
 800534c:	200009c8 	.word	0x200009c8

08005350 <_malloc_trim_r>:
 8005350:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005352:	4f24      	ldr	r7, [pc, #144]	; (80053e4 <_malloc_trim_r+0x94>)
 8005354:	460c      	mov	r4, r1
 8005356:	4606      	mov	r6, r0
 8005358:	f000 fcea 	bl	8005d30 <__malloc_lock>
 800535c:	68bb      	ldr	r3, [r7, #8]
 800535e:	685d      	ldr	r5, [r3, #4]
 8005360:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005364:	310f      	adds	r1, #15
 8005366:	f025 0503 	bic.w	r5, r5, #3
 800536a:	4429      	add	r1, r5
 800536c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005370:	f021 010f 	bic.w	r1, r1, #15
 8005374:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005378:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800537c:	db07      	blt.n	800538e <_malloc_trim_r+0x3e>
 800537e:	2100      	movs	r1, #0
 8005380:	4630      	mov	r0, r6
 8005382:	f000 ffeb 	bl	800635c <_sbrk_r>
 8005386:	68bb      	ldr	r3, [r7, #8]
 8005388:	442b      	add	r3, r5
 800538a:	4298      	cmp	r0, r3
 800538c:	d004      	beq.n	8005398 <_malloc_trim_r+0x48>
 800538e:	4630      	mov	r0, r6
 8005390:	f000 fcd4 	bl	8005d3c <__malloc_unlock>
 8005394:	2000      	movs	r0, #0
 8005396:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005398:	4261      	negs	r1, r4
 800539a:	4630      	mov	r0, r6
 800539c:	f000 ffde 	bl	800635c <_sbrk_r>
 80053a0:	3001      	adds	r0, #1
 80053a2:	d00d      	beq.n	80053c0 <_malloc_trim_r+0x70>
 80053a4:	4b10      	ldr	r3, [pc, #64]	; (80053e8 <_malloc_trim_r+0x98>)
 80053a6:	68ba      	ldr	r2, [r7, #8]
 80053a8:	6819      	ldr	r1, [r3, #0]
 80053aa:	1b2d      	subs	r5, r5, r4
 80053ac:	f045 0501 	orr.w	r5, r5, #1
 80053b0:	4630      	mov	r0, r6
 80053b2:	1b09      	subs	r1, r1, r4
 80053b4:	6055      	str	r5, [r2, #4]
 80053b6:	6019      	str	r1, [r3, #0]
 80053b8:	f000 fcc0 	bl	8005d3c <__malloc_unlock>
 80053bc:	2001      	movs	r0, #1
 80053be:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80053c0:	2100      	movs	r1, #0
 80053c2:	4630      	mov	r0, r6
 80053c4:	f000 ffca 	bl	800635c <_sbrk_r>
 80053c8:	68ba      	ldr	r2, [r7, #8]
 80053ca:	1a83      	subs	r3, r0, r2
 80053cc:	2b0f      	cmp	r3, #15
 80053ce:	ddde      	ble.n	800538e <_malloc_trim_r+0x3e>
 80053d0:	4c06      	ldr	r4, [pc, #24]	; (80053ec <_malloc_trim_r+0x9c>)
 80053d2:	4905      	ldr	r1, [pc, #20]	; (80053e8 <_malloc_trim_r+0x98>)
 80053d4:	6824      	ldr	r4, [r4, #0]
 80053d6:	f043 0301 	orr.w	r3, r3, #1
 80053da:	1b00      	subs	r0, r0, r4
 80053dc:	6053      	str	r3, [r2, #4]
 80053de:	6008      	str	r0, [r1, #0]
 80053e0:	e7d5      	b.n	800538e <_malloc_trim_r+0x3e>
 80053e2:	bf00      	nop
 80053e4:	20000444 	.word	0x20000444
 80053e8:	20000af8 	.word	0x20000af8
 80053ec:	2000084c 	.word	0x2000084c

080053f0 <_free_r>:
 80053f0:	2900      	cmp	r1, #0
 80053f2:	d053      	beq.n	800549c <_free_r+0xac>
 80053f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80053f6:	460c      	mov	r4, r1
 80053f8:	4606      	mov	r6, r0
 80053fa:	f000 fc99 	bl	8005d30 <__malloc_lock>
 80053fe:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005402:	4f71      	ldr	r7, [pc, #452]	; (80055c8 <_free_r+0x1d8>)
 8005404:	f02c 0101 	bic.w	r1, ip, #1
 8005408:	f1a4 0508 	sub.w	r5, r4, #8
 800540c:	186b      	adds	r3, r5, r1
 800540e:	68b8      	ldr	r0, [r7, #8]
 8005410:	685a      	ldr	r2, [r3, #4]
 8005412:	4298      	cmp	r0, r3
 8005414:	f022 0203 	bic.w	r2, r2, #3
 8005418:	d053      	beq.n	80054c2 <_free_r+0xd2>
 800541a:	f01c 0f01 	tst.w	ip, #1
 800541e:	605a      	str	r2, [r3, #4]
 8005420:	eb03 0002 	add.w	r0, r3, r2
 8005424:	d13b      	bne.n	800549e <_free_r+0xae>
 8005426:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800542a:	6840      	ldr	r0, [r0, #4]
 800542c:	eba5 050c 	sub.w	r5, r5, ip
 8005430:	f107 0e08 	add.w	lr, r7, #8
 8005434:	68ac      	ldr	r4, [r5, #8]
 8005436:	4574      	cmp	r4, lr
 8005438:	4461      	add	r1, ip
 800543a:	f000 0001 	and.w	r0, r0, #1
 800543e:	d075      	beq.n	800552c <_free_r+0x13c>
 8005440:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005444:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005448:	f8cc 4008 	str.w	r4, [ip, #8]
 800544c:	b360      	cbz	r0, 80054a8 <_free_r+0xb8>
 800544e:	f041 0301 	orr.w	r3, r1, #1
 8005452:	606b      	str	r3, [r5, #4]
 8005454:	5069      	str	r1, [r5, r1]
 8005456:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800545a:	d350      	bcc.n	80054fe <_free_r+0x10e>
 800545c:	0a4b      	lsrs	r3, r1, #9
 800545e:	2b04      	cmp	r3, #4
 8005460:	d870      	bhi.n	8005544 <_free_r+0x154>
 8005462:	098b      	lsrs	r3, r1, #6
 8005464:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005468:	00e4      	lsls	r4, r4, #3
 800546a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800546e:	1938      	adds	r0, r7, r4
 8005470:	593b      	ldr	r3, [r7, r4]
 8005472:	3808      	subs	r0, #8
 8005474:	4298      	cmp	r0, r3
 8005476:	d078      	beq.n	800556a <_free_r+0x17a>
 8005478:	685a      	ldr	r2, [r3, #4]
 800547a:	f022 0203 	bic.w	r2, r2, #3
 800547e:	428a      	cmp	r2, r1
 8005480:	d971      	bls.n	8005566 <_free_r+0x176>
 8005482:	689b      	ldr	r3, [r3, #8]
 8005484:	4298      	cmp	r0, r3
 8005486:	d1f7      	bne.n	8005478 <_free_r+0x88>
 8005488:	68c3      	ldr	r3, [r0, #12]
 800548a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800548e:	609d      	str	r5, [r3, #8]
 8005490:	60c5      	str	r5, [r0, #12]
 8005492:	4630      	mov	r0, r6
 8005494:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005498:	f000 bc50 	b.w	8005d3c <__malloc_unlock>
 800549c:	4770      	bx	lr
 800549e:	6840      	ldr	r0, [r0, #4]
 80054a0:	f000 0001 	and.w	r0, r0, #1
 80054a4:	2800      	cmp	r0, #0
 80054a6:	d1d2      	bne.n	800544e <_free_r+0x5e>
 80054a8:	6898      	ldr	r0, [r3, #8]
 80054aa:	4c48      	ldr	r4, [pc, #288]	; (80055cc <_free_r+0x1dc>)
 80054ac:	4411      	add	r1, r2
 80054ae:	42a0      	cmp	r0, r4
 80054b0:	f041 0201 	orr.w	r2, r1, #1
 80054b4:	d062      	beq.n	800557c <_free_r+0x18c>
 80054b6:	68db      	ldr	r3, [r3, #12]
 80054b8:	60c3      	str	r3, [r0, #12]
 80054ba:	6098      	str	r0, [r3, #8]
 80054bc:	606a      	str	r2, [r5, #4]
 80054be:	5069      	str	r1, [r5, r1]
 80054c0:	e7c9      	b.n	8005456 <_free_r+0x66>
 80054c2:	f01c 0f01 	tst.w	ip, #1
 80054c6:	440a      	add	r2, r1
 80054c8:	d107      	bne.n	80054da <_free_r+0xea>
 80054ca:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80054ce:	1aed      	subs	r5, r5, r3
 80054d0:	441a      	add	r2, r3
 80054d2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80054d6:	60cb      	str	r3, [r1, #12]
 80054d8:	6099      	str	r1, [r3, #8]
 80054da:	4b3d      	ldr	r3, [pc, #244]	; (80055d0 <_free_r+0x1e0>)
 80054dc:	681b      	ldr	r3, [r3, #0]
 80054de:	f042 0101 	orr.w	r1, r2, #1
 80054e2:	4293      	cmp	r3, r2
 80054e4:	6069      	str	r1, [r5, #4]
 80054e6:	60bd      	str	r5, [r7, #8]
 80054e8:	d804      	bhi.n	80054f4 <_free_r+0x104>
 80054ea:	4b3a      	ldr	r3, [pc, #232]	; (80055d4 <_free_r+0x1e4>)
 80054ec:	4630      	mov	r0, r6
 80054ee:	6819      	ldr	r1, [r3, #0]
 80054f0:	f7ff ff2e 	bl	8005350 <_malloc_trim_r>
 80054f4:	4630      	mov	r0, r6
 80054f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054fa:	f000 bc1f 	b.w	8005d3c <__malloc_unlock>
 80054fe:	08c9      	lsrs	r1, r1, #3
 8005500:	6878      	ldr	r0, [r7, #4]
 8005502:	1c4a      	adds	r2, r1, #1
 8005504:	2301      	movs	r3, #1
 8005506:	1089      	asrs	r1, r1, #2
 8005508:	408b      	lsls	r3, r1
 800550a:	4303      	orrs	r3, r0
 800550c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005510:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005514:	607b      	str	r3, [r7, #4]
 8005516:	3908      	subs	r1, #8
 8005518:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800551c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005520:	60c5      	str	r5, [r0, #12]
 8005522:	4630      	mov	r0, r6
 8005524:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005528:	f000 bc08 	b.w	8005d3c <__malloc_unlock>
 800552c:	2800      	cmp	r0, #0
 800552e:	d145      	bne.n	80055bc <_free_r+0x1cc>
 8005530:	440a      	add	r2, r1
 8005532:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005536:	f042 0001 	orr.w	r0, r2, #1
 800553a:	60cb      	str	r3, [r1, #12]
 800553c:	6099      	str	r1, [r3, #8]
 800553e:	6068      	str	r0, [r5, #4]
 8005540:	50aa      	str	r2, [r5, r2]
 8005542:	e7d7      	b.n	80054f4 <_free_r+0x104>
 8005544:	2b14      	cmp	r3, #20
 8005546:	d908      	bls.n	800555a <_free_r+0x16a>
 8005548:	2b54      	cmp	r3, #84	; 0x54
 800554a:	d81e      	bhi.n	800558a <_free_r+0x19a>
 800554c:	0b0b      	lsrs	r3, r1, #12
 800554e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005552:	00e4      	lsls	r4, r4, #3
 8005554:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005558:	e789      	b.n	800546e <_free_r+0x7e>
 800555a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800555e:	00e4      	lsls	r4, r4, #3
 8005560:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005564:	e783      	b.n	800546e <_free_r+0x7e>
 8005566:	4618      	mov	r0, r3
 8005568:	e78e      	b.n	8005488 <_free_r+0x98>
 800556a:	1093      	asrs	r3, r2, #2
 800556c:	6879      	ldr	r1, [r7, #4]
 800556e:	2201      	movs	r2, #1
 8005570:	fa02 f303 	lsl.w	r3, r2, r3
 8005574:	430b      	orrs	r3, r1
 8005576:	607b      	str	r3, [r7, #4]
 8005578:	4603      	mov	r3, r0
 800557a:	e786      	b.n	800548a <_free_r+0x9a>
 800557c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005580:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005584:	606a      	str	r2, [r5, #4]
 8005586:	5069      	str	r1, [r5, r1]
 8005588:	e7b4      	b.n	80054f4 <_free_r+0x104>
 800558a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800558e:	d806      	bhi.n	800559e <_free_r+0x1ae>
 8005590:	0bcb      	lsrs	r3, r1, #15
 8005592:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005596:	00e4      	lsls	r4, r4, #3
 8005598:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800559c:	e767      	b.n	800546e <_free_r+0x7e>
 800559e:	f240 5254 	movw	r2, #1364	; 0x554
 80055a2:	4293      	cmp	r3, r2
 80055a4:	d806      	bhi.n	80055b4 <_free_r+0x1c4>
 80055a6:	0c8b      	lsrs	r3, r1, #18
 80055a8:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80055ac:	00e4      	lsls	r4, r4, #3
 80055ae:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80055b2:	e75c      	b.n	800546e <_free_r+0x7e>
 80055b4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80055b8:	227e      	movs	r2, #126	; 0x7e
 80055ba:	e758      	b.n	800546e <_free_r+0x7e>
 80055bc:	f041 0201 	orr.w	r2, r1, #1
 80055c0:	606a      	str	r2, [r5, #4]
 80055c2:	6019      	str	r1, [r3, #0]
 80055c4:	e796      	b.n	80054f4 <_free_r+0x104>
 80055c6:	bf00      	nop
 80055c8:	20000444 	.word	0x20000444
 80055cc:	2000044c 	.word	0x2000044c
 80055d0:	20000850 	.word	0x20000850
 80055d4:	20000b28 	.word	0x20000b28

080055d8 <_fwalk_reent>:
 80055d8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80055dc:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80055e0:	d01f      	beq.n	8005622 <_fwalk_reent+0x4a>
 80055e2:	4688      	mov	r8, r1
 80055e4:	4606      	mov	r6, r0
 80055e6:	f04f 0900 	mov.w	r9, #0
 80055ea:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80055ee:	3d01      	subs	r5, #1
 80055f0:	d411      	bmi.n	8005616 <_fwalk_reent+0x3e>
 80055f2:	89a3      	ldrh	r3, [r4, #12]
 80055f4:	2b01      	cmp	r3, #1
 80055f6:	f105 35ff 	add.w	r5, r5, #4294967295
 80055fa:	4621      	mov	r1, r4
 80055fc:	4630      	mov	r0, r6
 80055fe:	d906      	bls.n	800560e <_fwalk_reent+0x36>
 8005600:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005604:	3301      	adds	r3, #1
 8005606:	d002      	beq.n	800560e <_fwalk_reent+0x36>
 8005608:	47c0      	blx	r8
 800560a:	ea49 0900 	orr.w	r9, r9, r0
 800560e:	1c6b      	adds	r3, r5, #1
 8005610:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005614:	d1ed      	bne.n	80055f2 <_fwalk_reent+0x1a>
 8005616:	683f      	ldr	r7, [r7, #0]
 8005618:	2f00      	cmp	r7, #0
 800561a:	d1e6      	bne.n	80055ea <_fwalk_reent+0x12>
 800561c:	4648      	mov	r0, r9
 800561e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005622:	46b9      	mov	r9, r7
 8005624:	4648      	mov	r0, r9
 8005626:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800562a:	bf00      	nop

0800562c <_localeconv_r>:
 800562c:	4a04      	ldr	r2, [pc, #16]	; (8005640 <_localeconv_r+0x14>)
 800562e:	4b05      	ldr	r3, [pc, #20]	; (8005644 <_localeconv_r+0x18>)
 8005630:	6812      	ldr	r2, [r2, #0]
 8005632:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005634:	2800      	cmp	r0, #0
 8005636:	bf08      	it	eq
 8005638:	4618      	moveq	r0, r3
 800563a:	30f0      	adds	r0, #240	; 0xf0
 800563c:	4770      	bx	lr
 800563e:	bf00      	nop
 8005640:	20000010 	.word	0x20000010
 8005644:	20000854 	.word	0x20000854

08005648 <__retarget_lock_init_recursive>:
 8005648:	4770      	bx	lr
 800564a:	bf00      	nop

0800564c <__retarget_lock_close_recursive>:
 800564c:	4770      	bx	lr
 800564e:	bf00      	nop

08005650 <__retarget_lock_acquire_recursive>:
 8005650:	4770      	bx	lr
 8005652:	bf00      	nop

08005654 <__retarget_lock_release_recursive>:
 8005654:	4770      	bx	lr
 8005656:	bf00      	nop

08005658 <__swhatbuf_r>:
 8005658:	b570      	push	{r4, r5, r6, lr}
 800565a:	460c      	mov	r4, r1
 800565c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005660:	2900      	cmp	r1, #0
 8005662:	b096      	sub	sp, #88	; 0x58
 8005664:	4615      	mov	r5, r2
 8005666:	461e      	mov	r6, r3
 8005668:	da0f      	bge.n	800568a <__swhatbuf_r+0x32>
 800566a:	89a2      	ldrh	r2, [r4, #12]
 800566c:	2300      	movs	r3, #0
 800566e:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005672:	6033      	str	r3, [r6, #0]
 8005674:	d104      	bne.n	8005680 <__swhatbuf_r+0x28>
 8005676:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800567a:	602b      	str	r3, [r5, #0]
 800567c:	b016      	add	sp, #88	; 0x58
 800567e:	bd70      	pop	{r4, r5, r6, pc}
 8005680:	2240      	movs	r2, #64	; 0x40
 8005682:	4618      	mov	r0, r3
 8005684:	602a      	str	r2, [r5, #0]
 8005686:	b016      	add	sp, #88	; 0x58
 8005688:	bd70      	pop	{r4, r5, r6, pc}
 800568a:	466a      	mov	r2, sp
 800568c:	f001 f932 	bl	80068f4 <_fstat_r>
 8005690:	2800      	cmp	r0, #0
 8005692:	dbea      	blt.n	800566a <__swhatbuf_r+0x12>
 8005694:	9b01      	ldr	r3, [sp, #4]
 8005696:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800569a:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800569e:	fab3 f383 	clz	r3, r3
 80056a2:	095b      	lsrs	r3, r3, #5
 80056a4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80056a8:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80056ac:	6033      	str	r3, [r6, #0]
 80056ae:	602a      	str	r2, [r5, #0]
 80056b0:	b016      	add	sp, #88	; 0x58
 80056b2:	bd70      	pop	{r4, r5, r6, pc}

080056b4 <__smakebuf_r>:
 80056b4:	898a      	ldrh	r2, [r1, #12]
 80056b6:	0792      	lsls	r2, r2, #30
 80056b8:	460b      	mov	r3, r1
 80056ba:	d506      	bpl.n	80056ca <__smakebuf_r+0x16>
 80056bc:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80056c0:	2101      	movs	r1, #1
 80056c2:	601a      	str	r2, [r3, #0]
 80056c4:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80056c8:	4770      	bx	lr
 80056ca:	b570      	push	{r4, r5, r6, lr}
 80056cc:	b082      	sub	sp, #8
 80056ce:	ab01      	add	r3, sp, #4
 80056d0:	466a      	mov	r2, sp
 80056d2:	460c      	mov	r4, r1
 80056d4:	4605      	mov	r5, r0
 80056d6:	f7ff ffbf 	bl	8005658 <__swhatbuf_r>
 80056da:	9900      	ldr	r1, [sp, #0]
 80056dc:	4606      	mov	r6, r0
 80056de:	4628      	mov	r0, r5
 80056e0:	f000 f832 	bl	8005748 <_malloc_r>
 80056e4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056e8:	b1d8      	cbz	r0, 8005722 <__smakebuf_r+0x6e>
 80056ea:	4916      	ldr	r1, [pc, #88]	; (8005744 <__smakebuf_r+0x90>)
 80056ec:	63e9      	str	r1, [r5, #60]	; 0x3c
 80056ee:	9a01      	ldr	r2, [sp, #4]
 80056f0:	9900      	ldr	r1, [sp, #0]
 80056f2:	6020      	str	r0, [r4, #0]
 80056f4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80056f8:	81a3      	strh	r3, [r4, #12]
 80056fa:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80056fe:	b91a      	cbnz	r2, 8005708 <__smakebuf_r+0x54>
 8005700:	4333      	orrs	r3, r6
 8005702:	81a3      	strh	r3, [r4, #12]
 8005704:	b002      	add	sp, #8
 8005706:	bd70      	pop	{r4, r5, r6, pc}
 8005708:	4628      	mov	r0, r5
 800570a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800570e:	f001 fa83 	bl	8006c18 <_isatty_r>
 8005712:	b1a0      	cbz	r0, 800573e <__smakebuf_r+0x8a>
 8005714:	89a3      	ldrh	r3, [r4, #12]
 8005716:	f023 0303 	bic.w	r3, r3, #3
 800571a:	f043 0301 	orr.w	r3, r3, #1
 800571e:	b21b      	sxth	r3, r3
 8005720:	e7ee      	b.n	8005700 <__smakebuf_r+0x4c>
 8005722:	059a      	lsls	r2, r3, #22
 8005724:	d4ee      	bmi.n	8005704 <__smakebuf_r+0x50>
 8005726:	f023 0303 	bic.w	r3, r3, #3
 800572a:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800572e:	f043 0302 	orr.w	r3, r3, #2
 8005732:	2101      	movs	r1, #1
 8005734:	81a3      	strh	r3, [r4, #12]
 8005736:	6022      	str	r2, [r4, #0]
 8005738:	e9c4 2104 	strd	r2, r1, [r4, #16]
 800573c:	e7e2      	b.n	8005704 <__smakebuf_r+0x50>
 800573e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005742:	e7dd      	b.n	8005700 <__smakebuf_r+0x4c>
 8005744:	080052a1 	.word	0x080052a1

08005748 <_malloc_r>:
 8005748:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800574c:	f101 050b 	add.w	r5, r1, #11
 8005750:	2d16      	cmp	r5, #22
 8005752:	b083      	sub	sp, #12
 8005754:	4606      	mov	r6, r0
 8005756:	d823      	bhi.n	80057a0 <_malloc_r+0x58>
 8005758:	2910      	cmp	r1, #16
 800575a:	f200 80b9 	bhi.w	80058d0 <_malloc_r+0x188>
 800575e:	f000 fae7 	bl	8005d30 <__malloc_lock>
 8005762:	2510      	movs	r5, #16
 8005764:	2318      	movs	r3, #24
 8005766:	2002      	movs	r0, #2
 8005768:	4fc5      	ldr	r7, [pc, #788]	; (8005a80 <_malloc_r+0x338>)
 800576a:	443b      	add	r3, r7
 800576c:	f1a3 0208 	sub.w	r2, r3, #8
 8005770:	685c      	ldr	r4, [r3, #4]
 8005772:	4294      	cmp	r4, r2
 8005774:	f000 8166 	beq.w	8005a44 <_malloc_r+0x2fc>
 8005778:	6863      	ldr	r3, [r4, #4]
 800577a:	f023 0303 	bic.w	r3, r3, #3
 800577e:	4423      	add	r3, r4
 8005780:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005784:	685a      	ldr	r2, [r3, #4]
 8005786:	60e9      	str	r1, [r5, #12]
 8005788:	f042 0201 	orr.w	r2, r2, #1
 800578c:	608d      	str	r5, [r1, #8]
 800578e:	4630      	mov	r0, r6
 8005790:	605a      	str	r2, [r3, #4]
 8005792:	f000 fad3 	bl	8005d3c <__malloc_unlock>
 8005796:	3408      	adds	r4, #8
 8005798:	4620      	mov	r0, r4
 800579a:	b003      	add	sp, #12
 800579c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80057a0:	f035 0507 	bics.w	r5, r5, #7
 80057a4:	f100 8094 	bmi.w	80058d0 <_malloc_r+0x188>
 80057a8:	42a9      	cmp	r1, r5
 80057aa:	f200 8091 	bhi.w	80058d0 <_malloc_r+0x188>
 80057ae:	f000 fabf 	bl	8005d30 <__malloc_lock>
 80057b2:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80057b6:	f0c0 8183 	bcc.w	8005ac0 <_malloc_r+0x378>
 80057ba:	0a6b      	lsrs	r3, r5, #9
 80057bc:	f000 808f 	beq.w	80058de <_malloc_r+0x196>
 80057c0:	2b04      	cmp	r3, #4
 80057c2:	f200 8146 	bhi.w	8005a52 <_malloc_r+0x30a>
 80057c6:	09ab      	lsrs	r3, r5, #6
 80057c8:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80057cc:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80057d0:	00c3      	lsls	r3, r0, #3
 80057d2:	4fab      	ldr	r7, [pc, #684]	; (8005a80 <_malloc_r+0x338>)
 80057d4:	443b      	add	r3, r7
 80057d6:	f1a3 0108 	sub.w	r1, r3, #8
 80057da:	685c      	ldr	r4, [r3, #4]
 80057dc:	42a1      	cmp	r1, r4
 80057de:	d106      	bne.n	80057ee <_malloc_r+0xa6>
 80057e0:	e00c      	b.n	80057fc <_malloc_r+0xb4>
 80057e2:	2a00      	cmp	r2, #0
 80057e4:	f280 811d 	bge.w	8005a22 <_malloc_r+0x2da>
 80057e8:	68e4      	ldr	r4, [r4, #12]
 80057ea:	42a1      	cmp	r1, r4
 80057ec:	d006      	beq.n	80057fc <_malloc_r+0xb4>
 80057ee:	6863      	ldr	r3, [r4, #4]
 80057f0:	f023 0303 	bic.w	r3, r3, #3
 80057f4:	1b5a      	subs	r2, r3, r5
 80057f6:	2a0f      	cmp	r2, #15
 80057f8:	ddf3      	ble.n	80057e2 <_malloc_r+0x9a>
 80057fa:	4660      	mov	r0, ip
 80057fc:	693c      	ldr	r4, [r7, #16]
 80057fe:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005a94 <_malloc_r+0x34c>
 8005802:	4564      	cmp	r4, ip
 8005804:	d071      	beq.n	80058ea <_malloc_r+0x1a2>
 8005806:	6863      	ldr	r3, [r4, #4]
 8005808:	f023 0303 	bic.w	r3, r3, #3
 800580c:	1b5a      	subs	r2, r3, r5
 800580e:	2a0f      	cmp	r2, #15
 8005810:	f300 8144 	bgt.w	8005a9c <_malloc_r+0x354>
 8005814:	2a00      	cmp	r2, #0
 8005816:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800581a:	f280 8126 	bge.w	8005a6a <_malloc_r+0x322>
 800581e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005822:	f080 8169 	bcs.w	8005af8 <_malloc_r+0x3b0>
 8005826:	08db      	lsrs	r3, r3, #3
 8005828:	1c59      	adds	r1, r3, #1
 800582a:	687a      	ldr	r2, [r7, #4]
 800582c:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005830:	f8c4 8008 	str.w	r8, [r4, #8]
 8005834:	f04f 0e01 	mov.w	lr, #1
 8005838:	109b      	asrs	r3, r3, #2
 800583a:	fa0e f303 	lsl.w	r3, lr, r3
 800583e:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005842:	4313      	orrs	r3, r2
 8005844:	f1ae 0208 	sub.w	r2, lr, #8
 8005848:	60e2      	str	r2, [r4, #12]
 800584a:	607b      	str	r3, [r7, #4]
 800584c:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005850:	f8c8 400c 	str.w	r4, [r8, #12]
 8005854:	1082      	asrs	r2, r0, #2
 8005856:	2401      	movs	r4, #1
 8005858:	4094      	lsls	r4, r2
 800585a:	429c      	cmp	r4, r3
 800585c:	d84b      	bhi.n	80058f6 <_malloc_r+0x1ae>
 800585e:	421c      	tst	r4, r3
 8005860:	d106      	bne.n	8005870 <_malloc_r+0x128>
 8005862:	f020 0003 	bic.w	r0, r0, #3
 8005866:	0064      	lsls	r4, r4, #1
 8005868:	421c      	tst	r4, r3
 800586a:	f100 0004 	add.w	r0, r0, #4
 800586e:	d0fa      	beq.n	8005866 <_malloc_r+0x11e>
 8005870:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005874:	46ce      	mov	lr, r9
 8005876:	4680      	mov	r8, r0
 8005878:	f8de 300c 	ldr.w	r3, [lr, #12]
 800587c:	459e      	cmp	lr, r3
 800587e:	d107      	bne.n	8005890 <_malloc_r+0x148>
 8005880:	e122      	b.n	8005ac8 <_malloc_r+0x380>
 8005882:	2a00      	cmp	r2, #0
 8005884:	f280 8129 	bge.w	8005ada <_malloc_r+0x392>
 8005888:	68db      	ldr	r3, [r3, #12]
 800588a:	459e      	cmp	lr, r3
 800588c:	f000 811c 	beq.w	8005ac8 <_malloc_r+0x380>
 8005890:	6859      	ldr	r1, [r3, #4]
 8005892:	f021 0103 	bic.w	r1, r1, #3
 8005896:	1b4a      	subs	r2, r1, r5
 8005898:	2a0f      	cmp	r2, #15
 800589a:	ddf2      	ble.n	8005882 <_malloc_r+0x13a>
 800589c:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80058a0:	195c      	adds	r4, r3, r5
 80058a2:	f045 0501 	orr.w	r5, r5, #1
 80058a6:	605d      	str	r5, [r3, #4]
 80058a8:	f042 0501 	orr.w	r5, r2, #1
 80058ac:	f8c8 e00c 	str.w	lr, [r8, #12]
 80058b0:	4630      	mov	r0, r6
 80058b2:	f8ce 8008 	str.w	r8, [lr, #8]
 80058b6:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80058ba:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80058be:	6065      	str	r5, [r4, #4]
 80058c0:	505a      	str	r2, [r3, r1]
 80058c2:	9301      	str	r3, [sp, #4]
 80058c4:	f000 fa3a 	bl	8005d3c <__malloc_unlock>
 80058c8:	9b01      	ldr	r3, [sp, #4]
 80058ca:	f103 0408 	add.w	r4, r3, #8
 80058ce:	e763      	b.n	8005798 <_malloc_r+0x50>
 80058d0:	2400      	movs	r4, #0
 80058d2:	230c      	movs	r3, #12
 80058d4:	4620      	mov	r0, r4
 80058d6:	6033      	str	r3, [r6, #0]
 80058d8:	b003      	add	sp, #12
 80058da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058de:	f44f 7300 	mov.w	r3, #512	; 0x200
 80058e2:	2040      	movs	r0, #64	; 0x40
 80058e4:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80058e8:	e773      	b.n	80057d2 <_malloc_r+0x8a>
 80058ea:	687b      	ldr	r3, [r7, #4]
 80058ec:	1082      	asrs	r2, r0, #2
 80058ee:	2401      	movs	r4, #1
 80058f0:	4094      	lsls	r4, r2
 80058f2:	429c      	cmp	r4, r3
 80058f4:	d9b3      	bls.n	800585e <_malloc_r+0x116>
 80058f6:	68bc      	ldr	r4, [r7, #8]
 80058f8:	6863      	ldr	r3, [r4, #4]
 80058fa:	f023 0903 	bic.w	r9, r3, #3
 80058fe:	45a9      	cmp	r9, r5
 8005900:	d303      	bcc.n	800590a <_malloc_r+0x1c2>
 8005902:	eba9 0305 	sub.w	r3, r9, r5
 8005906:	2b0f      	cmp	r3, #15
 8005908:	dc7b      	bgt.n	8005a02 <_malloc_r+0x2ba>
 800590a:	4b5e      	ldr	r3, [pc, #376]	; (8005a84 <_malloc_r+0x33c>)
 800590c:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005a98 <_malloc_r+0x350>
 8005910:	681a      	ldr	r2, [r3, #0]
 8005912:	f8da 3000 	ldr.w	r3, [sl]
 8005916:	3301      	adds	r3, #1
 8005918:	eb05 0802 	add.w	r8, r5, r2
 800591c:	f000 8148 	beq.w	8005bb0 <_malloc_r+0x468>
 8005920:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005924:	f108 080f 	add.w	r8, r8, #15
 8005928:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 800592c:	f028 080f 	bic.w	r8, r8, #15
 8005930:	4641      	mov	r1, r8
 8005932:	4630      	mov	r0, r6
 8005934:	f000 fd12 	bl	800635c <_sbrk_r>
 8005938:	f1b0 3fff 	cmp.w	r0, #4294967295
 800593c:	4683      	mov	fp, r0
 800593e:	f000 8104 	beq.w	8005b4a <_malloc_r+0x402>
 8005942:	eb04 0009 	add.w	r0, r4, r9
 8005946:	4558      	cmp	r0, fp
 8005948:	f200 80fd 	bhi.w	8005b46 <_malloc_r+0x3fe>
 800594c:	4a4e      	ldr	r2, [pc, #312]	; (8005a88 <_malloc_r+0x340>)
 800594e:	6813      	ldr	r3, [r2, #0]
 8005950:	4443      	add	r3, r8
 8005952:	6013      	str	r3, [r2, #0]
 8005954:	f000 814d 	beq.w	8005bf2 <_malloc_r+0x4aa>
 8005958:	f8da 1000 	ldr.w	r1, [sl]
 800595c:	3101      	adds	r1, #1
 800595e:	bf1b      	ittet	ne
 8005960:	ebab 0000 	subne.w	r0, fp, r0
 8005964:	181b      	addne	r3, r3, r0
 8005966:	f8ca b000 	streq.w	fp, [sl]
 800596a:	6013      	strne	r3, [r2, #0]
 800596c:	f01b 0307 	ands.w	r3, fp, #7
 8005970:	f000 8134 	beq.w	8005bdc <_malloc_r+0x494>
 8005974:	f1c3 0108 	rsb	r1, r3, #8
 8005978:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 800597c:	448b      	add	fp, r1
 800597e:	3308      	adds	r3, #8
 8005980:	44d8      	add	r8, fp
 8005982:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005986:	eba3 0808 	sub.w	r8, r3, r8
 800598a:	4641      	mov	r1, r8
 800598c:	4630      	mov	r0, r6
 800598e:	9201      	str	r2, [sp, #4]
 8005990:	f000 fce4 	bl	800635c <_sbrk_r>
 8005994:	1c43      	adds	r3, r0, #1
 8005996:	9a01      	ldr	r2, [sp, #4]
 8005998:	f000 8146 	beq.w	8005c28 <_malloc_r+0x4e0>
 800599c:	eba0 010b 	sub.w	r1, r0, fp
 80059a0:	4441      	add	r1, r8
 80059a2:	f041 0101 	orr.w	r1, r1, #1
 80059a6:	6813      	ldr	r3, [r2, #0]
 80059a8:	f8c7 b008 	str.w	fp, [r7, #8]
 80059ac:	4443      	add	r3, r8
 80059ae:	42bc      	cmp	r4, r7
 80059b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80059b4:	6013      	str	r3, [r2, #0]
 80059b6:	d015      	beq.n	80059e4 <_malloc_r+0x29c>
 80059b8:	f1b9 0f0f 	cmp.w	r9, #15
 80059bc:	f240 8130 	bls.w	8005c20 <_malloc_r+0x4d8>
 80059c0:	6860      	ldr	r0, [r4, #4]
 80059c2:	f1a9 010c 	sub.w	r1, r9, #12
 80059c6:	f021 0107 	bic.w	r1, r1, #7
 80059ca:	f000 0001 	and.w	r0, r0, #1
 80059ce:	eb04 0c01 	add.w	ip, r4, r1
 80059d2:	4308      	orrs	r0, r1
 80059d4:	f04f 0e05 	mov.w	lr, #5
 80059d8:	290f      	cmp	r1, #15
 80059da:	6060      	str	r0, [r4, #4]
 80059dc:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80059e0:	f200 813a 	bhi.w	8005c58 <_malloc_r+0x510>
 80059e4:	4a29      	ldr	r2, [pc, #164]	; (8005a8c <_malloc_r+0x344>)
 80059e6:	482a      	ldr	r0, [pc, #168]	; (8005a90 <_malloc_r+0x348>)
 80059e8:	6811      	ldr	r1, [r2, #0]
 80059ea:	68bc      	ldr	r4, [r7, #8]
 80059ec:	428b      	cmp	r3, r1
 80059ee:	6801      	ldr	r1, [r0, #0]
 80059f0:	bf88      	it	hi
 80059f2:	6013      	strhi	r3, [r2, #0]
 80059f4:	6862      	ldr	r2, [r4, #4]
 80059f6:	428b      	cmp	r3, r1
 80059f8:	f022 0203 	bic.w	r2, r2, #3
 80059fc:	bf88      	it	hi
 80059fe:	6003      	strhi	r3, [r0, #0]
 8005a00:	e0a7      	b.n	8005b52 <_malloc_r+0x40a>
 8005a02:	1962      	adds	r2, r4, r5
 8005a04:	f043 0301 	orr.w	r3, r3, #1
 8005a08:	f045 0501 	orr.w	r5, r5, #1
 8005a0c:	6065      	str	r5, [r4, #4]
 8005a0e:	4630      	mov	r0, r6
 8005a10:	60ba      	str	r2, [r7, #8]
 8005a12:	6053      	str	r3, [r2, #4]
 8005a14:	f000 f992 	bl	8005d3c <__malloc_unlock>
 8005a18:	3408      	adds	r4, #8
 8005a1a:	4620      	mov	r0, r4
 8005a1c:	b003      	add	sp, #12
 8005a1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a22:	4423      	add	r3, r4
 8005a24:	68e1      	ldr	r1, [r4, #12]
 8005a26:	685a      	ldr	r2, [r3, #4]
 8005a28:	68a5      	ldr	r5, [r4, #8]
 8005a2a:	f042 0201 	orr.w	r2, r2, #1
 8005a2e:	60e9      	str	r1, [r5, #12]
 8005a30:	4630      	mov	r0, r6
 8005a32:	608d      	str	r5, [r1, #8]
 8005a34:	605a      	str	r2, [r3, #4]
 8005a36:	f000 f981 	bl	8005d3c <__malloc_unlock>
 8005a3a:	3408      	adds	r4, #8
 8005a3c:	4620      	mov	r0, r4
 8005a3e:	b003      	add	sp, #12
 8005a40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a44:	68dc      	ldr	r4, [r3, #12]
 8005a46:	42a3      	cmp	r3, r4
 8005a48:	bf08      	it	eq
 8005a4a:	3002      	addeq	r0, #2
 8005a4c:	f43f aed6 	beq.w	80057fc <_malloc_r+0xb4>
 8005a50:	e692      	b.n	8005778 <_malloc_r+0x30>
 8005a52:	2b14      	cmp	r3, #20
 8005a54:	d971      	bls.n	8005b3a <_malloc_r+0x3f2>
 8005a56:	2b54      	cmp	r3, #84	; 0x54
 8005a58:	f200 80ad 	bhi.w	8005bb6 <_malloc_r+0x46e>
 8005a5c:	0b2b      	lsrs	r3, r5, #12
 8005a5e:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005a62:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005a66:	00c3      	lsls	r3, r0, #3
 8005a68:	e6b3      	b.n	80057d2 <_malloc_r+0x8a>
 8005a6a:	4423      	add	r3, r4
 8005a6c:	4630      	mov	r0, r6
 8005a6e:	685a      	ldr	r2, [r3, #4]
 8005a70:	f042 0201 	orr.w	r2, r2, #1
 8005a74:	605a      	str	r2, [r3, #4]
 8005a76:	3408      	adds	r4, #8
 8005a78:	f000 f960 	bl	8005d3c <__malloc_unlock>
 8005a7c:	e68c      	b.n	8005798 <_malloc_r+0x50>
 8005a7e:	bf00      	nop
 8005a80:	20000444 	.word	0x20000444
 8005a84:	20000b28 	.word	0x20000b28
 8005a88:	20000af8 	.word	0x20000af8
 8005a8c:	20000b20 	.word	0x20000b20
 8005a90:	20000b24 	.word	0x20000b24
 8005a94:	2000044c 	.word	0x2000044c
 8005a98:	2000084c 	.word	0x2000084c
 8005a9c:	1961      	adds	r1, r4, r5
 8005a9e:	f045 0e01 	orr.w	lr, r5, #1
 8005aa2:	f042 0501 	orr.w	r5, r2, #1
 8005aa6:	f8c4 e004 	str.w	lr, [r4, #4]
 8005aaa:	4630      	mov	r0, r6
 8005aac:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ab0:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ab4:	604d      	str	r5, [r1, #4]
 8005ab6:	50e2      	str	r2, [r4, r3]
 8005ab8:	f000 f940 	bl	8005d3c <__malloc_unlock>
 8005abc:	3408      	adds	r4, #8
 8005abe:	e66b      	b.n	8005798 <_malloc_r+0x50>
 8005ac0:	08e8      	lsrs	r0, r5, #3
 8005ac2:	f105 0308 	add.w	r3, r5, #8
 8005ac6:	e64f      	b.n	8005768 <_malloc_r+0x20>
 8005ac8:	f108 0801 	add.w	r8, r8, #1
 8005acc:	f018 0f03 	tst.w	r8, #3
 8005ad0:	f10e 0e08 	add.w	lr, lr, #8
 8005ad4:	f47f aed0 	bne.w	8005878 <_malloc_r+0x130>
 8005ad8:	e052      	b.n	8005b80 <_malloc_r+0x438>
 8005ada:	4419      	add	r1, r3
 8005adc:	461c      	mov	r4, r3
 8005ade:	684a      	ldr	r2, [r1, #4]
 8005ae0:	68db      	ldr	r3, [r3, #12]
 8005ae2:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005ae6:	f042 0201 	orr.w	r2, r2, #1
 8005aea:	604a      	str	r2, [r1, #4]
 8005aec:	4630      	mov	r0, r6
 8005aee:	60eb      	str	r3, [r5, #12]
 8005af0:	609d      	str	r5, [r3, #8]
 8005af2:	f000 f923 	bl	8005d3c <__malloc_unlock>
 8005af6:	e64f      	b.n	8005798 <_malloc_r+0x50>
 8005af8:	0a5a      	lsrs	r2, r3, #9
 8005afa:	2a04      	cmp	r2, #4
 8005afc:	d935      	bls.n	8005b6a <_malloc_r+0x422>
 8005afe:	2a14      	cmp	r2, #20
 8005b00:	d86f      	bhi.n	8005be2 <_malloc_r+0x49a>
 8005b02:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b06:	00c9      	lsls	r1, r1, #3
 8005b08:	325b      	adds	r2, #91	; 0x5b
 8005b0a:	eb07 0e01 	add.w	lr, r7, r1
 8005b0e:	5879      	ldr	r1, [r7, r1]
 8005b10:	f1ae 0e08 	sub.w	lr, lr, #8
 8005b14:	458e      	cmp	lr, r1
 8005b16:	d058      	beq.n	8005bca <_malloc_r+0x482>
 8005b18:	684a      	ldr	r2, [r1, #4]
 8005b1a:	f022 0203 	bic.w	r2, r2, #3
 8005b1e:	429a      	cmp	r2, r3
 8005b20:	d902      	bls.n	8005b28 <_malloc_r+0x3e0>
 8005b22:	6889      	ldr	r1, [r1, #8]
 8005b24:	458e      	cmp	lr, r1
 8005b26:	d1f7      	bne.n	8005b18 <_malloc_r+0x3d0>
 8005b28:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005b2c:	687b      	ldr	r3, [r7, #4]
 8005b2e:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005b32:	f8ce 4008 	str.w	r4, [lr, #8]
 8005b36:	60cc      	str	r4, [r1, #12]
 8005b38:	e68c      	b.n	8005854 <_malloc_r+0x10c>
 8005b3a:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005b3e:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005b42:	00c3      	lsls	r3, r0, #3
 8005b44:	e645      	b.n	80057d2 <_malloc_r+0x8a>
 8005b46:	42bc      	cmp	r4, r7
 8005b48:	d072      	beq.n	8005c30 <_malloc_r+0x4e8>
 8005b4a:	68bc      	ldr	r4, [r7, #8]
 8005b4c:	6862      	ldr	r2, [r4, #4]
 8005b4e:	f022 0203 	bic.w	r2, r2, #3
 8005b52:	4295      	cmp	r5, r2
 8005b54:	eba2 0305 	sub.w	r3, r2, r5
 8005b58:	d802      	bhi.n	8005b60 <_malloc_r+0x418>
 8005b5a:	2b0f      	cmp	r3, #15
 8005b5c:	f73f af51 	bgt.w	8005a02 <_malloc_r+0x2ba>
 8005b60:	4630      	mov	r0, r6
 8005b62:	f000 f8eb 	bl	8005d3c <__malloc_unlock>
 8005b66:	2400      	movs	r4, #0
 8005b68:	e616      	b.n	8005798 <_malloc_r+0x50>
 8005b6a:	099a      	lsrs	r2, r3, #6
 8005b6c:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005b70:	00c9      	lsls	r1, r1, #3
 8005b72:	3238      	adds	r2, #56	; 0x38
 8005b74:	e7c9      	b.n	8005b0a <_malloc_r+0x3c2>
 8005b76:	f8d9 9000 	ldr.w	r9, [r9]
 8005b7a:	4599      	cmp	r9, r3
 8005b7c:	f040 8083 	bne.w	8005c86 <_malloc_r+0x53e>
 8005b80:	f010 0f03 	tst.w	r0, #3
 8005b84:	f1a9 0308 	sub.w	r3, r9, #8
 8005b88:	f100 30ff 	add.w	r0, r0, #4294967295
 8005b8c:	d1f3      	bne.n	8005b76 <_malloc_r+0x42e>
 8005b8e:	687b      	ldr	r3, [r7, #4]
 8005b90:	ea23 0304 	bic.w	r3, r3, r4
 8005b94:	607b      	str	r3, [r7, #4]
 8005b96:	0064      	lsls	r4, r4, #1
 8005b98:	429c      	cmp	r4, r3
 8005b9a:	f63f aeac 	bhi.w	80058f6 <_malloc_r+0x1ae>
 8005b9e:	b91c      	cbnz	r4, 8005ba8 <_malloc_r+0x460>
 8005ba0:	e6a9      	b.n	80058f6 <_malloc_r+0x1ae>
 8005ba2:	0064      	lsls	r4, r4, #1
 8005ba4:	f108 0804 	add.w	r8, r8, #4
 8005ba8:	421c      	tst	r4, r3
 8005baa:	d0fa      	beq.n	8005ba2 <_malloc_r+0x45a>
 8005bac:	4640      	mov	r0, r8
 8005bae:	e65f      	b.n	8005870 <_malloc_r+0x128>
 8005bb0:	f108 0810 	add.w	r8, r8, #16
 8005bb4:	e6bc      	b.n	8005930 <_malloc_r+0x1e8>
 8005bb6:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005bba:	d826      	bhi.n	8005c0a <_malloc_r+0x4c2>
 8005bbc:	0beb      	lsrs	r3, r5, #15
 8005bbe:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005bc2:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005bc6:	00c3      	lsls	r3, r0, #3
 8005bc8:	e603      	b.n	80057d2 <_malloc_r+0x8a>
 8005bca:	687b      	ldr	r3, [r7, #4]
 8005bcc:	1092      	asrs	r2, r2, #2
 8005bce:	f04f 0801 	mov.w	r8, #1
 8005bd2:	fa08 f202 	lsl.w	r2, r8, r2
 8005bd6:	4313      	orrs	r3, r2
 8005bd8:	607b      	str	r3, [r7, #4]
 8005bda:	e7a8      	b.n	8005b2e <_malloc_r+0x3e6>
 8005bdc:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005be0:	e6ce      	b.n	8005980 <_malloc_r+0x238>
 8005be2:	2a54      	cmp	r2, #84	; 0x54
 8005be4:	d829      	bhi.n	8005c3a <_malloc_r+0x4f2>
 8005be6:	0b1a      	lsrs	r2, r3, #12
 8005be8:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005bec:	00c9      	lsls	r1, r1, #3
 8005bee:	326e      	adds	r2, #110	; 0x6e
 8005bf0:	e78b      	b.n	8005b0a <_malloc_r+0x3c2>
 8005bf2:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005bf6:	2900      	cmp	r1, #0
 8005bf8:	f47f aeae 	bne.w	8005958 <_malloc_r+0x210>
 8005bfc:	eb09 0208 	add.w	r2, r9, r8
 8005c00:	68b9      	ldr	r1, [r7, #8]
 8005c02:	f042 0201 	orr.w	r2, r2, #1
 8005c06:	604a      	str	r2, [r1, #4]
 8005c08:	e6ec      	b.n	80059e4 <_malloc_r+0x29c>
 8005c0a:	f240 5254 	movw	r2, #1364	; 0x554
 8005c0e:	4293      	cmp	r3, r2
 8005c10:	d81c      	bhi.n	8005c4c <_malloc_r+0x504>
 8005c12:	0cab      	lsrs	r3, r5, #18
 8005c14:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005c18:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005c1c:	00c3      	lsls	r3, r0, #3
 8005c1e:	e5d8      	b.n	80057d2 <_malloc_r+0x8a>
 8005c20:	2301      	movs	r3, #1
 8005c22:	f8cb 3004 	str.w	r3, [fp, #4]
 8005c26:	e79b      	b.n	8005b60 <_malloc_r+0x418>
 8005c28:	2101      	movs	r1, #1
 8005c2a:	f04f 0800 	mov.w	r8, #0
 8005c2e:	e6ba      	b.n	80059a6 <_malloc_r+0x25e>
 8005c30:	4a16      	ldr	r2, [pc, #88]	; (8005c8c <_malloc_r+0x544>)
 8005c32:	6813      	ldr	r3, [r2, #0]
 8005c34:	4443      	add	r3, r8
 8005c36:	6013      	str	r3, [r2, #0]
 8005c38:	e68e      	b.n	8005958 <_malloc_r+0x210>
 8005c3a:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005c3e:	d814      	bhi.n	8005c6a <_malloc_r+0x522>
 8005c40:	0bda      	lsrs	r2, r3, #15
 8005c42:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005c46:	00c9      	lsls	r1, r1, #3
 8005c48:	3277      	adds	r2, #119	; 0x77
 8005c4a:	e75e      	b.n	8005b0a <_malloc_r+0x3c2>
 8005c4c:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005c50:	207f      	movs	r0, #127	; 0x7f
 8005c52:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005c56:	e5bc      	b.n	80057d2 <_malloc_r+0x8a>
 8005c58:	f104 0108 	add.w	r1, r4, #8
 8005c5c:	4630      	mov	r0, r6
 8005c5e:	9201      	str	r2, [sp, #4]
 8005c60:	f7ff fbc6 	bl	80053f0 <_free_r>
 8005c64:	9a01      	ldr	r2, [sp, #4]
 8005c66:	6813      	ldr	r3, [r2, #0]
 8005c68:	e6bc      	b.n	80059e4 <_malloc_r+0x29c>
 8005c6a:	f240 5154 	movw	r1, #1364	; 0x554
 8005c6e:	428a      	cmp	r2, r1
 8005c70:	d805      	bhi.n	8005c7e <_malloc_r+0x536>
 8005c72:	0c9a      	lsrs	r2, r3, #18
 8005c74:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005c78:	00c9      	lsls	r1, r1, #3
 8005c7a:	327c      	adds	r2, #124	; 0x7c
 8005c7c:	e745      	b.n	8005b0a <_malloc_r+0x3c2>
 8005c7e:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005c82:	227e      	movs	r2, #126	; 0x7e
 8005c84:	e741      	b.n	8005b0a <_malloc_r+0x3c2>
 8005c86:	687b      	ldr	r3, [r7, #4]
 8005c88:	e785      	b.n	8005b96 <_malloc_r+0x44e>
 8005c8a:	bf00      	nop
 8005c8c:	20000af8 	.word	0x20000af8

08005c90 <memchr>:
 8005c90:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8005c94:	2a10      	cmp	r2, #16
 8005c96:	db2b      	blt.n	8005cf0 <memchr+0x60>
 8005c98:	f010 0f07 	tst.w	r0, #7
 8005c9c:	d008      	beq.n	8005cb0 <memchr+0x20>
 8005c9e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8005ca2:	3a01      	subs	r2, #1
 8005ca4:	428b      	cmp	r3, r1
 8005ca6:	d02d      	beq.n	8005d04 <memchr+0x74>
 8005ca8:	f010 0f07 	tst.w	r0, #7
 8005cac:	b342      	cbz	r2, 8005d00 <memchr+0x70>
 8005cae:	d1f6      	bne.n	8005c9e <memchr+0xe>
 8005cb0:	b4f0      	push	{r4, r5, r6, r7}
 8005cb2:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8005cb6:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 8005cba:	f022 0407 	bic.w	r4, r2, #7
 8005cbe:	f07f 0700 	mvns.w	r7, #0
 8005cc2:	2300      	movs	r3, #0
 8005cc4:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8005cc8:	3c08      	subs	r4, #8
 8005cca:	ea85 0501 	eor.w	r5, r5, r1
 8005cce:	ea86 0601 	eor.w	r6, r6, r1
 8005cd2:	fa85 f547 	uadd8	r5, r5, r7
 8005cd6:	faa3 f587 	sel	r5, r3, r7
 8005cda:	fa86 f647 	uadd8	r6, r6, r7
 8005cde:	faa5 f687 	sel	r6, r5, r7
 8005ce2:	b98e      	cbnz	r6, 8005d08 <memchr+0x78>
 8005ce4:	d1ee      	bne.n	8005cc4 <memchr+0x34>
 8005ce6:	bcf0      	pop	{r4, r5, r6, r7}
 8005ce8:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8005cec:	f002 0207 	and.w	r2, r2, #7
 8005cf0:	b132      	cbz	r2, 8005d00 <memchr+0x70>
 8005cf2:	f810 3b01 	ldrb.w	r3, [r0], #1
 8005cf6:	3a01      	subs	r2, #1
 8005cf8:	ea83 0301 	eor.w	r3, r3, r1
 8005cfc:	b113      	cbz	r3, 8005d04 <memchr+0x74>
 8005cfe:	d1f8      	bne.n	8005cf2 <memchr+0x62>
 8005d00:	2000      	movs	r0, #0
 8005d02:	4770      	bx	lr
 8005d04:	3801      	subs	r0, #1
 8005d06:	4770      	bx	lr
 8005d08:	2d00      	cmp	r5, #0
 8005d0a:	bf06      	itte	eq
 8005d0c:	4635      	moveq	r5, r6
 8005d0e:	3803      	subeq	r0, #3
 8005d10:	3807      	subne	r0, #7
 8005d12:	f015 0f01 	tst.w	r5, #1
 8005d16:	d107      	bne.n	8005d28 <memchr+0x98>
 8005d18:	3001      	adds	r0, #1
 8005d1a:	f415 7f80 	tst.w	r5, #256	; 0x100
 8005d1e:	bf02      	ittt	eq
 8005d20:	3001      	addeq	r0, #1
 8005d22:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8005d26:	3001      	addeq	r0, #1
 8005d28:	bcf0      	pop	{r4, r5, r6, r7}
 8005d2a:	3801      	subs	r0, #1
 8005d2c:	4770      	bx	lr
 8005d2e:	bf00      	nop

08005d30 <__malloc_lock>:
 8005d30:	4801      	ldr	r0, [pc, #4]	; (8005d38 <__malloc_lock+0x8>)
 8005d32:	f7ff bc8d 	b.w	8005650 <__retarget_lock_acquire_recursive>
 8005d36:	bf00      	nop
 8005d38:	20000b84 	.word	0x20000b84

08005d3c <__malloc_unlock>:
 8005d3c:	4801      	ldr	r0, [pc, #4]	; (8005d44 <__malloc_unlock+0x8>)
 8005d3e:	f7ff bc89 	b.w	8005654 <__retarget_lock_release_recursive>
 8005d42:	bf00      	nop
 8005d44:	20000b84 	.word	0x20000b84

08005d48 <_Balloc>:
 8005d48:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005d4a:	b570      	push	{r4, r5, r6, lr}
 8005d4c:	4605      	mov	r5, r0
 8005d4e:	460c      	mov	r4, r1
 8005d50:	b14b      	cbz	r3, 8005d66 <_Balloc+0x1e>
 8005d52:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005d56:	b180      	cbz	r0, 8005d7a <_Balloc+0x32>
 8005d58:	6802      	ldr	r2, [r0, #0]
 8005d5a:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005d5e:	2300      	movs	r3, #0
 8005d60:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005d64:	bd70      	pop	{r4, r5, r6, pc}
 8005d66:	2221      	movs	r2, #33	; 0x21
 8005d68:	2104      	movs	r1, #4
 8005d6a:	f000 fc93 	bl	8006694 <_calloc_r>
 8005d6e:	4603      	mov	r3, r0
 8005d70:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005d72:	2800      	cmp	r0, #0
 8005d74:	d1ed      	bne.n	8005d52 <_Balloc+0xa>
 8005d76:	2000      	movs	r0, #0
 8005d78:	bd70      	pop	{r4, r5, r6, pc}
 8005d7a:	2101      	movs	r1, #1
 8005d7c:	fa01 f604 	lsl.w	r6, r1, r4
 8005d80:	1d72      	adds	r2, r6, #5
 8005d82:	4628      	mov	r0, r5
 8005d84:	0092      	lsls	r2, r2, #2
 8005d86:	f000 fc85 	bl	8006694 <_calloc_r>
 8005d8a:	2800      	cmp	r0, #0
 8005d8c:	d0f3      	beq.n	8005d76 <_Balloc+0x2e>
 8005d8e:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005d92:	e7e4      	b.n	8005d5e <_Balloc+0x16>

08005d94 <_Bfree>:
 8005d94:	b131      	cbz	r1, 8005da4 <_Bfree+0x10>
 8005d96:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005d98:	684a      	ldr	r2, [r1, #4]
 8005d9a:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005d9e:	6008      	str	r0, [r1, #0]
 8005da0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005da4:	4770      	bx	lr
 8005da6:	bf00      	nop

08005da8 <__multadd>:
 8005da8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005daa:	690c      	ldr	r4, [r1, #16]
 8005dac:	b083      	sub	sp, #12
 8005dae:	460d      	mov	r5, r1
 8005db0:	4606      	mov	r6, r0
 8005db2:	f101 0c14 	add.w	ip, r1, #20
 8005db6:	2700      	movs	r7, #0
 8005db8:	f8dc 0000 	ldr.w	r0, [ip]
 8005dbc:	b281      	uxth	r1, r0
 8005dbe:	fb02 3301 	mla	r3, r2, r1, r3
 8005dc2:	0c01      	lsrs	r1, r0, #16
 8005dc4:	0c18      	lsrs	r0, r3, #16
 8005dc6:	fb02 0101 	mla	r1, r2, r1, r0
 8005dca:	b29b      	uxth	r3, r3
 8005dcc:	3701      	adds	r7, #1
 8005dce:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005dd2:	42bc      	cmp	r4, r7
 8005dd4:	f84c 3b04 	str.w	r3, [ip], #4
 8005dd8:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005ddc:	dcec      	bgt.n	8005db8 <__multadd+0x10>
 8005dde:	b13b      	cbz	r3, 8005df0 <__multadd+0x48>
 8005de0:	68aa      	ldr	r2, [r5, #8]
 8005de2:	42a2      	cmp	r2, r4
 8005de4:	dd07      	ble.n	8005df6 <__multadd+0x4e>
 8005de6:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005dea:	3401      	adds	r4, #1
 8005dec:	6153      	str	r3, [r2, #20]
 8005dee:	612c      	str	r4, [r5, #16]
 8005df0:	4628      	mov	r0, r5
 8005df2:	b003      	add	sp, #12
 8005df4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005df6:	6869      	ldr	r1, [r5, #4]
 8005df8:	9301      	str	r3, [sp, #4]
 8005dfa:	3101      	adds	r1, #1
 8005dfc:	4630      	mov	r0, r6
 8005dfe:	f7ff ffa3 	bl	8005d48 <_Balloc>
 8005e02:	692a      	ldr	r2, [r5, #16]
 8005e04:	3202      	adds	r2, #2
 8005e06:	f105 010c 	add.w	r1, r5, #12
 8005e0a:	4607      	mov	r7, r0
 8005e0c:	0092      	lsls	r2, r2, #2
 8005e0e:	300c      	adds	r0, #12
 8005e10:	f7fc fd68 	bl	80028e4 <memcpy>
 8005e14:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005e16:	6869      	ldr	r1, [r5, #4]
 8005e18:	9b01      	ldr	r3, [sp, #4]
 8005e1a:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005e1e:	6028      	str	r0, [r5, #0]
 8005e20:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005e24:	463d      	mov	r5, r7
 8005e26:	e7de      	b.n	8005de6 <__multadd+0x3e>

08005e28 <__hi0bits>:
 8005e28:	0c02      	lsrs	r2, r0, #16
 8005e2a:	0412      	lsls	r2, r2, #16
 8005e2c:	4603      	mov	r3, r0
 8005e2e:	b9c2      	cbnz	r2, 8005e62 <__hi0bits+0x3a>
 8005e30:	0403      	lsls	r3, r0, #16
 8005e32:	2010      	movs	r0, #16
 8005e34:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005e38:	bf04      	itt	eq
 8005e3a:	021b      	lsleq	r3, r3, #8
 8005e3c:	3008      	addeq	r0, #8
 8005e3e:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005e42:	bf04      	itt	eq
 8005e44:	011b      	lsleq	r3, r3, #4
 8005e46:	3004      	addeq	r0, #4
 8005e48:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005e4c:	bf04      	itt	eq
 8005e4e:	009b      	lsleq	r3, r3, #2
 8005e50:	3002      	addeq	r0, #2
 8005e52:	2b00      	cmp	r3, #0
 8005e54:	db04      	blt.n	8005e60 <__hi0bits+0x38>
 8005e56:	005b      	lsls	r3, r3, #1
 8005e58:	d501      	bpl.n	8005e5e <__hi0bits+0x36>
 8005e5a:	3001      	adds	r0, #1
 8005e5c:	4770      	bx	lr
 8005e5e:	2020      	movs	r0, #32
 8005e60:	4770      	bx	lr
 8005e62:	2000      	movs	r0, #0
 8005e64:	e7e6      	b.n	8005e34 <__hi0bits+0xc>
 8005e66:	bf00      	nop

08005e68 <__lo0bits>:
 8005e68:	6803      	ldr	r3, [r0, #0]
 8005e6a:	f013 0207 	ands.w	r2, r3, #7
 8005e6e:	4601      	mov	r1, r0
 8005e70:	d007      	beq.n	8005e82 <__lo0bits+0x1a>
 8005e72:	07da      	lsls	r2, r3, #31
 8005e74:	d41f      	bmi.n	8005eb6 <__lo0bits+0x4e>
 8005e76:	0798      	lsls	r0, r3, #30
 8005e78:	d51f      	bpl.n	8005eba <__lo0bits+0x52>
 8005e7a:	085b      	lsrs	r3, r3, #1
 8005e7c:	600b      	str	r3, [r1, #0]
 8005e7e:	2001      	movs	r0, #1
 8005e80:	4770      	bx	lr
 8005e82:	b298      	uxth	r0, r3
 8005e84:	b1a0      	cbz	r0, 8005eb0 <__lo0bits+0x48>
 8005e86:	4610      	mov	r0, r2
 8005e88:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005e8c:	bf04      	itt	eq
 8005e8e:	0a1b      	lsreq	r3, r3, #8
 8005e90:	3008      	addeq	r0, #8
 8005e92:	071a      	lsls	r2, r3, #28
 8005e94:	bf04      	itt	eq
 8005e96:	091b      	lsreq	r3, r3, #4
 8005e98:	3004      	addeq	r0, #4
 8005e9a:	079a      	lsls	r2, r3, #30
 8005e9c:	bf04      	itt	eq
 8005e9e:	089b      	lsreq	r3, r3, #2
 8005ea0:	3002      	addeq	r0, #2
 8005ea2:	07da      	lsls	r2, r3, #31
 8005ea4:	d402      	bmi.n	8005eac <__lo0bits+0x44>
 8005ea6:	085b      	lsrs	r3, r3, #1
 8005ea8:	d00b      	beq.n	8005ec2 <__lo0bits+0x5a>
 8005eaa:	3001      	adds	r0, #1
 8005eac:	600b      	str	r3, [r1, #0]
 8005eae:	4770      	bx	lr
 8005eb0:	0c1b      	lsrs	r3, r3, #16
 8005eb2:	2010      	movs	r0, #16
 8005eb4:	e7e8      	b.n	8005e88 <__lo0bits+0x20>
 8005eb6:	2000      	movs	r0, #0
 8005eb8:	4770      	bx	lr
 8005eba:	089b      	lsrs	r3, r3, #2
 8005ebc:	600b      	str	r3, [r1, #0]
 8005ebe:	2002      	movs	r0, #2
 8005ec0:	4770      	bx	lr
 8005ec2:	2020      	movs	r0, #32
 8005ec4:	4770      	bx	lr
 8005ec6:	bf00      	nop

08005ec8 <__i2b>:
 8005ec8:	b510      	push	{r4, lr}
 8005eca:	460c      	mov	r4, r1
 8005ecc:	2101      	movs	r1, #1
 8005ece:	f7ff ff3b 	bl	8005d48 <_Balloc>
 8005ed2:	2201      	movs	r2, #1
 8005ed4:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005ed8:	bd10      	pop	{r4, pc}
 8005eda:	bf00      	nop

08005edc <__multiply>:
 8005edc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005ee0:	690e      	ldr	r6, [r1, #16]
 8005ee2:	6914      	ldr	r4, [r2, #16]
 8005ee4:	42a6      	cmp	r6, r4
 8005ee6:	b083      	sub	sp, #12
 8005ee8:	460f      	mov	r7, r1
 8005eea:	4615      	mov	r5, r2
 8005eec:	da04      	bge.n	8005ef8 <__multiply+0x1c>
 8005eee:	4632      	mov	r2, r6
 8005ef0:	462f      	mov	r7, r5
 8005ef2:	4626      	mov	r6, r4
 8005ef4:	460d      	mov	r5, r1
 8005ef6:	4614      	mov	r4, r2
 8005ef8:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005efc:	eb06 0804 	add.w	r8, r6, r4
 8005f00:	4543      	cmp	r3, r8
 8005f02:	bfb8      	it	lt
 8005f04:	3101      	addlt	r1, #1
 8005f06:	f7ff ff1f 	bl	8005d48 <_Balloc>
 8005f0a:	f100 0914 	add.w	r9, r0, #20
 8005f0e:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005f12:	45f1      	cmp	r9, lr
 8005f14:	9000      	str	r0, [sp, #0]
 8005f16:	d205      	bcs.n	8005f24 <__multiply+0x48>
 8005f18:	464b      	mov	r3, r9
 8005f1a:	2200      	movs	r2, #0
 8005f1c:	f843 2b04 	str.w	r2, [r3], #4
 8005f20:	459e      	cmp	lr, r3
 8005f22:	d8fb      	bhi.n	8005f1c <__multiply+0x40>
 8005f24:	f105 0a14 	add.w	sl, r5, #20
 8005f28:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005f2c:	f107 0314 	add.w	r3, r7, #20
 8005f30:	45a2      	cmp	sl, r4
 8005f32:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005f36:	d261      	bcs.n	8005ffc <__multiply+0x120>
 8005f38:	1b64      	subs	r4, r4, r5
 8005f3a:	3c15      	subs	r4, #21
 8005f3c:	f024 0403 	bic.w	r4, r4, #3
 8005f40:	f8cd e004 	str.w	lr, [sp, #4]
 8005f44:	44a2      	add	sl, r4
 8005f46:	f105 0210 	add.w	r2, r5, #16
 8005f4a:	469e      	mov	lr, r3
 8005f4c:	e005      	b.n	8005f5a <__multiply+0x7e>
 8005f4e:	0c2d      	lsrs	r5, r5, #16
 8005f50:	d12b      	bne.n	8005faa <__multiply+0xce>
 8005f52:	4592      	cmp	sl, r2
 8005f54:	f109 0904 	add.w	r9, r9, #4
 8005f58:	d04e      	beq.n	8005ff8 <__multiply+0x11c>
 8005f5a:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8005f5e:	fa1f fb85 	uxth.w	fp, r5
 8005f62:	f1bb 0f00 	cmp.w	fp, #0
 8005f66:	d0f2      	beq.n	8005f4e <__multiply+0x72>
 8005f68:	4677      	mov	r7, lr
 8005f6a:	464e      	mov	r6, r9
 8005f6c:	2000      	movs	r0, #0
 8005f6e:	e000      	b.n	8005f72 <__multiply+0x96>
 8005f70:	4626      	mov	r6, r4
 8005f72:	f857 1b04 	ldr.w	r1, [r7], #4
 8005f76:	6834      	ldr	r4, [r6, #0]
 8005f78:	b28b      	uxth	r3, r1
 8005f7a:	b2a5      	uxth	r5, r4
 8005f7c:	0c09      	lsrs	r1, r1, #16
 8005f7e:	0c24      	lsrs	r4, r4, #16
 8005f80:	fb0b 5303 	mla	r3, fp, r3, r5
 8005f84:	4403      	add	r3, r0
 8005f86:	fb0b 4001 	mla	r0, fp, r1, r4
 8005f8a:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8005f8e:	4634      	mov	r4, r6
 8005f90:	b29b      	uxth	r3, r3
 8005f92:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8005f96:	45bc      	cmp	ip, r7
 8005f98:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8005f9c:	f844 3b04 	str.w	r3, [r4], #4
 8005fa0:	d8e6      	bhi.n	8005f70 <__multiply+0x94>
 8005fa2:	6070      	str	r0, [r6, #4]
 8005fa4:	6815      	ldr	r5, [r2, #0]
 8005fa6:	0c2d      	lsrs	r5, r5, #16
 8005fa8:	d0d3      	beq.n	8005f52 <__multiply+0x76>
 8005faa:	f8d9 3000 	ldr.w	r3, [r9]
 8005fae:	4676      	mov	r6, lr
 8005fb0:	4618      	mov	r0, r3
 8005fb2:	46cb      	mov	fp, r9
 8005fb4:	2100      	movs	r1, #0
 8005fb6:	e000      	b.n	8005fba <__multiply+0xde>
 8005fb8:	46a3      	mov	fp, r4
 8005fba:	8834      	ldrh	r4, [r6, #0]
 8005fbc:	0c00      	lsrs	r0, r0, #16
 8005fbe:	fb05 0004 	mla	r0, r5, r4, r0
 8005fc2:	4401      	add	r1, r0
 8005fc4:	b29b      	uxth	r3, r3
 8005fc6:	465c      	mov	r4, fp
 8005fc8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8005fcc:	f844 3b04 	str.w	r3, [r4], #4
 8005fd0:	f856 3b04 	ldr.w	r3, [r6], #4
 8005fd4:	f8db 0004 	ldr.w	r0, [fp, #4]
 8005fd8:	0c1b      	lsrs	r3, r3, #16
 8005fda:	b287      	uxth	r7, r0
 8005fdc:	fb05 7303 	mla	r3, r5, r3, r7
 8005fe0:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8005fe4:	45b4      	cmp	ip, r6
 8005fe6:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8005fea:	d8e5      	bhi.n	8005fb8 <__multiply+0xdc>
 8005fec:	4592      	cmp	sl, r2
 8005fee:	f8cb 3004 	str.w	r3, [fp, #4]
 8005ff2:	f109 0904 	add.w	r9, r9, #4
 8005ff6:	d1b0      	bne.n	8005f5a <__multiply+0x7e>
 8005ff8:	f8dd e004 	ldr.w	lr, [sp, #4]
 8005ffc:	f1b8 0f00 	cmp.w	r8, #0
 8006000:	dd0b      	ble.n	800601a <__multiply+0x13e>
 8006002:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006006:	f1ae 0e04 	sub.w	lr, lr, #4
 800600a:	b11b      	cbz	r3, 8006014 <__multiply+0x138>
 800600c:	e005      	b.n	800601a <__multiply+0x13e>
 800600e:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006012:	b913      	cbnz	r3, 800601a <__multiply+0x13e>
 8006014:	f1b8 0801 	subs.w	r8, r8, #1
 8006018:	d1f9      	bne.n	800600e <__multiply+0x132>
 800601a:	9800      	ldr	r0, [sp, #0]
 800601c:	f8c0 8010 	str.w	r8, [r0, #16]
 8006020:	b003      	add	sp, #12
 8006022:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006026:	bf00      	nop

08006028 <__pow5mult>:
 8006028:	f012 0303 	ands.w	r3, r2, #3
 800602c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006030:	4614      	mov	r4, r2
 8006032:	4607      	mov	r7, r0
 8006034:	d12e      	bne.n	8006094 <__pow5mult+0x6c>
 8006036:	460d      	mov	r5, r1
 8006038:	10a4      	asrs	r4, r4, #2
 800603a:	d01c      	beq.n	8006076 <__pow5mult+0x4e>
 800603c:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800603e:	b396      	cbz	r6, 80060a6 <__pow5mult+0x7e>
 8006040:	07e3      	lsls	r3, r4, #31
 8006042:	f04f 0800 	mov.w	r8, #0
 8006046:	d406      	bmi.n	8006056 <__pow5mult+0x2e>
 8006048:	1064      	asrs	r4, r4, #1
 800604a:	d014      	beq.n	8006076 <__pow5mult+0x4e>
 800604c:	6830      	ldr	r0, [r6, #0]
 800604e:	b1a8      	cbz	r0, 800607c <__pow5mult+0x54>
 8006050:	4606      	mov	r6, r0
 8006052:	07e3      	lsls	r3, r4, #31
 8006054:	d5f8      	bpl.n	8006048 <__pow5mult+0x20>
 8006056:	4632      	mov	r2, r6
 8006058:	4629      	mov	r1, r5
 800605a:	4638      	mov	r0, r7
 800605c:	f7ff ff3e 	bl	8005edc <__multiply>
 8006060:	b1b5      	cbz	r5, 8006090 <__pow5mult+0x68>
 8006062:	686a      	ldr	r2, [r5, #4]
 8006064:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006066:	1064      	asrs	r4, r4, #1
 8006068:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800606c:	6029      	str	r1, [r5, #0]
 800606e:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006072:	4605      	mov	r5, r0
 8006074:	d1ea      	bne.n	800604c <__pow5mult+0x24>
 8006076:	4628      	mov	r0, r5
 8006078:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800607c:	4632      	mov	r2, r6
 800607e:	4631      	mov	r1, r6
 8006080:	4638      	mov	r0, r7
 8006082:	f7ff ff2b 	bl	8005edc <__multiply>
 8006086:	6030      	str	r0, [r6, #0]
 8006088:	f8c0 8000 	str.w	r8, [r0]
 800608c:	4606      	mov	r6, r0
 800608e:	e7e0      	b.n	8006052 <__pow5mult+0x2a>
 8006090:	4605      	mov	r5, r0
 8006092:	e7d9      	b.n	8006048 <__pow5mult+0x20>
 8006094:	3b01      	subs	r3, #1
 8006096:	4a0b      	ldr	r2, [pc, #44]	; (80060c4 <__pow5mult+0x9c>)
 8006098:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800609c:	2300      	movs	r3, #0
 800609e:	f7ff fe83 	bl	8005da8 <__multadd>
 80060a2:	4605      	mov	r5, r0
 80060a4:	e7c8      	b.n	8006038 <__pow5mult+0x10>
 80060a6:	2101      	movs	r1, #1
 80060a8:	4638      	mov	r0, r7
 80060aa:	f7ff fe4d 	bl	8005d48 <_Balloc>
 80060ae:	f240 2371 	movw	r3, #625	; 0x271
 80060b2:	6143      	str	r3, [r0, #20]
 80060b4:	2201      	movs	r2, #1
 80060b6:	2300      	movs	r3, #0
 80060b8:	6102      	str	r2, [r0, #16]
 80060ba:	4606      	mov	r6, r0
 80060bc:	64b8      	str	r0, [r7, #72]	; 0x48
 80060be:	6003      	str	r3, [r0, #0]
 80060c0:	e7be      	b.n	8006040 <__pow5mult+0x18>
 80060c2:	bf00      	nop
 80060c4:	08007d90 	.word	0x08007d90

080060c8 <__lshift>:
 80060c8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80060cc:	4691      	mov	r9, r2
 80060ce:	690a      	ldr	r2, [r1, #16]
 80060d0:	460e      	mov	r6, r1
 80060d2:	ea4f 1469 	mov.w	r4, r9, asr #5
 80060d6:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80060da:	eb04 0802 	add.w	r8, r4, r2
 80060de:	f108 0501 	add.w	r5, r8, #1
 80060e2:	429d      	cmp	r5, r3
 80060e4:	4607      	mov	r7, r0
 80060e6:	dd04      	ble.n	80060f2 <__lshift+0x2a>
 80060e8:	005b      	lsls	r3, r3, #1
 80060ea:	429d      	cmp	r5, r3
 80060ec:	f101 0101 	add.w	r1, r1, #1
 80060f0:	dcfa      	bgt.n	80060e8 <__lshift+0x20>
 80060f2:	4638      	mov	r0, r7
 80060f4:	f7ff fe28 	bl	8005d48 <_Balloc>
 80060f8:	2c00      	cmp	r4, #0
 80060fa:	f100 0314 	add.w	r3, r0, #20
 80060fe:	dd37      	ble.n	8006170 <__lshift+0xa8>
 8006100:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006104:	2200      	movs	r2, #0
 8006106:	f843 2b04 	str.w	r2, [r3], #4
 800610a:	428b      	cmp	r3, r1
 800610c:	d1fb      	bne.n	8006106 <__lshift+0x3e>
 800610e:	6934      	ldr	r4, [r6, #16]
 8006110:	f106 0314 	add.w	r3, r6, #20
 8006114:	f019 091f 	ands.w	r9, r9, #31
 8006118:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 800611c:	d020      	beq.n	8006160 <__lshift+0x98>
 800611e:	f1c9 0e20 	rsb	lr, r9, #32
 8006122:	2200      	movs	r2, #0
 8006124:	e000      	b.n	8006128 <__lshift+0x60>
 8006126:	4651      	mov	r1, sl
 8006128:	681c      	ldr	r4, [r3, #0]
 800612a:	468a      	mov	sl, r1
 800612c:	fa04 f409 	lsl.w	r4, r4, r9
 8006130:	4314      	orrs	r4, r2
 8006132:	f84a 4b04 	str.w	r4, [sl], #4
 8006136:	f853 2b04 	ldr.w	r2, [r3], #4
 800613a:	4563      	cmp	r3, ip
 800613c:	fa22 f20e 	lsr.w	r2, r2, lr
 8006140:	d3f1      	bcc.n	8006126 <__lshift+0x5e>
 8006142:	604a      	str	r2, [r1, #4]
 8006144:	b10a      	cbz	r2, 800614a <__lshift+0x82>
 8006146:	f108 0502 	add.w	r5, r8, #2
 800614a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800614c:	6872      	ldr	r2, [r6, #4]
 800614e:	3d01      	subs	r5, #1
 8006150:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006154:	6105      	str	r5, [r0, #16]
 8006156:	6031      	str	r1, [r6, #0]
 8006158:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 800615c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006160:	3904      	subs	r1, #4
 8006162:	f853 2b04 	ldr.w	r2, [r3], #4
 8006166:	f841 2f04 	str.w	r2, [r1, #4]!
 800616a:	459c      	cmp	ip, r3
 800616c:	d8f9      	bhi.n	8006162 <__lshift+0x9a>
 800616e:	e7ec      	b.n	800614a <__lshift+0x82>
 8006170:	4619      	mov	r1, r3
 8006172:	e7cc      	b.n	800610e <__lshift+0x46>

08006174 <__mcmp>:
 8006174:	b430      	push	{r4, r5}
 8006176:	690b      	ldr	r3, [r1, #16]
 8006178:	4605      	mov	r5, r0
 800617a:	6900      	ldr	r0, [r0, #16]
 800617c:	1ac0      	subs	r0, r0, r3
 800617e:	d10f      	bne.n	80061a0 <__mcmp+0x2c>
 8006180:	009b      	lsls	r3, r3, #2
 8006182:	3514      	adds	r5, #20
 8006184:	3114      	adds	r1, #20
 8006186:	4419      	add	r1, r3
 8006188:	442b      	add	r3, r5
 800618a:	e001      	b.n	8006190 <__mcmp+0x1c>
 800618c:	429d      	cmp	r5, r3
 800618e:	d207      	bcs.n	80061a0 <__mcmp+0x2c>
 8006190:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006194:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006198:	4294      	cmp	r4, r2
 800619a:	d0f7      	beq.n	800618c <__mcmp+0x18>
 800619c:	d302      	bcc.n	80061a4 <__mcmp+0x30>
 800619e:	2001      	movs	r0, #1
 80061a0:	bc30      	pop	{r4, r5}
 80061a2:	4770      	bx	lr
 80061a4:	f04f 30ff 	mov.w	r0, #4294967295
 80061a8:	e7fa      	b.n	80061a0 <__mcmp+0x2c>
 80061aa:	bf00      	nop

080061ac <__mdiff>:
 80061ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80061b0:	6913      	ldr	r3, [r2, #16]
 80061b2:	690d      	ldr	r5, [r1, #16]
 80061b4:	1aed      	subs	r5, r5, r3
 80061b6:	2d00      	cmp	r5, #0
 80061b8:	460e      	mov	r6, r1
 80061ba:	4690      	mov	r8, r2
 80061bc:	f101 0414 	add.w	r4, r1, #20
 80061c0:	f102 0714 	add.w	r7, r2, #20
 80061c4:	d114      	bne.n	80061f0 <__mdiff+0x44>
 80061c6:	009b      	lsls	r3, r3, #2
 80061c8:	18e2      	adds	r2, r4, r3
 80061ca:	443b      	add	r3, r7
 80061cc:	e001      	b.n	80061d2 <__mdiff+0x26>
 80061ce:	42a2      	cmp	r2, r4
 80061d0:	d959      	bls.n	8006286 <__mdiff+0xda>
 80061d2:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80061d6:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80061da:	458c      	cmp	ip, r1
 80061dc:	d0f7      	beq.n	80061ce <__mdiff+0x22>
 80061de:	d209      	bcs.n	80061f4 <__mdiff+0x48>
 80061e0:	4622      	mov	r2, r4
 80061e2:	4633      	mov	r3, r6
 80061e4:	463c      	mov	r4, r7
 80061e6:	4646      	mov	r6, r8
 80061e8:	4617      	mov	r7, r2
 80061ea:	4698      	mov	r8, r3
 80061ec:	2501      	movs	r5, #1
 80061ee:	e001      	b.n	80061f4 <__mdiff+0x48>
 80061f0:	dbf6      	blt.n	80061e0 <__mdiff+0x34>
 80061f2:	2500      	movs	r5, #0
 80061f4:	6871      	ldr	r1, [r6, #4]
 80061f6:	f7ff fda7 	bl	8005d48 <_Balloc>
 80061fa:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80061fe:	6936      	ldr	r6, [r6, #16]
 8006200:	60c5      	str	r5, [r0, #12]
 8006202:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006206:	46bc      	mov	ip, r7
 8006208:	f100 0514 	add.w	r5, r0, #20
 800620c:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006210:	2300      	movs	r3, #0
 8006212:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006216:	f854 8b04 	ldr.w	r8, [r4], #4
 800621a:	b28a      	uxth	r2, r1
 800621c:	fa13 f388 	uxtah	r3, r3, r8
 8006220:	0c09      	lsrs	r1, r1, #16
 8006222:	1a9a      	subs	r2, r3, r2
 8006224:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006228:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800622c:	b292      	uxth	r2, r2
 800622e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006232:	45e6      	cmp	lr, ip
 8006234:	f845 2b04 	str.w	r2, [r5], #4
 8006238:	ea4f 4323 	mov.w	r3, r3, asr #16
 800623c:	d8e9      	bhi.n	8006212 <__mdiff+0x66>
 800623e:	42a7      	cmp	r7, r4
 8006240:	d917      	bls.n	8006272 <__mdiff+0xc6>
 8006242:	46ae      	mov	lr, r5
 8006244:	46a4      	mov	ip, r4
 8006246:	f85c 2b04 	ldr.w	r2, [ip], #4
 800624a:	fa13 f382 	uxtah	r3, r3, r2
 800624e:	1419      	asrs	r1, r3, #16
 8006250:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006254:	b29b      	uxth	r3, r3
 8006256:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800625a:	4567      	cmp	r7, ip
 800625c:	f84e 2b04 	str.w	r2, [lr], #4
 8006260:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006264:	d8ef      	bhi.n	8006246 <__mdiff+0x9a>
 8006266:	43e4      	mvns	r4, r4
 8006268:	4427      	add	r7, r4
 800626a:	f027 0703 	bic.w	r7, r7, #3
 800626e:	3704      	adds	r7, #4
 8006270:	443d      	add	r5, r7
 8006272:	3d04      	subs	r5, #4
 8006274:	b922      	cbnz	r2, 8006280 <__mdiff+0xd4>
 8006276:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800627a:	3e01      	subs	r6, #1
 800627c:	2b00      	cmp	r3, #0
 800627e:	d0fa      	beq.n	8006276 <__mdiff+0xca>
 8006280:	6106      	str	r6, [r0, #16]
 8006282:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006286:	2100      	movs	r1, #0
 8006288:	f7ff fd5e 	bl	8005d48 <_Balloc>
 800628c:	2201      	movs	r2, #1
 800628e:	2300      	movs	r3, #0
 8006290:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006294:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006298 <__d2b>:
 8006298:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800629c:	460f      	mov	r7, r1
 800629e:	b083      	sub	sp, #12
 80062a0:	2101      	movs	r1, #1
 80062a2:	ec55 4b10 	vmov	r4, r5, d0
 80062a6:	4616      	mov	r6, r2
 80062a8:	f7ff fd4e 	bl	8005d48 <_Balloc>
 80062ac:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80062b0:	4681      	mov	r9, r0
 80062b2:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80062b6:	f1b8 0f00 	cmp.w	r8, #0
 80062ba:	d001      	beq.n	80062c0 <__d2b+0x28>
 80062bc:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80062c0:	2c00      	cmp	r4, #0
 80062c2:	9301      	str	r3, [sp, #4]
 80062c4:	d024      	beq.n	8006310 <__d2b+0x78>
 80062c6:	a802      	add	r0, sp, #8
 80062c8:	f840 4d08 	str.w	r4, [r0, #-8]!
 80062cc:	f7ff fdcc 	bl	8005e68 <__lo0bits>
 80062d0:	2800      	cmp	r0, #0
 80062d2:	d136      	bne.n	8006342 <__d2b+0xaa>
 80062d4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80062d8:	f8c9 2014 	str.w	r2, [r9, #20]
 80062dc:	2b00      	cmp	r3, #0
 80062de:	bf0c      	ite	eq
 80062e0:	2101      	moveq	r1, #1
 80062e2:	2102      	movne	r1, #2
 80062e4:	f8c9 3018 	str.w	r3, [r9, #24]
 80062e8:	f8c9 1010 	str.w	r1, [r9, #16]
 80062ec:	f1b8 0f00 	cmp.w	r8, #0
 80062f0:	d11b      	bne.n	800632a <__d2b+0x92>
 80062f2:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80062f6:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80062fa:	6038      	str	r0, [r7, #0]
 80062fc:	6918      	ldr	r0, [r3, #16]
 80062fe:	f7ff fd93 	bl	8005e28 <__hi0bits>
 8006302:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006306:	6030      	str	r0, [r6, #0]
 8006308:	4648      	mov	r0, r9
 800630a:	b003      	add	sp, #12
 800630c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006310:	a801      	add	r0, sp, #4
 8006312:	f7ff fda9 	bl	8005e68 <__lo0bits>
 8006316:	9b01      	ldr	r3, [sp, #4]
 8006318:	f8c9 3014 	str.w	r3, [r9, #20]
 800631c:	2101      	movs	r1, #1
 800631e:	3020      	adds	r0, #32
 8006320:	f8c9 1010 	str.w	r1, [r9, #16]
 8006324:	f1b8 0f00 	cmp.w	r8, #0
 8006328:	d0e3      	beq.n	80062f2 <__d2b+0x5a>
 800632a:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800632e:	eb08 0300 	add.w	r3, r8, r0
 8006332:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006336:	603b      	str	r3, [r7, #0]
 8006338:	6030      	str	r0, [r6, #0]
 800633a:	4648      	mov	r0, r9
 800633c:	b003      	add	sp, #12
 800633e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006342:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006346:	f1c0 0220 	rsb	r2, r0, #32
 800634a:	fa03 f202 	lsl.w	r2, r3, r2
 800634e:	430a      	orrs	r2, r1
 8006350:	40c3      	lsrs	r3, r0
 8006352:	9301      	str	r3, [sp, #4]
 8006354:	f8c9 2014 	str.w	r2, [r9, #20]
 8006358:	e7c0      	b.n	80062dc <__d2b+0x44>
 800635a:	bf00      	nop

0800635c <_sbrk_r>:
 800635c:	b538      	push	{r3, r4, r5, lr}
 800635e:	4c07      	ldr	r4, [pc, #28]	; (800637c <_sbrk_r+0x20>)
 8006360:	2300      	movs	r3, #0
 8006362:	4605      	mov	r5, r0
 8006364:	4608      	mov	r0, r1
 8006366:	6023      	str	r3, [r4, #0]
 8006368:	f7fa fbea 	bl	8000b40 <_sbrk>
 800636c:	1c43      	adds	r3, r0, #1
 800636e:	d000      	beq.n	8006372 <_sbrk_r+0x16>
 8006370:	bd38      	pop	{r3, r4, r5, pc}
 8006372:	6823      	ldr	r3, [r4, #0]
 8006374:	2b00      	cmp	r3, #0
 8006376:	d0fb      	beq.n	8006370 <_sbrk_r+0x14>
 8006378:	602b      	str	r3, [r5, #0]
 800637a:	bd38      	pop	{r3, r4, r5, pc}
 800637c:	20000b98 	.word	0x20000b98

08006380 <__sread>:
 8006380:	b510      	push	{r4, lr}
 8006382:	460c      	mov	r4, r1
 8006384:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006388:	f000 fcf6 	bl	8006d78 <_read_r>
 800638c:	2800      	cmp	r0, #0
 800638e:	db03      	blt.n	8006398 <__sread+0x18>
 8006390:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006392:	4403      	add	r3, r0
 8006394:	6523      	str	r3, [r4, #80]	; 0x50
 8006396:	bd10      	pop	{r4, pc}
 8006398:	89a3      	ldrh	r3, [r4, #12]
 800639a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800639e:	81a3      	strh	r3, [r4, #12]
 80063a0:	bd10      	pop	{r4, pc}
 80063a2:	bf00      	nop

080063a4 <__swrite>:
 80063a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063a8:	4616      	mov	r6, r2
 80063aa:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80063ae:	461f      	mov	r7, r3
 80063b0:	05d3      	lsls	r3, r2, #23
 80063b2:	460c      	mov	r4, r1
 80063b4:	4605      	mov	r5, r0
 80063b6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80063ba:	d507      	bpl.n	80063cc <__swrite+0x28>
 80063bc:	2200      	movs	r2, #0
 80063be:	2302      	movs	r3, #2
 80063c0:	f000 fc4a 	bl	8006c58 <_lseek_r>
 80063c4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80063c8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80063cc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80063d0:	81a2      	strh	r2, [r4, #12]
 80063d2:	463b      	mov	r3, r7
 80063d4:	4632      	mov	r2, r6
 80063d6:	4628      	mov	r0, r5
 80063d8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80063dc:	f000 b8e4 	b.w	80065a8 <_write_r>

080063e0 <__sseek>:
 80063e0:	b510      	push	{r4, lr}
 80063e2:	460c      	mov	r4, r1
 80063e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80063e8:	f000 fc36 	bl	8006c58 <_lseek_r>
 80063ec:	89a3      	ldrh	r3, [r4, #12]
 80063ee:	1c42      	adds	r2, r0, #1
 80063f0:	bf0e      	itee	eq
 80063f2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80063f6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80063fa:	6520      	strne	r0, [r4, #80]	; 0x50
 80063fc:	81a3      	strh	r3, [r4, #12]
 80063fe:	bd10      	pop	{r4, pc}

08006400 <__sclose>:
 8006400:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006404:	f000 b97a 	b.w	80066fc <_close_r>
	...

08006440 <strlen>:
 8006440:	f890 f000 	pld	[r0]
 8006444:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8006448:	f020 0107 	bic.w	r1, r0, #7
 800644c:	f06f 0c00 	mvn.w	ip, #0
 8006450:	f010 0407 	ands.w	r4, r0, #7
 8006454:	f891 f020 	pld	[r1, #32]
 8006458:	f040 8049 	bne.w	80064ee <strlen+0xae>
 800645c:	f04f 0400 	mov.w	r4, #0
 8006460:	f06f 0007 	mvn.w	r0, #7
 8006464:	e9d1 2300 	ldrd	r2, r3, [r1]
 8006468:	f891 f040 	pld	[r1, #64]	; 0x40
 800646c:	f100 0008 	add.w	r0, r0, #8
 8006470:	fa82 f24c 	uadd8	r2, r2, ip
 8006474:	faa4 f28c 	sel	r2, r4, ip
 8006478:	fa83 f34c 	uadd8	r3, r3, ip
 800647c:	faa2 f38c 	sel	r3, r2, ip
 8006480:	bb4b      	cbnz	r3, 80064d6 <strlen+0x96>
 8006482:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8006486:	fa82 f24c 	uadd8	r2, r2, ip
 800648a:	f100 0008 	add.w	r0, r0, #8
 800648e:	faa4 f28c 	sel	r2, r4, ip
 8006492:	fa83 f34c 	uadd8	r3, r3, ip
 8006496:	faa2 f38c 	sel	r3, r2, ip
 800649a:	b9e3      	cbnz	r3, 80064d6 <strlen+0x96>
 800649c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 80064a0:	fa82 f24c 	uadd8	r2, r2, ip
 80064a4:	f100 0008 	add.w	r0, r0, #8
 80064a8:	faa4 f28c 	sel	r2, r4, ip
 80064ac:	fa83 f34c 	uadd8	r3, r3, ip
 80064b0:	faa2 f38c 	sel	r3, r2, ip
 80064b4:	b97b      	cbnz	r3, 80064d6 <strlen+0x96>
 80064b6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 80064ba:	f101 0120 	add.w	r1, r1, #32
 80064be:	fa82 f24c 	uadd8	r2, r2, ip
 80064c2:	f100 0008 	add.w	r0, r0, #8
 80064c6:	faa4 f28c 	sel	r2, r4, ip
 80064ca:	fa83 f34c 	uadd8	r3, r3, ip
 80064ce:	faa2 f38c 	sel	r3, r2, ip
 80064d2:	2b00      	cmp	r3, #0
 80064d4:	d0c6      	beq.n	8006464 <strlen+0x24>
 80064d6:	2a00      	cmp	r2, #0
 80064d8:	bf04      	itt	eq
 80064da:	3004      	addeq	r0, #4
 80064dc:	461a      	moveq	r2, r3
 80064de:	ba12      	rev	r2, r2
 80064e0:	fab2 f282 	clz	r2, r2
 80064e4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80064e8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80064ec:	4770      	bx	lr
 80064ee:	e9d1 2300 	ldrd	r2, r3, [r1]
 80064f2:	f004 0503 	and.w	r5, r4, #3
 80064f6:	f1c4 0000 	rsb	r0, r4, #0
 80064fa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80064fe:	f014 0f04 	tst.w	r4, #4
 8006502:	f891 f040 	pld	[r1, #64]	; 0x40
 8006506:	fa0c f505 	lsl.w	r5, ip, r5
 800650a:	ea62 0205 	orn	r2, r2, r5
 800650e:	bf1c      	itt	ne
 8006510:	ea63 0305 	ornne	r3, r3, r5
 8006514:	4662      	movne	r2, ip
 8006516:	f04f 0400 	mov.w	r4, #0
 800651a:	e7a9      	b.n	8006470 <strlen+0x30>

0800651c <__sprint_r.part.0>:
 800651c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006520:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006522:	049c      	lsls	r4, r3, #18
 8006524:	4692      	mov	sl, r2
 8006526:	d52d      	bpl.n	8006584 <__sprint_r.part.0+0x68>
 8006528:	6893      	ldr	r3, [r2, #8]
 800652a:	6812      	ldr	r2, [r2, #0]
 800652c:	b343      	cbz	r3, 8006580 <__sprint_r.part.0+0x64>
 800652e:	460e      	mov	r6, r1
 8006530:	4607      	mov	r7, r0
 8006532:	f102 0908 	add.w	r9, r2, #8
 8006536:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800653a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800653e:	d015      	beq.n	800656c <__sprint_r.part.0+0x50>
 8006540:	3d04      	subs	r5, #4
 8006542:	2400      	movs	r4, #0
 8006544:	e001      	b.n	800654a <__sprint_r.part.0+0x2e>
 8006546:	45a0      	cmp	r8, r4
 8006548:	d00e      	beq.n	8006568 <__sprint_r.part.0+0x4c>
 800654a:	4632      	mov	r2, r6
 800654c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006550:	4638      	mov	r0, r7
 8006552:	f000 f99d 	bl	8006890 <_fputwc_r>
 8006556:	1c43      	adds	r3, r0, #1
 8006558:	f104 0401 	add.w	r4, r4, #1
 800655c:	d1f3      	bne.n	8006546 <__sprint_r.part.0+0x2a>
 800655e:	2300      	movs	r3, #0
 8006560:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006564:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006568:	f8da 3008 	ldr.w	r3, [sl, #8]
 800656c:	f02b 0b03 	bic.w	fp, fp, #3
 8006570:	eba3 030b 	sub.w	r3, r3, fp
 8006574:	f8ca 3008 	str.w	r3, [sl, #8]
 8006578:	f109 0908 	add.w	r9, r9, #8
 800657c:	2b00      	cmp	r3, #0
 800657e:	d1da      	bne.n	8006536 <__sprint_r.part.0+0x1a>
 8006580:	2000      	movs	r0, #0
 8006582:	e7ec      	b.n	800655e <__sprint_r.part.0+0x42>
 8006584:	f000 f9ca 	bl	800691c <__sfvwrite_r>
 8006588:	2300      	movs	r3, #0
 800658a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800658e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006592:	bf00      	nop

08006594 <__sprint_r>:
 8006594:	6893      	ldr	r3, [r2, #8]
 8006596:	b10b      	cbz	r3, 800659c <__sprint_r+0x8>
 8006598:	f7ff bfc0 	b.w	800651c <__sprint_r.part.0>
 800659c:	b410      	push	{r4}
 800659e:	4618      	mov	r0, r3
 80065a0:	6053      	str	r3, [r2, #4]
 80065a2:	f85d 4b04 	ldr.w	r4, [sp], #4
 80065a6:	4770      	bx	lr

080065a8 <_write_r>:
 80065a8:	b570      	push	{r4, r5, r6, lr}
 80065aa:	460d      	mov	r5, r1
 80065ac:	4c08      	ldr	r4, [pc, #32]	; (80065d0 <_write_r+0x28>)
 80065ae:	4611      	mov	r1, r2
 80065b0:	4606      	mov	r6, r0
 80065b2:	461a      	mov	r2, r3
 80065b4:	4628      	mov	r0, r5
 80065b6:	2300      	movs	r3, #0
 80065b8:	6023      	str	r3, [r4, #0]
 80065ba:	f7fa faa5 	bl	8000b08 <_write>
 80065be:	1c43      	adds	r3, r0, #1
 80065c0:	d000      	beq.n	80065c4 <_write_r+0x1c>
 80065c2:	bd70      	pop	{r4, r5, r6, pc}
 80065c4:	6823      	ldr	r3, [r4, #0]
 80065c6:	2b00      	cmp	r3, #0
 80065c8:	d0fb      	beq.n	80065c2 <_write_r+0x1a>
 80065ca:	6033      	str	r3, [r6, #0]
 80065cc:	bd70      	pop	{r4, r5, r6, pc}
 80065ce:	bf00      	nop
 80065d0:	20000b98 	.word	0x20000b98

080065d4 <__register_exitproc>:
 80065d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80065d8:	4d2b      	ldr	r5, [pc, #172]	; (8006688 <__register_exitproc+0xb4>)
 80065da:	4606      	mov	r6, r0
 80065dc:	6828      	ldr	r0, [r5, #0]
 80065de:	4698      	mov	r8, r3
 80065e0:	460f      	mov	r7, r1
 80065e2:	4691      	mov	r9, r2
 80065e4:	f7ff f834 	bl	8005650 <__retarget_lock_acquire_recursive>
 80065e8:	4b28      	ldr	r3, [pc, #160]	; (800668c <__register_exitproc+0xb8>)
 80065ea:	681c      	ldr	r4, [r3, #0]
 80065ec:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80065f0:	2b00      	cmp	r3, #0
 80065f2:	d03d      	beq.n	8006670 <__register_exitproc+0x9c>
 80065f4:	685a      	ldr	r2, [r3, #4]
 80065f6:	2a1f      	cmp	r2, #31
 80065f8:	dc0d      	bgt.n	8006616 <__register_exitproc+0x42>
 80065fa:	f102 0c01 	add.w	ip, r2, #1
 80065fe:	bb16      	cbnz	r6, 8006646 <__register_exitproc+0x72>
 8006600:	3202      	adds	r2, #2
 8006602:	f8c3 c004 	str.w	ip, [r3, #4]
 8006606:	6828      	ldr	r0, [r5, #0]
 8006608:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800660c:	f7ff f822 	bl	8005654 <__retarget_lock_release_recursive>
 8006610:	2000      	movs	r0, #0
 8006612:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006616:	4b1e      	ldr	r3, [pc, #120]	; (8006690 <__register_exitproc+0xbc>)
 8006618:	b37b      	cbz	r3, 800667a <__register_exitproc+0xa6>
 800661a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800661e:	f3af 8000 	nop.w
 8006622:	4603      	mov	r3, r0
 8006624:	b348      	cbz	r0, 800667a <__register_exitproc+0xa6>
 8006626:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800662a:	2100      	movs	r1, #0
 800662c:	e9c0 2100 	strd	r2, r1, [r0]
 8006630:	f04f 0c01 	mov.w	ip, #1
 8006634:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006638:	460a      	mov	r2, r1
 800663a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800663e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006642:	2e00      	cmp	r6, #0
 8006644:	d0dc      	beq.n	8006600 <__register_exitproc+0x2c>
 8006646:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800664a:	2401      	movs	r4, #1
 800664c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006650:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006654:	4094      	lsls	r4, r2
 8006656:	4320      	orrs	r0, r4
 8006658:	2e02      	cmp	r6, #2
 800665a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800665e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006662:	d1cd      	bne.n	8006600 <__register_exitproc+0x2c>
 8006664:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006668:	430c      	orrs	r4, r1
 800666a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800666e:	e7c7      	b.n	8006600 <__register_exitproc+0x2c>
 8006670:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006674:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006678:	e7bc      	b.n	80065f4 <__register_exitproc+0x20>
 800667a:	6828      	ldr	r0, [r5, #0]
 800667c:	f7fe ffea 	bl	8005654 <__retarget_lock_release_recursive>
 8006680:	f04f 30ff 	mov.w	r0, #4294967295
 8006684:	e7c5      	b.n	8006612 <__register_exitproc+0x3e>
 8006686:	bf00      	nop
 8006688:	20000440 	.word	0x20000440
 800668c:	08007c24 	.word	0x08007c24
 8006690:	00000000 	.word	0x00000000

08006694 <_calloc_r>:
 8006694:	b510      	push	{r4, lr}
 8006696:	fb02 f101 	mul.w	r1, r2, r1
 800669a:	f7ff f855 	bl	8005748 <_malloc_r>
 800669e:	4604      	mov	r4, r0
 80066a0:	b1d8      	cbz	r0, 80066da <_calloc_r+0x46>
 80066a2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80066a6:	f022 0203 	bic.w	r2, r2, #3
 80066aa:	3a04      	subs	r2, #4
 80066ac:	2a24      	cmp	r2, #36	; 0x24
 80066ae:	d81d      	bhi.n	80066ec <_calloc_r+0x58>
 80066b0:	2a13      	cmp	r2, #19
 80066b2:	d914      	bls.n	80066de <_calloc_r+0x4a>
 80066b4:	2300      	movs	r3, #0
 80066b6:	2a1b      	cmp	r2, #27
 80066b8:	e9c0 3300 	strd	r3, r3, [r0]
 80066bc:	d91b      	bls.n	80066f6 <_calloc_r+0x62>
 80066be:	2a24      	cmp	r2, #36	; 0x24
 80066c0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80066c4:	bf0a      	itet	eq
 80066c6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 80066ca:	f100 0210 	addne.w	r2, r0, #16
 80066ce:	f100 0218 	addeq.w	r2, r0, #24
 80066d2:	2300      	movs	r3, #0
 80066d4:	e9c2 3300 	strd	r3, r3, [r2]
 80066d8:	6093      	str	r3, [r2, #8]
 80066da:	4620      	mov	r0, r4
 80066dc:	bd10      	pop	{r4, pc}
 80066de:	4602      	mov	r2, r0
 80066e0:	2300      	movs	r3, #0
 80066e2:	e9c2 3300 	strd	r3, r3, [r2]
 80066e6:	6093      	str	r3, [r2, #8]
 80066e8:	4620      	mov	r0, r4
 80066ea:	bd10      	pop	{r4, pc}
 80066ec:	2100      	movs	r1, #0
 80066ee:	f7fc f993 	bl	8002a18 <memset>
 80066f2:	4620      	mov	r0, r4
 80066f4:	bd10      	pop	{r4, pc}
 80066f6:	f100 0208 	add.w	r2, r0, #8
 80066fa:	e7f1      	b.n	80066e0 <_calloc_r+0x4c>

080066fc <_close_r>:
 80066fc:	b538      	push	{r3, r4, r5, lr}
 80066fe:	4c07      	ldr	r4, [pc, #28]	; (800671c <_close_r+0x20>)
 8006700:	2300      	movs	r3, #0
 8006702:	4605      	mov	r5, r0
 8006704:	4608      	mov	r0, r1
 8006706:	6023      	str	r3, [r4, #0]
 8006708:	f7fa fa46 	bl	8000b98 <_close>
 800670c:	1c43      	adds	r3, r0, #1
 800670e:	d000      	beq.n	8006712 <_close_r+0x16>
 8006710:	bd38      	pop	{r3, r4, r5, pc}
 8006712:	6823      	ldr	r3, [r4, #0]
 8006714:	2b00      	cmp	r3, #0
 8006716:	d0fb      	beq.n	8006710 <_close_r+0x14>
 8006718:	602b      	str	r3, [r5, #0]
 800671a:	bd38      	pop	{r3, r4, r5, pc}
 800671c:	20000b98 	.word	0x20000b98

08006720 <_fclose_r>:
 8006720:	b570      	push	{r4, r5, r6, lr}
 8006722:	2900      	cmp	r1, #0
 8006724:	d048      	beq.n	80067b8 <_fclose_r+0x98>
 8006726:	4605      	mov	r5, r0
 8006728:	460c      	mov	r4, r1
 800672a:	b110      	cbz	r0, 8006732 <_fclose_r+0x12>
 800672c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800672e:	2b00      	cmp	r3, #0
 8006730:	d048      	beq.n	80067c4 <_fclose_r+0xa4>
 8006732:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006734:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006738:	07d0      	lsls	r0, r2, #31
 800673a:	d440      	bmi.n	80067be <_fclose_r+0x9e>
 800673c:	0599      	lsls	r1, r3, #22
 800673e:	d530      	bpl.n	80067a2 <_fclose_r+0x82>
 8006740:	4621      	mov	r1, r4
 8006742:	4628      	mov	r0, r5
 8006744:	f7fe fcac 	bl	80050a0 <__sflush_r>
 8006748:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800674a:	4606      	mov	r6, r0
 800674c:	b133      	cbz	r3, 800675c <_fclose_r+0x3c>
 800674e:	69e1      	ldr	r1, [r4, #28]
 8006750:	4628      	mov	r0, r5
 8006752:	4798      	blx	r3
 8006754:	2800      	cmp	r0, #0
 8006756:	bfb8      	it	lt
 8006758:	f04f 36ff 	movlt.w	r6, #4294967295
 800675c:	89a3      	ldrh	r3, [r4, #12]
 800675e:	061a      	lsls	r2, r3, #24
 8006760:	d43c      	bmi.n	80067dc <_fclose_r+0xbc>
 8006762:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006764:	b141      	cbz	r1, 8006778 <_fclose_r+0x58>
 8006766:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800676a:	4299      	cmp	r1, r3
 800676c:	d002      	beq.n	8006774 <_fclose_r+0x54>
 800676e:	4628      	mov	r0, r5
 8006770:	f7fe fe3e 	bl	80053f0 <_free_r>
 8006774:	2300      	movs	r3, #0
 8006776:	6323      	str	r3, [r4, #48]	; 0x30
 8006778:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800677a:	b121      	cbz	r1, 8006786 <_fclose_r+0x66>
 800677c:	4628      	mov	r0, r5
 800677e:	f7fe fe37 	bl	80053f0 <_free_r>
 8006782:	2300      	movs	r3, #0
 8006784:	6463      	str	r3, [r4, #68]	; 0x44
 8006786:	f7fe fdbd 	bl	8005304 <__sfp_lock_acquire>
 800678a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800678c:	2200      	movs	r2, #0
 800678e:	07db      	lsls	r3, r3, #31
 8006790:	81a2      	strh	r2, [r4, #12]
 8006792:	d51f      	bpl.n	80067d4 <_fclose_r+0xb4>
 8006794:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006796:	f7fe ff59 	bl	800564c <__retarget_lock_close_recursive>
 800679a:	f7fe fdb9 	bl	8005310 <__sfp_lock_release>
 800679e:	4630      	mov	r0, r6
 80067a0:	bd70      	pop	{r4, r5, r6, pc}
 80067a2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80067a4:	f7fe ff54 	bl	8005650 <__retarget_lock_acquire_recursive>
 80067a8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80067ac:	2b00      	cmp	r3, #0
 80067ae:	d1c7      	bne.n	8006740 <_fclose_r+0x20>
 80067b0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80067b2:	f016 0601 	ands.w	r6, r6, #1
 80067b6:	d016      	beq.n	80067e6 <_fclose_r+0xc6>
 80067b8:	2600      	movs	r6, #0
 80067ba:	4630      	mov	r0, r6
 80067bc:	bd70      	pop	{r4, r5, r6, pc}
 80067be:	2b00      	cmp	r3, #0
 80067c0:	d0fa      	beq.n	80067b8 <_fclose_r+0x98>
 80067c2:	e7bd      	b.n	8006740 <_fclose_r+0x20>
 80067c4:	f7fe fd72 	bl	80052ac <__sinit>
 80067c8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80067ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80067ce:	07d0      	lsls	r0, r2, #31
 80067d0:	d4f5      	bmi.n	80067be <_fclose_r+0x9e>
 80067d2:	e7b3      	b.n	800673c <_fclose_r+0x1c>
 80067d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80067d6:	f7fe ff3d 	bl	8005654 <__retarget_lock_release_recursive>
 80067da:	e7db      	b.n	8006794 <_fclose_r+0x74>
 80067dc:	6921      	ldr	r1, [r4, #16]
 80067de:	4628      	mov	r0, r5
 80067e0:	f7fe fe06 	bl	80053f0 <_free_r>
 80067e4:	e7bd      	b.n	8006762 <_fclose_r+0x42>
 80067e6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80067e8:	f7fe ff34 	bl	8005654 <__retarget_lock_release_recursive>
 80067ec:	4630      	mov	r0, r6
 80067ee:	bd70      	pop	{r4, r5, r6, pc}

080067f0 <__fputwc>:
 80067f0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80067f4:	b082      	sub	sp, #8
 80067f6:	4681      	mov	r9, r0
 80067f8:	4688      	mov	r8, r1
 80067fa:	4614      	mov	r4, r2
 80067fc:	f000 fa1e 	bl	8006c3c <__locale_mb_cur_max>
 8006800:	2801      	cmp	r0, #1
 8006802:	d103      	bne.n	800680c <__fputwc+0x1c>
 8006804:	f108 33ff 	add.w	r3, r8, #4294967295
 8006808:	2bfe      	cmp	r3, #254	; 0xfe
 800680a:	d933      	bls.n	8006874 <__fputwc+0x84>
 800680c:	4642      	mov	r2, r8
 800680e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006812:	a901      	add	r1, sp, #4
 8006814:	4648      	mov	r0, r9
 8006816:	f000 fccb 	bl	80071b0 <_wcrtomb_r>
 800681a:	1c42      	adds	r2, r0, #1
 800681c:	4606      	mov	r6, r0
 800681e:	d02f      	beq.n	8006880 <__fputwc+0x90>
 8006820:	b320      	cbz	r0, 800686c <__fputwc+0x7c>
 8006822:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006826:	2500      	movs	r5, #0
 8006828:	f10d 0a04 	add.w	sl, sp, #4
 800682c:	e009      	b.n	8006842 <__fputwc+0x52>
 800682e:	6823      	ldr	r3, [r4, #0]
 8006830:	1c5a      	adds	r2, r3, #1
 8006832:	6022      	str	r2, [r4, #0]
 8006834:	f883 c000 	strb.w	ip, [r3]
 8006838:	3501      	adds	r5, #1
 800683a:	42b5      	cmp	r5, r6
 800683c:	d216      	bcs.n	800686c <__fputwc+0x7c>
 800683e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006842:	68a3      	ldr	r3, [r4, #8]
 8006844:	3b01      	subs	r3, #1
 8006846:	2b00      	cmp	r3, #0
 8006848:	60a3      	str	r3, [r4, #8]
 800684a:	daf0      	bge.n	800682e <__fputwc+0x3e>
 800684c:	69a7      	ldr	r7, [r4, #24]
 800684e:	42bb      	cmp	r3, r7
 8006850:	4661      	mov	r1, ip
 8006852:	4622      	mov	r2, r4
 8006854:	4648      	mov	r0, r9
 8006856:	db02      	blt.n	800685e <__fputwc+0x6e>
 8006858:	f1bc 0f0a 	cmp.w	ip, #10
 800685c:	d1e7      	bne.n	800682e <__fputwc+0x3e>
 800685e:	f000 fc4f 	bl	8007100 <__swbuf_r>
 8006862:	1c43      	adds	r3, r0, #1
 8006864:	d1e8      	bne.n	8006838 <__fputwc+0x48>
 8006866:	b002      	add	sp, #8
 8006868:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800686c:	4640      	mov	r0, r8
 800686e:	b002      	add	sp, #8
 8006870:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006874:	fa5f fc88 	uxtb.w	ip, r8
 8006878:	4606      	mov	r6, r0
 800687a:	f88d c004 	strb.w	ip, [sp, #4]
 800687e:	e7d2      	b.n	8006826 <__fputwc+0x36>
 8006880:	89a3      	ldrh	r3, [r4, #12]
 8006882:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006886:	81a3      	strh	r3, [r4, #12]
 8006888:	b002      	add	sp, #8
 800688a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800688e:	bf00      	nop

08006890 <_fputwc_r>:
 8006890:	b530      	push	{r4, r5, lr}
 8006892:	4605      	mov	r5, r0
 8006894:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006896:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800689a:	07c0      	lsls	r0, r0, #31
 800689c:	4614      	mov	r4, r2
 800689e:	b083      	sub	sp, #12
 80068a0:	b29a      	uxth	r2, r3
 80068a2:	d401      	bmi.n	80068a8 <_fputwc_r+0x18>
 80068a4:	0590      	lsls	r0, r2, #22
 80068a6:	d51c      	bpl.n	80068e2 <_fputwc_r+0x52>
 80068a8:	0490      	lsls	r0, r2, #18
 80068aa:	d406      	bmi.n	80068ba <_fputwc_r+0x2a>
 80068ac:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80068ae:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80068b2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80068b6:	81a3      	strh	r3, [r4, #12]
 80068b8:	6662      	str	r2, [r4, #100]	; 0x64
 80068ba:	4628      	mov	r0, r5
 80068bc:	4622      	mov	r2, r4
 80068be:	f7ff ff97 	bl	80067f0 <__fputwc>
 80068c2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80068c4:	07da      	lsls	r2, r3, #31
 80068c6:	4605      	mov	r5, r0
 80068c8:	d402      	bmi.n	80068d0 <_fputwc_r+0x40>
 80068ca:	89a3      	ldrh	r3, [r4, #12]
 80068cc:	059b      	lsls	r3, r3, #22
 80068ce:	d502      	bpl.n	80068d6 <_fputwc_r+0x46>
 80068d0:	4628      	mov	r0, r5
 80068d2:	b003      	add	sp, #12
 80068d4:	bd30      	pop	{r4, r5, pc}
 80068d6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80068d8:	f7fe febc 	bl	8005654 <__retarget_lock_release_recursive>
 80068dc:	4628      	mov	r0, r5
 80068de:	b003      	add	sp, #12
 80068e0:	bd30      	pop	{r4, r5, pc}
 80068e2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80068e4:	9101      	str	r1, [sp, #4]
 80068e6:	f7fe feb3 	bl	8005650 <__retarget_lock_acquire_recursive>
 80068ea:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80068ee:	9901      	ldr	r1, [sp, #4]
 80068f0:	b29a      	uxth	r2, r3
 80068f2:	e7d9      	b.n	80068a8 <_fputwc_r+0x18>

080068f4 <_fstat_r>:
 80068f4:	b538      	push	{r3, r4, r5, lr}
 80068f6:	460b      	mov	r3, r1
 80068f8:	4c07      	ldr	r4, [pc, #28]	; (8006918 <_fstat_r+0x24>)
 80068fa:	4605      	mov	r5, r0
 80068fc:	4611      	mov	r1, r2
 80068fe:	4618      	mov	r0, r3
 8006900:	2300      	movs	r3, #0
 8006902:	6023      	str	r3, [r4, #0]
 8006904:	f7fa f954 	bl	8000bb0 <_fstat>
 8006908:	1c43      	adds	r3, r0, #1
 800690a:	d000      	beq.n	800690e <_fstat_r+0x1a>
 800690c:	bd38      	pop	{r3, r4, r5, pc}
 800690e:	6823      	ldr	r3, [r4, #0]
 8006910:	2b00      	cmp	r3, #0
 8006912:	d0fb      	beq.n	800690c <_fstat_r+0x18>
 8006914:	602b      	str	r3, [r5, #0]
 8006916:	bd38      	pop	{r3, r4, r5, pc}
 8006918:	20000b98 	.word	0x20000b98

0800691c <__sfvwrite_r>:
 800691c:	6893      	ldr	r3, [r2, #8]
 800691e:	2b00      	cmp	r3, #0
 8006920:	f000 80e4 	beq.w	8006aec <__sfvwrite_r+0x1d0>
 8006924:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006928:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800692c:	b29b      	uxth	r3, r3
 800692e:	460c      	mov	r4, r1
 8006930:	0719      	lsls	r1, r3, #28
 8006932:	b083      	sub	sp, #12
 8006934:	4682      	mov	sl, r0
 8006936:	4690      	mov	r8, r2
 8006938:	d535      	bpl.n	80069a6 <__sfvwrite_r+0x8a>
 800693a:	6922      	ldr	r2, [r4, #16]
 800693c:	b39a      	cbz	r2, 80069a6 <__sfvwrite_r+0x8a>
 800693e:	f013 0202 	ands.w	r2, r3, #2
 8006942:	f8d8 6000 	ldr.w	r6, [r8]
 8006946:	d03d      	beq.n	80069c4 <__sfvwrite_r+0xa8>
 8006948:	2700      	movs	r7, #0
 800694a:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800694e:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006952:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006c14 <__sfvwrite_r+0x2f8>
 8006956:	463d      	mov	r5, r7
 8006958:	454d      	cmp	r5, r9
 800695a:	462b      	mov	r3, r5
 800695c:	463a      	mov	r2, r7
 800695e:	bf28      	it	cs
 8006960:	464b      	movcs	r3, r9
 8006962:	4661      	mov	r1, ip
 8006964:	4650      	mov	r0, sl
 8006966:	b1d5      	cbz	r5, 800699e <__sfvwrite_r+0x82>
 8006968:	47d8      	blx	fp
 800696a:	2800      	cmp	r0, #0
 800696c:	f340 80c6 	ble.w	8006afc <__sfvwrite_r+0x1e0>
 8006970:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006974:	1a1b      	subs	r3, r3, r0
 8006976:	4407      	add	r7, r0
 8006978:	1a2d      	subs	r5, r5, r0
 800697a:	f8c8 3008 	str.w	r3, [r8, #8]
 800697e:	2b00      	cmp	r3, #0
 8006980:	f000 80b0 	beq.w	8006ae4 <__sfvwrite_r+0x1c8>
 8006984:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006988:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800698c:	454d      	cmp	r5, r9
 800698e:	462b      	mov	r3, r5
 8006990:	463a      	mov	r2, r7
 8006992:	bf28      	it	cs
 8006994:	464b      	movcs	r3, r9
 8006996:	4661      	mov	r1, ip
 8006998:	4650      	mov	r0, sl
 800699a:	2d00      	cmp	r5, #0
 800699c:	d1e4      	bne.n	8006968 <__sfvwrite_r+0x4c>
 800699e:	e9d6 7500 	ldrd	r7, r5, [r6]
 80069a2:	3608      	adds	r6, #8
 80069a4:	e7d8      	b.n	8006958 <__sfvwrite_r+0x3c>
 80069a6:	4621      	mov	r1, r4
 80069a8:	4650      	mov	r0, sl
 80069aa:	f7fd fb5d 	bl	8004068 <__swsetup_r>
 80069ae:	2800      	cmp	r0, #0
 80069b0:	f040 812a 	bne.w	8006c08 <__sfvwrite_r+0x2ec>
 80069b4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80069b8:	f8d8 6000 	ldr.w	r6, [r8]
 80069bc:	b29b      	uxth	r3, r3
 80069be:	f013 0202 	ands.w	r2, r3, #2
 80069c2:	d1c1      	bne.n	8006948 <__sfvwrite_r+0x2c>
 80069c4:	f013 0901 	ands.w	r9, r3, #1
 80069c8:	d15d      	bne.n	8006a86 <__sfvwrite_r+0x16a>
 80069ca:	68a7      	ldr	r7, [r4, #8]
 80069cc:	6820      	ldr	r0, [r4, #0]
 80069ce:	464d      	mov	r5, r9
 80069d0:	2d00      	cmp	r5, #0
 80069d2:	d054      	beq.n	8006a7e <__sfvwrite_r+0x162>
 80069d4:	059a      	lsls	r2, r3, #22
 80069d6:	f140 809b 	bpl.w	8006b10 <__sfvwrite_r+0x1f4>
 80069da:	42af      	cmp	r7, r5
 80069dc:	46bb      	mov	fp, r7
 80069de:	f200 80d8 	bhi.w	8006b92 <__sfvwrite_r+0x276>
 80069e2:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80069e6:	d02f      	beq.n	8006a48 <__sfvwrite_r+0x12c>
 80069e8:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80069ec:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80069f0:	eba0 0b01 	sub.w	fp, r0, r1
 80069f4:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80069f8:	1c68      	adds	r0, r5, #1
 80069fa:	107f      	asrs	r7, r7, #1
 80069fc:	4458      	add	r0, fp
 80069fe:	42b8      	cmp	r0, r7
 8006a00:	463a      	mov	r2, r7
 8006a02:	bf84      	itt	hi
 8006a04:	4607      	movhi	r7, r0
 8006a06:	463a      	movhi	r2, r7
 8006a08:	055b      	lsls	r3, r3, #21
 8006a0a:	f140 80d3 	bpl.w	8006bb4 <__sfvwrite_r+0x298>
 8006a0e:	4611      	mov	r1, r2
 8006a10:	4650      	mov	r0, sl
 8006a12:	f7fe fe99 	bl	8005748 <_malloc_r>
 8006a16:	2800      	cmp	r0, #0
 8006a18:	f000 80f0 	beq.w	8006bfc <__sfvwrite_r+0x2e0>
 8006a1c:	465a      	mov	r2, fp
 8006a1e:	6921      	ldr	r1, [r4, #16]
 8006a20:	9001      	str	r0, [sp, #4]
 8006a22:	f7fb ff5f 	bl	80028e4 <memcpy>
 8006a26:	89a2      	ldrh	r2, [r4, #12]
 8006a28:	9b01      	ldr	r3, [sp, #4]
 8006a2a:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8006a2e:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8006a32:	81a2      	strh	r2, [r4, #12]
 8006a34:	eba7 020b 	sub.w	r2, r7, fp
 8006a38:	eb03 000b 	add.w	r0, r3, fp
 8006a3c:	6167      	str	r7, [r4, #20]
 8006a3e:	6123      	str	r3, [r4, #16]
 8006a40:	6020      	str	r0, [r4, #0]
 8006a42:	60a2      	str	r2, [r4, #8]
 8006a44:	462f      	mov	r7, r5
 8006a46:	46ab      	mov	fp, r5
 8006a48:	465a      	mov	r2, fp
 8006a4a:	4649      	mov	r1, r9
 8006a4c:	f000 f930 	bl	8006cb0 <memmove>
 8006a50:	68a2      	ldr	r2, [r4, #8]
 8006a52:	6823      	ldr	r3, [r4, #0]
 8006a54:	1bd2      	subs	r2, r2, r7
 8006a56:	445b      	add	r3, fp
 8006a58:	462f      	mov	r7, r5
 8006a5a:	60a2      	str	r2, [r4, #8]
 8006a5c:	6023      	str	r3, [r4, #0]
 8006a5e:	2500      	movs	r5, #0
 8006a60:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006a64:	1bdb      	subs	r3, r3, r7
 8006a66:	44b9      	add	r9, r7
 8006a68:	f8c8 3008 	str.w	r3, [r8, #8]
 8006a6c:	2b00      	cmp	r3, #0
 8006a6e:	d039      	beq.n	8006ae4 <__sfvwrite_r+0x1c8>
 8006a70:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006a74:	68a7      	ldr	r7, [r4, #8]
 8006a76:	6820      	ldr	r0, [r4, #0]
 8006a78:	b29b      	uxth	r3, r3
 8006a7a:	2d00      	cmp	r5, #0
 8006a7c:	d1aa      	bne.n	80069d4 <__sfvwrite_r+0xb8>
 8006a7e:	e9d6 9500 	ldrd	r9, r5, [r6]
 8006a82:	3608      	adds	r6, #8
 8006a84:	e7a4      	b.n	80069d0 <__sfvwrite_r+0xb4>
 8006a86:	4633      	mov	r3, r6
 8006a88:	4691      	mov	r9, r2
 8006a8a:	4610      	mov	r0, r2
 8006a8c:	4617      	mov	r7, r2
 8006a8e:	464e      	mov	r6, r9
 8006a90:	469b      	mov	fp, r3
 8006a92:	2f00      	cmp	r7, #0
 8006a94:	d06b      	beq.n	8006b6e <__sfvwrite_r+0x252>
 8006a96:	2800      	cmp	r0, #0
 8006a98:	d071      	beq.n	8006b7e <__sfvwrite_r+0x262>
 8006a9a:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006a9e:	6820      	ldr	r0, [r4, #0]
 8006aa0:	45b9      	cmp	r9, r7
 8006aa2:	464b      	mov	r3, r9
 8006aa4:	bf28      	it	cs
 8006aa6:	463b      	movcs	r3, r7
 8006aa8:	4288      	cmp	r0, r1
 8006aaa:	d903      	bls.n	8006ab4 <__sfvwrite_r+0x198>
 8006aac:	68a5      	ldr	r5, [r4, #8]
 8006aae:	4415      	add	r5, r2
 8006ab0:	42ab      	cmp	r3, r5
 8006ab2:	dc71      	bgt.n	8006b98 <__sfvwrite_r+0x27c>
 8006ab4:	429a      	cmp	r2, r3
 8006ab6:	f300 8093 	bgt.w	8006be0 <__sfvwrite_r+0x2c4>
 8006aba:	4613      	mov	r3, r2
 8006abc:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006abe:	69e1      	ldr	r1, [r4, #28]
 8006ac0:	4632      	mov	r2, r6
 8006ac2:	4650      	mov	r0, sl
 8006ac4:	47a8      	blx	r5
 8006ac6:	1e05      	subs	r5, r0, #0
 8006ac8:	dd18      	ble.n	8006afc <__sfvwrite_r+0x1e0>
 8006aca:	ebb9 0905 	subs.w	r9, r9, r5
 8006ace:	d00f      	beq.n	8006af0 <__sfvwrite_r+0x1d4>
 8006ad0:	2001      	movs	r0, #1
 8006ad2:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006ad6:	1b5b      	subs	r3, r3, r5
 8006ad8:	442e      	add	r6, r5
 8006ada:	1b7f      	subs	r7, r7, r5
 8006adc:	f8c8 3008 	str.w	r3, [r8, #8]
 8006ae0:	2b00      	cmp	r3, #0
 8006ae2:	d1d6      	bne.n	8006a92 <__sfvwrite_r+0x176>
 8006ae4:	2000      	movs	r0, #0
 8006ae6:	b003      	add	sp, #12
 8006ae8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006aec:	2000      	movs	r0, #0
 8006aee:	4770      	bx	lr
 8006af0:	4621      	mov	r1, r4
 8006af2:	4650      	mov	r0, sl
 8006af4:	f7fe fb7e 	bl	80051f4 <_fflush_r>
 8006af8:	2800      	cmp	r0, #0
 8006afa:	d0ea      	beq.n	8006ad2 <__sfvwrite_r+0x1b6>
 8006afc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b00:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006b04:	f04f 30ff 	mov.w	r0, #4294967295
 8006b08:	81a3      	strh	r3, [r4, #12]
 8006b0a:	b003      	add	sp, #12
 8006b0c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b10:	6923      	ldr	r3, [r4, #16]
 8006b12:	4283      	cmp	r3, r0
 8006b14:	d315      	bcc.n	8006b42 <__sfvwrite_r+0x226>
 8006b16:	6961      	ldr	r1, [r4, #20]
 8006b18:	42a9      	cmp	r1, r5
 8006b1a:	d812      	bhi.n	8006b42 <__sfvwrite_r+0x226>
 8006b1c:	4b3c      	ldr	r3, [pc, #240]	; (8006c10 <__sfvwrite_r+0x2f4>)
 8006b1e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006b20:	429d      	cmp	r5, r3
 8006b22:	bf94      	ite	ls
 8006b24:	462b      	movls	r3, r5
 8006b26:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8006b2a:	464a      	mov	r2, r9
 8006b2c:	fb93 f3f1 	sdiv	r3, r3, r1
 8006b30:	4650      	mov	r0, sl
 8006b32:	fb01 f303 	mul.w	r3, r1, r3
 8006b36:	69e1      	ldr	r1, [r4, #28]
 8006b38:	47b8      	blx	r7
 8006b3a:	1e07      	subs	r7, r0, #0
 8006b3c:	ddde      	ble.n	8006afc <__sfvwrite_r+0x1e0>
 8006b3e:	1bed      	subs	r5, r5, r7
 8006b40:	e78e      	b.n	8006a60 <__sfvwrite_r+0x144>
 8006b42:	42af      	cmp	r7, r5
 8006b44:	bf28      	it	cs
 8006b46:	462f      	movcs	r7, r5
 8006b48:	463a      	mov	r2, r7
 8006b4a:	4649      	mov	r1, r9
 8006b4c:	f000 f8b0 	bl	8006cb0 <memmove>
 8006b50:	68a3      	ldr	r3, [r4, #8]
 8006b52:	6822      	ldr	r2, [r4, #0]
 8006b54:	1bdb      	subs	r3, r3, r7
 8006b56:	443a      	add	r2, r7
 8006b58:	60a3      	str	r3, [r4, #8]
 8006b5a:	6022      	str	r2, [r4, #0]
 8006b5c:	2b00      	cmp	r3, #0
 8006b5e:	d1ee      	bne.n	8006b3e <__sfvwrite_r+0x222>
 8006b60:	4621      	mov	r1, r4
 8006b62:	4650      	mov	r0, sl
 8006b64:	f7fe fb46 	bl	80051f4 <_fflush_r>
 8006b68:	2800      	cmp	r0, #0
 8006b6a:	d0e8      	beq.n	8006b3e <__sfvwrite_r+0x222>
 8006b6c:	e7c6      	b.n	8006afc <__sfvwrite_r+0x1e0>
 8006b6e:	f10b 0308 	add.w	r3, fp, #8
 8006b72:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8006b76:	469b      	mov	fp, r3
 8006b78:	3308      	adds	r3, #8
 8006b7a:	2f00      	cmp	r7, #0
 8006b7c:	d0f9      	beq.n	8006b72 <__sfvwrite_r+0x256>
 8006b7e:	463a      	mov	r2, r7
 8006b80:	210a      	movs	r1, #10
 8006b82:	4630      	mov	r0, r6
 8006b84:	f7ff f884 	bl	8005c90 <memchr>
 8006b88:	b338      	cbz	r0, 8006bda <__sfvwrite_r+0x2be>
 8006b8a:	3001      	adds	r0, #1
 8006b8c:	eba0 0906 	sub.w	r9, r0, r6
 8006b90:	e783      	b.n	8006a9a <__sfvwrite_r+0x17e>
 8006b92:	462f      	mov	r7, r5
 8006b94:	46ab      	mov	fp, r5
 8006b96:	e757      	b.n	8006a48 <__sfvwrite_r+0x12c>
 8006b98:	4631      	mov	r1, r6
 8006b9a:	462a      	mov	r2, r5
 8006b9c:	f000 f888 	bl	8006cb0 <memmove>
 8006ba0:	6823      	ldr	r3, [r4, #0]
 8006ba2:	442b      	add	r3, r5
 8006ba4:	6023      	str	r3, [r4, #0]
 8006ba6:	4621      	mov	r1, r4
 8006ba8:	4650      	mov	r0, sl
 8006baa:	f7fe fb23 	bl	80051f4 <_fflush_r>
 8006bae:	2800      	cmp	r0, #0
 8006bb0:	d08b      	beq.n	8006aca <__sfvwrite_r+0x1ae>
 8006bb2:	e7a3      	b.n	8006afc <__sfvwrite_r+0x1e0>
 8006bb4:	4650      	mov	r0, sl
 8006bb6:	f000 f8f5 	bl	8006da4 <_realloc_r>
 8006bba:	4603      	mov	r3, r0
 8006bbc:	2800      	cmp	r0, #0
 8006bbe:	f47f af39 	bne.w	8006a34 <__sfvwrite_r+0x118>
 8006bc2:	6921      	ldr	r1, [r4, #16]
 8006bc4:	4650      	mov	r0, sl
 8006bc6:	f7fe fc13 	bl	80053f0 <_free_r>
 8006bca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006bce:	220c      	movs	r2, #12
 8006bd0:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006bd4:	f8ca 2000 	str.w	r2, [sl]
 8006bd8:	e792      	b.n	8006b00 <__sfvwrite_r+0x1e4>
 8006bda:	f107 0901 	add.w	r9, r7, #1
 8006bde:	e75c      	b.n	8006a9a <__sfvwrite_r+0x17e>
 8006be0:	461a      	mov	r2, r3
 8006be2:	4631      	mov	r1, r6
 8006be4:	9301      	str	r3, [sp, #4]
 8006be6:	f000 f863 	bl	8006cb0 <memmove>
 8006bea:	9b01      	ldr	r3, [sp, #4]
 8006bec:	68a1      	ldr	r1, [r4, #8]
 8006bee:	6822      	ldr	r2, [r4, #0]
 8006bf0:	1ac9      	subs	r1, r1, r3
 8006bf2:	441a      	add	r2, r3
 8006bf4:	60a1      	str	r1, [r4, #8]
 8006bf6:	6022      	str	r2, [r4, #0]
 8006bf8:	461d      	mov	r5, r3
 8006bfa:	e766      	b.n	8006aca <__sfvwrite_r+0x1ae>
 8006bfc:	230c      	movs	r3, #12
 8006bfe:	f8ca 3000 	str.w	r3, [sl]
 8006c02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c06:	e77b      	b.n	8006b00 <__sfvwrite_r+0x1e4>
 8006c08:	f04f 30ff 	mov.w	r0, #4294967295
 8006c0c:	e76b      	b.n	8006ae6 <__sfvwrite_r+0x1ca>
 8006c0e:	bf00      	nop
 8006c10:	7ffffffe 	.word	0x7ffffffe
 8006c14:	7ffffc00 	.word	0x7ffffc00

08006c18 <_isatty_r>:
 8006c18:	b538      	push	{r3, r4, r5, lr}
 8006c1a:	4c07      	ldr	r4, [pc, #28]	; (8006c38 <_isatty_r+0x20>)
 8006c1c:	2300      	movs	r3, #0
 8006c1e:	4605      	mov	r5, r0
 8006c20:	4608      	mov	r0, r1
 8006c22:	6023      	str	r3, [r4, #0]
 8006c24:	f7f9 ffd4 	bl	8000bd0 <_isatty>
 8006c28:	1c43      	adds	r3, r0, #1
 8006c2a:	d000      	beq.n	8006c2e <_isatty_r+0x16>
 8006c2c:	bd38      	pop	{r3, r4, r5, pc}
 8006c2e:	6823      	ldr	r3, [r4, #0]
 8006c30:	2b00      	cmp	r3, #0
 8006c32:	d0fb      	beq.n	8006c2c <_isatty_r+0x14>
 8006c34:	602b      	str	r3, [r5, #0]
 8006c36:	bd38      	pop	{r3, r4, r5, pc}
 8006c38:	20000b98 	.word	0x20000b98

08006c3c <__locale_mb_cur_max>:
 8006c3c:	4b04      	ldr	r3, [pc, #16]	; (8006c50 <__locale_mb_cur_max+0x14>)
 8006c3e:	4a05      	ldr	r2, [pc, #20]	; (8006c54 <__locale_mb_cur_max+0x18>)
 8006c40:	681b      	ldr	r3, [r3, #0]
 8006c42:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006c44:	2b00      	cmp	r3, #0
 8006c46:	bf08      	it	eq
 8006c48:	4613      	moveq	r3, r2
 8006c4a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006c4e:	4770      	bx	lr
 8006c50:	20000010 	.word	0x20000010
 8006c54:	20000854 	.word	0x20000854

08006c58 <_lseek_r>:
 8006c58:	b570      	push	{r4, r5, r6, lr}
 8006c5a:	460d      	mov	r5, r1
 8006c5c:	4c08      	ldr	r4, [pc, #32]	; (8006c80 <_lseek_r+0x28>)
 8006c5e:	4611      	mov	r1, r2
 8006c60:	4606      	mov	r6, r0
 8006c62:	461a      	mov	r2, r3
 8006c64:	4628      	mov	r0, r5
 8006c66:	2300      	movs	r3, #0
 8006c68:	6023      	str	r3, [r4, #0]
 8006c6a:	f7f9 ffbc 	bl	8000be6 <_lseek>
 8006c6e:	1c43      	adds	r3, r0, #1
 8006c70:	d000      	beq.n	8006c74 <_lseek_r+0x1c>
 8006c72:	bd70      	pop	{r4, r5, r6, pc}
 8006c74:	6823      	ldr	r3, [r4, #0]
 8006c76:	2b00      	cmp	r3, #0
 8006c78:	d0fb      	beq.n	8006c72 <_lseek_r+0x1a>
 8006c7a:	6033      	str	r3, [r6, #0]
 8006c7c:	bd70      	pop	{r4, r5, r6, pc}
 8006c7e:	bf00      	nop
 8006c80:	20000b98 	.word	0x20000b98

08006c84 <__ascii_mbtowc>:
 8006c84:	b082      	sub	sp, #8
 8006c86:	b149      	cbz	r1, 8006c9c <__ascii_mbtowc+0x18>
 8006c88:	b15a      	cbz	r2, 8006ca2 <__ascii_mbtowc+0x1e>
 8006c8a:	b16b      	cbz	r3, 8006ca8 <__ascii_mbtowc+0x24>
 8006c8c:	7813      	ldrb	r3, [r2, #0]
 8006c8e:	600b      	str	r3, [r1, #0]
 8006c90:	7812      	ldrb	r2, [r2, #0]
 8006c92:	1c10      	adds	r0, r2, #0
 8006c94:	bf18      	it	ne
 8006c96:	2001      	movne	r0, #1
 8006c98:	b002      	add	sp, #8
 8006c9a:	4770      	bx	lr
 8006c9c:	a901      	add	r1, sp, #4
 8006c9e:	2a00      	cmp	r2, #0
 8006ca0:	d1f3      	bne.n	8006c8a <__ascii_mbtowc+0x6>
 8006ca2:	4610      	mov	r0, r2
 8006ca4:	b002      	add	sp, #8
 8006ca6:	4770      	bx	lr
 8006ca8:	f06f 0001 	mvn.w	r0, #1
 8006cac:	e7f4      	b.n	8006c98 <__ascii_mbtowc+0x14>
 8006cae:	bf00      	nop

08006cb0 <memmove>:
 8006cb0:	4288      	cmp	r0, r1
 8006cb2:	b4f0      	push	{r4, r5, r6, r7}
 8006cb4:	d90d      	bls.n	8006cd2 <memmove+0x22>
 8006cb6:	188b      	adds	r3, r1, r2
 8006cb8:	4283      	cmp	r3, r0
 8006cba:	d90a      	bls.n	8006cd2 <memmove+0x22>
 8006cbc:	1884      	adds	r4, r0, r2
 8006cbe:	b132      	cbz	r2, 8006cce <memmove+0x1e>
 8006cc0:	4622      	mov	r2, r4
 8006cc2:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006cc6:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006cca:	4299      	cmp	r1, r3
 8006ccc:	d1f9      	bne.n	8006cc2 <memmove+0x12>
 8006cce:	bcf0      	pop	{r4, r5, r6, r7}
 8006cd0:	4770      	bx	lr
 8006cd2:	2a0f      	cmp	r2, #15
 8006cd4:	d949      	bls.n	8006d6a <memmove+0xba>
 8006cd6:	ea40 0301 	orr.w	r3, r0, r1
 8006cda:	079b      	lsls	r3, r3, #30
 8006cdc:	d147      	bne.n	8006d6e <memmove+0xbe>
 8006cde:	f1a2 0310 	sub.w	r3, r2, #16
 8006ce2:	091b      	lsrs	r3, r3, #4
 8006ce4:	f101 0720 	add.w	r7, r1, #32
 8006ce8:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006cec:	f101 0410 	add.w	r4, r1, #16
 8006cf0:	f100 0510 	add.w	r5, r0, #16
 8006cf4:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8006cf8:	f845 6c10 	str.w	r6, [r5, #-16]
 8006cfc:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006d00:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006d04:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8006d08:	f845 6c08 	str.w	r6, [r5, #-8]
 8006d0c:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006d10:	f845 6c04 	str.w	r6, [r5, #-4]
 8006d14:	3410      	adds	r4, #16
 8006d16:	42bc      	cmp	r4, r7
 8006d18:	f105 0510 	add.w	r5, r5, #16
 8006d1c:	d1ea      	bne.n	8006cf4 <memmove+0x44>
 8006d1e:	3301      	adds	r3, #1
 8006d20:	f002 050f 	and.w	r5, r2, #15
 8006d24:	011b      	lsls	r3, r3, #4
 8006d26:	2d03      	cmp	r5, #3
 8006d28:	4419      	add	r1, r3
 8006d2a:	4403      	add	r3, r0
 8006d2c:	d921      	bls.n	8006d72 <memmove+0xc2>
 8006d2e:	1f1f      	subs	r7, r3, #4
 8006d30:	460e      	mov	r6, r1
 8006d32:	462c      	mov	r4, r5
 8006d34:	3c04      	subs	r4, #4
 8006d36:	f856 cb04 	ldr.w	ip, [r6], #4
 8006d3a:	f847 cf04 	str.w	ip, [r7, #4]!
 8006d3e:	2c03      	cmp	r4, #3
 8006d40:	d8f8      	bhi.n	8006d34 <memmove+0x84>
 8006d42:	1f2c      	subs	r4, r5, #4
 8006d44:	f024 0403 	bic.w	r4, r4, #3
 8006d48:	3404      	adds	r4, #4
 8006d4a:	4423      	add	r3, r4
 8006d4c:	4421      	add	r1, r4
 8006d4e:	f002 0203 	and.w	r2, r2, #3
 8006d52:	2a00      	cmp	r2, #0
 8006d54:	d0bb      	beq.n	8006cce <memmove+0x1e>
 8006d56:	3b01      	subs	r3, #1
 8006d58:	440a      	add	r2, r1
 8006d5a:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006d5e:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006d62:	4291      	cmp	r1, r2
 8006d64:	d1f9      	bne.n	8006d5a <memmove+0xaa>
 8006d66:	bcf0      	pop	{r4, r5, r6, r7}
 8006d68:	4770      	bx	lr
 8006d6a:	4603      	mov	r3, r0
 8006d6c:	e7f1      	b.n	8006d52 <memmove+0xa2>
 8006d6e:	4603      	mov	r3, r0
 8006d70:	e7f1      	b.n	8006d56 <memmove+0xa6>
 8006d72:	462a      	mov	r2, r5
 8006d74:	e7ed      	b.n	8006d52 <memmove+0xa2>
 8006d76:	bf00      	nop

08006d78 <_read_r>:
 8006d78:	b570      	push	{r4, r5, r6, lr}
 8006d7a:	460d      	mov	r5, r1
 8006d7c:	4c08      	ldr	r4, [pc, #32]	; (8006da0 <_read_r+0x28>)
 8006d7e:	4611      	mov	r1, r2
 8006d80:	4606      	mov	r6, r0
 8006d82:	461a      	mov	r2, r3
 8006d84:	4628      	mov	r0, r5
 8006d86:	2300      	movs	r3, #0
 8006d88:	6023      	str	r3, [r4, #0]
 8006d8a:	f7f9 fea0 	bl	8000ace <_read>
 8006d8e:	1c43      	adds	r3, r0, #1
 8006d90:	d000      	beq.n	8006d94 <_read_r+0x1c>
 8006d92:	bd70      	pop	{r4, r5, r6, pc}
 8006d94:	6823      	ldr	r3, [r4, #0]
 8006d96:	2b00      	cmp	r3, #0
 8006d98:	d0fb      	beq.n	8006d92 <_read_r+0x1a>
 8006d9a:	6033      	str	r3, [r6, #0]
 8006d9c:	bd70      	pop	{r4, r5, r6, pc}
 8006d9e:	bf00      	nop
 8006da0:	20000b98 	.word	0x20000b98

08006da4 <_realloc_r>:
 8006da4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006da8:	4692      	mov	sl, r2
 8006daa:	b083      	sub	sp, #12
 8006dac:	2900      	cmp	r1, #0
 8006dae:	f000 80a1 	beq.w	8006ef4 <_realloc_r+0x150>
 8006db2:	460d      	mov	r5, r1
 8006db4:	4680      	mov	r8, r0
 8006db6:	f10a 040b 	add.w	r4, sl, #11
 8006dba:	f7fe ffb9 	bl	8005d30 <__malloc_lock>
 8006dbe:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006dc2:	2c16      	cmp	r4, #22
 8006dc4:	f022 0603 	bic.w	r6, r2, #3
 8006dc8:	f1a5 0708 	sub.w	r7, r5, #8
 8006dcc:	d83e      	bhi.n	8006e4c <_realloc_r+0xa8>
 8006dce:	2410      	movs	r4, #16
 8006dd0:	4621      	mov	r1, r4
 8006dd2:	45a2      	cmp	sl, r4
 8006dd4:	d83f      	bhi.n	8006e56 <_realloc_r+0xb2>
 8006dd6:	428e      	cmp	r6, r1
 8006dd8:	eb07 0906 	add.w	r9, r7, r6
 8006ddc:	da74      	bge.n	8006ec8 <_realloc_r+0x124>
 8006dde:	4bc7      	ldr	r3, [pc, #796]	; (80070fc <_realloc_r+0x358>)
 8006de0:	6898      	ldr	r0, [r3, #8]
 8006de2:	4548      	cmp	r0, r9
 8006de4:	f000 80aa 	beq.w	8006f3c <_realloc_r+0x198>
 8006de8:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006dec:	f020 0301 	bic.w	r3, r0, #1
 8006df0:	444b      	add	r3, r9
 8006df2:	685b      	ldr	r3, [r3, #4]
 8006df4:	07db      	lsls	r3, r3, #31
 8006df6:	f140 8083 	bpl.w	8006f00 <_realloc_r+0x15c>
 8006dfa:	07d2      	lsls	r2, r2, #31
 8006dfc:	d534      	bpl.n	8006e68 <_realloc_r+0xc4>
 8006dfe:	4651      	mov	r1, sl
 8006e00:	4640      	mov	r0, r8
 8006e02:	f7fe fca1 	bl	8005748 <_malloc_r>
 8006e06:	4682      	mov	sl, r0
 8006e08:	b1e0      	cbz	r0, 8006e44 <_realloc_r+0xa0>
 8006e0a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006e0e:	f023 0301 	bic.w	r3, r3, #1
 8006e12:	443b      	add	r3, r7
 8006e14:	f1a0 0208 	sub.w	r2, r0, #8
 8006e18:	4293      	cmp	r3, r2
 8006e1a:	f000 80f9 	beq.w	8007010 <_realloc_r+0x26c>
 8006e1e:	1f32      	subs	r2, r6, #4
 8006e20:	2a24      	cmp	r2, #36	; 0x24
 8006e22:	f200 8107 	bhi.w	8007034 <_realloc_r+0x290>
 8006e26:	2a13      	cmp	r2, #19
 8006e28:	6829      	ldr	r1, [r5, #0]
 8006e2a:	f200 80e6 	bhi.w	8006ffa <_realloc_r+0x256>
 8006e2e:	4603      	mov	r3, r0
 8006e30:	462a      	mov	r2, r5
 8006e32:	6019      	str	r1, [r3, #0]
 8006e34:	6851      	ldr	r1, [r2, #4]
 8006e36:	6059      	str	r1, [r3, #4]
 8006e38:	6892      	ldr	r2, [r2, #8]
 8006e3a:	609a      	str	r2, [r3, #8]
 8006e3c:	4629      	mov	r1, r5
 8006e3e:	4640      	mov	r0, r8
 8006e40:	f7fe fad6 	bl	80053f0 <_free_r>
 8006e44:	4640      	mov	r0, r8
 8006e46:	f7fe ff79 	bl	8005d3c <__malloc_unlock>
 8006e4a:	e04f      	b.n	8006eec <_realloc_r+0x148>
 8006e4c:	f024 0407 	bic.w	r4, r4, #7
 8006e50:	2c00      	cmp	r4, #0
 8006e52:	4621      	mov	r1, r4
 8006e54:	dabd      	bge.n	8006dd2 <_realloc_r+0x2e>
 8006e56:	f04f 0a00 	mov.w	sl, #0
 8006e5a:	230c      	movs	r3, #12
 8006e5c:	4650      	mov	r0, sl
 8006e5e:	f8c8 3000 	str.w	r3, [r8]
 8006e62:	b003      	add	sp, #12
 8006e64:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e68:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006e6c:	eba7 0b03 	sub.w	fp, r7, r3
 8006e70:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006e74:	f022 0203 	bic.w	r2, r2, #3
 8006e78:	18b3      	adds	r3, r6, r2
 8006e7a:	428b      	cmp	r3, r1
 8006e7c:	dbbf      	blt.n	8006dfe <_realloc_r+0x5a>
 8006e7e:	46da      	mov	sl, fp
 8006e80:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006e84:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006e88:	1f32      	subs	r2, r6, #4
 8006e8a:	2a24      	cmp	r2, #36	; 0x24
 8006e8c:	60c1      	str	r1, [r0, #12]
 8006e8e:	eb0b 0903 	add.w	r9, fp, r3
 8006e92:	6088      	str	r0, [r1, #8]
 8006e94:	f200 80c6 	bhi.w	8007024 <_realloc_r+0x280>
 8006e98:	2a13      	cmp	r2, #19
 8006e9a:	6829      	ldr	r1, [r5, #0]
 8006e9c:	f240 80c0 	bls.w	8007020 <_realloc_r+0x27c>
 8006ea0:	f8cb 1008 	str.w	r1, [fp, #8]
 8006ea4:	6869      	ldr	r1, [r5, #4]
 8006ea6:	f8cb 100c 	str.w	r1, [fp, #12]
 8006eaa:	2a1b      	cmp	r2, #27
 8006eac:	68a9      	ldr	r1, [r5, #8]
 8006eae:	f200 80d8 	bhi.w	8007062 <_realloc_r+0x2be>
 8006eb2:	f10b 0210 	add.w	r2, fp, #16
 8006eb6:	3508      	adds	r5, #8
 8006eb8:	6011      	str	r1, [r2, #0]
 8006eba:	6869      	ldr	r1, [r5, #4]
 8006ebc:	6051      	str	r1, [r2, #4]
 8006ebe:	68a9      	ldr	r1, [r5, #8]
 8006ec0:	6091      	str	r1, [r2, #8]
 8006ec2:	461e      	mov	r6, r3
 8006ec4:	465f      	mov	r7, fp
 8006ec6:	4655      	mov	r5, sl
 8006ec8:	687b      	ldr	r3, [r7, #4]
 8006eca:	1b32      	subs	r2, r6, r4
 8006ecc:	2a0f      	cmp	r2, #15
 8006ece:	f003 0301 	and.w	r3, r3, #1
 8006ed2:	d822      	bhi.n	8006f1a <_realloc_r+0x176>
 8006ed4:	4333      	orrs	r3, r6
 8006ed6:	607b      	str	r3, [r7, #4]
 8006ed8:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006edc:	f043 0301 	orr.w	r3, r3, #1
 8006ee0:	f8c9 3004 	str.w	r3, [r9, #4]
 8006ee4:	4640      	mov	r0, r8
 8006ee6:	f7fe ff29 	bl	8005d3c <__malloc_unlock>
 8006eea:	46aa      	mov	sl, r5
 8006eec:	4650      	mov	r0, sl
 8006eee:	b003      	add	sp, #12
 8006ef0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ef4:	4611      	mov	r1, r2
 8006ef6:	b003      	add	sp, #12
 8006ef8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006efc:	f7fe bc24 	b.w	8005748 <_malloc_r>
 8006f00:	f020 0003 	bic.w	r0, r0, #3
 8006f04:	1833      	adds	r3, r6, r0
 8006f06:	428b      	cmp	r3, r1
 8006f08:	db61      	blt.n	8006fce <_realloc_r+0x22a>
 8006f0a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006f0e:	461e      	mov	r6, r3
 8006f10:	60ca      	str	r2, [r1, #12]
 8006f12:	eb07 0903 	add.w	r9, r7, r3
 8006f16:	6091      	str	r1, [r2, #8]
 8006f18:	e7d6      	b.n	8006ec8 <_realloc_r+0x124>
 8006f1a:	1939      	adds	r1, r7, r4
 8006f1c:	4323      	orrs	r3, r4
 8006f1e:	f042 0201 	orr.w	r2, r2, #1
 8006f22:	607b      	str	r3, [r7, #4]
 8006f24:	604a      	str	r2, [r1, #4]
 8006f26:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006f2a:	f043 0301 	orr.w	r3, r3, #1
 8006f2e:	3108      	adds	r1, #8
 8006f30:	f8c9 3004 	str.w	r3, [r9, #4]
 8006f34:	4640      	mov	r0, r8
 8006f36:	f7fe fa5b 	bl	80053f0 <_free_r>
 8006f3a:	e7d3      	b.n	8006ee4 <_realloc_r+0x140>
 8006f3c:	6840      	ldr	r0, [r0, #4]
 8006f3e:	f020 0903 	bic.w	r9, r0, #3
 8006f42:	44b1      	add	r9, r6
 8006f44:	f104 0010 	add.w	r0, r4, #16
 8006f48:	4581      	cmp	r9, r0
 8006f4a:	da77      	bge.n	800703c <_realloc_r+0x298>
 8006f4c:	07d2      	lsls	r2, r2, #31
 8006f4e:	f53f af56 	bmi.w	8006dfe <_realloc_r+0x5a>
 8006f52:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006f56:	eba7 0b02 	sub.w	fp, r7, r2
 8006f5a:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006f5e:	f022 0203 	bic.w	r2, r2, #3
 8006f62:	4491      	add	r9, r2
 8006f64:	4548      	cmp	r0, r9
 8006f66:	dc87      	bgt.n	8006e78 <_realloc_r+0xd4>
 8006f68:	46da      	mov	sl, fp
 8006f6a:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006f6e:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006f72:	1f32      	subs	r2, r6, #4
 8006f74:	2a24      	cmp	r2, #36	; 0x24
 8006f76:	60c1      	str	r1, [r0, #12]
 8006f78:	6088      	str	r0, [r1, #8]
 8006f7a:	f200 80a1 	bhi.w	80070c0 <_realloc_r+0x31c>
 8006f7e:	2a13      	cmp	r2, #19
 8006f80:	6829      	ldr	r1, [r5, #0]
 8006f82:	f240 809b 	bls.w	80070bc <_realloc_r+0x318>
 8006f86:	f8cb 1008 	str.w	r1, [fp, #8]
 8006f8a:	6869      	ldr	r1, [r5, #4]
 8006f8c:	f8cb 100c 	str.w	r1, [fp, #12]
 8006f90:	2a1b      	cmp	r2, #27
 8006f92:	68a9      	ldr	r1, [r5, #8]
 8006f94:	f200 809b 	bhi.w	80070ce <_realloc_r+0x32a>
 8006f98:	f10b 0210 	add.w	r2, fp, #16
 8006f9c:	3508      	adds	r5, #8
 8006f9e:	6011      	str	r1, [r2, #0]
 8006fa0:	6869      	ldr	r1, [r5, #4]
 8006fa2:	6051      	str	r1, [r2, #4]
 8006fa4:	68a9      	ldr	r1, [r5, #8]
 8006fa6:	6091      	str	r1, [r2, #8]
 8006fa8:	eb0b 0104 	add.w	r1, fp, r4
 8006fac:	eba9 0204 	sub.w	r2, r9, r4
 8006fb0:	f042 0201 	orr.w	r2, r2, #1
 8006fb4:	6099      	str	r1, [r3, #8]
 8006fb6:	604a      	str	r2, [r1, #4]
 8006fb8:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006fbc:	f003 0301 	and.w	r3, r3, #1
 8006fc0:	431c      	orrs	r4, r3
 8006fc2:	4640      	mov	r0, r8
 8006fc4:	f8cb 4004 	str.w	r4, [fp, #4]
 8006fc8:	f7fe feb8 	bl	8005d3c <__malloc_unlock>
 8006fcc:	e78e      	b.n	8006eec <_realloc_r+0x148>
 8006fce:	07d3      	lsls	r3, r2, #31
 8006fd0:	f53f af15 	bmi.w	8006dfe <_realloc_r+0x5a>
 8006fd4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006fd8:	eba7 0b03 	sub.w	fp, r7, r3
 8006fdc:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006fe0:	f022 0203 	bic.w	r2, r2, #3
 8006fe4:	4410      	add	r0, r2
 8006fe6:	1983      	adds	r3, r0, r6
 8006fe8:	428b      	cmp	r3, r1
 8006fea:	f6ff af45 	blt.w	8006e78 <_realloc_r+0xd4>
 8006fee:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006ff2:	46da      	mov	sl, fp
 8006ff4:	60ca      	str	r2, [r1, #12]
 8006ff6:	6091      	str	r1, [r2, #8]
 8006ff8:	e742      	b.n	8006e80 <_realloc_r+0xdc>
 8006ffa:	6001      	str	r1, [r0, #0]
 8006ffc:	686b      	ldr	r3, [r5, #4]
 8006ffe:	6043      	str	r3, [r0, #4]
 8007000:	2a1b      	cmp	r2, #27
 8007002:	d83a      	bhi.n	800707a <_realloc_r+0x2d6>
 8007004:	f105 0208 	add.w	r2, r5, #8
 8007008:	f100 0308 	add.w	r3, r0, #8
 800700c:	68a9      	ldr	r1, [r5, #8]
 800700e:	e710      	b.n	8006e32 <_realloc_r+0x8e>
 8007010:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8007014:	f023 0303 	bic.w	r3, r3, #3
 8007018:	441e      	add	r6, r3
 800701a:	eb07 0906 	add.w	r9, r7, r6
 800701e:	e753      	b.n	8006ec8 <_realloc_r+0x124>
 8007020:	4652      	mov	r2, sl
 8007022:	e749      	b.n	8006eb8 <_realloc_r+0x114>
 8007024:	4629      	mov	r1, r5
 8007026:	4650      	mov	r0, sl
 8007028:	461e      	mov	r6, r3
 800702a:	465f      	mov	r7, fp
 800702c:	f7ff fe40 	bl	8006cb0 <memmove>
 8007030:	4655      	mov	r5, sl
 8007032:	e749      	b.n	8006ec8 <_realloc_r+0x124>
 8007034:	4629      	mov	r1, r5
 8007036:	f7ff fe3b 	bl	8006cb0 <memmove>
 800703a:	e6ff      	b.n	8006e3c <_realloc_r+0x98>
 800703c:	4427      	add	r7, r4
 800703e:	eba9 0904 	sub.w	r9, r9, r4
 8007042:	f049 0201 	orr.w	r2, r9, #1
 8007046:	609f      	str	r7, [r3, #8]
 8007048:	607a      	str	r2, [r7, #4]
 800704a:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800704e:	f003 0301 	and.w	r3, r3, #1
 8007052:	431c      	orrs	r4, r3
 8007054:	4640      	mov	r0, r8
 8007056:	f845 4c04 	str.w	r4, [r5, #-4]
 800705a:	f7fe fe6f 	bl	8005d3c <__malloc_unlock>
 800705e:	46aa      	mov	sl, r5
 8007060:	e744      	b.n	8006eec <_realloc_r+0x148>
 8007062:	f8cb 1010 	str.w	r1, [fp, #16]
 8007066:	68e9      	ldr	r1, [r5, #12]
 8007068:	f8cb 1014 	str.w	r1, [fp, #20]
 800706c:	2a24      	cmp	r2, #36	; 0x24
 800706e:	d010      	beq.n	8007092 <_realloc_r+0x2ee>
 8007070:	6929      	ldr	r1, [r5, #16]
 8007072:	f10b 0218 	add.w	r2, fp, #24
 8007076:	3510      	adds	r5, #16
 8007078:	e71e      	b.n	8006eb8 <_realloc_r+0x114>
 800707a:	68ab      	ldr	r3, [r5, #8]
 800707c:	6083      	str	r3, [r0, #8]
 800707e:	68eb      	ldr	r3, [r5, #12]
 8007080:	60c3      	str	r3, [r0, #12]
 8007082:	2a24      	cmp	r2, #36	; 0x24
 8007084:	d010      	beq.n	80070a8 <_realloc_r+0x304>
 8007086:	f105 0210 	add.w	r2, r5, #16
 800708a:	f100 0310 	add.w	r3, r0, #16
 800708e:	6929      	ldr	r1, [r5, #16]
 8007090:	e6cf      	b.n	8006e32 <_realloc_r+0x8e>
 8007092:	692a      	ldr	r2, [r5, #16]
 8007094:	f8cb 2018 	str.w	r2, [fp, #24]
 8007098:	696a      	ldr	r2, [r5, #20]
 800709a:	f8cb 201c 	str.w	r2, [fp, #28]
 800709e:	69a9      	ldr	r1, [r5, #24]
 80070a0:	f10b 0220 	add.w	r2, fp, #32
 80070a4:	3518      	adds	r5, #24
 80070a6:	e707      	b.n	8006eb8 <_realloc_r+0x114>
 80070a8:	692b      	ldr	r3, [r5, #16]
 80070aa:	6103      	str	r3, [r0, #16]
 80070ac:	696b      	ldr	r3, [r5, #20]
 80070ae:	6143      	str	r3, [r0, #20]
 80070b0:	69a9      	ldr	r1, [r5, #24]
 80070b2:	f105 0218 	add.w	r2, r5, #24
 80070b6:	f100 0318 	add.w	r3, r0, #24
 80070ba:	e6ba      	b.n	8006e32 <_realloc_r+0x8e>
 80070bc:	4652      	mov	r2, sl
 80070be:	e76e      	b.n	8006f9e <_realloc_r+0x1fa>
 80070c0:	4629      	mov	r1, r5
 80070c2:	4650      	mov	r0, sl
 80070c4:	9301      	str	r3, [sp, #4]
 80070c6:	f7ff fdf3 	bl	8006cb0 <memmove>
 80070ca:	9b01      	ldr	r3, [sp, #4]
 80070cc:	e76c      	b.n	8006fa8 <_realloc_r+0x204>
 80070ce:	f8cb 1010 	str.w	r1, [fp, #16]
 80070d2:	68e9      	ldr	r1, [r5, #12]
 80070d4:	f8cb 1014 	str.w	r1, [fp, #20]
 80070d8:	2a24      	cmp	r2, #36	; 0x24
 80070da:	d004      	beq.n	80070e6 <_realloc_r+0x342>
 80070dc:	6929      	ldr	r1, [r5, #16]
 80070de:	f10b 0218 	add.w	r2, fp, #24
 80070e2:	3510      	adds	r5, #16
 80070e4:	e75b      	b.n	8006f9e <_realloc_r+0x1fa>
 80070e6:	692a      	ldr	r2, [r5, #16]
 80070e8:	f8cb 2018 	str.w	r2, [fp, #24]
 80070ec:	696a      	ldr	r2, [r5, #20]
 80070ee:	f8cb 201c 	str.w	r2, [fp, #28]
 80070f2:	69a9      	ldr	r1, [r5, #24]
 80070f4:	f10b 0220 	add.w	r2, fp, #32
 80070f8:	3518      	adds	r5, #24
 80070fa:	e750      	b.n	8006f9e <_realloc_r+0x1fa>
 80070fc:	20000444 	.word	0x20000444

08007100 <__swbuf_r>:
 8007100:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007102:	460d      	mov	r5, r1
 8007104:	4614      	mov	r4, r2
 8007106:	4606      	mov	r6, r0
 8007108:	b110      	cbz	r0, 8007110 <__swbuf_r+0x10>
 800710a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800710c:	2b00      	cmp	r3, #0
 800710e:	d043      	beq.n	8007198 <__swbuf_r+0x98>
 8007110:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007114:	69a3      	ldr	r3, [r4, #24]
 8007116:	60a3      	str	r3, [r4, #8]
 8007118:	b291      	uxth	r1, r2
 800711a:	0708      	lsls	r0, r1, #28
 800711c:	d51b      	bpl.n	8007156 <__swbuf_r+0x56>
 800711e:	6923      	ldr	r3, [r4, #16]
 8007120:	b1cb      	cbz	r3, 8007156 <__swbuf_r+0x56>
 8007122:	b2ed      	uxtb	r5, r5
 8007124:	0489      	lsls	r1, r1, #18
 8007126:	462f      	mov	r7, r5
 8007128:	d522      	bpl.n	8007170 <__swbuf_r+0x70>
 800712a:	6822      	ldr	r2, [r4, #0]
 800712c:	6961      	ldr	r1, [r4, #20]
 800712e:	1ad3      	subs	r3, r2, r3
 8007130:	4299      	cmp	r1, r3
 8007132:	dd29      	ble.n	8007188 <__swbuf_r+0x88>
 8007134:	3301      	adds	r3, #1
 8007136:	68a1      	ldr	r1, [r4, #8]
 8007138:	1c50      	adds	r0, r2, #1
 800713a:	3901      	subs	r1, #1
 800713c:	60a1      	str	r1, [r4, #8]
 800713e:	6020      	str	r0, [r4, #0]
 8007140:	7015      	strb	r5, [r2, #0]
 8007142:	6962      	ldr	r2, [r4, #20]
 8007144:	429a      	cmp	r2, r3
 8007146:	d02a      	beq.n	800719e <__swbuf_r+0x9e>
 8007148:	89a3      	ldrh	r3, [r4, #12]
 800714a:	07db      	lsls	r3, r3, #31
 800714c:	d501      	bpl.n	8007152 <__swbuf_r+0x52>
 800714e:	2d0a      	cmp	r5, #10
 8007150:	d025      	beq.n	800719e <__swbuf_r+0x9e>
 8007152:	4638      	mov	r0, r7
 8007154:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007156:	4621      	mov	r1, r4
 8007158:	4630      	mov	r0, r6
 800715a:	f7fc ff85 	bl	8004068 <__swsetup_r>
 800715e:	bb20      	cbnz	r0, 80071aa <__swbuf_r+0xaa>
 8007160:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007164:	6923      	ldr	r3, [r4, #16]
 8007166:	b291      	uxth	r1, r2
 8007168:	b2ed      	uxtb	r5, r5
 800716a:	0489      	lsls	r1, r1, #18
 800716c:	462f      	mov	r7, r5
 800716e:	d4dc      	bmi.n	800712a <__swbuf_r+0x2a>
 8007170:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007172:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007176:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800717a:	81a2      	strh	r2, [r4, #12]
 800717c:	6822      	ldr	r2, [r4, #0]
 800717e:	6661      	str	r1, [r4, #100]	; 0x64
 8007180:	6961      	ldr	r1, [r4, #20]
 8007182:	1ad3      	subs	r3, r2, r3
 8007184:	4299      	cmp	r1, r3
 8007186:	dcd5      	bgt.n	8007134 <__swbuf_r+0x34>
 8007188:	4621      	mov	r1, r4
 800718a:	4630      	mov	r0, r6
 800718c:	f7fe f832 	bl	80051f4 <_fflush_r>
 8007190:	b958      	cbnz	r0, 80071aa <__swbuf_r+0xaa>
 8007192:	6822      	ldr	r2, [r4, #0]
 8007194:	2301      	movs	r3, #1
 8007196:	e7ce      	b.n	8007136 <__swbuf_r+0x36>
 8007198:	f7fe f888 	bl	80052ac <__sinit>
 800719c:	e7b8      	b.n	8007110 <__swbuf_r+0x10>
 800719e:	4621      	mov	r1, r4
 80071a0:	4630      	mov	r0, r6
 80071a2:	f7fe f827 	bl	80051f4 <_fflush_r>
 80071a6:	2800      	cmp	r0, #0
 80071a8:	d0d3      	beq.n	8007152 <__swbuf_r+0x52>
 80071aa:	f04f 37ff 	mov.w	r7, #4294967295
 80071ae:	e7d0      	b.n	8007152 <__swbuf_r+0x52>

080071b0 <_wcrtomb_r>:
 80071b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80071b2:	4c11      	ldr	r4, [pc, #68]	; (80071f8 <_wcrtomb_r+0x48>)
 80071b4:	6824      	ldr	r4, [r4, #0]
 80071b6:	b085      	sub	sp, #20
 80071b8:	4606      	mov	r6, r0
 80071ba:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80071bc:	461f      	mov	r7, r3
 80071be:	b151      	cbz	r1, 80071d6 <_wcrtomb_r+0x26>
 80071c0:	4d0e      	ldr	r5, [pc, #56]	; (80071fc <_wcrtomb_r+0x4c>)
 80071c2:	2c00      	cmp	r4, #0
 80071c4:	bf08      	it	eq
 80071c6:	462c      	moveq	r4, r5
 80071c8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80071cc:	47a0      	blx	r4
 80071ce:	1c43      	adds	r3, r0, #1
 80071d0:	d00c      	beq.n	80071ec <_wcrtomb_r+0x3c>
 80071d2:	b005      	add	sp, #20
 80071d4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80071d6:	4a09      	ldr	r2, [pc, #36]	; (80071fc <_wcrtomb_r+0x4c>)
 80071d8:	2c00      	cmp	r4, #0
 80071da:	bf08      	it	eq
 80071dc:	4614      	moveq	r4, r2
 80071de:	460a      	mov	r2, r1
 80071e0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80071e4:	a901      	add	r1, sp, #4
 80071e6:	47a0      	blx	r4
 80071e8:	1c43      	adds	r3, r0, #1
 80071ea:	d1f2      	bne.n	80071d2 <_wcrtomb_r+0x22>
 80071ec:	2200      	movs	r2, #0
 80071ee:	238a      	movs	r3, #138	; 0x8a
 80071f0:	603a      	str	r2, [r7, #0]
 80071f2:	6033      	str	r3, [r6, #0]
 80071f4:	b005      	add	sp, #20
 80071f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80071f8:	20000010 	.word	0x20000010
 80071fc:	20000854 	.word	0x20000854

08007200 <__ascii_wctomb>:
 8007200:	b121      	cbz	r1, 800720c <__ascii_wctomb+0xc>
 8007202:	2aff      	cmp	r2, #255	; 0xff
 8007204:	d804      	bhi.n	8007210 <__ascii_wctomb+0x10>
 8007206:	700a      	strb	r2, [r1, #0]
 8007208:	2001      	movs	r0, #1
 800720a:	4770      	bx	lr
 800720c:	4608      	mov	r0, r1
 800720e:	4770      	bx	lr
 8007210:	238a      	movs	r3, #138	; 0x8a
 8007212:	6003      	str	r3, [r0, #0]
 8007214:	f04f 30ff 	mov.w	r0, #4294967295
 8007218:	4770      	bx	lr
 800721a:	bf00      	nop

0800721c <__aeabi_drsub>:
 800721c:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8007220:	e002      	b.n	8007228 <__adddf3>
 8007222:	bf00      	nop

08007224 <__aeabi_dsub>:
 8007224:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08007228 <__adddf3>:
 8007228:	b530      	push	{r4, r5, lr}
 800722a:	ea4f 0441 	mov.w	r4, r1, lsl #1
 800722e:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8007232:	ea94 0f05 	teq	r4, r5
 8007236:	bf08      	it	eq
 8007238:	ea90 0f02 	teqeq	r0, r2
 800723c:	bf1f      	itttt	ne
 800723e:	ea54 0c00 	orrsne.w	ip, r4, r0
 8007242:	ea55 0c02 	orrsne.w	ip, r5, r2
 8007246:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 800724a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800724e:	f000 80e2 	beq.w	8007416 <__adddf3+0x1ee>
 8007252:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8007256:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 800725a:	bfb8      	it	lt
 800725c:	426d      	neglt	r5, r5
 800725e:	dd0c      	ble.n	800727a <__adddf3+0x52>
 8007260:	442c      	add	r4, r5
 8007262:	ea80 0202 	eor.w	r2, r0, r2
 8007266:	ea81 0303 	eor.w	r3, r1, r3
 800726a:	ea82 0000 	eor.w	r0, r2, r0
 800726e:	ea83 0101 	eor.w	r1, r3, r1
 8007272:	ea80 0202 	eor.w	r2, r0, r2
 8007276:	ea81 0303 	eor.w	r3, r1, r3
 800727a:	2d36      	cmp	r5, #54	; 0x36
 800727c:	bf88      	it	hi
 800727e:	bd30      	pophi	{r4, r5, pc}
 8007280:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8007284:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8007288:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 800728c:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8007290:	d002      	beq.n	8007298 <__adddf3+0x70>
 8007292:	4240      	negs	r0, r0
 8007294:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8007298:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 800729c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80072a0:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 80072a4:	d002      	beq.n	80072ac <__adddf3+0x84>
 80072a6:	4252      	negs	r2, r2
 80072a8:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 80072ac:	ea94 0f05 	teq	r4, r5
 80072b0:	f000 80a7 	beq.w	8007402 <__adddf3+0x1da>
 80072b4:	f1a4 0401 	sub.w	r4, r4, #1
 80072b8:	f1d5 0e20 	rsbs	lr, r5, #32
 80072bc:	db0d      	blt.n	80072da <__adddf3+0xb2>
 80072be:	fa02 fc0e 	lsl.w	ip, r2, lr
 80072c2:	fa22 f205 	lsr.w	r2, r2, r5
 80072c6:	1880      	adds	r0, r0, r2
 80072c8:	f141 0100 	adc.w	r1, r1, #0
 80072cc:	fa03 f20e 	lsl.w	r2, r3, lr
 80072d0:	1880      	adds	r0, r0, r2
 80072d2:	fa43 f305 	asr.w	r3, r3, r5
 80072d6:	4159      	adcs	r1, r3
 80072d8:	e00e      	b.n	80072f8 <__adddf3+0xd0>
 80072da:	f1a5 0520 	sub.w	r5, r5, #32
 80072de:	f10e 0e20 	add.w	lr, lr, #32
 80072e2:	2a01      	cmp	r2, #1
 80072e4:	fa03 fc0e 	lsl.w	ip, r3, lr
 80072e8:	bf28      	it	cs
 80072ea:	f04c 0c02 	orrcs.w	ip, ip, #2
 80072ee:	fa43 f305 	asr.w	r3, r3, r5
 80072f2:	18c0      	adds	r0, r0, r3
 80072f4:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 80072f8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80072fc:	d507      	bpl.n	800730e <__adddf3+0xe6>
 80072fe:	f04f 0e00 	mov.w	lr, #0
 8007302:	f1dc 0c00 	rsbs	ip, ip, #0
 8007306:	eb7e 0000 	sbcs.w	r0, lr, r0
 800730a:	eb6e 0101 	sbc.w	r1, lr, r1
 800730e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8007312:	d31b      	bcc.n	800734c <__adddf3+0x124>
 8007314:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8007318:	d30c      	bcc.n	8007334 <__adddf3+0x10c>
 800731a:	0849      	lsrs	r1, r1, #1
 800731c:	ea5f 0030 	movs.w	r0, r0, rrx
 8007320:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8007324:	f104 0401 	add.w	r4, r4, #1
 8007328:	ea4f 5244 	mov.w	r2, r4, lsl #21
 800732c:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8007330:	f080 809a 	bcs.w	8007468 <__adddf3+0x240>
 8007334:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8007338:	bf08      	it	eq
 800733a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800733e:	f150 0000 	adcs.w	r0, r0, #0
 8007342:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8007346:	ea41 0105 	orr.w	r1, r1, r5
 800734a:	bd30      	pop	{r4, r5, pc}
 800734c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8007350:	4140      	adcs	r0, r0
 8007352:	eb41 0101 	adc.w	r1, r1, r1
 8007356:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 800735a:	f1a4 0401 	sub.w	r4, r4, #1
 800735e:	d1e9      	bne.n	8007334 <__adddf3+0x10c>
 8007360:	f091 0f00 	teq	r1, #0
 8007364:	bf04      	itt	eq
 8007366:	4601      	moveq	r1, r0
 8007368:	2000      	moveq	r0, #0
 800736a:	fab1 f381 	clz	r3, r1
 800736e:	bf08      	it	eq
 8007370:	3320      	addeq	r3, #32
 8007372:	f1a3 030b 	sub.w	r3, r3, #11
 8007376:	f1b3 0220 	subs.w	r2, r3, #32
 800737a:	da0c      	bge.n	8007396 <__adddf3+0x16e>
 800737c:	320c      	adds	r2, #12
 800737e:	dd08      	ble.n	8007392 <__adddf3+0x16a>
 8007380:	f102 0c14 	add.w	ip, r2, #20
 8007384:	f1c2 020c 	rsb	r2, r2, #12
 8007388:	fa01 f00c 	lsl.w	r0, r1, ip
 800738c:	fa21 f102 	lsr.w	r1, r1, r2
 8007390:	e00c      	b.n	80073ac <__adddf3+0x184>
 8007392:	f102 0214 	add.w	r2, r2, #20
 8007396:	bfd8      	it	le
 8007398:	f1c2 0c20 	rsble	ip, r2, #32
 800739c:	fa01 f102 	lsl.w	r1, r1, r2
 80073a0:	fa20 fc0c 	lsr.w	ip, r0, ip
 80073a4:	bfdc      	itt	le
 80073a6:	ea41 010c 	orrle.w	r1, r1, ip
 80073aa:	4090      	lslle	r0, r2
 80073ac:	1ae4      	subs	r4, r4, r3
 80073ae:	bfa2      	ittt	ge
 80073b0:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 80073b4:	4329      	orrge	r1, r5
 80073b6:	bd30      	popge	{r4, r5, pc}
 80073b8:	ea6f 0404 	mvn.w	r4, r4
 80073bc:	3c1f      	subs	r4, #31
 80073be:	da1c      	bge.n	80073fa <__adddf3+0x1d2>
 80073c0:	340c      	adds	r4, #12
 80073c2:	dc0e      	bgt.n	80073e2 <__adddf3+0x1ba>
 80073c4:	f104 0414 	add.w	r4, r4, #20
 80073c8:	f1c4 0220 	rsb	r2, r4, #32
 80073cc:	fa20 f004 	lsr.w	r0, r0, r4
 80073d0:	fa01 f302 	lsl.w	r3, r1, r2
 80073d4:	ea40 0003 	orr.w	r0, r0, r3
 80073d8:	fa21 f304 	lsr.w	r3, r1, r4
 80073dc:	ea45 0103 	orr.w	r1, r5, r3
 80073e0:	bd30      	pop	{r4, r5, pc}
 80073e2:	f1c4 040c 	rsb	r4, r4, #12
 80073e6:	f1c4 0220 	rsb	r2, r4, #32
 80073ea:	fa20 f002 	lsr.w	r0, r0, r2
 80073ee:	fa01 f304 	lsl.w	r3, r1, r4
 80073f2:	ea40 0003 	orr.w	r0, r0, r3
 80073f6:	4629      	mov	r1, r5
 80073f8:	bd30      	pop	{r4, r5, pc}
 80073fa:	fa21 f004 	lsr.w	r0, r1, r4
 80073fe:	4629      	mov	r1, r5
 8007400:	bd30      	pop	{r4, r5, pc}
 8007402:	f094 0f00 	teq	r4, #0
 8007406:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 800740a:	bf06      	itte	eq
 800740c:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8007410:	3401      	addeq	r4, #1
 8007412:	3d01      	subne	r5, #1
 8007414:	e74e      	b.n	80072b4 <__adddf3+0x8c>
 8007416:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800741a:	bf18      	it	ne
 800741c:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8007420:	d029      	beq.n	8007476 <__adddf3+0x24e>
 8007422:	ea94 0f05 	teq	r4, r5
 8007426:	bf08      	it	eq
 8007428:	ea90 0f02 	teqeq	r0, r2
 800742c:	d005      	beq.n	800743a <__adddf3+0x212>
 800742e:	ea54 0c00 	orrs.w	ip, r4, r0
 8007432:	bf04      	itt	eq
 8007434:	4619      	moveq	r1, r3
 8007436:	4610      	moveq	r0, r2
 8007438:	bd30      	pop	{r4, r5, pc}
 800743a:	ea91 0f03 	teq	r1, r3
 800743e:	bf1e      	ittt	ne
 8007440:	2100      	movne	r1, #0
 8007442:	2000      	movne	r0, #0
 8007444:	bd30      	popne	{r4, r5, pc}
 8007446:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 800744a:	d105      	bne.n	8007458 <__adddf3+0x230>
 800744c:	0040      	lsls	r0, r0, #1
 800744e:	4149      	adcs	r1, r1
 8007450:	bf28      	it	cs
 8007452:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8007456:	bd30      	pop	{r4, r5, pc}
 8007458:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 800745c:	bf3c      	itt	cc
 800745e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8007462:	bd30      	popcc	{r4, r5, pc}
 8007464:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8007468:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 800746c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8007470:	f04f 0000 	mov.w	r0, #0
 8007474:	bd30      	pop	{r4, r5, pc}
 8007476:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800747a:	bf1a      	itte	ne
 800747c:	4619      	movne	r1, r3
 800747e:	4610      	movne	r0, r2
 8007480:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8007484:	bf1c      	itt	ne
 8007486:	460b      	movne	r3, r1
 8007488:	4602      	movne	r2, r0
 800748a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 800748e:	bf06      	itte	eq
 8007490:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8007494:	ea91 0f03 	teqeq	r1, r3
 8007498:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 800749c:	bd30      	pop	{r4, r5, pc}
 800749e:	bf00      	nop

080074a0 <__aeabi_ui2d>:
 80074a0:	f090 0f00 	teq	r0, #0
 80074a4:	bf04      	itt	eq
 80074a6:	2100      	moveq	r1, #0
 80074a8:	4770      	bxeq	lr
 80074aa:	b530      	push	{r4, r5, lr}
 80074ac:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80074b0:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80074b4:	f04f 0500 	mov.w	r5, #0
 80074b8:	f04f 0100 	mov.w	r1, #0
 80074bc:	e750      	b.n	8007360 <__adddf3+0x138>
 80074be:	bf00      	nop

080074c0 <__aeabi_i2d>:
 80074c0:	f090 0f00 	teq	r0, #0
 80074c4:	bf04      	itt	eq
 80074c6:	2100      	moveq	r1, #0
 80074c8:	4770      	bxeq	lr
 80074ca:	b530      	push	{r4, r5, lr}
 80074cc:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80074d0:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80074d4:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 80074d8:	bf48      	it	mi
 80074da:	4240      	negmi	r0, r0
 80074dc:	f04f 0100 	mov.w	r1, #0
 80074e0:	e73e      	b.n	8007360 <__adddf3+0x138>
 80074e2:	bf00      	nop

080074e4 <__aeabi_f2d>:
 80074e4:	0042      	lsls	r2, r0, #1
 80074e6:	ea4f 01e2 	mov.w	r1, r2, asr #3
 80074ea:	ea4f 0131 	mov.w	r1, r1, rrx
 80074ee:	ea4f 7002 	mov.w	r0, r2, lsl #28
 80074f2:	bf1f      	itttt	ne
 80074f4:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 80074f8:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 80074fc:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8007500:	4770      	bxne	lr
 8007502:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8007506:	bf08      	it	eq
 8007508:	4770      	bxeq	lr
 800750a:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 800750e:	bf04      	itt	eq
 8007510:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8007514:	4770      	bxeq	lr
 8007516:	b530      	push	{r4, r5, lr}
 8007518:	f44f 7460 	mov.w	r4, #896	; 0x380
 800751c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8007520:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8007524:	e71c      	b.n	8007360 <__adddf3+0x138>
 8007526:	bf00      	nop

08007528 <__aeabi_ul2d>:
 8007528:	ea50 0201 	orrs.w	r2, r0, r1
 800752c:	bf08      	it	eq
 800752e:	4770      	bxeq	lr
 8007530:	b530      	push	{r4, r5, lr}
 8007532:	f04f 0500 	mov.w	r5, #0
 8007536:	e00a      	b.n	800754e <__aeabi_l2d+0x16>

08007538 <__aeabi_l2d>:
 8007538:	ea50 0201 	orrs.w	r2, r0, r1
 800753c:	bf08      	it	eq
 800753e:	4770      	bxeq	lr
 8007540:	b530      	push	{r4, r5, lr}
 8007542:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8007546:	d502      	bpl.n	800754e <__aeabi_l2d+0x16>
 8007548:	4240      	negs	r0, r0
 800754a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800754e:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8007552:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8007556:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800755a:	f43f aed8 	beq.w	800730e <__adddf3+0xe6>
 800755e:	f04f 0203 	mov.w	r2, #3
 8007562:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8007566:	bf18      	it	ne
 8007568:	3203      	addne	r2, #3
 800756a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800756e:	bf18      	it	ne
 8007570:	3203      	addne	r2, #3
 8007572:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8007576:	f1c2 0320 	rsb	r3, r2, #32
 800757a:	fa00 fc03 	lsl.w	ip, r0, r3
 800757e:	fa20 f002 	lsr.w	r0, r0, r2
 8007582:	fa01 fe03 	lsl.w	lr, r1, r3
 8007586:	ea40 000e 	orr.w	r0, r0, lr
 800758a:	fa21 f102 	lsr.w	r1, r1, r2
 800758e:	4414      	add	r4, r2
 8007590:	e6bd      	b.n	800730e <__adddf3+0xe6>
 8007592:	bf00      	nop

08007594 <__aeabi_dmul>:
 8007594:	b570      	push	{r4, r5, r6, lr}
 8007596:	f04f 0cff 	mov.w	ip, #255	; 0xff
 800759a:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 800759e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80075a2:	bf1d      	ittte	ne
 80075a4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80075a8:	ea94 0f0c 	teqne	r4, ip
 80075ac:	ea95 0f0c 	teqne	r5, ip
 80075b0:	f000 f8de 	bleq	8007770 <__aeabi_dmul+0x1dc>
 80075b4:	442c      	add	r4, r5
 80075b6:	ea81 0603 	eor.w	r6, r1, r3
 80075ba:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80075be:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 80075c2:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 80075c6:	bf18      	it	ne
 80075c8:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 80075cc:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80075d0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80075d4:	d038      	beq.n	8007648 <__aeabi_dmul+0xb4>
 80075d6:	fba0 ce02 	umull	ip, lr, r0, r2
 80075da:	f04f 0500 	mov.w	r5, #0
 80075de:	fbe1 e502 	umlal	lr, r5, r1, r2
 80075e2:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 80075e6:	fbe0 e503 	umlal	lr, r5, r0, r3
 80075ea:	f04f 0600 	mov.w	r6, #0
 80075ee:	fbe1 5603 	umlal	r5, r6, r1, r3
 80075f2:	f09c 0f00 	teq	ip, #0
 80075f6:	bf18      	it	ne
 80075f8:	f04e 0e01 	orrne.w	lr, lr, #1
 80075fc:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8007600:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8007604:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8007608:	d204      	bcs.n	8007614 <__aeabi_dmul+0x80>
 800760a:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 800760e:	416d      	adcs	r5, r5
 8007610:	eb46 0606 	adc.w	r6, r6, r6
 8007614:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8007618:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 800761c:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8007620:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8007624:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8007628:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 800762c:	bf88      	it	hi
 800762e:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8007632:	d81e      	bhi.n	8007672 <__aeabi_dmul+0xde>
 8007634:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8007638:	bf08      	it	eq
 800763a:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 800763e:	f150 0000 	adcs.w	r0, r0, #0
 8007642:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8007646:	bd70      	pop	{r4, r5, r6, pc}
 8007648:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 800764c:	ea46 0101 	orr.w	r1, r6, r1
 8007650:	ea40 0002 	orr.w	r0, r0, r2
 8007654:	ea81 0103 	eor.w	r1, r1, r3
 8007658:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 800765c:	bfc2      	ittt	gt
 800765e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8007662:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8007666:	bd70      	popgt	{r4, r5, r6, pc}
 8007668:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800766c:	f04f 0e00 	mov.w	lr, #0
 8007670:	3c01      	subs	r4, #1
 8007672:	f300 80ab 	bgt.w	80077cc <__aeabi_dmul+0x238>
 8007676:	f114 0f36 	cmn.w	r4, #54	; 0x36
 800767a:	bfde      	ittt	le
 800767c:	2000      	movle	r0, #0
 800767e:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8007682:	bd70      	pople	{r4, r5, r6, pc}
 8007684:	f1c4 0400 	rsb	r4, r4, #0
 8007688:	3c20      	subs	r4, #32
 800768a:	da35      	bge.n	80076f8 <__aeabi_dmul+0x164>
 800768c:	340c      	adds	r4, #12
 800768e:	dc1b      	bgt.n	80076c8 <__aeabi_dmul+0x134>
 8007690:	f104 0414 	add.w	r4, r4, #20
 8007694:	f1c4 0520 	rsb	r5, r4, #32
 8007698:	fa00 f305 	lsl.w	r3, r0, r5
 800769c:	fa20 f004 	lsr.w	r0, r0, r4
 80076a0:	fa01 f205 	lsl.w	r2, r1, r5
 80076a4:	ea40 0002 	orr.w	r0, r0, r2
 80076a8:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 80076ac:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80076b0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80076b4:	fa21 f604 	lsr.w	r6, r1, r4
 80076b8:	eb42 0106 	adc.w	r1, r2, r6
 80076bc:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80076c0:	bf08      	it	eq
 80076c2:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80076c6:	bd70      	pop	{r4, r5, r6, pc}
 80076c8:	f1c4 040c 	rsb	r4, r4, #12
 80076cc:	f1c4 0520 	rsb	r5, r4, #32
 80076d0:	fa00 f304 	lsl.w	r3, r0, r4
 80076d4:	fa20 f005 	lsr.w	r0, r0, r5
 80076d8:	fa01 f204 	lsl.w	r2, r1, r4
 80076dc:	ea40 0002 	orr.w	r0, r0, r2
 80076e0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80076e4:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 80076e8:	f141 0100 	adc.w	r1, r1, #0
 80076ec:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 80076f0:	bf08      	it	eq
 80076f2:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 80076f6:	bd70      	pop	{r4, r5, r6, pc}
 80076f8:	f1c4 0520 	rsb	r5, r4, #32
 80076fc:	fa00 f205 	lsl.w	r2, r0, r5
 8007700:	ea4e 0e02 	orr.w	lr, lr, r2
 8007704:	fa20 f304 	lsr.w	r3, r0, r4
 8007708:	fa01 f205 	lsl.w	r2, r1, r5
 800770c:	ea43 0302 	orr.w	r3, r3, r2
 8007710:	fa21 f004 	lsr.w	r0, r1, r4
 8007714:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8007718:	fa21 f204 	lsr.w	r2, r1, r4
 800771c:	ea20 0002 	bic.w	r0, r0, r2
 8007720:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8007724:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8007728:	bf08      	it	eq
 800772a:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 800772e:	bd70      	pop	{r4, r5, r6, pc}
 8007730:	f094 0f00 	teq	r4, #0
 8007734:	d10f      	bne.n	8007756 <__aeabi_dmul+0x1c2>
 8007736:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 800773a:	0040      	lsls	r0, r0, #1
 800773c:	eb41 0101 	adc.w	r1, r1, r1
 8007740:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8007744:	bf08      	it	eq
 8007746:	3c01      	subeq	r4, #1
 8007748:	d0f7      	beq.n	800773a <__aeabi_dmul+0x1a6>
 800774a:	ea41 0106 	orr.w	r1, r1, r6
 800774e:	f095 0f00 	teq	r5, #0
 8007752:	bf18      	it	ne
 8007754:	4770      	bxne	lr
 8007756:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 800775a:	0052      	lsls	r2, r2, #1
 800775c:	eb43 0303 	adc.w	r3, r3, r3
 8007760:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8007764:	bf08      	it	eq
 8007766:	3d01      	subeq	r5, #1
 8007768:	d0f7      	beq.n	800775a <__aeabi_dmul+0x1c6>
 800776a:	ea43 0306 	orr.w	r3, r3, r6
 800776e:	4770      	bx	lr
 8007770:	ea94 0f0c 	teq	r4, ip
 8007774:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8007778:	bf18      	it	ne
 800777a:	ea95 0f0c 	teqne	r5, ip
 800777e:	d00c      	beq.n	800779a <__aeabi_dmul+0x206>
 8007780:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8007784:	bf18      	it	ne
 8007786:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 800778a:	d1d1      	bne.n	8007730 <__aeabi_dmul+0x19c>
 800778c:	ea81 0103 	eor.w	r1, r1, r3
 8007790:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8007794:	f04f 0000 	mov.w	r0, #0
 8007798:	bd70      	pop	{r4, r5, r6, pc}
 800779a:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800779e:	bf06      	itte	eq
 80077a0:	4610      	moveq	r0, r2
 80077a2:	4619      	moveq	r1, r3
 80077a4:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80077a8:	d019      	beq.n	80077de <__aeabi_dmul+0x24a>
 80077aa:	ea94 0f0c 	teq	r4, ip
 80077ae:	d102      	bne.n	80077b6 <__aeabi_dmul+0x222>
 80077b0:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 80077b4:	d113      	bne.n	80077de <__aeabi_dmul+0x24a>
 80077b6:	ea95 0f0c 	teq	r5, ip
 80077ba:	d105      	bne.n	80077c8 <__aeabi_dmul+0x234>
 80077bc:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 80077c0:	bf1c      	itt	ne
 80077c2:	4610      	movne	r0, r2
 80077c4:	4619      	movne	r1, r3
 80077c6:	d10a      	bne.n	80077de <__aeabi_dmul+0x24a>
 80077c8:	ea81 0103 	eor.w	r1, r1, r3
 80077cc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 80077d0:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80077d4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80077d8:	f04f 0000 	mov.w	r0, #0
 80077dc:	bd70      	pop	{r4, r5, r6, pc}
 80077de:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 80077e2:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 80077e6:	bd70      	pop	{r4, r5, r6, pc}

080077e8 <__aeabi_ddiv>:
 80077e8:	b570      	push	{r4, r5, r6, lr}
 80077ea:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80077ee:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80077f2:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80077f6:	bf1d      	ittte	ne
 80077f8:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80077fc:	ea94 0f0c 	teqne	r4, ip
 8007800:	ea95 0f0c 	teqne	r5, ip
 8007804:	f000 f8a7 	bleq	8007956 <__aeabi_ddiv+0x16e>
 8007808:	eba4 0405 	sub.w	r4, r4, r5
 800780c:	ea81 0e03 	eor.w	lr, r1, r3
 8007810:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8007814:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8007818:	f000 8088 	beq.w	800792c <__aeabi_ddiv+0x144>
 800781c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8007820:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8007824:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8007828:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 800782c:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8007830:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8007834:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8007838:	ea4f 2600 	mov.w	r6, r0, lsl #8
 800783c:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8007840:	429d      	cmp	r5, r3
 8007842:	bf08      	it	eq
 8007844:	4296      	cmpeq	r6, r2
 8007846:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 800784a:	f504 7440 	add.w	r4, r4, #768	; 0x300
 800784e:	d202      	bcs.n	8007856 <__aeabi_ddiv+0x6e>
 8007850:	085b      	lsrs	r3, r3, #1
 8007852:	ea4f 0232 	mov.w	r2, r2, rrx
 8007856:	1ab6      	subs	r6, r6, r2
 8007858:	eb65 0503 	sbc.w	r5, r5, r3
 800785c:	085b      	lsrs	r3, r3, #1
 800785e:	ea4f 0232 	mov.w	r2, r2, rrx
 8007862:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8007866:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 800786a:	ebb6 0e02 	subs.w	lr, r6, r2
 800786e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8007872:	bf22      	ittt	cs
 8007874:	1ab6      	subcs	r6, r6, r2
 8007876:	4675      	movcs	r5, lr
 8007878:	ea40 000c 	orrcs.w	r0, r0, ip
 800787c:	085b      	lsrs	r3, r3, #1
 800787e:	ea4f 0232 	mov.w	r2, r2, rrx
 8007882:	ebb6 0e02 	subs.w	lr, r6, r2
 8007886:	eb75 0e03 	sbcs.w	lr, r5, r3
 800788a:	bf22      	ittt	cs
 800788c:	1ab6      	subcs	r6, r6, r2
 800788e:	4675      	movcs	r5, lr
 8007890:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8007894:	085b      	lsrs	r3, r3, #1
 8007896:	ea4f 0232 	mov.w	r2, r2, rrx
 800789a:	ebb6 0e02 	subs.w	lr, r6, r2
 800789e:	eb75 0e03 	sbcs.w	lr, r5, r3
 80078a2:	bf22      	ittt	cs
 80078a4:	1ab6      	subcs	r6, r6, r2
 80078a6:	4675      	movcs	r5, lr
 80078a8:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 80078ac:	085b      	lsrs	r3, r3, #1
 80078ae:	ea4f 0232 	mov.w	r2, r2, rrx
 80078b2:	ebb6 0e02 	subs.w	lr, r6, r2
 80078b6:	eb75 0e03 	sbcs.w	lr, r5, r3
 80078ba:	bf22      	ittt	cs
 80078bc:	1ab6      	subcs	r6, r6, r2
 80078be:	4675      	movcs	r5, lr
 80078c0:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 80078c4:	ea55 0e06 	orrs.w	lr, r5, r6
 80078c8:	d018      	beq.n	80078fc <__aeabi_ddiv+0x114>
 80078ca:	ea4f 1505 	mov.w	r5, r5, lsl #4
 80078ce:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 80078d2:	ea4f 1606 	mov.w	r6, r6, lsl #4
 80078d6:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 80078da:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 80078de:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 80078e2:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 80078e6:	d1c0      	bne.n	800786a <__aeabi_ddiv+0x82>
 80078e8:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80078ec:	d10b      	bne.n	8007906 <__aeabi_ddiv+0x11e>
 80078ee:	ea41 0100 	orr.w	r1, r1, r0
 80078f2:	f04f 0000 	mov.w	r0, #0
 80078f6:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 80078fa:	e7b6      	b.n	800786a <__aeabi_ddiv+0x82>
 80078fc:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8007900:	bf04      	itt	eq
 8007902:	4301      	orreq	r1, r0
 8007904:	2000      	moveq	r0, #0
 8007906:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 800790a:	bf88      	it	hi
 800790c:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8007910:	f63f aeaf 	bhi.w	8007672 <__aeabi_dmul+0xde>
 8007914:	ebb5 0c03 	subs.w	ip, r5, r3
 8007918:	bf04      	itt	eq
 800791a:	ebb6 0c02 	subseq.w	ip, r6, r2
 800791e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8007922:	f150 0000 	adcs.w	r0, r0, #0
 8007926:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 800792a:	bd70      	pop	{r4, r5, r6, pc}
 800792c:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8007930:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8007934:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8007938:	bfc2      	ittt	gt
 800793a:	ebd4 050c 	rsbsgt	r5, r4, ip
 800793e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8007942:	bd70      	popgt	{r4, r5, r6, pc}
 8007944:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8007948:	f04f 0e00 	mov.w	lr, #0
 800794c:	3c01      	subs	r4, #1
 800794e:	e690      	b.n	8007672 <__aeabi_dmul+0xde>
 8007950:	ea45 0e06 	orr.w	lr, r5, r6
 8007954:	e68d      	b.n	8007672 <__aeabi_dmul+0xde>
 8007956:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 800795a:	ea94 0f0c 	teq	r4, ip
 800795e:	bf08      	it	eq
 8007960:	ea95 0f0c 	teqeq	r5, ip
 8007964:	f43f af3b 	beq.w	80077de <__aeabi_dmul+0x24a>
 8007968:	ea94 0f0c 	teq	r4, ip
 800796c:	d10a      	bne.n	8007984 <__aeabi_ddiv+0x19c>
 800796e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8007972:	f47f af34 	bne.w	80077de <__aeabi_dmul+0x24a>
 8007976:	ea95 0f0c 	teq	r5, ip
 800797a:	f47f af25 	bne.w	80077c8 <__aeabi_dmul+0x234>
 800797e:	4610      	mov	r0, r2
 8007980:	4619      	mov	r1, r3
 8007982:	e72c      	b.n	80077de <__aeabi_dmul+0x24a>
 8007984:	ea95 0f0c 	teq	r5, ip
 8007988:	d106      	bne.n	8007998 <__aeabi_ddiv+0x1b0>
 800798a:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 800798e:	f43f aefd 	beq.w	800778c <__aeabi_dmul+0x1f8>
 8007992:	4610      	mov	r0, r2
 8007994:	4619      	mov	r1, r3
 8007996:	e722      	b.n	80077de <__aeabi_dmul+0x24a>
 8007998:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 800799c:	bf18      	it	ne
 800799e:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 80079a2:	f47f aec5 	bne.w	8007730 <__aeabi_dmul+0x19c>
 80079a6:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 80079aa:	f47f af0d 	bne.w	80077c8 <__aeabi_dmul+0x234>
 80079ae:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 80079b2:	f47f aeeb 	bne.w	800778c <__aeabi_dmul+0x1f8>
 80079b6:	e712      	b.n	80077de <__aeabi_dmul+0x24a>

080079b8 <__gedf2>:
 80079b8:	f04f 3cff 	mov.w	ip, #4294967295
 80079bc:	e006      	b.n	80079cc <__cmpdf2+0x4>
 80079be:	bf00      	nop

080079c0 <__ledf2>:
 80079c0:	f04f 0c01 	mov.w	ip, #1
 80079c4:	e002      	b.n	80079cc <__cmpdf2+0x4>
 80079c6:	bf00      	nop

080079c8 <__cmpdf2>:
 80079c8:	f04f 0c01 	mov.w	ip, #1
 80079cc:	f84d cd04 	str.w	ip, [sp, #-4]!
 80079d0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80079d4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80079d8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80079dc:	bf18      	it	ne
 80079de:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 80079e2:	d01b      	beq.n	8007a1c <__cmpdf2+0x54>
 80079e4:	b001      	add	sp, #4
 80079e6:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 80079ea:	bf0c      	ite	eq
 80079ec:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 80079f0:	ea91 0f03 	teqne	r1, r3
 80079f4:	bf02      	ittt	eq
 80079f6:	ea90 0f02 	teqeq	r0, r2
 80079fa:	2000      	moveq	r0, #0
 80079fc:	4770      	bxeq	lr
 80079fe:	f110 0f00 	cmn.w	r0, #0
 8007a02:	ea91 0f03 	teq	r1, r3
 8007a06:	bf58      	it	pl
 8007a08:	4299      	cmppl	r1, r3
 8007a0a:	bf08      	it	eq
 8007a0c:	4290      	cmpeq	r0, r2
 8007a0e:	bf2c      	ite	cs
 8007a10:	17d8      	asrcs	r0, r3, #31
 8007a12:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8007a16:	f040 0001 	orr.w	r0, r0, #1
 8007a1a:	4770      	bx	lr
 8007a1c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8007a20:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8007a24:	d102      	bne.n	8007a2c <__cmpdf2+0x64>
 8007a26:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8007a2a:	d107      	bne.n	8007a3c <__cmpdf2+0x74>
 8007a2c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8007a30:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8007a34:	d1d6      	bne.n	80079e4 <__cmpdf2+0x1c>
 8007a36:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8007a3a:	d0d3      	beq.n	80079e4 <__cmpdf2+0x1c>
 8007a3c:	f85d 0b04 	ldr.w	r0, [sp], #4
 8007a40:	4770      	bx	lr
 8007a42:	bf00      	nop

08007a44 <__aeabi_cdrcmple>:
 8007a44:	4684      	mov	ip, r0
 8007a46:	4610      	mov	r0, r2
 8007a48:	4662      	mov	r2, ip
 8007a4a:	468c      	mov	ip, r1
 8007a4c:	4619      	mov	r1, r3
 8007a4e:	4663      	mov	r3, ip
 8007a50:	e000      	b.n	8007a54 <__aeabi_cdcmpeq>
 8007a52:	bf00      	nop

08007a54 <__aeabi_cdcmpeq>:
 8007a54:	b501      	push	{r0, lr}
 8007a56:	f7ff ffb7 	bl	80079c8 <__cmpdf2>
 8007a5a:	2800      	cmp	r0, #0
 8007a5c:	bf48      	it	mi
 8007a5e:	f110 0f00 	cmnmi.w	r0, #0
 8007a62:	bd01      	pop	{r0, pc}

08007a64 <__aeabi_dcmpeq>:
 8007a64:	f84d ed08 	str.w	lr, [sp, #-8]!
 8007a68:	f7ff fff4 	bl	8007a54 <__aeabi_cdcmpeq>
 8007a6c:	bf0c      	ite	eq
 8007a6e:	2001      	moveq	r0, #1
 8007a70:	2000      	movne	r0, #0
 8007a72:	f85d fb08 	ldr.w	pc, [sp], #8
 8007a76:	bf00      	nop

08007a78 <__aeabi_dcmplt>:
 8007a78:	f84d ed08 	str.w	lr, [sp, #-8]!
 8007a7c:	f7ff ffea 	bl	8007a54 <__aeabi_cdcmpeq>
 8007a80:	bf34      	ite	cc
 8007a82:	2001      	movcc	r0, #1
 8007a84:	2000      	movcs	r0, #0
 8007a86:	f85d fb08 	ldr.w	pc, [sp], #8
 8007a8a:	bf00      	nop

08007a8c <__aeabi_dcmple>:
 8007a8c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8007a90:	f7ff ffe0 	bl	8007a54 <__aeabi_cdcmpeq>
 8007a94:	bf94      	ite	ls
 8007a96:	2001      	movls	r0, #1
 8007a98:	2000      	movhi	r0, #0
 8007a9a:	f85d fb08 	ldr.w	pc, [sp], #8
 8007a9e:	bf00      	nop

08007aa0 <__aeabi_dcmpge>:
 8007aa0:	f84d ed08 	str.w	lr, [sp, #-8]!
 8007aa4:	f7ff ffce 	bl	8007a44 <__aeabi_cdrcmple>
 8007aa8:	bf94      	ite	ls
 8007aaa:	2001      	movls	r0, #1
 8007aac:	2000      	movhi	r0, #0
 8007aae:	f85d fb08 	ldr.w	pc, [sp], #8
 8007ab2:	bf00      	nop

08007ab4 <__aeabi_dcmpgt>:
 8007ab4:	f84d ed08 	str.w	lr, [sp, #-8]!
 8007ab8:	f7ff ffc4 	bl	8007a44 <__aeabi_cdrcmple>
 8007abc:	bf34      	ite	cc
 8007abe:	2001      	movcc	r0, #1
 8007ac0:	2000      	movcs	r0, #0
 8007ac2:	f85d fb08 	ldr.w	pc, [sp], #8
 8007ac6:	bf00      	nop

08007ac8 <__aeabi_dcmpun>:
 8007ac8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8007acc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8007ad0:	d102      	bne.n	8007ad8 <__aeabi_dcmpun+0x10>
 8007ad2:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8007ad6:	d10a      	bne.n	8007aee <__aeabi_dcmpun+0x26>
 8007ad8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8007adc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8007ae0:	d102      	bne.n	8007ae8 <__aeabi_dcmpun+0x20>
 8007ae2:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8007ae6:	d102      	bne.n	8007aee <__aeabi_dcmpun+0x26>
 8007ae8:	f04f 0000 	mov.w	r0, #0
 8007aec:	4770      	bx	lr
 8007aee:	f04f 0001 	mov.w	r0, #1
 8007af2:	4770      	bx	lr

08007af4 <__aeabi_d2iz>:
 8007af4:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8007af8:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8007afc:	d215      	bcs.n	8007b2a <__aeabi_d2iz+0x36>
 8007afe:	d511      	bpl.n	8007b24 <__aeabi_d2iz+0x30>
 8007b00:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8007b04:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8007b08:	d912      	bls.n	8007b30 <__aeabi_d2iz+0x3c>
 8007b0a:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8007b0e:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8007b12:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8007b16:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8007b1a:	fa23 f002 	lsr.w	r0, r3, r2
 8007b1e:	bf18      	it	ne
 8007b20:	4240      	negne	r0, r0
 8007b22:	4770      	bx	lr
 8007b24:	f04f 0000 	mov.w	r0, #0
 8007b28:	4770      	bx	lr
 8007b2a:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8007b2e:	d105      	bne.n	8007b3c <__aeabi_d2iz+0x48>
 8007b30:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8007b34:	bf08      	it	eq
 8007b36:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8007b3a:	4770      	bx	lr
 8007b3c:	f04f 0000 	mov.w	r0, #0
 8007b40:	4770      	bx	lr
 8007b42:	bf00      	nop

08007b44 <_init>:
 8007b44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007b46:	bf00      	nop
 8007b48:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007b4a:	bc08      	pop	{r3}
 8007b4c:	469e      	mov	lr, r3
 8007b4e:	4770      	bx	lr

08007b50 <_fini>:
 8007b50:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007b52:	bf00      	nop
 8007b54:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007b56:	bc08      	pop	{r3}
 8007b58:	469e      	mov	lr, r3
 8007b5a:	4770      	bx	lr
 8007b5c:	706c6568 	.word	0x706c6568
 8007b60:	00000000 	.word	0x00000000
 8007b64:	776f6873 	.word	0x776f6873
 8007b68:	6c6c6120 	.word	0x6c6c6120
 8007b6c:	6d6f6320 	.word	0x6d6f6320
 8007b70:	646e616d 	.word	0x646e616d
 8007b74:	00000073 	.word	0x00000073
 8007b78:	2d200d0a 	.word	0x2d200d0a
 8007b7c:	4155202d 	.word	0x4155202d
 8007b80:	50205452 	.word	0x50205452
 8007b84:	746e6972 	.word	0x746e6972
 8007b88:	78452066 	.word	0x78452066
 8007b8c:	6c706d61 	.word	0x6c706d61
 8007b90:	72203a65 	.word	0x72203a65
 8007b94:	72617465 	.word	0x72617465
 8007b98:	20746567 	.word	0x20746567
 8007b9c:	20656874 	.word	0x20656874
 8007ba0:	696c2043 	.word	0x696c2043
 8007ba4:	72617262 	.word	0x72617262
 8007ba8:	72702079 	.word	0x72702079
 8007bac:	66746e69 	.word	0x66746e69
 8007bb0:	6e756620 	.word	0x6e756620
 8007bb4:	6f697463 	.word	0x6f697463
 8007bb8:	6f74206e 	.word	0x6f74206e
 8007bbc:	65687420 	.word	0x65687420
 8007bc0:	52415520 	.word	0x52415520
 8007bc4:	000d0a54 	.word	0x000d0a54
 8007bc8:	40020000 	.word	0x40020000
 8007bcc:	00000001 	.word	0x00000001
 8007bd0:	40020000 	.word	0x40020000
 8007bd4:	00000002 	.word	0x00000002
 8007bd8:	40020000 	.word	0x40020000
 8007bdc:	00000010 	.word	0x00000010
 8007be0:	40020400 	.word	0x40020400
 8007be4:	00000001 	.word	0x00000001
 8007be8:	5d73255b 	.word	0x5d73255b
 8007bec:	0000000a 	.word	0x0000000a

08007bf0 <__func__.11144>:
 8007bf0:	64726148 6c756146 61485f74 656c646e     HardFault_Handle
 8007c00:	00000072                                r...

08007c04 <AHBPrescTable>:
	...
 8007c0c:	04030201 09080706                       ........

08007c14 <APBPrescTable>:
 8007c14:	00000000 04030201                       ........

08007c1c <flagBitshiftOffset.10106>:
 8007c1c:	16100600 16100600                       ........

08007c24 <_global_impure_ptr>:
 8007c24:	20000018 00464e49 00666e69 004e414e     ... INF.inf.NAN.
 8007c34:	006e616e 33323130 37363534 42413938     nan.0123456789AB
 8007c44:	46454443 00000000 33323130 37363534     CDEF....01234567
 8007c54:	62613938 66656463 00000000 6c756e28     89abcdef....(nul
 8007c64:	0000296c 00000030                       l)..0...

08007c6c <blanks.8566>:
 8007c6c:	20202020 20202020 20202020 20202020                     

08007c7c <zeroes.8567>:
 8007c7c:	30303030 30303030 30303030 30303030     0000000000000000
 8007c8c:	69666e49 7974696e 00000000 004e614e     Infinity....NaN.
 8007c9c:	00000000                                ....

08007ca0 <__mprec_bigtens>:
 8007ca0:	37e08000 4341c379 b5056e17 4693b8b5     ...7y.AC.n.....F
 8007cb0:	e93ff9f5 4d384f03 f9301d32 5a827748     ..?..O8M2.0.Hw.Z
 8007cc0:	7f73bf3c 75154fdd                       <.s..O.u

08007cc8 <__mprec_tens>:
 8007cc8:	00000000 3ff00000 00000000 40240000     .......?......$@
 8007cd8:	00000000 40590000 00000000 408f4000     ......Y@.....@.@
 8007ce8:	00000000 40c38800 00000000 40f86a00     .......@.....j.@
 8007cf8:	00000000 412e8480 00000000 416312d0     .......A......cA
 8007d08:	00000000 4197d784 00000000 41cdcd65     .......A....e..A
 8007d18:	20000000 4202a05f e8000000 42374876     ... _..B....vH7B
 8007d28:	a2000000 426d1a94 e5400000 42a2309c     ......mB..@..0.B
 8007d38:	1e900000 42d6bcc4 26340000 430c6bf5     .......B..4&.k.C
 8007d48:	37e08000 4341c379 85d8a000 43763457     ...7y.AC....W4vC
 8007d58:	674ec800 43abc16d 60913d00 43e158e4     ..Ngm..C.=.`.X.C
 8007d68:	78b58c40 4415af1d d6e2ef50 444b1ae4     @..x...DP.....KD
 8007d78:	064dd592 4480f0cf c7e14af6 44b52d02     ..M....D.J...-.D
 8007d88:	79d99db4 44ea7843                       ...yCx.D

08007d90 <p05.7367>:
 8007d90:	00000005 00000019 0000007d 00000043     ........}...C...
 8007da0:	49534f50 00000058 0000002e              POSIX.......

08007dac <_ctype_>:
 8007dac:	20202000 20202020 28282020 20282828     .         ((((( 
 8007dbc:	20202020 20202020 20202020 20202020                     
 8007dcc:	10108820 10101010 10101010 10101010      ...............
 8007ddc:	04040410 04040404 10040404 10101010     ................
 8007dec:	41411010 41414141 01010101 01010101     ..AAAAAA........
 8007dfc:	01010101 01010101 01010101 10101010     ................
 8007e0c:	42421010 42424242 02020202 02020202     ..BBBBBB........
 8007e1c:	02020202 02020202 02020202 10101010     ................
 8007e2c:	00000020 00000000 00000000 00000000      ...............
	...

08007eb0 <__EH_FRAME_BEGIN__>:
 8007eb0:	00000000                                ....
