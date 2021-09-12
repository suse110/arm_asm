
../../../../build/stm32f4xx/main/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <_stext>:
 8000000:	20017fff 	.word	0x20017fff
 8000004:	080034d1 	.word	0x080034d1
 8000008:	080033f5 	.word	0x080033f5
 800000c:	08002e35 	.word	0x08002e35
 8000010:	08003403 	.word	0x08003403
 8000014:	08003409 	.word	0x08003409
 8000018:	0800340f 	.word	0x0800340f
	...
 800002c:	08003415 	.word	0x08003415
 8000030:	08003423 	.word	0x08003423
 8000034:	00000000 	.word	0x00000000
 8000038:	08003521 	.word	0x08003521
 800003c:	08003431 	.word	0x08003431
 8000040:	08003521 	.word	0x08003521
 8000044:	08003521 	.word	0x08003521
 8000048:	08003521 	.word	0x08003521
 800004c:	08003521 	.word	0x08003521
 8000050:	08003521 	.word	0x08003521
 8000054:	08003521 	.word	0x08003521
 8000058:	08003521 	.word	0x08003521
 800005c:	08003521 	.word	0x08003521
 8000060:	08003521 	.word	0x08003521
 8000064:	08003521 	.word	0x08003521
 8000068:	08003521 	.word	0x08003521
 800006c:	08003521 	.word	0x08003521
 8000070:	08003521 	.word	0x08003521
 8000074:	08003521 	.word	0x08003521
 8000078:	08003521 	.word	0x08003521
 800007c:	08003521 	.word	0x08003521
 8000080:	08003521 	.word	0x08003521
 8000084:	08003521 	.word	0x08003521
 8000088:	08003521 	.word	0x08003521
	...
 800009c:	08003521 	.word	0x08003521
 80000a0:	08003521 	.word	0x08003521
 80000a4:	08003521 	.word	0x08003521
 80000a8:	08003521 	.word	0x08003521
 80000ac:	08003521 	.word	0x08003521
 80000b0:	08003521 	.word	0x08003521
 80000b4:	08003521 	.word	0x08003521
 80000b8:	08003521 	.word	0x08003521
 80000bc:	08003521 	.word	0x08003521
 80000c0:	08003521 	.word	0x08003521
 80000c4:	08003521 	.word	0x08003521
 80000c8:	08003521 	.word	0x08003521
 80000cc:	08003521 	.word	0x08003521
 80000d0:	08003521 	.word	0x08003521
 80000d4:	08003521 	.word	0x08003521
 80000d8:	08003521 	.word	0x08003521
 80000dc:	00000000 	.word	0x00000000
 80000e0:	08003521 	.word	0x08003521
 80000e4:	08003521 	.word	0x08003521
 80000e8:	08003521 	.word	0x08003521
	...
 80000fc:	08003521 	.word	0x08003521
 8000100:	00000000 	.word	0x00000000
 8000104:	08003521 	.word	0x08003521
 8000108:	08003521 	.word	0x08003521
 800010c:	08003521 	.word	0x08003521
	...
 8000120:	08003521 	.word	0x08003521
 8000124:	08003521 	.word	0x08003521
 8000128:	08003521 	.word	0x08003521
 800012c:	08003521 	.word	0x08003521
 8000130:	08003521 	.word	0x08003521
	...
 800014c:	08003521 	.word	0x08003521
 8000150:	08003521 	.word	0x08003521
 8000154:	08003521 	.word	0x08003521
 8000158:	08003521 	.word	0x08003521
 800015c:	08003521 	.word	0x08003521
 8000160:	08003521 	.word	0x08003521
 8000164:	08003521 	.word	0x08003521
	...
 8000184:	08003521 	.word	0x08003521
	...
 8000190:	08003521 	.word	0x08003521

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
 80001ac:	20000600 	.word	0x20000600
 80001b0:	00000000 	.word	0x00000000
 80001b4:	080045d8 	.word	0x080045d8

080001b8 <frame_dummy>:
 80001b8:	b508      	push	{r3, lr}
 80001ba:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <frame_dummy+0x10>)
 80001bc:	b11b      	cbz	r3, 80001c6 <frame_dummy+0xe>
 80001be:	4903      	ldr	r1, [pc, #12]	; (80001cc <frame_dummy+0x14>)
 80001c0:	4803      	ldr	r0, [pc, #12]	; (80001d0 <frame_dummy+0x18>)
 80001c2:	f3af 8000 	nop.w
 80001c6:	bd08      	pop	{r3, pc}
 80001c8:	00000000 	.word	0x00000000
 80001cc:	20000604 	.word	0x20000604
 80001d0:	080045d8 	.word	0x080045d8

080001d4 <HAL_Init>:
  *         need to ensure that the SysTick time base is always set to 1 millisecond
  *         to have correct HAL operation.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_Init(void)
{
 80001d4:	b580      	push	{r7, lr}
 80001d6:	af00      	add	r7, sp, #0
  /* Configure Flash prefetch, Instruction cache, Data cache */ 
#if (INSTRUCTION_CACHE_ENABLE != 0U)
  __HAL_FLASH_INSTRUCTION_CACHE_ENABLE();
 80001d8:	4b0e      	ldr	r3, [pc, #56]	; (8000214 <HAL_Init+0x40>)
 80001da:	681b      	ldr	r3, [r3, #0]
 80001dc:	4a0d      	ldr	r2, [pc, #52]	; (8000214 <HAL_Init+0x40>)
 80001de:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 80001e2:	6013      	str	r3, [r2, #0]
#endif /* INSTRUCTION_CACHE_ENABLE */

#if (DATA_CACHE_ENABLE != 0U)
  __HAL_FLASH_DATA_CACHE_ENABLE();
 80001e4:	4b0b      	ldr	r3, [pc, #44]	; (8000214 <HAL_Init+0x40>)
 80001e6:	681b      	ldr	r3, [r3, #0]
 80001e8:	4a0a      	ldr	r2, [pc, #40]	; (8000214 <HAL_Init+0x40>)
 80001ea:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80001ee:	6013      	str	r3, [r2, #0]
#endif /* DATA_CACHE_ENABLE */

#if (PREFETCH_ENABLE != 0U)
  __HAL_FLASH_PREFETCH_BUFFER_ENABLE();
 80001f0:	4b08      	ldr	r3, [pc, #32]	; (8000214 <HAL_Init+0x40>)
 80001f2:	681b      	ldr	r3, [r3, #0]
 80001f4:	4a07      	ldr	r2, [pc, #28]	; (8000214 <HAL_Init+0x40>)
 80001f6:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80001fa:	6013      	str	r3, [r2, #0]
#endif /* PREFETCH_ENABLE */

  /* Set Interrupt Group Priority */
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 80001fc:	2003      	movs	r0, #3
 80001fe:	f000 f933 	bl	8000468 <HAL_NVIC_SetPriorityGrouping>

  /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
  HAL_InitTick(TICK_INT_PRIORITY);
 8000202:	200f      	movs	r0, #15
 8000204:	f000 f808 	bl	8000218 <HAL_InitTick>

  /* Init the low level hardware */
  HAL_MspInit();
 8000208:	f000 f856 	bl	80002b8 <HAL_MspInit>

  /* Return function status */
  return HAL_OK;
 800020c:	2300      	movs	r3, #0
}
 800020e:	4618      	mov	r0, r3
 8000210:	bd80      	pop	{r7, pc}
 8000212:	bf00      	nop
 8000214:	40023c00 	.word	0x40023c00

08000218 <HAL_InitTick>:
  *       implementation  in user file.
  * @param TickPriority Tick interrupt priority.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
 8000218:	b580      	push	{r7, lr}
 800021a:	b082      	sub	sp, #8
 800021c:	af00      	add	r7, sp, #0
 800021e:	6078      	str	r0, [r7, #4]
  /* Configure the SysTick to have interrupt in 1ms time basis*/
  if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
 8000220:	4b12      	ldr	r3, [pc, #72]	; (800026c <HAL_InitTick+0x54>)
 8000222:	681a      	ldr	r2, [r3, #0]
 8000224:	4b12      	ldr	r3, [pc, #72]	; (8000270 <HAL_InitTick+0x58>)
 8000226:	781b      	ldrb	r3, [r3, #0]
 8000228:	4619      	mov	r1, r3
 800022a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800022e:	fbb3 f3f1 	udiv	r3, r3, r1
 8000232:	fbb2 f3f3 	udiv	r3, r2, r3
 8000236:	4618      	mov	r0, r3
 8000238:	f000 f94b 	bl	80004d2 <HAL_SYSTICK_Config>
 800023c:	4603      	mov	r3, r0
 800023e:	2b00      	cmp	r3, #0
 8000240:	d001      	beq.n	8000246 <HAL_InitTick+0x2e>
  {
    return HAL_ERROR;
 8000242:	2301      	movs	r3, #1
 8000244:	e00e      	b.n	8000264 <HAL_InitTick+0x4c>
  }

  /* Configure the SysTick IRQ priority */
  if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 8000246:	687b      	ldr	r3, [r7, #4]
 8000248:	2b0f      	cmp	r3, #15
 800024a:	d80a      	bhi.n	8000262 <HAL_InitTick+0x4a>
  {
    HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 800024c:	2200      	movs	r2, #0
 800024e:	6879      	ldr	r1, [r7, #4]
 8000250:	f04f 30ff 	mov.w	r0, #4294967295
 8000254:	f000 f913 	bl	800047e <HAL_NVIC_SetPriority>
    uwTickPrio = TickPriority;
 8000258:	4a06      	ldr	r2, [pc, #24]	; (8000274 <HAL_InitTick+0x5c>)
 800025a:	687b      	ldr	r3, [r7, #4]
 800025c:	6013      	str	r3, [r2, #0]
  {
    return HAL_ERROR;
  }

  /* Return function status */
  return HAL_OK;
 800025e:	2300      	movs	r3, #0
 8000260:	e000      	b.n	8000264 <HAL_InitTick+0x4c>
    return HAL_ERROR;
 8000262:	2301      	movs	r3, #1
}
 8000264:	4618      	mov	r0, r3
 8000266:	3708      	adds	r7, #8
 8000268:	46bd      	mov	sp, r7
 800026a:	bd80      	pop	{r7, pc}
 800026c:	20000008 	.word	0x20000008
 8000270:	20000004 	.word	0x20000004
 8000274:	20000000 	.word	0x20000000

08000278 <HAL_IncTick>:
 * @note This function is declared as __weak to be overwritten in case of other 
  *      implementations in user file.
  * @retval None
  */
__weak void HAL_IncTick(void)
{
 8000278:	b480      	push	{r7}
 800027a:	af00      	add	r7, sp, #0
  uwTick += uwTickFreq;
 800027c:	4b06      	ldr	r3, [pc, #24]	; (8000298 <HAL_IncTick+0x20>)
 800027e:	781b      	ldrb	r3, [r3, #0]
 8000280:	461a      	mov	r2, r3
 8000282:	4b06      	ldr	r3, [pc, #24]	; (800029c <HAL_IncTick+0x24>)
 8000284:	681b      	ldr	r3, [r3, #0]
 8000286:	4413      	add	r3, r2
 8000288:	4a04      	ldr	r2, [pc, #16]	; (800029c <HAL_IncTick+0x24>)
 800028a:	6013      	str	r3, [r2, #0]
}
 800028c:	bf00      	nop
 800028e:	46bd      	mov	sp, r7
 8000290:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000294:	4770      	bx	lr
 8000296:	bf00      	nop
 8000298:	20000004 	.word	0x20000004
 800029c:	200007a4 	.word	0x200007a4

080002a0 <HAL_GetTick>:
  * @note This function is declared as __weak to be overwritten in case of other 
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
 80002a0:	b480      	push	{r7}
 80002a2:	af00      	add	r7, sp, #0
  return uwTick;
 80002a4:	4b03      	ldr	r3, [pc, #12]	; (80002b4 <HAL_GetTick+0x14>)
 80002a6:	681b      	ldr	r3, [r3, #0]
}
 80002a8:	4618      	mov	r0, r3
 80002aa:	46bd      	mov	sp, r7
 80002ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002b0:	4770      	bx	lr
 80002b2:	bf00      	nop
 80002b4:	200007a4 	.word	0x200007a4

080002b8 <HAL_MspInit>:
  * @note   This function is called from HAL_Init() function to perform system
  *         level initialization (GPIOs, clock, DMA, interrupt).
  * @retval None
  */
void HAL_MspInit(void)
{
 80002b8:	b480      	push	{r7}
 80002ba:	af00      	add	r7, sp, #0

}
 80002bc:	bf00      	nop
 80002be:	46bd      	mov	sp, r7
 80002c0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002c4:	4770      	bx	lr
	...

080002c8 <__NVIC_SetPriorityGrouping>:
           In case of a conflict between priority grouping and available
           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  \param [in]      PriorityGroup  Priority grouping field.
 */
__STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 80002c8:	b480      	push	{r7}
 80002ca:	b085      	sub	sp, #20
 80002cc:	af00      	add	r7, sp, #0
 80002ce:	6078      	str	r0, [r7, #4]
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 80002d0:	687b      	ldr	r3, [r7, #4]
 80002d2:	f003 0307 	and.w	r3, r3, #7
 80002d6:	60fb      	str	r3, [r7, #12]

  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 80002d8:	4b0c      	ldr	r3, [pc, #48]	; (800030c <__NVIC_SetPriorityGrouping+0x44>)
 80002da:	68db      	ldr	r3, [r3, #12]
 80002dc:	60bb      	str	r3, [r7, #8]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 80002de:	68ba      	ldr	r2, [r7, #8]
 80002e0:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80002e4:	4013      	ands	r3, r2
 80002e6:	60bb      	str	r3, [r7, #8]
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
                (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
 80002e8:	68fb      	ldr	r3, [r7, #12]
 80002ea:	021a      	lsls	r2, r3, #8
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 80002ec:	68bb      	ldr	r3, [r7, #8]
 80002ee:	4313      	orrs	r3, r2
  reg_value  =  (reg_value                                   |
 80002f0:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80002f4:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80002f8:	60bb      	str	r3, [r7, #8]
  SCB->AIRCR =  reg_value;
 80002fa:	4a04      	ldr	r2, [pc, #16]	; (800030c <__NVIC_SetPriorityGrouping+0x44>)
 80002fc:	68bb      	ldr	r3, [r7, #8]
 80002fe:	60d3      	str	r3, [r2, #12]
}
 8000300:	bf00      	nop
 8000302:	3714      	adds	r7, #20
 8000304:	46bd      	mov	sp, r7
 8000306:	f85d 7b04 	ldr.w	r7, [sp], #4
 800030a:	4770      	bx	lr
 800030c:	e000ed00 	.word	0xe000ed00

08000310 <__NVIC_GetPriorityGrouping>:
  \brief   Get Priority Grouping
  \details Reads the priority grouping field from the NVIC Interrupt Controller.
  \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
__STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
{
 8000310:	b480      	push	{r7}
 8000312:	af00      	add	r7, sp, #0
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8000314:	4b04      	ldr	r3, [pc, #16]	; (8000328 <__NVIC_GetPriorityGrouping+0x18>)
 8000316:	68db      	ldr	r3, [r3, #12]
 8000318:	0a1b      	lsrs	r3, r3, #8
 800031a:	f003 0307 	and.w	r3, r3, #7
}
 800031e:	4618      	mov	r0, r3
 8000320:	46bd      	mov	sp, r7
 8000322:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000326:	4770      	bx	lr
 8000328:	e000ed00 	.word	0xe000ed00

0800032c <__NVIC_EnableIRQ>:
  \details Enables a device specific interrupt in the NVIC interrupt controller.
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
 800032c:	b480      	push	{r7}
 800032e:	b083      	sub	sp, #12
 8000330:	af00      	add	r7, sp, #0
 8000332:	4603      	mov	r3, r0
 8000334:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8000336:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800033a:	2b00      	cmp	r3, #0
 800033c:	db0b      	blt.n	8000356 <__NVIC_EnableIRQ+0x2a>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 800033e:	79fb      	ldrb	r3, [r7, #7]
 8000340:	f003 021f 	and.w	r2, r3, #31
 8000344:	4907      	ldr	r1, [pc, #28]	; (8000364 <__NVIC_EnableIRQ+0x38>)
 8000346:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800034a:	095b      	lsrs	r3, r3, #5
 800034c:	2001      	movs	r0, #1
 800034e:	fa00 f202 	lsl.w	r2, r0, r2
 8000352:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
  }
}
 8000356:	bf00      	nop
 8000358:	370c      	adds	r7, #12
 800035a:	46bd      	mov	sp, r7
 800035c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000360:	4770      	bx	lr
 8000362:	bf00      	nop
 8000364:	e000e100 	.word	0xe000e100

08000368 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
 8000368:	b480      	push	{r7}
 800036a:	b083      	sub	sp, #12
 800036c:	af00      	add	r7, sp, #0
 800036e:	4603      	mov	r3, r0
 8000370:	6039      	str	r1, [r7, #0]
 8000372:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8000374:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000378:	2b00      	cmp	r3, #0
 800037a:	db0a      	blt.n	8000392 <__NVIC_SetPriority+0x2a>
  {
    NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800037c:	683b      	ldr	r3, [r7, #0]
 800037e:	b2da      	uxtb	r2, r3
 8000380:	490c      	ldr	r1, [pc, #48]	; (80003b4 <__NVIC_SetPriority+0x4c>)
 8000382:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000386:	0112      	lsls	r2, r2, #4
 8000388:	b2d2      	uxtb	r2, r2
 800038a:	440b      	add	r3, r1
 800038c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
 8000390:	e00a      	b.n	80003a8 <__NVIC_SetPriority+0x40>
    SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8000392:	683b      	ldr	r3, [r7, #0]
 8000394:	b2da      	uxtb	r2, r3
 8000396:	4908      	ldr	r1, [pc, #32]	; (80003b8 <__NVIC_SetPriority+0x50>)
 8000398:	79fb      	ldrb	r3, [r7, #7]
 800039a:	f003 030f 	and.w	r3, r3, #15
 800039e:	3b04      	subs	r3, #4
 80003a0:	0112      	lsls	r2, r2, #4
 80003a2:	b2d2      	uxtb	r2, r2
 80003a4:	440b      	add	r3, r1
 80003a6:	761a      	strb	r2, [r3, #24]
}
 80003a8:	bf00      	nop
 80003aa:	370c      	adds	r7, #12
 80003ac:	46bd      	mov	sp, r7
 80003ae:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003b2:	4770      	bx	lr
 80003b4:	e000e100 	.word	0xe000e100
 80003b8:	e000ed00 	.word	0xe000ed00

080003bc <NVIC_EncodePriority>:
  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  \param [in]       SubPriority  Subpriority value (starting from 0).
  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
__STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
 80003bc:	b480      	push	{r7}
 80003be:	b089      	sub	sp, #36	; 0x24
 80003c0:	af00      	add	r7, sp, #0
 80003c2:	60f8      	str	r0, [r7, #12]
 80003c4:	60b9      	str	r1, [r7, #8]
 80003c6:	607a      	str	r2, [r7, #4]
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 80003c8:	68fb      	ldr	r3, [r7, #12]
 80003ca:	f003 0307 	and.w	r3, r3, #7
 80003ce:	61fb      	str	r3, [r7, #28]
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80003d0:	69fb      	ldr	r3, [r7, #28]
 80003d2:	f1c3 0307 	rsb	r3, r3, #7
 80003d6:	2b04      	cmp	r3, #4
 80003d8:	bf28      	it	cs
 80003da:	2304      	movcs	r3, #4
 80003dc:	61bb      	str	r3, [r7, #24]
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 80003de:	69fb      	ldr	r3, [r7, #28]
 80003e0:	3304      	adds	r3, #4
 80003e2:	2b06      	cmp	r3, #6
 80003e4:	d902      	bls.n	80003ec <NVIC_EncodePriority+0x30>
 80003e6:	69fb      	ldr	r3, [r7, #28]
 80003e8:	3b03      	subs	r3, #3
 80003ea:	e000      	b.n	80003ee <NVIC_EncodePriority+0x32>
 80003ec:	2300      	movs	r3, #0
 80003ee:	617b      	str	r3, [r7, #20]

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 80003f0:	f04f 32ff 	mov.w	r2, #4294967295
 80003f4:	69bb      	ldr	r3, [r7, #24]
 80003f6:	fa02 f303 	lsl.w	r3, r2, r3
 80003fa:	43da      	mvns	r2, r3
 80003fc:	68bb      	ldr	r3, [r7, #8]
 80003fe:	401a      	ands	r2, r3
 8000400:	697b      	ldr	r3, [r7, #20]
 8000402:	409a      	lsls	r2, r3
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8000404:	f04f 31ff 	mov.w	r1, #4294967295
 8000408:	697b      	ldr	r3, [r7, #20]
 800040a:	fa01 f303 	lsl.w	r3, r1, r3
 800040e:	43d9      	mvns	r1, r3
 8000410:	687b      	ldr	r3, [r7, #4]
 8000412:	400b      	ands	r3, r1
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8000414:	4313      	orrs	r3, r2
         );
}
 8000416:	4618      	mov	r0, r3
 8000418:	3724      	adds	r7, #36	; 0x24
 800041a:	46bd      	mov	sp, r7
 800041c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000420:	4770      	bx	lr
	...

08000424 <SysTick_Config>:
  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
 8000424:	b580      	push	{r7, lr}
 8000426:	b082      	sub	sp, #8
 8000428:	af00      	add	r7, sp, #0
 800042a:	6078      	str	r0, [r7, #4]
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 800042c:	687b      	ldr	r3, [r7, #4]
 800042e:	3b01      	subs	r3, #1
 8000430:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000434:	d301      	bcc.n	800043a <SysTick_Config+0x16>
  {
    return (1UL);                                                   /* Reload value impossible */
 8000436:	2301      	movs	r3, #1
 8000438:	e00f      	b.n	800045a <SysTick_Config+0x36>
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 800043a:	4a0a      	ldr	r2, [pc, #40]	; (8000464 <SysTick_Config+0x40>)
 800043c:	687b      	ldr	r3, [r7, #4]
 800043e:	3b01      	subs	r3, #1
 8000440:	6053      	str	r3, [r2, #4]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 8000442:	210f      	movs	r1, #15
 8000444:	f04f 30ff 	mov.w	r0, #4294967295
 8000448:	f7ff ff8e 	bl	8000368 <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 800044c:	4b05      	ldr	r3, [pc, #20]	; (8000464 <SysTick_Config+0x40>)
 800044e:	2200      	movs	r2, #0
 8000450:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 8000452:	4b04      	ldr	r3, [pc, #16]	; (8000464 <SysTick_Config+0x40>)
 8000454:	2207      	movs	r2, #7
 8000456:	601a      	str	r2, [r3, #0]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 8000458:	2300      	movs	r3, #0
}
 800045a:	4618      	mov	r0, r3
 800045c:	3708      	adds	r7, #8
 800045e:	46bd      	mov	sp, r7
 8000460:	bd80      	pop	{r7, pc}
 8000462:	bf00      	nop
 8000464:	e000e010 	.word	0xe000e010

08000468 <HAL_NVIC_SetPriorityGrouping>:
  * @note   When the NVIC_PriorityGroup_0 is selected, IRQ preemption is no more possible. 
  *         The pending IRQ priority will be managed only by the subpriority. 
  * @retval None
  */
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8000468:	b580      	push	{r7, lr}
 800046a:	b082      	sub	sp, #8
 800046c:	af00      	add	r7, sp, #0
 800046e:	6078      	str	r0, [r7, #4]
  /* Check the parameters */
  assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));
  
  /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
  NVIC_SetPriorityGrouping(PriorityGroup);
 8000470:	6878      	ldr	r0, [r7, #4]
 8000472:	f7ff ff29 	bl	80002c8 <__NVIC_SetPriorityGrouping>
}
 8000476:	bf00      	nop
 8000478:	3708      	adds	r7, #8
 800047a:	46bd      	mov	sp, r7
 800047c:	bd80      	pop	{r7, pc}

0800047e <HAL_NVIC_SetPriority>:
  *         This parameter can be a value between 0 and 15
  *         A lower priority value indicates a higher priority.          
  * @retval None
  */
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
{ 
 800047e:	b580      	push	{r7, lr}
 8000480:	b086      	sub	sp, #24
 8000482:	af00      	add	r7, sp, #0
 8000484:	4603      	mov	r3, r0
 8000486:	60b9      	str	r1, [r7, #8]
 8000488:	607a      	str	r2, [r7, #4]
 800048a:	73fb      	strb	r3, [r7, #15]
  uint32_t prioritygroup = 0x00U;
 800048c:	2300      	movs	r3, #0
 800048e:	617b      	str	r3, [r7, #20]
  
  /* Check the parameters */
  assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));
  
  prioritygroup = NVIC_GetPriorityGrouping();
 8000490:	f7ff ff3e 	bl	8000310 <__NVIC_GetPriorityGrouping>
 8000494:	6178      	str	r0, [r7, #20]
  
  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 8000496:	687a      	ldr	r2, [r7, #4]
 8000498:	68b9      	ldr	r1, [r7, #8]
 800049a:	6978      	ldr	r0, [r7, #20]
 800049c:	f7ff ff8e 	bl	80003bc <NVIC_EncodePriority>
 80004a0:	4602      	mov	r2, r0
 80004a2:	f997 300f 	ldrsb.w	r3, [r7, #15]
 80004a6:	4611      	mov	r1, r2
 80004a8:	4618      	mov	r0, r3
 80004aa:	f7ff ff5d 	bl	8000368 <__NVIC_SetPriority>
}
 80004ae:	bf00      	nop
 80004b0:	3718      	adds	r7, #24
 80004b2:	46bd      	mov	sp, r7
 80004b4:	bd80      	pop	{r7, pc}

080004b6 <HAL_NVIC_EnableIRQ>:
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32f4xxxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 80004b6:	b580      	push	{r7, lr}
 80004b8:	b082      	sub	sp, #8
 80004ba:	af00      	add	r7, sp, #0
 80004bc:	4603      	mov	r3, r0
 80004be:	71fb      	strb	r3, [r7, #7]
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));
  
  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
 80004c0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80004c4:	4618      	mov	r0, r3
 80004c6:	f7ff ff31 	bl	800032c <__NVIC_EnableIRQ>
}
 80004ca:	bf00      	nop
 80004cc:	3708      	adds	r7, #8
 80004ce:	46bd      	mov	sp, r7
 80004d0:	bd80      	pop	{r7, pc}

080004d2 <HAL_SYSTICK_Config>:
  * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 80004d2:	b580      	push	{r7, lr}
 80004d4:	b082      	sub	sp, #8
 80004d6:	af00      	add	r7, sp, #0
 80004d8:	6078      	str	r0, [r7, #4]
   return SysTick_Config(TicksNumb);
 80004da:	6878      	ldr	r0, [r7, #4]
 80004dc:	f7ff ffa2 	bl	8000424 <SysTick_Config>
 80004e0:	4603      	mov	r3, r0
}
 80004e2:	4618      	mov	r0, r3
 80004e4:	3708      	adds	r7, #8
 80004e6:	46bd      	mov	sp, r7
 80004e8:	bd80      	pop	{r7, pc}
	...

080004ec <HAL_RCC_OscConfig>:
  *         supported by this API. User should request a transition to HSE Off
  *         first and then HSE On or HSE Bypass.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
{
 80004ec:	b580      	push	{r7, lr}
 80004ee:	b086      	sub	sp, #24
 80004f0:	af00      	add	r7, sp, #0
 80004f2:	6078      	str	r0, [r7, #4]
  uint32_t tickstart, pll_config;

  /* Check Null pointer */
  if(RCC_OscInitStruct == NULL)
 80004f4:	687b      	ldr	r3, [r7, #4]
 80004f6:	2b00      	cmp	r3, #0
 80004f8:	d101      	bne.n	80004fe <HAL_RCC_OscConfig+0x12>
  {
    return HAL_ERROR;
 80004fa:	2301      	movs	r3, #1
 80004fc:	e264      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
  }

  /* Check the parameters */
  assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
  /*------------------------------- HSE Configuration ------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 80004fe:	687b      	ldr	r3, [r7, #4]
 8000500:	681b      	ldr	r3, [r3, #0]
 8000502:	f003 0301 	and.w	r3, r3, #1
 8000506:	2b00      	cmp	r3, #0
 8000508:	d075      	beq.n	80005f6 <HAL_RCC_OscConfig+0x10a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
    /* When the HSE is used as system clock or clock source for PLL in these cases HSE will not disabled */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 800050a:	4ba3      	ldr	r3, [pc, #652]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800050c:	689b      	ldr	r3, [r3, #8]
 800050e:	f003 030c 	and.w	r3, r3, #12
 8000512:	2b04      	cmp	r3, #4
 8000514:	d00c      	beq.n	8000530 <HAL_RCC_OscConfig+0x44>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000516:	4ba0      	ldr	r3, [pc, #640]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000518:	689b      	ldr	r3, [r3, #8]
 800051a:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSE) ||\
 800051e:	2b08      	cmp	r3, #8
 8000520:	d112      	bne.n	8000548 <HAL_RCC_OscConfig+0x5c>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSE)))
 8000522:	4b9d      	ldr	r3, [pc, #628]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000524:	685b      	ldr	r3, [r3, #4]
 8000526:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800052a:	f5b3 0f80 	cmp.w	r3, #4194304	; 0x400000
 800052e:	d10b      	bne.n	8000548 <HAL_RCC_OscConfig+0x5c>
    {
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8000530:	4b99      	ldr	r3, [pc, #612]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000538:	2b00      	cmp	r3, #0
 800053a:	d05b      	beq.n	80005f4 <HAL_RCC_OscConfig+0x108>
 800053c:	687b      	ldr	r3, [r7, #4]
 800053e:	685b      	ldr	r3, [r3, #4]
 8000540:	2b00      	cmp	r3, #0
 8000542:	d157      	bne.n	80005f4 <HAL_RCC_OscConfig+0x108>
      {
        return HAL_ERROR;
 8000544:	2301      	movs	r3, #1
 8000546:	e23f      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      }
    }
    else
    {
      /* Set the new HSE configuration ---------------------------------------*/
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 8000548:	687b      	ldr	r3, [r7, #4]
 800054a:	685b      	ldr	r3, [r3, #4]
 800054c:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8000550:	d106      	bne.n	8000560 <HAL_RCC_OscConfig+0x74>
 8000552:	4b91      	ldr	r3, [pc, #580]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000554:	681b      	ldr	r3, [r3, #0]
 8000556:	4a90      	ldr	r2, [pc, #576]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000558:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800055c:	6013      	str	r3, [r2, #0]
 800055e:	e01d      	b.n	800059c <HAL_RCC_OscConfig+0xb0>
 8000560:	687b      	ldr	r3, [r7, #4]
 8000562:	685b      	ldr	r3, [r3, #4]
 8000564:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 8000568:	d10c      	bne.n	8000584 <HAL_RCC_OscConfig+0x98>
 800056a:	4b8b      	ldr	r3, [pc, #556]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800056c:	681b      	ldr	r3, [r3, #0]
 800056e:	4a8a      	ldr	r2, [pc, #552]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000570:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 8000574:	6013      	str	r3, [r2, #0]
 8000576:	4b88      	ldr	r3, [pc, #544]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000578:	681b      	ldr	r3, [r3, #0]
 800057a:	4a87      	ldr	r2, [pc, #540]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800057c:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000580:	6013      	str	r3, [r2, #0]
 8000582:	e00b      	b.n	800059c <HAL_RCC_OscConfig+0xb0>
 8000584:	4b84      	ldr	r3, [pc, #528]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000586:	681b      	ldr	r3, [r3, #0]
 8000588:	4a83      	ldr	r2, [pc, #524]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800058a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800058e:	6013      	str	r3, [r2, #0]
 8000590:	4b81      	ldr	r3, [pc, #516]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000592:	681b      	ldr	r3, [r3, #0]
 8000594:	4a80      	ldr	r2, [pc, #512]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000596:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800059a:	6013      	str	r3, [r2, #0]

      /* Check the HSE State */
      if((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
 800059c:	687b      	ldr	r3, [r7, #4]
 800059e:	685b      	ldr	r3, [r3, #4]
 80005a0:	2b00      	cmp	r3, #0
 80005a2:	d013      	beq.n	80005cc <HAL_RCC_OscConfig+0xe0>
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80005a4:	f7ff fe7c 	bl	80002a0 <HAL_GetTick>
 80005a8:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 80005aa:	e008      	b.n	80005be <HAL_RCC_OscConfig+0xd2>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 80005ac:	f7ff fe78 	bl	80002a0 <HAL_GetTick>
 80005b0:	4602      	mov	r2, r0
 80005b2:	693b      	ldr	r3, [r7, #16]
 80005b4:	1ad3      	subs	r3, r2, r3
 80005b6:	2b64      	cmp	r3, #100	; 0x64
 80005b8:	d901      	bls.n	80005be <HAL_RCC_OscConfig+0xd2>
          {
            return HAL_TIMEOUT;
 80005ba:	2303      	movs	r3, #3
 80005bc:	e204      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 80005be:	4b76      	ldr	r3, [pc, #472]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 80005c0:	681b      	ldr	r3, [r3, #0]
 80005c2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005c6:	2b00      	cmp	r3, #0
 80005c8:	d0f0      	beq.n	80005ac <HAL_RCC_OscConfig+0xc0>
 80005ca:	e014      	b.n	80005f6 <HAL_RCC_OscConfig+0x10a>
        }
      }
      else
      {
        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80005cc:	f7ff fe68 	bl	80002a0 <HAL_GetTick>
 80005d0:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is bypassed or disabled */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 80005d2:	e008      	b.n	80005e6 <HAL_RCC_OscConfig+0xfa>
        {
          if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 80005d4:	f7ff fe64 	bl	80002a0 <HAL_GetTick>
 80005d8:	4602      	mov	r2, r0
 80005da:	693b      	ldr	r3, [r7, #16]
 80005dc:	1ad3      	subs	r3, r2, r3
 80005de:	2b64      	cmp	r3, #100	; 0x64
 80005e0:	d901      	bls.n	80005e6 <HAL_RCC_OscConfig+0xfa>
          {
            return HAL_TIMEOUT;
 80005e2:	2303      	movs	r3, #3
 80005e4:	e1f0      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 80005e6:	4b6c      	ldr	r3, [pc, #432]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 80005e8:	681b      	ldr	r3, [r3, #0]
 80005ea:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80005ee:	2b00      	cmp	r3, #0
 80005f0:	d1f0      	bne.n	80005d4 <HAL_RCC_OscConfig+0xe8>
 80005f2:	e000      	b.n	80005f6 <HAL_RCC_OscConfig+0x10a>
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 80005f4:	bf00      	nop
        }
      }
    }
  }
  /*----------------------------- HSI Configuration --------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 80005f6:	687b      	ldr	r3, [r7, #4]
 80005f8:	681b      	ldr	r3, [r3, #0]
 80005fa:	f003 0302 	and.w	r3, r3, #2
 80005fe:	2b00      	cmp	r3, #0
 8000600:	d063      	beq.n	80006ca <HAL_RCC_OscConfig+0x1de>
    /* Check the parameters */
    assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
    assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));

    /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 8000602:	4b65      	ldr	r3, [pc, #404]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000604:	689b      	ldr	r3, [r3, #8]
 8000606:	f003 030c 	and.w	r3, r3, #12
 800060a:	2b00      	cmp	r3, #0
 800060c:	d00b      	beq.n	8000626 <HAL_RCC_OscConfig+0x13a>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 800060e:	4b62      	ldr	r3, [pc, #392]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000610:	689b      	ldr	r3, [r3, #8]
 8000612:	f003 030c 	and.w	r3, r3, #12
    if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) ||\
 8000616:	2b08      	cmp	r3, #8
 8000618:	d11c      	bne.n	8000654 <HAL_RCC_OscConfig+0x168>
      ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
 800061a:	4b5f      	ldr	r3, [pc, #380]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800061c:	685b      	ldr	r3, [r3, #4]
 800061e:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000622:	2b00      	cmp	r3, #0
 8000624:	d116      	bne.n	8000654 <HAL_RCC_OscConfig+0x168>
    {
      /* When HSI is used as system clock it will not disabled */
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000626:	4b5c      	ldr	r3, [pc, #368]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000628:	681b      	ldr	r3, [r3, #0]
 800062a:	f003 0302 	and.w	r3, r3, #2
 800062e:	2b00      	cmp	r3, #0
 8000630:	d005      	beq.n	800063e <HAL_RCC_OscConfig+0x152>
 8000632:	687b      	ldr	r3, [r7, #4]
 8000634:	68db      	ldr	r3, [r3, #12]
 8000636:	2b01      	cmp	r3, #1
 8000638:	d001      	beq.n	800063e <HAL_RCC_OscConfig+0x152>
      {
        return HAL_ERROR;
 800063a:	2301      	movs	r3, #1
 800063c:	e1c4      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      }
      /* Otherwise, just the calibration is allowed */
      else
      {
        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 800063e:	4b56      	ldr	r3, [pc, #344]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000640:	681b      	ldr	r3, [r3, #0]
 8000642:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8000646:	687b      	ldr	r3, [r7, #4]
 8000648:	691b      	ldr	r3, [r3, #16]
 800064a:	00db      	lsls	r3, r3, #3
 800064c:	4952      	ldr	r1, [pc, #328]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800064e:	4313      	orrs	r3, r2
 8000650:	600b      	str	r3, [r1, #0]
      if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
 8000652:	e03a      	b.n	80006ca <HAL_RCC_OscConfig+0x1de>
      }
    }
    else
    {
      /* Check the HSI State */
      if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
 8000654:	687b      	ldr	r3, [r7, #4]
 8000656:	68db      	ldr	r3, [r3, #12]
 8000658:	2b00      	cmp	r3, #0
 800065a:	d020      	beq.n	800069e <HAL_RCC_OscConfig+0x1b2>
      {
        /* Enable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_ENABLE();
 800065c:	4b4f      	ldr	r3, [pc, #316]	; (800079c <HAL_RCC_OscConfig+0x2b0>)
 800065e:	2201      	movs	r2, #1
 8000660:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8000662:	f7ff fe1d 	bl	80002a0 <HAL_GetTick>
 8000666:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000668:	e008      	b.n	800067c <HAL_RCC_OscConfig+0x190>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 800066a:	f7ff fe19 	bl	80002a0 <HAL_GetTick>
 800066e:	4602      	mov	r2, r0
 8000670:	693b      	ldr	r3, [r7, #16]
 8000672:	1ad3      	subs	r3, r2, r3
 8000674:	2b02      	cmp	r3, #2
 8000676:	d901      	bls.n	800067c <HAL_RCC_OscConfig+0x190>
          {
            return HAL_TIMEOUT;
 8000678:	2303      	movs	r3, #3
 800067a:	e1a5      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 800067c:	4b46      	ldr	r3, [pc, #280]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800067e:	681b      	ldr	r3, [r3, #0]
 8000680:	f003 0302 	and.w	r3, r3, #2
 8000684:	2b00      	cmp	r3, #0
 8000686:	d0f0      	beq.n	800066a <HAL_RCC_OscConfig+0x17e>
          }
        }

        /* Adjusts the Internal High Speed oscillator (HSI) calibration value. */
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8000688:	4b43      	ldr	r3, [pc, #268]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800068a:	681b      	ldr	r3, [r3, #0]
 800068c:	f023 02f8 	bic.w	r2, r3, #248	; 0xf8
 8000690:	687b      	ldr	r3, [r7, #4]
 8000692:	691b      	ldr	r3, [r3, #16]
 8000694:	00db      	lsls	r3, r3, #3
 8000696:	4940      	ldr	r1, [pc, #256]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000698:	4313      	orrs	r3, r2
 800069a:	600b      	str	r3, [r1, #0]
 800069c:	e015      	b.n	80006ca <HAL_RCC_OscConfig+0x1de>
      }
      else
      {
        /* Disable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_DISABLE();
 800069e:	4b3f      	ldr	r3, [pc, #252]	; (800079c <HAL_RCC_OscConfig+0x2b0>)
 80006a0:	2200      	movs	r2, #0
 80006a2:	601a      	str	r2, [r3, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 80006a4:	f7ff fdfc 	bl	80002a0 <HAL_GetTick>
 80006a8:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 80006aa:	e008      	b.n	80006be <HAL_RCC_OscConfig+0x1d2>
        {
          if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 80006ac:	f7ff fdf8 	bl	80002a0 <HAL_GetTick>
 80006b0:	4602      	mov	r2, r0
 80006b2:	693b      	ldr	r3, [r7, #16]
 80006b4:	1ad3      	subs	r3, r2, r3
 80006b6:	2b02      	cmp	r3, #2
 80006b8:	d901      	bls.n	80006be <HAL_RCC_OscConfig+0x1d2>
          {
            return HAL_TIMEOUT;
 80006ba:	2303      	movs	r3, #3
 80006bc:	e184      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 80006be:	4b36      	ldr	r3, [pc, #216]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 80006c0:	681b      	ldr	r3, [r3, #0]
 80006c2:	f003 0302 	and.w	r3, r3, #2
 80006c6:	2b00      	cmp	r3, #0
 80006c8:	d1f0      	bne.n	80006ac <HAL_RCC_OscConfig+0x1c0>
        }
      }
    }
  }
  /*------------------------------ LSI Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 80006ca:	687b      	ldr	r3, [r7, #4]
 80006cc:	681b      	ldr	r3, [r3, #0]
 80006ce:	f003 0308 	and.w	r3, r3, #8
 80006d2:	2b00      	cmp	r3, #0
 80006d4:	d030      	beq.n	8000738 <HAL_RCC_OscConfig+0x24c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));

    /* Check the LSI State */
    if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
 80006d6:	687b      	ldr	r3, [r7, #4]
 80006d8:	695b      	ldr	r3, [r3, #20]
 80006da:	2b00      	cmp	r3, #0
 80006dc:	d016      	beq.n	800070c <HAL_RCC_OscConfig+0x220>
    {
      /* Enable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_ENABLE();
 80006de:	4b30      	ldr	r3, [pc, #192]	; (80007a0 <HAL_RCC_OscConfig+0x2b4>)
 80006e0:	2201      	movs	r2, #1
 80006e2:	601a      	str	r2, [r3, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 80006e4:	f7ff fddc 	bl	80002a0 <HAL_GetTick>
 80006e8:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 80006ea:	e008      	b.n	80006fe <HAL_RCC_OscConfig+0x212>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 80006ec:	f7ff fdd8 	bl	80002a0 <HAL_GetTick>
 80006f0:	4602      	mov	r2, r0
 80006f2:	693b      	ldr	r3, [r7, #16]
 80006f4:	1ad3      	subs	r3, r2, r3
 80006f6:	2b02      	cmp	r3, #2
 80006f8:	d901      	bls.n	80006fe <HAL_RCC_OscConfig+0x212>
        {
          return HAL_TIMEOUT;
 80006fa:	2303      	movs	r3, #3
 80006fc:	e164      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 80006fe:	4b26      	ldr	r3, [pc, #152]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000700:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8000702:	f003 0302 	and.w	r3, r3, #2
 8000706:	2b00      	cmp	r3, #0
 8000708:	d0f0      	beq.n	80006ec <HAL_RCC_OscConfig+0x200>
 800070a:	e015      	b.n	8000738 <HAL_RCC_OscConfig+0x24c>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_DISABLE();
 800070c:	4b24      	ldr	r3, [pc, #144]	; (80007a0 <HAL_RCC_OscConfig+0x2b4>)
 800070e:	2200      	movs	r2, #0
 8000710:	601a      	str	r2, [r3, #0]

      /* Get Start Tick */
      tickstart = HAL_GetTick();
 8000712:	f7ff fdc5 	bl	80002a0 <HAL_GetTick>
 8000716:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 8000718:	e008      	b.n	800072c <HAL_RCC_OscConfig+0x240>
      {
        if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 800071a:	f7ff fdc1 	bl	80002a0 <HAL_GetTick>
 800071e:	4602      	mov	r2, r0
 8000720:	693b      	ldr	r3, [r7, #16]
 8000722:	1ad3      	subs	r3, r2, r3
 8000724:	2b02      	cmp	r3, #2
 8000726:	d901      	bls.n	800072c <HAL_RCC_OscConfig+0x240>
        {
          return HAL_TIMEOUT;
 8000728:	2303      	movs	r3, #3
 800072a:	e14d      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 800072c:	4b1a      	ldr	r3, [pc, #104]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800072e:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8000730:	f003 0302 	and.w	r3, r3, #2
 8000734:	2b00      	cmp	r3, #0
 8000736:	d1f0      	bne.n	800071a <HAL_RCC_OscConfig+0x22e>
        }
      }
    }
  }
  /*------------------------------ LSE Configuration -------------------------*/
  if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 8000738:	687b      	ldr	r3, [r7, #4]
 800073a:	681b      	ldr	r3, [r3, #0]
 800073c:	f003 0304 	and.w	r3, r3, #4
 8000740:	2b00      	cmp	r3, #0
 8000742:	f000 80a0 	beq.w	8000886 <HAL_RCC_OscConfig+0x39a>
  {
    FlagStatus       pwrclkchanged = RESET;
 8000746:	2300      	movs	r3, #0
 8000748:	75fb      	strb	r3, [r7, #23]
    /* Check the parameters */
    assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));

    /* Update LSE configuration in Backup Domain control register    */
    /* Requires to enable write access to Backup Domain of necessary */
    if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 800074a:	4b13      	ldr	r3, [pc, #76]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800074c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800074e:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8000752:	2b00      	cmp	r3, #0
 8000754:	d10f      	bne.n	8000776 <HAL_RCC_OscConfig+0x28a>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 8000756:	2300      	movs	r3, #0
 8000758:	60bb      	str	r3, [r7, #8]
 800075a:	4b0f      	ldr	r3, [pc, #60]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 800075c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800075e:	4a0e      	ldr	r2, [pc, #56]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000760:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8000764:	6413      	str	r3, [r2, #64]	; 0x40
 8000766:	4b0c      	ldr	r3, [pc, #48]	; (8000798 <HAL_RCC_OscConfig+0x2ac>)
 8000768:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800076a:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800076e:	60bb      	str	r3, [r7, #8]
 8000770:	68bb      	ldr	r3, [r7, #8]
      pwrclkchanged = SET;
 8000772:	2301      	movs	r3, #1
 8000774:	75fb      	strb	r3, [r7, #23]
    }

    if(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000776:	4b0b      	ldr	r3, [pc, #44]	; (80007a4 <HAL_RCC_OscConfig+0x2b8>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	f403 7380 	and.w	r3, r3, #256	; 0x100
 800077e:	2b00      	cmp	r3, #0
 8000780:	d121      	bne.n	80007c6 <HAL_RCC_OscConfig+0x2da>
    {
      /* Enable write access to Backup domain */
      SET_BIT(PWR->CR, PWR_CR_DBP);
 8000782:	4b08      	ldr	r3, [pc, #32]	; (80007a4 <HAL_RCC_OscConfig+0x2b8>)
 8000784:	681b      	ldr	r3, [r3, #0]
 8000786:	4a07      	ldr	r2, [pc, #28]	; (80007a4 <HAL_RCC_OscConfig+0x2b8>)
 8000788:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 800078c:	6013      	str	r3, [r2, #0]

      /* Wait for Backup domain Write protection disable */
      tickstart = HAL_GetTick();
 800078e:	f7ff fd87 	bl	80002a0 <HAL_GetTick>
 8000792:	6138      	str	r0, [r7, #16]

      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 8000794:	e011      	b.n	80007ba <HAL_RCC_OscConfig+0x2ce>
 8000796:	bf00      	nop
 8000798:	40023800 	.word	0x40023800
 800079c:	42470000 	.word	0x42470000
 80007a0:	42470e80 	.word	0x42470e80
 80007a4:	40007000 	.word	0x40007000
      {
        if((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 80007a8:	f7ff fd7a 	bl	80002a0 <HAL_GetTick>
 80007ac:	4602      	mov	r2, r0
 80007ae:	693b      	ldr	r3, [r7, #16]
 80007b0:	1ad3      	subs	r3, r2, r3
 80007b2:	2b02      	cmp	r3, #2
 80007b4:	d901      	bls.n	80007ba <HAL_RCC_OscConfig+0x2ce>
        {
          return HAL_TIMEOUT;
 80007b6:	2303      	movs	r3, #3
 80007b8:	e106      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      while(HAL_IS_BIT_CLR(PWR->CR, PWR_CR_DBP))
 80007ba:	4b85      	ldr	r3, [pc, #532]	; (80009d0 <HAL_RCC_OscConfig+0x4e4>)
 80007bc:	681b      	ldr	r3, [r3, #0]
 80007be:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80007c2:	2b00      	cmp	r3, #0
 80007c4:	d0f0      	beq.n	80007a8 <HAL_RCC_OscConfig+0x2bc>
        }
      }
    }

    /* Set the new LSE configuration -----------------------------------------*/
    __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 80007c6:	687b      	ldr	r3, [r7, #4]
 80007c8:	689b      	ldr	r3, [r3, #8]
 80007ca:	2b01      	cmp	r3, #1
 80007cc:	d106      	bne.n	80007dc <HAL_RCC_OscConfig+0x2f0>
 80007ce:	4b81      	ldr	r3, [pc, #516]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80007d0:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80007d2:	4a80      	ldr	r2, [pc, #512]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80007d4:	f043 0301 	orr.w	r3, r3, #1
 80007d8:	6713      	str	r3, [r2, #112]	; 0x70
 80007da:	e01c      	b.n	8000816 <HAL_RCC_OscConfig+0x32a>
 80007dc:	687b      	ldr	r3, [r7, #4]
 80007de:	689b      	ldr	r3, [r3, #8]
 80007e0:	2b05      	cmp	r3, #5
 80007e2:	d10c      	bne.n	80007fe <HAL_RCC_OscConfig+0x312>
 80007e4:	4b7b      	ldr	r3, [pc, #492]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80007e6:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80007e8:	4a7a      	ldr	r2, [pc, #488]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80007ea:	f043 0304 	orr.w	r3, r3, #4
 80007ee:	6713      	str	r3, [r2, #112]	; 0x70
 80007f0:	4b78      	ldr	r3, [pc, #480]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80007f2:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 80007f4:	4a77      	ldr	r2, [pc, #476]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80007f6:	f043 0301 	orr.w	r3, r3, #1
 80007fa:	6713      	str	r3, [r2, #112]	; 0x70
 80007fc:	e00b      	b.n	8000816 <HAL_RCC_OscConfig+0x32a>
 80007fe:	4b75      	ldr	r3, [pc, #468]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 8000800:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000802:	4a74      	ldr	r2, [pc, #464]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 8000804:	f023 0301 	bic.w	r3, r3, #1
 8000808:	6713      	str	r3, [r2, #112]	; 0x70
 800080a:	4b72      	ldr	r3, [pc, #456]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 800080c:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 800080e:	4a71      	ldr	r2, [pc, #452]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 8000810:	f023 0304 	bic.w	r3, r3, #4
 8000814:	6713      	str	r3, [r2, #112]	; 0x70
    /* Check the LSE State */
    if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
 8000816:	687b      	ldr	r3, [r7, #4]
 8000818:	689b      	ldr	r3, [r3, #8]
 800081a:	2b00      	cmp	r3, #0
 800081c:	d015      	beq.n	800084a <HAL_RCC_OscConfig+0x35e>
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 800081e:	f7ff fd3f 	bl	80002a0 <HAL_GetTick>
 8000822:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 8000824:	e00a      	b.n	800083c <HAL_RCC_OscConfig+0x350>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8000826:	f7ff fd3b 	bl	80002a0 <HAL_GetTick>
 800082a:	4602      	mov	r2, r0
 800082c:	693b      	ldr	r3, [r7, #16]
 800082e:	1ad3      	subs	r3, r2, r3
 8000830:	f241 3288 	movw	r2, #5000	; 0x1388
 8000834:	4293      	cmp	r3, r2
 8000836:	d901      	bls.n	800083c <HAL_RCC_OscConfig+0x350>
        {
          return HAL_TIMEOUT;
 8000838:	2303      	movs	r3, #3
 800083a:	e0c5      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 800083c:	4b65      	ldr	r3, [pc, #404]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 800083e:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8000840:	f003 0302 	and.w	r3, r3, #2
 8000844:	2b00      	cmp	r3, #0
 8000846:	d0ee      	beq.n	8000826 <HAL_RCC_OscConfig+0x33a>
 8000848:	e014      	b.n	8000874 <HAL_RCC_OscConfig+0x388>
      }
    }
    else
    {
      /* Get Start Tick */
      tickstart = HAL_GetTick();
 800084a:	f7ff fd29 	bl	80002a0 <HAL_GetTick>
 800084e:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000850:	e00a      	b.n	8000868 <HAL_RCC_OscConfig+0x37c>
      {
        if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 8000852:	f7ff fd25 	bl	80002a0 <HAL_GetTick>
 8000856:	4602      	mov	r2, r0
 8000858:	693b      	ldr	r3, [r7, #16]
 800085a:	1ad3      	subs	r3, r2, r3
 800085c:	f241 3288 	movw	r2, #5000	; 0x1388
 8000860:	4293      	cmp	r3, r2
 8000862:	d901      	bls.n	8000868 <HAL_RCC_OscConfig+0x37c>
        {
          return HAL_TIMEOUT;
 8000864:	2303      	movs	r3, #3
 8000866:	e0af      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 8000868:	4b5a      	ldr	r3, [pc, #360]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 800086a:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 800086c:	f003 0302 	and.w	r3, r3, #2
 8000870:	2b00      	cmp	r3, #0
 8000872:	d1ee      	bne.n	8000852 <HAL_RCC_OscConfig+0x366>
        }
      }
    }

    /* Restore clock configuration if changed */
    if(pwrclkchanged == SET)
 8000874:	7dfb      	ldrb	r3, [r7, #23]
 8000876:	2b01      	cmp	r3, #1
 8000878:	d105      	bne.n	8000886 <HAL_RCC_OscConfig+0x39a>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 800087a:	4b56      	ldr	r3, [pc, #344]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 800087c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800087e:	4a55      	ldr	r2, [pc, #340]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 8000880:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8000884:	6413      	str	r3, [r2, #64]	; 0x40
    }
  }
  /*-------------------------------- PLL Configuration -----------------------*/
  /* Check the parameters */
  assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
  if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 8000886:	687b      	ldr	r3, [r7, #4]
 8000888:	699b      	ldr	r3, [r3, #24]
 800088a:	2b00      	cmp	r3, #0
 800088c:	f000 809b 	beq.w	80009c6 <HAL_RCC_OscConfig+0x4da>
  {
    /* Check if the PLL is used as system clock or not */
    if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 8000890:	4b50      	ldr	r3, [pc, #320]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 8000892:	689b      	ldr	r3, [r3, #8]
 8000894:	f003 030c 	and.w	r3, r3, #12
 8000898:	2b08      	cmp	r3, #8
 800089a:	d05c      	beq.n	8000956 <HAL_RCC_OscConfig+0x46a>
    {
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 800089c:	687b      	ldr	r3, [r7, #4]
 800089e:	699b      	ldr	r3, [r3, #24]
 80008a0:	2b02      	cmp	r3, #2
 80008a2:	d141      	bne.n	8000928 <HAL_RCC_OscConfig+0x43c>
        assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
        assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
        assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));

        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 80008a4:	4b4c      	ldr	r3, [pc, #304]	; (80009d8 <HAL_RCC_OscConfig+0x4ec>)
 80008a6:	2200      	movs	r2, #0
 80008a8:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 80008aa:	f7ff fcf9 	bl	80002a0 <HAL_GetTick>
 80008ae:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 80008b0:	e008      	b.n	80008c4 <HAL_RCC_OscConfig+0x3d8>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 80008b2:	f7ff fcf5 	bl	80002a0 <HAL_GetTick>
 80008b6:	4602      	mov	r2, r0
 80008b8:	693b      	ldr	r3, [r7, #16]
 80008ba:	1ad3      	subs	r3, r2, r3
 80008bc:	2b02      	cmp	r3, #2
 80008be:	d901      	bls.n	80008c4 <HAL_RCC_OscConfig+0x3d8>
          {
            return HAL_TIMEOUT;
 80008c0:	2303      	movs	r3, #3
 80008c2:	e081      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 80008c4:	4b43      	ldr	r3, [pc, #268]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80008c6:	681b      	ldr	r3, [r3, #0]
 80008c8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80008cc:	2b00      	cmp	r3, #0
 80008ce:	d1f0      	bne.n	80008b2 <HAL_RCC_OscConfig+0x3c6>
          }
        }

        /* Configure the main PLL clock source, multiplication and division factors. */
        WRITE_REG(RCC->PLLCFGR, (RCC_OscInitStruct->PLL.PLLSource                                            | \
 80008d0:	687b      	ldr	r3, [r7, #4]
 80008d2:	69da      	ldr	r2, [r3, #28]
 80008d4:	687b      	ldr	r3, [r7, #4]
 80008d6:	6a1b      	ldr	r3, [r3, #32]
 80008d8:	431a      	orrs	r2, r3
 80008da:	687b      	ldr	r3, [r7, #4]
 80008dc:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 80008de:	019b      	lsls	r3, r3, #6
 80008e0:	431a      	orrs	r2, r3
 80008e2:	687b      	ldr	r3, [r7, #4]
 80008e4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80008e6:	085b      	lsrs	r3, r3, #1
 80008e8:	3b01      	subs	r3, #1
 80008ea:	041b      	lsls	r3, r3, #16
 80008ec:	431a      	orrs	r2, r3
 80008ee:	687b      	ldr	r3, [r7, #4]
 80008f0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80008f2:	061b      	lsls	r3, r3, #24
 80008f4:	4937      	ldr	r1, [pc, #220]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 80008f6:	4313      	orrs	r3, r2
 80008f8:	604b      	str	r3, [r1, #4]
                                 RCC_OscInitStruct->PLL.PLLM                                                 | \
                                 (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)             | \
                                 (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U) << RCC_PLLCFGR_PLLP_Pos) | \
                                 (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)));
        /* Enable the main PLL. */
        __HAL_RCC_PLL_ENABLE();
 80008fa:	4b37      	ldr	r3, [pc, #220]	; (80009d8 <HAL_RCC_OscConfig+0x4ec>)
 80008fc:	2201      	movs	r2, #1
 80008fe:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 8000900:	f7ff fcce 	bl	80002a0 <HAL_GetTick>
 8000904:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000906:	e008      	b.n	800091a <HAL_RCC_OscConfig+0x42e>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000908:	f7ff fcca 	bl	80002a0 <HAL_GetTick>
 800090c:	4602      	mov	r2, r0
 800090e:	693b      	ldr	r3, [r7, #16]
 8000910:	1ad3      	subs	r3, r2, r3
 8000912:	2b02      	cmp	r3, #2
 8000914:	d901      	bls.n	800091a <HAL_RCC_OscConfig+0x42e>
          {
            return HAL_TIMEOUT;
 8000916:	2303      	movs	r3, #3
 8000918:	e056      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 800091a:	4b2e      	ldr	r3, [pc, #184]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 800091c:	681b      	ldr	r3, [r3, #0]
 800091e:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000922:	2b00      	cmp	r3, #0
 8000924:	d0f0      	beq.n	8000908 <HAL_RCC_OscConfig+0x41c>
 8000926:	e04e      	b.n	80009c6 <HAL_RCC_OscConfig+0x4da>
        }
      }
      else
      {
        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 8000928:	4b2b      	ldr	r3, [pc, #172]	; (80009d8 <HAL_RCC_OscConfig+0x4ec>)
 800092a:	2200      	movs	r2, #0
 800092c:	601a      	str	r2, [r3, #0]

        /* Get Start Tick */
        tickstart = HAL_GetTick();
 800092e:	f7ff fcb7 	bl	80002a0 <HAL_GetTick>
 8000932:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000934:	e008      	b.n	8000948 <HAL_RCC_OscConfig+0x45c>
        {
          if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 8000936:	f7ff fcb3 	bl	80002a0 <HAL_GetTick>
 800093a:	4602      	mov	r2, r0
 800093c:	693b      	ldr	r3, [r7, #16]
 800093e:	1ad3      	subs	r3, r2, r3
 8000940:	2b02      	cmp	r3, #2
 8000942:	d901      	bls.n	8000948 <HAL_RCC_OscConfig+0x45c>
          {
            return HAL_TIMEOUT;
 8000944:	2303      	movs	r3, #3
 8000946:	e03f      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 8000948:	4b22      	ldr	r3, [pc, #136]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 800094a:	681b      	ldr	r3, [r3, #0]
 800094c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000950:	2b00      	cmp	r3, #0
 8000952:	d1f0      	bne.n	8000936 <HAL_RCC_OscConfig+0x44a>
 8000954:	e037      	b.n	80009c6 <HAL_RCC_OscConfig+0x4da>
      }
    }
    else
    {
      /* Check if there is a request to disable the PLL used as System clock source */
      if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF)
 8000956:	687b      	ldr	r3, [r7, #4]
 8000958:	699b      	ldr	r3, [r3, #24]
 800095a:	2b01      	cmp	r3, #1
 800095c:	d101      	bne.n	8000962 <HAL_RCC_OscConfig+0x476>
      {
        return HAL_ERROR;
 800095e:	2301      	movs	r3, #1
 8000960:	e032      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
      }
      else
      {
        /* Do not return HAL_ERROR if request repeats the current configuration */
        pll_config = RCC->PLLCFGR;
 8000962:	4b1c      	ldr	r3, [pc, #112]	; (80009d4 <HAL_RCC_OscConfig+0x4e8>)
 8000964:	685b      	ldr	r3, [r3, #4]
 8000966:	60fb      	str	r3, [r7, #12]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)) ||
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLR) != (RCC_OscInitStruct->PLL.PLLR << RCC_PLLCFGR_PLLR_Pos)))
#else
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 8000968:	687b      	ldr	r3, [r7, #4]
 800096a:	699b      	ldr	r3, [r3, #24]
 800096c:	2b01      	cmp	r3, #1
 800096e:	d028      	beq.n	80009c2 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000970:	68fb      	ldr	r3, [r7, #12]
 8000972:	f403 0280 	and.w	r2, r3, #4194304	; 0x400000
 8000976:	687b      	ldr	r3, [r7, #4]
 8000978:	69db      	ldr	r3, [r3, #28]
        if (((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_OFF) ||
 800097a:	429a      	cmp	r2, r3
 800097c:	d121      	bne.n	80009c2 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 800097e:	68fb      	ldr	r3, [r7, #12]
 8000980:	f003 023f 	and.w	r2, r3, #63	; 0x3f
 8000984:	687b      	ldr	r3, [r7, #4]
 8000986:	6a1b      	ldr	r3, [r3, #32]
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC) != RCC_OscInitStruct->PLL.PLLSource) ||
 8000988:	429a      	cmp	r2, r3
 800098a:	d11a      	bne.n	80009c2 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 800098c:	68fa      	ldr	r2, [r7, #12]
 800098e:	f647 73c0 	movw	r3, #32704	; 0x7fc0
 8000992:	4013      	ands	r3, r2
 8000994:	687a      	ldr	r2, [r7, #4]
 8000996:	6a52      	ldr	r2, [r2, #36]	; 0x24
 8000998:	0192      	lsls	r2, r2, #6
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM) != (RCC_OscInitStruct->PLL.PLLM) << RCC_PLLCFGR_PLLM_Pos) ||
 800099a:	4293      	cmp	r3, r2
 800099c:	d111      	bne.n	80009c2 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 800099e:	68fb      	ldr	r3, [r7, #12]
 80009a0:	f403 3240 	and.w	r2, r3, #196608	; 0x30000
 80009a4:	687b      	ldr	r3, [r7, #4]
 80009a6:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80009a8:	085b      	lsrs	r3, r3, #1
 80009aa:	3b01      	subs	r3, #1
 80009ac:	041b      	lsls	r3, r3, #16
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN) != (RCC_OscInitStruct->PLL.PLLN) << RCC_PLLCFGR_PLLN_Pos) ||
 80009ae:	429a      	cmp	r2, r3
 80009b0:	d107      	bne.n	80009c2 <HAL_RCC_OscConfig+0x4d6>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ) != (RCC_OscInitStruct->PLL.PLLQ << RCC_PLLCFGR_PLLQ_Pos)))
 80009b2:	68fb      	ldr	r3, [r7, #12]
 80009b4:	f003 6270 	and.w	r2, r3, #251658240	; 0xf000000
 80009b8:	687b      	ldr	r3, [r7, #4]
 80009ba:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80009bc:	061b      	lsls	r3, r3, #24
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLP) != (((RCC_OscInitStruct->PLL.PLLP >> 1U) - 1U)) << RCC_PLLCFGR_PLLP_Pos) ||
 80009be:	429a      	cmp	r2, r3
 80009c0:	d001      	beq.n	80009c6 <HAL_RCC_OscConfig+0x4da>
#endif
        {
          return HAL_ERROR;
 80009c2:	2301      	movs	r3, #1
 80009c4:	e000      	b.n	80009c8 <HAL_RCC_OscConfig+0x4dc>
        }
      }
    }
  }
  return HAL_OK;
 80009c6:	2300      	movs	r3, #0
}
 80009c8:	4618      	mov	r0, r3
 80009ca:	3718      	adds	r7, #24
 80009cc:	46bd      	mov	sp, r7
 80009ce:	bd80      	pop	{r7, pc}
 80009d0:	40007000 	.word	0x40007000
 80009d4:	40023800 	.word	0x40023800
 80009d8:	42470060 	.word	0x42470060

080009dc <HAL_RCC_ClockConfig>:
  *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
  *         (for more details refer to section above "Initialization/de-initialization functions")
  * @retval None
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 80009dc:	b580      	push	{r7, lr}
 80009de:	b084      	sub	sp, #16
 80009e0:	af00      	add	r7, sp, #0
 80009e2:	6078      	str	r0, [r7, #4]
 80009e4:	6039      	str	r1, [r7, #0]
  uint32_t tickstart;

  /* Check Null pointer */
  if(RCC_ClkInitStruct == NULL)
 80009e6:	687b      	ldr	r3, [r7, #4]
 80009e8:	2b00      	cmp	r3, #0
 80009ea:	d101      	bne.n	80009f0 <HAL_RCC_ClockConfig+0x14>
  {
    return HAL_ERROR;
 80009ec:	2301      	movs	r3, #1
 80009ee:	e0cc      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
  /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
    must be correctly programmed according to the frequency of the CPU clock
    (HCLK) and the supply voltage of the device. */

  /* Increasing the number of wait states because of higher CPU frequency */
  if(FLatency > __HAL_FLASH_GET_LATENCY())
 80009f0:	4b68      	ldr	r3, [pc, #416]	; (8000b94 <HAL_RCC_ClockConfig+0x1b8>)
 80009f2:	681b      	ldr	r3, [r3, #0]
 80009f4:	f003 0307 	and.w	r3, r3, #7
 80009f8:	683a      	ldr	r2, [r7, #0]
 80009fa:	429a      	cmp	r2, r3
 80009fc:	d90c      	bls.n	8000a18 <HAL_RCC_ClockConfig+0x3c>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 80009fe:	4b65      	ldr	r3, [pc, #404]	; (8000b94 <HAL_RCC_ClockConfig+0x1b8>)
 8000a00:	683a      	ldr	r2, [r7, #0]
 8000a02:	b2d2      	uxtb	r2, r2
 8000a04:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 8000a06:	4b63      	ldr	r3, [pc, #396]	; (8000b94 <HAL_RCC_ClockConfig+0x1b8>)
 8000a08:	681b      	ldr	r3, [r3, #0]
 8000a0a:	f003 0307 	and.w	r3, r3, #7
 8000a0e:	683a      	ldr	r2, [r7, #0]
 8000a10:	429a      	cmp	r2, r3
 8000a12:	d001      	beq.n	8000a18 <HAL_RCC_ClockConfig+0x3c>
    {
      return HAL_ERROR;
 8000a14:	2301      	movs	r3, #1
 8000a16:	e0b8      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- HCLK Configuration --------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8000a18:	687b      	ldr	r3, [r7, #4]
 8000a1a:	681b      	ldr	r3, [r3, #0]
 8000a1c:	f003 0302 	and.w	r3, r3, #2
 8000a20:	2b00      	cmp	r3, #0
 8000a22:	d020      	beq.n	8000a66 <HAL_RCC_ClockConfig+0x8a>
  {
    /* Set the highest APBx dividers in order to ensure that we do not go through
       a non-spec phase whatever we decrease or increase HCLK. */
    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000a24:	687b      	ldr	r3, [r7, #4]
 8000a26:	681b      	ldr	r3, [r3, #0]
 8000a28:	f003 0304 	and.w	r3, r3, #4
 8000a2c:	2b00      	cmp	r3, #0
 8000a2e:	d005      	beq.n	8000a3c <HAL_RCC_ClockConfig+0x60>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_HCLK_DIV16);
 8000a30:	4b59      	ldr	r3, [pc, #356]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a32:	689b      	ldr	r3, [r3, #8]
 8000a34:	4a58      	ldr	r2, [pc, #352]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a36:	f443 53e0 	orr.w	r3, r3, #7168	; 0x1c00
 8000a3a:	6093      	str	r3, [r2, #8]
    }

    if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000a3c:	687b      	ldr	r3, [r7, #4]
 8000a3e:	681b      	ldr	r3, [r3, #0]
 8000a40:	f003 0308 	and.w	r3, r3, #8
 8000a44:	2b00      	cmp	r3, #0
 8000a46:	d005      	beq.n	8000a54 <HAL_RCC_ClockConfig+0x78>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, (RCC_HCLK_DIV16 << 3));
 8000a48:	4b53      	ldr	r3, [pc, #332]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a4a:	689b      	ldr	r3, [r3, #8]
 8000a4c:	4a52      	ldr	r2, [pc, #328]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a4e:	f443 4360 	orr.w	r3, r3, #57344	; 0xe000
 8000a52:	6093      	str	r3, [r2, #8]
    }

    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 8000a54:	4b50      	ldr	r3, [pc, #320]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a56:	689b      	ldr	r3, [r3, #8]
 8000a58:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8000a5c:	687b      	ldr	r3, [r7, #4]
 8000a5e:	689b      	ldr	r3, [r3, #8]
 8000a60:	494d      	ldr	r1, [pc, #308]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a62:	4313      	orrs	r3, r2
 8000a64:	608b      	str	r3, [r1, #8]
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 8000a66:	687b      	ldr	r3, [r7, #4]
 8000a68:	681b      	ldr	r3, [r3, #0]
 8000a6a:	f003 0301 	and.w	r3, r3, #1
 8000a6e:	2b00      	cmp	r3, #0
 8000a70:	d044      	beq.n	8000afc <HAL_RCC_ClockConfig+0x120>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* HSE is selected as System Clock Source */
    if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 8000a72:	687b      	ldr	r3, [r7, #4]
 8000a74:	685b      	ldr	r3, [r3, #4]
 8000a76:	2b01      	cmp	r3, #1
 8000a78:	d107      	bne.n	8000a8a <HAL_RCC_ClockConfig+0xae>
    {
      /* Check the HSE ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 8000a7a:	4b47      	ldr	r3, [pc, #284]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a7c:	681b      	ldr	r3, [r3, #0]
 8000a7e:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000a82:	2b00      	cmp	r3, #0
 8000a84:	d119      	bne.n	8000aba <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 8000a86:	2301      	movs	r3, #1
 8000a88:	e07f      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
      }
    }
    /* PLL is selected as System Clock Source */
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 8000a8a:	687b      	ldr	r3, [r7, #4]
 8000a8c:	685b      	ldr	r3, [r3, #4]
 8000a8e:	2b02      	cmp	r3, #2
 8000a90:	d003      	beq.n	8000a9a <HAL_RCC_ClockConfig+0xbe>
            (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLRCLK))
 8000a92:	687b      	ldr	r3, [r7, #4]
 8000a94:	685b      	ldr	r3, [r3, #4]
    else if((RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)   ||
 8000a96:	2b03      	cmp	r3, #3
 8000a98:	d107      	bne.n	8000aaa <HAL_RCC_ClockConfig+0xce>
    {
      /* Check the PLL ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 8000a9a:	4b3f      	ldr	r3, [pc, #252]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000a9c:	681b      	ldr	r3, [r3, #0]
 8000a9e:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8000aa2:	2b00      	cmp	r3, #0
 8000aa4:	d109      	bne.n	8000aba <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 8000aa6:	2301      	movs	r3, #1
 8000aa8:	e06f      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
    }
    /* HSI is selected as System Clock Source */
    else
    {
      /* Check the HSI ready flag */
      if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 8000aaa:	4b3b      	ldr	r3, [pc, #236]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000aac:	681b      	ldr	r3, [r3, #0]
 8000aae:	f003 0302 	and.w	r3, r3, #2
 8000ab2:	2b00      	cmp	r3, #0
 8000ab4:	d101      	bne.n	8000aba <HAL_RCC_ClockConfig+0xde>
      {
        return HAL_ERROR;
 8000ab6:	2301      	movs	r3, #1
 8000ab8:	e067      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
      }
    }

    __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 8000aba:	4b37      	ldr	r3, [pc, #220]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000abc:	689b      	ldr	r3, [r3, #8]
 8000abe:	f023 0203 	bic.w	r2, r3, #3
 8000ac2:	687b      	ldr	r3, [r7, #4]
 8000ac4:	685b      	ldr	r3, [r3, #4]
 8000ac6:	4934      	ldr	r1, [pc, #208]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000ac8:	4313      	orrs	r3, r2
 8000aca:	608b      	str	r3, [r1, #8]

    /* Get Start Tick */
    tickstart = HAL_GetTick();
 8000acc:	f7ff fbe8 	bl	80002a0 <HAL_GetTick>
 8000ad0:	60f8      	str	r0, [r7, #12]

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000ad2:	e00a      	b.n	8000aea <HAL_RCC_ClockConfig+0x10e>
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 8000ad4:	f7ff fbe4 	bl	80002a0 <HAL_GetTick>
 8000ad8:	4602      	mov	r2, r0
 8000ada:	68fb      	ldr	r3, [r7, #12]
 8000adc:	1ad3      	subs	r3, r2, r3
 8000ade:	f241 3288 	movw	r2, #5000	; 0x1388
 8000ae2:	4293      	cmp	r3, r2
 8000ae4:	d901      	bls.n	8000aea <HAL_RCC_ClockConfig+0x10e>
      {
        return HAL_TIMEOUT;
 8000ae6:	2303      	movs	r3, #3
 8000ae8:	e04f      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8000aea:	4b2b      	ldr	r3, [pc, #172]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000aec:	689b      	ldr	r3, [r3, #8]
 8000aee:	f003 020c 	and.w	r2, r3, #12
 8000af2:	687b      	ldr	r3, [r7, #4]
 8000af4:	685b      	ldr	r3, [r3, #4]
 8000af6:	009b      	lsls	r3, r3, #2
 8000af8:	429a      	cmp	r2, r3
 8000afa:	d1eb      	bne.n	8000ad4 <HAL_RCC_ClockConfig+0xf8>
      }
    }
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if(FLatency < __HAL_FLASH_GET_LATENCY())
 8000afc:	4b25      	ldr	r3, [pc, #148]	; (8000b94 <HAL_RCC_ClockConfig+0x1b8>)
 8000afe:	681b      	ldr	r3, [r3, #0]
 8000b00:	f003 0307 	and.w	r3, r3, #7
 8000b04:	683a      	ldr	r2, [r7, #0]
 8000b06:	429a      	cmp	r2, r3
 8000b08:	d20c      	bcs.n	8000b24 <HAL_RCC_ClockConfig+0x148>
  {
     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8000b0a:	4b22      	ldr	r3, [pc, #136]	; (8000b94 <HAL_RCC_ClockConfig+0x1b8>)
 8000b0c:	683a      	ldr	r2, [r7, #0]
 8000b0e:	b2d2      	uxtb	r2, r2
 8000b10:	701a      	strb	r2, [r3, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if(__HAL_FLASH_GET_LATENCY() != FLatency)
 8000b12:	4b20      	ldr	r3, [pc, #128]	; (8000b94 <HAL_RCC_ClockConfig+0x1b8>)
 8000b14:	681b      	ldr	r3, [r3, #0]
 8000b16:	f003 0307 	and.w	r3, r3, #7
 8000b1a:	683a      	ldr	r2, [r7, #0]
 8000b1c:	429a      	cmp	r2, r3
 8000b1e:	d001      	beq.n	8000b24 <HAL_RCC_ClockConfig+0x148>
    {
      return HAL_ERROR;
 8000b20:	2301      	movs	r3, #1
 8000b22:	e032      	b.n	8000b8a <HAL_RCC_ClockConfig+0x1ae>
    }
  }

  /*-------------------------- PCLK1 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8000b24:	687b      	ldr	r3, [r7, #4]
 8000b26:	681b      	ldr	r3, [r3, #0]
 8000b28:	f003 0304 	and.w	r3, r3, #4
 8000b2c:	2b00      	cmp	r3, #0
 8000b2e:	d008      	beq.n	8000b42 <HAL_RCC_ClockConfig+0x166>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8000b30:	4b19      	ldr	r3, [pc, #100]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000b32:	689b      	ldr	r3, [r3, #8]
 8000b34:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 8000b38:	687b      	ldr	r3, [r7, #4]
 8000b3a:	68db      	ldr	r3, [r3, #12]
 8000b3c:	4916      	ldr	r1, [pc, #88]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000b3e:	4313      	orrs	r3, r2
 8000b40:	608b      	str	r3, [r1, #8]
  }

  /*-------------------------- PCLK2 Configuration ---------------------------*/
  if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 8000b42:	687b      	ldr	r3, [r7, #4]
 8000b44:	681b      	ldr	r3, [r3, #0]
 8000b46:	f003 0308 	and.w	r3, r3, #8
 8000b4a:	2b00      	cmp	r3, #0
 8000b4c:	d009      	beq.n	8000b62 <HAL_RCC_ClockConfig+0x186>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 8000b4e:	4b12      	ldr	r3, [pc, #72]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000b50:	689b      	ldr	r3, [r3, #8]
 8000b52:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 8000b56:	687b      	ldr	r3, [r7, #4]
 8000b58:	691b      	ldr	r3, [r3, #16]
 8000b5a:	00db      	lsls	r3, r3, #3
 8000b5c:	490e      	ldr	r1, [pc, #56]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000b5e:	4313      	orrs	r3, r2
 8000b60:	608b      	str	r3, [r1, #8]
  }

  /* Update the SystemCoreClock global variable */
  SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> RCC_CFGR_HPRE_Pos];
 8000b62:	f000 f821 	bl	8000ba8 <HAL_RCC_GetSysClockFreq>
 8000b66:	4601      	mov	r1, r0
 8000b68:	4b0b      	ldr	r3, [pc, #44]	; (8000b98 <HAL_RCC_ClockConfig+0x1bc>)
 8000b6a:	689b      	ldr	r3, [r3, #8]
 8000b6c:	091b      	lsrs	r3, r3, #4
 8000b6e:	f003 030f 	and.w	r3, r3, #15
 8000b72:	4a0a      	ldr	r2, [pc, #40]	; (8000b9c <HAL_RCC_ClockConfig+0x1c0>)
 8000b74:	5cd3      	ldrb	r3, [r2, r3]
 8000b76:	fa21 f303 	lsr.w	r3, r1, r3
 8000b7a:	4a09      	ldr	r2, [pc, #36]	; (8000ba0 <HAL_RCC_ClockConfig+0x1c4>)
 8000b7c:	6013      	str	r3, [r2, #0]

  /* Configure the source of time base considering new system clocks settings */
  HAL_InitTick (uwTickPrio);
 8000b7e:	4b09      	ldr	r3, [pc, #36]	; (8000ba4 <HAL_RCC_ClockConfig+0x1c8>)
 8000b80:	681b      	ldr	r3, [r3, #0]
 8000b82:	4618      	mov	r0, r3
 8000b84:	f7ff fb48 	bl	8000218 <HAL_InitTick>

  return HAL_OK;
 8000b88:	2300      	movs	r3, #0
}
 8000b8a:	4618      	mov	r0, r3
 8000b8c:	3710      	adds	r7, #16
 8000b8e:	46bd      	mov	sp, r7
 8000b90:	bd80      	pop	{r7, pc}
 8000b92:	bf00      	nop
 8000b94:	40023c00 	.word	0x40023c00
 8000b98:	40023800 	.word	0x40023800
 8000b9c:	08004560 	.word	0x08004560
 8000ba0:	20000008 	.word	0x20000008
 8000ba4:	20000000 	.word	0x20000000

08000ba8 <HAL_RCC_GetSysClockFreq>:
  *
  *
  * @retval SYSCLK frequency
  */
__weak uint32_t HAL_RCC_GetSysClockFreq(void)
{
 8000ba8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000baa:	b085      	sub	sp, #20
 8000bac:	af00      	add	r7, sp, #0
  uint32_t pllm = 0U, pllvco = 0U, pllp = 0U;
 8000bae:	2300      	movs	r3, #0
 8000bb0:	607b      	str	r3, [r7, #4]
 8000bb2:	2300      	movs	r3, #0
 8000bb4:	60fb      	str	r3, [r7, #12]
 8000bb6:	2300      	movs	r3, #0
 8000bb8:	603b      	str	r3, [r7, #0]
  uint32_t sysclockfreq = 0U;
 8000bba:	2300      	movs	r3, #0
 8000bbc:	60bb      	str	r3, [r7, #8]

  /* Get SYSCLK source -------------------------------------------------------*/
  switch (RCC->CFGR & RCC_CFGR_SWS)
 8000bbe:	4b63      	ldr	r3, [pc, #396]	; (8000d4c <HAL_RCC_GetSysClockFreq+0x1a4>)
 8000bc0:	689b      	ldr	r3, [r3, #8]
 8000bc2:	f003 030c 	and.w	r3, r3, #12
 8000bc6:	2b04      	cmp	r3, #4
 8000bc8:	d007      	beq.n	8000bda <HAL_RCC_GetSysClockFreq+0x32>
 8000bca:	2b08      	cmp	r3, #8
 8000bcc:	d008      	beq.n	8000be0 <HAL_RCC_GetSysClockFreq+0x38>
 8000bce:	2b00      	cmp	r3, #0
 8000bd0:	f040 80b4 	bne.w	8000d3c <HAL_RCC_GetSysClockFreq+0x194>
  {
    case RCC_CFGR_SWS_HSI:  /* HSI used as system clock source */
    {
      sysclockfreq = HSI_VALUE;
 8000bd4:	4b5e      	ldr	r3, [pc, #376]	; (8000d50 <HAL_RCC_GetSysClockFreq+0x1a8>)
 8000bd6:	60bb      	str	r3, [r7, #8]
       break;
 8000bd8:	e0b3      	b.n	8000d42 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_HSE:  /* HSE used as system clock  source */
    {
      sysclockfreq = HSE_VALUE;
 8000bda:	4b5e      	ldr	r3, [pc, #376]	; (8000d54 <HAL_RCC_GetSysClockFreq+0x1ac>)
 8000bdc:	60bb      	str	r3, [r7, #8]
      break;
 8000bde:	e0b0      	b.n	8000d42 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    case RCC_CFGR_SWS_PLL:  /* PLL used as system clock  source */
    {
      /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
      SYSCLK = PLL_VCO / PLLP */
      pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 8000be0:	4b5a      	ldr	r3, [pc, #360]	; (8000d4c <HAL_RCC_GetSysClockFreq+0x1a4>)
 8000be2:	685b      	ldr	r3, [r3, #4]
 8000be4:	f003 033f 	and.w	r3, r3, #63	; 0x3f
 8000be8:	607b      	str	r3, [r7, #4]
      if(__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLSOURCE_HSI)
 8000bea:	4b58      	ldr	r3, [pc, #352]	; (8000d4c <HAL_RCC_GetSysClockFreq+0x1a4>)
 8000bec:	685b      	ldr	r3, [r3, #4]
 8000bee:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8000bf2:	2b00      	cmp	r3, #0
 8000bf4:	d04a      	beq.n	8000c8c <HAL_RCC_GetSysClockFreq+0xe4>
      {
        /* HSE used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSE_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 8000bf6:	4b55      	ldr	r3, [pc, #340]	; (8000d4c <HAL_RCC_GetSysClockFreq+0x1a4>)
 8000bf8:	685b      	ldr	r3, [r3, #4]
 8000bfa:	099b      	lsrs	r3, r3, #6
 8000bfc:	f04f 0400 	mov.w	r4, #0
 8000c00:	f240 11ff 	movw	r1, #511	; 0x1ff
 8000c04:	f04f 0200 	mov.w	r2, #0
 8000c08:	ea03 0501 	and.w	r5, r3, r1
 8000c0c:	ea04 0602 	and.w	r6, r4, r2
 8000c10:	4629      	mov	r1, r5
 8000c12:	4632      	mov	r2, r6
 8000c14:	f04f 0300 	mov.w	r3, #0
 8000c18:	f04f 0400 	mov.w	r4, #0
 8000c1c:	0154      	lsls	r4, r2, #5
 8000c1e:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 8000c22:	014b      	lsls	r3, r1, #5
 8000c24:	4619      	mov	r1, r3
 8000c26:	4622      	mov	r2, r4
 8000c28:	1b49      	subs	r1, r1, r5
 8000c2a:	eb62 0206 	sbc.w	r2, r2, r6
 8000c2e:	f04f 0300 	mov.w	r3, #0
 8000c32:	f04f 0400 	mov.w	r4, #0
 8000c36:	0194      	lsls	r4, r2, #6
 8000c38:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 8000c3c:	018b      	lsls	r3, r1, #6
 8000c3e:	1a5b      	subs	r3, r3, r1
 8000c40:	eb64 0402 	sbc.w	r4, r4, r2
 8000c44:	f04f 0100 	mov.w	r1, #0
 8000c48:	f04f 0200 	mov.w	r2, #0
 8000c4c:	00e2      	lsls	r2, r4, #3
 8000c4e:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 8000c52:	00d9      	lsls	r1, r3, #3
 8000c54:	460b      	mov	r3, r1
 8000c56:	4614      	mov	r4, r2
 8000c58:	195b      	adds	r3, r3, r5
 8000c5a:	eb44 0406 	adc.w	r4, r4, r6
 8000c5e:	f04f 0100 	mov.w	r1, #0
 8000c62:	f04f 0200 	mov.w	r2, #0
 8000c66:	0262      	lsls	r2, r4, #9
 8000c68:	ea42 52d3 	orr.w	r2, r2, r3, lsr #23
 8000c6c:	0259      	lsls	r1, r3, #9
 8000c6e:	460b      	mov	r3, r1
 8000c70:	4614      	mov	r4, r2
 8000c72:	4618      	mov	r0, r3
 8000c74:	4621      	mov	r1, r4
 8000c76:	687b      	ldr	r3, [r7, #4]
 8000c78:	f04f 0400 	mov.w	r4, #0
 8000c7c:	461a      	mov	r2, r3
 8000c7e:	4623      	mov	r3, r4
 8000c80:	f002 fc50 	bl	8003524 <__aeabi_uldivmod>
 8000c84:	4603      	mov	r3, r0
 8000c86:	460c      	mov	r4, r1
 8000c88:	60fb      	str	r3, [r7, #12]
 8000c8a:	e049      	b.n	8000d20 <HAL_RCC_GetSysClockFreq+0x178>
      }
      else
      {
        /* HSI used as PLL clock source */
        pllvco = (uint32_t) ((((uint64_t) HSI_VALUE * ((uint64_t) ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos)))) / (uint64_t)pllm);
 8000c8c:	4b2f      	ldr	r3, [pc, #188]	; (8000d4c <HAL_RCC_GetSysClockFreq+0x1a4>)
 8000c8e:	685b      	ldr	r3, [r3, #4]
 8000c90:	099b      	lsrs	r3, r3, #6
 8000c92:	f04f 0400 	mov.w	r4, #0
 8000c96:	f240 11ff 	movw	r1, #511	; 0x1ff
 8000c9a:	f04f 0200 	mov.w	r2, #0
 8000c9e:	ea03 0501 	and.w	r5, r3, r1
 8000ca2:	ea04 0602 	and.w	r6, r4, r2
 8000ca6:	4629      	mov	r1, r5
 8000ca8:	4632      	mov	r2, r6
 8000caa:	f04f 0300 	mov.w	r3, #0
 8000cae:	f04f 0400 	mov.w	r4, #0
 8000cb2:	0154      	lsls	r4, r2, #5
 8000cb4:	ea44 64d1 	orr.w	r4, r4, r1, lsr #27
 8000cb8:	014b      	lsls	r3, r1, #5
 8000cba:	4619      	mov	r1, r3
 8000cbc:	4622      	mov	r2, r4
 8000cbe:	1b49      	subs	r1, r1, r5
 8000cc0:	eb62 0206 	sbc.w	r2, r2, r6
 8000cc4:	f04f 0300 	mov.w	r3, #0
 8000cc8:	f04f 0400 	mov.w	r4, #0
 8000ccc:	0194      	lsls	r4, r2, #6
 8000cce:	ea44 6491 	orr.w	r4, r4, r1, lsr #26
 8000cd2:	018b      	lsls	r3, r1, #6
 8000cd4:	1a5b      	subs	r3, r3, r1
 8000cd6:	eb64 0402 	sbc.w	r4, r4, r2
 8000cda:	f04f 0100 	mov.w	r1, #0
 8000cde:	f04f 0200 	mov.w	r2, #0
 8000ce2:	00e2      	lsls	r2, r4, #3
 8000ce4:	ea42 7253 	orr.w	r2, r2, r3, lsr #29
 8000ce8:	00d9      	lsls	r1, r3, #3
 8000cea:	460b      	mov	r3, r1
 8000cec:	4614      	mov	r4, r2
 8000cee:	195b      	adds	r3, r3, r5
 8000cf0:	eb44 0406 	adc.w	r4, r4, r6
 8000cf4:	f04f 0100 	mov.w	r1, #0
 8000cf8:	f04f 0200 	mov.w	r2, #0
 8000cfc:	02a2      	lsls	r2, r4, #10
 8000cfe:	ea42 5293 	orr.w	r2, r2, r3, lsr #22
 8000d02:	0299      	lsls	r1, r3, #10
 8000d04:	460b      	mov	r3, r1
 8000d06:	4614      	mov	r4, r2
 8000d08:	4618      	mov	r0, r3
 8000d0a:	4621      	mov	r1, r4
 8000d0c:	687b      	ldr	r3, [r7, #4]
 8000d0e:	f04f 0400 	mov.w	r4, #0
 8000d12:	461a      	mov	r2, r3
 8000d14:	4623      	mov	r3, r4
 8000d16:	f002 fc05 	bl	8003524 <__aeabi_uldivmod>
 8000d1a:	4603      	mov	r3, r0
 8000d1c:	460c      	mov	r4, r1
 8000d1e:	60fb      	str	r3, [r7, #12]
      }
      pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> RCC_PLLCFGR_PLLP_Pos) + 1U) *2U);
 8000d20:	4b0a      	ldr	r3, [pc, #40]	; (8000d4c <HAL_RCC_GetSysClockFreq+0x1a4>)
 8000d22:	685b      	ldr	r3, [r3, #4]
 8000d24:	0c1b      	lsrs	r3, r3, #16
 8000d26:	f003 0303 	and.w	r3, r3, #3
 8000d2a:	3301      	adds	r3, #1
 8000d2c:	005b      	lsls	r3, r3, #1
 8000d2e:	603b      	str	r3, [r7, #0]

      sysclockfreq = pllvco/pllp;
 8000d30:	68fa      	ldr	r2, [r7, #12]
 8000d32:	683b      	ldr	r3, [r7, #0]
 8000d34:	fbb2 f3f3 	udiv	r3, r2, r3
 8000d38:	60bb      	str	r3, [r7, #8]
      break;
 8000d3a:	e002      	b.n	8000d42 <HAL_RCC_GetSysClockFreq+0x19a>
    }
    default:
    {
      sysclockfreq = HSI_VALUE;
 8000d3c:	4b04      	ldr	r3, [pc, #16]	; (8000d50 <HAL_RCC_GetSysClockFreq+0x1a8>)
 8000d3e:	60bb      	str	r3, [r7, #8]
      break;
 8000d40:	bf00      	nop
    }
  }
  return sysclockfreq;
 8000d42:	68bb      	ldr	r3, [r7, #8]
}
 8000d44:	4618      	mov	r0, r3
 8000d46:	3714      	adds	r7, #20
 8000d48:	46bd      	mov	sp, r7
 8000d4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d4c:	40023800 	.word	0x40023800
 8000d50:	00f42400 	.word	0x00f42400
 8000d54:	007a1200 	.word	0x007a1200

08000d58 <HAL_RCC_GetHCLKFreq>:
  * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency
  *         and updated within this function
  * @retval HCLK frequency
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
 8000d58:	b480      	push	{r7}
 8000d5a:	af00      	add	r7, sp, #0
  return SystemCoreClock;
 8000d5c:	4b03      	ldr	r3, [pc, #12]	; (8000d6c <HAL_RCC_GetHCLKFreq+0x14>)
 8000d5e:	681b      	ldr	r3, [r3, #0]
}
 8000d60:	4618      	mov	r0, r3
 8000d62:	46bd      	mov	sp, r7
 8000d64:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000d68:	4770      	bx	lr
 8000d6a:	bf00      	nop
 8000d6c:	20000008 	.word	0x20000008

08000d70 <HAL_RCC_GetPCLK1Freq>:
  * @note   Each time PCLK1 changes, this function must be called to update the
  *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK1 frequency
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
 8000d70:	b580      	push	{r7, lr}
 8000d72:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> RCC_CFGR_PPRE1_Pos]);
 8000d74:	f7ff fff0 	bl	8000d58 <HAL_RCC_GetHCLKFreq>
 8000d78:	4601      	mov	r1, r0
 8000d7a:	4b05      	ldr	r3, [pc, #20]	; (8000d90 <HAL_RCC_GetPCLK1Freq+0x20>)
 8000d7c:	689b      	ldr	r3, [r3, #8]
 8000d7e:	0a9b      	lsrs	r3, r3, #10
 8000d80:	f003 0307 	and.w	r3, r3, #7
 8000d84:	4a03      	ldr	r2, [pc, #12]	; (8000d94 <HAL_RCC_GetPCLK1Freq+0x24>)
 8000d86:	5cd3      	ldrb	r3, [r2, r3]
 8000d88:	fa21 f303 	lsr.w	r3, r1, r3
}
 8000d8c:	4618      	mov	r0, r3
 8000d8e:	bd80      	pop	{r7, pc}
 8000d90:	40023800 	.word	0x40023800
 8000d94:	08004570 	.word	0x08004570

08000d98 <HAL_RCC_GetPCLK2Freq>:
  * @note   Each time PCLK2 changes, this function must be called to update the
  *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK2 frequency
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
 8000d98:	b580      	push	{r7, lr}
 8000d9a:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> RCC_CFGR_PPRE2_Pos]);
 8000d9c:	f7ff ffdc 	bl	8000d58 <HAL_RCC_GetHCLKFreq>
 8000da0:	4601      	mov	r1, r0
 8000da2:	4b05      	ldr	r3, [pc, #20]	; (8000db8 <HAL_RCC_GetPCLK2Freq+0x20>)
 8000da4:	689b      	ldr	r3, [r3, #8]
 8000da6:	0b5b      	lsrs	r3, r3, #13
 8000da8:	f003 0307 	and.w	r3, r3, #7
 8000dac:	4a03      	ldr	r2, [pc, #12]	; (8000dbc <HAL_RCC_GetPCLK2Freq+0x24>)
 8000dae:	5cd3      	ldrb	r3, [r2, r3]
 8000db0:	fa21 f303 	lsr.w	r3, r1, r3
}
 8000db4:	4618      	mov	r0, r3
 8000db6:	bd80      	pop	{r7, pc}
 8000db8:	40023800 	.word	0x40023800
 8000dbc:	08004570 	.word	0x08004570

08000dc0 <HAL_DMA_Init>:
  * @param  hdma Pointer to a DMA_HandleTypeDef structure that contains
  *               the configuration information for the specified DMA Stream.  
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
{
 8000dc0:	b580      	push	{r7, lr}
 8000dc2:	b086      	sub	sp, #24
 8000dc4:	af00      	add	r7, sp, #0
 8000dc6:	6078      	str	r0, [r7, #4]
  uint32_t tmp = 0U;
 8000dc8:	2300      	movs	r3, #0
 8000dca:	617b      	str	r3, [r7, #20]
  uint32_t tickstart = HAL_GetTick();
 8000dcc:	f7ff fa68 	bl	80002a0 <HAL_GetTick>
 8000dd0:	6138      	str	r0, [r7, #16]
  DMA_Base_Registers *regs;

  /* Check the DMA peripheral state */
  if(hdma == NULL)
 8000dd2:	687b      	ldr	r3, [r7, #4]
 8000dd4:	2b00      	cmp	r3, #0
 8000dd6:	d101      	bne.n	8000ddc <HAL_DMA_Init+0x1c>
  {
    return HAL_ERROR;
 8000dd8:	2301      	movs	r3, #1
 8000dda:	e099      	b.n	8000f10 <HAL_DMA_Init+0x150>
    assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
    assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
  }
  
  /* Allocate lock resource */
  __HAL_UNLOCK(hdma);
 8000ddc:	687b      	ldr	r3, [r7, #4]
 8000dde:	2200      	movs	r2, #0
 8000de0:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34

  /* Change DMA peripheral state */
  hdma->State = HAL_DMA_STATE_BUSY;
 8000de4:	687b      	ldr	r3, [r7, #4]
 8000de6:	2202      	movs	r2, #2
 8000de8:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
  
  /* Disable the peripheral */
  __HAL_DMA_DISABLE(hdma);
 8000dec:	687b      	ldr	r3, [r7, #4]
 8000dee:	681b      	ldr	r3, [r3, #0]
 8000df0:	681a      	ldr	r2, [r3, #0]
 8000df2:	687b      	ldr	r3, [r7, #4]
 8000df4:	681b      	ldr	r3, [r3, #0]
 8000df6:	f022 0201 	bic.w	r2, r2, #1
 8000dfa:	601a      	str	r2, [r3, #0]
  
  /* Check if the DMA Stream is effectively disabled */
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 8000dfc:	e00f      	b.n	8000e1e <HAL_DMA_Init+0x5e>
  {
    /* Check for the Timeout */
    if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 8000dfe:	f7ff fa4f 	bl	80002a0 <HAL_GetTick>
 8000e02:	4602      	mov	r2, r0
 8000e04:	693b      	ldr	r3, [r7, #16]
 8000e06:	1ad3      	subs	r3, r2, r3
 8000e08:	2b05      	cmp	r3, #5
 8000e0a:	d908      	bls.n	8000e1e <HAL_DMA_Init+0x5e>
    {
      /* Update error code */
      hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 8000e0c:	687b      	ldr	r3, [r7, #4]
 8000e0e:	2220      	movs	r2, #32
 8000e10:	655a      	str	r2, [r3, #84]	; 0x54
      
      /* Change the DMA state */
      hdma->State = HAL_DMA_STATE_TIMEOUT;
 8000e12:	687b      	ldr	r3, [r7, #4]
 8000e14:	2203      	movs	r2, #3
 8000e16:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
      
      return HAL_TIMEOUT;
 8000e1a:	2303      	movs	r3, #3
 8000e1c:	e078      	b.n	8000f10 <HAL_DMA_Init+0x150>
  while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 8000e1e:	687b      	ldr	r3, [r7, #4]
 8000e20:	681b      	ldr	r3, [r3, #0]
 8000e22:	681b      	ldr	r3, [r3, #0]
 8000e24:	f003 0301 	and.w	r3, r3, #1
 8000e28:	2b00      	cmp	r3, #0
 8000e2a:	d1e8      	bne.n	8000dfe <HAL_DMA_Init+0x3e>
    }
  }
  
  /* Get the CR register value */
  tmp = hdma->Instance->CR;
 8000e2c:	687b      	ldr	r3, [r7, #4]
 8000e2e:	681b      	ldr	r3, [r3, #0]
 8000e30:	681b      	ldr	r3, [r3, #0]
 8000e32:	617b      	str	r3, [r7, #20]

  /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
  tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
 8000e34:	697a      	ldr	r2, [r7, #20]
 8000e36:	4b38      	ldr	r3, [pc, #224]	; (8000f18 <HAL_DMA_Init+0x158>)
 8000e38:	4013      	ands	r3, r2
 8000e3a:	617b      	str	r3, [r7, #20]
                      DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
                      DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \
                      DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));

  /* Prepare the DMA Stream configuration */
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8000e3c:	687b      	ldr	r3, [r7, #4]
 8000e3e:	685a      	ldr	r2, [r3, #4]
 8000e40:	687b      	ldr	r3, [r7, #4]
 8000e42:	689b      	ldr	r3, [r3, #8]
 8000e44:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8000e46:	687b      	ldr	r3, [r7, #4]
 8000e48:	68db      	ldr	r3, [r3, #12]
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8000e4a:	431a      	orrs	r2, r3
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8000e4c:	687b      	ldr	r3, [r7, #4]
 8000e4e:	691b      	ldr	r3, [r3, #16]
 8000e50:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8000e52:	687b      	ldr	r3, [r7, #4]
 8000e54:	695b      	ldr	r3, [r3, #20]
          hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 8000e56:	431a      	orrs	r2, r3
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8000e58:	687b      	ldr	r3, [r7, #4]
 8000e5a:	699b      	ldr	r3, [r3, #24]
 8000e5c:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 8000e5e:	687b      	ldr	r3, [r7, #4]
 8000e60:	69db      	ldr	r3, [r3, #28]
          hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 8000e62:	431a      	orrs	r2, r3
          hdma->Init.Mode                | hdma->Init.Priority;
 8000e64:	687b      	ldr	r3, [r7, #4]
 8000e66:	6a1b      	ldr	r3, [r3, #32]
 8000e68:	4313      	orrs	r3, r2
  tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 8000e6a:	697a      	ldr	r2, [r7, #20]
 8000e6c:	4313      	orrs	r3, r2
 8000e6e:	617b      	str	r3, [r7, #20]

  /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 8000e70:	687b      	ldr	r3, [r7, #4]
 8000e72:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000e74:	2b04      	cmp	r3, #4
 8000e76:	d107      	bne.n	8000e88 <HAL_DMA_Init+0xc8>
  {
    /* Get memory burst and peripheral burst */
    tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
 8000e78:	687b      	ldr	r3, [r7, #4]
 8000e7a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000e7c:	687b      	ldr	r3, [r7, #4]
 8000e7e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000e80:	4313      	orrs	r3, r2
 8000e82:	697a      	ldr	r2, [r7, #20]
 8000e84:	4313      	orrs	r3, r2
 8000e86:	617b      	str	r3, [r7, #20]
  }
  
  /* Write to DMA Stream CR register */
  hdma->Instance->CR = tmp;  
 8000e88:	687b      	ldr	r3, [r7, #4]
 8000e8a:	681b      	ldr	r3, [r3, #0]
 8000e8c:	697a      	ldr	r2, [r7, #20]
 8000e8e:	601a      	str	r2, [r3, #0]

  /* Get the FCR register value */
  tmp = hdma->Instance->FCR;
 8000e90:	687b      	ldr	r3, [r7, #4]
 8000e92:	681b      	ldr	r3, [r3, #0]
 8000e94:	695b      	ldr	r3, [r3, #20]
 8000e96:	617b      	str	r3, [r7, #20]

  /* Clear Direct mode and FIFO threshold bits */
  tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
 8000e98:	697b      	ldr	r3, [r7, #20]
 8000e9a:	f023 0307 	bic.w	r3, r3, #7
 8000e9e:	617b      	str	r3, [r7, #20]

  /* Prepare the DMA Stream FIFO configuration */
  tmp |= hdma->Init.FIFOMode;
 8000ea0:	687b      	ldr	r3, [r7, #4]
 8000ea2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000ea4:	697a      	ldr	r2, [r7, #20]
 8000ea6:	4313      	orrs	r3, r2
 8000ea8:	617b      	str	r3, [r7, #20]

  /* The FIFO threshold is not used when the FIFO mode is disabled */
  if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 8000eaa:	687b      	ldr	r3, [r7, #4]
 8000eac:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000eae:	2b04      	cmp	r3, #4
 8000eb0:	d117      	bne.n	8000ee2 <HAL_DMA_Init+0x122>
  {
    /* Get the FIFO threshold */
    tmp |= hdma->Init.FIFOThreshold;
 8000eb2:	687b      	ldr	r3, [r7, #4]
 8000eb4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000eb6:	697a      	ldr	r2, [r7, #20]
 8000eb8:	4313      	orrs	r3, r2
 8000eba:	617b      	str	r3, [r7, #20]
    
    /* Check compatibility between FIFO threshold level and size of the memory burst */
    /* for INCR4, INCR8, INCR16 bursts */
    if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
 8000ebc:	687b      	ldr	r3, [r7, #4]
 8000ebe:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000ec0:	2b00      	cmp	r3, #0
 8000ec2:	d00e      	beq.n	8000ee2 <HAL_DMA_Init+0x122>
    {
      if (DMA_CheckFifoParam(hdma) != HAL_OK)
 8000ec4:	6878      	ldr	r0, [r7, #4]
 8000ec6:	f000 f85f 	bl	8000f88 <DMA_CheckFifoParam>
 8000eca:	4603      	mov	r3, r0
 8000ecc:	2b00      	cmp	r3, #0
 8000ece:	d008      	beq.n	8000ee2 <HAL_DMA_Init+0x122>
      {
        /* Update error code */
        hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
 8000ed0:	687b      	ldr	r3, [r7, #4]
 8000ed2:	2240      	movs	r2, #64	; 0x40
 8000ed4:	655a      	str	r2, [r3, #84]	; 0x54
        
        /* Change the DMA state */
        hdma->State = HAL_DMA_STATE_READY;
 8000ed6:	687b      	ldr	r3, [r7, #4]
 8000ed8:	2201      	movs	r2, #1
 8000eda:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
        
        return HAL_ERROR; 
 8000ede:	2301      	movs	r3, #1
 8000ee0:	e016      	b.n	8000f10 <HAL_DMA_Init+0x150>
      }
    }
  }
  
  /* Write to DMA Stream FCR */
  hdma->Instance->FCR = tmp;
 8000ee2:	687b      	ldr	r3, [r7, #4]
 8000ee4:	681b      	ldr	r3, [r3, #0]
 8000ee6:	697a      	ldr	r2, [r7, #20]
 8000ee8:	615a      	str	r2, [r3, #20]

  /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
     DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
  regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 8000eea:	6878      	ldr	r0, [r7, #4]
 8000eec:	f000 f816 	bl	8000f1c <DMA_CalcBaseAndBitshift>
 8000ef0:	4603      	mov	r3, r0
 8000ef2:	60fb      	str	r3, [r7, #12]
  
  /* Clear all interrupt flags */
  regs->IFCR = 0x3FU << hdma->StreamIndex;
 8000ef4:	687b      	ldr	r3, [r7, #4]
 8000ef6:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 8000ef8:	223f      	movs	r2, #63	; 0x3f
 8000efa:	409a      	lsls	r2, r3
 8000efc:	68fb      	ldr	r3, [r7, #12]
 8000efe:	609a      	str	r2, [r3, #8]

  /* Initialize the error code */
  hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 8000f00:	687b      	ldr	r3, [r7, #4]
 8000f02:	2200      	movs	r2, #0
 8000f04:	655a      	str	r2, [r3, #84]	; 0x54
                                                                                     
  /* Initialize the DMA state */
  hdma->State = HAL_DMA_STATE_READY;
 8000f06:	687b      	ldr	r3, [r7, #4]
 8000f08:	2201      	movs	r2, #1
 8000f0a:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35

  return HAL_OK;
 8000f0e:	2300      	movs	r3, #0
}
 8000f10:	4618      	mov	r0, r3
 8000f12:	3718      	adds	r7, #24
 8000f14:	46bd      	mov	sp, r7
 8000f16:	bd80      	pop	{r7, pc}
 8000f18:	f010803f 	.word	0xf010803f

08000f1c <DMA_CalcBaseAndBitshift>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval Stream base address
  */
static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
{
 8000f1c:	b480      	push	{r7}
 8000f1e:	b085      	sub	sp, #20
 8000f20:	af00      	add	r7, sp, #0
 8000f22:	6078      	str	r0, [r7, #4]
  uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
 8000f24:	687b      	ldr	r3, [r7, #4]
 8000f26:	681b      	ldr	r3, [r3, #0]
 8000f28:	b2db      	uxtb	r3, r3
 8000f2a:	3b10      	subs	r3, #16
 8000f2c:	4a14      	ldr	r2, [pc, #80]	; (8000f80 <DMA_CalcBaseAndBitshift+0x64>)
 8000f2e:	fba2 2303 	umull	r2, r3, r2, r3
 8000f32:	091b      	lsrs	r3, r3, #4
 8000f34:	60fb      	str	r3, [r7, #12]
  
  /* lookup table for necessary bitshift of flags within status registers */
  static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
  hdma->StreamIndex = flagBitshiftOffset[stream_number];
 8000f36:	4a13      	ldr	r2, [pc, #76]	; (8000f84 <DMA_CalcBaseAndBitshift+0x68>)
 8000f38:	68fb      	ldr	r3, [r7, #12]
 8000f3a:	4413      	add	r3, r2
 8000f3c:	781b      	ldrb	r3, [r3, #0]
 8000f3e:	461a      	mov	r2, r3
 8000f40:	687b      	ldr	r3, [r7, #4]
 8000f42:	65da      	str	r2, [r3, #92]	; 0x5c
  
  if (stream_number > 3U)
 8000f44:	68fb      	ldr	r3, [r7, #12]
 8000f46:	2b03      	cmp	r3, #3
 8000f48:	d909      	bls.n	8000f5e <DMA_CalcBaseAndBitshift+0x42>
  {
    /* return pointer to HISR and HIFCR */
    hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
 8000f4a:	687b      	ldr	r3, [r7, #4]
 8000f4c:	681b      	ldr	r3, [r3, #0]
 8000f4e:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8000f52:	f023 0303 	bic.w	r3, r3, #3
 8000f56:	1d1a      	adds	r2, r3, #4
 8000f58:	687b      	ldr	r3, [r7, #4]
 8000f5a:	659a      	str	r2, [r3, #88]	; 0x58
 8000f5c:	e007      	b.n	8000f6e <DMA_CalcBaseAndBitshift+0x52>
  }
  else
  {
    /* return pointer to LISR and LIFCR */
    hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
 8000f5e:	687b      	ldr	r3, [r7, #4]
 8000f60:	681b      	ldr	r3, [r3, #0]
 8000f62:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8000f66:	f023 0303 	bic.w	r3, r3, #3
 8000f6a:	687a      	ldr	r2, [r7, #4]
 8000f6c:	6593      	str	r3, [r2, #88]	; 0x58
  }
  
  return hdma->StreamBaseAddress;
 8000f6e:	687b      	ldr	r3, [r7, #4]
 8000f70:	6d9b      	ldr	r3, [r3, #88]	; 0x58
}
 8000f72:	4618      	mov	r0, r3
 8000f74:	3714      	adds	r7, #20
 8000f76:	46bd      	mov	sp, r7
 8000f78:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000f7c:	4770      	bx	lr
 8000f7e:	bf00      	nop
 8000f80:	aaaaaaab 	.word	0xaaaaaaab
 8000f84:	08003a34 	.word	0x08003a34

08000f88 <DMA_CheckFifoParam>:
  * @param  hdma       pointer to a DMA_HandleTypeDef structure that contains
  *                     the configuration information for the specified DMA Stream. 
  * @retval HAL status
  */
static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
{
 8000f88:	b480      	push	{r7}
 8000f8a:	b085      	sub	sp, #20
 8000f8c:	af00      	add	r7, sp, #0
 8000f8e:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef status = HAL_OK;
 8000f90:	2300      	movs	r3, #0
 8000f92:	73fb      	strb	r3, [r7, #15]
  uint32_t tmp = hdma->Init.FIFOThreshold;
 8000f94:	687b      	ldr	r3, [r7, #4]
 8000f96:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000f98:	60bb      	str	r3, [r7, #8]
  
  /* Memory Data size equal to Byte */
  if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
 8000f9a:	687b      	ldr	r3, [r7, #4]
 8000f9c:	699b      	ldr	r3, [r3, #24]
 8000f9e:	2b00      	cmp	r3, #0
 8000fa0:	d11f      	bne.n	8000fe2 <DMA_CheckFifoParam+0x5a>
  {
    switch (tmp)
 8000fa2:	68bb      	ldr	r3, [r7, #8]
 8000fa4:	2b03      	cmp	r3, #3
 8000fa6:	d855      	bhi.n	8001054 <DMA_CheckFifoParam+0xcc>
 8000fa8:	a201      	add	r2, pc, #4	; (adr r2, 8000fb0 <DMA_CheckFifoParam+0x28>)
 8000faa:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000fae:	bf00      	nop
 8000fb0:	08000fc1 	.word	0x08000fc1
 8000fb4:	08000fd3 	.word	0x08000fd3
 8000fb8:	08000fc1 	.word	0x08000fc1
 8000fbc:	08001055 	.word	0x08001055
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8000fc0:	687b      	ldr	r3, [r7, #4]
 8000fc2:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000fc4:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8000fc8:	2b00      	cmp	r3, #0
 8000fca:	d045      	beq.n	8001058 <DMA_CheckFifoParam+0xd0>
      {
        status = HAL_ERROR;
 8000fcc:	2301      	movs	r3, #1
 8000fce:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8000fd0:	e042      	b.n	8001058 <DMA_CheckFifoParam+0xd0>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8000fd2:	687b      	ldr	r3, [r7, #4]
 8000fd4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000fd6:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8000fda:	d13f      	bne.n	800105c <DMA_CheckFifoParam+0xd4>
      {
        status = HAL_ERROR;
 8000fdc:	2301      	movs	r3, #1
 8000fde:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8000fe0:	e03c      	b.n	800105c <DMA_CheckFifoParam+0xd4>
      break;
    }
  }
  
  /* Memory Data size equal to Half-Word */
  else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
 8000fe2:	687b      	ldr	r3, [r7, #4]
 8000fe4:	699b      	ldr	r3, [r3, #24]
 8000fe6:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8000fea:	d121      	bne.n	8001030 <DMA_CheckFifoParam+0xa8>
  {
    switch (tmp)
 8000fec:	68bb      	ldr	r3, [r7, #8]
 8000fee:	2b03      	cmp	r3, #3
 8000ff0:	d836      	bhi.n	8001060 <DMA_CheckFifoParam+0xd8>
 8000ff2:	a201      	add	r2, pc, #4	; (adr r2, 8000ff8 <DMA_CheckFifoParam+0x70>)
 8000ff4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000ff8:	08001009 	.word	0x08001009
 8000ffc:	0800100f 	.word	0x0800100f
 8001000:	08001009 	.word	0x08001009
 8001004:	08001021 	.word	0x08001021
    {
    case DMA_FIFO_THRESHOLD_1QUARTERFULL:
    case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
      status = HAL_ERROR;
 8001008:	2301      	movs	r3, #1
 800100a:	73fb      	strb	r3, [r7, #15]
      break;
 800100c:	e02f      	b.n	800106e <DMA_CheckFifoParam+0xe6>
    case DMA_FIFO_THRESHOLD_HALFFULL:
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 800100e:	687b      	ldr	r3, [r7, #4]
 8001010:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001012:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8001016:	2b00      	cmp	r3, #0
 8001018:	d024      	beq.n	8001064 <DMA_CheckFifoParam+0xdc>
      {
        status = HAL_ERROR;
 800101a:	2301      	movs	r3, #1
 800101c:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800101e:	e021      	b.n	8001064 <DMA_CheckFifoParam+0xdc>
    case DMA_FIFO_THRESHOLD_FULL:
      if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 8001020:	687b      	ldr	r3, [r7, #4]
 8001022:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001024:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8001028:	d11e      	bne.n	8001068 <DMA_CheckFifoParam+0xe0>
      {
        status = HAL_ERROR;
 800102a:	2301      	movs	r3, #1
 800102c:	73fb      	strb	r3, [r7, #15]
      }
      break;   
 800102e:	e01b      	b.n	8001068 <DMA_CheckFifoParam+0xe0>
  }
  
  /* Memory Data size equal to Word */
  else
  {
    switch (tmp)
 8001030:	68bb      	ldr	r3, [r7, #8]
 8001032:	2b02      	cmp	r3, #2
 8001034:	d902      	bls.n	800103c <DMA_CheckFifoParam+0xb4>
 8001036:	2b03      	cmp	r3, #3
 8001038:	d003      	beq.n	8001042 <DMA_CheckFifoParam+0xba>
      {
        status = HAL_ERROR;
      }
      break;
    default:
      break;
 800103a:	e018      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      status = HAL_ERROR;
 800103c:	2301      	movs	r3, #1
 800103e:	73fb      	strb	r3, [r7, #15]
      break;
 8001040:	e015      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 8001042:	687b      	ldr	r3, [r7, #4]
 8001044:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001046:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 800104a:	2b00      	cmp	r3, #0
 800104c:	d00e      	beq.n	800106c <DMA_CheckFifoParam+0xe4>
        status = HAL_ERROR;
 800104e:	2301      	movs	r3, #1
 8001050:	73fb      	strb	r3, [r7, #15]
      break;
 8001052:	e00b      	b.n	800106c <DMA_CheckFifoParam+0xe4>
      break;
 8001054:	bf00      	nop
 8001056:	e00a      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      break;
 8001058:	bf00      	nop
 800105a:	e008      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      break;
 800105c:	bf00      	nop
 800105e:	e006      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      break;
 8001060:	bf00      	nop
 8001062:	e004      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      break;
 8001064:	bf00      	nop
 8001066:	e002      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      break;   
 8001068:	bf00      	nop
 800106a:	e000      	b.n	800106e <DMA_CheckFifoParam+0xe6>
      break;
 800106c:	bf00      	nop
    }
  } 
  
  return status; 
 800106e:	7bfb      	ldrb	r3, [r7, #15]
}
 8001070:	4618      	mov	r0, r3
 8001072:	3714      	adds	r7, #20
 8001074:	46bd      	mov	sp, r7
 8001076:	f85d 7b04 	ldr.w	r7, [sp], #4
 800107a:	4770      	bx	lr

0800107c <HAL_GPIO_Init>:
  * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 800107c:	b480      	push	{r7}
 800107e:	b089      	sub	sp, #36	; 0x24
 8001080:	af00      	add	r7, sp, #0
 8001082:	6078      	str	r0, [r7, #4]
 8001084:	6039      	str	r1, [r7, #0]
  uint32_t position;
  uint32_t ioposition = 0x00U;
 8001086:	2300      	movs	r3, #0
 8001088:	617b      	str	r3, [r7, #20]
  uint32_t iocurrent = 0x00U;
 800108a:	2300      	movs	r3, #0
 800108c:	613b      	str	r3, [r7, #16]
  uint32_t temp = 0x00U;
 800108e:	2300      	movs	r3, #0
 8001090:	61bb      	str	r3, [r7, #24]
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  assert_param(IS_GPIO_PULL(GPIO_Init->Pull));

  /* Configure the port pins */
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001092:	2300      	movs	r3, #0
 8001094:	61fb      	str	r3, [r7, #28]
 8001096:	e159      	b.n	800134c <HAL_GPIO_Init+0x2d0>
  {
    /* Get the IO position */
    ioposition = 0x01U << position;
 8001098:	2201      	movs	r2, #1
 800109a:	69fb      	ldr	r3, [r7, #28]
 800109c:	fa02 f303 	lsl.w	r3, r2, r3
 80010a0:	617b      	str	r3, [r7, #20]
    /* Get the current IO position */
    iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 80010a2:	683b      	ldr	r3, [r7, #0]
 80010a4:	681b      	ldr	r3, [r3, #0]
 80010a6:	697a      	ldr	r2, [r7, #20]
 80010a8:	4013      	ands	r3, r2
 80010aa:	613b      	str	r3, [r7, #16]

    if(iocurrent == ioposition)
 80010ac:	693a      	ldr	r2, [r7, #16]
 80010ae:	697b      	ldr	r3, [r7, #20]
 80010b0:	429a      	cmp	r2, r3
 80010b2:	f040 8148 	bne.w	8001346 <HAL_GPIO_Init+0x2ca>
    {
      /*--------------------- GPIO Mode Configuration ------------------------*/
      /* In case of Output or Alternate function mode selection */
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 80010b6:	683b      	ldr	r3, [r7, #0]
 80010b8:	685b      	ldr	r3, [r3, #4]
 80010ba:	f003 0303 	and.w	r3, r3, #3
 80010be:	2b01      	cmp	r3, #1
 80010c0:	d005      	beq.n	80010ce <HAL_GPIO_Init+0x52>
          (GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 80010c2:	683b      	ldr	r3, [r7, #0]
 80010c4:	685b      	ldr	r3, [r3, #4]
 80010c6:	f003 0303 	and.w	r3, r3, #3
      if(((GPIO_Init->Mode & GPIO_MODE) == MODE_OUTPUT) || \
 80010ca:	2b02      	cmp	r3, #2
 80010cc:	d130      	bne.n	8001130 <HAL_GPIO_Init+0xb4>
      {
        /* Check the Speed parameter */
        assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
        /* Configure the IO Speed */
        temp = GPIOx->OSPEEDR; 
 80010ce:	687b      	ldr	r3, [r7, #4]
 80010d0:	689b      	ldr	r3, [r3, #8]
 80010d2:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2U));
 80010d4:	69fb      	ldr	r3, [r7, #28]
 80010d6:	005b      	lsls	r3, r3, #1
 80010d8:	2203      	movs	r2, #3
 80010da:	fa02 f303 	lsl.w	r3, r2, r3
 80010de:	43db      	mvns	r3, r3
 80010e0:	69ba      	ldr	r2, [r7, #24]
 80010e2:	4013      	ands	r3, r2
 80010e4:	61bb      	str	r3, [r7, #24]
        temp |= (GPIO_Init->Speed << (position * 2U));
 80010e6:	683b      	ldr	r3, [r7, #0]
 80010e8:	68da      	ldr	r2, [r3, #12]
 80010ea:	69fb      	ldr	r3, [r7, #28]
 80010ec:	005b      	lsls	r3, r3, #1
 80010ee:	fa02 f303 	lsl.w	r3, r2, r3
 80010f2:	69ba      	ldr	r2, [r7, #24]
 80010f4:	4313      	orrs	r3, r2
 80010f6:	61bb      	str	r3, [r7, #24]
        GPIOx->OSPEEDR = temp;
 80010f8:	687b      	ldr	r3, [r7, #4]
 80010fa:	69ba      	ldr	r2, [r7, #24]
 80010fc:	609a      	str	r2, [r3, #8]

        /* Configure the IO Output Type */
        temp = GPIOx->OTYPER;
 80010fe:	687b      	ldr	r3, [r7, #4]
 8001100:	685b      	ldr	r3, [r3, #4]
 8001102:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 8001104:	2201      	movs	r2, #1
 8001106:	69fb      	ldr	r3, [r7, #28]
 8001108:	fa02 f303 	lsl.w	r3, r2, r3
 800110c:	43db      	mvns	r3, r3
 800110e:	69ba      	ldr	r2, [r7, #24]
 8001110:	4013      	ands	r3, r2
 8001112:	61bb      	str	r3, [r7, #24]
        temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4U) << position);
 8001114:	683b      	ldr	r3, [r7, #0]
 8001116:	685b      	ldr	r3, [r3, #4]
 8001118:	091b      	lsrs	r3, r3, #4
 800111a:	f003 0201 	and.w	r2, r3, #1
 800111e:	69fb      	ldr	r3, [r7, #28]
 8001120:	fa02 f303 	lsl.w	r3, r2, r3
 8001124:	69ba      	ldr	r2, [r7, #24]
 8001126:	4313      	orrs	r3, r2
 8001128:	61bb      	str	r3, [r7, #24]
        GPIOx->OTYPER = temp;
 800112a:	687b      	ldr	r3, [r7, #4]
 800112c:	69ba      	ldr	r2, [r7, #24]
 800112e:	605a      	str	r2, [r3, #4]
       }

      if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
 8001130:	683b      	ldr	r3, [r7, #0]
 8001132:	685b      	ldr	r3, [r3, #4]
 8001134:	f003 0303 	and.w	r3, r3, #3
 8001138:	2b03      	cmp	r3, #3
 800113a:	d017      	beq.n	800116c <HAL_GPIO_Init+0xf0>
      {
        /* Activate the Pull-up or Pull down resistor for the current IO */
        temp = GPIOx->PUPDR;
 800113c:	687b      	ldr	r3, [r7, #4]
 800113e:	68db      	ldr	r3, [r3, #12]
 8001140:	61bb      	str	r3, [r7, #24]
        temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
 8001142:	69fb      	ldr	r3, [r7, #28]
 8001144:	005b      	lsls	r3, r3, #1
 8001146:	2203      	movs	r2, #3
 8001148:	fa02 f303 	lsl.w	r3, r2, r3
 800114c:	43db      	mvns	r3, r3
 800114e:	69ba      	ldr	r2, [r7, #24]
 8001150:	4013      	ands	r3, r2
 8001152:	61bb      	str	r3, [r7, #24]
        temp |= ((GPIO_Init->Pull) << (position * 2U));
 8001154:	683b      	ldr	r3, [r7, #0]
 8001156:	689a      	ldr	r2, [r3, #8]
 8001158:	69fb      	ldr	r3, [r7, #28]
 800115a:	005b      	lsls	r3, r3, #1
 800115c:	fa02 f303 	lsl.w	r3, r2, r3
 8001160:	69ba      	ldr	r2, [r7, #24]
 8001162:	4313      	orrs	r3, r2
 8001164:	61bb      	str	r3, [r7, #24]
        GPIOx->PUPDR = temp;
 8001166:	687b      	ldr	r3, [r7, #4]
 8001168:	69ba      	ldr	r2, [r7, #24]
 800116a:	60da      	str	r2, [r3, #12]
      }

      /* In case of Alternate function mode selection */
      if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
 800116c:	683b      	ldr	r3, [r7, #0]
 800116e:	685b      	ldr	r3, [r3, #4]
 8001170:	f003 0303 	and.w	r3, r3, #3
 8001174:	2b02      	cmp	r3, #2
 8001176:	d123      	bne.n	80011c0 <HAL_GPIO_Init+0x144>
      {
        /* Check the Alternate function parameter */
        assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
        /* Configure Alternate function mapped with the current IO */
        temp = GPIOx->AFR[position >> 3U];
 8001178:	69fb      	ldr	r3, [r7, #28]
 800117a:	08da      	lsrs	r2, r3, #3
 800117c:	687b      	ldr	r3, [r7, #4]
 800117e:	3208      	adds	r2, #8
 8001180:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001184:	61bb      	str	r3, [r7, #24]
        temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
 8001186:	69fb      	ldr	r3, [r7, #28]
 8001188:	f003 0307 	and.w	r3, r3, #7
 800118c:	009b      	lsls	r3, r3, #2
 800118e:	220f      	movs	r2, #15
 8001190:	fa02 f303 	lsl.w	r3, r2, r3
 8001194:	43db      	mvns	r3, r3
 8001196:	69ba      	ldr	r2, [r7, #24]
 8001198:	4013      	ands	r3, r2
 800119a:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
 800119c:	683b      	ldr	r3, [r7, #0]
 800119e:	691a      	ldr	r2, [r3, #16]
 80011a0:	69fb      	ldr	r3, [r7, #28]
 80011a2:	f003 0307 	and.w	r3, r3, #7
 80011a6:	009b      	lsls	r3, r3, #2
 80011a8:	fa02 f303 	lsl.w	r3, r2, r3
 80011ac:	69ba      	ldr	r2, [r7, #24]
 80011ae:	4313      	orrs	r3, r2
 80011b0:	61bb      	str	r3, [r7, #24]
        GPIOx->AFR[position >> 3U] = temp;
 80011b2:	69fb      	ldr	r3, [r7, #28]
 80011b4:	08da      	lsrs	r2, r3, #3
 80011b6:	687b      	ldr	r3, [r7, #4]
 80011b8:	3208      	adds	r2, #8
 80011ba:	69b9      	ldr	r1, [r7, #24]
 80011bc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
      }

      /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
      temp = GPIOx->MODER;
 80011c0:	687b      	ldr	r3, [r7, #4]
 80011c2:	681b      	ldr	r3, [r3, #0]
 80011c4:	61bb      	str	r3, [r7, #24]
      temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
 80011c6:	69fb      	ldr	r3, [r7, #28]
 80011c8:	005b      	lsls	r3, r3, #1
 80011ca:	2203      	movs	r2, #3
 80011cc:	fa02 f303 	lsl.w	r3, r2, r3
 80011d0:	43db      	mvns	r3, r3
 80011d2:	69ba      	ldr	r2, [r7, #24]
 80011d4:	4013      	ands	r3, r2
 80011d6:	61bb      	str	r3, [r7, #24]
      temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 80011d8:	683b      	ldr	r3, [r7, #0]
 80011da:	685b      	ldr	r3, [r3, #4]
 80011dc:	f003 0203 	and.w	r2, r3, #3
 80011e0:	69fb      	ldr	r3, [r7, #28]
 80011e2:	005b      	lsls	r3, r3, #1
 80011e4:	fa02 f303 	lsl.w	r3, r2, r3
 80011e8:	69ba      	ldr	r2, [r7, #24]
 80011ea:	4313      	orrs	r3, r2
 80011ec:	61bb      	str	r3, [r7, #24]
      GPIOx->MODER = temp;
 80011ee:	687b      	ldr	r3, [r7, #4]
 80011f0:	69ba      	ldr	r2, [r7, #24]
 80011f2:	601a      	str	r2, [r3, #0]

      /*--------------------- EXTI Mode Configuration ------------------------*/
      /* Configure the External Interrupt or event for the current IO */
      if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 80011f4:	683b      	ldr	r3, [r7, #0]
 80011f6:	685b      	ldr	r3, [r3, #4]
 80011f8:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80011fc:	2b00      	cmp	r3, #0
 80011fe:	f000 80a2 	beq.w	8001346 <HAL_GPIO_Init+0x2ca>
      {
        /* Enable SYSCFG Clock */
        __HAL_RCC_SYSCFG_CLK_ENABLE();
 8001202:	2300      	movs	r3, #0
 8001204:	60fb      	str	r3, [r7, #12]
 8001206:	4b56      	ldr	r3, [pc, #344]	; (8001360 <HAL_GPIO_Init+0x2e4>)
 8001208:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800120a:	4a55      	ldr	r2, [pc, #340]	; (8001360 <HAL_GPIO_Init+0x2e4>)
 800120c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001210:	6453      	str	r3, [r2, #68]	; 0x44
 8001212:	4b53      	ldr	r3, [pc, #332]	; (8001360 <HAL_GPIO_Init+0x2e4>)
 8001214:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001216:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 800121a:	60fb      	str	r3, [r7, #12]
 800121c:	68fb      	ldr	r3, [r7, #12]

        temp = SYSCFG->EXTICR[position >> 2U];
 800121e:	4a51      	ldr	r2, [pc, #324]	; (8001364 <HAL_GPIO_Init+0x2e8>)
 8001220:	69fb      	ldr	r3, [r7, #28]
 8001222:	089b      	lsrs	r3, r3, #2
 8001224:	3302      	adds	r3, #2
 8001226:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800122a:	61bb      	str	r3, [r7, #24]
        temp &= ~(0x0FU << (4U * (position & 0x03U)));
 800122c:	69fb      	ldr	r3, [r7, #28]
 800122e:	f003 0303 	and.w	r3, r3, #3
 8001232:	009b      	lsls	r3, r3, #2
 8001234:	220f      	movs	r2, #15
 8001236:	fa02 f303 	lsl.w	r3, r2, r3
 800123a:	43db      	mvns	r3, r3
 800123c:	69ba      	ldr	r2, [r7, #24]
 800123e:	4013      	ands	r3, r2
 8001240:	61bb      	str	r3, [r7, #24]
        temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
 8001242:	687b      	ldr	r3, [r7, #4]
 8001244:	4a48      	ldr	r2, [pc, #288]	; (8001368 <HAL_GPIO_Init+0x2ec>)
 8001246:	4293      	cmp	r3, r2
 8001248:	d019      	beq.n	800127e <HAL_GPIO_Init+0x202>
 800124a:	687b      	ldr	r3, [r7, #4]
 800124c:	4a47      	ldr	r2, [pc, #284]	; (800136c <HAL_GPIO_Init+0x2f0>)
 800124e:	4293      	cmp	r3, r2
 8001250:	d013      	beq.n	800127a <HAL_GPIO_Init+0x1fe>
 8001252:	687b      	ldr	r3, [r7, #4]
 8001254:	4a46      	ldr	r2, [pc, #280]	; (8001370 <HAL_GPIO_Init+0x2f4>)
 8001256:	4293      	cmp	r3, r2
 8001258:	d00d      	beq.n	8001276 <HAL_GPIO_Init+0x1fa>
 800125a:	687b      	ldr	r3, [r7, #4]
 800125c:	4a45      	ldr	r2, [pc, #276]	; (8001374 <HAL_GPIO_Init+0x2f8>)
 800125e:	4293      	cmp	r3, r2
 8001260:	d007      	beq.n	8001272 <HAL_GPIO_Init+0x1f6>
 8001262:	687b      	ldr	r3, [r7, #4]
 8001264:	4a44      	ldr	r2, [pc, #272]	; (8001378 <HAL_GPIO_Init+0x2fc>)
 8001266:	4293      	cmp	r3, r2
 8001268:	d101      	bne.n	800126e <HAL_GPIO_Init+0x1f2>
 800126a:	2304      	movs	r3, #4
 800126c:	e008      	b.n	8001280 <HAL_GPIO_Init+0x204>
 800126e:	2307      	movs	r3, #7
 8001270:	e006      	b.n	8001280 <HAL_GPIO_Init+0x204>
 8001272:	2303      	movs	r3, #3
 8001274:	e004      	b.n	8001280 <HAL_GPIO_Init+0x204>
 8001276:	2302      	movs	r3, #2
 8001278:	e002      	b.n	8001280 <HAL_GPIO_Init+0x204>
 800127a:	2301      	movs	r3, #1
 800127c:	e000      	b.n	8001280 <HAL_GPIO_Init+0x204>
 800127e:	2300      	movs	r3, #0
 8001280:	69fa      	ldr	r2, [r7, #28]
 8001282:	f002 0203 	and.w	r2, r2, #3
 8001286:	0092      	lsls	r2, r2, #2
 8001288:	4093      	lsls	r3, r2
 800128a:	69ba      	ldr	r2, [r7, #24]
 800128c:	4313      	orrs	r3, r2
 800128e:	61bb      	str	r3, [r7, #24]
        SYSCFG->EXTICR[position >> 2U] = temp;
 8001290:	4934      	ldr	r1, [pc, #208]	; (8001364 <HAL_GPIO_Init+0x2e8>)
 8001292:	69fb      	ldr	r3, [r7, #28]
 8001294:	089b      	lsrs	r3, r3, #2
 8001296:	3302      	adds	r3, #2
 8001298:	69ba      	ldr	r2, [r7, #24]
 800129a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]

        /* Clear EXTI line configuration */
        temp = EXTI->IMR;
 800129e:	4b37      	ldr	r3, [pc, #220]	; (800137c <HAL_GPIO_Init+0x300>)
 80012a0:	681b      	ldr	r3, [r3, #0]
 80012a2:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 80012a4:	693b      	ldr	r3, [r7, #16]
 80012a6:	43db      	mvns	r3, r3
 80012a8:	69ba      	ldr	r2, [r7, #24]
 80012aa:	4013      	ands	r3, r2
 80012ac:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 80012ae:	683b      	ldr	r3, [r7, #0]
 80012b0:	685b      	ldr	r3, [r3, #4]
 80012b2:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 80012b6:	2b00      	cmp	r3, #0
 80012b8:	d003      	beq.n	80012c2 <HAL_GPIO_Init+0x246>
        {
          temp |= iocurrent;
 80012ba:	69ba      	ldr	r2, [r7, #24]
 80012bc:	693b      	ldr	r3, [r7, #16]
 80012be:	4313      	orrs	r3, r2
 80012c0:	61bb      	str	r3, [r7, #24]
        }
        EXTI->IMR = temp;
 80012c2:	4a2e      	ldr	r2, [pc, #184]	; (800137c <HAL_GPIO_Init+0x300>)
 80012c4:	69bb      	ldr	r3, [r7, #24]
 80012c6:	6013      	str	r3, [r2, #0]

        temp = EXTI->EMR;
 80012c8:	4b2c      	ldr	r3, [pc, #176]	; (800137c <HAL_GPIO_Init+0x300>)
 80012ca:	685b      	ldr	r3, [r3, #4]
 80012cc:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 80012ce:	693b      	ldr	r3, [r7, #16]
 80012d0:	43db      	mvns	r3, r3
 80012d2:	69ba      	ldr	r2, [r7, #24]
 80012d4:	4013      	ands	r3, r2
 80012d6:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 80012d8:	683b      	ldr	r3, [r7, #0]
 80012da:	685b      	ldr	r3, [r3, #4]
 80012dc:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80012e0:	2b00      	cmp	r3, #0
 80012e2:	d003      	beq.n	80012ec <HAL_GPIO_Init+0x270>
        {
          temp |= iocurrent;
 80012e4:	69ba      	ldr	r2, [r7, #24]
 80012e6:	693b      	ldr	r3, [r7, #16]
 80012e8:	4313      	orrs	r3, r2
 80012ea:	61bb      	str	r3, [r7, #24]
        }
        EXTI->EMR = temp;
 80012ec:	4a23      	ldr	r2, [pc, #140]	; (800137c <HAL_GPIO_Init+0x300>)
 80012ee:	69bb      	ldr	r3, [r7, #24]
 80012f0:	6053      	str	r3, [r2, #4]

        /* Clear Rising Falling edge configuration */
        temp = EXTI->RTSR;
 80012f2:	4b22      	ldr	r3, [pc, #136]	; (800137c <HAL_GPIO_Init+0x300>)
 80012f4:	689b      	ldr	r3, [r3, #8]
 80012f6:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 80012f8:	693b      	ldr	r3, [r7, #16]
 80012fa:	43db      	mvns	r3, r3
 80012fc:	69ba      	ldr	r2, [r7, #24]
 80012fe:	4013      	ands	r3, r2
 8001300:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8001302:	683b      	ldr	r3, [r7, #0]
 8001304:	685b      	ldr	r3, [r3, #4]
 8001306:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 800130a:	2b00      	cmp	r3, #0
 800130c:	d003      	beq.n	8001316 <HAL_GPIO_Init+0x29a>
        {
          temp |= iocurrent;
 800130e:	69ba      	ldr	r2, [r7, #24]
 8001310:	693b      	ldr	r3, [r7, #16]
 8001312:	4313      	orrs	r3, r2
 8001314:	61bb      	str	r3, [r7, #24]
        }
        EXTI->RTSR = temp;
 8001316:	4a19      	ldr	r2, [pc, #100]	; (800137c <HAL_GPIO_Init+0x300>)
 8001318:	69bb      	ldr	r3, [r7, #24]
 800131a:	6093      	str	r3, [r2, #8]

        temp = EXTI->FTSR;
 800131c:	4b17      	ldr	r3, [pc, #92]	; (800137c <HAL_GPIO_Init+0x300>)
 800131e:	68db      	ldr	r3, [r3, #12]
 8001320:	61bb      	str	r3, [r7, #24]
        temp &= ~((uint32_t)iocurrent);
 8001322:	693b      	ldr	r3, [r7, #16]
 8001324:	43db      	mvns	r3, r3
 8001326:	69ba      	ldr	r2, [r7, #24]
 8001328:	4013      	ands	r3, r2
 800132a:	61bb      	str	r3, [r7, #24]
        if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 800132c:	683b      	ldr	r3, [r7, #0]
 800132e:	685b      	ldr	r3, [r3, #4]
 8001330:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8001334:	2b00      	cmp	r3, #0
 8001336:	d003      	beq.n	8001340 <HAL_GPIO_Init+0x2c4>
        {
          temp |= iocurrent;
 8001338:	69ba      	ldr	r2, [r7, #24]
 800133a:	693b      	ldr	r3, [r7, #16]
 800133c:	4313      	orrs	r3, r2
 800133e:	61bb      	str	r3, [r7, #24]
        }
        EXTI->FTSR = temp;
 8001340:	4a0e      	ldr	r2, [pc, #56]	; (800137c <HAL_GPIO_Init+0x300>)
 8001342:	69bb      	ldr	r3, [r7, #24]
 8001344:	60d3      	str	r3, [r2, #12]
  for(position = 0U; position < GPIO_NUMBER; position++)
 8001346:	69fb      	ldr	r3, [r7, #28]
 8001348:	3301      	adds	r3, #1
 800134a:	61fb      	str	r3, [r7, #28]
 800134c:	69fb      	ldr	r3, [r7, #28]
 800134e:	2b0f      	cmp	r3, #15
 8001350:	f67f aea2 	bls.w	8001098 <HAL_GPIO_Init+0x1c>
      }
    }
  }
}
 8001354:	bf00      	nop
 8001356:	3724      	adds	r7, #36	; 0x24
 8001358:	46bd      	mov	sp, r7
 800135a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800135e:	4770      	bx	lr
 8001360:	40023800 	.word	0x40023800
 8001364:	40013800 	.word	0x40013800
 8001368:	40020000 	.word	0x40020000
 800136c:	40020400 	.word	0x40020400
 8001370:	40020800 	.word	0x40020800
 8001374:	40020c00 	.word	0x40020c00
 8001378:	40021000 	.word	0x40021000
 800137c:	40013c00 	.word	0x40013c00

08001380 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 8001380:	b480      	push	{r7}
 8001382:	b083      	sub	sp, #12
 8001384:	af00      	add	r7, sp, #0
 8001386:	6078      	str	r0, [r7, #4]
 8001388:	460b      	mov	r3, r1
 800138a:	807b      	strh	r3, [r7, #2]
 800138c:	4613      	mov	r3, r2
 800138e:	707b      	strb	r3, [r7, #1]
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if(PinState != GPIO_PIN_RESET)
 8001390:	787b      	ldrb	r3, [r7, #1]
 8001392:	2b00      	cmp	r3, #0
 8001394:	d003      	beq.n	800139e <HAL_GPIO_WritePin+0x1e>
  {
    GPIOx->BSRR = GPIO_Pin;
 8001396:	887a      	ldrh	r2, [r7, #2]
 8001398:	687b      	ldr	r3, [r7, #4]
 800139a:	619a      	str	r2, [r3, #24]
  }
  else
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
  }
}
 800139c:	e003      	b.n	80013a6 <HAL_GPIO_WritePin+0x26>
    GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
 800139e:	887b      	ldrh	r3, [r7, #2]
 80013a0:	041a      	lsls	r2, r3, #16
 80013a2:	687b      	ldr	r3, [r7, #4]
 80013a4:	619a      	str	r2, [r3, #24]
}
 80013a6:	bf00      	nop
 80013a8:	370c      	adds	r7, #12
 80013aa:	46bd      	mov	sp, r7
 80013ac:	f85d 7b04 	ldr.w	r7, [sp], #4
 80013b0:	4770      	bx	lr

080013b2 <HAL_UART_Init>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 80013b2:	b580      	push	{r7, lr}
 80013b4:	b082      	sub	sp, #8
 80013b6:	af00      	add	r7, sp, #0
 80013b8:	6078      	str	r0, [r7, #4]
  /* Check the UART handle allocation */
  if (huart == NULL)
 80013ba:	687b      	ldr	r3, [r7, #4]
 80013bc:	2b00      	cmp	r3, #0
 80013be:	d101      	bne.n	80013c4 <HAL_UART_Init+0x12>
  {
    return HAL_ERROR;
 80013c0:	2301      	movs	r3, #1
 80013c2:	e03f      	b.n	8001444 <HAL_UART_Init+0x92>
    assert_param(IS_UART_INSTANCE(huart->Instance));
  }
  assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
  assert_param(IS_UART_OVERSAMPLING(huart->Init.OverSampling));

  if (huart->gState == HAL_UART_STATE_RESET)
 80013c4:	687b      	ldr	r3, [r7, #4]
 80013c6:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 80013ca:	b2db      	uxtb	r3, r3
 80013cc:	2b00      	cmp	r3, #0
 80013ce:	d106      	bne.n	80013de <HAL_UART_Init+0x2c>
  {
    /* Allocate lock resource and initialize it */
    huart->Lock = HAL_UNLOCKED;
 80013d0:	687b      	ldr	r3, [r7, #4]
 80013d2:	2200      	movs	r2, #0
 80013d4:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    /* Init the low level hardware */
    huart->MspInitCallback(huart);
#else
    /* Init the low level hardware : GPIO, CLOCK */
    HAL_UART_MspInit(huart);
 80013d8:	6878      	ldr	r0, [r7, #4]
 80013da:	f001 ff23 	bl	8003224 <HAL_UART_MspInit>
#endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
  }

  huart->gState = HAL_UART_STATE_BUSY;
 80013de:	687b      	ldr	r3, [r7, #4]
 80013e0:	2224      	movs	r2, #36	; 0x24
 80013e2:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

  /* Disable the peripheral */
  __HAL_UART_DISABLE(huart);
 80013e6:	687b      	ldr	r3, [r7, #4]
 80013e8:	681b      	ldr	r3, [r3, #0]
 80013ea:	68da      	ldr	r2, [r3, #12]
 80013ec:	687b      	ldr	r3, [r7, #4]
 80013ee:	681b      	ldr	r3, [r3, #0]
 80013f0:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80013f4:	60da      	str	r2, [r3, #12]

  /* Set the UART Communication parameters */
  UART_SetConfig(huart);
 80013f6:	6878      	ldr	r0, [r7, #4]
 80013f8:	f000 f904 	bl	8001604 <UART_SetConfig>

  /* In asynchronous mode, the following bits must be kept cleared:
     - LINEN and CLKEN bits in the USART_CR2 register,
     - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 80013fc:	687b      	ldr	r3, [r7, #4]
 80013fe:	681b      	ldr	r3, [r3, #0]
 8001400:	691a      	ldr	r2, [r3, #16]
 8001402:	687b      	ldr	r3, [r7, #4]
 8001404:	681b      	ldr	r3, [r3, #0]
 8001406:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 800140a:	611a      	str	r2, [r3, #16]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 800140c:	687b      	ldr	r3, [r7, #4]
 800140e:	681b      	ldr	r3, [r3, #0]
 8001410:	695a      	ldr	r2, [r3, #20]
 8001412:	687b      	ldr	r3, [r7, #4]
 8001414:	681b      	ldr	r3, [r3, #0]
 8001416:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 800141a:	615a      	str	r2, [r3, #20]

  /* Enable the peripheral */
  __HAL_UART_ENABLE(huart);
 800141c:	687b      	ldr	r3, [r7, #4]
 800141e:	681b      	ldr	r3, [r3, #0]
 8001420:	68da      	ldr	r2, [r3, #12]
 8001422:	687b      	ldr	r3, [r7, #4]
 8001424:	681b      	ldr	r3, [r3, #0]
 8001426:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800142a:	60da      	str	r2, [r3, #12]

  /* Initialize the UART state */
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 800142c:	687b      	ldr	r3, [r7, #4]
 800142e:	2200      	movs	r2, #0
 8001430:	641a      	str	r2, [r3, #64]	; 0x40
  huart->gState = HAL_UART_STATE_READY;
 8001432:	687b      	ldr	r3, [r7, #4]
 8001434:	2220      	movs	r2, #32
 8001436:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
  huart->RxState = HAL_UART_STATE_READY;
 800143a:	687b      	ldr	r3, [r7, #4]
 800143c:	2220      	movs	r2, #32
 800143e:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

  return HAL_OK;
 8001442:	2300      	movs	r3, #0
}
 8001444:	4618      	mov	r0, r3
 8001446:	3708      	adds	r7, #8
 8001448:	46bd      	mov	sp, r7
 800144a:	bd80      	pop	{r7, pc}

0800144c <HAL_UART_Transmit>:
  * @param  Size  Amount of data elements (u8 or u16) to be sent
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 800144c:	b580      	push	{r7, lr}
 800144e:	b08a      	sub	sp, #40	; 0x28
 8001450:	af02      	add	r7, sp, #8
 8001452:	60f8      	str	r0, [r7, #12]
 8001454:	60b9      	str	r1, [r7, #8]
 8001456:	603b      	str	r3, [r7, #0]
 8001458:	4613      	mov	r3, r2
 800145a:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart = 0U;
 800145c:	2300      	movs	r3, #0
 800145e:	617b      	str	r3, [r7, #20]

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 8001460:	68fb      	ldr	r3, [r7, #12]
 8001462:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001466:	b2db      	uxtb	r3, r3
 8001468:	2b20      	cmp	r3, #32
 800146a:	d17c      	bne.n	8001566 <HAL_UART_Transmit+0x11a>
  {
    if ((pData == NULL) || (Size == 0U))
 800146c:	68bb      	ldr	r3, [r7, #8]
 800146e:	2b00      	cmp	r3, #0
 8001470:	d002      	beq.n	8001478 <HAL_UART_Transmit+0x2c>
 8001472:	88fb      	ldrh	r3, [r7, #6]
 8001474:	2b00      	cmp	r3, #0
 8001476:	d101      	bne.n	800147c <HAL_UART_Transmit+0x30>
    {
      return  HAL_ERROR;
 8001478:	2301      	movs	r3, #1
 800147a:	e075      	b.n	8001568 <HAL_UART_Transmit+0x11c>
    }

    /* Process Locked */
    __HAL_LOCK(huart);
 800147c:	68fb      	ldr	r3, [r7, #12]
 800147e:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 8001482:	2b01      	cmp	r3, #1
 8001484:	d101      	bne.n	800148a <HAL_UART_Transmit+0x3e>
 8001486:	2302      	movs	r3, #2
 8001488:	e06e      	b.n	8001568 <HAL_UART_Transmit+0x11c>
 800148a:	68fb      	ldr	r3, [r7, #12]
 800148c:	2201      	movs	r2, #1
 800148e:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 8001492:	68fb      	ldr	r3, [r7, #12]
 8001494:	2200      	movs	r2, #0
 8001496:	641a      	str	r2, [r3, #64]	; 0x40
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8001498:	68fb      	ldr	r3, [r7, #12]
 800149a:	2221      	movs	r2, #33	; 0x21
 800149c:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 80014a0:	f7fe fefe 	bl	80002a0 <HAL_GetTick>
 80014a4:	6178      	str	r0, [r7, #20]

    huart->TxXferSize = Size;
 80014a6:	68fb      	ldr	r3, [r7, #12]
 80014a8:	88fa      	ldrh	r2, [r7, #6]
 80014aa:	849a      	strh	r2, [r3, #36]	; 0x24
    huart->TxXferCount = Size;
 80014ac:	68fb      	ldr	r3, [r7, #12]
 80014ae:	88fa      	ldrh	r2, [r7, #6]
 80014b0:	84da      	strh	r2, [r3, #38]	; 0x26

    /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 80014b2:	68fb      	ldr	r3, [r7, #12]
 80014b4:	689b      	ldr	r3, [r3, #8]
 80014b6:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 80014ba:	d108      	bne.n	80014ce <HAL_UART_Transmit+0x82>
 80014bc:	68fb      	ldr	r3, [r7, #12]
 80014be:	691b      	ldr	r3, [r3, #16]
 80014c0:	2b00      	cmp	r3, #0
 80014c2:	d104      	bne.n	80014ce <HAL_UART_Transmit+0x82>
    {
      pdata8bits  = NULL;
 80014c4:	2300      	movs	r3, #0
 80014c6:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 80014c8:	68bb      	ldr	r3, [r7, #8]
 80014ca:	61bb      	str	r3, [r7, #24]
 80014cc:	e003      	b.n	80014d6 <HAL_UART_Transmit+0x8a>
    }
    else
    {
      pdata8bits  = pData;
 80014ce:	68bb      	ldr	r3, [r7, #8]
 80014d0:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 80014d2:	2300      	movs	r3, #0
 80014d4:	61bb      	str	r3, [r7, #24]
    }

    /* Process Unlocked */
    __HAL_UNLOCK(huart);
 80014d6:	68fb      	ldr	r3, [r7, #12]
 80014d8:	2200      	movs	r2, #0
 80014da:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

    while (huart->TxXferCount > 0U)
 80014de:	e02a      	b.n	8001536 <HAL_UART_Transmit+0xea>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 80014e0:	683b      	ldr	r3, [r7, #0]
 80014e2:	9300      	str	r3, [sp, #0]
 80014e4:	697b      	ldr	r3, [r7, #20]
 80014e6:	2200      	movs	r2, #0
 80014e8:	2180      	movs	r1, #128	; 0x80
 80014ea:	68f8      	ldr	r0, [r7, #12]
 80014ec:	f000 f840 	bl	8001570 <UART_WaitOnFlagUntilTimeout>
 80014f0:	4603      	mov	r3, r0
 80014f2:	2b00      	cmp	r3, #0
 80014f4:	d001      	beq.n	80014fa <HAL_UART_Transmit+0xae>
      {
        return HAL_TIMEOUT;
 80014f6:	2303      	movs	r3, #3
 80014f8:	e036      	b.n	8001568 <HAL_UART_Transmit+0x11c>
      }
      if (pdata8bits == NULL)
 80014fa:	69fb      	ldr	r3, [r7, #28]
 80014fc:	2b00      	cmp	r3, #0
 80014fe:	d10b      	bne.n	8001518 <HAL_UART_Transmit+0xcc>
      {
        huart->Instance->DR = (uint16_t)(*pdata16bits & 0x01FFU);
 8001500:	69bb      	ldr	r3, [r7, #24]
 8001502:	881b      	ldrh	r3, [r3, #0]
 8001504:	461a      	mov	r2, r3
 8001506:	68fb      	ldr	r3, [r7, #12]
 8001508:	681b      	ldr	r3, [r3, #0]
 800150a:	f3c2 0208 	ubfx	r2, r2, #0, #9
 800150e:	605a      	str	r2, [r3, #4]
        pdata16bits++;
 8001510:	69bb      	ldr	r3, [r7, #24]
 8001512:	3302      	adds	r3, #2
 8001514:	61bb      	str	r3, [r7, #24]
 8001516:	e007      	b.n	8001528 <HAL_UART_Transmit+0xdc>
      }
      else
      {
        huart->Instance->DR = (uint8_t)(*pdata8bits & 0xFFU);
 8001518:	69fb      	ldr	r3, [r7, #28]
 800151a:	781a      	ldrb	r2, [r3, #0]
 800151c:	68fb      	ldr	r3, [r7, #12]
 800151e:	681b      	ldr	r3, [r3, #0]
 8001520:	605a      	str	r2, [r3, #4]
        pdata8bits++;
 8001522:	69fb      	ldr	r3, [r7, #28]
 8001524:	3301      	adds	r3, #1
 8001526:	61fb      	str	r3, [r7, #28]
      }
      huart->TxXferCount--;
 8001528:	68fb      	ldr	r3, [r7, #12]
 800152a:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 800152c:	b29b      	uxth	r3, r3
 800152e:	3b01      	subs	r3, #1
 8001530:	b29a      	uxth	r2, r3
 8001532:	68fb      	ldr	r3, [r7, #12]
 8001534:	84da      	strh	r2, [r3, #38]	; 0x26
    while (huart->TxXferCount > 0U)
 8001536:	68fb      	ldr	r3, [r7, #12]
 8001538:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 800153a:	b29b      	uxth	r3, r3
 800153c:	2b00      	cmp	r3, #0
 800153e:	d1cf      	bne.n	80014e0 <HAL_UART_Transmit+0x94>
    }

    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 8001540:	683b      	ldr	r3, [r7, #0]
 8001542:	9300      	str	r3, [sp, #0]
 8001544:	697b      	ldr	r3, [r7, #20]
 8001546:	2200      	movs	r2, #0
 8001548:	2140      	movs	r1, #64	; 0x40
 800154a:	68f8      	ldr	r0, [r7, #12]
 800154c:	f000 f810 	bl	8001570 <UART_WaitOnFlagUntilTimeout>
 8001550:	4603      	mov	r3, r0
 8001552:	2b00      	cmp	r3, #0
 8001554:	d001      	beq.n	800155a <HAL_UART_Transmit+0x10e>
    {
      return HAL_TIMEOUT;
 8001556:	2303      	movs	r3, #3
 8001558:	e006      	b.n	8001568 <HAL_UART_Transmit+0x11c>
    }

    /* At end of Tx process, restore huart->gState to Ready */
    huart->gState = HAL_UART_STATE_READY;
 800155a:	68fb      	ldr	r3, [r7, #12]
 800155c:	2220      	movs	r2, #32
 800155e:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d

    return HAL_OK;
 8001562:	2300      	movs	r3, #0
 8001564:	e000      	b.n	8001568 <HAL_UART_Transmit+0x11c>
  }
  else
  {
    return HAL_BUSY;
 8001566:	2302      	movs	r3, #2
  }
}
 8001568:	4618      	mov	r0, r3
 800156a:	3720      	adds	r7, #32
 800156c:	46bd      	mov	sp, r7
 800156e:	bd80      	pop	{r7, pc}

08001570 <UART_WaitOnFlagUntilTimeout>:
  * @param  Tickstart Tick start value
  * @param  Timeout Timeout duration
  * @retval HAL status
  */
static HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status, uint32_t Tickstart, uint32_t Timeout)
{
 8001570:	b580      	push	{r7, lr}
 8001572:	b084      	sub	sp, #16
 8001574:	af00      	add	r7, sp, #0
 8001576:	60f8      	str	r0, [r7, #12]
 8001578:	60b9      	str	r1, [r7, #8]
 800157a:	603b      	str	r3, [r7, #0]
 800157c:	4613      	mov	r3, r2
 800157e:	71fb      	strb	r3, [r7, #7]
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8001580:	e02c      	b.n	80015dc <UART_WaitOnFlagUntilTimeout+0x6c>
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
 8001582:	69bb      	ldr	r3, [r7, #24]
 8001584:	f1b3 3fff 	cmp.w	r3, #4294967295
 8001588:	d028      	beq.n	80015dc <UART_WaitOnFlagUntilTimeout+0x6c>
    {
      if ((Timeout == 0U) || ((HAL_GetTick() - Tickstart) > Timeout))
 800158a:	69bb      	ldr	r3, [r7, #24]
 800158c:	2b00      	cmp	r3, #0
 800158e:	d007      	beq.n	80015a0 <UART_WaitOnFlagUntilTimeout+0x30>
 8001590:	f7fe fe86 	bl	80002a0 <HAL_GetTick>
 8001594:	4602      	mov	r2, r0
 8001596:	683b      	ldr	r3, [r7, #0]
 8001598:	1ad3      	subs	r3, r2, r3
 800159a:	69ba      	ldr	r2, [r7, #24]
 800159c:	429a      	cmp	r2, r3
 800159e:	d21d      	bcs.n	80015dc <UART_WaitOnFlagUntilTimeout+0x6c>
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
 80015a0:	68fb      	ldr	r3, [r7, #12]
 80015a2:	681b      	ldr	r3, [r3, #0]
 80015a4:	68da      	ldr	r2, [r3, #12]
 80015a6:	68fb      	ldr	r3, [r7, #12]
 80015a8:	681b      	ldr	r3, [r3, #0]
 80015aa:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 80015ae:	60da      	str	r2, [r3, #12]
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 80015b0:	68fb      	ldr	r3, [r7, #12]
 80015b2:	681b      	ldr	r3, [r3, #0]
 80015b4:	695a      	ldr	r2, [r3, #20]
 80015b6:	68fb      	ldr	r3, [r7, #12]
 80015b8:	681b      	ldr	r3, [r3, #0]
 80015ba:	f022 0201 	bic.w	r2, r2, #1
 80015be:	615a      	str	r2, [r3, #20]

        huart->gState  = HAL_UART_STATE_READY;
 80015c0:	68fb      	ldr	r3, [r7, #12]
 80015c2:	2220      	movs	r2, #32
 80015c4:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
        huart->RxState = HAL_UART_STATE_READY;
 80015c8:	68fb      	ldr	r3, [r7, #12]
 80015ca:	2220      	movs	r2, #32
 80015cc:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e

        /* Process Unlocked */
        __HAL_UNLOCK(huart);
 80015d0:	68fb      	ldr	r3, [r7, #12]
 80015d2:	2200      	movs	r2, #0
 80015d4:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c

        return HAL_TIMEOUT;
 80015d8:	2303      	movs	r3, #3
 80015da:	e00f      	b.n	80015fc <UART_WaitOnFlagUntilTimeout+0x8c>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 80015dc:	68fb      	ldr	r3, [r7, #12]
 80015de:	681b      	ldr	r3, [r3, #0]
 80015e0:	681a      	ldr	r2, [r3, #0]
 80015e2:	68bb      	ldr	r3, [r7, #8]
 80015e4:	4013      	ands	r3, r2
 80015e6:	68ba      	ldr	r2, [r7, #8]
 80015e8:	429a      	cmp	r2, r3
 80015ea:	bf0c      	ite	eq
 80015ec:	2301      	moveq	r3, #1
 80015ee:	2300      	movne	r3, #0
 80015f0:	b2db      	uxtb	r3, r3
 80015f2:	461a      	mov	r2, r3
 80015f4:	79fb      	ldrb	r3, [r7, #7]
 80015f6:	429a      	cmp	r2, r3
 80015f8:	d0c3      	beq.n	8001582 <UART_WaitOnFlagUntilTimeout+0x12>
      }
    }
  }
  return HAL_OK;
 80015fa:	2300      	movs	r3, #0
}
 80015fc:	4618      	mov	r0, r3
 80015fe:	3710      	adds	r7, #16
 8001600:	46bd      	mov	sp, r7
 8001602:	bd80      	pop	{r7, pc}

08001604 <UART_SetConfig>:
  * @param  huart  Pointer to a UART_HandleTypeDef structure that contains
  *                the configuration information for the specified UART module.
  * @retval None
  */
static void UART_SetConfig(UART_HandleTypeDef *huart)
{
 8001604:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001608:	b085      	sub	sp, #20
 800160a:	af00      	add	r7, sp, #0
 800160c:	6078      	str	r0, [r7, #4]
  assert_param(IS_UART_MODE(huart->Init.Mode));

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits
     according to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 800160e:	687b      	ldr	r3, [r7, #4]
 8001610:	681b      	ldr	r3, [r3, #0]
 8001612:	691b      	ldr	r3, [r3, #16]
 8001614:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 8001618:	687b      	ldr	r3, [r7, #4]
 800161a:	68da      	ldr	r2, [r3, #12]
 800161c:	687b      	ldr	r3, [r7, #4]
 800161e:	681b      	ldr	r3, [r3, #0]
 8001620:	430a      	orrs	r2, r1
 8001622:	611a      	str	r2, [r3, #16]
     Set the M bits according to huart->Init.WordLength value
     Set PCE and PS bits according to huart->Init.Parity value
     Set TE and RE bits according to huart->Init.Mode value
     Set OVER8 bit according to huart->Init.OverSampling value */

  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling;
 8001624:	687b      	ldr	r3, [r7, #4]
 8001626:	689a      	ldr	r2, [r3, #8]
 8001628:	687b      	ldr	r3, [r7, #4]
 800162a:	691b      	ldr	r3, [r3, #16]
 800162c:	431a      	orrs	r2, r3
 800162e:	687b      	ldr	r3, [r7, #4]
 8001630:	695b      	ldr	r3, [r3, #20]
 8001632:	431a      	orrs	r2, r3
 8001634:	687b      	ldr	r3, [r7, #4]
 8001636:	69db      	ldr	r3, [r3, #28]
 8001638:	4313      	orrs	r3, r2
 800163a:	60bb      	str	r3, [r7, #8]
  MODIFY_REG(huart->Instance->CR1,
 800163c:	687b      	ldr	r3, [r7, #4]
 800163e:	681b      	ldr	r3, [r3, #0]
 8001640:	68db      	ldr	r3, [r3, #12]
 8001642:	f423 4316 	bic.w	r3, r3, #38400	; 0x9600
 8001646:	f023 030c 	bic.w	r3, r3, #12
 800164a:	687a      	ldr	r2, [r7, #4]
 800164c:	6812      	ldr	r2, [r2, #0]
 800164e:	68b9      	ldr	r1, [r7, #8]
 8001650:	430b      	orrs	r3, r1
 8001652:	60d3      	str	r3, [r2, #12]
             (uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8),
             tmpreg);

  /*-------------------------- USART CR3 Configuration -----------------------*/
  /* Configure the UART HFC: Set CTSE and RTSE bits according to huart->Init.HwFlowCtl value */
  MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE), huart->Init.HwFlowCtl);
 8001654:	687b      	ldr	r3, [r7, #4]
 8001656:	681b      	ldr	r3, [r3, #0]
 8001658:	695b      	ldr	r3, [r3, #20]
 800165a:	f423 7140 	bic.w	r1, r3, #768	; 0x300
 800165e:	687b      	ldr	r3, [r7, #4]
 8001660:	699a      	ldr	r2, [r3, #24]
 8001662:	687b      	ldr	r3, [r7, #4]
 8001664:	681b      	ldr	r3, [r3, #0]
 8001666:	430a      	orrs	r2, r1
 8001668:	615a      	str	r2, [r3, #20]
    if ((huart->Instance == USART1) || (huart->Instance == USART6) || (huart->Instance == UART9) || (huart->Instance == UART10))
    {
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#elif defined(USART6)
    if ((huart->Instance == USART1) || (huart->Instance == USART6))
 800166a:	687b      	ldr	r3, [r7, #4]
 800166c:	681b      	ldr	r3, [r3, #0]
 800166e:	4ad0      	ldr	r2, [pc, #832]	; (80019b0 <UART_SetConfig+0x3ac>)
 8001670:	4293      	cmp	r3, r2
 8001672:	d004      	beq.n	800167e <UART_SetConfig+0x7a>
 8001674:	687b      	ldr	r3, [r7, #4]
 8001676:	681b      	ldr	r3, [r3, #0]
 8001678:	4ace      	ldr	r2, [pc, #824]	; (80019b4 <UART_SetConfig+0x3b0>)
 800167a:	4293      	cmp	r3, r2
 800167c:	d103      	bne.n	8001686 <UART_SetConfig+0x82>
    {
      pclk = HAL_RCC_GetPCLK2Freq();
 800167e:	f7ff fb8b 	bl	8000d98 <HAL_RCC_GetPCLK2Freq>
 8001682:	60f8      	str	r0, [r7, #12]
 8001684:	e002      	b.n	800168c <UART_SetConfig+0x88>
      pclk = HAL_RCC_GetPCLK2Freq();
    }
#endif /* USART6 */
    else
    {
      pclk = HAL_RCC_GetPCLK1Freq();
 8001686:	f7ff fb73 	bl	8000d70 <HAL_RCC_GetPCLK1Freq>
 800168a:	60f8      	str	r0, [r7, #12]
    }
  /*-------------------------- USART BRR Configuration ---------------------*/
  if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 800168c:	687b      	ldr	r3, [r7, #4]
 800168e:	69db      	ldr	r3, [r3, #28]
 8001690:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001694:	f040 80ba 	bne.w	800180c <UART_SetConfig+0x208>
  {
    huart->Instance->BRR = UART_BRR_SAMPLING8(pclk, huart->Init.BaudRate);
 8001698:	68fb      	ldr	r3, [r7, #12]
 800169a:	461d      	mov	r5, r3
 800169c:	f04f 0600 	mov.w	r6, #0
 80016a0:	46a8      	mov	r8, r5
 80016a2:	46b1      	mov	r9, r6
 80016a4:	eb18 0308 	adds.w	r3, r8, r8
 80016a8:	eb49 0409 	adc.w	r4, r9, r9
 80016ac:	4698      	mov	r8, r3
 80016ae:	46a1      	mov	r9, r4
 80016b0:	eb18 0805 	adds.w	r8, r8, r5
 80016b4:	eb49 0906 	adc.w	r9, r9, r6
 80016b8:	f04f 0100 	mov.w	r1, #0
 80016bc:	f04f 0200 	mov.w	r2, #0
 80016c0:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 80016c4:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 80016c8:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 80016cc:	4688      	mov	r8, r1
 80016ce:	4691      	mov	r9, r2
 80016d0:	eb18 0005 	adds.w	r0, r8, r5
 80016d4:	eb49 0106 	adc.w	r1, r9, r6
 80016d8:	687b      	ldr	r3, [r7, #4]
 80016da:	685b      	ldr	r3, [r3, #4]
 80016dc:	461d      	mov	r5, r3
 80016de:	f04f 0600 	mov.w	r6, #0
 80016e2:	196b      	adds	r3, r5, r5
 80016e4:	eb46 0406 	adc.w	r4, r6, r6
 80016e8:	461a      	mov	r2, r3
 80016ea:	4623      	mov	r3, r4
 80016ec:	f001 ff1a 	bl	8003524 <__aeabi_uldivmod>
 80016f0:	4603      	mov	r3, r0
 80016f2:	460c      	mov	r4, r1
 80016f4:	461a      	mov	r2, r3
 80016f6:	4bb0      	ldr	r3, [pc, #704]	; (80019b8 <UART_SetConfig+0x3b4>)
 80016f8:	fba3 2302 	umull	r2, r3, r3, r2
 80016fc:	095b      	lsrs	r3, r3, #5
 80016fe:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8001702:	68fb      	ldr	r3, [r7, #12]
 8001704:	461d      	mov	r5, r3
 8001706:	f04f 0600 	mov.w	r6, #0
 800170a:	46a9      	mov	r9, r5
 800170c:	46b2      	mov	sl, r6
 800170e:	eb19 0309 	adds.w	r3, r9, r9
 8001712:	eb4a 040a 	adc.w	r4, sl, sl
 8001716:	4699      	mov	r9, r3
 8001718:	46a2      	mov	sl, r4
 800171a:	eb19 0905 	adds.w	r9, r9, r5
 800171e:	eb4a 0a06 	adc.w	sl, sl, r6
 8001722:	f04f 0100 	mov.w	r1, #0
 8001726:	f04f 0200 	mov.w	r2, #0
 800172a:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 800172e:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001732:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001736:	4689      	mov	r9, r1
 8001738:	4692      	mov	sl, r2
 800173a:	eb19 0005 	adds.w	r0, r9, r5
 800173e:	eb4a 0106 	adc.w	r1, sl, r6
 8001742:	687b      	ldr	r3, [r7, #4]
 8001744:	685b      	ldr	r3, [r3, #4]
 8001746:	461d      	mov	r5, r3
 8001748:	f04f 0600 	mov.w	r6, #0
 800174c:	196b      	adds	r3, r5, r5
 800174e:	eb46 0406 	adc.w	r4, r6, r6
 8001752:	461a      	mov	r2, r3
 8001754:	4623      	mov	r3, r4
 8001756:	f001 fee5 	bl	8003524 <__aeabi_uldivmod>
 800175a:	4603      	mov	r3, r0
 800175c:	460c      	mov	r4, r1
 800175e:	461a      	mov	r2, r3
 8001760:	4b95      	ldr	r3, [pc, #596]	; (80019b8 <UART_SetConfig+0x3b4>)
 8001762:	fba3 1302 	umull	r1, r3, r3, r2
 8001766:	095b      	lsrs	r3, r3, #5
 8001768:	2164      	movs	r1, #100	; 0x64
 800176a:	fb01 f303 	mul.w	r3, r1, r3
 800176e:	1ad3      	subs	r3, r2, r3
 8001770:	00db      	lsls	r3, r3, #3
 8001772:	3332      	adds	r3, #50	; 0x32
 8001774:	4a90      	ldr	r2, [pc, #576]	; (80019b8 <UART_SetConfig+0x3b4>)
 8001776:	fba2 2303 	umull	r2, r3, r2, r3
 800177a:	095b      	lsrs	r3, r3, #5
 800177c:	005b      	lsls	r3, r3, #1
 800177e:	f403 73f8 	and.w	r3, r3, #496	; 0x1f0
 8001782:	4498      	add	r8, r3
 8001784:	68fb      	ldr	r3, [r7, #12]
 8001786:	461d      	mov	r5, r3
 8001788:	f04f 0600 	mov.w	r6, #0
 800178c:	46a9      	mov	r9, r5
 800178e:	46b2      	mov	sl, r6
 8001790:	eb19 0309 	adds.w	r3, r9, r9
 8001794:	eb4a 040a 	adc.w	r4, sl, sl
 8001798:	4699      	mov	r9, r3
 800179a:	46a2      	mov	sl, r4
 800179c:	eb19 0905 	adds.w	r9, r9, r5
 80017a0:	eb4a 0a06 	adc.w	sl, sl, r6
 80017a4:	f04f 0100 	mov.w	r1, #0
 80017a8:	f04f 0200 	mov.w	r2, #0
 80017ac:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80017b0:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80017b4:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80017b8:	4689      	mov	r9, r1
 80017ba:	4692      	mov	sl, r2
 80017bc:	eb19 0005 	adds.w	r0, r9, r5
 80017c0:	eb4a 0106 	adc.w	r1, sl, r6
 80017c4:	687b      	ldr	r3, [r7, #4]
 80017c6:	685b      	ldr	r3, [r3, #4]
 80017c8:	461d      	mov	r5, r3
 80017ca:	f04f 0600 	mov.w	r6, #0
 80017ce:	196b      	adds	r3, r5, r5
 80017d0:	eb46 0406 	adc.w	r4, r6, r6
 80017d4:	461a      	mov	r2, r3
 80017d6:	4623      	mov	r3, r4
 80017d8:	f001 fea4 	bl	8003524 <__aeabi_uldivmod>
 80017dc:	4603      	mov	r3, r0
 80017de:	460c      	mov	r4, r1
 80017e0:	461a      	mov	r2, r3
 80017e2:	4b75      	ldr	r3, [pc, #468]	; (80019b8 <UART_SetConfig+0x3b4>)
 80017e4:	fba3 1302 	umull	r1, r3, r3, r2
 80017e8:	095b      	lsrs	r3, r3, #5
 80017ea:	2164      	movs	r1, #100	; 0x64
 80017ec:	fb01 f303 	mul.w	r3, r1, r3
 80017f0:	1ad3      	subs	r3, r2, r3
 80017f2:	00db      	lsls	r3, r3, #3
 80017f4:	3332      	adds	r3, #50	; 0x32
 80017f6:	4a70      	ldr	r2, [pc, #448]	; (80019b8 <UART_SetConfig+0x3b4>)
 80017f8:	fba2 2303 	umull	r2, r3, r2, r3
 80017fc:	095b      	lsrs	r3, r3, #5
 80017fe:	f003 0207 	and.w	r2, r3, #7
 8001802:	687b      	ldr	r3, [r7, #4]
 8001804:	681b      	ldr	r3, [r3, #0]
 8001806:	4442      	add	r2, r8
 8001808:	609a      	str	r2, [r3, #8]
  }
  else
  {
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
  }
}
 800180a:	e0cc      	b.n	80019a6 <UART_SetConfig+0x3a2>
    huart->Instance->BRR = UART_BRR_SAMPLING16(pclk, huart->Init.BaudRate);
 800180c:	68fb      	ldr	r3, [r7, #12]
 800180e:	469a      	mov	sl, r3
 8001810:	f04f 0b00 	mov.w	fp, #0
 8001814:	46d0      	mov	r8, sl
 8001816:	46d9      	mov	r9, fp
 8001818:	eb18 0308 	adds.w	r3, r8, r8
 800181c:	eb49 0409 	adc.w	r4, r9, r9
 8001820:	4698      	mov	r8, r3
 8001822:	46a1      	mov	r9, r4
 8001824:	eb18 080a 	adds.w	r8, r8, sl
 8001828:	eb49 090b 	adc.w	r9, r9, fp
 800182c:	f04f 0100 	mov.w	r1, #0
 8001830:	f04f 0200 	mov.w	r2, #0
 8001834:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 8001838:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 800183c:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 8001840:	4688      	mov	r8, r1
 8001842:	4691      	mov	r9, r2
 8001844:	eb1a 0508 	adds.w	r5, sl, r8
 8001848:	eb4b 0609 	adc.w	r6, fp, r9
 800184c:	687b      	ldr	r3, [r7, #4]
 800184e:	685b      	ldr	r3, [r3, #4]
 8001850:	4619      	mov	r1, r3
 8001852:	f04f 0200 	mov.w	r2, #0
 8001856:	f04f 0300 	mov.w	r3, #0
 800185a:	f04f 0400 	mov.w	r4, #0
 800185e:	0094      	lsls	r4, r2, #2
 8001860:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 8001864:	008b      	lsls	r3, r1, #2
 8001866:	461a      	mov	r2, r3
 8001868:	4623      	mov	r3, r4
 800186a:	4628      	mov	r0, r5
 800186c:	4631      	mov	r1, r6
 800186e:	f001 fe59 	bl	8003524 <__aeabi_uldivmod>
 8001872:	4603      	mov	r3, r0
 8001874:	460c      	mov	r4, r1
 8001876:	461a      	mov	r2, r3
 8001878:	4b4f      	ldr	r3, [pc, #316]	; (80019b8 <UART_SetConfig+0x3b4>)
 800187a:	fba3 2302 	umull	r2, r3, r3, r2
 800187e:	095b      	lsrs	r3, r3, #5
 8001880:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8001884:	68fb      	ldr	r3, [r7, #12]
 8001886:	469b      	mov	fp, r3
 8001888:	f04f 0c00 	mov.w	ip, #0
 800188c:	46d9      	mov	r9, fp
 800188e:	46e2      	mov	sl, ip
 8001890:	eb19 0309 	adds.w	r3, r9, r9
 8001894:	eb4a 040a 	adc.w	r4, sl, sl
 8001898:	4699      	mov	r9, r3
 800189a:	46a2      	mov	sl, r4
 800189c:	eb19 090b 	adds.w	r9, r9, fp
 80018a0:	eb4a 0a0c 	adc.w	sl, sl, ip
 80018a4:	f04f 0100 	mov.w	r1, #0
 80018a8:	f04f 0200 	mov.w	r2, #0
 80018ac:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80018b0:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80018b4:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80018b8:	4689      	mov	r9, r1
 80018ba:	4692      	mov	sl, r2
 80018bc:	eb1b 0509 	adds.w	r5, fp, r9
 80018c0:	eb4c 060a 	adc.w	r6, ip, sl
 80018c4:	687b      	ldr	r3, [r7, #4]
 80018c6:	685b      	ldr	r3, [r3, #4]
 80018c8:	4619      	mov	r1, r3
 80018ca:	f04f 0200 	mov.w	r2, #0
 80018ce:	f04f 0300 	mov.w	r3, #0
 80018d2:	f04f 0400 	mov.w	r4, #0
 80018d6:	0094      	lsls	r4, r2, #2
 80018d8:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 80018dc:	008b      	lsls	r3, r1, #2
 80018de:	461a      	mov	r2, r3
 80018e0:	4623      	mov	r3, r4
 80018e2:	4628      	mov	r0, r5
 80018e4:	4631      	mov	r1, r6
 80018e6:	f001 fe1d 	bl	8003524 <__aeabi_uldivmod>
 80018ea:	4603      	mov	r3, r0
 80018ec:	460c      	mov	r4, r1
 80018ee:	461a      	mov	r2, r3
 80018f0:	4b31      	ldr	r3, [pc, #196]	; (80019b8 <UART_SetConfig+0x3b4>)
 80018f2:	fba3 1302 	umull	r1, r3, r3, r2
 80018f6:	095b      	lsrs	r3, r3, #5
 80018f8:	2164      	movs	r1, #100	; 0x64
 80018fa:	fb01 f303 	mul.w	r3, r1, r3
 80018fe:	1ad3      	subs	r3, r2, r3
 8001900:	011b      	lsls	r3, r3, #4
 8001902:	3332      	adds	r3, #50	; 0x32
 8001904:	4a2c      	ldr	r2, [pc, #176]	; (80019b8 <UART_SetConfig+0x3b4>)
 8001906:	fba2 2303 	umull	r2, r3, r2, r3
 800190a:	095b      	lsrs	r3, r3, #5
 800190c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001910:	4498      	add	r8, r3
 8001912:	68fb      	ldr	r3, [r7, #12]
 8001914:	469b      	mov	fp, r3
 8001916:	f04f 0c00 	mov.w	ip, #0
 800191a:	46d9      	mov	r9, fp
 800191c:	46e2      	mov	sl, ip
 800191e:	eb19 0309 	adds.w	r3, r9, r9
 8001922:	eb4a 040a 	adc.w	r4, sl, sl
 8001926:	4699      	mov	r9, r3
 8001928:	46a2      	mov	sl, r4
 800192a:	eb19 090b 	adds.w	r9, r9, fp
 800192e:	eb4a 0a0c 	adc.w	sl, sl, ip
 8001932:	f04f 0100 	mov.w	r1, #0
 8001936:	f04f 0200 	mov.w	r2, #0
 800193a:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 800193e:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001942:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001946:	4689      	mov	r9, r1
 8001948:	4692      	mov	sl, r2
 800194a:	eb1b 0509 	adds.w	r5, fp, r9
 800194e:	eb4c 060a 	adc.w	r6, ip, sl
 8001952:	687b      	ldr	r3, [r7, #4]
 8001954:	685b      	ldr	r3, [r3, #4]
 8001956:	4619      	mov	r1, r3
 8001958:	f04f 0200 	mov.w	r2, #0
 800195c:	f04f 0300 	mov.w	r3, #0
 8001960:	f04f 0400 	mov.w	r4, #0
 8001964:	0094      	lsls	r4, r2, #2
 8001966:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 800196a:	008b      	lsls	r3, r1, #2
 800196c:	461a      	mov	r2, r3
 800196e:	4623      	mov	r3, r4
 8001970:	4628      	mov	r0, r5
 8001972:	4631      	mov	r1, r6
 8001974:	f001 fdd6 	bl	8003524 <__aeabi_uldivmod>
 8001978:	4603      	mov	r3, r0
 800197a:	460c      	mov	r4, r1
 800197c:	461a      	mov	r2, r3
 800197e:	4b0e      	ldr	r3, [pc, #56]	; (80019b8 <UART_SetConfig+0x3b4>)
 8001980:	fba3 1302 	umull	r1, r3, r3, r2
 8001984:	095b      	lsrs	r3, r3, #5
 8001986:	2164      	movs	r1, #100	; 0x64
 8001988:	fb01 f303 	mul.w	r3, r1, r3
 800198c:	1ad3      	subs	r3, r2, r3
 800198e:	011b      	lsls	r3, r3, #4
 8001990:	3332      	adds	r3, #50	; 0x32
 8001992:	4a09      	ldr	r2, [pc, #36]	; (80019b8 <UART_SetConfig+0x3b4>)
 8001994:	fba2 2303 	umull	r2, r3, r2, r3
 8001998:	095b      	lsrs	r3, r3, #5
 800199a:	f003 020f 	and.w	r2, r3, #15
 800199e:	687b      	ldr	r3, [r7, #4]
 80019a0:	681b      	ldr	r3, [r3, #0]
 80019a2:	4442      	add	r2, r8
 80019a4:	609a      	str	r2, [r3, #8]
}
 80019a6:	bf00      	nop
 80019a8:	3714      	adds	r7, #20
 80019aa:	46bd      	mov	sp, r7
 80019ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80019b0:	40011000 	.word	0x40011000
 80019b4:	40011400 	.word	0x40011400
 80019b8:	51eb851f 	.word	0x51eb851f

080019bc <_putchar>:

#else
extern int __io_putchar(int ch);
extern int __io_getchar(void);
void _putchar(const char ch)
{
 80019bc:	b580      	push	{r7, lr}
 80019be:	b082      	sub	sp, #8
 80019c0:	af00      	add	r7, sp, #0
 80019c2:	4603      	mov	r3, r0
 80019c4:	71fb      	strb	r3, [r7, #7]
    __io_putchar(ch);
 80019c6:	79fb      	ldrb	r3, [r7, #7]
 80019c8:	4618      	mov	r0, r3
 80019ca:	f001 fc19 	bl	8003200 <__io_putchar>
}
 80019ce:	bf00      	nop
 80019d0:	3708      	adds	r7, #8
 80019d2:	46bd      	mov	sp, r7
 80019d4:	bd80      	pop	{r7, pc}

080019d6 <_out_buffer>:
} out_fct_wrap_type;


// internal buffer output
static inline void _out_buffer(char character, void* buffer, size_t idx, size_t maxlen)
{
 80019d6:	b480      	push	{r7}
 80019d8:	b085      	sub	sp, #20
 80019da:	af00      	add	r7, sp, #0
 80019dc:	60b9      	str	r1, [r7, #8]
 80019de:	607a      	str	r2, [r7, #4]
 80019e0:	603b      	str	r3, [r7, #0]
 80019e2:	4603      	mov	r3, r0
 80019e4:	73fb      	strb	r3, [r7, #15]
  if (idx < maxlen) {
 80019e6:	687a      	ldr	r2, [r7, #4]
 80019e8:	683b      	ldr	r3, [r7, #0]
 80019ea:	429a      	cmp	r2, r3
 80019ec:	d204      	bcs.n	80019f8 <_out_buffer+0x22>
    ((char*)buffer)[idx] = character;
 80019ee:	68ba      	ldr	r2, [r7, #8]
 80019f0:	687b      	ldr	r3, [r7, #4]
 80019f2:	4413      	add	r3, r2
 80019f4:	7bfa      	ldrb	r2, [r7, #15]
 80019f6:	701a      	strb	r2, [r3, #0]
  }
}
 80019f8:	bf00      	nop
 80019fa:	3714      	adds	r7, #20
 80019fc:	46bd      	mov	sp, r7
 80019fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a02:	4770      	bx	lr

08001a04 <_out_null>:


// internal null output
static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen)
{
 8001a04:	b480      	push	{r7}
 8001a06:	b085      	sub	sp, #20
 8001a08:	af00      	add	r7, sp, #0
 8001a0a:	60b9      	str	r1, [r7, #8]
 8001a0c:	607a      	str	r2, [r7, #4]
 8001a0e:	603b      	str	r3, [r7, #0]
 8001a10:	4603      	mov	r3, r0
 8001a12:	73fb      	strb	r3, [r7, #15]
  (void)character; (void)buffer; (void)idx; (void)maxlen;
}
 8001a14:	bf00      	nop
 8001a16:	3714      	adds	r7, #20
 8001a18:	46bd      	mov	sp, r7
 8001a1a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a1e:	4770      	bx	lr

08001a20 <_out_char>:


// internal _putchar wrapper
static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen)
{
 8001a20:	b580      	push	{r7, lr}
 8001a22:	b084      	sub	sp, #16
 8001a24:	af00      	add	r7, sp, #0
 8001a26:	60b9      	str	r1, [r7, #8]
 8001a28:	607a      	str	r2, [r7, #4]
 8001a2a:	603b      	str	r3, [r7, #0]
 8001a2c:	4603      	mov	r3, r0
 8001a2e:	73fb      	strb	r3, [r7, #15]
  (void)buffer; (void)idx; (void)maxlen;
  if (character) {
 8001a30:	7bfb      	ldrb	r3, [r7, #15]
 8001a32:	2b00      	cmp	r3, #0
 8001a34:	d003      	beq.n	8001a3e <_out_char+0x1e>
    _putchar(character);
 8001a36:	7bfb      	ldrb	r3, [r7, #15]
 8001a38:	4618      	mov	r0, r3
 8001a3a:	f7ff ffbf 	bl	80019bc <_putchar>
  }
}
 8001a3e:	bf00      	nop
 8001a40:	3710      	adds	r7, #16
 8001a42:	46bd      	mov	sp, r7
 8001a44:	bd80      	pop	{r7, pc}

08001a46 <_strnlen_s>:


// internal secure strlen
// \return The length of the string (excluding the terminating 0) limited by 'maxsize'
static inline unsigned int _strnlen_s(const char* str, size_t maxsize)
{
 8001a46:	b480      	push	{r7}
 8001a48:	b085      	sub	sp, #20
 8001a4a:	af00      	add	r7, sp, #0
 8001a4c:	6078      	str	r0, [r7, #4]
 8001a4e:	6039      	str	r1, [r7, #0]
  const char* s;
  for (s = str; *s && maxsize--; ++s);
 8001a50:	687b      	ldr	r3, [r7, #4]
 8001a52:	60fb      	str	r3, [r7, #12]
 8001a54:	e002      	b.n	8001a5c <_strnlen_s+0x16>
 8001a56:	68fb      	ldr	r3, [r7, #12]
 8001a58:	3301      	adds	r3, #1
 8001a5a:	60fb      	str	r3, [r7, #12]
 8001a5c:	68fb      	ldr	r3, [r7, #12]
 8001a5e:	781b      	ldrb	r3, [r3, #0]
 8001a60:	2b00      	cmp	r3, #0
 8001a62:	d004      	beq.n	8001a6e <_strnlen_s+0x28>
 8001a64:	683b      	ldr	r3, [r7, #0]
 8001a66:	1e5a      	subs	r2, r3, #1
 8001a68:	603a      	str	r2, [r7, #0]
 8001a6a:	2b00      	cmp	r3, #0
 8001a6c:	d1f3      	bne.n	8001a56 <_strnlen_s+0x10>
  return (unsigned int)(s - str);
 8001a6e:	68fa      	ldr	r2, [r7, #12]
 8001a70:	687b      	ldr	r3, [r7, #4]
 8001a72:	1ad3      	subs	r3, r2, r3
}
 8001a74:	4618      	mov	r0, r3
 8001a76:	3714      	adds	r7, #20
 8001a78:	46bd      	mov	sp, r7
 8001a7a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a7e:	4770      	bx	lr

08001a80 <_is_digit>:


// internal test if char is a digit (0-9)
// \return true if char is a digit
static inline bool _is_digit(char ch)
{
 8001a80:	b480      	push	{r7}
 8001a82:	b083      	sub	sp, #12
 8001a84:	af00      	add	r7, sp, #0
 8001a86:	4603      	mov	r3, r0
 8001a88:	71fb      	strb	r3, [r7, #7]
  return (ch >= '0') && (ch <= '9');
 8001a8a:	79fb      	ldrb	r3, [r7, #7]
 8001a8c:	2b2f      	cmp	r3, #47	; 0x2f
 8001a8e:	d904      	bls.n	8001a9a <_is_digit+0x1a>
 8001a90:	79fb      	ldrb	r3, [r7, #7]
 8001a92:	2b39      	cmp	r3, #57	; 0x39
 8001a94:	d801      	bhi.n	8001a9a <_is_digit+0x1a>
 8001a96:	2301      	movs	r3, #1
 8001a98:	e000      	b.n	8001a9c <_is_digit+0x1c>
 8001a9a:	2300      	movs	r3, #0
 8001a9c:	f003 0301 	and.w	r3, r3, #1
 8001aa0:	b2db      	uxtb	r3, r3
}
 8001aa2:	4618      	mov	r0, r3
 8001aa4:	370c      	adds	r7, #12
 8001aa6:	46bd      	mov	sp, r7
 8001aa8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001aac:	4770      	bx	lr

08001aae <_atoi>:


// internal ASCII string to unsigned int conversion
static unsigned int _atoi(const char** str)
{
 8001aae:	b580      	push	{r7, lr}
 8001ab0:	b084      	sub	sp, #16
 8001ab2:	af00      	add	r7, sp, #0
 8001ab4:	6078      	str	r0, [r7, #4]
  unsigned int i = 0U;
 8001ab6:	2300      	movs	r3, #0
 8001ab8:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8001aba:	e00e      	b.n	8001ada <_atoi+0x2c>
    i = i * 10U + (unsigned int)(*((*str)++) - '0');
 8001abc:	68fa      	ldr	r2, [r7, #12]
 8001abe:	4613      	mov	r3, r2
 8001ac0:	009b      	lsls	r3, r3, #2
 8001ac2:	4413      	add	r3, r2
 8001ac4:	005b      	lsls	r3, r3, #1
 8001ac6:	4618      	mov	r0, r3
 8001ac8:	687b      	ldr	r3, [r7, #4]
 8001aca:	681b      	ldr	r3, [r3, #0]
 8001acc:	1c59      	adds	r1, r3, #1
 8001ace:	687a      	ldr	r2, [r7, #4]
 8001ad0:	6011      	str	r1, [r2, #0]
 8001ad2:	781b      	ldrb	r3, [r3, #0]
 8001ad4:	4403      	add	r3, r0
 8001ad6:	3b30      	subs	r3, #48	; 0x30
 8001ad8:	60fb      	str	r3, [r7, #12]
  while (_is_digit(**str)) {
 8001ada:	687b      	ldr	r3, [r7, #4]
 8001adc:	681b      	ldr	r3, [r3, #0]
 8001ade:	781b      	ldrb	r3, [r3, #0]
 8001ae0:	4618      	mov	r0, r3
 8001ae2:	f7ff ffcd 	bl	8001a80 <_is_digit>
 8001ae6:	4603      	mov	r3, r0
 8001ae8:	2b00      	cmp	r3, #0
 8001aea:	d1e7      	bne.n	8001abc <_atoi+0xe>
  }
  return i;
 8001aec:	68fb      	ldr	r3, [r7, #12]
}
 8001aee:	4618      	mov	r0, r3
 8001af0:	3710      	adds	r7, #16
 8001af2:	46bd      	mov	sp, r7
 8001af4:	bd80      	pop	{r7, pc}

08001af6 <_out_rev>:


// output the specified string in reverse, taking care of any zero-padding
static size_t _out_rev(out_fct_type out, char* buffer, size_t idx, size_t maxlen, const char* buf, size_t len, unsigned int width, unsigned int flags)
{
 8001af6:	b590      	push	{r4, r7, lr}
 8001af8:	b087      	sub	sp, #28
 8001afa:	af00      	add	r7, sp, #0
 8001afc:	60f8      	str	r0, [r7, #12]
 8001afe:	60b9      	str	r1, [r7, #8]
 8001b00:	607a      	str	r2, [r7, #4]
 8001b02:	603b      	str	r3, [r7, #0]
  const size_t start_idx = idx;
 8001b04:	687b      	ldr	r3, [r7, #4]
 8001b06:	613b      	str	r3, [r7, #16]

  // pad spaces up to given width
  if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
 8001b08:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001b0a:	f003 0302 	and.w	r3, r3, #2
 8001b0e:	2b00      	cmp	r3, #0
 8001b10:	d125      	bne.n	8001b5e <_out_rev+0x68>
 8001b12:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001b14:	f003 0301 	and.w	r3, r3, #1
 8001b18:	2b00      	cmp	r3, #0
 8001b1a:	d120      	bne.n	8001b5e <_out_rev+0x68>
    for (size_t i = len; i < width; i++) {
 8001b1c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b1e:	617b      	str	r3, [r7, #20]
 8001b20:	e00a      	b.n	8001b38 <_out_rev+0x42>
      out(' ', buffer, idx++, maxlen);
 8001b22:	687a      	ldr	r2, [r7, #4]
 8001b24:	1c53      	adds	r3, r2, #1
 8001b26:	607b      	str	r3, [r7, #4]
 8001b28:	68fc      	ldr	r4, [r7, #12]
 8001b2a:	683b      	ldr	r3, [r7, #0]
 8001b2c:	68b9      	ldr	r1, [r7, #8]
 8001b2e:	2020      	movs	r0, #32
 8001b30:	47a0      	blx	r4
    for (size_t i = len; i < width; i++) {
 8001b32:	697b      	ldr	r3, [r7, #20]
 8001b34:	3301      	adds	r3, #1
 8001b36:	617b      	str	r3, [r7, #20]
 8001b38:	697a      	ldr	r2, [r7, #20]
 8001b3a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b3c:	429a      	cmp	r2, r3
 8001b3e:	d3f0      	bcc.n	8001b22 <_out_rev+0x2c>
    }
  }

  // reverse string
  while (len) {
 8001b40:	e00d      	b.n	8001b5e <_out_rev+0x68>
    out(buf[--len], buffer, idx++, maxlen);
 8001b42:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b44:	3b01      	subs	r3, #1
 8001b46:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001b48:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001b4a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b4c:	4413      	add	r3, r2
 8001b4e:	7818      	ldrb	r0, [r3, #0]
 8001b50:	687a      	ldr	r2, [r7, #4]
 8001b52:	1c53      	adds	r3, r2, #1
 8001b54:	607b      	str	r3, [r7, #4]
 8001b56:	68fc      	ldr	r4, [r7, #12]
 8001b58:	683b      	ldr	r3, [r7, #0]
 8001b5a:	68b9      	ldr	r1, [r7, #8]
 8001b5c:	47a0      	blx	r4
  while (len) {
 8001b5e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b60:	2b00      	cmp	r3, #0
 8001b62:	d1ee      	bne.n	8001b42 <_out_rev+0x4c>
  }

  // append pad spaces up to given width
  if (flags & FLAGS_LEFT) {
 8001b64:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001b66:	f003 0302 	and.w	r3, r3, #2
 8001b6a:	2b00      	cmp	r3, #0
 8001b6c:	d00e      	beq.n	8001b8c <_out_rev+0x96>
    while (idx - start_idx < width) {
 8001b6e:	e007      	b.n	8001b80 <_out_rev+0x8a>
      out(' ', buffer, idx++, maxlen);
 8001b70:	687a      	ldr	r2, [r7, #4]
 8001b72:	1c53      	adds	r3, r2, #1
 8001b74:	607b      	str	r3, [r7, #4]
 8001b76:	68fc      	ldr	r4, [r7, #12]
 8001b78:	683b      	ldr	r3, [r7, #0]
 8001b7a:	68b9      	ldr	r1, [r7, #8]
 8001b7c:	2020      	movs	r0, #32
 8001b7e:	47a0      	blx	r4
    while (idx - start_idx < width) {
 8001b80:	687a      	ldr	r2, [r7, #4]
 8001b82:	693b      	ldr	r3, [r7, #16]
 8001b84:	1ad3      	subs	r3, r2, r3
 8001b86:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8001b88:	429a      	cmp	r2, r3
 8001b8a:	d8f1      	bhi.n	8001b70 <_out_rev+0x7a>
    }
  }

  return idx;
 8001b8c:	687b      	ldr	r3, [r7, #4]
}
 8001b8e:	4618      	mov	r0, r3
 8001b90:	371c      	adds	r7, #28
 8001b92:	46bd      	mov	sp, r7
 8001b94:	bd90      	pop	{r4, r7, pc}

08001b96 <_ntoa_format>:


// internal itoa format
static size_t _ntoa_format(out_fct_type out, char* buffer, size_t idx, size_t maxlen, char* buf, size_t len, bool negative, unsigned int base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8001b96:	b580      	push	{r7, lr}
 8001b98:	b088      	sub	sp, #32
 8001b9a:	af04      	add	r7, sp, #16
 8001b9c:	60f8      	str	r0, [r7, #12]
 8001b9e:	60b9      	str	r1, [r7, #8]
 8001ba0:	607a      	str	r2, [r7, #4]
 8001ba2:	603b      	str	r3, [r7, #0]
  // pad leading zeros
  if (!(flags & FLAGS_LEFT)) {
 8001ba4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001ba6:	f003 0302 	and.w	r3, r3, #2
 8001baa:	2b00      	cmp	r3, #0
 8001bac:	d136      	bne.n	8001c1c <_ntoa_format+0x86>
    if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
 8001bae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001bb0:	2b00      	cmp	r3, #0
 8001bb2:	d018      	beq.n	8001be6 <_ntoa_format+0x50>
 8001bb4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001bb6:	f003 0301 	and.w	r3, r3, #1
 8001bba:	2b00      	cmp	r3, #0
 8001bbc:	d013      	beq.n	8001be6 <_ntoa_format+0x50>
 8001bbe:	f897 3020 	ldrb.w	r3, [r7, #32]
 8001bc2:	2b00      	cmp	r3, #0
 8001bc4:	d104      	bne.n	8001bd0 <_ntoa_format+0x3a>
 8001bc6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001bc8:	f003 030c 	and.w	r3, r3, #12
 8001bcc:	2b00      	cmp	r3, #0
 8001bce:	d00a      	beq.n	8001be6 <_ntoa_format+0x50>
      width--;
 8001bd0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001bd2:	3b01      	subs	r3, #1
 8001bd4:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001bd6:	e006      	b.n	8001be6 <_ntoa_format+0x50>
      buf[len++] = '0';
 8001bd8:	69fb      	ldr	r3, [r7, #28]
 8001bda:	1c5a      	adds	r2, r3, #1
 8001bdc:	61fa      	str	r2, [r7, #28]
 8001bde:	69ba      	ldr	r2, [r7, #24]
 8001be0:	4413      	add	r3, r2
 8001be2:	2230      	movs	r2, #48	; 0x30
 8001be4:	701a      	strb	r2, [r3, #0]
    while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001be6:	69fa      	ldr	r2, [r7, #28]
 8001be8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001bea:	429a      	cmp	r2, r3
 8001bec:	d20a      	bcs.n	8001c04 <_ntoa_format+0x6e>
 8001bee:	69fb      	ldr	r3, [r7, #28]
 8001bf0:	2b1f      	cmp	r3, #31
 8001bf2:	d9f1      	bls.n	8001bd8 <_ntoa_format+0x42>
    }
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001bf4:	e006      	b.n	8001c04 <_ntoa_format+0x6e>
      buf[len++] = '0';
 8001bf6:	69fb      	ldr	r3, [r7, #28]
 8001bf8:	1c5a      	adds	r2, r3, #1
 8001bfa:	61fa      	str	r2, [r7, #28]
 8001bfc:	69ba      	ldr	r2, [r7, #24]
 8001bfe:	4413      	add	r3, r2
 8001c00:	2230      	movs	r2, #48	; 0x30
 8001c02:	701a      	strb	r2, [r3, #0]
    while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001c04:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c06:	f003 0301 	and.w	r3, r3, #1
 8001c0a:	2b00      	cmp	r3, #0
 8001c0c:	d006      	beq.n	8001c1c <_ntoa_format+0x86>
 8001c0e:	69fa      	ldr	r2, [r7, #28]
 8001c10:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001c12:	429a      	cmp	r2, r3
 8001c14:	d202      	bcs.n	8001c1c <_ntoa_format+0x86>
 8001c16:	69fb      	ldr	r3, [r7, #28]
 8001c18:	2b1f      	cmp	r3, #31
 8001c1a:	d9ec      	bls.n	8001bf6 <_ntoa_format+0x60>
    }
  }

  // handle hash
  if (flags & FLAGS_HASH) {
 8001c1c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c1e:	f003 0310 	and.w	r3, r3, #16
 8001c22:	2b00      	cmp	r3, #0
 8001c24:	d058      	beq.n	8001cd8 <_ntoa_format+0x142>
    if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
 8001c26:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c28:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001c2c:	2b00      	cmp	r3, #0
 8001c2e:	d116      	bne.n	8001c5e <_ntoa_format+0xc8>
 8001c30:	69fb      	ldr	r3, [r7, #28]
 8001c32:	2b00      	cmp	r3, #0
 8001c34:	d013      	beq.n	8001c5e <_ntoa_format+0xc8>
 8001c36:	69fa      	ldr	r2, [r7, #28]
 8001c38:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001c3a:	429a      	cmp	r2, r3
 8001c3c:	d003      	beq.n	8001c46 <_ntoa_format+0xb0>
 8001c3e:	69fa      	ldr	r2, [r7, #28]
 8001c40:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001c42:	429a      	cmp	r2, r3
 8001c44:	d10b      	bne.n	8001c5e <_ntoa_format+0xc8>
      len--;
 8001c46:	69fb      	ldr	r3, [r7, #28]
 8001c48:	3b01      	subs	r3, #1
 8001c4a:	61fb      	str	r3, [r7, #28]
      if (len && (base == 16U)) {
 8001c4c:	69fb      	ldr	r3, [r7, #28]
 8001c4e:	2b00      	cmp	r3, #0
 8001c50:	d005      	beq.n	8001c5e <_ntoa_format+0xc8>
 8001c52:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001c54:	2b10      	cmp	r3, #16
 8001c56:	d102      	bne.n	8001c5e <_ntoa_format+0xc8>
        len--;
 8001c58:	69fb      	ldr	r3, [r7, #28]
 8001c5a:	3b01      	subs	r3, #1
 8001c5c:	61fb      	str	r3, [r7, #28]
      }
    }
    if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001c5e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001c60:	2b10      	cmp	r3, #16
 8001c62:	d10f      	bne.n	8001c84 <_ntoa_format+0xee>
 8001c64:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c66:	f003 0320 	and.w	r3, r3, #32
 8001c6a:	2b00      	cmp	r3, #0
 8001c6c:	d10a      	bne.n	8001c84 <_ntoa_format+0xee>
 8001c6e:	69fb      	ldr	r3, [r7, #28]
 8001c70:	2b1f      	cmp	r3, #31
 8001c72:	d807      	bhi.n	8001c84 <_ntoa_format+0xee>
      buf[len++] = 'x';
 8001c74:	69fb      	ldr	r3, [r7, #28]
 8001c76:	1c5a      	adds	r2, r3, #1
 8001c78:	61fa      	str	r2, [r7, #28]
 8001c7a:	69ba      	ldr	r2, [r7, #24]
 8001c7c:	4413      	add	r3, r2
 8001c7e:	2278      	movs	r2, #120	; 0x78
 8001c80:	701a      	strb	r2, [r3, #0]
 8001c82:	e01f      	b.n	8001cc4 <_ntoa_format+0x12e>
    }
    else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001c84:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001c86:	2b10      	cmp	r3, #16
 8001c88:	d10f      	bne.n	8001caa <_ntoa_format+0x114>
 8001c8a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c8c:	f003 0320 	and.w	r3, r3, #32
 8001c90:	2b00      	cmp	r3, #0
 8001c92:	d00a      	beq.n	8001caa <_ntoa_format+0x114>
 8001c94:	69fb      	ldr	r3, [r7, #28]
 8001c96:	2b1f      	cmp	r3, #31
 8001c98:	d807      	bhi.n	8001caa <_ntoa_format+0x114>
      buf[len++] = 'X';
 8001c9a:	69fb      	ldr	r3, [r7, #28]
 8001c9c:	1c5a      	adds	r2, r3, #1
 8001c9e:	61fa      	str	r2, [r7, #28]
 8001ca0:	69ba      	ldr	r2, [r7, #24]
 8001ca2:	4413      	add	r3, r2
 8001ca4:	2258      	movs	r2, #88	; 0x58
 8001ca6:	701a      	strb	r2, [r3, #0]
 8001ca8:	e00c      	b.n	8001cc4 <_ntoa_format+0x12e>
    }
    else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
 8001caa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001cac:	2b02      	cmp	r3, #2
 8001cae:	d109      	bne.n	8001cc4 <_ntoa_format+0x12e>
 8001cb0:	69fb      	ldr	r3, [r7, #28]
 8001cb2:	2b1f      	cmp	r3, #31
 8001cb4:	d806      	bhi.n	8001cc4 <_ntoa_format+0x12e>
      buf[len++] = 'b';
 8001cb6:	69fb      	ldr	r3, [r7, #28]
 8001cb8:	1c5a      	adds	r2, r3, #1
 8001cba:	61fa      	str	r2, [r7, #28]
 8001cbc:	69ba      	ldr	r2, [r7, #24]
 8001cbe:	4413      	add	r3, r2
 8001cc0:	2262      	movs	r2, #98	; 0x62
 8001cc2:	701a      	strb	r2, [r3, #0]
    }
    if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8001cc4:	69fb      	ldr	r3, [r7, #28]
 8001cc6:	2b1f      	cmp	r3, #31
 8001cc8:	d806      	bhi.n	8001cd8 <_ntoa_format+0x142>
      buf[len++] = '0';
 8001cca:	69fb      	ldr	r3, [r7, #28]
 8001ccc:	1c5a      	adds	r2, r3, #1
 8001cce:	61fa      	str	r2, [r7, #28]
 8001cd0:	69ba      	ldr	r2, [r7, #24]
 8001cd2:	4413      	add	r3, r2
 8001cd4:	2230      	movs	r2, #48	; 0x30
 8001cd6:	701a      	strb	r2, [r3, #0]
    }
  }

  if (len < PRINTF_NTOA_BUFFER_SIZE) {
 8001cd8:	69fb      	ldr	r3, [r7, #28]
 8001cda:	2b1f      	cmp	r3, #31
 8001cdc:	d824      	bhi.n	8001d28 <_ntoa_format+0x192>
    if (negative) {
 8001cde:	f897 3020 	ldrb.w	r3, [r7, #32]
 8001ce2:	2b00      	cmp	r3, #0
 8001ce4:	d007      	beq.n	8001cf6 <_ntoa_format+0x160>
      buf[len++] = '-';
 8001ce6:	69fb      	ldr	r3, [r7, #28]
 8001ce8:	1c5a      	adds	r2, r3, #1
 8001cea:	61fa      	str	r2, [r7, #28]
 8001cec:	69ba      	ldr	r2, [r7, #24]
 8001cee:	4413      	add	r3, r2
 8001cf0:	222d      	movs	r2, #45	; 0x2d
 8001cf2:	701a      	strb	r2, [r3, #0]
 8001cf4:	e018      	b.n	8001d28 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_PLUS) {
 8001cf6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001cf8:	f003 0304 	and.w	r3, r3, #4
 8001cfc:	2b00      	cmp	r3, #0
 8001cfe:	d007      	beq.n	8001d10 <_ntoa_format+0x17a>
      buf[len++] = '+';  // ignore the space if the '+' exists
 8001d00:	69fb      	ldr	r3, [r7, #28]
 8001d02:	1c5a      	adds	r2, r3, #1
 8001d04:	61fa      	str	r2, [r7, #28]
 8001d06:	69ba      	ldr	r2, [r7, #24]
 8001d08:	4413      	add	r3, r2
 8001d0a:	222b      	movs	r2, #43	; 0x2b
 8001d0c:	701a      	strb	r2, [r3, #0]
 8001d0e:	e00b      	b.n	8001d28 <_ntoa_format+0x192>
    }
    else if (flags & FLAGS_SPACE) {
 8001d10:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001d12:	f003 0308 	and.w	r3, r3, #8
 8001d16:	2b00      	cmp	r3, #0
 8001d18:	d006      	beq.n	8001d28 <_ntoa_format+0x192>
      buf[len++] = ' ';
 8001d1a:	69fb      	ldr	r3, [r7, #28]
 8001d1c:	1c5a      	adds	r2, r3, #1
 8001d1e:	61fa      	str	r2, [r7, #28]
 8001d20:	69ba      	ldr	r2, [r7, #24]
 8001d22:	4413      	add	r3, r2
 8001d24:	2220      	movs	r2, #32
 8001d26:	701a      	strb	r2, [r3, #0]
    }
  }

  return _out_rev(out, buffer, idx, maxlen, buf, len, width, flags);
 8001d28:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001d2a:	9303      	str	r3, [sp, #12]
 8001d2c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001d2e:	9302      	str	r3, [sp, #8]
 8001d30:	69fb      	ldr	r3, [r7, #28]
 8001d32:	9301      	str	r3, [sp, #4]
 8001d34:	69bb      	ldr	r3, [r7, #24]
 8001d36:	9300      	str	r3, [sp, #0]
 8001d38:	683b      	ldr	r3, [r7, #0]
 8001d3a:	687a      	ldr	r2, [r7, #4]
 8001d3c:	68b9      	ldr	r1, [r7, #8]
 8001d3e:	68f8      	ldr	r0, [r7, #12]
 8001d40:	f7ff fed9 	bl	8001af6 <_out_rev>
 8001d44:	4603      	mov	r3, r0
}
 8001d46:	4618      	mov	r0, r3
 8001d48:	3710      	adds	r7, #16
 8001d4a:	46bd      	mov	sp, r7
 8001d4c:	bd80      	pop	{r7, pc}

08001d4e <_ntoa_long>:


// internal itoa for 'long' type
static size_t _ntoa_long(out_fct_type out, char* buffer, size_t idx, size_t maxlen, unsigned long value, bool negative, unsigned long base, unsigned int prec, unsigned int width, unsigned int flags)
{
 8001d4e:	b580      	push	{r7, lr}
 8001d50:	b096      	sub	sp, #88	; 0x58
 8001d52:	af08      	add	r7, sp, #32
 8001d54:	60f8      	str	r0, [r7, #12]
 8001d56:	60b9      	str	r1, [r7, #8]
 8001d58:	607a      	str	r2, [r7, #4]
 8001d5a:	603b      	str	r3, [r7, #0]
  char buf[PRINTF_NTOA_BUFFER_SIZE];
  size_t len = 0U;
 8001d5c:	2300      	movs	r3, #0
 8001d5e:	637b      	str	r3, [r7, #52]	; 0x34

  // no hash for 0 values
  if (!value) {
 8001d60:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d62:	2b00      	cmp	r3, #0
 8001d64:	d103      	bne.n	8001d6e <_ntoa_long+0x20>
    flags &= ~FLAGS_HASH;
 8001d66:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001d68:	f023 0310 	bic.w	r3, r3, #16
 8001d6c:	657b      	str	r3, [r7, #84]	; 0x54
  }

  // write if precision != 0 and value is != 0
  if (!(flags & FLAGS_PRECISION) || value) {
 8001d6e:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001d70:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001d74:	2b00      	cmp	r3, #0
 8001d76:	d002      	beq.n	8001d7e <_ntoa_long+0x30>
 8001d78:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d7a:	2b00      	cmp	r3, #0
 8001d7c:	d033      	beq.n	8001de6 <_ntoa_long+0x98>
    do {
      const char digit = (char)(value % base);
 8001d7e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d80:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8001d82:	fbb3 f2f2 	udiv	r2, r3, r2
 8001d86:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8001d88:	fb01 f202 	mul.w	r2, r1, r2
 8001d8c:	1a9b      	subs	r3, r3, r2
 8001d8e:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
      buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
 8001d92:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8001d96:	2b09      	cmp	r3, #9
 8001d98:	d804      	bhi.n	8001da4 <_ntoa_long+0x56>
 8001d9a:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8001d9e:	3330      	adds	r3, #48	; 0x30
 8001da0:	b2da      	uxtb	r2, r3
 8001da2:	e00d      	b.n	8001dc0 <_ntoa_long+0x72>
 8001da4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001da6:	f003 0320 	and.w	r3, r3, #32
 8001daa:	2b00      	cmp	r3, #0
 8001dac:	d001      	beq.n	8001db2 <_ntoa_long+0x64>
 8001dae:	2241      	movs	r2, #65	; 0x41
 8001db0:	e000      	b.n	8001db4 <_ntoa_long+0x66>
 8001db2:	2261      	movs	r2, #97	; 0x61
 8001db4:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8001db8:	4413      	add	r3, r2
 8001dba:	b2db      	uxtb	r3, r3
 8001dbc:	3b0a      	subs	r3, #10
 8001dbe:	b2da      	uxtb	r2, r3
 8001dc0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001dc2:	1c59      	adds	r1, r3, #1
 8001dc4:	6379      	str	r1, [r7, #52]	; 0x34
 8001dc6:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8001dca:	440b      	add	r3, r1
 8001dcc:	f803 2c28 	strb.w	r2, [r3, #-40]
      value /= base;
 8001dd0:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8001dd2:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8001dd4:	fbb2 f3f3 	udiv	r3, r2, r3
 8001dd8:	643b      	str	r3, [r7, #64]	; 0x40
    } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
 8001dda:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001ddc:	2b00      	cmp	r3, #0
 8001dde:	d002      	beq.n	8001de6 <_ntoa_long+0x98>
 8001de0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001de2:	2b1f      	cmp	r3, #31
 8001de4:	d9cb      	bls.n	8001d7e <_ntoa_long+0x30>
  }

  return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
 8001de6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001de8:	9306      	str	r3, [sp, #24]
 8001dea:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8001dec:	9305      	str	r3, [sp, #20]
 8001dee:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8001df0:	9304      	str	r3, [sp, #16]
 8001df2:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8001df4:	9303      	str	r3, [sp, #12]
 8001df6:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
 8001dfa:	9302      	str	r3, [sp, #8]
 8001dfc:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001dfe:	9301      	str	r3, [sp, #4]
 8001e00:	f107 0310 	add.w	r3, r7, #16
 8001e04:	9300      	str	r3, [sp, #0]
 8001e06:	683b      	ldr	r3, [r7, #0]
 8001e08:	687a      	ldr	r2, [r7, #4]
 8001e0a:	68b9      	ldr	r1, [r7, #8]
 8001e0c:	68f8      	ldr	r0, [r7, #12]
 8001e0e:	f7ff fec2 	bl	8001b96 <_ntoa_format>
 8001e12:	4603      	mov	r3, r0
}
 8001e14:	4618      	mov	r0, r3
 8001e16:	3738      	adds	r7, #56	; 0x38
 8001e18:	46bd      	mov	sp, r7
 8001e1a:	bd80      	pop	{r7, pc}

08001e1c <_vsnprintf>:
#endif  // PRINTF_SUPPORT_FLOAT


// internal vsnprintf
static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va)
{
 8001e1c:	b590      	push	{r4, r7, lr}
 8001e1e:	b099      	sub	sp, #100	; 0x64
 8001e20:	af06      	add	r7, sp, #24
 8001e22:	60f8      	str	r0, [r7, #12]
 8001e24:	60b9      	str	r1, [r7, #8]
 8001e26:	607a      	str	r2, [r7, #4]
 8001e28:	603b      	str	r3, [r7, #0]
  unsigned int flags, width, precision, n;
  size_t idx = 0U;
 8001e2a:	2300      	movs	r3, #0
 8001e2c:	637b      	str	r3, [r7, #52]	; 0x34

  if (!buffer) {
 8001e2e:	68bb      	ldr	r3, [r7, #8]
 8001e30:	2b00      	cmp	r3, #0
 8001e32:	f040 83bf 	bne.w	80025b4 <_vsnprintf+0x798>
    // use null output function
    out = _out_null;
 8001e36:	4b9f      	ldr	r3, [pc, #636]	; (80020b4 <_vsnprintf+0x298>)
 8001e38:	60fb      	str	r3, [r7, #12]
  }

  while (*format)
 8001e3a:	e3bb      	b.n	80025b4 <_vsnprintf+0x798>
  {
    // format specifier?  %[flags][width][.precision][length]
    if (*format != '%') {
 8001e3c:	683b      	ldr	r3, [r7, #0]
 8001e3e:	781b      	ldrb	r3, [r3, #0]
 8001e40:	2b25      	cmp	r3, #37	; 0x25
 8001e42:	d00c      	beq.n	8001e5e <_vsnprintf+0x42>
      // no
      out(*format, buffer, idx++, maxlen);
 8001e44:	683b      	ldr	r3, [r7, #0]
 8001e46:	7818      	ldrb	r0, [r3, #0]
 8001e48:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8001e4a:	1c53      	adds	r3, r2, #1
 8001e4c:	637b      	str	r3, [r7, #52]	; 0x34
 8001e4e:	68fc      	ldr	r4, [r7, #12]
 8001e50:	687b      	ldr	r3, [r7, #4]
 8001e52:	68b9      	ldr	r1, [r7, #8]
 8001e54:	47a0      	blx	r4
      format++;
 8001e56:	683b      	ldr	r3, [r7, #0]
 8001e58:	3301      	adds	r3, #1
 8001e5a:	603b      	str	r3, [r7, #0]
      continue;
 8001e5c:	e3aa      	b.n	80025b4 <_vsnprintf+0x798>
    }
    else {
      // yes, evaluate it
      format++;
 8001e5e:	683b      	ldr	r3, [r7, #0]
 8001e60:	3301      	adds	r3, #1
 8001e62:	603b      	str	r3, [r7, #0]
    }

    // evaluate flags
    flags = 0U;
 8001e64:	2300      	movs	r3, #0
 8001e66:	647b      	str	r3, [r7, #68]	; 0x44
    do {
      switch (*format) {
 8001e68:	683b      	ldr	r3, [r7, #0]
 8001e6a:	781b      	ldrb	r3, [r3, #0]
 8001e6c:	3b20      	subs	r3, #32
 8001e6e:	2b10      	cmp	r3, #16
 8001e70:	d856      	bhi.n	8001f20 <_vsnprintf+0x104>
 8001e72:	a201      	add	r2, pc, #4	; (adr r2, 8001e78 <_vsnprintf+0x5c>)
 8001e74:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001e78:	08001ef9 	.word	0x08001ef9
 8001e7c:	08001f21 	.word	0x08001f21
 8001e80:	08001f21 	.word	0x08001f21
 8001e84:	08001f0d 	.word	0x08001f0d
 8001e88:	08001f21 	.word	0x08001f21
 8001e8c:	08001f21 	.word	0x08001f21
 8001e90:	08001f21 	.word	0x08001f21
 8001e94:	08001f21 	.word	0x08001f21
 8001e98:	08001f21 	.word	0x08001f21
 8001e9c:	08001f21 	.word	0x08001f21
 8001ea0:	08001f21 	.word	0x08001f21
 8001ea4:	08001ee5 	.word	0x08001ee5
 8001ea8:	08001f21 	.word	0x08001f21
 8001eac:	08001ed1 	.word	0x08001ed1
 8001eb0:	08001f21 	.word	0x08001f21
 8001eb4:	08001f21 	.word	0x08001f21
 8001eb8:	08001ebd 	.word	0x08001ebd
        case '0': flags |= FLAGS_ZEROPAD; format++; n = 1U; break;
 8001ebc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001ebe:	f043 0301 	orr.w	r3, r3, #1
 8001ec2:	647b      	str	r3, [r7, #68]	; 0x44
 8001ec4:	683b      	ldr	r3, [r7, #0]
 8001ec6:	3301      	adds	r3, #1
 8001ec8:	603b      	str	r3, [r7, #0]
 8001eca:	2301      	movs	r3, #1
 8001ecc:	63bb      	str	r3, [r7, #56]	; 0x38
 8001ece:	e02a      	b.n	8001f26 <_vsnprintf+0x10a>
        case '-': flags |= FLAGS_LEFT;    format++; n = 1U; break;
 8001ed0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001ed2:	f043 0302 	orr.w	r3, r3, #2
 8001ed6:	647b      	str	r3, [r7, #68]	; 0x44
 8001ed8:	683b      	ldr	r3, [r7, #0]
 8001eda:	3301      	adds	r3, #1
 8001edc:	603b      	str	r3, [r7, #0]
 8001ede:	2301      	movs	r3, #1
 8001ee0:	63bb      	str	r3, [r7, #56]	; 0x38
 8001ee2:	e020      	b.n	8001f26 <_vsnprintf+0x10a>
        case '+': flags |= FLAGS_PLUS;    format++; n = 1U; break;
 8001ee4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001ee6:	f043 0304 	orr.w	r3, r3, #4
 8001eea:	647b      	str	r3, [r7, #68]	; 0x44
 8001eec:	683b      	ldr	r3, [r7, #0]
 8001eee:	3301      	adds	r3, #1
 8001ef0:	603b      	str	r3, [r7, #0]
 8001ef2:	2301      	movs	r3, #1
 8001ef4:	63bb      	str	r3, [r7, #56]	; 0x38
 8001ef6:	e016      	b.n	8001f26 <_vsnprintf+0x10a>
        case ' ': flags |= FLAGS_SPACE;   format++; n = 1U; break;
 8001ef8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001efa:	f043 0308 	orr.w	r3, r3, #8
 8001efe:	647b      	str	r3, [r7, #68]	; 0x44
 8001f00:	683b      	ldr	r3, [r7, #0]
 8001f02:	3301      	adds	r3, #1
 8001f04:	603b      	str	r3, [r7, #0]
 8001f06:	2301      	movs	r3, #1
 8001f08:	63bb      	str	r3, [r7, #56]	; 0x38
 8001f0a:	e00c      	b.n	8001f26 <_vsnprintf+0x10a>
        case '#': flags |= FLAGS_HASH;    format++; n = 1U; break;
 8001f0c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001f0e:	f043 0310 	orr.w	r3, r3, #16
 8001f12:	647b      	str	r3, [r7, #68]	; 0x44
 8001f14:	683b      	ldr	r3, [r7, #0]
 8001f16:	3301      	adds	r3, #1
 8001f18:	603b      	str	r3, [r7, #0]
 8001f1a:	2301      	movs	r3, #1
 8001f1c:	63bb      	str	r3, [r7, #56]	; 0x38
 8001f1e:	e002      	b.n	8001f26 <_vsnprintf+0x10a>
        default :                                   n = 0U; break;
 8001f20:	2300      	movs	r3, #0
 8001f22:	63bb      	str	r3, [r7, #56]	; 0x38
 8001f24:	bf00      	nop
      }
    } while (n);
 8001f26:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8001f28:	2b00      	cmp	r3, #0
 8001f2a:	d19d      	bne.n	8001e68 <_vsnprintf+0x4c>

    // evaluate width field
    width = 0U;
 8001f2c:	2300      	movs	r3, #0
 8001f2e:	643b      	str	r3, [r7, #64]	; 0x40
    if (_is_digit(*format)) {
 8001f30:	683b      	ldr	r3, [r7, #0]
 8001f32:	781b      	ldrb	r3, [r3, #0]
 8001f34:	4618      	mov	r0, r3
 8001f36:	f7ff fda3 	bl	8001a80 <_is_digit>
 8001f3a:	4603      	mov	r3, r0
 8001f3c:	2b00      	cmp	r3, #0
 8001f3e:	d005      	beq.n	8001f4c <_vsnprintf+0x130>
      width = _atoi(&format);
 8001f40:	463b      	mov	r3, r7
 8001f42:	4618      	mov	r0, r3
 8001f44:	f7ff fdb3 	bl	8001aae <_atoi>
 8001f48:	6438      	str	r0, [r7, #64]	; 0x40
 8001f4a:	e018      	b.n	8001f7e <_vsnprintf+0x162>
    }
    else if (*format == '*') {
 8001f4c:	683b      	ldr	r3, [r7, #0]
 8001f4e:	781b      	ldrb	r3, [r3, #0]
 8001f50:	2b2a      	cmp	r3, #42	; 0x2a
 8001f52:	d114      	bne.n	8001f7e <_vsnprintf+0x162>
      const int w = va_arg(va, int);
 8001f54:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8001f56:	1d1a      	adds	r2, r3, #4
 8001f58:	65ba      	str	r2, [r7, #88]	; 0x58
 8001f5a:	681b      	ldr	r3, [r3, #0]
 8001f5c:	623b      	str	r3, [r7, #32]
      if (w < 0) {
 8001f5e:	6a3b      	ldr	r3, [r7, #32]
 8001f60:	2b00      	cmp	r3, #0
 8001f62:	da07      	bge.n	8001f74 <_vsnprintf+0x158>
        flags |= FLAGS_LEFT;    // reverse padding
 8001f64:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001f66:	f043 0302 	orr.w	r3, r3, #2
 8001f6a:	647b      	str	r3, [r7, #68]	; 0x44
        width = (unsigned int)-w;
 8001f6c:	6a3b      	ldr	r3, [r7, #32]
 8001f6e:	425b      	negs	r3, r3
 8001f70:	643b      	str	r3, [r7, #64]	; 0x40
 8001f72:	e001      	b.n	8001f78 <_vsnprintf+0x15c>
      }
      else {
        width = (unsigned int)w;
 8001f74:	6a3b      	ldr	r3, [r7, #32]
 8001f76:	643b      	str	r3, [r7, #64]	; 0x40
      }
      format++;
 8001f78:	683b      	ldr	r3, [r7, #0]
 8001f7a:	3301      	adds	r3, #1
 8001f7c:	603b      	str	r3, [r7, #0]
    }

    // evaluate precision field
    precision = 0U;
 8001f7e:	2300      	movs	r3, #0
 8001f80:	63fb      	str	r3, [r7, #60]	; 0x3c
    if (*format == '.') {
 8001f82:	683b      	ldr	r3, [r7, #0]
 8001f84:	781b      	ldrb	r3, [r3, #0]
 8001f86:	2b2e      	cmp	r3, #46	; 0x2e
 8001f88:	d124      	bne.n	8001fd4 <_vsnprintf+0x1b8>
      flags |= FLAGS_PRECISION;
 8001f8a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001f8c:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8001f90:	647b      	str	r3, [r7, #68]	; 0x44
      format++;
 8001f92:	683b      	ldr	r3, [r7, #0]
 8001f94:	3301      	adds	r3, #1
 8001f96:	603b      	str	r3, [r7, #0]
      if (_is_digit(*format)) {
 8001f98:	683b      	ldr	r3, [r7, #0]
 8001f9a:	781b      	ldrb	r3, [r3, #0]
 8001f9c:	4618      	mov	r0, r3
 8001f9e:	f7ff fd6f 	bl	8001a80 <_is_digit>
 8001fa2:	4603      	mov	r3, r0
 8001fa4:	2b00      	cmp	r3, #0
 8001fa6:	d005      	beq.n	8001fb4 <_vsnprintf+0x198>
        precision = _atoi(&format);
 8001fa8:	463b      	mov	r3, r7
 8001faa:	4618      	mov	r0, r3
 8001fac:	f7ff fd7f 	bl	8001aae <_atoi>
 8001fb0:	63f8      	str	r0, [r7, #60]	; 0x3c
 8001fb2:	e00f      	b.n	8001fd4 <_vsnprintf+0x1b8>
      }
      else if (*format == '*') {
 8001fb4:	683b      	ldr	r3, [r7, #0]
 8001fb6:	781b      	ldrb	r3, [r3, #0]
 8001fb8:	2b2a      	cmp	r3, #42	; 0x2a
 8001fba:	d10b      	bne.n	8001fd4 <_vsnprintf+0x1b8>
        const int prec = (int)va_arg(va, int);
 8001fbc:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8001fbe:	1d1a      	adds	r2, r3, #4
 8001fc0:	65ba      	str	r2, [r7, #88]	; 0x58
 8001fc2:	681b      	ldr	r3, [r3, #0]
 8001fc4:	61fb      	str	r3, [r7, #28]
        precision = prec > 0 ? (unsigned int)prec : 0U;
 8001fc6:	69fb      	ldr	r3, [r7, #28]
 8001fc8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8001fcc:	63fb      	str	r3, [r7, #60]	; 0x3c
        format++;
 8001fce:	683b      	ldr	r3, [r7, #0]
 8001fd0:	3301      	adds	r3, #1
 8001fd2:	603b      	str	r3, [r7, #0]
      }
    }

    // evaluate length field
    switch (*format) {
 8001fd4:	683b      	ldr	r3, [r7, #0]
 8001fd6:	781b      	ldrb	r3, [r3, #0]
 8001fd8:	3b68      	subs	r3, #104	; 0x68
 8001fda:	2b12      	cmp	r3, #18
 8001fdc:	d866      	bhi.n	80020ac <_vsnprintf+0x290>
 8001fde:	a201      	add	r2, pc, #4	; (adr r2, 8001fe4 <_vsnprintf+0x1c8>)
 8001fe0:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001fe4:	08002057 	.word	0x08002057
 8001fe8:	080020ad 	.word	0x080020ad
 8001fec:	0800208d 	.word	0x0800208d
 8001ff0:	080020ad 	.word	0x080020ad
 8001ff4:	08002031 	.word	0x08002031
 8001ff8:	080020ad 	.word	0x080020ad
 8001ffc:	080020ad 	.word	0x080020ad
 8002000:	080020ad 	.word	0x080020ad
 8002004:	080020ad 	.word	0x080020ad
 8002008:	080020ad 	.word	0x080020ad
 800200c:	080020ad 	.word	0x080020ad
 8002010:	080020ad 	.word	0x080020ad
 8002014:	0800207d 	.word	0x0800207d
 8002018:	080020ad 	.word	0x080020ad
 800201c:	080020ad 	.word	0x080020ad
 8002020:	080020ad 	.word	0x080020ad
 8002024:	080020ad 	.word	0x080020ad
 8002028:	080020ad 	.word	0x080020ad
 800202c:	0800209d 	.word	0x0800209d
      case 'l' :
        flags |= FLAGS_LONG;
 8002030:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002032:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002036:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002038:	683b      	ldr	r3, [r7, #0]
 800203a:	3301      	adds	r3, #1
 800203c:	603b      	str	r3, [r7, #0]
        if (*format == 'l') {
 800203e:	683b      	ldr	r3, [r7, #0]
 8002040:	781b      	ldrb	r3, [r3, #0]
 8002042:	2b6c      	cmp	r3, #108	; 0x6c
 8002044:	d134      	bne.n	80020b0 <_vsnprintf+0x294>
          flags |= FLAGS_LONG_LONG;
 8002046:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002048:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 800204c:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 800204e:	683b      	ldr	r3, [r7, #0]
 8002050:	3301      	adds	r3, #1
 8002052:	603b      	str	r3, [r7, #0]
        }
        break;
 8002054:	e02c      	b.n	80020b0 <_vsnprintf+0x294>
      case 'h' :
        flags |= FLAGS_SHORT;
 8002056:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002058:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800205c:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 800205e:	683b      	ldr	r3, [r7, #0]
 8002060:	3301      	adds	r3, #1
 8002062:	603b      	str	r3, [r7, #0]
        if (*format == 'h') {
 8002064:	683b      	ldr	r3, [r7, #0]
 8002066:	781b      	ldrb	r3, [r3, #0]
 8002068:	2b68      	cmp	r3, #104	; 0x68
 800206a:	d125      	bne.n	80020b8 <_vsnprintf+0x29c>
          flags |= FLAGS_CHAR;
 800206c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800206e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8002072:	647b      	str	r3, [r7, #68]	; 0x44
          format++;
 8002074:	683b      	ldr	r3, [r7, #0]
 8002076:	3301      	adds	r3, #1
 8002078:	603b      	str	r3, [r7, #0]
        }
        break;
 800207a:	e01d      	b.n	80020b8 <_vsnprintf+0x29c>
#if defined(PRINTF_SUPPORT_PTRDIFF_T)
      case 't' :
        flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 800207c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800207e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002082:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002084:	683b      	ldr	r3, [r7, #0]
 8002086:	3301      	adds	r3, #1
 8002088:	603b      	str	r3, [r7, #0]
        break;
 800208a:	e016      	b.n	80020ba <_vsnprintf+0x29e>
#endif
      case 'j' :
        flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 800208c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800208e:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002092:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 8002094:	683b      	ldr	r3, [r7, #0]
 8002096:	3301      	adds	r3, #1
 8002098:	603b      	str	r3, [r7, #0]
        break;
 800209a:	e00e      	b.n	80020ba <_vsnprintf+0x29e>
      case 'z' :
        flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
 800209c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800209e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80020a2:	647b      	str	r3, [r7, #68]	; 0x44
        format++;
 80020a4:	683b      	ldr	r3, [r7, #0]
 80020a6:	3301      	adds	r3, #1
 80020a8:	603b      	str	r3, [r7, #0]
        break;
 80020aa:	e006      	b.n	80020ba <_vsnprintf+0x29e>
      default :
        break;
 80020ac:	bf00      	nop
 80020ae:	e004      	b.n	80020ba <_vsnprintf+0x29e>
        break;
 80020b0:	bf00      	nop
 80020b2:	e002      	b.n	80020ba <_vsnprintf+0x29e>
 80020b4:	08001a05 	.word	0x08001a05
        break;
 80020b8:	bf00      	nop
    }

    // evaluate specifier
    switch (*format) {
 80020ba:	683b      	ldr	r3, [r7, #0]
 80020bc:	781b      	ldrb	r3, [r3, #0]
 80020be:	3b25      	subs	r3, #37	; 0x25
 80020c0:	2b53      	cmp	r3, #83	; 0x53
 80020c2:	f200 826a 	bhi.w	800259a <_vsnprintf+0x77e>
 80020c6:	a201      	add	r2, pc, #4	; (adr r2, 80020cc <_vsnprintf+0x2b0>)
 80020c8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80020cc:	08002583 	.word	0x08002583
 80020d0:	0800259b 	.word	0x0800259b
 80020d4:	0800259b 	.word	0x0800259b
 80020d8:	0800259b 	.word	0x0800259b
 80020dc:	0800259b 	.word	0x0800259b
 80020e0:	0800259b 	.word	0x0800259b
 80020e4:	0800259b 	.word	0x0800259b
 80020e8:	0800259b 	.word	0x0800259b
 80020ec:	0800259b 	.word	0x0800259b
 80020f0:	0800259b 	.word	0x0800259b
 80020f4:	0800259b 	.word	0x0800259b
 80020f8:	0800259b 	.word	0x0800259b
 80020fc:	0800259b 	.word	0x0800259b
 8002100:	0800259b 	.word	0x0800259b
 8002104:	0800259b 	.word	0x0800259b
 8002108:	0800259b 	.word	0x0800259b
 800210c:	0800259b 	.word	0x0800259b
 8002110:	0800259b 	.word	0x0800259b
 8002114:	0800259b 	.word	0x0800259b
 8002118:	0800259b 	.word	0x0800259b
 800211c:	0800259b 	.word	0x0800259b
 8002120:	0800259b 	.word	0x0800259b
 8002124:	0800259b 	.word	0x0800259b
 8002128:	0800259b 	.word	0x0800259b
 800212c:	0800259b 	.word	0x0800259b
 8002130:	0800259b 	.word	0x0800259b
 8002134:	0800259b 	.word	0x0800259b
 8002138:	0800259b 	.word	0x0800259b
 800213c:	0800259b 	.word	0x0800259b
 8002140:	0800259b 	.word	0x0800259b
 8002144:	0800259b 	.word	0x0800259b
 8002148:	0800259b 	.word	0x0800259b
 800214c:	0800259b 	.word	0x0800259b
 8002150:	0800259b 	.word	0x0800259b
 8002154:	0800259b 	.word	0x0800259b
 8002158:	0800259b 	.word	0x0800259b
 800215c:	0800259b 	.word	0x0800259b
 8002160:	0800259b 	.word	0x0800259b
 8002164:	0800259b 	.word	0x0800259b
 8002168:	0800259b 	.word	0x0800259b
 800216c:	0800259b 	.word	0x0800259b
 8002170:	0800259b 	.word	0x0800259b
 8002174:	0800259b 	.word	0x0800259b
 8002178:	0800259b 	.word	0x0800259b
 800217c:	0800259b 	.word	0x0800259b
 8002180:	0800259b 	.word	0x0800259b
 8002184:	0800259b 	.word	0x0800259b
 8002188:	0800259b 	.word	0x0800259b
 800218c:	0800259b 	.word	0x0800259b
 8002190:	0800259b 	.word	0x0800259b
 8002194:	0800259b 	.word	0x0800259b
 8002198:	0800221d 	.word	0x0800221d
 800219c:	0800259b 	.word	0x0800259b
 80021a0:	0800259b 	.word	0x0800259b
 80021a4:	0800259b 	.word	0x0800259b
 80021a8:	0800259b 	.word	0x0800259b
 80021ac:	0800259b 	.word	0x0800259b
 80021b0:	0800259b 	.word	0x0800259b
 80021b4:	0800259b 	.word	0x0800259b
 80021b8:	0800259b 	.word	0x0800259b
 80021bc:	0800259b 	.word	0x0800259b
 80021c0:	0800221d 	.word	0x0800221d
 80021c4:	08002409 	.word	0x08002409
 80021c8:	0800221d 	.word	0x0800221d
 80021cc:	0800259b 	.word	0x0800259b
 80021d0:	0800259b 	.word	0x0800259b
 80021d4:	0800259b 	.word	0x0800259b
 80021d8:	0800259b 	.word	0x0800259b
 80021dc:	0800221d 	.word	0x0800221d
 80021e0:	0800259b 	.word	0x0800259b
 80021e4:	0800259b 	.word	0x0800259b
 80021e8:	0800259b 	.word	0x0800259b
 80021ec:	0800259b 	.word	0x0800259b
 80021f0:	0800259b 	.word	0x0800259b
 80021f4:	0800221d 	.word	0x0800221d
 80021f8:	08002541 	.word	0x08002541
 80021fc:	0800259b 	.word	0x0800259b
 8002200:	0800259b 	.word	0x0800259b
 8002204:	0800247d 	.word	0x0800247d
 8002208:	0800259b 	.word	0x0800259b
 800220c:	0800221d 	.word	0x0800221d
 8002210:	0800259b 	.word	0x0800259b
 8002214:	0800259b 	.word	0x0800259b
 8002218:	0800221d 	.word	0x0800221d
      case 'X' :
      case 'o' :
      case 'b' : {
        // set the base
        unsigned int base;
        if (*format == 'x' || *format == 'X') {
 800221c:	683b      	ldr	r3, [r7, #0]
 800221e:	781b      	ldrb	r3, [r3, #0]
 8002220:	2b78      	cmp	r3, #120	; 0x78
 8002222:	d003      	beq.n	800222c <_vsnprintf+0x410>
 8002224:	683b      	ldr	r3, [r7, #0]
 8002226:	781b      	ldrb	r3, [r3, #0]
 8002228:	2b58      	cmp	r3, #88	; 0x58
 800222a:	d102      	bne.n	8002232 <_vsnprintf+0x416>
          base = 16U;
 800222c:	2310      	movs	r3, #16
 800222e:	633b      	str	r3, [r7, #48]	; 0x30
 8002230:	e013      	b.n	800225a <_vsnprintf+0x43e>
        }
        else if (*format == 'o') {
 8002232:	683b      	ldr	r3, [r7, #0]
 8002234:	781b      	ldrb	r3, [r3, #0]
 8002236:	2b6f      	cmp	r3, #111	; 0x6f
 8002238:	d102      	bne.n	8002240 <_vsnprintf+0x424>
          base =  8U;
 800223a:	2308      	movs	r3, #8
 800223c:	633b      	str	r3, [r7, #48]	; 0x30
 800223e:	e00c      	b.n	800225a <_vsnprintf+0x43e>
        }
        else if (*format == 'b') {
 8002240:	683b      	ldr	r3, [r7, #0]
 8002242:	781b      	ldrb	r3, [r3, #0]
 8002244:	2b62      	cmp	r3, #98	; 0x62
 8002246:	d102      	bne.n	800224e <_vsnprintf+0x432>
          base =  2U;
 8002248:	2302      	movs	r3, #2
 800224a:	633b      	str	r3, [r7, #48]	; 0x30
 800224c:	e005      	b.n	800225a <_vsnprintf+0x43e>
        }
        else {
          base = 10U;
 800224e:	230a      	movs	r3, #10
 8002250:	633b      	str	r3, [r7, #48]	; 0x30
          flags &= ~FLAGS_HASH;   // no hash for dec format
 8002252:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002254:	f023 0310 	bic.w	r3, r3, #16
 8002258:	647b      	str	r3, [r7, #68]	; 0x44
        }
        // uppercase
        if (*format == 'X') {
 800225a:	683b      	ldr	r3, [r7, #0]
 800225c:	781b      	ldrb	r3, [r3, #0]
 800225e:	2b58      	cmp	r3, #88	; 0x58
 8002260:	d103      	bne.n	800226a <_vsnprintf+0x44e>
          flags |= FLAGS_UPPERCASE;
 8002262:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002264:	f043 0320 	orr.w	r3, r3, #32
 8002268:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // no plus or space flag for u, x, X, o, b
        if ((*format != 'i') && (*format != 'd')) {
 800226a:	683b      	ldr	r3, [r7, #0]
 800226c:	781b      	ldrb	r3, [r3, #0]
 800226e:	2b69      	cmp	r3, #105	; 0x69
 8002270:	d007      	beq.n	8002282 <_vsnprintf+0x466>
 8002272:	683b      	ldr	r3, [r7, #0]
 8002274:	781b      	ldrb	r3, [r3, #0]
 8002276:	2b64      	cmp	r3, #100	; 0x64
 8002278:	d003      	beq.n	8002282 <_vsnprintf+0x466>
          flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
 800227a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800227c:	f023 030c 	bic.w	r3, r3, #12
 8002280:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // ignore '0' flag when precision is given
        if (flags & FLAGS_PRECISION) {
 8002282:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002284:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002288:	2b00      	cmp	r3, #0
 800228a:	d003      	beq.n	8002294 <_vsnprintf+0x478>
          flags &= ~FLAGS_ZEROPAD;
 800228c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800228e:	f023 0301 	bic.w	r3, r3, #1
 8002292:	647b      	str	r3, [r7, #68]	; 0x44
        }

        // convert the integer
        if ((*format == 'i') || (*format == 'd')) {
 8002294:	683b      	ldr	r3, [r7, #0]
 8002296:	781b      	ldrb	r3, [r3, #0]
 8002298:	2b69      	cmp	r3, #105	; 0x69
 800229a:	d003      	beq.n	80022a4 <_vsnprintf+0x488>
 800229c:	683b      	ldr	r3, [r7, #0]
 800229e:	781b      	ldrb	r3, [r3, #0]
 80022a0:	2b64      	cmp	r3, #100	; 0x64
 80022a2:	d15e      	bne.n	8002362 <_vsnprintf+0x546>
          // signed
          if (flags & FLAGS_LONG_LONG) {
 80022a4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80022a6:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80022aa:	2b00      	cmp	r3, #0
 80022ac:	f040 80a8 	bne.w	8002400 <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            const long long value = va_arg(va, long long);
            idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 80022b0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80022b2:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80022b6:	2b00      	cmp	r3, #0
 80022b8:	d01e      	beq.n	80022f8 <_vsnprintf+0x4dc>
            const long value = va_arg(va, long);
 80022ba:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80022bc:	1d1a      	adds	r2, r3, #4
 80022be:	65ba      	str	r2, [r7, #88]	; 0x58
 80022c0:	681b      	ldr	r3, [r3, #0]
 80022c2:	613b      	str	r3, [r7, #16]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 80022c4:	693b      	ldr	r3, [r7, #16]
 80022c6:	2b00      	cmp	r3, #0
 80022c8:	bfb8      	it	lt
 80022ca:	425b      	neglt	r3, r3
 80022cc:	4619      	mov	r1, r3
 80022ce:	693b      	ldr	r3, [r7, #16]
 80022d0:	0fdb      	lsrs	r3, r3, #31
 80022d2:	b2db      	uxtb	r3, r3
 80022d4:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80022d6:	9205      	str	r2, [sp, #20]
 80022d8:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80022da:	9204      	str	r2, [sp, #16]
 80022dc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 80022de:	9203      	str	r2, [sp, #12]
 80022e0:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80022e2:	9202      	str	r2, [sp, #8]
 80022e4:	9301      	str	r3, [sp, #4]
 80022e6:	9100      	str	r1, [sp, #0]
 80022e8:	687b      	ldr	r3, [r7, #4]
 80022ea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80022ec:	68b9      	ldr	r1, [r7, #8]
 80022ee:	68f8      	ldr	r0, [r7, #12]
 80022f0:	f7ff fd2d 	bl	8001d4e <_ntoa_long>
 80022f4:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 80022f6:	e083      	b.n	8002400 <_vsnprintf+0x5e4>
          }
          else {
            const int value = (flags & FLAGS_CHAR) ? (char)va_arg(va, int) : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int) : va_arg(va, int);
 80022f8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80022fa:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80022fe:	2b00      	cmp	r3, #0
 8002300:	d005      	beq.n	800230e <_vsnprintf+0x4f2>
 8002302:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002304:	1d1a      	adds	r2, r3, #4
 8002306:	65ba      	str	r2, [r7, #88]	; 0x58
 8002308:	681b      	ldr	r3, [r3, #0]
 800230a:	b2db      	uxtb	r3, r3
 800230c:	e00e      	b.n	800232c <_vsnprintf+0x510>
 800230e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002310:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002314:	2b00      	cmp	r3, #0
 8002316:	d005      	beq.n	8002324 <_vsnprintf+0x508>
 8002318:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800231a:	1d1a      	adds	r2, r3, #4
 800231c:	65ba      	str	r2, [r7, #88]	; 0x58
 800231e:	681b      	ldr	r3, [r3, #0]
 8002320:	b21b      	sxth	r3, r3
 8002322:	e003      	b.n	800232c <_vsnprintf+0x510>
 8002324:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002326:	1d1a      	adds	r2, r3, #4
 8002328:	65ba      	str	r2, [r7, #88]	; 0x58
 800232a:	681b      	ldr	r3, [r3, #0]
 800232c:	617b      	str	r3, [r7, #20]
            idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base, precision, width, flags);
 800232e:	697b      	ldr	r3, [r7, #20]
 8002330:	2b00      	cmp	r3, #0
 8002332:	bfb8      	it	lt
 8002334:	425b      	neglt	r3, r3
 8002336:	4619      	mov	r1, r3
 8002338:	697b      	ldr	r3, [r7, #20]
 800233a:	0fdb      	lsrs	r3, r3, #31
 800233c:	b2db      	uxtb	r3, r3
 800233e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002340:	9205      	str	r2, [sp, #20]
 8002342:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002344:	9204      	str	r2, [sp, #16]
 8002346:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002348:	9203      	str	r2, [sp, #12]
 800234a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 800234c:	9202      	str	r2, [sp, #8]
 800234e:	9301      	str	r3, [sp, #4]
 8002350:	9100      	str	r1, [sp, #0]
 8002352:	687b      	ldr	r3, [r7, #4]
 8002354:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002356:	68b9      	ldr	r1, [r7, #8]
 8002358:	68f8      	ldr	r0, [r7, #12]
 800235a:	f7ff fcf8 	bl	8001d4e <_ntoa_long>
 800235e:	6378      	str	r0, [r7, #52]	; 0x34
          if (flags & FLAGS_LONG_LONG) {
 8002360:	e04e      	b.n	8002400 <_vsnprintf+0x5e4>
          }
        }
        else {
          // unsigned
          if (flags & FLAGS_LONG_LONG) {
 8002362:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002364:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8002368:	2b00      	cmp	r3, #0
 800236a:	d149      	bne.n	8002400 <_vsnprintf+0x5e4>
#if defined(PRINTF_SUPPORT_LONG_LONG)
            idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision, width, flags);
#endif
          }
          else if (flags & FLAGS_LONG) {
 800236c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800236e:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002372:	2b00      	cmp	r3, #0
 8002374:	d016      	beq.n	80023a4 <_vsnprintf+0x588>
            idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
 8002376:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002378:	1d1a      	adds	r2, r3, #4
 800237a:	65ba      	str	r2, [r7, #88]	; 0x58
 800237c:	681b      	ldr	r3, [r3, #0]
 800237e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002380:	9205      	str	r2, [sp, #20]
 8002382:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002384:	9204      	str	r2, [sp, #16]
 8002386:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 8002388:	9203      	str	r2, [sp, #12]
 800238a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 800238c:	9202      	str	r2, [sp, #8]
 800238e:	2200      	movs	r2, #0
 8002390:	9201      	str	r2, [sp, #4]
 8002392:	9300      	str	r3, [sp, #0]
 8002394:	687b      	ldr	r3, [r7, #4]
 8002396:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002398:	68b9      	ldr	r1, [r7, #8]
 800239a:	68f8      	ldr	r0, [r7, #12]
 800239c:	f7ff fcd7 	bl	8001d4e <_ntoa_long>
 80023a0:	6378      	str	r0, [r7, #52]	; 0x34
 80023a2:	e02d      	b.n	8002400 <_vsnprintf+0x5e4>
          }
          else {
            const unsigned int value = (flags & FLAGS_CHAR) ? (unsigned char)va_arg(va, unsigned int) : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int) : va_arg(va, unsigned int);
 80023a4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80023a6:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80023aa:	2b00      	cmp	r3, #0
 80023ac:	d005      	beq.n	80023ba <_vsnprintf+0x59e>
 80023ae:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80023b0:	1d1a      	adds	r2, r3, #4
 80023b2:	65ba      	str	r2, [r7, #88]	; 0x58
 80023b4:	681b      	ldr	r3, [r3, #0]
 80023b6:	b2db      	uxtb	r3, r3
 80023b8:	e00e      	b.n	80023d8 <_vsnprintf+0x5bc>
 80023ba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80023bc:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80023c0:	2b00      	cmp	r3, #0
 80023c2:	d005      	beq.n	80023d0 <_vsnprintf+0x5b4>
 80023c4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80023c6:	1d1a      	adds	r2, r3, #4
 80023c8:	65ba      	str	r2, [r7, #88]	; 0x58
 80023ca:	681b      	ldr	r3, [r3, #0]
 80023cc:	b29b      	uxth	r3, r3
 80023ce:	e003      	b.n	80023d8 <_vsnprintf+0x5bc>
 80023d0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80023d2:	1d1a      	adds	r2, r3, #4
 80023d4:	65ba      	str	r2, [r7, #88]	; 0x58
 80023d6:	681b      	ldr	r3, [r3, #0]
 80023d8:	61bb      	str	r3, [r7, #24]
            idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
 80023da:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80023dc:	9305      	str	r3, [sp, #20]
 80023de:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80023e0:	9304      	str	r3, [sp, #16]
 80023e2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80023e4:	9303      	str	r3, [sp, #12]
 80023e6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 80023e8:	9302      	str	r3, [sp, #8]
 80023ea:	2300      	movs	r3, #0
 80023ec:	9301      	str	r3, [sp, #4]
 80023ee:	69bb      	ldr	r3, [r7, #24]
 80023f0:	9300      	str	r3, [sp, #0]
 80023f2:	687b      	ldr	r3, [r7, #4]
 80023f4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80023f6:	68b9      	ldr	r1, [r7, #8]
 80023f8:	68f8      	ldr	r0, [r7, #12]
 80023fa:	f7ff fca8 	bl	8001d4e <_ntoa_long>
 80023fe:	6378      	str	r0, [r7, #52]	; 0x34
          }
        }
        format++;
 8002400:	683b      	ldr	r3, [r7, #0]
 8002402:	3301      	adds	r3, #1
 8002404:	603b      	str	r3, [r7, #0]
        break;
 8002406:	e0d5      	b.n	80025b4 <_vsnprintf+0x798>
        format++;
        break;
#endif  // PRINTF_SUPPORT_EXPONENTIAL
#endif  // PRINTF_SUPPORT_FLOAT
      case 'c' : {
        unsigned int l = 1U;
 8002408:	2301      	movs	r3, #1
 800240a:	62fb      	str	r3, [r7, #44]	; 0x2c
        // pre padding
        if (!(flags & FLAGS_LEFT)) {
 800240c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800240e:	f003 0302 	and.w	r3, r3, #2
 8002412:	2b00      	cmp	r3, #0
 8002414:	d10e      	bne.n	8002434 <_vsnprintf+0x618>
          while (l++ < width) {
 8002416:	e007      	b.n	8002428 <_vsnprintf+0x60c>
            out(' ', buffer, idx++, maxlen);
 8002418:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800241a:	1c53      	adds	r3, r2, #1
 800241c:	637b      	str	r3, [r7, #52]	; 0x34
 800241e:	68fc      	ldr	r4, [r7, #12]
 8002420:	687b      	ldr	r3, [r7, #4]
 8002422:	68b9      	ldr	r1, [r7, #8]
 8002424:	2020      	movs	r0, #32
 8002426:	47a0      	blx	r4
          while (l++ < width) {
 8002428:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800242a:	1c5a      	adds	r2, r3, #1
 800242c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800242e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002430:	429a      	cmp	r2, r3
 8002432:	d8f1      	bhi.n	8002418 <_vsnprintf+0x5fc>
          }
        }
        // char output
        out((char)va_arg(va, int), buffer, idx++, maxlen);
 8002434:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002436:	1d1a      	adds	r2, r3, #4
 8002438:	65ba      	str	r2, [r7, #88]	; 0x58
 800243a:	681b      	ldr	r3, [r3, #0]
 800243c:	b2d8      	uxtb	r0, r3
 800243e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002440:	1c53      	adds	r3, r2, #1
 8002442:	637b      	str	r3, [r7, #52]	; 0x34
 8002444:	68fc      	ldr	r4, [r7, #12]
 8002446:	687b      	ldr	r3, [r7, #4]
 8002448:	68b9      	ldr	r1, [r7, #8]
 800244a:	47a0      	blx	r4
        // post padding
        if (flags & FLAGS_LEFT) {
 800244c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800244e:	f003 0302 	and.w	r3, r3, #2
 8002452:	2b00      	cmp	r3, #0
 8002454:	d00e      	beq.n	8002474 <_vsnprintf+0x658>
          while (l++ < width) {
 8002456:	e007      	b.n	8002468 <_vsnprintf+0x64c>
            out(' ', buffer, idx++, maxlen);
 8002458:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800245a:	1c53      	adds	r3, r2, #1
 800245c:	637b      	str	r3, [r7, #52]	; 0x34
 800245e:	68fc      	ldr	r4, [r7, #12]
 8002460:	687b      	ldr	r3, [r7, #4]
 8002462:	68b9      	ldr	r1, [r7, #8]
 8002464:	2020      	movs	r0, #32
 8002466:	47a0      	blx	r4
          while (l++ < width) {
 8002468:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800246a:	1c5a      	adds	r2, r3, #1
 800246c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800246e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002470:	429a      	cmp	r2, r3
 8002472:	d8f1      	bhi.n	8002458 <_vsnprintf+0x63c>
          }
        }
        format++;
 8002474:	683b      	ldr	r3, [r7, #0]
 8002476:	3301      	adds	r3, #1
 8002478:	603b      	str	r3, [r7, #0]
        break;
 800247a:	e09b      	b.n	80025b4 <_vsnprintf+0x798>
      }

      case 's' : {
        const char* p = va_arg(va, char*);
 800247c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800247e:	1d1a      	adds	r2, r3, #4
 8002480:	65ba      	str	r2, [r7, #88]	; 0x58
 8002482:	681b      	ldr	r3, [r3, #0]
 8002484:	62bb      	str	r3, [r7, #40]	; 0x28
        unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
 8002486:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002488:	2b00      	cmp	r3, #0
 800248a:	d001      	beq.n	8002490 <_vsnprintf+0x674>
 800248c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800248e:	e001      	b.n	8002494 <_vsnprintf+0x678>
 8002490:	f04f 33ff 	mov.w	r3, #4294967295
 8002494:	4619      	mov	r1, r3
 8002496:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8002498:	f7ff fad5 	bl	8001a46 <_strnlen_s>
 800249c:	6278      	str	r0, [r7, #36]	; 0x24
        // pre padding
        if (flags & FLAGS_PRECISION) {
 800249e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80024a0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80024a4:	2b00      	cmp	r3, #0
 80024a6:	d005      	beq.n	80024b4 <_vsnprintf+0x698>
          l = (l < precision ? l : precision);
 80024a8:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 80024aa:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80024ac:	4293      	cmp	r3, r2
 80024ae:	bf28      	it	cs
 80024b0:	4613      	movcs	r3, r2
 80024b2:	627b      	str	r3, [r7, #36]	; 0x24
        }
        if (!(flags & FLAGS_LEFT)) {
 80024b4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80024b6:	f003 0302 	and.w	r3, r3, #2
 80024ba:	2b00      	cmp	r3, #0
 80024bc:	d11a      	bne.n	80024f4 <_vsnprintf+0x6d8>
          while (l++ < width) {
 80024be:	e007      	b.n	80024d0 <_vsnprintf+0x6b4>
            out(' ', buffer, idx++, maxlen);
 80024c0:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80024c2:	1c53      	adds	r3, r2, #1
 80024c4:	637b      	str	r3, [r7, #52]	; 0x34
 80024c6:	68fc      	ldr	r4, [r7, #12]
 80024c8:	687b      	ldr	r3, [r7, #4]
 80024ca:	68b9      	ldr	r1, [r7, #8]
 80024cc:	2020      	movs	r0, #32
 80024ce:	47a0      	blx	r4
          while (l++ < width) {
 80024d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 80024d2:	1c5a      	adds	r2, r3, #1
 80024d4:	627a      	str	r2, [r7, #36]	; 0x24
 80024d6:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80024d8:	429a      	cmp	r2, r3
 80024da:	d8f1      	bhi.n	80024c0 <_vsnprintf+0x6a4>
          }
        }
        // string output
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 80024dc:	e00a      	b.n	80024f4 <_vsnprintf+0x6d8>
          out(*(p++), buffer, idx++, maxlen);
 80024de:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80024e0:	1c5a      	adds	r2, r3, #1
 80024e2:	62ba      	str	r2, [r7, #40]	; 0x28
 80024e4:	7818      	ldrb	r0, [r3, #0]
 80024e6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80024e8:	1c53      	adds	r3, r2, #1
 80024ea:	637b      	str	r3, [r7, #52]	; 0x34
 80024ec:	68fc      	ldr	r4, [r7, #12]
 80024ee:	687b      	ldr	r3, [r7, #4]
 80024f0:	68b9      	ldr	r1, [r7, #8]
 80024f2:	47a0      	blx	r4
        while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
 80024f4:	6abb      	ldr	r3, [r7, #40]	; 0x28
 80024f6:	781b      	ldrb	r3, [r3, #0]
 80024f8:	2b00      	cmp	r3, #0
 80024fa:	d009      	beq.n	8002510 <_vsnprintf+0x6f4>
 80024fc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80024fe:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002502:	2b00      	cmp	r3, #0
 8002504:	d0eb      	beq.n	80024de <_vsnprintf+0x6c2>
 8002506:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002508:	1e5a      	subs	r2, r3, #1
 800250a:	63fa      	str	r2, [r7, #60]	; 0x3c
 800250c:	2b00      	cmp	r3, #0
 800250e:	d1e6      	bne.n	80024de <_vsnprintf+0x6c2>
        }
        // post padding
        if (flags & FLAGS_LEFT) {
 8002510:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002512:	f003 0302 	and.w	r3, r3, #2
 8002516:	2b00      	cmp	r3, #0
 8002518:	d00e      	beq.n	8002538 <_vsnprintf+0x71c>
          while (l++ < width) {
 800251a:	e007      	b.n	800252c <_vsnprintf+0x710>
            out(' ', buffer, idx++, maxlen);
 800251c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800251e:	1c53      	adds	r3, r2, #1
 8002520:	637b      	str	r3, [r7, #52]	; 0x34
 8002522:	68fc      	ldr	r4, [r7, #12]
 8002524:	687b      	ldr	r3, [r7, #4]
 8002526:	68b9      	ldr	r1, [r7, #8]
 8002528:	2020      	movs	r0, #32
 800252a:	47a0      	blx	r4
          while (l++ < width) {
 800252c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800252e:	1c5a      	adds	r2, r3, #1
 8002530:	627a      	str	r2, [r7, #36]	; 0x24
 8002532:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002534:	429a      	cmp	r2, r3
 8002536:	d8f1      	bhi.n	800251c <_vsnprintf+0x700>
          }
        }
        format++;
 8002538:	683b      	ldr	r3, [r7, #0]
 800253a:	3301      	adds	r3, #1
 800253c:	603b      	str	r3, [r7, #0]
        break;
 800253e:	e039      	b.n	80025b4 <_vsnprintf+0x798>
      }

      case 'p' : {
        width = sizeof(void*) * 2U;
 8002540:	2308      	movs	r3, #8
 8002542:	643b      	str	r3, [r7, #64]	; 0x40
        flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
 8002544:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002546:	f043 0321 	orr.w	r3, r3, #33	; 0x21
 800254a:	647b      	str	r3, [r7, #68]	; 0x44
        if (is_ll) {
          idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width, flags);
        }
        else {
#endif
          idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U, precision, width, flags);
 800254c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800254e:	1d1a      	adds	r2, r3, #4
 8002550:	65ba      	str	r2, [r7, #88]	; 0x58
 8002552:	681b      	ldr	r3, [r3, #0]
 8002554:	461a      	mov	r2, r3
 8002556:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002558:	9305      	str	r3, [sp, #20]
 800255a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 800255c:	9304      	str	r3, [sp, #16]
 800255e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002560:	9303      	str	r3, [sp, #12]
 8002562:	2310      	movs	r3, #16
 8002564:	9302      	str	r3, [sp, #8]
 8002566:	2300      	movs	r3, #0
 8002568:	9301      	str	r3, [sp, #4]
 800256a:	9200      	str	r2, [sp, #0]
 800256c:	687b      	ldr	r3, [r7, #4]
 800256e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002570:	68b9      	ldr	r1, [r7, #8]
 8002572:	68f8      	ldr	r0, [r7, #12]
 8002574:	f7ff fbeb 	bl	8001d4e <_ntoa_long>
 8002578:	6378      	str	r0, [r7, #52]	; 0x34
#if defined(PRINTF_SUPPORT_LONG_LONG)
        }
#endif
        format++;
 800257a:	683b      	ldr	r3, [r7, #0]
 800257c:	3301      	adds	r3, #1
 800257e:	603b      	str	r3, [r7, #0]
        break;
 8002580:	e018      	b.n	80025b4 <_vsnprintf+0x798>
      }

      case '%' :
        out('%', buffer, idx++, maxlen);
 8002582:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002584:	1c53      	adds	r3, r2, #1
 8002586:	637b      	str	r3, [r7, #52]	; 0x34
 8002588:	68fc      	ldr	r4, [r7, #12]
 800258a:	687b      	ldr	r3, [r7, #4]
 800258c:	68b9      	ldr	r1, [r7, #8]
 800258e:	2025      	movs	r0, #37	; 0x25
 8002590:	47a0      	blx	r4
        format++;
 8002592:	683b      	ldr	r3, [r7, #0]
 8002594:	3301      	adds	r3, #1
 8002596:	603b      	str	r3, [r7, #0]
        break;
 8002598:	e00c      	b.n	80025b4 <_vsnprintf+0x798>

      default :
        out(*format, buffer, idx++, maxlen);
 800259a:	683b      	ldr	r3, [r7, #0]
 800259c:	7818      	ldrb	r0, [r3, #0]
 800259e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80025a0:	1c53      	adds	r3, r2, #1
 80025a2:	637b      	str	r3, [r7, #52]	; 0x34
 80025a4:	68fc      	ldr	r4, [r7, #12]
 80025a6:	687b      	ldr	r3, [r7, #4]
 80025a8:	68b9      	ldr	r1, [r7, #8]
 80025aa:	47a0      	blx	r4
        format++;
 80025ac:	683b      	ldr	r3, [r7, #0]
 80025ae:	3301      	adds	r3, #1
 80025b0:	603b      	str	r3, [r7, #0]
        break;
 80025b2:	bf00      	nop
  while (*format)
 80025b4:	683b      	ldr	r3, [r7, #0]
 80025b6:	781b      	ldrb	r3, [r3, #0]
 80025b8:	2b00      	cmp	r3, #0
 80025ba:	f47f ac3f 	bne.w	8001e3c <_vsnprintf+0x20>
    }
  }

  // termination
  out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
 80025be:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80025c0:	687b      	ldr	r3, [r7, #4]
 80025c2:	429a      	cmp	r2, r3
 80025c4:	d302      	bcc.n	80025cc <_vsnprintf+0x7b0>
 80025c6:	687b      	ldr	r3, [r7, #4]
 80025c8:	1e5a      	subs	r2, r3, #1
 80025ca:	e000      	b.n	80025ce <_vsnprintf+0x7b2>
 80025cc:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80025ce:	68fc      	ldr	r4, [r7, #12]
 80025d0:	687b      	ldr	r3, [r7, #4]
 80025d2:	68b9      	ldr	r1, [r7, #8]
 80025d4:	2000      	movs	r0, #0
 80025d6:	47a0      	blx	r4

  // return written chars without terminating \0
  return (int)idx;
 80025d8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
}
 80025da:	4618      	mov	r0, r3
 80025dc:	374c      	adds	r7, #76	; 0x4c
 80025de:	46bd      	mov	sp, r7
 80025e0:	bd90      	pop	{r4, r7, pc}
 80025e2:	bf00      	nop

080025e4 <printf_>:


///////////////////////////////////////////////////////////////////////////////

int printf_(const char* format, ...)
{
 80025e4:	b40f      	push	{r0, r1, r2, r3}
 80025e6:	b580      	push	{r7, lr}
 80025e8:	b086      	sub	sp, #24
 80025ea:	af02      	add	r7, sp, #8
  va_list va;
  va_start(va, format);
 80025ec:	f107 031c 	add.w	r3, r7, #28
 80025f0:	60bb      	str	r3, [r7, #8]
  char buffer[1];
  const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
 80025f2:	1d39      	adds	r1, r7, #4
 80025f4:	68bb      	ldr	r3, [r7, #8]
 80025f6:	9300      	str	r3, [sp, #0]
 80025f8:	69bb      	ldr	r3, [r7, #24]
 80025fa:	f04f 32ff 	mov.w	r2, #4294967295
 80025fe:	4806      	ldr	r0, [pc, #24]	; (8002618 <printf_+0x34>)
 8002600:	f7ff fc0c 	bl	8001e1c <_vsnprintf>
 8002604:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8002606:	68fb      	ldr	r3, [r7, #12]
}
 8002608:	4618      	mov	r0, r3
 800260a:	3710      	adds	r7, #16
 800260c:	46bd      	mov	sp, r7
 800260e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002612:	b004      	add	sp, #16
 8002614:	4770      	bx	lr
 8002616:	bf00      	nop
 8002618:	08001a21 	.word	0x08001a21

0800261c <sprintf_>:


int sprintf_(char* buffer, const char* format, ...)
{
 800261c:	b40e      	push	{r1, r2, r3}
 800261e:	b580      	push	{r7, lr}
 8002620:	b087      	sub	sp, #28
 8002622:	af02      	add	r7, sp, #8
 8002624:	6078      	str	r0, [r7, #4]
  va_list va;
  va_start(va, format);
 8002626:	f107 0320 	add.w	r3, r7, #32
 800262a:	60bb      	str	r3, [r7, #8]
  const int ret = _vsnprintf(_out_buffer, buffer, (size_t)-1, format, va);
 800262c:	68bb      	ldr	r3, [r7, #8]
 800262e:	9300      	str	r3, [sp, #0]
 8002630:	69fb      	ldr	r3, [r7, #28]
 8002632:	f04f 32ff 	mov.w	r2, #4294967295
 8002636:	6879      	ldr	r1, [r7, #4]
 8002638:	4805      	ldr	r0, [pc, #20]	; (8002650 <sprintf_+0x34>)
 800263a:	f7ff fbef 	bl	8001e1c <_vsnprintf>
 800263e:	60f8      	str	r0, [r7, #12]
  va_end(va);
  return ret;
 8002640:	68fb      	ldr	r3, [r7, #12]
}
 8002642:	4618      	mov	r0, r3
 8002644:	3714      	adds	r7, #20
 8002646:	46bd      	mov	sp, r7
 8002648:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800264c:	b003      	add	sp, #12
 800264e:	4770      	bx	lr
 8002650:	080019d7 	.word	0x080019d7

08002654 <fault_test_by_div0>:
p = (int *) 0x03;
value = *p;
printf("addr:0x%x value:0x%x\r\n", (int) p, value);
}

void fault_test_by_div0(void) {
 8002654:	b580      	push	{r7, lr}
 8002656:	b084      	sub	sp, #16
 8002658:	af00      	add	r7, sp, #0
volatile int * SCB_CCR = (volatile int *) 0xE000ED14; // SCB->CCR
 800265a:	4b0c      	ldr	r3, [pc, #48]	; (800268c <fault_test_by_div0+0x38>)
 800265c:	60fb      	str	r3, [r7, #12]
int x, y, z;

*SCB_CCR |= (1 << 4); /* bit4: DIV_0_TRP. */
 800265e:	68fb      	ldr	r3, [r7, #12]
 8002660:	681b      	ldr	r3, [r3, #0]
 8002662:	f043 0210 	orr.w	r2, r3, #16
 8002666:	68fb      	ldr	r3, [r7, #12]
 8002668:	601a      	str	r2, [r3, #0]

x = 10;
 800266a:	230a      	movs	r3, #10
 800266c:	60bb      	str	r3, [r7, #8]
y = 0;
 800266e:	2300      	movs	r3, #0
 8002670:	607b      	str	r3, [r7, #4]
z = x / y;
 8002672:	68ba      	ldr	r2, [r7, #8]
 8002674:	687b      	ldr	r3, [r7, #4]
 8002676:	fb92 f3f3 	sdiv	r3, r2, r3
 800267a:	603b      	str	r3, [r7, #0]
printf("z:%d\n", z);
 800267c:	6839      	ldr	r1, [r7, #0]
 800267e:	4804      	ldr	r0, [pc, #16]	; (8002690 <fault_test_by_div0+0x3c>)
 8002680:	f7ff ffb0 	bl	80025e4 <printf_>
}
 8002684:	bf00      	nop
 8002686:	3710      	adds	r7, #16
 8002688:	46bd      	mov	sp, r7
 800268a:	bd80      	pop	{r7, pc}
 800268c:	e000ed14 	.word	0xe000ed14
 8002690:	08003a54 	.word	0x08003a54

08002694 <dump_stack>:
extern const uint32_t _eheap;



void dump_stack(uint32_t stack_start_addr, size_t stack_size, uint32_t *stack_pointer)
{
 8002694:	b580      	push	{r7, lr}
 8002696:	b084      	sub	sp, #16
 8002698:	af00      	add	r7, sp, #0
 800269a:	60f8      	str	r0, [r7, #12]
 800269c:	60b9      	str	r1, [r7, #8]
 800269e:	607a      	str	r2, [r7, #4]
    if ((uint32_t) stack_pointer < stack_start_addr) {
 80026a0:	687b      	ldr	r3, [r7, #4]
 80026a2:	68fa      	ldr	r2, [r7, #12]
 80026a4:	429a      	cmp	r2, r3
 80026a6:	d902      	bls.n	80026ae <dump_stack+0x1a>
        stack_pointer = (uint32_t *) stack_start_addr;
 80026a8:	68fb      	ldr	r3, [r7, #12]
 80026aa:	607b      	str	r3, [r7, #4]
 80026ac:	e009      	b.n	80026c2 <dump_stack+0x2e>
    } else if ((uint32_t) stack_pointer > stack_start_addr + stack_size) {
 80026ae:	68fa      	ldr	r2, [r7, #12]
 80026b0:	68bb      	ldr	r3, [r7, #8]
 80026b2:	441a      	add	r2, r3
 80026b4:	687b      	ldr	r3, [r7, #4]
 80026b6:	429a      	cmp	r2, r3
 80026b8:	d203      	bcs.n	80026c2 <dump_stack+0x2e>
        stack_pointer = (uint32_t *) (stack_start_addr + stack_size);
 80026ba:	68fa      	ldr	r2, [r7, #12]
 80026bc:	68bb      	ldr	r3, [r7, #8]
 80026be:	4413      	add	r3, r2
 80026c0:	607b      	str	r3, [r7, #4]
    }
    printf("[%s] ====================================\n", __func__);
 80026c2:	490e      	ldr	r1, [pc, #56]	; (80026fc <dump_stack+0x68>)
 80026c4:	480e      	ldr	r0, [pc, #56]	; (8002700 <dump_stack+0x6c>)
 80026c6:	f7ff ff8d 	bl	80025e4 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 80026ca:	e009      	b.n	80026e0 <dump_stack+0x4c>
        printf("  addr: %08lx    data: %08lx\n", (uint32_t)stack_pointer, *stack_pointer);
 80026cc:	6879      	ldr	r1, [r7, #4]
 80026ce:	687b      	ldr	r3, [r7, #4]
 80026d0:	681b      	ldr	r3, [r3, #0]
 80026d2:	461a      	mov	r2, r3
 80026d4:	480b      	ldr	r0, [pc, #44]	; (8002704 <dump_stack+0x70>)
 80026d6:	f7ff ff85 	bl	80025e4 <printf_>
    for (; (uint32_t) stack_pointer < stack_start_addr + stack_size; stack_pointer++) {
 80026da:	687b      	ldr	r3, [r7, #4]
 80026dc:	3304      	adds	r3, #4
 80026de:	607b      	str	r3, [r7, #4]
 80026e0:	68fa      	ldr	r2, [r7, #12]
 80026e2:	68bb      	ldr	r3, [r7, #8]
 80026e4:	441a      	add	r2, r3
 80026e6:	687b      	ldr	r3, [r7, #4]
 80026e8:	429a      	cmp	r2, r3
 80026ea:	d8ef      	bhi.n	80026cc <dump_stack+0x38>
    }
    printf("[%s] ====================================\n", __func__);
 80026ec:	4903      	ldr	r1, [pc, #12]	; (80026fc <dump_stack+0x68>)
 80026ee:	4804      	ldr	r0, [pc, #16]	; (8002700 <dump_stack+0x6c>)
 80026f0:	f7ff ff78 	bl	80025e4 <printf_>
}
 80026f4:	bf00      	nop
 80026f6:	3710      	adds	r7, #16
 80026f8:	46bd      	mov	sp, r7
 80026fa:	bd80      	pop	{r7, pc}
 80026fc:	080044dc 	.word	0x080044dc
 8002700:	08003a5c 	.word	0x08003a5c
 8002704:	08003a88 	.word	0x08003a88

08002708 <disassembly_ins_is_bl_blx>:
#define CMB_ELF_FILE_EXTENSION_NAME          ".elf"
static char call_stack_info[CMB_CALL_STACK_MAX_DEPTH * (8 + 1)] = { 0 };
#define cmb_println(...)               printf(__VA_ARGS__);printf("\r\n")
static bool on_fault = false;
static bool stack_is_overflow = false;
static bool disassembly_ins_is_bl_blx(uint32_t addr) {
 8002708:	b480      	push	{r7}
 800270a:	b085      	sub	sp, #20
 800270c:	af00      	add	r7, sp, #0
 800270e:	6078      	str	r0, [r7, #4]
    uint16_t ins1 = *((uint16_t *)addr);
 8002710:	687b      	ldr	r3, [r7, #4]
 8002712:	881b      	ldrh	r3, [r3, #0]
 8002714:	81fb      	strh	r3, [r7, #14]
    uint16_t ins2 = *((uint16_t *)(addr + 2));
 8002716:	687b      	ldr	r3, [r7, #4]
 8002718:	3302      	adds	r3, #2
 800271a:	881b      	ldrh	r3, [r3, #0]
 800271c:	81bb      	strh	r3, [r7, #12]
#define BL_INS_HIGH         0xF800
#define BL_INS_LOW          0xF000
#define BLX_INX_MASK        0xFF00
#define BLX_INX             0x4700

    if ((ins2 & BL_INS_MASK) == BL_INS_HIGH && (ins1 & BL_INS_MASK) == BL_INS_LOW) {
 800271e:	89bb      	ldrh	r3, [r7, #12]
 8002720:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002724:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
 8002728:	d107      	bne.n	800273a <disassembly_ins_is_bl_blx+0x32>
 800272a:	89fb      	ldrh	r3, [r7, #14]
 800272c:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002730:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
 8002734:	d101      	bne.n	800273a <disassembly_ins_is_bl_blx+0x32>
        return true;
 8002736:	2301      	movs	r3, #1
 8002738:	e008      	b.n	800274c <disassembly_ins_is_bl_blx+0x44>
    } else if ((ins2 & BLX_INX_MASK) == BLX_INX) {
 800273a:	89bb      	ldrh	r3, [r7, #12]
 800273c:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8002740:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8002744:	d101      	bne.n	800274a <disassembly_ins_is_bl_blx+0x42>
        return true;
 8002746:	2301      	movs	r3, #1
 8002748:	e000      	b.n	800274c <disassembly_ins_is_bl_blx+0x44>
    } else {
        return false;
 800274a:	2300      	movs	r3, #0
    }
}
 800274c:	4618      	mov	r0, r3
 800274e:	3714      	adds	r7, #20
 8002750:	46bd      	mov	sp, r7
 8002752:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002756:	4770      	bx	lr

08002758 <backtrace_call_stack>:
 * @param size buffer size
 * @param sp stack pointer
 *
 * @return depth
 */
size_t backtrace_call_stack(uint32_t *buffer, size_t size, uint32_t sp) {
 8002758:	b580      	push	{r7, lr}
 800275a:	b08a      	sub	sp, #40	; 0x28
 800275c:	af02      	add	r7, sp, #8
 800275e:	60f8      	str	r0, [r7, #12]
 8002760:	60b9      	str	r1, [r7, #8]
 8002762:	607a      	str	r2, [r7, #4]
    uint32_t pc;
    uint32_t lr;
    size_t depth = 0;
 8002764:	2300      	movs	r3, #0
 8002766:	61fb      	str	r3, [r7, #28]
    bool regs_saved_lr_is_valid = false;
 8002768:	2300      	movs	r3, #0
 800276a:	76fb      	strb	r3, [r7, #27]
满足下面几个条件才会被认为是有效的LR值
1. 堆栈的值LR'在代码段之内
2. LR'的值lsb为1
3. LR' - 4处的指令是bl或者blx指令
*/
printf("[%s] sp=0x%x\r\n", __func__, sp);
 800276c:	687a      	ldr	r2, [r7, #4]
 800276e:	4935      	ldr	r1, [pc, #212]	; (8002844 <backtrace_call_stack+0xec>)
 8002770:	4835      	ldr	r0, [pc, #212]	; (8002848 <backtrace_call_stack+0xf0>)
 8002772:	f7ff ff37 	bl	80025e4 <printf_>
//->查看LR对应地址前一条指令是否是跳转指令
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8002776:	e058      	b.n	800282a <backtrace_call_stack+0xd2>
uint32_t i = 0;
 8002778:	2300      	movs	r3, #0
 800277a:	617b      	str	r3, [r7, #20]
    当跳转到backtrace_level_2，9d5会放入LR,LR 会被push到堆栈
    当backtrace的时候，堆栈里找到9d5，9d5上一条指令为跳转前的PC的值，即9d5-4=9d1,
    最低位为1表示thumb模式，9d1表示地址9d0
    */
//        sp += 4* i;
    if (sp == 0x8080541) {
 800277c:	687b      	ldr	r3, [r7, #4]
 800277e:	4a33      	ldr	r2, [pc, #204]	; (800284c <backtrace_call_stack+0xf4>)
 8002780:	4293      	cmp	r3, r2
 8002782:	d103      	bne.n	800278c <backtrace_call_stack+0x34>
        printf("sp=0x%x\n", sp);
 8002784:	6879      	ldr	r1, [r7, #4]
 8002786:	4832      	ldr	r0, [pc, #200]	; (8002850 <backtrace_call_stack+0xf8>)
 8002788:	f7ff ff2c 	bl	80025e4 <printf_>
    }
    lr = *((uint32_t *) sp);
 800278c:	687b      	ldr	r3, [r7, #4]
 800278e:	681b      	ldr	r3, [r3, #0]
 8002790:	613b      	str	r3, [r7, #16]
    /* the Cortex-M using thumb instruction, so the pc must be an odd number */
    // printf("  1 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), pc);
    if (lr % 2 == 0) {
 8002792:	693b      	ldr	r3, [r7, #16]
 8002794:	f003 0301 	and.w	r3, r3, #1
 8002798:	2b00      	cmp	r3, #0
 800279a:	d040      	beq.n	800281e <backtrace_call_stack+0xc6>
        continue;
    }
    // printf("  valid PC=0x%08x\n", pc);

    /* fix the PC address in thumb mode */
    lr -= 1;
 800279c:	693b      	ldr	r3, [r7, #16]
 800279e:	3b01      	subs	r3, #1
 80027a0:	613b      	str	r3, [r7, #16]
    //printf("  2 sp=0x%08x *((uint32_t *) sp)=0x%08x valid PC=0x%08x\n", sp, *((uint32_t *) sp), lr);
    if ((lr >= code_start_addr) && (lr <= code_start_addr + code_size)
 80027a2:	4b2c      	ldr	r3, [pc, #176]	; (8002854 <backtrace_call_stack+0xfc>)
 80027a4:	681b      	ldr	r3, [r3, #0]
 80027a6:	693a      	ldr	r2, [r7, #16]
 80027a8:	429a      	cmp	r2, r3
 80027aa:	d33b      	bcc.n	8002824 <backtrace_call_stack+0xcc>
 80027ac:	4b29      	ldr	r3, [pc, #164]	; (8002854 <backtrace_call_stack+0xfc>)
 80027ae:	681a      	ldr	r2, [r3, #0]
 80027b0:	4b29      	ldr	r3, [pc, #164]	; (8002858 <backtrace_call_stack+0x100>)
 80027b2:	681b      	ldr	r3, [r3, #0]
 80027b4:	4413      	add	r3, r2
 80027b6:	693a      	ldr	r2, [r7, #16]
 80027b8:	429a      	cmp	r2, r3
 80027ba:	d833      	bhi.n	8002824 <backtrace_call_stack+0xcc>
    /* check the the instruction before lr address is 'BL' or 'BLX' */
    && disassembly_ins_is_bl_blx(lr - sizeof(size_t)) && (depth < size)) {
 80027bc:	693b      	ldr	r3, [r7, #16]
 80027be:	3b04      	subs	r3, #4
 80027c0:	4618      	mov	r0, r3
 80027c2:	f7ff ffa1 	bl	8002708 <disassembly_ins_is_bl_blx>
 80027c6:	4603      	mov	r3, r0
 80027c8:	2b00      	cmp	r3, #0
 80027ca:	d02b      	beq.n	8002824 <backtrace_call_stack+0xcc>
 80027cc:	69fa      	ldr	r2, [r7, #28]
 80027ce:	68bb      	ldr	r3, [r7, #8]
 80027d0:	429a      	cmp	r2, r3
 80027d2:	d227      	bcs.n	8002824 <backtrace_call_stack+0xcc>
        /* the second depth function may be already saved, so need ignore repeat */
        if ((depth == 2) && regs_saved_lr_is_valid && (lr == buffer[1])) {
 80027d4:	69fb      	ldr	r3, [r7, #28]
 80027d6:	2b02      	cmp	r3, #2
 80027d8:	d108      	bne.n	80027ec <backtrace_call_stack+0x94>
 80027da:	7efb      	ldrb	r3, [r7, #27]
 80027dc:	2b00      	cmp	r3, #0
 80027de:	d005      	beq.n	80027ec <backtrace_call_stack+0x94>
 80027e0:	68fb      	ldr	r3, [r7, #12]
 80027e2:	3304      	adds	r3, #4
 80027e4:	681b      	ldr	r3, [r3, #0]
 80027e6:	693a      	ldr	r2, [r7, #16]
 80027e8:	429a      	cmp	r2, r3
 80027ea:	d01a      	beq.n	8002822 <backtrace_call_stack+0xca>
            continue;
        }
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 80027ec:	693b      	ldr	r3, [r7, #16]
 80027ee:	3b04      	subs	r3, #4
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 80027f0:	681a      	ldr	r2, [r3, #0]
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 80027f2:	693b      	ldr	r3, [r7, #16]
 80027f4:	3b04      	subs	r3, #4
 80027f6:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 80027f8:	4619      	mov	r1, r3
        lr, *(uint32_t*)(lr - sizeof(size_t)),*((uint16_t *)(lr - sizeof(size_t))),*((uint16_t *)((lr - sizeof(size_t)) + 2)));
 80027fa:	693b      	ldr	r3, [r7, #16]
 80027fc:	3b02      	subs	r3, #2
 80027fe:	881b      	ldrh	r3, [r3, #0]
        printf("        real PC=0x%08x bl or blx=0x%08x ins1=0x%04x ins2=0x%04x\n", \
 8002800:	9300      	str	r3, [sp, #0]
 8002802:	460b      	mov	r3, r1
 8002804:	6939      	ldr	r1, [r7, #16]
 8002806:	4815      	ldr	r0, [pc, #84]	; (800285c <backtrace_call_stack+0x104>)
 8002808:	f7ff feec 	bl	80025e4 <printf_>
                buffer[depth++] = lr;
 800280c:	69fb      	ldr	r3, [r7, #28]
 800280e:	1c5a      	adds	r2, r3, #1
 8002810:	61fa      	str	r2, [r7, #28]
 8002812:	009b      	lsls	r3, r3, #2
 8002814:	68fa      	ldr	r2, [r7, #12]
 8002816:	4413      	add	r3, r2
 8002818:	693a      	ldr	r2, [r7, #16]
 800281a:	601a      	str	r2, [r3, #0]
 800281c:	e002      	b.n	8002824 <backtrace_call_stack+0xcc>
        continue;
 800281e:	bf00      	nop
 8002820:	e000      	b.n	8002824 <backtrace_call_stack+0xcc>
            continue;
 8002822:	bf00      	nop
for (; sp < stack_start_addr + stack_size; sp += sizeof(size_t)) {
 8002824:	687b      	ldr	r3, [r7, #4]
 8002826:	3304      	adds	r3, #4
 8002828:	607b      	str	r3, [r7, #4]
 800282a:	4b0d      	ldr	r3, [pc, #52]	; (8002860 <backtrace_call_stack+0x108>)
 800282c:	681a      	ldr	r2, [r3, #0]
 800282e:	4b0d      	ldr	r3, [pc, #52]	; (8002864 <backtrace_call_stack+0x10c>)
 8002830:	681b      	ldr	r3, [r3, #0]
 8002832:	4413      	add	r3, r2
 8002834:	687a      	ldr	r2, [r7, #4]
 8002836:	429a      	cmp	r2, r3
 8002838:	d39e      	bcc.n	8002778 <backtrace_call_stack+0x20>
    }
}

return depth;
 800283a:	69fb      	ldr	r3, [r7, #28]
}
 800283c:	4618      	mov	r0, r3
 800283e:	3720      	adds	r7, #32
 8002840:	46bd      	mov	sp, r7
 8002842:	bd80      	pop	{r7, pc}
 8002844:	080044e8 	.word	0x080044e8
 8002848:	08004304 	.word	0x08004304
 800284c:	08080541 	.word	0x08080541
 8002850:	08004314 	.word	0x08004314
 8002854:	2000061c 	.word	0x2000061c
 8002858:	20000624 	.word	0x20000624
 800285c:	08004320 	.word	0x08004320
 8002860:	20000628 	.word	0x20000628
 8002864:	20000630 	.word	0x20000630

08002868 <print_call_stack>:

void print_call_stack(uint32_t sp) {
 8002868:	b580      	push	{r7, lr}
 800286a:	b096      	sub	sp, #88	; 0x58
 800286c:	af02      	add	r7, sp, #8
 800286e:	6078      	str	r0, [r7, #4]
    size_t i, cur_depth = 0;
 8002870:	2300      	movs	r3, #0
 8002872:	64bb      	str	r3, [r7, #72]	; 0x48
    uint32_t call_stack_buf[CMB_CALL_STACK_MAX_DEPTH] = {0};
 8002874:	f107 0308 	add.w	r3, r7, #8
 8002878:	2240      	movs	r2, #64	; 0x40
 800287a:	2100      	movs	r1, #0
 800287c:	4618      	mov	r0, r3
 800287e:	f000 fff5 	bl	800386c <memset>
    printf("[%s] ====================================\n", __func__);
 8002882:	4928      	ldr	r1, [pc, #160]	; (8002924 <print_call_stack+0xbc>)
 8002884:	4828      	ldr	r0, [pc, #160]	; (8002928 <print_call_stack+0xc0>)
 8002886:	f7ff fead 	bl	80025e4 <printf_>

    cur_depth = backtrace_call_stack(call_stack_buf, CMB_CALL_STACK_MAX_DEPTH, sp);
 800288a:	f107 0308 	add.w	r3, r7, #8
 800288e:	687a      	ldr	r2, [r7, #4]
 8002890:	2110      	movs	r1, #16
 8002892:	4618      	mov	r0, r3
 8002894:	f7ff ff60 	bl	8002758 <backtrace_call_stack>
 8002898:	64b8      	str	r0, [r7, #72]	; 0x48
    printf("[%s] ====================================\n", __func__);
 800289a:	4922      	ldr	r1, [pc, #136]	; (8002924 <print_call_stack+0xbc>)
 800289c:	4822      	ldr	r0, [pc, #136]	; (8002928 <print_call_stack+0xc0>)
 800289e:	f7ff fea1 	bl	80025e4 <printf_>

    for (i = 0; i < cur_depth; i++) {
 80028a2:	2300      	movs	r3, #0
 80028a4:	64fb      	str	r3, [r7, #76]	; 0x4c
 80028a6:	e01b      	b.n	80028e0 <print_call_stack+0x78>
        sprintf(call_stack_info + i * (8 + 1), "%08lx", call_stack_buf[i]);
 80028a8:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80028aa:	4613      	mov	r3, r2
 80028ac:	00db      	lsls	r3, r3, #3
 80028ae:	4413      	add	r3, r2
 80028b0:	4a1e      	ldr	r2, [pc, #120]	; (800292c <print_call_stack+0xc4>)
 80028b2:	1898      	adds	r0, r3, r2
 80028b4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80028b6:	009b      	lsls	r3, r3, #2
 80028b8:	f107 0250 	add.w	r2, r7, #80	; 0x50
 80028bc:	4413      	add	r3, r2
 80028be:	f853 3c48 	ldr.w	r3, [r3, #-72]
 80028c2:	461a      	mov	r2, r3
 80028c4:	491a      	ldr	r1, [pc, #104]	; (8002930 <print_call_stack+0xc8>)
 80028c6:	f7ff fea9 	bl	800261c <sprintf_>
        call_stack_info[i * (8 + 1) + 8] = ' ';
 80028ca:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80028cc:	4613      	mov	r3, r2
 80028ce:	00db      	lsls	r3, r3, #3
 80028d0:	4413      	add	r3, r2
 80028d2:	3308      	adds	r3, #8
 80028d4:	4a15      	ldr	r2, [pc, #84]	; (800292c <print_call_stack+0xc4>)
 80028d6:	2120      	movs	r1, #32
 80028d8:	54d1      	strb	r1, [r2, r3]
    for (i = 0; i < cur_depth; i++) {
 80028da:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80028dc:	3301      	adds	r3, #1
 80028de:	64fb      	str	r3, [r7, #76]	; 0x4c
 80028e0:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 80028e2:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80028e4:	429a      	cmp	r2, r3
 80028e6:	d3df      	bcc.n	80028a8 <print_call_stack+0x40>
    }

    if (cur_depth) {
 80028e8:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 80028ea:	2b00      	cmp	r3, #0
 80028ec:	d00f      	beq.n	800290e <print_call_stack+0xa6>
        cmb_println(print_info[PRINT_CALL_STACK_INFO], "./build/test", CMB_ELF_FILE_EXTENSION_NAME, cur_depth * (8 + 1),
 80028ee:	4811      	ldr	r0, [pc, #68]	; (8002934 <print_call_stack+0xcc>)
 80028f0:	6cba      	ldr	r2, [r7, #72]	; 0x48
 80028f2:	4613      	mov	r3, r2
 80028f4:	00db      	lsls	r3, r3, #3
 80028f6:	441a      	add	r2, r3
 80028f8:	4b0c      	ldr	r3, [pc, #48]	; (800292c <print_call_stack+0xc4>)
 80028fa:	9300      	str	r3, [sp, #0]
 80028fc:	4613      	mov	r3, r2
 80028fe:	4a0e      	ldr	r2, [pc, #56]	; (8002938 <print_call_stack+0xd0>)
 8002900:	490e      	ldr	r1, [pc, #56]	; (800293c <print_call_stack+0xd4>)
 8002902:	f7ff fe6f 	bl	80025e4 <printf_>
 8002906:	480e      	ldr	r0, [pc, #56]	; (8002940 <print_call_stack+0xd8>)
 8002908:	f7ff fe6c 	bl	80025e4 <printf_>
                    call_stack_info);
    } else {
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
    }
}
 800290c:	e006      	b.n	800291c <print_call_stack+0xb4>
        cmb_println(print_info[PRINT_CALL_STACK_ERR]);
 800290e:	4b0d      	ldr	r3, [pc, #52]	; (8002944 <print_call_stack+0xdc>)
 8002910:	4618      	mov	r0, r3
 8002912:	f7ff fe67 	bl	80025e4 <printf_>
 8002916:	480a      	ldr	r0, [pc, #40]	; (8002940 <print_call_stack+0xd8>)
 8002918:	f7ff fe64 	bl	80025e4 <printf_>
}
 800291c:	bf00      	nop
 800291e:	3750      	adds	r7, #80	; 0x50
 8002920:	46bd      	mov	sp, r7
 8002922:	bd80      	pop	{r7, pc}
 8002924:	08004500 	.word	0x08004500
 8002928:	08003a5c 	.word	0x08003a5c
 800292c:	20000640 	.word	0x20000640
 8002930:	08004364 	.word	0x08004364
 8002934:	08003c38 	.word	0x08003c38
 8002938:	0800436c 	.word	0x0800436c
 800293c:	08004374 	.word	0x08004374
 8002940:	08004384 	.word	0x08004384
 8002944:	08003c78 	.word	0x08003c78

08002948 <backtrace_level_3>:
void BackTraceSub(unsigned long sp);
void backtrace_level_3(void)
{
 8002948:	b598      	push	{r3, r4, r7, lr}
 800294a:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 800294c:	490d      	ldr	r1, [pc, #52]	; (8002984 <backtrace_level_3+0x3c>)
 800294e:	480e      	ldr	r0, [pc, #56]	; (8002988 <backtrace_level_3+0x40>)
 8002950:	f7ff fe48 	bl	80025e4 <printf_>
    dump_stack(stack_start_addr, stack_size, (uint32_t*)cmb_get_sp());
 8002954:	4b0d      	ldr	r3, [pc, #52]	; (800298c <backtrace_level_3+0x44>)
 8002956:	6818      	ldr	r0, [r3, #0]
 8002958:	4b0d      	ldr	r3, [pc, #52]	; (8002990 <backtrace_level_3+0x48>)
 800295a:	681b      	ldr	r3, [r3, #0]
    __asm volatile ("MRS %0, psp\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_sp(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 800295c:	466a      	mov	r2, sp
 800295e:	4614      	mov	r4, r2
    return(result);
 8002960:	4622      	mov	r2, r4
 8002962:	4619      	mov	r1, r3
 8002964:	f7ff fe96 	bl	8002694 <dump_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8002968:	466b      	mov	r3, sp
 800296a:	461c      	mov	r4, r3
    return(result);
 800296c:	4623      	mov	r3, r4

    print_call_stack(cmb_get_sp());
 800296e:	4618      	mov	r0, r3
 8002970:	f7ff ff7a 	bl	8002868 <print_call_stack>
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8002974:	466b      	mov	r3, sp
 8002976:	461c      	mov	r4, r3
    return(result);
 8002978:	4623      	mov	r3, r4
    BackTraceSub(cmb_get_sp());
 800297a:	4618      	mov	r0, r3
 800297c:	f000 f99a 	bl	8002cb4 <BackTraceSub>
}
 8002980:	bf00      	nop
 8002982:	bd98      	pop	{r3, r4, r7, pc}
 8002984:	08004514 	.word	0x08004514
 8002988:	08004388 	.word	0x08004388
 800298c:	20000628 	.word	0x20000628
 8002990:	20000630 	.word	0x20000630

08002994 <backtrace_level_2>:
void backtrace_level_2(void)
{
 8002994:	b580      	push	{r7, lr}
 8002996:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 8002998:	4903      	ldr	r1, [pc, #12]	; (80029a8 <backtrace_level_2+0x14>)
 800299a:	4804      	ldr	r0, [pc, #16]	; (80029ac <backtrace_level_2+0x18>)
 800299c:	f7ff fe22 	bl	80025e4 <printf_>
    backtrace_level_3();
 80029a0:	f7ff ffd2 	bl	8002948 <backtrace_level_3>
}
 80029a4:	bf00      	nop
 80029a6:	bd80      	pop	{r7, pc}
 80029a8:	08004528 	.word	0x08004528
 80029ac:	08004388 	.word	0x08004388

080029b0 <backtrace_level_1>:
void backtrace_level_1(void)
{
 80029b0:	b580      	push	{r7, lr}
 80029b2:	af00      	add	r7, sp, #0
    printf("[%s]\n", __func__);
 80029b4:	4903      	ldr	r1, [pc, #12]	; (80029c4 <backtrace_level_1+0x14>)
 80029b6:	4804      	ldr	r0, [pc, #16]	; (80029c8 <backtrace_level_1+0x18>)
 80029b8:	f7ff fe14 	bl	80025e4 <printf_>
    backtrace_level_2();
 80029bc:	f7ff ffea 	bl	8002994 <backtrace_level_2>
}
 80029c0:	bf00      	nop
 80029c2:	bd80      	pop	{r7, pc}
 80029c4:	0800453c 	.word	0x0800453c
 80029c8:	08004388 	.word	0x08004388

080029cc <backtrace_test>:
#define SOFTWARE_VERSION               "V0.1.0"
#ifdef CM_BACKTRACE_ENABLE
#include <cm_backtrace.h>
#endif
void backtrace_test(void)
{
 80029cc:	b590      	push	{r4, r7, lr}
 80029ce:	b089      	sub	sp, #36	; 0x24
 80029d0:	af02      	add	r7, sp, #8
    int bt1 = 0xAA;
 80029d2:	23aa      	movs	r3, #170	; 0xaa
 80029d4:	613b      	str	r3, [r7, #16]
    int bt2 = 0x55;
 80029d6:	2355      	movs	r3, #85	; 0x55
 80029d8:	60fb      	str	r3, [r7, #12]
    int bt3 = 0x77;
 80029da:	2377      	movs	r3, #119	; 0x77
 80029dc:	60bb      	str	r3, [r7, #8]
    (void)bt2;
    (void)bt3;
#ifdef CM_BACKTRACE_ENABLE
    cm_backtrace_init("CmBacktrace", HARDWARE_VERSION, SOFTWARE_VERSION);
#endif
    code_start_addr = (uint32_t)&_stext;
 80029de:	4a47      	ldr	r2, [pc, #284]	; (8002afc <backtrace_test+0x130>)
 80029e0:	4b47      	ldr	r3, [pc, #284]	; (8002b00 <backtrace_test+0x134>)
 80029e2:	601a      	str	r2, [r3, #0]
    code_end_addr = (uint32_t)&_etext;
 80029e4:	4a47      	ldr	r2, [pc, #284]	; (8002b04 <backtrace_test+0x138>)
 80029e6:	4b48      	ldr	r3, [pc, #288]	; (8002b08 <backtrace_test+0x13c>)
 80029e8:	601a      	str	r2, [r3, #0]
    code_size = code_end_addr - code_start_addr;
 80029ea:	4b47      	ldr	r3, [pc, #284]	; (8002b08 <backtrace_test+0x13c>)
 80029ec:	681a      	ldr	r2, [r3, #0]
 80029ee:	4b44      	ldr	r3, [pc, #272]	; (8002b00 <backtrace_test+0x134>)
 80029f0:	681b      	ldr	r3, [r3, #0]
 80029f2:	1ad3      	subs	r3, r2, r3
 80029f4:	4a45      	ldr	r2, [pc, #276]	; (8002b0c <backtrace_test+0x140>)
 80029f6:	6013      	str	r3, [r2, #0]
    stack_start_addr = (uint32_t)&_sstack;
 80029f8:	4a45      	ldr	r2, [pc, #276]	; (8002b10 <backtrace_test+0x144>)
 80029fa:	4b46      	ldr	r3, [pc, #280]	; (8002b14 <backtrace_test+0x148>)
 80029fc:	601a      	str	r2, [r3, #0]
    stack_end_addr = (uint32_t)&_estack;
 80029fe:	4a46      	ldr	r2, [pc, #280]	; (8002b18 <backtrace_test+0x14c>)
 8002a00:	4b46      	ldr	r3, [pc, #280]	; (8002b1c <backtrace_test+0x150>)
 8002a02:	601a      	str	r2, [r3, #0]
    stack_size = stack_end_addr - stack_start_addr;
 8002a04:	4b45      	ldr	r3, [pc, #276]	; (8002b1c <backtrace_test+0x150>)
 8002a06:	681a      	ldr	r2, [r3, #0]
 8002a08:	4b42      	ldr	r3, [pc, #264]	; (8002b14 <backtrace_test+0x148>)
 8002a0a:	681b      	ldr	r3, [r3, #0]
 8002a0c:	1ad3      	subs	r3, r2, r3
 8002a0e:	4a44      	ldr	r2, [pc, #272]	; (8002b20 <backtrace_test+0x154>)
 8002a10:	6013      	str	r3, [r2, #0]
    heap_start_addr = (uint32_t)&_sheap;
 8002a12:	4a44      	ldr	r2, [pc, #272]	; (8002b24 <backtrace_test+0x158>)
 8002a14:	4b44      	ldr	r3, [pc, #272]	; (8002b28 <backtrace_test+0x15c>)
 8002a16:	601a      	str	r2, [r3, #0]
    heap_end_addr = (uint32_t)&_eheap;
 8002a18:	4a44      	ldr	r2, [pc, #272]	; (8002b2c <backtrace_test+0x160>)
 8002a1a:	4b45      	ldr	r3, [pc, #276]	; (8002b30 <backtrace_test+0x164>)
 8002a1c:	601a      	str	r2, [r3, #0]
    heap_size = heap_end_addr - heap_start_addr;
 8002a1e:	4b44      	ldr	r3, [pc, #272]	; (8002b30 <backtrace_test+0x164>)
 8002a20:	681a      	ldr	r2, [r3, #0]
 8002a22:	4b41      	ldr	r3, [pc, #260]	; (8002b28 <backtrace_test+0x15c>)
 8002a24:	681b      	ldr	r3, [r3, #0]
 8002a26:	1ad3      	subs	r3, r2, r3
 8002a28:	4a42      	ldr	r2, [pc, #264]	; (8002b34 <backtrace_test+0x168>)
 8002a2a:	6013      	str	r3, [r2, #0]
    printf("[%s] code_start_addr=0x%lx code_end_addr=0x%lx code_size=%ld<0x%lx>\n", \
 8002a2c:	4b34      	ldr	r3, [pc, #208]	; (8002b00 <backtrace_test+0x134>)
 8002a2e:	6819      	ldr	r1, [r3, #0]
 8002a30:	4b35      	ldr	r3, [pc, #212]	; (8002b08 <backtrace_test+0x13c>)
 8002a32:	6818      	ldr	r0, [r3, #0]
 8002a34:	4b35      	ldr	r3, [pc, #212]	; (8002b0c <backtrace_test+0x140>)
 8002a36:	681b      	ldr	r3, [r3, #0]
 8002a38:	4a34      	ldr	r2, [pc, #208]	; (8002b0c <backtrace_test+0x140>)
 8002a3a:	6812      	ldr	r2, [r2, #0]
 8002a3c:	9201      	str	r2, [sp, #4]
 8002a3e:	9300      	str	r3, [sp, #0]
 8002a40:	4603      	mov	r3, r0
 8002a42:	460a      	mov	r2, r1
 8002a44:	493c      	ldr	r1, [pc, #240]	; (8002b38 <backtrace_test+0x16c>)
 8002a46:	483d      	ldr	r0, [pc, #244]	; (8002b3c <backtrace_test+0x170>)
 8002a48:	f7ff fdcc 	bl	80025e4 <printf_>
    __func__, code_start_addr, code_end_addr, code_size, code_size);
    printf("[%s] stack_start_addr=0x%lx stack_end_addr=0x%lx stack_size=%ld<0x%lx>\n", \
 8002a4c:	4b31      	ldr	r3, [pc, #196]	; (8002b14 <backtrace_test+0x148>)
 8002a4e:	6819      	ldr	r1, [r3, #0]
 8002a50:	4b32      	ldr	r3, [pc, #200]	; (8002b1c <backtrace_test+0x150>)
 8002a52:	6818      	ldr	r0, [r3, #0]
 8002a54:	4b32      	ldr	r3, [pc, #200]	; (8002b20 <backtrace_test+0x154>)
 8002a56:	681b      	ldr	r3, [r3, #0]
 8002a58:	4a31      	ldr	r2, [pc, #196]	; (8002b20 <backtrace_test+0x154>)
 8002a5a:	6812      	ldr	r2, [r2, #0]
 8002a5c:	9201      	str	r2, [sp, #4]
 8002a5e:	9300      	str	r3, [sp, #0]
 8002a60:	4603      	mov	r3, r0
 8002a62:	460a      	mov	r2, r1
 8002a64:	4934      	ldr	r1, [pc, #208]	; (8002b38 <backtrace_test+0x16c>)
 8002a66:	4836      	ldr	r0, [pc, #216]	; (8002b40 <backtrace_test+0x174>)
 8002a68:	f7ff fdbc 	bl	80025e4 <printf_>
    __func__, stack_start_addr, stack_end_addr, stack_size, stack_size);
    printf("[%s] heap_start_addr=0x%lx heap_end_addr=0x%lx heap_size=%ld<0x%lx>\n", \
 8002a6c:	4b2e      	ldr	r3, [pc, #184]	; (8002b28 <backtrace_test+0x15c>)
 8002a6e:	6819      	ldr	r1, [r3, #0]
 8002a70:	4b2f      	ldr	r3, [pc, #188]	; (8002b30 <backtrace_test+0x164>)
 8002a72:	6818      	ldr	r0, [r3, #0]
 8002a74:	4b2f      	ldr	r3, [pc, #188]	; (8002b34 <backtrace_test+0x168>)
 8002a76:	681b      	ldr	r3, [r3, #0]
 8002a78:	4a2e      	ldr	r2, [pc, #184]	; (8002b34 <backtrace_test+0x168>)
 8002a7a:	6812      	ldr	r2, [r2, #0]
 8002a7c:	9201      	str	r2, [sp, #4]
 8002a7e:	9300      	str	r3, [sp, #0]
 8002a80:	4603      	mov	r3, r0
 8002a82:	460a      	mov	r2, r1
 8002a84:	492c      	ldr	r1, [pc, #176]	; (8002b38 <backtrace_test+0x16c>)
 8002a86:	482f      	ldr	r0, [pc, #188]	; (8002b44 <backtrace_test+0x178>)
 8002a88:	f7ff fdac 	bl	80025e4 <printf_>
  \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
           Can only be executed in Privileged modes.
 */
__STATIC_FORCEINLINE void __enable_irq(void)
{
  __ASM volatile ("cpsie i" : : : "memory");
 8002a8c:	b662      	cpsie	i
    __asm volatile ("MOV %0, sp\n" : "=r" (result) );
 8002a8e:	466b      	mov	r3, sp
 8002a90:	461c      	mov	r4, r3
    return(result);
 8002a92:	4623      	mov	r3, r4
    // printf("[%s] start\n", __func__);
    // test_div();

    // __asm("svc 0");
    // printf("[%s] end\n", __func__);
    uint32_t sp = cmb_get_sp();
 8002a94:	617b      	str	r3, [r7, #20]
    printf("sp=0x%lx\n", sp);
 8002a96:	6979      	ldr	r1, [r7, #20]
 8002a98:	482b      	ldr	r0, [pc, #172]	; (8002b48 <backtrace_test+0x17c>)
 8002a9a:	f7ff fda3 	bl	80025e4 <printf_>
    __asm volatile ("MOV %0, lr\n" : "=r" (result) );
    return(result);
}
__attribute__( ( always_inline ) ) static inline uint32_t cmb_get_pc(void) {
    register uint32_t result;
    __asm volatile ("MOV %0, pc\n" : "=r" (result) );
 8002a9e:	467b      	mov	r3, pc
 8002aa0:	461c      	mov	r4, r3
    return(result);
 8002aa2:	4623      	mov	r3, r4
    uint32_t pc = cmb_get_pc();
 8002aa4:	607b      	str	r3, [r7, #4]
    printf("pc=0x%lx\n", pc);
 8002aa6:	6879      	ldr	r1, [r7, #4]
 8002aa8:	4828      	ldr	r0, [pc, #160]	; (8002b4c <backtrace_test+0x180>)
 8002aaa:	f7ff fd9b 	bl	80025e4 <printf_>
    区间内筛选出当前栈中的汇编指令地址。并通过判断上一条是否为bl指令或
    blx指令（b、bx指令不将lr寄存器入栈，不对其进行处理）对上一条指令
    进行计算
    */
    uint32_t addr;
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 8002aae:	e01b      	b.n	8002ae8 <backtrace_test+0x11c>
        //sp 在代码段内
        addr = *(uint32_t*)sp;//如果是LR寄存器，存放的返回地址指向
 8002ab0:	697b      	ldr	r3, [r7, #20]
 8002ab2:	681b      	ldr	r3, [r3, #0]
 8002ab4:	603b      	str	r3, [r7, #0]
        printf("addr :%08x\n", addr);
 8002ab6:	6839      	ldr	r1, [r7, #0]
 8002ab8:	4825      	ldr	r0, [pc, #148]	; (8002b50 <backtrace_test+0x184>)
 8002aba:	f7ff fd93 	bl	80025e4 <printf_>
        if ((addr >= (uint32_t)&_stext) &&
 8002abe:	4a0f      	ldr	r2, [pc, #60]	; (8002afc <backtrace_test+0x130>)
 8002ac0:	683b      	ldr	r3, [r7, #0]
 8002ac2:	4293      	cmp	r3, r2
 8002ac4:	d30d      	bcc.n	8002ae2 <backtrace_test+0x116>
        (sp <= (uint32_t)&_etext) &&
 8002ac6:	4a0f      	ldr	r2, [pc, #60]	; (8002b04 <backtrace_test+0x138>)
        if ((addr >= (uint32_t)&_stext) &&
 8002ac8:	697b      	ldr	r3, [r7, #20]
 8002aca:	4293      	cmp	r3, r2
 8002acc:	d809      	bhi.n	8002ae2 <backtrace_test+0x116>
        IS_ALIGNED(addr - 1, 2)) {//thumb-2z指令 2字节
 8002ace:	683b      	ldr	r3, [r7, #0]
 8002ad0:	3b01      	subs	r3, #1
 8002ad2:	f003 0301 	and.w	r3, r3, #1
        (sp <= (uint32_t)&_etext) &&
 8002ad6:	2b00      	cmp	r3, #0
 8002ad8:	d103      	bne.n	8002ae2 <backtrace_test+0x116>

            printf("find ld 0x%08x\n", addr);
 8002ada:	6839      	ldr	r1, [r7, #0]
 8002adc:	481d      	ldr	r0, [pc, #116]	; (8002b54 <backtrace_test+0x188>)
 8002ade:	f7ff fd81 	bl	80025e4 <printf_>
        }
        sp += 4;
 8002ae2:	697b      	ldr	r3, [r7, #20]
 8002ae4:	3304      	adds	r3, #4
 8002ae6:	617b      	str	r3, [r7, #20]
    while(sp < (uint32_t)&_estack) {//在堆栈里查找LR
 8002ae8:	4a0b      	ldr	r2, [pc, #44]	; (8002b18 <backtrace_test+0x14c>)
 8002aea:	697b      	ldr	r3, [r7, #20]
 8002aec:	4293      	cmp	r3, r2
 8002aee:	d3df      	bcc.n	8002ab0 <backtrace_test+0xe4>
    }
    backtrace_level_1();
 8002af0:	f7ff ff5e 	bl	80029b0 <backtrace_level_1>
    fault_test_by_div0();
 8002af4:	f7ff fdae 	bl	8002654 <fault_test_by_div0>
//         fault_test_by_unalign();
        while(1);
 8002af8:	e7fe      	b.n	8002af8 <backtrace_test+0x12c>
 8002afa:	bf00      	nop
 8002afc:	08000000 	.word	0x08000000
 8002b00:	2000061c 	.word	0x2000061c
 8002b04:	080045e4 	.word	0x080045e4
 8002b08:	20000620 	.word	0x20000620
 8002b0c:	20000624 	.word	0x20000624
 8002b10:	20016fff 	.word	0x20016fff
 8002b14:	20000628 	.word	0x20000628
 8002b18:	20017fff 	.word	0x20017fff
 8002b1c:	2000062c 	.word	0x2000062c
 8002b20:	20000630 	.word	0x20000630
 8002b24:	20000814 	.word	0x20000814
 8002b28:	20000634 	.word	0x20000634
 8002b2c:	20000814 	.word	0x20000814
 8002b30:	20000638 	.word	0x20000638
 8002b34:	2000063c 	.word	0x2000063c
 8002b38:	08004550 	.word	0x08004550
 8002b3c:	08004390 	.word	0x08004390
 8002b40:	080043d8 	.word	0x080043d8
 8002b44:	08004420 	.word	0x08004420
 8002b48:	08004468 	.word	0x08004468
 8002b4c:	08004474 	.word	0x08004474
 8002b50:	08004480 	.word	0x08004480
 8002b54:	0800448c 	.word	0x0800448c

08002b58 <LoopUntilEntry>:
#define OFFSET_OF_PSP          40 // 10 registers
#define BL_INS                 0xF000F000
#define BLX_INX                0x4700

unsigned long  LoopUntilEntry(unsigned long addr)
{
 8002b58:	b480      	push	{r7}
 8002b5a:	b083      	sub	sp, #12
 8002b5c:	af00      	add	r7, sp, #0
 8002b5e:	6078      	str	r0, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
 8002b60:	e00e      	b.n	8002b80 <LoopUntilEntry+0x28>
        if (((*((uint16_t *)addr) >> 8) == PUSH_MASK_WITH_LR) || ((*((uint16_t *)addr) >> 8) == PUSH_MASK)) {
 8002b62:	687b      	ldr	r3, [r7, #4]
 8002b64:	881b      	ldrh	r3, [r3, #0]
 8002b66:	0a1b      	lsrs	r3, r3, #8
 8002b68:	b29b      	uxth	r3, r3
 8002b6a:	2bb5      	cmp	r3, #181	; 0xb5
 8002b6c:	d00d      	beq.n	8002b8a <LoopUntilEntry+0x32>
 8002b6e:	687b      	ldr	r3, [r7, #4]
 8002b70:	881b      	ldrh	r3, [r3, #0]
 8002b72:	0a1b      	lsrs	r3, r3, #8
 8002b74:	b29b      	uxth	r3, r3
 8002b76:	2bb4      	cmp	r3, #180	; 0xb4
 8002b78:	d007      	beq.n	8002b8a <LoopUntilEntry+0x32>
            break;
        }
        addr -= THUM_OFFSET;
 8002b7a:	687b      	ldr	r3, [r7, #4]
 8002b7c:	3b02      	subs	r3, #2
 8002b7e:	607b      	str	r3, [r7, #4]
    while (addr > (unsigned long)code_start_addr) {
 8002b80:	4b05      	ldr	r3, [pc, #20]	; (8002b98 <LoopUntilEntry+0x40>)
 8002b82:	681b      	ldr	r3, [r3, #0]
 8002b84:	687a      	ldr	r2, [r7, #4]
 8002b86:	429a      	cmp	r2, r3
 8002b88:	d8eb      	bhi.n	8002b62 <LoopUntilEntry+0xa>
    }

    return addr;
 8002b8a:	687b      	ldr	r3, [r7, #4]
}
 8002b8c:	4618      	mov	r0, r3
 8002b8e:	370c      	adds	r7, #12
 8002b90:	46bd      	mov	sp, r7
 8002b92:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b96:	4770      	bx	lr
 8002b98:	2000061c 	.word	0x2000061c

08002b9c <CalculateBLTargetAddress>:

unsigned long CalculateBLTargetAddress(unsigned long bl)
{
 8002b9c:	b480      	push	{r7}
 8002b9e:	b087      	sub	sp, #28
 8002ba0:	af00      	add	r7, sp, #0
 8002ba2:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
 8002ba4:	2300      	movs	r3, #0
 8002ba6:	617b      	str	r3, [r7, #20]
    uint32_t off0, off1, off;

    if (*(uint16_t *)bl & SIGN_BIT_MASK) {
 8002ba8:	687b      	ldr	r3, [r7, #4]
 8002baa:	881b      	ldrh	r3, [r3, #0]
 8002bac:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8002bb0:	2b00      	cmp	r3, #0
 8002bb2:	d00b      	beq.n	8002bcc <CalculateBLTargetAddress+0x30>
        off1 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 8002bb4:	687b      	ldr	r3, [r7, #4]
 8002bb6:	881b      	ldrh	r3, [r3, #0]
 8002bb8:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002bbc:	60fb      	str	r3, [r7, #12]
        off0 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 8002bbe:	687b      	ldr	r3, [r7, #4]
 8002bc0:	3302      	adds	r3, #2
 8002bc2:	881b      	ldrh	r3, [r3, #0]
 8002bc4:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002bc8:	613b      	str	r3, [r7, #16]
 8002bca:	e00a      	b.n	8002be2 <CalculateBLTargetAddress+0x46>
    } else {
        off0 = *(uint16_t *)bl & LOW_11_BITS_MASK;
 8002bcc:	687b      	ldr	r3, [r7, #4]
 8002bce:	881b      	ldrh	r3, [r3, #0]
 8002bd0:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002bd4:	613b      	str	r3, [r7, #16]
        off1 = *(uint16_t *)(bl + 2) & LOW_11_BITS_MASK;
 8002bd6:	687b      	ldr	r3, [r7, #4]
 8002bd8:	3302      	adds	r3, #2
 8002bda:	881b      	ldrh	r3, [r3, #0]
 8002bdc:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002be0:	60fb      	str	r3, [r7, #12]
    }
    off = (off0 << HIGH_OFFSET_NUMBER) + (off1 << LOW_OFFSET_NUMBER);
 8002be2:	693b      	ldr	r3, [r7, #16]
 8002be4:	031a      	lsls	r2, r3, #12
 8002be6:	68fb      	ldr	r3, [r7, #12]
 8002be8:	005b      	lsls	r3, r3, #1
 8002bea:	4413      	add	r3, r2
 8002bec:	60bb      	str	r3, [r7, #8]
    if (off & SIGN_BIT_MASK) {
 8002bee:	68bb      	ldr	r3, [r7, #8]
 8002bf0:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8002bf4:	2b00      	cmp	r3, #0
 8002bf6:	d008      	beq.n	8002c0a <CalculateBLTargetAddress+0x6e>
        target = bl + BL_CMD_OFFSET - ((~(off - 1)) & 0x7FFFFF); // 0x7FFFFF : offset mask
 8002bf8:	68bb      	ldr	r3, [r7, #8]
 8002bfa:	425b      	negs	r3, r3
 8002bfc:	f3c3 0316 	ubfx	r3, r3, #0, #23
 8002c00:	687a      	ldr	r2, [r7, #4]
 8002c02:	1ad3      	subs	r3, r2, r3
 8002c04:	3304      	adds	r3, #4
 8002c06:	617b      	str	r3, [r7, #20]
 8002c08:	e004      	b.n	8002c14 <CalculateBLTargetAddress+0x78>
    } else {
        target = bl + BL_CMD_OFFSET + off;
 8002c0a:	687a      	ldr	r2, [r7, #4]
 8002c0c:	68bb      	ldr	r3, [r7, #8]
 8002c0e:	4413      	add	r3, r2
 8002c10:	3304      	adds	r3, #4
 8002c12:	617b      	str	r3, [r7, #20]
    }

    return target;
 8002c14:	697b      	ldr	r3, [r7, #20]
}
 8002c16:	4618      	mov	r0, r3
 8002c18:	371c      	adds	r7, #28
 8002c1a:	46bd      	mov	sp, r7
 8002c1c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002c20:	4770      	bx	lr
	...

08002c24 <CalculateTargetAddress>:

unsigned long  CalculateTargetAddress(unsigned long bl)
{
 8002c24:	b580      	push	{r7, lr}
 8002c26:	b084      	sub	sp, #16
 8002c28:	af00      	add	r7, sp, #0
 8002c2a:	6078      	str	r0, [r7, #4]
    unsigned long target = 0;
 8002c2c:	2300      	movs	r3, #0
 8002c2e:	60fb      	str	r3, [r7, #12]
    static unsigned long tmpBL = 0;

    if ((((*(uint16_t *)(bl - BLX_CMD_OFFSET)) & HIGH_8_BITS_MASK) == BLX_INX)) {
 8002c30:	687b      	ldr	r3, [r7, #4]
 8002c32:	3b02      	subs	r3, #2
 8002c34:	881b      	ldrh	r3, [r3, #0]
 8002c36:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8002c3a:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8002c3e:	d11a      	bne.n	8002c76 <CalculateTargetAddress+0x52>
        if (tmpBL != 0) {
 8002c40:	4b1b      	ldr	r3, [pc, #108]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c42:	681b      	ldr	r3, [r3, #0]
 8002c44:	2b00      	cmp	r3, #0
 8002c46:	d00b      	beq.n	8002c60 <CalculateTargetAddress+0x3c>
            target = LoopUntilEntry (tmpBL);
 8002c48:	4b19      	ldr	r3, [pc, #100]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c4a:	681b      	ldr	r3, [r3, #0]
 8002c4c:	4618      	mov	r0, r3
 8002c4e:	f7ff ff83 	bl	8002b58 <LoopUntilEntry>
 8002c52:	60f8      	str	r0, [r7, #12]
            tmpBL = bl - BLX_CMD_OFFSET;
 8002c54:	687b      	ldr	r3, [r7, #4]
 8002c56:	3b02      	subs	r3, #2
 8002c58:	4a15      	ldr	r2, [pc, #84]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c5a:	6013      	str	r3, [r2, #0]
            return target;
 8002c5c:	68fb      	ldr	r3, [r7, #12]
 8002c5e:	e023      	b.n	8002ca8 <CalculateTargetAddress+0x84>
        }
        tmpBL = bl - BLX_CMD_OFFSET;
 8002c60:	687b      	ldr	r3, [r7, #4]
 8002c62:	3b02      	subs	r3, #2
 8002c64:	4a12      	ldr	r2, [pc, #72]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c66:	6013      	str	r3, [r2, #0]
        return LoopUntilEntry(tmpBL);
 8002c68:	4b11      	ldr	r3, [pc, #68]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c6a:	681b      	ldr	r3, [r3, #0]
 8002c6c:	4618      	mov	r0, r3
 8002c6e:	f7ff ff73 	bl	8002b58 <LoopUntilEntry>
 8002c72:	4603      	mov	r3, r0
 8002c74:	e018      	b.n	8002ca8 <CalculateTargetAddress+0x84>
    } else if ((*(uint32_t *)(bl - BL_CMD_OFFSET) & BL_INS) == BL_INS) {
 8002c76:	687b      	ldr	r3, [r7, #4]
 8002c78:	3b04      	subs	r3, #4
 8002c7a:	681b      	ldr	r3, [r3, #0]
 8002c7c:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
 8002c80:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
 8002c84:	d10f      	bne.n	8002ca6 <CalculateTargetAddress+0x82>
        tmpBL = bl - BL_CMD_OFFSET;
 8002c86:	687b      	ldr	r3, [r7, #4]
 8002c88:	3b04      	subs	r3, #4
 8002c8a:	4a09      	ldr	r2, [pc, #36]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c8c:	6013      	str	r3, [r2, #0]
        CalculateBLTargetAddress (tmpBL);
 8002c8e:	4b08      	ldr	r3, [pc, #32]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c90:	681b      	ldr	r3, [r3, #0]
 8002c92:	4618      	mov	r0, r3
 8002c94:	f7ff ff82 	bl	8002b9c <CalculateBLTargetAddress>

        return CalculateBLTargetAddress (tmpBL);
 8002c98:	4b05      	ldr	r3, [pc, #20]	; (8002cb0 <CalculateTargetAddress+0x8c>)
 8002c9a:	681b      	ldr	r3, [r3, #0]
 8002c9c:	4618      	mov	r0, r3
 8002c9e:	f7ff ff7d 	bl	8002b9c <CalculateBLTargetAddress>
 8002ca2:	4603      	mov	r3, r0
 8002ca4:	e000      	b.n	8002ca8 <CalculateTargetAddress+0x84>
    }

    return 0;
 8002ca6:	2300      	movs	r3, #0
}
 8002ca8:	4618      	mov	r0, r3
 8002caa:	3710      	adds	r7, #16
 8002cac:	46bd      	mov	sp, r7
 8002cae:	bd80      	pop	{r7, pc}
 8002cb0:	200006d0 	.word	0x200006d0

08002cb4 <BackTraceSub>:

void BackTraceSub(unsigned long sp)
{
 8002cb4:	b580      	push	{r7, lr}
 8002cb6:	b086      	sub	sp, #24
 8002cb8:	af00      	add	r7, sp, #0
 8002cba:	6078      	str	r0, [r7, #4]
    unsigned long stackPointer = sp;
 8002cbc:	687b      	ldr	r3, [r7, #4]
 8002cbe:	617b      	str	r3, [r7, #20]
    uint32_t count = 0;
 8002cc0:	2300      	movs	r3, #0
 8002cc2:	613b      	str	r3, [r7, #16]
    static unsigned long tmpJump = 0;


    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 8002cc4:	e03b      	b.n	8002d3e <BackTraceSub+0x8a>
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 8002cc6:	697b      	ldr	r3, [r7, #20]
 8002cc8:	681a      	ldr	r2, [r3, #0]
 8002cca:	4b23      	ldr	r3, [pc, #140]	; (8002d58 <BackTraceSub+0xa4>)
 8002ccc:	681b      	ldr	r3, [r3, #0]
 8002cce:	429a      	cmp	r2, r3
 8002cd0:	d32e      	bcc.n	8002d30 <BackTraceSub+0x7c>
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 8002cd2:	697b      	ldr	r3, [r7, #20]
 8002cd4:	681a      	ldr	r2, [r3, #0]
 8002cd6:	4b21      	ldr	r3, [pc, #132]	; (8002d5c <BackTraceSub+0xa8>)
 8002cd8:	681b      	ldr	r3, [r3, #0]
        if ((*(uint32_t *)stackPointer >= (uint32_t)code_start_addr) &&
 8002cda:	429a      	cmp	r2, r3
 8002cdc:	d828      	bhi.n	8002d30 <BackTraceSub+0x7c>
        IS_ALIGNED(*(uint32_t *)stackPointer - 1, THUM_OFFSET)) {
 8002cde:	697b      	ldr	r3, [r7, #20]
 8002ce0:	681b      	ldr	r3, [r3, #0]
 8002ce2:	3b01      	subs	r3, #1
 8002ce4:	f003 0301 	and.w	r3, r3, #1
        (*(uint32_t *)stackPointer <= (uint32_t)code_end_addr) &&
 8002ce8:	2b00      	cmp	r3, #0
 8002cea:	d121      	bne.n	8002d30 <BackTraceSub+0x7c>

            /* Get the entry address of current function. */
            unsigned long checkBL = CalculateTargetAddress(*(uint32_t *)stackPointer - 1);
 8002cec:	697b      	ldr	r3, [r7, #20]
 8002cee:	681b      	ldr	r3, [r3, #0]
 8002cf0:	3b01      	subs	r3, #1
 8002cf2:	4618      	mov	r0, r3
 8002cf4:	f7ff ff96 	bl	8002c24 <CalculateTargetAddress>
 8002cf8:	60f8      	str	r0, [r7, #12]
            if ((checkBL == 0) || (checkBL == tmpJump)) {
 8002cfa:	68fb      	ldr	r3, [r7, #12]
 8002cfc:	2b00      	cmp	r3, #0
 8002cfe:	d004      	beq.n	8002d0a <BackTraceSub+0x56>
 8002d00:	4b17      	ldr	r3, [pc, #92]	; (8002d60 <BackTraceSub+0xac>)
 8002d02:	681b      	ldr	r3, [r3, #0]
 8002d04:	68fa      	ldr	r2, [r7, #12]
 8002d06:	429a      	cmp	r2, r3
 8002d08:	d103      	bne.n	8002d12 <BackTraceSub+0x5e>
                stackPointer += STACK_OFFSET;
 8002d0a:	697b      	ldr	r3, [r7, #20]
 8002d0c:	3304      	adds	r3, #4
 8002d0e:	617b      	str	r3, [r7, #20]
                continue;
 8002d10:	e015      	b.n	8002d3e <BackTraceSub+0x8a>
            }
            tmpJump = checkBL;
 8002d12:	4a13      	ldr	r2, [pc, #76]	; (8002d60 <BackTraceSub+0xac>)
 8002d14:	68fb      	ldr	r3, [r7, #12]
 8002d16:	6013      	str	r3, [r2, #0]
            count++;
 8002d18:	693b      	ldr	r3, [r7, #16]
 8002d1a:	3301      	adds	r3, #1
 8002d1c:	613b      	str	r3, [r7, #16]
            printf("traceback %u -- lr = 0x%08x -- fp = 0x%08x\n", count, *(uint32_t *)stackPointer - 1, tmpJump);
 8002d1e:	697b      	ldr	r3, [r7, #20]
 8002d20:	681b      	ldr	r3, [r3, #0]
 8002d22:	1e5a      	subs	r2, r3, #1
 8002d24:	4b0e      	ldr	r3, [pc, #56]	; (8002d60 <BackTraceSub+0xac>)
 8002d26:	681b      	ldr	r3, [r3, #0]
 8002d28:	6939      	ldr	r1, [r7, #16]
 8002d2a:	480e      	ldr	r0, [pc, #56]	; (8002d64 <BackTraceSub+0xb0>)
 8002d2c:	f7ff fc5a 	bl	80025e4 <printf_>
        }
        stackPointer += STACK_OFFSET;
 8002d30:	697b      	ldr	r3, [r7, #20]
 8002d32:	3304      	adds	r3, #4
 8002d34:	617b      	str	r3, [r7, #20]
        printf("stackPointer=0x%x\n",stackPointer);
 8002d36:	6979      	ldr	r1, [r7, #20]
 8002d38:	480b      	ldr	r0, [pc, #44]	; (8002d68 <BackTraceSub+0xb4>)
 8002d3a:	f7ff fc53 	bl	80025e4 <printf_>
    while ((stackPointer < stack_end_addr) && (count < OS_MAX_BACKTRACE)) {
 8002d3e:	4b0b      	ldr	r3, [pc, #44]	; (8002d6c <BackTraceSub+0xb8>)
 8002d40:	681b      	ldr	r3, [r3, #0]
 8002d42:	697a      	ldr	r2, [r7, #20]
 8002d44:	429a      	cmp	r2, r3
 8002d46:	d202      	bcs.n	8002d4e <BackTraceSub+0x9a>
 8002d48:	693b      	ldr	r3, [r7, #16]
 8002d4a:	2b0e      	cmp	r3, #14
 8002d4c:	d9bb      	bls.n	8002cc6 <BackTraceSub+0x12>
    }
}
 8002d4e:	bf00      	nop
 8002d50:	3718      	adds	r7, #24
 8002d52:	46bd      	mov	sp, r7
 8002d54:	bd80      	pop	{r7, pc}
 8002d56:	bf00      	nop
 8002d58:	2000061c 	.word	0x2000061c
 8002d5c:	20000620 	.word	0x20000620
 8002d60:	200006d4 	.word	0x200006d4
 8002d64:	0800449c 	.word	0x0800449c
 8002d68:	080044c8 	.word	0x080044c8
 8002d6c:	2000062c 	.word	0x2000062c

08002d70 <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sCrashInfo *sCrashInfo) {
 8002d70:	b480      	push	{r7}
 8002d72:	b087      	sub	sp, #28
 8002d74:	af00      	add	r7, sp, #0
 8002d76:	6078      	str	r0, [r7, #4]
    sContextStateFrame *frame = &sCrashInfo->frame;
 8002d78:	687b      	ldr	r3, [r7, #4]
 8002d7a:	3304      	adds	r3, #4
 8002d7c:	617b      	str	r3, [r7, #20]

  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
 8002d7e:	4b28      	ldr	r3, [pc, #160]	; (8002e20 <HardFault_Handler_C+0xb0>)
 8002d80:	681b      	ldr	r3, [r3, #0]
 8002d82:	f003 0301 	and.w	r3, r3, #1
 8002d86:	2b00      	cmp	r3, #0
 8002d88:	d000      	beq.n	8002d8c <HardFault_Handler_C+0x1c>
 8002d8a:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
 8002d8c:	4b25      	ldr	r3, [pc, #148]	; (8002e24 <HardFault_Handler_C+0xb4>)
 8002d8e:	613b      	str	r3, [r7, #16]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
 8002d90:	4b25      	ldr	r3, [pc, #148]	; (8002e28 <HardFault_Handler_C+0xb8>)
 8002d92:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 8002d94:	693b      	ldr	r3, [r7, #16]
 8002d96:	43db      	mvns	r3, r3
 8002d98:	4013      	ands	r3, r2
 8002d9a:	2b00      	cmp	r3, #0
 8002d9c:	bf14      	ite	ne
 8002d9e:	2301      	movne	r3, #1
 8002da0:	2300      	moveq	r3, #0
 8002da2:	73fb      	strb	r3, [r7, #15]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
 8002da4:	697b      	ldr	r3, [r7, #20]
 8002da6:	69db      	ldr	r3, [r3, #28]
 8002da8:	b2db      	uxtb	r3, r3
 8002daa:	2b00      	cmp	r3, #0
 8002dac:	bf14      	ite	ne
 8002dae:	2301      	movne	r3, #1
 8002db0:	2300      	moveq	r3, #0
 8002db2:	73bb      	strb	r3, [r7, #14]

  if (faulted_from_exception || non_usage_fault_occurred) {
 8002db4:	7bbb      	ldrb	r3, [r7, #14]
 8002db6:	2b00      	cmp	r3, #0
 8002db8:	d102      	bne.n	8002dc0 <HardFault_Handler_C+0x50>
 8002dba:	7bfb      	ldrb	r3, [r7, #15]
 8002dbc:	2b00      	cmp	r3, #0
 8002dbe:	d003      	beq.n	8002dc8 <HardFault_Handler_C+0x58>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
 8002dc0:	4b19      	ldr	r3, [pc, #100]	; (8002e28 <HardFault_Handler_C+0xb8>)
 8002dc2:	4a1a      	ldr	r2, [pc, #104]	; (8002e2c <HardFault_Handler_C+0xbc>)
 8002dc4:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
 8002dc6:	e7fe      	b.n	8002dc6 <HardFault_Handler_C+0x56>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
 8002dc8:	4b17      	ldr	r3, [pc, #92]	; (8002e28 <HardFault_Handler_C+0xb8>)
 8002dca:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 8002dcc:	4b16      	ldr	r3, [pc, #88]	; (8002e28 <HardFault_Handler_C+0xb8>)
 8002dce:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8002dd0:	4915      	ldr	r1, [pc, #84]	; (8002e28 <HardFault_Handler_C+0xb8>)
 8002dd2:	4313      	orrs	r3, r2
 8002dd4:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
 8002dd6:	4a16      	ldr	r2, [pc, #88]	; (8002e30 <HardFault_Handler_C+0xc0>)
 8002dd8:	697b      	ldr	r3, [r7, #20]
 8002dda:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
 8002ddc:	697b      	ldr	r3, [r7, #20]
 8002dde:	2200      	movs	r2, #0
 8002de0:	f062 0210 	orn	r2, r2, #16
 8002de4:	751a      	strb	r2, [r3, #20]
 8002de6:	2200      	movs	r2, #0
 8002de8:	f062 0241 	orn	r2, r2, #65	; 0x41
 8002dec:	755a      	strb	r2, [r3, #21]
 8002dee:	2200      	movs	r2, #0
 8002df0:	f062 0252 	orn	r2, r2, #82	; 0x52
 8002df4:	759a      	strb	r2, [r3, #22]
 8002df6:	2200      	movs	r2, #0
 8002df8:	f062 0221 	orn	r2, r2, #33	; 0x21
 8002dfc:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
 8002dfe:	697b      	ldr	r3, [r7, #20]
 8002e00:	2200      	movs	r2, #0
 8002e02:	771a      	strb	r2, [r3, #28]
 8002e04:	2200      	movs	r2, #0
 8002e06:	775a      	strb	r2, [r3, #29]
 8002e08:	2200      	movs	r2, #0
 8002e0a:	779a      	strb	r2, [r3, #30]
 8002e0c:	2200      	movs	r2, #0
 8002e0e:	f042 0201 	orr.w	r2, r2, #1
 8002e12:	77da      	strb	r2, [r3, #31]
}
 8002e14:	bf00      	nop
 8002e16:	371c      	adds	r7, #28
 8002e18:	46bd      	mov	sp, r7
 8002e1a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e1e:	4770      	bx	lr
 8002e20:	e000edf0 	.word	0xe000edf0
 8002e24:	ffff0000 	.word	0xffff0000
 8002e28:	e000ed00 	.word	0xe000ed00
 8002e2c:	05fa0004 	.word	0x05fa0004
 8002e30:	080030c9 	.word	0x080030c9

08002e34 <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
 8002e34:	491a      	ldr	r1, [pc, #104]	; (8002ea0 <HardFault_Handler+0x6c>)
 8002e36:	4a1b      	ldr	r2, [pc, #108]	; (8002ea4 <HardFault_Handler+0x70>)
 8002e38:	600a      	str	r2, [r1, #0]
 8002e3a:	f101 0104 	add.w	r1, r1, #4
 8002e3e:	f01e 0f04 	tst.w	lr, #4
 8002e42:	bf0c      	ite	eq
 8002e44:	f3ef 8008 	mrseq	r0, MSP
 8002e48:	f3ef 8009 	mrsne	r0, PSP
 8002e4c:	6802      	ldr	r2, [r0, #0]
 8002e4e:	600a      	str	r2, [r1, #0]
 8002e50:	6842      	ldr	r2, [r0, #4]
 8002e52:	604a      	str	r2, [r1, #4]
 8002e54:	6882      	ldr	r2, [r0, #8]
 8002e56:	608a      	str	r2, [r1, #8]
 8002e58:	68c2      	ldr	r2, [r0, #12]
 8002e5a:	60ca      	str	r2, [r1, #12]
 8002e5c:	6902      	ldr	r2, [r0, #16]
 8002e5e:	610a      	str	r2, [r1, #16]
 8002e60:	6942      	ldr	r2, [r0, #20]
 8002e62:	614a      	str	r2, [r1, #20]
 8002e64:	6982      	ldr	r2, [r0, #24]
 8002e66:	618a      	str	r2, [r1, #24]
 8002e68:	69c2      	ldr	r2, [r0, #28]
 8002e6a:	61ca      	str	r2, [r1, #28]
 8002e6c:	f101 011c 	add.w	r1, r1, #28
 8002e70:	e8a1 0ff0 	stmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002e74:	f3ef 8209 	mrs	r2, PSP
 8002e78:	600a      	str	r2, [r1, #0]
 8002e7a:	f3ef 8208 	mrs	r2, MSP
 8002e7e:	604a      	str	r2, [r1, #4]
 8002e80:	f3ef 8214 	mrs	r2, CONTROL
 8002e84:	608a      	str	r2, [r1, #8]
 8002e86:	f3ef 8211 	mrs	r2, BASEPRI
 8002e8a:	60ca      	str	r2, [r1, #12]
 8002e8c:	f3ef 8210 	mrs	r2, PRIMASK
 8002e90:	610a      	str	r2, [r1, #16]
 8002e92:	f3ef 8213 	mrs	r2, FAULTMASK
 8002e96:	614a      	str	r2, [r1, #20]
 8002e98:	4801      	ldr	r0, [pc, #4]	; (8002ea0 <HardFault_Handler+0x6c>)
 8002e9a:	f7ff bf69 	b.w	8002d70 <HardFault_Handler_C>
}
 8002e9e:	bf00      	nop
 8002ea0:	0800457c 	.word	0x0800457c
 8002ea4:	dead55aa 	.word	0xdead55aa

08002ea8 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
 8002ea8:	b480      	push	{r7}
 8002eaa:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
 8002eac:	4b03      	ldr	r3, [pc, #12]	; (8002ebc <exception_init+0x14>)
 8002eae:	4a04      	ldr	r2, [pc, #16]	; (8002ec0 <exception_init+0x18>)
 8002eb0:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
 8002eb2:	bf00      	nop
 8002eb4:	46bd      	mov	sp, r7
 8002eb6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002eba:	4770      	bx	lr
 8002ebc:	200007a8 	.word	0x200007a8
 8002ec0:	200006d9 	.word	0x200006d9

08002ec4 <exception_test>:

void exception_test(void)
{
 8002ec4:	b580      	push	{r7, lr}
 8002ec6:	af00      	add	r7, sp, #0
  exception_init();
 8002ec8:	f7ff ffee 	bl	8002ea8 <exception_init>
  trigger_crash(0);
 8002ecc:	2000      	movs	r0, #0
 8002ece:	f000 f8c3 	bl	8003058 <trigger_crash>
}
 8002ed2:	bf00      	nop
 8002ed4:	bd80      	pop	{r7, pc}
	...

08002ed8 <trigger_irq>:
#include "exception.h"

void trigger_irq(void) 
{
 8002ed8:	b480      	push	{r7}
 8002eda:	af00      	add	r7, sp, #0
    NVIC->ISER[0] |= (0x1 << 1);
 8002edc:	4b0a      	ldr	r3, [pc, #40]	; (8002f08 <trigger_irq+0x30>)
 8002ede:	681b      	ldr	r3, [r3, #0]
 8002ee0:	4a09      	ldr	r2, [pc, #36]	; (8002f08 <trigger_irq+0x30>)
 8002ee2:	f043 0302 	orr.w	r3, r3, #2
 8002ee6:	6013      	str	r3, [r2, #0]

    // Pend an interrupt
    NVIC->ISPR[0] |= (0x1 << 1);
 8002ee8:	4b07      	ldr	r3, [pc, #28]	; (8002f08 <trigger_irq+0x30>)
 8002eea:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8002eee:	4a06      	ldr	r2, [pc, #24]	; (8002f08 <trigger_irq+0x30>)
 8002ef0:	f043 0302 	orr.w	r3, r3, #2
 8002ef4:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
    // flush pipeline to ensure exception takes effect before we
    // return from this routine
    __asm("isb");
 8002ef8:	f3bf 8f6f 	isb	sy
}
 8002efc:	bf00      	nop
 8002efe:	46bd      	mov	sp, r7
 8002f00:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f04:	4770      	bx	lr
 8002f06:	bf00      	nop
 8002f08:	e000e100 	.word	0xe000e100

08002f0c <stkerr_from_psp>:
valid. For example, the very last store of the hardware stacking could trigger the fault 
and all the other stores could be valid. However, the order the hardware pushes register 
state on the stack is implementation specific. So when inspecting the frame assume the 
values being looked at may be invalid!
*/
void stkerr_from_psp(void) {
 8002f0c:	b5b0      	push	{r4, r5, r7, lr}
 8002f0e:	b086      	sub	sp, #24
 8002f10:	af00      	add	r7, sp, #0
 8002f12:	466b      	mov	r3, sp
 8002f14:	461d      	mov	r5, r3
  extern uint32_t _sdata[];
  uint8_t dummy_variable;
  const size_t distance_to_ram_bottom = (uint32_t)&dummy_variable - (uint32_t)_sdata;
 8002f16:	1dfb      	adds	r3, r7, #7
 8002f18:	4a21      	ldr	r2, [pc, #132]	; (8002fa0 <stkerr_from_psp+0x94>)
 8002f1a:	1a9b      	subs	r3, r3, r2
 8002f1c:	613b      	str	r3, [r7, #16]
  volatile uint8_t big_buf[distance_to_ram_bottom - 8];
 8002f1e:	693b      	ldr	r3, [r7, #16]
 8002f20:	3b09      	subs	r3, #9
 8002f22:	60fb      	str	r3, [r7, #12]
 8002f24:	693b      	ldr	r3, [r7, #16]
 8002f26:	3b08      	subs	r3, #8
 8002f28:	4619      	mov	r1, r3
 8002f2a:	f04f 0200 	mov.w	r2, #0
 8002f2e:	f04f 0300 	mov.w	r3, #0
 8002f32:	f04f 0400 	mov.w	r4, #0
 8002f36:	00d4      	lsls	r4, r2, #3
 8002f38:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
 8002f3c:	00cb      	lsls	r3, r1, #3
 8002f3e:	693b      	ldr	r3, [r7, #16]
 8002f40:	3b08      	subs	r3, #8
 8002f42:	4619      	mov	r1, r3
 8002f44:	f04f 0200 	mov.w	r2, #0
 8002f48:	f04f 0300 	mov.w	r3, #0
 8002f4c:	f04f 0400 	mov.w	r4, #0
 8002f50:	00d4      	lsls	r4, r2, #3
 8002f52:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
 8002f56:	00cb      	lsls	r3, r1, #3
 8002f58:	693b      	ldr	r3, [r7, #16]
 8002f5a:	3b08      	subs	r3, #8
 8002f5c:	3307      	adds	r3, #7
 8002f5e:	08db      	lsrs	r3, r3, #3
 8002f60:	00db      	lsls	r3, r3, #3
 8002f62:	ebad 0d03 	sub.w	sp, sp, r3
 8002f66:	466b      	mov	r3, sp
 8002f68:	3300      	adds	r3, #0
 8002f6a:	60bb      	str	r3, [r7, #8]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
 8002f6c:	2300      	movs	r3, #0
 8002f6e:	617b      	str	r3, [r7, #20]
 8002f70:	e009      	b.n	8002f86 <stkerr_from_psp+0x7a>
    big_buf[i] = i;
 8002f72:	697b      	ldr	r3, [r7, #20]
 8002f74:	b2d9      	uxtb	r1, r3
 8002f76:	68ba      	ldr	r2, [r7, #8]
 8002f78:	697b      	ldr	r3, [r7, #20]
 8002f7a:	4413      	add	r3, r2
 8002f7c:	460a      	mov	r2, r1
 8002f7e:	701a      	strb	r2, [r3, #0]
  for (size_t i = 0; i < sizeof(big_buf); i++) {
 8002f80:	697b      	ldr	r3, [r7, #20]
 8002f82:	3301      	adds	r3, #1
 8002f84:	617b      	str	r3, [r7, #20]
 8002f86:	693b      	ldr	r3, [r7, #16]
 8002f88:	3b08      	subs	r3, #8
 8002f8a:	697a      	ldr	r2, [r7, #20]
 8002f8c:	429a      	cmp	r2, r3
 8002f8e:	d3f0      	bcc.n	8002f72 <stkerr_from_psp+0x66>
  }

  trigger_irq();
 8002f90:	f7ff ffa2 	bl	8002ed8 <trigger_irq>
 8002f94:	46ad      	mov	sp, r5
}
 8002f96:	bf00      	nop
 8002f98:	3718      	adds	r7, #24
 8002f9a:	46bd      	mov	sp, r7
 8002f9c:	bdb0      	pop	{r4, r5, r7, pc}
 8002f9e:	bf00      	nop
 8002fa0:	20000000 	.word	0x20000000

08002fa4 <bad_memory_access_crash>:

int bad_memory_access_crash(void) {
 8002fa4:	b480      	push	{r7}
 8002fa6:	b083      	sub	sp, #12
 8002fa8:	af00      	add	r7, sp, #0
  volatile uint32_t *bad_access = (volatile uint32_t *)0xdeadbeef;
 8002faa:	4b05      	ldr	r3, [pc, #20]	; (8002fc0 <bad_memory_access_crash+0x1c>)
 8002fac:	607b      	str	r3, [r7, #4]
  return *bad_access;
 8002fae:	687b      	ldr	r3, [r7, #4]
 8002fb0:	681b      	ldr	r3, [r3, #0]
}
 8002fb2:	4618      	mov	r0, r3
 8002fb4:	370c      	adds	r7, #12
 8002fb6:	46bd      	mov	sp, r7
 8002fb8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002fbc:	4770      	bx	lr
 8002fbe:	bf00      	nop
 8002fc0:	deadbeef 	.word	0xdeadbeef

08002fc4 <read_from_bad_address>:
/*Bad Address Read*/
uint32_t read_from_bad_address(void) {
 8002fc4:	b480      	push	{r7}
 8002fc6:	af00      	add	r7, sp, #0
  return *(volatile uint32_t *)0xbadcafe;
 8002fc8:	4b03      	ldr	r3, [pc, #12]	; (8002fd8 <read_from_bad_address+0x14>)
 8002fca:	681b      	ldr	r3, [r3, #0]
}
 8002fcc:	4618      	mov	r0, r3
 8002fce:	46bd      	mov	sp, r7
 8002fd0:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002fd4:	4770      	bx	lr
 8002fd6:	bf00      	nop
 8002fd8:	0badcafe 	.word	0x0badcafe

08002fdc <illegal_instruction_execution>:

/*eXecute Never Fault*/
int illegal_instruction_execution(void) {
 8002fdc:	b580      	push	{r7, lr}
 8002fde:	b082      	sub	sp, #8
 8002fe0:	af00      	add	r7, sp, #0
  int (*bad_instruction)(void) = (void *)0xE0000000;
 8002fe2:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
 8002fe6:	607b      	str	r3, [r7, #4]
  return bad_instruction();
 8002fe8:	687b      	ldr	r3, [r7, #4]
 8002fea:	4798      	blx	r3
 8002fec:	4603      	mov	r3, r0
}
 8002fee:	4618      	mov	r0, r3
 8002ff0:	3708      	adds	r7, #8
 8002ff2:	46bd      	mov	sp, r7
 8002ff4:	bd80      	pop	{r7, pc}

08002ff6 <unaligned_double_word_read>:

void unaligned_double_word_read(void) {
 8002ff6:	b480      	push	{r7}
 8002ff8:	af00      	add	r7, sp, #0
//   extern void *g_unaligned_buffer;
//   uint64_t *buf = g_unaligned_buffer;
//   *buf = 0x1122334455667788;
}
 8002ffa:	bf00      	nop
 8002ffc:	46bd      	mov	sp, r7
 8002ffe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003002:	4770      	bx	lr
 8003004:	0000      	movs	r0, r0
	...

08003008 <bad_addr_double_word_write>:

/*Imprecise Fault*/
void bad_addr_double_word_write(void) {
 8003008:	b490      	push	{r4, r7}
 800300a:	b082      	sub	sp, #8
 800300c:	af00      	add	r7, sp, #0
  volatile uint64_t *buf = (volatile uint64_t *)0x30000000;
 800300e:	f04f 5340 	mov.w	r3, #805306368	; 0x30000000
 8003012:	607b      	str	r3, [r7, #4]
  *buf = 0x1122334455667788;
 8003014:	687a      	ldr	r2, [r7, #4]
 8003016:	a406      	add	r4, pc, #24	; (adr r4, 8003030 <bad_addr_double_word_write+0x28>)
 8003018:	e9d4 3400 	ldrd	r3, r4, [r4]
 800301c:	e9c2 3400 	strd	r3, r4, [r2]
}
 8003020:	bf00      	nop
 8003022:	3708      	adds	r7, #8
 8003024:	46bd      	mov	sp, r7
 8003026:	bc90      	pop	{r4, r7}
 8003028:	4770      	bx	lr
 800302a:	bf00      	nop
 800302c:	f3af 8000 	nop.w
 8003030:	55667788 	.word	0x55667788
 8003034:	11223344 	.word	0x11223344

08003038 <access_disabled_coprocessor>:
/*Coprocessor Fault*/
void access_disabled_coprocessor(void) {
 8003038:	b480      	push	{r7}
 800303a:	af00      	add	r7, sp, #0
  // FreeRTOS will automatically enable the FPU co-processor.
  // Let's disable it for the purposes of this example
  __asm volatile(
 800303c:	4805      	ldr	r0, [pc, #20]	; (8003054 <access_disabled_coprocessor+0x1c>)
 800303e:	f04f 0100 	mov.w	r1, #0
 8003042:	6001      	str	r1, [r0, #0]
 8003044:	f3bf 8f4f 	dsb	sy
      "mov r1, #0 \n"
      "str r1, [r0]	\n"
      "dsb \n"
    //   "vmov r0, s0 \n"
      );
}
 8003048:	bf00      	nop
 800304a:	46bd      	mov	sp, r7
 800304c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003050:	4770      	bx	lr
 8003052:	0000      	.short	0x0000
 8003054:	e000ed88 	.word	0xe000ed88

08003058 <trigger_crash>:
//  4: Exception Entry Fault
//  5: Unaligned 8 byte read
//  6: Bad 4 byte read
//  7: Illegal EXC_RETURN
void trigger_crash(int crash_id) 
{
 8003058:	b580      	push	{r7, lr}
 800305a:	b082      	sub	sp, #8
 800305c:	af00      	add	r7, sp, #0
 800305e:	6078      	str	r0, [r7, #4]
  switch (crash_id) {
 8003060:	687b      	ldr	r3, [r7, #4]
 8003062:	2b07      	cmp	r3, #7
 8003064:	d82a      	bhi.n	80030bc <trigger_crash+0x64>
 8003066:	a201      	add	r2, pc, #4	; (adr r2, 800306c <trigger_crash+0x14>)
 8003068:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800306c:	0800308d 	.word	0x0800308d
 8003070:	08003093 	.word	0x08003093
 8003074:	08003099 	.word	0x08003099
 8003078:	0800309f 	.word	0x0800309f
 800307c:	080030a5 	.word	0x080030a5
 8003080:	080030ab 	.word	0x080030ab
 8003084:	080030b1 	.word	0x080030b1
 8003088:	080030b7 	.word	0x080030b7
    case 0:
      illegal_instruction_execution();      
 800308c:	f7ff ffa6 	bl	8002fdc <illegal_instruction_execution>
      break;
 8003090:	e015      	b.n	80030be <trigger_crash+0x66>
    case 1:
      read_from_bad_address();
 8003092:	f7ff ff97 	bl	8002fc4 <read_from_bad_address>
      break;
 8003096:	e012      	b.n	80030be <trigger_crash+0x66>
    case 2:
      access_disabled_coprocessor();
 8003098:	f7ff ffce 	bl	8003038 <access_disabled_coprocessor>
      break;
 800309c:	e00f      	b.n	80030be <trigger_crash+0x66>
    case 3:
      bad_addr_double_word_write();
 800309e:	f7ff ffb3 	bl	8003008 <bad_addr_double_word_write>
      break;
 80030a2:	e00c      	b.n	80030be <trigger_crash+0x66>
    case 4:
      stkerr_from_psp();
 80030a4:	f7ff ff32 	bl	8002f0c <stkerr_from_psp>
      break;
 80030a8:	e009      	b.n	80030be <trigger_crash+0x66>
    case 5:
      unaligned_double_word_read();      
 80030aa:	f7ff ffa4 	bl	8002ff6 <unaligned_double_word_read>
      break;
 80030ae:	e006      	b.n	80030be <trigger_crash+0x66>
    case 6:
      bad_memory_access_crash();
 80030b0:	f7ff ff78 	bl	8002fa4 <bad_memory_access_crash>
      break;
 80030b4:	e003      	b.n	80030be <trigger_crash+0x66>
    case 7:
      trigger_irq();
 80030b6:	f7ff ff0f 	bl	8002ed8 <trigger_irq>
      break;
 80030ba:	e000      	b.n	80030be <trigger_crash+0x66>
    default:
      break;
 80030bc:	bf00      	nop
  }
}
 80030be:	bf00      	nop
 80030c0:	3708      	adds	r7, #8
 80030c2:	46bd      	mov	sp, r7
 80030c4:	bd80      	pop	{r7, pc}
 80030c6:	bf00      	nop

080030c8 <recover_from_task_fault>:
void recover_from_task_fault(void) 
{
 80030c8:	b480      	push	{r7}
 80030ca:	af00      	add	r7, sp, #0
  while (1) {
 80030cc:	e7fe      	b.n	80030cc <recover_from_task_fault+0x4>

080030ce <main>:
  * @brief  Main program
  * @param  None
  * @retval None
  */
int main(void)
{
 80030ce:	b580      	push	{r7, lr}
 80030d0:	af00      	add	r7, sp, #0
       - Configure the Flash prefetch, instruction and Data caches
       - Configure the Systick to generate an interrupt each 1 msec
       - Set NVIC Group Priority to 4
       - Global MSP (MCU Support Package) initialization
     */
  HAL_Init();
 80030d2:	f7fd f87f 	bl	80001d4 <HAL_Init>
//  __asm("svc 0");
  /* Configure the system clock to 84 MHz */
  SystemClock_Config();
 80030d6:	f000 f807 	bl	80030e8 <SystemClock_Config>

  serial_init();
 80030da:	f000 f867 	bl	80031ac <serial_init>
        &__shell_command_start, &__shell_command_end);
    // shell_command_t * scmd = &__shell_command_start;

//  BSP_LED_Init(LED2);
  
  exception_test();
 80030de:	f7ff fef1 	bl	8002ec4 <exception_test>
  backtrace_test();
 80030e2:	f7ff fc73 	bl	80029cc <backtrace_test>
//  InitStepper();
  while (1) {
 80030e6:	e7fe      	b.n	80030e6 <main+0x18>

080030e8 <SystemClock_Config>:
  *            Flash Latency(WS)              = 2
  * @param  None
  * @retval None
  */
static void SystemClock_Config(void)
{
 80030e8:	b580      	push	{r7, lr}
 80030ea:	b094      	sub	sp, #80	; 0x50
 80030ec:	af00      	add	r7, sp, #0
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;

  /* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
 80030ee:	2300      	movs	r3, #0
 80030f0:	60bb      	str	r3, [r7, #8]
 80030f2:	4b29      	ldr	r3, [pc, #164]	; (8003198 <SystemClock_Config+0xb0>)
 80030f4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80030f6:	4a28      	ldr	r2, [pc, #160]	; (8003198 <SystemClock_Config+0xb0>)
 80030f8:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80030fc:	6413      	str	r3, [r2, #64]	; 0x40
 80030fe:	4b26      	ldr	r3, [pc, #152]	; (8003198 <SystemClock_Config+0xb0>)
 8003100:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8003102:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8003106:	60bb      	str	r3, [r7, #8]
 8003108:	68bb      	ldr	r3, [r7, #8]
  
  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE2);
 800310a:	2300      	movs	r3, #0
 800310c:	607b      	str	r3, [r7, #4]
 800310e:	4b23      	ldr	r3, [pc, #140]	; (800319c <SystemClock_Config+0xb4>)
 8003110:	681b      	ldr	r3, [r3, #0]
 8003112:	f423 4340 	bic.w	r3, r3, #49152	; 0xc000
 8003116:	4a21      	ldr	r2, [pc, #132]	; (800319c <SystemClock_Config+0xb4>)
 8003118:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800311c:	6013      	str	r3, [r2, #0]
 800311e:	4b1f      	ldr	r3, [pc, #124]	; (800319c <SystemClock_Config+0xb4>)
 8003120:	681b      	ldr	r3, [r3, #0]
 8003122:	f403 4340 	and.w	r3, r3, #49152	; 0xc000
 8003126:	607b      	str	r3, [r7, #4]
 8003128:	687b      	ldr	r3, [r7, #4]
  
  /* Enable HSI Oscillator and activate PLL with HSI as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 800312a:	2302      	movs	r3, #2
 800312c:	60fb      	str	r3, [r7, #12]
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
 800312e:	2301      	movs	r3, #1
 8003130:	61bb      	str	r3, [r7, #24]
  RCC_OscInitStruct.HSICalibrationValue = 0x10;
 8003132:	2310      	movs	r3, #16
 8003134:	61fb      	str	r3, [r7, #28]
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 8003136:	2302      	movs	r3, #2
 8003138:	627b      	str	r3, [r7, #36]	; 0x24
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
 800313a:	2300      	movs	r3, #0
 800313c:	62bb      	str	r3, [r7, #40]	; 0x28
  RCC_OscInitStruct.PLL.PLLM = 16;
 800313e:	2310      	movs	r3, #16
 8003140:	62fb      	str	r3, [r7, #44]	; 0x2c
  RCC_OscInitStruct.PLL.PLLN = 336;
 8003142:	f44f 73a8 	mov.w	r3, #336	; 0x150
 8003146:	633b      	str	r3, [r7, #48]	; 0x30
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
 8003148:	2304      	movs	r3, #4
 800314a:	637b      	str	r3, [r7, #52]	; 0x34
  RCC_OscInitStruct.PLL.PLLQ = 7;
 800314c:	2307      	movs	r3, #7
 800314e:	63bb      	str	r3, [r7, #56]	; 0x38
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 8003150:	f107 030c 	add.w	r3, r7, #12
 8003154:	4618      	mov	r0, r3
 8003156:	f7fd f9c9 	bl	80004ec <HAL_RCC_OscConfig>
 800315a:	4603      	mov	r3, r0
 800315c:	2b00      	cmp	r3, #0
 800315e:	d001      	beq.n	8003164 <SystemClock_Config+0x7c>
  {
    Error_Handler();
 8003160:	f000 f81e 	bl	80031a0 <Error_Handler>
  }
 
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
 8003164:	230f      	movs	r3, #15
 8003166:	63fb      	str	r3, [r7, #60]	; 0x3c
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 8003168:	2302      	movs	r3, #2
 800316a:	643b      	str	r3, [r7, #64]	; 0x40
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 800316c:	2300      	movs	r3, #0
 800316e:	647b      	str	r3, [r7, #68]	; 0x44
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;  
 8003170:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8003174:	64bb      	str	r3, [r7, #72]	; 0x48
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;  
 8003176:	2300      	movs	r3, #0
 8003178:	64fb      	str	r3, [r7, #76]	; 0x4c
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
 800317a:	f107 033c 	add.w	r3, r7, #60	; 0x3c
 800317e:	2102      	movs	r1, #2
 8003180:	4618      	mov	r0, r3
 8003182:	f7fd fc2b 	bl	80009dc <HAL_RCC_ClockConfig>
 8003186:	4603      	mov	r3, r0
 8003188:	2b00      	cmp	r3, #0
 800318a:	d001      	beq.n	8003190 <SystemClock_Config+0xa8>
  {
    Error_Handler();
 800318c:	f000 f808 	bl	80031a0 <Error_Handler>
  }
}
 8003190:	bf00      	nop
 8003192:	3750      	adds	r7, #80	; 0x50
 8003194:	46bd      	mov	sp, r7
 8003196:	bd80      	pop	{r7, pc}
 8003198:	40023800 	.word	0x40023800
 800319c:	40007000 	.word	0x40007000

080031a0 <Error_Handler>:
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
void Error_Handler(void)
{
 80031a0:	b580      	push	{r7, lr}
 80031a2:	af00      	add	r7, sp, #0
  /* Turn LED2 on */
  BSP_LED_On(LED2);
 80031a4:	2000      	movs	r0, #0
 80031a6:	f000 f97f 	bl	80034a8 <BSP_LED_On>
  while(1)
 80031aa:	e7fe      	b.n	80031aa <Error_Handler+0xa>

080031ac <serial_init>:
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */

void serial_init(void) 
{
 80031ac:	b580      	push	{r7, lr}
 80031ae:	af00      	add	r7, sp, #0
      - Word Length = 8 Bits
      - Stop Bit = One Stop bit
      - Parity = ODD parity
      - BaudRate = 9600 baud
      - Hardware flow control disabled (RTS and CTS signals) */
  UartHandle.Instance          = USARTx;
 80031b0:	4b11      	ldr	r3, [pc, #68]	; (80031f8 <serial_init+0x4c>)
 80031b2:	4a12      	ldr	r2, [pc, #72]	; (80031fc <serial_init+0x50>)
 80031b4:	601a      	str	r2, [r3, #0]
  
  UartHandle.Init.BaudRate     = 921600;
 80031b6:	4b10      	ldr	r3, [pc, #64]	; (80031f8 <serial_init+0x4c>)
 80031b8:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 80031bc:	605a      	str	r2, [r3, #4]
  UartHandle.Init.WordLength   = UART_WORDLENGTH_8B;
 80031be:	4b0e      	ldr	r3, [pc, #56]	; (80031f8 <serial_init+0x4c>)
 80031c0:	2200      	movs	r2, #0
 80031c2:	609a      	str	r2, [r3, #8]
  UartHandle.Init.StopBits     = UART_STOPBITS_1;
 80031c4:	4b0c      	ldr	r3, [pc, #48]	; (80031f8 <serial_init+0x4c>)
 80031c6:	2200      	movs	r2, #0
 80031c8:	60da      	str	r2, [r3, #12]
  UartHandle.Init.Parity       = UART_PARITY_NONE;
 80031ca:	4b0b      	ldr	r3, [pc, #44]	; (80031f8 <serial_init+0x4c>)
 80031cc:	2200      	movs	r2, #0
 80031ce:	611a      	str	r2, [r3, #16]
  UartHandle.Init.HwFlowCtl    = UART_HWCONTROL_NONE;
 80031d0:	4b09      	ldr	r3, [pc, #36]	; (80031f8 <serial_init+0x4c>)
 80031d2:	2200      	movs	r2, #0
 80031d4:	619a      	str	r2, [r3, #24]
  UartHandle.Init.Mode         = UART_MODE_TX_RX;
 80031d6:	4b08      	ldr	r3, [pc, #32]	; (80031f8 <serial_init+0x4c>)
 80031d8:	220c      	movs	r2, #12
 80031da:	615a      	str	r2, [r3, #20]
  UartHandle.Init.OverSampling = UART_OVERSAMPLING_16;
 80031dc:	4b06      	ldr	r3, [pc, #24]	; (80031f8 <serial_init+0x4c>)
 80031de:	2200      	movs	r2, #0
 80031e0:	61da      	str	r2, [r3, #28]
    
  if(HAL_UART_Init(&UartHandle) != HAL_OK) {
 80031e2:	4805      	ldr	r0, [pc, #20]	; (80031f8 <serial_init+0x4c>)
 80031e4:	f7fe f8e5 	bl	80013b2 <HAL_UART_Init>
 80031e8:	4603      	mov	r3, r0
 80031ea:	2b00      	cmp	r3, #0
 80031ec:	d001      	beq.n	80031f2 <serial_init+0x46>
    /* Initialization Error */
    Error_Handler(); 
 80031ee:	f7ff ffd7 	bl	80031a0 <Error_Handler>
  }
  
}
 80031f2:	bf00      	nop
 80031f4:	bd80      	pop	{r7, pc}
 80031f6:	bf00      	nop
 80031f8:	200007ac 	.word	0x200007ac
 80031fc:	40004400 	.word	0x40004400

08003200 <__io_putchar>:
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
 8003200:	b580      	push	{r7, lr}
 8003202:	b082      	sub	sp, #8
 8003204:	af00      	add	r7, sp, #0
 8003206:	6078      	str	r0, [r7, #4]
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Transmit(&UartHandle, (uint8_t *)&ch, 1, 0xFFFF); 
 8003208:	1d39      	adds	r1, r7, #4
 800320a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800320e:	2201      	movs	r2, #1
 8003210:	4803      	ldr	r0, [pc, #12]	; (8003220 <__io_putchar+0x20>)
 8003212:	f7fe f91b 	bl	800144c <HAL_UART_Transmit>

  return ch;
 8003216:	687b      	ldr	r3, [r7, #4]
}
 8003218:	4618      	mov	r0, r3
 800321a:	3708      	adds	r7, #8
 800321c:	46bd      	mov	sp, r7
 800321e:	bd80      	pop	{r7, pc}
 8003220:	200007ac 	.word	0x200007ac

08003224 <HAL_UART_MspInit>:
  *           - NVIC configuration for DMA interrupt request enable
  * @param huart: UART handle pointer
  * @retval None
  */
void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
 8003224:	b580      	push	{r7, lr}
 8003226:	b08c      	sub	sp, #48	; 0x30
 8003228:	af00      	add	r7, sp, #0
 800322a:	6078      	str	r0, [r7, #4]
  
  GPIO_InitTypeDef  GPIO_InitStruct;
  
  /*##-1- Enable peripherals and GPIO Clocks #################################*/
  /* Enable GPIO TX/RX clock */
  USARTx_TX_GPIO_CLK_ENABLE();
 800322c:	2300      	movs	r3, #0
 800322e:	61bb      	str	r3, [r7, #24]
 8003230:	4b6a      	ldr	r3, [pc, #424]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 8003232:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003234:	4a69      	ldr	r2, [pc, #420]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 8003236:	f043 0301 	orr.w	r3, r3, #1
 800323a:	6313      	str	r3, [r2, #48]	; 0x30
 800323c:	4b67      	ldr	r3, [pc, #412]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 800323e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003240:	f003 0301 	and.w	r3, r3, #1
 8003244:	61bb      	str	r3, [r7, #24]
 8003246:	69bb      	ldr	r3, [r7, #24]
  USARTx_RX_GPIO_CLK_ENABLE();
 8003248:	2300      	movs	r3, #0
 800324a:	617b      	str	r3, [r7, #20]
 800324c:	4b63      	ldr	r3, [pc, #396]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 800324e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003250:	4a62      	ldr	r2, [pc, #392]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 8003252:	f043 0301 	orr.w	r3, r3, #1
 8003256:	6313      	str	r3, [r2, #48]	; 0x30
 8003258:	4b60      	ldr	r3, [pc, #384]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 800325a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800325c:	f003 0301 	and.w	r3, r3, #1
 8003260:	617b      	str	r3, [r7, #20]
 8003262:	697b      	ldr	r3, [r7, #20]
  /* Enable USART2 clock */
  USARTx_CLK_ENABLE(); 
 8003264:	2300      	movs	r3, #0
 8003266:	613b      	str	r3, [r7, #16]
 8003268:	4b5c      	ldr	r3, [pc, #368]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 800326a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 800326c:	4a5b      	ldr	r2, [pc, #364]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 800326e:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8003272:	6413      	str	r3, [r2, #64]	; 0x40
 8003274:	4b59      	ldr	r3, [pc, #356]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 8003276:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8003278:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800327c:	613b      	str	r3, [r7, #16]
 800327e:	693b      	ldr	r3, [r7, #16]
  /* Enable DMA1 clock */
  DMAx_CLK_ENABLE();   
 8003280:	2300      	movs	r3, #0
 8003282:	60fb      	str	r3, [r7, #12]
 8003284:	4b55      	ldr	r3, [pc, #340]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 8003286:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003288:	4a54      	ldr	r2, [pc, #336]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 800328a:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800328e:	6313      	str	r3, [r2, #48]	; 0x30
 8003290:	4b52      	ldr	r3, [pc, #328]	; (80033dc <HAL_UART_MspInit+0x1b8>)
 8003292:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8003294:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8003298:	60fb      	str	r3, [r7, #12]
 800329a:	68fb      	ldr	r3, [r7, #12]
  
  /*##-2- Configure peripheral GPIO ##########################################*/  
  /* UART TX GPIO pin configuration  */
  GPIO_InitStruct.Pin       = USARTx_TX_PIN;
 800329c:	2304      	movs	r3, #4
 800329e:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
 80032a0:	2302      	movs	r3, #2
 80032a2:	623b      	str	r3, [r7, #32]
  GPIO_InitStruct.Pull      = GPIO_NOPULL;
 80032a4:	2300      	movs	r3, #0
 80032a6:	627b      	str	r3, [r7, #36]	; 0x24
  GPIO_InitStruct.Speed     = GPIO_SPEED_FAST;
 80032a8:	2302      	movs	r3, #2
 80032aa:	62bb      	str	r3, [r7, #40]	; 0x28
  GPIO_InitStruct.Alternate = USARTx_TX_AF;
 80032ac:	2307      	movs	r3, #7
 80032ae:	62fb      	str	r3, [r7, #44]	; 0x2c
  
  HAL_GPIO_Init(USARTx_TX_GPIO_PORT, &GPIO_InitStruct);
 80032b0:	f107 031c 	add.w	r3, r7, #28
 80032b4:	4619      	mov	r1, r3
 80032b6:	484a      	ldr	r0, [pc, #296]	; (80033e0 <HAL_UART_MspInit+0x1bc>)
 80032b8:	f7fd fee0 	bl	800107c <HAL_GPIO_Init>
    
  /* UART RX GPIO pin configuration  */
  GPIO_InitStruct.Pin = USARTx_RX_PIN;
 80032bc:	2308      	movs	r3, #8
 80032be:	61fb      	str	r3, [r7, #28]
  GPIO_InitStruct.Alternate = USARTx_RX_AF;
 80032c0:	2307      	movs	r3, #7
 80032c2:	62fb      	str	r3, [r7, #44]	; 0x2c
    
  HAL_GPIO_Init(USARTx_RX_GPIO_PORT, &GPIO_InitStruct);
 80032c4:	f107 031c 	add.w	r3, r7, #28
 80032c8:	4619      	mov	r1, r3
 80032ca:	4845      	ldr	r0, [pc, #276]	; (80033e0 <HAL_UART_MspInit+0x1bc>)
 80032cc:	f7fd fed6 	bl	800107c <HAL_GPIO_Init>
    
  /*##-3- Configure the DMA streams ##########################################*/
  /* Configure the DMA handler for Transmission process */
  hdma_tx.Instance                 = USARTx_TX_DMA_STREAM;
 80032d0:	4b44      	ldr	r3, [pc, #272]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032d2:	4a45      	ldr	r2, [pc, #276]	; (80033e8 <HAL_UART_MspInit+0x1c4>)
 80032d4:	601a      	str	r2, [r3, #0]
  
  hdma_tx.Init.Channel             = USARTx_TX_DMA_CHANNEL;
 80032d6:	4b43      	ldr	r3, [pc, #268]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032d8:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80032dc:	605a      	str	r2, [r3, #4]
  hdma_tx.Init.Direction           = DMA_MEMORY_TO_PERIPH;
 80032de:	4b41      	ldr	r3, [pc, #260]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032e0:	2240      	movs	r2, #64	; 0x40
 80032e2:	609a      	str	r2, [r3, #8]
  hdma_tx.Init.PeriphInc           = DMA_PINC_DISABLE;
 80032e4:	4b3f      	ldr	r3, [pc, #252]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032e6:	2200      	movs	r2, #0
 80032e8:	60da      	str	r2, [r3, #12]
  hdma_tx.Init.MemInc              = DMA_MINC_ENABLE;
 80032ea:	4b3e      	ldr	r3, [pc, #248]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032ec:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80032f0:	611a      	str	r2, [r3, #16]
  hdma_tx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 80032f2:	4b3c      	ldr	r3, [pc, #240]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032f4:	2200      	movs	r2, #0
 80032f6:	615a      	str	r2, [r3, #20]
  hdma_tx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 80032f8:	4b3a      	ldr	r3, [pc, #232]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 80032fa:	2200      	movs	r2, #0
 80032fc:	619a      	str	r2, [r3, #24]
  hdma_tx.Init.Mode                = DMA_NORMAL;
 80032fe:	4b39      	ldr	r3, [pc, #228]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003300:	2200      	movs	r2, #0
 8003302:	61da      	str	r2, [r3, #28]
  hdma_tx.Init.Priority            = DMA_PRIORITY_LOW;
 8003304:	4b37      	ldr	r3, [pc, #220]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003306:	2200      	movs	r2, #0
 8003308:	621a      	str	r2, [r3, #32]
  hdma_tx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;
 800330a:	4b36      	ldr	r3, [pc, #216]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 800330c:	2200      	movs	r2, #0
 800330e:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_tx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 8003310:	4b34      	ldr	r3, [pc, #208]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003312:	2203      	movs	r2, #3
 8003314:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_tx.Init.MemBurst            = DMA_MBURST_INC4;
 8003316:	4b33      	ldr	r3, [pc, #204]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003318:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 800331c:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_tx.Init.PeriphBurst         = DMA_PBURST_INC4;
 800331e:	4b31      	ldr	r3, [pc, #196]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003320:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8003324:	631a      	str	r2, [r3, #48]	; 0x30
  
  HAL_DMA_Init(&hdma_tx);   
 8003326:	482f      	ldr	r0, [pc, #188]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003328:	f7fd fd4a 	bl	8000dc0 <HAL_DMA_Init>
  
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmatx, hdma_tx);
 800332c:	687b      	ldr	r3, [r7, #4]
 800332e:	4a2d      	ldr	r2, [pc, #180]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003330:	635a      	str	r2, [r3, #52]	; 0x34
 8003332:	4a2c      	ldr	r2, [pc, #176]	; (80033e4 <HAL_UART_MspInit+0x1c0>)
 8003334:	687b      	ldr	r3, [r7, #4]
 8003336:	6393      	str	r3, [r2, #56]	; 0x38
    
  /* Configure the DMA handler for Transmission process */
  hdma_rx.Instance                 = USARTx_RX_DMA_STREAM;
 8003338:	4b2c      	ldr	r3, [pc, #176]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800333a:	4a2d      	ldr	r2, [pc, #180]	; (80033f0 <HAL_UART_MspInit+0x1cc>)
 800333c:	601a      	str	r2, [r3, #0]
  
  hdma_rx.Init.Channel             = USARTx_RX_DMA_CHANNEL;
 800333e:	4b2b      	ldr	r3, [pc, #172]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003340:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8003344:	605a      	str	r2, [r3, #4]
  hdma_rx.Init.Direction           = DMA_PERIPH_TO_MEMORY;
 8003346:	4b29      	ldr	r3, [pc, #164]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003348:	2200      	movs	r2, #0
 800334a:	609a      	str	r2, [r3, #8]
  hdma_rx.Init.PeriphInc           = DMA_PINC_DISABLE;
 800334c:	4b27      	ldr	r3, [pc, #156]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800334e:	2200      	movs	r2, #0
 8003350:	60da      	str	r2, [r3, #12]
  hdma_rx.Init.MemInc              = DMA_MINC_ENABLE;
 8003352:	4b26      	ldr	r3, [pc, #152]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003354:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8003358:	611a      	str	r2, [r3, #16]
  hdma_rx.Init.PeriphDataAlignment = DMA_PDATAALIGN_BYTE;
 800335a:	4b24      	ldr	r3, [pc, #144]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800335c:	2200      	movs	r2, #0
 800335e:	615a      	str	r2, [r3, #20]
  hdma_rx.Init.MemDataAlignment    = DMA_MDATAALIGN_BYTE;
 8003360:	4b22      	ldr	r3, [pc, #136]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003362:	2200      	movs	r2, #0
 8003364:	619a      	str	r2, [r3, #24]
  hdma_rx.Init.Mode                = DMA_NORMAL;
 8003366:	4b21      	ldr	r3, [pc, #132]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003368:	2200      	movs	r2, #0
 800336a:	61da      	str	r2, [r3, #28]
  hdma_rx.Init.Priority            = DMA_PRIORITY_HIGH;
 800336c:	4b1f      	ldr	r3, [pc, #124]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800336e:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 8003372:	621a      	str	r2, [r3, #32]
  hdma_rx.Init.FIFOMode            = DMA_FIFOMODE_DISABLE;         
 8003374:	4b1d      	ldr	r3, [pc, #116]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003376:	2200      	movs	r2, #0
 8003378:	625a      	str	r2, [r3, #36]	; 0x24
  hdma_rx.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
 800337a:	4b1c      	ldr	r3, [pc, #112]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800337c:	2203      	movs	r2, #3
 800337e:	629a      	str	r2, [r3, #40]	; 0x28
  hdma_rx.Init.MemBurst            = DMA_MBURST_INC4;
 8003380:	4b1a      	ldr	r3, [pc, #104]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003382:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8003386:	62da      	str	r2, [r3, #44]	; 0x2c
  hdma_rx.Init.PeriphBurst         = DMA_PBURST_INC4; 
 8003388:	4b18      	ldr	r3, [pc, #96]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800338a:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 800338e:	631a      	str	r2, [r3, #48]	; 0x30

  HAL_DMA_Init(&hdma_rx);
 8003390:	4816      	ldr	r0, [pc, #88]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 8003392:	f7fd fd15 	bl	8000dc0 <HAL_DMA_Init>
    
  /* Associate the initialized DMA handle to the the UART handle */
  __HAL_LINKDMA(huart, hdmarx, hdma_rx);
 8003396:	687b      	ldr	r3, [r7, #4]
 8003398:	4a14      	ldr	r2, [pc, #80]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800339a:	639a      	str	r2, [r3, #56]	; 0x38
 800339c:	4a13      	ldr	r2, [pc, #76]	; (80033ec <HAL_UART_MspInit+0x1c8>)
 800339e:	687b      	ldr	r3, [r7, #4]
 80033a0:	6393      	str	r3, [r2, #56]	; 0x38
    
  /*##-4- Configure the NVIC for DMA #########################################*/
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_TX) */
  HAL_NVIC_SetPriority(USARTx_DMA_TX_IRQn, 0, 1);
 80033a2:	2201      	movs	r2, #1
 80033a4:	2100      	movs	r1, #0
 80033a6:	2011      	movs	r0, #17
 80033a8:	f7fd f869 	bl	800047e <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_TX_IRQn);
 80033ac:	2011      	movs	r0, #17
 80033ae:	f7fd f882 	bl	80004b6 <HAL_NVIC_EnableIRQ>
    
  /* NVIC configuration for DMA transfer complete interrupt (USARTx_RX) */
  HAL_NVIC_SetPriority(USARTx_DMA_RX_IRQn, 0, 0);   
 80033b2:	2200      	movs	r2, #0
 80033b4:	2100      	movs	r1, #0
 80033b6:	2010      	movs	r0, #16
 80033b8:	f7fd f861 	bl	800047e <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_DMA_RX_IRQn);
 80033bc:	2010      	movs	r0, #16
 80033be:	f7fd f87a 	bl	80004b6 <HAL_NVIC_EnableIRQ>
  
  /* NVIC configuration for USART TC interrupt */
  HAL_NVIC_SetPriority(USARTx_IRQn, 0, 0);
 80033c2:	2200      	movs	r2, #0
 80033c4:	2100      	movs	r1, #0
 80033c6:	2026      	movs	r0, #38	; 0x26
 80033c8:	f7fd f859 	bl	800047e <HAL_NVIC_SetPriority>
  HAL_NVIC_EnableIRQ(USARTx_IRQn);
 80033cc:	2026      	movs	r0, #38	; 0x26
 80033ce:	f7fd f872 	bl	80004b6 <HAL_NVIC_EnableIRQ>
}
 80033d2:	bf00      	nop
 80033d4:	3730      	adds	r7, #48	; 0x30
 80033d6:	46bd      	mov	sp, r7
 80033d8:	bd80      	pop	{r7, pc}
 80033da:	bf00      	nop
 80033dc:	40023800 	.word	0x40023800
 80033e0:	40020000 	.word	0x40020000
 80033e4:	200006e4 	.word	0x200006e4
 80033e8:	400260a0 	.word	0x400260a0
 80033ec:	20000744 	.word	0x20000744
 80033f0:	40026088 	.word	0x40026088

080033f4 <NMI_Handler>:
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
 80033f4:	b480      	push	{r7}
 80033f6:	af00      	add	r7, sp, #0
}
 80033f8:	bf00      	nop
 80033fa:	46bd      	mov	sp, r7
 80033fc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003400:	4770      	bx	lr

08003402 <MemManage_Handler>:
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
 8003402:	b480      	push	{r7}
 8003404:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
 8003406:	e7fe      	b.n	8003406 <MemManage_Handler+0x4>

08003408 <BusFault_Handler>:
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
 8003408:	b480      	push	{r7}
 800340a:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
 800340c:	e7fe      	b.n	800340c <BusFault_Handler+0x4>

0800340e <UsageFault_Handler>:
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
 800340e:	b480      	push	{r7}
 8003410:	af00      	add	r7, sp, #0
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
 8003412:	e7fe      	b.n	8003412 <UsageFault_Handler+0x4>

08003414 <SVC_Handler>:
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
 8003414:	b480      	push	{r7}
 8003416:	af00      	add	r7, sp, #0
}
 8003418:	bf00      	nop
 800341a:	46bd      	mov	sp, r7
 800341c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8003420:	4770      	bx	lr

08003422 <DebugMon_Handler>:
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
 8003422:	b480      	push	{r7}
 8003424:	af00      	add	r7, sp, #0
}
 8003426:	bf00      	nop
 8003428:	46bd      	mov	sp, r7
 800342a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800342e:	4770      	bx	lr

08003430 <SysTick_Handler>:
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
 8003430:	b580      	push	{r7, lr}
 8003432:	af00      	add	r7, sp, #0
  HAL_IncTick();
 8003434:	f7fc ff20 	bl	8000278 <HAL_IncTick>
}
 8003438:	bf00      	nop
 800343a:	bd80      	pop	{r7, pc}

0800343c <SystemInit>:
  *         configuration.
  * @param  None
  * @retval None
  */
void SystemInit(void)
{
 800343c:	b480      	push	{r7}
 800343e:	af00      	add	r7, sp, #0
  /* FPU settings ------------------------------------------------------------*/
  #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
    SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
 8003440:	4b16      	ldr	r3, [pc, #88]	; (800349c <SystemInit+0x60>)
 8003442:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003446:	4a15      	ldr	r2, [pc, #84]	; (800349c <SystemInit+0x60>)
 8003448:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800344c:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
  #endif
  /* Reset the RCC clock configuration to the default reset state ------------*/
  /* Set HSION bit */
  RCC->CR |= (uint32_t)0x00000001;
 8003450:	4b13      	ldr	r3, [pc, #76]	; (80034a0 <SystemInit+0x64>)
 8003452:	681b      	ldr	r3, [r3, #0]
 8003454:	4a12      	ldr	r2, [pc, #72]	; (80034a0 <SystemInit+0x64>)
 8003456:	f043 0301 	orr.w	r3, r3, #1
 800345a:	6013      	str	r3, [r2, #0]

  /* Reset CFGR register */
  RCC->CFGR = 0x00000000;
 800345c:	4b10      	ldr	r3, [pc, #64]	; (80034a0 <SystemInit+0x64>)
 800345e:	2200      	movs	r2, #0
 8003460:	609a      	str	r2, [r3, #8]

  /* Reset HSEON, CSSON and PLLON bits */
  RCC->CR &= (uint32_t)0xFEF6FFFF;
 8003462:	4b0f      	ldr	r3, [pc, #60]	; (80034a0 <SystemInit+0x64>)
 8003464:	681b      	ldr	r3, [r3, #0]
 8003466:	4a0e      	ldr	r2, [pc, #56]	; (80034a0 <SystemInit+0x64>)
 8003468:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 800346c:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8003470:	6013      	str	r3, [r2, #0]

  /* Reset PLLCFGR register */
  RCC->PLLCFGR = 0x24003010;
 8003472:	4b0b      	ldr	r3, [pc, #44]	; (80034a0 <SystemInit+0x64>)
 8003474:	4a0b      	ldr	r2, [pc, #44]	; (80034a4 <SystemInit+0x68>)
 8003476:	605a      	str	r2, [r3, #4]

  /* Reset HSEBYP bit */
  RCC->CR &= (uint32_t)0xFFFBFFFF;
 8003478:	4b09      	ldr	r3, [pc, #36]	; (80034a0 <SystemInit+0x64>)
 800347a:	681b      	ldr	r3, [r3, #0]
 800347c:	4a08      	ldr	r2, [pc, #32]	; (80034a0 <SystemInit+0x64>)
 800347e:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8003482:	6013      	str	r3, [r2, #0]

  /* Disable all interrupts */
  RCC->CIR = 0x00000000;
 8003484:	4b06      	ldr	r3, [pc, #24]	; (80034a0 <SystemInit+0x64>)
 8003486:	2200      	movs	r2, #0
 8003488:	60da      	str	r2, [r3, #12]

  /* Configure the Vector Table location add offset address ------------------*/
#ifdef VECT_TAB_SRAM
  SCB->VTOR = SRAM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
#else
  SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
 800348a:	4b04      	ldr	r3, [pc, #16]	; (800349c <SystemInit+0x60>)
 800348c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8003490:	609a      	str	r2, [r3, #8]
#endif
}
 8003492:	bf00      	nop
 8003494:	46bd      	mov	sp, r7
 8003496:	f85d 7b04 	ldr.w	r7, [sp], #4
 800349a:	4770      	bx	lr
 800349c:	e000ed00 	.word	0xe000ed00
 80034a0:	40023800 	.word	0x40023800
 80034a4:	24003010 	.word	0x24003010

080034a8 <BSP_LED_On>:
  * @param  Led: Specifies the Led to be set on. 
  *   This parameter can be one of following parameters:
  *     @arg LED2
  */
void BSP_LED_On(Led_TypeDef Led)
{
 80034a8:	b580      	push	{r7, lr}
 80034aa:	b082      	sub	sp, #8
 80034ac:	af00      	add	r7, sp, #0
 80034ae:	4603      	mov	r3, r0
 80034b0:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(GPIO_PORT[Led], GPIO_PIN[Led], GPIO_PIN_SET); 
 80034b2:	79fb      	ldrb	r3, [r7, #7]
 80034b4:	4a05      	ldr	r2, [pc, #20]	; (80034cc <BSP_LED_On+0x24>)
 80034b6:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80034ba:	2120      	movs	r1, #32
 80034bc:	2201      	movs	r2, #1
 80034be:	4618      	mov	r0, r3
 80034c0:	f7fd ff5e 	bl	8001380 <HAL_GPIO_WritePin>
}
 80034c4:	bf00      	nop
 80034c6:	3708      	adds	r7, #8
 80034c8:	46bd      	mov	sp, r7
 80034ca:	bd80      	pop	{r7, pc}
 80034cc:	2000000c 	.word	0x2000000c

080034d0 <Reset_Handler>:

    .section  .text.Reset_Handler
  .weak  Reset_Handler
  .type  Reset_Handler, %function
Reset_Handler:  
  ldr   sp, =_estack    		 /* set stack pointer */
 80034d0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8003508 <LoopFillZerobss+0x14>

/* Copy the data segment initializers from flash to SRAM */  
  movs  r1, #0
 80034d4:	2100      	movs	r1, #0
  b  LoopCopyDataInit
 80034d6:	e003      	b.n	80034e0 <LoopCopyDataInit>

080034d8 <CopyDataInit>:

CopyDataInit:
  ldr  r3, =_sidata
 80034d8:	4b0c      	ldr	r3, [pc, #48]	; (800350c <LoopFillZerobss+0x18>)
  ldr  r3, [r3, r1]
 80034da:	585b      	ldr	r3, [r3, r1]
  str  r3, [r0, r1]
 80034dc:	5043      	str	r3, [r0, r1]
  adds  r1, r1, #4
 80034de:	3104      	adds	r1, #4

080034e0 <LoopCopyDataInit>:
    
LoopCopyDataInit:
  ldr  r0, =_sdata
 80034e0:	480b      	ldr	r0, [pc, #44]	; (8003510 <LoopFillZerobss+0x1c>)
  ldr  r3, =_edata
 80034e2:	4b0c      	ldr	r3, [pc, #48]	; (8003514 <LoopFillZerobss+0x20>)
  adds  r2, r0, r1
 80034e4:	1842      	adds	r2, r0, r1
  cmp  r2, r3
 80034e6:	429a      	cmp	r2, r3
  bcc  CopyDataInit
 80034e8:	d3f6      	bcc.n	80034d8 <CopyDataInit>
  ldr  r2, =_sbss
 80034ea:	4a0b      	ldr	r2, [pc, #44]	; (8003518 <LoopFillZerobss+0x24>)
  b  LoopFillZerobss
 80034ec:	e002      	b.n	80034f4 <LoopFillZerobss>

080034ee <FillZerobss>:
/* Zero fill the bss segment. */  
FillZerobss:
  movs  r3, #0
 80034ee:	2300      	movs	r3, #0
  str  r3, [r2], #4
 80034f0:	f842 3b04 	str.w	r3, [r2], #4

080034f4 <LoopFillZerobss>:
    
LoopFillZerobss:
  ldr  r3, = _ebss
 80034f4:	4b09      	ldr	r3, [pc, #36]	; (800351c <LoopFillZerobss+0x28>)
  cmp  r2, r3
 80034f6:	429a      	cmp	r2, r3
  bcc  FillZerobss
 80034f8:	d3f9      	bcc.n	80034ee <FillZerobss>

/* Call the clock system intitialization function.*/
  bl  SystemInit   
 80034fa:	f7ff ff9f 	bl	800343c <SystemInit>
/* Call static constructors */
    bl __libc_init_array
 80034fe:	f000 f991 	bl	8003824 <__libc_init_array>
/* Call the application's entry point.*/
  bl  main
 8003502:	f7ff fde4 	bl	80030ce <main>
  bx  lr    
 8003506:	4770      	bx	lr
  ldr   sp, =_estack    		 /* set stack pointer */
 8003508:	20017fff 	.word	0x20017fff
  ldr  r3, =_sidata
 800350c:	080045e4 	.word	0x080045e4
  ldr  r0, =_sdata
 8003510:	20000000 	.word	0x20000000
  ldr  r3, =_edata
 8003514:	20000448 	.word	0x20000448
  ldr  r2, =_sbss
 8003518:	20000600 	.word	0x20000600
  ldr  r3, = _ebss
 800351c:	20000814 	.word	0x20000814

08003520 <ADC_IRQHandler>:
 * @retval None       
*/
    .section  .text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
  b  Infinite_Loop
 8003520:	e7fe      	b.n	8003520 <ADC_IRQHandler>
	...

08003524 <__aeabi_uldivmod>:
 8003524:	b953      	cbnz	r3, 800353c <__aeabi_uldivmod+0x18>
 8003526:	b94a      	cbnz	r2, 800353c <__aeabi_uldivmod+0x18>
 8003528:	2900      	cmp	r1, #0
 800352a:	bf08      	it	eq
 800352c:	2800      	cmpeq	r0, #0
 800352e:	bf1c      	itt	ne
 8003530:	f04f 31ff 	movne.w	r1, #4294967295
 8003534:	f04f 30ff 	movne.w	r0, #4294967295
 8003538:	f000 b972 	b.w	8003820 <__aeabi_idiv0>
 800353c:	f1ad 0c08 	sub.w	ip, sp, #8
 8003540:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8003544:	f000 f806 	bl	8003554 <__udivmoddi4>
 8003548:	f8dd e004 	ldr.w	lr, [sp, #4]
 800354c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8003550:	b004      	add	sp, #16
 8003552:	4770      	bx	lr

08003554 <__udivmoddi4>:
 8003554:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8003558:	9e08      	ldr	r6, [sp, #32]
 800355a:	4604      	mov	r4, r0
 800355c:	4688      	mov	r8, r1
 800355e:	2b00      	cmp	r3, #0
 8003560:	d14b      	bne.n	80035fa <__udivmoddi4+0xa6>
 8003562:	428a      	cmp	r2, r1
 8003564:	4615      	mov	r5, r2
 8003566:	d967      	bls.n	8003638 <__udivmoddi4+0xe4>
 8003568:	fab2 f282 	clz	r2, r2
 800356c:	b14a      	cbz	r2, 8003582 <__udivmoddi4+0x2e>
 800356e:	f1c2 0720 	rsb	r7, r2, #32
 8003572:	fa01 f302 	lsl.w	r3, r1, r2
 8003576:	fa20 f707 	lsr.w	r7, r0, r7
 800357a:	4095      	lsls	r5, r2
 800357c:	ea47 0803 	orr.w	r8, r7, r3
 8003580:	4094      	lsls	r4, r2
 8003582:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 8003586:	0c23      	lsrs	r3, r4, #16
 8003588:	fbb8 f7fe 	udiv	r7, r8, lr
 800358c:	fa1f fc85 	uxth.w	ip, r5
 8003590:	fb0e 8817 	mls	r8, lr, r7, r8
 8003594:	ea43 4308 	orr.w	r3, r3, r8, lsl #16
 8003598:	fb07 f10c 	mul.w	r1, r7, ip
 800359c:	4299      	cmp	r1, r3
 800359e:	d909      	bls.n	80035b4 <__udivmoddi4+0x60>
 80035a0:	18eb      	adds	r3, r5, r3
 80035a2:	f107 30ff 	add.w	r0, r7, #4294967295
 80035a6:	f080 811b 	bcs.w	80037e0 <__udivmoddi4+0x28c>
 80035aa:	4299      	cmp	r1, r3
 80035ac:	f240 8118 	bls.w	80037e0 <__udivmoddi4+0x28c>
 80035b0:	3f02      	subs	r7, #2
 80035b2:	442b      	add	r3, r5
 80035b4:	1a5b      	subs	r3, r3, r1
 80035b6:	b2a4      	uxth	r4, r4
 80035b8:	fbb3 f0fe 	udiv	r0, r3, lr
 80035bc:	fb0e 3310 	mls	r3, lr, r0, r3
 80035c0:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80035c4:	fb00 fc0c 	mul.w	ip, r0, ip
 80035c8:	45a4      	cmp	ip, r4
 80035ca:	d909      	bls.n	80035e0 <__udivmoddi4+0x8c>
 80035cc:	192c      	adds	r4, r5, r4
 80035ce:	f100 33ff 	add.w	r3, r0, #4294967295
 80035d2:	f080 8107 	bcs.w	80037e4 <__udivmoddi4+0x290>
 80035d6:	45a4      	cmp	ip, r4
 80035d8:	f240 8104 	bls.w	80037e4 <__udivmoddi4+0x290>
 80035dc:	3802      	subs	r0, #2
 80035de:	442c      	add	r4, r5
 80035e0:	ea40 4007 	orr.w	r0, r0, r7, lsl #16
 80035e4:	eba4 040c 	sub.w	r4, r4, ip
 80035e8:	2700      	movs	r7, #0
 80035ea:	b11e      	cbz	r6, 80035f4 <__udivmoddi4+0xa0>
 80035ec:	40d4      	lsrs	r4, r2
 80035ee:	2300      	movs	r3, #0
 80035f0:	e9c6 4300 	strd	r4, r3, [r6]
 80035f4:	4639      	mov	r1, r7
 80035f6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80035fa:	428b      	cmp	r3, r1
 80035fc:	d909      	bls.n	8003612 <__udivmoddi4+0xbe>
 80035fe:	2e00      	cmp	r6, #0
 8003600:	f000 80eb 	beq.w	80037da <__udivmoddi4+0x286>
 8003604:	2700      	movs	r7, #0
 8003606:	e9c6 0100 	strd	r0, r1, [r6]
 800360a:	4638      	mov	r0, r7
 800360c:	4639      	mov	r1, r7
 800360e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8003612:	fab3 f783 	clz	r7, r3
 8003616:	2f00      	cmp	r7, #0
 8003618:	d147      	bne.n	80036aa <__udivmoddi4+0x156>
 800361a:	428b      	cmp	r3, r1
 800361c:	d302      	bcc.n	8003624 <__udivmoddi4+0xd0>
 800361e:	4282      	cmp	r2, r0
 8003620:	f200 80fa 	bhi.w	8003818 <__udivmoddi4+0x2c4>
 8003624:	1a84      	subs	r4, r0, r2
 8003626:	eb61 0303 	sbc.w	r3, r1, r3
 800362a:	2001      	movs	r0, #1
 800362c:	4698      	mov	r8, r3
 800362e:	2e00      	cmp	r6, #0
 8003630:	d0e0      	beq.n	80035f4 <__udivmoddi4+0xa0>
 8003632:	e9c6 4800 	strd	r4, r8, [r6]
 8003636:	e7dd      	b.n	80035f4 <__udivmoddi4+0xa0>
 8003638:	b902      	cbnz	r2, 800363c <__udivmoddi4+0xe8>
 800363a:	deff      	udf	#255	; 0xff
 800363c:	fab2 f282 	clz	r2, r2
 8003640:	2a00      	cmp	r2, #0
 8003642:	f040 808f 	bne.w	8003764 <__udivmoddi4+0x210>
 8003646:	1b49      	subs	r1, r1, r5
 8003648:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 800364c:	fa1f f885 	uxth.w	r8, r5
 8003650:	2701      	movs	r7, #1
 8003652:	fbb1 fcfe 	udiv	ip, r1, lr
 8003656:	0c23      	lsrs	r3, r4, #16
 8003658:	fb0e 111c 	mls	r1, lr, ip, r1
 800365c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8003660:	fb08 f10c 	mul.w	r1, r8, ip
 8003664:	4299      	cmp	r1, r3
 8003666:	d907      	bls.n	8003678 <__udivmoddi4+0x124>
 8003668:	18eb      	adds	r3, r5, r3
 800366a:	f10c 30ff 	add.w	r0, ip, #4294967295
 800366e:	d202      	bcs.n	8003676 <__udivmoddi4+0x122>
 8003670:	4299      	cmp	r1, r3
 8003672:	f200 80cd 	bhi.w	8003810 <__udivmoddi4+0x2bc>
 8003676:	4684      	mov	ip, r0
 8003678:	1a59      	subs	r1, r3, r1
 800367a:	b2a3      	uxth	r3, r4
 800367c:	fbb1 f0fe 	udiv	r0, r1, lr
 8003680:	fb0e 1410 	mls	r4, lr, r0, r1
 8003684:	ea43 4404 	orr.w	r4, r3, r4, lsl #16
 8003688:	fb08 f800 	mul.w	r8, r8, r0
 800368c:	45a0      	cmp	r8, r4
 800368e:	d907      	bls.n	80036a0 <__udivmoddi4+0x14c>
 8003690:	192c      	adds	r4, r5, r4
 8003692:	f100 33ff 	add.w	r3, r0, #4294967295
 8003696:	d202      	bcs.n	800369e <__udivmoddi4+0x14a>
 8003698:	45a0      	cmp	r8, r4
 800369a:	f200 80b6 	bhi.w	800380a <__udivmoddi4+0x2b6>
 800369e:	4618      	mov	r0, r3
 80036a0:	eba4 0408 	sub.w	r4, r4, r8
 80036a4:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 80036a8:	e79f      	b.n	80035ea <__udivmoddi4+0x96>
 80036aa:	f1c7 0c20 	rsb	ip, r7, #32
 80036ae:	40bb      	lsls	r3, r7
 80036b0:	fa22 fe0c 	lsr.w	lr, r2, ip
 80036b4:	ea4e 0e03 	orr.w	lr, lr, r3
 80036b8:	fa01 f407 	lsl.w	r4, r1, r7
 80036bc:	fa20 f50c 	lsr.w	r5, r0, ip
 80036c0:	fa21 f30c 	lsr.w	r3, r1, ip
 80036c4:	ea4f 481e 	mov.w	r8, lr, lsr #16
 80036c8:	4325      	orrs	r5, r4
 80036ca:	fbb3 f9f8 	udiv	r9, r3, r8
 80036ce:	0c2c      	lsrs	r4, r5, #16
 80036d0:	fb08 3319 	mls	r3, r8, r9, r3
 80036d4:	fa1f fa8e 	uxth.w	sl, lr
 80036d8:	ea44 4303 	orr.w	r3, r4, r3, lsl #16
 80036dc:	fb09 f40a 	mul.w	r4, r9, sl
 80036e0:	429c      	cmp	r4, r3
 80036e2:	fa02 f207 	lsl.w	r2, r2, r7
 80036e6:	fa00 f107 	lsl.w	r1, r0, r7
 80036ea:	d90b      	bls.n	8003704 <__udivmoddi4+0x1b0>
 80036ec:	eb1e 0303 	adds.w	r3, lr, r3
 80036f0:	f109 30ff 	add.w	r0, r9, #4294967295
 80036f4:	f080 8087 	bcs.w	8003806 <__udivmoddi4+0x2b2>
 80036f8:	429c      	cmp	r4, r3
 80036fa:	f240 8084 	bls.w	8003806 <__udivmoddi4+0x2b2>
 80036fe:	f1a9 0902 	sub.w	r9, r9, #2
 8003702:	4473      	add	r3, lr
 8003704:	1b1b      	subs	r3, r3, r4
 8003706:	b2ad      	uxth	r5, r5
 8003708:	fbb3 f0f8 	udiv	r0, r3, r8
 800370c:	fb08 3310 	mls	r3, r8, r0, r3
 8003710:	ea45 4403 	orr.w	r4, r5, r3, lsl #16
 8003714:	fb00 fa0a 	mul.w	sl, r0, sl
 8003718:	45a2      	cmp	sl, r4
 800371a:	d908      	bls.n	800372e <__udivmoddi4+0x1da>
 800371c:	eb1e 0404 	adds.w	r4, lr, r4
 8003720:	f100 33ff 	add.w	r3, r0, #4294967295
 8003724:	d26b      	bcs.n	80037fe <__udivmoddi4+0x2aa>
 8003726:	45a2      	cmp	sl, r4
 8003728:	d969      	bls.n	80037fe <__udivmoddi4+0x2aa>
 800372a:	3802      	subs	r0, #2
 800372c:	4474      	add	r4, lr
 800372e:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 8003732:	fba0 8902 	umull	r8, r9, r0, r2
 8003736:	eba4 040a 	sub.w	r4, r4, sl
 800373a:	454c      	cmp	r4, r9
 800373c:	46c2      	mov	sl, r8
 800373e:	464b      	mov	r3, r9
 8003740:	d354      	bcc.n	80037ec <__udivmoddi4+0x298>
 8003742:	d051      	beq.n	80037e8 <__udivmoddi4+0x294>
 8003744:	2e00      	cmp	r6, #0
 8003746:	d069      	beq.n	800381c <__udivmoddi4+0x2c8>
 8003748:	ebb1 050a 	subs.w	r5, r1, sl
 800374c:	eb64 0403 	sbc.w	r4, r4, r3
 8003750:	fa04 fc0c 	lsl.w	ip, r4, ip
 8003754:	40fd      	lsrs	r5, r7
 8003756:	40fc      	lsrs	r4, r7
 8003758:	ea4c 0505 	orr.w	r5, ip, r5
 800375c:	e9c6 5400 	strd	r5, r4, [r6]
 8003760:	2700      	movs	r7, #0
 8003762:	e747      	b.n	80035f4 <__udivmoddi4+0xa0>
 8003764:	f1c2 0320 	rsb	r3, r2, #32
 8003768:	fa20 f703 	lsr.w	r7, r0, r3
 800376c:	4095      	lsls	r5, r2
 800376e:	fa01 f002 	lsl.w	r0, r1, r2
 8003772:	fa21 f303 	lsr.w	r3, r1, r3
 8003776:	ea4f 4e15 	mov.w	lr, r5, lsr #16
 800377a:	4338      	orrs	r0, r7
 800377c:	0c01      	lsrs	r1, r0, #16
 800377e:	fbb3 f7fe 	udiv	r7, r3, lr
 8003782:	fa1f f885 	uxth.w	r8, r5
 8003786:	fb0e 3317 	mls	r3, lr, r7, r3
 800378a:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 800378e:	fb07 f308 	mul.w	r3, r7, r8
 8003792:	428b      	cmp	r3, r1
 8003794:	fa04 f402 	lsl.w	r4, r4, r2
 8003798:	d907      	bls.n	80037aa <__udivmoddi4+0x256>
 800379a:	1869      	adds	r1, r5, r1
 800379c:	f107 3cff 	add.w	ip, r7, #4294967295
 80037a0:	d22f      	bcs.n	8003802 <__udivmoddi4+0x2ae>
 80037a2:	428b      	cmp	r3, r1
 80037a4:	d92d      	bls.n	8003802 <__udivmoddi4+0x2ae>
 80037a6:	3f02      	subs	r7, #2
 80037a8:	4429      	add	r1, r5
 80037aa:	1acb      	subs	r3, r1, r3
 80037ac:	b281      	uxth	r1, r0
 80037ae:	fbb3 f0fe 	udiv	r0, r3, lr
 80037b2:	fb0e 3310 	mls	r3, lr, r0, r3
 80037b6:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 80037ba:	fb00 f308 	mul.w	r3, r0, r8
 80037be:	428b      	cmp	r3, r1
 80037c0:	d907      	bls.n	80037d2 <__udivmoddi4+0x27e>
 80037c2:	1869      	adds	r1, r5, r1
 80037c4:	f100 3cff 	add.w	ip, r0, #4294967295
 80037c8:	d217      	bcs.n	80037fa <__udivmoddi4+0x2a6>
 80037ca:	428b      	cmp	r3, r1
 80037cc:	d915      	bls.n	80037fa <__udivmoddi4+0x2a6>
 80037ce:	3802      	subs	r0, #2
 80037d0:	4429      	add	r1, r5
 80037d2:	1ac9      	subs	r1, r1, r3
 80037d4:	ea40 4707 	orr.w	r7, r0, r7, lsl #16
 80037d8:	e73b      	b.n	8003652 <__udivmoddi4+0xfe>
 80037da:	4637      	mov	r7, r6
 80037dc:	4630      	mov	r0, r6
 80037de:	e709      	b.n	80035f4 <__udivmoddi4+0xa0>
 80037e0:	4607      	mov	r7, r0
 80037e2:	e6e7      	b.n	80035b4 <__udivmoddi4+0x60>
 80037e4:	4618      	mov	r0, r3
 80037e6:	e6fb      	b.n	80035e0 <__udivmoddi4+0x8c>
 80037e8:	4541      	cmp	r1, r8
 80037ea:	d2ab      	bcs.n	8003744 <__udivmoddi4+0x1f0>
 80037ec:	ebb8 0a02 	subs.w	sl, r8, r2
 80037f0:	eb69 020e 	sbc.w	r2, r9, lr
 80037f4:	3801      	subs	r0, #1
 80037f6:	4613      	mov	r3, r2
 80037f8:	e7a4      	b.n	8003744 <__udivmoddi4+0x1f0>
 80037fa:	4660      	mov	r0, ip
 80037fc:	e7e9      	b.n	80037d2 <__udivmoddi4+0x27e>
 80037fe:	4618      	mov	r0, r3
 8003800:	e795      	b.n	800372e <__udivmoddi4+0x1da>
 8003802:	4667      	mov	r7, ip
 8003804:	e7d1      	b.n	80037aa <__udivmoddi4+0x256>
 8003806:	4681      	mov	r9, r0
 8003808:	e77c      	b.n	8003704 <__udivmoddi4+0x1b0>
 800380a:	3802      	subs	r0, #2
 800380c:	442c      	add	r4, r5
 800380e:	e747      	b.n	80036a0 <__udivmoddi4+0x14c>
 8003810:	f1ac 0c02 	sub.w	ip, ip, #2
 8003814:	442b      	add	r3, r5
 8003816:	e72f      	b.n	8003678 <__udivmoddi4+0x124>
 8003818:	4638      	mov	r0, r7
 800381a:	e708      	b.n	800362e <__udivmoddi4+0xda>
 800381c:	4637      	mov	r7, r6
 800381e:	e6e9      	b.n	80035f4 <__udivmoddi4+0xa0>

08003820 <__aeabi_idiv0>:
 8003820:	4770      	bx	lr
 8003822:	bf00      	nop

08003824 <__libc_init_array>:
 8003824:	b570      	push	{r4, r5, r6, lr}
 8003826:	4e0d      	ldr	r6, [pc, #52]	; (800385c <__libc_init_array+0x38>)
 8003828:	4d0d      	ldr	r5, [pc, #52]	; (8003860 <__libc_init_array+0x3c>)
 800382a:	1b76      	subs	r6, r6, r5
 800382c:	10b6      	asrs	r6, r6, #2
 800382e:	d006      	beq.n	800383e <__libc_init_array+0x1a>
 8003830:	2400      	movs	r4, #0
 8003832:	3401      	adds	r4, #1
 8003834:	f855 3b04 	ldr.w	r3, [r5], #4
 8003838:	4798      	blx	r3
 800383a:	42a6      	cmp	r6, r4
 800383c:	d1f9      	bne.n	8003832 <__libc_init_array+0xe>
 800383e:	4e09      	ldr	r6, [pc, #36]	; (8003864 <__libc_init_array+0x40>)
 8003840:	4d09      	ldr	r5, [pc, #36]	; (8003868 <__libc_init_array+0x44>)
 8003842:	1b76      	subs	r6, r6, r5
 8003844:	f000 f8ea 	bl	8003a1c <_init>
 8003848:	10b6      	asrs	r6, r6, #2
 800384a:	d006      	beq.n	800385a <__libc_init_array+0x36>
 800384c:	2400      	movs	r4, #0
 800384e:	3401      	adds	r4, #1
 8003850:	f855 3b04 	ldr.w	r3, [r5], #4
 8003854:	4798      	blx	r3
 8003856:	42a6      	cmp	r6, r4
 8003858:	d1f9      	bne.n	800384e <__libc_init_array+0x2a>
 800385a:	bd70      	pop	{r4, r5, r6, pc}
 800385c:	2000043c 	.word	0x2000043c
 8003860:	2000043c 	.word	0x2000043c
 8003864:	20000444 	.word	0x20000444
 8003868:	2000043c 	.word	0x2000043c

0800386c <memset>:
 800386c:	b4f0      	push	{r4, r5, r6, r7}
 800386e:	0786      	lsls	r6, r0, #30
 8003870:	d043      	beq.n	80038fa <memset+0x8e>
 8003872:	1e54      	subs	r4, r2, #1
 8003874:	2a00      	cmp	r2, #0
 8003876:	d03e      	beq.n	80038f6 <memset+0x8a>
 8003878:	b2ca      	uxtb	r2, r1
 800387a:	4603      	mov	r3, r0
 800387c:	e002      	b.n	8003884 <memset+0x18>
 800387e:	f114 34ff 	adds.w	r4, r4, #4294967295
 8003882:	d338      	bcc.n	80038f6 <memset+0x8a>
 8003884:	f803 2b01 	strb.w	r2, [r3], #1
 8003888:	079d      	lsls	r5, r3, #30
 800388a:	d1f8      	bne.n	800387e <memset+0x12>
 800388c:	2c03      	cmp	r4, #3
 800388e:	d92b      	bls.n	80038e8 <memset+0x7c>
 8003890:	b2cd      	uxtb	r5, r1
 8003892:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8003896:	2c0f      	cmp	r4, #15
 8003898:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800389c:	d916      	bls.n	80038cc <memset+0x60>
 800389e:	f1a4 0710 	sub.w	r7, r4, #16
 80038a2:	093f      	lsrs	r7, r7, #4
 80038a4:	f103 0620 	add.w	r6, r3, #32
 80038a8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80038ac:	f103 0210 	add.w	r2, r3, #16
 80038b0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80038b4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80038b8:	3210      	adds	r2, #16
 80038ba:	42b2      	cmp	r2, r6
 80038bc:	d1f8      	bne.n	80038b0 <memset+0x44>
 80038be:	f004 040f 	and.w	r4, r4, #15
 80038c2:	3701      	adds	r7, #1
 80038c4:	2c03      	cmp	r4, #3
 80038c6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80038ca:	d90d      	bls.n	80038e8 <memset+0x7c>
 80038cc:	461e      	mov	r6, r3
 80038ce:	4622      	mov	r2, r4
 80038d0:	3a04      	subs	r2, #4
 80038d2:	2a03      	cmp	r2, #3
 80038d4:	f846 5b04 	str.w	r5, [r6], #4
 80038d8:	d8fa      	bhi.n	80038d0 <memset+0x64>
 80038da:	1f22      	subs	r2, r4, #4
 80038dc:	f022 0203 	bic.w	r2, r2, #3
 80038e0:	3204      	adds	r2, #4
 80038e2:	4413      	add	r3, r2
 80038e4:	f004 0403 	and.w	r4, r4, #3
 80038e8:	b12c      	cbz	r4, 80038f6 <memset+0x8a>
 80038ea:	b2c9      	uxtb	r1, r1
 80038ec:	441c      	add	r4, r3
 80038ee:	f803 1b01 	strb.w	r1, [r3], #1
 80038f2:	429c      	cmp	r4, r3
 80038f4:	d1fb      	bne.n	80038ee <memset+0x82>
 80038f6:	bcf0      	pop	{r4, r5, r6, r7}
 80038f8:	4770      	bx	lr
 80038fa:	4614      	mov	r4, r2
 80038fc:	4603      	mov	r3, r0
 80038fe:	e7c5      	b.n	800388c <memset+0x20>

08003900 <register_fini>:
 8003900:	4b02      	ldr	r3, [pc, #8]	; (800390c <register_fini+0xc>)
 8003902:	b113      	cbz	r3, 800390a <register_fini+0xa>
 8003904:	4802      	ldr	r0, [pc, #8]	; (8003910 <register_fini+0x10>)
 8003906:	f000 b805 	b.w	8003914 <atexit>
 800390a:	4770      	bx	lr
 800390c:	00000000 	.word	0x00000000
 8003910:	08003921 	.word	0x08003921

08003914 <atexit>:
 8003914:	2300      	movs	r3, #0
 8003916:	4601      	mov	r1, r0
 8003918:	461a      	mov	r2, r3
 800391a:	4618      	mov	r0, r3
 800391c:	f000 b81e 	b.w	800395c <__register_exitproc>

08003920 <__libc_fini_array>:
 8003920:	b538      	push	{r3, r4, r5, lr}
 8003922:	4c0a      	ldr	r4, [pc, #40]	; (800394c <__libc_fini_array+0x2c>)
 8003924:	4d0a      	ldr	r5, [pc, #40]	; (8003950 <__libc_fini_array+0x30>)
 8003926:	1b64      	subs	r4, r4, r5
 8003928:	10a4      	asrs	r4, r4, #2
 800392a:	d00a      	beq.n	8003942 <__libc_fini_array+0x22>
 800392c:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8003930:	3b01      	subs	r3, #1
 8003932:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8003936:	3c01      	subs	r4, #1
 8003938:	f855 3904 	ldr.w	r3, [r5], #-4
 800393c:	4798      	blx	r3
 800393e:	2c00      	cmp	r4, #0
 8003940:	d1f9      	bne.n	8003936 <__libc_fini_array+0x16>
 8003942:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8003946:	f000 b86f 	b.w	8003a28 <_fini>
 800394a:	bf00      	nop
 800394c:	20000448 	.word	0x20000448
 8003950:	20000444 	.word	0x20000444

08003954 <__retarget_lock_acquire_recursive>:
 8003954:	4770      	bx	lr
 8003956:	bf00      	nop

08003958 <__retarget_lock_release_recursive>:
 8003958:	4770      	bx	lr
 800395a:	bf00      	nop

0800395c <__register_exitproc>:
 800395c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8003960:	4d2b      	ldr	r5, [pc, #172]	; (8003a10 <__register_exitproc+0xb4>)
 8003962:	4606      	mov	r6, r0
 8003964:	6828      	ldr	r0, [r5, #0]
 8003966:	4698      	mov	r8, r3
 8003968:	460f      	mov	r7, r1
 800396a:	4691      	mov	r9, r2
 800396c:	f7ff fff2 	bl	8003954 <__retarget_lock_acquire_recursive>
 8003970:	4b28      	ldr	r3, [pc, #160]	; (8003a14 <__register_exitproc+0xb8>)
 8003972:	681c      	ldr	r4, [r3, #0]
 8003974:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8003978:	2b00      	cmp	r3, #0
 800397a:	d03d      	beq.n	80039f8 <__register_exitproc+0x9c>
 800397c:	685a      	ldr	r2, [r3, #4]
 800397e:	2a1f      	cmp	r2, #31
 8003980:	dc0d      	bgt.n	800399e <__register_exitproc+0x42>
 8003982:	f102 0c01 	add.w	ip, r2, #1
 8003986:	bb16      	cbnz	r6, 80039ce <__register_exitproc+0x72>
 8003988:	3202      	adds	r2, #2
 800398a:	f8c3 c004 	str.w	ip, [r3, #4]
 800398e:	6828      	ldr	r0, [r5, #0]
 8003990:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8003994:	f7ff ffe0 	bl	8003958 <__retarget_lock_release_recursive>
 8003998:	2000      	movs	r0, #0
 800399a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800399e:	4b1e      	ldr	r3, [pc, #120]	; (8003a18 <__register_exitproc+0xbc>)
 80039a0:	b37b      	cbz	r3, 8003a02 <__register_exitproc+0xa6>
 80039a2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80039a6:	f3af 8000 	nop.w
 80039aa:	4603      	mov	r3, r0
 80039ac:	b348      	cbz	r0, 8003a02 <__register_exitproc+0xa6>
 80039ae:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80039b2:	2100      	movs	r1, #0
 80039b4:	e9c0 2100 	strd	r2, r1, [r0]
 80039b8:	f04f 0c01 	mov.w	ip, #1
 80039bc:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80039c0:	460a      	mov	r2, r1
 80039c2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80039c6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80039ca:	2e00      	cmp	r6, #0
 80039cc:	d0dc      	beq.n	8003988 <__register_exitproc+0x2c>
 80039ce:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80039d2:	2401      	movs	r4, #1
 80039d4:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80039d8:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80039dc:	4094      	lsls	r4, r2
 80039de:	4320      	orrs	r0, r4
 80039e0:	2e02      	cmp	r6, #2
 80039e2:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80039e6:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80039ea:	d1cd      	bne.n	8003988 <__register_exitproc+0x2c>
 80039ec:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80039f0:	430c      	orrs	r4, r1
 80039f2:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80039f6:	e7c7      	b.n	8003988 <__register_exitproc+0x2c>
 80039f8:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 80039fc:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8003a00:	e7bc      	b.n	800397c <__register_exitproc+0x20>
 8003a02:	6828      	ldr	r0, [r5, #0]
 8003a04:	f7ff ffa8 	bl	8003958 <__retarget_lock_release_recursive>
 8003a08:	f04f 30ff 	mov.w	r0, #4294967295
 8003a0c:	e7c5      	b.n	800399a <__register_exitproc+0x3e>
 8003a0e:	bf00      	nop
 8003a10:	20000438 	.word	0x20000438
 8003a14:	08004578 	.word	0x08004578
 8003a18:	00000000 	.word	0x00000000

08003a1c <_init>:
 8003a1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003a1e:	bf00      	nop
 8003a20:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003a22:	bc08      	pop	{r3}
 8003a24:	469e      	mov	lr, r3
 8003a26:	4770      	bx	lr

08003a28 <_fini>:
 8003a28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003a2a:	bf00      	nop
 8003a2c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003a2e:	bc08      	pop	{r3}
 8003a30:	469e      	mov	lr, r3
 8003a32:	4770      	bx	lr

08003a34 <flagBitshiftOffset.10106>:
 8003a34:	0600 1610 0600 1610 6461 7264 303a 2578     ........addr:0x%
 8003a44:	2078 6176 756c 3a65 7830 7825 0a0d 0000     x value:0x%x....
 8003a54:	3a7a 6425 000a 0000 255b 5d73 3d20 3d3d     z:%d....[%s] ===
 8003a64:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
 8003a74:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
 8003a84:	0a3d 0000 2020 6461 7264 203a 3025 6c38     =...  addr: %08l
 8003a94:	2078 2020 6420 7461 3a61 2520 3830 786c     x    data: %08lx
 8003aa4:	000a 0000 5245 4f52 3a52 5520 616e 6c62     ....ERROR: Unabl
 8003ab4:	2065 6f74 6720 7465 7420 6568 6d20 6961     e to get the mai
 8003ac4:	206e 7473 6361 206b 6e69 6f66 6d72 7461     n stack informat
 8003ad4:	6f69 2c6e 7020 656c 7361 2065 6863 6365     ion, please chec
 8003ae4:	206b 6874 2065 6f63 666e 6769 7275 7461     k the configurat
 8003af4:	6f69 206e 666f 7420 6568 6d20 6961 206e     ion of the main 
 8003b04:	7473 6361 006b 0000 6946 6d72 6177 6572     stack...Firmware
 8003b14:	6e20 6d61 3a65 2520 2c73 6820 7261 7764      name: %s, hardw
 8003b24:	7261 2065 6576 7372 6f69 3a6e 2520 2c73     are version: %s,
 8003b34:	7320 666f 7774 7261 2065 6576 7372 6f69      software versio
 8003b44:	3a6e 2520 0073 0000 7341 6573 7472 6f20     n: %s...Assert o
 8003b54:	206e 6874 6572 6461 2520 0073 7341 6573     n thread %s.Asse
 8003b64:	7472 6f20 206e 6e69 6574 7272 7075 2074     rt on interrupt 
 8003b74:	726f 6220 7261 2065 656d 6174 286c 6f6e     or bare metal(no
 8003b84:	4f20 2953 6520 766e 7269 6e6f 656d 746e      OS) environment
 8003b94:	0000 0000 3d3d 3d3d 203d 6854 6572 6461     ....===== Thread
 8003ba4:	7320 6174 6b63 6920 666e 726f 616d 6974      stack informati
 8003bb4:	6e6f 3d20 3d3d 3d3d 0000 0000 3d3d 3d3d     on =====....====
 8003bc4:	3d3d 4d20 6961 206e 7473 6361 206b 6e69     == Main stack in
 8003bd4:	6f66 6d72 7461 6f69 206e 3d3d 3d3d 3d3d     formation ======
 8003be4:	0000 0000 7245 6f72 3a72 5420 7268 6165     ....Error: Threa
 8003bf4:	2064 7473 6361 286b 3025 7838 2029 6177     d stack(%08x) wa
 8003c04:	2073 766f 7265 6c66 776f 0000 7245 6f72     s overflow..Erro
 8003c14:	3a72 4d20 6961 206e 7473 6361 286b 3025     r: Main stack(%0
 8003c24:	7838 2029 6177 2073 766f 7265 6c66 776f     8x) was overflow
 8003c34:	0000 0000 6853 776f 6d20 726f 2065 6163     ....Show more ca
 8003c44:	6c6c 7320 6174 6b63 6920 666e 206f 7962     ll stack info by
 8003c54:	7220 6e75 203a 6461 7264 6c32 6e69 2065      run: addr2line 
 8003c64:	652d 2520 2573 2073 612d 2d20 2066 2e25     -e %s%s -a -f %.
 8003c74:	732a 0000 7544 706d 6320 6c61 206c 7473     *s..Dump call st
 8003c84:	6361 206b 6168 2073 6e61 6520 7272 726f     ack has an error
 8003c94:	0000 0000 6146 6c75 2074 6e6f 7420 7268     ....Fault on thr
 8003ca4:	6165 2064 7325 0000 6146 6c75 2074 6e6f     ead %s..Fault on
 8003cb4:	6920 746e 7265 7572 7470 6f20 2072 6162      interrupt or ba
 8003cc4:	6572 6d20 7465 6c61 6e28 206f 534f 2029     re metal(no OS) 
 8003cd4:	6e65 6976 6f72 6d6e 6e65 0074 3d3d 3d3d     environment.====
 8003ce4:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 203d     =============== 
 8003cf4:	6552 6967 7473 7265 2073 6e69 6f66 6d72     Registers inform
 8003d04:	7461 6f69 206e 3d3d 3d3d 3d3d 3d3d 3d3d     ation ==========
 8003d14:	3d3d 3d3d 3d3d 3d3d 3d3d 0000 6148 6472     ==========..Hard
 8003d24:	6620 7561 746c 6920 2073 6163 7375 6465      fault is caused
 8003d34:	6220 2079 6166 6c69 6465 7620 6365 6f74      by failed vecto
 8003d44:	2072 6566 6374 0068 654d 6f6d 7972 6d20     r fetch.Memory m
 8003d54:	6e61 6761 6d65 6e65 2074 6166 6c75 2074     anagement fault 
 8003d64:	7369 6320 7561 6573 2064 7962 6920 736e     is caused by ins
 8003d74:	7274 6375 6974 6e6f 6120 6363 7365 2073     truction access 
 8003d84:	6976 6c6f 7461 6f69 006e 0000 654d 6f6d     violation...Memo
 8003d94:	7972 6d20 6e61 6761 6d65 6e65 2074 6166     ry management fa
 8003da4:	6c75 2074 7369 6320 7561 6573 2064 7962     ult is caused by
 8003db4:	6420 7461 2061 6361 6563 7373 7620 6f69      data access vio
 8003dc4:	616c 6974 6e6f 0000 654d 6f6d 7972 6d20     lation..Memory m
 8003dd4:	6e61 6761 6d65 6e65 2074 6166 6c75 2074     anagement fault 
 8003de4:	7369 6320 7561 6573 2064 7962 7520 736e     is caused by uns
 8003df4:	6174 6b63 6e69 2067 7265 6f72 0072 0000     tacking error...
 8003e04:	654d 6f6d 7972 6d20 6e61 6761 6d65 6e65     Memory managemen
 8003e14:	2074 6166 6c75 2074 7369 6320 7561 6573     t fault is cause
 8003e24:	2064 7962 7320 6174 6b63 6e69 2067 7265     d by stacking er
 8003e34:	6f72 0072 654d 6f6d 7972 6d20 6e61 6761     ror.Memory manag
 8003e44:	6d65 6e65 2074 6166 6c75 2074 7369 6320     ement fault is c
 8003e54:	7561 6573 2064 7962 6620 6f6c 7461 6e69     aused by floatin
 8003e64:	2d67 6f70 6e69 2074 616c 797a 7320 6174     g-point lazy sta
 8003e74:	6574 7020 6572 6573 7672 7461 6f69 006e     te preservation.
 8003e84:	7542 2073 6166 6c75 2074 7369 6320 7561     Bus fault is cau
 8003e94:	6573 2064 7962 6920 736e 7274 6375 6974     sed by instructi
 8003ea4:	6e6f 6120 6363 7365 2073 6976 6c6f 7461     on access violat
 8003eb4:	6f69 006e 7542 2073 6166 6c75 2074 7369     ion.Bus fault is
 8003ec4:	6320 7561 6573 2064 7962 7020 6572 6963      caused by preci
 8003ed4:	6573 6420 7461 2061 6361 6563 7373 7620     se data access v
 8003ee4:	6f69 616c 6974 6e6f 0000 0000 7542 2073     iolation....Bus 
 8003ef4:	6166 6c75 2074 7369 6320 7561 6573 2064     fault is caused 
 8003f04:	7962 6920 706d 6572 6963 6573 6420 7461     by imprecise dat
 8003f14:	2061 6361 6563 7373 7620 6f69 616c 6974     a access violati
 8003f24:	6e6f 0000 7542 2073 6166 6c75 2074 7369     on..Bus fault is
 8003f34:	6320 7561 6573 2064 7962 7520 736e 6174      caused by unsta
 8003f44:	6b63 6e69 2067 7265 6f72 0072 7542 2073     cking error.Bus 
 8003f54:	6166 6c75 2074 7369 6320 7561 6573 2064     fault is caused 
 8003f64:	7962 7320 6174 6b63 6e69 2067 7265 6f72     by stacking erro
 8003f74:	0072 0000 7542 2073 6166 6c75 2074 7369     r...Bus fault is
 8003f84:	6320 7561 6573 2064 7962 6620 6f6c 7461      caused by float
 8003f94:	6e69 2d67 6f70 6e69 2074 616c 797a 7320     ing-point lazy s
 8003fa4:	6174 6574 7020 6572 6573 7672 7461 6f69     tate preservatio
 8003fb4:	006e 0000 7355 6761 2065 6166 6c75 2074     n...Usage fault 
 8003fc4:	7369 6320 7561 6573 2064 7962 6120 7474     is caused by att
 8003fd4:	6d65 7470 2073 6f74 6520 6578 7563 6574     empts to execute
 8003fe4:	6120 206e 6e75 6564 6966 656e 2064 6e69      an undefined in
 8003ff4:	7473 7572 7463 6f69 006e 0000 7355 6761     struction...Usag
 8004004:	2065 6166 6c75 2074 7369 6320 7561 6573     e fault is cause
 8004014:	2064 7962 6120 7474 6d65 7470 2073 6f74     d by attempts to
 8004024:	7320 6977 6374 2068 6f74 6120 206e 6e69      switch to an in
 8004034:	6176 696c 2064 7473 7461 2065 6528 672e     valid state (e.g
 8004044:	2c2e 4120 4d52 0029 7355 6761 2065 6166     ., ARM).Usage fa
 8004054:	6c75 2074 7369 6320 7561 6573 2064 7962     ult is caused by
 8004064:	6120 7474 6d65 7470 2073 6f74 6420 206f      attempts to do 
 8004074:	6e61 6520 6378 7065 6974 6e6f 7720 7469     an exception wit
 8004084:	2068 2061 6162 2064 6176 756c 2065 6e69     h a bad value in
 8004094:	7420 6568 4520 4358 525f 5445 5255 204e      the EXC_RETURN 
 80040a4:	756e 626d 7265 0000 7355 6761 2065 6166     number..Usage fa
 80040b4:	6c75 2074 7369 6320 7561 6573 2064 7962     ult is caused by
 80040c4:	6120 7474 6d65 7470 2073 6f74 6520 6578      attempts to exe
 80040d4:	7563 6574 6120 6320 706f 6f72 6563 7373     cute a coprocess
 80040e4:	726f 6920 736e 7274 6375 6974 6e6f 0000     or instruction..
 80040f4:	7355 6761 2065 6166 6c75 2074 7369 6320     Usage fault is c
 8004104:	7561 6573 2064 7962 6920 646e 6369 7461     aused by indicat
 8004114:	7365 7420 6168 2074 6e61 7520 616e 696c     es that an unali
 8004124:	6e67 6465 6120 6363 7365 2073 6166 6c75     gned access faul
 8004134:	2074 6168 2073 6174 656b 206e 6c70 6361     t has taken plac
 8004144:	0065 0000 7355 6761 2065 6166 6c75 2074     e...Usage fault 
 8004154:	7369 6320 7561 6573 2064 7962 4920 646e     is caused by Ind
 8004164:	6369 7461 7365 6120 6420 7669 6469 2065     icates a divide 
 8004174:	7962 7a20 7265 206f 6168 2073 6174 656b     by zero has take
 8004184:	206e 6c70 6361 2065 6328 6e61 6220 2065     n place (can be 
 8004194:	6573 2074 6e6f 796c 6920 2066 4944 5f56     set only if DIV_
 80041a4:	5f30 5254 2050 7369 7320 7465 0029 0000     0_TRP is set)...
 80041b4:	6544 7562 2067 6166 6c75 2074 7369 6320     Debug fault is c
 80041c4:	7561 6573 2064 7962 6820 6c61 2074 6572     aused by halt re
 80041d4:	7571 7365 6574 2064 6e69 4e20 4956 0043     quested in NVIC.
 80041e4:	6544 7562 2067 6166 6c75 2074 7369 6320     Debug fault is c
 80041f4:	7561 6573 2064 7962 4220 504b 2054 6e69     aused by BKPT in
 8004204:	7473 7572 7463 6f69 206e 7865 6365 7475     struction execut
 8004214:	6465 0000 6544 7562 2067 6166 6c75 2074     ed..Debug fault 
 8004224:	7369 6320 7561 6573 2064 7962 4420 5457     is caused by DWT
 8004234:	6d20 7461 6863 6f20 6363 7275 6572 0064      match occurred.
 8004244:	6544 7562 2067 6166 6c75 2074 7369 6320     Debug fault is c
 8004254:	7561 6573 2064 7962 5620 6365 6f74 2072     aused by Vector 
 8004264:	6566 6374 2068 636f 7563 7272 6465 0000     fetch occurred..
 8004274:	6544 7562 2067 6166 6c75 2074 7369 6320     Debug fault is c
 8004284:	7561 6573 2064 7962 4520 4244 5247 2051     aused by EDBGRQ 
 8004294:	6973 6e67 6c61 6120 7373 7265 6574 0064     signal asserted.
 80042a4:	6854 2065 656d 6f6d 7972 6d20 6e61 6761     The memory manag
 80042b4:	6d65 6e65 2074 6166 6c75 2074 636f 7563     ement fault occu
 80042c4:	7272 6465 6120 6464 6572 7373 6920 2073     rred address is 
 80042d4:	3025 7838 0000 0000 6854 2065 7562 2073     %08x....The bus 
 80042e4:	6166 6c75 2074 636f 7563 7272 6465 6120     fault occurred a
 80042f4:	6464 6572 7373 6920 2073 3025 7838 0000     ddress is %08x..
 8004304:	255b 5d73 7320 3d70 7830 7825 0a0d 0000     [%s] sp=0x%x....
 8004314:	7073 303d 2578 0a78 0000 0000 2020 2020     sp=0x%x.....    
 8004324:	2020 2020 6572 6c61 5020 3d43 7830 3025         real PC=0x%0
 8004334:	7838 6220 206c 726f 6220 786c 303d 2578     8x bl or blx=0x%
 8004344:	3830 2078 6e69 3173 303d 2578 3430 2078     08x ins1=0x%04x 
 8004354:	6e69 3273 303d 2578 3430 0a78 0000 0000     ins2=0x%04x.....
 8004364:	3025 6c38 0078 0000 652e 666c 0000 0000     %08lx....elf....
 8004374:	2f2e 7562 6c69 2f64 6574 7473 0000 0000     ./build/test....
 8004384:	0a0d 0000 255b 5d73 000a 0000 255b 5d73     ....[%s]....[%s]
 8004394:	6320 646f 5f65 7473 7261 5f74 6461 7264      code_start_addr
 80043a4:	303d 2578 786c 6320 646f 5f65 6e65 5f64     =0x%lx code_end_
 80043b4:	6461 7264 303d 2578 786c 6320 646f 5f65     addr=0x%lx code_
 80043c4:	6973 657a 253d 646c 303c 2578 786c 0a3e     size=%ld<0x%lx>.
 80043d4:	0000 0000 255b 5d73 7320 6174 6b63 735f     ....[%s] stack_s
 80043e4:	6174 7472 615f 6464 3d72 7830 6c25 2078     tart_addr=0x%lx 
 80043f4:	7473 6361 5f6b 6e65 5f64 6461 7264 303d     stack_end_addr=0
 8004404:	2578 786c 7320 6174 6b63 735f 7a69 3d65     x%lx stack_size=
 8004414:	6c25 3c64 7830 6c25 3e78 000a 255b 5d73     %ld<0x%lx>..[%s]
 8004424:	6820 6165 5f70 7473 7261 5f74 6461 7264      heap_start_addr
 8004434:	303d 2578 786c 6820 6165 5f70 6e65 5f64     =0x%lx heap_end_
 8004444:	6461 7264 303d 2578 786c 6820 6165 5f70     addr=0x%lx heap_
 8004454:	6973 657a 253d 646c 303c 2578 786c 0a3e     size=%ld<0x%lx>.
 8004464:	0000 0000 7073 303d 2578 786c 000a 0000     ....sp=0x%lx....
 8004474:	6370 303d 2578 786c 000a 0000 6461 7264     pc=0x%lx....addr
 8004484:	3a20 3025 7838 000a 6966 646e 6c20 2064      :%08x..find ld 
 8004494:	7830 3025 7838 000a 7274 6361 6265 6361     0x%08x..tracebac
 80044a4:	206b 7525 2d20 202d 726c 3d20 3020 2578     k %u -- lr = 0x%
 80044b4:	3830 2078 2d2d 6620 2070 203d 7830 3025     08x -- fp = 0x%0
 80044c4:	7838 000a 7473 6361 506b 696f 746e 7265     8x..stackPointer
 80044d4:	303d 2578 0a78 0000                         =0x%x...

080044dc <__func__.7501>:
 80044dc:	7564 706d 735f 6174 6b63 0000               dump_stack..

080044e8 <__func__.7562>:
 80044e8:	6162 6b63 7274 6361 5f65 6163 6c6c 735f     backtrace_call_s
 80044f8:	6174 6b63 0000 0000                         tack....

08004500 <__func__.7574>:
 8004500:	7270 6e69 5f74 6163 6c6c 735f 6174 6b63     print_call_stack
 8004510:	0000 0000                                   ....

08004514 <__func__.7583>:
 8004514:	6162 6b63 7274 6361 5f65 656c 6576 5f6c     backtrace_level_
 8004524:	0033 0000                                   3...

08004528 <__func__.7587>:
 8004528:	6162 6b63 7274 6361 5f65 656c 6576 5f6c     backtrace_level_
 8004538:	0032 0000                                   2...

0800453c <__func__.7591>:
 800453c:	6162 6b63 7274 6361 5f65 656c 6576 5f6c     backtrace_level_
 800454c:	0031 0000                                   1...

08004550 <__func__.7598>:
 8004550:	6162 6b63 7274 6361 5f65 6574 7473 0000     backtrace_test..

08004560 <AHBPrescTable>:
	...
 8004568:	0201 0403 0706 0908                         ........

08004570 <APBPrescTable>:
 8004570:	0000 0000 0201 0403                         ........

08004578 <_global_impure_ptr>:
 8004578:	0010 2000                                   ... 

0800457c <last_crash_info>:
	...

080045d8 <__EH_FRAME_BEGIN__>:
 80045d8:	0000 0000                                   ....
