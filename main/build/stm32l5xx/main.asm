
J:/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/stm32l5xx/main.elf:     file format elf32-littlearm


Disassembly of section .text:

080001f8 <__do_global_dtors_aux>:
 80001f8:	b510      	push	{r4, lr}
 80001fa:	4c05      	ldr	r4, [pc, #20]	; (8000210 <__do_global_dtors_aux+0x18>)
 80001fc:	7823      	ldrb	r3, [r4, #0]
 80001fe:	b933      	cbnz	r3, 800020e <__do_global_dtors_aux+0x16>
 8000200:	4b04      	ldr	r3, [pc, #16]	; (8000214 <__do_global_dtors_aux+0x1c>)
 8000202:	b113      	cbz	r3, 800020a <__do_global_dtors_aux+0x12>
 8000204:	4804      	ldr	r0, [pc, #16]	; (8000218 <__do_global_dtors_aux+0x20>)
 8000206:	e000      	b.n	800020a <__do_global_dtors_aux+0x12>
 8000208:	bf00      	nop
 800020a:	2301      	movs	r3, #1
 800020c:	7023      	strb	r3, [r4, #0]
 800020e:	bd10      	pop	{r4, pc}
 8000210:	200009d8 	.word	0x200009d8
 8000214:	00000000 	.word	0x00000000
 8000218:	08009118 	.word	0x08009118

0800021c <frame_dummy>:
 800021c:	b508      	push	{r3, lr}
 800021e:	4b03      	ldr	r3, [pc, #12]	; (800022c <frame_dummy+0x10>)
 8000220:	b11b      	cbz	r3, 800022a <frame_dummy+0xe>
 8000222:	4903      	ldr	r1, [pc, #12]	; (8000230 <frame_dummy+0x14>)
 8000224:	4803      	ldr	r0, [pc, #12]	; (8000234 <frame_dummy+0x18>)
 8000226:	e000      	b.n	800022a <frame_dummy+0xe>
 8000228:	bf00      	nop
 800022a:	bd08      	pop	{r3, pc}
 800022c:	00000000 	.word	0x00000000
 8000230:	200009dc 	.word	0x200009dc
 8000234:	08009118 	.word	0x08009118

08000238 <__aeabi_uldivmod>:
 8000238:	b953      	cbnz	r3, 8000250 <__aeabi_uldivmod+0x18>
 800023a:	b94a      	cbnz	r2, 8000250 <__aeabi_uldivmod+0x18>
 800023c:	2900      	cmp	r1, #0
 800023e:	bf08      	it	eq
 8000240:	2800      	cmpeq	r0, #0
 8000242:	bf1c      	itt	ne
 8000244:	f04f 31ff 	movne.w	r1, #4294967295
 8000248:	f04f 30ff 	movne.w	r0, #4294967295
 800024c:	f000 b97c 	b.w	8000548 <__aeabi_idiv0>
 8000250:	f1ad 0c08 	sub.w	ip, sp, #8
 8000254:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000258:	f000 f806 	bl	8000268 <__udivmoddi4>
 800025c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000260:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8000264:	b004      	add	sp, #16
 8000266:	4770      	bx	lr

08000268 <__udivmoddi4>:
 8000268:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800026c:	468c      	mov	ip, r1
 800026e:	9d08      	ldr	r5, [sp, #32]
 8000270:	4604      	mov	r4, r0
 8000272:	468a      	mov	sl, r1
 8000274:	2b00      	cmp	r3, #0
 8000276:	d14a      	bne.n	800030e <__udivmoddi4+0xa6>
 8000278:	428a      	cmp	r2, r1
 800027a:	4617      	mov	r7, r2
 800027c:	d962      	bls.n	8000344 <__udivmoddi4+0xdc>
 800027e:	fab2 f682 	clz	r6, r2
 8000282:	b14e      	cbz	r6, 8000298 <__udivmoddi4+0x30>
 8000284:	f1c6 0e20 	rsb	lr, r6, #32
 8000288:	fa01 f306 	lsl.w	r3, r1, r6
 800028c:	40b7      	lsls	r7, r6
 800028e:	40b4      	lsls	r4, r6
 8000290:	fa20 fe0e 	lsr.w	lr, r0, lr
 8000294:	ea4e 0a03 	orr.w	sl, lr, r3
 8000298:	ea4f 4817 	mov.w	r8, r7, lsr #16
 800029c:	0c23      	lsrs	r3, r4, #16
 800029e:	fa1f f987 	uxth.w	r9, r7
 80002a2:	fbba fef8 	udiv	lr, sl, r8
 80002a6:	fb08 aa1e 	mls	sl, r8, lr, sl
 80002aa:	fb0e f209 	mul.w	r2, lr, r9
 80002ae:	ea43 430a 	orr.w	r3, r3, sl, lsl #16
 80002b2:	429a      	cmp	r2, r3
 80002b4:	d90b      	bls.n	80002ce <__udivmoddi4+0x66>
 80002b6:	18fb      	adds	r3, r7, r3
 80002b8:	f10e 31ff 	add.w	r1, lr, #4294967295
 80002bc:	bf2c      	ite	cs
 80002be:	2001      	movcs	r0, #1
 80002c0:	2000      	movcc	r0, #0
 80002c2:	429a      	cmp	r2, r3
 80002c4:	d902      	bls.n	80002cc <__udivmoddi4+0x64>
 80002c6:	2800      	cmp	r0, #0
 80002c8:	f000 812a 	beq.w	8000520 <__udivmoddi4+0x2b8>
 80002cc:	468e      	mov	lr, r1
 80002ce:	1a9a      	subs	r2, r3, r2
 80002d0:	b2a3      	uxth	r3, r4
 80002d2:	fbb2 f0f8 	udiv	r0, r2, r8
 80002d6:	fb08 2210 	mls	r2, r8, r0, r2
 80002da:	fb00 f909 	mul.w	r9, r0, r9
 80002de:	ea43 4402 	orr.w	r4, r3, r2, lsl #16
 80002e2:	45a1      	cmp	r9, r4
 80002e4:	d907      	bls.n	80002f6 <__udivmoddi4+0x8e>
 80002e6:	193c      	adds	r4, r7, r4
 80002e8:	f100 33ff 	add.w	r3, r0, #4294967295
 80002ec:	d202      	bcs.n	80002f4 <__udivmoddi4+0x8c>
 80002ee:	45a1      	cmp	r9, r4
 80002f0:	f200 8110 	bhi.w	8000514 <__udivmoddi4+0x2ac>
 80002f4:	4618      	mov	r0, r3
 80002f6:	eba4 0409 	sub.w	r4, r4, r9
 80002fa:	ea40 400e 	orr.w	r0, r0, lr, lsl #16
 80002fe:	2100      	movs	r1, #0
 8000300:	b11d      	cbz	r5, 800030a <__udivmoddi4+0xa2>
 8000302:	40f4      	lsrs	r4, r6
 8000304:	2300      	movs	r3, #0
 8000306:	e9c5 4300 	strd	r4, r3, [r5]
 800030a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800030e:	428b      	cmp	r3, r1
 8000310:	d908      	bls.n	8000324 <__udivmoddi4+0xbc>
 8000312:	2d00      	cmp	r5, #0
 8000314:	f000 80f2 	beq.w	80004fc <__udivmoddi4+0x294>
 8000318:	2100      	movs	r1, #0
 800031a:	e9c5 0c00 	strd	r0, ip, [r5]
 800031e:	4608      	mov	r0, r1
 8000320:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000324:	fab3 f183 	clz	r1, r3
 8000328:	2900      	cmp	r1, #0
 800032a:	d14e      	bne.n	80003ca <__udivmoddi4+0x162>
 800032c:	4563      	cmp	r3, ip
 800032e:	f0c0 80e8 	bcc.w	8000502 <__udivmoddi4+0x29a>
 8000332:	4282      	cmp	r2, r0
 8000334:	f240 80e5 	bls.w	8000502 <__udivmoddi4+0x29a>
 8000338:	4608      	mov	r0, r1
 800033a:	2d00      	cmp	r5, #0
 800033c:	d0e5      	beq.n	800030a <__udivmoddi4+0xa2>
 800033e:	e9c5 4a00 	strd	r4, sl, [r5]
 8000342:	e7e2      	b.n	800030a <__udivmoddi4+0xa2>
 8000344:	b902      	cbnz	r2, 8000348 <__udivmoddi4+0xe0>
 8000346:	deff      	udf	#255	; 0xff
 8000348:	fab2 f682 	clz	r6, r2
 800034c:	2e00      	cmp	r6, #0
 800034e:	f040 8099 	bne.w	8000484 <__udivmoddi4+0x21c>
 8000352:	1a8b      	subs	r3, r1, r2
 8000354:	ea4f 4e12 	mov.w	lr, r2, lsr #16
 8000358:	fa1f f882 	uxth.w	r8, r2
 800035c:	2101      	movs	r1, #1
 800035e:	ea4f 4c14 	mov.w	ip, r4, lsr #16
 8000362:	fbb3 f2fe 	udiv	r2, r3, lr
 8000366:	fb0e 3012 	mls	r0, lr, r2, r3
 800036a:	fb08 f902 	mul.w	r9, r8, r2
 800036e:	ea4c 4c00 	orr.w	ip, ip, r0, lsl #16
 8000372:	45e1      	cmp	r9, ip
 8000374:	d908      	bls.n	8000388 <__udivmoddi4+0x120>
 8000376:	eb17 0c0c 	adds.w	ip, r7, ip
 800037a:	f102 33ff 	add.w	r3, r2, #4294967295
 800037e:	d202      	bcs.n	8000386 <__udivmoddi4+0x11e>
 8000380:	45e1      	cmp	r9, ip
 8000382:	f200 80ca 	bhi.w	800051a <__udivmoddi4+0x2b2>
 8000386:	461a      	mov	r2, r3
 8000388:	ebac 0c09 	sub.w	ip, ip, r9
 800038c:	b2a3      	uxth	r3, r4
 800038e:	fbbc f0fe 	udiv	r0, ip, lr
 8000392:	fb0e cc10 	mls	ip, lr, r0, ip
 8000396:	fb08 f800 	mul.w	r8, r8, r0
 800039a:	ea43 440c 	orr.w	r4, r3, ip, lsl #16
 800039e:	45a0      	cmp	r8, r4
 80003a0:	d90e      	bls.n	80003c0 <__udivmoddi4+0x158>
 80003a2:	193c      	adds	r4, r7, r4
 80003a4:	f100 33ff 	add.w	r3, r0, #4294967295
 80003a8:	bf2c      	ite	cs
 80003aa:	f04f 0c01 	movcs.w	ip, #1
 80003ae:	f04f 0c00 	movcc.w	ip, #0
 80003b2:	45a0      	cmp	r8, r4
 80003b4:	d903      	bls.n	80003be <__udivmoddi4+0x156>
 80003b6:	f1bc 0f00 	cmp.w	ip, #0
 80003ba:	f000 80a8 	beq.w	800050e <__udivmoddi4+0x2a6>
 80003be:	4618      	mov	r0, r3
 80003c0:	eba4 0408 	sub.w	r4, r4, r8
 80003c4:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
 80003c8:	e79a      	b.n	8000300 <__udivmoddi4+0x98>
 80003ca:	f1c1 0420 	rsb	r4, r1, #32
 80003ce:	408b      	lsls	r3, r1
 80003d0:	fa02 fe01 	lsl.w	lr, r2, r1
 80003d4:	fa0c f601 	lsl.w	r6, ip, r1
 80003d8:	40e2      	lsrs	r2, r4
 80003da:	fa20 f704 	lsr.w	r7, r0, r4
 80003de:	fa2c fc04 	lsr.w	ip, ip, r4
 80003e2:	fa00 f801 	lsl.w	r8, r0, r1
 80003e6:	4313      	orrs	r3, r2
 80003e8:	433e      	orrs	r6, r7
 80003ea:	0c1f      	lsrs	r7, r3, #16
 80003ec:	0c32      	lsrs	r2, r6, #16
 80003ee:	fa1f f983 	uxth.w	r9, r3
 80003f2:	fbbc f0f7 	udiv	r0, ip, r7
 80003f6:	fb07 cc10 	mls	ip, r7, r0, ip
 80003fa:	fb00 fa09 	mul.w	sl, r0, r9
 80003fe:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
 8000402:	45e2      	cmp	sl, ip
 8000404:	d908      	bls.n	8000418 <__udivmoddi4+0x1b0>
 8000406:	eb13 0c0c 	adds.w	ip, r3, ip
 800040a:	f100 32ff 	add.w	r2, r0, #4294967295
 800040e:	d202      	bcs.n	8000416 <__udivmoddi4+0x1ae>
 8000410:	45e2      	cmp	sl, ip
 8000412:	f200 8089 	bhi.w	8000528 <__udivmoddi4+0x2c0>
 8000416:	4610      	mov	r0, r2
 8000418:	ebac 0c0a 	sub.w	ip, ip, sl
 800041c:	b2b6      	uxth	r6, r6
 800041e:	fbbc faf7 	udiv	sl, ip, r7
 8000422:	fb07 cc1a 	mls	ip, r7, sl, ip
 8000426:	fb0a f909 	mul.w	r9, sl, r9
 800042a:	ea46 420c 	orr.w	r2, r6, ip, lsl #16
 800042e:	4591      	cmp	r9, r2
 8000430:	d906      	bls.n	8000440 <__udivmoddi4+0x1d8>
 8000432:	189a      	adds	r2, r3, r2
 8000434:	f10a 36ff 	add.w	r6, sl, #4294967295
 8000438:	d201      	bcs.n	800043e <__udivmoddi4+0x1d6>
 800043a:	4591      	cmp	r9, r2
 800043c:	d87a      	bhi.n	8000534 <__udivmoddi4+0x2cc>
 800043e:	46b2      	mov	sl, r6
 8000440:	ea4a 4000 	orr.w	r0, sl, r0, lsl #16
 8000444:	eba2 0209 	sub.w	r2, r2, r9
 8000448:	fba0 670e 	umull	r6, r7, r0, lr
 800044c:	42ba      	cmp	r2, r7
 800044e:	46b4      	mov	ip, r6
 8000450:	46b9      	mov	r9, r7
 8000452:	d302      	bcc.n	800045a <__udivmoddi4+0x1f2>
 8000454:	d107      	bne.n	8000466 <__udivmoddi4+0x1fe>
 8000456:	45b0      	cmp	r8, r6
 8000458:	d205      	bcs.n	8000466 <__udivmoddi4+0x1fe>
 800045a:	ebb6 0c0e 	subs.w	ip, r6, lr
 800045e:	eb67 0303 	sbc.w	r3, r7, r3
 8000462:	3801      	subs	r0, #1
 8000464:	4699      	mov	r9, r3
 8000466:	2d00      	cmp	r5, #0
 8000468:	d06b      	beq.n	8000542 <__udivmoddi4+0x2da>
 800046a:	ebb8 030c 	subs.w	r3, r8, ip
 800046e:	eb62 0209 	sbc.w	r2, r2, r9
 8000472:	fa02 f404 	lsl.w	r4, r2, r4
 8000476:	40cb      	lsrs	r3, r1
 8000478:	40ca      	lsrs	r2, r1
 800047a:	2100      	movs	r1, #0
 800047c:	431c      	orrs	r4, r3
 800047e:	e9c5 4200 	strd	r4, r2, [r5]
 8000482:	e742      	b.n	800030a <__udivmoddi4+0xa2>
 8000484:	40b7      	lsls	r7, r6
 8000486:	f1c6 0220 	rsb	r2, r6, #32
 800048a:	fa01 f306 	lsl.w	r3, r1, r6
 800048e:	40b4      	lsls	r4, r6
 8000490:	fa21 fc02 	lsr.w	ip, r1, r2
 8000494:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000498:	fa20 f202 	lsr.w	r2, r0, r2
 800049c:	fa1f f887 	uxth.w	r8, r7
 80004a0:	fbbc f1fe 	udiv	r1, ip, lr
 80004a4:	431a      	orrs	r2, r3
 80004a6:	fb0e cc11 	mls	ip, lr, r1, ip
 80004aa:	fb01 f008 	mul.w	r0, r1, r8
 80004ae:	0c13      	lsrs	r3, r2, #16
 80004b0:	ea43 4c0c 	orr.w	ip, r3, ip, lsl #16
 80004b4:	4560      	cmp	r0, ip
 80004b6:	d907      	bls.n	80004c8 <__udivmoddi4+0x260>
 80004b8:	eb17 0c0c 	adds.w	ip, r7, ip
 80004bc:	f101 33ff 	add.w	r3, r1, #4294967295
 80004c0:	d201      	bcs.n	80004c6 <__udivmoddi4+0x25e>
 80004c2:	4560      	cmp	r0, ip
 80004c4:	d833      	bhi.n	800052e <__udivmoddi4+0x2c6>
 80004c6:	4619      	mov	r1, r3
 80004c8:	ebac 0c00 	sub.w	ip, ip, r0
 80004cc:	b292      	uxth	r2, r2
 80004ce:	fbbc f0fe 	udiv	r0, ip, lr
 80004d2:	fb0e cc10 	mls	ip, lr, r0, ip
 80004d6:	fb00 f308 	mul.w	r3, r0, r8
 80004da:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
 80004de:	4563      	cmp	r3, ip
 80004e0:	d907      	bls.n	80004f2 <__udivmoddi4+0x28a>
 80004e2:	eb17 0c0c 	adds.w	ip, r7, ip
 80004e6:	f100 32ff 	add.w	r2, r0, #4294967295
 80004ea:	d201      	bcs.n	80004f0 <__udivmoddi4+0x288>
 80004ec:	4563      	cmp	r3, ip
 80004ee:	d825      	bhi.n	800053c <__udivmoddi4+0x2d4>
 80004f0:	4610      	mov	r0, r2
 80004f2:	ebac 0303 	sub.w	r3, ip, r3
 80004f6:	ea40 4101 	orr.w	r1, r0, r1, lsl #16
 80004fa:	e730      	b.n	800035e <__udivmoddi4+0xf6>
 80004fc:	4629      	mov	r1, r5
 80004fe:	4628      	mov	r0, r5
 8000500:	e703      	b.n	800030a <__udivmoddi4+0xa2>
 8000502:	1a84      	subs	r4, r0, r2
 8000504:	eb6c 0303 	sbc.w	r3, ip, r3
 8000508:	2001      	movs	r0, #1
 800050a:	469a      	mov	sl, r3
 800050c:	e715      	b.n	800033a <__udivmoddi4+0xd2>
 800050e:	3802      	subs	r0, #2
 8000510:	443c      	add	r4, r7
 8000512:	e755      	b.n	80003c0 <__udivmoddi4+0x158>
 8000514:	3802      	subs	r0, #2
 8000516:	443c      	add	r4, r7
 8000518:	e6ed      	b.n	80002f6 <__udivmoddi4+0x8e>
 800051a:	3a02      	subs	r2, #2
 800051c:	44bc      	add	ip, r7
 800051e:	e733      	b.n	8000388 <__udivmoddi4+0x120>
 8000520:	f1ae 0e02 	sub.w	lr, lr, #2
 8000524:	443b      	add	r3, r7
 8000526:	e6d2      	b.n	80002ce <__udivmoddi4+0x66>
 8000528:	3802      	subs	r0, #2
 800052a:	449c      	add	ip, r3
 800052c:	e774      	b.n	8000418 <__udivmoddi4+0x1b0>
 800052e:	3902      	subs	r1, #2
 8000530:	44bc      	add	ip, r7
 8000532:	e7c9      	b.n	80004c8 <__udivmoddi4+0x260>
 8000534:	f1aa 0a02 	sub.w	sl, sl, #2
 8000538:	441a      	add	r2, r3
 800053a:	e781      	b.n	8000440 <__udivmoddi4+0x1d8>
 800053c:	3802      	subs	r0, #2
 800053e:	44bc      	add	ip, r7
 8000540:	e7d7      	b.n	80004f2 <__udivmoddi4+0x28a>
 8000542:	4629      	mov	r1, r5
 8000544:	e6e1      	b.n	800030a <__udivmoddi4+0xa2>
 8000546:	bf00      	nop

08000548 <__aeabi_idiv0>:
 8000548:	4770      	bx	lr
 800054a:	bf00      	nop

0800054c <memcpy>:
 800054c:	4684      	mov	ip, r0
 800054e:	ea41 0300 	orr.w	r3, r1, r0
 8000552:	f013 0303 	ands.w	r3, r3, #3
 8000556:	d149      	bne.n	80005ec <memcpy+0xa0>
 8000558:	3a40      	subs	r2, #64	; 0x40
 800055a:	d323      	bcc.n	80005a4 <memcpy+0x58>
 800055c:	680b      	ldr	r3, [r1, #0]
 800055e:	6003      	str	r3, [r0, #0]
 8000560:	684b      	ldr	r3, [r1, #4]
 8000562:	6043      	str	r3, [r0, #4]
 8000564:	688b      	ldr	r3, [r1, #8]
 8000566:	6083      	str	r3, [r0, #8]
 8000568:	68cb      	ldr	r3, [r1, #12]
 800056a:	60c3      	str	r3, [r0, #12]
 800056c:	690b      	ldr	r3, [r1, #16]
 800056e:	6103      	str	r3, [r0, #16]
 8000570:	694b      	ldr	r3, [r1, #20]
 8000572:	6143      	str	r3, [r0, #20]
 8000574:	698b      	ldr	r3, [r1, #24]
 8000576:	6183      	str	r3, [r0, #24]
 8000578:	69cb      	ldr	r3, [r1, #28]
 800057a:	61c3      	str	r3, [r0, #28]
 800057c:	6a0b      	ldr	r3, [r1, #32]
 800057e:	6203      	str	r3, [r0, #32]
 8000580:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8000582:	6243      	str	r3, [r0, #36]	; 0x24
 8000584:	6a8b      	ldr	r3, [r1, #40]	; 0x28
 8000586:	6283      	str	r3, [r0, #40]	; 0x28
 8000588:	6acb      	ldr	r3, [r1, #44]	; 0x2c
 800058a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800058c:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 800058e:	6303      	str	r3, [r0, #48]	; 0x30
 8000590:	6b4b      	ldr	r3, [r1, #52]	; 0x34
 8000592:	6343      	str	r3, [r0, #52]	; 0x34
 8000594:	6b8b      	ldr	r3, [r1, #56]	; 0x38
 8000596:	6383      	str	r3, [r0, #56]	; 0x38
 8000598:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
 800059a:	63c3      	str	r3, [r0, #60]	; 0x3c
 800059c:	3040      	adds	r0, #64	; 0x40
 800059e:	3140      	adds	r1, #64	; 0x40
 80005a0:	3a40      	subs	r2, #64	; 0x40
 80005a2:	d2db      	bcs.n	800055c <memcpy+0x10>
 80005a4:	3230      	adds	r2, #48	; 0x30
 80005a6:	d30b      	bcc.n	80005c0 <memcpy+0x74>
 80005a8:	680b      	ldr	r3, [r1, #0]
 80005aa:	6003      	str	r3, [r0, #0]
 80005ac:	684b      	ldr	r3, [r1, #4]
 80005ae:	6043      	str	r3, [r0, #4]
 80005b0:	688b      	ldr	r3, [r1, #8]
 80005b2:	6083      	str	r3, [r0, #8]
 80005b4:	68cb      	ldr	r3, [r1, #12]
 80005b6:	60c3      	str	r3, [r0, #12]
 80005b8:	3010      	adds	r0, #16
 80005ba:	3110      	adds	r1, #16
 80005bc:	3a10      	subs	r2, #16
 80005be:	d2f3      	bcs.n	80005a8 <memcpy+0x5c>
 80005c0:	320c      	adds	r2, #12
 80005c2:	d305      	bcc.n	80005d0 <memcpy+0x84>
 80005c4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c8:	f840 3b04 	str.w	r3, [r0], #4
 80005cc:	3a04      	subs	r2, #4
 80005ce:	d2f9      	bcs.n	80005c4 <memcpy+0x78>
 80005d0:	3204      	adds	r2, #4
 80005d2:	d008      	beq.n	80005e6 <memcpy+0x9a>
 80005d4:	07d2      	lsls	r2, r2, #31
 80005d6:	bf1c      	itt	ne
 80005d8:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80005dc:	f800 3b01 	strbne.w	r3, [r0], #1
 80005e0:	d301      	bcc.n	80005e6 <memcpy+0x9a>
 80005e2:	880b      	ldrh	r3, [r1, #0]
 80005e4:	8003      	strh	r3, [r0, #0]
 80005e6:	4660      	mov	r0, ip
 80005e8:	4770      	bx	lr
 80005ea:	bf00      	nop
 80005ec:	2a08      	cmp	r2, #8
 80005ee:	d313      	bcc.n	8000618 <memcpy+0xcc>
 80005f0:	078b      	lsls	r3, r1, #30
 80005f2:	d0b1      	beq.n	8000558 <memcpy+0xc>
 80005f4:	f010 0303 	ands.w	r3, r0, #3
 80005f8:	d0ae      	beq.n	8000558 <memcpy+0xc>
 80005fa:	f1c3 0304 	rsb	r3, r3, #4
 80005fe:	1ad2      	subs	r2, r2, r3
 8000600:	07db      	lsls	r3, r3, #31
 8000602:	bf1c      	itt	ne
 8000604:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000608:	f800 3b01 	strbne.w	r3, [r0], #1
 800060c:	d3a4      	bcc.n	8000558 <memcpy+0xc>
 800060e:	f831 3b02 	ldrh.w	r3, [r1], #2
 8000612:	f820 3b02 	strh.w	r3, [r0], #2
 8000616:	e79f      	b.n	8000558 <memcpy+0xc>
 8000618:	3a04      	subs	r2, #4
 800061a:	d3d9      	bcc.n	80005d0 <memcpy+0x84>
 800061c:	3a01      	subs	r2, #1
 800061e:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000622:	f800 3b01 	strb.w	r3, [r0], #1
 8000626:	d2f9      	bcs.n	800061c <memcpy+0xd0>
 8000628:	780b      	ldrb	r3, [r1, #0]
 800062a:	7003      	strb	r3, [r0, #0]
 800062c:	784b      	ldrb	r3, [r1, #1]
 800062e:	7043      	strb	r3, [r0, #1]
 8000630:	788b      	ldrb	r3, [r1, #2]
 8000632:	7083      	strb	r3, [r0, #2]
 8000634:	4660      	mov	r0, ip
 8000636:	4770      	bx	lr

08000638 <__aeabi_drsub>:
 8000638:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 800063c:	e002      	b.n	8000644 <__adddf3>
 800063e:	bf00      	nop

08000640 <__aeabi_dsub>:
 8000640:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08000644 <__adddf3>:
 8000644:	b530      	push	{r4, r5, lr}
 8000646:	ea4f 0441 	mov.w	r4, r1, lsl #1
 800064a:	ea4f 0543 	mov.w	r5, r3, lsl #1
 800064e:	ea94 0f05 	teq	r4, r5
 8000652:	bf08      	it	eq
 8000654:	ea90 0f02 	teqeq	r0, r2
 8000658:	bf1f      	itttt	ne
 800065a:	ea54 0c00 	orrsne.w	ip, r4, r0
 800065e:	ea55 0c02 	orrsne.w	ip, r5, r2
 8000662:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8000666:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800066a:	f000 80e2 	beq.w	8000832 <__adddf3+0x1ee>
 800066e:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8000672:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8000676:	bfb8      	it	lt
 8000678:	426d      	neglt	r5, r5
 800067a:	dd0c      	ble.n	8000696 <__adddf3+0x52>
 800067c:	442c      	add	r4, r5
 800067e:	ea80 0202 	eor.w	r2, r0, r2
 8000682:	ea81 0303 	eor.w	r3, r1, r3
 8000686:	ea82 0000 	eor.w	r0, r2, r0
 800068a:	ea83 0101 	eor.w	r1, r3, r1
 800068e:	ea80 0202 	eor.w	r2, r0, r2
 8000692:	ea81 0303 	eor.w	r3, r1, r3
 8000696:	2d36      	cmp	r5, #54	; 0x36
 8000698:	bf88      	it	hi
 800069a:	bd30      	pophi	{r4, r5, pc}
 800069c:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80006a0:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80006a4:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 80006a8:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 80006ac:	d002      	beq.n	80006b4 <__adddf3+0x70>
 80006ae:	4240      	negs	r0, r0
 80006b0:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80006b4:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 80006b8:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80006bc:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 80006c0:	d002      	beq.n	80006c8 <__adddf3+0x84>
 80006c2:	4252      	negs	r2, r2
 80006c4:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 80006c8:	ea94 0f05 	teq	r4, r5
 80006cc:	f000 80a7 	beq.w	800081e <__adddf3+0x1da>
 80006d0:	f1a4 0401 	sub.w	r4, r4, #1
 80006d4:	f1d5 0e20 	rsbs	lr, r5, #32
 80006d8:	db0d      	blt.n	80006f6 <__adddf3+0xb2>
 80006da:	fa02 fc0e 	lsl.w	ip, r2, lr
 80006de:	fa22 f205 	lsr.w	r2, r2, r5
 80006e2:	1880      	adds	r0, r0, r2
 80006e4:	f141 0100 	adc.w	r1, r1, #0
 80006e8:	fa03 f20e 	lsl.w	r2, r3, lr
 80006ec:	1880      	adds	r0, r0, r2
 80006ee:	fa43 f305 	asr.w	r3, r3, r5
 80006f2:	4159      	adcs	r1, r3
 80006f4:	e00e      	b.n	8000714 <__adddf3+0xd0>
 80006f6:	f1a5 0520 	sub.w	r5, r5, #32
 80006fa:	f10e 0e20 	add.w	lr, lr, #32
 80006fe:	2a01      	cmp	r2, #1
 8000700:	fa03 fc0e 	lsl.w	ip, r3, lr
 8000704:	bf28      	it	cs
 8000706:	f04c 0c02 	orrcs.w	ip, ip, #2
 800070a:	fa43 f305 	asr.w	r3, r3, r5
 800070e:	18c0      	adds	r0, r0, r3
 8000710:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8000714:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000718:	d507      	bpl.n	800072a <__adddf3+0xe6>
 800071a:	f04f 0e00 	mov.w	lr, #0
 800071e:	f1dc 0c00 	rsbs	ip, ip, #0
 8000722:	eb7e 0000 	sbcs.w	r0, lr, r0
 8000726:	eb6e 0101 	sbc.w	r1, lr, r1
 800072a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800072e:	d31b      	bcc.n	8000768 <__adddf3+0x124>
 8000730:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8000734:	d30c      	bcc.n	8000750 <__adddf3+0x10c>
 8000736:	0849      	lsrs	r1, r1, #1
 8000738:	ea5f 0030 	movs.w	r0, r0, rrx
 800073c:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8000740:	f104 0401 	add.w	r4, r4, #1
 8000744:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8000748:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 800074c:	f080 809a 	bcs.w	8000884 <__adddf3+0x240>
 8000750:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8000754:	bf08      	it	eq
 8000756:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800075a:	f150 0000 	adcs.w	r0, r0, #0
 800075e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000762:	ea41 0105 	orr.w	r1, r1, r5
 8000766:	bd30      	pop	{r4, r5, pc}
 8000768:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 800076c:	4140      	adcs	r0, r0
 800076e:	eb41 0101 	adc.w	r1, r1, r1
 8000772:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000776:	f1a4 0401 	sub.w	r4, r4, #1
 800077a:	d1e9      	bne.n	8000750 <__adddf3+0x10c>
 800077c:	f091 0f00 	teq	r1, #0
 8000780:	bf04      	itt	eq
 8000782:	4601      	moveq	r1, r0
 8000784:	2000      	moveq	r0, #0
 8000786:	fab1 f381 	clz	r3, r1
 800078a:	bf08      	it	eq
 800078c:	3320      	addeq	r3, #32
 800078e:	f1a3 030b 	sub.w	r3, r3, #11
 8000792:	f1b3 0220 	subs.w	r2, r3, #32
 8000796:	da0c      	bge.n	80007b2 <__adddf3+0x16e>
 8000798:	320c      	adds	r2, #12
 800079a:	dd08      	ble.n	80007ae <__adddf3+0x16a>
 800079c:	f102 0c14 	add.w	ip, r2, #20
 80007a0:	f1c2 020c 	rsb	r2, r2, #12
 80007a4:	fa01 f00c 	lsl.w	r0, r1, ip
 80007a8:	fa21 f102 	lsr.w	r1, r1, r2
 80007ac:	e00c      	b.n	80007c8 <__adddf3+0x184>
 80007ae:	f102 0214 	add.w	r2, r2, #20
 80007b2:	bfd8      	it	le
 80007b4:	f1c2 0c20 	rsble	ip, r2, #32
 80007b8:	fa01 f102 	lsl.w	r1, r1, r2
 80007bc:	fa20 fc0c 	lsr.w	ip, r0, ip
 80007c0:	bfdc      	itt	le
 80007c2:	ea41 010c 	orrle.w	r1, r1, ip
 80007c6:	4090      	lslle	r0, r2
 80007c8:	1ae4      	subs	r4, r4, r3
 80007ca:	bfa2      	ittt	ge
 80007cc:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 80007d0:	4329      	orrge	r1, r5
 80007d2:	bd30      	popge	{r4, r5, pc}
 80007d4:	ea6f 0404 	mvn.w	r4, r4
 80007d8:	3c1f      	subs	r4, #31
 80007da:	da1c      	bge.n	8000816 <__adddf3+0x1d2>
 80007dc:	340c      	adds	r4, #12
 80007de:	dc0e      	bgt.n	80007fe <__adddf3+0x1ba>
 80007e0:	f104 0414 	add.w	r4, r4, #20
 80007e4:	f1c4 0220 	rsb	r2, r4, #32
 80007e8:	fa20 f004 	lsr.w	r0, r0, r4
 80007ec:	fa01 f302 	lsl.w	r3, r1, r2
 80007f0:	ea40 0003 	orr.w	r0, r0, r3
 80007f4:	fa21 f304 	lsr.w	r3, r1, r4
 80007f8:	ea45 0103 	orr.w	r1, r5, r3
 80007fc:	bd30      	pop	{r4, r5, pc}
 80007fe:	f1c4 040c 	rsb	r4, r4, #12
 8000802:	f1c4 0220 	rsb	r2, r4, #32
 8000806:	fa20 f002 	lsr.w	r0, r0, r2
 800080a:	fa01 f304 	lsl.w	r3, r1, r4
 800080e:	ea40 0003 	orr.w	r0, r0, r3
 8000812:	4629      	mov	r1, r5
 8000814:	bd30      	pop	{r4, r5, pc}
 8000816:	fa21 f004 	lsr.w	r0, r1, r4
 800081a:	4629      	mov	r1, r5
 800081c:	bd30      	pop	{r4, r5, pc}
 800081e:	f094 0f00 	teq	r4, #0
 8000822:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8000826:	bf06      	itte	eq
 8000828:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 800082c:	3401      	addeq	r4, #1
 800082e:	3d01      	subne	r5, #1
 8000830:	e74e      	b.n	80006d0 <__adddf3+0x8c>
 8000832:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000836:	bf18      	it	ne
 8000838:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800083c:	d029      	beq.n	8000892 <__adddf3+0x24e>
 800083e:	ea94 0f05 	teq	r4, r5
 8000842:	bf08      	it	eq
 8000844:	ea90 0f02 	teqeq	r0, r2
 8000848:	d005      	beq.n	8000856 <__adddf3+0x212>
 800084a:	ea54 0c00 	orrs.w	ip, r4, r0
 800084e:	bf04      	itt	eq
 8000850:	4619      	moveq	r1, r3
 8000852:	4610      	moveq	r0, r2
 8000854:	bd30      	pop	{r4, r5, pc}
 8000856:	ea91 0f03 	teq	r1, r3
 800085a:	bf1e      	ittt	ne
 800085c:	2100      	movne	r1, #0
 800085e:	2000      	movne	r0, #0
 8000860:	bd30      	popne	{r4, r5, pc}
 8000862:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000866:	d105      	bne.n	8000874 <__adddf3+0x230>
 8000868:	0040      	lsls	r0, r0, #1
 800086a:	4149      	adcs	r1, r1
 800086c:	bf28      	it	cs
 800086e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8000872:	bd30      	pop	{r4, r5, pc}
 8000874:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000878:	bf3c      	itt	cc
 800087a:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 800087e:	bd30      	popcc	{r4, r5, pc}
 8000880:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000884:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000888:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800088c:	f04f 0000 	mov.w	r0, #0
 8000890:	bd30      	pop	{r4, r5, pc}
 8000892:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000896:	bf1a      	itte	ne
 8000898:	4619      	movne	r1, r3
 800089a:	4610      	movne	r0, r2
 800089c:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 80008a0:	bf1c      	itt	ne
 80008a2:	460b      	movne	r3, r1
 80008a4:	4602      	movne	r2, r0
 80008a6:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80008aa:	bf06      	itte	eq
 80008ac:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 80008b0:	ea91 0f03 	teqeq	r1, r3
 80008b4:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 80008b8:	bd30      	pop	{r4, r5, pc}
 80008ba:	bf00      	nop

080008bc <__aeabi_ui2d>:
 80008bc:	f090 0f00 	teq	r0, #0
 80008c0:	bf04      	itt	eq
 80008c2:	2100      	moveq	r1, #0
 80008c4:	4770      	bxeq	lr
 80008c6:	b530      	push	{r4, r5, lr}
 80008c8:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80008cc:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80008d0:	f04f 0500 	mov.w	r5, #0
 80008d4:	f04f 0100 	mov.w	r1, #0
 80008d8:	e750      	b.n	800077c <__adddf3+0x138>
 80008da:	bf00      	nop

080008dc <__aeabi_i2d>:
 80008dc:	f090 0f00 	teq	r0, #0
 80008e0:	bf04      	itt	eq
 80008e2:	2100      	moveq	r1, #0
 80008e4:	4770      	bxeq	lr
 80008e6:	b530      	push	{r4, r5, lr}
 80008e8:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80008ec:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80008f0:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 80008f4:	bf48      	it	mi
 80008f6:	4240      	negmi	r0, r0
 80008f8:	f04f 0100 	mov.w	r1, #0
 80008fc:	e73e      	b.n	800077c <__adddf3+0x138>
 80008fe:	bf00      	nop

08000900 <__aeabi_f2d>:
 8000900:	0042      	lsls	r2, r0, #1
 8000902:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000906:	ea4f 0131 	mov.w	r1, r1, rrx
 800090a:	ea4f 7002 	mov.w	r0, r2, lsl #28
 800090e:	bf1f      	itttt	ne
 8000910:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000914:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000918:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 800091c:	4770      	bxne	lr
 800091e:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000922:	bf08      	it	eq
 8000924:	4770      	bxeq	lr
 8000926:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 800092a:	bf04      	itt	eq
 800092c:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000930:	4770      	bxeq	lr
 8000932:	b530      	push	{r4, r5, lr}
 8000934:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000938:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 800093c:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000940:	e71c      	b.n	800077c <__adddf3+0x138>
 8000942:	bf00      	nop

08000944 <__aeabi_ul2d>:
 8000944:	ea50 0201 	orrs.w	r2, r0, r1
 8000948:	bf08      	it	eq
 800094a:	4770      	bxeq	lr
 800094c:	b530      	push	{r4, r5, lr}
 800094e:	f04f 0500 	mov.w	r5, #0
 8000952:	e00a      	b.n	800096a <__aeabi_l2d+0x16>

08000954 <__aeabi_l2d>:
 8000954:	ea50 0201 	orrs.w	r2, r0, r1
 8000958:	bf08      	it	eq
 800095a:	4770      	bxeq	lr
 800095c:	b530      	push	{r4, r5, lr}
 800095e:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000962:	d502      	bpl.n	800096a <__aeabi_l2d+0x16>
 8000964:	4240      	negs	r0, r0
 8000966:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800096a:	f44f 6480 	mov.w	r4, #1024	; 0x400
 800096e:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000972:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000976:	f43f aed8 	beq.w	800072a <__adddf3+0xe6>
 800097a:	f04f 0203 	mov.w	r2, #3
 800097e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000982:	bf18      	it	ne
 8000984:	3203      	addne	r2, #3
 8000986:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800098a:	bf18      	it	ne
 800098c:	3203      	addne	r2, #3
 800098e:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000992:	f1c2 0320 	rsb	r3, r2, #32
 8000996:	fa00 fc03 	lsl.w	ip, r0, r3
 800099a:	fa20 f002 	lsr.w	r0, r0, r2
 800099e:	fa01 fe03 	lsl.w	lr, r1, r3
 80009a2:	ea40 000e 	orr.w	r0, r0, lr
 80009a6:	fa21 f102 	lsr.w	r1, r1, r2
 80009aa:	4414      	add	r4, r2
 80009ac:	e6bd      	b.n	800072a <__adddf3+0xe6>
 80009ae:	bf00      	nop

080009b0 <__aeabi_dmul>:
 80009b0:	b570      	push	{r4, r5, r6, lr}
 80009b2:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80009b6:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80009ba:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80009be:	bf1d      	ittte	ne
 80009c0:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80009c4:	ea94 0f0c 	teqne	r4, ip
 80009c8:	ea95 0f0c 	teqne	r5, ip
 80009cc:	f000 f8de 	bleq	8000b8c <__aeabi_dmul+0x1dc>
 80009d0:	442c      	add	r4, r5
 80009d2:	ea81 0603 	eor.w	r6, r1, r3
 80009d6:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80009da:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 80009de:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 80009e2:	bf18      	it	ne
 80009e4:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 80009e8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80009ec:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80009f0:	d038      	beq.n	8000a64 <__aeabi_dmul+0xb4>
 80009f2:	fba0 ce02 	umull	ip, lr, r0, r2
 80009f6:	f04f 0500 	mov.w	r5, #0
 80009fa:	fbe1 e502 	umlal	lr, r5, r1, r2
 80009fe:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000a02:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000a06:	f04f 0600 	mov.w	r6, #0
 8000a0a:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000a0e:	f09c 0f00 	teq	ip, #0
 8000a12:	bf18      	it	ne
 8000a14:	f04e 0e01 	orrne.w	lr, lr, #1
 8000a18:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000a1c:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000a20:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000a24:	d204      	bcs.n	8000a30 <__aeabi_dmul+0x80>
 8000a26:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000a2a:	416d      	adcs	r5, r5
 8000a2c:	eb46 0606 	adc.w	r6, r6, r6
 8000a30:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000a34:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000a38:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000a3c:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000a40:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000a44:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000a48:	bf88      	it	hi
 8000a4a:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000a4e:	d81e      	bhi.n	8000a8e <__aeabi_dmul+0xde>
 8000a50:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000a54:	bf08      	it	eq
 8000a56:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000a5a:	f150 0000 	adcs.w	r0, r0, #0
 8000a5e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000a62:	bd70      	pop	{r4, r5, r6, pc}
 8000a64:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000a68:	ea46 0101 	orr.w	r1, r6, r1
 8000a6c:	ea40 0002 	orr.w	r0, r0, r2
 8000a70:	ea81 0103 	eor.w	r1, r1, r3
 8000a74:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000a78:	bfc2      	ittt	gt
 8000a7a:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000a7e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000a82:	bd70      	popgt	{r4, r5, r6, pc}
 8000a84:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000a88:	f04f 0e00 	mov.w	lr, #0
 8000a8c:	3c01      	subs	r4, #1
 8000a8e:	f300 80ab 	bgt.w	8000be8 <__aeabi_dmul+0x238>
 8000a92:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000a96:	bfde      	ittt	le
 8000a98:	2000      	movle	r0, #0
 8000a9a:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000a9e:	bd70      	pople	{r4, r5, r6, pc}
 8000aa0:	f1c4 0400 	rsb	r4, r4, #0
 8000aa4:	3c20      	subs	r4, #32
 8000aa6:	da35      	bge.n	8000b14 <__aeabi_dmul+0x164>
 8000aa8:	340c      	adds	r4, #12
 8000aaa:	dc1b      	bgt.n	8000ae4 <__aeabi_dmul+0x134>
 8000aac:	f104 0414 	add.w	r4, r4, #20
 8000ab0:	f1c4 0520 	rsb	r5, r4, #32
 8000ab4:	fa00 f305 	lsl.w	r3, r0, r5
 8000ab8:	fa20 f004 	lsr.w	r0, r0, r4
 8000abc:	fa01 f205 	lsl.w	r2, r1, r5
 8000ac0:	ea40 0002 	orr.w	r0, r0, r2
 8000ac4:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000ac8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000acc:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000ad0:	fa21 f604 	lsr.w	r6, r1, r4
 8000ad4:	eb42 0106 	adc.w	r1, r2, r6
 8000ad8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000adc:	bf08      	it	eq
 8000ade:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000ae2:	bd70      	pop	{r4, r5, r6, pc}
 8000ae4:	f1c4 040c 	rsb	r4, r4, #12
 8000ae8:	f1c4 0520 	rsb	r5, r4, #32
 8000aec:	fa00 f304 	lsl.w	r3, r0, r4
 8000af0:	fa20 f005 	lsr.w	r0, r0, r5
 8000af4:	fa01 f204 	lsl.w	r2, r1, r4
 8000af8:	ea40 0002 	orr.w	r0, r0, r2
 8000afc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000b00:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000b04:	f141 0100 	adc.w	r1, r1, #0
 8000b08:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000b0c:	bf08      	it	eq
 8000b0e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000b12:	bd70      	pop	{r4, r5, r6, pc}
 8000b14:	f1c4 0520 	rsb	r5, r4, #32
 8000b18:	fa00 f205 	lsl.w	r2, r0, r5
 8000b1c:	ea4e 0e02 	orr.w	lr, lr, r2
 8000b20:	fa20 f304 	lsr.w	r3, r0, r4
 8000b24:	fa01 f205 	lsl.w	r2, r1, r5
 8000b28:	ea43 0302 	orr.w	r3, r3, r2
 8000b2c:	fa21 f004 	lsr.w	r0, r1, r4
 8000b30:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000b34:	fa21 f204 	lsr.w	r2, r1, r4
 8000b38:	ea20 0002 	bic.w	r0, r0, r2
 8000b3c:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000b40:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000b44:	bf08      	it	eq
 8000b46:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000b4a:	bd70      	pop	{r4, r5, r6, pc}
 8000b4c:	f094 0f00 	teq	r4, #0
 8000b50:	d10f      	bne.n	8000b72 <__aeabi_dmul+0x1c2>
 8000b52:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000b56:	0040      	lsls	r0, r0, #1
 8000b58:	eb41 0101 	adc.w	r1, r1, r1
 8000b5c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000b60:	bf08      	it	eq
 8000b62:	3c01      	subeq	r4, #1
 8000b64:	d0f7      	beq.n	8000b56 <__aeabi_dmul+0x1a6>
 8000b66:	ea41 0106 	orr.w	r1, r1, r6
 8000b6a:	f095 0f00 	teq	r5, #0
 8000b6e:	bf18      	it	ne
 8000b70:	4770      	bxne	lr
 8000b72:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000b76:	0052      	lsls	r2, r2, #1
 8000b78:	eb43 0303 	adc.w	r3, r3, r3
 8000b7c:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000b80:	bf08      	it	eq
 8000b82:	3d01      	subeq	r5, #1
 8000b84:	d0f7      	beq.n	8000b76 <__aeabi_dmul+0x1c6>
 8000b86:	ea43 0306 	orr.w	r3, r3, r6
 8000b8a:	4770      	bx	lr
 8000b8c:	ea94 0f0c 	teq	r4, ip
 8000b90:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000b94:	bf18      	it	ne
 8000b96:	ea95 0f0c 	teqne	r5, ip
 8000b9a:	d00c      	beq.n	8000bb6 <__aeabi_dmul+0x206>
 8000b9c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000ba0:	bf18      	it	ne
 8000ba2:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000ba6:	d1d1      	bne.n	8000b4c <__aeabi_dmul+0x19c>
 8000ba8:	ea81 0103 	eor.w	r1, r1, r3
 8000bac:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000bb0:	f04f 0000 	mov.w	r0, #0
 8000bb4:	bd70      	pop	{r4, r5, r6, pc}
 8000bb6:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000bba:	bf06      	itte	eq
 8000bbc:	4610      	moveq	r0, r2
 8000bbe:	4619      	moveq	r1, r3
 8000bc0:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000bc4:	d019      	beq.n	8000bfa <__aeabi_dmul+0x24a>
 8000bc6:	ea94 0f0c 	teq	r4, ip
 8000bca:	d102      	bne.n	8000bd2 <__aeabi_dmul+0x222>
 8000bcc:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000bd0:	d113      	bne.n	8000bfa <__aeabi_dmul+0x24a>
 8000bd2:	ea95 0f0c 	teq	r5, ip
 8000bd6:	d105      	bne.n	8000be4 <__aeabi_dmul+0x234>
 8000bd8:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000bdc:	bf1c      	itt	ne
 8000bde:	4610      	movne	r0, r2
 8000be0:	4619      	movne	r1, r3
 8000be2:	d10a      	bne.n	8000bfa <__aeabi_dmul+0x24a>
 8000be4:	ea81 0103 	eor.w	r1, r1, r3
 8000be8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000bec:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000bf0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000bf4:	f04f 0000 	mov.w	r0, #0
 8000bf8:	bd70      	pop	{r4, r5, r6, pc}
 8000bfa:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000bfe:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000c02:	bd70      	pop	{r4, r5, r6, pc}

08000c04 <__aeabi_ddiv>:
 8000c04:	b570      	push	{r4, r5, r6, lr}
 8000c06:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000c0a:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000c0e:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000c12:	bf1d      	ittte	ne
 8000c14:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000c18:	ea94 0f0c 	teqne	r4, ip
 8000c1c:	ea95 0f0c 	teqne	r5, ip
 8000c20:	f000 f8a7 	bleq	8000d72 <__aeabi_ddiv+0x16e>
 8000c24:	eba4 0405 	sub.w	r4, r4, r5
 8000c28:	ea81 0e03 	eor.w	lr, r1, r3
 8000c2c:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000c30:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000c34:	f000 8088 	beq.w	8000d48 <__aeabi_ddiv+0x144>
 8000c38:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000c3c:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000c40:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000c44:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000c48:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000c4c:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000c50:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000c54:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000c58:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000c5c:	429d      	cmp	r5, r3
 8000c5e:	bf08      	it	eq
 8000c60:	4296      	cmpeq	r6, r2
 8000c62:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000c66:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000c6a:	d202      	bcs.n	8000c72 <__aeabi_ddiv+0x6e>
 8000c6c:	085b      	lsrs	r3, r3, #1
 8000c6e:	ea4f 0232 	mov.w	r2, r2, rrx
 8000c72:	1ab6      	subs	r6, r6, r2
 8000c74:	eb65 0503 	sbc.w	r5, r5, r3
 8000c78:	085b      	lsrs	r3, r3, #1
 8000c7a:	ea4f 0232 	mov.w	r2, r2, rrx
 8000c7e:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000c82:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000c86:	ebb6 0e02 	subs.w	lr, r6, r2
 8000c8a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000c8e:	bf22      	ittt	cs
 8000c90:	1ab6      	subcs	r6, r6, r2
 8000c92:	4675      	movcs	r5, lr
 8000c94:	ea40 000c 	orrcs.w	r0, r0, ip
 8000c98:	085b      	lsrs	r3, r3, #1
 8000c9a:	ea4f 0232 	mov.w	r2, r2, rrx
 8000c9e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000ca2:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000ca6:	bf22      	ittt	cs
 8000ca8:	1ab6      	subcs	r6, r6, r2
 8000caa:	4675      	movcs	r5, lr
 8000cac:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000cb0:	085b      	lsrs	r3, r3, #1
 8000cb2:	ea4f 0232 	mov.w	r2, r2, rrx
 8000cb6:	ebb6 0e02 	subs.w	lr, r6, r2
 8000cba:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000cbe:	bf22      	ittt	cs
 8000cc0:	1ab6      	subcs	r6, r6, r2
 8000cc2:	4675      	movcs	r5, lr
 8000cc4:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000cc8:	085b      	lsrs	r3, r3, #1
 8000cca:	ea4f 0232 	mov.w	r2, r2, rrx
 8000cce:	ebb6 0e02 	subs.w	lr, r6, r2
 8000cd2:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000cd6:	bf22      	ittt	cs
 8000cd8:	1ab6      	subcs	r6, r6, r2
 8000cda:	4675      	movcs	r5, lr
 8000cdc:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000ce0:	ea55 0e06 	orrs.w	lr, r5, r6
 8000ce4:	d018      	beq.n	8000d18 <__aeabi_ddiv+0x114>
 8000ce6:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000cea:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000cee:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000cf2:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000cf6:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000cfa:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000cfe:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000d02:	d1c0      	bne.n	8000c86 <__aeabi_ddiv+0x82>
 8000d04:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000d08:	d10b      	bne.n	8000d22 <__aeabi_ddiv+0x11e>
 8000d0a:	ea41 0100 	orr.w	r1, r1, r0
 8000d0e:	f04f 0000 	mov.w	r0, #0
 8000d12:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000d16:	e7b6      	b.n	8000c86 <__aeabi_ddiv+0x82>
 8000d18:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000d1c:	bf04      	itt	eq
 8000d1e:	4301      	orreq	r1, r0
 8000d20:	2000      	moveq	r0, #0
 8000d22:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000d26:	bf88      	it	hi
 8000d28:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000d2c:	f63f aeaf 	bhi.w	8000a8e <__aeabi_dmul+0xde>
 8000d30:	ebb5 0c03 	subs.w	ip, r5, r3
 8000d34:	bf04      	itt	eq
 8000d36:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000d3a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000d3e:	f150 0000 	adcs.w	r0, r0, #0
 8000d42:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000d46:	bd70      	pop	{r4, r5, r6, pc}
 8000d48:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000d4c:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000d50:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000d54:	bfc2      	ittt	gt
 8000d56:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000d5a:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000d5e:	bd70      	popgt	{r4, r5, r6, pc}
 8000d60:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000d64:	f04f 0e00 	mov.w	lr, #0
 8000d68:	3c01      	subs	r4, #1
 8000d6a:	e690      	b.n	8000a8e <__aeabi_dmul+0xde>
 8000d6c:	ea45 0e06 	orr.w	lr, r5, r6
 8000d70:	e68d      	b.n	8000a8e <__aeabi_dmul+0xde>
 8000d72:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000d76:	ea94 0f0c 	teq	r4, ip
 8000d7a:	bf08      	it	eq
 8000d7c:	ea95 0f0c 	teqeq	r5, ip
 8000d80:	f43f af3b 	beq.w	8000bfa <__aeabi_dmul+0x24a>
 8000d84:	ea94 0f0c 	teq	r4, ip
 8000d88:	d10a      	bne.n	8000da0 <__aeabi_ddiv+0x19c>
 8000d8a:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000d8e:	f47f af34 	bne.w	8000bfa <__aeabi_dmul+0x24a>
 8000d92:	ea95 0f0c 	teq	r5, ip
 8000d96:	f47f af25 	bne.w	8000be4 <__aeabi_dmul+0x234>
 8000d9a:	4610      	mov	r0, r2
 8000d9c:	4619      	mov	r1, r3
 8000d9e:	e72c      	b.n	8000bfa <__aeabi_dmul+0x24a>
 8000da0:	ea95 0f0c 	teq	r5, ip
 8000da4:	d106      	bne.n	8000db4 <__aeabi_ddiv+0x1b0>
 8000da6:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000daa:	f43f aefd 	beq.w	8000ba8 <__aeabi_dmul+0x1f8>
 8000dae:	4610      	mov	r0, r2
 8000db0:	4619      	mov	r1, r3
 8000db2:	e722      	b.n	8000bfa <__aeabi_dmul+0x24a>
 8000db4:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000db8:	bf18      	it	ne
 8000dba:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000dbe:	f47f aec5 	bne.w	8000b4c <__aeabi_dmul+0x19c>
 8000dc2:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8000dc6:	f47f af0d 	bne.w	8000be4 <__aeabi_dmul+0x234>
 8000dca:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8000dce:	f47f aeeb 	bne.w	8000ba8 <__aeabi_dmul+0x1f8>
 8000dd2:	e712      	b.n	8000bfa <__aeabi_dmul+0x24a>

08000dd4 <__gedf2>:
 8000dd4:	f04f 3cff 	mov.w	ip, #4294967295
 8000dd8:	e006      	b.n	8000de8 <__cmpdf2+0x4>
 8000dda:	bf00      	nop

08000ddc <__ledf2>:
 8000ddc:	f04f 0c01 	mov.w	ip, #1
 8000de0:	e002      	b.n	8000de8 <__cmpdf2+0x4>
 8000de2:	bf00      	nop

08000de4 <__cmpdf2>:
 8000de4:	f04f 0c01 	mov.w	ip, #1
 8000de8:	f84d cd04 	str.w	ip, [sp, #-4]!
 8000dec:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000df0:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000df4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000df8:	bf18      	it	ne
 8000dfa:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8000dfe:	d01b      	beq.n	8000e38 <__cmpdf2+0x54>
 8000e00:	b001      	add	sp, #4
 8000e02:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8000e06:	bf0c      	ite	eq
 8000e08:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8000e0c:	ea91 0f03 	teqne	r1, r3
 8000e10:	bf02      	ittt	eq
 8000e12:	ea90 0f02 	teqeq	r0, r2
 8000e16:	2000      	moveq	r0, #0
 8000e18:	4770      	bxeq	lr
 8000e1a:	f110 0f00 	cmn.w	r0, #0
 8000e1e:	ea91 0f03 	teq	r1, r3
 8000e22:	bf58      	it	pl
 8000e24:	4299      	cmppl	r1, r3
 8000e26:	bf08      	it	eq
 8000e28:	4290      	cmpeq	r0, r2
 8000e2a:	bf2c      	ite	cs
 8000e2c:	17d8      	asrcs	r0, r3, #31
 8000e2e:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8000e32:	f040 0001 	orr.w	r0, r0, #1
 8000e36:	4770      	bx	lr
 8000e38:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000e3c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000e40:	d102      	bne.n	8000e48 <__cmpdf2+0x64>
 8000e42:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000e46:	d107      	bne.n	8000e58 <__cmpdf2+0x74>
 8000e48:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000e4c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000e50:	d1d6      	bne.n	8000e00 <__cmpdf2+0x1c>
 8000e52:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000e56:	d0d3      	beq.n	8000e00 <__cmpdf2+0x1c>
 8000e58:	f85d 0b04 	ldr.w	r0, [sp], #4
 8000e5c:	4770      	bx	lr
 8000e5e:	bf00      	nop

08000e60 <__aeabi_cdrcmple>:
 8000e60:	4684      	mov	ip, r0
 8000e62:	4610      	mov	r0, r2
 8000e64:	4662      	mov	r2, ip
 8000e66:	468c      	mov	ip, r1
 8000e68:	4619      	mov	r1, r3
 8000e6a:	4663      	mov	r3, ip
 8000e6c:	e000      	b.n	8000e70 <__aeabi_cdcmpeq>
 8000e6e:	bf00      	nop

08000e70 <__aeabi_cdcmpeq>:
 8000e70:	b501      	push	{r0, lr}
 8000e72:	f7ff ffb7 	bl	8000de4 <__cmpdf2>
 8000e76:	2800      	cmp	r0, #0
 8000e78:	bf48      	it	mi
 8000e7a:	f110 0f00 	cmnmi.w	r0, #0
 8000e7e:	bd01      	pop	{r0, pc}

08000e80 <__aeabi_dcmpeq>:
 8000e80:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000e84:	f7ff fff4 	bl	8000e70 <__aeabi_cdcmpeq>
 8000e88:	bf0c      	ite	eq
 8000e8a:	2001      	moveq	r0, #1
 8000e8c:	2000      	movne	r0, #0
 8000e8e:	f85d fb08 	ldr.w	pc, [sp], #8
 8000e92:	bf00      	nop

08000e94 <__aeabi_dcmplt>:
 8000e94:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000e98:	f7ff ffea 	bl	8000e70 <__aeabi_cdcmpeq>
 8000e9c:	bf34      	ite	cc
 8000e9e:	2001      	movcc	r0, #1
 8000ea0:	2000      	movcs	r0, #0
 8000ea2:	f85d fb08 	ldr.w	pc, [sp], #8
 8000ea6:	bf00      	nop

08000ea8 <__aeabi_dcmple>:
 8000ea8:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000eac:	f7ff ffe0 	bl	8000e70 <__aeabi_cdcmpeq>
 8000eb0:	bf94      	ite	ls
 8000eb2:	2001      	movls	r0, #1
 8000eb4:	2000      	movhi	r0, #0
 8000eb6:	f85d fb08 	ldr.w	pc, [sp], #8
 8000eba:	bf00      	nop

08000ebc <__aeabi_dcmpge>:
 8000ebc:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000ec0:	f7ff ffce 	bl	8000e60 <__aeabi_cdrcmple>
 8000ec4:	bf94      	ite	ls
 8000ec6:	2001      	movls	r0, #1
 8000ec8:	2000      	movhi	r0, #0
 8000eca:	f85d fb08 	ldr.w	pc, [sp], #8
 8000ece:	bf00      	nop

08000ed0 <__aeabi_dcmpgt>:
 8000ed0:	f84d ed08 	str.w	lr, [sp, #-8]!
 8000ed4:	f7ff ffc4 	bl	8000e60 <__aeabi_cdrcmple>
 8000ed8:	bf34      	ite	cc
 8000eda:	2001      	movcc	r0, #1
 8000edc:	2000      	movcs	r0, #0
 8000ede:	f85d fb08 	ldr.w	pc, [sp], #8
 8000ee2:	bf00      	nop

08000ee4 <__aeabi_dcmpun>:
 8000ee4:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8000ee8:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000eec:	d102      	bne.n	8000ef4 <__aeabi_dcmpun+0x10>
 8000eee:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8000ef2:	d10a      	bne.n	8000f0a <__aeabi_dcmpun+0x26>
 8000ef4:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8000ef8:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8000efc:	d102      	bne.n	8000f04 <__aeabi_dcmpun+0x20>
 8000efe:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8000f02:	d102      	bne.n	8000f0a <__aeabi_dcmpun+0x26>
 8000f04:	f04f 0000 	mov.w	r0, #0
 8000f08:	4770      	bx	lr
 8000f0a:	f04f 0001 	mov.w	r0, #1
 8000f0e:	4770      	bx	lr

08000f10 <__aeabi_d2iz>:
 8000f10:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8000f14:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8000f18:	d215      	bcs.n	8000f46 <__aeabi_d2iz+0x36>
 8000f1a:	d511      	bpl.n	8000f40 <__aeabi_d2iz+0x30>
 8000f1c:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8000f20:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8000f24:	d912      	bls.n	8000f4c <__aeabi_d2iz+0x3c>
 8000f26:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8000f2a:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8000f2e:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8000f32:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000f36:	fa23 f002 	lsr.w	r0, r3, r2
 8000f3a:	bf18      	it	ne
 8000f3c:	4240      	negne	r0, r0
 8000f3e:	4770      	bx	lr
 8000f40:	f04f 0000 	mov.w	r0, #0
 8000f44:	4770      	bx	lr
 8000f46:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8000f4a:	d105      	bne.n	8000f58 <__aeabi_d2iz+0x48>
 8000f4c:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8000f50:	bf08      	it	eq
 8000f52:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8000f56:	4770      	bx	lr
 8000f58:	f04f 0000 	mov.w	r0, #0
 8000f5c:	4770      	bx	lr
 8000f5e:	bf00      	nop

08000f60 <main>:
/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
 8000f60:	b580      	push	{r7, lr}
 8000f62:	af00      	add	r7, sp, #0
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();
 8000f64:	f000 fb1c 	bl	80015a0 <HAL_Init>
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();
 8000f68:	f000 f842 	bl	8000ff0 <SystemClock_Config>
  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
 8000f6c:	f000 f8de 	bl	800112c <MX_GPIO_Init>
  MX_USART2_UART_Init();
 8000f70:	f000 f890 	bl	8001094 <MX_USART2_UART_Init>
  /* USER CODE BEGIN 2 */
  /* Configure LED2 and LED3 */
  BSP_LED_Init(LED2);
 8000f74:	2001      	movs	r0, #1
 8000f76:	f003 fae9 	bl	800454c <BSP_LED_Init>
  BSP_LED_Init(LED3);
 8000f7a:	2002      	movs	r0, #2
 8000f7c:	f003 fae6 	bl	800454c <BSP_LED_Init>

  /* Output a message on Hyperterminal using printf function */
  printf("\n\r UART Printf Example: retarget the C library printf function to the UART\n\r");
 8000f80:	4818      	ldr	r0, [pc, #96]	; (8000fe4 <main+0x84>)
 8000f82:	f003 fcdd 	bl	8004940 <printf>
  printf("** Test finished successfully. ** \n\r");
 8000f86:	4818      	ldr	r0, [pc, #96]	; (8000fe8 <main+0x88>)
 8000f88:	f003 fcda 	bl	8004940 <printf>
  /* Configure User push-button in Interrupt mode */
  BSP_PB_Init(BUTTON_USER, BUTTON_MODE_EXTI);
 8000f8c:	2101      	movs	r1, #1
 8000f8e:	2000      	movs	r0, #0
 8000f90:	f003 fb88 	bl	80046a4 <BSP_PB_Init>

  /* Wait for User push-button press before starting the Communication.
     In the meantime, LED2 is blinking */
  while (UserButtonStatus == 0)
 8000f94:	e005      	b.n	8000fa2 <main+0x42>
  {
    /* Toggle LED2*/
    BSP_LED_Toggle(LED2);
 8000f96:	2001      	movs	r0, #1
 8000f98:	f003 fb6a 	bl	8004670 <BSP_LED_Toggle>
    HAL_Delay(100);
 8000f9c:	2064      	movs	r0, #100	; 0x64
 8000f9e:	f000 fb71 	bl	8001684 <HAL_Delay>
  while (UserButtonStatus == 0)
 8000fa2:	4b12      	ldr	r3, [pc, #72]	; (8000fec <main+0x8c>)
 8000fa4:	681b      	ldr	r3, [r3, #0]
 8000fa6:	2b00      	cmp	r3, #0
 8000fa8:	d0f5      	beq.n	8000f96 <main+0x36>
  }

  BSP_LED_Off(LED2);
 8000faa:	2001      	movs	r0, #1
 8000fac:	f003 fb46 	bl	800463c <BSP_LED_Off>
    BSP_LED_On(LED2);
 8000fb0:	2001      	movs	r0, #1
 8000fb2:	f003 fb29 	bl	8004608 <BSP_LED_On>
    HAL_Delay(100);
 8000fb6:	2064      	movs	r0, #100	; 0x64
 8000fb8:	f000 fb64 	bl	8001684 <HAL_Delay>
    BSP_LED_Off(LED2);
 8000fbc:	2001      	movs	r0, #1
 8000fbe:	f003 fb3d 	bl	800463c <BSP_LED_Off>
    HAL_Delay(100);
 8000fc2:	2064      	movs	r0, #100	; 0x64
 8000fc4:	f000 fb5e 	bl	8001684 <HAL_Delay>
    BSP_LED_On(LED2);
 8000fc8:	2001      	movs	r0, #1
 8000fca:	f003 fb1d 	bl	8004608 <BSP_LED_On>
    HAL_Delay(100);
 8000fce:	2064      	movs	r0, #100	; 0x64
 8000fd0:	f000 fb58 	bl	8001684 <HAL_Delay>
    BSP_LED_Off(LED2);
 8000fd4:	2001      	movs	r0, #1
 8000fd6:	f003 fb31 	bl	800463c <BSP_LED_Off>
    HAL_Delay(500);
 8000fda:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8000fde:	f000 fb51 	bl	8001684 <HAL_Delay>
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
 8000fe2:	e7fe      	b.n	8000fe2 <main+0x82>
 8000fe4:	08009130 	.word	0x08009130
 8000fe8:	08009180 	.word	0x08009180
 8000fec:	200009f4 	.word	0x200009f4

08000ff0 <SystemClock_Config>:
/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
 8000ff0:	b580      	push	{r7, lr}
 8000ff2:	b098      	sub	sp, #96	; 0x60
 8000ff4:	af00      	add	r7, sp, #0
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
 8000ff6:	f107 0318 	add.w	r3, r7, #24
 8000ffa:	2248      	movs	r2, #72	; 0x48
 8000ffc:	2100      	movs	r1, #0
 8000ffe:	4618      	mov	r0, r3
 8001000:	f003 fc54 	bl	80048ac <memset>
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
 8001004:	1d3b      	adds	r3, r7, #4
 8001006:	2200      	movs	r2, #0
 8001008:	601a      	str	r2, [r3, #0]
 800100a:	605a      	str	r2, [r3, #4]
 800100c:	609a      	str	r2, [r3, #8]
 800100e:	60da      	str	r2, [r3, #12]
 8001010:	611a      	str	r2, [r3, #16]

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE0) != HAL_OK)
 8001012:	2000      	movs	r0, #0
 8001014:	f000 fe58 	bl	8001cc8 <HAL_PWREx_ControlVoltageScaling>
 8001018:	4603      	mov	r3, r0
 800101a:	2b00      	cmp	r3, #0
 800101c:	d001      	beq.n	8001022 <SystemClock_Config+0x32>
  {
    Error_Handler();
 800101e:	f000 f8bf 	bl	80011a0 <Error_Handler>
  }
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
 8001022:	2310      	movs	r3, #16
 8001024:	61bb      	str	r3, [r7, #24]
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
 8001026:	2301      	movs	r3, #1
 8001028:	637b      	str	r3, [r7, #52]	; 0x34
  RCC_OscInitStruct.MSICalibrationValue = RCC_MSICALIBRATION_DEFAULT;
 800102a:	2300      	movs	r3, #0
 800102c:	63bb      	str	r3, [r7, #56]	; 0x38
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
 800102e:	2360      	movs	r3, #96	; 0x60
 8001030:	63fb      	str	r3, [r7, #60]	; 0x3c
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
 8001032:	2302      	movs	r3, #2
 8001034:	647b      	str	r3, [r7, #68]	; 0x44
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_MSI;
 8001036:	2301      	movs	r3, #1
 8001038:	64bb      	str	r3, [r7, #72]	; 0x48
  RCC_OscInitStruct.PLL.PLLM = 1;
 800103a:	2301      	movs	r3, #1
 800103c:	64fb      	str	r3, [r7, #76]	; 0x4c
  RCC_OscInitStruct.PLL.PLLN = 55;
 800103e:	2337      	movs	r3, #55	; 0x37
 8001040:	653b      	str	r3, [r7, #80]	; 0x50
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV7;
 8001042:	2307      	movs	r3, #7
 8001044:	657b      	str	r3, [r7, #84]	; 0x54
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
 8001046:	2302      	movs	r3, #2
 8001048:	65bb      	str	r3, [r7, #88]	; 0x58
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
 800104a:	2302      	movs	r3, #2
 800104c:	65fb      	str	r3, [r7, #92]	; 0x5c
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
 800104e:	f107 0318 	add.w	r3, r7, #24
 8001052:	4618      	mov	r0, r3
 8001054:	f000 fec4 	bl	8001de0 <HAL_RCC_OscConfig>
 8001058:	4603      	mov	r3, r0
 800105a:	2b00      	cmp	r3, #0
 800105c:	d001      	beq.n	8001062 <SystemClock_Config+0x72>
  {
    Error_Handler();
 800105e:	f000 f89f 	bl	80011a0 <Error_Handler>
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
 8001062:	230f      	movs	r3, #15
 8001064:	607b      	str	r3, [r7, #4]
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
 8001066:	2303      	movs	r3, #3
 8001068:	60bb      	str	r3, [r7, #8]
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
 800106a:	2300      	movs	r3, #0
 800106c:	60fb      	str	r3, [r7, #12]
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
 800106e:	2300      	movs	r3, #0
 8001070:	613b      	str	r3, [r7, #16]
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
 8001072:	2300      	movs	r3, #0
 8001074:	617b      	str	r3, [r7, #20]

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
 8001076:	1d3b      	adds	r3, r7, #4
 8001078:	2105      	movs	r1, #5
 800107a:	4618      	mov	r0, r3
 800107c:	f001 fb92 	bl	80027a4 <HAL_RCC_ClockConfig>
 8001080:	4603      	mov	r3, r0
 8001082:	2b00      	cmp	r3, #0
 8001084:	d001      	beq.n	800108a <SystemClock_Config+0x9a>
  {
    Error_Handler();
 8001086:	f000 f88b 	bl	80011a0 <Error_Handler>
  }
}
 800108a:	bf00      	nop
 800108c:	3760      	adds	r7, #96	; 0x60
 800108e:	46bd      	mov	sp, r7
 8001090:	bd80      	pop	{r7, pc}
	...

08001094 <MX_USART2_UART_Init>:
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{
 8001094:	b580      	push	{r7, lr}
 8001096:	af00      	add	r7, sp, #0
  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
 8001098:	4b22      	ldr	r3, [pc, #136]	; (8001124 <MX_USART2_UART_Init+0x90>)
 800109a:	4a23      	ldr	r2, [pc, #140]	; (8001128 <MX_USART2_UART_Init+0x94>)
 800109c:	601a      	str	r2, [r3, #0]
  huart2.Init.BaudRate = 921600;
 800109e:	4b21      	ldr	r3, [pc, #132]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010a0:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 80010a4:	605a      	str	r2, [r3, #4]
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
 80010a6:	4b1f      	ldr	r3, [pc, #124]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010a8:	2200      	movs	r2, #0
 80010aa:	609a      	str	r2, [r3, #8]
  huart2.Init.StopBits = UART_STOPBITS_1;
 80010ac:	4b1d      	ldr	r3, [pc, #116]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010ae:	2200      	movs	r2, #0
 80010b0:	60da      	str	r2, [r3, #12]
  huart2.Init.Parity = UART_PARITY_NONE;
 80010b2:	4b1c      	ldr	r3, [pc, #112]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010b4:	2200      	movs	r2, #0
 80010b6:	611a      	str	r2, [r3, #16]
  huart2.Init.Mode = UART_MODE_TX_RX;
 80010b8:	4b1a      	ldr	r3, [pc, #104]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010ba:	220c      	movs	r2, #12
 80010bc:	615a      	str	r2, [r3, #20]
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
 80010be:	4b19      	ldr	r3, [pc, #100]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010c0:	2200      	movs	r2, #0
 80010c2:	619a      	str	r2, [r3, #24]
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
 80010c4:	4b17      	ldr	r3, [pc, #92]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010c6:	2200      	movs	r2, #0
 80010c8:	61da      	str	r2, [r3, #28]
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
 80010ca:	4b16      	ldr	r3, [pc, #88]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010cc:	2200      	movs	r2, #0
 80010ce:	621a      	str	r2, [r3, #32]
  huart2.Init.ClockPrescaler = UART_PRESCALER_DIV1;
 80010d0:	4b14      	ldr	r3, [pc, #80]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010d2:	2200      	movs	r2, #0
 80010d4:	625a      	str	r2, [r3, #36]	; 0x24
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
 80010d6:	4b13      	ldr	r3, [pc, #76]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010d8:	2200      	movs	r2, #0
 80010da:	629a      	str	r2, [r3, #40]	; 0x28
  if (HAL_UART_Init(&huart2) != HAL_OK)
 80010dc:	4811      	ldr	r0, [pc, #68]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010de:	f002 fb3d 	bl	800375c <HAL_UART_Init>
 80010e2:	4603      	mov	r3, r0
 80010e4:	2b00      	cmp	r3, #0
 80010e6:	d001      	beq.n	80010ec <MX_USART2_UART_Init+0x58>
  {
    Error_Handler();
 80010e8:	f000 f85a 	bl	80011a0 <Error_Handler>
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart2, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
 80010ec:	2100      	movs	r1, #0
 80010ee:	480d      	ldr	r0, [pc, #52]	; (8001124 <MX_USART2_UART_Init+0x90>)
 80010f0:	f003 f964 	bl	80043bc <HAL_UARTEx_SetTxFifoThreshold>
 80010f4:	4603      	mov	r3, r0
 80010f6:	2b00      	cmp	r3, #0
 80010f8:	d001      	beq.n	80010fe <MX_USART2_UART_Init+0x6a>
  {
    Error_Handler();
 80010fa:	f000 f851 	bl	80011a0 <Error_Handler>
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart2, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
 80010fe:	2100      	movs	r1, #0
 8001100:	4808      	ldr	r0, [pc, #32]	; (8001124 <MX_USART2_UART_Init+0x90>)
 8001102:	f003 f999 	bl	8004438 <HAL_UARTEx_SetRxFifoThreshold>
 8001106:	4603      	mov	r3, r0
 8001108:	2b00      	cmp	r3, #0
 800110a:	d001      	beq.n	8001110 <MX_USART2_UART_Init+0x7c>
  {
    Error_Handler();
 800110c:	f000 f848 	bl	80011a0 <Error_Handler>
  }
  if (HAL_UARTEx_DisableFifoMode(&huart2) != HAL_OK)
 8001110:	4804      	ldr	r0, [pc, #16]	; (8001124 <MX_USART2_UART_Init+0x90>)
 8001112:	f003 f91b 	bl	800434c <HAL_UARTEx_DisableFifoMode>
 8001116:	4603      	mov	r3, r0
 8001118:	2b00      	cmp	r3, #0
 800111a:	d001      	beq.n	8001120 <MX_USART2_UART_Init+0x8c>
  {
    Error_Handler();
 800111c:	f000 f840 	bl	80011a0 <Error_Handler>
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}
 8001120:	bf00      	nop
 8001122:	bd80      	pop	{r7, pc}
 8001124:	20000a3c 	.word	0x20000a3c
 8001128:	40004400 	.word	0x40004400

0800112c <MX_GPIO_Init>:
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
 800112c:	b480      	push	{r7}
 800112e:	b083      	sub	sp, #12
 8001130:	af00      	add	r7, sp, #0

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOA_CLK_ENABLE();
 8001132:	4b08      	ldr	r3, [pc, #32]	; (8001154 <MX_GPIO_Init+0x28>)
 8001134:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8001136:	4a07      	ldr	r2, [pc, #28]	; (8001154 <MX_GPIO_Init+0x28>)
 8001138:	f043 0301 	orr.w	r3, r3, #1
 800113c:	64d3      	str	r3, [r2, #76]	; 0x4c
 800113e:	4b05      	ldr	r3, [pc, #20]	; (8001154 <MX_GPIO_Init+0x28>)
 8001140:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8001142:	f003 0301 	and.w	r3, r3, #1
 8001146:	607b      	str	r3, [r7, #4]
 8001148:	687b      	ldr	r3, [r7, #4]

}
 800114a:	bf00      	nop
 800114c:	370c      	adds	r7, #12
 800114e:	46bd      	mov	sp, r7
 8001150:	bc80      	pop	{r7}
 8001152:	4770      	bx	lr
 8001154:	40021000 	.word	0x40021000

08001158 <__io_putchar>:
  * @brief  Retargets the C library printf function to the USART.
  * @param  None
  * @retval None
  */
PUTCHAR_PROTOTYPE
{
 8001158:	b580      	push	{r7, lr}
 800115a:	b082      	sub	sp, #8
 800115c:	af00      	add	r7, sp, #0
 800115e:	6078      	str	r0, [r7, #4]
  /* Place your implementation of fputc here */
  /* e.g. write a character to the USART3 and Loop until the end of transmission */
  HAL_UART_Transmit(&huart2, (uint8_t *)&ch, 1, 0xFFFF);
 8001160:	1d39      	adds	r1, r7, #4
 8001162:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001166:	2201      	movs	r2, #1
 8001168:	4803      	ldr	r0, [pc, #12]	; (8001178 <__io_putchar+0x20>)
 800116a:	f002 fb47 	bl	80037fc <HAL_UART_Transmit>

  return ch;
 800116e:	687b      	ldr	r3, [r7, #4]
}
 8001170:	4618      	mov	r0, r3
 8001172:	3708      	adds	r7, #8
 8001174:	46bd      	mov	sp, r7
 8001176:	bd80      	pop	{r7, pc}
 8001178:	20000a3c 	.word	0x20000a3c

0800117c <__io_getchar>:

GETCHAR_PROTOTYPE
{
 800117c:	b580      	push	{r7, lr}
 800117e:	b082      	sub	sp, #8
 8001180:	af00      	add	r7, sp, #0
  char ch;
  /* Place your implementation of fputc here */
  /* e.g. write a character to the EVAL_COM1 and Loop until the end of transmission */
  HAL_UART_Receive(&huart2, (uint8_t *)&ch, 1, 0xFFFF); 
 8001182:	1df9      	adds	r1, r7, #7
 8001184:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001188:	2201      	movs	r2, #1
 800118a:	4804      	ldr	r0, [pc, #16]	; (800119c <__io_getchar+0x20>)
 800118c:	f002 fbcc 	bl	8003928 <HAL_UART_Receive>

  return ch;
 8001190:	79fb      	ldrb	r3, [r7, #7]
}
 8001192:	4618      	mov	r0, r3
 8001194:	3708      	adds	r7, #8
 8001196:	46bd      	mov	sp, r7
 8001198:	bd80      	pop	{r7, pc}
 800119a:	bf00      	nop
 800119c:	20000a3c 	.word	0x20000a3c

080011a0 <Error_Handler>:
/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
 80011a0:	b580      	push	{r7, lr}
 80011a2:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  /* Turn LED3 on */
  BSP_LED_On(LED3);
 80011a4:	2002      	movs	r0, #2
 80011a6:	f003 fa2f 	bl	8004608 <BSP_LED_On>
  while (1);
 80011aa:	e7fe      	b.n	80011aa <Error_Handler+0xa>

080011ac <HAL_MspInit>:
/* USER CODE END 0 */
/**
  * Initializes the Global MSP.
  */
void HAL_MspInit(void)
{
 80011ac:	b580      	push	{r7, lr}
 80011ae:	b082      	sub	sp, #8
 80011b0:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN MspInit 0 */

  /* USER CODE END MspInit 0 */

  __HAL_RCC_SYSCFG_CLK_ENABLE();
 80011b2:	4b0f      	ldr	r3, [pc, #60]	; (80011f0 <HAL_MspInit+0x44>)
 80011b4:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80011b6:	4a0e      	ldr	r2, [pc, #56]	; (80011f0 <HAL_MspInit+0x44>)
 80011b8:	f043 0301 	orr.w	r3, r3, #1
 80011bc:	6613      	str	r3, [r2, #96]	; 0x60
 80011be:	4b0c      	ldr	r3, [pc, #48]	; (80011f0 <HAL_MspInit+0x44>)
 80011c0:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80011c2:	f003 0301 	and.w	r3, r3, #1
 80011c6:	607b      	str	r3, [r7, #4]
 80011c8:	687b      	ldr	r3, [r7, #4]
  __HAL_RCC_PWR_CLK_ENABLE();
 80011ca:	4b09      	ldr	r3, [pc, #36]	; (80011f0 <HAL_MspInit+0x44>)
 80011cc:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80011ce:	4a08      	ldr	r2, [pc, #32]	; (80011f0 <HAL_MspInit+0x44>)
 80011d0:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80011d4:	6593      	str	r3, [r2, #88]	; 0x58
 80011d6:	4b06      	ldr	r3, [pc, #24]	; (80011f0 <HAL_MspInit+0x44>)
 80011d8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80011da:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80011de:	603b      	str	r3, [r7, #0]
 80011e0:	683b      	ldr	r3, [r7, #0]

  /* System interrupt init*/

  /** Disable the internal Pull-Up in Dead Battery pins of UCPD peripheral
  */
  HAL_PWREx_DisableUCPDDeadBattery();
 80011e2:	f000 fdcd 	bl	8001d80 <HAL_PWREx_DisableUCPDDeadBattery>

  /* USER CODE BEGIN MspInit 1 */

  /* USER CODE END MspInit 1 */
}
 80011e6:	bf00      	nop
 80011e8:	3708      	adds	r7, #8
 80011ea:	46bd      	mov	sp, r7
 80011ec:	bd80      	pop	{r7, pc}
 80011ee:	bf00      	nop
 80011f0:	40021000 	.word	0x40021000

080011f4 <HAL_UART_MspInit>:
* This function configures the hardware resources used in this example
* @param huart: UART handle pointer
* @retval None
*/
void HAL_UART_MspInit(UART_HandleTypeDef* huart)
{
 80011f4:	b580      	push	{r7, lr}
 80011f6:	b0ae      	sub	sp, #184	; 0xb8
 80011f8:	af00      	add	r7, sp, #0
 80011fa:	6078      	str	r0, [r7, #4]
  GPIO_InitTypeDef GPIO_InitStruct = {0};
 80011fc:	f107 03a4 	add.w	r3, r7, #164	; 0xa4
 8001200:	2200      	movs	r2, #0
 8001202:	601a      	str	r2, [r3, #0]
 8001204:	605a      	str	r2, [r3, #4]
 8001206:	609a      	str	r2, [r3, #8]
 8001208:	60da      	str	r2, [r3, #12]
 800120a:	611a      	str	r2, [r3, #16]
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};
 800120c:	f107 0310 	add.w	r3, r7, #16
 8001210:	2294      	movs	r2, #148	; 0x94
 8001212:	2100      	movs	r1, #0
 8001214:	4618      	mov	r0, r3
 8001216:	f003 fb49 	bl	80048ac <memset>
  if(huart->Instance==USART2)
 800121a:	687b      	ldr	r3, [r7, #4]
 800121c:	681b      	ldr	r3, [r3, #0]
 800121e:	4a25      	ldr	r2, [pc, #148]	; (80012b4 <HAL_UART_MspInit+0xc0>)
 8001220:	4293      	cmp	r3, r2
 8001222:	d142      	bne.n	80012aa <HAL_UART_MspInit+0xb6>
  /* USER CODE BEGIN USART2_MspInit 0 */

  /* USER CODE END USART2_MspInit 0 */
  /** Initializes the peripherals clock
  */
    PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART2;
 8001224:	2302      	movs	r3, #2
 8001226:	613b      	str	r3, [r7, #16]
    PeriphClkInit.Usart2ClockSelection = RCC_USART2CLKSOURCE_PCLK1;
 8001228:	2300      	movs	r3, #0
 800122a:	64bb      	str	r3, [r7, #72]	; 0x48
    if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
 800122c:	f107 0310 	add.w	r3, r7, #16
 8001230:	4618      	mov	r0, r3
 8001232:	f001 fd8f 	bl	8002d54 <HAL_RCCEx_PeriphCLKConfig>
 8001236:	4603      	mov	r3, r0
 8001238:	2b00      	cmp	r3, #0
 800123a:	d001      	beq.n	8001240 <HAL_UART_MspInit+0x4c>
    {
      Error_Handler();
 800123c:	f7ff ffb0 	bl	80011a0 <Error_Handler>
    }

    /* Peripheral clock enable */
    __HAL_RCC_USART2_CLK_ENABLE();
 8001240:	4b1d      	ldr	r3, [pc, #116]	; (80012b8 <HAL_UART_MspInit+0xc4>)
 8001242:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001244:	4a1c      	ldr	r2, [pc, #112]	; (80012b8 <HAL_UART_MspInit+0xc4>)
 8001246:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800124a:	6593      	str	r3, [r2, #88]	; 0x58
 800124c:	4b1a      	ldr	r3, [pc, #104]	; (80012b8 <HAL_UART_MspInit+0xc4>)
 800124e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8001250:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001254:	60fb      	str	r3, [r7, #12]
 8001256:	68fb      	ldr	r3, [r7, #12]

    __HAL_RCC_GPIOA_CLK_ENABLE();
 8001258:	4b17      	ldr	r3, [pc, #92]	; (80012b8 <HAL_UART_MspInit+0xc4>)
 800125a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800125c:	4a16      	ldr	r2, [pc, #88]	; (80012b8 <HAL_UART_MspInit+0xc4>)
 800125e:	f043 0301 	orr.w	r3, r3, #1
 8001262:	64d3      	str	r3, [r2, #76]	; 0x4c
 8001264:	4b14      	ldr	r3, [pc, #80]	; (80012b8 <HAL_UART_MspInit+0xc4>)
 8001266:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8001268:	f003 0301 	and.w	r3, r3, #1
 800126c:	60bb      	str	r3, [r7, #8]
 800126e:	68bb      	ldr	r3, [r7, #8]
    /**USART2 GPIO Configuration
    PA2     ------> USART2_TX
    PA3     ------> USART2_RX
    */
    GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_3;
 8001270:	230c      	movs	r3, #12
 8001272:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 8001276:	2302      	movs	r3, #2
 8001278:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
    GPIO_InitStruct.Pull = GPIO_PULLUP;
 800127c:	2301      	movs	r3, #1
 800127e:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
 8001282:	2300      	movs	r3, #0
 8001284:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
    GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
 8001288:	2307      	movs	r3, #7
 800128a:	f8c7 30b4 	str.w	r3, [r7, #180]	; 0xb4
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 800128e:	f107 03a4 	add.w	r3, r7, #164	; 0xa4
 8001292:	4619      	mov	r1, r3
 8001294:	4809      	ldr	r0, [pc, #36]	; (80012bc <HAL_UART_MspInit+0xc8>)
 8001296:	f000 fb5d 	bl	8001954 <HAL_GPIO_Init>

    /* USART2 interrupt Init */
    HAL_NVIC_SetPriority(USART2_IRQn, 0, 0);
 800129a:	2200      	movs	r2, #0
 800129c:	2100      	movs	r1, #0
 800129e:	203e      	movs	r0, #62	; 0x3e
 80012a0:	f000 fae9 	bl	8001876 <HAL_NVIC_SetPriority>
    HAL_NVIC_EnableIRQ(USART2_IRQn);
 80012a4:	203e      	movs	r0, #62	; 0x3e
 80012a6:	f000 fb00 	bl	80018aa <HAL_NVIC_EnableIRQ>
  /* USER CODE BEGIN USART2_MspInit 1 */

  /* USER CODE END USART2_MspInit 1 */
  }

}
 80012aa:	bf00      	nop
 80012ac:	37b8      	adds	r7, #184	; 0xb8
 80012ae:	46bd      	mov	sp, r7
 80012b0:	bd80      	pop	{r7, pc}
 80012b2:	bf00      	nop
 80012b4:	40004400 	.word	0x40004400
 80012b8:	40021000 	.word	0x40021000
 80012bc:	42020000 	.word	0x42020000

080012c0 <NMI_Handler>:
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
 80012c0:	b480      	push	{r7}
 80012c2:	af00      	add	r7, sp, #0

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */

  /* USER CODE END NonMaskableInt_IRQn 1 */
}
 80012c4:	bf00      	nop
 80012c6:	46bd      	mov	sp, r7
 80012c8:	bc80      	pop	{r7}
 80012ca:	4770      	bx	lr

080012cc <HardFault_Handler>:

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
 80012cc:	b480      	push	{r7}
 80012ce:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
 80012d0:	e7fe      	b.n	80012d0 <HardFault_Handler+0x4>

080012d2 <MemManage_Handler>:

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
 80012d2:	b480      	push	{r7}
 80012d4:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
 80012d6:	e7fe      	b.n	80012d6 <MemManage_Handler+0x4>

080012d8 <BusFault_Handler>:

/**
  * @brief This function handles Prefetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
 80012d8:	b480      	push	{r7}
 80012da:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
 80012dc:	e7fe      	b.n	80012dc <BusFault_Handler+0x4>

080012de <UsageFault_Handler>:

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
 80012de:	b480      	push	{r7}
 80012e0:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
 80012e2:	e7fe      	b.n	80012e2 <UsageFault_Handler+0x4>

080012e4 <SVC_Handler>:

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
 80012e4:	b480      	push	{r7}
 80012e6:	af00      	add	r7, sp, #0

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}
 80012e8:	bf00      	nop
 80012ea:	46bd      	mov	sp, r7
 80012ec:	bc80      	pop	{r7}
 80012ee:	4770      	bx	lr

080012f0 <DebugMon_Handler>:

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
 80012f0:	b480      	push	{r7}
 80012f2:	af00      	add	r7, sp, #0

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}
 80012f4:	bf00      	nop
 80012f6:	46bd      	mov	sp, r7
 80012f8:	bc80      	pop	{r7}
 80012fa:	4770      	bx	lr

080012fc <PendSV_Handler>:

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
 80012fc:	b480      	push	{r7}
 80012fe:	af00      	add	r7, sp, #0

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}
 8001300:	bf00      	nop
 8001302:	46bd      	mov	sp, r7
 8001304:	bc80      	pop	{r7}
 8001306:	4770      	bx	lr

08001308 <SysTick_Handler>:

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
 8001308:	b580      	push	{r7, lr}
 800130a:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
 800130c:	f000 f99e 	bl	800164c <HAL_IncTick>
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}
 8001310:	bf00      	nop
 8001312:	bd80      	pop	{r7, pc}

08001314 <_read>:
	_kill(status, -1);
	while (1) {}		/* Make sure we hang here */
}

__attribute__((weak)) int _read(int file, char *ptr, int len)
{
 8001314:	b580      	push	{r7, lr}
 8001316:	b086      	sub	sp, #24
 8001318:	af00      	add	r7, sp, #0
 800131a:	60f8      	str	r0, [r7, #12]
 800131c:	60b9      	str	r1, [r7, #8]
 800131e:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8001320:	2300      	movs	r3, #0
 8001322:	617b      	str	r3, [r7, #20]
 8001324:	e00a      	b.n	800133c <_read+0x28>
	{
		*ptr++ = __io_getchar();
 8001326:	f7ff ff29 	bl	800117c <__io_getchar>
 800132a:	4601      	mov	r1, r0
 800132c:	68bb      	ldr	r3, [r7, #8]
 800132e:	1c5a      	adds	r2, r3, #1
 8001330:	60ba      	str	r2, [r7, #8]
 8001332:	b2ca      	uxtb	r2, r1
 8001334:	701a      	strb	r2, [r3, #0]
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 8001336:	697b      	ldr	r3, [r7, #20]
 8001338:	3301      	adds	r3, #1
 800133a:	617b      	str	r3, [r7, #20]
 800133c:	697a      	ldr	r2, [r7, #20]
 800133e:	687b      	ldr	r3, [r7, #4]
 8001340:	429a      	cmp	r2, r3
 8001342:	dbf0      	blt.n	8001326 <_read+0x12>
	}

return len;
 8001344:	687b      	ldr	r3, [r7, #4]
}
 8001346:	4618      	mov	r0, r3
 8001348:	3718      	adds	r7, #24
 800134a:	46bd      	mov	sp, r7
 800134c:	bd80      	pop	{r7, pc}

0800134e <_write>:

__attribute__((weak)) int _write(int file, char *ptr, int len)
{
 800134e:	b580      	push	{r7, lr}
 8001350:	b086      	sub	sp, #24
 8001352:	af00      	add	r7, sp, #0
 8001354:	60f8      	str	r0, [r7, #12]
 8001356:	60b9      	str	r1, [r7, #8]
 8001358:	607a      	str	r2, [r7, #4]
	int DataIdx;

	for (DataIdx = 0; DataIdx < len; DataIdx++)
 800135a:	2300      	movs	r3, #0
 800135c:	617b      	str	r3, [r7, #20]
 800135e:	e009      	b.n	8001374 <_write+0x26>
	{
		__io_putchar(*ptr++);
 8001360:	68bb      	ldr	r3, [r7, #8]
 8001362:	1c5a      	adds	r2, r3, #1
 8001364:	60ba      	str	r2, [r7, #8]
 8001366:	781b      	ldrb	r3, [r3, #0]
 8001368:	4618      	mov	r0, r3
 800136a:	f7ff fef5 	bl	8001158 <__io_putchar>
	for (DataIdx = 0; DataIdx < len; DataIdx++)
 800136e:	697b      	ldr	r3, [r7, #20]
 8001370:	3301      	adds	r3, #1
 8001372:	617b      	str	r3, [r7, #20]
 8001374:	697a      	ldr	r2, [r7, #20]
 8001376:	687b      	ldr	r3, [r7, #4]
 8001378:	429a      	cmp	r2, r3
 800137a:	dbf1      	blt.n	8001360 <_write+0x12>
	}
	return len;
 800137c:	687b      	ldr	r3, [r7, #4]
}
 800137e:	4618      	mov	r0, r3
 8001380:	3718      	adds	r7, #24
 8001382:	46bd      	mov	sp, r7
 8001384:	bd80      	pop	{r7, pc}

08001386 <_close>:

int _close(int file)
{
 8001386:	b480      	push	{r7}
 8001388:	b083      	sub	sp, #12
 800138a:	af00      	add	r7, sp, #0
 800138c:	6078      	str	r0, [r7, #4]
	return -1;
 800138e:	f04f 33ff 	mov.w	r3, #4294967295
}
 8001392:	4618      	mov	r0, r3
 8001394:	370c      	adds	r7, #12
 8001396:	46bd      	mov	sp, r7
 8001398:	bc80      	pop	{r7}
 800139a:	4770      	bx	lr

0800139c <_fstat>:


int _fstat(int file, struct stat *st)
{
 800139c:	b480      	push	{r7}
 800139e:	b083      	sub	sp, #12
 80013a0:	af00      	add	r7, sp, #0
 80013a2:	6078      	str	r0, [r7, #4]
 80013a4:	6039      	str	r1, [r7, #0]
	st->st_mode = S_IFCHR;
 80013a6:	683b      	ldr	r3, [r7, #0]
 80013a8:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80013ac:	605a      	str	r2, [r3, #4]
	return 0;
 80013ae:	2300      	movs	r3, #0
}
 80013b0:	4618      	mov	r0, r3
 80013b2:	370c      	adds	r7, #12
 80013b4:	46bd      	mov	sp, r7
 80013b6:	bc80      	pop	{r7}
 80013b8:	4770      	bx	lr

080013ba <_isatty>:

int _isatty(int file)
{
 80013ba:	b480      	push	{r7}
 80013bc:	b083      	sub	sp, #12
 80013be:	af00      	add	r7, sp, #0
 80013c0:	6078      	str	r0, [r7, #4]
	return 1;
 80013c2:	2301      	movs	r3, #1
}
 80013c4:	4618      	mov	r0, r3
 80013c6:	370c      	adds	r7, #12
 80013c8:	46bd      	mov	sp, r7
 80013ca:	bc80      	pop	{r7}
 80013cc:	4770      	bx	lr

080013ce <_lseek>:

int _lseek(int file, int ptr, int dir)
{
 80013ce:	b480      	push	{r7}
 80013d0:	b085      	sub	sp, #20
 80013d2:	af00      	add	r7, sp, #0
 80013d4:	60f8      	str	r0, [r7, #12]
 80013d6:	60b9      	str	r1, [r7, #8]
 80013d8:	607a      	str	r2, [r7, #4]
	return 0;
 80013da:	2300      	movs	r3, #0
}
 80013dc:	4618      	mov	r0, r3
 80013de:	3714      	adds	r7, #20
 80013e0:	46bd      	mov	sp, r7
 80013e2:	bc80      	pop	{r7}
 80013e4:	4770      	bx	lr
	...

080013e8 <_sbrk>:
/**
 _sbrk
 Increase program data space. Malloc and related functions depend on this
**/
caddr_t _sbrk(int incr)
{
 80013e8:	b580      	push	{r7, lr}
 80013ea:	b084      	sub	sp, #16
 80013ec:	af00      	add	r7, sp, #0
 80013ee:	6078      	str	r0, [r7, #4]
	extern char end asm("end");
	static char *heap_end;
	char *prev_heap_end;

	if (heap_end == 0)
 80013f0:	4b11      	ldr	r3, [pc, #68]	; (8001438 <_sbrk+0x50>)
 80013f2:	681b      	ldr	r3, [r3, #0]
 80013f4:	2b00      	cmp	r3, #0
 80013f6:	d102      	bne.n	80013fe <_sbrk+0x16>
		heap_end = &end;
 80013f8:	4b0f      	ldr	r3, [pc, #60]	; (8001438 <_sbrk+0x50>)
 80013fa:	4a10      	ldr	r2, [pc, #64]	; (800143c <_sbrk+0x54>)
 80013fc:	601a      	str	r2, [r3, #0]

	prev_heap_end = heap_end;
 80013fe:	4b0e      	ldr	r3, [pc, #56]	; (8001438 <_sbrk+0x50>)
 8001400:	681b      	ldr	r3, [r3, #0]
 8001402:	60fb      	str	r3, [r7, #12]
	if (heap_end + incr > stack_ptr)
 8001404:	4b0c      	ldr	r3, [pc, #48]	; (8001438 <_sbrk+0x50>)
 8001406:	681a      	ldr	r2, [r3, #0]
 8001408:	687b      	ldr	r3, [r7, #4]
 800140a:	4413      	add	r3, r2
 800140c:	466a      	mov	r2, sp
 800140e:	4293      	cmp	r3, r2
 8001410:	d907      	bls.n	8001422 <_sbrk+0x3a>
	{
		errno = ENOMEM;
 8001412:	f003 fa21 	bl	8004858 <__errno>
 8001416:	4602      	mov	r2, r0
 8001418:	230c      	movs	r3, #12
 800141a:	6013      	str	r3, [r2, #0]
		return (caddr_t) -1;
 800141c:	f04f 33ff 	mov.w	r3, #4294967295
 8001420:	e006      	b.n	8001430 <_sbrk+0x48>
	}

	heap_end += incr;
 8001422:	4b05      	ldr	r3, [pc, #20]	; (8001438 <_sbrk+0x50>)
 8001424:	681a      	ldr	r2, [r3, #0]
 8001426:	687b      	ldr	r3, [r7, #4]
 8001428:	4413      	add	r3, r2
 800142a:	4a03      	ldr	r2, [pc, #12]	; (8001438 <_sbrk+0x50>)
 800142c:	6013      	str	r3, [r2, #0]

	return (caddr_t) prev_heap_end;
 800142e:	68fb      	ldr	r3, [r7, #12]
}
 8001430:	4618      	mov	r0, r3
 8001432:	3710      	adds	r7, #16
 8001434:	46bd      	mov	sp, r7
 8001436:	bd80      	pop	{r7, pc}
 8001438:	200009f8 	.word	0x200009f8
 800143c:	20000af8 	.word	0x20000af8

08001440 <SystemInit>:
  * @brief  Setup the microcontroller system.
  * @retval None
  */

void SystemInit(void)
{
 8001440:	b480      	push	{r7}
 8001442:	af00      	add	r7, sp, #0

  /* FPU settings ------------------------------------------------------------*/
#if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
  SCB->CPACR |= ((3UL << 20U)|(3UL << 22U));  /* set CP10 and CP11 Full Access */
#endif
}
 8001444:	bf00      	nop
 8001446:	46bd      	mov	sp, r7
 8001448:	bc80      	pop	{r7}
 800144a:	4770      	bx	lr

0800144c <SystemCoreClockUpdate>:
  *           value for HSE crystal.
  *
  * @retval None
  */
void SystemCoreClockUpdate(void)
{
 800144c:	b480      	push	{r7}
 800144e:	b087      	sub	sp, #28
 8001450:	af00      	add	r7, sp, #0
  uint32_t tmp, msirange, pllvco, pllsource, pllm, pllr;

  /* Get MSI Range frequency--------------------------------------------------*/
  if((RCC->CR & RCC_CR_MSIRGSEL) == 0U)
 8001452:	4b4e      	ldr	r3, [pc, #312]	; (800158c <SystemCoreClockUpdate+0x140>)
 8001454:	681b      	ldr	r3, [r3, #0]
 8001456:	f003 0308 	and.w	r3, r3, #8
 800145a:	2b00      	cmp	r3, #0
 800145c:	d107      	bne.n	800146e <SystemCoreClockUpdate+0x22>
  { /* MSISRANGE from RCC_CSR applies */
    msirange = (RCC->CSR & RCC_CSR_MSISRANGE) >> 8U;
 800145e:	4b4b      	ldr	r3, [pc, #300]	; (800158c <SystemCoreClockUpdate+0x140>)
 8001460:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8001464:	0a1b      	lsrs	r3, r3, #8
 8001466:	f003 030f 	and.w	r3, r3, #15
 800146a:	617b      	str	r3, [r7, #20]
 800146c:	e005      	b.n	800147a <SystemCoreClockUpdate+0x2e>
  }
  else
  { /* MSIRANGE from RCC_CR applies */
    msirange = (RCC->CR & RCC_CR_MSIRANGE) >> 4U;
 800146e:	4b47      	ldr	r3, [pc, #284]	; (800158c <SystemCoreClockUpdate+0x140>)
 8001470:	681b      	ldr	r3, [r3, #0]
 8001472:	091b      	lsrs	r3, r3, #4
 8001474:	f003 030f 	and.w	r3, r3, #15
 8001478:	617b      	str	r3, [r7, #20]
  }
  /*MSI frequency range in HZ*/
  msirange = MSIRangeTable[msirange];
 800147a:	4a45      	ldr	r2, [pc, #276]	; (8001590 <SystemCoreClockUpdate+0x144>)
 800147c:	697b      	ldr	r3, [r7, #20]
 800147e:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001482:	617b      	str	r3, [r7, #20]

  /* Get SYSCLK source -------------------------------------------------------*/
  switch (RCC->CFGR & RCC_CFGR_SWS)
 8001484:	4b41      	ldr	r3, [pc, #260]	; (800158c <SystemCoreClockUpdate+0x140>)
 8001486:	689b      	ldr	r3, [r3, #8]
 8001488:	f003 030c 	and.w	r3, r3, #12
 800148c:	2b0c      	cmp	r3, #12
 800148e:	d865      	bhi.n	800155c <SystemCoreClockUpdate+0x110>
 8001490:	a201      	add	r2, pc, #4	; (adr r2, 8001498 <SystemCoreClockUpdate+0x4c>)
 8001492:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001496:	bf00      	nop
 8001498:	080014cd 	.word	0x080014cd
 800149c:	0800155d 	.word	0x0800155d
 80014a0:	0800155d 	.word	0x0800155d
 80014a4:	0800155d 	.word	0x0800155d
 80014a8:	080014d5 	.word	0x080014d5
 80014ac:	0800155d 	.word	0x0800155d
 80014b0:	0800155d 	.word	0x0800155d
 80014b4:	0800155d 	.word	0x0800155d
 80014b8:	080014dd 	.word	0x080014dd
 80014bc:	0800155d 	.word	0x0800155d
 80014c0:	0800155d 	.word	0x0800155d
 80014c4:	0800155d 	.word	0x0800155d
 80014c8:	080014e5 	.word	0x080014e5
  {
    case 0x00:  /* MSI used as system clock source */
      SystemCoreClock = msirange;
 80014cc:	4a31      	ldr	r2, [pc, #196]	; (8001594 <SystemCoreClockUpdate+0x148>)
 80014ce:	697b      	ldr	r3, [r7, #20]
 80014d0:	6013      	str	r3, [r2, #0]
      break;
 80014d2:	e047      	b.n	8001564 <SystemCoreClockUpdate+0x118>

    case 0x04:  /* HSI used as system clock source */
      SystemCoreClock = HSI_VALUE;
 80014d4:	4b2f      	ldr	r3, [pc, #188]	; (8001594 <SystemCoreClockUpdate+0x148>)
 80014d6:	4a30      	ldr	r2, [pc, #192]	; (8001598 <SystemCoreClockUpdate+0x14c>)
 80014d8:	601a      	str	r2, [r3, #0]
      break;
 80014da:	e043      	b.n	8001564 <SystemCoreClockUpdate+0x118>

    case 0x08:  /* HSE used as system clock source */
      SystemCoreClock = HSE_VALUE;
 80014dc:	4b2d      	ldr	r3, [pc, #180]	; (8001594 <SystemCoreClockUpdate+0x148>)
 80014de:	4a2e      	ldr	r2, [pc, #184]	; (8001598 <SystemCoreClockUpdate+0x14c>)
 80014e0:	601a      	str	r2, [r3, #0]
      break;
 80014e2:	e03f      	b.n	8001564 <SystemCoreClockUpdate+0x118>

    case 0x0C:  /* PLL used as system clock  source */
      /* PLL_VCO = (HSE_VALUE or HSI_VALUE or MSI_VALUE/ PLLM) * PLLN
         SYSCLK = PLL_VCO / PLLR
         */
      pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
 80014e4:	4b29      	ldr	r3, [pc, #164]	; (800158c <SystemCoreClockUpdate+0x140>)
 80014e6:	68db      	ldr	r3, [r3, #12]
 80014e8:	f003 0303 	and.w	r3, r3, #3
 80014ec:	60fb      	str	r3, [r7, #12]
      pllm = ((RCC->PLLCFGR & RCC_PLLCFGR_PLLM) >> 4U) + 1U ;
 80014ee:	4b27      	ldr	r3, [pc, #156]	; (800158c <SystemCoreClockUpdate+0x140>)
 80014f0:	68db      	ldr	r3, [r3, #12]
 80014f2:	091b      	lsrs	r3, r3, #4
 80014f4:	f003 030f 	and.w	r3, r3, #15
 80014f8:	3301      	adds	r3, #1
 80014fa:	60bb      	str	r3, [r7, #8]

      switch (pllsource)
 80014fc:	68fb      	ldr	r3, [r7, #12]
 80014fe:	2b02      	cmp	r3, #2
 8001500:	d002      	beq.n	8001508 <SystemCoreClockUpdate+0xbc>
 8001502:	2b03      	cmp	r3, #3
 8001504:	d006      	beq.n	8001514 <SystemCoreClockUpdate+0xc8>
 8001506:	e00b      	b.n	8001520 <SystemCoreClockUpdate+0xd4>
      {
        case 0x02:  /* HSI used as PLL clock source */
          pllvco = (HSI_VALUE / pllm);
 8001508:	4a23      	ldr	r2, [pc, #140]	; (8001598 <SystemCoreClockUpdate+0x14c>)
 800150a:	68bb      	ldr	r3, [r7, #8]
 800150c:	fbb2 f3f3 	udiv	r3, r2, r3
 8001510:	613b      	str	r3, [r7, #16]
          break;
 8001512:	e00b      	b.n	800152c <SystemCoreClockUpdate+0xe0>

        case 0x03:  /* HSE used as PLL clock source */
          pllvco = (HSE_VALUE / pllm);
 8001514:	4a20      	ldr	r2, [pc, #128]	; (8001598 <SystemCoreClockUpdate+0x14c>)
 8001516:	68bb      	ldr	r3, [r7, #8]
 8001518:	fbb2 f3f3 	udiv	r3, r2, r3
 800151c:	613b      	str	r3, [r7, #16]
          break;
 800151e:	e005      	b.n	800152c <SystemCoreClockUpdate+0xe0>

        default:    /* MSI used as PLL clock source */
          pllvco = (msirange / pllm);
 8001520:	697a      	ldr	r2, [r7, #20]
 8001522:	68bb      	ldr	r3, [r7, #8]
 8001524:	fbb2 f3f3 	udiv	r3, r2, r3
 8001528:	613b      	str	r3, [r7, #16]
          break;
 800152a:	bf00      	nop
      }
      pllvco = pllvco * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 8U);
 800152c:	4b17      	ldr	r3, [pc, #92]	; (800158c <SystemCoreClockUpdate+0x140>)
 800152e:	68db      	ldr	r3, [r3, #12]
 8001530:	0a1b      	lsrs	r3, r3, #8
 8001532:	f003 027f 	and.w	r2, r3, #127	; 0x7f
 8001536:	693b      	ldr	r3, [r7, #16]
 8001538:	fb02 f303 	mul.w	r3, r2, r3
 800153c:	613b      	str	r3, [r7, #16]
      pllr = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> 25U) + 1U) * 2U;
 800153e:	4b13      	ldr	r3, [pc, #76]	; (800158c <SystemCoreClockUpdate+0x140>)
 8001540:	68db      	ldr	r3, [r3, #12]
 8001542:	0e5b      	lsrs	r3, r3, #25
 8001544:	f003 0303 	and.w	r3, r3, #3
 8001548:	3301      	adds	r3, #1
 800154a:	005b      	lsls	r3, r3, #1
 800154c:	607b      	str	r3, [r7, #4]
      SystemCoreClock = pllvco/pllr;
 800154e:	693a      	ldr	r2, [r7, #16]
 8001550:	687b      	ldr	r3, [r7, #4]
 8001552:	fbb2 f3f3 	udiv	r3, r2, r3
 8001556:	4a0f      	ldr	r2, [pc, #60]	; (8001594 <SystemCoreClockUpdate+0x148>)
 8001558:	6013      	str	r3, [r2, #0]
      break;
 800155a:	e003      	b.n	8001564 <SystemCoreClockUpdate+0x118>

    default:
      SystemCoreClock = msirange;
 800155c:	4a0d      	ldr	r2, [pc, #52]	; (8001594 <SystemCoreClockUpdate+0x148>)
 800155e:	697b      	ldr	r3, [r7, #20]
 8001560:	6013      	str	r3, [r2, #0]
      break;
 8001562:	bf00      	nop
  }
  /* Compute HCLK clock frequency --------------------------------------------*/
  /* Get HCLK prescaler */
  tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4U)];
 8001564:	4b09      	ldr	r3, [pc, #36]	; (800158c <SystemCoreClockUpdate+0x140>)
 8001566:	689b      	ldr	r3, [r3, #8]
 8001568:	091b      	lsrs	r3, r3, #4
 800156a:	f003 030f 	and.w	r3, r3, #15
 800156e:	4a0b      	ldr	r2, [pc, #44]	; (800159c <SystemCoreClockUpdate+0x150>)
 8001570:	5cd3      	ldrb	r3, [r2, r3]
 8001572:	603b      	str	r3, [r7, #0]
  /* HCLK clock frequency */
  SystemCoreClock >>= tmp;
 8001574:	4b07      	ldr	r3, [pc, #28]	; (8001594 <SystemCoreClockUpdate+0x148>)
 8001576:	681a      	ldr	r2, [r3, #0]
 8001578:	683b      	ldr	r3, [r7, #0]
 800157a:	fa22 f303 	lsr.w	r3, r2, r3
 800157e:	4a05      	ldr	r2, [pc, #20]	; (8001594 <SystemCoreClockUpdate+0x148>)
 8001580:	6013      	str	r3, [r2, #0]
}
 8001582:	bf00      	nop
 8001584:	371c      	adds	r7, #28
 8001586:	46bd      	mov	sp, r7
 8001588:	bc80      	pop	{r7}
 800158a:	4770      	bx	lr
 800158c:	40021000 	.word	0x40021000
 8001590:	080091c0 	.word	0x080091c0
 8001594:	20000000 	.word	0x20000000
 8001598:	00f42400 	.word	0x00f42400
 800159c:	080091a8 	.word	0x080091a8

080015a0 <HAL_Init>:
  *         each 1ms in the SysTick_Handler() interrupt handler.
  *
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_Init(void)
{
 80015a0:	b580      	push	{r7, lr}
 80015a2:	b082      	sub	sp, #8
 80015a4:	af00      	add	r7, sp, #0
  HAL_StatusTypeDef  status = HAL_OK;
 80015a6:	2300      	movs	r3, #0
 80015a8:	71fb      	strb	r3, [r7, #7]

  /* Set Interrupt Group Priority */
  HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_3);
 80015aa:	2004      	movs	r0, #4
 80015ac:	f000 f958 	bl	8001860 <HAL_NVIC_SetPriorityGrouping>

  /* Insure time base clock coherency */
  SystemCoreClockUpdate();
 80015b0:	f7ff ff4c 	bl	800144c <SystemCoreClockUpdate>

  /* Use SysTick as time base source and configure 1ms tick (default clock after Reset is MSI) */
  if (HAL_InitTick(TICK_INT_PRIORITY) != HAL_OK)
 80015b4:	2000      	movs	r0, #0
 80015b6:	f000 f80d 	bl	80015d4 <HAL_InitTick>
 80015ba:	4603      	mov	r3, r0
 80015bc:	2b00      	cmp	r3, #0
 80015be:	d002      	beq.n	80015c6 <HAL_Init+0x26>
  {
    status = HAL_ERROR;
 80015c0:	2301      	movs	r3, #1
 80015c2:	71fb      	strb	r3, [r7, #7]
 80015c4:	e001      	b.n	80015ca <HAL_Init+0x2a>
  }
  else
  {
    /* Init the low level hardware */
    HAL_MspInit();
 80015c6:	f7ff fdf1 	bl	80011ac <HAL_MspInit>
  }

  /* Return function status */
  return status;
 80015ca:	79fb      	ldrb	r3, [r7, #7]
}
 80015cc:	4618      	mov	r0, r3
 80015ce:	3708      	adds	r7, #8
 80015d0:	46bd      	mov	sp, r7
 80015d2:	bd80      	pop	{r7, pc}

080015d4 <HAL_InitTick>:
  *       implementation  in user file.
  * @param TickPriority  Tick interrupt priority.
  * @retval HAL status
  */
__weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
{
 80015d4:	b580      	push	{r7, lr}
 80015d6:	b084      	sub	sp, #16
 80015d8:	af00      	add	r7, sp, #0
 80015da:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef  status = HAL_OK;
 80015dc:	2300      	movs	r3, #0
 80015de:	73fb      	strb	r3, [r7, #15]

  /* Check uwTickFreq for MisraC 2012 (even if uwTickFreq is a enum type that doesn't take the value zero)*/
  if ((uint32_t)uwTickFreq != 0U)
 80015e0:	4b17      	ldr	r3, [pc, #92]	; (8001640 <HAL_InitTick+0x6c>)
 80015e2:	781b      	ldrb	r3, [r3, #0]
 80015e4:	2b00      	cmp	r3, #0
 80015e6:	d023      	beq.n	8001630 <HAL_InitTick+0x5c>
  {
    /*Configure the SysTick to have interrupt in 1ms time basis*/
    if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / (uint32_t)uwTickFreq)) == 0U)
 80015e8:	4b16      	ldr	r3, [pc, #88]	; (8001644 <HAL_InitTick+0x70>)
 80015ea:	681a      	ldr	r2, [r3, #0]
 80015ec:	4b14      	ldr	r3, [pc, #80]	; (8001640 <HAL_InitTick+0x6c>)
 80015ee:	781b      	ldrb	r3, [r3, #0]
 80015f0:	4619      	mov	r1, r3
 80015f2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80015f6:	fbb3 f3f1 	udiv	r3, r3, r1
 80015fa:	fbb2 f3f3 	udiv	r3, r2, r3
 80015fe:	4618      	mov	r0, r3
 8001600:	f000 f961 	bl	80018c6 <HAL_SYSTICK_Config>
 8001604:	4603      	mov	r3, r0
 8001606:	2b00      	cmp	r3, #0
 8001608:	d10f      	bne.n	800162a <HAL_InitTick+0x56>
    {
      /* Configure the SysTick IRQ priority */
      if (TickPriority < (1UL << __NVIC_PRIO_BITS))
 800160a:	687b      	ldr	r3, [r7, #4]
 800160c:	2b07      	cmp	r3, #7
 800160e:	d809      	bhi.n	8001624 <HAL_InitTick+0x50>
      {
        HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
 8001610:	2200      	movs	r2, #0
 8001612:	6879      	ldr	r1, [r7, #4]
 8001614:	f04f 30ff 	mov.w	r0, #4294967295
 8001618:	f000 f92d 	bl	8001876 <HAL_NVIC_SetPriority>
        uwTickPrio = TickPriority;
 800161c:	4a0a      	ldr	r2, [pc, #40]	; (8001648 <HAL_InitTick+0x74>)
 800161e:	687b      	ldr	r3, [r7, #4]
 8001620:	6013      	str	r3, [r2, #0]
 8001622:	e007      	b.n	8001634 <HAL_InitTick+0x60>
      }
      else
      {
        status = HAL_ERROR;
 8001624:	2301      	movs	r3, #1
 8001626:	73fb      	strb	r3, [r7, #15]
 8001628:	e004      	b.n	8001634 <HAL_InitTick+0x60>
      }
    }
    else
    {
      status = HAL_ERROR;
 800162a:	2301      	movs	r3, #1
 800162c:	73fb      	strb	r3, [r7, #15]
 800162e:	e001      	b.n	8001634 <HAL_InitTick+0x60>
    }
  }
  else
  {
    status = HAL_ERROR;
 8001630:	2301      	movs	r3, #1
 8001632:	73fb      	strb	r3, [r7, #15]
  }

  /* Return function status */
  return status;
 8001634:	7bfb      	ldrb	r3, [r7, #15]
}
 8001636:	4618      	mov	r0, r3
 8001638:	3710      	adds	r7, #16
 800163a:	46bd      	mov	sp, r7
 800163c:	bd80      	pop	{r7, pc}
 800163e:	bf00      	nop
 8001640:	20000008 	.word	0x20000008
 8001644:	20000000 	.word	0x20000000
 8001648:	20000004 	.word	0x20000004

0800164c <HAL_IncTick>:
  * @note This function is declared as __weak to be overwritten in case of other
  *      implementations in user file.
  * @retval None
  */
__weak void HAL_IncTick(void)
{
 800164c:	b480      	push	{r7}
 800164e:	af00      	add	r7, sp, #0
  uwTick += (uint32_t)uwTickFreq;
 8001650:	4b05      	ldr	r3, [pc, #20]	; (8001668 <HAL_IncTick+0x1c>)
 8001652:	781b      	ldrb	r3, [r3, #0]
 8001654:	461a      	mov	r2, r3
 8001656:	4b05      	ldr	r3, [pc, #20]	; (800166c <HAL_IncTick+0x20>)
 8001658:	681b      	ldr	r3, [r3, #0]
 800165a:	4413      	add	r3, r2
 800165c:	4a03      	ldr	r2, [pc, #12]	; (800166c <HAL_IncTick+0x20>)
 800165e:	6013      	str	r3, [r2, #0]
}
 8001660:	bf00      	nop
 8001662:	46bd      	mov	sp, r7
 8001664:	bc80      	pop	{r7}
 8001666:	4770      	bx	lr
 8001668:	20000008 	.word	0x20000008
 800166c:	20000acc 	.word	0x20000acc

08001670 <HAL_GetTick>:
  * @note This function is declared as __weak to be overwritten in case of other
  *       implementations in user file.
  * @retval tick value
  */
__weak uint32_t HAL_GetTick(void)
{
 8001670:	b480      	push	{r7}
 8001672:	af00      	add	r7, sp, #0
  return uwTick;
 8001674:	4b02      	ldr	r3, [pc, #8]	; (8001680 <HAL_GetTick+0x10>)
 8001676:	681b      	ldr	r3, [r3, #0]
}
 8001678:	4618      	mov	r0, r3
 800167a:	46bd      	mov	sp, r7
 800167c:	bc80      	pop	{r7}
 800167e:	4770      	bx	lr
 8001680:	20000acc 	.word	0x20000acc

08001684 <HAL_Delay>:
  *       implementations in user file.
  * @param Delay  specifies the delay time length, in milliseconds.
  * @retval None
  */
__weak void HAL_Delay(uint32_t Delay)
{
 8001684:	b580      	push	{r7, lr}
 8001686:	b084      	sub	sp, #16
 8001688:	af00      	add	r7, sp, #0
 800168a:	6078      	str	r0, [r7, #4]
  uint32_t tickstart = HAL_GetTick();
 800168c:	f7ff fff0 	bl	8001670 <HAL_GetTick>
 8001690:	60b8      	str	r0, [r7, #8]
  uint32_t wait = Delay;
 8001692:	687b      	ldr	r3, [r7, #4]
 8001694:	60fb      	str	r3, [r7, #12]

  /* Add a period to guaranty minimum wait */
  if (wait < HAL_MAX_DELAY)
 8001696:	68fb      	ldr	r3, [r7, #12]
 8001698:	f1b3 3fff 	cmp.w	r3, #4294967295
 800169c:	d005      	beq.n	80016aa <HAL_Delay+0x26>
  {
    wait += (uint32_t)uwTickFreq;
 800169e:	4b09      	ldr	r3, [pc, #36]	; (80016c4 <HAL_Delay+0x40>)
 80016a0:	781b      	ldrb	r3, [r3, #0]
 80016a2:	461a      	mov	r2, r3
 80016a4:	68fb      	ldr	r3, [r7, #12]
 80016a6:	4413      	add	r3, r2
 80016a8:	60fb      	str	r3, [r7, #12]
  }

  while ((HAL_GetTick() - tickstart) < wait)
 80016aa:	bf00      	nop
 80016ac:	f7ff ffe0 	bl	8001670 <HAL_GetTick>
 80016b0:	4602      	mov	r2, r0
 80016b2:	68bb      	ldr	r3, [r7, #8]
 80016b4:	1ad3      	subs	r3, r2, r3
 80016b6:	68fa      	ldr	r2, [r7, #12]
 80016b8:	429a      	cmp	r2, r3
 80016ba:	d8f7      	bhi.n	80016ac <HAL_Delay+0x28>
  {
  }
}
 80016bc:	bf00      	nop
 80016be:	3710      	adds	r7, #16
 80016c0:	46bd      	mov	sp, r7
 80016c2:	bd80      	pop	{r7, pc}
 80016c4:	20000008 	.word	0x20000008

080016c8 <__NVIC_SetPriorityGrouping>:
           In case of a conflict between priority grouping and available
           priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
  \param [in]      PriorityGroup  Priority grouping field.
 */
__STATIC_INLINE void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 80016c8:	b480      	push	{r7}
 80016ca:	b085      	sub	sp, #20
 80016cc:	af00      	add	r7, sp, #0
 80016ce:	6078      	str	r0, [r7, #4]
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
 80016d0:	687b      	ldr	r3, [r7, #4]
 80016d2:	f003 0307 	and.w	r3, r3, #7
 80016d6:	60fb      	str	r3, [r7, #12]

  reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
 80016d8:	4b0c      	ldr	r3, [pc, #48]	; (800170c <__NVIC_SetPriorityGrouping+0x44>)
 80016da:	68db      	ldr	r3, [r3, #12]
 80016dc:	60bb      	str	r3, [r7, #8]
  reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
 80016de:	68ba      	ldr	r2, [r7, #8]
 80016e0:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80016e4:	4013      	ands	r3, r2
 80016e6:	60bb      	str	r3, [r7, #8]
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
                (PriorityGroupTmp << 8U)                      );              /* Insert write key and priority group */
 80016e8:	68fb      	ldr	r3, [r7, #12]
 80016ea:	021a      	lsls	r2, r3, #8
                ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
 80016ec:	68bb      	ldr	r3, [r7, #8]
 80016ee:	4313      	orrs	r3, r2
  reg_value  =  (reg_value                                   |
 80016f0:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 80016f4:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 80016f8:	60bb      	str	r3, [r7, #8]
  SCB->AIRCR =  reg_value;
 80016fa:	4a04      	ldr	r2, [pc, #16]	; (800170c <__NVIC_SetPriorityGrouping+0x44>)
 80016fc:	68bb      	ldr	r3, [r7, #8]
 80016fe:	60d3      	str	r3, [r2, #12]
}
 8001700:	bf00      	nop
 8001702:	3714      	adds	r7, #20
 8001704:	46bd      	mov	sp, r7
 8001706:	bc80      	pop	{r7}
 8001708:	4770      	bx	lr
 800170a:	bf00      	nop
 800170c:	e000ed00 	.word	0xe000ed00

08001710 <__NVIC_GetPriorityGrouping>:
  \brief   Get Priority Grouping
  \details Reads the priority grouping field from the NVIC Interrupt Controller.
  \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
 */
__STATIC_INLINE uint32_t __NVIC_GetPriorityGrouping(void)
{
 8001710:	b480      	push	{r7}
 8001712:	af00      	add	r7, sp, #0
  return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
 8001714:	4b04      	ldr	r3, [pc, #16]	; (8001728 <__NVIC_GetPriorityGrouping+0x18>)
 8001716:	68db      	ldr	r3, [r3, #12]
 8001718:	0a1b      	lsrs	r3, r3, #8
 800171a:	f003 0307 	and.w	r3, r3, #7
}
 800171e:	4618      	mov	r0, r3
 8001720:	46bd      	mov	sp, r7
 8001722:	bc80      	pop	{r7}
 8001724:	4770      	bx	lr
 8001726:	bf00      	nop
 8001728:	e000ed00 	.word	0xe000ed00

0800172c <__NVIC_EnableIRQ>:
  \details Enables a device specific interrupt in the NVIC interrupt controller.
  \param [in]      IRQn  Device specific interrupt number.
  \note    IRQn must not be negative.
 */
__STATIC_INLINE void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
 800172c:	b480      	push	{r7}
 800172e:	b083      	sub	sp, #12
 8001730:	af00      	add	r7, sp, #0
 8001732:	4603      	mov	r3, r0
 8001734:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8001736:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800173a:	2b00      	cmp	r3, #0
 800173c:	db0b      	blt.n	8001756 <__NVIC_EnableIRQ+0x2a>
  {
    NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
 800173e:	79fb      	ldrb	r3, [r7, #7]
 8001740:	f003 021f 	and.w	r2, r3, #31
 8001744:	4906      	ldr	r1, [pc, #24]	; (8001760 <__NVIC_EnableIRQ+0x34>)
 8001746:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800174a:	095b      	lsrs	r3, r3, #5
 800174c:	2001      	movs	r0, #1
 800174e:	fa00 f202 	lsl.w	r2, r0, r2
 8001752:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
  }
}
 8001756:	bf00      	nop
 8001758:	370c      	adds	r7, #12
 800175a:	46bd      	mov	sp, r7
 800175c:	bc80      	pop	{r7}
 800175e:	4770      	bx	lr
 8001760:	e000e100 	.word	0xe000e100

08001764 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
 8001764:	b480      	push	{r7}
 8001766:	b083      	sub	sp, #12
 8001768:	af00      	add	r7, sp, #0
 800176a:	4603      	mov	r3, r0
 800176c:	6039      	str	r1, [r7, #0]
 800176e:	71fb      	strb	r3, [r7, #7]
  if ((int32_t)(IRQn) >= 0)
 8001770:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001774:	2b00      	cmp	r3, #0
 8001776:	db0a      	blt.n	800178e <__NVIC_SetPriority+0x2a>
  {
    NVIC->IPR[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 8001778:	683b      	ldr	r3, [r7, #0]
 800177a:	b2da      	uxtb	r2, r3
 800177c:	490c      	ldr	r1, [pc, #48]	; (80017b0 <__NVIC_SetPriority+0x4c>)
 800177e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8001782:	0152      	lsls	r2, r2, #5
 8001784:	b2d2      	uxtb	r2, r2
 8001786:	440b      	add	r3, r1
 8001788:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
  }
  else
  {
    SCB->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
  }
}
 800178c:	e00a      	b.n	80017a4 <__NVIC_SetPriority+0x40>
    SCB->SHPR[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
 800178e:	683b      	ldr	r3, [r7, #0]
 8001790:	b2da      	uxtb	r2, r3
 8001792:	4908      	ldr	r1, [pc, #32]	; (80017b4 <__NVIC_SetPriority+0x50>)
 8001794:	79fb      	ldrb	r3, [r7, #7]
 8001796:	f003 030f 	and.w	r3, r3, #15
 800179a:	3b04      	subs	r3, #4
 800179c:	0152      	lsls	r2, r2, #5
 800179e:	b2d2      	uxtb	r2, r2
 80017a0:	440b      	add	r3, r1
 80017a2:	761a      	strb	r2, [r3, #24]
}
 80017a4:	bf00      	nop
 80017a6:	370c      	adds	r7, #12
 80017a8:	46bd      	mov	sp, r7
 80017aa:	bc80      	pop	{r7}
 80017ac:	4770      	bx	lr
 80017ae:	bf00      	nop
 80017b0:	e000e100 	.word	0xe000e100
 80017b4:	e000ed00 	.word	0xe000ed00

080017b8 <NVIC_EncodePriority>:
  \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
  \param [in]       SubPriority  Subpriority value (starting from 0).
  \return                        Encoded priority. Value can be used in the function \ref NVIC_SetPriority().
 */
__STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
 80017b8:	b480      	push	{r7}
 80017ba:	b089      	sub	sp, #36	; 0x24
 80017bc:	af00      	add	r7, sp, #0
 80017be:	60f8      	str	r0, [r7, #12]
 80017c0:	60b9      	str	r1, [r7, #8]
 80017c2:	607a      	str	r2, [r7, #4]
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
 80017c4:	68fb      	ldr	r3, [r7, #12]
 80017c6:	f003 0307 	and.w	r3, r3, #7
 80017ca:	61fb      	str	r3, [r7, #28]
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
 80017cc:	69fb      	ldr	r3, [r7, #28]
 80017ce:	f1c3 0307 	rsb	r3, r3, #7
 80017d2:	2b03      	cmp	r3, #3
 80017d4:	bf28      	it	cs
 80017d6:	2303      	movcs	r3, #3
 80017d8:	61bb      	str	r3, [r7, #24]
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
 80017da:	69fb      	ldr	r3, [r7, #28]
 80017dc:	3303      	adds	r3, #3
 80017de:	2b06      	cmp	r3, #6
 80017e0:	d902      	bls.n	80017e8 <NVIC_EncodePriority+0x30>
 80017e2:	69fb      	ldr	r3, [r7, #28]
 80017e4:	3b04      	subs	r3, #4
 80017e6:	e000      	b.n	80017ea <NVIC_EncodePriority+0x32>
 80017e8:	2300      	movs	r3, #0
 80017ea:	617b      	str	r3, [r7, #20]

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 80017ec:	f04f 32ff 	mov.w	r2, #4294967295
 80017f0:	69bb      	ldr	r3, [r7, #24]
 80017f2:	fa02 f303 	lsl.w	r3, r2, r3
 80017f6:	43da      	mvns	r2, r3
 80017f8:	68bb      	ldr	r3, [r7, #8]
 80017fa:	401a      	ands	r2, r3
 80017fc:	697b      	ldr	r3, [r7, #20]
 80017fe:	409a      	lsls	r2, r3
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
 8001800:	f04f 31ff 	mov.w	r1, #4294967295
 8001804:	697b      	ldr	r3, [r7, #20]
 8001806:	fa01 f303 	lsl.w	r3, r1, r3
 800180a:	43d9      	mvns	r1, r3
 800180c:	687b      	ldr	r3, [r7, #4]
 800180e:	400b      	ands	r3, r1
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
 8001810:	4313      	orrs	r3, r2
         );
}
 8001812:	4618      	mov	r0, r3
 8001814:	3724      	adds	r7, #36	; 0x24
 8001816:	46bd      	mov	sp, r7
 8001818:	bc80      	pop	{r7}
 800181a:	4770      	bx	lr

0800181c <SysTick_Config>:
  \note    When the variable <b>__Vendor_SysTickConfig</b> is set to 1, then the
           function <b>SysTick_Config</b> is not included. In this case, the file <b><i>device</i>.h</b>
           must contain a vendor-specific implementation of this function.
 */
__STATIC_INLINE uint32_t SysTick_Config(uint32_t ticks)
{
 800181c:	b580      	push	{r7, lr}
 800181e:	b082      	sub	sp, #8
 8001820:	af00      	add	r7, sp, #0
 8001822:	6078      	str	r0, [r7, #4]
  if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
 8001824:	687b      	ldr	r3, [r7, #4]
 8001826:	3b01      	subs	r3, #1
 8001828:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 800182c:	d301      	bcc.n	8001832 <SysTick_Config+0x16>
  {
    return (1UL);                                                   /* Reload value impossible */
 800182e:	2301      	movs	r3, #1
 8001830:	e00f      	b.n	8001852 <SysTick_Config+0x36>
  }

  SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
 8001832:	4a0a      	ldr	r2, [pc, #40]	; (800185c <SysTick_Config+0x40>)
 8001834:	687b      	ldr	r3, [r7, #4]
 8001836:	3b01      	subs	r3, #1
 8001838:	6053      	str	r3, [r2, #4]
  NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
 800183a:	2107      	movs	r1, #7
 800183c:	f04f 30ff 	mov.w	r0, #4294967295
 8001840:	f7ff ff90 	bl	8001764 <__NVIC_SetPriority>
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
 8001844:	4b05      	ldr	r3, [pc, #20]	; (800185c <SysTick_Config+0x40>)
 8001846:	2200      	movs	r2, #0
 8001848:	609a      	str	r2, [r3, #8]
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
 800184a:	4b04      	ldr	r3, [pc, #16]	; (800185c <SysTick_Config+0x40>)
 800184c:	2207      	movs	r2, #7
 800184e:	601a      	str	r2, [r3, #0]
                   SysTick_CTRL_TICKINT_Msk   |
                   SysTick_CTRL_ENABLE_Msk;                         /* Enable SysTick IRQ and SysTick Timer */
  return (0UL);                                                     /* Function successful */
 8001850:	2300      	movs	r3, #0
}
 8001852:	4618      	mov	r0, r3
 8001854:	3708      	adds	r7, #8
 8001856:	46bd      	mov	sp, r7
 8001858:	bd80      	pop	{r7, pc}
 800185a:	bf00      	nop
 800185c:	e000e010 	.word	0xe000e010

08001860 <HAL_NVIC_SetPriorityGrouping>:
  * @note   When the NVIC_PriorityGroup_0 is selected, IRQ pre-emption is no more possible.
  *         The pending IRQ priority will be managed only by the subpriority.
  * @retval None
  */
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
 8001860:	b580      	push	{r7, lr}
 8001862:	b082      	sub	sp, #8
 8001864:	af00      	add	r7, sp, #0
 8001866:	6078      	str	r0, [r7, #4]
  /* Check the parameters */
  assert_param(IS_NVIC_PRIORITY_GROUP(PriorityGroup));

  /* Set the PRIGROUP[10:8] bits according to the PriorityGroup parameter value */
  NVIC_SetPriorityGrouping(PriorityGroup);
 8001868:	6878      	ldr	r0, [r7, #4]
 800186a:	f7ff ff2d 	bl	80016c8 <__NVIC_SetPriorityGrouping>
}
 800186e:	bf00      	nop
 8001870:	3708      	adds	r7, #8
 8001872:	46bd      	mov	sp, r7
 8001874:	bd80      	pop	{r7, pc}

08001876 <HAL_NVIC_SetPriority>:
  *         This parameter can be a value between 0 and 7
  *         A lower priority value indicates a higher priority.
  * @retval None
  */
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority)
{
 8001876:	b580      	push	{r7, lr}
 8001878:	b086      	sub	sp, #24
 800187a:	af00      	add	r7, sp, #0
 800187c:	4603      	mov	r3, r0
 800187e:	60b9      	str	r1, [r7, #8]
 8001880:	607a      	str	r2, [r7, #4]
 8001882:	73fb      	strb	r3, [r7, #15]

  /* Check the parameters */
  assert_param(IS_NVIC_SUB_PRIORITY(SubPriority));
  assert_param(IS_NVIC_PREEMPTION_PRIORITY(PreemptPriority));

  prioritygroup = NVIC_GetPriorityGrouping();
 8001884:	f7ff ff44 	bl	8001710 <__NVIC_GetPriorityGrouping>
 8001888:	6178      	str	r0, [r7, #20]

  NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
 800188a:	687a      	ldr	r2, [r7, #4]
 800188c:	68b9      	ldr	r1, [r7, #8]
 800188e:	6978      	ldr	r0, [r7, #20]
 8001890:	f7ff ff92 	bl	80017b8 <NVIC_EncodePriority>
 8001894:	4602      	mov	r2, r0
 8001896:	f997 300f 	ldrsb.w	r3, [r7, #15]
 800189a:	4611      	mov	r1, r2
 800189c:	4618      	mov	r0, r3
 800189e:	f7ff ff61 	bl	8001764 <__NVIC_SetPriority>
}
 80018a2:	bf00      	nop
 80018a4:	3718      	adds	r7, #24
 80018a6:	46bd      	mov	sp, r7
 80018a8:	bd80      	pop	{r7, pc}

080018aa <HAL_NVIC_EnableIRQ>:
  *         This parameter can be an enumerator of IRQn_Type enumeration
  *         (For the complete STM32 Devices IRQ Channels list, please refer to the appropriate CMSIS device file (stm32l5xxxx.h))
  * @retval None
  */
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn)
{
 80018aa:	b580      	push	{r7, lr}
 80018ac:	b082      	sub	sp, #8
 80018ae:	af00      	add	r7, sp, #0
 80018b0:	4603      	mov	r3, r0
 80018b2:	71fb      	strb	r3, [r7, #7]
  /* Check the parameters */
  assert_param(IS_NVIC_DEVICE_IRQ(IRQn));

  /* Enable interrupt */
  NVIC_EnableIRQ(IRQn);
 80018b4:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80018b8:	4618      	mov	r0, r3
 80018ba:	f7ff ff37 	bl	800172c <__NVIC_EnableIRQ>
}
 80018be:	bf00      	nop
 80018c0:	3708      	adds	r7, #8
 80018c2:	46bd      	mov	sp, r7
 80018c4:	bd80      	pop	{r7, pc}

080018c6 <HAL_SYSTICK_Config>:
  * @param  TicksNumb Specifies the ticks Number of ticks between two interrupts.
  * @retval status:  - 0  Function succeeded.
  *                  - 1  Function failed.
  */
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb)
{
 80018c6:	b580      	push	{r7, lr}
 80018c8:	b082      	sub	sp, #8
 80018ca:	af00      	add	r7, sp, #0
 80018cc:	6078      	str	r0, [r7, #4]
  return SysTick_Config(TicksNumb);
 80018ce:	6878      	ldr	r0, [r7, #4]
 80018d0:	f7ff ffa4 	bl	800181c <SysTick_Config>
 80018d4:	4603      	mov	r3, r0
}
 80018d6:	4618      	mov	r0, r3
 80018d8:	3708      	adds	r7, #8
 80018da:	46bd      	mov	sp, r7
 80018dc:	bd80      	pop	{r7, pc}

080018de <HAL_EXTI_RegisterCallback>:
  *         This parameter can be one of @arg @ref EXTI_CallbackIDTypeDef values.
  * @param  pPendingCbfn function pointer to be stored as callback.
  * @retval HAL Status.
  */
HAL_StatusTypeDef HAL_EXTI_RegisterCallback(EXTI_HandleTypeDef *hexti, EXTI_CallbackIDTypeDef CallbackID, void (*pPendingCbfn)(void))
{
 80018de:	b480      	push	{r7}
 80018e0:	b087      	sub	sp, #28
 80018e2:	af00      	add	r7, sp, #0
 80018e4:	60f8      	str	r0, [r7, #12]
 80018e6:	460b      	mov	r3, r1
 80018e8:	607a      	str	r2, [r7, #4]
 80018ea:	72fb      	strb	r3, [r7, #11]
  HAL_StatusTypeDef status = HAL_OK;
 80018ec:	2300      	movs	r3, #0
 80018ee:	75fb      	strb	r3, [r7, #23]

  switch (CallbackID)
 80018f0:	7afb      	ldrb	r3, [r7, #11]
 80018f2:	2b01      	cmp	r3, #1
 80018f4:	d00a      	beq.n	800190c <HAL_EXTI_RegisterCallback+0x2e>
 80018f6:	2b02      	cmp	r3, #2
 80018f8:	d00c      	beq.n	8001914 <HAL_EXTI_RegisterCallback+0x36>
 80018fa:	2b00      	cmp	r3, #0
 80018fc:	d10e      	bne.n	800191c <HAL_EXTI_RegisterCallback+0x3e>
  {
    case  HAL_EXTI_COMMON_CB_ID:
      hexti->RisingCallback = pPendingCbfn;
 80018fe:	68fb      	ldr	r3, [r7, #12]
 8001900:	687a      	ldr	r2, [r7, #4]
 8001902:	605a      	str	r2, [r3, #4]
      hexti->FallingCallback = pPendingCbfn;
 8001904:	68fb      	ldr	r3, [r7, #12]
 8001906:	687a      	ldr	r2, [r7, #4]
 8001908:	609a      	str	r2, [r3, #8]
      break;
 800190a:	e00a      	b.n	8001922 <HAL_EXTI_RegisterCallback+0x44>

    case  HAL_EXTI_RISING_CB_ID:
      hexti->RisingCallback = pPendingCbfn;
 800190c:	68fb      	ldr	r3, [r7, #12]
 800190e:	687a      	ldr	r2, [r7, #4]
 8001910:	605a      	str	r2, [r3, #4]
      break;
 8001912:	e006      	b.n	8001922 <HAL_EXTI_RegisterCallback+0x44>

    case  HAL_EXTI_FALLING_CB_ID:
      hexti->FallingCallback = pPendingCbfn;
 8001914:	68fb      	ldr	r3, [r7, #12]
 8001916:	687a      	ldr	r2, [r7, #4]
 8001918:	609a      	str	r2, [r3, #8]
      break;
 800191a:	e002      	b.n	8001922 <HAL_EXTI_RegisterCallback+0x44>

    default:
      status = HAL_ERROR;
 800191c:	2301      	movs	r3, #1
 800191e:	75fb      	strb	r3, [r7, #23]
      break;
 8001920:	bf00      	nop
  }

  return status;
 8001922:	7dfb      	ldrb	r3, [r7, #23]
}
 8001924:	4618      	mov	r0, r3
 8001926:	371c      	adds	r7, #28
 8001928:	46bd      	mov	sp, r7
 800192a:	bc80      	pop	{r7}
 800192c:	4770      	bx	lr

0800192e <HAL_EXTI_GetHandle>:
  * @param  ExtiLine Exti line number.
  *         This parameter can be from 0 to @ref EXTI_LINE_NB.
  * @retval HAL Status.
  */
HAL_StatusTypeDef HAL_EXTI_GetHandle(EXTI_HandleTypeDef *hexti, uint32_t ExtiLine)
{
 800192e:	b480      	push	{r7}
 8001930:	b083      	sub	sp, #12
 8001932:	af00      	add	r7, sp, #0
 8001934:	6078      	str	r0, [r7, #4]
 8001936:	6039      	str	r1, [r7, #0]
  /* Check null pointer */
  if(hexti == NULL)
 8001938:	687b      	ldr	r3, [r7, #4]
 800193a:	2b00      	cmp	r3, #0
 800193c:	d101      	bne.n	8001942 <HAL_EXTI_GetHandle+0x14>
  {
    return HAL_ERROR;
 800193e:	2301      	movs	r3, #1
 8001940:	e003      	b.n	800194a <HAL_EXTI_GetHandle+0x1c>

  /* Check parameters */
  assert_param(IS_EXTI_LINE(ExtiLine));

  /* Store line number as handle private field */
  hexti->Line = ExtiLine;
 8001942:	687b      	ldr	r3, [r7, #4]
 8001944:	683a      	ldr	r2, [r7, #0]
 8001946:	601a      	str	r2, [r3, #0]

  return HAL_OK;
 8001948:	2300      	movs	r3, #0
}
 800194a:	4618      	mov	r0, r3
 800194c:	370c      	adds	r7, #12
 800194e:	46bd      	mov	sp, r7
 8001950:	bc80      	pop	{r7}
 8001952:	4770      	bx	lr

08001954 <HAL_GPIO_Init>:
  * @param  GPIO_Init pointer to a GPIO_InitTypeDef structure that contains
  *         the configuration information for the specified GPIO peripheral.
  * @retval None
  */
void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
{
 8001954:	b480      	push	{r7}
 8001956:	b087      	sub	sp, #28
 8001958:	af00      	add	r7, sp, #0
 800195a:	6078      	str	r0, [r7, #4]
 800195c:	6039      	str	r1, [r7, #0]
  uint32_t position = 0U;
 800195e:	2300      	movs	r3, #0
 8001960:	617b      	str	r3, [r7, #20]
  assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
  assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
  assert_param(IS_GPIO_PULL(GPIO_Init->Pull));

  /* Configure the port pins */
  while (((GPIO_Init->Pin) >> position) != 0U)
 8001962:	e158      	b.n	8001c16 <HAL_GPIO_Init+0x2c2>
  {
    /* Get current io position */
    iocurrent = (GPIO_Init->Pin) & (1UL << position);
 8001964:	683b      	ldr	r3, [r7, #0]
 8001966:	681a      	ldr	r2, [r3, #0]
 8001968:	2101      	movs	r1, #1
 800196a:	697b      	ldr	r3, [r7, #20]
 800196c:	fa01 f303 	lsl.w	r3, r1, r3
 8001970:	4013      	ands	r3, r2
 8001972:	60fb      	str	r3, [r7, #12]

    if(iocurrent != 0U)
 8001974:	68fb      	ldr	r3, [r7, #12]
 8001976:	2b00      	cmp	r3, #0
 8001978:	f000 814a 	beq.w	8001c10 <HAL_GPIO_Init+0x2bc>
    {
      /*--------------------- GPIO Mode Configuration ------------------------*/
      /* In case of Output or Alternate function mode selection */
      if((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 800197c:	683b      	ldr	r3, [r7, #0]
 800197e:	685b      	ldr	r3, [r3, #4]
 8001980:	2b01      	cmp	r3, #1
 8001982:	d00b      	beq.n	800199c <HAL_GPIO_Init+0x48>
 8001984:	683b      	ldr	r3, [r7, #0]
 8001986:	685b      	ldr	r3, [r3, #4]
 8001988:	2b02      	cmp	r3, #2
 800198a:	d007      	beq.n	800199c <HAL_GPIO_Init+0x48>
         (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 800198c:	683b      	ldr	r3, [r7, #0]
 800198e:	685b      	ldr	r3, [r3, #4]
      if((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 8001990:	2b11      	cmp	r3, #17
 8001992:	d003      	beq.n	800199c <HAL_GPIO_Init+0x48>
         (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 8001994:	683b      	ldr	r3, [r7, #0]
 8001996:	685b      	ldr	r3, [r3, #4]
 8001998:	2b12      	cmp	r3, #18
 800199a:	d130      	bne.n	80019fe <HAL_GPIO_Init+0xaa>
      {
        /* Check the Speed parameter */
        assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
        /* Configure the IO Speed */
        temp = GPIOx->OSPEEDR;
 800199c:	687b      	ldr	r3, [r7, #4]
 800199e:	689b      	ldr	r3, [r3, #8]
 80019a0:	613b      	str	r3, [r7, #16]
        temp &= ~(GPIO_OSPEEDR_OSPEED0 << (position * 2U));
 80019a2:	697b      	ldr	r3, [r7, #20]
 80019a4:	005b      	lsls	r3, r3, #1
 80019a6:	2203      	movs	r2, #3
 80019a8:	fa02 f303 	lsl.w	r3, r2, r3
 80019ac:	43db      	mvns	r3, r3
 80019ae:	693a      	ldr	r2, [r7, #16]
 80019b0:	4013      	ands	r3, r2
 80019b2:	613b      	str	r3, [r7, #16]
        temp |= (GPIO_Init->Speed << (position * 2U));
 80019b4:	683b      	ldr	r3, [r7, #0]
 80019b6:	68da      	ldr	r2, [r3, #12]
 80019b8:	697b      	ldr	r3, [r7, #20]
 80019ba:	005b      	lsls	r3, r3, #1
 80019bc:	fa02 f303 	lsl.w	r3, r2, r3
 80019c0:	693a      	ldr	r2, [r7, #16]
 80019c2:	4313      	orrs	r3, r2
 80019c4:	613b      	str	r3, [r7, #16]
        GPIOx->OSPEEDR = temp;
 80019c6:	687b      	ldr	r3, [r7, #4]
 80019c8:	693a      	ldr	r2, [r7, #16]
 80019ca:	609a      	str	r2, [r3, #8]

        /* Configure the IO Output Type */
        temp = GPIOx->OTYPER;
 80019cc:	687b      	ldr	r3, [r7, #4]
 80019ce:	685b      	ldr	r3, [r3, #4]
 80019d0:	613b      	str	r3, [r7, #16]
        temp &= ~(GPIO_OTYPER_OT0 << position) ;
 80019d2:	2201      	movs	r2, #1
 80019d4:	697b      	ldr	r3, [r7, #20]
 80019d6:	fa02 f303 	lsl.w	r3, r2, r3
 80019da:	43db      	mvns	r3, r3
 80019dc:	693a      	ldr	r2, [r7, #16]
 80019de:	4013      	ands	r3, r2
 80019e0:	613b      	str	r3, [r7, #16]
        temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 80019e2:	683b      	ldr	r3, [r7, #0]
 80019e4:	685b      	ldr	r3, [r3, #4]
 80019e6:	091b      	lsrs	r3, r3, #4
 80019e8:	f003 0201 	and.w	r2, r3, #1
 80019ec:	697b      	ldr	r3, [r7, #20]
 80019ee:	fa02 f303 	lsl.w	r3, r2, r3
 80019f2:	693a      	ldr	r2, [r7, #16]
 80019f4:	4313      	orrs	r3, r2
 80019f6:	613b      	str	r3, [r7, #16]
        GPIOx->OTYPER = temp;
 80019f8:	687b      	ldr	r3, [r7, #4]
 80019fa:	693a      	ldr	r2, [r7, #16]
 80019fc:	605a      	str	r2, [r3, #4]
      }

      /* Activate the Pull-up or Pull down resistor for the current IO */
      temp = GPIOx->PUPDR;
 80019fe:	687b      	ldr	r3, [r7, #4]
 8001a00:	68db      	ldr	r3, [r3, #12]
 8001a02:	613b      	str	r3, [r7, #16]
      temp &= ~(GPIO_PUPDR_PUPD0 << (position * 2U));
 8001a04:	697b      	ldr	r3, [r7, #20]
 8001a06:	005b      	lsls	r3, r3, #1
 8001a08:	2203      	movs	r2, #3
 8001a0a:	fa02 f303 	lsl.w	r3, r2, r3
 8001a0e:	43db      	mvns	r3, r3
 8001a10:	693a      	ldr	r2, [r7, #16]
 8001a12:	4013      	ands	r3, r2
 8001a14:	613b      	str	r3, [r7, #16]
      temp |= ((GPIO_Init->Pull) << (position * 2U));
 8001a16:	683b      	ldr	r3, [r7, #0]
 8001a18:	689a      	ldr	r2, [r3, #8]
 8001a1a:	697b      	ldr	r3, [r7, #20]
 8001a1c:	005b      	lsls	r3, r3, #1
 8001a1e:	fa02 f303 	lsl.w	r3, r2, r3
 8001a22:	693a      	ldr	r2, [r7, #16]
 8001a24:	4313      	orrs	r3, r2
 8001a26:	613b      	str	r3, [r7, #16]
      GPIOx->PUPDR = temp;
 8001a28:	687b      	ldr	r3, [r7, #4]
 8001a2a:	693a      	ldr	r2, [r7, #16]
 8001a2c:	60da      	str	r2, [r3, #12]

      /* In case of Alternate function mode selection */
      if((GPIO_Init->Mode == GPIO_MODE_AF_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 8001a2e:	683b      	ldr	r3, [r7, #0]
 8001a30:	685b      	ldr	r3, [r3, #4]
 8001a32:	2b02      	cmp	r3, #2
 8001a34:	d003      	beq.n	8001a3e <HAL_GPIO_Init+0xea>
 8001a36:	683b      	ldr	r3, [r7, #0]
 8001a38:	685b      	ldr	r3, [r3, #4]
 8001a3a:	2b12      	cmp	r3, #18
 8001a3c:	d123      	bne.n	8001a86 <HAL_GPIO_Init+0x132>
        /* Check the Alternate function parameters */
        assert_param(IS_GPIO_AF_INSTANCE(GPIOx));
        assert_param(IS_GPIO_AF(GPIO_Init->Alternate));

        /* Configure Alternate function mapped with the current IO */
        temp = GPIOx->AFR[position >> 3U];
 8001a3e:	697b      	ldr	r3, [r7, #20]
 8001a40:	08da      	lsrs	r2, r3, #3
 8001a42:	687b      	ldr	r3, [r7, #4]
 8001a44:	3208      	adds	r2, #8
 8001a46:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8001a4a:	613b      	str	r3, [r7, #16]
        temp &= ~(0x0FUL << ((position & 0x07U) * 4U)) ;
 8001a4c:	697b      	ldr	r3, [r7, #20]
 8001a4e:	f003 0307 	and.w	r3, r3, #7
 8001a52:	009b      	lsls	r3, r3, #2
 8001a54:	220f      	movs	r2, #15
 8001a56:	fa02 f303 	lsl.w	r3, r2, r3
 8001a5a:	43db      	mvns	r3, r3
 8001a5c:	693a      	ldr	r2, [r7, #16]
 8001a5e:	4013      	ands	r3, r2
 8001a60:	613b      	str	r3, [r7, #16]
        temp |= ((GPIO_Init->Alternate) << ((position & 0x07U) * 4U));
 8001a62:	683b      	ldr	r3, [r7, #0]
 8001a64:	691a      	ldr	r2, [r3, #16]
 8001a66:	697b      	ldr	r3, [r7, #20]
 8001a68:	f003 0307 	and.w	r3, r3, #7
 8001a6c:	009b      	lsls	r3, r3, #2
 8001a6e:	fa02 f303 	lsl.w	r3, r2, r3
 8001a72:	693a      	ldr	r2, [r7, #16]
 8001a74:	4313      	orrs	r3, r2
 8001a76:	613b      	str	r3, [r7, #16]
        GPIOx->AFR[position >> 3U] = temp;
 8001a78:	697b      	ldr	r3, [r7, #20]
 8001a7a:	08da      	lsrs	r2, r3, #3
 8001a7c:	687b      	ldr	r3, [r7, #4]
 8001a7e:	3208      	adds	r2, #8
 8001a80:	6939      	ldr	r1, [r7, #16]
 8001a82:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
      }

      /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
      temp = GPIOx->MODER;
 8001a86:	687b      	ldr	r3, [r7, #4]
 8001a88:	681b      	ldr	r3, [r3, #0]
 8001a8a:	613b      	str	r3, [r7, #16]
      temp &= ~(GPIO_MODER_MODE0 << (position * 2U));
 8001a8c:	697b      	ldr	r3, [r7, #20]
 8001a8e:	005b      	lsls	r3, r3, #1
 8001a90:	2203      	movs	r2, #3
 8001a92:	fa02 f303 	lsl.w	r3, r2, r3
 8001a96:	43db      	mvns	r3, r3
 8001a98:	693a      	ldr	r2, [r7, #16]
 8001a9a:	4013      	ands	r3, r2
 8001a9c:	613b      	str	r3, [r7, #16]
      temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
 8001a9e:	683b      	ldr	r3, [r7, #0]
 8001aa0:	685b      	ldr	r3, [r3, #4]
 8001aa2:	f003 0203 	and.w	r2, r3, #3
 8001aa6:	697b      	ldr	r3, [r7, #20]
 8001aa8:	005b      	lsls	r3, r3, #1
 8001aaa:	fa02 f303 	lsl.w	r3, r2, r3
 8001aae:	693a      	ldr	r2, [r7, #16]
 8001ab0:	4313      	orrs	r3, r2
 8001ab2:	613b      	str	r3, [r7, #16]
      GPIOx->MODER = temp;
 8001ab4:	687b      	ldr	r3, [r7, #4]
 8001ab6:	693a      	ldr	r2, [r7, #16]
 8001ab8:	601a      	str	r2, [r3, #0]

      /*--------------------- EXTI Mode Configuration ------------------------*/
      /* Configure the External Interrupt or event for the current IO */
      if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 8001aba:	683b      	ldr	r3, [r7, #0]
 8001abc:	685b      	ldr	r3, [r3, #4]
 8001abe:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8001ac2:	2b00      	cmp	r3, #0
 8001ac4:	f000 80a4 	beq.w	8001c10 <HAL_GPIO_Init+0x2bc>
      {
        temp = EXTI->EXTICR[position >> 2U];
 8001ac8:	4a59      	ldr	r2, [pc, #356]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001aca:	697b      	ldr	r3, [r7, #20]
 8001acc:	089b      	lsrs	r3, r3, #2
 8001ace:	3318      	adds	r3, #24
 8001ad0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8001ad4:	613b      	str	r3, [r7, #16]
        temp &= ~((0x0FU) << (8U * (position & 0x03U)));
 8001ad6:	697b      	ldr	r3, [r7, #20]
 8001ad8:	f003 0303 	and.w	r3, r3, #3
 8001adc:	00db      	lsls	r3, r3, #3
 8001ade:	220f      	movs	r2, #15
 8001ae0:	fa02 f303 	lsl.w	r3, r2, r3
 8001ae4:	43db      	mvns	r3, r3
 8001ae6:	693a      	ldr	r2, [r7, #16]
 8001ae8:	4013      	ands	r3, r2
 8001aea:	613b      	str	r3, [r7, #16]
        temp |= (GPIO_GET_INDEX(GPIOx) << (8U * (position & 0x03U)));
 8001aec:	687b      	ldr	r3, [r7, #4]
 8001aee:	4a51      	ldr	r2, [pc, #324]	; (8001c34 <HAL_GPIO_Init+0x2e0>)
 8001af0:	4293      	cmp	r3, r2
 8001af2:	d025      	beq.n	8001b40 <HAL_GPIO_Init+0x1ec>
 8001af4:	687b      	ldr	r3, [r7, #4]
 8001af6:	4a50      	ldr	r2, [pc, #320]	; (8001c38 <HAL_GPIO_Init+0x2e4>)
 8001af8:	4293      	cmp	r3, r2
 8001afa:	d01f      	beq.n	8001b3c <HAL_GPIO_Init+0x1e8>
 8001afc:	687b      	ldr	r3, [r7, #4]
 8001afe:	4a4f      	ldr	r2, [pc, #316]	; (8001c3c <HAL_GPIO_Init+0x2e8>)
 8001b00:	4293      	cmp	r3, r2
 8001b02:	d019      	beq.n	8001b38 <HAL_GPIO_Init+0x1e4>
 8001b04:	687b      	ldr	r3, [r7, #4]
 8001b06:	4a4e      	ldr	r2, [pc, #312]	; (8001c40 <HAL_GPIO_Init+0x2ec>)
 8001b08:	4293      	cmp	r3, r2
 8001b0a:	d013      	beq.n	8001b34 <HAL_GPIO_Init+0x1e0>
 8001b0c:	687b      	ldr	r3, [r7, #4]
 8001b0e:	4a4d      	ldr	r2, [pc, #308]	; (8001c44 <HAL_GPIO_Init+0x2f0>)
 8001b10:	4293      	cmp	r3, r2
 8001b12:	d00d      	beq.n	8001b30 <HAL_GPIO_Init+0x1dc>
 8001b14:	687b      	ldr	r3, [r7, #4]
 8001b16:	4a4c      	ldr	r2, [pc, #304]	; (8001c48 <HAL_GPIO_Init+0x2f4>)
 8001b18:	4293      	cmp	r3, r2
 8001b1a:	d007      	beq.n	8001b2c <HAL_GPIO_Init+0x1d8>
 8001b1c:	687b      	ldr	r3, [r7, #4]
 8001b1e:	4a4b      	ldr	r2, [pc, #300]	; (8001c4c <HAL_GPIO_Init+0x2f8>)
 8001b20:	4293      	cmp	r3, r2
 8001b22:	d101      	bne.n	8001b28 <HAL_GPIO_Init+0x1d4>
 8001b24:	2306      	movs	r3, #6
 8001b26:	e00c      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b28:	2307      	movs	r3, #7
 8001b2a:	e00a      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b2c:	2305      	movs	r3, #5
 8001b2e:	e008      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b30:	2304      	movs	r3, #4
 8001b32:	e006      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b34:	2303      	movs	r3, #3
 8001b36:	e004      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b38:	2302      	movs	r3, #2
 8001b3a:	e002      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b3c:	2301      	movs	r3, #1
 8001b3e:	e000      	b.n	8001b42 <HAL_GPIO_Init+0x1ee>
 8001b40:	2300      	movs	r3, #0
 8001b42:	697a      	ldr	r2, [r7, #20]
 8001b44:	f002 0203 	and.w	r2, r2, #3
 8001b48:	00d2      	lsls	r2, r2, #3
 8001b4a:	4093      	lsls	r3, r2
 8001b4c:	693a      	ldr	r2, [r7, #16]
 8001b4e:	4313      	orrs	r3, r2
 8001b50:	613b      	str	r3, [r7, #16]
        EXTI->EXTICR[position >> 2U] = temp;
 8001b52:	4937      	ldr	r1, [pc, #220]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001b54:	697b      	ldr	r3, [r7, #20]
 8001b56:	089b      	lsrs	r3, r3, #2
 8001b58:	3318      	adds	r3, #24
 8001b5a:	693a      	ldr	r2, [r7, #16]
 8001b5c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]

        /* Clear EXTI line configuration */
        temp = EXTI->IMR1;
 8001b60:	4b33      	ldr	r3, [pc, #204]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001b62:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 8001b66:	613b      	str	r3, [r7, #16]
        temp &= ~(iocurrent);
 8001b68:	68fb      	ldr	r3, [r7, #12]
 8001b6a:	43db      	mvns	r3, r3
 8001b6c:	693a      	ldr	r2, [r7, #16]
 8001b6e:	4013      	ands	r3, r2
 8001b70:	613b      	str	r3, [r7, #16]
        if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
 8001b72:	683b      	ldr	r3, [r7, #0]
 8001b74:	685b      	ldr	r3, [r3, #4]
 8001b76:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 8001b7a:	2b00      	cmp	r3, #0
 8001b7c:	d003      	beq.n	8001b86 <HAL_GPIO_Init+0x232>
        {
          temp |= iocurrent;
 8001b7e:	693a      	ldr	r2, [r7, #16]
 8001b80:	68fb      	ldr	r3, [r7, #12]
 8001b82:	4313      	orrs	r3, r2
 8001b84:	613b      	str	r3, [r7, #16]
        }
        EXTI->IMR1 = temp;
 8001b86:	4a2a      	ldr	r2, [pc, #168]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001b88:	693b      	ldr	r3, [r7, #16]
 8001b8a:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80

        temp = EXTI->EMR1;
 8001b8e:	4b28      	ldr	r3, [pc, #160]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001b90:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8001b94:	613b      	str	r3, [r7, #16]
        temp &= ~(iocurrent);
 8001b96:	68fb      	ldr	r3, [r7, #12]
 8001b98:	43db      	mvns	r3, r3
 8001b9a:	693a      	ldr	r2, [r7, #16]
 8001b9c:	4013      	ands	r3, r2
 8001b9e:	613b      	str	r3, [r7, #16]
        if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
 8001ba0:	683b      	ldr	r3, [r7, #0]
 8001ba2:	685b      	ldr	r3, [r3, #4]
 8001ba4:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001ba8:	2b00      	cmp	r3, #0
 8001baa:	d003      	beq.n	8001bb4 <HAL_GPIO_Init+0x260>
        {
          temp |= iocurrent;
 8001bac:	693a      	ldr	r2, [r7, #16]
 8001bae:	68fb      	ldr	r3, [r7, #12]
 8001bb0:	4313      	orrs	r3, r2
 8001bb2:	613b      	str	r3, [r7, #16]
        }
        EXTI->EMR1 = temp;
 8001bb4:	4a1e      	ldr	r2, [pc, #120]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001bb6:	693b      	ldr	r3, [r7, #16]
 8001bb8:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84

        /* Clear Rising Falling edge configuration */
        temp = EXTI->RTSR1;
 8001bbc:	4b1c      	ldr	r3, [pc, #112]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001bbe:	681b      	ldr	r3, [r3, #0]
 8001bc0:	613b      	str	r3, [r7, #16]
        temp &= ~(iocurrent);
 8001bc2:	68fb      	ldr	r3, [r7, #12]
 8001bc4:	43db      	mvns	r3, r3
 8001bc6:	693a      	ldr	r2, [r7, #16]
 8001bc8:	4013      	ands	r3, r2
 8001bca:	613b      	str	r3, [r7, #16]
        if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 8001bcc:	683b      	ldr	r3, [r7, #0]
 8001bce:	685b      	ldr	r3, [r3, #4]
 8001bd0:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 8001bd4:	2b00      	cmp	r3, #0
 8001bd6:	d003      	beq.n	8001be0 <HAL_GPIO_Init+0x28c>
        {
          temp |= iocurrent;
 8001bd8:	693a      	ldr	r2, [r7, #16]
 8001bda:	68fb      	ldr	r3, [r7, #12]
 8001bdc:	4313      	orrs	r3, r2
 8001bde:	613b      	str	r3, [r7, #16]
        }
        EXTI->RTSR1 = temp;
 8001be0:	4a13      	ldr	r2, [pc, #76]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001be2:	693b      	ldr	r3, [r7, #16]
 8001be4:	6013      	str	r3, [r2, #0]

        temp = EXTI->FTSR1;
 8001be6:	4b12      	ldr	r3, [pc, #72]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001be8:	685b      	ldr	r3, [r3, #4]
 8001bea:	613b      	str	r3, [r7, #16]
        temp &= ~(iocurrent);
 8001bec:	68fb      	ldr	r3, [r7, #12]
 8001bee:	43db      	mvns	r3, r3
 8001bf0:	693a      	ldr	r2, [r7, #16]
 8001bf2:	4013      	ands	r3, r2
 8001bf4:	613b      	str	r3, [r7, #16]
        if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 8001bf6:	683b      	ldr	r3, [r7, #0]
 8001bf8:	685b      	ldr	r3, [r3, #4]
 8001bfa:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8001bfe:	2b00      	cmp	r3, #0
 8001c00:	d003      	beq.n	8001c0a <HAL_GPIO_Init+0x2b6>
        {
          temp |= iocurrent;
 8001c02:	693a      	ldr	r2, [r7, #16]
 8001c04:	68fb      	ldr	r3, [r7, #12]
 8001c06:	4313      	orrs	r3, r2
 8001c08:	613b      	str	r3, [r7, #16]
        }
        EXTI->FTSR1 = temp;
 8001c0a:	4a09      	ldr	r2, [pc, #36]	; (8001c30 <HAL_GPIO_Init+0x2dc>)
 8001c0c:	693b      	ldr	r3, [r7, #16]
 8001c0e:	6053      	str	r3, [r2, #4]
      }
    }

    position++;
 8001c10:	697b      	ldr	r3, [r7, #20]
 8001c12:	3301      	adds	r3, #1
 8001c14:	617b      	str	r3, [r7, #20]
  while (((GPIO_Init->Pin) >> position) != 0U)
 8001c16:	683b      	ldr	r3, [r7, #0]
 8001c18:	681a      	ldr	r2, [r3, #0]
 8001c1a:	697b      	ldr	r3, [r7, #20]
 8001c1c:	fa22 f303 	lsr.w	r3, r2, r3
 8001c20:	2b00      	cmp	r3, #0
 8001c22:	f47f ae9f 	bne.w	8001964 <HAL_GPIO_Init+0x10>
  }
}
 8001c26:	bf00      	nop
 8001c28:	371c      	adds	r7, #28
 8001c2a:	46bd      	mov	sp, r7
 8001c2c:	bc80      	pop	{r7}
 8001c2e:	4770      	bx	lr
 8001c30:	4002f400 	.word	0x4002f400
 8001c34:	42020000 	.word	0x42020000
 8001c38:	42020400 	.word	0x42020400
 8001c3c:	42020800 	.word	0x42020800
 8001c40:	42020c00 	.word	0x42020c00
 8001c44:	42021000 	.word	0x42021000
 8001c48:	42021400 	.word	0x42021400
 8001c4c:	42021800 	.word	0x42021800

08001c50 <HAL_GPIO_WritePin>:
  *            @arg GPIO_PIN_RESET: to clear the port pin
  *            @arg GPIO_PIN_SET: to set the port pin
  * @retval None
  */
void HAL_GPIO_WritePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
{
 8001c50:	b480      	push	{r7}
 8001c52:	b083      	sub	sp, #12
 8001c54:	af00      	add	r7, sp, #0
 8001c56:	6078      	str	r0, [r7, #4]
 8001c58:	460b      	mov	r3, r1
 8001c5a:	807b      	strh	r3, [r7, #2]
 8001c5c:	4613      	mov	r3, r2
 8001c5e:	707b      	strb	r3, [r7, #1]
  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));
  assert_param(IS_GPIO_PIN_ACTION(PinState));

  if (PinState != GPIO_PIN_RESET)
 8001c60:	787b      	ldrb	r3, [r7, #1]
 8001c62:	2b00      	cmp	r3, #0
 8001c64:	d003      	beq.n	8001c6e <HAL_GPIO_WritePin+0x1e>
  {
    GPIOx->BSRR = (uint32_t)GPIO_Pin;
 8001c66:	887a      	ldrh	r2, [r7, #2]
 8001c68:	687b      	ldr	r3, [r7, #4]
 8001c6a:	619a      	str	r2, [r3, #24]
  }
  else
  {
    GPIOx->BRR = (uint32_t)GPIO_Pin;
  }
}
 8001c6c:	e002      	b.n	8001c74 <HAL_GPIO_WritePin+0x24>
    GPIOx->BRR = (uint32_t)GPIO_Pin;
 8001c6e:	887a      	ldrh	r2, [r7, #2]
 8001c70:	687b      	ldr	r3, [r7, #4]
 8001c72:	629a      	str	r2, [r3, #40]	; 0x28
}
 8001c74:	bf00      	nop
 8001c76:	370c      	adds	r7, #12
 8001c78:	46bd      	mov	sp, r7
 8001c7a:	bc80      	pop	{r7}
 8001c7c:	4770      	bx	lr

08001c7e <HAL_GPIO_TogglePin>:
  * @param  GPIO_Pin specifies the pin to be toggled.
  *         This parameter can be any combination of GPIO_Pin_x where x can be (0..15).
  * @retval None
  */
void HAL_GPIO_TogglePin(GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin)
{
 8001c7e:	b480      	push	{r7}
 8001c80:	b085      	sub	sp, #20
 8001c82:	af00      	add	r7, sp, #0
 8001c84:	6078      	str	r0, [r7, #4]
 8001c86:	460b      	mov	r3, r1
 8001c88:	807b      	strh	r3, [r7, #2]

  /* Check the parameters */
  assert_param(IS_GPIO_PIN(GPIO_Pin));

  /* get current Output Data Register value */
  odr = GPIOx->ODR;
 8001c8a:	687b      	ldr	r3, [r7, #4]
 8001c8c:	695b      	ldr	r3, [r3, #20]
 8001c8e:	60fb      	str	r3, [r7, #12]

  /* Set selected pins that were at low level, and reset ones that were high */
  GPIOx->BSRR = ((odr & GPIO_Pin) << GPIO_NUMBER) | (~odr & GPIO_Pin);
 8001c90:	887a      	ldrh	r2, [r7, #2]
 8001c92:	68fb      	ldr	r3, [r7, #12]
 8001c94:	4013      	ands	r3, r2
 8001c96:	041a      	lsls	r2, r3, #16
 8001c98:	68fb      	ldr	r3, [r7, #12]
 8001c9a:	43d9      	mvns	r1, r3
 8001c9c:	887b      	ldrh	r3, [r7, #2]
 8001c9e:	400b      	ands	r3, r1
 8001ca0:	431a      	orrs	r2, r3
 8001ca2:	687b      	ldr	r3, [r7, #4]
 8001ca4:	619a      	str	r2, [r3, #24]
}
 8001ca6:	bf00      	nop
 8001ca8:	3714      	adds	r7, #20
 8001caa:	46bd      	mov	sp, r7
 8001cac:	bc80      	pop	{r7}
 8001cae:	4770      	bx	lr

08001cb0 <HAL_PWREx_GetVoltageRange>:
/**
  * @brief Return Voltage Scaling Range.
  * @retval VOS bit field (PWR_REGULATOR_VOLTAGE_SCALE0, PWR_REGULATOR_VOLTAGE_SCALE1 or PWR_REGULATOR_VOLTAGE_SCALE2)
  */
uint32_t HAL_PWREx_GetVoltageRange(void)
{
 8001cb0:	b480      	push	{r7}
 8001cb2:	af00      	add	r7, sp, #0
  return (PWR->CR1 & PWR_CR1_VOS);
 8001cb4:	4b03      	ldr	r3, [pc, #12]	; (8001cc4 <HAL_PWREx_GetVoltageRange+0x14>)
 8001cb6:	681b      	ldr	r3, [r3, #0]
 8001cb8:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
}
 8001cbc:	4618      	mov	r0, r3
 8001cbe:	46bd      	mov	sp, r7
 8001cc0:	bc80      	pop	{r7}
 8001cc2:	4770      	bx	lr
 8001cc4:	40007000 	.word	0x40007000

08001cc8 <HAL_PWREx_ControlVoltageScaling>:
  * @note  The VOS shall NOT be changed in LP Mode of if LP mode is asked.
  * @note  The function shall not be called in Low-power run mode (meaningless and misleading).
  * @retval HAL Status
  */
HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling)
{
 8001cc8:	b580      	push	{r7, lr}
 8001cca:	b084      	sub	sp, #16
 8001ccc:	af00      	add	r7, sp, #0
 8001cce:	6078      	str	r0, [r7, #4]
  uint32_t wait_loop_index;

  assert_param(IS_PWR_VOLTAGE_SCALING_RANGE(VoltageScaling));

  uint32_t vos_old = READ_BIT(PWR->CR1, PWR_CR1_VOS);
 8001cd0:	4b27      	ldr	r3, [pc, #156]	; (8001d70 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8001cd2:	681b      	ldr	r3, [r3, #0]
 8001cd4:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
 8001cd8:	60bb      	str	r3, [r7, #8]

  /* VOS shall not be changed in LP Mode            */
  /* or if LP Mode is asked but not yet established */
  if (HAL_PWREx_SMPS_GetEffectiveMode() == PWR_SMPS_LOW_POWER)
 8001cda:	f000 f85f 	bl	8001d9c <HAL_PWREx_SMPS_GetEffectiveMode>
 8001cde:	4603      	mov	r3, r0
 8001ce0:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001ce4:	d101      	bne.n	8001cea <HAL_PWREx_ControlVoltageScaling+0x22>
  {
    return HAL_ERROR;
 8001ce6:	2301      	movs	r3, #1
 8001ce8:	e03e      	b.n	8001d68 <HAL_PWREx_ControlVoltageScaling+0xa0>
  }
  if (READ_BIT(PWR->CR4, PWR_CR4_SMPSLPEN) == PWR_CR4_SMPSLPEN)
 8001cea:	4b21      	ldr	r3, [pc, #132]	; (8001d70 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8001cec:	68db      	ldr	r3, [r3, #12]
 8001cee:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 8001cf2:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001cf6:	d101      	bne.n	8001cfc <HAL_PWREx_ControlVoltageScaling+0x34>
  {
    return HAL_ERROR;
 8001cf8:	2301      	movs	r3, #1
 8001cfa:	e035      	b.n	8001d68 <HAL_PWREx_ControlVoltageScaling+0xa0>
  }

  /* No change, nothing to do */
  if (vos_old == VoltageScaling)
 8001cfc:	68ba      	ldr	r2, [r7, #8]
 8001cfe:	687b      	ldr	r3, [r7, #4]
 8001d00:	429a      	cmp	r2, r3
 8001d02:	d101      	bne.n	8001d08 <HAL_PWREx_ControlVoltageScaling+0x40>
  {
    return HAL_OK;
 8001d04:	2300      	movs	r3, #0
 8001d06:	e02f      	b.n	8001d68 <HAL_PWREx_ControlVoltageScaling+0xa0>
  }

  MODIFY_REG(PWR->CR1, PWR_CR1_VOS, VoltageScaling);
 8001d08:	4b19      	ldr	r3, [pc, #100]	; (8001d70 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8001d0a:	681b      	ldr	r3, [r3, #0]
 8001d0c:	f423 62c0 	bic.w	r2, r3, #1536	; 0x600
 8001d10:	4917      	ldr	r1, [pc, #92]	; (8001d70 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8001d12:	687b      	ldr	r3, [r7, #4]
 8001d14:	4313      	orrs	r3, r2
 8001d16:	600b      	str	r3, [r1, #0]

  /* Wait until VOSF is cleared */
  /* and at least one iteration loop */
  wait_loop_index = ((PWR_VOSF_SETTING_DELAY_VALUE * (SystemCoreClock / 100000U)) / 10U) + 1U;
 8001d18:	4b16      	ldr	r3, [pc, #88]	; (8001d74 <HAL_PWREx_ControlVoltageScaling+0xac>)
 8001d1a:	681b      	ldr	r3, [r3, #0]
 8001d1c:	095b      	lsrs	r3, r3, #5
 8001d1e:	4a16      	ldr	r2, [pc, #88]	; (8001d78 <HAL_PWREx_ControlVoltageScaling+0xb0>)
 8001d20:	fba2 2303 	umull	r2, r3, r2, r3
 8001d24:	09db      	lsrs	r3, r3, #7
 8001d26:	2232      	movs	r2, #50	; 0x32
 8001d28:	fb02 f303 	mul.w	r3, r2, r3
 8001d2c:	4a13      	ldr	r2, [pc, #76]	; (8001d7c <HAL_PWREx_ControlVoltageScaling+0xb4>)
 8001d2e:	fba2 2303 	umull	r2, r3, r2, r3
 8001d32:	08db      	lsrs	r3, r3, #3
 8001d34:	3301      	adds	r3, #1
 8001d36:	60fb      	str	r3, [r7, #12]

  while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 8001d38:	e002      	b.n	8001d40 <HAL_PWREx_ControlVoltageScaling+0x78>
  {
    wait_loop_index--;
 8001d3a:	68fb      	ldr	r3, [r7, #12]
 8001d3c:	3b01      	subs	r3, #1
 8001d3e:	60fb      	str	r3, [r7, #12]
  while ((HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF)) && (wait_loop_index != 0U))
 8001d40:	4b0b      	ldr	r3, [pc, #44]	; (8001d70 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8001d42:	695b      	ldr	r3, [r3, #20]
 8001d44:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001d48:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8001d4c:	d102      	bne.n	8001d54 <HAL_PWREx_ControlVoltageScaling+0x8c>
 8001d4e:	68fb      	ldr	r3, [r7, #12]
 8001d50:	2b00      	cmp	r3, #0
 8001d52:	d1f2      	bne.n	8001d3a <HAL_PWREx_ControlVoltageScaling+0x72>
  }

  if (HAL_IS_BIT_SET(PWR->SR2, PWR_SR2_VOSF))
 8001d54:	4b06      	ldr	r3, [pc, #24]	; (8001d70 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8001d56:	695b      	ldr	r3, [r3, #20]
 8001d58:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001d5c:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8001d60:	d101      	bne.n	8001d66 <HAL_PWREx_ControlVoltageScaling+0x9e>
  {
    return HAL_TIMEOUT;
 8001d62:	2303      	movs	r3, #3
 8001d64:	e000      	b.n	8001d68 <HAL_PWREx_ControlVoltageScaling+0xa0>
  }

  return HAL_OK;
 8001d66:	2300      	movs	r3, #0
}
 8001d68:	4618      	mov	r0, r3
 8001d6a:	3710      	adds	r7, #16
 8001d6c:	46bd      	mov	sp, r7
 8001d6e:	bd80      	pop	{r7, pc}
 8001d70:	40007000 	.word	0x40007000
 8001d74:	20000000 	.word	0x20000000
 8001d78:	0a7c5ac5 	.word	0x0a7c5ac5
 8001d7c:	cccccccd 	.word	0xcccccccd

08001d80 <HAL_PWREx_DisableUCPDDeadBattery>:
  *       or to hand over control to the UCPD (which should therefore be
  *       initialized before doing the disable).
  * @retval None
  */
void HAL_PWREx_DisableUCPDDeadBattery(void)
{
 8001d80:	b480      	push	{r7}
 8001d82:	af00      	add	r7, sp, #0
  /* Write 1 to disable the USB Type-C dead battery pull-down behavior */
  SET_BIT(PWR->CR3, PWR_CR3_UCPD_DBDIS);
 8001d84:	4b04      	ldr	r3, [pc, #16]	; (8001d98 <HAL_PWREx_DisableUCPDDeadBattery+0x18>)
 8001d86:	689b      	ldr	r3, [r3, #8]
 8001d88:	4a03      	ldr	r2, [pc, #12]	; (8001d98 <HAL_PWREx_DisableUCPDDeadBattery+0x18>)
 8001d8a:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001d8e:	6093      	str	r3, [r2, #8]
}
 8001d90:	bf00      	nop
 8001d92:	46bd      	mov	sp, r7
 8001d94:	bc80      	pop	{r7}
 8001d96:	4770      	bx	lr
 8001d98:	40007000 	.word	0x40007000

08001d9c <HAL_PWREx_SMPS_GetEffectiveMode>:
  *         @arg @ref PWR_SMPS_HIGH_POWER    SMPS step down converter in high-power mode (default)
  *         @arg @ref PWR_SMPS_LOW_POWER     SMPS step down converter in low-power mode
  *         @arg @ref PWR_SMPS_BYPASS        SMPS step down converter in bypass mode
  */
uint32_t HAL_PWREx_SMPS_GetEffectiveMode(void)
{
 8001d9c:	b480      	push	{r7}
 8001d9e:	b083      	sub	sp, #12
 8001da0:	af00      	add	r7, sp, #0
  uint32_t mode;
  uint32_t pwr_sr1;

  pwr_sr1 = READ_REG(PWR->SR1);
 8001da2:	4b0e      	ldr	r3, [pc, #56]	; (8001ddc <HAL_PWREx_SMPS_GetEffectiveMode+0x40>)
 8001da4:	691b      	ldr	r3, [r3, #16]
 8001da6:	603b      	str	r3, [r7, #0]
  if (READ_BIT(pwr_sr1, PWR_SR1_SMPSBYPRDY) != 0U)
 8001da8:	683b      	ldr	r3, [r7, #0]
 8001daa:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8001dae:	2b00      	cmp	r3, #0
 8001db0:	d003      	beq.n	8001dba <HAL_PWREx_SMPS_GetEffectiveMode+0x1e>
  {
    mode = PWR_SMPS_BYPASS;
 8001db2:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001db6:	607b      	str	r3, [r7, #4]
 8001db8:	e00a      	b.n	8001dd0 <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
  }
  else if (READ_BIT(pwr_sr1, PWR_SR1_SMPSHPRDY) == 0U)
 8001dba:	683b      	ldr	r3, [r7, #0]
 8001dbc:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 8001dc0:	2b00      	cmp	r3, #0
 8001dc2:	d103      	bne.n	8001dcc <HAL_PWREx_SMPS_GetEffectiveMode+0x30>
  {
    mode = PWR_SMPS_LOW_POWER;
 8001dc4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001dc8:	607b      	str	r3, [r7, #4]
 8001dca:	e001      	b.n	8001dd0 <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
  }
  else
  {
    mode = PWR_SMPS_HIGH_POWER;
 8001dcc:	2300      	movs	r3, #0
 8001dce:	607b      	str	r3, [r7, #4]
  }

  return mode;
 8001dd0:	687b      	ldr	r3, [r7, #4]
}
 8001dd2:	4618      	mov	r0, r3
 8001dd4:	370c      	adds	r7, #12
 8001dd6:	46bd      	mov	sp, r7
 8001dd8:	bc80      	pop	{r7}
 8001dda:	4770      	bx	lr
 8001ddc:	40007000 	.word	0x40007000

08001de0 <HAL_RCC_OscConfig>:
  *         and is updated by this function in case of simple MSI range update when MSI
  *         used as system clock.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
{
 8001de0:	b580      	push	{r7, lr}
 8001de2:	b088      	sub	sp, #32
 8001de4:	af00      	add	r7, sp, #0
 8001de6:	6078      	str	r0, [r7, #4]
  uint32_t tickstart;
  HAL_StatusTypeDef status;
  uint32_t sysclk_source, pll_config;

  /* Check Null pointer */
  if (RCC_OscInitStruct == NULL)
 8001de8:	687b      	ldr	r3, [r7, #4]
 8001dea:	2b00      	cmp	r3, #0
 8001dec:	d102      	bne.n	8001df4 <HAL_RCC_OscConfig+0x14>
  {
    return HAL_ERROR;
 8001dee:	2301      	movs	r3, #1
 8001df0:	f000 bcd0 	b.w	8002794 <HAL_RCC_OscConfig+0x9b4>
  }

  /* Check the parameters */
  assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));

  sysclk_source = __HAL_RCC_GET_SYSCLK_SOURCE();
 8001df4:	4ba3      	ldr	r3, [pc, #652]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001df6:	689b      	ldr	r3, [r3, #8]
 8001df8:	f003 030c 	and.w	r3, r3, #12
 8001dfc:	61bb      	str	r3, [r7, #24]
  pll_config = __HAL_RCC_GET_PLL_OSCSOURCE();
 8001dfe:	4ba1      	ldr	r3, [pc, #644]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e00:	68db      	ldr	r3, [r3, #12]
 8001e02:	f003 0303 	and.w	r3, r3, #3
 8001e06:	617b      	str	r3, [r7, #20]

  /*----------------------------- MSI Configuration --------------------------*/
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_MSI) == RCC_OSCILLATORTYPE_MSI)
 8001e08:	687b      	ldr	r3, [r7, #4]
 8001e0a:	681b      	ldr	r3, [r3, #0]
 8001e0c:	f003 0310 	and.w	r3, r3, #16
 8001e10:	2b00      	cmp	r3, #0
 8001e12:	f000 80e9 	beq.w	8001fe8 <HAL_RCC_OscConfig+0x208>
    assert_param(IS_RCC_MSI(RCC_OscInitStruct->MSIState));
    assert_param(IS_RCC_MSICALIBRATION_VALUE(RCC_OscInitStruct->MSICalibrationValue));
    assert_param(IS_RCC_MSI_CLOCK_RANGE(RCC_OscInitStruct->MSIClockRange));

    /* Check if MSI is used as system clock or as PLL source when PLL is selected as system clock */
    if ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_MSI) ||
 8001e16:	69bb      	ldr	r3, [r7, #24]
 8001e18:	2b00      	cmp	r3, #0
 8001e1a:	d006      	beq.n	8001e2a <HAL_RCC_OscConfig+0x4a>
 8001e1c:	69bb      	ldr	r3, [r7, #24]
 8001e1e:	2b0c      	cmp	r3, #12
 8001e20:	f040 8083 	bne.w	8001f2a <HAL_RCC_OscConfig+0x14a>
        ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (pll_config == RCC_PLLSOURCE_MSI)))
 8001e24:	697b      	ldr	r3, [r7, #20]
 8001e26:	2b01      	cmp	r3, #1
 8001e28:	d17f      	bne.n	8001f2a <HAL_RCC_OscConfig+0x14a>
    {
      if ((READ_BIT(RCC->CR, RCC_CR_MSIRDY) != 0U) && (RCC_OscInitStruct->MSIState == RCC_MSI_OFF))
 8001e2a:	4b96      	ldr	r3, [pc, #600]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e2c:	681b      	ldr	r3, [r3, #0]
 8001e2e:	f003 0302 	and.w	r3, r3, #2
 8001e32:	2b00      	cmp	r3, #0
 8001e34:	d006      	beq.n	8001e44 <HAL_RCC_OscConfig+0x64>
 8001e36:	687b      	ldr	r3, [r7, #4]
 8001e38:	69db      	ldr	r3, [r3, #28]
 8001e3a:	2b00      	cmp	r3, #0
 8001e3c:	d102      	bne.n	8001e44 <HAL_RCC_OscConfig+0x64>
      {
        return HAL_ERROR;
 8001e3e:	2301      	movs	r3, #1
 8001e40:	f000 bca8 	b.w	8002794 <HAL_RCC_OscConfig+0x9b4>
      else
      {
        /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
           must be correctly programmed according to the frequency of the CPU clock
           (HCLK) and the supply voltage of the device. */
        if (RCC_OscInitStruct->MSIClockRange > __HAL_RCC_GET_MSI_RANGE())
 8001e44:	687b      	ldr	r3, [r7, #4]
 8001e46:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8001e48:	4b8e      	ldr	r3, [pc, #568]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e4a:	681b      	ldr	r3, [r3, #0]
 8001e4c:	f003 0308 	and.w	r3, r3, #8
 8001e50:	2b00      	cmp	r3, #0
 8001e52:	d004      	beq.n	8001e5e <HAL_RCC_OscConfig+0x7e>
 8001e54:	4b8b      	ldr	r3, [pc, #556]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e56:	681b      	ldr	r3, [r3, #0]
 8001e58:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001e5c:	e005      	b.n	8001e6a <HAL_RCC_OscConfig+0x8a>
 8001e5e:	4b89      	ldr	r3, [pc, #548]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e60:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8001e64:	091b      	lsrs	r3, r3, #4
 8001e66:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001e6a:	4293      	cmp	r3, r2
 8001e6c:	d224      	bcs.n	8001eb8 <HAL_RCC_OscConfig+0xd8>
        {
          /* First increase number of wait states update if necessary */
          if (RCC_SetFlashLatencyFromMSIRange(RCC_OscInitStruct->MSIClockRange) != HAL_OK)
 8001e6e:	687b      	ldr	r3, [r7, #4]
 8001e70:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001e72:	4618      	mov	r0, r3
 8001e74:	f000 fe94 	bl	8002ba0 <RCC_SetFlashLatencyFromMSIRange>
 8001e78:	4603      	mov	r3, r0
 8001e7a:	2b00      	cmp	r3, #0
 8001e7c:	d002      	beq.n	8001e84 <HAL_RCC_OscConfig+0xa4>
          {
            return HAL_ERROR;
 8001e7e:	2301      	movs	r3, #1
 8001e80:	f000 bc88 	b.w	8002794 <HAL_RCC_OscConfig+0x9b4>
          }

          /* Selects the Multiple Speed oscillator (MSI) clock range .*/
          __HAL_RCC_MSI_RANGE_CONFIG(RCC_OscInitStruct->MSIClockRange);
 8001e84:	4b7f      	ldr	r3, [pc, #508]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e86:	681b      	ldr	r3, [r3, #0]
 8001e88:	4a7e      	ldr	r2, [pc, #504]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e8a:	f043 0308 	orr.w	r3, r3, #8
 8001e8e:	6013      	str	r3, [r2, #0]
 8001e90:	4b7c      	ldr	r3, [pc, #496]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e92:	681b      	ldr	r3, [r3, #0]
 8001e94:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8001e98:	687b      	ldr	r3, [r7, #4]
 8001e9a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001e9c:	4979      	ldr	r1, [pc, #484]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001e9e:	4313      	orrs	r3, r2
 8001ea0:	600b      	str	r3, [r1, #0]
          /* Adjusts the Multiple Speed oscillator (MSI) calibration value.*/
          __HAL_RCC_MSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->MSICalibrationValue);
 8001ea2:	4b78      	ldr	r3, [pc, #480]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001ea4:	685b      	ldr	r3, [r3, #4]
 8001ea6:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
 8001eaa:	687b      	ldr	r3, [r7, #4]
 8001eac:	6a1b      	ldr	r3, [r3, #32]
 8001eae:	021b      	lsls	r3, r3, #8
 8001eb0:	4974      	ldr	r1, [pc, #464]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001eb2:	4313      	orrs	r3, r2
 8001eb4:	604b      	str	r3, [r1, #4]
 8001eb6:	e026      	b.n	8001f06 <HAL_RCC_OscConfig+0x126>
        }
        else
        {
          /* Else, keep current flash latency while decreasing applies */
          /* Selects the Multiple Speed oscillator (MSI) clock range .*/
          __HAL_RCC_MSI_RANGE_CONFIG(RCC_OscInitStruct->MSIClockRange);
 8001eb8:	4b72      	ldr	r3, [pc, #456]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001eba:	681b      	ldr	r3, [r3, #0]
 8001ebc:	4a71      	ldr	r2, [pc, #452]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001ebe:	f043 0308 	orr.w	r3, r3, #8
 8001ec2:	6013      	str	r3, [r2, #0]
 8001ec4:	4b6f      	ldr	r3, [pc, #444]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001ec6:	681b      	ldr	r3, [r3, #0]
 8001ec8:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8001ecc:	687b      	ldr	r3, [r7, #4]
 8001ece:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001ed0:	496c      	ldr	r1, [pc, #432]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001ed2:	4313      	orrs	r3, r2
 8001ed4:	600b      	str	r3, [r1, #0]
          /* Adjusts the Multiple Speed oscillator (MSI) calibration value.*/
          __HAL_RCC_MSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->MSICalibrationValue);
 8001ed6:	4b6b      	ldr	r3, [pc, #428]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001ed8:	685b      	ldr	r3, [r3, #4]
 8001eda:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
 8001ede:	687b      	ldr	r3, [r7, #4]
 8001ee0:	6a1b      	ldr	r3, [r3, #32]
 8001ee2:	021b      	lsls	r3, r3, #8
 8001ee4:	4967      	ldr	r1, [pc, #412]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001ee6:	4313      	orrs	r3, r2
 8001ee8:	604b      	str	r3, [r1, #4]

          /* Decrease number of wait states update if necessary */
          /* Only possible when MSI is the System clock source  */
          if (sysclk_source == RCC_SYSCLKSOURCE_STATUS_MSI)
 8001eea:	69bb      	ldr	r3, [r7, #24]
 8001eec:	2b00      	cmp	r3, #0
 8001eee:	d10a      	bne.n	8001f06 <HAL_RCC_OscConfig+0x126>
          {
            if (RCC_SetFlashLatencyFromMSIRange(RCC_OscInitStruct->MSIClockRange) != HAL_OK)
 8001ef0:	687b      	ldr	r3, [r7, #4]
 8001ef2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001ef4:	4618      	mov	r0, r3
 8001ef6:	f000 fe53 	bl	8002ba0 <RCC_SetFlashLatencyFromMSIRange>
 8001efa:	4603      	mov	r3, r0
 8001efc:	2b00      	cmp	r3, #0
 8001efe:	d002      	beq.n	8001f06 <HAL_RCC_OscConfig+0x126>
            {
              return HAL_ERROR;
 8001f00:	2301      	movs	r3, #1
 8001f02:	f000 bc47 	b.w	8002794 <HAL_RCC_OscConfig+0x9b4>
            }
          }
        }

        /* Update the SystemCoreClock global variable */
        SystemCoreClock = HAL_RCC_GetHCLKFreq();
 8001f06:	f000 fe0f 	bl	8002b28 <HAL_RCC_GetHCLKFreq>
 8001f0a:	4602      	mov	r2, r0
 8001f0c:	4b5e      	ldr	r3, [pc, #376]	; (8002088 <HAL_RCC_OscConfig+0x2a8>)
 8001f0e:	601a      	str	r2, [r3, #0]

        /* Configure the source of time base considering new system clocks settings*/
        status = HAL_InitTick(uwTickPrio);
 8001f10:	4b5e      	ldr	r3, [pc, #376]	; (800208c <HAL_RCC_OscConfig+0x2ac>)
 8001f12:	681b      	ldr	r3, [r3, #0]
 8001f14:	4618      	mov	r0, r3
 8001f16:	f7ff fb5d 	bl	80015d4 <HAL_InitTick>
 8001f1a:	4603      	mov	r3, r0
 8001f1c:	73fb      	strb	r3, [r7, #15]
        if (status != HAL_OK)
 8001f1e:	7bfb      	ldrb	r3, [r7, #15]
 8001f20:	2b00      	cmp	r3, #0
 8001f22:	d060      	beq.n	8001fe6 <HAL_RCC_OscConfig+0x206>
        {
          return status;
 8001f24:	7bfb      	ldrb	r3, [r7, #15]
 8001f26:	f000 bc35 	b.w	8002794 <HAL_RCC_OscConfig+0x9b4>
      }
    }
    else
    {
      /* Check the MSI State */
      if (RCC_OscInitStruct->MSIState != RCC_MSI_OFF)
 8001f2a:	687b      	ldr	r3, [r7, #4]
 8001f2c:	69db      	ldr	r3, [r3, #28]
 8001f2e:	2b00      	cmp	r3, #0
 8001f30:	d039      	beq.n	8001fa6 <HAL_RCC_OscConfig+0x1c6>
      {
        /* Enable the Internal High Speed oscillator (MSI). */
        __HAL_RCC_MSI_ENABLE();
 8001f32:	4b54      	ldr	r3, [pc, #336]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f34:	681b      	ldr	r3, [r3, #0]
 8001f36:	4a53      	ldr	r2, [pc, #332]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f38:	f043 0301 	orr.w	r3, r3, #1
 8001f3c:	6013      	str	r3, [r2, #0]

        /* Get timeout */
        tickstart = HAL_GetTick();
 8001f3e:	f7ff fb97 	bl	8001670 <HAL_GetTick>
 8001f42:	6138      	str	r0, [r7, #16]

        /* Wait till MSI is ready */
        while (READ_BIT(RCC->CR, RCC_CR_MSIRDY) == 0U)
 8001f44:	e00f      	b.n	8001f66 <HAL_RCC_OscConfig+0x186>
        {
          if ((HAL_GetTick() - tickstart) > MSI_TIMEOUT_VALUE)
 8001f46:	f7ff fb93 	bl	8001670 <HAL_GetTick>
 8001f4a:	4602      	mov	r2, r0
 8001f4c:	693b      	ldr	r3, [r7, #16]
 8001f4e:	1ad3      	subs	r3, r2, r3
 8001f50:	2b02      	cmp	r3, #2
 8001f52:	d908      	bls.n	8001f66 <HAL_RCC_OscConfig+0x186>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_MSIRDY) == 0U)
 8001f54:	4b4b      	ldr	r3, [pc, #300]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f56:	681b      	ldr	r3, [r3, #0]
 8001f58:	f003 0302 	and.w	r3, r3, #2
 8001f5c:	2b00      	cmp	r3, #0
 8001f5e:	d102      	bne.n	8001f66 <HAL_RCC_OscConfig+0x186>
            {
              return HAL_TIMEOUT;
 8001f60:	2303      	movs	r3, #3
 8001f62:	f000 bc17 	b.w	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_MSIRDY) == 0U)
 8001f66:	4b47      	ldr	r3, [pc, #284]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f68:	681b      	ldr	r3, [r3, #0]
 8001f6a:	f003 0302 	and.w	r3, r3, #2
 8001f6e:	2b00      	cmp	r3, #0
 8001f70:	d0e9      	beq.n	8001f46 <HAL_RCC_OscConfig+0x166>
            }
          }
        }
        /* Selects the Multiple Speed oscillator (MSI) clock range .*/
        __HAL_RCC_MSI_RANGE_CONFIG(RCC_OscInitStruct->MSIClockRange);
 8001f72:	4b44      	ldr	r3, [pc, #272]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f74:	681b      	ldr	r3, [r3, #0]
 8001f76:	4a43      	ldr	r2, [pc, #268]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f78:	f043 0308 	orr.w	r3, r3, #8
 8001f7c:	6013      	str	r3, [r2, #0]
 8001f7e:	4b41      	ldr	r3, [pc, #260]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f80:	681b      	ldr	r3, [r3, #0]
 8001f82:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8001f86:	687b      	ldr	r3, [r7, #4]
 8001f88:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001f8a:	493e      	ldr	r1, [pc, #248]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f8c:	4313      	orrs	r3, r2
 8001f8e:	600b      	str	r3, [r1, #0]
        /* Adjusts the Multiple Speed oscillator (MSI) calibration value.*/
        __HAL_RCC_MSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->MSICalibrationValue);
 8001f90:	4b3c      	ldr	r3, [pc, #240]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001f92:	685b      	ldr	r3, [r3, #4]
 8001f94:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
 8001f98:	687b      	ldr	r3, [r7, #4]
 8001f9a:	6a1b      	ldr	r3, [r3, #32]
 8001f9c:	021b      	lsls	r3, r3, #8
 8001f9e:	4939      	ldr	r1, [pc, #228]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001fa0:	4313      	orrs	r3, r2
 8001fa2:	604b      	str	r3, [r1, #4]
 8001fa4:	e020      	b.n	8001fe8 <HAL_RCC_OscConfig+0x208>

      }
      else
      {
        /* Disable the Internal High Speed oscillator (MSI). */
        __HAL_RCC_MSI_DISABLE();
 8001fa6:	4b37      	ldr	r3, [pc, #220]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001fa8:	681b      	ldr	r3, [r3, #0]
 8001faa:	4a36      	ldr	r2, [pc, #216]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001fac:	f023 0301 	bic.w	r3, r3, #1
 8001fb0:	6013      	str	r3, [r2, #0]

        /* Get timeout */
        tickstart = HAL_GetTick();
 8001fb2:	f7ff fb5d 	bl	8001670 <HAL_GetTick>
 8001fb6:	6138      	str	r0, [r7, #16]

        /* Wait till MSI is ready */
        while (READ_BIT(RCC->CR, RCC_CR_MSIRDY) != 0U)
 8001fb8:	e00e      	b.n	8001fd8 <HAL_RCC_OscConfig+0x1f8>
        {
          if ((HAL_GetTick() - tickstart) > MSI_TIMEOUT_VALUE)
 8001fba:	f7ff fb59 	bl	8001670 <HAL_GetTick>
 8001fbe:	4602      	mov	r2, r0
 8001fc0:	693b      	ldr	r3, [r7, #16]
 8001fc2:	1ad3      	subs	r3, r2, r3
 8001fc4:	2b02      	cmp	r3, #2
 8001fc6:	d907      	bls.n	8001fd8 <HAL_RCC_OscConfig+0x1f8>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_MSIRDY) != 0U)
 8001fc8:	4b2e      	ldr	r3, [pc, #184]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001fca:	681b      	ldr	r3, [r3, #0]
 8001fcc:	f003 0302 	and.w	r3, r3, #2
 8001fd0:	2b00      	cmp	r3, #0
 8001fd2:	d001      	beq.n	8001fd8 <HAL_RCC_OscConfig+0x1f8>
            {
              return HAL_TIMEOUT;
 8001fd4:	2303      	movs	r3, #3
 8001fd6:	e3dd      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_MSIRDY) != 0U)
 8001fd8:	4b2a      	ldr	r3, [pc, #168]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8001fda:	681b      	ldr	r3, [r3, #0]
 8001fdc:	f003 0302 	and.w	r3, r3, #2
 8001fe0:	2b00      	cmp	r3, #0
 8001fe2:	d1ea      	bne.n	8001fba <HAL_RCC_OscConfig+0x1da>
 8001fe4:	e000      	b.n	8001fe8 <HAL_RCC_OscConfig+0x208>
      if ((READ_BIT(RCC->CR, RCC_CR_MSIRDY) != 0U) && (RCC_OscInitStruct->MSIState == RCC_MSI_OFF))
 8001fe6:	bf00      	nop
        }
      }
    }
  }
  /*------------------------------- HSE Configuration ------------------------*/
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 8001fe8:	687b      	ldr	r3, [r7, #4]
 8001fea:	681b      	ldr	r3, [r3, #0]
 8001fec:	f003 0301 	and.w	r3, r3, #1
 8001ff0:	2b00      	cmp	r3, #0
 8001ff2:	d07e      	beq.n	80020f2 <HAL_RCC_OscConfig+0x312>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));

    /* When the HSE is used as system clock or clock source for PLL in these cases it is not allowed to be disabled */
    if ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_HSE) ||
 8001ff4:	69bb      	ldr	r3, [r7, #24]
 8001ff6:	2b08      	cmp	r3, #8
 8001ff8:	d005      	beq.n	8002006 <HAL_RCC_OscConfig+0x226>
 8001ffa:	69bb      	ldr	r3, [r7, #24]
 8001ffc:	2b0c      	cmp	r3, #12
 8001ffe:	d10e      	bne.n	800201e <HAL_RCC_OscConfig+0x23e>
        ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (pll_config == RCC_PLLSOURCE_HSE)))
 8002000:	697b      	ldr	r3, [r7, #20]
 8002002:	2b03      	cmp	r3, #3
 8002004:	d10b      	bne.n	800201e <HAL_RCC_OscConfig+0x23e>
    {
      if ((READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 8002006:	4b1f      	ldr	r3, [pc, #124]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8002008:	681b      	ldr	r3, [r3, #0]
 800200a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800200e:	2b00      	cmp	r3, #0
 8002010:	d06e      	beq.n	80020f0 <HAL_RCC_OscConfig+0x310>
 8002012:	687b      	ldr	r3, [r7, #4]
 8002014:	685b      	ldr	r3, [r3, #4]
 8002016:	2b00      	cmp	r3, #0
 8002018:	d16a      	bne.n	80020f0 <HAL_RCC_OscConfig+0x310>
      {
        return HAL_ERROR;
 800201a:	2301      	movs	r3, #1
 800201c:	e3ba      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      }
    }
    else
    {
      /* Set the new HSE configuration ---------------------------------------*/
      __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 800201e:	687b      	ldr	r3, [r7, #4]
 8002020:	685b      	ldr	r3, [r3, #4]
 8002022:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8002026:	d106      	bne.n	8002036 <HAL_RCC_OscConfig+0x256>
 8002028:	4b16      	ldr	r3, [pc, #88]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 800202a:	681b      	ldr	r3, [r3, #0]
 800202c:	4a15      	ldr	r2, [pc, #84]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 800202e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8002032:	6013      	str	r3, [r2, #0]
 8002034:	e01d      	b.n	8002072 <HAL_RCC_OscConfig+0x292>
 8002036:	687b      	ldr	r3, [r7, #4]
 8002038:	685b      	ldr	r3, [r3, #4]
 800203a:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 800203e:	d10c      	bne.n	800205a <HAL_RCC_OscConfig+0x27a>
 8002040:	4b10      	ldr	r3, [pc, #64]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8002042:	681b      	ldr	r3, [r3, #0]
 8002044:	4a0f      	ldr	r2, [pc, #60]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8002046:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 800204a:	6013      	str	r3, [r2, #0]
 800204c:	4b0d      	ldr	r3, [pc, #52]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 800204e:	681b      	ldr	r3, [r3, #0]
 8002050:	4a0c      	ldr	r2, [pc, #48]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8002052:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8002056:	6013      	str	r3, [r2, #0]
 8002058:	e00b      	b.n	8002072 <HAL_RCC_OscConfig+0x292>
 800205a:	4b0a      	ldr	r3, [pc, #40]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 800205c:	681b      	ldr	r3, [r3, #0]
 800205e:	4a09      	ldr	r2, [pc, #36]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8002060:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8002064:	6013      	str	r3, [r2, #0]
 8002066:	4b07      	ldr	r3, [pc, #28]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 8002068:	681b      	ldr	r3, [r3, #0]
 800206a:	4a06      	ldr	r2, [pc, #24]	; (8002084 <HAL_RCC_OscConfig+0x2a4>)
 800206c:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8002070:	6013      	str	r3, [r2, #0]

      /* Check the HSE State */
      if (RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
 8002072:	687b      	ldr	r3, [r7, #4]
 8002074:	685b      	ldr	r3, [r3, #4]
 8002076:	2b00      	cmp	r3, #0
 8002078:	d020      	beq.n	80020bc <HAL_RCC_OscConfig+0x2dc>
      {
        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 800207a:	f7ff faf9 	bl	8001670 <HAL_GetTick>
 800207e:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is ready */
        while (READ_BIT(RCC->CR, RCC_CR_HSERDY) == 0U)
 8002080:	e015      	b.n	80020ae <HAL_RCC_OscConfig+0x2ce>
 8002082:	bf00      	nop
 8002084:	40021000 	.word	0x40021000
 8002088:	20000000 	.word	0x20000000
 800208c:	20000004 	.word	0x20000004
        {
          if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 8002090:	f7ff faee 	bl	8001670 <HAL_GetTick>
 8002094:	4602      	mov	r2, r0
 8002096:	693b      	ldr	r3, [r7, #16]
 8002098:	1ad3      	subs	r3, r2, r3
 800209a:	2b64      	cmp	r3, #100	; 0x64
 800209c:	d907      	bls.n	80020ae <HAL_RCC_OscConfig+0x2ce>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_HSERDY) == 0U)
 800209e:	4b9f      	ldr	r3, [pc, #636]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80020a0:	681b      	ldr	r3, [r3, #0]
 80020a2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80020a6:	2b00      	cmp	r3, #0
 80020a8:	d101      	bne.n	80020ae <HAL_RCC_OscConfig+0x2ce>
            {
              return HAL_TIMEOUT;
 80020aa:	2303      	movs	r3, #3
 80020ac:	e372      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_HSERDY) == 0U)
 80020ae:	4b9b      	ldr	r3, [pc, #620]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80020b0:	681b      	ldr	r3, [r3, #0]
 80020b2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80020b6:	2b00      	cmp	r3, #0
 80020b8:	d0ea      	beq.n	8002090 <HAL_RCC_OscConfig+0x2b0>
 80020ba:	e01a      	b.n	80020f2 <HAL_RCC_OscConfig+0x312>
        }
      }
      else
      {
        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 80020bc:	f7ff fad8 	bl	8001670 <HAL_GetTick>
 80020c0:	6138      	str	r0, [r7, #16]

        /* Wait till HSE is disabled */
        while (READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U)
 80020c2:	e00e      	b.n	80020e2 <HAL_RCC_OscConfig+0x302>
        {
          if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
 80020c4:	f7ff fad4 	bl	8001670 <HAL_GetTick>
 80020c8:	4602      	mov	r2, r0
 80020ca:	693b      	ldr	r3, [r7, #16]
 80020cc:	1ad3      	subs	r3, r2, r3
 80020ce:	2b64      	cmp	r3, #100	; 0x64
 80020d0:	d907      	bls.n	80020e2 <HAL_RCC_OscConfig+0x302>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U)
 80020d2:	4b92      	ldr	r3, [pc, #584]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80020d4:	681b      	ldr	r3, [r3, #0]
 80020d6:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80020da:	2b00      	cmp	r3, #0
 80020dc:	d001      	beq.n	80020e2 <HAL_RCC_OscConfig+0x302>
            {
              return HAL_TIMEOUT;
 80020de:	2303      	movs	r3, #3
 80020e0:	e358      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U)
 80020e2:	4b8e      	ldr	r3, [pc, #568]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80020e4:	681b      	ldr	r3, [r3, #0]
 80020e6:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80020ea:	2b00      	cmp	r3, #0
 80020ec:	d1ea      	bne.n	80020c4 <HAL_RCC_OscConfig+0x2e4>
 80020ee:	e000      	b.n	80020f2 <HAL_RCC_OscConfig+0x312>
      if ((READ_BIT(RCC->CR, RCC_CR_HSERDY) != 0U) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
 80020f0:	bf00      	nop
        }
      }
    }
  }
  /*----------------------------- HSI Configuration --------------------------*/
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 80020f2:	687b      	ldr	r3, [r7, #4]
 80020f4:	681b      	ldr	r3, [r3, #0]
 80020f6:	f003 0302 	and.w	r3, r3, #2
 80020fa:	2b00      	cmp	r3, #0
 80020fc:	d06c      	beq.n	80021d8 <HAL_RCC_OscConfig+0x3f8>
    /* Check the parameters */
    assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
    assert_param(IS_RCC_HSI_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));

    /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock */
    if ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_HSI) ||
 80020fe:	69bb      	ldr	r3, [r7, #24]
 8002100:	2b04      	cmp	r3, #4
 8002102:	d005      	beq.n	8002110 <HAL_RCC_OscConfig+0x330>
 8002104:	69bb      	ldr	r3, [r7, #24]
 8002106:	2b0c      	cmp	r3, #12
 8002108:	d119      	bne.n	800213e <HAL_RCC_OscConfig+0x35e>
        ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (pll_config == RCC_PLLSOURCE_HSI)))
 800210a:	697b      	ldr	r3, [r7, #20]
 800210c:	2b02      	cmp	r3, #2
 800210e:	d116      	bne.n	800213e <HAL_RCC_OscConfig+0x35e>
    {
      /* When HSI is used as system clock it will not be disabled */
      if ((READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U) && (RCC_OscInitStruct->HSIState == RCC_HSI_OFF))
 8002110:	4b82      	ldr	r3, [pc, #520]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002112:	681b      	ldr	r3, [r3, #0]
 8002114:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002118:	2b00      	cmp	r3, #0
 800211a:	d005      	beq.n	8002128 <HAL_RCC_OscConfig+0x348>
 800211c:	687b      	ldr	r3, [r7, #4]
 800211e:	68db      	ldr	r3, [r3, #12]
 8002120:	2b00      	cmp	r3, #0
 8002122:	d101      	bne.n	8002128 <HAL_RCC_OscConfig+0x348>
      {
        return HAL_ERROR;
 8002124:	2301      	movs	r3, #1
 8002126:	e335      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      }
      /* Otherwise, just the calibration is allowed */
      else
      {
        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8002128:	4b7c      	ldr	r3, [pc, #496]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800212a:	685b      	ldr	r3, [r3, #4]
 800212c:	f023 42fe 	bic.w	r2, r3, #2130706432	; 0x7f000000
 8002130:	687b      	ldr	r3, [r7, #4]
 8002132:	691b      	ldr	r3, [r3, #16]
 8002134:	061b      	lsls	r3, r3, #24
 8002136:	4979      	ldr	r1, [pc, #484]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002138:	4313      	orrs	r3, r2
 800213a:	604b      	str	r3, [r1, #4]
      if ((READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U) && (RCC_OscInitStruct->HSIState == RCC_HSI_OFF))
 800213c:	e04c      	b.n	80021d8 <HAL_RCC_OscConfig+0x3f8>
      }
    }
    else
    {
      /* Check the HSI State */
      if (RCC_OscInitStruct->HSIState != RCC_HSI_OFF)
 800213e:	687b      	ldr	r3, [r7, #4]
 8002140:	68db      	ldr	r3, [r3, #12]
 8002142:	2b00      	cmp	r3, #0
 8002144:	d029      	beq.n	800219a <HAL_RCC_OscConfig+0x3ba>
      {
        /* Enable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_ENABLE();
 8002146:	4b75      	ldr	r3, [pc, #468]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002148:	681b      	ldr	r3, [r3, #0]
 800214a:	4a74      	ldr	r2, [pc, #464]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800214c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002150:	6013      	str	r3, [r2, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8002152:	f7ff fa8d 	bl	8001670 <HAL_GetTick>
 8002156:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is ready */
        while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
 8002158:	e00e      	b.n	8002178 <HAL_RCC_OscConfig+0x398>
        {
          if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 800215a:	f7ff fa89 	bl	8001670 <HAL_GetTick>
 800215e:	4602      	mov	r2, r0
 8002160:	693b      	ldr	r3, [r7, #16]
 8002162:	1ad3      	subs	r3, r2, r3
 8002164:	2b02      	cmp	r3, #2
 8002166:	d907      	bls.n	8002178 <HAL_RCC_OscConfig+0x398>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
 8002168:	4b6c      	ldr	r3, [pc, #432]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800216a:	681b      	ldr	r3, [r3, #0]
 800216c:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002170:	2b00      	cmp	r3, #0
 8002172:	d101      	bne.n	8002178 <HAL_RCC_OscConfig+0x398>
            {
              return HAL_TIMEOUT;
 8002174:	2303      	movs	r3, #3
 8002176:	e30d      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
 8002178:	4b68      	ldr	r3, [pc, #416]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800217a:	681b      	ldr	r3, [r3, #0]
 800217c:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002180:	2b00      	cmp	r3, #0
 8002182:	d0ea      	beq.n	800215a <HAL_RCC_OscConfig+0x37a>
            }
          }
        }

        /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
        __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 8002184:	4b65      	ldr	r3, [pc, #404]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002186:	685b      	ldr	r3, [r3, #4]
 8002188:	f023 42fe 	bic.w	r2, r3, #2130706432	; 0x7f000000
 800218c:	687b      	ldr	r3, [r7, #4]
 800218e:	691b      	ldr	r3, [r3, #16]
 8002190:	061b      	lsls	r3, r3, #24
 8002192:	4962      	ldr	r1, [pc, #392]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002194:	4313      	orrs	r3, r2
 8002196:	604b      	str	r3, [r1, #4]
 8002198:	e01e      	b.n	80021d8 <HAL_RCC_OscConfig+0x3f8>
      }
      else
      {
        /* Disable the Internal High Speed oscillator (HSI). */
        __HAL_RCC_HSI_DISABLE();
 800219a:	4b60      	ldr	r3, [pc, #384]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800219c:	681b      	ldr	r3, [r3, #0]
 800219e:	4a5f      	ldr	r2, [pc, #380]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80021a0:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 80021a4:	6013      	str	r3, [r2, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 80021a6:	f7ff fa63 	bl	8001670 <HAL_GetTick>
 80021aa:	6138      	str	r0, [r7, #16]

        /* Wait till HSI is disabled */
        while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U)
 80021ac:	e00e      	b.n	80021cc <HAL_RCC_OscConfig+0x3ec>
        {
          if ((HAL_GetTick() - tickstart) > HSI_TIMEOUT_VALUE)
 80021ae:	f7ff fa5f 	bl	8001670 <HAL_GetTick>
 80021b2:	4602      	mov	r2, r0
 80021b4:	693b      	ldr	r3, [r7, #16]
 80021b6:	1ad3      	subs	r3, r2, r3
 80021b8:	2b02      	cmp	r3, #2
 80021ba:	d907      	bls.n	80021cc <HAL_RCC_OscConfig+0x3ec>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U)
 80021bc:	4b57      	ldr	r3, [pc, #348]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80021be:	681b      	ldr	r3, [r3, #0]
 80021c0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80021c4:	2b00      	cmp	r3, #0
 80021c6:	d001      	beq.n	80021cc <HAL_RCC_OscConfig+0x3ec>
            {
              return HAL_TIMEOUT;
 80021c8:	2303      	movs	r3, #3
 80021ca:	e2e3      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_HSIRDY) != 0U)
 80021cc:	4b53      	ldr	r3, [pc, #332]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80021ce:	681b      	ldr	r3, [r3, #0]
 80021d0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80021d4:	2b00      	cmp	r3, #0
 80021d6:	d1ea      	bne.n	80021ae <HAL_RCC_OscConfig+0x3ce>
        }
      }
    }
  }
  /*------------------------------ LSI Configuration -------------------------*/
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 80021d8:	687b      	ldr	r3, [r7, #4]
 80021da:	681b      	ldr	r3, [r3, #0]
 80021dc:	f003 0308 	and.w	r3, r3, #8
 80021e0:	2b00      	cmp	r3, #0
 80021e2:	d05f      	beq.n	80022a4 <HAL_RCC_OscConfig+0x4c4>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));

    /* Check the LSI State */
    if (RCC_OscInitStruct->LSIState != RCC_LSI_OFF)
 80021e4:	687b      	ldr	r3, [r7, #4]
 80021e6:	695b      	ldr	r3, [r3, #20]
 80021e8:	2b00      	cmp	r3, #0
 80021ea:	d038      	beq.n	800225e <HAL_RCC_OscConfig+0x47e>
    {
      /* Apply prescaler value */
      if (RCC_OscInitStruct->LSIDiv == RCC_LSI_DIV1)
 80021ec:	687b      	ldr	r3, [r7, #4]
 80021ee:	699b      	ldr	r3, [r3, #24]
 80021f0:	2b00      	cmp	r3, #0
 80021f2:	d108      	bne.n	8002206 <HAL_RCC_OscConfig+0x426>
      {
        CLEAR_BIT(RCC->CSR, RCC_CSR_LSIPRE);
 80021f4:	4b49      	ldr	r3, [pc, #292]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80021f6:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80021fa:	4a48      	ldr	r2, [pc, #288]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80021fc:	f023 0310 	bic.w	r3, r3, #16
 8002200:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94
 8002204:	e007      	b.n	8002216 <HAL_RCC_OscConfig+0x436>
      }
      else
      {
        SET_BIT(RCC->CSR, RCC_CSR_LSIPRE);
 8002206:	4b45      	ldr	r3, [pc, #276]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002208:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800220c:	4a43      	ldr	r2, [pc, #268]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800220e:	f043 0310 	orr.w	r3, r3, #16
 8002212:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94
      }

      /* Enable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_ENABLE();
 8002216:	4b41      	ldr	r3, [pc, #260]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002218:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800221c:	4a3f      	ldr	r2, [pc, #252]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800221e:	f043 0301 	orr.w	r3, r3, #1
 8002222:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8002226:	f7ff fa23 	bl	8001670 <HAL_GetTick>
 800222a:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is ready */
      while (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) == 0U)
 800222c:	e00f      	b.n	800224e <HAL_RCC_OscConfig+0x46e>
      {
        if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 800222e:	f7ff fa1f 	bl	8001670 <HAL_GetTick>
 8002232:	4602      	mov	r2, r0
 8002234:	693b      	ldr	r3, [r7, #16]
 8002236:	1ad3      	subs	r3, r2, r3
 8002238:	2b07      	cmp	r3, #7
 800223a:	d908      	bls.n	800224e <HAL_RCC_OscConfig+0x46e>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) == 0U)
 800223c:	4b37      	ldr	r3, [pc, #220]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 800223e:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002242:	f003 0302 	and.w	r3, r3, #2
 8002246:	2b00      	cmp	r3, #0
 8002248:	d101      	bne.n	800224e <HAL_RCC_OscConfig+0x46e>
          {
            return HAL_TIMEOUT;
 800224a:	2303      	movs	r3, #3
 800224c:	e2a2      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      while (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) == 0U)
 800224e:	4b33      	ldr	r3, [pc, #204]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002250:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002254:	f003 0302 	and.w	r3, r3, #2
 8002258:	2b00      	cmp	r3, #0
 800225a:	d0e8      	beq.n	800222e <HAL_RCC_OscConfig+0x44e>
 800225c:	e022      	b.n	80022a4 <HAL_RCC_OscConfig+0x4c4>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (LSI). */
      __HAL_RCC_LSI_DISABLE();
 800225e:	4b2f      	ldr	r3, [pc, #188]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002260:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002264:	4a2d      	ldr	r2, [pc, #180]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002266:	f023 0301 	bic.w	r3, r3, #1
 800226a:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 800226e:	f7ff f9ff 	bl	8001670 <HAL_GetTick>
 8002272:	6138      	str	r0, [r7, #16]

      /* Wait till LSI is disabled */
      while (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) != 0U)
 8002274:	e00f      	b.n	8002296 <HAL_RCC_OscConfig+0x4b6>
      {
        if ((HAL_GetTick() - tickstart) > LSI_TIMEOUT_VALUE)
 8002276:	f7ff f9fb 	bl	8001670 <HAL_GetTick>
 800227a:	4602      	mov	r2, r0
 800227c:	693b      	ldr	r3, [r7, #16]
 800227e:	1ad3      	subs	r3, r2, r3
 8002280:	2b07      	cmp	r3, #7
 8002282:	d908      	bls.n	8002296 <HAL_RCC_OscConfig+0x4b6>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) != 0U)
 8002284:	4b25      	ldr	r3, [pc, #148]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002286:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800228a:	f003 0302 	and.w	r3, r3, #2
 800228e:	2b00      	cmp	r3, #0
 8002290:	d001      	beq.n	8002296 <HAL_RCC_OscConfig+0x4b6>
          {
            return HAL_TIMEOUT;
 8002292:	2303      	movs	r3, #3
 8002294:	e27e      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      while (READ_BIT(RCC->CSR, RCC_CSR_LSIRDY) != 0U)
 8002296:	4b21      	ldr	r3, [pc, #132]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 8002298:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800229c:	f003 0302 	and.w	r3, r3, #2
 80022a0:	2b00      	cmp	r3, #0
 80022a2:	d1e8      	bne.n	8002276 <HAL_RCC_OscConfig+0x496>
        }
      }
    }
  }
  /*------------------------------ LSE Configuration -------------------------*/
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 80022a4:	687b      	ldr	r3, [r7, #4]
 80022a6:	681b      	ldr	r3, [r3, #0]
 80022a8:	f003 0304 	and.w	r3, r3, #4
 80022ac:	2b00      	cmp	r3, #0
 80022ae:	f000 8131 	beq.w	8002514 <HAL_RCC_OscConfig+0x734>
  {
    FlagStatus       pwrclkchanged = RESET;
 80022b2:	2300      	movs	r3, #0
 80022b4:	77fb      	strb	r3, [r7, #31]
    /* Check the parameters */
    assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));

    /* Update LSE configuration in Backup Domain control register    */
    /* Requires to enable write access to Backup Domain of necessary */
    if (HAL_IS_BIT_CLR(RCC->APB1ENR1, RCC_APB1ENR1_PWREN))
 80022b6:	4b19      	ldr	r3, [pc, #100]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80022b8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80022ba:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80022be:	2b00      	cmp	r3, #0
 80022c0:	d10d      	bne.n	80022de <HAL_RCC_OscConfig+0x4fe>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 80022c2:	4b16      	ldr	r3, [pc, #88]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80022c4:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80022c6:	4a15      	ldr	r2, [pc, #84]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80022c8:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80022cc:	6593      	str	r3, [r2, #88]	; 0x58
 80022ce:	4b13      	ldr	r3, [pc, #76]	; (800231c <HAL_RCC_OscConfig+0x53c>)
 80022d0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80022d2:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80022d6:	60bb      	str	r3, [r7, #8]
 80022d8:	68bb      	ldr	r3, [r7, #8]
      pwrclkchanged = SET;
 80022da:	2301      	movs	r3, #1
 80022dc:	77fb      	strb	r3, [r7, #31]
    }

    if (HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 80022de:	4b10      	ldr	r3, [pc, #64]	; (8002320 <HAL_RCC_OscConfig+0x540>)
 80022e0:	681b      	ldr	r3, [r3, #0]
 80022e2:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80022e6:	2b00      	cmp	r3, #0
 80022e8:	d122      	bne.n	8002330 <HAL_RCC_OscConfig+0x550>
    {
      /* Enable write access to Backup domain */
      SET_BIT(PWR->CR1, PWR_CR1_DBP);
 80022ea:	4b0d      	ldr	r3, [pc, #52]	; (8002320 <HAL_RCC_OscConfig+0x540>)
 80022ec:	681b      	ldr	r3, [r3, #0]
 80022ee:	4a0c      	ldr	r2, [pc, #48]	; (8002320 <HAL_RCC_OscConfig+0x540>)
 80022f0:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80022f4:	6013      	str	r3, [r2, #0]

      /* Wait for Backup domain Write protection disable */
      tickstart = HAL_GetTick();
 80022f6:	f7ff f9bb 	bl	8001670 <HAL_GetTick>
 80022fa:	6138      	str	r0, [r7, #16]

      while (HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 80022fc:	e012      	b.n	8002324 <HAL_RCC_OscConfig+0x544>
      {
        if ((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 80022fe:	f7ff f9b7 	bl	8001670 <HAL_GetTick>
 8002302:	4602      	mov	r2, r0
 8002304:	693b      	ldr	r3, [r7, #16]
 8002306:	1ad3      	subs	r3, r2, r3
 8002308:	2b02      	cmp	r3, #2
 800230a:	d90b      	bls.n	8002324 <HAL_RCC_OscConfig+0x544>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 800230c:	4b04      	ldr	r3, [pc, #16]	; (8002320 <HAL_RCC_OscConfig+0x540>)
 800230e:	681b      	ldr	r3, [r3, #0]
 8002310:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002314:	2b00      	cmp	r3, #0
 8002316:	d105      	bne.n	8002324 <HAL_RCC_OscConfig+0x544>
          {
            return HAL_TIMEOUT;
 8002318:	2303      	movs	r3, #3
 800231a:	e23b      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
 800231c:	40021000 	.word	0x40021000
 8002320:	40007000 	.word	0x40007000
      while (HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 8002324:	4bb8      	ldr	r3, [pc, #736]	; (8002608 <HAL_RCC_OscConfig+0x828>)
 8002326:	681b      	ldr	r3, [r3, #0]
 8002328:	f403 7380 	and.w	r3, r3, #256	; 0x100
 800232c:	2b00      	cmp	r3, #0
 800232e:	d0e6      	beq.n	80022fe <HAL_RCC_OscConfig+0x51e>
        }
      }
    }

    /* Set the new LSE configuration -----------------------------------------*/
    if ((RCC_OscInitStruct->LSEState & RCC_BDCR_LSEON) != 0U)
 8002330:	687b      	ldr	r3, [r7, #4]
 8002332:	689b      	ldr	r3, [r3, #8]
 8002334:	f003 0301 	and.w	r3, r3, #1
 8002338:	2b00      	cmp	r3, #0
 800233a:	d01f      	beq.n	800237c <HAL_RCC_OscConfig+0x59c>
    {
      if ((RCC_OscInitStruct->LSEState & RCC_BDCR_LSEBYP) != 0U)
 800233c:	687b      	ldr	r3, [r7, #4]
 800233e:	689b      	ldr	r3, [r3, #8]
 8002340:	f003 0304 	and.w	r3, r3, #4
 8002344:	2b00      	cmp	r3, #0
 8002346:	d010      	beq.n	800236a <HAL_RCC_OscConfig+0x58a>
      {
        /* LSE oscillator bypass enable */
        SET_BIT(RCC->BDCR, RCC_BDCR_LSEBYP);
 8002348:	4bb0      	ldr	r3, [pc, #704]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800234a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800234e:	4aaf      	ldr	r2, [pc, #700]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002350:	f043 0304 	orr.w	r3, r3, #4
 8002354:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
        SET_BIT(RCC->BDCR, RCC_BDCR_LSEON);
 8002358:	4bac      	ldr	r3, [pc, #688]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800235a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800235e:	4aab      	ldr	r2, [pc, #684]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002360:	f043 0301 	orr.w	r3, r3, #1
 8002364:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 8002368:	e018      	b.n	800239c <HAL_RCC_OscConfig+0x5bc>
      }
      else
      {
        /* LSE oscillator enable */
        SET_BIT(RCC->BDCR, RCC_BDCR_LSEON);
 800236a:	4ba8      	ldr	r3, [pc, #672]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800236c:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002370:	4aa6      	ldr	r2, [pc, #664]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002372:	f043 0301 	orr.w	r3, r3, #1
 8002376:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 800237a:	e00f      	b.n	800239c <HAL_RCC_OscConfig+0x5bc>
      }
    }
    else
    {
      CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEON);
 800237c:	4ba3      	ldr	r3, [pc, #652]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800237e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002382:	4aa2      	ldr	r2, [pc, #648]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002384:	f023 0301 	bic.w	r3, r3, #1
 8002388:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
      CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSEBYP);
 800238c:	4b9f      	ldr	r3, [pc, #636]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800238e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002392:	4a9e      	ldr	r2, [pc, #632]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002394:	f023 0304 	bic.w	r3, r3, #4
 8002398:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
    }

    /* Check the LSE State */
    if (RCC_OscInitStruct->LSEState != RCC_LSE_OFF)
 800239c:	687b      	ldr	r3, [r7, #4]
 800239e:	689b      	ldr	r3, [r3, #8]
 80023a0:	2b00      	cmp	r3, #0
 80023a2:	d068      	beq.n	8002476 <HAL_RCC_OscConfig+0x696>
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 80023a4:	f7ff f964 	bl	8001670 <HAL_GetTick>
 80023a8:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is ready */
      while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 80023aa:	e011      	b.n	80023d0 <HAL_RCC_OscConfig+0x5f0>
      {
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 80023ac:	f7ff f960 	bl	8001670 <HAL_GetTick>
 80023b0:	4602      	mov	r2, r0
 80023b2:	693b      	ldr	r3, [r7, #16]
 80023b4:	1ad3      	subs	r3, r2, r3
 80023b6:	f241 3288 	movw	r2, #5000	; 0x1388
 80023ba:	4293      	cmp	r3, r2
 80023bc:	d908      	bls.n	80023d0 <HAL_RCC_OscConfig+0x5f0>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 80023be:	4b93      	ldr	r3, [pc, #588]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80023c0:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80023c4:	f003 0302 	and.w	r3, r3, #2
 80023c8:	2b00      	cmp	r3, #0
 80023ca:	d101      	bne.n	80023d0 <HAL_RCC_OscConfig+0x5f0>
          {
            return HAL_TIMEOUT;
 80023cc:	2303      	movs	r3, #3
 80023ce:	e1e1      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 80023d0:	4b8e      	ldr	r3, [pc, #568]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80023d2:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80023d6:	f003 0302 	and.w	r3, r3, #2
 80023da:	2b00      	cmp	r3, #0
 80023dc:	d0e6      	beq.n	80023ac <HAL_RCC_OscConfig+0x5cc>
          }
        }
      }

      /* Enable LSESYS additionally if requested */
      if ((RCC_OscInitStruct->LSEState & RCC_BDCR_LSESYSEN) != 0U)
 80023de:	687b      	ldr	r3, [r7, #4]
 80023e0:	689b      	ldr	r3, [r3, #8]
 80023e2:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80023e6:	2b00      	cmp	r3, #0
 80023e8:	d022      	beq.n	8002430 <HAL_RCC_OscConfig+0x650>
      {
        SET_BIT(RCC->BDCR, RCC_BDCR_LSESYSEN);
 80023ea:	4b88      	ldr	r3, [pc, #544]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80023ec:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80023f0:	4a86      	ldr	r2, [pc, #536]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80023f2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80023f6:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90

        /* Wait till LSESYS is ready */
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) == 0U)
 80023fa:	e011      	b.n	8002420 <HAL_RCC_OscConfig+0x640>
        {
          if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 80023fc:	f7ff f938 	bl	8001670 <HAL_GetTick>
 8002400:	4602      	mov	r2, r0
 8002402:	693b      	ldr	r3, [r7, #16]
 8002404:	1ad3      	subs	r3, r2, r3
 8002406:	f241 3288 	movw	r2, #5000	; 0x1388
 800240a:	4293      	cmp	r3, r2
 800240c:	d908      	bls.n	8002420 <HAL_RCC_OscConfig+0x640>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) == 0U)
 800240e:	4b7f      	ldr	r3, [pc, #508]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002410:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002414:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 8002418:	2b00      	cmp	r3, #0
 800241a:	d101      	bne.n	8002420 <HAL_RCC_OscConfig+0x640>
            {
              return HAL_TIMEOUT;
 800241c:	2303      	movs	r3, #3
 800241e:	e1b9      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) == 0U)
 8002420:	4b7a      	ldr	r3, [pc, #488]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002422:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002426:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800242a:	2b00      	cmp	r3, #0
 800242c:	d0e6      	beq.n	80023fc <HAL_RCC_OscConfig+0x61c>
 800242e:	e068      	b.n	8002502 <HAL_RCC_OscConfig+0x722>
        }
      }
      else
      {
        /* Make sure LSESYSEN/LSESYSRDY are reset */
        CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSESYSEN);
 8002430:	4b76      	ldr	r3, [pc, #472]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002432:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002436:	4a75      	ldr	r2, [pc, #468]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002438:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800243c:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90

        /* Wait till LSESYSRDY is cleared */
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) != 0U)
 8002440:	e011      	b.n	8002466 <HAL_RCC_OscConfig+0x686>
        {
          if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8002442:	f7ff f915 	bl	8001670 <HAL_GetTick>
 8002446:	4602      	mov	r2, r0
 8002448:	693b      	ldr	r3, [r7, #16]
 800244a:	1ad3      	subs	r3, r2, r3
 800244c:	f241 3288 	movw	r2, #5000	; 0x1388
 8002450:	4293      	cmp	r3, r2
 8002452:	d908      	bls.n	8002466 <HAL_RCC_OscConfig+0x686>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) != 0U)
 8002454:	4b6d      	ldr	r3, [pc, #436]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002456:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800245a:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800245e:	2b00      	cmp	r3, #0
 8002460:	d001      	beq.n	8002466 <HAL_RCC_OscConfig+0x686>
            {
              return HAL_TIMEOUT;
 8002462:	2303      	movs	r3, #3
 8002464:	e196      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) != 0U)
 8002466:	4b69      	ldr	r3, [pc, #420]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002468:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800246c:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 8002470:	2b00      	cmp	r3, #0
 8002472:	d1e6      	bne.n	8002442 <HAL_RCC_OscConfig+0x662>
 8002474:	e045      	b.n	8002502 <HAL_RCC_OscConfig+0x722>
      }
    }
    else
    {
      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8002476:	f7ff f8fb 	bl	8001670 <HAL_GetTick>
 800247a:	6138      	str	r0, [r7, #16]

      /* Wait till LSE is disabled */
      while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) != 0U)
 800247c:	e011      	b.n	80024a2 <HAL_RCC_OscConfig+0x6c2>
      {
        if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 800247e:	f7ff f8f7 	bl	8001670 <HAL_GetTick>
 8002482:	4602      	mov	r2, r0
 8002484:	693b      	ldr	r3, [r7, #16]
 8002486:	1ad3      	subs	r3, r2, r3
 8002488:	f241 3288 	movw	r2, #5000	; 0x1388
 800248c:	4293      	cmp	r3, r2
 800248e:	d908      	bls.n	80024a2 <HAL_RCC_OscConfig+0x6c2>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) != 0U)
 8002490:	4b5e      	ldr	r3, [pc, #376]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002492:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002496:	f003 0302 	and.w	r3, r3, #2
 800249a:	2b00      	cmp	r3, #0
 800249c:	d001      	beq.n	80024a2 <HAL_RCC_OscConfig+0x6c2>
          {
            return HAL_TIMEOUT;
 800249e:	2303      	movs	r3, #3
 80024a0:	e178      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) != 0U)
 80024a2:	4b5a      	ldr	r3, [pc, #360]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80024a4:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80024a8:	f003 0302 	and.w	r3, r3, #2
 80024ac:	2b00      	cmp	r3, #0
 80024ae:	d1e6      	bne.n	800247e <HAL_RCC_OscConfig+0x69e>
          }
        }
      }

      if (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSEN) != 0U)
 80024b0:	4b56      	ldr	r3, [pc, #344]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80024b2:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80024b6:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80024ba:	2b00      	cmp	r3, #0
 80024bc:	d021      	beq.n	8002502 <HAL_RCC_OscConfig+0x722>
      {
        /* Reset LSESYSEN once LSE is disabled */
        CLEAR_BIT(RCC->BDCR, RCC_BDCR_LSESYSEN);
 80024be:	4b53      	ldr	r3, [pc, #332]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80024c0:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80024c4:	4a51      	ldr	r2, [pc, #324]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80024c6:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80024ca:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90

        /* Wait till LSESYSRDY is cleared */
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) != 0U)
 80024ce:	e011      	b.n	80024f4 <HAL_RCC_OscConfig+0x714>
        {
          if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 80024d0:	f7ff f8ce 	bl	8001670 <HAL_GetTick>
 80024d4:	4602      	mov	r2, r0
 80024d6:	693b      	ldr	r3, [r7, #16]
 80024d8:	1ad3      	subs	r3, r2, r3
 80024da:	f241 3288 	movw	r2, #5000	; 0x1388
 80024de:	4293      	cmp	r3, r2
 80024e0:	d908      	bls.n	80024f4 <HAL_RCC_OscConfig+0x714>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) != 0U)
 80024e2:	4b4a      	ldr	r3, [pc, #296]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80024e4:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80024e8:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80024ec:	2b00      	cmp	r3, #0
 80024ee:	d001      	beq.n	80024f4 <HAL_RCC_OscConfig+0x714>
            {
              return HAL_TIMEOUT;
 80024f0:	2303      	movs	r3, #3
 80024f2:	e14f      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSESYSRDY) != 0U)
 80024f4:	4b45      	ldr	r3, [pc, #276]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80024f6:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80024fa:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80024fe:	2b00      	cmp	r3, #0
 8002500:	d1e6      	bne.n	80024d0 <HAL_RCC_OscConfig+0x6f0>
        }
      }
    }

    /* Restore clock configuration if changed */
    if (pwrclkchanged == SET)
 8002502:	7ffb      	ldrb	r3, [r7, #31]
 8002504:	2b01      	cmp	r3, #1
 8002506:	d105      	bne.n	8002514 <HAL_RCC_OscConfig+0x734>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 8002508:	4b40      	ldr	r3, [pc, #256]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800250a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800250c:	4a3f      	ldr	r2, [pc, #252]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800250e:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8002512:	6593      	str	r3, [r2, #88]	; 0x58
    }
  }
  /*------------------------------ HSI48 Configuration -----------------------*/
  if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI48) == RCC_OSCILLATORTYPE_HSI48)
 8002514:	687b      	ldr	r3, [r7, #4]
 8002516:	681b      	ldr	r3, [r3, #0]
 8002518:	f003 0320 	and.w	r3, r3, #32
 800251c:	2b00      	cmp	r3, #0
 800251e:	d04a      	beq.n	80025b6 <HAL_RCC_OscConfig+0x7d6>
  {
    /* Check the parameters */
    assert_param(IS_RCC_HSI48(RCC_OscInitStruct->HSI48State));

    /* Check the LSI State */
    if (RCC_OscInitStruct->HSI48State != RCC_HSI48_OFF)
 8002520:	687b      	ldr	r3, [r7, #4]
 8002522:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8002524:	2b00      	cmp	r3, #0
 8002526:	d023      	beq.n	8002570 <HAL_RCC_OscConfig+0x790>
    {
      /* Enable the Internal Low Speed oscillator (HSI48). */
      __HAL_RCC_HSI48_ENABLE();
 8002528:	4b38      	ldr	r3, [pc, #224]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 800252a:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 800252e:	4a37      	ldr	r2, [pc, #220]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002530:	f043 0301 	orr.w	r3, r3, #1
 8002534:	f8c2 3098 	str.w	r3, [r2, #152]	; 0x98

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8002538:	f7ff f89a 	bl	8001670 <HAL_GetTick>
 800253c:	6138      	str	r0, [r7, #16]

      /* Wait till HSI48 is ready */
      while (READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) == 0U)
 800253e:	e00f      	b.n	8002560 <HAL_RCC_OscConfig+0x780>
      {
        if ((HAL_GetTick() - tickstart) > HSI48_TIMEOUT_VALUE)
 8002540:	f7ff f896 	bl	8001670 <HAL_GetTick>
 8002544:	4602      	mov	r2, r0
 8002546:	693b      	ldr	r3, [r7, #16]
 8002548:	1ad3      	subs	r3, r2, r3
 800254a:	2b02      	cmp	r3, #2
 800254c:	d908      	bls.n	8002560 <HAL_RCC_OscConfig+0x780>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) == 0U)
 800254e:	4b2f      	ldr	r3, [pc, #188]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002550:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 8002554:	f003 0302 	and.w	r3, r3, #2
 8002558:	2b00      	cmp	r3, #0
 800255a:	d101      	bne.n	8002560 <HAL_RCC_OscConfig+0x780>
          {
            return HAL_TIMEOUT;
 800255c:	2303      	movs	r3, #3
 800255e:	e119      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      while (READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) == 0U)
 8002560:	4b2a      	ldr	r3, [pc, #168]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002562:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 8002566:	f003 0302 	and.w	r3, r3, #2
 800256a:	2b00      	cmp	r3, #0
 800256c:	d0e8      	beq.n	8002540 <HAL_RCC_OscConfig+0x760>
 800256e:	e022      	b.n	80025b6 <HAL_RCC_OscConfig+0x7d6>
      }
    }
    else
    {
      /* Disable the Internal Low Speed oscillator (HSI48). */
      __HAL_RCC_HSI48_DISABLE();
 8002570:	4b26      	ldr	r3, [pc, #152]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002572:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 8002576:	4a25      	ldr	r2, [pc, #148]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002578:	f023 0301 	bic.w	r3, r3, #1
 800257c:	f8c2 3098 	str.w	r3, [r2, #152]	; 0x98

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 8002580:	f7ff f876 	bl	8001670 <HAL_GetTick>
 8002584:	6138      	str	r0, [r7, #16]

      /* Wait till HSI48 is disabled */
      while (READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) != 0U)
 8002586:	e00f      	b.n	80025a8 <HAL_RCC_OscConfig+0x7c8>
      {
        if ((HAL_GetTick() - tickstart) > HSI48_TIMEOUT_VALUE)
 8002588:	f7ff f872 	bl	8001670 <HAL_GetTick>
 800258c:	4602      	mov	r2, r0
 800258e:	693b      	ldr	r3, [r7, #16]
 8002590:	1ad3      	subs	r3, r2, r3
 8002592:	2b02      	cmp	r3, #2
 8002594:	d908      	bls.n	80025a8 <HAL_RCC_OscConfig+0x7c8>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) != 0U)
 8002596:	4b1d      	ldr	r3, [pc, #116]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 8002598:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 800259c:	f003 0302 	and.w	r3, r3, #2
 80025a0:	2b00      	cmp	r3, #0
 80025a2:	d001      	beq.n	80025a8 <HAL_RCC_OscConfig+0x7c8>
          {
            return HAL_TIMEOUT;
 80025a4:	2303      	movs	r3, #3
 80025a6:	e0f5      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      while (READ_BIT(RCC->CRRCR, RCC_CRRCR_HSI48RDY) != 0U)
 80025a8:	4b18      	ldr	r3, [pc, #96]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80025aa:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 80025ae:	f003 0302 	and.w	r3, r3, #2
 80025b2:	2b00      	cmp	r3, #0
 80025b4:	d1e8      	bne.n	8002588 <HAL_RCC_OscConfig+0x7a8>
  }
  /*-------------------------------- PLL Configuration -----------------------*/
  /* Check the parameters */
  assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));

  if (RCC_OscInitStruct->PLL.PLLState != RCC_PLL_NONE)
 80025b6:	687b      	ldr	r3, [r7, #4]
 80025b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80025ba:	2b00      	cmp	r3, #0
 80025bc:	f000 80e9 	beq.w	8002792 <HAL_RCC_OscConfig+0x9b2>
  {
    /* Check if the PLL is used as system clock or not */
    if (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 80025c0:	4b12      	ldr	r3, [pc, #72]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80025c2:	689b      	ldr	r3, [r3, #8]
 80025c4:	f003 030c 	and.w	r3, r3, #12
 80025c8:	2b0c      	cmp	r3, #12
 80025ca:	f000 80a3 	beq.w	8002714 <HAL_RCC_OscConfig+0x934>
    {
      if (RCC_OscInitStruct->PLL.PLLState == RCC_PLL_ON)
 80025ce:	687b      	ldr	r3, [r7, #4]
 80025d0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80025d2:	2b02      	cmp	r3, #2
 80025d4:	d16a      	bne.n	80026ac <HAL_RCC_OscConfig+0x8cc>
        assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
        assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));
        assert_param(IS_RCC_PLLR_VALUE(RCC_OscInitStruct->PLL.PLLR));

        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 80025d6:	4b0d      	ldr	r3, [pc, #52]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80025d8:	681b      	ldr	r3, [r3, #0]
 80025da:	4a0c      	ldr	r2, [pc, #48]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80025dc:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 80025e0:	6013      	str	r3, [r2, #0]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 80025e2:	f7ff f845 	bl	8001670 <HAL_GetTick>
 80025e6:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 80025e8:	e012      	b.n	8002610 <HAL_RCC_OscConfig+0x830>
        {
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 80025ea:	f7ff f841 	bl	8001670 <HAL_GetTick>
 80025ee:	4602      	mov	r2, r0
 80025f0:	693b      	ldr	r3, [r7, #16]
 80025f2:	1ad3      	subs	r3, r2, r3
 80025f4:	2b02      	cmp	r3, #2
 80025f6:	d90b      	bls.n	8002610 <HAL_RCC_OscConfig+0x830>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 80025f8:	4b04      	ldr	r3, [pc, #16]	; (800260c <HAL_RCC_OscConfig+0x82c>)
 80025fa:	681b      	ldr	r3, [r3, #0]
 80025fc:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8002600:	2b00      	cmp	r3, #0
 8002602:	d005      	beq.n	8002610 <HAL_RCC_OscConfig+0x830>
            {
              return HAL_TIMEOUT;
 8002604:	2303      	movs	r3, #3
 8002606:	e0c5      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
 8002608:	40007000 	.word	0x40007000
 800260c:	40021000 	.word	0x40021000
        while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 8002610:	4b62      	ldr	r3, [pc, #392]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002612:	681b      	ldr	r3, [r3, #0]
 8002614:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8002618:	2b00      	cmp	r3, #0
 800261a:	d1e6      	bne.n	80025ea <HAL_RCC_OscConfig+0x80a>
            }
          }
        }

        /* Configure the main PLL clock source, multiplication and division factors. */
        __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 800261c:	4b5f      	ldr	r3, [pc, #380]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 800261e:	68da      	ldr	r2, [r3, #12]
 8002620:	4b5f      	ldr	r3, [pc, #380]	; (80027a0 <HAL_RCC_OscConfig+0x9c0>)
 8002622:	4013      	ands	r3, r2
 8002624:	687a      	ldr	r2, [r7, #4]
 8002626:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8002628:	687a      	ldr	r2, [r7, #4]
 800262a:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800262c:	3a01      	subs	r2, #1
 800262e:	0112      	lsls	r2, r2, #4
 8002630:	4311      	orrs	r1, r2
 8002632:	687a      	ldr	r2, [r7, #4]
 8002634:	6b92      	ldr	r2, [r2, #56]	; 0x38
 8002636:	0212      	lsls	r2, r2, #8
 8002638:	4311      	orrs	r1, r2
 800263a:	687a      	ldr	r2, [r7, #4]
 800263c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800263e:	0852      	lsrs	r2, r2, #1
 8002640:	3a01      	subs	r2, #1
 8002642:	0552      	lsls	r2, r2, #21
 8002644:	4311      	orrs	r1, r2
 8002646:	687a      	ldr	r2, [r7, #4]
 8002648:	6c52      	ldr	r2, [r2, #68]	; 0x44
 800264a:	0852      	lsrs	r2, r2, #1
 800264c:	3a01      	subs	r2, #1
 800264e:	0652      	lsls	r2, r2, #25
 8002650:	4311      	orrs	r1, r2
 8002652:	687a      	ldr	r2, [r7, #4]
 8002654:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
 8002656:	06d2      	lsls	r2, r2, #27
 8002658:	430a      	orrs	r2, r1
 800265a:	4950      	ldr	r1, [pc, #320]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 800265c:	4313      	orrs	r3, r2
 800265e:	60cb      	str	r3, [r1, #12]
                             RCC_OscInitStruct->PLL.PLLP,
                             RCC_OscInitStruct->PLL.PLLQ,
                             RCC_OscInitStruct->PLL.PLLR);

        /* Enable the main PLL. */
        __HAL_RCC_PLL_ENABLE();
 8002660:	4b4e      	ldr	r3, [pc, #312]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002662:	681b      	ldr	r3, [r3, #0]
 8002664:	4a4d      	ldr	r2, [pc, #308]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002666:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 800266a:	6013      	str	r3, [r2, #0]

        /* Enable PLL System Clock output. */
        __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_SYSCLK);
 800266c:	4b4b      	ldr	r3, [pc, #300]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 800266e:	68db      	ldr	r3, [r3, #12]
 8002670:	4a4a      	ldr	r2, [pc, #296]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002672:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8002676:	60d3      	str	r3, [r2, #12]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8002678:	f7fe fffa 	bl	8001670 <HAL_GetTick>
 800267c:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is ready */
        while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == 0U)
 800267e:	e00e      	b.n	800269e <HAL_RCC_OscConfig+0x8be>
        {
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 8002680:	f7fe fff6 	bl	8001670 <HAL_GetTick>
 8002684:	4602      	mov	r2, r0
 8002686:	693b      	ldr	r3, [r7, #16]
 8002688:	1ad3      	subs	r3, r2, r3
 800268a:	2b02      	cmp	r3, #2
 800268c:	d907      	bls.n	800269e <HAL_RCC_OscConfig+0x8be>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == 0U)
 800268e:	4b43      	ldr	r3, [pc, #268]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002690:	681b      	ldr	r3, [r3, #0]
 8002692:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8002696:	2b00      	cmp	r3, #0
 8002698:	d101      	bne.n	800269e <HAL_RCC_OscConfig+0x8be>
            {
              return HAL_TIMEOUT;
 800269a:	2303      	movs	r3, #3
 800269c:	e07a      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == 0U)
 800269e:	4b3f      	ldr	r3, [pc, #252]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026a0:	681b      	ldr	r3, [r3, #0]
 80026a2:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80026a6:	2b00      	cmp	r3, #0
 80026a8:	d0ea      	beq.n	8002680 <HAL_RCC_OscConfig+0x8a0>
 80026aa:	e072      	b.n	8002792 <HAL_RCC_OscConfig+0x9b2>
        }
      }
      else
      {
        /* Disable the main PLL. */
        __HAL_RCC_PLL_DISABLE();
 80026ac:	4b3b      	ldr	r3, [pc, #236]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026ae:	681b      	ldr	r3, [r3, #0]
 80026b0:	4a3a      	ldr	r2, [pc, #232]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026b2:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 80026b6:	6013      	str	r3, [r2, #0]

        /* Disable all PLL outputs to save power if no PLLs on */
        if (READ_BIT(RCC->CR, (RCC_CR_PLLSAI1RDY | RCC_CR_PLLSAI2RDY)) == 0U)
 80026b8:	4b38      	ldr	r3, [pc, #224]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026ba:	681b      	ldr	r3, [r3, #0]
 80026bc:	f003 5320 	and.w	r3, r3, #671088640	; 0x28000000
 80026c0:	2b00      	cmp	r3, #0
 80026c2:	d105      	bne.n	80026d0 <HAL_RCC_OscConfig+0x8f0>
        {
          MODIFY_REG(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC, RCC_PLLSOURCE_NONE);
 80026c4:	4b35      	ldr	r3, [pc, #212]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026c6:	68db      	ldr	r3, [r3, #12]
 80026c8:	4a34      	ldr	r2, [pc, #208]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026ca:	f023 0303 	bic.w	r3, r3, #3
 80026ce:	60d3      	str	r3, [r2, #12]
        }

        __HAL_RCC_PLLCLKOUT_DISABLE(RCC_PLL_SYSCLK | RCC_PLL_48M1CLK | RCC_PLL_SAI3CLK);
 80026d0:	4b32      	ldr	r3, [pc, #200]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026d2:	68db      	ldr	r3, [r3, #12]
 80026d4:	4a31      	ldr	r2, [pc, #196]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026d6:	f023 7388 	bic.w	r3, r3, #17825792	; 0x1100000
 80026da:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 80026de:	60d3      	str	r3, [r2, #12]

        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 80026e0:	f7fe ffc6 	bl	8001670 <HAL_GetTick>
 80026e4:	6138      	str	r0, [r7, #16]

        /* Wait till PLL is disabled */
        while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 80026e6:	e00e      	b.n	8002706 <HAL_RCC_OscConfig+0x926>
        {
          if ((HAL_GetTick() - tickstart) > PLL_TIMEOUT_VALUE)
 80026e8:	f7fe ffc2 	bl	8001670 <HAL_GetTick>
 80026ec:	4602      	mov	r2, r0
 80026ee:	693b      	ldr	r3, [r7, #16]
 80026f0:	1ad3      	subs	r3, r2, r3
 80026f2:	2b02      	cmp	r3, #2
 80026f4:	d907      	bls.n	8002706 <HAL_RCC_OscConfig+0x926>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 80026f6:	4b29      	ldr	r3, [pc, #164]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 80026f8:	681b      	ldr	r3, [r3, #0]
 80026fa:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80026fe:	2b00      	cmp	r3, #0
 8002700:	d001      	beq.n	8002706 <HAL_RCC_OscConfig+0x926>
            {
              return HAL_TIMEOUT;
 8002702:	2303      	movs	r3, #3
 8002704:	e046      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        while (READ_BIT(RCC->CR, RCC_CR_PLLRDY) != 0U)
 8002706:	4b25      	ldr	r3, [pc, #148]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002708:	681b      	ldr	r3, [r3, #0]
 800270a:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800270e:	2b00      	cmp	r3, #0
 8002710:	d1ea      	bne.n	80026e8 <HAL_RCC_OscConfig+0x908>
 8002712:	e03e      	b.n	8002792 <HAL_RCC_OscConfig+0x9b2>
      }
    }
    else
    {
      /* Check if there is a request to disable the PLL used as System clock source */
      if (RCC_OscInitStruct->PLL.PLLState == RCC_PLL_OFF)
 8002714:	687b      	ldr	r3, [r7, #4]
 8002716:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8002718:	2b01      	cmp	r3, #1
 800271a:	d101      	bne.n	8002720 <HAL_RCC_OscConfig+0x940>
      {
        return HAL_ERROR;
 800271c:	2301      	movs	r3, #1
 800271e:	e039      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
      }
      else
      {
        pll_config = RCC->PLLCFGR;
 8002720:	4b1e      	ldr	r3, [pc, #120]	; (800279c <HAL_RCC_OscConfig+0x9bc>)
 8002722:	68db      	ldr	r3, [r3, #12]
 8002724:	617b      	str	r3, [r7, #20]
        /* Do not return HAL_ERROR if request repeats the current configuration */
        if ((READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC)  != RCC_OscInitStruct->PLL.PLLSource) ||
 8002726:	697b      	ldr	r3, [r7, #20]
 8002728:	f003 0203 	and.w	r2, r3, #3
 800272c:	687b      	ldr	r3, [r7, #4]
 800272e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002730:	429a      	cmp	r2, r3
 8002732:	d12c      	bne.n	800278e <HAL_RCC_OscConfig+0x9ae>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM)    != ((RCC_OscInitStruct->PLL.PLLM - 1U) << RCC_PLLCFGR_PLLM_Pos)) ||
 8002734:	697b      	ldr	r3, [r7, #20]
 8002736:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
 800273a:	687b      	ldr	r3, [r7, #4]
 800273c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800273e:	3b01      	subs	r3, #1
 8002740:	011b      	lsls	r3, r3, #4
        if ((READ_BIT(pll_config, RCC_PLLCFGR_PLLSRC)  != RCC_OscInitStruct->PLL.PLLSource) ||
 8002742:	429a      	cmp	r2, r3
 8002744:	d123      	bne.n	800278e <HAL_RCC_OscConfig+0x9ae>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN)    != (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)) ||
 8002746:	697b      	ldr	r3, [r7, #20]
 8002748:	f403 42fe 	and.w	r2, r3, #32512	; 0x7f00
 800274c:	687b      	ldr	r3, [r7, #4]
 800274e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 8002750:	021b      	lsls	r3, r3, #8
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLM)    != ((RCC_OscInitStruct->PLL.PLLM - 1U) << RCC_PLLCFGR_PLLM_Pos)) ||
 8002752:	429a      	cmp	r2, r3
 8002754:	d11b      	bne.n	800278e <HAL_RCC_OscConfig+0x9ae>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLPDIV) != (RCC_OscInitStruct->PLL.PLLP << RCC_PLLCFGR_PLLPDIV_Pos)) ||
 8002756:	697b      	ldr	r3, [r7, #20]
 8002758:	f003 4278 	and.w	r2, r3, #4160749568	; 0xf8000000
 800275c:	687b      	ldr	r3, [r7, #4]
 800275e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8002760:	06db      	lsls	r3, r3, #27
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLN)    != (RCC_OscInitStruct->PLL.PLLN << RCC_PLLCFGR_PLLN_Pos)) ||
 8002762:	429a      	cmp	r2, r3
 8002764:	d113      	bne.n	800278e <HAL_RCC_OscConfig+0x9ae>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ)    != ((((RCC_OscInitStruct->PLL.PLLQ) >> 1U) - 1U) << RCC_PLLCFGR_PLLQ_Pos)) ||
 8002766:	697b      	ldr	r3, [r7, #20]
 8002768:	f403 02c0 	and.w	r2, r3, #6291456	; 0x600000
 800276c:	687b      	ldr	r3, [r7, #4]
 800276e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8002770:	085b      	lsrs	r3, r3, #1
 8002772:	3b01      	subs	r3, #1
 8002774:	055b      	lsls	r3, r3, #21
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLPDIV) != (RCC_OscInitStruct->PLL.PLLP << RCC_PLLCFGR_PLLPDIV_Pos)) ||
 8002776:	429a      	cmp	r2, r3
 8002778:	d109      	bne.n	800278e <HAL_RCC_OscConfig+0x9ae>
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLR)    != ((((RCC_OscInitStruct->PLL.PLLR) >> 1U) - 1U) << RCC_PLLCFGR_PLLR_Pos)))
 800277a:	697b      	ldr	r3, [r7, #20]
 800277c:	f003 62c0 	and.w	r2, r3, #100663296	; 0x6000000
 8002780:	687b      	ldr	r3, [r7, #4]
 8002782:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8002784:	085b      	lsrs	r3, r3, #1
 8002786:	3b01      	subs	r3, #1
 8002788:	065b      	lsls	r3, r3, #25
            (READ_BIT(pll_config, RCC_PLLCFGR_PLLQ)    != ((((RCC_OscInitStruct->PLL.PLLQ) >> 1U) - 1U) << RCC_PLLCFGR_PLLQ_Pos)) ||
 800278a:	429a      	cmp	r2, r3
 800278c:	d001      	beq.n	8002792 <HAL_RCC_OscConfig+0x9b2>
        {
          return HAL_ERROR;
 800278e:	2301      	movs	r3, #1
 8002790:	e000      	b.n	8002794 <HAL_RCC_OscConfig+0x9b4>
        }
      }
    }
  }

  return HAL_OK;
 8002792:	2300      	movs	r3, #0
}
 8002794:	4618      	mov	r0, r3
 8002796:	3720      	adds	r7, #32
 8002798:	46bd      	mov	sp, r7
 800279a:	bd80      	pop	{r7, pc}
 800279c:	40021000 	.word	0x40021000
 80027a0:	019f800c 	.word	0x019f800c

080027a4 <HAL_RCC_ClockConfig>:
  *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
  *         (for more details refer to section above "Initialization/de-initialization functions")
  * @retval None
  */
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
{
 80027a4:	b580      	push	{r7, lr}
 80027a6:	b086      	sub	sp, #24
 80027a8:	af00      	add	r7, sp, #0
 80027aa:	6078      	str	r0, [r7, #4]
 80027ac:	6039      	str	r1, [r7, #0]
  uint32_t tickstart;
  uint32_t pllfreq;
  uint32_t hpre = RCC_SYSCLK_DIV1;
 80027ae:	2300      	movs	r3, #0
 80027b0:	617b      	str	r3, [r7, #20]

  /* Check Null pointer */
  if (RCC_ClkInitStruct == NULL)
 80027b2:	687b      	ldr	r3, [r7, #4]
 80027b4:	2b00      	cmp	r3, #0
 80027b6:	d101      	bne.n	80027bc <HAL_RCC_ClockConfig+0x18>
  {
    return HAL_ERROR;
 80027b8:	2301      	movs	r3, #1
 80027ba:	e10d      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
  /* To correctly read data from FLASH memory, the number of wait states (LATENCY)
    must be correctly programmed according to the frequency of the CPU clock
    (HCLK) and the supply voltage of the device. */

  /* Increasing the number of wait states because of higher CPU frequency */
  if (FLatency > __HAL_FLASH_GET_LATENCY())
 80027bc:	4b88      	ldr	r3, [pc, #544]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 80027be:	681b      	ldr	r3, [r3, #0]
 80027c0:	f003 030f 	and.w	r3, r3, #15
 80027c4:	683a      	ldr	r2, [r7, #0]
 80027c6:	429a      	cmp	r2, r3
 80027c8:	d910      	bls.n	80027ec <HAL_RCC_ClockConfig+0x48>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 80027ca:	4b85      	ldr	r3, [pc, #532]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 80027cc:	681b      	ldr	r3, [r3, #0]
 80027ce:	f023 020f 	bic.w	r2, r3, #15
 80027d2:	4983      	ldr	r1, [pc, #524]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 80027d4:	683b      	ldr	r3, [r7, #0]
 80027d6:	4313      	orrs	r3, r2
 80027d8:	600b      	str	r3, [r1, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if (__HAL_FLASH_GET_LATENCY() != FLatency)
 80027da:	4b81      	ldr	r3, [pc, #516]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 80027dc:	681b      	ldr	r3, [r3, #0]
 80027de:	f003 030f 	and.w	r3, r3, #15
 80027e2:	683a      	ldr	r2, [r7, #0]
 80027e4:	429a      	cmp	r2, r3
 80027e6:	d001      	beq.n	80027ec <HAL_RCC_ClockConfig+0x48>
    {
      return HAL_ERROR;
 80027e8:	2301      	movs	r3, #1
 80027ea:	e0f5      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
    }
  }

  /*------------------------- SYSCLK Configuration ---------------------------*/
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 80027ec:	687b      	ldr	r3, [r7, #4]
 80027ee:	681b      	ldr	r3, [r3, #0]
 80027f0:	f003 0301 	and.w	r3, r3, #1
 80027f4:	2b00      	cmp	r3, #0
 80027f6:	f000 8094 	beq.w	8002922 <HAL_RCC_ClockConfig+0x17e>
  {
    assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));

    /* PLL is selected as System Clock Source */
    if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 80027fa:	687b      	ldr	r3, [r7, #4]
 80027fc:	685b      	ldr	r3, [r3, #4]
 80027fe:	2b03      	cmp	r3, #3
 8002800:	d134      	bne.n	800286c <HAL_RCC_ClockConfig+0xc8>
    {
      /* Check the PLL ready flag */
      if (READ_BIT(RCC->CR, RCC_CR_PLLRDY) == 0U)
 8002802:	4b78      	ldr	r3, [pc, #480]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002804:	681b      	ldr	r3, [r3, #0]
 8002806:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800280a:	2b00      	cmp	r3, #0
 800280c:	d101      	bne.n	8002812 <HAL_RCC_ClockConfig+0x6e>
      {
        return HAL_ERROR;
 800280e:	2301      	movs	r3, #1
 8002810:	e0e2      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
      }

      /* Transition state management when selecting PLL as SYSCLK source and */
      /* target frequency above 80Mhz */
      /* Compute target PLL output frequency */
      pllfreq = RCC_GetSysClockFreqFromPLLSource();
 8002812:	f000 fa29 	bl	8002c68 <RCC_GetSysClockFreqFromPLLSource>
 8002816:	6138      	str	r0, [r7, #16]

      /* Intermediate step with HCLK prescaler 2 necessary before to go over 80Mhz */
      if (pllfreq > 80000000U)
 8002818:	693b      	ldr	r3, [r7, #16]
 800281a:	4a73      	ldr	r2, [pc, #460]	; (80029e8 <HAL_RCC_ClockConfig+0x244>)
 800281c:	4293      	cmp	r3, r2
 800281e:	d956      	bls.n	80028ce <HAL_RCC_ClockConfig+0x12a>
      {
        if (READ_BIT(RCC->CFGR, RCC_CFGR_HPRE) == RCC_SYSCLK_DIV1)
 8002820:	4b70      	ldr	r3, [pc, #448]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002822:	689b      	ldr	r3, [r3, #8]
 8002824:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8002828:	2b00      	cmp	r3, #0
 800282a:	d10a      	bne.n	8002842 <HAL_RCC_ClockConfig+0x9e>
        {
          MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV2);
 800282c:	4b6d      	ldr	r3, [pc, #436]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800282e:	689b      	ldr	r3, [r3, #8]
 8002830:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002834:	4a6b      	ldr	r2, [pc, #428]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002836:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800283a:	6093      	str	r3, [r2, #8]
          hpre = RCC_SYSCLK_DIV2;
 800283c:	2380      	movs	r3, #128	; 0x80
 800283e:	617b      	str	r3, [r7, #20]
 8002840:	e045      	b.n	80028ce <HAL_RCC_ClockConfig+0x12a>
        }
        else if ((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 8002842:	687b      	ldr	r3, [r7, #4]
 8002844:	681b      	ldr	r3, [r3, #0]
 8002846:	f003 0302 	and.w	r3, r3, #2
 800284a:	2b00      	cmp	r3, #0
 800284c:	d03f      	beq.n	80028ce <HAL_RCC_ClockConfig+0x12a>
                 (RCC_ClkInitStruct->AHBCLKDivider == RCC_SYSCLK_DIV1))
 800284e:	687b      	ldr	r3, [r7, #4]
 8002850:	689b      	ldr	r3, [r3, #8]
        else if ((((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK) &&
 8002852:	2b00      	cmp	r3, #0
 8002854:	d13b      	bne.n	80028ce <HAL_RCC_ClockConfig+0x12a>
        {
          MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV2);
 8002856:	4b63      	ldr	r3, [pc, #396]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002858:	689b      	ldr	r3, [r3, #8]
 800285a:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 800285e:	4a61      	ldr	r2, [pc, #388]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002860:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8002864:	6093      	str	r3, [r2, #8]
          hpre = RCC_SYSCLK_DIV2;
 8002866:	2380      	movs	r3, #128	; 0x80
 8002868:	617b      	str	r3, [r7, #20]
 800286a:	e030      	b.n	80028ce <HAL_RCC_ClockConfig+0x12a>
      }
    }
    else
    {
      /* HSE is selected as System Clock Source */
      if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 800286c:	687b      	ldr	r3, [r7, #4]
 800286e:	685b      	ldr	r3, [r3, #4]
 8002870:	2b02      	cmp	r3, #2
 8002872:	d107      	bne.n	8002884 <HAL_RCC_ClockConfig+0xe0>
      {
        /* Check the HSE ready flag */
        if (READ_BIT(RCC->CR, RCC_CR_HSERDY) == 0U)
 8002874:	4b5b      	ldr	r3, [pc, #364]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002876:	681b      	ldr	r3, [r3, #0]
 8002878:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800287c:	2b00      	cmp	r3, #0
 800287e:	d115      	bne.n	80028ac <HAL_RCC_ClockConfig+0x108>
        {
          return HAL_ERROR;
 8002880:	2301      	movs	r3, #1
 8002882:	e0a9      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
        }
      }
      /* MSI is selected as System Clock Source */
      else if (RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_MSI)
 8002884:	687b      	ldr	r3, [r7, #4]
 8002886:	685b      	ldr	r3, [r3, #4]
 8002888:	2b00      	cmp	r3, #0
 800288a:	d107      	bne.n	800289c <HAL_RCC_ClockConfig+0xf8>
      {
        /* Check the MSI ready flag */
        if (READ_BIT(RCC->CR, RCC_CR_MSIRDY) == 0U)
 800288c:	4b55      	ldr	r3, [pc, #340]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800288e:	681b      	ldr	r3, [r3, #0]
 8002890:	f003 0302 	and.w	r3, r3, #2
 8002894:	2b00      	cmp	r3, #0
 8002896:	d109      	bne.n	80028ac <HAL_RCC_ClockConfig+0x108>
        {
          return HAL_ERROR;
 8002898:	2301      	movs	r3, #1
 800289a:	e09d      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
      }
      /* HSI is selected as System Clock Source */
      else
      {
        /* Check the HSI ready flag */
        if (READ_BIT(RCC->CR, RCC_CR_HSIRDY) == 0U)
 800289c:	4b51      	ldr	r3, [pc, #324]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800289e:	681b      	ldr	r3, [r3, #0]
 80028a0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80028a4:	2b00      	cmp	r3, #0
 80028a6:	d101      	bne.n	80028ac <HAL_RCC_ClockConfig+0x108>
        {
          return HAL_ERROR;
 80028a8:	2301      	movs	r3, #1
 80028aa:	e095      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
        }
      }

      /* Transition state management when when going down from PLL used as */
      /* SYSCLK source and frequency above 80Mhz */
      pllfreq = HAL_RCC_GetSysClockFreq();
 80028ac:	f000 f8a2 	bl	80029f4 <HAL_RCC_GetSysClockFreq>
 80028b0:	6138      	str	r0, [r7, #16]

      /* Intermediate step with HCLK prescaler 2 necessary before to go under 80Mhz */
      if (pllfreq > 80000000U)
 80028b2:	693b      	ldr	r3, [r7, #16]
 80028b4:	4a4c      	ldr	r2, [pc, #304]	; (80029e8 <HAL_RCC_ClockConfig+0x244>)
 80028b6:	4293      	cmp	r3, r2
 80028b8:	d909      	bls.n	80028ce <HAL_RCC_ClockConfig+0x12a>
      {
        MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV2);
 80028ba:	4b4a      	ldr	r3, [pc, #296]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80028bc:	689b      	ldr	r3, [r3, #8]
 80028be:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80028c2:	4a48      	ldr	r2, [pc, #288]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80028c4:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80028c8:	6093      	str	r3, [r2, #8]
        hpre = RCC_SYSCLK_DIV2;
 80028ca:	2380      	movs	r3, #128	; 0x80
 80028cc:	617b      	str	r3, [r7, #20]
      }
    }

    MODIFY_REG(RCC->CFGR, RCC_CFGR_SW, RCC_ClkInitStruct->SYSCLKSource);
 80028ce:	4b45      	ldr	r3, [pc, #276]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80028d0:	689b      	ldr	r3, [r3, #8]
 80028d2:	f023 0203 	bic.w	r2, r3, #3
 80028d6:	687b      	ldr	r3, [r7, #4]
 80028d8:	685b      	ldr	r3, [r3, #4]
 80028da:	4942      	ldr	r1, [pc, #264]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80028dc:	4313      	orrs	r3, r2
 80028de:	608b      	str	r3, [r1, #8]

    /* Get Start Tick*/
    tickstart = HAL_GetTick();
 80028e0:	f7fe fec6 	bl	8001670 <HAL_GetTick>
 80028e4:	60f8      	str	r0, [r7, #12]

    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80028e6:	e013      	b.n	8002910 <HAL_RCC_ClockConfig+0x16c>
    {
      if ((HAL_GetTick() - tickstart) > CLOCKSWITCH_TIMEOUT_VALUE)
 80028e8:	f7fe fec2 	bl	8001670 <HAL_GetTick>
 80028ec:	4602      	mov	r2, r0
 80028ee:	68fb      	ldr	r3, [r7, #12]
 80028f0:	1ad3      	subs	r3, r2, r3
 80028f2:	f241 3288 	movw	r2, #5000	; 0x1388
 80028f6:	4293      	cmp	r3, r2
 80028f8:	d90a      	bls.n	8002910 <HAL_RCC_ClockConfig+0x16c>
      {
        /* New check to avoid false timeout detection in case of preemption */
        if (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 80028fa:	4b3a      	ldr	r3, [pc, #232]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80028fc:	689b      	ldr	r3, [r3, #8]
 80028fe:	f003 020c 	and.w	r2, r3, #12
 8002902:	687b      	ldr	r3, [r7, #4]
 8002904:	685b      	ldr	r3, [r3, #4]
 8002906:	009b      	lsls	r3, r3, #2
 8002908:	429a      	cmp	r2, r3
 800290a:	d001      	beq.n	8002910 <HAL_RCC_ClockConfig+0x16c>
        {
          return HAL_TIMEOUT;
 800290c:	2303      	movs	r3, #3
 800290e:	e063      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
    while (__HAL_RCC_GET_SYSCLK_SOURCE() != (RCC_ClkInitStruct->SYSCLKSource << RCC_CFGR_SWS_Pos))
 8002910:	4b34      	ldr	r3, [pc, #208]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002912:	689b      	ldr	r3, [r3, #8]
 8002914:	f003 020c 	and.w	r2, r3, #12
 8002918:	687b      	ldr	r3, [r7, #4]
 800291a:	685b      	ldr	r3, [r3, #4]
 800291c:	009b      	lsls	r3, r3, #2
 800291e:	429a      	cmp	r2, r3
 8002920:	d1e2      	bne.n	80028e8 <HAL_RCC_ClockConfig+0x144>
      }
    }
  }

  /*-------------------------- HCLK Configuration --------------------------*/
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 8002922:	687b      	ldr	r3, [r7, #4]
 8002924:	681b      	ldr	r3, [r3, #0]
 8002926:	f003 0302 	and.w	r3, r3, #2
 800292a:	2b00      	cmp	r3, #0
 800292c:	d009      	beq.n	8002942 <HAL_RCC_ClockConfig+0x19e>
  {
    assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 800292e:	4b2d      	ldr	r3, [pc, #180]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002930:	689b      	ldr	r3, [r3, #8]
 8002932:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8002936:	687b      	ldr	r3, [r7, #4]
 8002938:	689b      	ldr	r3, [r3, #8]
 800293a:	492a      	ldr	r1, [pc, #168]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800293c:	4313      	orrs	r3, r2
 800293e:	608b      	str	r3, [r1, #8]
 8002940:	e008      	b.n	8002954 <HAL_RCC_ClockConfig+0x1b0>
  }
  else
  {
    /* Is intermediate HCLK prescaler 2 applied internally, complete with HCLK prescaler 1 */
    if (hpre == RCC_SYSCLK_DIV2)
 8002942:	697b      	ldr	r3, [r7, #20]
 8002944:	2b80      	cmp	r3, #128	; 0x80
 8002946:	d105      	bne.n	8002954 <HAL_RCC_ClockConfig+0x1b0>
    {
      MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_SYSCLK_DIV1);
 8002948:	4b26      	ldr	r3, [pc, #152]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800294a:	689b      	ldr	r3, [r3, #8]
 800294c:	4a25      	ldr	r2, [pc, #148]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800294e:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8002952:	6093      	str	r3, [r2, #8]
    }
  }

  /* Decreasing the number of wait states because of lower CPU frequency */
  if (FLatency < __HAL_FLASH_GET_LATENCY())
 8002954:	4b22      	ldr	r3, [pc, #136]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 8002956:	681b      	ldr	r3, [r3, #0]
 8002958:	f003 030f 	and.w	r3, r3, #15
 800295c:	683a      	ldr	r2, [r7, #0]
 800295e:	429a      	cmp	r2, r3
 8002960:	d210      	bcs.n	8002984 <HAL_RCC_ClockConfig+0x1e0>
  {
    /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
    __HAL_FLASH_SET_LATENCY(FLatency);
 8002962:	4b1f      	ldr	r3, [pc, #124]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 8002964:	681b      	ldr	r3, [r3, #0]
 8002966:	f023 020f 	bic.w	r2, r3, #15
 800296a:	491d      	ldr	r1, [pc, #116]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 800296c:	683b      	ldr	r3, [r7, #0]
 800296e:	4313      	orrs	r3, r2
 8002970:	600b      	str	r3, [r1, #0]

    /* Check that the new number of wait states is taken into account to access the Flash
    memory by reading the FLASH_ACR register */
    if (__HAL_FLASH_GET_LATENCY() != FLatency)
 8002972:	4b1b      	ldr	r3, [pc, #108]	; (80029e0 <HAL_RCC_ClockConfig+0x23c>)
 8002974:	681b      	ldr	r3, [r3, #0]
 8002976:	f003 030f 	and.w	r3, r3, #15
 800297a:	683a      	ldr	r2, [r7, #0]
 800297c:	429a      	cmp	r2, r3
 800297e:	d001      	beq.n	8002984 <HAL_RCC_ClockConfig+0x1e0>
    {
      return HAL_ERROR;
 8002980:	2301      	movs	r3, #1
 8002982:	e029      	b.n	80029d8 <HAL_RCC_ClockConfig+0x234>
    }
  }

  /*-------------------------- PCLK1 Configuration ---------------------------*/
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 8002984:	687b      	ldr	r3, [r7, #4]
 8002986:	681b      	ldr	r3, [r3, #0]
 8002988:	f003 0304 	and.w	r3, r3, #4
 800298c:	2b00      	cmp	r3, #0
 800298e:	d008      	beq.n	80029a2 <HAL_RCC_ClockConfig+0x1fe>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 8002990:	4b14      	ldr	r3, [pc, #80]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 8002992:	689b      	ldr	r3, [r3, #8]
 8002994:	f423 62e0 	bic.w	r2, r3, #1792	; 0x700
 8002998:	687b      	ldr	r3, [r7, #4]
 800299a:	68db      	ldr	r3, [r3, #12]
 800299c:	4911      	ldr	r1, [pc, #68]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 800299e:	4313      	orrs	r3, r2
 80029a0:	608b      	str	r3, [r1, #8]
  }

  /*-------------------------- PCLK2 Configuration ---------------------------*/
  if (((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 80029a2:	687b      	ldr	r3, [r7, #4]
 80029a4:	681b      	ldr	r3, [r3, #0]
 80029a6:	f003 0308 	and.w	r3, r3, #8
 80029aa:	2b00      	cmp	r3, #0
 80029ac:	d009      	beq.n	80029c2 <HAL_RCC_ClockConfig+0x21e>
  {
    assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
    MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3U));
 80029ae:	4b0d      	ldr	r3, [pc, #52]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80029b0:	689b      	ldr	r3, [r3, #8]
 80029b2:	f423 5260 	bic.w	r2, r3, #14336	; 0x3800
 80029b6:	687b      	ldr	r3, [r7, #4]
 80029b8:	691b      	ldr	r3, [r3, #16]
 80029ba:	00db      	lsls	r3, r3, #3
 80029bc:	4909      	ldr	r1, [pc, #36]	; (80029e4 <HAL_RCC_ClockConfig+0x240>)
 80029be:	4313      	orrs	r3, r2
 80029c0:	608b      	str	r3, [r1, #8]
  }

  /* Update the SystemCoreClock global variable */
  SystemCoreClock = HAL_RCC_GetHCLKFreq();
 80029c2:	f000 f8b1 	bl	8002b28 <HAL_RCC_GetHCLKFreq>
 80029c6:	4602      	mov	r2, r0
 80029c8:	4b08      	ldr	r3, [pc, #32]	; (80029ec <HAL_RCC_ClockConfig+0x248>)
 80029ca:	601a      	str	r2, [r3, #0]

  /* Configure the source of time base considering new system clocks settings*/
  return HAL_InitTick(uwTickPrio);
 80029cc:	4b08      	ldr	r3, [pc, #32]	; (80029f0 <HAL_RCC_ClockConfig+0x24c>)
 80029ce:	681b      	ldr	r3, [r3, #0]
 80029d0:	4618      	mov	r0, r3
 80029d2:	f7fe fdff 	bl	80015d4 <HAL_InitTick>
 80029d6:	4603      	mov	r3, r0
}
 80029d8:	4618      	mov	r0, r3
 80029da:	3718      	adds	r7, #24
 80029dc:	46bd      	mov	sp, r7
 80029de:	bd80      	pop	{r7, pc}
 80029e0:	40022000 	.word	0x40022000
 80029e4:	40021000 	.word	0x40021000
 80029e8:	04c4b400 	.word	0x04c4b400
 80029ec:	20000000 	.word	0x20000000
 80029f0:	20000004 	.word	0x20000004

080029f4 <HAL_RCC_GetSysClockFreq>:
  *
  *
  * @retval SYSCLK frequency
  */
uint32_t HAL_RCC_GetSysClockFreq(void)
{
 80029f4:	b480      	push	{r7}
 80029f6:	b089      	sub	sp, #36	; 0x24
 80029f8:	af00      	add	r7, sp, #0
  uint32_t msirange = 0U, sysclockfreq = 0U;
 80029fa:	2300      	movs	r3, #0
 80029fc:	61fb      	str	r3, [r7, #28]
 80029fe:	2300      	movs	r3, #0
 8002a00:	61bb      	str	r3, [r7, #24]
  uint32_t pllvco, pllsource, pllr, pllm;    /* no init needed */
  uint32_t sysclk_source, pll_oscsource;

  sysclk_source = __HAL_RCC_GET_SYSCLK_SOURCE();
 8002a02:	4b46      	ldr	r3, [pc, #280]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a04:	689b      	ldr	r3, [r3, #8]
 8002a06:	f003 030c 	and.w	r3, r3, #12
 8002a0a:	613b      	str	r3, [r7, #16]
  pll_oscsource = __HAL_RCC_GET_PLL_OSCSOURCE();
 8002a0c:	4b43      	ldr	r3, [pc, #268]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a0e:	68db      	ldr	r3, [r3, #12]
 8002a10:	f003 0303 	and.w	r3, r3, #3
 8002a14:	60fb      	str	r3, [r7, #12]

  if ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_MSI) ||
 8002a16:	693b      	ldr	r3, [r7, #16]
 8002a18:	2b00      	cmp	r3, #0
 8002a1a:	d005      	beq.n	8002a28 <HAL_RCC_GetSysClockFreq+0x34>
 8002a1c:	693b      	ldr	r3, [r7, #16]
 8002a1e:	2b0c      	cmp	r3, #12
 8002a20:	d121      	bne.n	8002a66 <HAL_RCC_GetSysClockFreq+0x72>
      ((sysclk_source == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && (pll_oscsource == RCC_PLLSOURCE_MSI)))
 8002a22:	68fb      	ldr	r3, [r7, #12]
 8002a24:	2b01      	cmp	r3, #1
 8002a26:	d11e      	bne.n	8002a66 <HAL_RCC_GetSysClockFreq+0x72>
  {
    /* MSI or PLL with MSI source used as system clock source */

    /* Get SYSCLK source */
    if (READ_BIT(RCC->CR, RCC_CR_MSIRGSEL) == 0U)
 8002a28:	4b3c      	ldr	r3, [pc, #240]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a2a:	681b      	ldr	r3, [r3, #0]
 8002a2c:	f003 0308 	and.w	r3, r3, #8
 8002a30:	2b00      	cmp	r3, #0
 8002a32:	d107      	bne.n	8002a44 <HAL_RCC_GetSysClockFreq+0x50>
    {
      /* MSISRANGE from RCC_CSR applies */
      msirange = READ_BIT(RCC->CSR, RCC_CSR_MSISRANGE) >> RCC_CSR_MSISRANGE_Pos;
 8002a34:	4b39      	ldr	r3, [pc, #228]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a36:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002a3a:	0a1b      	lsrs	r3, r3, #8
 8002a3c:	f003 030f 	and.w	r3, r3, #15
 8002a40:	61fb      	str	r3, [r7, #28]
 8002a42:	e005      	b.n	8002a50 <HAL_RCC_GetSysClockFreq+0x5c>
    }
    else
    {
      /* MSIRANGE from RCC_CR applies */
      msirange = READ_BIT(RCC->CR, RCC_CR_MSIRANGE) >> RCC_CR_MSIRANGE_Pos;
 8002a44:	4b35      	ldr	r3, [pc, #212]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a46:	681b      	ldr	r3, [r3, #0]
 8002a48:	091b      	lsrs	r3, r3, #4
 8002a4a:	f003 030f 	and.w	r3, r3, #15
 8002a4e:	61fb      	str	r3, [r7, #28]
    }
    /*MSI frequency range in Hz*/
    msirange = MSIRangeTable[msirange];
 8002a50:	4a33      	ldr	r2, [pc, #204]	; (8002b20 <HAL_RCC_GetSysClockFreq+0x12c>)
 8002a52:	69fb      	ldr	r3, [r7, #28]
 8002a54:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002a58:	61fb      	str	r3, [r7, #28]

    if (sysclk_source == RCC_SYSCLKSOURCE_STATUS_MSI)
 8002a5a:	693b      	ldr	r3, [r7, #16]
 8002a5c:	2b00      	cmp	r3, #0
 8002a5e:	d10d      	bne.n	8002a7c <HAL_RCC_GetSysClockFreq+0x88>
    {
      /* MSI used as system clock source */
      sysclockfreq = msirange;
 8002a60:	69fb      	ldr	r3, [r7, #28]
 8002a62:	61bb      	str	r3, [r7, #24]
    if (sysclk_source == RCC_SYSCLKSOURCE_STATUS_MSI)
 8002a64:	e00a      	b.n	8002a7c <HAL_RCC_GetSysClockFreq+0x88>
    }
  }
  else if (sysclk_source == RCC_SYSCLKSOURCE_STATUS_HSI)
 8002a66:	693b      	ldr	r3, [r7, #16]
 8002a68:	2b04      	cmp	r3, #4
 8002a6a:	d102      	bne.n	8002a72 <HAL_RCC_GetSysClockFreq+0x7e>
  {
    /* HSI used as system clock source */
    sysclockfreq = HSI_VALUE;
 8002a6c:	4b2d      	ldr	r3, [pc, #180]	; (8002b24 <HAL_RCC_GetSysClockFreq+0x130>)
 8002a6e:	61bb      	str	r3, [r7, #24]
 8002a70:	e004      	b.n	8002a7c <HAL_RCC_GetSysClockFreq+0x88>
  }
  else if (sysclk_source == RCC_SYSCLKSOURCE_STATUS_HSE)
 8002a72:	693b      	ldr	r3, [r7, #16]
 8002a74:	2b08      	cmp	r3, #8
 8002a76:	d101      	bne.n	8002a7c <HAL_RCC_GetSysClockFreq+0x88>
  {
    /* HSE used as system clock source */
    sysclockfreq = HSE_VALUE;
 8002a78:	4b2a      	ldr	r3, [pc, #168]	; (8002b24 <HAL_RCC_GetSysClockFreq+0x130>)
 8002a7a:	61bb      	str	r3, [r7, #24]
  else
  {
    /* unexpected case: sysclockfreq at 0 */
  }

  if (sysclk_source == RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 8002a7c:	693b      	ldr	r3, [r7, #16]
 8002a7e:	2b0c      	cmp	r3, #12
 8002a80:	d145      	bne.n	8002b0e <HAL_RCC_GetSysClockFreq+0x11a>
    /* PLL used as system clock  source */

    /* PLL_VCO = (HSE_VALUE or HSI_VALUE or MSI_VALUE/ PLLM) * PLLN
    SYSCLK = PLL_VCO / PLLR
    */
    pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
 8002a82:	4b26      	ldr	r3, [pc, #152]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a84:	68db      	ldr	r3, [r3, #12]
 8002a86:	f003 0303 	and.w	r3, r3, #3
 8002a8a:	60bb      	str	r3, [r7, #8]
    pllm = ((RCC->PLLCFGR & RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U ;
 8002a8c:	4b23      	ldr	r3, [pc, #140]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002a8e:	68db      	ldr	r3, [r3, #12]
 8002a90:	091b      	lsrs	r3, r3, #4
 8002a92:	f003 030f 	and.w	r3, r3, #15
 8002a96:	3301      	adds	r3, #1
 8002a98:	607b      	str	r3, [r7, #4]

    switch (pllsource)
 8002a9a:	68bb      	ldr	r3, [r7, #8]
 8002a9c:	2b02      	cmp	r3, #2
 8002a9e:	d002      	beq.n	8002aa6 <HAL_RCC_GetSysClockFreq+0xb2>
 8002aa0:	2b03      	cmp	r3, #3
 8002aa2:	d00d      	beq.n	8002ac0 <HAL_RCC_GetSysClockFreq+0xcc>
 8002aa4:	e019      	b.n	8002ada <HAL_RCC_GetSysClockFreq+0xe6>
    {
      case RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
        pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
 8002aa6:	4a1f      	ldr	r2, [pc, #124]	; (8002b24 <HAL_RCC_GetSysClockFreq+0x130>)
 8002aa8:	687b      	ldr	r3, [r7, #4]
 8002aaa:	fbb2 f3f3 	udiv	r3, r2, r3
 8002aae:	4a1b      	ldr	r2, [pc, #108]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002ab0:	68d2      	ldr	r2, [r2, #12]
 8002ab2:	0a12      	lsrs	r2, r2, #8
 8002ab4:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8002ab8:	fb02 f303 	mul.w	r3, r2, r3
 8002abc:	617b      	str	r3, [r7, #20]
        break;
 8002abe:	e019      	b.n	8002af4 <HAL_RCC_GetSysClockFreq+0x100>

      case RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
        pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
 8002ac0:	4a18      	ldr	r2, [pc, #96]	; (8002b24 <HAL_RCC_GetSysClockFreq+0x130>)
 8002ac2:	687b      	ldr	r3, [r7, #4]
 8002ac4:	fbb2 f3f3 	udiv	r3, r2, r3
 8002ac8:	4a14      	ldr	r2, [pc, #80]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002aca:	68d2      	ldr	r2, [r2, #12]
 8002acc:	0a12      	lsrs	r2, r2, #8
 8002ace:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8002ad2:	fb02 f303 	mul.w	r3, r2, r3
 8002ad6:	617b      	str	r3, [r7, #20]
        break;
 8002ad8:	e00c      	b.n	8002af4 <HAL_RCC_GetSysClockFreq+0x100>

      case RCC_PLLSOURCE_MSI:  /* MSI used as PLL clock source */
      default:
        pllvco = (msirange / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
 8002ada:	69fa      	ldr	r2, [r7, #28]
 8002adc:	687b      	ldr	r3, [r7, #4]
 8002ade:	fbb2 f3f3 	udiv	r3, r2, r3
 8002ae2:	4a0e      	ldr	r2, [pc, #56]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002ae4:	68d2      	ldr	r2, [r2, #12]
 8002ae6:	0a12      	lsrs	r2, r2, #8
 8002ae8:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8002aec:	fb02 f303 	mul.w	r3, r2, r3
 8002af0:	617b      	str	r3, [r7, #20]
        break;
 8002af2:	bf00      	nop
    }
    pllr = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos) + 1U) * 2U;
 8002af4:	4b09      	ldr	r3, [pc, #36]	; (8002b1c <HAL_RCC_GetSysClockFreq+0x128>)
 8002af6:	68db      	ldr	r3, [r3, #12]
 8002af8:	0e5b      	lsrs	r3, r3, #25
 8002afa:	f003 0303 	and.w	r3, r3, #3
 8002afe:	3301      	adds	r3, #1
 8002b00:	005b      	lsls	r3, r3, #1
 8002b02:	603b      	str	r3, [r7, #0]
    sysclockfreq = pllvco / pllr;
 8002b04:	697a      	ldr	r2, [r7, #20]
 8002b06:	683b      	ldr	r3, [r7, #0]
 8002b08:	fbb2 f3f3 	udiv	r3, r2, r3
 8002b0c:	61bb      	str	r3, [r7, #24]
  }

  return sysclockfreq;
 8002b0e:	69bb      	ldr	r3, [r7, #24]
}
 8002b10:	4618      	mov	r0, r3
 8002b12:	3724      	adds	r7, #36	; 0x24
 8002b14:	46bd      	mov	sp, r7
 8002b16:	bc80      	pop	{r7}
 8002b18:	4770      	bx	lr
 8002b1a:	bf00      	nop
 8002b1c:	40021000 	.word	0x40021000
 8002b20:	080091c0 	.word	0x080091c0
 8002b24:	00f42400 	.word	0x00f42400

08002b28 <HAL_RCC_GetHCLKFreq>:
  * @note   Each time HCLK changes, this function must be called to update the
  *         right HCLK value. Otherwise, any configuration based on this function will be incorrect.
  * @retval HCLK frequency in Hz
  */
uint32_t HAL_RCC_GetHCLKFreq(void)
{
 8002b28:	b580      	push	{r7, lr}
 8002b2a:	af00      	add	r7, sp, #0
  return (HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE) >> RCC_CFGR_HPRE_Pos]);
 8002b2c:	f7ff ff62 	bl	80029f4 <HAL_RCC_GetSysClockFreq>
 8002b30:	4601      	mov	r1, r0
 8002b32:	4b05      	ldr	r3, [pc, #20]	; (8002b48 <HAL_RCC_GetHCLKFreq+0x20>)
 8002b34:	689b      	ldr	r3, [r3, #8]
 8002b36:	091b      	lsrs	r3, r3, #4
 8002b38:	f003 030f 	and.w	r3, r3, #15
 8002b3c:	4a03      	ldr	r2, [pc, #12]	; (8002b4c <HAL_RCC_GetHCLKFreq+0x24>)
 8002b3e:	5cd3      	ldrb	r3, [r2, r3]
 8002b40:	fa21 f303 	lsr.w	r3, r1, r3
}
 8002b44:	4618      	mov	r0, r3
 8002b46:	bd80      	pop	{r7, pc}
 8002b48:	40021000 	.word	0x40021000
 8002b4c:	080091a8 	.word	0x080091a8

08002b50 <HAL_RCC_GetPCLK1Freq>:
  * @note   Each time PCLK1 changes, this function must be called to update the
  *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK1 frequency in Hz
  */
uint32_t HAL_RCC_GetPCLK1Freq(void)
{
 8002b50:	b580      	push	{r7, lr}
 8002b52:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1) >> RCC_CFGR_PPRE1_Pos]);
 8002b54:	f7ff ffe8 	bl	8002b28 <HAL_RCC_GetHCLKFreq>
 8002b58:	4601      	mov	r1, r0
 8002b5a:	4b05      	ldr	r3, [pc, #20]	; (8002b70 <HAL_RCC_GetPCLK1Freq+0x20>)
 8002b5c:	689b      	ldr	r3, [r3, #8]
 8002b5e:	0a1b      	lsrs	r3, r3, #8
 8002b60:	f003 0307 	and.w	r3, r3, #7
 8002b64:	4a03      	ldr	r2, [pc, #12]	; (8002b74 <HAL_RCC_GetPCLK1Freq+0x24>)
 8002b66:	5cd3      	ldrb	r3, [r2, r3]
 8002b68:	fa21 f303 	lsr.w	r3, r1, r3
}
 8002b6c:	4618      	mov	r0, r3
 8002b6e:	bd80      	pop	{r7, pc}
 8002b70:	40021000 	.word	0x40021000
 8002b74:	080091b8 	.word	0x080091b8

08002b78 <HAL_RCC_GetPCLK2Freq>:
  * @note   Each time PCLK2 changes, this function must be called to update the
  *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrect.
  * @retval PCLK2 frequency in Hz
  */
uint32_t HAL_RCC_GetPCLK2Freq(void)
{
 8002b78:	b580      	push	{r7, lr}
 8002b7a:	af00      	add	r7, sp, #0
  /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
  return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2) >> RCC_CFGR_PPRE2_Pos]);
 8002b7c:	f7ff ffd4 	bl	8002b28 <HAL_RCC_GetHCLKFreq>
 8002b80:	4601      	mov	r1, r0
 8002b82:	4b05      	ldr	r3, [pc, #20]	; (8002b98 <HAL_RCC_GetPCLK2Freq+0x20>)
 8002b84:	689b      	ldr	r3, [r3, #8]
 8002b86:	0adb      	lsrs	r3, r3, #11
 8002b88:	f003 0307 	and.w	r3, r3, #7
 8002b8c:	4a03      	ldr	r2, [pc, #12]	; (8002b9c <HAL_RCC_GetPCLK2Freq+0x24>)
 8002b8e:	5cd3      	ldrb	r3, [r2, r3]
 8002b90:	fa21 f303 	lsr.w	r3, r1, r3
}
 8002b94:	4618      	mov	r0, r3
 8002b96:	bd80      	pop	{r7, pc}
 8002b98:	40021000 	.word	0x40021000
 8002b9c:	080091b8 	.word	0x080091b8

08002ba0 <RCC_SetFlashLatencyFromMSIRange>:
            voltage range.
  * @param  msirange  MSI range value from RCC_MSIRANGE_0 to RCC_MSIRANGE_11
  * @retval HAL status
  */
static HAL_StatusTypeDef RCC_SetFlashLatencyFromMSIRange(uint32_t msirange)
{
 8002ba0:	b580      	push	{r7, lr}
 8002ba2:	b086      	sub	sp, #24
 8002ba4:	af00      	add	r7, sp, #0
 8002ba6:	6078      	str	r0, [r7, #4]
  uint32_t latency = FLASH_LATENCY_0;  /* default value 0WS */
 8002ba8:	2300      	movs	r3, #0
 8002baa:	617b      	str	r3, [r7, #20]
  uint32_t vos;

  if (__HAL_RCC_PWR_IS_CLK_ENABLED())
 8002bac:	4b2c      	ldr	r3, [pc, #176]	; (8002c60 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8002bae:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002bb0:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8002bb4:	2b00      	cmp	r3, #0
 8002bb6:	d003      	beq.n	8002bc0 <RCC_SetFlashLatencyFromMSIRange+0x20>
  {
    vos = HAL_PWREx_GetVoltageRange();
 8002bb8:	f7ff f87a 	bl	8001cb0 <HAL_PWREx_GetVoltageRange>
 8002bbc:	6138      	str	r0, [r7, #16]
 8002bbe:	e014      	b.n	8002bea <RCC_SetFlashLatencyFromMSIRange+0x4a>
  }
  else
  {
    __HAL_RCC_PWR_CLK_ENABLE();
 8002bc0:	4b27      	ldr	r3, [pc, #156]	; (8002c60 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8002bc2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002bc4:	4a26      	ldr	r2, [pc, #152]	; (8002c60 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8002bc6:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8002bca:	6593      	str	r3, [r2, #88]	; 0x58
 8002bcc:	4b24      	ldr	r3, [pc, #144]	; (8002c60 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8002bce:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002bd0:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8002bd4:	60fb      	str	r3, [r7, #12]
 8002bd6:	68fb      	ldr	r3, [r7, #12]
    vos = HAL_PWREx_GetVoltageRange();
 8002bd8:	f7ff f86a 	bl	8001cb0 <HAL_PWREx_GetVoltageRange>
 8002bdc:	6138      	str	r0, [r7, #16]
    __HAL_RCC_PWR_CLK_DISABLE();
 8002bde:	4b20      	ldr	r3, [pc, #128]	; (8002c60 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8002be0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002be2:	4a1f      	ldr	r2, [pc, #124]	; (8002c60 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8002be4:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8002be8:	6593      	str	r3, [r2, #88]	; 0x58
  }

  if ((vos == PWR_REGULATOR_VOLTAGE_SCALE0) || (vos == PWR_REGULATOR_VOLTAGE_SCALE1))
 8002bea:	693b      	ldr	r3, [r7, #16]
 8002bec:	2b00      	cmp	r3, #0
 8002bee:	d003      	beq.n	8002bf8 <RCC_SetFlashLatencyFromMSIRange+0x58>
 8002bf0:	693b      	ldr	r3, [r7, #16]
 8002bf2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002bf6:	d10b      	bne.n	8002c10 <RCC_SetFlashLatencyFromMSIRange+0x70>
  {
    if (msirange > RCC_MSIRANGE_8)
 8002bf8:	687b      	ldr	r3, [r7, #4]
 8002bfa:	2b80      	cmp	r3, #128	; 0x80
 8002bfc:	d919      	bls.n	8002c32 <RCC_SetFlashLatencyFromMSIRange+0x92>
    {
      /* MSI > 16Mhz */
      if (msirange > RCC_MSIRANGE_10)
 8002bfe:	687b      	ldr	r3, [r7, #4]
 8002c00:	2ba0      	cmp	r3, #160	; 0xa0
 8002c02:	d902      	bls.n	8002c0a <RCC_SetFlashLatencyFromMSIRange+0x6a>
      {
        /* MSI 48Mhz */
        latency = FLASH_LATENCY_2; /* 2WS */
 8002c04:	2302      	movs	r3, #2
 8002c06:	617b      	str	r3, [r7, #20]
    if (msirange > RCC_MSIRANGE_8)
 8002c08:	e013      	b.n	8002c32 <RCC_SetFlashLatencyFromMSIRange+0x92>
      }
      else
      {
        /* MSI 24Mhz or 32Mhz */
        latency = FLASH_LATENCY_1; /* 1WS */
 8002c0a:	2301      	movs	r3, #1
 8002c0c:	617b      	str	r3, [r7, #20]
    if (msirange > RCC_MSIRANGE_8)
 8002c0e:	e010      	b.n	8002c32 <RCC_SetFlashLatencyFromMSIRange+0x92>
    }
    /* else MSI <= 16Mhz default FLASH_LATENCY_0 0WS */
  }
  else
  {
    if (msirange > RCC_MSIRANGE_8)
 8002c10:	687b      	ldr	r3, [r7, #4]
 8002c12:	2b80      	cmp	r3, #128	; 0x80
 8002c14:	d902      	bls.n	8002c1c <RCC_SetFlashLatencyFromMSIRange+0x7c>
    {
      /* MSI > 16Mhz */
      latency = FLASH_LATENCY_3; /* 3WS */
 8002c16:	2303      	movs	r3, #3
 8002c18:	617b      	str	r3, [r7, #20]
 8002c1a:	e00a      	b.n	8002c32 <RCC_SetFlashLatencyFromMSIRange+0x92>
    }
    else
    {
      if (msirange == RCC_MSIRANGE_8)
 8002c1c:	687b      	ldr	r3, [r7, #4]
 8002c1e:	2b80      	cmp	r3, #128	; 0x80
 8002c20:	d102      	bne.n	8002c28 <RCC_SetFlashLatencyFromMSIRange+0x88>
      {
        /* MSI 16Mhz */
        latency = FLASH_LATENCY_2; /* 2WS */
 8002c22:	2302      	movs	r3, #2
 8002c24:	617b      	str	r3, [r7, #20]
 8002c26:	e004      	b.n	8002c32 <RCC_SetFlashLatencyFromMSIRange+0x92>
      }
      else if (msirange == RCC_MSIRANGE_7)
 8002c28:	687b      	ldr	r3, [r7, #4]
 8002c2a:	2b70      	cmp	r3, #112	; 0x70
 8002c2c:	d101      	bne.n	8002c32 <RCC_SetFlashLatencyFromMSIRange+0x92>
      {
        /* MSI 8Mhz */
        latency = FLASH_LATENCY_1; /* 1WS */
 8002c2e:	2301      	movs	r3, #1
 8002c30:	617b      	str	r3, [r7, #20]
        /* MSI < 8Mhz default FLASH_LATENCY_0 0WS */
      }
    }
  }

  __HAL_FLASH_SET_LATENCY(latency);
 8002c32:	4b0c      	ldr	r3, [pc, #48]	; (8002c64 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8002c34:	681b      	ldr	r3, [r3, #0]
 8002c36:	f023 020f 	bic.w	r2, r3, #15
 8002c3a:	490a      	ldr	r1, [pc, #40]	; (8002c64 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8002c3c:	697b      	ldr	r3, [r7, #20]
 8002c3e:	4313      	orrs	r3, r2
 8002c40:	600b      	str	r3, [r1, #0]

  /* Check that the new number of wait states is taken into account to access the Flash
     memory by reading the FLASH_ACR register */
  if ((FLASH->ACR & FLASH_ACR_LATENCY) != latency)
 8002c42:	4b08      	ldr	r3, [pc, #32]	; (8002c64 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8002c44:	681b      	ldr	r3, [r3, #0]
 8002c46:	f003 030f 	and.w	r3, r3, #15
 8002c4a:	697a      	ldr	r2, [r7, #20]
 8002c4c:	429a      	cmp	r2, r3
 8002c4e:	d001      	beq.n	8002c54 <RCC_SetFlashLatencyFromMSIRange+0xb4>
  {
    return HAL_ERROR;
 8002c50:	2301      	movs	r3, #1
 8002c52:	e000      	b.n	8002c56 <RCC_SetFlashLatencyFromMSIRange+0xb6>
  }

  return HAL_OK;
 8002c54:	2300      	movs	r3, #0
}
 8002c56:	4618      	mov	r0, r3
 8002c58:	3718      	adds	r7, #24
 8002c5a:	46bd      	mov	sp, r7
 8002c5c:	bd80      	pop	{r7, pc}
 8002c5e:	bf00      	nop
 8002c60:	40021000 	.word	0x40021000
 8002c64:	40022000 	.word	0x40022000

08002c68 <RCC_GetSysClockFreqFromPLLSource>:
/**
  * @brief  Compute SYSCLK frequency based on PLL SYSCLK source.
  * @retval SYSCLK frequency
  */
static uint32_t RCC_GetSysClockFreqFromPLLSource(void)
{
 8002c68:	b480      	push	{r7}
 8002c6a:	b087      	sub	sp, #28
 8002c6c:	af00      	add	r7, sp, #0
  uint32_t msirange = 0U;
 8002c6e:	2300      	movs	r3, #0
 8002c70:	617b      	str	r3, [r7, #20]
  uint32_t pllvco, pllsource, pllr, pllm, sysclockfreq;    /* no init needed */

  if (__HAL_RCC_GET_PLL_OSCSOURCE() == RCC_PLLSOURCE_MSI)
 8002c72:	4b35      	ldr	r3, [pc, #212]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002c74:	68db      	ldr	r3, [r3, #12]
 8002c76:	f003 0303 	and.w	r3, r3, #3
 8002c7a:	2b01      	cmp	r3, #1
 8002c7c:	d118      	bne.n	8002cb0 <RCC_GetSysClockFreqFromPLLSource+0x48>
  {
    /* Get MSI range source */
    if (READ_BIT(RCC->CR, RCC_CR_MSIRGSEL) == 0U)
 8002c7e:	4b32      	ldr	r3, [pc, #200]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002c80:	681b      	ldr	r3, [r3, #0]
 8002c82:	f003 0308 	and.w	r3, r3, #8
 8002c86:	2b00      	cmp	r3, #0
 8002c88:	d107      	bne.n	8002c9a <RCC_GetSysClockFreqFromPLLSource+0x32>
    {
      /* MSISRANGE from RCC_CSR applies */
      msirange = READ_BIT(RCC->CSR, RCC_CSR_MSISRANGE) >> RCC_CSR_MSISRANGE_Pos;
 8002c8a:	4b2f      	ldr	r3, [pc, #188]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002c8c:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8002c90:	0a1b      	lsrs	r3, r3, #8
 8002c92:	f003 030f 	and.w	r3, r3, #15
 8002c96:	617b      	str	r3, [r7, #20]
 8002c98:	e005      	b.n	8002ca6 <RCC_GetSysClockFreqFromPLLSource+0x3e>
    }
    else
    {
      /* MSIRANGE from RCC_CR applies */
      msirange = READ_BIT(RCC->CR, RCC_CR_MSIRANGE) >> RCC_CR_MSIRANGE_Pos;
 8002c9a:	4b2b      	ldr	r3, [pc, #172]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002c9c:	681b      	ldr	r3, [r3, #0]
 8002c9e:	091b      	lsrs	r3, r3, #4
 8002ca0:	f003 030f 	and.w	r3, r3, #15
 8002ca4:	617b      	str	r3, [r7, #20]
    }
    /*MSI frequency range in Hz*/
    msirange = MSIRangeTable[msirange];
 8002ca6:	4a29      	ldr	r2, [pc, #164]	; (8002d4c <RCC_GetSysClockFreqFromPLLSource+0xe4>)
 8002ca8:	697b      	ldr	r3, [r7, #20]
 8002caa:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8002cae:	617b      	str	r3, [r7, #20]
  }

  /* PLL_VCO = (HSE_VALUE or HSI_VALUE or MSI_VALUE/ PLLM) * PLLN
     SYSCLK = PLL_VCO / PLLR
   */
  pllsource = READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLSRC);
 8002cb0:	4b25      	ldr	r3, [pc, #148]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002cb2:	68db      	ldr	r3, [r3, #12]
 8002cb4:	f003 0303 	and.w	r3, r3, #3
 8002cb8:	60fb      	str	r3, [r7, #12]
  pllm = (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM) >> RCC_PLLCFGR_PLLM_Pos) + 1U ;
 8002cba:	4b23      	ldr	r3, [pc, #140]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002cbc:	68db      	ldr	r3, [r3, #12]
 8002cbe:	091b      	lsrs	r3, r3, #4
 8002cc0:	f003 030f 	and.w	r3, r3, #15
 8002cc4:	3301      	adds	r3, #1
 8002cc6:	60bb      	str	r3, [r7, #8]

  switch (pllsource)
 8002cc8:	68fb      	ldr	r3, [r7, #12]
 8002cca:	2b02      	cmp	r3, #2
 8002ccc:	d002      	beq.n	8002cd4 <RCC_GetSysClockFreqFromPLLSource+0x6c>
 8002cce:	2b03      	cmp	r3, #3
 8002cd0:	d00d      	beq.n	8002cee <RCC_GetSysClockFreqFromPLLSource+0x86>
 8002cd2:	e019      	b.n	8002d08 <RCC_GetSysClockFreqFromPLLSource+0xa0>
  {
    case RCC_PLLSOURCE_HSI:  /* HSI used as PLL clock source */
      pllvco = (HSI_VALUE / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
 8002cd4:	4a1e      	ldr	r2, [pc, #120]	; (8002d50 <RCC_GetSysClockFreqFromPLLSource+0xe8>)
 8002cd6:	68bb      	ldr	r3, [r7, #8]
 8002cd8:	fbb2 f3f3 	udiv	r3, r2, r3
 8002cdc:	4a1a      	ldr	r2, [pc, #104]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002cde:	68d2      	ldr	r2, [r2, #12]
 8002ce0:	0a12      	lsrs	r2, r2, #8
 8002ce2:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8002ce6:	fb02 f303 	mul.w	r3, r2, r3
 8002cea:	613b      	str	r3, [r7, #16]
      break;
 8002cec:	e019      	b.n	8002d22 <RCC_GetSysClockFreqFromPLLSource+0xba>

    case RCC_PLLSOURCE_HSE:  /* HSE used as PLL clock source */
      pllvco = (HSE_VALUE / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
 8002cee:	4a18      	ldr	r2, [pc, #96]	; (8002d50 <RCC_GetSysClockFreqFromPLLSource+0xe8>)
 8002cf0:	68bb      	ldr	r3, [r7, #8]
 8002cf2:	fbb2 f3f3 	udiv	r3, r2, r3
 8002cf6:	4a14      	ldr	r2, [pc, #80]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002cf8:	68d2      	ldr	r2, [r2, #12]
 8002cfa:	0a12      	lsrs	r2, r2, #8
 8002cfc:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8002d00:	fb02 f303 	mul.w	r3, r2, r3
 8002d04:	613b      	str	r3, [r7, #16]
      break;
 8002d06:	e00c      	b.n	8002d22 <RCC_GetSysClockFreqFromPLLSource+0xba>

    case RCC_PLLSOURCE_MSI:  /* MSI used as PLL clock source */
    default:
      pllvco = (msirange / pllm) * (READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLN) >> RCC_PLLCFGR_PLLN_Pos);
 8002d08:	697a      	ldr	r2, [r7, #20]
 8002d0a:	68bb      	ldr	r3, [r7, #8]
 8002d0c:	fbb2 f3f3 	udiv	r3, r2, r3
 8002d10:	4a0d      	ldr	r2, [pc, #52]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002d12:	68d2      	ldr	r2, [r2, #12]
 8002d14:	0a12      	lsrs	r2, r2, #8
 8002d16:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8002d1a:	fb02 f303 	mul.w	r3, r2, r3
 8002d1e:	613b      	str	r3, [r7, #16]
      break;
 8002d20:	bf00      	nop
  }

  pllr = ((READ_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLR) >> RCC_PLLCFGR_PLLR_Pos) + 1U) * 2U;
 8002d22:	4b09      	ldr	r3, [pc, #36]	; (8002d48 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8002d24:	68db      	ldr	r3, [r3, #12]
 8002d26:	0e5b      	lsrs	r3, r3, #25
 8002d28:	f003 0303 	and.w	r3, r3, #3
 8002d2c:	3301      	adds	r3, #1
 8002d2e:	005b      	lsls	r3, r3, #1
 8002d30:	607b      	str	r3, [r7, #4]
  sysclockfreq = pllvco / pllr;
 8002d32:	693a      	ldr	r2, [r7, #16]
 8002d34:	687b      	ldr	r3, [r7, #4]
 8002d36:	fbb2 f3f3 	udiv	r3, r2, r3
 8002d3a:	603b      	str	r3, [r7, #0]

  return sysclockfreq;
 8002d3c:	683b      	ldr	r3, [r7, #0]
}
 8002d3e:	4618      	mov	r0, r3
 8002d40:	371c      	adds	r7, #28
 8002d42:	46bd      	mov	sp, r7
 8002d44:	bc80      	pop	{r7}
 8002d46:	4770      	bx	lr
 8002d48:	40021000 	.word	0x40021000
 8002d4c:	080091c0 	.word	0x080091c0
 8002d50:	00f42400 	.word	0x00f42400

08002d54 <HAL_RCCEx_PeriphCLKConfig>:
  *         the RTC clock source: in this case the access to Backup domain is enabled.
  *
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit)
{
 8002d54:	b580      	push	{r7, lr}
 8002d56:	b088      	sub	sp, #32
 8002d58:	af00      	add	r7, sp, #0
 8002d5a:	6078      	str	r0, [r7, #4]
  HAL_StatusTypeDef ret = HAL_OK;      /* Intermediate status */
 8002d5c:	2300      	movs	r3, #0
 8002d5e:	77fb      	strb	r3, [r7, #31]
  HAL_StatusTypeDef status = HAL_OK;   /* Final status */
 8002d60:	2300      	movs	r3, #0
 8002d62:	77bb      	strb	r3, [r7, #30]

  /* Check the parameters */
  assert_param(IS_RCC_PERIPHCLOCK(PeriphClkInit->PeriphClockSelection));

  /*-------------------------- SAI1 clock source configuration ---------------------*/
  if ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI1) == RCC_PERIPHCLK_SAI1))
 8002d64:	687b      	ldr	r3, [r7, #4]
 8002d66:	681b      	ldr	r3, [r3, #0]
 8002d68:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 8002d6c:	2b00      	cmp	r3, #0
 8002d6e:	d03d      	beq.n	8002dec <HAL_RCCEx_PeriphCLKConfig+0x98>
  {
    /* Check the parameters */
    assert_param(IS_RCC_SAI1CLK(PeriphClkInit->Sai1ClockSelection));

    switch (PeriphClkInit->Sai1ClockSelection)
 8002d70:	687b      	ldr	r3, [r7, #4]
 8002d72:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 8002d74:	2b40      	cmp	r3, #64	; 0x40
 8002d76:	d00b      	beq.n	8002d90 <HAL_RCCEx_PeriphCLKConfig+0x3c>
 8002d78:	2b40      	cmp	r3, #64	; 0x40
 8002d7a:	d804      	bhi.n	8002d86 <HAL_RCCEx_PeriphCLKConfig+0x32>
 8002d7c:	2b00      	cmp	r3, #0
 8002d7e:	d00e      	beq.n	8002d9e <HAL_RCCEx_PeriphCLKConfig+0x4a>
 8002d80:	2b20      	cmp	r3, #32
 8002d82:	d015      	beq.n	8002db0 <HAL_RCCEx_PeriphCLKConfig+0x5c>
 8002d84:	e01d      	b.n	8002dc2 <HAL_RCCEx_PeriphCLKConfig+0x6e>
 8002d86:	2b60      	cmp	r3, #96	; 0x60
 8002d88:	d01e      	beq.n	8002dc8 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8002d8a:	2b80      	cmp	r3, #128	; 0x80
 8002d8c:	d01c      	beq.n	8002dc8 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8002d8e:	e018      	b.n	8002dc2 <HAL_RCCEx_PeriphCLKConfig+0x6e>
    {
      case RCC_SAI1CLKSOURCE_PLL:      /* PLL is used as clock source for SAI1*/
        /* Enable SAI Clock output generated from System PLL . */
        __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_SAI3CLK);
 8002d90:	4b8c      	ldr	r3, [pc, #560]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002d92:	68db      	ldr	r3, [r3, #12]
 8002d94:	4a8b      	ldr	r2, [pc, #556]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002d96:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8002d9a:	60d3      	str	r3, [r2, #12]
        /* SAI1 clock source config set later after clock selection check */
        break;
 8002d9c:	e015      	b.n	8002dca <HAL_RCCEx_PeriphCLKConfig+0x76>

      case RCC_SAI1CLKSOURCE_PLLSAI1:  /* PLLSAI1 is used as clock source for SAI1*/
        /* PLLSAI1 input clock, parameters M, N & P configuration and clock output (PLLSAI1ClockOut) */
        ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_P_UPDATE);
 8002d9e:	687b      	ldr	r3, [r7, #4]
 8002da0:	3304      	adds	r3, #4
 8002da2:	2100      	movs	r1, #0
 8002da4:	4618      	mov	r0, r3
 8002da6:	f000 fb4f 	bl	8003448 <RCCEx_PLLSAI1_Config>
 8002daa:	4603      	mov	r3, r0
 8002dac:	77fb      	strb	r3, [r7, #31]
        /* SAI1 clock source config set later after clock selection check */
        break;
 8002dae:	e00c      	b.n	8002dca <HAL_RCCEx_PeriphCLKConfig+0x76>

      case RCC_SAI1CLKSOURCE_PLLSAI2:  /* PLLSAI2 is used as clock source for SAI1*/
        /* PLLSAI2 input clock, parameters M, N & P configuration clock output (PLLSAI2ClockOut) */
        ret = RCCEx_PLLSAI2_Config(&(PeriphClkInit->PLLSAI2), DIVIDER_P_UPDATE);
 8002db0:	687b      	ldr	r3, [r7, #4]
 8002db2:	3320      	adds	r3, #32
 8002db4:	2100      	movs	r1, #0
 8002db6:	4618      	mov	r0, r3
 8002db8:	f000 fc28 	bl	800360c <RCCEx_PLLSAI2_Config>
 8002dbc:	4603      	mov	r3, r0
 8002dbe:	77fb      	strb	r3, [r7, #31]
        /* SAI1 clock source config set later after clock selection check */
        break;
 8002dc0:	e003      	b.n	8002dca <HAL_RCCEx_PeriphCLKConfig+0x76>
      case RCC_SAI1CLKSOURCE_HSI:      /* HSI is used as source of SAI1 clock*/
        /* SAI1 clock source config set later after clock selection check */
        break;

      default:
        ret = HAL_ERROR;
 8002dc2:	2301      	movs	r3, #1
 8002dc4:	77fb      	strb	r3, [r7, #31]
        break;
 8002dc6:	e000      	b.n	8002dca <HAL_RCCEx_PeriphCLKConfig+0x76>
        break;
 8002dc8:	bf00      	nop
    }

    if (ret == HAL_OK)
 8002dca:	7ffb      	ldrb	r3, [r7, #31]
 8002dcc:	2b00      	cmp	r3, #0
 8002dce:	d10b      	bne.n	8002de8 <HAL_RCCEx_PeriphCLKConfig+0x94>
    {
      /* Set the source of SAI1 clock*/
      __HAL_RCC_SAI1_CONFIG(PeriphClkInit->Sai1ClockSelection);
 8002dd0:	4b7c      	ldr	r3, [pc, #496]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002dd2:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8002dd6:	f023 02e0 	bic.w	r2, r3, #224	; 0xe0
 8002dda:	687b      	ldr	r3, [r7, #4]
 8002ddc:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 8002dde:	4979      	ldr	r1, [pc, #484]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002de0:	4313      	orrs	r3, r2
 8002de2:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 8002de6:	e001      	b.n	8002dec <HAL_RCCEx_PeriphCLKConfig+0x98>
    }
    else
    {
      /* set overall return value */
      status = ret;
 8002de8:	7ffb      	ldrb	r3, [r7, #31]
 8002dea:	77bb      	strb	r3, [r7, #30]
    }
  }

  /*-------------------------- SAI2 clock source configuration ---------------------*/
  if ((((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SAI2) == RCC_PERIPHCLK_SAI2))
 8002dec:	687b      	ldr	r3, [r7, #4]
 8002dee:	681b      	ldr	r3, [r3, #0]
 8002df0:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8002df4:	2b00      	cmp	r3, #0
 8002df6:	d042      	beq.n	8002e7e <HAL_RCCEx_PeriphCLKConfig+0x12a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_SAI2CLK(PeriphClkInit->Sai2ClockSelection));

    switch (PeriphClkInit->Sai2ClockSelection)
 8002df8:	687b      	ldr	r3, [r7, #4]
 8002dfa:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8002dfc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002e00:	d00f      	beq.n	8002e22 <HAL_RCCEx_PeriphCLKConfig+0xce>
 8002e02:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8002e06:	d805      	bhi.n	8002e14 <HAL_RCCEx_PeriphCLKConfig+0xc0>
 8002e08:	2b00      	cmp	r3, #0
 8002e0a:	d011      	beq.n	8002e30 <HAL_RCCEx_PeriphCLKConfig+0xdc>
 8002e0c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002e10:	d017      	beq.n	8002e42 <HAL_RCCEx_PeriphCLKConfig+0xee>
 8002e12:	e01f      	b.n	8002e54 <HAL_RCCEx_PeriphCLKConfig+0x100>
 8002e14:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8002e18:	d01f      	beq.n	8002e5a <HAL_RCCEx_PeriphCLKConfig+0x106>
 8002e1a:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8002e1e:	d01c      	beq.n	8002e5a <HAL_RCCEx_PeriphCLKConfig+0x106>
 8002e20:	e018      	b.n	8002e54 <HAL_RCCEx_PeriphCLKConfig+0x100>
    {
      case RCC_SAI2CLKSOURCE_PLL:      /* PLL is used as clock source for SAI2*/
        /* Enable SAI Clock output generated from System PLL . */
        __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_SAI3CLK);
 8002e22:	4b68      	ldr	r3, [pc, #416]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002e24:	68db      	ldr	r3, [r3, #12]
 8002e26:	4a67      	ldr	r2, [pc, #412]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002e28:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8002e2c:	60d3      	str	r3, [r2, #12]
        /* SAI2 clock source config set later after clock selection check */
        break;
 8002e2e:	e015      	b.n	8002e5c <HAL_RCCEx_PeriphCLKConfig+0x108>

      case RCC_SAI2CLKSOURCE_PLLSAI1: /* PLLSAI1 is used as clock source for SAI2*/
        /* PLLSAI1 input clock, parameters M, N & P configuration and clock output (PLLSAI1ClockOut) */
        ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_P_UPDATE);
 8002e30:	687b      	ldr	r3, [r7, #4]
 8002e32:	3304      	adds	r3, #4
 8002e34:	2100      	movs	r1, #0
 8002e36:	4618      	mov	r0, r3
 8002e38:	f000 fb06 	bl	8003448 <RCCEx_PLLSAI1_Config>
 8002e3c:	4603      	mov	r3, r0
 8002e3e:	77fb      	strb	r3, [r7, #31]
        /* SAI2 clock source config set later after clock selection check */
        break;
 8002e40:	e00c      	b.n	8002e5c <HAL_RCCEx_PeriphCLKConfig+0x108>

      case RCC_SAI2CLKSOURCE_PLLSAI2:  /* PLLSAI2 is used as clock source for SAI2*/
        /* PLLSAI2 input clock, parameters M, N & P configuration and clock output (PLLSAI2ClockOut) */
        ret = RCCEx_PLLSAI2_Config(&(PeriphClkInit->PLLSAI2), DIVIDER_P_UPDATE);
 8002e42:	687b      	ldr	r3, [r7, #4]
 8002e44:	3320      	adds	r3, #32
 8002e46:	2100      	movs	r1, #0
 8002e48:	4618      	mov	r0, r3
 8002e4a:	f000 fbdf 	bl	800360c <RCCEx_PLLSAI2_Config>
 8002e4e:	4603      	mov	r3, r0
 8002e50:	77fb      	strb	r3, [r7, #31]
        /* SAI2 clock source config set later after clock selection check */
        break;
 8002e52:	e003      	b.n	8002e5c <HAL_RCCEx_PeriphCLKConfig+0x108>
      case RCC_SAI2CLKSOURCE_HSI:      /* HSI is used as source of SAI2 clock*/
        /* SAI2 clock source config set later after clock selection check */
        break;

      default:
        ret = HAL_ERROR;
 8002e54:	2301      	movs	r3, #1
 8002e56:	77fb      	strb	r3, [r7, #31]
        break;
 8002e58:	e000      	b.n	8002e5c <HAL_RCCEx_PeriphCLKConfig+0x108>
        break;
 8002e5a:	bf00      	nop
    }

    if (ret == HAL_OK)
 8002e5c:	7ffb      	ldrb	r3, [r7, #31]
 8002e5e:	2b00      	cmp	r3, #0
 8002e60:	d10b      	bne.n	8002e7a <HAL_RCCEx_PeriphCLKConfig+0x126>
    {
      /* Set the source of SAI2 clock*/
      __HAL_RCC_SAI2_CONFIG(PeriphClkInit->Sai2ClockSelection);
 8002e62:	4b58      	ldr	r3, [pc, #352]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002e64:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8002e68:	f423 62e0 	bic.w	r2, r3, #1792	; 0x700
 8002e6c:	687b      	ldr	r3, [r7, #4]
 8002e6e:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8002e70:	4954      	ldr	r1, [pc, #336]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002e72:	4313      	orrs	r3, r2
 8002e74:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 8002e78:	e001      	b.n	8002e7e <HAL_RCCEx_PeriphCLKConfig+0x12a>
    }
    else
    {
      /* set overall return value */
      status = ret;
 8002e7a:	7ffb      	ldrb	r3, [r7, #31]
 8002e7c:	77bb      	strb	r3, [r7, #30]
    }
  }

  /*-------------------------- RTC clock source configuration ----------------------*/
  if ((PeriphClkInit->PeriphClockSelection & RCC_PERIPHCLK_RTC) == RCC_PERIPHCLK_RTC)
 8002e7e:	687b      	ldr	r3, [r7, #4]
 8002e80:	681b      	ldr	r3, [r3, #0]
 8002e82:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8002e86:	2b00      	cmp	r3, #0
 8002e88:	f000 80ab 	beq.w	8002fe2 <HAL_RCCEx_PeriphCLKConfig+0x28e>
  {
    FlagStatus       pwrclkchanged = RESET;
 8002e8c:	2300      	movs	r3, #0
 8002e8e:	75fb      	strb	r3, [r7, #23]

    /* Check for RTC Parameters used to output RTCCLK */
    assert_param(IS_RCC_RTCCLKSOURCE(PeriphClkInit->RTCClockSelection));

    /* Enable Power Clock */
    if (__HAL_RCC_PWR_IS_CLK_DISABLED())
 8002e90:	4b4c      	ldr	r3, [pc, #304]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002e92:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002e94:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8002e98:	2b00      	cmp	r3, #0
 8002e9a:	d10d      	bne.n	8002eb8 <HAL_RCCEx_PeriphCLKConfig+0x164>
    {
      __HAL_RCC_PWR_CLK_ENABLE();
 8002e9c:	4b49      	ldr	r3, [pc, #292]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002e9e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002ea0:	4a48      	ldr	r2, [pc, #288]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002ea2:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8002ea6:	6593      	str	r3, [r2, #88]	; 0x58
 8002ea8:	4b46      	ldr	r3, [pc, #280]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002eaa:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002eac:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8002eb0:	60fb      	str	r3, [r7, #12]
 8002eb2:	68fb      	ldr	r3, [r7, #12]
      pwrclkchanged = SET;
 8002eb4:	2301      	movs	r3, #1
 8002eb6:	75fb      	strb	r3, [r7, #23]
    }

    /* Enable write access to Backup domain */
    SET_BIT(PWR->CR1, PWR_CR1_DBP);
 8002eb8:	4b43      	ldr	r3, [pc, #268]	; (8002fc8 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8002eba:	681b      	ldr	r3, [r3, #0]
 8002ebc:	4a42      	ldr	r2, [pc, #264]	; (8002fc8 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8002ebe:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002ec2:	6013      	str	r3, [r2, #0]

    /* Wait for Backup domain Write protection disable */
    tickstart = HAL_GetTick();
 8002ec4:	f7fe fbd4 	bl	8001670 <HAL_GetTick>
 8002ec8:	6138      	str	r0, [r7, #16]

    while ((PWR->CR1 & PWR_CR1_DBP) == 0U)
 8002eca:	e00f      	b.n	8002eec <HAL_RCCEx_PeriphCLKConfig+0x198>
    {
      if ((HAL_GetTick() - tickstart) > RCC_DBP_TIMEOUT_VALUE)
 8002ecc:	f7fe fbd0 	bl	8001670 <HAL_GetTick>
 8002ed0:	4602      	mov	r2, r0
 8002ed2:	693b      	ldr	r3, [r7, #16]
 8002ed4:	1ad3      	subs	r3, r2, r3
 8002ed6:	2b02      	cmp	r3, #2
 8002ed8:	d908      	bls.n	8002eec <HAL_RCCEx_PeriphCLKConfig+0x198>
      {
        /* New check to avoid false timeout detection in case of preemption */
        if ((PWR->CR1 & PWR_CR1_DBP) == 0U)
 8002eda:	4b3b      	ldr	r3, [pc, #236]	; (8002fc8 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8002edc:	681b      	ldr	r3, [r3, #0]
 8002ede:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002ee2:	2b00      	cmp	r3, #0
 8002ee4:	d109      	bne.n	8002efa <HAL_RCCEx_PeriphCLKConfig+0x1a6>
        {
          ret = HAL_TIMEOUT;
 8002ee6:	2303      	movs	r3, #3
 8002ee8:	77fb      	strb	r3, [r7, #31]
        }
        break;
 8002eea:	e006      	b.n	8002efa <HAL_RCCEx_PeriphCLKConfig+0x1a6>
    while ((PWR->CR1 & PWR_CR1_DBP) == 0U)
 8002eec:	4b36      	ldr	r3, [pc, #216]	; (8002fc8 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8002eee:	681b      	ldr	r3, [r3, #0]
 8002ef0:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002ef4:	2b00      	cmp	r3, #0
 8002ef6:	d0e9      	beq.n	8002ecc <HAL_RCCEx_PeriphCLKConfig+0x178>
 8002ef8:	e000      	b.n	8002efc <HAL_RCCEx_PeriphCLKConfig+0x1a8>
        break;
 8002efa:	bf00      	nop
      }
    }

    if (ret == HAL_OK)
 8002efc:	7ffb      	ldrb	r3, [r7, #31]
 8002efe:	2b00      	cmp	r3, #0
 8002f00:	d164      	bne.n	8002fcc <HAL_RCCEx_PeriphCLKConfig+0x278>
    {
      /* Reset the Backup domain only if the RTC Clock source selection is modified from default */
      tmpregister = READ_BIT(RCC->BDCR, RCC_BDCR_RTCSEL);
 8002f02:	4b30      	ldr	r3, [pc, #192]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f04:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f08:	f403 7340 	and.w	r3, r3, #768	; 0x300
 8002f0c:	61bb      	str	r3, [r7, #24]

      if ((tmpregister != RCC_RTCCLKSOURCE_NONE) && (tmpregister != PeriphClkInit->RTCClockSelection))
 8002f0e:	69bb      	ldr	r3, [r7, #24]
 8002f10:	2b00      	cmp	r3, #0
 8002f12:	d01f      	beq.n	8002f54 <HAL_RCCEx_PeriphCLKConfig+0x200>
 8002f14:	687b      	ldr	r3, [r7, #4]
 8002f16:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f1a:	69ba      	ldr	r2, [r7, #24]
 8002f1c:	429a      	cmp	r2, r3
 8002f1e:	d019      	beq.n	8002f54 <HAL_RCCEx_PeriphCLKConfig+0x200>
      {
        /* Store the content of BDCR register before the reset of Backup Domain */
        tmpregister = READ_BIT(RCC->BDCR, ~(RCC_BDCR_RTCSEL));
 8002f20:	4b28      	ldr	r3, [pc, #160]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f22:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f26:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002f2a:	61bb      	str	r3, [r7, #24]
        /* RTC Clock selection can be changed only if the Backup Domain is reset */
        __HAL_RCC_BACKUPRESET_FORCE();
 8002f2c:	4b25      	ldr	r3, [pc, #148]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f2e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f32:	4a24      	ldr	r2, [pc, #144]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f34:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8002f38:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
        __HAL_RCC_BACKUPRESET_RELEASE();
 8002f3c:	4b21      	ldr	r3, [pc, #132]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f3e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f42:	4a20      	ldr	r2, [pc, #128]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f44:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8002f48:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
        /* Restore the Content of BDCR register */
        RCC->BDCR = tmpregister;
 8002f4c:	4a1d      	ldr	r2, [pc, #116]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f4e:	69bb      	ldr	r3, [r7, #24]
 8002f50:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
      }

      /* Wait for LSE reactivation if LSE was enable prior to Backup Domain reset */
      if (HAL_IS_BIT_SET(tmpregister, RCC_BDCR_LSEON))
 8002f54:	69bb      	ldr	r3, [r7, #24]
 8002f56:	f003 0301 	and.w	r3, r3, #1
 8002f5a:	2b00      	cmp	r3, #0
 8002f5c:	d01f      	beq.n	8002f9e <HAL_RCCEx_PeriphCLKConfig+0x24a>
      {
        /* Get Start Tick*/
        tickstart = HAL_GetTick();
 8002f5e:	f7fe fb87 	bl	8001670 <HAL_GetTick>
 8002f62:	6138      	str	r0, [r7, #16]

        /* Wait till LSE is ready */
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 8002f64:	e012      	b.n	8002f8c <HAL_RCCEx_PeriphCLKConfig+0x238>
        {
          if ((HAL_GetTick() - tickstart) > RCC_LSE_TIMEOUT_VALUE)
 8002f66:	f7fe fb83 	bl	8001670 <HAL_GetTick>
 8002f6a:	4602      	mov	r2, r0
 8002f6c:	693b      	ldr	r3, [r7, #16]
 8002f6e:	1ad3      	subs	r3, r2, r3
 8002f70:	f241 3288 	movw	r2, #5000	; 0x1388
 8002f74:	4293      	cmp	r3, r2
 8002f76:	d909      	bls.n	8002f8c <HAL_RCCEx_PeriphCLKConfig+0x238>
          {
            /* New check to avoid false timeout detection in case of preemption */
            if (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 8002f78:	4b12      	ldr	r3, [pc, #72]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f7a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f7e:	f003 0302 	and.w	r3, r3, #2
 8002f82:	2b00      	cmp	r3, #0
 8002f84:	d10a      	bne.n	8002f9c <HAL_RCCEx_PeriphCLKConfig+0x248>
            {
              ret = HAL_TIMEOUT;
 8002f86:	2303      	movs	r3, #3
 8002f88:	77fb      	strb	r3, [r7, #31]
            }
            break;
 8002f8a:	e007      	b.n	8002f9c <HAL_RCCEx_PeriphCLKConfig+0x248>
        while (READ_BIT(RCC->BDCR, RCC_BDCR_LSERDY) == 0U)
 8002f8c:	4b0d      	ldr	r3, [pc, #52]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002f8e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002f92:	f003 0302 	and.w	r3, r3, #2
 8002f96:	2b00      	cmp	r3, #0
 8002f98:	d0e5      	beq.n	8002f66 <HAL_RCCEx_PeriphCLKConfig+0x212>
 8002f9a:	e000      	b.n	8002f9e <HAL_RCCEx_PeriphCLKConfig+0x24a>
            break;
 8002f9c:	bf00      	nop
          }
        }
      }

      if (ret == HAL_OK)
 8002f9e:	7ffb      	ldrb	r3, [r7, #31]
 8002fa0:	2b00      	cmp	r3, #0
 8002fa2:	d10c      	bne.n	8002fbe <HAL_RCCEx_PeriphCLKConfig+0x26a>
      {
        /* Apply new RTC clock source selection */
        __HAL_RCC_RTC_CONFIG(PeriphClkInit->RTCClockSelection);
 8002fa4:	4b07      	ldr	r3, [pc, #28]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002fa6:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002faa:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002fae:	687b      	ldr	r3, [r7, #4]
 8002fb0:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8002fb4:	4903      	ldr	r1, [pc, #12]	; (8002fc4 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8002fb6:	4313      	orrs	r3, r2
 8002fb8:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
 8002fbc:	e008      	b.n	8002fd0 <HAL_RCCEx_PeriphCLKConfig+0x27c>
      }
      else
      {
        /* set overall return value */
        status = ret;
 8002fbe:	7ffb      	ldrb	r3, [r7, #31]
 8002fc0:	77bb      	strb	r3, [r7, #30]
 8002fc2:	e005      	b.n	8002fd0 <HAL_RCCEx_PeriphCLKConfig+0x27c>
 8002fc4:	40021000 	.word	0x40021000
 8002fc8:	40007000 	.word	0x40007000
      }
    }
    else
    {
      /* set overall return value */
      status = ret;
 8002fcc:	7ffb      	ldrb	r3, [r7, #31]
 8002fce:	77bb      	strb	r3, [r7, #30]
    }

    /* Restore clock configuration if changed */
    if (pwrclkchanged == SET)
 8002fd0:	7dfb      	ldrb	r3, [r7, #23]
 8002fd2:	2b01      	cmp	r3, #1
 8002fd4:	d105      	bne.n	8002fe2 <HAL_RCCEx_PeriphCLKConfig+0x28e>
    {
      __HAL_RCC_PWR_CLK_DISABLE();
 8002fd6:	4bae      	ldr	r3, [pc, #696]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8002fd8:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8002fda:	4aad      	ldr	r2, [pc, #692]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8002fdc:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8002fe0:	6593      	str	r3, [r2, #88]	; 0x58
    }
  }

  /*-------------------------- USART1 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USART1) == RCC_PERIPHCLK_USART1)
 8002fe2:	687b      	ldr	r3, [r7, #4]
 8002fe4:	681b      	ldr	r3, [r3, #0]
 8002fe6:	f003 0301 	and.w	r3, r3, #1
 8002fea:	2b00      	cmp	r3, #0
 8002fec:	d00a      	beq.n	8003004 <HAL_RCCEx_PeriphCLKConfig+0x2b0>
  {
    /* Check the parameters */
    assert_param(IS_RCC_USART1CLKSOURCE(PeriphClkInit->Usart1ClockSelection));

    /* Configure the USART1 clock source */
    __HAL_RCC_USART1_CONFIG(PeriphClkInit->Usart1ClockSelection);
 8002fee:	4ba8      	ldr	r3, [pc, #672]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8002ff0:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8002ff4:	f023 0203 	bic.w	r2, r3, #3
 8002ff8:	687b      	ldr	r3, [r7, #4]
 8002ffa:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8002ffc:	49a4      	ldr	r1, [pc, #656]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8002ffe:	4313      	orrs	r3, r2
 8003000:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- USART2 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USART2) == RCC_PERIPHCLK_USART2)
 8003004:	687b      	ldr	r3, [r7, #4]
 8003006:	681b      	ldr	r3, [r3, #0]
 8003008:	f003 0302 	and.w	r3, r3, #2
 800300c:	2b00      	cmp	r3, #0
 800300e:	d00a      	beq.n	8003026 <HAL_RCCEx_PeriphCLKConfig+0x2d2>
  {
    /* Check the parameters */
    assert_param(IS_RCC_USART2CLKSOURCE(PeriphClkInit->Usart2ClockSelection));

    /* Configure the USART2 clock source */
    __HAL_RCC_USART2_CONFIG(PeriphClkInit->Usart2ClockSelection);
 8003010:	4b9f      	ldr	r3, [pc, #636]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003012:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003016:	f023 020c 	bic.w	r2, r3, #12
 800301a:	687b      	ldr	r3, [r7, #4]
 800301c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800301e:	499c      	ldr	r1, [pc, #624]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003020:	4313      	orrs	r3, r2
 8003022:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- USART3 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USART3) == RCC_PERIPHCLK_USART3)
 8003026:	687b      	ldr	r3, [r7, #4]
 8003028:	681b      	ldr	r3, [r3, #0]
 800302a:	f003 0304 	and.w	r3, r3, #4
 800302e:	2b00      	cmp	r3, #0
 8003030:	d00a      	beq.n	8003048 <HAL_RCCEx_PeriphCLKConfig+0x2f4>
  {
    /* Check the parameters */
    assert_param(IS_RCC_USART3CLKSOURCE(PeriphClkInit->Usart3ClockSelection));

    /* Configure the USART3 clock source */
    __HAL_RCC_USART3_CONFIG(PeriphClkInit->Usart3ClockSelection);
 8003032:	4b97      	ldr	r3, [pc, #604]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003034:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003038:	f023 0230 	bic.w	r2, r3, #48	; 0x30
 800303c:	687b      	ldr	r3, [r7, #4]
 800303e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8003040:	4993      	ldr	r1, [pc, #588]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003042:	4313      	orrs	r3, r2
 8003044:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- UART4 clock source configuration --------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_UART4) == RCC_PERIPHCLK_UART4)
 8003048:	687b      	ldr	r3, [r7, #4]
 800304a:	681b      	ldr	r3, [r3, #0]
 800304c:	f003 0308 	and.w	r3, r3, #8
 8003050:	2b00      	cmp	r3, #0
 8003052:	d00a      	beq.n	800306a <HAL_RCCEx_PeriphCLKConfig+0x316>
  {
    /* Check the parameters */
    assert_param(IS_RCC_UART4CLKSOURCE(PeriphClkInit->Uart4ClockSelection));

    /* Configure the UART4 clock source */
    __HAL_RCC_UART4_CONFIG(PeriphClkInit->Uart4ClockSelection);
 8003054:	4b8e      	ldr	r3, [pc, #568]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003056:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800305a:	f023 02c0 	bic.w	r2, r3, #192	; 0xc0
 800305e:	687b      	ldr	r3, [r7, #4]
 8003060:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8003062:	498b      	ldr	r1, [pc, #556]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003064:	4313      	orrs	r3, r2
 8003066:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- UART5 clock source configuration --------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_UART5) == RCC_PERIPHCLK_UART5)
 800306a:	687b      	ldr	r3, [r7, #4]
 800306c:	681b      	ldr	r3, [r3, #0]
 800306e:	f003 0310 	and.w	r3, r3, #16
 8003072:	2b00      	cmp	r3, #0
 8003074:	d00a      	beq.n	800308c <HAL_RCCEx_PeriphCLKConfig+0x338>
  {
    /* Check the parameters */
    assert_param(IS_RCC_UART5CLKSOURCE(PeriphClkInit->Uart5ClockSelection));

    /* Configure the UART5 clock source */
    __HAL_RCC_UART5_CONFIG(PeriphClkInit->Uart5ClockSelection);
 8003076:	4b86      	ldr	r3, [pc, #536]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003078:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800307c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8003080:	687b      	ldr	r3, [r7, #4]
 8003082:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8003084:	4982      	ldr	r1, [pc, #520]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003086:	4313      	orrs	r3, r2
 8003088:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- LPUART1 clock source configuration ------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPUART1) == RCC_PERIPHCLK_LPUART1)
 800308c:	687b      	ldr	r3, [r7, #4]
 800308e:	681b      	ldr	r3, [r3, #0]
 8003090:	f003 0320 	and.w	r3, r3, #32
 8003094:	2b00      	cmp	r3, #0
 8003096:	d00a      	beq.n	80030ae <HAL_RCCEx_PeriphCLKConfig+0x35a>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LPUART1CLKSOURCE(PeriphClkInit->Lpuart1ClockSelection));

    /* Configure the LPUART1 clock source */
    __HAL_RCC_LPUART1_CONFIG(PeriphClkInit->Lpuart1ClockSelection);
 8003098:	4b7d      	ldr	r3, [pc, #500]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800309a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800309e:	f423 6240 	bic.w	r2, r3, #3072	; 0xc00
 80030a2:	687b      	ldr	r3, [r7, #4]
 80030a4:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80030a6:	497a      	ldr	r1, [pc, #488]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80030a8:	4313      	orrs	r3, r2
 80030aa:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- LPTIM1 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPTIM1) == (RCC_PERIPHCLK_LPTIM1))
 80030ae:	687b      	ldr	r3, [r7, #4]
 80030b0:	681b      	ldr	r3, [r3, #0]
 80030b2:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80030b6:	2b00      	cmp	r3, #0
 80030b8:	d00a      	beq.n	80030d0 <HAL_RCCEx_PeriphCLKConfig+0x37c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LPTIM1CLK(PeriphClkInit->Lptim1ClockSelection));

    /* Configure the LPTIM1 clock source */
    __HAL_RCC_LPTIM1_CONFIG(PeriphClkInit->Lptim1ClockSelection);
 80030ba:	4b75      	ldr	r3, [pc, #468]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80030bc:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80030c0:	f423 2240 	bic.w	r2, r3, #786432	; 0xc0000
 80030c4:	687b      	ldr	r3, [r7, #4]
 80030c6:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 80030c8:	4971      	ldr	r1, [pc, #452]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80030ca:	4313      	orrs	r3, r2
 80030cc:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- LPTIM2 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPTIM2) == (RCC_PERIPHCLK_LPTIM2))
 80030d0:	687b      	ldr	r3, [r7, #4]
 80030d2:	681b      	ldr	r3, [r3, #0]
 80030d4:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80030d8:	2b00      	cmp	r3, #0
 80030da:	d00a      	beq.n	80030f2 <HAL_RCCEx_PeriphCLKConfig+0x39e>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LPTIM2CLK(PeriphClkInit->Lptim2ClockSelection));

    /* Configure the LPTIM2 clock source */
    __HAL_RCC_LPTIM2_CONFIG(PeriphClkInit->Lptim2ClockSelection);
 80030dc:	4b6c      	ldr	r3, [pc, #432]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80030de:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80030e2:	f423 1240 	bic.w	r2, r3, #3145728	; 0x300000
 80030e6:	687b      	ldr	r3, [r7, #4]
 80030e8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80030ea:	4969      	ldr	r1, [pc, #420]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80030ec:	4313      	orrs	r3, r2
 80030ee:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- LPTIM3 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_LPTIM3) == (RCC_PERIPHCLK_LPTIM3))
 80030f2:	687b      	ldr	r3, [r7, #4]
 80030f4:	681b      	ldr	r3, [r3, #0]
 80030f6:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 80030fa:	2b00      	cmp	r3, #0
 80030fc:	d00a      	beq.n	8003114 <HAL_RCCEx_PeriphCLKConfig+0x3c0>
  {
    /* Check the parameters */
    assert_param(IS_RCC_LPTIM3CLK(PeriphClkInit->Lptim3ClockSelection));

    /* Configure the LPTIM3 clock source */
    __HAL_RCC_LPTIM3_CONFIG(PeriphClkInit->Lptim3ClockSelection);
 80030fe:	4b64      	ldr	r3, [pc, #400]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003100:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003104:	f423 0240 	bic.w	r2, r3, #12582912	; 0xc00000
 8003108:	687b      	ldr	r3, [r7, #4]
 800310a:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 800310c:	4960      	ldr	r1, [pc, #384]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800310e:	4313      	orrs	r3, r2
 8003110:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- FDCAN kernel clock source configuration -------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_FDCAN) == (RCC_PERIPHCLK_FDCAN))
 8003114:	687b      	ldr	r3, [r7, #4]
 8003116:	681b      	ldr	r3, [r3, #0]
 8003118:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800311c:	2b00      	cmp	r3, #0
 800311e:	d02f      	beq.n	8003180 <HAL_RCCEx_PeriphCLKConfig+0x42c>
  {
    /* Check the parameters */
    assert_param(IS_RCC_FDCANCLK(PeriphClkInit->FdcanClockSelection));

    /* Configure the FDCAN kernel clock source */
    switch (PeriphClkInit->FdcanClockSelection)
 8003120:	687b      	ldr	r3, [r7, #4]
 8003122:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 8003124:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8003128:	d005      	beq.n	8003136 <HAL_RCCEx_PeriphCLKConfig+0x3e2>
 800312a:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
 800312e:	d009      	beq.n	8003144 <HAL_RCCEx_PeriphCLKConfig+0x3f0>
 8003130:	2b00      	cmp	r3, #0
 8003132:	d013      	beq.n	800315c <HAL_RCCEx_PeriphCLKConfig+0x408>
 8003134:	e00f      	b.n	8003156 <HAL_RCCEx_PeriphCLKConfig+0x402>
        /* FDCAN kernel clock source config set later after clock selection check */
        break;

      case RCC_FDCANCLKSOURCE_PLL:      /* PLL is used as clock source for FDCAN kernel clock*/
        /* Enable PLL48M1CLK output clock generated from System PLL . */
        __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 8003136:	4b56      	ldr	r3, [pc, #344]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003138:	68db      	ldr	r3, [r3, #12]
 800313a:	4a55      	ldr	r2, [pc, #340]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800313c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8003140:	60d3      	str	r3, [r2, #12]
        /* FDCAN kernel clock source config set later after clock selection check */
        break;
 8003142:	e00c      	b.n	800315e <HAL_RCCEx_PeriphCLKConfig+0x40a>

      case RCC_FDCANCLKSOURCE_PLLSAI1:  /* PLLSAI1 is used as clock source for FDCAN kernel clock*/
        /* PLLSAI1 input clock, parameters M, N & P configuration and clock output (PLLSAI1ClockOut) */
        ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_P_UPDATE);
 8003144:	687b      	ldr	r3, [r7, #4]
 8003146:	3304      	adds	r3, #4
 8003148:	2100      	movs	r1, #0
 800314a:	4618      	mov	r0, r3
 800314c:	f000 f97c 	bl	8003448 <RCCEx_PLLSAI1_Config>
 8003150:	4603      	mov	r3, r0
 8003152:	77fb      	strb	r3, [r7, #31]
        /* FDCAN kernel clock source config set later after clock selection check */
        break;
 8003154:	e003      	b.n	800315e <HAL_RCCEx_PeriphCLKConfig+0x40a>

      default:
        ret = HAL_ERROR;
 8003156:	2301      	movs	r3, #1
 8003158:	77fb      	strb	r3, [r7, #31]
        break;
 800315a:	e000      	b.n	800315e <HAL_RCCEx_PeriphCLKConfig+0x40a>
        break;
 800315c:	bf00      	nop
    }

    if (ret == HAL_OK)
 800315e:	7ffb      	ldrb	r3, [r7, #31]
 8003160:	2b00      	cmp	r3, #0
 8003162:	d10b      	bne.n	800317c <HAL_RCCEx_PeriphCLKConfig+0x428>
    {
      /* Set the source of FDCAN kernel clock*/
      __HAL_RCC_FDCAN_CONFIG(PeriphClkInit->FdcanClockSelection);
 8003164:	4b4a      	ldr	r3, [pc, #296]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003166:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800316a:	f023 7240 	bic.w	r2, r3, #50331648	; 0x3000000
 800316e:	687b      	ldr	r3, [r7, #4]
 8003170:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 8003172:	4947      	ldr	r1, [pc, #284]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003174:	4313      	orrs	r3, r2
 8003176:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 800317a:	e001      	b.n	8003180 <HAL_RCCEx_PeriphCLKConfig+0x42c>
    }
    else
    {
      /* set overall return value */
      status = ret;
 800317c:	7ffb      	ldrb	r3, [r7, #31]
 800317e:	77bb      	strb	r3, [r7, #30]
    }
  }

  /*-------------------------- I2C1 clock source configuration ---------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C1) == RCC_PERIPHCLK_I2C1)
 8003180:	687b      	ldr	r3, [r7, #4]
 8003182:	681b      	ldr	r3, [r3, #0]
 8003184:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8003188:	2b00      	cmp	r3, #0
 800318a:	d00a      	beq.n	80031a2 <HAL_RCCEx_PeriphCLKConfig+0x44e>
  {
    /* Check the parameters */
    assert_param(IS_RCC_I2C1CLKSOURCE(PeriphClkInit->I2c1ClockSelection));

    /* Configure the I2C1 clock source */
    __HAL_RCC_I2C1_CONFIG(PeriphClkInit->I2c1ClockSelection);
 800318c:	4b40      	ldr	r3, [pc, #256]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800318e:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003192:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8003196:	687b      	ldr	r3, [r7, #4]
 8003198:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800319a:	493d      	ldr	r1, [pc, #244]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800319c:	4313      	orrs	r3, r2
 800319e:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- I2C2 clock source configuration ---------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C2) == RCC_PERIPHCLK_I2C2)
 80031a2:	687b      	ldr	r3, [r7, #4]
 80031a4:	681b      	ldr	r3, [r3, #0]
 80031a6:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80031aa:	2b00      	cmp	r3, #0
 80031ac:	d00a      	beq.n	80031c4 <HAL_RCCEx_PeriphCLKConfig+0x470>
  {
    /* Check the parameters */
    assert_param(IS_RCC_I2C2CLKSOURCE(PeriphClkInit->I2c2ClockSelection));

    /* Configure the I2C2 clock source */
    __HAL_RCC_I2C2_CONFIG(PeriphClkInit->I2c2ClockSelection);
 80031ae:	4b38      	ldr	r3, [pc, #224]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80031b0:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80031b4:	f423 4240 	bic.w	r2, r3, #49152	; 0xc000
 80031b8:	687b      	ldr	r3, [r7, #4]
 80031ba:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 80031bc:	4934      	ldr	r1, [pc, #208]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80031be:	4313      	orrs	r3, r2
 80031c0:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- I2C3 clock source configuration ---------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C3) == RCC_PERIPHCLK_I2C3)
 80031c4:	687b      	ldr	r3, [r7, #4]
 80031c6:	681b      	ldr	r3, [r3, #0]
 80031c8:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80031cc:	2b00      	cmp	r3, #0
 80031ce:	d00a      	beq.n	80031e6 <HAL_RCCEx_PeriphCLKConfig+0x492>
  {
    /* Check the parameters */
    assert_param(IS_RCC_I2C3CLKSOURCE(PeriphClkInit->I2c3ClockSelection));

    /* Configure the I2C3 clock source */
    __HAL_RCC_I2C3_CONFIG(PeriphClkInit->I2c3ClockSelection);
 80031d0:	4b2f      	ldr	r3, [pc, #188]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80031d2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80031d6:	f423 3240 	bic.w	r2, r3, #196608	; 0x30000
 80031da:	687b      	ldr	r3, [r7, #4]
 80031dc:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 80031de:	492c      	ldr	r1, [pc, #176]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80031e0:	4313      	orrs	r3, r2
 80031e2:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
  }

  /*-------------------------- I2C4 clock source configuration ---------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_I2C4) == RCC_PERIPHCLK_I2C4)
 80031e6:	687b      	ldr	r3, [r7, #4]
 80031e8:	681b      	ldr	r3, [r3, #0]
 80031ea:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 80031ee:	2b00      	cmp	r3, #0
 80031f0:	d00a      	beq.n	8003208 <HAL_RCCEx_PeriphCLKConfig+0x4b4>
  {
    /* Check the parameters */
    assert_param(IS_RCC_I2C4CLKSOURCE(PeriphClkInit->I2c4ClockSelection));

    /* Configure the I2C4 clock source */
    __HAL_RCC_I2C4_CONFIG(PeriphClkInit->I2c4ClockSelection);
 80031f2:	4b27      	ldr	r3, [pc, #156]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80031f4:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 80031f8:	f023 0203 	bic.w	r2, r3, #3
 80031fc:	687b      	ldr	r3, [r7, #4]
 80031fe:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8003200:	4923      	ldr	r1, [pc, #140]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003202:	4313      	orrs	r3, r2
 8003204:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
  }

#if defined(USB)

  /*-------------------------- USB clock source configuration ----------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_USB) == (RCC_PERIPHCLK_USB))
 8003208:	687b      	ldr	r3, [r7, #4]
 800320a:	681b      	ldr	r3, [r3, #0]
 800320c:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8003210:	2b00      	cmp	r3, #0
 8003212:	d028      	beq.n	8003266 <HAL_RCCEx_PeriphCLKConfig+0x512>
  {
    /* Check the parameters */
    assert_param(IS_RCC_USBCLKSOURCE(PeriphClkInit->UsbClockSelection));

    /* Configure the USB clock source */
    __HAL_RCC_USB_CONFIG(PeriphClkInit->UsbClockSelection);
 8003214:	4b1e      	ldr	r3, [pc, #120]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003216:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800321a:	f023 6240 	bic.w	r2, r3, #201326592	; 0xc000000
 800321e:	687b      	ldr	r3, [r7, #4]
 8003220:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8003222:	491b      	ldr	r1, [pc, #108]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003224:	4313      	orrs	r3, r2
 8003226:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88

    if (PeriphClkInit->UsbClockSelection == RCC_USBCLKSOURCE_PLL)
 800322a:	687b      	ldr	r3, [r7, #4]
 800322c:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 800322e:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
 8003232:	d106      	bne.n	8003242 <HAL_RCCEx_PeriphCLKConfig+0x4ee>
    {
      /* Enable PLL48M1CLK output clock */
      __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 8003234:	4b16      	ldr	r3, [pc, #88]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003236:	68db      	ldr	r3, [r3, #12]
 8003238:	4a15      	ldr	r2, [pc, #84]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800323a:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800323e:	60d3      	str	r3, [r2, #12]
 8003240:	e011      	b.n	8003266 <HAL_RCCEx_PeriphCLKConfig+0x512>
    }
    else
    {
      if (PeriphClkInit->UsbClockSelection == RCC_USBCLKSOURCE_PLLSAI1)
 8003242:	687b      	ldr	r3, [r7, #4]
 8003244:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8003246:	f1b3 6f80 	cmp.w	r3, #67108864	; 0x4000000
 800324a:	d10c      	bne.n	8003266 <HAL_RCCEx_PeriphCLKConfig+0x512>
      {
        /* PLLSAI1 input clock, parameters M, N & Q configuration and clock output (PLLSAI1ClockOut) */
        ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_Q_UPDATE);
 800324c:	687b      	ldr	r3, [r7, #4]
 800324e:	3304      	adds	r3, #4
 8003250:	2101      	movs	r1, #1
 8003252:	4618      	mov	r0, r3
 8003254:	f000 f8f8 	bl	8003448 <RCCEx_PLLSAI1_Config>
 8003258:	4603      	mov	r3, r0
 800325a:	77fb      	strb	r3, [r7, #31]

        if (ret != HAL_OK)
 800325c:	7ffb      	ldrb	r3, [r7, #31]
 800325e:	2b00      	cmp	r3, #0
 8003260:	d001      	beq.n	8003266 <HAL_RCCEx_PeriphCLKConfig+0x512>
        {
          /* set overall return value */
          status = ret;
 8003262:	7ffb      	ldrb	r3, [r7, #31]
 8003264:	77bb      	strb	r3, [r7, #30]
  }

#endif /* USB */

  /*-------------------------- SDMMC1 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_SDMMC1) == (RCC_PERIPHCLK_SDMMC1))
 8003266:	687b      	ldr	r3, [r7, #4]
 8003268:	681b      	ldr	r3, [r3, #0]
 800326a:	f403 2300 	and.w	r3, r3, #524288	; 0x80000
 800326e:	2b00      	cmp	r3, #0
 8003270:	d04d      	beq.n	800330e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
  {
    /* Check the parameters */
    assert_param(IS_RCC_SDMMC1CLKSOURCE(PeriphClkInit->Sdmmc1ClockSelection));

    /* Configure the SDMMC1 clock source */
    __HAL_RCC_SDMMC1_CONFIG(PeriphClkInit->Sdmmc1ClockSelection);
 8003272:	687b      	ldr	r3, [r7, #4]
 8003274:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 8003276:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 800327a:	d10b      	bne.n	8003294 <HAL_RCCEx_PeriphCLKConfig+0x540>
 800327c:	4b04      	ldr	r3, [pc, #16]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800327e:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8003282:	4a03      	ldr	r2, [pc, #12]	; (8003290 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8003284:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8003288:	f8c2 309c 	str.w	r3, [r2, #156]	; 0x9c
 800328c:	e015      	b.n	80032ba <HAL_RCCEx_PeriphCLKConfig+0x566>
 800328e:	bf00      	nop
 8003290:	40021000 	.word	0x40021000
 8003294:	4b6b      	ldr	r3, [pc, #428]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8003296:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800329a:	f023 6240 	bic.w	r2, r3, #201326592	; 0xc000000
 800329e:	687b      	ldr	r3, [r7, #4]
 80032a0:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 80032a2:	4968      	ldr	r1, [pc, #416]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80032a4:	4313      	orrs	r3, r2
 80032a6:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80032aa:	4b66      	ldr	r3, [pc, #408]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80032ac:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 80032b0:	4a64      	ldr	r2, [pc, #400]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80032b2:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 80032b6:	f8c2 309c 	str.w	r3, [r2, #156]	; 0x9c

    if (PeriphClkInit->Sdmmc1ClockSelection == RCC_SDMMC1CLKSOURCE_PLLSAI1)
 80032ba:	687b      	ldr	r3, [r7, #4]
 80032bc:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 80032be:	f1b3 6f80 	cmp.w	r3, #67108864	; 0x4000000
 80032c2:	d10d      	bne.n	80032e0 <HAL_RCCEx_PeriphCLKConfig+0x58c>
    {
      /* PLLSAI1 input clock, parameters M, N & Q configuration and clock output (PLLSAI1ClockOut) */
      ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_Q_UPDATE);
 80032c4:	687b      	ldr	r3, [r7, #4]
 80032c6:	3304      	adds	r3, #4
 80032c8:	2101      	movs	r1, #1
 80032ca:	4618      	mov	r0, r3
 80032cc:	f000 f8bc 	bl	8003448 <RCCEx_PLLSAI1_Config>
 80032d0:	4603      	mov	r3, r0
 80032d2:	77fb      	strb	r3, [r7, #31]

      if (ret != HAL_OK)
 80032d4:	7ffb      	ldrb	r3, [r7, #31]
 80032d6:	2b00      	cmp	r3, #0
 80032d8:	d019      	beq.n	800330e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
      {
        /* set overall return value */
        status = ret;
 80032da:	7ffb      	ldrb	r3, [r7, #31]
 80032dc:	77bb      	strb	r3, [r7, #30]
 80032de:	e016      	b.n	800330e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
      }
    }
    else if (PeriphClkInit->Sdmmc1ClockSelection == RCC_SDMMC1CLKSOURCE_PLL)
 80032e0:	687b      	ldr	r3, [r7, #4]
 80032e2:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 80032e4:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
 80032e8:	d106      	bne.n	80032f8 <HAL_RCCEx_PeriphCLKConfig+0x5a4>
    {
      /* Enable PLL48M1CLK output clock */
      __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 80032ea:	4b56      	ldr	r3, [pc, #344]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80032ec:	68db      	ldr	r3, [r3, #12]
 80032ee:	4a55      	ldr	r2, [pc, #340]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80032f0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80032f4:	60d3      	str	r3, [r2, #12]
 80032f6:	e00a      	b.n	800330e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
    }
    else if (PeriphClkInit->Sdmmc1ClockSelection == RCC_SDMMC1CLKSOURCE_PLLP)
 80032f8:	687b      	ldr	r3, [r7, #4]
 80032fa:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 80032fc:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 8003300:	d105      	bne.n	800330e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
    {
      /* Enable PLLSAI3CLK output clock */
      __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_SAI3CLK);
 8003302:	4b50      	ldr	r3, [pc, #320]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8003304:	68db      	ldr	r3, [r3, #12]
 8003306:	4a4f      	ldr	r2, [pc, #316]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8003308:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800330c:	60d3      	str	r3, [r2, #12]
      /* Nothing to do */
    }
  }

  /*-------------------------- RNG clock source configuration ----------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_RNG) == (RCC_PERIPHCLK_RNG))
 800330e:	687b      	ldr	r3, [r7, #4]
 8003310:	681b      	ldr	r3, [r3, #0]
 8003312:	f403 2380 	and.w	r3, r3, #262144	; 0x40000
 8003316:	2b00      	cmp	r3, #0
 8003318:	d028      	beq.n	800336c <HAL_RCCEx_PeriphCLKConfig+0x618>
  {
    /* Check the parameters */
    assert_param(IS_RCC_RNGCLKSOURCE(PeriphClkInit->RngClockSelection));

    /* Configure the RNG clock source */
    __HAL_RCC_RNG_CONFIG(PeriphClkInit->RngClockSelection);
 800331a:	4b4a      	ldr	r3, [pc, #296]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800331c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003320:	f023 6240 	bic.w	r2, r3, #201326592	; 0xc000000
 8003324:	687b      	ldr	r3, [r7, #4]
 8003326:	6fdb      	ldr	r3, [r3, #124]	; 0x7c
 8003328:	4946      	ldr	r1, [pc, #280]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800332a:	4313      	orrs	r3, r2
 800332c:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88

    if (PeriphClkInit->RngClockSelection == RCC_RNGCLKSOURCE_PLL)
 8003330:	687b      	ldr	r3, [r7, #4]
 8003332:	6fdb      	ldr	r3, [r3, #124]	; 0x7c
 8003334:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
 8003338:	d106      	bne.n	8003348 <HAL_RCCEx_PeriphCLKConfig+0x5f4>
    {
      /* Enable PLL48M1CLK output clock */
      __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 800333a:	4b42      	ldr	r3, [pc, #264]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800333c:	68db      	ldr	r3, [r3, #12]
 800333e:	4a41      	ldr	r2, [pc, #260]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8003340:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8003344:	60d3      	str	r3, [r2, #12]
 8003346:	e011      	b.n	800336c <HAL_RCCEx_PeriphCLKConfig+0x618>
    }
    else if (PeriphClkInit->RngClockSelection == RCC_RNGCLKSOURCE_PLLSAI1)
 8003348:	687b      	ldr	r3, [r7, #4]
 800334a:	6fdb      	ldr	r3, [r3, #124]	; 0x7c
 800334c:	f1b3 6f80 	cmp.w	r3, #67108864	; 0x4000000
 8003350:	d10c      	bne.n	800336c <HAL_RCCEx_PeriphCLKConfig+0x618>
    {
      /* PLLSAI1 input clock, parameters M, N & Q configuration and clock output (PLLSAI1ClockOut) */
      ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_Q_UPDATE);
 8003352:	687b      	ldr	r3, [r7, #4]
 8003354:	3304      	adds	r3, #4
 8003356:	2101      	movs	r1, #1
 8003358:	4618      	mov	r0, r3
 800335a:	f000 f875 	bl	8003448 <RCCEx_PLLSAI1_Config>
 800335e:	4603      	mov	r3, r0
 8003360:	77fb      	strb	r3, [r7, #31]

      if (ret != HAL_OK)
 8003362:	7ffb      	ldrb	r3, [r7, #31]
 8003364:	2b00      	cmp	r3, #0
 8003366:	d001      	beq.n	800336c <HAL_RCCEx_PeriphCLKConfig+0x618>
      {
        /* set overall return value */
        status = ret;
 8003368:	7ffb      	ldrb	r3, [r7, #31]
 800336a:	77bb      	strb	r3, [r7, #30]
      /* Nothing to do */
    }
  }

  /*-------------------------- ADC clock source configuration ----------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_ADC) == RCC_PERIPHCLK_ADC)
 800336c:	687b      	ldr	r3, [r7, #4]
 800336e:	681b      	ldr	r3, [r3, #0]
 8003370:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 8003374:	2b00      	cmp	r3, #0
 8003376:	d01e      	beq.n	80033b6 <HAL_RCCEx_PeriphCLKConfig+0x662>
  {
    /* Check the parameters */
    assert_param(IS_RCC_ADCCLKSOURCE(PeriphClkInit->AdcClockSelection));

    /* Configure the ADC interface clock source */
    __HAL_RCC_ADC_CONFIG(PeriphClkInit->AdcClockSelection);
 8003378:	4b32      	ldr	r3, [pc, #200]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800337a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800337e:	f023 5240 	bic.w	r2, r3, #805306368	; 0x30000000
 8003382:	687b      	ldr	r3, [r7, #4]
 8003384:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 8003388:	492e      	ldr	r1, [pc, #184]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800338a:	4313      	orrs	r3, r2
 800338c:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88

    if (PeriphClkInit->AdcClockSelection == RCC_ADCCLKSOURCE_PLLSAI1)
 8003390:	687b      	ldr	r3, [r7, #4]
 8003392:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 8003396:	f1b3 5f80 	cmp.w	r3, #268435456	; 0x10000000
 800339a:	d10c      	bne.n	80033b6 <HAL_RCCEx_PeriphCLKConfig+0x662>
    {
      /* PLLSAI1 input clock, parameters M, N & R configuration and clock output (PLLSAI1ClockOut) */
      ret = RCCEx_PLLSAI1_Config(&(PeriphClkInit->PLLSAI1), DIVIDER_R_UPDATE);
 800339c:	687b      	ldr	r3, [r7, #4]
 800339e:	3304      	adds	r3, #4
 80033a0:	2102      	movs	r1, #2
 80033a2:	4618      	mov	r0, r3
 80033a4:	f000 f850 	bl	8003448 <RCCEx_PLLSAI1_Config>
 80033a8:	4603      	mov	r3, r0
 80033aa:	77fb      	strb	r3, [r7, #31]

      if (ret != HAL_OK)
 80033ac:	7ffb      	ldrb	r3, [r7, #31]
 80033ae:	2b00      	cmp	r3, #0
 80033b0:	d001      	beq.n	80033b6 <HAL_RCCEx_PeriphCLKConfig+0x662>
      {
        /* set overall return value */
        status = ret;
 80033b2:	7ffb      	ldrb	r3, [r7, #31]
 80033b4:	77bb      	strb	r3, [r7, #30]
      }
    }
  }

  /*-------------------------- DFSDM1 clock source configuration -------------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_DFSDM1) == RCC_PERIPHCLK_DFSDM1)
 80033b6:	687b      	ldr	r3, [r7, #4]
 80033b8:	681b      	ldr	r3, [r3, #0]
 80033ba:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 80033be:	2b00      	cmp	r3, #0
 80033c0:	d00b      	beq.n	80033da <HAL_RCCEx_PeriphCLKConfig+0x686>
  {
    /* Check the parameters */
    assert_param(IS_RCC_DFSDM1CLKSOURCE(PeriphClkInit->Dfsdm1ClockSelection));

    /* Configure the DFSDM1 interface clock source */
    __HAL_RCC_DFSDM1_CONFIG(PeriphClkInit->Dfsdm1ClockSelection);
 80033c2:	4b20      	ldr	r3, [pc, #128]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80033c4:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 80033c8:	f023 0204 	bic.w	r2, r3, #4
 80033cc:	687b      	ldr	r3, [r7, #4]
 80033ce:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 80033d2:	491c      	ldr	r1, [pc, #112]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80033d4:	4313      	orrs	r3, r2
 80033d6:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
  }

  /*-------------------------- DFSDM1 audio clock source configuration -------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_DFSDM1AUDIO) == RCC_PERIPHCLK_DFSDM1AUDIO)
 80033da:	687b      	ldr	r3, [r7, #4]
 80033dc:	681b      	ldr	r3, [r3, #0]
 80033de:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 80033e2:	2b00      	cmp	r3, #0
 80033e4:	d00b      	beq.n	80033fe <HAL_RCCEx_PeriphCLKConfig+0x6aa>
  {
    /* Check the parameters */
    assert_param(IS_RCC_DFSDM1AUDIOCLKSOURCE(PeriphClkInit->Dfsdm1AudioClockSelection));

    /* Configure the DFSDM1 interface audio clock source */
    __HAL_RCC_DFSDM1AUDIO_CONFIG(PeriphClkInit->Dfsdm1AudioClockSelection);
 80033e6:	4b17      	ldr	r3, [pc, #92]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80033e8:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 80033ec:	f023 0218 	bic.w	r2, r3, #24
 80033f0:	687b      	ldr	r3, [r7, #4]
 80033f2:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80033f6:	4913      	ldr	r1, [pc, #76]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80033f8:	4313      	orrs	r3, r2
 80033fa:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
  }

  /*-------------------------- OctoSPIx clock source configuration ----------------*/
  if (((PeriphClkInit->PeriphClockSelection) & RCC_PERIPHCLK_OSPI) == RCC_PERIPHCLK_OSPI)
 80033fe:	687b      	ldr	r3, [r7, #4]
 8003400:	681b      	ldr	r3, [r3, #0]
 8003402:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8003406:	2b00      	cmp	r3, #0
 8003408:	d017      	beq.n	800343a <HAL_RCCEx_PeriphCLKConfig+0x6e6>
  {
    /* Check the parameters */
    assert_param(IS_RCC_OSPICLKSOURCE(PeriphClkInit->OspiClockSelection));

    /* Configure the OctoSPI clock source */
    __HAL_RCC_OSPI_CONFIG(PeriphClkInit->OspiClockSelection);
 800340a:	4b0e      	ldr	r3, [pc, #56]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800340c:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8003410:	f423 1240 	bic.w	r2, r3, #3145728	; 0x300000
 8003414:	687b      	ldr	r3, [r7, #4]
 8003416:	f8d3 308c 	ldr.w	r3, [r3, #140]	; 0x8c
 800341a:	490a      	ldr	r1, [pc, #40]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800341c:	4313      	orrs	r3, r2
 800341e:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c

    if (PeriphClkInit->OspiClockSelection == RCC_OSPICLKSOURCE_PLL)
 8003422:	687b      	ldr	r3, [r7, #4]
 8003424:	f8d3 308c 	ldr.w	r3, [r3, #140]	; 0x8c
 8003428:	f5b3 1f00 	cmp.w	r3, #2097152	; 0x200000
 800342c:	d105      	bne.n	800343a <HAL_RCCEx_PeriphCLKConfig+0x6e6>
    {
      /* Enable PLL48M1CLK output clock */
      __HAL_RCC_PLLCLKOUT_ENABLE(RCC_PLL_48M1CLK);
 800342e:	4b05      	ldr	r3, [pc, #20]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8003430:	68db      	ldr	r3, [r3, #12]
 8003432:	4a04      	ldr	r2, [pc, #16]	; (8003444 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8003434:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8003438:	60d3      	str	r3, [r2, #12]
    }
  }

  return status;
 800343a:	7fbb      	ldrb	r3, [r7, #30]
}
 800343c:	4618      	mov	r0, r3
 800343e:	3720      	adds	r7, #32
 8003440:	46bd      	mov	sp, r7
 8003442:	bd80      	pop	{r7, pc}
 8003444:	40021000 	.word	0x40021000

08003448 <RCCEx_PLLSAI1_Config>:
  * @note   PLLSAI1 is temporary disable to apply new parameters
  *
  * @retval HAL status
  */
static HAL_StatusTypeDef RCCEx_PLLSAI1_Config(RCC_PLLSAI1InitTypeDef *pPllSai1, uint32_t Divider)
{
 8003448:	b580      	push	{r7, lr}
 800344a:	b084      	sub	sp, #16
 800344c:	af00      	add	r7, sp, #0
 800344e:	6078      	str	r0, [r7, #4]
 8003450:	6039      	str	r1, [r7, #0]
  HAL_StatusTypeDef status = HAL_OK;
 8003452:	2300      	movs	r3, #0
 8003454:	73fb      	strb	r3, [r7, #15]
  assert_param(IS_RCC_PLLSAI1M_VALUE(pPllSai1->PLLSAI1M));
  assert_param(IS_RCC_PLLSAI1N_VALUE(pPllSai1->PLLSAI1N));
  assert_param(IS_RCC_PLLSAI1CLOCKOUT_VALUE(pPllSai1->PLLSAI1ClockOut));

  /* Check PLLSAI1 clock source availability */
  switch (pPllSai1->PLLSAI1Source)
 8003456:	687b      	ldr	r3, [r7, #4]
 8003458:	681b      	ldr	r3, [r3, #0]
 800345a:	2b02      	cmp	r3, #2
 800345c:	d00c      	beq.n	8003478 <RCCEx_PLLSAI1_Config+0x30>
 800345e:	2b03      	cmp	r3, #3
 8003460:	d013      	beq.n	800348a <RCCEx_PLLSAI1_Config+0x42>
 8003462:	2b01      	cmp	r3, #1
 8003464:	d11a      	bne.n	800349c <RCCEx_PLLSAI1_Config+0x54>
  {
    case RCC_PLLSOURCE_MSI:
      if (HAL_IS_BIT_CLR(RCC->CR, RCC_CR_MSIRDY))
 8003466:	4b65      	ldr	r3, [pc, #404]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 8003468:	681b      	ldr	r3, [r3, #0]
 800346a:	f003 0302 	and.w	r3, r3, #2
 800346e:	2b00      	cmp	r3, #0
 8003470:	d117      	bne.n	80034a2 <RCCEx_PLLSAI1_Config+0x5a>
      {
        status = HAL_ERROR;
 8003472:	2301      	movs	r3, #1
 8003474:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8003476:	e014      	b.n	80034a2 <RCCEx_PLLSAI1_Config+0x5a>
    case RCC_PLLSOURCE_HSI:
      if (HAL_IS_BIT_CLR(RCC->CR, RCC_CR_HSIRDY))
 8003478:	4b60      	ldr	r3, [pc, #384]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 800347a:	681b      	ldr	r3, [r3, #0]
 800347c:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8003480:	2b00      	cmp	r3, #0
 8003482:	d110      	bne.n	80034a6 <RCCEx_PLLSAI1_Config+0x5e>
      {
        status = HAL_ERROR;
 8003484:	2301      	movs	r3, #1
 8003486:	73fb      	strb	r3, [r7, #15]
      }
      break;
 8003488:	e00d      	b.n	80034a6 <RCCEx_PLLSAI1_Config+0x5e>
    case RCC_PLLSOURCE_HSE:
      if (HAL_IS_BIT_CLR(RCC->CR, (RCC_CR_HSERDY | RCC_CR_HSEBYP)))
 800348a:	4b5c      	ldr	r3, [pc, #368]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 800348c:	681b      	ldr	r3, [r3, #0]
 800348e:	f403 23c0 	and.w	r3, r3, #393216	; 0x60000
 8003492:	2b00      	cmp	r3, #0
 8003494:	d109      	bne.n	80034aa <RCCEx_PLLSAI1_Config+0x62>
      {
        status = HAL_ERROR;
 8003496:	2301      	movs	r3, #1
 8003498:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800349a:	e006      	b.n	80034aa <RCCEx_PLLSAI1_Config+0x62>
    default:
      status = HAL_ERROR;
 800349c:	2301      	movs	r3, #1
 800349e:	73fb      	strb	r3, [r7, #15]
      break;
 80034a0:	e004      	b.n	80034ac <RCCEx_PLLSAI1_Config+0x64>
      break;
 80034a2:	bf00      	nop
 80034a4:	e002      	b.n	80034ac <RCCEx_PLLSAI1_Config+0x64>
      break;
 80034a6:	bf00      	nop
 80034a8:	e000      	b.n	80034ac <RCCEx_PLLSAI1_Config+0x64>
      break;
 80034aa:	bf00      	nop
  }

  if (status == HAL_OK)
 80034ac:	7bfb      	ldrb	r3, [r7, #15]
 80034ae:	2b00      	cmp	r3, #0
 80034b0:	f040 809f 	bne.w	80035f2 <RCCEx_PLLSAI1_Config+0x1aa>
  {
    /* Disable the PLLSAI1 */
    __HAL_RCC_PLLSAI1_DISABLE();
 80034b4:	4b51      	ldr	r3, [pc, #324]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80034b6:	681b      	ldr	r3, [r3, #0]
 80034b8:	4a50      	ldr	r2, [pc, #320]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80034ba:	f023 6380 	bic.w	r3, r3, #67108864	; 0x4000000
 80034be:	6013      	str	r3, [r2, #0]

    /* Get Start Tick*/
    tickstart = HAL_GetTick();
 80034c0:	f7fe f8d6 	bl	8001670 <HAL_GetTick>
 80034c4:	60b8      	str	r0, [r7, #8]

    /* Wait till PLLSAI1 is ready to be updated */
    while (READ_BIT(RCC->CR, RCC_CR_PLLSAI1RDY) != 0U)
 80034c6:	e00f      	b.n	80034e8 <RCCEx_PLLSAI1_Config+0xa0>
    {
      if ((HAL_GetTick() - tickstart) > PLLSAI1_TIMEOUT_VALUE)
 80034c8:	f7fe f8d2 	bl	8001670 <HAL_GetTick>
 80034cc:	4602      	mov	r2, r0
 80034ce:	68bb      	ldr	r3, [r7, #8]
 80034d0:	1ad3      	subs	r3, r2, r3
 80034d2:	2b02      	cmp	r3, #2
 80034d4:	d908      	bls.n	80034e8 <RCCEx_PLLSAI1_Config+0xa0>
      {
        /* New check to avoid false timeout detection in case of preemption */
        if (READ_BIT(RCC->CR, RCC_CR_PLLSAI1RDY) != 0U)
 80034d6:	4b49      	ldr	r3, [pc, #292]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80034d8:	681b      	ldr	r3, [r3, #0]
 80034da:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 80034de:	2b00      	cmp	r3, #0
 80034e0:	d009      	beq.n	80034f6 <RCCEx_PLLSAI1_Config+0xae>
        {
          status = HAL_TIMEOUT;
 80034e2:	2303      	movs	r3, #3
 80034e4:	73fb      	strb	r3, [r7, #15]
        }
        break;
 80034e6:	e006      	b.n	80034f6 <RCCEx_PLLSAI1_Config+0xae>
    while (READ_BIT(RCC->CR, RCC_CR_PLLSAI1RDY) != 0U)
 80034e8:	4b44      	ldr	r3, [pc, #272]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80034ea:	681b      	ldr	r3, [r3, #0]
 80034ec:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 80034f0:	2b00      	cmp	r3, #0
 80034f2:	d1e9      	bne.n	80034c8 <RCCEx_PLLSAI1_Config+0x80>
 80034f4:	e000      	b.n	80034f8 <RCCEx_PLLSAI1_Config+0xb0>
        break;
 80034f6:	bf00      	nop
      }
    }

    if (status == HAL_OK)
 80034f8:	7bfb      	ldrb	r3, [r7, #15]
 80034fa:	2b00      	cmp	r3, #0
 80034fc:	d179      	bne.n	80035f2 <RCCEx_PLLSAI1_Config+0x1aa>
    {
      if (Divider == DIVIDER_P_UPDATE)
 80034fe:	683b      	ldr	r3, [r7, #0]
 8003500:	2b00      	cmp	r3, #0
 8003502:	d116      	bne.n	8003532 <RCCEx_PLLSAI1_Config+0xea>
      {
        assert_param(IS_RCC_PLLSAI1P_VALUE(pPllSai1->PLLSAI1P));

        /* Configure the PLLSAI1 Division factor M, P and Multiplication factor N*/
        MODIFY_REG(RCC->PLLSAI1CFGR,
 8003504:	4b3d      	ldr	r3, [pc, #244]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 8003506:	691a      	ldr	r2, [r3, #16]
 8003508:	4b3d      	ldr	r3, [pc, #244]	; (8003600 <RCCEx_PLLSAI1_Config+0x1b8>)
 800350a:	4013      	ands	r3, r2
 800350c:	687a      	ldr	r2, [r7, #4]
 800350e:	6892      	ldr	r2, [r2, #8]
 8003510:	0211      	lsls	r1, r2, #8
 8003512:	687a      	ldr	r2, [r7, #4]
 8003514:	68d2      	ldr	r2, [r2, #12]
 8003516:	06d2      	lsls	r2, r2, #27
 8003518:	4311      	orrs	r1, r2
 800351a:	687a      	ldr	r2, [r7, #4]
 800351c:	6852      	ldr	r2, [r2, #4]
 800351e:	3a01      	subs	r2, #1
 8003520:	0112      	lsls	r2, r2, #4
 8003522:	4311      	orrs	r1, r2
 8003524:	687a      	ldr	r2, [r7, #4]
 8003526:	6812      	ldr	r2, [r2, #0]
 8003528:	430a      	orrs	r2, r1
 800352a:	4934      	ldr	r1, [pc, #208]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 800352c:	4313      	orrs	r3, r2
 800352e:	610b      	str	r3, [r1, #16]
 8003530:	e033      	b.n	800359a <RCCEx_PLLSAI1_Config+0x152>
                   (pPllSai1->PLLSAI1N << RCC_PLLSAI1CFGR_PLLSAI1N_Pos) |
                   (pPllSai1->PLLSAI1P << RCC_PLLSAI1CFGR_PLLSAI1PDIV_Pos) |
                   ((pPllSai1->PLLSAI1M - 1U) << RCC_PLLSAI1CFGR_PLLSAI1M_Pos) |
                   pPllSai1->PLLSAI1Source);
      }
      else if (Divider == DIVIDER_Q_UPDATE)
 8003532:	683b      	ldr	r3, [r7, #0]
 8003534:	2b01      	cmp	r3, #1
 8003536:	d118      	bne.n	800356a <RCCEx_PLLSAI1_Config+0x122>
      {
        assert_param(IS_RCC_PLLSAI1Q_VALUE(pPllSai1->PLLSAI1Q));

        /* Configure the PLLSAI1 Division factor M, Q and Multiplication factor N*/
        MODIFY_REG(RCC->PLLSAI1CFGR,
 8003538:	4b30      	ldr	r3, [pc, #192]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 800353a:	691a      	ldr	r2, [r3, #16]
 800353c:	4b31      	ldr	r3, [pc, #196]	; (8003604 <RCCEx_PLLSAI1_Config+0x1bc>)
 800353e:	4013      	ands	r3, r2
 8003540:	687a      	ldr	r2, [r7, #4]
 8003542:	6892      	ldr	r2, [r2, #8]
 8003544:	0211      	lsls	r1, r2, #8
 8003546:	687a      	ldr	r2, [r7, #4]
 8003548:	6912      	ldr	r2, [r2, #16]
 800354a:	0852      	lsrs	r2, r2, #1
 800354c:	3a01      	subs	r2, #1
 800354e:	0552      	lsls	r2, r2, #21
 8003550:	4311      	orrs	r1, r2
 8003552:	687a      	ldr	r2, [r7, #4]
 8003554:	6852      	ldr	r2, [r2, #4]
 8003556:	3a01      	subs	r2, #1
 8003558:	0112      	lsls	r2, r2, #4
 800355a:	4311      	orrs	r1, r2
 800355c:	687a      	ldr	r2, [r7, #4]
 800355e:	6812      	ldr	r2, [r2, #0]
 8003560:	430a      	orrs	r2, r1
 8003562:	4926      	ldr	r1, [pc, #152]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 8003564:	4313      	orrs	r3, r2
 8003566:	610b      	str	r3, [r1, #16]
 8003568:	e017      	b.n	800359a <RCCEx_PLLSAI1_Config+0x152>
      else
      {
        assert_param(IS_RCC_PLLSAI1R_VALUE(pPllSai1->PLLSAI1R));

        /* Configure the PLLSAI1 Division factor M, R and Multiplication factor N*/
        MODIFY_REG(RCC->PLLSAI1CFGR,
 800356a:	4b24      	ldr	r3, [pc, #144]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 800356c:	691a      	ldr	r2, [r3, #16]
 800356e:	4b26      	ldr	r3, [pc, #152]	; (8003608 <RCCEx_PLLSAI1_Config+0x1c0>)
 8003570:	4013      	ands	r3, r2
 8003572:	687a      	ldr	r2, [r7, #4]
 8003574:	6892      	ldr	r2, [r2, #8]
 8003576:	0211      	lsls	r1, r2, #8
 8003578:	687a      	ldr	r2, [r7, #4]
 800357a:	6952      	ldr	r2, [r2, #20]
 800357c:	0852      	lsrs	r2, r2, #1
 800357e:	3a01      	subs	r2, #1
 8003580:	0652      	lsls	r2, r2, #25
 8003582:	4311      	orrs	r1, r2
 8003584:	687a      	ldr	r2, [r7, #4]
 8003586:	6852      	ldr	r2, [r2, #4]
 8003588:	3a01      	subs	r2, #1
 800358a:	0112      	lsls	r2, r2, #4
 800358c:	4311      	orrs	r1, r2
 800358e:	687a      	ldr	r2, [r7, #4]
 8003590:	6812      	ldr	r2, [r2, #0]
 8003592:	430a      	orrs	r2, r1
 8003594:	4919      	ldr	r1, [pc, #100]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 8003596:	4313      	orrs	r3, r2
 8003598:	610b      	str	r3, [r1, #16]
                   ((pPllSai1->PLLSAI1M - 1U) << RCC_PLLSAI1CFGR_PLLSAI1M_Pos) |
                   pPllSai1->PLLSAI1Source);
      }

      /* Enable the PLLSAI1 again by setting PLLSAI1ON to 1*/
      __HAL_RCC_PLLSAI1_ENABLE();
 800359a:	4b18      	ldr	r3, [pc, #96]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 800359c:	681b      	ldr	r3, [r3, #0]
 800359e:	4a17      	ldr	r2, [pc, #92]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80035a0:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 80035a4:	6013      	str	r3, [r2, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 80035a6:	f7fe f863 	bl	8001670 <HAL_GetTick>
 80035aa:	60b8      	str	r0, [r7, #8]

      /* Wait till PLLSAI1 is ready */
      while (READ_BIT(RCC->CR, RCC_CR_PLLSAI1RDY) == 0U)
 80035ac:	e00f      	b.n	80035ce <RCCEx_PLLSAI1_Config+0x186>
      {
        if ((HAL_GetTick() - tickstart) > PLLSAI1_TIMEOUT_VALUE)
 80035ae:	f7fe f85f 	bl	8001670 <HAL_GetTick>
 80035b2:	4602      	mov	r2, r0
 80035b4:	68bb      	ldr	r3, [r7, #8]
 80035b6:	1ad3      	subs	r3, r2, r3
 80035b8:	2b02      	cmp	r3, #2
 80035ba:	d908      	bls.n	80035ce <RCCEx_PLLSAI1_Config+0x186>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->CR, RCC_CR_PLLSAI1RDY) == 0U)
 80035bc:	4b0f      	ldr	r3, [pc, #60]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80035be:	681b      	ldr	r3, [r3, #0]
 80035c0:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 80035c4:	2b00      	cmp	r3, #0
 80035c6:	d109      	bne.n	80035dc <RCCEx_PLLSAI1_Config+0x194>
          {
            status = HAL_TIMEOUT;
 80035c8:	2303      	movs	r3, #3
 80035ca:	73fb      	strb	r3, [r7, #15]
          }
          break;
 80035cc:	e006      	b.n	80035dc <RCCEx_PLLSAI1_Config+0x194>
      while (READ_BIT(RCC->CR, RCC_CR_PLLSAI1RDY) == 0U)
 80035ce:	4b0b      	ldr	r3, [pc, #44]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80035d0:	681b      	ldr	r3, [r3, #0]
 80035d2:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 80035d6:	2b00      	cmp	r3, #0
 80035d8:	d0e9      	beq.n	80035ae <RCCEx_PLLSAI1_Config+0x166>
 80035da:	e000      	b.n	80035de <RCCEx_PLLSAI1_Config+0x196>
          break;
 80035dc:	bf00      	nop
        }
      }

      if (status == HAL_OK)
 80035de:	7bfb      	ldrb	r3, [r7, #15]
 80035e0:	2b00      	cmp	r3, #0
 80035e2:	d106      	bne.n	80035f2 <RCCEx_PLLSAI1_Config+0x1aa>
      {
        /* Configure the PLLSAI1 Clock output(s) */
        __HAL_RCC_PLLSAI1CLKOUT_ENABLE(pPllSai1->PLLSAI1ClockOut);
 80035e4:	4b05      	ldr	r3, [pc, #20]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80035e6:	691a      	ldr	r2, [r3, #16]
 80035e8:	687b      	ldr	r3, [r7, #4]
 80035ea:	699b      	ldr	r3, [r3, #24]
 80035ec:	4903      	ldr	r1, [pc, #12]	; (80035fc <RCCEx_PLLSAI1_Config+0x1b4>)
 80035ee:	4313      	orrs	r3, r2
 80035f0:	610b      	str	r3, [r1, #16]
      }
    }
  }

  return status;
 80035f2:	7bfb      	ldrb	r3, [r7, #15]
}
 80035f4:	4618      	mov	r0, r3
 80035f6:	3710      	adds	r7, #16
 80035f8:	46bd      	mov	sp, r7
 80035fa:	bd80      	pop	{r7, pc}
 80035fc:	40021000 	.word	0x40021000
 8003600:	07ff800c 	.word	0x07ff800c
 8003604:	ff9f800c 	.word	0xff9f800c
 8003608:	f9ff800c 	.word	0xf9ff800c

0800360c <RCCEx_PLLSAI2_Config>:
  * @note   PLLSAI2 is temporary disable to apply new parameters
  *
  * @retval HAL status
  */
static HAL_StatusTypeDef RCCEx_PLLSAI2_Config(RCC_PLLSAI2InitTypeDef *pPllSai2, uint32_t Divider)
{
 800360c:	b580      	push	{r7, lr}
 800360e:	b084      	sub	sp, #16
 8003610:	af00      	add	r7, sp, #0
 8003612:	6078      	str	r0, [r7, #4]
 8003614:	6039      	str	r1, [r7, #0]
  HAL_StatusTypeDef status = HAL_OK;
 8003616:	2300      	movs	r3, #0
 8003618:	73fb      	strb	r3, [r7, #15]
  assert_param(IS_RCC_PLLSAI2M_VALUE(pPllSai2->PLLSAI2M));
  assert_param(IS_RCC_PLLSAI2N_VALUE(pPllSai2->PLLSAI2N));
  assert_param(IS_RCC_PLLSAI2CLOCKOUT_VALUE(pPllSai2->PLLSAI2ClockOut));

  /* Check PLLSAI2 clock source availability */
  switch (pPllSai2->PLLSAI2Source)
 800361a:	687b      	ldr	r3, [r7, #4]
 800361c:	681b      	ldr	r3, [r3, #0]
 800361e:	2b02      	cmp	r3, #2
 8003620:	d00c      	beq.n	800363c <RCCEx_PLLSAI2_Config+0x30>
 8003622:	2b03      	cmp	r3, #3
 8003624:	d013      	beq.n	800364e <RCCEx_PLLSAI2_Config+0x42>
 8003626:	2b01      	cmp	r3, #1
 8003628:	d11a      	bne.n	8003660 <RCCEx_PLLSAI2_Config+0x54>
  {
    case RCC_PLLSOURCE_MSI:
      if (HAL_IS_BIT_CLR(RCC->CR, RCC_CR_MSIRDY))
 800362a:	4b4a      	ldr	r3, [pc, #296]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 800362c:	681b      	ldr	r3, [r3, #0]
 800362e:	f003 0302 	and.w	r3, r3, #2
 8003632:	2b00      	cmp	r3, #0
 8003634:	d117      	bne.n	8003666 <RCCEx_PLLSAI2_Config+0x5a>
      {
        status = HAL_ERROR;
 8003636:	2301      	movs	r3, #1
 8003638:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800363a:	e014      	b.n	8003666 <RCCEx_PLLSAI2_Config+0x5a>
    case RCC_PLLSOURCE_HSI:
      if (HAL_IS_BIT_CLR(RCC->CR, RCC_CR_HSIRDY))
 800363c:	4b45      	ldr	r3, [pc, #276]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 800363e:	681b      	ldr	r3, [r3, #0]
 8003640:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8003644:	2b00      	cmp	r3, #0
 8003646:	d110      	bne.n	800366a <RCCEx_PLLSAI2_Config+0x5e>
      {
        status = HAL_ERROR;
 8003648:	2301      	movs	r3, #1
 800364a:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800364c:	e00d      	b.n	800366a <RCCEx_PLLSAI2_Config+0x5e>
    case RCC_PLLSOURCE_HSE:
      if (HAL_IS_BIT_CLR(RCC->CR, (RCC_CR_HSERDY | RCC_CR_HSEBYP)))
 800364e:	4b41      	ldr	r3, [pc, #260]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 8003650:	681b      	ldr	r3, [r3, #0]
 8003652:	f403 23c0 	and.w	r3, r3, #393216	; 0x60000
 8003656:	2b00      	cmp	r3, #0
 8003658:	d109      	bne.n	800366e <RCCEx_PLLSAI2_Config+0x62>
      {
        status = HAL_ERROR;
 800365a:	2301      	movs	r3, #1
 800365c:	73fb      	strb	r3, [r7, #15]
      }
      break;
 800365e:	e006      	b.n	800366e <RCCEx_PLLSAI2_Config+0x62>
    default:
      status = HAL_ERROR;
 8003660:	2301      	movs	r3, #1
 8003662:	73fb      	strb	r3, [r7, #15]
      break;
 8003664:	e004      	b.n	8003670 <RCCEx_PLLSAI2_Config+0x64>
      break;
 8003666:	bf00      	nop
 8003668:	e002      	b.n	8003670 <RCCEx_PLLSAI2_Config+0x64>
      break;
 800366a:	bf00      	nop
 800366c:	e000      	b.n	8003670 <RCCEx_PLLSAI2_Config+0x64>
      break;
 800366e:	bf00      	nop
  }

  if (status == HAL_OK)
 8003670:	7bfb      	ldrb	r3, [r7, #15]
 8003672:	2b00      	cmp	r3, #0
 8003674:	d169      	bne.n	800374a <RCCEx_PLLSAI2_Config+0x13e>
  {
    /* Disable the PLLSAI2 */
    __HAL_RCC_PLLSAI2_DISABLE();
 8003676:	4b37      	ldr	r3, [pc, #220]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 8003678:	681b      	ldr	r3, [r3, #0]
 800367a:	4a36      	ldr	r2, [pc, #216]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 800367c:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8003680:	6013      	str	r3, [r2, #0]

    /* Get Start Tick*/
    tickstart = HAL_GetTick();
 8003682:	f7fd fff5 	bl	8001670 <HAL_GetTick>
 8003686:	60b8      	str	r0, [r7, #8]

    /* Wait till PLLSAI2 is ready to be updated */
    while (READ_BIT(RCC->CR, RCC_CR_PLLSAI2RDY) != 0U)
 8003688:	e00f      	b.n	80036aa <RCCEx_PLLSAI2_Config+0x9e>
    {
      if ((HAL_GetTick() - tickstart) > PLLSAI2_TIMEOUT_VALUE)
 800368a:	f7fd fff1 	bl	8001670 <HAL_GetTick>
 800368e:	4602      	mov	r2, r0
 8003690:	68bb      	ldr	r3, [r7, #8]
 8003692:	1ad3      	subs	r3, r2, r3
 8003694:	2b02      	cmp	r3, #2
 8003696:	d908      	bls.n	80036aa <RCCEx_PLLSAI2_Config+0x9e>
      {
        /* New check to avoid false timeout detection in case of preemption */
        if (READ_BIT(RCC->CR, RCC_CR_PLLSAI2RDY) != 0U)
 8003698:	4b2e      	ldr	r3, [pc, #184]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 800369a:	681b      	ldr	r3, [r3, #0]
 800369c:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 80036a0:	2b00      	cmp	r3, #0
 80036a2:	d009      	beq.n	80036b8 <RCCEx_PLLSAI2_Config+0xac>
        {
          status = HAL_TIMEOUT;
 80036a4:	2303      	movs	r3, #3
 80036a6:	73fb      	strb	r3, [r7, #15]
        }
        break;
 80036a8:	e006      	b.n	80036b8 <RCCEx_PLLSAI2_Config+0xac>
    while (READ_BIT(RCC->CR, RCC_CR_PLLSAI2RDY) != 0U)
 80036aa:	4b2a      	ldr	r3, [pc, #168]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 80036ac:	681b      	ldr	r3, [r3, #0]
 80036ae:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 80036b2:	2b00      	cmp	r3, #0
 80036b4:	d1e9      	bne.n	800368a <RCCEx_PLLSAI2_Config+0x7e>
 80036b6:	e000      	b.n	80036ba <RCCEx_PLLSAI2_Config+0xae>
        break;
 80036b8:	bf00      	nop
      }
    }

    if (status == HAL_OK)
 80036ba:	7bfb      	ldrb	r3, [r7, #15]
 80036bc:	2b00      	cmp	r3, #0
 80036be:	d144      	bne.n	800374a <RCCEx_PLLSAI2_Config+0x13e>
    {
      if (Divider == DIVIDER_P_UPDATE)
 80036c0:	683b      	ldr	r3, [r7, #0]
 80036c2:	2b00      	cmp	r3, #0
 80036c4:	d115      	bne.n	80036f2 <RCCEx_PLLSAI2_Config+0xe6>
      {
        assert_param(IS_RCC_PLLSAI2P_VALUE(pPllSai2->PLLSAI2P));

        /* Configure the PLLSAI2 Division factor M, P and Multiplication factor N*/
        MODIFY_REG(RCC->PLLSAI2CFGR,
 80036c6:	4b23      	ldr	r3, [pc, #140]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 80036c8:	695a      	ldr	r2, [r3, #20]
 80036ca:	4b23      	ldr	r3, [pc, #140]	; (8003758 <RCCEx_PLLSAI2_Config+0x14c>)
 80036cc:	4013      	ands	r3, r2
 80036ce:	687a      	ldr	r2, [r7, #4]
 80036d0:	6892      	ldr	r2, [r2, #8]
 80036d2:	0211      	lsls	r1, r2, #8
 80036d4:	687a      	ldr	r2, [r7, #4]
 80036d6:	68d2      	ldr	r2, [r2, #12]
 80036d8:	06d2      	lsls	r2, r2, #27
 80036da:	4311      	orrs	r1, r2
 80036dc:	687a      	ldr	r2, [r7, #4]
 80036de:	6852      	ldr	r2, [r2, #4]
 80036e0:	3a01      	subs	r2, #1
 80036e2:	0112      	lsls	r2, r2, #4
 80036e4:	4311      	orrs	r1, r2
 80036e6:	687a      	ldr	r2, [r7, #4]
 80036e8:	6812      	ldr	r2, [r2, #0]
 80036ea:	430a      	orrs	r2, r1
 80036ec:	4919      	ldr	r1, [pc, #100]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 80036ee:	4313      	orrs	r3, r2
 80036f0:	614b      	str	r3, [r1, #20]
                   pPllSai2->PLLSAI2Source);

      }

      /* Enable the PLLSAI2 again by setting PLLSAI2ON to 1*/
      __HAL_RCC_PLLSAI2_ENABLE();
 80036f2:	4b18      	ldr	r3, [pc, #96]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 80036f4:	681b      	ldr	r3, [r3, #0]
 80036f6:	4a17      	ldr	r2, [pc, #92]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 80036f8:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80036fc:	6013      	str	r3, [r2, #0]

      /* Get Start Tick*/
      tickstart = HAL_GetTick();
 80036fe:	f7fd ffb7 	bl	8001670 <HAL_GetTick>
 8003702:	60b8      	str	r0, [r7, #8]

      /* Wait till PLLSAI2 is ready */
      while (READ_BIT(RCC->CR, RCC_CR_PLLSAI2RDY) == 0U)
 8003704:	e00f      	b.n	8003726 <RCCEx_PLLSAI2_Config+0x11a>
      {
        if ((HAL_GetTick() - tickstart) > PLLSAI2_TIMEOUT_VALUE)
 8003706:	f7fd ffb3 	bl	8001670 <HAL_GetTick>
 800370a:	4602      	mov	r2, r0
 800370c:	68bb      	ldr	r3, [r7, #8]
 800370e:	1ad3      	subs	r3, r2, r3
 8003710:	2b02      	cmp	r3, #2
 8003712:	d908      	bls.n	8003726 <RCCEx_PLLSAI2_Config+0x11a>
        {
          /* New check to avoid false timeout detection in case of preemption */
          if (READ_BIT(RCC->CR, RCC_CR_PLLSAI2RDY) == 0U)
 8003714:	4b0f      	ldr	r3, [pc, #60]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 8003716:	681b      	ldr	r3, [r3, #0]
 8003718:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 800371c:	2b00      	cmp	r3, #0
 800371e:	d109      	bne.n	8003734 <RCCEx_PLLSAI2_Config+0x128>
          {
            status = HAL_TIMEOUT;
 8003720:	2303      	movs	r3, #3
 8003722:	73fb      	strb	r3, [r7, #15]
          }
          break;
 8003724:	e006      	b.n	8003734 <RCCEx_PLLSAI2_Config+0x128>
      while (READ_BIT(RCC->CR, RCC_CR_PLLSAI2RDY) == 0U)
 8003726:	4b0b      	ldr	r3, [pc, #44]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 8003728:	681b      	ldr	r3, [r3, #0]
 800372a:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 800372e:	2b00      	cmp	r3, #0
 8003730:	d0e9      	beq.n	8003706 <RCCEx_PLLSAI2_Config+0xfa>
 8003732:	e000      	b.n	8003736 <RCCEx_PLLSAI2_Config+0x12a>
          break;
 8003734:	bf00      	nop
        }
      }

      if (status == HAL_OK)
 8003736:	7bfb      	ldrb	r3, [r7, #15]
 8003738:	2b00      	cmp	r3, #0
 800373a:	d106      	bne.n	800374a <RCCEx_PLLSAI2_Config+0x13e>
      {
        /* Configure the PLLSAI2 Clock output(s) */
        __HAL_RCC_PLLSAI2CLKOUT_ENABLE(pPllSai2->PLLSAI2ClockOut);
 800373c:	4b05      	ldr	r3, [pc, #20]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 800373e:	695a      	ldr	r2, [r3, #20]
 8003740:	687b      	ldr	r3, [r7, #4]
 8003742:	691b      	ldr	r3, [r3, #16]
 8003744:	4903      	ldr	r1, [pc, #12]	; (8003754 <RCCEx_PLLSAI2_Config+0x148>)
 8003746:	4313      	orrs	r3, r2
 8003748:	614b      	str	r3, [r1, #20]
      }
    }
  }

  return status;
 800374a:	7bfb      	ldrb	r3, [r7, #15]
}
 800374c:	4618      	mov	r0, r3
 800374e:	3710      	adds	r7, #16
 8003750:	46bd      	mov	sp, r7
 8003752:	bd80      	pop	{r7, pc}
 8003754:	40021000 	.word	0x40021000
 8003758:	07ff800c 	.word	0x07ff800c

0800375c <HAL_UART_Init>:
  *        parameters in the UART_InitTypeDef and initialize the associated handle.
  * @param huart UART handle.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
{
 800375c:	b580      	push	{r7, lr}
 800375e:	b082      	sub	sp, #8
 8003760:	af00      	add	r7, sp, #0
 8003762:	6078      	str	r0, [r7, #4]
  /* Check the UART handle allocation */
  if (huart == NULL)
 8003764:	687b      	ldr	r3, [r7, #4]
 8003766:	2b00      	cmp	r3, #0
 8003768:	d101      	bne.n	800376e <HAL_UART_Init+0x12>
  {
    return HAL_ERROR;
 800376a:	2301      	movs	r3, #1
 800376c:	e042      	b.n	80037f4 <HAL_UART_Init+0x98>
  {
    /* Check the parameters */
    assert_param((IS_UART_INSTANCE(huart->Instance)) || (IS_LPUART_INSTANCE(huart->Instance)));
  }

  if (huart->gState == HAL_UART_STATE_RESET)
 800376e:	687b      	ldr	r3, [r7, #4]
 8003770:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8003774:	2b00      	cmp	r3, #0
 8003776:	d106      	bne.n	8003786 <HAL_UART_Init+0x2a>
  {
    /* Allocate lock resource and initialize it */
    huart->Lock = HAL_UNLOCKED;
 8003778:	687b      	ldr	r3, [r7, #4]
 800377a:	2200      	movs	r2, #0
 800377c:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

    /* Init the low level hardware */
    huart->MspInitCallback(huart);
#else
    /* Init the low level hardware : GPIO, CLOCK */
    HAL_UART_MspInit(huart);
 8003780:	6878      	ldr	r0, [r7, #4]
 8003782:	f7fd fd37 	bl	80011f4 <HAL_UART_MspInit>
#endif /* (USE_HAL_UART_REGISTER_CALLBACKS) */
  }

  huart->gState = HAL_UART_STATE_BUSY;
 8003786:	687b      	ldr	r3, [r7, #4]
 8003788:	2224      	movs	r2, #36	; 0x24
 800378a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  __HAL_UART_DISABLE(huart);
 800378e:	687b      	ldr	r3, [r7, #4]
 8003790:	681b      	ldr	r3, [r3, #0]
 8003792:	681a      	ldr	r2, [r3, #0]
 8003794:	687b      	ldr	r3, [r7, #4]
 8003796:	681b      	ldr	r3, [r3, #0]
 8003798:	f022 0201 	bic.w	r2, r2, #1
 800379c:	601a      	str	r2, [r3, #0]

  /* Set the UART Communication parameters */
  if (UART_SetConfig(huart) == HAL_ERROR)
 800379e:	6878      	ldr	r0, [r7, #4]
 80037a0:	f000 f996 	bl	8003ad0 <UART_SetConfig>
 80037a4:	4603      	mov	r3, r0
 80037a6:	2b01      	cmp	r3, #1
 80037a8:	d101      	bne.n	80037ae <HAL_UART_Init+0x52>
  {
    return HAL_ERROR;
 80037aa:	2301      	movs	r3, #1
 80037ac:	e022      	b.n	80037f4 <HAL_UART_Init+0x98>
  }

  if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 80037ae:	687b      	ldr	r3, [r7, #4]
 80037b0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80037b2:	2b00      	cmp	r3, #0
 80037b4:	d002      	beq.n	80037bc <HAL_UART_Init+0x60>
  {
    UART_AdvFeatureConfig(huart);
 80037b6:	6878      	ldr	r0, [r7, #4]
 80037b8:	f000 fc5c 	bl	8004074 <UART_AdvFeatureConfig>
  }

  /* In asynchronous mode, the following bits must be kept cleared:
  - LINEN and CLKEN bits in the USART_CR2 register,
  - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
  CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 80037bc:	687b      	ldr	r3, [r7, #4]
 80037be:	681b      	ldr	r3, [r3, #0]
 80037c0:	685a      	ldr	r2, [r3, #4]
 80037c2:	687b      	ldr	r3, [r7, #4]
 80037c4:	681b      	ldr	r3, [r3, #0]
 80037c6:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 80037ca:	605a      	str	r2, [r3, #4]
  CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 80037cc:	687b      	ldr	r3, [r7, #4]
 80037ce:	681b      	ldr	r3, [r3, #0]
 80037d0:	689a      	ldr	r2, [r3, #8]
 80037d2:	687b      	ldr	r3, [r7, #4]
 80037d4:	681b      	ldr	r3, [r3, #0]
 80037d6:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 80037da:	609a      	str	r2, [r3, #8]

  __HAL_UART_ENABLE(huart);
 80037dc:	687b      	ldr	r3, [r7, #4]
 80037de:	681b      	ldr	r3, [r3, #0]
 80037e0:	681a      	ldr	r2, [r3, #0]
 80037e2:	687b      	ldr	r3, [r7, #4]
 80037e4:	681b      	ldr	r3, [r3, #0]
 80037e6:	f042 0201 	orr.w	r2, r2, #1
 80037ea:	601a      	str	r2, [r3, #0]

  /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
  return (UART_CheckIdleState(huart));
 80037ec:	6878      	ldr	r0, [r7, #4]
 80037ee:	f000 fce2 	bl	80041b6 <UART_CheckIdleState>
 80037f2:	4603      	mov	r3, r0
}
 80037f4:	4618      	mov	r0, r3
 80037f6:	3708      	adds	r7, #8
 80037f8:	46bd      	mov	sp, r7
 80037fa:	bd80      	pop	{r7, pc}

080037fc <HAL_UART_Transmit>:
  * @param Size    Amount of data elements (u8 or u16) to be sent.
  * @param Timeout Timeout duration.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 80037fc:	b580      	push	{r7, lr}
 80037fe:	b08a      	sub	sp, #40	; 0x28
 8003800:	af02      	add	r7, sp, #8
 8003802:	60f8      	str	r0, [r7, #12]
 8003804:	60b9      	str	r1, [r7, #8]
 8003806:	603b      	str	r3, [r7, #0]
 8003808:	4613      	mov	r3, r2
 800380a:	80fb      	strh	r3, [r7, #6]
  uint8_t  *pdata8bits;
  uint16_t *pdata16bits;
  uint32_t tickstart;

  /* Check that a Tx process is not already ongoing */
  if (huart->gState == HAL_UART_STATE_READY)
 800380c:	68fb      	ldr	r3, [r7, #12]
 800380e:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8003812:	2b20      	cmp	r3, #32
 8003814:	f040 8083 	bne.w	800391e <HAL_UART_Transmit+0x122>
  {
    if ((pData == NULL) || (Size == 0U))
 8003818:	68bb      	ldr	r3, [r7, #8]
 800381a:	2b00      	cmp	r3, #0
 800381c:	d002      	beq.n	8003824 <HAL_UART_Transmit+0x28>
 800381e:	88fb      	ldrh	r3, [r7, #6]
 8003820:	2b00      	cmp	r3, #0
 8003822:	d101      	bne.n	8003828 <HAL_UART_Transmit+0x2c>
    {
      return  HAL_ERROR;
 8003824:	2301      	movs	r3, #1
 8003826:	e07b      	b.n	8003920 <HAL_UART_Transmit+0x124>
    }

    __HAL_LOCK(huart);
 8003828:	68fb      	ldr	r3, [r7, #12]
 800382a:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800382e:	2b01      	cmp	r3, #1
 8003830:	d101      	bne.n	8003836 <HAL_UART_Transmit+0x3a>
 8003832:	2302      	movs	r3, #2
 8003834:	e074      	b.n	8003920 <HAL_UART_Transmit+0x124>
 8003836:	68fb      	ldr	r3, [r7, #12]
 8003838:	2201      	movs	r2, #1
 800383a:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 800383e:	68fb      	ldr	r3, [r7, #12]
 8003840:	2200      	movs	r2, #0
 8003842:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
    huart->gState = HAL_UART_STATE_BUSY_TX;
 8003846:	68fb      	ldr	r3, [r7, #12]
 8003848:	2221      	movs	r2, #33	; 0x21
 800384a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 800384e:	f7fd ff0f 	bl	8001670 <HAL_GetTick>
 8003852:	6178      	str	r0, [r7, #20]

    huart->TxXferSize  = Size;
 8003854:	68fb      	ldr	r3, [r7, #12]
 8003856:	88fa      	ldrh	r2, [r7, #6]
 8003858:	f8a3 2054 	strh.w	r2, [r3, #84]	; 0x54
    huart->TxXferCount = Size;
 800385c:	68fb      	ldr	r3, [r7, #12]
 800385e:	88fa      	ldrh	r2, [r7, #6]
 8003860:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56

    /* In case of 9bits/No Parity transfer, pData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8003864:	68fb      	ldr	r3, [r7, #12]
 8003866:	689b      	ldr	r3, [r3, #8]
 8003868:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 800386c:	d108      	bne.n	8003880 <HAL_UART_Transmit+0x84>
 800386e:	68fb      	ldr	r3, [r7, #12]
 8003870:	691b      	ldr	r3, [r3, #16]
 8003872:	2b00      	cmp	r3, #0
 8003874:	d104      	bne.n	8003880 <HAL_UART_Transmit+0x84>
    {
      pdata8bits  = NULL;
 8003876:	2300      	movs	r3, #0
 8003878:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 800387a:	68bb      	ldr	r3, [r7, #8]
 800387c:	61bb      	str	r3, [r7, #24]
 800387e:	e003      	b.n	8003888 <HAL_UART_Transmit+0x8c>
    }
    else
    {
      pdata8bits  = pData;
 8003880:	68bb      	ldr	r3, [r7, #8]
 8003882:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8003884:	2300      	movs	r3, #0
 8003886:	61bb      	str	r3, [r7, #24]
    }

    __HAL_UNLOCK(huart);
 8003888:	68fb      	ldr	r3, [r7, #12]
 800388a:	2200      	movs	r2, #0
 800388c:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

    while (huart->TxXferCount > 0U)
 8003890:	e02c      	b.n	80038ec <HAL_UART_Transmit+0xf0>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 8003892:	683b      	ldr	r3, [r7, #0]
 8003894:	9300      	str	r3, [sp, #0]
 8003896:	697b      	ldr	r3, [r7, #20]
 8003898:	2200      	movs	r2, #0
 800389a:	2180      	movs	r1, #128	; 0x80
 800389c:	68f8      	ldr	r0, [r7, #12]
 800389e:	f000 fcd5 	bl	800424c <UART_WaitOnFlagUntilTimeout>
 80038a2:	4603      	mov	r3, r0
 80038a4:	2b00      	cmp	r3, #0
 80038a6:	d001      	beq.n	80038ac <HAL_UART_Transmit+0xb0>
      {
        return HAL_TIMEOUT;
 80038a8:	2303      	movs	r3, #3
 80038aa:	e039      	b.n	8003920 <HAL_UART_Transmit+0x124>
      }
      if (pdata8bits == NULL)
 80038ac:	69fb      	ldr	r3, [r7, #28]
 80038ae:	2b00      	cmp	r3, #0
 80038b0:	d10b      	bne.n	80038ca <HAL_UART_Transmit+0xce>
      {
        huart->Instance->TDR = (uint16_t)(*pdata16bits & 0x01FFU);
 80038b2:	69bb      	ldr	r3, [r7, #24]
 80038b4:	881b      	ldrh	r3, [r3, #0]
 80038b6:	461a      	mov	r2, r3
 80038b8:	68fb      	ldr	r3, [r7, #12]
 80038ba:	681b      	ldr	r3, [r3, #0]
 80038bc:	f3c2 0208 	ubfx	r2, r2, #0, #9
 80038c0:	629a      	str	r2, [r3, #40]	; 0x28
        pdata16bits++;
 80038c2:	69bb      	ldr	r3, [r7, #24]
 80038c4:	3302      	adds	r3, #2
 80038c6:	61bb      	str	r3, [r7, #24]
 80038c8:	e007      	b.n	80038da <HAL_UART_Transmit+0xde>
      }
      else
      {
        huart->Instance->TDR = (uint8_t)(*pdata8bits & 0xFFU);
 80038ca:	69fb      	ldr	r3, [r7, #28]
 80038cc:	781a      	ldrb	r2, [r3, #0]
 80038ce:	68fb      	ldr	r3, [r7, #12]
 80038d0:	681b      	ldr	r3, [r3, #0]
 80038d2:	629a      	str	r2, [r3, #40]	; 0x28
        pdata8bits++;
 80038d4:	69fb      	ldr	r3, [r7, #28]
 80038d6:	3301      	adds	r3, #1
 80038d8:	61fb      	str	r3, [r7, #28]
      }
      huart->TxXferCount--;
 80038da:	68fb      	ldr	r3, [r7, #12]
 80038dc:	f8b3 3056 	ldrh.w	r3, [r3, #86]	; 0x56
 80038e0:	b29b      	uxth	r3, r3
 80038e2:	3b01      	subs	r3, #1
 80038e4:	b29a      	uxth	r2, r3
 80038e6:	68fb      	ldr	r3, [r7, #12]
 80038e8:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
    while (huart->TxXferCount > 0U)
 80038ec:	68fb      	ldr	r3, [r7, #12]
 80038ee:	f8b3 3056 	ldrh.w	r3, [r3, #86]	; 0x56
 80038f2:	b29b      	uxth	r3, r3
 80038f4:	2b00      	cmp	r3, #0
 80038f6:	d1cc      	bne.n	8003892 <HAL_UART_Transmit+0x96>
    }

    if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 80038f8:	683b      	ldr	r3, [r7, #0]
 80038fa:	9300      	str	r3, [sp, #0]
 80038fc:	697b      	ldr	r3, [r7, #20]
 80038fe:	2200      	movs	r2, #0
 8003900:	2140      	movs	r1, #64	; 0x40
 8003902:	68f8      	ldr	r0, [r7, #12]
 8003904:	f000 fca2 	bl	800424c <UART_WaitOnFlagUntilTimeout>
 8003908:	4603      	mov	r3, r0
 800390a:	2b00      	cmp	r3, #0
 800390c:	d001      	beq.n	8003912 <HAL_UART_Transmit+0x116>
    {
      return HAL_TIMEOUT;
 800390e:	2303      	movs	r3, #3
 8003910:	e006      	b.n	8003920 <HAL_UART_Transmit+0x124>
    }

    /* At end of Tx process, restore huart->gState to Ready */
    huart->gState = HAL_UART_STATE_READY;
 8003912:	68fb      	ldr	r3, [r7, #12]
 8003914:	2220      	movs	r2, #32
 8003916:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

    return HAL_OK;
 800391a:	2300      	movs	r3, #0
 800391c:	e000      	b.n	8003920 <HAL_UART_Transmit+0x124>
  }
  else
  {
    return HAL_BUSY;
 800391e:	2302      	movs	r3, #2
  }
}
 8003920:	4618      	mov	r0, r3
 8003922:	3720      	adds	r7, #32
 8003924:	46bd      	mov	sp, r7
 8003926:	bd80      	pop	{r7, pc}

08003928 <HAL_UART_Receive>:
  * @param Size    Amount of data elements (u8 or u16) to be received.
  * @param Timeout Timeout duration.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
{
 8003928:	b580      	push	{r7, lr}
 800392a:	b08a      	sub	sp, #40	; 0x28
 800392c:	af02      	add	r7, sp, #8
 800392e:	60f8      	str	r0, [r7, #12]
 8003930:	60b9      	str	r1, [r7, #8]
 8003932:	603b      	str	r3, [r7, #0]
 8003934:	4613      	mov	r3, r2
 8003936:	80fb      	strh	r3, [r7, #6]
  uint16_t *pdata16bits;
  uint16_t uhMask;
  uint32_t tickstart;

  /* Check that a Rx process is not already ongoing */
  if (huart->RxState == HAL_UART_STATE_READY)
 8003938:	68fb      	ldr	r3, [r7, #12]
 800393a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800393e:	2b20      	cmp	r3, #32
 8003940:	f040 80c0 	bne.w	8003ac4 <HAL_UART_Receive+0x19c>
  {
    if ((pData == NULL) || (Size == 0U))
 8003944:	68bb      	ldr	r3, [r7, #8]
 8003946:	2b00      	cmp	r3, #0
 8003948:	d002      	beq.n	8003950 <HAL_UART_Receive+0x28>
 800394a:	88fb      	ldrh	r3, [r7, #6]
 800394c:	2b00      	cmp	r3, #0
 800394e:	d101      	bne.n	8003954 <HAL_UART_Receive+0x2c>
    {
      return  HAL_ERROR;
 8003950:	2301      	movs	r3, #1
 8003952:	e0b8      	b.n	8003ac6 <HAL_UART_Receive+0x19e>
    }

    __HAL_LOCK(huart);
 8003954:	68fb      	ldr	r3, [r7, #12]
 8003956:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800395a:	2b01      	cmp	r3, #1
 800395c:	d101      	bne.n	8003962 <HAL_UART_Receive+0x3a>
 800395e:	2302      	movs	r3, #2
 8003960:	e0b1      	b.n	8003ac6 <HAL_UART_Receive+0x19e>
 8003962:	68fb      	ldr	r3, [r7, #12]
 8003964:	2201      	movs	r2, #1
 8003966:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

    huart->ErrorCode = HAL_UART_ERROR_NONE;
 800396a:	68fb      	ldr	r3, [r7, #12]
 800396c:	2200      	movs	r2, #0
 800396e:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
    huart->RxState = HAL_UART_STATE_BUSY_RX;
 8003972:	68fb      	ldr	r3, [r7, #12]
 8003974:	2222      	movs	r2, #34	; 0x22
 8003976:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
    huart->ReceptionType = HAL_UART_RECEPTION_STANDARD;
 800397a:	68fb      	ldr	r3, [r7, #12]
 800397c:	2200      	movs	r2, #0
 800397e:	66da      	str	r2, [r3, #108]	; 0x6c

    /* Init tickstart for timeout management */
    tickstart = HAL_GetTick();
 8003980:	f7fd fe76 	bl	8001670 <HAL_GetTick>
 8003984:	6178      	str	r0, [r7, #20]

    huart->RxXferSize  = Size;
 8003986:	68fb      	ldr	r3, [r7, #12]
 8003988:	88fa      	ldrh	r2, [r7, #6]
 800398a:	f8a3 205c 	strh.w	r2, [r3, #92]	; 0x5c
    huart->RxXferCount = Size;
 800398e:	68fb      	ldr	r3, [r7, #12]
 8003990:	88fa      	ldrh	r2, [r7, #6]
 8003992:	f8a3 205e 	strh.w	r2, [r3, #94]	; 0x5e

    /* Computation of UART mask to apply to RDR register */
    UART_MASK_COMPUTATION(huart);
 8003996:	68fb      	ldr	r3, [r7, #12]
 8003998:	689b      	ldr	r3, [r3, #8]
 800399a:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 800399e:	d10e      	bne.n	80039be <HAL_UART_Receive+0x96>
 80039a0:	68fb      	ldr	r3, [r7, #12]
 80039a2:	691b      	ldr	r3, [r3, #16]
 80039a4:	2b00      	cmp	r3, #0
 80039a6:	d105      	bne.n	80039b4 <HAL_UART_Receive+0x8c>
 80039a8:	68fb      	ldr	r3, [r7, #12]
 80039aa:	f240 12ff 	movw	r2, #511	; 0x1ff
 80039ae:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 80039b2:	e02d      	b.n	8003a10 <HAL_UART_Receive+0xe8>
 80039b4:	68fb      	ldr	r3, [r7, #12]
 80039b6:	22ff      	movs	r2, #255	; 0xff
 80039b8:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 80039bc:	e028      	b.n	8003a10 <HAL_UART_Receive+0xe8>
 80039be:	68fb      	ldr	r3, [r7, #12]
 80039c0:	689b      	ldr	r3, [r3, #8]
 80039c2:	2b00      	cmp	r3, #0
 80039c4:	d10d      	bne.n	80039e2 <HAL_UART_Receive+0xba>
 80039c6:	68fb      	ldr	r3, [r7, #12]
 80039c8:	691b      	ldr	r3, [r3, #16]
 80039ca:	2b00      	cmp	r3, #0
 80039cc:	d104      	bne.n	80039d8 <HAL_UART_Receive+0xb0>
 80039ce:	68fb      	ldr	r3, [r7, #12]
 80039d0:	22ff      	movs	r2, #255	; 0xff
 80039d2:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 80039d6:	e01b      	b.n	8003a10 <HAL_UART_Receive+0xe8>
 80039d8:	68fb      	ldr	r3, [r7, #12]
 80039da:	227f      	movs	r2, #127	; 0x7f
 80039dc:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 80039e0:	e016      	b.n	8003a10 <HAL_UART_Receive+0xe8>
 80039e2:	68fb      	ldr	r3, [r7, #12]
 80039e4:	689b      	ldr	r3, [r3, #8]
 80039e6:	f1b3 5f80 	cmp.w	r3, #268435456	; 0x10000000
 80039ea:	d10d      	bne.n	8003a08 <HAL_UART_Receive+0xe0>
 80039ec:	68fb      	ldr	r3, [r7, #12]
 80039ee:	691b      	ldr	r3, [r3, #16]
 80039f0:	2b00      	cmp	r3, #0
 80039f2:	d104      	bne.n	80039fe <HAL_UART_Receive+0xd6>
 80039f4:	68fb      	ldr	r3, [r7, #12]
 80039f6:	227f      	movs	r2, #127	; 0x7f
 80039f8:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 80039fc:	e008      	b.n	8003a10 <HAL_UART_Receive+0xe8>
 80039fe:	68fb      	ldr	r3, [r7, #12]
 8003a00:	223f      	movs	r2, #63	; 0x3f
 8003a02:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8003a06:	e003      	b.n	8003a10 <HAL_UART_Receive+0xe8>
 8003a08:	68fb      	ldr	r3, [r7, #12]
 8003a0a:	2200      	movs	r2, #0
 8003a0c:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
    uhMask = huart->Mask;
 8003a10:	68fb      	ldr	r3, [r7, #12]
 8003a12:	f8b3 3060 	ldrh.w	r3, [r3, #96]	; 0x60
 8003a16:	827b      	strh	r3, [r7, #18]

    /* In case of 9bits/No Parity transfer, pRxData needs to be handled as a uint16_t pointer */
    if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
 8003a18:	68fb      	ldr	r3, [r7, #12]
 8003a1a:	689b      	ldr	r3, [r3, #8]
 8003a1c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8003a20:	d108      	bne.n	8003a34 <HAL_UART_Receive+0x10c>
 8003a22:	68fb      	ldr	r3, [r7, #12]
 8003a24:	691b      	ldr	r3, [r3, #16]
 8003a26:	2b00      	cmp	r3, #0
 8003a28:	d104      	bne.n	8003a34 <HAL_UART_Receive+0x10c>
    {
      pdata8bits  = NULL;
 8003a2a:	2300      	movs	r3, #0
 8003a2c:	61fb      	str	r3, [r7, #28]
      pdata16bits = (uint16_t *) pData;
 8003a2e:	68bb      	ldr	r3, [r7, #8]
 8003a30:	61bb      	str	r3, [r7, #24]
 8003a32:	e003      	b.n	8003a3c <HAL_UART_Receive+0x114>
    }
    else
    {
      pdata8bits  = pData;
 8003a34:	68bb      	ldr	r3, [r7, #8]
 8003a36:	61fb      	str	r3, [r7, #28]
      pdata16bits = NULL;
 8003a38:	2300      	movs	r3, #0
 8003a3a:	61bb      	str	r3, [r7, #24]
    }

    __HAL_UNLOCK(huart);
 8003a3c:	68fb      	ldr	r3, [r7, #12]
 8003a3e:	2200      	movs	r2, #0
 8003a40:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

    /* as long as data have to be received */
    while (huart->RxXferCount > 0U)
 8003a44:	e032      	b.n	8003aac <HAL_UART_Receive+0x184>
    {
      if (UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
 8003a46:	683b      	ldr	r3, [r7, #0]
 8003a48:	9300      	str	r3, [sp, #0]
 8003a4a:	697b      	ldr	r3, [r7, #20]
 8003a4c:	2200      	movs	r2, #0
 8003a4e:	2120      	movs	r1, #32
 8003a50:	68f8      	ldr	r0, [r7, #12]
 8003a52:	f000 fbfb 	bl	800424c <UART_WaitOnFlagUntilTimeout>
 8003a56:	4603      	mov	r3, r0
 8003a58:	2b00      	cmp	r3, #0
 8003a5a:	d001      	beq.n	8003a60 <HAL_UART_Receive+0x138>
      {
        return HAL_TIMEOUT;
 8003a5c:	2303      	movs	r3, #3
 8003a5e:	e032      	b.n	8003ac6 <HAL_UART_Receive+0x19e>
      }
      if (pdata8bits == NULL)
 8003a60:	69fb      	ldr	r3, [r7, #28]
 8003a62:	2b00      	cmp	r3, #0
 8003a64:	d10c      	bne.n	8003a80 <HAL_UART_Receive+0x158>
      {
        *pdata16bits = (uint16_t)(huart->Instance->RDR & uhMask);
 8003a66:	68fb      	ldr	r3, [r7, #12]
 8003a68:	681b      	ldr	r3, [r3, #0]
 8003a6a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8003a6c:	b29a      	uxth	r2, r3
 8003a6e:	8a7b      	ldrh	r3, [r7, #18]
 8003a70:	4013      	ands	r3, r2
 8003a72:	b29a      	uxth	r2, r3
 8003a74:	69bb      	ldr	r3, [r7, #24]
 8003a76:	801a      	strh	r2, [r3, #0]
        pdata16bits++;
 8003a78:	69bb      	ldr	r3, [r7, #24]
 8003a7a:	3302      	adds	r3, #2
 8003a7c:	61bb      	str	r3, [r7, #24]
 8003a7e:	e00c      	b.n	8003a9a <HAL_UART_Receive+0x172>
      }
      else
      {
        *pdata8bits = (uint8_t)(huart->Instance->RDR & (uint8_t)uhMask);
 8003a80:	68fb      	ldr	r3, [r7, #12]
 8003a82:	681b      	ldr	r3, [r3, #0]
 8003a84:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8003a86:	b2da      	uxtb	r2, r3
 8003a88:	8a7b      	ldrh	r3, [r7, #18]
 8003a8a:	b2db      	uxtb	r3, r3
 8003a8c:	4013      	ands	r3, r2
 8003a8e:	b2da      	uxtb	r2, r3
 8003a90:	69fb      	ldr	r3, [r7, #28]
 8003a92:	701a      	strb	r2, [r3, #0]
        pdata8bits++;
 8003a94:	69fb      	ldr	r3, [r7, #28]
 8003a96:	3301      	adds	r3, #1
 8003a98:	61fb      	str	r3, [r7, #28]
      }
      huart->RxXferCount--;
 8003a9a:	68fb      	ldr	r3, [r7, #12]
 8003a9c:	f8b3 305e 	ldrh.w	r3, [r3, #94]	; 0x5e
 8003aa0:	b29b      	uxth	r3, r3
 8003aa2:	3b01      	subs	r3, #1
 8003aa4:	b29a      	uxth	r2, r3
 8003aa6:	68fb      	ldr	r3, [r7, #12]
 8003aa8:	f8a3 205e 	strh.w	r2, [r3, #94]	; 0x5e
    while (huart->RxXferCount > 0U)
 8003aac:	68fb      	ldr	r3, [r7, #12]
 8003aae:	f8b3 305e 	ldrh.w	r3, [r3, #94]	; 0x5e
 8003ab2:	b29b      	uxth	r3, r3
 8003ab4:	2b00      	cmp	r3, #0
 8003ab6:	d1c6      	bne.n	8003a46 <HAL_UART_Receive+0x11e>
    }

    /* At end of Rx process, restore huart->RxState to Ready */
    huart->RxState = HAL_UART_STATE_READY;
 8003ab8:	68fb      	ldr	r3, [r7, #12]
 8003aba:	2220      	movs	r2, #32
 8003abc:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88

    return HAL_OK;
 8003ac0:	2300      	movs	r3, #0
 8003ac2:	e000      	b.n	8003ac6 <HAL_UART_Receive+0x19e>
  }
  else
  {
    return HAL_BUSY;
 8003ac4:	2302      	movs	r3, #2
  }
}
 8003ac6:	4618      	mov	r0, r3
 8003ac8:	3720      	adds	r7, #32
 8003aca:	46bd      	mov	sp, r7
 8003acc:	bd80      	pop	{r7, pc}
	...

08003ad0 <UART_SetConfig>:
  * @brief Configure the UART peripheral.
  * @param huart UART handle.
  * @retval HAL status
  */
HAL_StatusTypeDef UART_SetConfig(UART_HandleTypeDef *huart)
{
 8003ad0:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8003ad4:	b088      	sub	sp, #32
 8003ad6:	af00      	add	r7, sp, #0
 8003ad8:	6078      	str	r0, [r7, #4]
  uint32_t tmpreg;
  uint16_t brrtemp;
  UART_ClockSourceTypeDef clocksource;
  uint32_t usartdiv;
  HAL_StatusTypeDef ret               = HAL_OK;
 8003ada:	2300      	movs	r3, #0
 8003adc:	76bb      	strb	r3, [r7, #26]
  *  the UART Word Length, Parity, Mode and oversampling:
  *  set the M bits according to huart->Init.WordLength value
  *  set PCE and PS bits according to huart->Init.Parity value
  *  set TE and RE bits according to huart->Init.Mode value
  *  set OVER8 bit according to huart->Init.OverSampling value */
  tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.OverSampling ;
 8003ade:	687b      	ldr	r3, [r7, #4]
 8003ae0:	689a      	ldr	r2, [r3, #8]
 8003ae2:	687b      	ldr	r3, [r7, #4]
 8003ae4:	691b      	ldr	r3, [r3, #16]
 8003ae6:	431a      	orrs	r2, r3
 8003ae8:	687b      	ldr	r3, [r7, #4]
 8003aea:	695b      	ldr	r3, [r3, #20]
 8003aec:	431a      	orrs	r2, r3
 8003aee:	687b      	ldr	r3, [r7, #4]
 8003af0:	69db      	ldr	r3, [r3, #28]
 8003af2:	4313      	orrs	r3, r2
 8003af4:	61fb      	str	r3, [r7, #28]
  MODIFY_REG(huart->Instance->CR1, USART_CR1_FIELDS, tmpreg);
 8003af6:	687b      	ldr	r3, [r7, #4]
 8003af8:	681b      	ldr	r3, [r3, #0]
 8003afa:	681a      	ldr	r2, [r3, #0]
 8003afc:	4bb1      	ldr	r3, [pc, #708]	; (8003dc4 <UART_SetConfig+0x2f4>)
 8003afe:	4013      	ands	r3, r2
 8003b00:	687a      	ldr	r2, [r7, #4]
 8003b02:	6812      	ldr	r2, [r2, #0]
 8003b04:	69f9      	ldr	r1, [r7, #28]
 8003b06:	430b      	orrs	r3, r1
 8003b08:	6013      	str	r3, [r2, #0]

  /*-------------------------- USART CR2 Configuration -----------------------*/
  /* Configure the UART Stop Bits: Set STOP[13:12] bits according
  * to huart->Init.StopBits value */
  MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 8003b0a:	687b      	ldr	r3, [r7, #4]
 8003b0c:	681b      	ldr	r3, [r3, #0]
 8003b0e:	685b      	ldr	r3, [r3, #4]
 8003b10:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 8003b14:	687b      	ldr	r3, [r7, #4]
 8003b16:	68da      	ldr	r2, [r3, #12]
 8003b18:	687b      	ldr	r3, [r7, #4]
 8003b1a:	681b      	ldr	r3, [r3, #0]
 8003b1c:	430a      	orrs	r2, r1
 8003b1e:	605a      	str	r2, [r3, #4]
  /* Configure
  * - UART HardWare Flow Control: set CTSE and RTSE bits according
  *   to huart->Init.HwFlowCtl value
  * - one-bit sampling method versus three samples' majority rule according
  *   to huart->Init.OneBitSampling (not applicable to LPUART) */
  tmpreg = (uint32_t)huart->Init.HwFlowCtl;
 8003b20:	687b      	ldr	r3, [r7, #4]
 8003b22:	699b      	ldr	r3, [r3, #24]
 8003b24:	61fb      	str	r3, [r7, #28]

  if (!(UART_INSTANCE_LOWPOWER(huart)))
 8003b26:	687b      	ldr	r3, [r7, #4]
 8003b28:	681b      	ldr	r3, [r3, #0]
 8003b2a:	4aa7      	ldr	r2, [pc, #668]	; (8003dc8 <UART_SetConfig+0x2f8>)
 8003b2c:	4293      	cmp	r3, r2
 8003b2e:	d004      	beq.n	8003b3a <UART_SetConfig+0x6a>
  {
    tmpreg |= huart->Init.OneBitSampling;
 8003b30:	687b      	ldr	r3, [r7, #4]
 8003b32:	6a1b      	ldr	r3, [r3, #32]
 8003b34:	69fa      	ldr	r2, [r7, #28]
 8003b36:	4313      	orrs	r3, r2
 8003b38:	61fb      	str	r3, [r7, #28]
  }
  MODIFY_REG(huart->Instance->CR3, USART_CR3_FIELDS, tmpreg);
 8003b3a:	687b      	ldr	r3, [r7, #4]
 8003b3c:	681b      	ldr	r3, [r3, #0]
 8003b3e:	689b      	ldr	r3, [r3, #8]
 8003b40:	f023 436e 	bic.w	r3, r3, #3992977408	; 0xee000000
 8003b44:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8003b48:	687a      	ldr	r2, [r7, #4]
 8003b4a:	6812      	ldr	r2, [r2, #0]
 8003b4c:	69f9      	ldr	r1, [r7, #28]
 8003b4e:	430b      	orrs	r3, r1
 8003b50:	6093      	str	r3, [r2, #8]

  /*-------------------------- USART PRESC Configuration -----------------------*/
  /* Configure
  * - UART Clock Prescaler : set PRESCALER according to huart->Init.ClockPrescaler value */
  MODIFY_REG(huart->Instance->PRESC, USART_PRESC_PRESCALER, huart->Init.ClockPrescaler);
 8003b52:	687b      	ldr	r3, [r7, #4]
 8003b54:	681b      	ldr	r3, [r3, #0]
 8003b56:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8003b58:	f023 010f 	bic.w	r1, r3, #15
 8003b5c:	687b      	ldr	r3, [r7, #4]
 8003b5e:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8003b60:	687b      	ldr	r3, [r7, #4]
 8003b62:	681b      	ldr	r3, [r3, #0]
 8003b64:	430a      	orrs	r2, r1
 8003b66:	62da      	str	r2, [r3, #44]	; 0x2c

  /*-------------------------- USART BRR Configuration -----------------------*/
  UART_GETCLOCKSOURCE(huart, clocksource);
 8003b68:	687b      	ldr	r3, [r7, #4]
 8003b6a:	681b      	ldr	r3, [r3, #0]
 8003b6c:	4a97      	ldr	r2, [pc, #604]	; (8003dcc <UART_SetConfig+0x2fc>)
 8003b6e:	4293      	cmp	r3, r2
 8003b70:	d122      	bne.n	8003bb8 <UART_SetConfig+0xe8>
 8003b72:	4b97      	ldr	r3, [pc, #604]	; (8003dd0 <UART_SetConfig+0x300>)
 8003b74:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003b78:	f003 0303 	and.w	r3, r3, #3
 8003b7c:	2b03      	cmp	r3, #3
 8003b7e:	d817      	bhi.n	8003bb0 <UART_SetConfig+0xe0>
 8003b80:	a201      	add	r2, pc, #4	; (adr r2, 8003b88 <UART_SetConfig+0xb8>)
 8003b82:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8003b86:	bf00      	nop
 8003b88:	08003b99 	.word	0x08003b99
 8003b8c:	08003ba5 	.word	0x08003ba5
 8003b90:	08003b9f 	.word	0x08003b9f
 8003b94:	08003bab 	.word	0x08003bab
 8003b98:	2301      	movs	r3, #1
 8003b9a:	76fb      	strb	r3, [r7, #27]
 8003b9c:	e0e8      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003b9e:	2302      	movs	r3, #2
 8003ba0:	76fb      	strb	r3, [r7, #27]
 8003ba2:	e0e5      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003ba4:	2304      	movs	r3, #4
 8003ba6:	76fb      	strb	r3, [r7, #27]
 8003ba8:	e0e2      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003baa:	2308      	movs	r3, #8
 8003bac:	76fb      	strb	r3, [r7, #27]
 8003bae:	e0df      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003bb0:	2310      	movs	r3, #16
 8003bb2:	76fb      	strb	r3, [r7, #27]
 8003bb4:	bf00      	nop
 8003bb6:	e0db      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003bb8:	687b      	ldr	r3, [r7, #4]
 8003bba:	681b      	ldr	r3, [r3, #0]
 8003bbc:	4a85      	ldr	r2, [pc, #532]	; (8003dd4 <UART_SetConfig+0x304>)
 8003bbe:	4293      	cmp	r3, r2
 8003bc0:	d134      	bne.n	8003c2c <UART_SetConfig+0x15c>
 8003bc2:	4b83      	ldr	r3, [pc, #524]	; (8003dd0 <UART_SetConfig+0x300>)
 8003bc4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003bc8:	f003 030c 	and.w	r3, r3, #12
 8003bcc:	2b0c      	cmp	r3, #12
 8003bce:	d829      	bhi.n	8003c24 <UART_SetConfig+0x154>
 8003bd0:	a201      	add	r2, pc, #4	; (adr r2, 8003bd8 <UART_SetConfig+0x108>)
 8003bd2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8003bd6:	bf00      	nop
 8003bd8:	08003c0d 	.word	0x08003c0d
 8003bdc:	08003c25 	.word	0x08003c25
 8003be0:	08003c25 	.word	0x08003c25
 8003be4:	08003c25 	.word	0x08003c25
 8003be8:	08003c19 	.word	0x08003c19
 8003bec:	08003c25 	.word	0x08003c25
 8003bf0:	08003c25 	.word	0x08003c25
 8003bf4:	08003c25 	.word	0x08003c25
 8003bf8:	08003c13 	.word	0x08003c13
 8003bfc:	08003c25 	.word	0x08003c25
 8003c00:	08003c25 	.word	0x08003c25
 8003c04:	08003c25 	.word	0x08003c25
 8003c08:	08003c1f 	.word	0x08003c1f
 8003c0c:	2300      	movs	r3, #0
 8003c0e:	76fb      	strb	r3, [r7, #27]
 8003c10:	e0ae      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c12:	2302      	movs	r3, #2
 8003c14:	76fb      	strb	r3, [r7, #27]
 8003c16:	e0ab      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c18:	2304      	movs	r3, #4
 8003c1a:	76fb      	strb	r3, [r7, #27]
 8003c1c:	e0a8      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c1e:	2308      	movs	r3, #8
 8003c20:	76fb      	strb	r3, [r7, #27]
 8003c22:	e0a5      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c24:	2310      	movs	r3, #16
 8003c26:	76fb      	strb	r3, [r7, #27]
 8003c28:	bf00      	nop
 8003c2a:	e0a1      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c2c:	687b      	ldr	r3, [r7, #4]
 8003c2e:	681b      	ldr	r3, [r3, #0]
 8003c30:	4a69      	ldr	r2, [pc, #420]	; (8003dd8 <UART_SetConfig+0x308>)
 8003c32:	4293      	cmp	r3, r2
 8003c34:	d120      	bne.n	8003c78 <UART_SetConfig+0x1a8>
 8003c36:	4b66      	ldr	r3, [pc, #408]	; (8003dd0 <UART_SetConfig+0x300>)
 8003c38:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003c3c:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8003c40:	2b10      	cmp	r3, #16
 8003c42:	d00f      	beq.n	8003c64 <UART_SetConfig+0x194>
 8003c44:	2b10      	cmp	r3, #16
 8003c46:	d802      	bhi.n	8003c4e <UART_SetConfig+0x17e>
 8003c48:	2b00      	cmp	r3, #0
 8003c4a:	d005      	beq.n	8003c58 <UART_SetConfig+0x188>
 8003c4c:	e010      	b.n	8003c70 <UART_SetConfig+0x1a0>
 8003c4e:	2b20      	cmp	r3, #32
 8003c50:	d005      	beq.n	8003c5e <UART_SetConfig+0x18e>
 8003c52:	2b30      	cmp	r3, #48	; 0x30
 8003c54:	d009      	beq.n	8003c6a <UART_SetConfig+0x19a>
 8003c56:	e00b      	b.n	8003c70 <UART_SetConfig+0x1a0>
 8003c58:	2300      	movs	r3, #0
 8003c5a:	76fb      	strb	r3, [r7, #27]
 8003c5c:	e088      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c5e:	2302      	movs	r3, #2
 8003c60:	76fb      	strb	r3, [r7, #27]
 8003c62:	e085      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c64:	2304      	movs	r3, #4
 8003c66:	76fb      	strb	r3, [r7, #27]
 8003c68:	e082      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c6a:	2308      	movs	r3, #8
 8003c6c:	76fb      	strb	r3, [r7, #27]
 8003c6e:	e07f      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c70:	2310      	movs	r3, #16
 8003c72:	76fb      	strb	r3, [r7, #27]
 8003c74:	bf00      	nop
 8003c76:	e07b      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003c78:	687b      	ldr	r3, [r7, #4]
 8003c7a:	681b      	ldr	r3, [r3, #0]
 8003c7c:	4a57      	ldr	r2, [pc, #348]	; (8003ddc <UART_SetConfig+0x30c>)
 8003c7e:	4293      	cmp	r3, r2
 8003c80:	d120      	bne.n	8003cc4 <UART_SetConfig+0x1f4>
 8003c82:	4b53      	ldr	r3, [pc, #332]	; (8003dd0 <UART_SetConfig+0x300>)
 8003c84:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003c88:	f003 03c0 	and.w	r3, r3, #192	; 0xc0
 8003c8c:	2b40      	cmp	r3, #64	; 0x40
 8003c8e:	d00f      	beq.n	8003cb0 <UART_SetConfig+0x1e0>
 8003c90:	2b40      	cmp	r3, #64	; 0x40
 8003c92:	d802      	bhi.n	8003c9a <UART_SetConfig+0x1ca>
 8003c94:	2b00      	cmp	r3, #0
 8003c96:	d005      	beq.n	8003ca4 <UART_SetConfig+0x1d4>
 8003c98:	e010      	b.n	8003cbc <UART_SetConfig+0x1ec>
 8003c9a:	2b80      	cmp	r3, #128	; 0x80
 8003c9c:	d005      	beq.n	8003caa <UART_SetConfig+0x1da>
 8003c9e:	2bc0      	cmp	r3, #192	; 0xc0
 8003ca0:	d009      	beq.n	8003cb6 <UART_SetConfig+0x1e6>
 8003ca2:	e00b      	b.n	8003cbc <UART_SetConfig+0x1ec>
 8003ca4:	2300      	movs	r3, #0
 8003ca6:	76fb      	strb	r3, [r7, #27]
 8003ca8:	e062      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003caa:	2302      	movs	r3, #2
 8003cac:	76fb      	strb	r3, [r7, #27]
 8003cae:	e05f      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003cb0:	2304      	movs	r3, #4
 8003cb2:	76fb      	strb	r3, [r7, #27]
 8003cb4:	e05c      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003cb6:	2308      	movs	r3, #8
 8003cb8:	76fb      	strb	r3, [r7, #27]
 8003cba:	e059      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003cbc:	2310      	movs	r3, #16
 8003cbe:	76fb      	strb	r3, [r7, #27]
 8003cc0:	bf00      	nop
 8003cc2:	e055      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003cc4:	687b      	ldr	r3, [r7, #4]
 8003cc6:	681b      	ldr	r3, [r3, #0]
 8003cc8:	4a45      	ldr	r2, [pc, #276]	; (8003de0 <UART_SetConfig+0x310>)
 8003cca:	4293      	cmp	r3, r2
 8003ccc:	d124      	bne.n	8003d18 <UART_SetConfig+0x248>
 8003cce:	4b40      	ldr	r3, [pc, #256]	; (8003dd0 <UART_SetConfig+0x300>)
 8003cd0:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003cd4:	f403 7340 	and.w	r3, r3, #768	; 0x300
 8003cd8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8003cdc:	d012      	beq.n	8003d04 <UART_SetConfig+0x234>
 8003cde:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8003ce2:	d802      	bhi.n	8003cea <UART_SetConfig+0x21a>
 8003ce4:	2b00      	cmp	r3, #0
 8003ce6:	d007      	beq.n	8003cf8 <UART_SetConfig+0x228>
 8003ce8:	e012      	b.n	8003d10 <UART_SetConfig+0x240>
 8003cea:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8003cee:	d006      	beq.n	8003cfe <UART_SetConfig+0x22e>
 8003cf0:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8003cf4:	d009      	beq.n	8003d0a <UART_SetConfig+0x23a>
 8003cf6:	e00b      	b.n	8003d10 <UART_SetConfig+0x240>
 8003cf8:	2300      	movs	r3, #0
 8003cfa:	76fb      	strb	r3, [r7, #27]
 8003cfc:	e038      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003cfe:	2302      	movs	r3, #2
 8003d00:	76fb      	strb	r3, [r7, #27]
 8003d02:	e035      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d04:	2304      	movs	r3, #4
 8003d06:	76fb      	strb	r3, [r7, #27]
 8003d08:	e032      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d0a:	2308      	movs	r3, #8
 8003d0c:	76fb      	strb	r3, [r7, #27]
 8003d0e:	e02f      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d10:	2310      	movs	r3, #16
 8003d12:	76fb      	strb	r3, [r7, #27]
 8003d14:	bf00      	nop
 8003d16:	e02b      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d18:	687b      	ldr	r3, [r7, #4]
 8003d1a:	681b      	ldr	r3, [r3, #0]
 8003d1c:	4a2a      	ldr	r2, [pc, #168]	; (8003dc8 <UART_SetConfig+0x2f8>)
 8003d1e:	4293      	cmp	r3, r2
 8003d20:	d124      	bne.n	8003d6c <UART_SetConfig+0x29c>
 8003d22:	4b2b      	ldr	r3, [pc, #172]	; (8003dd0 <UART_SetConfig+0x300>)
 8003d24:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8003d28:	f403 6340 	and.w	r3, r3, #3072	; 0xc00
 8003d2c:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8003d30:	d012      	beq.n	8003d58 <UART_SetConfig+0x288>
 8003d32:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8003d36:	d802      	bhi.n	8003d3e <UART_SetConfig+0x26e>
 8003d38:	2b00      	cmp	r3, #0
 8003d3a:	d007      	beq.n	8003d4c <UART_SetConfig+0x27c>
 8003d3c:	e012      	b.n	8003d64 <UART_SetConfig+0x294>
 8003d3e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 8003d42:	d006      	beq.n	8003d52 <UART_SetConfig+0x282>
 8003d44:	f5b3 6f40 	cmp.w	r3, #3072	; 0xc00
 8003d48:	d009      	beq.n	8003d5e <UART_SetConfig+0x28e>
 8003d4a:	e00b      	b.n	8003d64 <UART_SetConfig+0x294>
 8003d4c:	2300      	movs	r3, #0
 8003d4e:	76fb      	strb	r3, [r7, #27]
 8003d50:	e00e      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d52:	2302      	movs	r3, #2
 8003d54:	76fb      	strb	r3, [r7, #27]
 8003d56:	e00b      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d58:	2304      	movs	r3, #4
 8003d5a:	76fb      	strb	r3, [r7, #27]
 8003d5c:	e008      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d5e:	2308      	movs	r3, #8
 8003d60:	76fb      	strb	r3, [r7, #27]
 8003d62:	e005      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d64:	2310      	movs	r3, #16
 8003d66:	76fb      	strb	r3, [r7, #27]
 8003d68:	bf00      	nop
 8003d6a:	e001      	b.n	8003d70 <UART_SetConfig+0x2a0>
 8003d6c:	2310      	movs	r3, #16
 8003d6e:	76fb      	strb	r3, [r7, #27]

  /* Check LPUART instance */
  if (UART_INSTANCE_LOWPOWER(huart))
 8003d70:	687b      	ldr	r3, [r7, #4]
 8003d72:	681b      	ldr	r3, [r3, #0]
 8003d74:	4a14      	ldr	r2, [pc, #80]	; (8003dc8 <UART_SetConfig+0x2f8>)
 8003d76:	4293      	cmp	r3, r2
 8003d78:	f040 80a5 	bne.w	8003ec6 <UART_SetConfig+0x3f6>
  {
    /* Retrieve frequency clock */
    switch (clocksource)
 8003d7c:	7efb      	ldrb	r3, [r7, #27]
 8003d7e:	2b08      	cmp	r3, #8
 8003d80:	d83a      	bhi.n	8003df8 <UART_SetConfig+0x328>
 8003d82:	a201      	add	r2, pc, #4	; (adr r2, 8003d88 <UART_SetConfig+0x2b8>)
 8003d84:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8003d88:	08003dad 	.word	0x08003dad
 8003d8c:	08003db5 	.word	0x08003db5
 8003d90:	08003dbd 	.word	0x08003dbd
 8003d94:	08003df9 	.word	0x08003df9
 8003d98:	08003de9 	.word	0x08003de9
 8003d9c:	08003df9 	.word	0x08003df9
 8003da0:	08003df9 	.word	0x08003df9
 8003da4:	08003df9 	.word	0x08003df9
 8003da8:	08003df1 	.word	0x08003df1
    {
      case UART_CLOCKSOURCE_PCLK1:
        pclk = HAL_RCC_GetPCLK1Freq();
 8003dac:	f7fe fed0 	bl	8002b50 <HAL_RCC_GetPCLK1Freq>
 8003db0:	6178      	str	r0, [r7, #20]
        break;
 8003db2:	e026      	b.n	8003e02 <UART_SetConfig+0x332>
      case UART_CLOCKSOURCE_PCLK2:
        pclk = HAL_RCC_GetPCLK2Freq();
 8003db4:	f7fe fee0 	bl	8002b78 <HAL_RCC_GetPCLK2Freq>
 8003db8:	6178      	str	r0, [r7, #20]
        break;
 8003dba:	e022      	b.n	8003e02 <UART_SetConfig+0x332>
      case UART_CLOCKSOURCE_HSI:
        pclk = (uint32_t) HSI_VALUE;
 8003dbc:	4b09      	ldr	r3, [pc, #36]	; (8003de4 <UART_SetConfig+0x314>)
 8003dbe:	617b      	str	r3, [r7, #20]
        break;
 8003dc0:	e01f      	b.n	8003e02 <UART_SetConfig+0x332>
 8003dc2:	bf00      	nop
 8003dc4:	cfff69f3 	.word	0xcfff69f3
 8003dc8:	40008000 	.word	0x40008000
 8003dcc:	40013800 	.word	0x40013800
 8003dd0:	40021000 	.word	0x40021000
 8003dd4:	40004400 	.word	0x40004400
 8003dd8:	40004800 	.word	0x40004800
 8003ddc:	40004c00 	.word	0x40004c00
 8003de0:	40005000 	.word	0x40005000
 8003de4:	00f42400 	.word	0x00f42400
      case UART_CLOCKSOURCE_SYSCLK:
        pclk = HAL_RCC_GetSysClockFreq();
 8003de8:	f7fe fe04 	bl	80029f4 <HAL_RCC_GetSysClockFreq>
 8003dec:	6178      	str	r0, [r7, #20]
        break;
 8003dee:	e008      	b.n	8003e02 <UART_SetConfig+0x332>
      case UART_CLOCKSOURCE_LSE:
        pclk = (uint32_t) LSE_VALUE;
 8003df0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8003df4:	617b      	str	r3, [r7, #20]
        break;
 8003df6:	e004      	b.n	8003e02 <UART_SetConfig+0x332>
      default:
        pclk = 0U;
 8003df8:	2300      	movs	r3, #0
 8003dfa:	617b      	str	r3, [r7, #20]
        ret = HAL_ERROR;
 8003dfc:	2301      	movs	r3, #1
 8003dfe:	76bb      	strb	r3, [r7, #26]
        break;
 8003e00:	bf00      	nop
    }

    /* If proper clock source reported */
    if (pclk != 0U)
 8003e02:	697b      	ldr	r3, [r7, #20]
 8003e04:	2b00      	cmp	r3, #0
 8003e06:	f000 811d 	beq.w	8004044 <UART_SetConfig+0x574>
    {
      /* Compute clock after Prescaler */
      lpuart_ker_ck_pres = (pclk / UARTPrescTable[huart->Init.ClockPrescaler]);
 8003e0a:	687b      	ldr	r3, [r7, #4]
 8003e0c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8003e0e:	4a97      	ldr	r2, [pc, #604]	; (800406c <UART_SetConfig+0x59c>)
 8003e10:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8003e14:	461a      	mov	r2, r3
 8003e16:	697b      	ldr	r3, [r7, #20]
 8003e18:	fbb3 f3f2 	udiv	r3, r3, r2
 8003e1c:	60bb      	str	r3, [r7, #8]

      /* Ensure that Frequency clock is in the range [3 * baudrate, 4096 * baudrate] */
      if ((lpuart_ker_ck_pres < (3U * huart->Init.BaudRate)) ||
 8003e1e:	687b      	ldr	r3, [r7, #4]
 8003e20:	685a      	ldr	r2, [r3, #4]
 8003e22:	4613      	mov	r3, r2
 8003e24:	005b      	lsls	r3, r3, #1
 8003e26:	4413      	add	r3, r2
 8003e28:	68ba      	ldr	r2, [r7, #8]
 8003e2a:	429a      	cmp	r2, r3
 8003e2c:	d305      	bcc.n	8003e3a <UART_SetConfig+0x36a>
          (lpuart_ker_ck_pres > (4096U * huart->Init.BaudRate)))
 8003e2e:	687b      	ldr	r3, [r7, #4]
 8003e30:	685b      	ldr	r3, [r3, #4]
 8003e32:	031b      	lsls	r3, r3, #12
      if ((lpuart_ker_ck_pres < (3U * huart->Init.BaudRate)) ||
 8003e34:	68ba      	ldr	r2, [r7, #8]
 8003e36:	429a      	cmp	r2, r3
 8003e38:	d902      	bls.n	8003e40 <UART_SetConfig+0x370>
      {
        ret = HAL_ERROR;
 8003e3a:	2301      	movs	r3, #1
 8003e3c:	76bb      	strb	r3, [r7, #26]
 8003e3e:	e101      	b.n	8004044 <UART_SetConfig+0x574>
      }
      else
      {
        /* Check computed UsartDiv value is in allocated range
           (it is forbidden to write values lower than 0x300 in the LPUART_BRR register) */
        usartdiv = (uint32_t)(UART_DIV_LPUART(pclk, (uint64_t)huart->Init.BaudRate, huart->Init.ClockPrescaler));
 8003e40:	697b      	ldr	r3, [r7, #20]
 8003e42:	4618      	mov	r0, r3
 8003e44:	f04f 0100 	mov.w	r1, #0
 8003e48:	687b      	ldr	r3, [r7, #4]
 8003e4a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8003e4c:	4a87      	ldr	r2, [pc, #540]	; (800406c <UART_SetConfig+0x59c>)
 8003e4e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8003e52:	b29b      	uxth	r3, r3
 8003e54:	f04f 0400 	mov.w	r4, #0
 8003e58:	461a      	mov	r2, r3
 8003e5a:	4623      	mov	r3, r4
 8003e5c:	f7fc f9ec 	bl	8000238 <__aeabi_uldivmod>
 8003e60:	4603      	mov	r3, r0
 8003e62:	460c      	mov	r4, r1
 8003e64:	4619      	mov	r1, r3
 8003e66:	4622      	mov	r2, r4
 8003e68:	f04f 0300 	mov.w	r3, #0
 8003e6c:	f04f 0400 	mov.w	r4, #0
 8003e70:	0214      	lsls	r4, r2, #8
 8003e72:	ea44 6411 	orr.w	r4, r4, r1, lsr #24
 8003e76:	020b      	lsls	r3, r1, #8
 8003e78:	687a      	ldr	r2, [r7, #4]
 8003e7a:	6852      	ldr	r2, [r2, #4]
 8003e7c:	0852      	lsrs	r2, r2, #1
 8003e7e:	4611      	mov	r1, r2
 8003e80:	f04f 0200 	mov.w	r2, #0
 8003e84:	eb13 0b01 	adds.w	fp, r3, r1
 8003e88:	eb44 0c02 	adc.w	ip, r4, r2
 8003e8c:	4658      	mov	r0, fp
 8003e8e:	4661      	mov	r1, ip
 8003e90:	687b      	ldr	r3, [r7, #4]
 8003e92:	685b      	ldr	r3, [r3, #4]
 8003e94:	f04f 0400 	mov.w	r4, #0
 8003e98:	461a      	mov	r2, r3
 8003e9a:	4623      	mov	r3, r4
 8003e9c:	f7fc f9cc 	bl	8000238 <__aeabi_uldivmod>
 8003ea0:	4603      	mov	r3, r0
 8003ea2:	460c      	mov	r4, r1
 8003ea4:	613b      	str	r3, [r7, #16]
        if ((usartdiv >= LPUART_BRR_MIN) && (usartdiv <= LPUART_BRR_MAX))
 8003ea6:	693b      	ldr	r3, [r7, #16]
 8003ea8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8003eac:	d308      	bcc.n	8003ec0 <UART_SetConfig+0x3f0>
 8003eae:	693b      	ldr	r3, [r7, #16]
 8003eb0:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8003eb4:	d204      	bcs.n	8003ec0 <UART_SetConfig+0x3f0>
        {
          huart->Instance->BRR = usartdiv;
 8003eb6:	687b      	ldr	r3, [r7, #4]
 8003eb8:	681b      	ldr	r3, [r3, #0]
 8003eba:	693a      	ldr	r2, [r7, #16]
 8003ebc:	60da      	str	r2, [r3, #12]
 8003ebe:	e0c1      	b.n	8004044 <UART_SetConfig+0x574>
        }
        else
        {
          ret = HAL_ERROR;
 8003ec0:	2301      	movs	r3, #1
 8003ec2:	76bb      	strb	r3, [r7, #26]
 8003ec4:	e0be      	b.n	8004044 <UART_SetConfig+0x574>
        }
      } /* if ( (lpuart_ker_ck_pres < (3 * huart->Init.BaudRate) ) || (lpuart_ker_ck_pres > (4096 * huart->Init.BaudRate) )) */
    } /* if (pclk != 0) */
  }
  /* Check UART Over Sampling to set Baud Rate Register */
  else if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 8003ec6:	687b      	ldr	r3, [r7, #4]
 8003ec8:	69db      	ldr	r3, [r3, #28]
 8003eca:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8003ece:	d164      	bne.n	8003f9a <UART_SetConfig+0x4ca>
  {
    switch (clocksource)
 8003ed0:	7efb      	ldrb	r3, [r7, #27]
 8003ed2:	2b08      	cmp	r3, #8
 8003ed4:	d827      	bhi.n	8003f26 <UART_SetConfig+0x456>
 8003ed6:	a201      	add	r2, pc, #4	; (adr r2, 8003edc <UART_SetConfig+0x40c>)
 8003ed8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8003edc:	08003f01 	.word	0x08003f01
 8003ee0:	08003f09 	.word	0x08003f09
 8003ee4:	08003f11 	.word	0x08003f11
 8003ee8:	08003f27 	.word	0x08003f27
 8003eec:	08003f17 	.word	0x08003f17
 8003ef0:	08003f27 	.word	0x08003f27
 8003ef4:	08003f27 	.word	0x08003f27
 8003ef8:	08003f27 	.word	0x08003f27
 8003efc:	08003f1f 	.word	0x08003f1f
    {
      case UART_CLOCKSOURCE_PCLK1:
        pclk = HAL_RCC_GetPCLK1Freq();
 8003f00:	f7fe fe26 	bl	8002b50 <HAL_RCC_GetPCLK1Freq>
 8003f04:	6178      	str	r0, [r7, #20]
        break;
 8003f06:	e013      	b.n	8003f30 <UART_SetConfig+0x460>
      case UART_CLOCKSOURCE_PCLK2:
        pclk = HAL_RCC_GetPCLK2Freq();
 8003f08:	f7fe fe36 	bl	8002b78 <HAL_RCC_GetPCLK2Freq>
 8003f0c:	6178      	str	r0, [r7, #20]
        break;
 8003f0e:	e00f      	b.n	8003f30 <UART_SetConfig+0x460>
      case UART_CLOCKSOURCE_HSI:
        pclk = (uint32_t) HSI_VALUE;
 8003f10:	4b57      	ldr	r3, [pc, #348]	; (8004070 <UART_SetConfig+0x5a0>)
 8003f12:	617b      	str	r3, [r7, #20]
        break;
 8003f14:	e00c      	b.n	8003f30 <UART_SetConfig+0x460>
      case UART_CLOCKSOURCE_SYSCLK:
        pclk = HAL_RCC_GetSysClockFreq();
 8003f16:	f7fe fd6d 	bl	80029f4 <HAL_RCC_GetSysClockFreq>
 8003f1a:	6178      	str	r0, [r7, #20]
        break;
 8003f1c:	e008      	b.n	8003f30 <UART_SetConfig+0x460>
      case UART_CLOCKSOURCE_LSE:
        pclk = (uint32_t) LSE_VALUE;
 8003f1e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8003f22:	617b      	str	r3, [r7, #20]
        break;
 8003f24:	e004      	b.n	8003f30 <UART_SetConfig+0x460>
      default:
        pclk = 0U;
 8003f26:	2300      	movs	r3, #0
 8003f28:	617b      	str	r3, [r7, #20]
        ret = HAL_ERROR;
 8003f2a:	2301      	movs	r3, #1
 8003f2c:	76bb      	strb	r3, [r7, #26]
        break;
 8003f2e:	bf00      	nop
    }

    /* USARTDIV must be greater than or equal to 0d16 */
    if (pclk != 0U)
 8003f30:	697b      	ldr	r3, [r7, #20]
 8003f32:	2b00      	cmp	r3, #0
 8003f34:	f000 8086 	beq.w	8004044 <UART_SetConfig+0x574>
    {
      usartdiv = (uint16_t)(UART_DIV_SAMPLING8(pclk, huart->Init.BaudRate, huart->Init.ClockPrescaler));
 8003f38:	687b      	ldr	r3, [r7, #4]
 8003f3a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8003f3c:	4a4b      	ldr	r2, [pc, #300]	; (800406c <UART_SetConfig+0x59c>)
 8003f3e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8003f42:	461a      	mov	r2, r3
 8003f44:	697b      	ldr	r3, [r7, #20]
 8003f46:	fbb3 f3f2 	udiv	r3, r3, r2
 8003f4a:	005a      	lsls	r2, r3, #1
 8003f4c:	687b      	ldr	r3, [r7, #4]
 8003f4e:	685b      	ldr	r3, [r3, #4]
 8003f50:	085b      	lsrs	r3, r3, #1
 8003f52:	441a      	add	r2, r3
 8003f54:	687b      	ldr	r3, [r7, #4]
 8003f56:	685b      	ldr	r3, [r3, #4]
 8003f58:	fbb2 f3f3 	udiv	r3, r2, r3
 8003f5c:	b29b      	uxth	r3, r3
 8003f5e:	613b      	str	r3, [r7, #16]
      if ((usartdiv >= UART_BRR_MIN) && (usartdiv <= UART_BRR_MAX))
 8003f60:	693b      	ldr	r3, [r7, #16]
 8003f62:	2b0f      	cmp	r3, #15
 8003f64:	d916      	bls.n	8003f94 <UART_SetConfig+0x4c4>
 8003f66:	693b      	ldr	r3, [r7, #16]
 8003f68:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8003f6c:	d212      	bcs.n	8003f94 <UART_SetConfig+0x4c4>
      {
        brrtemp = (uint16_t)(usartdiv & 0xFFF0U);
 8003f6e:	693b      	ldr	r3, [r7, #16]
 8003f70:	b29b      	uxth	r3, r3
 8003f72:	f023 030f 	bic.w	r3, r3, #15
 8003f76:	81fb      	strh	r3, [r7, #14]
        brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
 8003f78:	693b      	ldr	r3, [r7, #16]
 8003f7a:	085b      	lsrs	r3, r3, #1
 8003f7c:	b29b      	uxth	r3, r3
 8003f7e:	f003 0307 	and.w	r3, r3, #7
 8003f82:	b29a      	uxth	r2, r3
 8003f84:	89fb      	ldrh	r3, [r7, #14]
 8003f86:	4313      	orrs	r3, r2
 8003f88:	81fb      	strh	r3, [r7, #14]
        huart->Instance->BRR = brrtemp;
 8003f8a:	687b      	ldr	r3, [r7, #4]
 8003f8c:	681b      	ldr	r3, [r3, #0]
 8003f8e:	89fa      	ldrh	r2, [r7, #14]
 8003f90:	60da      	str	r2, [r3, #12]
 8003f92:	e057      	b.n	8004044 <UART_SetConfig+0x574>
      }
      else
      {
        ret = HAL_ERROR;
 8003f94:	2301      	movs	r3, #1
 8003f96:	76bb      	strb	r3, [r7, #26]
 8003f98:	e054      	b.n	8004044 <UART_SetConfig+0x574>
      }
    }
  }
  else
  {
    switch (clocksource)
 8003f9a:	7efb      	ldrb	r3, [r7, #27]
 8003f9c:	2b08      	cmp	r3, #8
 8003f9e:	d828      	bhi.n	8003ff2 <UART_SetConfig+0x522>
 8003fa0:	a201      	add	r2, pc, #4	; (adr r2, 8003fa8 <UART_SetConfig+0x4d8>)
 8003fa2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8003fa6:	bf00      	nop
 8003fa8:	08003fcd 	.word	0x08003fcd
 8003fac:	08003fd5 	.word	0x08003fd5
 8003fb0:	08003fdd 	.word	0x08003fdd
 8003fb4:	08003ff3 	.word	0x08003ff3
 8003fb8:	08003fe3 	.word	0x08003fe3
 8003fbc:	08003ff3 	.word	0x08003ff3
 8003fc0:	08003ff3 	.word	0x08003ff3
 8003fc4:	08003ff3 	.word	0x08003ff3
 8003fc8:	08003feb 	.word	0x08003feb
    {
      case UART_CLOCKSOURCE_PCLK1:
        pclk = HAL_RCC_GetPCLK1Freq();
 8003fcc:	f7fe fdc0 	bl	8002b50 <HAL_RCC_GetPCLK1Freq>
 8003fd0:	6178      	str	r0, [r7, #20]
        break;
 8003fd2:	e013      	b.n	8003ffc <UART_SetConfig+0x52c>
      case UART_CLOCKSOURCE_PCLK2:
        pclk = HAL_RCC_GetPCLK2Freq();
 8003fd4:	f7fe fdd0 	bl	8002b78 <HAL_RCC_GetPCLK2Freq>
 8003fd8:	6178      	str	r0, [r7, #20]
        break;
 8003fda:	e00f      	b.n	8003ffc <UART_SetConfig+0x52c>
      case UART_CLOCKSOURCE_HSI:
        pclk = (uint32_t) HSI_VALUE;
 8003fdc:	4b24      	ldr	r3, [pc, #144]	; (8004070 <UART_SetConfig+0x5a0>)
 8003fde:	617b      	str	r3, [r7, #20]
        break;
 8003fe0:	e00c      	b.n	8003ffc <UART_SetConfig+0x52c>
      case UART_CLOCKSOURCE_SYSCLK:
        pclk = HAL_RCC_GetSysClockFreq();
 8003fe2:	f7fe fd07 	bl	80029f4 <HAL_RCC_GetSysClockFreq>
 8003fe6:	6178      	str	r0, [r7, #20]
        break;
 8003fe8:	e008      	b.n	8003ffc <UART_SetConfig+0x52c>
      case UART_CLOCKSOURCE_LSE:
        pclk = (uint32_t) LSE_VALUE;
 8003fea:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8003fee:	617b      	str	r3, [r7, #20]
        break;
 8003ff0:	e004      	b.n	8003ffc <UART_SetConfig+0x52c>
      default:
        pclk = 0U;
 8003ff2:	2300      	movs	r3, #0
 8003ff4:	617b      	str	r3, [r7, #20]
        ret = HAL_ERROR;
 8003ff6:	2301      	movs	r3, #1
 8003ff8:	76bb      	strb	r3, [r7, #26]
        break;
 8003ffa:	bf00      	nop
    }

    if (pclk != 0U)
 8003ffc:	697b      	ldr	r3, [r7, #20]
 8003ffe:	2b00      	cmp	r3, #0
 8004000:	d020      	beq.n	8004044 <UART_SetConfig+0x574>
    {
      /* USARTDIV must be greater than or equal to 0d16 */
      usartdiv = (uint16_t)(UART_DIV_SAMPLING16(pclk, huart->Init.BaudRate, huart->Init.ClockPrescaler));
 8004002:	687b      	ldr	r3, [r7, #4]
 8004004:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8004006:	4a19      	ldr	r2, [pc, #100]	; (800406c <UART_SetConfig+0x59c>)
 8004008:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800400c:	461a      	mov	r2, r3
 800400e:	697b      	ldr	r3, [r7, #20]
 8004010:	fbb3 f2f2 	udiv	r2, r3, r2
 8004014:	687b      	ldr	r3, [r7, #4]
 8004016:	685b      	ldr	r3, [r3, #4]
 8004018:	085b      	lsrs	r3, r3, #1
 800401a:	441a      	add	r2, r3
 800401c:	687b      	ldr	r3, [r7, #4]
 800401e:	685b      	ldr	r3, [r3, #4]
 8004020:	fbb2 f3f3 	udiv	r3, r2, r3
 8004024:	b29b      	uxth	r3, r3
 8004026:	613b      	str	r3, [r7, #16]
      if ((usartdiv >= UART_BRR_MIN) && (usartdiv <= UART_BRR_MAX))
 8004028:	693b      	ldr	r3, [r7, #16]
 800402a:	2b0f      	cmp	r3, #15
 800402c:	d908      	bls.n	8004040 <UART_SetConfig+0x570>
 800402e:	693b      	ldr	r3, [r7, #16]
 8004030:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8004034:	d204      	bcs.n	8004040 <UART_SetConfig+0x570>
      {
        huart->Instance->BRR = usartdiv;
 8004036:	687b      	ldr	r3, [r7, #4]
 8004038:	681b      	ldr	r3, [r3, #0]
 800403a:	693a      	ldr	r2, [r7, #16]
 800403c:	60da      	str	r2, [r3, #12]
 800403e:	e001      	b.n	8004044 <UART_SetConfig+0x574>
      }
      else
      {
        ret = HAL_ERROR;
 8004040:	2301      	movs	r3, #1
 8004042:	76bb      	strb	r3, [r7, #26]
      }
    }
  }

  /* Initialize the number of data to process during RX/TX ISR execution */
  huart->NbTxDataToProcess = 1;
 8004044:	687b      	ldr	r3, [r7, #4]
 8004046:	2201      	movs	r2, #1
 8004048:	f8a3 206a 	strh.w	r2, [r3, #106]	; 0x6a
  huart->NbRxDataToProcess = 1;
 800404c:	687b      	ldr	r3, [r7, #4]
 800404e:	2201      	movs	r2, #1
 8004050:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68

  /* Clear ISR function pointers */
  huart->RxISR = NULL;
 8004054:	687b      	ldr	r3, [r7, #4]
 8004056:	2200      	movs	r2, #0
 8004058:	671a      	str	r2, [r3, #112]	; 0x70
  huart->TxISR = NULL;
 800405a:	687b      	ldr	r3, [r7, #4]
 800405c:	2200      	movs	r2, #0
 800405e:	675a      	str	r2, [r3, #116]	; 0x74

  return ret;
 8004060:	7ebb      	ldrb	r3, [r7, #26]
}
 8004062:	4618      	mov	r0, r3
 8004064:	3720      	adds	r7, #32
 8004066:	46bd      	mov	sp, r7
 8004068:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}
 800406c:	08009200 	.word	0x08009200
 8004070:	00f42400 	.word	0x00f42400

08004074 <UART_AdvFeatureConfig>:
  * @brief Configure the UART peripheral advanced features.
  * @param huart UART handle.
  * @retval None
  */
void UART_AdvFeatureConfig(UART_HandleTypeDef *huart)
{
 8004074:	b480      	push	{r7}
 8004076:	b083      	sub	sp, #12
 8004078:	af00      	add	r7, sp, #0
 800407a:	6078      	str	r0, [r7, #4]
  /* Check whether the set of advanced features to configure is properly set */
  assert_param(IS_UART_ADVFEATURE_INIT(huart->AdvancedInit.AdvFeatureInit));

  /* if required, configure TX pin active level inversion */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_TXINVERT_INIT))
 800407c:	687b      	ldr	r3, [r7, #4]
 800407e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8004080:	f003 0301 	and.w	r3, r3, #1
 8004084:	2b00      	cmp	r3, #0
 8004086:	d00a      	beq.n	800409e <UART_AdvFeatureConfig+0x2a>
  {
    assert_param(IS_UART_ADVFEATURE_TXINV(huart->AdvancedInit.TxPinLevelInvert));
    MODIFY_REG(huart->Instance->CR2, USART_CR2_TXINV, huart->AdvancedInit.TxPinLevelInvert);
 8004088:	687b      	ldr	r3, [r7, #4]
 800408a:	681b      	ldr	r3, [r3, #0]
 800408c:	685b      	ldr	r3, [r3, #4]
 800408e:	f423 3100 	bic.w	r1, r3, #131072	; 0x20000
 8004092:	687b      	ldr	r3, [r7, #4]
 8004094:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8004096:	687b      	ldr	r3, [r7, #4]
 8004098:	681b      	ldr	r3, [r3, #0]
 800409a:	430a      	orrs	r2, r1
 800409c:	605a      	str	r2, [r3, #4]
  }

  /* if required, configure RX pin active level inversion */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_RXINVERT_INIT))
 800409e:	687b      	ldr	r3, [r7, #4]
 80040a0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80040a2:	f003 0302 	and.w	r3, r3, #2
 80040a6:	2b00      	cmp	r3, #0
 80040a8:	d00a      	beq.n	80040c0 <UART_AdvFeatureConfig+0x4c>
  {
    assert_param(IS_UART_ADVFEATURE_RXINV(huart->AdvancedInit.RxPinLevelInvert));
    MODIFY_REG(huart->Instance->CR2, USART_CR2_RXINV, huart->AdvancedInit.RxPinLevelInvert);
 80040aa:	687b      	ldr	r3, [r7, #4]
 80040ac:	681b      	ldr	r3, [r3, #0]
 80040ae:	685b      	ldr	r3, [r3, #4]
 80040b0:	f423 3180 	bic.w	r1, r3, #65536	; 0x10000
 80040b4:	687b      	ldr	r3, [r7, #4]
 80040b6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80040b8:	687b      	ldr	r3, [r7, #4]
 80040ba:	681b      	ldr	r3, [r3, #0]
 80040bc:	430a      	orrs	r2, r1
 80040be:	605a      	str	r2, [r3, #4]
  }

  /* if required, configure data inversion */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_DATAINVERT_INIT))
 80040c0:	687b      	ldr	r3, [r7, #4]
 80040c2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80040c4:	f003 0304 	and.w	r3, r3, #4
 80040c8:	2b00      	cmp	r3, #0
 80040ca:	d00a      	beq.n	80040e2 <UART_AdvFeatureConfig+0x6e>
  {
    assert_param(IS_UART_ADVFEATURE_DATAINV(huart->AdvancedInit.DataInvert));
    MODIFY_REG(huart->Instance->CR2, USART_CR2_DATAINV, huart->AdvancedInit.DataInvert);
 80040cc:	687b      	ldr	r3, [r7, #4]
 80040ce:	681b      	ldr	r3, [r3, #0]
 80040d0:	685b      	ldr	r3, [r3, #4]
 80040d2:	f423 2180 	bic.w	r1, r3, #262144	; 0x40000
 80040d6:	687b      	ldr	r3, [r7, #4]
 80040d8:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 80040da:	687b      	ldr	r3, [r7, #4]
 80040dc:	681b      	ldr	r3, [r3, #0]
 80040de:	430a      	orrs	r2, r1
 80040e0:	605a      	str	r2, [r3, #4]
  }

  /* if required, configure RX/TX pins swap */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_SWAP_INIT))
 80040e2:	687b      	ldr	r3, [r7, #4]
 80040e4:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 80040e6:	f003 0308 	and.w	r3, r3, #8
 80040ea:	2b00      	cmp	r3, #0
 80040ec:	d00a      	beq.n	8004104 <UART_AdvFeatureConfig+0x90>
  {
    assert_param(IS_UART_ADVFEATURE_SWAP(huart->AdvancedInit.Swap));
    MODIFY_REG(huart->Instance->CR2, USART_CR2_SWAP, huart->AdvancedInit.Swap);
 80040ee:	687b      	ldr	r3, [r7, #4]
 80040f0:	681b      	ldr	r3, [r3, #0]
 80040f2:	685b      	ldr	r3, [r3, #4]
 80040f4:	f423 4100 	bic.w	r1, r3, #32768	; 0x8000
 80040f8:	687b      	ldr	r3, [r7, #4]
 80040fa:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80040fc:	687b      	ldr	r3, [r7, #4]
 80040fe:	681b      	ldr	r3, [r3, #0]
 8004100:	430a      	orrs	r2, r1
 8004102:	605a      	str	r2, [r3, #4]
  }

  /* if required, configure RX overrun detection disabling */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_RXOVERRUNDISABLE_INIT))
 8004104:	687b      	ldr	r3, [r7, #4]
 8004106:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8004108:	f003 0310 	and.w	r3, r3, #16
 800410c:	2b00      	cmp	r3, #0
 800410e:	d00a      	beq.n	8004126 <UART_AdvFeatureConfig+0xb2>
  {
    assert_param(IS_UART_OVERRUN(huart->AdvancedInit.OverrunDisable));
    MODIFY_REG(huart->Instance->CR3, USART_CR3_OVRDIS, huart->AdvancedInit.OverrunDisable);
 8004110:	687b      	ldr	r3, [r7, #4]
 8004112:	681b      	ldr	r3, [r3, #0]
 8004114:	689b      	ldr	r3, [r3, #8]
 8004116:	f423 5180 	bic.w	r1, r3, #4096	; 0x1000
 800411a:	687b      	ldr	r3, [r7, #4]
 800411c:	6bda      	ldr	r2, [r3, #60]	; 0x3c
 800411e:	687b      	ldr	r3, [r7, #4]
 8004120:	681b      	ldr	r3, [r3, #0]
 8004122:	430a      	orrs	r2, r1
 8004124:	609a      	str	r2, [r3, #8]
  }

  /* if required, configure DMA disabling on reception error */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_DMADISABLEONERROR_INIT))
 8004126:	687b      	ldr	r3, [r7, #4]
 8004128:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800412a:	f003 0320 	and.w	r3, r3, #32
 800412e:	2b00      	cmp	r3, #0
 8004130:	d00a      	beq.n	8004148 <UART_AdvFeatureConfig+0xd4>
  {
    assert_param(IS_UART_ADVFEATURE_DMAONRXERROR(huart->AdvancedInit.DMADisableonRxError));
    MODIFY_REG(huart->Instance->CR3, USART_CR3_DDRE, huart->AdvancedInit.DMADisableonRxError);
 8004132:	687b      	ldr	r3, [r7, #4]
 8004134:	681b      	ldr	r3, [r3, #0]
 8004136:	689b      	ldr	r3, [r3, #8]
 8004138:	f423 5100 	bic.w	r1, r3, #8192	; 0x2000
 800413c:	687b      	ldr	r3, [r7, #4]
 800413e:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 8004140:	687b      	ldr	r3, [r7, #4]
 8004142:	681b      	ldr	r3, [r3, #0]
 8004144:	430a      	orrs	r2, r1
 8004146:	609a      	str	r2, [r3, #8]
  }

  /* if required, configure auto Baud rate detection scheme */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_AUTOBAUDRATE_INIT))
 8004148:	687b      	ldr	r3, [r7, #4]
 800414a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800414c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 8004150:	2b00      	cmp	r3, #0
 8004152:	d01a      	beq.n	800418a <UART_AdvFeatureConfig+0x116>
  {
    assert_param(IS_USART_AUTOBAUDRATE_DETECTION_INSTANCE(huart->Instance));
    assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATE(huart->AdvancedInit.AutoBaudRateEnable));
    MODIFY_REG(huart->Instance->CR2, USART_CR2_ABREN, huart->AdvancedInit.AutoBaudRateEnable);
 8004154:	687b      	ldr	r3, [r7, #4]
 8004156:	681b      	ldr	r3, [r3, #0]
 8004158:	685b      	ldr	r3, [r3, #4]
 800415a:	f423 1180 	bic.w	r1, r3, #1048576	; 0x100000
 800415e:	687b      	ldr	r3, [r7, #4]
 8004160:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 8004162:	687b      	ldr	r3, [r7, #4]
 8004164:	681b      	ldr	r3, [r3, #0]
 8004166:	430a      	orrs	r2, r1
 8004168:	605a      	str	r2, [r3, #4]
    /* set auto Baudrate detection parameters if detection is enabled */
    if (huart->AdvancedInit.AutoBaudRateEnable == UART_ADVFEATURE_AUTOBAUDRATE_ENABLE)
 800416a:	687b      	ldr	r3, [r7, #4]
 800416c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800416e:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8004172:	d10a      	bne.n	800418a <UART_AdvFeatureConfig+0x116>
    {
      assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATEMODE(huart->AdvancedInit.AutoBaudRateMode));
      MODIFY_REG(huart->Instance->CR2, USART_CR2_ABRMODE, huart->AdvancedInit.AutoBaudRateMode);
 8004174:	687b      	ldr	r3, [r7, #4]
 8004176:	681b      	ldr	r3, [r3, #0]
 8004178:	685b      	ldr	r3, [r3, #4]
 800417a:	f423 01c0 	bic.w	r1, r3, #6291456	; 0x600000
 800417e:	687b      	ldr	r3, [r7, #4]
 8004180:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 8004182:	687b      	ldr	r3, [r7, #4]
 8004184:	681b      	ldr	r3, [r3, #0]
 8004186:	430a      	orrs	r2, r1
 8004188:	605a      	str	r2, [r3, #4]
    }
  }

  /* if required, configure MSB first on communication line */
  if (HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_MSBFIRST_INIT))
 800418a:	687b      	ldr	r3, [r7, #4]
 800418c:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800418e:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8004192:	2b00      	cmp	r3, #0
 8004194:	d00a      	beq.n	80041ac <UART_AdvFeatureConfig+0x138>
  {
    assert_param(IS_UART_ADVFEATURE_MSBFIRST(huart->AdvancedInit.MSBFirst));
    MODIFY_REG(huart->Instance->CR2, USART_CR2_MSBFIRST, huart->AdvancedInit.MSBFirst);
 8004196:	687b      	ldr	r3, [r7, #4]
 8004198:	681b      	ldr	r3, [r3, #0]
 800419a:	685b      	ldr	r3, [r3, #4]
 800419c:	f423 2100 	bic.w	r1, r3, #524288	; 0x80000
 80041a0:	687b      	ldr	r3, [r7, #4]
 80041a2:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 80041a4:	687b      	ldr	r3, [r7, #4]
 80041a6:	681b      	ldr	r3, [r3, #0]
 80041a8:	430a      	orrs	r2, r1
 80041aa:	605a      	str	r2, [r3, #4]
  }
}
 80041ac:	bf00      	nop
 80041ae:	370c      	adds	r7, #12
 80041b0:	46bd      	mov	sp, r7
 80041b2:	bc80      	pop	{r7}
 80041b4:	4770      	bx	lr

080041b6 <UART_CheckIdleState>:
  * @brief Check the UART Idle State.
  * @param huart UART handle.
  * @retval HAL status
  */
HAL_StatusTypeDef UART_CheckIdleState(UART_HandleTypeDef *huart)
{
 80041b6:	b580      	push	{r7, lr}
 80041b8:	b086      	sub	sp, #24
 80041ba:	af02      	add	r7, sp, #8
 80041bc:	6078      	str	r0, [r7, #4]
  uint32_t tickstart;

  /* Initialize the UART ErrorCode */
  huart->ErrorCode = HAL_UART_ERROR_NONE;
 80041be:	687b      	ldr	r3, [r7, #4]
 80041c0:	2200      	movs	r2, #0
 80041c2:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c

  /* Init tickstart for timeout management */
  tickstart = HAL_GetTick();
 80041c6:	f7fd fa53 	bl	8001670 <HAL_GetTick>
 80041ca:	60f8      	str	r0, [r7, #12]

  /* Check if the Transmitter is enabled */
  if ((huart->Instance->CR1 & USART_CR1_TE) == USART_CR1_TE)
 80041cc:	687b      	ldr	r3, [r7, #4]
 80041ce:	681b      	ldr	r3, [r3, #0]
 80041d0:	681b      	ldr	r3, [r3, #0]
 80041d2:	f003 0308 	and.w	r3, r3, #8
 80041d6:	2b08      	cmp	r3, #8
 80041d8:	d10e      	bne.n	80041f8 <UART_CheckIdleState+0x42>
  {
    /* Wait until TEACK flag is set */
    if (UART_WaitOnFlagUntilTimeout(huart, USART_ISR_TEACK, RESET, tickstart, HAL_UART_TIMEOUT_VALUE) != HAL_OK)
 80041da:	f06f 437e 	mvn.w	r3, #4261412864	; 0xfe000000
 80041de:	9300      	str	r3, [sp, #0]
 80041e0:	68fb      	ldr	r3, [r7, #12]
 80041e2:	2200      	movs	r2, #0
 80041e4:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 80041e8:	6878      	ldr	r0, [r7, #4]
 80041ea:	f000 f82f 	bl	800424c <UART_WaitOnFlagUntilTimeout>
 80041ee:	4603      	mov	r3, r0
 80041f0:	2b00      	cmp	r3, #0
 80041f2:	d001      	beq.n	80041f8 <UART_CheckIdleState+0x42>
    {
      /* Timeout occurred */
      return HAL_TIMEOUT;
 80041f4:	2303      	movs	r3, #3
 80041f6:	e025      	b.n	8004244 <UART_CheckIdleState+0x8e>
    }
  }

  /* Check if the Receiver is enabled */
  if ((huart->Instance->CR1 & USART_CR1_RE) == USART_CR1_RE)
 80041f8:	687b      	ldr	r3, [r7, #4]
 80041fa:	681b      	ldr	r3, [r3, #0]
 80041fc:	681b      	ldr	r3, [r3, #0]
 80041fe:	f003 0304 	and.w	r3, r3, #4
 8004202:	2b04      	cmp	r3, #4
 8004204:	d10e      	bne.n	8004224 <UART_CheckIdleState+0x6e>
  {
    /* Wait until REACK flag is set */
    if (UART_WaitOnFlagUntilTimeout(huart, USART_ISR_REACK, RESET, tickstart, HAL_UART_TIMEOUT_VALUE) != HAL_OK)
 8004206:	f06f 437e 	mvn.w	r3, #4261412864	; 0xfe000000
 800420a:	9300      	str	r3, [sp, #0]
 800420c:	68fb      	ldr	r3, [r7, #12]
 800420e:	2200      	movs	r2, #0
 8004210:	f44f 0180 	mov.w	r1, #4194304	; 0x400000
 8004214:	6878      	ldr	r0, [r7, #4]
 8004216:	f000 f819 	bl	800424c <UART_WaitOnFlagUntilTimeout>
 800421a:	4603      	mov	r3, r0
 800421c:	2b00      	cmp	r3, #0
 800421e:	d001      	beq.n	8004224 <UART_CheckIdleState+0x6e>
    {
      /* Timeout occurred */
      return HAL_TIMEOUT;
 8004220:	2303      	movs	r3, #3
 8004222:	e00f      	b.n	8004244 <UART_CheckIdleState+0x8e>
    }
  }

  /* Initialize the UART State */
  huart->gState = HAL_UART_STATE_READY;
 8004224:	687b      	ldr	r3, [r7, #4]
 8004226:	2220      	movs	r2, #32
 8004228:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
  huart->RxState = HAL_UART_STATE_READY;
 800422c:	687b      	ldr	r3, [r7, #4]
 800422e:	2220      	movs	r2, #32
 8004230:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
  huart->ReceptionType = HAL_UART_RECEPTION_STANDARD;
 8004234:	687b      	ldr	r3, [r7, #4]
 8004236:	2200      	movs	r2, #0
 8004238:	66da      	str	r2, [r3, #108]	; 0x6c

  __HAL_UNLOCK(huart);
 800423a:	687b      	ldr	r3, [r7, #4]
 800423c:	2200      	movs	r2, #0
 800423e:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  return HAL_OK;
 8004242:	2300      	movs	r3, #0
}
 8004244:	4618      	mov	r0, r3
 8004246:	3710      	adds	r7, #16
 8004248:	46bd      	mov	sp, r7
 800424a:	bd80      	pop	{r7, pc}

0800424c <UART_WaitOnFlagUntilTimeout>:
  * @param Timeout   Timeout duration
  * @retval HAL status
  */
HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus Status,
                                              uint32_t Tickstart, uint32_t Timeout)
{
 800424c:	b580      	push	{r7, lr}
 800424e:	b084      	sub	sp, #16
 8004250:	af00      	add	r7, sp, #0
 8004252:	60f8      	str	r0, [r7, #12]
 8004254:	60b9      	str	r1, [r7, #8]
 8004256:	603b      	str	r3, [r7, #0]
 8004258:	4613      	mov	r3, r2
 800425a:	71fb      	strb	r3, [r7, #7]
  /* Wait until flag is set */
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 800425c:	e062      	b.n	8004324 <UART_WaitOnFlagUntilTimeout+0xd8>
  {
    /* Check for the Timeout */
    if (Timeout != HAL_MAX_DELAY)
 800425e:	69bb      	ldr	r3, [r7, #24]
 8004260:	f1b3 3fff 	cmp.w	r3, #4294967295
 8004264:	d05e      	beq.n	8004324 <UART_WaitOnFlagUntilTimeout+0xd8>
    {
      if (((HAL_GetTick() - Tickstart) > Timeout) || (Timeout == 0U))
 8004266:	f7fd fa03 	bl	8001670 <HAL_GetTick>
 800426a:	4602      	mov	r2, r0
 800426c:	683b      	ldr	r3, [r7, #0]
 800426e:	1ad3      	subs	r3, r2, r3
 8004270:	69ba      	ldr	r2, [r7, #24]
 8004272:	429a      	cmp	r2, r3
 8004274:	d302      	bcc.n	800427c <UART_WaitOnFlagUntilTimeout+0x30>
 8004276:	69bb      	ldr	r3, [r7, #24]
 8004278:	2b00      	cmp	r3, #0
 800427a:	d11d      	bne.n	80042b8 <UART_WaitOnFlagUntilTimeout+0x6c>
      {
        /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
        CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE | USART_CR1_TXEIE_TXFNFIE));
 800427c:	68fb      	ldr	r3, [r7, #12]
 800427e:	681b      	ldr	r3, [r3, #0]
 8004280:	681a      	ldr	r2, [r3, #0]
 8004282:	68fb      	ldr	r3, [r7, #12]
 8004284:	681b      	ldr	r3, [r3, #0]
 8004286:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 800428a:	601a      	str	r2, [r3, #0]
        CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 800428c:	68fb      	ldr	r3, [r7, #12]
 800428e:	681b      	ldr	r3, [r3, #0]
 8004290:	689a      	ldr	r2, [r3, #8]
 8004292:	68fb      	ldr	r3, [r7, #12]
 8004294:	681b      	ldr	r3, [r3, #0]
 8004296:	f022 0201 	bic.w	r2, r2, #1
 800429a:	609a      	str	r2, [r3, #8]

        huart->gState = HAL_UART_STATE_READY;
 800429c:	68fb      	ldr	r3, [r7, #12]
 800429e:	2220      	movs	r2, #32
 80042a0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
        huart->RxState = HAL_UART_STATE_READY;
 80042a4:	68fb      	ldr	r3, [r7, #12]
 80042a6:	2220      	movs	r2, #32
 80042a8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88

        __HAL_UNLOCK(huart);
 80042ac:	68fb      	ldr	r3, [r7, #12]
 80042ae:	2200      	movs	r2, #0
 80042b0:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

        return HAL_TIMEOUT;
 80042b4:	2303      	movs	r3, #3
 80042b6:	e045      	b.n	8004344 <UART_WaitOnFlagUntilTimeout+0xf8>
      }

      if (READ_BIT(huart->Instance->CR1, USART_CR1_RE) != 0U)
 80042b8:	68fb      	ldr	r3, [r7, #12]
 80042ba:	681b      	ldr	r3, [r3, #0]
 80042bc:	681b      	ldr	r3, [r3, #0]
 80042be:	f003 0304 	and.w	r3, r3, #4
 80042c2:	2b00      	cmp	r3, #0
 80042c4:	d02e      	beq.n	8004324 <UART_WaitOnFlagUntilTimeout+0xd8>
      {
        if (__HAL_UART_GET_FLAG(huart, UART_FLAG_RTOF) == SET)
 80042c6:	68fb      	ldr	r3, [r7, #12]
 80042c8:	681b      	ldr	r3, [r3, #0]
 80042ca:	69db      	ldr	r3, [r3, #28]
 80042cc:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80042d0:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 80042d4:	d126      	bne.n	8004324 <UART_WaitOnFlagUntilTimeout+0xd8>
        {
          /* Clear Receiver Timeout flag*/
          __HAL_UART_CLEAR_FLAG(huart, UART_CLEAR_RTOF);
 80042d6:	68fb      	ldr	r3, [r7, #12]
 80042d8:	681b      	ldr	r3, [r3, #0]
 80042da:	f44f 6200 	mov.w	r2, #2048	; 0x800
 80042de:	621a      	str	r2, [r3, #32]

          /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for the interrupt process */
          CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE_RXFNEIE | USART_CR1_PEIE | USART_CR1_TXEIE_TXFNFIE));
 80042e0:	68fb      	ldr	r3, [r7, #12]
 80042e2:	681b      	ldr	r3, [r3, #0]
 80042e4:	681a      	ldr	r2, [r3, #0]
 80042e6:	68fb      	ldr	r3, [r7, #12]
 80042e8:	681b      	ldr	r3, [r3, #0]
 80042ea:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 80042ee:	601a      	str	r2, [r3, #0]
          CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 80042f0:	68fb      	ldr	r3, [r7, #12]
 80042f2:	681b      	ldr	r3, [r3, #0]
 80042f4:	689a      	ldr	r2, [r3, #8]
 80042f6:	68fb      	ldr	r3, [r7, #12]
 80042f8:	681b      	ldr	r3, [r3, #0]
 80042fa:	f022 0201 	bic.w	r2, r2, #1
 80042fe:	609a      	str	r2, [r3, #8]

          huart->gState = HAL_UART_STATE_READY;
 8004300:	68fb      	ldr	r3, [r7, #12]
 8004302:	2220      	movs	r2, #32
 8004304:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
          huart->RxState = HAL_UART_STATE_READY;
 8004308:	68fb      	ldr	r3, [r7, #12]
 800430a:	2220      	movs	r2, #32
 800430c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
          huart->ErrorCode = HAL_UART_ERROR_RTO;
 8004310:	68fb      	ldr	r3, [r7, #12]
 8004312:	2220      	movs	r2, #32
 8004314:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c

          /* Process Unlocked */
          __HAL_UNLOCK(huart);
 8004318:	68fb      	ldr	r3, [r7, #12]
 800431a:	2200      	movs	r2, #0
 800431c:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

          return HAL_TIMEOUT;
 8004320:	2303      	movs	r3, #3
 8004322:	e00f      	b.n	8004344 <UART_WaitOnFlagUntilTimeout+0xf8>
  while ((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
 8004324:	68fb      	ldr	r3, [r7, #12]
 8004326:	681b      	ldr	r3, [r3, #0]
 8004328:	69da      	ldr	r2, [r3, #28]
 800432a:	68bb      	ldr	r3, [r7, #8]
 800432c:	4013      	ands	r3, r2
 800432e:	68ba      	ldr	r2, [r7, #8]
 8004330:	429a      	cmp	r2, r3
 8004332:	bf0c      	ite	eq
 8004334:	2301      	moveq	r3, #1
 8004336:	2300      	movne	r3, #0
 8004338:	b2db      	uxtb	r3, r3
 800433a:	461a      	mov	r2, r3
 800433c:	79fb      	ldrb	r3, [r7, #7]
 800433e:	429a      	cmp	r2, r3
 8004340:	d08d      	beq.n	800425e <UART_WaitOnFlagUntilTimeout+0x12>
        }
      }
    }
  }
  return HAL_OK;
 8004342:	2300      	movs	r3, #0
}
 8004344:	4618      	mov	r0, r3
 8004346:	3710      	adds	r7, #16
 8004348:	46bd      	mov	sp, r7
 800434a:	bd80      	pop	{r7, pc}

0800434c <HAL_UARTEx_DisableFifoMode>:
  * @brief  Disable the FIFO mode.
  * @param huart      UART handle.
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UARTEx_DisableFifoMode(UART_HandleTypeDef *huart)
{
 800434c:	b480      	push	{r7}
 800434e:	b085      	sub	sp, #20
 8004350:	af00      	add	r7, sp, #0
 8004352:	6078      	str	r0, [r7, #4]

  /* Check parameters */
  assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));

  /* Process Locked */
  __HAL_LOCK(huart);
 8004354:	687b      	ldr	r3, [r7, #4]
 8004356:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800435a:	2b01      	cmp	r3, #1
 800435c:	d101      	bne.n	8004362 <HAL_UARTEx_DisableFifoMode+0x16>
 800435e:	2302      	movs	r3, #2
 8004360:	e027      	b.n	80043b2 <HAL_UARTEx_DisableFifoMode+0x66>
 8004362:	687b      	ldr	r3, [r7, #4]
 8004364:	2201      	movs	r2, #1
 8004366:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  huart->gState = HAL_UART_STATE_BUSY;
 800436a:	687b      	ldr	r3, [r7, #4]
 800436c:	2224      	movs	r2, #36	; 0x24
 800436e:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  /* Save actual UART configuration */
  tmpcr1 = READ_REG(huart->Instance->CR1);
 8004372:	687b      	ldr	r3, [r7, #4]
 8004374:	681b      	ldr	r3, [r3, #0]
 8004376:	681b      	ldr	r3, [r3, #0]
 8004378:	60fb      	str	r3, [r7, #12]

  /* Disable UART */
  __HAL_UART_DISABLE(huart);
 800437a:	687b      	ldr	r3, [r7, #4]
 800437c:	681b      	ldr	r3, [r3, #0]
 800437e:	681a      	ldr	r2, [r3, #0]
 8004380:	687b      	ldr	r3, [r7, #4]
 8004382:	681b      	ldr	r3, [r3, #0]
 8004384:	f022 0201 	bic.w	r2, r2, #1
 8004388:	601a      	str	r2, [r3, #0]

  /* Enable FIFO mode */
  CLEAR_BIT(tmpcr1, USART_CR1_FIFOEN);
 800438a:	68fb      	ldr	r3, [r7, #12]
 800438c:	f023 5300 	bic.w	r3, r3, #536870912	; 0x20000000
 8004390:	60fb      	str	r3, [r7, #12]
  huart->FifoMode = UART_FIFOMODE_DISABLE;
 8004392:	687b      	ldr	r3, [r7, #4]
 8004394:	2200      	movs	r2, #0
 8004396:	665a      	str	r2, [r3, #100]	; 0x64

  /* Restore UART configuration */
  WRITE_REG(huart->Instance->CR1, tmpcr1);
 8004398:	687b      	ldr	r3, [r7, #4]
 800439a:	681b      	ldr	r3, [r3, #0]
 800439c:	68fa      	ldr	r2, [r7, #12]
 800439e:	601a      	str	r2, [r3, #0]

  huart->gState = HAL_UART_STATE_READY;
 80043a0:	687b      	ldr	r3, [r7, #4]
 80043a2:	2220      	movs	r2, #32
 80043a4:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  /* Process Unlocked */
  __HAL_UNLOCK(huart);
 80043a8:	687b      	ldr	r3, [r7, #4]
 80043aa:	2200      	movs	r2, #0
 80043ac:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  return HAL_OK;
 80043b0:	2300      	movs	r3, #0
}
 80043b2:	4618      	mov	r0, r3
 80043b4:	3714      	adds	r7, #20
 80043b6:	46bd      	mov	sp, r7
 80043b8:	bc80      	pop	{r7}
 80043ba:	4770      	bx	lr

080043bc <HAL_UARTEx_SetTxFifoThreshold>:
  *            @arg @ref UART_TXFIFO_THRESHOLD_7_8
  *            @arg @ref UART_TXFIFO_THRESHOLD_8_8
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UARTEx_SetTxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold)
{
 80043bc:	b580      	push	{r7, lr}
 80043be:	b084      	sub	sp, #16
 80043c0:	af00      	add	r7, sp, #0
 80043c2:	6078      	str	r0, [r7, #4]
 80043c4:	6039      	str	r1, [r7, #0]
  /* Check parameters */
  assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));
  assert_param(IS_UART_TXFIFO_THRESHOLD(Threshold));

  /* Process Locked */
  __HAL_LOCK(huart);
 80043c6:	687b      	ldr	r3, [r7, #4]
 80043c8:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 80043cc:	2b01      	cmp	r3, #1
 80043ce:	d101      	bne.n	80043d4 <HAL_UARTEx_SetTxFifoThreshold+0x18>
 80043d0:	2302      	movs	r3, #2
 80043d2:	e02d      	b.n	8004430 <HAL_UARTEx_SetTxFifoThreshold+0x74>
 80043d4:	687b      	ldr	r3, [r7, #4]
 80043d6:	2201      	movs	r2, #1
 80043d8:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  huart->gState = HAL_UART_STATE_BUSY;
 80043dc:	687b      	ldr	r3, [r7, #4]
 80043de:	2224      	movs	r2, #36	; 0x24
 80043e0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  /* Save actual UART configuration */
  tmpcr1 = READ_REG(huart->Instance->CR1);
 80043e4:	687b      	ldr	r3, [r7, #4]
 80043e6:	681b      	ldr	r3, [r3, #0]
 80043e8:	681b      	ldr	r3, [r3, #0]
 80043ea:	60fb      	str	r3, [r7, #12]

  /* Disable UART */
  __HAL_UART_DISABLE(huart);
 80043ec:	687b      	ldr	r3, [r7, #4]
 80043ee:	681b      	ldr	r3, [r3, #0]
 80043f0:	681a      	ldr	r2, [r3, #0]
 80043f2:	687b      	ldr	r3, [r7, #4]
 80043f4:	681b      	ldr	r3, [r3, #0]
 80043f6:	f022 0201 	bic.w	r2, r2, #1
 80043fa:	601a      	str	r2, [r3, #0]

  /* Update TX threshold configuration */
  MODIFY_REG(huart->Instance->CR3, USART_CR3_TXFTCFG, Threshold);
 80043fc:	687b      	ldr	r3, [r7, #4]
 80043fe:	681b      	ldr	r3, [r3, #0]
 8004400:	689b      	ldr	r3, [r3, #8]
 8004402:	f023 4160 	bic.w	r1, r3, #3758096384	; 0xe0000000
 8004406:	687b      	ldr	r3, [r7, #4]
 8004408:	681b      	ldr	r3, [r3, #0]
 800440a:	683a      	ldr	r2, [r7, #0]
 800440c:	430a      	orrs	r2, r1
 800440e:	609a      	str	r2, [r3, #8]

  /* Determine the number of data to process during RX/TX ISR execution */
  UARTEx_SetNbDataToProcess(huart);
 8004410:	6878      	ldr	r0, [r7, #4]
 8004412:	f000 f84f 	bl	80044b4 <UARTEx_SetNbDataToProcess>

  /* Restore UART configuration */
  WRITE_REG(huart->Instance->CR1, tmpcr1);
 8004416:	687b      	ldr	r3, [r7, #4]
 8004418:	681b      	ldr	r3, [r3, #0]
 800441a:	68fa      	ldr	r2, [r7, #12]
 800441c:	601a      	str	r2, [r3, #0]

  huart->gState = HAL_UART_STATE_READY;
 800441e:	687b      	ldr	r3, [r7, #4]
 8004420:	2220      	movs	r2, #32
 8004422:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  /* Process Unlocked */
  __HAL_UNLOCK(huart);
 8004426:	687b      	ldr	r3, [r7, #4]
 8004428:	2200      	movs	r2, #0
 800442a:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  return HAL_OK;
 800442e:	2300      	movs	r3, #0
}
 8004430:	4618      	mov	r0, r3
 8004432:	3710      	adds	r7, #16
 8004434:	46bd      	mov	sp, r7
 8004436:	bd80      	pop	{r7, pc}

08004438 <HAL_UARTEx_SetRxFifoThreshold>:
  *            @arg @ref UART_RXFIFO_THRESHOLD_7_8
  *            @arg @ref UART_RXFIFO_THRESHOLD_8_8
  * @retval HAL status
  */
HAL_StatusTypeDef HAL_UARTEx_SetRxFifoThreshold(UART_HandleTypeDef *huart, uint32_t Threshold)
{
 8004438:	b580      	push	{r7, lr}
 800443a:	b084      	sub	sp, #16
 800443c:	af00      	add	r7, sp, #0
 800443e:	6078      	str	r0, [r7, #4]
 8004440:	6039      	str	r1, [r7, #0]
  /* Check the parameters */
  assert_param(IS_UART_FIFO_INSTANCE(huart->Instance));
  assert_param(IS_UART_RXFIFO_THRESHOLD(Threshold));

  /* Process Locked */
  __HAL_LOCK(huart);
 8004442:	687b      	ldr	r3, [r7, #4]
 8004444:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 8004448:	2b01      	cmp	r3, #1
 800444a:	d101      	bne.n	8004450 <HAL_UARTEx_SetRxFifoThreshold+0x18>
 800444c:	2302      	movs	r3, #2
 800444e:	e02d      	b.n	80044ac <HAL_UARTEx_SetRxFifoThreshold+0x74>
 8004450:	687b      	ldr	r3, [r7, #4]
 8004452:	2201      	movs	r2, #1
 8004454:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  huart->gState = HAL_UART_STATE_BUSY;
 8004458:	687b      	ldr	r3, [r7, #4]
 800445a:	2224      	movs	r2, #36	; 0x24
 800445c:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  /* Save actual UART configuration */
  tmpcr1 = READ_REG(huart->Instance->CR1);
 8004460:	687b      	ldr	r3, [r7, #4]
 8004462:	681b      	ldr	r3, [r3, #0]
 8004464:	681b      	ldr	r3, [r3, #0]
 8004466:	60fb      	str	r3, [r7, #12]

  /* Disable UART */
  __HAL_UART_DISABLE(huart);
 8004468:	687b      	ldr	r3, [r7, #4]
 800446a:	681b      	ldr	r3, [r3, #0]
 800446c:	681a      	ldr	r2, [r3, #0]
 800446e:	687b      	ldr	r3, [r7, #4]
 8004470:	681b      	ldr	r3, [r3, #0]
 8004472:	f022 0201 	bic.w	r2, r2, #1
 8004476:	601a      	str	r2, [r3, #0]

  /* Update RX threshold configuration */
  MODIFY_REG(huart->Instance->CR3, USART_CR3_RXFTCFG, Threshold);
 8004478:	687b      	ldr	r3, [r7, #4]
 800447a:	681b      	ldr	r3, [r3, #0]
 800447c:	689b      	ldr	r3, [r3, #8]
 800447e:	f023 6160 	bic.w	r1, r3, #234881024	; 0xe000000
 8004482:	687b      	ldr	r3, [r7, #4]
 8004484:	681b      	ldr	r3, [r3, #0]
 8004486:	683a      	ldr	r2, [r7, #0]
 8004488:	430a      	orrs	r2, r1
 800448a:	609a      	str	r2, [r3, #8]

  /* Determine the number of data to process during RX/TX ISR execution */
  UARTEx_SetNbDataToProcess(huart);
 800448c:	6878      	ldr	r0, [r7, #4]
 800448e:	f000 f811 	bl	80044b4 <UARTEx_SetNbDataToProcess>

  /* Restore UART configuration */
  WRITE_REG(huart->Instance->CR1, tmpcr1);
 8004492:	687b      	ldr	r3, [r7, #4]
 8004494:	681b      	ldr	r3, [r3, #0]
 8004496:	68fa      	ldr	r2, [r7, #12]
 8004498:	601a      	str	r2, [r3, #0]

  huart->gState = HAL_UART_STATE_READY;
 800449a:	687b      	ldr	r3, [r7, #4]
 800449c:	2220      	movs	r2, #32
 800449e:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84

  /* Process Unlocked */
  __HAL_UNLOCK(huart);
 80044a2:	687b      	ldr	r3, [r7, #4]
 80044a4:	2200      	movs	r2, #0
 80044a6:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80

  return HAL_OK;
 80044aa:	2300      	movs	r3, #0
}
 80044ac:	4618      	mov	r0, r3
 80044ae:	3710      	adds	r7, #16
 80044b0:	46bd      	mov	sp, r7
 80044b2:	bd80      	pop	{r7, pc}

080044b4 <UARTEx_SetNbDataToProcess>:
  *       the UART configuration registers.
  * @param huart UART handle.
  * @retval None
  */
static void UARTEx_SetNbDataToProcess(UART_HandleTypeDef *huart)
{
 80044b4:	b480      	push	{r7}
 80044b6:	b085      	sub	sp, #20
 80044b8:	af00      	add	r7, sp, #0
 80044ba:	6078      	str	r0, [r7, #4]
  uint8_t rx_fifo_threshold;
  uint8_t tx_fifo_threshold;
  static const uint8_t numerator[] = {1U, 1U, 1U, 3U, 7U, 1U, 0U, 0U};
  static const uint8_t denominator[] = {8U, 4U, 2U, 4U, 8U, 1U, 1U, 1U};

  if (huart->FifoMode == UART_FIFOMODE_DISABLE)
 80044bc:	687b      	ldr	r3, [r7, #4]
 80044be:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 80044c0:	2b00      	cmp	r3, #0
 80044c2:	d108      	bne.n	80044d6 <UARTEx_SetNbDataToProcess+0x22>
  {
    huart->NbTxDataToProcess = 1U;
 80044c4:	687b      	ldr	r3, [r7, #4]
 80044c6:	2201      	movs	r2, #1
 80044c8:	f8a3 206a 	strh.w	r2, [r3, #106]	; 0x6a
    huart->NbRxDataToProcess = 1U;
 80044cc:	687b      	ldr	r3, [r7, #4]
 80044ce:	2201      	movs	r2, #1
 80044d0:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
    rx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_RXFTCFG) >> USART_CR3_RXFTCFG_Pos);
    tx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TXFTCFG_Pos);
    huart->NbTxDataToProcess = ((uint16_t)tx_fifo_depth * numerator[tx_fifo_threshold]) / (uint16_t)denominator[tx_fifo_threshold];
    huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t)denominator[rx_fifo_threshold];
  }
}
 80044d4:	e031      	b.n	800453a <UARTEx_SetNbDataToProcess+0x86>
    rx_fifo_depth = RX_FIFO_DEPTH;
 80044d6:	2308      	movs	r3, #8
 80044d8:	73fb      	strb	r3, [r7, #15]
    tx_fifo_depth = TX_FIFO_DEPTH;
 80044da:	2308      	movs	r3, #8
 80044dc:	73bb      	strb	r3, [r7, #14]
    rx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_RXFTCFG) >> USART_CR3_RXFTCFG_Pos);
 80044de:	687b      	ldr	r3, [r7, #4]
 80044e0:	681b      	ldr	r3, [r3, #0]
 80044e2:	689b      	ldr	r3, [r3, #8]
 80044e4:	0e5b      	lsrs	r3, r3, #25
 80044e6:	b2db      	uxtb	r3, r3
 80044e8:	f003 0307 	and.w	r3, r3, #7
 80044ec:	737b      	strb	r3, [r7, #13]
    tx_fifo_threshold = (uint8_t)(READ_BIT(huart->Instance->CR3, USART_CR3_TXFTCFG) >> USART_CR3_TXFTCFG_Pos);
 80044ee:	687b      	ldr	r3, [r7, #4]
 80044f0:	681b      	ldr	r3, [r3, #0]
 80044f2:	689b      	ldr	r3, [r3, #8]
 80044f4:	0f5b      	lsrs	r3, r3, #29
 80044f6:	b2db      	uxtb	r3, r3
 80044f8:	f003 0307 	and.w	r3, r3, #7
 80044fc:	733b      	strb	r3, [r7, #12]
    huart->NbTxDataToProcess = ((uint16_t)tx_fifo_depth * numerator[tx_fifo_threshold]) / (uint16_t)denominator[tx_fifo_threshold];
 80044fe:	7bbb      	ldrb	r3, [r7, #14]
 8004500:	7b3a      	ldrb	r2, [r7, #12]
 8004502:	4910      	ldr	r1, [pc, #64]	; (8004544 <UARTEx_SetNbDataToProcess+0x90>)
 8004504:	5c8a      	ldrb	r2, [r1, r2]
 8004506:	fb02 f303 	mul.w	r3, r2, r3
 800450a:	7b3a      	ldrb	r2, [r7, #12]
 800450c:	490e      	ldr	r1, [pc, #56]	; (8004548 <UARTEx_SetNbDataToProcess+0x94>)
 800450e:	5c8a      	ldrb	r2, [r1, r2]
 8004510:	fb93 f3f2 	sdiv	r3, r3, r2
 8004514:	b29a      	uxth	r2, r3
 8004516:	687b      	ldr	r3, [r7, #4]
 8004518:	f8a3 206a 	strh.w	r2, [r3, #106]	; 0x6a
    huart->NbRxDataToProcess = ((uint16_t)rx_fifo_depth * numerator[rx_fifo_threshold]) / (uint16_t)denominator[rx_fifo_threshold];
 800451c:	7bfb      	ldrb	r3, [r7, #15]
 800451e:	7b7a      	ldrb	r2, [r7, #13]
 8004520:	4908      	ldr	r1, [pc, #32]	; (8004544 <UARTEx_SetNbDataToProcess+0x90>)
 8004522:	5c8a      	ldrb	r2, [r1, r2]
 8004524:	fb02 f303 	mul.w	r3, r2, r3
 8004528:	7b7a      	ldrb	r2, [r7, #13]
 800452a:	4907      	ldr	r1, [pc, #28]	; (8004548 <UARTEx_SetNbDataToProcess+0x94>)
 800452c:	5c8a      	ldrb	r2, [r1, r2]
 800452e:	fb93 f3f2 	sdiv	r3, r3, r2
 8004532:	b29a      	uxth	r2, r3
 8004534:	687b      	ldr	r3, [r7, #4]
 8004536:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
}
 800453a:	bf00      	nop
 800453c:	3714      	adds	r7, #20
 800453e:	46bd      	mov	sp, r7
 8004540:	bc80      	pop	{r7}
 8004542:	4770      	bx	lr
 8004544:	08009218 	.word	0x08009218
 8004548:	08009220 	.word	0x08009220

0800454c <BSP_LED_Init>:
  *     @arg  LED2
  *     @arg  LED3
  * @retval BSP error code
  */
int32_t BSP_LED_Init(Led_TypeDef Led)
{
 800454c:	b580      	push	{r7, lr}
 800454e:	b08a      	sub	sp, #40	; 0x28
 8004550:	af00      	add	r7, sp, #0
 8004552:	4603      	mov	r3, r0
 8004554:	71fb      	strb	r3, [r7, #7]
  GPIO_InitTypeDef GPIO_Init;

  /* Enable the GPIO_LED Clock */
  if (Led == LED1)
 8004556:	79fb      	ldrb	r3, [r7, #7]
 8004558:	2b00      	cmp	r3, #0
 800455a:	d10c      	bne.n	8004576 <BSP_LED_Init+0x2a>
  {
    LED1_GPIO_CLK_ENABLE();
 800455c:	4b27      	ldr	r3, [pc, #156]	; (80045fc <BSP_LED_Init+0xb0>)
 800455e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8004560:	4a26      	ldr	r2, [pc, #152]	; (80045fc <BSP_LED_Init+0xb0>)
 8004562:	f043 0304 	orr.w	r3, r3, #4
 8004566:	64d3      	str	r3, [r2, #76]	; 0x4c
 8004568:	4b24      	ldr	r3, [pc, #144]	; (80045fc <BSP_LED_Init+0xb0>)
 800456a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800456c:	f003 0304 	and.w	r3, r3, #4
 8004570:	613b      	str	r3, [r7, #16]
 8004572:	693b      	ldr	r3, [r7, #16]
 8004574:	e01b      	b.n	80045ae <BSP_LED_Init+0x62>
  }
  else if (Led == LED2)
 8004576:	79fb      	ldrb	r3, [r7, #7]
 8004578:	2b01      	cmp	r3, #1
 800457a:	d10c      	bne.n	8004596 <BSP_LED_Init+0x4a>
  {
    LED2_GPIO_CLK_ENABLE();
 800457c:	4b1f      	ldr	r3, [pc, #124]	; (80045fc <BSP_LED_Init+0xb0>)
 800457e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8004580:	4a1e      	ldr	r2, [pc, #120]	; (80045fc <BSP_LED_Init+0xb0>)
 8004582:	f043 0302 	orr.w	r3, r3, #2
 8004586:	64d3      	str	r3, [r2, #76]	; 0x4c
 8004588:	4b1c      	ldr	r3, [pc, #112]	; (80045fc <BSP_LED_Init+0xb0>)
 800458a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800458c:	f003 0302 	and.w	r3, r3, #2
 8004590:	60fb      	str	r3, [r7, #12]
 8004592:	68fb      	ldr	r3, [r7, #12]
 8004594:	e00b      	b.n	80045ae <BSP_LED_Init+0x62>
  }
  else /* Led = LED3 */
  {
    LED3_GPIO_CLK_ENABLE();
 8004596:	4b19      	ldr	r3, [pc, #100]	; (80045fc <BSP_LED_Init+0xb0>)
 8004598:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800459a:	4a18      	ldr	r2, [pc, #96]	; (80045fc <BSP_LED_Init+0xb0>)
 800459c:	f043 0301 	orr.w	r3, r3, #1
 80045a0:	64d3      	str	r3, [r2, #76]	; 0x4c
 80045a2:	4b16      	ldr	r3, [pc, #88]	; (80045fc <BSP_LED_Init+0xb0>)
 80045a4:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80045a6:	f003 0301 	and.w	r3, r3, #1
 80045aa:	60bb      	str	r3, [r7, #8]
 80045ac:	68bb      	ldr	r3, [r7, #8]
  }

  /* configure the GPIO_LED pin */
  GPIO_Init.Pin   = LED_PIN[Led];
 80045ae:	79fb      	ldrb	r3, [r7, #7]
 80045b0:	4a13      	ldr	r2, [pc, #76]	; (8004600 <BSP_LED_Init+0xb4>)
 80045b2:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 80045b6:	617b      	str	r3, [r7, #20]
  GPIO_Init.Mode  = GPIO_MODE_OUTPUT_PP;
 80045b8:	2301      	movs	r3, #1
 80045ba:	61bb      	str	r3, [r7, #24]
  GPIO_Init.Pull  = GPIO_PULLUP;
 80045bc:	2301      	movs	r3, #1
 80045be:	61fb      	str	r3, [r7, #28]
  GPIO_Init.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 80045c0:	2303      	movs	r3, #3
 80045c2:	623b      	str	r3, [r7, #32]
  HAL_GPIO_Init(LED_PORT[Led], &GPIO_Init);
 80045c4:	79fb      	ldrb	r3, [r7, #7]
 80045c6:	4a0f      	ldr	r2, [pc, #60]	; (8004604 <BSP_LED_Init+0xb8>)
 80045c8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80045cc:	f107 0214 	add.w	r2, r7, #20
 80045d0:	4611      	mov	r1, r2
 80045d2:	4618      	mov	r0, r3
 80045d4:	f7fd f9be 	bl	8001954 <HAL_GPIO_Init>

  HAL_GPIO_WritePin(LED_PORT[Led], LED_PIN[Led], GPIO_PIN_RESET);
 80045d8:	79fb      	ldrb	r3, [r7, #7]
 80045da:	4a0a      	ldr	r2, [pc, #40]	; (8004604 <BSP_LED_Init+0xb8>)
 80045dc:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 80045e0:	79fb      	ldrb	r3, [r7, #7]
 80045e2:	4a07      	ldr	r2, [pc, #28]	; (8004600 <BSP_LED_Init+0xb4>)
 80045e4:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 80045e8:	2200      	movs	r2, #0
 80045ea:	4619      	mov	r1, r3
 80045ec:	f7fd fb30 	bl	8001c50 <HAL_GPIO_WritePin>

  return BSP_ERROR_NONE;
 80045f0:	2300      	movs	r3, #0
}
 80045f2:	4618      	mov	r0, r3
 80045f4:	3728      	adds	r7, #40	; 0x28
 80045f6:	46bd      	mov	sp, r7
 80045f8:	bd80      	pop	{r7, pc}
 80045fa:	bf00      	nop
 80045fc:	40021000 	.word	0x40021000
 8004600:	2000000c 	.word	0x2000000c
 8004604:	20000014 	.word	0x20000014

08004608 <BSP_LED_On>:
  *     @arg  LED2
  *     @arg  LED3
  * @retval BSP error code
  */
int32_t BSP_LED_On(Led_TypeDef Led)
{
 8004608:	b580      	push	{r7, lr}
 800460a:	b082      	sub	sp, #8
 800460c:	af00      	add	r7, sp, #0
 800460e:	4603      	mov	r3, r0
 8004610:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(LED_PORT[Led], LED_PIN[Led], GPIO_PIN_SET);
 8004612:	79fb      	ldrb	r3, [r7, #7]
 8004614:	4a07      	ldr	r2, [pc, #28]	; (8004634 <BSP_LED_On+0x2c>)
 8004616:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800461a:	79fb      	ldrb	r3, [r7, #7]
 800461c:	4a06      	ldr	r2, [pc, #24]	; (8004638 <BSP_LED_On+0x30>)
 800461e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8004622:	2201      	movs	r2, #1
 8004624:	4619      	mov	r1, r3
 8004626:	f7fd fb13 	bl	8001c50 <HAL_GPIO_WritePin>

  return BSP_ERROR_NONE;
 800462a:	2300      	movs	r3, #0
}
 800462c:	4618      	mov	r0, r3
 800462e:	3708      	adds	r7, #8
 8004630:	46bd      	mov	sp, r7
 8004632:	bd80      	pop	{r7, pc}
 8004634:	20000014 	.word	0x20000014
 8004638:	2000000c 	.word	0x2000000c

0800463c <BSP_LED_Off>:
  *     @arg  LED2
  *     @arg  LED3
  * @retval BSP error code
  */
int32_t BSP_LED_Off(Led_TypeDef Led)
{
 800463c:	b580      	push	{r7, lr}
 800463e:	b082      	sub	sp, #8
 8004640:	af00      	add	r7, sp, #0
 8004642:	4603      	mov	r3, r0
 8004644:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_WritePin(LED_PORT[Led], LED_PIN[Led], GPIO_PIN_RESET);
 8004646:	79fb      	ldrb	r3, [r7, #7]
 8004648:	4a07      	ldr	r2, [pc, #28]	; (8004668 <BSP_LED_Off+0x2c>)
 800464a:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800464e:	79fb      	ldrb	r3, [r7, #7]
 8004650:	4a06      	ldr	r2, [pc, #24]	; (800466c <BSP_LED_Off+0x30>)
 8004652:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8004656:	2200      	movs	r2, #0
 8004658:	4619      	mov	r1, r3
 800465a:	f7fd faf9 	bl	8001c50 <HAL_GPIO_WritePin>

  return BSP_ERROR_NONE;
 800465e:	2300      	movs	r3, #0
}
 8004660:	4618      	mov	r0, r3
 8004662:	3708      	adds	r7, #8
 8004664:	46bd      	mov	sp, r7
 8004666:	bd80      	pop	{r7, pc}
 8004668:	20000014 	.word	0x20000014
 800466c:	2000000c 	.word	0x2000000c

08004670 <BSP_LED_Toggle>:
  *     @arg  LED2
  *     @arg  LED3
  * @retval BSP error code
  */
int32_t BSP_LED_Toggle(Led_TypeDef Led)
{
 8004670:	b580      	push	{r7, lr}
 8004672:	b082      	sub	sp, #8
 8004674:	af00      	add	r7, sp, #0
 8004676:	4603      	mov	r3, r0
 8004678:	71fb      	strb	r3, [r7, #7]
  HAL_GPIO_TogglePin(LED_PORT[Led], LED_PIN[Led]);
 800467a:	79fb      	ldrb	r3, [r7, #7]
 800467c:	4a07      	ldr	r2, [pc, #28]	; (800469c <BSP_LED_Toggle+0x2c>)
 800467e:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 8004682:	79fb      	ldrb	r3, [r7, #7]
 8004684:	4a06      	ldr	r2, [pc, #24]	; (80046a0 <BSP_LED_Toggle+0x30>)
 8004686:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800468a:	4619      	mov	r1, r3
 800468c:	f7fd faf7 	bl	8001c7e <HAL_GPIO_TogglePin>
  return BSP_ERROR_NONE;
 8004690:	2300      	movs	r3, #0
}
 8004692:	4618      	mov	r0, r3
 8004694:	3708      	adds	r7, #8
 8004696:	46bd      	mov	sp, r7
 8004698:	bd80      	pop	{r7, pc}
 800469a:	bf00      	nop
 800469c:	20000014 	.word	0x20000014
 80046a0:	2000000c 	.word	0x2000000c

080046a4 <BSP_PB_Init>:
  *     @arg BUTTON_MODE_EXTI: Button will be connected to EXTI line with interrupt
  *                            generation capability
  * @retval BSP error code
  */
int32_t BSP_PB_Init(Button_TypeDef Button, ButtonMode_TypeDef ButtonMode)
{
 80046a4:	b580      	push	{r7, lr}
 80046a6:	b08c      	sub	sp, #48	; 0x30
 80046a8:	af00      	add	r7, sp, #0
 80046aa:	4603      	mov	r3, r0
 80046ac:	460a      	mov	r2, r1
 80046ae:	71fb      	strb	r3, [r7, #7]
 80046b0:	4613      	mov	r3, r2
 80046b2:	71bb      	strb	r3, [r7, #6]
  int32_t               status = BSP_ERROR_NONE;
 80046b4:	2300      	movs	r3, #0
 80046b6:	62fb      	str	r3, [r7, #44]	; 0x2c
  GPIO_InitTypeDef      GPIO_Init;
  uint32_t              BSP_BUTTON_IT_PRIO[BUTTONn] = {BSP_BUTTON_USER_IT_PRIORITY};
 80046b8:	2307      	movs	r3, #7
 80046ba:	617b      	str	r3, [r7, #20]
  uint32_t              BUTTON_EXTI_LINE[BUTTONn]   = {BUTTON_USER_EXTI_LINE};
 80046bc:	4b40      	ldr	r3, [pc, #256]	; (80047c0 <BSP_PB_Init+0x11c>)
 80046be:	613b      	str	r3, [r7, #16]
  BSP_EXTI_LineCallback ButtonCallback[BUTTONn]     = {BUTTON_USER_EXTI_Callback};
 80046c0:	4b40      	ldr	r3, [pc, #256]	; (80047c4 <BSP_PB_Init+0x120>)
 80046c2:	60fb      	str	r3, [r7, #12]

  /* Enable the BUTTON clock */
  BUTTON_USER_GPIO_CLK_ENABLE();
 80046c4:	4b40      	ldr	r3, [pc, #256]	; (80047c8 <BSP_PB_Init+0x124>)
 80046c6:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80046c8:	4a3f      	ldr	r2, [pc, #252]	; (80047c8 <BSP_PB_Init+0x124>)
 80046ca:	f043 0304 	orr.w	r3, r3, #4
 80046ce:	64d3      	str	r3, [r2, #76]	; 0x4c
 80046d0:	4b3d      	ldr	r3, [pc, #244]	; (80047c8 <BSP_PB_Init+0x124>)
 80046d2:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80046d4:	f003 0304 	and.w	r3, r3, #4
 80046d8:	60bb      	str	r3, [r7, #8]
 80046da:	68bb      	ldr	r3, [r7, #8]

  GPIO_Init.Pin   = BUTTON_PIN[Button];
 80046dc:	79fb      	ldrb	r3, [r7, #7]
 80046de:	4a3b      	ldr	r2, [pc, #236]	; (80047cc <BSP_PB_Init+0x128>)
 80046e0:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 80046e4:	61bb      	str	r3, [r7, #24]
  GPIO_Init.Pull  = GPIO_NOPULL;
 80046e6:	2300      	movs	r3, #0
 80046e8:	623b      	str	r3, [r7, #32]
  GPIO_Init.Speed = GPIO_SPEED_FREQ_HIGH;
 80046ea:	2302      	movs	r3, #2
 80046ec:	627b      	str	r3, [r7, #36]	; 0x24

  if (ButtonMode == BUTTON_MODE_GPIO)
 80046ee:	79bb      	ldrb	r3, [r7, #6]
 80046f0:	2b00      	cmp	r3, #0
 80046f2:	d10b      	bne.n	800470c <BSP_PB_Init+0x68>
  {
    /* Configure Button pin as input */
    GPIO_Init.Mode = GPIO_MODE_INPUT;
 80046f4:	2300      	movs	r3, #0
 80046f6:	61fb      	str	r3, [r7, #28]
    HAL_GPIO_Init(BUTTON_PORT[Button], &GPIO_Init);
 80046f8:	79fb      	ldrb	r3, [r7, #7]
 80046fa:	4a35      	ldr	r2, [pc, #212]	; (80047d0 <BSP_PB_Init+0x12c>)
 80046fc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8004700:	f107 0218 	add.w	r2, r7, #24
 8004704:	4611      	mov	r1, r2
 8004706:	4618      	mov	r0, r3
 8004708:	f7fd f924 	bl	8001954 <HAL_GPIO_Init>
  }

  if (ButtonMode == BUTTON_MODE_EXTI)
 800470c:	79bb      	ldrb	r3, [r7, #6]
 800470e:	2b01      	cmp	r3, #1
 8004710:	d151      	bne.n	80047b6 <BSP_PB_Init+0x112>
  {
    /* Configure Button pin as input with External interrupt */
    GPIO_Init.Mode = GPIO_MODE_IT_RISING;
 8004712:	4b30      	ldr	r3, [pc, #192]	; (80047d4 <BSP_PB_Init+0x130>)
 8004714:	61fb      	str	r3, [r7, #28]
    HAL_GPIO_Init(BUTTON_PORT[Button], &GPIO_Init);
 8004716:	79fb      	ldrb	r3, [r7, #7]
 8004718:	4a2d      	ldr	r2, [pc, #180]	; (80047d0 <BSP_PB_Init+0x12c>)
 800471a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800471e:	f107 0218 	add.w	r2, r7, #24
 8004722:	4611      	mov	r1, r2
 8004724:	4618      	mov	r0, r3
 8004726:	f7fd f915 	bl	8001954 <HAL_GPIO_Init>

    if (HAL_EXTI_GetHandle(&hpb_exti[Button], BUTTON_EXTI_LINE[Button]) == HAL_OK)
 800472a:	79fa      	ldrb	r2, [r7, #7]
 800472c:	4613      	mov	r3, r2
 800472e:	005b      	lsls	r3, r3, #1
 8004730:	4413      	add	r3, r2
 8004732:	009b      	lsls	r3, r3, #2
 8004734:	4a28      	ldr	r2, [pc, #160]	; (80047d8 <BSP_PB_Init+0x134>)
 8004736:	441a      	add	r2, r3
 8004738:	79fb      	ldrb	r3, [r7, #7]
 800473a:	009b      	lsls	r3, r3, #2
 800473c:	f107 0130 	add.w	r1, r7, #48	; 0x30
 8004740:	440b      	add	r3, r1
 8004742:	f853 3c20 	ldr.w	r3, [r3, #-32]
 8004746:	4619      	mov	r1, r3
 8004748:	4610      	mov	r0, r2
 800474a:	f7fd f8f0 	bl	800192e <HAL_EXTI_GetHandle>
 800474e:	4603      	mov	r3, r0
 8004750:	2b00      	cmp	r3, #0
 8004752:	d12d      	bne.n	80047b0 <BSP_PB_Init+0x10c>
    {
      if (HAL_EXTI_RegisterCallback(&hpb_exti[Button], HAL_EXTI_RISING_CB_ID, ButtonCallback[Button]) == HAL_OK)
 8004754:	79fa      	ldrb	r2, [r7, #7]
 8004756:	4613      	mov	r3, r2
 8004758:	005b      	lsls	r3, r3, #1
 800475a:	4413      	add	r3, r2
 800475c:	009b      	lsls	r3, r3, #2
 800475e:	4a1e      	ldr	r2, [pc, #120]	; (80047d8 <BSP_PB_Init+0x134>)
 8004760:	1898      	adds	r0, r3, r2
 8004762:	79fb      	ldrb	r3, [r7, #7]
 8004764:	009b      	lsls	r3, r3, #2
 8004766:	f107 0230 	add.w	r2, r7, #48	; 0x30
 800476a:	4413      	add	r3, r2
 800476c:	f853 3c24 	ldr.w	r3, [r3, #-36]
 8004770:	461a      	mov	r2, r3
 8004772:	2101      	movs	r1, #1
 8004774:	f7fd f8b3 	bl	80018de <HAL_EXTI_RegisterCallback>
 8004778:	4603      	mov	r3, r0
 800477a:	2b00      	cmp	r3, #0
 800477c:	d114      	bne.n	80047a8 <BSP_PB_Init+0x104>
      {
        /* Enable and set Button EXTI Interrupt to the lowest priority */
        HAL_NVIC_SetPriority(BUTTON_IRQn[Button], BSP_BUTTON_IT_PRIO[Button], 0x00);
 800477e:	79fb      	ldrb	r3, [r7, #7]
 8004780:	4a16      	ldr	r2, [pc, #88]	; (80047dc <BSP_PB_Init+0x138>)
 8004782:	56d0      	ldrsb	r0, [r2, r3]
 8004784:	79fb      	ldrb	r3, [r7, #7]
 8004786:	009b      	lsls	r3, r3, #2
 8004788:	f107 0230 	add.w	r2, r7, #48	; 0x30
 800478c:	4413      	add	r3, r2
 800478e:	f853 3c1c 	ldr.w	r3, [r3, #-28]
 8004792:	2200      	movs	r2, #0
 8004794:	4619      	mov	r1, r3
 8004796:	f7fd f86e 	bl	8001876 <HAL_NVIC_SetPriority>
        HAL_NVIC_EnableIRQ(BUTTON_IRQn[Button]);
 800479a:	79fb      	ldrb	r3, [r7, #7]
 800479c:	4a0f      	ldr	r2, [pc, #60]	; (80047dc <BSP_PB_Init+0x138>)
 800479e:	56d3      	ldrsb	r3, [r2, r3]
 80047a0:	4618      	mov	r0, r3
 80047a2:	f7fd f882 	bl	80018aa <HAL_NVIC_EnableIRQ>
 80047a6:	e006      	b.n	80047b6 <BSP_PB_Init+0x112>
      }
      else
      {
        status = BSP_ERROR_PERIPH_FAILURE;
 80047a8:	f06f 0303 	mvn.w	r3, #3
 80047ac:	62fb      	str	r3, [r7, #44]	; 0x2c
 80047ae:	e002      	b.n	80047b6 <BSP_PB_Init+0x112>
      }
    }
    else
    {
      status = BSP_ERROR_PERIPH_FAILURE;
 80047b0:	f06f 0303 	mvn.w	r3, #3
 80047b4:	62fb      	str	r3, [r7, #44]	; 0x2c
    }
  }

  return status;
 80047b6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
}
 80047b8:	4618      	mov	r0, r3
 80047ba:	3730      	adds	r7, #48	; 0x30
 80047bc:	46bd      	mov	sp, r7
 80047be:	bd80      	pop	{r7, pc}
 80047c0:	0600000d 	.word	0x0600000d
 80047c4:	080047f5 	.word	0x080047f5
 80047c8:	40021000 	.word	0x40021000
 80047cc:	20000020 	.word	0x20000020
 80047d0:	20000024 	.word	0x20000024
 80047d4:	10110000 	.word	0x10110000
 80047d8:	200009fc 	.word	0x200009fc
 80047dc:	20000028 	.word	0x20000028

080047e0 <BSP_PB_Callback>:
  * @brief  BSP Push Button callback
  * @param  Button Specifies the pin connected EXTI line
  * @retval None.
  */
__weak void BSP_PB_Callback(Button_TypeDef Button)
{
 80047e0:	b480      	push	{r7}
 80047e2:	b083      	sub	sp, #12
 80047e4:	af00      	add	r7, sp, #0
 80047e6:	4603      	mov	r3, r0
 80047e8:	71fb      	strb	r3, [r7, #7]
  /* Prevent unused argument(s) compilation warning */
  UNUSED(Button);

  /* This function should be implemented by the user application.
     It is called into this driver when an event on Button is triggered. */
}
 80047ea:	bf00      	nop
 80047ec:	370c      	adds	r7, #12
 80047ee:	46bd      	mov	sp, r7
 80047f0:	bc80      	pop	{r7}
 80047f2:	4770      	bx	lr

080047f4 <BUTTON_USER_EXTI_Callback>:
/**
  * @brief  User EXTI line detection callbacks.
  * @retval None
  */
static void BUTTON_USER_EXTI_Callback(void)
{
 80047f4:	b580      	push	{r7, lr}
 80047f6:	af00      	add	r7, sp, #0
  BSP_PB_Callback(BUTTON_USER);
 80047f8:	2000      	movs	r0, #0
 80047fa:	f7ff fff1 	bl	80047e0 <BSP_PB_Callback>
}
 80047fe:	bf00      	nop
 8004800:	bd80      	pop	{r7, pc}
	...

08004804 <Reset_Handler>:

    .section	.text.Reset_Handler
	.weak	Reset_Handler
	.type	Reset_Handler, %function
Reset_Handler:
  ldr   sp, =_estack    /* set stack pointer */
 8004804:	f8df d034 	ldr.w	sp, [pc, #52]	; 800483c <LoopForever+0x2>

/* Call the clock system initialization function.*/
  bl  SystemInit
 8004808:	f7fc fe1a 	bl	8001440 <SystemInit>

/* Copy the data segment initializers from flash to SRAM */
  movs	r1, #0
 800480c:	2100      	movs	r1, #0
  b	LoopCopyDataInit
 800480e:	e003      	b.n	8004818 <LoopCopyDataInit>

08004810 <CopyDataInit>:

CopyDataInit:
	ldr	r3, =_sidata
 8004810:	4b0b      	ldr	r3, [pc, #44]	; (8004840 <LoopForever+0x6>)
	ldr	r3, [r3, r1]
 8004812:	585b      	ldr	r3, [r3, r1]
	str	r3, [r0, r1]
 8004814:	5043      	str	r3, [r0, r1]
	adds	r1, r1, #4
 8004816:	3104      	adds	r1, #4

08004818 <LoopCopyDataInit>:

LoopCopyDataInit:
	ldr	r0, =_sdata
 8004818:	480a      	ldr	r0, [pc, #40]	; (8004844 <LoopForever+0xa>)
	ldr	r3, =_edata
 800481a:	4b0b      	ldr	r3, [pc, #44]	; (8004848 <LoopForever+0xe>)
	adds	r2, r0, r1
 800481c:	1842      	adds	r2, r0, r1
	cmp	r2, r3
 800481e:	429a      	cmp	r2, r3
	bcc	CopyDataInit
 8004820:	d3f6      	bcc.n	8004810 <CopyDataInit>
	ldr	r2, =_sbss
 8004822:	4a0a      	ldr	r2, [pc, #40]	; (800484c <LoopForever+0x12>)
	b	LoopFillZerobss
 8004824:	e002      	b.n	800482c <LoopFillZerobss>

08004826 <FillZerobss>:
/* Zero fill the bss segment. */
FillZerobss:
	movs	r3, #0
 8004826:	2300      	movs	r3, #0
	str	r3, [r2], #4
 8004828:	f842 3b04 	str.w	r3, [r2], #4

0800482c <LoopFillZerobss>:

LoopFillZerobss:
	ldr	r3, = _ebss
 800482c:	4b08      	ldr	r3, [pc, #32]	; (8004850 <LoopForever+0x16>)
	cmp	r2, r3
 800482e:	429a      	cmp	r2, r3
	bcc	FillZerobss
 8004830:	d3f9      	bcc.n	8004826 <FillZerobss>

/* Call static constructors */
  bl __libc_init_array
 8004832:	f000 f817 	bl	8004864 <__libc_init_array>
/* Call the application's entry point.*/
	bl	main
 8004836:	f7fc fb93 	bl	8000f60 <main>

0800483a <LoopForever>:

LoopForever:
    b LoopForever
 800483a:	e7fe      	b.n	800483a <LoopForever>
  ldr   sp, =_estack    /* set stack pointer */
 800483c:	20030000 	.word	0x20030000
	ldr	r3, =_sidata
 8004840:	080094c8 	.word	0x080094c8
	ldr	r0, =_sdata
 8004844:	20000000 	.word	0x20000000
	ldr	r3, =_edata
 8004848:	200009d8 	.word	0x200009d8
	ldr	r2, =_sbss
 800484c:	200009d8 	.word	0x200009d8
	ldr	r3, = _ebss
 8004850:	20000af8 	.word	0x20000af8

08004854 <ADC1_2_IRQHandler>:
 * @retval : None
*/
    .section	.text.Default_Handler,"ax",%progbits
Default_Handler:
Infinite_Loop:
	b	Infinite_Loop
 8004854:	e7fe      	b.n	8004854 <ADC1_2_IRQHandler>
	...

08004858 <__errno>:
 8004858:	4b01      	ldr	r3, [pc, #4]	; (8004860 <__errno+0x8>)
 800485a:	6818      	ldr	r0, [r3, #0]
 800485c:	4770      	bx	lr
 800485e:	bf00      	nop
 8004860:	2000002c 	.word	0x2000002c

08004864 <__libc_init_array>:
 8004864:	b570      	push	{r4, r5, r6, lr}
 8004866:	4e0d      	ldr	r6, [pc, #52]	; (800489c <__libc_init_array+0x38>)
 8004868:	4d0d      	ldr	r5, [pc, #52]	; (80048a0 <__libc_init_array+0x3c>)
 800486a:	1b76      	subs	r6, r6, r5
 800486c:	10b6      	asrs	r6, r6, #2
 800486e:	d006      	beq.n	800487e <__libc_init_array+0x1a>
 8004870:	2400      	movs	r4, #0
 8004872:	3401      	adds	r4, #1
 8004874:	f855 3b04 	ldr.w	r3, [r5], #4
 8004878:	4798      	blx	r3
 800487a:	42a6      	cmp	r6, r4
 800487c:	d1f9      	bne.n	8004872 <__libc_init_array+0xe>
 800487e:	4e09      	ldr	r6, [pc, #36]	; (80048a4 <__libc_init_array+0x40>)
 8004880:	f004 fc4a 	bl	8009118 <_init>
 8004884:	4d08      	ldr	r5, [pc, #32]	; (80048a8 <__libc_init_array+0x44>)
 8004886:	1b76      	subs	r6, r6, r5
 8004888:	10b6      	asrs	r6, r6, #2
 800488a:	d006      	beq.n	800489a <__libc_init_array+0x36>
 800488c:	2400      	movs	r4, #0
 800488e:	3401      	adds	r4, #1
 8004890:	f855 3b04 	ldr.w	r3, [r5], #4
 8004894:	4798      	blx	r3
 8004896:	42a6      	cmp	r6, r4
 8004898:	d1f9      	bne.n	800488e <__libc_init_array+0x2a>
 800489a:	bd70      	pop	{r4, r5, r6, pc}
 800489c:	080094b8 	.word	0x080094b8
 80048a0:	080094b8 	.word	0x080094b8
 80048a4:	080094c0 	.word	0x080094c0
 80048a8:	080094b8 	.word	0x080094b8

080048ac <memset>:
 80048ac:	b4f0      	push	{r4, r5, r6, r7}
 80048ae:	0786      	lsls	r6, r0, #30
 80048b0:	d043      	beq.n	800493a <memset+0x8e>
 80048b2:	1e54      	subs	r4, r2, #1
 80048b4:	2a00      	cmp	r2, #0
 80048b6:	d03e      	beq.n	8004936 <memset+0x8a>
 80048b8:	b2ca      	uxtb	r2, r1
 80048ba:	4603      	mov	r3, r0
 80048bc:	e002      	b.n	80048c4 <memset+0x18>
 80048be:	f114 34ff 	adds.w	r4, r4, #4294967295
 80048c2:	d338      	bcc.n	8004936 <memset+0x8a>
 80048c4:	f803 2b01 	strb.w	r2, [r3], #1
 80048c8:	079d      	lsls	r5, r3, #30
 80048ca:	d1f8      	bne.n	80048be <memset+0x12>
 80048cc:	2c03      	cmp	r4, #3
 80048ce:	d92b      	bls.n	8004928 <memset+0x7c>
 80048d0:	b2cd      	uxtb	r5, r1
 80048d2:	2c0f      	cmp	r4, #15
 80048d4:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80048d8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80048dc:	d916      	bls.n	800490c <memset+0x60>
 80048de:	f1a4 0710 	sub.w	r7, r4, #16
 80048e2:	f103 0620 	add.w	r6, r3, #32
 80048e6:	f103 0210 	add.w	r2, r3, #16
 80048ea:	093f      	lsrs	r7, r7, #4
 80048ec:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80048f0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80048f4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80048f8:	3210      	adds	r2, #16
 80048fa:	42b2      	cmp	r2, r6
 80048fc:	d1f8      	bne.n	80048f0 <memset+0x44>
 80048fe:	f004 040f 	and.w	r4, r4, #15
 8004902:	3701      	adds	r7, #1
 8004904:	2c03      	cmp	r4, #3
 8004906:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800490a:	d90d      	bls.n	8004928 <memset+0x7c>
 800490c:	461e      	mov	r6, r3
 800490e:	4622      	mov	r2, r4
 8004910:	3a04      	subs	r2, #4
 8004912:	f846 5b04 	str.w	r5, [r6], #4
 8004916:	2a03      	cmp	r2, #3
 8004918:	d8fa      	bhi.n	8004910 <memset+0x64>
 800491a:	1f22      	subs	r2, r4, #4
 800491c:	f004 0403 	and.w	r4, r4, #3
 8004920:	f022 0203 	bic.w	r2, r2, #3
 8004924:	3204      	adds	r2, #4
 8004926:	4413      	add	r3, r2
 8004928:	b12c      	cbz	r4, 8004936 <memset+0x8a>
 800492a:	b2c9      	uxtb	r1, r1
 800492c:	441c      	add	r4, r3
 800492e:	f803 1b01 	strb.w	r1, [r3], #1
 8004932:	429c      	cmp	r4, r3
 8004934:	d1fb      	bne.n	800492e <memset+0x82>
 8004936:	bcf0      	pop	{r4, r5, r6, r7}
 8004938:	4770      	bx	lr
 800493a:	4614      	mov	r4, r2
 800493c:	4603      	mov	r3, r0
 800493e:	e7c5      	b.n	80048cc <memset+0x20>

08004940 <printf>:
 8004940:	b40f      	push	{r0, r1, r2, r3}
 8004942:	b510      	push	{r4, lr}
 8004944:	b082      	sub	sp, #8
 8004946:	4b07      	ldr	r3, [pc, #28]	; (8004964 <printf+0x24>)
 8004948:	ac04      	add	r4, sp, #16
 800494a:	6818      	ldr	r0, [r3, #0]
 800494c:	f854 2b04 	ldr.w	r2, [r4], #4
 8004950:	6881      	ldr	r1, [r0, #8]
 8004952:	4623      	mov	r3, r4
 8004954:	9401      	str	r4, [sp, #4]
 8004956:	f000 f807 	bl	8004968 <_vfprintf_r>
 800495a:	b002      	add	sp, #8
 800495c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004960:	b004      	add	sp, #16
 8004962:	4770      	bx	lr
 8004964:	2000002c 	.word	0x2000002c

08004968 <_vfprintf_r>:
 8004968:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800496c:	b0c1      	sub	sp, #260	; 0x104
 800496e:	461c      	mov	r4, r3
 8004970:	4689      	mov	r9, r1
 8004972:	4616      	mov	r6, r2
 8004974:	4605      	mov	r5, r0
 8004976:	9009      	str	r0, [sp, #36]	; 0x24
 8004978:	f002 fe10 	bl	800759c <_localeconv_r>
 800497c:	6803      	ldr	r3, [r0, #0]
 800497e:	940d      	str	r4, [sp, #52]	; 0x34
 8004980:	4618      	mov	r0, r3
 8004982:	9313      	str	r3, [sp, #76]	; 0x4c
 8004984:	f003 fd04 	bl	8008390 <strlen>
 8004988:	9012      	str	r0, [sp, #72]	; 0x48
 800498a:	b11d      	cbz	r5, 8004994 <_vfprintf_r+0x2c>
 800498c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800498e:	2b00      	cmp	r3, #0
 8004990:	f000 8101 	beq.w	8004b96 <_vfprintf_r+0x22e>
 8004994:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8004998:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800499c:	07c8      	lsls	r0, r1, #31
 800499e:	b293      	uxth	r3, r2
 80049a0:	d402      	bmi.n	80049a8 <_vfprintf_r+0x40>
 80049a2:	0599      	lsls	r1, r3, #22
 80049a4:	f140 8168 	bpl.w	8004c78 <_vfprintf_r+0x310>
 80049a8:	049f      	lsls	r7, r3, #18
 80049aa:	d40a      	bmi.n	80049c2 <_vfprintf_r+0x5a>
 80049ac:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80049b0:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80049b4:	f423 5100 	bic.w	r1, r3, #8192	; 0x2000
 80049b8:	b293      	uxth	r3, r2
 80049ba:	f8a9 200c 	strh.w	r2, [r9, #12]
 80049be:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80049c2:	071d      	lsls	r5, r3, #28
 80049c4:	f140 80b1 	bpl.w	8004b2a <_vfprintf_r+0x1c2>
 80049c8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80049cc:	2a00      	cmp	r2, #0
 80049ce:	f000 80ac 	beq.w	8004b2a <_vfprintf_r+0x1c2>
 80049d2:	f003 021a 	and.w	r2, r3, #26
 80049d6:	2a0a      	cmp	r2, #10
 80049d8:	f000 80c3 	beq.w	8004b62 <_vfprintf_r+0x1fa>
 80049dc:	2300      	movs	r3, #0
 80049de:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 80049e2:	46b3      	mov	fp, r6
 80049e4:	f8cd 9018 	str.w	r9, [sp, #24]
 80049e8:	9314      	str	r3, [sp, #80]	; 0x50
 80049ea:	9315      	str	r3, [sp, #84]	; 0x54
 80049ec:	9311      	str	r3, [sp, #68]	; 0x44
 80049ee:	9308      	str	r3, [sp, #32]
 80049f0:	f8cd a08c 	str.w	sl, [sp, #140]	; 0x8c
 80049f4:	e9cd 3316 	strd	r3, r3, [sp, #88]	; 0x58
 80049f8:	e9cd 3318 	strd	r3, r3, [sp, #96]	; 0x60
 80049fc:	e9cd 3324 	strd	r3, r3, [sp, #144]	; 0x90
 8004a00:	f89b 3000 	ldrb.w	r3, [fp]
 8004a04:	465c      	mov	r4, fp
 8004a06:	b1eb      	cbz	r3, 8004a44 <_vfprintf_r+0xdc>
 8004a08:	2b25      	cmp	r3, #37	; 0x25
 8004a0a:	d102      	bne.n	8004a12 <_vfprintf_r+0xaa>
 8004a0c:	e01a      	b.n	8004a44 <_vfprintf_r+0xdc>
 8004a0e:	2b25      	cmp	r3, #37	; 0x25
 8004a10:	d003      	beq.n	8004a1a <_vfprintf_r+0xb2>
 8004a12:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8004a16:	2b00      	cmp	r3, #0
 8004a18:	d1f9      	bne.n	8004a0e <_vfprintf_r+0xa6>
 8004a1a:	ebb4 050b 	subs.w	r5, r4, fp
 8004a1e:	d011      	beq.n	8004a44 <_vfprintf_r+0xdc>
 8004a20:	f8ca b000 	str.w	fp, [sl]
 8004a24:	f8ca 5004 	str.w	r5, [sl, #4]
 8004a28:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
 8004a2c:	3301      	adds	r3, #1
 8004a2e:	442a      	add	r2, r5
 8004a30:	2b07      	cmp	r3, #7
 8004a32:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
 8004a36:	f300 80fc 	bgt.w	8004c32 <_vfprintf_r+0x2ca>
 8004a3a:	f10a 0a08 	add.w	sl, sl, #8
 8004a3e:	9b08      	ldr	r3, [sp, #32]
 8004a40:	442b      	add	r3, r5
 8004a42:	9308      	str	r3, [sp, #32]
 8004a44:	7823      	ldrb	r3, [r4, #0]
 8004a46:	2b00      	cmp	r3, #0
 8004a48:	f001 8068 	beq.w	8005b1c <_vfprintf_r+0x11b4>
 8004a4c:	2300      	movs	r3, #0
 8004a4e:	f104 0b01 	add.w	fp, r4, #1
 8004a52:	f894 8001 	ldrb.w	r8, [r4, #1]
 8004a56:	f04f 35ff 	mov.w	r5, #4294967295
 8004a5a:	461a      	mov	r2, r3
 8004a5c:	4619      	mov	r1, r3
 8004a5e:	4699      	mov	r9, r3
 8004a60:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8004a64:	930a      	str	r3, [sp, #40]	; 0x28
 8004a66:	f10b 0b01 	add.w	fp, fp, #1
 8004a6a:	f1a8 0320 	sub.w	r3, r8, #32
 8004a6e:	2b58      	cmp	r3, #88	; 0x58
 8004a70:	f200 83f1 	bhi.w	8005256 <_vfprintf_r+0x8ee>
 8004a74:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004a78:	03ef0265 	.word	0x03ef0265
 8004a7c:	026d03ef 	.word	0x026d03ef
 8004a80:	03ef03ef 	.word	0x03ef03ef
 8004a84:	03ef03ef 	.word	0x03ef03ef
 8004a88:	03ef03ef 	.word	0x03ef03ef
 8004a8c:	02ff02e4 	.word	0x02ff02e4
 8004a90:	030403ef 	.word	0x030403ef
 8004a94:	03ef0309 	.word	0x03ef0309
 8004a98:	010803c5 	.word	0x010803c5
 8004a9c:	01080108 	.word	0x01080108
 8004aa0:	01080108 	.word	0x01080108
 8004aa4:	01080108 	.word	0x01080108
 8004aa8:	01080108 	.word	0x01080108
 8004aac:	03ef03ef 	.word	0x03ef03ef
 8004ab0:	03ef03ef 	.word	0x03ef03ef
 8004ab4:	03ef03ef 	.word	0x03ef03ef
 8004ab8:	03ef03ef 	.word	0x03ef03ef
 8004abc:	03ef03ef 	.word	0x03ef03ef
 8004ac0:	033b0323 	.word	0x033b0323
 8004ac4:	033b03ef 	.word	0x033b03ef
 8004ac8:	03ef03ef 	.word	0x03ef03ef
 8004acc:	03ef03ef 	.word	0x03ef03ef
 8004ad0:	03ef0391 	.word	0x03ef0391
 8004ad4:	009303ef 	.word	0x009303ef
 8004ad8:	03ef03ef 	.word	0x03ef03ef
 8004adc:	03ef03ef 	.word	0x03ef03ef
 8004ae0:	00c903ef 	.word	0x00c903ef
 8004ae4:	03ef03ef 	.word	0x03ef03ef
 8004ae8:	03ef039b 	.word	0x03ef039b
 8004aec:	03ef03ef 	.word	0x03ef03ef
 8004af0:	03ef03ef 	.word	0x03ef03ef
 8004af4:	03ef03ef 	.word	0x03ef03ef
 8004af8:	03ef03ef 	.word	0x03ef03ef
 8004afc:	03b303ef 	.word	0x03b303ef
 8004b00:	033b0117 	.word	0x033b0117
 8004b04:	033b033b 	.word	0x033b033b
 8004b08:	01170396 	.word	0x01170396
 8004b0c:	03ef03ef 	.word	0x03ef03ef
 8004b10:	03ef02f6 	.word	0x03ef02f6
 8004b14:	009502d3 	.word	0x009502d3
 8004b18:	038c037b 	.word	0x038c037b
 8004b1c:	02b103ef 	.word	0x02b103ef
 8004b20:	00cb03ef 	.word	0x00cb03ef
 8004b24:	03ef03ef 	.word	0x03ef03ef
 8004b28:	0272      	.short	0x0272
 8004b2a:	4649      	mov	r1, r9
 8004b2c:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004b2e:	f001 f9fd 	bl	8005f2c <__swsetup_r>
 8004b32:	b178      	cbz	r0, 8004b54 <_vfprintf_r+0x1ec>
 8004b34:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8004b38:	07dc      	lsls	r4, r3, #31
 8004b3a:	d404      	bmi.n	8004b46 <_vfprintf_r+0x1de>
 8004b3c:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004b40:	0598      	lsls	r0, r3, #22
 8004b42:	f140 8380 	bpl.w	8005246 <_vfprintf_r+0x8de>
 8004b46:	f04f 33ff 	mov.w	r3, #4294967295
 8004b4a:	9308      	str	r3, [sp, #32]
 8004b4c:	9808      	ldr	r0, [sp, #32]
 8004b4e:	b041      	add	sp, #260	; 0x104
 8004b50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b54:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004b58:	f003 021a 	and.w	r2, r3, #26
 8004b5c:	2a0a      	cmp	r2, #10
 8004b5e:	f47f af3d 	bne.w	80049dc <_vfprintf_r+0x74>
 8004b62:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8004b66:	2a00      	cmp	r2, #0
 8004b68:	f6ff af38 	blt.w	80049dc <_vfprintf_r+0x74>
 8004b6c:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004b70:	07d1      	lsls	r1, r2, #31
 8004b72:	d405      	bmi.n	8004b80 <_vfprintf_r+0x218>
 8004b74:	059a      	lsls	r2, r3, #22
 8004b76:	d403      	bmi.n	8004b80 <_vfprintf_r+0x218>
 8004b78:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004b7c:	f002 fd22 	bl	80075c4 <__retarget_lock_release_recursive>
 8004b80:	4623      	mov	r3, r4
 8004b82:	4632      	mov	r2, r6
 8004b84:	4649      	mov	r1, r9
 8004b86:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004b88:	f001 f98e 	bl	8005ea8 <__sbprintf>
 8004b8c:	9008      	str	r0, [sp, #32]
 8004b8e:	9808      	ldr	r0, [sp, #32]
 8004b90:	b041      	add	sp, #260	; 0x104
 8004b92:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004b96:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004b98:	f002 fb40 	bl	800721c <__sinit>
 8004b9c:	e6fa      	b.n	8004994 <_vfprintf_r+0x2c>
 8004b9e:	f049 0910 	orr.w	r9, r9, #16
 8004ba2:	f019 0320 	ands.w	r3, r9, #32
 8004ba6:	f040 8331 	bne.w	800520c <_vfprintf_r+0x8a4>
 8004baa:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8004bac:	f852 6b04 	ldr.w	r6, [r2], #4
 8004bb0:	920d      	str	r2, [sp, #52]	; 0x34
 8004bb2:	f019 0210 	ands.w	r2, r9, #16
 8004bb6:	d104      	bne.n	8004bc2 <_vfprintf_r+0x25a>
 8004bb8:	f019 0340 	ands.w	r3, r9, #64	; 0x40
 8004bbc:	d001      	beq.n	8004bc2 <_vfprintf_r+0x25a>
 8004bbe:	4613      	mov	r3, r2
 8004bc0:	b2b6      	uxth	r6, r6
 8004bc2:	2200      	movs	r2, #0
 8004bc4:	1c6c      	adds	r4, r5, #1
 8004bc6:	f04f 0700 	mov.w	r7, #0
 8004bca:	f88d 206f 	strb.w	r2, [sp, #111]	; 0x6f
 8004bce:	f040 81ed 	bne.w	8004fac <_vfprintf_r+0x644>
 8004bd2:	920b      	str	r2, [sp, #44]	; 0x2c
 8004bd4:	2b01      	cmp	r3, #1
 8004bd6:	f000 8509 	beq.w	80055ec <_vfprintf_r+0xc84>
 8004bda:	2b02      	cmp	r3, #2
 8004bdc:	f040 8475 	bne.w	80054ca <_vfprintf_r+0xb62>
 8004be0:	aa30      	add	r2, sp, #192	; 0xc0
 8004be2:	9c18      	ldr	r4, [sp, #96]	; 0x60
 8004be4:	0933      	lsrs	r3, r6, #4
 8004be6:	f006 000f 	and.w	r0, r6, #15
 8004bea:	0939      	lsrs	r1, r7, #4
 8004bec:	ea43 7307 	orr.w	r3, r3, r7, lsl #28
 8004bf0:	460f      	mov	r7, r1
 8004bf2:	461e      	mov	r6, r3
 8004bf4:	5c23      	ldrb	r3, [r4, r0]
 8004bf6:	f802 3d01 	strb.w	r3, [r2, #-1]!
 8004bfa:	ea56 0307 	orrs.w	r3, r6, r7
 8004bfe:	d1f1      	bne.n	8004be4 <_vfprintf_r+0x27c>
 8004c00:	ab30      	add	r3, sp, #192	; 0xc0
 8004c02:	920f      	str	r2, [sp, #60]	; 0x3c
 8004c04:	1a9b      	subs	r3, r3, r2
 8004c06:	930c      	str	r3, [sp, #48]	; 0x30
 8004c08:	e07c      	b.n	8004d04 <_vfprintf_r+0x39c>
 8004c0a:	f049 0910 	orr.w	r9, r9, #16
 8004c0e:	f019 0f20 	tst.w	r9, #32
 8004c12:	f040 8306 	bne.w	8005222 <_vfprintf_r+0x8ba>
 8004c16:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004c18:	f019 0f10 	tst.w	r9, #16
 8004c1c:	f853 6b04 	ldr.w	r6, [r3], #4
 8004c20:	930d      	str	r3, [sp, #52]	; 0x34
 8004c22:	d103      	bne.n	8004c2c <_vfprintf_r+0x2c4>
 8004c24:	f019 0f40 	tst.w	r9, #64	; 0x40
 8004c28:	bf18      	it	ne
 8004c2a:	b2b6      	uxthne	r6, r6
 8004c2c:	2700      	movs	r7, #0
 8004c2e:	2301      	movs	r3, #1
 8004c30:	e1b6      	b.n	8004fa0 <_vfprintf_r+0x638>
 8004c32:	aa23      	add	r2, sp, #140	; 0x8c
 8004c34:	9906      	ldr	r1, [sp, #24]
 8004c36:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004c38:	f003 fc12 	bl	8008460 <__sprint_r>
 8004c3c:	b950      	cbnz	r0, 8004c54 <_vfprintf_r+0x2ec>
 8004c3e:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8004c42:	e6fc      	b.n	8004a3e <_vfprintf_r+0xd6>
 8004c44:	aa23      	add	r2, sp, #140	; 0x8c
 8004c46:	9906      	ldr	r1, [sp, #24]
 8004c48:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004c4a:	f003 fc09 	bl	8008460 <__sprint_r>
 8004c4e:	2800      	cmp	r0, #0
 8004c50:	f000 8172 	beq.w	8004f38 <_vfprintf_r+0x5d0>
 8004c54:	f8dd 9018 	ldr.w	r9, [sp, #24]
 8004c58:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004c5c:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004c60:	07d0      	lsls	r0, r2, #31
 8004c62:	d402      	bmi.n	8004c6a <_vfprintf_r+0x302>
 8004c64:	0599      	lsls	r1, r3, #22
 8004c66:	f140 82e7 	bpl.w	8005238 <_vfprintf_r+0x8d0>
 8004c6a:	065a      	lsls	r2, r3, #25
 8004c6c:	f53f af6b 	bmi.w	8004b46 <_vfprintf_r+0x1de>
 8004c70:	9808      	ldr	r0, [sp, #32]
 8004c72:	b041      	add	sp, #260	; 0x104
 8004c74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c78:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004c7c:	f002 fca0 	bl	80075c0 <__retarget_lock_acquire_recursive>
 8004c80:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8004c84:	b293      	uxth	r3, r2
 8004c86:	e68f      	b.n	80049a8 <_vfprintf_r+0x40>
 8004c88:	f1a8 0330 	sub.w	r3, r8, #48	; 0x30
 8004c8c:	2000      	movs	r0, #0
 8004c8e:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8004c92:	f81b 8b01 	ldrb.w	r8, [fp], #1
 8004c96:	eb03 0040 	add.w	r0, r3, r0, lsl #1
 8004c9a:	f1a8 0330 	sub.w	r3, r8, #48	; 0x30
 8004c9e:	2b09      	cmp	r3, #9
 8004ca0:	d9f5      	bls.n	8004c8e <_vfprintf_r+0x326>
 8004ca2:	900a      	str	r0, [sp, #40]	; 0x28
 8004ca4:	e6e1      	b.n	8004a6a <_vfprintf_r+0x102>
 8004ca6:	2a00      	cmp	r2, #0
 8004ca8:	f041 80eb 	bne.w	8005e82 <_vfprintf_r+0x151a>
 8004cac:	f019 0f20 	tst.w	r9, #32
 8004cb0:	f000 820e 	beq.w	80050d0 <_vfprintf_r+0x768>
 8004cb4:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8004cb6:	3407      	adds	r4, #7
 8004cb8:	f024 0307 	bic.w	r3, r4, #7
 8004cbc:	f103 0208 	add.w	r2, r3, #8
 8004cc0:	e9d3 6700 	ldrd	r6, r7, [r3]
 8004cc4:	920d      	str	r2, [sp, #52]	; 0x34
 8004cc6:	2e00      	cmp	r6, #0
 8004cc8:	f177 0300 	sbcs.w	r3, r7, #0
 8004ccc:	da06      	bge.n	8004cdc <_vfprintf_r+0x374>
 8004cce:	4276      	negs	r6, r6
 8004cd0:	f04f 032d 	mov.w	r3, #45	; 0x2d
 8004cd4:	eb67 0747 	sbc.w	r7, r7, r7, lsl #1
 8004cd8:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8004cdc:	1c6b      	adds	r3, r5, #1
 8004cde:	f000 8482 	beq.w	80055e6 <_vfprintf_r+0xc7e>
 8004ce2:	f029 0280 	bic.w	r2, r9, #128	; 0x80
 8004ce6:	2d00      	cmp	r5, #0
 8004ce8:	f040 846d 	bne.w	80055c6 <_vfprintf_r+0xc5e>
 8004cec:	ea56 0307 	orrs.w	r3, r6, r7
 8004cf0:	f040 8469 	bne.w	80055c6 <_vfprintf_r+0xc5e>
 8004cf4:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 8004cf8:	2500      	movs	r5, #0
 8004cfa:	4691      	mov	r9, r2
 8004cfc:	930b      	str	r3, [sp, #44]	; 0x2c
 8004cfe:	ab30      	add	r3, sp, #192	; 0xc0
 8004d00:	950c      	str	r5, [sp, #48]	; 0x30
 8004d02:	930f      	str	r3, [sp, #60]	; 0x3c
 8004d04:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004d06:	42ab      	cmp	r3, r5
 8004d08:	bfb8      	it	lt
 8004d0a:	462b      	movlt	r3, r5
 8004d0c:	9307      	str	r3, [sp, #28]
 8004d0e:	2300      	movs	r3, #0
 8004d10:	9310      	str	r3, [sp, #64]	; 0x40
 8004d12:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d14:	b113      	cbz	r3, 8004d1c <_vfprintf_r+0x3b4>
 8004d16:	9b07      	ldr	r3, [sp, #28]
 8004d18:	3301      	adds	r3, #1
 8004d1a:	9307      	str	r3, [sp, #28]
 8004d1c:	f019 0302 	ands.w	r3, r9, #2
 8004d20:	930e      	str	r3, [sp, #56]	; 0x38
 8004d22:	d002      	beq.n	8004d2a <_vfprintf_r+0x3c2>
 8004d24:	9b07      	ldr	r3, [sp, #28]
 8004d26:	3302      	adds	r3, #2
 8004d28:	9307      	str	r3, [sp, #28]
 8004d2a:	f019 0784 	ands.w	r7, r9, #132	; 0x84
 8004d2e:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8004d30:	d13e      	bne.n	8004db0 <_vfprintf_r+0x448>
 8004d32:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d34:	9a07      	ldr	r2, [sp, #28]
 8004d36:	1a9e      	subs	r6, r3, r2
 8004d38:	2e00      	cmp	r6, #0
 8004d3a:	dd39      	ble.n	8004db0 <_vfprintf_r+0x448>
 8004d3c:	2e10      	cmp	r6, #16
 8004d3e:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004d40:	dd25      	ble.n	8004d8e <_vfprintf_r+0x426>
 8004d42:	4621      	mov	r1, r4
 8004d44:	2310      	movs	r3, #16
 8004d46:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004d48:	e002      	b.n	8004d50 <_vfprintf_r+0x3e8>
 8004d4a:	3e10      	subs	r6, #16
 8004d4c:	2e10      	cmp	r6, #16
 8004d4e:	dd1d      	ble.n	8004d8c <_vfprintf_r+0x424>
 8004d50:	3201      	adds	r2, #1
 8004d52:	3110      	adds	r1, #16
 8004d54:	48c0      	ldr	r0, [pc, #768]	; (8005058 <_vfprintf_r+0x6f0>)
 8004d56:	f10a 0a08 	add.w	sl, sl, #8
 8004d5a:	2a07      	cmp	r2, #7
 8004d5c:	f84a 3c04 	str.w	r3, [sl, #-4]
 8004d60:	f84a 0c08 	str.w	r0, [sl, #-8]
 8004d64:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
 8004d68:	ddef      	ble.n	8004d4a <_vfprintf_r+0x3e2>
 8004d6a:	aa23      	add	r2, sp, #140	; 0x8c
 8004d6c:	9906      	ldr	r1, [sp, #24]
 8004d6e:	4620      	mov	r0, r4
 8004d70:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d72:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8004d76:	f003 fb73 	bl	8008460 <__sprint_r>
 8004d7a:	2800      	cmp	r0, #0
 8004d7c:	f47f af6a 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8004d80:	3e10      	subs	r6, #16
 8004d82:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d84:	2e10      	cmp	r6, #16
 8004d86:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
 8004d8a:	dce1      	bgt.n	8004d50 <_vfprintf_r+0x3e8>
 8004d8c:	460c      	mov	r4, r1
 8004d8e:	3201      	adds	r2, #1
 8004d90:	4434      	add	r4, r6
 8004d92:	4bb1      	ldr	r3, [pc, #708]	; (8005058 <_vfprintf_r+0x6f0>)
 8004d94:	2a07      	cmp	r2, #7
 8004d96:	f8ca 6004 	str.w	r6, [sl, #4]
 8004d9a:	f8ca 3000 	str.w	r3, [sl]
 8004d9e:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 8004da2:	f300 8486 	bgt.w	80056b2 <_vfprintf_r+0xd4a>
 8004da6:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 8004daa:	f10a 0a08 	add.w	sl, sl, #8
 8004dae:	930b      	str	r3, [sp, #44]	; 0x2c
 8004db0:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004db2:	b183      	cbz	r3, 8004dd6 <_vfprintf_r+0x46e>
 8004db4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004db6:	2101      	movs	r1, #1
 8004db8:	3401      	adds	r4, #1
 8004dba:	f10d 006f 	add.w	r0, sp, #111	; 0x6f
 8004dbe:	440a      	add	r2, r1
 8004dc0:	f8ca 1004 	str.w	r1, [sl, #4]
 8004dc4:	9425      	str	r4, [sp, #148]	; 0x94
 8004dc6:	2a07      	cmp	r2, #7
 8004dc8:	f8ca 0000 	str.w	r0, [sl]
 8004dcc:	9224      	str	r2, [sp, #144]	; 0x90
 8004dce:	f300 8364 	bgt.w	800549a <_vfprintf_r+0xb32>
 8004dd2:	f10a 0a08 	add.w	sl, sl, #8
 8004dd6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dd8:	b17b      	cbz	r3, 8004dfa <_vfprintf_r+0x492>
 8004dda:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004ddc:	3402      	adds	r4, #2
 8004dde:	a91c      	add	r1, sp, #112	; 0x70
 8004de0:	2202      	movs	r2, #2
 8004de2:	3301      	adds	r3, #1
 8004de4:	9425      	str	r4, [sp, #148]	; 0x94
 8004de6:	f8ca 1000 	str.w	r1, [sl]
 8004dea:	2b07      	cmp	r3, #7
 8004dec:	9324      	str	r3, [sp, #144]	; 0x90
 8004dee:	f8ca 2004 	str.w	r2, [sl, #4]
 8004df2:	f300 835e 	bgt.w	80054b2 <_vfprintf_r+0xb4a>
 8004df6:	f10a 0a08 	add.w	sl, sl, #8
 8004dfa:	2f80      	cmp	r7, #128	; 0x80
 8004dfc:	f000 82a1 	beq.w	8005342 <_vfprintf_r+0x9da>
 8004e00:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004e02:	1aed      	subs	r5, r5, r3
 8004e04:	2d00      	cmp	r5, #0
 8004e06:	dd35      	ble.n	8004e74 <_vfprintf_r+0x50c>
 8004e08:	2d10      	cmp	r5, #16
 8004e0a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004e0c:	4f93      	ldr	r7, [pc, #588]	; (800505c <_vfprintf_r+0x6f4>)
 8004e0e:	dd24      	ble.n	8004e5a <_vfprintf_r+0x4f2>
 8004e10:	4621      	mov	r1, r4
 8004e12:	2610      	movs	r6, #16
 8004e14:	461a      	mov	r2, r3
 8004e16:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004e18:	e002      	b.n	8004e20 <_vfprintf_r+0x4b8>
 8004e1a:	3d10      	subs	r5, #16
 8004e1c:	2d10      	cmp	r5, #16
 8004e1e:	dd1a      	ble.n	8004e56 <_vfprintf_r+0x4ee>
 8004e20:	3201      	adds	r2, #1
 8004e22:	3110      	adds	r1, #16
 8004e24:	f8ca 7000 	str.w	r7, [sl]
 8004e28:	f10a 0a08 	add.w	sl, sl, #8
 8004e2c:	2a07      	cmp	r2, #7
 8004e2e:	f84a 6c04 	str.w	r6, [sl, #-4]
 8004e32:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
 8004e36:	ddf0      	ble.n	8004e1a <_vfprintf_r+0x4b2>
 8004e38:	aa23      	add	r2, sp, #140	; 0x8c
 8004e3a:	9906      	ldr	r1, [sp, #24]
 8004e3c:	4620      	mov	r0, r4
 8004e3e:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8004e42:	f003 fb0d 	bl	8008460 <__sprint_r>
 8004e46:	2800      	cmp	r0, #0
 8004e48:	f47f af04 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8004e4c:	3d10      	subs	r5, #16
 8004e4e:	2d10      	cmp	r5, #16
 8004e50:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
 8004e54:	dce4      	bgt.n	8004e20 <_vfprintf_r+0x4b8>
 8004e56:	460c      	mov	r4, r1
 8004e58:	4613      	mov	r3, r2
 8004e5a:	3301      	adds	r3, #1
 8004e5c:	442c      	add	r4, r5
 8004e5e:	f8ca 7000 	str.w	r7, [sl]
 8004e62:	2b07      	cmp	r3, #7
 8004e64:	f8ca 5004 	str.w	r5, [sl, #4]
 8004e68:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 8004e6c:	f300 8354 	bgt.w	8005518 <_vfprintf_r+0xbb0>
 8004e70:	f10a 0a08 	add.w	sl, sl, #8
 8004e74:	f419 7f80 	tst.w	r9, #256	; 0x100
 8004e78:	f040 8202 	bne.w	8005280 <_vfprintf_r+0x918>
 8004e7c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004e7e:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e80:	3301      	adds	r3, #1
 8004e82:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004e84:	4414      	add	r4, r2
 8004e86:	f8ca 2004 	str.w	r2, [sl, #4]
 8004e8a:	2b07      	cmp	r3, #7
 8004e8c:	f8ca 1000 	str.w	r1, [sl]
 8004e90:	9425      	str	r4, [sp, #148]	; 0x94
 8004e92:	9324      	str	r3, [sp, #144]	; 0x90
 8004e94:	f300 82f5 	bgt.w	8005482 <_vfprintf_r+0xb1a>
 8004e98:	f10a 0a08 	add.w	sl, sl, #8
 8004e9c:	f019 0f04 	tst.w	r9, #4
 8004ea0:	d03f      	beq.n	8004f22 <_vfprintf_r+0x5ba>
 8004ea2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ea4:	9a07      	ldr	r2, [sp, #28]
 8004ea6:	1a9d      	subs	r5, r3, r2
 8004ea8:	2d00      	cmp	r5, #0
 8004eaa:	dd3a      	ble.n	8004f22 <_vfprintf_r+0x5ba>
 8004eac:	2d10      	cmp	r5, #16
 8004eae:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004eb0:	dd23      	ble.n	8004efa <_vfprintf_r+0x592>
 8004eb2:	2610      	movs	r6, #16
 8004eb4:	9f09      	ldr	r7, [sp, #36]	; 0x24
 8004eb6:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004eba:	e002      	b.n	8004ec2 <_vfprintf_r+0x55a>
 8004ebc:	3d10      	subs	r5, #16
 8004ebe:	2d10      	cmp	r5, #16
 8004ec0:	dd1b      	ble.n	8004efa <_vfprintf_r+0x592>
 8004ec2:	3301      	adds	r3, #1
 8004ec4:	3410      	adds	r4, #16
 8004ec6:	4a64      	ldr	r2, [pc, #400]	; (8005058 <_vfprintf_r+0x6f0>)
 8004ec8:	f10a 0a08 	add.w	sl, sl, #8
 8004ecc:	2b07      	cmp	r3, #7
 8004ece:	f84a 6c04 	str.w	r6, [sl, #-4]
 8004ed2:	f84a 2c08 	str.w	r2, [sl, #-8]
 8004ed6:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 8004eda:	ddef      	ble.n	8004ebc <_vfprintf_r+0x554>
 8004edc:	aa23      	add	r2, sp, #140	; 0x8c
 8004ede:	4641      	mov	r1, r8
 8004ee0:	4638      	mov	r0, r7
 8004ee2:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8004ee6:	f003 fabb 	bl	8008460 <__sprint_r>
 8004eea:	2800      	cmp	r0, #0
 8004eec:	f040 8484 	bne.w	80057f8 <_vfprintf_r+0xe90>
 8004ef0:	3d10      	subs	r5, #16
 8004ef2:	2d10      	cmp	r5, #16
 8004ef4:	e9dd 3424 	ldrd	r3, r4, [sp, #144]	; 0x90
 8004ef8:	dce3      	bgt.n	8004ec2 <_vfprintf_r+0x55a>
 8004efa:	3301      	adds	r3, #1
 8004efc:	442c      	add	r4, r5
 8004efe:	4a56      	ldr	r2, [pc, #344]	; (8005058 <_vfprintf_r+0x6f0>)
 8004f00:	2b07      	cmp	r3, #7
 8004f02:	f8ca 5004 	str.w	r5, [sl, #4]
 8004f06:	f8ca 2000 	str.w	r2, [sl]
 8004f0a:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 8004f0e:	dd08      	ble.n	8004f22 <_vfprintf_r+0x5ba>
 8004f10:	aa23      	add	r2, sp, #140	; 0x8c
 8004f12:	9906      	ldr	r1, [sp, #24]
 8004f14:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004f16:	f003 faa3 	bl	8008460 <__sprint_r>
 8004f1a:	2800      	cmp	r0, #0
 8004f1c:	f47f ae9a 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8004f20:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8004f22:	9b08      	ldr	r3, [sp, #32]
 8004f24:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004f26:	9907      	ldr	r1, [sp, #28]
 8004f28:	428a      	cmp	r2, r1
 8004f2a:	bfac      	ite	ge
 8004f2c:	189b      	addge	r3, r3, r2
 8004f2e:	185b      	addlt	r3, r3, r1
 8004f30:	9308      	str	r3, [sp, #32]
 8004f32:	2c00      	cmp	r4, #0
 8004f34:	f47f ae86 	bne.w	8004c44 <_vfprintf_r+0x2dc>
 8004f38:	2300      	movs	r3, #0
 8004f3a:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8004f3e:	9324      	str	r3, [sp, #144]	; 0x90
 8004f40:	e55e      	b.n	8004a00 <_vfprintf_r+0x98>
 8004f42:	f89b 8000 	ldrb.w	r8, [fp]
 8004f46:	2900      	cmp	r1, #0
 8004f48:	f47f ad8d 	bne.w	8004a66 <_vfprintf_r+0xfe>
 8004f4c:	2201      	movs	r2, #1
 8004f4e:	2120      	movs	r1, #32
 8004f50:	e589      	b.n	8004a66 <_vfprintf_r+0xfe>
 8004f52:	f049 0901 	orr.w	r9, r9, #1
 8004f56:	f89b 8000 	ldrb.w	r8, [fp]
 8004f5a:	e584      	b.n	8004a66 <_vfprintf_r+0xfe>
 8004f5c:	2a00      	cmp	r2, #0
 8004f5e:	f040 8798 	bne.w	8005e92 <_vfprintf_r+0x152a>
 8004f62:	4b3f      	ldr	r3, [pc, #252]	; (8005060 <_vfprintf_r+0x6f8>)
 8004f64:	f019 0f20 	tst.w	r9, #32
 8004f68:	9318      	str	r3, [sp, #96]	; 0x60
 8004f6a:	f000 8129 	beq.w	80051c0 <_vfprintf_r+0x858>
 8004f6e:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8004f70:	3407      	adds	r4, #7
 8004f72:	f024 0307 	bic.w	r3, r4, #7
 8004f76:	f103 0208 	add.w	r2, r3, #8
 8004f7a:	e9d3 6700 	ldrd	r6, r7, [r3]
 8004f7e:	920d      	str	r2, [sp, #52]	; 0x34
 8004f80:	f019 0f01 	tst.w	r9, #1
 8004f84:	f000 82c6 	beq.w	8005514 <_vfprintf_r+0xbac>
 8004f88:	ea56 0307 	orrs.w	r3, r6, r7
 8004f8c:	f000 82c2 	beq.w	8005514 <_vfprintf_r+0xbac>
 8004f90:	2230      	movs	r2, #48	; 0x30
 8004f92:	f049 0902 	orr.w	r9, r9, #2
 8004f96:	2302      	movs	r3, #2
 8004f98:	f88d 8071 	strb.w	r8, [sp, #113]	; 0x71
 8004f9c:	f88d 2070 	strb.w	r2, [sp, #112]	; 0x70
 8004fa0:	2200      	movs	r2, #0
 8004fa2:	1c6c      	adds	r4, r5, #1
 8004fa4:	f88d 206f 	strb.w	r2, [sp, #111]	; 0x6f
 8004fa8:	f43f ae13 	beq.w	8004bd2 <_vfprintf_r+0x26a>
 8004fac:	ea56 0107 	orrs.w	r1, r6, r7
 8004fb0:	f029 0280 	bic.w	r2, r9, #128	; 0x80
 8004fb4:	f040 8308 	bne.w	80055c8 <_vfprintf_r+0xc60>
 8004fb8:	2d00      	cmp	r5, #0
 8004fba:	f040 8305 	bne.w	80055c8 <_vfprintf_r+0xc60>
 8004fbe:	2b00      	cmp	r3, #0
 8004fc0:	f47f ae98 	bne.w	8004cf4 <_vfprintf_r+0x38c>
 8004fc4:	f019 0101 	ands.w	r1, r9, #1
 8004fc8:	461d      	mov	r5, r3
 8004fca:	910c      	str	r1, [sp, #48]	; 0x30
 8004fcc:	f040 8302 	bne.w	80055d4 <_vfprintf_r+0xc6c>
 8004fd0:	ab30      	add	r3, sp, #192	; 0xc0
 8004fd2:	4691      	mov	r9, r2
 8004fd4:	950b      	str	r5, [sp, #44]	; 0x2c
 8004fd6:	930f      	str	r3, [sp, #60]	; 0x3c
 8004fd8:	e694      	b.n	8004d04 <_vfprintf_r+0x39c>
 8004fda:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8004fdc:	2600      	movs	r6, #0
 8004fde:	6813      	ldr	r3, [r2, #0]
 8004fe0:	1d14      	adds	r4, r2, #4
 8004fe2:	f88d 606f 	strb.w	r6, [sp, #111]	; 0x6f
 8004fe6:	930f      	str	r3, [sp, #60]	; 0x3c
 8004fe8:	2b00      	cmp	r3, #0
 8004fea:	f000 85a4 	beq.w	8005b36 <_vfprintf_r+0x11ce>
 8004fee:	1c6f      	adds	r7, r5, #1
 8004ff0:	f000 85b0 	beq.w	8005b54 <_vfprintf_r+0x11ec>
 8004ff4:	462a      	mov	r2, r5
 8004ff6:	4631      	mov	r1, r6
 8004ff8:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8004ffa:	f002 fe0b 	bl	8007c14 <memchr>
 8004ffe:	2800      	cmp	r0, #0
 8005000:	f000 854b 	beq.w	8005a9a <_vfprintf_r+0x1132>
 8005004:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005006:	4635      	mov	r5, r6
 8005008:	f89d 206f 	ldrb.w	r2, [sp, #111]	; 0x6f
 800500c:	1ac3      	subs	r3, r0, r3
 800500e:	940d      	str	r4, [sp, #52]	; 0x34
 8005010:	920b      	str	r2, [sp, #44]	; 0x2c
 8005012:	930c      	str	r3, [sp, #48]	; 0x30
 8005014:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005018:	9610      	str	r6, [sp, #64]	; 0x40
 800501a:	9307      	str	r3, [sp, #28]
 800501c:	e679      	b.n	8004d12 <_vfprintf_r+0x3aa>
 800501e:	2a00      	cmp	r2, #0
 8005020:	f040 871f 	bne.w	8005e62 <_vfprintf_r+0x14fa>
 8005024:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8005026:	f019 0f20 	tst.w	r9, #32
 800502a:	f852 3b04 	ldr.w	r3, [r2], #4
 800502e:	920d      	str	r2, [sp, #52]	; 0x34
 8005030:	f000 83e5 	beq.w	80057fe <_vfprintf_r+0xe96>
 8005034:	9a08      	ldr	r2, [sp, #32]
 8005036:	4610      	mov	r0, r2
 8005038:	17d1      	asrs	r1, r2, #31
 800503a:	e9c3 0100 	strd	r0, r1, [r3]
 800503e:	e4df      	b.n	8004a00 <_vfprintf_r+0x98>
 8005040:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005042:	f89b 8000 	ldrb.w	r8, [fp]
 8005046:	6818      	ldr	r0, [r3, #0]
 8005048:	3304      	adds	r3, #4
 800504a:	2800      	cmp	r0, #0
 800504c:	900a      	str	r0, [sp, #40]	; 0x28
 800504e:	f2c0 84fb 	blt.w	8005a48 <_vfprintf_r+0x10e0>
 8005052:	930d      	str	r3, [sp, #52]	; 0x34
 8005054:	e507      	b.n	8004a66 <_vfprintf_r+0xfe>
 8005056:	bf00      	nop
 8005058:	08009270 	.word	0x08009270
 800505c:	08009280 	.word	0x08009280
 8005060:	08009250 	.word	0x08009250
 8005064:	f89b 8000 	ldrb.w	r8, [fp]
 8005068:	f1b8 0f6c 	cmp.w	r8, #108	; 0x6c
 800506c:	f000 851f 	beq.w	8005aae <_vfprintf_r+0x1146>
 8005070:	f049 0910 	orr.w	r9, r9, #16
 8005074:	e4f7      	b.n	8004a66 <_vfprintf_r+0xfe>
 8005076:	f89b 8000 	ldrb.w	r8, [fp]
 800507a:	2201      	movs	r2, #1
 800507c:	212b      	movs	r1, #43	; 0x2b
 800507e:	e4f2      	b.n	8004a66 <_vfprintf_r+0xfe>
 8005080:	f89b 8000 	ldrb.w	r8, [fp]
 8005084:	f049 0904 	orr.w	r9, r9, #4
 8005088:	e4ed      	b.n	8004a66 <_vfprintf_r+0xfe>
 800508a:	f89b 8000 	ldrb.w	r8, [fp]
 800508e:	f10b 0001 	add.w	r0, fp, #1
 8005092:	f1b8 0f2a 	cmp.w	r8, #42	; 0x2a
 8005096:	f000 86c6 	beq.w	8005e26 <_vfprintf_r+0x14be>
 800509a:	f1a8 0330 	sub.w	r3, r8, #48	; 0x30
 800509e:	2b09      	cmp	r3, #9
 80050a0:	f200 85ea 	bhi.w	8005c78 <_vfprintf_r+0x1310>
 80050a4:	2500      	movs	r5, #0
 80050a6:	eb05 0585 	add.w	r5, r5, r5, lsl #2
 80050aa:	f810 8b01 	ldrb.w	r8, [r0], #1
 80050ae:	eb03 0545 	add.w	r5, r3, r5, lsl #1
 80050b2:	f1a8 0330 	sub.w	r3, r8, #48	; 0x30
 80050b6:	2b09      	cmp	r3, #9
 80050b8:	d9f5      	bls.n	80050a6 <_vfprintf_r+0x73e>
 80050ba:	4683      	mov	fp, r0
 80050bc:	e4d5      	b.n	8004a6a <_vfprintf_r+0x102>
 80050be:	2a00      	cmp	r2, #0
 80050c0:	f040 86d7 	bne.w	8005e72 <_vfprintf_r+0x150a>
 80050c4:	f049 0910 	orr.w	r9, r9, #16
 80050c8:	f019 0f20 	tst.w	r9, #32
 80050cc:	f47f adf2 	bne.w	8004cb4 <_vfprintf_r+0x34c>
 80050d0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80050d2:	f019 0f10 	tst.w	r9, #16
 80050d6:	f853 6b04 	ldr.w	r6, [r3], #4
 80050da:	930d      	str	r3, [sp, #52]	; 0x34
 80050dc:	f040 82c1 	bne.w	8005662 <_vfprintf_r+0xcfa>
 80050e0:	f019 0f40 	tst.w	r9, #64	; 0x40
 80050e4:	f000 82bd 	beq.w	8005662 <_vfprintf_r+0xcfa>
 80050e8:	b236      	sxth	r6, r6
 80050ea:	17f7      	asrs	r7, r6, #31
 80050ec:	e5eb      	b.n	8004cc6 <_vfprintf_r+0x35e>
 80050ee:	2a00      	cmp	r2, #0
 80050f0:	f040 86bb 	bne.w	8005e6a <_vfprintf_r+0x1502>
 80050f4:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 80050f6:	f04f 32ff 	mov.w	r2, #4294967295
 80050fa:	4bb3      	ldr	r3, [pc, #716]	; (80053c8 <_vfprintf_r+0xa60>)
 80050fc:	3407      	adds	r4, #7
 80050fe:	f024 0107 	bic.w	r1, r4, #7
 8005102:	f101 0408 	add.w	r4, r1, #8
 8005106:	684f      	ldr	r7, [r1, #4]
 8005108:	6808      	ldr	r0, [r1, #0]
 800510a:	940d      	str	r4, [sp, #52]	; 0x34
 800510c:	f027 4400 	bic.w	r4, r7, #2147483648	; 0x80000000
 8005110:	4606      	mov	r6, r0
 8005112:	4621      	mov	r1, r4
 8005114:	e9cd 0714 	strd	r0, r7, [sp, #80]	; 0x50
 8005118:	f7fb fee4 	bl	8000ee4 <__aeabi_dcmpun>
 800511c:	2800      	cmp	r0, #0
 800511e:	f040 838d 	bne.w	800583c <_vfprintf_r+0xed4>
 8005122:	4630      	mov	r0, r6
 8005124:	f04f 32ff 	mov.w	r2, #4294967295
 8005128:	4ba7      	ldr	r3, [pc, #668]	; (80053c8 <_vfprintf_r+0xa60>)
 800512a:	4621      	mov	r1, r4
 800512c:	f7fb febc 	bl	8000ea8 <__aeabi_dcmple>
 8005130:	2800      	cmp	r0, #0
 8005132:	f040 8383 	bne.w	800583c <_vfprintf_r+0xed4>
 8005136:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005138:	4639      	mov	r1, r7
 800513a:	9814      	ldr	r0, [sp, #80]	; 0x50
 800513c:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 800513e:	f7fb fea9 	bl	8000e94 <__aeabi_dcmplt>
 8005142:	2800      	cmp	r0, #0
 8005144:	f040 8485 	bne.w	8005a52 <_vfprintf_r+0x10ea>
 8005148:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 800514c:	930b      	str	r3, [sp, #44]	; 0x2c
 800514e:	2303      	movs	r3, #3
 8005150:	4a9e      	ldr	r2, [pc, #632]	; (80053cc <_vfprintf_r+0xa64>)
 8005152:	4619      	mov	r1, r3
 8005154:	9307      	str	r3, [sp, #28]
 8005156:	4b9e      	ldr	r3, [pc, #632]	; (80053d0 <_vfprintf_r+0xa68>)
 8005158:	2500      	movs	r5, #0
 800515a:	f1b8 0f47 	cmp.w	r8, #71	; 0x47
 800515e:	bfd8      	it	le
 8005160:	461a      	movle	r2, r3
 8005162:	f029 0980 	bic.w	r9, r9, #128	; 0x80
 8005166:	910c      	str	r1, [sp, #48]	; 0x30
 8005168:	e9cd 250f 	strd	r2, r5, [sp, #60]	; 0x3c
 800516c:	e5d1      	b.n	8004d12 <_vfprintf_r+0x3aa>
 800516e:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8005170:	f647 0330 	movw	r3, #30768	; 0x7830
 8005174:	f049 0902 	orr.w	r9, r9, #2
 8005178:	2700      	movs	r7, #0
 800517a:	6816      	ldr	r6, [r2, #0]
 800517c:	3204      	adds	r2, #4
 800517e:	f8ad 3070 	strh.w	r3, [sp, #112]	; 0x70
 8005182:	f04f 0878 	mov.w	r8, #120	; 0x78
 8005186:	4b93      	ldr	r3, [pc, #588]	; (80053d4 <_vfprintf_r+0xa6c>)
 8005188:	920d      	str	r2, [sp, #52]	; 0x34
 800518a:	9318      	str	r3, [sp, #96]	; 0x60
 800518c:	2302      	movs	r3, #2
 800518e:	e707      	b.n	8004fa0 <_vfprintf_r+0x638>
 8005190:	f049 0920 	orr.w	r9, r9, #32
 8005194:	f89b 8000 	ldrb.w	r8, [fp]
 8005198:	e465      	b.n	8004a66 <_vfprintf_r+0xfe>
 800519a:	f049 0908 	orr.w	r9, r9, #8
 800519e:	f89b 8000 	ldrb.w	r8, [fp]
 80051a2:	e460      	b.n	8004a66 <_vfprintf_r+0xfe>
 80051a4:	f049 0940 	orr.w	r9, r9, #64	; 0x40
 80051a8:	f89b 8000 	ldrb.w	r8, [fp]
 80051ac:	e45b      	b.n	8004a66 <_vfprintf_r+0xfe>
 80051ae:	2a00      	cmp	r2, #0
 80051b0:	f040 866b 	bne.w	8005e8a <_vfprintf_r+0x1522>
 80051b4:	4b88      	ldr	r3, [pc, #544]	; (80053d8 <_vfprintf_r+0xa70>)
 80051b6:	f019 0f20 	tst.w	r9, #32
 80051ba:	9318      	str	r3, [sp, #96]	; 0x60
 80051bc:	f47f aed7 	bne.w	8004f6e <_vfprintf_r+0x606>
 80051c0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80051c2:	f019 0f10 	tst.w	r9, #16
 80051c6:	f853 6b04 	ldr.w	r6, [r3], #4
 80051ca:	930d      	str	r3, [sp, #52]	; 0x34
 80051cc:	f040 824c 	bne.w	8005668 <_vfprintf_r+0xd00>
 80051d0:	f019 0f40 	tst.w	r9, #64	; 0x40
 80051d4:	f000 8248 	beq.w	8005668 <_vfprintf_r+0xd00>
 80051d8:	b2b6      	uxth	r6, r6
 80051da:	2700      	movs	r7, #0
 80051dc:	e6d0      	b.n	8004f80 <_vfprintf_r+0x618>
 80051de:	2300      	movs	r3, #0
 80051e0:	990d      	ldr	r1, [sp, #52]	; 0x34
 80051e2:	2001      	movs	r0, #1
 80051e4:	680a      	ldr	r2, [r1, #0]
 80051e6:	461d      	mov	r5, r3
 80051e8:	3104      	adds	r1, #4
 80051ea:	930b      	str	r3, [sp, #44]	; 0x2c
 80051ec:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 80051f0:	9310      	str	r3, [sp, #64]	; 0x40
 80051f2:	ab26      	add	r3, sp, #152	; 0x98
 80051f4:	9007      	str	r0, [sp, #28]
 80051f6:	910d      	str	r1, [sp, #52]	; 0x34
 80051f8:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80051fc:	900c      	str	r0, [sp, #48]	; 0x30
 80051fe:	930f      	str	r3, [sp, #60]	; 0x3c
 8005200:	e58c      	b.n	8004d1c <_vfprintf_r+0x3b4>
 8005202:	f049 0980 	orr.w	r9, r9, #128	; 0x80
 8005206:	f89b 8000 	ldrb.w	r8, [fp]
 800520a:	e42c      	b.n	8004a66 <_vfprintf_r+0xfe>
 800520c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 800520e:	2300      	movs	r3, #0
 8005210:	3407      	adds	r4, #7
 8005212:	f024 0207 	bic.w	r2, r4, #7
 8005216:	f102 0108 	add.w	r1, r2, #8
 800521a:	e9d2 6700 	ldrd	r6, r7, [r2]
 800521e:	910d      	str	r1, [sp, #52]	; 0x34
 8005220:	e6be      	b.n	8004fa0 <_vfprintf_r+0x638>
 8005222:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8005224:	2301      	movs	r3, #1
 8005226:	3407      	adds	r4, #7
 8005228:	f024 0207 	bic.w	r2, r4, #7
 800522c:	f102 0108 	add.w	r1, r2, #8
 8005230:	e9d2 6700 	ldrd	r6, r7, [r2]
 8005234:	910d      	str	r1, [sp, #52]	; 0x34
 8005236:	e6b3      	b.n	8004fa0 <_vfprintf_r+0x638>
 8005238:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800523c:	f002 f9c2 	bl	80075c4 <__retarget_lock_release_recursive>
 8005240:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005244:	e511      	b.n	8004c6a <_vfprintf_r+0x302>
 8005246:	f04f 33ff 	mov.w	r3, #4294967295
 800524a:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800524e:	9308      	str	r3, [sp, #32]
 8005250:	f002 f9b8 	bl	80075c4 <__retarget_lock_release_recursive>
 8005254:	e50c      	b.n	8004c70 <_vfprintf_r+0x308>
 8005256:	2a00      	cmp	r2, #0
 8005258:	f040 860f 	bne.w	8005e7a <_vfprintf_r+0x1512>
 800525c:	f1b8 0f00 	cmp.w	r8, #0
 8005260:	f000 845c 	beq.w	8005b1c <_vfprintf_r+0x11b4>
 8005264:	2300      	movs	r3, #0
 8005266:	2201      	movs	r2, #1
 8005268:	a926      	add	r1, sp, #152	; 0x98
 800526a:	f88d 8098 	strb.w	r8, [sp, #152]	; 0x98
 800526e:	9207      	str	r2, [sp, #28]
 8005270:	461d      	mov	r5, r3
 8005272:	910f      	str	r1, [sp, #60]	; 0x3c
 8005274:	930b      	str	r3, [sp, #44]	; 0x2c
 8005276:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 800527a:	920c      	str	r2, [sp, #48]	; 0x30
 800527c:	9310      	str	r3, [sp, #64]	; 0x40
 800527e:	e54d      	b.n	8004d1c <_vfprintf_r+0x3b4>
 8005280:	f1b8 0f65 	cmp.w	r8, #101	; 0x65
 8005284:	f340 80ae 	ble.w	80053e4 <_vfprintf_r+0xa7c>
 8005288:	a814      	add	r0, sp, #80	; 0x50
 800528a:	c80f      	ldmia	r0, {r0, r1, r2, r3}
 800528c:	f7fb fdf8 	bl	8000e80 <__aeabi_dcmpeq>
 8005290:	2800      	cmp	r0, #0
 8005292:	f000 814d 	beq.w	8005530 <_vfprintf_r+0xbc8>
 8005296:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005298:	2201      	movs	r2, #1
 800529a:	3401      	adds	r4, #1
 800529c:	494f      	ldr	r1, [pc, #316]	; (80053dc <_vfprintf_r+0xa74>)
 800529e:	4413      	add	r3, r2
 80052a0:	f8ca 2004 	str.w	r2, [sl, #4]
 80052a4:	9425      	str	r4, [sp, #148]	; 0x94
 80052a6:	2b07      	cmp	r3, #7
 80052a8:	f8ca 1000 	str.w	r1, [sl]
 80052ac:	9324      	str	r3, [sp, #144]	; 0x90
 80052ae:	f300 83a4 	bgt.w	80059fa <_vfprintf_r+0x1092>
 80052b2:	f10a 0a08 	add.w	sl, sl, #8
 80052b6:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 80052b8:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80052ba:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80052bc:	4293      	cmp	r3, r2
 80052be:	db03      	blt.n	80052c8 <_vfprintf_r+0x960>
 80052c0:	f019 0f01 	tst.w	r9, #1
 80052c4:	f43f adea 	beq.w	8004e9c <_vfprintf_r+0x534>
 80052c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80052ca:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80052cc:	3301      	adds	r3, #1
 80052ce:	9913      	ldr	r1, [sp, #76]	; 0x4c
 80052d0:	4414      	add	r4, r2
 80052d2:	f8ca 2004 	str.w	r2, [sl, #4]
 80052d6:	2b07      	cmp	r3, #7
 80052d8:	f8ca 1000 	str.w	r1, [sl]
 80052dc:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 80052e0:	f300 8400 	bgt.w	8005ae4 <_vfprintf_r+0x117c>
 80052e4:	f10a 0a08 	add.w	sl, sl, #8
 80052e8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80052ea:	1e5d      	subs	r5, r3, #1
 80052ec:	2d00      	cmp	r5, #0
 80052ee:	f77f add5 	ble.w	8004e9c <_vfprintf_r+0x534>
 80052f2:	2d10      	cmp	r5, #16
 80052f4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80052f6:	4f3a      	ldr	r7, [pc, #232]	; (80053e0 <_vfprintf_r+0xa78>)
 80052f8:	f340 8272 	ble.w	80057e0 <_vfprintf_r+0xe78>
 80052fc:	4622      	mov	r2, r4
 80052fe:	2610      	movs	r6, #16
 8005300:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005304:	9c06      	ldr	r4, [sp, #24]
 8005306:	e003      	b.n	8005310 <_vfprintf_r+0x9a8>
 8005308:	3d10      	subs	r5, #16
 800530a:	2d10      	cmp	r5, #16
 800530c:	f340 8267 	ble.w	80057de <_vfprintf_r+0xe76>
 8005310:	3301      	adds	r3, #1
 8005312:	3210      	adds	r2, #16
 8005314:	f8ca 7000 	str.w	r7, [sl]
 8005318:	f10a 0a08 	add.w	sl, sl, #8
 800531c:	2b07      	cmp	r3, #7
 800531e:	f84a 6c04 	str.w	r6, [sl, #-4]
 8005322:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
 8005326:	ddef      	ble.n	8005308 <_vfprintf_r+0x9a0>
 8005328:	aa23      	add	r2, sp, #140	; 0x8c
 800532a:	4621      	mov	r1, r4
 800532c:	4640      	mov	r0, r8
 800532e:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005332:	f003 f895 	bl	8008460 <__sprint_r>
 8005336:	2800      	cmp	r0, #0
 8005338:	f040 83fa 	bne.w	8005b30 <_vfprintf_r+0x11c8>
 800533c:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
 8005340:	e7e2      	b.n	8005308 <_vfprintf_r+0x9a0>
 8005342:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005344:	9a07      	ldr	r2, [sp, #28]
 8005346:	1a9e      	subs	r6, r3, r2
 8005348:	2e00      	cmp	r6, #0
 800534a:	f77f ad59 	ble.w	8004e00 <_vfprintf_r+0x498>
 800534e:	2e10      	cmp	r6, #16
 8005350:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005352:	4f23      	ldr	r7, [pc, #140]	; (80053e0 <_vfprintf_r+0xa78>)
 8005354:	dd2a      	ble.n	80053ac <_vfprintf_r+0xa44>
 8005356:	461a      	mov	r2, r3
 8005358:	463b      	mov	r3, r7
 800535a:	4621      	mov	r1, r4
 800535c:	462f      	mov	r7, r5
 800535e:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005360:	461d      	mov	r5, r3
 8005362:	e002      	b.n	800536a <_vfprintf_r+0xa02>
 8005364:	3e10      	subs	r6, #16
 8005366:	2e10      	cmp	r6, #16
 8005368:	dd1b      	ble.n	80053a2 <_vfprintf_r+0xa3a>
 800536a:	3201      	adds	r2, #1
 800536c:	3110      	adds	r1, #16
 800536e:	2310      	movs	r3, #16
 8005370:	f8ca 5000 	str.w	r5, [sl]
 8005374:	2a07      	cmp	r2, #7
 8005376:	f10a 0a08 	add.w	sl, sl, #8
 800537a:	f84a 3c04 	str.w	r3, [sl, #-4]
 800537e:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
 8005382:	ddef      	ble.n	8005364 <_vfprintf_r+0x9fc>
 8005384:	aa23      	add	r2, sp, #140	; 0x8c
 8005386:	9906      	ldr	r1, [sp, #24]
 8005388:	4620      	mov	r0, r4
 800538a:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 800538e:	f003 f867 	bl	8008460 <__sprint_r>
 8005392:	2800      	cmp	r0, #0
 8005394:	f47f ac5e 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005398:	3e10      	subs	r6, #16
 800539a:	2e10      	cmp	r6, #16
 800539c:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
 80053a0:	dce3      	bgt.n	800536a <_vfprintf_r+0xa02>
 80053a2:	4613      	mov	r3, r2
 80053a4:	462a      	mov	r2, r5
 80053a6:	460c      	mov	r4, r1
 80053a8:	463d      	mov	r5, r7
 80053aa:	4617      	mov	r7, r2
 80053ac:	3301      	adds	r3, #1
 80053ae:	4434      	add	r4, r6
 80053b0:	f8ca 7000 	str.w	r7, [sl]
 80053b4:	2b07      	cmp	r3, #7
 80053b6:	f8ca 6004 	str.w	r6, [sl, #4]
 80053ba:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 80053be:	f300 822d 	bgt.w	800581c <_vfprintf_r+0xeb4>
 80053c2:	f10a 0a08 	add.w	sl, sl, #8
 80053c6:	e51b      	b.n	8004e00 <_vfprintf_r+0x498>
 80053c8:	7fefffff 	.word	0x7fefffff
 80053cc:	08009230 	.word	0x08009230
 80053d0:	0800922c 	.word	0x0800922c
 80053d4:	08009250 	.word	0x08009250
 80053d8:	0800923c 	.word	0x0800923c
 80053dc:	0800926c 	.word	0x0800926c
 80053e0:	08009280 	.word	0x08009280
 80053e4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80053e6:	3401      	adds	r4, #1
 80053e8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80053ea:	f10a 0508 	add.w	r5, sl, #8
 80053ee:	2a01      	cmp	r2, #1
 80053f0:	f103 0601 	add.w	r6, r3, #1
 80053f4:	f340 813a 	ble.w	800566c <_vfprintf_r+0xd04>
 80053f8:	2301      	movs	r3, #1
 80053fa:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80053fc:	2e07      	cmp	r6, #7
 80053fe:	f8ca 2000 	str.w	r2, [sl]
 8005402:	f8ca 3004 	str.w	r3, [sl, #4]
 8005406:	e9cd 6424 	strd	r6, r4, [sp, #144]	; 0x90
 800540a:	f300 81d0 	bgt.w	80057ae <_vfprintf_r+0xe46>
 800540e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005410:	3601      	adds	r6, #1
 8005412:	9a13      	ldr	r2, [sp, #76]	; 0x4c
 8005414:	441c      	add	r4, r3
 8005416:	2e07      	cmp	r6, #7
 8005418:	602a      	str	r2, [r5, #0]
 800541a:	606b      	str	r3, [r5, #4]
 800541c:	e9cd 6424 	strd	r6, r4, [sp, #144]	; 0x90
 8005420:	f300 81d1 	bgt.w	80057c6 <_vfprintf_r+0xe5e>
 8005424:	3508      	adds	r5, #8
 8005426:	1c77      	adds	r7, r6, #1
 8005428:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800542a:	9814      	ldr	r0, [sp, #80]	; 0x50
 800542c:	f105 0a08 	add.w	sl, r5, #8
 8005430:	970c      	str	r7, [sp, #48]	; 0x30
 8005432:	9f11      	ldr	r7, [sp, #68]	; 0x44
 8005434:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8005436:	f107 38ff 	add.w	r8, r7, #4294967295
 800543a:	1c77      	adds	r7, r6, #1
 800543c:	9915      	ldr	r1, [sp, #84]	; 0x54
 800543e:	970b      	str	r7, [sp, #44]	; 0x2c
 8005440:	f7fb fd1e 	bl	8000e80 <__aeabi_dcmpeq>
 8005444:	2800      	cmp	r0, #0
 8005446:	f040 80df 	bne.w	8005608 <_vfprintf_r+0xca0>
 800544a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800544c:	4444      	add	r4, r8
 800544e:	2f07      	cmp	r7, #7
 8005450:	f103 0301 	add.w	r3, r3, #1
 8005454:	e9cd 7424 	strd	r7, r4, [sp, #144]	; 0x90
 8005458:	e9c5 3800 	strd	r3, r8, [r5]
 800545c:	f300 8119 	bgt.w	8005692 <_vfprintf_r+0xd2a>
 8005460:	f105 0310 	add.w	r3, r5, #16
 8005464:	1cb2      	adds	r2, r6, #2
 8005466:	4655      	mov	r5, sl
 8005468:	469a      	mov	sl, r3
 800546a:	920b      	str	r2, [sp, #44]	; 0x2c
 800546c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800546e:	ab1f      	add	r3, sp, #124	; 0x7c
 8005470:	4414      	add	r4, r2
 8005472:	606a      	str	r2, [r5, #4]
 8005474:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005476:	9425      	str	r4, [sp, #148]	; 0x94
 8005478:	2a07      	cmp	r2, #7
 800547a:	9224      	str	r2, [sp, #144]	; 0x90
 800547c:	602b      	str	r3, [r5, #0]
 800547e:	f77f ad0d 	ble.w	8004e9c <_vfprintf_r+0x534>
 8005482:	aa23      	add	r2, sp, #140	; 0x8c
 8005484:	9906      	ldr	r1, [sp, #24]
 8005486:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005488:	f002 ffea 	bl	8008460 <__sprint_r>
 800548c:	2800      	cmp	r0, #0
 800548e:	f47f abe1 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005492:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005494:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005498:	e500      	b.n	8004e9c <_vfprintf_r+0x534>
 800549a:	aa23      	add	r2, sp, #140	; 0x8c
 800549c:	9906      	ldr	r1, [sp, #24]
 800549e:	9809      	ldr	r0, [sp, #36]	; 0x24
 80054a0:	f002 ffde 	bl	8008460 <__sprint_r>
 80054a4:	2800      	cmp	r0, #0
 80054a6:	f47f abd5 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80054aa:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80054ac:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 80054b0:	e491      	b.n	8004dd6 <_vfprintf_r+0x46e>
 80054b2:	aa23      	add	r2, sp, #140	; 0x8c
 80054b4:	9906      	ldr	r1, [sp, #24]
 80054b6:	9809      	ldr	r0, [sp, #36]	; 0x24
 80054b8:	f002 ffd2 	bl	8008460 <__sprint_r>
 80054bc:	2800      	cmp	r0, #0
 80054be:	f47f abc9 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80054c2:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80054c4:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 80054c8:	e497      	b.n	8004dfa <_vfprintf_r+0x492>
 80054ca:	a930      	add	r1, sp, #192	; 0xc0
 80054cc:	e000      	b.n	80054d0 <_vfprintf_r+0xb68>
 80054ce:	4611      	mov	r1, r2
 80054d0:	08f2      	lsrs	r2, r6, #3
 80054d2:	f006 0307 	and.w	r3, r6, #7
 80054d6:	08f8      	lsrs	r0, r7, #3
 80054d8:	ea42 7247 	orr.w	r2, r2, r7, lsl #29
 80054dc:	3330      	adds	r3, #48	; 0x30
 80054de:	4607      	mov	r7, r0
 80054e0:	4616      	mov	r6, r2
 80054e2:	f801 3c01 	strb.w	r3, [r1, #-1]
 80054e6:	1e4a      	subs	r2, r1, #1
 80054e8:	ea56 0007 	orrs.w	r0, r6, r7
 80054ec:	d1ef      	bne.n	80054ce <_vfprintf_r+0xb66>
 80054ee:	2b30      	cmp	r3, #48	; 0x30
 80054f0:	920f      	str	r2, [sp, #60]	; 0x3c
 80054f2:	f000 80ee 	beq.w	80056d2 <_vfprintf_r+0xd6a>
 80054f6:	f019 0f01 	tst.w	r9, #1
 80054fa:	f000 80ea 	beq.w	80056d2 <_vfprintf_r+0xd6a>
 80054fe:	2330      	movs	r3, #48	; 0x30
 8005500:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005502:	3902      	subs	r1, #2
 8005504:	f802 3c01 	strb.w	r3, [r2, #-1]
 8005508:	ab30      	add	r3, sp, #192	; 0xc0
 800550a:	910f      	str	r1, [sp, #60]	; 0x3c
 800550c:	1a5b      	subs	r3, r3, r1
 800550e:	930c      	str	r3, [sp, #48]	; 0x30
 8005510:	f7ff bbf8 	b.w	8004d04 <_vfprintf_r+0x39c>
 8005514:	2302      	movs	r3, #2
 8005516:	e543      	b.n	8004fa0 <_vfprintf_r+0x638>
 8005518:	aa23      	add	r2, sp, #140	; 0x8c
 800551a:	9906      	ldr	r1, [sp, #24]
 800551c:	9809      	ldr	r0, [sp, #36]	; 0x24
 800551e:	f002 ff9f 	bl	8008460 <__sprint_r>
 8005522:	2800      	cmp	r0, #0
 8005524:	f47f ab96 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005528:	9c25      	ldr	r4, [sp, #148]	; 0x94
 800552a:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 800552e:	e4a1      	b.n	8004e74 <_vfprintf_r+0x50c>
 8005530:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8005532:	2a00      	cmp	r2, #0
 8005534:	f340 822d 	ble.w	8005992 <_vfprintf_r+0x102a>
 8005538:	e9dd 3210 	ldrd	r3, r2, [sp, #64]	; 0x40
 800553c:	4293      	cmp	r3, r2
 800553e:	bfa8      	it	ge
 8005540:	4613      	movge	r3, r2
 8005542:	2b00      	cmp	r3, #0
 8005544:	461d      	mov	r5, r3
 8005546:	dd0e      	ble.n	8005566 <_vfprintf_r+0xbfe>
 8005548:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800554a:	442c      	add	r4, r5
 800554c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800554e:	3301      	adds	r3, #1
 8005550:	9425      	str	r4, [sp, #148]	; 0x94
 8005552:	f8ca 2000 	str.w	r2, [sl]
 8005556:	2b07      	cmp	r3, #7
 8005558:	f8ca 5004 	str.w	r5, [sl, #4]
 800555c:	9324      	str	r3, [sp, #144]	; 0x90
 800555e:	f300 8378 	bgt.w	8005c52 <_vfprintf_r+0x12ea>
 8005562:	f10a 0a08 	add.w	sl, sl, #8
 8005566:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005568:	2d00      	cmp	r5, #0
 800556a:	bfa8      	it	ge
 800556c:	1b5b      	subge	r3, r3, r5
 800556e:	2b00      	cmp	r3, #0
 8005570:	461d      	mov	r5, r3
 8005572:	f340 80bf 	ble.w	80056f4 <_vfprintf_r+0xd8c>
 8005576:	2d10      	cmp	r5, #16
 8005578:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800557a:	4faf      	ldr	r7, [pc, #700]	; (8005838 <_vfprintf_r+0xed0>)
 800557c:	f340 82c0 	ble.w	8005b00 <_vfprintf_r+0x1198>
 8005580:	4622      	mov	r2, r4
 8005582:	2610      	movs	r6, #16
 8005584:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005588:	9c06      	ldr	r4, [sp, #24]
 800558a:	e003      	b.n	8005594 <_vfprintf_r+0xc2c>
 800558c:	3d10      	subs	r5, #16
 800558e:	2d10      	cmp	r5, #16
 8005590:	f340 82b5 	ble.w	8005afe <_vfprintf_r+0x1196>
 8005594:	3301      	adds	r3, #1
 8005596:	3210      	adds	r2, #16
 8005598:	f8ca 7000 	str.w	r7, [sl]
 800559c:	f10a 0a08 	add.w	sl, sl, #8
 80055a0:	2b07      	cmp	r3, #7
 80055a2:	f84a 6c04 	str.w	r6, [sl, #-4]
 80055a6:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
 80055aa:	ddef      	ble.n	800558c <_vfprintf_r+0xc24>
 80055ac:	aa23      	add	r2, sp, #140	; 0x8c
 80055ae:	4621      	mov	r1, r4
 80055b0:	4640      	mov	r0, r8
 80055b2:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 80055b6:	f002 ff53 	bl	8008460 <__sprint_r>
 80055ba:	2800      	cmp	r0, #0
 80055bc:	f040 82b8 	bne.w	8005b30 <_vfprintf_r+0x11c8>
 80055c0:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
 80055c4:	e7e2      	b.n	800558c <_vfprintf_r+0xc24>
 80055c6:	2301      	movs	r3, #1
 80055c8:	4691      	mov	r9, r2
 80055ca:	f89d 206f 	ldrb.w	r2, [sp, #111]	; 0x6f
 80055ce:	920b      	str	r2, [sp, #44]	; 0x2c
 80055d0:	f7ff bb00 	b.w	8004bd4 <_vfprintf_r+0x26c>
 80055d4:	930b      	str	r3, [sp, #44]	; 0x2c
 80055d6:	4691      	mov	r9, r2
 80055d8:	2330      	movs	r3, #48	; 0x30
 80055da:	aa40      	add	r2, sp, #256	; 0x100
 80055dc:	f802 3d41 	strb.w	r3, [r2, #-65]!
 80055e0:	920f      	str	r2, [sp, #60]	; 0x3c
 80055e2:	f7ff bb8f 	b.w	8004d04 <_vfprintf_r+0x39c>
 80055e6:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 80055ea:	930b      	str	r3, [sp, #44]	; 0x2c
 80055ec:	2f00      	cmp	r7, #0
 80055ee:	bf08      	it	eq
 80055f0:	2e0a      	cmpeq	r6, #10
 80055f2:	f080 820d 	bcs.w	8005a10 <_vfprintf_r+0x10a8>
 80055f6:	ab40      	add	r3, sp, #256	; 0x100
 80055f8:	3630      	adds	r6, #48	; 0x30
 80055fa:	2201      	movs	r2, #1
 80055fc:	f803 6d41 	strb.w	r6, [r3, #-65]!
 8005600:	920c      	str	r2, [sp, #48]	; 0x30
 8005602:	930f      	str	r3, [sp, #60]	; 0x3c
 8005604:	f7ff bb7e 	b.w	8004d04 <_vfprintf_r+0x39c>
 8005608:	f1b8 0f00 	cmp.w	r8, #0
 800560c:	f77f af2e 	ble.w	800546c <_vfprintf_r+0xb04>
 8005610:	f1b8 0f10 	cmp.w	r8, #16
 8005614:	f340 83e7 	ble.w	8005de6 <_vfprintf_r+0x147e>
 8005618:	4622      	mov	r2, r4
 800561a:	4f87      	ldr	r7, [pc, #540]	; (8005838 <_vfprintf_r+0xed0>)
 800561c:	f04f 0a10 	mov.w	sl, #16
 8005620:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8005622:	990c      	ldr	r1, [sp, #48]	; 0x30
 8005624:	e006      	b.n	8005634 <_vfprintf_r+0xccc>
 8005626:	f1a8 0810 	sub.w	r8, r8, #16
 800562a:	1c71      	adds	r1, r6, #1
 800562c:	f1b8 0f10 	cmp.w	r8, #16
 8005630:	f340 8245 	ble.w	8005abe <_vfprintf_r+0x1156>
 8005634:	3210      	adds	r2, #16
 8005636:	2907      	cmp	r1, #7
 8005638:	602f      	str	r7, [r5, #0]
 800563a:	460e      	mov	r6, r1
 800563c:	f8c5 a004 	str.w	sl, [r5, #4]
 8005640:	f105 0508 	add.w	r5, r5, #8
 8005644:	e9cd 1224 	strd	r1, r2, [sp, #144]	; 0x90
 8005648:	dded      	ble.n	8005626 <_vfprintf_r+0xcbe>
 800564a:	aa23      	add	r2, sp, #140	; 0x8c
 800564c:	9906      	ldr	r1, [sp, #24]
 800564e:	4620      	mov	r0, r4
 8005650:	ad30      	add	r5, sp, #192	; 0xc0
 8005652:	f002 ff05 	bl	8008460 <__sprint_r>
 8005656:	2800      	cmp	r0, #0
 8005658:	f47f aafc 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 800565c:	e9dd 6224 	ldrd	r6, r2, [sp, #144]	; 0x90
 8005660:	e7e1      	b.n	8005626 <_vfprintf_r+0xcbe>
 8005662:	17f7      	asrs	r7, r6, #31
 8005664:	f7ff bb2f 	b.w	8004cc6 <_vfprintf_r+0x35e>
 8005668:	2700      	movs	r7, #0
 800566a:	e489      	b.n	8004f80 <_vfprintf_r+0x618>
 800566c:	f019 0f01 	tst.w	r9, #1
 8005670:	f47f aec2 	bne.w	80053f8 <_vfprintf_r+0xa90>
 8005674:	2201      	movs	r2, #1
 8005676:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8005678:	2e07      	cmp	r6, #7
 800567a:	f8ca 1000 	str.w	r1, [sl]
 800567e:	f8ca 2004 	str.w	r2, [sl, #4]
 8005682:	e9cd 6424 	strd	r6, r4, [sp, #144]	; 0x90
 8005686:	dc04      	bgt.n	8005692 <_vfprintf_r+0xd2a>
 8005688:	3302      	adds	r3, #2
 800568a:	f10a 0a10 	add.w	sl, sl, #16
 800568e:	930b      	str	r3, [sp, #44]	; 0x2c
 8005690:	e6ec      	b.n	800546c <_vfprintf_r+0xb04>
 8005692:	aa23      	add	r2, sp, #140	; 0x8c
 8005694:	9906      	ldr	r1, [sp, #24]
 8005696:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005698:	f002 fee2 	bl	8008460 <__sprint_r>
 800569c:	2800      	cmp	r0, #0
 800569e:	f47f aad9 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80056a2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80056a4:	f10d 0ac8 	add.w	sl, sp, #200	; 0xc8
 80056a8:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80056aa:	ad30      	add	r5, sp, #192	; 0xc0
 80056ac:	3301      	adds	r3, #1
 80056ae:	930b      	str	r3, [sp, #44]	; 0x2c
 80056b0:	e6dc      	b.n	800546c <_vfprintf_r+0xb04>
 80056b2:	aa23      	add	r2, sp, #140	; 0x8c
 80056b4:	9906      	ldr	r1, [sp, #24]
 80056b6:	9809      	ldr	r0, [sp, #36]	; 0x24
 80056b8:	f002 fed2 	bl	8008460 <__sprint_r>
 80056bc:	2800      	cmp	r0, #0
 80056be:	f47f aac9 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80056c2:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 80056c6:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 80056ca:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80056cc:	930b      	str	r3, [sp, #44]	; 0x2c
 80056ce:	f7ff bb6f 	b.w	8004db0 <_vfprintf_r+0x448>
 80056d2:	ab30      	add	r3, sp, #192	; 0xc0
 80056d4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80056d6:	1a9b      	subs	r3, r3, r2
 80056d8:	930c      	str	r3, [sp, #48]	; 0x30
 80056da:	f7ff bb13 	b.w	8004d04 <_vfprintf_r+0x39c>
 80056de:	aa23      	add	r2, sp, #140	; 0x8c
 80056e0:	9906      	ldr	r1, [sp, #24]
 80056e2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80056e4:	f002 febc 	bl	8008460 <__sprint_r>
 80056e8:	2800      	cmp	r0, #0
 80056ea:	f47f aab3 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80056ee:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80056f0:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 80056f4:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 80056f6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80056f8:	429a      	cmp	r2, r3
 80056fa:	db02      	blt.n	8005702 <_vfprintf_r+0xd9a>
 80056fc:	f019 0f01 	tst.w	r9, #1
 8005700:	d00f      	beq.n	8005722 <_vfprintf_r+0xdba>
 8005702:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005704:	9912      	ldr	r1, [sp, #72]	; 0x48
 8005706:	3301      	adds	r3, #1
 8005708:	9813      	ldr	r0, [sp, #76]	; 0x4c
 800570a:	440c      	add	r4, r1
 800570c:	f8ca 1004 	str.w	r1, [sl, #4]
 8005710:	2b07      	cmp	r3, #7
 8005712:	f8ca 0000 	str.w	r0, [sl]
 8005716:	9425      	str	r4, [sp, #148]	; 0x94
 8005718:	9324      	str	r3, [sp, #144]	; 0x90
 800571a:	f300 8281 	bgt.w	8005c20 <_vfprintf_r+0x12b8>
 800571e:	f10a 0a08 	add.w	sl, sl, #8
 8005722:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005724:	9810      	ldr	r0, [sp, #64]	; 0x40
 8005726:	1a9a      	subs	r2, r3, r2
 8005728:	1a1d      	subs	r5, r3, r0
 800572a:	4295      	cmp	r5, r2
 800572c:	bfa8      	it	ge
 800572e:	4615      	movge	r5, r2
 8005730:	2d00      	cmp	r5, #0
 8005732:	dd0f      	ble.n	8005754 <_vfprintf_r+0xdec>
 8005734:	9924      	ldr	r1, [sp, #144]	; 0x90
 8005736:	442c      	add	r4, r5
 8005738:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800573a:	3101      	adds	r1, #1
 800573c:	f8ca 5004 	str.w	r5, [sl, #4]
 8005740:	4403      	add	r3, r0
 8005742:	2907      	cmp	r1, #7
 8005744:	f8ca 3000 	str.w	r3, [sl]
 8005748:	e9cd 1424 	strd	r1, r4, [sp, #144]	; 0x90
 800574c:	f300 8196 	bgt.w	8005a7c <_vfprintf_r+0x1114>
 8005750:	f10a 0a08 	add.w	sl, sl, #8
 8005754:	2d00      	cmp	r5, #0
 8005756:	bfac      	ite	ge
 8005758:	1b55      	subge	r5, r2, r5
 800575a:	4615      	movlt	r5, r2
 800575c:	2d00      	cmp	r5, #0
 800575e:	f77f ab9d 	ble.w	8004e9c <_vfprintf_r+0x534>
 8005762:	2d10      	cmp	r5, #16
 8005764:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005766:	4f34      	ldr	r7, [pc, #208]	; (8005838 <_vfprintf_r+0xed0>)
 8005768:	dd3a      	ble.n	80057e0 <_vfprintf_r+0xe78>
 800576a:	4622      	mov	r2, r4
 800576c:	2610      	movs	r6, #16
 800576e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005772:	9c06      	ldr	r4, [sp, #24]
 8005774:	e002      	b.n	800577c <_vfprintf_r+0xe14>
 8005776:	3d10      	subs	r5, #16
 8005778:	2d10      	cmp	r5, #16
 800577a:	dd30      	ble.n	80057de <_vfprintf_r+0xe76>
 800577c:	3301      	adds	r3, #1
 800577e:	3210      	adds	r2, #16
 8005780:	f8ca 7000 	str.w	r7, [sl]
 8005784:	f10a 0a08 	add.w	sl, sl, #8
 8005788:	2b07      	cmp	r3, #7
 800578a:	f84a 6c04 	str.w	r6, [sl, #-4]
 800578e:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
 8005792:	ddf0      	ble.n	8005776 <_vfprintf_r+0xe0e>
 8005794:	aa23      	add	r2, sp, #140	; 0x8c
 8005796:	4621      	mov	r1, r4
 8005798:	4640      	mov	r0, r8
 800579a:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 800579e:	f002 fe5f 	bl	8008460 <__sprint_r>
 80057a2:	2800      	cmp	r0, #0
 80057a4:	f040 81c4 	bne.w	8005b30 <_vfprintf_r+0x11c8>
 80057a8:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
 80057ac:	e7e3      	b.n	8005776 <_vfprintf_r+0xe0e>
 80057ae:	aa23      	add	r2, sp, #140	; 0x8c
 80057b0:	9906      	ldr	r1, [sp, #24]
 80057b2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80057b4:	f002 fe54 	bl	8008460 <__sprint_r>
 80057b8:	2800      	cmp	r0, #0
 80057ba:	f47f aa4b 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80057be:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80057c0:	ad30      	add	r5, sp, #192	; 0xc0
 80057c2:	9e24      	ldr	r6, [sp, #144]	; 0x90
 80057c4:	e623      	b.n	800540e <_vfprintf_r+0xaa6>
 80057c6:	aa23      	add	r2, sp, #140	; 0x8c
 80057c8:	9906      	ldr	r1, [sp, #24]
 80057ca:	9809      	ldr	r0, [sp, #36]	; 0x24
 80057cc:	f002 fe48 	bl	8008460 <__sprint_r>
 80057d0:	2800      	cmp	r0, #0
 80057d2:	f47f aa3f 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 80057d6:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80057d8:	ad30      	add	r5, sp, #192	; 0xc0
 80057da:	9e24      	ldr	r6, [sp, #144]	; 0x90
 80057dc:	e623      	b.n	8005426 <_vfprintf_r+0xabe>
 80057de:	4614      	mov	r4, r2
 80057e0:	3301      	adds	r3, #1
 80057e2:	442c      	add	r4, r5
 80057e4:	f8ca 7000 	str.w	r7, [sl]
 80057e8:	2b07      	cmp	r3, #7
 80057ea:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 80057ee:	f8ca 5004 	str.w	r5, [sl, #4]
 80057f2:	f77f ab51 	ble.w	8004e98 <_vfprintf_r+0x530>
 80057f6:	e644      	b.n	8005482 <_vfprintf_r+0xb1a>
 80057f8:	46c1      	mov	r9, r8
 80057fa:	f7ff ba2d 	b.w	8004c58 <_vfprintf_r+0x2f0>
 80057fe:	f019 0f10 	tst.w	r9, #16
 8005802:	d107      	bne.n	8005814 <_vfprintf_r+0xeac>
 8005804:	f019 0f40 	tst.w	r9, #64	; 0x40
 8005808:	d004      	beq.n	8005814 <_vfprintf_r+0xeac>
 800580a:	f8bd 2020 	ldrh.w	r2, [sp, #32]
 800580e:	801a      	strh	r2, [r3, #0]
 8005810:	f7ff b8f6 	b.w	8004a00 <_vfprintf_r+0x98>
 8005814:	9a08      	ldr	r2, [sp, #32]
 8005816:	601a      	str	r2, [r3, #0]
 8005818:	f7ff b8f2 	b.w	8004a00 <_vfprintf_r+0x98>
 800581c:	aa23      	add	r2, sp, #140	; 0x8c
 800581e:	9906      	ldr	r1, [sp, #24]
 8005820:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005822:	f002 fe1d 	bl	8008460 <__sprint_r>
 8005826:	2800      	cmp	r0, #0
 8005828:	f47f aa14 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 800582c:	9c25      	ldr	r4, [sp, #148]	; 0x94
 800582e:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005832:	f7ff bae5 	b.w	8004e00 <_vfprintf_r+0x498>
 8005836:	bf00      	nop
 8005838:	08009280 	.word	0x08009280
 800583c:	9c14      	ldr	r4, [sp, #80]	; 0x50
 800583e:	4622      	mov	r2, r4
 8005840:	4620      	mov	r0, r4
 8005842:	9c15      	ldr	r4, [sp, #84]	; 0x54
 8005844:	4623      	mov	r3, r4
 8005846:	4621      	mov	r1, r4
 8005848:	f7fb fb4c 	bl	8000ee4 <__aeabi_dcmpun>
 800584c:	2800      	cmp	r0, #0
 800584e:	f040 82a5 	bne.w	8005d9c <_vfprintf_r+0x1434>
 8005852:	1c6b      	adds	r3, r5, #1
 8005854:	f028 0720 	bic.w	r7, r8, #32
 8005858:	f000 8101 	beq.w	8005a5e <_vfprintf_r+0x10f6>
 800585c:	b915      	cbnz	r5, 8005864 <_vfprintf_r+0xefc>
 800585e:	2f47      	cmp	r7, #71	; 0x47
 8005860:	bf08      	it	eq
 8005862:	2501      	moveq	r5, #1
 8005864:	f449 7380 	orr.w	r3, r9, #256	; 0x100
 8005868:	930b      	str	r3, [sp, #44]	; 0x2c
 800586a:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800586c:	2b00      	cmp	r3, #0
 800586e:	f2c0 81fc 	blt.w	8005c6a <_vfprintf_r+0x1302>
 8005872:	9307      	str	r3, [sp, #28]
 8005874:	2300      	movs	r3, #0
 8005876:	9e14      	ldr	r6, [sp, #80]	; 0x50
 8005878:	930e      	str	r3, [sp, #56]	; 0x38
 800587a:	2f46      	cmp	r7, #70	; 0x46
 800587c:	4632      	mov	r2, r6
 800587e:	f000 8178 	beq.w	8005b72 <_vfprintf_r+0x120a>
 8005882:	2f45      	cmp	r7, #69	; 0x45
 8005884:	f040 820a 	bne.w	8005c9c <_vfprintf_r+0x1334>
 8005888:	f10d 0e84 	add.w	lr, sp, #132	; 0x84
 800588c:	a81e      	add	r0, sp, #120	; 0x78
 800588e:	a91d      	add	r1, sp, #116	; 0x74
 8005890:	f04f 0c02 	mov.w	ip, #2
 8005894:	1c6c      	adds	r4, r5, #1
 8005896:	9b07      	ldr	r3, [sp, #28]
 8005898:	9102      	str	r1, [sp, #8]
 800589a:	9401      	str	r4, [sp, #4]
 800589c:	f8cd c000 	str.w	ip, [sp]
 80058a0:	e9cd 0e03 	strd	r0, lr, [sp, #12]
 80058a4:	9809      	ldr	r0, [sp, #36]	; 0x24
 80058a6:	f000 fc53 	bl	8006150 <_dtoa_r>
 80058aa:	900f      	str	r0, [sp, #60]	; 0x3c
 80058ac:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80058ae:	441c      	add	r4, r3
 80058b0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80058b2:	4630      	mov	r0, r6
 80058b4:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 80058b6:	9907      	ldr	r1, [sp, #28]
 80058b8:	f7fb fae2 	bl	8000e80 <__aeabi_dcmpeq>
 80058bc:	2800      	cmp	r0, #0
 80058be:	f000 81bc 	beq.w	8005c3a <_vfprintf_r+0x12d2>
 80058c2:	4623      	mov	r3, r4
 80058c4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80058c6:	2f47      	cmp	r7, #71	; 0x47
 80058c8:	eba3 0302 	sub.w	r3, r3, r2
 80058cc:	9311      	str	r3, [sp, #68]	; 0x44
 80058ce:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 80058d0:	9310      	str	r3, [sp, #64]	; 0x40
 80058d2:	f040 817c 	bne.w	8005bce <_vfprintf_r+0x1266>
 80058d6:	429d      	cmp	r5, r3
 80058d8:	db02      	blt.n	80058e0 <_vfprintf_r+0xf78>
 80058da:	3303      	adds	r3, #3
 80058dc:	f280 8190 	bge.w	8005c00 <_vfprintf_r+0x1298>
 80058e0:	f1a8 0802 	sub.w	r8, r8, #2
 80058e4:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80058e6:	f88d 807c 	strb.w	r8, [sp, #124]	; 0x7c
 80058ea:	3b01      	subs	r3, #1
 80058ec:	2b00      	cmp	r3, #0
 80058ee:	931d      	str	r3, [sp, #116]	; 0x74
 80058f0:	f2c0 824d 	blt.w	8005d8e <_vfprintf_r+0x1426>
 80058f4:	222b      	movs	r2, #43	; 0x2b
 80058f6:	f88d 207d 	strb.w	r2, [sp, #125]	; 0x7d
 80058fa:	2b09      	cmp	r3, #9
 80058fc:	f340 8230 	ble.w	8005d60 <_vfprintf_r+0x13f8>
 8005900:	f10d 068b 	add.w	r6, sp, #139	; 0x8b
 8005904:	4dbb      	ldr	r5, [pc, #748]	; (8005bf4 <_vfprintf_r+0x128c>)
 8005906:	4630      	mov	r0, r6
 8005908:	e000      	b.n	800590c <_vfprintf_r+0xfa4>
 800590a:	4620      	mov	r0, r4
 800590c:	fba5 2103 	umull	r2, r1, r5, r3
 8005910:	1e44      	subs	r4, r0, #1
 8005912:	08c9      	lsrs	r1, r1, #3
 8005914:	eb01 0281 	add.w	r2, r1, r1, lsl #2
 8005918:	2909      	cmp	r1, #9
 800591a:	eba3 0242 	sub.w	r2, r3, r2, lsl #1
 800591e:	460b      	mov	r3, r1
 8005920:	f102 0230 	add.w	r2, r2, #48	; 0x30
 8005924:	f800 2c01 	strb.w	r2, [r0, #-1]
 8005928:	dcef      	bgt.n	800590a <_vfprintf_r+0xfa2>
 800592a:	3330      	adds	r3, #48	; 0x30
 800592c:	3802      	subs	r0, #2
 800592e:	b2da      	uxtb	r2, r3
 8005930:	4286      	cmp	r6, r0
 8005932:	f804 2c01 	strb.w	r2, [r4, #-1]
 8005936:	f240 828e 	bls.w	8005e56 <_vfprintf_r+0x14ee>
 800593a:	4623      	mov	r3, r4
 800593c:	f10d 017e 	add.w	r1, sp, #126	; 0x7e
 8005940:	e001      	b.n	8005946 <_vfprintf_r+0xfde>
 8005942:	f813 2b01 	ldrb.w	r2, [r3], #1
 8005946:	429e      	cmp	r6, r3
 8005948:	f801 2b01 	strb.w	r2, [r1], #1
 800594c:	d1f9      	bne.n	8005942 <_vfprintf_r+0xfda>
 800594e:	ab23      	add	r3, sp, #140	; 0x8c
 8005950:	f10d 027e 	add.w	r2, sp, #126	; 0x7e
 8005954:	1b1b      	subs	r3, r3, r4
 8005956:	4413      	add	r3, r2
 8005958:	aa1f      	add	r2, sp, #124	; 0x7c
 800595a:	1a9b      	subs	r3, r3, r2
 800595c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800595e:	9319      	str	r3, [sp, #100]	; 0x64
 8005960:	2a01      	cmp	r2, #1
 8005962:	4413      	add	r3, r2
 8005964:	930c      	str	r3, [sp, #48]	; 0x30
 8005966:	f340 8226 	ble.w	8005db6 <_vfprintf_r+0x144e>
 800596a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800596c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800596e:	4413      	add	r3, r2
 8005970:	2200      	movs	r2, #0
 8005972:	930c      	str	r3, [sp, #48]	; 0x30
 8005974:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005978:	9210      	str	r2, [sp, #64]	; 0x40
 800597a:	9307      	str	r3, [sp, #28]
 800597c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800597e:	2d00      	cmp	r5, #0
 8005980:	f040 811c 	bne.w	8005bbc <_vfprintf_r+0x1254>
 8005984:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 8005988:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 800598c:	930b      	str	r3, [sp, #44]	; 0x2c
 800598e:	f7ff b9c0 	b.w	8004d12 <_vfprintf_r+0x3aa>
 8005992:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005994:	2101      	movs	r1, #1
 8005996:	3401      	adds	r4, #1
 8005998:	4897      	ldr	r0, [pc, #604]	; (8005bf8 <_vfprintf_r+0x1290>)
 800599a:	440b      	add	r3, r1
 800599c:	f8ca 1004 	str.w	r1, [sl, #4]
 80059a0:	9425      	str	r4, [sp, #148]	; 0x94
 80059a2:	2b07      	cmp	r3, #7
 80059a4:	f8ca 0000 	str.w	r0, [sl]
 80059a8:	9324      	str	r3, [sp, #144]	; 0x90
 80059aa:	dc5a      	bgt.n	8005a62 <_vfprintf_r+0x10fa>
 80059ac:	f10a 0a08 	add.w	sl, sl, #8
 80059b0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80059b2:	4313      	orrs	r3, r2
 80059b4:	f000 8184 	beq.w	8005cc0 <_vfprintf_r+0x1358>
 80059b8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80059ba:	9912      	ldr	r1, [sp, #72]	; 0x48
 80059bc:	3301      	adds	r3, #1
 80059be:	9813      	ldr	r0, [sp, #76]	; 0x4c
 80059c0:	440c      	add	r4, r1
 80059c2:	f8ca 1004 	str.w	r1, [sl, #4]
 80059c6:	2b07      	cmp	r3, #7
 80059c8:	f8ca 0000 	str.w	r0, [sl]
 80059cc:	9425      	str	r4, [sp, #148]	; 0x94
 80059ce:	9324      	str	r3, [sp, #144]	; 0x90
 80059d0:	f300 8156 	bgt.w	8005c80 <_vfprintf_r+0x1318>
 80059d4:	f10a 0a08 	add.w	sl, sl, #8
 80059d8:	2a00      	cmp	r2, #0
 80059da:	f2c0 818d 	blt.w	8005cf8 <_vfprintf_r+0x1390>
 80059de:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80059e0:	3301      	adds	r3, #1
 80059e2:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80059e4:	4414      	add	r4, r2
 80059e6:	2b07      	cmp	r3, #7
 80059e8:	f8ca 1000 	str.w	r1, [sl]
 80059ec:	f8ca 2004 	str.w	r2, [sl, #4]
 80059f0:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 80059f4:	f77f aa50 	ble.w	8004e98 <_vfprintf_r+0x530>
 80059f8:	e543      	b.n	8005482 <_vfprintf_r+0xb1a>
 80059fa:	aa23      	add	r2, sp, #140	; 0x8c
 80059fc:	9906      	ldr	r1, [sp, #24]
 80059fe:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005a00:	f002 fd2e 	bl	8008460 <__sprint_r>
 8005a04:	2800      	cmp	r0, #0
 8005a06:	f47f a925 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005a0a:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005a0e:	e452      	b.n	80052b6 <_vfprintf_r+0x94e>
 8005a10:	ac30      	add	r4, sp, #192	; 0xc0
 8005a12:	4630      	mov	r0, r6
 8005a14:	4639      	mov	r1, r7
 8005a16:	220a      	movs	r2, #10
 8005a18:	2300      	movs	r3, #0
 8005a1a:	f7fa fc0d 	bl	8000238 <__aeabi_uldivmod>
 8005a1e:	f102 0c30 	add.w	ip, r2, #48	; 0x30
 8005a22:	4630      	mov	r0, r6
 8005a24:	4639      	mov	r1, r7
 8005a26:	2300      	movs	r3, #0
 8005a28:	220a      	movs	r2, #10
 8005a2a:	f804 cd01 	strb.w	ip, [r4, #-1]!
 8005a2e:	f7fa fc03 	bl	8000238 <__aeabi_uldivmod>
 8005a32:	4606      	mov	r6, r0
 8005a34:	460f      	mov	r7, r1
 8005a36:	ea56 0307 	orrs.w	r3, r6, r7
 8005a3a:	d1ea      	bne.n	8005a12 <_vfprintf_r+0x10aa>
 8005a3c:	ab30      	add	r3, sp, #192	; 0xc0
 8005a3e:	940f      	str	r4, [sp, #60]	; 0x3c
 8005a40:	1b1b      	subs	r3, r3, r4
 8005a42:	930c      	str	r3, [sp, #48]	; 0x30
 8005a44:	f7ff b95e 	b.w	8004d04 <_vfprintf_r+0x39c>
 8005a48:	4240      	negs	r0, r0
 8005a4a:	930d      	str	r3, [sp, #52]	; 0x34
 8005a4c:	900a      	str	r0, [sp, #40]	; 0x28
 8005a4e:	f7ff bb19 	b.w	8005084 <_vfprintf_r+0x71c>
 8005a52:	232d      	movs	r3, #45	; 0x2d
 8005a54:	930b      	str	r3, [sp, #44]	; 0x2c
 8005a56:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8005a5a:	f7ff bb78 	b.w	800514e <_vfprintf_r+0x7e6>
 8005a5e:	2506      	movs	r5, #6
 8005a60:	e700      	b.n	8005864 <_vfprintf_r+0xefc>
 8005a62:	aa23      	add	r2, sp, #140	; 0x8c
 8005a64:	9906      	ldr	r1, [sp, #24]
 8005a66:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005a68:	f002 fcfa 	bl	8008460 <__sprint_r>
 8005a6c:	2800      	cmp	r0, #0
 8005a6e:	f47f a8f1 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005a72:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8005a74:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005a78:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005a7a:	e799      	b.n	80059b0 <_vfprintf_r+0x1048>
 8005a7c:	aa23      	add	r2, sp, #140	; 0x8c
 8005a7e:	9906      	ldr	r1, [sp, #24]
 8005a80:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005a82:	f002 fced 	bl	8008460 <__sprint_r>
 8005a86:	2800      	cmp	r0, #0
 8005a88:	f47f a8e4 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005a8c:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8005a8e:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005a92:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005a94:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005a96:	1a9a      	subs	r2, r3, r2
 8005a98:	e65c      	b.n	8005754 <_vfprintf_r+0xdec>
 8005a9a:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 8005a9e:	9507      	str	r5, [sp, #28]
 8005aa0:	950c      	str	r5, [sp, #48]	; 0x30
 8005aa2:	4605      	mov	r5, r0
 8005aa4:	940d      	str	r4, [sp, #52]	; 0x34
 8005aa6:	930b      	str	r3, [sp, #44]	; 0x2c
 8005aa8:	9010      	str	r0, [sp, #64]	; 0x40
 8005aaa:	f7ff b932 	b.w	8004d12 <_vfprintf_r+0x3aa>
 8005aae:	f89b 8001 	ldrb.w	r8, [fp, #1]
 8005ab2:	f049 0920 	orr.w	r9, r9, #32
 8005ab6:	f10b 0b01 	add.w	fp, fp, #1
 8005aba:	f7fe bfd4 	b.w	8004a66 <_vfprintf_r+0xfe>
 8005abe:	4614      	mov	r4, r2
 8005ac0:	f105 0308 	add.w	r3, r5, #8
 8005ac4:	910b      	str	r1, [sp, #44]	; 0x2c
 8005ac6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005ac8:	4444      	add	r4, r8
 8005aca:	2a07      	cmp	r2, #7
 8005acc:	9425      	str	r4, [sp, #148]	; 0x94
 8005ace:	9224      	str	r2, [sp, #144]	; 0x90
 8005ad0:	e9c5 7800 	strd	r7, r8, [r5]
 8005ad4:	f73f addd 	bgt.w	8005692 <_vfprintf_r+0xd2a>
 8005ad8:	3201      	adds	r2, #1
 8005ada:	f103 0a08 	add.w	sl, r3, #8
 8005ade:	461d      	mov	r5, r3
 8005ae0:	920b      	str	r2, [sp, #44]	; 0x2c
 8005ae2:	e4c3      	b.n	800546c <_vfprintf_r+0xb04>
 8005ae4:	aa23      	add	r2, sp, #140	; 0x8c
 8005ae6:	9906      	ldr	r1, [sp, #24]
 8005ae8:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005aea:	f002 fcb9 	bl	8008460 <__sprint_r>
 8005aee:	2800      	cmp	r0, #0
 8005af0:	f47f a8b0 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005af4:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005af6:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005afa:	f7ff bbf5 	b.w	80052e8 <_vfprintf_r+0x980>
 8005afe:	4614      	mov	r4, r2
 8005b00:	3301      	adds	r3, #1
 8005b02:	442c      	add	r4, r5
 8005b04:	f8ca 7000 	str.w	r7, [sl]
 8005b08:	2b07      	cmp	r3, #7
 8005b0a:	f8ca 5004 	str.w	r5, [sl, #4]
 8005b0e:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 8005b12:	f73f ade4 	bgt.w	80056de <_vfprintf_r+0xd76>
 8005b16:	f10a 0a08 	add.w	sl, sl, #8
 8005b1a:	e5eb      	b.n	80056f4 <_vfprintf_r+0xd8c>
 8005b1c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005b1e:	f8dd 9018 	ldr.w	r9, [sp, #24]
 8005b22:	2b00      	cmp	r3, #0
 8005b24:	f040 80d1 	bne.w	8005cca <_vfprintf_r+0x1362>
 8005b28:	2300      	movs	r3, #0
 8005b2a:	9324      	str	r3, [sp, #144]	; 0x90
 8005b2c:	f7ff b894 	b.w	8004c58 <_vfprintf_r+0x2f0>
 8005b30:	46a1      	mov	r9, r4
 8005b32:	f7ff b891 	b.w	8004c58 <_vfprintf_r+0x2f0>
 8005b36:	2d06      	cmp	r5, #6
 8005b38:	462b      	mov	r3, r5
 8005b3a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005b3c:	bf28      	it	cs
 8005b3e:	2306      	movcs	r3, #6
 8005b40:	940d      	str	r4, [sp, #52]	; 0x34
 8005b42:	4615      	mov	r5, r2
 8005b44:	9210      	str	r2, [sp, #64]	; 0x40
 8005b46:	9307      	str	r3, [sp, #28]
 8005b48:	e9cd 230b 	strd	r2, r3, [sp, #44]	; 0x2c
 8005b4c:	4b2b      	ldr	r3, [pc, #172]	; (8005bfc <_vfprintf_r+0x1294>)
 8005b4e:	930f      	str	r3, [sp, #60]	; 0x3c
 8005b50:	f7ff b8df 	b.w	8004d12 <_vfprintf_r+0x3aa>
 8005b54:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8005b56:	4635      	mov	r5, r6
 8005b58:	f002 fc1a 	bl	8008390 <strlen>
 8005b5c:	ea20 73e0 	bic.w	r3, r0, r0, asr #31
 8005b60:	9610      	str	r6, [sp, #64]	; 0x40
 8005b62:	9307      	str	r3, [sp, #28]
 8005b64:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 8005b68:	e9cd 040c 	strd	r0, r4, [sp, #48]	; 0x30
 8005b6c:	930b      	str	r3, [sp, #44]	; 0x2c
 8005b6e:	f7ff b8d0 	b.w	8004d12 <_vfprintf_r+0x3aa>
 8005b72:	a821      	add	r0, sp, #132	; 0x84
 8005b74:	a91e      	add	r1, sp, #120	; 0x78
 8005b76:	9b07      	ldr	r3, [sp, #28]
 8005b78:	9004      	str	r0, [sp, #16]
 8005b7a:	a81d      	add	r0, sp, #116	; 0x74
 8005b7c:	9103      	str	r1, [sp, #12]
 8005b7e:	2103      	movs	r1, #3
 8005b80:	9002      	str	r0, [sp, #8]
 8005b82:	9501      	str	r5, [sp, #4]
 8005b84:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005b86:	9100      	str	r1, [sp, #0]
 8005b88:	f000 fae2 	bl	8006150 <_dtoa_r>
 8005b8c:	7803      	ldrb	r3, [r0, #0]
 8005b8e:	900f      	str	r0, [sp, #60]	; 0x3c
 8005b90:	2b30      	cmp	r3, #48	; 0x30
 8005b92:	d10e      	bne.n	8005bb2 <_vfprintf_r+0x124a>
 8005b94:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005b96:	4630      	mov	r0, r6
 8005b98:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8005b9a:	f04f 0401 	mov.w	r4, #1
 8005b9e:	9907      	ldr	r1, [sp, #28]
 8005ba0:	f7fb f96e 	bl	8000e80 <__aeabi_dcmpeq>
 8005ba4:	b108      	cbz	r0, 8005baa <_vfprintf_r+0x1242>
 8005ba6:	f04f 0400 	mov.w	r4, #0
 8005baa:	f014 0fff 	tst.w	r4, #255	; 0xff
 8005bae:	f040 8129 	bne.w	8005e04 <_vfprintf_r+0x149c>
 8005bb2:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8005bb4:	442b      	add	r3, r5
 8005bb6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8005bb8:	18d4      	adds	r4, r2, r3
 8005bba:	e679      	b.n	80058b0 <_vfprintf_r+0xf48>
 8005bbc:	232d      	movs	r3, #45	; 0x2d
 8005bbe:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8005bc2:	2500      	movs	r5, #0
 8005bc4:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8005bc8:	930b      	str	r3, [sp, #44]	; 0x2c
 8005bca:	f7ff b8a4 	b.w	8004d16 <_vfprintf_r+0x3ae>
 8005bce:	f1b8 0f66 	cmp.w	r8, #102	; 0x66
 8005bd2:	f47f ae87 	bne.w	80058e4 <_vfprintf_r+0xf7c>
 8005bd6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005bd8:	2b00      	cmp	r3, #0
 8005bda:	f340 80fe 	ble.w	8005dda <_vfprintf_r+0x1472>
 8005bde:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005be0:	2d00      	cmp	r5, #0
 8005be2:	f040 80f2 	bne.w	8005dca <_vfprintf_r+0x1462>
 8005be6:	f019 0f01 	tst.w	r9, #1
 8005bea:	f040 80ee 	bne.w	8005dca <_vfprintf_r+0x1462>
 8005bee:	9307      	str	r3, [sp, #28]
 8005bf0:	930c      	str	r3, [sp, #48]	; 0x30
 8005bf2:	e6c3      	b.n	800597c <_vfprintf_r+0x1014>
 8005bf4:	cccccccd 	.word	0xcccccccd
 8005bf8:	0800926c 	.word	0x0800926c
 8005bfc:	08009264 	.word	0x08009264
 8005c00:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005c02:	4619      	mov	r1, r3
 8005c04:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005c06:	4299      	cmp	r1, r3
 8005c08:	dc69      	bgt.n	8005cde <_vfprintf_r+0x1376>
 8005c0a:	f019 0f01 	tst.w	r9, #1
 8005c0e:	f040 80af 	bne.w	8005d70 <_vfprintf_r+0x1408>
 8005c12:	ea23 72e3 	bic.w	r2, r3, r3, asr #31
 8005c16:	930c      	str	r3, [sp, #48]	; 0x30
 8005c18:	f04f 0867 	mov.w	r8, #103	; 0x67
 8005c1c:	9207      	str	r2, [sp, #28]
 8005c1e:	e6ad      	b.n	800597c <_vfprintf_r+0x1014>
 8005c20:	aa23      	add	r2, sp, #140	; 0x8c
 8005c22:	9906      	ldr	r1, [sp, #24]
 8005c24:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005c26:	f002 fc1b 	bl	8008460 <__sprint_r>
 8005c2a:	2800      	cmp	r0, #0
 8005c2c:	f47f a812 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005c30:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8005c32:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005c36:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005c38:	e573      	b.n	8005722 <_vfprintf_r+0xdba>
 8005c3a:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8005c3c:	42a3      	cmp	r3, r4
 8005c3e:	f4bf ae41 	bcs.w	80058c4 <_vfprintf_r+0xf5c>
 8005c42:	2130      	movs	r1, #48	; 0x30
 8005c44:	1c5a      	adds	r2, r3, #1
 8005c46:	9221      	str	r2, [sp, #132]	; 0x84
 8005c48:	7019      	strb	r1, [r3, #0]
 8005c4a:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8005c4c:	429c      	cmp	r4, r3
 8005c4e:	d8f9      	bhi.n	8005c44 <_vfprintf_r+0x12dc>
 8005c50:	e638      	b.n	80058c4 <_vfprintf_r+0xf5c>
 8005c52:	aa23      	add	r2, sp, #140	; 0x8c
 8005c54:	9906      	ldr	r1, [sp, #24]
 8005c56:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005c58:	f002 fc02 	bl	8008460 <__sprint_r>
 8005c5c:	2800      	cmp	r0, #0
 8005c5e:	f47e aff9 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005c62:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005c64:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005c68:	e47d      	b.n	8005566 <_vfprintf_r+0xbfe>
 8005c6a:	f103 4300 	add.w	r3, r3, #2147483648	; 0x80000000
 8005c6e:	9e14      	ldr	r6, [sp, #80]	; 0x50
 8005c70:	9307      	str	r3, [sp, #28]
 8005c72:	232d      	movs	r3, #45	; 0x2d
 8005c74:	930e      	str	r3, [sp, #56]	; 0x38
 8005c76:	e600      	b.n	800587a <_vfprintf_r+0xf12>
 8005c78:	4683      	mov	fp, r0
 8005c7a:	2500      	movs	r5, #0
 8005c7c:	f7fe bef5 	b.w	8004a6a <_vfprintf_r+0x102>
 8005c80:	aa23      	add	r2, sp, #140	; 0x8c
 8005c82:	9906      	ldr	r1, [sp, #24]
 8005c84:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005c86:	f002 fbeb 	bl	8008460 <__sprint_r>
 8005c8a:	2800      	cmp	r0, #0
 8005c8c:	f47e afe2 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005c90:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8005c92:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005c96:	e9dd 3424 	ldrd	r3, r4, [sp, #144]	; 0x90
 8005c9a:	e69d      	b.n	80059d8 <_vfprintf_r+0x1070>
 8005c9c:	a821      	add	r0, sp, #132	; 0x84
 8005c9e:	a91e      	add	r1, sp, #120	; 0x78
 8005ca0:	9501      	str	r5, [sp, #4]
 8005ca2:	9004      	str	r0, [sp, #16]
 8005ca4:	a81d      	add	r0, sp, #116	; 0x74
 8005ca6:	9103      	str	r1, [sp, #12]
 8005ca8:	2102      	movs	r1, #2
 8005caa:	9002      	str	r0, [sp, #8]
 8005cac:	9b07      	ldr	r3, [sp, #28]
 8005cae:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005cb0:	9100      	str	r1, [sp, #0]
 8005cb2:	f000 fa4d 	bl	8006150 <_dtoa_r>
 8005cb6:	2f47      	cmp	r7, #71	; 0x47
 8005cb8:	900f      	str	r0, [sp, #60]	; 0x3c
 8005cba:	d063      	beq.n	8005d84 <_vfprintf_r+0x141c>
 8005cbc:	462c      	mov	r4, r5
 8005cbe:	e5f5      	b.n	80058ac <_vfprintf_r+0xf44>
 8005cc0:	f019 0f01 	tst.w	r9, #1
 8005cc4:	f43f a8ea 	beq.w	8004e9c <_vfprintf_r+0x534>
 8005cc8:	e676      	b.n	80059b8 <_vfprintf_r+0x1050>
 8005cca:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005ccc:	aa23      	add	r2, sp, #140	; 0x8c
 8005cce:	4649      	mov	r1, r9
 8005cd0:	f002 fbc6 	bl	8008460 <__sprint_r>
 8005cd4:	2800      	cmp	r0, #0
 8005cd6:	f43f af27 	beq.w	8005b28 <_vfprintf_r+0x11c0>
 8005cda:	f7fe bfbd 	b.w	8004c58 <_vfprintf_r+0x2f0>
 8005cde:	e9dd 3211 	ldrd	r3, r2, [sp, #68]	; 0x44
 8005ce2:	4413      	add	r3, r2
 8005ce4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005ce6:	2a00      	cmp	r2, #0
 8005ce8:	930c      	str	r3, [sp, #48]	; 0x30
 8005cea:	dd7f      	ble.n	8005dec <_vfprintf_r+0x1484>
 8005cec:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005cf0:	f04f 0867 	mov.w	r8, #103	; 0x67
 8005cf4:	9307      	str	r3, [sp, #28]
 8005cf6:	e641      	b.n	800597c <_vfprintf_r+0x1014>
 8005cf8:	4255      	negs	r5, r2
 8005cfa:	3210      	adds	r2, #16
 8005cfc:	4f67      	ldr	r7, [pc, #412]	; (8005e9c <_vfprintf_r+0x1534>)
 8005cfe:	da22      	bge.n	8005d46 <_vfprintf_r+0x13de>
 8005d00:	4622      	mov	r2, r4
 8005d02:	2610      	movs	r6, #16
 8005d04:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005d08:	9c06      	ldr	r4, [sp, #24]
 8005d0a:	e002      	b.n	8005d12 <_vfprintf_r+0x13aa>
 8005d0c:	3d10      	subs	r5, #16
 8005d0e:	2d10      	cmp	r5, #16
 8005d10:	dd18      	ble.n	8005d44 <_vfprintf_r+0x13dc>
 8005d12:	3301      	adds	r3, #1
 8005d14:	3210      	adds	r2, #16
 8005d16:	f8ca 7000 	str.w	r7, [sl]
 8005d1a:	f10a 0a08 	add.w	sl, sl, #8
 8005d1e:	2b07      	cmp	r3, #7
 8005d20:	f84a 6c04 	str.w	r6, [sl, #-4]
 8005d24:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
 8005d28:	ddf0      	ble.n	8005d0c <_vfprintf_r+0x13a4>
 8005d2a:	aa23      	add	r2, sp, #140	; 0x8c
 8005d2c:	4621      	mov	r1, r4
 8005d2e:	4640      	mov	r0, r8
 8005d30:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005d34:	f002 fb94 	bl	8008460 <__sprint_r>
 8005d38:	2800      	cmp	r0, #0
 8005d3a:	f47f aef9 	bne.w	8005b30 <_vfprintf_r+0x11c8>
 8005d3e:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
 8005d42:	e7e3      	b.n	8005d0c <_vfprintf_r+0x13a4>
 8005d44:	4614      	mov	r4, r2
 8005d46:	3301      	adds	r3, #1
 8005d48:	442c      	add	r4, r5
 8005d4a:	f8ca 7000 	str.w	r7, [sl]
 8005d4e:	2b07      	cmp	r3, #7
 8005d50:	f8ca 5004 	str.w	r5, [sl, #4]
 8005d54:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 8005d58:	dc70      	bgt.n	8005e3c <_vfprintf_r+0x14d4>
 8005d5a:	f10a 0a08 	add.w	sl, sl, #8
 8005d5e:	e63e      	b.n	80059de <_vfprintf_r+0x1076>
 8005d60:	3330      	adds	r3, #48	; 0x30
 8005d62:	2230      	movs	r2, #48	; 0x30
 8005d64:	f88d 307f 	strb.w	r3, [sp, #127]	; 0x7f
 8005d68:	ab20      	add	r3, sp, #128	; 0x80
 8005d6a:	f88d 207e 	strb.w	r2, [sp, #126]	; 0x7e
 8005d6e:	e5f3      	b.n	8005958 <_vfprintf_r+0xff0>
 8005d70:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005d72:	f04f 0867 	mov.w	r8, #103	; 0x67
 8005d76:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005d78:	4413      	add	r3, r2
 8005d7a:	930c      	str	r3, [sp, #48]	; 0x30
 8005d7c:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005d80:	9307      	str	r3, [sp, #28]
 8005d82:	e5fb      	b.n	800597c <_vfprintf_r+0x1014>
 8005d84:	f019 0f01 	tst.w	r9, #1
 8005d88:	d168      	bne.n	8005e5c <_vfprintf_r+0x14f4>
 8005d8a:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8005d8c:	e59a      	b.n	80058c4 <_vfprintf_r+0xf5c>
 8005d8e:	222d      	movs	r2, #45	; 0x2d
 8005d90:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005d92:	f88d 207d 	strb.w	r2, [sp, #125]	; 0x7d
 8005d96:	f1c3 0301 	rsb	r3, r3, #1
 8005d9a:	e5ae      	b.n	80058fa <_vfprintf_r+0xf92>
 8005d9c:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005d9e:	2b00      	cmp	r3, #0
 8005da0:	db34      	blt.n	8005e0c <_vfprintf_r+0x14a4>
 8005da2:	f89d 306f 	ldrb.w	r3, [sp, #111]	; 0x6f
 8005da6:	930b      	str	r3, [sp, #44]	; 0x2c
 8005da8:	2303      	movs	r3, #3
 8005daa:	4a3d      	ldr	r2, [pc, #244]	; (8005ea0 <_vfprintf_r+0x1538>)
 8005dac:	4619      	mov	r1, r3
 8005dae:	9307      	str	r3, [sp, #28]
 8005db0:	4b3c      	ldr	r3, [pc, #240]	; (8005ea4 <_vfprintf_r+0x153c>)
 8005db2:	f7ff b9d1 	b.w	8005158 <_vfprintf_r+0x7f0>
 8005db6:	f019 0301 	ands.w	r3, r9, #1
 8005dba:	9310      	str	r3, [sp, #64]	; 0x40
 8005dbc:	f47f add5 	bne.w	800596a <_vfprintf_r+0x1002>
 8005dc0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005dc2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005dc6:	9307      	str	r3, [sp, #28]
 8005dc8:	e5d8      	b.n	800597c <_vfprintf_r+0x1014>
 8005dca:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005dcc:	189f      	adds	r7, r3, r2
 8005dce:	197b      	adds	r3, r7, r5
 8005dd0:	930c      	str	r3, [sp, #48]	; 0x30
 8005dd2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005dd6:	9307      	str	r3, [sp, #28]
 8005dd8:	e5d0      	b.n	800597c <_vfprintf_r+0x1014>
 8005dda:	b9e5      	cbnz	r5, 8005e16 <_vfprintf_r+0x14ae>
 8005ddc:	f019 0f01 	tst.w	r9, #1
 8005de0:	d119      	bne.n	8005e16 <_vfprintf_r+0x14ae>
 8005de2:	2301      	movs	r3, #1
 8005de4:	e703      	b.n	8005bee <_vfprintf_r+0x1286>
 8005de6:	4653      	mov	r3, sl
 8005de8:	4f2c      	ldr	r7, [pc, #176]	; (8005e9c <_vfprintf_r+0x1534>)
 8005dea:	e66c      	b.n	8005ac6 <_vfprintf_r+0x115e>
 8005dec:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005dee:	f04f 0867 	mov.w	r8, #103	; 0x67
 8005df2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005df4:	f1c3 0301 	rsb	r3, r3, #1
 8005df8:	441a      	add	r2, r3
 8005dfa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8005dfe:	920c      	str	r2, [sp, #48]	; 0x30
 8005e00:	9307      	str	r3, [sp, #28]
 8005e02:	e5bb      	b.n	800597c <_vfprintf_r+0x1014>
 8005e04:	f1c5 0301 	rsb	r3, r5, #1
 8005e08:	931d      	str	r3, [sp, #116]	; 0x74
 8005e0a:	e6d3      	b.n	8005bb4 <_vfprintf_r+0x124c>
 8005e0c:	232d      	movs	r3, #45	; 0x2d
 8005e0e:	930b      	str	r3, [sp, #44]	; 0x2c
 8005e10:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8005e14:	e7c8      	b.n	8005da8 <_vfprintf_r+0x1440>
 8005e16:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005e18:	1c5f      	adds	r7, r3, #1
 8005e1a:	197b      	adds	r3, r7, r5
 8005e1c:	930c      	str	r3, [sp, #48]	; 0x30
 8005e1e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005e22:	9307      	str	r3, [sp, #28]
 8005e24:	e5aa      	b.n	800597c <_vfprintf_r+0x1014>
 8005e26:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005e28:	f89b 8001 	ldrb.w	r8, [fp, #1]
 8005e2c:	4683      	mov	fp, r0
 8005e2e:	681d      	ldr	r5, [r3, #0]
 8005e30:	3304      	adds	r3, #4
 8005e32:	ea45 75e5 	orr.w	r5, r5, r5, asr #31
 8005e36:	930d      	str	r3, [sp, #52]	; 0x34
 8005e38:	f7fe be15 	b.w	8004a66 <_vfprintf_r+0xfe>
 8005e3c:	aa23      	add	r2, sp, #140	; 0x8c
 8005e3e:	9906      	ldr	r1, [sp, #24]
 8005e40:	9809      	ldr	r0, [sp, #36]	; 0x24
 8005e42:	f002 fb0d 	bl	8008460 <__sprint_r>
 8005e46:	2800      	cmp	r0, #0
 8005e48:	f47e af04 	bne.w	8004c54 <_vfprintf_r+0x2ec>
 8005e4c:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8005e4e:	f10d 0ac0 	add.w	sl, sp, #192	; 0xc0
 8005e52:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005e54:	e5c3      	b.n	80059de <_vfprintf_r+0x1076>
 8005e56:	f10d 037e 	add.w	r3, sp, #126	; 0x7e
 8005e5a:	e57d      	b.n	8005958 <_vfprintf_r+0xff0>
 8005e5c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005e5e:	195c      	adds	r4, r3, r5
 8005e60:	e526      	b.n	80058b0 <_vfprintf_r+0xf48>
 8005e62:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e66:	f7ff b8dd 	b.w	8005024 <_vfprintf_r+0x6bc>
 8005e6a:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e6e:	f7ff b941 	b.w	80050f4 <_vfprintf_r+0x78c>
 8005e72:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e76:	f7ff b925 	b.w	80050c4 <_vfprintf_r+0x75c>
 8005e7a:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e7e:	f7ff b9ed 	b.w	800525c <_vfprintf_r+0x8f4>
 8005e82:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e86:	f7fe bf11 	b.w	8004cac <_vfprintf_r+0x344>
 8005e8a:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e8e:	f7ff b991 	b.w	80051b4 <_vfprintf_r+0x84c>
 8005e92:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 8005e96:	f7ff b864 	b.w	8004f62 <_vfprintf_r+0x5fa>
 8005e9a:	bf00      	nop
 8005e9c:	08009280 	.word	0x08009280
 8005ea0:	08009238 	.word	0x08009238
 8005ea4:	08009234 	.word	0x08009234

08005ea8 <__sbprintf>:
 8005ea8:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8005eac:	460c      	mov	r4, r1
 8005eae:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 8005eb2:	4699      	mov	r9, r3
 8005eb4:	2500      	movs	r5, #0
 8005eb6:	89e3      	ldrh	r3, [r4, #14]
 8005eb8:	4607      	mov	r7, r0
 8005eba:	8989      	ldrh	r1, [r1, #12]
 8005ebc:	ae1a      	add	r6, sp, #104	; 0x68
 8005ebe:	f8ad 300e 	strh.w	r3, [sp, #14]
 8005ec2:	4690      	mov	r8, r2
 8005ec4:	69e3      	ldr	r3, [r4, #28]
 8005ec6:	f021 0102 	bic.w	r1, r1, #2
 8005eca:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8005ecc:	a816      	add	r0, sp, #88	; 0x58
 8005ece:	9506      	str	r5, [sp, #24]
 8005ed0:	f44f 6580 	mov.w	r5, #1024	; 0x400
 8005ed4:	9307      	str	r3, [sp, #28]
 8005ed6:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8005ed8:	f8ad 100c 	strh.w	r1, [sp, #12]
 8005edc:	9219      	str	r2, [sp, #100]	; 0x64
 8005ede:	9502      	str	r5, [sp, #8]
 8005ee0:	9309      	str	r3, [sp, #36]	; 0x24
 8005ee2:	9505      	str	r5, [sp, #20]
 8005ee4:	9600      	str	r6, [sp, #0]
 8005ee6:	9604      	str	r6, [sp, #16]
 8005ee8:	f001 fb66 	bl	80075b8 <__retarget_lock_init_recursive>
 8005eec:	464b      	mov	r3, r9
 8005eee:	4642      	mov	r2, r8
 8005ef0:	4669      	mov	r1, sp
 8005ef2:	4638      	mov	r0, r7
 8005ef4:	f7fe fd38 	bl	8004968 <_vfprintf_r>
 8005ef8:	1e05      	subs	r5, r0, #0
 8005efa:	db07      	blt.n	8005f0c <__sbprintf+0x64>
 8005efc:	4638      	mov	r0, r7
 8005efe:	4669      	mov	r1, sp
 8005f00:	f001 f930 	bl	8007164 <_fflush_r>
 8005f04:	2800      	cmp	r0, #0
 8005f06:	bf18      	it	ne
 8005f08:	f04f 35ff 	movne.w	r5, #4294967295
 8005f0c:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8005f10:	065b      	lsls	r3, r3, #25
 8005f12:	d503      	bpl.n	8005f1c <__sbprintf+0x74>
 8005f14:	89a3      	ldrh	r3, [r4, #12]
 8005f16:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005f1a:	81a3      	strh	r3, [r4, #12]
 8005f1c:	9816      	ldr	r0, [sp, #88]	; 0x58
 8005f1e:	f001 fb4d 	bl	80075bc <__retarget_lock_close_recursive>
 8005f22:	4628      	mov	r0, r5
 8005f24:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 8005f28:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}

08005f2c <__swsetup_r>:
 8005f2c:	b538      	push	{r3, r4, r5, lr}
 8005f2e:	4b31      	ldr	r3, [pc, #196]	; (8005ff4 <__swsetup_r+0xc8>)
 8005f30:	4605      	mov	r5, r0
 8005f32:	460c      	mov	r4, r1
 8005f34:	6818      	ldr	r0, [r3, #0]
 8005f36:	b110      	cbz	r0, 8005f3e <__swsetup_r+0x12>
 8005f38:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005f3a:	2b00      	cmp	r3, #0
 8005f3c:	d03a      	beq.n	8005fb4 <__swsetup_r+0x88>
 8005f3e:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005f42:	b293      	uxth	r3, r2
 8005f44:	0718      	lsls	r0, r3, #28
 8005f46:	d50c      	bpl.n	8005f62 <__swsetup_r+0x36>
 8005f48:	6920      	ldr	r0, [r4, #16]
 8005f4a:	b1a8      	cbz	r0, 8005f78 <__swsetup_r+0x4c>
 8005f4c:	f013 0201 	ands.w	r2, r3, #1
 8005f50:	d020      	beq.n	8005f94 <__swsetup_r+0x68>
 8005f52:	6963      	ldr	r3, [r4, #20]
 8005f54:	2200      	movs	r2, #0
 8005f56:	425b      	negs	r3, r3
 8005f58:	60a2      	str	r2, [r4, #8]
 8005f5a:	61a3      	str	r3, [r4, #24]
 8005f5c:	b300      	cbz	r0, 8005fa0 <__swsetup_r+0x74>
 8005f5e:	2000      	movs	r0, #0
 8005f60:	bd38      	pop	{r3, r4, r5, pc}
 8005f62:	06d9      	lsls	r1, r3, #27
 8005f64:	d53d      	bpl.n	8005fe2 <__swsetup_r+0xb6>
 8005f66:	0758      	lsls	r0, r3, #29
 8005f68:	d427      	bmi.n	8005fba <__swsetup_r+0x8e>
 8005f6a:	6920      	ldr	r0, [r4, #16]
 8005f6c:	f042 0208 	orr.w	r2, r2, #8
 8005f70:	b293      	uxth	r3, r2
 8005f72:	81a2      	strh	r2, [r4, #12]
 8005f74:	2800      	cmp	r0, #0
 8005f76:	d1e9      	bne.n	8005f4c <__swsetup_r+0x20>
 8005f78:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8005f7c:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8005f80:	d0e4      	beq.n	8005f4c <__swsetup_r+0x20>
 8005f82:	4628      	mov	r0, r5
 8005f84:	4621      	mov	r1, r4
 8005f86:	f001 fb4d 	bl	8007624 <__smakebuf_r>
 8005f8a:	89a3      	ldrh	r3, [r4, #12]
 8005f8c:	6920      	ldr	r0, [r4, #16]
 8005f8e:	f013 0201 	ands.w	r2, r3, #1
 8005f92:	d1de      	bne.n	8005f52 <__swsetup_r+0x26>
 8005f94:	0799      	lsls	r1, r3, #30
 8005f96:	bf58      	it	pl
 8005f98:	6962      	ldrpl	r2, [r4, #20]
 8005f9a:	60a2      	str	r2, [r4, #8]
 8005f9c:	2800      	cmp	r0, #0
 8005f9e:	d1de      	bne.n	8005f5e <__swsetup_r+0x32>
 8005fa0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005fa4:	061a      	lsls	r2, r3, #24
 8005fa6:	d5db      	bpl.n	8005f60 <__swsetup_r+0x34>
 8005fa8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005fac:	f04f 30ff 	mov.w	r0, #4294967295
 8005fb0:	81a3      	strh	r3, [r4, #12]
 8005fb2:	bd38      	pop	{r3, r4, r5, pc}
 8005fb4:	f001 f932 	bl	800721c <__sinit>
 8005fb8:	e7c1      	b.n	8005f3e <__swsetup_r+0x12>
 8005fba:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005fbc:	b151      	cbz	r1, 8005fd4 <__swsetup_r+0xa8>
 8005fbe:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005fc2:	4299      	cmp	r1, r3
 8005fc4:	d004      	beq.n	8005fd0 <__swsetup_r+0xa4>
 8005fc6:	4628      	mov	r0, r5
 8005fc8:	f001 f9ce 	bl	8007368 <_free_r>
 8005fcc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005fd0:	2300      	movs	r3, #0
 8005fd2:	6323      	str	r3, [r4, #48]	; 0x30
 8005fd4:	2300      	movs	r3, #0
 8005fd6:	6920      	ldr	r0, [r4, #16]
 8005fd8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8005fdc:	e9c4 0300 	strd	r0, r3, [r4]
 8005fe0:	e7c4      	b.n	8005f6c <__swsetup_r+0x40>
 8005fe2:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005fe6:	2309      	movs	r3, #9
 8005fe8:	f04f 30ff 	mov.w	r0, #4294967295
 8005fec:	602b      	str	r3, [r5, #0]
 8005fee:	81a2      	strh	r2, [r4, #12]
 8005ff0:	bd38      	pop	{r3, r4, r5, pc}
 8005ff2:	bf00      	nop
 8005ff4:	2000002c 	.word	0x2000002c

08005ff8 <register_fini>:
 8005ff8:	4b02      	ldr	r3, [pc, #8]	; (8006004 <register_fini+0xc>)
 8005ffa:	b113      	cbz	r3, 8006002 <register_fini+0xa>
 8005ffc:	4802      	ldr	r0, [pc, #8]	; (8006008 <register_fini+0x10>)
 8005ffe:	f000 b805 	b.w	800600c <atexit>
 8006002:	4770      	bx	lr
 8006004:	00000000 	.word	0x00000000
 8006008:	08007295 	.word	0x08007295

0800600c <atexit>:
 800600c:	2300      	movs	r3, #0
 800600e:	4601      	mov	r1, r0
 8006010:	461a      	mov	r2, r3
 8006012:	4618      	mov	r0, r3
 8006014:	f002 ba44 	b.w	80084a0 <__register_exitproc>

08006018 <quorem>:
 8006018:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800601c:	6903      	ldr	r3, [r0, #16]
 800601e:	b085      	sub	sp, #20
 8006020:	690e      	ldr	r6, [r1, #16]
 8006022:	9101      	str	r1, [sp, #4]
 8006024:	42b3      	cmp	r3, r6
 8006026:	f2c0 808f 	blt.w	8006148 <quorem+0x130>
 800602a:	3e01      	subs	r6, #1
 800602c:	f101 0814 	add.w	r8, r1, #20
 8006030:	f100 0914 	add.w	r9, r0, #20
 8006034:	f858 3026 	ldr.w	r3, [r8, r6, lsl #2]
 8006038:	00b2      	lsls	r2, r6, #2
 800603a:	f859 7026 	ldr.w	r7, [r9, r6, lsl #2]
 800603e:	3301      	adds	r3, #1
 8006040:	9202      	str	r2, [sp, #8]
 8006042:	eb08 0a02 	add.w	sl, r8, r2
 8006046:	444a      	add	r2, r9
 8006048:	fbb7 f7f3 	udiv	r7, r7, r3
 800604c:	9203      	str	r2, [sp, #12]
 800604e:	2f00      	cmp	r7, #0
 8006050:	d03e      	beq.n	80060d0 <quorem+0xb8>
 8006052:	2400      	movs	r4, #0
 8006054:	46c6      	mov	lr, r8
 8006056:	46cc      	mov	ip, r9
 8006058:	46a3      	mov	fp, r4
 800605a:	f85e 3b04 	ldr.w	r3, [lr], #4
 800605e:	f8dc 1000 	ldr.w	r1, [ip]
 8006062:	b29a      	uxth	r2, r3
 8006064:	45f2      	cmp	sl, lr
 8006066:	ea4f 4313 	mov.w	r3, r3, lsr #16
 800606a:	fb07 4202 	mla	r2, r7, r2, r4
 800606e:	b28d      	uxth	r5, r1
 8006070:	ea4f 4412 	mov.w	r4, r2, lsr #16
 8006074:	b292      	uxth	r2, r2
 8006076:	fb07 4403 	mla	r4, r7, r3, r4
 800607a:	ebab 0302 	sub.w	r3, fp, r2
 800607e:	fa1f fb84 	uxth.w	fp, r4
 8006082:	442b      	add	r3, r5
 8006084:	ea4f 4414 	mov.w	r4, r4, lsr #16
 8006088:	ebcb 4b11 	rsb	fp, fp, r1, lsr #16
 800608c:	b29a      	uxth	r2, r3
 800608e:	eb0b 4b23 	add.w	fp, fp, r3, asr #16
 8006092:	ea42 420b 	orr.w	r2, r2, fp, lsl #16
 8006096:	ea4f 4b2b 	mov.w	fp, fp, asr #16
 800609a:	f84c 2b04 	str.w	r2, [ip], #4
 800609e:	d2dc      	bcs.n	800605a <quorem+0x42>
 80060a0:	9b02      	ldr	r3, [sp, #8]
 80060a2:	f859 3003 	ldr.w	r3, [r9, r3]
 80060a6:	b99b      	cbnz	r3, 80060d0 <quorem+0xb8>
 80060a8:	9a03      	ldr	r2, [sp, #12]
 80060aa:	1f13      	subs	r3, r2, #4
 80060ac:	4599      	cmp	r9, r3
 80060ae:	d20e      	bcs.n	80060ce <quorem+0xb6>
 80060b0:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80060b4:	b95b      	cbnz	r3, 80060ce <quorem+0xb6>
 80060b6:	f1a2 0308 	sub.w	r3, r2, #8
 80060ba:	e001      	b.n	80060c0 <quorem+0xa8>
 80060bc:	6812      	ldr	r2, [r2, #0]
 80060be:	b932      	cbnz	r2, 80060ce <quorem+0xb6>
 80060c0:	4599      	cmp	r9, r3
 80060c2:	461a      	mov	r2, r3
 80060c4:	f106 36ff 	add.w	r6, r6, #4294967295
 80060c8:	f1a3 0304 	sub.w	r3, r3, #4
 80060cc:	d3f6      	bcc.n	80060bc <quorem+0xa4>
 80060ce:	6106      	str	r6, [r0, #16]
 80060d0:	9901      	ldr	r1, [sp, #4]
 80060d2:	4604      	mov	r4, r0
 80060d4:	f002 f810 	bl	80080f8 <__mcmp>
 80060d8:	2800      	cmp	r0, #0
 80060da:	db31      	blt.n	8006140 <quorem+0x128>
 80060dc:	2000      	movs	r0, #0
 80060de:	3701      	adds	r7, #1
 80060e0:	464d      	mov	r5, r9
 80060e2:	4684      	mov	ip, r0
 80060e4:	f858 3b04 	ldr.w	r3, [r8], #4
 80060e8:	682a      	ldr	r2, [r5, #0]
 80060ea:	b298      	uxth	r0, r3
 80060ec:	45c2      	cmp	sl, r8
 80060ee:	b291      	uxth	r1, r2
 80060f0:	ebac 0000 	sub.w	r0, ip, r0
 80060f4:	ea4f 4313 	mov.w	r3, r3, lsr #16
 80060f8:	4408      	add	r0, r1
 80060fa:	ebc3 4312 	rsb	r3, r3, r2, lsr #16
 80060fe:	eb03 4220 	add.w	r2, r3, r0, asr #16
 8006102:	b283      	uxth	r3, r0
 8006104:	ea4f 4c22 	mov.w	ip, r2, asr #16
 8006108:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 800610c:	f845 3b04 	str.w	r3, [r5], #4
 8006110:	d2e8      	bcs.n	80060e4 <quorem+0xcc>
 8006112:	f859 2026 	ldr.w	r2, [r9, r6, lsl #2]
 8006116:	eb09 0386 	add.w	r3, r9, r6, lsl #2
 800611a:	b98a      	cbnz	r2, 8006140 <quorem+0x128>
 800611c:	1f1a      	subs	r2, r3, #4
 800611e:	4591      	cmp	r9, r2
 8006120:	d20d      	bcs.n	800613e <quorem+0x126>
 8006122:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8006126:	b952      	cbnz	r2, 800613e <quorem+0x126>
 8006128:	3b08      	subs	r3, #8
 800612a:	e001      	b.n	8006130 <quorem+0x118>
 800612c:	6812      	ldr	r2, [r2, #0]
 800612e:	b932      	cbnz	r2, 800613e <quorem+0x126>
 8006130:	4599      	cmp	r9, r3
 8006132:	461a      	mov	r2, r3
 8006134:	f106 36ff 	add.w	r6, r6, #4294967295
 8006138:	f1a3 0304 	sub.w	r3, r3, #4
 800613c:	d3f6      	bcc.n	800612c <quorem+0x114>
 800613e:	6126      	str	r6, [r4, #16]
 8006140:	4638      	mov	r0, r7
 8006142:	b005      	add	sp, #20
 8006144:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006148:	2000      	movs	r0, #0
 800614a:	b005      	add	sp, #20
 800614c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006150 <_dtoa_r>:
 8006150:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006154:	461f      	mov	r7, r3
 8006156:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8006158:	b099      	sub	sp, #100	; 0x64
 800615a:	4604      	mov	r4, r0
 800615c:	4692      	mov	sl, r2
 800615e:	46bb      	mov	fp, r7
 8006160:	b14b      	cbz	r3, 8006176 <_dtoa_r+0x26>
 8006162:	6c45      	ldr	r5, [r0, #68]	; 0x44
 8006164:	2201      	movs	r2, #1
 8006166:	4619      	mov	r1, r3
 8006168:	40aa      	lsls	r2, r5
 800616a:	e9c3 5201 	strd	r5, r2, [r3, #4]
 800616e:	f001 fdc7 	bl	8007d00 <_Bfree>
 8006172:	2300      	movs	r3, #0
 8006174:	6423      	str	r3, [r4, #64]	; 0x40
 8006176:	f1b7 0900 	subs.w	r9, r7, #0
 800617a:	f2c0 80b0 	blt.w	80062de <_dtoa_r+0x18e>
 800617e:	2300      	movs	r3, #0
 8006180:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006182:	6013      	str	r3, [r2, #0]
 8006184:	4b7a      	ldr	r3, [pc, #488]	; (8006370 <_dtoa_r+0x220>)
 8006186:	ea33 0309 	bics.w	r3, r3, r9
 800618a:	f000 80b3 	beq.w	80062f4 <_dtoa_r+0x1a4>
 800618e:	2200      	movs	r2, #0
 8006190:	2300      	movs	r3, #0
 8006192:	4650      	mov	r0, sl
 8006194:	4659      	mov	r1, fp
 8006196:	f7fa fe73 	bl	8000e80 <__aeabi_dcmpeq>
 800619a:	4656      	mov	r6, sl
 800619c:	4680      	mov	r8, r0
 800619e:	b168      	cbz	r0, 80061bc <_dtoa_r+0x6c>
 80061a0:	2301      	movs	r3, #1
 80061a2:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80061a4:	6013      	str	r3, [r2, #0]
 80061a6:	9b26      	ldr	r3, [sp, #152]	; 0x98
 80061a8:	2b00      	cmp	r3, #0
 80061aa:	f000 80ce 	beq.w	800634a <_dtoa_r+0x1fa>
 80061ae:	4f71      	ldr	r7, [pc, #452]	; (8006374 <_dtoa_r+0x224>)
 80061b0:	601f      	str	r7, [r3, #0]
 80061b2:	3f01      	subs	r7, #1
 80061b4:	4638      	mov	r0, r7
 80061b6:	b019      	add	sp, #100	; 0x64
 80061b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80061bc:	ad16      	add	r5, sp, #88	; 0x58
 80061be:	a917      	add	r1, sp, #92	; 0x5c
 80061c0:	4620      	mov	r0, r4
 80061c2:	4652      	mov	r2, sl
 80061c4:	465b      	mov	r3, fp
 80061c6:	e9cd 1500 	strd	r1, r5, [sp]
 80061ca:	f002 f831 	bl	8008230 <__d2b>
 80061ce:	9008      	str	r0, [sp, #32]
 80061d0:	ea5f 5519 	movs.w	r5, r9, lsr #20
 80061d4:	f040 80ac 	bne.w	8006330 <_dtoa_r+0x1e0>
 80061d8:	e9dd 8516 	ldrd	r8, r5, [sp, #88]	; 0x58
 80061dc:	4445      	add	r5, r8
 80061de:	f205 4332 	addw	r3, r5, #1074	; 0x432
 80061e2:	2b20      	cmp	r3, #32
 80061e4:	f340 82c4 	ble.w	8006770 <_dtoa_r+0x620>
 80061e8:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80061ec:	f205 4012 	addw	r0, r5, #1042	; 0x412
 80061f0:	fa09 f903 	lsl.w	r9, r9, r3
 80061f4:	fa2a f000 	lsr.w	r0, sl, r0
 80061f8:	ea49 0000 	orr.w	r0, r9, r0
 80061fc:	f7fa fb5e 	bl	80008bc <__aeabi_ui2d>
 8006200:	3d01      	subs	r5, #1
 8006202:	2301      	movs	r3, #1
 8006204:	4606      	mov	r6, r0
 8006206:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800620a:	9314      	str	r3, [sp, #80]	; 0x50
 800620c:	4630      	mov	r0, r6
 800620e:	4639      	mov	r1, r7
 8006210:	2200      	movs	r2, #0
 8006212:	4b59      	ldr	r3, [pc, #356]	; (8006378 <_dtoa_r+0x228>)
 8006214:	f7fa fa14 	bl	8000640 <__aeabi_dsub>
 8006218:	a34f      	add	r3, pc, #316	; (adr r3, 8006358 <_dtoa_r+0x208>)
 800621a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800621e:	f7fa fbc7 	bl	80009b0 <__aeabi_dmul>
 8006222:	a34f      	add	r3, pc, #316	; (adr r3, 8006360 <_dtoa_r+0x210>)
 8006224:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006228:	f7fa fa0c 	bl	8000644 <__adddf3>
 800622c:	4606      	mov	r6, r0
 800622e:	460f      	mov	r7, r1
 8006230:	4628      	mov	r0, r5
 8006232:	f7fa fb53 	bl	80008dc <__aeabi_i2d>
 8006236:	a34c      	add	r3, pc, #304	; (adr r3, 8006368 <_dtoa_r+0x218>)
 8006238:	e9d3 2300 	ldrd	r2, r3, [r3]
 800623c:	f7fa fbb8 	bl	80009b0 <__aeabi_dmul>
 8006240:	4602      	mov	r2, r0
 8006242:	460b      	mov	r3, r1
 8006244:	4630      	mov	r0, r6
 8006246:	4639      	mov	r1, r7
 8006248:	f7fa f9fc 	bl	8000644 <__adddf3>
 800624c:	4606      	mov	r6, r0
 800624e:	460f      	mov	r7, r1
 8006250:	f7fa fe5e 	bl	8000f10 <__aeabi_d2iz>
 8006254:	2200      	movs	r2, #0
 8006256:	4681      	mov	r9, r0
 8006258:	2300      	movs	r3, #0
 800625a:	4630      	mov	r0, r6
 800625c:	4639      	mov	r1, r7
 800625e:	f7fa fe19 	bl	8000e94 <__aeabi_dcmplt>
 8006262:	2800      	cmp	r0, #0
 8006264:	f040 8277 	bne.w	8006756 <_dtoa_r+0x606>
 8006268:	f1b9 0f16 	cmp.w	r9, #22
 800626c:	f200 8260 	bhi.w	8006730 <_dtoa_r+0x5e0>
 8006270:	4942      	ldr	r1, [pc, #264]	; (800637c <_dtoa_r+0x22c>)
 8006272:	4652      	mov	r2, sl
 8006274:	465b      	mov	r3, fp
 8006276:	eb01 01c9 	add.w	r1, r1, r9, lsl #3
 800627a:	e9d1 0100 	ldrd	r0, r1, [r1]
 800627e:	f7fa fe27 	bl	8000ed0 <__aeabi_dcmpgt>
 8006282:	2800      	cmp	r0, #0
 8006284:	f000 827b 	beq.w	800677e <_dtoa_r+0x62e>
 8006288:	2300      	movs	r3, #0
 800628a:	f109 39ff 	add.w	r9, r9, #4294967295
 800628e:	930e      	str	r3, [sp, #56]	; 0x38
 8006290:	eba8 0505 	sub.w	r5, r8, r5
 8006294:	1e6b      	subs	r3, r5, #1
 8006296:	9304      	str	r3, [sp, #16]
 8006298:	f100 8257 	bmi.w	800674a <_dtoa_r+0x5fa>
 800629c:	2300      	movs	r3, #0
 800629e:	9307      	str	r3, [sp, #28]
 80062a0:	f1b9 0f00 	cmp.w	r9, #0
 80062a4:	f2c0 8247 	blt.w	8006736 <_dtoa_r+0x5e6>
 80062a8:	9b04      	ldr	r3, [sp, #16]
 80062aa:	f8cd 9034 	str.w	r9, [sp, #52]	; 0x34
 80062ae:	444b      	add	r3, r9
 80062b0:	9304      	str	r3, [sp, #16]
 80062b2:	2300      	movs	r3, #0
 80062b4:	930c      	str	r3, [sp, #48]	; 0x30
 80062b6:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80062b8:	2b09      	cmp	r3, #9
 80062ba:	d867      	bhi.n	800638c <_dtoa_r+0x23c>
 80062bc:	2b05      	cmp	r3, #5
 80062be:	f340 825c 	ble.w	800677a <_dtoa_r+0x62a>
 80062c2:	3b04      	subs	r3, #4
 80062c4:	2500      	movs	r5, #0
 80062c6:	9322      	str	r3, [sp, #136]	; 0x88
 80062c8:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80062ca:	3b02      	subs	r3, #2
 80062cc:	2b03      	cmp	r3, #3
 80062ce:	f200 827d 	bhi.w	80067cc <_dtoa_r+0x67c>
 80062d2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80062d6:	02dd      	.short	0x02dd
 80062d8:	02e702b6 	.word	0x02e702b6
 80062dc:	04ab      	.short	0x04ab
 80062de:	2301      	movs	r3, #1
 80062e0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80062e2:	f029 4900 	bic.w	r9, r9, #2147483648	; 0x80000000
 80062e6:	6013      	str	r3, [r2, #0]
 80062e8:	4b21      	ldr	r3, [pc, #132]	; (8006370 <_dtoa_r+0x220>)
 80062ea:	46cb      	mov	fp, r9
 80062ec:	ea33 0309 	bics.w	r3, r3, r9
 80062f0:	f47f af4d 	bne.w	800618e <_dtoa_r+0x3e>
 80062f4:	f242 730f 	movw	r3, #9999	; 0x270f
 80062f8:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80062fa:	6013      	str	r3, [r2, #0]
 80062fc:	f1ba 0f00 	cmp.w	sl, #0
 8006300:	d10f      	bne.n	8006322 <_dtoa_r+0x1d2>
 8006302:	f3c9 0313 	ubfx	r3, r9, #0, #20
 8006306:	b963      	cbnz	r3, 8006322 <_dtoa_r+0x1d2>
 8006308:	9b26      	ldr	r3, [sp, #152]	; 0x98
 800630a:	4f1d      	ldr	r7, [pc, #116]	; (8006380 <_dtoa_r+0x230>)
 800630c:	2b00      	cmp	r3, #0
 800630e:	f43f af51 	beq.w	80061b4 <_dtoa_r+0x64>
 8006312:	f107 0308 	add.w	r3, r7, #8
 8006316:	9a26      	ldr	r2, [sp, #152]	; 0x98
 8006318:	4638      	mov	r0, r7
 800631a:	6013      	str	r3, [r2, #0]
 800631c:	b019      	add	sp, #100	; 0x64
 800631e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006322:	9b26      	ldr	r3, [sp, #152]	; 0x98
 8006324:	4f17      	ldr	r7, [pc, #92]	; (8006384 <_dtoa_r+0x234>)
 8006326:	2b00      	cmp	r3, #0
 8006328:	f43f af44 	beq.w	80061b4 <_dtoa_r+0x64>
 800632c:	1cfb      	adds	r3, r7, #3
 800632e:	e7f2      	b.n	8006316 <_dtoa_r+0x1c6>
 8006330:	f3cb 0313 	ubfx	r3, fp, #0, #20
 8006334:	f8cd 8050 	str.w	r8, [sp, #80]	; 0x50
 8006338:	f2a5 35ff 	subw	r5, r5, #1023	; 0x3ff
 800633c:	f8dd 8058 	ldr.w	r8, [sp, #88]	; 0x58
 8006340:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8006344:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8006348:	e760      	b.n	800620c <_dtoa_r+0xbc>
 800634a:	4f0f      	ldr	r7, [pc, #60]	; (8006388 <_dtoa_r+0x238>)
 800634c:	4638      	mov	r0, r7
 800634e:	b019      	add	sp, #100	; 0x64
 8006350:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006354:	f3af 8000 	nop.w
 8006358:	636f4361 	.word	0x636f4361
 800635c:	3fd287a7 	.word	0x3fd287a7
 8006360:	8b60c8b3 	.word	0x8b60c8b3
 8006364:	3fc68a28 	.word	0x3fc68a28
 8006368:	509f79fb 	.word	0x509f79fb
 800636c:	3fd34413 	.word	0x3fd34413
 8006370:	7ff00000 	.word	0x7ff00000
 8006374:	0800926d 	.word	0x0800926d
 8006378:	3ff80000 	.word	0x3ff80000
 800637c:	080092c8 	.word	0x080092c8
 8006380:	08009290 	.word	0x08009290
 8006384:	0800929c 	.word	0x0800929c
 8006388:	0800926c 	.word	0x0800926c
 800638c:	2300      	movs	r3, #0
 800638e:	9322      	str	r3, [sp, #136]	; 0x88
 8006390:	2301      	movs	r3, #1
 8006392:	9309      	str	r3, [sp, #36]	; 0x24
 8006394:	f04f 33ff 	mov.w	r3, #4294967295
 8006398:	9306      	str	r3, [sp, #24]
 800639a:	2300      	movs	r3, #0
 800639c:	461d      	mov	r5, r3
 800639e:	9323      	str	r3, [sp, #140]	; 0x8c
 80063a0:	2100      	movs	r1, #0
 80063a2:	9b06      	ldr	r3, [sp, #24]
 80063a4:	6461      	str	r1, [r4, #68]	; 0x44
 80063a6:	930f      	str	r3, [sp, #60]	; 0x3c
 80063a8:	4620      	mov	r0, r4
 80063aa:	f001 fc83 	bl	8007cb4 <_Balloc>
 80063ae:	9003      	str	r0, [sp, #12]
 80063b0:	6420      	str	r0, [r4, #64]	; 0x40
 80063b2:	2d00      	cmp	r5, #0
 80063b4:	f000 811c 	beq.w	80065f0 <_dtoa_r+0x4a0>
 80063b8:	4650      	mov	r0, sl
 80063ba:	4659      	mov	r1, fp
 80063bc:	f1b9 0f00 	cmp.w	r9, #0
 80063c0:	e9cd 0110 	strd	r0, r1, [sp, #64]	; 0x40
 80063c4:	f340 832e 	ble.w	8006a24 <_dtoa_r+0x8d4>
 80063c8:	4a6e      	ldr	r2, [pc, #440]	; (8006584 <_dtoa_r+0x434>)
 80063ca:	f009 030f 	and.w	r3, r9, #15
 80063ce:	ea4f 1529 	mov.w	r5, r9, asr #4
 80063d2:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 80063d6:	06ea      	lsls	r2, r5, #27
 80063d8:	e9d3 6700 	ldrd	r6, r7, [r3]
 80063dc:	f140 822a 	bpl.w	8006834 <_dtoa_r+0x6e4>
 80063e0:	4b69      	ldr	r3, [pc, #420]	; (8006588 <_dtoa_r+0x438>)
 80063e2:	f005 050f 	and.w	r5, r5, #15
 80063e6:	f04f 0a03 	mov.w	sl, #3
 80063ea:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80063ee:	f7fa fc09 	bl	8000c04 <__aeabi_ddiv>
 80063f2:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 80063f6:	b18d      	cbz	r5, 800641c <_dtoa_r+0x2cc>
 80063f8:	f8df 818c 	ldr.w	r8, [pc, #396]	; 8006588 <_dtoa_r+0x438>
 80063fc:	07eb      	lsls	r3, r5, #31
 80063fe:	4630      	mov	r0, r6
 8006400:	4639      	mov	r1, r7
 8006402:	d507      	bpl.n	8006414 <_dtoa_r+0x2c4>
 8006404:	f10a 0a01 	add.w	sl, sl, #1
 8006408:	e9d8 2300 	ldrd	r2, r3, [r8]
 800640c:	f7fa fad0 	bl	80009b0 <__aeabi_dmul>
 8006410:	4606      	mov	r6, r0
 8006412:	460f      	mov	r7, r1
 8006414:	106d      	asrs	r5, r5, #1
 8006416:	f108 0808 	add.w	r8, r8, #8
 800641a:	d1ef      	bne.n	80063fc <_dtoa_r+0x2ac>
 800641c:	4632      	mov	r2, r6
 800641e:	463b      	mov	r3, r7
 8006420:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8006424:	f7fa fbee 	bl	8000c04 <__aeabi_ddiv>
 8006428:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 800642c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800642e:	b143      	cbz	r3, 8006442 <_dtoa_r+0x2f2>
 8006430:	2200      	movs	r2, #0
 8006432:	4b56      	ldr	r3, [pc, #344]	; (800658c <_dtoa_r+0x43c>)
 8006434:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8006438:	f7fa fd2c 	bl	8000e94 <__aeabi_dcmplt>
 800643c:	2800      	cmp	r0, #0
 800643e:	f040 84b1 	bne.w	8006da4 <_dtoa_r+0xc54>
 8006442:	4650      	mov	r0, sl
 8006444:	f7fa fa4a 	bl	80008dc <__aeabi_i2d>
 8006448:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 800644c:	f7fa fab0 	bl	80009b0 <__aeabi_dmul>
 8006450:	4b4f      	ldr	r3, [pc, #316]	; (8006590 <_dtoa_r+0x440>)
 8006452:	2200      	movs	r2, #0
 8006454:	f7fa f8f6 	bl	8000644 <__adddf3>
 8006458:	9b06      	ldr	r3, [sp, #24]
 800645a:	4606      	mov	r6, r0
 800645c:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006460:	2b00      	cmp	r3, #0
 8006462:	f000 80a9 	beq.w	80065b8 <_dtoa_r+0x468>
 8006466:	46cb      	mov	fp, r9
 8006468:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800646c:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8006470:	e9cd 6712 	strd	r6, r7, [sp, #72]	; 0x48
 8006474:	f7fa fd4c 	bl	8000f10 <__aeabi_d2iz>
 8006478:	4682      	mov	sl, r0
 800647a:	f7fa fa2f 	bl	80008dc <__aeabi_i2d>
 800647e:	4602      	mov	r2, r0
 8006480:	460b      	mov	r3, r1
 8006482:	f10a 0a30 	add.w	sl, sl, #48	; 0x30
 8006486:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 800648a:	f7fa f8d9 	bl	8000640 <__aeabi_dsub>
 800648e:	4b3d      	ldr	r3, [pc, #244]	; (8006584 <_dtoa_r+0x434>)
 8006490:	4606      	mov	r6, r0
 8006492:	460f      	mov	r7, r1
 8006494:	eb03 03c8 	add.w	r3, r3, r8, lsl #3
 8006498:	9903      	ldr	r1, [sp, #12]
 800649a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800649c:	fa5f fa8a 	uxtb.w	sl, sl
 80064a0:	1c4d      	adds	r5, r1, #1
 80064a2:	e953 2302 	ldrd	r2, r3, [r3, #-8]
 80064a6:	2800      	cmp	r0, #0
 80064a8:	f000 8374 	beq.w	8006b94 <_dtoa_r+0xa44>
 80064ac:	2000      	movs	r0, #0
 80064ae:	4939      	ldr	r1, [pc, #228]	; (8006594 <_dtoa_r+0x444>)
 80064b0:	f7fa fba8 	bl	8000c04 <__aeabi_ddiv>
 80064b4:	e9dd 2312 	ldrd	r2, r3, [sp, #72]	; 0x48
 80064b8:	f7fa f8c2 	bl	8000640 <__aeabi_dsub>
 80064bc:	9b03      	ldr	r3, [sp, #12]
 80064be:	4632      	mov	r2, r6
 80064c0:	f883 a000 	strb.w	sl, [r3]
 80064c4:	463b      	mov	r3, r7
 80064c6:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 80064ca:	f7fa fd01 	bl	8000ed0 <__aeabi_dcmpgt>
 80064ce:	2800      	cmp	r0, #0
 80064d0:	f040 83a9 	bne.w	8006c26 <_dtoa_r+0xad6>
 80064d4:	4632      	mov	r2, r6
 80064d6:	463b      	mov	r3, r7
 80064d8:	2000      	movs	r0, #0
 80064da:	492c      	ldr	r1, [pc, #176]	; (800658c <_dtoa_r+0x43c>)
 80064dc:	f7fa f8b0 	bl	8000640 <__aeabi_dsub>
 80064e0:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 80064e4:	f7fa fcd6 	bl	8000e94 <__aeabi_dcmplt>
 80064e8:	2800      	cmp	r0, #0
 80064ea:	f040 8422 	bne.w	8006d32 <_dtoa_r+0xbe2>
 80064ee:	f1b8 0f01 	cmp.w	r8, #1
 80064f2:	d07b      	beq.n	80065ec <_dtoa_r+0x49c>
 80064f4:	9b03      	ldr	r3, [sp, #12]
 80064f6:	f8cd 9054 	str.w	r9, [sp, #84]	; 0x54
 80064fa:	46a1      	mov	r9, r4
 80064fc:	f8cd b048 	str.w	fp, [sp, #72]	; 0x48
 8006500:	4498      	add	r8, r3
 8006502:	e9dd ab0a 	ldrd	sl, fp, [sp, #40]	; 0x28
 8006506:	e00d      	b.n	8006524 <_dtoa_r+0x3d4>
 8006508:	2000      	movs	r0, #0
 800650a:	4920      	ldr	r1, [pc, #128]	; (800658c <_dtoa_r+0x43c>)
 800650c:	f7fa f898 	bl	8000640 <__aeabi_dsub>
 8006510:	4652      	mov	r2, sl
 8006512:	465b      	mov	r3, fp
 8006514:	f7fa fcbe 	bl	8000e94 <__aeabi_dcmplt>
 8006518:	2800      	cmp	r0, #0
 800651a:	f040 84fd 	bne.w	8006f18 <_dtoa_r+0xdc8>
 800651e:	4545      	cmp	r5, r8
 8006520:	f000 8500 	beq.w	8006f24 <_dtoa_r+0xdd4>
 8006524:	4650      	mov	r0, sl
 8006526:	4659      	mov	r1, fp
 8006528:	2200      	movs	r2, #0
 800652a:	4b1b      	ldr	r3, [pc, #108]	; (8006598 <_dtoa_r+0x448>)
 800652c:	f7fa fa40 	bl	80009b0 <__aeabi_dmul>
 8006530:	2200      	movs	r2, #0
 8006532:	4b19      	ldr	r3, [pc, #100]	; (8006598 <_dtoa_r+0x448>)
 8006534:	4682      	mov	sl, r0
 8006536:	468b      	mov	fp, r1
 8006538:	4630      	mov	r0, r6
 800653a:	4639      	mov	r1, r7
 800653c:	f7fa fa38 	bl	80009b0 <__aeabi_dmul>
 8006540:	460f      	mov	r7, r1
 8006542:	4606      	mov	r6, r0
 8006544:	f7fa fce4 	bl	8000f10 <__aeabi_d2iz>
 8006548:	4604      	mov	r4, r0
 800654a:	f7fa f9c7 	bl	80008dc <__aeabi_i2d>
 800654e:	4602      	mov	r2, r0
 8006550:	460b      	mov	r3, r1
 8006552:	3430      	adds	r4, #48	; 0x30
 8006554:	4630      	mov	r0, r6
 8006556:	4639      	mov	r1, r7
 8006558:	b2e4      	uxtb	r4, r4
 800655a:	f7fa f871 	bl	8000640 <__aeabi_dsub>
 800655e:	4606      	mov	r6, r0
 8006560:	460f      	mov	r7, r1
 8006562:	4652      	mov	r2, sl
 8006564:	465b      	mov	r3, fp
 8006566:	f805 4b01 	strb.w	r4, [r5], #1
 800656a:	f7fa fc93 	bl	8000e94 <__aeabi_dcmplt>
 800656e:	4632      	mov	r2, r6
 8006570:	463b      	mov	r3, r7
 8006572:	2800      	cmp	r0, #0
 8006574:	d0c8      	beq.n	8006508 <_dtoa_r+0x3b8>
 8006576:	9f03      	ldr	r7, [sp, #12]
 8006578:	464c      	mov	r4, r9
 800657a:	f8dd b048 	ldr.w	fp, [sp, #72]	; 0x48
 800657e:	9503      	str	r5, [sp, #12]
 8006580:	e0c2      	b.n	8006708 <_dtoa_r+0x5b8>
 8006582:	bf00      	nop
 8006584:	080092c8 	.word	0x080092c8
 8006588:	080092a0 	.word	0x080092a0
 800658c:	3ff00000 	.word	0x3ff00000
 8006590:	401c0000 	.word	0x401c0000
 8006594:	3fe00000 	.word	0x3fe00000
 8006598:	40240000 	.word	0x40240000
 800659c:	4650      	mov	r0, sl
 800659e:	f7fa f99d 	bl	80008dc <__aeabi_i2d>
 80065a2:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 80065a6:	f7fa fa03 	bl	80009b0 <__aeabi_dmul>
 80065aa:	2200      	movs	r2, #0
 80065ac:	4bb5      	ldr	r3, [pc, #724]	; (8006884 <_dtoa_r+0x734>)
 80065ae:	f7fa f849 	bl	8000644 <__adddf3>
 80065b2:	4606      	mov	r6, r0
 80065b4:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80065b8:	2200      	movs	r2, #0
 80065ba:	4bb3      	ldr	r3, [pc, #716]	; (8006888 <_dtoa_r+0x738>)
 80065bc:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 80065c0:	f7fa f83e 	bl	8000640 <__aeabi_dsub>
 80065c4:	4632      	mov	r2, r6
 80065c6:	463b      	mov	r3, r7
 80065c8:	4682      	mov	sl, r0
 80065ca:	468b      	mov	fp, r1
 80065cc:	f7fa fc80 	bl	8000ed0 <__aeabi_dcmpgt>
 80065d0:	4605      	mov	r5, r0
 80065d2:	2800      	cmp	r0, #0
 80065d4:	f040 825c 	bne.w	8006a90 <_dtoa_r+0x940>
 80065d8:	4632      	mov	r2, r6
 80065da:	4650      	mov	r0, sl
 80065dc:	4659      	mov	r1, fp
 80065de:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80065e2:	f7fa fc57 	bl	8000e94 <__aeabi_dcmplt>
 80065e6:	2800      	cmp	r0, #0
 80065e8:	f040 8122 	bne.w	8006830 <_dtoa_r+0x6e0>
 80065ec:	e9dd ab10 	ldrd	sl, fp, [sp, #64]	; 0x40
 80065f0:	f1b9 0f0e 	cmp.w	r9, #14
 80065f4:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 80065f6:	dc02      	bgt.n	80065fe <_dtoa_r+0x4ae>
 80065f8:	2b00      	cmp	r3, #0
 80065fa:	f280 80f9 	bge.w	80067f0 <_dtoa_r+0x6a0>
 80065fe:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006600:	2a00      	cmp	r2, #0
 8006602:	f040 80c6 	bne.w	8006792 <_dtoa_r+0x642>
 8006606:	9b07      	ldr	r3, [sp, #28]
 8006608:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 800660a:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800660e:	930a      	str	r3, [sp, #40]	; 0x28
 8006610:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006612:	2b00      	cmp	r3, #0
 8006614:	dd0f      	ble.n	8006636 <_dtoa_r+0x4e6>
 8006616:	9a04      	ldr	r2, [sp, #16]
 8006618:	2a00      	cmp	r2, #0
 800661a:	dd0c      	ble.n	8006636 <_dtoa_r+0x4e6>
 800661c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800661e:	4613      	mov	r3, r2
 8006620:	428a      	cmp	r2, r1
 8006622:	bfa8      	it	ge
 8006624:	460b      	movge	r3, r1
 8006626:	9907      	ldr	r1, [sp, #28]
 8006628:	1ac9      	subs	r1, r1, r3
 800662a:	9107      	str	r1, [sp, #28]
 800662c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800662e:	1ac9      	subs	r1, r1, r3
 8006630:	1ad3      	subs	r3, r2, r3
 8006632:	910a      	str	r1, [sp, #40]	; 0x28
 8006634:	9304      	str	r3, [sp, #16]
 8006636:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8006638:	b16b      	cbz	r3, 8006656 <_dtoa_r+0x506>
 800663a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800663c:	2a00      	cmp	r2, #0
 800663e:	f000 83aa 	beq.w	8006d96 <_dtoa_r+0xc46>
 8006642:	1bdd      	subs	r5, r3, r7
 8006644:	2f00      	cmp	r7, #0
 8006646:	f040 83db 	bne.w	8006e00 <_dtoa_r+0xcb0>
 800664a:	462a      	mov	r2, r5
 800664c:	9908      	ldr	r1, [sp, #32]
 800664e:	4620      	mov	r0, r4
 8006650:	f001 fca6 	bl	8007fa0 <__pow5mult>
 8006654:	9008      	str	r0, [sp, #32]
 8006656:	2101      	movs	r1, #1
 8006658:	4620      	mov	r0, r4
 800665a:	f001 fbef 	bl	8007e3c <__i2b>
 800665e:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8006660:	4605      	mov	r5, r0
 8006662:	2a00      	cmp	r2, #0
 8006664:	f040 812c 	bne.w	80068c0 <_dtoa_r+0x770>
 8006668:	9b22      	ldr	r3, [sp, #136]	; 0x88
 800666a:	2b01      	cmp	r3, #1
 800666c:	f340 84c6 	ble.w	8006ffc <_dtoa_r+0xeac>
 8006670:	2001      	movs	r0, #1
 8006672:	9a04      	ldr	r2, [sp, #16]
 8006674:	4410      	add	r0, r2
 8006676:	f010 001f 	ands.w	r0, r0, #31
 800667a:	f000 8116 	beq.w	80068aa <_dtoa_r+0x75a>
 800667e:	f1c0 0320 	rsb	r3, r0, #32
 8006682:	2b04      	cmp	r3, #4
 8006684:	f340 84b1 	ble.w	8006fea <_dtoa_r+0xe9a>
 8006688:	f1c0 001c 	rsb	r0, r0, #28
 800668c:	9b07      	ldr	r3, [sp, #28]
 800668e:	4403      	add	r3, r0
 8006690:	4402      	add	r2, r0
 8006692:	9307      	str	r3, [sp, #28]
 8006694:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006696:	9204      	str	r2, [sp, #16]
 8006698:	4403      	add	r3, r0
 800669a:	930a      	str	r3, [sp, #40]	; 0x28
 800669c:	9b07      	ldr	r3, [sp, #28]
 800669e:	2b00      	cmp	r3, #0
 80066a0:	dd05      	ble.n	80066ae <_dtoa_r+0x55e>
 80066a2:	461a      	mov	r2, r3
 80066a4:	9908      	ldr	r1, [sp, #32]
 80066a6:	4620      	mov	r0, r4
 80066a8:	f001 fcca 	bl	8008040 <__lshift>
 80066ac:	9008      	str	r0, [sp, #32]
 80066ae:	9b04      	ldr	r3, [sp, #16]
 80066b0:	2b00      	cmp	r3, #0
 80066b2:	dd05      	ble.n	80066c0 <_dtoa_r+0x570>
 80066b4:	4629      	mov	r1, r5
 80066b6:	461a      	mov	r2, r3
 80066b8:	4620      	mov	r0, r4
 80066ba:	f001 fcc1 	bl	8008040 <__lshift>
 80066be:	4605      	mov	r5, r0
 80066c0:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80066c2:	2b02      	cmp	r3, #2
 80066c4:	bfd4      	ite	le
 80066c6:	2300      	movle	r3, #0
 80066c8:	2301      	movgt	r3, #1
 80066ca:	461e      	mov	r6, r3
 80066cc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80066ce:	2b00      	cmp	r3, #0
 80066d0:	f040 81e9 	bne.w	8006aa6 <_dtoa_r+0x956>
 80066d4:	9b06      	ldr	r3, [sp, #24]
 80066d6:	2b00      	cmp	r3, #0
 80066d8:	f300 811e 	bgt.w	8006918 <_dtoa_r+0x7c8>
 80066dc:	2e00      	cmp	r6, #0
 80066de:	f000 811b 	beq.w	8006918 <_dtoa_r+0x7c8>
 80066e2:	9b06      	ldr	r3, [sp, #24]
 80066e4:	2b00      	cmp	r3, #0
 80066e6:	f000 8348 	beq.w	8006d7a <_dtoa_r+0xc2a>
 80066ea:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 80066ec:	9f03      	ldr	r7, [sp, #12]
 80066ee:	ea6f 0b03 	mvn.w	fp, r3
 80066f2:	4629      	mov	r1, r5
 80066f4:	4620      	mov	r0, r4
 80066f6:	f001 fb03 	bl	8007d00 <_Bfree>
 80066fa:	f1b8 0f00 	cmp.w	r8, #0
 80066fe:	d003      	beq.n	8006708 <_dtoa_r+0x5b8>
 8006700:	4641      	mov	r1, r8
 8006702:	4620      	mov	r0, r4
 8006704:	f001 fafc 	bl	8007d00 <_Bfree>
 8006708:	9908      	ldr	r1, [sp, #32]
 800670a:	4620      	mov	r0, r4
 800670c:	f001 faf8 	bl	8007d00 <_Bfree>
 8006710:	2200      	movs	r2, #0
 8006712:	9903      	ldr	r1, [sp, #12]
 8006714:	f10b 0301 	add.w	r3, fp, #1
 8006718:	700a      	strb	r2, [r1, #0]
 800671a:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800671c:	6013      	str	r3, [r2, #0]
 800671e:	9b26      	ldr	r3, [sp, #152]	; 0x98
 8006720:	2b00      	cmp	r3, #0
 8006722:	f43f ad47 	beq.w	80061b4 <_dtoa_r+0x64>
 8006726:	4638      	mov	r0, r7
 8006728:	6019      	str	r1, [r3, #0]
 800672a:	b019      	add	sp, #100	; 0x64
 800672c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006730:	2301      	movs	r3, #1
 8006732:	930e      	str	r3, [sp, #56]	; 0x38
 8006734:	e5ac      	b.n	8006290 <_dtoa_r+0x140>
 8006736:	9b07      	ldr	r3, [sp, #28]
 8006738:	eba3 0309 	sub.w	r3, r3, r9
 800673c:	9307      	str	r3, [sp, #28]
 800673e:	f1c9 0300 	rsb	r3, r9, #0
 8006742:	930c      	str	r3, [sp, #48]	; 0x30
 8006744:	2300      	movs	r3, #0
 8006746:	930d      	str	r3, [sp, #52]	; 0x34
 8006748:	e5b5      	b.n	80062b6 <_dtoa_r+0x166>
 800674a:	f1c5 0301 	rsb	r3, r5, #1
 800674e:	9307      	str	r3, [sp, #28]
 8006750:	2300      	movs	r3, #0
 8006752:	9304      	str	r3, [sp, #16]
 8006754:	e5a4      	b.n	80062a0 <_dtoa_r+0x150>
 8006756:	4648      	mov	r0, r9
 8006758:	f7fa f8c0 	bl	80008dc <__aeabi_i2d>
 800675c:	4632      	mov	r2, r6
 800675e:	463b      	mov	r3, r7
 8006760:	f7fa fb8e 	bl	8000e80 <__aeabi_dcmpeq>
 8006764:	2800      	cmp	r0, #0
 8006766:	f47f ad7f 	bne.w	8006268 <_dtoa_r+0x118>
 800676a:	f109 39ff 	add.w	r9, r9, #4294967295
 800676e:	e57b      	b.n	8006268 <_dtoa_r+0x118>
 8006770:	f1c3 0920 	rsb	r9, r3, #32
 8006774:	fa0a f009 	lsl.w	r0, sl, r9
 8006778:	e540      	b.n	80061fc <_dtoa_r+0xac>
 800677a:	2501      	movs	r5, #1
 800677c:	e5a4      	b.n	80062c8 <_dtoa_r+0x178>
 800677e:	900e      	str	r0, [sp, #56]	; 0x38
 8006780:	e586      	b.n	8006290 <_dtoa_r+0x140>
 8006782:	2100      	movs	r1, #0
 8006784:	f04f 32ff 	mov.w	r2, #4294967295
 8006788:	9123      	str	r1, [sp, #140]	; 0x8c
 800678a:	2101      	movs	r1, #1
 800678c:	920f      	str	r2, [sp, #60]	; 0x3c
 800678e:	9109      	str	r1, [sp, #36]	; 0x24
 8006790:	9206      	str	r2, [sp, #24]
 8006792:	9a22      	ldr	r2, [sp, #136]	; 0x88
 8006794:	2a01      	cmp	r2, #1
 8006796:	f340 8349 	ble.w	8006e2c <_dtoa_r+0xcdc>
 800679a:	9b06      	ldr	r3, [sp, #24]
 800679c:	1e5f      	subs	r7, r3, #1
 800679e:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80067a0:	42bb      	cmp	r3, r7
 80067a2:	f2c0 8352 	blt.w	8006e4a <_dtoa_r+0xcfa>
 80067a6:	1bdf      	subs	r7, r3, r7
 80067a8:	9b06      	ldr	r3, [sp, #24]
 80067aa:	2b00      	cmp	r3, #0
 80067ac:	f2c0 8368 	blt.w	8006e80 <_dtoa_r+0xd30>
 80067b0:	9a04      	ldr	r2, [sp, #16]
 80067b2:	4611      	mov	r1, r2
 80067b4:	9a07      	ldr	r2, [sp, #28]
 80067b6:	4419      	add	r1, r3
 80067b8:	920a      	str	r2, [sp, #40]	; 0x28
 80067ba:	441a      	add	r2, r3
 80067bc:	9104      	str	r1, [sp, #16]
 80067be:	9207      	str	r2, [sp, #28]
 80067c0:	2101      	movs	r1, #1
 80067c2:	4620      	mov	r0, r4
 80067c4:	f001 fb3a 	bl	8007e3c <__i2b>
 80067c8:	4680      	mov	r8, r0
 80067ca:	e721      	b.n	8006610 <_dtoa_r+0x4c0>
 80067cc:	2500      	movs	r5, #0
 80067ce:	4620      	mov	r0, r4
 80067d0:	6465      	str	r5, [r4, #68]	; 0x44
 80067d2:	4629      	mov	r1, r5
 80067d4:	f001 fa6e 	bl	8007cb4 <_Balloc>
 80067d8:	f1b9 0f0e 	cmp.w	r9, #14
 80067dc:	9003      	str	r0, [sp, #12]
 80067de:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 80067e0:	6420      	str	r0, [r4, #64]	; 0x40
 80067e2:	dcce      	bgt.n	8006782 <_dtoa_r+0x632>
 80067e4:	42ab      	cmp	r3, r5
 80067e6:	dbcc      	blt.n	8006782 <_dtoa_r+0x632>
 80067e8:	f04f 33ff 	mov.w	r3, #4294967295
 80067ec:	9523      	str	r5, [sp, #140]	; 0x8c
 80067ee:	9306      	str	r3, [sp, #24]
 80067f0:	4b26      	ldr	r3, [pc, #152]	; (800688c <_dtoa_r+0x73c>)
 80067f2:	eb03 03c9 	add.w	r3, r3, r9, lsl #3
 80067f6:	e9d3 2300 	ldrd	r2, r3, [r3]
 80067fa:	4619      	mov	r1, r3
 80067fc:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 80067fe:	4610      	mov	r0, r2
 8006800:	2b00      	cmp	r3, #0
 8006802:	e9cd 0104 	strd	r0, r1, [sp, #16]
 8006806:	f280 8214 	bge.w	8006c32 <_dtoa_r+0xae2>
 800680a:	9d06      	ldr	r5, [sp, #24]
 800680c:	2d00      	cmp	r5, #0
 800680e:	f300 8210 	bgt.w	8006c32 <_dtoa_r+0xae2>
 8006812:	2d00      	cmp	r5, #0
 8006814:	f040 8366 	bne.w	8006ee4 <_dtoa_r+0xd94>
 8006818:	2200      	movs	r2, #0
 800681a:	4b1b      	ldr	r3, [pc, #108]	; (8006888 <_dtoa_r+0x738>)
 800681c:	f7fa f8c8 	bl	80009b0 <__aeabi_dmul>
 8006820:	4652      	mov	r2, sl
 8006822:	465b      	mov	r3, fp
 8006824:	f7fa fb4a 	bl	8000ebc <__aeabi_dcmpge>
 8006828:	2800      	cmp	r0, #0
 800682a:	f000 8132 	beq.w	8006a92 <_dtoa_r+0x942>
 800682e:	9d06      	ldr	r5, [sp, #24]
 8006830:	46a8      	mov	r8, r5
 8006832:	e75a      	b.n	80066ea <_dtoa_r+0x59a>
 8006834:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8006838:	f04f 0a02 	mov.w	sl, #2
 800683c:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8006840:	e5d9      	b.n	80063f6 <_dtoa_r+0x2a6>
 8006842:	2300      	movs	r3, #0
 8006844:	9309      	str	r3, [sp, #36]	; 0x24
 8006846:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 8006848:	444b      	add	r3, r9
 800684a:	930f      	str	r3, [sp, #60]	; 0x3c
 800684c:	3301      	adds	r3, #1
 800684e:	2b01      	cmp	r3, #1
 8006850:	461e      	mov	r6, r3
 8006852:	9306      	str	r3, [sp, #24]
 8006854:	bfb8      	it	lt
 8006856:	2601      	movlt	r6, #1
 8006858:	9b06      	ldr	r3, [sp, #24]
 800685a:	2100      	movs	r1, #0
 800685c:	2b0e      	cmp	r3, #14
 800685e:	bf8c      	ite	hi
 8006860:	2500      	movhi	r5, #0
 8006862:	f005 0501 	andls.w	r5, r5, #1
 8006866:	2e17      	cmp	r6, #23
 8006868:	6461      	str	r1, [r4, #68]	; 0x44
 800686a:	f77f ad9d 	ble.w	80063a8 <_dtoa_r+0x258>
 800686e:	2201      	movs	r2, #1
 8006870:	2304      	movs	r3, #4
 8006872:	005b      	lsls	r3, r3, #1
 8006874:	4611      	mov	r1, r2
 8006876:	3201      	adds	r2, #1
 8006878:	f103 0014 	add.w	r0, r3, #20
 800687c:	42b0      	cmp	r0, r6
 800687e:	d9f8      	bls.n	8006872 <_dtoa_r+0x722>
 8006880:	6461      	str	r1, [r4, #68]	; 0x44
 8006882:	e591      	b.n	80063a8 <_dtoa_r+0x258>
 8006884:	401c0000 	.word	0x401c0000
 8006888:	40140000 	.word	0x40140000
 800688c:	080092c8 	.word	0x080092c8
 8006890:	2300      	movs	r3, #0
 8006892:	9309      	str	r3, [sp, #36]	; 0x24
 8006894:	9b23      	ldr	r3, [sp, #140]	; 0x8c
 8006896:	2b00      	cmp	r3, #0
 8006898:	f340 8178 	ble.w	8006b8c <_dtoa_r+0xa3c>
 800689c:	930f      	str	r3, [sp, #60]	; 0x3c
 800689e:	461e      	mov	r6, r3
 80068a0:	9306      	str	r3, [sp, #24]
 80068a2:	e7d9      	b.n	8006858 <_dtoa_r+0x708>
 80068a4:	2301      	movs	r3, #1
 80068a6:	9309      	str	r3, [sp, #36]	; 0x24
 80068a8:	e7f4      	b.n	8006894 <_dtoa_r+0x744>
 80068aa:	201c      	movs	r0, #28
 80068ac:	9b07      	ldr	r3, [sp, #28]
 80068ae:	4403      	add	r3, r0
 80068b0:	9307      	str	r3, [sp, #28]
 80068b2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80068b4:	4403      	add	r3, r0
 80068b6:	930a      	str	r3, [sp, #40]	; 0x28
 80068b8:	9b04      	ldr	r3, [sp, #16]
 80068ba:	4403      	add	r3, r0
 80068bc:	9304      	str	r3, [sp, #16]
 80068be:	e6ed      	b.n	800669c <_dtoa_r+0x54c>
 80068c0:	4601      	mov	r1, r0
 80068c2:	4620      	mov	r0, r4
 80068c4:	f001 fb6c 	bl	8007fa0 <__pow5mult>
 80068c8:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80068ca:	4605      	mov	r5, r0
 80068cc:	2b01      	cmp	r3, #1
 80068ce:	f300 815a 	bgt.w	8006b86 <_dtoa_r+0xa36>
 80068d2:	f1ba 0f00 	cmp.w	sl, #0
 80068d6:	f040 8156 	bne.w	8006b86 <_dtoa_r+0xa36>
 80068da:	f3cb 0313 	ubfx	r3, fp, #0, #20
 80068de:	2b00      	cmp	r3, #0
 80068e0:	f040 82fe 	bne.w	8006ee0 <_dtoa_r+0xd90>
 80068e4:	f02b 4300 	bic.w	r3, fp, #2147483648	; 0x80000000
 80068e8:	0d1b      	lsrs	r3, r3, #20
 80068ea:	051b      	lsls	r3, r3, #20
 80068ec:	b133      	cbz	r3, 80068fc <_dtoa_r+0x7ac>
 80068ee:	9b07      	ldr	r3, [sp, #28]
 80068f0:	3301      	adds	r3, #1
 80068f2:	9307      	str	r3, [sp, #28]
 80068f4:	9b04      	ldr	r3, [sp, #16]
 80068f6:	3301      	adds	r3, #1
 80068f8:	9304      	str	r3, [sp, #16]
 80068fa:	2301      	movs	r3, #1
 80068fc:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 80068fe:	930d      	str	r3, [sp, #52]	; 0x34
 8006900:	2a00      	cmp	r2, #0
 8006902:	f43f aeb5 	beq.w	8006670 <_dtoa_r+0x520>
 8006906:	692b      	ldr	r3, [r5, #16]
 8006908:	eb05 0383 	add.w	r3, r5, r3, lsl #2
 800690c:	6918      	ldr	r0, [r3, #16]
 800690e:	f001 fa43 	bl	8007d98 <__hi0bits>
 8006912:	f1c0 0020 	rsb	r0, r0, #32
 8006916:	e6ac      	b.n	8006672 <_dtoa_r+0x522>
 8006918:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800691a:	2b00      	cmp	r3, #0
 800691c:	f000 80e2 	beq.w	8006ae4 <_dtoa_r+0x994>
 8006920:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006922:	2b00      	cmp	r3, #0
 8006924:	dd05      	ble.n	8006932 <_dtoa_r+0x7e2>
 8006926:	4641      	mov	r1, r8
 8006928:	461a      	mov	r2, r3
 800692a:	4620      	mov	r0, r4
 800692c:	f001 fb88 	bl	8008040 <__lshift>
 8006930:	4680      	mov	r8, r0
 8006932:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8006934:	2b00      	cmp	r3, #0
 8006936:	f040 82d9 	bne.w	8006eec <_dtoa_r+0xd9c>
 800693a:	f8cd 8028 	str.w	r8, [sp, #40]	; 0x28
 800693e:	f00a 0201 	and.w	r2, sl, #1
 8006942:	9f03      	ldr	r7, [sp, #12]
 8006944:	f8cd 9030 	str.w	r9, [sp, #48]	; 0x30
 8006948:	46ab      	mov	fp, r5
 800694a:	1e7b      	subs	r3, r7, #1
 800694c:	9207      	str	r2, [sp, #28]
 800694e:	9a06      	ldr	r2, [sp, #24]
 8006950:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
 8006954:	441a      	add	r2, r3
 8006956:	9d08      	ldr	r5, [sp, #32]
 8006958:	9209      	str	r2, [sp, #36]	; 0x24
 800695a:	4659      	mov	r1, fp
 800695c:	4628      	mov	r0, r5
 800695e:	f7ff fb5b 	bl	8006018 <quorem>
 8006962:	4641      	mov	r1, r8
 8006964:	4606      	mov	r6, r0
 8006966:	4628      	mov	r0, r5
 8006968:	f001 fbc6 	bl	80080f8 <__mcmp>
 800696c:	464a      	mov	r2, r9
 800696e:	4682      	mov	sl, r0
 8006970:	4659      	mov	r1, fp
 8006972:	4620      	mov	r0, r4
 8006974:	f001 fbdc 	bl	8008130 <__mdiff>
 8006978:	f106 0330 	add.w	r3, r6, #48	; 0x30
 800697c:	4602      	mov	r2, r0
 800697e:	9304      	str	r3, [sp, #16]
 8006980:	68c3      	ldr	r3, [r0, #12]
 8006982:	2b00      	cmp	r3, #0
 8006984:	f040 8082 	bne.w	8006a8c <_dtoa_r+0x93c>
 8006988:	4601      	mov	r1, r0
 800698a:	9006      	str	r0, [sp, #24]
 800698c:	4628      	mov	r0, r5
 800698e:	f001 fbb3 	bl	80080f8 <__mcmp>
 8006992:	9a06      	ldr	r2, [sp, #24]
 8006994:	4603      	mov	r3, r0
 8006996:	4611      	mov	r1, r2
 8006998:	4620      	mov	r0, r4
 800699a:	9306      	str	r3, [sp, #24]
 800699c:	f001 f9b0 	bl	8007d00 <_Bfree>
 80069a0:	9b22      	ldr	r3, [sp, #136]	; 0x88
 80069a2:	461a      	mov	r2, r3
 80069a4:	9b06      	ldr	r3, [sp, #24]
 80069a6:	431a      	orrs	r2, r3
 80069a8:	d103      	bne.n	80069b2 <_dtoa_r+0x862>
 80069aa:	9a07      	ldr	r2, [sp, #28]
 80069ac:	2a00      	cmp	r2, #0
 80069ae:	f000 82f3 	beq.w	8006f98 <_dtoa_r+0xe48>
 80069b2:	f1ba 0f00 	cmp.w	sl, #0
 80069b6:	f2c0 8277 	blt.w	8006ea8 <_dtoa_r+0xd58>
 80069ba:	9a22      	ldr	r2, [sp, #136]	; 0x88
 80069bc:	ea5a 0202 	orrs.w	r2, sl, r2
 80069c0:	d103      	bne.n	80069ca <_dtoa_r+0x87a>
 80069c2:	9a07      	ldr	r2, [sp, #28]
 80069c4:	2a00      	cmp	r2, #0
 80069c6:	f000 826f 	beq.w	8006ea8 <_dtoa_r+0xd58>
 80069ca:	2b00      	cmp	r3, #0
 80069cc:	f107 0601 	add.w	r6, r7, #1
 80069d0:	f300 82ad 	bgt.w	8006f2e <_dtoa_r+0xdde>
 80069d4:	f89d 3010 	ldrb.w	r3, [sp, #16]
 80069d8:	703b      	strb	r3, [r7, #0]
 80069da:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80069dc:	42bb      	cmp	r3, r7
 80069de:	f000 82b9 	beq.w	8006f54 <_dtoa_r+0xe04>
 80069e2:	4629      	mov	r1, r5
 80069e4:	2300      	movs	r3, #0
 80069e6:	220a      	movs	r2, #10
 80069e8:	4620      	mov	r0, r4
 80069ea:	f001 f993 	bl	8007d14 <__multadd>
 80069ee:	45c8      	cmp	r8, r9
 80069f0:	4605      	mov	r5, r0
 80069f2:	4641      	mov	r1, r8
 80069f4:	f04f 0300 	mov.w	r3, #0
 80069f8:	f04f 020a 	mov.w	r2, #10
 80069fc:	4620      	mov	r0, r4
 80069fe:	d00b      	beq.n	8006a18 <_dtoa_r+0x8c8>
 8006a00:	f001 f988 	bl	8007d14 <__multadd>
 8006a04:	4649      	mov	r1, r9
 8006a06:	4680      	mov	r8, r0
 8006a08:	2300      	movs	r3, #0
 8006a0a:	220a      	movs	r2, #10
 8006a0c:	4620      	mov	r0, r4
 8006a0e:	f001 f981 	bl	8007d14 <__multadd>
 8006a12:	4637      	mov	r7, r6
 8006a14:	4681      	mov	r9, r0
 8006a16:	e7a0      	b.n	800695a <_dtoa_r+0x80a>
 8006a18:	f001 f97c 	bl	8007d14 <__multadd>
 8006a1c:	4637      	mov	r7, r6
 8006a1e:	4680      	mov	r8, r0
 8006a20:	4681      	mov	r9, r0
 8006a22:	e79a      	b.n	800695a <_dtoa_r+0x80a>
 8006a24:	f000 81e4 	beq.w	8006df0 <_dtoa_r+0xca0>
 8006a28:	f1c9 0600 	rsb	r6, r9, #0
 8006a2c:	4bc2      	ldr	r3, [pc, #776]	; (8006d38 <_dtoa_r+0xbe8>)
 8006a2e:	f006 020f 	and.w	r2, r6, #15
 8006a32:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006a36:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006a3a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006a3e:	f7f9 ffb7 	bl	80009b0 <__aeabi_dmul>
 8006a42:	1136      	asrs	r6, r6, #4
 8006a44:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 8006a48:	f000 82b7 	beq.w	8006fba <_dtoa_r+0xe6a>
 8006a4c:	4fbb      	ldr	r7, [pc, #748]	; (8006d3c <_dtoa_r+0xbec>)
 8006a4e:	4602      	mov	r2, r0
 8006a50:	460b      	mov	r3, r1
 8006a52:	f04f 0c00 	mov.w	ip, #0
 8006a56:	f04f 0a02 	mov.w	sl, #2
 8006a5a:	f016 0f01 	tst.w	r6, #1
 8006a5e:	4610      	mov	r0, r2
 8006a60:	4619      	mov	r1, r3
 8006a62:	d008      	beq.n	8006a76 <_dtoa_r+0x926>
 8006a64:	f10a 0a01 	add.w	sl, sl, #1
 8006a68:	e9d7 2300 	ldrd	r2, r3, [r7]
 8006a6c:	f7f9 ffa0 	bl	80009b0 <__aeabi_dmul>
 8006a70:	46ac      	mov	ip, r5
 8006a72:	4602      	mov	r2, r0
 8006a74:	460b      	mov	r3, r1
 8006a76:	1076      	asrs	r6, r6, #1
 8006a78:	f107 0708 	add.w	r7, r7, #8
 8006a7c:	d1ed      	bne.n	8006a5a <_dtoa_r+0x90a>
 8006a7e:	f1bc 0f00 	cmp.w	ip, #0
 8006a82:	f43f acd3 	beq.w	800642c <_dtoa_r+0x2dc>
 8006a86:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8006a8a:	e4cf      	b.n	800642c <_dtoa_r+0x2dc>
 8006a8c:	2301      	movs	r3, #1
 8006a8e:	e782      	b.n	8006996 <_dtoa_r+0x846>
 8006a90:	2500      	movs	r5, #0
 8006a92:	46a8      	mov	r8, r5
 8006a94:	9a03      	ldr	r2, [sp, #12]
 8006a96:	2331      	movs	r3, #49	; 0x31
 8006a98:	f109 0b01 	add.w	fp, r9, #1
 8006a9c:	7013      	strb	r3, [r2, #0]
 8006a9e:	1c53      	adds	r3, r2, #1
 8006aa0:	4617      	mov	r7, r2
 8006aa2:	9303      	str	r3, [sp, #12]
 8006aa4:	e625      	b.n	80066f2 <_dtoa_r+0x5a2>
 8006aa6:	4629      	mov	r1, r5
 8006aa8:	9808      	ldr	r0, [sp, #32]
 8006aaa:	f001 fb25 	bl	80080f8 <__mcmp>
 8006aae:	2800      	cmp	r0, #0
 8006ab0:	f6bf ae10 	bge.w	80066d4 <_dtoa_r+0x584>
 8006ab4:	2300      	movs	r3, #0
 8006ab6:	9f0f      	ldr	r7, [sp, #60]	; 0x3c
 8006ab8:	9908      	ldr	r1, [sp, #32]
 8006aba:	220a      	movs	r2, #10
 8006abc:	4620      	mov	r0, r4
 8006abe:	429f      	cmp	r7, r3
 8006ac0:	bfcc      	ite	gt
 8006ac2:	2600      	movgt	r6, #0
 8006ac4:	f006 0601 	andle.w	r6, r6, #1
 8006ac8:	f001 f924 	bl	8007d14 <__multadd>
 8006acc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006ace:	f109 39ff 	add.w	r9, r9, #4294967295
 8006ad2:	9008      	str	r0, [sp, #32]
 8006ad4:	2b00      	cmp	r3, #0
 8006ad6:	f040 8274 	bne.w	8006fc2 <_dtoa_r+0xe72>
 8006ada:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006adc:	9306      	str	r3, [sp, #24]
 8006ade:	2e00      	cmp	r6, #0
 8006ae0:	f47f adff 	bne.w	80066e2 <_dtoa_r+0x592>
 8006ae4:	f8dd a00c 	ldr.w	sl, [sp, #12]
 8006ae8:	f8dd b018 	ldr.w	fp, [sp, #24]
 8006aec:	4656      	mov	r6, sl
 8006aee:	9f08      	ldr	r7, [sp, #32]
 8006af0:	e002      	b.n	8006af8 <_dtoa_r+0x9a8>
 8006af2:	f001 f90f 	bl	8007d14 <__multadd>
 8006af6:	4607      	mov	r7, r0
 8006af8:	4629      	mov	r1, r5
 8006afa:	4638      	mov	r0, r7
 8006afc:	f7ff fa8c 	bl	8006018 <quorem>
 8006b00:	f100 0c30 	add.w	ip, r0, #48	; 0x30
 8006b04:	2300      	movs	r3, #0
 8006b06:	220a      	movs	r2, #10
 8006b08:	f806 cb01 	strb.w	ip, [r6], #1
 8006b0c:	eba6 0e0a 	sub.w	lr, r6, sl
 8006b10:	4639      	mov	r1, r7
 8006b12:	4620      	mov	r0, r4
 8006b14:	45de      	cmp	lr, fp
 8006b16:	dbec      	blt.n	8006af2 <_dtoa_r+0x9a2>
 8006b18:	46e3      	mov	fp, ip
 8006b1a:	f04f 0a00 	mov.w	sl, #0
 8006b1e:	9708      	str	r7, [sp, #32]
 8006b20:	2201      	movs	r2, #1
 8006b22:	9908      	ldr	r1, [sp, #32]
 8006b24:	4620      	mov	r0, r4
 8006b26:	f001 fa8b 	bl	8008040 <__lshift>
 8006b2a:	4629      	mov	r1, r5
 8006b2c:	9008      	str	r0, [sp, #32]
 8006b2e:	f001 fae3 	bl	80080f8 <__mcmp>
 8006b32:	2800      	cmp	r0, #0
 8006b34:	f816 2c01 	ldrb.w	r2, [r6, #-1]
 8006b38:	f340 81a7 	ble.w	8006e8a <_dtoa_r+0xd3a>
 8006b3c:	9903      	ldr	r1, [sp, #12]
 8006b3e:	e005      	b.n	8006b4c <_dtoa_r+0x9fc>
 8006b40:	428b      	cmp	r3, r1
 8006b42:	f000 8194 	beq.w	8006e6e <_dtoa_r+0xd1e>
 8006b46:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006b4a:	461e      	mov	r6, r3
 8006b4c:	2a39      	cmp	r2, #57	; 0x39
 8006b4e:	f106 33ff 	add.w	r3, r6, #4294967295
 8006b52:	d0f5      	beq.n	8006b40 <_dtoa_r+0x9f0>
 8006b54:	3201      	adds	r2, #1
 8006b56:	46cb      	mov	fp, r9
 8006b58:	701a      	strb	r2, [r3, #0]
 8006b5a:	4629      	mov	r1, r5
 8006b5c:	4620      	mov	r0, r4
 8006b5e:	f001 f8cf 	bl	8007d00 <_Bfree>
 8006b62:	f1b8 0f00 	cmp.w	r8, #0
 8006b66:	f000 8188 	beq.w	8006e7a <_dtoa_r+0xd2a>
 8006b6a:	f1ba 0f00 	cmp.w	sl, #0
 8006b6e:	f000 8241 	beq.w	8006ff4 <_dtoa_r+0xea4>
 8006b72:	45c2      	cmp	sl, r8
 8006b74:	f000 823e 	beq.w	8006ff4 <_dtoa_r+0xea4>
 8006b78:	4651      	mov	r1, sl
 8006b7a:	4620      	mov	r0, r4
 8006b7c:	9f03      	ldr	r7, [sp, #12]
 8006b7e:	f001 f8bf 	bl	8007d00 <_Bfree>
 8006b82:	9603      	str	r6, [sp, #12]
 8006b84:	e5bc      	b.n	8006700 <_dtoa_r+0x5b0>
 8006b86:	2300      	movs	r3, #0
 8006b88:	930d      	str	r3, [sp, #52]	; 0x34
 8006b8a:	e6bc      	b.n	8006906 <_dtoa_r+0x7b6>
 8006b8c:	2301      	movs	r3, #1
 8006b8e:	9323      	str	r3, [sp, #140]	; 0x8c
 8006b90:	9306      	str	r3, [sp, #24]
 8006b92:	e405      	b.n	80063a0 <_dtoa_r+0x250>
 8006b94:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006b98:	f7f9 ff0a 	bl	80009b0 <__aeabi_dmul>
 8006b9c:	9b03      	ldr	r3, [sp, #12]
 8006b9e:	f1b8 0f01 	cmp.w	r8, #1
 8006ba2:	f883 a000 	strb.w	sl, [r3]
 8006ba6:	e9cd 010a 	strd	r0, r1, [sp, #40]	; 0x28
 8006baa:	d01d      	beq.n	8006be8 <_dtoa_r+0xa98>
 8006bac:	9b03      	ldr	r3, [sp, #12]
 8006bae:	eb03 0a08 	add.w	sl, r3, r8
 8006bb2:	2200      	movs	r2, #0
 8006bb4:	4b62      	ldr	r3, [pc, #392]	; (8006d40 <_dtoa_r+0xbf0>)
 8006bb6:	4630      	mov	r0, r6
 8006bb8:	4639      	mov	r1, r7
 8006bba:	f7f9 fef9 	bl	80009b0 <__aeabi_dmul>
 8006bbe:	460f      	mov	r7, r1
 8006bc0:	4606      	mov	r6, r0
 8006bc2:	f7fa f9a5 	bl	8000f10 <__aeabi_d2iz>
 8006bc6:	4680      	mov	r8, r0
 8006bc8:	f7f9 fe88 	bl	80008dc <__aeabi_i2d>
 8006bcc:	4602      	mov	r2, r0
 8006bce:	460b      	mov	r3, r1
 8006bd0:	f108 0830 	add.w	r8, r8, #48	; 0x30
 8006bd4:	4630      	mov	r0, r6
 8006bd6:	4639      	mov	r1, r7
 8006bd8:	f7f9 fd32 	bl	8000640 <__aeabi_dsub>
 8006bdc:	f805 8b01 	strb.w	r8, [r5], #1
 8006be0:	4555      	cmp	r5, sl
 8006be2:	4606      	mov	r6, r0
 8006be4:	460f      	mov	r7, r1
 8006be6:	d1e4      	bne.n	8006bb2 <_dtoa_r+0xa62>
 8006be8:	2200      	movs	r2, #0
 8006bea:	4b56      	ldr	r3, [pc, #344]	; (8006d44 <_dtoa_r+0xbf4>)
 8006bec:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8006bf0:	f7f9 fd28 	bl	8000644 <__adddf3>
 8006bf4:	4632      	mov	r2, r6
 8006bf6:	463b      	mov	r3, r7
 8006bf8:	f7fa f94c 	bl	8000e94 <__aeabi_dcmplt>
 8006bfc:	2800      	cmp	r0, #0
 8006bfe:	f040 8096 	bne.w	8006d2e <_dtoa_r+0xbde>
 8006c02:	2000      	movs	r0, #0
 8006c04:	494f      	ldr	r1, [pc, #316]	; (8006d44 <_dtoa_r+0xbf4>)
 8006c06:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 8006c0a:	f7f9 fd19 	bl	8000640 <__aeabi_dsub>
 8006c0e:	4632      	mov	r2, r6
 8006c10:	463b      	mov	r3, r7
 8006c12:	f7fa f95d 	bl	8000ed0 <__aeabi_dcmpgt>
 8006c16:	b908      	cbnz	r0, 8006c1c <_dtoa_r+0xacc>
 8006c18:	e4e8      	b.n	80065ec <_dtoa_r+0x49c>
 8006c1a:	4615      	mov	r5, r2
 8006c1c:	f815 3c01 	ldrb.w	r3, [r5, #-1]
 8006c20:	1e6a      	subs	r2, r5, #1
 8006c22:	2b30      	cmp	r3, #48	; 0x30
 8006c24:	d0f9      	beq.n	8006c1a <_dtoa_r+0xaca>
 8006c26:	9f03      	ldr	r7, [sp, #12]
 8006c28:	9503      	str	r5, [sp, #12]
 8006c2a:	e56d      	b.n	8006708 <_dtoa_r+0x5b8>
 8006c2c:	2301      	movs	r3, #1
 8006c2e:	9309      	str	r3, [sp, #36]	; 0x24
 8006c30:	e609      	b.n	8006846 <_dtoa_r+0x6f6>
 8006c32:	e9dd 6704 	ldrd	r6, r7, [sp, #16]
 8006c36:	9903      	ldr	r1, [sp, #12]
 8006c38:	4650      	mov	r0, sl
 8006c3a:	4632      	mov	r2, r6
 8006c3c:	463b      	mov	r3, r7
 8006c3e:	1c4d      	adds	r5, r1, #1
 8006c40:	4659      	mov	r1, fp
 8006c42:	f7f9 ffdf 	bl	8000c04 <__aeabi_ddiv>
 8006c46:	f7fa f963 	bl	8000f10 <__aeabi_d2iz>
 8006c4a:	4680      	mov	r8, r0
 8006c4c:	f7f9 fe46 	bl	80008dc <__aeabi_i2d>
 8006c50:	4632      	mov	r2, r6
 8006c52:	463b      	mov	r3, r7
 8006c54:	f7f9 feac 	bl	80009b0 <__aeabi_dmul>
 8006c58:	4602      	mov	r2, r0
 8006c5a:	460b      	mov	r3, r1
 8006c5c:	4650      	mov	r0, sl
 8006c5e:	4659      	mov	r1, fp
 8006c60:	f7f9 fcee 	bl	8000640 <__aeabi_dsub>
 8006c64:	f108 0330 	add.w	r3, r8, #48	; 0x30
 8006c68:	9a03      	ldr	r2, [sp, #12]
 8006c6a:	4606      	mov	r6, r0
 8006c6c:	460f      	mov	r7, r1
 8006c6e:	7013      	strb	r3, [r2, #0]
 8006c70:	9b06      	ldr	r3, [sp, #24]
 8006c72:	2b01      	cmp	r3, #1
 8006c74:	d043      	beq.n	8006cfe <_dtoa_r+0xbae>
 8006c76:	2200      	movs	r2, #0
 8006c78:	4b31      	ldr	r3, [pc, #196]	; (8006d40 <_dtoa_r+0xbf0>)
 8006c7a:	f7f9 fe99 	bl	80009b0 <__aeabi_dmul>
 8006c7e:	2200      	movs	r2, #0
 8006c80:	2300      	movs	r3, #0
 8006c82:	4606      	mov	r6, r0
 8006c84:	460f      	mov	r7, r1
 8006c86:	f7fa f8fb 	bl	8000e80 <__aeabi_dcmpeq>
 8006c8a:	2800      	cmp	r0, #0
 8006c8c:	d171      	bne.n	8006d72 <_dtoa_r+0xc22>
 8006c8e:	f8cd 901c 	str.w	r9, [sp, #28]
 8006c92:	f04f 0a00 	mov.w	sl, #0
 8006c96:	f8dd 9018 	ldr.w	r9, [sp, #24]
 8006c9a:	f8df b0a4 	ldr.w	fp, [pc, #164]	; 8006d40 <_dtoa_r+0xbf0>
 8006c9e:	9406      	str	r4, [sp, #24]
 8006ca0:	9c03      	ldr	r4, [sp, #12]
 8006ca2:	e009      	b.n	8006cb8 <_dtoa_r+0xb68>
 8006ca4:	f7f9 fe84 	bl	80009b0 <__aeabi_dmul>
 8006ca8:	2200      	movs	r2, #0
 8006caa:	2300      	movs	r3, #0
 8006cac:	4606      	mov	r6, r0
 8006cae:	460f      	mov	r7, r1
 8006cb0:	f7fa f8e6 	bl	8000e80 <__aeabi_dcmpeq>
 8006cb4:	2800      	cmp	r0, #0
 8006cb6:	d15a      	bne.n	8006d6e <_dtoa_r+0xc1e>
 8006cb8:	4630      	mov	r0, r6
 8006cba:	4639      	mov	r1, r7
 8006cbc:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006cc0:	f7f9 ffa0 	bl	8000c04 <__aeabi_ddiv>
 8006cc4:	f7fa f924 	bl	8000f10 <__aeabi_d2iz>
 8006cc8:	4680      	mov	r8, r0
 8006cca:	f7f9 fe07 	bl	80008dc <__aeabi_i2d>
 8006cce:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006cd2:	f7f9 fe6d 	bl	80009b0 <__aeabi_dmul>
 8006cd6:	4602      	mov	r2, r0
 8006cd8:	460b      	mov	r3, r1
 8006cda:	4630      	mov	r0, r6
 8006cdc:	4639      	mov	r1, r7
 8006cde:	f7f9 fcaf 	bl	8000640 <__aeabi_dsub>
 8006ce2:	f108 0c30 	add.w	ip, r8, #48	; 0x30
 8006ce6:	4606      	mov	r6, r0
 8006ce8:	460f      	mov	r7, r1
 8006cea:	f805 cb01 	strb.w	ip, [r5], #1
 8006cee:	eba5 0c04 	sub.w	ip, r5, r4
 8006cf2:	4652      	mov	r2, sl
 8006cf4:	465b      	mov	r3, fp
 8006cf6:	45cc      	cmp	ip, r9
 8006cf8:	d1d4      	bne.n	8006ca4 <_dtoa_r+0xb54>
 8006cfa:	e9dd 4906 	ldrd	r4, r9, [sp, #24]
 8006cfe:	4632      	mov	r2, r6
 8006d00:	463b      	mov	r3, r7
 8006d02:	4630      	mov	r0, r6
 8006d04:	4639      	mov	r1, r7
 8006d06:	f7f9 fc9d 	bl	8000644 <__adddf3>
 8006d0a:	4606      	mov	r6, r0
 8006d0c:	460f      	mov	r7, r1
 8006d0e:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006d12:	f7fa f8dd 	bl	8000ed0 <__aeabi_dcmpgt>
 8006d16:	b948      	cbnz	r0, 8006d2c <_dtoa_r+0xbdc>
 8006d18:	4630      	mov	r0, r6
 8006d1a:	4639      	mov	r1, r7
 8006d1c:	e9dd 2304 	ldrd	r2, r3, [sp, #16]
 8006d20:	f7fa f8ae 	bl	8000e80 <__aeabi_dcmpeq>
 8006d24:	b328      	cbz	r0, 8006d72 <_dtoa_r+0xc22>
 8006d26:	f018 0f01 	tst.w	r8, #1
 8006d2a:	d022      	beq.n	8006d72 <_dtoa_r+0xc22>
 8006d2c:	46cb      	mov	fp, r9
 8006d2e:	f815 ac01 	ldrb.w	sl, [r5, #-1]
 8006d32:	9a03      	ldr	r2, [sp, #12]
 8006d34:	e00e      	b.n	8006d54 <_dtoa_r+0xc04>
 8006d36:	bf00      	nop
 8006d38:	080092c8 	.word	0x080092c8
 8006d3c:	080092a0 	.word	0x080092a0
 8006d40:	40240000 	.word	0x40240000
 8006d44:	3fe00000 	.word	0x3fe00000
 8006d48:	4293      	cmp	r3, r2
 8006d4a:	f000 8086 	beq.w	8006e5a <_dtoa_r+0xd0a>
 8006d4e:	f813 ac01 	ldrb.w	sl, [r3, #-1]
 8006d52:	461d      	mov	r5, r3
 8006d54:	f1ba 0f39 	cmp.w	sl, #57	; 0x39
 8006d58:	f105 33ff 	add.w	r3, r5, #4294967295
 8006d5c:	d0f4      	beq.n	8006d48 <_dtoa_r+0xbf8>
 8006d5e:	9203      	str	r2, [sp, #12]
 8006d60:	f10a 0a01 	add.w	sl, sl, #1
 8006d64:	9f03      	ldr	r7, [sp, #12]
 8006d66:	9503      	str	r5, [sp, #12]
 8006d68:	f883 a000 	strb.w	sl, [r3]
 8006d6c:	e4cc      	b.n	8006708 <_dtoa_r+0x5b8>
 8006d6e:	e9dd 4906 	ldrd	r4, r9, [sp, #24]
 8006d72:	9f03      	ldr	r7, [sp, #12]
 8006d74:	46cb      	mov	fp, r9
 8006d76:	9503      	str	r5, [sp, #12]
 8006d78:	e4c6      	b.n	8006708 <_dtoa_r+0x5b8>
 8006d7a:	4629      	mov	r1, r5
 8006d7c:	2205      	movs	r2, #5
 8006d7e:	4620      	mov	r0, r4
 8006d80:	f000 ffc8 	bl	8007d14 <__multadd>
 8006d84:	4601      	mov	r1, r0
 8006d86:	4605      	mov	r5, r0
 8006d88:	9808      	ldr	r0, [sp, #32]
 8006d8a:	f001 f9b5 	bl	80080f8 <__mcmp>
 8006d8e:	2800      	cmp	r0, #0
 8006d90:	f73f ae80 	bgt.w	8006a94 <_dtoa_r+0x944>
 8006d94:	e4a9      	b.n	80066ea <_dtoa_r+0x59a>
 8006d96:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006d98:	4620      	mov	r0, r4
 8006d9a:	9908      	ldr	r1, [sp, #32]
 8006d9c:	f001 f900 	bl	8007fa0 <__pow5mult>
 8006da0:	9008      	str	r0, [sp, #32]
 8006da2:	e458      	b.n	8006656 <_dtoa_r+0x506>
 8006da4:	9b06      	ldr	r3, [sp, #24]
 8006da6:	2b00      	cmp	r3, #0
 8006da8:	f43f abf8 	beq.w	800659c <_dtoa_r+0x44c>
 8006dac:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8006dae:	2d00      	cmp	r5, #0
 8006db0:	f77f ac1c 	ble.w	80065ec <_dtoa_r+0x49c>
 8006db4:	2200      	movs	r2, #0
 8006db6:	4b94      	ldr	r3, [pc, #592]	; (8007008 <_dtoa_r+0xeb8>)
 8006db8:	f109 3bff 	add.w	fp, r9, #4294967295
 8006dbc:	46a8      	mov	r8, r5
 8006dbe:	e9dd 010a 	ldrd	r0, r1, [sp, #40]	; 0x28
 8006dc2:	f7f9 fdf5 	bl	80009b0 <__aeabi_dmul>
 8006dc6:	4606      	mov	r6, r0
 8006dc8:	460f      	mov	r7, r1
 8006dca:	f10a 0001 	add.w	r0, sl, #1
 8006dce:	e9cd 670a 	strd	r6, r7, [sp, #40]	; 0x28
 8006dd2:	f7f9 fd83 	bl	80008dc <__aeabi_i2d>
 8006dd6:	4632      	mov	r2, r6
 8006dd8:	463b      	mov	r3, r7
 8006dda:	f7f9 fde9 	bl	80009b0 <__aeabi_dmul>
 8006dde:	2200      	movs	r2, #0
 8006de0:	4b8a      	ldr	r3, [pc, #552]	; (800700c <_dtoa_r+0xebc>)
 8006de2:	f7f9 fc2f 	bl	8000644 <__adddf3>
 8006de6:	4606      	mov	r6, r0
 8006de8:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006dec:	f7ff bb3e 	b.w	800646c <_dtoa_r+0x31c>
 8006df0:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8006df4:	f04f 0a02 	mov.w	sl, #2
 8006df8:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8006dfc:	f7ff bb16 	b.w	800642c <_dtoa_r+0x2dc>
 8006e00:	463a      	mov	r2, r7
 8006e02:	4641      	mov	r1, r8
 8006e04:	4620      	mov	r0, r4
 8006e06:	f001 f8cb 	bl	8007fa0 <__pow5mult>
 8006e0a:	9e08      	ldr	r6, [sp, #32]
 8006e0c:	4601      	mov	r1, r0
 8006e0e:	4680      	mov	r8, r0
 8006e10:	4632      	mov	r2, r6
 8006e12:	4620      	mov	r0, r4
 8006e14:	f001 f81c 	bl	8007e50 <__multiply>
 8006e18:	4607      	mov	r7, r0
 8006e1a:	4631      	mov	r1, r6
 8006e1c:	4620      	mov	r0, r4
 8006e1e:	f000 ff6f 	bl	8007d00 <_Bfree>
 8006e22:	9708      	str	r7, [sp, #32]
 8006e24:	2d00      	cmp	r5, #0
 8006e26:	f43f ac16 	beq.w	8006656 <_dtoa_r+0x506>
 8006e2a:	e40e      	b.n	800664a <_dtoa_r+0x4fa>
 8006e2c:	9a14      	ldr	r2, [sp, #80]	; 0x50
 8006e2e:	2a00      	cmp	r2, #0
 8006e30:	d04f      	beq.n	8006ed2 <_dtoa_r+0xd82>
 8006e32:	9907      	ldr	r1, [sp, #28]
 8006e34:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8006e38:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006e3a:	910a      	str	r1, [sp, #40]	; 0x28
 8006e3c:	9a04      	ldr	r2, [sp, #16]
 8006e3e:	441a      	add	r2, r3
 8006e40:	9204      	str	r2, [sp, #16]
 8006e42:	460a      	mov	r2, r1
 8006e44:	441a      	add	r2, r3
 8006e46:	9207      	str	r2, [sp, #28]
 8006e48:	e4ba      	b.n	80067c0 <_dtoa_r+0x670>
 8006e4a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8006e4c:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8006e4e:	1afb      	subs	r3, r7, r3
 8006e50:	970c      	str	r7, [sp, #48]	; 0x30
 8006e52:	2700      	movs	r7, #0
 8006e54:	441a      	add	r2, r3
 8006e56:	920d      	str	r2, [sp, #52]	; 0x34
 8006e58:	e4a6      	b.n	80067a8 <_dtoa_r+0x658>
 8006e5a:	4611      	mov	r1, r2
 8006e5c:	9203      	str	r2, [sp, #12]
 8006e5e:	2230      	movs	r2, #48	; 0x30
 8006e60:	f10b 0b01 	add.w	fp, fp, #1
 8006e64:	460b      	mov	r3, r1
 8006e66:	700a      	strb	r2, [r1, #0]
 8006e68:	f815 ac01 	ldrb.w	sl, [r5, #-1]
 8006e6c:	e778      	b.n	8006d60 <_dtoa_r+0xc10>
 8006e6e:	2331      	movs	r3, #49	; 0x31
 8006e70:	9a03      	ldr	r2, [sp, #12]
 8006e72:	f109 0b01 	add.w	fp, r9, #1
 8006e76:	7013      	strb	r3, [r2, #0]
 8006e78:	e66f      	b.n	8006b5a <_dtoa_r+0xa0a>
 8006e7a:	9f03      	ldr	r7, [sp, #12]
 8006e7c:	9603      	str	r6, [sp, #12]
 8006e7e:	e443      	b.n	8006708 <_dtoa_r+0x5b8>
 8006e80:	e9dd 2306 	ldrd	r2, r3, [sp, #24]
 8006e84:	1a9b      	subs	r3, r3, r2
 8006e86:	930a      	str	r3, [sp, #40]	; 0x28
 8006e88:	e49a      	b.n	80067c0 <_dtoa_r+0x670>
 8006e8a:	d107      	bne.n	8006e9c <_dtoa_r+0xd4c>
 8006e8c:	f01b 0f01 	tst.w	fp, #1
 8006e90:	f47f ae54 	bne.w	8006b3c <_dtoa_r+0x9ec>
 8006e94:	e002      	b.n	8006e9c <_dtoa_r+0xd4c>
 8006e96:	f816 2c02 	ldrb.w	r2, [r6, #-2]
 8006e9a:	461e      	mov	r6, r3
 8006e9c:	2a30      	cmp	r2, #48	; 0x30
 8006e9e:	f106 33ff 	add.w	r3, r6, #4294967295
 8006ea2:	d0f8      	beq.n	8006e96 <_dtoa_r+0xd46>
 8006ea4:	46cb      	mov	fp, r9
 8006ea6:	e658      	b.n	8006b5a <_dtoa_r+0xa0a>
 8006ea8:	2b00      	cmp	r3, #0
 8006eaa:	46b2      	mov	sl, r6
 8006eac:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8006eb0:	4629      	mov	r1, r5
 8006eb2:	9508      	str	r5, [sp, #32]
 8006eb4:	f107 0601 	add.w	r6, r7, #1
 8006eb8:	465d      	mov	r5, fp
 8006eba:	f8dd 9030 	ldr.w	r9, [sp, #48]	; 0x30
 8006ebe:	f8dd b010 	ldr.w	fp, [sp, #16]
 8006ec2:	dc51      	bgt.n	8006f68 <_dtoa_r+0xe18>
 8006ec4:	46c2      	mov	sl, r8
 8006ec6:	f887 b000 	strb.w	fp, [r7]
 8006eca:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 8006ece:	46cb      	mov	fp, r9
 8006ed0:	e643      	b.n	8006b5a <_dtoa_r+0xa0a>
 8006ed2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006ed4:	9907      	ldr	r1, [sp, #28]
 8006ed6:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006ed8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8006edc:	910a      	str	r1, [sp, #40]	; 0x28
 8006ede:	e7ad      	b.n	8006e3c <_dtoa_r+0xcec>
 8006ee0:	2300      	movs	r3, #0
 8006ee2:	e50b      	b.n	80068fc <_dtoa_r+0x7ac>
 8006ee4:	2500      	movs	r5, #0
 8006ee6:	46a8      	mov	r8, r5
 8006ee8:	f7ff bbff 	b.w	80066ea <_dtoa_r+0x59a>
 8006eec:	f8d8 1004 	ldr.w	r1, [r8, #4]
 8006ef0:	4620      	mov	r0, r4
 8006ef2:	f000 fedf 	bl	8007cb4 <_Balloc>
 8006ef6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006efa:	4606      	mov	r6, r0
 8006efc:	f108 010c 	add.w	r1, r8, #12
 8006f00:	3302      	adds	r3, #2
 8006f02:	300c      	adds	r0, #12
 8006f04:	009a      	lsls	r2, r3, #2
 8006f06:	f7f9 fb21 	bl	800054c <memcpy>
 8006f0a:	4631      	mov	r1, r6
 8006f0c:	2201      	movs	r2, #1
 8006f0e:	4620      	mov	r0, r4
 8006f10:	f001 f896 	bl	8008040 <__lshift>
 8006f14:	900a      	str	r0, [sp, #40]	; 0x28
 8006f16:	e512      	b.n	800693e <_dtoa_r+0x7ee>
 8006f18:	46a2      	mov	sl, r4
 8006f1a:	9a03      	ldr	r2, [sp, #12]
 8006f1c:	f8dd b048 	ldr.w	fp, [sp, #72]	; 0x48
 8006f20:	464c      	mov	r4, r9
 8006f22:	e717      	b.n	8006d54 <_dtoa_r+0xc04>
 8006f24:	464c      	mov	r4, r9
 8006f26:	f8dd 9054 	ldr.w	r9, [sp, #84]	; 0x54
 8006f2a:	f7ff bb5f 	b.w	80065ec <_dtoa_r+0x49c>
 8006f2e:	9508      	str	r5, [sp, #32]
 8006f30:	465d      	mov	r5, fp
 8006f32:	f8dd b010 	ldr.w	fp, [sp, #16]
 8006f36:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8006f3a:	f1bb 0f39 	cmp.w	fp, #57	; 0x39
 8006f3e:	f8dd 9030 	ldr.w	r9, [sp, #48]	; 0x30
 8006f42:	d022      	beq.n	8006f8a <_dtoa_r+0xe3a>
 8006f44:	f10b 0301 	add.w	r3, fp, #1
 8006f48:	46c2      	mov	sl, r8
 8006f4a:	46cb      	mov	fp, r9
 8006f4c:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 8006f50:	703b      	strb	r3, [r7, #0]
 8006f52:	e602      	b.n	8006b5a <_dtoa_r+0xa0a>
 8006f54:	464b      	mov	r3, r9
 8006f56:	9508      	str	r5, [sp, #32]
 8006f58:	46c2      	mov	sl, r8
 8006f5a:	465d      	mov	r5, fp
 8006f5c:	f8dd 9030 	ldr.w	r9, [sp, #48]	; 0x30
 8006f60:	4698      	mov	r8, r3
 8006f62:	f8dd b010 	ldr.w	fp, [sp, #16]
 8006f66:	e5db      	b.n	8006b20 <_dtoa_r+0x9d0>
 8006f68:	2201      	movs	r2, #1
 8006f6a:	4620      	mov	r0, r4
 8006f6c:	f001 f868 	bl	8008040 <__lshift>
 8006f70:	4629      	mov	r1, r5
 8006f72:	9008      	str	r0, [sp, #32]
 8006f74:	f001 f8c0 	bl	80080f8 <__mcmp>
 8006f78:	2800      	cmp	r0, #0
 8006f7a:	dd2f      	ble.n	8006fdc <_dtoa_r+0xe8c>
 8006f7c:	f1bb 0f39 	cmp.w	fp, #57	; 0x39
 8006f80:	d003      	beq.n	8006f8a <_dtoa_r+0xe3a>
 8006f82:	4653      	mov	r3, sl
 8006f84:	f103 0b31 	add.w	fp, r3, #49	; 0x31
 8006f88:	e79c      	b.n	8006ec4 <_dtoa_r+0xd74>
 8006f8a:	2239      	movs	r2, #57	; 0x39
 8006f8c:	46c2      	mov	sl, r8
 8006f8e:	9903      	ldr	r1, [sp, #12]
 8006f90:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 8006f94:	703a      	strb	r2, [r7, #0]
 8006f96:	e5d9      	b.n	8006b4c <_dtoa_r+0x9fc>
 8006f98:	9508      	str	r5, [sp, #32]
 8006f9a:	465d      	mov	r5, fp
 8006f9c:	f8dd b010 	ldr.w	fp, [sp, #16]
 8006fa0:	4633      	mov	r3, r6
 8006fa2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8006fa6:	1c7e      	adds	r6, r7, #1
 8006fa8:	f1bb 0f39 	cmp.w	fp, #57	; 0x39
 8006fac:	f8dd 9030 	ldr.w	r9, [sp, #48]	; 0x30
 8006fb0:	d0eb      	beq.n	8006f8a <_dtoa_r+0xe3a>
 8006fb2:	f1ba 0f00 	cmp.w	sl, #0
 8006fb6:	dce5      	bgt.n	8006f84 <_dtoa_r+0xe34>
 8006fb8:	e784      	b.n	8006ec4 <_dtoa_r+0xd74>
 8006fba:	f04f 0a02 	mov.w	sl, #2
 8006fbe:	f7ff ba35 	b.w	800642c <_dtoa_r+0x2dc>
 8006fc2:	4641      	mov	r1, r8
 8006fc4:	2300      	movs	r3, #0
 8006fc6:	220a      	movs	r2, #10
 8006fc8:	4620      	mov	r0, r4
 8006fca:	f000 fea3 	bl	8007d14 <__multadd>
 8006fce:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006fd0:	4680      	mov	r8, r0
 8006fd2:	9306      	str	r3, [sp, #24]
 8006fd4:	2e00      	cmp	r6, #0
 8006fd6:	f47f ab84 	bne.w	80066e2 <_dtoa_r+0x592>
 8006fda:	e4a1      	b.n	8006920 <_dtoa_r+0x7d0>
 8006fdc:	f47f af72 	bne.w	8006ec4 <_dtoa_r+0xd74>
 8006fe0:	f01b 0f01 	tst.w	fp, #1
 8006fe4:	f43f af6e 	beq.w	8006ec4 <_dtoa_r+0xd74>
 8006fe8:	e7c8      	b.n	8006f7c <_dtoa_r+0xe2c>
 8006fea:	f43f ab57 	beq.w	800669c <_dtoa_r+0x54c>
 8006fee:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8006ff2:	e45b      	b.n	80068ac <_dtoa_r+0x75c>
 8006ff4:	9f03      	ldr	r7, [sp, #12]
 8006ff6:	9603      	str	r6, [sp, #12]
 8006ff8:	f7ff bb82 	b.w	8006700 <_dtoa_r+0x5b0>
 8006ffc:	f1ba 0f00 	cmp.w	sl, #0
 8007000:	f43f ac6b 	beq.w	80068da <_dtoa_r+0x78a>
 8007004:	f7ff bb34 	b.w	8006670 <_dtoa_r+0x520>
 8007008:	40240000 	.word	0x40240000
 800700c:	401c0000 	.word	0x401c0000

08007010 <__sflush_r>:
 8007010:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007014:	b29a      	uxth	r2, r3
 8007016:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800701a:	460c      	mov	r4, r1
 800701c:	0711      	lsls	r1, r2, #28
 800701e:	4680      	mov	r8, r0
 8007020:	d444      	bmi.n	80070ac <__sflush_r+0x9c>
 8007022:	6862      	ldr	r2, [r4, #4]
 8007024:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007028:	2a00      	cmp	r2, #0
 800702a:	81a3      	strh	r3, [r4, #12]
 800702c:	dd59      	ble.n	80070e2 <__sflush_r+0xd2>
 800702e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007030:	2d00      	cmp	r5, #0
 8007032:	d053      	beq.n	80070dc <__sflush_r+0xcc>
 8007034:	2200      	movs	r2, #0
 8007036:	b29b      	uxth	r3, r3
 8007038:	f8d8 6000 	ldr.w	r6, [r8]
 800703c:	69e1      	ldr	r1, [r4, #28]
 800703e:	f8c8 2000 	str.w	r2, [r8]
 8007042:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8007046:	f040 8083 	bne.w	8007150 <__sflush_r+0x140>
 800704a:	2301      	movs	r3, #1
 800704c:	4640      	mov	r0, r8
 800704e:	47a8      	blx	r5
 8007050:	1c42      	adds	r2, r0, #1
 8007052:	d04a      	beq.n	80070ea <__sflush_r+0xda>
 8007054:	89a3      	ldrh	r3, [r4, #12]
 8007056:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007058:	69e1      	ldr	r1, [r4, #28]
 800705a:	075b      	lsls	r3, r3, #29
 800705c:	d505      	bpl.n	800706a <__sflush_r+0x5a>
 800705e:	6862      	ldr	r2, [r4, #4]
 8007060:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8007062:	1a80      	subs	r0, r0, r2
 8007064:	b10b      	cbz	r3, 800706a <__sflush_r+0x5a>
 8007066:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8007068:	1ac0      	subs	r0, r0, r3
 800706a:	4602      	mov	r2, r0
 800706c:	2300      	movs	r3, #0
 800706e:	4640      	mov	r0, r8
 8007070:	47a8      	blx	r5
 8007072:	1c47      	adds	r7, r0, #1
 8007074:	d045      	beq.n	8007102 <__sflush_r+0xf2>
 8007076:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800707a:	2100      	movs	r1, #0
 800707c:	6922      	ldr	r2, [r4, #16]
 800707e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8007082:	81a3      	strh	r3, [r4, #12]
 8007084:	04db      	lsls	r3, r3, #19
 8007086:	e9c4 2100 	strd	r2, r1, [r4]
 800708a:	d500      	bpl.n	800708e <__sflush_r+0x7e>
 800708c:	6520      	str	r0, [r4, #80]	; 0x50
 800708e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007090:	f8c8 6000 	str.w	r6, [r8]
 8007094:	b311      	cbz	r1, 80070dc <__sflush_r+0xcc>
 8007096:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800709a:	4299      	cmp	r1, r3
 800709c:	d002      	beq.n	80070a4 <__sflush_r+0x94>
 800709e:	4640      	mov	r0, r8
 80070a0:	f000 f962 	bl	8007368 <_free_r>
 80070a4:	2000      	movs	r0, #0
 80070a6:	6320      	str	r0, [r4, #48]	; 0x30
 80070a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80070ac:	6926      	ldr	r6, [r4, #16]
 80070ae:	b1ae      	cbz	r6, 80070dc <__sflush_r+0xcc>
 80070b0:	0792      	lsls	r2, r2, #30
 80070b2:	6825      	ldr	r5, [r4, #0]
 80070b4:	6026      	str	r6, [r4, #0]
 80070b6:	bf0c      	ite	eq
 80070b8:	6963      	ldreq	r3, [r4, #20]
 80070ba:	2300      	movne	r3, #0
 80070bc:	1bad      	subs	r5, r5, r6
 80070be:	60a3      	str	r3, [r4, #8]
 80070c0:	e00a      	b.n	80070d8 <__sflush_r+0xc8>
 80070c2:	462b      	mov	r3, r5
 80070c4:	4632      	mov	r2, r6
 80070c6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80070c8:	4640      	mov	r0, r8
 80070ca:	69e1      	ldr	r1, [r4, #28]
 80070cc:	47b8      	blx	r7
 80070ce:	2800      	cmp	r0, #0
 80070d0:	eba5 0500 	sub.w	r5, r5, r0
 80070d4:	4406      	add	r6, r0
 80070d6:	dd2b      	ble.n	8007130 <__sflush_r+0x120>
 80070d8:	2d00      	cmp	r5, #0
 80070da:	dcf2      	bgt.n	80070c2 <__sflush_r+0xb2>
 80070dc:	2000      	movs	r0, #0
 80070de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80070e2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80070e4:	2a00      	cmp	r2, #0
 80070e6:	dca2      	bgt.n	800702e <__sflush_r+0x1e>
 80070e8:	e7f8      	b.n	80070dc <__sflush_r+0xcc>
 80070ea:	f8d8 3000 	ldr.w	r3, [r8]
 80070ee:	2b00      	cmp	r3, #0
 80070f0:	d0b0      	beq.n	8007054 <__sflush_r+0x44>
 80070f2:	2b1d      	cmp	r3, #29
 80070f4:	d001      	beq.n	80070fa <__sflush_r+0xea>
 80070f6:	2b16      	cmp	r3, #22
 80070f8:	d12c      	bne.n	8007154 <__sflush_r+0x144>
 80070fa:	f8c8 6000 	str.w	r6, [r8]
 80070fe:	2000      	movs	r0, #0
 8007100:	e7ed      	b.n	80070de <__sflush_r+0xce>
 8007102:	f8d8 1000 	ldr.w	r1, [r8]
 8007106:	291d      	cmp	r1, #29
 8007108:	d81a      	bhi.n	8007140 <__sflush_r+0x130>
 800710a:	4b15      	ldr	r3, [pc, #84]	; (8007160 <__sflush_r+0x150>)
 800710c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007110:	40cb      	lsrs	r3, r1
 8007112:	43db      	mvns	r3, r3
 8007114:	f013 0301 	ands.w	r3, r3, #1
 8007118:	d114      	bne.n	8007144 <__sflush_r+0x134>
 800711a:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 800711e:	6925      	ldr	r5, [r4, #16]
 8007120:	6063      	str	r3, [r4, #4]
 8007122:	6025      	str	r5, [r4, #0]
 8007124:	04d5      	lsls	r5, r2, #19
 8007126:	81a2      	strh	r2, [r4, #12]
 8007128:	d5b1      	bpl.n	800708e <__sflush_r+0x7e>
 800712a:	2900      	cmp	r1, #0
 800712c:	d1af      	bne.n	800708e <__sflush_r+0x7e>
 800712e:	e7ad      	b.n	800708c <__sflush_r+0x7c>
 8007130:	89a3      	ldrh	r3, [r4, #12]
 8007132:	f04f 30ff 	mov.w	r0, #4294967295
 8007136:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800713a:	81a3      	strh	r3, [r4, #12]
 800713c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007140:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007144:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007148:	f04f 30ff 	mov.w	r0, #4294967295
 800714c:	81a2      	strh	r2, [r4, #12]
 800714e:	e7c6      	b.n	80070de <__sflush_r+0xce>
 8007150:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8007152:	e782      	b.n	800705a <__sflush_r+0x4a>
 8007154:	89a3      	ldrh	r3, [r4, #12]
 8007156:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800715a:	81a3      	strh	r3, [r4, #12]
 800715c:	e7bf      	b.n	80070de <__sflush_r+0xce>
 800715e:	bf00      	nop
 8007160:	20400001 	.word	0x20400001

08007164 <_fflush_r>:
 8007164:	b538      	push	{r3, r4, r5, lr}
 8007166:	460d      	mov	r5, r1
 8007168:	4604      	mov	r4, r0
 800716a:	b108      	cbz	r0, 8007170 <_fflush_r+0xc>
 800716c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800716e:	b1a3      	cbz	r3, 800719a <_fflush_r+0x36>
 8007170:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8007174:	b1b8      	cbz	r0, 80071a6 <_fflush_r+0x42>
 8007176:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8007178:	07db      	lsls	r3, r3, #31
 800717a:	d401      	bmi.n	8007180 <_fflush_r+0x1c>
 800717c:	0581      	lsls	r1, r0, #22
 800717e:	d51a      	bpl.n	80071b6 <_fflush_r+0x52>
 8007180:	4620      	mov	r0, r4
 8007182:	4629      	mov	r1, r5
 8007184:	f7ff ff44 	bl	8007010 <__sflush_r>
 8007188:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800718a:	4604      	mov	r4, r0
 800718c:	07da      	lsls	r2, r3, #31
 800718e:	d402      	bmi.n	8007196 <_fflush_r+0x32>
 8007190:	89ab      	ldrh	r3, [r5, #12]
 8007192:	059b      	lsls	r3, r3, #22
 8007194:	d50a      	bpl.n	80071ac <_fflush_r+0x48>
 8007196:	4620      	mov	r0, r4
 8007198:	bd38      	pop	{r3, r4, r5, pc}
 800719a:	f000 f83f 	bl	800721c <__sinit>
 800719e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80071a2:	2800      	cmp	r0, #0
 80071a4:	d1e7      	bne.n	8007176 <_fflush_r+0x12>
 80071a6:	4604      	mov	r4, r0
 80071a8:	4620      	mov	r0, r4
 80071aa:	bd38      	pop	{r3, r4, r5, pc}
 80071ac:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80071ae:	f000 fa09 	bl	80075c4 <__retarget_lock_release_recursive>
 80071b2:	4620      	mov	r0, r4
 80071b4:	bd38      	pop	{r3, r4, r5, pc}
 80071b6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80071b8:	f000 fa02 	bl	80075c0 <__retarget_lock_acquire_recursive>
 80071bc:	e7e0      	b.n	8007180 <_fflush_r+0x1c>
 80071be:	bf00      	nop

080071c0 <std>:
 80071c0:	b538      	push	{r3, r4, r5, lr}
 80071c2:	4604      	mov	r4, r0
 80071c4:	2300      	movs	r3, #0
 80071c6:	8181      	strh	r1, [r0, #12]
 80071c8:	305c      	adds	r0, #92	; 0x5c
 80071ca:	81e2      	strh	r2, [r4, #14]
 80071cc:	4619      	mov	r1, r3
 80071ce:	6023      	str	r3, [r4, #0]
 80071d0:	2208      	movs	r2, #8
 80071d2:	6663      	str	r3, [r4, #100]	; 0x64
 80071d4:	61a3      	str	r3, [r4, #24]
 80071d6:	4d0a      	ldr	r5, [pc, #40]	; (8007200 <std+0x40>)
 80071d8:	e9c4 3301 	strd	r3, r3, [r4, #4]
 80071dc:	e9c4 3304 	strd	r3, r3, [r4, #16]
 80071e0:	f7fd fb64 	bl	80048ac <memset>
 80071e4:	4b07      	ldr	r3, [pc, #28]	; (8007204 <std+0x44>)
 80071e6:	4908      	ldr	r1, [pc, #32]	; (8007208 <std+0x48>)
 80071e8:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80071ec:	4a07      	ldr	r2, [pc, #28]	; (800720c <std+0x4c>)
 80071ee:	62e3      	str	r3, [r4, #44]	; 0x2c
 80071f0:	e9c4 4507 	strd	r4, r5, [r4, #28]
 80071f4:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80071f8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80071fc:	f000 b9dc 	b.w	80075b8 <__retarget_lock_init_recursive>
 8007200:	08008305 	.word	0x08008305
 8007204:	08008389 	.word	0x08008389
 8007208:	08008329 	.word	0x08008329
 800720c:	08008365 	.word	0x08008365

08007210 <_cleanup_r>:
 8007210:	4901      	ldr	r1, [pc, #4]	; (8007218 <_cleanup_r+0x8>)
 8007212:	f000 b99b 	b.w	800754c <_fwalk_reent>
 8007216:	bf00      	nop
 8007218:	080085f5 	.word	0x080085f5

0800721c <__sinit>:
 800721c:	b510      	push	{r4, lr}
 800721e:	4604      	mov	r4, r0
 8007220:	4814      	ldr	r0, [pc, #80]	; (8007274 <__sinit+0x58>)
 8007222:	f000 f9cd 	bl	80075c0 <__retarget_lock_acquire_recursive>
 8007226:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8007228:	b9fa      	cbnz	r2, 800726a <__sinit+0x4e>
 800722a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800722e:	4812      	ldr	r0, [pc, #72]	; (8007278 <__sinit+0x5c>)
 8007230:	2103      	movs	r1, #3
 8007232:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8007236:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800723a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800723c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8007240:	2104      	movs	r1, #4
 8007242:	6860      	ldr	r0, [r4, #4]
 8007244:	f7ff ffbc 	bl	80071c0 <std>
 8007248:	68a0      	ldr	r0, [r4, #8]
 800724a:	2201      	movs	r2, #1
 800724c:	2109      	movs	r1, #9
 800724e:	f7ff ffb7 	bl	80071c0 <std>
 8007252:	68e0      	ldr	r0, [r4, #12]
 8007254:	2202      	movs	r2, #2
 8007256:	2112      	movs	r1, #18
 8007258:	f7ff ffb2 	bl	80071c0 <std>
 800725c:	2301      	movs	r3, #1
 800725e:	4805      	ldr	r0, [pc, #20]	; (8007274 <__sinit+0x58>)
 8007260:	63a3      	str	r3, [r4, #56]	; 0x38
 8007262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007266:	f000 b9ad 	b.w	80075c4 <__retarget_lock_release_recursive>
 800726a:	4802      	ldr	r0, [pc, #8]	; (8007274 <__sinit+0x58>)
 800726c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007270:	f000 b9a8 	b.w	80075c4 <__retarget_lock_release_recursive>
 8007274:	20000adc 	.word	0x20000adc
 8007278:	08007211 	.word	0x08007211

0800727c <__sfp_lock_acquire>:
 800727c:	4801      	ldr	r0, [pc, #4]	; (8007284 <__sfp_lock_acquire+0x8>)
 800727e:	f000 b99f 	b.w	80075c0 <__retarget_lock_acquire_recursive>
 8007282:	bf00      	nop
 8007284:	20000af0 	.word	0x20000af0

08007288 <__sfp_lock_release>:
 8007288:	4801      	ldr	r0, [pc, #4]	; (8007290 <__sfp_lock_release+0x8>)
 800728a:	f000 b99b 	b.w	80075c4 <__retarget_lock_release_recursive>
 800728e:	bf00      	nop
 8007290:	20000af0 	.word	0x20000af0

08007294 <__libc_fini_array>:
 8007294:	b538      	push	{r3, r4, r5, lr}
 8007296:	4c0a      	ldr	r4, [pc, #40]	; (80072c0 <__libc_fini_array+0x2c>)
 8007298:	4d0a      	ldr	r5, [pc, #40]	; (80072c4 <__libc_fini_array+0x30>)
 800729a:	1b64      	subs	r4, r4, r5
 800729c:	10a4      	asrs	r4, r4, #2
 800729e:	d00a      	beq.n	80072b6 <__libc_fini_array+0x22>
 80072a0:	f06f 4340 	mvn.w	r3, #3221225472	; 0xc0000000
 80072a4:	4423      	add	r3, r4
 80072a6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80072aa:	3c01      	subs	r4, #1
 80072ac:	f855 3904 	ldr.w	r3, [r5], #-4
 80072b0:	4798      	blx	r3
 80072b2:	2c00      	cmp	r4, #0
 80072b4:	d1f9      	bne.n	80072aa <__libc_fini_array+0x16>
 80072b6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80072ba:	f001 bf33 	b.w	8009124 <_fini>
 80072be:	bf00      	nop
 80072c0:	080094c4 	.word	0x080094c4
 80072c4:	080094c0 	.word	0x080094c0

080072c8 <_malloc_trim_r>:
 80072c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072ca:	4f23      	ldr	r7, [pc, #140]	; (8007358 <_malloc_trim_r+0x90>)
 80072cc:	460d      	mov	r5, r1
 80072ce:	4606      	mov	r6, r0
 80072d0:	f000 fce4 	bl	8007c9c <__malloc_lock>
 80072d4:	68b9      	ldr	r1, [r7, #8]
 80072d6:	f640 73ef 	movw	r3, #4079	; 0xfef
 80072da:	4a20      	ldr	r2, [pc, #128]	; (800735c <_malloc_trim_r+0x94>)
 80072dc:	684c      	ldr	r4, [r1, #4]
 80072de:	1b5b      	subs	r3, r3, r5
 80072e0:	f024 0403 	bic.w	r4, r4, #3
 80072e4:	4423      	add	r3, r4
 80072e6:	401a      	ands	r2, r3
 80072e8:	f5a2 5580 	sub.w	r5, r2, #4096	; 0x1000
 80072ec:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
 80072f0:	db07      	blt.n	8007302 <_malloc_trim_r+0x3a>
 80072f2:	2100      	movs	r1, #0
 80072f4:	4630      	mov	r0, r6
 80072f6:	f000 fff3 	bl	80082e0 <_sbrk_r>
 80072fa:	68bb      	ldr	r3, [r7, #8]
 80072fc:	4423      	add	r3, r4
 80072fe:	4298      	cmp	r0, r3
 8007300:	d004      	beq.n	800730c <_malloc_trim_r+0x44>
 8007302:	4630      	mov	r0, r6
 8007304:	f000 fcd0 	bl	8007ca8 <__malloc_unlock>
 8007308:	2000      	movs	r0, #0
 800730a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800730c:	4269      	negs	r1, r5
 800730e:	4630      	mov	r0, r6
 8007310:	f000 ffe6 	bl	80082e0 <_sbrk_r>
 8007314:	3001      	adds	r0, #1
 8007316:	d00d      	beq.n	8007334 <_malloc_trim_r+0x6c>
 8007318:	4b11      	ldr	r3, [pc, #68]	; (8007360 <_malloc_trim_r+0x98>)
 800731a:	1b64      	subs	r4, r4, r5
 800731c:	68b9      	ldr	r1, [r7, #8]
 800731e:	4630      	mov	r0, r6
 8007320:	681a      	ldr	r2, [r3, #0]
 8007322:	f044 0401 	orr.w	r4, r4, #1
 8007326:	1b52      	subs	r2, r2, r5
 8007328:	604c      	str	r4, [r1, #4]
 800732a:	601a      	str	r2, [r3, #0]
 800732c:	f000 fcbc 	bl	8007ca8 <__malloc_unlock>
 8007330:	2001      	movs	r0, #1
 8007332:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007334:	2100      	movs	r1, #0
 8007336:	4630      	mov	r0, r6
 8007338:	f000 ffd2 	bl	80082e0 <_sbrk_r>
 800733c:	68ba      	ldr	r2, [r7, #8]
 800733e:	1a83      	subs	r3, r0, r2
 8007340:	2b0f      	cmp	r3, #15
 8007342:	ddde      	ble.n	8007302 <_malloc_trim_r+0x3a>
 8007344:	4c07      	ldr	r4, [pc, #28]	; (8007364 <_malloc_trim_r+0x9c>)
 8007346:	f043 0301 	orr.w	r3, r3, #1
 800734a:	4905      	ldr	r1, [pc, #20]	; (8007360 <_malloc_trim_r+0x98>)
 800734c:	6824      	ldr	r4, [r4, #0]
 800734e:	6053      	str	r3, [r2, #4]
 8007350:	1b00      	subs	r0, r0, r4
 8007352:	6008      	str	r0, [r1, #0]
 8007354:	e7d5      	b.n	8007302 <_malloc_trim_r+0x3a>
 8007356:	bf00      	nop
 8007358:	2000045c 	.word	0x2000045c
 800735c:	fffff000 	.word	0xfffff000
 8007360:	20000a08 	.word	0x20000a08
 8007364:	20000864 	.word	0x20000864

08007368 <_free_r>:
 8007368:	2900      	cmp	r1, #0
 800736a:	d052      	beq.n	8007412 <_free_r+0xaa>
 800736c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800736e:	460d      	mov	r5, r1
 8007370:	4606      	mov	r6, r0
 8007372:	f000 fc93 	bl	8007c9c <__malloc_lock>
 8007376:	4f71      	ldr	r7, [pc, #452]	; (800753c <_free_r+0x1d4>)
 8007378:	f855 cc04 	ldr.w	ip, [r5, #-4]
 800737c:	f1a5 0108 	sub.w	r1, r5, #8
 8007380:	68b8      	ldr	r0, [r7, #8]
 8007382:	f02c 0301 	bic.w	r3, ip, #1
 8007386:	18ca      	adds	r2, r1, r3
 8007388:	6854      	ldr	r4, [r2, #4]
 800738a:	4290      	cmp	r0, r2
 800738c:	f024 0403 	bic.w	r4, r4, #3
 8007390:	d052      	beq.n	8007438 <_free_r+0xd0>
 8007392:	f01c 0f01 	tst.w	ip, #1
 8007396:	6054      	str	r4, [r2, #4]
 8007398:	eb02 0004 	add.w	r0, r2, r4
 800739c:	d13a      	bne.n	8007414 <_free_r+0xac>
 800739e:	f855 5c08 	ldr.w	r5, [r5, #-8]
 80073a2:	f107 0c08 	add.w	ip, r7, #8
 80073a6:	6840      	ldr	r0, [r0, #4]
 80073a8:	1b49      	subs	r1, r1, r5
 80073aa:	442b      	add	r3, r5
 80073ac:	f000 0001 	and.w	r0, r0, #1
 80073b0:	688d      	ldr	r5, [r1, #8]
 80073b2:	4565      	cmp	r5, ip
 80073b4:	d075      	beq.n	80074a2 <_free_r+0x13a>
 80073b6:	f8d1 c00c 	ldr.w	ip, [r1, #12]
 80073ba:	f8c5 c00c 	str.w	ip, [r5, #12]
 80073be:	f8cc 5008 	str.w	r5, [ip, #8]
 80073c2:	b360      	cbz	r0, 800741e <_free_r+0xb6>
 80073c4:	f043 0201 	orr.w	r2, r3, #1
 80073c8:	604a      	str	r2, [r1, #4]
 80073ca:	50cb      	str	r3, [r1, r3]
 80073cc:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80073d0:	d350      	bcc.n	8007474 <_free_r+0x10c>
 80073d2:	0a5a      	lsrs	r2, r3, #9
 80073d4:	2a04      	cmp	r2, #4
 80073d6:	d870      	bhi.n	80074ba <_free_r+0x152>
 80073d8:	099a      	lsrs	r2, r3, #6
 80073da:	f102 0439 	add.w	r4, r2, #57	; 0x39
 80073de:	f102 0038 	add.w	r0, r2, #56	; 0x38
 80073e2:	00e2      	lsls	r2, r4, #3
 80073e4:	18bc      	adds	r4, r7, r2
 80073e6:	58ba      	ldr	r2, [r7, r2]
 80073e8:	3c08      	subs	r4, #8
 80073ea:	4294      	cmp	r4, r2
 80073ec:	d078      	beq.n	80074e0 <_free_r+0x178>
 80073ee:	6850      	ldr	r0, [r2, #4]
 80073f0:	f020 0003 	bic.w	r0, r0, #3
 80073f4:	4298      	cmp	r0, r3
 80073f6:	d971      	bls.n	80074dc <_free_r+0x174>
 80073f8:	6892      	ldr	r2, [r2, #8]
 80073fa:	4294      	cmp	r4, r2
 80073fc:	d1f7      	bne.n	80073ee <_free_r+0x86>
 80073fe:	68e3      	ldr	r3, [r4, #12]
 8007400:	4630      	mov	r0, r6
 8007402:	e9c1 4302 	strd	r4, r3, [r1, #8]
 8007406:	6099      	str	r1, [r3, #8]
 8007408:	60e1      	str	r1, [r4, #12]
 800740a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800740e:	f000 bc4b 	b.w	8007ca8 <__malloc_unlock>
 8007412:	4770      	bx	lr
 8007414:	6840      	ldr	r0, [r0, #4]
 8007416:	f000 0001 	and.w	r0, r0, #1
 800741a:	2800      	cmp	r0, #0
 800741c:	d1d2      	bne.n	80073c4 <_free_r+0x5c>
 800741e:	6890      	ldr	r0, [r2, #8]
 8007420:	4423      	add	r3, r4
 8007422:	4d47      	ldr	r5, [pc, #284]	; (8007540 <_free_r+0x1d8>)
 8007424:	f043 0401 	orr.w	r4, r3, #1
 8007428:	42a8      	cmp	r0, r5
 800742a:	d062      	beq.n	80074f2 <_free_r+0x18a>
 800742c:	68d2      	ldr	r2, [r2, #12]
 800742e:	60c2      	str	r2, [r0, #12]
 8007430:	6090      	str	r0, [r2, #8]
 8007432:	604c      	str	r4, [r1, #4]
 8007434:	50cb      	str	r3, [r1, r3]
 8007436:	e7c9      	b.n	80073cc <_free_r+0x64>
 8007438:	f01c 0f01 	tst.w	ip, #1
 800743c:	4423      	add	r3, r4
 800743e:	d107      	bne.n	8007450 <_free_r+0xe8>
 8007440:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8007444:	1a89      	subs	r1, r1, r2
 8007446:	4413      	add	r3, r2
 8007448:	e9d1 0202 	ldrd	r0, r2, [r1, #8]
 800744c:	60c2      	str	r2, [r0, #12]
 800744e:	6090      	str	r0, [r2, #8]
 8007450:	4a3c      	ldr	r2, [pc, #240]	; (8007544 <_free_r+0x1dc>)
 8007452:	f043 0001 	orr.w	r0, r3, #1
 8007456:	6812      	ldr	r2, [r2, #0]
 8007458:	6048      	str	r0, [r1, #4]
 800745a:	429a      	cmp	r2, r3
 800745c:	60b9      	str	r1, [r7, #8]
 800745e:	d804      	bhi.n	800746a <_free_r+0x102>
 8007460:	4b39      	ldr	r3, [pc, #228]	; (8007548 <_free_r+0x1e0>)
 8007462:	4630      	mov	r0, r6
 8007464:	6819      	ldr	r1, [r3, #0]
 8007466:	f7ff ff2f 	bl	80072c8 <_malloc_trim_r>
 800746a:	4630      	mov	r0, r6
 800746c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007470:	f000 bc1a 	b.w	8007ca8 <__malloc_unlock>
 8007474:	08db      	lsrs	r3, r3, #3
 8007476:	2201      	movs	r2, #1
 8007478:	687c      	ldr	r4, [r7, #4]
 800747a:	1098      	asrs	r0, r3, #2
 800747c:	4413      	add	r3, r2
 800747e:	4082      	lsls	r2, r0
 8007480:	eb07 00c3 	add.w	r0, r7, r3, lsl #3
 8007484:	4322      	orrs	r2, r4
 8007486:	3808      	subs	r0, #8
 8007488:	f857 4033 	ldr.w	r4, [r7, r3, lsl #3]
 800748c:	607a      	str	r2, [r7, #4]
 800748e:	e9c1 4002 	strd	r4, r0, [r1, #8]
 8007492:	f847 1033 	str.w	r1, [r7, r3, lsl #3]
 8007496:	4630      	mov	r0, r6
 8007498:	60e1      	str	r1, [r4, #12]
 800749a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800749e:	f000 bc03 	b.w	8007ca8 <__malloc_unlock>
 80074a2:	2800      	cmp	r0, #0
 80074a4:	d145      	bne.n	8007532 <_free_r+0x1ca>
 80074a6:	4423      	add	r3, r4
 80074a8:	e9d2 0202 	ldrd	r0, r2, [r2, #8]
 80074ac:	f043 0401 	orr.w	r4, r3, #1
 80074b0:	60c2      	str	r2, [r0, #12]
 80074b2:	6090      	str	r0, [r2, #8]
 80074b4:	604c      	str	r4, [r1, #4]
 80074b6:	50cb      	str	r3, [r1, r3]
 80074b8:	e7d7      	b.n	800746a <_free_r+0x102>
 80074ba:	2a14      	cmp	r2, #20
 80074bc:	d908      	bls.n	80074d0 <_free_r+0x168>
 80074be:	2a54      	cmp	r2, #84	; 0x54
 80074c0:	d81e      	bhi.n	8007500 <_free_r+0x198>
 80074c2:	0b1a      	lsrs	r2, r3, #12
 80074c4:	f102 046f 	add.w	r4, r2, #111	; 0x6f
 80074c8:	f102 006e 	add.w	r0, r2, #110	; 0x6e
 80074cc:	00e2      	lsls	r2, r4, #3
 80074ce:	e789      	b.n	80073e4 <_free_r+0x7c>
 80074d0:	f102 045c 	add.w	r4, r2, #92	; 0x5c
 80074d4:	f102 005b 	add.w	r0, r2, #91	; 0x5b
 80074d8:	00e2      	lsls	r2, r4, #3
 80074da:	e783      	b.n	80073e4 <_free_r+0x7c>
 80074dc:	4614      	mov	r4, r2
 80074de:	e78e      	b.n	80073fe <_free_r+0x96>
 80074e0:	1082      	asrs	r2, r0, #2
 80074e2:	2001      	movs	r0, #1
 80074e4:	687d      	ldr	r5, [r7, #4]
 80074e6:	4623      	mov	r3, r4
 80074e8:	fa00 f202 	lsl.w	r2, r0, r2
 80074ec:	432a      	orrs	r2, r5
 80074ee:	607a      	str	r2, [r7, #4]
 80074f0:	e786      	b.n	8007400 <_free_r+0x98>
 80074f2:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80074f6:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80074fa:	604c      	str	r4, [r1, #4]
 80074fc:	50cb      	str	r3, [r1, r3]
 80074fe:	e7b4      	b.n	800746a <_free_r+0x102>
 8007500:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8007504:	d806      	bhi.n	8007514 <_free_r+0x1ac>
 8007506:	0bda      	lsrs	r2, r3, #15
 8007508:	f102 0478 	add.w	r4, r2, #120	; 0x78
 800750c:	f102 0077 	add.w	r0, r2, #119	; 0x77
 8007510:	00e2      	lsls	r2, r4, #3
 8007512:	e767      	b.n	80073e4 <_free_r+0x7c>
 8007514:	f240 5054 	movw	r0, #1364	; 0x554
 8007518:	4282      	cmp	r2, r0
 800751a:	d806      	bhi.n	800752a <_free_r+0x1c2>
 800751c:	0c9a      	lsrs	r2, r3, #18
 800751e:	f102 047d 	add.w	r4, r2, #125	; 0x7d
 8007522:	f102 007c 	add.w	r0, r2, #124	; 0x7c
 8007526:	00e2      	lsls	r2, r4, #3
 8007528:	e75c      	b.n	80073e4 <_free_r+0x7c>
 800752a:	f44f 727e 	mov.w	r2, #1016	; 0x3f8
 800752e:	207e      	movs	r0, #126	; 0x7e
 8007530:	e758      	b.n	80073e4 <_free_r+0x7c>
 8007532:	f043 0001 	orr.w	r0, r3, #1
 8007536:	6048      	str	r0, [r1, #4]
 8007538:	6013      	str	r3, [r2, #0]
 800753a:	e796      	b.n	800746a <_free_r+0x102>
 800753c:	2000045c 	.word	0x2000045c
 8007540:	20000464 	.word	0x20000464
 8007544:	20000868 	.word	0x20000868
 8007548:	20000a38 	.word	0x20000a38

0800754c <_fwalk_reent>:
 800754c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007550:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8007554:	d01e      	beq.n	8007594 <_fwalk_reent+0x48>
 8007556:	4688      	mov	r8, r1
 8007558:	4606      	mov	r6, r0
 800755a:	f04f 0900 	mov.w	r9, #0
 800755e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8007562:	3d01      	subs	r5, #1
 8007564:	d410      	bmi.n	8007588 <_fwalk_reent+0x3c>
 8007566:	89a3      	ldrh	r3, [r4, #12]
 8007568:	3d01      	subs	r5, #1
 800756a:	4621      	mov	r1, r4
 800756c:	4630      	mov	r0, r6
 800756e:	2b01      	cmp	r3, #1
 8007570:	d906      	bls.n	8007580 <_fwalk_reent+0x34>
 8007572:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8007576:	3301      	adds	r3, #1
 8007578:	d002      	beq.n	8007580 <_fwalk_reent+0x34>
 800757a:	47c0      	blx	r8
 800757c:	ea49 0900 	orr.w	r9, r9, r0
 8007580:	1c6b      	adds	r3, r5, #1
 8007582:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8007586:	d1ee      	bne.n	8007566 <_fwalk_reent+0x1a>
 8007588:	683f      	ldr	r7, [r7, #0]
 800758a:	2f00      	cmp	r7, #0
 800758c:	d1e7      	bne.n	800755e <_fwalk_reent+0x12>
 800758e:	4648      	mov	r0, r9
 8007590:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007594:	46b9      	mov	r9, r7
 8007596:	4648      	mov	r0, r9
 8007598:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

0800759c <_localeconv_r>:
 800759c:	4a04      	ldr	r2, [pc, #16]	; (80075b0 <_localeconv_r+0x14>)
 800759e:	4b05      	ldr	r3, [pc, #20]	; (80075b4 <_localeconv_r+0x18>)
 80075a0:	6812      	ldr	r2, [r2, #0]
 80075a2:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80075a4:	2800      	cmp	r0, #0
 80075a6:	bf08      	it	eq
 80075a8:	4618      	moveq	r0, r3
 80075aa:	30f0      	adds	r0, #240	; 0xf0
 80075ac:	4770      	bx	lr
 80075ae:	bf00      	nop
 80075b0:	2000002c 	.word	0x2000002c
 80075b4:	2000086c 	.word	0x2000086c

080075b8 <__retarget_lock_init_recursive>:
 80075b8:	4770      	bx	lr
 80075ba:	bf00      	nop

080075bc <__retarget_lock_close_recursive>:
 80075bc:	4770      	bx	lr
 80075be:	bf00      	nop

080075c0 <__retarget_lock_acquire_recursive>:
 80075c0:	4770      	bx	lr
 80075c2:	bf00      	nop

080075c4 <__retarget_lock_release_recursive>:
 80075c4:	4770      	bx	lr
 80075c6:	bf00      	nop

080075c8 <__swhatbuf_r>:
 80075c8:	b570      	push	{r4, r5, r6, lr}
 80075ca:	460c      	mov	r4, r1
 80075cc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80075d0:	b096      	sub	sp, #88	; 0x58
 80075d2:	4615      	mov	r5, r2
 80075d4:	2900      	cmp	r1, #0
 80075d6:	461e      	mov	r6, r3
 80075d8:	da0f      	bge.n	80075fa <__swhatbuf_r+0x32>
 80075da:	89a2      	ldrh	r2, [r4, #12]
 80075dc:	2300      	movs	r3, #0
 80075de:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80075e2:	6033      	str	r3, [r6, #0]
 80075e4:	d104      	bne.n	80075f0 <__swhatbuf_r+0x28>
 80075e6:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80075ea:	602b      	str	r3, [r5, #0]
 80075ec:	b016      	add	sp, #88	; 0x58
 80075ee:	bd70      	pop	{r4, r5, r6, pc}
 80075f0:	2240      	movs	r2, #64	; 0x40
 80075f2:	4618      	mov	r0, r3
 80075f4:	602a      	str	r2, [r5, #0]
 80075f6:	b016      	add	sp, #88	; 0x58
 80075f8:	bd70      	pop	{r4, r5, r6, pc}
 80075fa:	466a      	mov	r2, sp
 80075fc:	f001 f8e4 	bl	80087c8 <_fstat_r>
 8007600:	2800      	cmp	r0, #0
 8007602:	dbea      	blt.n	80075da <__swhatbuf_r+0x12>
 8007604:	9b01      	ldr	r3, [sp, #4]
 8007606:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800760a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800760e:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8007612:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8007616:	fab3 f383 	clz	r3, r3
 800761a:	095b      	lsrs	r3, r3, #5
 800761c:	6033      	str	r3, [r6, #0]
 800761e:	602a      	str	r2, [r5, #0]
 8007620:	b016      	add	sp, #88	; 0x58
 8007622:	bd70      	pop	{r4, r5, r6, pc}

08007624 <__smakebuf_r>:
 8007624:	898a      	ldrh	r2, [r1, #12]
 8007626:	460b      	mov	r3, r1
 8007628:	0792      	lsls	r2, r2, #30
 800762a:	d506      	bpl.n	800763a <__smakebuf_r+0x16>
 800762c:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8007630:	2101      	movs	r1, #1
 8007632:	601a      	str	r2, [r3, #0]
 8007634:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8007638:	4770      	bx	lr
 800763a:	b570      	push	{r4, r5, r6, lr}
 800763c:	b082      	sub	sp, #8
 800763e:	4605      	mov	r5, r0
 8007640:	460c      	mov	r4, r1
 8007642:	ab01      	add	r3, sp, #4
 8007644:	466a      	mov	r2, sp
 8007646:	f7ff ffbf 	bl	80075c8 <__swhatbuf_r>
 800764a:	9900      	ldr	r1, [sp, #0]
 800764c:	4606      	mov	r6, r0
 800764e:	4628      	mov	r0, r5
 8007650:	f000 f832 	bl	80076b8 <_malloc_r>
 8007654:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007658:	b1d8      	cbz	r0, 8007692 <__smakebuf_r+0x6e>
 800765a:	4a16      	ldr	r2, [pc, #88]	; (80076b4 <__smakebuf_r+0x90>)
 800765c:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8007660:	9900      	ldr	r1, [sp, #0]
 8007662:	63ea      	str	r2, [r5, #60]	; 0x3c
 8007664:	9a01      	ldr	r2, [sp, #4]
 8007666:	81a3      	strh	r3, [r4, #12]
 8007668:	6020      	str	r0, [r4, #0]
 800766a:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800766e:	b91a      	cbnz	r2, 8007678 <__smakebuf_r+0x54>
 8007670:	4333      	orrs	r3, r6
 8007672:	81a3      	strh	r3, [r4, #12]
 8007674:	b002      	add	sp, #8
 8007676:	bd70      	pop	{r4, r5, r6, pc}
 8007678:	4628      	mov	r0, r5
 800767a:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800767e:	f001 fa43 	bl	8008b08 <_isatty_r>
 8007682:	b1a0      	cbz	r0, 80076ae <__smakebuf_r+0x8a>
 8007684:	89a3      	ldrh	r3, [r4, #12]
 8007686:	f023 0303 	bic.w	r3, r3, #3
 800768a:	f043 0301 	orr.w	r3, r3, #1
 800768e:	b21b      	sxth	r3, r3
 8007690:	e7ee      	b.n	8007670 <__smakebuf_r+0x4c>
 8007692:	059a      	lsls	r2, r3, #22
 8007694:	d4ee      	bmi.n	8007674 <__smakebuf_r+0x50>
 8007696:	f023 0303 	bic.w	r3, r3, #3
 800769a:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800769e:	2101      	movs	r1, #1
 80076a0:	f043 0302 	orr.w	r3, r3, #2
 80076a4:	6022      	str	r2, [r4, #0]
 80076a6:	6122      	str	r2, [r4, #16]
 80076a8:	81a3      	strh	r3, [r4, #12]
 80076aa:	6161      	str	r1, [r4, #20]
 80076ac:	e7e2      	b.n	8007674 <__smakebuf_r+0x50>
 80076ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80076b2:	e7dd      	b.n	8007670 <__smakebuf_r+0x4c>
 80076b4:	08007211 	.word	0x08007211

080076b8 <_malloc_r>:
 80076b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80076bc:	f101 050b 	add.w	r5, r1, #11
 80076c0:	b083      	sub	sp, #12
 80076c2:	4606      	mov	r6, r0
 80076c4:	2d16      	cmp	r5, #22
 80076c6:	d824      	bhi.n	8007712 <_malloc_r+0x5a>
 80076c8:	2910      	cmp	r1, #16
 80076ca:	f200 80d1 	bhi.w	8007870 <_malloc_r+0x1b8>
 80076ce:	f000 fae5 	bl	8007c9c <__malloc_lock>
 80076d2:	2510      	movs	r5, #16
 80076d4:	2218      	movs	r2, #24
 80076d6:	2402      	movs	r4, #2
 80076d8:	4fca      	ldr	r7, [pc, #808]	; (8007a04 <_malloc_r+0x34c>)
 80076da:	443a      	add	r2, r7
 80076dc:	6853      	ldr	r3, [r2, #4]
 80076de:	f1a2 0108 	sub.w	r1, r2, #8
 80076e2:	428b      	cmp	r3, r1
 80076e4:	f000 8187 	beq.w	80079f6 <_malloc_r+0x33e>
 80076e8:	685a      	ldr	r2, [r3, #4]
 80076ea:	f103 0908 	add.w	r9, r3, #8
 80076ee:	68d9      	ldr	r1, [r3, #12]
 80076f0:	4630      	mov	r0, r6
 80076f2:	f022 0203 	bic.w	r2, r2, #3
 80076f6:	689d      	ldr	r5, [r3, #8]
 80076f8:	4413      	add	r3, r2
 80076fa:	60e9      	str	r1, [r5, #12]
 80076fc:	608d      	str	r5, [r1, #8]
 80076fe:	685a      	ldr	r2, [r3, #4]
 8007700:	f042 0201 	orr.w	r2, r2, #1
 8007704:	605a      	str	r2, [r3, #4]
 8007706:	f000 facf 	bl	8007ca8 <__malloc_unlock>
 800770a:	4648      	mov	r0, r9
 800770c:	b003      	add	sp, #12
 800770e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007712:	f035 0507 	bics.w	r5, r5, #7
 8007716:	f100 80ab 	bmi.w	8007870 <_malloc_r+0x1b8>
 800771a:	42a9      	cmp	r1, r5
 800771c:	f200 80a8 	bhi.w	8007870 <_malloc_r+0x1b8>
 8007720:	f000 fabc 	bl	8007c9c <__malloc_lock>
 8007724:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8007728:	f0c0 8192 	bcc.w	8007a50 <_malloc_r+0x398>
 800772c:	0a6b      	lsrs	r3, r5, #9
 800772e:	d00b      	beq.n	8007748 <_malloc_r+0x90>
 8007730:	2b04      	cmp	r3, #4
 8007732:	f240 8096 	bls.w	8007862 <_malloc_r+0x1aa>
 8007736:	2b14      	cmp	r3, #20
 8007738:	f200 81c7 	bhi.w	8007aca <_malloc_r+0x412>
 800773c:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8007740:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8007744:	00e3      	lsls	r3, r4, #3
 8007746:	e004      	b.n	8007752 <_malloc_r+0x9a>
 8007748:	f44f 7300 	mov.w	r3, #512	; 0x200
 800774c:	2440      	movs	r4, #64	; 0x40
 800774e:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8007752:	4fac      	ldr	r7, [pc, #688]	; (8007a04 <_malloc_r+0x34c>)
 8007754:	443b      	add	r3, r7
 8007756:	f1a3 0008 	sub.w	r0, r3, #8
 800775a:	685b      	ldr	r3, [r3, #4]
 800775c:	4298      	cmp	r0, r3
 800775e:	d106      	bne.n	800776e <_malloc_r+0xb6>
 8007760:	e00c      	b.n	800777c <_malloc_r+0xc4>
 8007762:	2900      	cmp	r1, #0
 8007764:	f280 8135 	bge.w	80079d2 <_malloc_r+0x31a>
 8007768:	68db      	ldr	r3, [r3, #12]
 800776a:	4298      	cmp	r0, r3
 800776c:	d006      	beq.n	800777c <_malloc_r+0xc4>
 800776e:	685a      	ldr	r2, [r3, #4]
 8007770:	f022 0203 	bic.w	r2, r2, #3
 8007774:	1b51      	subs	r1, r2, r5
 8007776:	290f      	cmp	r1, #15
 8007778:	ddf3      	ble.n	8007762 <_malloc_r+0xaa>
 800777a:	4664      	mov	r4, ip
 800777c:	693a      	ldr	r2, [r7, #16]
 800777e:	f8df c29c 	ldr.w	ip, [pc, #668]	; 8007a1c <_malloc_r+0x364>
 8007782:	4562      	cmp	r2, ip
 8007784:	d07c      	beq.n	8007880 <_malloc_r+0x1c8>
 8007786:	6853      	ldr	r3, [r2, #4]
 8007788:	f023 0303 	bic.w	r3, r3, #3
 800778c:	1b59      	subs	r1, r3, r5
 800778e:	290f      	cmp	r1, #15
 8007790:	f300 8148 	bgt.w	8007a24 <_malloc_r+0x36c>
 8007794:	2900      	cmp	r1, #0
 8007796:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800779a:	da54      	bge.n	8007846 <_malloc_r+0x18e>
 800779c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80077a0:	f080 8172 	bcs.w	8007a88 <_malloc_r+0x3d0>
 80077a4:	08db      	lsrs	r3, r3, #3
 80077a6:	2101      	movs	r1, #1
 80077a8:	1098      	asrs	r0, r3, #2
 80077aa:	eb03 0e01 	add.w	lr, r3, r1
 80077ae:	4081      	lsls	r1, r0
 80077b0:	eb07 08ce 	add.w	r8, r7, lr, lsl #3
 80077b4:	6878      	ldr	r0, [r7, #4]
 80077b6:	f857 303e 	ldr.w	r3, [r7, lr, lsl #3]
 80077ba:	4301      	orrs	r1, r0
 80077bc:	f1a8 0008 	sub.w	r0, r8, #8
 80077c0:	6093      	str	r3, [r2, #8]
 80077c2:	60d0      	str	r0, [r2, #12]
 80077c4:	6079      	str	r1, [r7, #4]
 80077c6:	f847 203e 	str.w	r2, [r7, lr, lsl #3]
 80077ca:	60da      	str	r2, [r3, #12]
 80077cc:	10a3      	asrs	r3, r4, #2
 80077ce:	2001      	movs	r0, #1
 80077d0:	4098      	lsls	r0, r3
 80077d2:	4288      	cmp	r0, r1
 80077d4:	d85a      	bhi.n	800788c <_malloc_r+0x1d4>
 80077d6:	4208      	tst	r0, r1
 80077d8:	d105      	bne.n	80077e6 <_malloc_r+0x12e>
 80077da:	f024 0403 	bic.w	r4, r4, #3
 80077de:	0040      	lsls	r0, r0, #1
 80077e0:	3404      	adds	r4, #4
 80077e2:	4208      	tst	r0, r1
 80077e4:	d0fb      	beq.n	80077de <_malloc_r+0x126>
 80077e6:	eb07 09c4 	add.w	r9, r7, r4, lsl #3
 80077ea:	46a0      	mov	r8, r4
 80077ec:	46ce      	mov	lr, r9
 80077ee:	f8de 300c 	ldr.w	r3, [lr, #12]
 80077f2:	459e      	cmp	lr, r3
 80077f4:	d107      	bne.n	8007806 <_malloc_r+0x14e>
 80077f6:	e12f      	b.n	8007a58 <_malloc_r+0x3a0>
 80077f8:	2a00      	cmp	r2, #0
 80077fa:	f280 8136 	bge.w	8007a6a <_malloc_r+0x3b2>
 80077fe:	68db      	ldr	r3, [r3, #12]
 8007800:	459e      	cmp	lr, r3
 8007802:	f000 8129 	beq.w	8007a58 <_malloc_r+0x3a0>
 8007806:	6859      	ldr	r1, [r3, #4]
 8007808:	f021 0103 	bic.w	r1, r1, #3
 800780c:	1b4a      	subs	r2, r1, r5
 800780e:	2a0f      	cmp	r2, #15
 8007810:	ddf2      	ble.n	80077f8 <_malloc_r+0x140>
 8007812:	f8d3 e00c 	ldr.w	lr, [r3, #12]
 8007816:	f045 0401 	orr.w	r4, r5, #1
 800781a:	f042 0801 	orr.w	r8, r2, #1
 800781e:	441d      	add	r5, r3
 8007820:	4630      	mov	r0, r6
 8007822:	689e      	ldr	r6, [r3, #8]
 8007824:	605c      	str	r4, [r3, #4]
 8007826:	f103 0908 	add.w	r9, r3, #8
 800782a:	f8c6 e00c 	str.w	lr, [r6, #12]
 800782e:	f8ce 6008 	str.w	r6, [lr, #8]
 8007832:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8007836:	e9c5 cc02 	strd	ip, ip, [r5, #8]
 800783a:	f8c5 8004 	str.w	r8, [r5, #4]
 800783e:	505a      	str	r2, [r3, r1]
 8007840:	f000 fa32 	bl	8007ca8 <__malloc_unlock>
 8007844:	e761      	b.n	800770a <_malloc_r+0x52>
 8007846:	4413      	add	r3, r2
 8007848:	f102 0908 	add.w	r9, r2, #8
 800784c:	4630      	mov	r0, r6
 800784e:	685a      	ldr	r2, [r3, #4]
 8007850:	f042 0201 	orr.w	r2, r2, #1
 8007854:	605a      	str	r2, [r3, #4]
 8007856:	f000 fa27 	bl	8007ca8 <__malloc_unlock>
 800785a:	4648      	mov	r0, r9
 800785c:	b003      	add	sp, #12
 800785e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007862:	09ab      	lsrs	r3, r5, #6
 8007864:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8007868:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800786c:	00e3      	lsls	r3, r4, #3
 800786e:	e770      	b.n	8007752 <_malloc_r+0x9a>
 8007870:	f04f 0900 	mov.w	r9, #0
 8007874:	230c      	movs	r3, #12
 8007876:	4648      	mov	r0, r9
 8007878:	6033      	str	r3, [r6, #0]
 800787a:	b003      	add	sp, #12
 800787c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007880:	10a3      	asrs	r3, r4, #2
 8007882:	2001      	movs	r0, #1
 8007884:	6879      	ldr	r1, [r7, #4]
 8007886:	4098      	lsls	r0, r3
 8007888:	4288      	cmp	r0, r1
 800788a:	d9a4      	bls.n	80077d6 <_malloc_r+0x11e>
 800788c:	f8d7 9008 	ldr.w	r9, [r7, #8]
 8007890:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007894:	f023 0803 	bic.w	r8, r3, #3
 8007898:	eba8 0205 	sub.w	r2, r8, r5
 800789c:	2a0f      	cmp	r2, #15
 800789e:	dd13      	ble.n	80078c8 <_malloc_r+0x210>
 80078a0:	45a8      	cmp	r8, r5
 80078a2:	d311      	bcc.n	80078c8 <_malloc_r+0x210>
 80078a4:	f045 0301 	orr.w	r3, r5, #1
 80078a8:	f042 0201 	orr.w	r2, r2, #1
 80078ac:	444d      	add	r5, r9
 80078ae:	f109 0908 	add.w	r9, r9, #8
 80078b2:	f849 3c04 	str.w	r3, [r9, #-4]
 80078b6:	4630      	mov	r0, r6
 80078b8:	60bd      	str	r5, [r7, #8]
 80078ba:	606a      	str	r2, [r5, #4]
 80078bc:	f000 f9f4 	bl	8007ca8 <__malloc_unlock>
 80078c0:	4648      	mov	r0, r9
 80078c2:	b003      	add	sp, #12
 80078c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80078c8:	f8df b154 	ldr.w	fp, [pc, #340]	; 8007a20 <_malloc_r+0x368>
 80078cc:	4b4e      	ldr	r3, [pc, #312]	; (8007a08 <_malloc_r+0x350>)
 80078ce:	f8db 2000 	ldr.w	r2, [fp]
 80078d2:	681b      	ldr	r3, [r3, #0]
 80078d4:	3201      	adds	r2, #1
 80078d6:	442b      	add	r3, r5
 80078d8:	f000 8135 	beq.w	8007b46 <_malloc_r+0x48e>
 80078dc:	f241 020f 	movw	r2, #4111	; 0x100f
 80078e0:	4c4a      	ldr	r4, [pc, #296]	; (8007a0c <_malloc_r+0x354>)
 80078e2:	441a      	add	r2, r3
 80078e4:	4014      	ands	r4, r2
 80078e6:	4621      	mov	r1, r4
 80078e8:	4630      	mov	r0, r6
 80078ea:	f000 fcf9 	bl	80082e0 <_sbrk_r>
 80078ee:	f1b0 3fff 	cmp.w	r0, #4294967295
 80078f2:	4682      	mov	sl, r0
 80078f4:	f000 80f7 	beq.w	8007ae6 <_malloc_r+0x42e>
 80078f8:	eb09 0008 	add.w	r0, r9, r8
 80078fc:	4550      	cmp	r0, sl
 80078fe:	f200 80f0 	bhi.w	8007ae2 <_malloc_r+0x42a>
 8007902:	4b43      	ldr	r3, [pc, #268]	; (8007a10 <_malloc_r+0x358>)
 8007904:	681a      	ldr	r2, [r3, #0]
 8007906:	4422      	add	r2, r4
 8007908:	601a      	str	r2, [r3, #0]
 800790a:	f000 8133 	beq.w	8007b74 <_malloc_r+0x4bc>
 800790e:	f8db 1000 	ldr.w	r1, [fp]
 8007912:	3101      	adds	r1, #1
 8007914:	f000 814c 	beq.w	8007bb0 <_malloc_r+0x4f8>
 8007918:	ebaa 0000 	sub.w	r0, sl, r0
 800791c:	4402      	add	r2, r0
 800791e:	601a      	str	r2, [r3, #0]
 8007920:	f01a 0207 	ands.w	r2, sl, #7
 8007924:	f000 811b 	beq.w	8007b5e <_malloc_r+0x4a6>
 8007928:	f1c2 0008 	rsb	r0, r2, #8
 800792c:	f241 0108 	movw	r1, #4104	; 0x1008
 8007930:	4482      	add	sl, r0
 8007932:	1a89      	subs	r1, r1, r2
 8007934:	4454      	add	r4, sl
 8007936:	4630      	mov	r0, r6
 8007938:	9301      	str	r3, [sp, #4]
 800793a:	f3c4 020b 	ubfx	r2, r4, #0, #12
 800793e:	1a8c      	subs	r4, r1, r2
 8007940:	4621      	mov	r1, r4
 8007942:	f000 fccd 	bl	80082e0 <_sbrk_r>
 8007946:	1c43      	adds	r3, r0, #1
 8007948:	9b01      	ldr	r3, [sp, #4]
 800794a:	f000 812e 	beq.w	8007baa <_malloc_r+0x4f2>
 800794e:	eba0 010a 	sub.w	r1, r0, sl
 8007952:	4421      	add	r1, r4
 8007954:	f041 0101 	orr.w	r1, r1, #1
 8007958:	681a      	ldr	r2, [r3, #0]
 800795a:	45b9      	cmp	r9, r7
 800795c:	f8c7 a008 	str.w	sl, [r7, #8]
 8007960:	4422      	add	r2, r4
 8007962:	f8ca 1004 	str.w	r1, [sl, #4]
 8007966:	601a      	str	r2, [r3, #0]
 8007968:	d017      	beq.n	800799a <_malloc_r+0x2e2>
 800796a:	f1b8 0f0f 	cmp.w	r8, #15
 800796e:	f240 8118 	bls.w	8007ba2 <_malloc_r+0x4ea>
 8007972:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8007976:	f1a8 010c 	sub.w	r1, r8, #12
 800797a:	f04f 0c05 	mov.w	ip, #5
 800797e:	f021 0107 	bic.w	r1, r1, #7
 8007982:	f000 0001 	and.w	r0, r0, #1
 8007986:	eb09 0401 	add.w	r4, r9, r1
 800798a:	4308      	orrs	r0, r1
 800798c:	290f      	cmp	r1, #15
 800798e:	f8c9 0004 	str.w	r0, [r9, #4]
 8007992:	e9c4 cc01 	strd	ip, ip, [r4, #4]
 8007996:	f200 8122 	bhi.w	8007bde <_malloc_r+0x526>
 800799a:	4b1e      	ldr	r3, [pc, #120]	; (8007a14 <_malloc_r+0x35c>)
 800799c:	481e      	ldr	r0, [pc, #120]	; (8007a18 <_malloc_r+0x360>)
 800799e:	6819      	ldr	r1, [r3, #0]
 80079a0:	f8d7 9008 	ldr.w	r9, [r7, #8]
 80079a4:	428a      	cmp	r2, r1
 80079a6:	6801      	ldr	r1, [r0, #0]
 80079a8:	bf88      	it	hi
 80079aa:	601a      	strhi	r2, [r3, #0]
 80079ac:	428a      	cmp	r2, r1
 80079ae:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80079b2:	bf88      	it	hi
 80079b4:	6002      	strhi	r2, [r0, #0]
 80079b6:	f023 0303 	bic.w	r3, r3, #3
 80079ba:	1b5a      	subs	r2, r3, r5
 80079bc:	2a0f      	cmp	r2, #15
 80079be:	dd02      	ble.n	80079c6 <_malloc_r+0x30e>
 80079c0:	429d      	cmp	r5, r3
 80079c2:	f67f af6f 	bls.w	80078a4 <_malloc_r+0x1ec>
 80079c6:	4630      	mov	r0, r6
 80079c8:	f04f 0900 	mov.w	r9, #0
 80079cc:	f000 f96c 	bl	8007ca8 <__malloc_unlock>
 80079d0:	e69b      	b.n	800770a <_malloc_r+0x52>
 80079d2:	441a      	add	r2, r3
 80079d4:	f103 0908 	add.w	r9, r3, #8
 80079d8:	4630      	mov	r0, r6
 80079da:	6851      	ldr	r1, [r2, #4]
 80079dc:	e9d3 7502 	ldrd	r7, r5, [r3, #8]
 80079e0:	f041 0101 	orr.w	r1, r1, #1
 80079e4:	60fd      	str	r5, [r7, #12]
 80079e6:	60af      	str	r7, [r5, #8]
 80079e8:	6051      	str	r1, [r2, #4]
 80079ea:	f000 f95d 	bl	8007ca8 <__malloc_unlock>
 80079ee:	4648      	mov	r0, r9
 80079f0:	b003      	add	sp, #12
 80079f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80079f6:	68d3      	ldr	r3, [r2, #12]
 80079f8:	429a      	cmp	r2, r3
 80079fa:	f47f ae75 	bne.w	80076e8 <_malloc_r+0x30>
 80079fe:	3402      	adds	r4, #2
 8007a00:	e6bc      	b.n	800777c <_malloc_r+0xc4>
 8007a02:	bf00      	nop
 8007a04:	2000045c 	.word	0x2000045c
 8007a08:	20000a38 	.word	0x20000a38
 8007a0c:	fffff000 	.word	0xfffff000
 8007a10:	20000a08 	.word	0x20000a08
 8007a14:	20000a30 	.word	0x20000a30
 8007a18:	20000a34 	.word	0x20000a34
 8007a1c:	20000464 	.word	0x20000464
 8007a20:	20000864 	.word	0x20000864
 8007a24:	f045 0401 	orr.w	r4, r5, #1
 8007a28:	f041 0e01 	orr.w	lr, r1, #1
 8007a2c:	4415      	add	r5, r2
 8007a2e:	f102 0908 	add.w	r9, r2, #8
 8007a32:	6054      	str	r4, [r2, #4]
 8007a34:	4630      	mov	r0, r6
 8007a36:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8007a3a:	e9c5 cc02 	strd	ip, ip, [r5, #8]
 8007a3e:	f8c5 e004 	str.w	lr, [r5, #4]
 8007a42:	50d1      	str	r1, [r2, r3]
 8007a44:	f000 f930 	bl	8007ca8 <__malloc_unlock>
 8007a48:	4648      	mov	r0, r9
 8007a4a:	b003      	add	sp, #12
 8007a4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007a50:	08ec      	lsrs	r4, r5, #3
 8007a52:	f105 0208 	add.w	r2, r5, #8
 8007a56:	e63f      	b.n	80076d8 <_malloc_r+0x20>
 8007a58:	f108 0801 	add.w	r8, r8, #1
 8007a5c:	f10e 0e08 	add.w	lr, lr, #8
 8007a60:	f018 0f03 	tst.w	r8, #3
 8007a64:	f47f aec3 	bne.w	80077ee <_malloc_r+0x136>
 8007a68:	e055      	b.n	8007b16 <_malloc_r+0x45e>
 8007a6a:	4419      	add	r1, r3
 8007a6c:	68da      	ldr	r2, [r3, #12]
 8007a6e:	4699      	mov	r9, r3
 8007a70:	4630      	mov	r0, r6
 8007a72:	684b      	ldr	r3, [r1, #4]
 8007a74:	f859 5f08 	ldr.w	r5, [r9, #8]!
 8007a78:	f043 0301 	orr.w	r3, r3, #1
 8007a7c:	604b      	str	r3, [r1, #4]
 8007a7e:	60ea      	str	r2, [r5, #12]
 8007a80:	6095      	str	r5, [r2, #8]
 8007a82:	f000 f911 	bl	8007ca8 <__malloc_unlock>
 8007a86:	e640      	b.n	800770a <_malloc_r+0x52>
 8007a88:	0a59      	lsrs	r1, r3, #9
 8007a8a:	2904      	cmp	r1, #4
 8007a8c:	d932      	bls.n	8007af4 <_malloc_r+0x43c>
 8007a8e:	2914      	cmp	r1, #20
 8007a90:	d868      	bhi.n	8007b64 <_malloc_r+0x4ac>
 8007a92:	f101 005c 	add.w	r0, r1, #92	; 0x5c
 8007a96:	315b      	adds	r1, #91	; 0x5b
 8007a98:	00c0      	lsls	r0, r0, #3
 8007a9a:	eb07 0e00 	add.w	lr, r7, r0
 8007a9e:	5838      	ldr	r0, [r7, r0]
 8007aa0:	f1ae 0e08 	sub.w	lr, lr, #8
 8007aa4:	4586      	cmp	lr, r0
 8007aa6:	d051      	beq.n	8007b4c <_malloc_r+0x494>
 8007aa8:	6841      	ldr	r1, [r0, #4]
 8007aaa:	f021 0103 	bic.w	r1, r1, #3
 8007aae:	4299      	cmp	r1, r3
 8007ab0:	d902      	bls.n	8007ab8 <_malloc_r+0x400>
 8007ab2:	6880      	ldr	r0, [r0, #8]
 8007ab4:	4586      	cmp	lr, r0
 8007ab6:	d1f7      	bne.n	8007aa8 <_malloc_r+0x3f0>
 8007ab8:	f8d0 e00c 	ldr.w	lr, [r0, #12]
 8007abc:	6879      	ldr	r1, [r7, #4]
 8007abe:	e9c2 0e02 	strd	r0, lr, [r2, #8]
 8007ac2:	f8ce 2008 	str.w	r2, [lr, #8]
 8007ac6:	60c2      	str	r2, [r0, #12]
 8007ac8:	e680      	b.n	80077cc <_malloc_r+0x114>
 8007aca:	2b54      	cmp	r3, #84	; 0x54
 8007acc:	d918      	bls.n	8007b00 <_malloc_r+0x448>
 8007ace:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8007ad2:	d85b      	bhi.n	8007b8c <_malloc_r+0x4d4>
 8007ad4:	0beb      	lsrs	r3, r5, #15
 8007ad6:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8007ada:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8007ade:	00e3      	lsls	r3, r4, #3
 8007ae0:	e637      	b.n	8007752 <_malloc_r+0x9a>
 8007ae2:	45b9      	cmp	r9, r7
 8007ae4:	d067      	beq.n	8007bb6 <_malloc_r+0x4fe>
 8007ae6:	f8d7 9008 	ldr.w	r9, [r7, #8]
 8007aea:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007aee:	f023 0303 	bic.w	r3, r3, #3
 8007af2:	e762      	b.n	80079ba <_malloc_r+0x302>
 8007af4:	0999      	lsrs	r1, r3, #6
 8007af6:	f101 0039 	add.w	r0, r1, #57	; 0x39
 8007afa:	3138      	adds	r1, #56	; 0x38
 8007afc:	00c0      	lsls	r0, r0, #3
 8007afe:	e7cc      	b.n	8007a9a <_malloc_r+0x3e2>
 8007b00:	0b2b      	lsrs	r3, r5, #12
 8007b02:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8007b06:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8007b0a:	00e3      	lsls	r3, r4, #3
 8007b0c:	e621      	b.n	8007752 <_malloc_r+0x9a>
 8007b0e:	f8d9 9000 	ldr.w	r9, [r9]
 8007b12:	4599      	cmp	r9, r3
 8007b14:	d17a      	bne.n	8007c0c <_malloc_r+0x554>
 8007b16:	f014 0f03 	tst.w	r4, #3
 8007b1a:	f1a9 0308 	sub.w	r3, r9, #8
 8007b1e:	f104 34ff 	add.w	r4, r4, #4294967295
 8007b22:	d1f4      	bne.n	8007b0e <_malloc_r+0x456>
 8007b24:	687b      	ldr	r3, [r7, #4]
 8007b26:	ea23 0300 	bic.w	r3, r3, r0
 8007b2a:	607b      	str	r3, [r7, #4]
 8007b2c:	0040      	lsls	r0, r0, #1
 8007b2e:	4298      	cmp	r0, r3
 8007b30:	f63f aeac 	bhi.w	800788c <_malloc_r+0x1d4>
 8007b34:	b918      	cbnz	r0, 8007b3e <_malloc_r+0x486>
 8007b36:	e6a9      	b.n	800788c <_malloc_r+0x1d4>
 8007b38:	0040      	lsls	r0, r0, #1
 8007b3a:	f108 0804 	add.w	r8, r8, #4
 8007b3e:	4218      	tst	r0, r3
 8007b40:	d0fa      	beq.n	8007b38 <_malloc_r+0x480>
 8007b42:	4644      	mov	r4, r8
 8007b44:	e64f      	b.n	80077e6 <_malloc_r+0x12e>
 8007b46:	f103 0410 	add.w	r4, r3, #16
 8007b4a:	e6cc      	b.n	80078e6 <_malloc_r+0x22e>
 8007b4c:	1089      	asrs	r1, r1, #2
 8007b4e:	f04f 0801 	mov.w	r8, #1
 8007b52:	687b      	ldr	r3, [r7, #4]
 8007b54:	fa08 f101 	lsl.w	r1, r8, r1
 8007b58:	4319      	orrs	r1, r3
 8007b5a:	6079      	str	r1, [r7, #4]
 8007b5c:	e7af      	b.n	8007abe <_malloc_r+0x406>
 8007b5e:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8007b62:	e6e7      	b.n	8007934 <_malloc_r+0x27c>
 8007b64:	2954      	cmp	r1, #84	; 0x54
 8007b66:	d82b      	bhi.n	8007bc0 <_malloc_r+0x508>
 8007b68:	0b19      	lsrs	r1, r3, #12
 8007b6a:	f101 006f 	add.w	r0, r1, #111	; 0x6f
 8007b6e:	316e      	adds	r1, #110	; 0x6e
 8007b70:	00c0      	lsls	r0, r0, #3
 8007b72:	e792      	b.n	8007a9a <_malloc_r+0x3e2>
 8007b74:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8007b78:	2900      	cmp	r1, #0
 8007b7a:	f47f aec8 	bne.w	800790e <_malloc_r+0x256>
 8007b7e:	eb08 0304 	add.w	r3, r8, r4
 8007b82:	68b9      	ldr	r1, [r7, #8]
 8007b84:	f043 0301 	orr.w	r3, r3, #1
 8007b88:	604b      	str	r3, [r1, #4]
 8007b8a:	e706      	b.n	800799a <_malloc_r+0x2e2>
 8007b8c:	f240 5254 	movw	r2, #1364	; 0x554
 8007b90:	4293      	cmp	r3, r2
 8007b92:	d81e      	bhi.n	8007bd2 <_malloc_r+0x51a>
 8007b94:	0cab      	lsrs	r3, r5, #18
 8007b96:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8007b9a:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8007b9e:	00e3      	lsls	r3, r4, #3
 8007ba0:	e5d7      	b.n	8007752 <_malloc_r+0x9a>
 8007ba2:	2301      	movs	r3, #1
 8007ba4:	f8ca 3004 	str.w	r3, [sl, #4]
 8007ba8:	e70d      	b.n	80079c6 <_malloc_r+0x30e>
 8007baa:	2101      	movs	r1, #1
 8007bac:	2400      	movs	r4, #0
 8007bae:	e6d3      	b.n	8007958 <_malloc_r+0x2a0>
 8007bb0:	f8cb a000 	str.w	sl, [fp]
 8007bb4:	e6b4      	b.n	8007920 <_malloc_r+0x268>
 8007bb6:	4b16      	ldr	r3, [pc, #88]	; (8007c10 <_malloc_r+0x558>)
 8007bb8:	681a      	ldr	r2, [r3, #0]
 8007bba:	4422      	add	r2, r4
 8007bbc:	601a      	str	r2, [r3, #0]
 8007bbe:	e6a6      	b.n	800790e <_malloc_r+0x256>
 8007bc0:	f5b1 7faa 	cmp.w	r1, #340	; 0x154
 8007bc4:	d814      	bhi.n	8007bf0 <_malloc_r+0x538>
 8007bc6:	0bd9      	lsrs	r1, r3, #15
 8007bc8:	f101 0078 	add.w	r0, r1, #120	; 0x78
 8007bcc:	3177      	adds	r1, #119	; 0x77
 8007bce:	00c0      	lsls	r0, r0, #3
 8007bd0:	e763      	b.n	8007a9a <_malloc_r+0x3e2>
 8007bd2:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8007bd6:	247f      	movs	r4, #127	; 0x7f
 8007bd8:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8007bdc:	e5b9      	b.n	8007752 <_malloc_r+0x9a>
 8007bde:	f109 0108 	add.w	r1, r9, #8
 8007be2:	4630      	mov	r0, r6
 8007be4:	9301      	str	r3, [sp, #4]
 8007be6:	f7ff fbbf 	bl	8007368 <_free_r>
 8007bea:	9b01      	ldr	r3, [sp, #4]
 8007bec:	681a      	ldr	r2, [r3, #0]
 8007bee:	e6d4      	b.n	800799a <_malloc_r+0x2e2>
 8007bf0:	f240 5054 	movw	r0, #1364	; 0x554
 8007bf4:	4281      	cmp	r1, r0
 8007bf6:	d805      	bhi.n	8007c04 <_malloc_r+0x54c>
 8007bf8:	0c99      	lsrs	r1, r3, #18
 8007bfa:	f101 007d 	add.w	r0, r1, #125	; 0x7d
 8007bfe:	317c      	adds	r1, #124	; 0x7c
 8007c00:	00c0      	lsls	r0, r0, #3
 8007c02:	e74a      	b.n	8007a9a <_malloc_r+0x3e2>
 8007c04:	f44f 707e 	mov.w	r0, #1016	; 0x3f8
 8007c08:	217e      	movs	r1, #126	; 0x7e
 8007c0a:	e746      	b.n	8007a9a <_malloc_r+0x3e2>
 8007c0c:	687b      	ldr	r3, [r7, #4]
 8007c0e:	e78d      	b.n	8007b2c <_malloc_r+0x474>
 8007c10:	20000a08 	.word	0x20000a08

08007c14 <memchr>:
 8007c14:	0783      	lsls	r3, r0, #30
 8007c16:	b470      	push	{r4, r5, r6}
 8007c18:	b2cd      	uxtb	r5, r1
 8007c1a:	d03b      	beq.n	8007c94 <memchr+0x80>
 8007c1c:	1e54      	subs	r4, r2, #1
 8007c1e:	b302      	cbz	r2, 8007c62 <memchr+0x4e>
 8007c20:	7803      	ldrb	r3, [r0, #0]
 8007c22:	42ab      	cmp	r3, r5
 8007c24:	d01e      	beq.n	8007c64 <memchr+0x50>
 8007c26:	1c43      	adds	r3, r0, #1
 8007c28:	e005      	b.n	8007c36 <memchr+0x22>
 8007c2a:	f114 34ff 	adds.w	r4, r4, #4294967295
 8007c2e:	d318      	bcc.n	8007c62 <memchr+0x4e>
 8007c30:	7802      	ldrb	r2, [r0, #0]
 8007c32:	42aa      	cmp	r2, r5
 8007c34:	d016      	beq.n	8007c64 <memchr+0x50>
 8007c36:	f013 0f03 	tst.w	r3, #3
 8007c3a:	4618      	mov	r0, r3
 8007c3c:	f103 0301 	add.w	r3, r3, #1
 8007c40:	d1f3      	bne.n	8007c2a <memchr+0x16>
 8007c42:	2c03      	cmp	r4, #3
 8007c44:	d810      	bhi.n	8007c68 <memchr+0x54>
 8007c46:	b33c      	cbz	r4, 8007c98 <memchr+0x84>
 8007c48:	7803      	ldrb	r3, [r0, #0]
 8007c4a:	42ab      	cmp	r3, r5
 8007c4c:	d00a      	beq.n	8007c64 <memchr+0x50>
 8007c4e:	4404      	add	r4, r0
 8007c50:	1c43      	adds	r3, r0, #1
 8007c52:	e002      	b.n	8007c5a <memchr+0x46>
 8007c54:	7802      	ldrb	r2, [r0, #0]
 8007c56:	42aa      	cmp	r2, r5
 8007c58:	d004      	beq.n	8007c64 <memchr+0x50>
 8007c5a:	4618      	mov	r0, r3
 8007c5c:	3301      	adds	r3, #1
 8007c5e:	4284      	cmp	r4, r0
 8007c60:	d1f8      	bne.n	8007c54 <memchr+0x40>
 8007c62:	2000      	movs	r0, #0
 8007c64:	bc70      	pop	{r4, r5, r6}
 8007c66:	4770      	bx	lr
 8007c68:	020a      	lsls	r2, r1, #8
 8007c6a:	4601      	mov	r1, r0
 8007c6c:	b292      	uxth	r2, r2
 8007c6e:	432a      	orrs	r2, r5
 8007c70:	ea42 4202 	orr.w	r2, r2, r2, lsl #16
 8007c74:	4608      	mov	r0, r1
 8007c76:	3104      	adds	r1, #4
 8007c78:	6803      	ldr	r3, [r0, #0]
 8007c7a:	4053      	eors	r3, r2
 8007c7c:	f1a3 3601 	sub.w	r6, r3, #16843009	; 0x1010101
 8007c80:	ea26 0303 	bic.w	r3, r6, r3
 8007c84:	f013 3f80 	tst.w	r3, #2155905152	; 0x80808080
 8007c88:	d1de      	bne.n	8007c48 <memchr+0x34>
 8007c8a:	3c04      	subs	r4, #4
 8007c8c:	4608      	mov	r0, r1
 8007c8e:	2c03      	cmp	r4, #3
 8007c90:	d8f0      	bhi.n	8007c74 <memchr+0x60>
 8007c92:	e7d8      	b.n	8007c46 <memchr+0x32>
 8007c94:	4614      	mov	r4, r2
 8007c96:	e7d4      	b.n	8007c42 <memchr+0x2e>
 8007c98:	4620      	mov	r0, r4
 8007c9a:	e7e3      	b.n	8007c64 <memchr+0x50>

08007c9c <__malloc_lock>:
 8007c9c:	4801      	ldr	r0, [pc, #4]	; (8007ca4 <__malloc_lock+0x8>)
 8007c9e:	f7ff bc8f 	b.w	80075c0 <__retarget_lock_acquire_recursive>
 8007ca2:	bf00      	nop
 8007ca4:	20000ae0 	.word	0x20000ae0

08007ca8 <__malloc_unlock>:
 8007ca8:	4801      	ldr	r0, [pc, #4]	; (8007cb0 <__malloc_unlock+0x8>)
 8007caa:	f7ff bc8b 	b.w	80075c4 <__retarget_lock_release_recursive>
 8007cae:	bf00      	nop
 8007cb0:	20000ae0 	.word	0x20000ae0

08007cb4 <_Balloc>:
 8007cb4:	b538      	push	{r3, r4, r5, lr}
 8007cb6:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007cb8:	4605      	mov	r5, r0
 8007cba:	460c      	mov	r4, r1
 8007cbc:	b14b      	cbz	r3, 8007cd2 <_Balloc+0x1e>
 8007cbe:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8007cc2:	b180      	cbz	r0, 8007ce6 <_Balloc+0x32>
 8007cc4:	6802      	ldr	r2, [r0, #0]
 8007cc6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8007cca:	2300      	movs	r3, #0
 8007ccc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8007cd0:	bd38      	pop	{r3, r4, r5, pc}
 8007cd2:	2221      	movs	r2, #33	; 0x21
 8007cd4:	2104      	movs	r1, #4
 8007cd6:	f000 fc45 	bl	8008564 <_calloc_r>
 8007cda:	4603      	mov	r3, r0
 8007cdc:	64e8      	str	r0, [r5, #76]	; 0x4c
 8007cde:	2800      	cmp	r0, #0
 8007ce0:	d1ed      	bne.n	8007cbe <_Balloc+0xa>
 8007ce2:	2000      	movs	r0, #0
 8007ce4:	bd38      	pop	{r3, r4, r5, pc}
 8007ce6:	2101      	movs	r1, #1
 8007ce8:	4628      	mov	r0, r5
 8007cea:	fa01 f504 	lsl.w	r5, r1, r4
 8007cee:	1d6a      	adds	r2, r5, #5
 8007cf0:	0092      	lsls	r2, r2, #2
 8007cf2:	f000 fc37 	bl	8008564 <_calloc_r>
 8007cf6:	2800      	cmp	r0, #0
 8007cf8:	d0f3      	beq.n	8007ce2 <_Balloc+0x2e>
 8007cfa:	e9c0 4501 	strd	r4, r5, [r0, #4]
 8007cfe:	e7e4      	b.n	8007cca <_Balloc+0x16>

08007d00 <_Bfree>:
 8007d00:	b131      	cbz	r1, 8007d10 <_Bfree+0x10>
 8007d02:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007d04:	684a      	ldr	r2, [r1, #4]
 8007d06:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8007d0a:	6008      	str	r0, [r1, #0]
 8007d0c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007d10:	4770      	bx	lr
 8007d12:	bf00      	nop

08007d14 <__multadd>:
 8007d14:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007d16:	f101 0c14 	add.w	ip, r1, #20
 8007d1a:	b083      	sub	sp, #12
 8007d1c:	460c      	mov	r4, r1
 8007d1e:	4605      	mov	r5, r0
 8007d20:	690e      	ldr	r6, [r1, #16]
 8007d22:	2700      	movs	r7, #0
 8007d24:	f8dc 0000 	ldr.w	r0, [ip]
 8007d28:	3701      	adds	r7, #1
 8007d2a:	b281      	uxth	r1, r0
 8007d2c:	42be      	cmp	r6, r7
 8007d2e:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8007d32:	fb02 3301 	mla	r3, r2, r1, r3
 8007d36:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8007d3a:	b29b      	uxth	r3, r3
 8007d3c:	fb02 1000 	mla	r0, r2, r0, r1
 8007d40:	eb03 4100 	add.w	r1, r3, r0, lsl #16
 8007d44:	ea4f 4310 	mov.w	r3, r0, lsr #16
 8007d48:	f84c 1b04 	str.w	r1, [ip], #4
 8007d4c:	dcea      	bgt.n	8007d24 <__multadd+0x10>
 8007d4e:	b13b      	cbz	r3, 8007d60 <__multadd+0x4c>
 8007d50:	68a2      	ldr	r2, [r4, #8]
 8007d52:	42b2      	cmp	r2, r6
 8007d54:	dd07      	ble.n	8007d66 <__multadd+0x52>
 8007d56:	eb04 0286 	add.w	r2, r4, r6, lsl #2
 8007d5a:	3601      	adds	r6, #1
 8007d5c:	6153      	str	r3, [r2, #20]
 8007d5e:	6126      	str	r6, [r4, #16]
 8007d60:	4620      	mov	r0, r4
 8007d62:	b003      	add	sp, #12
 8007d64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007d66:	6861      	ldr	r1, [r4, #4]
 8007d68:	4628      	mov	r0, r5
 8007d6a:	9301      	str	r3, [sp, #4]
 8007d6c:	3101      	adds	r1, #1
 8007d6e:	f7ff ffa1 	bl	8007cb4 <_Balloc>
 8007d72:	6922      	ldr	r2, [r4, #16]
 8007d74:	f104 010c 	add.w	r1, r4, #12
 8007d78:	4607      	mov	r7, r0
 8007d7a:	3202      	adds	r2, #2
 8007d7c:	300c      	adds	r0, #12
 8007d7e:	0092      	lsls	r2, r2, #2
 8007d80:	f7f8 fbe4 	bl	800054c <memcpy>
 8007d84:	6cea      	ldr	r2, [r5, #76]	; 0x4c
 8007d86:	6861      	ldr	r1, [r4, #4]
 8007d88:	9b01      	ldr	r3, [sp, #4]
 8007d8a:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8007d8e:	6020      	str	r0, [r4, #0]
 8007d90:	f842 4021 	str.w	r4, [r2, r1, lsl #2]
 8007d94:	463c      	mov	r4, r7
 8007d96:	e7de      	b.n	8007d56 <__multadd+0x42>

08007d98 <__hi0bits>:
 8007d98:	4a0f      	ldr	r2, [pc, #60]	; (8007dd8 <__hi0bits+0x40>)
 8007d9a:	4603      	mov	r3, r0
 8007d9c:	4002      	ands	r2, r0
 8007d9e:	b9c2      	cbnz	r2, 8007dd2 <__hi0bits+0x3a>
 8007da0:	0403      	lsls	r3, r0, #16
 8007da2:	2010      	movs	r0, #16
 8007da4:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8007da8:	d101      	bne.n	8007dae <__hi0bits+0x16>
 8007daa:	3008      	adds	r0, #8
 8007dac:	021b      	lsls	r3, r3, #8
 8007dae:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8007db2:	d101      	bne.n	8007db8 <__hi0bits+0x20>
 8007db4:	3004      	adds	r0, #4
 8007db6:	011b      	lsls	r3, r3, #4
 8007db8:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8007dbc:	d101      	bne.n	8007dc2 <__hi0bits+0x2a>
 8007dbe:	3002      	adds	r0, #2
 8007dc0:	009b      	lsls	r3, r3, #2
 8007dc2:	2b00      	cmp	r3, #0
 8007dc4:	db04      	blt.n	8007dd0 <__hi0bits+0x38>
 8007dc6:	005b      	lsls	r3, r3, #1
 8007dc8:	d501      	bpl.n	8007dce <__hi0bits+0x36>
 8007dca:	3001      	adds	r0, #1
 8007dcc:	4770      	bx	lr
 8007dce:	2020      	movs	r0, #32
 8007dd0:	4770      	bx	lr
 8007dd2:	2000      	movs	r0, #0
 8007dd4:	e7e6      	b.n	8007da4 <__hi0bits+0xc>
 8007dd6:	bf00      	nop
 8007dd8:	ffff0000 	.word	0xffff0000

08007ddc <__lo0bits>:
 8007ddc:	6803      	ldr	r3, [r0, #0]
 8007dde:	4601      	mov	r1, r0
 8007de0:	f013 0207 	ands.w	r2, r3, #7
 8007de4:	d007      	beq.n	8007df6 <__lo0bits+0x1a>
 8007de6:	07da      	lsls	r2, r3, #31
 8007de8:	d41f      	bmi.n	8007e2a <__lo0bits+0x4e>
 8007dea:	0798      	lsls	r0, r3, #30
 8007dec:	d51f      	bpl.n	8007e2e <__lo0bits+0x52>
 8007dee:	085b      	lsrs	r3, r3, #1
 8007df0:	2001      	movs	r0, #1
 8007df2:	600b      	str	r3, [r1, #0]
 8007df4:	4770      	bx	lr
 8007df6:	b298      	uxth	r0, r3
 8007df8:	b1a0      	cbz	r0, 8007e24 <__lo0bits+0x48>
 8007dfa:	4610      	mov	r0, r2
 8007dfc:	f013 0fff 	tst.w	r3, #255	; 0xff
 8007e00:	d101      	bne.n	8007e06 <__lo0bits+0x2a>
 8007e02:	3008      	adds	r0, #8
 8007e04:	0a1b      	lsrs	r3, r3, #8
 8007e06:	071a      	lsls	r2, r3, #28
 8007e08:	d101      	bne.n	8007e0e <__lo0bits+0x32>
 8007e0a:	3004      	adds	r0, #4
 8007e0c:	091b      	lsrs	r3, r3, #4
 8007e0e:	079a      	lsls	r2, r3, #30
 8007e10:	d101      	bne.n	8007e16 <__lo0bits+0x3a>
 8007e12:	3002      	adds	r0, #2
 8007e14:	089b      	lsrs	r3, r3, #2
 8007e16:	07da      	lsls	r2, r3, #31
 8007e18:	d402      	bmi.n	8007e20 <__lo0bits+0x44>
 8007e1a:	085b      	lsrs	r3, r3, #1
 8007e1c:	d00b      	beq.n	8007e36 <__lo0bits+0x5a>
 8007e1e:	3001      	adds	r0, #1
 8007e20:	600b      	str	r3, [r1, #0]
 8007e22:	4770      	bx	lr
 8007e24:	0c1b      	lsrs	r3, r3, #16
 8007e26:	2010      	movs	r0, #16
 8007e28:	e7e8      	b.n	8007dfc <__lo0bits+0x20>
 8007e2a:	2000      	movs	r0, #0
 8007e2c:	4770      	bx	lr
 8007e2e:	089b      	lsrs	r3, r3, #2
 8007e30:	2002      	movs	r0, #2
 8007e32:	600b      	str	r3, [r1, #0]
 8007e34:	4770      	bx	lr
 8007e36:	2020      	movs	r0, #32
 8007e38:	4770      	bx	lr
 8007e3a:	bf00      	nop

08007e3c <__i2b>:
 8007e3c:	b510      	push	{r4, lr}
 8007e3e:	460c      	mov	r4, r1
 8007e40:	2101      	movs	r1, #1
 8007e42:	f7ff ff37 	bl	8007cb4 <_Balloc>
 8007e46:	2201      	movs	r2, #1
 8007e48:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8007e4c:	bd10      	pop	{r4, pc}
 8007e4e:	bf00      	nop

08007e50 <__multiply>:
 8007e50:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007e54:	690d      	ldr	r5, [r1, #16]
 8007e56:	b085      	sub	sp, #20
 8007e58:	6914      	ldr	r4, [r2, #16]
 8007e5a:	460e      	mov	r6, r1
 8007e5c:	4691      	mov	r9, r2
 8007e5e:	42a5      	cmp	r5, r4
 8007e60:	da04      	bge.n	8007e6c <__multiply+0x1c>
 8007e62:	462a      	mov	r2, r5
 8007e64:	464e      	mov	r6, r9
 8007e66:	4625      	mov	r5, r4
 8007e68:	4689      	mov	r9, r1
 8007e6a:	4614      	mov	r4, r2
 8007e6c:	eb05 0804 	add.w	r8, r5, r4
 8007e70:	e9d6 1301 	ldrd	r1, r3, [r6, #4]
 8007e74:	4543      	cmp	r3, r8
 8007e76:	bfb8      	it	lt
 8007e78:	3101      	addlt	r1, #1
 8007e7a:	f7ff ff1b 	bl	8007cb4 <_Balloc>
 8007e7e:	f100 0b14 	add.w	fp, r0, #20
 8007e82:	9001      	str	r0, [sp, #4]
 8007e84:	eb0b 0a88 	add.w	sl, fp, r8, lsl #2
 8007e88:	45d3      	cmp	fp, sl
 8007e8a:	d205      	bcs.n	8007e98 <__multiply+0x48>
 8007e8c:	465b      	mov	r3, fp
 8007e8e:	2200      	movs	r2, #0
 8007e90:	f843 2b04 	str.w	r2, [r3], #4
 8007e94:	459a      	cmp	sl, r3
 8007e96:	d8fb      	bhi.n	8007e90 <__multiply+0x40>
 8007e98:	f109 0314 	add.w	r3, r9, #20
 8007e9c:	f106 0214 	add.w	r2, r6, #20
 8007ea0:	eb03 0484 	add.w	r4, r3, r4, lsl #2
 8007ea4:	eb02 0e85 	add.w	lr, r2, r5, lsl #2
 8007ea8:	42a3      	cmp	r3, r4
 8007eaa:	d264      	bcs.n	8007f76 <__multiply+0x126>
 8007eac:	eba4 0409 	sub.w	r4, r4, r9
 8007eb0:	f109 0910 	add.w	r9, r9, #16
 8007eb4:	3c15      	subs	r4, #21
 8007eb6:	f024 0403 	bic.w	r4, r4, #3
 8007eba:	4423      	add	r3, r4
 8007ebc:	e9cd a802 	strd	sl, r8, [sp, #8]
 8007ec0:	4690      	mov	r8, r2
 8007ec2:	469a      	mov	sl, r3
 8007ec4:	e005      	b.n	8007ed2 <__multiply+0x82>
 8007ec6:	0c00      	lsrs	r0, r0, #16
 8007ec8:	d12e      	bne.n	8007f28 <__multiply+0xd8>
 8007eca:	45ca      	cmp	sl, r9
 8007ecc:	f10b 0b04 	add.w	fp, fp, #4
 8007ed0:	d04f      	beq.n	8007f72 <__multiply+0x122>
 8007ed2:	f859 0f04 	ldr.w	r0, [r9, #4]!
 8007ed6:	fa1f fc80 	uxth.w	ip, r0
 8007eda:	f1bc 0f00 	cmp.w	ip, #0
 8007ede:	d0f2      	beq.n	8007ec6 <__multiply+0x76>
 8007ee0:	4647      	mov	r7, r8
 8007ee2:	465e      	mov	r6, fp
 8007ee4:	2100      	movs	r1, #0
 8007ee6:	e000      	b.n	8007eea <__multiply+0x9a>
 8007ee8:	4606      	mov	r6, r0
 8007eea:	f857 3b04 	ldr.w	r3, [r7], #4
 8007eee:	4630      	mov	r0, r6
 8007ef0:	6834      	ldr	r4, [r6, #0]
 8007ef2:	b29a      	uxth	r2, r3
 8007ef4:	45be      	cmp	lr, r7
 8007ef6:	b2a5      	uxth	r5, r4
 8007ef8:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8007efc:	fb0c 5202 	mla	r2, ip, r2, r5
 8007f00:	ea4f 4414 	mov.w	r4, r4, lsr #16
 8007f04:	440a      	add	r2, r1
 8007f06:	fb0c 4103 	mla	r1, ip, r3, r4
 8007f0a:	b293      	uxth	r3, r2
 8007f0c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8007f10:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8007f14:	ea4f 4111 	mov.w	r1, r1, lsr #16
 8007f18:	f840 3b04 	str.w	r3, [r0], #4
 8007f1c:	d8e4      	bhi.n	8007ee8 <__multiply+0x98>
 8007f1e:	6071      	str	r1, [r6, #4]
 8007f20:	f8d9 0000 	ldr.w	r0, [r9]
 8007f24:	0c00      	lsrs	r0, r0, #16
 8007f26:	d0d0      	beq.n	8007eca <__multiply+0x7a>
 8007f28:	f8db 3000 	ldr.w	r3, [fp]
 8007f2c:	4644      	mov	r4, r8
 8007f2e:	465e      	mov	r6, fp
 8007f30:	2700      	movs	r7, #0
 8007f32:	461a      	mov	r2, r3
 8007f34:	e000      	b.n	8007f38 <__multiply+0xe8>
 8007f36:	460e      	mov	r6, r1
 8007f38:	0c15      	lsrs	r5, r2, #16
 8007f3a:	8822      	ldrh	r2, [r4, #0]
 8007f3c:	b29b      	uxth	r3, r3
 8007f3e:	4631      	mov	r1, r6
 8007f40:	fb00 5202 	mla	r2, r0, r2, r5
 8007f44:	4417      	add	r7, r2
 8007f46:	ea43 4307 	orr.w	r3, r3, r7, lsl #16
 8007f4a:	f841 3b04 	str.w	r3, [r1], #4
 8007f4e:	f854 3b04 	ldr.w	r3, [r4], #4
 8007f52:	6872      	ldr	r2, [r6, #4]
 8007f54:	0c1b      	lsrs	r3, r3, #16
 8007f56:	45a6      	cmp	lr, r4
 8007f58:	b295      	uxth	r5, r2
 8007f5a:	fb00 5303 	mla	r3, r0, r3, r5
 8007f5e:	eb03 4317 	add.w	r3, r3, r7, lsr #16
 8007f62:	ea4f 4713 	mov.w	r7, r3, lsr #16
 8007f66:	d8e6      	bhi.n	8007f36 <__multiply+0xe6>
 8007f68:	45ca      	cmp	sl, r9
 8007f6a:	6073      	str	r3, [r6, #4]
 8007f6c:	f10b 0b04 	add.w	fp, fp, #4
 8007f70:	d1af      	bne.n	8007ed2 <__multiply+0x82>
 8007f72:	e9dd a802 	ldrd	sl, r8, [sp, #8]
 8007f76:	f1b8 0f00 	cmp.w	r8, #0
 8007f7a:	dd0b      	ble.n	8007f94 <__multiply+0x144>
 8007f7c:	f85a 3c04 	ldr.w	r3, [sl, #-4]
 8007f80:	f1aa 0a04 	sub.w	sl, sl, #4
 8007f84:	b11b      	cbz	r3, 8007f8e <__multiply+0x13e>
 8007f86:	e005      	b.n	8007f94 <__multiply+0x144>
 8007f88:	f85a 3d04 	ldr.w	r3, [sl, #-4]!
 8007f8c:	b913      	cbnz	r3, 8007f94 <__multiply+0x144>
 8007f8e:	f1b8 0801 	subs.w	r8, r8, #1
 8007f92:	d1f9      	bne.n	8007f88 <__multiply+0x138>
 8007f94:	9801      	ldr	r0, [sp, #4]
 8007f96:	f8c0 8010 	str.w	r8, [r0, #16]
 8007f9a:	b005      	add	sp, #20
 8007f9c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08007fa0 <__pow5mult>:
 8007fa0:	f012 0303 	ands.w	r3, r2, #3
 8007fa4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007fa8:	4614      	mov	r4, r2
 8007faa:	4607      	mov	r7, r0
 8007fac:	d12e      	bne.n	800800c <__pow5mult+0x6c>
 8007fae:	460d      	mov	r5, r1
 8007fb0:	10a4      	asrs	r4, r4, #2
 8007fb2:	d01c      	beq.n	8007fee <__pow5mult+0x4e>
 8007fb4:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8007fb6:	b396      	cbz	r6, 800801e <__pow5mult+0x7e>
 8007fb8:	07e3      	lsls	r3, r4, #31
 8007fba:	f04f 0800 	mov.w	r8, #0
 8007fbe:	d406      	bmi.n	8007fce <__pow5mult+0x2e>
 8007fc0:	1064      	asrs	r4, r4, #1
 8007fc2:	d014      	beq.n	8007fee <__pow5mult+0x4e>
 8007fc4:	6830      	ldr	r0, [r6, #0]
 8007fc6:	b1a8      	cbz	r0, 8007ff4 <__pow5mult+0x54>
 8007fc8:	4606      	mov	r6, r0
 8007fca:	07e3      	lsls	r3, r4, #31
 8007fcc:	d5f8      	bpl.n	8007fc0 <__pow5mult+0x20>
 8007fce:	4632      	mov	r2, r6
 8007fd0:	4629      	mov	r1, r5
 8007fd2:	4638      	mov	r0, r7
 8007fd4:	f7ff ff3c 	bl	8007e50 <__multiply>
 8007fd8:	b1b5      	cbz	r5, 8008008 <__pow5mult+0x68>
 8007fda:	686a      	ldr	r2, [r5, #4]
 8007fdc:	1064      	asrs	r4, r4, #1
 8007fde:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8007fe0:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8007fe4:	6029      	str	r1, [r5, #0]
 8007fe6:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8007fea:	4605      	mov	r5, r0
 8007fec:	d1ea      	bne.n	8007fc4 <__pow5mult+0x24>
 8007fee:	4628      	mov	r0, r5
 8007ff0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007ff4:	4632      	mov	r2, r6
 8007ff6:	4631      	mov	r1, r6
 8007ff8:	4638      	mov	r0, r7
 8007ffa:	f7ff ff29 	bl	8007e50 <__multiply>
 8007ffe:	6030      	str	r0, [r6, #0]
 8008000:	f8c0 8000 	str.w	r8, [r0]
 8008004:	4606      	mov	r6, r0
 8008006:	e7e0      	b.n	8007fca <__pow5mult+0x2a>
 8008008:	4605      	mov	r5, r0
 800800a:	e7d9      	b.n	8007fc0 <__pow5mult+0x20>
 800800c:	1e5a      	subs	r2, r3, #1
 800800e:	4d0b      	ldr	r5, [pc, #44]	; (800803c <__pow5mult+0x9c>)
 8008010:	2300      	movs	r3, #0
 8008012:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 8008016:	f7ff fe7d 	bl	8007d14 <__multadd>
 800801a:	4605      	mov	r5, r0
 800801c:	e7c8      	b.n	8007fb0 <__pow5mult+0x10>
 800801e:	2101      	movs	r1, #1
 8008020:	4638      	mov	r0, r7
 8008022:	f7ff fe47 	bl	8007cb4 <_Balloc>
 8008026:	f240 2171 	movw	r1, #625	; 0x271
 800802a:	2201      	movs	r2, #1
 800802c:	2300      	movs	r3, #0
 800802e:	4606      	mov	r6, r0
 8008030:	e9c0 2104 	strd	r2, r1, [r0, #16]
 8008034:	64b8      	str	r0, [r7, #72]	; 0x48
 8008036:	6003      	str	r3, [r0, #0]
 8008038:	e7be      	b.n	8007fb8 <__pow5mult+0x18>
 800803a:	bf00      	nop
 800803c:	08009390 	.word	0x08009390

08008040 <__lshift>:
 8008040:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008044:	690f      	ldr	r7, [r1, #16]
 8008046:	ea4f 1962 	mov.w	r9, r2, asr #5
 800804a:	688b      	ldr	r3, [r1, #8]
 800804c:	460d      	mov	r5, r1
 800804e:	444f      	add	r7, r9
 8008050:	4690      	mov	r8, r2
 8008052:	4606      	mov	r6, r0
 8008054:	6849      	ldr	r1, [r1, #4]
 8008056:	1c7c      	adds	r4, r7, #1
 8008058:	429c      	cmp	r4, r3
 800805a:	dd03      	ble.n	8008064 <__lshift+0x24>
 800805c:	005b      	lsls	r3, r3, #1
 800805e:	3101      	adds	r1, #1
 8008060:	429c      	cmp	r4, r3
 8008062:	dcfb      	bgt.n	800805c <__lshift+0x1c>
 8008064:	4630      	mov	r0, r6
 8008066:	f7ff fe25 	bl	8007cb4 <_Balloc>
 800806a:	f1b9 0f00 	cmp.w	r9, #0
 800806e:	4684      	mov	ip, r0
 8008070:	f100 0314 	add.w	r3, r0, #20
 8008074:	dd3d      	ble.n	80080f2 <__lshift+0xb2>
 8008076:	eb03 0189 	add.w	r1, r3, r9, lsl #2
 800807a:	2200      	movs	r2, #0
 800807c:	f843 2b04 	str.w	r2, [r3], #4
 8008080:	428b      	cmp	r3, r1
 8008082:	d1fb      	bne.n	800807c <__lshift+0x3c>
 8008084:	f105 0314 	add.w	r3, r5, #20
 8008088:	6928      	ldr	r0, [r5, #16]
 800808a:	f018 081f 	ands.w	r8, r8, #31
 800808e:	eb03 0e80 	add.w	lr, r3, r0, lsl #2
 8008092:	d026      	beq.n	80080e2 <__lshift+0xa2>
 8008094:	f1c8 0220 	rsb	r2, r8, #32
 8008098:	f04f 0a00 	mov.w	sl, #0
 800809c:	e000      	b.n	80080a0 <__lshift+0x60>
 800809e:	4649      	mov	r1, r9
 80080a0:	6818      	ldr	r0, [r3, #0]
 80080a2:	4689      	mov	r9, r1
 80080a4:	fa00 f008 	lsl.w	r0, r0, r8
 80080a8:	ea40 000a 	orr.w	r0, r0, sl
 80080ac:	f849 0b04 	str.w	r0, [r9], #4
 80080b0:	f853 0b04 	ldr.w	r0, [r3], #4
 80080b4:	4573      	cmp	r3, lr
 80080b6:	fa20 fa02 	lsr.w	sl, r0, r2
 80080ba:	d3f0      	bcc.n	800809e <__lshift+0x5e>
 80080bc:	f8c1 a004 	str.w	sl, [r1, #4]
 80080c0:	f1ba 0f00 	cmp.w	sl, #0
 80080c4:	d000      	beq.n	80080c8 <__lshift+0x88>
 80080c6:	1cbc      	adds	r4, r7, #2
 80080c8:	6cf3      	ldr	r3, [r6, #76]	; 0x4c
 80080ca:	3c01      	subs	r4, #1
 80080cc:	686a      	ldr	r2, [r5, #4]
 80080ce:	4660      	mov	r0, ip
 80080d0:	f8cc 4010 	str.w	r4, [ip, #16]
 80080d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80080d8:	6029      	str	r1, [r5, #0]
 80080da:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80080de:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80080e2:	3904      	subs	r1, #4
 80080e4:	f853 2b04 	ldr.w	r2, [r3], #4
 80080e8:	459e      	cmp	lr, r3
 80080ea:	f841 2f04 	str.w	r2, [r1, #4]!
 80080ee:	d8f9      	bhi.n	80080e4 <__lshift+0xa4>
 80080f0:	e7ea      	b.n	80080c8 <__lshift+0x88>
 80080f2:	4619      	mov	r1, r3
 80080f4:	e7c6      	b.n	8008084 <__lshift+0x44>
 80080f6:	bf00      	nop

080080f8 <__mcmp>:
 80080f8:	b430      	push	{r4, r5}
 80080fa:	690a      	ldr	r2, [r1, #16]
 80080fc:	4605      	mov	r5, r0
 80080fe:	6900      	ldr	r0, [r0, #16]
 8008100:	1a80      	subs	r0, r0, r2
 8008102:	d10f      	bne.n	8008124 <__mcmp+0x2c>
 8008104:	0092      	lsls	r2, r2, #2
 8008106:	3514      	adds	r5, #20
 8008108:	3114      	adds	r1, #20
 800810a:	18ab      	adds	r3, r5, r2
 800810c:	4411      	add	r1, r2
 800810e:	e001      	b.n	8008114 <__mcmp+0x1c>
 8008110:	429d      	cmp	r5, r3
 8008112:	d207      	bcs.n	8008124 <__mcmp+0x2c>
 8008114:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8008118:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800811c:	4294      	cmp	r4, r2
 800811e:	d0f7      	beq.n	8008110 <__mcmp+0x18>
 8008120:	d302      	bcc.n	8008128 <__mcmp+0x30>
 8008122:	2001      	movs	r0, #1
 8008124:	bc30      	pop	{r4, r5}
 8008126:	4770      	bx	lr
 8008128:	f04f 30ff 	mov.w	r0, #4294967295
 800812c:	e7fa      	b.n	8008124 <__mcmp+0x2c>
 800812e:	bf00      	nop

08008130 <__mdiff>:
 8008130:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008134:	690c      	ldr	r4, [r1, #16]
 8008136:	460f      	mov	r7, r1
 8008138:	6913      	ldr	r3, [r2, #16]
 800813a:	4616      	mov	r6, r2
 800813c:	f101 0514 	add.w	r5, r1, #20
 8008140:	f102 0814 	add.w	r8, r2, #20
 8008144:	1ae4      	subs	r4, r4, r3
 8008146:	2c00      	cmp	r4, #0
 8008148:	d114      	bne.n	8008174 <__mdiff+0x44>
 800814a:	009b      	lsls	r3, r3, #2
 800814c:	18ea      	adds	r2, r5, r3
 800814e:	4443      	add	r3, r8
 8008150:	e001      	b.n	8008156 <__mdiff+0x26>
 8008152:	42aa      	cmp	r2, r5
 8008154:	d962      	bls.n	800821c <__mdiff+0xec>
 8008156:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800815a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800815e:	458c      	cmp	ip, r1
 8008160:	d0f7      	beq.n	8008152 <__mdiff+0x22>
 8008162:	d209      	bcs.n	8008178 <__mdiff+0x48>
 8008164:	462a      	mov	r2, r5
 8008166:	463b      	mov	r3, r7
 8008168:	4645      	mov	r5, r8
 800816a:	4637      	mov	r7, r6
 800816c:	4690      	mov	r8, r2
 800816e:	461e      	mov	r6, r3
 8008170:	2401      	movs	r4, #1
 8008172:	e001      	b.n	8008178 <__mdiff+0x48>
 8008174:	dbf6      	blt.n	8008164 <__mdiff+0x34>
 8008176:	2400      	movs	r4, #0
 8008178:	6879      	ldr	r1, [r7, #4]
 800817a:	f7ff fd9b 	bl	8007cb4 <_Balloc>
 800817e:	f8d7 e010 	ldr.w	lr, [r7, #16]
 8008182:	6933      	ldr	r3, [r6, #16]
 8008184:	4647      	mov	r7, r8
 8008186:	462e      	mov	r6, r5
 8008188:	eb05 0c8e 	add.w	ip, r5, lr, lsl #2
 800818c:	eb08 0883 	add.w	r8, r8, r3, lsl #2
 8008190:	f100 0514 	add.w	r5, r0, #20
 8008194:	2200      	movs	r2, #0
 8008196:	60c4      	str	r4, [r0, #12]
 8008198:	f856 3b04 	ldr.w	r3, [r6], #4
 800819c:	f857 1b04 	ldr.w	r1, [r7], #4
 80081a0:	b29c      	uxth	r4, r3
 80081a2:	fa1f f981 	uxth.w	r9, r1
 80081a6:	45b8      	cmp	r8, r7
 80081a8:	4422      	add	r2, r4
 80081aa:	ea4f 4111 	mov.w	r1, r1, lsr #16
 80081ae:	eba2 0409 	sub.w	r4, r2, r9
 80081b2:	ebc1 4213 	rsb	r2, r1, r3, lsr #16
 80081b6:	b2a3      	uxth	r3, r4
 80081b8:	eb02 4224 	add.w	r2, r2, r4, asr #16
 80081bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 80081c0:	ea4f 4222 	mov.w	r2, r2, asr #16
 80081c4:	f845 3b04 	str.w	r3, [r5], #4
 80081c8:	d8e6      	bhi.n	8008198 <__mdiff+0x68>
 80081ca:	45b4      	cmp	ip, r6
 80081cc:	d91a      	bls.n	8008204 <__mdiff+0xd4>
 80081ce:	462f      	mov	r7, r5
 80081d0:	4634      	mov	r4, r6
 80081d2:	f854 8b04 	ldr.w	r8, [r4], #4
 80081d6:	fa1f f388 	uxth.w	r3, r8
 80081da:	45a4      	cmp	ip, r4
 80081dc:	441a      	add	r2, r3
 80081de:	ea4f 4122 	mov.w	r1, r2, asr #16
 80081e2:	b293      	uxth	r3, r2
 80081e4:	eb01 4218 	add.w	r2, r1, r8, lsr #16
 80081e8:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 80081ec:	ea4f 4222 	mov.w	r2, r2, asr #16
 80081f0:	f847 3b04 	str.w	r3, [r7], #4
 80081f4:	d8ed      	bhi.n	80081d2 <__mdiff+0xa2>
 80081f6:	43f6      	mvns	r6, r6
 80081f8:	44b4      	add	ip, r6
 80081fa:	f02c 0c03 	bic.w	ip, ip, #3
 80081fe:	f10c 0c04 	add.w	ip, ip, #4
 8008202:	4465      	add	r5, ip
 8008204:	3d04      	subs	r5, #4
 8008206:	b92b      	cbnz	r3, 8008214 <__mdiff+0xe4>
 8008208:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800820c:	f10e 3eff 	add.w	lr, lr, #4294967295
 8008210:	2b00      	cmp	r3, #0
 8008212:	d0f9      	beq.n	8008208 <__mdiff+0xd8>
 8008214:	f8c0 e010 	str.w	lr, [r0, #16]
 8008218:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800821c:	2100      	movs	r1, #0
 800821e:	f7ff fd49 	bl	8007cb4 <_Balloc>
 8008222:	2201      	movs	r2, #1
 8008224:	2300      	movs	r3, #0
 8008226:	e9c0 2304 	strd	r2, r3, [r0, #16]
 800822a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800822e:	bf00      	nop

08008230 <__d2b>:
 8008230:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008234:	461c      	mov	r4, r3
 8008236:	b082      	sub	sp, #8
 8008238:	2101      	movs	r1, #1
 800823a:	4690      	mov	r8, r2
 800823c:	e9dd 6508 	ldrd	r6, r5, [sp, #32]
 8008240:	f7ff fd38 	bl	8007cb4 <_Balloc>
 8008244:	4623      	mov	r3, r4
 8008246:	f3c4 540a 	ubfx	r4, r4, #20, #11
 800824a:	4607      	mov	r7, r0
 800824c:	f3c3 0313 	ubfx	r3, r3, #0, #20
 8008250:	b10c      	cbz	r4, 8008256 <__d2b+0x26>
 8008252:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8008256:	f1b8 0200 	subs.w	r2, r8, #0
 800825a:	9301      	str	r3, [sp, #4]
 800825c:	d01e      	beq.n	800829c <__d2b+0x6c>
 800825e:	a802      	add	r0, sp, #8
 8008260:	f840 2d08 	str.w	r2, [r0, #-8]!
 8008264:	f7ff fdba 	bl	8007ddc <__lo0bits>
 8008268:	bb70      	cbnz	r0, 80082c8 <__d2b+0x98>
 800826a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800826e:	617a      	str	r2, [r7, #20]
 8008270:	2b00      	cmp	r3, #0
 8008272:	61bb      	str	r3, [r7, #24]
 8008274:	bf0c      	ite	eq
 8008276:	2101      	moveq	r1, #1
 8008278:	2102      	movne	r1, #2
 800827a:	6139      	str	r1, [r7, #16]
 800827c:	b9cc      	cbnz	r4, 80082b2 <__d2b+0x82>
 800827e:	eb07 0381 	add.w	r3, r7, r1, lsl #2
 8008282:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8008286:	6030      	str	r0, [r6, #0]
 8008288:	6918      	ldr	r0, [r3, #16]
 800828a:	f7ff fd85 	bl	8007d98 <__hi0bits>
 800828e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8008292:	6028      	str	r0, [r5, #0]
 8008294:	4638      	mov	r0, r7
 8008296:	b002      	add	sp, #8
 8008298:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800829c:	a801      	add	r0, sp, #4
 800829e:	f7ff fd9d 	bl	8007ddc <__lo0bits>
 80082a2:	2301      	movs	r3, #1
 80082a4:	9a01      	ldr	r2, [sp, #4]
 80082a6:	3020      	adds	r0, #32
 80082a8:	4619      	mov	r1, r3
 80082aa:	e9c7 3204 	strd	r3, r2, [r7, #16]
 80082ae:	2c00      	cmp	r4, #0
 80082b0:	d0e5      	beq.n	800827e <__d2b+0x4e>
 80082b2:	f2a4 4433 	subw	r4, r4, #1075	; 0x433
 80082b6:	f1c0 0335 	rsb	r3, r0, #53	; 0x35
 80082ba:	4420      	add	r0, r4
 80082bc:	6030      	str	r0, [r6, #0]
 80082be:	4638      	mov	r0, r7
 80082c0:	602b      	str	r3, [r5, #0]
 80082c2:	b002      	add	sp, #8
 80082c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80082c8:	9b01      	ldr	r3, [sp, #4]
 80082ca:	f1c0 0220 	rsb	r2, r0, #32
 80082ce:	9900      	ldr	r1, [sp, #0]
 80082d0:	fa03 f202 	lsl.w	r2, r3, r2
 80082d4:	40c3      	lsrs	r3, r0
 80082d6:	430a      	orrs	r2, r1
 80082d8:	9301      	str	r3, [sp, #4]
 80082da:	617a      	str	r2, [r7, #20]
 80082dc:	e7c8      	b.n	8008270 <__d2b+0x40>
 80082de:	bf00      	nop

080082e0 <_sbrk_r>:
 80082e0:	b538      	push	{r3, r4, r5, lr}
 80082e2:	2300      	movs	r3, #0
 80082e4:	4c06      	ldr	r4, [pc, #24]	; (8008300 <_sbrk_r+0x20>)
 80082e6:	4605      	mov	r5, r0
 80082e8:	4608      	mov	r0, r1
 80082ea:	6023      	str	r3, [r4, #0]
 80082ec:	f7f9 f87c 	bl	80013e8 <_sbrk>
 80082f0:	1c43      	adds	r3, r0, #1
 80082f2:	d000      	beq.n	80082f6 <_sbrk_r+0x16>
 80082f4:	bd38      	pop	{r3, r4, r5, pc}
 80082f6:	6823      	ldr	r3, [r4, #0]
 80082f8:	2b00      	cmp	r3, #0
 80082fa:	d0fb      	beq.n	80082f4 <_sbrk_r+0x14>
 80082fc:	602b      	str	r3, [r5, #0]
 80082fe:	bd38      	pop	{r3, r4, r5, pc}
 8008300:	20000af4 	.word	0x20000af4

08008304 <__sread>:
 8008304:	b510      	push	{r4, lr}
 8008306:	460c      	mov	r4, r1
 8008308:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800830c:	f000 fcaa 	bl	8008c64 <_read_r>
 8008310:	2800      	cmp	r0, #0
 8008312:	db03      	blt.n	800831c <__sread+0x18>
 8008314:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8008316:	4403      	add	r3, r0
 8008318:	6523      	str	r3, [r4, #80]	; 0x50
 800831a:	bd10      	pop	{r4, pc}
 800831c:	89a3      	ldrh	r3, [r4, #12]
 800831e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008322:	81a3      	strh	r3, [r4, #12]
 8008324:	bd10      	pop	{r4, pc}
 8008326:	bf00      	nop

08008328 <__swrite>:
 8008328:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800832c:	461f      	mov	r7, r3
 800832e:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8008332:	4616      	mov	r6, r2
 8008334:	460c      	mov	r4, r1
 8008336:	05da      	lsls	r2, r3, #23
 8008338:	4605      	mov	r5, r0
 800833a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800833e:	d507      	bpl.n	8008350 <__swrite+0x28>
 8008340:	2302      	movs	r3, #2
 8008342:	2200      	movs	r2, #0
 8008344:	f000 fc00 	bl	8008b48 <_lseek_r>
 8008348:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800834c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008350:	f423 5080 	bic.w	r0, r3, #4096	; 0x1000
 8008354:	4632      	mov	r2, r6
 8008356:	463b      	mov	r3, r7
 8008358:	81a0      	strh	r0, [r4, #12]
 800835a:	4628      	mov	r0, r5
 800835c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8008360:	f000 b888 	b.w	8008474 <_write_r>

08008364 <__sseek>:
 8008364:	b510      	push	{r4, lr}
 8008366:	460c      	mov	r4, r1
 8008368:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800836c:	f000 fbec 	bl	8008b48 <_lseek_r>
 8008370:	1c42      	adds	r2, r0, #1
 8008372:	89a3      	ldrh	r3, [r4, #12]
 8008374:	d004      	beq.n	8008380 <__sseek+0x1c>
 8008376:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 800837a:	6520      	str	r0, [r4, #80]	; 0x50
 800837c:	81a3      	strh	r3, [r4, #12]
 800837e:	bd10      	pop	{r4, pc}
 8008380:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008384:	81a3      	strh	r3, [r4, #12]
 8008386:	bd10      	pop	{r4, pc}

08008388 <__sclose>:
 8008388:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800838c:	f000 b920 	b.w	80085d0 <_close_r>

08008390 <strlen>:
 8008390:	f020 0103 	bic.w	r1, r0, #3
 8008394:	f010 0003 	ands.w	r0, r0, #3
 8008398:	f1c0 0000 	rsb	r0, r0, #0
 800839c:	f851 3b04 	ldr.w	r3, [r1], #4
 80083a0:	f100 0c04 	add.w	ip, r0, #4
 80083a4:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
 80083a8:	f06f 0200 	mvn.w	r2, #0
 80083ac:	bf1c      	itt	ne
 80083ae:	fa22 f20c 	lsrne.w	r2, r2, ip
 80083b2:	4313      	orrne	r3, r2
 80083b4:	f04f 0c01 	mov.w	ip, #1
 80083b8:	ea4c 2c0c 	orr.w	ip, ip, ip, lsl #8
 80083bc:	ea4c 4c0c 	orr.w	ip, ip, ip, lsl #16
 80083c0:	eba3 020c 	sub.w	r2, r3, ip
 80083c4:	ea22 0203 	bic.w	r2, r2, r3
 80083c8:	ea12 12cc 	ands.w	r2, r2, ip, lsl #7
 80083cc:	bf04      	itt	eq
 80083ce:	f851 3b04 	ldreq.w	r3, [r1], #4
 80083d2:	3004      	addeq	r0, #4
 80083d4:	d0f4      	beq.n	80083c0 <strlen+0x30>
 80083d6:	f1c2 0100 	rsb	r1, r2, #0
 80083da:	ea02 0201 	and.w	r2, r2, r1
 80083de:	fab2 f282 	clz	r2, r2
 80083e2:	f1c2 021f 	rsb	r2, r2, #31
 80083e6:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80083ea:	4770      	bx	lr

080083ec <__sprint_r.part.0>:
 80083ec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80083f0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80083f2:	4692      	mov	sl, r2
 80083f4:	049c      	lsls	r4, r3, #18
 80083f6:	d52c      	bpl.n	8008452 <__sprint_r.part.0+0x66>
 80083f8:	6893      	ldr	r3, [r2, #8]
 80083fa:	6812      	ldr	r2, [r2, #0]
 80083fc:	b33b      	cbz	r3, 800844e <__sprint_r.part.0+0x62>
 80083fe:	460e      	mov	r6, r1
 8008400:	4607      	mov	r7, r0
 8008402:	f102 0908 	add.w	r9, r2, #8
 8008406:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800840a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800840e:	d014      	beq.n	800843a <__sprint_r.part.0+0x4e>
 8008410:	3d04      	subs	r5, #4
 8008412:	2400      	movs	r4, #0
 8008414:	e001      	b.n	800841a <__sprint_r.part.0+0x2e>
 8008416:	45a0      	cmp	r8, r4
 8008418:	d00d      	beq.n	8008436 <__sprint_r.part.0+0x4a>
 800841a:	4632      	mov	r2, r6
 800841c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8008420:	4638      	mov	r0, r7
 8008422:	3401      	adds	r4, #1
 8008424:	f000 f99e 	bl	8008764 <_fputwc_r>
 8008428:	1c43      	adds	r3, r0, #1
 800842a:	d1f4      	bne.n	8008416 <__sprint_r.part.0+0x2a>
 800842c:	2300      	movs	r3, #0
 800842e:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8008432:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008436:	f8da 3008 	ldr.w	r3, [sl, #8]
 800843a:	f02b 0b03 	bic.w	fp, fp, #3
 800843e:	f109 0908 	add.w	r9, r9, #8
 8008442:	eba3 030b 	sub.w	r3, r3, fp
 8008446:	f8ca 3008 	str.w	r3, [sl, #8]
 800844a:	2b00      	cmp	r3, #0
 800844c:	d1db      	bne.n	8008406 <__sprint_r.part.0+0x1a>
 800844e:	2000      	movs	r0, #0
 8008450:	e7ec      	b.n	800842c <__sprint_r.part.0+0x40>
 8008452:	f000 f9cd 	bl	80087f0 <__sfvwrite_r>
 8008456:	2300      	movs	r3, #0
 8008458:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800845c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

08008460 <__sprint_r>:
 8008460:	6893      	ldr	r3, [r2, #8]
 8008462:	b10b      	cbz	r3, 8008468 <__sprint_r+0x8>
 8008464:	f7ff bfc2 	b.w	80083ec <__sprint_r.part.0>
 8008468:	b410      	push	{r4}
 800846a:	4618      	mov	r0, r3
 800846c:	6053      	str	r3, [r2, #4]
 800846e:	bc10      	pop	{r4}
 8008470:	4770      	bx	lr
 8008472:	bf00      	nop

08008474 <_write_r>:
 8008474:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008476:	460e      	mov	r6, r1
 8008478:	4c08      	ldr	r4, [pc, #32]	; (800849c <_write_r+0x28>)
 800847a:	2500      	movs	r5, #0
 800847c:	4611      	mov	r1, r2
 800847e:	4607      	mov	r7, r0
 8008480:	461a      	mov	r2, r3
 8008482:	4630      	mov	r0, r6
 8008484:	6025      	str	r5, [r4, #0]
 8008486:	f7f8 ff62 	bl	800134e <_write>
 800848a:	1c43      	adds	r3, r0, #1
 800848c:	d000      	beq.n	8008490 <_write_r+0x1c>
 800848e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008490:	6823      	ldr	r3, [r4, #0]
 8008492:	2b00      	cmp	r3, #0
 8008494:	d0fb      	beq.n	800848e <_write_r+0x1a>
 8008496:	603b      	str	r3, [r7, #0]
 8008498:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800849a:	bf00      	nop
 800849c:	20000af4 	.word	0x20000af4

080084a0 <__register_exitproc>:
 80084a0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80084a4:	4d2c      	ldr	r5, [pc, #176]	; (8008558 <__register_exitproc+0xb8>)
 80084a6:	4606      	mov	r6, r0
 80084a8:	4698      	mov	r8, r3
 80084aa:	460f      	mov	r7, r1
 80084ac:	6828      	ldr	r0, [r5, #0]
 80084ae:	4691      	mov	r9, r2
 80084b0:	f7ff f886 	bl	80075c0 <__retarget_lock_acquire_recursive>
 80084b4:	4b29      	ldr	r3, [pc, #164]	; (800855c <__register_exitproc+0xbc>)
 80084b6:	681c      	ldr	r4, [r3, #0]
 80084b8:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 80084bc:	2b00      	cmp	r3, #0
 80084be:	d03f      	beq.n	8008540 <__register_exitproc+0xa0>
 80084c0:	685a      	ldr	r2, [r3, #4]
 80084c2:	2a1f      	cmp	r2, #31
 80084c4:	dc0d      	bgt.n	80084e2 <__register_exitproc+0x42>
 80084c6:	f102 0c01 	add.w	ip, r2, #1
 80084ca:	bb16      	cbnz	r6, 8008512 <__register_exitproc+0x72>
 80084cc:	3202      	adds	r2, #2
 80084ce:	f8c3 c004 	str.w	ip, [r3, #4]
 80084d2:	6828      	ldr	r0, [r5, #0]
 80084d4:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 80084d8:	f7ff f874 	bl	80075c4 <__retarget_lock_release_recursive>
 80084dc:	2000      	movs	r0, #0
 80084de:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80084e2:	4b1f      	ldr	r3, [pc, #124]	; (8008560 <__register_exitproc+0xc0>)
 80084e4:	b38b      	cbz	r3, 800854a <__register_exitproc+0xaa>
 80084e6:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80084ea:	e000      	b.n	80084ee <__register_exitproc+0x4e>
 80084ec:	bf00      	nop
 80084ee:	4603      	mov	r3, r0
 80084f0:	b358      	cbz	r0, 800854a <__register_exitproc+0xaa>
 80084f2:	f8d4 1148 	ldr.w	r1, [r4, #328]	; 0x148
 80084f6:	2000      	movs	r0, #0
 80084f8:	f04f 0c01 	mov.w	ip, #1
 80084fc:	6058      	str	r0, [r3, #4]
 80084fe:	4602      	mov	r2, r0
 8008500:	6019      	str	r1, [r3, #0]
 8008502:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8008506:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800850a:	f8c3 018c 	str.w	r0, [r3, #396]	; 0x18c
 800850e:	2e00      	cmp	r6, #0
 8008510:	d0dc      	beq.n	80084cc <__register_exitproc+0x2c>
 8008512:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8008516:	2401      	movs	r4, #1
 8008518:	2e02      	cmp	r6, #2
 800851a:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 800851e:	fa04 f402 	lsl.w	r4, r4, r2
 8008522:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8008526:	ea40 0004 	orr.w	r0, r0, r4
 800852a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800852e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8008532:	d1cb      	bne.n	80084cc <__register_exitproc+0x2c>
 8008534:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8008538:	430c      	orrs	r4, r1
 800853a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800853e:	e7c5      	b.n	80084cc <__register_exitproc+0x2c>
 8008540:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8008544:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8008548:	e7ba      	b.n	80084c0 <__register_exitproc+0x20>
 800854a:	6828      	ldr	r0, [r5, #0]
 800854c:	f7ff f83a 	bl	80075c4 <__retarget_lock_release_recursive>
 8008550:	f04f 30ff 	mov.w	r0, #4294967295
 8008554:	e7c3      	b.n	80084de <__register_exitproc+0x3e>
 8008556:	bf00      	nop
 8008558:	20000458 	.word	0x20000458
 800855c:	08009228 	.word	0x08009228
 8008560:	00000000 	.word	0x00000000

08008564 <_calloc_r>:
 8008564:	b510      	push	{r4, lr}
 8008566:	fb02 f101 	mul.w	r1, r2, r1
 800856a:	f7ff f8a5 	bl	80076b8 <_malloc_r>
 800856e:	4604      	mov	r4, r0
 8008570:	b1c8      	cbz	r0, 80085a6 <_calloc_r+0x42>
 8008572:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8008576:	f022 0203 	bic.w	r2, r2, #3
 800857a:	3a04      	subs	r2, #4
 800857c:	2a24      	cmp	r2, #36	; 0x24
 800857e:	d81b      	bhi.n	80085b8 <_calloc_r+0x54>
 8008580:	2a13      	cmp	r2, #19
 8008582:	d912      	bls.n	80085aa <_calloc_r+0x46>
 8008584:	2300      	movs	r3, #0
 8008586:	2a1b      	cmp	r2, #27
 8008588:	e9c0 3300 	strd	r3, r3, [r0]
 800858c:	d919      	bls.n	80085c2 <_calloc_r+0x5e>
 800858e:	2a24      	cmp	r2, #36	; 0x24
 8008590:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8008594:	d118      	bne.n	80085c8 <_calloc_r+0x64>
 8008596:	6103      	str	r3, [r0, #16]
 8008598:	f100 0218 	add.w	r2, r0, #24
 800859c:	6143      	str	r3, [r0, #20]
 800859e:	2300      	movs	r3, #0
 80085a0:	e9c2 3300 	strd	r3, r3, [r2]
 80085a4:	6093      	str	r3, [r2, #8]
 80085a6:	4620      	mov	r0, r4
 80085a8:	bd10      	pop	{r4, pc}
 80085aa:	4602      	mov	r2, r0
 80085ac:	2300      	movs	r3, #0
 80085ae:	4620      	mov	r0, r4
 80085b0:	e9c2 3300 	strd	r3, r3, [r2]
 80085b4:	6093      	str	r3, [r2, #8]
 80085b6:	bd10      	pop	{r4, pc}
 80085b8:	2100      	movs	r1, #0
 80085ba:	f7fc f977 	bl	80048ac <memset>
 80085be:	4620      	mov	r0, r4
 80085c0:	bd10      	pop	{r4, pc}
 80085c2:	f100 0208 	add.w	r2, r0, #8
 80085c6:	e7f1      	b.n	80085ac <_calloc_r+0x48>
 80085c8:	f100 0210 	add.w	r2, r0, #16
 80085cc:	e7ee      	b.n	80085ac <_calloc_r+0x48>
 80085ce:	bf00      	nop

080085d0 <_close_r>:
 80085d0:	b538      	push	{r3, r4, r5, lr}
 80085d2:	2300      	movs	r3, #0
 80085d4:	4c06      	ldr	r4, [pc, #24]	; (80085f0 <_close_r+0x20>)
 80085d6:	4605      	mov	r5, r0
 80085d8:	4608      	mov	r0, r1
 80085da:	6023      	str	r3, [r4, #0]
 80085dc:	f7f8 fed3 	bl	8001386 <_close>
 80085e0:	1c43      	adds	r3, r0, #1
 80085e2:	d000      	beq.n	80085e6 <_close_r+0x16>
 80085e4:	bd38      	pop	{r3, r4, r5, pc}
 80085e6:	6823      	ldr	r3, [r4, #0]
 80085e8:	2b00      	cmp	r3, #0
 80085ea:	d0fb      	beq.n	80085e4 <_close_r+0x14>
 80085ec:	602b      	str	r3, [r5, #0]
 80085ee:	bd38      	pop	{r3, r4, r5, pc}
 80085f0:	20000af4 	.word	0x20000af4

080085f4 <_fclose_r>:
 80085f4:	b570      	push	{r4, r5, r6, lr}
 80085f6:	2900      	cmp	r1, #0
 80085f8:	d048      	beq.n	800868c <_fclose_r+0x98>
 80085fa:	4605      	mov	r5, r0
 80085fc:	460c      	mov	r4, r1
 80085fe:	b110      	cbz	r0, 8008606 <_fclose_r+0x12>
 8008600:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008602:	2b00      	cmp	r3, #0
 8008604:	d048      	beq.n	8008698 <_fclose_r+0xa4>
 8008606:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008608:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800860c:	07d0      	lsls	r0, r2, #31
 800860e:	d440      	bmi.n	8008692 <_fclose_r+0x9e>
 8008610:	0599      	lsls	r1, r3, #22
 8008612:	d530      	bpl.n	8008676 <_fclose_r+0x82>
 8008614:	4621      	mov	r1, r4
 8008616:	4628      	mov	r0, r5
 8008618:	f7fe fcfa 	bl	8007010 <__sflush_r>
 800861c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800861e:	4606      	mov	r6, r0
 8008620:	b133      	cbz	r3, 8008630 <_fclose_r+0x3c>
 8008622:	69e1      	ldr	r1, [r4, #28]
 8008624:	4628      	mov	r0, r5
 8008626:	4798      	blx	r3
 8008628:	2800      	cmp	r0, #0
 800862a:	bfb8      	it	lt
 800862c:	f04f 36ff 	movlt.w	r6, #4294967295
 8008630:	89a3      	ldrh	r3, [r4, #12]
 8008632:	061a      	lsls	r2, r3, #24
 8008634:	d43c      	bmi.n	80086b0 <_fclose_r+0xbc>
 8008636:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008638:	b141      	cbz	r1, 800864c <_fclose_r+0x58>
 800863a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800863e:	4299      	cmp	r1, r3
 8008640:	d002      	beq.n	8008648 <_fclose_r+0x54>
 8008642:	4628      	mov	r0, r5
 8008644:	f7fe fe90 	bl	8007368 <_free_r>
 8008648:	2300      	movs	r3, #0
 800864a:	6323      	str	r3, [r4, #48]	; 0x30
 800864c:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800864e:	b121      	cbz	r1, 800865a <_fclose_r+0x66>
 8008650:	4628      	mov	r0, r5
 8008652:	f7fe fe89 	bl	8007368 <_free_r>
 8008656:	2300      	movs	r3, #0
 8008658:	6463      	str	r3, [r4, #68]	; 0x44
 800865a:	f7fe fe0f 	bl	800727c <__sfp_lock_acquire>
 800865e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008660:	2200      	movs	r2, #0
 8008662:	07db      	lsls	r3, r3, #31
 8008664:	81a2      	strh	r2, [r4, #12]
 8008666:	d51f      	bpl.n	80086a8 <_fclose_r+0xb4>
 8008668:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800866a:	f7fe ffa7 	bl	80075bc <__retarget_lock_close_recursive>
 800866e:	f7fe fe0b 	bl	8007288 <__sfp_lock_release>
 8008672:	4630      	mov	r0, r6
 8008674:	bd70      	pop	{r4, r5, r6, pc}
 8008676:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008678:	f7fe ffa2 	bl	80075c0 <__retarget_lock_acquire_recursive>
 800867c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008680:	2b00      	cmp	r3, #0
 8008682:	d1c7      	bne.n	8008614 <_fclose_r+0x20>
 8008684:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8008686:	f016 0601 	ands.w	r6, r6, #1
 800868a:	d016      	beq.n	80086ba <_fclose_r+0xc6>
 800868c:	2600      	movs	r6, #0
 800868e:	4630      	mov	r0, r6
 8008690:	bd70      	pop	{r4, r5, r6, pc}
 8008692:	2b00      	cmp	r3, #0
 8008694:	d0fa      	beq.n	800868c <_fclose_r+0x98>
 8008696:	e7bd      	b.n	8008614 <_fclose_r+0x20>
 8008698:	f7fe fdc0 	bl	800721c <__sinit>
 800869c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800869e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80086a2:	07d0      	lsls	r0, r2, #31
 80086a4:	d4f5      	bmi.n	8008692 <_fclose_r+0x9e>
 80086a6:	e7b3      	b.n	8008610 <_fclose_r+0x1c>
 80086a8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80086aa:	f7fe ff8b 	bl	80075c4 <__retarget_lock_release_recursive>
 80086ae:	e7db      	b.n	8008668 <_fclose_r+0x74>
 80086b0:	6921      	ldr	r1, [r4, #16]
 80086b2:	4628      	mov	r0, r5
 80086b4:	f7fe fe58 	bl	8007368 <_free_r>
 80086b8:	e7bd      	b.n	8008636 <_fclose_r+0x42>
 80086ba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80086bc:	f7fe ff82 	bl	80075c4 <__retarget_lock_release_recursive>
 80086c0:	4630      	mov	r0, r6
 80086c2:	bd70      	pop	{r4, r5, r6, pc}

080086c4 <__fputwc>:
 80086c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80086c8:	b082      	sub	sp, #8
 80086ca:	4681      	mov	r9, r0
 80086cc:	4688      	mov	r8, r1
 80086ce:	4614      	mov	r4, r2
 80086d0:	f000 fa2c 	bl	8008b2c <__locale_mb_cur_max>
 80086d4:	2801      	cmp	r0, #1
 80086d6:	d103      	bne.n	80086e0 <__fputwc+0x1c>
 80086d8:	f108 33ff 	add.w	r3, r8, #4294967295
 80086dc:	2bfe      	cmp	r3, #254	; 0xfe
 80086de:	d92f      	bls.n	8008740 <__fputwc+0x7c>
 80086e0:	4642      	mov	r2, r8
 80086e2:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80086e6:	a901      	add	r1, sp, #4
 80086e8:	4648      	mov	r0, r9
 80086ea:	f000 fcdf 	bl	80090ac <_wcrtomb_r>
 80086ee:	1c42      	adds	r2, r0, #1
 80086f0:	4606      	mov	r6, r0
 80086f2:	d02f      	beq.n	8008754 <__fputwc+0x90>
 80086f4:	b350      	cbz	r0, 800874c <__fputwc+0x88>
 80086f6:	f89d c004 	ldrb.w	ip, [sp, #4]
 80086fa:	2500      	movs	r5, #0
 80086fc:	f10d 0a04 	add.w	sl, sp, #4
 8008700:	e009      	b.n	8008716 <__fputwc+0x52>
 8008702:	6823      	ldr	r3, [r4, #0]
 8008704:	1c5a      	adds	r2, r3, #1
 8008706:	6022      	str	r2, [r4, #0]
 8008708:	f883 c000 	strb.w	ip, [r3]
 800870c:	3501      	adds	r5, #1
 800870e:	42b5      	cmp	r5, r6
 8008710:	d21c      	bcs.n	800874c <__fputwc+0x88>
 8008712:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8008716:	68a3      	ldr	r3, [r4, #8]
 8008718:	3b01      	subs	r3, #1
 800871a:	2b00      	cmp	r3, #0
 800871c:	60a3      	str	r3, [r4, #8]
 800871e:	daf0      	bge.n	8008702 <__fputwc+0x3e>
 8008720:	69a7      	ldr	r7, [r4, #24]
 8008722:	4661      	mov	r1, ip
 8008724:	4622      	mov	r2, r4
 8008726:	4648      	mov	r0, r9
 8008728:	42bb      	cmp	r3, r7
 800872a:	db02      	blt.n	8008732 <__fputwc+0x6e>
 800872c:	f1bc 0f0a 	cmp.w	ip, #10
 8008730:	d1e7      	bne.n	8008702 <__fputwc+0x3e>
 8008732:	f000 fc63 	bl	8008ffc <__swbuf_r>
 8008736:	1c43      	adds	r3, r0, #1
 8008738:	d1e8      	bne.n	800870c <__fputwc+0x48>
 800873a:	b002      	add	sp, #8
 800873c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008740:	fa5f fc88 	uxtb.w	ip, r8
 8008744:	4606      	mov	r6, r0
 8008746:	f88d c004 	strb.w	ip, [sp, #4]
 800874a:	e7d6      	b.n	80086fa <__fputwc+0x36>
 800874c:	4640      	mov	r0, r8
 800874e:	b002      	add	sp, #8
 8008750:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008754:	89a3      	ldrh	r3, [r4, #12]
 8008756:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800875a:	81a3      	strh	r3, [r4, #12]
 800875c:	b002      	add	sp, #8
 800875e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008762:	bf00      	nop

08008764 <_fputwc_r>:
 8008764:	b530      	push	{r4, r5, lr}
 8008766:	4605      	mov	r5, r0
 8008768:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800876a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800876e:	4614      	mov	r4, r2
 8008770:	07c0      	lsls	r0, r0, #31
 8008772:	b083      	sub	sp, #12
 8008774:	b29a      	uxth	r2, r3
 8008776:	d401      	bmi.n	800877c <_fputwc_r+0x18>
 8008778:	0590      	lsls	r0, r2, #22
 800877a:	d51c      	bpl.n	80087b6 <_fputwc_r+0x52>
 800877c:	0490      	lsls	r0, r2, #18
 800877e:	d406      	bmi.n	800878e <_fputwc_r+0x2a>
 8008780:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008782:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008786:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800878a:	81a3      	strh	r3, [r4, #12]
 800878c:	6662      	str	r2, [r4, #100]	; 0x64
 800878e:	4628      	mov	r0, r5
 8008790:	4622      	mov	r2, r4
 8008792:	f7ff ff97 	bl	80086c4 <__fputwc>
 8008796:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008798:	4605      	mov	r5, r0
 800879a:	07da      	lsls	r2, r3, #31
 800879c:	d402      	bmi.n	80087a4 <_fputwc_r+0x40>
 800879e:	89a3      	ldrh	r3, [r4, #12]
 80087a0:	059b      	lsls	r3, r3, #22
 80087a2:	d502      	bpl.n	80087aa <_fputwc_r+0x46>
 80087a4:	4628      	mov	r0, r5
 80087a6:	b003      	add	sp, #12
 80087a8:	bd30      	pop	{r4, r5, pc}
 80087aa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80087ac:	f7fe ff0a 	bl	80075c4 <__retarget_lock_release_recursive>
 80087b0:	4628      	mov	r0, r5
 80087b2:	b003      	add	sp, #12
 80087b4:	bd30      	pop	{r4, r5, pc}
 80087b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80087b8:	9101      	str	r1, [sp, #4]
 80087ba:	f7fe ff01 	bl	80075c0 <__retarget_lock_acquire_recursive>
 80087be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80087c2:	9901      	ldr	r1, [sp, #4]
 80087c4:	b29a      	uxth	r2, r3
 80087c6:	e7d9      	b.n	800877c <_fputwc_r+0x18>

080087c8 <_fstat_r>:
 80087c8:	b570      	push	{r4, r5, r6, lr}
 80087ca:	460d      	mov	r5, r1
 80087cc:	2300      	movs	r3, #0
 80087ce:	4c07      	ldr	r4, [pc, #28]	; (80087ec <_fstat_r+0x24>)
 80087d0:	4606      	mov	r6, r0
 80087d2:	4611      	mov	r1, r2
 80087d4:	4628      	mov	r0, r5
 80087d6:	6023      	str	r3, [r4, #0]
 80087d8:	f7f8 fde0 	bl	800139c <_fstat>
 80087dc:	1c43      	adds	r3, r0, #1
 80087de:	d000      	beq.n	80087e2 <_fstat_r+0x1a>
 80087e0:	bd70      	pop	{r4, r5, r6, pc}
 80087e2:	6823      	ldr	r3, [r4, #0]
 80087e4:	2b00      	cmp	r3, #0
 80087e6:	d0fb      	beq.n	80087e0 <_fstat_r+0x18>
 80087e8:	6033      	str	r3, [r6, #0]
 80087ea:	bd70      	pop	{r4, r5, r6, pc}
 80087ec:	20000af4 	.word	0x20000af4

080087f0 <__sfvwrite_r>:
 80087f0:	6893      	ldr	r3, [r2, #8]
 80087f2:	2b00      	cmp	r3, #0
 80087f4:	f000 80f0 	beq.w	80089d8 <__sfvwrite_r+0x1e8>
 80087f8:	f9b1 c00c 	ldrsh.w	ip, [r1, #12]
 80087fc:	fa1f fc8c 	uxth.w	ip, ip
 8008800:	f01c 0f08 	tst.w	ip, #8
 8008804:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008808:	460c      	mov	r4, r1
 800880a:	b083      	sub	sp, #12
 800880c:	4681      	mov	r9, r0
 800880e:	4690      	mov	r8, r2
 8008810:	d035      	beq.n	800887e <__sfvwrite_r+0x8e>
 8008812:	690b      	ldr	r3, [r1, #16]
 8008814:	b39b      	cbz	r3, 800887e <__sfvwrite_r+0x8e>
 8008816:	f01c 0302 	ands.w	r3, ip, #2
 800881a:	f8d8 7000 	ldr.w	r7, [r8]
 800881e:	d03e      	beq.n	800889e <__sfvwrite_r+0xae>
 8008820:	2600      	movs	r6, #0
 8008822:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008826:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800882a:	4635      	mov	r5, r6
 800882c:	f8df a2d4 	ldr.w	sl, [pc, #724]	; 8008b04 <__sfvwrite_r+0x314>
 8008830:	4555      	cmp	r5, sl
 8008832:	462b      	mov	r3, r5
 8008834:	4632      	mov	r2, r6
 8008836:	4661      	mov	r1, ip
 8008838:	bf28      	it	cs
 800883a:	4653      	movcs	r3, sl
 800883c:	4648      	mov	r0, r9
 800883e:	b1d5      	cbz	r5, 8008876 <__sfvwrite_r+0x86>
 8008840:	47d8      	blx	fp
 8008842:	2800      	cmp	r0, #0
 8008844:	f340 80d0 	ble.w	80089e8 <__sfvwrite_r+0x1f8>
 8008848:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800884c:	4406      	add	r6, r0
 800884e:	1a2d      	subs	r5, r5, r0
 8008850:	1a18      	subs	r0, r3, r0
 8008852:	f8c8 0008 	str.w	r0, [r8, #8]
 8008856:	2800      	cmp	r0, #0
 8008858:	f000 80ba 	beq.w	80089d0 <__sfvwrite_r+0x1e0>
 800885c:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8008860:	4555      	cmp	r5, sl
 8008862:	462b      	mov	r3, r5
 8008864:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8008868:	bf28      	it	cs
 800886a:	4653      	movcs	r3, sl
 800886c:	4632      	mov	r2, r6
 800886e:	4661      	mov	r1, ip
 8008870:	4648      	mov	r0, r9
 8008872:	2d00      	cmp	r5, #0
 8008874:	d1e4      	bne.n	8008840 <__sfvwrite_r+0x50>
 8008876:	e9d7 6500 	ldrd	r6, r5, [r7]
 800887a:	3708      	adds	r7, #8
 800887c:	e7d8      	b.n	8008830 <__sfvwrite_r+0x40>
 800887e:	4621      	mov	r1, r4
 8008880:	4648      	mov	r0, r9
 8008882:	f7fd fb53 	bl	8005f2c <__swsetup_r>
 8008886:	2800      	cmp	r0, #0
 8008888:	f040 8137 	bne.w	8008afa <__sfvwrite_r+0x30a>
 800888c:	f9b4 c00c 	ldrsh.w	ip, [r4, #12]
 8008890:	f8d8 7000 	ldr.w	r7, [r8]
 8008894:	fa1f fc8c 	uxth.w	ip, ip
 8008898:	f01c 0302 	ands.w	r3, ip, #2
 800889c:	d1c0      	bne.n	8008820 <__sfvwrite_r+0x30>
 800889e:	f01c 0a01 	ands.w	sl, ip, #1
 80088a2:	d166      	bne.n	8008972 <__sfvwrite_r+0x182>
 80088a4:	f8d4 b008 	ldr.w	fp, [r4, #8]
 80088a8:	4656      	mov	r6, sl
 80088aa:	6820      	ldr	r0, [r4, #0]
 80088ac:	2e00      	cmp	r6, #0
 80088ae:	d05c      	beq.n	800896a <__sfvwrite_r+0x17a>
 80088b0:	f41c 7f00 	tst.w	ip, #512	; 0x200
 80088b4:	f000 80a2 	beq.w	80089fc <__sfvwrite_r+0x20c>
 80088b8:	45b3      	cmp	fp, r6
 80088ba:	465b      	mov	r3, fp
 80088bc:	f200 80e2 	bhi.w	8008a84 <__sfvwrite_r+0x294>
 80088c0:	f41c 6f90 	tst.w	ip, #1152	; 0x480
 80088c4:	d031      	beq.n	800892a <__sfvwrite_r+0x13a>
 80088c6:	e9d4 1504 	ldrd	r1, r5, [r4, #16]
 80088ca:	eb15 0545 	adds.w	r5, r5, r5, lsl #1
 80088ce:	eba0 0b01 	sub.w	fp, r0, r1
 80088d2:	f106 0001 	add.w	r0, r6, #1
 80088d6:	bf48      	it	mi
 80088d8:	3501      	addmi	r5, #1
 80088da:	4458      	add	r0, fp
 80088dc:	106d      	asrs	r5, r5, #1
 80088de:	42a8      	cmp	r0, r5
 80088e0:	462a      	mov	r2, r5
 80088e2:	d901      	bls.n	80088e8 <__sfvwrite_r+0xf8>
 80088e4:	4605      	mov	r5, r0
 80088e6:	4602      	mov	r2, r0
 80088e8:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 80088ec:	f000 80db 	beq.w	8008aa6 <__sfvwrite_r+0x2b6>
 80088f0:	4611      	mov	r1, r2
 80088f2:	4648      	mov	r0, r9
 80088f4:	f7fe fee0 	bl	80076b8 <_malloc_r>
 80088f8:	2800      	cmp	r0, #0
 80088fa:	f000 80f8 	beq.w	8008aee <__sfvwrite_r+0x2fe>
 80088fe:	465a      	mov	r2, fp
 8008900:	6921      	ldr	r1, [r4, #16]
 8008902:	9001      	str	r0, [sp, #4]
 8008904:	f7f7 fe22 	bl	800054c <memcpy>
 8008908:	89a2      	ldrh	r2, [r4, #12]
 800890a:	9b01      	ldr	r3, [sp, #4]
 800890c:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8008910:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8008914:	81a2      	strh	r2, [r4, #12]
 8008916:	eb03 000b 	add.w	r0, r3, fp
 800891a:	eba5 020b 	sub.w	r2, r5, fp
 800891e:	6123      	str	r3, [r4, #16]
 8008920:	46b3      	mov	fp, r6
 8008922:	4633      	mov	r3, r6
 8008924:	6020      	str	r0, [r4, #0]
 8008926:	60a2      	str	r2, [r4, #8]
 8008928:	6165      	str	r5, [r4, #20]
 800892a:	461a      	mov	r2, r3
 800892c:	4651      	mov	r1, sl
 800892e:	9301      	str	r3, [sp, #4]
 8008930:	f000 f936 	bl	8008ba0 <memmove>
 8008934:	68a1      	ldr	r1, [r4, #8]
 8008936:	4635      	mov	r5, r6
 8008938:	6822      	ldr	r2, [r4, #0]
 800893a:	2600      	movs	r6, #0
 800893c:	9b01      	ldr	r3, [sp, #4]
 800893e:	eba1 010b 	sub.w	r1, r1, fp
 8008942:	4413      	add	r3, r2
 8008944:	60a1      	str	r1, [r4, #8]
 8008946:	6023      	str	r3, [r4, #0]
 8008948:	f8d8 0008 	ldr.w	r0, [r8, #8]
 800894c:	44aa      	add	sl, r5
 800894e:	1b40      	subs	r0, r0, r5
 8008950:	f8c8 0008 	str.w	r0, [r8, #8]
 8008954:	2800      	cmp	r0, #0
 8008956:	d03b      	beq.n	80089d0 <__sfvwrite_r+0x1e0>
 8008958:	f9b4 c00c 	ldrsh.w	ip, [r4, #12]
 800895c:	f8d4 b008 	ldr.w	fp, [r4, #8]
 8008960:	fa1f fc8c 	uxth.w	ip, ip
 8008964:	6820      	ldr	r0, [r4, #0]
 8008966:	2e00      	cmp	r6, #0
 8008968:	d1a2      	bne.n	80088b0 <__sfvwrite_r+0xc0>
 800896a:	e9d7 a600 	ldrd	sl, r6, [r7]
 800896e:	3708      	adds	r7, #8
 8008970:	e79c      	b.n	80088ac <__sfvwrite_r+0xbc>
 8008972:	469a      	mov	sl, r3
 8008974:	4618      	mov	r0, r3
 8008976:	461e      	mov	r6, r3
 8008978:	463b      	mov	r3, r7
 800897a:	4657      	mov	r7, sl
 800897c:	469b      	mov	fp, r3
 800897e:	2e00      	cmp	r6, #0
 8008980:	d06c      	beq.n	8008a5c <__sfvwrite_r+0x26c>
 8008982:	2800      	cmp	r0, #0
 8008984:	d074      	beq.n	8008a70 <__sfvwrite_r+0x280>
 8008986:	45b2      	cmp	sl, r6
 8008988:	6820      	ldr	r0, [r4, #0]
 800898a:	6921      	ldr	r1, [r4, #16]
 800898c:	4653      	mov	r3, sl
 800898e:	6962      	ldr	r2, [r4, #20]
 8008990:	bf28      	it	cs
 8008992:	4633      	movcs	r3, r6
 8008994:	68a5      	ldr	r5, [r4, #8]
 8008996:	4288      	cmp	r0, r1
 8008998:	4415      	add	r5, r2
 800899a:	d901      	bls.n	80089a0 <__sfvwrite_r+0x1b0>
 800899c:	42ab      	cmp	r3, r5
 800899e:	dc74      	bgt.n	8008a8a <__sfvwrite_r+0x29a>
 80089a0:	429a      	cmp	r2, r3
 80089a2:	f300 8096 	bgt.w	8008ad2 <__sfvwrite_r+0x2e2>
 80089a6:	4613      	mov	r3, r2
 80089a8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80089aa:	463a      	mov	r2, r7
 80089ac:	69e1      	ldr	r1, [r4, #28]
 80089ae:	4648      	mov	r0, r9
 80089b0:	47a8      	blx	r5
 80089b2:	1e05      	subs	r5, r0, #0
 80089b4:	dd18      	ble.n	80089e8 <__sfvwrite_r+0x1f8>
 80089b6:	ebba 0a05 	subs.w	sl, sl, r5
 80089ba:	d00f      	beq.n	80089dc <__sfvwrite_r+0x1ec>
 80089bc:	2001      	movs	r0, #1
 80089be:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80089c2:	442f      	add	r7, r5
 80089c4:	1b76      	subs	r6, r6, r5
 80089c6:	1b5d      	subs	r5, r3, r5
 80089c8:	f8c8 5008 	str.w	r5, [r8, #8]
 80089cc:	2d00      	cmp	r5, #0
 80089ce:	d1d6      	bne.n	800897e <__sfvwrite_r+0x18e>
 80089d0:	2000      	movs	r0, #0
 80089d2:	b003      	add	sp, #12
 80089d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80089d8:	2000      	movs	r0, #0
 80089da:	4770      	bx	lr
 80089dc:	4621      	mov	r1, r4
 80089de:	4648      	mov	r0, r9
 80089e0:	f7fe fbc0 	bl	8007164 <_fflush_r>
 80089e4:	2800      	cmp	r0, #0
 80089e6:	d0ea      	beq.n	80089be <__sfvwrite_r+0x1ce>
 80089e8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80089ec:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80089f0:	f04f 30ff 	mov.w	r0, #4294967295
 80089f4:	81a3      	strh	r3, [r4, #12]
 80089f6:	b003      	add	sp, #12
 80089f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80089fc:	6923      	ldr	r3, [r4, #16]
 80089fe:	4283      	cmp	r3, r0
 8008a00:	d315      	bcc.n	8008a2e <__sfvwrite_r+0x23e>
 8008a02:	6963      	ldr	r3, [r4, #20]
 8008a04:	42b3      	cmp	r3, r6
 8008a06:	d812      	bhi.n	8008a2e <__sfvwrite_r+0x23e>
 8008a08:	4a3d      	ldr	r2, [pc, #244]	; (8008b00 <__sfvwrite_r+0x310>)
 8008a0a:	4648      	mov	r0, r9
 8008a0c:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8008a0e:	4296      	cmp	r6, r2
 8008a10:	69e1      	ldr	r1, [r4, #28]
 8008a12:	4652      	mov	r2, sl
 8008a14:	bf94      	ite	ls
 8008a16:	46b4      	movls	ip, r6
 8008a18:	f06f 4c00 	mvnhi.w	ip, #2147483648	; 0x80000000
 8008a1c:	fb9c fcf3 	sdiv	ip, ip, r3
 8008a20:	fb03 f30c 	mul.w	r3, r3, ip
 8008a24:	47a8      	blx	r5
 8008a26:	1e05      	subs	r5, r0, #0
 8008a28:	ddde      	ble.n	80089e8 <__sfvwrite_r+0x1f8>
 8008a2a:	1b76      	subs	r6, r6, r5
 8008a2c:	e78c      	b.n	8008948 <__sfvwrite_r+0x158>
 8008a2e:	45b3      	cmp	fp, r6
 8008a30:	465d      	mov	r5, fp
 8008a32:	4651      	mov	r1, sl
 8008a34:	bf28      	it	cs
 8008a36:	4635      	movcs	r5, r6
 8008a38:	462a      	mov	r2, r5
 8008a3a:	f000 f8b1 	bl	8008ba0 <memmove>
 8008a3e:	68a3      	ldr	r3, [r4, #8]
 8008a40:	6822      	ldr	r2, [r4, #0]
 8008a42:	1b5b      	subs	r3, r3, r5
 8008a44:	442a      	add	r2, r5
 8008a46:	60a3      	str	r3, [r4, #8]
 8008a48:	6022      	str	r2, [r4, #0]
 8008a4a:	2b00      	cmp	r3, #0
 8008a4c:	d1ed      	bne.n	8008a2a <__sfvwrite_r+0x23a>
 8008a4e:	4621      	mov	r1, r4
 8008a50:	4648      	mov	r0, r9
 8008a52:	f7fe fb87 	bl	8007164 <_fflush_r>
 8008a56:	2800      	cmp	r0, #0
 8008a58:	d0e7      	beq.n	8008a2a <__sfvwrite_r+0x23a>
 8008a5a:	e7c5      	b.n	80089e8 <__sfvwrite_r+0x1f8>
 8008a5c:	f10b 0308 	add.w	r3, fp, #8
 8008a60:	f853 6c04 	ldr.w	r6, [r3, #-4]
 8008a64:	469b      	mov	fp, r3
 8008a66:	f853 7c08 	ldr.w	r7, [r3, #-8]
 8008a6a:	3308      	adds	r3, #8
 8008a6c:	2e00      	cmp	r6, #0
 8008a6e:	d0f7      	beq.n	8008a60 <__sfvwrite_r+0x270>
 8008a70:	4632      	mov	r2, r6
 8008a72:	210a      	movs	r1, #10
 8008a74:	4638      	mov	r0, r7
 8008a76:	f7ff f8cd 	bl	8007c14 <memchr>
 8008a7a:	b338      	cbz	r0, 8008acc <__sfvwrite_r+0x2dc>
 8008a7c:	3001      	adds	r0, #1
 8008a7e:	eba0 0a07 	sub.w	sl, r0, r7
 8008a82:	e780      	b.n	8008986 <__sfvwrite_r+0x196>
 8008a84:	46b3      	mov	fp, r6
 8008a86:	4633      	mov	r3, r6
 8008a88:	e74f      	b.n	800892a <__sfvwrite_r+0x13a>
 8008a8a:	4639      	mov	r1, r7
 8008a8c:	462a      	mov	r2, r5
 8008a8e:	f000 f887 	bl	8008ba0 <memmove>
 8008a92:	6823      	ldr	r3, [r4, #0]
 8008a94:	4621      	mov	r1, r4
 8008a96:	4648      	mov	r0, r9
 8008a98:	442b      	add	r3, r5
 8008a9a:	6023      	str	r3, [r4, #0]
 8008a9c:	f7fe fb62 	bl	8007164 <_fflush_r>
 8008aa0:	2800      	cmp	r0, #0
 8008aa2:	d088      	beq.n	80089b6 <__sfvwrite_r+0x1c6>
 8008aa4:	e7a0      	b.n	80089e8 <__sfvwrite_r+0x1f8>
 8008aa6:	4648      	mov	r0, r9
 8008aa8:	f000 f8f2 	bl	8008c90 <_realloc_r>
 8008aac:	4603      	mov	r3, r0
 8008aae:	2800      	cmp	r0, #0
 8008ab0:	f47f af31 	bne.w	8008916 <__sfvwrite_r+0x126>
 8008ab4:	6921      	ldr	r1, [r4, #16]
 8008ab6:	4648      	mov	r0, r9
 8008ab8:	f7fe fc56 	bl	8007368 <_free_r>
 8008abc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008ac0:	220c      	movs	r2, #12
 8008ac2:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8008ac6:	f8c9 2000 	str.w	r2, [r9]
 8008aca:	e78f      	b.n	80089ec <__sfvwrite_r+0x1fc>
 8008acc:	f106 0a01 	add.w	sl, r6, #1
 8008ad0:	e759      	b.n	8008986 <__sfvwrite_r+0x196>
 8008ad2:	461a      	mov	r2, r3
 8008ad4:	4639      	mov	r1, r7
 8008ad6:	9301      	str	r3, [sp, #4]
 8008ad8:	461d      	mov	r5, r3
 8008ada:	f000 f861 	bl	8008ba0 <memmove>
 8008ade:	68a1      	ldr	r1, [r4, #8]
 8008ae0:	6822      	ldr	r2, [r4, #0]
 8008ae2:	9b01      	ldr	r3, [sp, #4]
 8008ae4:	1ac9      	subs	r1, r1, r3
 8008ae6:	4413      	add	r3, r2
 8008ae8:	60a1      	str	r1, [r4, #8]
 8008aea:	6023      	str	r3, [r4, #0]
 8008aec:	e763      	b.n	80089b6 <__sfvwrite_r+0x1c6>
 8008aee:	220c      	movs	r2, #12
 8008af0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008af4:	f8c9 2000 	str.w	r2, [r9]
 8008af8:	e778      	b.n	80089ec <__sfvwrite_r+0x1fc>
 8008afa:	f04f 30ff 	mov.w	r0, #4294967295
 8008afe:	e768      	b.n	80089d2 <__sfvwrite_r+0x1e2>
 8008b00:	7ffffffe 	.word	0x7ffffffe
 8008b04:	7ffffc00 	.word	0x7ffffc00

08008b08 <_isatty_r>:
 8008b08:	b538      	push	{r3, r4, r5, lr}
 8008b0a:	2300      	movs	r3, #0
 8008b0c:	4c06      	ldr	r4, [pc, #24]	; (8008b28 <_isatty_r+0x20>)
 8008b0e:	4605      	mov	r5, r0
 8008b10:	4608      	mov	r0, r1
 8008b12:	6023      	str	r3, [r4, #0]
 8008b14:	f7f8 fc51 	bl	80013ba <_isatty>
 8008b18:	1c43      	adds	r3, r0, #1
 8008b1a:	d000      	beq.n	8008b1e <_isatty_r+0x16>
 8008b1c:	bd38      	pop	{r3, r4, r5, pc}
 8008b1e:	6823      	ldr	r3, [r4, #0]
 8008b20:	2b00      	cmp	r3, #0
 8008b22:	d0fb      	beq.n	8008b1c <_isatty_r+0x14>
 8008b24:	602b      	str	r3, [r5, #0]
 8008b26:	bd38      	pop	{r3, r4, r5, pc}
 8008b28:	20000af4 	.word	0x20000af4

08008b2c <__locale_mb_cur_max>:
 8008b2c:	4b04      	ldr	r3, [pc, #16]	; (8008b40 <__locale_mb_cur_max+0x14>)
 8008b2e:	4a05      	ldr	r2, [pc, #20]	; (8008b44 <__locale_mb_cur_max+0x18>)
 8008b30:	681b      	ldr	r3, [r3, #0]
 8008b32:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8008b34:	2b00      	cmp	r3, #0
 8008b36:	bf08      	it	eq
 8008b38:	4613      	moveq	r3, r2
 8008b3a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8008b3e:	4770      	bx	lr
 8008b40:	2000002c 	.word	0x2000002c
 8008b44:	2000086c 	.word	0x2000086c

08008b48 <_lseek_r>:
 8008b48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008b4a:	460e      	mov	r6, r1
 8008b4c:	4c08      	ldr	r4, [pc, #32]	; (8008b70 <_lseek_r+0x28>)
 8008b4e:	2500      	movs	r5, #0
 8008b50:	4611      	mov	r1, r2
 8008b52:	4607      	mov	r7, r0
 8008b54:	461a      	mov	r2, r3
 8008b56:	4630      	mov	r0, r6
 8008b58:	6025      	str	r5, [r4, #0]
 8008b5a:	f7f8 fc38 	bl	80013ce <_lseek>
 8008b5e:	1c43      	adds	r3, r0, #1
 8008b60:	d000      	beq.n	8008b64 <_lseek_r+0x1c>
 8008b62:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008b64:	6823      	ldr	r3, [r4, #0]
 8008b66:	2b00      	cmp	r3, #0
 8008b68:	d0fb      	beq.n	8008b62 <_lseek_r+0x1a>
 8008b6a:	603b      	str	r3, [r7, #0]
 8008b6c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008b6e:	bf00      	nop
 8008b70:	20000af4 	.word	0x20000af4

08008b74 <__ascii_mbtowc>:
 8008b74:	b082      	sub	sp, #8
 8008b76:	b149      	cbz	r1, 8008b8c <__ascii_mbtowc+0x18>
 8008b78:	b15a      	cbz	r2, 8008b92 <__ascii_mbtowc+0x1e>
 8008b7a:	b16b      	cbz	r3, 8008b98 <__ascii_mbtowc+0x24>
 8008b7c:	7813      	ldrb	r3, [r2, #0]
 8008b7e:	600b      	str	r3, [r1, #0]
 8008b80:	7812      	ldrb	r2, [r2, #0]
 8008b82:	1c10      	adds	r0, r2, #0
 8008b84:	bf18      	it	ne
 8008b86:	2001      	movne	r0, #1
 8008b88:	b002      	add	sp, #8
 8008b8a:	4770      	bx	lr
 8008b8c:	a901      	add	r1, sp, #4
 8008b8e:	2a00      	cmp	r2, #0
 8008b90:	d1f3      	bne.n	8008b7a <__ascii_mbtowc+0x6>
 8008b92:	4610      	mov	r0, r2
 8008b94:	b002      	add	sp, #8
 8008b96:	4770      	bx	lr
 8008b98:	f06f 0001 	mvn.w	r0, #1
 8008b9c:	e7f4      	b.n	8008b88 <__ascii_mbtowc+0x14>
 8008b9e:	bf00      	nop

08008ba0 <memmove>:
 8008ba0:	4288      	cmp	r0, r1
 8008ba2:	b4f0      	push	{r4, r5, r6, r7}
 8008ba4:	d90d      	bls.n	8008bc2 <memmove+0x22>
 8008ba6:	188b      	adds	r3, r1, r2
 8008ba8:	4283      	cmp	r3, r0
 8008baa:	d90a      	bls.n	8008bc2 <memmove+0x22>
 8008bac:	1884      	adds	r4, r0, r2
 8008bae:	b132      	cbz	r2, 8008bbe <memmove+0x1e>
 8008bb0:	4622      	mov	r2, r4
 8008bb2:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8008bb6:	4299      	cmp	r1, r3
 8008bb8:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8008bbc:	d1f9      	bne.n	8008bb2 <memmove+0x12>
 8008bbe:	bcf0      	pop	{r4, r5, r6, r7}
 8008bc0:	4770      	bx	lr
 8008bc2:	2a0f      	cmp	r2, #15
 8008bc4:	d948      	bls.n	8008c58 <memmove+0xb8>
 8008bc6:	ea40 0301 	orr.w	r3, r0, r1
 8008bca:	079b      	lsls	r3, r3, #30
 8008bcc:	d146      	bne.n	8008c5c <memmove+0xbc>
 8008bce:	f1a2 0310 	sub.w	r3, r2, #16
 8008bd2:	f101 0720 	add.w	r7, r1, #32
 8008bd6:	f101 0410 	add.w	r4, r1, #16
 8008bda:	f100 0510 	add.w	r5, r0, #16
 8008bde:	091b      	lsrs	r3, r3, #4
 8008be0:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008be4:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008be8:	3410      	adds	r4, #16
 8008bea:	3510      	adds	r5, #16
 8008bec:	f845 6c20 	str.w	r6, [r5, #-32]
 8008bf0:	f854 6c1c 	ldr.w	r6, [r4, #-28]
 8008bf4:	f845 6c1c 	str.w	r6, [r5, #-28]
 8008bf8:	f854 6c18 	ldr.w	r6, [r4, #-24]
 8008bfc:	f845 6c18 	str.w	r6, [r5, #-24]
 8008c00:	f854 6c14 	ldr.w	r6, [r4, #-20]
 8008c04:	42bc      	cmp	r4, r7
 8008c06:	f845 6c14 	str.w	r6, [r5, #-20]
 8008c0a:	d1eb      	bne.n	8008be4 <memmove+0x44>
 8008c0c:	3301      	adds	r3, #1
 8008c0e:	f002 050f 	and.w	r5, r2, #15
 8008c12:	011b      	lsls	r3, r3, #4
 8008c14:	2d03      	cmp	r5, #3
 8008c16:	4419      	add	r1, r3
 8008c18:	4403      	add	r3, r0
 8008c1a:	d921      	bls.n	8008c60 <memmove+0xc0>
 8008c1c:	1f1f      	subs	r7, r3, #4
 8008c1e:	460e      	mov	r6, r1
 8008c20:	462c      	mov	r4, r5
 8008c22:	3c04      	subs	r4, #4
 8008c24:	f856 cb04 	ldr.w	ip, [r6], #4
 8008c28:	2c03      	cmp	r4, #3
 8008c2a:	f847 cf04 	str.w	ip, [r7, #4]!
 8008c2e:	d8f8      	bhi.n	8008c22 <memmove+0x82>
 8008c30:	1f2c      	subs	r4, r5, #4
 8008c32:	f002 0203 	and.w	r2, r2, #3
 8008c36:	f024 0403 	bic.w	r4, r4, #3
 8008c3a:	3404      	adds	r4, #4
 8008c3c:	4423      	add	r3, r4
 8008c3e:	4421      	add	r1, r4
 8008c40:	2a00      	cmp	r2, #0
 8008c42:	d0bc      	beq.n	8008bbe <memmove+0x1e>
 8008c44:	3b01      	subs	r3, #1
 8008c46:	440a      	add	r2, r1
 8008c48:	f811 4b01 	ldrb.w	r4, [r1], #1
 8008c4c:	4291      	cmp	r1, r2
 8008c4e:	f803 4f01 	strb.w	r4, [r3, #1]!
 8008c52:	d1f9      	bne.n	8008c48 <memmove+0xa8>
 8008c54:	bcf0      	pop	{r4, r5, r6, r7}
 8008c56:	4770      	bx	lr
 8008c58:	4603      	mov	r3, r0
 8008c5a:	e7f1      	b.n	8008c40 <memmove+0xa0>
 8008c5c:	4603      	mov	r3, r0
 8008c5e:	e7f1      	b.n	8008c44 <memmove+0xa4>
 8008c60:	462a      	mov	r2, r5
 8008c62:	e7ed      	b.n	8008c40 <memmove+0xa0>

08008c64 <_read_r>:
 8008c64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008c66:	460e      	mov	r6, r1
 8008c68:	4c08      	ldr	r4, [pc, #32]	; (8008c8c <_read_r+0x28>)
 8008c6a:	2500      	movs	r5, #0
 8008c6c:	4611      	mov	r1, r2
 8008c6e:	4607      	mov	r7, r0
 8008c70:	461a      	mov	r2, r3
 8008c72:	4630      	mov	r0, r6
 8008c74:	6025      	str	r5, [r4, #0]
 8008c76:	f7f8 fb4d 	bl	8001314 <_read>
 8008c7a:	1c43      	adds	r3, r0, #1
 8008c7c:	d000      	beq.n	8008c80 <_read_r+0x1c>
 8008c7e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008c80:	6823      	ldr	r3, [r4, #0]
 8008c82:	2b00      	cmp	r3, #0
 8008c84:	d0fb      	beq.n	8008c7e <_read_r+0x1a>
 8008c86:	603b      	str	r3, [r7, #0]
 8008c88:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8008c8a:	bf00      	nop
 8008c8c:	20000af4 	.word	0x20000af4

08008c90 <_realloc_r>:
 8008c90:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008c94:	4692      	mov	sl, r2
 8008c96:	b083      	sub	sp, #12
 8008c98:	2900      	cmp	r1, #0
 8008c9a:	d07a      	beq.n	8008d92 <_realloc_r+0x102>
 8008c9c:	460d      	mov	r5, r1
 8008c9e:	f10a 040b 	add.w	r4, sl, #11
 8008ca2:	4680      	mov	r8, r0
 8008ca4:	f7fe fffa 	bl	8007c9c <__malloc_lock>
 8008ca8:	f855 1c04 	ldr.w	r1, [r5, #-4]
 8008cac:	2c16      	cmp	r4, #22
 8008cae:	f1a5 0708 	sub.w	r7, r5, #8
 8008cb2:	f021 0603 	bic.w	r6, r1, #3
 8008cb6:	d842      	bhi.n	8008d3e <_realloc_r+0xae>
 8008cb8:	2210      	movs	r2, #16
 8008cba:	2300      	movs	r3, #0
 8008cbc:	4614      	mov	r4, r2
 8008cbe:	4554      	cmp	r4, sl
 8008cc0:	f0c0 80f7 	bcc.w	8008eb2 <_realloc_r+0x222>
 8008cc4:	2b00      	cmp	r3, #0
 8008cc6:	f040 80f4 	bne.w	8008eb2 <_realloc_r+0x222>
 8008cca:	4296      	cmp	r6, r2
 8008ccc:	eb07 0906 	add.w	r9, r7, r6
 8008cd0:	da49      	bge.n	8008d66 <_realloc_r+0xd6>
 8008cd2:	4bc4      	ldr	r3, [pc, #784]	; (8008fe4 <_realloc_r+0x354>)
 8008cd4:	6898      	ldr	r0, [r3, #8]
 8008cd6:	4548      	cmp	r0, r9
 8008cd8:	d073      	beq.n	8008dc2 <_realloc_r+0x132>
 8008cda:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8008cde:	f020 0301 	bic.w	r3, r0, #1
 8008ce2:	444b      	add	r3, r9
 8008ce4:	685b      	ldr	r3, [r3, #4]
 8008ce6:	07db      	lsls	r3, r3, #31
 8008ce8:	d52e      	bpl.n	8008d48 <_realloc_r+0xb8>
 8008cea:	07c9      	lsls	r1, r1, #31
 8008cec:	f140 8109 	bpl.w	8008f02 <_realloc_r+0x272>
 8008cf0:	4651      	mov	r1, sl
 8008cf2:	4640      	mov	r0, r8
 8008cf4:	f7fe fce0 	bl	80076b8 <_malloc_r>
 8008cf8:	4682      	mov	sl, r0
 8008cfa:	b1e0      	cbz	r0, 8008d36 <_realloc_r+0xa6>
 8008cfc:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008d00:	f1a0 0208 	sub.w	r2, r0, #8
 8008d04:	f023 0301 	bic.w	r3, r3, #1
 8008d08:	443b      	add	r3, r7
 8008d0a:	4293      	cmp	r3, r2
 8008d0c:	f000 8102 	beq.w	8008f14 <_realloc_r+0x284>
 8008d10:	1f32      	subs	r2, r6, #4
 8008d12:	2a24      	cmp	r2, #36	; 0x24
 8008d14:	f200 810e 	bhi.w	8008f34 <_realloc_r+0x2a4>
 8008d18:	2a13      	cmp	r2, #19
 8008d1a:	6829      	ldr	r1, [r5, #0]
 8008d1c:	f200 80e6 	bhi.w	8008eec <_realloc_r+0x25c>
 8008d20:	4603      	mov	r3, r0
 8008d22:	462a      	mov	r2, r5
 8008d24:	6019      	str	r1, [r3, #0]
 8008d26:	6851      	ldr	r1, [r2, #4]
 8008d28:	6059      	str	r1, [r3, #4]
 8008d2a:	6892      	ldr	r2, [r2, #8]
 8008d2c:	609a      	str	r2, [r3, #8]
 8008d2e:	4629      	mov	r1, r5
 8008d30:	4640      	mov	r0, r8
 8008d32:	f7fe fb19 	bl	8007368 <_free_r>
 8008d36:	4640      	mov	r0, r8
 8008d38:	f7fe ffb6 	bl	8007ca8 <__malloc_unlock>
 8008d3c:	e025      	b.n	8008d8a <_realloc_r+0xfa>
 8008d3e:	f024 0407 	bic.w	r4, r4, #7
 8008d42:	4622      	mov	r2, r4
 8008d44:	0fe3      	lsrs	r3, r4, #31
 8008d46:	e7ba      	b.n	8008cbe <_realloc_r+0x2e>
 8008d48:	f020 0003 	bic.w	r0, r0, #3
 8008d4c:	1833      	adds	r3, r6, r0
 8008d4e:	4293      	cmp	r3, r2
 8008d50:	f2c0 8081 	blt.w	8008e56 <_realloc_r+0x1c6>
 8008d54:	f8d9 200c 	ldr.w	r2, [r9, #12]
 8008d58:	461e      	mov	r6, r3
 8008d5a:	f8d9 1008 	ldr.w	r1, [r9, #8]
 8008d5e:	eb07 0903 	add.w	r9, r7, r3
 8008d62:	60ca      	str	r2, [r1, #12]
 8008d64:	6091      	str	r1, [r2, #8]
 8008d66:	1b33      	subs	r3, r6, r4
 8008d68:	687a      	ldr	r2, [r7, #4]
 8008d6a:	2b0f      	cmp	r3, #15
 8008d6c:	f002 0201 	and.w	r2, r2, #1
 8008d70:	d815      	bhi.n	8008d9e <_realloc_r+0x10e>
 8008d72:	4332      	orrs	r2, r6
 8008d74:	607a      	str	r2, [r7, #4]
 8008d76:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008d7a:	f043 0301 	orr.w	r3, r3, #1
 8008d7e:	f8c9 3004 	str.w	r3, [r9, #4]
 8008d82:	4640      	mov	r0, r8
 8008d84:	46aa      	mov	sl, r5
 8008d86:	f7fe ff8f 	bl	8007ca8 <__malloc_unlock>
 8008d8a:	4650      	mov	r0, sl
 8008d8c:	b003      	add	sp, #12
 8008d8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008d92:	4611      	mov	r1, r2
 8008d94:	b003      	add	sp, #12
 8008d96:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008d9a:	f7fe bc8d 	b.w	80076b8 <_malloc_r>
 8008d9e:	4322      	orrs	r2, r4
 8008da0:	f043 0301 	orr.w	r3, r3, #1
 8008da4:	443c      	add	r4, r7
 8008da6:	4640      	mov	r0, r8
 8008da8:	607a      	str	r2, [r7, #4]
 8008daa:	6063      	str	r3, [r4, #4]
 8008dac:	f104 0108 	add.w	r1, r4, #8
 8008db0:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8008db4:	f043 0301 	orr.w	r3, r3, #1
 8008db8:	f8c9 3004 	str.w	r3, [r9, #4]
 8008dbc:	f7fe fad4 	bl	8007368 <_free_r>
 8008dc0:	e7df      	b.n	8008d82 <_realloc_r+0xf2>
 8008dc2:	f8d0 9004 	ldr.w	r9, [r0, #4]
 8008dc6:	f104 0010 	add.w	r0, r4, #16
 8008dca:	f029 0903 	bic.w	r9, r9, #3
 8008dce:	44b1      	add	r9, r6
 8008dd0:	4581      	cmp	r9, r0
 8008dd2:	f280 80b3 	bge.w	8008f3c <_realloc_r+0x2ac>
 8008dd6:	07c9      	lsls	r1, r1, #31
 8008dd8:	d48a      	bmi.n	8008cf0 <_realloc_r+0x60>
 8008dda:	f855 1c08 	ldr.w	r1, [r5, #-8]
 8008dde:	eba7 0b01 	sub.w	fp, r7, r1
 8008de2:	f8db 1004 	ldr.w	r1, [fp, #4]
 8008de6:	f021 0103 	bic.w	r1, r1, #3
 8008dea:	4489      	add	r9, r1
 8008dec:	4548      	cmp	r0, r9
 8008dee:	dc41      	bgt.n	8008e74 <_realloc_r+0x1e4>
 8008df0:	46da      	mov	sl, fp
 8008df2:	1f32      	subs	r2, r6, #4
 8008df4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008df8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008dfc:	2a24      	cmp	r2, #36	; 0x24
 8008dfe:	60c1      	str	r1, [r0, #12]
 8008e00:	6088      	str	r0, [r1, #8]
 8008e02:	f200 80dc 	bhi.w	8008fbe <_realloc_r+0x32e>
 8008e06:	2a13      	cmp	r2, #19
 8008e08:	6829      	ldr	r1, [r5, #0]
 8008e0a:	f240 80d6 	bls.w	8008fba <_realloc_r+0x32a>
 8008e0e:	f8cb 1008 	str.w	r1, [fp, #8]
 8008e12:	2a1b      	cmp	r2, #27
 8008e14:	6869      	ldr	r1, [r5, #4]
 8008e16:	f8cb 100c 	str.w	r1, [fp, #12]
 8008e1a:	68a9      	ldr	r1, [r5, #8]
 8008e1c:	f200 80d6 	bhi.w	8008fcc <_realloc_r+0x33c>
 8008e20:	f10b 0210 	add.w	r2, fp, #16
 8008e24:	3508      	adds	r5, #8
 8008e26:	6011      	str	r1, [r2, #0]
 8008e28:	6869      	ldr	r1, [r5, #4]
 8008e2a:	6051      	str	r1, [r2, #4]
 8008e2c:	68a9      	ldr	r1, [r5, #8]
 8008e2e:	6091      	str	r1, [r2, #8]
 8008e30:	eba9 0904 	sub.w	r9, r9, r4
 8008e34:	eb0b 0104 	add.w	r1, fp, r4
 8008e38:	4640      	mov	r0, r8
 8008e3a:	f049 0201 	orr.w	r2, r9, #1
 8008e3e:	6099      	str	r1, [r3, #8]
 8008e40:	604a      	str	r2, [r1, #4]
 8008e42:	f8db 3004 	ldr.w	r3, [fp, #4]
 8008e46:	f003 0301 	and.w	r3, r3, #1
 8008e4a:	431c      	orrs	r4, r3
 8008e4c:	f8cb 4004 	str.w	r4, [fp, #4]
 8008e50:	f7fe ff2a 	bl	8007ca8 <__malloc_unlock>
 8008e54:	e799      	b.n	8008d8a <_realloc_r+0xfa>
 8008e56:	07cb      	lsls	r3, r1, #31
 8008e58:	f53f af4a 	bmi.w	8008cf0 <_realloc_r+0x60>
 8008e5c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008e60:	eba7 0b03 	sub.w	fp, r7, r3
 8008e64:	f8db 1004 	ldr.w	r1, [fp, #4]
 8008e68:	f021 0103 	bic.w	r1, r1, #3
 8008e6c:	4408      	add	r0, r1
 8008e6e:	1983      	adds	r3, r0, r6
 8008e70:	4293      	cmp	r3, r2
 8008e72:	da24      	bge.n	8008ebe <_realloc_r+0x22e>
 8008e74:	1873      	adds	r3, r6, r1
 8008e76:	4293      	cmp	r3, r2
 8008e78:	f6ff af3a 	blt.w	8008cf0 <_realloc_r+0x60>
 8008e7c:	46da      	mov	sl, fp
 8008e7e:	1f32      	subs	r2, r6, #4
 8008e80:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008e84:	eb0b 0903 	add.w	r9, fp, r3
 8008e88:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008e8c:	2a24      	cmp	r2, #36	; 0x24
 8008e8e:	60c1      	str	r1, [r0, #12]
 8008e90:	6088      	str	r0, [r1, #8]
 8008e92:	d847      	bhi.n	8008f24 <_realloc_r+0x294>
 8008e94:	2a13      	cmp	r2, #19
 8008e96:	6829      	ldr	r1, [r5, #0]
 8008e98:	d91e      	bls.n	8008ed8 <_realloc_r+0x248>
 8008e9a:	f8cb 1008 	str.w	r1, [fp, #8]
 8008e9e:	2a1b      	cmp	r2, #27
 8008ea0:	6869      	ldr	r1, [r5, #4]
 8008ea2:	f8cb 100c 	str.w	r1, [fp, #12]
 8008ea6:	68a9      	ldr	r1, [r5, #8]
 8008ea8:	d85b      	bhi.n	8008f62 <_realloc_r+0x2d2>
 8008eaa:	f10b 0210 	add.w	r2, fp, #16
 8008eae:	3508      	adds	r5, #8
 8008eb0:	e013      	b.n	8008eda <_realloc_r+0x24a>
 8008eb2:	230c      	movs	r3, #12
 8008eb4:	f04f 0a00 	mov.w	sl, #0
 8008eb8:	f8c8 3000 	str.w	r3, [r8]
 8008ebc:	e765      	b.n	8008d8a <_realloc_r+0xfa>
 8008ebe:	f8d9 100c 	ldr.w	r1, [r9, #12]
 8008ec2:	46da      	mov	sl, fp
 8008ec4:	f8d9 0008 	ldr.w	r0, [r9, #8]
 8008ec8:	1f32      	subs	r2, r6, #4
 8008eca:	eb0b 0903 	add.w	r9, fp, r3
 8008ece:	60c1      	str	r1, [r0, #12]
 8008ed0:	6088      	str	r0, [r1, #8]
 8008ed2:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008ed6:	e7d7      	b.n	8008e88 <_realloc_r+0x1f8>
 8008ed8:	4652      	mov	r2, sl
 8008eda:	6011      	str	r1, [r2, #0]
 8008edc:	461e      	mov	r6, r3
 8008ede:	686b      	ldr	r3, [r5, #4]
 8008ee0:	465f      	mov	r7, fp
 8008ee2:	6053      	str	r3, [r2, #4]
 8008ee4:	68ab      	ldr	r3, [r5, #8]
 8008ee6:	4655      	mov	r5, sl
 8008ee8:	6093      	str	r3, [r2, #8]
 8008eea:	e73c      	b.n	8008d66 <_realloc_r+0xd6>
 8008eec:	6001      	str	r1, [r0, #0]
 8008eee:	2a1b      	cmp	r2, #27
 8008ef0:	686b      	ldr	r3, [r5, #4]
 8008ef2:	6043      	str	r3, [r0, #4]
 8008ef4:	d841      	bhi.n	8008f7a <_realloc_r+0x2ea>
 8008ef6:	f105 0208 	add.w	r2, r5, #8
 8008efa:	f100 0308 	add.w	r3, r0, #8
 8008efe:	68a9      	ldr	r1, [r5, #8]
 8008f00:	e710      	b.n	8008d24 <_realloc_r+0x94>
 8008f02:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008f06:	eba7 0b03 	sub.w	fp, r7, r3
 8008f0a:	f8db 1004 	ldr.w	r1, [fp, #4]
 8008f0e:	f021 0103 	bic.w	r1, r1, #3
 8008f12:	e7af      	b.n	8008e74 <_realloc_r+0x1e4>
 8008f14:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008f18:	f023 0303 	bic.w	r3, r3, #3
 8008f1c:	441e      	add	r6, r3
 8008f1e:	eb07 0906 	add.w	r9, r7, r6
 8008f22:	e720      	b.n	8008d66 <_realloc_r+0xd6>
 8008f24:	4629      	mov	r1, r5
 8008f26:	4650      	mov	r0, sl
 8008f28:	461e      	mov	r6, r3
 8008f2a:	465f      	mov	r7, fp
 8008f2c:	f7ff fe38 	bl	8008ba0 <memmove>
 8008f30:	4655      	mov	r5, sl
 8008f32:	e718      	b.n	8008d66 <_realloc_r+0xd6>
 8008f34:	4629      	mov	r1, r5
 8008f36:	f7ff fe33 	bl	8008ba0 <memmove>
 8008f3a:	e6f8      	b.n	8008d2e <_realloc_r+0x9e>
 8008f3c:	eba9 0904 	sub.w	r9, r9, r4
 8008f40:	4427      	add	r7, r4
 8008f42:	4640      	mov	r0, r8
 8008f44:	46aa      	mov	sl, r5
 8008f46:	f049 0201 	orr.w	r2, r9, #1
 8008f4a:	609f      	str	r7, [r3, #8]
 8008f4c:	607a      	str	r2, [r7, #4]
 8008f4e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008f52:	f003 0301 	and.w	r3, r3, #1
 8008f56:	431c      	orrs	r4, r3
 8008f58:	f845 4c04 	str.w	r4, [r5, #-4]
 8008f5c:	f7fe fea4 	bl	8007ca8 <__malloc_unlock>
 8008f60:	e713      	b.n	8008d8a <_realloc_r+0xfa>
 8008f62:	f8cb 1010 	str.w	r1, [fp, #16]
 8008f66:	2a24      	cmp	r2, #36	; 0x24
 8008f68:	68e9      	ldr	r1, [r5, #12]
 8008f6a:	f8cb 1014 	str.w	r1, [fp, #20]
 8008f6e:	6929      	ldr	r1, [r5, #16]
 8008f70:	d00f      	beq.n	8008f92 <_realloc_r+0x302>
 8008f72:	f10b 0218 	add.w	r2, fp, #24
 8008f76:	3510      	adds	r5, #16
 8008f78:	e7af      	b.n	8008eda <_realloc_r+0x24a>
 8008f7a:	68ab      	ldr	r3, [r5, #8]
 8008f7c:	2a24      	cmp	r2, #36	; 0x24
 8008f7e:	6083      	str	r3, [r0, #8]
 8008f80:	68eb      	ldr	r3, [r5, #12]
 8008f82:	60c3      	str	r3, [r0, #12]
 8008f84:	d00f      	beq.n	8008fa6 <_realloc_r+0x316>
 8008f86:	f105 0210 	add.w	r2, r5, #16
 8008f8a:	f100 0310 	add.w	r3, r0, #16
 8008f8e:	6929      	ldr	r1, [r5, #16]
 8008f90:	e6c8      	b.n	8008d24 <_realloc_r+0x94>
 8008f92:	f8cb 1018 	str.w	r1, [fp, #24]
 8008f96:	f10b 0220 	add.w	r2, fp, #32
 8008f9a:	6969      	ldr	r1, [r5, #20]
 8008f9c:	3518      	adds	r5, #24
 8008f9e:	f8cb 101c 	str.w	r1, [fp, #28]
 8008fa2:	6829      	ldr	r1, [r5, #0]
 8008fa4:	e799      	b.n	8008eda <_realloc_r+0x24a>
 8008fa6:	6929      	ldr	r1, [r5, #16]
 8008fa8:	f105 0218 	add.w	r2, r5, #24
 8008fac:	f100 0318 	add.w	r3, r0, #24
 8008fb0:	6101      	str	r1, [r0, #16]
 8008fb2:	6969      	ldr	r1, [r5, #20]
 8008fb4:	6141      	str	r1, [r0, #20]
 8008fb6:	69a9      	ldr	r1, [r5, #24]
 8008fb8:	e6b4      	b.n	8008d24 <_realloc_r+0x94>
 8008fba:	4652      	mov	r2, sl
 8008fbc:	e733      	b.n	8008e26 <_realloc_r+0x196>
 8008fbe:	4629      	mov	r1, r5
 8008fc0:	4650      	mov	r0, sl
 8008fc2:	9301      	str	r3, [sp, #4]
 8008fc4:	f7ff fdec 	bl	8008ba0 <memmove>
 8008fc8:	9b01      	ldr	r3, [sp, #4]
 8008fca:	e731      	b.n	8008e30 <_realloc_r+0x1a0>
 8008fcc:	f8cb 1010 	str.w	r1, [fp, #16]
 8008fd0:	2a24      	cmp	r2, #36	; 0x24
 8008fd2:	68e9      	ldr	r1, [r5, #12]
 8008fd4:	f8cb 1014 	str.w	r1, [fp, #20]
 8008fd8:	6929      	ldr	r1, [r5, #16]
 8008fda:	d005      	beq.n	8008fe8 <_realloc_r+0x358>
 8008fdc:	f10b 0218 	add.w	r2, fp, #24
 8008fe0:	3510      	adds	r5, #16
 8008fe2:	e720      	b.n	8008e26 <_realloc_r+0x196>
 8008fe4:	2000045c 	.word	0x2000045c
 8008fe8:	f8cb 1018 	str.w	r1, [fp, #24]
 8008fec:	f10b 0220 	add.w	r2, fp, #32
 8008ff0:	6969      	ldr	r1, [r5, #20]
 8008ff2:	3518      	adds	r5, #24
 8008ff4:	f8cb 101c 	str.w	r1, [fp, #28]
 8008ff8:	6829      	ldr	r1, [r5, #0]
 8008ffa:	e714      	b.n	8008e26 <_realloc_r+0x196>

08008ffc <__swbuf_r>:
 8008ffc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008ffe:	460d      	mov	r5, r1
 8009000:	4614      	mov	r4, r2
 8009002:	4606      	mov	r6, r0
 8009004:	b110      	cbz	r0, 800900c <__swbuf_r+0x10>
 8009006:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8009008:	2b00      	cmp	r3, #0
 800900a:	d043      	beq.n	8009094 <__swbuf_r+0x98>
 800900c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009010:	69a3      	ldr	r3, [r4, #24]
 8009012:	b291      	uxth	r1, r2
 8009014:	60a3      	str	r3, [r4, #8]
 8009016:	0708      	lsls	r0, r1, #28
 8009018:	d51b      	bpl.n	8009052 <__swbuf_r+0x56>
 800901a:	6923      	ldr	r3, [r4, #16]
 800901c:	b1cb      	cbz	r3, 8009052 <__swbuf_r+0x56>
 800901e:	b2ed      	uxtb	r5, r5
 8009020:	0489      	lsls	r1, r1, #18
 8009022:	462f      	mov	r7, r5
 8009024:	d522      	bpl.n	800906c <__swbuf_r+0x70>
 8009026:	6822      	ldr	r2, [r4, #0]
 8009028:	6961      	ldr	r1, [r4, #20]
 800902a:	1ad3      	subs	r3, r2, r3
 800902c:	4299      	cmp	r1, r3
 800902e:	dd29      	ble.n	8009084 <__swbuf_r+0x88>
 8009030:	3301      	adds	r3, #1
 8009032:	68a1      	ldr	r1, [r4, #8]
 8009034:	1c50      	adds	r0, r2, #1
 8009036:	3901      	subs	r1, #1
 8009038:	6020      	str	r0, [r4, #0]
 800903a:	60a1      	str	r1, [r4, #8]
 800903c:	7015      	strb	r5, [r2, #0]
 800903e:	6962      	ldr	r2, [r4, #20]
 8009040:	429a      	cmp	r2, r3
 8009042:	d02a      	beq.n	800909a <__swbuf_r+0x9e>
 8009044:	2d0a      	cmp	r5, #10
 8009046:	d102      	bne.n	800904e <__swbuf_r+0x52>
 8009048:	7b23      	ldrb	r3, [r4, #12]
 800904a:	07db      	lsls	r3, r3, #31
 800904c:	d425      	bmi.n	800909a <__swbuf_r+0x9e>
 800904e:	4638      	mov	r0, r7
 8009050:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009052:	4621      	mov	r1, r4
 8009054:	4630      	mov	r0, r6
 8009056:	f7fc ff69 	bl	8005f2c <__swsetup_r>
 800905a:	bb20      	cbnz	r0, 80090a6 <__swbuf_r+0xaa>
 800905c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009060:	b2ed      	uxtb	r5, r5
 8009062:	6923      	ldr	r3, [r4, #16]
 8009064:	b291      	uxth	r1, r2
 8009066:	462f      	mov	r7, r5
 8009068:	0489      	lsls	r1, r1, #18
 800906a:	d4dc      	bmi.n	8009026 <__swbuf_r+0x2a>
 800906c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800906e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8009072:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8009076:	81a2      	strh	r2, [r4, #12]
 8009078:	6822      	ldr	r2, [r4, #0]
 800907a:	6661      	str	r1, [r4, #100]	; 0x64
 800907c:	1ad3      	subs	r3, r2, r3
 800907e:	6961      	ldr	r1, [r4, #20]
 8009080:	4299      	cmp	r1, r3
 8009082:	dcd5      	bgt.n	8009030 <__swbuf_r+0x34>
 8009084:	4621      	mov	r1, r4
 8009086:	4630      	mov	r0, r6
 8009088:	f7fe f86c 	bl	8007164 <_fflush_r>
 800908c:	b958      	cbnz	r0, 80090a6 <__swbuf_r+0xaa>
 800908e:	6822      	ldr	r2, [r4, #0]
 8009090:	2301      	movs	r3, #1
 8009092:	e7ce      	b.n	8009032 <__swbuf_r+0x36>
 8009094:	f7fe f8c2 	bl	800721c <__sinit>
 8009098:	e7b8      	b.n	800900c <__swbuf_r+0x10>
 800909a:	4621      	mov	r1, r4
 800909c:	4630      	mov	r0, r6
 800909e:	f7fe f861 	bl	8007164 <_fflush_r>
 80090a2:	2800      	cmp	r0, #0
 80090a4:	d0d3      	beq.n	800904e <__swbuf_r+0x52>
 80090a6:	f04f 37ff 	mov.w	r7, #4294967295
 80090aa:	e7d0      	b.n	800904e <__swbuf_r+0x52>

080090ac <_wcrtomb_r>:
 80090ac:	b5f0      	push	{r4, r5, r6, r7, lr}
 80090ae:	4c12      	ldr	r4, [pc, #72]	; (80090f8 <_wcrtomb_r+0x4c>)
 80090b0:	b085      	sub	sp, #20
 80090b2:	4606      	mov	r6, r0
 80090b4:	461f      	mov	r7, r3
 80090b6:	6824      	ldr	r4, [r4, #0]
 80090b8:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80090ba:	b151      	cbz	r1, 80090d2 <_wcrtomb_r+0x26>
 80090bc:	4d0f      	ldr	r5, [pc, #60]	; (80090fc <_wcrtomb_r+0x50>)
 80090be:	2c00      	cmp	r4, #0
 80090c0:	bf08      	it	eq
 80090c2:	462c      	moveq	r4, r5
 80090c4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80090c8:	47a0      	blx	r4
 80090ca:	1c43      	adds	r3, r0, #1
 80090cc:	d00d      	beq.n	80090ea <_wcrtomb_r+0x3e>
 80090ce:	b005      	add	sp, #20
 80090d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80090d2:	f8df c028 	ldr.w	ip, [pc, #40]	; 80090fc <_wcrtomb_r+0x50>
 80090d6:	460a      	mov	r2, r1
 80090d8:	a901      	add	r1, sp, #4
 80090da:	2c00      	cmp	r4, #0
 80090dc:	bf08      	it	eq
 80090de:	4664      	moveq	r4, ip
 80090e0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80090e4:	47a0      	blx	r4
 80090e6:	1c43      	adds	r3, r0, #1
 80090e8:	d1f1      	bne.n	80090ce <_wcrtomb_r+0x22>
 80090ea:	2200      	movs	r2, #0
 80090ec:	238a      	movs	r3, #138	; 0x8a
 80090ee:	603a      	str	r2, [r7, #0]
 80090f0:	6033      	str	r3, [r6, #0]
 80090f2:	b005      	add	sp, #20
 80090f4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80090f6:	bf00      	nop
 80090f8:	2000002c 	.word	0x2000002c
 80090fc:	2000086c 	.word	0x2000086c

08009100 <__ascii_wctomb>:
 8009100:	b119      	cbz	r1, 800910a <__ascii_wctomb+0xa>
 8009102:	2aff      	cmp	r2, #255	; 0xff
 8009104:	d803      	bhi.n	800910e <__ascii_wctomb+0xe>
 8009106:	700a      	strb	r2, [r1, #0]
 8009108:	2101      	movs	r1, #1
 800910a:	4608      	mov	r0, r1
 800910c:	4770      	bx	lr
 800910e:	238a      	movs	r3, #138	; 0x8a
 8009110:	f04f 31ff 	mov.w	r1, #4294967295
 8009114:	6003      	str	r3, [r0, #0]
 8009116:	e7f8      	b.n	800910a <__ascii_wctomb+0xa>

08009118 <_init>:
 8009118:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800911a:	bf00      	nop
 800911c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800911e:	bc08      	pop	{r3}
 8009120:	469e      	mov	lr, r3
 8009122:	4770      	bx	lr

08009124 <_fini>:
 8009124:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8009126:	bf00      	nop
 8009128:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800912a:	bc08      	pop	{r3}
 800912c:	469e      	mov	lr, r3
 800912e:	4770      	bx	lr
