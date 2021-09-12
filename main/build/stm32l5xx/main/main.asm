
/mnt/j/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/stm32l5xx/main/main.elf:     file format elf32-littlearm


Disassembly of section .text:

080001f8 <deregister_tm_clones>:
 80001f8:	4803      	ldr	r0, [pc, #12]	; (8000208 <deregister_tm_clones+0x10>)
 80001fa:	4b04      	ldr	r3, [pc, #16]	; (800020c <deregister_tm_clones+0x14>)
 80001fc:	4283      	cmp	r3, r0
 80001fe:	d002      	beq.n	8000206 <deregister_tm_clones+0xe>
 8000200:	4b03      	ldr	r3, [pc, #12]	; (8000210 <deregister_tm_clones+0x18>)
 8000202:	b103      	cbz	r3, 8000206 <deregister_tm_clones+0xe>
 8000204:	4718      	bx	r3
 8000206:	4770      	bx	lr
 8000208:	200009d8 	.word	0x200009d8
 800020c:	200009d8 	.word	0x200009d8
 8000210:	00000000 	.word	0x00000000

08000214 <register_tm_clones>:
 8000214:	4b06      	ldr	r3, [pc, #24]	; (8000230 <register_tm_clones+0x1c>)
 8000216:	4907      	ldr	r1, [pc, #28]	; (8000234 <register_tm_clones+0x20>)
 8000218:	1ac9      	subs	r1, r1, r3
 800021a:	1089      	asrs	r1, r1, #2
 800021c:	bf48      	it	mi
 800021e:	3101      	addmi	r1, #1
 8000220:	1049      	asrs	r1, r1, #1
 8000222:	d003      	beq.n	800022c <register_tm_clones+0x18>
 8000224:	4b04      	ldr	r3, [pc, #16]	; (8000238 <register_tm_clones+0x24>)
 8000226:	b10b      	cbz	r3, 800022c <register_tm_clones+0x18>
 8000228:	4801      	ldr	r0, [pc, #4]	; (8000230 <register_tm_clones+0x1c>)
 800022a:	4718      	bx	r3
 800022c:	4770      	bx	lr
 800022e:	bf00      	nop
 8000230:	200009d8 	.word	0x200009d8
 8000234:	200009d8 	.word	0x200009d8
 8000238:	00000000 	.word	0x00000000

0800023c <__do_global_dtors_aux>:
 800023c:	b510      	push	{r4, lr}
 800023e:	4c06      	ldr	r4, [pc, #24]	; (8000258 <__do_global_dtors_aux+0x1c>)
 8000240:	7823      	ldrb	r3, [r4, #0]
 8000242:	b943      	cbnz	r3, 8000256 <__do_global_dtors_aux+0x1a>
 8000244:	f7ff ffd8 	bl	80001f8 <deregister_tm_clones>
 8000248:	4b04      	ldr	r3, [pc, #16]	; (800025c <__do_global_dtors_aux+0x20>)
 800024a:	b113      	cbz	r3, 8000252 <__do_global_dtors_aux+0x16>
 800024c:	4804      	ldr	r0, [pc, #16]	; (8000260 <__do_global_dtors_aux+0x24>)
 800024e:	e000      	b.n	8000252 <__do_global_dtors_aux+0x16>
 8000250:	bf00      	nop
 8000252:	2301      	movs	r3, #1
 8000254:	7023      	strb	r3, [r4, #0]
 8000256:	bd10      	pop	{r4, pc}
 8000258:	20000a34 	.word	0x20000a34
 800025c:	00000000 	.word	0x00000000
 8000260:	0800a9fc 	.word	0x0800a9fc

08000264 <frame_dummy>:
 8000264:	b508      	push	{r3, lr}
 8000266:	4b04      	ldr	r3, [pc, #16]	; (8000278 <frame_dummy+0x14>)
 8000268:	b11b      	cbz	r3, 8000272 <frame_dummy+0xe>
 800026a:	4904      	ldr	r1, [pc, #16]	; (800027c <frame_dummy+0x18>)
 800026c:	4804      	ldr	r0, [pc, #16]	; (8000280 <frame_dummy+0x1c>)
 800026e:	e000      	b.n	8000272 <frame_dummy+0xe>
 8000270:	bf00      	nop
 8000272:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000276:	e7cd      	b.n	8000214 <register_tm_clones>
 8000278:	00000000 	.word	0x00000000
 800027c:	20000a38 	.word	0x20000a38
 8000280:	0800a9fc 	.word	0x0800a9fc

08000284 <__aeabi_uldivmod>:
 8000284:	b953      	cbnz	r3, 800029c <__aeabi_uldivmod+0x18>
 8000286:	b94a      	cbnz	r2, 800029c <__aeabi_uldivmod+0x18>
 8000288:	2900      	cmp	r1, #0
 800028a:	bf08      	it	eq
 800028c:	2800      	cmpeq	r0, #0
 800028e:	bf1c      	itt	ne
 8000290:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000294:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000298:	f000 b970 	b.w	800057c <__aeabi_idiv0>
 800029c:	f1ad 0c08 	sub.w	ip, sp, #8
 80002a0:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 80002a4:	f000 f806 	bl	80002b4 <__udivmoddi4>
 80002a8:	f8dd e004 	ldr.w	lr, [sp, #4]
 80002ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80002b0:	b004      	add	sp, #16
 80002b2:	4770      	bx	lr

080002b4 <__udivmoddi4>:
 80002b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80002b8:	9e08      	ldr	r6, [sp, #32]
 80002ba:	460d      	mov	r5, r1
 80002bc:	4604      	mov	r4, r0
 80002be:	468a      	mov	sl, r1
 80002c0:	2b00      	cmp	r3, #0
 80002c2:	d17f      	bne.n	80003c4 <__udivmoddi4+0x110>
 80002c4:	428a      	cmp	r2, r1
 80002c6:	4617      	mov	r7, r2
 80002c8:	d941      	bls.n	800034e <__udivmoddi4+0x9a>
 80002ca:	fab2 f282 	clz	r2, r2
 80002ce:	b14a      	cbz	r2, 80002e4 <__udivmoddi4+0x30>
 80002d0:	f1c2 0120 	rsb	r1, r2, #32
 80002d4:	fa05 f302 	lsl.w	r3, r5, r2
 80002d8:	4097      	lsls	r7, r2
 80002da:	4094      	lsls	r4, r2
 80002dc:	fa20 f101 	lsr.w	r1, r0, r1
 80002e0:	ea41 0a03 	orr.w	sl, r1, r3
 80002e4:	ea4f 4817 	mov.w	r8, r7, lsr #16
 80002e8:	ea4f 4c14 	mov.w	ip, r4, lsr #16
 80002ec:	fa1f f987 	uxth.w	r9, r7
 80002f0:	fbba fef8 	udiv	lr, sl, r8
 80002f4:	fb08 a31e 	mls	r3, r8, lr, sl
 80002f8:	fb0e f109 	mul.w	r1, lr, r9
 80002fc:	ea4c 4303 	orr.w	r3, ip, r3, lsl #16
 8000300:	4299      	cmp	r1, r3
 8000302:	d906      	bls.n	8000312 <__udivmoddi4+0x5e>
 8000304:	18fb      	adds	r3, r7, r3
 8000306:	d202      	bcs.n	800030e <__udivmoddi4+0x5a>
 8000308:	4299      	cmp	r1, r3
 800030a:	f200 8124 	bhi.w	8000556 <__udivmoddi4+0x2a2>
 800030e:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
 8000312:	1a59      	subs	r1, r3, r1
 8000314:	b2a3      	uxth	r3, r4
 8000316:	fbb1 f0f8 	udiv	r0, r1, r8
 800031a:	fb08 1110 	mls	r1, r8, r0, r1
 800031e:	fb00 f909 	mul.w	r9, r0, r9
 8000322:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
 8000326:	45a1      	cmp	r9, r4
 8000328:	d905      	bls.n	8000336 <__udivmoddi4+0x82>
 800032a:	193c      	adds	r4, r7, r4
 800032c:	d202      	bcs.n	8000334 <__udivmoddi4+0x80>
 800032e:	45a1      	cmp	r9, r4
 8000330:	f200 810e 	bhi.w	8000550 <__udivmoddi4+0x29c>
 8000334:	3801      	subs	r0, #1
 8000336:	eba4 0409 	sub.w	r4, r4, r9
 800033a:	ea40 400e 	orr.w	r0, r0, lr, lsl #16
 800033e:	2100      	movs	r1, #0
 8000340:	b11e      	cbz	r6, 800034a <__udivmoddi4+0x96>
 8000342:	40d4      	lsrs	r4, r2
 8000344:	2300      	movs	r3, #0
 8000346:	e9c6 4300 	strd	r4, r3, [r6]
 800034a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800034e:	b902      	cbnz	r2, 8000352 <__udivmoddi4+0x9e>
 8000350:	deff      	udf	#255	; 0xff
 8000352:	fab2 f282 	clz	r2, r2
 8000356:	2a00      	cmp	r2, #0
 8000358:	d14f      	bne.n	80003fa <__udivmoddi4+0x146>
 800035a:	1bcb      	subs	r3, r1, r7
 800035c:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000360:	fa1f f887 	uxth.w	r8, r7
 8000364:	2101      	movs	r1, #1
 8000366:	0c25      	lsrs	r5, r4, #16
 8000368:	fbb3 fcfe 	udiv	ip, r3, lr
 800036c:	fb0e 301c 	mls	r0, lr, ip, r3
 8000370:	462b      	mov	r3, r5
 8000372:	fb08 f90c 	mul.w	r9, r8, ip
 8000376:	ea45 4500 	orr.w	r5, r5, r0, lsl #16
 800037a:	45a9      	cmp	r9, r5
 800037c:	d90a      	bls.n	8000394 <__udivmoddi4+0xe0>
 800037e:	197d      	adds	r5, r7, r5
 8000380:	bf2c      	ite	cs
 8000382:	2301      	movcs	r3, #1
 8000384:	2300      	movcc	r3, #0
 8000386:	45a9      	cmp	r9, r5
 8000388:	d902      	bls.n	8000390 <__udivmoddi4+0xdc>
 800038a:	2b00      	cmp	r3, #0
 800038c:	f000 80d9 	beq.w	8000542 <__udivmoddi4+0x28e>
 8000390:	f10c 3cff 	add.w	ip, ip, #4294967295	; 0xffffffff
 8000394:	eba5 0509 	sub.w	r5, r5, r9
 8000398:	b2a3      	uxth	r3, r4
 800039a:	fbb5 f0fe 	udiv	r0, r5, lr
 800039e:	fb0e 5510 	mls	r5, lr, r0, r5
 80003a2:	fb08 f800 	mul.w	r8, r8, r0
 80003a6:	ea43 4405 	orr.w	r4, r3, r5, lsl #16
 80003aa:	45a0      	cmp	r8, r4
 80003ac:	d905      	bls.n	80003ba <__udivmoddi4+0x106>
 80003ae:	193c      	adds	r4, r7, r4
 80003b0:	d202      	bcs.n	80003b8 <__udivmoddi4+0x104>
 80003b2:	45a0      	cmp	r8, r4
 80003b4:	f200 80c9 	bhi.w	800054a <__udivmoddi4+0x296>
 80003b8:	3801      	subs	r0, #1
 80003ba:	eba4 0408 	sub.w	r4, r4, r8
 80003be:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 80003c2:	e7bd      	b.n	8000340 <__udivmoddi4+0x8c>
 80003c4:	428b      	cmp	r3, r1
 80003c6:	d908      	bls.n	80003da <__udivmoddi4+0x126>
 80003c8:	2e00      	cmp	r6, #0
 80003ca:	f000 80b1 	beq.w	8000530 <__udivmoddi4+0x27c>
 80003ce:	2100      	movs	r1, #0
 80003d0:	e9c6 0500 	strd	r0, r5, [r6]
 80003d4:	4608      	mov	r0, r1
 80003d6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80003da:	fab3 f183 	clz	r1, r3
 80003de:	2900      	cmp	r1, #0
 80003e0:	d146      	bne.n	8000470 <__udivmoddi4+0x1bc>
 80003e2:	42ab      	cmp	r3, r5
 80003e4:	f0c0 80a7 	bcc.w	8000536 <__udivmoddi4+0x282>
 80003e8:	4282      	cmp	r2, r0
 80003ea:	f240 80a4 	bls.w	8000536 <__udivmoddi4+0x282>
 80003ee:	4608      	mov	r0, r1
 80003f0:	2e00      	cmp	r6, #0
 80003f2:	d0aa      	beq.n	800034a <__udivmoddi4+0x96>
 80003f4:	e9c6 4a00 	strd	r4, sl, [r6]
 80003f8:	e7a7      	b.n	800034a <__udivmoddi4+0x96>
 80003fa:	f1c2 0020 	rsb	r0, r2, #32
 80003fe:	4097      	lsls	r7, r2
 8000400:	fa01 f302 	lsl.w	r3, r1, r2
 8000404:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 8000408:	40c1      	lsrs	r1, r0
 800040a:	fa24 f500 	lsr.w	r5, r4, r0
 800040e:	fa1f f887 	uxth.w	r8, r7
 8000412:	4094      	lsls	r4, r2
 8000414:	431d      	orrs	r5, r3
 8000416:	fbb1 f0fe 	udiv	r0, r1, lr
 800041a:	0c2b      	lsrs	r3, r5, #16
 800041c:	fb0e 1110 	mls	r1, lr, r0, r1
 8000420:	fb00 fc08 	mul.w	ip, r0, r8
 8000424:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000428:	459c      	cmp	ip, r3
 800042a:	d909      	bls.n	8000440 <__udivmoddi4+0x18c>
 800042c:	18fb      	adds	r3, r7, r3
 800042e:	bf2c      	ite	cs
 8000430:	2101      	movcs	r1, #1
 8000432:	2100      	movcc	r1, #0
 8000434:	459c      	cmp	ip, r3
 8000436:	d902      	bls.n	800043e <__udivmoddi4+0x18a>
 8000438:	2900      	cmp	r1, #0
 800043a:	f000 8095 	beq.w	8000568 <__udivmoddi4+0x2b4>
 800043e:	3801      	subs	r0, #1
 8000440:	eba3 030c 	sub.w	r3, r3, ip
 8000444:	b2ad      	uxth	r5, r5
 8000446:	fbb3 f1fe 	udiv	r1, r3, lr
 800044a:	fb0e 3311 	mls	r3, lr, r1, r3
 800044e:	fb01 fc08 	mul.w	ip, r1, r8
 8000452:	ea45 4503 	orr.w	r5, r5, r3, lsl #16
 8000456:	45ac      	cmp	ip, r5
 8000458:	d905      	bls.n	8000466 <__udivmoddi4+0x1b2>
 800045a:	197d      	adds	r5, r7, r5
 800045c:	d202      	bcs.n	8000464 <__udivmoddi4+0x1b0>
 800045e:	45ac      	cmp	ip, r5
 8000460:	f200 8089 	bhi.w	8000576 <__udivmoddi4+0x2c2>
 8000464:	3901      	subs	r1, #1
 8000466:	eba5 030c 	sub.w	r3, r5, ip
 800046a:	ea41 4100 	orr.w	r1, r1, r0, lsl #16
 800046e:	e77a      	b.n	8000366 <__udivmoddi4+0xb2>
 8000470:	f1c1 0420 	rsb	r4, r1, #32
 8000474:	408b      	lsls	r3, r1
 8000476:	fa02 f701 	lsl.w	r7, r2, r1
 800047a:	fa05 fc01 	lsl.w	ip, r5, r1
 800047e:	40e2      	lsrs	r2, r4
 8000480:	fa20 f804 	lsr.w	r8, r0, r4
 8000484:	40e5      	lsrs	r5, r4
 8000486:	fa00 fe01 	lsl.w	lr, r0, r1
 800048a:	4313      	orrs	r3, r2
 800048c:	ea48 020c 	orr.w	r2, r8, ip
 8000490:	ea4f 4813 	mov.w	r8, r3, lsr #16
 8000494:	ea4f 4c12 	mov.w	ip, r2, lsr #16
 8000498:	fa1f f983 	uxth.w	r9, r3
 800049c:	fbb5 faf8 	udiv	sl, r5, r8
 80004a0:	fb08 551a 	mls	r5, r8, sl, r5
 80004a4:	fb0a f009 	mul.w	r0, sl, r9
 80004a8:	ea4c 4c05 	orr.w	ip, ip, r5, lsl #16
 80004ac:	4560      	cmp	r0, ip
 80004ae:	d90a      	bls.n	80004c6 <__udivmoddi4+0x212>
 80004b0:	eb13 0c0c 	adds.w	ip, r3, ip
 80004b4:	bf2c      	ite	cs
 80004b6:	2501      	movcs	r5, #1
 80004b8:	2500      	movcc	r5, #0
 80004ba:	4560      	cmp	r0, ip
 80004bc:	d901      	bls.n	80004c2 <__udivmoddi4+0x20e>
 80004be:	2d00      	cmp	r5, #0
 80004c0:	d055      	beq.n	800056e <__udivmoddi4+0x2ba>
 80004c2:	f10a 3aff 	add.w	sl, sl, #4294967295	; 0xffffffff
 80004c6:	ebac 0c00 	sub.w	ip, ip, r0
 80004ca:	b292      	uxth	r2, r2
 80004cc:	fbbc f0f8 	udiv	r0, ip, r8
 80004d0:	fb08 cc10 	mls	ip, r8, r0, ip
 80004d4:	fb00 f909 	mul.w	r9, r0, r9
 80004d8:	ea42 4c0c 	orr.w	ip, r2, ip, lsl #16
 80004dc:	45e1      	cmp	r9, ip
 80004de:	d905      	bls.n	80004ec <__udivmoddi4+0x238>
 80004e0:	eb13 0c0c 	adds.w	ip, r3, ip
 80004e4:	d201      	bcs.n	80004ea <__udivmoddi4+0x236>
 80004e6:	45e1      	cmp	r9, ip
 80004e8:	d83b      	bhi.n	8000562 <__udivmoddi4+0x2ae>
 80004ea:	3801      	subs	r0, #1
 80004ec:	ea40 400a 	orr.w	r0, r0, sl, lsl #16
 80004f0:	ebac 0c09 	sub.w	ip, ip, r9
 80004f4:	fba0 8907 	umull	r8, r9, r0, r7
 80004f8:	45cc      	cmp	ip, r9
 80004fa:	4645      	mov	r5, r8
 80004fc:	464a      	mov	r2, r9
 80004fe:	d302      	bcc.n	8000506 <__udivmoddi4+0x252>
 8000500:	d106      	bne.n	8000510 <__udivmoddi4+0x25c>
 8000502:	45c6      	cmp	lr, r8
 8000504:	d204      	bcs.n	8000510 <__udivmoddi4+0x25c>
 8000506:	3801      	subs	r0, #1
 8000508:	ebb8 0507 	subs.w	r5, r8, r7
 800050c:	eb69 0203 	sbc.w	r2, r9, r3
 8000510:	b32e      	cbz	r6, 800055e <__udivmoddi4+0x2aa>
 8000512:	ebbe 0305 	subs.w	r3, lr, r5
 8000516:	eb6c 0c02 	sbc.w	ip, ip, r2
 800051a:	fa23 f201 	lsr.w	r2, r3, r1
 800051e:	fa0c f404 	lsl.w	r4, ip, r4
 8000522:	fa2c f301 	lsr.w	r3, ip, r1
 8000526:	2100      	movs	r1, #0
 8000528:	4314      	orrs	r4, r2
 800052a:	e9c6 4300 	strd	r4, r3, [r6]
 800052e:	e70c      	b.n	800034a <__udivmoddi4+0x96>
 8000530:	4631      	mov	r1, r6
 8000532:	4630      	mov	r0, r6
 8000534:	e709      	b.n	800034a <__udivmoddi4+0x96>
 8000536:	1a84      	subs	r4, r0, r2
 8000538:	eb65 0303 	sbc.w	r3, r5, r3
 800053c:	2001      	movs	r0, #1
 800053e:	469a      	mov	sl, r3
 8000540:	e756      	b.n	80003f0 <__udivmoddi4+0x13c>
 8000542:	f1ac 0c02 	sub.w	ip, ip, #2
 8000546:	443d      	add	r5, r7
 8000548:	e724      	b.n	8000394 <__udivmoddi4+0xe0>
 800054a:	3802      	subs	r0, #2
 800054c:	443c      	add	r4, r7
 800054e:	e734      	b.n	80003ba <__udivmoddi4+0x106>
 8000550:	3802      	subs	r0, #2
 8000552:	443c      	add	r4, r7
 8000554:	e6ef      	b.n	8000336 <__udivmoddi4+0x82>
 8000556:	f1ae 0e02 	sub.w	lr, lr, #2
 800055a:	443b      	add	r3, r7
 800055c:	e6d9      	b.n	8000312 <__udivmoddi4+0x5e>
 800055e:	4631      	mov	r1, r6
 8000560:	e6f3      	b.n	800034a <__udivmoddi4+0x96>
 8000562:	3802      	subs	r0, #2
 8000564:	449c      	add	ip, r3
 8000566:	e7c1      	b.n	80004ec <__udivmoddi4+0x238>
 8000568:	3802      	subs	r0, #2
 800056a:	443b      	add	r3, r7
 800056c:	e768      	b.n	8000440 <__udivmoddi4+0x18c>
 800056e:	f1aa 0a02 	sub.w	sl, sl, #2
 8000572:	449c      	add	ip, r3
 8000574:	e7a7      	b.n	80004c6 <__udivmoddi4+0x212>
 8000576:	3902      	subs	r1, #2
 8000578:	443d      	add	r5, r7
 800057a:	e774      	b.n	8000466 <__udivmoddi4+0x1b2>

0800057c <__aeabi_idiv0>:
 800057c:	4770      	bx	lr
 800057e:	bf00      	nop

08000580 <atexit>:
 8000580:	2300      	movs	r3, #0
 8000582:	4601      	mov	r1, r0
 8000584:	461a      	mov	r2, r3
 8000586:	4618      	mov	r0, r3
 8000588:	f001 bd16 	b.w	8001fb8 <__register_exitproc>

0800058c <__errno>:
 800058c:	4b01      	ldr	r3, [pc, #4]	; (8000594 <__errno+0x8>)
 800058e:	6818      	ldr	r0, [r3, #0]
 8000590:	4770      	bx	lr
 8000592:	bf00      	nop
 8000594:	20000000 	.word	0x20000000

08000598 <__libc_fini_array>:
 8000598:	b538      	push	{r3, r4, r5, lr}
 800059a:	4c0a      	ldr	r4, [pc, #40]	; (80005c4 <__libc_fini_array+0x2c>)
 800059c:	4d0a      	ldr	r5, [pc, #40]	; (80005c8 <__libc_fini_array+0x30>)
 800059e:	1b64      	subs	r4, r4, r5
 80005a0:	10a4      	asrs	r4, r4, #2
 80005a2:	d00a      	beq.n	80005ba <__libc_fini_array+0x22>
 80005a4:	f06f 4340 	mvn.w	r3, #3221225472	; 0xc0000000
 80005a8:	4423      	add	r3, r4
 80005aa:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80005ae:	3c01      	subs	r4, #1
 80005b0:	f855 3904 	ldr.w	r3, [r5], #-4
 80005b4:	4798      	blx	r3
 80005b6:	2c00      	cmp	r4, #0
 80005b8:	d1f9      	bne.n	80005ae <__libc_fini_array+0x16>
 80005ba:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80005be:	f00a ba23 	b.w	800aa08 <_fini>
 80005c2:	bf00      	nop
 80005c4:	0800aebc 	.word	0x0800aebc
 80005c8:	0800aeb8 	.word	0x0800aeb8

080005cc <__libc_init_array>:
 80005cc:	b570      	push	{r4, r5, r6, lr}
 80005ce:	4e0d      	ldr	r6, [pc, #52]	; (8000604 <__libc_init_array+0x38>)
 80005d0:	4d0d      	ldr	r5, [pc, #52]	; (8000608 <__libc_init_array+0x3c>)
 80005d2:	1b76      	subs	r6, r6, r5
 80005d4:	10b6      	asrs	r6, r6, #2
 80005d6:	d006      	beq.n	80005e6 <__libc_init_array+0x1a>
 80005d8:	2400      	movs	r4, #0
 80005da:	3401      	adds	r4, #1
 80005dc:	f855 3b04 	ldr.w	r3, [r5], #4
 80005e0:	4798      	blx	r3
 80005e2:	42a6      	cmp	r6, r4
 80005e4:	d1f9      	bne.n	80005da <__libc_init_array+0xe>
 80005e6:	4e09      	ldr	r6, [pc, #36]	; (800060c <__libc_init_array+0x40>)
 80005e8:	f00a fa08 	bl	800a9fc <_init>
 80005ec:	4d08      	ldr	r5, [pc, #32]	; (8000610 <__libc_init_array+0x44>)
 80005ee:	1b76      	subs	r6, r6, r5
 80005f0:	10b6      	asrs	r6, r6, #2
 80005f2:	d006      	beq.n	8000602 <__libc_init_array+0x36>
 80005f4:	2400      	movs	r4, #0
 80005f6:	3401      	adds	r4, #1
 80005f8:	f855 3b04 	ldr.w	r3, [r5], #4
 80005fc:	4798      	blx	r3
 80005fe:	42a6      	cmp	r6, r4
 8000600:	d1f9      	bne.n	80005f6 <__libc_init_array+0x2a>
 8000602:	bd70      	pop	{r4, r5, r6, pc}
 8000604:	0800aeb0 	.word	0x0800aeb0
 8000608:	0800aeb0 	.word	0x0800aeb0
 800060c:	0800aeb8 	.word	0x0800aeb8
 8000610:	0800aeb0 	.word	0x0800aeb0

08000614 <memset>:
 8000614:	b4f0      	push	{r4, r5, r6, r7}
 8000616:	0786      	lsls	r6, r0, #30
 8000618:	d046      	beq.n	80006a8 <memset+0x94>
 800061a:	1e54      	subs	r4, r2, #1
 800061c:	2a00      	cmp	r2, #0
 800061e:	d03c      	beq.n	800069a <memset+0x86>
 8000620:	b2ca      	uxtb	r2, r1
 8000622:	4603      	mov	r3, r0
 8000624:	e002      	b.n	800062c <memset+0x18>
 8000626:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800062a:	d336      	bcc.n	800069a <memset+0x86>
 800062c:	f803 2b01 	strb.w	r2, [r3], #1
 8000630:	079d      	lsls	r5, r3, #30
 8000632:	d1f8      	bne.n	8000626 <memset+0x12>
 8000634:	2c03      	cmp	r4, #3
 8000636:	d929      	bls.n	800068c <memset+0x78>
 8000638:	b2cd      	uxtb	r5, r1
 800063a:	2c0f      	cmp	r4, #15
 800063c:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8000640:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8000644:	d933      	bls.n	80006ae <memset+0x9a>
 8000646:	f1a4 0610 	sub.w	r6, r4, #16
 800064a:	f103 0720 	add.w	r7, r3, #32
 800064e:	f103 0210 	add.w	r2, r3, #16
 8000652:	0936      	lsrs	r6, r6, #4
 8000654:	eb07 1706 	add.w	r7, r7, r6, lsl #4
 8000658:	e942 5504 	strd	r5, r5, [r2, #-16]
 800065c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8000660:	3210      	adds	r2, #16
 8000662:	42ba      	cmp	r2, r7
 8000664:	d1f8      	bne.n	8000658 <memset+0x44>
 8000666:	1c72      	adds	r2, r6, #1
 8000668:	f014 0f0c 	tst.w	r4, #12
 800066c:	f004 060f 	and.w	r6, r4, #15
 8000670:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 8000674:	d013      	beq.n	800069e <memset+0x8a>
 8000676:	1f33      	subs	r3, r6, #4
 8000678:	f023 0303 	bic.w	r3, r3, #3
 800067c:	3304      	adds	r3, #4
 800067e:	4413      	add	r3, r2
 8000680:	f842 5b04 	str.w	r5, [r2], #4
 8000684:	4293      	cmp	r3, r2
 8000686:	d1fb      	bne.n	8000680 <memset+0x6c>
 8000688:	f006 0403 	and.w	r4, r6, #3
 800068c:	b12c      	cbz	r4, 800069a <memset+0x86>
 800068e:	b2c9      	uxtb	r1, r1
 8000690:	441c      	add	r4, r3
 8000692:	f803 1b01 	strb.w	r1, [r3], #1
 8000696:	429c      	cmp	r4, r3
 8000698:	d1fb      	bne.n	8000692 <memset+0x7e>
 800069a:	bcf0      	pop	{r4, r5, r6, r7}
 800069c:	4770      	bx	lr
 800069e:	4634      	mov	r4, r6
 80006a0:	4613      	mov	r3, r2
 80006a2:	2c00      	cmp	r4, #0
 80006a4:	d1f3      	bne.n	800068e <memset+0x7a>
 80006a6:	e7f8      	b.n	800069a <memset+0x86>
 80006a8:	4614      	mov	r4, r2
 80006aa:	4603      	mov	r3, r0
 80006ac:	e7c2      	b.n	8000634 <memset+0x20>
 80006ae:	461a      	mov	r2, r3
 80006b0:	4626      	mov	r6, r4
 80006b2:	e7e0      	b.n	8000676 <memset+0x62>

080006b4 <_printf_r>:
 80006b4:	b40e      	push	{r1, r2, r3}
 80006b6:	b510      	push	{r4, lr}
 80006b8:	b083      	sub	sp, #12
 80006ba:	6881      	ldr	r1, [r0, #8]
 80006bc:	ac05      	add	r4, sp, #20
 80006be:	f854 2b04 	ldr.w	r2, [r4], #4
 80006c2:	4623      	mov	r3, r4
 80006c4:	9401      	str	r4, [sp, #4]
 80006c6:	f000 f8f7 	bl	80008b8 <_vfprintf_r>
 80006ca:	b003      	add	sp, #12
 80006cc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006d0:	b003      	add	sp, #12
 80006d2:	4770      	bx	lr

080006d4 <printf>:
 80006d4:	b40f      	push	{r0, r1, r2, r3}
 80006d6:	b510      	push	{r4, lr}
 80006d8:	b082      	sub	sp, #8
 80006da:	4b07      	ldr	r3, [pc, #28]	; (80006f8 <printf+0x24>)
 80006dc:	ac04      	add	r4, sp, #16
 80006de:	6818      	ldr	r0, [r3, #0]
 80006e0:	f854 2b04 	ldr.w	r2, [r4], #4
 80006e4:	6881      	ldr	r1, [r0, #8]
 80006e6:	4623      	mov	r3, r4
 80006e8:	9401      	str	r4, [sp, #4]
 80006ea:	f000 f8e5 	bl	80008b8 <_vfprintf_r>
 80006ee:	b002      	add	sp, #8
 80006f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80006f4:	b004      	add	sp, #16
 80006f6:	4770      	bx	lr
 80006f8:	20000000 	.word	0x20000000

080006fc <strcmp>:
 80006fc:	ea80 0c01 	eor.w	ip, r0, r1
 8000700:	f01c 0f03 	tst.w	ip, #3
 8000704:	d137      	bne.n	8000776 <strcmp+0x7a>
 8000706:	f010 0c03 	ands.w	ip, r0, #3
 800070a:	f020 0003 	bic.w	r0, r0, #3
 800070e:	f021 0103 	bic.w	r1, r1, #3
 8000712:	f850 2b04 	ldr.w	r2, [r0], #4
 8000716:	bf08      	it	eq
 8000718:	f851 3b04 	ldreq.w	r3, [r1], #4
 800071c:	d00e      	beq.n	800073c <strcmp+0x40>
 800071e:	f08c 0c03 	eor.w	ip, ip, #3
 8000722:	f06f 437f 	mvn.w	r3, #4278190080	; 0xff000000
 8000726:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
 800072a:	fa23 fc0c 	lsr.w	ip, r3, ip
 800072e:	f851 3b04 	ldr.w	r3, [r1], #4
 8000732:	ea42 020c 	orr.w	r2, r2, ip
 8000736:	ea43 030c 	orr.w	r3, r3, ip
 800073a:	bf00      	nop
 800073c:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
 8000740:	429a      	cmp	r2, r3
 8000742:	bf01      	itttt	eq
 8000744:	ea2c 0c02 	biceq.w	ip, ip, r2
 8000748:	f01c 3f80 	tsteq.w	ip, #2155905152	; 0x80808080
 800074c:	f850 2b04 	ldreq.w	r2, [r0], #4
 8000750:	f851 3b04 	ldreq.w	r3, [r1], #4
 8000754:	d0f2      	beq.n	800073c <strcmp+0x40>
 8000756:	ea4f 6002 	mov.w	r0, r2, lsl #24
 800075a:	ea4f 2212 	mov.w	r2, r2, lsr #8
 800075e:	2801      	cmp	r0, #1
 8000760:	bf28      	it	cs
 8000762:	ebb0 6f03 	cmpcs.w	r0, r3, lsl #24
 8000766:	bf08      	it	eq
 8000768:	0a1b      	lsreq	r3, r3, #8
 800076a:	d0f4      	beq.n	8000756 <strcmp+0x5a>
 800076c:	f003 03ff 	and.w	r3, r3, #255	; 0xff
 8000770:	0e00      	lsrs	r0, r0, #24
 8000772:	1ac0      	subs	r0, r0, r3
 8000774:	4770      	bx	lr
 8000776:	f010 0f03 	tst.w	r0, #3
 800077a:	d00a      	beq.n	8000792 <strcmp+0x96>
 800077c:	f810 2b01 	ldrb.w	r2, [r0], #1
 8000780:	f811 3b01 	ldrb.w	r3, [r1], #1
 8000784:	2a01      	cmp	r2, #1
 8000786:	bf28      	it	cs
 8000788:	429a      	cmpcs	r2, r3
 800078a:	d0f4      	beq.n	8000776 <strcmp+0x7a>
 800078c:	eba2 0003 	sub.w	r0, r2, r3
 8000790:	4770      	bx	lr
 8000792:	f84d 5d04 	str.w	r5, [sp, #-4]!
 8000796:	f850 2b04 	ldr.w	r2, [r0], #4
 800079a:	f001 0503 	and.w	r5, r1, #3
 800079e:	f021 0103 	bic.w	r1, r1, #3
 80007a2:	f851 3b04 	ldr.w	r3, [r1], #4
 80007a6:	2d02      	cmp	r5, #2
 80007a8:	d026      	beq.n	80007f8 <strcmp+0xfc>
 80007aa:	d84d      	bhi.n	8000848 <strcmp+0x14c>
 80007ac:	f022 457f 	bic.w	r5, r2, #4278190080	; 0xff000000
 80007b0:	ebb5 2f13 	cmp.w	r5, r3, lsr #8
 80007b4:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
 80007b8:	ea2c 0c02 	bic.w	ip, ip, r2
 80007bc:	d10d      	bne.n	80007da <strcmp+0xde>
 80007be:	f01c 3c80 	ands.w	ip, ip, #2155905152	; 0x80808080
 80007c2:	bf08      	it	eq
 80007c4:	f851 3b04 	ldreq.w	r3, [r1], #4
 80007c8:	d10a      	bne.n	80007e0 <strcmp+0xe4>
 80007ca:	ea85 0502 	eor.w	r5, r5, r2
 80007ce:	ebb5 6f03 	cmp.w	r5, r3, lsl #24
 80007d2:	d10c      	bne.n	80007ee <strcmp+0xf2>
 80007d4:	f850 2b04 	ldr.w	r2, [r0], #4
 80007d8:	e7e8      	b.n	80007ac <strcmp+0xb0>
 80007da:	ea4f 2313 	mov.w	r3, r3, lsr #8
 80007de:	e05b      	b.n	8000898 <strcmp+0x19c>
 80007e0:	f03c 4c7f 	bics.w	ip, ip, #4278190080	; 0xff000000
 80007e4:	d154      	bne.n	8000890 <strcmp+0x194>
 80007e6:	780b      	ldrb	r3, [r1, #0]
 80007e8:	ea4f 6512 	mov.w	r5, r2, lsr #24
 80007ec:	e054      	b.n	8000898 <strcmp+0x19c>
 80007ee:	ea4f 6512 	mov.w	r5, r2, lsr #24
 80007f2:	f003 03ff 	and.w	r3, r3, #255	; 0xff
 80007f6:	e04f      	b.n	8000898 <strcmp+0x19c>
 80007f8:	ea4f 4502 	mov.w	r5, r2, lsl #16
 80007fc:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
 8000800:	ea4f 4515 	mov.w	r5, r5, lsr #16
 8000804:	ea2c 0c02 	bic.w	ip, ip, r2
 8000808:	ebb5 4f13 	cmp.w	r5, r3, lsr #16
 800080c:	d118      	bne.n	8000840 <strcmp+0x144>
 800080e:	f01c 3c80 	ands.w	ip, ip, #2155905152	; 0x80808080
 8000812:	bf08      	it	eq
 8000814:	f851 3b04 	ldreq.w	r3, [r1], #4
 8000818:	d107      	bne.n	800082a <strcmp+0x12e>
 800081a:	ea85 0502 	eor.w	r5, r5, r2
 800081e:	ebb5 4f03 	cmp.w	r5, r3, lsl #16
 8000822:	d109      	bne.n	8000838 <strcmp+0x13c>
 8000824:	f850 2b04 	ldr.w	r2, [r0], #4
 8000828:	e7e6      	b.n	80007f8 <strcmp+0xfc>
 800082a:	ea5f 4c0c 	movs.w	ip, ip, lsl #16
 800082e:	d12f      	bne.n	8000890 <strcmp+0x194>
 8000830:	880b      	ldrh	r3, [r1, #0]
 8000832:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8000836:	e02f      	b.n	8000898 <strcmp+0x19c>
 8000838:	ea4f 4303 	mov.w	r3, r3, lsl #16
 800083c:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8000840:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8000844:	e028      	b.n	8000898 <strcmp+0x19c>
 8000846:	bf00      	nop
 8000848:	f002 05ff 	and.w	r5, r2, #255	; 0xff
 800084c:	ebb5 6f13 	cmp.w	r5, r3, lsr #24
 8000850:	f1a2 3c01 	sub.w	ip, r2, #16843009	; 0x1010101
 8000854:	ea2c 0c02 	bic.w	ip, ip, r2
 8000858:	d10d      	bne.n	8000876 <strcmp+0x17a>
 800085a:	f01c 3c80 	ands.w	ip, ip, #2155905152	; 0x80808080
 800085e:	bf08      	it	eq
 8000860:	f851 3b04 	ldreq.w	r3, [r1], #4
 8000864:	d10a      	bne.n	800087c <strcmp+0x180>
 8000866:	ea85 0502 	eor.w	r5, r5, r2
 800086a:	ebb5 2f03 	cmp.w	r5, r3, lsl #8
 800086e:	d10a      	bne.n	8000886 <strcmp+0x18a>
 8000870:	f850 2b04 	ldr.w	r2, [r0], #4
 8000874:	e7e8      	b.n	8000848 <strcmp+0x14c>
 8000876:	ea4f 6313 	mov.w	r3, r3, lsr #24
 800087a:	e00d      	b.n	8000898 <strcmp+0x19c>
 800087c:	f012 0fff 	tst.w	r2, #255	; 0xff
 8000880:	d006      	beq.n	8000890 <strcmp+0x194>
 8000882:	f851 3b04 	ldr.w	r3, [r1], #4
 8000886:	ea4f 2512 	mov.w	r5, r2, lsr #8
 800088a:	f023 437f 	bic.w	r3, r3, #4278190080	; 0xff000000
 800088e:	e003      	b.n	8000898 <strcmp+0x19c>
 8000890:	f04f 0000 	mov.w	r0, #0
 8000894:	bc20      	pop	{r5}
 8000896:	4770      	bx	lr
 8000898:	f005 02ff 	and.w	r2, r5, #255	; 0xff
 800089c:	f003 00ff 	and.w	r0, r3, #255	; 0xff
 80008a0:	2801      	cmp	r0, #1
 80008a2:	bf28      	it	cs
 80008a4:	4290      	cmpcs	r0, r2
 80008a6:	bf04      	itt	eq
 80008a8:	0a2d      	lsreq	r5, r5, #8
 80008aa:	0a1b      	lsreq	r3, r3, #8
 80008ac:	d0f4      	beq.n	8000898 <strcmp+0x19c>
 80008ae:	eba2 0000 	sub.w	r0, r2, r0
 80008b2:	bc20      	pop	{r5}
 80008b4:	4770      	bx	lr
 80008b6:	bf00      	nop

080008b8 <_vfprintf_r>:
 80008b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80008bc:	b0c1      	sub	sp, #260	; 0x104
 80008be:	461c      	mov	r4, r3
 80008c0:	468a      	mov	sl, r1
 80008c2:	4693      	mov	fp, r2
 80008c4:	4605      	mov	r5, r0
 80008c6:	900c      	str	r0, [sp, #48]	; 0x30
 80008c8:	f002 ff3e 	bl	8003748 <_localeconv_r>
 80008cc:	6803      	ldr	r3, [r0, #0]
 80008ce:	940d      	str	r4, [sp, #52]	; 0x34
 80008d0:	4618      	mov	r0, r3
 80008d2:	9316      	str	r3, [sp, #88]	; 0x58
 80008d4:	f004 f868 	bl	80049a8 <strlen>
 80008d8:	9014      	str	r0, [sp, #80]	; 0x50
 80008da:	b11d      	cbz	r5, 80008e4 <_vfprintf_r+0x2c>
 80008dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80008de:	2b00      	cmp	r3, #0
 80008e0:	f000 8343 	beq.w	8000f6a <_vfprintf_r+0x6b2>
 80008e4:	f9ba 200c 	ldrsh.w	r2, [sl, #12]
 80008e8:	b293      	uxth	r3, r2
 80008ea:	049e      	lsls	r6, r3, #18
 80008ec:	d40a      	bmi.n	8000904 <_vfprintf_r+0x4c>
 80008ee:	f8da 3064 	ldr.w	r3, [sl, #100]	; 0x64
 80008f2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80008f6:	f423 5100 	bic.w	r1, r3, #8192	; 0x2000
 80008fa:	b293      	uxth	r3, r2
 80008fc:	f8aa 200c 	strh.w	r2, [sl, #12]
 8000900:	f8ca 1064 	str.w	r1, [sl, #100]	; 0x64
 8000904:	071d      	lsls	r5, r3, #28
 8000906:	f140 80d1 	bpl.w	8000aac <_vfprintf_r+0x1f4>
 800090a:	f8da 2010 	ldr.w	r2, [sl, #16]
 800090e:	2a00      	cmp	r2, #0
 8000910:	f000 80cc 	beq.w	8000aac <_vfprintf_r+0x1f4>
 8000914:	f003 031a 	and.w	r3, r3, #26
 8000918:	2b0a      	cmp	r3, #10
 800091a:	f000 80d5 	beq.w	8000ac8 <_vfprintf_r+0x210>
 800091e:	2300      	movs	r3, #0
 8000920:	2100      	movs	r1, #0
 8000922:	2200      	movs	r2, #0
 8000924:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8000928:	9311      	str	r3, [sp, #68]	; 0x44
 800092a:	9315      	str	r3, [sp, #84]	; 0x54
 800092c:	9317      	str	r3, [sp, #92]	; 0x5c
 800092e:	9309      	str	r3, [sp, #36]	; 0x24
 8000930:	f8cd 908c 	str.w	r9, [sp, #140]	; 0x8c
 8000934:	f8cd a020 	str.w	sl, [sp, #32]
 8000938:	e9cd 1212 	strd	r1, r2, [sp, #72]	; 0x48
 800093c:	e9cd 3324 	strd	r3, r3, [sp, #144]	; 0x90
 8000940:	f89b 3000 	ldrb.w	r3, [fp]
 8000944:	2b25      	cmp	r3, #37	; 0x25
 8000946:	f000 821d 	beq.w	8000d84 <_vfprintf_r+0x4cc>
 800094a:	2b00      	cmp	r3, #0
 800094c:	f000 821a 	beq.w	8000d84 <_vfprintf_r+0x4cc>
 8000950:	465c      	mov	r4, fp
 8000952:	e000      	b.n	8000956 <_vfprintf_r+0x9e>
 8000954:	462c      	mov	r4, r5
 8000956:	7863      	ldrb	r3, [r4, #1]
 8000958:	1c65      	adds	r5, r4, #1
 800095a:	b10b      	cbz	r3, 8000960 <_vfprintf_r+0xa8>
 800095c:	2b25      	cmp	r3, #37	; 0x25
 800095e:	d1f9      	bne.n	8000954 <_vfprintf_r+0x9c>
 8000960:	ebb5 060b 	subs.w	r6, r5, fp
 8000964:	d012      	beq.n	800098c <_vfprintf_r+0xd4>
 8000966:	f8c9 b000 	str.w	fp, [r9]
 800096a:	f8c9 6004 	str.w	r6, [r9, #4]
 800096e:	e9dd 3224 	ldrd	r3, r2, [sp, #144]	; 0x90
 8000972:	3301      	adds	r3, #1
 8000974:	4432      	add	r2, r6
 8000976:	2b07      	cmp	r3, #7
 8000978:	e9cd 3224 	strd	r3, r2, [sp, #144]	; 0x90
 800097c:	f300 80b1 	bgt.w	8000ae2 <_vfprintf_r+0x22a>
 8000980:	f109 0908 	add.w	r9, r9, #8
 8000984:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8000986:	4433      	add	r3, r6
 8000988:	9309      	str	r3, [sp, #36]	; 0x24
 800098a:	7863      	ldrb	r3, [r4, #1]
 800098c:	2b00      	cmp	r3, #0
 800098e:	f001 8022 	beq.w	80019d6 <_vfprintf_r+0x111e>
 8000992:	2100      	movs	r1, #0
 8000994:	f105 0b01 	add.w	fp, r5, #1
 8000998:	786b      	ldrb	r3, [r5, #1]
 800099a:	f04f 35ff 	mov.w	r5, #4294967295	; 0xffffffff
 800099e:	460a      	mov	r2, r1
 80009a0:	4608      	mov	r0, r1
 80009a2:	4688      	mov	r8, r1
 80009a4:	f88d 106f 	strb.w	r1, [sp, #111]	; 0x6f
 80009a8:	910a      	str	r1, [sp, #40]	; 0x28
 80009aa:	f10b 0b01 	add.w	fp, fp, #1
 80009ae:	469a      	mov	sl, r3
 80009b0:	f1aa 0320 	sub.w	r3, sl, #32
 80009b4:	2b58      	cmp	r3, #88	; 0x58
 80009b6:	f200 82dc 	bhi.w	8000f72 <_vfprintf_r+0x6ba>
 80009ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80009be:	00e4      	.short	0x00e4
 80009c0:	02da02da 	.word	0x02da02da
 80009c4:	02da00df 	.word	0x02da00df
 80009c8:	02da02da 	.word	0x02da02da
 80009cc:	02da02da 	.word	0x02da02da
 80009d0:	00d402da 	.word	0x00d402da
 80009d4:	02da00cf 	.word	0x02da00cf
 80009d8:	00b100ca 	.word	0x00b100ca
 80009dc:	00ac02da 	.word	0x00ac02da
 80009e0:	009d009d 	.word	0x009d009d
 80009e4:	009d009d 	.word	0x009d009d
 80009e8:	009d009d 	.word	0x009d009d
 80009ec:	009d009d 	.word	0x009d009d
 80009f0:	02da009d 	.word	0x02da009d
 80009f4:	02da02da 	.word	0x02da02da
 80009f8:	02da02da 	.word	0x02da02da
 80009fc:	02da02da 	.word	0x02da02da
 8000a00:	02da02da 	.word	0x02da02da
 8000a04:	02a202da 	.word	0x02a202da
 8000a08:	02da0265 	.word	0x02da0265
 8000a0c:	02da0265 	.word	0x02da0265
 8000a10:	02da02da 	.word	0x02da02da
 8000a14:	025b02da 	.word	0x025b02da
 8000a18:	02da02da 	.word	0x02da02da
 8000a1c:	02da0068 	.word	0x02da0068
 8000a20:	02da02da 	.word	0x02da02da
 8000a24:	02da02da 	.word	0x02da02da
 8000a28:	02da0059 	.word	0x02da0059
 8000a2c:	01e502da 	.word	0x01e502da
 8000a30:	02da02da 	.word	0x02da02da
 8000a34:	02da02da 	.word	0x02da02da
 8000a38:	02da02da 	.word	0x02da02da
 8000a3c:	02da02da 	.word	0x02da02da
 8000a40:	02da02da 	.word	0x02da02da
 8000a44:	01370165 	.word	0x01370165
 8000a48:	02650265 	.word	0x02650265
 8000a4c:	02560265 	.word	0x02560265
 8000a50:	02da0137 	.word	0x02da0137
 8000a54:	024e02da 	.word	0x024e02da
 8000a58:	023802da 	.word	0x023802da
 8000a5c:	01fd006a 	.word	0x01fd006a
 8000a60:	02da0132 	.word	0x02da0132
 8000a64:	02da010d 	.word	0x02da010d
 8000a68:	02da005b 	.word	0x02da005b
 8000a6c:	00ec02da 	.word	0x00ec02da
 8000a70:	f048 0810 	orr.w	r8, r8, #16
 8000a74:	f018 0f20 	tst.w	r8, #32
 8000a78:	f000 826c 	beq.w	8000f54 <_vfprintf_r+0x69c>
 8000a7c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000a7e:	2301      	movs	r3, #1
 8000a80:	3407      	adds	r4, #7
 8000a82:	f024 0207 	bic.w	r2, r4, #7
 8000a86:	e8f2 6702 	ldrd	r6, r7, [r2], #8
 8000a8a:	920d      	str	r2, [sp, #52]	; 0x34
 8000a8c:	e1a4      	b.n	8000dd8 <_vfprintf_r+0x520>
 8000a8e:	f048 0810 	orr.w	r8, r8, #16
 8000a92:	f018 0320 	ands.w	r3, r8, #32
 8000a96:	f000 824e 	beq.w	8000f36 <_vfprintf_r+0x67e>
 8000a9a:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000a9c:	2300      	movs	r3, #0
 8000a9e:	3407      	adds	r4, #7
 8000aa0:	f024 0207 	bic.w	r2, r4, #7
 8000aa4:	e8f2 6702 	ldrd	r6, r7, [r2], #8
 8000aa8:	920d      	str	r2, [sp, #52]	; 0x34
 8000aaa:	e195      	b.n	8000dd8 <_vfprintf_r+0x520>
 8000aac:	4651      	mov	r1, sl
 8000aae:	980c      	ldr	r0, [sp, #48]	; 0x30
 8000ab0:	f001 fa1c 	bl	8001eec <__swsetup_r>
 8000ab4:	2800      	cmp	r0, #0
 8000ab6:	f041 8139 	bne.w	8001d2c <_vfprintf_r+0x1474>
 8000aba:	f8ba 300c 	ldrh.w	r3, [sl, #12]
 8000abe:	f003 031a 	and.w	r3, r3, #26
 8000ac2:	2b0a      	cmp	r3, #10
 8000ac4:	f47f af2b 	bne.w	800091e <_vfprintf_r+0x66>
 8000ac8:	f9ba 300e 	ldrsh.w	r3, [sl, #14]
 8000acc:	2b00      	cmp	r3, #0
 8000ace:	f6ff af26 	blt.w	800091e <_vfprintf_r+0x66>
 8000ad2:	4623      	mov	r3, r4
 8000ad4:	465a      	mov	r2, fp
 8000ad6:	4651      	mov	r1, sl
 8000ad8:	980c      	ldr	r0, [sp, #48]	; 0x30
 8000ada:	f001 f9d1 	bl	8001e80 <__sbprintf>
 8000ade:	9009      	str	r0, [sp, #36]	; 0x24
 8000ae0:	e393      	b.n	800120a <_vfprintf_r+0x952>
 8000ae2:	aa23      	add	r2, sp, #140	; 0x8c
 8000ae4:	9908      	ldr	r1, [sp, #32]
 8000ae6:	980c      	ldr	r0, [sp, #48]	; 0x30
 8000ae8:	f003 ffc6 	bl	8004a78 <__sprint_r>
 8000aec:	2800      	cmp	r0, #0
 8000aee:	f040 8385 	bne.w	80011fc <_vfprintf_r+0x944>
 8000af2:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8000af6:	e745      	b.n	8000984 <_vfprintf_r+0xcc>
 8000af8:	f1aa 0330 	sub.w	r3, sl, #48	; 0x30
 8000afc:	2100      	movs	r1, #0
 8000afe:	eb01 0181 	add.w	r1, r1, r1, lsl #2
 8000b02:	f81b ab01 	ldrb.w	sl, [fp], #1
 8000b06:	eb03 0141 	add.w	r1, r3, r1, lsl #1
 8000b0a:	f1aa 0330 	sub.w	r3, sl, #48	; 0x30
 8000b0e:	2b09      	cmp	r3, #9
 8000b10:	d9f5      	bls.n	8000afe <_vfprintf_r+0x246>
 8000b12:	910a      	str	r1, [sp, #40]	; 0x28
 8000b14:	e74c      	b.n	80009b0 <_vfprintf_r+0xf8>
 8000b16:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8000b1a:	f89b 3000 	ldrb.w	r3, [fp]
 8000b1e:	e744      	b.n	80009aa <_vfprintf_r+0xf2>
 8000b20:	4659      	mov	r1, fp
 8000b22:	f811 ab01 	ldrb.w	sl, [r1], #1
 8000b26:	f1ba 0f2a 	cmp.w	sl, #42	; 0x2a
 8000b2a:	f001 8165 	beq.w	8001df8 <_vfprintf_r+0x1540>
 8000b2e:	f1aa 0330 	sub.w	r3, sl, #48	; 0x30
 8000b32:	468b      	mov	fp, r1
 8000b34:	2500      	movs	r5, #0
 8000b36:	2b09      	cmp	r3, #9
 8000b38:	f63f af3a 	bhi.w	80009b0 <_vfprintf_r+0xf8>
 8000b3c:	eb05 0585 	add.w	r5, r5, r5, lsl #2
 8000b40:	f81b ab01 	ldrb.w	sl, [fp], #1
 8000b44:	eb03 0545 	add.w	r5, r3, r5, lsl #1
 8000b48:	f1aa 0330 	sub.w	r3, sl, #48	; 0x30
 8000b4c:	2b09      	cmp	r3, #9
 8000b4e:	d9f5      	bls.n	8000b3c <_vfprintf_r+0x284>
 8000b50:	e72e      	b.n	80009b0 <_vfprintf_r+0xf8>
 8000b52:	f89b 3000 	ldrb.w	r3, [fp]
 8000b56:	f048 0804 	orr.w	r8, r8, #4
 8000b5a:	e726      	b.n	80009aa <_vfprintf_r+0xf2>
 8000b5c:	f89b 3000 	ldrb.w	r3, [fp]
 8000b60:	2201      	movs	r2, #1
 8000b62:	202b      	movs	r0, #43	; 0x2b
 8000b64:	e721      	b.n	80009aa <_vfprintf_r+0xf2>
 8000b66:	990d      	ldr	r1, [sp, #52]	; 0x34
 8000b68:	f89b 3000 	ldrb.w	r3, [fp]
 8000b6c:	f851 4b04 	ldr.w	r4, [r1], #4
 8000b70:	2c00      	cmp	r4, #0
 8000b72:	940a      	str	r4, [sp, #40]	; 0x28
 8000b74:	f2c0 8633 	blt.w	80017de <_vfprintf_r+0xf26>
 8000b78:	910d      	str	r1, [sp, #52]	; 0x34
 8000b7a:	e716      	b.n	80009aa <_vfprintf_r+0xf2>
 8000b7c:	f048 0801 	orr.w	r8, r8, #1
 8000b80:	f89b 3000 	ldrb.w	r3, [fp]
 8000b84:	e711      	b.n	80009aa <_vfprintf_r+0xf2>
 8000b86:	f89b 3000 	ldrb.w	r3, [fp]
 8000b8a:	2800      	cmp	r0, #0
 8000b8c:	f47f af0d 	bne.w	80009aa <_vfprintf_r+0xf2>
 8000b90:	2201      	movs	r2, #1
 8000b92:	2020      	movs	r0, #32
 8000b94:	e709      	b.n	80009aa <_vfprintf_r+0xf2>
 8000b96:	2a00      	cmp	r2, #0
 8000b98:	f041 80b8 	bne.w	8001d0c <_vfprintf_r+0x1454>
 8000b9c:	4bb8      	ldr	r3, [pc, #736]	; (8000e80 <_vfprintf_r+0x5c8>)
 8000b9e:	f018 0f20 	tst.w	r8, #32
 8000ba2:	9315      	str	r3, [sp, #84]	; 0x54
 8000ba4:	f000 80f9 	beq.w	8000d9a <_vfprintf_r+0x4e2>
 8000ba8:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000baa:	3407      	adds	r4, #7
 8000bac:	f024 0307 	bic.w	r3, r4, #7
 8000bb0:	e8f3 6702 	ldrd	r6, r7, [r3], #8
 8000bb4:	930d      	str	r3, [sp, #52]	; 0x34
 8000bb6:	f018 0f01 	tst.w	r8, #1
 8000bba:	f000 81eb 	beq.w	8000f94 <_vfprintf_r+0x6dc>
 8000bbe:	ea56 0307 	orrs.w	r3, r6, r7
 8000bc2:	f000 81e7 	beq.w	8000f94 <_vfprintf_r+0x6dc>
 8000bc6:	2230      	movs	r2, #48	; 0x30
 8000bc8:	f88d a071 	strb.w	sl, [sp, #113]	; 0x71
 8000bcc:	f048 0802 	orr.w	r8, r8, #2
 8000bd0:	2302      	movs	r3, #2
 8000bd2:	f88d 2070 	strb.w	r2, [sp, #112]	; 0x70
 8000bd6:	e0ff      	b.n	8000dd8 <_vfprintf_r+0x520>
 8000bd8:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000bda:	2600      	movs	r6, #0
 8000bdc:	f854 3b04 	ldr.w	r3, [r4], #4
 8000be0:	f88d 606f 	strb.w	r6, [sp, #111]	; 0x6f
 8000be4:	930f      	str	r3, [sp, #60]	; 0x3c
 8000be6:	2b00      	cmp	r3, #0
 8000be8:	f000 863f 	beq.w	800186a <_vfprintf_r+0xfb2>
 8000bec:	1c68      	adds	r0, r5, #1
 8000bee:	f000 86fe 	beq.w	80019ee <_vfprintf_r+0x1136>
 8000bf2:	462a      	mov	r2, r5
 8000bf4:	4631      	mov	r1, r6
 8000bf6:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8000bf8:	f003 f8ee 	bl	8003dd8 <memchr>
 8000bfc:	2800      	cmp	r0, #0
 8000bfe:	f001 803d 	beq.w	8001c7c <_vfprintf_r+0x13c4>
 8000c02:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8000c04:	4635      	mov	r5, r6
 8000c06:	1ac3      	subs	r3, r0, r3
 8000c08:	930b      	str	r3, [sp, #44]	; 0x2c
 8000c0a:	940d      	str	r4, [sp, #52]	; 0x34
 8000c0c:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8000c10:	f89d 406f 	ldrb.w	r4, [sp, #111]	; 0x6f
 8000c14:	f8cd 801c 	str.w	r8, [sp, #28]
 8000c18:	9510      	str	r5, [sp, #64]	; 0x40
 8000c1a:	2c00      	cmp	r4, #0
 8000c1c:	d045      	beq.n	8000caa <_vfprintf_r+0x3f2>
 8000c1e:	3701      	adds	r7, #1
 8000c20:	e043      	b.n	8000caa <_vfprintf_r+0x3f2>
 8000c22:	f048 0820 	orr.w	r8, r8, #32
 8000c26:	f89b 3000 	ldrb.w	r3, [fp]
 8000c2a:	e6be      	b.n	80009aa <_vfprintf_r+0xf2>
 8000c2c:	2a00      	cmp	r2, #0
 8000c2e:	f041 8069 	bne.w	8001d04 <_vfprintf_r+0x144c>
 8000c32:	f018 0f20 	tst.w	r8, #32
 8000c36:	f000 816d 	beq.w	8000f14 <_vfprintf_r+0x65c>
 8000c3a:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000c3c:	3407      	adds	r4, #7
 8000c3e:	f024 0307 	bic.w	r3, r4, #7
 8000c42:	4619      	mov	r1, r3
 8000c44:	e8f1 2302 	ldrd	r2, r3, [r1], #8
 8000c48:	4616      	mov	r6, r2
 8000c4a:	461f      	mov	r7, r3
 8000c4c:	910d      	str	r1, [sp, #52]	; 0x34
 8000c4e:	2a00      	cmp	r2, #0
 8000c50:	f173 0300 	sbcs.w	r3, r3, #0
 8000c54:	f2c0 850d 	blt.w	8001672 <_vfprintf_r+0xdba>
 8000c58:	1c6b      	adds	r3, r5, #1
 8000c5a:	f89d 406f 	ldrb.w	r4, [sp, #111]	; 0x6f
 8000c5e:	f000 819d 	beq.w	8000f9c <_vfprintf_r+0x6e4>
 8000c62:	f028 0380 	bic.w	r3, r8, #128	; 0x80
 8000c66:	9307      	str	r3, [sp, #28]
 8000c68:	2d00      	cmp	r5, #0
 8000c6a:	f040 8195 	bne.w	8000f98 <_vfprintf_r+0x6e0>
 8000c6e:	ea56 0307 	orrs.w	r3, r6, r7
 8000c72:	bf14      	ite	ne
 8000c74:	2301      	movne	r3, #1
 8000c76:	2300      	moveq	r3, #0
 8000c78:	2b00      	cmp	r3, #0
 8000c7a:	f040 818d 	bne.w	8000f98 <_vfprintf_r+0x6e0>
 8000c7e:	461d      	mov	r5, r3
 8000c80:	ab30      	add	r3, sp, #192	; 0xc0
 8000c82:	950b      	str	r5, [sp, #44]	; 0x2c
 8000c84:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c86:	e0ca      	b.n	8000e1e <_vfprintf_r+0x566>
 8000c88:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000c8a:	ab26      	add	r3, sp, #152	; 0x98
 8000c8c:	2200      	movs	r2, #0
 8000c8e:	2701      	movs	r7, #1
 8000c90:	930f      	str	r3, [sp, #60]	; 0x3c
 8000c92:	f854 3b04 	ldr.w	r3, [r4], #4
 8000c96:	f88d 206f 	strb.w	r2, [sp, #111]	; 0x6f
 8000c9a:	970b      	str	r7, [sp, #44]	; 0x2c
 8000c9c:	f88d 3098 	strb.w	r3, [sp, #152]	; 0x98
 8000ca0:	940d      	str	r4, [sp, #52]	; 0x34
 8000ca2:	2500      	movs	r5, #0
 8000ca4:	f8cd 801c 	str.w	r8, [sp, #28]
 8000ca8:	9510      	str	r5, [sp, #64]	; 0x40
 8000caa:	9b07      	ldr	r3, [sp, #28]
 8000cac:	9a07      	ldr	r2, [sp, #28]
 8000cae:	f013 0302 	ands.w	r3, r3, #2
 8000cb2:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8000cb4:	bf18      	it	ne
 8000cb6:	3702      	addne	r7, #2
 8000cb8:	f012 0284 	ands.w	r2, r2, #132	; 0x84
 8000cbc:	920e      	str	r2, [sp, #56]	; 0x38
 8000cbe:	d104      	bne.n	8000cca <_vfprintf_r+0x412>
 8000cc0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8000cc2:	1bd6      	subs	r6, r2, r7
 8000cc4:	2e00      	cmp	r6, #0
 8000cc6:	f300 8338 	bgt.w	800133a <_vfprintf_r+0xa82>
 8000cca:	f89d 206f 	ldrb.w	r2, [sp, #111]	; 0x6f
 8000cce:	b182      	cbz	r2, 8000cf2 <_vfprintf_r+0x43a>
 8000cd0:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8000cd2:	2101      	movs	r1, #1
 8000cd4:	3401      	adds	r4, #1
 8000cd6:	f10d 006f 	add.w	r0, sp, #111	; 0x6f
 8000cda:	440a      	add	r2, r1
 8000cdc:	f8c9 1004 	str.w	r1, [r9, #4]
 8000ce0:	9425      	str	r4, [sp, #148]	; 0x94
 8000ce2:	2a07      	cmp	r2, #7
 8000ce4:	f8c9 0000 	str.w	r0, [r9]
 8000ce8:	9224      	str	r2, [sp, #144]	; 0x90
 8000cea:	f300 8364 	bgt.w	80013b6 <_vfprintf_r+0xafe>
 8000cee:	f109 0908 	add.w	r9, r9, #8
 8000cf2:	b17b      	cbz	r3, 8000d14 <_vfprintf_r+0x45c>
 8000cf4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8000cf6:	3402      	adds	r4, #2
 8000cf8:	a91c      	add	r1, sp, #112	; 0x70
 8000cfa:	2202      	movs	r2, #2
 8000cfc:	3301      	adds	r3, #1
 8000cfe:	9425      	str	r4, [sp, #148]	; 0x94
 8000d00:	f8c9 1000 	str.w	r1, [r9]
 8000d04:	2b07      	cmp	r3, #7
 8000d06:	9324      	str	r3, [sp, #144]	; 0x90
 8000d08:	f8c9 2004 	str.w	r2, [r9, #4]
 8000d0c:	f300 8361 	bgt.w	80013d2 <_vfprintf_r+0xb1a>
 8000d10:	f109 0908 	add.w	r9, r9, #8
 8000d14:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8000d16:	2b80      	cmp	r3, #128	; 0x80
 8000d18:	f000 81b4 	beq.w	8001084 <_vfprintf_r+0x7cc>
 8000d1c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8000d1e:	1aed      	subs	r5, r5, r3
 8000d20:	2d00      	cmp	r5, #0
 8000d22:	f300 81f5 	bgt.w	8001110 <_vfprintf_r+0x858>
 8000d26:	9b07      	ldr	r3, [sp, #28]
 8000d28:	05da      	lsls	r2, r3, #23
 8000d2a:	f100 8147 	bmi.w	8000fbc <_vfprintf_r+0x704>
 8000d2e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8000d30:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8000d32:	3301      	adds	r3, #1
 8000d34:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8000d36:	4414      	add	r4, r2
 8000d38:	f8c9 2004 	str.w	r2, [r9, #4]
 8000d3c:	2b07      	cmp	r3, #7
 8000d3e:	f8c9 1000 	str.w	r1, [r9]
 8000d42:	9425      	str	r4, [sp, #148]	; 0x94
 8000d44:	9324      	str	r3, [sp, #144]	; 0x90
 8000d46:	f300 8298 	bgt.w	800127a <_vfprintf_r+0x9c2>
 8000d4a:	f109 0908 	add.w	r9, r9, #8
 8000d4e:	9b07      	ldr	r3, [sp, #28]
 8000d50:	0759      	lsls	r1, r3, #29
 8000d52:	d504      	bpl.n	8000d5e <_vfprintf_r+0x4a6>
 8000d54:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8000d56:	1bdd      	subs	r5, r3, r7
 8000d58:	2d00      	cmp	r5, #0
 8000d5a:	f300 835f 	bgt.w	800141c <_vfprintf_r+0xb64>
 8000d5e:	e9dd 3209 	ldrd	r3, r2, [sp, #36]	; 0x24
 8000d62:	42ba      	cmp	r2, r7
 8000d64:	bfac      	ite	ge
 8000d66:	189b      	addge	r3, r3, r2
 8000d68:	19db      	addlt	r3, r3, r7
 8000d6a:	9309      	str	r3, [sp, #36]	; 0x24
 8000d6c:	2c00      	cmp	r4, #0
 8000d6e:	f040 823d 	bne.w	80011ec <_vfprintf_r+0x934>
 8000d72:	2300      	movs	r3, #0
 8000d74:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8000d78:	9324      	str	r3, [sp, #144]	; 0x90
 8000d7a:	f89b 3000 	ldrb.w	r3, [fp]
 8000d7e:	2b25      	cmp	r3, #37	; 0x25
 8000d80:	f47f ade3 	bne.w	800094a <_vfprintf_r+0x92>
 8000d84:	465d      	mov	r5, fp
 8000d86:	e601      	b.n	800098c <_vfprintf_r+0xd4>
 8000d88:	2a00      	cmp	r2, #0
 8000d8a:	f040 87b7 	bne.w	8001cfc <_vfprintf_r+0x1444>
 8000d8e:	4b3d      	ldr	r3, [pc, #244]	; (8000e84 <_vfprintf_r+0x5cc>)
 8000d90:	f018 0f20 	tst.w	r8, #32
 8000d94:	9315      	str	r3, [sp, #84]	; 0x54
 8000d96:	f47f af07 	bne.w	8000ba8 <_vfprintf_r+0x2f0>
 8000d9a:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8000d9c:	f018 0f10 	tst.w	r8, #16
 8000da0:	f853 6b04 	ldr.w	r6, [r3], #4
 8000da4:	930d      	str	r3, [sp, #52]	; 0x34
 8000da6:	f040 846e 	bne.w	8001686 <_vfprintf_r+0xdce>
 8000daa:	f018 0f40 	tst.w	r8, #64	; 0x40
 8000dae:	f000 846a 	beq.w	8001686 <_vfprintf_r+0xdce>
 8000db2:	b2b6      	uxth	r6, r6
 8000db4:	2700      	movs	r7, #0
 8000db6:	e6fe      	b.n	8000bb6 <_vfprintf_r+0x2fe>
 8000db8:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000dba:	f647 0230 	movw	r2, #30768	; 0x7830
 8000dbe:	4b30      	ldr	r3, [pc, #192]	; (8000e80 <_vfprintf_r+0x5c8>)
 8000dc0:	f048 0802 	orr.w	r8, r8, #2
 8000dc4:	f854 6b04 	ldr.w	r6, [r4], #4
 8000dc8:	f04f 0a78 	mov.w	sl, #120	; 0x78
 8000dcc:	9315      	str	r3, [sp, #84]	; 0x54
 8000dce:	2302      	movs	r3, #2
 8000dd0:	f8ad 2070 	strh.w	r2, [sp, #112]	; 0x70
 8000dd4:	940d      	str	r4, [sp, #52]	; 0x34
 8000dd6:	2700      	movs	r7, #0
 8000dd8:	2200      	movs	r2, #0
 8000dda:	4614      	mov	r4, r2
 8000ddc:	f88d 206f 	strb.w	r2, [sp, #111]	; 0x6f
 8000de0:	1c69      	adds	r1, r5, #1
 8000de2:	f000 81d2 	beq.w	800118a <_vfprintf_r+0x8d2>
 8000de6:	f028 0280 	bic.w	r2, r8, #128	; 0x80
 8000dea:	9207      	str	r2, [sp, #28]
 8000dec:	ea56 0207 	orrs.w	r2, r6, r7
 8000df0:	f040 81c9 	bne.w	8001186 <_vfprintf_r+0x8ce>
 8000df4:	1c2a      	adds	r2, r5, #0
 8000df6:	bf18      	it	ne
 8000df8:	2201      	movne	r2, #1
 8000dfa:	2a00      	cmp	r2, #0
 8000dfc:	f040 81c3 	bne.w	8001186 <_vfprintf_r+0x8ce>
 8000e00:	2b00      	cmp	r3, #0
 8000e02:	f040 8349 	bne.w	8001498 <_vfprintf_r+0xbe0>
 8000e06:	f018 0201 	ands.w	r2, r8, #1
 8000e0a:	920b      	str	r2, [sp, #44]	; 0x2c
 8000e0c:	f000 83e8 	beq.w	80015e0 <_vfprintf_r+0xd28>
 8000e10:	2230      	movs	r2, #48	; 0x30
 8000e12:	461d      	mov	r5, r3
 8000e14:	f10d 03bf 	add.w	r3, sp, #191	; 0xbf
 8000e18:	f88d 20bf 	strb.w	r2, [sp, #191]	; 0xbf
 8000e1c:	930f      	str	r3, [sp, #60]	; 0x3c
 8000e1e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8000e20:	42ab      	cmp	r3, r5
 8000e22:	bfb8      	it	lt
 8000e24:	462b      	movlt	r3, r5
 8000e26:	461f      	mov	r7, r3
 8000e28:	2300      	movs	r3, #0
 8000e2a:	9310      	str	r3, [sp, #64]	; 0x40
 8000e2c:	e6f5      	b.n	8000c1a <_vfprintf_r+0x362>
 8000e2e:	2a00      	cmp	r2, #0
 8000e30:	f040 8760 	bne.w	8001cf4 <_vfprintf_r+0x143c>
 8000e34:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8000e36:	f018 0f20 	tst.w	r8, #32
 8000e3a:	f852 3b04 	ldr.w	r3, [r2], #4
 8000e3e:	920d      	str	r2, [sp, #52]	; 0x34
 8000e40:	f040 84c6 	bne.w	80017d0 <_vfprintf_r+0xf18>
 8000e44:	f018 0f10 	tst.w	r8, #16
 8000e48:	f040 8545 	bne.w	80018d6 <_vfprintf_r+0x101e>
 8000e4c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8000e50:	f000 8541 	beq.w	80018d6 <_vfprintf_r+0x101e>
 8000e54:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8000e56:	801a      	strh	r2, [r3, #0]
 8000e58:	e572      	b.n	8000940 <_vfprintf_r+0x88>
 8000e5a:	f89b 3000 	ldrb.w	r3, [fp]
 8000e5e:	2b6c      	cmp	r3, #108	; 0x6c
 8000e60:	f000 84ee 	beq.w	8001840 <_vfprintf_r+0xf88>
 8000e64:	f048 0810 	orr.w	r8, r8, #16
 8000e68:	e59f      	b.n	80009aa <_vfprintf_r+0xf2>
 8000e6a:	f048 0840 	orr.w	r8, r8, #64	; 0x40
 8000e6e:	f89b 3000 	ldrb.w	r3, [fp]
 8000e72:	e59a      	b.n	80009aa <_vfprintf_r+0xf2>
 8000e74:	f048 0808 	orr.w	r8, r8, #8
 8000e78:	f89b 3000 	ldrb.w	r3, [fp]
 8000e7c:	e595      	b.n	80009aa <_vfprintf_r+0xf2>
 8000e7e:	bf00      	nop
 8000e80:	0800ada8 	.word	0x0800ada8
 8000e84:	0800ad94 	.word	0x0800ad94
 8000e88:	2a00      	cmp	r2, #0
 8000e8a:	f040 872b 	bne.w	8001ce4 <_vfprintf_r+0x142c>
 8000e8e:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8000e90:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000e94:	4bc1      	ldr	r3, [pc, #772]	; (800119c <_vfprintf_r+0x8e4>)
 8000e96:	3407      	adds	r4, #7
 8000e98:	f024 0107 	bic.w	r1, r4, #7
 8000e9c:	e8f1 6702 	ldrd	r6, r7, [r1], #8
 8000ea0:	910d      	str	r1, [sp, #52]	; 0x34
 8000ea2:	4630      	mov	r0, r6
 8000ea4:	4639      	mov	r1, r7
 8000ea6:	f027 4400 	bic.w	r4, r7, #2147483648	; 0x80000000
 8000eaa:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8000eae:	4621      	mov	r1, r4
 8000eb0:	f006 f822 	bl	8006ef8 <__aeabi_dcmpun>
 8000eb4:	2800      	cmp	r0, #0
 8000eb6:	f040 83ef 	bne.w	8001698 <_vfprintf_r+0xde0>
 8000eba:	4630      	mov	r0, r6
 8000ebc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000ec0:	4bb6      	ldr	r3, [pc, #728]	; (800119c <_vfprintf_r+0x8e4>)
 8000ec2:	4621      	mov	r1, r4
 8000ec4:	f005 fffa 	bl	8006ebc <__aeabi_dcmple>
 8000ec8:	2800      	cmp	r0, #0
 8000eca:	f040 83e5 	bne.w	8001698 <_vfprintf_r+0xde0>
 8000ece:	2200      	movs	r2, #0
 8000ed0:	2300      	movs	r3, #0
 8000ed2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8000ed6:	f005 ffe7 	bl	8006ea8 <__aeabi_dcmplt>
 8000eda:	2800      	cmp	r0, #0
 8000edc:	f040 8612 	bne.w	8001b04 <_vfprintf_r+0x124c>
 8000ee0:	f89d 406f 	ldrb.w	r4, [sp, #111]	; 0x6f
 8000ee4:	4aae      	ldr	r2, [pc, #696]	; (80011a0 <_vfprintf_r+0x8e8>)
 8000ee6:	2703      	movs	r7, #3
 8000ee8:	4bae      	ldr	r3, [pc, #696]	; (80011a4 <_vfprintf_r+0x8ec>)
 8000eea:	2500      	movs	r5, #0
 8000eec:	f028 0180 	bic.w	r1, r8, #128	; 0x80
 8000ef0:	f1ba 0f47 	cmp.w	sl, #71	; 0x47
 8000ef4:	bfc8      	it	gt
 8000ef6:	461a      	movgt	r2, r3
 8000ef8:	970b      	str	r7, [sp, #44]	; 0x2c
 8000efa:	9107      	str	r1, [sp, #28]
 8000efc:	e9cd 250f 	strd	r2, r5, [sp, #60]	; 0x3c
 8000f00:	e68b      	b.n	8000c1a <_vfprintf_r+0x362>
 8000f02:	2a00      	cmp	r2, #0
 8000f04:	f040 86f2 	bne.w	8001cec <_vfprintf_r+0x1434>
 8000f08:	f048 0810 	orr.w	r8, r8, #16
 8000f0c:	f018 0f20 	tst.w	r8, #32
 8000f10:	f47f ae93 	bne.w	8000c3a <_vfprintf_r+0x382>
 8000f14:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8000f16:	f018 0f10 	tst.w	r8, #16
 8000f1a:	f853 6b04 	ldr.w	r6, [r3], #4
 8000f1e:	930d      	str	r3, [sp, #52]	; 0x34
 8000f20:	f040 839f 	bne.w	8001662 <_vfprintf_r+0xdaa>
 8000f24:	f018 0f40 	tst.w	r8, #64	; 0x40
 8000f28:	f000 839b 	beq.w	8001662 <_vfprintf_r+0xdaa>
 8000f2c:	b236      	sxth	r6, r6
 8000f2e:	17f7      	asrs	r7, r6, #31
 8000f30:	4632      	mov	r2, r6
 8000f32:	463b      	mov	r3, r7
 8000f34:	e68b      	b.n	8000c4e <_vfprintf_r+0x396>
 8000f36:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8000f38:	f852 6b04 	ldr.w	r6, [r2], #4
 8000f3c:	920d      	str	r2, [sp, #52]	; 0x34
 8000f3e:	f018 0210 	ands.w	r2, r8, #16
 8000f42:	f47f af48 	bne.w	8000dd6 <_vfprintf_r+0x51e>
 8000f46:	f018 0340 	ands.w	r3, r8, #64	; 0x40
 8000f4a:	f43f af44 	beq.w	8000dd6 <_vfprintf_r+0x51e>
 8000f4e:	4613      	mov	r3, r2
 8000f50:	b2b6      	uxth	r6, r6
 8000f52:	e740      	b.n	8000dd6 <_vfprintf_r+0x51e>
 8000f54:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8000f56:	f018 0f10 	tst.w	r8, #16
 8000f5a:	f853 6b04 	ldr.w	r6, [r3], #4
 8000f5e:	930d      	str	r3, [sp, #52]	; 0x34
 8000f60:	f000 842c 	beq.w	80017bc <_vfprintf_r+0xf04>
 8000f64:	2700      	movs	r7, #0
 8000f66:	2301      	movs	r3, #1
 8000f68:	e736      	b.n	8000dd8 <_vfprintf_r+0x520>
 8000f6a:	980c      	ldr	r0, [sp, #48]	; 0x30
 8000f6c:	f002 fa34 	bl	80033d8 <__sinit>
 8000f70:	e4b8      	b.n	80008e4 <_vfprintf_r+0x2c>
 8000f72:	2a00      	cmp	r2, #0
 8000f74:	f040 85f8 	bne.w	8001b68 <_vfprintf_r+0x12b0>
 8000f78:	f1ba 0f00 	cmp.w	sl, #0
 8000f7c:	f000 852b 	beq.w	80019d6 <_vfprintf_r+0x111e>
 8000f80:	2300      	movs	r3, #0
 8000f82:	2701      	movs	r7, #1
 8000f84:	aa26      	add	r2, sp, #152	; 0x98
 8000f86:	f88d a098 	strb.w	sl, [sp, #152]	; 0x98
 8000f8a:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8000f8e:	920f      	str	r2, [sp, #60]	; 0x3c
 8000f90:	970b      	str	r7, [sp, #44]	; 0x2c
 8000f92:	e686      	b.n	8000ca2 <_vfprintf_r+0x3ea>
 8000f94:	2302      	movs	r3, #2
 8000f96:	e71f      	b.n	8000dd8 <_vfprintf_r+0x520>
 8000f98:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8000f9c:	2f00      	cmp	r7, #0
 8000f9e:	bf08      	it	eq
 8000fa0:	2e0a      	cmpeq	r6, #10
 8000fa2:	f080 84f1 	bcs.w	8001988 <_vfprintf_r+0x10d0>
 8000fa6:	2301      	movs	r3, #1
 8000fa8:	3630      	adds	r6, #48	; 0x30
 8000faa:	f8cd 801c 	str.w	r8, [sp, #28]
 8000fae:	930b      	str	r3, [sp, #44]	; 0x2c
 8000fb0:	f10d 03bf 	add.w	r3, sp, #191	; 0xbf
 8000fb4:	f88d 60bf 	strb.w	r6, [sp, #191]	; 0xbf
 8000fb8:	930f      	str	r3, [sp, #60]	; 0x3c
 8000fba:	e730      	b.n	8000e1e <_vfprintf_r+0x566>
 8000fbc:	f1ba 0f65 	cmp.w	sl, #101	; 0x65
 8000fc0:	f340 8166 	ble.w	8001290 <_vfprintf_r+0x9d8>
 8000fc4:	2200      	movs	r2, #0
 8000fc6:	2300      	movs	r3, #0
 8000fc8:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8000fcc:	f005 ff62 	bl	8006e94 <__aeabi_dcmpeq>
 8000fd0:	2800      	cmp	r0, #0
 8000fd2:	f000 826b 	beq.w	80014ac <_vfprintf_r+0xbf4>
 8000fd6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8000fd8:	2201      	movs	r2, #1
 8000fda:	3401      	adds	r4, #1
 8000fdc:	4972      	ldr	r1, [pc, #456]	; (80011a8 <_vfprintf_r+0x8f0>)
 8000fde:	4413      	add	r3, r2
 8000fe0:	f8c9 2004 	str.w	r2, [r9, #4]
 8000fe4:	9425      	str	r4, [sp, #148]	; 0x94
 8000fe6:	2b07      	cmp	r3, #7
 8000fe8:	f8c9 1000 	str.w	r1, [r9]
 8000fec:	9324      	str	r3, [sp, #144]	; 0x90
 8000fee:	f300 84b0 	bgt.w	8001952 <_vfprintf_r+0x109a>
 8000ff2:	f109 0908 	add.w	r9, r9, #8
 8000ff6:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8000ff8:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8000ffa:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8000ffc:	4293      	cmp	r3, r2
 8000ffe:	f280 8345 	bge.w	800168c <_vfprintf_r+0xdd4>
 8001002:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8001004:	9a14      	ldr	r2, [sp, #80]	; 0x50
 8001006:	3301      	adds	r3, #1
 8001008:	9916      	ldr	r1, [sp, #88]	; 0x58
 800100a:	4414      	add	r4, r2
 800100c:	f8c9 2004 	str.w	r2, [r9, #4]
 8001010:	2b07      	cmp	r3, #7
 8001012:	f8c9 1000 	str.w	r1, [r9]
 8001016:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 800101a:	f300 8419 	bgt.w	8001850 <_vfprintf_r+0xf98>
 800101e:	f109 0908 	add.w	r9, r9, #8
 8001022:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001024:	1e5d      	subs	r5, r3, #1
 8001026:	2d00      	cmp	r5, #0
 8001028:	f77f ae91 	ble.w	8000d4e <_vfprintf_r+0x496>
 800102c:	2d10      	cmp	r5, #16
 800102e:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001030:	f8df 8178 	ldr.w	r8, [pc, #376]	; 80011ac <_vfprintf_r+0x8f4>
 8001034:	f340 8481 	ble.w	800193a <_vfprintf_r+0x1082>
 8001038:	4641      	mov	r1, r8
 800103a:	4623      	mov	r3, r4
 800103c:	46b8      	mov	r8, r7
 800103e:	2610      	movs	r6, #16
 8001040:	f8dd a030 	ldr.w	sl, [sp, #48]	; 0x30
 8001044:	460f      	mov	r7, r1
 8001046:	9c08      	ldr	r4, [sp, #32]
 8001048:	e003      	b.n	8001052 <_vfprintf_r+0x79a>
 800104a:	3d10      	subs	r5, #16
 800104c:	2d10      	cmp	r5, #16
 800104e:	f340 8470 	ble.w	8001932 <_vfprintf_r+0x107a>
 8001052:	3201      	adds	r2, #1
 8001054:	3310      	adds	r3, #16
 8001056:	f8c9 7000 	str.w	r7, [r9]
 800105a:	f109 0908 	add.w	r9, r9, #8
 800105e:	2a07      	cmp	r2, #7
 8001060:	f849 6c04 	str.w	r6, [r9, #-4]
 8001064:	e9cd 2324 	strd	r2, r3, [sp, #144]	; 0x90
 8001068:	ddef      	ble.n	800104a <_vfprintf_r+0x792>
 800106a:	aa23      	add	r2, sp, #140	; 0x8c
 800106c:	4621      	mov	r1, r4
 800106e:	4650      	mov	r0, sl
 8001070:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001074:	f003 fd00 	bl	8004a78 <__sprint_r>
 8001078:	2800      	cmp	r0, #0
 800107a:	f040 8540 	bne.w	8001afe <_vfprintf_r+0x1246>
 800107e:	e9dd 2324 	ldrd	r2, r3, [sp, #144]	; 0x90
 8001082:	e7e2      	b.n	800104a <_vfprintf_r+0x792>
 8001084:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8001086:	1bde      	subs	r6, r3, r7
 8001088:	2e00      	cmp	r6, #0
 800108a:	f77f ae47 	ble.w	8000d1c <_vfprintf_r+0x464>
 800108e:	2e10      	cmp	r6, #16
 8001090:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001092:	f8df 8118 	ldr.w	r8, [pc, #280]	; 80011ac <_vfprintf_r+0x8f4>
 8001096:	dd29      	ble.n	80010ec <_vfprintf_r+0x834>
 8001098:	950e      	str	r5, [sp, #56]	; 0x38
 800109a:	4621      	mov	r1, r4
 800109c:	2310      	movs	r3, #16
 800109e:	4644      	mov	r4, r8
 80010a0:	9d08      	ldr	r5, [sp, #32]
 80010a2:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
 80010a6:	e002      	b.n	80010ae <_vfprintf_r+0x7f6>
 80010a8:	3e10      	subs	r6, #16
 80010aa:	2e10      	cmp	r6, #16
 80010ac:	dd1b      	ble.n	80010e6 <_vfprintf_r+0x82e>
 80010ae:	3201      	adds	r2, #1
 80010b0:	3110      	adds	r1, #16
 80010b2:	f8c9 4000 	str.w	r4, [r9]
 80010b6:	f109 0908 	add.w	r9, r9, #8
 80010ba:	2a07      	cmp	r2, #7
 80010bc:	f849 3c04 	str.w	r3, [r9, #-4]
 80010c0:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
 80010c4:	ddf0      	ble.n	80010a8 <_vfprintf_r+0x7f0>
 80010c6:	aa23      	add	r2, sp, #140	; 0x8c
 80010c8:	4629      	mov	r1, r5
 80010ca:	4640      	mov	r0, r8
 80010cc:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 80010d0:	f003 fcd2 	bl	8004a78 <__sprint_r>
 80010d4:	2800      	cmp	r0, #0
 80010d6:	f040 8455 	bne.w	8001984 <_vfprintf_r+0x10cc>
 80010da:	3e10      	subs	r6, #16
 80010dc:	2310      	movs	r3, #16
 80010de:	2e10      	cmp	r6, #16
 80010e0:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
 80010e4:	dce3      	bgt.n	80010ae <_vfprintf_r+0x7f6>
 80010e6:	46a0      	mov	r8, r4
 80010e8:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80010ea:	460c      	mov	r4, r1
 80010ec:	3201      	adds	r2, #1
 80010ee:	4434      	add	r4, r6
 80010f0:	f8c9 8000 	str.w	r8, [r9]
 80010f4:	2a07      	cmp	r2, #7
 80010f6:	f8c9 6004 	str.w	r6, [r9, #4]
 80010fa:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 80010fe:	f300 8434 	bgt.w	800196a <_vfprintf_r+0x10b2>
 8001102:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8001104:	f109 0908 	add.w	r9, r9, #8
 8001108:	1aed      	subs	r5, r5, r3
 800110a:	2d00      	cmp	r5, #0
 800110c:	f77f ae0b 	ble.w	8000d26 <_vfprintf_r+0x46e>
 8001110:	2d10      	cmp	r5, #16
 8001112:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001114:	f8df 8094 	ldr.w	r8, [pc, #148]	; 80011ac <_vfprintf_r+0x8f4>
 8001118:	dd27      	ble.n	800116a <_vfprintf_r+0x8b2>
 800111a:	4643      	mov	r3, r8
 800111c:	4621      	mov	r1, r4
 800111e:	46b8      	mov	r8, r7
 8001120:	2610      	movs	r6, #16
 8001122:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8001124:	461f      	mov	r7, r3
 8001126:	e002      	b.n	800112e <_vfprintf_r+0x876>
 8001128:	3d10      	subs	r5, #16
 800112a:	2d10      	cmp	r5, #16
 800112c:	dd19      	ble.n	8001162 <_vfprintf_r+0x8aa>
 800112e:	3201      	adds	r2, #1
 8001130:	3110      	adds	r1, #16
 8001132:	f8c9 7000 	str.w	r7, [r9]
 8001136:	f109 0908 	add.w	r9, r9, #8
 800113a:	2a07      	cmp	r2, #7
 800113c:	f849 6c04 	str.w	r6, [r9, #-4]
 8001140:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
 8001144:	ddf0      	ble.n	8001128 <_vfprintf_r+0x870>
 8001146:	aa23      	add	r2, sp, #140	; 0x8c
 8001148:	9908      	ldr	r1, [sp, #32]
 800114a:	4620      	mov	r0, r4
 800114c:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001150:	f003 fc92 	bl	8004a78 <__sprint_r>
 8001154:	2800      	cmp	r0, #0
 8001156:	d151      	bne.n	80011fc <_vfprintf_r+0x944>
 8001158:	3d10      	subs	r5, #16
 800115a:	2d10      	cmp	r5, #16
 800115c:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
 8001160:	dce5      	bgt.n	800112e <_vfprintf_r+0x876>
 8001162:	463b      	mov	r3, r7
 8001164:	460c      	mov	r4, r1
 8001166:	4647      	mov	r7, r8
 8001168:	4698      	mov	r8, r3
 800116a:	3201      	adds	r2, #1
 800116c:	442c      	add	r4, r5
 800116e:	f8c9 8000 	str.w	r8, [r9]
 8001172:	2a07      	cmp	r2, #7
 8001174:	f8c9 5004 	str.w	r5, [r9, #4]
 8001178:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 800117c:	f300 8264 	bgt.w	8001648 <_vfprintf_r+0xd90>
 8001180:	f109 0908 	add.w	r9, r9, #8
 8001184:	e5cf      	b.n	8000d26 <_vfprintf_r+0x46e>
 8001186:	f8dd 801c 	ldr.w	r8, [sp, #28]
 800118a:	2b01      	cmp	r3, #1
 800118c:	f43f af06 	beq.w	8000f9c <_vfprintf_r+0x6e4>
 8001190:	2b02      	cmp	r3, #2
 8001192:	f000 812a 	beq.w	80013ea <_vfprintf_r+0xb32>
 8001196:	a930      	add	r1, sp, #192	; 0xc0
 8001198:	e00b      	b.n	80011b2 <_vfprintf_r+0x8fa>
 800119a:	bf00      	nop
 800119c:	7fefffff 	.word	0x7fefffff
 80011a0:	0800ad84 	.word	0x0800ad84
 80011a4:	0800ad88 	.word	0x0800ad88
 80011a8:	0800adc4 	.word	0x0800adc4
 80011ac:	0800aaa4 	.word	0x0800aaa4
 80011b0:	4611      	mov	r1, r2
 80011b2:	08f2      	lsrs	r2, r6, #3
 80011b4:	f006 0307 	and.w	r3, r6, #7
 80011b8:	08f8      	lsrs	r0, r7, #3
 80011ba:	ea42 7247 	orr.w	r2, r2, r7, lsl #29
 80011be:	3330      	adds	r3, #48	; 0x30
 80011c0:	4607      	mov	r7, r0
 80011c2:	4616      	mov	r6, r2
 80011c4:	f801 3c01 	strb.w	r3, [r1, #-1]
 80011c8:	1e4a      	subs	r2, r1, #1
 80011ca:	ea56 0007 	orrs.w	r0, r6, r7
 80011ce:	d1ef      	bne.n	80011b0 <_vfprintf_r+0x8f8>
 80011d0:	2b30      	cmp	r3, #48	; 0x30
 80011d2:	920f      	str	r2, [sp, #60]	; 0x3c
 80011d4:	d003      	beq.n	80011de <_vfprintf_r+0x926>
 80011d6:	f018 0f01 	tst.w	r8, #1
 80011da:	f040 8305 	bne.w	80017e8 <_vfprintf_r+0xf30>
 80011de:	ab30      	add	r3, sp, #192	; 0xc0
 80011e0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80011e2:	f8cd 801c 	str.w	r8, [sp, #28]
 80011e6:	1a9b      	subs	r3, r3, r2
 80011e8:	930b      	str	r3, [sp, #44]	; 0x2c
 80011ea:	e618      	b.n	8000e1e <_vfprintf_r+0x566>
 80011ec:	aa23      	add	r2, sp, #140	; 0x8c
 80011ee:	9908      	ldr	r1, [sp, #32]
 80011f0:	980c      	ldr	r0, [sp, #48]	; 0x30
 80011f2:	f003 fc41 	bl	8004a78 <__sprint_r>
 80011f6:	2800      	cmp	r0, #0
 80011f8:	f43f adbb 	beq.w	8000d72 <_vfprintf_r+0x4ba>
 80011fc:	f8dd a020 	ldr.w	sl, [sp, #32]
 8001200:	f8ba 300c 	ldrh.w	r3, [sl, #12]
 8001204:	065a      	lsls	r2, r3, #25
 8001206:	f100 8591 	bmi.w	8001d2c <_vfprintf_r+0x1474>
 800120a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800120c:	b041      	add	sp, #260	; 0x104
 800120e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001212:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001214:	2101      	movs	r1, #1
 8001216:	3401      	adds	r4, #1
 8001218:	48a2      	ldr	r0, [pc, #648]	; (80014a4 <_vfprintf_r+0xbec>)
 800121a:	440a      	add	r2, r1
 800121c:	f8c9 1004 	str.w	r1, [r9, #4]
 8001220:	9425      	str	r4, [sp, #148]	; 0x94
 8001222:	2a07      	cmp	r2, #7
 8001224:	f8c9 0000 	str.w	r0, [r9]
 8001228:	9224      	str	r2, [sp, #144]	; 0x90
 800122a:	f300 848f 	bgt.w	8001b4c <_vfprintf_r+0x1294>
 800122e:	f109 0908 	add.w	r9, r9, #8
 8001232:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001234:	431a      	orrs	r2, r3
 8001236:	f000 850c 	beq.w	8001c52 <_vfprintf_r+0x139a>
 800123a:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800123c:	9914      	ldr	r1, [sp, #80]	; 0x50
 800123e:	3201      	adds	r2, #1
 8001240:	9816      	ldr	r0, [sp, #88]	; 0x58
 8001242:	440c      	add	r4, r1
 8001244:	f8c9 1004 	str.w	r1, [r9, #4]
 8001248:	2a07      	cmp	r2, #7
 800124a:	f8c9 0000 	str.w	r0, [r9]
 800124e:	9425      	str	r4, [sp, #148]	; 0x94
 8001250:	9224      	str	r2, [sp, #144]	; 0x90
 8001252:	f300 84e0 	bgt.w	8001c16 <_vfprintf_r+0x135e>
 8001256:	f109 0908 	add.w	r9, r9, #8
 800125a:	2b00      	cmp	r3, #0
 800125c:	f2c0 8519 	blt.w	8001c92 <_vfprintf_r+0x13da>
 8001260:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001262:	3201      	adds	r2, #1
 8001264:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8001266:	441c      	add	r4, r3
 8001268:	2a07      	cmp	r2, #7
 800126a:	f8c9 1000 	str.w	r1, [r9]
 800126e:	f8c9 3004 	str.w	r3, [r9, #4]
 8001272:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 8001276:	f77f ad68 	ble.w	8000d4a <_vfprintf_r+0x492>
 800127a:	aa23      	add	r2, sp, #140	; 0x8c
 800127c:	9908      	ldr	r1, [sp, #32]
 800127e:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001280:	f003 fbfa 	bl	8004a78 <__sprint_r>
 8001284:	2800      	cmp	r0, #0
 8001286:	d1b9      	bne.n	80011fc <_vfprintf_r+0x944>
 8001288:	9c25      	ldr	r4, [sp, #148]	; 0x94
 800128a:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 800128e:	e55e      	b.n	8000d4e <_vfprintf_r+0x496>
 8001290:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001292:	3401      	adds	r4, #1
 8001294:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8001296:	f109 0508 	add.w	r5, r9, #8
 800129a:	2a01      	cmp	r2, #1
 800129c:	f103 0601 	add.w	r6, r3, #1
 80012a0:	f340 818a 	ble.w	80015b8 <_vfprintf_r+0xd00>
 80012a4:	2301      	movs	r3, #1
 80012a6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80012a8:	2e07      	cmp	r6, #7
 80012aa:	f8c9 2000 	str.w	r2, [r9]
 80012ae:	f8c9 3004 	str.w	r3, [r9, #4]
 80012b2:	e9cd 6424 	strd	r6, r4, [sp, #144]	; 0x90
 80012b6:	f300 831f 	bgt.w	80018f8 <_vfprintf_r+0x1040>
 80012ba:	1c72      	adds	r2, r6, #1
 80012bc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80012be:	4611      	mov	r1, r2
 80012c0:	441c      	add	r4, r3
 80012c2:	920e      	str	r2, [sp, #56]	; 0x38
 80012c4:	2907      	cmp	r1, #7
 80012c6:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80012c8:	9425      	str	r4, [sp, #148]	; 0x94
 80012ca:	602a      	str	r2, [r5, #0]
 80012cc:	9124      	str	r1, [sp, #144]	; 0x90
 80012ce:	606b      	str	r3, [r5, #4]
 80012d0:	f300 8305 	bgt.w	80018de <_vfprintf_r+0x1026>
 80012d4:	3508      	adds	r5, #8
 80012d6:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 80012d8:	f105 0908 	add.w	r9, r5, #8
 80012dc:	1c53      	adds	r3, r2, #1
 80012de:	2200      	movs	r2, #0
 80012e0:	461e      	mov	r6, r3
 80012e2:	9310      	str	r3, [sp, #64]	; 0x40
 80012e4:	2300      	movs	r3, #0
 80012e6:	960b      	str	r6, [sp, #44]	; 0x2c
 80012e8:	9e11      	ldr	r6, [sp, #68]	; 0x44
 80012ea:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80012ee:	f106 3aff 	add.w	sl, r6, #4294967295	; 0xffffffff
 80012f2:	f005 fdcf 	bl	8006e94 <__aeabi_dcmpeq>
 80012f6:	2800      	cmp	r0, #0
 80012f8:	f040 8176 	bne.w	80015e8 <_vfprintf_r+0xd30>
 80012fc:	9e0b      	ldr	r6, [sp, #44]	; 0x2c
 80012fe:	4454      	add	r4, sl
 8001300:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001302:	2e07      	cmp	r6, #7
 8001304:	9425      	str	r4, [sp, #148]	; 0x94
 8001306:	f103 0301 	add.w	r3, r3, #1
 800130a:	9624      	str	r6, [sp, #144]	; 0x90
 800130c:	e9c5 3a00 	strd	r3, sl, [r5]
 8001310:	f300 8286 	bgt.w	8001820 <_vfprintf_r+0xf68>
 8001314:	f105 0310 	add.w	r3, r5, #16
 8001318:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800131a:	464d      	mov	r5, r9
 800131c:	3202      	adds	r2, #2
 800131e:	4699      	mov	r9, r3
 8001320:	920b      	str	r2, [sp, #44]	; 0x2c
 8001322:	9a17      	ldr	r2, [sp, #92]	; 0x5c
 8001324:	ab1f      	add	r3, sp, #124	; 0x7c
 8001326:	4414      	add	r4, r2
 8001328:	606a      	str	r2, [r5, #4]
 800132a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800132c:	9425      	str	r4, [sp, #148]	; 0x94
 800132e:	2a07      	cmp	r2, #7
 8001330:	9224      	str	r2, [sp, #144]	; 0x90
 8001332:	602b      	str	r3, [r5, #0]
 8001334:	f77f ad0b 	ble.w	8000d4e <_vfprintf_r+0x496>
 8001338:	e79f      	b.n	800127a <_vfprintf_r+0x9c2>
 800133a:	2e10      	cmp	r6, #16
 800133c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800133e:	dd2b      	ble.n	8001398 <_vfprintf_r+0xae0>
 8001340:	4621      	mov	r1, r4
 8001342:	f04f 0810 	mov.w	r8, #16
 8001346:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 8001348:	e9cd 3518 	strd	r3, r5, [sp, #96]	; 0x60
 800134c:	4635      	mov	r5, r6
 800134e:	9e08      	ldr	r6, [sp, #32]
 8001350:	e002      	b.n	8001358 <_vfprintf_r+0xaa0>
 8001352:	3d10      	subs	r5, #16
 8001354:	2d10      	cmp	r5, #16
 8001356:	dd1b      	ble.n	8001390 <_vfprintf_r+0xad8>
 8001358:	3201      	adds	r2, #1
 800135a:	3110      	adds	r1, #16
 800135c:	4b52      	ldr	r3, [pc, #328]	; (80014a8 <_vfprintf_r+0xbf0>)
 800135e:	f109 0908 	add.w	r9, r9, #8
 8001362:	2a07      	cmp	r2, #7
 8001364:	f849 8c04 	str.w	r8, [r9, #-4]
 8001368:	f849 3c08 	str.w	r3, [r9, #-8]
 800136c:	e9cd 2124 	strd	r2, r1, [sp, #144]	; 0x90
 8001370:	ddef      	ble.n	8001352 <_vfprintf_r+0xa9a>
 8001372:	aa23      	add	r2, sp, #140	; 0x8c
 8001374:	4631      	mov	r1, r6
 8001376:	4620      	mov	r0, r4
 8001378:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 800137c:	f003 fb7c 	bl	8004a78 <__sprint_r>
 8001380:	2800      	cmp	r0, #0
 8001382:	f040 82d4 	bne.w	800192e <_vfprintf_r+0x1076>
 8001386:	3d10      	subs	r5, #16
 8001388:	2d10      	cmp	r5, #16
 800138a:	e9dd 2124 	ldrd	r2, r1, [sp, #144]	; 0x90
 800138e:	dce3      	bgt.n	8001358 <_vfprintf_r+0xaa0>
 8001390:	462e      	mov	r6, r5
 8001392:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8001394:	9d19      	ldr	r5, [sp, #100]	; 0x64
 8001396:	460c      	mov	r4, r1
 8001398:	3201      	adds	r2, #1
 800139a:	4434      	add	r4, r6
 800139c:	4942      	ldr	r1, [pc, #264]	; (80014a8 <_vfprintf_r+0xbf0>)
 800139e:	2a07      	cmp	r2, #7
 80013a0:	f8c9 6004 	str.w	r6, [r9, #4]
 80013a4:	f8c9 1000 	str.w	r1, [r9]
 80013a8:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 80013ac:	f300 82b0 	bgt.w	8001910 <_vfprintf_r+0x1058>
 80013b0:	f109 0908 	add.w	r9, r9, #8
 80013b4:	e489      	b.n	8000cca <_vfprintf_r+0x412>
 80013b6:	aa23      	add	r2, sp, #140	; 0x8c
 80013b8:	9908      	ldr	r1, [sp, #32]
 80013ba:	980c      	ldr	r0, [sp, #48]	; 0x30
 80013bc:	9318      	str	r3, [sp, #96]	; 0x60
 80013be:	f003 fb5b 	bl	8004a78 <__sprint_r>
 80013c2:	2800      	cmp	r0, #0
 80013c4:	f47f af1a 	bne.w	80011fc <_vfprintf_r+0x944>
 80013c8:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80013ca:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 80013ce:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80013d0:	e48f      	b.n	8000cf2 <_vfprintf_r+0x43a>
 80013d2:	aa23      	add	r2, sp, #140	; 0x8c
 80013d4:	9908      	ldr	r1, [sp, #32]
 80013d6:	980c      	ldr	r0, [sp, #48]	; 0x30
 80013d8:	f003 fb4e 	bl	8004a78 <__sprint_r>
 80013dc:	2800      	cmp	r0, #0
 80013de:	f47f af0d 	bne.w	80011fc <_vfprintf_r+0x944>
 80013e2:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80013e4:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 80013e8:	e494      	b.n	8000d14 <_vfprintf_r+0x45c>
 80013ea:	aa30      	add	r2, sp, #192	; 0xc0
 80013ec:	f8dd c054 	ldr.w	ip, [sp, #84]	; 0x54
 80013f0:	0933      	lsrs	r3, r6, #4
 80013f2:	f006 000f 	and.w	r0, r6, #15
 80013f6:	0939      	lsrs	r1, r7, #4
 80013f8:	ea43 7307 	orr.w	r3, r3, r7, lsl #28
 80013fc:	460f      	mov	r7, r1
 80013fe:	461e      	mov	r6, r3
 8001400:	f81c 3000 	ldrb.w	r3, [ip, r0]
 8001404:	f802 3d01 	strb.w	r3, [r2, #-1]!
 8001408:	ea56 0307 	orrs.w	r3, r6, r7
 800140c:	d1f0      	bne.n	80013f0 <_vfprintf_r+0xb38>
 800140e:	ab30      	add	r3, sp, #192	; 0xc0
 8001410:	920f      	str	r2, [sp, #60]	; 0x3c
 8001412:	f8cd 801c 	str.w	r8, [sp, #28]
 8001416:	1a9b      	subs	r3, r3, r2
 8001418:	930b      	str	r3, [sp, #44]	; 0x2c
 800141a:	e500      	b.n	8000e1e <_vfprintf_r+0x566>
 800141c:	2d10      	cmp	r5, #16
 800141e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8001420:	dd24      	ble.n	800146c <_vfprintf_r+0xbb4>
 8001422:	2610      	movs	r6, #16
 8001424:	f8dd 8030 	ldr.w	r8, [sp, #48]	; 0x30
 8001428:	f8dd a020 	ldr.w	sl, [sp, #32]
 800142c:	e002      	b.n	8001434 <_vfprintf_r+0xb7c>
 800142e:	3d10      	subs	r5, #16
 8001430:	2d10      	cmp	r5, #16
 8001432:	dd1b      	ble.n	800146c <_vfprintf_r+0xbb4>
 8001434:	3301      	adds	r3, #1
 8001436:	3410      	adds	r4, #16
 8001438:	4a1b      	ldr	r2, [pc, #108]	; (80014a8 <_vfprintf_r+0xbf0>)
 800143a:	f109 0908 	add.w	r9, r9, #8
 800143e:	2b07      	cmp	r3, #7
 8001440:	f849 6c04 	str.w	r6, [r9, #-4]
 8001444:	f849 2c08 	str.w	r2, [r9, #-8]
 8001448:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 800144c:	ddef      	ble.n	800142e <_vfprintf_r+0xb76>
 800144e:	aa23      	add	r2, sp, #140	; 0x8c
 8001450:	4651      	mov	r1, sl
 8001452:	4640      	mov	r0, r8
 8001454:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001458:	f003 fb0e 	bl	8004a78 <__sprint_r>
 800145c:	2800      	cmp	r0, #0
 800145e:	f47f aecf 	bne.w	8001200 <_vfprintf_r+0x948>
 8001462:	3d10      	subs	r5, #16
 8001464:	2d10      	cmp	r5, #16
 8001466:	e9dd 3424 	ldrd	r3, r4, [sp, #144]	; 0x90
 800146a:	dce3      	bgt.n	8001434 <_vfprintf_r+0xb7c>
 800146c:	3301      	adds	r3, #1
 800146e:	442c      	add	r4, r5
 8001470:	4a0d      	ldr	r2, [pc, #52]	; (80014a8 <_vfprintf_r+0xbf0>)
 8001472:	2b07      	cmp	r3, #7
 8001474:	f8c9 5004 	str.w	r5, [r9, #4]
 8001478:	f8c9 2000 	str.w	r2, [r9]
 800147c:	e9cd 3424 	strd	r3, r4, [sp, #144]	; 0x90
 8001480:	f77f ac6d 	ble.w	8000d5e <_vfprintf_r+0x4a6>
 8001484:	aa23      	add	r2, sp, #140	; 0x8c
 8001486:	9908      	ldr	r1, [sp, #32]
 8001488:	980c      	ldr	r0, [sp, #48]	; 0x30
 800148a:	f003 faf5 	bl	8004a78 <__sprint_r>
 800148e:	2800      	cmp	r0, #0
 8001490:	f47f aeb4 	bne.w	80011fc <_vfprintf_r+0x944>
 8001494:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001496:	e462      	b.n	8000d5e <_vfprintf_r+0x4a6>
 8001498:	ab30      	add	r3, sp, #192	; 0xc0
 800149a:	4615      	mov	r5, r2
 800149c:	920b      	str	r2, [sp, #44]	; 0x2c
 800149e:	930f      	str	r3, [sp, #60]	; 0x3c
 80014a0:	e4bd      	b.n	8000e1e <_vfprintf_r+0x566>
 80014a2:	bf00      	nop
 80014a4:	0800adc4 	.word	0x0800adc4
 80014a8:	0800aa94 	.word	0x0800aa94
 80014ac:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 80014ae:	2b00      	cmp	r3, #0
 80014b0:	f77f aeaf 	ble.w	8001212 <_vfprintf_r+0x95a>
 80014b4:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80014b8:	4293      	cmp	r3, r2
 80014ba:	bfa8      	it	ge
 80014bc:	4613      	movge	r3, r2
 80014be:	2b00      	cmp	r3, #0
 80014c0:	461d      	mov	r5, r3
 80014c2:	dd0e      	ble.n	80014e2 <_vfprintf_r+0xc2a>
 80014c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80014c6:	442c      	add	r4, r5
 80014c8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80014ca:	3301      	adds	r3, #1
 80014cc:	9425      	str	r4, [sp, #148]	; 0x94
 80014ce:	f8c9 2000 	str.w	r2, [r9]
 80014d2:	2b07      	cmp	r3, #7
 80014d4:	f8c9 5004 	str.w	r5, [r9, #4]
 80014d8:	9324      	str	r3, [sp, #144]	; 0x90
 80014da:	f300 8390 	bgt.w	8001bfe <_vfprintf_r+0x1346>
 80014de:	f109 0908 	add.w	r9, r9, #8
 80014e2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80014e4:	2d00      	cmp	r5, #0
 80014e6:	bfa8      	it	ge
 80014e8:	1b5b      	subge	r3, r3, r5
 80014ea:	2b00      	cmp	r3, #0
 80014ec:	461d      	mov	r5, r3
 80014ee:	f300 81c6 	bgt.w	800187e <_vfprintf_r+0xfc6>
 80014f2:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 80014f4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80014f6:	429a      	cmp	r2, r3
 80014f8:	f280 8183 	bge.w	8001802 <_vfprintf_r+0xf4a>
 80014fc:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80014fe:	9914      	ldr	r1, [sp, #80]	; 0x50
 8001500:	3301      	adds	r3, #1
 8001502:	9816      	ldr	r0, [sp, #88]	; 0x58
 8001504:	440c      	add	r4, r1
 8001506:	f8c9 1004 	str.w	r1, [r9, #4]
 800150a:	2b07      	cmp	r3, #7
 800150c:	f8c9 0000 	str.w	r0, [r9]
 8001510:	9425      	str	r4, [sp, #148]	; 0x94
 8001512:	9324      	str	r3, [sp, #144]	; 0x90
 8001514:	f300 830d 	bgt.w	8001b32 <_vfprintf_r+0x127a>
 8001518:	f109 0908 	add.w	r9, r9, #8
 800151c:	9910      	ldr	r1, [sp, #64]	; 0x40
 800151e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001520:	4291      	cmp	r1, r2
 8001522:	eba3 0302 	sub.w	r3, r3, r2
 8001526:	f280 8177 	bge.w	8001818 <_vfprintf_r+0xf60>
 800152a:	461d      	mov	r5, r3
 800152c:	2d00      	cmp	r5, #0
 800152e:	dd10      	ble.n	8001552 <_vfprintf_r+0xc9a>
 8001530:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001532:	442c      	add	r4, r5
 8001534:	f8c9 5004 	str.w	r5, [r9, #4]
 8001538:	3201      	adds	r2, #1
 800153a:	e9dd 100f 	ldrd	r1, r0, [sp, #60]	; 0x3c
 800153e:	2a07      	cmp	r2, #7
 8001540:	4401      	add	r1, r0
 8001542:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 8001546:	f8c9 1000 	str.w	r1, [r9]
 800154a:	f300 8373 	bgt.w	8001c34 <_vfprintf_r+0x137c>
 800154e:	f109 0908 	add.w	r9, r9, #8
 8001552:	2d00      	cmp	r5, #0
 8001554:	bfac      	ite	ge
 8001556:	1b5d      	subge	r5, r3, r5
 8001558:	461d      	movlt	r5, r3
 800155a:	2d00      	cmp	r5, #0
 800155c:	f77f abf7 	ble.w	8000d4e <_vfprintf_r+0x496>
 8001560:	2d10      	cmp	r5, #16
 8001562:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001564:	f8df 84c8 	ldr.w	r8, [pc, #1224]	; 8001a30 <_vfprintf_r+0x1178>
 8001568:	f340 81e7 	ble.w	800193a <_vfprintf_r+0x1082>
 800156c:	4641      	mov	r1, r8
 800156e:	4623      	mov	r3, r4
 8001570:	46b8      	mov	r8, r7
 8001572:	2610      	movs	r6, #16
 8001574:	f8dd a030 	ldr.w	sl, [sp, #48]	; 0x30
 8001578:	460f      	mov	r7, r1
 800157a:	9c08      	ldr	r4, [sp, #32]
 800157c:	e003      	b.n	8001586 <_vfprintf_r+0xcce>
 800157e:	3d10      	subs	r5, #16
 8001580:	2d10      	cmp	r5, #16
 8001582:	f340 81d6 	ble.w	8001932 <_vfprintf_r+0x107a>
 8001586:	3201      	adds	r2, #1
 8001588:	3310      	adds	r3, #16
 800158a:	f8c9 7000 	str.w	r7, [r9]
 800158e:	f109 0908 	add.w	r9, r9, #8
 8001592:	2a07      	cmp	r2, #7
 8001594:	f849 6c04 	str.w	r6, [r9, #-4]
 8001598:	e9cd 2324 	strd	r2, r3, [sp, #144]	; 0x90
 800159c:	ddef      	ble.n	800157e <_vfprintf_r+0xcc6>
 800159e:	aa23      	add	r2, sp, #140	; 0x8c
 80015a0:	4621      	mov	r1, r4
 80015a2:	4650      	mov	r0, sl
 80015a4:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 80015a8:	f003 fa66 	bl	8004a78 <__sprint_r>
 80015ac:	2800      	cmp	r0, #0
 80015ae:	f040 82a6 	bne.w	8001afe <_vfprintf_r+0x1246>
 80015b2:	e9dd 2324 	ldrd	r2, r3, [sp, #144]	; 0x90
 80015b6:	e7e2      	b.n	800157e <_vfprintf_r+0xcc6>
 80015b8:	9a07      	ldr	r2, [sp, #28]
 80015ba:	07d0      	lsls	r0, r2, #31
 80015bc:	f53f ae72 	bmi.w	80012a4 <_vfprintf_r+0x9ec>
 80015c0:	2201      	movs	r2, #1
 80015c2:	990f      	ldr	r1, [sp, #60]	; 0x3c
 80015c4:	2e07      	cmp	r6, #7
 80015c6:	f8c9 1000 	str.w	r1, [r9]
 80015ca:	f8c9 2004 	str.w	r2, [r9, #4]
 80015ce:	e9cd 6424 	strd	r6, r4, [sp, #144]	; 0x90
 80015d2:	f300 8125 	bgt.w	8001820 <_vfprintf_r+0xf68>
 80015d6:	3302      	adds	r3, #2
 80015d8:	f109 0910 	add.w	r9, r9, #16
 80015dc:	930b      	str	r3, [sp, #44]	; 0x2c
 80015de:	e6a0      	b.n	8001322 <_vfprintf_r+0xa6a>
 80015e0:	461d      	mov	r5, r3
 80015e2:	ab30      	add	r3, sp, #192	; 0xc0
 80015e4:	930f      	str	r3, [sp, #60]	; 0x3c
 80015e6:	e41a      	b.n	8000e1e <_vfprintf_r+0x566>
 80015e8:	f1ba 0f00 	cmp.w	sl, #0
 80015ec:	f77f ae99 	ble.w	8001322 <_vfprintf_r+0xa6a>
 80015f0:	f1ba 0f10 	cmp.w	sl, #16
 80015f4:	f340 8412 	ble.w	8001e1c <_vfprintf_r+0x1564>
 80015f8:	f8df 8434 	ldr.w	r8, [pc, #1076]	; 8001a30 <_vfprintf_r+0x1178>
 80015fc:	4622      	mov	r2, r4
 80015fe:	f04f 0910 	mov.w	r9, #16
 8001602:	9910      	ldr	r1, [sp, #64]	; 0x40
 8001604:	4644      	mov	r4, r8
 8001606:	46b8      	mov	r8, r7
 8001608:	9f08      	ldr	r7, [sp, #32]
 800160a:	e006      	b.n	800161a <_vfprintf_r+0xd62>
 800160c:	f1aa 0a10 	sub.w	sl, sl, #16
 8001610:	1c71      	adds	r1, r6, #1
 8001612:	f1ba 0f10 	cmp.w	sl, #16
 8001616:	f340 81f2 	ble.w	80019fe <_vfprintf_r+0x1146>
 800161a:	3210      	adds	r2, #16
 800161c:	2907      	cmp	r1, #7
 800161e:	602c      	str	r4, [r5, #0]
 8001620:	460e      	mov	r6, r1
 8001622:	f8c5 9004 	str.w	r9, [r5, #4]
 8001626:	f105 0508 	add.w	r5, r5, #8
 800162a:	e9cd 1224 	strd	r1, r2, [sp, #144]	; 0x90
 800162e:	dded      	ble.n	800160c <_vfprintf_r+0xd54>
 8001630:	aa23      	add	r2, sp, #140	; 0x8c
 8001632:	4639      	mov	r1, r7
 8001634:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001636:	ad30      	add	r5, sp, #192	; 0xc0
 8001638:	f003 fa1e 	bl	8004a78 <__sprint_r>
 800163c:	2800      	cmp	r0, #0
 800163e:	f040 837a 	bne.w	8001d36 <_vfprintf_r+0x147e>
 8001642:	e9dd 6224 	ldrd	r6, r2, [sp, #144]	; 0x90
 8001646:	e7e1      	b.n	800160c <_vfprintf_r+0xd54>
 8001648:	aa23      	add	r2, sp, #140	; 0x8c
 800164a:	9908      	ldr	r1, [sp, #32]
 800164c:	980c      	ldr	r0, [sp, #48]	; 0x30
 800164e:	f003 fa13 	bl	8004a78 <__sprint_r>
 8001652:	2800      	cmp	r0, #0
 8001654:	f47f add2 	bne.w	80011fc <_vfprintf_r+0x944>
 8001658:	9c25      	ldr	r4, [sp, #148]	; 0x94
 800165a:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 800165e:	f7ff bb62 	b.w	8000d26 <_vfprintf_r+0x46e>
 8001662:	17f7      	asrs	r7, r6, #31
 8001664:	4632      	mov	r2, r6
 8001666:	463b      	mov	r3, r7
 8001668:	2a00      	cmp	r2, #0
 800166a:	f173 0300 	sbcs.w	r3, r3, #0
 800166e:	f6bf aaf3 	bge.w	8000c58 <_vfprintf_r+0x3a0>
 8001672:	242d      	movs	r4, #45	; 0x2d
 8001674:	4276      	negs	r6, r6
 8001676:	f04f 0301 	mov.w	r3, #1
 800167a:	eb67 0747 	sbc.w	r7, r7, r7, lsl #1
 800167e:	f88d 406f 	strb.w	r4, [sp, #111]	; 0x6f
 8001682:	f7ff bbad 	b.w	8000de0 <_vfprintf_r+0x528>
 8001686:	2700      	movs	r7, #0
 8001688:	f7ff ba95 	b.w	8000bb6 <_vfprintf_r+0x2fe>
 800168c:	9b07      	ldr	r3, [sp, #28]
 800168e:	07db      	lsls	r3, r3, #31
 8001690:	f53f acb7 	bmi.w	8001002 <_vfprintf_r+0x74a>
 8001694:	f7ff bb5b 	b.w	8000d4e <_vfprintf_r+0x496>
 8001698:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800169c:	460b      	mov	r3, r1
 800169e:	4602      	mov	r2, r0
 80016a0:	f005 fc2a 	bl	8006ef8 <__aeabi_dcmpun>
 80016a4:	4601      	mov	r1, r0
 80016a6:	2800      	cmp	r0, #0
 80016a8:	f040 8376 	bne.w	8001d98 <_vfprintf_r+0x14e0>
 80016ac:	1c6c      	adds	r4, r5, #1
 80016ae:	f02a 0720 	bic.w	r7, sl, #32
 80016b2:	f000 81bf 	beq.w	8001a34 <_vfprintf_r+0x117c>
 80016b6:	2d00      	cmp	r5, #0
 80016b8:	f040 81bd 	bne.w	8001a36 <_vfprintf_r+0x117e>
 80016bc:	2f47      	cmp	r7, #71	; 0x47
 80016be:	f040 81ba 	bne.w	8001a36 <_vfprintf_r+0x117e>
 80016c2:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80016c6:	9307      	str	r3, [sp, #28]
 80016c8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80016ca:	1e1e      	subs	r6, r3, #0
 80016cc:	f2c0 81bf 	blt.w	8001a4e <_vfprintf_r+0x1196>
 80016d0:	2501      	movs	r5, #1
 80016d2:	a821      	add	r0, sp, #132	; 0x84
 80016d4:	aa1e      	add	r2, sp, #120	; 0x78
 80016d6:	ab1d      	add	r3, sp, #116	; 0x74
 80016d8:	2402      	movs	r4, #2
 80016da:	9501      	str	r5, [sp, #4]
 80016dc:	9302      	str	r3, [sp, #8]
 80016de:	9400      	str	r4, [sp, #0]
 80016e0:	462c      	mov	r4, r5
 80016e2:	910e      	str	r1, [sp, #56]	; 0x38
 80016e4:	e9cd 2003 	strd	r2, r0, [sp, #12]
 80016e8:	e9dd 2312 	ldrd	r2, r3, [sp, #72]	; 0x48
 80016ec:	980c      	ldr	r0, [sp, #48]	; 0x30
 80016ee:	f000 fd37 	bl	8002160 <_dtoa_r>
 80016f2:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80016f4:	900f      	str	r0, [sp, #60]	; 0x3c
 80016f6:	930b      	str	r3, [sp, #44]	; 0x2c
 80016f8:	f018 0f01 	tst.w	r8, #1
 80016fc:	f040 827c 	bne.w	8001bf8 <_vfprintf_r+0x1340>
 8001700:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8001702:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8001704:	9210      	str	r2, [sp, #64]	; 0x40
 8001706:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001708:	1a9b      	subs	r3, r3, r2
 800170a:	9311      	str	r3, [sp, #68]	; 0x44
 800170c:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800170e:	429d      	cmp	r5, r3
 8001710:	db02      	blt.n	8001718 <_vfprintf_r+0xe60>
 8001712:	3303      	adds	r3, #3
 8001714:	f280 824a 	bge.w	8001bac <_vfprintf_r+0x12f4>
 8001718:	f1aa 0a02 	sub.w	sl, sl, #2
 800171c:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800171e:	f88d a07c 	strb.w	sl, [sp, #124]	; 0x7c
 8001722:	1e5a      	subs	r2, r3, #1
 8001724:	2a00      	cmp	r2, #0
 8001726:	921d      	str	r2, [sp, #116]	; 0x74
 8001728:	f2c0 832b 	blt.w	8001d82 <_vfprintf_r+0x14ca>
 800172c:	232b      	movs	r3, #43	; 0x2b
 800172e:	2a09      	cmp	r2, #9
 8001730:	f88d 307d 	strb.w	r3, [sp, #125]	; 0x7d
 8001734:	f340 831c 	ble.w	8001d70 <_vfprintf_r+0x14b8>
 8001738:	f10d 058b 	add.w	r5, sp, #139	; 0x8b
 800173c:	4eba      	ldr	r6, [pc, #744]	; (8001a28 <_vfprintf_r+0x1170>)
 800173e:	462c      	mov	r4, r5
 8001740:	e000      	b.n	8001744 <_vfprintf_r+0xe8c>
 8001742:	4604      	mov	r4, r0
 8001744:	fb86 3102 	smull	r3, r1, r6, r2
 8001748:	17d3      	asrs	r3, r2, #31
 800174a:	2a63      	cmp	r2, #99	; 0x63
 800174c:	f104 30ff 	add.w	r0, r4, #4294967295	; 0xffffffff
 8001750:	ebc3 03a1 	rsb	r3, r3, r1, asr #2
 8001754:	eb03 0183 	add.w	r1, r3, r3, lsl #2
 8001758:	eba2 0141 	sub.w	r1, r2, r1, lsl #1
 800175c:	461a      	mov	r2, r3
 800175e:	f101 0130 	add.w	r1, r1, #48	; 0x30
 8001762:	f804 1c01 	strb.w	r1, [r4, #-1]
 8001766:	dcec      	bgt.n	8001742 <_vfprintf_r+0xe8a>
 8001768:	3330      	adds	r3, #48	; 0x30
 800176a:	1ea2      	subs	r2, r4, #2
 800176c:	b2db      	uxtb	r3, r3
 800176e:	4295      	cmp	r5, r2
 8001770:	f800 3c01 	strb.w	r3, [r0, #-1]
 8001774:	f240 835b 	bls.w	8001e2e <_vfprintf_r+0x1576>
 8001778:	f10d 027e 	add.w	r2, sp, #126	; 0x7e
 800177c:	e001      	b.n	8001782 <_vfprintf_r+0xeca>
 800177e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8001782:	4285      	cmp	r5, r0
 8001784:	f802 3b01 	strb.w	r3, [r2], #1
 8001788:	d1f9      	bne.n	800177e <_vfprintf_r+0xec6>
 800178a:	f10d 038d 	add.w	r3, sp, #141	; 0x8d
 800178e:	f10d 017e 	add.w	r1, sp, #126	; 0x7e
 8001792:	aa1f      	add	r2, sp, #124	; 0x7c
 8001794:	1b1b      	subs	r3, r3, r4
 8001796:	440b      	add	r3, r1
 8001798:	1a9b      	subs	r3, r3, r2
 800179a:	9317      	str	r3, [sp, #92]	; 0x5c
 800179c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800179e:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 80017a0:	2a01      	cmp	r2, #1
 80017a2:	4413      	add	r3, r2
 80017a4:	930b      	str	r3, [sp, #44]	; 0x2c
 80017a6:	f340 830a 	ble.w	8001dbe <_vfprintf_r+0x1506>
 80017aa:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80017ac:	9a14      	ldr	r2, [sp, #80]	; 0x50
 80017ae:	4413      	add	r3, r2
 80017b0:	2200      	movs	r2, #0
 80017b2:	930b      	str	r3, [sp, #44]	; 0x2c
 80017b4:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 80017b8:	9210      	str	r2, [sp, #64]	; 0x40
 80017ba:	e197      	b.n	8001aec <_vfprintf_r+0x1234>
 80017bc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80017c0:	f04f 0700 	mov.w	r7, #0
 80017c4:	f04f 0301 	mov.w	r3, #1
 80017c8:	bf18      	it	ne
 80017ca:	b2b6      	uxthne	r6, r6
 80017cc:	f7ff bb04 	b.w	8000dd8 <_vfprintf_r+0x520>
 80017d0:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80017d2:	4610      	mov	r0, r2
 80017d4:	17d1      	asrs	r1, r2, #31
 80017d6:	e9c3 0100 	strd	r0, r1, [r3]
 80017da:	f7ff b8b1 	b.w	8000940 <_vfprintf_r+0x88>
 80017de:	4264      	negs	r4, r4
 80017e0:	910d      	str	r1, [sp, #52]	; 0x34
 80017e2:	940a      	str	r4, [sp, #40]	; 0x28
 80017e4:	f7ff b9b7 	b.w	8000b56 <_vfprintf_r+0x29e>
 80017e8:	2330      	movs	r3, #48	; 0x30
 80017ea:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80017ec:	3902      	subs	r1, #2
 80017ee:	f8cd 801c 	str.w	r8, [sp, #28]
 80017f2:	f802 3c01 	strb.w	r3, [r2, #-1]
 80017f6:	ab30      	add	r3, sp, #192	; 0xc0
 80017f8:	910f      	str	r1, [sp, #60]	; 0x3c
 80017fa:	1a5b      	subs	r3, r3, r1
 80017fc:	930b      	str	r3, [sp, #44]	; 0x2c
 80017fe:	f7ff bb0e 	b.w	8000e1e <_vfprintf_r+0x566>
 8001802:	9b07      	ldr	r3, [sp, #28]
 8001804:	07dd      	lsls	r5, r3, #31
 8001806:	f53f ae79 	bmi.w	80014fc <_vfprintf_r+0xc44>
 800180a:	9910      	ldr	r1, [sp, #64]	; 0x40
 800180c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800180e:	428a      	cmp	r2, r1
 8001810:	eba3 0302 	sub.w	r3, r3, r2
 8001814:	f300 81ac 	bgt.w	8001b70 <_vfprintf_r+0x12b8>
 8001818:	e9dd 1210 	ldrd	r1, r2, [sp, #64]	; 0x40
 800181c:	1a55      	subs	r5, r2, r1
 800181e:	e685      	b.n	800152c <_vfprintf_r+0xc74>
 8001820:	aa23      	add	r2, sp, #140	; 0x8c
 8001822:	9908      	ldr	r1, [sp, #32]
 8001824:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001826:	f003 f927 	bl	8004a78 <__sprint_r>
 800182a:	2800      	cmp	r0, #0
 800182c:	f47f ace6 	bne.w	80011fc <_vfprintf_r+0x944>
 8001830:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8001832:	f10d 09c8 	add.w	r9, sp, #200	; 0xc8
 8001836:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001838:	ad30      	add	r5, sp, #192	; 0xc0
 800183a:	3301      	adds	r3, #1
 800183c:	930b      	str	r3, [sp, #44]	; 0x2c
 800183e:	e570      	b.n	8001322 <_vfprintf_r+0xa6a>
 8001840:	f89b 3001 	ldrb.w	r3, [fp, #1]
 8001844:	f048 0820 	orr.w	r8, r8, #32
 8001848:	f10b 0b01 	add.w	fp, fp, #1
 800184c:	f7ff b8ad 	b.w	80009aa <_vfprintf_r+0xf2>
 8001850:	aa23      	add	r2, sp, #140	; 0x8c
 8001852:	9908      	ldr	r1, [sp, #32]
 8001854:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001856:	f003 f90f 	bl	8004a78 <__sprint_r>
 800185a:	2800      	cmp	r0, #0
 800185c:	f47f acce 	bne.w	80011fc <_vfprintf_r+0x944>
 8001860:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001862:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001866:	f7ff bbdc 	b.w	8001022 <_vfprintf_r+0x76a>
 800186a:	2d06      	cmp	r5, #6
 800186c:	4b6f      	ldr	r3, [pc, #444]	; (8001a2c <_vfprintf_r+0x1174>)
 800186e:	940d      	str	r4, [sp, #52]	; 0x34
 8001870:	bf28      	it	cs
 8001872:	2506      	movcs	r5, #6
 8001874:	930f      	str	r3, [sp, #60]	; 0x3c
 8001876:	462f      	mov	r7, r5
 8001878:	950b      	str	r5, [sp, #44]	; 0x2c
 800187a:	f7ff ba12 	b.w	8000ca2 <_vfprintf_r+0x3ea>
 800187e:	2b10      	cmp	r3, #16
 8001880:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001882:	f8df 81ac 	ldr.w	r8, [pc, #428]	; 8001a30 <_vfprintf_r+0x1178>
 8001886:	f340 8147 	ble.w	8001b18 <_vfprintf_r+0x1260>
 800188a:	4641      	mov	r1, r8
 800188c:	4623      	mov	r3, r4
 800188e:	46b8      	mov	r8, r7
 8001890:	2610      	movs	r6, #16
 8001892:	f8dd a030 	ldr.w	sl, [sp, #48]	; 0x30
 8001896:	460f      	mov	r7, r1
 8001898:	9c08      	ldr	r4, [sp, #32]
 800189a:	e003      	b.n	80018a4 <_vfprintf_r+0xfec>
 800189c:	3d10      	subs	r5, #16
 800189e:	2d10      	cmp	r5, #16
 80018a0:	f340 8136 	ble.w	8001b10 <_vfprintf_r+0x1258>
 80018a4:	3201      	adds	r2, #1
 80018a6:	3310      	adds	r3, #16
 80018a8:	f8c9 7000 	str.w	r7, [r9]
 80018ac:	f109 0908 	add.w	r9, r9, #8
 80018b0:	2a07      	cmp	r2, #7
 80018b2:	f849 6c04 	str.w	r6, [r9, #-4]
 80018b6:	e9cd 2324 	strd	r2, r3, [sp, #144]	; 0x90
 80018ba:	ddef      	ble.n	800189c <_vfprintf_r+0xfe4>
 80018bc:	aa23      	add	r2, sp, #140	; 0x8c
 80018be:	4621      	mov	r1, r4
 80018c0:	4650      	mov	r0, sl
 80018c2:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 80018c6:	f003 f8d7 	bl	8004a78 <__sprint_r>
 80018ca:	2800      	cmp	r0, #0
 80018cc:	f040 8117 	bne.w	8001afe <_vfprintf_r+0x1246>
 80018d0:	e9dd 2324 	ldrd	r2, r3, [sp, #144]	; 0x90
 80018d4:	e7e2      	b.n	800189c <_vfprintf_r+0xfe4>
 80018d6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80018d8:	601a      	str	r2, [r3, #0]
 80018da:	f7ff b831 	b.w	8000940 <_vfprintf_r+0x88>
 80018de:	aa23      	add	r2, sp, #140	; 0x8c
 80018e0:	9908      	ldr	r1, [sp, #32]
 80018e2:	980c      	ldr	r0, [sp, #48]	; 0x30
 80018e4:	f003 f8c8 	bl	8004a78 <__sprint_r>
 80018e8:	2800      	cmp	r0, #0
 80018ea:	f47f ac87 	bne.w	80011fc <_vfprintf_r+0x944>
 80018ee:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80018f0:	ad30      	add	r5, sp, #192	; 0xc0
 80018f2:	9c25      	ldr	r4, [sp, #148]	; 0x94
 80018f4:	930e      	str	r3, [sp, #56]	; 0x38
 80018f6:	e4ee      	b.n	80012d6 <_vfprintf_r+0xa1e>
 80018f8:	aa23      	add	r2, sp, #140	; 0x8c
 80018fa:	9908      	ldr	r1, [sp, #32]
 80018fc:	980c      	ldr	r0, [sp, #48]	; 0x30
 80018fe:	f003 f8bb 	bl	8004a78 <__sprint_r>
 8001902:	2800      	cmp	r0, #0
 8001904:	f47f ac7a 	bne.w	80011fc <_vfprintf_r+0x944>
 8001908:	9c25      	ldr	r4, [sp, #148]	; 0x94
 800190a:	ad30      	add	r5, sp, #192	; 0xc0
 800190c:	9e24      	ldr	r6, [sp, #144]	; 0x90
 800190e:	e4d4      	b.n	80012ba <_vfprintf_r+0xa02>
 8001910:	aa23      	add	r2, sp, #140	; 0x8c
 8001912:	9908      	ldr	r1, [sp, #32]
 8001914:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001916:	9318      	str	r3, [sp, #96]	; 0x60
 8001918:	f003 f8ae 	bl	8004a78 <__sprint_r>
 800191c:	2800      	cmp	r0, #0
 800191e:	f47f ac6d 	bne.w	80011fc <_vfprintf_r+0x944>
 8001922:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001924:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001928:	9b18      	ldr	r3, [sp, #96]	; 0x60
 800192a:	f7ff b9ce 	b.w	8000cca <_vfprintf_r+0x412>
 800192e:	46b2      	mov	sl, r6
 8001930:	e466      	b.n	8001200 <_vfprintf_r+0x948>
 8001932:	461c      	mov	r4, r3
 8001934:	463b      	mov	r3, r7
 8001936:	4647      	mov	r7, r8
 8001938:	4698      	mov	r8, r3
 800193a:	3201      	adds	r2, #1
 800193c:	442c      	add	r4, r5
 800193e:	f8c9 8000 	str.w	r8, [r9]
 8001942:	2a07      	cmp	r2, #7
 8001944:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 8001948:	f8c9 5004 	str.w	r5, [r9, #4]
 800194c:	f77f a9fd 	ble.w	8000d4a <_vfprintf_r+0x492>
 8001950:	e493      	b.n	800127a <_vfprintf_r+0x9c2>
 8001952:	aa23      	add	r2, sp, #140	; 0x8c
 8001954:	9908      	ldr	r1, [sp, #32]
 8001956:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001958:	f003 f88e 	bl	8004a78 <__sprint_r>
 800195c:	2800      	cmp	r0, #0
 800195e:	f47f ac4d 	bne.w	80011fc <_vfprintf_r+0x944>
 8001962:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001966:	f7ff bb46 	b.w	8000ff6 <_vfprintf_r+0x73e>
 800196a:	aa23      	add	r2, sp, #140	; 0x8c
 800196c:	9908      	ldr	r1, [sp, #32]
 800196e:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001970:	f003 f882 	bl	8004a78 <__sprint_r>
 8001974:	2800      	cmp	r0, #0
 8001976:	f47f ac41 	bne.w	80011fc <_vfprintf_r+0x944>
 800197a:	9c25      	ldr	r4, [sp, #148]	; 0x94
 800197c:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001980:	f7ff b9cc 	b.w	8000d1c <_vfprintf_r+0x464>
 8001984:	46aa      	mov	sl, r5
 8001986:	e43b      	b.n	8001200 <_vfprintf_r+0x948>
 8001988:	ab30      	add	r3, sp, #192	; 0xc0
 800198a:	f8cd b01c 	str.w	fp, [sp, #28]
 800198e:	46a3      	mov	fp, r4
 8001990:	461c      	mov	r4, r3
 8001992:	e000      	b.n	8001996 <_vfprintf_r+0x10de>
 8001994:	460f      	mov	r7, r1
 8001996:	4630      	mov	r0, r6
 8001998:	220a      	movs	r2, #10
 800199a:	2300      	movs	r3, #0
 800199c:	4639      	mov	r1, r7
 800199e:	f7fe fc71 	bl	8000284 <__aeabi_uldivmod>
 80019a2:	3230      	adds	r2, #48	; 0x30
 80019a4:	4630      	mov	r0, r6
 80019a6:	4639      	mov	r1, r7
 80019a8:	f804 2d01 	strb.w	r2, [r4, #-1]!
 80019ac:	2300      	movs	r3, #0
 80019ae:	220a      	movs	r2, #10
 80019b0:	f7fe fc68 	bl	8000284 <__aeabi_uldivmod>
 80019b4:	2f00      	cmp	r7, #0
 80019b6:	bf08      	it	eq
 80019b8:	2e0a      	cmpeq	r6, #10
 80019ba:	4606      	mov	r6, r0
 80019bc:	d2ea      	bcs.n	8001994 <_vfprintf_r+0x10dc>
 80019be:	4622      	mov	r2, r4
 80019c0:	ab30      	add	r3, sp, #192	; 0xc0
 80019c2:	940f      	str	r4, [sp, #60]	; 0x3c
 80019c4:	465c      	mov	r4, fp
 80019c6:	1a9b      	subs	r3, r3, r2
 80019c8:	f8dd b01c 	ldr.w	fp, [sp, #28]
 80019cc:	f8cd 801c 	str.w	r8, [sp, #28]
 80019d0:	930b      	str	r3, [sp, #44]	; 0x2c
 80019d2:	f7ff ba24 	b.w	8000e1e <_vfprintf_r+0x566>
 80019d6:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80019d8:	f8dd a020 	ldr.w	sl, [sp, #32]
 80019dc:	2b00      	cmp	r3, #0
 80019de:	f43f ac0f 	beq.w	8001200 <_vfprintf_r+0x948>
 80019e2:	980c      	ldr	r0, [sp, #48]	; 0x30
 80019e4:	aa23      	add	r2, sp, #140	; 0x8c
 80019e6:	4651      	mov	r1, sl
 80019e8:	f003 f846 	bl	8004a78 <__sprint_r>
 80019ec:	e408      	b.n	8001200 <_vfprintf_r+0x948>
 80019ee:	980f      	ldr	r0, [sp, #60]	; 0x3c
 80019f0:	4635      	mov	r5, r6
 80019f2:	f002 ffd9 	bl	80049a8 <strlen>
 80019f6:	4603      	mov	r3, r0
 80019f8:	900b      	str	r0, [sp, #44]	; 0x2c
 80019fa:	f7ff b906 	b.w	8000c0a <_vfprintf_r+0x352>
 80019fe:	4647      	mov	r7, r8
 8001a00:	46a0      	mov	r8, r4
 8001a02:	4614      	mov	r4, r2
 8001a04:	f105 0208 	add.w	r2, r5, #8
 8001a08:	910b      	str	r1, [sp, #44]	; 0x2c
 8001a0a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8001a0c:	4454      	add	r4, sl
 8001a0e:	2b07      	cmp	r3, #7
 8001a10:	9425      	str	r4, [sp, #148]	; 0x94
 8001a12:	9324      	str	r3, [sp, #144]	; 0x90
 8001a14:	e9c5 8a00 	strd	r8, sl, [r5]
 8001a18:	f73f af02 	bgt.w	8001820 <_vfprintf_r+0xf68>
 8001a1c:	3301      	adds	r3, #1
 8001a1e:	f102 0908 	add.w	r9, r2, #8
 8001a22:	4615      	mov	r5, r2
 8001a24:	930b      	str	r3, [sp, #44]	; 0x2c
 8001a26:	e47c      	b.n	8001322 <_vfprintf_r+0xa6a>
 8001a28:	66666667 	.word	0x66666667
 8001a2c:	0800adbc 	.word	0x0800adbc
 8001a30:	0800aaa4 	.word	0x0800aaa4
 8001a34:	2506      	movs	r5, #6
 8001a36:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8001a3a:	9307      	str	r3, [sp, #28]
 8001a3c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8001a3e:	2b00      	cmp	r3, #0
 8001a40:	db06      	blt.n	8001a50 <_vfprintf_r+0x1198>
 8001a42:	461e      	mov	r6, r3
 8001a44:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8001a46:	930b      	str	r3, [sp, #44]	; 0x2c
 8001a48:	2300      	movs	r3, #0
 8001a4a:	930e      	str	r3, [sp, #56]	; 0x38
 8001a4c:	e007      	b.n	8001a5e <_vfprintf_r+0x11a6>
 8001a4e:	2501      	movs	r5, #1
 8001a50:	232d      	movs	r3, #45	; 0x2d
 8001a52:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8001a56:	930e      	str	r3, [sp, #56]	; 0x38
 8001a58:	f102 4600 	add.w	r6, r2, #2147483648	; 0x80000000
 8001a5c:	910b      	str	r1, [sp, #44]	; 0x2c
 8001a5e:	2f46      	cmp	r7, #70	; 0x46
 8001a60:	f040 80b4 	bne.w	8001bcc <_vfprintf_r+0x1314>
 8001a64:	a821      	add	r0, sp, #132	; 0x84
 8001a66:	a91e      	add	r1, sp, #120	; 0x78
 8001a68:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
 8001a6a:	4633      	mov	r3, r6
 8001a6c:	9004      	str	r0, [sp, #16]
 8001a6e:	a81d      	add	r0, sp, #116	; 0x74
 8001a70:	9103      	str	r1, [sp, #12]
 8001a72:	2103      	movs	r1, #3
 8001a74:	9002      	str	r0, [sp, #8]
 8001a76:	4622      	mov	r2, r4
 8001a78:	9501      	str	r5, [sp, #4]
 8001a7a:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001a7c:	9100      	str	r1, [sp, #0]
 8001a7e:	f000 fb6f 	bl	8002160 <_dtoa_r>
 8001a82:	7803      	ldrb	r3, [r0, #0]
 8001a84:	900f      	str	r0, [sp, #60]	; 0x3c
 8001a86:	2b30      	cmp	r3, #48	; 0x30
 8001a88:	d108      	bne.n	8001a9c <_vfprintf_r+0x11e4>
 8001a8a:	4620      	mov	r0, r4
 8001a8c:	2200      	movs	r2, #0
 8001a8e:	2300      	movs	r3, #0
 8001a90:	4631      	mov	r1, r6
 8001a92:	f005 f9ff 	bl	8006e94 <__aeabi_dcmpeq>
 8001a96:	2800      	cmp	r0, #0
 8001a98:	f000 81b9 	beq.w	8001e0e <_vfprintf_r+0x1556>
 8001a9c:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8001a9e:	442b      	add	r3, r5
 8001aa0:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001aa2:	18d4      	adds	r4, r2, r3
 8001aa4:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8001aa6:	2200      	movs	r2, #0
 8001aa8:	2300      	movs	r3, #0
 8001aaa:	4631      	mov	r1, r6
 8001aac:	f005 f9f2 	bl	8006e94 <__aeabi_dcmpeq>
 8001ab0:	2800      	cmp	r0, #0
 8001ab2:	d06b      	beq.n	8001b8c <_vfprintf_r+0x12d4>
 8001ab4:	4623      	mov	r3, r4
 8001ab6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8001ab8:	2f47      	cmp	r7, #71	; 0x47
 8001aba:	eba3 0302 	sub.w	r3, r3, r2
 8001abe:	9311      	str	r3, [sp, #68]	; 0x44
 8001ac0:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8001ac2:	9310      	str	r3, [sp, #64]	; 0x40
 8001ac4:	f43f ae22 	beq.w	800170c <_vfprintf_r+0xe54>
 8001ac8:	f1ba 0f66 	cmp.w	sl, #102	; 0x66
 8001acc:	f47f ae26 	bne.w	800171c <_vfprintf_r+0xe64>
 8001ad0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001ad2:	f008 0301 	and.w	r3, r8, #1
 8001ad6:	2a00      	cmp	r2, #0
 8001ad8:	ea43 0305 	orr.w	r3, r3, r5
 8001adc:	f340 8181 	ble.w	8001de2 <_vfprintf_r+0x152a>
 8001ae0:	2b00      	cmp	r3, #0
 8001ae2:	f040 8152 	bne.w	8001d8a <_vfprintf_r+0x14d2>
 8001ae6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001ae8:	461f      	mov	r7, r3
 8001aea:	930b      	str	r3, [sp, #44]	; 0x2c
 8001aec:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8001aee:	2b00      	cmp	r3, #0
 8001af0:	d057      	beq.n	8001ba2 <_vfprintf_r+0x12ea>
 8001af2:	232d      	movs	r3, #45	; 0x2d
 8001af4:	2500      	movs	r5, #0
 8001af6:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8001afa:	f7ff b890 	b.w	8000c1e <_vfprintf_r+0x366>
 8001afe:	46a2      	mov	sl, r4
 8001b00:	f7ff bb7e 	b.w	8001200 <_vfprintf_r+0x948>
 8001b04:	232d      	movs	r3, #45	; 0x2d
 8001b06:	461c      	mov	r4, r3
 8001b08:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8001b0c:	f7ff b9ea 	b.w	8000ee4 <_vfprintf_r+0x62c>
 8001b10:	461c      	mov	r4, r3
 8001b12:	463b      	mov	r3, r7
 8001b14:	4647      	mov	r7, r8
 8001b16:	4698      	mov	r8, r3
 8001b18:	3201      	adds	r2, #1
 8001b1a:	442c      	add	r4, r5
 8001b1c:	f8c9 8000 	str.w	r8, [r9]
 8001b20:	2a07      	cmp	r2, #7
 8001b22:	f8c9 5004 	str.w	r5, [r9, #4]
 8001b26:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 8001b2a:	dc23      	bgt.n	8001b74 <_vfprintf_r+0x12bc>
 8001b2c:	f109 0908 	add.w	r9, r9, #8
 8001b30:	e4df      	b.n	80014f2 <_vfprintf_r+0xc3a>
 8001b32:	aa23      	add	r2, sp, #140	; 0x8c
 8001b34:	9908      	ldr	r1, [sp, #32]
 8001b36:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001b38:	f002 ff9e 	bl	8004a78 <__sprint_r>
 8001b3c:	2800      	cmp	r0, #0
 8001b3e:	f47f ab5d 	bne.w	80011fc <_vfprintf_r+0x944>
 8001b42:	9a1d      	ldr	r2, [sp, #116]	; 0x74
 8001b44:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001b48:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001b4a:	e4e7      	b.n	800151c <_vfprintf_r+0xc64>
 8001b4c:	aa23      	add	r2, sp, #140	; 0x8c
 8001b4e:	9908      	ldr	r1, [sp, #32]
 8001b50:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001b52:	f002 ff91 	bl	8004a78 <__sprint_r>
 8001b56:	2800      	cmp	r0, #0
 8001b58:	f47f ab50 	bne.w	80011fc <_vfprintf_r+0x944>
 8001b5c:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8001b5e:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001b62:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001b64:	f7ff bb65 	b.w	8001232 <_vfprintf_r+0x97a>
 8001b68:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001b6c:	f7ff ba04 	b.w	8000f78 <_vfprintf_r+0x6c0>
 8001b70:	461d      	mov	r5, r3
 8001b72:	e4ee      	b.n	8001552 <_vfprintf_r+0xc9a>
 8001b74:	aa23      	add	r2, sp, #140	; 0x8c
 8001b76:	9908      	ldr	r1, [sp, #32]
 8001b78:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001b7a:	f002 ff7d 	bl	8004a78 <__sprint_r>
 8001b7e:	2800      	cmp	r0, #0
 8001b80:	f47f ab3c 	bne.w	80011fc <_vfprintf_r+0x944>
 8001b84:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001b86:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001b8a:	e4b2      	b.n	80014f2 <_vfprintf_r+0xc3a>
 8001b8c:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8001b8e:	42a3      	cmp	r3, r4
 8001b90:	d291      	bcs.n	8001ab6 <_vfprintf_r+0x11fe>
 8001b92:	2130      	movs	r1, #48	; 0x30
 8001b94:	1c5a      	adds	r2, r3, #1
 8001b96:	9221      	str	r2, [sp, #132]	; 0x84
 8001b98:	7019      	strb	r1, [r3, #0]
 8001b9a:	9b21      	ldr	r3, [sp, #132]	; 0x84
 8001b9c:	429c      	cmp	r4, r3
 8001b9e:	d8f9      	bhi.n	8001b94 <_vfprintf_r+0x12dc>
 8001ba0:	e789      	b.n	8001ab6 <_vfprintf_r+0x11fe>
 8001ba2:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8001ba4:	f89d 406f 	ldrb.w	r4, [sp, #111]	; 0x6f
 8001ba8:	f7ff b837 	b.w	8000c1a <_vfprintf_r+0x362>
 8001bac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001bae:	4619      	mov	r1, r3
 8001bb0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001bb2:	4299      	cmp	r1, r3
 8001bb4:	f300 80ae 	bgt.w	8001d14 <_vfprintf_r+0x145c>
 8001bb8:	f018 0f01 	tst.w	r8, #1
 8001bbc:	f040 80f6 	bne.w	8001dac <_vfprintf_r+0x14f4>
 8001bc0:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8001bc4:	930b      	str	r3, [sp, #44]	; 0x2c
 8001bc6:	f04f 0a67 	mov.w	sl, #103	; 0x67
 8001bca:	e78f      	b.n	8001aec <_vfprintf_r+0x1234>
 8001bcc:	2f45      	cmp	r7, #69	; 0x45
 8001bce:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8001bd0:	f040 8130 	bne.w	8001e34 <_vfprintf_r+0x157c>
 8001bd4:	f10d 0e84 	add.w	lr, sp, #132	; 0x84
 8001bd8:	a81e      	add	r0, sp, #120	; 0x78
 8001bda:	a91d      	add	r1, sp, #116	; 0x74
 8001bdc:	f04f 0c02 	mov.w	ip, #2
 8001be0:	1c6c      	adds	r4, r5, #1
 8001be2:	4633      	mov	r3, r6
 8001be4:	9102      	str	r1, [sp, #8]
 8001be6:	9401      	str	r4, [sp, #4]
 8001be8:	f8cd c000 	str.w	ip, [sp]
 8001bec:	e9cd 0e03 	strd	r0, lr, [sp, #12]
 8001bf0:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001bf2:	f000 fab5 	bl	8002160 <_dtoa_r>
 8001bf6:	900f      	str	r0, [sp, #60]	; 0x3c
 8001bf8:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001bfa:	441c      	add	r4, r3
 8001bfc:	e752      	b.n	8001aa4 <_vfprintf_r+0x11ec>
 8001bfe:	aa23      	add	r2, sp, #140	; 0x8c
 8001c00:	9908      	ldr	r1, [sp, #32]
 8001c02:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001c04:	f002 ff38 	bl	8004a78 <__sprint_r>
 8001c08:	2800      	cmp	r0, #0
 8001c0a:	f47f aaf7 	bne.w	80011fc <_vfprintf_r+0x944>
 8001c0e:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001c10:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001c14:	e465      	b.n	80014e2 <_vfprintf_r+0xc2a>
 8001c16:	aa23      	add	r2, sp, #140	; 0x8c
 8001c18:	9908      	ldr	r1, [sp, #32]
 8001c1a:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001c1c:	f002 ff2c 	bl	8004a78 <__sprint_r>
 8001c20:	2800      	cmp	r0, #0
 8001c22:	f47f aaeb 	bne.w	80011fc <_vfprintf_r+0x944>
 8001c26:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8001c28:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001c2c:	e9dd 2424 	ldrd	r2, r4, [sp, #144]	; 0x90
 8001c30:	f7ff bb13 	b.w	800125a <_vfprintf_r+0x9a2>
 8001c34:	aa23      	add	r2, sp, #140	; 0x8c
 8001c36:	9908      	ldr	r1, [sp, #32]
 8001c38:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001c3a:	f002 ff1d 	bl	8004a78 <__sprint_r>
 8001c3e:	2800      	cmp	r0, #0
 8001c40:	f47f aadc 	bne.w	80011fc <_vfprintf_r+0x944>
 8001c44:	9b1d      	ldr	r3, [sp, #116]	; 0x74
 8001c46:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001c4a:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8001c4c:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001c4e:	1ad3      	subs	r3, r2, r3
 8001c50:	e47f      	b.n	8001552 <_vfprintf_r+0xc9a>
 8001c52:	9b07      	ldr	r3, [sp, #28]
 8001c54:	07de      	lsls	r6, r3, #31
 8001c56:	f57f a87a 	bpl.w	8000d4e <_vfprintf_r+0x496>
 8001c5a:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001c5c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8001c5e:	3201      	adds	r2, #1
 8001c60:	9916      	ldr	r1, [sp, #88]	; 0x58
 8001c62:	441c      	add	r4, r3
 8001c64:	f8c9 3004 	str.w	r3, [r9, #4]
 8001c68:	2a07      	cmp	r2, #7
 8001c6a:	f8c9 1000 	str.w	r1, [r9]
 8001c6e:	9425      	str	r4, [sp, #148]	; 0x94
 8001c70:	9224      	str	r2, [sp, #144]	; 0x90
 8001c72:	dcd0      	bgt.n	8001c16 <_vfprintf_r+0x135e>
 8001c74:	f109 0908 	add.w	r9, r9, #8
 8001c78:	f7ff baf2 	b.w	8001260 <_vfprintf_r+0x9a8>
 8001c7c:	462f      	mov	r7, r5
 8001c7e:	950b      	str	r5, [sp, #44]	; 0x2c
 8001c80:	940d      	str	r4, [sp, #52]	; 0x34
 8001c82:	4605      	mov	r5, r0
 8001c84:	f8cd 801c 	str.w	r8, [sp, #28]
 8001c88:	f89d 406f 	ldrb.w	r4, [sp, #111]	; 0x6f
 8001c8c:	9010      	str	r0, [sp, #64]	; 0x40
 8001c8e:	f7fe bfc4 	b.w	8000c1a <_vfprintf_r+0x362>
 8001c92:	425d      	negs	r5, r3
 8001c94:	3310      	adds	r3, #16
 8001c96:	f8df 81cc 	ldr.w	r8, [pc, #460]	; 8001e64 <_vfprintf_r+0x15ac>
 8001c9a:	da51      	bge.n	8001d40 <_vfprintf_r+0x1488>
 8001c9c:	4623      	mov	r3, r4
 8001c9e:	2610      	movs	r6, #16
 8001ca0:	4644      	mov	r4, r8
 8001ca2:	f8dd a030 	ldr.w	sl, [sp, #48]	; 0x30
 8001ca6:	f8dd 8020 	ldr.w	r8, [sp, #32]
 8001caa:	e002      	b.n	8001cb2 <_vfprintf_r+0x13fa>
 8001cac:	3d10      	subs	r5, #16
 8001cae:	2d10      	cmp	r5, #16
 8001cb0:	dd44      	ble.n	8001d3c <_vfprintf_r+0x1484>
 8001cb2:	3201      	adds	r2, #1
 8001cb4:	3310      	adds	r3, #16
 8001cb6:	f8c9 4000 	str.w	r4, [r9]
 8001cba:	f109 0908 	add.w	r9, r9, #8
 8001cbe:	2a07      	cmp	r2, #7
 8001cc0:	f849 6c04 	str.w	r6, [r9, #-4]
 8001cc4:	e9cd 2324 	strd	r2, r3, [sp, #144]	; 0x90
 8001cc8:	ddf0      	ble.n	8001cac <_vfprintf_r+0x13f4>
 8001cca:	aa23      	add	r2, sp, #140	; 0x8c
 8001ccc:	4641      	mov	r1, r8
 8001cce:	4650      	mov	r0, sl
 8001cd0:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001cd4:	f002 fed0 	bl	8004a78 <__sprint_r>
 8001cd8:	2800      	cmp	r0, #0
 8001cda:	f040 809c 	bne.w	8001e16 <_vfprintf_r+0x155e>
 8001cde:	e9dd 2324 	ldrd	r2, r3, [sp, #144]	; 0x90
 8001ce2:	e7e3      	b.n	8001cac <_vfprintf_r+0x13f4>
 8001ce4:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001ce8:	f7ff b8d1 	b.w	8000e8e <_vfprintf_r+0x5d6>
 8001cec:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001cf0:	f7ff b90a 	b.w	8000f08 <_vfprintf_r+0x650>
 8001cf4:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001cf8:	f7ff b89c 	b.w	8000e34 <_vfprintf_r+0x57c>
 8001cfc:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001d00:	f7ff b845 	b.w	8000d8e <_vfprintf_r+0x4d6>
 8001d04:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001d08:	f7fe bf93 	b.w	8000c32 <_vfprintf_r+0x37a>
 8001d0c:	f88d 006f 	strb.w	r0, [sp, #111]	; 0x6f
 8001d10:	f7fe bf44 	b.w	8000b9c <_vfprintf_r+0x2e4>
 8001d14:	9a14      	ldr	r2, [sp, #80]	; 0x50
 8001d16:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001d18:	4413      	add	r3, r2
 8001d1a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8001d1c:	2a00      	cmp	r2, #0
 8001d1e:	930b      	str	r3, [sp, #44]	; 0x2c
 8001d20:	dd55      	ble.n	8001dce <_vfprintf_r+0x1516>
 8001d22:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8001d26:	f04f 0a67 	mov.w	sl, #103	; 0x67
 8001d2a:	e6df      	b.n	8001aec <_vfprintf_r+0x1234>
 8001d2c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8001d30:	9309      	str	r3, [sp, #36]	; 0x24
 8001d32:	f7ff ba6a 	b.w	800120a <_vfprintf_r+0x952>
 8001d36:	46ba      	mov	sl, r7
 8001d38:	f7ff ba62 	b.w	8001200 <_vfprintf_r+0x948>
 8001d3c:	46a0      	mov	r8, r4
 8001d3e:	461c      	mov	r4, r3
 8001d40:	3201      	adds	r2, #1
 8001d42:	442c      	add	r4, r5
 8001d44:	f8c9 8000 	str.w	r8, [r9]
 8001d48:	2a07      	cmp	r2, #7
 8001d4a:	f8c9 5004 	str.w	r5, [r9, #4]
 8001d4e:	e9cd 2424 	strd	r2, r4, [sp, #144]	; 0x90
 8001d52:	dd8f      	ble.n	8001c74 <_vfprintf_r+0x13bc>
 8001d54:	aa23      	add	r2, sp, #140	; 0x8c
 8001d56:	9908      	ldr	r1, [sp, #32]
 8001d58:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001d5a:	f002 fe8d 	bl	8004a78 <__sprint_r>
 8001d5e:	2800      	cmp	r0, #0
 8001d60:	f47f aa4c 	bne.w	80011fc <_vfprintf_r+0x944>
 8001d64:	9c25      	ldr	r4, [sp, #148]	; 0x94
 8001d66:	f10d 09c0 	add.w	r9, sp, #192	; 0xc0
 8001d6a:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8001d6c:	f7ff ba78 	b.w	8001260 <_vfprintf_r+0x9a8>
 8001d70:	3230      	adds	r2, #48	; 0x30
 8001d72:	2330      	movs	r3, #48	; 0x30
 8001d74:	f88d 207f 	strb.w	r2, [sp, #127]	; 0x7f
 8001d78:	2204      	movs	r2, #4
 8001d7a:	f88d 307e 	strb.w	r3, [sp, #126]	; 0x7e
 8001d7e:	9217      	str	r2, [sp, #92]	; 0x5c
 8001d80:	e50c      	b.n	800179c <_vfprintf_r+0xee4>
 8001d82:	f1c3 0201 	rsb	r2, r3, #1
 8001d86:	232d      	movs	r3, #45	; 0x2d
 8001d88:	e4d1      	b.n	800172e <_vfprintf_r+0xe76>
 8001d8a:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8001d8c:	18d7      	adds	r7, r2, r3
 8001d8e:	197b      	adds	r3, r7, r5
 8001d90:	930b      	str	r3, [sp, #44]	; 0x2c
 8001d92:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8001d96:	e6a9      	b.n	8001aec <_vfprintf_r+0x1234>
 8001d98:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8001d9a:	2b00      	cmp	r3, #0
 8001d9c:	db42      	blt.n	8001e24 <_vfprintf_r+0x156c>
 8001d9e:	f89d 406f 	ldrb.w	r4, [sp, #111]	; 0x6f
 8001da2:	4a2e      	ldr	r2, [pc, #184]	; (8001e5c <_vfprintf_r+0x15a4>)
 8001da4:	2703      	movs	r7, #3
 8001da6:	4b2e      	ldr	r3, [pc, #184]	; (8001e60 <_vfprintf_r+0x15a8>)
 8001da8:	f7ff b89f 	b.w	8000eea <_vfprintf_r+0x632>
 8001dac:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001dae:	f04f 0a67 	mov.w	sl, #103	; 0x67
 8001db2:	9a14      	ldr	r2, [sp, #80]	; 0x50
 8001db4:	4413      	add	r3, r2
 8001db6:	930b      	str	r3, [sp, #44]	; 0x2c
 8001db8:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8001dbc:	e696      	b.n	8001aec <_vfprintf_r+0x1234>
 8001dbe:	f018 0201 	ands.w	r2, r8, #1
 8001dc2:	9210      	str	r2, [sp, #64]	; 0x40
 8001dc4:	f47f acf1 	bne.w	80017aa <_vfprintf_r+0xef2>
 8001dc8:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8001dcc:	e68e      	b.n	8001aec <_vfprintf_r+0x1234>
 8001dce:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001dd0:	f04f 0a67 	mov.w	sl, #103	; 0x67
 8001dd4:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8001dd6:	f1c3 0301 	rsb	r3, r3, #1
 8001dda:	441a      	add	r2, r3
 8001ddc:	4613      	mov	r3, r2
 8001dde:	920b      	str	r2, [sp, #44]	; 0x2c
 8001de0:	e7f2      	b.n	8001dc8 <_vfprintf_r+0x1510>
 8001de2:	b913      	cbnz	r3, 8001dea <_vfprintf_r+0x1532>
 8001de4:	2701      	movs	r7, #1
 8001de6:	970b      	str	r7, [sp, #44]	; 0x2c
 8001de8:	e680      	b.n	8001aec <_vfprintf_r+0x1234>
 8001dea:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8001dec:	1c5f      	adds	r7, r3, #1
 8001dee:	197b      	adds	r3, r7, r5
 8001df0:	930b      	str	r3, [sp, #44]	; 0x2c
 8001df2:	ea23 77e3 	bic.w	r7, r3, r3, asr #31
 8001df6:	e679      	b.n	8001aec <_vfprintf_r+0x1234>
 8001df8:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8001dfa:	f89b 3001 	ldrb.w	r3, [fp, #1]
 8001dfe:	468b      	mov	fp, r1
 8001e00:	f854 5b04 	ldr.w	r5, [r4], #4
 8001e04:	ea45 75e5 	orr.w	r5, r5, r5, asr #31
 8001e08:	940d      	str	r4, [sp, #52]	; 0x34
 8001e0a:	f7fe bdce 	b.w	80009aa <_vfprintf_r+0xf2>
 8001e0e:	f1c5 0301 	rsb	r3, r5, #1
 8001e12:	931d      	str	r3, [sp, #116]	; 0x74
 8001e14:	e643      	b.n	8001a9e <_vfprintf_r+0x11e6>
 8001e16:	46c2      	mov	sl, r8
 8001e18:	f7ff b9f2 	b.w	8001200 <_vfprintf_r+0x948>
 8001e1c:	464a      	mov	r2, r9
 8001e1e:	f8df 8044 	ldr.w	r8, [pc, #68]	; 8001e64 <_vfprintf_r+0x15ac>
 8001e22:	e5f2      	b.n	8001a0a <_vfprintf_r+0x1152>
 8001e24:	232d      	movs	r3, #45	; 0x2d
 8001e26:	461c      	mov	r4, r3
 8001e28:	f88d 306f 	strb.w	r3, [sp, #111]	; 0x6f
 8001e2c:	e7b9      	b.n	8001da2 <_vfprintf_r+0x14ea>
 8001e2e:	2302      	movs	r3, #2
 8001e30:	9317      	str	r3, [sp, #92]	; 0x5c
 8001e32:	e4b3      	b.n	800179c <_vfprintf_r+0xee4>
 8001e34:	a821      	add	r0, sp, #132	; 0x84
 8001e36:	a91e      	add	r1, sp, #120	; 0x78
 8001e38:	9501      	str	r5, [sp, #4]
 8001e3a:	4633      	mov	r3, r6
 8001e3c:	9004      	str	r0, [sp, #16]
 8001e3e:	a81d      	add	r0, sp, #116	; 0x74
 8001e40:	9103      	str	r1, [sp, #12]
 8001e42:	2102      	movs	r1, #2
 8001e44:	9002      	str	r0, [sp, #8]
 8001e46:	462c      	mov	r4, r5
 8001e48:	980c      	ldr	r0, [sp, #48]	; 0x30
 8001e4a:	9100      	str	r1, [sp, #0]
 8001e4c:	f000 f988 	bl	8002160 <_dtoa_r>
 8001e50:	2f47      	cmp	r7, #71	; 0x47
 8001e52:	900f      	str	r0, [sp, #60]	; 0x3c
 8001e54:	f43f ac50 	beq.w	80016f8 <_vfprintf_r+0xe40>
 8001e58:	e6ce      	b.n	8001bf8 <_vfprintf_r+0x1340>
 8001e5a:	bf00      	nop
 8001e5c:	0800ad8c 	.word	0x0800ad8c
 8001e60:	0800ad90 	.word	0x0800ad90
 8001e64:	0800aaa4 	.word	0x0800aaa4

08001e68 <vfprintf>:
 8001e68:	b410      	push	{r4}
 8001e6a:	4c04      	ldr	r4, [pc, #16]	; (8001e7c <vfprintf+0x14>)
 8001e6c:	4613      	mov	r3, r2
 8001e6e:	460a      	mov	r2, r1
 8001e70:	4601      	mov	r1, r0
 8001e72:	6820      	ldr	r0, [r4, #0]
 8001e74:	bc10      	pop	{r4}
 8001e76:	f7fe bd1f 	b.w	80008b8 <_vfprintf_r>
 8001e7a:	bf00      	nop
 8001e7c:	20000000 	.word	0x20000000

08001e80 <__sbprintf>:
 8001e80:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e82:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 8001e86:	460c      	mov	r4, r1
 8001e88:	2600      	movs	r6, #0
 8001e8a:	8989      	ldrh	r1, [r1, #12]
 8001e8c:	ad1a      	add	r5, sp, #104	; 0x68
 8001e8e:	f44f 6780 	mov.w	r7, #1024	; 0x400
 8001e92:	9606      	str	r6, [sp, #24]
 8001e94:	f021 0102 	bic.w	r1, r1, #2
 8001e98:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8001e9a:	9500      	str	r5, [sp, #0]
 8001e9c:	9504      	str	r5, [sp, #16]
 8001e9e:	69e5      	ldr	r5, [r4, #28]
 8001ea0:	9619      	str	r6, [sp, #100]	; 0x64
 8001ea2:	9507      	str	r5, [sp, #28]
 8001ea4:	89e6      	ldrh	r6, [r4, #14]
 8001ea6:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8001ea8:	f8ad 100c 	strh.w	r1, [sp, #12]
 8001eac:	4669      	mov	r1, sp
 8001eae:	f8ad 600e 	strh.w	r6, [sp, #14]
 8001eb2:	4606      	mov	r6, r0
 8001eb4:	9509      	str	r5, [sp, #36]	; 0x24
 8001eb6:	9702      	str	r7, [sp, #8]
 8001eb8:	9705      	str	r7, [sp, #20]
 8001eba:	f7fe fcfd 	bl	80008b8 <_vfprintf_r>
 8001ebe:	1e05      	subs	r5, r0, #0
 8001ec0:	db07      	blt.n	8001ed2 <__sbprintf+0x52>
 8001ec2:	4630      	mov	r0, r6
 8001ec4:	4669      	mov	r1, sp
 8001ec6:	f001 f981 	bl	80031cc <_fflush_r>
 8001eca:	2800      	cmp	r0, #0
 8001ecc:	bf18      	it	ne
 8001ece:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8001ed2:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8001ed6:	065b      	lsls	r3, r3, #25
 8001ed8:	d503      	bpl.n	8001ee2 <__sbprintf+0x62>
 8001eda:	89a3      	ldrh	r3, [r4, #12]
 8001edc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001ee0:	81a3      	strh	r3, [r4, #12]
 8001ee2:	4628      	mov	r0, r5
 8001ee4:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 8001ee8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001eea:	bf00      	nop

08001eec <__swsetup_r>:
 8001eec:	b538      	push	{r3, r4, r5, lr}
 8001eee:	4b31      	ldr	r3, [pc, #196]	; (8001fb4 <__swsetup_r+0xc8>)
 8001ef0:	4605      	mov	r5, r0
 8001ef2:	460c      	mov	r4, r1
 8001ef4:	6818      	ldr	r0, [r3, #0]
 8001ef6:	b108      	cbz	r0, 8001efc <__swsetup_r+0x10>
 8001ef8:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8001efa:	b30b      	cbz	r3, 8001f40 <__swsetup_r+0x54>
 8001efc:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8001f00:	b293      	uxth	r3, r2
 8001f02:	0718      	lsls	r0, r3, #28
 8001f04:	d523      	bpl.n	8001f4e <__swsetup_r+0x62>
 8001f06:	6920      	ldr	r0, [r4, #16]
 8001f08:	b360      	cbz	r0, 8001f64 <__swsetup_r+0x78>
 8001f0a:	f013 0201 	ands.w	r2, r3, #1
 8001f0e:	d007      	beq.n	8001f20 <__swsetup_r+0x34>
 8001f10:	6963      	ldr	r3, [r4, #20]
 8001f12:	2200      	movs	r2, #0
 8001f14:	425b      	negs	r3, r3
 8001f16:	60a2      	str	r2, [r4, #8]
 8001f18:	61a3      	str	r3, [r4, #24]
 8001f1a:	b138      	cbz	r0, 8001f2c <__swsetup_r+0x40>
 8001f1c:	2000      	movs	r0, #0
 8001f1e:	bd38      	pop	{r3, r4, r5, pc}
 8001f20:	0799      	lsls	r1, r3, #30
 8001f22:	bf58      	it	pl
 8001f24:	6962      	ldrpl	r2, [r4, #20]
 8001f26:	60a2      	str	r2, [r4, #8]
 8001f28:	2800      	cmp	r0, #0
 8001f2a:	d1f7      	bne.n	8001f1c <__swsetup_r+0x30>
 8001f2c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8001f30:	061a      	lsls	r2, r3, #24
 8001f32:	d5f4      	bpl.n	8001f1e <__swsetup_r+0x32>
 8001f34:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001f38:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001f3c:	81a3      	strh	r3, [r4, #12]
 8001f3e:	bd38      	pop	{r3, r4, r5, pc}
 8001f40:	f001 fa4a 	bl	80033d8 <__sinit>
 8001f44:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8001f48:	b293      	uxth	r3, r2
 8001f4a:	0718      	lsls	r0, r3, #28
 8001f4c:	d4db      	bmi.n	8001f06 <__swsetup_r+0x1a>
 8001f4e:	06d9      	lsls	r1, r3, #27
 8001f50:	d528      	bpl.n	8001fa4 <__swsetup_r+0xb8>
 8001f52:	0758      	lsls	r0, r3, #29
 8001f54:	d412      	bmi.n	8001f7c <__swsetup_r+0x90>
 8001f56:	6920      	ldr	r0, [r4, #16]
 8001f58:	f042 0208 	orr.w	r2, r2, #8
 8001f5c:	b293      	uxth	r3, r2
 8001f5e:	81a2      	strh	r2, [r4, #12]
 8001f60:	2800      	cmp	r0, #0
 8001f62:	d1d2      	bne.n	8001f0a <__swsetup_r+0x1e>
 8001f64:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8001f68:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8001f6c:	d0cd      	beq.n	8001f0a <__swsetup_r+0x1e>
 8001f6e:	4628      	mov	r0, r5
 8001f70:	4621      	mov	r1, r4
 8001f72:	f001 fc1f 	bl	80037b4 <__smakebuf_r>
 8001f76:	89a3      	ldrh	r3, [r4, #12]
 8001f78:	6920      	ldr	r0, [r4, #16]
 8001f7a:	e7c6      	b.n	8001f0a <__swsetup_r+0x1e>
 8001f7c:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8001f7e:	b151      	cbz	r1, 8001f96 <__swsetup_r+0xaa>
 8001f80:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8001f84:	4299      	cmp	r1, r3
 8001f86:	d004      	beq.n	8001f92 <__swsetup_r+0xa6>
 8001f88:	4628      	mov	r0, r5
 8001f8a:	f001 fa95 	bl	80034b8 <_free_r>
 8001f8e:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8001f92:	2300      	movs	r3, #0
 8001f94:	6323      	str	r3, [r4, #48]	; 0x30
 8001f96:	2300      	movs	r3, #0
 8001f98:	6920      	ldr	r0, [r4, #16]
 8001f9a:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8001f9e:	e9c4 0300 	strd	r0, r3, [r4]
 8001fa2:	e7d9      	b.n	8001f58 <__swsetup_r+0x6c>
 8001fa4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8001fa8:	2309      	movs	r3, #9
 8001faa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001fae:	602b      	str	r3, [r5, #0]
 8001fb0:	81a2      	strh	r2, [r4, #12]
 8001fb2:	bd38      	pop	{r3, r4, r5, pc}
 8001fb4:	20000000 	.word	0x20000000

08001fb8 <__register_exitproc>:
 8001fb8:	b4f0      	push	{r4, r5, r6, r7}
 8001fba:	4c18      	ldr	r4, [pc, #96]	; (800201c <__register_exitproc+0x64>)
 8001fbc:	6825      	ldr	r5, [r4, #0]
 8001fbe:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8001fc2:	b314      	cbz	r4, 800200a <__register_exitproc+0x52>
 8001fc4:	6865      	ldr	r5, [r4, #4]
 8001fc6:	2d1f      	cmp	r5, #31
 8001fc8:	dc24      	bgt.n	8002014 <__register_exitproc+0x5c>
 8001fca:	b938      	cbnz	r0, 8001fdc <__register_exitproc+0x24>
 8001fcc:	1c6b      	adds	r3, r5, #1
 8001fce:	2000      	movs	r0, #0
 8001fd0:	3502      	adds	r5, #2
 8001fd2:	6063      	str	r3, [r4, #4]
 8001fd4:	f844 1025 	str.w	r1, [r4, r5, lsl #2]
 8001fd8:	bcf0      	pop	{r4, r5, r6, r7}
 8001fda:	4770      	bx	lr
 8001fdc:	eb04 0685 	add.w	r6, r4, r5, lsl #2
 8001fe0:	2701      	movs	r7, #1
 8001fe2:	2802      	cmp	r0, #2
 8001fe4:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
 8001fe8:	fa07 f205 	lsl.w	r2, r7, r5
 8001fec:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 8001ff0:	ea47 0702 	orr.w	r7, r7, r2
 8001ff4:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8001ff8:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
 8001ffc:	d1e6      	bne.n	8001fcc <__register_exitproc+0x14>
 8001ffe:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 8002002:	431a      	orrs	r2, r3
 8002004:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8002008:	e7e0      	b.n	8001fcc <__register_exitproc+0x14>
 800200a:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 800200e:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8002012:	e7d7      	b.n	8001fc4 <__register_exitproc+0xc>
 8002014:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002018:	e7de      	b.n	8001fd8 <__register_exitproc+0x20>
 800201a:	bf00      	nop
 800201c:	0800aa90 	.word	0x0800aa90

08002020 <quorem>:
 8002020:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002024:	6903      	ldr	r3, [r0, #16]
 8002026:	b085      	sub	sp, #20
 8002028:	690d      	ldr	r5, [r1, #16]
 800202a:	9101      	str	r1, [sp, #4]
 800202c:	42ab      	cmp	r3, r5
 800202e:	f2c0 8093 	blt.w	8002158 <quorem+0x138>
 8002032:	3d01      	subs	r5, #1
 8002034:	f101 0414 	add.w	r4, r1, #20
 8002038:	f100 0914 	add.w	r9, r0, #20
 800203c:	4682      	mov	sl, r0
 800203e:	f854 3025 	ldr.w	r3, [r4, r5, lsl #2]
 8002042:	00a9      	lsls	r1, r5, #2
 8002044:	f859 2025 	ldr.w	r2, [r9, r5, lsl #2]
 8002048:	3301      	adds	r3, #1
 800204a:	9102      	str	r1, [sp, #8]
 800204c:	eb04 0801 	add.w	r8, r4, r1
 8002050:	4449      	add	r1, r9
 8002052:	429a      	cmp	r2, r3
 8002054:	9103      	str	r1, [sp, #12]
 8002056:	fbb2 f6f3 	udiv	r6, r2, r3
 800205a:	d33f      	bcc.n	80020dc <quorem+0xbc>
 800205c:	2300      	movs	r3, #0
 800205e:	46a4      	mov	ip, r4
 8002060:	464f      	mov	r7, r9
 8002062:	461a      	mov	r2, r3
 8002064:	f85c 1b04 	ldr.w	r1, [ip], #4
 8002068:	f8d7 e000 	ldr.w	lr, [r7]
 800206c:	b288      	uxth	r0, r1
 800206e:	45e0      	cmp	r8, ip
 8002070:	ea4f 4111 	mov.w	r1, r1, lsr #16
 8002074:	fb06 3000 	mla	r0, r6, r0, r3
 8002078:	fa1f fb8e 	uxth.w	fp, lr
 800207c:	ea4f 4310 	mov.w	r3, r0, lsr #16
 8002080:	b280      	uxth	r0, r0
 8002082:	fb06 3301 	mla	r3, r6, r1, r3
 8002086:	eba2 0100 	sub.w	r1, r2, r0
 800208a:	b29a      	uxth	r2, r3
 800208c:	4459      	add	r1, fp
 800208e:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8002092:	ebc2 421e 	rsb	r2, r2, lr, lsr #16
 8002096:	b288      	uxth	r0, r1
 8002098:	eb02 4221 	add.w	r2, r2, r1, asr #16
 800209c:	ea40 4002 	orr.w	r0, r0, r2, lsl #16
 80020a0:	ea4f 4222 	mov.w	r2, r2, asr #16
 80020a4:	f847 0b04 	str.w	r0, [r7], #4
 80020a8:	d2dc      	bcs.n	8002064 <quorem+0x44>
 80020aa:	9b02      	ldr	r3, [sp, #8]
 80020ac:	f859 3003 	ldr.w	r3, [r9, r3]
 80020b0:	b9a3      	cbnz	r3, 80020dc <quorem+0xbc>
 80020b2:	9a03      	ldr	r2, [sp, #12]
 80020b4:	1f13      	subs	r3, r2, #4
 80020b6:	4599      	cmp	r9, r3
 80020b8:	d20e      	bcs.n	80020d8 <quorem+0xb8>
 80020ba:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80020be:	b95b      	cbnz	r3, 80020d8 <quorem+0xb8>
 80020c0:	f1a2 0308 	sub.w	r3, r2, #8
 80020c4:	e001      	b.n	80020ca <quorem+0xaa>
 80020c6:	6812      	ldr	r2, [r2, #0]
 80020c8:	b932      	cbnz	r2, 80020d8 <quorem+0xb8>
 80020ca:	4599      	cmp	r9, r3
 80020cc:	461a      	mov	r2, r3
 80020ce:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80020d2:	f1a3 0304 	sub.w	r3, r3, #4
 80020d6:	d3f6      	bcc.n	80020c6 <quorem+0xa6>
 80020d8:	f8ca 5010 	str.w	r5, [sl, #16]
 80020dc:	9901      	ldr	r1, [sp, #4]
 80020de:	4650      	mov	r0, sl
 80020e0:	f002 f9da 	bl	8004498 <__mcmp>
 80020e4:	2800      	cmp	r0, #0
 80020e6:	db33      	blt.n	8002150 <quorem+0x130>
 80020e8:	3601      	adds	r6, #1
 80020ea:	4648      	mov	r0, r9
 80020ec:	2200      	movs	r2, #0
 80020ee:	f854 1b04 	ldr.w	r1, [r4], #4
 80020f2:	f8d0 c000 	ldr.w	ip, [r0]
 80020f6:	b28b      	uxth	r3, r1
 80020f8:	45a0      	cmp	r8, r4
 80020fa:	ea4f 4111 	mov.w	r1, r1, lsr #16
 80020fe:	eba2 0303 	sub.w	r3, r2, r3
 8002102:	fa1f f28c 	uxth.w	r2, ip
 8002106:	ebc1 411c 	rsb	r1, r1, ip, lsr #16
 800210a:	4413      	add	r3, r2
 800210c:	eb01 4123 	add.w	r1, r1, r3, asr #16
 8002110:	b29b      	uxth	r3, r3
 8002112:	ea4f 4221 	mov.w	r2, r1, asr #16
 8002116:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800211a:	f840 3b04 	str.w	r3, [r0], #4
 800211e:	d2e6      	bcs.n	80020ee <quorem+0xce>
 8002120:	f859 2025 	ldr.w	r2, [r9, r5, lsl #2]
 8002124:	eb09 0385 	add.w	r3, r9, r5, lsl #2
 8002128:	b992      	cbnz	r2, 8002150 <quorem+0x130>
 800212a:	1f1a      	subs	r2, r3, #4
 800212c:	4591      	cmp	r9, r2
 800212e:	d20d      	bcs.n	800214c <quorem+0x12c>
 8002130:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8002134:	b952      	cbnz	r2, 800214c <quorem+0x12c>
 8002136:	3b08      	subs	r3, #8
 8002138:	e001      	b.n	800213e <quorem+0x11e>
 800213a:	6812      	ldr	r2, [r2, #0]
 800213c:	b932      	cbnz	r2, 800214c <quorem+0x12c>
 800213e:	4599      	cmp	r9, r3
 8002140:	461a      	mov	r2, r3
 8002142:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8002146:	f1a3 0304 	sub.w	r3, r3, #4
 800214a:	d3f6      	bcc.n	800213a <quorem+0x11a>
 800214c:	f8ca 5010 	str.w	r5, [sl, #16]
 8002150:	4630      	mov	r0, r6
 8002152:	b005      	add	sp, #20
 8002154:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002158:	2000      	movs	r0, #0
 800215a:	b005      	add	sp, #20
 800215c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08002160 <_dtoa_r>:
 8002160:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002164:	461f      	mov	r7, r3
 8002166:	b09b      	sub	sp, #108	; 0x6c
 8002168:	6c03      	ldr	r3, [r0, #64]	; 0x40
 800216a:	4683      	mov	fp, r0
 800216c:	4690      	mov	r8, r2
 800216e:	46b9      	mov	r9, r7
 8002170:	9c27      	ldr	r4, [sp, #156]	; 0x9c
 8002172:	b153      	cbz	r3, 800218a <_dtoa_r+0x2a>
 8002174:	6c45      	ldr	r5, [r0, #68]	; 0x44
 8002176:	2201      	movs	r2, #1
 8002178:	4619      	mov	r1, r3
 800217a:	40aa      	lsls	r2, r5
 800217c:	e9c3 5201 	strd	r5, r2, [r3, #4]
 8002180:	f001 ff10 	bl	8003fa4 <_Bfree>
 8002184:	2300      	movs	r3, #0
 8002186:	f8cb 3040 	str.w	r3, [fp, #64]	; 0x40
 800218a:	1e3e      	subs	r6, r7, #0
 800218c:	f2c0 80ad 	blt.w	80022ea <_dtoa_r+0x18a>
 8002190:	2300      	movs	r3, #0
 8002192:	6023      	str	r3, [r4, #0]
 8002194:	4b74      	ldr	r3, [pc, #464]	; (8002368 <_dtoa_r+0x208>)
 8002196:	43b3      	bics	r3, r6
 8002198:	f000 80b0 	beq.w	80022fc <_dtoa_r+0x19c>
 800219c:	4640      	mov	r0, r8
 800219e:	4649      	mov	r1, r9
 80021a0:	2200      	movs	r2, #0
 80021a2:	2300      	movs	r3, #0
 80021a4:	e9cd 0108 	strd	r0, r1, [sp, #32]
 80021a8:	f004 fe74 	bl	8006e94 <__aeabi_dcmpeq>
 80021ac:	4605      	mov	r5, r0
 80021ae:	b168      	cbz	r0, 80021cc <_dtoa_r+0x6c>
 80021b0:	2301      	movs	r3, #1
 80021b2:	9a26      	ldr	r2, [sp, #152]	; 0x98
 80021b4:	6013      	str	r3, [r2, #0]
 80021b6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80021b8:	2b00      	cmp	r3, #0
 80021ba:	f000 8245 	beq.w	8002648 <_dtoa_r+0x4e8>
 80021be:	4e6b      	ldr	r6, [pc, #428]	; (800236c <_dtoa_r+0x20c>)
 80021c0:	601e      	str	r6, [r3, #0]
 80021c2:	3e01      	subs	r6, #1
 80021c4:	4630      	mov	r0, r6
 80021c6:	b01b      	add	sp, #108	; 0x6c
 80021c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80021cc:	ac18      	add	r4, sp, #96	; 0x60
 80021ce:	a919      	add	r1, sp, #100	; 0x64
 80021d0:	4658      	mov	r0, fp
 80021d2:	e9cd 1400 	strd	r1, r4, [sp]
 80021d6:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 80021da:	f002 fa8f 	bl	80046fc <__d2b>
 80021de:	4682      	mov	sl, r0
 80021e0:	0d34      	lsrs	r4, r6, #20
 80021e2:	f040 80a0 	bne.w	8002326 <_dtoa_r+0x1c6>
 80021e6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80021ea:	442c      	add	r4, r5
 80021ec:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80021f0:	2b20      	cmp	r3, #32
 80021f2:	f340 822e 	ble.w	8002652 <_dtoa_r+0x4f2>
 80021f6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80021fa:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80021fe:	409e      	lsls	r6, r3
 8002200:	fa28 f000 	lsr.w	r0, r8, r0
 8002204:	4330      	orrs	r0, r6
 8002206:	f004 fb63 	bl	80068d0 <__aeabi_ui2d>
 800220a:	2301      	movs	r3, #1
 800220c:	3c01      	subs	r4, #1
 800220e:	4602      	mov	r2, r0
 8002210:	9311      	str	r3, [sp, #68]	; 0x44
 8002212:	f1a1 73f8 	sub.w	r3, r1, #32505856	; 0x1f00000
 8002216:	4610      	mov	r0, r2
 8002218:	4619      	mov	r1, r3
 800221a:	2200      	movs	r2, #0
 800221c:	4b54      	ldr	r3, [pc, #336]	; (8002370 <_dtoa_r+0x210>)
 800221e:	f004 fa19 	bl	8006654 <__aeabi_dsub>
 8002222:	a34b      	add	r3, pc, #300	; (adr r3, 8002350 <_dtoa_r+0x1f0>)
 8002224:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002228:	f004 fbcc 	bl	80069c4 <__aeabi_dmul>
 800222c:	a34a      	add	r3, pc, #296	; (adr r3, 8002358 <_dtoa_r+0x1f8>)
 800222e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002232:	f004 fa11 	bl	8006658 <__adddf3>
 8002236:	4606      	mov	r6, r0
 8002238:	460f      	mov	r7, r1
 800223a:	4620      	mov	r0, r4
 800223c:	f004 fb58 	bl	80068f0 <__aeabi_i2d>
 8002240:	a347      	add	r3, pc, #284	; (adr r3, 8002360 <_dtoa_r+0x200>)
 8002242:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002246:	f004 fbbd 	bl	80069c4 <__aeabi_dmul>
 800224a:	4602      	mov	r2, r0
 800224c:	460b      	mov	r3, r1
 800224e:	4630      	mov	r0, r6
 8002250:	4639      	mov	r1, r7
 8002252:	f004 fa01 	bl	8006658 <__adddf3>
 8002256:	4606      	mov	r6, r0
 8002258:	460f      	mov	r7, r1
 800225a:	f004 fe63 	bl	8006f24 <__aeabi_d2iz>
 800225e:	2200      	movs	r2, #0
 8002260:	9002      	str	r0, [sp, #8]
 8002262:	2300      	movs	r3, #0
 8002264:	4630      	mov	r0, r6
 8002266:	4639      	mov	r1, r7
 8002268:	f004 fe1e 	bl	8006ea8 <__aeabi_dcmplt>
 800226c:	2800      	cmp	r0, #0
 800226e:	f040 81dd 	bne.w	800262c <_dtoa_r+0x4cc>
 8002272:	1b2c      	subs	r4, r5, r4
 8002274:	9d02      	ldr	r5, [sp, #8]
 8002276:	1e63      	subs	r3, r4, #1
 8002278:	2d16      	cmp	r5, #22
 800227a:	9305      	str	r3, [sp, #20]
 800227c:	f200 81ca 	bhi.w	8002614 <_dtoa_r+0x4b4>
 8002280:	4b3c      	ldr	r3, [pc, #240]	; (8002374 <_dtoa_r+0x214>)
 8002282:	eb03 03c5 	add.w	r3, r3, r5, lsl #3
 8002286:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 800228a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800228e:	f004 fe0b 	bl	8006ea8 <__aeabi_dcmplt>
 8002292:	2800      	cmp	r0, #0
 8002294:	d074      	beq.n	8002380 <_dtoa_r+0x220>
 8002296:	1e6b      	subs	r3, r5, #1
 8002298:	9302      	str	r3, [sp, #8]
 800229a:	2300      	movs	r3, #0
 800229c:	9310      	str	r3, [sp, #64]	; 0x40
 800229e:	9b05      	ldr	r3, [sp, #20]
 80022a0:	2b00      	cmp	r3, #0
 80022a2:	f2c0 81bd 	blt.w	8002620 <_dtoa_r+0x4c0>
 80022a6:	2300      	movs	r3, #0
 80022a8:	930b      	str	r3, [sp, #44]	; 0x2c
 80022aa:	9b02      	ldr	r3, [sp, #8]
 80022ac:	2b00      	cmp	r3, #0
 80022ae:	da6d      	bge.n	800238c <_dtoa_r+0x22c>
 80022b0:	9b02      	ldr	r3, [sp, #8]
 80022b2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80022b4:	9307      	str	r3, [sp, #28]
 80022b6:	1ad2      	subs	r2, r2, r3
 80022b8:	920b      	str	r2, [sp, #44]	; 0x2c
 80022ba:	425a      	negs	r2, r3
 80022bc:	2300      	movs	r3, #0
 80022be:	920d      	str	r2, [sp, #52]	; 0x34
 80022c0:	9302      	str	r3, [sp, #8]
 80022c2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80022c4:	2b09      	cmp	r3, #9
 80022c6:	d86c      	bhi.n	80023a2 <_dtoa_r+0x242>
 80022c8:	2b05      	cmp	r3, #5
 80022ca:	f340 81c7 	ble.w	800265c <_dtoa_r+0x4fc>
 80022ce:	3b04      	subs	r3, #4
 80022d0:	2400      	movs	r4, #0
 80022d2:	9324      	str	r3, [sp, #144]	; 0x90
 80022d4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80022d6:	3b02      	subs	r3, #2
 80022d8:	2b03      	cmp	r3, #3
 80022da:	f200 8510 	bhi.w	8002cfe <_dtoa_r+0xb9e>
 80022de:	e8df f013 	tbh	[pc, r3, lsl #1]
 80022e2:	03de      	.short	0x03de
 80022e4:	03b303db 	.word	0x03b303db
 80022e8:	03ce      	.short	0x03ce
 80022ea:	2301      	movs	r3, #1
 80022ec:	f026 4600 	bic.w	r6, r6, #2147483648	; 0x80000000
 80022f0:	6023      	str	r3, [r4, #0]
 80022f2:	46b1      	mov	r9, r6
 80022f4:	4b1c      	ldr	r3, [pc, #112]	; (8002368 <_dtoa_r+0x208>)
 80022f6:	43b3      	bics	r3, r6
 80022f8:	f47f af50 	bne.w	800219c <_dtoa_r+0x3c>
 80022fc:	f242 730f 	movw	r3, #9999	; 0x270f
 8002300:	f3c6 0613 	ubfx	r6, r6, #0, #20
 8002304:	9a26      	ldr	r2, [sp, #152]	; 0x98
 8002306:	6013      	str	r3, [r2, #0]
 8002308:	ea56 0308 	orrs.w	r3, r6, r8
 800230c:	d018      	beq.n	8002340 <_dtoa_r+0x1e0>
 800230e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8002310:	4e19      	ldr	r6, [pc, #100]	; (8002378 <_dtoa_r+0x218>)
 8002312:	2b00      	cmp	r3, #0
 8002314:	f43f af56 	beq.w	80021c4 <_dtoa_r+0x64>
 8002318:	1cf3      	adds	r3, r6, #3
 800231a:	9a28      	ldr	r2, [sp, #160]	; 0xa0
 800231c:	4630      	mov	r0, r6
 800231e:	6013      	str	r3, [r2, #0]
 8002320:	b01b      	add	sp, #108	; 0x6c
 8002322:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002326:	e9dd 2308 	ldrd	r2, r3, [sp, #32]
 800232a:	9511      	str	r5, [sp, #68]	; 0x44
 800232c:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8002330:	f3c3 0113 	ubfx	r1, r3, #0, #20
 8002334:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8002336:	f041 537f 	orr.w	r3, r1, #1069547520	; 0x3fc00000
 800233a:	f443 1340 	orr.w	r3, r3, #3145728	; 0x300000
 800233e:	e76a      	b.n	8002216 <_dtoa_r+0xb6>
 8002340:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8002342:	4e0e      	ldr	r6, [pc, #56]	; (800237c <_dtoa_r+0x21c>)
 8002344:	2b00      	cmp	r3, #0
 8002346:	f43f af3d 	beq.w	80021c4 <_dtoa_r+0x64>
 800234a:	f106 0308 	add.w	r3, r6, #8
 800234e:	e7e4      	b.n	800231a <_dtoa_r+0x1ba>
 8002350:	636f4361 	.word	0x636f4361
 8002354:	3fd287a7 	.word	0x3fd287a7
 8002358:	8b60c8b3 	.word	0x8b60c8b3
 800235c:	3fc68a28 	.word	0x3fc68a28
 8002360:	509f79fb 	.word	0x509f79fb
 8002364:	3fd34413 	.word	0x3fd34413
 8002368:	7ff00000 	.word	0x7ff00000
 800236c:	0800adc5 	.word	0x0800adc5
 8002370:	3ff80000 	.word	0x3ff80000
 8002374:	0800aac8 	.word	0x0800aac8
 8002378:	0800adc8 	.word	0x0800adc8
 800237c:	0800adcc 	.word	0x0800adcc
 8002380:	9b05      	ldr	r3, [sp, #20]
 8002382:	2b00      	cmp	r3, #0
 8002384:	f2c0 8482 	blt.w	8002c8c <_dtoa_r+0xb2c>
 8002388:	9010      	str	r0, [sp, #64]	; 0x40
 800238a:	900b      	str	r0, [sp, #44]	; 0x2c
 800238c:	9a05      	ldr	r2, [sp, #20]
 800238e:	9b02      	ldr	r3, [sp, #8]
 8002390:	4611      	mov	r1, r2
 8002392:	9307      	str	r3, [sp, #28]
 8002394:	4419      	add	r1, r3
 8002396:	2300      	movs	r3, #0
 8002398:	930d      	str	r3, [sp, #52]	; 0x34
 800239a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800239c:	9105      	str	r1, [sp, #20]
 800239e:	2b09      	cmp	r3, #9
 80023a0:	d992      	bls.n	80022c8 <_dtoa_r+0x168>
 80023a2:	2300      	movs	r3, #0
 80023a4:	2401      	movs	r4, #1
 80023a6:	9324      	str	r3, [sp, #144]	; 0x90
 80023a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80023ac:	940c      	str	r4, [sp, #48]	; 0x30
 80023ae:	930a      	str	r3, [sp, #40]	; 0x28
 80023b0:	2300      	movs	r3, #0
 80023b2:	9325      	str	r3, [sp, #148]	; 0x94
 80023b4:	2100      	movs	r1, #0
 80023b6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80023b8:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
 80023bc:	9316      	str	r3, [sp, #88]	; 0x58
 80023be:	4658      	mov	r0, fp
 80023c0:	f001 fdca 	bl	8003f58 <_Balloc>
 80023c4:	9006      	str	r0, [sp, #24]
 80023c6:	2800      	cmp	r0, #0
 80023c8:	f000 8634 	beq.w	8003034 <_dtoa_r+0xed4>
 80023cc:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80023ce:	2b0e      	cmp	r3, #14
 80023d0:	bf8c      	ite	hi
 80023d2:	2400      	movhi	r4, #0
 80023d4:	f004 0401 	andls.w	r4, r4, #1
 80023d8:	9b06      	ldr	r3, [sp, #24]
 80023da:	f8cb 3040 	str.w	r3, [fp, #64]	; 0x40
 80023de:	2c00      	cmp	r4, #0
 80023e0:	f000 80eb 	beq.w	80025ba <_dtoa_r+0x45a>
 80023e4:	9907      	ldr	r1, [sp, #28]
 80023e6:	2900      	cmp	r1, #0
 80023e8:	f340 82c4 	ble.w	8002974 <_dtoa_r+0x814>
 80023ec:	4a9c      	ldr	r2, [pc, #624]	; (8002660 <_dtoa_r+0x500>)
 80023ee:	f001 030f 	and.w	r3, r1, #15
 80023f2:	110e      	asrs	r6, r1, #4
 80023f4:	eb02 03c3 	add.w	r3, r2, r3, lsl #3
 80023f8:	06f0      	lsls	r0, r6, #27
 80023fa:	e9d3 4500 	ldrd	r4, r5, [r3]
 80023fe:	f140 831e 	bpl.w	8002a3e <_dtoa_r+0x8de>
 8002402:	4b98      	ldr	r3, [pc, #608]	; (8002664 <_dtoa_r+0x504>)
 8002404:	f006 060f 	and.w	r6, r6, #15
 8002408:	f04f 0803 	mov.w	r8, #3
 800240c:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 8002410:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8002414:	f004 fc00 	bl	8006c18 <__aeabi_ddiv>
 8002418:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 800241c:	b186      	cbz	r6, 8002440 <_dtoa_r+0x2e0>
 800241e:	4f91      	ldr	r7, [pc, #580]	; (8002664 <_dtoa_r+0x504>)
 8002420:	07f1      	lsls	r1, r6, #31
 8002422:	d509      	bpl.n	8002438 <_dtoa_r+0x2d8>
 8002424:	4620      	mov	r0, r4
 8002426:	4629      	mov	r1, r5
 8002428:	f108 0801 	add.w	r8, r8, #1
 800242c:	e9d7 2300 	ldrd	r2, r3, [r7]
 8002430:	f004 fac8 	bl	80069c4 <__aeabi_dmul>
 8002434:	4604      	mov	r4, r0
 8002436:	460d      	mov	r5, r1
 8002438:	1076      	asrs	r6, r6, #1
 800243a:	f107 0708 	add.w	r7, r7, #8
 800243e:	d1ef      	bne.n	8002420 <_dtoa_r+0x2c0>
 8002440:	4622      	mov	r2, r4
 8002442:	462b      	mov	r3, r5
 8002444:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
 8002448:	f004 fbe6 	bl	8006c18 <__aeabi_ddiv>
 800244c:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 8002450:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002452:	b153      	cbz	r3, 800246a <_dtoa_r+0x30a>
 8002454:	2200      	movs	r2, #0
 8002456:	4b84      	ldr	r3, [pc, #528]	; (8002668 <_dtoa_r+0x508>)
 8002458:	e9dd 560e 	ldrd	r5, r6, [sp, #56]	; 0x38
 800245c:	4628      	mov	r0, r5
 800245e:	4631      	mov	r1, r6
 8002460:	f004 fd22 	bl	8006ea8 <__aeabi_dcmplt>
 8002464:	2800      	cmp	r0, #0
 8002466:	f040 8413 	bne.w	8002c90 <_dtoa_r+0xb30>
 800246a:	4640      	mov	r0, r8
 800246c:	f004 fa40 	bl	80068f0 <__aeabi_i2d>
 8002470:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 8002474:	f004 faa6 	bl	80069c4 <__aeabi_dmul>
 8002478:	4b7c      	ldr	r3, [pc, #496]	; (800266c <_dtoa_r+0x50c>)
 800247a:	2200      	movs	r2, #0
 800247c:	f004 f8ec 	bl	8006658 <__adddf3>
 8002480:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002482:	4680      	mov	r8, r0
 8002484:	f1a1 7950 	sub.w	r9, r1, #54525952	; 0x3400000
 8002488:	2b00      	cmp	r3, #0
 800248a:	f000 81e0 	beq.w	800284e <_dtoa_r+0x6ee>
 800248e:	9b07      	ldr	r3, [sp, #28]
 8002490:	9317      	str	r3, [sp, #92]	; 0x5c
 8002492:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002494:	9312      	str	r3, [sp, #72]	; 0x48
 8002496:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
 800249a:	e9cd 8914 	strd	r8, r9, [sp, #80]	; 0x50
 800249e:	f004 fd41 	bl	8006f24 <__aeabi_d2iz>
 80024a2:	9c12      	ldr	r4, [sp, #72]	; 0x48
 80024a4:	4b6e      	ldr	r3, [pc, #440]	; (8002660 <_dtoa_r+0x500>)
 80024a6:	f100 0930 	add.w	r9, r0, #48	; 0x30
 80024aa:	9906      	ldr	r1, [sp, #24]
 80024ac:	eb03 03c4 	add.w	r3, r3, r4, lsl #3
 80024b0:	f101 0801 	add.w	r8, r1, #1
 80024b4:	fa5f f989 	uxtb.w	r9, r9
 80024b8:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80024bc:	f004 fa18 	bl	80068f0 <__aeabi_i2d>
 80024c0:	4602      	mov	r2, r0
 80024c2:	460b      	mov	r3, r1
 80024c4:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
 80024c8:	f004 f8c4 	bl	8006654 <__aeabi_dsub>
 80024cc:	4604      	mov	r4, r0
 80024ce:	980c      	ldr	r0, [sp, #48]	; 0x30
 80024d0:	460d      	mov	r5, r1
 80024d2:	4632      	mov	r2, r6
 80024d4:	463b      	mov	r3, r7
 80024d6:	2800      	cmp	r0, #0
 80024d8:	f000 82ec 	beq.w	8002ab4 <_dtoa_r+0x954>
 80024dc:	2000      	movs	r0, #0
 80024de:	4964      	ldr	r1, [pc, #400]	; (8002670 <_dtoa_r+0x510>)
 80024e0:	f004 fb9a 	bl	8006c18 <__aeabi_ddiv>
 80024e4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80024e8:	f004 f8b4 	bl	8006654 <__aeabi_dsub>
 80024ec:	9b06      	ldr	r3, [sp, #24]
 80024ee:	4622      	mov	r2, r4
 80024f0:	4606      	mov	r6, r0
 80024f2:	f883 9000 	strb.w	r9, [r3]
 80024f6:	462b      	mov	r3, r5
 80024f8:	460f      	mov	r7, r1
 80024fa:	f004 fcf3 	bl	8006ee4 <__aeabi_dcmpgt>
 80024fe:	2800      	cmp	r0, #0
 8002500:	d151      	bne.n	80025a6 <_dtoa_r+0x446>
 8002502:	4622      	mov	r2, r4
 8002504:	462b      	mov	r3, r5
 8002506:	2000      	movs	r0, #0
 8002508:	4957      	ldr	r1, [pc, #348]	; (8002668 <_dtoa_r+0x508>)
 800250a:	f004 f8a3 	bl	8006654 <__aeabi_dsub>
 800250e:	4602      	mov	r2, r0
 8002510:	460b      	mov	r3, r1
 8002512:	4630      	mov	r0, r6
 8002514:	4639      	mov	r1, r7
 8002516:	f004 fce5 	bl	8006ee4 <__aeabi_dcmpgt>
 800251a:	2800      	cmp	r0, #0
 800251c:	f040 8582 	bne.w	8003024 <_dtoa_r+0xec4>
 8002520:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8002522:	2b01      	cmp	r3, #1
 8002524:	d047      	beq.n	80025b6 <_dtoa_r+0x456>
 8002526:	9a06      	ldr	r2, [sp, #24]
 8002528:	f8cd a038 	str.w	sl, [sp, #56]	; 0x38
 800252c:	4413      	add	r3, r2
 800252e:	469a      	mov	sl, r3
 8002530:	e00e      	b.n	8002550 <_dtoa_r+0x3f0>
 8002532:	4622      	mov	r2, r4
 8002534:	462b      	mov	r3, r5
 8002536:	2000      	movs	r0, #0
 8002538:	494b      	ldr	r1, [pc, #300]	; (8002668 <_dtoa_r+0x508>)
 800253a:	f004 f88b 	bl	8006654 <__aeabi_dsub>
 800253e:	4632      	mov	r2, r6
 8002540:	463b      	mov	r3, r7
 8002542:	f004 fcb1 	bl	8006ea8 <__aeabi_dcmplt>
 8002546:	2800      	cmp	r0, #0
 8002548:	f040 8502 	bne.w	8002f50 <_dtoa_r+0xdf0>
 800254c:	45d0      	cmp	r8, sl
 800254e:	d030      	beq.n	80025b2 <_dtoa_r+0x452>
 8002550:	4630      	mov	r0, r6
 8002552:	4639      	mov	r1, r7
 8002554:	2200      	movs	r2, #0
 8002556:	4b47      	ldr	r3, [pc, #284]	; (8002674 <_dtoa_r+0x514>)
 8002558:	f004 fa34 	bl	80069c4 <__aeabi_dmul>
 800255c:	2200      	movs	r2, #0
 800255e:	4b45      	ldr	r3, [pc, #276]	; (8002674 <_dtoa_r+0x514>)
 8002560:	4606      	mov	r6, r0
 8002562:	460f      	mov	r7, r1
 8002564:	4620      	mov	r0, r4
 8002566:	4629      	mov	r1, r5
 8002568:	f004 fa2c 	bl	80069c4 <__aeabi_dmul>
 800256c:	460d      	mov	r5, r1
 800256e:	4604      	mov	r4, r0
 8002570:	f004 fcd8 	bl	8006f24 <__aeabi_d2iz>
 8002574:	4681      	mov	r9, r0
 8002576:	f004 f9bb 	bl	80068f0 <__aeabi_i2d>
 800257a:	4602      	mov	r2, r0
 800257c:	460b      	mov	r3, r1
 800257e:	f109 0930 	add.w	r9, r9, #48	; 0x30
 8002582:	4620      	mov	r0, r4
 8002584:	4629      	mov	r1, r5
 8002586:	fa5f f989 	uxtb.w	r9, r9
 800258a:	f004 f863 	bl	8006654 <__aeabi_dsub>
 800258e:	4632      	mov	r2, r6
 8002590:	463b      	mov	r3, r7
 8002592:	f808 9b01 	strb.w	r9, [r8], #1
 8002596:	4604      	mov	r4, r0
 8002598:	460d      	mov	r5, r1
 800259a:	f004 fc85 	bl	8006ea8 <__aeabi_dcmplt>
 800259e:	2800      	cmp	r0, #0
 80025a0:	d0c7      	beq.n	8002532 <_dtoa_r+0x3d2>
 80025a2:	f8dd a038 	ldr.w	sl, [sp, #56]	; 0x38
 80025a6:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 80025a8:	9e06      	ldr	r6, [sp, #24]
 80025aa:	3301      	adds	r3, #1
 80025ac:	e9cd 8306 	strd	r8, r3, [sp, #24]
 80025b0:	e0f6      	b.n	80027a0 <_dtoa_r+0x640>
 80025b2:	f8dd a038 	ldr.w	sl, [sp, #56]	; 0x38
 80025b6:	e9dd 8908 	ldrd	r8, r9, [sp, #32]
 80025ba:	9a07      	ldr	r2, [sp, #28]
 80025bc:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80025be:	2a0e      	cmp	r2, #14
 80025c0:	dc02      	bgt.n	80025c8 <_dtoa_r+0x468>
 80025c2:	2b00      	cmp	r3, #0
 80025c4:	f280 8107 	bge.w	80027d6 <_dtoa_r+0x676>
 80025c8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80025ca:	2a00      	cmp	r2, #0
 80025cc:	d056      	beq.n	800267c <_dtoa_r+0x51c>
 80025ce:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80025d0:	2a01      	cmp	r2, #1
 80025d2:	f340 8384 	ble.w	8002cde <_dtoa_r+0xb7e>
 80025d6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80025d8:	1e5c      	subs	r4, r3, #1
 80025da:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80025dc:	42a3      	cmp	r3, r4
 80025de:	f280 8331 	bge.w	8002c44 <_dtoa_r+0xae4>
 80025e2:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80025e4:	9a02      	ldr	r2, [sp, #8]
 80025e6:	1ae3      	subs	r3, r4, r3
 80025e8:	940d      	str	r4, [sp, #52]	; 0x34
 80025ea:	2400      	movs	r4, #0
 80025ec:	441a      	add	r2, r3
 80025ee:	9202      	str	r2, [sp, #8]
 80025f0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80025f2:	2b00      	cmp	r3, #0
 80025f4:	f2c0 8452 	blt.w	8002e9c <_dtoa_r+0xd3c>
 80025f8:	9a05      	ldr	r2, [sp, #20]
 80025fa:	4611      	mov	r1, r2
 80025fc:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80025fe:	4419      	add	r1, r3
 8002600:	9208      	str	r2, [sp, #32]
 8002602:	441a      	add	r2, r3
 8002604:	9105      	str	r1, [sp, #20]
 8002606:	920b      	str	r2, [sp, #44]	; 0x2c
 8002608:	2101      	movs	r1, #1
 800260a:	4658      	mov	r0, fp
 800260c:	f001 fdd0 	bl	80041b0 <__i2b>
 8002610:	4607      	mov	r7, r0
 8002612:	e037      	b.n	8002684 <_dtoa_r+0x524>
 8002614:	2301      	movs	r3, #1
 8002616:	9310      	str	r3, [sp, #64]	; 0x40
 8002618:	9b05      	ldr	r3, [sp, #20]
 800261a:	2b00      	cmp	r3, #0
 800261c:	f6bf ae43 	bge.w	80022a6 <_dtoa_r+0x146>
 8002620:	f1c4 0301 	rsb	r3, r4, #1
 8002624:	930b      	str	r3, [sp, #44]	; 0x2c
 8002626:	2300      	movs	r3, #0
 8002628:	9305      	str	r3, [sp, #20]
 800262a:	e63e      	b.n	80022aa <_dtoa_r+0x14a>
 800262c:	9802      	ldr	r0, [sp, #8]
 800262e:	f004 f95f 	bl	80068f0 <__aeabi_i2d>
 8002632:	4632      	mov	r2, r6
 8002634:	463b      	mov	r3, r7
 8002636:	f004 fc2d 	bl	8006e94 <__aeabi_dcmpeq>
 800263a:	2800      	cmp	r0, #0
 800263c:	f47f ae19 	bne.w	8002272 <_dtoa_r+0x112>
 8002640:	9b02      	ldr	r3, [sp, #8]
 8002642:	3b01      	subs	r3, #1
 8002644:	9302      	str	r3, [sp, #8]
 8002646:	e614      	b.n	8002272 <_dtoa_r+0x112>
 8002648:	4e0b      	ldr	r6, [pc, #44]	; (8002678 <_dtoa_r+0x518>)
 800264a:	4630      	mov	r0, r6
 800264c:	b01b      	add	sp, #108	; 0x6c
 800264e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002652:	f1c3 0620 	rsb	r6, r3, #32
 8002656:	fa08 f006 	lsl.w	r0, r8, r6
 800265a:	e5d4      	b.n	8002206 <_dtoa_r+0xa6>
 800265c:	2401      	movs	r4, #1
 800265e:	e639      	b.n	80022d4 <_dtoa_r+0x174>
 8002660:	0800aac8 	.word	0x0800aac8
 8002664:	0800abb8 	.word	0x0800abb8
 8002668:	3ff00000 	.word	0x3ff00000
 800266c:	401c0000 	.word	0x401c0000
 8002670:	3fe00000 	.word	0x3fe00000
 8002674:	40240000 	.word	0x40240000
 8002678:	0800adc4 	.word	0x0800adc4
 800267c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800267e:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8002680:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8002682:	9308      	str	r3, [sp, #32]
 8002684:	9b08      	ldr	r3, [sp, #32]
 8002686:	2b00      	cmp	r3, #0
 8002688:	dd0f      	ble.n	80026aa <_dtoa_r+0x54a>
 800268a:	9a05      	ldr	r2, [sp, #20]
 800268c:	2a00      	cmp	r2, #0
 800268e:	dd0c      	ble.n	80026aa <_dtoa_r+0x54a>
 8002690:	9908      	ldr	r1, [sp, #32]
 8002692:	4613      	mov	r3, r2
 8002694:	428a      	cmp	r2, r1
 8002696:	bfa8      	it	ge
 8002698:	460b      	movge	r3, r1
 800269a:	990b      	ldr	r1, [sp, #44]	; 0x2c
 800269c:	1ac9      	subs	r1, r1, r3
 800269e:	910b      	str	r1, [sp, #44]	; 0x2c
 80026a0:	9908      	ldr	r1, [sp, #32]
 80026a2:	1ac9      	subs	r1, r1, r3
 80026a4:	1ad3      	subs	r3, r2, r3
 80026a6:	9108      	str	r1, [sp, #32]
 80026a8:	9305      	str	r3, [sp, #20]
 80026aa:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80026ac:	b153      	cbz	r3, 80026c4 <_dtoa_r+0x564>
 80026ae:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80026b0:	2b00      	cmp	r3, #0
 80026b2:	f000 8089 	beq.w	80027c8 <_dtoa_r+0x668>
 80026b6:	2c00      	cmp	r4, #0
 80026b8:	f300 82b2 	bgt.w	8002c20 <_dtoa_r+0xac0>
 80026bc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80026be:	1b1a      	subs	r2, r3, r4
 80026c0:	f040 8083 	bne.w	80027ca <_dtoa_r+0x66a>
 80026c4:	2101      	movs	r1, #1
 80026c6:	4658      	mov	r0, fp
 80026c8:	f001 fd72 	bl	80041b0 <__i2b>
 80026cc:	9a02      	ldr	r2, [sp, #8]
 80026ce:	4604      	mov	r4, r0
 80026d0:	2a00      	cmp	r2, #0
 80026d2:	f300 817e 	bgt.w	80029d2 <_dtoa_r+0x872>
 80026d6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80026d8:	2b01      	cmp	r3, #1
 80026da:	f340 82cb 	ble.w	8002c74 <_dtoa_r+0xb14>
 80026de:	2300      	movs	r3, #0
 80026e0:	930d      	str	r3, [sp, #52]	; 0x34
 80026e2:	9b02      	ldr	r3, [sp, #8]
 80026e4:	2b00      	cmp	r3, #0
 80026e6:	f040 817f 	bne.w	80029e8 <_dtoa_r+0x888>
 80026ea:	2001      	movs	r0, #1
 80026ec:	9a05      	ldr	r2, [sp, #20]
 80026ee:	4410      	add	r0, r2
 80026f0:	f010 001f 	ands.w	r0, r0, #31
 80026f4:	f000 8092 	beq.w	800281c <_dtoa_r+0x6bc>
 80026f8:	f1c0 0320 	rsb	r3, r0, #32
 80026fc:	2b04      	cmp	r3, #4
 80026fe:	f340 84ab 	ble.w	8003058 <_dtoa_r+0xef8>
 8002702:	f1c0 001c 	rsb	r0, r0, #28
 8002706:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002708:	4403      	add	r3, r0
 800270a:	4402      	add	r2, r0
 800270c:	930b      	str	r3, [sp, #44]	; 0x2c
 800270e:	9b08      	ldr	r3, [sp, #32]
 8002710:	9205      	str	r2, [sp, #20]
 8002712:	4403      	add	r3, r0
 8002714:	9308      	str	r3, [sp, #32]
 8002716:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002718:	2b00      	cmp	r3, #0
 800271a:	dd05      	ble.n	8002728 <_dtoa_r+0x5c8>
 800271c:	4651      	mov	r1, sl
 800271e:	461a      	mov	r2, r3
 8002720:	4658      	mov	r0, fp
 8002722:	f001 fe4f 	bl	80043c4 <__lshift>
 8002726:	4682      	mov	sl, r0
 8002728:	9b05      	ldr	r3, [sp, #20]
 800272a:	2b00      	cmp	r3, #0
 800272c:	dd05      	ble.n	800273a <_dtoa_r+0x5da>
 800272e:	4621      	mov	r1, r4
 8002730:	461a      	mov	r2, r3
 8002732:	4658      	mov	r0, fp
 8002734:	f001 fe46 	bl	80043c4 <__lshift>
 8002738:	4604      	mov	r4, r0
 800273a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800273c:	2b02      	cmp	r3, #2
 800273e:	bfd4      	ite	le
 8002740:	2300      	movle	r3, #0
 8002742:	2301      	movgt	r3, #1
 8002744:	461d      	mov	r5, r3
 8002746:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002748:	2b00      	cmp	r3, #0
 800274a:	f040 8156 	bne.w	80029fa <_dtoa_r+0x89a>
 800274e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002750:	2b00      	cmp	r3, #0
 8002752:	f300 8098 	bgt.w	8002886 <_dtoa_r+0x726>
 8002756:	2d00      	cmp	r5, #0
 8002758:	f000 8095 	beq.w	8002886 <_dtoa_r+0x726>
 800275c:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800275e:	2b00      	cmp	r3, #0
 8002760:	d158      	bne.n	8002814 <_dtoa_r+0x6b4>
 8002762:	4621      	mov	r1, r4
 8002764:	2205      	movs	r2, #5
 8002766:	4658      	mov	r0, fp
 8002768:	f001 fc26 	bl	8003fb8 <__multadd>
 800276c:	4601      	mov	r1, r0
 800276e:	4604      	mov	r4, r0
 8002770:	4650      	mov	r0, sl
 8002772:	f001 fe91 	bl	8004498 <__mcmp>
 8002776:	2800      	cmp	r0, #0
 8002778:	dd4c      	ble.n	8002814 <_dtoa_r+0x6b4>
 800277a:	9b07      	ldr	r3, [sp, #28]
 800277c:	2131      	movs	r1, #49	; 0x31
 800277e:	9a06      	ldr	r2, [sp, #24]
 8002780:	3301      	adds	r3, #1
 8002782:	4616      	mov	r6, r2
 8002784:	f802 1b01 	strb.w	r1, [r2], #1
 8002788:	9206      	str	r2, [sp, #24]
 800278a:	3301      	adds	r3, #1
 800278c:	4621      	mov	r1, r4
 800278e:	4658      	mov	r0, fp
 8002790:	9307      	str	r3, [sp, #28]
 8002792:	f001 fc07 	bl	8003fa4 <_Bfree>
 8002796:	b11f      	cbz	r7, 80027a0 <_dtoa_r+0x640>
 8002798:	4639      	mov	r1, r7
 800279a:	4658      	mov	r0, fp
 800279c:	f001 fc02 	bl	8003fa4 <_Bfree>
 80027a0:	4651      	mov	r1, sl
 80027a2:	4658      	mov	r0, fp
 80027a4:	f001 fbfe 	bl	8003fa4 <_Bfree>
 80027a8:	2300      	movs	r3, #0
 80027aa:	9a06      	ldr	r2, [sp, #24]
 80027ac:	7013      	strb	r3, [r2, #0]
 80027ae:	9b26      	ldr	r3, [sp, #152]	; 0x98
 80027b0:	4619      	mov	r1, r3
 80027b2:	9b07      	ldr	r3, [sp, #28]
 80027b4:	600b      	str	r3, [r1, #0]
 80027b6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80027b8:	2b00      	cmp	r3, #0
 80027ba:	f43f ad03 	beq.w	80021c4 <_dtoa_r+0x64>
 80027be:	4630      	mov	r0, r6
 80027c0:	601a      	str	r2, [r3, #0]
 80027c2:	b01b      	add	sp, #108	; 0x6c
 80027c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80027c8:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 80027ca:	4651      	mov	r1, sl
 80027cc:	4658      	mov	r0, fp
 80027ce:	f001 fdad 	bl	800432c <__pow5mult>
 80027d2:	4682      	mov	sl, r0
 80027d4:	e776      	b.n	80026c4 <_dtoa_r+0x564>
 80027d6:	4bb3      	ldr	r3, [pc, #716]	; (8002aa4 <_dtoa_r+0x944>)
 80027d8:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80027dc:	e9d3 0100 	ldrd	r0, r1, [r3]
 80027e0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80027e2:	2b00      	cmp	r3, #0
 80027e4:	e9cd 0102 	strd	r0, r1, [sp, #8]
 80027e8:	f280 82a9 	bge.w	8002d3e <_dtoa_r+0xbde>
 80027ec:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80027ee:	2c00      	cmp	r4, #0
 80027f0:	f300 82a5 	bgt.w	8002d3e <_dtoa_r+0xbde>
 80027f4:	2c00      	cmp	r4, #0
 80027f6:	f040 8227 	bne.w	8002c48 <_dtoa_r+0xae8>
 80027fa:	2200      	movs	r2, #0
 80027fc:	4baa      	ldr	r3, [pc, #680]	; (8002aa8 <_dtoa_r+0x948>)
 80027fe:	f004 f8e1 	bl	80069c4 <__aeabi_dmul>
 8002802:	4642      	mov	r2, r8
 8002804:	464b      	mov	r3, r9
 8002806:	f004 fb63 	bl	8006ed0 <__aeabi_dcmpge>
 800280a:	2800      	cmp	r0, #0
 800280c:	f000 8230 	beq.w	8002c70 <_dtoa_r+0xb10>
 8002810:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8002812:	4627      	mov	r7, r4
 8002814:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8002816:	9e06      	ldr	r6, [sp, #24]
 8002818:	43db      	mvns	r3, r3
 800281a:	e7b6      	b.n	800278a <_dtoa_r+0x62a>
 800281c:	201c      	movs	r0, #28
 800281e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002820:	4403      	add	r3, r0
 8002822:	930b      	str	r3, [sp, #44]	; 0x2c
 8002824:	9b08      	ldr	r3, [sp, #32]
 8002826:	4403      	add	r3, r0
 8002828:	9308      	str	r3, [sp, #32]
 800282a:	9b05      	ldr	r3, [sp, #20]
 800282c:	4403      	add	r3, r0
 800282e:	9305      	str	r3, [sp, #20]
 8002830:	e771      	b.n	8002716 <_dtoa_r+0x5b6>
 8002832:	4640      	mov	r0, r8
 8002834:	f004 f85c 	bl	80068f0 <__aeabi_i2d>
 8002838:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 800283c:	f004 f8c2 	bl	80069c4 <__aeabi_dmul>
 8002840:	2200      	movs	r2, #0
 8002842:	4b9a      	ldr	r3, [pc, #616]	; (8002aac <_dtoa_r+0x94c>)
 8002844:	f003 ff08 	bl	8006658 <__adddf3>
 8002848:	4680      	mov	r8, r0
 800284a:	f1a1 7950 	sub.w	r9, r1, #54525952	; 0x3400000
 800284e:	2200      	movs	r2, #0
 8002850:	4b95      	ldr	r3, [pc, #596]	; (8002aa8 <_dtoa_r+0x948>)
 8002852:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
 8002856:	f003 fefd 	bl	8006654 <__aeabi_dsub>
 800285a:	4642      	mov	r2, r8
 800285c:	464b      	mov	r3, r9
 800285e:	4606      	mov	r6, r0
 8002860:	460f      	mov	r7, r1
 8002862:	f004 fb3f 	bl	8006ee4 <__aeabi_dcmpgt>
 8002866:	4604      	mov	r4, r0
 8002868:	2800      	cmp	r0, #0
 800286a:	f040 8200 	bne.w	8002c6e <_dtoa_r+0xb0e>
 800286e:	4642      	mov	r2, r8
 8002870:	4630      	mov	r0, r6
 8002872:	4639      	mov	r1, r7
 8002874:	f109 4300 	add.w	r3, r9, #2147483648	; 0x80000000
 8002878:	f004 fb16 	bl	8006ea8 <__aeabi_dcmplt>
 800287c:	2800      	cmp	r0, #0
 800287e:	f43f ae9a 	beq.w	80025b6 <_dtoa_r+0x456>
 8002882:	4627      	mov	r7, r4
 8002884:	e7c6      	b.n	8002814 <_dtoa_r+0x6b4>
 8002886:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002888:	2b00      	cmp	r3, #0
 800288a:	f000 8160 	beq.w	8002b4e <_dtoa_r+0x9ee>
 800288e:	9b08      	ldr	r3, [sp, #32]
 8002890:	2b00      	cmp	r3, #0
 8002892:	dd05      	ble.n	80028a0 <_dtoa_r+0x740>
 8002894:	4639      	mov	r1, r7
 8002896:	461a      	mov	r2, r3
 8002898:	4658      	mov	r0, fp
 800289a:	f001 fd93 	bl	80043c4 <__lshift>
 800289e:	4607      	mov	r7, r0
 80028a0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80028a2:	2b00      	cmp	r3, #0
 80028a4:	f040 833d 	bne.w	8002f22 <_dtoa_r+0xdc2>
 80028a8:	970c      	str	r7, [sp, #48]	; 0x30
 80028aa:	9a06      	ldr	r2, [sp, #24]
 80028ac:	f008 0101 	and.w	r1, r8, #1
 80028b0:	46a0      	mov	r8, r4
 80028b2:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 80028b4:	1e53      	subs	r3, r2, #1
 80028b6:	4691      	mov	r9, r2
 80028b8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80028ba:	9105      	str	r1, [sp, #20]
 80028bc:	441a      	add	r2, r3
 80028be:	9208      	str	r2, [sp, #32]
 80028c0:	4641      	mov	r1, r8
 80028c2:	4650      	mov	r0, sl
 80028c4:	f7ff fbac 	bl	8002020 <quorem>
 80028c8:	4605      	mov	r5, r0
 80028ca:	900b      	str	r0, [sp, #44]	; 0x2c
 80028cc:	4639      	mov	r1, r7
 80028ce:	4650      	mov	r0, sl
 80028d0:	f001 fde2 	bl	8004498 <__mcmp>
 80028d4:	462b      	mov	r3, r5
 80028d6:	4641      	mov	r1, r8
 80028d8:	4606      	mov	r6, r0
 80028da:	3330      	adds	r3, #48	; 0x30
 80028dc:	4622      	mov	r2, r4
 80028de:	4658      	mov	r0, fp
 80028e0:	9302      	str	r3, [sp, #8]
 80028e2:	f001 fdf5 	bl	80044d0 <__mdiff>
 80028e6:	68c3      	ldr	r3, [r0, #12]
 80028e8:	4605      	mov	r5, r0
 80028ea:	4601      	mov	r1, r0
 80028ec:	2b00      	cmp	r3, #0
 80028ee:	f040 81ae 	bne.w	8002c4e <_dtoa_r+0xaee>
 80028f2:	4650      	mov	r0, sl
 80028f4:	f001 fdd0 	bl	8004498 <__mcmp>
 80028f8:	4629      	mov	r1, r5
 80028fa:	900a      	str	r0, [sp, #40]	; 0x28
 80028fc:	4658      	mov	r0, fp
 80028fe:	f001 fb51 	bl	8003fa4 <_Bfree>
 8002902:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002904:	9905      	ldr	r1, [sp, #20]
 8002906:	461a      	mov	r2, r3
 8002908:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800290a:	431a      	orrs	r2, r3
 800290c:	430a      	orrs	r2, r1
 800290e:	f000 8358 	beq.w	8002fc2 <_dtoa_r+0xe62>
 8002912:	2e00      	cmp	r6, #0
 8002914:	f109 0501 	add.w	r5, r9, #1
 8002918:	f2c0 82d3 	blt.w	8002ec2 <_dtoa_r+0xd62>
 800291c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800291e:	4316      	orrs	r6, r2
 8002920:	9a05      	ldr	r2, [sp, #20]
 8002922:	4332      	orrs	r2, r6
 8002924:	f000 82cd 	beq.w	8002ec2 <_dtoa_r+0xd62>
 8002928:	2b00      	cmp	r3, #0
 800292a:	f300 8318 	bgt.w	8002f5e <_dtoa_r+0xdfe>
 800292e:	9b02      	ldr	r3, [sp, #8]
 8002930:	f889 3000 	strb.w	r3, [r9]
 8002934:	9b08      	ldr	r3, [sp, #32]
 8002936:	454b      	cmp	r3, r9
 8002938:	f000 8322 	beq.w	8002f80 <_dtoa_r+0xe20>
 800293c:	4651      	mov	r1, sl
 800293e:	2300      	movs	r3, #0
 8002940:	220a      	movs	r2, #10
 8002942:	4658      	mov	r0, fp
 8002944:	f001 fb38 	bl	8003fb8 <__multadd>
 8002948:	42a7      	cmp	r7, r4
 800294a:	4682      	mov	sl, r0
 800294c:	4639      	mov	r1, r7
 800294e:	f04f 0300 	mov.w	r3, #0
 8002952:	f04f 020a 	mov.w	r2, #10
 8002956:	4658      	mov	r0, fp
 8002958:	f000 817e 	beq.w	8002c58 <_dtoa_r+0xaf8>
 800295c:	f001 fb2c 	bl	8003fb8 <__multadd>
 8002960:	4621      	mov	r1, r4
 8002962:	4607      	mov	r7, r0
 8002964:	2300      	movs	r3, #0
 8002966:	220a      	movs	r2, #10
 8002968:	4658      	mov	r0, fp
 800296a:	f001 fb25 	bl	8003fb8 <__multadd>
 800296e:	46a9      	mov	r9, r5
 8002970:	4604      	mov	r4, r0
 8002972:	e7a5      	b.n	80028c0 <_dtoa_r+0x760>
 8002974:	f000 8137 	beq.w	8002be6 <_dtoa_r+0xa86>
 8002978:	9b07      	ldr	r3, [sp, #28]
 800297a:	425d      	negs	r5, r3
 800297c:	4b49      	ldr	r3, [pc, #292]	; (8002aa4 <_dtoa_r+0x944>)
 800297e:	f005 020f 	and.w	r2, r5, #15
 8002982:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8002986:	e9dd 0108 	ldrd	r0, r1, [sp, #32]
 800298a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800298e:	f004 f819 	bl	80069c4 <__aeabi_dmul>
 8002992:	112d      	asrs	r5, r5, #4
 8002994:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8002998:	f000 833c 	beq.w	8003014 <_dtoa_r+0xeb4>
 800299c:	4e44      	ldr	r6, [pc, #272]	; (8002ab0 <_dtoa_r+0x950>)
 800299e:	2300      	movs	r3, #0
 80029a0:	f04f 0802 	mov.w	r8, #2
 80029a4:	07ea      	lsls	r2, r5, #31
 80029a6:	d506      	bpl.n	80029b6 <_dtoa_r+0x856>
 80029a8:	f108 0801 	add.w	r8, r8, #1
 80029ac:	e9d6 2300 	ldrd	r2, r3, [r6]
 80029b0:	f004 f808 	bl	80069c4 <__aeabi_dmul>
 80029b4:	4623      	mov	r3, r4
 80029b6:	106d      	asrs	r5, r5, #1
 80029b8:	f106 0608 	add.w	r6, r6, #8
 80029bc:	d1f2      	bne.n	80029a4 <_dtoa_r+0x844>
 80029be:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 80029c2:	2b00      	cmp	r3, #0
 80029c4:	f47f ad44 	bne.w	8002450 <_dtoa_r+0x2f0>
 80029c8:	e9dd 3412 	ldrd	r3, r4, [sp, #72]	; 0x48
 80029cc:	e9cd 340e 	strd	r3, r4, [sp, #56]	; 0x38
 80029d0:	e53e      	b.n	8002450 <_dtoa_r+0x2f0>
 80029d2:	4601      	mov	r1, r0
 80029d4:	4658      	mov	r0, fp
 80029d6:	f001 fca9 	bl	800432c <__pow5mult>
 80029da:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80029dc:	4604      	mov	r4, r0
 80029de:	2b01      	cmp	r3, #1
 80029e0:	f340 8106 	ble.w	8002bf0 <_dtoa_r+0xa90>
 80029e4:	2300      	movs	r3, #0
 80029e6:	930d      	str	r3, [sp, #52]	; 0x34
 80029e8:	6923      	ldr	r3, [r4, #16]
 80029ea:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 80029ee:	6918      	ldr	r0, [r3, #16]
 80029f0:	f001 fb8c 	bl	800410c <__hi0bits>
 80029f4:	f1c0 0020 	rsb	r0, r0, #32
 80029f8:	e678      	b.n	80026ec <_dtoa_r+0x58c>
 80029fa:	4621      	mov	r1, r4
 80029fc:	4650      	mov	r0, sl
 80029fe:	f001 fd4b 	bl	8004498 <__mcmp>
 8002a02:	2800      	cmp	r0, #0
 8002a04:	f6bf aea3 	bge.w	800274e <_dtoa_r+0x5ee>
 8002a08:	2300      	movs	r3, #0
 8002a0a:	9e16      	ldr	r6, [sp, #88]	; 0x58
 8002a0c:	4651      	mov	r1, sl
 8002a0e:	220a      	movs	r2, #10
 8002a10:	4658      	mov	r0, fp
 8002a12:	429e      	cmp	r6, r3
 8002a14:	bfcc      	ite	gt
 8002a16:	2500      	movgt	r5, #0
 8002a18:	f005 0501 	andle.w	r5, r5, #1
 8002a1c:	f001 facc 	bl	8003fb8 <__multadd>
 8002a20:	9b07      	ldr	r3, [sp, #28]
 8002a22:	462e      	mov	r6, r5
 8002a24:	4682      	mov	sl, r0
 8002a26:	3b01      	subs	r3, #1
 8002a28:	461d      	mov	r5, r3
 8002a2a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002a2c:	2b00      	cmp	r3, #0
 8002a2e:	f040 82dc 	bne.w	8002fea <_dtoa_r+0xe8a>
 8002a32:	2e00      	cmp	r6, #0
 8002a34:	f040 82d4 	bne.w	8002fe0 <_dtoa_r+0xe80>
 8002a38:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8002a3a:	930a      	str	r3, [sp, #40]	; 0x28
 8002a3c:	e08a      	b.n	8002b54 <_dtoa_r+0x9f4>
 8002a3e:	e9cd 890e 	strd	r8, r9, [sp, #56]	; 0x38
 8002a42:	f04f 0802 	mov.w	r8, #2
 8002a46:	e4e9      	b.n	800241c <_dtoa_r+0x2bc>
 8002a48:	2301      	movs	r3, #1
 8002a4a:	930c      	str	r3, [sp, #48]	; 0x30
 8002a4c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8002a4e:	2b00      	cmp	r3, #0
 8002a50:	f340 8108 	ble.w	8002c64 <_dtoa_r+0xb04>
 8002a54:	4618      	mov	r0, r3
 8002a56:	9316      	str	r3, [sp, #88]	; 0x58
 8002a58:	930a      	str	r3, [sp, #40]	; 0x28
 8002a5a:	2100      	movs	r1, #0
 8002a5c:	2817      	cmp	r0, #23
 8002a5e:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
 8002a62:	f77f acac 	ble.w	80023be <_dtoa_r+0x25e>
 8002a66:	2201      	movs	r2, #1
 8002a68:	2304      	movs	r3, #4
 8002a6a:	005b      	lsls	r3, r3, #1
 8002a6c:	4611      	mov	r1, r2
 8002a6e:	3201      	adds	r2, #1
 8002a70:	f103 0514 	add.w	r5, r3, #20
 8002a74:	4285      	cmp	r5, r0
 8002a76:	d9f8      	bls.n	8002a6a <_dtoa_r+0x90a>
 8002a78:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
 8002a7c:	e49f      	b.n	80023be <_dtoa_r+0x25e>
 8002a7e:	2301      	movs	r3, #1
 8002a80:	930c      	str	r3, [sp, #48]	; 0x30
 8002a82:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8002a84:	9a07      	ldr	r2, [sp, #28]
 8002a86:	4413      	add	r3, r2
 8002a88:	9316      	str	r3, [sp, #88]	; 0x58
 8002a8a:	3301      	adds	r3, #1
 8002a8c:	2b01      	cmp	r3, #1
 8002a8e:	4618      	mov	r0, r3
 8002a90:	930a      	str	r3, [sp, #40]	; 0x28
 8002a92:	bfb8      	it	lt
 8002a94:	2001      	movlt	r0, #1
 8002a96:	e7e0      	b.n	8002a5a <_dtoa_r+0x8fa>
 8002a98:	2300      	movs	r3, #0
 8002a9a:	930c      	str	r3, [sp, #48]	; 0x30
 8002a9c:	e7f1      	b.n	8002a82 <_dtoa_r+0x922>
 8002a9e:	2300      	movs	r3, #0
 8002aa0:	930c      	str	r3, [sp, #48]	; 0x30
 8002aa2:	e7d3      	b.n	8002a4c <_dtoa_r+0x8ec>
 8002aa4:	0800aac8 	.word	0x0800aac8
 8002aa8:	40140000 	.word	0x40140000
 8002aac:	401c0000 	.word	0x401c0000
 8002ab0:	0800abb8 	.word	0x0800abb8
 8002ab4:	e9dd 0114 	ldrd	r0, r1, [sp, #80]	; 0x50
 8002ab8:	f003 ff84 	bl	80069c4 <__aeabi_dmul>
 8002abc:	9b06      	ldr	r3, [sp, #24]
 8002abe:	f883 9000 	strb.w	r9, [r3]
 8002ac2:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8002ac4:	2b01      	cmp	r3, #1
 8002ac6:	e9cd 010e 	strd	r0, r1, [sp, #56]	; 0x38
 8002aca:	d01d      	beq.n	8002b08 <_dtoa_r+0x9a8>
 8002acc:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8002ace:	9a06      	ldr	r2, [sp, #24]
 8002ad0:	4413      	add	r3, r2
 8002ad2:	461f      	mov	r7, r3
 8002ad4:	2200      	movs	r2, #0
 8002ad6:	4bb7      	ldr	r3, [pc, #732]	; (8002db4 <_dtoa_r+0xc54>)
 8002ad8:	4620      	mov	r0, r4
 8002ada:	4629      	mov	r1, r5
 8002adc:	f003 ff72 	bl	80069c4 <__aeabi_dmul>
 8002ae0:	460d      	mov	r5, r1
 8002ae2:	4604      	mov	r4, r0
 8002ae4:	f004 fa1e 	bl	8006f24 <__aeabi_d2iz>
 8002ae8:	4606      	mov	r6, r0
 8002aea:	f003 ff01 	bl	80068f0 <__aeabi_i2d>
 8002aee:	4602      	mov	r2, r0
 8002af0:	460b      	mov	r3, r1
 8002af2:	3630      	adds	r6, #48	; 0x30
 8002af4:	4620      	mov	r0, r4
 8002af6:	4629      	mov	r1, r5
 8002af8:	f003 fdac 	bl	8006654 <__aeabi_dsub>
 8002afc:	f808 6b01 	strb.w	r6, [r8], #1
 8002b00:	45b8      	cmp	r8, r7
 8002b02:	4604      	mov	r4, r0
 8002b04:	460d      	mov	r5, r1
 8002b06:	d1e5      	bne.n	8002ad4 <_dtoa_r+0x974>
 8002b08:	2200      	movs	r2, #0
 8002b0a:	4bab      	ldr	r3, [pc, #684]	; (8002db8 <_dtoa_r+0xc58>)
 8002b0c:	e9dd 010e 	ldrd	r0, r1, [sp, #56]	; 0x38
 8002b10:	f003 fda2 	bl	8006658 <__adddf3>
 8002b14:	4622      	mov	r2, r4
 8002b16:	462b      	mov	r3, r5
 8002b18:	f004 f9c6 	bl	8006ea8 <__aeabi_dcmplt>
 8002b1c:	2800      	cmp	r0, #0
 8002b1e:	f040 81f9 	bne.w	8002f14 <_dtoa_r+0xdb4>
 8002b22:	2000      	movs	r0, #0
 8002b24:	49a4      	ldr	r1, [pc, #656]	; (8002db8 <_dtoa_r+0xc58>)
 8002b26:	e9dd 230e 	ldrd	r2, r3, [sp, #56]	; 0x38
 8002b2a:	f003 fd93 	bl	8006654 <__aeabi_dsub>
 8002b2e:	4622      	mov	r2, r4
 8002b30:	462b      	mov	r3, r5
 8002b32:	f004 f9d7 	bl	8006ee4 <__aeabi_dcmpgt>
 8002b36:	2800      	cmp	r0, #0
 8002b38:	f43f ad3d 	beq.w	80025b6 <_dtoa_r+0x456>
 8002b3c:	e000      	b.n	8002b40 <_dtoa_r+0x9e0>
 8002b3e:	4690      	mov	r8, r2
 8002b40:	f818 3c01 	ldrb.w	r3, [r8, #-1]
 8002b44:	f108 32ff 	add.w	r2, r8, #4294967295	; 0xffffffff
 8002b48:	2b30      	cmp	r3, #48	; 0x30
 8002b4a:	d0f8      	beq.n	8002b3e <_dtoa_r+0x9de>
 8002b4c:	e52b      	b.n	80025a6 <_dtoa_r+0x446>
 8002b4e:	9b07      	ldr	r3, [sp, #28]
 8002b50:	3301      	adds	r3, #1
 8002b52:	9307      	str	r3, [sp, #28]
 8002b54:	9d06      	ldr	r5, [sp, #24]
 8002b56:	2601      	movs	r6, #1
 8002b58:	f8dd 8028 	ldr.w	r8, [sp, #40]	; 0x28
 8002b5c:	e007      	b.n	8002b6e <_dtoa_r+0xa0e>
 8002b5e:	4651      	mov	r1, sl
 8002b60:	2300      	movs	r3, #0
 8002b62:	220a      	movs	r2, #10
 8002b64:	4658      	mov	r0, fp
 8002b66:	f001 fa27 	bl	8003fb8 <__multadd>
 8002b6a:	3601      	adds	r6, #1
 8002b6c:	4682      	mov	sl, r0
 8002b6e:	4621      	mov	r1, r4
 8002b70:	4650      	mov	r0, sl
 8002b72:	f7ff fa55 	bl	8002020 <quorem>
 8002b76:	4546      	cmp	r6, r8
 8002b78:	f100 0030 	add.w	r0, r0, #48	; 0x30
 8002b7c:	f805 0b01 	strb.w	r0, [r5], #1
 8002b80:	dbed      	blt.n	8002b5e <_dtoa_r+0x9fe>
 8002b82:	4680      	mov	r8, r0
 8002b84:	2600      	movs	r6, #0
 8002b86:	4651      	mov	r1, sl
 8002b88:	2201      	movs	r2, #1
 8002b8a:	4658      	mov	r0, fp
 8002b8c:	f001 fc1a 	bl	80043c4 <__lshift>
 8002b90:	4621      	mov	r1, r4
 8002b92:	4682      	mov	sl, r0
 8002b94:	f001 fc80 	bl	8004498 <__mcmp>
 8002b98:	2800      	cmp	r0, #0
 8002b9a:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8002b9e:	f340 816f 	ble.w	8002e80 <_dtoa_r+0xd20>
 8002ba2:	1e6b      	subs	r3, r5, #1
 8002ba4:	9906      	ldr	r1, [sp, #24]
 8002ba6:	e004      	b.n	8002bb2 <_dtoa_r+0xa52>
 8002ba8:	4299      	cmp	r1, r3
 8002baa:	f000 8162 	beq.w	8002e72 <_dtoa_r+0xd12>
 8002bae:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 8002bb2:	2a39      	cmp	r2, #57	; 0x39
 8002bb4:	f103 0501 	add.w	r5, r3, #1
 8002bb8:	d0f6      	beq.n	8002ba8 <_dtoa_r+0xa48>
 8002bba:	3201      	adds	r2, #1
 8002bbc:	701a      	strb	r2, [r3, #0]
 8002bbe:	4621      	mov	r1, r4
 8002bc0:	4658      	mov	r0, fp
 8002bc2:	f001 f9ef 	bl	8003fa4 <_Bfree>
 8002bc6:	2f00      	cmp	r7, #0
 8002bc8:	f000 8150 	beq.w	8002e6c <_dtoa_r+0xd0c>
 8002bcc:	2e00      	cmp	r6, #0
 8002bce:	f000 8238 	beq.w	8003042 <_dtoa_r+0xee2>
 8002bd2:	42be      	cmp	r6, r7
 8002bd4:	f000 8235 	beq.w	8003042 <_dtoa_r+0xee2>
 8002bd8:	4631      	mov	r1, r6
 8002bda:	4658      	mov	r0, fp
 8002bdc:	9e06      	ldr	r6, [sp, #24]
 8002bde:	f001 f9e1 	bl	8003fa4 <_Bfree>
 8002be2:	9506      	str	r5, [sp, #24]
 8002be4:	e5d8      	b.n	8002798 <_dtoa_r+0x638>
 8002be6:	e9cd 890e 	strd	r8, r9, [sp, #56]	; 0x38
 8002bea:	f04f 0802 	mov.w	r8, #2
 8002bee:	e42f      	b.n	8002450 <_dtoa_r+0x2f0>
 8002bf0:	f1b8 0f00 	cmp.w	r8, #0
 8002bf4:	f47f aef6 	bne.w	80029e4 <_dtoa_r+0x884>
 8002bf8:	f3c9 0313 	ubfx	r3, r9, #0, #20
 8002bfc:	464a      	mov	r2, r9
 8002bfe:	2b00      	cmp	r3, #0
 8002c00:	f040 8215 	bne.w	800302e <_dtoa_r+0xece>
 8002c04:	4b6d      	ldr	r3, [pc, #436]	; (8002dbc <_dtoa_r+0xc5c>)
 8002c06:	4013      	ands	r3, r2
 8002c08:	2b00      	cmp	r3, #0
 8002c0a:	f000 81c3 	beq.w	8002f94 <_dtoa_r+0xe34>
 8002c0e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002c10:	3301      	adds	r3, #1
 8002c12:	930b      	str	r3, [sp, #44]	; 0x2c
 8002c14:	9b05      	ldr	r3, [sp, #20]
 8002c16:	3301      	adds	r3, #1
 8002c18:	9305      	str	r3, [sp, #20]
 8002c1a:	2301      	movs	r3, #1
 8002c1c:	930d      	str	r3, [sp, #52]	; 0x34
 8002c1e:	e560      	b.n	80026e2 <_dtoa_r+0x582>
 8002c20:	4639      	mov	r1, r7
 8002c22:	4622      	mov	r2, r4
 8002c24:	4658      	mov	r0, fp
 8002c26:	f001 fb81 	bl	800432c <__pow5mult>
 8002c2a:	4652      	mov	r2, sl
 8002c2c:	4601      	mov	r1, r0
 8002c2e:	4607      	mov	r7, r0
 8002c30:	4658      	mov	r0, fp
 8002c32:	f001 fad3 	bl	80041dc <__multiply>
 8002c36:	4603      	mov	r3, r0
 8002c38:	4651      	mov	r1, sl
 8002c3a:	4658      	mov	r0, fp
 8002c3c:	469a      	mov	sl, r3
 8002c3e:	f001 f9b1 	bl	8003fa4 <_Bfree>
 8002c42:	e53b      	b.n	80026bc <_dtoa_r+0x55c>
 8002c44:	1b1c      	subs	r4, r3, r4
 8002c46:	e4d3      	b.n	80025f0 <_dtoa_r+0x490>
 8002c48:	2400      	movs	r4, #0
 8002c4a:	4627      	mov	r7, r4
 8002c4c:	e5e2      	b.n	8002814 <_dtoa_r+0x6b4>
 8002c4e:	4658      	mov	r0, fp
 8002c50:	f001 f9a8 	bl	8003fa4 <_Bfree>
 8002c54:	2301      	movs	r3, #1
 8002c56:	e65c      	b.n	8002912 <_dtoa_r+0x7b2>
 8002c58:	f001 f9ae 	bl	8003fb8 <__multadd>
 8002c5c:	46a9      	mov	r9, r5
 8002c5e:	4607      	mov	r7, r0
 8002c60:	4604      	mov	r4, r0
 8002c62:	e62d      	b.n	80028c0 <_dtoa_r+0x760>
 8002c64:	2301      	movs	r3, #1
 8002c66:	9325      	str	r3, [sp, #148]	; 0x94
 8002c68:	930a      	str	r3, [sp, #40]	; 0x28
 8002c6a:	f7ff bba3 	b.w	80023b4 <_dtoa_r+0x254>
 8002c6e:	2400      	movs	r4, #0
 8002c70:	4627      	mov	r7, r4
 8002c72:	e582      	b.n	800277a <_dtoa_r+0x61a>
 8002c74:	f1b8 0f00 	cmp.w	r8, #0
 8002c78:	f47f ad31 	bne.w	80026de <_dtoa_r+0x57e>
 8002c7c:	f3c9 0313 	ubfx	r3, r9, #0, #20
 8002c80:	464a      	mov	r2, r9
 8002c82:	2b00      	cmp	r3, #0
 8002c84:	d0be      	beq.n	8002c04 <_dtoa_r+0xaa4>
 8002c86:	f8cd 8034 	str.w	r8, [sp, #52]	; 0x34
 8002c8a:	e52a      	b.n	80026e2 <_dtoa_r+0x582>
 8002c8c:	9010      	str	r0, [sp, #64]	; 0x40
 8002c8e:	e4c7      	b.n	8002620 <_dtoa_r+0x4c0>
 8002c90:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c92:	2b00      	cmp	r3, #0
 8002c94:	f43f adcd 	beq.w	8002832 <_dtoa_r+0x6d2>
 8002c98:	9c16      	ldr	r4, [sp, #88]	; 0x58
 8002c9a:	2c00      	cmp	r4, #0
 8002c9c:	f77f ac8b 	ble.w	80025b6 <_dtoa_r+0x456>
 8002ca0:	2200      	movs	r2, #0
 8002ca2:	4628      	mov	r0, r5
 8002ca4:	4631      	mov	r1, r6
 8002ca6:	4b43      	ldr	r3, [pc, #268]	; (8002db4 <_dtoa_r+0xc54>)
 8002ca8:	f003 fe8c 	bl	80069c4 <__aeabi_dmul>
 8002cac:	9b07      	ldr	r3, [sp, #28]
 8002cae:	4605      	mov	r5, r0
 8002cb0:	460e      	mov	r6, r1
 8002cb2:	3b01      	subs	r3, #1
 8002cb4:	f108 0001 	add.w	r0, r8, #1
 8002cb8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002cba:	e9cd 560e 	strd	r5, r6, [sp, #56]	; 0x38
 8002cbe:	f003 fe17 	bl	80068f0 <__aeabi_i2d>
 8002cc2:	462a      	mov	r2, r5
 8002cc4:	4633      	mov	r3, r6
 8002cc6:	f003 fe7d 	bl	80069c4 <__aeabi_dmul>
 8002cca:	2200      	movs	r2, #0
 8002ccc:	4b3c      	ldr	r3, [pc, #240]	; (8002dc0 <_dtoa_r+0xc60>)
 8002cce:	f003 fcc3 	bl	8006658 <__adddf3>
 8002cd2:	9412      	str	r4, [sp, #72]	; 0x48
 8002cd4:	4680      	mov	r8, r0
 8002cd6:	f1a1 7950 	sub.w	r9, r1, #54525952	; 0x3400000
 8002cda:	f7ff bbdc 	b.w	8002496 <_dtoa_r+0x336>
 8002cde:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002ce0:	2a00      	cmp	r2, #0
 8002ce2:	f000 80e1 	beq.w	8002ea8 <_dtoa_r+0xd48>
 8002ce6:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8002ce8:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8002cec:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8002cee:	9108      	str	r1, [sp, #32]
 8002cf0:	9a05      	ldr	r2, [sp, #20]
 8002cf2:	441a      	add	r2, r3
 8002cf4:	9205      	str	r2, [sp, #20]
 8002cf6:	460a      	mov	r2, r1
 8002cf8:	441a      	add	r2, r3
 8002cfa:	920b      	str	r2, [sp, #44]	; 0x2c
 8002cfc:	e484      	b.n	8002608 <_dtoa_r+0x4a8>
 8002cfe:	2100      	movs	r1, #0
 8002d00:	4658      	mov	r0, fp
 8002d02:	f8cb 1044 	str.w	r1, [fp, #68]	; 0x44
 8002d06:	f001 f927 	bl	8003f58 <_Balloc>
 8002d0a:	9006      	str	r0, [sp, #24]
 8002d0c:	2800      	cmp	r0, #0
 8002d0e:	f000 8191 	beq.w	8003034 <_dtoa_r+0xed4>
 8002d12:	9a07      	ldr	r2, [sp, #28]
 8002d14:	9b06      	ldr	r3, [sp, #24]
 8002d16:	2a0e      	cmp	r2, #14
 8002d18:	f8cb 3040 	str.w	r3, [fp, #64]	; 0x40
 8002d1c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8002d1e:	f300 81a1 	bgt.w	8003064 <_dtoa_r+0xf04>
 8002d22:	2b00      	cmp	r3, #0
 8002d24:	f2c0 819e 	blt.w	8003064 <_dtoa_r+0xf04>
 8002d28:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d2c:	4b25      	ldr	r3, [pc, #148]	; (8002dc4 <_dtoa_r+0xc64>)
 8002d2e:	920a      	str	r2, [sp, #40]	; 0x28
 8002d30:	9a07      	ldr	r2, [sp, #28]
 8002d32:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8002d36:	e9d3 3400 	ldrd	r3, r4, [r3]
 8002d3a:	e9cd 3402 	strd	r3, r4, [sp, #8]
 8002d3e:	9907      	ldr	r1, [sp, #28]
 8002d40:	4644      	mov	r4, r8
 8002d42:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8002d46:	3101      	adds	r1, #1
 8002d48:	4620      	mov	r0, r4
 8002d4a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8002d4e:	9107      	str	r1, [sp, #28]
 8002d50:	4649      	mov	r1, r9
 8002d52:	f003 ff61 	bl	8006c18 <__aeabi_ddiv>
 8002d56:	f004 f8e5 	bl	8006f24 <__aeabi_d2iz>
 8002d5a:	4607      	mov	r7, r0
 8002d5c:	f003 fdc8 	bl	80068f0 <__aeabi_i2d>
 8002d60:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8002d64:	f003 fe2e 	bl	80069c4 <__aeabi_dmul>
 8002d68:	4602      	mov	r2, r0
 8002d6a:	4620      	mov	r0, r4
 8002d6c:	f107 0430 	add.w	r4, r7, #48	; 0x30
 8002d70:	460b      	mov	r3, r1
 8002d72:	4649      	mov	r1, r9
 8002d74:	f003 fc6e 	bl	8006654 <__aeabi_dsub>
 8002d78:	f808 4b01 	strb.w	r4, [r8], #1
 8002d7c:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 8002d7e:	4602      	mov	r2, r0
 8002d80:	460b      	mov	r3, r1
 8002d82:	2c01      	cmp	r4, #1
 8002d84:	d04f      	beq.n	8002e26 <_dtoa_r+0xcc6>
 8002d86:	2200      	movs	r2, #0
 8002d88:	4b0a      	ldr	r3, [pc, #40]	; (8002db4 <_dtoa_r+0xc54>)
 8002d8a:	f003 fe1b 	bl	80069c4 <__aeabi_dmul>
 8002d8e:	2200      	movs	r2, #0
 8002d90:	2300      	movs	r3, #0
 8002d92:	4604      	mov	r4, r0
 8002d94:	460d      	mov	r5, r1
 8002d96:	f004 f87d 	bl	8006e94 <__aeabi_dcmpeq>
 8002d9a:	2800      	cmp	r0, #0
 8002d9c:	f040 80b6 	bne.w	8002f0c <_dtoa_r+0xdac>
 8002da0:	f8cd a014 	str.w	sl, [sp, #20]
 8002da4:	2601      	movs	r6, #1
 8002da6:	f8dd 9028 	ldr.w	r9, [sp, #40]	; 0x28
 8002daa:	f8cd b028 	str.w	fp, [sp, #40]	; 0x28
 8002dae:	e9dd ab02 	ldrd	sl, fp, [sp, #8]
 8002db2:	e016      	b.n	8002de2 <_dtoa_r+0xc82>
 8002db4:	40240000 	.word	0x40240000
 8002db8:	3fe00000 	.word	0x3fe00000
 8002dbc:	7ff00000 	.word	0x7ff00000
 8002dc0:	401c0000 	.word	0x401c0000
 8002dc4:	0800aac8 	.word	0x0800aac8
 8002dc8:	2200      	movs	r2, #0
 8002dca:	4bab      	ldr	r3, [pc, #684]	; (8003078 <_dtoa_r+0xf18>)
 8002dcc:	f003 fdfa 	bl	80069c4 <__aeabi_dmul>
 8002dd0:	2200      	movs	r2, #0
 8002dd2:	2300      	movs	r3, #0
 8002dd4:	4604      	mov	r4, r0
 8002dd6:	460d      	mov	r5, r1
 8002dd8:	f004 f85c 	bl	8006e94 <__aeabi_dcmpeq>
 8002ddc:	2800      	cmp	r0, #0
 8002dde:	f040 8091 	bne.w	8002f04 <_dtoa_r+0xda4>
 8002de2:	4652      	mov	r2, sl
 8002de4:	465b      	mov	r3, fp
 8002de6:	4620      	mov	r0, r4
 8002de8:	4629      	mov	r1, r5
 8002dea:	f003 ff15 	bl	8006c18 <__aeabi_ddiv>
 8002dee:	3601      	adds	r6, #1
 8002df0:	f004 f898 	bl	8006f24 <__aeabi_d2iz>
 8002df4:	4607      	mov	r7, r0
 8002df6:	f003 fd7b 	bl	80068f0 <__aeabi_i2d>
 8002dfa:	4652      	mov	r2, sl
 8002dfc:	465b      	mov	r3, fp
 8002dfe:	f003 fde1 	bl	80069c4 <__aeabi_dmul>
 8002e02:	4602      	mov	r2, r0
 8002e04:	460b      	mov	r3, r1
 8002e06:	4620      	mov	r0, r4
 8002e08:	4629      	mov	r1, r5
 8002e0a:	f107 0430 	add.w	r4, r7, #48	; 0x30
 8002e0e:	f003 fc21 	bl	8006654 <__aeabi_dsub>
 8002e12:	454e      	cmp	r6, r9
 8002e14:	4602      	mov	r2, r0
 8002e16:	460b      	mov	r3, r1
 8002e18:	f808 4b01 	strb.w	r4, [r8], #1
 8002e1c:	d1d4      	bne.n	8002dc8 <_dtoa_r+0xc68>
 8002e1e:	f8dd a014 	ldr.w	sl, [sp, #20]
 8002e22:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
 8002e26:	4610      	mov	r0, r2
 8002e28:	4619      	mov	r1, r3
 8002e2a:	f003 fc15 	bl	8006658 <__adddf3>
 8002e2e:	4604      	mov	r4, r0
 8002e30:	460d      	mov	r5, r1
 8002e32:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8002e36:	f004 f855 	bl	8006ee4 <__aeabi_dcmpgt>
 8002e3a:	2800      	cmp	r0, #0
 8002e3c:	f000 80b3 	beq.w	8002fa6 <_dtoa_r+0xe46>
 8002e40:	9e06      	ldr	r6, [sp, #24]
 8002e42:	f818 9c01 	ldrb.w	r9, [r8, #-1]
 8002e46:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8002e4a:	e003      	b.n	8002e54 <_dtoa_r+0xcf4>
 8002e4c:	4546      	cmp	r6, r8
 8002e4e:	d032      	beq.n	8002eb6 <_dtoa_r+0xd56>
 8002e50:	f818 9d01 	ldrb.w	r9, [r8, #-1]!
 8002e54:	f1b9 0f39 	cmp.w	r9, #57	; 0x39
 8002e58:	f108 0301 	add.w	r3, r8, #1
 8002e5c:	d0f6      	beq.n	8002e4c <_dtoa_r+0xcec>
 8002e5e:	9306      	str	r3, [sp, #24]
 8002e60:	f109 0301 	add.w	r3, r9, #1
 8002e64:	b2db      	uxtb	r3, r3
 8002e66:	f888 3000 	strb.w	r3, [r8]
 8002e6a:	e499      	b.n	80027a0 <_dtoa_r+0x640>
 8002e6c:	9e06      	ldr	r6, [sp, #24]
 8002e6e:	9506      	str	r5, [sp, #24]
 8002e70:	e496      	b.n	80027a0 <_dtoa_r+0x640>
 8002e72:	9a07      	ldr	r2, [sp, #28]
 8002e74:	2331      	movs	r3, #49	; 0x31
 8002e76:	3201      	adds	r2, #1
 8002e78:	9207      	str	r2, [sp, #28]
 8002e7a:	9a06      	ldr	r2, [sp, #24]
 8002e7c:	7013      	strb	r3, [r2, #0]
 8002e7e:	e69e      	b.n	8002bbe <_dtoa_r+0xa5e>
 8002e80:	d103      	bne.n	8002e8a <_dtoa_r+0xd2a>
 8002e82:	f018 0f01 	tst.w	r8, #1
 8002e86:	f47f ae8c 	bne.w	8002ba2 <_dtoa_r+0xa42>
 8002e8a:	1e6b      	subs	r3, r5, #1
 8002e8c:	e001      	b.n	8002e92 <_dtoa_r+0xd32>
 8002e8e:	f813 2d01 	ldrb.w	r2, [r3, #-1]!
 8002e92:	2a30      	cmp	r2, #48	; 0x30
 8002e94:	f103 0501 	add.w	r5, r3, #1
 8002e98:	d0f9      	beq.n	8002e8e <_dtoa_r+0xd2e>
 8002e9a:	e690      	b.n	8002bbe <_dtoa_r+0xa5e>
 8002e9c:	e9dd 230a 	ldrd	r2, r3, [sp, #40]	; 0x28
 8002ea0:	1a9b      	subs	r3, r3, r2
 8002ea2:	9308      	str	r3, [sp, #32]
 8002ea4:	f7ff bbb0 	b.w	8002608 <_dtoa_r+0x4a8>
 8002ea8:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8002eaa:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8002eac:	9c0d      	ldr	r4, [sp, #52]	; 0x34
 8002eae:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8002eb2:	9108      	str	r1, [sp, #32]
 8002eb4:	e71c      	b.n	8002cf0 <_dtoa_r+0xb90>
 8002eb6:	9306      	str	r3, [sp, #24]
 8002eb8:	9b07      	ldr	r3, [sp, #28]
 8002eba:	3301      	adds	r3, #1
 8002ebc:	9307      	str	r3, [sp, #28]
 8002ebe:	2331      	movs	r3, #49	; 0x31
 8002ec0:	e7d1      	b.n	8002e66 <_dtoa_r+0xd06>
 8002ec2:	9a07      	ldr	r2, [sp, #28]
 8002ec4:	2b00      	cmp	r3, #0
 8002ec6:	940c      	str	r4, [sp, #48]	; 0x30
 8002ec8:	4644      	mov	r4, r8
 8002eca:	f102 0201 	add.w	r2, r2, #1
 8002ece:	f8dd 8008 	ldr.w	r8, [sp, #8]
 8002ed2:	9207      	str	r2, [sp, #28]
 8002ed4:	dd11      	ble.n	8002efa <_dtoa_r+0xd9a>
 8002ed6:	4651      	mov	r1, sl
 8002ed8:	2201      	movs	r2, #1
 8002eda:	4658      	mov	r0, fp
 8002edc:	f001 fa72 	bl	80043c4 <__lshift>
 8002ee0:	4621      	mov	r1, r4
 8002ee2:	4682      	mov	sl, r0
 8002ee4:	f001 fad8 	bl	8004498 <__mcmp>
 8002ee8:	2800      	cmp	r0, #0
 8002eea:	f340 808c 	ble.w	8003006 <_dtoa_r+0xea6>
 8002eee:	f1b8 0f39 	cmp.w	r8, #57	; 0x39
 8002ef2:	d052      	beq.n	8002f9a <_dtoa_r+0xe3a>
 8002ef4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002ef6:	f103 0831 	add.w	r8, r3, #49	; 0x31
 8002efa:	463e      	mov	r6, r7
 8002efc:	f889 8000 	strb.w	r8, [r9]
 8002f00:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8002f02:	e65c      	b.n	8002bbe <_dtoa_r+0xa5e>
 8002f04:	f8dd a014 	ldr.w	sl, [sp, #20]
 8002f08:	f8dd b028 	ldr.w	fp, [sp, #40]	; 0x28
 8002f0c:	9e06      	ldr	r6, [sp, #24]
 8002f0e:	f8cd 8018 	str.w	r8, [sp, #24]
 8002f12:	e445      	b.n	80027a0 <_dtoa_r+0x640>
 8002f14:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8002f16:	9e06      	ldr	r6, [sp, #24]
 8002f18:	3301      	adds	r3, #1
 8002f1a:	9307      	str	r3, [sp, #28]
 8002f1c:	f818 9c01 	ldrb.w	r9, [r8, #-1]
 8002f20:	e791      	b.n	8002e46 <_dtoa_r+0xce6>
 8002f22:	6879      	ldr	r1, [r7, #4]
 8002f24:	4658      	mov	r0, fp
 8002f26:	f001 f817 	bl	8003f58 <_Balloc>
 8002f2a:	4605      	mov	r5, r0
 8002f2c:	2800      	cmp	r0, #0
 8002f2e:	f000 808c 	beq.w	800304a <_dtoa_r+0xeea>
 8002f32:	693b      	ldr	r3, [r7, #16]
 8002f34:	f107 010c 	add.w	r1, r7, #12
 8002f38:	300c      	adds	r0, #12
 8002f3a:	3302      	adds	r3, #2
 8002f3c:	009a      	lsls	r2, r3, #2
 8002f3e:	f000 ff91 	bl	8003e64 <memcpy>
 8002f42:	4629      	mov	r1, r5
 8002f44:	2201      	movs	r2, #1
 8002f46:	4658      	mov	r0, fp
 8002f48:	f001 fa3c 	bl	80043c4 <__lshift>
 8002f4c:	900c      	str	r0, [sp, #48]	; 0x30
 8002f4e:	e4ac      	b.n	80028aa <_dtoa_r+0x74a>
 8002f50:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8002f52:	f8dd a038 	ldr.w	sl, [sp, #56]	; 0x38
 8002f56:	3301      	adds	r3, #1
 8002f58:	9e06      	ldr	r6, [sp, #24]
 8002f5a:	9307      	str	r3, [sp, #28]
 8002f5c:	e773      	b.n	8002e46 <_dtoa_r+0xce6>
 8002f5e:	9b07      	ldr	r3, [sp, #28]
 8002f60:	940c      	str	r4, [sp, #48]	; 0x30
 8002f62:	4644      	mov	r4, r8
 8002f64:	f8dd 8008 	ldr.w	r8, [sp, #8]
 8002f68:	3301      	adds	r3, #1
 8002f6a:	f1b8 0f39 	cmp.w	r8, #57	; 0x39
 8002f6e:	9307      	str	r3, [sp, #28]
 8002f70:	d013      	beq.n	8002f9a <_dtoa_r+0xe3a>
 8002f72:	f108 0801 	add.w	r8, r8, #1
 8002f76:	463e      	mov	r6, r7
 8002f78:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8002f7a:	f889 8000 	strb.w	r8, [r9]
 8002f7e:	e61e      	b.n	8002bbe <_dtoa_r+0xa5e>
 8002f80:	9b07      	ldr	r3, [sp, #28]
 8002f82:	4622      	mov	r2, r4
 8002f84:	463e      	mov	r6, r7
 8002f86:	4644      	mov	r4, r8
 8002f88:	3301      	adds	r3, #1
 8002f8a:	f8dd 8008 	ldr.w	r8, [sp, #8]
 8002f8e:	4617      	mov	r7, r2
 8002f90:	9307      	str	r3, [sp, #28]
 8002f92:	e5f8      	b.n	8002b86 <_dtoa_r+0xa26>
 8002f94:	930d      	str	r3, [sp, #52]	; 0x34
 8002f96:	f7ff bba4 	b.w	80026e2 <_dtoa_r+0x582>
 8002f9a:	2239      	movs	r2, #57	; 0x39
 8002f9c:	463e      	mov	r6, r7
 8002f9e:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8002fa0:	f889 2000 	strb.w	r2, [r9]
 8002fa4:	e5fd      	b.n	8002ba2 <_dtoa_r+0xa42>
 8002fa6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8002faa:	4620      	mov	r0, r4
 8002fac:	4629      	mov	r1, r5
 8002fae:	f003 ff71 	bl	8006e94 <__aeabi_dcmpeq>
 8002fb2:	2800      	cmp	r0, #0
 8002fb4:	d0aa      	beq.n	8002f0c <_dtoa_r+0xdac>
 8002fb6:	07ff      	lsls	r7, r7, #31
 8002fb8:	9e06      	ldr	r6, [sp, #24]
 8002fba:	d5a8      	bpl.n	8002f0e <_dtoa_r+0xdae>
 8002fbc:	f818 9c01 	ldrb.w	r9, [r8, #-1]
 8002fc0:	e741      	b.n	8002e46 <_dtoa_r+0xce6>
 8002fc2:	9b07      	ldr	r3, [sp, #28]
 8002fc4:	f109 0501 	add.w	r5, r9, #1
 8002fc8:	940c      	str	r4, [sp, #48]	; 0x30
 8002fca:	4644      	mov	r4, r8
 8002fcc:	f8dd 8008 	ldr.w	r8, [sp, #8]
 8002fd0:	3301      	adds	r3, #1
 8002fd2:	f1b8 0f39 	cmp.w	r8, #57	; 0x39
 8002fd6:	9307      	str	r3, [sp, #28]
 8002fd8:	d0df      	beq.n	8002f9a <_dtoa_r+0xe3a>
 8002fda:	2e00      	cmp	r6, #0
 8002fdc:	dc8a      	bgt.n	8002ef4 <_dtoa_r+0xd94>
 8002fde:	e78c      	b.n	8002efa <_dtoa_r+0xd9a>
 8002fe0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8002fe2:	9507      	str	r5, [sp, #28]
 8002fe4:	930a      	str	r3, [sp, #40]	; 0x28
 8002fe6:	f7ff bbb9 	b.w	800275c <_dtoa_r+0x5fc>
 8002fea:	4639      	mov	r1, r7
 8002fec:	2300      	movs	r3, #0
 8002fee:	220a      	movs	r2, #10
 8002ff0:	4658      	mov	r0, fp
 8002ff2:	f000 ffe1 	bl	8003fb8 <__multadd>
 8002ff6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8002ff8:	4607      	mov	r7, r0
 8002ffa:	9507      	str	r5, [sp, #28]
 8002ffc:	930a      	str	r3, [sp, #40]	; 0x28
 8002ffe:	2e00      	cmp	r6, #0
 8003000:	f47f abac 	bne.w	800275c <_dtoa_r+0x5fc>
 8003004:	e443      	b.n	800288e <_dtoa_r+0x72e>
 8003006:	f47f af78 	bne.w	8002efa <_dtoa_r+0xd9a>
 800300a:	f018 0f01 	tst.w	r8, #1
 800300e:	f47f af6e 	bne.w	8002eee <_dtoa_r+0xd8e>
 8003012:	e772      	b.n	8002efa <_dtoa_r+0xd9a>
 8003014:	e9dd 3412 	ldrd	r3, r4, [sp, #72]	; 0x48
 8003018:	f04f 0802 	mov.w	r8, #2
 800301c:	e9cd 340e 	strd	r3, r4, [sp, #56]	; 0x38
 8003020:	f7ff ba16 	b.w	8002450 <_dtoa_r+0x2f0>
 8003024:	9b17      	ldr	r3, [sp, #92]	; 0x5c
 8003026:	9e06      	ldr	r6, [sp, #24]
 8003028:	3301      	adds	r3, #1
 800302a:	9307      	str	r3, [sp, #28]
 800302c:	e70b      	b.n	8002e46 <_dtoa_r+0xce6>
 800302e:	f8cd 8034 	str.w	r8, [sp, #52]	; 0x34
 8003032:	e4d9      	b.n	80029e8 <_dtoa_r+0x888>
 8003034:	4b11      	ldr	r3, [pc, #68]	; (800307c <_dtoa_r+0xf1c>)
 8003036:	2200      	movs	r2, #0
 8003038:	f44f 71d5 	mov.w	r1, #426	; 0x1aa
 800303c:	4810      	ldr	r0, [pc, #64]	; (8003080 <_dtoa_r+0xf20>)
 800303e:	f002 fb8f 	bl	8005760 <__assert_func>
 8003042:	9e06      	ldr	r6, [sp, #24]
 8003044:	9506      	str	r5, [sp, #24]
 8003046:	f7ff bba7 	b.w	8002798 <_dtoa_r+0x638>
 800304a:	4602      	mov	r2, r0
 800304c:	4b0b      	ldr	r3, [pc, #44]	; (800307c <_dtoa_r+0xf1c>)
 800304e:	f240 21ea 	movw	r1, #746	; 0x2ea
 8003052:	480b      	ldr	r0, [pc, #44]	; (8003080 <_dtoa_r+0xf20>)
 8003054:	f002 fb84 	bl	8005760 <__assert_func>
 8003058:	f43f ab5d 	beq.w	8002716 <_dtoa_r+0x5b6>
 800305c:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8003060:	f7ff bbdd 	b.w	800281e <_dtoa_r+0x6be>
 8003064:	2100      	movs	r1, #0
 8003066:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800306a:	9125      	str	r1, [sp, #148]	; 0x94
 800306c:	2101      	movs	r1, #1
 800306e:	920a      	str	r2, [sp, #40]	; 0x28
 8003070:	910c      	str	r1, [sp, #48]	; 0x30
 8003072:	9216      	str	r2, [sp, #88]	; 0x58
 8003074:	f7ff baab 	b.w	80025ce <_dtoa_r+0x46e>
 8003078:	40240000 	.word	0x40240000
 800307c:	0800add8 	.word	0x0800add8
 8003080:	0800adec 	.word	0x0800adec

08003084 <__sflush_r>:
 8003084:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8003088:	b29a      	uxth	r2, r3
 800308a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800308e:	460c      	mov	r4, r1
 8003090:	0711      	lsls	r1, r2, #28
 8003092:	4680      	mov	r8, r0
 8003094:	d433      	bmi.n	80030fe <__sflush_r+0x7a>
 8003096:	6862      	ldr	r2, [r4, #4]
 8003098:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 800309c:	2a00      	cmp	r2, #0
 800309e:	81a3      	strh	r3, [r4, #12]
 80030a0:	dd48      	ble.n	8003134 <__sflush_r+0xb0>
 80030a2:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80030a4:	2d00      	cmp	r5, #0
 80030a6:	d042      	beq.n	800312e <__sflush_r+0xaa>
 80030a8:	2200      	movs	r2, #0
 80030aa:	b29b      	uxth	r3, r3
 80030ac:	f8d8 6000 	ldr.w	r6, [r8]
 80030b0:	69e1      	ldr	r1, [r4, #28]
 80030b2:	f8c8 2000 	str.w	r2, [r8]
 80030b6:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80030ba:	d13f      	bne.n	800313c <__sflush_r+0xb8>
 80030bc:	2301      	movs	r3, #1
 80030be:	4640      	mov	r0, r8
 80030c0:	47a8      	blx	r5
 80030c2:	1c43      	adds	r3, r0, #1
 80030c4:	d06f      	beq.n	80031a6 <__sflush_r+0x122>
 80030c6:	89a3      	ldrh	r3, [r4, #12]
 80030c8:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80030ca:	69e1      	ldr	r1, [r4, #28]
 80030cc:	075f      	lsls	r7, r3, #29
 80030ce:	d505      	bpl.n	80030dc <__sflush_r+0x58>
 80030d0:	6862      	ldr	r2, [r4, #4]
 80030d2:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80030d4:	1a80      	subs	r0, r0, r2
 80030d6:	b10b      	cbz	r3, 80030dc <__sflush_r+0x58>
 80030d8:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80030da:	1ac0      	subs	r0, r0, r3
 80030dc:	4602      	mov	r2, r0
 80030de:	2300      	movs	r3, #0
 80030e0:	4640      	mov	r0, r8
 80030e2:	47a8      	blx	r5
 80030e4:	1c45      	adds	r5, r0, #1
 80030e6:	d12f      	bne.n	8003148 <__sflush_r+0xc4>
 80030e8:	f8d8 1000 	ldr.w	r1, [r8]
 80030ec:	291d      	cmp	r1, #29
 80030ee:	d947      	bls.n	8003180 <__sflush_r+0xfc>
 80030f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80030f4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80030f8:	81a3      	strh	r3, [r4, #12]
 80030fa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80030fe:	6926      	ldr	r6, [r4, #16]
 8003100:	b1ae      	cbz	r6, 800312e <__sflush_r+0xaa>
 8003102:	0791      	lsls	r1, r2, #30
 8003104:	6825      	ldr	r5, [r4, #0]
 8003106:	6026      	str	r6, [r4, #0]
 8003108:	bf0c      	ite	eq
 800310a:	6963      	ldreq	r3, [r4, #20]
 800310c:	2300      	movne	r3, #0
 800310e:	1bad      	subs	r5, r5, r6
 8003110:	60a3      	str	r3, [r4, #8]
 8003112:	e00a      	b.n	800312a <__sflush_r+0xa6>
 8003114:	462b      	mov	r3, r5
 8003116:	4632      	mov	r2, r6
 8003118:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800311a:	4640      	mov	r0, r8
 800311c:	69e1      	ldr	r1, [r4, #28]
 800311e:	47b8      	blx	r7
 8003120:	2800      	cmp	r0, #0
 8003122:	eba5 0500 	sub.w	r5, r5, r0
 8003126:	4406      	add	r6, r0
 8003128:	dd0a      	ble.n	8003140 <__sflush_r+0xbc>
 800312a:	2d00      	cmp	r5, #0
 800312c:	dcf2      	bgt.n	8003114 <__sflush_r+0x90>
 800312e:	2000      	movs	r0, #0
 8003130:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003134:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8003136:	2a00      	cmp	r2, #0
 8003138:	dcb3      	bgt.n	80030a2 <__sflush_r+0x1e>
 800313a:	e7f8      	b.n	800312e <__sflush_r+0xaa>
 800313c:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800313e:	e7c5      	b.n	80030cc <__sflush_r+0x48>
 8003140:	89a3      	ldrh	r3, [r4, #12]
 8003142:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003146:	e7d5      	b.n	80030f4 <__sflush_r+0x70>
 8003148:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800314c:	2100      	movs	r1, #0
 800314e:	6922      	ldr	r2, [r4, #16]
 8003150:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8003154:	e9c4 2100 	strd	r2, r1, [r4]
 8003158:	04da      	lsls	r2, r3, #19
 800315a:	81a3      	strh	r3, [r4, #12]
 800315c:	d500      	bpl.n	8003160 <__sflush_r+0xdc>
 800315e:	6520      	str	r0, [r4, #80]	; 0x50
 8003160:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003162:	f8c8 6000 	str.w	r6, [r8]
 8003166:	2900      	cmp	r1, #0
 8003168:	d0e1      	beq.n	800312e <__sflush_r+0xaa>
 800316a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800316e:	4299      	cmp	r1, r3
 8003170:	d002      	beq.n	8003178 <__sflush_r+0xf4>
 8003172:	4640      	mov	r0, r8
 8003174:	f000 f9a0 	bl	80034b8 <_free_r>
 8003178:	2000      	movs	r0, #0
 800317a:	6320      	str	r0, [r4, #48]	; 0x30
 800317c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8003180:	4a11      	ldr	r2, [pc, #68]	; (80031c8 <__sflush_r+0x144>)
 8003182:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003186:	40ca      	lsrs	r2, r1
 8003188:	43d2      	mvns	r2, r2
 800318a:	f012 0201 	ands.w	r2, r2, #1
 800318e:	d1b1      	bne.n	80030f4 <__sflush_r+0x70>
 8003190:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8003194:	6925      	ldr	r5, [r4, #16]
 8003196:	6062      	str	r2, [r4, #4]
 8003198:	81a3      	strh	r3, [r4, #12]
 800319a:	04db      	lsls	r3, r3, #19
 800319c:	6025      	str	r5, [r4, #0]
 800319e:	d5df      	bpl.n	8003160 <__sflush_r+0xdc>
 80031a0:	2900      	cmp	r1, #0
 80031a2:	d1dd      	bne.n	8003160 <__sflush_r+0xdc>
 80031a4:	e7db      	b.n	800315e <__sflush_r+0xda>
 80031a6:	f8d8 3000 	ldr.w	r3, [r8]
 80031aa:	2b00      	cmp	r3, #0
 80031ac:	d08b      	beq.n	80030c6 <__sflush_r+0x42>
 80031ae:	2b1d      	cmp	r3, #29
 80031b0:	d006      	beq.n	80031c0 <__sflush_r+0x13c>
 80031b2:	2b16      	cmp	r3, #22
 80031b4:	d004      	beq.n	80031c0 <__sflush_r+0x13c>
 80031b6:	89a3      	ldrh	r3, [r4, #12]
 80031b8:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80031bc:	81a3      	strh	r3, [r4, #12]
 80031be:	e7b7      	b.n	8003130 <__sflush_r+0xac>
 80031c0:	f8c8 6000 	str.w	r6, [r8]
 80031c4:	e7b3      	b.n	800312e <__sflush_r+0xaa>
 80031c6:	bf00      	nop
 80031c8:	20400001 	.word	0x20400001

080031cc <_fflush_r>:
 80031cc:	b510      	push	{r4, lr}
 80031ce:	4604      	mov	r4, r0
 80031d0:	b082      	sub	sp, #8
 80031d2:	b108      	cbz	r0, 80031d8 <_fflush_r+0xc>
 80031d4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80031d6:	b123      	cbz	r3, 80031e2 <_fflush_r+0x16>
 80031d8:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
 80031dc:	b948      	cbnz	r0, 80031f2 <_fflush_r+0x26>
 80031de:	b002      	add	sp, #8
 80031e0:	bd10      	pop	{r4, pc}
 80031e2:	9101      	str	r1, [sp, #4]
 80031e4:	f000 f8f8 	bl	80033d8 <__sinit>
 80031e8:	9901      	ldr	r1, [sp, #4]
 80031ea:	f9b1 000c 	ldrsh.w	r0, [r1, #12]
 80031ee:	2800      	cmp	r0, #0
 80031f0:	d0f5      	beq.n	80031de <_fflush_r+0x12>
 80031f2:	4620      	mov	r0, r4
 80031f4:	b002      	add	sp, #8
 80031f6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80031fa:	f7ff bf43 	b.w	8003084 <__sflush_r>
 80031fe:	bf00      	nop

08003200 <fflush>:
 8003200:	b120      	cbz	r0, 800320c <fflush+0xc>
 8003202:	4b05      	ldr	r3, [pc, #20]	; (8003218 <fflush+0x18>)
 8003204:	4601      	mov	r1, r0
 8003206:	6818      	ldr	r0, [r3, #0]
 8003208:	f7ff bfe0 	b.w	80031cc <_fflush_r>
 800320c:	4b03      	ldr	r3, [pc, #12]	; (800321c <fflush+0x1c>)
 800320e:	4904      	ldr	r1, [pc, #16]	; (8003220 <fflush+0x20>)
 8003210:	6818      	ldr	r0, [r3, #0]
 8003212:	f000 ba6f 	b.w	80036f4 <_fwalk_reent>
 8003216:	bf00      	nop
 8003218:	20000000 	.word	0x20000000
 800321c:	0800aa90 	.word	0x0800aa90
 8003220:	080031cd 	.word	0x080031cd

08003224 <__fp_lock>:
 8003224:	2000      	movs	r0, #0
 8003226:	4770      	bx	lr

08003228 <_cleanup_r>:
 8003228:	4901      	ldr	r1, [pc, #4]	; (8003230 <_cleanup_r+0x8>)
 800322a:	f000 ba63 	b.w	80036f4 <_fwalk_reent>
 800322e:	bf00      	nop
 8003230:	0800582d 	.word	0x0800582d

08003234 <__sinit.part.0>:
 8003234:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003238:	4607      	mov	r7, r0
 800323a:	2400      	movs	r4, #0
 800323c:	2304      	movs	r3, #4
 800323e:	482c      	ldr	r0, [pc, #176]	; (80032f0 <__sinit.part.0+0xbc>)
 8003240:	687d      	ldr	r5, [r7, #4]
 8003242:	2103      	movs	r1, #3
 8003244:	f507 723b 	add.w	r2, r7, #748	; 0x2ec
 8003248:	63f8      	str	r0, [r7, #60]	; 0x3c
 800324a:	f8c7 12e4 	str.w	r1, [r7, #740]	; 0x2e4
 800324e:	f105 005c 	add.w	r0, r5, #92	; 0x5c
 8003252:	f8c7 22e8 	str.w	r2, [r7, #744]	; 0x2e8
 8003256:	4621      	mov	r1, r4
 8003258:	f8c7 42e0 	str.w	r4, [r7, #736]	; 0x2e0
 800325c:	2208      	movs	r2, #8
 800325e:	60eb      	str	r3, [r5, #12]
 8003260:	666c      	str	r4, [r5, #100]	; 0x64
 8003262:	60ac      	str	r4, [r5, #8]
 8003264:	61ac      	str	r4, [r5, #24]
 8003266:	f8df b094 	ldr.w	fp, [pc, #148]	; 80032fc <__sinit.part.0+0xc8>
 800326a:	f8df a094 	ldr.w	sl, [pc, #148]	; 8003300 <__sinit.part.0+0xcc>
 800326e:	f8df 9094 	ldr.w	r9, [pc, #148]	; 8003304 <__sinit.part.0+0xd0>
 8003272:	f8df 8094 	ldr.w	r8, [pc, #148]	; 8003308 <__sinit.part.0+0xd4>
 8003276:	e9c5 4400 	strd	r4, r4, [r5]
 800327a:	e9c5 4404 	strd	r4, r4, [r5, #16]
 800327e:	f7fd f9c9 	bl	8000614 <memset>
 8003282:	68be      	ldr	r6, [r7, #8]
 8003284:	4b1b      	ldr	r3, [pc, #108]	; (80032f4 <__sinit.part.0+0xc0>)
 8003286:	4621      	mov	r1, r4
 8003288:	61ed      	str	r5, [r5, #28]
 800328a:	2208      	movs	r2, #8
 800328c:	f106 005c 	add.w	r0, r6, #92	; 0x5c
 8003290:	e9c5 ba08 	strd	fp, sl, [r5, #32]
 8003294:	e9c5 980a 	strd	r9, r8, [r5, #40]	; 0x28
 8003298:	60f3      	str	r3, [r6, #12]
 800329a:	6674      	str	r4, [r6, #100]	; 0x64
 800329c:	60b4      	str	r4, [r6, #8]
 800329e:	61b4      	str	r4, [r6, #24]
 80032a0:	e9c6 4400 	strd	r4, r4, [r6]
 80032a4:	e9c6 4404 	strd	r4, r4, [r6, #16]
 80032a8:	f7fd f9b4 	bl	8000614 <memset>
 80032ac:	68fd      	ldr	r5, [r7, #12]
 80032ae:	4b12      	ldr	r3, [pc, #72]	; (80032f8 <__sinit.part.0+0xc4>)
 80032b0:	4621      	mov	r1, r4
 80032b2:	61f6      	str	r6, [r6, #28]
 80032b4:	f105 005c 	add.w	r0, r5, #92	; 0x5c
 80032b8:	f8c6 b020 	str.w	fp, [r6, #32]
 80032bc:	2208      	movs	r2, #8
 80032be:	f8c6 802c 	str.w	r8, [r6, #44]	; 0x2c
 80032c2:	e9c6 a909 	strd	sl, r9, [r6, #36]	; 0x24
 80032c6:	60eb      	str	r3, [r5, #12]
 80032c8:	666c      	str	r4, [r5, #100]	; 0x64
 80032ca:	60ac      	str	r4, [r5, #8]
 80032cc:	61ac      	str	r4, [r5, #24]
 80032ce:	e9c5 4400 	strd	r4, r4, [r5]
 80032d2:	e9c5 4404 	strd	r4, r4, [r5, #16]
 80032d6:	f7fd f99d 	bl	8000614 <memset>
 80032da:	2301      	movs	r3, #1
 80032dc:	f8c5 802c 	str.w	r8, [r5, #44]	; 0x2c
 80032e0:	e9c5 5b07 	strd	r5, fp, [r5, #28]
 80032e4:	e9c5 a909 	strd	sl, r9, [r5, #36]	; 0x24
 80032e8:	63bb      	str	r3, [r7, #56]	; 0x38
 80032ea:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80032ee:	bf00      	nop
 80032f0:	08003229 	.word	0x08003229
 80032f4:	00010009 	.word	0x00010009
 80032f8:	00020012 	.word	0x00020012
 80032fc:	08004915 	.word	0x08004915
 8003300:	0800493d 	.word	0x0800493d
 8003304:	0800497d 	.word	0x0800497d
 8003308:	080049a1 	.word	0x080049a1

0800330c <__fp_unlock>:
 800330c:	2000      	movs	r0, #0
 800330e:	4770      	bx	lr

08003310 <__sfmoreglue>:
 8003310:	b570      	push	{r4, r5, r6, lr}
 8003312:	1e4a      	subs	r2, r1, #1
 8003314:	2568      	movs	r5, #104	; 0x68
 8003316:	460e      	mov	r6, r1
 8003318:	fb05 f502 	mul.w	r5, r5, r2
 800331c:	f105 0174 	add.w	r1, r5, #116	; 0x74
 8003320:	f000 fa92 	bl	8003848 <_malloc_r>
 8003324:	4604      	mov	r4, r0
 8003326:	b140      	cbz	r0, 800333a <__sfmoreglue+0x2a>
 8003328:	2100      	movs	r1, #0
 800332a:	300c      	adds	r0, #12
 800332c:	6066      	str	r6, [r4, #4]
 800332e:	f105 0268 	add.w	r2, r5, #104	; 0x68
 8003332:	6021      	str	r1, [r4, #0]
 8003334:	60a0      	str	r0, [r4, #8]
 8003336:	f7fd f96d 	bl	8000614 <memset>
 800333a:	4620      	mov	r0, r4
 800333c:	bd70      	pop	{r4, r5, r6, pc}
 800333e:	bf00      	nop

08003340 <__sfp>:
 8003340:	4b1e      	ldr	r3, [pc, #120]	; (80033bc <__sfp+0x7c>)
 8003342:	b570      	push	{r4, r5, r6, lr}
 8003344:	681d      	ldr	r5, [r3, #0]
 8003346:	4606      	mov	r6, r0
 8003348:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800334a:	b343      	cbz	r3, 800339e <__sfp+0x5e>
 800334c:	f505 7538 	add.w	r5, r5, #736	; 0x2e0
 8003350:	e9d5 3401 	ldrd	r3, r4, [r5, #4]
 8003354:	3b01      	subs	r3, #1
 8003356:	d504      	bpl.n	8003362 <__sfp+0x22>
 8003358:	e01d      	b.n	8003396 <__sfp+0x56>
 800335a:	3b01      	subs	r3, #1
 800335c:	3468      	adds	r4, #104	; 0x68
 800335e:	1c5a      	adds	r2, r3, #1
 8003360:	d019      	beq.n	8003396 <__sfp+0x56>
 8003362:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003366:	2a00      	cmp	r2, #0
 8003368:	d1f7      	bne.n	800335a <__sfp+0x1a>
 800336a:	2500      	movs	r5, #0
 800336c:	4b14      	ldr	r3, [pc, #80]	; (80033c0 <__sfp+0x80>)
 800336e:	2208      	movs	r2, #8
 8003370:	f104 005c 	add.w	r0, r4, #92	; 0x5c
 8003374:	6665      	str	r5, [r4, #100]	; 0x64
 8003376:	4629      	mov	r1, r5
 8003378:	60a5      	str	r5, [r4, #8]
 800337a:	61a5      	str	r5, [r4, #24]
 800337c:	60e3      	str	r3, [r4, #12]
 800337e:	e9c4 5500 	strd	r5, r5, [r4]
 8003382:	e9c4 5504 	strd	r5, r5, [r4, #16]
 8003386:	f7fd f945 	bl	8000614 <memset>
 800338a:	e9c4 550c 	strd	r5, r5, [r4, #48]	; 0x30
 800338e:	e9c4 5511 	strd	r5, r5, [r4, #68]	; 0x44
 8003392:	4620      	mov	r0, r4
 8003394:	bd70      	pop	{r4, r5, r6, pc}
 8003396:	682c      	ldr	r4, [r5, #0]
 8003398:	b12c      	cbz	r4, 80033a6 <__sfp+0x66>
 800339a:	4625      	mov	r5, r4
 800339c:	e7d8      	b.n	8003350 <__sfp+0x10>
 800339e:	4628      	mov	r0, r5
 80033a0:	f7ff ff48 	bl	8003234 <__sinit.part.0>
 80033a4:	e7d2      	b.n	800334c <__sfp+0xc>
 80033a6:	2104      	movs	r1, #4
 80033a8:	4630      	mov	r0, r6
 80033aa:	f7ff ffb1 	bl	8003310 <__sfmoreglue>
 80033ae:	4604      	mov	r4, r0
 80033b0:	6028      	str	r0, [r5, #0]
 80033b2:	2800      	cmp	r0, #0
 80033b4:	d1f1      	bne.n	800339a <__sfp+0x5a>
 80033b6:	230c      	movs	r3, #12
 80033b8:	6033      	str	r3, [r6, #0]
 80033ba:	e7ea      	b.n	8003392 <__sfp+0x52>
 80033bc:	0800aa90 	.word	0x0800aa90
 80033c0:	ffff0001 	.word	0xffff0001

080033c4 <_cleanup>:
 80033c4:	4b02      	ldr	r3, [pc, #8]	; (80033d0 <_cleanup+0xc>)
 80033c6:	4903      	ldr	r1, [pc, #12]	; (80033d4 <_cleanup+0x10>)
 80033c8:	6818      	ldr	r0, [r3, #0]
 80033ca:	f000 b993 	b.w	80036f4 <_fwalk_reent>
 80033ce:	bf00      	nop
 80033d0:	0800aa90 	.word	0x0800aa90
 80033d4:	0800582d 	.word	0x0800582d

080033d8 <__sinit>:
 80033d8:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80033da:	b103      	cbz	r3, 80033de <__sinit+0x6>
 80033dc:	4770      	bx	lr
 80033de:	e729      	b.n	8003234 <__sinit.part.0>

080033e0 <__sfp_lock_acquire>:
 80033e0:	4770      	bx	lr
 80033e2:	bf00      	nop

080033e4 <__sfp_lock_release>:
 80033e4:	4770      	bx	lr
 80033e6:	bf00      	nop

080033e8 <__sinit_lock_acquire>:
 80033e8:	4770      	bx	lr
 80033ea:	bf00      	nop

080033ec <__sinit_lock_release>:
 80033ec:	4770      	bx	lr
 80033ee:	bf00      	nop

080033f0 <__fp_lock_all>:
 80033f0:	4b02      	ldr	r3, [pc, #8]	; (80033fc <__fp_lock_all+0xc>)
 80033f2:	4903      	ldr	r1, [pc, #12]	; (8003400 <__fp_lock_all+0x10>)
 80033f4:	6818      	ldr	r0, [r3, #0]
 80033f6:	f000 b959 	b.w	80036ac <_fwalk>
 80033fa:	bf00      	nop
 80033fc:	20000000 	.word	0x20000000
 8003400:	08003225 	.word	0x08003225

08003404 <__fp_unlock_all>:
 8003404:	4b02      	ldr	r3, [pc, #8]	; (8003410 <__fp_unlock_all+0xc>)
 8003406:	4903      	ldr	r1, [pc, #12]	; (8003414 <__fp_unlock_all+0x10>)
 8003408:	6818      	ldr	r0, [r3, #0]
 800340a:	f000 b94f 	b.w	80036ac <_fwalk>
 800340e:	bf00      	nop
 8003410:	20000000 	.word	0x20000000
 8003414:	0800330d 	.word	0x0800330d

08003418 <_malloc_trim_r>:
 8003418:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800341a:	4f23      	ldr	r7, [pc, #140]	; (80034a8 <_malloc_trim_r+0x90>)
 800341c:	460d      	mov	r5, r1
 800341e:	4606      	mov	r6, r0
 8003420:	f000 fd96 	bl	8003f50 <__malloc_lock>
 8003424:	68b9      	ldr	r1, [r7, #8]
 8003426:	f640 73ef 	movw	r3, #4079	; 0xfef
 800342a:	4a20      	ldr	r2, [pc, #128]	; (80034ac <_malloc_trim_r+0x94>)
 800342c:	684c      	ldr	r4, [r1, #4]
 800342e:	1b5b      	subs	r3, r3, r5
 8003430:	f024 0403 	bic.w	r4, r4, #3
 8003434:	4423      	add	r3, r4
 8003436:	401a      	ands	r2, r3
 8003438:	f5a2 5580 	sub.w	r5, r2, #4096	; 0x1000
 800343c:	f5b5 5f80 	cmp.w	r5, #4096	; 0x1000
 8003440:	db07      	blt.n	8003452 <_malloc_trim_r+0x3a>
 8003442:	2100      	movs	r1, #0
 8003444:	4630      	mov	r0, r6
 8003446:	f001 fa53 	bl	80048f0 <_sbrk_r>
 800344a:	68bb      	ldr	r3, [r7, #8]
 800344c:	4423      	add	r3, r4
 800344e:	4298      	cmp	r0, r3
 8003450:	d004      	beq.n	800345c <_malloc_trim_r+0x44>
 8003452:	4630      	mov	r0, r6
 8003454:	f000 fd7e 	bl	8003f54 <__malloc_unlock>
 8003458:	2000      	movs	r0, #0
 800345a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800345c:	4269      	negs	r1, r5
 800345e:	4630      	mov	r0, r6
 8003460:	f001 fa46 	bl	80048f0 <_sbrk_r>
 8003464:	3001      	adds	r0, #1
 8003466:	d00d      	beq.n	8003484 <_malloc_trim_r+0x6c>
 8003468:	4b11      	ldr	r3, [pc, #68]	; (80034b0 <_malloc_trim_r+0x98>)
 800346a:	1b64      	subs	r4, r4, r5
 800346c:	68b9      	ldr	r1, [r7, #8]
 800346e:	4630      	mov	r0, r6
 8003470:	681a      	ldr	r2, [r3, #0]
 8003472:	f044 0401 	orr.w	r4, r4, #1
 8003476:	1b52      	subs	r2, r2, r5
 8003478:	604c      	str	r4, [r1, #4]
 800347a:	601a      	str	r2, [r3, #0]
 800347c:	f000 fd6a 	bl	8003f54 <__malloc_unlock>
 8003480:	2001      	movs	r0, #1
 8003482:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8003484:	2100      	movs	r1, #0
 8003486:	4630      	mov	r0, r6
 8003488:	f001 fa32 	bl	80048f0 <_sbrk_r>
 800348c:	68ba      	ldr	r2, [r7, #8]
 800348e:	1a83      	subs	r3, r0, r2
 8003490:	2b0f      	cmp	r3, #15
 8003492:	ddde      	ble.n	8003452 <_malloc_trim_r+0x3a>
 8003494:	4c07      	ldr	r4, [pc, #28]	; (80034b4 <_malloc_trim_r+0x9c>)
 8003496:	f043 0301 	orr.w	r3, r3, #1
 800349a:	4905      	ldr	r1, [pc, #20]	; (80034b0 <_malloc_trim_r+0x98>)
 800349c:	6824      	ldr	r4, [r4, #0]
 800349e:	6053      	str	r3, [r2, #4]
 80034a0:	1b00      	subs	r0, r0, r4
 80034a2:	6008      	str	r0, [r1, #0]
 80034a4:	e7d5      	b.n	8003452 <_malloc_trim_r+0x3a>
 80034a6:	bf00      	nop
 80034a8:	20000430 	.word	0x20000430
 80034ac:	fffff000 	.word	0xfffff000
 80034b0:	20000a54 	.word	0x20000a54
 80034b4:	20000838 	.word	0x20000838

080034b8 <_free_r>:
 80034b8:	2900      	cmp	r1, #0
 80034ba:	d05d      	beq.n	8003578 <_free_r+0xc0>
 80034bc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80034be:	460f      	mov	r7, r1
 80034c0:	4606      	mov	r6, r0
 80034c2:	f000 fd45 	bl	8003f50 <__malloc_lock>
 80034c6:	4d76      	ldr	r5, [pc, #472]	; (80036a0 <_free_r+0x1e8>)
 80034c8:	f857 cc04 	ldr.w	ip, [r7, #-4]
 80034cc:	f1a7 0008 	sub.w	r0, r7, #8
 80034d0:	68a9      	ldr	r1, [r5, #8]
 80034d2:	f02c 0301 	bic.w	r3, ip, #1
 80034d6:	18c2      	adds	r2, r0, r3
 80034d8:	6854      	ldr	r4, [r2, #4]
 80034da:	4291      	cmp	r1, r2
 80034dc:	f024 0403 	bic.w	r4, r4, #3
 80034e0:	f000 8083 	beq.w	80035ea <_free_r+0x132>
 80034e4:	f01c 0f01 	tst.w	ip, #1
 80034e8:	6054      	str	r4, [r2, #4]
 80034ea:	eb02 0104 	add.w	r1, r2, r4
 80034ee:	d132      	bne.n	8003556 <_free_r+0x9e>
 80034f0:	f857 7c08 	ldr.w	r7, [r7, #-8]
 80034f4:	f105 0c08 	add.w	ip, r5, #8
 80034f8:	6849      	ldr	r1, [r1, #4]
 80034fa:	1bc0      	subs	r0, r0, r7
 80034fc:	443b      	add	r3, r7
 80034fe:	f001 0101 	and.w	r1, r1, #1
 8003502:	6887      	ldr	r7, [r0, #8]
 8003504:	4567      	cmp	r7, ip
 8003506:	d060      	beq.n	80035ca <_free_r+0x112>
 8003508:	f8d0 e00c 	ldr.w	lr, [r0, #12]
 800350c:	f8c7 e00c 	str.w	lr, [r7, #12]
 8003510:	f8ce 7008 	str.w	r7, [lr, #8]
 8003514:	2900      	cmp	r1, #0
 8003516:	f000 808d 	beq.w	8003634 <_free_r+0x17c>
 800351a:	f043 0101 	orr.w	r1, r3, #1
 800351e:	6041      	str	r1, [r0, #4]
 8003520:	6013      	str	r3, [r2, #0]
 8003522:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8003526:	d230      	bcs.n	800358a <_free_r+0xd2>
 8003528:	08db      	lsrs	r3, r3, #3
 800352a:	2201      	movs	r2, #1
 800352c:	686c      	ldr	r4, [r5, #4]
 800352e:	1099      	asrs	r1, r3, #2
 8003530:	4413      	add	r3, r2
 8003532:	408a      	lsls	r2, r1
 8003534:	eb05 01c3 	add.w	r1, r5, r3, lsl #3
 8003538:	4322      	orrs	r2, r4
 800353a:	3908      	subs	r1, #8
 800353c:	f855 4033 	ldr.w	r4, [r5, r3, lsl #3]
 8003540:	606a      	str	r2, [r5, #4]
 8003542:	e9c0 4102 	strd	r4, r1, [r0, #8]
 8003546:	f845 0033 	str.w	r0, [r5, r3, lsl #3]
 800354a:	60e0      	str	r0, [r4, #12]
 800354c:	4630      	mov	r0, r6
 800354e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8003552:	f000 bcff 	b.w	8003f54 <__malloc_unlock>
 8003556:	6849      	ldr	r1, [r1, #4]
 8003558:	07c9      	lsls	r1, r1, #31
 800355a:	d40e      	bmi.n	800357a <_free_r+0xc2>
 800355c:	4423      	add	r3, r4
 800355e:	f105 0c08 	add.w	ip, r5, #8
 8003562:	6891      	ldr	r1, [r2, #8]
 8003564:	f043 0401 	orr.w	r4, r3, #1
 8003568:	4561      	cmp	r1, ip
 800356a:	d06b      	beq.n	8003644 <_free_r+0x18c>
 800356c:	68d2      	ldr	r2, [r2, #12]
 800356e:	60ca      	str	r2, [r1, #12]
 8003570:	6091      	str	r1, [r2, #8]
 8003572:	6044      	str	r4, [r0, #4]
 8003574:	50c3      	str	r3, [r0, r3]
 8003576:	e7d4      	b.n	8003522 <_free_r+0x6a>
 8003578:	4770      	bx	lr
 800357a:	f043 0101 	orr.w	r1, r3, #1
 800357e:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8003582:	f847 1c04 	str.w	r1, [r7, #-4]
 8003586:	6013      	str	r3, [r2, #0]
 8003588:	d3ce      	bcc.n	8003528 <_free_r+0x70>
 800358a:	0a5a      	lsrs	r2, r3, #9
 800358c:	2a04      	cmp	r2, #4
 800358e:	d846      	bhi.n	800361e <_free_r+0x166>
 8003590:	099a      	lsrs	r2, r3, #6
 8003592:	f102 0439 	add.w	r4, r2, #57	; 0x39
 8003596:	f102 0138 	add.w	r1, r2, #56	; 0x38
 800359a:	00e2      	lsls	r2, r4, #3
 800359c:	18ac      	adds	r4, r5, r2
 800359e:	58aa      	ldr	r2, [r5, r2]
 80035a0:	3c08      	subs	r4, #8
 80035a2:	4294      	cmp	r4, r2
 80035a4:	d055      	beq.n	8003652 <_free_r+0x19a>
 80035a6:	6851      	ldr	r1, [r2, #4]
 80035a8:	f021 0103 	bic.w	r1, r1, #3
 80035ac:	4299      	cmp	r1, r3
 80035ae:	d902      	bls.n	80035b6 <_free_r+0xfe>
 80035b0:	6892      	ldr	r2, [r2, #8]
 80035b2:	4294      	cmp	r4, r2
 80035b4:	d1f7      	bne.n	80035a6 <_free_r+0xee>
 80035b6:	68d4      	ldr	r4, [r2, #12]
 80035b8:	e9c0 2402 	strd	r2, r4, [r0, #8]
 80035bc:	60a0      	str	r0, [r4, #8]
 80035be:	60d0      	str	r0, [r2, #12]
 80035c0:	4630      	mov	r0, r6
 80035c2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80035c6:	f000 bcc5 	b.w	8003f54 <__malloc_unlock>
 80035ca:	2900      	cmp	r1, #0
 80035cc:	d162      	bne.n	8003694 <_free_r+0x1dc>
 80035ce:	4423      	add	r3, r4
 80035d0:	e9d2 2102 	ldrd	r2, r1, [r2, #8]
 80035d4:	f043 0401 	orr.w	r4, r3, #1
 80035d8:	60d1      	str	r1, [r2, #12]
 80035da:	608a      	str	r2, [r1, #8]
 80035dc:	6044      	str	r4, [r0, #4]
 80035de:	50c3      	str	r3, [r0, r3]
 80035e0:	4630      	mov	r0, r6
 80035e2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80035e6:	f000 bcb5 	b.w	8003f54 <__malloc_unlock>
 80035ea:	f01c 0f01 	tst.w	ip, #1
 80035ee:	4423      	add	r3, r4
 80035f0:	d107      	bne.n	8003602 <_free_r+0x14a>
 80035f2:	f857 2c08 	ldr.w	r2, [r7, #-8]
 80035f6:	1a80      	subs	r0, r0, r2
 80035f8:	4413      	add	r3, r2
 80035fa:	e9d0 1202 	ldrd	r1, r2, [r0, #8]
 80035fe:	60ca      	str	r2, [r1, #12]
 8003600:	6091      	str	r1, [r2, #8]
 8003602:	4a28      	ldr	r2, [pc, #160]	; (80036a4 <_free_r+0x1ec>)
 8003604:	f043 0101 	orr.w	r1, r3, #1
 8003608:	6812      	ldr	r2, [r2, #0]
 800360a:	6041      	str	r1, [r0, #4]
 800360c:	429a      	cmp	r2, r3
 800360e:	60a8      	str	r0, [r5, #8]
 8003610:	d89c      	bhi.n	800354c <_free_r+0x94>
 8003612:	4b25      	ldr	r3, [pc, #148]	; (80036a8 <_free_r+0x1f0>)
 8003614:	4630      	mov	r0, r6
 8003616:	6819      	ldr	r1, [r3, #0]
 8003618:	f7ff fefe 	bl	8003418 <_malloc_trim_r>
 800361c:	e796      	b.n	800354c <_free_r+0x94>
 800361e:	2a14      	cmp	r2, #20
 8003620:	d90a      	bls.n	8003638 <_free_r+0x180>
 8003622:	2a54      	cmp	r2, #84	; 0x54
 8003624:	d81d      	bhi.n	8003662 <_free_r+0x1aa>
 8003626:	0b1a      	lsrs	r2, r3, #12
 8003628:	f102 046f 	add.w	r4, r2, #111	; 0x6f
 800362c:	f102 016e 	add.w	r1, r2, #110	; 0x6e
 8003630:	00e2      	lsls	r2, r4, #3
 8003632:	e7b3      	b.n	800359c <_free_r+0xe4>
 8003634:	4423      	add	r3, r4
 8003636:	e794      	b.n	8003562 <_free_r+0xaa>
 8003638:	f102 045c 	add.w	r4, r2, #92	; 0x5c
 800363c:	f102 015b 	add.w	r1, r2, #91	; 0x5b
 8003640:	00e2      	lsls	r2, r4, #3
 8003642:	e7ab      	b.n	800359c <_free_r+0xe4>
 8003644:	e9c5 0004 	strd	r0, r0, [r5, #16]
 8003648:	e9c0 cc02 	strd	ip, ip, [r0, #8]
 800364c:	6044      	str	r4, [r0, #4]
 800364e:	50c3      	str	r3, [r0, r3]
 8003650:	e77c      	b.n	800354c <_free_r+0x94>
 8003652:	1089      	asrs	r1, r1, #2
 8003654:	2701      	movs	r7, #1
 8003656:	686b      	ldr	r3, [r5, #4]
 8003658:	fa07 f101 	lsl.w	r1, r7, r1
 800365c:	4319      	orrs	r1, r3
 800365e:	6069      	str	r1, [r5, #4]
 8003660:	e7aa      	b.n	80035b8 <_free_r+0x100>
 8003662:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8003666:	d806      	bhi.n	8003676 <_free_r+0x1be>
 8003668:	0bda      	lsrs	r2, r3, #15
 800366a:	f102 0478 	add.w	r4, r2, #120	; 0x78
 800366e:	f102 0177 	add.w	r1, r2, #119	; 0x77
 8003672:	00e2      	lsls	r2, r4, #3
 8003674:	e792      	b.n	800359c <_free_r+0xe4>
 8003676:	f240 5154 	movw	r1, #1364	; 0x554
 800367a:	428a      	cmp	r2, r1
 800367c:	d806      	bhi.n	800368c <_free_r+0x1d4>
 800367e:	0c9a      	lsrs	r2, r3, #18
 8003680:	f102 047d 	add.w	r4, r2, #125	; 0x7d
 8003684:	f102 017c 	add.w	r1, r2, #124	; 0x7c
 8003688:	00e2      	lsls	r2, r4, #3
 800368a:	e787      	b.n	800359c <_free_r+0xe4>
 800368c:	f44f 727e 	mov.w	r2, #1016	; 0x3f8
 8003690:	217e      	movs	r1, #126	; 0x7e
 8003692:	e783      	b.n	800359c <_free_r+0xe4>
 8003694:	f043 0101 	orr.w	r1, r3, #1
 8003698:	6041      	str	r1, [r0, #4]
 800369a:	6013      	str	r3, [r2, #0]
 800369c:	e756      	b.n	800354c <_free_r+0x94>
 800369e:	bf00      	nop
 80036a0:	20000430 	.word	0x20000430
 80036a4:	2000083c 	.word	0x2000083c
 80036a8:	20000a50 	.word	0x20000a50

080036ac <_fwalk>:
 80036ac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80036b0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80036b4:	d01a      	beq.n	80036ec <_fwalk+0x40>
 80036b6:	4688      	mov	r8, r1
 80036b8:	2600      	movs	r6, #0
 80036ba:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80036be:	3d01      	subs	r5, #1
 80036c0:	d40e      	bmi.n	80036e0 <_fwalk+0x34>
 80036c2:	89a3      	ldrh	r3, [r4, #12]
 80036c4:	3d01      	subs	r5, #1
 80036c6:	2b01      	cmp	r3, #1
 80036c8:	d906      	bls.n	80036d8 <_fwalk+0x2c>
 80036ca:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80036ce:	4620      	mov	r0, r4
 80036d0:	3301      	adds	r3, #1
 80036d2:	d001      	beq.n	80036d8 <_fwalk+0x2c>
 80036d4:	47c0      	blx	r8
 80036d6:	4306      	orrs	r6, r0
 80036d8:	1c6b      	adds	r3, r5, #1
 80036da:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80036de:	d1f0      	bne.n	80036c2 <_fwalk+0x16>
 80036e0:	683f      	ldr	r7, [r7, #0]
 80036e2:	2f00      	cmp	r7, #0
 80036e4:	d1e9      	bne.n	80036ba <_fwalk+0xe>
 80036e6:	4630      	mov	r0, r6
 80036e8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80036ec:	463e      	mov	r6, r7
 80036ee:	4630      	mov	r0, r6
 80036f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080036f4 <_fwalk_reent>:
 80036f4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80036f8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80036fc:	d01e      	beq.n	800373c <_fwalk_reent+0x48>
 80036fe:	4688      	mov	r8, r1
 8003700:	4606      	mov	r6, r0
 8003702:	f04f 0900 	mov.w	r9, #0
 8003706:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800370a:	3d01      	subs	r5, #1
 800370c:	d410      	bmi.n	8003730 <_fwalk_reent+0x3c>
 800370e:	89a3      	ldrh	r3, [r4, #12]
 8003710:	3d01      	subs	r5, #1
 8003712:	2b01      	cmp	r3, #1
 8003714:	d908      	bls.n	8003728 <_fwalk_reent+0x34>
 8003716:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 800371a:	4621      	mov	r1, r4
 800371c:	4630      	mov	r0, r6
 800371e:	3301      	adds	r3, #1
 8003720:	d002      	beq.n	8003728 <_fwalk_reent+0x34>
 8003722:	47c0      	blx	r8
 8003724:	ea49 0900 	orr.w	r9, r9, r0
 8003728:	1c6b      	adds	r3, r5, #1
 800372a:	f104 0468 	add.w	r4, r4, #104	; 0x68
 800372e:	d1ee      	bne.n	800370e <_fwalk_reent+0x1a>
 8003730:	683f      	ldr	r7, [r7, #0]
 8003732:	2f00      	cmp	r7, #0
 8003734:	d1e7      	bne.n	8003706 <_fwalk_reent+0x12>
 8003736:	4648      	mov	r0, r9
 8003738:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800373c:	46b9      	mov	r9, r7
 800373e:	4648      	mov	r0, r9
 8003740:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}

08003744 <__localeconv_l>:
 8003744:	30f0      	adds	r0, #240	; 0xf0
 8003746:	4770      	bx	lr

08003748 <_localeconv_r>:
 8003748:	4800      	ldr	r0, [pc, #0]	; (800374c <_localeconv_r+0x4>)
 800374a:	4770      	bx	lr
 800374c:	20000930 	.word	0x20000930

08003750 <localeconv>:
 8003750:	4800      	ldr	r0, [pc, #0]	; (8003754 <localeconv+0x4>)
 8003752:	4770      	bx	lr
 8003754:	20000930 	.word	0x20000930

08003758 <__swhatbuf_r>:
 8003758:	b570      	push	{r4, r5, r6, lr}
 800375a:	460c      	mov	r4, r1
 800375c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8003760:	b096      	sub	sp, #88	; 0x58
 8003762:	4615      	mov	r5, r2
 8003764:	2900      	cmp	r1, #0
 8003766:	461e      	mov	r6, r3
 8003768:	db14      	blt.n	8003794 <__swhatbuf_r+0x3c>
 800376a:	466a      	mov	r2, sp
 800376c:	f002 f950 	bl	8005a10 <_fstat_r>
 8003770:	2800      	cmp	r0, #0
 8003772:	db0f      	blt.n	8003794 <__swhatbuf_r+0x3c>
 8003774:	9a01      	ldr	r2, [sp, #4]
 8003776:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800377a:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800377e:	f402 4270 	and.w	r2, r2, #61440	; 0xf000
 8003782:	f5a2 5200 	sub.w	r2, r2, #8192	; 0x2000
 8003786:	fab2 f282 	clz	r2, r2
 800378a:	0952      	lsrs	r2, r2, #5
 800378c:	6032      	str	r2, [r6, #0]
 800378e:	602b      	str	r3, [r5, #0]
 8003790:	b016      	add	sp, #88	; 0x58
 8003792:	bd70      	pop	{r4, r5, r6, pc}
 8003794:	89a2      	ldrh	r2, [r4, #12]
 8003796:	2300      	movs	r3, #0
 8003798:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800379c:	6033      	str	r3, [r6, #0]
 800379e:	d004      	beq.n	80037aa <__swhatbuf_r+0x52>
 80037a0:	2240      	movs	r2, #64	; 0x40
 80037a2:	4618      	mov	r0, r3
 80037a4:	602a      	str	r2, [r5, #0]
 80037a6:	b016      	add	sp, #88	; 0x58
 80037a8:	bd70      	pop	{r4, r5, r6, pc}
 80037aa:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80037ae:	602b      	str	r3, [r5, #0]
 80037b0:	b016      	add	sp, #88	; 0x58
 80037b2:	bd70      	pop	{r4, r5, r6, pc}

080037b4 <__smakebuf_r>:
 80037b4:	898a      	ldrh	r2, [r1, #12]
 80037b6:	460b      	mov	r3, r1
 80037b8:	0792      	lsls	r2, r2, #30
 80037ba:	d506      	bpl.n	80037ca <__smakebuf_r+0x16>
 80037bc:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80037c0:	2101      	movs	r1, #1
 80037c2:	601a      	str	r2, [r3, #0]
 80037c4:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80037c8:	4770      	bx	lr
 80037ca:	b570      	push	{r4, r5, r6, lr}
 80037cc:	b082      	sub	sp, #8
 80037ce:	4606      	mov	r6, r0
 80037d0:	460c      	mov	r4, r1
 80037d2:	ab01      	add	r3, sp, #4
 80037d4:	466a      	mov	r2, sp
 80037d6:	f7ff ffbf 	bl	8003758 <__swhatbuf_r>
 80037da:	9900      	ldr	r1, [sp, #0]
 80037dc:	4605      	mov	r5, r0
 80037de:	4630      	mov	r0, r6
 80037e0:	f000 f832 	bl	8003848 <_malloc_r>
 80037e4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80037e8:	b170      	cbz	r0, 8003808 <__smakebuf_r+0x54>
 80037ea:	4a16      	ldr	r2, [pc, #88]	; (8003844 <__smakebuf_r+0x90>)
 80037ec:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80037f0:	9900      	ldr	r1, [sp, #0]
 80037f2:	63f2      	str	r2, [r6, #60]	; 0x3c
 80037f4:	9a01      	ldr	r2, [sp, #4]
 80037f6:	81a3      	strh	r3, [r4, #12]
 80037f8:	6020      	str	r0, [r4, #0]
 80037fa:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80037fe:	b98a      	cbnz	r2, 8003824 <__smakebuf_r+0x70>
 8003800:	432b      	orrs	r3, r5
 8003802:	81a3      	strh	r3, [r4, #12]
 8003804:	b002      	add	sp, #8
 8003806:	bd70      	pop	{r4, r5, r6, pc}
 8003808:	059a      	lsls	r2, r3, #22
 800380a:	d4fb      	bmi.n	8003804 <__smakebuf_r+0x50>
 800380c:	f023 0303 	bic.w	r3, r3, #3
 8003810:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8003814:	2101      	movs	r1, #1
 8003816:	f043 0302 	orr.w	r3, r3, #2
 800381a:	6022      	str	r2, [r4, #0]
 800381c:	6122      	str	r2, [r4, #16]
 800381e:	81a3      	strh	r3, [r4, #12]
 8003820:	6161      	str	r1, [r4, #20]
 8003822:	e7ef      	b.n	8003804 <__smakebuf_r+0x50>
 8003824:	4630      	mov	r0, r6
 8003826:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800382a:	f002 fa99 	bl	8005d60 <_isatty_r>
 800382e:	b910      	cbnz	r0, 8003836 <__smakebuf_r+0x82>
 8003830:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003834:	e7e4      	b.n	8003800 <__smakebuf_r+0x4c>
 8003836:	89a3      	ldrh	r3, [r4, #12]
 8003838:	f023 0303 	bic.w	r3, r3, #3
 800383c:	f043 0301 	orr.w	r3, r3, #1
 8003840:	b21b      	sxth	r3, r3
 8003842:	e7dd      	b.n	8003800 <__smakebuf_r+0x4c>
 8003844:	08003229 	.word	0x08003229

08003848 <_malloc_r>:
 8003848:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800384c:	f101 050b 	add.w	r5, r1, #11
 8003850:	b083      	sub	sp, #12
 8003852:	4606      	mov	r6, r0
 8003854:	2d16      	cmp	r5, #22
 8003856:	d82a      	bhi.n	80038ae <_malloc_r+0x66>
 8003858:	2910      	cmp	r1, #16
 800385a:	d821      	bhi.n	80038a0 <_malloc_r+0x58>
 800385c:	f000 fb78 	bl	8003f50 <__malloc_lock>
 8003860:	2510      	movs	r5, #16
 8003862:	2318      	movs	r3, #24
 8003864:	2002      	movs	r0, #2
 8003866:	4fd0      	ldr	r7, [pc, #832]	; (8003ba8 <_malloc_r+0x360>)
 8003868:	443b      	add	r3, r7
 800386a:	685a      	ldr	r2, [r3, #4]
 800386c:	f1a3 0108 	sub.w	r1, r3, #8
 8003870:	428a      	cmp	r2, r1
 8003872:	f000 80f4 	beq.w	8003a5e <_malloc_r+0x216>
 8003876:	6853      	ldr	r3, [r2, #4]
 8003878:	f102 0408 	add.w	r4, r2, #8
 800387c:	68d1      	ldr	r1, [r2, #12]
 800387e:	4630      	mov	r0, r6
 8003880:	f023 0303 	bic.w	r3, r3, #3
 8003884:	6895      	ldr	r5, [r2, #8]
 8003886:	441a      	add	r2, r3
 8003888:	60e9      	str	r1, [r5, #12]
 800388a:	608d      	str	r5, [r1, #8]
 800388c:	6853      	ldr	r3, [r2, #4]
 800388e:	f043 0301 	orr.w	r3, r3, #1
 8003892:	6053      	str	r3, [r2, #4]
 8003894:	f000 fb5e 	bl	8003f54 <__malloc_unlock>
 8003898:	4620      	mov	r0, r4
 800389a:	b003      	add	sp, #12
 800389c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80038a0:	2400      	movs	r4, #0
 80038a2:	230c      	movs	r3, #12
 80038a4:	4620      	mov	r0, r4
 80038a6:	6033      	str	r3, [r6, #0]
 80038a8:	b003      	add	sp, #12
 80038aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80038ae:	f035 0507 	bics.w	r5, r5, #7
 80038b2:	d4f5      	bmi.n	80038a0 <_malloc_r+0x58>
 80038b4:	42a9      	cmp	r1, r5
 80038b6:	d8f3      	bhi.n	80038a0 <_malloc_r+0x58>
 80038b8:	f000 fb4a 	bl	8003f50 <__malloc_lock>
 80038bc:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80038c0:	f0c0 81be 	bcc.w	8003c40 <_malloc_r+0x3f8>
 80038c4:	0a6b      	lsrs	r3, r5, #9
 80038c6:	f000 8138 	beq.w	8003b3a <_malloc_r+0x2f2>
 80038ca:	2b04      	cmp	r3, #4
 80038cc:	f200 8194 	bhi.w	8003bf8 <_malloc_r+0x3b0>
 80038d0:	09ab      	lsrs	r3, r5, #6
 80038d2:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80038d6:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80038da:	00c3      	lsls	r3, r0, #3
 80038dc:	4fb2      	ldr	r7, [pc, #712]	; (8003ba8 <_malloc_r+0x360>)
 80038de:	443b      	add	r3, r7
 80038e0:	f1a3 0408 	sub.w	r4, r3, #8
 80038e4:	685b      	ldr	r3, [r3, #4]
 80038e6:	429c      	cmp	r4, r3
 80038e8:	d107      	bne.n	80038fa <_malloc_r+0xb2>
 80038ea:	e0bd      	b.n	8003a68 <_malloc_r+0x220>
 80038ec:	2900      	cmp	r1, #0
 80038ee:	f280 8149 	bge.w	8003b84 <_malloc_r+0x33c>
 80038f2:	68db      	ldr	r3, [r3, #12]
 80038f4:	429c      	cmp	r4, r3
 80038f6:	f000 80b7 	beq.w	8003a68 <_malloc_r+0x220>
 80038fa:	685a      	ldr	r2, [r3, #4]
 80038fc:	f022 0203 	bic.w	r2, r2, #3
 8003900:	1b51      	subs	r1, r2, r5
 8003902:	290f      	cmp	r1, #15
 8003904:	ddf2      	ble.n	80038ec <_malloc_r+0xa4>
 8003906:	693a      	ldr	r2, [r7, #16]
 8003908:	4660      	mov	r0, ip
 800390a:	f8df e2a4 	ldr.w	lr, [pc, #676]	; 8003bb0 <_malloc_r+0x368>
 800390e:	4572      	cmp	r2, lr
 8003910:	f040 80b0 	bne.w	8003a74 <_malloc_r+0x22c>
 8003914:	1083      	asrs	r3, r0, #2
 8003916:	2401      	movs	r4, #1
 8003918:	6879      	ldr	r1, [r7, #4]
 800391a:	409c      	lsls	r4, r3
 800391c:	428c      	cmp	r4, r1
 800391e:	f240 80d4 	bls.w	8003aca <_malloc_r+0x282>
 8003922:	f8d7 8008 	ldr.w	r8, [r7, #8]
 8003926:	f8d8 1004 	ldr.w	r1, [r8, #4]
 800392a:	f021 0903 	bic.w	r9, r1, #3
 800392e:	eba9 0205 	sub.w	r2, r9, r5
 8003932:	2a0f      	cmp	r2, #15
 8003934:	dd02      	ble.n	800393c <_malloc_r+0xf4>
 8003936:	45a9      	cmp	r9, r5
 8003938:	f080 8112 	bcs.w	8003b60 <_malloc_r+0x318>
 800393c:	f8df a274 	ldr.w	sl, [pc, #628]	; 8003bb4 <_malloc_r+0x36c>
 8003940:	eb08 0309 	add.w	r3, r8, r9
 8003944:	f8d7 1408 	ldr.w	r1, [r7, #1032]	; 0x408
 8003948:	f8da 2000 	ldr.w	r2, [sl]
 800394c:	3101      	adds	r1, #1
 800394e:	442a      	add	r2, r5
 8003950:	f000 81cb 	beq.w	8003cea <_malloc_r+0x4a2>
 8003954:	f241 010f 	movw	r1, #4111	; 0x100f
 8003958:	4c94      	ldr	r4, [pc, #592]	; (8003bac <_malloc_r+0x364>)
 800395a:	4411      	add	r1, r2
 800395c:	400c      	ands	r4, r1
 800395e:	4621      	mov	r1, r4
 8003960:	4630      	mov	r0, r6
 8003962:	9300      	str	r3, [sp, #0]
 8003964:	f000 ffc4 	bl	80048f0 <_sbrk_r>
 8003968:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800396c:	4683      	mov	fp, r0
 800396e:	9b00      	ldr	r3, [sp, #0]
 8003970:	f000 81a5 	beq.w	8003cbe <_malloc_r+0x476>
 8003974:	45b8      	cmp	r8, r7
 8003976:	d002      	beq.n	800397e <_malloc_r+0x136>
 8003978:	4283      	cmp	r3, r0
 800397a:	f200 81a0 	bhi.w	8003cbe <_malloc_r+0x476>
 800397e:	f8da 2004 	ldr.w	r2, [sl, #4]
 8003982:	455b      	cmp	r3, fp
 8003984:	4422      	add	r2, r4
 8003986:	f8ca 2004 	str.w	r2, [sl, #4]
 800398a:	f000 819d 	beq.w	8003cc8 <_malloc_r+0x480>
 800398e:	f8d7 1408 	ldr.w	r1, [r7, #1032]	; 0x408
 8003992:	3101      	adds	r1, #1
 8003994:	f000 81a6 	beq.w	8003ce4 <_malloc_r+0x49c>
 8003998:	ebab 0303 	sub.w	r3, fp, r3
 800399c:	441a      	add	r2, r3
 800399e:	f8ca 2004 	str.w	r2, [sl, #4]
 80039a2:	f01b 0207 	ands.w	r2, fp, #7
 80039a6:	f000 81ae 	beq.w	8003d06 <_malloc_r+0x4be>
 80039aa:	f1c2 0108 	rsb	r1, r2, #8
 80039ae:	f241 0308 	movw	r3, #4104	; 0x1008
 80039b2:	4630      	mov	r0, r6
 80039b4:	9200      	str	r2, [sp, #0]
 80039b6:	448b      	add	fp, r1
 80039b8:	1a9b      	subs	r3, r3, r2
 80039ba:	445c      	add	r4, fp
 80039bc:	1b1b      	subs	r3, r3, r4
 80039be:	f3c3 030b 	ubfx	r3, r3, #0, #12
 80039c2:	4619      	mov	r1, r3
 80039c4:	9301      	str	r3, [sp, #4]
 80039c6:	f000 ff93 	bl	80048f0 <_sbrk_r>
 80039ca:	1c42      	adds	r2, r0, #1
 80039cc:	9a00      	ldr	r2, [sp, #0]
 80039ce:	f000 81e5 	beq.w	8003d9c <_malloc_r+0x554>
 80039d2:	eba0 000b 	sub.w	r0, r0, fp
 80039d6:	9b01      	ldr	r3, [sp, #4]
 80039d8:	18c4      	adds	r4, r0, r3
 80039da:	f8da 2004 	ldr.w	r2, [sl, #4]
 80039de:	f044 0101 	orr.w	r1, r4, #1
 80039e2:	45b8      	cmp	r8, r7
 80039e4:	f8c7 b008 	str.w	fp, [r7, #8]
 80039e8:	441a      	add	r2, r3
 80039ea:	f8cb 1004 	str.w	r1, [fp, #4]
 80039ee:	f8ca 2004 	str.w	r2, [sl, #4]
 80039f2:	f000 81ac 	beq.w	8003d4e <_malloc_r+0x506>
 80039f6:	f1b9 0f0f 	cmp.w	r9, #15
 80039fa:	f240 81aa 	bls.w	8003d52 <_malloc_r+0x50a>
 80039fe:	f8d8 3004 	ldr.w	r3, [r8, #4]
 8003a02:	f1a9 010c 	sub.w	r1, r9, #12
 8003a06:	2405      	movs	r4, #5
 8003a08:	f021 0107 	bic.w	r1, r1, #7
 8003a0c:	f003 0301 	and.w	r3, r3, #1
 8003a10:	eb08 0001 	add.w	r0, r8, r1
 8003a14:	430b      	orrs	r3, r1
 8003a16:	290f      	cmp	r1, #15
 8003a18:	f8c8 3004 	str.w	r3, [r8, #4]
 8003a1c:	e9c0 4401 	strd	r4, r4, [r0, #4]
 8003a20:	f200 81b0 	bhi.w	8003d84 <_malloc_r+0x53c>
 8003a24:	f8db 1004 	ldr.w	r1, [fp, #4]
 8003a28:	46d8      	mov	r8, fp
 8003a2a:	f8da 302c 	ldr.w	r3, [sl, #44]	; 0x2c
 8003a2e:	4293      	cmp	r3, r2
 8003a30:	f8da 3030 	ldr.w	r3, [sl, #48]	; 0x30
 8003a34:	bf38      	it	cc
 8003a36:	f8ca 202c 	strcc.w	r2, [sl, #44]	; 0x2c
 8003a3a:	4293      	cmp	r3, r2
 8003a3c:	bf38      	it	cc
 8003a3e:	f8ca 2030 	strcc.w	r2, [sl, #48]	; 0x30
 8003a42:	f021 0103 	bic.w	r1, r1, #3
 8003a46:	42a9      	cmp	r1, r5
 8003a48:	eba1 0205 	sub.w	r2, r1, r5
 8003a4c:	d302      	bcc.n	8003a54 <_malloc_r+0x20c>
 8003a4e:	2a0f      	cmp	r2, #15
 8003a50:	f300 8086 	bgt.w	8003b60 <_malloc_r+0x318>
 8003a54:	4630      	mov	r0, r6
 8003a56:	2400      	movs	r4, #0
 8003a58:	f000 fa7c 	bl	8003f54 <__malloc_unlock>
 8003a5c:	e71c      	b.n	8003898 <_malloc_r+0x50>
 8003a5e:	68da      	ldr	r2, [r3, #12]
 8003a60:	4293      	cmp	r3, r2
 8003a62:	f47f af08 	bne.w	8003876 <_malloc_r+0x2e>
 8003a66:	3002      	adds	r0, #2
 8003a68:	693a      	ldr	r2, [r7, #16]
 8003a6a:	f8df e144 	ldr.w	lr, [pc, #324]	; 8003bb0 <_malloc_r+0x368>
 8003a6e:	4572      	cmp	r2, lr
 8003a70:	f43f af50 	beq.w	8003914 <_malloc_r+0xcc>
 8003a74:	6853      	ldr	r3, [r2, #4]
 8003a76:	f023 0c03 	bic.w	ip, r3, #3
 8003a7a:	ebac 0305 	sub.w	r3, ip, r5
 8003a7e:	2b0f      	cmp	r3, #15
 8003a80:	f300 80e2 	bgt.w	8003c48 <_malloc_r+0x400>
 8003a84:	2b00      	cmp	r3, #0
 8003a86:	e9c7 ee04 	strd	lr, lr, [r7, #16]
 8003a8a:	da5c      	bge.n	8003b46 <_malloc_r+0x2fe>
 8003a8c:	f5bc 7f00 	cmp.w	ip, #512	; 0x200
 8003a90:	f080 8092 	bcs.w	8003bb8 <_malloc_r+0x370>
 8003a94:	ea4f 0cdc 	mov.w	ip, ip, lsr #3
 8003a98:	2101      	movs	r1, #1
 8003a9a:	ea4f 03ac 	mov.w	r3, ip, asr #2
 8003a9e:	448c      	add	ip, r1
 8003aa0:	4099      	lsls	r1, r3
 8003aa2:	eb07 08cc 	add.w	r8, r7, ip, lsl #3
 8003aa6:	687b      	ldr	r3, [r7, #4]
 8003aa8:	f857 403c 	ldr.w	r4, [r7, ip, lsl #3]
 8003aac:	4319      	orrs	r1, r3
 8003aae:	f1a8 0308 	sub.w	r3, r8, #8
 8003ab2:	6094      	str	r4, [r2, #8]
 8003ab4:	60d3      	str	r3, [r2, #12]
 8003ab6:	6079      	str	r1, [r7, #4]
 8003ab8:	f847 203c 	str.w	r2, [r7, ip, lsl #3]
 8003abc:	60e2      	str	r2, [r4, #12]
 8003abe:	1083      	asrs	r3, r0, #2
 8003ac0:	2401      	movs	r4, #1
 8003ac2:	409c      	lsls	r4, r3
 8003ac4:	428c      	cmp	r4, r1
 8003ac6:	f63f af2c 	bhi.w	8003922 <_malloc_r+0xda>
 8003aca:	420c      	tst	r4, r1
 8003acc:	d105      	bne.n	8003ada <_malloc_r+0x292>
 8003ace:	f020 0003 	bic.w	r0, r0, #3
 8003ad2:	0064      	lsls	r4, r4, #1
 8003ad4:	3004      	adds	r0, #4
 8003ad6:	420c      	tst	r4, r1
 8003ad8:	d0fb      	beq.n	8003ad2 <_malloc_r+0x28a>
 8003ada:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8003ade:	4680      	mov	r8, r0
 8003ae0:	46cc      	mov	ip, r9
 8003ae2:	f8dc 300c 	ldr.w	r3, [ip, #12]
 8003ae6:	459c      	cmp	ip, r3
 8003ae8:	d107      	bne.n	8003afa <_malloc_r+0x2b2>
 8003aea:	e091      	b.n	8003c10 <_malloc_r+0x3c8>
 8003aec:	2a00      	cmp	r2, #0
 8003aee:	f280 8098 	bge.w	8003c22 <_malloc_r+0x3da>
 8003af2:	68db      	ldr	r3, [r3, #12]
 8003af4:	459c      	cmp	ip, r3
 8003af6:	f000 808b 	beq.w	8003c10 <_malloc_r+0x3c8>
 8003afa:	6859      	ldr	r1, [r3, #4]
 8003afc:	f021 0103 	bic.w	r1, r1, #3
 8003b00:	1b4a      	subs	r2, r1, r5
 8003b02:	2a0f      	cmp	r2, #15
 8003b04:	ddf2      	ble.n	8003aec <_malloc_r+0x2a4>
 8003b06:	f8d3 c00c 	ldr.w	ip, [r3, #12]
 8003b0a:	f045 0401 	orr.w	r4, r5, #1
 8003b0e:	f042 0801 	orr.w	r8, r2, #1
 8003b12:	441d      	add	r5, r3
 8003b14:	4630      	mov	r0, r6
 8003b16:	689e      	ldr	r6, [r3, #8]
 8003b18:	605c      	str	r4, [r3, #4]
 8003b1a:	f103 0408 	add.w	r4, r3, #8
 8003b1e:	f8c6 c00c 	str.w	ip, [r6, #12]
 8003b22:	f8cc 6008 	str.w	r6, [ip, #8]
 8003b26:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8003b2a:	e9c5 ee02 	strd	lr, lr, [r5, #8]
 8003b2e:	f8c5 8004 	str.w	r8, [r5, #4]
 8003b32:	505a      	str	r2, [r3, r1]
 8003b34:	f000 fa0e 	bl	8003f54 <__malloc_unlock>
 8003b38:	e6ae      	b.n	8003898 <_malloc_r+0x50>
 8003b3a:	f44f 7300 	mov.w	r3, #512	; 0x200
 8003b3e:	2040      	movs	r0, #64	; 0x40
 8003b40:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8003b44:	e6ca      	b.n	80038dc <_malloc_r+0x94>
 8003b46:	4494      	add	ip, r2
 8003b48:	4630      	mov	r0, r6
 8003b4a:	f102 0408 	add.w	r4, r2, #8
 8003b4e:	f8dc 3004 	ldr.w	r3, [ip, #4]
 8003b52:	f043 0301 	orr.w	r3, r3, #1
 8003b56:	f8cc 3004 	str.w	r3, [ip, #4]
 8003b5a:	f000 f9fb 	bl	8003f54 <__malloc_unlock>
 8003b5e:	e69b      	b.n	8003898 <_malloc_r+0x50>
 8003b60:	f045 0301 	orr.w	r3, r5, #1
 8003b64:	f042 0201 	orr.w	r2, r2, #1
 8003b68:	4445      	add	r5, r8
 8003b6a:	f108 0408 	add.w	r4, r8, #8
 8003b6e:	f8c8 3004 	str.w	r3, [r8, #4]
 8003b72:	4630      	mov	r0, r6
 8003b74:	60bd      	str	r5, [r7, #8]
 8003b76:	606a      	str	r2, [r5, #4]
 8003b78:	f000 f9ec 	bl	8003f54 <__malloc_unlock>
 8003b7c:	4620      	mov	r0, r4
 8003b7e:	b003      	add	sp, #12
 8003b80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003b84:	441a      	add	r2, r3
 8003b86:	f103 0408 	add.w	r4, r3, #8
 8003b8a:	4630      	mov	r0, r6
 8003b8c:	6851      	ldr	r1, [r2, #4]
 8003b8e:	e9d3 7502 	ldrd	r7, r5, [r3, #8]
 8003b92:	f041 0101 	orr.w	r1, r1, #1
 8003b96:	60fd      	str	r5, [r7, #12]
 8003b98:	60af      	str	r7, [r5, #8]
 8003b9a:	6051      	str	r1, [r2, #4]
 8003b9c:	f000 f9da 	bl	8003f54 <__malloc_unlock>
 8003ba0:	4620      	mov	r0, r4
 8003ba2:	b003      	add	sp, #12
 8003ba4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003ba8:	20000430 	.word	0x20000430
 8003bac:	fffff000 	.word	0xfffff000
 8003bb0:	20000438 	.word	0x20000438
 8003bb4:	20000a50 	.word	0x20000a50
 8003bb8:	ea4f 215c 	mov.w	r1, ip, lsr #9
 8003bbc:	2904      	cmp	r1, #4
 8003bbe:	d956      	bls.n	8003c6e <_malloc_r+0x426>
 8003bc0:	2914      	cmp	r1, #20
 8003bc2:	f200 80b1 	bhi.w	8003d28 <_malloc_r+0x4e0>
 8003bc6:	f101 035c 	add.w	r3, r1, #92	; 0x5c
 8003bca:	315b      	adds	r1, #91	; 0x5b
 8003bcc:	00db      	lsls	r3, r3, #3
 8003bce:	18fc      	adds	r4, r7, r3
 8003bd0:	58fb      	ldr	r3, [r7, r3]
 8003bd2:	3c08      	subs	r4, #8
 8003bd4:	429c      	cmp	r4, r3
 8003bd6:	f000 808b 	beq.w	8003cf0 <_malloc_r+0x4a8>
 8003bda:	6859      	ldr	r1, [r3, #4]
 8003bdc:	f021 0103 	bic.w	r1, r1, #3
 8003be0:	4561      	cmp	r1, ip
 8003be2:	d902      	bls.n	8003bea <_malloc_r+0x3a2>
 8003be4:	689b      	ldr	r3, [r3, #8]
 8003be6:	429c      	cmp	r4, r3
 8003be8:	d1f7      	bne.n	8003bda <_malloc_r+0x392>
 8003bea:	68dc      	ldr	r4, [r3, #12]
 8003bec:	6879      	ldr	r1, [r7, #4]
 8003bee:	e9c2 3402 	strd	r3, r4, [r2, #8]
 8003bf2:	60a2      	str	r2, [r4, #8]
 8003bf4:	60da      	str	r2, [r3, #12]
 8003bf6:	e762      	b.n	8003abe <_malloc_r+0x276>
 8003bf8:	2b14      	cmp	r3, #20
 8003bfa:	d93f      	bls.n	8003c7c <_malloc_r+0x434>
 8003bfc:	2b54      	cmp	r3, #84	; 0x54
 8003bfe:	f200 809c 	bhi.w	8003d3a <_malloc_r+0x4f2>
 8003c02:	0b2b      	lsrs	r3, r5, #12
 8003c04:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8003c08:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8003c0c:	00c3      	lsls	r3, r0, #3
 8003c0e:	e665      	b.n	80038dc <_malloc_r+0x94>
 8003c10:	f108 0801 	add.w	r8, r8, #1
 8003c14:	f10c 0c08 	add.w	ip, ip, #8
 8003c18:	f018 0f03 	tst.w	r8, #3
 8003c1c:	f47f af61 	bne.w	8003ae2 <_malloc_r+0x29a>
 8003c20:	e037      	b.n	8003c92 <_malloc_r+0x44a>
 8003c22:	4419      	add	r1, r3
 8003c24:	68da      	ldr	r2, [r3, #12]
 8003c26:	461c      	mov	r4, r3
 8003c28:	4630      	mov	r0, r6
 8003c2a:	684b      	ldr	r3, [r1, #4]
 8003c2c:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8003c30:	f043 0301 	orr.w	r3, r3, #1
 8003c34:	604b      	str	r3, [r1, #4]
 8003c36:	60ea      	str	r2, [r5, #12]
 8003c38:	6095      	str	r5, [r2, #8]
 8003c3a:	f000 f98b 	bl	8003f54 <__malloc_unlock>
 8003c3e:	e62b      	b.n	8003898 <_malloc_r+0x50>
 8003c40:	08e8      	lsrs	r0, r5, #3
 8003c42:	f105 0308 	add.w	r3, r5, #8
 8003c46:	e60e      	b.n	8003866 <_malloc_r+0x1e>
 8003c48:	f045 0401 	orr.w	r4, r5, #1
 8003c4c:	f043 0101 	orr.w	r1, r3, #1
 8003c50:	4415      	add	r5, r2
 8003c52:	4630      	mov	r0, r6
 8003c54:	6054      	str	r4, [r2, #4]
 8003c56:	f102 0408 	add.w	r4, r2, #8
 8003c5a:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8003c5e:	e9c5 ee02 	strd	lr, lr, [r5, #8]
 8003c62:	6069      	str	r1, [r5, #4]
 8003c64:	f842 300c 	str.w	r3, [r2, ip]
 8003c68:	f000 f974 	bl	8003f54 <__malloc_unlock>
 8003c6c:	e614      	b.n	8003898 <_malloc_r+0x50>
 8003c6e:	ea4f 119c 	mov.w	r1, ip, lsr #6
 8003c72:	f101 0339 	add.w	r3, r1, #57	; 0x39
 8003c76:	3138      	adds	r1, #56	; 0x38
 8003c78:	00db      	lsls	r3, r3, #3
 8003c7a:	e7a8      	b.n	8003bce <_malloc_r+0x386>
 8003c7c:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8003c80:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8003c84:	00c3      	lsls	r3, r0, #3
 8003c86:	e629      	b.n	80038dc <_malloc_r+0x94>
 8003c88:	f859 3908 	ldr.w	r3, [r9], #-8
 8003c8c:	454b      	cmp	r3, r9
 8003c8e:	f040 80a0 	bne.w	8003dd2 <_malloc_r+0x58a>
 8003c92:	f010 0f03 	tst.w	r0, #3
 8003c96:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8003c9a:	d1f5      	bne.n	8003c88 <_malloc_r+0x440>
 8003c9c:	687b      	ldr	r3, [r7, #4]
 8003c9e:	ea23 0304 	bic.w	r3, r3, r4
 8003ca2:	607b      	str	r3, [r7, #4]
 8003ca4:	0064      	lsls	r4, r4, #1
 8003ca6:	f43f ae3c 	beq.w	8003922 <_malloc_r+0xda>
 8003caa:	429c      	cmp	r4, r3
 8003cac:	d903      	bls.n	8003cb6 <_malloc_r+0x46e>
 8003cae:	e638      	b.n	8003922 <_malloc_r+0xda>
 8003cb0:	0064      	lsls	r4, r4, #1
 8003cb2:	f108 0804 	add.w	r8, r8, #4
 8003cb6:	421c      	tst	r4, r3
 8003cb8:	d0fa      	beq.n	8003cb0 <_malloc_r+0x468>
 8003cba:	4640      	mov	r0, r8
 8003cbc:	e70d      	b.n	8003ada <_malloc_r+0x292>
 8003cbe:	f8d7 8008 	ldr.w	r8, [r7, #8]
 8003cc2:	f8d8 1004 	ldr.w	r1, [r8, #4]
 8003cc6:	e6bc      	b.n	8003a42 <_malloc_r+0x1fa>
 8003cc8:	f3c3 010b 	ubfx	r1, r3, #0, #12
 8003ccc:	2900      	cmp	r1, #0
 8003cce:	f47f ae5e 	bne.w	800398e <_malloc_r+0x146>
 8003cd2:	eb09 0104 	add.w	r1, r9, r4
 8003cd6:	f8d7 8008 	ldr.w	r8, [r7, #8]
 8003cda:	f041 0101 	orr.w	r1, r1, #1
 8003cde:	f8c8 1004 	str.w	r1, [r8, #4]
 8003ce2:	e6a2      	b.n	8003a2a <_malloc_r+0x1e2>
 8003ce4:	f8c7 b408 	str.w	fp, [r7, #1032]	; 0x408
 8003ce8:	e65b      	b.n	80039a2 <_malloc_r+0x15a>
 8003cea:	f102 0410 	add.w	r4, r2, #16
 8003cee:	e636      	b.n	800395e <_malloc_r+0x116>
 8003cf0:	ea4f 0ca1 	mov.w	ip, r1, asr #2
 8003cf4:	f04f 0801 	mov.w	r8, #1
 8003cf8:	6879      	ldr	r1, [r7, #4]
 8003cfa:	fa08 fc0c 	lsl.w	ip, r8, ip
 8003cfe:	ea4c 0101 	orr.w	r1, ip, r1
 8003d02:	6079      	str	r1, [r7, #4]
 8003d04:	e773      	b.n	8003bee <_malloc_r+0x3a6>
 8003d06:	eb0b 0304 	add.w	r3, fp, r4
 8003d0a:	4630      	mov	r0, r6
 8003d0c:	9200      	str	r2, [sp, #0]
 8003d0e:	425b      	negs	r3, r3
 8003d10:	f3c3 030b 	ubfx	r3, r3, #0, #12
 8003d14:	4619      	mov	r1, r3
 8003d16:	9301      	str	r3, [sp, #4]
 8003d18:	f000 fdea 	bl	80048f0 <_sbrk_r>
 8003d1c:	1c43      	adds	r3, r0, #1
 8003d1e:	9a00      	ldr	r2, [sp, #0]
 8003d20:	f47f ae57 	bne.w	80039d2 <_malloc_r+0x18a>
 8003d24:	4613      	mov	r3, r2
 8003d26:	e658      	b.n	80039da <_malloc_r+0x192>
 8003d28:	2954      	cmp	r1, #84	; 0x54
 8003d2a:	d816      	bhi.n	8003d5a <_malloc_r+0x512>
 8003d2c:	ea4f 311c 	mov.w	r1, ip, lsr #12
 8003d30:	f101 036f 	add.w	r3, r1, #111	; 0x6f
 8003d34:	316e      	adds	r1, #110	; 0x6e
 8003d36:	00db      	lsls	r3, r3, #3
 8003d38:	e749      	b.n	8003bce <_malloc_r+0x386>
 8003d3a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8003d3e:	d816      	bhi.n	8003d6e <_malloc_r+0x526>
 8003d40:	0beb      	lsrs	r3, r5, #15
 8003d42:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8003d46:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8003d4a:	00c3      	lsls	r3, r0, #3
 8003d4c:	e5c6      	b.n	80038dc <_malloc_r+0x94>
 8003d4e:	46d8      	mov	r8, fp
 8003d50:	e66b      	b.n	8003a2a <_malloc_r+0x1e2>
 8003d52:	2301      	movs	r3, #1
 8003d54:	f8cb 3004 	str.w	r3, [fp, #4]
 8003d58:	e67c      	b.n	8003a54 <_malloc_r+0x20c>
 8003d5a:	f5b1 7faa 	cmp.w	r1, #340	; 0x154
 8003d5e:	d823      	bhi.n	8003da8 <_malloc_r+0x560>
 8003d60:	ea4f 31dc 	mov.w	r1, ip, lsr #15
 8003d64:	f101 0378 	add.w	r3, r1, #120	; 0x78
 8003d68:	3177      	adds	r1, #119	; 0x77
 8003d6a:	00db      	lsls	r3, r3, #3
 8003d6c:	e72f      	b.n	8003bce <_malloc_r+0x386>
 8003d6e:	f240 5254 	movw	r2, #1364	; 0x554
 8003d72:	4293      	cmp	r3, r2
 8003d74:	d823      	bhi.n	8003dbe <_malloc_r+0x576>
 8003d76:	0cab      	lsrs	r3, r5, #18
 8003d78:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8003d7c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8003d80:	00c3      	lsls	r3, r0, #3
 8003d82:	e5ab      	b.n	80038dc <_malloc_r+0x94>
 8003d84:	f108 0108 	add.w	r1, r8, #8
 8003d88:	4630      	mov	r0, r6
 8003d8a:	f7ff fb95 	bl	80034b8 <_free_r>
 8003d8e:	f8d7 8008 	ldr.w	r8, [r7, #8]
 8003d92:	f8da 2004 	ldr.w	r2, [sl, #4]
 8003d96:	f8d8 1004 	ldr.w	r1, [r8, #4]
 8003d9a:	e646      	b.n	8003a2a <_malloc_r+0x1e2>
 8003d9c:	3a08      	subs	r2, #8
 8003d9e:	2300      	movs	r3, #0
 8003da0:	4414      	add	r4, r2
 8003da2:	eba4 040b 	sub.w	r4, r4, fp
 8003da6:	e618      	b.n	80039da <_malloc_r+0x192>
 8003da8:	f240 5354 	movw	r3, #1364	; 0x554
 8003dac:	4299      	cmp	r1, r3
 8003dae:	d80c      	bhi.n	8003dca <_malloc_r+0x582>
 8003db0:	ea4f 419c 	mov.w	r1, ip, lsr #18
 8003db4:	f101 037d 	add.w	r3, r1, #125	; 0x7d
 8003db8:	317c      	adds	r1, #124	; 0x7c
 8003dba:	00db      	lsls	r3, r3, #3
 8003dbc:	e707      	b.n	8003bce <_malloc_r+0x386>
 8003dbe:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8003dc2:	207f      	movs	r0, #127	; 0x7f
 8003dc4:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8003dc8:	e588      	b.n	80038dc <_malloc_r+0x94>
 8003dca:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8003dce:	217e      	movs	r1, #126	; 0x7e
 8003dd0:	e6fd      	b.n	8003bce <_malloc_r+0x386>
 8003dd2:	687b      	ldr	r3, [r7, #4]
 8003dd4:	e766      	b.n	8003ca4 <_malloc_r+0x45c>
 8003dd6:	bf00      	nop

08003dd8 <memchr>:
 8003dd8:	0783      	lsls	r3, r0, #30
 8003dda:	b470      	push	{r4, r5, r6}
 8003ddc:	b2cd      	uxtb	r5, r1
 8003dde:	d03c      	beq.n	8003e5a <memchr+0x82>
 8003de0:	1e54      	subs	r4, r2, #1
 8003de2:	b302      	cbz	r2, 8003e26 <memchr+0x4e>
 8003de4:	7803      	ldrb	r3, [r0, #0]
 8003de6:	42ab      	cmp	r3, r5
 8003de8:	d01e      	beq.n	8003e28 <memchr+0x50>
 8003dea:	1c43      	adds	r3, r0, #1
 8003dec:	e005      	b.n	8003dfa <memchr+0x22>
 8003dee:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8003df2:	d318      	bcc.n	8003e26 <memchr+0x4e>
 8003df4:	7802      	ldrb	r2, [r0, #0]
 8003df6:	42aa      	cmp	r2, r5
 8003df8:	d016      	beq.n	8003e28 <memchr+0x50>
 8003dfa:	f013 0f03 	tst.w	r3, #3
 8003dfe:	4618      	mov	r0, r3
 8003e00:	f103 0301 	add.w	r3, r3, #1
 8003e04:	d1f3      	bne.n	8003dee <memchr+0x16>
 8003e06:	2c03      	cmp	r4, #3
 8003e08:	d810      	bhi.n	8003e2c <memchr+0x54>
 8003e0a:	b344      	cbz	r4, 8003e5e <memchr+0x86>
 8003e0c:	7803      	ldrb	r3, [r0, #0]
 8003e0e:	42ab      	cmp	r3, r5
 8003e10:	d00a      	beq.n	8003e28 <memchr+0x50>
 8003e12:	4404      	add	r4, r0
 8003e14:	1c43      	adds	r3, r0, #1
 8003e16:	e002      	b.n	8003e1e <memchr+0x46>
 8003e18:	7802      	ldrb	r2, [r0, #0]
 8003e1a:	42aa      	cmp	r2, r5
 8003e1c:	d004      	beq.n	8003e28 <memchr+0x50>
 8003e1e:	4618      	mov	r0, r3
 8003e20:	3301      	adds	r3, #1
 8003e22:	4284      	cmp	r4, r0
 8003e24:	d1f8      	bne.n	8003e18 <memchr+0x40>
 8003e26:	2000      	movs	r0, #0
 8003e28:	bc70      	pop	{r4, r5, r6}
 8003e2a:	4770      	bx	lr
 8003e2c:	0209      	lsls	r1, r1, #8
 8003e2e:	4602      	mov	r2, r0
 8003e30:	b289      	uxth	r1, r1
 8003e32:	ea41 0605 	orr.w	r6, r1, r5
 8003e36:	ea46 4606 	orr.w	r6, r6, r6, lsl #16
 8003e3a:	4610      	mov	r0, r2
 8003e3c:	3204      	adds	r2, #4
 8003e3e:	6803      	ldr	r3, [r0, #0]
 8003e40:	4073      	eors	r3, r6
 8003e42:	f1a3 3101 	sub.w	r1, r3, #16843009	; 0x1010101
 8003e46:	ea21 0303 	bic.w	r3, r1, r3
 8003e4a:	f013 3f80 	tst.w	r3, #2155905152	; 0x80808080
 8003e4e:	d1dd      	bne.n	8003e0c <memchr+0x34>
 8003e50:	3c04      	subs	r4, #4
 8003e52:	4610      	mov	r0, r2
 8003e54:	2c03      	cmp	r4, #3
 8003e56:	d8f0      	bhi.n	8003e3a <memchr+0x62>
 8003e58:	e7d7      	b.n	8003e0a <memchr+0x32>
 8003e5a:	4614      	mov	r4, r2
 8003e5c:	e7d3      	b.n	8003e06 <memchr+0x2e>
 8003e5e:	4620      	mov	r0, r4
 8003e60:	e7e2      	b.n	8003e28 <memchr+0x50>
 8003e62:	bf00      	nop

08003e64 <memcpy>:
 8003e64:	4684      	mov	ip, r0
 8003e66:	ea41 0300 	orr.w	r3, r1, r0
 8003e6a:	f013 0303 	ands.w	r3, r3, #3
 8003e6e:	d149      	bne.n	8003f04 <memcpy+0xa0>
 8003e70:	3a40      	subs	r2, #64	; 0x40
 8003e72:	d323      	bcc.n	8003ebc <memcpy+0x58>
 8003e74:	680b      	ldr	r3, [r1, #0]
 8003e76:	6003      	str	r3, [r0, #0]
 8003e78:	684b      	ldr	r3, [r1, #4]
 8003e7a:	6043      	str	r3, [r0, #4]
 8003e7c:	688b      	ldr	r3, [r1, #8]
 8003e7e:	6083      	str	r3, [r0, #8]
 8003e80:	68cb      	ldr	r3, [r1, #12]
 8003e82:	60c3      	str	r3, [r0, #12]
 8003e84:	690b      	ldr	r3, [r1, #16]
 8003e86:	6103      	str	r3, [r0, #16]
 8003e88:	694b      	ldr	r3, [r1, #20]
 8003e8a:	6143      	str	r3, [r0, #20]
 8003e8c:	698b      	ldr	r3, [r1, #24]
 8003e8e:	6183      	str	r3, [r0, #24]
 8003e90:	69cb      	ldr	r3, [r1, #28]
 8003e92:	61c3      	str	r3, [r0, #28]
 8003e94:	6a0b      	ldr	r3, [r1, #32]
 8003e96:	6203      	str	r3, [r0, #32]
 8003e98:	6a4b      	ldr	r3, [r1, #36]	; 0x24
 8003e9a:	6243      	str	r3, [r0, #36]	; 0x24
 8003e9c:	6a8b      	ldr	r3, [r1, #40]	; 0x28
 8003e9e:	6283      	str	r3, [r0, #40]	; 0x28
 8003ea0:	6acb      	ldr	r3, [r1, #44]	; 0x2c
 8003ea2:	62c3      	str	r3, [r0, #44]	; 0x2c
 8003ea4:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8003ea6:	6303      	str	r3, [r0, #48]	; 0x30
 8003ea8:	6b4b      	ldr	r3, [r1, #52]	; 0x34
 8003eaa:	6343      	str	r3, [r0, #52]	; 0x34
 8003eac:	6b8b      	ldr	r3, [r1, #56]	; 0x38
 8003eae:	6383      	str	r3, [r0, #56]	; 0x38
 8003eb0:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
 8003eb2:	63c3      	str	r3, [r0, #60]	; 0x3c
 8003eb4:	3040      	adds	r0, #64	; 0x40
 8003eb6:	3140      	adds	r1, #64	; 0x40
 8003eb8:	3a40      	subs	r2, #64	; 0x40
 8003eba:	d2db      	bcs.n	8003e74 <memcpy+0x10>
 8003ebc:	3230      	adds	r2, #48	; 0x30
 8003ebe:	d30b      	bcc.n	8003ed8 <memcpy+0x74>
 8003ec0:	680b      	ldr	r3, [r1, #0]
 8003ec2:	6003      	str	r3, [r0, #0]
 8003ec4:	684b      	ldr	r3, [r1, #4]
 8003ec6:	6043      	str	r3, [r0, #4]
 8003ec8:	688b      	ldr	r3, [r1, #8]
 8003eca:	6083      	str	r3, [r0, #8]
 8003ecc:	68cb      	ldr	r3, [r1, #12]
 8003ece:	60c3      	str	r3, [r0, #12]
 8003ed0:	3010      	adds	r0, #16
 8003ed2:	3110      	adds	r1, #16
 8003ed4:	3a10      	subs	r2, #16
 8003ed6:	d2f3      	bcs.n	8003ec0 <memcpy+0x5c>
 8003ed8:	320c      	adds	r2, #12
 8003eda:	d305      	bcc.n	8003ee8 <memcpy+0x84>
 8003edc:	f851 3b04 	ldr.w	r3, [r1], #4
 8003ee0:	f840 3b04 	str.w	r3, [r0], #4
 8003ee4:	3a04      	subs	r2, #4
 8003ee6:	d2f9      	bcs.n	8003edc <memcpy+0x78>
 8003ee8:	3204      	adds	r2, #4
 8003eea:	d008      	beq.n	8003efe <memcpy+0x9a>
 8003eec:	07d2      	lsls	r2, r2, #31
 8003eee:	bf1c      	itt	ne
 8003ef0:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003ef4:	f800 3b01 	strbne.w	r3, [r0], #1
 8003ef8:	d301      	bcc.n	8003efe <memcpy+0x9a>
 8003efa:	880b      	ldrh	r3, [r1, #0]
 8003efc:	8003      	strh	r3, [r0, #0]
 8003efe:	4660      	mov	r0, ip
 8003f00:	4770      	bx	lr
 8003f02:	bf00      	nop
 8003f04:	2a08      	cmp	r2, #8
 8003f06:	d313      	bcc.n	8003f30 <memcpy+0xcc>
 8003f08:	078b      	lsls	r3, r1, #30
 8003f0a:	d0b1      	beq.n	8003e70 <memcpy+0xc>
 8003f0c:	f010 0303 	ands.w	r3, r0, #3
 8003f10:	d0ae      	beq.n	8003e70 <memcpy+0xc>
 8003f12:	f1c3 0304 	rsb	r3, r3, #4
 8003f16:	1ad2      	subs	r2, r2, r3
 8003f18:	07db      	lsls	r3, r3, #31
 8003f1a:	bf1c      	itt	ne
 8003f1c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8003f20:	f800 3b01 	strbne.w	r3, [r0], #1
 8003f24:	d3a4      	bcc.n	8003e70 <memcpy+0xc>
 8003f26:	f831 3b02 	ldrh.w	r3, [r1], #2
 8003f2a:	f820 3b02 	strh.w	r3, [r0], #2
 8003f2e:	e79f      	b.n	8003e70 <memcpy+0xc>
 8003f30:	3a04      	subs	r2, #4
 8003f32:	d3d9      	bcc.n	8003ee8 <memcpy+0x84>
 8003f34:	3a01      	subs	r2, #1
 8003f36:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003f3a:	f800 3b01 	strb.w	r3, [r0], #1
 8003f3e:	d2f9      	bcs.n	8003f34 <memcpy+0xd0>
 8003f40:	780b      	ldrb	r3, [r1, #0]
 8003f42:	7003      	strb	r3, [r0, #0]
 8003f44:	784b      	ldrb	r3, [r1, #1]
 8003f46:	7043      	strb	r3, [r0, #1]
 8003f48:	788b      	ldrb	r3, [r1, #2]
 8003f4a:	7083      	strb	r3, [r0, #2]
 8003f4c:	4660      	mov	r0, ip
 8003f4e:	4770      	bx	lr

08003f50 <__malloc_lock>:
 8003f50:	4770      	bx	lr
 8003f52:	bf00      	nop

08003f54 <__malloc_unlock>:
 8003f54:	4770      	bx	lr
 8003f56:	bf00      	nop

08003f58 <_Balloc>:
 8003f58:	b538      	push	{r3, r4, r5, lr}
 8003f5a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8003f5c:	4605      	mov	r5, r0
 8003f5e:	460c      	mov	r4, r1
 8003f60:	b14b      	cbz	r3, 8003f76 <_Balloc+0x1e>
 8003f62:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8003f66:	b180      	cbz	r0, 8003f8a <_Balloc+0x32>
 8003f68:	6802      	ldr	r2, [r0, #0]
 8003f6a:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8003f6e:	2300      	movs	r3, #0
 8003f70:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8003f74:	bd38      	pop	{r3, r4, r5, pc}
 8003f76:	2221      	movs	r2, #33	; 0x21
 8003f78:	2104      	movs	r1, #4
 8003f7a:	f001 fc15 	bl	80057a8 <_calloc_r>
 8003f7e:	4603      	mov	r3, r0
 8003f80:	64e8      	str	r0, [r5, #76]	; 0x4c
 8003f82:	2800      	cmp	r0, #0
 8003f84:	d1ed      	bne.n	8003f62 <_Balloc+0xa>
 8003f86:	2000      	movs	r0, #0
 8003f88:	bd38      	pop	{r3, r4, r5, pc}
 8003f8a:	2101      	movs	r1, #1
 8003f8c:	4628      	mov	r0, r5
 8003f8e:	fa01 f504 	lsl.w	r5, r1, r4
 8003f92:	1d6a      	adds	r2, r5, #5
 8003f94:	0092      	lsls	r2, r2, #2
 8003f96:	f001 fc07 	bl	80057a8 <_calloc_r>
 8003f9a:	2800      	cmp	r0, #0
 8003f9c:	d0f3      	beq.n	8003f86 <_Balloc+0x2e>
 8003f9e:	e9c0 4501 	strd	r4, r5, [r0, #4]
 8003fa2:	e7e4      	b.n	8003f6e <_Balloc+0x16>

08003fa4 <_Bfree>:
 8003fa4:	b131      	cbz	r1, 8003fb4 <_Bfree+0x10>
 8003fa6:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8003fa8:	684a      	ldr	r2, [r1, #4]
 8003faa:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8003fae:	6008      	str	r0, [r1, #0]
 8003fb0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8003fb4:	4770      	bx	lr
 8003fb6:	bf00      	nop

08003fb8 <__multadd>:
 8003fb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003fba:	f101 0c14 	add.w	ip, r1, #20
 8003fbe:	b083      	sub	sp, #12
 8003fc0:	460c      	mov	r4, r1
 8003fc2:	4605      	mov	r5, r0
 8003fc4:	690e      	ldr	r6, [r1, #16]
 8003fc6:	2700      	movs	r7, #0
 8003fc8:	f8dc 0000 	ldr.w	r0, [ip]
 8003fcc:	3701      	adds	r7, #1
 8003fce:	b281      	uxth	r1, r0
 8003fd0:	42be      	cmp	r6, r7
 8003fd2:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8003fd6:	fb02 3301 	mla	r3, r2, r1, r3
 8003fda:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8003fde:	b29b      	uxth	r3, r3
 8003fe0:	fb02 1000 	mla	r0, r2, r0, r1
 8003fe4:	eb03 4100 	add.w	r1, r3, r0, lsl #16
 8003fe8:	ea4f 4310 	mov.w	r3, r0, lsr #16
 8003fec:	f84c 1b04 	str.w	r1, [ip], #4
 8003ff0:	dcea      	bgt.n	8003fc8 <__multadd+0x10>
 8003ff2:	b13b      	cbz	r3, 8004004 <__multadd+0x4c>
 8003ff4:	68a2      	ldr	r2, [r4, #8]
 8003ff6:	42b2      	cmp	r2, r6
 8003ff8:	dd07      	ble.n	800400a <__multadd+0x52>
 8003ffa:	eb04 0286 	add.w	r2, r4, r6, lsl #2
 8003ffe:	3601      	adds	r6, #1
 8004000:	6153      	str	r3, [r2, #20]
 8004002:	6126      	str	r6, [r4, #16]
 8004004:	4620      	mov	r0, r4
 8004006:	b003      	add	sp, #12
 8004008:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800400a:	6861      	ldr	r1, [r4, #4]
 800400c:	4628      	mov	r0, r5
 800400e:	9301      	str	r3, [sp, #4]
 8004010:	3101      	adds	r1, #1
 8004012:	f7ff ffa1 	bl	8003f58 <_Balloc>
 8004016:	9b01      	ldr	r3, [sp, #4]
 8004018:	4607      	mov	r7, r0
 800401a:	b1b8      	cbz	r0, 800404c <__multadd+0x94>
 800401c:	6922      	ldr	r2, [r4, #16]
 800401e:	f104 010c 	add.w	r1, r4, #12
 8004022:	300c      	adds	r0, #12
 8004024:	9301      	str	r3, [sp, #4]
 8004026:	3202      	adds	r2, #2
 8004028:	0092      	lsls	r2, r2, #2
 800402a:	f7ff ff1b 	bl	8003e64 <memcpy>
 800402e:	6cea      	ldr	r2, [r5, #76]	; 0x4c
 8004030:	6861      	ldr	r1, [r4, #4]
 8004032:	9b01      	ldr	r3, [sp, #4]
 8004034:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8004038:	6020      	str	r0, [r4, #0]
 800403a:	f842 4021 	str.w	r4, [r2, r1, lsl #2]
 800403e:	463c      	mov	r4, r7
 8004040:	eb04 0286 	add.w	r2, r4, r6, lsl #2
 8004044:	3601      	adds	r6, #1
 8004046:	6153      	str	r3, [r2, #20]
 8004048:	6126      	str	r6, [r4, #16]
 800404a:	e7db      	b.n	8004004 <__multadd+0x4c>
 800404c:	4602      	mov	r2, r0
 800404e:	4b02      	ldr	r3, [pc, #8]	; (8004058 <__multadd+0xa0>)
 8004050:	21b5      	movs	r1, #181	; 0xb5
 8004052:	4802      	ldr	r0, [pc, #8]	; (800405c <__multadd+0xa4>)
 8004054:	f001 fb84 	bl	8005760 <__assert_func>
 8004058:	0800add8 	.word	0x0800add8
 800405c:	0800ae20 	.word	0x0800ae20

08004060 <__s2b>:
 8004060:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8004064:	461d      	mov	r5, r3
 8004066:	4e26      	ldr	r6, [pc, #152]	; (8004100 <__s2b+0xa0>)
 8004068:	3308      	adds	r3, #8
 800406a:	460c      	mov	r4, r1
 800406c:	4690      	mov	r8, r2
 800406e:	2d09      	cmp	r5, #9
 8004070:	fb86 1203 	smull	r1, r2, r6, r3
 8004074:	ea4f 73e3 	mov.w	r3, r3, asr #31
 8004078:	4607      	mov	r7, r0
 800407a:	ebc3 0262 	rsb	r2, r3, r2, asr #1
 800407e:	dd36      	ble.n	80040ee <__s2b+0x8e>
 8004080:	2301      	movs	r3, #1
 8004082:	2100      	movs	r1, #0
 8004084:	005b      	lsls	r3, r3, #1
 8004086:	3101      	adds	r1, #1
 8004088:	429a      	cmp	r2, r3
 800408a:	dcfb      	bgt.n	8004084 <__s2b+0x24>
 800408c:	4638      	mov	r0, r7
 800408e:	f7ff ff63 	bl	8003f58 <_Balloc>
 8004092:	b370      	cbz	r0, 80040f2 <__s2b+0x92>
 8004094:	2301      	movs	r3, #1
 8004096:	9a08      	ldr	r2, [sp, #32]
 8004098:	f1b8 0f09 	cmp.w	r8, #9
 800409c:	e9c0 3204 	strd	r3, r2, [r0, #16]
 80040a0:	dc13      	bgt.n	80040ca <__s2b+0x6a>
 80040a2:	340a      	adds	r4, #10
 80040a4:	f04f 0809 	mov.w	r8, #9
 80040a8:	4545      	cmp	r5, r8
 80040aa:	dd0c      	ble.n	80040c6 <__s2b+0x66>
 80040ac:	eba5 0508 	sub.w	r5, r5, r8
 80040b0:	4425      	add	r5, r4
 80040b2:	f814 3b01 	ldrb.w	r3, [r4], #1
 80040b6:	4601      	mov	r1, r0
 80040b8:	220a      	movs	r2, #10
 80040ba:	4638      	mov	r0, r7
 80040bc:	3b30      	subs	r3, #48	; 0x30
 80040be:	f7ff ff7b 	bl	8003fb8 <__multadd>
 80040c2:	42a5      	cmp	r5, r4
 80040c4:	d1f5      	bne.n	80040b2 <__s2b+0x52>
 80040c6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80040ca:	f104 0909 	add.w	r9, r4, #9
 80040ce:	4444      	add	r4, r8
 80040d0:	464e      	mov	r6, r9
 80040d2:	f816 3b01 	ldrb.w	r3, [r6], #1
 80040d6:	4601      	mov	r1, r0
 80040d8:	220a      	movs	r2, #10
 80040da:	4638      	mov	r0, r7
 80040dc:	3b30      	subs	r3, #48	; 0x30
 80040de:	f7ff ff6b 	bl	8003fb8 <__multadd>
 80040e2:	42b4      	cmp	r4, r6
 80040e4:	d1f5      	bne.n	80040d2 <__s2b+0x72>
 80040e6:	f1a8 0408 	sub.w	r4, r8, #8
 80040ea:	444c      	add	r4, r9
 80040ec:	e7dc      	b.n	80040a8 <__s2b+0x48>
 80040ee:	2100      	movs	r1, #0
 80040f0:	e7cc      	b.n	800408c <__s2b+0x2c>
 80040f2:	4602      	mov	r2, r0
 80040f4:	4b03      	ldr	r3, [pc, #12]	; (8004104 <__s2b+0xa4>)
 80040f6:	21ce      	movs	r1, #206	; 0xce
 80040f8:	4803      	ldr	r0, [pc, #12]	; (8004108 <__s2b+0xa8>)
 80040fa:	f001 fb31 	bl	8005760 <__assert_func>
 80040fe:	bf00      	nop
 8004100:	38e38e39 	.word	0x38e38e39
 8004104:	0800add8 	.word	0x0800add8
 8004108:	0800ae20 	.word	0x0800ae20

0800410c <__hi0bits>:
 800410c:	4a0f      	ldr	r2, [pc, #60]	; (800414c <__hi0bits+0x40>)
 800410e:	4603      	mov	r3, r0
 8004110:	4002      	ands	r2, r0
 8004112:	b9ca      	cbnz	r2, 8004148 <__hi0bits+0x3c>
 8004114:	0403      	lsls	r3, r0, #16
 8004116:	2010      	movs	r0, #16
 8004118:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800411c:	d101      	bne.n	8004122 <__hi0bits+0x16>
 800411e:	3008      	adds	r0, #8
 8004120:	021b      	lsls	r3, r3, #8
 8004122:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8004126:	d101      	bne.n	800412c <__hi0bits+0x20>
 8004128:	3004      	adds	r0, #4
 800412a:	011b      	lsls	r3, r3, #4
 800412c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8004130:	d101      	bne.n	8004136 <__hi0bits+0x2a>
 8004132:	3002      	adds	r0, #2
 8004134:	009b      	lsls	r3, r3, #2
 8004136:	2b00      	cmp	r3, #0
 8004138:	db05      	blt.n	8004146 <__hi0bits+0x3a>
 800413a:	f013 4f80 	tst.w	r3, #1073741824	; 0x40000000
 800413e:	f100 0001 	add.w	r0, r0, #1
 8004142:	bf08      	it	eq
 8004144:	2020      	moveq	r0, #32
 8004146:	4770      	bx	lr
 8004148:	2000      	movs	r0, #0
 800414a:	e7e5      	b.n	8004118 <__hi0bits+0xc>
 800414c:	ffff0000 	.word	0xffff0000

08004150 <__lo0bits>:
 8004150:	6803      	ldr	r3, [r0, #0]
 8004152:	4601      	mov	r1, r0
 8004154:	f013 0207 	ands.w	r2, r3, #7
 8004158:	d007      	beq.n	800416a <__lo0bits+0x1a>
 800415a:	07da      	lsls	r2, r3, #31
 800415c:	d420      	bmi.n	80041a0 <__lo0bits+0x50>
 800415e:	0798      	lsls	r0, r3, #30
 8004160:	d522      	bpl.n	80041a8 <__lo0bits+0x58>
 8004162:	085b      	lsrs	r3, r3, #1
 8004164:	2001      	movs	r0, #1
 8004166:	600b      	str	r3, [r1, #0]
 8004168:	4770      	bx	lr
 800416a:	b298      	uxth	r0, r3
 800416c:	b9b0      	cbnz	r0, 800419c <__lo0bits+0x4c>
 800416e:	0c1b      	lsrs	r3, r3, #16
 8004170:	2010      	movs	r0, #16
 8004172:	f013 0fff 	tst.w	r3, #255	; 0xff
 8004176:	d101      	bne.n	800417c <__lo0bits+0x2c>
 8004178:	3008      	adds	r0, #8
 800417a:	0a1b      	lsrs	r3, r3, #8
 800417c:	071a      	lsls	r2, r3, #28
 800417e:	d101      	bne.n	8004184 <__lo0bits+0x34>
 8004180:	3004      	adds	r0, #4
 8004182:	091b      	lsrs	r3, r3, #4
 8004184:	079a      	lsls	r2, r3, #30
 8004186:	d101      	bne.n	800418c <__lo0bits+0x3c>
 8004188:	3002      	adds	r0, #2
 800418a:	089b      	lsrs	r3, r3, #2
 800418c:	07da      	lsls	r2, r3, #31
 800418e:	d403      	bmi.n	8004198 <__lo0bits+0x48>
 8004190:	085b      	lsrs	r3, r3, #1
 8004192:	f100 0001 	add.w	r0, r0, #1
 8004196:	d005      	beq.n	80041a4 <__lo0bits+0x54>
 8004198:	600b      	str	r3, [r1, #0]
 800419a:	4770      	bx	lr
 800419c:	4610      	mov	r0, r2
 800419e:	e7e8      	b.n	8004172 <__lo0bits+0x22>
 80041a0:	2000      	movs	r0, #0
 80041a2:	4770      	bx	lr
 80041a4:	2020      	movs	r0, #32
 80041a6:	4770      	bx	lr
 80041a8:	089b      	lsrs	r3, r3, #2
 80041aa:	2002      	movs	r0, #2
 80041ac:	600b      	str	r3, [r1, #0]
 80041ae:	4770      	bx	lr

080041b0 <__i2b>:
 80041b0:	b510      	push	{r4, lr}
 80041b2:	460c      	mov	r4, r1
 80041b4:	2101      	movs	r1, #1
 80041b6:	f7ff fecf 	bl	8003f58 <_Balloc>
 80041ba:	4602      	mov	r2, r0
 80041bc:	b118      	cbz	r0, 80041c6 <__i2b+0x16>
 80041be:	2301      	movs	r3, #1
 80041c0:	e9c0 3404 	strd	r3, r4, [r0, #16]
 80041c4:	bd10      	pop	{r4, pc}
 80041c6:	4b03      	ldr	r3, [pc, #12]	; (80041d4 <__i2b+0x24>)
 80041c8:	f44f 71a0 	mov.w	r1, #320	; 0x140
 80041cc:	4802      	ldr	r0, [pc, #8]	; (80041d8 <__i2b+0x28>)
 80041ce:	f001 fac7 	bl	8005760 <__assert_func>
 80041d2:	bf00      	nop
 80041d4:	0800add8 	.word	0x0800add8
 80041d8:	0800ae20 	.word	0x0800ae20

080041dc <__multiply>:
 80041dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80041e0:	690d      	ldr	r5, [r1, #16]
 80041e2:	b083      	sub	sp, #12
 80041e4:	6917      	ldr	r7, [r2, #16]
 80041e6:	460c      	mov	r4, r1
 80041e8:	4616      	mov	r6, r2
 80041ea:	42bd      	cmp	r5, r7
 80041ec:	db05      	blt.n	80041fa <__multiply+0x1e>
 80041ee:	463a      	mov	r2, r7
 80041f0:	4633      	mov	r3, r6
 80041f2:	462f      	mov	r7, r5
 80041f4:	460e      	mov	r6, r1
 80041f6:	4615      	mov	r5, r2
 80041f8:	461c      	mov	r4, r3
 80041fa:	eb07 0805 	add.w	r8, r7, r5
 80041fe:	e9d6 1301 	ldrd	r1, r3, [r6, #4]
 8004202:	4543      	cmp	r3, r8
 8004204:	bfb8      	it	lt
 8004206:	3101      	addlt	r1, #1
 8004208:	f7ff fea6 	bl	8003f58 <_Balloc>
 800420c:	9000      	str	r0, [sp, #0]
 800420e:	2800      	cmp	r0, #0
 8004210:	f000 8081 	beq.w	8004316 <__multiply+0x13a>
 8004214:	9b00      	ldr	r3, [sp, #0]
 8004216:	f103 0a14 	add.w	sl, r3, #20
 800421a:	eb0a 0988 	add.w	r9, sl, r8, lsl #2
 800421e:	45ca      	cmp	sl, r9
 8004220:	d205      	bcs.n	800422e <__multiply+0x52>
 8004222:	4653      	mov	r3, sl
 8004224:	2100      	movs	r1, #0
 8004226:	f843 1b04 	str.w	r1, [r3], #4
 800422a:	4599      	cmp	r9, r3
 800422c:	d8fb      	bhi.n	8004226 <__multiply+0x4a>
 800422e:	f104 0e14 	add.w	lr, r4, #20
 8004232:	f106 0314 	add.w	r3, r6, #20
 8004236:	eb0e 0b85 	add.w	fp, lr, r5, lsl #2
 800423a:	eb03 0787 	add.w	r7, r3, r7, lsl #2
 800423e:	45de      	cmp	lr, fp
 8004240:	d254      	bcs.n	80042ec <__multiply+0x110>
 8004242:	f8cd 8004 	str.w	r8, [sp, #4]
 8004246:	4698      	mov	r8, r3
 8004248:	e005      	b.n	8004256 <__multiply+0x7a>
 800424a:	0c24      	lsrs	r4, r4, #16
 800424c:	d12a      	bne.n	80042a4 <__multiply+0xc8>
 800424e:	45f3      	cmp	fp, lr
 8004250:	f10a 0a04 	add.w	sl, sl, #4
 8004254:	d948      	bls.n	80042e8 <__multiply+0x10c>
 8004256:	f85e 4b04 	ldr.w	r4, [lr], #4
 800425a:	b2a6      	uxth	r6, r4
 800425c:	2e00      	cmp	r6, #0
 800425e:	d0f4      	beq.n	800424a <__multiply+0x6e>
 8004260:	4645      	mov	r5, r8
 8004262:	4654      	mov	r4, sl
 8004264:	2200      	movs	r2, #0
 8004266:	f855 3b04 	ldr.w	r3, [r5], #4
 800426a:	6820      	ldr	r0, [r4, #0]
 800426c:	b299      	uxth	r1, r3
 800426e:	42af      	cmp	r7, r5
 8004270:	fa1f fc80 	uxth.w	ip, r0
 8004274:	ea4f 4313 	mov.w	r3, r3, lsr #16
 8004278:	fb06 c101 	mla	r1, r6, r1, ip
 800427c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8004280:	4411      	add	r1, r2
 8004282:	fb06 0203 	mla	r2, r6, r3, r0
 8004286:	b28b      	uxth	r3, r1
 8004288:	eb02 4211 	add.w	r2, r2, r1, lsr #16
 800428c:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 8004290:	ea4f 4212 	mov.w	r2, r2, lsr #16
 8004294:	f844 3b04 	str.w	r3, [r4], #4
 8004298:	d8e5      	bhi.n	8004266 <__multiply+0x8a>
 800429a:	6022      	str	r2, [r4, #0]
 800429c:	f85e 4c04 	ldr.w	r4, [lr, #-4]
 80042a0:	0c24      	lsrs	r4, r4, #16
 80042a2:	d0d4      	beq.n	800424e <__multiply+0x72>
 80042a4:	f8da 3000 	ldr.w	r3, [sl]
 80042a8:	4645      	mov	r5, r8
 80042aa:	4656      	mov	r6, sl
 80042ac:	2200      	movs	r2, #0
 80042ae:	4618      	mov	r0, r3
 80042b0:	0c01      	lsrs	r1, r0, #16
 80042b2:	8828      	ldrh	r0, [r5, #0]
 80042b4:	b29b      	uxth	r3, r3
 80042b6:	fb04 1000 	mla	r0, r4, r0, r1
 80042ba:	4402      	add	r2, r0
 80042bc:	ea43 4302 	orr.w	r3, r3, r2, lsl #16
 80042c0:	f846 3b04 	str.w	r3, [r6], #4
 80042c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80042c8:	6830      	ldr	r0, [r6, #0]
 80042ca:	0c1b      	lsrs	r3, r3, #16
 80042cc:	42af      	cmp	r7, r5
 80042ce:	b281      	uxth	r1, r0
 80042d0:	fb04 1303 	mla	r3, r4, r3, r1
 80042d4:	eb03 4312 	add.w	r3, r3, r2, lsr #16
 80042d8:	ea4f 4213 	mov.w	r2, r3, lsr #16
 80042dc:	d8e8      	bhi.n	80042b0 <__multiply+0xd4>
 80042de:	45f3      	cmp	fp, lr
 80042e0:	6033      	str	r3, [r6, #0]
 80042e2:	f10a 0a04 	add.w	sl, sl, #4
 80042e6:	d8b6      	bhi.n	8004256 <__multiply+0x7a>
 80042e8:	f8dd 8004 	ldr.w	r8, [sp, #4]
 80042ec:	f1b8 0f00 	cmp.w	r8, #0
 80042f0:	dd0b      	ble.n	800430a <__multiply+0x12e>
 80042f2:	f859 3c04 	ldr.w	r3, [r9, #-4]
 80042f6:	f1a9 0904 	sub.w	r9, r9, #4
 80042fa:	b11b      	cbz	r3, 8004304 <__multiply+0x128>
 80042fc:	e005      	b.n	800430a <__multiply+0x12e>
 80042fe:	f859 3d04 	ldr.w	r3, [r9, #-4]!
 8004302:	b913      	cbnz	r3, 800430a <__multiply+0x12e>
 8004304:	f1b8 0801 	subs.w	r8, r8, #1
 8004308:	d1f9      	bne.n	80042fe <__multiply+0x122>
 800430a:	9800      	ldr	r0, [sp, #0]
 800430c:	f8c0 8010 	str.w	r8, [r0, #16]
 8004310:	b003      	add	sp, #12
 8004312:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004316:	4602      	mov	r2, r0
 8004318:	4b02      	ldr	r3, [pc, #8]	; (8004324 <__multiply+0x148>)
 800431a:	f240 115d 	movw	r1, #349	; 0x15d
 800431e:	4802      	ldr	r0, [pc, #8]	; (8004328 <__multiply+0x14c>)
 8004320:	f001 fa1e 	bl	8005760 <__assert_func>
 8004324:	0800add8 	.word	0x0800add8
 8004328:	0800ae20 	.word	0x0800ae20

0800432c <__pow5mult>:
 800432c:	f012 0303 	ands.w	r3, r2, #3
 8004330:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004334:	4614      	mov	r4, r2
 8004336:	4607      	mov	r7, r0
 8004338:	d12e      	bne.n	8004398 <__pow5mult+0x6c>
 800433a:	460d      	mov	r5, r1
 800433c:	10a4      	asrs	r4, r4, #2
 800433e:	d01c      	beq.n	800437a <__pow5mult+0x4e>
 8004340:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8004342:	b396      	cbz	r6, 80043aa <__pow5mult+0x7e>
 8004344:	07e3      	lsls	r3, r4, #31
 8004346:	f04f 0800 	mov.w	r8, #0
 800434a:	d406      	bmi.n	800435a <__pow5mult+0x2e>
 800434c:	1064      	asrs	r4, r4, #1
 800434e:	d014      	beq.n	800437a <__pow5mult+0x4e>
 8004350:	6830      	ldr	r0, [r6, #0]
 8004352:	b1a8      	cbz	r0, 8004380 <__pow5mult+0x54>
 8004354:	4606      	mov	r6, r0
 8004356:	07e3      	lsls	r3, r4, #31
 8004358:	d5f8      	bpl.n	800434c <__pow5mult+0x20>
 800435a:	4632      	mov	r2, r6
 800435c:	4629      	mov	r1, r5
 800435e:	4638      	mov	r0, r7
 8004360:	f7ff ff3c 	bl	80041dc <__multiply>
 8004364:	b1b5      	cbz	r5, 8004394 <__pow5mult+0x68>
 8004366:	686a      	ldr	r2, [r5, #4]
 8004368:	1064      	asrs	r4, r4, #1
 800436a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800436c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8004370:	6029      	str	r1, [r5, #0]
 8004372:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8004376:	4605      	mov	r5, r0
 8004378:	d1ea      	bne.n	8004350 <__pow5mult+0x24>
 800437a:	4628      	mov	r0, r5
 800437c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004380:	4632      	mov	r2, r6
 8004382:	4631      	mov	r1, r6
 8004384:	4638      	mov	r0, r7
 8004386:	f7ff ff29 	bl	80041dc <__multiply>
 800438a:	6030      	str	r0, [r6, #0]
 800438c:	f8c0 8000 	str.w	r8, [r0]
 8004390:	4606      	mov	r6, r0
 8004392:	e7e0      	b.n	8004356 <__pow5mult+0x2a>
 8004394:	4605      	mov	r5, r0
 8004396:	e7d9      	b.n	800434c <__pow5mult+0x20>
 8004398:	1e5a      	subs	r2, r3, #1
 800439a:	4d09      	ldr	r5, [pc, #36]	; (80043c0 <__pow5mult+0x94>)
 800439c:	2300      	movs	r3, #0
 800439e:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80043a2:	f7ff fe09 	bl	8003fb8 <__multadd>
 80043a6:	4605      	mov	r5, r0
 80043a8:	e7c8      	b.n	800433c <__pow5mult+0x10>
 80043aa:	f240 2171 	movw	r1, #625	; 0x271
 80043ae:	4638      	mov	r0, r7
 80043b0:	f7ff fefe 	bl	80041b0 <__i2b>
 80043b4:	2300      	movs	r3, #0
 80043b6:	64b8      	str	r0, [r7, #72]	; 0x48
 80043b8:	4606      	mov	r6, r0
 80043ba:	6003      	str	r3, [r0, #0]
 80043bc:	e7c2      	b.n	8004344 <__pow5mult+0x18>
 80043be:	bf00      	nop
 80043c0:	0800aab8 	.word	0x0800aab8

080043c4 <__lshift>:
 80043c4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80043c8:	690e      	ldr	r6, [r1, #16]
 80043ca:	ea4f 1962 	mov.w	r9, r2, asr #5
 80043ce:	688b      	ldr	r3, [r1, #8]
 80043d0:	460d      	mov	r5, r1
 80043d2:	444e      	add	r6, r9
 80043d4:	4690      	mov	r8, r2
 80043d6:	4607      	mov	r7, r0
 80043d8:	6849      	ldr	r1, [r1, #4]
 80043da:	1c74      	adds	r4, r6, #1
 80043dc:	429c      	cmp	r4, r3
 80043de:	dd03      	ble.n	80043e8 <__lshift+0x24>
 80043e0:	005b      	lsls	r3, r3, #1
 80043e2:	3101      	adds	r1, #1
 80043e4:	429c      	cmp	r4, r3
 80043e6:	dcfb      	bgt.n	80043e0 <__lshift+0x1c>
 80043e8:	4638      	mov	r0, r7
 80043ea:	f7ff fdb5 	bl	8003f58 <_Balloc>
 80043ee:	4602      	mov	r2, r0
 80043f0:	2800      	cmp	r0, #0
 80043f2:	d046      	beq.n	8004482 <__lshift+0xbe>
 80043f4:	f1b9 0f00 	cmp.w	r9, #0
 80043f8:	f100 0014 	add.w	r0, r0, #20
 80043fc:	dd0f      	ble.n	800441e <__lshift+0x5a>
 80043fe:	f109 0905 	add.w	r9, r9, #5
 8004402:	4603      	mov	r3, r0
 8004404:	f04f 0c00 	mov.w	ip, #0
 8004408:	ea4f 0989 	mov.w	r9, r9, lsl #2
 800440c:	eb02 0109 	add.w	r1, r2, r9
 8004410:	f843 cb04 	str.w	ip, [r3], #4
 8004414:	428b      	cmp	r3, r1
 8004416:	d1fb      	bne.n	8004410 <__lshift+0x4c>
 8004418:	f1a9 0914 	sub.w	r9, r9, #20
 800441c:	4448      	add	r0, r9
 800441e:	f105 0314 	add.w	r3, r5, #20
 8004422:	6929      	ldr	r1, [r5, #16]
 8004424:	f018 081f 	ands.w	r8, r8, #31
 8004428:	eb03 0c81 	add.w	ip, r3, r1, lsl #2
 800442c:	d021      	beq.n	8004472 <__lshift+0xae>
 800442e:	f1c8 0920 	rsb	r9, r8, #32
 8004432:	f04f 0e00 	mov.w	lr, #0
 8004436:	6819      	ldr	r1, [r3, #0]
 8004438:	fa01 f108 	lsl.w	r1, r1, r8
 800443c:	ea41 010e 	orr.w	r1, r1, lr
 8004440:	f840 1b04 	str.w	r1, [r0], #4
 8004444:	f853 1b04 	ldr.w	r1, [r3], #4
 8004448:	4563      	cmp	r3, ip
 800444a:	fa21 fe09 	lsr.w	lr, r1, r9
 800444e:	d3f2      	bcc.n	8004436 <__lshift+0x72>
 8004450:	f1be 0f00 	cmp.w	lr, #0
 8004454:	bf18      	it	ne
 8004456:	4626      	movne	r6, r4
 8004458:	f8c0 e000 	str.w	lr, [r0]
 800445c:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800445e:	4610      	mov	r0, r2
 8004460:	6869      	ldr	r1, [r5, #4]
 8004462:	6116      	str	r6, [r2, #16]
 8004464:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
 8004468:	602a      	str	r2, [r5, #0]
 800446a:	f843 5021 	str.w	r5, [r3, r1, lsl #2]
 800446e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8004472:	3804      	subs	r0, #4
 8004474:	f853 1b04 	ldr.w	r1, [r3], #4
 8004478:	459c      	cmp	ip, r3
 800447a:	f840 1f04 	str.w	r1, [r0, #4]!
 800447e:	d8f9      	bhi.n	8004474 <__lshift+0xb0>
 8004480:	e7ec      	b.n	800445c <__lshift+0x98>
 8004482:	4b03      	ldr	r3, [pc, #12]	; (8004490 <__lshift+0xcc>)
 8004484:	f240 11d9 	movw	r1, #473	; 0x1d9
 8004488:	4802      	ldr	r0, [pc, #8]	; (8004494 <__lshift+0xd0>)
 800448a:	f001 f969 	bl	8005760 <__assert_func>
 800448e:	bf00      	nop
 8004490:	0800add8 	.word	0x0800add8
 8004494:	0800ae20 	.word	0x0800ae20

08004498 <__mcmp>:
 8004498:	b430      	push	{r4, r5}
 800449a:	690a      	ldr	r2, [r1, #16]
 800449c:	4605      	mov	r5, r0
 800449e:	6900      	ldr	r0, [r0, #16]
 80044a0:	1a80      	subs	r0, r0, r2
 80044a2:	d110      	bne.n	80044c6 <__mcmp+0x2e>
 80044a4:	0092      	lsls	r2, r2, #2
 80044a6:	3514      	adds	r5, #20
 80044a8:	3114      	adds	r1, #20
 80044aa:	18ab      	adds	r3, r5, r2
 80044ac:	4411      	add	r1, r2
 80044ae:	e001      	b.n	80044b4 <__mcmp+0x1c>
 80044b0:	429d      	cmp	r5, r3
 80044b2:	d208      	bcs.n	80044c6 <__mcmp+0x2e>
 80044b4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80044b8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80044bc:	4294      	cmp	r4, r2
 80044be:	d0f7      	beq.n	80044b0 <__mcmp+0x18>
 80044c0:	d203      	bcs.n	80044ca <__mcmp+0x32>
 80044c2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80044c6:	bc30      	pop	{r4, r5}
 80044c8:	4770      	bx	lr
 80044ca:	2001      	movs	r0, #1
 80044cc:	bc30      	pop	{r4, r5}
 80044ce:	4770      	bx	lr

080044d0 <__mdiff>:
 80044d0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80044d4:	4617      	mov	r7, r2
 80044d6:	690e      	ldr	r6, [r1, #16]
 80044d8:	6912      	ldr	r2, [r2, #16]
 80044da:	460d      	mov	r5, r1
 80044dc:	1ab6      	subs	r6, r6, r2
 80044de:	2e00      	cmp	r6, #0
 80044e0:	d16b      	bne.n	80045ba <__mdiff+0xea>
 80044e2:	0092      	lsls	r2, r2, #2
 80044e4:	f101 0c14 	add.w	ip, r1, #20
 80044e8:	f107 0114 	add.w	r1, r7, #20
 80044ec:	eb0c 0302 	add.w	r3, ip, r2
 80044f0:	4411      	add	r1, r2
 80044f2:	e001      	b.n	80044f8 <__mdiff+0x28>
 80044f4:	459c      	cmp	ip, r3
 80044f6:	d263      	bcs.n	80045c0 <__mdiff+0xf0>
 80044f8:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 80044fc:	f851 4d04 	ldr.w	r4, [r1, #-4]!
 8004500:	42a2      	cmp	r2, r4
 8004502:	d0f7      	beq.n	80044f4 <__mdiff+0x24>
 8004504:	d354      	bcc.n	80045b0 <__mdiff+0xe0>
 8004506:	6869      	ldr	r1, [r5, #4]
 8004508:	f7ff fd26 	bl	8003f58 <_Balloc>
 800450c:	2800      	cmp	r0, #0
 800450e:	d061      	beq.n	80045d4 <__mdiff+0x104>
 8004510:	f8d5 8010 	ldr.w	r8, [r5, #16]
 8004514:	f107 0e14 	add.w	lr, r7, #20
 8004518:	693b      	ldr	r3, [r7, #16]
 800451a:	3514      	adds	r5, #20
 800451c:	60c6      	str	r6, [r0, #12]
 800451e:	f100 0714 	add.w	r7, r0, #20
 8004522:	eb05 0988 	add.w	r9, r5, r8, lsl #2
 8004526:	f04f 0b00 	mov.w	fp, #0
 800452a:	eb0e 0a83 	add.w	sl, lr, r3, lsl #2
 800452e:	e000      	b.n	8004532 <__mdiff+0x62>
 8004530:	4637      	mov	r7, r6
 8004532:	f855 2b04 	ldr.w	r2, [r5], #4
 8004536:	463e      	mov	r6, r7
 8004538:	f85e 1b04 	ldr.w	r1, [lr], #4
 800453c:	b294      	uxth	r4, r2
 800453e:	46ac      	mov	ip, r5
 8004540:	b28b      	uxth	r3, r1
 8004542:	45f2      	cmp	sl, lr
 8004544:	445c      	add	r4, fp
 8004546:	ea4f 4111 	mov.w	r1, r1, lsr #16
 800454a:	eba4 0403 	sub.w	r4, r4, r3
 800454e:	ebc1 4112 	rsb	r1, r1, r2, lsr #16
 8004552:	b2a3      	uxth	r3, r4
 8004554:	eb01 4124 	add.w	r1, r1, r4, asr #16
 8004558:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800455c:	ea4f 4b21 	mov.w	fp, r1, asr #16
 8004560:	f846 3b04 	str.w	r3, [r6], #4
 8004564:	d8e4      	bhi.n	8004530 <__mdiff+0x60>
 8004566:	45a9      	cmp	r9, r5
 8004568:	d917      	bls.n	800459a <__mdiff+0xca>
 800456a:	4632      	mov	r2, r6
 800456c:	f85c 1b04 	ldr.w	r1, [ip], #4
 8004570:	b28c      	uxth	r4, r1
 8004572:	45e1      	cmp	r9, ip
 8004574:	445c      	add	r4, fp
 8004576:	ea4f 4b24 	mov.w	fp, r4, asr #16
 800457a:	b2a3      	uxth	r3, r4
 800457c:	eb0b 4411 	add.w	r4, fp, r1, lsr #16
 8004580:	ea43 4304 	orr.w	r3, r3, r4, lsl #16
 8004584:	ea4f 4b24 	mov.w	fp, r4, asr #16
 8004588:	f842 3b04 	str.w	r3, [r2], #4
 800458c:	d8ee      	bhi.n	800456c <__mdiff+0x9c>
 800458e:	f109 37ff 	add.w	r7, r9, #4294967295	; 0xffffffff
 8004592:	1b7f      	subs	r7, r7, r5
 8004594:	f027 0703 	bic.w	r7, r7, #3
 8004598:	4437      	add	r7, r6
 800459a:	b92b      	cbnz	r3, 80045a8 <__mdiff+0xd8>
 800459c:	f857 3d04 	ldr.w	r3, [r7, #-4]!
 80045a0:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80045a4:	2b00      	cmp	r3, #0
 80045a6:	d0f9      	beq.n	800459c <__mdiff+0xcc>
 80045a8:	f8c0 8010 	str.w	r8, [r0, #16]
 80045ac:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045b0:	462b      	mov	r3, r5
 80045b2:	2601      	movs	r6, #1
 80045b4:	463d      	mov	r5, r7
 80045b6:	461f      	mov	r7, r3
 80045b8:	e7a5      	b.n	8004506 <__mdiff+0x36>
 80045ba:	dbf9      	blt.n	80045b0 <__mdiff+0xe0>
 80045bc:	2600      	movs	r6, #0
 80045be:	e7a2      	b.n	8004506 <__mdiff+0x36>
 80045c0:	2100      	movs	r1, #0
 80045c2:	f7ff fcc9 	bl	8003f58 <_Balloc>
 80045c6:	b160      	cbz	r0, 80045e2 <__mdiff+0x112>
 80045c8:	2201      	movs	r2, #1
 80045ca:	2300      	movs	r3, #0
 80045cc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80045d0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045d4:	4602      	mov	r2, r0
 80045d6:	4b06      	ldr	r3, [pc, #24]	; (80045f0 <__mdiff+0x120>)
 80045d8:	f44f 7110 	mov.w	r1, #576	; 0x240
 80045dc:	4805      	ldr	r0, [pc, #20]	; (80045f4 <__mdiff+0x124>)
 80045de:	f001 f8bf 	bl	8005760 <__assert_func>
 80045e2:	4602      	mov	r2, r0
 80045e4:	4b02      	ldr	r3, [pc, #8]	; (80045f0 <__mdiff+0x120>)
 80045e6:	f240 2132 	movw	r1, #562	; 0x232
 80045ea:	4802      	ldr	r0, [pc, #8]	; (80045f4 <__mdiff+0x124>)
 80045ec:	f001 f8b8 	bl	8005760 <__assert_func>
 80045f0:	0800add8 	.word	0x0800add8
 80045f4:	0800ae20 	.word	0x0800ae20

080045f8 <__ulp>:
 80045f8:	4b0f      	ldr	r3, [pc, #60]	; (8004638 <__ulp+0x40>)
 80045fa:	400b      	ands	r3, r1
 80045fc:	f1a3 7350 	sub.w	r3, r3, #54525952	; 0x3400000
 8004600:	2b00      	cmp	r3, #0
 8004602:	dd02      	ble.n	800460a <__ulp+0x12>
 8004604:	2000      	movs	r0, #0
 8004606:	4619      	mov	r1, r3
 8004608:	4770      	bx	lr
 800460a:	425b      	negs	r3, r3
 800460c:	151b      	asrs	r3, r3, #20
 800460e:	2b13      	cmp	r3, #19
 8004610:	dc05      	bgt.n	800461e <__ulp+0x26>
 8004612:	f44f 2200 	mov.w	r2, #524288	; 0x80000
 8004616:	2000      	movs	r0, #0
 8004618:	fa42 f103 	asr.w	r1, r2, r3
 800461c:	4770      	bx	lr
 800461e:	3b14      	subs	r3, #20
 8004620:	2100      	movs	r1, #0
 8004622:	2b1e      	cmp	r3, #30
 8004624:	dd02      	ble.n	800462c <__ulp+0x34>
 8004626:	2301      	movs	r3, #1
 8004628:	4618      	mov	r0, r3
 800462a:	4770      	bx	lr
 800462c:	f04f 4200 	mov.w	r2, #2147483648	; 0x80000000
 8004630:	fa22 f303 	lsr.w	r3, r2, r3
 8004634:	4618      	mov	r0, r3
 8004636:	4770      	bx	lr
 8004638:	7ff00000 	.word	0x7ff00000

0800463c <__b2d>:
 800463c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8004640:	6906      	ldr	r6, [r0, #16]
 8004642:	f100 0814 	add.w	r8, r0, #20
 8004646:	eb08 0686 	add.w	r6, r8, r6, lsl #2
 800464a:	f856 9c04 	ldr.w	r9, [r6, #-4]
 800464e:	1f37      	subs	r7, r6, #4
 8004650:	4648      	mov	r0, r9
 8004652:	f7ff fd5b 	bl	800410c <__hi0bits>
 8004656:	f1c0 0220 	rsb	r2, r0, #32
 800465a:	280a      	cmp	r0, #10
 800465c:	600a      	str	r2, [r1, #0]
 800465e:	dd34      	ble.n	80046ca <__b2d+0x8e>
 8004660:	45b8      	cmp	r8, r7
 8004662:	f1a0 000b 	sub.w	r0, r0, #11
 8004666:	d21c      	bcs.n	80046a2 <__b2d+0x66>
 8004668:	f856 2c08 	ldr.w	r2, [r6, #-8]
 800466c:	b320      	cbz	r0, 80046b8 <__b2d+0x7c>
 800466e:	f1c0 0720 	rsb	r7, r0, #32
 8004672:	fa09 f300 	lsl.w	r3, r9, r0
 8004676:	fa02 f000 	lsl.w	r0, r2, r0
 800467a:	f1a6 0108 	sub.w	r1, r6, #8
 800467e:	40fa      	lsrs	r2, r7
 8004680:	4588      	cmp	r8, r1
 8004682:	ea42 0203 	orr.w	r2, r2, r3
 8004686:	f042 557f 	orr.w	r5, r2, #1069547520	; 0x3fc00000
 800468a:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 800468e:	d203      	bcs.n	8004698 <__b2d+0x5c>
 8004690:	f856 3c0c 	ldr.w	r3, [r6, #-12]
 8004694:	40fb      	lsrs	r3, r7
 8004696:	4318      	orrs	r0, r3
 8004698:	4604      	mov	r4, r0
 800469a:	4620      	mov	r0, r4
 800469c:	4629      	mov	r1, r5
 800469e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80046a2:	b140      	cbz	r0, 80046b6 <__b2d+0x7a>
 80046a4:	fa09 f300 	lsl.w	r3, r9, r0
 80046a8:	2000      	movs	r0, #0
 80046aa:	f043 557f 	orr.w	r5, r3, #1069547520	; 0x3fc00000
 80046ae:	4604      	mov	r4, r0
 80046b0:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 80046b4:	e7f1      	b.n	800469a <__b2d+0x5e>
 80046b6:	4602      	mov	r2, r0
 80046b8:	f049 557f 	orr.w	r5, r9, #1069547520	; 0x3fc00000
 80046bc:	4614      	mov	r4, r2
 80046be:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 80046c2:	4620      	mov	r0, r4
 80046c4:	4629      	mov	r1, r5
 80046c6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80046ca:	f1c0 030b 	rsb	r3, r0, #11
 80046ce:	45b8      	cmp	r8, r7
 80046d0:	fa29 f203 	lsr.w	r2, r9, r3
 80046d4:	f042 557f 	orr.w	r5, r2, #1069547520	; 0x3fc00000
 80046d8:	f445 1540 	orr.w	r5, r5, #3145728	; 0x300000
 80046dc:	d30a      	bcc.n	80046f4 <__b2d+0xb8>
 80046de:	2200      	movs	r2, #0
 80046e0:	f100 0315 	add.w	r3, r0, #21
 80046e4:	4629      	mov	r1, r5
 80046e6:	fa09 f303 	lsl.w	r3, r9, r3
 80046ea:	ea43 0402 	orr.w	r4, r3, r2
 80046ee:	4620      	mov	r0, r4
 80046f0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80046f4:	f856 2c08 	ldr.w	r2, [r6, #-8]
 80046f8:	40da      	lsrs	r2, r3
 80046fa:	e7f1      	b.n	80046e0 <__b2d+0xa4>

080046fc <__d2b>:
 80046fc:	b570      	push	{r4, r5, r6, lr}
 80046fe:	2101      	movs	r1, #1
 8004700:	b082      	sub	sp, #8
 8004702:	4616      	mov	r6, r2
 8004704:	461c      	mov	r4, r3
 8004706:	f7ff fc27 	bl	8003f58 <_Balloc>
 800470a:	4605      	mov	r5, r0
 800470c:	2800      	cmp	r0, #0
 800470e:	d04c      	beq.n	80047aa <__d2b+0xae>
 8004710:	4623      	mov	r3, r4
 8004712:	f3c4 540a 	ubfx	r4, r4, #20, #11
 8004716:	f3c3 0313 	ubfx	r3, r3, #0, #20
 800471a:	b10c      	cbz	r4, 8004720 <__d2b+0x24>
 800471c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8004720:	2e00      	cmp	r6, #0
 8004722:	9301      	str	r3, [sp, #4]
 8004724:	d022      	beq.n	800476c <__d2b+0x70>
 8004726:	4668      	mov	r0, sp
 8004728:	9600      	str	r6, [sp, #0]
 800472a:	f7ff fd11 	bl	8004150 <__lo0bits>
 800472e:	2800      	cmp	r0, #0
 8004730:	d037      	beq.n	80047a2 <__d2b+0xa6>
 8004732:	9b01      	ldr	r3, [sp, #4]
 8004734:	f1c0 0220 	rsb	r2, r0, #32
 8004738:	9900      	ldr	r1, [sp, #0]
 800473a:	fa03 f202 	lsl.w	r2, r3, r2
 800473e:	40c3      	lsrs	r3, r0
 8004740:	430a      	orrs	r2, r1
 8004742:	9301      	str	r3, [sp, #4]
 8004744:	616a      	str	r2, [r5, #20]
 8004746:	2b00      	cmp	r3, #0
 8004748:	61ab      	str	r3, [r5, #24]
 800474a:	bf14      	ite	ne
 800474c:	2102      	movne	r1, #2
 800474e:	2101      	moveq	r1, #1
 8004750:	6129      	str	r1, [r5, #16]
 8004752:	b1b4      	cbz	r4, 8004782 <__d2b+0x86>
 8004754:	f2a4 4433 	subw	r4, r4, #1075	; 0x433
 8004758:	9a06      	ldr	r2, [sp, #24]
 800475a:	f1c0 0335 	rsb	r3, r0, #53	; 0x35
 800475e:	4404      	add	r4, r0
 8004760:	4628      	mov	r0, r5
 8004762:	6014      	str	r4, [r2, #0]
 8004764:	9a07      	ldr	r2, [sp, #28]
 8004766:	6013      	str	r3, [r2, #0]
 8004768:	b002      	add	sp, #8
 800476a:	bd70      	pop	{r4, r5, r6, pc}
 800476c:	a801      	add	r0, sp, #4
 800476e:	f7ff fcef 	bl	8004150 <__lo0bits>
 8004772:	2301      	movs	r3, #1
 8004774:	9a01      	ldr	r2, [sp, #4]
 8004776:	3020      	adds	r0, #32
 8004778:	4619      	mov	r1, r3
 800477a:	e9c5 3204 	strd	r3, r2, [r5, #16]
 800477e:	2c00      	cmp	r4, #0
 8004780:	d1e8      	bne.n	8004754 <__d2b+0x58>
 8004782:	eb05 0381 	add.w	r3, r5, r1, lsl #2
 8004786:	9a06      	ldr	r2, [sp, #24]
 8004788:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800478c:	6010      	str	r0, [r2, #0]
 800478e:	6918      	ldr	r0, [r3, #16]
 8004790:	f7ff fcbc 	bl	800410c <__hi0bits>
 8004794:	9b07      	ldr	r3, [sp, #28]
 8004796:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800479a:	6018      	str	r0, [r3, #0]
 800479c:	4628      	mov	r0, r5
 800479e:	b002      	add	sp, #8
 80047a0:	bd70      	pop	{r4, r5, r6, pc}
 80047a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047a6:	616a      	str	r2, [r5, #20]
 80047a8:	e7cd      	b.n	8004746 <__d2b+0x4a>
 80047aa:	4602      	mov	r2, r0
 80047ac:	4b02      	ldr	r3, [pc, #8]	; (80047b8 <__d2b+0xbc>)
 80047ae:	f240 310a 	movw	r1, #778	; 0x30a
 80047b2:	4802      	ldr	r0, [pc, #8]	; (80047bc <__d2b+0xc0>)
 80047b4:	f000 ffd4 	bl	8005760 <__assert_func>
 80047b8:	0800add8 	.word	0x0800add8
 80047bc:	0800ae20 	.word	0x0800ae20

080047c0 <__ratio>:
 80047c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80047c4:	b082      	sub	sp, #8
 80047c6:	468a      	mov	sl, r1
 80047c8:	4680      	mov	r8, r0
 80047ca:	4669      	mov	r1, sp
 80047cc:	f7ff ff36 	bl	800463c <__b2d>
 80047d0:	4604      	mov	r4, r0
 80047d2:	460d      	mov	r5, r1
 80047d4:	4650      	mov	r0, sl
 80047d6:	a901      	add	r1, sp, #4
 80047d8:	f7ff ff30 	bl	800463c <__b2d>
 80047dc:	f8d8 2010 	ldr.w	r2, [r8, #16]
 80047e0:	4606      	mov	r6, r0
 80047e2:	460f      	mov	r7, r1
 80047e4:	f8da 0010 	ldr.w	r0, [sl, #16]
 80047e8:	e9dd 1300 	ldrd	r1, r3, [sp]
 80047ec:	1a12      	subs	r2, r2, r0
 80047ee:	1acb      	subs	r3, r1, r3
 80047f0:	eb03 1342 	add.w	r3, r3, r2, lsl #5
 80047f4:	2b00      	cmp	r3, #0
 80047f6:	dd0b      	ble.n	8004810 <__ratio+0x50>
 80047f8:	eb05 5903 	add.w	r9, r5, r3, lsl #20
 80047fc:	464d      	mov	r5, r9
 80047fe:	4632      	mov	r2, r6
 8004800:	463b      	mov	r3, r7
 8004802:	4620      	mov	r0, r4
 8004804:	4629      	mov	r1, r5
 8004806:	f002 fa07 	bl	8006c18 <__aeabi_ddiv>
 800480a:	b002      	add	sp, #8
 800480c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8004810:	ebc3 3303 	rsb	r3, r3, r3, lsl #12
 8004814:	eb07 5103 	add.w	r1, r7, r3, lsl #20
 8004818:	460f      	mov	r7, r1
 800481a:	e7f0      	b.n	80047fe <__ratio+0x3e>

0800481c <_mprec_log10>:
 800481c:	2817      	cmp	r0, #23
 800481e:	b5d0      	push	{r4, r6, r7, lr}
 8004820:	4604      	mov	r4, r0
 8004822:	dd0a      	ble.n	800483a <_mprec_log10+0x1e>
 8004824:	2000      	movs	r0, #0
 8004826:	4908      	ldr	r1, [pc, #32]	; (8004848 <_mprec_log10+0x2c>)
 8004828:	2600      	movs	r6, #0
 800482a:	4f08      	ldr	r7, [pc, #32]	; (800484c <_mprec_log10+0x30>)
 800482c:	4632      	mov	r2, r6
 800482e:	463b      	mov	r3, r7
 8004830:	f002 f8c8 	bl	80069c4 <__aeabi_dmul>
 8004834:	3c01      	subs	r4, #1
 8004836:	d1f9      	bne.n	800482c <_mprec_log10+0x10>
 8004838:	bdd0      	pop	{r4, r6, r7, pc}
 800483a:	4b05      	ldr	r3, [pc, #20]	; (8004850 <_mprec_log10+0x34>)
 800483c:	eb03 04c0 	add.w	r4, r3, r0, lsl #3
 8004840:	e9d4 0104 	ldrd	r0, r1, [r4, #16]
 8004844:	bdd0      	pop	{r4, r6, r7, pc}
 8004846:	bf00      	nop
 8004848:	3ff00000 	.word	0x3ff00000
 800484c:	40240000 	.word	0x40240000
 8004850:	0800aab8 	.word	0x0800aab8

08004854 <__copybits>:
 8004854:	3901      	subs	r1, #1
 8004856:	f102 0314 	add.w	r3, r2, #20
 800485a:	b470      	push	{r4, r5, r6}
 800485c:	114e      	asrs	r6, r1, #5
 800485e:	6911      	ldr	r1, [r2, #16]
 8004860:	eb03 0181 	add.w	r1, r3, r1, lsl #2
 8004864:	3601      	adds	r6, #1
 8004866:	428b      	cmp	r3, r1
 8004868:	eb00 0686 	add.w	r6, r0, r6, lsl #2
 800486c:	d20c      	bcs.n	8004888 <__copybits+0x34>
 800486e:	1f04      	subs	r4, r0, #4
 8004870:	f853 5b04 	ldr.w	r5, [r3], #4
 8004874:	4299      	cmp	r1, r3
 8004876:	f844 5f04 	str.w	r5, [r4, #4]!
 800487a:	d8f9      	bhi.n	8004870 <__copybits+0x1c>
 800487c:	1a8b      	subs	r3, r1, r2
 800487e:	3b15      	subs	r3, #21
 8004880:	f023 0303 	bic.w	r3, r3, #3
 8004884:	3304      	adds	r3, #4
 8004886:	4418      	add	r0, r3
 8004888:	4286      	cmp	r6, r0
 800488a:	d904      	bls.n	8004896 <__copybits+0x42>
 800488c:	2300      	movs	r3, #0
 800488e:	f840 3b04 	str.w	r3, [r0], #4
 8004892:	4286      	cmp	r6, r0
 8004894:	d8fb      	bhi.n	800488e <__copybits+0x3a>
 8004896:	bc70      	pop	{r4, r5, r6}
 8004898:	4770      	bx	lr
 800489a:	bf00      	nop

0800489c <__any_on>:
 800489c:	6903      	ldr	r3, [r0, #16]
 800489e:	114a      	asrs	r2, r1, #5
 80048a0:	4293      	cmp	r3, r2
 80048a2:	b410      	push	{r4}
 80048a4:	f100 0414 	add.w	r4, r0, #20
 80048a8:	da0f      	bge.n	80048ca <__any_on+0x2e>
 80048aa:	eb04 0383 	add.w	r3, r4, r3, lsl #2
 80048ae:	429c      	cmp	r4, r3
 80048b0:	d21c      	bcs.n	80048ec <__any_on+0x50>
 80048b2:	f853 0c04 	ldr.w	r0, [r3, #-4]
 80048b6:	3b04      	subs	r3, #4
 80048b8:	b118      	cbz	r0, 80048c2 <__any_on+0x26>
 80048ba:	e014      	b.n	80048e6 <__any_on+0x4a>
 80048bc:	f853 2d04 	ldr.w	r2, [r3, #-4]!
 80048c0:	b98a      	cbnz	r2, 80048e6 <__any_on+0x4a>
 80048c2:	429c      	cmp	r4, r3
 80048c4:	d3fa      	bcc.n	80048bc <__any_on+0x20>
 80048c6:	bc10      	pop	{r4}
 80048c8:	4770      	bx	lr
 80048ca:	eb04 0382 	add.w	r3, r4, r2, lsl #2
 80048ce:	ddee      	ble.n	80048ae <__any_on+0x12>
 80048d0:	f011 011f 	ands.w	r1, r1, #31
 80048d4:	d0eb      	beq.n	80048ae <__any_on+0x12>
 80048d6:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
 80048da:	fa20 f201 	lsr.w	r2, r0, r1
 80048de:	fa02 f101 	lsl.w	r1, r2, r1
 80048e2:	4288      	cmp	r0, r1
 80048e4:	d0e3      	beq.n	80048ae <__any_on+0x12>
 80048e6:	2001      	movs	r0, #1
 80048e8:	bc10      	pop	{r4}
 80048ea:	4770      	bx	lr
 80048ec:	2000      	movs	r0, #0
 80048ee:	e7ea      	b.n	80048c6 <__any_on+0x2a>

080048f0 <_sbrk_r>:
 80048f0:	b538      	push	{r3, r4, r5, lr}
 80048f2:	2300      	movs	r3, #0
 80048f4:	4c06      	ldr	r4, [pc, #24]	; (8004910 <_sbrk_r+0x20>)
 80048f6:	4605      	mov	r5, r0
 80048f8:	4608      	mov	r0, r1
 80048fa:	6023      	str	r3, [r4, #0]
 80048fc:	f002 fd9c 	bl	8007438 <_sbrk>
 8004900:	1c43      	adds	r3, r0, #1
 8004902:	d000      	beq.n	8004906 <_sbrk_r+0x16>
 8004904:	bd38      	pop	{r3, r4, r5, pc}
 8004906:	6823      	ldr	r3, [r4, #0]
 8004908:	2b00      	cmp	r3, #0
 800490a:	d0fb      	beq.n	8004904 <_sbrk_r+0x14>
 800490c:	602b      	str	r3, [r5, #0]
 800490e:	bd38      	pop	{r3, r4, r5, pc}
 8004910:	20000b2c 	.word	0x20000b2c

08004914 <__sread>:
 8004914:	b510      	push	{r4, lr}
 8004916:	460c      	mov	r4, r1
 8004918:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800491c:	f001 fafe 	bl	8005f1c <_read_r>
 8004920:	2800      	cmp	r0, #0
 8004922:	db03      	blt.n	800492c <__sread+0x18>
 8004924:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8004926:	4403      	add	r3, r0
 8004928:	6523      	str	r3, [r4, #80]	; 0x50
 800492a:	bd10      	pop	{r4, pc}
 800492c:	89a3      	ldrh	r3, [r4, #12]
 800492e:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8004932:	81a3      	strh	r3, [r4, #12]
 8004934:	bd10      	pop	{r4, pc}
 8004936:	bf00      	nop

08004938 <__seofread>:
 8004938:	2000      	movs	r0, #0
 800493a:	4770      	bx	lr

0800493c <__swrite>:
 800493c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004940:	461f      	mov	r7, r3
 8004942:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004946:	4616      	mov	r6, r2
 8004948:	460c      	mov	r4, r1
 800494a:	05da      	lsls	r2, r3, #23
 800494c:	4605      	mov	r5, r0
 800494e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8004952:	d409      	bmi.n	8004968 <__swrite+0x2c>
 8004954:	f423 5080 	bic.w	r0, r3, #4096	; 0x1000
 8004958:	4632      	mov	r2, r6
 800495a:	463b      	mov	r3, r7
 800495c:	81a0      	strh	r0, [r4, #12]
 800495e:	4628      	mov	r0, r5
 8004960:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8004964:	f000 bee6 	b.w	8005734 <_write_r>
 8004968:	2302      	movs	r3, #2
 800496a:	2200      	movs	r2, #0
 800496c:	f001 fa38 	bl	8005de0 <_lseek_r>
 8004970:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004974:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8004978:	e7ec      	b.n	8004954 <__swrite+0x18>
 800497a:	bf00      	nop

0800497c <__sseek>:
 800497c:	b510      	push	{r4, lr}
 800497e:	460c      	mov	r4, r1
 8004980:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8004984:	f001 fa2c 	bl	8005de0 <_lseek_r>
 8004988:	1c42      	adds	r2, r0, #1
 800498a:	89a3      	ldrh	r3, [r4, #12]
 800498c:	d004      	beq.n	8004998 <__sseek+0x1c>
 800498e:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
 8004992:	6520      	str	r0, [r4, #80]	; 0x50
 8004994:	81a3      	strh	r3, [r4, #12]
 8004996:	bd10      	pop	{r4, pc}
 8004998:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800499c:	81a3      	strh	r3, [r4, #12]
 800499e:	bd10      	pop	{r4, pc}

080049a0 <__sclose>:
 80049a0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80049a4:	f000 bf30 	b.w	8005808 <_close_r>

080049a8 <strlen>:
 80049a8:	f020 0103 	bic.w	r1, r0, #3
 80049ac:	f010 0003 	ands.w	r0, r0, #3
 80049b0:	f1c0 0000 	rsb	r0, r0, #0
 80049b4:	f851 3b04 	ldr.w	r3, [r1], #4
 80049b8:	f100 0c04 	add.w	ip, r0, #4
 80049bc:	ea4f 0ccc 	mov.w	ip, ip, lsl #3
 80049c0:	f06f 0200 	mvn.w	r2, #0
 80049c4:	bf1c      	itt	ne
 80049c6:	fa22 f20c 	lsrne.w	r2, r2, ip
 80049ca:	4313      	orrne	r3, r2
 80049cc:	f04f 0c01 	mov.w	ip, #1
 80049d0:	ea4c 2c0c 	orr.w	ip, ip, ip, lsl #8
 80049d4:	ea4c 4c0c 	orr.w	ip, ip, ip, lsl #16
 80049d8:	eba3 020c 	sub.w	r2, r3, ip
 80049dc:	ea22 0203 	bic.w	r2, r2, r3
 80049e0:	ea12 12cc 	ands.w	r2, r2, ip, lsl #7
 80049e4:	bf04      	itt	eq
 80049e6:	f851 3b04 	ldreq.w	r3, [r1], #4
 80049ea:	3004      	addeq	r0, #4
 80049ec:	d0f4      	beq.n	80049d8 <strlen+0x30>
 80049ee:	f1c2 0100 	rsb	r1, r2, #0
 80049f2:	ea02 0201 	and.w	r2, r2, r1
 80049f6:	fab2 f282 	clz	r2, r2
 80049fa:	f1c2 021f 	rsb	r2, r2, #31
 80049fe:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8004a02:	4770      	bx	lr

08004a04 <__sprint_r.part.0>:
 8004a04:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a08:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8004a0a:	4693      	mov	fp, r2
 8004a0c:	049c      	lsls	r4, r3, #18
 8004a0e:	d52c      	bpl.n	8004a6a <__sprint_r.part.0+0x66>
 8004a10:	6893      	ldr	r3, [r2, #8]
 8004a12:	6812      	ldr	r2, [r2, #0]
 8004a14:	b33b      	cbz	r3, 8004a66 <__sprint_r.part.0+0x62>
 8004a16:	460e      	mov	r6, r1
 8004a18:	4607      	mov	r7, r0
 8004a1a:	f102 0908 	add.w	r9, r2, #8
 8004a1e:	e959 5a02 	ldrd	r5, sl, [r9, #-8]
 8004a22:	ea5f 089a 	movs.w	r8, sl, lsr #2
 8004a26:	d014      	beq.n	8004a52 <__sprint_r.part.0+0x4e>
 8004a28:	3d04      	subs	r5, #4
 8004a2a:	2400      	movs	r4, #0
 8004a2c:	e001      	b.n	8004a32 <__sprint_r.part.0+0x2e>
 8004a2e:	45a0      	cmp	r8, r4
 8004a30:	d00d      	beq.n	8004a4e <__sprint_r.part.0+0x4a>
 8004a32:	4632      	mov	r2, r6
 8004a34:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8004a38:	4638      	mov	r0, r7
 8004a3a:	3401      	adds	r4, #1
 8004a3c:	f000 ffb6 	bl	80059ac <_fputwc_r>
 8004a40:	1c43      	adds	r3, r0, #1
 8004a42:	d1f4      	bne.n	8004a2e <__sprint_r.part.0+0x2a>
 8004a44:	2300      	movs	r3, #0
 8004a46:	e9cb 3301 	strd	r3, r3, [fp, #4]
 8004a4a:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a4e:	f8db 3008 	ldr.w	r3, [fp, #8]
 8004a52:	f02a 0a03 	bic.w	sl, sl, #3
 8004a56:	f109 0908 	add.w	r9, r9, #8
 8004a5a:	eba3 030a 	sub.w	r3, r3, sl
 8004a5e:	f8cb 3008 	str.w	r3, [fp, #8]
 8004a62:	2b00      	cmp	r3, #0
 8004a64:	d1db      	bne.n	8004a1e <__sprint_r.part.0+0x1a>
 8004a66:	2000      	movs	r0, #0
 8004a68:	e7ec      	b.n	8004a44 <__sprint_r.part.0+0x40>
 8004a6a:	f000 ffe5 	bl	8005a38 <__sfvwrite_r>
 8004a6e:	2300      	movs	r3, #0
 8004a70:	e9cb 3301 	strd	r3, r3, [fp, #4]
 8004a74:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004a78 <__sprint_r>:
 8004a78:	6893      	ldr	r3, [r2, #8]
 8004a7a:	b103      	cbz	r3, 8004a7e <__sprint_r+0x6>
 8004a7c:	e7c2      	b.n	8004a04 <__sprint_r.part.0>
 8004a7e:	b410      	push	{r4}
 8004a80:	4618      	mov	r0, r3
 8004a82:	6053      	str	r3, [r2, #4]
 8004a84:	bc10      	pop	{r4}
 8004a86:	4770      	bx	lr

08004a88 <_vfiprintf_r>:
 8004a88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004a8c:	b0af      	sub	sp, #188	; 0xbc
 8004a8e:	461c      	mov	r4, r3
 8004a90:	4692      	mov	sl, r2
 8004a92:	9104      	str	r1, [sp, #16]
 8004a94:	e9cd 3005 	strd	r3, r0, [sp, #20]
 8004a98:	b118      	cbz	r0, 8004aa2 <_vfiprintf_r+0x1a>
 8004a9a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004a9c:	2b00      	cmp	r3, #0
 8004a9e:	f000 8307 	beq.w	80050b0 <_vfiprintf_r+0x628>
 8004aa2:	9804      	ldr	r0, [sp, #16]
 8004aa4:	f9b0 100c 	ldrsh.w	r1, [r0, #12]
 8004aa8:	b28a      	uxth	r2, r1
 8004aaa:	0495      	lsls	r5, r2, #18
 8004aac:	d407      	bmi.n	8004abe <_vfiprintf_r+0x36>
 8004aae:	f441 5100 	orr.w	r1, r1, #8192	; 0x2000
 8004ab2:	6e43      	ldr	r3, [r0, #100]	; 0x64
 8004ab4:	b28a      	uxth	r2, r1
 8004ab6:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8004aba:	8181      	strh	r1, [r0, #12]
 8004abc:	6643      	str	r3, [r0, #100]	; 0x64
 8004abe:	0711      	lsls	r1, r2, #28
 8004ac0:	f140 80c8 	bpl.w	8004c54 <_vfiprintf_r+0x1cc>
 8004ac4:	9b04      	ldr	r3, [sp, #16]
 8004ac6:	691b      	ldr	r3, [r3, #16]
 8004ac8:	2b00      	cmp	r3, #0
 8004aca:	f000 80c3 	beq.w	8004c54 <_vfiprintf_r+0x1cc>
 8004ace:	f002 021a 	and.w	r2, r2, #26
 8004ad2:	2a0a      	cmp	r2, #10
 8004ad4:	f000 80cc 	beq.w	8004c70 <_vfiprintf_r+0x1e8>
 8004ad8:	f10d 0978 	add.w	r9, sp, #120	; 0x78
 8004adc:	2300      	movs	r3, #0
 8004ade:	46c8      	mov	r8, r9
 8004ae0:	930a      	str	r3, [sp, #40]	; 0x28
 8004ae2:	9313      	str	r3, [sp, #76]	; 0x4c
 8004ae4:	9303      	str	r3, [sp, #12]
 8004ae6:	e9cd 9311 	strd	r9, r3, [sp, #68]	; 0x44
 8004aea:	f89a 3000 	ldrb.w	r3, [sl]
 8004aee:	2b00      	cmp	r3, #0
 8004af0:	f000 8236 	beq.w	8004f60 <_vfiprintf_r+0x4d8>
 8004af4:	2b25      	cmp	r3, #37	; 0x25
 8004af6:	f000 8233 	beq.w	8004f60 <_vfiprintf_r+0x4d8>
 8004afa:	4654      	mov	r4, sl
 8004afc:	e000      	b.n	8004b00 <_vfiprintf_r+0x78>
 8004afe:	462c      	mov	r4, r5
 8004b00:	7863      	ldrb	r3, [r4, #1]
 8004b02:	1c65      	adds	r5, r4, #1
 8004b04:	b10b      	cbz	r3, 8004b0a <_vfiprintf_r+0x82>
 8004b06:	2b25      	cmp	r3, #37	; 0x25
 8004b08:	d1f9      	bne.n	8004afe <_vfiprintf_r+0x76>
 8004b0a:	ebb5 060a 	subs.w	r6, r5, sl
 8004b0e:	d012      	beq.n	8004b36 <_vfiprintf_r+0xae>
 8004b10:	f8c8 a000 	str.w	sl, [r8]
 8004b14:	f8c8 6004 	str.w	r6, [r8, #4]
 8004b18:	e9dd 3212 	ldrd	r3, r2, [sp, #72]	; 0x48
 8004b1c:	3301      	adds	r3, #1
 8004b1e:	4432      	add	r2, r6
 8004b20:	2b07      	cmp	r3, #7
 8004b22:	e9cd 3212 	strd	r3, r2, [sp, #72]	; 0x48
 8004b26:	f300 80b1 	bgt.w	8004c8c <_vfiprintf_r+0x204>
 8004b2a:	f108 0808 	add.w	r8, r8, #8
 8004b2e:	9b03      	ldr	r3, [sp, #12]
 8004b30:	4433      	add	r3, r6
 8004b32:	9303      	str	r3, [sp, #12]
 8004b34:	7863      	ldrb	r3, [r4, #1]
 8004b36:	2b00      	cmp	r3, #0
 8004b38:	f000 80b3 	beq.w	8004ca2 <_vfiprintf_r+0x21a>
 8004b3c:	2100      	movs	r1, #0
 8004b3e:	f04f 0300 	mov.w	r3, #0
 8004b42:	f105 0a01 	add.w	sl, r5, #1
 8004b46:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004b4a:	f88d 303f 	strb.w	r3, [sp, #63]	; 0x3f
 8004b4e:	4608      	mov	r0, r1
 8004b50:	786b      	ldrb	r3, [r5, #1]
 8004b52:	468b      	mov	fp, r1
 8004b54:	460d      	mov	r5, r1
 8004b56:	f10a 0a01 	add.w	sl, sl, #1
 8004b5a:	f1a3 0220 	sub.w	r2, r3, #32
 8004b5e:	2a58      	cmp	r2, #88	; 0x58
 8004b60:	f200 82a9 	bhi.w	80050b6 <_vfiprintf_r+0x62e>
 8004b64:	e8df f012 	tbh	[pc, r2, lsl #1]
 8004b68:	02a700f3 	.word	0x02a700f3
 8004b6c:	00ee02a7 	.word	0x00ee02a7
 8004b70:	02a702a7 	.word	0x02a702a7
 8004b74:	02a702a7 	.word	0x02a702a7
 8004b78:	02a702a7 	.word	0x02a702a7
 8004b7c:	00de00e3 	.word	0x00de00e3
 8004b80:	00d902a7 	.word	0x00d902a7
 8004b84:	02a700c1 	.word	0x02a700c1
 8004b88:	00ad00bc 	.word	0x00ad00bc
 8004b8c:	00ad00ad 	.word	0x00ad00ad
 8004b90:	00ad00ad 	.word	0x00ad00ad
 8004b94:	00ad00ad 	.word	0x00ad00ad
 8004b98:	00ad00ad 	.word	0x00ad00ad
 8004b9c:	02a702a7 	.word	0x02a702a7
 8004ba0:	02a702a7 	.word	0x02a702a7
 8004ba4:	02a702a7 	.word	0x02a702a7
 8004ba8:	02a702a7 	.word	0x02a702a7
 8004bac:	02a702a7 	.word	0x02a702a7
 8004bb0:	02a70276 	.word	0x02a70276
 8004bb4:	02a702a7 	.word	0x02a702a7
 8004bb8:	02a702a7 	.word	0x02a702a7
 8004bbc:	02a702a7 	.word	0x02a702a7
 8004bc0:	02a702a7 	.word	0x02a702a7
 8004bc4:	006702a7 	.word	0x006702a7
 8004bc8:	02a702a7 	.word	0x02a702a7
 8004bcc:	02a702a7 	.word	0x02a702a7
 8004bd0:	005902a7 	.word	0x005902a7
 8004bd4:	02a702a7 	.word	0x02a702a7
 8004bd8:	02a7025c 	.word	0x02a7025c
 8004bdc:	02a702a7 	.word	0x02a702a7
 8004be0:	02a702a7 	.word	0x02a702a7
 8004be4:	02a702a7 	.word	0x02a702a7
 8004be8:	02a702a7 	.word	0x02a702a7
 8004bec:	024b02a7 	.word	0x024b02a7
 8004bf0:	02a7021e 	.word	0x02a7021e
 8004bf4:	02a702a7 	.word	0x02a702a7
 8004bf8:	021e0219 	.word	0x021e0219
 8004bfc:	02a702a7 	.word	0x02a702a7
 8004c00:	02a70211 	.word	0x02a70211
 8004c04:	006901fe 	.word	0x006901fe
 8004c08:	0139013e 	.word	0x0139013e
 8004c0c:	011a02a7 	.word	0x011a02a7
 8004c10:	005b02a7 	.word	0x005b02a7
 8004c14:	02a702a7 	.word	0x02a702a7
 8004c18:	00fb      	.short	0x00fb
 8004c1a:	f045 0510 	orr.w	r5, r5, #16
 8004c1e:	06ab      	lsls	r3, r5, #26
 8004c20:	f140 823c 	bpl.w	800509c <_vfiprintf_r+0x614>
 8004c24:	9a05      	ldr	r2, [sp, #20]
 8004c26:	2301      	movs	r3, #1
 8004c28:	3207      	adds	r2, #7
 8004c2a:	f022 0207 	bic.w	r2, r2, #7
 8004c2e:	e8f2 6702 	ldrd	r6, r7, [r2], #8
 8004c32:	9205      	str	r2, [sp, #20]
 8004c34:	e0e4      	b.n	8004e00 <_vfiprintf_r+0x378>
 8004c36:	f045 0510 	orr.w	r5, r5, #16
 8004c3a:	f015 0320 	ands.w	r3, r5, #32
 8004c3e:	9a05      	ldr	r2, [sp, #20]
 8004c40:	f000 821e 	beq.w	8005080 <_vfiprintf_r+0x5f8>
 8004c44:	3207      	adds	r2, #7
 8004c46:	2300      	movs	r3, #0
 8004c48:	f022 0207 	bic.w	r2, r2, #7
 8004c4c:	e8f2 6702 	ldrd	r6, r7, [r2], #8
 8004c50:	9205      	str	r2, [sp, #20]
 8004c52:	e0d5      	b.n	8004e00 <_vfiprintf_r+0x378>
 8004c54:	9904      	ldr	r1, [sp, #16]
 8004c56:	9806      	ldr	r0, [sp, #24]
 8004c58:	f7fd f948 	bl	8001eec <__swsetup_r>
 8004c5c:	2800      	cmp	r0, #0
 8004c5e:	f040 850c 	bne.w	800567a <_vfiprintf_r+0xbf2>
 8004c62:	9b04      	ldr	r3, [sp, #16]
 8004c64:	899a      	ldrh	r2, [r3, #12]
 8004c66:	f002 021a 	and.w	r2, r2, #26
 8004c6a:	2a0a      	cmp	r2, #10
 8004c6c:	f47f af34 	bne.w	8004ad8 <_vfiprintf_r+0x50>
 8004c70:	9b04      	ldr	r3, [sp, #16]
 8004c72:	f9b3 300e 	ldrsh.w	r3, [r3, #14]
 8004c76:	2b00      	cmp	r3, #0
 8004c78:	f6ff af2e 	blt.w	8004ad8 <_vfiprintf_r+0x50>
 8004c7c:	4623      	mov	r3, r4
 8004c7e:	4652      	mov	r2, sl
 8004c80:	9904      	ldr	r1, [sp, #16]
 8004c82:	9806      	ldr	r0, [sp, #24]
 8004c84:	f000 fd20 	bl	80056c8 <__sbprintf>
 8004c88:	9003      	str	r0, [sp, #12]
 8004c8a:	e016      	b.n	8004cba <_vfiprintf_r+0x232>
 8004c8c:	2a00      	cmp	r2, #0
 8004c8e:	f000 83ee 	beq.w	800546e <_vfiprintf_r+0x9e6>
 8004c92:	aa11      	add	r2, sp, #68	; 0x44
 8004c94:	9904      	ldr	r1, [sp, #16]
 8004c96:	9806      	ldr	r0, [sp, #24]
 8004c98:	f7ff feb4 	bl	8004a04 <__sprint_r.part.0>
 8004c9c:	b940      	cbnz	r0, 8004cb0 <_vfiprintf_r+0x228>
 8004c9e:	46c8      	mov	r8, r9
 8004ca0:	e745      	b.n	8004b2e <_vfiprintf_r+0xa6>
 8004ca2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004ca4:	b123      	cbz	r3, 8004cb0 <_vfiprintf_r+0x228>
 8004ca6:	9806      	ldr	r0, [sp, #24]
 8004ca8:	aa11      	add	r2, sp, #68	; 0x44
 8004caa:	9904      	ldr	r1, [sp, #16]
 8004cac:	f7ff feaa 	bl	8004a04 <__sprint_r.part.0>
 8004cb0:	9b04      	ldr	r3, [sp, #16]
 8004cb2:	899b      	ldrh	r3, [r3, #12]
 8004cb4:	065a      	lsls	r2, r3, #25
 8004cb6:	f100 84e0 	bmi.w	800567a <_vfiprintf_r+0xbf2>
 8004cba:	9803      	ldr	r0, [sp, #12]
 8004cbc:	b02f      	add	sp, #188	; 0xbc
 8004cbe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cc2:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8004cc6:	f04f 0b00 	mov.w	fp, #0
 8004cca:	eb0b 0b8b 	add.w	fp, fp, fp, lsl #2
 8004cce:	f81a 3b01 	ldrb.w	r3, [sl], #1
 8004cd2:	eb02 0b4b 	add.w	fp, r2, fp, lsl #1
 8004cd6:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8004cda:	2a09      	cmp	r2, #9
 8004cdc:	d9f5      	bls.n	8004cca <_vfiprintf_r+0x242>
 8004cde:	e73c      	b.n	8004b5a <_vfiprintf_r+0xd2>
 8004ce0:	f045 0580 	orr.w	r5, r5, #128	; 0x80
 8004ce4:	f89a 3000 	ldrb.w	r3, [sl]
 8004ce8:	e735      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004cea:	4654      	mov	r4, sl
 8004cec:	f814 3b01 	ldrb.w	r3, [r4], #1
 8004cf0:	2b2a      	cmp	r3, #42	; 0x2a
 8004cf2:	f000 84cb 	beq.w	800568c <_vfiprintf_r+0xc04>
 8004cf6:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8004cfa:	46a2      	mov	sl, r4
 8004cfc:	2400      	movs	r4, #0
 8004cfe:	2a09      	cmp	r2, #9
 8004d00:	f63f af2b 	bhi.w	8004b5a <_vfiprintf_r+0xd2>
 8004d04:	eb04 0484 	add.w	r4, r4, r4, lsl #2
 8004d08:	f81a 3b01 	ldrb.w	r3, [sl], #1
 8004d0c:	eb02 0444 	add.w	r4, r2, r4, lsl #1
 8004d10:	f1a3 0230 	sub.w	r2, r3, #48	; 0x30
 8004d14:	2a09      	cmp	r2, #9
 8004d16:	d9f5      	bls.n	8004d04 <_vfiprintf_r+0x27c>
 8004d18:	e71f      	b.n	8004b5a <_vfiprintf_r+0xd2>
 8004d1a:	f89a 3000 	ldrb.w	r3, [sl]
 8004d1e:	f045 0504 	orr.w	r5, r5, #4
 8004d22:	e718      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004d24:	f89a 3000 	ldrb.w	r3, [sl]
 8004d28:	2101      	movs	r1, #1
 8004d2a:	202b      	movs	r0, #43	; 0x2b
 8004d2c:	e713      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004d2e:	9a05      	ldr	r2, [sp, #20]
 8004d30:	f89a 3000 	ldrb.w	r3, [sl]
 8004d34:	f852 bb04 	ldr.w	fp, [r2], #4
 8004d38:	f1bb 0f00 	cmp.w	fp, #0
 8004d3c:	f2c0 83ff 	blt.w	800553e <_vfiprintf_r+0xab6>
 8004d40:	9205      	str	r2, [sp, #20]
 8004d42:	e708      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004d44:	f045 0501 	orr.w	r5, r5, #1
 8004d48:	f89a 3000 	ldrb.w	r3, [sl]
 8004d4c:	e703      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004d4e:	f89a 3000 	ldrb.w	r3, [sl]
 8004d52:	2800      	cmp	r0, #0
 8004d54:	f47f aeff 	bne.w	8004b56 <_vfiprintf_r+0xce>
 8004d58:	2101      	movs	r1, #1
 8004d5a:	2020      	movs	r0, #32
 8004d5c:	e6fb      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004d5e:	2900      	cmp	r1, #0
 8004d60:	f040 8472 	bne.w	8005648 <_vfiprintf_r+0xbc0>
 8004d64:	4ab9      	ldr	r2, [pc, #740]	; (800504c <_vfiprintf_r+0x5c4>)
 8004d66:	06a9      	lsls	r1, r5, #26
 8004d68:	920a      	str	r2, [sp, #40]	; 0x28
 8004d6a:	9a05      	ldr	r2, [sp, #20]
 8004d6c:	f140 8161 	bpl.w	8005032 <_vfiprintf_r+0x5aa>
 8004d70:	3207      	adds	r2, #7
 8004d72:	f022 0207 	bic.w	r2, r2, #7
 8004d76:	e8f2 6702 	ldrd	r6, r7, [r2], #8
 8004d7a:	9205      	str	r2, [sp, #20]
 8004d7c:	07e9      	lsls	r1, r5, #31
 8004d7e:	f140 81ab 	bpl.w	80050d8 <_vfiprintf_r+0x650>
 8004d82:	ea56 0207 	orrs.w	r2, r6, r7
 8004d86:	f000 81a7 	beq.w	80050d8 <_vfiprintf_r+0x650>
 8004d8a:	2230      	movs	r2, #48	; 0x30
 8004d8c:	f88d 3041 	strb.w	r3, [sp, #65]	; 0x41
 8004d90:	f045 0502 	orr.w	r5, r5, #2
 8004d94:	2302      	movs	r3, #2
 8004d96:	f88d 2040 	strb.w	r2, [sp, #64]	; 0x40
 8004d9a:	e031      	b.n	8004e00 <_vfiprintf_r+0x378>
 8004d9c:	f04f 0300 	mov.w	r3, #0
 8004da0:	9e05      	ldr	r6, [sp, #20]
 8004da2:	f88d 303f 	strb.w	r3, [sp, #63]	; 0x3f
 8004da6:	f856 3b04 	ldr.w	r3, [r6], #4
 8004daa:	9309      	str	r3, [sp, #36]	; 0x24
 8004dac:	2b00      	cmp	r3, #0
 8004dae:	f000 8428 	beq.w	8005602 <_vfiprintf_r+0xb7a>
 8004db2:	1c62      	adds	r2, r4, #1
 8004db4:	f000 83d2 	beq.w	800555c <_vfiprintf_r+0xad4>
 8004db8:	9f09      	ldr	r7, [sp, #36]	; 0x24
 8004dba:	4622      	mov	r2, r4
 8004dbc:	2100      	movs	r1, #0
 8004dbe:	4638      	mov	r0, r7
 8004dc0:	f7ff f80a 	bl	8003dd8 <memchr>
 8004dc4:	2800      	cmp	r0, #0
 8004dc6:	f000 8449 	beq.w	800565c <_vfiprintf_r+0xbd4>
 8004dca:	f89d 303f 	ldrb.w	r3, [sp, #63]	; 0x3f
 8004dce:	1bc7      	subs	r7, r0, r7
 8004dd0:	9605      	str	r6, [sp, #20]
 8004dd2:	2400      	movs	r4, #0
 8004dd4:	9502      	str	r5, [sp, #8]
 8004dd6:	9307      	str	r3, [sp, #28]
 8004dd8:	e034      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8004dda:	f045 0520 	orr.w	r5, r5, #32
 8004dde:	f89a 3000 	ldrb.w	r3, [sl]
 8004de2:	e6b8      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004de4:	9a05      	ldr	r2, [sp, #20]
 8004de6:	f647 0130 	movw	r1, #30768	; 0x7830
 8004dea:	4b98      	ldr	r3, [pc, #608]	; (800504c <_vfiprintf_r+0x5c4>)
 8004dec:	f045 0502 	orr.w	r5, r5, #2
 8004df0:	f852 6b04 	ldr.w	r6, [r2], #4
 8004df4:	930a      	str	r3, [sp, #40]	; 0x28
 8004df6:	2302      	movs	r3, #2
 8004df8:	f8ad 1040 	strh.w	r1, [sp, #64]	; 0x40
 8004dfc:	9205      	str	r2, [sp, #20]
 8004dfe:	2700      	movs	r7, #0
 8004e00:	2200      	movs	r2, #0
 8004e02:	9207      	str	r2, [sp, #28]
 8004e04:	f88d 203f 	strb.w	r2, [sp, #63]	; 0x3f
 8004e08:	1c62      	adds	r2, r4, #1
 8004e0a:	f000 8168 	beq.w	80050de <_vfiprintf_r+0x656>
 8004e0e:	f025 0280 	bic.w	r2, r5, #128	; 0x80
 8004e12:	9202      	str	r2, [sp, #8]
 8004e14:	ea56 0207 	orrs.w	r2, r6, r7
 8004e18:	f040 8160 	bne.w	80050dc <_vfiprintf_r+0x654>
 8004e1c:	1c22      	adds	r2, r4, #0
 8004e1e:	bf18      	it	ne
 8004e20:	2201      	movne	r2, #1
 8004e22:	2a00      	cmp	r2, #0
 8004e24:	f040 815a 	bne.w	80050dc <_vfiprintf_r+0x654>
 8004e28:	2b00      	cmp	r3, #0
 8004e2a:	f040 8303 	bne.w	8005434 <_vfiprintf_r+0x9ac>
 8004e2e:	f015 0701 	ands.w	r7, r5, #1
 8004e32:	f000 832f 	beq.w	8005494 <_vfiprintf_r+0xa0c>
 8004e36:	2230      	movs	r2, #48	; 0x30
 8004e38:	461c      	mov	r4, r3
 8004e3a:	f10d 0377 	add.w	r3, sp, #119	; 0x77
 8004e3e:	f88d 2077 	strb.w	r2, [sp, #119]	; 0x77
 8004e42:	9309      	str	r3, [sp, #36]	; 0x24
 8004e44:	42bc      	cmp	r4, r7
 8004e46:	4623      	mov	r3, r4
 8004e48:	9a07      	ldr	r2, [sp, #28]
 8004e4a:	bfb8      	it	lt
 8004e4c:	463b      	movlt	r3, r7
 8004e4e:	9301      	str	r3, [sp, #4]
 8004e50:	b10a      	cbz	r2, 8004e56 <_vfiprintf_r+0x3ce>
 8004e52:	3301      	adds	r3, #1
 8004e54:	9301      	str	r3, [sp, #4]
 8004e56:	9b02      	ldr	r3, [sp, #8]
 8004e58:	f013 0302 	ands.w	r3, r3, #2
 8004e5c:	9307      	str	r3, [sp, #28]
 8004e5e:	d002      	beq.n	8004e66 <_vfiprintf_r+0x3de>
 8004e60:	9b01      	ldr	r3, [sp, #4]
 8004e62:	3302      	adds	r3, #2
 8004e64:	9301      	str	r3, [sp, #4]
 8004e66:	9b02      	ldr	r3, [sp, #8]
 8004e68:	e9dd 2c12 	ldrd	r2, ip, [sp, #72]	; 0x48
 8004e6c:	f013 0384 	ands.w	r3, r3, #132	; 0x84
 8004e70:	f102 0101 	add.w	r1, r2, #1
 8004e74:	9308      	str	r3, [sp, #32]
 8004e76:	4608      	mov	r0, r1
 8004e78:	d105      	bne.n	8004e86 <_vfiprintf_r+0x3fe>
 8004e7a:	9b01      	ldr	r3, [sp, #4]
 8004e7c:	ebab 0503 	sub.w	r5, fp, r3
 8004e80:	2d00      	cmp	r5, #0
 8004e82:	f300 8221 	bgt.w	80052c8 <_vfiprintf_r+0x840>
 8004e86:	f89d 503f 	ldrb.w	r5, [sp, #63]	; 0x3f
 8004e8a:	f108 0108 	add.w	r1, r8, #8
 8004e8e:	b17d      	cbz	r5, 8004eb0 <_vfiprintf_r+0x428>
 8004e90:	f10c 0c01 	add.w	ip, ip, #1
 8004e94:	f10d 053f 	add.w	r5, sp, #63	; 0x3f
 8004e98:	2201      	movs	r2, #1
 8004e9a:	2807      	cmp	r0, #7
 8004e9c:	e9cd 0c12 	strd	r0, ip, [sp, #72]	; 0x48
 8004ea0:	e9c8 5200 	strd	r5, r2, [r8]
 8004ea4:	f300 81f0 	bgt.w	8005288 <_vfiprintf_r+0x800>
 8004ea8:	4602      	mov	r2, r0
 8004eaa:	4688      	mov	r8, r1
 8004eac:	3001      	adds	r0, #1
 8004eae:	3108      	adds	r1, #8
 8004eb0:	9b07      	ldr	r3, [sp, #28]
 8004eb2:	b1e3      	cbz	r3, 8004eee <_vfiprintf_r+0x466>
 8004eb4:	f10c 0c02 	add.w	ip, ip, #2
 8004eb8:	aa10      	add	r2, sp, #64	; 0x40
 8004eba:	2302      	movs	r3, #2
 8004ebc:	2807      	cmp	r0, #7
 8004ebe:	e9cd 0c12 	strd	r0, ip, [sp, #72]	; 0x48
 8004ec2:	e9c8 2300 	strd	r2, r3, [r8]
 8004ec6:	f340 81f9 	ble.w	80052bc <_vfiprintf_r+0x834>
 8004eca:	f1bc 0f00 	cmp.w	ip, #0
 8004ece:	f000 8304 	beq.w	80054da <_vfiprintf_r+0xa52>
 8004ed2:	aa11      	add	r2, sp, #68	; 0x44
 8004ed4:	9904      	ldr	r1, [sp, #16]
 8004ed6:	9806      	ldr	r0, [sp, #24]
 8004ed8:	f7ff fd94 	bl	8004a04 <__sprint_r.part.0>
 8004edc:	2800      	cmp	r0, #0
 8004ede:	f47f aee7 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 8004ee2:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004ee4:	a920      	add	r1, sp, #128	; 0x80
 8004ee6:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
 8004eea:	46c8      	mov	r8, r9
 8004eec:	1c50      	adds	r0, r2, #1
 8004eee:	9b08      	ldr	r3, [sp, #32]
 8004ef0:	2b80      	cmp	r3, #128	; 0x80
 8004ef2:	f000 8117 	beq.w	8005124 <_vfiprintf_r+0x69c>
 8004ef6:	1be4      	subs	r4, r4, r7
 8004ef8:	2c00      	cmp	r4, #0
 8004efa:	f300 8173 	bgt.w	80051e4 <_vfiprintf_r+0x75c>
 8004efe:	eb07 030c 	add.w	r3, r7, ip
 8004f02:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004f04:	2807      	cmp	r0, #7
 8004f06:	e9c8 2700 	strd	r2, r7, [r8]
 8004f0a:	e9cd 0312 	strd	r0, r3, [sp, #72]	; 0x48
 8004f0e:	dd0c      	ble.n	8004f2a <_vfiprintf_r+0x4a2>
 8004f10:	2b00      	cmp	r3, #0
 8004f12:	f000 8239 	beq.w	8005388 <_vfiprintf_r+0x900>
 8004f16:	aa11      	add	r2, sp, #68	; 0x44
 8004f18:	9904      	ldr	r1, [sp, #16]
 8004f1a:	9806      	ldr	r0, [sp, #24]
 8004f1c:	f7ff fd72 	bl	8004a04 <__sprint_r.part.0>
 8004f20:	2800      	cmp	r0, #0
 8004f22:	f47f aec5 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 8004f26:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004f28:	4649      	mov	r1, r9
 8004f2a:	9a02      	ldr	r2, [sp, #8]
 8004f2c:	0750      	lsls	r0, r2, #29
 8004f2e:	d505      	bpl.n	8004f3c <_vfiprintf_r+0x4b4>
 8004f30:	9a01      	ldr	r2, [sp, #4]
 8004f32:	ebab 0402 	sub.w	r4, fp, r2
 8004f36:	2c00      	cmp	r4, #0
 8004f38:	f300 8230 	bgt.w	800539c <_vfiprintf_r+0x914>
 8004f3c:	9a03      	ldr	r2, [sp, #12]
 8004f3e:	9901      	ldr	r1, [sp, #4]
 8004f40:	458b      	cmp	fp, r1
 8004f42:	bfac      	ite	ge
 8004f44:	445a      	addge	r2, fp
 8004f46:	1852      	addlt	r2, r2, r1
 8004f48:	9203      	str	r2, [sp, #12]
 8004f4a:	2b00      	cmp	r3, #0
 8004f4c:	f040 8193 	bne.w	8005276 <_vfiprintf_r+0x7ee>
 8004f50:	2300      	movs	r3, #0
 8004f52:	46c8      	mov	r8, r9
 8004f54:	9312      	str	r3, [sp, #72]	; 0x48
 8004f56:	f89a 3000 	ldrb.w	r3, [sl]
 8004f5a:	2b00      	cmp	r3, #0
 8004f5c:	f47f adca 	bne.w	8004af4 <_vfiprintf_r+0x6c>
 8004f60:	4655      	mov	r5, sl
 8004f62:	e5e8      	b.n	8004b36 <_vfiprintf_r+0xae>
 8004f64:	2900      	cmp	r1, #0
 8004f66:	f040 8373 	bne.w	8005650 <_vfiprintf_r+0xbc8>
 8004f6a:	9b05      	ldr	r3, [sp, #20]
 8004f6c:	06ac      	lsls	r4, r5, #26
 8004f6e:	f853 2b04 	ldr.w	r2, [r3], #4
 8004f72:	f100 82ce 	bmi.w	8005512 <_vfiprintf_r+0xa8a>
 8004f76:	06e8      	lsls	r0, r5, #27
 8004f78:	f100 8308 	bmi.w	800558c <_vfiprintf_r+0xb04>
 8004f7c:	0669      	lsls	r1, r5, #25
 8004f7e:	f140 8305 	bpl.w	800558c <_vfiprintf_r+0xb04>
 8004f82:	9903      	ldr	r1, [sp, #12]
 8004f84:	9305      	str	r3, [sp, #20]
 8004f86:	8011      	strh	r1, [r2, #0]
 8004f88:	e5af      	b.n	8004aea <_vfiprintf_r+0x62>
 8004f8a:	f89a 3000 	ldrb.w	r3, [sl]
 8004f8e:	2b6c      	cmp	r3, #108	; 0x6c
 8004f90:	f000 830a 	beq.w	80055a8 <_vfiprintf_r+0xb20>
 8004f94:	f045 0510 	orr.w	r5, r5, #16
 8004f98:	e5dd      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004f9a:	f045 0540 	orr.w	r5, r5, #64	; 0x40
 8004f9e:	f89a 3000 	ldrb.w	r3, [sl]
 8004fa2:	e5d8      	b.n	8004b56 <_vfiprintf_r+0xce>
 8004fa4:	2900      	cmp	r1, #0
 8004fa6:	f040 8356 	bne.w	8005656 <_vfiprintf_r+0xbce>
 8004faa:	06aa      	lsls	r2, r5, #26
 8004fac:	9b05      	ldr	r3, [sp, #20]
 8004fae:	d559      	bpl.n	8005064 <_vfiprintf_r+0x5dc>
 8004fb0:	3307      	adds	r3, #7
 8004fb2:	f023 0307 	bic.w	r3, r3, #7
 8004fb6:	4619      	mov	r1, r3
 8004fb8:	e8f1 2302 	ldrd	r2, r3, [r1], #8
 8004fbc:	4616      	mov	r6, r2
 8004fbe:	461f      	mov	r7, r3
 8004fc0:	9105      	str	r1, [sp, #20]
 8004fc2:	2a00      	cmp	r2, #0
 8004fc4:	f173 0300 	sbcs.w	r3, r3, #0
 8004fc8:	f2c0 8272 	blt.w	80054b0 <_vfiprintf_r+0xa28>
 8004fcc:	f89d 303f 	ldrb.w	r3, [sp, #63]	; 0x3f
 8004fd0:	9307      	str	r3, [sp, #28]
 8004fd2:	1c63      	adds	r3, r4, #1
 8004fd4:	f000 8250 	beq.w	8005478 <_vfiprintf_r+0x9f0>
 8004fd8:	f025 0380 	bic.w	r3, r5, #128	; 0x80
 8004fdc:	9302      	str	r3, [sp, #8]
 8004fde:	2c00      	cmp	r4, #0
 8004fe0:	f040 8249 	bne.w	8005476 <_vfiprintf_r+0x9ee>
 8004fe4:	ea56 0307 	orrs.w	r3, r6, r7
 8004fe8:	bf14      	ite	ne
 8004fea:	2301      	movne	r3, #1
 8004fec:	2300      	moveq	r3, #0
 8004fee:	2b00      	cmp	r3, #0
 8004ff0:	f040 8241 	bne.w	8005476 <_vfiprintf_r+0x9ee>
 8004ff4:	461c      	mov	r4, r3
 8004ff6:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004ffa:	461f      	mov	r7, r3
 8004ffc:	e722      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8004ffe:	f04f 0200 	mov.w	r2, #0
 8005002:	9b05      	ldr	r3, [sp, #20]
 8005004:	2701      	movs	r7, #1
 8005006:	f88d 203f 	strb.w	r2, [sp, #63]	; 0x3f
 800500a:	aa14      	add	r2, sp, #80	; 0x50
 800500c:	9701      	str	r7, [sp, #4]
 800500e:	9209      	str	r2, [sp, #36]	; 0x24
 8005010:	f853 2b04 	ldr.w	r2, [r3], #4
 8005014:	f88d 2050 	strb.w	r2, [sp, #80]	; 0x50
 8005018:	9305      	str	r3, [sp, #20]
 800501a:	9502      	str	r5, [sp, #8]
 800501c:	2400      	movs	r4, #0
 800501e:	e71a      	b.n	8004e56 <_vfiprintf_r+0x3ce>
 8005020:	2900      	cmp	r1, #0
 8005022:	f040 830b 	bne.w	800563c <_vfiprintf_r+0xbb4>
 8005026:	4a0a      	ldr	r2, [pc, #40]	; (8005050 <_vfiprintf_r+0x5c8>)
 8005028:	06a9      	lsls	r1, r5, #26
 800502a:	920a      	str	r2, [sp, #40]	; 0x28
 800502c:	9a05      	ldr	r2, [sp, #20]
 800502e:	f53f ae9f 	bmi.w	8004d70 <_vfiprintf_r+0x2e8>
 8005032:	f852 6b04 	ldr.w	r6, [r2], #4
 8005036:	06ef      	lsls	r7, r5, #27
 8005038:	9205      	str	r2, [sp, #20]
 800503a:	f100 822f 	bmi.w	800549c <_vfiprintf_r+0xa14>
 800503e:	0668      	lsls	r0, r5, #25
 8005040:	f140 822c 	bpl.w	800549c <_vfiprintf_r+0xa14>
 8005044:	b2b6      	uxth	r6, r6
 8005046:	2700      	movs	r7, #0
 8005048:	e698      	b.n	8004d7c <_vfiprintf_r+0x2f4>
 800504a:	bf00      	nop
 800504c:	0800ada8 	.word	0x0800ada8
 8005050:	0800ad94 	.word	0x0800ad94
 8005054:	2900      	cmp	r1, #0
 8005056:	f040 82f4 	bne.w	8005642 <_vfiprintf_r+0xbba>
 800505a:	f045 0510 	orr.w	r5, r5, #16
 800505e:	9b05      	ldr	r3, [sp, #20]
 8005060:	06aa      	lsls	r2, r5, #26
 8005062:	d4a5      	bmi.n	8004fb0 <_vfiprintf_r+0x528>
 8005064:	f853 6b04 	ldr.w	r6, [r3], #4
 8005068:	9305      	str	r3, [sp, #20]
 800506a:	06eb      	lsls	r3, r5, #27
 800506c:	f100 8218 	bmi.w	80054a0 <_vfiprintf_r+0xa18>
 8005070:	066f      	lsls	r7, r5, #25
 8005072:	f140 8215 	bpl.w	80054a0 <_vfiprintf_r+0xa18>
 8005076:	b236      	sxth	r6, r6
 8005078:	17f7      	asrs	r7, r6, #31
 800507a:	4632      	mov	r2, r6
 800507c:	463b      	mov	r3, r7
 800507e:	e7a0      	b.n	8004fc2 <_vfiprintf_r+0x53a>
 8005080:	f852 6b04 	ldr.w	r6, [r2], #4
 8005084:	9205      	str	r2, [sp, #20]
 8005086:	f015 0210 	ands.w	r2, r5, #16
 800508a:	f47f aeb8 	bne.w	8004dfe <_vfiprintf_r+0x376>
 800508e:	f015 0340 	ands.w	r3, r5, #64	; 0x40
 8005092:	f43f aeb4 	beq.w	8004dfe <_vfiprintf_r+0x376>
 8005096:	4613      	mov	r3, r2
 8005098:	b2b6      	uxth	r6, r6
 800509a:	e6b0      	b.n	8004dfe <_vfiprintf_r+0x376>
 800509c:	9b05      	ldr	r3, [sp, #20]
 800509e:	06ef      	lsls	r7, r5, #27
 80050a0:	f853 6b04 	ldr.w	r6, [r3], #4
 80050a4:	9305      	str	r3, [sp, #20]
 80050a6:	f140 823d 	bpl.w	8005524 <_vfiprintf_r+0xa9c>
 80050aa:	2700      	movs	r7, #0
 80050ac:	2301      	movs	r3, #1
 80050ae:	e6a7      	b.n	8004e00 <_vfiprintf_r+0x378>
 80050b0:	f7fe f992 	bl	80033d8 <__sinit>
 80050b4:	e4f5      	b.n	8004aa2 <_vfiprintf_r+0x1a>
 80050b6:	2900      	cmp	r1, #0
 80050b8:	f040 82bd 	bne.w	8005636 <_vfiprintf_r+0xbae>
 80050bc:	2b00      	cmp	r3, #0
 80050be:	f43f adf0 	beq.w	8004ca2 <_vfiprintf_r+0x21a>
 80050c2:	f88d 3050 	strb.w	r3, [sp, #80]	; 0x50
 80050c6:	f04f 0300 	mov.w	r3, #0
 80050ca:	2701      	movs	r7, #1
 80050cc:	f88d 303f 	strb.w	r3, [sp, #63]	; 0x3f
 80050d0:	ab14      	add	r3, sp, #80	; 0x50
 80050d2:	9701      	str	r7, [sp, #4]
 80050d4:	9309      	str	r3, [sp, #36]	; 0x24
 80050d6:	e7a0      	b.n	800501a <_vfiprintf_r+0x592>
 80050d8:	2302      	movs	r3, #2
 80050da:	e691      	b.n	8004e00 <_vfiprintf_r+0x378>
 80050dc:	9d02      	ldr	r5, [sp, #8]
 80050de:	2b01      	cmp	r3, #1
 80050e0:	f000 81ca 	beq.w	8005478 <_vfiprintf_r+0x9f0>
 80050e4:	2b02      	cmp	r3, #2
 80050e6:	f000 8138 	beq.w	800535a <_vfiprintf_r+0x8d2>
 80050ea:	4649      	mov	r1, r9
 80050ec:	e000      	b.n	80050f0 <_vfiprintf_r+0x668>
 80050ee:	4611      	mov	r1, r2
 80050f0:	08f2      	lsrs	r2, r6, #3
 80050f2:	f006 0307 	and.w	r3, r6, #7
 80050f6:	08f8      	lsrs	r0, r7, #3
 80050f8:	ea42 7247 	orr.w	r2, r2, r7, lsl #29
 80050fc:	3330      	adds	r3, #48	; 0x30
 80050fe:	4607      	mov	r7, r0
 8005100:	4616      	mov	r6, r2
 8005102:	f801 3c01 	strb.w	r3, [r1, #-1]
 8005106:	1e4a      	subs	r2, r1, #1
 8005108:	ea56 0007 	orrs.w	r0, r6, r7
 800510c:	d1ef      	bne.n	80050ee <_vfiprintf_r+0x666>
 800510e:	2b30      	cmp	r3, #48	; 0x30
 8005110:	9209      	str	r2, [sp, #36]	; 0x24
 8005112:	d002      	beq.n	800511a <_vfiprintf_r+0x692>
 8005114:	07ee      	lsls	r6, r5, #31
 8005116:	f100 8217 	bmi.w	8005548 <_vfiprintf_r+0xac0>
 800511a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800511c:	9502      	str	r5, [sp, #8]
 800511e:	eba9 0703 	sub.w	r7, r9, r3
 8005122:	e68f      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8005124:	9b01      	ldr	r3, [sp, #4]
 8005126:	ebab 0603 	sub.w	r6, fp, r3
 800512a:	2e00      	cmp	r6, #0
 800512c:	f77f aee3 	ble.w	8004ef6 <_vfiprintf_r+0x46e>
 8005130:	2e10      	cmp	r6, #16
 8005132:	f340 82a7 	ble.w	8005684 <_vfiprintf_r+0xbfc>
 8005136:	4dc2      	ldr	r5, [pc, #776]	; (8005440 <_vfiprintf_r+0x9b8>)
 8005138:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800513c:	46aa      	mov	sl, r5
 800513e:	4665      	mov	r5, ip
 8005140:	e9cd 4707 	strd	r4, r7, [sp, #28]
 8005144:	9c06      	ldr	r4, [sp, #24]
 8005146:	9f04      	ldr	r7, [sp, #16]
 8005148:	e00a      	b.n	8005160 <_vfiprintf_r+0x6d8>
 800514a:	f7ff fc5b 	bl	8004a04 <__sprint_r.part.0>
 800514e:	2800      	cmp	r0, #0
 8005150:	f47f adae 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 8005154:	e9dd 2512 	ldrd	r2, r5, [sp, #72]	; 0x48
 8005158:	1c51      	adds	r1, r2, #1
 800515a:	3e10      	subs	r6, #16
 800515c:	2e10      	cmp	r6, #16
 800515e:	dd1a      	ble.n	8005196 <_vfiprintf_r+0x70e>
 8005160:	1c50      	adds	r0, r2, #1
 8005162:	3510      	adds	r5, #16
 8005164:	2310      	movs	r3, #16
 8005166:	f8c8 a000 	str.w	sl, [r8]
 800516a:	2807      	cmp	r0, #7
 800516c:	f102 0102 	add.w	r1, r2, #2
 8005170:	f8c8 3004 	str.w	r3, [r8, #4]
 8005174:	4602      	mov	r2, r0
 8005176:	9513      	str	r5, [sp, #76]	; 0x4c
 8005178:	f108 0808 	add.w	r8, r8, #8
 800517c:	9012      	str	r0, [sp, #72]	; 0x48
 800517e:	ddec      	ble.n	800515a <_vfiprintf_r+0x6d2>
 8005180:	46c8      	mov	r8, r9
 8005182:	aa11      	add	r2, sp, #68	; 0x44
 8005184:	4639      	mov	r1, r7
 8005186:	4620      	mov	r0, r4
 8005188:	2d00      	cmp	r5, #0
 800518a:	d1de      	bne.n	800514a <_vfiprintf_r+0x6c2>
 800518c:	3e10      	subs	r6, #16
 800518e:	2101      	movs	r1, #1
 8005190:	462a      	mov	r2, r5
 8005192:	2e10      	cmp	r6, #16
 8005194:	dce4      	bgt.n	8005160 <_vfiprintf_r+0x6d8>
 8005196:	46ac      	mov	ip, r5
 8005198:	f108 0308 	add.w	r3, r8, #8
 800519c:	4655      	mov	r5, sl
 800519e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80051a2:	e9dd 4707 	ldrd	r4, r7, [sp, #28]
 80051a6:	44b4      	add	ip, r6
 80051a8:	2907      	cmp	r1, #7
 80051aa:	e9c8 5600 	strd	r5, r6, [r8]
 80051ae:	e9cd 1c12 	strd	r1, ip, [sp, #72]	; 0x48
 80051b2:	f340 81a8 	ble.w	8005506 <_vfiprintf_r+0xa7e>
 80051b6:	f1bc 0f00 	cmp.w	ip, #0
 80051ba:	f000 822e 	beq.w	800561a <_vfiprintf_r+0xb92>
 80051be:	aa11      	add	r2, sp, #68	; 0x44
 80051c0:	9904      	ldr	r1, [sp, #16]
 80051c2:	9806      	ldr	r0, [sp, #24]
 80051c4:	f7ff fc1e 	bl	8004a04 <__sprint_r.part.0>
 80051c8:	2800      	cmp	r0, #0
 80051ca:	f47f ad71 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 80051ce:	1be4      	subs	r4, r4, r7
 80051d0:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80051d2:	a920      	add	r1, sp, #128	; 0x80
 80051d4:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
 80051d8:	2c00      	cmp	r4, #0
 80051da:	46c8      	mov	r8, r9
 80051dc:	f102 0001 	add.w	r0, r2, #1
 80051e0:	f77f ae8d 	ble.w	8004efe <_vfiprintf_r+0x476>
 80051e4:	2c10      	cmp	r4, #16
 80051e6:	f340 8215 	ble.w	8005614 <_vfiprintf_r+0xb8c>
 80051ea:	4d95      	ldr	r5, [pc, #596]	; (8005440 <_vfiprintf_r+0x9b8>)
 80051ec:	2610      	movs	r6, #16
 80051ee:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80051f2:	f8dd a010 	ldr.w	sl, [sp, #16]
 80051f6:	e9cd b707 	strd	fp, r7, [sp, #28]
 80051fa:	46ab      	mov	fp, r5
 80051fc:	4667      	mov	r7, ip
 80051fe:	9d06      	ldr	r5, [sp, #24]
 8005200:	e00a      	b.n	8005218 <_vfiprintf_r+0x790>
 8005202:	f7ff fbff 	bl	8004a04 <__sprint_r.part.0>
 8005206:	2800      	cmp	r0, #0
 8005208:	f47f ad52 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 800520c:	e9dd 2712 	ldrd	r2, r7, [sp, #72]	; 0x48
 8005210:	1c50      	adds	r0, r2, #1
 8005212:	3c10      	subs	r4, #16
 8005214:	2c10      	cmp	r4, #16
 8005216:	dd18      	ble.n	800524a <_vfiprintf_r+0x7c2>
 8005218:	1c51      	adds	r1, r2, #1
 800521a:	3710      	adds	r7, #16
 800521c:	f8c8 b000 	str.w	fp, [r8]
 8005220:	1c90      	adds	r0, r2, #2
 8005222:	2907      	cmp	r1, #7
 8005224:	f8c8 6004 	str.w	r6, [r8, #4]
 8005228:	9713      	str	r7, [sp, #76]	; 0x4c
 800522a:	460a      	mov	r2, r1
 800522c:	f108 0808 	add.w	r8, r8, #8
 8005230:	9112      	str	r1, [sp, #72]	; 0x48
 8005232:	ddee      	ble.n	8005212 <_vfiprintf_r+0x78a>
 8005234:	46c8      	mov	r8, r9
 8005236:	aa11      	add	r2, sp, #68	; 0x44
 8005238:	4651      	mov	r1, sl
 800523a:	4628      	mov	r0, r5
 800523c:	2f00      	cmp	r7, #0
 800523e:	d1e0      	bne.n	8005202 <_vfiprintf_r+0x77a>
 8005240:	3c10      	subs	r4, #16
 8005242:	2001      	movs	r0, #1
 8005244:	463a      	mov	r2, r7
 8005246:	2c10      	cmp	r4, #16
 8005248:	dce6      	bgt.n	8005218 <_vfiprintf_r+0x790>
 800524a:	46bc      	mov	ip, r7
 800524c:	465d      	mov	r5, fp
 800524e:	9f08      	ldr	r7, [sp, #32]
 8005250:	f108 0308 	add.w	r3, r8, #8
 8005254:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8005258:	f8dd b01c 	ldr.w	fp, [sp, #28]
 800525c:	44a4      	add	ip, r4
 800525e:	2807      	cmp	r0, #7
 8005260:	e9c8 5400 	strd	r5, r4, [r8]
 8005264:	e9cd 0c12 	strd	r0, ip, [sp, #72]	; 0x48
 8005268:	f300 80ee 	bgt.w	8005448 <_vfiprintf_r+0x9c0>
 800526c:	3001      	adds	r0, #1
 800526e:	f103 0108 	add.w	r1, r3, #8
 8005272:	4698      	mov	r8, r3
 8005274:	e643      	b.n	8004efe <_vfiprintf_r+0x476>
 8005276:	aa11      	add	r2, sp, #68	; 0x44
 8005278:	9904      	ldr	r1, [sp, #16]
 800527a:	9806      	ldr	r0, [sp, #24]
 800527c:	f7ff fbc2 	bl	8004a04 <__sprint_r.part.0>
 8005280:	2800      	cmp	r0, #0
 8005282:	f43f ae65 	beq.w	8004f50 <_vfiprintf_r+0x4c8>
 8005286:	e513      	b.n	8004cb0 <_vfiprintf_r+0x228>
 8005288:	f1bc 0f00 	cmp.w	ip, #0
 800528c:	f000 811a 	beq.w	80054c4 <_vfiprintf_r+0xa3c>
 8005290:	aa11      	add	r2, sp, #68	; 0x44
 8005292:	9904      	ldr	r1, [sp, #16]
 8005294:	9806      	ldr	r0, [sp, #24]
 8005296:	f7ff fbb5 	bl	8004a04 <__sprint_r.part.0>
 800529a:	2800      	cmp	r0, #0
 800529c:	f47f ad08 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 80052a0:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80052a2:	a920      	add	r1, sp, #128	; 0x80
 80052a4:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
 80052a8:	46c8      	mov	r8, r9
 80052aa:	1c50      	adds	r0, r2, #1
 80052ac:	e600      	b.n	8004eb0 <_vfiprintf_r+0x428>
 80052ae:	2302      	movs	r3, #2
 80052b0:	aa10      	add	r2, sp, #64	; 0x40
 80052b2:	a920      	add	r1, sp, #128	; 0x80
 80052b4:	2001      	movs	r0, #1
 80052b6:	469c      	mov	ip, r3
 80052b8:	921e      	str	r2, [sp, #120]	; 0x78
 80052ba:	931f      	str	r3, [sp, #124]	; 0x7c
 80052bc:	4688      	mov	r8, r1
 80052be:	4602      	mov	r2, r0
 80052c0:	1c50      	adds	r0, r2, #1
 80052c2:	f108 0108 	add.w	r1, r8, #8
 80052c6:	e612      	b.n	8004eee <_vfiprintf_r+0x466>
 80052c8:	2d10      	cmp	r5, #16
 80052ca:	f340 81d0 	ble.w	800566e <_vfiprintf_r+0xbe6>
 80052ce:	970d      	str	r7, [sp, #52]	; 0x34
 80052d0:	2310      	movs	r3, #16
 80052d2:	4e5c      	ldr	r6, [pc, #368]	; (8005444 <_vfiprintf_r+0x9bc>)
 80052d4:	9f04      	ldr	r7, [sp, #16]
 80052d6:	e9cd b40b 	strd	fp, r4, [sp, #44]	; 0x2c
 80052da:	4664      	mov	r4, ip
 80052dc:	f8dd b018 	ldr.w	fp, [sp, #24]
 80052e0:	e00d      	b.n	80052fe <_vfiprintf_r+0x876>
 80052e2:	f7ff fb8f 	bl	8004a04 <__sprint_r.part.0>
 80052e6:	2800      	cmp	r0, #0
 80052e8:	f47f ace2 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 80052ec:	2310      	movs	r3, #16
 80052ee:	e9dd 2412 	ldrd	r2, r4, [sp, #72]	; 0x48
 80052f2:	f102 0e01 	add.w	lr, r2, #1
 80052f6:	3d10      	subs	r5, #16
 80052f8:	1c51      	adds	r1, r2, #1
 80052fa:	2d10      	cmp	r5, #16
 80052fc:	dd19      	ble.n	8005332 <_vfiprintf_r+0x8aa>
 80052fe:	3410      	adds	r4, #16
 8005300:	2907      	cmp	r1, #7
 8005302:	f102 0e02 	add.w	lr, r2, #2
 8005306:	9112      	str	r1, [sp, #72]	; 0x48
 8005308:	9413      	str	r4, [sp, #76]	; 0x4c
 800530a:	460a      	mov	r2, r1
 800530c:	e9c8 6300 	strd	r6, r3, [r8]
 8005310:	f108 0808 	add.w	r8, r8, #8
 8005314:	ddef      	ble.n	80052f6 <_vfiprintf_r+0x86e>
 8005316:	46c8      	mov	r8, r9
 8005318:	aa11      	add	r2, sp, #68	; 0x44
 800531a:	4639      	mov	r1, r7
 800531c:	4658      	mov	r0, fp
 800531e:	2c00      	cmp	r4, #0
 8005320:	d1df      	bne.n	80052e2 <_vfiprintf_r+0x85a>
 8005322:	3d10      	subs	r5, #16
 8005324:	4622      	mov	r2, r4
 8005326:	f04f 0e01 	mov.w	lr, #1
 800532a:	2d10      	cmp	r5, #16
 800532c:	f102 0101 	add.w	r1, r2, #1
 8005330:	dce5      	bgt.n	80052fe <_vfiprintf_r+0x876>
 8005332:	46a4      	mov	ip, r4
 8005334:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005338:	9f0d      	ldr	r7, [sp, #52]	; 0x34
 800533a:	9c0c      	ldr	r4, [sp, #48]	; 0x30
 800533c:	44ac      	add	ip, r5
 800533e:	f1be 0f07 	cmp.w	lr, #7
 8005342:	e9c8 6500 	strd	r6, r5, [r8]
 8005346:	e9cd ec12 	strd	lr, ip, [sp, #72]	; 0x48
 800534a:	f300 80cb 	bgt.w	80054e4 <_vfiprintf_r+0xa5c>
 800534e:	f108 0808 	add.w	r8, r8, #8
 8005352:	f10e 0001 	add.w	r0, lr, #1
 8005356:	4672      	mov	r2, lr
 8005358:	e595      	b.n	8004e86 <_vfiprintf_r+0x3fe>
 800535a:	464a      	mov	r2, r9
 800535c:	f8dd c028 	ldr.w	ip, [sp, #40]	; 0x28
 8005360:	0933      	lsrs	r3, r6, #4
 8005362:	f006 000f 	and.w	r0, r6, #15
 8005366:	0939      	lsrs	r1, r7, #4
 8005368:	ea43 7307 	orr.w	r3, r3, r7, lsl #28
 800536c:	460f      	mov	r7, r1
 800536e:	461e      	mov	r6, r3
 8005370:	f81c 3000 	ldrb.w	r3, [ip, r0]
 8005374:	f802 3d01 	strb.w	r3, [r2, #-1]!
 8005378:	ea56 0307 	orrs.w	r3, r6, r7
 800537c:	d1f0      	bne.n	8005360 <_vfiprintf_r+0x8d8>
 800537e:	9209      	str	r2, [sp, #36]	; 0x24
 8005380:	eba9 0702 	sub.w	r7, r9, r2
 8005384:	9502      	str	r5, [sp, #8]
 8005386:	e55d      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8005388:	9a02      	ldr	r2, [sp, #8]
 800538a:	9312      	str	r3, [sp, #72]	; 0x48
 800538c:	0754      	lsls	r4, r2, #29
 800538e:	d549      	bpl.n	8005424 <_vfiprintf_r+0x99c>
 8005390:	9a01      	ldr	r2, [sp, #4]
 8005392:	ebab 0402 	sub.w	r4, fp, r2
 8005396:	2c00      	cmp	r4, #0
 8005398:	dd44      	ble.n	8005424 <_vfiprintf_r+0x99c>
 800539a:	4649      	mov	r1, r9
 800539c:	2c10      	cmp	r4, #16
 800539e:	9812      	ldr	r0, [sp, #72]	; 0x48
 80053a0:	f340 8168 	ble.w	8005674 <_vfiprintf_r+0xbec>
 80053a4:	4e27      	ldr	r6, [pc, #156]	; (8005444 <_vfiprintf_r+0x9bc>)
 80053a6:	2510      	movs	r5, #16
 80053a8:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80053ac:	9f04      	ldr	r7, [sp, #16]
 80053ae:	e00c      	b.n	80053ca <_vfiprintf_r+0x942>
 80053b0:	f7ff fb28 	bl	8004a04 <__sprint_r.part.0>
 80053b4:	4649      	mov	r1, r9
 80053b6:	2800      	cmp	r0, #0
 80053b8:	f47f ac7a 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 80053bc:	e9dd 0312 	ldrd	r0, r3, [sp, #72]	; 0x48
 80053c0:	f100 0c01 	add.w	ip, r0, #1
 80053c4:	3c10      	subs	r4, #16
 80053c6:	2c10      	cmp	r4, #16
 80053c8:	dd18      	ble.n	80053fc <_vfiprintf_r+0x974>
 80053ca:	1c42      	adds	r2, r0, #1
 80053cc:	3310      	adds	r3, #16
 80053ce:	600e      	str	r6, [r1, #0]
 80053d0:	f100 0c02 	add.w	ip, r0, #2
 80053d4:	2a07      	cmp	r2, #7
 80053d6:	604d      	str	r5, [r1, #4]
 80053d8:	9313      	str	r3, [sp, #76]	; 0x4c
 80053da:	4610      	mov	r0, r2
 80053dc:	f101 0108 	add.w	r1, r1, #8
 80053e0:	9212      	str	r2, [sp, #72]	; 0x48
 80053e2:	ddef      	ble.n	80053c4 <_vfiprintf_r+0x93c>
 80053e4:	aa11      	add	r2, sp, #68	; 0x44
 80053e6:	4639      	mov	r1, r7
 80053e8:	4640      	mov	r0, r8
 80053ea:	2b00      	cmp	r3, #0
 80053ec:	d1e0      	bne.n	80053b0 <_vfiprintf_r+0x928>
 80053ee:	3c10      	subs	r4, #16
 80053f0:	f04f 0c01 	mov.w	ip, #1
 80053f4:	4618      	mov	r0, r3
 80053f6:	4649      	mov	r1, r9
 80053f8:	2c10      	cmp	r4, #16
 80053fa:	dce6      	bgt.n	80053ca <_vfiprintf_r+0x942>
 80053fc:	4667      	mov	r7, ip
 80053fe:	4423      	add	r3, r4
 8005400:	2f07      	cmp	r7, #7
 8005402:	e9c1 6400 	strd	r6, r4, [r1]
 8005406:	e9cd 7312 	strd	r7, r3, [sp, #72]	; 0x48
 800540a:	f77f ad97 	ble.w	8004f3c <_vfiprintf_r+0x4b4>
 800540e:	b14b      	cbz	r3, 8005424 <_vfiprintf_r+0x99c>
 8005410:	aa11      	add	r2, sp, #68	; 0x44
 8005412:	9904      	ldr	r1, [sp, #16]
 8005414:	9806      	ldr	r0, [sp, #24]
 8005416:	f7ff faf5 	bl	8004a04 <__sprint_r.part.0>
 800541a:	2800      	cmp	r0, #0
 800541c:	f47f ac48 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 8005420:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005422:	e58b      	b.n	8004f3c <_vfiprintf_r+0x4b4>
 8005424:	9b03      	ldr	r3, [sp, #12]
 8005426:	9a01      	ldr	r2, [sp, #4]
 8005428:	4593      	cmp	fp, r2
 800542a:	bfac      	ite	ge
 800542c:	445b      	addge	r3, fp
 800542e:	189b      	addlt	r3, r3, r2
 8005430:	9303      	str	r3, [sp, #12]
 8005432:	e58d      	b.n	8004f50 <_vfiprintf_r+0x4c8>
 8005434:	4614      	mov	r4, r2
 8005436:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800543a:	4617      	mov	r7, r2
 800543c:	e502      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 800543e:	bf00      	nop
 8005440:	0800abf0 	.word	0x0800abf0
 8005444:	0800abe0 	.word	0x0800abe0
 8005448:	f1bc 0f00 	cmp.w	ip, #0
 800544c:	f000 80a3 	beq.w	8005596 <_vfiprintf_r+0xb0e>
 8005450:	aa11      	add	r2, sp, #68	; 0x44
 8005452:	9904      	ldr	r1, [sp, #16]
 8005454:	9806      	ldr	r0, [sp, #24]
 8005456:	f7ff fad5 	bl	8004a04 <__sprint_r.part.0>
 800545a:	2800      	cmp	r0, #0
 800545c:	f47f ac28 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 8005460:	9812      	ldr	r0, [sp, #72]	; 0x48
 8005462:	a920      	add	r1, sp, #128	; 0x80
 8005464:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
 8005468:	46c8      	mov	r8, r9
 800546a:	3001      	adds	r0, #1
 800546c:	e547      	b.n	8004efe <_vfiprintf_r+0x476>
 800546e:	9212      	str	r2, [sp, #72]	; 0x48
 8005470:	46c8      	mov	r8, r9
 8005472:	f7ff bb5c 	b.w	8004b2e <_vfiprintf_r+0xa6>
 8005476:	9d02      	ldr	r5, [sp, #8]
 8005478:	2f00      	cmp	r7, #0
 800547a:	bf08      	it	eq
 800547c:	2e0a      	cmpeq	r6, #10
 800547e:	f080 809b 	bcs.w	80055b8 <_vfiprintf_r+0xb30>
 8005482:	3630      	adds	r6, #48	; 0x30
 8005484:	f10d 0377 	add.w	r3, sp, #119	; 0x77
 8005488:	9502      	str	r5, [sp, #8]
 800548a:	2701      	movs	r7, #1
 800548c:	9309      	str	r3, [sp, #36]	; 0x24
 800548e:	f88d 6077 	strb.w	r6, [sp, #119]	; 0x77
 8005492:	e4d7      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8005494:	461c      	mov	r4, r3
 8005496:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800549a:	e4d3      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 800549c:	2700      	movs	r7, #0
 800549e:	e46d      	b.n	8004d7c <_vfiprintf_r+0x2f4>
 80054a0:	17f7      	asrs	r7, r6, #31
 80054a2:	4632      	mov	r2, r6
 80054a4:	463b      	mov	r3, r7
 80054a6:	2a00      	cmp	r2, #0
 80054a8:	f173 0300 	sbcs.w	r3, r3, #0
 80054ac:	f6bf ad8e 	bge.w	8004fcc <_vfiprintf_r+0x544>
 80054b0:	222d      	movs	r2, #45	; 0x2d
 80054b2:	4276      	negs	r6, r6
 80054b4:	f04f 0301 	mov.w	r3, #1
 80054b8:	eb67 0747 	sbc.w	r7, r7, r7, lsl #1
 80054bc:	f88d 203f 	strb.w	r2, [sp, #63]	; 0x3f
 80054c0:	9207      	str	r2, [sp, #28]
 80054c2:	e4a1      	b.n	8004e08 <_vfiprintf_r+0x380>
 80054c4:	9b07      	ldr	r3, [sp, #28]
 80054c6:	2b00      	cmp	r3, #0
 80054c8:	d034      	beq.n	8005534 <_vfiprintf_r+0xaac>
 80054ca:	2302      	movs	r3, #2
 80054cc:	a910      	add	r1, sp, #64	; 0x40
 80054ce:	f10d 0880 	add.w	r8, sp, #128	; 0x80
 80054d2:	911e      	str	r1, [sp, #120]	; 0x78
 80054d4:	469c      	mov	ip, r3
 80054d6:	931f      	str	r3, [sp, #124]	; 0x7c
 80054d8:	e6f2      	b.n	80052c0 <_vfiprintf_r+0x838>
 80054da:	a920      	add	r1, sp, #128	; 0x80
 80054dc:	2001      	movs	r0, #1
 80054de:	4662      	mov	r2, ip
 80054e0:	46c8      	mov	r8, r9
 80054e2:	e504      	b.n	8004eee <_vfiprintf_r+0x466>
 80054e4:	f1bc 0f00 	cmp.w	ip, #0
 80054e8:	d043      	beq.n	8005572 <_vfiprintf_r+0xaea>
 80054ea:	aa11      	add	r2, sp, #68	; 0x44
 80054ec:	9904      	ldr	r1, [sp, #16]
 80054ee:	9806      	ldr	r0, [sp, #24]
 80054f0:	f7ff fa88 	bl	8004a04 <__sprint_r.part.0>
 80054f4:	2800      	cmp	r0, #0
 80054f6:	f47f abdb 	bne.w	8004cb0 <_vfiprintf_r+0x228>
 80054fa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80054fc:	46c8      	mov	r8, r9
 80054fe:	f8dd c04c 	ldr.w	ip, [sp, #76]	; 0x4c
 8005502:	1c50      	adds	r0, r2, #1
 8005504:	e4bf      	b.n	8004e86 <_vfiprintf_r+0x3fe>
 8005506:	1c48      	adds	r0, r1, #1
 8005508:	460a      	mov	r2, r1
 800550a:	4698      	mov	r8, r3
 800550c:	f103 0108 	add.w	r1, r3, #8
 8005510:	e4f1      	b.n	8004ef6 <_vfiprintf_r+0x46e>
 8005512:	9903      	ldr	r1, [sp, #12]
 8005514:	9305      	str	r3, [sp, #20]
 8005516:	17cd      	asrs	r5, r1, #31
 8005518:	4608      	mov	r0, r1
 800551a:	4629      	mov	r1, r5
 800551c:	e9c2 0100 	strd	r0, r1, [r2]
 8005520:	f7ff bae3 	b.w	8004aea <_vfiprintf_r+0x62>
 8005524:	0668      	lsls	r0, r5, #25
 8005526:	f04f 0700 	mov.w	r7, #0
 800552a:	f04f 0301 	mov.w	r3, #1
 800552e:	bf48      	it	mi
 8005530:	b2b6      	uxthmi	r6, r6
 8005532:	e465      	b.n	8004e00 <_vfiprintf_r+0x378>
 8005534:	4610      	mov	r0, r2
 8005536:	a920      	add	r1, sp, #128	; 0x80
 8005538:	4662      	mov	r2, ip
 800553a:	46c8      	mov	r8, r9
 800553c:	e4d7      	b.n	8004eee <_vfiprintf_r+0x466>
 800553e:	f1cb 0b00 	rsb	fp, fp, #0
 8005542:	9205      	str	r2, [sp, #20]
 8005544:	f7ff bbeb 	b.w	8004d1e <_vfiprintf_r+0x296>
 8005548:	3902      	subs	r1, #2
 800554a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800554c:	2330      	movs	r3, #48	; 0x30
 800554e:	9502      	str	r5, [sp, #8]
 8005550:	eba9 0701 	sub.w	r7, r9, r1
 8005554:	9109      	str	r1, [sp, #36]	; 0x24
 8005556:	f802 3c01 	strb.w	r3, [r2, #-1]
 800555a:	e473      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 800555c:	9809      	ldr	r0, [sp, #36]	; 0x24
 800555e:	2400      	movs	r4, #0
 8005560:	9605      	str	r6, [sp, #20]
 8005562:	9502      	str	r5, [sp, #8]
 8005564:	f7ff fa20 	bl	80049a8 <strlen>
 8005568:	f89d 303f 	ldrb.w	r3, [sp, #63]	; 0x3f
 800556c:	4607      	mov	r7, r0
 800556e:	9307      	str	r3, [sp, #28]
 8005570:	e468      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8005572:	f89d 203f 	ldrb.w	r2, [sp, #63]	; 0x3f
 8005576:	2a00      	cmp	r2, #0
 8005578:	d154      	bne.n	8005624 <_vfiprintf_r+0xb9c>
 800557a:	9b07      	ldr	r3, [sp, #28]
 800557c:	2b00      	cmp	r3, #0
 800557e:	f47f ae96 	bne.w	80052ae <_vfiprintf_r+0x826>
 8005582:	4662      	mov	r2, ip
 8005584:	a920      	add	r1, sp, #128	; 0x80
 8005586:	2001      	movs	r0, #1
 8005588:	46c8      	mov	r8, r9
 800558a:	e4b4      	b.n	8004ef6 <_vfiprintf_r+0x46e>
 800558c:	9903      	ldr	r1, [sp, #12]
 800558e:	6011      	str	r1, [r2, #0]
 8005590:	9305      	str	r3, [sp, #20]
 8005592:	f7ff baaa 	b.w	8004aea <_vfiprintf_r+0x62>
 8005596:	9909      	ldr	r1, [sp, #36]	; 0x24
 8005598:	2201      	movs	r2, #1
 800559a:	463b      	mov	r3, r7
 800559c:	971f      	str	r7, [sp, #124]	; 0x7c
 800559e:	911e      	str	r1, [sp, #120]	; 0x78
 80055a0:	a920      	add	r1, sp, #128	; 0x80
 80055a2:	e9cd 2712 	strd	r2, r7, [sp, #72]	; 0x48
 80055a6:	e4c0      	b.n	8004f2a <_vfiprintf_r+0x4a2>
 80055a8:	f89a 3001 	ldrb.w	r3, [sl, #1]
 80055ac:	f045 0520 	orr.w	r5, r5, #32
 80055b0:	f10a 0a01 	add.w	sl, sl, #1
 80055b4:	f7ff bacf 	b.w	8004b56 <_vfiprintf_r+0xce>
 80055b8:	f8cd a004 	str.w	sl, [sp, #4]
 80055bc:	46c2      	mov	sl, r8
 80055be:	46a0      	mov	r8, r4
 80055c0:	464c      	mov	r4, r9
 80055c2:	e000      	b.n	80055c6 <_vfiprintf_r+0xb3e>
 80055c4:	460f      	mov	r7, r1
 80055c6:	4630      	mov	r0, r6
 80055c8:	220a      	movs	r2, #10
 80055ca:	2300      	movs	r3, #0
 80055cc:	4639      	mov	r1, r7
 80055ce:	f7fa fe59 	bl	8000284 <__aeabi_uldivmod>
 80055d2:	3230      	adds	r2, #48	; 0x30
 80055d4:	4630      	mov	r0, r6
 80055d6:	4639      	mov	r1, r7
 80055d8:	f804 2d01 	strb.w	r2, [r4, #-1]!
 80055dc:	2300      	movs	r3, #0
 80055de:	220a      	movs	r2, #10
 80055e0:	f7fa fe50 	bl	8000284 <__aeabi_uldivmod>
 80055e4:	2f00      	cmp	r7, #0
 80055e6:	bf08      	it	eq
 80055e8:	2e0a      	cmpeq	r6, #10
 80055ea:	4606      	mov	r6, r0
 80055ec:	d2ea      	bcs.n	80055c4 <_vfiprintf_r+0xb3c>
 80055ee:	4623      	mov	r3, r4
 80055f0:	9409      	str	r4, [sp, #36]	; 0x24
 80055f2:	9502      	str	r5, [sp, #8]
 80055f4:	4644      	mov	r4, r8
 80055f6:	eba9 0703 	sub.w	r7, r9, r3
 80055fa:	46d0      	mov	r8, sl
 80055fc:	f8dd a004 	ldr.w	sl, [sp, #4]
 8005600:	e420      	b.n	8004e44 <_vfiprintf_r+0x3bc>
 8005602:	2c06      	cmp	r4, #6
 8005604:	4b27      	ldr	r3, [pc, #156]	; (80056a4 <_vfiprintf_r+0xc1c>)
 8005606:	9605      	str	r6, [sp, #20]
 8005608:	bf28      	it	cs
 800560a:	2406      	movcs	r4, #6
 800560c:	9309      	str	r3, [sp, #36]	; 0x24
 800560e:	4627      	mov	r7, r4
 8005610:	9401      	str	r4, [sp, #4]
 8005612:	e502      	b.n	800501a <_vfiprintf_r+0x592>
 8005614:	460b      	mov	r3, r1
 8005616:	4d24      	ldr	r5, [pc, #144]	; (80056a8 <_vfiprintf_r+0xc20>)
 8005618:	e620      	b.n	800525c <_vfiprintf_r+0x7d4>
 800561a:	a920      	add	r1, sp, #128	; 0x80
 800561c:	2001      	movs	r0, #1
 800561e:	4662      	mov	r2, ip
 8005620:	46c8      	mov	r8, r9
 8005622:	e468      	b.n	8004ef6 <_vfiprintf_r+0x46e>
 8005624:	2201      	movs	r2, #1
 8005626:	f10d 003f 	add.w	r0, sp, #63	; 0x3f
 800562a:	a920      	add	r1, sp, #128	; 0x80
 800562c:	4694      	mov	ip, r2
 800562e:	e9cd 021e 	strd	r0, r2, [sp, #120]	; 0x78
 8005632:	4610      	mov	r0, r2
 8005634:	e438      	b.n	8004ea8 <_vfiprintf_r+0x420>
 8005636:	f88d 003f 	strb.w	r0, [sp, #63]	; 0x3f
 800563a:	e53f      	b.n	80050bc <_vfiprintf_r+0x634>
 800563c:	f88d 003f 	strb.w	r0, [sp, #63]	; 0x3f
 8005640:	e4f1      	b.n	8005026 <_vfiprintf_r+0x59e>
 8005642:	f88d 003f 	strb.w	r0, [sp, #63]	; 0x3f
 8005646:	e508      	b.n	800505a <_vfiprintf_r+0x5d2>
 8005648:	f88d 003f 	strb.w	r0, [sp, #63]	; 0x3f
 800564c:	f7ff bb8a 	b.w	8004d64 <_vfiprintf_r+0x2dc>
 8005650:	f88d 003f 	strb.w	r0, [sp, #63]	; 0x3f
 8005654:	e489      	b.n	8004f6a <_vfiprintf_r+0x4e2>
 8005656:	f88d 003f 	strb.w	r0, [sp, #63]	; 0x3f
 800565a:	e4a6      	b.n	8004faa <_vfiprintf_r+0x522>
 800565c:	f89d 303f 	ldrb.w	r3, [sp, #63]	; 0x3f
 8005660:	4627      	mov	r7, r4
 8005662:	9605      	str	r6, [sp, #20]
 8005664:	4604      	mov	r4, r0
 8005666:	9502      	str	r5, [sp, #8]
 8005668:	9307      	str	r3, [sp, #28]
 800566a:	f7ff bbeb 	b.w	8004e44 <_vfiprintf_r+0x3bc>
 800566e:	468e      	mov	lr, r1
 8005670:	4e0e      	ldr	r6, [pc, #56]	; (80056ac <_vfiprintf_r+0xc24>)
 8005672:	e663      	b.n	800533c <_vfiprintf_r+0x8b4>
 8005674:	1c47      	adds	r7, r0, #1
 8005676:	4e0d      	ldr	r6, [pc, #52]	; (80056ac <_vfiprintf_r+0xc24>)
 8005678:	e6c1      	b.n	80053fe <_vfiprintf_r+0x976>
 800567a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800567e:	9303      	str	r3, [sp, #12]
 8005680:	f7ff bb1b 	b.w	8004cba <_vfiprintf_r+0x232>
 8005684:	460b      	mov	r3, r1
 8005686:	4d08      	ldr	r5, [pc, #32]	; (80056a8 <_vfiprintf_r+0xc20>)
 8005688:	4601      	mov	r1, r0
 800568a:	e58c      	b.n	80051a6 <_vfiprintf_r+0x71e>
 800568c:	9a05      	ldr	r2, [sp, #20]
 800568e:	f89a 3001 	ldrb.w	r3, [sl, #1]
 8005692:	46a2      	mov	sl, r4
 8005694:	f852 4b04 	ldr.w	r4, [r2], #4
 8005698:	ea44 74e4 	orr.w	r4, r4, r4, asr #31
 800569c:	9205      	str	r2, [sp, #20]
 800569e:	f7ff ba5a 	b.w	8004b56 <_vfiprintf_r+0xce>
 80056a2:	bf00      	nop
 80056a4:	0800adbc 	.word	0x0800adbc
 80056a8:	0800abf0 	.word	0x0800abf0
 80056ac:	0800abe0 	.word	0x0800abe0

080056b0 <vfiprintf>:
 80056b0:	b410      	push	{r4}
 80056b2:	4c04      	ldr	r4, [pc, #16]	; (80056c4 <vfiprintf+0x14>)
 80056b4:	4613      	mov	r3, r2
 80056b6:	460a      	mov	r2, r1
 80056b8:	4601      	mov	r1, r0
 80056ba:	6820      	ldr	r0, [r4, #0]
 80056bc:	bc10      	pop	{r4}
 80056be:	f7ff b9e3 	b.w	8004a88 <_vfiprintf_r>
 80056c2:	bf00      	nop
 80056c4:	20000000 	.word	0x20000000

080056c8 <__sbprintf>:
 80056c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80056ca:	f2ad 4d6c 	subw	sp, sp, #1132	; 0x46c
 80056ce:	460c      	mov	r4, r1
 80056d0:	2600      	movs	r6, #0
 80056d2:	8989      	ldrh	r1, [r1, #12]
 80056d4:	ad1a      	add	r5, sp, #104	; 0x68
 80056d6:	f44f 6780 	mov.w	r7, #1024	; 0x400
 80056da:	9606      	str	r6, [sp, #24]
 80056dc:	f021 0102 	bic.w	r1, r1, #2
 80056e0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80056e2:	9500      	str	r5, [sp, #0]
 80056e4:	9504      	str	r5, [sp, #16]
 80056e6:	69e5      	ldr	r5, [r4, #28]
 80056e8:	9619      	str	r6, [sp, #100]	; 0x64
 80056ea:	9507      	str	r5, [sp, #28]
 80056ec:	89e6      	ldrh	r6, [r4, #14]
 80056ee:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80056f0:	f8ad 100c 	strh.w	r1, [sp, #12]
 80056f4:	4669      	mov	r1, sp
 80056f6:	f8ad 600e 	strh.w	r6, [sp, #14]
 80056fa:	4606      	mov	r6, r0
 80056fc:	9509      	str	r5, [sp, #36]	; 0x24
 80056fe:	9702      	str	r7, [sp, #8]
 8005700:	9705      	str	r7, [sp, #20]
 8005702:	f7ff f9c1 	bl	8004a88 <_vfiprintf_r>
 8005706:	1e05      	subs	r5, r0, #0
 8005708:	db07      	blt.n	800571a <__sbprintf+0x52>
 800570a:	4630      	mov	r0, r6
 800570c:	4669      	mov	r1, sp
 800570e:	f7fd fd5d 	bl	80031cc <_fflush_r>
 8005712:	2800      	cmp	r0, #0
 8005714:	bf18      	it	ne
 8005716:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800571a:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800571e:	065b      	lsls	r3, r3, #25
 8005720:	d503      	bpl.n	800572a <__sbprintf+0x62>
 8005722:	89a3      	ldrh	r3, [r4, #12]
 8005724:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005728:	81a3      	strh	r3, [r4, #12]
 800572a:	4628      	mov	r0, r5
 800572c:	f20d 4d6c 	addw	sp, sp, #1132	; 0x46c
 8005730:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005732:	bf00      	nop

08005734 <_write_r>:
 8005734:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005736:	460e      	mov	r6, r1
 8005738:	4c08      	ldr	r4, [pc, #32]	; (800575c <_write_r+0x28>)
 800573a:	2500      	movs	r5, #0
 800573c:	4611      	mov	r1, r2
 800573e:	4607      	mov	r7, r0
 8005740:	461a      	mov	r2, r3
 8005742:	4630      	mov	r0, r6
 8005744:	6025      	str	r5, [r4, #0]
 8005746:	f001 fe2a 	bl	800739e <_write>
 800574a:	1c43      	adds	r3, r0, #1
 800574c:	d000      	beq.n	8005750 <_write_r+0x1c>
 800574e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005750:	6823      	ldr	r3, [r4, #0]
 8005752:	2b00      	cmp	r3, #0
 8005754:	d0fb      	beq.n	800574e <_write_r+0x1a>
 8005756:	603b      	str	r3, [r7, #0]
 8005758:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800575a:	bf00      	nop
 800575c:	20000b2c 	.word	0x20000b2c

08005760 <__assert_func>:
 8005760:	4c0a      	ldr	r4, [pc, #40]	; (800578c <__assert_func+0x2c>)
 8005762:	461d      	mov	r5, r3
 8005764:	4606      	mov	r6, r0
 8005766:	6823      	ldr	r3, [r4, #0]
 8005768:	b500      	push	{lr}
 800576a:	68d8      	ldr	r0, [r3, #12]
 800576c:	b085      	sub	sp, #20
 800576e:	b152      	cbz	r2, 8005786 <__assert_func+0x26>
 8005770:	4c07      	ldr	r4, [pc, #28]	; (8005790 <__assert_func+0x30>)
 8005772:	9202      	str	r2, [sp, #8]
 8005774:	4633      	mov	r3, r6
 8005776:	462a      	mov	r2, r5
 8005778:	9100      	str	r1, [sp, #0]
 800577a:	9401      	str	r4, [sp, #4]
 800577c:	4905      	ldr	r1, [pc, #20]	; (8005794 <__assert_func+0x34>)
 800577e:	f000 f8b1 	bl	80058e4 <fiprintf>
 8005782:	f000 fe97 	bl	80064b4 <abort>
 8005786:	4c04      	ldr	r4, [pc, #16]	; (8005798 <__assert_func+0x38>)
 8005788:	4622      	mov	r2, r4
 800578a:	e7f2      	b.n	8005772 <__assert_func+0x12>
 800578c:	20000000 	.word	0x20000000
 8005790:	0800ae54 	.word	0x0800ae54
 8005794:	0800ae64 	.word	0x0800ae64
 8005798:	0800ae60 	.word	0x0800ae60

0800579c <__assert>:
 800579c:	b508      	push	{r3, lr}
 800579e:	4613      	mov	r3, r2
 80057a0:	2200      	movs	r2, #0
 80057a2:	f7ff ffdd 	bl	8005760 <__assert_func>
 80057a6:	bf00      	nop

080057a8 <_calloc_r>:
 80057a8:	b510      	push	{r4, lr}
 80057aa:	fb02 f101 	mul.w	r1, r2, r1
 80057ae:	f7fe f84b 	bl	8003848 <_malloc_r>
 80057b2:	4604      	mov	r4, r0
 80057b4:	b168      	cbz	r0, 80057d2 <_calloc_r+0x2a>
 80057b6:	f850 2c04 	ldr.w	r2, [r0, #-4]
 80057ba:	f022 0203 	bic.w	r2, r2, #3
 80057be:	3a04      	subs	r2, #4
 80057c0:	2a24      	cmp	r2, #36	; 0x24
 80057c2:	d814      	bhi.n	80057ee <_calloc_r+0x46>
 80057c4:	2a13      	cmp	r2, #19
 80057c6:	d806      	bhi.n	80057d6 <_calloc_r+0x2e>
 80057c8:	4602      	mov	r2, r0
 80057ca:	2300      	movs	r3, #0
 80057cc:	e9c2 3300 	strd	r3, r3, [r2]
 80057d0:	6093      	str	r3, [r2, #8]
 80057d2:	4620      	mov	r0, r4
 80057d4:	bd10      	pop	{r4, pc}
 80057d6:	2300      	movs	r3, #0
 80057d8:	2a1b      	cmp	r2, #27
 80057da:	e9c0 3300 	strd	r3, r3, [r0]
 80057de:	d90b      	bls.n	80057f8 <_calloc_r+0x50>
 80057e0:	2a24      	cmp	r2, #36	; 0x24
 80057e2:	e9c0 3302 	strd	r3, r3, [r0, #8]
 80057e6:	d00a      	beq.n	80057fe <_calloc_r+0x56>
 80057e8:	f100 0210 	add.w	r2, r0, #16
 80057ec:	e7ed      	b.n	80057ca <_calloc_r+0x22>
 80057ee:	2100      	movs	r1, #0
 80057f0:	f7fa ff10 	bl	8000614 <memset>
 80057f4:	4620      	mov	r0, r4
 80057f6:	bd10      	pop	{r4, pc}
 80057f8:	f100 0208 	add.w	r2, r0, #8
 80057fc:	e7e5      	b.n	80057ca <_calloc_r+0x22>
 80057fe:	6103      	str	r3, [r0, #16]
 8005800:	f100 0218 	add.w	r2, r0, #24
 8005804:	6143      	str	r3, [r0, #20]
 8005806:	e7e0      	b.n	80057ca <_calloc_r+0x22>

08005808 <_close_r>:
 8005808:	b538      	push	{r3, r4, r5, lr}
 800580a:	2300      	movs	r3, #0
 800580c:	4c06      	ldr	r4, [pc, #24]	; (8005828 <_close_r+0x20>)
 800580e:	4605      	mov	r5, r0
 8005810:	4608      	mov	r0, r1
 8005812:	6023      	str	r3, [r4, #0]
 8005814:	f001 fddf 	bl	80073d6 <_close>
 8005818:	1c43      	adds	r3, r0, #1
 800581a:	d000      	beq.n	800581e <_close_r+0x16>
 800581c:	bd38      	pop	{r3, r4, r5, pc}
 800581e:	6823      	ldr	r3, [r4, #0]
 8005820:	2b00      	cmp	r3, #0
 8005822:	d0fb      	beq.n	800581c <_close_r+0x14>
 8005824:	602b      	str	r3, [r5, #0]
 8005826:	bd38      	pop	{r3, r4, r5, pc}
 8005828:	20000b2c 	.word	0x20000b2c

0800582c <_fclose_r>:
 800582c:	b570      	push	{r4, r5, r6, lr}
 800582e:	b139      	cbz	r1, 8005840 <_fclose_r+0x14>
 8005830:	4605      	mov	r5, r0
 8005832:	460c      	mov	r4, r1
 8005834:	b108      	cbz	r0, 800583a <_fclose_r+0xe>
 8005836:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005838:	b383      	cbz	r3, 800589c <_fclose_r+0x70>
 800583a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800583e:	b913      	cbnz	r3, 8005846 <_fclose_r+0x1a>
 8005840:	2600      	movs	r6, #0
 8005842:	4630      	mov	r0, r6
 8005844:	bd70      	pop	{r4, r5, r6, pc}
 8005846:	4621      	mov	r1, r4
 8005848:	4628      	mov	r0, r5
 800584a:	f7fd fc1b 	bl	8003084 <__sflush_r>
 800584e:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8005850:	4606      	mov	r6, r0
 8005852:	b133      	cbz	r3, 8005862 <_fclose_r+0x36>
 8005854:	69e1      	ldr	r1, [r4, #28]
 8005856:	4628      	mov	r0, r5
 8005858:	4798      	blx	r3
 800585a:	2800      	cmp	r0, #0
 800585c:	bfb8      	it	lt
 800585e:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8005862:	89a3      	ldrh	r3, [r4, #12]
 8005864:	061b      	lsls	r3, r3, #24
 8005866:	d420      	bmi.n	80058aa <_fclose_r+0x7e>
 8005868:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800586a:	b141      	cbz	r1, 800587e <_fclose_r+0x52>
 800586c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005870:	4299      	cmp	r1, r3
 8005872:	d002      	beq.n	800587a <_fclose_r+0x4e>
 8005874:	4628      	mov	r0, r5
 8005876:	f7fd fe1f 	bl	80034b8 <_free_r>
 800587a:	2300      	movs	r3, #0
 800587c:	6323      	str	r3, [r4, #48]	; 0x30
 800587e:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8005880:	b121      	cbz	r1, 800588c <_fclose_r+0x60>
 8005882:	4628      	mov	r0, r5
 8005884:	f7fd fe18 	bl	80034b8 <_free_r>
 8005888:	2300      	movs	r3, #0
 800588a:	6463      	str	r3, [r4, #68]	; 0x44
 800588c:	f7fd fda8 	bl	80033e0 <__sfp_lock_acquire>
 8005890:	2300      	movs	r3, #0
 8005892:	81a3      	strh	r3, [r4, #12]
 8005894:	f7fd fda6 	bl	80033e4 <__sfp_lock_release>
 8005898:	4630      	mov	r0, r6
 800589a:	bd70      	pop	{r4, r5, r6, pc}
 800589c:	f7fd fd9c 	bl	80033d8 <__sinit>
 80058a0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058a4:	2b00      	cmp	r3, #0
 80058a6:	d0cb      	beq.n	8005840 <_fclose_r+0x14>
 80058a8:	e7cd      	b.n	8005846 <_fclose_r+0x1a>
 80058aa:	6921      	ldr	r1, [r4, #16]
 80058ac:	4628      	mov	r0, r5
 80058ae:	f7fd fe03 	bl	80034b8 <_free_r>
 80058b2:	e7d9      	b.n	8005868 <_fclose_r+0x3c>

080058b4 <fclose>:
 80058b4:	4b02      	ldr	r3, [pc, #8]	; (80058c0 <fclose+0xc>)
 80058b6:	4601      	mov	r1, r0
 80058b8:	6818      	ldr	r0, [r3, #0]
 80058ba:	f7ff bfb7 	b.w	800582c <_fclose_r>
 80058be:	bf00      	nop
 80058c0:	20000000 	.word	0x20000000

080058c4 <_fiprintf_r>:
 80058c4:	b40c      	push	{r2, r3}
 80058c6:	b510      	push	{r4, lr}
 80058c8:	b082      	sub	sp, #8
 80058ca:	ac04      	add	r4, sp, #16
 80058cc:	f854 2b04 	ldr.w	r2, [r4], #4
 80058d0:	4623      	mov	r3, r4
 80058d2:	9401      	str	r4, [sp, #4]
 80058d4:	f7ff f8d8 	bl	8004a88 <_vfiprintf_r>
 80058d8:	b002      	add	sp, #8
 80058da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80058de:	b002      	add	sp, #8
 80058e0:	4770      	bx	lr
 80058e2:	bf00      	nop

080058e4 <fiprintf>:
 80058e4:	b40e      	push	{r1, r2, r3}
 80058e6:	b510      	push	{r4, lr}
 80058e8:	b083      	sub	sp, #12
 80058ea:	4b07      	ldr	r3, [pc, #28]	; (8005908 <fiprintf+0x24>)
 80058ec:	4601      	mov	r1, r0
 80058ee:	ac05      	add	r4, sp, #20
 80058f0:	6818      	ldr	r0, [r3, #0]
 80058f2:	f854 2b04 	ldr.w	r2, [r4], #4
 80058f6:	4623      	mov	r3, r4
 80058f8:	9401      	str	r4, [sp, #4]
 80058fa:	f7ff f8c5 	bl	8004a88 <_vfiprintf_r>
 80058fe:	b003      	add	sp, #12
 8005900:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005904:	b003      	add	sp, #12
 8005906:	4770      	bx	lr
 8005908:	20000000 	.word	0x20000000

0800590c <__fputwc>:
 800590c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8005910:	b082      	sub	sp, #8
 8005912:	4680      	mov	r8, r0
 8005914:	4689      	mov	r9, r1
 8005916:	4614      	mov	r4, r2
 8005918:	f000 fa54 	bl	8005dc4 <__locale_mb_cur_max>
 800591c:	2801      	cmp	r0, #1
 800591e:	d103      	bne.n	8005928 <__fputwc+0x1c>
 8005920:	f109 33ff 	add.w	r3, r9, #4294967295	; 0xffffffff
 8005924:	2bfe      	cmp	r3, #254	; 0xfe
 8005926:	d931      	bls.n	800598c <__fputwc+0x80>
 8005928:	464a      	mov	r2, r9
 800592a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800592e:	a901      	add	r1, sp, #4
 8005930:	4640      	mov	r0, r8
 8005932:	f000 fd69 	bl	8006408 <_wcrtomb_r>
 8005936:	1c42      	adds	r2, r0, #1
 8005938:	4606      	mov	r6, r0
 800593a:	d032      	beq.n	80059a2 <__fputwc+0x96>
 800593c:	b360      	cbz	r0, 8005998 <__fputwc+0x8c>
 800593e:	f89d c004 	ldrb.w	ip, [sp, #4]
 8005942:	2500      	movs	r5, #0
 8005944:	f10d 0a04 	add.w	sl, sp, #4
 8005948:	e00c      	b.n	8005964 <__fputwc+0x58>
 800594a:	f1bc 0f0a 	cmp.w	ip, #10
 800594e:	d014      	beq.n	800597a <__fputwc+0x6e>
 8005950:	6823      	ldr	r3, [r4, #0]
 8005952:	1c5a      	adds	r2, r3, #1
 8005954:	6022      	str	r2, [r4, #0]
 8005956:	f883 c000 	strb.w	ip, [r3]
 800595a:	3501      	adds	r5, #1
 800595c:	42b5      	cmp	r5, r6
 800595e:	d21b      	bcs.n	8005998 <__fputwc+0x8c>
 8005960:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8005964:	68a3      	ldr	r3, [r4, #8]
 8005966:	3b01      	subs	r3, #1
 8005968:	2b00      	cmp	r3, #0
 800596a:	60a3      	str	r3, [r4, #8]
 800596c:	daf0      	bge.n	8005950 <__fputwc+0x44>
 800596e:	69a7      	ldr	r7, [r4, #24]
 8005970:	4661      	mov	r1, ip
 8005972:	4622      	mov	r2, r4
 8005974:	4640      	mov	r0, r8
 8005976:	42bb      	cmp	r3, r7
 8005978:	dae7      	bge.n	800594a <__fputwc+0x3e>
 800597a:	f000 fce5 	bl	8006348 <__swbuf_r>
 800597e:	1c43      	adds	r3, r0, #1
 8005980:	d1eb      	bne.n	800595a <__fputwc+0x4e>
 8005982:	4606      	mov	r6, r0
 8005984:	4630      	mov	r0, r6
 8005986:	b002      	add	sp, #8
 8005988:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800598c:	fa5f fc89 	uxtb.w	ip, r9
 8005990:	4606      	mov	r6, r0
 8005992:	f88d c004 	strb.w	ip, [sp, #4]
 8005996:	e7d4      	b.n	8005942 <__fputwc+0x36>
 8005998:	464e      	mov	r6, r9
 800599a:	4630      	mov	r0, r6
 800599c:	b002      	add	sp, #8
 800599e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80059a2:	89a3      	ldrh	r3, [r4, #12]
 80059a4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80059a8:	81a3      	strh	r3, [r4, #12]
 80059aa:	e7eb      	b.n	8005984 <__fputwc+0x78>

080059ac <_fputwc_r>:
 80059ac:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 80059b0:	f413 5f00 	tst.w	r3, #8192	; 0x2000
 80059b4:	d10a      	bne.n	80059cc <_fputwc_r+0x20>
 80059b6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80059ba:	b410      	push	{r4}
 80059bc:	6e54      	ldr	r4, [r2, #100]	; 0x64
 80059be:	8193      	strh	r3, [r2, #12]
 80059c0:	f444 5400 	orr.w	r4, r4, #8192	; 0x2000
 80059c4:	6654      	str	r4, [r2, #100]	; 0x64
 80059c6:	bc10      	pop	{r4}
 80059c8:	f7ff bfa0 	b.w	800590c <__fputwc>
 80059cc:	f7ff bf9e 	b.w	800590c <__fputwc>

080059d0 <fputwc>:
 80059d0:	4b0e      	ldr	r3, [pc, #56]	; (8005a0c <fputwc+0x3c>)
 80059d2:	b570      	push	{r4, r5, r6, lr}
 80059d4:	681d      	ldr	r5, [r3, #0]
 80059d6:	4606      	mov	r6, r0
 80059d8:	460c      	mov	r4, r1
 80059da:	b10d      	cbz	r5, 80059e0 <fputwc+0x10>
 80059dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80059de:	b18b      	cbz	r3, 8005a04 <fputwc+0x34>
 80059e0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059e4:	049a      	lsls	r2, r3, #18
 80059e6:	d406      	bmi.n	80059f6 <fputwc+0x26>
 80059e8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80059ea:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80059ee:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80059f2:	81a3      	strh	r3, [r4, #12]
 80059f4:	6662      	str	r2, [r4, #100]	; 0x64
 80059f6:	4622      	mov	r2, r4
 80059f8:	4631      	mov	r1, r6
 80059fa:	4628      	mov	r0, r5
 80059fc:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8005a00:	f7ff bf84 	b.w	800590c <__fputwc>
 8005a04:	4628      	mov	r0, r5
 8005a06:	f7fd fce7 	bl	80033d8 <__sinit>
 8005a0a:	e7e9      	b.n	80059e0 <fputwc+0x10>
 8005a0c:	20000000 	.word	0x20000000

08005a10 <_fstat_r>:
 8005a10:	b570      	push	{r4, r5, r6, lr}
 8005a12:	460d      	mov	r5, r1
 8005a14:	2300      	movs	r3, #0
 8005a16:	4c07      	ldr	r4, [pc, #28]	; (8005a34 <_fstat_r+0x24>)
 8005a18:	4606      	mov	r6, r0
 8005a1a:	4611      	mov	r1, r2
 8005a1c:	4628      	mov	r0, r5
 8005a1e:	6023      	str	r3, [r4, #0]
 8005a20:	f001 fce4 	bl	80073ec <_fstat>
 8005a24:	1c43      	adds	r3, r0, #1
 8005a26:	d000      	beq.n	8005a2a <_fstat_r+0x1a>
 8005a28:	bd70      	pop	{r4, r5, r6, pc}
 8005a2a:	6823      	ldr	r3, [r4, #0]
 8005a2c:	2b00      	cmp	r3, #0
 8005a2e:	d0fb      	beq.n	8005a28 <_fstat_r+0x18>
 8005a30:	6033      	str	r3, [r6, #0]
 8005a32:	bd70      	pop	{r4, r5, r6, pc}
 8005a34:	20000b2c 	.word	0x20000b2c

08005a38 <__sfvwrite_r>:
 8005a38:	6893      	ldr	r3, [r2, #8]
 8005a3a:	2b00      	cmp	r3, #0
 8005a3c:	f000 8110 	beq.w	8005c60 <__sfvwrite_r+0x228>
 8005a40:	f9b1 c00c 	ldrsh.w	ip, [r1, #12]
 8005a44:	fa1f fc8c 	uxth.w	ip, ip
 8005a48:	f01c 0f08 	tst.w	ip, #8
 8005a4c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a50:	460c      	mov	r4, r1
 8005a52:	b083      	sub	sp, #12
 8005a54:	4681      	mov	r9, r0
 8005a56:	4690      	mov	r8, r2
 8005a58:	d035      	beq.n	8005ac6 <__sfvwrite_r+0x8e>
 8005a5a:	690b      	ldr	r3, [r1, #16]
 8005a5c:	b39b      	cbz	r3, 8005ac6 <__sfvwrite_r+0x8e>
 8005a5e:	f01c 0302 	ands.w	r3, ip, #2
 8005a62:	f8d8 6000 	ldr.w	r6, [r8]
 8005a66:	d03e      	beq.n	8005ae6 <__sfvwrite_r+0xae>
 8005a68:	2700      	movs	r7, #0
 8005a6a:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005a6e:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005a72:	463d      	mov	r5, r7
 8005a74:	f8df a2e4 	ldr.w	sl, [pc, #740]	; 8005d5c <__sfvwrite_r+0x324>
 8005a78:	4555      	cmp	r5, sl
 8005a7a:	462b      	mov	r3, r5
 8005a7c:	463a      	mov	r2, r7
 8005a7e:	4661      	mov	r1, ip
 8005a80:	bf28      	it	cs
 8005a82:	4653      	movcs	r3, sl
 8005a84:	4648      	mov	r0, r9
 8005a86:	b1d5      	cbz	r5, 8005abe <__sfvwrite_r+0x86>
 8005a88:	47d8      	blx	fp
 8005a8a:	2800      	cmp	r0, #0
 8005a8c:	f340 80de 	ble.w	8005c4c <__sfvwrite_r+0x214>
 8005a90:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a94:	4407      	add	r7, r0
 8005a96:	1a2d      	subs	r5, r5, r0
 8005a98:	1a18      	subs	r0, r3, r0
 8005a9a:	f8c8 0008 	str.w	r0, [r8, #8]
 8005a9e:	2800      	cmp	r0, #0
 8005aa0:	f000 80c3 	beq.w	8005c2a <__sfvwrite_r+0x1f2>
 8005aa4:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005aa8:	4555      	cmp	r5, sl
 8005aaa:	462b      	mov	r3, r5
 8005aac:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ab0:	bf28      	it	cs
 8005ab2:	4653      	movcs	r3, sl
 8005ab4:	463a      	mov	r2, r7
 8005ab6:	4661      	mov	r1, ip
 8005ab8:	4648      	mov	r0, r9
 8005aba:	2d00      	cmp	r5, #0
 8005abc:	d1e4      	bne.n	8005a88 <__sfvwrite_r+0x50>
 8005abe:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005ac2:	3608      	adds	r6, #8
 8005ac4:	e7d8      	b.n	8005a78 <__sfvwrite_r+0x40>
 8005ac6:	4621      	mov	r1, r4
 8005ac8:	4648      	mov	r0, r9
 8005aca:	f7fc fa0f 	bl	8001eec <__swsetup_r>
 8005ace:	2800      	cmp	r0, #0
 8005ad0:	f040 813f 	bne.w	8005d52 <__sfvwrite_r+0x31a>
 8005ad4:	f9b4 c00c 	ldrsh.w	ip, [r4, #12]
 8005ad8:	f8d8 6000 	ldr.w	r6, [r8]
 8005adc:	fa1f fc8c 	uxth.w	ip, ip
 8005ae0:	f01c 0302 	ands.w	r3, ip, #2
 8005ae4:	d1c0      	bne.n	8005a68 <__sfvwrite_r+0x30>
 8005ae6:	f01c 0a01 	ands.w	sl, ip, #1
 8005aea:	f040 80bb 	bne.w	8005c64 <__sfvwrite_r+0x22c>
 8005aee:	68a7      	ldr	r7, [r4, #8]
 8005af0:	4655      	mov	r5, sl
 8005af2:	6820      	ldr	r0, [r4, #0]
 8005af4:	2d00      	cmp	r5, #0
 8005af6:	d05c      	beq.n	8005bb2 <__sfvwrite_r+0x17a>
 8005af8:	f41c 7f00 	tst.w	ip, #512	; 0x200
 8005afc:	f000 80c6 	beq.w	8005c8c <__sfvwrite_r+0x254>
 8005b00:	42af      	cmp	r7, r5
 8005b02:	463b      	mov	r3, r7
 8005b04:	f200 80f4 	bhi.w	8005cf0 <__sfvwrite_r+0x2b8>
 8005b08:	f41c 6f90 	tst.w	ip, #1152	; 0x480
 8005b0c:	d032      	beq.n	8005b74 <__sfvwrite_r+0x13c>
 8005b0e:	1c6a      	adds	r2, r5, #1
 8005b10:	e9d4 1304 	ldrd	r1, r3, [r4, #16]
 8005b14:	eb13 0343 	adds.w	r3, r3, r3, lsl #1
 8005b18:	eba0 0701 	sub.w	r7, r0, r1
 8005b1c:	bf48      	it	mi
 8005b1e:	3301      	addmi	r3, #1
 8005b20:	ea4f 0b63 	mov.w	fp, r3, asr #1
 8005b24:	4613      	mov	r3, r2
 8005b26:	443b      	add	r3, r7
 8005b28:	465a      	mov	r2, fp
 8005b2a:	455b      	cmp	r3, fp
 8005b2c:	d901      	bls.n	8005b32 <__sfvwrite_r+0xfa>
 8005b2e:	469b      	mov	fp, r3
 8005b30:	461a      	mov	r2, r3
 8005b32:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8005b36:	f000 80f3 	beq.w	8005d20 <__sfvwrite_r+0x2e8>
 8005b3a:	4611      	mov	r1, r2
 8005b3c:	4648      	mov	r0, r9
 8005b3e:	f7fd fe83 	bl	8003848 <_malloc_r>
 8005b42:	2800      	cmp	r0, #0
 8005b44:	f000 80ff 	beq.w	8005d46 <__sfvwrite_r+0x30e>
 8005b48:	463a      	mov	r2, r7
 8005b4a:	6921      	ldr	r1, [r4, #16]
 8005b4c:	9001      	str	r0, [sp, #4]
 8005b4e:	f7fe f989 	bl	8003e64 <memcpy>
 8005b52:	89a2      	ldrh	r2, [r4, #12]
 8005b54:	9b01      	ldr	r3, [sp, #4]
 8005b56:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005b5a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005b5e:	81a2      	strh	r2, [r4, #12]
 8005b60:	19d8      	adds	r0, r3, r7
 8005b62:	ebab 0207 	sub.w	r2, fp, r7
 8005b66:	6123      	str	r3, [r4, #16]
 8005b68:	462f      	mov	r7, r5
 8005b6a:	462b      	mov	r3, r5
 8005b6c:	6020      	str	r0, [r4, #0]
 8005b6e:	60a2      	str	r2, [r4, #8]
 8005b70:	f8c4 b014 	str.w	fp, [r4, #20]
 8005b74:	461a      	mov	r2, r3
 8005b76:	4651      	mov	r1, sl
 8005b78:	9301      	str	r3, [sp, #4]
 8005b7a:	f000 f967 	bl	8005e4c <memmove>
 8005b7e:	68a1      	ldr	r1, [r4, #8]
 8005b80:	46ab      	mov	fp, r5
 8005b82:	6822      	ldr	r2, [r4, #0]
 8005b84:	2500      	movs	r5, #0
 8005b86:	9b01      	ldr	r3, [sp, #4]
 8005b88:	1bcf      	subs	r7, r1, r7
 8005b8a:	4413      	add	r3, r2
 8005b8c:	60a7      	str	r7, [r4, #8]
 8005b8e:	6023      	str	r3, [r4, #0]
 8005b90:	f8d8 0008 	ldr.w	r0, [r8, #8]
 8005b94:	44da      	add	sl, fp
 8005b96:	eba0 000b 	sub.w	r0, r0, fp
 8005b9a:	f8c8 0008 	str.w	r0, [r8, #8]
 8005b9e:	2800      	cmp	r0, #0
 8005ba0:	d043      	beq.n	8005c2a <__sfvwrite_r+0x1f2>
 8005ba2:	f9b4 c00c 	ldrsh.w	ip, [r4, #12]
 8005ba6:	68a7      	ldr	r7, [r4, #8]
 8005ba8:	fa1f fc8c 	uxth.w	ip, ip
 8005bac:	6820      	ldr	r0, [r4, #0]
 8005bae:	2d00      	cmp	r5, #0
 8005bb0:	d1a2      	bne.n	8005af8 <__sfvwrite_r+0xc0>
 8005bb2:	e9d6 a500 	ldrd	sl, r5, [r6]
 8005bb6:	3608      	adds	r6, #8
 8005bb8:	e79c      	b.n	8005af4 <__sfvwrite_r+0xbc>
 8005bba:	f10b 0308 	add.w	r3, fp, #8
 8005bbe:	f853 7c04 	ldr.w	r7, [r3, #-4]
 8005bc2:	469b      	mov	fp, r3
 8005bc4:	f853 6c08 	ldr.w	r6, [r3, #-8]
 8005bc8:	3308      	adds	r3, #8
 8005bca:	2f00      	cmp	r7, #0
 8005bcc:	d0f7      	beq.n	8005bbe <__sfvwrite_r+0x186>
 8005bce:	463a      	mov	r2, r7
 8005bd0:	210a      	movs	r1, #10
 8005bd2:	4630      	mov	r0, r6
 8005bd4:	f7fe f900 	bl	8003dd8 <memchr>
 8005bd8:	2800      	cmp	r0, #0
 8005bda:	d054      	beq.n	8005c86 <__sfvwrite_r+0x24e>
 8005bdc:	3001      	adds	r0, #1
 8005bde:	eba0 0a06 	sub.w	sl, r0, r6
 8005be2:	4653      	mov	r3, sl
 8005be4:	42bb      	cmp	r3, r7
 8005be6:	6820      	ldr	r0, [r4, #0]
 8005be8:	6921      	ldr	r1, [r4, #16]
 8005bea:	6962      	ldr	r2, [r4, #20]
 8005bec:	bf28      	it	cs
 8005bee:	463b      	movcs	r3, r7
 8005bf0:	68a5      	ldr	r5, [r4, #8]
 8005bf2:	4288      	cmp	r0, r1
 8005bf4:	4415      	add	r5, r2
 8005bf6:	d901      	bls.n	8005bfc <__sfvwrite_r+0x1c4>
 8005bf8:	42ab      	cmp	r3, r5
 8005bfa:	dc1a      	bgt.n	8005c32 <__sfvwrite_r+0x1fa>
 8005bfc:	429a      	cmp	r2, r3
 8005bfe:	f300 8081 	bgt.w	8005d04 <__sfvwrite_r+0x2cc>
 8005c02:	4613      	mov	r3, r2
 8005c04:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005c06:	4632      	mov	r2, r6
 8005c08:	69e1      	ldr	r1, [r4, #28]
 8005c0a:	4648      	mov	r0, r9
 8005c0c:	47a8      	blx	r5
 8005c0e:	1e05      	subs	r5, r0, #0
 8005c10:	dd1c      	ble.n	8005c4c <__sfvwrite_r+0x214>
 8005c12:	ebba 0a05 	subs.w	sl, sl, r5
 8005c16:	d06e      	beq.n	8005cf6 <__sfvwrite_r+0x2be>
 8005c18:	2001      	movs	r0, #1
 8005c1a:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c1e:	442e      	add	r6, r5
 8005c20:	1b7f      	subs	r7, r7, r5
 8005c22:	1b5d      	subs	r5, r3, r5
 8005c24:	f8c8 5008 	str.w	r5, [r8, #8]
 8005c28:	bb15      	cbnz	r5, 8005c70 <__sfvwrite_r+0x238>
 8005c2a:	2000      	movs	r0, #0
 8005c2c:	b003      	add	sp, #12
 8005c2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c32:	4631      	mov	r1, r6
 8005c34:	462a      	mov	r2, r5
 8005c36:	f000 f909 	bl	8005e4c <memmove>
 8005c3a:	6823      	ldr	r3, [r4, #0]
 8005c3c:	4621      	mov	r1, r4
 8005c3e:	4648      	mov	r0, r9
 8005c40:	442b      	add	r3, r5
 8005c42:	6023      	str	r3, [r4, #0]
 8005c44:	f7fd fac2 	bl	80031cc <_fflush_r>
 8005c48:	2800      	cmp	r0, #0
 8005c4a:	d0e2      	beq.n	8005c12 <__sfvwrite_r+0x1da>
 8005c4c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c50:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005c54:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005c58:	81a3      	strh	r3, [r4, #12]
 8005c5a:	b003      	add	sp, #12
 8005c5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c60:	2000      	movs	r0, #0
 8005c62:	4770      	bx	lr
 8005c64:	469a      	mov	sl, r3
 8005c66:	4618      	mov	r0, r3
 8005c68:	461f      	mov	r7, r3
 8005c6a:	4633      	mov	r3, r6
 8005c6c:	4656      	mov	r6, sl
 8005c6e:	469b      	mov	fp, r3
 8005c70:	2f00      	cmp	r7, #0
 8005c72:	d0a2      	beq.n	8005bba <__sfvwrite_r+0x182>
 8005c74:	2800      	cmp	r0, #0
 8005c76:	d1b4      	bne.n	8005be2 <__sfvwrite_r+0x1aa>
 8005c78:	463a      	mov	r2, r7
 8005c7a:	210a      	movs	r1, #10
 8005c7c:	4630      	mov	r0, r6
 8005c7e:	f7fe f8ab 	bl	8003dd8 <memchr>
 8005c82:	2800      	cmp	r0, #0
 8005c84:	d1aa      	bne.n	8005bdc <__sfvwrite_r+0x1a4>
 8005c86:	1c7b      	adds	r3, r7, #1
 8005c88:	469a      	mov	sl, r3
 8005c8a:	e7ab      	b.n	8005be4 <__sfvwrite_r+0x1ac>
 8005c8c:	6923      	ldr	r3, [r4, #16]
 8005c8e:	4283      	cmp	r3, r0
 8005c90:	d317      	bcc.n	8005cc2 <__sfvwrite_r+0x28a>
 8005c92:	6963      	ldr	r3, [r4, #20]
 8005c94:	42ab      	cmp	r3, r5
 8005c96:	d814      	bhi.n	8005cc2 <__sfvwrite_r+0x28a>
 8005c98:	4a2f      	ldr	r2, [pc, #188]	; (8005d58 <__sfvwrite_r+0x320>)
 8005c9a:	4648      	mov	r0, r9
 8005c9c:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005c9e:	4295      	cmp	r5, r2
 8005ca0:	69e1      	ldr	r1, [r4, #28]
 8005ca2:	4652      	mov	r2, sl
 8005ca4:	bf94      	ite	ls
 8005ca6:	46ac      	movls	ip, r5
 8005ca8:	f06f 4c00 	mvnhi.w	ip, #2147483648	; 0x80000000
 8005cac:	fb9c fcf3 	sdiv	ip, ip, r3
 8005cb0:	fb03 f30c 	mul.w	r3, r3, ip
 8005cb4:	47b8      	blx	r7
 8005cb6:	f1b0 0b00 	subs.w	fp, r0, #0
 8005cba:	ddc7      	ble.n	8005c4c <__sfvwrite_r+0x214>
 8005cbc:	eba5 050b 	sub.w	r5, r5, fp
 8005cc0:	e766      	b.n	8005b90 <__sfvwrite_r+0x158>
 8005cc2:	42af      	cmp	r7, r5
 8005cc4:	4651      	mov	r1, sl
 8005cc6:	bf28      	it	cs
 8005cc8:	462f      	movcs	r7, r5
 8005cca:	463a      	mov	r2, r7
 8005ccc:	46bb      	mov	fp, r7
 8005cce:	f000 f8bd 	bl	8005e4c <memmove>
 8005cd2:	68a3      	ldr	r3, [r4, #8]
 8005cd4:	6822      	ldr	r2, [r4, #0]
 8005cd6:	1bdb      	subs	r3, r3, r7
 8005cd8:	443a      	add	r2, r7
 8005cda:	60a3      	str	r3, [r4, #8]
 8005cdc:	6022      	str	r2, [r4, #0]
 8005cde:	2b00      	cmp	r3, #0
 8005ce0:	d1ec      	bne.n	8005cbc <__sfvwrite_r+0x284>
 8005ce2:	4621      	mov	r1, r4
 8005ce4:	4648      	mov	r0, r9
 8005ce6:	f7fd fa71 	bl	80031cc <_fflush_r>
 8005cea:	2800      	cmp	r0, #0
 8005cec:	d0e6      	beq.n	8005cbc <__sfvwrite_r+0x284>
 8005cee:	e7ad      	b.n	8005c4c <__sfvwrite_r+0x214>
 8005cf0:	462f      	mov	r7, r5
 8005cf2:	462b      	mov	r3, r5
 8005cf4:	e73e      	b.n	8005b74 <__sfvwrite_r+0x13c>
 8005cf6:	4621      	mov	r1, r4
 8005cf8:	4648      	mov	r0, r9
 8005cfa:	f7fd fa67 	bl	80031cc <_fflush_r>
 8005cfe:	2800      	cmp	r0, #0
 8005d00:	d08b      	beq.n	8005c1a <__sfvwrite_r+0x1e2>
 8005d02:	e7a3      	b.n	8005c4c <__sfvwrite_r+0x214>
 8005d04:	461a      	mov	r2, r3
 8005d06:	4631      	mov	r1, r6
 8005d08:	9301      	str	r3, [sp, #4]
 8005d0a:	461d      	mov	r5, r3
 8005d0c:	f000 f89e 	bl	8005e4c <memmove>
 8005d10:	68a1      	ldr	r1, [r4, #8]
 8005d12:	6822      	ldr	r2, [r4, #0]
 8005d14:	9b01      	ldr	r3, [sp, #4]
 8005d16:	1ac9      	subs	r1, r1, r3
 8005d18:	4413      	add	r3, r2
 8005d1a:	60a1      	str	r1, [r4, #8]
 8005d1c:	6023      	str	r3, [r4, #0]
 8005d1e:	e778      	b.n	8005c12 <__sfvwrite_r+0x1da>
 8005d20:	4648      	mov	r0, r9
 8005d22:	f000 f911 	bl	8005f48 <_realloc_r>
 8005d26:	4603      	mov	r3, r0
 8005d28:	2800      	cmp	r0, #0
 8005d2a:	f47f af19 	bne.w	8005b60 <__sfvwrite_r+0x128>
 8005d2e:	6921      	ldr	r1, [r4, #16]
 8005d30:	4648      	mov	r0, r9
 8005d32:	f7fd fbc1 	bl	80034b8 <_free_r>
 8005d36:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d3a:	220c      	movs	r2, #12
 8005d3c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005d40:	f8c9 2000 	str.w	r2, [r9]
 8005d44:	e784      	b.n	8005c50 <__sfvwrite_r+0x218>
 8005d46:	220c      	movs	r2, #12
 8005d48:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d4c:	f8c9 2000 	str.w	r2, [r9]
 8005d50:	e77e      	b.n	8005c50 <__sfvwrite_r+0x218>
 8005d52:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005d56:	e769      	b.n	8005c2c <__sfvwrite_r+0x1f4>
 8005d58:	7ffffffe 	.word	0x7ffffffe
 8005d5c:	7ffffc00 	.word	0x7ffffc00

08005d60 <_isatty_r>:
 8005d60:	b538      	push	{r3, r4, r5, lr}
 8005d62:	2300      	movs	r3, #0
 8005d64:	4c06      	ldr	r4, [pc, #24]	; (8005d80 <_isatty_r+0x20>)
 8005d66:	4605      	mov	r5, r0
 8005d68:	4608      	mov	r0, r1
 8005d6a:	6023      	str	r3, [r4, #0]
 8005d6c:	f001 fb4d 	bl	800740a <_isatty>
 8005d70:	1c43      	adds	r3, r0, #1
 8005d72:	d000      	beq.n	8005d76 <_isatty_r+0x16>
 8005d74:	bd38      	pop	{r3, r4, r5, pc}
 8005d76:	6823      	ldr	r3, [r4, #0]
 8005d78:	2b00      	cmp	r3, #0
 8005d7a:	d0fb      	beq.n	8005d74 <_isatty_r+0x14>
 8005d7c:	602b      	str	r3, [r5, #0]
 8005d7e:	bd38      	pop	{r3, r4, r5, pc}
 8005d80:	20000b2c 	.word	0x20000b2c

08005d84 <_setlocale_r>:
 8005d84:	b142      	cbz	r2, 8005d98 <_setlocale_r+0x14>
 8005d86:	490c      	ldr	r1, [pc, #48]	; (8005db8 <_setlocale_r+0x34>)
 8005d88:	4610      	mov	r0, r2
 8005d8a:	b510      	push	{r4, lr}
 8005d8c:	4614      	mov	r4, r2
 8005d8e:	f7fa fcb5 	bl	80006fc <strcmp>
 8005d92:	b918      	cbnz	r0, 8005d9c <_setlocale_r+0x18>
 8005d94:	4809      	ldr	r0, [pc, #36]	; (8005dbc <_setlocale_r+0x38>)
 8005d96:	bd10      	pop	{r4, pc}
 8005d98:	4808      	ldr	r0, [pc, #32]	; (8005dbc <_setlocale_r+0x38>)
 8005d9a:	4770      	bx	lr
 8005d9c:	4907      	ldr	r1, [pc, #28]	; (8005dbc <_setlocale_r+0x38>)
 8005d9e:	4620      	mov	r0, r4
 8005da0:	f7fa fcac 	bl	80006fc <strcmp>
 8005da4:	2800      	cmp	r0, #0
 8005da6:	d0f5      	beq.n	8005d94 <_setlocale_r+0x10>
 8005da8:	4620      	mov	r0, r4
 8005daa:	4905      	ldr	r1, [pc, #20]	; (8005dc0 <_setlocale_r+0x3c>)
 8005dac:	f7fa fca6 	bl	80006fc <strcmp>
 8005db0:	2800      	cmp	r0, #0
 8005db2:	d0ef      	beq.n	8005d94 <_setlocale_r+0x10>
 8005db4:	2000      	movs	r0, #0
 8005db6:	bd10      	pop	{r4, pc}
 8005db8:	0800ae98 	.word	0x0800ae98
 8005dbc:	0800ae94 	.word	0x0800ae94
 8005dc0:	0800ae60 	.word	0x0800ae60

08005dc4 <__locale_mb_cur_max>:
 8005dc4:	4b01      	ldr	r3, [pc, #4]	; (8005dcc <__locale_mb_cur_max+0x8>)
 8005dc6:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8005dca:	4770      	bx	lr
 8005dcc:	20000840 	.word	0x20000840

08005dd0 <setlocale>:
 8005dd0:	4b02      	ldr	r3, [pc, #8]	; (8005ddc <setlocale+0xc>)
 8005dd2:	460a      	mov	r2, r1
 8005dd4:	4601      	mov	r1, r0
 8005dd6:	6818      	ldr	r0, [r3, #0]
 8005dd8:	f7ff bfd4 	b.w	8005d84 <_setlocale_r>
 8005ddc:	20000000 	.word	0x20000000

08005de0 <_lseek_r>:
 8005de0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005de2:	460e      	mov	r6, r1
 8005de4:	4c08      	ldr	r4, [pc, #32]	; (8005e08 <_lseek_r+0x28>)
 8005de6:	2500      	movs	r5, #0
 8005de8:	4611      	mov	r1, r2
 8005dea:	4607      	mov	r7, r0
 8005dec:	461a      	mov	r2, r3
 8005dee:	4630      	mov	r0, r6
 8005df0:	6025      	str	r5, [r4, #0]
 8005df2:	f001 fb14 	bl	800741e <_lseek>
 8005df6:	1c43      	adds	r3, r0, #1
 8005df8:	d000      	beq.n	8005dfc <_lseek_r+0x1c>
 8005dfa:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005dfc:	6823      	ldr	r3, [r4, #0]
 8005dfe:	2b00      	cmp	r3, #0
 8005e00:	d0fb      	beq.n	8005dfa <_lseek_r+0x1a>
 8005e02:	603b      	str	r3, [r7, #0]
 8005e04:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005e06:	bf00      	nop
 8005e08:	20000b2c 	.word	0x20000b2c

08005e0c <_mbtowc_r>:
 8005e0c:	b410      	push	{r4}
 8005e0e:	4c03      	ldr	r4, [pc, #12]	; (8005e1c <_mbtowc_r+0x10>)
 8005e10:	f8d4 40e4 	ldr.w	r4, [r4, #228]	; 0xe4
 8005e14:	46a4      	mov	ip, r4
 8005e16:	bc10      	pop	{r4}
 8005e18:	4760      	bx	ip
 8005e1a:	bf00      	nop
 8005e1c:	20000840 	.word	0x20000840

08005e20 <__ascii_mbtowc>:
 8005e20:	b082      	sub	sp, #8
 8005e22:	b149      	cbz	r1, 8005e38 <__ascii_mbtowc+0x18>
 8005e24:	b15a      	cbz	r2, 8005e3e <__ascii_mbtowc+0x1e>
 8005e26:	b16b      	cbz	r3, 8005e44 <__ascii_mbtowc+0x24>
 8005e28:	7813      	ldrb	r3, [r2, #0]
 8005e2a:	600b      	str	r3, [r1, #0]
 8005e2c:	7812      	ldrb	r2, [r2, #0]
 8005e2e:	1c10      	adds	r0, r2, #0
 8005e30:	bf18      	it	ne
 8005e32:	2001      	movne	r0, #1
 8005e34:	b002      	add	sp, #8
 8005e36:	4770      	bx	lr
 8005e38:	a901      	add	r1, sp, #4
 8005e3a:	2a00      	cmp	r2, #0
 8005e3c:	d1f3      	bne.n	8005e26 <__ascii_mbtowc+0x6>
 8005e3e:	4610      	mov	r0, r2
 8005e40:	b002      	add	sp, #8
 8005e42:	4770      	bx	lr
 8005e44:	f06f 0001 	mvn.w	r0, #1
 8005e48:	e7f4      	b.n	8005e34 <__ascii_mbtowc+0x14>
 8005e4a:	bf00      	nop

08005e4c <memmove>:
 8005e4c:	4288      	cmp	r0, r1
 8005e4e:	b4f0      	push	{r4, r5, r6, r7}
 8005e50:	d90d      	bls.n	8005e6e <memmove+0x22>
 8005e52:	188b      	adds	r3, r1, r2
 8005e54:	4283      	cmp	r3, r0
 8005e56:	d90a      	bls.n	8005e6e <memmove+0x22>
 8005e58:	1884      	adds	r4, r0, r2
 8005e5a:	b132      	cbz	r2, 8005e6a <memmove+0x1e>
 8005e5c:	4622      	mov	r2, r4
 8005e5e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e62:	4299      	cmp	r1, r3
 8005e64:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e68:	d1f9      	bne.n	8005e5e <memmove+0x12>
 8005e6a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e6c:	4770      	bx	lr
 8005e6e:	2a0f      	cmp	r2, #15
 8005e70:	d80e      	bhi.n	8005e90 <memmove+0x44>
 8005e72:	4603      	mov	r3, r0
 8005e74:	1e54      	subs	r4, r2, #1
 8005e76:	2a00      	cmp	r2, #0
 8005e78:	d0f7      	beq.n	8005e6a <memmove+0x1e>
 8005e7a:	3401      	adds	r4, #1
 8005e7c:	3b01      	subs	r3, #1
 8005e7e:	440c      	add	r4, r1
 8005e80:	f811 2b01 	ldrb.w	r2, [r1], #1
 8005e84:	42a1      	cmp	r1, r4
 8005e86:	f803 2f01 	strb.w	r2, [r3, #1]!
 8005e8a:	d1f9      	bne.n	8005e80 <memmove+0x34>
 8005e8c:	bcf0      	pop	{r4, r5, r6, r7}
 8005e8e:	4770      	bx	lr
 8005e90:	ea40 0301 	orr.w	r3, r0, r1
 8005e94:	079b      	lsls	r3, r3, #30
 8005e96:	d13b      	bne.n	8005f10 <memmove+0xc4>
 8005e98:	f1a2 0510 	sub.w	r5, r2, #16
 8005e9c:	f101 0420 	add.w	r4, r1, #32
 8005ea0:	f101 0610 	add.w	r6, r1, #16
 8005ea4:	f100 0710 	add.w	r7, r0, #16
 8005ea8:	092d      	lsrs	r5, r5, #4
 8005eaa:	eb04 1405 	add.w	r4, r4, r5, lsl #4
 8005eae:	f856 3c10 	ldr.w	r3, [r6, #-16]
 8005eb2:	3610      	adds	r6, #16
 8005eb4:	3710      	adds	r7, #16
 8005eb6:	f847 3c20 	str.w	r3, [r7, #-32]
 8005eba:	f856 3c1c 	ldr.w	r3, [r6, #-28]
 8005ebe:	f847 3c1c 	str.w	r3, [r7, #-28]
 8005ec2:	f856 3c18 	ldr.w	r3, [r6, #-24]
 8005ec6:	f847 3c18 	str.w	r3, [r7, #-24]
 8005eca:	f856 3c14 	ldr.w	r3, [r6, #-20]
 8005ece:	42a6      	cmp	r6, r4
 8005ed0:	f847 3c14 	str.w	r3, [r7, #-20]
 8005ed4:	d1eb      	bne.n	8005eae <memmove+0x62>
 8005ed6:	1c6b      	adds	r3, r5, #1
 8005ed8:	f012 0f0c 	tst.w	r2, #12
 8005edc:	f002 050f 	and.w	r5, r2, #15
 8005ee0:	ea4f 1303 	mov.w	r3, r3, lsl #4
 8005ee4:	4419      	add	r1, r3
 8005ee6:	4403      	add	r3, r0
 8005ee8:	d015      	beq.n	8005f16 <memmove+0xca>
 8005eea:	3d04      	subs	r5, #4
 8005eec:	1f1c      	subs	r4, r3, #4
 8005eee:	460e      	mov	r6, r1
 8005ef0:	08ad      	lsrs	r5, r5, #2
 8005ef2:	eb03 0c85 	add.w	ip, r3, r5, lsl #2
 8005ef6:	f856 7b04 	ldr.w	r7, [r6], #4
 8005efa:	f844 7f04 	str.w	r7, [r4, #4]!
 8005efe:	4564      	cmp	r4, ip
 8005f00:	d1f9      	bne.n	8005ef6 <memmove+0xaa>
 8005f02:	3501      	adds	r5, #1
 8005f04:	f002 0203 	and.w	r2, r2, #3
 8005f08:	00ad      	lsls	r5, r5, #2
 8005f0a:	442b      	add	r3, r5
 8005f0c:	4429      	add	r1, r5
 8005f0e:	e7b1      	b.n	8005e74 <memmove+0x28>
 8005f10:	1e54      	subs	r4, r2, #1
 8005f12:	4603      	mov	r3, r0
 8005f14:	e7b1      	b.n	8005e7a <memmove+0x2e>
 8005f16:	462a      	mov	r2, r5
 8005f18:	e7ac      	b.n	8005e74 <memmove+0x28>
 8005f1a:	bf00      	nop

08005f1c <_read_r>:
 8005f1c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005f1e:	460e      	mov	r6, r1
 8005f20:	4c08      	ldr	r4, [pc, #32]	; (8005f44 <_read_r+0x28>)
 8005f22:	2500      	movs	r5, #0
 8005f24:	4611      	mov	r1, r2
 8005f26:	4607      	mov	r7, r0
 8005f28:	461a      	mov	r2, r3
 8005f2a:	4630      	mov	r0, r6
 8005f2c:	6025      	str	r5, [r4, #0]
 8005f2e:	f001 fa19 	bl	8007364 <_read>
 8005f32:	1c43      	adds	r3, r0, #1
 8005f34:	d000      	beq.n	8005f38 <_read_r+0x1c>
 8005f36:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005f38:	6823      	ldr	r3, [r4, #0]
 8005f3a:	2b00      	cmp	r3, #0
 8005f3c:	d0fb      	beq.n	8005f36 <_read_r+0x1a>
 8005f3e:	603b      	str	r3, [r7, #0]
 8005f40:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005f42:	bf00      	nop
 8005f44:	20000b2c 	.word	0x20000b2c

08005f48 <_realloc_r>:
 8005f48:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f4c:	4692      	mov	sl, r2
 8005f4e:	2900      	cmp	r1, #0
 8005f50:	f000 80bb 	beq.w	80060ca <_realloc_r+0x182>
 8005f54:	460d      	mov	r5, r1
 8005f56:	f10a 040b 	add.w	r4, sl, #11
 8005f5a:	4680      	mov	r8, r0
 8005f5c:	f7fd fff8 	bl	8003f50 <__malloc_lock>
 8005f60:	f855 0c04 	ldr.w	r0, [r5, #-4]
 8005f64:	2c16      	cmp	r4, #22
 8005f66:	f1a5 0708 	sub.w	r7, r5, #8
 8005f6a:	f020 0603 	bic.w	r6, r0, #3
 8005f6e:	d85c      	bhi.n	800602a <_realloc_r+0xe2>
 8005f70:	2210      	movs	r2, #16
 8005f72:	2300      	movs	r3, #0
 8005f74:	4614      	mov	r4, r2
 8005f76:	4554      	cmp	r4, sl
 8005f78:	f0c0 80be 	bcc.w	80060f8 <_realloc_r+0x1b0>
 8005f7c:	2b00      	cmp	r3, #0
 8005f7e:	f040 80bb 	bne.w	80060f8 <_realloc_r+0x1b0>
 8005f82:	4296      	cmp	r6, r2
 8005f84:	eb07 0906 	add.w	r9, r7, r6
 8005f88:	da7f      	bge.n	800608a <_realloc_r+0x142>
 8005f8a:	4bc6      	ldr	r3, [pc, #792]	; (80062a4 <_realloc_r+0x35c>)
 8005f8c:	f8d9 c004 	ldr.w	ip, [r9, #4]
 8005f90:	6899      	ldr	r1, [r3, #8]
 8005f92:	4549      	cmp	r1, r9
 8005f94:	f000 80b8 	beq.w	8006108 <_realloc_r+0x1c0>
 8005f98:	f02c 0301 	bic.w	r3, ip, #1
 8005f9c:	444b      	add	r3, r9
 8005f9e:	685b      	ldr	r3, [r3, #4]
 8005fa0:	07d9      	lsls	r1, r3, #31
 8005fa2:	f100 8087 	bmi.w	80060b4 <_realloc_r+0x16c>
 8005fa6:	f02c 0c03 	bic.w	ip, ip, #3
 8005faa:	eb06 030c 	add.w	r3, r6, ip
 8005fae:	4293      	cmp	r3, r2
 8005fb0:	f280 80f7 	bge.w	80061a2 <_realloc_r+0x25a>
 8005fb4:	07c0      	lsls	r0, r0, #31
 8005fb6:	d40f      	bmi.n	8005fd8 <_realloc_r+0x90>
 8005fb8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8005fbc:	eba7 0b03 	sub.w	fp, r7, r3
 8005fc0:	f8db 1004 	ldr.w	r1, [fp, #4]
 8005fc4:	f021 0103 	bic.w	r1, r1, #3
 8005fc8:	448c      	add	ip, r1
 8005fca:	44b4      	add	ip, r6
 8005fcc:	4594      	cmp	ip, r2
 8005fce:	da31      	bge.n	8006034 <_realloc_r+0xec>
 8005fd0:	1873      	adds	r3, r6, r1
 8005fd2:	4293      	cmp	r3, r2
 8005fd4:	f280 8102 	bge.w	80061dc <_realloc_r+0x294>
 8005fd8:	4651      	mov	r1, sl
 8005fda:	4640      	mov	r0, r8
 8005fdc:	f7fd fc34 	bl	8003848 <_malloc_r>
 8005fe0:	4682      	mov	sl, r0
 8005fe2:	b1e0      	cbz	r0, 800601e <_realloc_r+0xd6>
 8005fe4:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8005fe8:	f1a0 0208 	sub.w	r2, r0, #8
 8005fec:	f023 0301 	bic.w	r3, r3, #1
 8005ff0:	443b      	add	r3, r7
 8005ff2:	4293      	cmp	r3, r2
 8005ff4:	f000 80df 	beq.w	80061b6 <_realloc_r+0x26e>
 8005ff8:	1f32      	subs	r2, r6, #4
 8005ffa:	2a24      	cmp	r2, #36	; 0x24
 8005ffc:	f200 8111 	bhi.w	8006222 <_realloc_r+0x2da>
 8006000:	2a13      	cmp	r2, #19
 8006002:	6829      	ldr	r1, [r5, #0]
 8006004:	f200 80df 	bhi.w	80061c6 <_realloc_r+0x27e>
 8006008:	4603      	mov	r3, r0
 800600a:	462a      	mov	r2, r5
 800600c:	6019      	str	r1, [r3, #0]
 800600e:	6851      	ldr	r1, [r2, #4]
 8006010:	6059      	str	r1, [r3, #4]
 8006012:	6892      	ldr	r2, [r2, #8]
 8006014:	609a      	str	r2, [r3, #8]
 8006016:	4629      	mov	r1, r5
 8006018:	4640      	mov	r0, r8
 800601a:	f7fd fa4d 	bl	80034b8 <_free_r>
 800601e:	4640      	mov	r0, r8
 8006020:	f7fd ff98 	bl	8003f54 <__malloc_unlock>
 8006024:	4650      	mov	r0, sl
 8006026:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800602a:	f024 0407 	bic.w	r4, r4, #7
 800602e:	4622      	mov	r2, r4
 8006030:	0fe3      	lsrs	r3, r4, #31
 8006032:	e7a0      	b.n	8005f76 <_realloc_r+0x2e>
 8006034:	f8d9 300c 	ldr.w	r3, [r9, #12]
 8006038:	46da      	mov	sl, fp
 800603a:	f8d9 1008 	ldr.w	r1, [r9, #8]
 800603e:	1f32      	subs	r2, r6, #4
 8006040:	eb0b 090c 	add.w	r9, fp, ip
 8006044:	60cb      	str	r3, [r1, #12]
 8006046:	2a24      	cmp	r2, #36	; 0x24
 8006048:	6099      	str	r1, [r3, #8]
 800604a:	f8db 300c 	ldr.w	r3, [fp, #12]
 800604e:	f85a 1f08 	ldr.w	r1, [sl, #8]!
 8006052:	60cb      	str	r3, [r1, #12]
 8006054:	6099      	str	r1, [r3, #8]
 8006056:	f200 811c 	bhi.w	8006292 <_realloc_r+0x34a>
 800605a:	2a13      	cmp	r2, #19
 800605c:	6829      	ldr	r1, [r5, #0]
 800605e:	f240 8116 	bls.w	800628e <_realloc_r+0x346>
 8006062:	f8cb 1008 	str.w	r1, [fp, #8]
 8006066:	2a1b      	cmp	r2, #27
 8006068:	686b      	ldr	r3, [r5, #4]
 800606a:	f8cb 300c 	str.w	r3, [fp, #12]
 800606e:	f200 8127 	bhi.w	80062c0 <_realloc_r+0x378>
 8006072:	68a9      	ldr	r1, [r5, #8]
 8006074:	f10b 0310 	add.w	r3, fp, #16
 8006078:	3508      	adds	r5, #8
 800607a:	6019      	str	r1, [r3, #0]
 800607c:	4666      	mov	r6, ip
 800607e:	686a      	ldr	r2, [r5, #4]
 8006080:	465f      	mov	r7, fp
 8006082:	605a      	str	r2, [r3, #4]
 8006084:	68aa      	ldr	r2, [r5, #8]
 8006086:	4655      	mov	r5, sl
 8006088:	609a      	str	r2, [r3, #8]
 800608a:	1b33      	subs	r3, r6, r4
 800608c:	687a      	ldr	r2, [r7, #4]
 800608e:	2b0f      	cmp	r3, #15
 8006090:	f002 0201 	and.w	r2, r2, #1
 8006094:	d81e      	bhi.n	80060d4 <_realloc_r+0x18c>
 8006096:	4332      	orrs	r2, r6
 8006098:	607a      	str	r2, [r7, #4]
 800609a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800609e:	f043 0301 	orr.w	r3, r3, #1
 80060a2:	f8c9 3004 	str.w	r3, [r9, #4]
 80060a6:	4640      	mov	r0, r8
 80060a8:	46aa      	mov	sl, r5
 80060aa:	f7fd ff53 	bl	8003f54 <__malloc_unlock>
 80060ae:	4650      	mov	r0, sl
 80060b0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060b4:	07c3      	lsls	r3, r0, #31
 80060b6:	d48f      	bmi.n	8005fd8 <_realloc_r+0x90>
 80060b8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80060bc:	eba7 0b03 	sub.w	fp, r7, r3
 80060c0:	f8db 1004 	ldr.w	r1, [fp, #4]
 80060c4:	f021 0103 	bic.w	r1, r1, #3
 80060c8:	e782      	b.n	8005fd0 <_realloc_r+0x88>
 80060ca:	4611      	mov	r1, r2
 80060cc:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060d0:	f7fd bbba 	b.w	8003848 <_malloc_r>
 80060d4:	4322      	orrs	r2, r4
 80060d6:	f043 0301 	orr.w	r3, r3, #1
 80060da:	443c      	add	r4, r7
 80060dc:	4640      	mov	r0, r8
 80060de:	607a      	str	r2, [r7, #4]
 80060e0:	6063      	str	r3, [r4, #4]
 80060e2:	f104 0108 	add.w	r1, r4, #8
 80060e6:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80060ea:	f043 0301 	orr.w	r3, r3, #1
 80060ee:	f8c9 3004 	str.w	r3, [r9, #4]
 80060f2:	f7fd f9e1 	bl	80034b8 <_free_r>
 80060f6:	e7d6      	b.n	80060a6 <_realloc_r+0x15e>
 80060f8:	230c      	movs	r3, #12
 80060fa:	f04f 0a00 	mov.w	sl, #0
 80060fe:	f8c8 3000 	str.w	r3, [r8]
 8006102:	4650      	mov	r0, sl
 8006104:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006108:	f02c 0c03 	bic.w	ip, ip, #3
 800610c:	f104 0e10 	add.w	lr, r4, #16
 8006110:	eb06 010c 	add.w	r1, r6, ip
 8006114:	4571      	cmp	r1, lr
 8006116:	f280 809e 	bge.w	8006256 <_realloc_r+0x30e>
 800611a:	07c1      	lsls	r1, r0, #31
 800611c:	f53f af5c 	bmi.w	8005fd8 <_realloc_r+0x90>
 8006120:	f855 1c08 	ldr.w	r1, [r5, #-8]
 8006124:	eba7 0b01 	sub.w	fp, r7, r1
 8006128:	f8db 1004 	ldr.w	r1, [fp, #4]
 800612c:	f021 0103 	bic.w	r1, r1, #3
 8006130:	448c      	add	ip, r1
 8006132:	eb0c 0906 	add.w	r9, ip, r6
 8006136:	45ce      	cmp	lr, r9
 8006138:	f73f af4a 	bgt.w	8005fd0 <_realloc_r+0x88>
 800613c:	46da      	mov	sl, fp
 800613e:	1f32      	subs	r2, r6, #4
 8006140:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006144:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006148:	2a24      	cmp	r2, #36	; 0x24
 800614a:	60c1      	str	r1, [r0, #12]
 800614c:	6088      	str	r0, [r1, #8]
 800614e:	f200 80c6 	bhi.w	80062de <_realloc_r+0x396>
 8006152:	2a13      	cmp	r2, #19
 8006154:	6829      	ldr	r1, [r5, #0]
 8006156:	f240 80c0 	bls.w	80062da <_realloc_r+0x392>
 800615a:	f8cb 1008 	str.w	r1, [fp, #8]
 800615e:	2a1b      	cmp	r2, #27
 8006160:	6869      	ldr	r1, [r5, #4]
 8006162:	f8cb 100c 	str.w	r1, [fp, #12]
 8006166:	68a9      	ldr	r1, [r5, #8]
 8006168:	f200 80d5 	bhi.w	8006316 <_realloc_r+0x3ce>
 800616c:	f10b 0210 	add.w	r2, fp, #16
 8006170:	3508      	adds	r5, #8
 8006172:	6011      	str	r1, [r2, #0]
 8006174:	6869      	ldr	r1, [r5, #4]
 8006176:	6051      	str	r1, [r2, #4]
 8006178:	68a9      	ldr	r1, [r5, #8]
 800617a:	6091      	str	r1, [r2, #8]
 800617c:	eba9 0204 	sub.w	r2, r9, r4
 8006180:	eb0b 0104 	add.w	r1, fp, r4
 8006184:	4640      	mov	r0, r8
 8006186:	f042 0201 	orr.w	r2, r2, #1
 800618a:	6099      	str	r1, [r3, #8]
 800618c:	604a      	str	r2, [r1, #4]
 800618e:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006192:	f003 0301 	and.w	r3, r3, #1
 8006196:	431c      	orrs	r4, r3
 8006198:	f8cb 4004 	str.w	r4, [fp, #4]
 800619c:	f7fd feda 	bl	8003f54 <__malloc_unlock>
 80061a0:	e785      	b.n	80060ae <_realloc_r+0x166>
 80061a2:	f8d9 200c 	ldr.w	r2, [r9, #12]
 80061a6:	461e      	mov	r6, r3
 80061a8:	f8d9 1008 	ldr.w	r1, [r9, #8]
 80061ac:	eb07 0903 	add.w	r9, r7, r3
 80061b0:	60ca      	str	r2, [r1, #12]
 80061b2:	6091      	str	r1, [r2, #8]
 80061b4:	e769      	b.n	800608a <_realloc_r+0x142>
 80061b6:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80061ba:	f023 0303 	bic.w	r3, r3, #3
 80061be:	441e      	add	r6, r3
 80061c0:	eb07 0906 	add.w	r9, r7, r6
 80061c4:	e761      	b.n	800608a <_realloc_r+0x142>
 80061c6:	6001      	str	r1, [r0, #0]
 80061c8:	2a1b      	cmp	r2, #27
 80061ca:	686b      	ldr	r3, [r5, #4]
 80061cc:	6043      	str	r3, [r0, #4]
 80061ce:	d82c      	bhi.n	800622a <_realloc_r+0x2e2>
 80061d0:	f105 0208 	add.w	r2, r5, #8
 80061d4:	f100 0308 	add.w	r3, r0, #8
 80061d8:	68a9      	ldr	r1, [r5, #8]
 80061da:	e717      	b.n	800600c <_realloc_r+0xc4>
 80061dc:	46da      	mov	sl, fp
 80061de:	1f32      	subs	r2, r6, #4
 80061e0:	f8db 100c 	ldr.w	r1, [fp, #12]
 80061e4:	eb0b 0903 	add.w	r9, fp, r3
 80061e8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80061ec:	2a24      	cmp	r2, #36	; 0x24
 80061ee:	60c1      	str	r1, [r0, #12]
 80061f0:	6088      	str	r0, [r1, #8]
 80061f2:	d828      	bhi.n	8006246 <_realloc_r+0x2fe>
 80061f4:	2a13      	cmp	r2, #19
 80061f6:	6829      	ldr	r1, [r5, #0]
 80061f8:	d923      	bls.n	8006242 <_realloc_r+0x2fa>
 80061fa:	f8cb 1008 	str.w	r1, [fp, #8]
 80061fe:	2a1b      	cmp	r2, #27
 8006200:	6869      	ldr	r1, [r5, #4]
 8006202:	f8cb 100c 	str.w	r1, [fp, #12]
 8006206:	68a9      	ldr	r1, [r5, #8]
 8006208:	d84e      	bhi.n	80062a8 <_realloc_r+0x360>
 800620a:	f10b 0210 	add.w	r2, fp, #16
 800620e:	3508      	adds	r5, #8
 8006210:	6011      	str	r1, [r2, #0]
 8006212:	461e      	mov	r6, r3
 8006214:	686b      	ldr	r3, [r5, #4]
 8006216:	465f      	mov	r7, fp
 8006218:	6053      	str	r3, [r2, #4]
 800621a:	68ab      	ldr	r3, [r5, #8]
 800621c:	4655      	mov	r5, sl
 800621e:	6093      	str	r3, [r2, #8]
 8006220:	e733      	b.n	800608a <_realloc_r+0x142>
 8006222:	4629      	mov	r1, r5
 8006224:	f7ff fe12 	bl	8005e4c <memmove>
 8006228:	e6f5      	b.n	8006016 <_realloc_r+0xce>
 800622a:	68ab      	ldr	r3, [r5, #8]
 800622c:	2a24      	cmp	r2, #36	; 0x24
 800622e:	6083      	str	r3, [r0, #8]
 8006230:	68eb      	ldr	r3, [r5, #12]
 8006232:	60c3      	str	r3, [r0, #12]
 8006234:	d021      	beq.n	800627a <_realloc_r+0x332>
 8006236:	f105 0210 	add.w	r2, r5, #16
 800623a:	f100 0310 	add.w	r3, r0, #16
 800623e:	6929      	ldr	r1, [r5, #16]
 8006240:	e6e4      	b.n	800600c <_realloc_r+0xc4>
 8006242:	4652      	mov	r2, sl
 8006244:	e7e4      	b.n	8006210 <_realloc_r+0x2c8>
 8006246:	4629      	mov	r1, r5
 8006248:	4650      	mov	r0, sl
 800624a:	461e      	mov	r6, r3
 800624c:	465f      	mov	r7, fp
 800624e:	f7ff fdfd 	bl	8005e4c <memmove>
 8006252:	4655      	mov	r5, sl
 8006254:	e719      	b.n	800608a <_realloc_r+0x142>
 8006256:	1b0a      	subs	r2, r1, r4
 8006258:	4427      	add	r7, r4
 800625a:	4640      	mov	r0, r8
 800625c:	46aa      	mov	sl, r5
 800625e:	f042 0201 	orr.w	r2, r2, #1
 8006262:	609f      	str	r7, [r3, #8]
 8006264:	607a      	str	r2, [r7, #4]
 8006266:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800626a:	f003 0301 	and.w	r3, r3, #1
 800626e:	431c      	orrs	r4, r3
 8006270:	f845 4c04 	str.w	r4, [r5, #-4]
 8006274:	f7fd fe6e 	bl	8003f54 <__malloc_unlock>
 8006278:	e719      	b.n	80060ae <_realloc_r+0x166>
 800627a:	6929      	ldr	r1, [r5, #16]
 800627c:	f105 0218 	add.w	r2, r5, #24
 8006280:	f100 0318 	add.w	r3, r0, #24
 8006284:	6101      	str	r1, [r0, #16]
 8006286:	6969      	ldr	r1, [r5, #20]
 8006288:	6141      	str	r1, [r0, #20]
 800628a:	69a9      	ldr	r1, [r5, #24]
 800628c:	e6be      	b.n	800600c <_realloc_r+0xc4>
 800628e:	4653      	mov	r3, sl
 8006290:	e6f3      	b.n	800607a <_realloc_r+0x132>
 8006292:	4629      	mov	r1, r5
 8006294:	4650      	mov	r0, sl
 8006296:	4666      	mov	r6, ip
 8006298:	465f      	mov	r7, fp
 800629a:	f7ff fdd7 	bl	8005e4c <memmove>
 800629e:	4655      	mov	r5, sl
 80062a0:	e6f3      	b.n	800608a <_realloc_r+0x142>
 80062a2:	bf00      	nop
 80062a4:	20000430 	.word	0x20000430
 80062a8:	f8cb 1010 	str.w	r1, [fp, #16]
 80062ac:	2a24      	cmp	r2, #36	; 0x24
 80062ae:	68e9      	ldr	r1, [r5, #12]
 80062b0:	f8cb 1014 	str.w	r1, [fp, #20]
 80062b4:	6929      	ldr	r1, [r5, #16]
 80062b6:	d018      	beq.n	80062ea <_realloc_r+0x3a2>
 80062b8:	f10b 0218 	add.w	r2, fp, #24
 80062bc:	3510      	adds	r5, #16
 80062be:	e7a7      	b.n	8006210 <_realloc_r+0x2c8>
 80062c0:	68ab      	ldr	r3, [r5, #8]
 80062c2:	2a24      	cmp	r2, #36	; 0x24
 80062c4:	f8cb 3010 	str.w	r3, [fp, #16]
 80062c8:	68eb      	ldr	r3, [r5, #12]
 80062ca:	f8cb 3014 	str.w	r3, [fp, #20]
 80062ce:	d016      	beq.n	80062fe <_realloc_r+0x3b6>
 80062d0:	6929      	ldr	r1, [r5, #16]
 80062d2:	f10b 0318 	add.w	r3, fp, #24
 80062d6:	3510      	adds	r5, #16
 80062d8:	e6cf      	b.n	800607a <_realloc_r+0x132>
 80062da:	4652      	mov	r2, sl
 80062dc:	e749      	b.n	8006172 <_realloc_r+0x22a>
 80062de:	4629      	mov	r1, r5
 80062e0:	4650      	mov	r0, sl
 80062e2:	f7ff fdb3 	bl	8005e4c <memmove>
 80062e6:	4b17      	ldr	r3, [pc, #92]	; (8006344 <_realloc_r+0x3fc>)
 80062e8:	e748      	b.n	800617c <_realloc_r+0x234>
 80062ea:	f8cb 1018 	str.w	r1, [fp, #24]
 80062ee:	f10b 0220 	add.w	r2, fp, #32
 80062f2:	6969      	ldr	r1, [r5, #20]
 80062f4:	3518      	adds	r5, #24
 80062f6:	f8cb 101c 	str.w	r1, [fp, #28]
 80062fa:	6829      	ldr	r1, [r5, #0]
 80062fc:	e788      	b.n	8006210 <_realloc_r+0x2c8>
 80062fe:	692a      	ldr	r2, [r5, #16]
 8006300:	f10b 0320 	add.w	r3, fp, #32
 8006304:	3518      	adds	r5, #24
 8006306:	f8cb 2018 	str.w	r2, [fp, #24]
 800630a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800630e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006312:	6829      	ldr	r1, [r5, #0]
 8006314:	e6b1      	b.n	800607a <_realloc_r+0x132>
 8006316:	f8cb 1010 	str.w	r1, [fp, #16]
 800631a:	2a24      	cmp	r2, #36	; 0x24
 800631c:	68e9      	ldr	r1, [r5, #12]
 800631e:	f8cb 1014 	str.w	r1, [fp, #20]
 8006322:	6929      	ldr	r1, [r5, #16]
 8006324:	d003      	beq.n	800632e <_realloc_r+0x3e6>
 8006326:	f10b 0218 	add.w	r2, fp, #24
 800632a:	3510      	adds	r5, #16
 800632c:	e721      	b.n	8006172 <_realloc_r+0x22a>
 800632e:	f8cb 1018 	str.w	r1, [fp, #24]
 8006332:	f10b 0220 	add.w	r2, fp, #32
 8006336:	6969      	ldr	r1, [r5, #20]
 8006338:	3518      	adds	r5, #24
 800633a:	f8cb 101c 	str.w	r1, [fp, #28]
 800633e:	6829      	ldr	r1, [r5, #0]
 8006340:	e717      	b.n	8006172 <_realloc_r+0x22a>
 8006342:	bf00      	nop
 8006344:	20000430 	.word	0x20000430

08006348 <__swbuf_r>:
 8006348:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800634a:	460d      	mov	r5, r1
 800634c:	4614      	mov	r4, r2
 800634e:	4606      	mov	r6, r0
 8006350:	b110      	cbz	r0, 8006358 <__swbuf_r+0x10>
 8006352:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006354:	2b00      	cmp	r3, #0
 8006356:	d043      	beq.n	80063e0 <__swbuf_r+0x98>
 8006358:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800635c:	69a3      	ldr	r3, [r4, #24]
 800635e:	b291      	uxth	r1, r2
 8006360:	60a3      	str	r3, [r4, #8]
 8006362:	0708      	lsls	r0, r1, #28
 8006364:	d51b      	bpl.n	800639e <__swbuf_r+0x56>
 8006366:	6923      	ldr	r3, [r4, #16]
 8006368:	b1cb      	cbz	r3, 800639e <__swbuf_r+0x56>
 800636a:	b2ed      	uxtb	r5, r5
 800636c:	0489      	lsls	r1, r1, #18
 800636e:	462f      	mov	r7, r5
 8006370:	d522      	bpl.n	80063b8 <__swbuf_r+0x70>
 8006372:	6822      	ldr	r2, [r4, #0]
 8006374:	6961      	ldr	r1, [r4, #20]
 8006376:	1ad3      	subs	r3, r2, r3
 8006378:	4299      	cmp	r1, r3
 800637a:	dd29      	ble.n	80063d0 <__swbuf_r+0x88>
 800637c:	3301      	adds	r3, #1
 800637e:	68a1      	ldr	r1, [r4, #8]
 8006380:	1c50      	adds	r0, r2, #1
 8006382:	3901      	subs	r1, #1
 8006384:	6020      	str	r0, [r4, #0]
 8006386:	60a1      	str	r1, [r4, #8]
 8006388:	7015      	strb	r5, [r2, #0]
 800638a:	6962      	ldr	r2, [r4, #20]
 800638c:	429a      	cmp	r2, r3
 800638e:	d02a      	beq.n	80063e6 <__swbuf_r+0x9e>
 8006390:	2d0a      	cmp	r5, #10
 8006392:	d102      	bne.n	800639a <__swbuf_r+0x52>
 8006394:	7b23      	ldrb	r3, [r4, #12]
 8006396:	07db      	lsls	r3, r3, #31
 8006398:	d425      	bmi.n	80063e6 <__swbuf_r+0x9e>
 800639a:	4638      	mov	r0, r7
 800639c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800639e:	4621      	mov	r1, r4
 80063a0:	4630      	mov	r0, r6
 80063a2:	f7fb fda3 	bl	8001eec <__swsetup_r>
 80063a6:	bb20      	cbnz	r0, 80063f2 <__swbuf_r+0xaa>
 80063a8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80063ac:	b2ed      	uxtb	r5, r5
 80063ae:	6923      	ldr	r3, [r4, #16]
 80063b0:	b291      	uxth	r1, r2
 80063b2:	462f      	mov	r7, r5
 80063b4:	0489      	lsls	r1, r1, #18
 80063b6:	d4dc      	bmi.n	8006372 <__swbuf_r+0x2a>
 80063b8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80063ba:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80063be:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80063c2:	81a2      	strh	r2, [r4, #12]
 80063c4:	6822      	ldr	r2, [r4, #0]
 80063c6:	6661      	str	r1, [r4, #100]	; 0x64
 80063c8:	1ad3      	subs	r3, r2, r3
 80063ca:	6961      	ldr	r1, [r4, #20]
 80063cc:	4299      	cmp	r1, r3
 80063ce:	dcd5      	bgt.n	800637c <__swbuf_r+0x34>
 80063d0:	4621      	mov	r1, r4
 80063d2:	4630      	mov	r0, r6
 80063d4:	f7fc fefa 	bl	80031cc <_fflush_r>
 80063d8:	b958      	cbnz	r0, 80063f2 <__swbuf_r+0xaa>
 80063da:	6822      	ldr	r2, [r4, #0]
 80063dc:	2301      	movs	r3, #1
 80063de:	e7ce      	b.n	800637e <__swbuf_r+0x36>
 80063e0:	f7fc fffa 	bl	80033d8 <__sinit>
 80063e4:	e7b8      	b.n	8006358 <__swbuf_r+0x10>
 80063e6:	4621      	mov	r1, r4
 80063e8:	4630      	mov	r0, r6
 80063ea:	f7fc feef 	bl	80031cc <_fflush_r>
 80063ee:	2800      	cmp	r0, #0
 80063f0:	d0d3      	beq.n	800639a <__swbuf_r+0x52>
 80063f2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80063f6:	e7d0      	b.n	800639a <__swbuf_r+0x52>

080063f8 <__swbuf>:
 80063f8:	4b02      	ldr	r3, [pc, #8]	; (8006404 <__swbuf+0xc>)
 80063fa:	460a      	mov	r2, r1
 80063fc:	4601      	mov	r1, r0
 80063fe:	6818      	ldr	r0, [r3, #0]
 8006400:	f7ff bfa2 	b.w	8006348 <__swbuf_r>
 8006404:	20000000 	.word	0x20000000

08006408 <_wcrtomb_r>:
 8006408:	b5f0      	push	{r4, r5, r6, r7, lr}
 800640a:	4c0b      	ldr	r4, [pc, #44]	; (8006438 <_wcrtomb_r+0x30>)
 800640c:	b085      	sub	sp, #20
 800640e:	4606      	mov	r6, r0
 8006410:	461f      	mov	r7, r3
 8006412:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006416:	b121      	cbz	r1, 8006422 <_wcrtomb_r+0x1a>
 8006418:	47a0      	blx	r4
 800641a:	1c43      	adds	r3, r0, #1
 800641c:	d006      	beq.n	800642c <_wcrtomb_r+0x24>
 800641e:	b005      	add	sp, #20
 8006420:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006422:	460a      	mov	r2, r1
 8006424:	a901      	add	r1, sp, #4
 8006426:	47a0      	blx	r4
 8006428:	1c43      	adds	r3, r0, #1
 800642a:	d1f8      	bne.n	800641e <_wcrtomb_r+0x16>
 800642c:	2200      	movs	r2, #0
 800642e:	238a      	movs	r3, #138	; 0x8a
 8006430:	603a      	str	r2, [r7, #0]
 8006432:	6033      	str	r3, [r6, #0]
 8006434:	b005      	add	sp, #20
 8006436:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006438:	20000840 	.word	0x20000840

0800643c <wcrtomb>:
 800643c:	b570      	push	{r4, r5, r6, lr}
 800643e:	4b0f      	ldr	r3, [pc, #60]	; (800647c <wcrtomb+0x40>)
 8006440:	b084      	sub	sp, #16
 8006442:	4c0f      	ldr	r4, [pc, #60]	; (8006480 <wcrtomb+0x44>)
 8006444:	4615      	mov	r5, r2
 8006446:	f8d3 60e0 	ldr.w	r6, [r3, #224]	; 0xe0
 800644a:	6824      	ldr	r4, [r4, #0]
 800644c:	b140      	cbz	r0, 8006460 <wcrtomb+0x24>
 800644e:	460a      	mov	r2, r1
 8006450:	462b      	mov	r3, r5
 8006452:	4601      	mov	r1, r0
 8006454:	4620      	mov	r0, r4
 8006456:	47b0      	blx	r6
 8006458:	1c43      	adds	r3, r0, #1
 800645a:	d008      	beq.n	800646e <wcrtomb+0x32>
 800645c:	b004      	add	sp, #16
 800645e:	bd70      	pop	{r4, r5, r6, pc}
 8006460:	4602      	mov	r2, r0
 8006462:	462b      	mov	r3, r5
 8006464:	a901      	add	r1, sp, #4
 8006466:	4620      	mov	r0, r4
 8006468:	47b0      	blx	r6
 800646a:	1c43      	adds	r3, r0, #1
 800646c:	d1f6      	bne.n	800645c <wcrtomb+0x20>
 800646e:	2200      	movs	r2, #0
 8006470:	238a      	movs	r3, #138	; 0x8a
 8006472:	602a      	str	r2, [r5, #0]
 8006474:	6023      	str	r3, [r4, #0]
 8006476:	b004      	add	sp, #16
 8006478:	bd70      	pop	{r4, r5, r6, pc}
 800647a:	bf00      	nop
 800647c:	20000840 	.word	0x20000840
 8006480:	20000000 	.word	0x20000000

08006484 <_wctomb_r>:
 8006484:	b410      	push	{r4}
 8006486:	4c03      	ldr	r4, [pc, #12]	; (8006494 <_wctomb_r+0x10>)
 8006488:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800648c:	46a4      	mov	ip, r4
 800648e:	bc10      	pop	{r4}
 8006490:	4760      	bx	ip
 8006492:	bf00      	nop
 8006494:	20000840 	.word	0x20000840

08006498 <__ascii_wctomb>:
 8006498:	b119      	cbz	r1, 80064a2 <__ascii_wctomb+0xa>
 800649a:	2aff      	cmp	r2, #255	; 0xff
 800649c:	d803      	bhi.n	80064a6 <__ascii_wctomb+0xe>
 800649e:	700a      	strb	r2, [r1, #0]
 80064a0:	2101      	movs	r1, #1
 80064a2:	4608      	mov	r0, r1
 80064a4:	4770      	bx	lr
 80064a6:	238a      	movs	r3, #138	; 0x8a
 80064a8:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 80064ac:	6003      	str	r3, [r0, #0]
 80064ae:	4608      	mov	r0, r1
 80064b0:	4770      	bx	lr
 80064b2:	bf00      	nop

080064b4 <abort>:
 80064b4:	b508      	push	{r3, lr}
 80064b6:	2006      	movs	r0, #6
 80064b8:	f000 f890 	bl	80065dc <raise>
 80064bc:	2001      	movs	r0, #1
 80064be:	f000 ff47 	bl	8007350 <_exit>
 80064c2:	bf00      	nop

080064c4 <_init_signal_r.part.0>:
 80064c4:	b510      	push	{r4, lr}
 80064c6:	4604      	mov	r4, r0
 80064c8:	2180      	movs	r1, #128	; 0x80
 80064ca:	f7fd f9bd 	bl	8003848 <_malloc_r>
 80064ce:	f8c4 02dc 	str.w	r0, [r4, #732]	; 0x2dc
 80064d2:	b140      	cbz	r0, 80064e6 <_init_signal_r.part.0+0x22>
 80064d4:	1f03      	subs	r3, r0, #4
 80064d6:	2200      	movs	r2, #0
 80064d8:	307c      	adds	r0, #124	; 0x7c
 80064da:	f843 2f04 	str.w	r2, [r3, #4]!
 80064de:	4283      	cmp	r3, r0
 80064e0:	d1fb      	bne.n	80064da <_init_signal_r.part.0+0x16>
 80064e2:	2000      	movs	r0, #0
 80064e4:	bd10      	pop	{r4, pc}
 80064e6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80064ea:	bd10      	pop	{r4, pc}

080064ec <_init_signal_r>:
 80064ec:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 80064f0:	b10b      	cbz	r3, 80064f6 <_init_signal_r+0xa>
 80064f2:	2000      	movs	r0, #0
 80064f4:	4770      	bx	lr
 80064f6:	e7e5      	b.n	80064c4 <_init_signal_r.part.0>

080064f8 <_signal_r>:
 80064f8:	291f      	cmp	r1, #31
 80064fa:	b570      	push	{r4, r5, r6, lr}
 80064fc:	4605      	mov	r5, r0
 80064fe:	d809      	bhi.n	8006514 <_signal_r+0x1c>
 8006500:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 8006504:	4616      	mov	r6, r2
 8006506:	460c      	mov	r4, r1
 8006508:	b14b      	cbz	r3, 800651e <_signal_r+0x26>
 800650a:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800650e:	f843 6024 	str.w	r6, [r3, r4, lsl #2]
 8006512:	bd70      	pop	{r4, r5, r6, pc}
 8006514:	2216      	movs	r2, #22
 8006516:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800651a:	602a      	str	r2, [r5, #0]
 800651c:	bd70      	pop	{r4, r5, r6, pc}
 800651e:	f7ff ffd1 	bl	80064c4 <_init_signal_r.part.0>
 8006522:	b910      	cbnz	r0, 800652a <_signal_r+0x32>
 8006524:	f8d5 32dc 	ldr.w	r3, [r5, #732]	; 0x2dc
 8006528:	e7ef      	b.n	800650a <_signal_r+0x12>
 800652a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800652e:	bd70      	pop	{r4, r5, r6, pc}

08006530 <_raise_r>:
 8006530:	291f      	cmp	r1, #31
 8006532:	b538      	push	{r3, r4, r5, lr}
 8006534:	4605      	mov	r5, r0
 8006536:	d821      	bhi.n	800657c <_raise_r+0x4c>
 8006538:	f8d0 22dc 	ldr.w	r2, [r0, #732]	; 0x2dc
 800653c:	460c      	mov	r4, r1
 800653e:	b16a      	cbz	r2, 800655c <_raise_r+0x2c>
 8006540:	f852 3021 	ldr.w	r3, [r2, r1, lsl #2]
 8006544:	b153      	cbz	r3, 800655c <_raise_r+0x2c>
 8006546:	2b01      	cmp	r3, #1
 8006548:	d016      	beq.n	8006578 <_raise_r+0x48>
 800654a:	1c59      	adds	r1, r3, #1
 800654c:	d010      	beq.n	8006570 <_raise_r+0x40>
 800654e:	2500      	movs	r5, #0
 8006550:	4620      	mov	r0, r4
 8006552:	f842 5024 	str.w	r5, [r2, r4, lsl #2]
 8006556:	4798      	blx	r3
 8006558:	4628      	mov	r0, r5
 800655a:	bd38      	pop	{r3, r4, r5, pc}
 800655c:	4628      	mov	r0, r5
 800655e:	f000 f873 	bl	8006648 <_getpid_r>
 8006562:	4622      	mov	r2, r4
 8006564:	4601      	mov	r1, r0
 8006566:	4628      	mov	r0, r5
 8006568:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800656c:	f000 b858 	b.w	8006620 <_kill_r>
 8006570:	2316      	movs	r3, #22
 8006572:	2001      	movs	r0, #1
 8006574:	602b      	str	r3, [r5, #0]
 8006576:	bd38      	pop	{r3, r4, r5, pc}
 8006578:	2000      	movs	r0, #0
 800657a:	bd38      	pop	{r3, r4, r5, pc}
 800657c:	2316      	movs	r3, #22
 800657e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006582:	602b      	str	r3, [r5, #0]
 8006584:	bd38      	pop	{r3, r4, r5, pc}
 8006586:	bf00      	nop

08006588 <__sigtramp_r>:
 8006588:	291f      	cmp	r1, #31
 800658a:	d823      	bhi.n	80065d4 <__sigtramp_r+0x4c>
 800658c:	b538      	push	{r3, r4, r5, lr}
 800658e:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 8006592:	4605      	mov	r5, r0
 8006594:	460c      	mov	r4, r1
 8006596:	b183      	cbz	r3, 80065ba <__sigtramp_r+0x32>
 8006598:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
 800659c:	eb03 0384 	add.w	r3, r3, r4, lsl #2
 80065a0:	b14a      	cbz	r2, 80065b6 <__sigtramp_r+0x2e>
 80065a2:	1c51      	adds	r1, r2, #1
 80065a4:	d011      	beq.n	80065ca <__sigtramp_r+0x42>
 80065a6:	2a01      	cmp	r2, #1
 80065a8:	d00d      	beq.n	80065c6 <__sigtramp_r+0x3e>
 80065aa:	2500      	movs	r5, #0
 80065ac:	4620      	mov	r0, r4
 80065ae:	601d      	str	r5, [r3, #0]
 80065b0:	4790      	blx	r2
 80065b2:	4628      	mov	r0, r5
 80065b4:	bd38      	pop	{r3, r4, r5, pc}
 80065b6:	2001      	movs	r0, #1
 80065b8:	bd38      	pop	{r3, r4, r5, pc}
 80065ba:	f7ff ff83 	bl	80064c4 <_init_signal_r.part.0>
 80065be:	b930      	cbnz	r0, 80065ce <__sigtramp_r+0x46>
 80065c0:	f8d5 32dc 	ldr.w	r3, [r5, #732]	; 0x2dc
 80065c4:	e7e8      	b.n	8006598 <__sigtramp_r+0x10>
 80065c6:	2003      	movs	r0, #3
 80065c8:	bd38      	pop	{r3, r4, r5, pc}
 80065ca:	2002      	movs	r0, #2
 80065cc:	bd38      	pop	{r3, r4, r5, pc}
 80065ce:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80065d2:	bd38      	pop	{r3, r4, r5, pc}
 80065d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80065d8:	4770      	bx	lr
 80065da:	bf00      	nop

080065dc <raise>:
 80065dc:	4b02      	ldr	r3, [pc, #8]	; (80065e8 <raise+0xc>)
 80065de:	4601      	mov	r1, r0
 80065e0:	6818      	ldr	r0, [r3, #0]
 80065e2:	f7ff bfa5 	b.w	8006530 <_raise_r>
 80065e6:	bf00      	nop
 80065e8:	20000000 	.word	0x20000000

080065ec <signal>:
 80065ec:	4b02      	ldr	r3, [pc, #8]	; (80065f8 <signal+0xc>)
 80065ee:	460a      	mov	r2, r1
 80065f0:	4601      	mov	r1, r0
 80065f2:	6818      	ldr	r0, [r3, #0]
 80065f4:	f7ff bf80 	b.w	80064f8 <_signal_r>
 80065f8:	20000000 	.word	0x20000000

080065fc <_init_signal>:
 80065fc:	4b03      	ldr	r3, [pc, #12]	; (800660c <_init_signal+0x10>)
 80065fe:	6818      	ldr	r0, [r3, #0]
 8006600:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 8006604:	b10b      	cbz	r3, 800660a <_init_signal+0xe>
 8006606:	2000      	movs	r0, #0
 8006608:	4770      	bx	lr
 800660a:	e75b      	b.n	80064c4 <_init_signal_r.part.0>
 800660c:	20000000 	.word	0x20000000

08006610 <__sigtramp>:
 8006610:	4b02      	ldr	r3, [pc, #8]	; (800661c <__sigtramp+0xc>)
 8006612:	4601      	mov	r1, r0
 8006614:	6818      	ldr	r0, [r3, #0]
 8006616:	f7ff bfb7 	b.w	8006588 <__sigtramp_r>
 800661a:	bf00      	nop
 800661c:	20000000 	.word	0x20000000

08006620 <_kill_r>:
 8006620:	b570      	push	{r4, r5, r6, lr}
 8006622:	460d      	mov	r5, r1
 8006624:	2300      	movs	r3, #0
 8006626:	4c07      	ldr	r4, [pc, #28]	; (8006644 <_kill_r+0x24>)
 8006628:	4606      	mov	r6, r0
 800662a:	4611      	mov	r1, r2
 800662c:	4628      	mov	r0, r5
 800662e:	6023      	str	r3, [r4, #0]
 8006630:	f000 fe7e 	bl	8007330 <_kill>
 8006634:	1c43      	adds	r3, r0, #1
 8006636:	d000      	beq.n	800663a <_kill_r+0x1a>
 8006638:	bd70      	pop	{r4, r5, r6, pc}
 800663a:	6823      	ldr	r3, [r4, #0]
 800663c:	2b00      	cmp	r3, #0
 800663e:	d0fb      	beq.n	8006638 <_kill_r+0x18>
 8006640:	6033      	str	r3, [r6, #0]
 8006642:	bd70      	pop	{r4, r5, r6, pc}
 8006644:	20000b2c 	.word	0x20000b2c

08006648 <_getpid_r>:
 8006648:	f000 be6b 	b.w	8007322 <_getpid>

0800664c <__aeabi_drsub>:
 800664c:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8006650:	e002      	b.n	8006658 <__adddf3>
 8006652:	bf00      	nop

08006654 <__aeabi_dsub>:
 8006654:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08006658 <__adddf3>:
 8006658:	b530      	push	{r4, r5, lr}
 800665a:	ea4f 0441 	mov.w	r4, r1, lsl #1
 800665e:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8006662:	ea94 0f05 	teq	r4, r5
 8006666:	bf08      	it	eq
 8006668:	ea90 0f02 	teqeq	r0, r2
 800666c:	bf1f      	itttt	ne
 800666e:	ea54 0c00 	orrsne.w	ip, r4, r0
 8006672:	ea55 0c02 	orrsne.w	ip, r5, r2
 8006676:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 800667a:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 800667e:	f000 80e2 	beq.w	8006846 <__adddf3+0x1ee>
 8006682:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8006686:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 800668a:	bfb8      	it	lt
 800668c:	426d      	neglt	r5, r5
 800668e:	dd0c      	ble.n	80066aa <__adddf3+0x52>
 8006690:	442c      	add	r4, r5
 8006692:	ea80 0202 	eor.w	r2, r0, r2
 8006696:	ea81 0303 	eor.w	r3, r1, r3
 800669a:	ea82 0000 	eor.w	r0, r2, r0
 800669e:	ea83 0101 	eor.w	r1, r3, r1
 80066a2:	ea80 0202 	eor.w	r2, r0, r2
 80066a6:	ea81 0303 	eor.w	r3, r1, r3
 80066aa:	2d36      	cmp	r5, #54	; 0x36
 80066ac:	bf88      	it	hi
 80066ae:	bd30      	pophi	{r4, r5, pc}
 80066b0:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80066b4:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80066b8:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 80066bc:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 80066c0:	d002      	beq.n	80066c8 <__adddf3+0x70>
 80066c2:	4240      	negs	r0, r0
 80066c4:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80066c8:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 80066cc:	ea4f 3303 	mov.w	r3, r3, lsl #12
 80066d0:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 80066d4:	d002      	beq.n	80066dc <__adddf3+0x84>
 80066d6:	4252      	negs	r2, r2
 80066d8:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 80066dc:	ea94 0f05 	teq	r4, r5
 80066e0:	f000 80a7 	beq.w	8006832 <__adddf3+0x1da>
 80066e4:	f1a4 0401 	sub.w	r4, r4, #1
 80066e8:	f1d5 0e20 	rsbs	lr, r5, #32
 80066ec:	db0d      	blt.n	800670a <__adddf3+0xb2>
 80066ee:	fa02 fc0e 	lsl.w	ip, r2, lr
 80066f2:	fa22 f205 	lsr.w	r2, r2, r5
 80066f6:	1880      	adds	r0, r0, r2
 80066f8:	f141 0100 	adc.w	r1, r1, #0
 80066fc:	fa03 f20e 	lsl.w	r2, r3, lr
 8006700:	1880      	adds	r0, r0, r2
 8006702:	fa43 f305 	asr.w	r3, r3, r5
 8006706:	4159      	adcs	r1, r3
 8006708:	e00e      	b.n	8006728 <__adddf3+0xd0>
 800670a:	f1a5 0520 	sub.w	r5, r5, #32
 800670e:	f10e 0e20 	add.w	lr, lr, #32
 8006712:	2a01      	cmp	r2, #1
 8006714:	fa03 fc0e 	lsl.w	ip, r3, lr
 8006718:	bf28      	it	cs
 800671a:	f04c 0c02 	orrcs.w	ip, ip, #2
 800671e:	fa43 f305 	asr.w	r3, r3, r5
 8006722:	18c0      	adds	r0, r0, r3
 8006724:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8006728:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 800672c:	d507      	bpl.n	800673e <__adddf3+0xe6>
 800672e:	f04f 0e00 	mov.w	lr, #0
 8006732:	f1dc 0c00 	rsbs	ip, ip, #0
 8006736:	eb7e 0000 	sbcs.w	r0, lr, r0
 800673a:	eb6e 0101 	sbc.w	r1, lr, r1
 800673e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006742:	d31b      	bcc.n	800677c <__adddf3+0x124>
 8006744:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8006748:	d30c      	bcc.n	8006764 <__adddf3+0x10c>
 800674a:	0849      	lsrs	r1, r1, #1
 800674c:	ea5f 0030 	movs.w	r0, r0, rrx
 8006750:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8006754:	f104 0401 	add.w	r4, r4, #1
 8006758:	ea4f 5244 	mov.w	r2, r4, lsl #21
 800675c:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8006760:	f080 809a 	bcs.w	8006898 <__adddf3+0x240>
 8006764:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8006768:	bf08      	it	eq
 800676a:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 800676e:	f150 0000 	adcs.w	r0, r0, #0
 8006772:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8006776:	ea41 0105 	orr.w	r1, r1, r5
 800677a:	bd30      	pop	{r4, r5, pc}
 800677c:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8006780:	4140      	adcs	r0, r0
 8006782:	eb41 0101 	adc.w	r1, r1, r1
 8006786:	3c01      	subs	r4, #1
 8006788:	bf28      	it	cs
 800678a:	f5b1 1f80 	cmpcs.w	r1, #1048576	; 0x100000
 800678e:	d2e9      	bcs.n	8006764 <__adddf3+0x10c>
 8006790:	f091 0f00 	teq	r1, #0
 8006794:	bf04      	itt	eq
 8006796:	4601      	moveq	r1, r0
 8006798:	2000      	moveq	r0, #0
 800679a:	fab1 f381 	clz	r3, r1
 800679e:	bf08      	it	eq
 80067a0:	3320      	addeq	r3, #32
 80067a2:	f1a3 030b 	sub.w	r3, r3, #11
 80067a6:	f1b3 0220 	subs.w	r2, r3, #32
 80067aa:	da0c      	bge.n	80067c6 <__adddf3+0x16e>
 80067ac:	320c      	adds	r2, #12
 80067ae:	dd08      	ble.n	80067c2 <__adddf3+0x16a>
 80067b0:	f102 0c14 	add.w	ip, r2, #20
 80067b4:	f1c2 020c 	rsb	r2, r2, #12
 80067b8:	fa01 f00c 	lsl.w	r0, r1, ip
 80067bc:	fa21 f102 	lsr.w	r1, r1, r2
 80067c0:	e00c      	b.n	80067dc <__adddf3+0x184>
 80067c2:	f102 0214 	add.w	r2, r2, #20
 80067c6:	bfd8      	it	le
 80067c8:	f1c2 0c20 	rsble	ip, r2, #32
 80067cc:	fa01 f102 	lsl.w	r1, r1, r2
 80067d0:	fa20 fc0c 	lsr.w	ip, r0, ip
 80067d4:	bfdc      	itt	le
 80067d6:	ea41 010c 	orrle.w	r1, r1, ip
 80067da:	4090      	lslle	r0, r2
 80067dc:	1ae4      	subs	r4, r4, r3
 80067de:	bfa2      	ittt	ge
 80067e0:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 80067e4:	4329      	orrge	r1, r5
 80067e6:	bd30      	popge	{r4, r5, pc}
 80067e8:	ea6f 0404 	mvn.w	r4, r4
 80067ec:	3c1f      	subs	r4, #31
 80067ee:	da1c      	bge.n	800682a <__adddf3+0x1d2>
 80067f0:	340c      	adds	r4, #12
 80067f2:	dc0e      	bgt.n	8006812 <__adddf3+0x1ba>
 80067f4:	f104 0414 	add.w	r4, r4, #20
 80067f8:	f1c4 0220 	rsb	r2, r4, #32
 80067fc:	fa20 f004 	lsr.w	r0, r0, r4
 8006800:	fa01 f302 	lsl.w	r3, r1, r2
 8006804:	ea40 0003 	orr.w	r0, r0, r3
 8006808:	fa21 f304 	lsr.w	r3, r1, r4
 800680c:	ea45 0103 	orr.w	r1, r5, r3
 8006810:	bd30      	pop	{r4, r5, pc}
 8006812:	f1c4 040c 	rsb	r4, r4, #12
 8006816:	f1c4 0220 	rsb	r2, r4, #32
 800681a:	fa20 f002 	lsr.w	r0, r0, r2
 800681e:	fa01 f304 	lsl.w	r3, r1, r4
 8006822:	ea40 0003 	orr.w	r0, r0, r3
 8006826:	4629      	mov	r1, r5
 8006828:	bd30      	pop	{r4, r5, pc}
 800682a:	fa21 f004 	lsr.w	r0, r1, r4
 800682e:	4629      	mov	r1, r5
 8006830:	bd30      	pop	{r4, r5, pc}
 8006832:	f094 0f00 	teq	r4, #0
 8006836:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 800683a:	bf06      	itte	eq
 800683c:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8006840:	3401      	addeq	r4, #1
 8006842:	3d01      	subne	r5, #1
 8006844:	e74e      	b.n	80066e4 <__adddf3+0x8c>
 8006846:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 800684a:	bf18      	it	ne
 800684c:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8006850:	d029      	beq.n	80068a6 <__adddf3+0x24e>
 8006852:	ea94 0f05 	teq	r4, r5
 8006856:	bf08      	it	eq
 8006858:	ea90 0f02 	teqeq	r0, r2
 800685c:	d005      	beq.n	800686a <__adddf3+0x212>
 800685e:	ea54 0c00 	orrs.w	ip, r4, r0
 8006862:	bf04      	itt	eq
 8006864:	4619      	moveq	r1, r3
 8006866:	4610      	moveq	r0, r2
 8006868:	bd30      	pop	{r4, r5, pc}
 800686a:	ea91 0f03 	teq	r1, r3
 800686e:	bf1e      	ittt	ne
 8006870:	2100      	movne	r1, #0
 8006872:	2000      	movne	r0, #0
 8006874:	bd30      	popne	{r4, r5, pc}
 8006876:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 800687a:	d105      	bne.n	8006888 <__adddf3+0x230>
 800687c:	0040      	lsls	r0, r0, #1
 800687e:	4149      	adcs	r1, r1
 8006880:	bf28      	it	cs
 8006882:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8006886:	bd30      	pop	{r4, r5, pc}
 8006888:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 800688c:	bf3c      	itt	cc
 800688e:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8006892:	bd30      	popcc	{r4, r5, pc}
 8006894:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8006898:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 800689c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80068a0:	f04f 0000 	mov.w	r0, #0
 80068a4:	bd30      	pop	{r4, r5, pc}
 80068a6:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 80068aa:	bf1a      	itte	ne
 80068ac:	4619      	movne	r1, r3
 80068ae:	4610      	movne	r0, r2
 80068b0:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 80068b4:	bf1c      	itt	ne
 80068b6:	460b      	movne	r3, r1
 80068b8:	4602      	movne	r2, r0
 80068ba:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 80068be:	bf06      	itte	eq
 80068c0:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 80068c4:	ea91 0f03 	teqeq	r1, r3
 80068c8:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 80068cc:	bd30      	pop	{r4, r5, pc}
 80068ce:	bf00      	nop

080068d0 <__aeabi_ui2d>:
 80068d0:	f090 0f00 	teq	r0, #0
 80068d4:	bf04      	itt	eq
 80068d6:	2100      	moveq	r1, #0
 80068d8:	4770      	bxeq	lr
 80068da:	b530      	push	{r4, r5, lr}
 80068dc:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80068e0:	f104 0432 	add.w	r4, r4, #50	; 0x32
 80068e4:	f04f 0500 	mov.w	r5, #0
 80068e8:	f04f 0100 	mov.w	r1, #0
 80068ec:	e750      	b.n	8006790 <__adddf3+0x138>
 80068ee:	bf00      	nop

080068f0 <__aeabi_i2d>:
 80068f0:	f090 0f00 	teq	r0, #0
 80068f4:	bf04      	itt	eq
 80068f6:	2100      	moveq	r1, #0
 80068f8:	4770      	bxeq	lr
 80068fa:	b530      	push	{r4, r5, lr}
 80068fc:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8006900:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8006904:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8006908:	bf48      	it	mi
 800690a:	4240      	negmi	r0, r0
 800690c:	f04f 0100 	mov.w	r1, #0
 8006910:	e73e      	b.n	8006790 <__adddf3+0x138>
 8006912:	bf00      	nop

08006914 <__aeabi_f2d>:
 8006914:	0042      	lsls	r2, r0, #1
 8006916:	ea4f 01e2 	mov.w	r1, r2, asr #3
 800691a:	ea4f 0131 	mov.w	r1, r1, rrx
 800691e:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8006922:	bf1f      	itttt	ne
 8006924:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8006928:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 800692c:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8006930:	4770      	bxne	lr
 8006932:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8006936:	bf08      	it	eq
 8006938:	4770      	bxeq	lr
 800693a:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 800693e:	bf04      	itt	eq
 8006940:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8006944:	4770      	bxeq	lr
 8006946:	b530      	push	{r4, r5, lr}
 8006948:	f44f 7460 	mov.w	r4, #896	; 0x380
 800694c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8006950:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006954:	e71c      	b.n	8006790 <__adddf3+0x138>
 8006956:	bf00      	nop

08006958 <__aeabi_ul2d>:
 8006958:	ea50 0201 	orrs.w	r2, r0, r1
 800695c:	bf08      	it	eq
 800695e:	4770      	bxeq	lr
 8006960:	b530      	push	{r4, r5, lr}
 8006962:	f04f 0500 	mov.w	r5, #0
 8006966:	e00a      	b.n	800697e <__aeabi_l2d+0x16>

08006968 <__aeabi_l2d>:
 8006968:	ea50 0201 	orrs.w	r2, r0, r1
 800696c:	bf08      	it	eq
 800696e:	4770      	bxeq	lr
 8006970:	b530      	push	{r4, r5, lr}
 8006972:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8006976:	d502      	bpl.n	800697e <__aeabi_l2d+0x16>
 8006978:	4240      	negs	r0, r0
 800697a:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800697e:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8006982:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8006986:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 800698a:	f43f aed8 	beq.w	800673e <__adddf3+0xe6>
 800698e:	f04f 0203 	mov.w	r2, #3
 8006992:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8006996:	bf18      	it	ne
 8006998:	3203      	addne	r2, #3
 800699a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 800699e:	bf18      	it	ne
 80069a0:	3203      	addne	r2, #3
 80069a2:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 80069a6:	f1c2 0320 	rsb	r3, r2, #32
 80069aa:	fa00 fc03 	lsl.w	ip, r0, r3
 80069ae:	fa20 f002 	lsr.w	r0, r0, r2
 80069b2:	fa01 fe03 	lsl.w	lr, r1, r3
 80069b6:	ea40 000e 	orr.w	r0, r0, lr
 80069ba:	fa21 f102 	lsr.w	r1, r1, r2
 80069be:	4414      	add	r4, r2
 80069c0:	e6bd      	b.n	800673e <__adddf3+0xe6>
 80069c2:	bf00      	nop

080069c4 <__aeabi_dmul>:
 80069c4:	b570      	push	{r4, r5, r6, lr}
 80069c6:	f04f 0cff 	mov.w	ip, #255	; 0xff
 80069ca:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 80069ce:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 80069d2:	bf1d      	ittte	ne
 80069d4:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 80069d8:	ea94 0f0c 	teqne	r4, ip
 80069dc:	ea95 0f0c 	teqne	r5, ip
 80069e0:	f000 f8de 	bleq	8006ba0 <__aeabi_dmul+0x1dc>
 80069e4:	442c      	add	r4, r5
 80069e6:	ea81 0603 	eor.w	r6, r1, r3
 80069ea:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 80069ee:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 80069f2:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 80069f6:	bf18      	it	ne
 80069f8:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 80069fc:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8006a00:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006a04:	d038      	beq.n	8006a78 <__aeabi_dmul+0xb4>
 8006a06:	fba0 ce02 	umull	ip, lr, r0, r2
 8006a0a:	f04f 0500 	mov.w	r5, #0
 8006a0e:	fbe1 e502 	umlal	lr, r5, r1, r2
 8006a12:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8006a16:	fbe0 e503 	umlal	lr, r5, r0, r3
 8006a1a:	f04f 0600 	mov.w	r6, #0
 8006a1e:	fbe1 5603 	umlal	r5, r6, r1, r3
 8006a22:	f09c 0f00 	teq	ip, #0
 8006a26:	bf18      	it	ne
 8006a28:	f04e 0e01 	orrne.w	lr, lr, #1
 8006a2c:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8006a30:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8006a34:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8006a38:	d204      	bcs.n	8006a44 <__aeabi_dmul+0x80>
 8006a3a:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8006a3e:	416d      	adcs	r5, r5
 8006a40:	eb46 0606 	adc.w	r6, r6, r6
 8006a44:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8006a48:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8006a4c:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8006a50:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8006a54:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8006a58:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8006a5c:	bf88      	it	hi
 8006a5e:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8006a62:	d81e      	bhi.n	8006aa2 <__aeabi_dmul+0xde>
 8006a64:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8006a68:	bf08      	it	eq
 8006a6a:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8006a6e:	f150 0000 	adcs.w	r0, r0, #0
 8006a72:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8006a76:	bd70      	pop	{r4, r5, r6, pc}
 8006a78:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8006a7c:	ea46 0101 	orr.w	r1, r6, r1
 8006a80:	ea40 0002 	orr.w	r0, r0, r2
 8006a84:	ea81 0103 	eor.w	r1, r1, r3
 8006a88:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8006a8c:	bfc2      	ittt	gt
 8006a8e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8006a92:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8006a96:	bd70      	popgt	{r4, r5, r6, pc}
 8006a98:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8006a9c:	f04f 0e00 	mov.w	lr, #0
 8006aa0:	3c01      	subs	r4, #1
 8006aa2:	f300 80ab 	bgt.w	8006bfc <__aeabi_dmul+0x238>
 8006aa6:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8006aaa:	bfde      	ittt	le
 8006aac:	2000      	movle	r0, #0
 8006aae:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8006ab2:	bd70      	pople	{r4, r5, r6, pc}
 8006ab4:	f1c4 0400 	rsb	r4, r4, #0
 8006ab8:	3c20      	subs	r4, #32
 8006aba:	da35      	bge.n	8006b28 <__aeabi_dmul+0x164>
 8006abc:	340c      	adds	r4, #12
 8006abe:	dc1b      	bgt.n	8006af8 <__aeabi_dmul+0x134>
 8006ac0:	f104 0414 	add.w	r4, r4, #20
 8006ac4:	f1c4 0520 	rsb	r5, r4, #32
 8006ac8:	fa00 f305 	lsl.w	r3, r0, r5
 8006acc:	fa20 f004 	lsr.w	r0, r0, r4
 8006ad0:	fa01 f205 	lsl.w	r2, r1, r5
 8006ad4:	ea40 0002 	orr.w	r0, r0, r2
 8006ad8:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8006adc:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006ae0:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8006ae4:	fa21 f604 	lsr.w	r6, r1, r4
 8006ae8:	eb42 0106 	adc.w	r1, r2, r6
 8006aec:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8006af0:	bf08      	it	eq
 8006af2:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8006af6:	bd70      	pop	{r4, r5, r6, pc}
 8006af8:	f1c4 040c 	rsb	r4, r4, #12
 8006afc:	f1c4 0520 	rsb	r5, r4, #32
 8006b00:	fa00 f304 	lsl.w	r3, r0, r4
 8006b04:	fa20 f005 	lsr.w	r0, r0, r5
 8006b08:	fa01 f204 	lsl.w	r2, r1, r4
 8006b0c:	ea40 0002 	orr.w	r0, r0, r2
 8006b10:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8006b14:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8006b18:	f141 0100 	adc.w	r1, r1, #0
 8006b1c:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8006b20:	bf08      	it	eq
 8006b22:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8006b26:	bd70      	pop	{r4, r5, r6, pc}
 8006b28:	f1c4 0520 	rsb	r5, r4, #32
 8006b2c:	fa00 f205 	lsl.w	r2, r0, r5
 8006b30:	ea4e 0e02 	orr.w	lr, lr, r2
 8006b34:	fa20 f304 	lsr.w	r3, r0, r4
 8006b38:	fa01 f205 	lsl.w	r2, r1, r5
 8006b3c:	ea43 0302 	orr.w	r3, r3, r2
 8006b40:	fa21 f004 	lsr.w	r0, r1, r4
 8006b44:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8006b48:	fa21 f204 	lsr.w	r2, r1, r4
 8006b4c:	ea20 0002 	bic.w	r0, r0, r2
 8006b50:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8006b54:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8006b58:	bf08      	it	eq
 8006b5a:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8006b5e:	bd70      	pop	{r4, r5, r6, pc}
 8006b60:	f094 0f00 	teq	r4, #0
 8006b64:	d10f      	bne.n	8006b86 <__aeabi_dmul+0x1c2>
 8006b66:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8006b6a:	0040      	lsls	r0, r0, #1
 8006b6c:	eb41 0101 	adc.w	r1, r1, r1
 8006b70:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8006b74:	bf08      	it	eq
 8006b76:	3c01      	subeq	r4, #1
 8006b78:	d0f7      	beq.n	8006b6a <__aeabi_dmul+0x1a6>
 8006b7a:	ea41 0106 	orr.w	r1, r1, r6
 8006b7e:	f095 0f00 	teq	r5, #0
 8006b82:	bf18      	it	ne
 8006b84:	4770      	bxne	lr
 8006b86:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8006b8a:	0052      	lsls	r2, r2, #1
 8006b8c:	eb43 0303 	adc.w	r3, r3, r3
 8006b90:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8006b94:	bf08      	it	eq
 8006b96:	3d01      	subeq	r5, #1
 8006b98:	d0f7      	beq.n	8006b8a <__aeabi_dmul+0x1c6>
 8006b9a:	ea43 0306 	orr.w	r3, r3, r6
 8006b9e:	4770      	bx	lr
 8006ba0:	ea94 0f0c 	teq	r4, ip
 8006ba4:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8006ba8:	bf18      	it	ne
 8006baa:	ea95 0f0c 	teqne	r5, ip
 8006bae:	d00c      	beq.n	8006bca <__aeabi_dmul+0x206>
 8006bb0:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8006bb4:	bf18      	it	ne
 8006bb6:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8006bba:	d1d1      	bne.n	8006b60 <__aeabi_dmul+0x19c>
 8006bbc:	ea81 0103 	eor.w	r1, r1, r3
 8006bc0:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8006bc4:	f04f 0000 	mov.w	r0, #0
 8006bc8:	bd70      	pop	{r4, r5, r6, pc}
 8006bca:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8006bce:	bf06      	itte	eq
 8006bd0:	4610      	moveq	r0, r2
 8006bd2:	4619      	moveq	r1, r3
 8006bd4:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8006bd8:	d019      	beq.n	8006c0e <__aeabi_dmul+0x24a>
 8006bda:	ea94 0f0c 	teq	r4, ip
 8006bde:	d102      	bne.n	8006be6 <__aeabi_dmul+0x222>
 8006be0:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8006be4:	d113      	bne.n	8006c0e <__aeabi_dmul+0x24a>
 8006be6:	ea95 0f0c 	teq	r5, ip
 8006bea:	d105      	bne.n	8006bf8 <__aeabi_dmul+0x234>
 8006bec:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8006bf0:	bf1c      	itt	ne
 8006bf2:	4610      	movne	r0, r2
 8006bf4:	4619      	movne	r1, r3
 8006bf6:	d10a      	bne.n	8006c0e <__aeabi_dmul+0x24a>
 8006bf8:	ea81 0103 	eor.w	r1, r1, r3
 8006bfc:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8006c00:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8006c04:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8006c08:	f04f 0000 	mov.w	r0, #0
 8006c0c:	bd70      	pop	{r4, r5, r6, pc}
 8006c0e:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8006c12:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8006c16:	bd70      	pop	{r4, r5, r6, pc}

08006c18 <__aeabi_ddiv>:
 8006c18:	b570      	push	{r4, r5, r6, lr}
 8006c1a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8006c1e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8006c22:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8006c26:	bf1d      	ittte	ne
 8006c28:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8006c2c:	ea94 0f0c 	teqne	r4, ip
 8006c30:	ea95 0f0c 	teqne	r5, ip
 8006c34:	f000 f8a7 	bleq	8006d86 <__aeabi_ddiv+0x16e>
 8006c38:	eba4 0405 	sub.w	r4, r4, r5
 8006c3c:	ea81 0e03 	eor.w	lr, r1, r3
 8006c40:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8006c44:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8006c48:	f000 8088 	beq.w	8006d5c <__aeabi_ddiv+0x144>
 8006c4c:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8006c50:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8006c54:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8006c58:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8006c5c:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8006c60:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8006c64:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8006c68:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8006c6c:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8006c70:	429d      	cmp	r5, r3
 8006c72:	bf08      	it	eq
 8006c74:	4296      	cmpeq	r6, r2
 8006c76:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8006c7a:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8006c7e:	d202      	bcs.n	8006c86 <__aeabi_ddiv+0x6e>
 8006c80:	085b      	lsrs	r3, r3, #1
 8006c82:	ea4f 0232 	mov.w	r2, r2, rrx
 8006c86:	1ab6      	subs	r6, r6, r2
 8006c88:	eb65 0503 	sbc.w	r5, r5, r3
 8006c8c:	085b      	lsrs	r3, r3, #1
 8006c8e:	ea4f 0232 	mov.w	r2, r2, rrx
 8006c92:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8006c96:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8006c9a:	ebb6 0e02 	subs.w	lr, r6, r2
 8006c9e:	eb75 0e03 	sbcs.w	lr, r5, r3
 8006ca2:	bf22      	ittt	cs
 8006ca4:	1ab6      	subcs	r6, r6, r2
 8006ca6:	4675      	movcs	r5, lr
 8006ca8:	ea40 000c 	orrcs.w	r0, r0, ip
 8006cac:	085b      	lsrs	r3, r3, #1
 8006cae:	ea4f 0232 	mov.w	r2, r2, rrx
 8006cb2:	ebb6 0e02 	subs.w	lr, r6, r2
 8006cb6:	eb75 0e03 	sbcs.w	lr, r5, r3
 8006cba:	bf22      	ittt	cs
 8006cbc:	1ab6      	subcs	r6, r6, r2
 8006cbe:	4675      	movcs	r5, lr
 8006cc0:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8006cc4:	085b      	lsrs	r3, r3, #1
 8006cc6:	ea4f 0232 	mov.w	r2, r2, rrx
 8006cca:	ebb6 0e02 	subs.w	lr, r6, r2
 8006cce:	eb75 0e03 	sbcs.w	lr, r5, r3
 8006cd2:	bf22      	ittt	cs
 8006cd4:	1ab6      	subcs	r6, r6, r2
 8006cd6:	4675      	movcs	r5, lr
 8006cd8:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8006cdc:	085b      	lsrs	r3, r3, #1
 8006cde:	ea4f 0232 	mov.w	r2, r2, rrx
 8006ce2:	ebb6 0e02 	subs.w	lr, r6, r2
 8006ce6:	eb75 0e03 	sbcs.w	lr, r5, r3
 8006cea:	bf22      	ittt	cs
 8006cec:	1ab6      	subcs	r6, r6, r2
 8006cee:	4675      	movcs	r5, lr
 8006cf0:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8006cf4:	ea55 0e06 	orrs.w	lr, r5, r6
 8006cf8:	d018      	beq.n	8006d2c <__aeabi_ddiv+0x114>
 8006cfa:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8006cfe:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8006d02:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8006d06:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8006d0a:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8006d0e:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8006d12:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8006d16:	d1c0      	bne.n	8006c9a <__aeabi_ddiv+0x82>
 8006d18:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8006d1c:	d10b      	bne.n	8006d36 <__aeabi_ddiv+0x11e>
 8006d1e:	ea41 0100 	orr.w	r1, r1, r0
 8006d22:	f04f 0000 	mov.w	r0, #0
 8006d26:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8006d2a:	e7b6      	b.n	8006c9a <__aeabi_ddiv+0x82>
 8006d2c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8006d30:	bf04      	itt	eq
 8006d32:	4301      	orreq	r1, r0
 8006d34:	2000      	moveq	r0, #0
 8006d36:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8006d3a:	bf88      	it	hi
 8006d3c:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8006d40:	f63f aeaf 	bhi.w	8006aa2 <__aeabi_dmul+0xde>
 8006d44:	ebb5 0c03 	subs.w	ip, r5, r3
 8006d48:	bf04      	itt	eq
 8006d4a:	ebb6 0c02 	subseq.w	ip, r6, r2
 8006d4e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8006d52:	f150 0000 	adcs.w	r0, r0, #0
 8006d56:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8006d5a:	bd70      	pop	{r4, r5, r6, pc}
 8006d5c:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8006d60:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8006d64:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8006d68:	bfc2      	ittt	gt
 8006d6a:	ebd4 050c 	rsbsgt	r5, r4, ip
 8006d6e:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8006d72:	bd70      	popgt	{r4, r5, r6, pc}
 8006d74:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8006d78:	f04f 0e00 	mov.w	lr, #0
 8006d7c:	3c01      	subs	r4, #1
 8006d7e:	e690      	b.n	8006aa2 <__aeabi_dmul+0xde>
 8006d80:	ea45 0e06 	orr.w	lr, r5, r6
 8006d84:	e68d      	b.n	8006aa2 <__aeabi_dmul+0xde>
 8006d86:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8006d8a:	ea94 0f0c 	teq	r4, ip
 8006d8e:	bf08      	it	eq
 8006d90:	ea95 0f0c 	teqeq	r5, ip
 8006d94:	f43f af3b 	beq.w	8006c0e <__aeabi_dmul+0x24a>
 8006d98:	ea94 0f0c 	teq	r4, ip
 8006d9c:	d10a      	bne.n	8006db4 <__aeabi_ddiv+0x19c>
 8006d9e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8006da2:	f47f af34 	bne.w	8006c0e <__aeabi_dmul+0x24a>
 8006da6:	ea95 0f0c 	teq	r5, ip
 8006daa:	f47f af25 	bne.w	8006bf8 <__aeabi_dmul+0x234>
 8006dae:	4610      	mov	r0, r2
 8006db0:	4619      	mov	r1, r3
 8006db2:	e72c      	b.n	8006c0e <__aeabi_dmul+0x24a>
 8006db4:	ea95 0f0c 	teq	r5, ip
 8006db8:	d106      	bne.n	8006dc8 <__aeabi_ddiv+0x1b0>
 8006dba:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8006dbe:	f43f aefd 	beq.w	8006bbc <__aeabi_dmul+0x1f8>
 8006dc2:	4610      	mov	r0, r2
 8006dc4:	4619      	mov	r1, r3
 8006dc6:	e722      	b.n	8006c0e <__aeabi_dmul+0x24a>
 8006dc8:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8006dcc:	bf18      	it	ne
 8006dce:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8006dd2:	f47f aec5 	bne.w	8006b60 <__aeabi_dmul+0x19c>
 8006dd6:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 8006dda:	f47f af0d 	bne.w	8006bf8 <__aeabi_dmul+0x234>
 8006dde:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8006de2:	f47f aeeb 	bne.w	8006bbc <__aeabi_dmul+0x1f8>
 8006de6:	e712      	b.n	8006c0e <__aeabi_dmul+0x24a>

08006de8 <__gedf2>:
 8006de8:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8006dec:	e006      	b.n	8006dfc <__cmpdf2+0x4>
 8006dee:	bf00      	nop

08006df0 <__ledf2>:
 8006df0:	f04f 0c01 	mov.w	ip, #1
 8006df4:	e002      	b.n	8006dfc <__cmpdf2+0x4>
 8006df6:	bf00      	nop

08006df8 <__cmpdf2>:
 8006df8:	f04f 0c01 	mov.w	ip, #1
 8006dfc:	f84d cd04 	str.w	ip, [sp, #-4]!
 8006e00:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8006e04:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8006e08:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8006e0c:	bf18      	it	ne
 8006e0e:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8006e12:	d01b      	beq.n	8006e4c <__cmpdf2+0x54>
 8006e14:	b001      	add	sp, #4
 8006e16:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 8006e1a:	bf0c      	ite	eq
 8006e1c:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8006e20:	ea91 0f03 	teqne	r1, r3
 8006e24:	bf02      	ittt	eq
 8006e26:	ea90 0f02 	teqeq	r0, r2
 8006e2a:	2000      	moveq	r0, #0
 8006e2c:	4770      	bxeq	lr
 8006e2e:	f110 0f00 	cmn.w	r0, #0
 8006e32:	ea91 0f03 	teq	r1, r3
 8006e36:	bf58      	it	pl
 8006e38:	4299      	cmppl	r1, r3
 8006e3a:	bf08      	it	eq
 8006e3c:	4290      	cmpeq	r0, r2
 8006e3e:	bf2c      	ite	cs
 8006e40:	17d8      	asrcs	r0, r3, #31
 8006e42:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 8006e46:	f040 0001 	orr.w	r0, r0, #1
 8006e4a:	4770      	bx	lr
 8006e4c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8006e50:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8006e54:	d102      	bne.n	8006e5c <__cmpdf2+0x64>
 8006e56:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8006e5a:	d107      	bne.n	8006e6c <__cmpdf2+0x74>
 8006e5c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8006e60:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8006e64:	d1d6      	bne.n	8006e14 <__cmpdf2+0x1c>
 8006e66:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8006e6a:	d0d3      	beq.n	8006e14 <__cmpdf2+0x1c>
 8006e6c:	f85d 0b04 	ldr.w	r0, [sp], #4
 8006e70:	4770      	bx	lr
 8006e72:	bf00      	nop

08006e74 <__aeabi_cdrcmple>:
 8006e74:	4684      	mov	ip, r0
 8006e76:	4610      	mov	r0, r2
 8006e78:	4662      	mov	r2, ip
 8006e7a:	468c      	mov	ip, r1
 8006e7c:	4619      	mov	r1, r3
 8006e7e:	4663      	mov	r3, ip
 8006e80:	e000      	b.n	8006e84 <__aeabi_cdcmpeq>
 8006e82:	bf00      	nop

08006e84 <__aeabi_cdcmpeq>:
 8006e84:	b501      	push	{r0, lr}
 8006e86:	f7ff ffb7 	bl	8006df8 <__cmpdf2>
 8006e8a:	2800      	cmp	r0, #0
 8006e8c:	bf48      	it	mi
 8006e8e:	f110 0f00 	cmnmi.w	r0, #0
 8006e92:	bd01      	pop	{r0, pc}

08006e94 <__aeabi_dcmpeq>:
 8006e94:	f84d ed08 	str.w	lr, [sp, #-8]!
 8006e98:	f7ff fff4 	bl	8006e84 <__aeabi_cdcmpeq>
 8006e9c:	bf0c      	ite	eq
 8006e9e:	2001      	moveq	r0, #1
 8006ea0:	2000      	movne	r0, #0
 8006ea2:	f85d fb08 	ldr.w	pc, [sp], #8
 8006ea6:	bf00      	nop

08006ea8 <__aeabi_dcmplt>:
 8006ea8:	f84d ed08 	str.w	lr, [sp, #-8]!
 8006eac:	f7ff ffea 	bl	8006e84 <__aeabi_cdcmpeq>
 8006eb0:	bf34      	ite	cc
 8006eb2:	2001      	movcc	r0, #1
 8006eb4:	2000      	movcs	r0, #0
 8006eb6:	f85d fb08 	ldr.w	pc, [sp], #8
 8006eba:	bf00      	nop

08006ebc <__aeabi_dcmple>:
 8006ebc:	f84d ed08 	str.w	lr, [sp, #-8]!
 8006ec0:	f7ff ffe0 	bl	8006e84 <__aeabi_cdcmpeq>
 8006ec4:	bf94      	ite	ls
 8006ec6:	2001      	movls	r0, #1
 8006ec8:	2000      	movhi	r0, #0
 8006eca:	f85d fb08 	ldr.w	pc, [sp], #8
 8006ece:	bf00      	nop

08006ed0 <__aeabi_dcmpge>:
 8006ed0:	f84d ed08 	str.w	lr, [sp, #-8]!
 8006ed4:	f7ff ffce 	bl	8006e74 <__aeabi_cdrcmple>
 8006ed8:	bf94      	ite	ls
 8006eda:	2001      	movls	r0, #1
 8006edc:	2000      	movhi	r0, #0
 8006ede:	f85d fb08 	ldr.w	pc, [sp], #8
 8006ee2:	bf00      	nop

08006ee4 <__aeabi_dcmpgt>:
 8006ee4:	f84d ed08 	str.w	lr, [sp, #-8]!
 8006ee8:	f7ff ffc4 	bl	8006e74 <__aeabi_cdrcmple>
 8006eec:	bf34      	ite	cc
 8006eee:	2001      	movcc	r0, #1
 8006ef0:	2000      	movcs	r0, #0
 8006ef2:	f85d fb08 	ldr.w	pc, [sp], #8
 8006ef6:	bf00      	nop

08006ef8 <__aeabi_dcmpun>:
 8006ef8:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8006efc:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8006f00:	d102      	bne.n	8006f08 <__aeabi_dcmpun+0x10>
 8006f02:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 8006f06:	d10a      	bne.n	8006f1e <__aeabi_dcmpun+0x26>
 8006f08:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8006f0c:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8006f10:	d102      	bne.n	8006f18 <__aeabi_dcmpun+0x20>
 8006f12:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 8006f16:	d102      	bne.n	8006f1e <__aeabi_dcmpun+0x26>
 8006f18:	f04f 0000 	mov.w	r0, #0
 8006f1c:	4770      	bx	lr
 8006f1e:	f04f 0001 	mov.w	r0, #1
 8006f22:	4770      	bx	lr

08006f24 <__aeabi_d2iz>:
 8006f24:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8006f28:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8006f2c:	d215      	bcs.n	8006f5a <__aeabi_d2iz+0x36>
 8006f2e:	d511      	bpl.n	8006f54 <__aeabi_d2iz+0x30>
 8006f30:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8006f34:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 8006f38:	d912      	bls.n	8006f60 <__aeabi_d2iz+0x3c>
 8006f3a:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8006f3e:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8006f42:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 8006f46:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8006f4a:	fa23 f002 	lsr.w	r0, r3, r2
 8006f4e:	bf18      	it	ne
 8006f50:	4240      	negne	r0, r0
 8006f52:	4770      	bx	lr
 8006f54:	f04f 0000 	mov.w	r0, #0
 8006f58:	4770      	bx	lr
 8006f5a:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8006f5e:	d105      	bne.n	8006f6c <__aeabi_d2iz+0x48>
 8006f60:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8006f64:	bf08      	it	eq
 8006f66:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 8006f6a:	4770      	bx	lr
 8006f6c:	f04f 0000 	mov.w	r0, #0
 8006f70:	4770      	bx	lr
 8006f72:	bf00      	nop

08006f74 <main>:
 8006f74:	b580      	push	{r7, lr}
 8006f76:	af00      	add	r7, sp, #0
 8006f78:	f000 fb3a 	bl	80075f0 <HAL_Init>
 8006f7c:	f000 f842 	bl	8007004 <SystemClock_Config>
 8006f80:	f000 f8de 	bl	8007140 <MX_GPIO_Init>
 8006f84:	f000 f890 	bl	80070a8 <MX_USART2_UART_Init>
 8006f88:	2001      	movs	r0, #1
 8006f8a:	f003 fb07 	bl	800a59c <BSP_LED_Init>
 8006f8e:	2002      	movs	r0, #2
 8006f90:	f003 fb04 	bl	800a59c <BSP_LED_Init>
 8006f94:	4818      	ldr	r0, [pc, #96]	; (8006ff8 <main+0x84>)
 8006f96:	f7f9 fb9d 	bl	80006d4 <printf>
 8006f9a:	4818      	ldr	r0, [pc, #96]	; (8006ffc <main+0x88>)
 8006f9c:	f7f9 fb9a 	bl	80006d4 <printf>
 8006fa0:	2101      	movs	r1, #1
 8006fa2:	2000      	movs	r0, #0
 8006fa4:	f003 fba6 	bl	800a6f4 <BSP_PB_Init>
 8006fa8:	e005      	b.n	8006fb6 <main+0x42>
 8006faa:	2001      	movs	r0, #1
 8006fac:	f003 fb88 	bl	800a6c0 <BSP_LED_Toggle>
 8006fb0:	2064      	movs	r0, #100	; 0x64
 8006fb2:	f000 fb8f 	bl	80076d4 <HAL_Delay>
 8006fb6:	4b12      	ldr	r3, [pc, #72]	; (8007000 <main+0x8c>)
 8006fb8:	681b      	ldr	r3, [r3, #0]
 8006fba:	2b00      	cmp	r3, #0
 8006fbc:	d0f5      	beq.n	8006faa <main+0x36>
 8006fbe:	2001      	movs	r0, #1
 8006fc0:	f003 fb64 	bl	800a68c <BSP_LED_Off>
 8006fc4:	2001      	movs	r0, #1
 8006fc6:	f003 fb47 	bl	800a658 <BSP_LED_On>
 8006fca:	2064      	movs	r0, #100	; 0x64
 8006fcc:	f000 fb82 	bl	80076d4 <HAL_Delay>
 8006fd0:	2001      	movs	r0, #1
 8006fd2:	f003 fb5b 	bl	800a68c <BSP_LED_Off>
 8006fd6:	2064      	movs	r0, #100	; 0x64
 8006fd8:	f000 fb7c 	bl	80076d4 <HAL_Delay>
 8006fdc:	2001      	movs	r0, #1
 8006fde:	f003 fb3b 	bl	800a658 <BSP_LED_On>
 8006fe2:	2064      	movs	r0, #100	; 0x64
 8006fe4:	f000 fb76 	bl	80076d4 <HAL_Delay>
 8006fe8:	2001      	movs	r0, #1
 8006fea:	f003 fb4f 	bl	800a68c <BSP_LED_Off>
 8006fee:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8006ff2:	f000 fb6f 	bl	80076d4 <HAL_Delay>
 8006ff6:	e7fe      	b.n	8006ff6 <main+0x82>
 8006ff8:	0800aa18 	.word	0x0800aa18
 8006ffc:	0800aa68 	.word	0x0800aa68
 8007000:	20000a84 	.word	0x20000a84

08007004 <SystemClock_Config>:
 8007004:	b580      	push	{r7, lr}
 8007006:	b098      	sub	sp, #96	; 0x60
 8007008:	af00      	add	r7, sp, #0
 800700a:	f107 0318 	add.w	r3, r7, #24
 800700e:	2248      	movs	r2, #72	; 0x48
 8007010:	2100      	movs	r1, #0
 8007012:	4618      	mov	r0, r3
 8007014:	f7f9 fafe 	bl	8000614 <memset>
 8007018:	1d3b      	adds	r3, r7, #4
 800701a:	2200      	movs	r2, #0
 800701c:	601a      	str	r2, [r3, #0]
 800701e:	605a      	str	r2, [r3, #4]
 8007020:	609a      	str	r2, [r3, #8]
 8007022:	60da      	str	r2, [r3, #12]
 8007024:	611a      	str	r2, [r3, #16]
 8007026:	2000      	movs	r0, #0
 8007028:	f000 fe76 	bl	8007d18 <HAL_PWREx_ControlVoltageScaling>
 800702c:	4603      	mov	r3, r0
 800702e:	2b00      	cmp	r3, #0
 8007030:	d001      	beq.n	8007036 <SystemClock_Config+0x32>
 8007032:	f000 f8bf 	bl	80071b4 <Error_Handler>
 8007036:	2310      	movs	r3, #16
 8007038:	61bb      	str	r3, [r7, #24]
 800703a:	2301      	movs	r3, #1
 800703c:	637b      	str	r3, [r7, #52]	; 0x34
 800703e:	2300      	movs	r3, #0
 8007040:	63bb      	str	r3, [r7, #56]	; 0x38
 8007042:	2360      	movs	r3, #96	; 0x60
 8007044:	63fb      	str	r3, [r7, #60]	; 0x3c
 8007046:	2302      	movs	r3, #2
 8007048:	647b      	str	r3, [r7, #68]	; 0x44
 800704a:	2301      	movs	r3, #1
 800704c:	64bb      	str	r3, [r7, #72]	; 0x48
 800704e:	2301      	movs	r3, #1
 8007050:	64fb      	str	r3, [r7, #76]	; 0x4c
 8007052:	2337      	movs	r3, #55	; 0x37
 8007054:	653b      	str	r3, [r7, #80]	; 0x50
 8007056:	2307      	movs	r3, #7
 8007058:	657b      	str	r3, [r7, #84]	; 0x54
 800705a:	2302      	movs	r3, #2
 800705c:	65bb      	str	r3, [r7, #88]	; 0x58
 800705e:	2302      	movs	r3, #2
 8007060:	65fb      	str	r3, [r7, #92]	; 0x5c
 8007062:	f107 0318 	add.w	r3, r7, #24
 8007066:	4618      	mov	r0, r3
 8007068:	f000 fee2 	bl	8007e30 <HAL_RCC_OscConfig>
 800706c:	4603      	mov	r3, r0
 800706e:	2b00      	cmp	r3, #0
 8007070:	d001      	beq.n	8007076 <SystemClock_Config+0x72>
 8007072:	f000 f89f 	bl	80071b4 <Error_Handler>
 8007076:	230f      	movs	r3, #15
 8007078:	607b      	str	r3, [r7, #4]
 800707a:	2303      	movs	r3, #3
 800707c:	60bb      	str	r3, [r7, #8]
 800707e:	2300      	movs	r3, #0
 8007080:	60fb      	str	r3, [r7, #12]
 8007082:	2300      	movs	r3, #0
 8007084:	613b      	str	r3, [r7, #16]
 8007086:	2300      	movs	r3, #0
 8007088:	617b      	str	r3, [r7, #20]
 800708a:	1d3b      	adds	r3, r7, #4
 800708c:	2105      	movs	r1, #5
 800708e:	4618      	mov	r0, r3
 8007090:	f001 fbb0 	bl	80087f4 <HAL_RCC_ClockConfig>
 8007094:	4603      	mov	r3, r0
 8007096:	2b00      	cmp	r3, #0
 8007098:	d001      	beq.n	800709e <SystemClock_Config+0x9a>
 800709a:	f000 f88b 	bl	80071b4 <Error_Handler>
 800709e:	bf00      	nop
 80070a0:	3760      	adds	r7, #96	; 0x60
 80070a2:	46bd      	mov	sp, r7
 80070a4:	bd80      	pop	{r7, pc}
	...

080070a8 <MX_USART2_UART_Init>:
 80070a8:	b580      	push	{r7, lr}
 80070aa:	af00      	add	r7, sp, #0
 80070ac:	4b22      	ldr	r3, [pc, #136]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070ae:	4a23      	ldr	r2, [pc, #140]	; (800713c <MX_USART2_UART_Init+0x94>)
 80070b0:	601a      	str	r2, [r3, #0]
 80070b2:	4b21      	ldr	r3, [pc, #132]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070b4:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 80070b8:	605a      	str	r2, [r3, #4]
 80070ba:	4b1f      	ldr	r3, [pc, #124]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070bc:	2200      	movs	r2, #0
 80070be:	609a      	str	r2, [r3, #8]
 80070c0:	4b1d      	ldr	r3, [pc, #116]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070c2:	2200      	movs	r2, #0
 80070c4:	60da      	str	r2, [r3, #12]
 80070c6:	4b1c      	ldr	r3, [pc, #112]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070c8:	2200      	movs	r2, #0
 80070ca:	611a      	str	r2, [r3, #16]
 80070cc:	4b1a      	ldr	r3, [pc, #104]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070ce:	220c      	movs	r2, #12
 80070d0:	615a      	str	r2, [r3, #20]
 80070d2:	4b19      	ldr	r3, [pc, #100]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070d4:	2200      	movs	r2, #0
 80070d6:	619a      	str	r2, [r3, #24]
 80070d8:	4b17      	ldr	r3, [pc, #92]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070da:	2200      	movs	r2, #0
 80070dc:	61da      	str	r2, [r3, #28]
 80070de:	4b16      	ldr	r3, [pc, #88]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070e0:	2200      	movs	r2, #0
 80070e2:	621a      	str	r2, [r3, #32]
 80070e4:	4b14      	ldr	r3, [pc, #80]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070e6:	2200      	movs	r2, #0
 80070e8:	625a      	str	r2, [r3, #36]	; 0x24
 80070ea:	4b13      	ldr	r3, [pc, #76]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070ec:	2200      	movs	r2, #0
 80070ee:	629a      	str	r2, [r3, #40]	; 0x28
 80070f0:	4811      	ldr	r0, [pc, #68]	; (8007138 <MX_USART2_UART_Init+0x90>)
 80070f2:	f002 fb5b 	bl	80097ac <HAL_UART_Init>
 80070f6:	4603      	mov	r3, r0
 80070f8:	2b00      	cmp	r3, #0
 80070fa:	d001      	beq.n	8007100 <MX_USART2_UART_Init+0x58>
 80070fc:	f000 f85a 	bl	80071b4 <Error_Handler>
 8007100:	2100      	movs	r1, #0
 8007102:	480d      	ldr	r0, [pc, #52]	; (8007138 <MX_USART2_UART_Init+0x90>)
 8007104:	f003 f982 	bl	800a40c <HAL_UARTEx_SetTxFifoThreshold>
 8007108:	4603      	mov	r3, r0
 800710a:	2b00      	cmp	r3, #0
 800710c:	d001      	beq.n	8007112 <MX_USART2_UART_Init+0x6a>
 800710e:	f000 f851 	bl	80071b4 <Error_Handler>
 8007112:	2100      	movs	r1, #0
 8007114:	4808      	ldr	r0, [pc, #32]	; (8007138 <MX_USART2_UART_Init+0x90>)
 8007116:	f003 f9b7 	bl	800a488 <HAL_UARTEx_SetRxFifoThreshold>
 800711a:	4603      	mov	r3, r0
 800711c:	2b00      	cmp	r3, #0
 800711e:	d001      	beq.n	8007124 <MX_USART2_UART_Init+0x7c>
 8007120:	f000 f848 	bl	80071b4 <Error_Handler>
 8007124:	4804      	ldr	r0, [pc, #16]	; (8007138 <MX_USART2_UART_Init+0x90>)
 8007126:	f003 f939 	bl	800a39c <HAL_UARTEx_DisableFifoMode>
 800712a:	4603      	mov	r3, r0
 800712c:	2b00      	cmp	r3, #0
 800712e:	d001      	beq.n	8007134 <MX_USART2_UART_Init+0x8c>
 8007130:	f000 f840 	bl	80071b4 <Error_Handler>
 8007134:	bf00      	nop
 8007136:	bd80      	pop	{r7, pc}
 8007138:	20000a98 	.word	0x20000a98
 800713c:	40004400 	.word	0x40004400

08007140 <MX_GPIO_Init>:
 8007140:	b480      	push	{r7}
 8007142:	b083      	sub	sp, #12
 8007144:	af00      	add	r7, sp, #0
 8007146:	4b08      	ldr	r3, [pc, #32]	; (8007168 <MX_GPIO_Init+0x28>)
 8007148:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800714a:	4a07      	ldr	r2, [pc, #28]	; (8007168 <MX_GPIO_Init+0x28>)
 800714c:	f043 0301 	orr.w	r3, r3, #1
 8007150:	64d3      	str	r3, [r2, #76]	; 0x4c
 8007152:	4b05      	ldr	r3, [pc, #20]	; (8007168 <MX_GPIO_Init+0x28>)
 8007154:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8007156:	f003 0301 	and.w	r3, r3, #1
 800715a:	607b      	str	r3, [r7, #4]
 800715c:	687b      	ldr	r3, [r7, #4]
 800715e:	bf00      	nop
 8007160:	370c      	adds	r7, #12
 8007162:	46bd      	mov	sp, r7
 8007164:	bc80      	pop	{r7}
 8007166:	4770      	bx	lr
 8007168:	40021000 	.word	0x40021000

0800716c <__io_putchar>:
 800716c:	b580      	push	{r7, lr}
 800716e:	b082      	sub	sp, #8
 8007170:	af00      	add	r7, sp, #0
 8007172:	6078      	str	r0, [r7, #4]
 8007174:	1d39      	adds	r1, r7, #4
 8007176:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800717a:	2201      	movs	r2, #1
 800717c:	4803      	ldr	r0, [pc, #12]	; (800718c <__io_putchar+0x20>)
 800717e:	f002 fb65 	bl	800984c <HAL_UART_Transmit>
 8007182:	687b      	ldr	r3, [r7, #4]
 8007184:	4618      	mov	r0, r3
 8007186:	3708      	adds	r7, #8
 8007188:	46bd      	mov	sp, r7
 800718a:	bd80      	pop	{r7, pc}
 800718c:	20000a98 	.word	0x20000a98

08007190 <__io_getchar>:
 8007190:	b580      	push	{r7, lr}
 8007192:	b082      	sub	sp, #8
 8007194:	af00      	add	r7, sp, #0
 8007196:	1df9      	adds	r1, r7, #7
 8007198:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800719c:	2201      	movs	r2, #1
 800719e:	4804      	ldr	r0, [pc, #16]	; (80071b0 <__io_getchar+0x20>)
 80071a0:	f002 fbea 	bl	8009978 <HAL_UART_Receive>
 80071a4:	79fb      	ldrb	r3, [r7, #7]
 80071a6:	4618      	mov	r0, r3
 80071a8:	3708      	adds	r7, #8
 80071aa:	46bd      	mov	sp, r7
 80071ac:	bd80      	pop	{r7, pc}
 80071ae:	bf00      	nop
 80071b0:	20000a98 	.word	0x20000a98

080071b4 <Error_Handler>:
 80071b4:	b580      	push	{r7, lr}
 80071b6:	af00      	add	r7, sp, #0
 80071b8:	2002      	movs	r0, #2
 80071ba:	f003 fa4d 	bl	800a658 <BSP_LED_On>
 80071be:	e7fe      	b.n	80071be <Error_Handler+0xa>

080071c0 <HAL_MspInit>:
 80071c0:	b580      	push	{r7, lr}
 80071c2:	b082      	sub	sp, #8
 80071c4:	af00      	add	r7, sp, #0
 80071c6:	4b0f      	ldr	r3, [pc, #60]	; (8007204 <HAL_MspInit+0x44>)
 80071c8:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80071ca:	4a0e      	ldr	r2, [pc, #56]	; (8007204 <HAL_MspInit+0x44>)
 80071cc:	f043 0301 	orr.w	r3, r3, #1
 80071d0:	6613      	str	r3, [r2, #96]	; 0x60
 80071d2:	4b0c      	ldr	r3, [pc, #48]	; (8007204 <HAL_MspInit+0x44>)
 80071d4:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 80071d6:	f003 0301 	and.w	r3, r3, #1
 80071da:	607b      	str	r3, [r7, #4]
 80071dc:	687b      	ldr	r3, [r7, #4]
 80071de:	4b09      	ldr	r3, [pc, #36]	; (8007204 <HAL_MspInit+0x44>)
 80071e0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80071e2:	4a08      	ldr	r2, [pc, #32]	; (8007204 <HAL_MspInit+0x44>)
 80071e4:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 80071e8:	6593      	str	r3, [r2, #88]	; 0x58
 80071ea:	4b06      	ldr	r3, [pc, #24]	; (8007204 <HAL_MspInit+0x44>)
 80071ec:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 80071ee:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 80071f2:	603b      	str	r3, [r7, #0]
 80071f4:	683b      	ldr	r3, [r7, #0]
 80071f6:	f000 fdeb 	bl	8007dd0 <HAL_PWREx_DisableUCPDDeadBattery>
 80071fa:	bf00      	nop
 80071fc:	3708      	adds	r7, #8
 80071fe:	46bd      	mov	sp, r7
 8007200:	bd80      	pop	{r7, pc}
 8007202:	bf00      	nop
 8007204:	40021000 	.word	0x40021000

08007208 <HAL_UART_MspInit>:
 8007208:	b580      	push	{r7, lr}
 800720a:	b0ae      	sub	sp, #184	; 0xb8
 800720c:	af00      	add	r7, sp, #0
 800720e:	6078      	str	r0, [r7, #4]
 8007210:	f107 03a4 	add.w	r3, r7, #164	; 0xa4
 8007214:	2200      	movs	r2, #0
 8007216:	601a      	str	r2, [r3, #0]
 8007218:	605a      	str	r2, [r3, #4]
 800721a:	609a      	str	r2, [r3, #8]
 800721c:	60da      	str	r2, [r3, #12]
 800721e:	611a      	str	r2, [r3, #16]
 8007220:	f107 0310 	add.w	r3, r7, #16
 8007224:	2294      	movs	r2, #148	; 0x94
 8007226:	2100      	movs	r1, #0
 8007228:	4618      	mov	r0, r3
 800722a:	f7f9 f9f3 	bl	8000614 <memset>
 800722e:	687b      	ldr	r3, [r7, #4]
 8007230:	681b      	ldr	r3, [r3, #0]
 8007232:	4a25      	ldr	r2, [pc, #148]	; (80072c8 <HAL_UART_MspInit+0xc0>)
 8007234:	4293      	cmp	r3, r2
 8007236:	d142      	bne.n	80072be <HAL_UART_MspInit+0xb6>
 8007238:	2302      	movs	r3, #2
 800723a:	613b      	str	r3, [r7, #16]
 800723c:	2300      	movs	r3, #0
 800723e:	64bb      	str	r3, [r7, #72]	; 0x48
 8007240:	f107 0310 	add.w	r3, r7, #16
 8007244:	4618      	mov	r0, r3
 8007246:	f001 fdad 	bl	8008da4 <HAL_RCCEx_PeriphCLKConfig>
 800724a:	4603      	mov	r3, r0
 800724c:	2b00      	cmp	r3, #0
 800724e:	d001      	beq.n	8007254 <HAL_UART_MspInit+0x4c>
 8007250:	f7ff ffb0 	bl	80071b4 <Error_Handler>
 8007254:	4b1d      	ldr	r3, [pc, #116]	; (80072cc <HAL_UART_MspInit+0xc4>)
 8007256:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8007258:	4a1c      	ldr	r2, [pc, #112]	; (80072cc <HAL_UART_MspInit+0xc4>)
 800725a:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800725e:	6593      	str	r3, [r2, #88]	; 0x58
 8007260:	4b1a      	ldr	r3, [pc, #104]	; (80072cc <HAL_UART_MspInit+0xc4>)
 8007262:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8007264:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8007268:	60fb      	str	r3, [r7, #12]
 800726a:	68fb      	ldr	r3, [r7, #12]
 800726c:	4b17      	ldr	r3, [pc, #92]	; (80072cc <HAL_UART_MspInit+0xc4>)
 800726e:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 8007270:	4a16      	ldr	r2, [pc, #88]	; (80072cc <HAL_UART_MspInit+0xc4>)
 8007272:	f043 0301 	orr.w	r3, r3, #1
 8007276:	64d3      	str	r3, [r2, #76]	; 0x4c
 8007278:	4b14      	ldr	r3, [pc, #80]	; (80072cc <HAL_UART_MspInit+0xc4>)
 800727a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800727c:	f003 0301 	and.w	r3, r3, #1
 8007280:	60bb      	str	r3, [r7, #8]
 8007282:	68bb      	ldr	r3, [r7, #8]
 8007284:	230c      	movs	r3, #12
 8007286:	f8c7 30a4 	str.w	r3, [r7, #164]	; 0xa4
 800728a:	2302      	movs	r3, #2
 800728c:	f8c7 30a8 	str.w	r3, [r7, #168]	; 0xa8
 8007290:	2301      	movs	r3, #1
 8007292:	f8c7 30ac 	str.w	r3, [r7, #172]	; 0xac
 8007296:	2300      	movs	r3, #0
 8007298:	f8c7 30b0 	str.w	r3, [r7, #176]	; 0xb0
 800729c:	2307      	movs	r3, #7
 800729e:	f8c7 30b4 	str.w	r3, [r7, #180]	; 0xb4
 80072a2:	f107 03a4 	add.w	r3, r7, #164	; 0xa4
 80072a6:	4619      	mov	r1, r3
 80072a8:	4809      	ldr	r0, [pc, #36]	; (80072d0 <HAL_UART_MspInit+0xc8>)
 80072aa:	f000 fb7b 	bl	80079a4 <HAL_GPIO_Init>
 80072ae:	2200      	movs	r2, #0
 80072b0:	2100      	movs	r1, #0
 80072b2:	203e      	movs	r0, #62	; 0x3e
 80072b4:	f000 fb07 	bl	80078c6 <HAL_NVIC_SetPriority>
 80072b8:	203e      	movs	r0, #62	; 0x3e
 80072ba:	f000 fb1e 	bl	80078fa <HAL_NVIC_EnableIRQ>
 80072be:	bf00      	nop
 80072c0:	37b8      	adds	r7, #184	; 0xb8
 80072c2:	46bd      	mov	sp, r7
 80072c4:	bd80      	pop	{r7, pc}
 80072c6:	bf00      	nop
 80072c8:	40004400 	.word	0x40004400
 80072cc:	40021000 	.word	0x40021000
 80072d0:	42020000 	.word	0x42020000

080072d4 <NMI_Handler>:
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
 80072d4:	b480      	push	{r7}
 80072d6:	af00      	add	r7, sp, #0

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */

  /* USER CODE END NonMaskableInt_IRQn 1 */
}
 80072d8:	bf00      	nop
 80072da:	46bd      	mov	sp, r7
 80072dc:	bc80      	pop	{r7}
 80072de:	4770      	bx	lr

080072e0 <MemManage_Handler>:

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
 80072e0:	b480      	push	{r7}
 80072e2:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
 80072e4:	e7fe      	b.n	80072e4 <MemManage_Handler+0x4>

080072e6 <BusFault_Handler>:

/**
  * @brief This function handles Prefetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
 80072e6:	b480      	push	{r7}
 80072e8:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
 80072ea:	e7fe      	b.n	80072ea <BusFault_Handler+0x4>

080072ec <UsageFault_Handler>:

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
 80072ec:	b480      	push	{r7}
 80072ee:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
 80072f0:	e7fe      	b.n	80072f0 <UsageFault_Handler+0x4>

080072f2 <SVC_Handler>:

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
 80072f2:	b480      	push	{r7}
 80072f4:	af00      	add	r7, sp, #0

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}
 80072f6:	bf00      	nop
 80072f8:	46bd      	mov	sp, r7
 80072fa:	bc80      	pop	{r7}
 80072fc:	4770      	bx	lr

080072fe <DebugMon_Handler>:

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
 80072fe:	b480      	push	{r7}
 8007300:	af00      	add	r7, sp, #0

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}
 8007302:	bf00      	nop
 8007304:	46bd      	mov	sp, r7
 8007306:	bc80      	pop	{r7}
 8007308:	4770      	bx	lr

0800730a <PendSV_Handler>:

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
 800730a:	b480      	push	{r7}
 800730c:	af00      	add	r7, sp, #0

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}
 800730e:	bf00      	nop
 8007310:	46bd      	mov	sp, r7
 8007312:	bc80      	pop	{r7}
 8007314:	4770      	bx	lr

08007316 <SysTick_Handler>:

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
 8007316:	b580      	push	{r7, lr}
 8007318:	af00      	add	r7, sp, #0
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
 800731a:	f000 f9bf 	bl	800769c <HAL_IncTick>
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}
 800731e:	bf00      	nop
 8007320:	bd80      	pop	{r7, pc}

08007322 <_getpid>:
 8007322:	b480      	push	{r7}
 8007324:	af00      	add	r7, sp, #0
 8007326:	2301      	movs	r3, #1
 8007328:	4618      	mov	r0, r3
 800732a:	46bd      	mov	sp, r7
 800732c:	bc80      	pop	{r7}
 800732e:	4770      	bx	lr

08007330 <_kill>:
 8007330:	b580      	push	{r7, lr}
 8007332:	b082      	sub	sp, #8
 8007334:	af00      	add	r7, sp, #0
 8007336:	6078      	str	r0, [r7, #4]
 8007338:	6039      	str	r1, [r7, #0]
 800733a:	f7f9 f927 	bl	800058c <__errno>
 800733e:	4602      	mov	r2, r0
 8007340:	2316      	movs	r3, #22
 8007342:	6013      	str	r3, [r2, #0]
 8007344:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8007348:	4618      	mov	r0, r3
 800734a:	3708      	adds	r7, #8
 800734c:	46bd      	mov	sp, r7
 800734e:	bd80      	pop	{r7, pc}

08007350 <_exit>:
 8007350:	b580      	push	{r7, lr}
 8007352:	b082      	sub	sp, #8
 8007354:	af00      	add	r7, sp, #0
 8007356:	6078      	str	r0, [r7, #4]
 8007358:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 800735c:	6878      	ldr	r0, [r7, #4]
 800735e:	f7ff ffe7 	bl	8007330 <_kill>
 8007362:	e7fe      	b.n	8007362 <_exit+0x12>

08007364 <_read>:
 8007364:	b580      	push	{r7, lr}
 8007366:	b086      	sub	sp, #24
 8007368:	af00      	add	r7, sp, #0
 800736a:	60f8      	str	r0, [r7, #12]
 800736c:	60b9      	str	r1, [r7, #8]
 800736e:	607a      	str	r2, [r7, #4]
 8007370:	2300      	movs	r3, #0
 8007372:	617b      	str	r3, [r7, #20]
 8007374:	e00a      	b.n	800738c <_read+0x28>
 8007376:	f7ff ff0b 	bl	8007190 <__io_getchar>
 800737a:	4601      	mov	r1, r0
 800737c:	68bb      	ldr	r3, [r7, #8]
 800737e:	1c5a      	adds	r2, r3, #1
 8007380:	60ba      	str	r2, [r7, #8]
 8007382:	b2ca      	uxtb	r2, r1
 8007384:	701a      	strb	r2, [r3, #0]
 8007386:	697b      	ldr	r3, [r7, #20]
 8007388:	3301      	adds	r3, #1
 800738a:	617b      	str	r3, [r7, #20]
 800738c:	697a      	ldr	r2, [r7, #20]
 800738e:	687b      	ldr	r3, [r7, #4]
 8007390:	429a      	cmp	r2, r3
 8007392:	dbf0      	blt.n	8007376 <_read+0x12>
 8007394:	687b      	ldr	r3, [r7, #4]
 8007396:	4618      	mov	r0, r3
 8007398:	3718      	adds	r7, #24
 800739a:	46bd      	mov	sp, r7
 800739c:	bd80      	pop	{r7, pc}

0800739e <_write>:
 800739e:	b580      	push	{r7, lr}
 80073a0:	b086      	sub	sp, #24
 80073a2:	af00      	add	r7, sp, #0
 80073a4:	60f8      	str	r0, [r7, #12]
 80073a6:	60b9      	str	r1, [r7, #8]
 80073a8:	607a      	str	r2, [r7, #4]
 80073aa:	2300      	movs	r3, #0
 80073ac:	617b      	str	r3, [r7, #20]
 80073ae:	e009      	b.n	80073c4 <_write+0x26>
 80073b0:	68bb      	ldr	r3, [r7, #8]
 80073b2:	1c5a      	adds	r2, r3, #1
 80073b4:	60ba      	str	r2, [r7, #8]
 80073b6:	781b      	ldrb	r3, [r3, #0]
 80073b8:	4618      	mov	r0, r3
 80073ba:	f7ff fed7 	bl	800716c <__io_putchar>
 80073be:	697b      	ldr	r3, [r7, #20]
 80073c0:	3301      	adds	r3, #1
 80073c2:	617b      	str	r3, [r7, #20]
 80073c4:	697a      	ldr	r2, [r7, #20]
 80073c6:	687b      	ldr	r3, [r7, #4]
 80073c8:	429a      	cmp	r2, r3
 80073ca:	dbf1      	blt.n	80073b0 <_write+0x12>
 80073cc:	687b      	ldr	r3, [r7, #4]
 80073ce:	4618      	mov	r0, r3
 80073d0:	3718      	adds	r7, #24
 80073d2:	46bd      	mov	sp, r7
 80073d4:	bd80      	pop	{r7, pc}

080073d6 <_close>:
 80073d6:	b480      	push	{r7}
 80073d8:	b083      	sub	sp, #12
 80073da:	af00      	add	r7, sp, #0
 80073dc:	6078      	str	r0, [r7, #4]
 80073de:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80073e2:	4618      	mov	r0, r3
 80073e4:	370c      	adds	r7, #12
 80073e6:	46bd      	mov	sp, r7
 80073e8:	bc80      	pop	{r7}
 80073ea:	4770      	bx	lr

080073ec <_fstat>:
 80073ec:	b480      	push	{r7}
 80073ee:	b083      	sub	sp, #12
 80073f0:	af00      	add	r7, sp, #0
 80073f2:	6078      	str	r0, [r7, #4]
 80073f4:	6039      	str	r1, [r7, #0]
 80073f6:	683b      	ldr	r3, [r7, #0]
 80073f8:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80073fc:	605a      	str	r2, [r3, #4]
 80073fe:	2300      	movs	r3, #0
 8007400:	4618      	mov	r0, r3
 8007402:	370c      	adds	r7, #12
 8007404:	46bd      	mov	sp, r7
 8007406:	bc80      	pop	{r7}
 8007408:	4770      	bx	lr

0800740a <_isatty>:
 800740a:	b480      	push	{r7}
 800740c:	b083      	sub	sp, #12
 800740e:	af00      	add	r7, sp, #0
 8007410:	6078      	str	r0, [r7, #4]
 8007412:	2301      	movs	r3, #1
 8007414:	4618      	mov	r0, r3
 8007416:	370c      	adds	r7, #12
 8007418:	46bd      	mov	sp, r7
 800741a:	bc80      	pop	{r7}
 800741c:	4770      	bx	lr

0800741e <_lseek>:
 800741e:	b480      	push	{r7}
 8007420:	b085      	sub	sp, #20
 8007422:	af00      	add	r7, sp, #0
 8007424:	60f8      	str	r0, [r7, #12]
 8007426:	60b9      	str	r1, [r7, #8]
 8007428:	607a      	str	r2, [r7, #4]
 800742a:	2300      	movs	r3, #0
 800742c:	4618      	mov	r0, r3
 800742e:	3714      	adds	r7, #20
 8007430:	46bd      	mov	sp, r7
 8007432:	bc80      	pop	{r7}
 8007434:	4770      	bx	lr
	...

08007438 <_sbrk>:
 8007438:	b580      	push	{r7, lr}
 800743a:	b084      	sub	sp, #16
 800743c:	af00      	add	r7, sp, #0
 800743e:	6078      	str	r0, [r7, #4]
 8007440:	4b11      	ldr	r3, [pc, #68]	; (8007488 <_sbrk+0x50>)
 8007442:	681b      	ldr	r3, [r3, #0]
 8007444:	2b00      	cmp	r3, #0
 8007446:	d102      	bne.n	800744e <_sbrk+0x16>
 8007448:	4b0f      	ldr	r3, [pc, #60]	; (8007488 <_sbrk+0x50>)
 800744a:	4a10      	ldr	r2, [pc, #64]	; (800748c <_sbrk+0x54>)
 800744c:	601a      	str	r2, [r3, #0]
 800744e:	4b0e      	ldr	r3, [pc, #56]	; (8007488 <_sbrk+0x50>)
 8007450:	681b      	ldr	r3, [r3, #0]
 8007452:	60fb      	str	r3, [r7, #12]
 8007454:	4b0c      	ldr	r3, [pc, #48]	; (8007488 <_sbrk+0x50>)
 8007456:	681a      	ldr	r2, [r3, #0]
 8007458:	687b      	ldr	r3, [r7, #4]
 800745a:	4413      	add	r3, r2
 800745c:	466a      	mov	r2, sp
 800745e:	4293      	cmp	r3, r2
 8007460:	d907      	bls.n	8007472 <_sbrk+0x3a>
 8007462:	f7f9 f893 	bl	800058c <__errno>
 8007466:	4602      	mov	r2, r0
 8007468:	230c      	movs	r3, #12
 800746a:	6013      	str	r3, [r2, #0]
 800746c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8007470:	e006      	b.n	8007480 <_sbrk+0x48>
 8007472:	4b05      	ldr	r3, [pc, #20]	; (8007488 <_sbrk+0x50>)
 8007474:	681a      	ldr	r2, [r3, #0]
 8007476:	687b      	ldr	r3, [r7, #4]
 8007478:	4413      	add	r3, r2
 800747a:	4a03      	ldr	r2, [pc, #12]	; (8007488 <_sbrk+0x50>)
 800747c:	6013      	str	r3, [r2, #0]
 800747e:	68fb      	ldr	r3, [r7, #12]
 8007480:	4618      	mov	r0, r3
 8007482:	3710      	adds	r7, #16
 8007484:	46bd      	mov	sp, r7
 8007486:	bd80      	pop	{r7, pc}
 8007488:	20000a88 	.word	0x20000a88
 800748c:	20000b30 	.word	0x20000b30

08007490 <SystemInit>:
 8007490:	b480      	push	{r7}
 8007492:	af00      	add	r7, sp, #0
 8007494:	bf00      	nop
 8007496:	46bd      	mov	sp, r7
 8007498:	bc80      	pop	{r7}
 800749a:	4770      	bx	lr

0800749c <SystemCoreClockUpdate>:
 800749c:	b480      	push	{r7}
 800749e:	b087      	sub	sp, #28
 80074a0:	af00      	add	r7, sp, #0
 80074a2:	4b4e      	ldr	r3, [pc, #312]	; (80075dc <SystemCoreClockUpdate+0x140>)
 80074a4:	681b      	ldr	r3, [r3, #0]
 80074a6:	f003 0308 	and.w	r3, r3, #8
 80074aa:	2b00      	cmp	r3, #0
 80074ac:	d107      	bne.n	80074be <SystemCoreClockUpdate+0x22>
 80074ae:	4b4b      	ldr	r3, [pc, #300]	; (80075dc <SystemCoreClockUpdate+0x140>)
 80074b0:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80074b4:	0a1b      	lsrs	r3, r3, #8
 80074b6:	f003 030f 	and.w	r3, r3, #15
 80074ba:	617b      	str	r3, [r7, #20]
 80074bc:	e005      	b.n	80074ca <SystemCoreClockUpdate+0x2e>
 80074be:	4b47      	ldr	r3, [pc, #284]	; (80075dc <SystemCoreClockUpdate+0x140>)
 80074c0:	681b      	ldr	r3, [r3, #0]
 80074c2:	091b      	lsrs	r3, r3, #4
 80074c4:	f003 030f 	and.w	r3, r3, #15
 80074c8:	617b      	str	r3, [r7, #20]
 80074ca:	4a45      	ldr	r2, [pc, #276]	; (80075e0 <SystemCoreClockUpdate+0x144>)
 80074cc:	697b      	ldr	r3, [r7, #20]
 80074ce:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 80074d2:	617b      	str	r3, [r7, #20]
 80074d4:	4b41      	ldr	r3, [pc, #260]	; (80075dc <SystemCoreClockUpdate+0x140>)
 80074d6:	689b      	ldr	r3, [r3, #8]
 80074d8:	f003 030c 	and.w	r3, r3, #12
 80074dc:	2b0c      	cmp	r3, #12
 80074de:	d865      	bhi.n	80075ac <SystemCoreClockUpdate+0x110>
 80074e0:	a201      	add	r2, pc, #4	; (adr r2, 80074e8 <SystemCoreClockUpdate+0x4c>)
 80074e2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 80074e6:	bf00      	nop
 80074e8:	0800751d 	.word	0x0800751d
 80074ec:	080075ad 	.word	0x080075ad
 80074f0:	080075ad 	.word	0x080075ad
 80074f4:	080075ad 	.word	0x080075ad
 80074f8:	08007525 	.word	0x08007525
 80074fc:	080075ad 	.word	0x080075ad
 8007500:	080075ad 	.word	0x080075ad
 8007504:	080075ad 	.word	0x080075ad
 8007508:	0800752d 	.word	0x0800752d
 800750c:	080075ad 	.word	0x080075ad
 8007510:	080075ad 	.word	0x080075ad
 8007514:	080075ad 	.word	0x080075ad
 8007518:	08007535 	.word	0x08007535
 800751c:	4a31      	ldr	r2, [pc, #196]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 800751e:	697b      	ldr	r3, [r7, #20]
 8007520:	6013      	str	r3, [r2, #0]
 8007522:	e047      	b.n	80075b4 <SystemCoreClockUpdate+0x118>
 8007524:	4b2f      	ldr	r3, [pc, #188]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 8007526:	4a30      	ldr	r2, [pc, #192]	; (80075e8 <SystemCoreClockUpdate+0x14c>)
 8007528:	601a      	str	r2, [r3, #0]
 800752a:	e043      	b.n	80075b4 <SystemCoreClockUpdate+0x118>
 800752c:	4b2d      	ldr	r3, [pc, #180]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 800752e:	4a2e      	ldr	r2, [pc, #184]	; (80075e8 <SystemCoreClockUpdate+0x14c>)
 8007530:	601a      	str	r2, [r3, #0]
 8007532:	e03f      	b.n	80075b4 <SystemCoreClockUpdate+0x118>
 8007534:	4b29      	ldr	r3, [pc, #164]	; (80075dc <SystemCoreClockUpdate+0x140>)
 8007536:	68db      	ldr	r3, [r3, #12]
 8007538:	f003 0303 	and.w	r3, r3, #3
 800753c:	60fb      	str	r3, [r7, #12]
 800753e:	4b27      	ldr	r3, [pc, #156]	; (80075dc <SystemCoreClockUpdate+0x140>)
 8007540:	68db      	ldr	r3, [r3, #12]
 8007542:	091b      	lsrs	r3, r3, #4
 8007544:	f003 030f 	and.w	r3, r3, #15
 8007548:	3301      	adds	r3, #1
 800754a:	60bb      	str	r3, [r7, #8]
 800754c:	68fb      	ldr	r3, [r7, #12]
 800754e:	2b02      	cmp	r3, #2
 8007550:	d002      	beq.n	8007558 <SystemCoreClockUpdate+0xbc>
 8007552:	2b03      	cmp	r3, #3
 8007554:	d006      	beq.n	8007564 <SystemCoreClockUpdate+0xc8>
 8007556:	e00b      	b.n	8007570 <SystemCoreClockUpdate+0xd4>
 8007558:	4a23      	ldr	r2, [pc, #140]	; (80075e8 <SystemCoreClockUpdate+0x14c>)
 800755a:	68bb      	ldr	r3, [r7, #8]
 800755c:	fbb2 f3f3 	udiv	r3, r2, r3
 8007560:	613b      	str	r3, [r7, #16]
 8007562:	e00b      	b.n	800757c <SystemCoreClockUpdate+0xe0>
 8007564:	4a20      	ldr	r2, [pc, #128]	; (80075e8 <SystemCoreClockUpdate+0x14c>)
 8007566:	68bb      	ldr	r3, [r7, #8]
 8007568:	fbb2 f3f3 	udiv	r3, r2, r3
 800756c:	613b      	str	r3, [r7, #16]
 800756e:	e005      	b.n	800757c <SystemCoreClockUpdate+0xe0>
 8007570:	697a      	ldr	r2, [r7, #20]
 8007572:	68bb      	ldr	r3, [r7, #8]
 8007574:	fbb2 f3f3 	udiv	r3, r2, r3
 8007578:	613b      	str	r3, [r7, #16]
 800757a:	bf00      	nop
 800757c:	4b17      	ldr	r3, [pc, #92]	; (80075dc <SystemCoreClockUpdate+0x140>)
 800757e:	68db      	ldr	r3, [r3, #12]
 8007580:	0a1b      	lsrs	r3, r3, #8
 8007582:	f003 027f 	and.w	r2, r3, #127	; 0x7f
 8007586:	693b      	ldr	r3, [r7, #16]
 8007588:	fb02 f303 	mul.w	r3, r2, r3
 800758c:	613b      	str	r3, [r7, #16]
 800758e:	4b13      	ldr	r3, [pc, #76]	; (80075dc <SystemCoreClockUpdate+0x140>)
 8007590:	68db      	ldr	r3, [r3, #12]
 8007592:	0e5b      	lsrs	r3, r3, #25
 8007594:	f003 0303 	and.w	r3, r3, #3
 8007598:	3301      	adds	r3, #1
 800759a:	005b      	lsls	r3, r3, #1
 800759c:	607b      	str	r3, [r7, #4]
 800759e:	693a      	ldr	r2, [r7, #16]
 80075a0:	687b      	ldr	r3, [r7, #4]
 80075a2:	fbb2 f3f3 	udiv	r3, r2, r3
 80075a6:	4a0f      	ldr	r2, [pc, #60]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 80075a8:	6013      	str	r3, [r2, #0]
 80075aa:	e003      	b.n	80075b4 <SystemCoreClockUpdate+0x118>
 80075ac:	4a0d      	ldr	r2, [pc, #52]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 80075ae:	697b      	ldr	r3, [r7, #20]
 80075b0:	6013      	str	r3, [r2, #0]
 80075b2:	bf00      	nop
 80075b4:	4b09      	ldr	r3, [pc, #36]	; (80075dc <SystemCoreClockUpdate+0x140>)
 80075b6:	689b      	ldr	r3, [r3, #8]
 80075b8:	091b      	lsrs	r3, r3, #4
 80075ba:	f003 030f 	and.w	r3, r3, #15
 80075be:	4a0b      	ldr	r2, [pc, #44]	; (80075ec <SystemCoreClockUpdate+0x150>)
 80075c0:	5cd3      	ldrb	r3, [r2, r3]
 80075c2:	603b      	str	r3, [r7, #0]
 80075c4:	4b07      	ldr	r3, [pc, #28]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 80075c6:	681a      	ldr	r2, [r3, #0]
 80075c8:	683b      	ldr	r3, [r7, #0]
 80075ca:	fa22 f303 	lsr.w	r3, r2, r3
 80075ce:	4a05      	ldr	r2, [pc, #20]	; (80075e4 <SystemCoreClockUpdate+0x148>)
 80075d0:	6013      	str	r3, [r2, #0]
 80075d2:	bf00      	nop
 80075d4:	371c      	adds	r7, #28
 80075d6:	46bd      	mov	sp, r7
 80075d8:	bc80      	pop	{r7}
 80075da:	4770      	bx	lr
 80075dc:	40021000 	.word	0x40021000
 80075e0:	0800ad1c 	.word	0x0800ad1c
 80075e4:	200009ac 	.word	0x200009ac
 80075e8:	00f42400 	.word	0x00f42400
 80075ec:	0800ad04 	.word	0x0800ad04

080075f0 <HAL_Init>:
 80075f0:	b580      	push	{r7, lr}
 80075f2:	b082      	sub	sp, #8
 80075f4:	af00      	add	r7, sp, #0
 80075f6:	2300      	movs	r3, #0
 80075f8:	71fb      	strb	r3, [r7, #7]
 80075fa:	2004      	movs	r0, #4
 80075fc:	f000 f958 	bl	80078b0 <HAL_NVIC_SetPriorityGrouping>
 8007600:	f7ff ff4c 	bl	800749c <SystemCoreClockUpdate>
 8007604:	2000      	movs	r0, #0
 8007606:	f000 f80d 	bl	8007624 <HAL_InitTick>
 800760a:	4603      	mov	r3, r0
 800760c:	2b00      	cmp	r3, #0
 800760e:	d002      	beq.n	8007616 <HAL_Init+0x26>
 8007610:	2301      	movs	r3, #1
 8007612:	71fb      	strb	r3, [r7, #7]
 8007614:	e001      	b.n	800761a <HAL_Init+0x2a>
 8007616:	f7ff fdd3 	bl	80071c0 <HAL_MspInit>
 800761a:	79fb      	ldrb	r3, [r7, #7]
 800761c:	4618      	mov	r0, r3
 800761e:	3708      	adds	r7, #8
 8007620:	46bd      	mov	sp, r7
 8007622:	bd80      	pop	{r7, pc}

08007624 <HAL_InitTick>:
 8007624:	b580      	push	{r7, lr}
 8007626:	b084      	sub	sp, #16
 8007628:	af00      	add	r7, sp, #0
 800762a:	6078      	str	r0, [r7, #4]
 800762c:	2300      	movs	r3, #0
 800762e:	73fb      	strb	r3, [r7, #15]
 8007630:	4b17      	ldr	r3, [pc, #92]	; (8007690 <HAL_InitTick+0x6c>)
 8007632:	781b      	ldrb	r3, [r3, #0]
 8007634:	2b00      	cmp	r3, #0
 8007636:	d023      	beq.n	8007680 <HAL_InitTick+0x5c>
 8007638:	4b16      	ldr	r3, [pc, #88]	; (8007694 <HAL_InitTick+0x70>)
 800763a:	681a      	ldr	r2, [r3, #0]
 800763c:	4b14      	ldr	r3, [pc, #80]	; (8007690 <HAL_InitTick+0x6c>)
 800763e:	781b      	ldrb	r3, [r3, #0]
 8007640:	4619      	mov	r1, r3
 8007642:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8007646:	fbb3 f3f1 	udiv	r3, r3, r1
 800764a:	fbb2 f3f3 	udiv	r3, r2, r3
 800764e:	4618      	mov	r0, r3
 8007650:	f000 f961 	bl	8007916 <HAL_SYSTICK_Config>
 8007654:	4603      	mov	r3, r0
 8007656:	2b00      	cmp	r3, #0
 8007658:	d10f      	bne.n	800767a <HAL_InitTick+0x56>
 800765a:	687b      	ldr	r3, [r7, #4]
 800765c:	2b07      	cmp	r3, #7
 800765e:	d809      	bhi.n	8007674 <HAL_InitTick+0x50>
 8007660:	2200      	movs	r2, #0
 8007662:	6879      	ldr	r1, [r7, #4]
 8007664:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007668:	f000 f92d 	bl	80078c6 <HAL_NVIC_SetPriority>
 800766c:	4a0a      	ldr	r2, [pc, #40]	; (8007698 <HAL_InitTick+0x74>)
 800766e:	687b      	ldr	r3, [r7, #4]
 8007670:	6013      	str	r3, [r2, #0]
 8007672:	e007      	b.n	8007684 <HAL_InitTick+0x60>
 8007674:	2301      	movs	r3, #1
 8007676:	73fb      	strb	r3, [r7, #15]
 8007678:	e004      	b.n	8007684 <HAL_InitTick+0x60>
 800767a:	2301      	movs	r3, #1
 800767c:	73fb      	strb	r3, [r7, #15]
 800767e:	e001      	b.n	8007684 <HAL_InitTick+0x60>
 8007680:	2301      	movs	r3, #1
 8007682:	73fb      	strb	r3, [r7, #15]
 8007684:	7bfb      	ldrb	r3, [r7, #15]
 8007686:	4618      	mov	r0, r3
 8007688:	3710      	adds	r7, #16
 800768a:	46bd      	mov	sp, r7
 800768c:	bd80      	pop	{r7, pc}
 800768e:	bf00      	nop
 8007690:	200009b4 	.word	0x200009b4
 8007694:	200009ac 	.word	0x200009ac
 8007698:	200009b0 	.word	0x200009b0

0800769c <HAL_IncTick>:
 800769c:	b480      	push	{r7}
 800769e:	af00      	add	r7, sp, #0
 80076a0:	4b05      	ldr	r3, [pc, #20]	; (80076b8 <HAL_IncTick+0x1c>)
 80076a2:	781b      	ldrb	r3, [r3, #0]
 80076a4:	461a      	mov	r2, r3
 80076a6:	4b05      	ldr	r3, [pc, #20]	; (80076bc <HAL_IncTick+0x20>)
 80076a8:	681b      	ldr	r3, [r3, #0]
 80076aa:	4413      	add	r3, r2
 80076ac:	4a03      	ldr	r2, [pc, #12]	; (80076bc <HAL_IncTick+0x20>)
 80076ae:	6013      	str	r3, [r2, #0]
 80076b0:	bf00      	nop
 80076b2:	46bd      	mov	sp, r7
 80076b4:	bc80      	pop	{r7}
 80076b6:	4770      	bx	lr
 80076b8:	200009b4 	.word	0x200009b4
 80076bc:	20000b28 	.word	0x20000b28

080076c0 <HAL_GetTick>:
 80076c0:	b480      	push	{r7}
 80076c2:	af00      	add	r7, sp, #0
 80076c4:	4b02      	ldr	r3, [pc, #8]	; (80076d0 <HAL_GetTick+0x10>)
 80076c6:	681b      	ldr	r3, [r3, #0]
 80076c8:	4618      	mov	r0, r3
 80076ca:	46bd      	mov	sp, r7
 80076cc:	bc80      	pop	{r7}
 80076ce:	4770      	bx	lr
 80076d0:	20000b28 	.word	0x20000b28

080076d4 <HAL_Delay>:
 80076d4:	b580      	push	{r7, lr}
 80076d6:	b084      	sub	sp, #16
 80076d8:	af00      	add	r7, sp, #0
 80076da:	6078      	str	r0, [r7, #4]
 80076dc:	f7ff fff0 	bl	80076c0 <HAL_GetTick>
 80076e0:	60b8      	str	r0, [r7, #8]
 80076e2:	687b      	ldr	r3, [r7, #4]
 80076e4:	60fb      	str	r3, [r7, #12]
 80076e6:	68fb      	ldr	r3, [r7, #12]
 80076e8:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80076ec:	d005      	beq.n	80076fa <HAL_Delay+0x26>
 80076ee:	4b09      	ldr	r3, [pc, #36]	; (8007714 <HAL_Delay+0x40>)
 80076f0:	781b      	ldrb	r3, [r3, #0]
 80076f2:	461a      	mov	r2, r3
 80076f4:	68fb      	ldr	r3, [r7, #12]
 80076f6:	4413      	add	r3, r2
 80076f8:	60fb      	str	r3, [r7, #12]
 80076fa:	bf00      	nop
 80076fc:	f7ff ffe0 	bl	80076c0 <HAL_GetTick>
 8007700:	4602      	mov	r2, r0
 8007702:	68bb      	ldr	r3, [r7, #8]
 8007704:	1ad3      	subs	r3, r2, r3
 8007706:	68fa      	ldr	r2, [r7, #12]
 8007708:	429a      	cmp	r2, r3
 800770a:	d8f7      	bhi.n	80076fc <HAL_Delay+0x28>
 800770c:	bf00      	nop
 800770e:	3710      	adds	r7, #16
 8007710:	46bd      	mov	sp, r7
 8007712:	bd80      	pop	{r7, pc}
 8007714:	200009b4 	.word	0x200009b4

08007718 <__NVIC_SetPriorityGrouping>:
 8007718:	b480      	push	{r7}
 800771a:	b085      	sub	sp, #20
 800771c:	af00      	add	r7, sp, #0
 800771e:	6078      	str	r0, [r7, #4]
 8007720:	687b      	ldr	r3, [r7, #4]
 8007722:	f003 0307 	and.w	r3, r3, #7
 8007726:	60fb      	str	r3, [r7, #12]
 8007728:	4b0c      	ldr	r3, [pc, #48]	; (800775c <__NVIC_SetPriorityGrouping+0x44>)
 800772a:	68db      	ldr	r3, [r3, #12]
 800772c:	60bb      	str	r3, [r7, #8]
 800772e:	68ba      	ldr	r2, [r7, #8]
 8007730:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8007734:	4013      	ands	r3, r2
 8007736:	60bb      	str	r3, [r7, #8]
 8007738:	68fb      	ldr	r3, [r7, #12]
 800773a:	021a      	lsls	r2, r3, #8
 800773c:	68bb      	ldr	r3, [r7, #8]
 800773e:	4313      	orrs	r3, r2
 8007740:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8007744:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8007748:	60bb      	str	r3, [r7, #8]
 800774a:	4a04      	ldr	r2, [pc, #16]	; (800775c <__NVIC_SetPriorityGrouping+0x44>)
 800774c:	68bb      	ldr	r3, [r7, #8]
 800774e:	60d3      	str	r3, [r2, #12]
 8007750:	bf00      	nop
 8007752:	3714      	adds	r7, #20
 8007754:	46bd      	mov	sp, r7
 8007756:	bc80      	pop	{r7}
 8007758:	4770      	bx	lr
 800775a:	bf00      	nop
 800775c:	e000ed00 	.word	0xe000ed00

08007760 <__NVIC_GetPriorityGrouping>:
 8007760:	b480      	push	{r7}
 8007762:	af00      	add	r7, sp, #0
 8007764:	4b04      	ldr	r3, [pc, #16]	; (8007778 <__NVIC_GetPriorityGrouping+0x18>)
 8007766:	68db      	ldr	r3, [r3, #12]
 8007768:	0a1b      	lsrs	r3, r3, #8
 800776a:	f003 0307 	and.w	r3, r3, #7
 800776e:	4618      	mov	r0, r3
 8007770:	46bd      	mov	sp, r7
 8007772:	bc80      	pop	{r7}
 8007774:	4770      	bx	lr
 8007776:	bf00      	nop
 8007778:	e000ed00 	.word	0xe000ed00

0800777c <__NVIC_EnableIRQ>:
 800777c:	b480      	push	{r7}
 800777e:	b083      	sub	sp, #12
 8007780:	af00      	add	r7, sp, #0
 8007782:	4603      	mov	r3, r0
 8007784:	71fb      	strb	r3, [r7, #7]
 8007786:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800778a:	2b00      	cmp	r3, #0
 800778c:	db0b      	blt.n	80077a6 <__NVIC_EnableIRQ+0x2a>
 800778e:	79fb      	ldrb	r3, [r7, #7]
 8007790:	f003 021f 	and.w	r2, r3, #31
 8007794:	4906      	ldr	r1, [pc, #24]	; (80077b0 <__NVIC_EnableIRQ+0x34>)
 8007796:	f997 3007 	ldrsb.w	r3, [r7, #7]
 800779a:	095b      	lsrs	r3, r3, #5
 800779c:	2001      	movs	r0, #1
 800779e:	fa00 f202 	lsl.w	r2, r0, r2
 80077a2:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80077a6:	bf00      	nop
 80077a8:	370c      	adds	r7, #12
 80077aa:	46bd      	mov	sp, r7
 80077ac:	bc80      	pop	{r7}
 80077ae:	4770      	bx	lr
 80077b0:	e000e100 	.word	0xe000e100

080077b4 <__NVIC_SetPriority>:
 80077b4:	b480      	push	{r7}
 80077b6:	b083      	sub	sp, #12
 80077b8:	af00      	add	r7, sp, #0
 80077ba:	4603      	mov	r3, r0
 80077bc:	6039      	str	r1, [r7, #0]
 80077be:	71fb      	strb	r3, [r7, #7]
 80077c0:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80077c4:	2b00      	cmp	r3, #0
 80077c6:	db0a      	blt.n	80077de <__NVIC_SetPriority+0x2a>
 80077c8:	683b      	ldr	r3, [r7, #0]
 80077ca:	b2da      	uxtb	r2, r3
 80077cc:	490c      	ldr	r1, [pc, #48]	; (8007800 <__NVIC_SetPriority+0x4c>)
 80077ce:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80077d2:	0152      	lsls	r2, r2, #5
 80077d4:	b2d2      	uxtb	r2, r2
 80077d6:	440b      	add	r3, r1
 80077d8:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80077dc:	e00a      	b.n	80077f4 <__NVIC_SetPriority+0x40>
 80077de:	683b      	ldr	r3, [r7, #0]
 80077e0:	b2da      	uxtb	r2, r3
 80077e2:	4908      	ldr	r1, [pc, #32]	; (8007804 <__NVIC_SetPriority+0x50>)
 80077e4:	79fb      	ldrb	r3, [r7, #7]
 80077e6:	f003 030f 	and.w	r3, r3, #15
 80077ea:	3b04      	subs	r3, #4
 80077ec:	0152      	lsls	r2, r2, #5
 80077ee:	b2d2      	uxtb	r2, r2
 80077f0:	440b      	add	r3, r1
 80077f2:	761a      	strb	r2, [r3, #24]
 80077f4:	bf00      	nop
 80077f6:	370c      	adds	r7, #12
 80077f8:	46bd      	mov	sp, r7
 80077fa:	bc80      	pop	{r7}
 80077fc:	4770      	bx	lr
 80077fe:	bf00      	nop
 8007800:	e000e100 	.word	0xe000e100
 8007804:	e000ed00 	.word	0xe000ed00

08007808 <NVIC_EncodePriority>:
 8007808:	b480      	push	{r7}
 800780a:	b089      	sub	sp, #36	; 0x24
 800780c:	af00      	add	r7, sp, #0
 800780e:	60f8      	str	r0, [r7, #12]
 8007810:	60b9      	str	r1, [r7, #8]
 8007812:	607a      	str	r2, [r7, #4]
 8007814:	68fb      	ldr	r3, [r7, #12]
 8007816:	f003 0307 	and.w	r3, r3, #7
 800781a:	61fb      	str	r3, [r7, #28]
 800781c:	69fb      	ldr	r3, [r7, #28]
 800781e:	f1c3 0307 	rsb	r3, r3, #7
 8007822:	2b03      	cmp	r3, #3
 8007824:	bf28      	it	cs
 8007826:	2303      	movcs	r3, #3
 8007828:	61bb      	str	r3, [r7, #24]
 800782a:	69fb      	ldr	r3, [r7, #28]
 800782c:	3303      	adds	r3, #3
 800782e:	2b06      	cmp	r3, #6
 8007830:	d902      	bls.n	8007838 <NVIC_EncodePriority+0x30>
 8007832:	69fb      	ldr	r3, [r7, #28]
 8007834:	3b04      	subs	r3, #4
 8007836:	e000      	b.n	800783a <NVIC_EncodePriority+0x32>
 8007838:	2300      	movs	r3, #0
 800783a:	617b      	str	r3, [r7, #20]
 800783c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8007840:	69bb      	ldr	r3, [r7, #24]
 8007842:	fa02 f303 	lsl.w	r3, r2, r3
 8007846:	43da      	mvns	r2, r3
 8007848:	68bb      	ldr	r3, [r7, #8]
 800784a:	401a      	ands	r2, r3
 800784c:	697b      	ldr	r3, [r7, #20]
 800784e:	409a      	lsls	r2, r3
 8007850:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8007854:	697b      	ldr	r3, [r7, #20]
 8007856:	fa01 f303 	lsl.w	r3, r1, r3
 800785a:	43d9      	mvns	r1, r3
 800785c:	687b      	ldr	r3, [r7, #4]
 800785e:	400b      	ands	r3, r1
 8007860:	4313      	orrs	r3, r2
 8007862:	4618      	mov	r0, r3
 8007864:	3724      	adds	r7, #36	; 0x24
 8007866:	46bd      	mov	sp, r7
 8007868:	bc80      	pop	{r7}
 800786a:	4770      	bx	lr

0800786c <SysTick_Config>:
 800786c:	b580      	push	{r7, lr}
 800786e:	b082      	sub	sp, #8
 8007870:	af00      	add	r7, sp, #0
 8007872:	6078      	str	r0, [r7, #4]
 8007874:	687b      	ldr	r3, [r7, #4]
 8007876:	3b01      	subs	r3, #1
 8007878:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 800787c:	d301      	bcc.n	8007882 <SysTick_Config+0x16>
 800787e:	2301      	movs	r3, #1
 8007880:	e00f      	b.n	80078a2 <SysTick_Config+0x36>
 8007882:	4a0a      	ldr	r2, [pc, #40]	; (80078ac <SysTick_Config+0x40>)
 8007884:	687b      	ldr	r3, [r7, #4]
 8007886:	3b01      	subs	r3, #1
 8007888:	6053      	str	r3, [r2, #4]
 800788a:	2107      	movs	r1, #7
 800788c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007890:	f7ff ff90 	bl	80077b4 <__NVIC_SetPriority>
 8007894:	4b05      	ldr	r3, [pc, #20]	; (80078ac <SysTick_Config+0x40>)
 8007896:	2200      	movs	r2, #0
 8007898:	609a      	str	r2, [r3, #8]
 800789a:	4b04      	ldr	r3, [pc, #16]	; (80078ac <SysTick_Config+0x40>)
 800789c:	2207      	movs	r2, #7
 800789e:	601a      	str	r2, [r3, #0]
 80078a0:	2300      	movs	r3, #0
 80078a2:	4618      	mov	r0, r3
 80078a4:	3708      	adds	r7, #8
 80078a6:	46bd      	mov	sp, r7
 80078a8:	bd80      	pop	{r7, pc}
 80078aa:	bf00      	nop
 80078ac:	e000e010 	.word	0xe000e010

080078b0 <HAL_NVIC_SetPriorityGrouping>:
 80078b0:	b580      	push	{r7, lr}
 80078b2:	b082      	sub	sp, #8
 80078b4:	af00      	add	r7, sp, #0
 80078b6:	6078      	str	r0, [r7, #4]
 80078b8:	6878      	ldr	r0, [r7, #4]
 80078ba:	f7ff ff2d 	bl	8007718 <__NVIC_SetPriorityGrouping>
 80078be:	bf00      	nop
 80078c0:	3708      	adds	r7, #8
 80078c2:	46bd      	mov	sp, r7
 80078c4:	bd80      	pop	{r7, pc}

080078c6 <HAL_NVIC_SetPriority>:
 80078c6:	b580      	push	{r7, lr}
 80078c8:	b086      	sub	sp, #24
 80078ca:	af00      	add	r7, sp, #0
 80078cc:	4603      	mov	r3, r0
 80078ce:	60b9      	str	r1, [r7, #8]
 80078d0:	607a      	str	r2, [r7, #4]
 80078d2:	73fb      	strb	r3, [r7, #15]
 80078d4:	f7ff ff44 	bl	8007760 <__NVIC_GetPriorityGrouping>
 80078d8:	6178      	str	r0, [r7, #20]
 80078da:	687a      	ldr	r2, [r7, #4]
 80078dc:	68b9      	ldr	r1, [r7, #8]
 80078de:	6978      	ldr	r0, [r7, #20]
 80078e0:	f7ff ff92 	bl	8007808 <NVIC_EncodePriority>
 80078e4:	4602      	mov	r2, r0
 80078e6:	f997 300f 	ldrsb.w	r3, [r7, #15]
 80078ea:	4611      	mov	r1, r2
 80078ec:	4618      	mov	r0, r3
 80078ee:	f7ff ff61 	bl	80077b4 <__NVIC_SetPriority>
 80078f2:	bf00      	nop
 80078f4:	3718      	adds	r7, #24
 80078f6:	46bd      	mov	sp, r7
 80078f8:	bd80      	pop	{r7, pc}

080078fa <HAL_NVIC_EnableIRQ>:
 80078fa:	b580      	push	{r7, lr}
 80078fc:	b082      	sub	sp, #8
 80078fe:	af00      	add	r7, sp, #0
 8007900:	4603      	mov	r3, r0
 8007902:	71fb      	strb	r3, [r7, #7]
 8007904:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8007908:	4618      	mov	r0, r3
 800790a:	f7ff ff37 	bl	800777c <__NVIC_EnableIRQ>
 800790e:	bf00      	nop
 8007910:	3708      	adds	r7, #8
 8007912:	46bd      	mov	sp, r7
 8007914:	bd80      	pop	{r7, pc}

08007916 <HAL_SYSTICK_Config>:
 8007916:	b580      	push	{r7, lr}
 8007918:	b082      	sub	sp, #8
 800791a:	af00      	add	r7, sp, #0
 800791c:	6078      	str	r0, [r7, #4]
 800791e:	6878      	ldr	r0, [r7, #4]
 8007920:	f7ff ffa4 	bl	800786c <SysTick_Config>
 8007924:	4603      	mov	r3, r0
 8007926:	4618      	mov	r0, r3
 8007928:	3708      	adds	r7, #8
 800792a:	46bd      	mov	sp, r7
 800792c:	bd80      	pop	{r7, pc}

0800792e <HAL_EXTI_RegisterCallback>:
 800792e:	b480      	push	{r7}
 8007930:	b087      	sub	sp, #28
 8007932:	af00      	add	r7, sp, #0
 8007934:	60f8      	str	r0, [r7, #12]
 8007936:	460b      	mov	r3, r1
 8007938:	607a      	str	r2, [r7, #4]
 800793a:	72fb      	strb	r3, [r7, #11]
 800793c:	2300      	movs	r3, #0
 800793e:	75fb      	strb	r3, [r7, #23]
 8007940:	7afb      	ldrb	r3, [r7, #11]
 8007942:	2b01      	cmp	r3, #1
 8007944:	d00a      	beq.n	800795c <HAL_EXTI_RegisterCallback+0x2e>
 8007946:	2b02      	cmp	r3, #2
 8007948:	d00c      	beq.n	8007964 <HAL_EXTI_RegisterCallback+0x36>
 800794a:	2b00      	cmp	r3, #0
 800794c:	d10e      	bne.n	800796c <HAL_EXTI_RegisterCallback+0x3e>
 800794e:	68fb      	ldr	r3, [r7, #12]
 8007950:	687a      	ldr	r2, [r7, #4]
 8007952:	605a      	str	r2, [r3, #4]
 8007954:	68fb      	ldr	r3, [r7, #12]
 8007956:	687a      	ldr	r2, [r7, #4]
 8007958:	609a      	str	r2, [r3, #8]
 800795a:	e00a      	b.n	8007972 <HAL_EXTI_RegisterCallback+0x44>
 800795c:	68fb      	ldr	r3, [r7, #12]
 800795e:	687a      	ldr	r2, [r7, #4]
 8007960:	605a      	str	r2, [r3, #4]
 8007962:	e006      	b.n	8007972 <HAL_EXTI_RegisterCallback+0x44>
 8007964:	68fb      	ldr	r3, [r7, #12]
 8007966:	687a      	ldr	r2, [r7, #4]
 8007968:	609a      	str	r2, [r3, #8]
 800796a:	e002      	b.n	8007972 <HAL_EXTI_RegisterCallback+0x44>
 800796c:	2301      	movs	r3, #1
 800796e:	75fb      	strb	r3, [r7, #23]
 8007970:	bf00      	nop
 8007972:	7dfb      	ldrb	r3, [r7, #23]
 8007974:	4618      	mov	r0, r3
 8007976:	371c      	adds	r7, #28
 8007978:	46bd      	mov	sp, r7
 800797a:	bc80      	pop	{r7}
 800797c:	4770      	bx	lr

0800797e <HAL_EXTI_GetHandle>:
 800797e:	b480      	push	{r7}
 8007980:	b083      	sub	sp, #12
 8007982:	af00      	add	r7, sp, #0
 8007984:	6078      	str	r0, [r7, #4]
 8007986:	6039      	str	r1, [r7, #0]
 8007988:	687b      	ldr	r3, [r7, #4]
 800798a:	2b00      	cmp	r3, #0
 800798c:	d101      	bne.n	8007992 <HAL_EXTI_GetHandle+0x14>
 800798e:	2301      	movs	r3, #1
 8007990:	e003      	b.n	800799a <HAL_EXTI_GetHandle+0x1c>
 8007992:	687b      	ldr	r3, [r7, #4]
 8007994:	683a      	ldr	r2, [r7, #0]
 8007996:	601a      	str	r2, [r3, #0]
 8007998:	2300      	movs	r3, #0
 800799a:	4618      	mov	r0, r3
 800799c:	370c      	adds	r7, #12
 800799e:	46bd      	mov	sp, r7
 80079a0:	bc80      	pop	{r7}
 80079a2:	4770      	bx	lr

080079a4 <HAL_GPIO_Init>:
 80079a4:	b480      	push	{r7}
 80079a6:	b087      	sub	sp, #28
 80079a8:	af00      	add	r7, sp, #0
 80079aa:	6078      	str	r0, [r7, #4]
 80079ac:	6039      	str	r1, [r7, #0]
 80079ae:	2300      	movs	r3, #0
 80079b0:	617b      	str	r3, [r7, #20]
 80079b2:	e158      	b.n	8007c66 <HAL_GPIO_Init+0x2c2>
 80079b4:	683b      	ldr	r3, [r7, #0]
 80079b6:	681a      	ldr	r2, [r3, #0]
 80079b8:	2101      	movs	r1, #1
 80079ba:	697b      	ldr	r3, [r7, #20]
 80079bc:	fa01 f303 	lsl.w	r3, r1, r3
 80079c0:	4013      	ands	r3, r2
 80079c2:	60fb      	str	r3, [r7, #12]
 80079c4:	68fb      	ldr	r3, [r7, #12]
 80079c6:	2b00      	cmp	r3, #0
 80079c8:	f000 814a 	beq.w	8007c60 <HAL_GPIO_Init+0x2bc>
 80079cc:	683b      	ldr	r3, [r7, #0]
 80079ce:	685b      	ldr	r3, [r3, #4]
 80079d0:	2b01      	cmp	r3, #1
 80079d2:	d00b      	beq.n	80079ec <HAL_GPIO_Init+0x48>
 80079d4:	683b      	ldr	r3, [r7, #0]
 80079d6:	685b      	ldr	r3, [r3, #4]
 80079d8:	2b02      	cmp	r3, #2
 80079da:	d007      	beq.n	80079ec <HAL_GPIO_Init+0x48>
 80079dc:	683b      	ldr	r3, [r7, #0]
 80079de:	685b      	ldr	r3, [r3, #4]
 80079e0:	2b11      	cmp	r3, #17
 80079e2:	d003      	beq.n	80079ec <HAL_GPIO_Init+0x48>
 80079e4:	683b      	ldr	r3, [r7, #0]
 80079e6:	685b      	ldr	r3, [r3, #4]
 80079e8:	2b12      	cmp	r3, #18
 80079ea:	d130      	bne.n	8007a4e <HAL_GPIO_Init+0xaa>
 80079ec:	687b      	ldr	r3, [r7, #4]
 80079ee:	689b      	ldr	r3, [r3, #8]
 80079f0:	613b      	str	r3, [r7, #16]
 80079f2:	697b      	ldr	r3, [r7, #20]
 80079f4:	005b      	lsls	r3, r3, #1
 80079f6:	2203      	movs	r2, #3
 80079f8:	fa02 f303 	lsl.w	r3, r2, r3
 80079fc:	43db      	mvns	r3, r3
 80079fe:	693a      	ldr	r2, [r7, #16]
 8007a00:	4013      	ands	r3, r2
 8007a02:	613b      	str	r3, [r7, #16]
 8007a04:	683b      	ldr	r3, [r7, #0]
 8007a06:	68da      	ldr	r2, [r3, #12]
 8007a08:	697b      	ldr	r3, [r7, #20]
 8007a0a:	005b      	lsls	r3, r3, #1
 8007a0c:	fa02 f303 	lsl.w	r3, r2, r3
 8007a10:	693a      	ldr	r2, [r7, #16]
 8007a12:	4313      	orrs	r3, r2
 8007a14:	613b      	str	r3, [r7, #16]
 8007a16:	687b      	ldr	r3, [r7, #4]
 8007a18:	693a      	ldr	r2, [r7, #16]
 8007a1a:	609a      	str	r2, [r3, #8]
 8007a1c:	687b      	ldr	r3, [r7, #4]
 8007a1e:	685b      	ldr	r3, [r3, #4]
 8007a20:	613b      	str	r3, [r7, #16]
 8007a22:	2201      	movs	r2, #1
 8007a24:	697b      	ldr	r3, [r7, #20]
 8007a26:	fa02 f303 	lsl.w	r3, r2, r3
 8007a2a:	43db      	mvns	r3, r3
 8007a2c:	693a      	ldr	r2, [r7, #16]
 8007a2e:	4013      	ands	r3, r2
 8007a30:	613b      	str	r3, [r7, #16]
 8007a32:	683b      	ldr	r3, [r7, #0]
 8007a34:	685b      	ldr	r3, [r3, #4]
 8007a36:	091b      	lsrs	r3, r3, #4
 8007a38:	f003 0201 	and.w	r2, r3, #1
 8007a3c:	697b      	ldr	r3, [r7, #20]
 8007a3e:	fa02 f303 	lsl.w	r3, r2, r3
 8007a42:	693a      	ldr	r2, [r7, #16]
 8007a44:	4313      	orrs	r3, r2
 8007a46:	613b      	str	r3, [r7, #16]
 8007a48:	687b      	ldr	r3, [r7, #4]
 8007a4a:	693a      	ldr	r2, [r7, #16]
 8007a4c:	605a      	str	r2, [r3, #4]
 8007a4e:	687b      	ldr	r3, [r7, #4]
 8007a50:	68db      	ldr	r3, [r3, #12]
 8007a52:	613b      	str	r3, [r7, #16]
 8007a54:	697b      	ldr	r3, [r7, #20]
 8007a56:	005b      	lsls	r3, r3, #1
 8007a58:	2203      	movs	r2, #3
 8007a5a:	fa02 f303 	lsl.w	r3, r2, r3
 8007a5e:	43db      	mvns	r3, r3
 8007a60:	693a      	ldr	r2, [r7, #16]
 8007a62:	4013      	ands	r3, r2
 8007a64:	613b      	str	r3, [r7, #16]
 8007a66:	683b      	ldr	r3, [r7, #0]
 8007a68:	689a      	ldr	r2, [r3, #8]
 8007a6a:	697b      	ldr	r3, [r7, #20]
 8007a6c:	005b      	lsls	r3, r3, #1
 8007a6e:	fa02 f303 	lsl.w	r3, r2, r3
 8007a72:	693a      	ldr	r2, [r7, #16]
 8007a74:	4313      	orrs	r3, r2
 8007a76:	613b      	str	r3, [r7, #16]
 8007a78:	687b      	ldr	r3, [r7, #4]
 8007a7a:	693a      	ldr	r2, [r7, #16]
 8007a7c:	60da      	str	r2, [r3, #12]
 8007a7e:	683b      	ldr	r3, [r7, #0]
 8007a80:	685b      	ldr	r3, [r3, #4]
 8007a82:	2b02      	cmp	r3, #2
 8007a84:	d003      	beq.n	8007a8e <HAL_GPIO_Init+0xea>
 8007a86:	683b      	ldr	r3, [r7, #0]
 8007a88:	685b      	ldr	r3, [r3, #4]
 8007a8a:	2b12      	cmp	r3, #18
 8007a8c:	d123      	bne.n	8007ad6 <HAL_GPIO_Init+0x132>
 8007a8e:	697b      	ldr	r3, [r7, #20]
 8007a90:	08da      	lsrs	r2, r3, #3
 8007a92:	687b      	ldr	r3, [r7, #4]
 8007a94:	3208      	adds	r2, #8
 8007a96:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 8007a9a:	613b      	str	r3, [r7, #16]
 8007a9c:	697b      	ldr	r3, [r7, #20]
 8007a9e:	f003 0307 	and.w	r3, r3, #7
 8007aa2:	009b      	lsls	r3, r3, #2
 8007aa4:	220f      	movs	r2, #15
 8007aa6:	fa02 f303 	lsl.w	r3, r2, r3
 8007aaa:	43db      	mvns	r3, r3
 8007aac:	693a      	ldr	r2, [r7, #16]
 8007aae:	4013      	ands	r3, r2
 8007ab0:	613b      	str	r3, [r7, #16]
 8007ab2:	683b      	ldr	r3, [r7, #0]
 8007ab4:	691a      	ldr	r2, [r3, #16]
 8007ab6:	697b      	ldr	r3, [r7, #20]
 8007ab8:	f003 0307 	and.w	r3, r3, #7
 8007abc:	009b      	lsls	r3, r3, #2
 8007abe:	fa02 f303 	lsl.w	r3, r2, r3
 8007ac2:	693a      	ldr	r2, [r7, #16]
 8007ac4:	4313      	orrs	r3, r2
 8007ac6:	613b      	str	r3, [r7, #16]
 8007ac8:	697b      	ldr	r3, [r7, #20]
 8007aca:	08da      	lsrs	r2, r3, #3
 8007acc:	687b      	ldr	r3, [r7, #4]
 8007ace:	3208      	adds	r2, #8
 8007ad0:	6939      	ldr	r1, [r7, #16]
 8007ad2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007ad6:	687b      	ldr	r3, [r7, #4]
 8007ad8:	681b      	ldr	r3, [r3, #0]
 8007ada:	613b      	str	r3, [r7, #16]
 8007adc:	697b      	ldr	r3, [r7, #20]
 8007ade:	005b      	lsls	r3, r3, #1
 8007ae0:	2203      	movs	r2, #3
 8007ae2:	fa02 f303 	lsl.w	r3, r2, r3
 8007ae6:	43db      	mvns	r3, r3
 8007ae8:	693a      	ldr	r2, [r7, #16]
 8007aea:	4013      	ands	r3, r2
 8007aec:	613b      	str	r3, [r7, #16]
 8007aee:	683b      	ldr	r3, [r7, #0]
 8007af0:	685b      	ldr	r3, [r3, #4]
 8007af2:	f003 0203 	and.w	r2, r3, #3
 8007af6:	697b      	ldr	r3, [r7, #20]
 8007af8:	005b      	lsls	r3, r3, #1
 8007afa:	fa02 f303 	lsl.w	r3, r2, r3
 8007afe:	693a      	ldr	r2, [r7, #16]
 8007b00:	4313      	orrs	r3, r2
 8007b02:	613b      	str	r3, [r7, #16]
 8007b04:	687b      	ldr	r3, [r7, #4]
 8007b06:	693a      	ldr	r2, [r7, #16]
 8007b08:	601a      	str	r2, [r3, #0]
 8007b0a:	683b      	ldr	r3, [r7, #0]
 8007b0c:	685b      	ldr	r3, [r3, #4]
 8007b0e:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8007b12:	2b00      	cmp	r3, #0
 8007b14:	f000 80a4 	beq.w	8007c60 <HAL_GPIO_Init+0x2bc>
 8007b18:	4a59      	ldr	r2, [pc, #356]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007b1a:	697b      	ldr	r3, [r7, #20]
 8007b1c:	089b      	lsrs	r3, r3, #2
 8007b1e:	3318      	adds	r3, #24
 8007b20:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8007b24:	613b      	str	r3, [r7, #16]
 8007b26:	697b      	ldr	r3, [r7, #20]
 8007b28:	f003 0303 	and.w	r3, r3, #3
 8007b2c:	00db      	lsls	r3, r3, #3
 8007b2e:	220f      	movs	r2, #15
 8007b30:	fa02 f303 	lsl.w	r3, r2, r3
 8007b34:	43db      	mvns	r3, r3
 8007b36:	693a      	ldr	r2, [r7, #16]
 8007b38:	4013      	ands	r3, r2
 8007b3a:	613b      	str	r3, [r7, #16]
 8007b3c:	687b      	ldr	r3, [r7, #4]
 8007b3e:	4a51      	ldr	r2, [pc, #324]	; (8007c84 <HAL_GPIO_Init+0x2e0>)
 8007b40:	4293      	cmp	r3, r2
 8007b42:	d025      	beq.n	8007b90 <HAL_GPIO_Init+0x1ec>
 8007b44:	687b      	ldr	r3, [r7, #4]
 8007b46:	4a50      	ldr	r2, [pc, #320]	; (8007c88 <HAL_GPIO_Init+0x2e4>)
 8007b48:	4293      	cmp	r3, r2
 8007b4a:	d01f      	beq.n	8007b8c <HAL_GPIO_Init+0x1e8>
 8007b4c:	687b      	ldr	r3, [r7, #4]
 8007b4e:	4a4f      	ldr	r2, [pc, #316]	; (8007c8c <HAL_GPIO_Init+0x2e8>)
 8007b50:	4293      	cmp	r3, r2
 8007b52:	d019      	beq.n	8007b88 <HAL_GPIO_Init+0x1e4>
 8007b54:	687b      	ldr	r3, [r7, #4]
 8007b56:	4a4e      	ldr	r2, [pc, #312]	; (8007c90 <HAL_GPIO_Init+0x2ec>)
 8007b58:	4293      	cmp	r3, r2
 8007b5a:	d013      	beq.n	8007b84 <HAL_GPIO_Init+0x1e0>
 8007b5c:	687b      	ldr	r3, [r7, #4]
 8007b5e:	4a4d      	ldr	r2, [pc, #308]	; (8007c94 <HAL_GPIO_Init+0x2f0>)
 8007b60:	4293      	cmp	r3, r2
 8007b62:	d00d      	beq.n	8007b80 <HAL_GPIO_Init+0x1dc>
 8007b64:	687b      	ldr	r3, [r7, #4]
 8007b66:	4a4c      	ldr	r2, [pc, #304]	; (8007c98 <HAL_GPIO_Init+0x2f4>)
 8007b68:	4293      	cmp	r3, r2
 8007b6a:	d007      	beq.n	8007b7c <HAL_GPIO_Init+0x1d8>
 8007b6c:	687b      	ldr	r3, [r7, #4]
 8007b6e:	4a4b      	ldr	r2, [pc, #300]	; (8007c9c <HAL_GPIO_Init+0x2f8>)
 8007b70:	4293      	cmp	r3, r2
 8007b72:	d101      	bne.n	8007b78 <HAL_GPIO_Init+0x1d4>
 8007b74:	2306      	movs	r3, #6
 8007b76:	e00c      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b78:	2307      	movs	r3, #7
 8007b7a:	e00a      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b7c:	2305      	movs	r3, #5
 8007b7e:	e008      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b80:	2304      	movs	r3, #4
 8007b82:	e006      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b84:	2303      	movs	r3, #3
 8007b86:	e004      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b88:	2302      	movs	r3, #2
 8007b8a:	e002      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b8c:	2301      	movs	r3, #1
 8007b8e:	e000      	b.n	8007b92 <HAL_GPIO_Init+0x1ee>
 8007b90:	2300      	movs	r3, #0
 8007b92:	697a      	ldr	r2, [r7, #20]
 8007b94:	f002 0203 	and.w	r2, r2, #3
 8007b98:	00d2      	lsls	r2, r2, #3
 8007b9a:	4093      	lsls	r3, r2
 8007b9c:	693a      	ldr	r2, [r7, #16]
 8007b9e:	4313      	orrs	r3, r2
 8007ba0:	613b      	str	r3, [r7, #16]
 8007ba2:	4937      	ldr	r1, [pc, #220]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007ba4:	697b      	ldr	r3, [r7, #20]
 8007ba6:	089b      	lsrs	r3, r3, #2
 8007ba8:	3318      	adds	r3, #24
 8007baa:	693a      	ldr	r2, [r7, #16]
 8007bac:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8007bb0:	4b33      	ldr	r3, [pc, #204]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007bb2:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 8007bb6:	613b      	str	r3, [r7, #16]
 8007bb8:	68fb      	ldr	r3, [r7, #12]
 8007bba:	43db      	mvns	r3, r3
 8007bbc:	693a      	ldr	r2, [r7, #16]
 8007bbe:	4013      	ands	r3, r2
 8007bc0:	613b      	str	r3, [r7, #16]
 8007bc2:	683b      	ldr	r3, [r7, #0]
 8007bc4:	685b      	ldr	r3, [r3, #4]
 8007bc6:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 8007bca:	2b00      	cmp	r3, #0
 8007bcc:	d003      	beq.n	8007bd6 <HAL_GPIO_Init+0x232>
 8007bce:	693a      	ldr	r2, [r7, #16]
 8007bd0:	68fb      	ldr	r3, [r7, #12]
 8007bd2:	4313      	orrs	r3, r2
 8007bd4:	613b      	str	r3, [r7, #16]
 8007bd6:	4a2a      	ldr	r2, [pc, #168]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007bd8:	693b      	ldr	r3, [r7, #16]
 8007bda:	f8c2 3080 	str.w	r3, [r2, #128]	; 0x80
 8007bde:	4b28      	ldr	r3, [pc, #160]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007be0:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8007be4:	613b      	str	r3, [r7, #16]
 8007be6:	68fb      	ldr	r3, [r7, #12]
 8007be8:	43db      	mvns	r3, r3
 8007bea:	693a      	ldr	r2, [r7, #16]
 8007bec:	4013      	ands	r3, r2
 8007bee:	613b      	str	r3, [r7, #16]
 8007bf0:	683b      	ldr	r3, [r7, #0]
 8007bf2:	685b      	ldr	r3, [r3, #4]
 8007bf4:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8007bf8:	2b00      	cmp	r3, #0
 8007bfa:	d003      	beq.n	8007c04 <HAL_GPIO_Init+0x260>
 8007bfc:	693a      	ldr	r2, [r7, #16]
 8007bfe:	68fb      	ldr	r3, [r7, #12]
 8007c00:	4313      	orrs	r3, r2
 8007c02:	613b      	str	r3, [r7, #16]
 8007c04:	4a1e      	ldr	r2, [pc, #120]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007c06:	693b      	ldr	r3, [r7, #16]
 8007c08:	f8c2 3084 	str.w	r3, [r2, #132]	; 0x84
 8007c0c:	4b1c      	ldr	r3, [pc, #112]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007c0e:	681b      	ldr	r3, [r3, #0]
 8007c10:	613b      	str	r3, [r7, #16]
 8007c12:	68fb      	ldr	r3, [r7, #12]
 8007c14:	43db      	mvns	r3, r3
 8007c16:	693a      	ldr	r2, [r7, #16]
 8007c18:	4013      	ands	r3, r2
 8007c1a:	613b      	str	r3, [r7, #16]
 8007c1c:	683b      	ldr	r3, [r7, #0]
 8007c1e:	685b      	ldr	r3, [r3, #4]
 8007c20:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 8007c24:	2b00      	cmp	r3, #0
 8007c26:	d003      	beq.n	8007c30 <HAL_GPIO_Init+0x28c>
 8007c28:	693a      	ldr	r2, [r7, #16]
 8007c2a:	68fb      	ldr	r3, [r7, #12]
 8007c2c:	4313      	orrs	r3, r2
 8007c2e:	613b      	str	r3, [r7, #16]
 8007c30:	4a13      	ldr	r2, [pc, #76]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007c32:	693b      	ldr	r3, [r7, #16]
 8007c34:	6013      	str	r3, [r2, #0]
 8007c36:	4b12      	ldr	r3, [pc, #72]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007c38:	685b      	ldr	r3, [r3, #4]
 8007c3a:	613b      	str	r3, [r7, #16]
 8007c3c:	68fb      	ldr	r3, [r7, #12]
 8007c3e:	43db      	mvns	r3, r3
 8007c40:	693a      	ldr	r2, [r7, #16]
 8007c42:	4013      	ands	r3, r2
 8007c44:	613b      	str	r3, [r7, #16]
 8007c46:	683b      	ldr	r3, [r7, #0]
 8007c48:	685b      	ldr	r3, [r3, #4]
 8007c4a:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8007c4e:	2b00      	cmp	r3, #0
 8007c50:	d003      	beq.n	8007c5a <HAL_GPIO_Init+0x2b6>
 8007c52:	693a      	ldr	r2, [r7, #16]
 8007c54:	68fb      	ldr	r3, [r7, #12]
 8007c56:	4313      	orrs	r3, r2
 8007c58:	613b      	str	r3, [r7, #16]
 8007c5a:	4a09      	ldr	r2, [pc, #36]	; (8007c80 <HAL_GPIO_Init+0x2dc>)
 8007c5c:	693b      	ldr	r3, [r7, #16]
 8007c5e:	6053      	str	r3, [r2, #4]
 8007c60:	697b      	ldr	r3, [r7, #20]
 8007c62:	3301      	adds	r3, #1
 8007c64:	617b      	str	r3, [r7, #20]
 8007c66:	683b      	ldr	r3, [r7, #0]
 8007c68:	681a      	ldr	r2, [r3, #0]
 8007c6a:	697b      	ldr	r3, [r7, #20]
 8007c6c:	fa22 f303 	lsr.w	r3, r2, r3
 8007c70:	2b00      	cmp	r3, #0
 8007c72:	f47f ae9f 	bne.w	80079b4 <HAL_GPIO_Init+0x10>
 8007c76:	bf00      	nop
 8007c78:	371c      	adds	r7, #28
 8007c7a:	46bd      	mov	sp, r7
 8007c7c:	bc80      	pop	{r7}
 8007c7e:	4770      	bx	lr
 8007c80:	4002f400 	.word	0x4002f400
 8007c84:	42020000 	.word	0x42020000
 8007c88:	42020400 	.word	0x42020400
 8007c8c:	42020800 	.word	0x42020800
 8007c90:	42020c00 	.word	0x42020c00
 8007c94:	42021000 	.word	0x42021000
 8007c98:	42021400 	.word	0x42021400
 8007c9c:	42021800 	.word	0x42021800

08007ca0 <HAL_GPIO_WritePin>:
 8007ca0:	b480      	push	{r7}
 8007ca2:	b083      	sub	sp, #12
 8007ca4:	af00      	add	r7, sp, #0
 8007ca6:	6078      	str	r0, [r7, #4]
 8007ca8:	460b      	mov	r3, r1
 8007caa:	807b      	strh	r3, [r7, #2]
 8007cac:	4613      	mov	r3, r2
 8007cae:	707b      	strb	r3, [r7, #1]
 8007cb0:	787b      	ldrb	r3, [r7, #1]
 8007cb2:	2b00      	cmp	r3, #0
 8007cb4:	d003      	beq.n	8007cbe <HAL_GPIO_WritePin+0x1e>
 8007cb6:	887a      	ldrh	r2, [r7, #2]
 8007cb8:	687b      	ldr	r3, [r7, #4]
 8007cba:	619a      	str	r2, [r3, #24]
 8007cbc:	e002      	b.n	8007cc4 <HAL_GPIO_WritePin+0x24>
 8007cbe:	887a      	ldrh	r2, [r7, #2]
 8007cc0:	687b      	ldr	r3, [r7, #4]
 8007cc2:	629a      	str	r2, [r3, #40]	; 0x28
 8007cc4:	bf00      	nop
 8007cc6:	370c      	adds	r7, #12
 8007cc8:	46bd      	mov	sp, r7
 8007cca:	bc80      	pop	{r7}
 8007ccc:	4770      	bx	lr

08007cce <HAL_GPIO_TogglePin>:
 8007cce:	b480      	push	{r7}
 8007cd0:	b085      	sub	sp, #20
 8007cd2:	af00      	add	r7, sp, #0
 8007cd4:	6078      	str	r0, [r7, #4]
 8007cd6:	460b      	mov	r3, r1
 8007cd8:	807b      	strh	r3, [r7, #2]
 8007cda:	687b      	ldr	r3, [r7, #4]
 8007cdc:	695b      	ldr	r3, [r3, #20]
 8007cde:	60fb      	str	r3, [r7, #12]
 8007ce0:	887a      	ldrh	r2, [r7, #2]
 8007ce2:	68fb      	ldr	r3, [r7, #12]
 8007ce4:	4013      	ands	r3, r2
 8007ce6:	041a      	lsls	r2, r3, #16
 8007ce8:	68fb      	ldr	r3, [r7, #12]
 8007cea:	43d9      	mvns	r1, r3
 8007cec:	887b      	ldrh	r3, [r7, #2]
 8007cee:	400b      	ands	r3, r1
 8007cf0:	431a      	orrs	r2, r3
 8007cf2:	687b      	ldr	r3, [r7, #4]
 8007cf4:	619a      	str	r2, [r3, #24]
 8007cf6:	bf00      	nop
 8007cf8:	3714      	adds	r7, #20
 8007cfa:	46bd      	mov	sp, r7
 8007cfc:	bc80      	pop	{r7}
 8007cfe:	4770      	bx	lr

08007d00 <HAL_PWREx_GetVoltageRange>:
 8007d00:	b480      	push	{r7}
 8007d02:	af00      	add	r7, sp, #0
 8007d04:	4b03      	ldr	r3, [pc, #12]	; (8007d14 <HAL_PWREx_GetVoltageRange+0x14>)
 8007d06:	681b      	ldr	r3, [r3, #0]
 8007d08:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
 8007d0c:	4618      	mov	r0, r3
 8007d0e:	46bd      	mov	sp, r7
 8007d10:	bc80      	pop	{r7}
 8007d12:	4770      	bx	lr
 8007d14:	40007000 	.word	0x40007000

08007d18 <HAL_PWREx_ControlVoltageScaling>:
 8007d18:	b580      	push	{r7, lr}
 8007d1a:	b084      	sub	sp, #16
 8007d1c:	af00      	add	r7, sp, #0
 8007d1e:	6078      	str	r0, [r7, #4]
 8007d20:	4b27      	ldr	r3, [pc, #156]	; (8007dc0 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8007d22:	681b      	ldr	r3, [r3, #0]
 8007d24:	f403 63c0 	and.w	r3, r3, #1536	; 0x600
 8007d28:	60bb      	str	r3, [r7, #8]
 8007d2a:	f000 f85f 	bl	8007dec <HAL_PWREx_SMPS_GetEffectiveMode>
 8007d2e:	4603      	mov	r3, r0
 8007d30:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8007d34:	d101      	bne.n	8007d3a <HAL_PWREx_ControlVoltageScaling+0x22>
 8007d36:	2301      	movs	r3, #1
 8007d38:	e03e      	b.n	8007db8 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8007d3a:	4b21      	ldr	r3, [pc, #132]	; (8007dc0 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8007d3c:	68db      	ldr	r3, [r3, #12]
 8007d3e:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 8007d42:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8007d46:	d101      	bne.n	8007d4c <HAL_PWREx_ControlVoltageScaling+0x34>
 8007d48:	2301      	movs	r3, #1
 8007d4a:	e035      	b.n	8007db8 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8007d4c:	68ba      	ldr	r2, [r7, #8]
 8007d4e:	687b      	ldr	r3, [r7, #4]
 8007d50:	429a      	cmp	r2, r3
 8007d52:	d101      	bne.n	8007d58 <HAL_PWREx_ControlVoltageScaling+0x40>
 8007d54:	2300      	movs	r3, #0
 8007d56:	e02f      	b.n	8007db8 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8007d58:	4b19      	ldr	r3, [pc, #100]	; (8007dc0 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8007d5a:	681b      	ldr	r3, [r3, #0]
 8007d5c:	f423 62c0 	bic.w	r2, r3, #1536	; 0x600
 8007d60:	4917      	ldr	r1, [pc, #92]	; (8007dc0 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8007d62:	687b      	ldr	r3, [r7, #4]
 8007d64:	4313      	orrs	r3, r2
 8007d66:	600b      	str	r3, [r1, #0]
 8007d68:	4b16      	ldr	r3, [pc, #88]	; (8007dc4 <HAL_PWREx_ControlVoltageScaling+0xac>)
 8007d6a:	681b      	ldr	r3, [r3, #0]
 8007d6c:	095b      	lsrs	r3, r3, #5
 8007d6e:	4a16      	ldr	r2, [pc, #88]	; (8007dc8 <HAL_PWREx_ControlVoltageScaling+0xb0>)
 8007d70:	fba2 2303 	umull	r2, r3, r2, r3
 8007d74:	09db      	lsrs	r3, r3, #7
 8007d76:	2232      	movs	r2, #50	; 0x32
 8007d78:	fb02 f303 	mul.w	r3, r2, r3
 8007d7c:	4a13      	ldr	r2, [pc, #76]	; (8007dcc <HAL_PWREx_ControlVoltageScaling+0xb4>)
 8007d7e:	fba2 2303 	umull	r2, r3, r2, r3
 8007d82:	08db      	lsrs	r3, r3, #3
 8007d84:	3301      	adds	r3, #1
 8007d86:	60fb      	str	r3, [r7, #12]
 8007d88:	e002      	b.n	8007d90 <HAL_PWREx_ControlVoltageScaling+0x78>
 8007d8a:	68fb      	ldr	r3, [r7, #12]
 8007d8c:	3b01      	subs	r3, #1
 8007d8e:	60fb      	str	r3, [r7, #12]
 8007d90:	4b0b      	ldr	r3, [pc, #44]	; (8007dc0 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8007d92:	695b      	ldr	r3, [r3, #20]
 8007d94:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8007d98:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8007d9c:	d102      	bne.n	8007da4 <HAL_PWREx_ControlVoltageScaling+0x8c>
 8007d9e:	68fb      	ldr	r3, [r7, #12]
 8007da0:	2b00      	cmp	r3, #0
 8007da2:	d1f2      	bne.n	8007d8a <HAL_PWREx_ControlVoltageScaling+0x72>
 8007da4:	4b06      	ldr	r3, [pc, #24]	; (8007dc0 <HAL_PWREx_ControlVoltageScaling+0xa8>)
 8007da6:	695b      	ldr	r3, [r3, #20]
 8007da8:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8007dac:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8007db0:	d101      	bne.n	8007db6 <HAL_PWREx_ControlVoltageScaling+0x9e>
 8007db2:	2303      	movs	r3, #3
 8007db4:	e000      	b.n	8007db8 <HAL_PWREx_ControlVoltageScaling+0xa0>
 8007db6:	2300      	movs	r3, #0
 8007db8:	4618      	mov	r0, r3
 8007dba:	3710      	adds	r7, #16
 8007dbc:	46bd      	mov	sp, r7
 8007dbe:	bd80      	pop	{r7, pc}
 8007dc0:	40007000 	.word	0x40007000
 8007dc4:	200009ac 	.word	0x200009ac
 8007dc8:	0a7c5ac5 	.word	0x0a7c5ac5
 8007dcc:	cccccccd 	.word	0xcccccccd

08007dd0 <HAL_PWREx_DisableUCPDDeadBattery>:
 8007dd0:	b480      	push	{r7}
 8007dd2:	af00      	add	r7, sp, #0
 8007dd4:	4b04      	ldr	r3, [pc, #16]	; (8007de8 <HAL_PWREx_DisableUCPDDeadBattery+0x18>)
 8007dd6:	689b      	ldr	r3, [r3, #8]
 8007dd8:	4a03      	ldr	r2, [pc, #12]	; (8007de8 <HAL_PWREx_DisableUCPDDeadBattery+0x18>)
 8007dda:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8007dde:	6093      	str	r3, [r2, #8]
 8007de0:	bf00      	nop
 8007de2:	46bd      	mov	sp, r7
 8007de4:	bc80      	pop	{r7}
 8007de6:	4770      	bx	lr
 8007de8:	40007000 	.word	0x40007000

08007dec <HAL_PWREx_SMPS_GetEffectiveMode>:
 8007dec:	b480      	push	{r7}
 8007dee:	b083      	sub	sp, #12
 8007df0:	af00      	add	r7, sp, #0
 8007df2:	4b0e      	ldr	r3, [pc, #56]	; (8007e2c <HAL_PWREx_SMPS_GetEffectiveMode+0x40>)
 8007df4:	691b      	ldr	r3, [r3, #16]
 8007df6:	603b      	str	r3, [r7, #0]
 8007df8:	683b      	ldr	r3, [r7, #0]
 8007dfa:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8007dfe:	2b00      	cmp	r3, #0
 8007e00:	d003      	beq.n	8007e0a <HAL_PWREx_SMPS_GetEffectiveMode+0x1e>
 8007e02:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8007e06:	607b      	str	r3, [r7, #4]
 8007e08:	e00a      	b.n	8007e20 <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
 8007e0a:	683b      	ldr	r3, [r7, #0]
 8007e0c:	f403 4300 	and.w	r3, r3, #32768	; 0x8000
 8007e10:	2b00      	cmp	r3, #0
 8007e12:	d103      	bne.n	8007e1c <HAL_PWREx_SMPS_GetEffectiveMode+0x30>
 8007e14:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8007e18:	607b      	str	r3, [r7, #4]
 8007e1a:	e001      	b.n	8007e20 <HAL_PWREx_SMPS_GetEffectiveMode+0x34>
 8007e1c:	2300      	movs	r3, #0
 8007e1e:	607b      	str	r3, [r7, #4]
 8007e20:	687b      	ldr	r3, [r7, #4]
 8007e22:	4618      	mov	r0, r3
 8007e24:	370c      	adds	r7, #12
 8007e26:	46bd      	mov	sp, r7
 8007e28:	bc80      	pop	{r7}
 8007e2a:	4770      	bx	lr
 8007e2c:	40007000 	.word	0x40007000

08007e30 <HAL_RCC_OscConfig>:
 8007e30:	b580      	push	{r7, lr}
 8007e32:	b088      	sub	sp, #32
 8007e34:	af00      	add	r7, sp, #0
 8007e36:	6078      	str	r0, [r7, #4]
 8007e38:	687b      	ldr	r3, [r7, #4]
 8007e3a:	2b00      	cmp	r3, #0
 8007e3c:	d102      	bne.n	8007e44 <HAL_RCC_OscConfig+0x14>
 8007e3e:	2301      	movs	r3, #1
 8007e40:	f000 bcd0 	b.w	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8007e44:	4ba3      	ldr	r3, [pc, #652]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007e46:	689b      	ldr	r3, [r3, #8]
 8007e48:	f003 030c 	and.w	r3, r3, #12
 8007e4c:	61bb      	str	r3, [r7, #24]
 8007e4e:	4ba1      	ldr	r3, [pc, #644]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007e50:	68db      	ldr	r3, [r3, #12]
 8007e52:	f003 0303 	and.w	r3, r3, #3
 8007e56:	617b      	str	r3, [r7, #20]
 8007e58:	687b      	ldr	r3, [r7, #4]
 8007e5a:	681b      	ldr	r3, [r3, #0]
 8007e5c:	f003 0310 	and.w	r3, r3, #16
 8007e60:	2b00      	cmp	r3, #0
 8007e62:	f000 80e9 	beq.w	8008038 <HAL_RCC_OscConfig+0x208>
 8007e66:	69bb      	ldr	r3, [r7, #24]
 8007e68:	2b00      	cmp	r3, #0
 8007e6a:	d006      	beq.n	8007e7a <HAL_RCC_OscConfig+0x4a>
 8007e6c:	69bb      	ldr	r3, [r7, #24]
 8007e6e:	2b0c      	cmp	r3, #12
 8007e70:	f040 8083 	bne.w	8007f7a <HAL_RCC_OscConfig+0x14a>
 8007e74:	697b      	ldr	r3, [r7, #20]
 8007e76:	2b01      	cmp	r3, #1
 8007e78:	d17f      	bne.n	8007f7a <HAL_RCC_OscConfig+0x14a>
 8007e7a:	4b96      	ldr	r3, [pc, #600]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007e7c:	681b      	ldr	r3, [r3, #0]
 8007e7e:	f003 0302 	and.w	r3, r3, #2
 8007e82:	2b00      	cmp	r3, #0
 8007e84:	d006      	beq.n	8007e94 <HAL_RCC_OscConfig+0x64>
 8007e86:	687b      	ldr	r3, [r7, #4]
 8007e88:	69db      	ldr	r3, [r3, #28]
 8007e8a:	2b00      	cmp	r3, #0
 8007e8c:	d102      	bne.n	8007e94 <HAL_RCC_OscConfig+0x64>
 8007e8e:	2301      	movs	r3, #1
 8007e90:	f000 bca8 	b.w	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8007e94:	687b      	ldr	r3, [r7, #4]
 8007e96:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8007e98:	4b8e      	ldr	r3, [pc, #568]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007e9a:	681b      	ldr	r3, [r3, #0]
 8007e9c:	f003 0308 	and.w	r3, r3, #8
 8007ea0:	2b00      	cmp	r3, #0
 8007ea2:	d004      	beq.n	8007eae <HAL_RCC_OscConfig+0x7e>
 8007ea4:	4b8b      	ldr	r3, [pc, #556]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ea6:	681b      	ldr	r3, [r3, #0]
 8007ea8:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8007eac:	e005      	b.n	8007eba <HAL_RCC_OscConfig+0x8a>
 8007eae:	4b89      	ldr	r3, [pc, #548]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007eb0:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8007eb4:	091b      	lsrs	r3, r3, #4
 8007eb6:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8007eba:	4293      	cmp	r3, r2
 8007ebc:	d224      	bcs.n	8007f08 <HAL_RCC_OscConfig+0xd8>
 8007ebe:	687b      	ldr	r3, [r7, #4]
 8007ec0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8007ec2:	4618      	mov	r0, r3
 8007ec4:	f000 fe94 	bl	8008bf0 <RCC_SetFlashLatencyFromMSIRange>
 8007ec8:	4603      	mov	r3, r0
 8007eca:	2b00      	cmp	r3, #0
 8007ecc:	d002      	beq.n	8007ed4 <HAL_RCC_OscConfig+0xa4>
 8007ece:	2301      	movs	r3, #1
 8007ed0:	f000 bc88 	b.w	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8007ed4:	4b7f      	ldr	r3, [pc, #508]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ed6:	681b      	ldr	r3, [r3, #0]
 8007ed8:	4a7e      	ldr	r2, [pc, #504]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007eda:	f043 0308 	orr.w	r3, r3, #8
 8007ede:	6013      	str	r3, [r2, #0]
 8007ee0:	4b7c      	ldr	r3, [pc, #496]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ee2:	681b      	ldr	r3, [r3, #0]
 8007ee4:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8007ee8:	687b      	ldr	r3, [r7, #4]
 8007eea:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8007eec:	4979      	ldr	r1, [pc, #484]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007eee:	4313      	orrs	r3, r2
 8007ef0:	600b      	str	r3, [r1, #0]
 8007ef2:	4b78      	ldr	r3, [pc, #480]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ef4:	685b      	ldr	r3, [r3, #4]
 8007ef6:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
 8007efa:	687b      	ldr	r3, [r7, #4]
 8007efc:	6a1b      	ldr	r3, [r3, #32]
 8007efe:	021b      	lsls	r3, r3, #8
 8007f00:	4974      	ldr	r1, [pc, #464]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f02:	4313      	orrs	r3, r2
 8007f04:	604b      	str	r3, [r1, #4]
 8007f06:	e026      	b.n	8007f56 <HAL_RCC_OscConfig+0x126>
 8007f08:	4b72      	ldr	r3, [pc, #456]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f0a:	681b      	ldr	r3, [r3, #0]
 8007f0c:	4a71      	ldr	r2, [pc, #452]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f0e:	f043 0308 	orr.w	r3, r3, #8
 8007f12:	6013      	str	r3, [r2, #0]
 8007f14:	4b6f      	ldr	r3, [pc, #444]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f16:	681b      	ldr	r3, [r3, #0]
 8007f18:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8007f1c:	687b      	ldr	r3, [r7, #4]
 8007f1e:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8007f20:	496c      	ldr	r1, [pc, #432]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f22:	4313      	orrs	r3, r2
 8007f24:	600b      	str	r3, [r1, #0]
 8007f26:	4b6b      	ldr	r3, [pc, #428]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f28:	685b      	ldr	r3, [r3, #4]
 8007f2a:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
 8007f2e:	687b      	ldr	r3, [r7, #4]
 8007f30:	6a1b      	ldr	r3, [r3, #32]
 8007f32:	021b      	lsls	r3, r3, #8
 8007f34:	4967      	ldr	r1, [pc, #412]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f36:	4313      	orrs	r3, r2
 8007f38:	604b      	str	r3, [r1, #4]
 8007f3a:	69bb      	ldr	r3, [r7, #24]
 8007f3c:	2b00      	cmp	r3, #0
 8007f3e:	d10a      	bne.n	8007f56 <HAL_RCC_OscConfig+0x126>
 8007f40:	687b      	ldr	r3, [r7, #4]
 8007f42:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8007f44:	4618      	mov	r0, r3
 8007f46:	f000 fe53 	bl	8008bf0 <RCC_SetFlashLatencyFromMSIRange>
 8007f4a:	4603      	mov	r3, r0
 8007f4c:	2b00      	cmp	r3, #0
 8007f4e:	d002      	beq.n	8007f56 <HAL_RCC_OscConfig+0x126>
 8007f50:	2301      	movs	r3, #1
 8007f52:	f000 bc47 	b.w	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8007f56:	f000 fe0f 	bl	8008b78 <HAL_RCC_GetHCLKFreq>
 8007f5a:	4602      	mov	r2, r0
 8007f5c:	4b5e      	ldr	r3, [pc, #376]	; (80080d8 <HAL_RCC_OscConfig+0x2a8>)
 8007f5e:	601a      	str	r2, [r3, #0]
 8007f60:	4b5e      	ldr	r3, [pc, #376]	; (80080dc <HAL_RCC_OscConfig+0x2ac>)
 8007f62:	681b      	ldr	r3, [r3, #0]
 8007f64:	4618      	mov	r0, r3
 8007f66:	f7ff fb5d 	bl	8007624 <HAL_InitTick>
 8007f6a:	4603      	mov	r3, r0
 8007f6c:	73fb      	strb	r3, [r7, #15]
 8007f6e:	7bfb      	ldrb	r3, [r7, #15]
 8007f70:	2b00      	cmp	r3, #0
 8007f72:	d060      	beq.n	8008036 <HAL_RCC_OscConfig+0x206>
 8007f74:	7bfb      	ldrb	r3, [r7, #15]
 8007f76:	f000 bc35 	b.w	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8007f7a:	687b      	ldr	r3, [r7, #4]
 8007f7c:	69db      	ldr	r3, [r3, #28]
 8007f7e:	2b00      	cmp	r3, #0
 8007f80:	d039      	beq.n	8007ff6 <HAL_RCC_OscConfig+0x1c6>
 8007f82:	4b54      	ldr	r3, [pc, #336]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f84:	681b      	ldr	r3, [r3, #0]
 8007f86:	4a53      	ldr	r2, [pc, #332]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007f88:	f043 0301 	orr.w	r3, r3, #1
 8007f8c:	6013      	str	r3, [r2, #0]
 8007f8e:	f7ff fb97 	bl	80076c0 <HAL_GetTick>
 8007f92:	6138      	str	r0, [r7, #16]
 8007f94:	e00f      	b.n	8007fb6 <HAL_RCC_OscConfig+0x186>
 8007f96:	f7ff fb93 	bl	80076c0 <HAL_GetTick>
 8007f9a:	4602      	mov	r2, r0
 8007f9c:	693b      	ldr	r3, [r7, #16]
 8007f9e:	1ad3      	subs	r3, r2, r3
 8007fa0:	2b02      	cmp	r3, #2
 8007fa2:	d908      	bls.n	8007fb6 <HAL_RCC_OscConfig+0x186>
 8007fa4:	4b4b      	ldr	r3, [pc, #300]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fa6:	681b      	ldr	r3, [r3, #0]
 8007fa8:	f003 0302 	and.w	r3, r3, #2
 8007fac:	2b00      	cmp	r3, #0
 8007fae:	d102      	bne.n	8007fb6 <HAL_RCC_OscConfig+0x186>
 8007fb0:	2303      	movs	r3, #3
 8007fb2:	f000 bc17 	b.w	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8007fb6:	4b47      	ldr	r3, [pc, #284]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fb8:	681b      	ldr	r3, [r3, #0]
 8007fba:	f003 0302 	and.w	r3, r3, #2
 8007fbe:	2b00      	cmp	r3, #0
 8007fc0:	d0e9      	beq.n	8007f96 <HAL_RCC_OscConfig+0x166>
 8007fc2:	4b44      	ldr	r3, [pc, #272]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fc4:	681b      	ldr	r3, [r3, #0]
 8007fc6:	4a43      	ldr	r2, [pc, #268]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fc8:	f043 0308 	orr.w	r3, r3, #8
 8007fcc:	6013      	str	r3, [r2, #0]
 8007fce:	4b41      	ldr	r3, [pc, #260]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fd0:	681b      	ldr	r3, [r3, #0]
 8007fd2:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8007fd6:	687b      	ldr	r3, [r7, #4]
 8007fd8:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8007fda:	493e      	ldr	r1, [pc, #248]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fdc:	4313      	orrs	r3, r2
 8007fde:	600b      	str	r3, [r1, #0]
 8007fe0:	4b3c      	ldr	r3, [pc, #240]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007fe2:	685b      	ldr	r3, [r3, #4]
 8007fe4:	f423 427f 	bic.w	r2, r3, #65280	; 0xff00
 8007fe8:	687b      	ldr	r3, [r7, #4]
 8007fea:	6a1b      	ldr	r3, [r3, #32]
 8007fec:	021b      	lsls	r3, r3, #8
 8007fee:	4939      	ldr	r1, [pc, #228]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ff0:	4313      	orrs	r3, r2
 8007ff2:	604b      	str	r3, [r1, #4]
 8007ff4:	e020      	b.n	8008038 <HAL_RCC_OscConfig+0x208>
 8007ff6:	4b37      	ldr	r3, [pc, #220]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ff8:	681b      	ldr	r3, [r3, #0]
 8007ffa:	4a36      	ldr	r2, [pc, #216]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8007ffc:	f023 0301 	bic.w	r3, r3, #1
 8008000:	6013      	str	r3, [r2, #0]
 8008002:	f7ff fb5d 	bl	80076c0 <HAL_GetTick>
 8008006:	6138      	str	r0, [r7, #16]
 8008008:	e00e      	b.n	8008028 <HAL_RCC_OscConfig+0x1f8>
 800800a:	f7ff fb59 	bl	80076c0 <HAL_GetTick>
 800800e:	4602      	mov	r2, r0
 8008010:	693b      	ldr	r3, [r7, #16]
 8008012:	1ad3      	subs	r3, r2, r3
 8008014:	2b02      	cmp	r3, #2
 8008016:	d907      	bls.n	8008028 <HAL_RCC_OscConfig+0x1f8>
 8008018:	4b2e      	ldr	r3, [pc, #184]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 800801a:	681b      	ldr	r3, [r3, #0]
 800801c:	f003 0302 	and.w	r3, r3, #2
 8008020:	2b00      	cmp	r3, #0
 8008022:	d001      	beq.n	8008028 <HAL_RCC_OscConfig+0x1f8>
 8008024:	2303      	movs	r3, #3
 8008026:	e3dd      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008028:	4b2a      	ldr	r3, [pc, #168]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 800802a:	681b      	ldr	r3, [r3, #0]
 800802c:	f003 0302 	and.w	r3, r3, #2
 8008030:	2b00      	cmp	r3, #0
 8008032:	d1ea      	bne.n	800800a <HAL_RCC_OscConfig+0x1da>
 8008034:	e000      	b.n	8008038 <HAL_RCC_OscConfig+0x208>
 8008036:	bf00      	nop
 8008038:	687b      	ldr	r3, [r7, #4]
 800803a:	681b      	ldr	r3, [r3, #0]
 800803c:	f003 0301 	and.w	r3, r3, #1
 8008040:	2b00      	cmp	r3, #0
 8008042:	d07e      	beq.n	8008142 <HAL_RCC_OscConfig+0x312>
 8008044:	69bb      	ldr	r3, [r7, #24]
 8008046:	2b08      	cmp	r3, #8
 8008048:	d005      	beq.n	8008056 <HAL_RCC_OscConfig+0x226>
 800804a:	69bb      	ldr	r3, [r7, #24]
 800804c:	2b0c      	cmp	r3, #12
 800804e:	d10e      	bne.n	800806e <HAL_RCC_OscConfig+0x23e>
 8008050:	697b      	ldr	r3, [r7, #20]
 8008052:	2b03      	cmp	r3, #3
 8008054:	d10b      	bne.n	800806e <HAL_RCC_OscConfig+0x23e>
 8008056:	4b1f      	ldr	r3, [pc, #124]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8008058:	681b      	ldr	r3, [r3, #0]
 800805a:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800805e:	2b00      	cmp	r3, #0
 8008060:	d06e      	beq.n	8008140 <HAL_RCC_OscConfig+0x310>
 8008062:	687b      	ldr	r3, [r7, #4]
 8008064:	685b      	ldr	r3, [r3, #4]
 8008066:	2b00      	cmp	r3, #0
 8008068:	d16a      	bne.n	8008140 <HAL_RCC_OscConfig+0x310>
 800806a:	2301      	movs	r3, #1
 800806c:	e3ba      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 800806e:	687b      	ldr	r3, [r7, #4]
 8008070:	685b      	ldr	r3, [r3, #4]
 8008072:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8008076:	d106      	bne.n	8008086 <HAL_RCC_OscConfig+0x256>
 8008078:	4b16      	ldr	r3, [pc, #88]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 800807a:	681b      	ldr	r3, [r3, #0]
 800807c:	4a15      	ldr	r2, [pc, #84]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 800807e:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8008082:	6013      	str	r3, [r2, #0]
 8008084:	e01d      	b.n	80080c2 <HAL_RCC_OscConfig+0x292>
 8008086:	687b      	ldr	r3, [r7, #4]
 8008088:	685b      	ldr	r3, [r3, #4]
 800808a:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 800808e:	d10c      	bne.n	80080aa <HAL_RCC_OscConfig+0x27a>
 8008090:	4b10      	ldr	r3, [pc, #64]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8008092:	681b      	ldr	r3, [r3, #0]
 8008094:	4a0f      	ldr	r2, [pc, #60]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 8008096:	f443 2380 	orr.w	r3, r3, #262144	; 0x40000
 800809a:	6013      	str	r3, [r2, #0]
 800809c:	4b0d      	ldr	r3, [pc, #52]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 800809e:	681b      	ldr	r3, [r3, #0]
 80080a0:	4a0c      	ldr	r2, [pc, #48]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 80080a2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80080a6:	6013      	str	r3, [r2, #0]
 80080a8:	e00b      	b.n	80080c2 <HAL_RCC_OscConfig+0x292>
 80080aa:	4b0a      	ldr	r3, [pc, #40]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 80080ac:	681b      	ldr	r3, [r3, #0]
 80080ae:	4a09      	ldr	r2, [pc, #36]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 80080b0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 80080b4:	6013      	str	r3, [r2, #0]
 80080b6:	4b07      	ldr	r3, [pc, #28]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 80080b8:	681b      	ldr	r3, [r3, #0]
 80080ba:	4a06      	ldr	r2, [pc, #24]	; (80080d4 <HAL_RCC_OscConfig+0x2a4>)
 80080bc:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 80080c0:	6013      	str	r3, [r2, #0]
 80080c2:	687b      	ldr	r3, [r7, #4]
 80080c4:	685b      	ldr	r3, [r3, #4]
 80080c6:	2b00      	cmp	r3, #0
 80080c8:	d020      	beq.n	800810c <HAL_RCC_OscConfig+0x2dc>
 80080ca:	f7ff faf9 	bl	80076c0 <HAL_GetTick>
 80080ce:	6138      	str	r0, [r7, #16]
 80080d0:	e015      	b.n	80080fe <HAL_RCC_OscConfig+0x2ce>
 80080d2:	bf00      	nop
 80080d4:	40021000 	.word	0x40021000
 80080d8:	200009ac 	.word	0x200009ac
 80080dc:	200009b0 	.word	0x200009b0
 80080e0:	f7ff faee 	bl	80076c0 <HAL_GetTick>
 80080e4:	4602      	mov	r2, r0
 80080e6:	693b      	ldr	r3, [r7, #16]
 80080e8:	1ad3      	subs	r3, r2, r3
 80080ea:	2b64      	cmp	r3, #100	; 0x64
 80080ec:	d907      	bls.n	80080fe <HAL_RCC_OscConfig+0x2ce>
 80080ee:	4b9f      	ldr	r3, [pc, #636]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80080f0:	681b      	ldr	r3, [r3, #0]
 80080f2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80080f6:	2b00      	cmp	r3, #0
 80080f8:	d101      	bne.n	80080fe <HAL_RCC_OscConfig+0x2ce>
 80080fa:	2303      	movs	r3, #3
 80080fc:	e372      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80080fe:	4b9b      	ldr	r3, [pc, #620]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008100:	681b      	ldr	r3, [r3, #0]
 8008102:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8008106:	2b00      	cmp	r3, #0
 8008108:	d0ea      	beq.n	80080e0 <HAL_RCC_OscConfig+0x2b0>
 800810a:	e01a      	b.n	8008142 <HAL_RCC_OscConfig+0x312>
 800810c:	f7ff fad8 	bl	80076c0 <HAL_GetTick>
 8008110:	6138      	str	r0, [r7, #16]
 8008112:	e00e      	b.n	8008132 <HAL_RCC_OscConfig+0x302>
 8008114:	f7ff fad4 	bl	80076c0 <HAL_GetTick>
 8008118:	4602      	mov	r2, r0
 800811a:	693b      	ldr	r3, [r7, #16]
 800811c:	1ad3      	subs	r3, r2, r3
 800811e:	2b64      	cmp	r3, #100	; 0x64
 8008120:	d907      	bls.n	8008132 <HAL_RCC_OscConfig+0x302>
 8008122:	4b92      	ldr	r3, [pc, #584]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008124:	681b      	ldr	r3, [r3, #0]
 8008126:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800812a:	2b00      	cmp	r3, #0
 800812c:	d001      	beq.n	8008132 <HAL_RCC_OscConfig+0x302>
 800812e:	2303      	movs	r3, #3
 8008130:	e358      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008132:	4b8e      	ldr	r3, [pc, #568]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008134:	681b      	ldr	r3, [r3, #0]
 8008136:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 800813a:	2b00      	cmp	r3, #0
 800813c:	d1ea      	bne.n	8008114 <HAL_RCC_OscConfig+0x2e4>
 800813e:	e000      	b.n	8008142 <HAL_RCC_OscConfig+0x312>
 8008140:	bf00      	nop
 8008142:	687b      	ldr	r3, [r7, #4]
 8008144:	681b      	ldr	r3, [r3, #0]
 8008146:	f003 0302 	and.w	r3, r3, #2
 800814a:	2b00      	cmp	r3, #0
 800814c:	d06c      	beq.n	8008228 <HAL_RCC_OscConfig+0x3f8>
 800814e:	69bb      	ldr	r3, [r7, #24]
 8008150:	2b04      	cmp	r3, #4
 8008152:	d005      	beq.n	8008160 <HAL_RCC_OscConfig+0x330>
 8008154:	69bb      	ldr	r3, [r7, #24]
 8008156:	2b0c      	cmp	r3, #12
 8008158:	d119      	bne.n	800818e <HAL_RCC_OscConfig+0x35e>
 800815a:	697b      	ldr	r3, [r7, #20]
 800815c:	2b02      	cmp	r3, #2
 800815e:	d116      	bne.n	800818e <HAL_RCC_OscConfig+0x35e>
 8008160:	4b82      	ldr	r3, [pc, #520]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008162:	681b      	ldr	r3, [r3, #0]
 8008164:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8008168:	2b00      	cmp	r3, #0
 800816a:	d005      	beq.n	8008178 <HAL_RCC_OscConfig+0x348>
 800816c:	687b      	ldr	r3, [r7, #4]
 800816e:	68db      	ldr	r3, [r3, #12]
 8008170:	2b00      	cmp	r3, #0
 8008172:	d101      	bne.n	8008178 <HAL_RCC_OscConfig+0x348>
 8008174:	2301      	movs	r3, #1
 8008176:	e335      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008178:	4b7c      	ldr	r3, [pc, #496]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800817a:	685b      	ldr	r3, [r3, #4]
 800817c:	f023 42fe 	bic.w	r2, r3, #2130706432	; 0x7f000000
 8008180:	687b      	ldr	r3, [r7, #4]
 8008182:	691b      	ldr	r3, [r3, #16]
 8008184:	061b      	lsls	r3, r3, #24
 8008186:	4979      	ldr	r1, [pc, #484]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008188:	4313      	orrs	r3, r2
 800818a:	604b      	str	r3, [r1, #4]
 800818c:	e04c      	b.n	8008228 <HAL_RCC_OscConfig+0x3f8>
 800818e:	687b      	ldr	r3, [r7, #4]
 8008190:	68db      	ldr	r3, [r3, #12]
 8008192:	2b00      	cmp	r3, #0
 8008194:	d029      	beq.n	80081ea <HAL_RCC_OscConfig+0x3ba>
 8008196:	4b75      	ldr	r3, [pc, #468]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008198:	681b      	ldr	r3, [r3, #0]
 800819a:	4a74      	ldr	r2, [pc, #464]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800819c:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80081a0:	6013      	str	r3, [r2, #0]
 80081a2:	f7ff fa8d 	bl	80076c0 <HAL_GetTick>
 80081a6:	6138      	str	r0, [r7, #16]
 80081a8:	e00e      	b.n	80081c8 <HAL_RCC_OscConfig+0x398>
 80081aa:	f7ff fa89 	bl	80076c0 <HAL_GetTick>
 80081ae:	4602      	mov	r2, r0
 80081b0:	693b      	ldr	r3, [r7, #16]
 80081b2:	1ad3      	subs	r3, r2, r3
 80081b4:	2b02      	cmp	r3, #2
 80081b6:	d907      	bls.n	80081c8 <HAL_RCC_OscConfig+0x398>
 80081b8:	4b6c      	ldr	r3, [pc, #432]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80081ba:	681b      	ldr	r3, [r3, #0]
 80081bc:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80081c0:	2b00      	cmp	r3, #0
 80081c2:	d101      	bne.n	80081c8 <HAL_RCC_OscConfig+0x398>
 80081c4:	2303      	movs	r3, #3
 80081c6:	e30d      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80081c8:	4b68      	ldr	r3, [pc, #416]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80081ca:	681b      	ldr	r3, [r3, #0]
 80081cc:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80081d0:	2b00      	cmp	r3, #0
 80081d2:	d0ea      	beq.n	80081aa <HAL_RCC_OscConfig+0x37a>
 80081d4:	4b65      	ldr	r3, [pc, #404]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80081d6:	685b      	ldr	r3, [r3, #4]
 80081d8:	f023 42fe 	bic.w	r2, r3, #2130706432	; 0x7f000000
 80081dc:	687b      	ldr	r3, [r7, #4]
 80081de:	691b      	ldr	r3, [r3, #16]
 80081e0:	061b      	lsls	r3, r3, #24
 80081e2:	4962      	ldr	r1, [pc, #392]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80081e4:	4313      	orrs	r3, r2
 80081e6:	604b      	str	r3, [r1, #4]
 80081e8:	e01e      	b.n	8008228 <HAL_RCC_OscConfig+0x3f8>
 80081ea:	4b60      	ldr	r3, [pc, #384]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80081ec:	681b      	ldr	r3, [r3, #0]
 80081ee:	4a5f      	ldr	r2, [pc, #380]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80081f0:	f423 7380 	bic.w	r3, r3, #256	; 0x100
 80081f4:	6013      	str	r3, [r2, #0]
 80081f6:	f7ff fa63 	bl	80076c0 <HAL_GetTick>
 80081fa:	6138      	str	r0, [r7, #16]
 80081fc:	e00e      	b.n	800821c <HAL_RCC_OscConfig+0x3ec>
 80081fe:	f7ff fa5f 	bl	80076c0 <HAL_GetTick>
 8008202:	4602      	mov	r2, r0
 8008204:	693b      	ldr	r3, [r7, #16]
 8008206:	1ad3      	subs	r3, r2, r3
 8008208:	2b02      	cmp	r3, #2
 800820a:	d907      	bls.n	800821c <HAL_RCC_OscConfig+0x3ec>
 800820c:	4b57      	ldr	r3, [pc, #348]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800820e:	681b      	ldr	r3, [r3, #0]
 8008210:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8008214:	2b00      	cmp	r3, #0
 8008216:	d001      	beq.n	800821c <HAL_RCC_OscConfig+0x3ec>
 8008218:	2303      	movs	r3, #3
 800821a:	e2e3      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 800821c:	4b53      	ldr	r3, [pc, #332]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800821e:	681b      	ldr	r3, [r3, #0]
 8008220:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8008224:	2b00      	cmp	r3, #0
 8008226:	d1ea      	bne.n	80081fe <HAL_RCC_OscConfig+0x3ce>
 8008228:	687b      	ldr	r3, [r7, #4]
 800822a:	681b      	ldr	r3, [r3, #0]
 800822c:	f003 0308 	and.w	r3, r3, #8
 8008230:	2b00      	cmp	r3, #0
 8008232:	d05f      	beq.n	80082f4 <HAL_RCC_OscConfig+0x4c4>
 8008234:	687b      	ldr	r3, [r7, #4]
 8008236:	695b      	ldr	r3, [r3, #20]
 8008238:	2b00      	cmp	r3, #0
 800823a:	d038      	beq.n	80082ae <HAL_RCC_OscConfig+0x47e>
 800823c:	687b      	ldr	r3, [r7, #4]
 800823e:	699b      	ldr	r3, [r3, #24]
 8008240:	2b00      	cmp	r3, #0
 8008242:	d108      	bne.n	8008256 <HAL_RCC_OscConfig+0x426>
 8008244:	4b49      	ldr	r3, [pc, #292]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008246:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800824a:	4a48      	ldr	r2, [pc, #288]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800824c:	f023 0310 	bic.w	r3, r3, #16
 8008250:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94
 8008254:	e007      	b.n	8008266 <HAL_RCC_OscConfig+0x436>
 8008256:	4b45      	ldr	r3, [pc, #276]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008258:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800825c:	4a43      	ldr	r2, [pc, #268]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800825e:	f043 0310 	orr.w	r3, r3, #16
 8008262:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94
 8008266:	4b41      	ldr	r3, [pc, #260]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008268:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 800826c:	4a3f      	ldr	r2, [pc, #252]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800826e:	f043 0301 	orr.w	r3, r3, #1
 8008272:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94
 8008276:	f7ff fa23 	bl	80076c0 <HAL_GetTick>
 800827a:	6138      	str	r0, [r7, #16]
 800827c:	e00f      	b.n	800829e <HAL_RCC_OscConfig+0x46e>
 800827e:	f7ff fa1f 	bl	80076c0 <HAL_GetTick>
 8008282:	4602      	mov	r2, r0
 8008284:	693b      	ldr	r3, [r7, #16]
 8008286:	1ad3      	subs	r3, r2, r3
 8008288:	2b07      	cmp	r3, #7
 800828a:	d908      	bls.n	800829e <HAL_RCC_OscConfig+0x46e>
 800828c:	4b37      	ldr	r3, [pc, #220]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 800828e:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8008292:	f003 0302 	and.w	r3, r3, #2
 8008296:	2b00      	cmp	r3, #0
 8008298:	d101      	bne.n	800829e <HAL_RCC_OscConfig+0x46e>
 800829a:	2303      	movs	r3, #3
 800829c:	e2a2      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 800829e:	4b33      	ldr	r3, [pc, #204]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80082a0:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80082a4:	f003 0302 	and.w	r3, r3, #2
 80082a8:	2b00      	cmp	r3, #0
 80082aa:	d0e8      	beq.n	800827e <HAL_RCC_OscConfig+0x44e>
 80082ac:	e022      	b.n	80082f4 <HAL_RCC_OscConfig+0x4c4>
 80082ae:	4b2f      	ldr	r3, [pc, #188]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80082b0:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80082b4:	4a2d      	ldr	r2, [pc, #180]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80082b6:	f023 0301 	bic.w	r3, r3, #1
 80082ba:	f8c2 3094 	str.w	r3, [r2, #148]	; 0x94
 80082be:	f7ff f9ff 	bl	80076c0 <HAL_GetTick>
 80082c2:	6138      	str	r0, [r7, #16]
 80082c4:	e00f      	b.n	80082e6 <HAL_RCC_OscConfig+0x4b6>
 80082c6:	f7ff f9fb 	bl	80076c0 <HAL_GetTick>
 80082ca:	4602      	mov	r2, r0
 80082cc:	693b      	ldr	r3, [r7, #16]
 80082ce:	1ad3      	subs	r3, r2, r3
 80082d0:	2b07      	cmp	r3, #7
 80082d2:	d908      	bls.n	80082e6 <HAL_RCC_OscConfig+0x4b6>
 80082d4:	4b25      	ldr	r3, [pc, #148]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80082d6:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80082da:	f003 0302 	and.w	r3, r3, #2
 80082de:	2b00      	cmp	r3, #0
 80082e0:	d001      	beq.n	80082e6 <HAL_RCC_OscConfig+0x4b6>
 80082e2:	2303      	movs	r3, #3
 80082e4:	e27e      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80082e6:	4b21      	ldr	r3, [pc, #132]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 80082e8:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 80082ec:	f003 0302 	and.w	r3, r3, #2
 80082f0:	2b00      	cmp	r3, #0
 80082f2:	d1e8      	bne.n	80082c6 <HAL_RCC_OscConfig+0x496>
 80082f4:	687b      	ldr	r3, [r7, #4]
 80082f6:	681b      	ldr	r3, [r3, #0]
 80082f8:	f003 0304 	and.w	r3, r3, #4
 80082fc:	2b00      	cmp	r3, #0
 80082fe:	f000 8131 	beq.w	8008564 <HAL_RCC_OscConfig+0x734>
 8008302:	2300      	movs	r3, #0
 8008304:	77fb      	strb	r3, [r7, #31]
 8008306:	4b19      	ldr	r3, [pc, #100]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008308:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800830a:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800830e:	2b00      	cmp	r3, #0
 8008310:	d10d      	bne.n	800832e <HAL_RCC_OscConfig+0x4fe>
 8008312:	4b16      	ldr	r3, [pc, #88]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008314:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008316:	4a15      	ldr	r2, [pc, #84]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008318:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800831c:	6593      	str	r3, [r2, #88]	; 0x58
 800831e:	4b13      	ldr	r3, [pc, #76]	; (800836c <HAL_RCC_OscConfig+0x53c>)
 8008320:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008322:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8008326:	60bb      	str	r3, [r7, #8]
 8008328:	68bb      	ldr	r3, [r7, #8]
 800832a:	2301      	movs	r3, #1
 800832c:	77fb      	strb	r3, [r7, #31]
 800832e:	4b10      	ldr	r3, [pc, #64]	; (8008370 <HAL_RCC_OscConfig+0x540>)
 8008330:	681b      	ldr	r3, [r3, #0]
 8008332:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8008336:	2b00      	cmp	r3, #0
 8008338:	d122      	bne.n	8008380 <HAL_RCC_OscConfig+0x550>
 800833a:	4b0d      	ldr	r3, [pc, #52]	; (8008370 <HAL_RCC_OscConfig+0x540>)
 800833c:	681b      	ldr	r3, [r3, #0]
 800833e:	4a0c      	ldr	r2, [pc, #48]	; (8008370 <HAL_RCC_OscConfig+0x540>)
 8008340:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8008344:	6013      	str	r3, [r2, #0]
 8008346:	f7ff f9bb 	bl	80076c0 <HAL_GetTick>
 800834a:	6138      	str	r0, [r7, #16]
 800834c:	e012      	b.n	8008374 <HAL_RCC_OscConfig+0x544>
 800834e:	f7ff f9b7 	bl	80076c0 <HAL_GetTick>
 8008352:	4602      	mov	r2, r0
 8008354:	693b      	ldr	r3, [r7, #16]
 8008356:	1ad3      	subs	r3, r2, r3
 8008358:	2b02      	cmp	r3, #2
 800835a:	d90b      	bls.n	8008374 <HAL_RCC_OscConfig+0x544>
 800835c:	4b04      	ldr	r3, [pc, #16]	; (8008370 <HAL_RCC_OscConfig+0x540>)
 800835e:	681b      	ldr	r3, [r3, #0]
 8008360:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8008364:	2b00      	cmp	r3, #0
 8008366:	d105      	bne.n	8008374 <HAL_RCC_OscConfig+0x544>
 8008368:	2303      	movs	r3, #3
 800836a:	e23b      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 800836c:	40021000 	.word	0x40021000
 8008370:	40007000 	.word	0x40007000
 8008374:	4bb8      	ldr	r3, [pc, #736]	; (8008658 <HAL_RCC_OscConfig+0x828>)
 8008376:	681b      	ldr	r3, [r3, #0]
 8008378:	f403 7380 	and.w	r3, r3, #256	; 0x100
 800837c:	2b00      	cmp	r3, #0
 800837e:	d0e6      	beq.n	800834e <HAL_RCC_OscConfig+0x51e>
 8008380:	687b      	ldr	r3, [r7, #4]
 8008382:	689b      	ldr	r3, [r3, #8]
 8008384:	f003 0301 	and.w	r3, r3, #1
 8008388:	2b00      	cmp	r3, #0
 800838a:	d01f      	beq.n	80083cc <HAL_RCC_OscConfig+0x59c>
 800838c:	687b      	ldr	r3, [r7, #4]
 800838e:	689b      	ldr	r3, [r3, #8]
 8008390:	f003 0304 	and.w	r3, r3, #4
 8008394:	2b00      	cmp	r3, #0
 8008396:	d010      	beq.n	80083ba <HAL_RCC_OscConfig+0x58a>
 8008398:	4bb0      	ldr	r3, [pc, #704]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800839a:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800839e:	4aaf      	ldr	r2, [pc, #700]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083a0:	f043 0304 	orr.w	r3, r3, #4
 80083a4:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 80083a8:	4bac      	ldr	r3, [pc, #688]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083aa:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80083ae:	4aab      	ldr	r2, [pc, #684]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083b0:	f043 0301 	orr.w	r3, r3, #1
 80083b4:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 80083b8:	e018      	b.n	80083ec <HAL_RCC_OscConfig+0x5bc>
 80083ba:	4ba8      	ldr	r3, [pc, #672]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083bc:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80083c0:	4aa6      	ldr	r2, [pc, #664]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083c2:	f043 0301 	orr.w	r3, r3, #1
 80083c6:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 80083ca:	e00f      	b.n	80083ec <HAL_RCC_OscConfig+0x5bc>
 80083cc:	4ba3      	ldr	r3, [pc, #652]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083ce:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80083d2:	4aa2      	ldr	r2, [pc, #648]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083d4:	f023 0301 	bic.w	r3, r3, #1
 80083d8:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 80083dc:	4b9f      	ldr	r3, [pc, #636]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083de:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80083e2:	4a9e      	ldr	r2, [pc, #632]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80083e4:	f023 0304 	bic.w	r3, r3, #4
 80083e8:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 80083ec:	687b      	ldr	r3, [r7, #4]
 80083ee:	689b      	ldr	r3, [r3, #8]
 80083f0:	2b00      	cmp	r3, #0
 80083f2:	d068      	beq.n	80084c6 <HAL_RCC_OscConfig+0x696>
 80083f4:	f7ff f964 	bl	80076c0 <HAL_GetTick>
 80083f8:	6138      	str	r0, [r7, #16]
 80083fa:	e011      	b.n	8008420 <HAL_RCC_OscConfig+0x5f0>
 80083fc:	f7ff f960 	bl	80076c0 <HAL_GetTick>
 8008400:	4602      	mov	r2, r0
 8008402:	693b      	ldr	r3, [r7, #16]
 8008404:	1ad3      	subs	r3, r2, r3
 8008406:	f241 3288 	movw	r2, #5000	; 0x1388
 800840a:	4293      	cmp	r3, r2
 800840c:	d908      	bls.n	8008420 <HAL_RCC_OscConfig+0x5f0>
 800840e:	4b93      	ldr	r3, [pc, #588]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008410:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008414:	f003 0302 	and.w	r3, r3, #2
 8008418:	2b00      	cmp	r3, #0
 800841a:	d101      	bne.n	8008420 <HAL_RCC_OscConfig+0x5f0>
 800841c:	2303      	movs	r3, #3
 800841e:	e1e1      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008420:	4b8e      	ldr	r3, [pc, #568]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008422:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008426:	f003 0302 	and.w	r3, r3, #2
 800842a:	2b00      	cmp	r3, #0
 800842c:	d0e6      	beq.n	80083fc <HAL_RCC_OscConfig+0x5cc>
 800842e:	687b      	ldr	r3, [r7, #4]
 8008430:	689b      	ldr	r3, [r3, #8]
 8008432:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8008436:	2b00      	cmp	r3, #0
 8008438:	d022      	beq.n	8008480 <HAL_RCC_OscConfig+0x650>
 800843a:	4b88      	ldr	r3, [pc, #544]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800843c:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008440:	4a86      	ldr	r2, [pc, #536]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008442:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008446:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 800844a:	e011      	b.n	8008470 <HAL_RCC_OscConfig+0x640>
 800844c:	f7ff f938 	bl	80076c0 <HAL_GetTick>
 8008450:	4602      	mov	r2, r0
 8008452:	693b      	ldr	r3, [r7, #16]
 8008454:	1ad3      	subs	r3, r2, r3
 8008456:	f241 3288 	movw	r2, #5000	; 0x1388
 800845a:	4293      	cmp	r3, r2
 800845c:	d908      	bls.n	8008470 <HAL_RCC_OscConfig+0x640>
 800845e:	4b7f      	ldr	r3, [pc, #508]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008460:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008464:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 8008468:	2b00      	cmp	r3, #0
 800846a:	d101      	bne.n	8008470 <HAL_RCC_OscConfig+0x640>
 800846c:	2303      	movs	r3, #3
 800846e:	e1b9      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008470:	4b7a      	ldr	r3, [pc, #488]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008472:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008476:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800847a:	2b00      	cmp	r3, #0
 800847c:	d0e6      	beq.n	800844c <HAL_RCC_OscConfig+0x61c>
 800847e:	e068      	b.n	8008552 <HAL_RCC_OscConfig+0x722>
 8008480:	4b76      	ldr	r3, [pc, #472]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008482:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008486:	4a75      	ldr	r2, [pc, #468]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008488:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800848c:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 8008490:	e011      	b.n	80084b6 <HAL_RCC_OscConfig+0x686>
 8008492:	f7ff f915 	bl	80076c0 <HAL_GetTick>
 8008496:	4602      	mov	r2, r0
 8008498:	693b      	ldr	r3, [r7, #16]
 800849a:	1ad3      	subs	r3, r2, r3
 800849c:	f241 3288 	movw	r2, #5000	; 0x1388
 80084a0:	4293      	cmp	r3, r2
 80084a2:	d908      	bls.n	80084b6 <HAL_RCC_OscConfig+0x686>
 80084a4:	4b6d      	ldr	r3, [pc, #436]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80084a6:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80084aa:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80084ae:	2b00      	cmp	r3, #0
 80084b0:	d001      	beq.n	80084b6 <HAL_RCC_OscConfig+0x686>
 80084b2:	2303      	movs	r3, #3
 80084b4:	e196      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80084b6:	4b69      	ldr	r3, [pc, #420]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80084b8:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80084bc:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 80084c0:	2b00      	cmp	r3, #0
 80084c2:	d1e6      	bne.n	8008492 <HAL_RCC_OscConfig+0x662>
 80084c4:	e045      	b.n	8008552 <HAL_RCC_OscConfig+0x722>
 80084c6:	f7ff f8fb 	bl	80076c0 <HAL_GetTick>
 80084ca:	6138      	str	r0, [r7, #16]
 80084cc:	e011      	b.n	80084f2 <HAL_RCC_OscConfig+0x6c2>
 80084ce:	f7ff f8f7 	bl	80076c0 <HAL_GetTick>
 80084d2:	4602      	mov	r2, r0
 80084d4:	693b      	ldr	r3, [r7, #16]
 80084d6:	1ad3      	subs	r3, r2, r3
 80084d8:	f241 3288 	movw	r2, #5000	; 0x1388
 80084dc:	4293      	cmp	r3, r2
 80084de:	d908      	bls.n	80084f2 <HAL_RCC_OscConfig+0x6c2>
 80084e0:	4b5e      	ldr	r3, [pc, #376]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80084e2:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80084e6:	f003 0302 	and.w	r3, r3, #2
 80084ea:	2b00      	cmp	r3, #0
 80084ec:	d001      	beq.n	80084f2 <HAL_RCC_OscConfig+0x6c2>
 80084ee:	2303      	movs	r3, #3
 80084f0:	e178      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80084f2:	4b5a      	ldr	r3, [pc, #360]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80084f4:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 80084f8:	f003 0302 	and.w	r3, r3, #2
 80084fc:	2b00      	cmp	r3, #0
 80084fe:	d1e6      	bne.n	80084ce <HAL_RCC_OscConfig+0x69e>
 8008500:	4b56      	ldr	r3, [pc, #344]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008502:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008506:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800850a:	2b00      	cmp	r3, #0
 800850c:	d021      	beq.n	8008552 <HAL_RCC_OscConfig+0x722>
 800850e:	4b53      	ldr	r3, [pc, #332]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008510:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008514:	4a51      	ldr	r2, [pc, #324]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008516:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800851a:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 800851e:	e011      	b.n	8008544 <HAL_RCC_OscConfig+0x714>
 8008520:	f7ff f8ce 	bl	80076c0 <HAL_GetTick>
 8008524:	4602      	mov	r2, r0
 8008526:	693b      	ldr	r3, [r7, #16]
 8008528:	1ad3      	subs	r3, r2, r3
 800852a:	f241 3288 	movw	r2, #5000	; 0x1388
 800852e:	4293      	cmp	r3, r2
 8008530:	d908      	bls.n	8008544 <HAL_RCC_OscConfig+0x714>
 8008532:	4b4a      	ldr	r3, [pc, #296]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008534:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008538:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800853c:	2b00      	cmp	r3, #0
 800853e:	d001      	beq.n	8008544 <HAL_RCC_OscConfig+0x714>
 8008540:	2303      	movs	r3, #3
 8008542:	e14f      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008544:	4b45      	ldr	r3, [pc, #276]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008546:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 800854a:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800854e:	2b00      	cmp	r3, #0
 8008550:	d1e6      	bne.n	8008520 <HAL_RCC_OscConfig+0x6f0>
 8008552:	7ffb      	ldrb	r3, [r7, #31]
 8008554:	2b01      	cmp	r3, #1
 8008556:	d105      	bne.n	8008564 <HAL_RCC_OscConfig+0x734>
 8008558:	4b40      	ldr	r3, [pc, #256]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800855a:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800855c:	4a3f      	ldr	r2, [pc, #252]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800855e:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8008562:	6593      	str	r3, [r2, #88]	; 0x58
 8008564:	687b      	ldr	r3, [r7, #4]
 8008566:	681b      	ldr	r3, [r3, #0]
 8008568:	f003 0320 	and.w	r3, r3, #32
 800856c:	2b00      	cmp	r3, #0
 800856e:	d04a      	beq.n	8008606 <HAL_RCC_OscConfig+0x7d6>
 8008570:	687b      	ldr	r3, [r7, #4]
 8008572:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8008574:	2b00      	cmp	r3, #0
 8008576:	d023      	beq.n	80085c0 <HAL_RCC_OscConfig+0x790>
 8008578:	4b38      	ldr	r3, [pc, #224]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800857a:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 800857e:	4a37      	ldr	r2, [pc, #220]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008580:	f043 0301 	orr.w	r3, r3, #1
 8008584:	f8c2 3098 	str.w	r3, [r2, #152]	; 0x98
 8008588:	f7ff f89a 	bl	80076c0 <HAL_GetTick>
 800858c:	6138      	str	r0, [r7, #16]
 800858e:	e00f      	b.n	80085b0 <HAL_RCC_OscConfig+0x780>
 8008590:	f7ff f896 	bl	80076c0 <HAL_GetTick>
 8008594:	4602      	mov	r2, r0
 8008596:	693b      	ldr	r3, [r7, #16]
 8008598:	1ad3      	subs	r3, r2, r3
 800859a:	2b02      	cmp	r3, #2
 800859c:	d908      	bls.n	80085b0 <HAL_RCC_OscConfig+0x780>
 800859e:	4b2f      	ldr	r3, [pc, #188]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80085a0:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 80085a4:	f003 0302 	and.w	r3, r3, #2
 80085a8:	2b00      	cmp	r3, #0
 80085aa:	d101      	bne.n	80085b0 <HAL_RCC_OscConfig+0x780>
 80085ac:	2303      	movs	r3, #3
 80085ae:	e119      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80085b0:	4b2a      	ldr	r3, [pc, #168]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80085b2:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 80085b6:	f003 0302 	and.w	r3, r3, #2
 80085ba:	2b00      	cmp	r3, #0
 80085bc:	d0e8      	beq.n	8008590 <HAL_RCC_OscConfig+0x760>
 80085be:	e022      	b.n	8008606 <HAL_RCC_OscConfig+0x7d6>
 80085c0:	4b26      	ldr	r3, [pc, #152]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80085c2:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 80085c6:	4a25      	ldr	r2, [pc, #148]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80085c8:	f023 0301 	bic.w	r3, r3, #1
 80085cc:	f8c2 3098 	str.w	r3, [r2, #152]	; 0x98
 80085d0:	f7ff f876 	bl	80076c0 <HAL_GetTick>
 80085d4:	6138      	str	r0, [r7, #16]
 80085d6:	e00f      	b.n	80085f8 <HAL_RCC_OscConfig+0x7c8>
 80085d8:	f7ff f872 	bl	80076c0 <HAL_GetTick>
 80085dc:	4602      	mov	r2, r0
 80085de:	693b      	ldr	r3, [r7, #16]
 80085e0:	1ad3      	subs	r3, r2, r3
 80085e2:	2b02      	cmp	r3, #2
 80085e4:	d908      	bls.n	80085f8 <HAL_RCC_OscConfig+0x7c8>
 80085e6:	4b1d      	ldr	r3, [pc, #116]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80085e8:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 80085ec:	f003 0302 	and.w	r3, r3, #2
 80085f0:	2b00      	cmp	r3, #0
 80085f2:	d001      	beq.n	80085f8 <HAL_RCC_OscConfig+0x7c8>
 80085f4:	2303      	movs	r3, #3
 80085f6:	e0f5      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80085f8:	4b18      	ldr	r3, [pc, #96]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 80085fa:	f8d3 3098 	ldr.w	r3, [r3, #152]	; 0x98
 80085fe:	f003 0302 	and.w	r3, r3, #2
 8008602:	2b00      	cmp	r3, #0
 8008604:	d1e8      	bne.n	80085d8 <HAL_RCC_OscConfig+0x7a8>
 8008606:	687b      	ldr	r3, [r7, #4]
 8008608:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800860a:	2b00      	cmp	r3, #0
 800860c:	f000 80e9 	beq.w	80087e2 <HAL_RCC_OscConfig+0x9b2>
 8008610:	4b12      	ldr	r3, [pc, #72]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008612:	689b      	ldr	r3, [r3, #8]
 8008614:	f003 030c 	and.w	r3, r3, #12
 8008618:	2b0c      	cmp	r3, #12
 800861a:	f000 80a3 	beq.w	8008764 <HAL_RCC_OscConfig+0x934>
 800861e:	687b      	ldr	r3, [r7, #4]
 8008620:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8008622:	2b02      	cmp	r3, #2
 8008624:	d16a      	bne.n	80086fc <HAL_RCC_OscConfig+0x8cc>
 8008626:	4b0d      	ldr	r3, [pc, #52]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 8008628:	681b      	ldr	r3, [r3, #0]
 800862a:	4a0c      	ldr	r2, [pc, #48]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800862c:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8008630:	6013      	str	r3, [r2, #0]
 8008632:	f7ff f845 	bl	80076c0 <HAL_GetTick>
 8008636:	6138      	str	r0, [r7, #16]
 8008638:	e012      	b.n	8008660 <HAL_RCC_OscConfig+0x830>
 800863a:	f7ff f841 	bl	80076c0 <HAL_GetTick>
 800863e:	4602      	mov	r2, r0
 8008640:	693b      	ldr	r3, [r7, #16]
 8008642:	1ad3      	subs	r3, r2, r3
 8008644:	2b02      	cmp	r3, #2
 8008646:	d90b      	bls.n	8008660 <HAL_RCC_OscConfig+0x830>
 8008648:	4b04      	ldr	r3, [pc, #16]	; (800865c <HAL_RCC_OscConfig+0x82c>)
 800864a:	681b      	ldr	r3, [r3, #0]
 800864c:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8008650:	2b00      	cmp	r3, #0
 8008652:	d005      	beq.n	8008660 <HAL_RCC_OscConfig+0x830>
 8008654:	2303      	movs	r3, #3
 8008656:	e0c5      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008658:	40007000 	.word	0x40007000
 800865c:	40021000 	.word	0x40021000
 8008660:	4b62      	ldr	r3, [pc, #392]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008662:	681b      	ldr	r3, [r3, #0]
 8008664:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 8008668:	2b00      	cmp	r3, #0
 800866a:	d1e6      	bne.n	800863a <HAL_RCC_OscConfig+0x80a>
 800866c:	4b5f      	ldr	r3, [pc, #380]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 800866e:	68da      	ldr	r2, [r3, #12]
 8008670:	4b5f      	ldr	r3, [pc, #380]	; (80087f0 <HAL_RCC_OscConfig+0x9c0>)
 8008672:	4013      	ands	r3, r2
 8008674:	687a      	ldr	r2, [r7, #4]
 8008676:	6b11      	ldr	r1, [r2, #48]	; 0x30
 8008678:	687a      	ldr	r2, [r7, #4]
 800867a:	6b52      	ldr	r2, [r2, #52]	; 0x34
 800867c:	3a01      	subs	r2, #1
 800867e:	0112      	lsls	r2, r2, #4
 8008680:	4311      	orrs	r1, r2
 8008682:	687a      	ldr	r2, [r7, #4]
 8008684:	6b92      	ldr	r2, [r2, #56]	; 0x38
 8008686:	0212      	lsls	r2, r2, #8
 8008688:	4311      	orrs	r1, r2
 800868a:	687a      	ldr	r2, [r7, #4]
 800868c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 800868e:	0852      	lsrs	r2, r2, #1
 8008690:	3a01      	subs	r2, #1
 8008692:	0552      	lsls	r2, r2, #21
 8008694:	4311      	orrs	r1, r2
 8008696:	687a      	ldr	r2, [r7, #4]
 8008698:	6c52      	ldr	r2, [r2, #68]	; 0x44
 800869a:	0852      	lsrs	r2, r2, #1
 800869c:	3a01      	subs	r2, #1
 800869e:	0652      	lsls	r2, r2, #25
 80086a0:	4311      	orrs	r1, r2
 80086a2:	687a      	ldr	r2, [r7, #4]
 80086a4:	6bd2      	ldr	r2, [r2, #60]	; 0x3c
 80086a6:	06d2      	lsls	r2, r2, #27
 80086a8:	430a      	orrs	r2, r1
 80086aa:	4950      	ldr	r1, [pc, #320]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086ac:	4313      	orrs	r3, r2
 80086ae:	60cb      	str	r3, [r1, #12]
 80086b0:	4b4e      	ldr	r3, [pc, #312]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086b2:	681b      	ldr	r3, [r3, #0]
 80086b4:	4a4d      	ldr	r2, [pc, #308]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086b6:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80086ba:	6013      	str	r3, [r2, #0]
 80086bc:	4b4b      	ldr	r3, [pc, #300]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086be:	68db      	ldr	r3, [r3, #12]
 80086c0:	4a4a      	ldr	r2, [pc, #296]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086c2:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80086c6:	60d3      	str	r3, [r2, #12]
 80086c8:	f7fe fffa 	bl	80076c0 <HAL_GetTick>
 80086cc:	6138      	str	r0, [r7, #16]
 80086ce:	e00e      	b.n	80086ee <HAL_RCC_OscConfig+0x8be>
 80086d0:	f7fe fff6 	bl	80076c0 <HAL_GetTick>
 80086d4:	4602      	mov	r2, r0
 80086d6:	693b      	ldr	r3, [r7, #16]
 80086d8:	1ad3      	subs	r3, r2, r3
 80086da:	2b02      	cmp	r3, #2
 80086dc:	d907      	bls.n	80086ee <HAL_RCC_OscConfig+0x8be>
 80086de:	4b43      	ldr	r3, [pc, #268]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086e0:	681b      	ldr	r3, [r3, #0]
 80086e2:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80086e6:	2b00      	cmp	r3, #0
 80086e8:	d101      	bne.n	80086ee <HAL_RCC_OscConfig+0x8be>
 80086ea:	2303      	movs	r3, #3
 80086ec:	e07a      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80086ee:	4b3f      	ldr	r3, [pc, #252]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086f0:	681b      	ldr	r3, [r3, #0]
 80086f2:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80086f6:	2b00      	cmp	r3, #0
 80086f8:	d0ea      	beq.n	80086d0 <HAL_RCC_OscConfig+0x8a0>
 80086fa:	e072      	b.n	80087e2 <HAL_RCC_OscConfig+0x9b2>
 80086fc:	4b3b      	ldr	r3, [pc, #236]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 80086fe:	681b      	ldr	r3, [r3, #0]
 8008700:	4a3a      	ldr	r2, [pc, #232]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008702:	f023 7380 	bic.w	r3, r3, #16777216	; 0x1000000
 8008706:	6013      	str	r3, [r2, #0]
 8008708:	4b38      	ldr	r3, [pc, #224]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 800870a:	681b      	ldr	r3, [r3, #0]
 800870c:	f003 5320 	and.w	r3, r3, #671088640	; 0x28000000
 8008710:	2b00      	cmp	r3, #0
 8008712:	d105      	bne.n	8008720 <HAL_RCC_OscConfig+0x8f0>
 8008714:	4b35      	ldr	r3, [pc, #212]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008716:	68db      	ldr	r3, [r3, #12]
 8008718:	4a34      	ldr	r2, [pc, #208]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 800871a:	f023 0303 	bic.w	r3, r3, #3
 800871e:	60d3      	str	r3, [r2, #12]
 8008720:	4b32      	ldr	r3, [pc, #200]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008722:	68db      	ldr	r3, [r3, #12]
 8008724:	4a31      	ldr	r2, [pc, #196]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008726:	f023 7388 	bic.w	r3, r3, #17825792	; 0x1100000
 800872a:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800872e:	60d3      	str	r3, [r2, #12]
 8008730:	f7fe ffc6 	bl	80076c0 <HAL_GetTick>
 8008734:	6138      	str	r0, [r7, #16]
 8008736:	e00e      	b.n	8008756 <HAL_RCC_OscConfig+0x926>
 8008738:	f7fe ffc2 	bl	80076c0 <HAL_GetTick>
 800873c:	4602      	mov	r2, r0
 800873e:	693b      	ldr	r3, [r7, #16]
 8008740:	1ad3      	subs	r3, r2, r3
 8008742:	2b02      	cmp	r3, #2
 8008744:	d907      	bls.n	8008756 <HAL_RCC_OscConfig+0x926>
 8008746:	4b29      	ldr	r3, [pc, #164]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008748:	681b      	ldr	r3, [r3, #0]
 800874a:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800874e:	2b00      	cmp	r3, #0
 8008750:	d001      	beq.n	8008756 <HAL_RCC_OscConfig+0x926>
 8008752:	2303      	movs	r3, #3
 8008754:	e046      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008756:	4b25      	ldr	r3, [pc, #148]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008758:	681b      	ldr	r3, [r3, #0]
 800875a:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800875e:	2b00      	cmp	r3, #0
 8008760:	d1ea      	bne.n	8008738 <HAL_RCC_OscConfig+0x908>
 8008762:	e03e      	b.n	80087e2 <HAL_RCC_OscConfig+0x9b2>
 8008764:	687b      	ldr	r3, [r7, #4]
 8008766:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8008768:	2b01      	cmp	r3, #1
 800876a:	d101      	bne.n	8008770 <HAL_RCC_OscConfig+0x940>
 800876c:	2301      	movs	r3, #1
 800876e:	e039      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 8008770:	4b1e      	ldr	r3, [pc, #120]	; (80087ec <HAL_RCC_OscConfig+0x9bc>)
 8008772:	68db      	ldr	r3, [r3, #12]
 8008774:	617b      	str	r3, [r7, #20]
 8008776:	697b      	ldr	r3, [r7, #20]
 8008778:	f003 0203 	and.w	r2, r3, #3
 800877c:	687b      	ldr	r3, [r7, #4]
 800877e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8008780:	429a      	cmp	r2, r3
 8008782:	d12c      	bne.n	80087de <HAL_RCC_OscConfig+0x9ae>
 8008784:	697b      	ldr	r3, [r7, #20]
 8008786:	f003 02f0 	and.w	r2, r3, #240	; 0xf0
 800878a:	687b      	ldr	r3, [r7, #4]
 800878c:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800878e:	3b01      	subs	r3, #1
 8008790:	011b      	lsls	r3, r3, #4
 8008792:	429a      	cmp	r2, r3
 8008794:	d123      	bne.n	80087de <HAL_RCC_OscConfig+0x9ae>
 8008796:	697b      	ldr	r3, [r7, #20]
 8008798:	f403 42fe 	and.w	r2, r3, #32512	; 0x7f00
 800879c:	687b      	ldr	r3, [r7, #4]
 800879e:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 80087a0:	021b      	lsls	r3, r3, #8
 80087a2:	429a      	cmp	r2, r3
 80087a4:	d11b      	bne.n	80087de <HAL_RCC_OscConfig+0x9ae>
 80087a6:	697b      	ldr	r3, [r7, #20]
 80087a8:	f003 4278 	and.w	r2, r3, #4160749568	; 0xf8000000
 80087ac:	687b      	ldr	r3, [r7, #4]
 80087ae:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 80087b0:	06db      	lsls	r3, r3, #27
 80087b2:	429a      	cmp	r2, r3
 80087b4:	d113      	bne.n	80087de <HAL_RCC_OscConfig+0x9ae>
 80087b6:	697b      	ldr	r3, [r7, #20]
 80087b8:	f403 02c0 	and.w	r2, r3, #6291456	; 0x600000
 80087bc:	687b      	ldr	r3, [r7, #4]
 80087be:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80087c0:	085b      	lsrs	r3, r3, #1
 80087c2:	3b01      	subs	r3, #1
 80087c4:	055b      	lsls	r3, r3, #21
 80087c6:	429a      	cmp	r2, r3
 80087c8:	d109      	bne.n	80087de <HAL_RCC_OscConfig+0x9ae>
 80087ca:	697b      	ldr	r3, [r7, #20]
 80087cc:	f003 62c0 	and.w	r2, r3, #100663296	; 0x6000000
 80087d0:	687b      	ldr	r3, [r7, #4]
 80087d2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80087d4:	085b      	lsrs	r3, r3, #1
 80087d6:	3b01      	subs	r3, #1
 80087d8:	065b      	lsls	r3, r3, #25
 80087da:	429a      	cmp	r2, r3
 80087dc:	d001      	beq.n	80087e2 <HAL_RCC_OscConfig+0x9b2>
 80087de:	2301      	movs	r3, #1
 80087e0:	e000      	b.n	80087e4 <HAL_RCC_OscConfig+0x9b4>
 80087e2:	2300      	movs	r3, #0
 80087e4:	4618      	mov	r0, r3
 80087e6:	3720      	adds	r7, #32
 80087e8:	46bd      	mov	sp, r7
 80087ea:	bd80      	pop	{r7, pc}
 80087ec:	40021000 	.word	0x40021000
 80087f0:	019f800c 	.word	0x019f800c

080087f4 <HAL_RCC_ClockConfig>:
 80087f4:	b580      	push	{r7, lr}
 80087f6:	b086      	sub	sp, #24
 80087f8:	af00      	add	r7, sp, #0
 80087fa:	6078      	str	r0, [r7, #4]
 80087fc:	6039      	str	r1, [r7, #0]
 80087fe:	2300      	movs	r3, #0
 8008800:	617b      	str	r3, [r7, #20]
 8008802:	687b      	ldr	r3, [r7, #4]
 8008804:	2b00      	cmp	r3, #0
 8008806:	d101      	bne.n	800880c <HAL_RCC_ClockConfig+0x18>
 8008808:	2301      	movs	r3, #1
 800880a:	e10d      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 800880c:	4b88      	ldr	r3, [pc, #544]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 800880e:	681b      	ldr	r3, [r3, #0]
 8008810:	f003 030f 	and.w	r3, r3, #15
 8008814:	683a      	ldr	r2, [r7, #0]
 8008816:	429a      	cmp	r2, r3
 8008818:	d910      	bls.n	800883c <HAL_RCC_ClockConfig+0x48>
 800881a:	4b85      	ldr	r3, [pc, #532]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 800881c:	681b      	ldr	r3, [r3, #0]
 800881e:	f023 020f 	bic.w	r2, r3, #15
 8008822:	4983      	ldr	r1, [pc, #524]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 8008824:	683b      	ldr	r3, [r7, #0]
 8008826:	4313      	orrs	r3, r2
 8008828:	600b      	str	r3, [r1, #0]
 800882a:	4b81      	ldr	r3, [pc, #516]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 800882c:	681b      	ldr	r3, [r3, #0]
 800882e:	f003 030f 	and.w	r3, r3, #15
 8008832:	683a      	ldr	r2, [r7, #0]
 8008834:	429a      	cmp	r2, r3
 8008836:	d001      	beq.n	800883c <HAL_RCC_ClockConfig+0x48>
 8008838:	2301      	movs	r3, #1
 800883a:	e0f5      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 800883c:	687b      	ldr	r3, [r7, #4]
 800883e:	681b      	ldr	r3, [r3, #0]
 8008840:	f003 0301 	and.w	r3, r3, #1
 8008844:	2b00      	cmp	r3, #0
 8008846:	f000 8094 	beq.w	8008972 <HAL_RCC_ClockConfig+0x17e>
 800884a:	687b      	ldr	r3, [r7, #4]
 800884c:	685b      	ldr	r3, [r3, #4]
 800884e:	2b03      	cmp	r3, #3
 8008850:	d134      	bne.n	80088bc <HAL_RCC_ClockConfig+0xc8>
 8008852:	4b78      	ldr	r3, [pc, #480]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008854:	681b      	ldr	r3, [r3, #0]
 8008856:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800885a:	2b00      	cmp	r3, #0
 800885c:	d101      	bne.n	8008862 <HAL_RCC_ClockConfig+0x6e>
 800885e:	2301      	movs	r3, #1
 8008860:	e0e2      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 8008862:	f000 fa29 	bl	8008cb8 <RCC_GetSysClockFreqFromPLLSource>
 8008866:	6138      	str	r0, [r7, #16]
 8008868:	693b      	ldr	r3, [r7, #16]
 800886a:	4a73      	ldr	r2, [pc, #460]	; (8008a38 <HAL_RCC_ClockConfig+0x244>)
 800886c:	4293      	cmp	r3, r2
 800886e:	d956      	bls.n	800891e <HAL_RCC_ClockConfig+0x12a>
 8008870:	4b70      	ldr	r3, [pc, #448]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008872:	689b      	ldr	r3, [r3, #8]
 8008874:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8008878:	2b00      	cmp	r3, #0
 800887a:	d10a      	bne.n	8008892 <HAL_RCC_ClockConfig+0x9e>
 800887c:	4b6d      	ldr	r3, [pc, #436]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800887e:	689b      	ldr	r3, [r3, #8]
 8008880:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8008884:	4a6b      	ldr	r2, [pc, #428]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008886:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800888a:	6093      	str	r3, [r2, #8]
 800888c:	2380      	movs	r3, #128	; 0x80
 800888e:	617b      	str	r3, [r7, #20]
 8008890:	e045      	b.n	800891e <HAL_RCC_ClockConfig+0x12a>
 8008892:	687b      	ldr	r3, [r7, #4]
 8008894:	681b      	ldr	r3, [r3, #0]
 8008896:	f003 0302 	and.w	r3, r3, #2
 800889a:	2b00      	cmp	r3, #0
 800889c:	d03f      	beq.n	800891e <HAL_RCC_ClockConfig+0x12a>
 800889e:	687b      	ldr	r3, [r7, #4]
 80088a0:	689b      	ldr	r3, [r3, #8]
 80088a2:	2b00      	cmp	r3, #0
 80088a4:	d13b      	bne.n	800891e <HAL_RCC_ClockConfig+0x12a>
 80088a6:	4b63      	ldr	r3, [pc, #396]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80088a8:	689b      	ldr	r3, [r3, #8]
 80088aa:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80088ae:	4a61      	ldr	r2, [pc, #388]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80088b0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80088b4:	6093      	str	r3, [r2, #8]
 80088b6:	2380      	movs	r3, #128	; 0x80
 80088b8:	617b      	str	r3, [r7, #20]
 80088ba:	e030      	b.n	800891e <HAL_RCC_ClockConfig+0x12a>
 80088bc:	687b      	ldr	r3, [r7, #4]
 80088be:	685b      	ldr	r3, [r3, #4]
 80088c0:	2b02      	cmp	r3, #2
 80088c2:	d107      	bne.n	80088d4 <HAL_RCC_ClockConfig+0xe0>
 80088c4:	4b5b      	ldr	r3, [pc, #364]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80088c6:	681b      	ldr	r3, [r3, #0]
 80088c8:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80088cc:	2b00      	cmp	r3, #0
 80088ce:	d115      	bne.n	80088fc <HAL_RCC_ClockConfig+0x108>
 80088d0:	2301      	movs	r3, #1
 80088d2:	e0a9      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 80088d4:	687b      	ldr	r3, [r7, #4]
 80088d6:	685b      	ldr	r3, [r3, #4]
 80088d8:	2b00      	cmp	r3, #0
 80088da:	d107      	bne.n	80088ec <HAL_RCC_ClockConfig+0xf8>
 80088dc:	4b55      	ldr	r3, [pc, #340]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80088de:	681b      	ldr	r3, [r3, #0]
 80088e0:	f003 0302 	and.w	r3, r3, #2
 80088e4:	2b00      	cmp	r3, #0
 80088e6:	d109      	bne.n	80088fc <HAL_RCC_ClockConfig+0x108>
 80088e8:	2301      	movs	r3, #1
 80088ea:	e09d      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 80088ec:	4b51      	ldr	r3, [pc, #324]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80088ee:	681b      	ldr	r3, [r3, #0]
 80088f0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80088f4:	2b00      	cmp	r3, #0
 80088f6:	d101      	bne.n	80088fc <HAL_RCC_ClockConfig+0x108>
 80088f8:	2301      	movs	r3, #1
 80088fa:	e095      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 80088fc:	f000 f8a2 	bl	8008a44 <HAL_RCC_GetSysClockFreq>
 8008900:	6138      	str	r0, [r7, #16]
 8008902:	693b      	ldr	r3, [r7, #16]
 8008904:	4a4c      	ldr	r2, [pc, #304]	; (8008a38 <HAL_RCC_ClockConfig+0x244>)
 8008906:	4293      	cmp	r3, r2
 8008908:	d909      	bls.n	800891e <HAL_RCC_ClockConfig+0x12a>
 800890a:	4b4a      	ldr	r3, [pc, #296]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800890c:	689b      	ldr	r3, [r3, #8]
 800890e:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 8008912:	4a48      	ldr	r2, [pc, #288]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008914:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8008918:	6093      	str	r3, [r2, #8]
 800891a:	2380      	movs	r3, #128	; 0x80
 800891c:	617b      	str	r3, [r7, #20]
 800891e:	4b45      	ldr	r3, [pc, #276]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008920:	689b      	ldr	r3, [r3, #8]
 8008922:	f023 0203 	bic.w	r2, r3, #3
 8008926:	687b      	ldr	r3, [r7, #4]
 8008928:	685b      	ldr	r3, [r3, #4]
 800892a:	4942      	ldr	r1, [pc, #264]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800892c:	4313      	orrs	r3, r2
 800892e:	608b      	str	r3, [r1, #8]
 8008930:	f7fe fec6 	bl	80076c0 <HAL_GetTick>
 8008934:	60f8      	str	r0, [r7, #12]
 8008936:	e013      	b.n	8008960 <HAL_RCC_ClockConfig+0x16c>
 8008938:	f7fe fec2 	bl	80076c0 <HAL_GetTick>
 800893c:	4602      	mov	r2, r0
 800893e:	68fb      	ldr	r3, [r7, #12]
 8008940:	1ad3      	subs	r3, r2, r3
 8008942:	f241 3288 	movw	r2, #5000	; 0x1388
 8008946:	4293      	cmp	r3, r2
 8008948:	d90a      	bls.n	8008960 <HAL_RCC_ClockConfig+0x16c>
 800894a:	4b3a      	ldr	r3, [pc, #232]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800894c:	689b      	ldr	r3, [r3, #8]
 800894e:	f003 020c 	and.w	r2, r3, #12
 8008952:	687b      	ldr	r3, [r7, #4]
 8008954:	685b      	ldr	r3, [r3, #4]
 8008956:	009b      	lsls	r3, r3, #2
 8008958:	429a      	cmp	r2, r3
 800895a:	d001      	beq.n	8008960 <HAL_RCC_ClockConfig+0x16c>
 800895c:	2303      	movs	r3, #3
 800895e:	e063      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 8008960:	4b34      	ldr	r3, [pc, #208]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008962:	689b      	ldr	r3, [r3, #8]
 8008964:	f003 020c 	and.w	r2, r3, #12
 8008968:	687b      	ldr	r3, [r7, #4]
 800896a:	685b      	ldr	r3, [r3, #4]
 800896c:	009b      	lsls	r3, r3, #2
 800896e:	429a      	cmp	r2, r3
 8008970:	d1e2      	bne.n	8008938 <HAL_RCC_ClockConfig+0x144>
 8008972:	687b      	ldr	r3, [r7, #4]
 8008974:	681b      	ldr	r3, [r3, #0]
 8008976:	f003 0302 	and.w	r3, r3, #2
 800897a:	2b00      	cmp	r3, #0
 800897c:	d009      	beq.n	8008992 <HAL_RCC_ClockConfig+0x19e>
 800897e:	4b2d      	ldr	r3, [pc, #180]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008980:	689b      	ldr	r3, [r3, #8]
 8008982:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 8008986:	687b      	ldr	r3, [r7, #4]
 8008988:	689b      	ldr	r3, [r3, #8]
 800898a:	492a      	ldr	r1, [pc, #168]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800898c:	4313      	orrs	r3, r2
 800898e:	608b      	str	r3, [r1, #8]
 8008990:	e008      	b.n	80089a4 <HAL_RCC_ClockConfig+0x1b0>
 8008992:	697b      	ldr	r3, [r7, #20]
 8008994:	2b80      	cmp	r3, #128	; 0x80
 8008996:	d105      	bne.n	80089a4 <HAL_RCC_ClockConfig+0x1b0>
 8008998:	4b26      	ldr	r3, [pc, #152]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800899a:	689b      	ldr	r3, [r3, #8]
 800899c:	4a25      	ldr	r2, [pc, #148]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 800899e:	f023 03f0 	bic.w	r3, r3, #240	; 0xf0
 80089a2:	6093      	str	r3, [r2, #8]
 80089a4:	4b22      	ldr	r3, [pc, #136]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 80089a6:	681b      	ldr	r3, [r3, #0]
 80089a8:	f003 030f 	and.w	r3, r3, #15
 80089ac:	683a      	ldr	r2, [r7, #0]
 80089ae:	429a      	cmp	r2, r3
 80089b0:	d210      	bcs.n	80089d4 <HAL_RCC_ClockConfig+0x1e0>
 80089b2:	4b1f      	ldr	r3, [pc, #124]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 80089b4:	681b      	ldr	r3, [r3, #0]
 80089b6:	f023 020f 	bic.w	r2, r3, #15
 80089ba:	491d      	ldr	r1, [pc, #116]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 80089bc:	683b      	ldr	r3, [r7, #0]
 80089be:	4313      	orrs	r3, r2
 80089c0:	600b      	str	r3, [r1, #0]
 80089c2:	4b1b      	ldr	r3, [pc, #108]	; (8008a30 <HAL_RCC_ClockConfig+0x23c>)
 80089c4:	681b      	ldr	r3, [r3, #0]
 80089c6:	f003 030f 	and.w	r3, r3, #15
 80089ca:	683a      	ldr	r2, [r7, #0]
 80089cc:	429a      	cmp	r2, r3
 80089ce:	d001      	beq.n	80089d4 <HAL_RCC_ClockConfig+0x1e0>
 80089d0:	2301      	movs	r3, #1
 80089d2:	e029      	b.n	8008a28 <HAL_RCC_ClockConfig+0x234>
 80089d4:	687b      	ldr	r3, [r7, #4]
 80089d6:	681b      	ldr	r3, [r3, #0]
 80089d8:	f003 0304 	and.w	r3, r3, #4
 80089dc:	2b00      	cmp	r3, #0
 80089de:	d008      	beq.n	80089f2 <HAL_RCC_ClockConfig+0x1fe>
 80089e0:	4b14      	ldr	r3, [pc, #80]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80089e2:	689b      	ldr	r3, [r3, #8]
 80089e4:	f423 62e0 	bic.w	r2, r3, #1792	; 0x700
 80089e8:	687b      	ldr	r3, [r7, #4]
 80089ea:	68db      	ldr	r3, [r3, #12]
 80089ec:	4911      	ldr	r1, [pc, #68]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 80089ee:	4313      	orrs	r3, r2
 80089f0:	608b      	str	r3, [r1, #8]
 80089f2:	687b      	ldr	r3, [r7, #4]
 80089f4:	681b      	ldr	r3, [r3, #0]
 80089f6:	f003 0308 	and.w	r3, r3, #8
 80089fa:	2b00      	cmp	r3, #0
 80089fc:	d009      	beq.n	8008a12 <HAL_RCC_ClockConfig+0x21e>
 80089fe:	4b0d      	ldr	r3, [pc, #52]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008a00:	689b      	ldr	r3, [r3, #8]
 8008a02:	f423 5260 	bic.w	r2, r3, #14336	; 0x3800
 8008a06:	687b      	ldr	r3, [r7, #4]
 8008a08:	691b      	ldr	r3, [r3, #16]
 8008a0a:	00db      	lsls	r3, r3, #3
 8008a0c:	4909      	ldr	r1, [pc, #36]	; (8008a34 <HAL_RCC_ClockConfig+0x240>)
 8008a0e:	4313      	orrs	r3, r2
 8008a10:	608b      	str	r3, [r1, #8]
 8008a12:	f000 f8b1 	bl	8008b78 <HAL_RCC_GetHCLKFreq>
 8008a16:	4602      	mov	r2, r0
 8008a18:	4b08      	ldr	r3, [pc, #32]	; (8008a3c <HAL_RCC_ClockConfig+0x248>)
 8008a1a:	601a      	str	r2, [r3, #0]
 8008a1c:	4b08      	ldr	r3, [pc, #32]	; (8008a40 <HAL_RCC_ClockConfig+0x24c>)
 8008a1e:	681b      	ldr	r3, [r3, #0]
 8008a20:	4618      	mov	r0, r3
 8008a22:	f7fe fdff 	bl	8007624 <HAL_InitTick>
 8008a26:	4603      	mov	r3, r0
 8008a28:	4618      	mov	r0, r3
 8008a2a:	3718      	adds	r7, #24
 8008a2c:	46bd      	mov	sp, r7
 8008a2e:	bd80      	pop	{r7, pc}
 8008a30:	40022000 	.word	0x40022000
 8008a34:	40021000 	.word	0x40021000
 8008a38:	04c4b400 	.word	0x04c4b400
 8008a3c:	200009ac 	.word	0x200009ac
 8008a40:	200009b0 	.word	0x200009b0

08008a44 <HAL_RCC_GetSysClockFreq>:
 8008a44:	b480      	push	{r7}
 8008a46:	b089      	sub	sp, #36	; 0x24
 8008a48:	af00      	add	r7, sp, #0
 8008a4a:	2300      	movs	r3, #0
 8008a4c:	61fb      	str	r3, [r7, #28]
 8008a4e:	2300      	movs	r3, #0
 8008a50:	61bb      	str	r3, [r7, #24]
 8008a52:	4b46      	ldr	r3, [pc, #280]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008a54:	689b      	ldr	r3, [r3, #8]
 8008a56:	f003 030c 	and.w	r3, r3, #12
 8008a5a:	613b      	str	r3, [r7, #16]
 8008a5c:	4b43      	ldr	r3, [pc, #268]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008a5e:	68db      	ldr	r3, [r3, #12]
 8008a60:	f003 0303 	and.w	r3, r3, #3
 8008a64:	60fb      	str	r3, [r7, #12]
 8008a66:	693b      	ldr	r3, [r7, #16]
 8008a68:	2b00      	cmp	r3, #0
 8008a6a:	d005      	beq.n	8008a78 <HAL_RCC_GetSysClockFreq+0x34>
 8008a6c:	693b      	ldr	r3, [r7, #16]
 8008a6e:	2b0c      	cmp	r3, #12
 8008a70:	d121      	bne.n	8008ab6 <HAL_RCC_GetSysClockFreq+0x72>
 8008a72:	68fb      	ldr	r3, [r7, #12]
 8008a74:	2b01      	cmp	r3, #1
 8008a76:	d11e      	bne.n	8008ab6 <HAL_RCC_GetSysClockFreq+0x72>
 8008a78:	4b3c      	ldr	r3, [pc, #240]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008a7a:	681b      	ldr	r3, [r3, #0]
 8008a7c:	f003 0308 	and.w	r3, r3, #8
 8008a80:	2b00      	cmp	r3, #0
 8008a82:	d107      	bne.n	8008a94 <HAL_RCC_GetSysClockFreq+0x50>
 8008a84:	4b39      	ldr	r3, [pc, #228]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008a86:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8008a8a:	0a1b      	lsrs	r3, r3, #8
 8008a8c:	f003 030f 	and.w	r3, r3, #15
 8008a90:	61fb      	str	r3, [r7, #28]
 8008a92:	e005      	b.n	8008aa0 <HAL_RCC_GetSysClockFreq+0x5c>
 8008a94:	4b35      	ldr	r3, [pc, #212]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008a96:	681b      	ldr	r3, [r3, #0]
 8008a98:	091b      	lsrs	r3, r3, #4
 8008a9a:	f003 030f 	and.w	r3, r3, #15
 8008a9e:	61fb      	str	r3, [r7, #28]
 8008aa0:	4a33      	ldr	r2, [pc, #204]	; (8008b70 <HAL_RCC_GetSysClockFreq+0x12c>)
 8008aa2:	69fb      	ldr	r3, [r7, #28]
 8008aa4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8008aa8:	61fb      	str	r3, [r7, #28]
 8008aaa:	693b      	ldr	r3, [r7, #16]
 8008aac:	2b00      	cmp	r3, #0
 8008aae:	d10d      	bne.n	8008acc <HAL_RCC_GetSysClockFreq+0x88>
 8008ab0:	69fb      	ldr	r3, [r7, #28]
 8008ab2:	61bb      	str	r3, [r7, #24]
 8008ab4:	e00a      	b.n	8008acc <HAL_RCC_GetSysClockFreq+0x88>
 8008ab6:	693b      	ldr	r3, [r7, #16]
 8008ab8:	2b04      	cmp	r3, #4
 8008aba:	d102      	bne.n	8008ac2 <HAL_RCC_GetSysClockFreq+0x7e>
 8008abc:	4b2d      	ldr	r3, [pc, #180]	; (8008b74 <HAL_RCC_GetSysClockFreq+0x130>)
 8008abe:	61bb      	str	r3, [r7, #24]
 8008ac0:	e004      	b.n	8008acc <HAL_RCC_GetSysClockFreq+0x88>
 8008ac2:	693b      	ldr	r3, [r7, #16]
 8008ac4:	2b08      	cmp	r3, #8
 8008ac6:	d101      	bne.n	8008acc <HAL_RCC_GetSysClockFreq+0x88>
 8008ac8:	4b2a      	ldr	r3, [pc, #168]	; (8008b74 <HAL_RCC_GetSysClockFreq+0x130>)
 8008aca:	61bb      	str	r3, [r7, #24]
 8008acc:	693b      	ldr	r3, [r7, #16]
 8008ace:	2b0c      	cmp	r3, #12
 8008ad0:	d145      	bne.n	8008b5e <HAL_RCC_GetSysClockFreq+0x11a>
 8008ad2:	4b26      	ldr	r3, [pc, #152]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008ad4:	68db      	ldr	r3, [r3, #12]
 8008ad6:	f003 0303 	and.w	r3, r3, #3
 8008ada:	60bb      	str	r3, [r7, #8]
 8008adc:	4b23      	ldr	r3, [pc, #140]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008ade:	68db      	ldr	r3, [r3, #12]
 8008ae0:	091b      	lsrs	r3, r3, #4
 8008ae2:	f003 030f 	and.w	r3, r3, #15
 8008ae6:	3301      	adds	r3, #1
 8008ae8:	607b      	str	r3, [r7, #4]
 8008aea:	68bb      	ldr	r3, [r7, #8]
 8008aec:	2b02      	cmp	r3, #2
 8008aee:	d002      	beq.n	8008af6 <HAL_RCC_GetSysClockFreq+0xb2>
 8008af0:	2b03      	cmp	r3, #3
 8008af2:	d00d      	beq.n	8008b10 <HAL_RCC_GetSysClockFreq+0xcc>
 8008af4:	e019      	b.n	8008b2a <HAL_RCC_GetSysClockFreq+0xe6>
 8008af6:	4a1f      	ldr	r2, [pc, #124]	; (8008b74 <HAL_RCC_GetSysClockFreq+0x130>)
 8008af8:	687b      	ldr	r3, [r7, #4]
 8008afa:	fbb2 f3f3 	udiv	r3, r2, r3
 8008afe:	4a1b      	ldr	r2, [pc, #108]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008b00:	68d2      	ldr	r2, [r2, #12]
 8008b02:	0a12      	lsrs	r2, r2, #8
 8008b04:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8008b08:	fb02 f303 	mul.w	r3, r2, r3
 8008b0c:	617b      	str	r3, [r7, #20]
 8008b0e:	e019      	b.n	8008b44 <HAL_RCC_GetSysClockFreq+0x100>
 8008b10:	4a18      	ldr	r2, [pc, #96]	; (8008b74 <HAL_RCC_GetSysClockFreq+0x130>)
 8008b12:	687b      	ldr	r3, [r7, #4]
 8008b14:	fbb2 f3f3 	udiv	r3, r2, r3
 8008b18:	4a14      	ldr	r2, [pc, #80]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008b1a:	68d2      	ldr	r2, [r2, #12]
 8008b1c:	0a12      	lsrs	r2, r2, #8
 8008b1e:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8008b22:	fb02 f303 	mul.w	r3, r2, r3
 8008b26:	617b      	str	r3, [r7, #20]
 8008b28:	e00c      	b.n	8008b44 <HAL_RCC_GetSysClockFreq+0x100>
 8008b2a:	69fa      	ldr	r2, [r7, #28]
 8008b2c:	687b      	ldr	r3, [r7, #4]
 8008b2e:	fbb2 f3f3 	udiv	r3, r2, r3
 8008b32:	4a0e      	ldr	r2, [pc, #56]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008b34:	68d2      	ldr	r2, [r2, #12]
 8008b36:	0a12      	lsrs	r2, r2, #8
 8008b38:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8008b3c:	fb02 f303 	mul.w	r3, r2, r3
 8008b40:	617b      	str	r3, [r7, #20]
 8008b42:	bf00      	nop
 8008b44:	4b09      	ldr	r3, [pc, #36]	; (8008b6c <HAL_RCC_GetSysClockFreq+0x128>)
 8008b46:	68db      	ldr	r3, [r3, #12]
 8008b48:	0e5b      	lsrs	r3, r3, #25
 8008b4a:	f003 0303 	and.w	r3, r3, #3
 8008b4e:	3301      	adds	r3, #1
 8008b50:	005b      	lsls	r3, r3, #1
 8008b52:	603b      	str	r3, [r7, #0]
 8008b54:	697a      	ldr	r2, [r7, #20]
 8008b56:	683b      	ldr	r3, [r7, #0]
 8008b58:	fbb2 f3f3 	udiv	r3, r2, r3
 8008b5c:	61bb      	str	r3, [r7, #24]
 8008b5e:	69bb      	ldr	r3, [r7, #24]
 8008b60:	4618      	mov	r0, r3
 8008b62:	3724      	adds	r7, #36	; 0x24
 8008b64:	46bd      	mov	sp, r7
 8008b66:	bc80      	pop	{r7}
 8008b68:	4770      	bx	lr
 8008b6a:	bf00      	nop
 8008b6c:	40021000 	.word	0x40021000
 8008b70:	0800ad1c 	.word	0x0800ad1c
 8008b74:	00f42400 	.word	0x00f42400

08008b78 <HAL_RCC_GetHCLKFreq>:
 8008b78:	b580      	push	{r7, lr}
 8008b7a:	af00      	add	r7, sp, #0
 8008b7c:	f7ff ff62 	bl	8008a44 <HAL_RCC_GetSysClockFreq>
 8008b80:	4601      	mov	r1, r0
 8008b82:	4b05      	ldr	r3, [pc, #20]	; (8008b98 <HAL_RCC_GetHCLKFreq+0x20>)
 8008b84:	689b      	ldr	r3, [r3, #8]
 8008b86:	091b      	lsrs	r3, r3, #4
 8008b88:	f003 030f 	and.w	r3, r3, #15
 8008b8c:	4a03      	ldr	r2, [pc, #12]	; (8008b9c <HAL_RCC_GetHCLKFreq+0x24>)
 8008b8e:	5cd3      	ldrb	r3, [r2, r3]
 8008b90:	fa21 f303 	lsr.w	r3, r1, r3
 8008b94:	4618      	mov	r0, r3
 8008b96:	bd80      	pop	{r7, pc}
 8008b98:	40021000 	.word	0x40021000
 8008b9c:	0800ad04 	.word	0x0800ad04

08008ba0 <HAL_RCC_GetPCLK1Freq>:
 8008ba0:	b580      	push	{r7, lr}
 8008ba2:	af00      	add	r7, sp, #0
 8008ba4:	f7ff ffe8 	bl	8008b78 <HAL_RCC_GetHCLKFreq>
 8008ba8:	4601      	mov	r1, r0
 8008baa:	4b05      	ldr	r3, [pc, #20]	; (8008bc0 <HAL_RCC_GetPCLK1Freq+0x20>)
 8008bac:	689b      	ldr	r3, [r3, #8]
 8008bae:	0a1b      	lsrs	r3, r3, #8
 8008bb0:	f003 0307 	and.w	r3, r3, #7
 8008bb4:	4a03      	ldr	r2, [pc, #12]	; (8008bc4 <HAL_RCC_GetPCLK1Freq+0x24>)
 8008bb6:	5cd3      	ldrb	r3, [r2, r3]
 8008bb8:	fa21 f303 	lsr.w	r3, r1, r3
 8008bbc:	4618      	mov	r0, r3
 8008bbe:	bd80      	pop	{r7, pc}
 8008bc0:	40021000 	.word	0x40021000
 8008bc4:	0800ad14 	.word	0x0800ad14

08008bc8 <HAL_RCC_GetPCLK2Freq>:
 8008bc8:	b580      	push	{r7, lr}
 8008bca:	af00      	add	r7, sp, #0
 8008bcc:	f7ff ffd4 	bl	8008b78 <HAL_RCC_GetHCLKFreq>
 8008bd0:	4601      	mov	r1, r0
 8008bd2:	4b05      	ldr	r3, [pc, #20]	; (8008be8 <HAL_RCC_GetPCLK2Freq+0x20>)
 8008bd4:	689b      	ldr	r3, [r3, #8]
 8008bd6:	0adb      	lsrs	r3, r3, #11
 8008bd8:	f003 0307 	and.w	r3, r3, #7
 8008bdc:	4a03      	ldr	r2, [pc, #12]	; (8008bec <HAL_RCC_GetPCLK2Freq+0x24>)
 8008bde:	5cd3      	ldrb	r3, [r2, r3]
 8008be0:	fa21 f303 	lsr.w	r3, r1, r3
 8008be4:	4618      	mov	r0, r3
 8008be6:	bd80      	pop	{r7, pc}
 8008be8:	40021000 	.word	0x40021000
 8008bec:	0800ad14 	.word	0x0800ad14

08008bf0 <RCC_SetFlashLatencyFromMSIRange>:
 8008bf0:	b580      	push	{r7, lr}
 8008bf2:	b086      	sub	sp, #24
 8008bf4:	af00      	add	r7, sp, #0
 8008bf6:	6078      	str	r0, [r7, #4]
 8008bf8:	2300      	movs	r3, #0
 8008bfa:	617b      	str	r3, [r7, #20]
 8008bfc:	4b2c      	ldr	r3, [pc, #176]	; (8008cb0 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8008bfe:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008c00:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8008c04:	2b00      	cmp	r3, #0
 8008c06:	d003      	beq.n	8008c10 <RCC_SetFlashLatencyFromMSIRange+0x20>
 8008c08:	f7ff f87a 	bl	8007d00 <HAL_PWREx_GetVoltageRange>
 8008c0c:	6138      	str	r0, [r7, #16]
 8008c0e:	e014      	b.n	8008c3a <RCC_SetFlashLatencyFromMSIRange+0x4a>
 8008c10:	4b27      	ldr	r3, [pc, #156]	; (8008cb0 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8008c12:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008c14:	4a26      	ldr	r2, [pc, #152]	; (8008cb0 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8008c16:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8008c1a:	6593      	str	r3, [r2, #88]	; 0x58
 8008c1c:	4b24      	ldr	r3, [pc, #144]	; (8008cb0 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8008c1e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008c20:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8008c24:	60fb      	str	r3, [r7, #12]
 8008c26:	68fb      	ldr	r3, [r7, #12]
 8008c28:	f7ff f86a 	bl	8007d00 <HAL_PWREx_GetVoltageRange>
 8008c2c:	6138      	str	r0, [r7, #16]
 8008c2e:	4b20      	ldr	r3, [pc, #128]	; (8008cb0 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8008c30:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008c32:	4a1f      	ldr	r2, [pc, #124]	; (8008cb0 <RCC_SetFlashLatencyFromMSIRange+0xc0>)
 8008c34:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8008c38:	6593      	str	r3, [r2, #88]	; 0x58
 8008c3a:	693b      	ldr	r3, [r7, #16]
 8008c3c:	2b00      	cmp	r3, #0
 8008c3e:	d003      	beq.n	8008c48 <RCC_SetFlashLatencyFromMSIRange+0x58>
 8008c40:	693b      	ldr	r3, [r7, #16]
 8008c42:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8008c46:	d10b      	bne.n	8008c60 <RCC_SetFlashLatencyFromMSIRange+0x70>
 8008c48:	687b      	ldr	r3, [r7, #4]
 8008c4a:	2b80      	cmp	r3, #128	; 0x80
 8008c4c:	d919      	bls.n	8008c82 <RCC_SetFlashLatencyFromMSIRange+0x92>
 8008c4e:	687b      	ldr	r3, [r7, #4]
 8008c50:	2ba0      	cmp	r3, #160	; 0xa0
 8008c52:	d902      	bls.n	8008c5a <RCC_SetFlashLatencyFromMSIRange+0x6a>
 8008c54:	2302      	movs	r3, #2
 8008c56:	617b      	str	r3, [r7, #20]
 8008c58:	e013      	b.n	8008c82 <RCC_SetFlashLatencyFromMSIRange+0x92>
 8008c5a:	2301      	movs	r3, #1
 8008c5c:	617b      	str	r3, [r7, #20]
 8008c5e:	e010      	b.n	8008c82 <RCC_SetFlashLatencyFromMSIRange+0x92>
 8008c60:	687b      	ldr	r3, [r7, #4]
 8008c62:	2b80      	cmp	r3, #128	; 0x80
 8008c64:	d902      	bls.n	8008c6c <RCC_SetFlashLatencyFromMSIRange+0x7c>
 8008c66:	2303      	movs	r3, #3
 8008c68:	617b      	str	r3, [r7, #20]
 8008c6a:	e00a      	b.n	8008c82 <RCC_SetFlashLatencyFromMSIRange+0x92>
 8008c6c:	687b      	ldr	r3, [r7, #4]
 8008c6e:	2b80      	cmp	r3, #128	; 0x80
 8008c70:	d102      	bne.n	8008c78 <RCC_SetFlashLatencyFromMSIRange+0x88>
 8008c72:	2302      	movs	r3, #2
 8008c74:	617b      	str	r3, [r7, #20]
 8008c76:	e004      	b.n	8008c82 <RCC_SetFlashLatencyFromMSIRange+0x92>
 8008c78:	687b      	ldr	r3, [r7, #4]
 8008c7a:	2b70      	cmp	r3, #112	; 0x70
 8008c7c:	d101      	bne.n	8008c82 <RCC_SetFlashLatencyFromMSIRange+0x92>
 8008c7e:	2301      	movs	r3, #1
 8008c80:	617b      	str	r3, [r7, #20]
 8008c82:	4b0c      	ldr	r3, [pc, #48]	; (8008cb4 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8008c84:	681b      	ldr	r3, [r3, #0]
 8008c86:	f023 020f 	bic.w	r2, r3, #15
 8008c8a:	490a      	ldr	r1, [pc, #40]	; (8008cb4 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8008c8c:	697b      	ldr	r3, [r7, #20]
 8008c8e:	4313      	orrs	r3, r2
 8008c90:	600b      	str	r3, [r1, #0]
 8008c92:	4b08      	ldr	r3, [pc, #32]	; (8008cb4 <RCC_SetFlashLatencyFromMSIRange+0xc4>)
 8008c94:	681b      	ldr	r3, [r3, #0]
 8008c96:	f003 030f 	and.w	r3, r3, #15
 8008c9a:	697a      	ldr	r2, [r7, #20]
 8008c9c:	429a      	cmp	r2, r3
 8008c9e:	d001      	beq.n	8008ca4 <RCC_SetFlashLatencyFromMSIRange+0xb4>
 8008ca0:	2301      	movs	r3, #1
 8008ca2:	e000      	b.n	8008ca6 <RCC_SetFlashLatencyFromMSIRange+0xb6>
 8008ca4:	2300      	movs	r3, #0
 8008ca6:	4618      	mov	r0, r3
 8008ca8:	3718      	adds	r7, #24
 8008caa:	46bd      	mov	sp, r7
 8008cac:	bd80      	pop	{r7, pc}
 8008cae:	bf00      	nop
 8008cb0:	40021000 	.word	0x40021000
 8008cb4:	40022000 	.word	0x40022000

08008cb8 <RCC_GetSysClockFreqFromPLLSource>:
 8008cb8:	b480      	push	{r7}
 8008cba:	b087      	sub	sp, #28
 8008cbc:	af00      	add	r7, sp, #0
 8008cbe:	2300      	movs	r3, #0
 8008cc0:	617b      	str	r3, [r7, #20]
 8008cc2:	4b35      	ldr	r3, [pc, #212]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008cc4:	68db      	ldr	r3, [r3, #12]
 8008cc6:	f003 0303 	and.w	r3, r3, #3
 8008cca:	2b01      	cmp	r3, #1
 8008ccc:	d118      	bne.n	8008d00 <RCC_GetSysClockFreqFromPLLSource+0x48>
 8008cce:	4b32      	ldr	r3, [pc, #200]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008cd0:	681b      	ldr	r3, [r3, #0]
 8008cd2:	f003 0308 	and.w	r3, r3, #8
 8008cd6:	2b00      	cmp	r3, #0
 8008cd8:	d107      	bne.n	8008cea <RCC_GetSysClockFreqFromPLLSource+0x32>
 8008cda:	4b2f      	ldr	r3, [pc, #188]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008cdc:	f8d3 3094 	ldr.w	r3, [r3, #148]	; 0x94
 8008ce0:	0a1b      	lsrs	r3, r3, #8
 8008ce2:	f003 030f 	and.w	r3, r3, #15
 8008ce6:	617b      	str	r3, [r7, #20]
 8008ce8:	e005      	b.n	8008cf6 <RCC_GetSysClockFreqFromPLLSource+0x3e>
 8008cea:	4b2b      	ldr	r3, [pc, #172]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008cec:	681b      	ldr	r3, [r3, #0]
 8008cee:	091b      	lsrs	r3, r3, #4
 8008cf0:	f003 030f 	and.w	r3, r3, #15
 8008cf4:	617b      	str	r3, [r7, #20]
 8008cf6:	4a29      	ldr	r2, [pc, #164]	; (8008d9c <RCC_GetSysClockFreqFromPLLSource+0xe4>)
 8008cf8:	697b      	ldr	r3, [r7, #20]
 8008cfa:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 8008cfe:	617b      	str	r3, [r7, #20]
 8008d00:	4b25      	ldr	r3, [pc, #148]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008d02:	68db      	ldr	r3, [r3, #12]
 8008d04:	f003 0303 	and.w	r3, r3, #3
 8008d08:	60fb      	str	r3, [r7, #12]
 8008d0a:	4b23      	ldr	r3, [pc, #140]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008d0c:	68db      	ldr	r3, [r3, #12]
 8008d0e:	091b      	lsrs	r3, r3, #4
 8008d10:	f003 030f 	and.w	r3, r3, #15
 8008d14:	3301      	adds	r3, #1
 8008d16:	60bb      	str	r3, [r7, #8]
 8008d18:	68fb      	ldr	r3, [r7, #12]
 8008d1a:	2b02      	cmp	r3, #2
 8008d1c:	d002      	beq.n	8008d24 <RCC_GetSysClockFreqFromPLLSource+0x6c>
 8008d1e:	2b03      	cmp	r3, #3
 8008d20:	d00d      	beq.n	8008d3e <RCC_GetSysClockFreqFromPLLSource+0x86>
 8008d22:	e019      	b.n	8008d58 <RCC_GetSysClockFreqFromPLLSource+0xa0>
 8008d24:	4a1e      	ldr	r2, [pc, #120]	; (8008da0 <RCC_GetSysClockFreqFromPLLSource+0xe8>)
 8008d26:	68bb      	ldr	r3, [r7, #8]
 8008d28:	fbb2 f3f3 	udiv	r3, r2, r3
 8008d2c:	4a1a      	ldr	r2, [pc, #104]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008d2e:	68d2      	ldr	r2, [r2, #12]
 8008d30:	0a12      	lsrs	r2, r2, #8
 8008d32:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8008d36:	fb02 f303 	mul.w	r3, r2, r3
 8008d3a:	613b      	str	r3, [r7, #16]
 8008d3c:	e019      	b.n	8008d72 <RCC_GetSysClockFreqFromPLLSource+0xba>
 8008d3e:	4a18      	ldr	r2, [pc, #96]	; (8008da0 <RCC_GetSysClockFreqFromPLLSource+0xe8>)
 8008d40:	68bb      	ldr	r3, [r7, #8]
 8008d42:	fbb2 f3f3 	udiv	r3, r2, r3
 8008d46:	4a14      	ldr	r2, [pc, #80]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008d48:	68d2      	ldr	r2, [r2, #12]
 8008d4a:	0a12      	lsrs	r2, r2, #8
 8008d4c:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8008d50:	fb02 f303 	mul.w	r3, r2, r3
 8008d54:	613b      	str	r3, [r7, #16]
 8008d56:	e00c      	b.n	8008d72 <RCC_GetSysClockFreqFromPLLSource+0xba>
 8008d58:	697a      	ldr	r2, [r7, #20]
 8008d5a:	68bb      	ldr	r3, [r7, #8]
 8008d5c:	fbb2 f3f3 	udiv	r3, r2, r3
 8008d60:	4a0d      	ldr	r2, [pc, #52]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008d62:	68d2      	ldr	r2, [r2, #12]
 8008d64:	0a12      	lsrs	r2, r2, #8
 8008d66:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8008d6a:	fb02 f303 	mul.w	r3, r2, r3
 8008d6e:	613b      	str	r3, [r7, #16]
 8008d70:	bf00      	nop
 8008d72:	4b09      	ldr	r3, [pc, #36]	; (8008d98 <RCC_GetSysClockFreqFromPLLSource+0xe0>)
 8008d74:	68db      	ldr	r3, [r3, #12]
 8008d76:	0e5b      	lsrs	r3, r3, #25
 8008d78:	f003 0303 	and.w	r3, r3, #3
 8008d7c:	3301      	adds	r3, #1
 8008d7e:	005b      	lsls	r3, r3, #1
 8008d80:	607b      	str	r3, [r7, #4]
 8008d82:	693a      	ldr	r2, [r7, #16]
 8008d84:	687b      	ldr	r3, [r7, #4]
 8008d86:	fbb2 f3f3 	udiv	r3, r2, r3
 8008d8a:	603b      	str	r3, [r7, #0]
 8008d8c:	683b      	ldr	r3, [r7, #0]
 8008d8e:	4618      	mov	r0, r3
 8008d90:	371c      	adds	r7, #28
 8008d92:	46bd      	mov	sp, r7
 8008d94:	bc80      	pop	{r7}
 8008d96:	4770      	bx	lr
 8008d98:	40021000 	.word	0x40021000
 8008d9c:	0800ad1c 	.word	0x0800ad1c
 8008da0:	00f42400 	.word	0x00f42400

08008da4 <HAL_RCCEx_PeriphCLKConfig>:
 8008da4:	b580      	push	{r7, lr}
 8008da6:	b088      	sub	sp, #32
 8008da8:	af00      	add	r7, sp, #0
 8008daa:	6078      	str	r0, [r7, #4]
 8008dac:	2300      	movs	r3, #0
 8008dae:	77fb      	strb	r3, [r7, #31]
 8008db0:	2300      	movs	r3, #0
 8008db2:	77bb      	strb	r3, [r7, #30]
 8008db4:	687b      	ldr	r3, [r7, #4]
 8008db6:	681b      	ldr	r3, [r3, #0]
 8008db8:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 8008dbc:	2b00      	cmp	r3, #0
 8008dbe:	d03d      	beq.n	8008e3c <HAL_RCCEx_PeriphCLKConfig+0x98>
 8008dc0:	687b      	ldr	r3, [r7, #4]
 8008dc2:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 8008dc4:	2b40      	cmp	r3, #64	; 0x40
 8008dc6:	d00b      	beq.n	8008de0 <HAL_RCCEx_PeriphCLKConfig+0x3c>
 8008dc8:	2b40      	cmp	r3, #64	; 0x40
 8008dca:	d804      	bhi.n	8008dd6 <HAL_RCCEx_PeriphCLKConfig+0x32>
 8008dcc:	2b00      	cmp	r3, #0
 8008dce:	d00e      	beq.n	8008dee <HAL_RCCEx_PeriphCLKConfig+0x4a>
 8008dd0:	2b20      	cmp	r3, #32
 8008dd2:	d015      	beq.n	8008e00 <HAL_RCCEx_PeriphCLKConfig+0x5c>
 8008dd4:	e01d      	b.n	8008e12 <HAL_RCCEx_PeriphCLKConfig+0x6e>
 8008dd6:	2b60      	cmp	r3, #96	; 0x60
 8008dd8:	d01e      	beq.n	8008e18 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8008dda:	2b80      	cmp	r3, #128	; 0x80
 8008ddc:	d01c      	beq.n	8008e18 <HAL_RCCEx_PeriphCLKConfig+0x74>
 8008dde:	e018      	b.n	8008e12 <HAL_RCCEx_PeriphCLKConfig+0x6e>
 8008de0:	4b8c      	ldr	r3, [pc, #560]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008de2:	68db      	ldr	r3, [r3, #12]
 8008de4:	4a8b      	ldr	r2, [pc, #556]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008de6:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8008dea:	60d3      	str	r3, [r2, #12]
 8008dec:	e015      	b.n	8008e1a <HAL_RCCEx_PeriphCLKConfig+0x76>
 8008dee:	687b      	ldr	r3, [r7, #4]
 8008df0:	3304      	adds	r3, #4
 8008df2:	2100      	movs	r1, #0
 8008df4:	4618      	mov	r0, r3
 8008df6:	f000 fb4f 	bl	8009498 <RCCEx_PLLSAI1_Config>
 8008dfa:	4603      	mov	r3, r0
 8008dfc:	77fb      	strb	r3, [r7, #31]
 8008dfe:	e00c      	b.n	8008e1a <HAL_RCCEx_PeriphCLKConfig+0x76>
 8008e00:	687b      	ldr	r3, [r7, #4]
 8008e02:	3320      	adds	r3, #32
 8008e04:	2100      	movs	r1, #0
 8008e06:	4618      	mov	r0, r3
 8008e08:	f000 fc28 	bl	800965c <RCCEx_PLLSAI2_Config>
 8008e0c:	4603      	mov	r3, r0
 8008e0e:	77fb      	strb	r3, [r7, #31]
 8008e10:	e003      	b.n	8008e1a <HAL_RCCEx_PeriphCLKConfig+0x76>
 8008e12:	2301      	movs	r3, #1
 8008e14:	77fb      	strb	r3, [r7, #31]
 8008e16:	e000      	b.n	8008e1a <HAL_RCCEx_PeriphCLKConfig+0x76>
 8008e18:	bf00      	nop
 8008e1a:	7ffb      	ldrb	r3, [r7, #31]
 8008e1c:	2b00      	cmp	r3, #0
 8008e1e:	d10b      	bne.n	8008e38 <HAL_RCCEx_PeriphCLKConfig+0x94>
 8008e20:	4b7c      	ldr	r3, [pc, #496]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008e22:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8008e26:	f023 02e0 	bic.w	r2, r3, #224	; 0xe0
 8008e2a:	687b      	ldr	r3, [r7, #4]
 8008e2c:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 8008e2e:	4979      	ldr	r1, [pc, #484]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008e30:	4313      	orrs	r3, r2
 8008e32:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 8008e36:	e001      	b.n	8008e3c <HAL_RCCEx_PeriphCLKConfig+0x98>
 8008e38:	7ffb      	ldrb	r3, [r7, #31]
 8008e3a:	77bb      	strb	r3, [r7, #30]
 8008e3c:	687b      	ldr	r3, [r7, #4]
 8008e3e:	681b      	ldr	r3, [r3, #0]
 8008e40:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 8008e44:	2b00      	cmp	r3, #0
 8008e46:	d042      	beq.n	8008ece <HAL_RCCEx_PeriphCLKConfig+0x12a>
 8008e48:	687b      	ldr	r3, [r7, #4]
 8008e4a:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8008e4c:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8008e50:	d00f      	beq.n	8008e72 <HAL_RCCEx_PeriphCLKConfig+0xce>
 8008e52:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8008e56:	d805      	bhi.n	8008e64 <HAL_RCCEx_PeriphCLKConfig+0xc0>
 8008e58:	2b00      	cmp	r3, #0
 8008e5a:	d011      	beq.n	8008e80 <HAL_RCCEx_PeriphCLKConfig+0xdc>
 8008e5c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8008e60:	d017      	beq.n	8008e92 <HAL_RCCEx_PeriphCLKConfig+0xee>
 8008e62:	e01f      	b.n	8008ea4 <HAL_RCCEx_PeriphCLKConfig+0x100>
 8008e64:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8008e68:	d01f      	beq.n	8008eaa <HAL_RCCEx_PeriphCLKConfig+0x106>
 8008e6a:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8008e6e:	d01c      	beq.n	8008eaa <HAL_RCCEx_PeriphCLKConfig+0x106>
 8008e70:	e018      	b.n	8008ea4 <HAL_RCCEx_PeriphCLKConfig+0x100>
 8008e72:	4b68      	ldr	r3, [pc, #416]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008e74:	68db      	ldr	r3, [r3, #12]
 8008e76:	4a67      	ldr	r2, [pc, #412]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008e78:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8008e7c:	60d3      	str	r3, [r2, #12]
 8008e7e:	e015      	b.n	8008eac <HAL_RCCEx_PeriphCLKConfig+0x108>
 8008e80:	687b      	ldr	r3, [r7, #4]
 8008e82:	3304      	adds	r3, #4
 8008e84:	2100      	movs	r1, #0
 8008e86:	4618      	mov	r0, r3
 8008e88:	f000 fb06 	bl	8009498 <RCCEx_PLLSAI1_Config>
 8008e8c:	4603      	mov	r3, r0
 8008e8e:	77fb      	strb	r3, [r7, #31]
 8008e90:	e00c      	b.n	8008eac <HAL_RCCEx_PeriphCLKConfig+0x108>
 8008e92:	687b      	ldr	r3, [r7, #4]
 8008e94:	3320      	adds	r3, #32
 8008e96:	2100      	movs	r1, #0
 8008e98:	4618      	mov	r0, r3
 8008e9a:	f000 fbdf 	bl	800965c <RCCEx_PLLSAI2_Config>
 8008e9e:	4603      	mov	r3, r0
 8008ea0:	77fb      	strb	r3, [r7, #31]
 8008ea2:	e003      	b.n	8008eac <HAL_RCCEx_PeriphCLKConfig+0x108>
 8008ea4:	2301      	movs	r3, #1
 8008ea6:	77fb      	strb	r3, [r7, #31]
 8008ea8:	e000      	b.n	8008eac <HAL_RCCEx_PeriphCLKConfig+0x108>
 8008eaa:	bf00      	nop
 8008eac:	7ffb      	ldrb	r3, [r7, #31]
 8008eae:	2b00      	cmp	r3, #0
 8008eb0:	d10b      	bne.n	8008eca <HAL_RCCEx_PeriphCLKConfig+0x126>
 8008eb2:	4b58      	ldr	r3, [pc, #352]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008eb4:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8008eb8:	f423 62e0 	bic.w	r2, r3, #1792	; 0x700
 8008ebc:	687b      	ldr	r3, [r7, #4]
 8008ebe:	6f1b      	ldr	r3, [r3, #112]	; 0x70
 8008ec0:	4954      	ldr	r1, [pc, #336]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008ec2:	4313      	orrs	r3, r2
 8008ec4:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 8008ec8:	e001      	b.n	8008ece <HAL_RCCEx_PeriphCLKConfig+0x12a>
 8008eca:	7ffb      	ldrb	r3, [r7, #31]
 8008ecc:	77bb      	strb	r3, [r7, #30]
 8008ece:	687b      	ldr	r3, [r7, #4]
 8008ed0:	681b      	ldr	r3, [r3, #0]
 8008ed2:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8008ed6:	2b00      	cmp	r3, #0
 8008ed8:	f000 80ab 	beq.w	8009032 <HAL_RCCEx_PeriphCLKConfig+0x28e>
 8008edc:	2300      	movs	r3, #0
 8008ede:	75fb      	strb	r3, [r7, #23]
 8008ee0:	4b4c      	ldr	r3, [pc, #304]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008ee2:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008ee4:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8008ee8:	2b00      	cmp	r3, #0
 8008eea:	d10d      	bne.n	8008f08 <HAL_RCCEx_PeriphCLKConfig+0x164>
 8008eec:	4b49      	ldr	r3, [pc, #292]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008eee:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008ef0:	4a48      	ldr	r2, [pc, #288]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008ef2:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 8008ef6:	6593      	str	r3, [r2, #88]	; 0x58
 8008ef8:	4b46      	ldr	r3, [pc, #280]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008efa:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8008efc:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 8008f00:	60fb      	str	r3, [r7, #12]
 8008f02:	68fb      	ldr	r3, [r7, #12]
 8008f04:	2301      	movs	r3, #1
 8008f06:	75fb      	strb	r3, [r7, #23]
 8008f08:	4b43      	ldr	r3, [pc, #268]	; (8009018 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8008f0a:	681b      	ldr	r3, [r3, #0]
 8008f0c:	4a42      	ldr	r2, [pc, #264]	; (8009018 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8008f0e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8008f12:	6013      	str	r3, [r2, #0]
 8008f14:	f7fe fbd4 	bl	80076c0 <HAL_GetTick>
 8008f18:	6138      	str	r0, [r7, #16]
 8008f1a:	e00f      	b.n	8008f3c <HAL_RCCEx_PeriphCLKConfig+0x198>
 8008f1c:	f7fe fbd0 	bl	80076c0 <HAL_GetTick>
 8008f20:	4602      	mov	r2, r0
 8008f22:	693b      	ldr	r3, [r7, #16]
 8008f24:	1ad3      	subs	r3, r2, r3
 8008f26:	2b02      	cmp	r3, #2
 8008f28:	d908      	bls.n	8008f3c <HAL_RCCEx_PeriphCLKConfig+0x198>
 8008f2a:	4b3b      	ldr	r3, [pc, #236]	; (8009018 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8008f2c:	681b      	ldr	r3, [r3, #0]
 8008f2e:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8008f32:	2b00      	cmp	r3, #0
 8008f34:	d109      	bne.n	8008f4a <HAL_RCCEx_PeriphCLKConfig+0x1a6>
 8008f36:	2303      	movs	r3, #3
 8008f38:	77fb      	strb	r3, [r7, #31]
 8008f3a:	e006      	b.n	8008f4a <HAL_RCCEx_PeriphCLKConfig+0x1a6>
 8008f3c:	4b36      	ldr	r3, [pc, #216]	; (8009018 <HAL_RCCEx_PeriphCLKConfig+0x274>)
 8008f3e:	681b      	ldr	r3, [r3, #0]
 8008f40:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8008f44:	2b00      	cmp	r3, #0
 8008f46:	d0e9      	beq.n	8008f1c <HAL_RCCEx_PeriphCLKConfig+0x178>
 8008f48:	e000      	b.n	8008f4c <HAL_RCCEx_PeriphCLKConfig+0x1a8>
 8008f4a:	bf00      	nop
 8008f4c:	7ffb      	ldrb	r3, [r7, #31]
 8008f4e:	2b00      	cmp	r3, #0
 8008f50:	d164      	bne.n	800901c <HAL_RCCEx_PeriphCLKConfig+0x278>
 8008f52:	4b30      	ldr	r3, [pc, #192]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f54:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008f58:	f403 7340 	and.w	r3, r3, #768	; 0x300
 8008f5c:	61bb      	str	r3, [r7, #24]
 8008f5e:	69bb      	ldr	r3, [r7, #24]
 8008f60:	2b00      	cmp	r3, #0
 8008f62:	d01f      	beq.n	8008fa4 <HAL_RCCEx_PeriphCLKConfig+0x200>
 8008f64:	687b      	ldr	r3, [r7, #4]
 8008f66:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008f6a:	69ba      	ldr	r2, [r7, #24]
 8008f6c:	429a      	cmp	r2, r3
 8008f6e:	d019      	beq.n	8008fa4 <HAL_RCCEx_PeriphCLKConfig+0x200>
 8008f70:	4b28      	ldr	r3, [pc, #160]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f72:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008f76:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8008f7a:	61bb      	str	r3, [r7, #24]
 8008f7c:	4b25      	ldr	r3, [pc, #148]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f7e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008f82:	4a24      	ldr	r2, [pc, #144]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f84:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8008f88:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 8008f8c:	4b21      	ldr	r3, [pc, #132]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f8e:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008f92:	4a20      	ldr	r2, [pc, #128]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f94:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8008f98:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 8008f9c:	4a1d      	ldr	r2, [pc, #116]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008f9e:	69bb      	ldr	r3, [r7, #24]
 8008fa0:	f8c2 3090 	str.w	r3, [r2, #144]	; 0x90
 8008fa4:	69bb      	ldr	r3, [r7, #24]
 8008fa6:	f003 0301 	and.w	r3, r3, #1
 8008faa:	2b00      	cmp	r3, #0
 8008fac:	d01f      	beq.n	8008fee <HAL_RCCEx_PeriphCLKConfig+0x24a>
 8008fae:	f7fe fb87 	bl	80076c0 <HAL_GetTick>
 8008fb2:	6138      	str	r0, [r7, #16]
 8008fb4:	e012      	b.n	8008fdc <HAL_RCCEx_PeriphCLKConfig+0x238>
 8008fb6:	f7fe fb83 	bl	80076c0 <HAL_GetTick>
 8008fba:	4602      	mov	r2, r0
 8008fbc:	693b      	ldr	r3, [r7, #16]
 8008fbe:	1ad3      	subs	r3, r2, r3
 8008fc0:	f241 3288 	movw	r2, #5000	; 0x1388
 8008fc4:	4293      	cmp	r3, r2
 8008fc6:	d909      	bls.n	8008fdc <HAL_RCCEx_PeriphCLKConfig+0x238>
 8008fc8:	4b12      	ldr	r3, [pc, #72]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008fca:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008fce:	f003 0302 	and.w	r3, r3, #2
 8008fd2:	2b00      	cmp	r3, #0
 8008fd4:	d10a      	bne.n	8008fec <HAL_RCCEx_PeriphCLKConfig+0x248>
 8008fd6:	2303      	movs	r3, #3
 8008fd8:	77fb      	strb	r3, [r7, #31]
 8008fda:	e007      	b.n	8008fec <HAL_RCCEx_PeriphCLKConfig+0x248>
 8008fdc:	4b0d      	ldr	r3, [pc, #52]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008fde:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008fe2:	f003 0302 	and.w	r3, r3, #2
 8008fe6:	2b00      	cmp	r3, #0
 8008fe8:	d0e5      	beq.n	8008fb6 <HAL_RCCEx_PeriphCLKConfig+0x212>
 8008fea:	e000      	b.n	8008fee <HAL_RCCEx_PeriphCLKConfig+0x24a>
 8008fec:	bf00      	nop
 8008fee:	7ffb      	ldrb	r3, [r7, #31]
 8008ff0:	2b00      	cmp	r3, #0
 8008ff2:	d10c      	bne.n	800900e <HAL_RCCEx_PeriphCLKConfig+0x26a>
 8008ff4:	4b07      	ldr	r3, [pc, #28]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8008ff6:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8008ffa:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8008ffe:	687b      	ldr	r3, [r7, #4]
 8009000:	f8d3 3090 	ldr.w	r3, [r3, #144]	; 0x90
 8009004:	4903      	ldr	r1, [pc, #12]	; (8009014 <HAL_RCCEx_PeriphCLKConfig+0x270>)
 8009006:	4313      	orrs	r3, r2
 8009008:	f8c1 3090 	str.w	r3, [r1, #144]	; 0x90
 800900c:	e008      	b.n	8009020 <HAL_RCCEx_PeriphCLKConfig+0x27c>
 800900e:	7ffb      	ldrb	r3, [r7, #31]
 8009010:	77bb      	strb	r3, [r7, #30]
 8009012:	e005      	b.n	8009020 <HAL_RCCEx_PeriphCLKConfig+0x27c>
 8009014:	40021000 	.word	0x40021000
 8009018:	40007000 	.word	0x40007000
 800901c:	7ffb      	ldrb	r3, [r7, #31]
 800901e:	77bb      	strb	r3, [r7, #30]
 8009020:	7dfb      	ldrb	r3, [r7, #23]
 8009022:	2b01      	cmp	r3, #1
 8009024:	d105      	bne.n	8009032 <HAL_RCCEx_PeriphCLKConfig+0x28e>
 8009026:	4bae      	ldr	r3, [pc, #696]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009028:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 800902a:	4aad      	ldr	r2, [pc, #692]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800902c:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 8009030:	6593      	str	r3, [r2, #88]	; 0x58
 8009032:	687b      	ldr	r3, [r7, #4]
 8009034:	681b      	ldr	r3, [r3, #0]
 8009036:	f003 0301 	and.w	r3, r3, #1
 800903a:	2b00      	cmp	r3, #0
 800903c:	d00a      	beq.n	8009054 <HAL_RCCEx_PeriphCLKConfig+0x2b0>
 800903e:	4ba8      	ldr	r3, [pc, #672]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009040:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009044:	f023 0203 	bic.w	r2, r3, #3
 8009048:	687b      	ldr	r3, [r7, #4]
 800904a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800904c:	49a4      	ldr	r1, [pc, #656]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800904e:	4313      	orrs	r3, r2
 8009050:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009054:	687b      	ldr	r3, [r7, #4]
 8009056:	681b      	ldr	r3, [r3, #0]
 8009058:	f003 0302 	and.w	r3, r3, #2
 800905c:	2b00      	cmp	r3, #0
 800905e:	d00a      	beq.n	8009076 <HAL_RCCEx_PeriphCLKConfig+0x2d2>
 8009060:	4b9f      	ldr	r3, [pc, #636]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009062:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009066:	f023 020c 	bic.w	r2, r3, #12
 800906a:	687b      	ldr	r3, [r7, #4]
 800906c:	6b9b      	ldr	r3, [r3, #56]	; 0x38
 800906e:	499c      	ldr	r1, [pc, #624]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009070:	4313      	orrs	r3, r2
 8009072:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009076:	687b      	ldr	r3, [r7, #4]
 8009078:	681b      	ldr	r3, [r3, #0]
 800907a:	f003 0304 	and.w	r3, r3, #4
 800907e:	2b00      	cmp	r3, #0
 8009080:	d00a      	beq.n	8009098 <HAL_RCCEx_PeriphCLKConfig+0x2f4>
 8009082:	4b97      	ldr	r3, [pc, #604]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009084:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009088:	f023 0230 	bic.w	r2, r3, #48	; 0x30
 800908c:	687b      	ldr	r3, [r7, #4]
 800908e:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
 8009090:	4993      	ldr	r1, [pc, #588]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009092:	4313      	orrs	r3, r2
 8009094:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009098:	687b      	ldr	r3, [r7, #4]
 800909a:	681b      	ldr	r3, [r3, #0]
 800909c:	f003 0308 	and.w	r3, r3, #8
 80090a0:	2b00      	cmp	r3, #0
 80090a2:	d00a      	beq.n	80090ba <HAL_RCCEx_PeriphCLKConfig+0x316>
 80090a4:	4b8e      	ldr	r3, [pc, #568]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80090a6:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80090aa:	f023 02c0 	bic.w	r2, r3, #192	; 0xc0
 80090ae:	687b      	ldr	r3, [r7, #4]
 80090b0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 80090b2:	498b      	ldr	r1, [pc, #556]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80090b4:	4313      	orrs	r3, r2
 80090b6:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80090ba:	687b      	ldr	r3, [r7, #4]
 80090bc:	681b      	ldr	r3, [r3, #0]
 80090be:	f003 0310 	and.w	r3, r3, #16
 80090c2:	2b00      	cmp	r3, #0
 80090c4:	d00a      	beq.n	80090dc <HAL_RCCEx_PeriphCLKConfig+0x338>
 80090c6:	4b86      	ldr	r3, [pc, #536]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80090c8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80090cc:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80090d0:	687b      	ldr	r3, [r7, #4]
 80090d2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 80090d4:	4982      	ldr	r1, [pc, #520]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80090d6:	4313      	orrs	r3, r2
 80090d8:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80090dc:	687b      	ldr	r3, [r7, #4]
 80090de:	681b      	ldr	r3, [r3, #0]
 80090e0:	f003 0320 	and.w	r3, r3, #32
 80090e4:	2b00      	cmp	r3, #0
 80090e6:	d00a      	beq.n	80090fe <HAL_RCCEx_PeriphCLKConfig+0x35a>
 80090e8:	4b7d      	ldr	r3, [pc, #500]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80090ea:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80090ee:	f423 6240 	bic.w	r2, r3, #3072	; 0xc00
 80090f2:	687b      	ldr	r3, [r7, #4]
 80090f4:	6c9b      	ldr	r3, [r3, #72]	; 0x48
 80090f6:	497a      	ldr	r1, [pc, #488]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80090f8:	4313      	orrs	r3, r2
 80090fa:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80090fe:	687b      	ldr	r3, [r7, #4]
 8009100:	681b      	ldr	r3, [r3, #0]
 8009102:	f403 7300 	and.w	r3, r3, #512	; 0x200
 8009106:	2b00      	cmp	r3, #0
 8009108:	d00a      	beq.n	8009120 <HAL_RCCEx_PeriphCLKConfig+0x37c>
 800910a:	4b75      	ldr	r3, [pc, #468]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800910c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009110:	f423 2240 	bic.w	r2, r3, #786432	; 0xc0000
 8009114:	687b      	ldr	r3, [r7, #4]
 8009116:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 8009118:	4971      	ldr	r1, [pc, #452]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800911a:	4313      	orrs	r3, r2
 800911c:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009120:	687b      	ldr	r3, [r7, #4]
 8009122:	681b      	ldr	r3, [r3, #0]
 8009124:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8009128:	2b00      	cmp	r3, #0
 800912a:	d00a      	beq.n	8009142 <HAL_RCCEx_PeriphCLKConfig+0x39e>
 800912c:	4b6c      	ldr	r3, [pc, #432]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800912e:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009132:	f423 1240 	bic.w	r2, r3, #3145728	; 0x300000
 8009136:	687b      	ldr	r3, [r7, #4]
 8009138:	6e1b      	ldr	r3, [r3, #96]	; 0x60
 800913a:	4969      	ldr	r1, [pc, #420]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800913c:	4313      	orrs	r3, r2
 800913e:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009142:	687b      	ldr	r3, [r7, #4]
 8009144:	681b      	ldr	r3, [r3, #0]
 8009146:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 800914a:	2b00      	cmp	r3, #0
 800914c:	d00a      	beq.n	8009164 <HAL_RCCEx_PeriphCLKConfig+0x3c0>
 800914e:	4b64      	ldr	r3, [pc, #400]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009150:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009154:	f423 0240 	bic.w	r2, r3, #12582912	; 0xc00000
 8009158:	687b      	ldr	r3, [r7, #4]
 800915a:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 800915c:	4960      	ldr	r1, [pc, #384]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800915e:	4313      	orrs	r3, r2
 8009160:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009164:	687b      	ldr	r3, [r7, #4]
 8009166:	681b      	ldr	r3, [r3, #0]
 8009168:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800916c:	2b00      	cmp	r3, #0
 800916e:	d02f      	beq.n	80091d0 <HAL_RCCEx_PeriphCLKConfig+0x42c>
 8009170:	687b      	ldr	r3, [r7, #4]
 8009172:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 8009174:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8009178:	d005      	beq.n	8009186 <HAL_RCCEx_PeriphCLKConfig+0x3e2>
 800917a:	f1b3 7f00 	cmp.w	r3, #33554432	; 0x2000000
 800917e:	d009      	beq.n	8009194 <HAL_RCCEx_PeriphCLKConfig+0x3f0>
 8009180:	2b00      	cmp	r3, #0
 8009182:	d013      	beq.n	80091ac <HAL_RCCEx_PeriphCLKConfig+0x408>
 8009184:	e00f      	b.n	80091a6 <HAL_RCCEx_PeriphCLKConfig+0x402>
 8009186:	4b56      	ldr	r3, [pc, #344]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009188:	68db      	ldr	r3, [r3, #12]
 800918a:	4a55      	ldr	r2, [pc, #340]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800918c:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009190:	60d3      	str	r3, [r2, #12]
 8009192:	e00c      	b.n	80091ae <HAL_RCCEx_PeriphCLKConfig+0x40a>
 8009194:	687b      	ldr	r3, [r7, #4]
 8009196:	3304      	adds	r3, #4
 8009198:	2100      	movs	r1, #0
 800919a:	4618      	mov	r0, r3
 800919c:	f000 f97c 	bl	8009498 <RCCEx_PLLSAI1_Config>
 80091a0:	4603      	mov	r3, r0
 80091a2:	77fb      	strb	r3, [r7, #31]
 80091a4:	e003      	b.n	80091ae <HAL_RCCEx_PeriphCLKConfig+0x40a>
 80091a6:	2301      	movs	r3, #1
 80091a8:	77fb      	strb	r3, [r7, #31]
 80091aa:	e000      	b.n	80091ae <HAL_RCCEx_PeriphCLKConfig+0x40a>
 80091ac:	bf00      	nop
 80091ae:	7ffb      	ldrb	r3, [r7, #31]
 80091b0:	2b00      	cmp	r3, #0
 80091b2:	d10b      	bne.n	80091cc <HAL_RCCEx_PeriphCLKConfig+0x428>
 80091b4:	4b4a      	ldr	r3, [pc, #296]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80091b6:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80091ba:	f023 7240 	bic.w	r2, r3, #50331648	; 0x3000000
 80091be:	687b      	ldr	r3, [r7, #4]
 80091c0:	6e9b      	ldr	r3, [r3, #104]	; 0x68
 80091c2:	4947      	ldr	r1, [pc, #284]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80091c4:	4313      	orrs	r3, r2
 80091c6:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80091ca:	e001      	b.n	80091d0 <HAL_RCCEx_PeriphCLKConfig+0x42c>
 80091cc:	7ffb      	ldrb	r3, [r7, #31]
 80091ce:	77bb      	strb	r3, [r7, #30]
 80091d0:	687b      	ldr	r3, [r7, #4]
 80091d2:	681b      	ldr	r3, [r3, #0]
 80091d4:	f003 0340 	and.w	r3, r3, #64	; 0x40
 80091d8:	2b00      	cmp	r3, #0
 80091da:	d00a      	beq.n	80091f2 <HAL_RCCEx_PeriphCLKConfig+0x44e>
 80091dc:	4b40      	ldr	r3, [pc, #256]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80091de:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80091e2:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80091e6:	687b      	ldr	r3, [r7, #4]
 80091e8:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 80091ea:	493d      	ldr	r1, [pc, #244]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80091ec:	4313      	orrs	r3, r2
 80091ee:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80091f2:	687b      	ldr	r3, [r7, #4]
 80091f4:	681b      	ldr	r3, [r3, #0]
 80091f6:	f003 0380 	and.w	r3, r3, #128	; 0x80
 80091fa:	2b00      	cmp	r3, #0
 80091fc:	d00a      	beq.n	8009214 <HAL_RCCEx_PeriphCLKConfig+0x470>
 80091fe:	4b38      	ldr	r3, [pc, #224]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009200:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009204:	f423 4240 	bic.w	r2, r3, #49152	; 0xc000
 8009208:	687b      	ldr	r3, [r7, #4]
 800920a:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 800920c:	4934      	ldr	r1, [pc, #208]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800920e:	4313      	orrs	r3, r2
 8009210:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009214:	687b      	ldr	r3, [r7, #4]
 8009216:	681b      	ldr	r3, [r3, #0]
 8009218:	f403 7380 	and.w	r3, r3, #256	; 0x100
 800921c:	2b00      	cmp	r3, #0
 800921e:	d00a      	beq.n	8009236 <HAL_RCCEx_PeriphCLKConfig+0x492>
 8009220:	4b2f      	ldr	r3, [pc, #188]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009222:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009226:	f423 3240 	bic.w	r2, r3, #196608	; 0x30000
 800922a:	687b      	ldr	r3, [r7, #4]
 800922c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 800922e:	492c      	ldr	r1, [pc, #176]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009230:	4313      	orrs	r3, r2
 8009232:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009236:	687b      	ldr	r3, [r7, #4]
 8009238:	681b      	ldr	r3, [r3, #0]
 800923a:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 800923e:	2b00      	cmp	r3, #0
 8009240:	d00a      	beq.n	8009258 <HAL_RCCEx_PeriphCLKConfig+0x4b4>
 8009242:	4b27      	ldr	r3, [pc, #156]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009244:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8009248:	f023 0203 	bic.w	r2, r3, #3
 800924c:	687b      	ldr	r3, [r7, #4]
 800924e:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8009250:	4923      	ldr	r1, [pc, #140]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009252:	4313      	orrs	r3, r2
 8009254:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 8009258:	687b      	ldr	r3, [r7, #4]
 800925a:	681b      	ldr	r3, [r3, #0]
 800925c:	f403 5300 	and.w	r3, r3, #8192	; 0x2000
 8009260:	2b00      	cmp	r3, #0
 8009262:	d028      	beq.n	80092b6 <HAL_RCCEx_PeriphCLKConfig+0x512>
 8009264:	4b1e      	ldr	r3, [pc, #120]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009266:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800926a:	f023 6240 	bic.w	r2, r3, #201326592	; 0xc000000
 800926e:	687b      	ldr	r3, [r7, #4]
 8009270:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8009272:	491b      	ldr	r1, [pc, #108]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009274:	4313      	orrs	r3, r2
 8009276:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 800927a:	687b      	ldr	r3, [r7, #4]
 800927c:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 800927e:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
 8009282:	d106      	bne.n	8009292 <HAL_RCCEx_PeriphCLKConfig+0x4ee>
 8009284:	4b16      	ldr	r3, [pc, #88]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 8009286:	68db      	ldr	r3, [r3, #12]
 8009288:	4a15      	ldr	r2, [pc, #84]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 800928a:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800928e:	60d3      	str	r3, [r2, #12]
 8009290:	e011      	b.n	80092b6 <HAL_RCCEx_PeriphCLKConfig+0x512>
 8009292:	687b      	ldr	r3, [r7, #4]
 8009294:	6f5b      	ldr	r3, [r3, #116]	; 0x74
 8009296:	f1b3 6f80 	cmp.w	r3, #67108864	; 0x4000000
 800929a:	d10c      	bne.n	80092b6 <HAL_RCCEx_PeriphCLKConfig+0x512>
 800929c:	687b      	ldr	r3, [r7, #4]
 800929e:	3304      	adds	r3, #4
 80092a0:	2101      	movs	r1, #1
 80092a2:	4618      	mov	r0, r3
 80092a4:	f000 f8f8 	bl	8009498 <RCCEx_PLLSAI1_Config>
 80092a8:	4603      	mov	r3, r0
 80092aa:	77fb      	strb	r3, [r7, #31]
 80092ac:	7ffb      	ldrb	r3, [r7, #31]
 80092ae:	2b00      	cmp	r3, #0
 80092b0:	d001      	beq.n	80092b6 <HAL_RCCEx_PeriphCLKConfig+0x512>
 80092b2:	7ffb      	ldrb	r3, [r7, #31]
 80092b4:	77bb      	strb	r3, [r7, #30]
 80092b6:	687b      	ldr	r3, [r7, #4]
 80092b8:	681b      	ldr	r3, [r3, #0]
 80092ba:	f403 2300 	and.w	r3, r3, #524288	; 0x80000
 80092be:	2b00      	cmp	r3, #0
 80092c0:	d04d      	beq.n	800935e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
 80092c2:	687b      	ldr	r3, [r7, #4]
 80092c4:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 80092c6:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 80092ca:	d10b      	bne.n	80092e4 <HAL_RCCEx_PeriphCLKConfig+0x540>
 80092cc:	4b04      	ldr	r3, [pc, #16]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80092ce:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 80092d2:	4a03      	ldr	r2, [pc, #12]	; (80092e0 <HAL_RCCEx_PeriphCLKConfig+0x53c>)
 80092d4:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 80092d8:	f8c2 309c 	str.w	r3, [r2, #156]	; 0x9c
 80092dc:	e015      	b.n	800930a <HAL_RCCEx_PeriphCLKConfig+0x566>
 80092de:	bf00      	nop
 80092e0:	40021000 	.word	0x40021000
 80092e4:	4b6b      	ldr	r3, [pc, #428]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80092e6:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80092ea:	f023 6240 	bic.w	r2, r3, #201326592	; 0xc000000
 80092ee:	687b      	ldr	r3, [r7, #4]
 80092f0:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 80092f2:	4968      	ldr	r1, [pc, #416]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80092f4:	4313      	orrs	r3, r2
 80092f6:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80092fa:	4b66      	ldr	r3, [pc, #408]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80092fc:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8009300:	4a64      	ldr	r2, [pc, #400]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009302:	f423 4380 	bic.w	r3, r3, #16384	; 0x4000
 8009306:	f8c2 309c 	str.w	r3, [r2, #156]	; 0x9c
 800930a:	687b      	ldr	r3, [r7, #4]
 800930c:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 800930e:	f1b3 6f80 	cmp.w	r3, #67108864	; 0x4000000
 8009312:	d10d      	bne.n	8009330 <HAL_RCCEx_PeriphCLKConfig+0x58c>
 8009314:	687b      	ldr	r3, [r7, #4]
 8009316:	3304      	adds	r3, #4
 8009318:	2101      	movs	r1, #1
 800931a:	4618      	mov	r0, r3
 800931c:	f000 f8bc 	bl	8009498 <RCCEx_PLLSAI1_Config>
 8009320:	4603      	mov	r3, r0
 8009322:	77fb      	strb	r3, [r7, #31]
 8009324:	7ffb      	ldrb	r3, [r7, #31]
 8009326:	2b00      	cmp	r3, #0
 8009328:	d019      	beq.n	800935e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
 800932a:	7ffb      	ldrb	r3, [r7, #31]
 800932c:	77bb      	strb	r3, [r7, #30]
 800932e:	e016      	b.n	800935e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
 8009330:	687b      	ldr	r3, [r7, #4]
 8009332:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 8009334:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
 8009338:	d106      	bne.n	8009348 <HAL_RCCEx_PeriphCLKConfig+0x5a4>
 800933a:	4b56      	ldr	r3, [pc, #344]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800933c:	68db      	ldr	r3, [r3, #12]
 800933e:	4a55      	ldr	r2, [pc, #340]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009340:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009344:	60d3      	str	r3, [r2, #12]
 8009346:	e00a      	b.n	800935e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
 8009348:	687b      	ldr	r3, [r7, #4]
 800934a:	6f9b      	ldr	r3, [r3, #120]	; 0x78
 800934c:	f5b3 4f80 	cmp.w	r3, #16384	; 0x4000
 8009350:	d105      	bne.n	800935e <HAL_RCCEx_PeriphCLKConfig+0x5ba>
 8009352:	4b50      	ldr	r3, [pc, #320]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009354:	68db      	ldr	r3, [r3, #12]
 8009356:	4a4f      	ldr	r2, [pc, #316]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009358:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 800935c:	60d3      	str	r3, [r2, #12]
 800935e:	687b      	ldr	r3, [r7, #4]
 8009360:	681b      	ldr	r3, [r3, #0]
 8009362:	f403 2380 	and.w	r3, r3, #262144	; 0x40000
 8009366:	2b00      	cmp	r3, #0
 8009368:	d028      	beq.n	80093bc <HAL_RCCEx_PeriphCLKConfig+0x618>
 800936a:	4b4a      	ldr	r3, [pc, #296]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800936c:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009370:	f023 6240 	bic.w	r2, r3, #201326592	; 0xc000000
 8009374:	687b      	ldr	r3, [r7, #4]
 8009376:	6fdb      	ldr	r3, [r3, #124]	; 0x7c
 8009378:	4946      	ldr	r1, [pc, #280]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800937a:	4313      	orrs	r3, r2
 800937c:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 8009380:	687b      	ldr	r3, [r7, #4]
 8009382:	6fdb      	ldr	r3, [r3, #124]	; 0x7c
 8009384:	f1b3 6f00 	cmp.w	r3, #134217728	; 0x8000000
 8009388:	d106      	bne.n	8009398 <HAL_RCCEx_PeriphCLKConfig+0x5f4>
 800938a:	4b42      	ldr	r3, [pc, #264]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800938c:	68db      	ldr	r3, [r3, #12]
 800938e:	4a41      	ldr	r2, [pc, #260]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009390:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009394:	60d3      	str	r3, [r2, #12]
 8009396:	e011      	b.n	80093bc <HAL_RCCEx_PeriphCLKConfig+0x618>
 8009398:	687b      	ldr	r3, [r7, #4]
 800939a:	6fdb      	ldr	r3, [r3, #124]	; 0x7c
 800939c:	f1b3 6f80 	cmp.w	r3, #67108864	; 0x4000000
 80093a0:	d10c      	bne.n	80093bc <HAL_RCCEx_PeriphCLKConfig+0x618>
 80093a2:	687b      	ldr	r3, [r7, #4]
 80093a4:	3304      	adds	r3, #4
 80093a6:	2101      	movs	r1, #1
 80093a8:	4618      	mov	r0, r3
 80093aa:	f000 f875 	bl	8009498 <RCCEx_PLLSAI1_Config>
 80093ae:	4603      	mov	r3, r0
 80093b0:	77fb      	strb	r3, [r7, #31]
 80093b2:	7ffb      	ldrb	r3, [r7, #31]
 80093b4:	2b00      	cmp	r3, #0
 80093b6:	d001      	beq.n	80093bc <HAL_RCCEx_PeriphCLKConfig+0x618>
 80093b8:	7ffb      	ldrb	r3, [r7, #31]
 80093ba:	77bb      	strb	r3, [r7, #30]
 80093bc:	687b      	ldr	r3, [r7, #4]
 80093be:	681b      	ldr	r3, [r3, #0]
 80093c0:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 80093c4:	2b00      	cmp	r3, #0
 80093c6:	d01e      	beq.n	8009406 <HAL_RCCEx_PeriphCLKConfig+0x662>
 80093c8:	4b32      	ldr	r3, [pc, #200]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80093ca:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80093ce:	f023 5240 	bic.w	r2, r3, #805306368	; 0x30000000
 80093d2:	687b      	ldr	r3, [r7, #4]
 80093d4:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 80093d8:	492e      	ldr	r1, [pc, #184]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 80093da:	4313      	orrs	r3, r2
 80093dc:	f8c1 3088 	str.w	r3, [r1, #136]	; 0x88
 80093e0:	687b      	ldr	r3, [r7, #4]
 80093e2:	f8d3 3080 	ldr.w	r3, [r3, #128]	; 0x80
 80093e6:	f1b3 5f80 	cmp.w	r3, #268435456	; 0x10000000
 80093ea:	d10c      	bne.n	8009406 <HAL_RCCEx_PeriphCLKConfig+0x662>
 80093ec:	687b      	ldr	r3, [r7, #4]
 80093ee:	3304      	adds	r3, #4
 80093f0:	2102      	movs	r1, #2
 80093f2:	4618      	mov	r0, r3
 80093f4:	f000 f850 	bl	8009498 <RCCEx_PLLSAI1_Config>
 80093f8:	4603      	mov	r3, r0
 80093fa:	77fb      	strb	r3, [r7, #31]
 80093fc:	7ffb      	ldrb	r3, [r7, #31]
 80093fe:	2b00      	cmp	r3, #0
 8009400:	d001      	beq.n	8009406 <HAL_RCCEx_PeriphCLKConfig+0x662>
 8009402:	7ffb      	ldrb	r3, [r7, #31]
 8009404:	77bb      	strb	r3, [r7, #30]
 8009406:	687b      	ldr	r3, [r7, #4]
 8009408:	681b      	ldr	r3, [r3, #0]
 800940a:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 800940e:	2b00      	cmp	r3, #0
 8009410:	d00b      	beq.n	800942a <HAL_RCCEx_PeriphCLKConfig+0x686>
 8009412:	4b20      	ldr	r3, [pc, #128]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009414:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8009418:	f023 0204 	bic.w	r2, r3, #4
 800941c:	687b      	ldr	r3, [r7, #4]
 800941e:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8009422:	491c      	ldr	r1, [pc, #112]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009424:	4313      	orrs	r3, r2
 8009426:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 800942a:	687b      	ldr	r3, [r7, #4]
 800942c:	681b      	ldr	r3, [r3, #0]
 800942e:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 8009432:	2b00      	cmp	r3, #0
 8009434:	d00b      	beq.n	800944e <HAL_RCCEx_PeriphCLKConfig+0x6aa>
 8009436:	4b17      	ldr	r3, [pc, #92]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009438:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 800943c:	f023 0218 	bic.w	r2, r3, #24
 8009440:	687b      	ldr	r3, [r7, #4]
 8009442:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009446:	4913      	ldr	r1, [pc, #76]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009448:	4313      	orrs	r3, r2
 800944a:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 800944e:	687b      	ldr	r3, [r7, #4]
 8009450:	681b      	ldr	r3, [r3, #0]
 8009452:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8009456:	2b00      	cmp	r3, #0
 8009458:	d017      	beq.n	800948a <HAL_RCCEx_PeriphCLKConfig+0x6e6>
 800945a:	4b0e      	ldr	r3, [pc, #56]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800945c:	f8d3 309c 	ldr.w	r3, [r3, #156]	; 0x9c
 8009460:	f423 1240 	bic.w	r2, r3, #3145728	; 0x300000
 8009464:	687b      	ldr	r3, [r7, #4]
 8009466:	f8d3 308c 	ldr.w	r3, [r3, #140]	; 0x8c
 800946a:	490a      	ldr	r1, [pc, #40]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 800946c:	4313      	orrs	r3, r2
 800946e:	f8c1 309c 	str.w	r3, [r1, #156]	; 0x9c
 8009472:	687b      	ldr	r3, [r7, #4]
 8009474:	f8d3 308c 	ldr.w	r3, [r3, #140]	; 0x8c
 8009478:	f5b3 1f00 	cmp.w	r3, #2097152	; 0x200000
 800947c:	d105      	bne.n	800948a <HAL_RCCEx_PeriphCLKConfig+0x6e6>
 800947e:	4b05      	ldr	r3, [pc, #20]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009480:	68db      	ldr	r3, [r3, #12]
 8009482:	4a04      	ldr	r2, [pc, #16]	; (8009494 <HAL_RCCEx_PeriphCLKConfig+0x6f0>)
 8009484:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8009488:	60d3      	str	r3, [r2, #12]
 800948a:	7fbb      	ldrb	r3, [r7, #30]
 800948c:	4618      	mov	r0, r3
 800948e:	3720      	adds	r7, #32
 8009490:	46bd      	mov	sp, r7
 8009492:	bd80      	pop	{r7, pc}
 8009494:	40021000 	.word	0x40021000

08009498 <RCCEx_PLLSAI1_Config>:
 8009498:	b580      	push	{r7, lr}
 800949a:	b084      	sub	sp, #16
 800949c:	af00      	add	r7, sp, #0
 800949e:	6078      	str	r0, [r7, #4]
 80094a0:	6039      	str	r1, [r7, #0]
 80094a2:	2300      	movs	r3, #0
 80094a4:	73fb      	strb	r3, [r7, #15]
 80094a6:	687b      	ldr	r3, [r7, #4]
 80094a8:	681b      	ldr	r3, [r3, #0]
 80094aa:	2b02      	cmp	r3, #2
 80094ac:	d00c      	beq.n	80094c8 <RCCEx_PLLSAI1_Config+0x30>
 80094ae:	2b03      	cmp	r3, #3
 80094b0:	d013      	beq.n	80094da <RCCEx_PLLSAI1_Config+0x42>
 80094b2:	2b01      	cmp	r3, #1
 80094b4:	d11a      	bne.n	80094ec <RCCEx_PLLSAI1_Config+0x54>
 80094b6:	4b65      	ldr	r3, [pc, #404]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80094b8:	681b      	ldr	r3, [r3, #0]
 80094ba:	f003 0302 	and.w	r3, r3, #2
 80094be:	2b00      	cmp	r3, #0
 80094c0:	d117      	bne.n	80094f2 <RCCEx_PLLSAI1_Config+0x5a>
 80094c2:	2301      	movs	r3, #1
 80094c4:	73fb      	strb	r3, [r7, #15]
 80094c6:	e014      	b.n	80094f2 <RCCEx_PLLSAI1_Config+0x5a>
 80094c8:	4b60      	ldr	r3, [pc, #384]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80094ca:	681b      	ldr	r3, [r3, #0]
 80094cc:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80094d0:	2b00      	cmp	r3, #0
 80094d2:	d110      	bne.n	80094f6 <RCCEx_PLLSAI1_Config+0x5e>
 80094d4:	2301      	movs	r3, #1
 80094d6:	73fb      	strb	r3, [r7, #15]
 80094d8:	e00d      	b.n	80094f6 <RCCEx_PLLSAI1_Config+0x5e>
 80094da:	4b5c      	ldr	r3, [pc, #368]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80094dc:	681b      	ldr	r3, [r3, #0]
 80094de:	f403 23c0 	and.w	r3, r3, #393216	; 0x60000
 80094e2:	2b00      	cmp	r3, #0
 80094e4:	d109      	bne.n	80094fa <RCCEx_PLLSAI1_Config+0x62>
 80094e6:	2301      	movs	r3, #1
 80094e8:	73fb      	strb	r3, [r7, #15]
 80094ea:	e006      	b.n	80094fa <RCCEx_PLLSAI1_Config+0x62>
 80094ec:	2301      	movs	r3, #1
 80094ee:	73fb      	strb	r3, [r7, #15]
 80094f0:	e004      	b.n	80094fc <RCCEx_PLLSAI1_Config+0x64>
 80094f2:	bf00      	nop
 80094f4:	e002      	b.n	80094fc <RCCEx_PLLSAI1_Config+0x64>
 80094f6:	bf00      	nop
 80094f8:	e000      	b.n	80094fc <RCCEx_PLLSAI1_Config+0x64>
 80094fa:	bf00      	nop
 80094fc:	7bfb      	ldrb	r3, [r7, #15]
 80094fe:	2b00      	cmp	r3, #0
 8009500:	f040 809f 	bne.w	8009642 <RCCEx_PLLSAI1_Config+0x1aa>
 8009504:	4b51      	ldr	r3, [pc, #324]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 8009506:	681b      	ldr	r3, [r3, #0]
 8009508:	4a50      	ldr	r2, [pc, #320]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 800950a:	f023 6380 	bic.w	r3, r3, #67108864	; 0x4000000
 800950e:	6013      	str	r3, [r2, #0]
 8009510:	f7fe f8d6 	bl	80076c0 <HAL_GetTick>
 8009514:	60b8      	str	r0, [r7, #8]
 8009516:	e00f      	b.n	8009538 <RCCEx_PLLSAI1_Config+0xa0>
 8009518:	f7fe f8d2 	bl	80076c0 <HAL_GetTick>
 800951c:	4602      	mov	r2, r0
 800951e:	68bb      	ldr	r3, [r7, #8]
 8009520:	1ad3      	subs	r3, r2, r3
 8009522:	2b02      	cmp	r3, #2
 8009524:	d908      	bls.n	8009538 <RCCEx_PLLSAI1_Config+0xa0>
 8009526:	4b49      	ldr	r3, [pc, #292]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 8009528:	681b      	ldr	r3, [r3, #0]
 800952a:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 800952e:	2b00      	cmp	r3, #0
 8009530:	d009      	beq.n	8009546 <RCCEx_PLLSAI1_Config+0xae>
 8009532:	2303      	movs	r3, #3
 8009534:	73fb      	strb	r3, [r7, #15]
 8009536:	e006      	b.n	8009546 <RCCEx_PLLSAI1_Config+0xae>
 8009538:	4b44      	ldr	r3, [pc, #272]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 800953a:	681b      	ldr	r3, [r3, #0]
 800953c:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 8009540:	2b00      	cmp	r3, #0
 8009542:	d1e9      	bne.n	8009518 <RCCEx_PLLSAI1_Config+0x80>
 8009544:	e000      	b.n	8009548 <RCCEx_PLLSAI1_Config+0xb0>
 8009546:	bf00      	nop
 8009548:	7bfb      	ldrb	r3, [r7, #15]
 800954a:	2b00      	cmp	r3, #0
 800954c:	d179      	bne.n	8009642 <RCCEx_PLLSAI1_Config+0x1aa>
 800954e:	683b      	ldr	r3, [r7, #0]
 8009550:	2b00      	cmp	r3, #0
 8009552:	d116      	bne.n	8009582 <RCCEx_PLLSAI1_Config+0xea>
 8009554:	4b3d      	ldr	r3, [pc, #244]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 8009556:	691a      	ldr	r2, [r3, #16]
 8009558:	4b3d      	ldr	r3, [pc, #244]	; (8009650 <RCCEx_PLLSAI1_Config+0x1b8>)
 800955a:	4013      	ands	r3, r2
 800955c:	687a      	ldr	r2, [r7, #4]
 800955e:	6892      	ldr	r2, [r2, #8]
 8009560:	0211      	lsls	r1, r2, #8
 8009562:	687a      	ldr	r2, [r7, #4]
 8009564:	68d2      	ldr	r2, [r2, #12]
 8009566:	06d2      	lsls	r2, r2, #27
 8009568:	4311      	orrs	r1, r2
 800956a:	687a      	ldr	r2, [r7, #4]
 800956c:	6852      	ldr	r2, [r2, #4]
 800956e:	3a01      	subs	r2, #1
 8009570:	0112      	lsls	r2, r2, #4
 8009572:	4311      	orrs	r1, r2
 8009574:	687a      	ldr	r2, [r7, #4]
 8009576:	6812      	ldr	r2, [r2, #0]
 8009578:	430a      	orrs	r2, r1
 800957a:	4934      	ldr	r1, [pc, #208]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 800957c:	4313      	orrs	r3, r2
 800957e:	610b      	str	r3, [r1, #16]
 8009580:	e033      	b.n	80095ea <RCCEx_PLLSAI1_Config+0x152>
 8009582:	683b      	ldr	r3, [r7, #0]
 8009584:	2b01      	cmp	r3, #1
 8009586:	d118      	bne.n	80095ba <RCCEx_PLLSAI1_Config+0x122>
 8009588:	4b30      	ldr	r3, [pc, #192]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 800958a:	691a      	ldr	r2, [r3, #16]
 800958c:	4b31      	ldr	r3, [pc, #196]	; (8009654 <RCCEx_PLLSAI1_Config+0x1bc>)
 800958e:	4013      	ands	r3, r2
 8009590:	687a      	ldr	r2, [r7, #4]
 8009592:	6892      	ldr	r2, [r2, #8]
 8009594:	0211      	lsls	r1, r2, #8
 8009596:	687a      	ldr	r2, [r7, #4]
 8009598:	6912      	ldr	r2, [r2, #16]
 800959a:	0852      	lsrs	r2, r2, #1
 800959c:	3a01      	subs	r2, #1
 800959e:	0552      	lsls	r2, r2, #21
 80095a0:	4311      	orrs	r1, r2
 80095a2:	687a      	ldr	r2, [r7, #4]
 80095a4:	6852      	ldr	r2, [r2, #4]
 80095a6:	3a01      	subs	r2, #1
 80095a8:	0112      	lsls	r2, r2, #4
 80095aa:	4311      	orrs	r1, r2
 80095ac:	687a      	ldr	r2, [r7, #4]
 80095ae:	6812      	ldr	r2, [r2, #0]
 80095b0:	430a      	orrs	r2, r1
 80095b2:	4926      	ldr	r1, [pc, #152]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80095b4:	4313      	orrs	r3, r2
 80095b6:	610b      	str	r3, [r1, #16]
 80095b8:	e017      	b.n	80095ea <RCCEx_PLLSAI1_Config+0x152>
 80095ba:	4b24      	ldr	r3, [pc, #144]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80095bc:	691a      	ldr	r2, [r3, #16]
 80095be:	4b26      	ldr	r3, [pc, #152]	; (8009658 <RCCEx_PLLSAI1_Config+0x1c0>)
 80095c0:	4013      	ands	r3, r2
 80095c2:	687a      	ldr	r2, [r7, #4]
 80095c4:	6892      	ldr	r2, [r2, #8]
 80095c6:	0211      	lsls	r1, r2, #8
 80095c8:	687a      	ldr	r2, [r7, #4]
 80095ca:	6952      	ldr	r2, [r2, #20]
 80095cc:	0852      	lsrs	r2, r2, #1
 80095ce:	3a01      	subs	r2, #1
 80095d0:	0652      	lsls	r2, r2, #25
 80095d2:	4311      	orrs	r1, r2
 80095d4:	687a      	ldr	r2, [r7, #4]
 80095d6:	6852      	ldr	r2, [r2, #4]
 80095d8:	3a01      	subs	r2, #1
 80095da:	0112      	lsls	r2, r2, #4
 80095dc:	4311      	orrs	r1, r2
 80095de:	687a      	ldr	r2, [r7, #4]
 80095e0:	6812      	ldr	r2, [r2, #0]
 80095e2:	430a      	orrs	r2, r1
 80095e4:	4919      	ldr	r1, [pc, #100]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80095e6:	4313      	orrs	r3, r2
 80095e8:	610b      	str	r3, [r1, #16]
 80095ea:	4b18      	ldr	r3, [pc, #96]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80095ec:	681b      	ldr	r3, [r3, #0]
 80095ee:	4a17      	ldr	r2, [pc, #92]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 80095f0:	f043 6380 	orr.w	r3, r3, #67108864	; 0x4000000
 80095f4:	6013      	str	r3, [r2, #0]
 80095f6:	f7fe f863 	bl	80076c0 <HAL_GetTick>
 80095fa:	60b8      	str	r0, [r7, #8]
 80095fc:	e00f      	b.n	800961e <RCCEx_PLLSAI1_Config+0x186>
 80095fe:	f7fe f85f 	bl	80076c0 <HAL_GetTick>
 8009602:	4602      	mov	r2, r0
 8009604:	68bb      	ldr	r3, [r7, #8]
 8009606:	1ad3      	subs	r3, r2, r3
 8009608:	2b02      	cmp	r3, #2
 800960a:	d908      	bls.n	800961e <RCCEx_PLLSAI1_Config+0x186>
 800960c:	4b0f      	ldr	r3, [pc, #60]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 800960e:	681b      	ldr	r3, [r3, #0]
 8009610:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 8009614:	2b00      	cmp	r3, #0
 8009616:	d109      	bne.n	800962c <RCCEx_PLLSAI1_Config+0x194>
 8009618:	2303      	movs	r3, #3
 800961a:	73fb      	strb	r3, [r7, #15]
 800961c:	e006      	b.n	800962c <RCCEx_PLLSAI1_Config+0x194>
 800961e:	4b0b      	ldr	r3, [pc, #44]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 8009620:	681b      	ldr	r3, [r3, #0]
 8009622:	f003 6300 	and.w	r3, r3, #134217728	; 0x8000000
 8009626:	2b00      	cmp	r3, #0
 8009628:	d0e9      	beq.n	80095fe <RCCEx_PLLSAI1_Config+0x166>
 800962a:	e000      	b.n	800962e <RCCEx_PLLSAI1_Config+0x196>
 800962c:	bf00      	nop
 800962e:	7bfb      	ldrb	r3, [r7, #15]
 8009630:	2b00      	cmp	r3, #0
 8009632:	d106      	bne.n	8009642 <RCCEx_PLLSAI1_Config+0x1aa>
 8009634:	4b05      	ldr	r3, [pc, #20]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 8009636:	691a      	ldr	r2, [r3, #16]
 8009638:	687b      	ldr	r3, [r7, #4]
 800963a:	699b      	ldr	r3, [r3, #24]
 800963c:	4903      	ldr	r1, [pc, #12]	; (800964c <RCCEx_PLLSAI1_Config+0x1b4>)
 800963e:	4313      	orrs	r3, r2
 8009640:	610b      	str	r3, [r1, #16]
 8009642:	7bfb      	ldrb	r3, [r7, #15]
 8009644:	4618      	mov	r0, r3
 8009646:	3710      	adds	r7, #16
 8009648:	46bd      	mov	sp, r7
 800964a:	bd80      	pop	{r7, pc}
 800964c:	40021000 	.word	0x40021000
 8009650:	07ff800c 	.word	0x07ff800c
 8009654:	ff9f800c 	.word	0xff9f800c
 8009658:	f9ff800c 	.word	0xf9ff800c

0800965c <RCCEx_PLLSAI2_Config>:
 800965c:	b580      	push	{r7, lr}
 800965e:	b084      	sub	sp, #16
 8009660:	af00      	add	r7, sp, #0
 8009662:	6078      	str	r0, [r7, #4]
 8009664:	6039      	str	r1, [r7, #0]
 8009666:	2300      	movs	r3, #0
 8009668:	73fb      	strb	r3, [r7, #15]
 800966a:	687b      	ldr	r3, [r7, #4]
 800966c:	681b      	ldr	r3, [r3, #0]
 800966e:	2b02      	cmp	r3, #2
 8009670:	d00c      	beq.n	800968c <RCCEx_PLLSAI2_Config+0x30>
 8009672:	2b03      	cmp	r3, #3
 8009674:	d013      	beq.n	800969e <RCCEx_PLLSAI2_Config+0x42>
 8009676:	2b01      	cmp	r3, #1
 8009678:	d11a      	bne.n	80096b0 <RCCEx_PLLSAI2_Config+0x54>
 800967a:	4b4a      	ldr	r3, [pc, #296]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 800967c:	681b      	ldr	r3, [r3, #0]
 800967e:	f003 0302 	and.w	r3, r3, #2
 8009682:	2b00      	cmp	r3, #0
 8009684:	d117      	bne.n	80096b6 <RCCEx_PLLSAI2_Config+0x5a>
 8009686:	2301      	movs	r3, #1
 8009688:	73fb      	strb	r3, [r7, #15]
 800968a:	e014      	b.n	80096b6 <RCCEx_PLLSAI2_Config+0x5a>
 800968c:	4b45      	ldr	r3, [pc, #276]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 800968e:	681b      	ldr	r3, [r3, #0]
 8009690:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8009694:	2b00      	cmp	r3, #0
 8009696:	d110      	bne.n	80096ba <RCCEx_PLLSAI2_Config+0x5e>
 8009698:	2301      	movs	r3, #1
 800969a:	73fb      	strb	r3, [r7, #15]
 800969c:	e00d      	b.n	80096ba <RCCEx_PLLSAI2_Config+0x5e>
 800969e:	4b41      	ldr	r3, [pc, #260]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 80096a0:	681b      	ldr	r3, [r3, #0]
 80096a2:	f403 23c0 	and.w	r3, r3, #393216	; 0x60000
 80096a6:	2b00      	cmp	r3, #0
 80096a8:	d109      	bne.n	80096be <RCCEx_PLLSAI2_Config+0x62>
 80096aa:	2301      	movs	r3, #1
 80096ac:	73fb      	strb	r3, [r7, #15]
 80096ae:	e006      	b.n	80096be <RCCEx_PLLSAI2_Config+0x62>
 80096b0:	2301      	movs	r3, #1
 80096b2:	73fb      	strb	r3, [r7, #15]
 80096b4:	e004      	b.n	80096c0 <RCCEx_PLLSAI2_Config+0x64>
 80096b6:	bf00      	nop
 80096b8:	e002      	b.n	80096c0 <RCCEx_PLLSAI2_Config+0x64>
 80096ba:	bf00      	nop
 80096bc:	e000      	b.n	80096c0 <RCCEx_PLLSAI2_Config+0x64>
 80096be:	bf00      	nop
 80096c0:	7bfb      	ldrb	r3, [r7, #15]
 80096c2:	2b00      	cmp	r3, #0
 80096c4:	d169      	bne.n	800979a <RCCEx_PLLSAI2_Config+0x13e>
 80096c6:	4b37      	ldr	r3, [pc, #220]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 80096c8:	681b      	ldr	r3, [r3, #0]
 80096ca:	4a36      	ldr	r2, [pc, #216]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 80096cc:	f023 5380 	bic.w	r3, r3, #268435456	; 0x10000000
 80096d0:	6013      	str	r3, [r2, #0]
 80096d2:	f7fd fff5 	bl	80076c0 <HAL_GetTick>
 80096d6:	60b8      	str	r0, [r7, #8]
 80096d8:	e00f      	b.n	80096fa <RCCEx_PLLSAI2_Config+0x9e>
 80096da:	f7fd fff1 	bl	80076c0 <HAL_GetTick>
 80096de:	4602      	mov	r2, r0
 80096e0:	68bb      	ldr	r3, [r7, #8]
 80096e2:	1ad3      	subs	r3, r2, r3
 80096e4:	2b02      	cmp	r3, #2
 80096e6:	d908      	bls.n	80096fa <RCCEx_PLLSAI2_Config+0x9e>
 80096e8:	4b2e      	ldr	r3, [pc, #184]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 80096ea:	681b      	ldr	r3, [r3, #0]
 80096ec:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 80096f0:	2b00      	cmp	r3, #0
 80096f2:	d009      	beq.n	8009708 <RCCEx_PLLSAI2_Config+0xac>
 80096f4:	2303      	movs	r3, #3
 80096f6:	73fb      	strb	r3, [r7, #15]
 80096f8:	e006      	b.n	8009708 <RCCEx_PLLSAI2_Config+0xac>
 80096fa:	4b2a      	ldr	r3, [pc, #168]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 80096fc:	681b      	ldr	r3, [r3, #0]
 80096fe:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 8009702:	2b00      	cmp	r3, #0
 8009704:	d1e9      	bne.n	80096da <RCCEx_PLLSAI2_Config+0x7e>
 8009706:	e000      	b.n	800970a <RCCEx_PLLSAI2_Config+0xae>
 8009708:	bf00      	nop
 800970a:	7bfb      	ldrb	r3, [r7, #15]
 800970c:	2b00      	cmp	r3, #0
 800970e:	d144      	bne.n	800979a <RCCEx_PLLSAI2_Config+0x13e>
 8009710:	683b      	ldr	r3, [r7, #0]
 8009712:	2b00      	cmp	r3, #0
 8009714:	d115      	bne.n	8009742 <RCCEx_PLLSAI2_Config+0xe6>
 8009716:	4b23      	ldr	r3, [pc, #140]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 8009718:	695a      	ldr	r2, [r3, #20]
 800971a:	4b23      	ldr	r3, [pc, #140]	; (80097a8 <RCCEx_PLLSAI2_Config+0x14c>)
 800971c:	4013      	ands	r3, r2
 800971e:	687a      	ldr	r2, [r7, #4]
 8009720:	6892      	ldr	r2, [r2, #8]
 8009722:	0211      	lsls	r1, r2, #8
 8009724:	687a      	ldr	r2, [r7, #4]
 8009726:	68d2      	ldr	r2, [r2, #12]
 8009728:	06d2      	lsls	r2, r2, #27
 800972a:	4311      	orrs	r1, r2
 800972c:	687a      	ldr	r2, [r7, #4]
 800972e:	6852      	ldr	r2, [r2, #4]
 8009730:	3a01      	subs	r2, #1
 8009732:	0112      	lsls	r2, r2, #4
 8009734:	4311      	orrs	r1, r2
 8009736:	687a      	ldr	r2, [r7, #4]
 8009738:	6812      	ldr	r2, [r2, #0]
 800973a:	430a      	orrs	r2, r1
 800973c:	4919      	ldr	r1, [pc, #100]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 800973e:	4313      	orrs	r3, r2
 8009740:	614b      	str	r3, [r1, #20]
 8009742:	4b18      	ldr	r3, [pc, #96]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 8009744:	681b      	ldr	r3, [r3, #0]
 8009746:	4a17      	ldr	r2, [pc, #92]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 8009748:	f043 5380 	orr.w	r3, r3, #268435456	; 0x10000000
 800974c:	6013      	str	r3, [r2, #0]
 800974e:	f7fd ffb7 	bl	80076c0 <HAL_GetTick>
 8009752:	60b8      	str	r0, [r7, #8]
 8009754:	e00f      	b.n	8009776 <RCCEx_PLLSAI2_Config+0x11a>
 8009756:	f7fd ffb3 	bl	80076c0 <HAL_GetTick>
 800975a:	4602      	mov	r2, r0
 800975c:	68bb      	ldr	r3, [r7, #8]
 800975e:	1ad3      	subs	r3, r2, r3
 8009760:	2b02      	cmp	r3, #2
 8009762:	d908      	bls.n	8009776 <RCCEx_PLLSAI2_Config+0x11a>
 8009764:	4b0f      	ldr	r3, [pc, #60]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 8009766:	681b      	ldr	r3, [r3, #0]
 8009768:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 800976c:	2b00      	cmp	r3, #0
 800976e:	d109      	bne.n	8009784 <RCCEx_PLLSAI2_Config+0x128>
 8009770:	2303      	movs	r3, #3
 8009772:	73fb      	strb	r3, [r7, #15]
 8009774:	e006      	b.n	8009784 <RCCEx_PLLSAI2_Config+0x128>
 8009776:	4b0b      	ldr	r3, [pc, #44]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 8009778:	681b      	ldr	r3, [r3, #0]
 800977a:	f003 5300 	and.w	r3, r3, #536870912	; 0x20000000
 800977e:	2b00      	cmp	r3, #0
 8009780:	d0e9      	beq.n	8009756 <RCCEx_PLLSAI2_Config+0xfa>
 8009782:	e000      	b.n	8009786 <RCCEx_PLLSAI2_Config+0x12a>
 8009784:	bf00      	nop
 8009786:	7bfb      	ldrb	r3, [r7, #15]
 8009788:	2b00      	cmp	r3, #0
 800978a:	d106      	bne.n	800979a <RCCEx_PLLSAI2_Config+0x13e>
 800978c:	4b05      	ldr	r3, [pc, #20]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 800978e:	695a      	ldr	r2, [r3, #20]
 8009790:	687b      	ldr	r3, [r7, #4]
 8009792:	691b      	ldr	r3, [r3, #16]
 8009794:	4903      	ldr	r1, [pc, #12]	; (80097a4 <RCCEx_PLLSAI2_Config+0x148>)
 8009796:	4313      	orrs	r3, r2
 8009798:	614b      	str	r3, [r1, #20]
 800979a:	7bfb      	ldrb	r3, [r7, #15]
 800979c:	4618      	mov	r0, r3
 800979e:	3710      	adds	r7, #16
 80097a0:	46bd      	mov	sp, r7
 80097a2:	bd80      	pop	{r7, pc}
 80097a4:	40021000 	.word	0x40021000
 80097a8:	07ff800c 	.word	0x07ff800c

080097ac <HAL_UART_Init>:
 80097ac:	b580      	push	{r7, lr}
 80097ae:	b082      	sub	sp, #8
 80097b0:	af00      	add	r7, sp, #0
 80097b2:	6078      	str	r0, [r7, #4]
 80097b4:	687b      	ldr	r3, [r7, #4]
 80097b6:	2b00      	cmp	r3, #0
 80097b8:	d101      	bne.n	80097be <HAL_UART_Init+0x12>
 80097ba:	2301      	movs	r3, #1
 80097bc:	e042      	b.n	8009844 <HAL_UART_Init+0x98>
 80097be:	687b      	ldr	r3, [r7, #4]
 80097c0:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 80097c4:	2b00      	cmp	r3, #0
 80097c6:	d106      	bne.n	80097d6 <HAL_UART_Init+0x2a>
 80097c8:	687b      	ldr	r3, [r7, #4]
 80097ca:	2200      	movs	r2, #0
 80097cc:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 80097d0:	6878      	ldr	r0, [r7, #4]
 80097d2:	f7fd fd19 	bl	8007208 <HAL_UART_MspInit>
 80097d6:	687b      	ldr	r3, [r7, #4]
 80097d8:	2224      	movs	r2, #36	; 0x24
 80097da:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 80097de:	687b      	ldr	r3, [r7, #4]
 80097e0:	681b      	ldr	r3, [r3, #0]
 80097e2:	681a      	ldr	r2, [r3, #0]
 80097e4:	687b      	ldr	r3, [r7, #4]
 80097e6:	681b      	ldr	r3, [r3, #0]
 80097e8:	f022 0201 	bic.w	r2, r2, #1
 80097ec:	601a      	str	r2, [r3, #0]
 80097ee:	6878      	ldr	r0, [r7, #4]
 80097f0:	f000 f996 	bl	8009b20 <UART_SetConfig>
 80097f4:	4603      	mov	r3, r0
 80097f6:	2b01      	cmp	r3, #1
 80097f8:	d101      	bne.n	80097fe <HAL_UART_Init+0x52>
 80097fa:	2301      	movs	r3, #1
 80097fc:	e022      	b.n	8009844 <HAL_UART_Init+0x98>
 80097fe:	687b      	ldr	r3, [r7, #4]
 8009800:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8009802:	2b00      	cmp	r3, #0
 8009804:	d002      	beq.n	800980c <HAL_UART_Init+0x60>
 8009806:	6878      	ldr	r0, [r7, #4]
 8009808:	f000 fc5c 	bl	800a0c4 <UART_AdvFeatureConfig>
 800980c:	687b      	ldr	r3, [r7, #4]
 800980e:	681b      	ldr	r3, [r3, #0]
 8009810:	685a      	ldr	r2, [r3, #4]
 8009812:	687b      	ldr	r3, [r7, #4]
 8009814:	681b      	ldr	r3, [r3, #0]
 8009816:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 800981a:	605a      	str	r2, [r3, #4]
 800981c:	687b      	ldr	r3, [r7, #4]
 800981e:	681b      	ldr	r3, [r3, #0]
 8009820:	689a      	ldr	r2, [r3, #8]
 8009822:	687b      	ldr	r3, [r7, #4]
 8009824:	681b      	ldr	r3, [r3, #0]
 8009826:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 800982a:	609a      	str	r2, [r3, #8]
 800982c:	687b      	ldr	r3, [r7, #4]
 800982e:	681b      	ldr	r3, [r3, #0]
 8009830:	681a      	ldr	r2, [r3, #0]
 8009832:	687b      	ldr	r3, [r7, #4]
 8009834:	681b      	ldr	r3, [r3, #0]
 8009836:	f042 0201 	orr.w	r2, r2, #1
 800983a:	601a      	str	r2, [r3, #0]
 800983c:	6878      	ldr	r0, [r7, #4]
 800983e:	f000 fce2 	bl	800a206 <UART_CheckIdleState>
 8009842:	4603      	mov	r3, r0
 8009844:	4618      	mov	r0, r3
 8009846:	3708      	adds	r7, #8
 8009848:	46bd      	mov	sp, r7
 800984a:	bd80      	pop	{r7, pc}

0800984c <HAL_UART_Transmit>:
 800984c:	b580      	push	{r7, lr}
 800984e:	b08a      	sub	sp, #40	; 0x28
 8009850:	af02      	add	r7, sp, #8
 8009852:	60f8      	str	r0, [r7, #12]
 8009854:	60b9      	str	r1, [r7, #8]
 8009856:	603b      	str	r3, [r7, #0]
 8009858:	4613      	mov	r3, r2
 800985a:	80fb      	strh	r3, [r7, #6]
 800985c:	68fb      	ldr	r3, [r7, #12]
 800985e:	f8d3 3084 	ldr.w	r3, [r3, #132]	; 0x84
 8009862:	2b20      	cmp	r3, #32
 8009864:	f040 8083 	bne.w	800996e <HAL_UART_Transmit+0x122>
 8009868:	68bb      	ldr	r3, [r7, #8]
 800986a:	2b00      	cmp	r3, #0
 800986c:	d002      	beq.n	8009874 <HAL_UART_Transmit+0x28>
 800986e:	88fb      	ldrh	r3, [r7, #6]
 8009870:	2b00      	cmp	r3, #0
 8009872:	d101      	bne.n	8009878 <HAL_UART_Transmit+0x2c>
 8009874:	2301      	movs	r3, #1
 8009876:	e07b      	b.n	8009970 <HAL_UART_Transmit+0x124>
 8009878:	68fb      	ldr	r3, [r7, #12]
 800987a:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800987e:	2b01      	cmp	r3, #1
 8009880:	d101      	bne.n	8009886 <HAL_UART_Transmit+0x3a>
 8009882:	2302      	movs	r3, #2
 8009884:	e074      	b.n	8009970 <HAL_UART_Transmit+0x124>
 8009886:	68fb      	ldr	r3, [r7, #12]
 8009888:	2201      	movs	r2, #1
 800988a:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800988e:	68fb      	ldr	r3, [r7, #12]
 8009890:	2200      	movs	r2, #0
 8009892:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 8009896:	68fb      	ldr	r3, [r7, #12]
 8009898:	2221      	movs	r2, #33	; 0x21
 800989a:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800989e:	f7fd ff0f 	bl	80076c0 <HAL_GetTick>
 80098a2:	6178      	str	r0, [r7, #20]
 80098a4:	68fb      	ldr	r3, [r7, #12]
 80098a6:	88fa      	ldrh	r2, [r7, #6]
 80098a8:	f8a3 2054 	strh.w	r2, [r3, #84]	; 0x54
 80098ac:	68fb      	ldr	r3, [r7, #12]
 80098ae:	88fa      	ldrh	r2, [r7, #6]
 80098b0:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
 80098b4:	68fb      	ldr	r3, [r7, #12]
 80098b6:	689b      	ldr	r3, [r3, #8]
 80098b8:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 80098bc:	d108      	bne.n	80098d0 <HAL_UART_Transmit+0x84>
 80098be:	68fb      	ldr	r3, [r7, #12]
 80098c0:	691b      	ldr	r3, [r3, #16]
 80098c2:	2b00      	cmp	r3, #0
 80098c4:	d104      	bne.n	80098d0 <HAL_UART_Transmit+0x84>
 80098c6:	2300      	movs	r3, #0
 80098c8:	61fb      	str	r3, [r7, #28]
 80098ca:	68bb      	ldr	r3, [r7, #8]
 80098cc:	61bb      	str	r3, [r7, #24]
 80098ce:	e003      	b.n	80098d8 <HAL_UART_Transmit+0x8c>
 80098d0:	68bb      	ldr	r3, [r7, #8]
 80098d2:	61fb      	str	r3, [r7, #28]
 80098d4:	2300      	movs	r3, #0
 80098d6:	61bb      	str	r3, [r7, #24]
 80098d8:	68fb      	ldr	r3, [r7, #12]
 80098da:	2200      	movs	r2, #0
 80098dc:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 80098e0:	e02c      	b.n	800993c <HAL_UART_Transmit+0xf0>
 80098e2:	683b      	ldr	r3, [r7, #0]
 80098e4:	9300      	str	r3, [sp, #0]
 80098e6:	697b      	ldr	r3, [r7, #20]
 80098e8:	2200      	movs	r2, #0
 80098ea:	2180      	movs	r1, #128	; 0x80
 80098ec:	68f8      	ldr	r0, [r7, #12]
 80098ee:	f000 fcd5 	bl	800a29c <UART_WaitOnFlagUntilTimeout>
 80098f2:	4603      	mov	r3, r0
 80098f4:	2b00      	cmp	r3, #0
 80098f6:	d001      	beq.n	80098fc <HAL_UART_Transmit+0xb0>
 80098f8:	2303      	movs	r3, #3
 80098fa:	e039      	b.n	8009970 <HAL_UART_Transmit+0x124>
 80098fc:	69fb      	ldr	r3, [r7, #28]
 80098fe:	2b00      	cmp	r3, #0
 8009900:	d10b      	bne.n	800991a <HAL_UART_Transmit+0xce>
 8009902:	69bb      	ldr	r3, [r7, #24]
 8009904:	881b      	ldrh	r3, [r3, #0]
 8009906:	461a      	mov	r2, r3
 8009908:	68fb      	ldr	r3, [r7, #12]
 800990a:	681b      	ldr	r3, [r3, #0]
 800990c:	f3c2 0208 	ubfx	r2, r2, #0, #9
 8009910:	629a      	str	r2, [r3, #40]	; 0x28
 8009912:	69bb      	ldr	r3, [r7, #24]
 8009914:	3302      	adds	r3, #2
 8009916:	61bb      	str	r3, [r7, #24]
 8009918:	e007      	b.n	800992a <HAL_UART_Transmit+0xde>
 800991a:	69fb      	ldr	r3, [r7, #28]
 800991c:	781a      	ldrb	r2, [r3, #0]
 800991e:	68fb      	ldr	r3, [r7, #12]
 8009920:	681b      	ldr	r3, [r3, #0]
 8009922:	629a      	str	r2, [r3, #40]	; 0x28
 8009924:	69fb      	ldr	r3, [r7, #28]
 8009926:	3301      	adds	r3, #1
 8009928:	61fb      	str	r3, [r7, #28]
 800992a:	68fb      	ldr	r3, [r7, #12]
 800992c:	f8b3 3056 	ldrh.w	r3, [r3, #86]	; 0x56
 8009930:	b29b      	uxth	r3, r3
 8009932:	3b01      	subs	r3, #1
 8009934:	b29a      	uxth	r2, r3
 8009936:	68fb      	ldr	r3, [r7, #12]
 8009938:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
 800993c:	68fb      	ldr	r3, [r7, #12]
 800993e:	f8b3 3056 	ldrh.w	r3, [r3, #86]	; 0x56
 8009942:	b29b      	uxth	r3, r3
 8009944:	2b00      	cmp	r3, #0
 8009946:	d1cc      	bne.n	80098e2 <HAL_UART_Transmit+0x96>
 8009948:	683b      	ldr	r3, [r7, #0]
 800994a:	9300      	str	r3, [sp, #0]
 800994c:	697b      	ldr	r3, [r7, #20]
 800994e:	2200      	movs	r2, #0
 8009950:	2140      	movs	r1, #64	; 0x40
 8009952:	68f8      	ldr	r0, [r7, #12]
 8009954:	f000 fca2 	bl	800a29c <UART_WaitOnFlagUntilTimeout>
 8009958:	4603      	mov	r3, r0
 800995a:	2b00      	cmp	r3, #0
 800995c:	d001      	beq.n	8009962 <HAL_UART_Transmit+0x116>
 800995e:	2303      	movs	r3, #3
 8009960:	e006      	b.n	8009970 <HAL_UART_Transmit+0x124>
 8009962:	68fb      	ldr	r3, [r7, #12]
 8009964:	2220      	movs	r2, #32
 8009966:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800996a:	2300      	movs	r3, #0
 800996c:	e000      	b.n	8009970 <HAL_UART_Transmit+0x124>
 800996e:	2302      	movs	r3, #2
 8009970:	4618      	mov	r0, r3
 8009972:	3720      	adds	r7, #32
 8009974:	46bd      	mov	sp, r7
 8009976:	bd80      	pop	{r7, pc}

08009978 <HAL_UART_Receive>:
 8009978:	b580      	push	{r7, lr}
 800997a:	b08a      	sub	sp, #40	; 0x28
 800997c:	af02      	add	r7, sp, #8
 800997e:	60f8      	str	r0, [r7, #12]
 8009980:	60b9      	str	r1, [r7, #8]
 8009982:	603b      	str	r3, [r7, #0]
 8009984:	4613      	mov	r3, r2
 8009986:	80fb      	strh	r3, [r7, #6]
 8009988:	68fb      	ldr	r3, [r7, #12]
 800998a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800998e:	2b20      	cmp	r3, #32
 8009990:	f040 80c0 	bne.w	8009b14 <HAL_UART_Receive+0x19c>
 8009994:	68bb      	ldr	r3, [r7, #8]
 8009996:	2b00      	cmp	r3, #0
 8009998:	d002      	beq.n	80099a0 <HAL_UART_Receive+0x28>
 800999a:	88fb      	ldrh	r3, [r7, #6]
 800999c:	2b00      	cmp	r3, #0
 800999e:	d101      	bne.n	80099a4 <HAL_UART_Receive+0x2c>
 80099a0:	2301      	movs	r3, #1
 80099a2:	e0b8      	b.n	8009b16 <HAL_UART_Receive+0x19e>
 80099a4:	68fb      	ldr	r3, [r7, #12]
 80099a6:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 80099aa:	2b01      	cmp	r3, #1
 80099ac:	d101      	bne.n	80099b2 <HAL_UART_Receive+0x3a>
 80099ae:	2302      	movs	r3, #2
 80099b0:	e0b1      	b.n	8009b16 <HAL_UART_Receive+0x19e>
 80099b2:	68fb      	ldr	r3, [r7, #12]
 80099b4:	2201      	movs	r2, #1
 80099b6:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 80099ba:	68fb      	ldr	r3, [r7, #12]
 80099bc:	2200      	movs	r2, #0
 80099be:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 80099c2:	68fb      	ldr	r3, [r7, #12]
 80099c4:	2222      	movs	r2, #34	; 0x22
 80099c6:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80099ca:	68fb      	ldr	r3, [r7, #12]
 80099cc:	2200      	movs	r2, #0
 80099ce:	66da      	str	r2, [r3, #108]	; 0x6c
 80099d0:	f7fd fe76 	bl	80076c0 <HAL_GetTick>
 80099d4:	6178      	str	r0, [r7, #20]
 80099d6:	68fb      	ldr	r3, [r7, #12]
 80099d8:	88fa      	ldrh	r2, [r7, #6]
 80099da:	f8a3 205c 	strh.w	r2, [r3, #92]	; 0x5c
 80099de:	68fb      	ldr	r3, [r7, #12]
 80099e0:	88fa      	ldrh	r2, [r7, #6]
 80099e2:	f8a3 205e 	strh.w	r2, [r3, #94]	; 0x5e
 80099e6:	68fb      	ldr	r3, [r7, #12]
 80099e8:	689b      	ldr	r3, [r3, #8]
 80099ea:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 80099ee:	d10e      	bne.n	8009a0e <HAL_UART_Receive+0x96>
 80099f0:	68fb      	ldr	r3, [r7, #12]
 80099f2:	691b      	ldr	r3, [r3, #16]
 80099f4:	2b00      	cmp	r3, #0
 80099f6:	d105      	bne.n	8009a04 <HAL_UART_Receive+0x8c>
 80099f8:	68fb      	ldr	r3, [r7, #12]
 80099fa:	f240 12ff 	movw	r2, #511	; 0x1ff
 80099fe:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a02:	e02d      	b.n	8009a60 <HAL_UART_Receive+0xe8>
 8009a04:	68fb      	ldr	r3, [r7, #12]
 8009a06:	22ff      	movs	r2, #255	; 0xff
 8009a08:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a0c:	e028      	b.n	8009a60 <HAL_UART_Receive+0xe8>
 8009a0e:	68fb      	ldr	r3, [r7, #12]
 8009a10:	689b      	ldr	r3, [r3, #8]
 8009a12:	2b00      	cmp	r3, #0
 8009a14:	d10d      	bne.n	8009a32 <HAL_UART_Receive+0xba>
 8009a16:	68fb      	ldr	r3, [r7, #12]
 8009a18:	691b      	ldr	r3, [r3, #16]
 8009a1a:	2b00      	cmp	r3, #0
 8009a1c:	d104      	bne.n	8009a28 <HAL_UART_Receive+0xb0>
 8009a1e:	68fb      	ldr	r3, [r7, #12]
 8009a20:	22ff      	movs	r2, #255	; 0xff
 8009a22:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a26:	e01b      	b.n	8009a60 <HAL_UART_Receive+0xe8>
 8009a28:	68fb      	ldr	r3, [r7, #12]
 8009a2a:	227f      	movs	r2, #127	; 0x7f
 8009a2c:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a30:	e016      	b.n	8009a60 <HAL_UART_Receive+0xe8>
 8009a32:	68fb      	ldr	r3, [r7, #12]
 8009a34:	689b      	ldr	r3, [r3, #8]
 8009a36:	f1b3 5f80 	cmp.w	r3, #268435456	; 0x10000000
 8009a3a:	d10d      	bne.n	8009a58 <HAL_UART_Receive+0xe0>
 8009a3c:	68fb      	ldr	r3, [r7, #12]
 8009a3e:	691b      	ldr	r3, [r3, #16]
 8009a40:	2b00      	cmp	r3, #0
 8009a42:	d104      	bne.n	8009a4e <HAL_UART_Receive+0xd6>
 8009a44:	68fb      	ldr	r3, [r7, #12]
 8009a46:	227f      	movs	r2, #127	; 0x7f
 8009a48:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a4c:	e008      	b.n	8009a60 <HAL_UART_Receive+0xe8>
 8009a4e:	68fb      	ldr	r3, [r7, #12]
 8009a50:	223f      	movs	r2, #63	; 0x3f
 8009a52:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a56:	e003      	b.n	8009a60 <HAL_UART_Receive+0xe8>
 8009a58:	68fb      	ldr	r3, [r7, #12]
 8009a5a:	2200      	movs	r2, #0
 8009a5c:	f8a3 2060 	strh.w	r2, [r3, #96]	; 0x60
 8009a60:	68fb      	ldr	r3, [r7, #12]
 8009a62:	f8b3 3060 	ldrh.w	r3, [r3, #96]	; 0x60
 8009a66:	827b      	strh	r3, [r7, #18]
 8009a68:	68fb      	ldr	r3, [r7, #12]
 8009a6a:	689b      	ldr	r3, [r3, #8]
 8009a6c:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8009a70:	d108      	bne.n	8009a84 <HAL_UART_Receive+0x10c>
 8009a72:	68fb      	ldr	r3, [r7, #12]
 8009a74:	691b      	ldr	r3, [r3, #16]
 8009a76:	2b00      	cmp	r3, #0
 8009a78:	d104      	bne.n	8009a84 <HAL_UART_Receive+0x10c>
 8009a7a:	2300      	movs	r3, #0
 8009a7c:	61fb      	str	r3, [r7, #28]
 8009a7e:	68bb      	ldr	r3, [r7, #8]
 8009a80:	61bb      	str	r3, [r7, #24]
 8009a82:	e003      	b.n	8009a8c <HAL_UART_Receive+0x114>
 8009a84:	68bb      	ldr	r3, [r7, #8]
 8009a86:	61fb      	str	r3, [r7, #28]
 8009a88:	2300      	movs	r3, #0
 8009a8a:	61bb      	str	r3, [r7, #24]
 8009a8c:	68fb      	ldr	r3, [r7, #12]
 8009a8e:	2200      	movs	r2, #0
 8009a90:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 8009a94:	e032      	b.n	8009afc <HAL_UART_Receive+0x184>
 8009a96:	683b      	ldr	r3, [r7, #0]
 8009a98:	9300      	str	r3, [sp, #0]
 8009a9a:	697b      	ldr	r3, [r7, #20]
 8009a9c:	2200      	movs	r2, #0
 8009a9e:	2120      	movs	r1, #32
 8009aa0:	68f8      	ldr	r0, [r7, #12]
 8009aa2:	f000 fbfb 	bl	800a29c <UART_WaitOnFlagUntilTimeout>
 8009aa6:	4603      	mov	r3, r0
 8009aa8:	2b00      	cmp	r3, #0
 8009aaa:	d001      	beq.n	8009ab0 <HAL_UART_Receive+0x138>
 8009aac:	2303      	movs	r3, #3
 8009aae:	e032      	b.n	8009b16 <HAL_UART_Receive+0x19e>
 8009ab0:	69fb      	ldr	r3, [r7, #28]
 8009ab2:	2b00      	cmp	r3, #0
 8009ab4:	d10c      	bne.n	8009ad0 <HAL_UART_Receive+0x158>
 8009ab6:	68fb      	ldr	r3, [r7, #12]
 8009ab8:	681b      	ldr	r3, [r3, #0]
 8009aba:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009abc:	b29a      	uxth	r2, r3
 8009abe:	8a7b      	ldrh	r3, [r7, #18]
 8009ac0:	4013      	ands	r3, r2
 8009ac2:	b29a      	uxth	r2, r3
 8009ac4:	69bb      	ldr	r3, [r7, #24]
 8009ac6:	801a      	strh	r2, [r3, #0]
 8009ac8:	69bb      	ldr	r3, [r7, #24]
 8009aca:	3302      	adds	r3, #2
 8009acc:	61bb      	str	r3, [r7, #24]
 8009ace:	e00c      	b.n	8009aea <HAL_UART_Receive+0x172>
 8009ad0:	68fb      	ldr	r3, [r7, #12]
 8009ad2:	681b      	ldr	r3, [r3, #0]
 8009ad4:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009ad6:	b2da      	uxtb	r2, r3
 8009ad8:	8a7b      	ldrh	r3, [r7, #18]
 8009ada:	b2db      	uxtb	r3, r3
 8009adc:	4013      	ands	r3, r2
 8009ade:	b2da      	uxtb	r2, r3
 8009ae0:	69fb      	ldr	r3, [r7, #28]
 8009ae2:	701a      	strb	r2, [r3, #0]
 8009ae4:	69fb      	ldr	r3, [r7, #28]
 8009ae6:	3301      	adds	r3, #1
 8009ae8:	61fb      	str	r3, [r7, #28]
 8009aea:	68fb      	ldr	r3, [r7, #12]
 8009aec:	f8b3 305e 	ldrh.w	r3, [r3, #94]	; 0x5e
 8009af0:	b29b      	uxth	r3, r3
 8009af2:	3b01      	subs	r3, #1
 8009af4:	b29a      	uxth	r2, r3
 8009af6:	68fb      	ldr	r3, [r7, #12]
 8009af8:	f8a3 205e 	strh.w	r2, [r3, #94]	; 0x5e
 8009afc:	68fb      	ldr	r3, [r7, #12]
 8009afe:	f8b3 305e 	ldrh.w	r3, [r3, #94]	; 0x5e
 8009b02:	b29b      	uxth	r3, r3
 8009b04:	2b00      	cmp	r3, #0
 8009b06:	d1c6      	bne.n	8009a96 <HAL_UART_Receive+0x11e>
 8009b08:	68fb      	ldr	r3, [r7, #12]
 8009b0a:	2220      	movs	r2, #32
 8009b0c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8009b10:	2300      	movs	r3, #0
 8009b12:	e000      	b.n	8009b16 <HAL_UART_Receive+0x19e>
 8009b14:	2302      	movs	r3, #2
 8009b16:	4618      	mov	r0, r3
 8009b18:	3720      	adds	r7, #32
 8009b1a:	46bd      	mov	sp, r7
 8009b1c:	bd80      	pop	{r7, pc}
	...

08009b20 <UART_SetConfig>:
 8009b20:	e92d 4890 	stmdb	sp!, {r4, r7, fp, lr}
 8009b24:	b088      	sub	sp, #32
 8009b26:	af00      	add	r7, sp, #0
 8009b28:	6078      	str	r0, [r7, #4]
 8009b2a:	2300      	movs	r3, #0
 8009b2c:	76bb      	strb	r3, [r7, #26]
 8009b2e:	687b      	ldr	r3, [r7, #4]
 8009b30:	689a      	ldr	r2, [r3, #8]
 8009b32:	687b      	ldr	r3, [r7, #4]
 8009b34:	691b      	ldr	r3, [r3, #16]
 8009b36:	431a      	orrs	r2, r3
 8009b38:	687b      	ldr	r3, [r7, #4]
 8009b3a:	695b      	ldr	r3, [r3, #20]
 8009b3c:	431a      	orrs	r2, r3
 8009b3e:	687b      	ldr	r3, [r7, #4]
 8009b40:	69db      	ldr	r3, [r3, #28]
 8009b42:	4313      	orrs	r3, r2
 8009b44:	61fb      	str	r3, [r7, #28]
 8009b46:	687b      	ldr	r3, [r7, #4]
 8009b48:	681b      	ldr	r3, [r3, #0]
 8009b4a:	681a      	ldr	r2, [r3, #0]
 8009b4c:	4bb1      	ldr	r3, [pc, #708]	; (8009e14 <UART_SetConfig+0x2f4>)
 8009b4e:	4013      	ands	r3, r2
 8009b50:	687a      	ldr	r2, [r7, #4]
 8009b52:	6812      	ldr	r2, [r2, #0]
 8009b54:	69f9      	ldr	r1, [r7, #28]
 8009b56:	430b      	orrs	r3, r1
 8009b58:	6013      	str	r3, [r2, #0]
 8009b5a:	687b      	ldr	r3, [r7, #4]
 8009b5c:	681b      	ldr	r3, [r3, #0]
 8009b5e:	685b      	ldr	r3, [r3, #4]
 8009b60:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 8009b64:	687b      	ldr	r3, [r7, #4]
 8009b66:	68da      	ldr	r2, [r3, #12]
 8009b68:	687b      	ldr	r3, [r7, #4]
 8009b6a:	681b      	ldr	r3, [r3, #0]
 8009b6c:	430a      	orrs	r2, r1
 8009b6e:	605a      	str	r2, [r3, #4]
 8009b70:	687b      	ldr	r3, [r7, #4]
 8009b72:	699b      	ldr	r3, [r3, #24]
 8009b74:	61fb      	str	r3, [r7, #28]
 8009b76:	687b      	ldr	r3, [r7, #4]
 8009b78:	681b      	ldr	r3, [r3, #0]
 8009b7a:	4aa7      	ldr	r2, [pc, #668]	; (8009e18 <UART_SetConfig+0x2f8>)
 8009b7c:	4293      	cmp	r3, r2
 8009b7e:	d004      	beq.n	8009b8a <UART_SetConfig+0x6a>
 8009b80:	687b      	ldr	r3, [r7, #4]
 8009b82:	6a1b      	ldr	r3, [r3, #32]
 8009b84:	69fa      	ldr	r2, [r7, #28]
 8009b86:	4313      	orrs	r3, r2
 8009b88:	61fb      	str	r3, [r7, #28]
 8009b8a:	687b      	ldr	r3, [r7, #4]
 8009b8c:	681b      	ldr	r3, [r3, #0]
 8009b8e:	689b      	ldr	r3, [r3, #8]
 8009b90:	f023 436e 	bic.w	r3, r3, #3992977408	; 0xee000000
 8009b94:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8009b98:	687a      	ldr	r2, [r7, #4]
 8009b9a:	6812      	ldr	r2, [r2, #0]
 8009b9c:	69f9      	ldr	r1, [r7, #28]
 8009b9e:	430b      	orrs	r3, r1
 8009ba0:	6093      	str	r3, [r2, #8]
 8009ba2:	687b      	ldr	r3, [r7, #4]
 8009ba4:	681b      	ldr	r3, [r3, #0]
 8009ba6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8009ba8:	f023 010f 	bic.w	r1, r3, #15
 8009bac:	687b      	ldr	r3, [r7, #4]
 8009bae:	6a5a      	ldr	r2, [r3, #36]	; 0x24
 8009bb0:	687b      	ldr	r3, [r7, #4]
 8009bb2:	681b      	ldr	r3, [r3, #0]
 8009bb4:	430a      	orrs	r2, r1
 8009bb6:	62da      	str	r2, [r3, #44]	; 0x2c
 8009bb8:	687b      	ldr	r3, [r7, #4]
 8009bba:	681b      	ldr	r3, [r3, #0]
 8009bbc:	4a97      	ldr	r2, [pc, #604]	; (8009e1c <UART_SetConfig+0x2fc>)
 8009bbe:	4293      	cmp	r3, r2
 8009bc0:	d122      	bne.n	8009c08 <UART_SetConfig+0xe8>
 8009bc2:	4b97      	ldr	r3, [pc, #604]	; (8009e20 <UART_SetConfig+0x300>)
 8009bc4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009bc8:	f003 0303 	and.w	r3, r3, #3
 8009bcc:	2b03      	cmp	r3, #3
 8009bce:	d817      	bhi.n	8009c00 <UART_SetConfig+0xe0>
 8009bd0:	a201      	add	r2, pc, #4	; (adr r2, 8009bd8 <UART_SetConfig+0xb8>)
 8009bd2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8009bd6:	bf00      	nop
 8009bd8:	08009be9 	.word	0x08009be9
 8009bdc:	08009bf5 	.word	0x08009bf5
 8009be0:	08009bef 	.word	0x08009bef
 8009be4:	08009bfb 	.word	0x08009bfb
 8009be8:	2301      	movs	r3, #1
 8009bea:	76fb      	strb	r3, [r7, #27]
 8009bec:	e0e8      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009bee:	2302      	movs	r3, #2
 8009bf0:	76fb      	strb	r3, [r7, #27]
 8009bf2:	e0e5      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009bf4:	2304      	movs	r3, #4
 8009bf6:	76fb      	strb	r3, [r7, #27]
 8009bf8:	e0e2      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009bfa:	2308      	movs	r3, #8
 8009bfc:	76fb      	strb	r3, [r7, #27]
 8009bfe:	e0df      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c00:	2310      	movs	r3, #16
 8009c02:	76fb      	strb	r3, [r7, #27]
 8009c04:	bf00      	nop
 8009c06:	e0db      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c08:	687b      	ldr	r3, [r7, #4]
 8009c0a:	681b      	ldr	r3, [r3, #0]
 8009c0c:	4a85      	ldr	r2, [pc, #532]	; (8009e24 <UART_SetConfig+0x304>)
 8009c0e:	4293      	cmp	r3, r2
 8009c10:	d134      	bne.n	8009c7c <UART_SetConfig+0x15c>
 8009c12:	4b83      	ldr	r3, [pc, #524]	; (8009e20 <UART_SetConfig+0x300>)
 8009c14:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009c18:	f003 030c 	and.w	r3, r3, #12
 8009c1c:	2b0c      	cmp	r3, #12
 8009c1e:	d829      	bhi.n	8009c74 <UART_SetConfig+0x154>
 8009c20:	a201      	add	r2, pc, #4	; (adr r2, 8009c28 <UART_SetConfig+0x108>)
 8009c22:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8009c26:	bf00      	nop
 8009c28:	08009c5d 	.word	0x08009c5d
 8009c2c:	08009c75 	.word	0x08009c75
 8009c30:	08009c75 	.word	0x08009c75
 8009c34:	08009c75 	.word	0x08009c75
 8009c38:	08009c69 	.word	0x08009c69
 8009c3c:	08009c75 	.word	0x08009c75
 8009c40:	08009c75 	.word	0x08009c75
 8009c44:	08009c75 	.word	0x08009c75
 8009c48:	08009c63 	.word	0x08009c63
 8009c4c:	08009c75 	.word	0x08009c75
 8009c50:	08009c75 	.word	0x08009c75
 8009c54:	08009c75 	.word	0x08009c75
 8009c58:	08009c6f 	.word	0x08009c6f
 8009c5c:	2300      	movs	r3, #0
 8009c5e:	76fb      	strb	r3, [r7, #27]
 8009c60:	e0ae      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c62:	2302      	movs	r3, #2
 8009c64:	76fb      	strb	r3, [r7, #27]
 8009c66:	e0ab      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c68:	2304      	movs	r3, #4
 8009c6a:	76fb      	strb	r3, [r7, #27]
 8009c6c:	e0a8      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c6e:	2308      	movs	r3, #8
 8009c70:	76fb      	strb	r3, [r7, #27]
 8009c72:	e0a5      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c74:	2310      	movs	r3, #16
 8009c76:	76fb      	strb	r3, [r7, #27]
 8009c78:	bf00      	nop
 8009c7a:	e0a1      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009c7c:	687b      	ldr	r3, [r7, #4]
 8009c7e:	681b      	ldr	r3, [r3, #0]
 8009c80:	4a69      	ldr	r2, [pc, #420]	; (8009e28 <UART_SetConfig+0x308>)
 8009c82:	4293      	cmp	r3, r2
 8009c84:	d120      	bne.n	8009cc8 <UART_SetConfig+0x1a8>
 8009c86:	4b66      	ldr	r3, [pc, #408]	; (8009e20 <UART_SetConfig+0x300>)
 8009c88:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009c8c:	f003 0330 	and.w	r3, r3, #48	; 0x30
 8009c90:	2b10      	cmp	r3, #16
 8009c92:	d00f      	beq.n	8009cb4 <UART_SetConfig+0x194>
 8009c94:	2b10      	cmp	r3, #16
 8009c96:	d802      	bhi.n	8009c9e <UART_SetConfig+0x17e>
 8009c98:	2b00      	cmp	r3, #0
 8009c9a:	d005      	beq.n	8009ca8 <UART_SetConfig+0x188>
 8009c9c:	e010      	b.n	8009cc0 <UART_SetConfig+0x1a0>
 8009c9e:	2b20      	cmp	r3, #32
 8009ca0:	d005      	beq.n	8009cae <UART_SetConfig+0x18e>
 8009ca2:	2b30      	cmp	r3, #48	; 0x30
 8009ca4:	d009      	beq.n	8009cba <UART_SetConfig+0x19a>
 8009ca6:	e00b      	b.n	8009cc0 <UART_SetConfig+0x1a0>
 8009ca8:	2300      	movs	r3, #0
 8009caa:	76fb      	strb	r3, [r7, #27]
 8009cac:	e088      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009cae:	2302      	movs	r3, #2
 8009cb0:	76fb      	strb	r3, [r7, #27]
 8009cb2:	e085      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009cb4:	2304      	movs	r3, #4
 8009cb6:	76fb      	strb	r3, [r7, #27]
 8009cb8:	e082      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009cba:	2308      	movs	r3, #8
 8009cbc:	76fb      	strb	r3, [r7, #27]
 8009cbe:	e07f      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009cc0:	2310      	movs	r3, #16
 8009cc2:	76fb      	strb	r3, [r7, #27]
 8009cc4:	bf00      	nop
 8009cc6:	e07b      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009cc8:	687b      	ldr	r3, [r7, #4]
 8009cca:	681b      	ldr	r3, [r3, #0]
 8009ccc:	4a57      	ldr	r2, [pc, #348]	; (8009e2c <UART_SetConfig+0x30c>)
 8009cce:	4293      	cmp	r3, r2
 8009cd0:	d120      	bne.n	8009d14 <UART_SetConfig+0x1f4>
 8009cd2:	4b53      	ldr	r3, [pc, #332]	; (8009e20 <UART_SetConfig+0x300>)
 8009cd4:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009cd8:	f003 03c0 	and.w	r3, r3, #192	; 0xc0
 8009cdc:	2b40      	cmp	r3, #64	; 0x40
 8009cde:	d00f      	beq.n	8009d00 <UART_SetConfig+0x1e0>
 8009ce0:	2b40      	cmp	r3, #64	; 0x40
 8009ce2:	d802      	bhi.n	8009cea <UART_SetConfig+0x1ca>
 8009ce4:	2b00      	cmp	r3, #0
 8009ce6:	d005      	beq.n	8009cf4 <UART_SetConfig+0x1d4>
 8009ce8:	e010      	b.n	8009d0c <UART_SetConfig+0x1ec>
 8009cea:	2b80      	cmp	r3, #128	; 0x80
 8009cec:	d005      	beq.n	8009cfa <UART_SetConfig+0x1da>
 8009cee:	2bc0      	cmp	r3, #192	; 0xc0
 8009cf0:	d009      	beq.n	8009d06 <UART_SetConfig+0x1e6>
 8009cf2:	e00b      	b.n	8009d0c <UART_SetConfig+0x1ec>
 8009cf4:	2300      	movs	r3, #0
 8009cf6:	76fb      	strb	r3, [r7, #27]
 8009cf8:	e062      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009cfa:	2302      	movs	r3, #2
 8009cfc:	76fb      	strb	r3, [r7, #27]
 8009cfe:	e05f      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d00:	2304      	movs	r3, #4
 8009d02:	76fb      	strb	r3, [r7, #27]
 8009d04:	e05c      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d06:	2308      	movs	r3, #8
 8009d08:	76fb      	strb	r3, [r7, #27]
 8009d0a:	e059      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d0c:	2310      	movs	r3, #16
 8009d0e:	76fb      	strb	r3, [r7, #27]
 8009d10:	bf00      	nop
 8009d12:	e055      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d14:	687b      	ldr	r3, [r7, #4]
 8009d16:	681b      	ldr	r3, [r3, #0]
 8009d18:	4a45      	ldr	r2, [pc, #276]	; (8009e30 <UART_SetConfig+0x310>)
 8009d1a:	4293      	cmp	r3, r2
 8009d1c:	d124      	bne.n	8009d68 <UART_SetConfig+0x248>
 8009d1e:	4b40      	ldr	r3, [pc, #256]	; (8009e20 <UART_SetConfig+0x300>)
 8009d20:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009d24:	f403 7340 	and.w	r3, r3, #768	; 0x300
 8009d28:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8009d2c:	d012      	beq.n	8009d54 <UART_SetConfig+0x234>
 8009d2e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8009d32:	d802      	bhi.n	8009d3a <UART_SetConfig+0x21a>
 8009d34:	2b00      	cmp	r3, #0
 8009d36:	d007      	beq.n	8009d48 <UART_SetConfig+0x228>
 8009d38:	e012      	b.n	8009d60 <UART_SetConfig+0x240>
 8009d3a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8009d3e:	d006      	beq.n	8009d4e <UART_SetConfig+0x22e>
 8009d40:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8009d44:	d009      	beq.n	8009d5a <UART_SetConfig+0x23a>
 8009d46:	e00b      	b.n	8009d60 <UART_SetConfig+0x240>
 8009d48:	2300      	movs	r3, #0
 8009d4a:	76fb      	strb	r3, [r7, #27]
 8009d4c:	e038      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d4e:	2302      	movs	r3, #2
 8009d50:	76fb      	strb	r3, [r7, #27]
 8009d52:	e035      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d54:	2304      	movs	r3, #4
 8009d56:	76fb      	strb	r3, [r7, #27]
 8009d58:	e032      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d5a:	2308      	movs	r3, #8
 8009d5c:	76fb      	strb	r3, [r7, #27]
 8009d5e:	e02f      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d60:	2310      	movs	r3, #16
 8009d62:	76fb      	strb	r3, [r7, #27]
 8009d64:	bf00      	nop
 8009d66:	e02b      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009d68:	687b      	ldr	r3, [r7, #4]
 8009d6a:	681b      	ldr	r3, [r3, #0]
 8009d6c:	4a2a      	ldr	r2, [pc, #168]	; (8009e18 <UART_SetConfig+0x2f8>)
 8009d6e:	4293      	cmp	r3, r2
 8009d70:	d124      	bne.n	8009dbc <UART_SetConfig+0x29c>
 8009d72:	4b2b      	ldr	r3, [pc, #172]	; (8009e20 <UART_SetConfig+0x300>)
 8009d74:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8009d78:	f403 6340 	and.w	r3, r3, #3072	; 0xc00
 8009d7c:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8009d80:	d012      	beq.n	8009da8 <UART_SetConfig+0x288>
 8009d82:	f5b3 6f80 	cmp.w	r3, #1024	; 0x400
 8009d86:	d802      	bhi.n	8009d8e <UART_SetConfig+0x26e>
 8009d88:	2b00      	cmp	r3, #0
 8009d8a:	d007      	beq.n	8009d9c <UART_SetConfig+0x27c>
 8009d8c:	e012      	b.n	8009db4 <UART_SetConfig+0x294>
 8009d8e:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 8009d92:	d006      	beq.n	8009da2 <UART_SetConfig+0x282>
 8009d94:	f5b3 6f40 	cmp.w	r3, #3072	; 0xc00
 8009d98:	d009      	beq.n	8009dae <UART_SetConfig+0x28e>
 8009d9a:	e00b      	b.n	8009db4 <UART_SetConfig+0x294>
 8009d9c:	2300      	movs	r3, #0
 8009d9e:	76fb      	strb	r3, [r7, #27]
 8009da0:	e00e      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009da2:	2302      	movs	r3, #2
 8009da4:	76fb      	strb	r3, [r7, #27]
 8009da6:	e00b      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009da8:	2304      	movs	r3, #4
 8009daa:	76fb      	strb	r3, [r7, #27]
 8009dac:	e008      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009dae:	2308      	movs	r3, #8
 8009db0:	76fb      	strb	r3, [r7, #27]
 8009db2:	e005      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009db4:	2310      	movs	r3, #16
 8009db6:	76fb      	strb	r3, [r7, #27]
 8009db8:	bf00      	nop
 8009dba:	e001      	b.n	8009dc0 <UART_SetConfig+0x2a0>
 8009dbc:	2310      	movs	r3, #16
 8009dbe:	76fb      	strb	r3, [r7, #27]
 8009dc0:	687b      	ldr	r3, [r7, #4]
 8009dc2:	681b      	ldr	r3, [r3, #0]
 8009dc4:	4a14      	ldr	r2, [pc, #80]	; (8009e18 <UART_SetConfig+0x2f8>)
 8009dc6:	4293      	cmp	r3, r2
 8009dc8:	f040 80a5 	bne.w	8009f16 <UART_SetConfig+0x3f6>
 8009dcc:	7efb      	ldrb	r3, [r7, #27]
 8009dce:	2b08      	cmp	r3, #8
 8009dd0:	d83a      	bhi.n	8009e48 <UART_SetConfig+0x328>
 8009dd2:	a201      	add	r2, pc, #4	; (adr r2, 8009dd8 <UART_SetConfig+0x2b8>)
 8009dd4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8009dd8:	08009dfd 	.word	0x08009dfd
 8009ddc:	08009e05 	.word	0x08009e05
 8009de0:	08009e0d 	.word	0x08009e0d
 8009de4:	08009e49 	.word	0x08009e49
 8009de8:	08009e39 	.word	0x08009e39
 8009dec:	08009e49 	.word	0x08009e49
 8009df0:	08009e49 	.word	0x08009e49
 8009df4:	08009e49 	.word	0x08009e49
 8009df8:	08009e41 	.word	0x08009e41
 8009dfc:	f7fe fed0 	bl	8008ba0 <HAL_RCC_GetPCLK1Freq>
 8009e00:	6178      	str	r0, [r7, #20]
 8009e02:	e026      	b.n	8009e52 <UART_SetConfig+0x332>
 8009e04:	f7fe fee0 	bl	8008bc8 <HAL_RCC_GetPCLK2Freq>
 8009e08:	6178      	str	r0, [r7, #20]
 8009e0a:	e022      	b.n	8009e52 <UART_SetConfig+0x332>
 8009e0c:	4b09      	ldr	r3, [pc, #36]	; (8009e34 <UART_SetConfig+0x314>)
 8009e0e:	617b      	str	r3, [r7, #20]
 8009e10:	e01f      	b.n	8009e52 <UART_SetConfig+0x332>
 8009e12:	bf00      	nop
 8009e14:	cfff69f3 	.word	0xcfff69f3
 8009e18:	40008000 	.word	0x40008000
 8009e1c:	40013800 	.word	0x40013800
 8009e20:	40021000 	.word	0x40021000
 8009e24:	40004400 	.word	0x40004400
 8009e28:	40004800 	.word	0x40004800
 8009e2c:	40004c00 	.word	0x40004c00
 8009e30:	40005000 	.word	0x40005000
 8009e34:	00f42400 	.word	0x00f42400
 8009e38:	f7fe fe04 	bl	8008a44 <HAL_RCC_GetSysClockFreq>
 8009e3c:	6178      	str	r0, [r7, #20]
 8009e3e:	e008      	b.n	8009e52 <UART_SetConfig+0x332>
 8009e40:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8009e44:	617b      	str	r3, [r7, #20]
 8009e46:	e004      	b.n	8009e52 <UART_SetConfig+0x332>
 8009e48:	2300      	movs	r3, #0
 8009e4a:	617b      	str	r3, [r7, #20]
 8009e4c:	2301      	movs	r3, #1
 8009e4e:	76bb      	strb	r3, [r7, #26]
 8009e50:	bf00      	nop
 8009e52:	697b      	ldr	r3, [r7, #20]
 8009e54:	2b00      	cmp	r3, #0
 8009e56:	f000 811d 	beq.w	800a094 <UART_SetConfig+0x574>
 8009e5a:	687b      	ldr	r3, [r7, #4]
 8009e5c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009e5e:	4a97      	ldr	r2, [pc, #604]	; (800a0bc <UART_SetConfig+0x59c>)
 8009e60:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8009e64:	461a      	mov	r2, r3
 8009e66:	697b      	ldr	r3, [r7, #20]
 8009e68:	fbb3 f3f2 	udiv	r3, r3, r2
 8009e6c:	60bb      	str	r3, [r7, #8]
 8009e6e:	687b      	ldr	r3, [r7, #4]
 8009e70:	685a      	ldr	r2, [r3, #4]
 8009e72:	4613      	mov	r3, r2
 8009e74:	005b      	lsls	r3, r3, #1
 8009e76:	4413      	add	r3, r2
 8009e78:	68ba      	ldr	r2, [r7, #8]
 8009e7a:	429a      	cmp	r2, r3
 8009e7c:	d305      	bcc.n	8009e8a <UART_SetConfig+0x36a>
 8009e7e:	687b      	ldr	r3, [r7, #4]
 8009e80:	685b      	ldr	r3, [r3, #4]
 8009e82:	031b      	lsls	r3, r3, #12
 8009e84:	68ba      	ldr	r2, [r7, #8]
 8009e86:	429a      	cmp	r2, r3
 8009e88:	d902      	bls.n	8009e90 <UART_SetConfig+0x370>
 8009e8a:	2301      	movs	r3, #1
 8009e8c:	76bb      	strb	r3, [r7, #26]
 8009e8e:	e101      	b.n	800a094 <UART_SetConfig+0x574>
 8009e90:	697b      	ldr	r3, [r7, #20]
 8009e92:	4618      	mov	r0, r3
 8009e94:	f04f 0100 	mov.w	r1, #0
 8009e98:	687b      	ldr	r3, [r7, #4]
 8009e9a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009e9c:	4a87      	ldr	r2, [pc, #540]	; (800a0bc <UART_SetConfig+0x59c>)
 8009e9e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8009ea2:	b29b      	uxth	r3, r3
 8009ea4:	f04f 0400 	mov.w	r4, #0
 8009ea8:	461a      	mov	r2, r3
 8009eaa:	4623      	mov	r3, r4
 8009eac:	f7f6 f9ea 	bl	8000284 <__aeabi_uldivmod>
 8009eb0:	4603      	mov	r3, r0
 8009eb2:	460c      	mov	r4, r1
 8009eb4:	4619      	mov	r1, r3
 8009eb6:	4622      	mov	r2, r4
 8009eb8:	f04f 0300 	mov.w	r3, #0
 8009ebc:	f04f 0400 	mov.w	r4, #0
 8009ec0:	0214      	lsls	r4, r2, #8
 8009ec2:	ea44 6411 	orr.w	r4, r4, r1, lsr #24
 8009ec6:	020b      	lsls	r3, r1, #8
 8009ec8:	687a      	ldr	r2, [r7, #4]
 8009eca:	6852      	ldr	r2, [r2, #4]
 8009ecc:	0852      	lsrs	r2, r2, #1
 8009ece:	4611      	mov	r1, r2
 8009ed0:	f04f 0200 	mov.w	r2, #0
 8009ed4:	eb13 0b01 	adds.w	fp, r3, r1
 8009ed8:	eb44 0c02 	adc.w	ip, r4, r2
 8009edc:	4658      	mov	r0, fp
 8009ede:	4661      	mov	r1, ip
 8009ee0:	687b      	ldr	r3, [r7, #4]
 8009ee2:	685b      	ldr	r3, [r3, #4]
 8009ee4:	f04f 0400 	mov.w	r4, #0
 8009ee8:	461a      	mov	r2, r3
 8009eea:	4623      	mov	r3, r4
 8009eec:	f7f6 f9ca 	bl	8000284 <__aeabi_uldivmod>
 8009ef0:	4603      	mov	r3, r0
 8009ef2:	460c      	mov	r4, r1
 8009ef4:	613b      	str	r3, [r7, #16]
 8009ef6:	693b      	ldr	r3, [r7, #16]
 8009ef8:	f5b3 7f40 	cmp.w	r3, #768	; 0x300
 8009efc:	d308      	bcc.n	8009f10 <UART_SetConfig+0x3f0>
 8009efe:	693b      	ldr	r3, [r7, #16]
 8009f00:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8009f04:	d204      	bcs.n	8009f10 <UART_SetConfig+0x3f0>
 8009f06:	687b      	ldr	r3, [r7, #4]
 8009f08:	681b      	ldr	r3, [r3, #0]
 8009f0a:	693a      	ldr	r2, [r7, #16]
 8009f0c:	60da      	str	r2, [r3, #12]
 8009f0e:	e0c1      	b.n	800a094 <UART_SetConfig+0x574>
 8009f10:	2301      	movs	r3, #1
 8009f12:	76bb      	strb	r3, [r7, #26]
 8009f14:	e0be      	b.n	800a094 <UART_SetConfig+0x574>
 8009f16:	687b      	ldr	r3, [r7, #4]
 8009f18:	69db      	ldr	r3, [r3, #28]
 8009f1a:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8009f1e:	d164      	bne.n	8009fea <UART_SetConfig+0x4ca>
 8009f20:	7efb      	ldrb	r3, [r7, #27]
 8009f22:	2b08      	cmp	r3, #8
 8009f24:	d827      	bhi.n	8009f76 <UART_SetConfig+0x456>
 8009f26:	a201      	add	r2, pc, #4	; (adr r2, 8009f2c <UART_SetConfig+0x40c>)
 8009f28:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8009f2c:	08009f51 	.word	0x08009f51
 8009f30:	08009f59 	.word	0x08009f59
 8009f34:	08009f61 	.word	0x08009f61
 8009f38:	08009f77 	.word	0x08009f77
 8009f3c:	08009f67 	.word	0x08009f67
 8009f40:	08009f77 	.word	0x08009f77
 8009f44:	08009f77 	.word	0x08009f77
 8009f48:	08009f77 	.word	0x08009f77
 8009f4c:	08009f6f 	.word	0x08009f6f
 8009f50:	f7fe fe26 	bl	8008ba0 <HAL_RCC_GetPCLK1Freq>
 8009f54:	6178      	str	r0, [r7, #20]
 8009f56:	e013      	b.n	8009f80 <UART_SetConfig+0x460>
 8009f58:	f7fe fe36 	bl	8008bc8 <HAL_RCC_GetPCLK2Freq>
 8009f5c:	6178      	str	r0, [r7, #20]
 8009f5e:	e00f      	b.n	8009f80 <UART_SetConfig+0x460>
 8009f60:	4b57      	ldr	r3, [pc, #348]	; (800a0c0 <UART_SetConfig+0x5a0>)
 8009f62:	617b      	str	r3, [r7, #20]
 8009f64:	e00c      	b.n	8009f80 <UART_SetConfig+0x460>
 8009f66:	f7fe fd6d 	bl	8008a44 <HAL_RCC_GetSysClockFreq>
 8009f6a:	6178      	str	r0, [r7, #20]
 8009f6c:	e008      	b.n	8009f80 <UART_SetConfig+0x460>
 8009f6e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8009f72:	617b      	str	r3, [r7, #20]
 8009f74:	e004      	b.n	8009f80 <UART_SetConfig+0x460>
 8009f76:	2300      	movs	r3, #0
 8009f78:	617b      	str	r3, [r7, #20]
 8009f7a:	2301      	movs	r3, #1
 8009f7c:	76bb      	strb	r3, [r7, #26]
 8009f7e:	bf00      	nop
 8009f80:	697b      	ldr	r3, [r7, #20]
 8009f82:	2b00      	cmp	r3, #0
 8009f84:	f000 8086 	beq.w	800a094 <UART_SetConfig+0x574>
 8009f88:	687b      	ldr	r3, [r7, #4]
 8009f8a:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8009f8c:	4a4b      	ldr	r2, [pc, #300]	; (800a0bc <UART_SetConfig+0x59c>)
 8009f8e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 8009f92:	461a      	mov	r2, r3
 8009f94:	697b      	ldr	r3, [r7, #20]
 8009f96:	fbb3 f3f2 	udiv	r3, r3, r2
 8009f9a:	005a      	lsls	r2, r3, #1
 8009f9c:	687b      	ldr	r3, [r7, #4]
 8009f9e:	685b      	ldr	r3, [r3, #4]
 8009fa0:	085b      	lsrs	r3, r3, #1
 8009fa2:	441a      	add	r2, r3
 8009fa4:	687b      	ldr	r3, [r7, #4]
 8009fa6:	685b      	ldr	r3, [r3, #4]
 8009fa8:	fbb2 f3f3 	udiv	r3, r2, r3
 8009fac:	b29b      	uxth	r3, r3
 8009fae:	613b      	str	r3, [r7, #16]
 8009fb0:	693b      	ldr	r3, [r7, #16]
 8009fb2:	2b0f      	cmp	r3, #15
 8009fb4:	d916      	bls.n	8009fe4 <UART_SetConfig+0x4c4>
 8009fb6:	693b      	ldr	r3, [r7, #16]
 8009fb8:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 8009fbc:	d212      	bcs.n	8009fe4 <UART_SetConfig+0x4c4>
 8009fbe:	693b      	ldr	r3, [r7, #16]
 8009fc0:	b29b      	uxth	r3, r3
 8009fc2:	f023 030f 	bic.w	r3, r3, #15
 8009fc6:	81fb      	strh	r3, [r7, #14]
 8009fc8:	693b      	ldr	r3, [r7, #16]
 8009fca:	085b      	lsrs	r3, r3, #1
 8009fcc:	b29b      	uxth	r3, r3
 8009fce:	f003 0307 	and.w	r3, r3, #7
 8009fd2:	b29a      	uxth	r2, r3
 8009fd4:	89fb      	ldrh	r3, [r7, #14]
 8009fd6:	4313      	orrs	r3, r2
 8009fd8:	81fb      	strh	r3, [r7, #14]
 8009fda:	687b      	ldr	r3, [r7, #4]
 8009fdc:	681b      	ldr	r3, [r3, #0]
 8009fde:	89fa      	ldrh	r2, [r7, #14]
 8009fe0:	60da      	str	r2, [r3, #12]
 8009fe2:	e057      	b.n	800a094 <UART_SetConfig+0x574>
 8009fe4:	2301      	movs	r3, #1
 8009fe6:	76bb      	strb	r3, [r7, #26]
 8009fe8:	e054      	b.n	800a094 <UART_SetConfig+0x574>
 8009fea:	7efb      	ldrb	r3, [r7, #27]
 8009fec:	2b08      	cmp	r3, #8
 8009fee:	d828      	bhi.n	800a042 <UART_SetConfig+0x522>
 8009ff0:	a201      	add	r2, pc, #4	; (adr r2, 8009ff8 <UART_SetConfig+0x4d8>)
 8009ff2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8009ff6:	bf00      	nop
 8009ff8:	0800a01d 	.word	0x0800a01d
 8009ffc:	0800a025 	.word	0x0800a025
 800a000:	0800a02d 	.word	0x0800a02d
 800a004:	0800a043 	.word	0x0800a043
 800a008:	0800a033 	.word	0x0800a033
 800a00c:	0800a043 	.word	0x0800a043
 800a010:	0800a043 	.word	0x0800a043
 800a014:	0800a043 	.word	0x0800a043
 800a018:	0800a03b 	.word	0x0800a03b
 800a01c:	f7fe fdc0 	bl	8008ba0 <HAL_RCC_GetPCLK1Freq>
 800a020:	6178      	str	r0, [r7, #20]
 800a022:	e013      	b.n	800a04c <UART_SetConfig+0x52c>
 800a024:	f7fe fdd0 	bl	8008bc8 <HAL_RCC_GetPCLK2Freq>
 800a028:	6178      	str	r0, [r7, #20]
 800a02a:	e00f      	b.n	800a04c <UART_SetConfig+0x52c>
 800a02c:	4b24      	ldr	r3, [pc, #144]	; (800a0c0 <UART_SetConfig+0x5a0>)
 800a02e:	617b      	str	r3, [r7, #20]
 800a030:	e00c      	b.n	800a04c <UART_SetConfig+0x52c>
 800a032:	f7fe fd07 	bl	8008a44 <HAL_RCC_GetSysClockFreq>
 800a036:	6178      	str	r0, [r7, #20]
 800a038:	e008      	b.n	800a04c <UART_SetConfig+0x52c>
 800a03a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800a03e:	617b      	str	r3, [r7, #20]
 800a040:	e004      	b.n	800a04c <UART_SetConfig+0x52c>
 800a042:	2300      	movs	r3, #0
 800a044:	617b      	str	r3, [r7, #20]
 800a046:	2301      	movs	r3, #1
 800a048:	76bb      	strb	r3, [r7, #26]
 800a04a:	bf00      	nop
 800a04c:	697b      	ldr	r3, [r7, #20]
 800a04e:	2b00      	cmp	r3, #0
 800a050:	d020      	beq.n	800a094 <UART_SetConfig+0x574>
 800a052:	687b      	ldr	r3, [r7, #4]
 800a054:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 800a056:	4a19      	ldr	r2, [pc, #100]	; (800a0bc <UART_SetConfig+0x59c>)
 800a058:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a05c:	461a      	mov	r2, r3
 800a05e:	697b      	ldr	r3, [r7, #20]
 800a060:	fbb3 f2f2 	udiv	r2, r3, r2
 800a064:	687b      	ldr	r3, [r7, #4]
 800a066:	685b      	ldr	r3, [r3, #4]
 800a068:	085b      	lsrs	r3, r3, #1
 800a06a:	441a      	add	r2, r3
 800a06c:	687b      	ldr	r3, [r7, #4]
 800a06e:	685b      	ldr	r3, [r3, #4]
 800a070:	fbb2 f3f3 	udiv	r3, r2, r3
 800a074:	b29b      	uxth	r3, r3
 800a076:	613b      	str	r3, [r7, #16]
 800a078:	693b      	ldr	r3, [r7, #16]
 800a07a:	2b0f      	cmp	r3, #15
 800a07c:	d908      	bls.n	800a090 <UART_SetConfig+0x570>
 800a07e:	693b      	ldr	r3, [r7, #16]
 800a080:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 800a084:	d204      	bcs.n	800a090 <UART_SetConfig+0x570>
 800a086:	687b      	ldr	r3, [r7, #4]
 800a088:	681b      	ldr	r3, [r3, #0]
 800a08a:	693a      	ldr	r2, [r7, #16]
 800a08c:	60da      	str	r2, [r3, #12]
 800a08e:	e001      	b.n	800a094 <UART_SetConfig+0x574>
 800a090:	2301      	movs	r3, #1
 800a092:	76bb      	strb	r3, [r7, #26]
 800a094:	687b      	ldr	r3, [r7, #4]
 800a096:	2201      	movs	r2, #1
 800a098:	f8a3 206a 	strh.w	r2, [r3, #106]	; 0x6a
 800a09c:	687b      	ldr	r3, [r7, #4]
 800a09e:	2201      	movs	r2, #1
 800a0a0:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 800a0a4:	687b      	ldr	r3, [r7, #4]
 800a0a6:	2200      	movs	r2, #0
 800a0a8:	671a      	str	r2, [r3, #112]	; 0x70
 800a0aa:	687b      	ldr	r3, [r7, #4]
 800a0ac:	2200      	movs	r2, #0
 800a0ae:	675a      	str	r2, [r3, #116]	; 0x74
 800a0b0:	7ebb      	ldrb	r3, [r7, #26]
 800a0b2:	4618      	mov	r0, r3
 800a0b4:	3720      	adds	r7, #32
 800a0b6:	46bd      	mov	sp, r7
 800a0b8:	e8bd 8890 	ldmia.w	sp!, {r4, r7, fp, pc}
 800a0bc:	0800ad5c 	.word	0x0800ad5c
 800a0c0:	00f42400 	.word	0x00f42400

0800a0c4 <UART_AdvFeatureConfig>:
 800a0c4:	b480      	push	{r7}
 800a0c6:	b083      	sub	sp, #12
 800a0c8:	af00      	add	r7, sp, #0
 800a0ca:	6078      	str	r0, [r7, #4]
 800a0cc:	687b      	ldr	r3, [r7, #4]
 800a0ce:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a0d0:	f003 0301 	and.w	r3, r3, #1
 800a0d4:	2b00      	cmp	r3, #0
 800a0d6:	d00a      	beq.n	800a0ee <UART_AdvFeatureConfig+0x2a>
 800a0d8:	687b      	ldr	r3, [r7, #4]
 800a0da:	681b      	ldr	r3, [r3, #0]
 800a0dc:	685b      	ldr	r3, [r3, #4]
 800a0de:	f423 3100 	bic.w	r1, r3, #131072	; 0x20000
 800a0e2:	687b      	ldr	r3, [r7, #4]
 800a0e4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800a0e6:	687b      	ldr	r3, [r7, #4]
 800a0e8:	681b      	ldr	r3, [r3, #0]
 800a0ea:	430a      	orrs	r2, r1
 800a0ec:	605a      	str	r2, [r3, #4]
 800a0ee:	687b      	ldr	r3, [r7, #4]
 800a0f0:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a0f2:	f003 0302 	and.w	r3, r3, #2
 800a0f6:	2b00      	cmp	r3, #0
 800a0f8:	d00a      	beq.n	800a110 <UART_AdvFeatureConfig+0x4c>
 800a0fa:	687b      	ldr	r3, [r7, #4]
 800a0fc:	681b      	ldr	r3, [r3, #0]
 800a0fe:	685b      	ldr	r3, [r3, #4]
 800a100:	f423 3180 	bic.w	r1, r3, #65536	; 0x10000
 800a104:	687b      	ldr	r3, [r7, #4]
 800a106:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800a108:	687b      	ldr	r3, [r7, #4]
 800a10a:	681b      	ldr	r3, [r3, #0]
 800a10c:	430a      	orrs	r2, r1
 800a10e:	605a      	str	r2, [r3, #4]
 800a110:	687b      	ldr	r3, [r7, #4]
 800a112:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a114:	f003 0304 	and.w	r3, r3, #4
 800a118:	2b00      	cmp	r3, #0
 800a11a:	d00a      	beq.n	800a132 <UART_AdvFeatureConfig+0x6e>
 800a11c:	687b      	ldr	r3, [r7, #4]
 800a11e:	681b      	ldr	r3, [r3, #0]
 800a120:	685b      	ldr	r3, [r3, #4]
 800a122:	f423 2180 	bic.w	r1, r3, #262144	; 0x40000
 800a126:	687b      	ldr	r3, [r7, #4]
 800a128:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 800a12a:	687b      	ldr	r3, [r7, #4]
 800a12c:	681b      	ldr	r3, [r3, #0]
 800a12e:	430a      	orrs	r2, r1
 800a130:	605a      	str	r2, [r3, #4]
 800a132:	687b      	ldr	r3, [r7, #4]
 800a134:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a136:	f003 0308 	and.w	r3, r3, #8
 800a13a:	2b00      	cmp	r3, #0
 800a13c:	d00a      	beq.n	800a154 <UART_AdvFeatureConfig+0x90>
 800a13e:	687b      	ldr	r3, [r7, #4]
 800a140:	681b      	ldr	r3, [r3, #0]
 800a142:	685b      	ldr	r3, [r3, #4]
 800a144:	f423 4100 	bic.w	r1, r3, #32768	; 0x8000
 800a148:	687b      	ldr	r3, [r7, #4]
 800a14a:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800a14c:	687b      	ldr	r3, [r7, #4]
 800a14e:	681b      	ldr	r3, [r3, #0]
 800a150:	430a      	orrs	r2, r1
 800a152:	605a      	str	r2, [r3, #4]
 800a154:	687b      	ldr	r3, [r7, #4]
 800a156:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a158:	f003 0310 	and.w	r3, r3, #16
 800a15c:	2b00      	cmp	r3, #0
 800a15e:	d00a      	beq.n	800a176 <UART_AdvFeatureConfig+0xb2>
 800a160:	687b      	ldr	r3, [r7, #4]
 800a162:	681b      	ldr	r3, [r3, #0]
 800a164:	689b      	ldr	r3, [r3, #8]
 800a166:	f423 5180 	bic.w	r1, r3, #4096	; 0x1000
 800a16a:	687b      	ldr	r3, [r7, #4]
 800a16c:	6bda      	ldr	r2, [r3, #60]	; 0x3c
 800a16e:	687b      	ldr	r3, [r7, #4]
 800a170:	681b      	ldr	r3, [r3, #0]
 800a172:	430a      	orrs	r2, r1
 800a174:	609a      	str	r2, [r3, #8]
 800a176:	687b      	ldr	r3, [r7, #4]
 800a178:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a17a:	f003 0320 	and.w	r3, r3, #32
 800a17e:	2b00      	cmp	r3, #0
 800a180:	d00a      	beq.n	800a198 <UART_AdvFeatureConfig+0xd4>
 800a182:	687b      	ldr	r3, [r7, #4]
 800a184:	681b      	ldr	r3, [r3, #0]
 800a186:	689b      	ldr	r3, [r3, #8]
 800a188:	f423 5100 	bic.w	r1, r3, #8192	; 0x2000
 800a18c:	687b      	ldr	r3, [r7, #4]
 800a18e:	6c1a      	ldr	r2, [r3, #64]	; 0x40
 800a190:	687b      	ldr	r3, [r7, #4]
 800a192:	681b      	ldr	r3, [r3, #0]
 800a194:	430a      	orrs	r2, r1
 800a196:	609a      	str	r2, [r3, #8]
 800a198:	687b      	ldr	r3, [r7, #4]
 800a19a:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a19c:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800a1a0:	2b00      	cmp	r3, #0
 800a1a2:	d01a      	beq.n	800a1da <UART_AdvFeatureConfig+0x116>
 800a1a4:	687b      	ldr	r3, [r7, #4]
 800a1a6:	681b      	ldr	r3, [r3, #0]
 800a1a8:	685b      	ldr	r3, [r3, #4]
 800a1aa:	f423 1180 	bic.w	r1, r3, #1048576	; 0x100000
 800a1ae:	687b      	ldr	r3, [r7, #4]
 800a1b0:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 800a1b2:	687b      	ldr	r3, [r7, #4]
 800a1b4:	681b      	ldr	r3, [r3, #0]
 800a1b6:	430a      	orrs	r2, r1
 800a1b8:	605a      	str	r2, [r3, #4]
 800a1ba:	687b      	ldr	r3, [r7, #4]
 800a1bc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800a1be:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 800a1c2:	d10a      	bne.n	800a1da <UART_AdvFeatureConfig+0x116>
 800a1c4:	687b      	ldr	r3, [r7, #4]
 800a1c6:	681b      	ldr	r3, [r3, #0]
 800a1c8:	685b      	ldr	r3, [r3, #4]
 800a1ca:	f423 01c0 	bic.w	r1, r3, #6291456	; 0x600000
 800a1ce:	687b      	ldr	r3, [r7, #4]
 800a1d0:	6c9a      	ldr	r2, [r3, #72]	; 0x48
 800a1d2:	687b      	ldr	r3, [r7, #4]
 800a1d4:	681b      	ldr	r3, [r3, #0]
 800a1d6:	430a      	orrs	r2, r1
 800a1d8:	605a      	str	r2, [r3, #4]
 800a1da:	687b      	ldr	r3, [r7, #4]
 800a1dc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a1de:	f003 0380 	and.w	r3, r3, #128	; 0x80
 800a1e2:	2b00      	cmp	r3, #0
 800a1e4:	d00a      	beq.n	800a1fc <UART_AdvFeatureConfig+0x138>
 800a1e6:	687b      	ldr	r3, [r7, #4]
 800a1e8:	681b      	ldr	r3, [r3, #0]
 800a1ea:	685b      	ldr	r3, [r3, #4]
 800a1ec:	f423 2100 	bic.w	r1, r3, #524288	; 0x80000
 800a1f0:	687b      	ldr	r3, [r7, #4]
 800a1f2:	6cda      	ldr	r2, [r3, #76]	; 0x4c
 800a1f4:	687b      	ldr	r3, [r7, #4]
 800a1f6:	681b      	ldr	r3, [r3, #0]
 800a1f8:	430a      	orrs	r2, r1
 800a1fa:	605a      	str	r2, [r3, #4]
 800a1fc:	bf00      	nop
 800a1fe:	370c      	adds	r7, #12
 800a200:	46bd      	mov	sp, r7
 800a202:	bc80      	pop	{r7}
 800a204:	4770      	bx	lr

0800a206 <UART_CheckIdleState>:
 800a206:	b580      	push	{r7, lr}
 800a208:	b086      	sub	sp, #24
 800a20a:	af02      	add	r7, sp, #8
 800a20c:	6078      	str	r0, [r7, #4]
 800a20e:	687b      	ldr	r3, [r7, #4]
 800a210:	2200      	movs	r2, #0
 800a212:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 800a216:	f7fd fa53 	bl	80076c0 <HAL_GetTick>
 800a21a:	60f8      	str	r0, [r7, #12]
 800a21c:	687b      	ldr	r3, [r7, #4]
 800a21e:	681b      	ldr	r3, [r3, #0]
 800a220:	681b      	ldr	r3, [r3, #0]
 800a222:	f003 0308 	and.w	r3, r3, #8
 800a226:	2b08      	cmp	r3, #8
 800a228:	d10e      	bne.n	800a248 <UART_CheckIdleState+0x42>
 800a22a:	f06f 437e 	mvn.w	r3, #4261412864	; 0xfe000000
 800a22e:	9300      	str	r3, [sp, #0]
 800a230:	68fb      	ldr	r3, [r7, #12]
 800a232:	2200      	movs	r2, #0
 800a234:	f44f 1100 	mov.w	r1, #2097152	; 0x200000
 800a238:	6878      	ldr	r0, [r7, #4]
 800a23a:	f000 f82f 	bl	800a29c <UART_WaitOnFlagUntilTimeout>
 800a23e:	4603      	mov	r3, r0
 800a240:	2b00      	cmp	r3, #0
 800a242:	d001      	beq.n	800a248 <UART_CheckIdleState+0x42>
 800a244:	2303      	movs	r3, #3
 800a246:	e025      	b.n	800a294 <UART_CheckIdleState+0x8e>
 800a248:	687b      	ldr	r3, [r7, #4]
 800a24a:	681b      	ldr	r3, [r3, #0]
 800a24c:	681b      	ldr	r3, [r3, #0]
 800a24e:	f003 0304 	and.w	r3, r3, #4
 800a252:	2b04      	cmp	r3, #4
 800a254:	d10e      	bne.n	800a274 <UART_CheckIdleState+0x6e>
 800a256:	f06f 437e 	mvn.w	r3, #4261412864	; 0xfe000000
 800a25a:	9300      	str	r3, [sp, #0]
 800a25c:	68fb      	ldr	r3, [r7, #12]
 800a25e:	2200      	movs	r2, #0
 800a260:	f44f 0180 	mov.w	r1, #4194304	; 0x400000
 800a264:	6878      	ldr	r0, [r7, #4]
 800a266:	f000 f819 	bl	800a29c <UART_WaitOnFlagUntilTimeout>
 800a26a:	4603      	mov	r3, r0
 800a26c:	2b00      	cmp	r3, #0
 800a26e:	d001      	beq.n	800a274 <UART_CheckIdleState+0x6e>
 800a270:	2303      	movs	r3, #3
 800a272:	e00f      	b.n	800a294 <UART_CheckIdleState+0x8e>
 800a274:	687b      	ldr	r3, [r7, #4]
 800a276:	2220      	movs	r2, #32
 800a278:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a27c:	687b      	ldr	r3, [r7, #4]
 800a27e:	2220      	movs	r2, #32
 800a280:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800a284:	687b      	ldr	r3, [r7, #4]
 800a286:	2200      	movs	r2, #0
 800a288:	66da      	str	r2, [r3, #108]	; 0x6c
 800a28a:	687b      	ldr	r3, [r7, #4]
 800a28c:	2200      	movs	r2, #0
 800a28e:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a292:	2300      	movs	r3, #0
 800a294:	4618      	mov	r0, r3
 800a296:	3710      	adds	r7, #16
 800a298:	46bd      	mov	sp, r7
 800a29a:	bd80      	pop	{r7, pc}

0800a29c <UART_WaitOnFlagUntilTimeout>:
 800a29c:	b580      	push	{r7, lr}
 800a29e:	b084      	sub	sp, #16
 800a2a0:	af00      	add	r7, sp, #0
 800a2a2:	60f8      	str	r0, [r7, #12]
 800a2a4:	60b9      	str	r1, [r7, #8]
 800a2a6:	603b      	str	r3, [r7, #0]
 800a2a8:	4613      	mov	r3, r2
 800a2aa:	71fb      	strb	r3, [r7, #7]
 800a2ac:	e062      	b.n	800a374 <UART_WaitOnFlagUntilTimeout+0xd8>
 800a2ae:	69bb      	ldr	r3, [r7, #24]
 800a2b0:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800a2b4:	d05e      	beq.n	800a374 <UART_WaitOnFlagUntilTimeout+0xd8>
 800a2b6:	f7fd fa03 	bl	80076c0 <HAL_GetTick>
 800a2ba:	4602      	mov	r2, r0
 800a2bc:	683b      	ldr	r3, [r7, #0]
 800a2be:	1ad3      	subs	r3, r2, r3
 800a2c0:	69ba      	ldr	r2, [r7, #24]
 800a2c2:	429a      	cmp	r2, r3
 800a2c4:	d302      	bcc.n	800a2cc <UART_WaitOnFlagUntilTimeout+0x30>
 800a2c6:	69bb      	ldr	r3, [r7, #24]
 800a2c8:	2b00      	cmp	r3, #0
 800a2ca:	d11d      	bne.n	800a308 <UART_WaitOnFlagUntilTimeout+0x6c>
 800a2cc:	68fb      	ldr	r3, [r7, #12]
 800a2ce:	681b      	ldr	r3, [r3, #0]
 800a2d0:	681a      	ldr	r2, [r3, #0]
 800a2d2:	68fb      	ldr	r3, [r7, #12]
 800a2d4:	681b      	ldr	r3, [r3, #0]
 800a2d6:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 800a2da:	601a      	str	r2, [r3, #0]
 800a2dc:	68fb      	ldr	r3, [r7, #12]
 800a2de:	681b      	ldr	r3, [r3, #0]
 800a2e0:	689a      	ldr	r2, [r3, #8]
 800a2e2:	68fb      	ldr	r3, [r7, #12]
 800a2e4:	681b      	ldr	r3, [r3, #0]
 800a2e6:	f022 0201 	bic.w	r2, r2, #1
 800a2ea:	609a      	str	r2, [r3, #8]
 800a2ec:	68fb      	ldr	r3, [r7, #12]
 800a2ee:	2220      	movs	r2, #32
 800a2f0:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a2f4:	68fb      	ldr	r3, [r7, #12]
 800a2f6:	2220      	movs	r2, #32
 800a2f8:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800a2fc:	68fb      	ldr	r3, [r7, #12]
 800a2fe:	2200      	movs	r2, #0
 800a300:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a304:	2303      	movs	r3, #3
 800a306:	e045      	b.n	800a394 <UART_WaitOnFlagUntilTimeout+0xf8>
 800a308:	68fb      	ldr	r3, [r7, #12]
 800a30a:	681b      	ldr	r3, [r3, #0]
 800a30c:	681b      	ldr	r3, [r3, #0]
 800a30e:	f003 0304 	and.w	r3, r3, #4
 800a312:	2b00      	cmp	r3, #0
 800a314:	d02e      	beq.n	800a374 <UART_WaitOnFlagUntilTimeout+0xd8>
 800a316:	68fb      	ldr	r3, [r7, #12]
 800a318:	681b      	ldr	r3, [r3, #0]
 800a31a:	69db      	ldr	r3, [r3, #28]
 800a31c:	f403 6300 	and.w	r3, r3, #2048	; 0x800
 800a320:	f5b3 6f00 	cmp.w	r3, #2048	; 0x800
 800a324:	d126      	bne.n	800a374 <UART_WaitOnFlagUntilTimeout+0xd8>
 800a326:	68fb      	ldr	r3, [r7, #12]
 800a328:	681b      	ldr	r3, [r3, #0]
 800a32a:	f44f 6200 	mov.w	r2, #2048	; 0x800
 800a32e:	621a      	str	r2, [r3, #32]
 800a330:	68fb      	ldr	r3, [r7, #12]
 800a332:	681b      	ldr	r3, [r3, #0]
 800a334:	681a      	ldr	r2, [r3, #0]
 800a336:	68fb      	ldr	r3, [r7, #12]
 800a338:	681b      	ldr	r3, [r3, #0]
 800a33a:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 800a33e:	601a      	str	r2, [r3, #0]
 800a340:	68fb      	ldr	r3, [r7, #12]
 800a342:	681b      	ldr	r3, [r3, #0]
 800a344:	689a      	ldr	r2, [r3, #8]
 800a346:	68fb      	ldr	r3, [r7, #12]
 800a348:	681b      	ldr	r3, [r3, #0]
 800a34a:	f022 0201 	bic.w	r2, r2, #1
 800a34e:	609a      	str	r2, [r3, #8]
 800a350:	68fb      	ldr	r3, [r7, #12]
 800a352:	2220      	movs	r2, #32
 800a354:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a358:	68fb      	ldr	r3, [r7, #12]
 800a35a:	2220      	movs	r2, #32
 800a35c:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 800a360:	68fb      	ldr	r3, [r7, #12]
 800a362:	2220      	movs	r2, #32
 800a364:	f8c3 208c 	str.w	r2, [r3, #140]	; 0x8c
 800a368:	68fb      	ldr	r3, [r7, #12]
 800a36a:	2200      	movs	r2, #0
 800a36c:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a370:	2303      	movs	r3, #3
 800a372:	e00f      	b.n	800a394 <UART_WaitOnFlagUntilTimeout+0xf8>
 800a374:	68fb      	ldr	r3, [r7, #12]
 800a376:	681b      	ldr	r3, [r3, #0]
 800a378:	69da      	ldr	r2, [r3, #28]
 800a37a:	68bb      	ldr	r3, [r7, #8]
 800a37c:	4013      	ands	r3, r2
 800a37e:	68ba      	ldr	r2, [r7, #8]
 800a380:	429a      	cmp	r2, r3
 800a382:	bf0c      	ite	eq
 800a384:	2301      	moveq	r3, #1
 800a386:	2300      	movne	r3, #0
 800a388:	b2db      	uxtb	r3, r3
 800a38a:	461a      	mov	r2, r3
 800a38c:	79fb      	ldrb	r3, [r7, #7]
 800a38e:	429a      	cmp	r2, r3
 800a390:	d08d      	beq.n	800a2ae <UART_WaitOnFlagUntilTimeout+0x12>
 800a392:	2300      	movs	r3, #0
 800a394:	4618      	mov	r0, r3
 800a396:	3710      	adds	r7, #16
 800a398:	46bd      	mov	sp, r7
 800a39a:	bd80      	pop	{r7, pc}

0800a39c <HAL_UARTEx_DisableFifoMode>:
 800a39c:	b480      	push	{r7}
 800a39e:	b085      	sub	sp, #20
 800a3a0:	af00      	add	r7, sp, #0
 800a3a2:	6078      	str	r0, [r7, #4]
 800a3a4:	687b      	ldr	r3, [r7, #4]
 800a3a6:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800a3aa:	2b01      	cmp	r3, #1
 800a3ac:	d101      	bne.n	800a3b2 <HAL_UARTEx_DisableFifoMode+0x16>
 800a3ae:	2302      	movs	r3, #2
 800a3b0:	e027      	b.n	800a402 <HAL_UARTEx_DisableFifoMode+0x66>
 800a3b2:	687b      	ldr	r3, [r7, #4]
 800a3b4:	2201      	movs	r2, #1
 800a3b6:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a3ba:	687b      	ldr	r3, [r7, #4]
 800a3bc:	2224      	movs	r2, #36	; 0x24
 800a3be:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a3c2:	687b      	ldr	r3, [r7, #4]
 800a3c4:	681b      	ldr	r3, [r3, #0]
 800a3c6:	681b      	ldr	r3, [r3, #0]
 800a3c8:	60fb      	str	r3, [r7, #12]
 800a3ca:	687b      	ldr	r3, [r7, #4]
 800a3cc:	681b      	ldr	r3, [r3, #0]
 800a3ce:	681a      	ldr	r2, [r3, #0]
 800a3d0:	687b      	ldr	r3, [r7, #4]
 800a3d2:	681b      	ldr	r3, [r3, #0]
 800a3d4:	f022 0201 	bic.w	r2, r2, #1
 800a3d8:	601a      	str	r2, [r3, #0]
 800a3da:	68fb      	ldr	r3, [r7, #12]
 800a3dc:	f023 5300 	bic.w	r3, r3, #536870912	; 0x20000000
 800a3e0:	60fb      	str	r3, [r7, #12]
 800a3e2:	687b      	ldr	r3, [r7, #4]
 800a3e4:	2200      	movs	r2, #0
 800a3e6:	665a      	str	r2, [r3, #100]	; 0x64
 800a3e8:	687b      	ldr	r3, [r7, #4]
 800a3ea:	681b      	ldr	r3, [r3, #0]
 800a3ec:	68fa      	ldr	r2, [r7, #12]
 800a3ee:	601a      	str	r2, [r3, #0]
 800a3f0:	687b      	ldr	r3, [r7, #4]
 800a3f2:	2220      	movs	r2, #32
 800a3f4:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a3f8:	687b      	ldr	r3, [r7, #4]
 800a3fa:	2200      	movs	r2, #0
 800a3fc:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a400:	2300      	movs	r3, #0
 800a402:	4618      	mov	r0, r3
 800a404:	3714      	adds	r7, #20
 800a406:	46bd      	mov	sp, r7
 800a408:	bc80      	pop	{r7}
 800a40a:	4770      	bx	lr

0800a40c <HAL_UARTEx_SetTxFifoThreshold>:
 800a40c:	b580      	push	{r7, lr}
 800a40e:	b084      	sub	sp, #16
 800a410:	af00      	add	r7, sp, #0
 800a412:	6078      	str	r0, [r7, #4]
 800a414:	6039      	str	r1, [r7, #0]
 800a416:	687b      	ldr	r3, [r7, #4]
 800a418:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800a41c:	2b01      	cmp	r3, #1
 800a41e:	d101      	bne.n	800a424 <HAL_UARTEx_SetTxFifoThreshold+0x18>
 800a420:	2302      	movs	r3, #2
 800a422:	e02d      	b.n	800a480 <HAL_UARTEx_SetTxFifoThreshold+0x74>
 800a424:	687b      	ldr	r3, [r7, #4]
 800a426:	2201      	movs	r2, #1
 800a428:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a42c:	687b      	ldr	r3, [r7, #4]
 800a42e:	2224      	movs	r2, #36	; 0x24
 800a430:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a434:	687b      	ldr	r3, [r7, #4]
 800a436:	681b      	ldr	r3, [r3, #0]
 800a438:	681b      	ldr	r3, [r3, #0]
 800a43a:	60fb      	str	r3, [r7, #12]
 800a43c:	687b      	ldr	r3, [r7, #4]
 800a43e:	681b      	ldr	r3, [r3, #0]
 800a440:	681a      	ldr	r2, [r3, #0]
 800a442:	687b      	ldr	r3, [r7, #4]
 800a444:	681b      	ldr	r3, [r3, #0]
 800a446:	f022 0201 	bic.w	r2, r2, #1
 800a44a:	601a      	str	r2, [r3, #0]
 800a44c:	687b      	ldr	r3, [r7, #4]
 800a44e:	681b      	ldr	r3, [r3, #0]
 800a450:	689b      	ldr	r3, [r3, #8]
 800a452:	f023 4160 	bic.w	r1, r3, #3758096384	; 0xe0000000
 800a456:	687b      	ldr	r3, [r7, #4]
 800a458:	681b      	ldr	r3, [r3, #0]
 800a45a:	683a      	ldr	r2, [r7, #0]
 800a45c:	430a      	orrs	r2, r1
 800a45e:	609a      	str	r2, [r3, #8]
 800a460:	6878      	ldr	r0, [r7, #4]
 800a462:	f000 f84f 	bl	800a504 <UARTEx_SetNbDataToProcess>
 800a466:	687b      	ldr	r3, [r7, #4]
 800a468:	681b      	ldr	r3, [r3, #0]
 800a46a:	68fa      	ldr	r2, [r7, #12]
 800a46c:	601a      	str	r2, [r3, #0]
 800a46e:	687b      	ldr	r3, [r7, #4]
 800a470:	2220      	movs	r2, #32
 800a472:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a476:	687b      	ldr	r3, [r7, #4]
 800a478:	2200      	movs	r2, #0
 800a47a:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a47e:	2300      	movs	r3, #0
 800a480:	4618      	mov	r0, r3
 800a482:	3710      	adds	r7, #16
 800a484:	46bd      	mov	sp, r7
 800a486:	bd80      	pop	{r7, pc}

0800a488 <HAL_UARTEx_SetRxFifoThreshold>:
 800a488:	b580      	push	{r7, lr}
 800a48a:	b084      	sub	sp, #16
 800a48c:	af00      	add	r7, sp, #0
 800a48e:	6078      	str	r0, [r7, #4]
 800a490:	6039      	str	r1, [r7, #0]
 800a492:	687b      	ldr	r3, [r7, #4]
 800a494:	f893 3080 	ldrb.w	r3, [r3, #128]	; 0x80
 800a498:	2b01      	cmp	r3, #1
 800a49a:	d101      	bne.n	800a4a0 <HAL_UARTEx_SetRxFifoThreshold+0x18>
 800a49c:	2302      	movs	r3, #2
 800a49e:	e02d      	b.n	800a4fc <HAL_UARTEx_SetRxFifoThreshold+0x74>
 800a4a0:	687b      	ldr	r3, [r7, #4]
 800a4a2:	2201      	movs	r2, #1
 800a4a4:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a4a8:	687b      	ldr	r3, [r7, #4]
 800a4aa:	2224      	movs	r2, #36	; 0x24
 800a4ac:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a4b0:	687b      	ldr	r3, [r7, #4]
 800a4b2:	681b      	ldr	r3, [r3, #0]
 800a4b4:	681b      	ldr	r3, [r3, #0]
 800a4b6:	60fb      	str	r3, [r7, #12]
 800a4b8:	687b      	ldr	r3, [r7, #4]
 800a4ba:	681b      	ldr	r3, [r3, #0]
 800a4bc:	681a      	ldr	r2, [r3, #0]
 800a4be:	687b      	ldr	r3, [r7, #4]
 800a4c0:	681b      	ldr	r3, [r3, #0]
 800a4c2:	f022 0201 	bic.w	r2, r2, #1
 800a4c6:	601a      	str	r2, [r3, #0]
 800a4c8:	687b      	ldr	r3, [r7, #4]
 800a4ca:	681b      	ldr	r3, [r3, #0]
 800a4cc:	689b      	ldr	r3, [r3, #8]
 800a4ce:	f023 6160 	bic.w	r1, r3, #234881024	; 0xe000000
 800a4d2:	687b      	ldr	r3, [r7, #4]
 800a4d4:	681b      	ldr	r3, [r3, #0]
 800a4d6:	683a      	ldr	r2, [r7, #0]
 800a4d8:	430a      	orrs	r2, r1
 800a4da:	609a      	str	r2, [r3, #8]
 800a4dc:	6878      	ldr	r0, [r7, #4]
 800a4de:	f000 f811 	bl	800a504 <UARTEx_SetNbDataToProcess>
 800a4e2:	687b      	ldr	r3, [r7, #4]
 800a4e4:	681b      	ldr	r3, [r3, #0]
 800a4e6:	68fa      	ldr	r2, [r7, #12]
 800a4e8:	601a      	str	r2, [r3, #0]
 800a4ea:	687b      	ldr	r3, [r7, #4]
 800a4ec:	2220      	movs	r2, #32
 800a4ee:	f8c3 2084 	str.w	r2, [r3, #132]	; 0x84
 800a4f2:	687b      	ldr	r3, [r7, #4]
 800a4f4:	2200      	movs	r2, #0
 800a4f6:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 800a4fa:	2300      	movs	r3, #0
 800a4fc:	4618      	mov	r0, r3
 800a4fe:	3710      	adds	r7, #16
 800a500:	46bd      	mov	sp, r7
 800a502:	bd80      	pop	{r7, pc}

0800a504 <UARTEx_SetNbDataToProcess>:
 800a504:	b480      	push	{r7}
 800a506:	b085      	sub	sp, #20
 800a508:	af00      	add	r7, sp, #0
 800a50a:	6078      	str	r0, [r7, #4]
 800a50c:	687b      	ldr	r3, [r7, #4]
 800a50e:	6e5b      	ldr	r3, [r3, #100]	; 0x64
 800a510:	2b00      	cmp	r3, #0
 800a512:	d108      	bne.n	800a526 <UARTEx_SetNbDataToProcess+0x22>
 800a514:	687b      	ldr	r3, [r7, #4]
 800a516:	2201      	movs	r2, #1
 800a518:	f8a3 206a 	strh.w	r2, [r3, #106]	; 0x6a
 800a51c:	687b      	ldr	r3, [r7, #4]
 800a51e:	2201      	movs	r2, #1
 800a520:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 800a524:	e031      	b.n	800a58a <UARTEx_SetNbDataToProcess+0x86>
 800a526:	2308      	movs	r3, #8
 800a528:	73fb      	strb	r3, [r7, #15]
 800a52a:	2308      	movs	r3, #8
 800a52c:	73bb      	strb	r3, [r7, #14]
 800a52e:	687b      	ldr	r3, [r7, #4]
 800a530:	681b      	ldr	r3, [r3, #0]
 800a532:	689b      	ldr	r3, [r3, #8]
 800a534:	0e5b      	lsrs	r3, r3, #25
 800a536:	b2db      	uxtb	r3, r3
 800a538:	f003 0307 	and.w	r3, r3, #7
 800a53c:	737b      	strb	r3, [r7, #13]
 800a53e:	687b      	ldr	r3, [r7, #4]
 800a540:	681b      	ldr	r3, [r3, #0]
 800a542:	689b      	ldr	r3, [r3, #8]
 800a544:	0f5b      	lsrs	r3, r3, #29
 800a546:	b2db      	uxtb	r3, r3
 800a548:	f003 0307 	and.w	r3, r3, #7
 800a54c:	733b      	strb	r3, [r7, #12]
 800a54e:	7bbb      	ldrb	r3, [r7, #14]
 800a550:	7b3a      	ldrb	r2, [r7, #12]
 800a552:	4910      	ldr	r1, [pc, #64]	; (800a594 <UARTEx_SetNbDataToProcess+0x90>)
 800a554:	5c8a      	ldrb	r2, [r1, r2]
 800a556:	fb02 f303 	mul.w	r3, r2, r3
 800a55a:	7b3a      	ldrb	r2, [r7, #12]
 800a55c:	490e      	ldr	r1, [pc, #56]	; (800a598 <UARTEx_SetNbDataToProcess+0x94>)
 800a55e:	5c8a      	ldrb	r2, [r1, r2]
 800a560:	fb93 f3f2 	sdiv	r3, r3, r2
 800a564:	b29a      	uxth	r2, r3
 800a566:	687b      	ldr	r3, [r7, #4]
 800a568:	f8a3 206a 	strh.w	r2, [r3, #106]	; 0x6a
 800a56c:	7bfb      	ldrb	r3, [r7, #15]
 800a56e:	7b7a      	ldrb	r2, [r7, #13]
 800a570:	4908      	ldr	r1, [pc, #32]	; (800a594 <UARTEx_SetNbDataToProcess+0x90>)
 800a572:	5c8a      	ldrb	r2, [r1, r2]
 800a574:	fb02 f303 	mul.w	r3, r2, r3
 800a578:	7b7a      	ldrb	r2, [r7, #13]
 800a57a:	4907      	ldr	r1, [pc, #28]	; (800a598 <UARTEx_SetNbDataToProcess+0x94>)
 800a57c:	5c8a      	ldrb	r2, [r1, r2]
 800a57e:	fb93 f3f2 	sdiv	r3, r3, r2
 800a582:	b29a      	uxth	r2, r3
 800a584:	687b      	ldr	r3, [r7, #4]
 800a586:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 800a58a:	bf00      	nop
 800a58c:	3714      	adds	r7, #20
 800a58e:	46bd      	mov	sp, r7
 800a590:	bc80      	pop	{r7}
 800a592:	4770      	bx	lr
 800a594:	0800ad74 	.word	0x0800ad74
 800a598:	0800ad7c 	.word	0x0800ad7c

0800a59c <BSP_LED_Init>:
 800a59c:	b580      	push	{r7, lr}
 800a59e:	b08a      	sub	sp, #40	; 0x28
 800a5a0:	af00      	add	r7, sp, #0
 800a5a2:	4603      	mov	r3, r0
 800a5a4:	71fb      	strb	r3, [r7, #7]
 800a5a6:	79fb      	ldrb	r3, [r7, #7]
 800a5a8:	2b00      	cmp	r3, #0
 800a5aa:	d10c      	bne.n	800a5c6 <BSP_LED_Init+0x2a>
 800a5ac:	4b27      	ldr	r3, [pc, #156]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5ae:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a5b0:	4a26      	ldr	r2, [pc, #152]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5b2:	f043 0304 	orr.w	r3, r3, #4
 800a5b6:	64d3      	str	r3, [r2, #76]	; 0x4c
 800a5b8:	4b24      	ldr	r3, [pc, #144]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5ba:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a5bc:	f003 0304 	and.w	r3, r3, #4
 800a5c0:	613b      	str	r3, [r7, #16]
 800a5c2:	693b      	ldr	r3, [r7, #16]
 800a5c4:	e01b      	b.n	800a5fe <BSP_LED_Init+0x62>
 800a5c6:	79fb      	ldrb	r3, [r7, #7]
 800a5c8:	2b01      	cmp	r3, #1
 800a5ca:	d10c      	bne.n	800a5e6 <BSP_LED_Init+0x4a>
 800a5cc:	4b1f      	ldr	r3, [pc, #124]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5ce:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a5d0:	4a1e      	ldr	r2, [pc, #120]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5d2:	f043 0302 	orr.w	r3, r3, #2
 800a5d6:	64d3      	str	r3, [r2, #76]	; 0x4c
 800a5d8:	4b1c      	ldr	r3, [pc, #112]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5da:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a5dc:	f003 0302 	and.w	r3, r3, #2
 800a5e0:	60fb      	str	r3, [r7, #12]
 800a5e2:	68fb      	ldr	r3, [r7, #12]
 800a5e4:	e00b      	b.n	800a5fe <BSP_LED_Init+0x62>
 800a5e6:	4b19      	ldr	r3, [pc, #100]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5e8:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a5ea:	4a18      	ldr	r2, [pc, #96]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5ec:	f043 0301 	orr.w	r3, r3, #1
 800a5f0:	64d3      	str	r3, [r2, #76]	; 0x4c
 800a5f2:	4b16      	ldr	r3, [pc, #88]	; (800a64c <BSP_LED_Init+0xb0>)
 800a5f4:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a5f6:	f003 0301 	and.w	r3, r3, #1
 800a5fa:	60bb      	str	r3, [r7, #8]
 800a5fc:	68bb      	ldr	r3, [r7, #8]
 800a5fe:	79fb      	ldrb	r3, [r7, #7]
 800a600:	4a13      	ldr	r2, [pc, #76]	; (800a650 <BSP_LED_Init+0xb4>)
 800a602:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a606:	617b      	str	r3, [r7, #20]
 800a608:	2301      	movs	r3, #1
 800a60a:	61bb      	str	r3, [r7, #24]
 800a60c:	2301      	movs	r3, #1
 800a60e:	61fb      	str	r3, [r7, #28]
 800a610:	2303      	movs	r3, #3
 800a612:	623b      	str	r3, [r7, #32]
 800a614:	79fb      	ldrb	r3, [r7, #7]
 800a616:	4a0f      	ldr	r2, [pc, #60]	; (800a654 <BSP_LED_Init+0xb8>)
 800a618:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800a61c:	f107 0214 	add.w	r2, r7, #20
 800a620:	4611      	mov	r1, r2
 800a622:	4618      	mov	r0, r3
 800a624:	f7fd f9be 	bl	80079a4 <HAL_GPIO_Init>
 800a628:	79fb      	ldrb	r3, [r7, #7]
 800a62a:	4a0a      	ldr	r2, [pc, #40]	; (800a654 <BSP_LED_Init+0xb8>)
 800a62c:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800a630:	79fb      	ldrb	r3, [r7, #7]
 800a632:	4a07      	ldr	r2, [pc, #28]	; (800a650 <BSP_LED_Init+0xb4>)
 800a634:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a638:	2200      	movs	r2, #0
 800a63a:	4619      	mov	r1, r3
 800a63c:	f7fd fb30 	bl	8007ca0 <HAL_GPIO_WritePin>
 800a640:	2300      	movs	r3, #0
 800a642:	4618      	mov	r0, r3
 800a644:	3728      	adds	r7, #40	; 0x28
 800a646:	46bd      	mov	sp, r7
 800a648:	bd80      	pop	{r7, pc}
 800a64a:	bf00      	nop
 800a64c:	40021000 	.word	0x40021000
 800a650:	200009b8 	.word	0x200009b8
 800a654:	200009c0 	.word	0x200009c0

0800a658 <BSP_LED_On>:
 800a658:	b580      	push	{r7, lr}
 800a65a:	b082      	sub	sp, #8
 800a65c:	af00      	add	r7, sp, #0
 800a65e:	4603      	mov	r3, r0
 800a660:	71fb      	strb	r3, [r7, #7]
 800a662:	79fb      	ldrb	r3, [r7, #7]
 800a664:	4a07      	ldr	r2, [pc, #28]	; (800a684 <BSP_LED_On+0x2c>)
 800a666:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800a66a:	79fb      	ldrb	r3, [r7, #7]
 800a66c:	4a06      	ldr	r2, [pc, #24]	; (800a688 <BSP_LED_On+0x30>)
 800a66e:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a672:	2201      	movs	r2, #1
 800a674:	4619      	mov	r1, r3
 800a676:	f7fd fb13 	bl	8007ca0 <HAL_GPIO_WritePin>
 800a67a:	2300      	movs	r3, #0
 800a67c:	4618      	mov	r0, r3
 800a67e:	3708      	adds	r7, #8
 800a680:	46bd      	mov	sp, r7
 800a682:	bd80      	pop	{r7, pc}
 800a684:	200009c0 	.word	0x200009c0
 800a688:	200009b8 	.word	0x200009b8

0800a68c <BSP_LED_Off>:
 800a68c:	b580      	push	{r7, lr}
 800a68e:	b082      	sub	sp, #8
 800a690:	af00      	add	r7, sp, #0
 800a692:	4603      	mov	r3, r0
 800a694:	71fb      	strb	r3, [r7, #7]
 800a696:	79fb      	ldrb	r3, [r7, #7]
 800a698:	4a07      	ldr	r2, [pc, #28]	; (800a6b8 <BSP_LED_Off+0x2c>)
 800a69a:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800a69e:	79fb      	ldrb	r3, [r7, #7]
 800a6a0:	4a06      	ldr	r2, [pc, #24]	; (800a6bc <BSP_LED_Off+0x30>)
 800a6a2:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a6a6:	2200      	movs	r2, #0
 800a6a8:	4619      	mov	r1, r3
 800a6aa:	f7fd faf9 	bl	8007ca0 <HAL_GPIO_WritePin>
 800a6ae:	2300      	movs	r3, #0
 800a6b0:	4618      	mov	r0, r3
 800a6b2:	3708      	adds	r7, #8
 800a6b4:	46bd      	mov	sp, r7
 800a6b6:	bd80      	pop	{r7, pc}
 800a6b8:	200009c0 	.word	0x200009c0
 800a6bc:	200009b8 	.word	0x200009b8

0800a6c0 <BSP_LED_Toggle>:
 800a6c0:	b580      	push	{r7, lr}
 800a6c2:	b082      	sub	sp, #8
 800a6c4:	af00      	add	r7, sp, #0
 800a6c6:	4603      	mov	r3, r0
 800a6c8:	71fb      	strb	r3, [r7, #7]
 800a6ca:	79fb      	ldrb	r3, [r7, #7]
 800a6cc:	4a07      	ldr	r2, [pc, #28]	; (800a6ec <BSP_LED_Toggle+0x2c>)
 800a6ce:	f852 0023 	ldr.w	r0, [r2, r3, lsl #2]
 800a6d2:	79fb      	ldrb	r3, [r7, #7]
 800a6d4:	4a06      	ldr	r2, [pc, #24]	; (800a6f0 <BSP_LED_Toggle+0x30>)
 800a6d6:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a6da:	4619      	mov	r1, r3
 800a6dc:	f7fd faf7 	bl	8007cce <HAL_GPIO_TogglePin>
 800a6e0:	2300      	movs	r3, #0
 800a6e2:	4618      	mov	r0, r3
 800a6e4:	3708      	adds	r7, #8
 800a6e6:	46bd      	mov	sp, r7
 800a6e8:	bd80      	pop	{r7, pc}
 800a6ea:	bf00      	nop
 800a6ec:	200009c0 	.word	0x200009c0
 800a6f0:	200009b8 	.word	0x200009b8

0800a6f4 <BSP_PB_Init>:
 800a6f4:	b580      	push	{r7, lr}
 800a6f6:	b08c      	sub	sp, #48	; 0x30
 800a6f8:	af00      	add	r7, sp, #0
 800a6fa:	4603      	mov	r3, r0
 800a6fc:	460a      	mov	r2, r1
 800a6fe:	71fb      	strb	r3, [r7, #7]
 800a700:	4613      	mov	r3, r2
 800a702:	71bb      	strb	r3, [r7, #6]
 800a704:	2300      	movs	r3, #0
 800a706:	62fb      	str	r3, [r7, #44]	; 0x2c
 800a708:	2307      	movs	r3, #7
 800a70a:	617b      	str	r3, [r7, #20]
 800a70c:	4b40      	ldr	r3, [pc, #256]	; (800a810 <BSP_PB_Init+0x11c>)
 800a70e:	613b      	str	r3, [r7, #16]
 800a710:	4b40      	ldr	r3, [pc, #256]	; (800a814 <BSP_PB_Init+0x120>)
 800a712:	60fb      	str	r3, [r7, #12]
 800a714:	4b40      	ldr	r3, [pc, #256]	; (800a818 <BSP_PB_Init+0x124>)
 800a716:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a718:	4a3f      	ldr	r2, [pc, #252]	; (800a818 <BSP_PB_Init+0x124>)
 800a71a:	f043 0304 	orr.w	r3, r3, #4
 800a71e:	64d3      	str	r3, [r2, #76]	; 0x4c
 800a720:	4b3d      	ldr	r3, [pc, #244]	; (800a818 <BSP_PB_Init+0x124>)
 800a722:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 800a724:	f003 0304 	and.w	r3, r3, #4
 800a728:	60bb      	str	r3, [r7, #8]
 800a72a:	68bb      	ldr	r3, [r7, #8]
 800a72c:	79fb      	ldrb	r3, [r7, #7]
 800a72e:	4a3b      	ldr	r2, [pc, #236]	; (800a81c <BSP_PB_Init+0x128>)
 800a730:	f832 3013 	ldrh.w	r3, [r2, r3, lsl #1]
 800a734:	61bb      	str	r3, [r7, #24]
 800a736:	2300      	movs	r3, #0
 800a738:	623b      	str	r3, [r7, #32]
 800a73a:	2302      	movs	r3, #2
 800a73c:	627b      	str	r3, [r7, #36]	; 0x24
 800a73e:	79bb      	ldrb	r3, [r7, #6]
 800a740:	2b00      	cmp	r3, #0
 800a742:	d10b      	bne.n	800a75c <BSP_PB_Init+0x68>
 800a744:	2300      	movs	r3, #0
 800a746:	61fb      	str	r3, [r7, #28]
 800a748:	79fb      	ldrb	r3, [r7, #7]
 800a74a:	4a35      	ldr	r2, [pc, #212]	; (800a820 <BSP_PB_Init+0x12c>)
 800a74c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800a750:	f107 0218 	add.w	r2, r7, #24
 800a754:	4611      	mov	r1, r2
 800a756:	4618      	mov	r0, r3
 800a758:	f7fd f924 	bl	80079a4 <HAL_GPIO_Init>
 800a75c:	79bb      	ldrb	r3, [r7, #6]
 800a75e:	2b01      	cmp	r3, #1
 800a760:	d151      	bne.n	800a806 <BSP_PB_Init+0x112>
 800a762:	4b30      	ldr	r3, [pc, #192]	; (800a824 <BSP_PB_Init+0x130>)
 800a764:	61fb      	str	r3, [r7, #28]
 800a766:	79fb      	ldrb	r3, [r7, #7]
 800a768:	4a2d      	ldr	r2, [pc, #180]	; (800a820 <BSP_PB_Init+0x12c>)
 800a76a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800a76e:	f107 0218 	add.w	r2, r7, #24
 800a772:	4611      	mov	r1, r2
 800a774:	4618      	mov	r0, r3
 800a776:	f7fd f915 	bl	80079a4 <HAL_GPIO_Init>
 800a77a:	79fa      	ldrb	r2, [r7, #7]
 800a77c:	4613      	mov	r3, r2
 800a77e:	005b      	lsls	r3, r3, #1
 800a780:	4413      	add	r3, r2
 800a782:	009b      	lsls	r3, r3, #2
 800a784:	4a28      	ldr	r2, [pc, #160]	; (800a828 <BSP_PB_Init+0x134>)
 800a786:	441a      	add	r2, r3
 800a788:	79fb      	ldrb	r3, [r7, #7]
 800a78a:	009b      	lsls	r3, r3, #2
 800a78c:	f107 0130 	add.w	r1, r7, #48	; 0x30
 800a790:	440b      	add	r3, r1
 800a792:	f853 3c20 	ldr.w	r3, [r3, #-32]
 800a796:	4619      	mov	r1, r3
 800a798:	4610      	mov	r0, r2
 800a79a:	f7fd f8f0 	bl	800797e <HAL_EXTI_GetHandle>
 800a79e:	4603      	mov	r3, r0
 800a7a0:	2b00      	cmp	r3, #0
 800a7a2:	d12d      	bne.n	800a800 <BSP_PB_Init+0x10c>
 800a7a4:	79fa      	ldrb	r2, [r7, #7]
 800a7a6:	4613      	mov	r3, r2
 800a7a8:	005b      	lsls	r3, r3, #1
 800a7aa:	4413      	add	r3, r2
 800a7ac:	009b      	lsls	r3, r3, #2
 800a7ae:	4a1e      	ldr	r2, [pc, #120]	; (800a828 <BSP_PB_Init+0x134>)
 800a7b0:	1898      	adds	r0, r3, r2
 800a7b2:	79fb      	ldrb	r3, [r7, #7]
 800a7b4:	009b      	lsls	r3, r3, #2
 800a7b6:	f107 0230 	add.w	r2, r7, #48	; 0x30
 800a7ba:	4413      	add	r3, r2
 800a7bc:	f853 3c24 	ldr.w	r3, [r3, #-36]
 800a7c0:	461a      	mov	r2, r3
 800a7c2:	2101      	movs	r1, #1
 800a7c4:	f7fd f8b3 	bl	800792e <HAL_EXTI_RegisterCallback>
 800a7c8:	4603      	mov	r3, r0
 800a7ca:	2b00      	cmp	r3, #0
 800a7cc:	d114      	bne.n	800a7f8 <BSP_PB_Init+0x104>
 800a7ce:	79fb      	ldrb	r3, [r7, #7]
 800a7d0:	4a16      	ldr	r2, [pc, #88]	; (800a82c <BSP_PB_Init+0x138>)
 800a7d2:	56d0      	ldrsb	r0, [r2, r3]
 800a7d4:	79fb      	ldrb	r3, [r7, #7]
 800a7d6:	009b      	lsls	r3, r3, #2
 800a7d8:	f107 0230 	add.w	r2, r7, #48	; 0x30
 800a7dc:	4413      	add	r3, r2
 800a7de:	f853 3c1c 	ldr.w	r3, [r3, #-28]
 800a7e2:	2200      	movs	r2, #0
 800a7e4:	4619      	mov	r1, r3
 800a7e6:	f7fd f86e 	bl	80078c6 <HAL_NVIC_SetPriority>
 800a7ea:	79fb      	ldrb	r3, [r7, #7]
 800a7ec:	4a0f      	ldr	r2, [pc, #60]	; (800a82c <BSP_PB_Init+0x138>)
 800a7ee:	56d3      	ldrsb	r3, [r2, r3]
 800a7f0:	4618      	mov	r0, r3
 800a7f2:	f7fd f882 	bl	80078fa <HAL_NVIC_EnableIRQ>
 800a7f6:	e006      	b.n	800a806 <BSP_PB_Init+0x112>
 800a7f8:	f06f 0303 	mvn.w	r3, #3
 800a7fc:	62fb      	str	r3, [r7, #44]	; 0x2c
 800a7fe:	e002      	b.n	800a806 <BSP_PB_Init+0x112>
 800a800:	f06f 0303 	mvn.w	r3, #3
 800a804:	62fb      	str	r3, [r7, #44]	; 0x2c
 800a806:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800a808:	4618      	mov	r0, r3
 800a80a:	3730      	adds	r7, #48	; 0x30
 800a80c:	46bd      	mov	sp, r7
 800a80e:	bd80      	pop	{r7, pc}
 800a810:	0600000d 	.word	0x0600000d
 800a814:	0800a845 	.word	0x0800a845
 800a818:	40021000 	.word	0x40021000
 800a81c:	200009cc 	.word	0x200009cc
 800a820:	200009d0 	.word	0x200009d0
 800a824:	10110000 	.word	0x10110000
 800a828:	20000a8c 	.word	0x20000a8c
 800a82c:	200009d4 	.word	0x200009d4

0800a830 <BSP_PB_Callback>:
 800a830:	b480      	push	{r7}
 800a832:	b083      	sub	sp, #12
 800a834:	af00      	add	r7, sp, #0
 800a836:	4603      	mov	r3, r0
 800a838:	71fb      	strb	r3, [r7, #7]
 800a83a:	bf00      	nop
 800a83c:	370c      	adds	r7, #12
 800a83e:	46bd      	mov	sp, r7
 800a840:	bc80      	pop	{r7}
 800a842:	4770      	bx	lr

0800a844 <BUTTON_USER_EXTI_Callback>:
 800a844:	b580      	push	{r7, lr}
 800a846:	af00      	add	r7, sp, #0
 800a848:	2000      	movs	r0, #0
 800a84a:	f7ff fff1 	bl	800a830 <BSP_PB_Callback>
 800a84e:	bf00      	nop
 800a850:	bd80      	pop	{r7, pc}
	...

0800a854 <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sCrashInfo *sCrashInfo) {
 800a854:	b480      	push	{r7}
 800a856:	b087      	sub	sp, #28
 800a858:	af00      	add	r7, sp, #0
 800a85a:	6078      	str	r0, [r7, #4]
    sContextStateFrame *frame = &sCrashInfo->frame;
 800a85c:	687b      	ldr	r3, [r7, #4]
 800a85e:	3304      	adds	r3, #4
 800a860:	617b      	str	r3, [r7, #20]

  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
 800a862:	4b28      	ldr	r3, [pc, #160]	; (800a904 <HardFault_Handler_C+0xb0>)
 800a864:	681b      	ldr	r3, [r3, #0]
 800a866:	f003 0301 	and.w	r3, r3, #1
 800a86a:	2b00      	cmp	r3, #0
 800a86c:	d000      	beq.n	800a870 <HardFault_Handler_C+0x1c>
 800a86e:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
 800a870:	4b25      	ldr	r3, [pc, #148]	; (800a908 <HardFault_Handler_C+0xb4>)
 800a872:	613b      	str	r3, [r7, #16]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
 800a874:	4b25      	ldr	r3, [pc, #148]	; (800a90c <HardFault_Handler_C+0xb8>)
 800a876:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 800a878:	693b      	ldr	r3, [r7, #16]
 800a87a:	43db      	mvns	r3, r3
 800a87c:	4013      	ands	r3, r2
 800a87e:	2b00      	cmp	r3, #0
 800a880:	bf14      	ite	ne
 800a882:	2301      	movne	r3, #1
 800a884:	2300      	moveq	r3, #0
 800a886:	73fb      	strb	r3, [r7, #15]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
 800a888:	697b      	ldr	r3, [r7, #20]
 800a88a:	69db      	ldr	r3, [r3, #28]
 800a88c:	b2db      	uxtb	r3, r3
 800a88e:	2b00      	cmp	r3, #0
 800a890:	bf14      	ite	ne
 800a892:	2301      	movne	r3, #1
 800a894:	2300      	moveq	r3, #0
 800a896:	73bb      	strb	r3, [r7, #14]

  if (faulted_from_exception || non_usage_fault_occurred) {
 800a898:	7bbb      	ldrb	r3, [r7, #14]
 800a89a:	2b00      	cmp	r3, #0
 800a89c:	d102      	bne.n	800a8a4 <HardFault_Handler_C+0x50>
 800a89e:	7bfb      	ldrb	r3, [r7, #15]
 800a8a0:	2b00      	cmp	r3, #0
 800a8a2:	d003      	beq.n	800a8ac <HardFault_Handler_C+0x58>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
 800a8a4:	4b19      	ldr	r3, [pc, #100]	; (800a90c <HardFault_Handler_C+0xb8>)
 800a8a6:	4a1a      	ldr	r2, [pc, #104]	; (800a910 <HardFault_Handler_C+0xbc>)
 800a8a8:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
 800a8aa:	e7fe      	b.n	800a8aa <HardFault_Handler_C+0x56>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
 800a8ac:	4b17      	ldr	r3, [pc, #92]	; (800a90c <HardFault_Handler_C+0xb8>)
 800a8ae:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 800a8b0:	4b16      	ldr	r3, [pc, #88]	; (800a90c <HardFault_Handler_C+0xb8>)
 800a8b2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 800a8b4:	4915      	ldr	r1, [pc, #84]	; (800a90c <HardFault_Handler_C+0xb8>)
 800a8b6:	4313      	orrs	r3, r2
 800a8b8:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
 800a8ba:	4a16      	ldr	r2, [pc, #88]	; (800a914 <HardFault_Handler_C+0xc0>)
 800a8bc:	697b      	ldr	r3, [r7, #20]
 800a8be:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
 800a8c0:	697b      	ldr	r3, [r7, #20]
 800a8c2:	2200      	movs	r2, #0
 800a8c4:	f062 0210 	orn	r2, r2, #16
 800a8c8:	751a      	strb	r2, [r3, #20]
 800a8ca:	2200      	movs	r2, #0
 800a8cc:	f062 0241 	orn	r2, r2, #65	; 0x41
 800a8d0:	755a      	strb	r2, [r3, #21]
 800a8d2:	2200      	movs	r2, #0
 800a8d4:	f062 0252 	orn	r2, r2, #82	; 0x52
 800a8d8:	759a      	strb	r2, [r3, #22]
 800a8da:	2200      	movs	r2, #0
 800a8dc:	f062 0221 	orn	r2, r2, #33	; 0x21
 800a8e0:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
 800a8e2:	697b      	ldr	r3, [r7, #20]
 800a8e4:	2200      	movs	r2, #0
 800a8e6:	771a      	strb	r2, [r3, #28]
 800a8e8:	2200      	movs	r2, #0
 800a8ea:	775a      	strb	r2, [r3, #29]
 800a8ec:	2200      	movs	r2, #0
 800a8ee:	779a      	strb	r2, [r3, #30]
 800a8f0:	2200      	movs	r2, #0
 800a8f2:	f042 0201 	orr.w	r2, r2, #1
 800a8f6:	77da      	strb	r2, [r3, #31]
}
 800a8f8:	bf00      	nop
 800a8fa:	371c      	adds	r7, #28
 800a8fc:	46bd      	mov	sp, r7
 800a8fe:	bc80      	pop	{r7}
 800a900:	4770      	bx	lr
 800a902:	bf00      	nop
 800a904:	e000edf0 	.word	0xe000edf0
 800a908:	ffff0000 	.word	0xffff0000
 800a90c:	e000ed00 	.word	0xe000ed00
 800a910:	05fa0004 	.word	0x05fa0004
 800a914:	0800a98d 	.word	0x0800a98d

0800a918 <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
 800a918:	491a      	ldr	r1, [pc, #104]	; (800a984 <HardFault_Handler+0x6c>)
 800a91a:	4a1b      	ldr	r2, [pc, #108]	; (800a988 <HardFault_Handler+0x70>)
 800a91c:	600a      	str	r2, [r1, #0]
 800a91e:	f101 0104 	add.w	r1, r1, #4
 800a922:	f01e 0f04 	tst.w	lr, #4
 800a926:	bf0c      	ite	eq
 800a928:	f3ef 8008 	mrseq	r0, MSP
 800a92c:	f3ef 8009 	mrsne	r0, PSP
 800a930:	6802      	ldr	r2, [r0, #0]
 800a932:	600a      	str	r2, [r1, #0]
 800a934:	6842      	ldr	r2, [r0, #4]
 800a936:	604a      	str	r2, [r1, #4]
 800a938:	6882      	ldr	r2, [r0, #8]
 800a93a:	608a      	str	r2, [r1, #8]
 800a93c:	68c2      	ldr	r2, [r0, #12]
 800a93e:	60ca      	str	r2, [r1, #12]
 800a940:	6902      	ldr	r2, [r0, #16]
 800a942:	610a      	str	r2, [r1, #16]
 800a944:	6942      	ldr	r2, [r0, #20]
 800a946:	614a      	str	r2, [r1, #20]
 800a948:	6982      	ldr	r2, [r0, #24]
 800a94a:	618a      	str	r2, [r1, #24]
 800a94c:	69c2      	ldr	r2, [r0, #28]
 800a94e:	61ca      	str	r2, [r1, #28]
 800a950:	f101 011c 	add.w	r1, r1, #28
 800a954:	e8a1 0ff0 	stmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800a958:	f3ef 8209 	mrs	r2, PSP
 800a95c:	600a      	str	r2, [r1, #0]
 800a95e:	f3ef 8208 	mrs	r2, MSP
 800a962:	604a      	str	r2, [r1, #4]
 800a964:	f3ef 8214 	mrs	r2, CONTROL
 800a968:	608a      	str	r2, [r1, #8]
 800a96a:	f3ef 8211 	mrs	r2, BASEPRI
 800a96e:	60ca      	str	r2, [r1, #12]
 800a970:	f3ef 8210 	mrs	r2, PRIMASK
 800a974:	610a      	str	r2, [r1, #16]
 800a976:	f3ef 8213 	mrs	r2, FAULTMASK
 800a97a:	614a      	str	r2, [r1, #20]
 800a97c:	4801      	ldr	r0, [pc, #4]	; (800a984 <HardFault_Handler+0x6c>)
 800a97e:	f7ff bf69 	b.w	800a854 <HardFault_Handler_C>
}
 800a982:	bf00      	nop
 800a984:	200009d8 	.word	0x200009d8
 800a988:	dead55aa 	.word	0xdead55aa

0800a98c <recover_from_task_fault>:
 800a98c:	b480      	push	{r7}
 800a98e:	af00      	add	r7, sp, #0
 800a990:	e7fe      	b.n	800a990 <recover_from_task_fault+0x4>
	...

0800a994 <Reset_Handler>:
 800a994:	f8df d034 	ldr.w	sp, [pc, #52]	; 800a9cc <LoopForever+0x2>
 800a998:	f7fc fd7a 	bl	8007490 <SystemInit>
 800a99c:	2100      	movs	r1, #0
 800a99e:	e003      	b.n	800a9a8 <LoopCopyDataInit>

0800a9a0 <CopyDataInit>:
 800a9a0:	4b0b      	ldr	r3, [pc, #44]	; (800a9d0 <LoopForever+0x6>)
 800a9a2:	585b      	ldr	r3, [r3, r1]
 800a9a4:	5043      	str	r3, [r0, r1]
 800a9a6:	3104      	adds	r1, #4

0800a9a8 <LoopCopyDataInit>:
 800a9a8:	480a      	ldr	r0, [pc, #40]	; (800a9d4 <LoopForever+0xa>)
 800a9aa:	4b0b      	ldr	r3, [pc, #44]	; (800a9d8 <LoopForever+0xe>)
 800a9ac:	1842      	adds	r2, r0, r1
 800a9ae:	429a      	cmp	r2, r3
 800a9b0:	d3f6      	bcc.n	800a9a0 <CopyDataInit>
 800a9b2:	4a0a      	ldr	r2, [pc, #40]	; (800a9dc <LoopForever+0x12>)
 800a9b4:	e002      	b.n	800a9bc <LoopFillZerobss>

0800a9b6 <FillZerobss>:
 800a9b6:	2300      	movs	r3, #0
 800a9b8:	f842 3b04 	str.w	r3, [r2], #4

0800a9bc <LoopFillZerobss>:
 800a9bc:	4b08      	ldr	r3, [pc, #32]	; (800a9e0 <LoopForever+0x16>)
 800a9be:	429a      	cmp	r2, r3
 800a9c0:	d3f9      	bcc.n	800a9b6 <FillZerobss>
 800a9c2:	f7f5 fe03 	bl	80005cc <__libc_init_array>
 800a9c6:	f7fc fad5 	bl	8006f74 <main>

0800a9ca <LoopForever>:
 800a9ca:	e7fe      	b.n	800a9ca <LoopForever>
 800a9cc:	20030000 	.word	0x20030000
 800a9d0:	0800aec0 	.word	0x0800aec0
 800a9d4:	20000000 	.word	0x20000000
 800a9d8:	200009d8 	.word	0x200009d8
 800a9dc:	20000a34 	.word	0x20000a34
 800a9e0:	20000b30 	.word	0x20000b30

0800a9e4 <ADC1_2_IRQHandler>:
 800a9e4:	e7fe      	b.n	800a9e4 <ADC1_2_IRQHandler>
	...

0800a9e8 <register_fini>:
 800a9e8:	4b02      	ldr	r3, [pc, #8]	; (800a9f4 <register_fini+0xc>)
 800a9ea:	b113      	cbz	r3, 800a9f2 <register_fini+0xa>
 800a9ec:	4802      	ldr	r0, [pc, #8]	; (800a9f8 <register_fini+0x10>)
 800a9ee:	f7f5 bdc7 	b.w	8000580 <atexit>
 800a9f2:	4770      	bx	lr
 800a9f4:	00000000 	.word	0x00000000
 800a9f8:	08000599 	.word	0x08000599

0800a9fc <_init>:
 800a9fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800a9fe:	bf00      	nop
 800aa00:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800aa02:	bc08      	pop	{r3}
 800aa04:	469e      	mov	lr, r3
 800aa06:	4770      	bx	lr

0800aa08 <_fini>:
 800aa08:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800aa0a:	bf00      	nop
 800aa0c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800aa0e:	bc08      	pop	{r3}
 800aa10:	469e      	mov	lr, r3
 800aa12:	4770      	bx	lr
 800aa14:	0000      	movs	r0, r0
	...
