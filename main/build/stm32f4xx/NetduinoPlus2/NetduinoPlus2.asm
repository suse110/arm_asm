
/mnt/j/document/doc/src/os/toyos/src/gnu/clion-stm32/arm_asm/main/build/stm32f4xx/NetduinoPlus2/NetduinoPlus2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <deregister_tm_clones>:
 8000188:	4803      	ldr	r0, [pc, #12]	; (8000198 <deregister_tm_clones+0x10>)
 800018a:	4b04      	ldr	r3, [pc, #16]	; (800019c <deregister_tm_clones+0x14>)
 800018c:	4283      	cmp	r3, r0
 800018e:	d002      	beq.n	8000196 <deregister_tm_clones+0xe>
 8000190:	4b03      	ldr	r3, [pc, #12]	; (80001a0 <deregister_tm_clones+0x18>)
 8000192:	b103      	cbz	r3, 8000196 <deregister_tm_clones+0xe>
 8000194:	4718      	bx	r3
 8000196:	4770      	bx	lr
 8000198:	20000498 	.word	0x20000498
 800019c:	20000498 	.word	0x20000498
 80001a0:	00000000 	.word	0x00000000

080001a4 <register_tm_clones>:
 80001a4:	4805      	ldr	r0, [pc, #20]	; (80001bc <register_tm_clones+0x18>)
 80001a6:	4906      	ldr	r1, [pc, #24]	; (80001c0 <register_tm_clones+0x1c>)
 80001a8:	1a0b      	subs	r3, r1, r0
 80001aa:	0fd9      	lsrs	r1, r3, #31
 80001ac:	eb01 01a3 	add.w	r1, r1, r3, asr #2
 80001b0:	1049      	asrs	r1, r1, #1
 80001b2:	d002      	beq.n	80001ba <register_tm_clones+0x16>
 80001b4:	4b03      	ldr	r3, [pc, #12]	; (80001c4 <register_tm_clones+0x20>)
 80001b6:	b103      	cbz	r3, 80001ba <register_tm_clones+0x16>
 80001b8:	4718      	bx	r3
 80001ba:	4770      	bx	lr
 80001bc:	20000498 	.word	0x20000498
 80001c0:	20000498 	.word	0x20000498
 80001c4:	00000000 	.word	0x00000000

080001c8 <__do_global_dtors_aux>:
 80001c8:	b510      	push	{r4, lr}
 80001ca:	4c06      	ldr	r4, [pc, #24]	; (80001e4 <__do_global_dtors_aux+0x1c>)
 80001cc:	7823      	ldrb	r3, [r4, #0]
 80001ce:	b943      	cbnz	r3, 80001e2 <__do_global_dtors_aux+0x1a>
 80001d0:	f7ff ffda 	bl	8000188 <deregister_tm_clones>
 80001d4:	4b04      	ldr	r3, [pc, #16]	; (80001e8 <__do_global_dtors_aux+0x20>)
 80001d6:	b113      	cbz	r3, 80001de <__do_global_dtors_aux+0x16>
 80001d8:	4804      	ldr	r0, [pc, #16]	; (80001ec <__do_global_dtors_aux+0x24>)
 80001da:	f3af 8000 	nop.w
 80001de:	2301      	movs	r3, #1
 80001e0:	7023      	strb	r3, [r4, #0]
 80001e2:	bd10      	pop	{r4, pc}
 80001e4:	20000498 	.word	0x20000498
 80001e8:	00000000 	.word	0x00000000
 80001ec:	08003070 	.word	0x08003070

080001f0 <frame_dummy>:
 80001f0:	b508      	push	{r3, lr}
 80001f2:	4b04      	ldr	r3, [pc, #16]	; (8000204 <frame_dummy+0x14>)
 80001f4:	b11b      	cbz	r3, 80001fe <frame_dummy+0xe>
 80001f6:	4904      	ldr	r1, [pc, #16]	; (8000208 <frame_dummy+0x18>)
 80001f8:	4804      	ldr	r0, [pc, #16]	; (800020c <frame_dummy+0x1c>)
 80001fa:	f3af 8000 	nop.w
 80001fe:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000202:	e7cf      	b.n	80001a4 <register_tm_clones>
 8000204:	00000000 	.word	0x00000000
 8000208:	2000049c 	.word	0x2000049c
 800020c:	08003070 	.word	0x08003070

08000210 <__aeabi_uldivmod>:
 8000210:	b953      	cbnz	r3, 8000228 <__aeabi_uldivmod+0x18>
 8000212:	b94a      	cbnz	r2, 8000228 <__aeabi_uldivmod+0x18>
 8000214:	2900      	cmp	r1, #0
 8000216:	bf08      	it	eq
 8000218:	2800      	cmpeq	r0, #0
 800021a:	bf1c      	itt	ne
 800021c:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8000220:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8000224:	f000 b96e 	b.w	8000504 <__aeabi_idiv0>
 8000228:	f1ad 0c08 	sub.w	ip, sp, #8
 800022c:	e96d ce04 	strd	ip, lr, [sp, #-16]!
 8000230:	f000 f806 	bl	8000240 <__udivmoddi4>
 8000234:	f8dd e004 	ldr.w	lr, [sp, #4]
 8000238:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800023c:	b004      	add	sp, #16
 800023e:	4770      	bx	lr

08000240 <__udivmoddi4>:
 8000240:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000244:	9d08      	ldr	r5, [sp, #32]
 8000246:	4604      	mov	r4, r0
 8000248:	468c      	mov	ip, r1
 800024a:	2b00      	cmp	r3, #0
 800024c:	f040 8083 	bne.w	8000356 <__udivmoddi4+0x116>
 8000250:	428a      	cmp	r2, r1
 8000252:	4617      	mov	r7, r2
 8000254:	d947      	bls.n	80002e6 <__udivmoddi4+0xa6>
 8000256:	fab2 f282 	clz	r2, r2
 800025a:	b142      	cbz	r2, 800026e <__udivmoddi4+0x2e>
 800025c:	f1c2 0020 	rsb	r0, r2, #32
 8000260:	fa24 f000 	lsr.w	r0, r4, r0
 8000264:	4091      	lsls	r1, r2
 8000266:	4097      	lsls	r7, r2
 8000268:	ea40 0c01 	orr.w	ip, r0, r1
 800026c:	4094      	lsls	r4, r2
 800026e:	ea4f 4817 	mov.w	r8, r7, lsr #16
 8000272:	0c23      	lsrs	r3, r4, #16
 8000274:	fbbc f6f8 	udiv	r6, ip, r8
 8000278:	fa1f fe87 	uxth.w	lr, r7
 800027c:	fb08 c116 	mls	r1, r8, r6, ip
 8000280:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8000284:	fb06 f10e 	mul.w	r1, r6, lr
 8000288:	4299      	cmp	r1, r3
 800028a:	d909      	bls.n	80002a0 <__udivmoddi4+0x60>
 800028c:	18fb      	adds	r3, r7, r3
 800028e:	f106 30ff 	add.w	r0, r6, #4294967295	; 0xffffffff
 8000292:	f080 8119 	bcs.w	80004c8 <__udivmoddi4+0x288>
 8000296:	4299      	cmp	r1, r3
 8000298:	f240 8116 	bls.w	80004c8 <__udivmoddi4+0x288>
 800029c:	3e02      	subs	r6, #2
 800029e:	443b      	add	r3, r7
 80002a0:	1a5b      	subs	r3, r3, r1
 80002a2:	b2a4      	uxth	r4, r4
 80002a4:	fbb3 f0f8 	udiv	r0, r3, r8
 80002a8:	fb08 3310 	mls	r3, r8, r0, r3
 80002ac:	ea44 4403 	orr.w	r4, r4, r3, lsl #16
 80002b0:	fb00 fe0e 	mul.w	lr, r0, lr
 80002b4:	45a6      	cmp	lr, r4
 80002b6:	d909      	bls.n	80002cc <__udivmoddi4+0x8c>
 80002b8:	193c      	adds	r4, r7, r4
 80002ba:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 80002be:	f080 8105 	bcs.w	80004cc <__udivmoddi4+0x28c>
 80002c2:	45a6      	cmp	lr, r4
 80002c4:	f240 8102 	bls.w	80004cc <__udivmoddi4+0x28c>
 80002c8:	3802      	subs	r0, #2
 80002ca:	443c      	add	r4, r7
 80002cc:	ea40 4006 	orr.w	r0, r0, r6, lsl #16
 80002d0:	eba4 040e 	sub.w	r4, r4, lr
 80002d4:	2600      	movs	r6, #0
 80002d6:	b11d      	cbz	r5, 80002e0 <__udivmoddi4+0xa0>
 80002d8:	40d4      	lsrs	r4, r2
 80002da:	2300      	movs	r3, #0
 80002dc:	e9c5 4300 	strd	r4, r3, [r5]
 80002e0:	4631      	mov	r1, r6
 80002e2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80002e6:	b902      	cbnz	r2, 80002ea <__udivmoddi4+0xaa>
 80002e8:	deff      	udf	#255	; 0xff
 80002ea:	fab2 f282 	clz	r2, r2
 80002ee:	2a00      	cmp	r2, #0
 80002f0:	d150      	bne.n	8000394 <__udivmoddi4+0x154>
 80002f2:	1bcb      	subs	r3, r1, r7
 80002f4:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 80002f8:	fa1f f887 	uxth.w	r8, r7
 80002fc:	2601      	movs	r6, #1
 80002fe:	fbb3 fcfe 	udiv	ip, r3, lr
 8000302:	0c21      	lsrs	r1, r4, #16
 8000304:	fb0e 331c 	mls	r3, lr, ip, r3
 8000308:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 800030c:	fb08 f30c 	mul.w	r3, r8, ip
 8000310:	428b      	cmp	r3, r1
 8000312:	d907      	bls.n	8000324 <__udivmoddi4+0xe4>
 8000314:	1879      	adds	r1, r7, r1
 8000316:	f10c 30ff 	add.w	r0, ip, #4294967295	; 0xffffffff
 800031a:	d202      	bcs.n	8000322 <__udivmoddi4+0xe2>
 800031c:	428b      	cmp	r3, r1
 800031e:	f200 80e9 	bhi.w	80004f4 <__udivmoddi4+0x2b4>
 8000322:	4684      	mov	ip, r0
 8000324:	1ac9      	subs	r1, r1, r3
 8000326:	b2a3      	uxth	r3, r4
 8000328:	fbb1 f0fe 	udiv	r0, r1, lr
 800032c:	fb0e 1110 	mls	r1, lr, r0, r1
 8000330:	ea43 4401 	orr.w	r4, r3, r1, lsl #16
 8000334:	fb08 f800 	mul.w	r8, r8, r0
 8000338:	45a0      	cmp	r8, r4
 800033a:	d907      	bls.n	800034c <__udivmoddi4+0x10c>
 800033c:	193c      	adds	r4, r7, r4
 800033e:	f100 33ff 	add.w	r3, r0, #4294967295	; 0xffffffff
 8000342:	d202      	bcs.n	800034a <__udivmoddi4+0x10a>
 8000344:	45a0      	cmp	r8, r4
 8000346:	f200 80d9 	bhi.w	80004fc <__udivmoddi4+0x2bc>
 800034a:	4618      	mov	r0, r3
 800034c:	eba4 0408 	sub.w	r4, r4, r8
 8000350:	ea40 400c 	orr.w	r0, r0, ip, lsl #16
 8000354:	e7bf      	b.n	80002d6 <__udivmoddi4+0x96>
 8000356:	428b      	cmp	r3, r1
 8000358:	d909      	bls.n	800036e <__udivmoddi4+0x12e>
 800035a:	2d00      	cmp	r5, #0
 800035c:	f000 80b1 	beq.w	80004c2 <__udivmoddi4+0x282>
 8000360:	2600      	movs	r6, #0
 8000362:	e9c5 0100 	strd	r0, r1, [r5]
 8000366:	4630      	mov	r0, r6
 8000368:	4631      	mov	r1, r6
 800036a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800036e:	fab3 f683 	clz	r6, r3
 8000372:	2e00      	cmp	r6, #0
 8000374:	d14a      	bne.n	800040c <__udivmoddi4+0x1cc>
 8000376:	428b      	cmp	r3, r1
 8000378:	d302      	bcc.n	8000380 <__udivmoddi4+0x140>
 800037a:	4282      	cmp	r2, r0
 800037c:	f200 80b8 	bhi.w	80004f0 <__udivmoddi4+0x2b0>
 8000380:	1a84      	subs	r4, r0, r2
 8000382:	eb61 0103 	sbc.w	r1, r1, r3
 8000386:	2001      	movs	r0, #1
 8000388:	468c      	mov	ip, r1
 800038a:	2d00      	cmp	r5, #0
 800038c:	d0a8      	beq.n	80002e0 <__udivmoddi4+0xa0>
 800038e:	e9c5 4c00 	strd	r4, ip, [r5]
 8000392:	e7a5      	b.n	80002e0 <__udivmoddi4+0xa0>
 8000394:	f1c2 0320 	rsb	r3, r2, #32
 8000398:	fa20 f603 	lsr.w	r6, r0, r3
 800039c:	4097      	lsls	r7, r2
 800039e:	fa01 f002 	lsl.w	r0, r1, r2
 80003a2:	ea4f 4e17 	mov.w	lr, r7, lsr #16
 80003a6:	40d9      	lsrs	r1, r3
 80003a8:	4330      	orrs	r0, r6
 80003aa:	0c03      	lsrs	r3, r0, #16
 80003ac:	fbb1 f6fe 	udiv	r6, r1, lr
 80003b0:	fa1f f887 	uxth.w	r8, r7
 80003b4:	fb0e 1116 	mls	r1, lr, r6, r1
 80003b8:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80003bc:	fb06 f108 	mul.w	r1, r6, r8
 80003c0:	4299      	cmp	r1, r3
 80003c2:	fa04 f402 	lsl.w	r4, r4, r2
 80003c6:	d909      	bls.n	80003dc <__udivmoddi4+0x19c>
 80003c8:	18fb      	adds	r3, r7, r3
 80003ca:	f106 3cff 	add.w	ip, r6, #4294967295	; 0xffffffff
 80003ce:	f080 808d 	bcs.w	80004ec <__udivmoddi4+0x2ac>
 80003d2:	4299      	cmp	r1, r3
 80003d4:	f240 808a 	bls.w	80004ec <__udivmoddi4+0x2ac>
 80003d8:	3e02      	subs	r6, #2
 80003da:	443b      	add	r3, r7
 80003dc:	1a5b      	subs	r3, r3, r1
 80003de:	b281      	uxth	r1, r0
 80003e0:	fbb3 f0fe 	udiv	r0, r3, lr
 80003e4:	fb0e 3310 	mls	r3, lr, r0, r3
 80003e8:	ea41 4103 	orr.w	r1, r1, r3, lsl #16
 80003ec:	fb00 f308 	mul.w	r3, r0, r8
 80003f0:	428b      	cmp	r3, r1
 80003f2:	d907      	bls.n	8000404 <__udivmoddi4+0x1c4>
 80003f4:	1879      	adds	r1, r7, r1
 80003f6:	f100 3cff 	add.w	ip, r0, #4294967295	; 0xffffffff
 80003fa:	d273      	bcs.n	80004e4 <__udivmoddi4+0x2a4>
 80003fc:	428b      	cmp	r3, r1
 80003fe:	d971      	bls.n	80004e4 <__udivmoddi4+0x2a4>
 8000400:	3802      	subs	r0, #2
 8000402:	4439      	add	r1, r7
 8000404:	1acb      	subs	r3, r1, r3
 8000406:	ea40 4606 	orr.w	r6, r0, r6, lsl #16
 800040a:	e778      	b.n	80002fe <__udivmoddi4+0xbe>
 800040c:	f1c6 0c20 	rsb	ip, r6, #32
 8000410:	fa03 f406 	lsl.w	r4, r3, r6
 8000414:	fa22 f30c 	lsr.w	r3, r2, ip
 8000418:	431c      	orrs	r4, r3
 800041a:	fa20 f70c 	lsr.w	r7, r0, ip
 800041e:	fa01 f306 	lsl.w	r3, r1, r6
 8000422:	ea4f 4e14 	mov.w	lr, r4, lsr #16
 8000426:	fa21 f10c 	lsr.w	r1, r1, ip
 800042a:	431f      	orrs	r7, r3
 800042c:	0c3b      	lsrs	r3, r7, #16
 800042e:	fbb1 f9fe 	udiv	r9, r1, lr
 8000432:	fa1f f884 	uxth.w	r8, r4
 8000436:	fb0e 1119 	mls	r1, lr, r9, r1
 800043a:	ea43 4101 	orr.w	r1, r3, r1, lsl #16
 800043e:	fb09 fa08 	mul.w	sl, r9, r8
 8000442:	458a      	cmp	sl, r1
 8000444:	fa02 f206 	lsl.w	r2, r2, r6
 8000448:	fa00 f306 	lsl.w	r3, r0, r6
 800044c:	d908      	bls.n	8000460 <__udivmoddi4+0x220>
 800044e:	1861      	adds	r1, r4, r1
 8000450:	f109 30ff 	add.w	r0, r9, #4294967295	; 0xffffffff
 8000454:	d248      	bcs.n	80004e8 <__udivmoddi4+0x2a8>
 8000456:	458a      	cmp	sl, r1
 8000458:	d946      	bls.n	80004e8 <__udivmoddi4+0x2a8>
 800045a:	f1a9 0902 	sub.w	r9, r9, #2
 800045e:	4421      	add	r1, r4
 8000460:	eba1 010a 	sub.w	r1, r1, sl
 8000464:	b2bf      	uxth	r7, r7
 8000466:	fbb1 f0fe 	udiv	r0, r1, lr
 800046a:	fb0e 1110 	mls	r1, lr, r0, r1
 800046e:	ea47 4701 	orr.w	r7, r7, r1, lsl #16
 8000472:	fb00 f808 	mul.w	r8, r0, r8
 8000476:	45b8      	cmp	r8, r7
 8000478:	d907      	bls.n	800048a <__udivmoddi4+0x24a>
 800047a:	19e7      	adds	r7, r4, r7
 800047c:	f100 31ff 	add.w	r1, r0, #4294967295	; 0xffffffff
 8000480:	d22e      	bcs.n	80004e0 <__udivmoddi4+0x2a0>
 8000482:	45b8      	cmp	r8, r7
 8000484:	d92c      	bls.n	80004e0 <__udivmoddi4+0x2a0>
 8000486:	3802      	subs	r0, #2
 8000488:	4427      	add	r7, r4
 800048a:	ea40 4009 	orr.w	r0, r0, r9, lsl #16
 800048e:	eba7 0708 	sub.w	r7, r7, r8
 8000492:	fba0 8902 	umull	r8, r9, r0, r2
 8000496:	454f      	cmp	r7, r9
 8000498:	46c6      	mov	lr, r8
 800049a:	4649      	mov	r1, r9
 800049c:	d31a      	bcc.n	80004d4 <__udivmoddi4+0x294>
 800049e:	d017      	beq.n	80004d0 <__udivmoddi4+0x290>
 80004a0:	b15d      	cbz	r5, 80004ba <__udivmoddi4+0x27a>
 80004a2:	ebb3 020e 	subs.w	r2, r3, lr
 80004a6:	eb67 0701 	sbc.w	r7, r7, r1
 80004aa:	fa07 fc0c 	lsl.w	ip, r7, ip
 80004ae:	40f2      	lsrs	r2, r6
 80004b0:	ea4c 0202 	orr.w	r2, ip, r2
 80004b4:	40f7      	lsrs	r7, r6
 80004b6:	e9c5 2700 	strd	r2, r7, [r5]
 80004ba:	2600      	movs	r6, #0
 80004bc:	4631      	mov	r1, r6
 80004be:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80004c2:	462e      	mov	r6, r5
 80004c4:	4628      	mov	r0, r5
 80004c6:	e70b      	b.n	80002e0 <__udivmoddi4+0xa0>
 80004c8:	4606      	mov	r6, r0
 80004ca:	e6e9      	b.n	80002a0 <__udivmoddi4+0x60>
 80004cc:	4618      	mov	r0, r3
 80004ce:	e6fd      	b.n	80002cc <__udivmoddi4+0x8c>
 80004d0:	4543      	cmp	r3, r8
 80004d2:	d2e5      	bcs.n	80004a0 <__udivmoddi4+0x260>
 80004d4:	ebb8 0e02 	subs.w	lr, r8, r2
 80004d8:	eb69 0104 	sbc.w	r1, r9, r4
 80004dc:	3801      	subs	r0, #1
 80004de:	e7df      	b.n	80004a0 <__udivmoddi4+0x260>
 80004e0:	4608      	mov	r0, r1
 80004e2:	e7d2      	b.n	800048a <__udivmoddi4+0x24a>
 80004e4:	4660      	mov	r0, ip
 80004e6:	e78d      	b.n	8000404 <__udivmoddi4+0x1c4>
 80004e8:	4681      	mov	r9, r0
 80004ea:	e7b9      	b.n	8000460 <__udivmoddi4+0x220>
 80004ec:	4666      	mov	r6, ip
 80004ee:	e775      	b.n	80003dc <__udivmoddi4+0x19c>
 80004f0:	4630      	mov	r0, r6
 80004f2:	e74a      	b.n	800038a <__udivmoddi4+0x14a>
 80004f4:	f1ac 0c02 	sub.w	ip, ip, #2
 80004f8:	4439      	add	r1, r7
 80004fa:	e713      	b.n	8000324 <__udivmoddi4+0xe4>
 80004fc:	3802      	subs	r0, #2
 80004fe:	443c      	add	r4, r7
 8000500:	e724      	b.n	800034c <__udivmoddi4+0x10c>
 8000502:	bf00      	nop

08000504 <__aeabi_idiv0>:
 8000504:	4770      	bx	lr
 8000506:	bf00      	nop

08000508 <atexit>:
 8000508:	2300      	movs	r3, #0
 800050a:	4601      	mov	r1, r0
 800050c:	461a      	mov	r2, r3
 800050e:	4618      	mov	r0, r3
 8000510:	f000 b88e 	b.w	8000630 <__register_exitproc>

08000514 <__libc_fini_array>:
 8000514:	b538      	push	{r3, r4, r5, lr}
 8000516:	4c0a      	ldr	r4, [pc, #40]	; (8000540 <__libc_fini_array+0x2c>)
 8000518:	4d0a      	ldr	r5, [pc, #40]	; (8000544 <__libc_fini_array+0x30>)
 800051a:	1b64      	subs	r4, r4, r5
 800051c:	10a4      	asrs	r4, r4, #2
 800051e:	d00a      	beq.n	8000536 <__libc_fini_array+0x22>
 8000520:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8000524:	3b01      	subs	r3, #1
 8000526:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800052a:	3c01      	subs	r4, #1
 800052c:	f855 3904 	ldr.w	r3, [r5], #-4
 8000530:	4798      	blx	r3
 8000532:	2c00      	cmp	r4, #0
 8000534:	d1f9      	bne.n	800052a <__libc_fini_array+0x16>
 8000536:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800053a:	f002 bd9f 	b.w	800307c <_fini>
 800053e:	bf00      	nop
 8000540:	08003bd4 	.word	0x08003bd4
 8000544:	08003bd0 	.word	0x08003bd0

08000548 <__libc_init_array>:
 8000548:	b570      	push	{r4, r5, r6, lr}
 800054a:	4e0d      	ldr	r6, [pc, #52]	; (8000580 <__libc_init_array+0x38>)
 800054c:	4d0d      	ldr	r5, [pc, #52]	; (8000584 <__libc_init_array+0x3c>)
 800054e:	1b76      	subs	r6, r6, r5
 8000550:	10b6      	asrs	r6, r6, #2
 8000552:	d006      	beq.n	8000562 <__libc_init_array+0x1a>
 8000554:	2400      	movs	r4, #0
 8000556:	3401      	adds	r4, #1
 8000558:	f855 3b04 	ldr.w	r3, [r5], #4
 800055c:	4798      	blx	r3
 800055e:	42a6      	cmp	r6, r4
 8000560:	d1f9      	bne.n	8000556 <__libc_init_array+0xe>
 8000562:	4e09      	ldr	r6, [pc, #36]	; (8000588 <__libc_init_array+0x40>)
 8000564:	4d09      	ldr	r5, [pc, #36]	; (800058c <__libc_init_array+0x44>)
 8000566:	1b76      	subs	r6, r6, r5
 8000568:	f002 fd82 	bl	8003070 <_init>
 800056c:	10b6      	asrs	r6, r6, #2
 800056e:	d006      	beq.n	800057e <__libc_init_array+0x36>
 8000570:	2400      	movs	r4, #0
 8000572:	3401      	adds	r4, #1
 8000574:	f855 3b04 	ldr.w	r3, [r5], #4
 8000578:	4798      	blx	r3
 800057a:	42a6      	cmp	r6, r4
 800057c:	d1f9      	bne.n	8000572 <__libc_init_array+0x2a>
 800057e:	bd70      	pop	{r4, r5, r6, pc}
 8000580:	08003bc8 	.word	0x08003bc8
 8000584:	08003bc8 	.word	0x08003bc8
 8000588:	08003bd0 	.word	0x08003bd0
 800058c:	08003bc8 	.word	0x08003bc8

08000590 <memset>:
 8000590:	b4f0      	push	{r4, r5, r6, r7}
 8000592:	0786      	lsls	r6, r0, #30
 8000594:	d046      	beq.n	8000624 <memset+0x94>
 8000596:	1e54      	subs	r4, r2, #1
 8000598:	2a00      	cmp	r2, #0
 800059a:	d03c      	beq.n	8000616 <memset+0x86>
 800059c:	b2ca      	uxtb	r2, r1
 800059e:	4603      	mov	r3, r0
 80005a0:	e002      	b.n	80005a8 <memset+0x18>
 80005a2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80005a6:	d336      	bcc.n	8000616 <memset+0x86>
 80005a8:	f803 2b01 	strb.w	r2, [r3], #1
 80005ac:	079d      	lsls	r5, r3, #30
 80005ae:	d1f8      	bne.n	80005a2 <memset+0x12>
 80005b0:	2c03      	cmp	r4, #3
 80005b2:	d929      	bls.n	8000608 <memset+0x78>
 80005b4:	b2cd      	uxtb	r5, r1
 80005b6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80005ba:	2c0f      	cmp	r4, #15
 80005bc:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80005c0:	d933      	bls.n	800062a <memset+0x9a>
 80005c2:	f1a4 0610 	sub.w	r6, r4, #16
 80005c6:	0936      	lsrs	r6, r6, #4
 80005c8:	f103 0720 	add.w	r7, r3, #32
 80005cc:	eb07 1706 	add.w	r7, r7, r6, lsl #4
 80005d0:	f103 0210 	add.w	r2, r3, #16
 80005d4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80005d8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80005dc:	3210      	adds	r2, #16
 80005de:	42ba      	cmp	r2, r7
 80005e0:	d1f8      	bne.n	80005d4 <memset+0x44>
 80005e2:	1c72      	adds	r2, r6, #1
 80005e4:	f014 0f0c 	tst.w	r4, #12
 80005e8:	eb03 1202 	add.w	r2, r3, r2, lsl #4
 80005ec:	f004 060f 	and.w	r6, r4, #15
 80005f0:	d013      	beq.n	800061a <memset+0x8a>
 80005f2:	1f33      	subs	r3, r6, #4
 80005f4:	f023 0303 	bic.w	r3, r3, #3
 80005f8:	3304      	adds	r3, #4
 80005fa:	4413      	add	r3, r2
 80005fc:	f842 5b04 	str.w	r5, [r2], #4
 8000600:	4293      	cmp	r3, r2
 8000602:	d1fb      	bne.n	80005fc <memset+0x6c>
 8000604:	f006 0403 	and.w	r4, r6, #3
 8000608:	b12c      	cbz	r4, 8000616 <memset+0x86>
 800060a:	b2c9      	uxtb	r1, r1
 800060c:	441c      	add	r4, r3
 800060e:	f803 1b01 	strb.w	r1, [r3], #1
 8000612:	429c      	cmp	r4, r3
 8000614:	d1fb      	bne.n	800060e <memset+0x7e>
 8000616:	bcf0      	pop	{r4, r5, r6, r7}
 8000618:	4770      	bx	lr
 800061a:	4634      	mov	r4, r6
 800061c:	4613      	mov	r3, r2
 800061e:	2c00      	cmp	r4, #0
 8000620:	d1f3      	bne.n	800060a <memset+0x7a>
 8000622:	e7f8      	b.n	8000616 <memset+0x86>
 8000624:	4614      	mov	r4, r2
 8000626:	4603      	mov	r3, r0
 8000628:	e7c2      	b.n	80005b0 <memset+0x20>
 800062a:	461a      	mov	r2, r3
 800062c:	4626      	mov	r6, r4
 800062e:	e7e0      	b.n	80005f2 <memset+0x62>

08000630 <__register_exitproc>:
 8000630:	b4f0      	push	{r4, r5, r6, r7}
 8000632:	4c18      	ldr	r4, [pc, #96]	; (8000694 <__register_exitproc+0x64>)
 8000634:	6825      	ldr	r5, [r4, #0]
 8000636:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 800063a:	b314      	cbz	r4, 8000682 <__register_exitproc+0x52>
 800063c:	6865      	ldr	r5, [r4, #4]
 800063e:	2d1f      	cmp	r5, #31
 8000640:	dc24      	bgt.n	800068c <__register_exitproc+0x5c>
 8000642:	b938      	cbnz	r0, 8000654 <__register_exitproc+0x24>
 8000644:	1cab      	adds	r3, r5, #2
 8000646:	3501      	adds	r5, #1
 8000648:	6065      	str	r5, [r4, #4]
 800064a:	f844 1023 	str.w	r1, [r4, r3, lsl #2]
 800064e:	2000      	movs	r0, #0
 8000650:	bcf0      	pop	{r4, r5, r6, r7}
 8000652:	4770      	bx	lr
 8000654:	eb04 0685 	add.w	r6, r4, r5, lsl #2
 8000658:	2701      	movs	r7, #1
 800065a:	f8c6 2088 	str.w	r2, [r6, #136]	; 0x88
 800065e:	fa07 f205 	lsl.w	r2, r7, r5
 8000662:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 8000666:	2802      	cmp	r0, #2
 8000668:	ea47 0702 	orr.w	r7, r7, r2
 800066c:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000670:	f8c6 3108 	str.w	r3, [r6, #264]	; 0x108
 8000674:	d1e6      	bne.n	8000644 <__register_exitproc+0x14>
 8000676:	f8d4 318c 	ldr.w	r3, [r4, #396]	; 0x18c
 800067a:	431a      	orrs	r2, r3
 800067c:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8000680:	e7e0      	b.n	8000644 <__register_exitproc+0x14>
 8000682:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8000686:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 800068a:	e7d7      	b.n	800063c <__register_exitproc+0xc>
 800068c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000690:	e7de      	b.n	8000650 <__register_exitproc+0x20>
 8000692:	bf00      	nop
 8000694:	08003b28 	.word	0x08003b28

08000698 <main>:
 8000698:	b580      	push	{r7, lr}
 800069a:	af00      	add	r7, sp, #0
 800069c:	f000 f988 	bl	80009b0 <HAL_Init>
 80006a0:	f000 f808 	bl	80006b4 <serial_init>
 80006a4:	f002 fbc6 	bl	8002e34 <exception_test>
 80006a8:	f002 f948 	bl	800293c <backtrace_test>
 80006ac:	e7fe      	b.n	80006ac <main+0x14>

080006ae <Error_Handler>:
 80006ae:	b480      	push	{r7}
 80006b0:	af00      	add	r7, sp, #0
 80006b2:	e7fe      	b.n	80006b2 <Error_Handler+0x4>

080006b4 <serial_init>:
 80006b4:	b580      	push	{r7, lr}
 80006b6:	af00      	add	r7, sp, #0
 80006b8:	4b11      	ldr	r3, [pc, #68]	; (8000700 <serial_init+0x4c>)
 80006ba:	4a12      	ldr	r2, [pc, #72]	; (8000704 <serial_init+0x50>)
 80006bc:	601a      	str	r2, [r3, #0]
 80006be:	4b10      	ldr	r3, [pc, #64]	; (8000700 <serial_init+0x4c>)
 80006c0:	f44f 2261 	mov.w	r2, #921600	; 0xe1000
 80006c4:	605a      	str	r2, [r3, #4]
 80006c6:	4b0e      	ldr	r3, [pc, #56]	; (8000700 <serial_init+0x4c>)
 80006c8:	2200      	movs	r2, #0
 80006ca:	609a      	str	r2, [r3, #8]
 80006cc:	4b0c      	ldr	r3, [pc, #48]	; (8000700 <serial_init+0x4c>)
 80006ce:	2200      	movs	r2, #0
 80006d0:	60da      	str	r2, [r3, #12]
 80006d2:	4b0b      	ldr	r3, [pc, #44]	; (8000700 <serial_init+0x4c>)
 80006d4:	2200      	movs	r2, #0
 80006d6:	611a      	str	r2, [r3, #16]
 80006d8:	4b09      	ldr	r3, [pc, #36]	; (8000700 <serial_init+0x4c>)
 80006da:	2200      	movs	r2, #0
 80006dc:	619a      	str	r2, [r3, #24]
 80006de:	4b08      	ldr	r3, [pc, #32]	; (8000700 <serial_init+0x4c>)
 80006e0:	220c      	movs	r2, #12
 80006e2:	615a      	str	r2, [r3, #20]
 80006e4:	4b06      	ldr	r3, [pc, #24]	; (8000700 <serial_init+0x4c>)
 80006e6:	2200      	movs	r2, #0
 80006e8:	61da      	str	r2, [r3, #28]
 80006ea:	4805      	ldr	r0, [pc, #20]	; (8000700 <serial_init+0x4c>)
 80006ec:	f000 fe18 	bl	8001320 <HAL_UART_Init>
 80006f0:	4603      	mov	r3, r0
 80006f2:	2b00      	cmp	r3, #0
 80006f4:	d001      	beq.n	80006fa <serial_init+0x46>
 80006f6:	f7ff ffda 	bl	80006ae <Error_Handler>
 80006fa:	bf00      	nop
 80006fc:	bd80      	pop	{r7, pc}
 80006fe:	bf00      	nop
 8000700:	2000063c 	.word	0x2000063c
 8000704:	40004400 	.word	0x40004400

08000708 <__io_putchar>:
 8000708:	b580      	push	{r7, lr}
 800070a:	b082      	sub	sp, #8
 800070c:	af00      	add	r7, sp, #0
 800070e:	6078      	str	r0, [r7, #4]
 8000710:	1d39      	adds	r1, r7, #4
 8000712:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8000716:	2201      	movs	r2, #1
 8000718:	4803      	ldr	r0, [pc, #12]	; (8000728 <__io_putchar+0x20>)
 800071a:	f000 fe4e 	bl	80013ba <HAL_UART_Transmit>
 800071e:	687b      	ldr	r3, [r7, #4]
 8000720:	4618      	mov	r0, r3
 8000722:	3708      	adds	r7, #8
 8000724:	46bd      	mov	sp, r7
 8000726:	bd80      	pop	{r7, pc}
 8000728:	2000063c 	.word	0x2000063c

0800072c <HAL_UART_MspInit>:
 800072c:	b580      	push	{r7, lr}
 800072e:	b08c      	sub	sp, #48	; 0x30
 8000730:	af00      	add	r7, sp, #0
 8000732:	6078      	str	r0, [r7, #4]
 8000734:	2300      	movs	r3, #0
 8000736:	61bb      	str	r3, [r7, #24]
 8000738:	4b6a      	ldr	r3, [pc, #424]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 800073a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800073c:	4a69      	ldr	r2, [pc, #420]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 800073e:	f043 0301 	orr.w	r3, r3, #1
 8000742:	6313      	str	r3, [r2, #48]	; 0x30
 8000744:	4b67      	ldr	r3, [pc, #412]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 8000746:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000748:	f003 0301 	and.w	r3, r3, #1
 800074c:	61bb      	str	r3, [r7, #24]
 800074e:	69bb      	ldr	r3, [r7, #24]
 8000750:	2300      	movs	r3, #0
 8000752:	617b      	str	r3, [r7, #20]
 8000754:	4b63      	ldr	r3, [pc, #396]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 8000756:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000758:	4a62      	ldr	r2, [pc, #392]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 800075a:	f043 0301 	orr.w	r3, r3, #1
 800075e:	6313      	str	r3, [r2, #48]	; 0x30
 8000760:	4b60      	ldr	r3, [pc, #384]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 8000762:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000764:	f003 0301 	and.w	r3, r3, #1
 8000768:	617b      	str	r3, [r7, #20]
 800076a:	697b      	ldr	r3, [r7, #20]
 800076c:	2300      	movs	r3, #0
 800076e:	613b      	str	r3, [r7, #16]
 8000770:	4b5c      	ldr	r3, [pc, #368]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 8000772:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000774:	4a5b      	ldr	r2, [pc, #364]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 8000776:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 800077a:	6413      	str	r3, [r2, #64]	; 0x40
 800077c:	4b59      	ldr	r3, [pc, #356]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 800077e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8000780:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000784:	613b      	str	r3, [r7, #16]
 8000786:	693b      	ldr	r3, [r7, #16]
 8000788:	2300      	movs	r3, #0
 800078a:	60fb      	str	r3, [r7, #12]
 800078c:	4b55      	ldr	r3, [pc, #340]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 800078e:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000790:	4a54      	ldr	r2, [pc, #336]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 8000792:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000796:	6313      	str	r3, [r2, #48]	; 0x30
 8000798:	4b52      	ldr	r3, [pc, #328]	; (80008e4 <HAL_UART_MspInit+0x1b8>)
 800079a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800079c:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 80007a0:	60fb      	str	r3, [r7, #12]
 80007a2:	68fb      	ldr	r3, [r7, #12]
 80007a4:	2304      	movs	r3, #4
 80007a6:	61fb      	str	r3, [r7, #28]
 80007a8:	2302      	movs	r3, #2
 80007aa:	623b      	str	r3, [r7, #32]
 80007ac:	2300      	movs	r3, #0
 80007ae:	627b      	str	r3, [r7, #36]	; 0x24
 80007b0:	2302      	movs	r3, #2
 80007b2:	62bb      	str	r3, [r7, #40]	; 0x28
 80007b4:	2307      	movs	r3, #7
 80007b6:	62fb      	str	r3, [r7, #44]	; 0x2c
 80007b8:	f107 031c 	add.w	r3, r7, #28
 80007bc:	4619      	mov	r1, r3
 80007be:	484a      	ldr	r0, [pc, #296]	; (80008e8 <HAL_UART_MspInit+0x1bc>)
 80007c0:	f000 fc14 	bl	8000fec <HAL_GPIO_Init>
 80007c4:	2308      	movs	r3, #8
 80007c6:	61fb      	str	r3, [r7, #28]
 80007c8:	2307      	movs	r3, #7
 80007ca:	62fb      	str	r3, [r7, #44]	; 0x2c
 80007cc:	f107 031c 	add.w	r3, r7, #28
 80007d0:	4619      	mov	r1, r3
 80007d2:	4845      	ldr	r0, [pc, #276]	; (80008e8 <HAL_UART_MspInit+0x1bc>)
 80007d4:	f000 fc0a 	bl	8000fec <HAL_GPIO_Init>
 80007d8:	4b44      	ldr	r3, [pc, #272]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 80007da:	4a45      	ldr	r2, [pc, #276]	; (80008f0 <HAL_UART_MspInit+0x1c4>)
 80007dc:	601a      	str	r2, [r3, #0]
 80007de:	4b43      	ldr	r3, [pc, #268]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 80007e0:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80007e4:	605a      	str	r2, [r3, #4]
 80007e6:	4b41      	ldr	r3, [pc, #260]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 80007e8:	2240      	movs	r2, #64	; 0x40
 80007ea:	609a      	str	r2, [r3, #8]
 80007ec:	4b3f      	ldr	r3, [pc, #252]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 80007ee:	2200      	movs	r2, #0
 80007f0:	60da      	str	r2, [r3, #12]
 80007f2:	4b3e      	ldr	r3, [pc, #248]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 80007f4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80007f8:	611a      	str	r2, [r3, #16]
 80007fa:	4b3c      	ldr	r3, [pc, #240]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 80007fc:	2200      	movs	r2, #0
 80007fe:	615a      	str	r2, [r3, #20]
 8000800:	4b3a      	ldr	r3, [pc, #232]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000802:	2200      	movs	r2, #0
 8000804:	619a      	str	r2, [r3, #24]
 8000806:	4b39      	ldr	r3, [pc, #228]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000808:	2200      	movs	r2, #0
 800080a:	61da      	str	r2, [r3, #28]
 800080c:	4b37      	ldr	r3, [pc, #220]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 800080e:	2200      	movs	r2, #0
 8000810:	621a      	str	r2, [r3, #32]
 8000812:	4b36      	ldr	r3, [pc, #216]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000814:	2200      	movs	r2, #0
 8000816:	625a      	str	r2, [r3, #36]	; 0x24
 8000818:	4b34      	ldr	r3, [pc, #208]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 800081a:	2203      	movs	r2, #3
 800081c:	629a      	str	r2, [r3, #40]	; 0x28
 800081e:	4b33      	ldr	r3, [pc, #204]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000820:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 8000824:	62da      	str	r2, [r3, #44]	; 0x2c
 8000826:	4b31      	ldr	r3, [pc, #196]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000828:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 800082c:	631a      	str	r2, [r3, #48]	; 0x30
 800082e:	482f      	ldr	r0, [pc, #188]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000830:	f000 fa7e 	bl	8000d30 <HAL_DMA_Init>
 8000834:	687b      	ldr	r3, [r7, #4]
 8000836:	4a2d      	ldr	r2, [pc, #180]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 8000838:	635a      	str	r2, [r3, #52]	; 0x34
 800083a:	4a2c      	ldr	r2, [pc, #176]	; (80008ec <HAL_UART_MspInit+0x1c0>)
 800083c:	687b      	ldr	r3, [r7, #4]
 800083e:	6393      	str	r3, [r2, #56]	; 0x38
 8000840:	4b2c      	ldr	r3, [pc, #176]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000842:	4a2d      	ldr	r2, [pc, #180]	; (80008f8 <HAL_UART_MspInit+0x1cc>)
 8000844:	601a      	str	r2, [r3, #0]
 8000846:	4b2b      	ldr	r3, [pc, #172]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000848:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800084c:	605a      	str	r2, [r3, #4]
 800084e:	4b29      	ldr	r3, [pc, #164]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000850:	2200      	movs	r2, #0
 8000852:	609a      	str	r2, [r3, #8]
 8000854:	4b27      	ldr	r3, [pc, #156]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000856:	2200      	movs	r2, #0
 8000858:	60da      	str	r2, [r3, #12]
 800085a:	4b26      	ldr	r3, [pc, #152]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 800085c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000860:	611a      	str	r2, [r3, #16]
 8000862:	4b24      	ldr	r3, [pc, #144]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000864:	2200      	movs	r2, #0
 8000866:	615a      	str	r2, [r3, #20]
 8000868:	4b22      	ldr	r3, [pc, #136]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 800086a:	2200      	movs	r2, #0
 800086c:	619a      	str	r2, [r3, #24]
 800086e:	4b21      	ldr	r3, [pc, #132]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000870:	2200      	movs	r2, #0
 8000872:	61da      	str	r2, [r3, #28]
 8000874:	4b1f      	ldr	r3, [pc, #124]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000876:	f44f 3200 	mov.w	r2, #131072	; 0x20000
 800087a:	621a      	str	r2, [r3, #32]
 800087c:	4b1d      	ldr	r3, [pc, #116]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 800087e:	2200      	movs	r2, #0
 8000880:	625a      	str	r2, [r3, #36]	; 0x24
 8000882:	4b1c      	ldr	r3, [pc, #112]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000884:	2203      	movs	r2, #3
 8000886:	629a      	str	r2, [r3, #40]	; 0x28
 8000888:	4b1a      	ldr	r3, [pc, #104]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 800088a:	f44f 0200 	mov.w	r2, #8388608	; 0x800000
 800088e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000890:	4b18      	ldr	r3, [pc, #96]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 8000892:	f44f 1200 	mov.w	r2, #2097152	; 0x200000
 8000896:	631a      	str	r2, [r3, #48]	; 0x30
 8000898:	4816      	ldr	r0, [pc, #88]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 800089a:	f000 fa49 	bl	8000d30 <HAL_DMA_Init>
 800089e:	687b      	ldr	r3, [r7, #4]
 80008a0:	4a14      	ldr	r2, [pc, #80]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 80008a2:	639a      	str	r2, [r3, #56]	; 0x38
 80008a4:	4a13      	ldr	r2, [pc, #76]	; (80008f4 <HAL_UART_MspInit+0x1c8>)
 80008a6:	687b      	ldr	r3, [r7, #4]
 80008a8:	6393      	str	r3, [r2, #56]	; 0x38
 80008aa:	2201      	movs	r2, #1
 80008ac:	2100      	movs	r1, #0
 80008ae:	2011      	movs	r0, #17
 80008b0:	f000 f9d3 	bl	8000c5a <HAL_NVIC_SetPriority>
 80008b4:	2011      	movs	r0, #17
 80008b6:	f000 f9ec 	bl	8000c92 <HAL_NVIC_EnableIRQ>
 80008ba:	2200      	movs	r2, #0
 80008bc:	2100      	movs	r1, #0
 80008be:	2010      	movs	r0, #16
 80008c0:	f000 f9cb 	bl	8000c5a <HAL_NVIC_SetPriority>
 80008c4:	2010      	movs	r0, #16
 80008c6:	f000 f9e4 	bl	8000c92 <HAL_NVIC_EnableIRQ>
 80008ca:	2200      	movs	r2, #0
 80008cc:	2100      	movs	r1, #0
 80008ce:	2026      	movs	r0, #38	; 0x26
 80008d0:	f000 f9c3 	bl	8000c5a <HAL_NVIC_SetPriority>
 80008d4:	2026      	movs	r0, #38	; 0x26
 80008d6:	f000 f9dc 	bl	8000c92 <HAL_NVIC_EnableIRQ>
 80008da:	bf00      	nop
 80008dc:	3730      	adds	r7, #48	; 0x30
 80008de:	46bd      	mov	sp, r7
 80008e0:	bd80      	pop	{r7, pc}
 80008e2:	bf00      	nop
 80008e4:	40023800 	.word	0x40023800
 80008e8:	40020000 	.word	0x40020000
 80008ec:	200004b4 	.word	0x200004b4
 80008f0:	400260a0 	.word	0x400260a0
 80008f4:	20000514 	.word	0x20000514
 80008f8:	40026088 	.word	0x40026088

080008fc <NMI_Handler>:
 80008fc:	b480      	push	{r7}
 80008fe:	af00      	add	r7, sp, #0
 8000900:	bf00      	nop
 8000902:	46bd      	mov	sp, r7
 8000904:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000908:	4770      	bx	lr

0800090a <MemManage_Handler>:
 800090a:	b480      	push	{r7}
 800090c:	af00      	add	r7, sp, #0
 800090e:	e7fe      	b.n	800090e <MemManage_Handler+0x4>

08000910 <BusFault_Handler>:
 8000910:	b480      	push	{r7}
 8000912:	af00      	add	r7, sp, #0
 8000914:	e7fe      	b.n	8000914 <BusFault_Handler+0x4>

08000916 <UsageFault_Handler>:
 8000916:	b480      	push	{r7}
 8000918:	af00      	add	r7, sp, #0
 800091a:	e7fe      	b.n	800091a <UsageFault_Handler+0x4>

0800091c <SVC_Handler>:
 800091c:	b480      	push	{r7}
 800091e:	af00      	add	r7, sp, #0
 8000920:	bf00      	nop
 8000922:	46bd      	mov	sp, r7
 8000924:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000928:	4770      	bx	lr

0800092a <DebugMon_Handler>:
 800092a:	b480      	push	{r7}
 800092c:	af00      	add	r7, sp, #0
 800092e:	bf00      	nop
 8000930:	46bd      	mov	sp, r7
 8000932:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000936:	4770      	bx	lr

08000938 <SysTick_Handler>:
 8000938:	b580      	push	{r7, lr}
 800093a:	af00      	add	r7, sp, #0
 800093c:	f000 f88a 	bl	8000a54 <HAL_IncTick>
 8000940:	bf00      	nop
 8000942:	bd80      	pop	{r7, pc}

08000944 <SystemInit>:
 8000944:	b480      	push	{r7}
 8000946:	af00      	add	r7, sp, #0
 8000948:	4b16      	ldr	r3, [pc, #88]	; (80009a4 <SystemInit+0x60>)
 800094a:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 800094e:	4a15      	ldr	r2, [pc, #84]	; (80009a4 <SystemInit+0x60>)
 8000950:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8000954:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8000958:	4b13      	ldr	r3, [pc, #76]	; (80009a8 <SystemInit+0x64>)
 800095a:	681b      	ldr	r3, [r3, #0]
 800095c:	4a12      	ldr	r2, [pc, #72]	; (80009a8 <SystemInit+0x64>)
 800095e:	f043 0301 	orr.w	r3, r3, #1
 8000962:	6013      	str	r3, [r2, #0]
 8000964:	4b10      	ldr	r3, [pc, #64]	; (80009a8 <SystemInit+0x64>)
 8000966:	2200      	movs	r2, #0
 8000968:	609a      	str	r2, [r3, #8]
 800096a:	4b0f      	ldr	r3, [pc, #60]	; (80009a8 <SystemInit+0x64>)
 800096c:	681b      	ldr	r3, [r3, #0]
 800096e:	4a0e      	ldr	r2, [pc, #56]	; (80009a8 <SystemInit+0x64>)
 8000970:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000974:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8000978:	6013      	str	r3, [r2, #0]
 800097a:	4b0b      	ldr	r3, [pc, #44]	; (80009a8 <SystemInit+0x64>)
 800097c:	4a0b      	ldr	r2, [pc, #44]	; (80009ac <SystemInit+0x68>)
 800097e:	605a      	str	r2, [r3, #4]
 8000980:	4b09      	ldr	r3, [pc, #36]	; (80009a8 <SystemInit+0x64>)
 8000982:	681b      	ldr	r3, [r3, #0]
 8000984:	4a08      	ldr	r2, [pc, #32]	; (80009a8 <SystemInit+0x64>)
 8000986:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800098a:	6013      	str	r3, [r2, #0]
 800098c:	4b06      	ldr	r3, [pc, #24]	; (80009a8 <SystemInit+0x64>)
 800098e:	2200      	movs	r2, #0
 8000990:	60da      	str	r2, [r3, #12]
 8000992:	4b04      	ldr	r3, [pc, #16]	; (80009a4 <SystemInit+0x60>)
 8000994:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8000998:	609a      	str	r2, [r3, #8]
 800099a:	bf00      	nop
 800099c:	46bd      	mov	sp, r7
 800099e:	f85d 7b04 	ldr.w	r7, [sp], #4
 80009a2:	4770      	bx	lr
 80009a4:	e000ed00 	.word	0xe000ed00
 80009a8:	40023800 	.word	0x40023800
 80009ac:	24003010 	.word	0x24003010

080009b0 <HAL_Init>:
 80009b0:	b580      	push	{r7, lr}
 80009b2:	af00      	add	r7, sp, #0
 80009b4:	4b0e      	ldr	r3, [pc, #56]	; (80009f0 <HAL_Init+0x40>)
 80009b6:	681b      	ldr	r3, [r3, #0]
 80009b8:	4a0d      	ldr	r2, [pc, #52]	; (80009f0 <HAL_Init+0x40>)
 80009ba:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 80009be:	6013      	str	r3, [r2, #0]
 80009c0:	4b0b      	ldr	r3, [pc, #44]	; (80009f0 <HAL_Init+0x40>)
 80009c2:	681b      	ldr	r3, [r3, #0]
 80009c4:	4a0a      	ldr	r2, [pc, #40]	; (80009f0 <HAL_Init+0x40>)
 80009c6:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 80009ca:	6013      	str	r3, [r2, #0]
 80009cc:	4b08      	ldr	r3, [pc, #32]	; (80009f0 <HAL_Init+0x40>)
 80009ce:	681b      	ldr	r3, [r3, #0]
 80009d0:	4a07      	ldr	r2, [pc, #28]	; (80009f0 <HAL_Init+0x40>)
 80009d2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 80009d6:	6013      	str	r3, [r2, #0]
 80009d8:	2003      	movs	r0, #3
 80009da:	f000 f933 	bl	8000c44 <HAL_NVIC_SetPriorityGrouping>
 80009de:	200f      	movs	r0, #15
 80009e0:	f000 f808 	bl	80009f4 <HAL_InitTick>
 80009e4:	f000 f856 	bl	8000a94 <HAL_MspInit>
 80009e8:	2300      	movs	r3, #0
 80009ea:	4618      	mov	r0, r3
 80009ec:	bd80      	pop	{r7, pc}
 80009ee:	bf00      	nop
 80009f0:	40023c00 	.word	0x40023c00

080009f4 <HAL_InitTick>:
 80009f4:	b580      	push	{r7, lr}
 80009f6:	b082      	sub	sp, #8
 80009f8:	af00      	add	r7, sp, #0
 80009fa:	6078      	str	r0, [r7, #4]
 80009fc:	4b12      	ldr	r3, [pc, #72]	; (8000a48 <HAL_InitTick+0x54>)
 80009fe:	681a      	ldr	r2, [r3, #0]
 8000a00:	4b12      	ldr	r3, [pc, #72]	; (8000a4c <HAL_InitTick+0x58>)
 8000a02:	781b      	ldrb	r3, [r3, #0]
 8000a04:	4619      	mov	r1, r3
 8000a06:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000a0a:	fbb3 f3f1 	udiv	r3, r3, r1
 8000a0e:	fbb2 f3f3 	udiv	r3, r2, r3
 8000a12:	4618      	mov	r0, r3
 8000a14:	f000 f94b 	bl	8000cae <HAL_SYSTICK_Config>
 8000a18:	4603      	mov	r3, r0
 8000a1a:	2b00      	cmp	r3, #0
 8000a1c:	d001      	beq.n	8000a22 <HAL_InitTick+0x2e>
 8000a1e:	2301      	movs	r3, #1
 8000a20:	e00e      	b.n	8000a40 <HAL_InitTick+0x4c>
 8000a22:	687b      	ldr	r3, [r7, #4]
 8000a24:	2b0f      	cmp	r3, #15
 8000a26:	d80a      	bhi.n	8000a3e <HAL_InitTick+0x4a>
 8000a28:	2200      	movs	r2, #0
 8000a2a:	6879      	ldr	r1, [r7, #4]
 8000a2c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000a30:	f000 f913 	bl	8000c5a <HAL_NVIC_SetPriority>
 8000a34:	4a06      	ldr	r2, [pc, #24]	; (8000a50 <HAL_InitTick+0x5c>)
 8000a36:	687b      	ldr	r3, [r7, #4]
 8000a38:	6013      	str	r3, [r2, #0]
 8000a3a:	2300      	movs	r3, #0
 8000a3c:	e000      	b.n	8000a40 <HAL_InitTick+0x4c>
 8000a3e:	2301      	movs	r3, #1
 8000a40:	4618      	mov	r0, r3
 8000a42:	3708      	adds	r7, #8
 8000a44:	46bd      	mov	sp, r7
 8000a46:	bd80      	pop	{r7, pc}
 8000a48:	20000430 	.word	0x20000430
 8000a4c:	20000438 	.word	0x20000438
 8000a50:	20000434 	.word	0x20000434

08000a54 <HAL_IncTick>:
 8000a54:	b480      	push	{r7}
 8000a56:	af00      	add	r7, sp, #0
 8000a58:	4b06      	ldr	r3, [pc, #24]	; (8000a74 <HAL_IncTick+0x20>)
 8000a5a:	781b      	ldrb	r3, [r3, #0]
 8000a5c:	461a      	mov	r2, r3
 8000a5e:	4b06      	ldr	r3, [pc, #24]	; (8000a78 <HAL_IncTick+0x24>)
 8000a60:	681b      	ldr	r3, [r3, #0]
 8000a62:	4413      	add	r3, r2
 8000a64:	4a04      	ldr	r2, [pc, #16]	; (8000a78 <HAL_IncTick+0x24>)
 8000a66:	6013      	str	r3, [r2, #0]
 8000a68:	bf00      	nop
 8000a6a:	46bd      	mov	sp, r7
 8000a6c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a70:	4770      	bx	lr
 8000a72:	bf00      	nop
 8000a74:	20000438 	.word	0x20000438
 8000a78:	20000680 	.word	0x20000680

08000a7c <HAL_GetTick>:
 8000a7c:	b480      	push	{r7}
 8000a7e:	af00      	add	r7, sp, #0
 8000a80:	4b03      	ldr	r3, [pc, #12]	; (8000a90 <HAL_GetTick+0x14>)
 8000a82:	681b      	ldr	r3, [r3, #0]
 8000a84:	4618      	mov	r0, r3
 8000a86:	46bd      	mov	sp, r7
 8000a88:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000a8c:	4770      	bx	lr
 8000a8e:	bf00      	nop
 8000a90:	20000680 	.word	0x20000680

08000a94 <HAL_MspInit>:
 8000a94:	b480      	push	{r7}
 8000a96:	af00      	add	r7, sp, #0
 8000a98:	bf00      	nop
 8000a9a:	46bd      	mov	sp, r7
 8000a9c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000aa0:	4770      	bx	lr
	...

08000aa4 <__NVIC_SetPriorityGrouping>:
 8000aa4:	b480      	push	{r7}
 8000aa6:	b085      	sub	sp, #20
 8000aa8:	af00      	add	r7, sp, #0
 8000aaa:	6078      	str	r0, [r7, #4]
 8000aac:	687b      	ldr	r3, [r7, #4]
 8000aae:	f003 0307 	and.w	r3, r3, #7
 8000ab2:	60fb      	str	r3, [r7, #12]
 8000ab4:	4b0c      	ldr	r3, [pc, #48]	; (8000ae8 <__NVIC_SetPriorityGrouping+0x44>)
 8000ab6:	68db      	ldr	r3, [r3, #12]
 8000ab8:	60bb      	str	r3, [r7, #8]
 8000aba:	68ba      	ldr	r2, [r7, #8]
 8000abc:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 8000ac0:	4013      	ands	r3, r2
 8000ac2:	60bb      	str	r3, [r7, #8]
 8000ac4:	68fb      	ldr	r3, [r7, #12]
 8000ac6:	021a      	lsls	r2, r3, #8
 8000ac8:	68bb      	ldr	r3, [r7, #8]
 8000aca:	4313      	orrs	r3, r2
 8000acc:	f043 63bf 	orr.w	r3, r3, #100139008	; 0x5f80000
 8000ad0:	f443 3300 	orr.w	r3, r3, #131072	; 0x20000
 8000ad4:	60bb      	str	r3, [r7, #8]
 8000ad6:	4a04      	ldr	r2, [pc, #16]	; (8000ae8 <__NVIC_SetPriorityGrouping+0x44>)
 8000ad8:	68bb      	ldr	r3, [r7, #8]
 8000ada:	60d3      	str	r3, [r2, #12]
 8000adc:	bf00      	nop
 8000ade:	3714      	adds	r7, #20
 8000ae0:	46bd      	mov	sp, r7
 8000ae2:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000ae6:	4770      	bx	lr
 8000ae8:	e000ed00 	.word	0xe000ed00

08000aec <__NVIC_GetPriorityGrouping>:
 8000aec:	b480      	push	{r7}
 8000aee:	af00      	add	r7, sp, #0
 8000af0:	4b04      	ldr	r3, [pc, #16]	; (8000b04 <__NVIC_GetPriorityGrouping+0x18>)
 8000af2:	68db      	ldr	r3, [r3, #12]
 8000af4:	0a1b      	lsrs	r3, r3, #8
 8000af6:	f003 0307 	and.w	r3, r3, #7
 8000afa:	4618      	mov	r0, r3
 8000afc:	46bd      	mov	sp, r7
 8000afe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b02:	4770      	bx	lr
 8000b04:	e000ed00 	.word	0xe000ed00

08000b08 <__NVIC_EnableIRQ>:
 8000b08:	b480      	push	{r7}
 8000b0a:	b083      	sub	sp, #12
 8000b0c:	af00      	add	r7, sp, #0
 8000b0e:	4603      	mov	r3, r0
 8000b10:	71fb      	strb	r3, [r7, #7]
 8000b12:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000b16:	2b00      	cmp	r3, #0
 8000b18:	db0b      	blt.n	8000b32 <__NVIC_EnableIRQ+0x2a>
 8000b1a:	79fb      	ldrb	r3, [r7, #7]
 8000b1c:	f003 021f 	and.w	r2, r3, #31
 8000b20:	4907      	ldr	r1, [pc, #28]	; (8000b40 <__NVIC_EnableIRQ+0x38>)
 8000b22:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000b26:	095b      	lsrs	r3, r3, #5
 8000b28:	2001      	movs	r0, #1
 8000b2a:	fa00 f202 	lsl.w	r2, r0, r2
 8000b2e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000b32:	bf00      	nop
 8000b34:	370c      	adds	r7, #12
 8000b36:	46bd      	mov	sp, r7
 8000b38:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b3c:	4770      	bx	lr
 8000b3e:	bf00      	nop
 8000b40:	e000e100 	.word	0xe000e100

08000b44 <__NVIC_SetPriority>:
 8000b44:	b480      	push	{r7}
 8000b46:	b083      	sub	sp, #12
 8000b48:	af00      	add	r7, sp, #0
 8000b4a:	4603      	mov	r3, r0
 8000b4c:	6039      	str	r1, [r7, #0]
 8000b4e:	71fb      	strb	r3, [r7, #7]
 8000b50:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000b54:	2b00      	cmp	r3, #0
 8000b56:	db0a      	blt.n	8000b6e <__NVIC_SetPriority+0x2a>
 8000b58:	683b      	ldr	r3, [r7, #0]
 8000b5a:	b2da      	uxtb	r2, r3
 8000b5c:	490c      	ldr	r1, [pc, #48]	; (8000b90 <__NVIC_SetPriority+0x4c>)
 8000b5e:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000b62:	0112      	lsls	r2, r2, #4
 8000b64:	b2d2      	uxtb	r2, r2
 8000b66:	440b      	add	r3, r1
 8000b68:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8000b6c:	e00a      	b.n	8000b84 <__NVIC_SetPriority+0x40>
 8000b6e:	683b      	ldr	r3, [r7, #0]
 8000b70:	b2da      	uxtb	r2, r3
 8000b72:	4908      	ldr	r1, [pc, #32]	; (8000b94 <__NVIC_SetPriority+0x50>)
 8000b74:	79fb      	ldrb	r3, [r7, #7]
 8000b76:	f003 030f 	and.w	r3, r3, #15
 8000b7a:	3b04      	subs	r3, #4
 8000b7c:	0112      	lsls	r2, r2, #4
 8000b7e:	b2d2      	uxtb	r2, r2
 8000b80:	440b      	add	r3, r1
 8000b82:	761a      	strb	r2, [r3, #24]
 8000b84:	bf00      	nop
 8000b86:	370c      	adds	r7, #12
 8000b88:	46bd      	mov	sp, r7
 8000b8a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000b8e:	4770      	bx	lr
 8000b90:	e000e100 	.word	0xe000e100
 8000b94:	e000ed00 	.word	0xe000ed00

08000b98 <NVIC_EncodePriority>:
 8000b98:	b480      	push	{r7}
 8000b9a:	b089      	sub	sp, #36	; 0x24
 8000b9c:	af00      	add	r7, sp, #0
 8000b9e:	60f8      	str	r0, [r7, #12]
 8000ba0:	60b9      	str	r1, [r7, #8]
 8000ba2:	607a      	str	r2, [r7, #4]
 8000ba4:	68fb      	ldr	r3, [r7, #12]
 8000ba6:	f003 0307 	and.w	r3, r3, #7
 8000baa:	61fb      	str	r3, [r7, #28]
 8000bac:	69fb      	ldr	r3, [r7, #28]
 8000bae:	f1c3 0307 	rsb	r3, r3, #7
 8000bb2:	2b04      	cmp	r3, #4
 8000bb4:	bf28      	it	cs
 8000bb6:	2304      	movcs	r3, #4
 8000bb8:	61bb      	str	r3, [r7, #24]
 8000bba:	69fb      	ldr	r3, [r7, #28]
 8000bbc:	3304      	adds	r3, #4
 8000bbe:	2b06      	cmp	r3, #6
 8000bc0:	d902      	bls.n	8000bc8 <NVIC_EncodePriority+0x30>
 8000bc2:	69fb      	ldr	r3, [r7, #28]
 8000bc4:	3b03      	subs	r3, #3
 8000bc6:	e000      	b.n	8000bca <NVIC_EncodePriority+0x32>
 8000bc8:	2300      	movs	r3, #0
 8000bca:	617b      	str	r3, [r7, #20]
 8000bcc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000bd0:	69bb      	ldr	r3, [r7, #24]
 8000bd2:	fa02 f303 	lsl.w	r3, r2, r3
 8000bd6:	43da      	mvns	r2, r3
 8000bd8:	68bb      	ldr	r3, [r7, #8]
 8000bda:	401a      	ands	r2, r3
 8000bdc:	697b      	ldr	r3, [r7, #20]
 8000bde:	409a      	lsls	r2, r3
 8000be0:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 8000be4:	697b      	ldr	r3, [r7, #20]
 8000be6:	fa01 f303 	lsl.w	r3, r1, r3
 8000bea:	43d9      	mvns	r1, r3
 8000bec:	687b      	ldr	r3, [r7, #4]
 8000bee:	400b      	ands	r3, r1
 8000bf0:	4313      	orrs	r3, r2
 8000bf2:	4618      	mov	r0, r3
 8000bf4:	3724      	adds	r7, #36	; 0x24
 8000bf6:	46bd      	mov	sp, r7
 8000bf8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000bfc:	4770      	bx	lr
	...

08000c00 <SysTick_Config>:
 8000c00:	b580      	push	{r7, lr}
 8000c02:	b082      	sub	sp, #8
 8000c04:	af00      	add	r7, sp, #0
 8000c06:	6078      	str	r0, [r7, #4]
 8000c08:	687b      	ldr	r3, [r7, #4]
 8000c0a:	3b01      	subs	r3, #1
 8000c0c:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000c10:	d301      	bcc.n	8000c16 <SysTick_Config+0x16>
 8000c12:	2301      	movs	r3, #1
 8000c14:	e00f      	b.n	8000c36 <SysTick_Config+0x36>
 8000c16:	4a0a      	ldr	r2, [pc, #40]	; (8000c40 <SysTick_Config+0x40>)
 8000c18:	687b      	ldr	r3, [r7, #4]
 8000c1a:	3b01      	subs	r3, #1
 8000c1c:	6053      	str	r3, [r2, #4]
 8000c1e:	210f      	movs	r1, #15
 8000c20:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000c24:	f7ff ff8e 	bl	8000b44 <__NVIC_SetPriority>
 8000c28:	4b05      	ldr	r3, [pc, #20]	; (8000c40 <SysTick_Config+0x40>)
 8000c2a:	2200      	movs	r2, #0
 8000c2c:	609a      	str	r2, [r3, #8]
 8000c2e:	4b04      	ldr	r3, [pc, #16]	; (8000c40 <SysTick_Config+0x40>)
 8000c30:	2207      	movs	r2, #7
 8000c32:	601a      	str	r2, [r3, #0]
 8000c34:	2300      	movs	r3, #0
 8000c36:	4618      	mov	r0, r3
 8000c38:	3708      	adds	r7, #8
 8000c3a:	46bd      	mov	sp, r7
 8000c3c:	bd80      	pop	{r7, pc}
 8000c3e:	bf00      	nop
 8000c40:	e000e010 	.word	0xe000e010

08000c44 <HAL_NVIC_SetPriorityGrouping>:
 8000c44:	b580      	push	{r7, lr}
 8000c46:	b082      	sub	sp, #8
 8000c48:	af00      	add	r7, sp, #0
 8000c4a:	6078      	str	r0, [r7, #4]
 8000c4c:	6878      	ldr	r0, [r7, #4]
 8000c4e:	f7ff ff29 	bl	8000aa4 <__NVIC_SetPriorityGrouping>
 8000c52:	bf00      	nop
 8000c54:	3708      	adds	r7, #8
 8000c56:	46bd      	mov	sp, r7
 8000c58:	bd80      	pop	{r7, pc}

08000c5a <HAL_NVIC_SetPriority>:
 8000c5a:	b580      	push	{r7, lr}
 8000c5c:	b086      	sub	sp, #24
 8000c5e:	af00      	add	r7, sp, #0
 8000c60:	4603      	mov	r3, r0
 8000c62:	60b9      	str	r1, [r7, #8]
 8000c64:	607a      	str	r2, [r7, #4]
 8000c66:	73fb      	strb	r3, [r7, #15]
 8000c68:	2300      	movs	r3, #0
 8000c6a:	617b      	str	r3, [r7, #20]
 8000c6c:	f7ff ff3e 	bl	8000aec <__NVIC_GetPriorityGrouping>
 8000c70:	6178      	str	r0, [r7, #20]
 8000c72:	687a      	ldr	r2, [r7, #4]
 8000c74:	68b9      	ldr	r1, [r7, #8]
 8000c76:	6978      	ldr	r0, [r7, #20]
 8000c78:	f7ff ff8e 	bl	8000b98 <NVIC_EncodePriority>
 8000c7c:	4602      	mov	r2, r0
 8000c7e:	f997 300f 	ldrsb.w	r3, [r7, #15]
 8000c82:	4611      	mov	r1, r2
 8000c84:	4618      	mov	r0, r3
 8000c86:	f7ff ff5d 	bl	8000b44 <__NVIC_SetPriority>
 8000c8a:	bf00      	nop
 8000c8c:	3718      	adds	r7, #24
 8000c8e:	46bd      	mov	sp, r7
 8000c90:	bd80      	pop	{r7, pc}

08000c92 <HAL_NVIC_EnableIRQ>:
 8000c92:	b580      	push	{r7, lr}
 8000c94:	b082      	sub	sp, #8
 8000c96:	af00      	add	r7, sp, #0
 8000c98:	4603      	mov	r3, r0
 8000c9a:	71fb      	strb	r3, [r7, #7]
 8000c9c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000ca0:	4618      	mov	r0, r3
 8000ca2:	f7ff ff31 	bl	8000b08 <__NVIC_EnableIRQ>
 8000ca6:	bf00      	nop
 8000ca8:	3708      	adds	r7, #8
 8000caa:	46bd      	mov	sp, r7
 8000cac:	bd80      	pop	{r7, pc}

08000cae <HAL_SYSTICK_Config>:
 8000cae:	b580      	push	{r7, lr}
 8000cb0:	b082      	sub	sp, #8
 8000cb2:	af00      	add	r7, sp, #0
 8000cb4:	6078      	str	r0, [r7, #4]
 8000cb6:	6878      	ldr	r0, [r7, #4]
 8000cb8:	f7ff ffa2 	bl	8000c00 <SysTick_Config>
 8000cbc:	4603      	mov	r3, r0
 8000cbe:	4618      	mov	r0, r3
 8000cc0:	3708      	adds	r7, #8
 8000cc2:	46bd      	mov	sp, r7
 8000cc4:	bd80      	pop	{r7, pc}
	...

08000cc8 <HAL_RCC_GetHCLKFreq>:
 8000cc8:	b480      	push	{r7}
 8000cca:	af00      	add	r7, sp, #0
 8000ccc:	4b03      	ldr	r3, [pc, #12]	; (8000cdc <HAL_RCC_GetHCLKFreq+0x14>)
 8000cce:	681b      	ldr	r3, [r3, #0]
 8000cd0:	4618      	mov	r0, r3
 8000cd2:	46bd      	mov	sp, r7
 8000cd4:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000cd8:	4770      	bx	lr
 8000cda:	bf00      	nop
 8000cdc:	20000430 	.word	0x20000430

08000ce0 <HAL_RCC_GetPCLK1Freq>:
 8000ce0:	b580      	push	{r7, lr}
 8000ce2:	af00      	add	r7, sp, #0
 8000ce4:	f7ff fff0 	bl	8000cc8 <HAL_RCC_GetHCLKFreq>
 8000ce8:	4601      	mov	r1, r0
 8000cea:	4b05      	ldr	r3, [pc, #20]	; (8000d00 <HAL_RCC_GetPCLK1Freq+0x20>)
 8000cec:	689b      	ldr	r3, [r3, #8]
 8000cee:	0a9b      	lsrs	r3, r3, #10
 8000cf0:	f003 0307 	and.w	r3, r3, #7
 8000cf4:	4a03      	ldr	r2, [pc, #12]	; (8000d04 <HAL_RCC_GetPCLK1Freq+0x24>)
 8000cf6:	5cd3      	ldrb	r3, [r2, r3]
 8000cf8:	fa21 f303 	lsr.w	r3, r1, r3
 8000cfc:	4618      	mov	r0, r3
 8000cfe:	bd80      	pop	{r7, pc}
 8000d00:	40023800 	.word	0x40023800
 8000d04:	08003b2c 	.word	0x08003b2c

08000d08 <HAL_RCC_GetPCLK2Freq>:
 8000d08:	b580      	push	{r7, lr}
 8000d0a:	af00      	add	r7, sp, #0
 8000d0c:	f7ff ffdc 	bl	8000cc8 <HAL_RCC_GetHCLKFreq>
 8000d10:	4601      	mov	r1, r0
 8000d12:	4b05      	ldr	r3, [pc, #20]	; (8000d28 <HAL_RCC_GetPCLK2Freq+0x20>)
 8000d14:	689b      	ldr	r3, [r3, #8]
 8000d16:	0b5b      	lsrs	r3, r3, #13
 8000d18:	f003 0307 	and.w	r3, r3, #7
 8000d1c:	4a03      	ldr	r2, [pc, #12]	; (8000d2c <HAL_RCC_GetPCLK2Freq+0x24>)
 8000d1e:	5cd3      	ldrb	r3, [r2, r3]
 8000d20:	fa21 f303 	lsr.w	r3, r1, r3
 8000d24:	4618      	mov	r0, r3
 8000d26:	bd80      	pop	{r7, pc}
 8000d28:	40023800 	.word	0x40023800
 8000d2c:	08003b2c 	.word	0x08003b2c

08000d30 <HAL_DMA_Init>:
 8000d30:	b580      	push	{r7, lr}
 8000d32:	b086      	sub	sp, #24
 8000d34:	af00      	add	r7, sp, #0
 8000d36:	6078      	str	r0, [r7, #4]
 8000d38:	2300      	movs	r3, #0
 8000d3a:	617b      	str	r3, [r7, #20]
 8000d3c:	f7ff fe9e 	bl	8000a7c <HAL_GetTick>
 8000d40:	6138      	str	r0, [r7, #16]
 8000d42:	687b      	ldr	r3, [r7, #4]
 8000d44:	2b00      	cmp	r3, #0
 8000d46:	d101      	bne.n	8000d4c <HAL_DMA_Init+0x1c>
 8000d48:	2301      	movs	r3, #1
 8000d4a:	e099      	b.n	8000e80 <HAL_DMA_Init+0x150>
 8000d4c:	687b      	ldr	r3, [r7, #4]
 8000d4e:	2200      	movs	r2, #0
 8000d50:	f883 2034 	strb.w	r2, [r3, #52]	; 0x34
 8000d54:	687b      	ldr	r3, [r7, #4]
 8000d56:	2202      	movs	r2, #2
 8000d58:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
 8000d5c:	687b      	ldr	r3, [r7, #4]
 8000d5e:	681b      	ldr	r3, [r3, #0]
 8000d60:	681a      	ldr	r2, [r3, #0]
 8000d62:	687b      	ldr	r3, [r7, #4]
 8000d64:	681b      	ldr	r3, [r3, #0]
 8000d66:	f022 0201 	bic.w	r2, r2, #1
 8000d6a:	601a      	str	r2, [r3, #0]
 8000d6c:	e00f      	b.n	8000d8e <HAL_DMA_Init+0x5e>
 8000d6e:	f7ff fe85 	bl	8000a7c <HAL_GetTick>
 8000d72:	4602      	mov	r2, r0
 8000d74:	693b      	ldr	r3, [r7, #16]
 8000d76:	1ad3      	subs	r3, r2, r3
 8000d78:	2b05      	cmp	r3, #5
 8000d7a:	d908      	bls.n	8000d8e <HAL_DMA_Init+0x5e>
 8000d7c:	687b      	ldr	r3, [r7, #4]
 8000d7e:	2220      	movs	r2, #32
 8000d80:	655a      	str	r2, [r3, #84]	; 0x54
 8000d82:	687b      	ldr	r3, [r7, #4]
 8000d84:	2203      	movs	r2, #3
 8000d86:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
 8000d8a:	2303      	movs	r3, #3
 8000d8c:	e078      	b.n	8000e80 <HAL_DMA_Init+0x150>
 8000d8e:	687b      	ldr	r3, [r7, #4]
 8000d90:	681b      	ldr	r3, [r3, #0]
 8000d92:	681b      	ldr	r3, [r3, #0]
 8000d94:	f003 0301 	and.w	r3, r3, #1
 8000d98:	2b00      	cmp	r3, #0
 8000d9a:	d1e8      	bne.n	8000d6e <HAL_DMA_Init+0x3e>
 8000d9c:	687b      	ldr	r3, [r7, #4]
 8000d9e:	681b      	ldr	r3, [r3, #0]
 8000da0:	681b      	ldr	r3, [r3, #0]
 8000da2:	617b      	str	r3, [r7, #20]
 8000da4:	697a      	ldr	r2, [r7, #20]
 8000da6:	4b38      	ldr	r3, [pc, #224]	; (8000e88 <HAL_DMA_Init+0x158>)
 8000da8:	4013      	ands	r3, r2
 8000daa:	617b      	str	r3, [r7, #20]
 8000dac:	687b      	ldr	r3, [r7, #4]
 8000dae:	685a      	ldr	r2, [r3, #4]
 8000db0:	687b      	ldr	r3, [r7, #4]
 8000db2:	689b      	ldr	r3, [r3, #8]
 8000db4:	431a      	orrs	r2, r3
 8000db6:	687b      	ldr	r3, [r7, #4]
 8000db8:	68db      	ldr	r3, [r3, #12]
 8000dba:	431a      	orrs	r2, r3
 8000dbc:	687b      	ldr	r3, [r7, #4]
 8000dbe:	691b      	ldr	r3, [r3, #16]
 8000dc0:	431a      	orrs	r2, r3
 8000dc2:	687b      	ldr	r3, [r7, #4]
 8000dc4:	695b      	ldr	r3, [r3, #20]
 8000dc6:	431a      	orrs	r2, r3
 8000dc8:	687b      	ldr	r3, [r7, #4]
 8000dca:	699b      	ldr	r3, [r3, #24]
 8000dcc:	431a      	orrs	r2, r3
 8000dce:	687b      	ldr	r3, [r7, #4]
 8000dd0:	69db      	ldr	r3, [r3, #28]
 8000dd2:	431a      	orrs	r2, r3
 8000dd4:	687b      	ldr	r3, [r7, #4]
 8000dd6:	6a1b      	ldr	r3, [r3, #32]
 8000dd8:	4313      	orrs	r3, r2
 8000dda:	697a      	ldr	r2, [r7, #20]
 8000ddc:	4313      	orrs	r3, r2
 8000dde:	617b      	str	r3, [r7, #20]
 8000de0:	687b      	ldr	r3, [r7, #4]
 8000de2:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000de4:	2b04      	cmp	r3, #4
 8000de6:	d107      	bne.n	8000df8 <HAL_DMA_Init+0xc8>
 8000de8:	687b      	ldr	r3, [r7, #4]
 8000dea:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000dec:	687b      	ldr	r3, [r7, #4]
 8000dee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000df0:	4313      	orrs	r3, r2
 8000df2:	697a      	ldr	r2, [r7, #20]
 8000df4:	4313      	orrs	r3, r2
 8000df6:	617b      	str	r3, [r7, #20]
 8000df8:	687b      	ldr	r3, [r7, #4]
 8000dfa:	681b      	ldr	r3, [r3, #0]
 8000dfc:	697a      	ldr	r2, [r7, #20]
 8000dfe:	601a      	str	r2, [r3, #0]
 8000e00:	687b      	ldr	r3, [r7, #4]
 8000e02:	681b      	ldr	r3, [r3, #0]
 8000e04:	695b      	ldr	r3, [r3, #20]
 8000e06:	617b      	str	r3, [r7, #20]
 8000e08:	697b      	ldr	r3, [r7, #20]
 8000e0a:	f023 0307 	bic.w	r3, r3, #7
 8000e0e:	617b      	str	r3, [r7, #20]
 8000e10:	687b      	ldr	r3, [r7, #4]
 8000e12:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000e14:	697a      	ldr	r2, [r7, #20]
 8000e16:	4313      	orrs	r3, r2
 8000e18:	617b      	str	r3, [r7, #20]
 8000e1a:	687b      	ldr	r3, [r7, #4]
 8000e1c:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8000e1e:	2b04      	cmp	r3, #4
 8000e20:	d117      	bne.n	8000e52 <HAL_DMA_Init+0x122>
 8000e22:	687b      	ldr	r3, [r7, #4]
 8000e24:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000e26:	697a      	ldr	r2, [r7, #20]
 8000e28:	4313      	orrs	r3, r2
 8000e2a:	617b      	str	r3, [r7, #20]
 8000e2c:	687b      	ldr	r3, [r7, #4]
 8000e2e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000e30:	2b00      	cmp	r3, #0
 8000e32:	d00e      	beq.n	8000e52 <HAL_DMA_Init+0x122>
 8000e34:	6878      	ldr	r0, [r7, #4]
 8000e36:	f000 f85f 	bl	8000ef8 <DMA_CheckFifoParam>
 8000e3a:	4603      	mov	r3, r0
 8000e3c:	2b00      	cmp	r3, #0
 8000e3e:	d008      	beq.n	8000e52 <HAL_DMA_Init+0x122>
 8000e40:	687b      	ldr	r3, [r7, #4]
 8000e42:	2240      	movs	r2, #64	; 0x40
 8000e44:	655a      	str	r2, [r3, #84]	; 0x54
 8000e46:	687b      	ldr	r3, [r7, #4]
 8000e48:	2201      	movs	r2, #1
 8000e4a:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
 8000e4e:	2301      	movs	r3, #1
 8000e50:	e016      	b.n	8000e80 <HAL_DMA_Init+0x150>
 8000e52:	687b      	ldr	r3, [r7, #4]
 8000e54:	681b      	ldr	r3, [r3, #0]
 8000e56:	697a      	ldr	r2, [r7, #20]
 8000e58:	615a      	str	r2, [r3, #20]
 8000e5a:	6878      	ldr	r0, [r7, #4]
 8000e5c:	f000 f816 	bl	8000e8c <DMA_CalcBaseAndBitshift>
 8000e60:	4603      	mov	r3, r0
 8000e62:	60fb      	str	r3, [r7, #12]
 8000e64:	687b      	ldr	r3, [r7, #4]
 8000e66:	6ddb      	ldr	r3, [r3, #92]	; 0x5c
 8000e68:	223f      	movs	r2, #63	; 0x3f
 8000e6a:	409a      	lsls	r2, r3
 8000e6c:	68fb      	ldr	r3, [r7, #12]
 8000e6e:	609a      	str	r2, [r3, #8]
 8000e70:	687b      	ldr	r3, [r7, #4]
 8000e72:	2200      	movs	r2, #0
 8000e74:	655a      	str	r2, [r3, #84]	; 0x54
 8000e76:	687b      	ldr	r3, [r7, #4]
 8000e78:	2201      	movs	r2, #1
 8000e7a:	f883 2035 	strb.w	r2, [r3, #53]	; 0x35
 8000e7e:	2300      	movs	r3, #0
 8000e80:	4618      	mov	r0, r3
 8000e82:	3718      	adds	r7, #24
 8000e84:	46bd      	mov	sp, r7
 8000e86:	bd80      	pop	{r7, pc}
 8000e88:	f010803f 	.word	0xf010803f

08000e8c <DMA_CalcBaseAndBitshift>:
 8000e8c:	b480      	push	{r7}
 8000e8e:	b085      	sub	sp, #20
 8000e90:	af00      	add	r7, sp, #0
 8000e92:	6078      	str	r0, [r7, #4]
 8000e94:	687b      	ldr	r3, [r7, #4]
 8000e96:	681b      	ldr	r3, [r3, #0]
 8000e98:	b2db      	uxtb	r3, r3
 8000e9a:	3b10      	subs	r3, #16
 8000e9c:	4a14      	ldr	r2, [pc, #80]	; (8000ef0 <DMA_CalcBaseAndBitshift+0x64>)
 8000e9e:	fba2 2303 	umull	r2, r3, r2, r3
 8000ea2:	091b      	lsrs	r3, r3, #4
 8000ea4:	60fb      	str	r3, [r7, #12]
 8000ea6:	4a13      	ldr	r2, [pc, #76]	; (8000ef4 <DMA_CalcBaseAndBitshift+0x68>)
 8000ea8:	68fb      	ldr	r3, [r7, #12]
 8000eaa:	4413      	add	r3, r2
 8000eac:	781b      	ldrb	r3, [r3, #0]
 8000eae:	461a      	mov	r2, r3
 8000eb0:	687b      	ldr	r3, [r7, #4]
 8000eb2:	65da      	str	r2, [r3, #92]	; 0x5c
 8000eb4:	68fb      	ldr	r3, [r7, #12]
 8000eb6:	2b03      	cmp	r3, #3
 8000eb8:	d909      	bls.n	8000ece <DMA_CalcBaseAndBitshift+0x42>
 8000eba:	687b      	ldr	r3, [r7, #4]
 8000ebc:	681b      	ldr	r3, [r3, #0]
 8000ebe:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8000ec2:	f023 0303 	bic.w	r3, r3, #3
 8000ec6:	1d1a      	adds	r2, r3, #4
 8000ec8:	687b      	ldr	r3, [r7, #4]
 8000eca:	659a      	str	r2, [r3, #88]	; 0x58
 8000ecc:	e007      	b.n	8000ede <DMA_CalcBaseAndBitshift+0x52>
 8000ece:	687b      	ldr	r3, [r7, #4]
 8000ed0:	681b      	ldr	r3, [r3, #0]
 8000ed2:	f423 737f 	bic.w	r3, r3, #1020	; 0x3fc
 8000ed6:	f023 0303 	bic.w	r3, r3, #3
 8000eda:	687a      	ldr	r2, [r7, #4]
 8000edc:	6593      	str	r3, [r2, #88]	; 0x58
 8000ede:	687b      	ldr	r3, [r7, #4]
 8000ee0:	6d9b      	ldr	r3, [r3, #88]	; 0x58
 8000ee2:	4618      	mov	r0, r3
 8000ee4:	3714      	adds	r7, #20
 8000ee6:	46bd      	mov	sp, r7
 8000ee8:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000eec:	4770      	bx	lr
 8000eee:	bf00      	nop
 8000ef0:	aaaaaaab 	.word	0xaaaaaaab
 8000ef4:	08003b34 	.word	0x08003b34

08000ef8 <DMA_CheckFifoParam>:
 8000ef8:	b480      	push	{r7}
 8000efa:	b085      	sub	sp, #20
 8000efc:	af00      	add	r7, sp, #0
 8000efe:	6078      	str	r0, [r7, #4]
 8000f00:	2300      	movs	r3, #0
 8000f02:	73fb      	strb	r3, [r7, #15]
 8000f04:	687b      	ldr	r3, [r7, #4]
 8000f06:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8000f08:	60bb      	str	r3, [r7, #8]
 8000f0a:	687b      	ldr	r3, [r7, #4]
 8000f0c:	699b      	ldr	r3, [r3, #24]
 8000f0e:	2b00      	cmp	r3, #0
 8000f10:	d11f      	bne.n	8000f52 <DMA_CheckFifoParam+0x5a>
 8000f12:	68bb      	ldr	r3, [r7, #8]
 8000f14:	2b03      	cmp	r3, #3
 8000f16:	d855      	bhi.n	8000fc4 <DMA_CheckFifoParam+0xcc>
 8000f18:	a201      	add	r2, pc, #4	; (adr r2, 8000f20 <DMA_CheckFifoParam+0x28>)
 8000f1a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000f1e:	bf00      	nop
 8000f20:	08000f31 	.word	0x08000f31
 8000f24:	08000f43 	.word	0x08000f43
 8000f28:	08000f31 	.word	0x08000f31
 8000f2c:	08000fc5 	.word	0x08000fc5
 8000f30:	687b      	ldr	r3, [r7, #4]
 8000f32:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000f34:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8000f38:	2b00      	cmp	r3, #0
 8000f3a:	d045      	beq.n	8000fc8 <DMA_CheckFifoParam+0xd0>
 8000f3c:	2301      	movs	r3, #1
 8000f3e:	73fb      	strb	r3, [r7, #15]
 8000f40:	e042      	b.n	8000fc8 <DMA_CheckFifoParam+0xd0>
 8000f42:	687b      	ldr	r3, [r7, #4]
 8000f44:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000f46:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8000f4a:	d13f      	bne.n	8000fcc <DMA_CheckFifoParam+0xd4>
 8000f4c:	2301      	movs	r3, #1
 8000f4e:	73fb      	strb	r3, [r7, #15]
 8000f50:	e03c      	b.n	8000fcc <DMA_CheckFifoParam+0xd4>
 8000f52:	687b      	ldr	r3, [r7, #4]
 8000f54:	699b      	ldr	r3, [r3, #24]
 8000f56:	f5b3 5f00 	cmp.w	r3, #8192	; 0x2000
 8000f5a:	d121      	bne.n	8000fa0 <DMA_CheckFifoParam+0xa8>
 8000f5c:	68bb      	ldr	r3, [r7, #8]
 8000f5e:	2b03      	cmp	r3, #3
 8000f60:	d836      	bhi.n	8000fd0 <DMA_CheckFifoParam+0xd8>
 8000f62:	a201      	add	r2, pc, #4	; (adr r2, 8000f68 <DMA_CheckFifoParam+0x70>)
 8000f64:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000f68:	08000f79 	.word	0x08000f79
 8000f6c:	08000f7f 	.word	0x08000f7f
 8000f70:	08000f79 	.word	0x08000f79
 8000f74:	08000f91 	.word	0x08000f91
 8000f78:	2301      	movs	r3, #1
 8000f7a:	73fb      	strb	r3, [r7, #15]
 8000f7c:	e02f      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000f7e:	687b      	ldr	r3, [r7, #4]
 8000f80:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000f82:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8000f86:	2b00      	cmp	r3, #0
 8000f88:	d024      	beq.n	8000fd4 <DMA_CheckFifoParam+0xdc>
 8000f8a:	2301      	movs	r3, #1
 8000f8c:	73fb      	strb	r3, [r7, #15]
 8000f8e:	e021      	b.n	8000fd4 <DMA_CheckFifoParam+0xdc>
 8000f90:	687b      	ldr	r3, [r7, #4]
 8000f92:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000f94:	f1b3 7fc0 	cmp.w	r3, #25165824	; 0x1800000
 8000f98:	d11e      	bne.n	8000fd8 <DMA_CheckFifoParam+0xe0>
 8000f9a:	2301      	movs	r3, #1
 8000f9c:	73fb      	strb	r3, [r7, #15]
 8000f9e:	e01b      	b.n	8000fd8 <DMA_CheckFifoParam+0xe0>
 8000fa0:	68bb      	ldr	r3, [r7, #8]
 8000fa2:	2b02      	cmp	r3, #2
 8000fa4:	d902      	bls.n	8000fac <DMA_CheckFifoParam+0xb4>
 8000fa6:	2b03      	cmp	r3, #3
 8000fa8:	d003      	beq.n	8000fb2 <DMA_CheckFifoParam+0xba>
 8000faa:	e018      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fac:	2301      	movs	r3, #1
 8000fae:	73fb      	strb	r3, [r7, #15]
 8000fb0:	e015      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fb2:	687b      	ldr	r3, [r7, #4]
 8000fb4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000fb6:	f003 7380 	and.w	r3, r3, #16777216	; 0x1000000
 8000fba:	2b00      	cmp	r3, #0
 8000fbc:	d00e      	beq.n	8000fdc <DMA_CheckFifoParam+0xe4>
 8000fbe:	2301      	movs	r3, #1
 8000fc0:	73fb      	strb	r3, [r7, #15]
 8000fc2:	e00b      	b.n	8000fdc <DMA_CheckFifoParam+0xe4>
 8000fc4:	bf00      	nop
 8000fc6:	e00a      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fc8:	bf00      	nop
 8000fca:	e008      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fcc:	bf00      	nop
 8000fce:	e006      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fd0:	bf00      	nop
 8000fd2:	e004      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fd4:	bf00      	nop
 8000fd6:	e002      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fd8:	bf00      	nop
 8000fda:	e000      	b.n	8000fde <DMA_CheckFifoParam+0xe6>
 8000fdc:	bf00      	nop
 8000fde:	7bfb      	ldrb	r3, [r7, #15]
 8000fe0:	4618      	mov	r0, r3
 8000fe2:	3714      	adds	r7, #20
 8000fe4:	46bd      	mov	sp, r7
 8000fe6:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000fea:	4770      	bx	lr

08000fec <HAL_GPIO_Init>:
 8000fec:	b480      	push	{r7}
 8000fee:	b089      	sub	sp, #36	; 0x24
 8000ff0:	af00      	add	r7, sp, #0
 8000ff2:	6078      	str	r0, [r7, #4]
 8000ff4:	6039      	str	r1, [r7, #0]
 8000ff6:	2300      	movs	r3, #0
 8000ff8:	617b      	str	r3, [r7, #20]
 8000ffa:	2300      	movs	r3, #0
 8000ffc:	613b      	str	r3, [r7, #16]
 8000ffe:	2300      	movs	r3, #0
 8001000:	61bb      	str	r3, [r7, #24]
 8001002:	2300      	movs	r3, #0
 8001004:	61fb      	str	r3, [r7, #28]
 8001006:	e16b      	b.n	80012e0 <HAL_GPIO_Init+0x2f4>
 8001008:	2201      	movs	r2, #1
 800100a:	69fb      	ldr	r3, [r7, #28]
 800100c:	fa02 f303 	lsl.w	r3, r2, r3
 8001010:	617b      	str	r3, [r7, #20]
 8001012:	683b      	ldr	r3, [r7, #0]
 8001014:	681b      	ldr	r3, [r3, #0]
 8001016:	697a      	ldr	r2, [r7, #20]
 8001018:	4013      	ands	r3, r2
 800101a:	613b      	str	r3, [r7, #16]
 800101c:	693a      	ldr	r2, [r7, #16]
 800101e:	697b      	ldr	r3, [r7, #20]
 8001020:	429a      	cmp	r2, r3
 8001022:	f040 815a 	bne.w	80012da <HAL_GPIO_Init+0x2ee>
 8001026:	683b      	ldr	r3, [r7, #0]
 8001028:	685b      	ldr	r3, [r3, #4]
 800102a:	f003 0303 	and.w	r3, r3, #3
 800102e:	2b01      	cmp	r3, #1
 8001030:	d005      	beq.n	800103e <HAL_GPIO_Init+0x52>
 8001032:	683b      	ldr	r3, [r7, #0]
 8001034:	685b      	ldr	r3, [r3, #4]
 8001036:	f003 0303 	and.w	r3, r3, #3
 800103a:	2b02      	cmp	r3, #2
 800103c:	d130      	bne.n	80010a0 <HAL_GPIO_Init+0xb4>
 800103e:	687b      	ldr	r3, [r7, #4]
 8001040:	689b      	ldr	r3, [r3, #8]
 8001042:	61bb      	str	r3, [r7, #24]
 8001044:	69fb      	ldr	r3, [r7, #28]
 8001046:	005b      	lsls	r3, r3, #1
 8001048:	2203      	movs	r2, #3
 800104a:	fa02 f303 	lsl.w	r3, r2, r3
 800104e:	43db      	mvns	r3, r3
 8001050:	69ba      	ldr	r2, [r7, #24]
 8001052:	4013      	ands	r3, r2
 8001054:	61bb      	str	r3, [r7, #24]
 8001056:	683b      	ldr	r3, [r7, #0]
 8001058:	68da      	ldr	r2, [r3, #12]
 800105a:	69fb      	ldr	r3, [r7, #28]
 800105c:	005b      	lsls	r3, r3, #1
 800105e:	fa02 f303 	lsl.w	r3, r2, r3
 8001062:	69ba      	ldr	r2, [r7, #24]
 8001064:	4313      	orrs	r3, r2
 8001066:	61bb      	str	r3, [r7, #24]
 8001068:	687b      	ldr	r3, [r7, #4]
 800106a:	69ba      	ldr	r2, [r7, #24]
 800106c:	609a      	str	r2, [r3, #8]
 800106e:	687b      	ldr	r3, [r7, #4]
 8001070:	685b      	ldr	r3, [r3, #4]
 8001072:	61bb      	str	r3, [r7, #24]
 8001074:	2201      	movs	r2, #1
 8001076:	69fb      	ldr	r3, [r7, #28]
 8001078:	fa02 f303 	lsl.w	r3, r2, r3
 800107c:	43db      	mvns	r3, r3
 800107e:	69ba      	ldr	r2, [r7, #24]
 8001080:	4013      	ands	r3, r2
 8001082:	61bb      	str	r3, [r7, #24]
 8001084:	683b      	ldr	r3, [r7, #0]
 8001086:	685b      	ldr	r3, [r3, #4]
 8001088:	091b      	lsrs	r3, r3, #4
 800108a:	f003 0201 	and.w	r2, r3, #1
 800108e:	69fb      	ldr	r3, [r7, #28]
 8001090:	fa02 f303 	lsl.w	r3, r2, r3
 8001094:	69ba      	ldr	r2, [r7, #24]
 8001096:	4313      	orrs	r3, r2
 8001098:	61bb      	str	r3, [r7, #24]
 800109a:	687b      	ldr	r3, [r7, #4]
 800109c:	69ba      	ldr	r2, [r7, #24]
 800109e:	605a      	str	r2, [r3, #4]
 80010a0:	683b      	ldr	r3, [r7, #0]
 80010a2:	685b      	ldr	r3, [r3, #4]
 80010a4:	f003 0303 	and.w	r3, r3, #3
 80010a8:	2b03      	cmp	r3, #3
 80010aa:	d017      	beq.n	80010dc <HAL_GPIO_Init+0xf0>
 80010ac:	687b      	ldr	r3, [r7, #4]
 80010ae:	68db      	ldr	r3, [r3, #12]
 80010b0:	61bb      	str	r3, [r7, #24]
 80010b2:	69fb      	ldr	r3, [r7, #28]
 80010b4:	005b      	lsls	r3, r3, #1
 80010b6:	2203      	movs	r2, #3
 80010b8:	fa02 f303 	lsl.w	r3, r2, r3
 80010bc:	43db      	mvns	r3, r3
 80010be:	69ba      	ldr	r2, [r7, #24]
 80010c0:	4013      	ands	r3, r2
 80010c2:	61bb      	str	r3, [r7, #24]
 80010c4:	683b      	ldr	r3, [r7, #0]
 80010c6:	689a      	ldr	r2, [r3, #8]
 80010c8:	69fb      	ldr	r3, [r7, #28]
 80010ca:	005b      	lsls	r3, r3, #1
 80010cc:	fa02 f303 	lsl.w	r3, r2, r3
 80010d0:	69ba      	ldr	r2, [r7, #24]
 80010d2:	4313      	orrs	r3, r2
 80010d4:	61bb      	str	r3, [r7, #24]
 80010d6:	687b      	ldr	r3, [r7, #4]
 80010d8:	69ba      	ldr	r2, [r7, #24]
 80010da:	60da      	str	r2, [r3, #12]
 80010dc:	683b      	ldr	r3, [r7, #0]
 80010de:	685b      	ldr	r3, [r3, #4]
 80010e0:	f003 0303 	and.w	r3, r3, #3
 80010e4:	2b02      	cmp	r3, #2
 80010e6:	d123      	bne.n	8001130 <HAL_GPIO_Init+0x144>
 80010e8:	69fb      	ldr	r3, [r7, #28]
 80010ea:	08da      	lsrs	r2, r3, #3
 80010ec:	687b      	ldr	r3, [r7, #4]
 80010ee:	3208      	adds	r2, #8
 80010f0:	f853 3022 	ldr.w	r3, [r3, r2, lsl #2]
 80010f4:	61bb      	str	r3, [r7, #24]
 80010f6:	69fb      	ldr	r3, [r7, #28]
 80010f8:	f003 0307 	and.w	r3, r3, #7
 80010fc:	009b      	lsls	r3, r3, #2
 80010fe:	220f      	movs	r2, #15
 8001100:	fa02 f303 	lsl.w	r3, r2, r3
 8001104:	43db      	mvns	r3, r3
 8001106:	69ba      	ldr	r2, [r7, #24]
 8001108:	4013      	ands	r3, r2
 800110a:	61bb      	str	r3, [r7, #24]
 800110c:	683b      	ldr	r3, [r7, #0]
 800110e:	691a      	ldr	r2, [r3, #16]
 8001110:	69fb      	ldr	r3, [r7, #28]
 8001112:	f003 0307 	and.w	r3, r3, #7
 8001116:	009b      	lsls	r3, r3, #2
 8001118:	fa02 f303 	lsl.w	r3, r2, r3
 800111c:	69ba      	ldr	r2, [r7, #24]
 800111e:	4313      	orrs	r3, r2
 8001120:	61bb      	str	r3, [r7, #24]
 8001122:	69fb      	ldr	r3, [r7, #28]
 8001124:	08da      	lsrs	r2, r3, #3
 8001126:	687b      	ldr	r3, [r7, #4]
 8001128:	3208      	adds	r2, #8
 800112a:	69b9      	ldr	r1, [r7, #24]
 800112c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8001130:	687b      	ldr	r3, [r7, #4]
 8001132:	681b      	ldr	r3, [r3, #0]
 8001134:	61bb      	str	r3, [r7, #24]
 8001136:	69fb      	ldr	r3, [r7, #28]
 8001138:	005b      	lsls	r3, r3, #1
 800113a:	2203      	movs	r2, #3
 800113c:	fa02 f303 	lsl.w	r3, r2, r3
 8001140:	43db      	mvns	r3, r3
 8001142:	69ba      	ldr	r2, [r7, #24]
 8001144:	4013      	ands	r3, r2
 8001146:	61bb      	str	r3, [r7, #24]
 8001148:	683b      	ldr	r3, [r7, #0]
 800114a:	685b      	ldr	r3, [r3, #4]
 800114c:	f003 0203 	and.w	r2, r3, #3
 8001150:	69fb      	ldr	r3, [r7, #28]
 8001152:	005b      	lsls	r3, r3, #1
 8001154:	fa02 f303 	lsl.w	r3, r2, r3
 8001158:	69ba      	ldr	r2, [r7, #24]
 800115a:	4313      	orrs	r3, r2
 800115c:	61bb      	str	r3, [r7, #24]
 800115e:	687b      	ldr	r3, [r7, #4]
 8001160:	69ba      	ldr	r2, [r7, #24]
 8001162:	601a      	str	r2, [r3, #0]
 8001164:	683b      	ldr	r3, [r7, #0]
 8001166:	685b      	ldr	r3, [r3, #4]
 8001168:	f003 5380 	and.w	r3, r3, #268435456	; 0x10000000
 800116c:	2b00      	cmp	r3, #0
 800116e:	f000 80b4 	beq.w	80012da <HAL_GPIO_Init+0x2ee>
 8001172:	2300      	movs	r3, #0
 8001174:	60fb      	str	r3, [r7, #12]
 8001176:	4b5f      	ldr	r3, [pc, #380]	; (80012f4 <HAL_GPIO_Init+0x308>)
 8001178:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 800117a:	4a5e      	ldr	r2, [pc, #376]	; (80012f4 <HAL_GPIO_Init+0x308>)
 800117c:	f443 4380 	orr.w	r3, r3, #16384	; 0x4000
 8001180:	6453      	str	r3, [r2, #68]	; 0x44
 8001182:	4b5c      	ldr	r3, [pc, #368]	; (80012f4 <HAL_GPIO_Init+0x308>)
 8001184:	6c5b      	ldr	r3, [r3, #68]	; 0x44
 8001186:	f403 4380 	and.w	r3, r3, #16384	; 0x4000
 800118a:	60fb      	str	r3, [r7, #12]
 800118c:	68fb      	ldr	r3, [r7, #12]
 800118e:	4a5a      	ldr	r2, [pc, #360]	; (80012f8 <HAL_GPIO_Init+0x30c>)
 8001190:	69fb      	ldr	r3, [r7, #28]
 8001192:	089b      	lsrs	r3, r3, #2
 8001194:	3302      	adds	r3, #2
 8001196:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
 800119a:	61bb      	str	r3, [r7, #24]
 800119c:	69fb      	ldr	r3, [r7, #28]
 800119e:	f003 0303 	and.w	r3, r3, #3
 80011a2:	009b      	lsls	r3, r3, #2
 80011a4:	220f      	movs	r2, #15
 80011a6:	fa02 f303 	lsl.w	r3, r2, r3
 80011aa:	43db      	mvns	r3, r3
 80011ac:	69ba      	ldr	r2, [r7, #24]
 80011ae:	4013      	ands	r3, r2
 80011b0:	61bb      	str	r3, [r7, #24]
 80011b2:	687b      	ldr	r3, [r7, #4]
 80011b4:	4a51      	ldr	r2, [pc, #324]	; (80012fc <HAL_GPIO_Init+0x310>)
 80011b6:	4293      	cmp	r3, r2
 80011b8:	d02b      	beq.n	8001212 <HAL_GPIO_Init+0x226>
 80011ba:	687b      	ldr	r3, [r7, #4]
 80011bc:	4a50      	ldr	r2, [pc, #320]	; (8001300 <HAL_GPIO_Init+0x314>)
 80011be:	4293      	cmp	r3, r2
 80011c0:	d025      	beq.n	800120e <HAL_GPIO_Init+0x222>
 80011c2:	687b      	ldr	r3, [r7, #4]
 80011c4:	4a4f      	ldr	r2, [pc, #316]	; (8001304 <HAL_GPIO_Init+0x318>)
 80011c6:	4293      	cmp	r3, r2
 80011c8:	d01f      	beq.n	800120a <HAL_GPIO_Init+0x21e>
 80011ca:	687b      	ldr	r3, [r7, #4]
 80011cc:	4a4e      	ldr	r2, [pc, #312]	; (8001308 <HAL_GPIO_Init+0x31c>)
 80011ce:	4293      	cmp	r3, r2
 80011d0:	d019      	beq.n	8001206 <HAL_GPIO_Init+0x21a>
 80011d2:	687b      	ldr	r3, [r7, #4]
 80011d4:	4a4d      	ldr	r2, [pc, #308]	; (800130c <HAL_GPIO_Init+0x320>)
 80011d6:	4293      	cmp	r3, r2
 80011d8:	d013      	beq.n	8001202 <HAL_GPIO_Init+0x216>
 80011da:	687b      	ldr	r3, [r7, #4]
 80011dc:	4a4c      	ldr	r2, [pc, #304]	; (8001310 <HAL_GPIO_Init+0x324>)
 80011de:	4293      	cmp	r3, r2
 80011e0:	d00d      	beq.n	80011fe <HAL_GPIO_Init+0x212>
 80011e2:	687b      	ldr	r3, [r7, #4]
 80011e4:	4a4b      	ldr	r2, [pc, #300]	; (8001314 <HAL_GPIO_Init+0x328>)
 80011e6:	4293      	cmp	r3, r2
 80011e8:	d007      	beq.n	80011fa <HAL_GPIO_Init+0x20e>
 80011ea:	687b      	ldr	r3, [r7, #4]
 80011ec:	4a4a      	ldr	r2, [pc, #296]	; (8001318 <HAL_GPIO_Init+0x32c>)
 80011ee:	4293      	cmp	r3, r2
 80011f0:	d101      	bne.n	80011f6 <HAL_GPIO_Init+0x20a>
 80011f2:	2307      	movs	r3, #7
 80011f4:	e00e      	b.n	8001214 <HAL_GPIO_Init+0x228>
 80011f6:	2308      	movs	r3, #8
 80011f8:	e00c      	b.n	8001214 <HAL_GPIO_Init+0x228>
 80011fa:	2306      	movs	r3, #6
 80011fc:	e00a      	b.n	8001214 <HAL_GPIO_Init+0x228>
 80011fe:	2305      	movs	r3, #5
 8001200:	e008      	b.n	8001214 <HAL_GPIO_Init+0x228>
 8001202:	2304      	movs	r3, #4
 8001204:	e006      	b.n	8001214 <HAL_GPIO_Init+0x228>
 8001206:	2303      	movs	r3, #3
 8001208:	e004      	b.n	8001214 <HAL_GPIO_Init+0x228>
 800120a:	2302      	movs	r3, #2
 800120c:	e002      	b.n	8001214 <HAL_GPIO_Init+0x228>
 800120e:	2301      	movs	r3, #1
 8001210:	e000      	b.n	8001214 <HAL_GPIO_Init+0x228>
 8001212:	2300      	movs	r3, #0
 8001214:	69fa      	ldr	r2, [r7, #28]
 8001216:	f002 0203 	and.w	r2, r2, #3
 800121a:	0092      	lsls	r2, r2, #2
 800121c:	4093      	lsls	r3, r2
 800121e:	69ba      	ldr	r2, [r7, #24]
 8001220:	4313      	orrs	r3, r2
 8001222:	61bb      	str	r3, [r7, #24]
 8001224:	4934      	ldr	r1, [pc, #208]	; (80012f8 <HAL_GPIO_Init+0x30c>)
 8001226:	69fb      	ldr	r3, [r7, #28]
 8001228:	089b      	lsrs	r3, r3, #2
 800122a:	3302      	adds	r3, #2
 800122c:	69ba      	ldr	r2, [r7, #24]
 800122e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8001232:	4b3a      	ldr	r3, [pc, #232]	; (800131c <HAL_GPIO_Init+0x330>)
 8001234:	681b      	ldr	r3, [r3, #0]
 8001236:	61bb      	str	r3, [r7, #24]
 8001238:	693b      	ldr	r3, [r7, #16]
 800123a:	43db      	mvns	r3, r3
 800123c:	69ba      	ldr	r2, [r7, #24]
 800123e:	4013      	ands	r3, r2
 8001240:	61bb      	str	r3, [r7, #24]
 8001242:	683b      	ldr	r3, [r7, #0]
 8001244:	685b      	ldr	r3, [r3, #4]
 8001246:	f403 3380 	and.w	r3, r3, #65536	; 0x10000
 800124a:	2b00      	cmp	r3, #0
 800124c:	d003      	beq.n	8001256 <HAL_GPIO_Init+0x26a>
 800124e:	69ba      	ldr	r2, [r7, #24]
 8001250:	693b      	ldr	r3, [r7, #16]
 8001252:	4313      	orrs	r3, r2
 8001254:	61bb      	str	r3, [r7, #24]
 8001256:	4a31      	ldr	r2, [pc, #196]	; (800131c <HAL_GPIO_Init+0x330>)
 8001258:	69bb      	ldr	r3, [r7, #24]
 800125a:	6013      	str	r3, [r2, #0]
 800125c:	4b2f      	ldr	r3, [pc, #188]	; (800131c <HAL_GPIO_Init+0x330>)
 800125e:	685b      	ldr	r3, [r3, #4]
 8001260:	61bb      	str	r3, [r7, #24]
 8001262:	693b      	ldr	r3, [r7, #16]
 8001264:	43db      	mvns	r3, r3
 8001266:	69ba      	ldr	r2, [r7, #24]
 8001268:	4013      	ands	r3, r2
 800126a:	61bb      	str	r3, [r7, #24]
 800126c:	683b      	ldr	r3, [r7, #0]
 800126e:	685b      	ldr	r3, [r3, #4]
 8001270:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8001274:	2b00      	cmp	r3, #0
 8001276:	d003      	beq.n	8001280 <HAL_GPIO_Init+0x294>
 8001278:	69ba      	ldr	r2, [r7, #24]
 800127a:	693b      	ldr	r3, [r7, #16]
 800127c:	4313      	orrs	r3, r2
 800127e:	61bb      	str	r3, [r7, #24]
 8001280:	4a26      	ldr	r2, [pc, #152]	; (800131c <HAL_GPIO_Init+0x330>)
 8001282:	69bb      	ldr	r3, [r7, #24]
 8001284:	6053      	str	r3, [r2, #4]
 8001286:	4b25      	ldr	r3, [pc, #148]	; (800131c <HAL_GPIO_Init+0x330>)
 8001288:	689b      	ldr	r3, [r3, #8]
 800128a:	61bb      	str	r3, [r7, #24]
 800128c:	693b      	ldr	r3, [r7, #16]
 800128e:	43db      	mvns	r3, r3
 8001290:	69ba      	ldr	r2, [r7, #24]
 8001292:	4013      	ands	r3, r2
 8001294:	61bb      	str	r3, [r7, #24]
 8001296:	683b      	ldr	r3, [r7, #0]
 8001298:	685b      	ldr	r3, [r3, #4]
 800129a:	f403 1380 	and.w	r3, r3, #1048576	; 0x100000
 800129e:	2b00      	cmp	r3, #0
 80012a0:	d003      	beq.n	80012aa <HAL_GPIO_Init+0x2be>
 80012a2:	69ba      	ldr	r2, [r7, #24]
 80012a4:	693b      	ldr	r3, [r7, #16]
 80012a6:	4313      	orrs	r3, r2
 80012a8:	61bb      	str	r3, [r7, #24]
 80012aa:	4a1c      	ldr	r2, [pc, #112]	; (800131c <HAL_GPIO_Init+0x330>)
 80012ac:	69bb      	ldr	r3, [r7, #24]
 80012ae:	6093      	str	r3, [r2, #8]
 80012b0:	4b1a      	ldr	r3, [pc, #104]	; (800131c <HAL_GPIO_Init+0x330>)
 80012b2:	68db      	ldr	r3, [r3, #12]
 80012b4:	61bb      	str	r3, [r7, #24]
 80012b6:	693b      	ldr	r3, [r7, #16]
 80012b8:	43db      	mvns	r3, r3
 80012ba:	69ba      	ldr	r2, [r7, #24]
 80012bc:	4013      	ands	r3, r2
 80012be:	61bb      	str	r3, [r7, #24]
 80012c0:	683b      	ldr	r3, [r7, #0]
 80012c2:	685b      	ldr	r3, [r3, #4]
 80012c4:	f403 1300 	and.w	r3, r3, #2097152	; 0x200000
 80012c8:	2b00      	cmp	r3, #0
 80012ca:	d003      	beq.n	80012d4 <HAL_GPIO_Init+0x2e8>
 80012cc:	69ba      	ldr	r2, [r7, #24]
 80012ce:	693b      	ldr	r3, [r7, #16]
 80012d0:	4313      	orrs	r3, r2
 80012d2:	61bb      	str	r3, [r7, #24]
 80012d4:	4a11      	ldr	r2, [pc, #68]	; (800131c <HAL_GPIO_Init+0x330>)
 80012d6:	69bb      	ldr	r3, [r7, #24]
 80012d8:	60d3      	str	r3, [r2, #12]
 80012da:	69fb      	ldr	r3, [r7, #28]
 80012dc:	3301      	adds	r3, #1
 80012de:	61fb      	str	r3, [r7, #28]
 80012e0:	69fb      	ldr	r3, [r7, #28]
 80012e2:	2b0f      	cmp	r3, #15
 80012e4:	f67f ae90 	bls.w	8001008 <HAL_GPIO_Init+0x1c>
 80012e8:	bf00      	nop
 80012ea:	3724      	adds	r7, #36	; 0x24
 80012ec:	46bd      	mov	sp, r7
 80012ee:	f85d 7b04 	ldr.w	r7, [sp], #4
 80012f2:	4770      	bx	lr
 80012f4:	40023800 	.word	0x40023800
 80012f8:	40013800 	.word	0x40013800
 80012fc:	40020000 	.word	0x40020000
 8001300:	40020400 	.word	0x40020400
 8001304:	40020800 	.word	0x40020800
 8001308:	40020c00 	.word	0x40020c00
 800130c:	40021000 	.word	0x40021000
 8001310:	40021400 	.word	0x40021400
 8001314:	40021800 	.word	0x40021800
 8001318:	40021c00 	.word	0x40021c00
 800131c:	40013c00 	.word	0x40013c00

08001320 <HAL_UART_Init>:
 8001320:	b580      	push	{r7, lr}
 8001322:	b082      	sub	sp, #8
 8001324:	af00      	add	r7, sp, #0
 8001326:	6078      	str	r0, [r7, #4]
 8001328:	687b      	ldr	r3, [r7, #4]
 800132a:	2b00      	cmp	r3, #0
 800132c:	d101      	bne.n	8001332 <HAL_UART_Init+0x12>
 800132e:	2301      	movs	r3, #1
 8001330:	e03f      	b.n	80013b2 <HAL_UART_Init+0x92>
 8001332:	687b      	ldr	r3, [r7, #4]
 8001334:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 8001338:	b2db      	uxtb	r3, r3
 800133a:	2b00      	cmp	r3, #0
 800133c:	d106      	bne.n	800134c <HAL_UART_Init+0x2c>
 800133e:	687b      	ldr	r3, [r7, #4]
 8001340:	2200      	movs	r2, #0
 8001342:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c
 8001346:	6878      	ldr	r0, [r7, #4]
 8001348:	f7ff f9f0 	bl	800072c <HAL_UART_MspInit>
 800134c:	687b      	ldr	r3, [r7, #4]
 800134e:	2224      	movs	r2, #36	; 0x24
 8001350:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 8001354:	687b      	ldr	r3, [r7, #4]
 8001356:	681b      	ldr	r3, [r3, #0]
 8001358:	68da      	ldr	r2, [r3, #12]
 800135a:	687b      	ldr	r3, [r7, #4]
 800135c:	681b      	ldr	r3, [r3, #0]
 800135e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8001362:	60da      	str	r2, [r3, #12]
 8001364:	6878      	ldr	r0, [r7, #4]
 8001366:	f000 f905 	bl	8001574 <UART_SetConfig>
 800136a:	687b      	ldr	r3, [r7, #4]
 800136c:	681b      	ldr	r3, [r3, #0]
 800136e:	691a      	ldr	r2, [r3, #16]
 8001370:	687b      	ldr	r3, [r7, #4]
 8001372:	681b      	ldr	r3, [r3, #0]
 8001374:	f422 4290 	bic.w	r2, r2, #18432	; 0x4800
 8001378:	611a      	str	r2, [r3, #16]
 800137a:	687b      	ldr	r3, [r7, #4]
 800137c:	681b      	ldr	r3, [r3, #0]
 800137e:	695a      	ldr	r2, [r3, #20]
 8001380:	687b      	ldr	r3, [r7, #4]
 8001382:	681b      	ldr	r3, [r3, #0]
 8001384:	f022 022a 	bic.w	r2, r2, #42	; 0x2a
 8001388:	615a      	str	r2, [r3, #20]
 800138a:	687b      	ldr	r3, [r7, #4]
 800138c:	681b      	ldr	r3, [r3, #0]
 800138e:	68da      	ldr	r2, [r3, #12]
 8001390:	687b      	ldr	r3, [r7, #4]
 8001392:	681b      	ldr	r3, [r3, #0]
 8001394:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8001398:	60da      	str	r2, [r3, #12]
 800139a:	687b      	ldr	r3, [r7, #4]
 800139c:	2200      	movs	r2, #0
 800139e:	641a      	str	r2, [r3, #64]	; 0x40
 80013a0:	687b      	ldr	r3, [r7, #4]
 80013a2:	2220      	movs	r2, #32
 80013a4:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 80013a8:	687b      	ldr	r3, [r7, #4]
 80013aa:	2220      	movs	r2, #32
 80013ac:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e
 80013b0:	2300      	movs	r3, #0
 80013b2:	4618      	mov	r0, r3
 80013b4:	3708      	adds	r7, #8
 80013b6:	46bd      	mov	sp, r7
 80013b8:	bd80      	pop	{r7, pc}

080013ba <HAL_UART_Transmit>:
 80013ba:	b580      	push	{r7, lr}
 80013bc:	b08a      	sub	sp, #40	; 0x28
 80013be:	af02      	add	r7, sp, #8
 80013c0:	60f8      	str	r0, [r7, #12]
 80013c2:	60b9      	str	r1, [r7, #8]
 80013c4:	603b      	str	r3, [r7, #0]
 80013c6:	4613      	mov	r3, r2
 80013c8:	80fb      	strh	r3, [r7, #6]
 80013ca:	2300      	movs	r3, #0
 80013cc:	617b      	str	r3, [r7, #20]
 80013ce:	68fb      	ldr	r3, [r7, #12]
 80013d0:	f893 303d 	ldrb.w	r3, [r3, #61]	; 0x3d
 80013d4:	b2db      	uxtb	r3, r3
 80013d6:	2b20      	cmp	r3, #32
 80013d8:	d17c      	bne.n	80014d4 <HAL_UART_Transmit+0x11a>
 80013da:	68bb      	ldr	r3, [r7, #8]
 80013dc:	2b00      	cmp	r3, #0
 80013de:	d002      	beq.n	80013e6 <HAL_UART_Transmit+0x2c>
 80013e0:	88fb      	ldrh	r3, [r7, #6]
 80013e2:	2b00      	cmp	r3, #0
 80013e4:	d101      	bne.n	80013ea <HAL_UART_Transmit+0x30>
 80013e6:	2301      	movs	r3, #1
 80013e8:	e075      	b.n	80014d6 <HAL_UART_Transmit+0x11c>
 80013ea:	68fb      	ldr	r3, [r7, #12]
 80013ec:	f893 303c 	ldrb.w	r3, [r3, #60]	; 0x3c
 80013f0:	2b01      	cmp	r3, #1
 80013f2:	d101      	bne.n	80013f8 <HAL_UART_Transmit+0x3e>
 80013f4:	2302      	movs	r3, #2
 80013f6:	e06e      	b.n	80014d6 <HAL_UART_Transmit+0x11c>
 80013f8:	68fb      	ldr	r3, [r7, #12]
 80013fa:	2201      	movs	r2, #1
 80013fc:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c
 8001400:	68fb      	ldr	r3, [r7, #12]
 8001402:	2200      	movs	r2, #0
 8001404:	641a      	str	r2, [r3, #64]	; 0x40
 8001406:	68fb      	ldr	r3, [r7, #12]
 8001408:	2221      	movs	r2, #33	; 0x21
 800140a:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 800140e:	f7ff fb35 	bl	8000a7c <HAL_GetTick>
 8001412:	6178      	str	r0, [r7, #20]
 8001414:	68fb      	ldr	r3, [r7, #12]
 8001416:	88fa      	ldrh	r2, [r7, #6]
 8001418:	849a      	strh	r2, [r3, #36]	; 0x24
 800141a:	68fb      	ldr	r3, [r7, #12]
 800141c:	88fa      	ldrh	r2, [r7, #6]
 800141e:	84da      	strh	r2, [r3, #38]	; 0x26
 8001420:	68fb      	ldr	r3, [r7, #12]
 8001422:	689b      	ldr	r3, [r3, #8]
 8001424:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8001428:	d108      	bne.n	800143c <HAL_UART_Transmit+0x82>
 800142a:	68fb      	ldr	r3, [r7, #12]
 800142c:	691b      	ldr	r3, [r3, #16]
 800142e:	2b00      	cmp	r3, #0
 8001430:	d104      	bne.n	800143c <HAL_UART_Transmit+0x82>
 8001432:	2300      	movs	r3, #0
 8001434:	61fb      	str	r3, [r7, #28]
 8001436:	68bb      	ldr	r3, [r7, #8]
 8001438:	61bb      	str	r3, [r7, #24]
 800143a:	e003      	b.n	8001444 <HAL_UART_Transmit+0x8a>
 800143c:	68bb      	ldr	r3, [r7, #8]
 800143e:	61fb      	str	r3, [r7, #28]
 8001440:	2300      	movs	r3, #0
 8001442:	61bb      	str	r3, [r7, #24]
 8001444:	68fb      	ldr	r3, [r7, #12]
 8001446:	2200      	movs	r2, #0
 8001448:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c
 800144c:	e02a      	b.n	80014a4 <HAL_UART_Transmit+0xea>
 800144e:	683b      	ldr	r3, [r7, #0]
 8001450:	9300      	str	r3, [sp, #0]
 8001452:	697b      	ldr	r3, [r7, #20]
 8001454:	2200      	movs	r2, #0
 8001456:	2180      	movs	r1, #128	; 0x80
 8001458:	68f8      	ldr	r0, [r7, #12]
 800145a:	f000 f840 	bl	80014de <UART_WaitOnFlagUntilTimeout>
 800145e:	4603      	mov	r3, r0
 8001460:	2b00      	cmp	r3, #0
 8001462:	d001      	beq.n	8001468 <HAL_UART_Transmit+0xae>
 8001464:	2303      	movs	r3, #3
 8001466:	e036      	b.n	80014d6 <HAL_UART_Transmit+0x11c>
 8001468:	69fb      	ldr	r3, [r7, #28]
 800146a:	2b00      	cmp	r3, #0
 800146c:	d10b      	bne.n	8001486 <HAL_UART_Transmit+0xcc>
 800146e:	69bb      	ldr	r3, [r7, #24]
 8001470:	881b      	ldrh	r3, [r3, #0]
 8001472:	461a      	mov	r2, r3
 8001474:	68fb      	ldr	r3, [r7, #12]
 8001476:	681b      	ldr	r3, [r3, #0]
 8001478:	f3c2 0208 	ubfx	r2, r2, #0, #9
 800147c:	605a      	str	r2, [r3, #4]
 800147e:	69bb      	ldr	r3, [r7, #24]
 8001480:	3302      	adds	r3, #2
 8001482:	61bb      	str	r3, [r7, #24]
 8001484:	e007      	b.n	8001496 <HAL_UART_Transmit+0xdc>
 8001486:	69fb      	ldr	r3, [r7, #28]
 8001488:	781a      	ldrb	r2, [r3, #0]
 800148a:	68fb      	ldr	r3, [r7, #12]
 800148c:	681b      	ldr	r3, [r3, #0]
 800148e:	605a      	str	r2, [r3, #4]
 8001490:	69fb      	ldr	r3, [r7, #28]
 8001492:	3301      	adds	r3, #1
 8001494:	61fb      	str	r3, [r7, #28]
 8001496:	68fb      	ldr	r3, [r7, #12]
 8001498:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 800149a:	b29b      	uxth	r3, r3
 800149c:	3b01      	subs	r3, #1
 800149e:	b29a      	uxth	r2, r3
 80014a0:	68fb      	ldr	r3, [r7, #12]
 80014a2:	84da      	strh	r2, [r3, #38]	; 0x26
 80014a4:	68fb      	ldr	r3, [r7, #12]
 80014a6:	8cdb      	ldrh	r3, [r3, #38]	; 0x26
 80014a8:	b29b      	uxth	r3, r3
 80014aa:	2b00      	cmp	r3, #0
 80014ac:	d1cf      	bne.n	800144e <HAL_UART_Transmit+0x94>
 80014ae:	683b      	ldr	r3, [r7, #0]
 80014b0:	9300      	str	r3, [sp, #0]
 80014b2:	697b      	ldr	r3, [r7, #20]
 80014b4:	2200      	movs	r2, #0
 80014b6:	2140      	movs	r1, #64	; 0x40
 80014b8:	68f8      	ldr	r0, [r7, #12]
 80014ba:	f000 f810 	bl	80014de <UART_WaitOnFlagUntilTimeout>
 80014be:	4603      	mov	r3, r0
 80014c0:	2b00      	cmp	r3, #0
 80014c2:	d001      	beq.n	80014c8 <HAL_UART_Transmit+0x10e>
 80014c4:	2303      	movs	r3, #3
 80014c6:	e006      	b.n	80014d6 <HAL_UART_Transmit+0x11c>
 80014c8:	68fb      	ldr	r3, [r7, #12]
 80014ca:	2220      	movs	r2, #32
 80014cc:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 80014d0:	2300      	movs	r3, #0
 80014d2:	e000      	b.n	80014d6 <HAL_UART_Transmit+0x11c>
 80014d4:	2302      	movs	r3, #2
 80014d6:	4618      	mov	r0, r3
 80014d8:	3720      	adds	r7, #32
 80014da:	46bd      	mov	sp, r7
 80014dc:	bd80      	pop	{r7, pc}

080014de <UART_WaitOnFlagUntilTimeout>:
 80014de:	b580      	push	{r7, lr}
 80014e0:	b084      	sub	sp, #16
 80014e2:	af00      	add	r7, sp, #0
 80014e4:	60f8      	str	r0, [r7, #12]
 80014e6:	60b9      	str	r1, [r7, #8]
 80014e8:	603b      	str	r3, [r7, #0]
 80014ea:	4613      	mov	r3, r2
 80014ec:	71fb      	strb	r3, [r7, #7]
 80014ee:	e02c      	b.n	800154a <UART_WaitOnFlagUntilTimeout+0x6c>
 80014f0:	69bb      	ldr	r3, [r7, #24]
 80014f2:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80014f6:	d028      	beq.n	800154a <UART_WaitOnFlagUntilTimeout+0x6c>
 80014f8:	69bb      	ldr	r3, [r7, #24]
 80014fa:	2b00      	cmp	r3, #0
 80014fc:	d007      	beq.n	800150e <UART_WaitOnFlagUntilTimeout+0x30>
 80014fe:	f7ff fabd 	bl	8000a7c <HAL_GetTick>
 8001502:	4602      	mov	r2, r0
 8001504:	683b      	ldr	r3, [r7, #0]
 8001506:	1ad3      	subs	r3, r2, r3
 8001508:	69ba      	ldr	r2, [r7, #24]
 800150a:	429a      	cmp	r2, r3
 800150c:	d21d      	bcs.n	800154a <UART_WaitOnFlagUntilTimeout+0x6c>
 800150e:	68fb      	ldr	r3, [r7, #12]
 8001510:	681b      	ldr	r3, [r3, #0]
 8001512:	68da      	ldr	r2, [r3, #12]
 8001514:	68fb      	ldr	r3, [r7, #12]
 8001516:	681b      	ldr	r3, [r3, #0]
 8001518:	f422 72d0 	bic.w	r2, r2, #416	; 0x1a0
 800151c:	60da      	str	r2, [r3, #12]
 800151e:	68fb      	ldr	r3, [r7, #12]
 8001520:	681b      	ldr	r3, [r3, #0]
 8001522:	695a      	ldr	r2, [r3, #20]
 8001524:	68fb      	ldr	r3, [r7, #12]
 8001526:	681b      	ldr	r3, [r3, #0]
 8001528:	f022 0201 	bic.w	r2, r2, #1
 800152c:	615a      	str	r2, [r3, #20]
 800152e:	68fb      	ldr	r3, [r7, #12]
 8001530:	2220      	movs	r2, #32
 8001532:	f883 203d 	strb.w	r2, [r3, #61]	; 0x3d
 8001536:	68fb      	ldr	r3, [r7, #12]
 8001538:	2220      	movs	r2, #32
 800153a:	f883 203e 	strb.w	r2, [r3, #62]	; 0x3e
 800153e:	68fb      	ldr	r3, [r7, #12]
 8001540:	2200      	movs	r2, #0
 8001542:	f883 203c 	strb.w	r2, [r3, #60]	; 0x3c
 8001546:	2303      	movs	r3, #3
 8001548:	e00f      	b.n	800156a <UART_WaitOnFlagUntilTimeout+0x8c>
 800154a:	68fb      	ldr	r3, [r7, #12]
 800154c:	681b      	ldr	r3, [r3, #0]
 800154e:	681a      	ldr	r2, [r3, #0]
 8001550:	68bb      	ldr	r3, [r7, #8]
 8001552:	4013      	ands	r3, r2
 8001554:	68ba      	ldr	r2, [r7, #8]
 8001556:	429a      	cmp	r2, r3
 8001558:	bf0c      	ite	eq
 800155a:	2301      	moveq	r3, #1
 800155c:	2300      	movne	r3, #0
 800155e:	b2db      	uxtb	r3, r3
 8001560:	461a      	mov	r2, r3
 8001562:	79fb      	ldrb	r3, [r7, #7]
 8001564:	429a      	cmp	r2, r3
 8001566:	d0c3      	beq.n	80014f0 <UART_WaitOnFlagUntilTimeout+0x12>
 8001568:	2300      	movs	r3, #0
 800156a:	4618      	mov	r0, r3
 800156c:	3710      	adds	r7, #16
 800156e:	46bd      	mov	sp, r7
 8001570:	bd80      	pop	{r7, pc}
	...

08001574 <UART_SetConfig>:
 8001574:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001578:	b085      	sub	sp, #20
 800157a:	af00      	add	r7, sp, #0
 800157c:	6078      	str	r0, [r7, #4]
 800157e:	687b      	ldr	r3, [r7, #4]
 8001580:	681b      	ldr	r3, [r3, #0]
 8001582:	691b      	ldr	r3, [r3, #16]
 8001584:	f423 5140 	bic.w	r1, r3, #12288	; 0x3000
 8001588:	687b      	ldr	r3, [r7, #4]
 800158a:	68da      	ldr	r2, [r3, #12]
 800158c:	687b      	ldr	r3, [r7, #4]
 800158e:	681b      	ldr	r3, [r3, #0]
 8001590:	430a      	orrs	r2, r1
 8001592:	611a      	str	r2, [r3, #16]
 8001594:	687b      	ldr	r3, [r7, #4]
 8001596:	689a      	ldr	r2, [r3, #8]
 8001598:	687b      	ldr	r3, [r7, #4]
 800159a:	691b      	ldr	r3, [r3, #16]
 800159c:	431a      	orrs	r2, r3
 800159e:	687b      	ldr	r3, [r7, #4]
 80015a0:	695b      	ldr	r3, [r3, #20]
 80015a2:	431a      	orrs	r2, r3
 80015a4:	687b      	ldr	r3, [r7, #4]
 80015a6:	69db      	ldr	r3, [r3, #28]
 80015a8:	4313      	orrs	r3, r2
 80015aa:	60bb      	str	r3, [r7, #8]
 80015ac:	687b      	ldr	r3, [r7, #4]
 80015ae:	681b      	ldr	r3, [r3, #0]
 80015b0:	68db      	ldr	r3, [r3, #12]
 80015b2:	f423 4316 	bic.w	r3, r3, #38400	; 0x9600
 80015b6:	f023 030c 	bic.w	r3, r3, #12
 80015ba:	687a      	ldr	r2, [r7, #4]
 80015bc:	6812      	ldr	r2, [r2, #0]
 80015be:	68b9      	ldr	r1, [r7, #8]
 80015c0:	430b      	orrs	r3, r1
 80015c2:	60d3      	str	r3, [r2, #12]
 80015c4:	687b      	ldr	r3, [r7, #4]
 80015c6:	681b      	ldr	r3, [r3, #0]
 80015c8:	695b      	ldr	r3, [r3, #20]
 80015ca:	f423 7140 	bic.w	r1, r3, #768	; 0x300
 80015ce:	687b      	ldr	r3, [r7, #4]
 80015d0:	699a      	ldr	r2, [r3, #24]
 80015d2:	687b      	ldr	r3, [r7, #4]
 80015d4:	681b      	ldr	r3, [r3, #0]
 80015d6:	430a      	orrs	r2, r1
 80015d8:	615a      	str	r2, [r3, #20]
 80015da:	687b      	ldr	r3, [r7, #4]
 80015dc:	681b      	ldr	r3, [r3, #0]
 80015de:	4ad0      	ldr	r2, [pc, #832]	; (8001920 <UART_SetConfig+0x3ac>)
 80015e0:	4293      	cmp	r3, r2
 80015e2:	d004      	beq.n	80015ee <UART_SetConfig+0x7a>
 80015e4:	687b      	ldr	r3, [r7, #4]
 80015e6:	681b      	ldr	r3, [r3, #0]
 80015e8:	4ace      	ldr	r2, [pc, #824]	; (8001924 <UART_SetConfig+0x3b0>)
 80015ea:	4293      	cmp	r3, r2
 80015ec:	d103      	bne.n	80015f6 <UART_SetConfig+0x82>
 80015ee:	f7ff fb8b 	bl	8000d08 <HAL_RCC_GetPCLK2Freq>
 80015f2:	60f8      	str	r0, [r7, #12]
 80015f4:	e002      	b.n	80015fc <UART_SetConfig+0x88>
 80015f6:	f7ff fb73 	bl	8000ce0 <HAL_RCC_GetPCLK1Freq>
 80015fa:	60f8      	str	r0, [r7, #12]
 80015fc:	687b      	ldr	r3, [r7, #4]
 80015fe:	69db      	ldr	r3, [r3, #28]
 8001600:	f5b3 4f00 	cmp.w	r3, #32768	; 0x8000
 8001604:	f040 80ba 	bne.w	800177c <UART_SetConfig+0x208>
 8001608:	68fb      	ldr	r3, [r7, #12]
 800160a:	461d      	mov	r5, r3
 800160c:	f04f 0600 	mov.w	r6, #0
 8001610:	46a8      	mov	r8, r5
 8001612:	46b1      	mov	r9, r6
 8001614:	eb18 0308 	adds.w	r3, r8, r8
 8001618:	eb49 0409 	adc.w	r4, r9, r9
 800161c:	4698      	mov	r8, r3
 800161e:	46a1      	mov	r9, r4
 8001620:	eb18 0805 	adds.w	r8, r8, r5
 8001624:	eb49 0906 	adc.w	r9, r9, r6
 8001628:	f04f 0100 	mov.w	r1, #0
 800162c:	f04f 0200 	mov.w	r2, #0
 8001630:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 8001634:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 8001638:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 800163c:	4688      	mov	r8, r1
 800163e:	4691      	mov	r9, r2
 8001640:	eb18 0005 	adds.w	r0, r8, r5
 8001644:	eb49 0106 	adc.w	r1, r9, r6
 8001648:	687b      	ldr	r3, [r7, #4]
 800164a:	685b      	ldr	r3, [r3, #4]
 800164c:	461d      	mov	r5, r3
 800164e:	f04f 0600 	mov.w	r6, #0
 8001652:	196b      	adds	r3, r5, r5
 8001654:	eb46 0406 	adc.w	r4, r6, r6
 8001658:	461a      	mov	r2, r3
 800165a:	4623      	mov	r3, r4
 800165c:	f7fe fdd8 	bl	8000210 <__aeabi_uldivmod>
 8001660:	4603      	mov	r3, r0
 8001662:	460c      	mov	r4, r1
 8001664:	461a      	mov	r2, r3
 8001666:	4bb0      	ldr	r3, [pc, #704]	; (8001928 <UART_SetConfig+0x3b4>)
 8001668:	fba3 2302 	umull	r2, r3, r3, r2
 800166c:	095b      	lsrs	r3, r3, #5
 800166e:	ea4f 1803 	mov.w	r8, r3, lsl #4
 8001672:	68fb      	ldr	r3, [r7, #12]
 8001674:	461d      	mov	r5, r3
 8001676:	f04f 0600 	mov.w	r6, #0
 800167a:	46a9      	mov	r9, r5
 800167c:	46b2      	mov	sl, r6
 800167e:	eb19 0309 	adds.w	r3, r9, r9
 8001682:	eb4a 040a 	adc.w	r4, sl, sl
 8001686:	4699      	mov	r9, r3
 8001688:	46a2      	mov	sl, r4
 800168a:	eb19 0905 	adds.w	r9, r9, r5
 800168e:	eb4a 0a06 	adc.w	sl, sl, r6
 8001692:	f04f 0100 	mov.w	r1, #0
 8001696:	f04f 0200 	mov.w	r2, #0
 800169a:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 800169e:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80016a2:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80016a6:	4689      	mov	r9, r1
 80016a8:	4692      	mov	sl, r2
 80016aa:	eb19 0005 	adds.w	r0, r9, r5
 80016ae:	eb4a 0106 	adc.w	r1, sl, r6
 80016b2:	687b      	ldr	r3, [r7, #4]
 80016b4:	685b      	ldr	r3, [r3, #4]
 80016b6:	461d      	mov	r5, r3
 80016b8:	f04f 0600 	mov.w	r6, #0
 80016bc:	196b      	adds	r3, r5, r5
 80016be:	eb46 0406 	adc.w	r4, r6, r6
 80016c2:	461a      	mov	r2, r3
 80016c4:	4623      	mov	r3, r4
 80016c6:	f7fe fda3 	bl	8000210 <__aeabi_uldivmod>
 80016ca:	4603      	mov	r3, r0
 80016cc:	460c      	mov	r4, r1
 80016ce:	461a      	mov	r2, r3
 80016d0:	4b95      	ldr	r3, [pc, #596]	; (8001928 <UART_SetConfig+0x3b4>)
 80016d2:	fba3 1302 	umull	r1, r3, r3, r2
 80016d6:	095b      	lsrs	r3, r3, #5
 80016d8:	2164      	movs	r1, #100	; 0x64
 80016da:	fb01 f303 	mul.w	r3, r1, r3
 80016de:	1ad3      	subs	r3, r2, r3
 80016e0:	00db      	lsls	r3, r3, #3
 80016e2:	3332      	adds	r3, #50	; 0x32
 80016e4:	4a90      	ldr	r2, [pc, #576]	; (8001928 <UART_SetConfig+0x3b4>)
 80016e6:	fba2 2303 	umull	r2, r3, r2, r3
 80016ea:	095b      	lsrs	r3, r3, #5
 80016ec:	005b      	lsls	r3, r3, #1
 80016ee:	f403 73f8 	and.w	r3, r3, #496	; 0x1f0
 80016f2:	4498      	add	r8, r3
 80016f4:	68fb      	ldr	r3, [r7, #12]
 80016f6:	461d      	mov	r5, r3
 80016f8:	f04f 0600 	mov.w	r6, #0
 80016fc:	46a9      	mov	r9, r5
 80016fe:	46b2      	mov	sl, r6
 8001700:	eb19 0309 	adds.w	r3, r9, r9
 8001704:	eb4a 040a 	adc.w	r4, sl, sl
 8001708:	4699      	mov	r9, r3
 800170a:	46a2      	mov	sl, r4
 800170c:	eb19 0905 	adds.w	r9, r9, r5
 8001710:	eb4a 0a06 	adc.w	sl, sl, r6
 8001714:	f04f 0100 	mov.w	r1, #0
 8001718:	f04f 0200 	mov.w	r2, #0
 800171c:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8001720:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001724:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001728:	4689      	mov	r9, r1
 800172a:	4692      	mov	sl, r2
 800172c:	eb19 0005 	adds.w	r0, r9, r5
 8001730:	eb4a 0106 	adc.w	r1, sl, r6
 8001734:	687b      	ldr	r3, [r7, #4]
 8001736:	685b      	ldr	r3, [r3, #4]
 8001738:	461d      	mov	r5, r3
 800173a:	f04f 0600 	mov.w	r6, #0
 800173e:	196b      	adds	r3, r5, r5
 8001740:	eb46 0406 	adc.w	r4, r6, r6
 8001744:	461a      	mov	r2, r3
 8001746:	4623      	mov	r3, r4
 8001748:	f7fe fd62 	bl	8000210 <__aeabi_uldivmod>
 800174c:	4603      	mov	r3, r0
 800174e:	460c      	mov	r4, r1
 8001750:	461a      	mov	r2, r3
 8001752:	4b75      	ldr	r3, [pc, #468]	; (8001928 <UART_SetConfig+0x3b4>)
 8001754:	fba3 1302 	umull	r1, r3, r3, r2
 8001758:	095b      	lsrs	r3, r3, #5
 800175a:	2164      	movs	r1, #100	; 0x64
 800175c:	fb01 f303 	mul.w	r3, r1, r3
 8001760:	1ad3      	subs	r3, r2, r3
 8001762:	00db      	lsls	r3, r3, #3
 8001764:	3332      	adds	r3, #50	; 0x32
 8001766:	4a70      	ldr	r2, [pc, #448]	; (8001928 <UART_SetConfig+0x3b4>)
 8001768:	fba2 2303 	umull	r2, r3, r2, r3
 800176c:	095b      	lsrs	r3, r3, #5
 800176e:	f003 0207 	and.w	r2, r3, #7
 8001772:	687b      	ldr	r3, [r7, #4]
 8001774:	681b      	ldr	r3, [r3, #0]
 8001776:	4442      	add	r2, r8
 8001778:	609a      	str	r2, [r3, #8]
 800177a:	e0cc      	b.n	8001916 <UART_SetConfig+0x3a2>
 800177c:	68fb      	ldr	r3, [r7, #12]
 800177e:	469a      	mov	sl, r3
 8001780:	f04f 0b00 	mov.w	fp, #0
 8001784:	46d0      	mov	r8, sl
 8001786:	46d9      	mov	r9, fp
 8001788:	eb18 0308 	adds.w	r3, r8, r8
 800178c:	eb49 0409 	adc.w	r4, r9, r9
 8001790:	4698      	mov	r8, r3
 8001792:	46a1      	mov	r9, r4
 8001794:	eb18 080a 	adds.w	r8, r8, sl
 8001798:	eb49 090b 	adc.w	r9, r9, fp
 800179c:	f04f 0100 	mov.w	r1, #0
 80017a0:	f04f 0200 	mov.w	r2, #0
 80017a4:	ea4f 02c9 	mov.w	r2, r9, lsl #3
 80017a8:	ea42 7258 	orr.w	r2, r2, r8, lsr #29
 80017ac:	ea4f 01c8 	mov.w	r1, r8, lsl #3
 80017b0:	4688      	mov	r8, r1
 80017b2:	4691      	mov	r9, r2
 80017b4:	eb1a 0508 	adds.w	r5, sl, r8
 80017b8:	eb4b 0609 	adc.w	r6, fp, r9
 80017bc:	687b      	ldr	r3, [r7, #4]
 80017be:	685b      	ldr	r3, [r3, #4]
 80017c0:	4619      	mov	r1, r3
 80017c2:	f04f 0200 	mov.w	r2, #0
 80017c6:	f04f 0300 	mov.w	r3, #0
 80017ca:	f04f 0400 	mov.w	r4, #0
 80017ce:	0094      	lsls	r4, r2, #2
 80017d0:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 80017d4:	008b      	lsls	r3, r1, #2
 80017d6:	461a      	mov	r2, r3
 80017d8:	4623      	mov	r3, r4
 80017da:	4628      	mov	r0, r5
 80017dc:	4631      	mov	r1, r6
 80017de:	f7fe fd17 	bl	8000210 <__aeabi_uldivmod>
 80017e2:	4603      	mov	r3, r0
 80017e4:	460c      	mov	r4, r1
 80017e6:	461a      	mov	r2, r3
 80017e8:	4b4f      	ldr	r3, [pc, #316]	; (8001928 <UART_SetConfig+0x3b4>)
 80017ea:	fba3 2302 	umull	r2, r3, r3, r2
 80017ee:	095b      	lsrs	r3, r3, #5
 80017f0:	ea4f 1803 	mov.w	r8, r3, lsl #4
 80017f4:	68fb      	ldr	r3, [r7, #12]
 80017f6:	469b      	mov	fp, r3
 80017f8:	f04f 0c00 	mov.w	ip, #0
 80017fc:	46d9      	mov	r9, fp
 80017fe:	46e2      	mov	sl, ip
 8001800:	eb19 0309 	adds.w	r3, r9, r9
 8001804:	eb4a 040a 	adc.w	r4, sl, sl
 8001808:	4699      	mov	r9, r3
 800180a:	46a2      	mov	sl, r4
 800180c:	eb19 090b 	adds.w	r9, r9, fp
 8001810:	eb4a 0a0c 	adc.w	sl, sl, ip
 8001814:	f04f 0100 	mov.w	r1, #0
 8001818:	f04f 0200 	mov.w	r2, #0
 800181c:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 8001820:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 8001824:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 8001828:	4689      	mov	r9, r1
 800182a:	4692      	mov	sl, r2
 800182c:	eb1b 0509 	adds.w	r5, fp, r9
 8001830:	eb4c 060a 	adc.w	r6, ip, sl
 8001834:	687b      	ldr	r3, [r7, #4]
 8001836:	685b      	ldr	r3, [r3, #4]
 8001838:	4619      	mov	r1, r3
 800183a:	f04f 0200 	mov.w	r2, #0
 800183e:	f04f 0300 	mov.w	r3, #0
 8001842:	f04f 0400 	mov.w	r4, #0
 8001846:	0094      	lsls	r4, r2, #2
 8001848:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 800184c:	008b      	lsls	r3, r1, #2
 800184e:	461a      	mov	r2, r3
 8001850:	4623      	mov	r3, r4
 8001852:	4628      	mov	r0, r5
 8001854:	4631      	mov	r1, r6
 8001856:	f7fe fcdb 	bl	8000210 <__aeabi_uldivmod>
 800185a:	4603      	mov	r3, r0
 800185c:	460c      	mov	r4, r1
 800185e:	461a      	mov	r2, r3
 8001860:	4b31      	ldr	r3, [pc, #196]	; (8001928 <UART_SetConfig+0x3b4>)
 8001862:	fba3 1302 	umull	r1, r3, r3, r2
 8001866:	095b      	lsrs	r3, r3, #5
 8001868:	2164      	movs	r1, #100	; 0x64
 800186a:	fb01 f303 	mul.w	r3, r1, r3
 800186e:	1ad3      	subs	r3, r2, r3
 8001870:	011b      	lsls	r3, r3, #4
 8001872:	3332      	adds	r3, #50	; 0x32
 8001874:	4a2c      	ldr	r2, [pc, #176]	; (8001928 <UART_SetConfig+0x3b4>)
 8001876:	fba2 2303 	umull	r2, r3, r2, r3
 800187a:	095b      	lsrs	r3, r3, #5
 800187c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001880:	4498      	add	r8, r3
 8001882:	68fb      	ldr	r3, [r7, #12]
 8001884:	469b      	mov	fp, r3
 8001886:	f04f 0c00 	mov.w	ip, #0
 800188a:	46d9      	mov	r9, fp
 800188c:	46e2      	mov	sl, ip
 800188e:	eb19 0309 	adds.w	r3, r9, r9
 8001892:	eb4a 040a 	adc.w	r4, sl, sl
 8001896:	4699      	mov	r9, r3
 8001898:	46a2      	mov	sl, r4
 800189a:	eb19 090b 	adds.w	r9, r9, fp
 800189e:	eb4a 0a0c 	adc.w	sl, sl, ip
 80018a2:	f04f 0100 	mov.w	r1, #0
 80018a6:	f04f 0200 	mov.w	r2, #0
 80018aa:	ea4f 02ca 	mov.w	r2, sl, lsl #3
 80018ae:	ea42 7259 	orr.w	r2, r2, r9, lsr #29
 80018b2:	ea4f 01c9 	mov.w	r1, r9, lsl #3
 80018b6:	4689      	mov	r9, r1
 80018b8:	4692      	mov	sl, r2
 80018ba:	eb1b 0509 	adds.w	r5, fp, r9
 80018be:	eb4c 060a 	adc.w	r6, ip, sl
 80018c2:	687b      	ldr	r3, [r7, #4]
 80018c4:	685b      	ldr	r3, [r3, #4]
 80018c6:	4619      	mov	r1, r3
 80018c8:	f04f 0200 	mov.w	r2, #0
 80018cc:	f04f 0300 	mov.w	r3, #0
 80018d0:	f04f 0400 	mov.w	r4, #0
 80018d4:	0094      	lsls	r4, r2, #2
 80018d6:	ea44 7491 	orr.w	r4, r4, r1, lsr #30
 80018da:	008b      	lsls	r3, r1, #2
 80018dc:	461a      	mov	r2, r3
 80018de:	4623      	mov	r3, r4
 80018e0:	4628      	mov	r0, r5
 80018e2:	4631      	mov	r1, r6
 80018e4:	f7fe fc94 	bl	8000210 <__aeabi_uldivmod>
 80018e8:	4603      	mov	r3, r0
 80018ea:	460c      	mov	r4, r1
 80018ec:	461a      	mov	r2, r3
 80018ee:	4b0e      	ldr	r3, [pc, #56]	; (8001928 <UART_SetConfig+0x3b4>)
 80018f0:	fba3 1302 	umull	r1, r3, r3, r2
 80018f4:	095b      	lsrs	r3, r3, #5
 80018f6:	2164      	movs	r1, #100	; 0x64
 80018f8:	fb01 f303 	mul.w	r3, r1, r3
 80018fc:	1ad3      	subs	r3, r2, r3
 80018fe:	011b      	lsls	r3, r3, #4
 8001900:	3332      	adds	r3, #50	; 0x32
 8001902:	4a09      	ldr	r2, [pc, #36]	; (8001928 <UART_SetConfig+0x3b4>)
 8001904:	fba2 2303 	umull	r2, r3, r2, r3
 8001908:	095b      	lsrs	r3, r3, #5
 800190a:	f003 020f 	and.w	r2, r3, #15
 800190e:	687b      	ldr	r3, [r7, #4]
 8001910:	681b      	ldr	r3, [r3, #0]
 8001912:	4442      	add	r2, r8
 8001914:	609a      	str	r2, [r3, #8]
 8001916:	bf00      	nop
 8001918:	3714      	adds	r7, #20
 800191a:	46bd      	mov	sp, r7
 800191c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001920:	40011000 	.word	0x40011000
 8001924:	40011400 	.word	0x40011400
 8001928:	51eb851f 	.word	0x51eb851f

0800192c <_putchar>:
 800192c:	b580      	push	{r7, lr}
 800192e:	b082      	sub	sp, #8
 8001930:	af00      	add	r7, sp, #0
 8001932:	4603      	mov	r3, r0
 8001934:	71fb      	strb	r3, [r7, #7]
 8001936:	79fb      	ldrb	r3, [r7, #7]
 8001938:	4618      	mov	r0, r3
 800193a:	f7fe fee5 	bl	8000708 <__io_putchar>
 800193e:	bf00      	nop
 8001940:	3708      	adds	r7, #8
 8001942:	46bd      	mov	sp, r7
 8001944:	bd80      	pop	{r7, pc}

08001946 <_out_buffer>:
 8001946:	b480      	push	{r7}
 8001948:	b085      	sub	sp, #20
 800194a:	af00      	add	r7, sp, #0
 800194c:	60b9      	str	r1, [r7, #8]
 800194e:	607a      	str	r2, [r7, #4]
 8001950:	603b      	str	r3, [r7, #0]
 8001952:	4603      	mov	r3, r0
 8001954:	73fb      	strb	r3, [r7, #15]
 8001956:	687a      	ldr	r2, [r7, #4]
 8001958:	683b      	ldr	r3, [r7, #0]
 800195a:	429a      	cmp	r2, r3
 800195c:	d204      	bcs.n	8001968 <_out_buffer+0x22>
 800195e:	68ba      	ldr	r2, [r7, #8]
 8001960:	687b      	ldr	r3, [r7, #4]
 8001962:	4413      	add	r3, r2
 8001964:	7bfa      	ldrb	r2, [r7, #15]
 8001966:	701a      	strb	r2, [r3, #0]
 8001968:	bf00      	nop
 800196a:	3714      	adds	r7, #20
 800196c:	46bd      	mov	sp, r7
 800196e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001972:	4770      	bx	lr

08001974 <_out_null>:
 8001974:	b480      	push	{r7}
 8001976:	b085      	sub	sp, #20
 8001978:	af00      	add	r7, sp, #0
 800197a:	60b9      	str	r1, [r7, #8]
 800197c:	607a      	str	r2, [r7, #4]
 800197e:	603b      	str	r3, [r7, #0]
 8001980:	4603      	mov	r3, r0
 8001982:	73fb      	strb	r3, [r7, #15]
 8001984:	bf00      	nop
 8001986:	3714      	adds	r7, #20
 8001988:	46bd      	mov	sp, r7
 800198a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800198e:	4770      	bx	lr

08001990 <_out_char>:
 8001990:	b580      	push	{r7, lr}
 8001992:	b084      	sub	sp, #16
 8001994:	af00      	add	r7, sp, #0
 8001996:	60b9      	str	r1, [r7, #8]
 8001998:	607a      	str	r2, [r7, #4]
 800199a:	603b      	str	r3, [r7, #0]
 800199c:	4603      	mov	r3, r0
 800199e:	73fb      	strb	r3, [r7, #15]
 80019a0:	7bfb      	ldrb	r3, [r7, #15]
 80019a2:	2b00      	cmp	r3, #0
 80019a4:	d003      	beq.n	80019ae <_out_char+0x1e>
 80019a6:	7bfb      	ldrb	r3, [r7, #15]
 80019a8:	4618      	mov	r0, r3
 80019aa:	f7ff ffbf 	bl	800192c <_putchar>
 80019ae:	bf00      	nop
 80019b0:	3710      	adds	r7, #16
 80019b2:	46bd      	mov	sp, r7
 80019b4:	bd80      	pop	{r7, pc}

080019b6 <_strnlen_s>:
 80019b6:	b480      	push	{r7}
 80019b8:	b085      	sub	sp, #20
 80019ba:	af00      	add	r7, sp, #0
 80019bc:	6078      	str	r0, [r7, #4]
 80019be:	6039      	str	r1, [r7, #0]
 80019c0:	687b      	ldr	r3, [r7, #4]
 80019c2:	60fb      	str	r3, [r7, #12]
 80019c4:	e002      	b.n	80019cc <_strnlen_s+0x16>
 80019c6:	68fb      	ldr	r3, [r7, #12]
 80019c8:	3301      	adds	r3, #1
 80019ca:	60fb      	str	r3, [r7, #12]
 80019cc:	68fb      	ldr	r3, [r7, #12]
 80019ce:	781b      	ldrb	r3, [r3, #0]
 80019d0:	2b00      	cmp	r3, #0
 80019d2:	d004      	beq.n	80019de <_strnlen_s+0x28>
 80019d4:	683b      	ldr	r3, [r7, #0]
 80019d6:	1e5a      	subs	r2, r3, #1
 80019d8:	603a      	str	r2, [r7, #0]
 80019da:	2b00      	cmp	r3, #0
 80019dc:	d1f3      	bne.n	80019c6 <_strnlen_s+0x10>
 80019de:	68fa      	ldr	r2, [r7, #12]
 80019e0:	687b      	ldr	r3, [r7, #4]
 80019e2:	1ad3      	subs	r3, r2, r3
 80019e4:	4618      	mov	r0, r3
 80019e6:	3714      	adds	r7, #20
 80019e8:	46bd      	mov	sp, r7
 80019ea:	f85d 7b04 	ldr.w	r7, [sp], #4
 80019ee:	4770      	bx	lr

080019f0 <_is_digit>:
 80019f0:	b480      	push	{r7}
 80019f2:	b083      	sub	sp, #12
 80019f4:	af00      	add	r7, sp, #0
 80019f6:	4603      	mov	r3, r0
 80019f8:	71fb      	strb	r3, [r7, #7]
 80019fa:	79fb      	ldrb	r3, [r7, #7]
 80019fc:	2b2f      	cmp	r3, #47	; 0x2f
 80019fe:	d904      	bls.n	8001a0a <_is_digit+0x1a>
 8001a00:	79fb      	ldrb	r3, [r7, #7]
 8001a02:	2b39      	cmp	r3, #57	; 0x39
 8001a04:	d801      	bhi.n	8001a0a <_is_digit+0x1a>
 8001a06:	2301      	movs	r3, #1
 8001a08:	e000      	b.n	8001a0c <_is_digit+0x1c>
 8001a0a:	2300      	movs	r3, #0
 8001a0c:	f003 0301 	and.w	r3, r3, #1
 8001a10:	b2db      	uxtb	r3, r3
 8001a12:	4618      	mov	r0, r3
 8001a14:	370c      	adds	r7, #12
 8001a16:	46bd      	mov	sp, r7
 8001a18:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001a1c:	4770      	bx	lr

08001a1e <_atoi>:
 8001a1e:	b580      	push	{r7, lr}
 8001a20:	b084      	sub	sp, #16
 8001a22:	af00      	add	r7, sp, #0
 8001a24:	6078      	str	r0, [r7, #4]
 8001a26:	2300      	movs	r3, #0
 8001a28:	60fb      	str	r3, [r7, #12]
 8001a2a:	e00e      	b.n	8001a4a <_atoi+0x2c>
 8001a2c:	68fa      	ldr	r2, [r7, #12]
 8001a2e:	4613      	mov	r3, r2
 8001a30:	009b      	lsls	r3, r3, #2
 8001a32:	4413      	add	r3, r2
 8001a34:	005b      	lsls	r3, r3, #1
 8001a36:	4618      	mov	r0, r3
 8001a38:	687b      	ldr	r3, [r7, #4]
 8001a3a:	681b      	ldr	r3, [r3, #0]
 8001a3c:	1c59      	adds	r1, r3, #1
 8001a3e:	687a      	ldr	r2, [r7, #4]
 8001a40:	6011      	str	r1, [r2, #0]
 8001a42:	781b      	ldrb	r3, [r3, #0]
 8001a44:	4403      	add	r3, r0
 8001a46:	3b30      	subs	r3, #48	; 0x30
 8001a48:	60fb      	str	r3, [r7, #12]
 8001a4a:	687b      	ldr	r3, [r7, #4]
 8001a4c:	681b      	ldr	r3, [r3, #0]
 8001a4e:	781b      	ldrb	r3, [r3, #0]
 8001a50:	4618      	mov	r0, r3
 8001a52:	f7ff ffcd 	bl	80019f0 <_is_digit>
 8001a56:	4603      	mov	r3, r0
 8001a58:	2b00      	cmp	r3, #0
 8001a5a:	d1e7      	bne.n	8001a2c <_atoi+0xe>
 8001a5c:	68fb      	ldr	r3, [r7, #12]
 8001a5e:	4618      	mov	r0, r3
 8001a60:	3710      	adds	r7, #16
 8001a62:	46bd      	mov	sp, r7
 8001a64:	bd80      	pop	{r7, pc}

08001a66 <_out_rev>:
 8001a66:	b590      	push	{r4, r7, lr}
 8001a68:	b087      	sub	sp, #28
 8001a6a:	af00      	add	r7, sp, #0
 8001a6c:	60f8      	str	r0, [r7, #12]
 8001a6e:	60b9      	str	r1, [r7, #8]
 8001a70:	607a      	str	r2, [r7, #4]
 8001a72:	603b      	str	r3, [r7, #0]
 8001a74:	687b      	ldr	r3, [r7, #4]
 8001a76:	613b      	str	r3, [r7, #16]
 8001a78:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001a7a:	f003 0302 	and.w	r3, r3, #2
 8001a7e:	2b00      	cmp	r3, #0
 8001a80:	d125      	bne.n	8001ace <_out_rev+0x68>
 8001a82:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001a84:	f003 0301 	and.w	r3, r3, #1
 8001a88:	2b00      	cmp	r3, #0
 8001a8a:	d120      	bne.n	8001ace <_out_rev+0x68>
 8001a8c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001a8e:	617b      	str	r3, [r7, #20]
 8001a90:	e00a      	b.n	8001aa8 <_out_rev+0x42>
 8001a92:	687a      	ldr	r2, [r7, #4]
 8001a94:	1c53      	adds	r3, r2, #1
 8001a96:	607b      	str	r3, [r7, #4]
 8001a98:	68fc      	ldr	r4, [r7, #12]
 8001a9a:	683b      	ldr	r3, [r7, #0]
 8001a9c:	68b9      	ldr	r1, [r7, #8]
 8001a9e:	2020      	movs	r0, #32
 8001aa0:	47a0      	blx	r4
 8001aa2:	697b      	ldr	r3, [r7, #20]
 8001aa4:	3301      	adds	r3, #1
 8001aa6:	617b      	str	r3, [r7, #20]
 8001aa8:	697a      	ldr	r2, [r7, #20]
 8001aaa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001aac:	429a      	cmp	r2, r3
 8001aae:	d3f0      	bcc.n	8001a92 <_out_rev+0x2c>
 8001ab0:	e00d      	b.n	8001ace <_out_rev+0x68>
 8001ab2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001ab4:	3b01      	subs	r3, #1
 8001ab6:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001ab8:	6aba      	ldr	r2, [r7, #40]	; 0x28
 8001aba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001abc:	4413      	add	r3, r2
 8001abe:	7818      	ldrb	r0, [r3, #0]
 8001ac0:	687a      	ldr	r2, [r7, #4]
 8001ac2:	1c53      	adds	r3, r2, #1
 8001ac4:	607b      	str	r3, [r7, #4]
 8001ac6:	68fc      	ldr	r4, [r7, #12]
 8001ac8:	683b      	ldr	r3, [r7, #0]
 8001aca:	68b9      	ldr	r1, [r7, #8]
 8001acc:	47a0      	blx	r4
 8001ace:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001ad0:	2b00      	cmp	r3, #0
 8001ad2:	d1ee      	bne.n	8001ab2 <_out_rev+0x4c>
 8001ad4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001ad6:	f003 0302 	and.w	r3, r3, #2
 8001ada:	2b00      	cmp	r3, #0
 8001adc:	d00e      	beq.n	8001afc <_out_rev+0x96>
 8001ade:	e007      	b.n	8001af0 <_out_rev+0x8a>
 8001ae0:	687a      	ldr	r2, [r7, #4]
 8001ae2:	1c53      	adds	r3, r2, #1
 8001ae4:	607b      	str	r3, [r7, #4]
 8001ae6:	68fc      	ldr	r4, [r7, #12]
 8001ae8:	683b      	ldr	r3, [r7, #0]
 8001aea:	68b9      	ldr	r1, [r7, #8]
 8001aec:	2020      	movs	r0, #32
 8001aee:	47a0      	blx	r4
 8001af0:	687a      	ldr	r2, [r7, #4]
 8001af2:	693b      	ldr	r3, [r7, #16]
 8001af4:	1ad3      	subs	r3, r2, r3
 8001af6:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8001af8:	429a      	cmp	r2, r3
 8001afa:	d8f1      	bhi.n	8001ae0 <_out_rev+0x7a>
 8001afc:	687b      	ldr	r3, [r7, #4]
 8001afe:	4618      	mov	r0, r3
 8001b00:	371c      	adds	r7, #28
 8001b02:	46bd      	mov	sp, r7
 8001b04:	bd90      	pop	{r4, r7, pc}

08001b06 <_ntoa_format>:
 8001b06:	b580      	push	{r7, lr}
 8001b08:	b088      	sub	sp, #32
 8001b0a:	af04      	add	r7, sp, #16
 8001b0c:	60f8      	str	r0, [r7, #12]
 8001b0e:	60b9      	str	r1, [r7, #8]
 8001b10:	607a      	str	r2, [r7, #4]
 8001b12:	603b      	str	r3, [r7, #0]
 8001b14:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b16:	f003 0302 	and.w	r3, r3, #2
 8001b1a:	2b00      	cmp	r3, #0
 8001b1c:	d136      	bne.n	8001b8c <_ntoa_format+0x86>
 8001b1e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b20:	2b00      	cmp	r3, #0
 8001b22:	d018      	beq.n	8001b56 <_ntoa_format+0x50>
 8001b24:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b26:	f003 0301 	and.w	r3, r3, #1
 8001b2a:	2b00      	cmp	r3, #0
 8001b2c:	d013      	beq.n	8001b56 <_ntoa_format+0x50>
 8001b2e:	f897 3020 	ldrb.w	r3, [r7, #32]
 8001b32:	2b00      	cmp	r3, #0
 8001b34:	d104      	bne.n	8001b40 <_ntoa_format+0x3a>
 8001b36:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b38:	f003 030c 	and.w	r3, r3, #12
 8001b3c:	2b00      	cmp	r3, #0
 8001b3e:	d00a      	beq.n	8001b56 <_ntoa_format+0x50>
 8001b40:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b42:	3b01      	subs	r3, #1
 8001b44:	62fb      	str	r3, [r7, #44]	; 0x2c
 8001b46:	e006      	b.n	8001b56 <_ntoa_format+0x50>
 8001b48:	69fb      	ldr	r3, [r7, #28]
 8001b4a:	1c5a      	adds	r2, r3, #1
 8001b4c:	61fa      	str	r2, [r7, #28]
 8001b4e:	69ba      	ldr	r2, [r7, #24]
 8001b50:	4413      	add	r3, r2
 8001b52:	2230      	movs	r2, #48	; 0x30
 8001b54:	701a      	strb	r2, [r3, #0]
 8001b56:	69fa      	ldr	r2, [r7, #28]
 8001b58:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001b5a:	429a      	cmp	r2, r3
 8001b5c:	d20a      	bcs.n	8001b74 <_ntoa_format+0x6e>
 8001b5e:	69fb      	ldr	r3, [r7, #28]
 8001b60:	2b1f      	cmp	r3, #31
 8001b62:	d9f1      	bls.n	8001b48 <_ntoa_format+0x42>
 8001b64:	e006      	b.n	8001b74 <_ntoa_format+0x6e>
 8001b66:	69fb      	ldr	r3, [r7, #28]
 8001b68:	1c5a      	adds	r2, r3, #1
 8001b6a:	61fa      	str	r2, [r7, #28]
 8001b6c:	69ba      	ldr	r2, [r7, #24]
 8001b6e:	4413      	add	r3, r2
 8001b70:	2230      	movs	r2, #48	; 0x30
 8001b72:	701a      	strb	r2, [r3, #0]
 8001b74:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b76:	f003 0301 	and.w	r3, r3, #1
 8001b7a:	2b00      	cmp	r3, #0
 8001b7c:	d006      	beq.n	8001b8c <_ntoa_format+0x86>
 8001b7e:	69fa      	ldr	r2, [r7, #28]
 8001b80:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001b82:	429a      	cmp	r2, r3
 8001b84:	d202      	bcs.n	8001b8c <_ntoa_format+0x86>
 8001b86:	69fb      	ldr	r3, [r7, #28]
 8001b88:	2b1f      	cmp	r3, #31
 8001b8a:	d9ec      	bls.n	8001b66 <_ntoa_format+0x60>
 8001b8c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b8e:	f003 0310 	and.w	r3, r3, #16
 8001b92:	2b00      	cmp	r3, #0
 8001b94:	d058      	beq.n	8001c48 <_ntoa_format+0x142>
 8001b96:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001b98:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001b9c:	2b00      	cmp	r3, #0
 8001b9e:	d116      	bne.n	8001bce <_ntoa_format+0xc8>
 8001ba0:	69fb      	ldr	r3, [r7, #28]
 8001ba2:	2b00      	cmp	r3, #0
 8001ba4:	d013      	beq.n	8001bce <_ntoa_format+0xc8>
 8001ba6:	69fa      	ldr	r2, [r7, #28]
 8001ba8:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8001baa:	429a      	cmp	r2, r3
 8001bac:	d003      	beq.n	8001bb6 <_ntoa_format+0xb0>
 8001bae:	69fa      	ldr	r2, [r7, #28]
 8001bb0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001bb2:	429a      	cmp	r2, r3
 8001bb4:	d10b      	bne.n	8001bce <_ntoa_format+0xc8>
 8001bb6:	69fb      	ldr	r3, [r7, #28]
 8001bb8:	3b01      	subs	r3, #1
 8001bba:	61fb      	str	r3, [r7, #28]
 8001bbc:	69fb      	ldr	r3, [r7, #28]
 8001bbe:	2b00      	cmp	r3, #0
 8001bc0:	d005      	beq.n	8001bce <_ntoa_format+0xc8>
 8001bc2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001bc4:	2b10      	cmp	r3, #16
 8001bc6:	d102      	bne.n	8001bce <_ntoa_format+0xc8>
 8001bc8:	69fb      	ldr	r3, [r7, #28]
 8001bca:	3b01      	subs	r3, #1
 8001bcc:	61fb      	str	r3, [r7, #28]
 8001bce:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001bd0:	2b10      	cmp	r3, #16
 8001bd2:	d10f      	bne.n	8001bf4 <_ntoa_format+0xee>
 8001bd4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001bd6:	f003 0320 	and.w	r3, r3, #32
 8001bda:	2b00      	cmp	r3, #0
 8001bdc:	d10a      	bne.n	8001bf4 <_ntoa_format+0xee>
 8001bde:	69fb      	ldr	r3, [r7, #28]
 8001be0:	2b1f      	cmp	r3, #31
 8001be2:	d807      	bhi.n	8001bf4 <_ntoa_format+0xee>
 8001be4:	69fb      	ldr	r3, [r7, #28]
 8001be6:	1c5a      	adds	r2, r3, #1
 8001be8:	61fa      	str	r2, [r7, #28]
 8001bea:	69ba      	ldr	r2, [r7, #24]
 8001bec:	4413      	add	r3, r2
 8001bee:	2278      	movs	r2, #120	; 0x78
 8001bf0:	701a      	strb	r2, [r3, #0]
 8001bf2:	e01f      	b.n	8001c34 <_ntoa_format+0x12e>
 8001bf4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001bf6:	2b10      	cmp	r3, #16
 8001bf8:	d10f      	bne.n	8001c1a <_ntoa_format+0x114>
 8001bfa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001bfc:	f003 0320 	and.w	r3, r3, #32
 8001c00:	2b00      	cmp	r3, #0
 8001c02:	d00a      	beq.n	8001c1a <_ntoa_format+0x114>
 8001c04:	69fb      	ldr	r3, [r7, #28]
 8001c06:	2b1f      	cmp	r3, #31
 8001c08:	d807      	bhi.n	8001c1a <_ntoa_format+0x114>
 8001c0a:	69fb      	ldr	r3, [r7, #28]
 8001c0c:	1c5a      	adds	r2, r3, #1
 8001c0e:	61fa      	str	r2, [r7, #28]
 8001c10:	69ba      	ldr	r2, [r7, #24]
 8001c12:	4413      	add	r3, r2
 8001c14:	2258      	movs	r2, #88	; 0x58
 8001c16:	701a      	strb	r2, [r3, #0]
 8001c18:	e00c      	b.n	8001c34 <_ntoa_format+0x12e>
 8001c1a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8001c1c:	2b02      	cmp	r3, #2
 8001c1e:	d109      	bne.n	8001c34 <_ntoa_format+0x12e>
 8001c20:	69fb      	ldr	r3, [r7, #28]
 8001c22:	2b1f      	cmp	r3, #31
 8001c24:	d806      	bhi.n	8001c34 <_ntoa_format+0x12e>
 8001c26:	69fb      	ldr	r3, [r7, #28]
 8001c28:	1c5a      	adds	r2, r3, #1
 8001c2a:	61fa      	str	r2, [r7, #28]
 8001c2c:	69ba      	ldr	r2, [r7, #24]
 8001c2e:	4413      	add	r3, r2
 8001c30:	2262      	movs	r2, #98	; 0x62
 8001c32:	701a      	strb	r2, [r3, #0]
 8001c34:	69fb      	ldr	r3, [r7, #28]
 8001c36:	2b1f      	cmp	r3, #31
 8001c38:	d806      	bhi.n	8001c48 <_ntoa_format+0x142>
 8001c3a:	69fb      	ldr	r3, [r7, #28]
 8001c3c:	1c5a      	adds	r2, r3, #1
 8001c3e:	61fa      	str	r2, [r7, #28]
 8001c40:	69ba      	ldr	r2, [r7, #24]
 8001c42:	4413      	add	r3, r2
 8001c44:	2230      	movs	r2, #48	; 0x30
 8001c46:	701a      	strb	r2, [r3, #0]
 8001c48:	69fb      	ldr	r3, [r7, #28]
 8001c4a:	2b1f      	cmp	r3, #31
 8001c4c:	d824      	bhi.n	8001c98 <_ntoa_format+0x192>
 8001c4e:	f897 3020 	ldrb.w	r3, [r7, #32]
 8001c52:	2b00      	cmp	r3, #0
 8001c54:	d007      	beq.n	8001c66 <_ntoa_format+0x160>
 8001c56:	69fb      	ldr	r3, [r7, #28]
 8001c58:	1c5a      	adds	r2, r3, #1
 8001c5a:	61fa      	str	r2, [r7, #28]
 8001c5c:	69ba      	ldr	r2, [r7, #24]
 8001c5e:	4413      	add	r3, r2
 8001c60:	222d      	movs	r2, #45	; 0x2d
 8001c62:	701a      	strb	r2, [r3, #0]
 8001c64:	e018      	b.n	8001c98 <_ntoa_format+0x192>
 8001c66:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c68:	f003 0304 	and.w	r3, r3, #4
 8001c6c:	2b00      	cmp	r3, #0
 8001c6e:	d007      	beq.n	8001c80 <_ntoa_format+0x17a>
 8001c70:	69fb      	ldr	r3, [r7, #28]
 8001c72:	1c5a      	adds	r2, r3, #1
 8001c74:	61fa      	str	r2, [r7, #28]
 8001c76:	69ba      	ldr	r2, [r7, #24]
 8001c78:	4413      	add	r3, r2
 8001c7a:	222b      	movs	r2, #43	; 0x2b
 8001c7c:	701a      	strb	r2, [r3, #0]
 8001c7e:	e00b      	b.n	8001c98 <_ntoa_format+0x192>
 8001c80:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c82:	f003 0308 	and.w	r3, r3, #8
 8001c86:	2b00      	cmp	r3, #0
 8001c88:	d006      	beq.n	8001c98 <_ntoa_format+0x192>
 8001c8a:	69fb      	ldr	r3, [r7, #28]
 8001c8c:	1c5a      	adds	r2, r3, #1
 8001c8e:	61fa      	str	r2, [r7, #28]
 8001c90:	69ba      	ldr	r2, [r7, #24]
 8001c92:	4413      	add	r3, r2
 8001c94:	2220      	movs	r2, #32
 8001c96:	701a      	strb	r2, [r3, #0]
 8001c98:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8001c9a:	9303      	str	r3, [sp, #12]
 8001c9c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8001c9e:	9302      	str	r3, [sp, #8]
 8001ca0:	69fb      	ldr	r3, [r7, #28]
 8001ca2:	9301      	str	r3, [sp, #4]
 8001ca4:	69bb      	ldr	r3, [r7, #24]
 8001ca6:	9300      	str	r3, [sp, #0]
 8001ca8:	683b      	ldr	r3, [r7, #0]
 8001caa:	687a      	ldr	r2, [r7, #4]
 8001cac:	68b9      	ldr	r1, [r7, #8]
 8001cae:	68f8      	ldr	r0, [r7, #12]
 8001cb0:	f7ff fed9 	bl	8001a66 <_out_rev>
 8001cb4:	4603      	mov	r3, r0
 8001cb6:	4618      	mov	r0, r3
 8001cb8:	3710      	adds	r7, #16
 8001cba:	46bd      	mov	sp, r7
 8001cbc:	bd80      	pop	{r7, pc}

08001cbe <_ntoa_long>:
 8001cbe:	b580      	push	{r7, lr}
 8001cc0:	b096      	sub	sp, #88	; 0x58
 8001cc2:	af08      	add	r7, sp, #32
 8001cc4:	60f8      	str	r0, [r7, #12]
 8001cc6:	60b9      	str	r1, [r7, #8]
 8001cc8:	607a      	str	r2, [r7, #4]
 8001cca:	603b      	str	r3, [r7, #0]
 8001ccc:	2300      	movs	r3, #0
 8001cce:	637b      	str	r3, [r7, #52]	; 0x34
 8001cd0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001cd2:	2b00      	cmp	r3, #0
 8001cd4:	d103      	bne.n	8001cde <_ntoa_long+0x20>
 8001cd6:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001cd8:	f023 0310 	bic.w	r3, r3, #16
 8001cdc:	657b      	str	r3, [r7, #84]	; 0x54
 8001cde:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001ce0:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8001ce4:	2b00      	cmp	r3, #0
 8001ce6:	d002      	beq.n	8001cee <_ntoa_long+0x30>
 8001ce8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001cea:	2b00      	cmp	r3, #0
 8001cec:	d033      	beq.n	8001d56 <_ntoa_long+0x98>
 8001cee:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001cf0:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8001cf2:	fbb3 f2f2 	udiv	r2, r3, r2
 8001cf6:	6cb9      	ldr	r1, [r7, #72]	; 0x48
 8001cf8:	fb01 f202 	mul.w	r2, r1, r2
 8001cfc:	1a9b      	subs	r3, r3, r2
 8001cfe:	f887 3033 	strb.w	r3, [r7, #51]	; 0x33
 8001d02:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8001d06:	2b09      	cmp	r3, #9
 8001d08:	d804      	bhi.n	8001d14 <_ntoa_long+0x56>
 8001d0a:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8001d0e:	3330      	adds	r3, #48	; 0x30
 8001d10:	b2da      	uxtb	r2, r3
 8001d12:	e00d      	b.n	8001d30 <_ntoa_long+0x72>
 8001d14:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001d16:	f003 0320 	and.w	r3, r3, #32
 8001d1a:	2b00      	cmp	r3, #0
 8001d1c:	d001      	beq.n	8001d22 <_ntoa_long+0x64>
 8001d1e:	2241      	movs	r2, #65	; 0x41
 8001d20:	e000      	b.n	8001d24 <_ntoa_long+0x66>
 8001d22:	2261      	movs	r2, #97	; 0x61
 8001d24:	f897 3033 	ldrb.w	r3, [r7, #51]	; 0x33
 8001d28:	4413      	add	r3, r2
 8001d2a:	b2db      	uxtb	r3, r3
 8001d2c:	3b0a      	subs	r3, #10
 8001d2e:	b2da      	uxtb	r2, r3
 8001d30:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001d32:	1c59      	adds	r1, r3, #1
 8001d34:	6379      	str	r1, [r7, #52]	; 0x34
 8001d36:	f107 0138 	add.w	r1, r7, #56	; 0x38
 8001d3a:	440b      	add	r3, r1
 8001d3c:	f803 2c28 	strb.w	r2, [r3, #-40]
 8001d40:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8001d42:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8001d44:	fbb2 f3f3 	udiv	r3, r2, r3
 8001d48:	643b      	str	r3, [r7, #64]	; 0x40
 8001d4a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8001d4c:	2b00      	cmp	r3, #0
 8001d4e:	d002      	beq.n	8001d56 <_ntoa_long+0x98>
 8001d50:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001d52:	2b1f      	cmp	r3, #31
 8001d54:	d9cb      	bls.n	8001cee <_ntoa_long+0x30>
 8001d56:	6d7b      	ldr	r3, [r7, #84]	; 0x54
 8001d58:	9306      	str	r3, [sp, #24]
 8001d5a:	6d3b      	ldr	r3, [r7, #80]	; 0x50
 8001d5c:	9305      	str	r3, [sp, #20]
 8001d5e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8001d60:	9304      	str	r3, [sp, #16]
 8001d62:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8001d64:	9303      	str	r3, [sp, #12]
 8001d66:	f897 3044 	ldrb.w	r3, [r7, #68]	; 0x44
 8001d6a:	9302      	str	r3, [sp, #8]
 8001d6c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8001d6e:	9301      	str	r3, [sp, #4]
 8001d70:	f107 0310 	add.w	r3, r7, #16
 8001d74:	9300      	str	r3, [sp, #0]
 8001d76:	683b      	ldr	r3, [r7, #0]
 8001d78:	687a      	ldr	r2, [r7, #4]
 8001d7a:	68b9      	ldr	r1, [r7, #8]
 8001d7c:	68f8      	ldr	r0, [r7, #12]
 8001d7e:	f7ff fec2 	bl	8001b06 <_ntoa_format>
 8001d82:	4603      	mov	r3, r0
 8001d84:	4618      	mov	r0, r3
 8001d86:	3738      	adds	r7, #56	; 0x38
 8001d88:	46bd      	mov	sp, r7
 8001d8a:	bd80      	pop	{r7, pc}

08001d8c <_vsnprintf>:
 8001d8c:	b590      	push	{r4, r7, lr}
 8001d8e:	b099      	sub	sp, #100	; 0x64
 8001d90:	af06      	add	r7, sp, #24
 8001d92:	60f8      	str	r0, [r7, #12]
 8001d94:	60b9      	str	r1, [r7, #8]
 8001d96:	607a      	str	r2, [r7, #4]
 8001d98:	603b      	str	r3, [r7, #0]
 8001d9a:	2300      	movs	r3, #0
 8001d9c:	637b      	str	r3, [r7, #52]	; 0x34
 8001d9e:	68bb      	ldr	r3, [r7, #8]
 8001da0:	2b00      	cmp	r3, #0
 8001da2:	f040 83bf 	bne.w	8002524 <_vsnprintf+0x798>
 8001da6:	4b9f      	ldr	r3, [pc, #636]	; (8002024 <_vsnprintf+0x298>)
 8001da8:	60fb      	str	r3, [r7, #12]
 8001daa:	e3bb      	b.n	8002524 <_vsnprintf+0x798>
 8001dac:	683b      	ldr	r3, [r7, #0]
 8001dae:	781b      	ldrb	r3, [r3, #0]
 8001db0:	2b25      	cmp	r3, #37	; 0x25
 8001db2:	d00c      	beq.n	8001dce <_vsnprintf+0x42>
 8001db4:	683b      	ldr	r3, [r7, #0]
 8001db6:	7818      	ldrb	r0, [r3, #0]
 8001db8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8001dba:	1c53      	adds	r3, r2, #1
 8001dbc:	637b      	str	r3, [r7, #52]	; 0x34
 8001dbe:	68fc      	ldr	r4, [r7, #12]
 8001dc0:	687b      	ldr	r3, [r7, #4]
 8001dc2:	68b9      	ldr	r1, [r7, #8]
 8001dc4:	47a0      	blx	r4
 8001dc6:	683b      	ldr	r3, [r7, #0]
 8001dc8:	3301      	adds	r3, #1
 8001dca:	603b      	str	r3, [r7, #0]
 8001dcc:	e3aa      	b.n	8002524 <_vsnprintf+0x798>
 8001dce:	683b      	ldr	r3, [r7, #0]
 8001dd0:	3301      	adds	r3, #1
 8001dd2:	603b      	str	r3, [r7, #0]
 8001dd4:	2300      	movs	r3, #0
 8001dd6:	647b      	str	r3, [r7, #68]	; 0x44
 8001dd8:	683b      	ldr	r3, [r7, #0]
 8001dda:	781b      	ldrb	r3, [r3, #0]
 8001ddc:	3b20      	subs	r3, #32
 8001dde:	2b10      	cmp	r3, #16
 8001de0:	d856      	bhi.n	8001e90 <_vsnprintf+0x104>
 8001de2:	a201      	add	r2, pc, #4	; (adr r2, 8001de8 <_vsnprintf+0x5c>)
 8001de4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001de8:	08001e69 	.word	0x08001e69
 8001dec:	08001e91 	.word	0x08001e91
 8001df0:	08001e91 	.word	0x08001e91
 8001df4:	08001e7d 	.word	0x08001e7d
 8001df8:	08001e91 	.word	0x08001e91
 8001dfc:	08001e91 	.word	0x08001e91
 8001e00:	08001e91 	.word	0x08001e91
 8001e04:	08001e91 	.word	0x08001e91
 8001e08:	08001e91 	.word	0x08001e91
 8001e0c:	08001e91 	.word	0x08001e91
 8001e10:	08001e91 	.word	0x08001e91
 8001e14:	08001e55 	.word	0x08001e55
 8001e18:	08001e91 	.word	0x08001e91
 8001e1c:	08001e41 	.word	0x08001e41
 8001e20:	08001e91 	.word	0x08001e91
 8001e24:	08001e91 	.word	0x08001e91
 8001e28:	08001e2d 	.word	0x08001e2d
 8001e2c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001e2e:	f043 0301 	orr.w	r3, r3, #1
 8001e32:	647b      	str	r3, [r7, #68]	; 0x44
 8001e34:	683b      	ldr	r3, [r7, #0]
 8001e36:	3301      	adds	r3, #1
 8001e38:	603b      	str	r3, [r7, #0]
 8001e3a:	2301      	movs	r3, #1
 8001e3c:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e3e:	e02a      	b.n	8001e96 <_vsnprintf+0x10a>
 8001e40:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001e42:	f043 0302 	orr.w	r3, r3, #2
 8001e46:	647b      	str	r3, [r7, #68]	; 0x44
 8001e48:	683b      	ldr	r3, [r7, #0]
 8001e4a:	3301      	adds	r3, #1
 8001e4c:	603b      	str	r3, [r7, #0]
 8001e4e:	2301      	movs	r3, #1
 8001e50:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e52:	e020      	b.n	8001e96 <_vsnprintf+0x10a>
 8001e54:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001e56:	f043 0304 	orr.w	r3, r3, #4
 8001e5a:	647b      	str	r3, [r7, #68]	; 0x44
 8001e5c:	683b      	ldr	r3, [r7, #0]
 8001e5e:	3301      	adds	r3, #1
 8001e60:	603b      	str	r3, [r7, #0]
 8001e62:	2301      	movs	r3, #1
 8001e64:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e66:	e016      	b.n	8001e96 <_vsnprintf+0x10a>
 8001e68:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001e6a:	f043 0308 	orr.w	r3, r3, #8
 8001e6e:	647b      	str	r3, [r7, #68]	; 0x44
 8001e70:	683b      	ldr	r3, [r7, #0]
 8001e72:	3301      	adds	r3, #1
 8001e74:	603b      	str	r3, [r7, #0]
 8001e76:	2301      	movs	r3, #1
 8001e78:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e7a:	e00c      	b.n	8001e96 <_vsnprintf+0x10a>
 8001e7c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001e7e:	f043 0310 	orr.w	r3, r3, #16
 8001e82:	647b      	str	r3, [r7, #68]	; 0x44
 8001e84:	683b      	ldr	r3, [r7, #0]
 8001e86:	3301      	adds	r3, #1
 8001e88:	603b      	str	r3, [r7, #0]
 8001e8a:	2301      	movs	r3, #1
 8001e8c:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e8e:	e002      	b.n	8001e96 <_vsnprintf+0x10a>
 8001e90:	2300      	movs	r3, #0
 8001e92:	63bb      	str	r3, [r7, #56]	; 0x38
 8001e94:	bf00      	nop
 8001e96:	6bbb      	ldr	r3, [r7, #56]	; 0x38
 8001e98:	2b00      	cmp	r3, #0
 8001e9a:	d19d      	bne.n	8001dd8 <_vsnprintf+0x4c>
 8001e9c:	2300      	movs	r3, #0
 8001e9e:	643b      	str	r3, [r7, #64]	; 0x40
 8001ea0:	683b      	ldr	r3, [r7, #0]
 8001ea2:	781b      	ldrb	r3, [r3, #0]
 8001ea4:	4618      	mov	r0, r3
 8001ea6:	f7ff fda3 	bl	80019f0 <_is_digit>
 8001eaa:	4603      	mov	r3, r0
 8001eac:	2b00      	cmp	r3, #0
 8001eae:	d005      	beq.n	8001ebc <_vsnprintf+0x130>
 8001eb0:	463b      	mov	r3, r7
 8001eb2:	4618      	mov	r0, r3
 8001eb4:	f7ff fdb3 	bl	8001a1e <_atoi>
 8001eb8:	6438      	str	r0, [r7, #64]	; 0x40
 8001eba:	e018      	b.n	8001eee <_vsnprintf+0x162>
 8001ebc:	683b      	ldr	r3, [r7, #0]
 8001ebe:	781b      	ldrb	r3, [r3, #0]
 8001ec0:	2b2a      	cmp	r3, #42	; 0x2a
 8001ec2:	d114      	bne.n	8001eee <_vsnprintf+0x162>
 8001ec4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8001ec6:	1d1a      	adds	r2, r3, #4
 8001ec8:	65ba      	str	r2, [r7, #88]	; 0x58
 8001eca:	681b      	ldr	r3, [r3, #0]
 8001ecc:	623b      	str	r3, [r7, #32]
 8001ece:	6a3b      	ldr	r3, [r7, #32]
 8001ed0:	2b00      	cmp	r3, #0
 8001ed2:	da07      	bge.n	8001ee4 <_vsnprintf+0x158>
 8001ed4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001ed6:	f043 0302 	orr.w	r3, r3, #2
 8001eda:	647b      	str	r3, [r7, #68]	; 0x44
 8001edc:	6a3b      	ldr	r3, [r7, #32]
 8001ede:	425b      	negs	r3, r3
 8001ee0:	643b      	str	r3, [r7, #64]	; 0x40
 8001ee2:	e001      	b.n	8001ee8 <_vsnprintf+0x15c>
 8001ee4:	6a3b      	ldr	r3, [r7, #32]
 8001ee6:	643b      	str	r3, [r7, #64]	; 0x40
 8001ee8:	683b      	ldr	r3, [r7, #0]
 8001eea:	3301      	adds	r3, #1
 8001eec:	603b      	str	r3, [r7, #0]
 8001eee:	2300      	movs	r3, #0
 8001ef0:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001ef2:	683b      	ldr	r3, [r7, #0]
 8001ef4:	781b      	ldrb	r3, [r3, #0]
 8001ef6:	2b2e      	cmp	r3, #46	; 0x2e
 8001ef8:	d124      	bne.n	8001f44 <_vsnprintf+0x1b8>
 8001efa:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001efc:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
 8001f00:	647b      	str	r3, [r7, #68]	; 0x44
 8001f02:	683b      	ldr	r3, [r7, #0]
 8001f04:	3301      	adds	r3, #1
 8001f06:	603b      	str	r3, [r7, #0]
 8001f08:	683b      	ldr	r3, [r7, #0]
 8001f0a:	781b      	ldrb	r3, [r3, #0]
 8001f0c:	4618      	mov	r0, r3
 8001f0e:	f7ff fd6f 	bl	80019f0 <_is_digit>
 8001f12:	4603      	mov	r3, r0
 8001f14:	2b00      	cmp	r3, #0
 8001f16:	d005      	beq.n	8001f24 <_vsnprintf+0x198>
 8001f18:	463b      	mov	r3, r7
 8001f1a:	4618      	mov	r0, r3
 8001f1c:	f7ff fd7f 	bl	8001a1e <_atoi>
 8001f20:	63f8      	str	r0, [r7, #60]	; 0x3c
 8001f22:	e00f      	b.n	8001f44 <_vsnprintf+0x1b8>
 8001f24:	683b      	ldr	r3, [r7, #0]
 8001f26:	781b      	ldrb	r3, [r3, #0]
 8001f28:	2b2a      	cmp	r3, #42	; 0x2a
 8001f2a:	d10b      	bne.n	8001f44 <_vsnprintf+0x1b8>
 8001f2c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8001f2e:	1d1a      	adds	r2, r3, #4
 8001f30:	65ba      	str	r2, [r7, #88]	; 0x58
 8001f32:	681b      	ldr	r3, [r3, #0]
 8001f34:	61fb      	str	r3, [r7, #28]
 8001f36:	69fb      	ldr	r3, [r7, #28]
 8001f38:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8001f3c:	63fb      	str	r3, [r7, #60]	; 0x3c
 8001f3e:	683b      	ldr	r3, [r7, #0]
 8001f40:	3301      	adds	r3, #1
 8001f42:	603b      	str	r3, [r7, #0]
 8001f44:	683b      	ldr	r3, [r7, #0]
 8001f46:	781b      	ldrb	r3, [r3, #0]
 8001f48:	3b68      	subs	r3, #104	; 0x68
 8001f4a:	2b12      	cmp	r3, #18
 8001f4c:	d866      	bhi.n	800201c <_vsnprintf+0x290>
 8001f4e:	a201      	add	r2, pc, #4	; (adr r2, 8001f54 <_vsnprintf+0x1c8>)
 8001f50:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8001f54:	08001fc7 	.word	0x08001fc7
 8001f58:	0800201d 	.word	0x0800201d
 8001f5c:	08001ffd 	.word	0x08001ffd
 8001f60:	0800201d 	.word	0x0800201d
 8001f64:	08001fa1 	.word	0x08001fa1
 8001f68:	0800201d 	.word	0x0800201d
 8001f6c:	0800201d 	.word	0x0800201d
 8001f70:	0800201d 	.word	0x0800201d
 8001f74:	0800201d 	.word	0x0800201d
 8001f78:	0800201d 	.word	0x0800201d
 8001f7c:	0800201d 	.word	0x0800201d
 8001f80:	0800201d 	.word	0x0800201d
 8001f84:	08001fed 	.word	0x08001fed
 8001f88:	0800201d 	.word	0x0800201d
 8001f8c:	0800201d 	.word	0x0800201d
 8001f90:	0800201d 	.word	0x0800201d
 8001f94:	0800201d 	.word	0x0800201d
 8001f98:	0800201d 	.word	0x0800201d
 8001f9c:	0800200d 	.word	0x0800200d
 8001fa0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001fa2:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001fa6:	647b      	str	r3, [r7, #68]	; 0x44
 8001fa8:	683b      	ldr	r3, [r7, #0]
 8001faa:	3301      	adds	r3, #1
 8001fac:	603b      	str	r3, [r7, #0]
 8001fae:	683b      	ldr	r3, [r7, #0]
 8001fb0:	781b      	ldrb	r3, [r3, #0]
 8001fb2:	2b6c      	cmp	r3, #108	; 0x6c
 8001fb4:	d134      	bne.n	8002020 <_vsnprintf+0x294>
 8001fb6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001fb8:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8001fbc:	647b      	str	r3, [r7, #68]	; 0x44
 8001fbe:	683b      	ldr	r3, [r7, #0]
 8001fc0:	3301      	adds	r3, #1
 8001fc2:	603b      	str	r3, [r7, #0]
 8001fc4:	e02c      	b.n	8002020 <_vsnprintf+0x294>
 8001fc6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001fc8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8001fcc:	647b      	str	r3, [r7, #68]	; 0x44
 8001fce:	683b      	ldr	r3, [r7, #0]
 8001fd0:	3301      	adds	r3, #1
 8001fd2:	603b      	str	r3, [r7, #0]
 8001fd4:	683b      	ldr	r3, [r7, #0]
 8001fd6:	781b      	ldrb	r3, [r3, #0]
 8001fd8:	2b68      	cmp	r3, #104	; 0x68
 8001fda:	d125      	bne.n	8002028 <_vsnprintf+0x29c>
 8001fdc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001fde:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8001fe2:	647b      	str	r3, [r7, #68]	; 0x44
 8001fe4:	683b      	ldr	r3, [r7, #0]
 8001fe6:	3301      	adds	r3, #1
 8001fe8:	603b      	str	r3, [r7, #0]
 8001fea:	e01d      	b.n	8002028 <_vsnprintf+0x29c>
 8001fec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001fee:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8001ff2:	647b      	str	r3, [r7, #68]	; 0x44
 8001ff4:	683b      	ldr	r3, [r7, #0]
 8001ff6:	3301      	adds	r3, #1
 8001ff8:	603b      	str	r3, [r7, #0]
 8001ffa:	e016      	b.n	800202a <_vsnprintf+0x29e>
 8001ffc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8001ffe:	f443 7300 	orr.w	r3, r3, #512	; 0x200
 8002002:	647b      	str	r3, [r7, #68]	; 0x44
 8002004:	683b      	ldr	r3, [r7, #0]
 8002006:	3301      	adds	r3, #1
 8002008:	603b      	str	r3, [r7, #0]
 800200a:	e00e      	b.n	800202a <_vsnprintf+0x29e>
 800200c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800200e:	f443 7380 	orr.w	r3, r3, #256	; 0x100
 8002012:	647b      	str	r3, [r7, #68]	; 0x44
 8002014:	683b      	ldr	r3, [r7, #0]
 8002016:	3301      	adds	r3, #1
 8002018:	603b      	str	r3, [r7, #0]
 800201a:	e006      	b.n	800202a <_vsnprintf+0x29e>
 800201c:	bf00      	nop
 800201e:	e004      	b.n	800202a <_vsnprintf+0x29e>
 8002020:	bf00      	nop
 8002022:	e002      	b.n	800202a <_vsnprintf+0x29e>
 8002024:	08001975 	.word	0x08001975
 8002028:	bf00      	nop
 800202a:	683b      	ldr	r3, [r7, #0]
 800202c:	781b      	ldrb	r3, [r3, #0]
 800202e:	3b25      	subs	r3, #37	; 0x25
 8002030:	2b53      	cmp	r3, #83	; 0x53
 8002032:	f200 826a 	bhi.w	800250a <_vsnprintf+0x77e>
 8002036:	a201      	add	r2, pc, #4	; (adr r2, 800203c <_vsnprintf+0x2b0>)
 8002038:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 800203c:	080024f3 	.word	0x080024f3
 8002040:	0800250b 	.word	0x0800250b
 8002044:	0800250b 	.word	0x0800250b
 8002048:	0800250b 	.word	0x0800250b
 800204c:	0800250b 	.word	0x0800250b
 8002050:	0800250b 	.word	0x0800250b
 8002054:	0800250b 	.word	0x0800250b
 8002058:	0800250b 	.word	0x0800250b
 800205c:	0800250b 	.word	0x0800250b
 8002060:	0800250b 	.word	0x0800250b
 8002064:	0800250b 	.word	0x0800250b
 8002068:	0800250b 	.word	0x0800250b
 800206c:	0800250b 	.word	0x0800250b
 8002070:	0800250b 	.word	0x0800250b
 8002074:	0800250b 	.word	0x0800250b
 8002078:	0800250b 	.word	0x0800250b
 800207c:	0800250b 	.word	0x0800250b
 8002080:	0800250b 	.word	0x0800250b
 8002084:	0800250b 	.word	0x0800250b
 8002088:	0800250b 	.word	0x0800250b
 800208c:	0800250b 	.word	0x0800250b
 8002090:	0800250b 	.word	0x0800250b
 8002094:	0800250b 	.word	0x0800250b
 8002098:	0800250b 	.word	0x0800250b
 800209c:	0800250b 	.word	0x0800250b
 80020a0:	0800250b 	.word	0x0800250b
 80020a4:	0800250b 	.word	0x0800250b
 80020a8:	0800250b 	.word	0x0800250b
 80020ac:	0800250b 	.word	0x0800250b
 80020b0:	0800250b 	.word	0x0800250b
 80020b4:	0800250b 	.word	0x0800250b
 80020b8:	0800250b 	.word	0x0800250b
 80020bc:	0800250b 	.word	0x0800250b
 80020c0:	0800250b 	.word	0x0800250b
 80020c4:	0800250b 	.word	0x0800250b
 80020c8:	0800250b 	.word	0x0800250b
 80020cc:	0800250b 	.word	0x0800250b
 80020d0:	0800250b 	.word	0x0800250b
 80020d4:	0800250b 	.word	0x0800250b
 80020d8:	0800250b 	.word	0x0800250b
 80020dc:	0800250b 	.word	0x0800250b
 80020e0:	0800250b 	.word	0x0800250b
 80020e4:	0800250b 	.word	0x0800250b
 80020e8:	0800250b 	.word	0x0800250b
 80020ec:	0800250b 	.word	0x0800250b
 80020f0:	0800250b 	.word	0x0800250b
 80020f4:	0800250b 	.word	0x0800250b
 80020f8:	0800250b 	.word	0x0800250b
 80020fc:	0800250b 	.word	0x0800250b
 8002100:	0800250b 	.word	0x0800250b
 8002104:	0800250b 	.word	0x0800250b
 8002108:	0800218d 	.word	0x0800218d
 800210c:	0800250b 	.word	0x0800250b
 8002110:	0800250b 	.word	0x0800250b
 8002114:	0800250b 	.word	0x0800250b
 8002118:	0800250b 	.word	0x0800250b
 800211c:	0800250b 	.word	0x0800250b
 8002120:	0800250b 	.word	0x0800250b
 8002124:	0800250b 	.word	0x0800250b
 8002128:	0800250b 	.word	0x0800250b
 800212c:	0800250b 	.word	0x0800250b
 8002130:	0800218d 	.word	0x0800218d
 8002134:	08002379 	.word	0x08002379
 8002138:	0800218d 	.word	0x0800218d
 800213c:	0800250b 	.word	0x0800250b
 8002140:	0800250b 	.word	0x0800250b
 8002144:	0800250b 	.word	0x0800250b
 8002148:	0800250b 	.word	0x0800250b
 800214c:	0800218d 	.word	0x0800218d
 8002150:	0800250b 	.word	0x0800250b
 8002154:	0800250b 	.word	0x0800250b
 8002158:	0800250b 	.word	0x0800250b
 800215c:	0800250b 	.word	0x0800250b
 8002160:	0800250b 	.word	0x0800250b
 8002164:	0800218d 	.word	0x0800218d
 8002168:	080024b1 	.word	0x080024b1
 800216c:	0800250b 	.word	0x0800250b
 8002170:	0800250b 	.word	0x0800250b
 8002174:	080023ed 	.word	0x080023ed
 8002178:	0800250b 	.word	0x0800250b
 800217c:	0800218d 	.word	0x0800218d
 8002180:	0800250b 	.word	0x0800250b
 8002184:	0800250b 	.word	0x0800250b
 8002188:	0800218d 	.word	0x0800218d
 800218c:	683b      	ldr	r3, [r7, #0]
 800218e:	781b      	ldrb	r3, [r3, #0]
 8002190:	2b78      	cmp	r3, #120	; 0x78
 8002192:	d003      	beq.n	800219c <_vsnprintf+0x410>
 8002194:	683b      	ldr	r3, [r7, #0]
 8002196:	781b      	ldrb	r3, [r3, #0]
 8002198:	2b58      	cmp	r3, #88	; 0x58
 800219a:	d102      	bne.n	80021a2 <_vsnprintf+0x416>
 800219c:	2310      	movs	r3, #16
 800219e:	633b      	str	r3, [r7, #48]	; 0x30
 80021a0:	e013      	b.n	80021ca <_vsnprintf+0x43e>
 80021a2:	683b      	ldr	r3, [r7, #0]
 80021a4:	781b      	ldrb	r3, [r3, #0]
 80021a6:	2b6f      	cmp	r3, #111	; 0x6f
 80021a8:	d102      	bne.n	80021b0 <_vsnprintf+0x424>
 80021aa:	2308      	movs	r3, #8
 80021ac:	633b      	str	r3, [r7, #48]	; 0x30
 80021ae:	e00c      	b.n	80021ca <_vsnprintf+0x43e>
 80021b0:	683b      	ldr	r3, [r7, #0]
 80021b2:	781b      	ldrb	r3, [r3, #0]
 80021b4:	2b62      	cmp	r3, #98	; 0x62
 80021b6:	d102      	bne.n	80021be <_vsnprintf+0x432>
 80021b8:	2302      	movs	r3, #2
 80021ba:	633b      	str	r3, [r7, #48]	; 0x30
 80021bc:	e005      	b.n	80021ca <_vsnprintf+0x43e>
 80021be:	230a      	movs	r3, #10
 80021c0:	633b      	str	r3, [r7, #48]	; 0x30
 80021c2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80021c4:	f023 0310 	bic.w	r3, r3, #16
 80021c8:	647b      	str	r3, [r7, #68]	; 0x44
 80021ca:	683b      	ldr	r3, [r7, #0]
 80021cc:	781b      	ldrb	r3, [r3, #0]
 80021ce:	2b58      	cmp	r3, #88	; 0x58
 80021d0:	d103      	bne.n	80021da <_vsnprintf+0x44e>
 80021d2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80021d4:	f043 0320 	orr.w	r3, r3, #32
 80021d8:	647b      	str	r3, [r7, #68]	; 0x44
 80021da:	683b      	ldr	r3, [r7, #0]
 80021dc:	781b      	ldrb	r3, [r3, #0]
 80021de:	2b69      	cmp	r3, #105	; 0x69
 80021e0:	d007      	beq.n	80021f2 <_vsnprintf+0x466>
 80021e2:	683b      	ldr	r3, [r7, #0]
 80021e4:	781b      	ldrb	r3, [r3, #0]
 80021e6:	2b64      	cmp	r3, #100	; 0x64
 80021e8:	d003      	beq.n	80021f2 <_vsnprintf+0x466>
 80021ea:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80021ec:	f023 030c 	bic.w	r3, r3, #12
 80021f0:	647b      	str	r3, [r7, #68]	; 0x44
 80021f2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80021f4:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 80021f8:	2b00      	cmp	r3, #0
 80021fa:	d003      	beq.n	8002204 <_vsnprintf+0x478>
 80021fc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80021fe:	f023 0301 	bic.w	r3, r3, #1
 8002202:	647b      	str	r3, [r7, #68]	; 0x44
 8002204:	683b      	ldr	r3, [r7, #0]
 8002206:	781b      	ldrb	r3, [r3, #0]
 8002208:	2b69      	cmp	r3, #105	; 0x69
 800220a:	d003      	beq.n	8002214 <_vsnprintf+0x488>
 800220c:	683b      	ldr	r3, [r7, #0]
 800220e:	781b      	ldrb	r3, [r3, #0]
 8002210:	2b64      	cmp	r3, #100	; 0x64
 8002212:	d15e      	bne.n	80022d2 <_vsnprintf+0x546>
 8002214:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002216:	f403 7300 	and.w	r3, r3, #512	; 0x200
 800221a:	2b00      	cmp	r3, #0
 800221c:	f040 80a8 	bne.w	8002370 <_vsnprintf+0x5e4>
 8002220:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002222:	f403 7380 	and.w	r3, r3, #256	; 0x100
 8002226:	2b00      	cmp	r3, #0
 8002228:	d01e      	beq.n	8002268 <_vsnprintf+0x4dc>
 800222a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800222c:	1d1a      	adds	r2, r3, #4
 800222e:	65ba      	str	r2, [r7, #88]	; 0x58
 8002230:	681b      	ldr	r3, [r3, #0]
 8002232:	613b      	str	r3, [r7, #16]
 8002234:	693b      	ldr	r3, [r7, #16]
 8002236:	2b00      	cmp	r3, #0
 8002238:	bfb8      	it	lt
 800223a:	425b      	neglt	r3, r3
 800223c:	4619      	mov	r1, r3
 800223e:	693b      	ldr	r3, [r7, #16]
 8002240:	0fdb      	lsrs	r3, r3, #31
 8002242:	b2db      	uxtb	r3, r3
 8002244:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 8002246:	9205      	str	r2, [sp, #20]
 8002248:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 800224a:	9204      	str	r2, [sp, #16]
 800224c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 800224e:	9203      	str	r2, [sp, #12]
 8002250:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 8002252:	9202      	str	r2, [sp, #8]
 8002254:	9301      	str	r3, [sp, #4]
 8002256:	9100      	str	r1, [sp, #0]
 8002258:	687b      	ldr	r3, [r7, #4]
 800225a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800225c:	68b9      	ldr	r1, [r7, #8]
 800225e:	68f8      	ldr	r0, [r7, #12]
 8002260:	f7ff fd2d 	bl	8001cbe <_ntoa_long>
 8002264:	6378      	str	r0, [r7, #52]	; 0x34
 8002266:	e083      	b.n	8002370 <_vsnprintf+0x5e4>
 8002268:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800226a:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800226e:	2b00      	cmp	r3, #0
 8002270:	d005      	beq.n	800227e <_vsnprintf+0x4f2>
 8002272:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002274:	1d1a      	adds	r2, r3, #4
 8002276:	65ba      	str	r2, [r7, #88]	; 0x58
 8002278:	681b      	ldr	r3, [r3, #0]
 800227a:	b2db      	uxtb	r3, r3
 800227c:	e00e      	b.n	800229c <_vsnprintf+0x510>
 800227e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002280:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002284:	2b00      	cmp	r3, #0
 8002286:	d005      	beq.n	8002294 <_vsnprintf+0x508>
 8002288:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 800228a:	1d1a      	adds	r2, r3, #4
 800228c:	65ba      	str	r2, [r7, #88]	; 0x58
 800228e:	681b      	ldr	r3, [r3, #0]
 8002290:	b21b      	sxth	r3, r3
 8002292:	e003      	b.n	800229c <_vsnprintf+0x510>
 8002294:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002296:	1d1a      	adds	r2, r3, #4
 8002298:	65ba      	str	r2, [r7, #88]	; 0x58
 800229a:	681b      	ldr	r3, [r3, #0]
 800229c:	617b      	str	r3, [r7, #20]
 800229e:	697b      	ldr	r3, [r7, #20]
 80022a0:	2b00      	cmp	r3, #0
 80022a2:	bfb8      	it	lt
 80022a4:	425b      	neglt	r3, r3
 80022a6:	4619      	mov	r1, r3
 80022a8:	697b      	ldr	r3, [r7, #20]
 80022aa:	0fdb      	lsrs	r3, r3, #31
 80022ac:	b2db      	uxtb	r3, r3
 80022ae:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80022b0:	9205      	str	r2, [sp, #20]
 80022b2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80022b4:	9204      	str	r2, [sp, #16]
 80022b6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 80022b8:	9203      	str	r2, [sp, #12]
 80022ba:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80022bc:	9202      	str	r2, [sp, #8]
 80022be:	9301      	str	r3, [sp, #4]
 80022c0:	9100      	str	r1, [sp, #0]
 80022c2:	687b      	ldr	r3, [r7, #4]
 80022c4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80022c6:	68b9      	ldr	r1, [r7, #8]
 80022c8:	68f8      	ldr	r0, [r7, #12]
 80022ca:	f7ff fcf8 	bl	8001cbe <_ntoa_long>
 80022ce:	6378      	str	r0, [r7, #52]	; 0x34
 80022d0:	e04e      	b.n	8002370 <_vsnprintf+0x5e4>
 80022d2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80022d4:	f403 7300 	and.w	r3, r3, #512	; 0x200
 80022d8:	2b00      	cmp	r3, #0
 80022da:	d149      	bne.n	8002370 <_vsnprintf+0x5e4>
 80022dc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80022de:	f403 7380 	and.w	r3, r3, #256	; 0x100
 80022e2:	2b00      	cmp	r3, #0
 80022e4:	d016      	beq.n	8002314 <_vsnprintf+0x588>
 80022e6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80022e8:	1d1a      	adds	r2, r3, #4
 80022ea:	65ba      	str	r2, [r7, #88]	; 0x58
 80022ec:	681b      	ldr	r3, [r3, #0]
 80022ee:	6c7a      	ldr	r2, [r7, #68]	; 0x44
 80022f0:	9205      	str	r2, [sp, #20]
 80022f2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80022f4:	9204      	str	r2, [sp, #16]
 80022f6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
 80022f8:	9203      	str	r2, [sp, #12]
 80022fa:	6b3a      	ldr	r2, [r7, #48]	; 0x30
 80022fc:	9202      	str	r2, [sp, #8]
 80022fe:	2200      	movs	r2, #0
 8002300:	9201      	str	r2, [sp, #4]
 8002302:	9300      	str	r3, [sp, #0]
 8002304:	687b      	ldr	r3, [r7, #4]
 8002306:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002308:	68b9      	ldr	r1, [r7, #8]
 800230a:	68f8      	ldr	r0, [r7, #12]
 800230c:	f7ff fcd7 	bl	8001cbe <_ntoa_long>
 8002310:	6378      	str	r0, [r7, #52]	; 0x34
 8002312:	e02d      	b.n	8002370 <_vsnprintf+0x5e4>
 8002314:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002316:	f003 0340 	and.w	r3, r3, #64	; 0x40
 800231a:	2b00      	cmp	r3, #0
 800231c:	d005      	beq.n	800232a <_vsnprintf+0x59e>
 800231e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002320:	1d1a      	adds	r2, r3, #4
 8002322:	65ba      	str	r2, [r7, #88]	; 0x58
 8002324:	681b      	ldr	r3, [r3, #0]
 8002326:	b2db      	uxtb	r3, r3
 8002328:	e00e      	b.n	8002348 <_vsnprintf+0x5bc>
 800232a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800232c:	f003 0380 	and.w	r3, r3, #128	; 0x80
 8002330:	2b00      	cmp	r3, #0
 8002332:	d005      	beq.n	8002340 <_vsnprintf+0x5b4>
 8002334:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002336:	1d1a      	adds	r2, r3, #4
 8002338:	65ba      	str	r2, [r7, #88]	; 0x58
 800233a:	681b      	ldr	r3, [r3, #0]
 800233c:	b29b      	uxth	r3, r3
 800233e:	e003      	b.n	8002348 <_vsnprintf+0x5bc>
 8002340:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 8002342:	1d1a      	adds	r2, r3, #4
 8002344:	65ba      	str	r2, [r7, #88]	; 0x58
 8002346:	681b      	ldr	r3, [r3, #0]
 8002348:	61bb      	str	r3, [r7, #24]
 800234a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800234c:	9305      	str	r3, [sp, #20]
 800234e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8002350:	9304      	str	r3, [sp, #16]
 8002352:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002354:	9303      	str	r3, [sp, #12]
 8002356:	6b3b      	ldr	r3, [r7, #48]	; 0x30
 8002358:	9302      	str	r3, [sp, #8]
 800235a:	2300      	movs	r3, #0
 800235c:	9301      	str	r3, [sp, #4]
 800235e:	69bb      	ldr	r3, [r7, #24]
 8002360:	9300      	str	r3, [sp, #0]
 8002362:	687b      	ldr	r3, [r7, #4]
 8002364:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002366:	68b9      	ldr	r1, [r7, #8]
 8002368:	68f8      	ldr	r0, [r7, #12]
 800236a:	f7ff fca8 	bl	8001cbe <_ntoa_long>
 800236e:	6378      	str	r0, [r7, #52]	; 0x34
 8002370:	683b      	ldr	r3, [r7, #0]
 8002372:	3301      	adds	r3, #1
 8002374:	603b      	str	r3, [r7, #0]
 8002376:	e0d5      	b.n	8002524 <_vsnprintf+0x798>
 8002378:	2301      	movs	r3, #1
 800237a:	62fb      	str	r3, [r7, #44]	; 0x2c
 800237c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800237e:	f003 0302 	and.w	r3, r3, #2
 8002382:	2b00      	cmp	r3, #0
 8002384:	d10e      	bne.n	80023a4 <_vsnprintf+0x618>
 8002386:	e007      	b.n	8002398 <_vsnprintf+0x60c>
 8002388:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800238a:	1c53      	adds	r3, r2, #1
 800238c:	637b      	str	r3, [r7, #52]	; 0x34
 800238e:	68fc      	ldr	r4, [r7, #12]
 8002390:	687b      	ldr	r3, [r7, #4]
 8002392:	68b9      	ldr	r1, [r7, #8]
 8002394:	2020      	movs	r0, #32
 8002396:	47a0      	blx	r4
 8002398:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 800239a:	1c5a      	adds	r2, r3, #1
 800239c:	62fa      	str	r2, [r7, #44]	; 0x2c
 800239e:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80023a0:	429a      	cmp	r2, r3
 80023a2:	d8f1      	bhi.n	8002388 <_vsnprintf+0x5fc>
 80023a4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80023a6:	1d1a      	adds	r2, r3, #4
 80023a8:	65ba      	str	r2, [r7, #88]	; 0x58
 80023aa:	681b      	ldr	r3, [r3, #0]
 80023ac:	b2d8      	uxtb	r0, r3
 80023ae:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80023b0:	1c53      	adds	r3, r2, #1
 80023b2:	637b      	str	r3, [r7, #52]	; 0x34
 80023b4:	68fc      	ldr	r4, [r7, #12]
 80023b6:	687b      	ldr	r3, [r7, #4]
 80023b8:	68b9      	ldr	r1, [r7, #8]
 80023ba:	47a0      	blx	r4
 80023bc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80023be:	f003 0302 	and.w	r3, r3, #2
 80023c2:	2b00      	cmp	r3, #0
 80023c4:	d00e      	beq.n	80023e4 <_vsnprintf+0x658>
 80023c6:	e007      	b.n	80023d8 <_vsnprintf+0x64c>
 80023c8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80023ca:	1c53      	adds	r3, r2, #1
 80023cc:	637b      	str	r3, [r7, #52]	; 0x34
 80023ce:	68fc      	ldr	r4, [r7, #12]
 80023d0:	687b      	ldr	r3, [r7, #4]
 80023d2:	68b9      	ldr	r1, [r7, #8]
 80023d4:	2020      	movs	r0, #32
 80023d6:	47a0      	blx	r4
 80023d8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 80023da:	1c5a      	adds	r2, r3, #1
 80023dc:	62fa      	str	r2, [r7, #44]	; 0x2c
 80023de:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80023e0:	429a      	cmp	r2, r3
 80023e2:	d8f1      	bhi.n	80023c8 <_vsnprintf+0x63c>
 80023e4:	683b      	ldr	r3, [r7, #0]
 80023e6:	3301      	adds	r3, #1
 80023e8:	603b      	str	r3, [r7, #0]
 80023ea:	e09b      	b.n	8002524 <_vsnprintf+0x798>
 80023ec:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80023ee:	1d1a      	adds	r2, r3, #4
 80023f0:	65ba      	str	r2, [r7, #88]	; 0x58
 80023f2:	681b      	ldr	r3, [r3, #0]
 80023f4:	62bb      	str	r3, [r7, #40]	; 0x28
 80023f6:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80023f8:	2b00      	cmp	r3, #0
 80023fa:	d001      	beq.n	8002400 <_vsnprintf+0x674>
 80023fc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80023fe:	e001      	b.n	8002404 <_vsnprintf+0x678>
 8002400:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002404:	4619      	mov	r1, r3
 8002406:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8002408:	f7ff fad5 	bl	80019b6 <_strnlen_s>
 800240c:	6278      	str	r0, [r7, #36]	; 0x24
 800240e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002410:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002414:	2b00      	cmp	r3, #0
 8002416:	d005      	beq.n	8002424 <_vsnprintf+0x698>
 8002418:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 800241a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800241c:	4293      	cmp	r3, r2
 800241e:	bf28      	it	cs
 8002420:	4613      	movcs	r3, r2
 8002422:	627b      	str	r3, [r7, #36]	; 0x24
 8002424:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002426:	f003 0302 	and.w	r3, r3, #2
 800242a:	2b00      	cmp	r3, #0
 800242c:	d11a      	bne.n	8002464 <_vsnprintf+0x6d8>
 800242e:	e007      	b.n	8002440 <_vsnprintf+0x6b4>
 8002430:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002432:	1c53      	adds	r3, r2, #1
 8002434:	637b      	str	r3, [r7, #52]	; 0x34
 8002436:	68fc      	ldr	r4, [r7, #12]
 8002438:	687b      	ldr	r3, [r7, #4]
 800243a:	68b9      	ldr	r1, [r7, #8]
 800243c:	2020      	movs	r0, #32
 800243e:	47a0      	blx	r4
 8002440:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8002442:	1c5a      	adds	r2, r3, #1
 8002444:	627a      	str	r2, [r7, #36]	; 0x24
 8002446:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 8002448:	429a      	cmp	r2, r3
 800244a:	d8f1      	bhi.n	8002430 <_vsnprintf+0x6a4>
 800244c:	e00a      	b.n	8002464 <_vsnprintf+0x6d8>
 800244e:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002450:	1c5a      	adds	r2, r3, #1
 8002452:	62ba      	str	r2, [r7, #40]	; 0x28
 8002454:	7818      	ldrb	r0, [r3, #0]
 8002456:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002458:	1c53      	adds	r3, r2, #1
 800245a:	637b      	str	r3, [r7, #52]	; 0x34
 800245c:	68fc      	ldr	r4, [r7, #12]
 800245e:	687b      	ldr	r3, [r7, #4]
 8002460:	68b9      	ldr	r1, [r7, #8]
 8002462:	47a0      	blx	r4
 8002464:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8002466:	781b      	ldrb	r3, [r3, #0]
 8002468:	2b00      	cmp	r3, #0
 800246a:	d009      	beq.n	8002480 <_vsnprintf+0x6f4>
 800246c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 800246e:	f403 6380 	and.w	r3, r3, #1024	; 0x400
 8002472:	2b00      	cmp	r3, #0
 8002474:	d0eb      	beq.n	800244e <_vsnprintf+0x6c2>
 8002476:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8002478:	1e5a      	subs	r2, r3, #1
 800247a:	63fa      	str	r2, [r7, #60]	; 0x3c
 800247c:	2b00      	cmp	r3, #0
 800247e:	d1e6      	bne.n	800244e <_vsnprintf+0x6c2>
 8002480:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 8002482:	f003 0302 	and.w	r3, r3, #2
 8002486:	2b00      	cmp	r3, #0
 8002488:	d00e      	beq.n	80024a8 <_vsnprintf+0x71c>
 800248a:	e007      	b.n	800249c <_vsnprintf+0x710>
 800248c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800248e:	1c53      	adds	r3, r2, #1
 8002490:	637b      	str	r3, [r7, #52]	; 0x34
 8002492:	68fc      	ldr	r4, [r7, #12]
 8002494:	687b      	ldr	r3, [r7, #4]
 8002496:	68b9      	ldr	r1, [r7, #8]
 8002498:	2020      	movs	r0, #32
 800249a:	47a0      	blx	r4
 800249c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 800249e:	1c5a      	adds	r2, r3, #1
 80024a0:	627a      	str	r2, [r7, #36]	; 0x24
 80024a2:	6c3a      	ldr	r2, [r7, #64]	; 0x40
 80024a4:	429a      	cmp	r2, r3
 80024a6:	d8f1      	bhi.n	800248c <_vsnprintf+0x700>
 80024a8:	683b      	ldr	r3, [r7, #0]
 80024aa:	3301      	adds	r3, #1
 80024ac:	603b      	str	r3, [r7, #0]
 80024ae:	e039      	b.n	8002524 <_vsnprintf+0x798>
 80024b0:	2308      	movs	r3, #8
 80024b2:	643b      	str	r3, [r7, #64]	; 0x40
 80024b4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80024b6:	f043 0321 	orr.w	r3, r3, #33	; 0x21
 80024ba:	647b      	str	r3, [r7, #68]	; 0x44
 80024bc:	6dbb      	ldr	r3, [r7, #88]	; 0x58
 80024be:	1d1a      	adds	r2, r3, #4
 80024c0:	65ba      	str	r2, [r7, #88]	; 0x58
 80024c2:	681b      	ldr	r3, [r3, #0]
 80024c4:	461a      	mov	r2, r3
 80024c6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
 80024c8:	9305      	str	r3, [sp, #20]
 80024ca:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 80024cc:	9304      	str	r3, [sp, #16]
 80024ce:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 80024d0:	9303      	str	r3, [sp, #12]
 80024d2:	2310      	movs	r3, #16
 80024d4:	9302      	str	r3, [sp, #8]
 80024d6:	2300      	movs	r3, #0
 80024d8:	9301      	str	r3, [sp, #4]
 80024da:	9200      	str	r2, [sp, #0]
 80024dc:	687b      	ldr	r3, [r7, #4]
 80024de:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80024e0:	68b9      	ldr	r1, [r7, #8]
 80024e2:	68f8      	ldr	r0, [r7, #12]
 80024e4:	f7ff fbeb 	bl	8001cbe <_ntoa_long>
 80024e8:	6378      	str	r0, [r7, #52]	; 0x34
 80024ea:	683b      	ldr	r3, [r7, #0]
 80024ec:	3301      	adds	r3, #1
 80024ee:	603b      	str	r3, [r7, #0]
 80024f0:	e018      	b.n	8002524 <_vsnprintf+0x798>
 80024f2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 80024f4:	1c53      	adds	r3, r2, #1
 80024f6:	637b      	str	r3, [r7, #52]	; 0x34
 80024f8:	68fc      	ldr	r4, [r7, #12]
 80024fa:	687b      	ldr	r3, [r7, #4]
 80024fc:	68b9      	ldr	r1, [r7, #8]
 80024fe:	2025      	movs	r0, #37	; 0x25
 8002500:	47a0      	blx	r4
 8002502:	683b      	ldr	r3, [r7, #0]
 8002504:	3301      	adds	r3, #1
 8002506:	603b      	str	r3, [r7, #0]
 8002508:	e00c      	b.n	8002524 <_vsnprintf+0x798>
 800250a:	683b      	ldr	r3, [r7, #0]
 800250c:	7818      	ldrb	r0, [r3, #0]
 800250e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002510:	1c53      	adds	r3, r2, #1
 8002512:	637b      	str	r3, [r7, #52]	; 0x34
 8002514:	68fc      	ldr	r4, [r7, #12]
 8002516:	687b      	ldr	r3, [r7, #4]
 8002518:	68b9      	ldr	r1, [r7, #8]
 800251a:	47a0      	blx	r4
 800251c:	683b      	ldr	r3, [r7, #0]
 800251e:	3301      	adds	r3, #1
 8002520:	603b      	str	r3, [r7, #0]
 8002522:	bf00      	nop
 8002524:	683b      	ldr	r3, [r7, #0]
 8002526:	781b      	ldrb	r3, [r3, #0]
 8002528:	2b00      	cmp	r3, #0
 800252a:	f47f ac3f 	bne.w	8001dac <_vsnprintf+0x20>
 800252e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 8002530:	687b      	ldr	r3, [r7, #4]
 8002532:	429a      	cmp	r2, r3
 8002534:	d302      	bcc.n	800253c <_vsnprintf+0x7b0>
 8002536:	687b      	ldr	r3, [r7, #4]
 8002538:	1e5a      	subs	r2, r3, #1
 800253a:	e000      	b.n	800253e <_vsnprintf+0x7b2>
 800253c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
 800253e:	68fc      	ldr	r4, [r7, #12]
 8002540:	687b      	ldr	r3, [r7, #4]
 8002542:	68b9      	ldr	r1, [r7, #8]
 8002544:	2000      	movs	r0, #0
 8002546:	47a0      	blx	r4
 8002548:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 800254a:	4618      	mov	r0, r3
 800254c:	374c      	adds	r7, #76	; 0x4c
 800254e:	46bd      	mov	sp, r7
 8002550:	bd90      	pop	{r4, r7, pc}
 8002552:	bf00      	nop

08002554 <printf_>:
 8002554:	b40f      	push	{r0, r1, r2, r3}
 8002556:	b580      	push	{r7, lr}
 8002558:	b086      	sub	sp, #24
 800255a:	af02      	add	r7, sp, #8
 800255c:	f107 031c 	add.w	r3, r7, #28
 8002560:	60bb      	str	r3, [r7, #8]
 8002562:	1d39      	adds	r1, r7, #4
 8002564:	68bb      	ldr	r3, [r7, #8]
 8002566:	9300      	str	r3, [sp, #0]
 8002568:	69bb      	ldr	r3, [r7, #24]
 800256a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800256e:	4806      	ldr	r0, [pc, #24]	; (8002588 <printf_+0x34>)
 8002570:	f7ff fc0c 	bl	8001d8c <_vsnprintf>
 8002574:	60f8      	str	r0, [r7, #12]
 8002576:	68fb      	ldr	r3, [r7, #12]
 8002578:	4618      	mov	r0, r3
 800257a:	3710      	adds	r7, #16
 800257c:	46bd      	mov	sp, r7
 800257e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002582:	b004      	add	sp, #16
 8002584:	4770      	bx	lr
 8002586:	bf00      	nop
 8002588:	08001991 	.word	0x08001991

0800258c <sprintf_>:
 800258c:	b40e      	push	{r1, r2, r3}
 800258e:	b580      	push	{r7, lr}
 8002590:	b087      	sub	sp, #28
 8002592:	af02      	add	r7, sp, #8
 8002594:	6078      	str	r0, [r7, #4]
 8002596:	f107 0320 	add.w	r3, r7, #32
 800259a:	60bb      	str	r3, [r7, #8]
 800259c:	68bb      	ldr	r3, [r7, #8]
 800259e:	9300      	str	r3, [sp, #0]
 80025a0:	69fb      	ldr	r3, [r7, #28]
 80025a2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80025a6:	6879      	ldr	r1, [r7, #4]
 80025a8:	4805      	ldr	r0, [pc, #20]	; (80025c0 <sprintf_+0x34>)
 80025aa:	f7ff fbef 	bl	8001d8c <_vsnprintf>
 80025ae:	60f8      	str	r0, [r7, #12]
 80025b0:	68fb      	ldr	r3, [r7, #12]
 80025b2:	4618      	mov	r0, r3
 80025b4:	3714      	adds	r7, #20
 80025b6:	46bd      	mov	sp, r7
 80025b8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80025bc:	b003      	add	sp, #12
 80025be:	4770      	bx	lr
 80025c0:	08001947 	.word	0x08001947

080025c4 <fault_test_by_div0>:
 80025c4:	b580      	push	{r7, lr}
 80025c6:	b084      	sub	sp, #16
 80025c8:	af00      	add	r7, sp, #0
 80025ca:	4b0c      	ldr	r3, [pc, #48]	; (80025fc <fault_test_by_div0+0x38>)
 80025cc:	60fb      	str	r3, [r7, #12]
 80025ce:	68fb      	ldr	r3, [r7, #12]
 80025d0:	681b      	ldr	r3, [r3, #0]
 80025d2:	f043 0210 	orr.w	r2, r3, #16
 80025d6:	68fb      	ldr	r3, [r7, #12]
 80025d8:	601a      	str	r2, [r3, #0]
 80025da:	230a      	movs	r3, #10
 80025dc:	60bb      	str	r3, [r7, #8]
 80025de:	2300      	movs	r3, #0
 80025e0:	607b      	str	r3, [r7, #4]
 80025e2:	68ba      	ldr	r2, [r7, #8]
 80025e4:	687b      	ldr	r3, [r7, #4]
 80025e6:	fb92 f3f3 	sdiv	r3, r2, r3
 80025ea:	603b      	str	r3, [r7, #0]
 80025ec:	6839      	ldr	r1, [r7, #0]
 80025ee:	4804      	ldr	r0, [pc, #16]	; (8002600 <fault_test_by_div0+0x3c>)
 80025f0:	f7ff ffb0 	bl	8002554 <printf_>
 80025f4:	bf00      	nop
 80025f6:	3710      	adds	r7, #16
 80025f8:	46bd      	mov	sp, r7
 80025fa:	bd80      	pop	{r7, pc}
 80025fc:	e000ed14 	.word	0xe000ed14
 8002600:	080030a0 	.word	0x080030a0

08002604 <dump_stack>:
 8002604:	b580      	push	{r7, lr}
 8002606:	b084      	sub	sp, #16
 8002608:	af00      	add	r7, sp, #0
 800260a:	60f8      	str	r0, [r7, #12]
 800260c:	60b9      	str	r1, [r7, #8]
 800260e:	607a      	str	r2, [r7, #4]
 8002610:	687b      	ldr	r3, [r7, #4]
 8002612:	68fa      	ldr	r2, [r7, #12]
 8002614:	429a      	cmp	r2, r3
 8002616:	d902      	bls.n	800261e <dump_stack+0x1a>
 8002618:	68fb      	ldr	r3, [r7, #12]
 800261a:	607b      	str	r3, [r7, #4]
 800261c:	e009      	b.n	8002632 <dump_stack+0x2e>
 800261e:	68fa      	ldr	r2, [r7, #12]
 8002620:	68bb      	ldr	r3, [r7, #8]
 8002622:	441a      	add	r2, r3
 8002624:	687b      	ldr	r3, [r7, #4]
 8002626:	429a      	cmp	r2, r3
 8002628:	d203      	bcs.n	8002632 <dump_stack+0x2e>
 800262a:	68fa      	ldr	r2, [r7, #12]
 800262c:	68bb      	ldr	r3, [r7, #8]
 800262e:	4413      	add	r3, r2
 8002630:	607b      	str	r3, [r7, #4]
 8002632:	490e      	ldr	r1, [pc, #56]	; (800266c <dump_stack+0x68>)
 8002634:	480e      	ldr	r0, [pc, #56]	; (8002670 <dump_stack+0x6c>)
 8002636:	f7ff ff8d 	bl	8002554 <printf_>
 800263a:	e009      	b.n	8002650 <dump_stack+0x4c>
 800263c:	6879      	ldr	r1, [r7, #4]
 800263e:	687b      	ldr	r3, [r7, #4]
 8002640:	681b      	ldr	r3, [r3, #0]
 8002642:	461a      	mov	r2, r3
 8002644:	480b      	ldr	r0, [pc, #44]	; (8002674 <dump_stack+0x70>)
 8002646:	f7ff ff85 	bl	8002554 <printf_>
 800264a:	687b      	ldr	r3, [r7, #4]
 800264c:	3304      	adds	r3, #4
 800264e:	607b      	str	r3, [r7, #4]
 8002650:	68fa      	ldr	r2, [r7, #12]
 8002652:	68bb      	ldr	r3, [r7, #8]
 8002654:	441a      	add	r2, r3
 8002656:	687b      	ldr	r3, [r7, #4]
 8002658:	429a      	cmp	r2, r3
 800265a:	d8ef      	bhi.n	800263c <dump_stack+0x38>
 800265c:	4903      	ldr	r1, [pc, #12]	; (800266c <dump_stack+0x68>)
 800265e:	4804      	ldr	r0, [pc, #16]	; (8002670 <dump_stack+0x6c>)
 8002660:	f7ff ff78 	bl	8002554 <printf_>
 8002664:	bf00      	nop
 8002666:	3710      	adds	r7, #16
 8002668:	46bd      	mov	sp, r7
 800266a:	bd80      	pop	{r7, pc}
 800266c:	08003b3c 	.word	0x08003b3c
 8002670:	080030a8 	.word	0x080030a8
 8002674:	080030d4 	.word	0x080030d4

08002678 <disassembly_ins_is_bl_blx>:
 8002678:	b480      	push	{r7}
 800267a:	b085      	sub	sp, #20
 800267c:	af00      	add	r7, sp, #0
 800267e:	6078      	str	r0, [r7, #4]
 8002680:	687b      	ldr	r3, [r7, #4]
 8002682:	881b      	ldrh	r3, [r3, #0]
 8002684:	81fb      	strh	r3, [r7, #14]
 8002686:	687b      	ldr	r3, [r7, #4]
 8002688:	3302      	adds	r3, #2
 800268a:	881b      	ldrh	r3, [r3, #0]
 800268c:	81bb      	strh	r3, [r7, #12]
 800268e:	89bb      	ldrh	r3, [r7, #12]
 8002690:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 8002694:	f5b3 4f78 	cmp.w	r3, #63488	; 0xf800
 8002698:	d107      	bne.n	80026aa <disassembly_ins_is_bl_blx+0x32>
 800269a:	89fb      	ldrh	r3, [r7, #14]
 800269c:	f403 4378 	and.w	r3, r3, #63488	; 0xf800
 80026a0:	f5b3 4f70 	cmp.w	r3, #61440	; 0xf000
 80026a4:	d101      	bne.n	80026aa <disassembly_ins_is_bl_blx+0x32>
 80026a6:	2301      	movs	r3, #1
 80026a8:	e008      	b.n	80026bc <disassembly_ins_is_bl_blx+0x44>
 80026aa:	89bb      	ldrh	r3, [r7, #12]
 80026ac:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 80026b0:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 80026b4:	d101      	bne.n	80026ba <disassembly_ins_is_bl_blx+0x42>
 80026b6:	2301      	movs	r3, #1
 80026b8:	e000      	b.n	80026bc <disassembly_ins_is_bl_blx+0x44>
 80026ba:	2300      	movs	r3, #0
 80026bc:	4618      	mov	r0, r3
 80026be:	3714      	adds	r7, #20
 80026c0:	46bd      	mov	sp, r7
 80026c2:	f85d 7b04 	ldr.w	r7, [sp], #4
 80026c6:	4770      	bx	lr

080026c8 <backtrace_call_stack>:
 80026c8:	b580      	push	{r7, lr}
 80026ca:	b08a      	sub	sp, #40	; 0x28
 80026cc:	af02      	add	r7, sp, #8
 80026ce:	60f8      	str	r0, [r7, #12]
 80026d0:	60b9      	str	r1, [r7, #8]
 80026d2:	607a      	str	r2, [r7, #4]
 80026d4:	2300      	movs	r3, #0
 80026d6:	61fb      	str	r3, [r7, #28]
 80026d8:	2300      	movs	r3, #0
 80026da:	76fb      	strb	r3, [r7, #27]
 80026dc:	687a      	ldr	r2, [r7, #4]
 80026de:	4935      	ldr	r1, [pc, #212]	; (80027b4 <backtrace_call_stack+0xec>)
 80026e0:	4835      	ldr	r0, [pc, #212]	; (80027b8 <backtrace_call_stack+0xf0>)
 80026e2:	f7ff ff37 	bl	8002554 <printf_>
 80026e6:	e058      	b.n	800279a <backtrace_call_stack+0xd2>
 80026e8:	2300      	movs	r3, #0
 80026ea:	617b      	str	r3, [r7, #20]
 80026ec:	687b      	ldr	r3, [r7, #4]
 80026ee:	4a33      	ldr	r2, [pc, #204]	; (80027bc <backtrace_call_stack+0xf4>)
 80026f0:	4293      	cmp	r3, r2
 80026f2:	d103      	bne.n	80026fc <backtrace_call_stack+0x34>
 80026f4:	6879      	ldr	r1, [r7, #4]
 80026f6:	4832      	ldr	r0, [pc, #200]	; (80027c0 <backtrace_call_stack+0xf8>)
 80026f8:	f7ff ff2c 	bl	8002554 <printf_>
 80026fc:	687b      	ldr	r3, [r7, #4]
 80026fe:	681b      	ldr	r3, [r3, #0]
 8002700:	613b      	str	r3, [r7, #16]
 8002702:	693b      	ldr	r3, [r7, #16]
 8002704:	f003 0301 	and.w	r3, r3, #1
 8002708:	2b00      	cmp	r3, #0
 800270a:	d040      	beq.n	800278e <backtrace_call_stack+0xc6>
 800270c:	693b      	ldr	r3, [r7, #16]
 800270e:	3b01      	subs	r3, #1
 8002710:	613b      	str	r3, [r7, #16]
 8002712:	4b2c      	ldr	r3, [pc, #176]	; (80027c4 <backtrace_call_stack+0xfc>)
 8002714:	681b      	ldr	r3, [r3, #0]
 8002716:	693a      	ldr	r2, [r7, #16]
 8002718:	429a      	cmp	r2, r3
 800271a:	d33b      	bcc.n	8002794 <backtrace_call_stack+0xcc>
 800271c:	4b29      	ldr	r3, [pc, #164]	; (80027c4 <backtrace_call_stack+0xfc>)
 800271e:	681a      	ldr	r2, [r3, #0]
 8002720:	4b29      	ldr	r3, [pc, #164]	; (80027c8 <backtrace_call_stack+0x100>)
 8002722:	681b      	ldr	r3, [r3, #0]
 8002724:	4413      	add	r3, r2
 8002726:	693a      	ldr	r2, [r7, #16]
 8002728:	429a      	cmp	r2, r3
 800272a:	d833      	bhi.n	8002794 <backtrace_call_stack+0xcc>
 800272c:	693b      	ldr	r3, [r7, #16]
 800272e:	3b04      	subs	r3, #4
 8002730:	4618      	mov	r0, r3
 8002732:	f7ff ffa1 	bl	8002678 <disassembly_ins_is_bl_blx>
 8002736:	4603      	mov	r3, r0
 8002738:	2b00      	cmp	r3, #0
 800273a:	d02b      	beq.n	8002794 <backtrace_call_stack+0xcc>
 800273c:	69fa      	ldr	r2, [r7, #28]
 800273e:	68bb      	ldr	r3, [r7, #8]
 8002740:	429a      	cmp	r2, r3
 8002742:	d227      	bcs.n	8002794 <backtrace_call_stack+0xcc>
 8002744:	69fb      	ldr	r3, [r7, #28]
 8002746:	2b02      	cmp	r3, #2
 8002748:	d108      	bne.n	800275c <backtrace_call_stack+0x94>
 800274a:	7efb      	ldrb	r3, [r7, #27]
 800274c:	2b00      	cmp	r3, #0
 800274e:	d005      	beq.n	800275c <backtrace_call_stack+0x94>
 8002750:	68fb      	ldr	r3, [r7, #12]
 8002752:	3304      	adds	r3, #4
 8002754:	681b      	ldr	r3, [r3, #0]
 8002756:	693a      	ldr	r2, [r7, #16]
 8002758:	429a      	cmp	r2, r3
 800275a:	d01a      	beq.n	8002792 <backtrace_call_stack+0xca>
 800275c:	693b      	ldr	r3, [r7, #16]
 800275e:	3b04      	subs	r3, #4
 8002760:	681a      	ldr	r2, [r3, #0]
 8002762:	693b      	ldr	r3, [r7, #16]
 8002764:	3b04      	subs	r3, #4
 8002766:	881b      	ldrh	r3, [r3, #0]
 8002768:	4619      	mov	r1, r3
 800276a:	693b      	ldr	r3, [r7, #16]
 800276c:	3b02      	subs	r3, #2
 800276e:	881b      	ldrh	r3, [r3, #0]
 8002770:	9300      	str	r3, [sp, #0]
 8002772:	460b      	mov	r3, r1
 8002774:	6939      	ldr	r1, [r7, #16]
 8002776:	4815      	ldr	r0, [pc, #84]	; (80027cc <backtrace_call_stack+0x104>)
 8002778:	f7ff feec 	bl	8002554 <printf_>
 800277c:	69fb      	ldr	r3, [r7, #28]
 800277e:	1c5a      	adds	r2, r3, #1
 8002780:	61fa      	str	r2, [r7, #28]
 8002782:	009b      	lsls	r3, r3, #2
 8002784:	68fa      	ldr	r2, [r7, #12]
 8002786:	4413      	add	r3, r2
 8002788:	693a      	ldr	r2, [r7, #16]
 800278a:	601a      	str	r2, [r3, #0]
 800278c:	e002      	b.n	8002794 <backtrace_call_stack+0xcc>
 800278e:	bf00      	nop
 8002790:	e000      	b.n	8002794 <backtrace_call_stack+0xcc>
 8002792:	bf00      	nop
 8002794:	687b      	ldr	r3, [r7, #4]
 8002796:	3304      	adds	r3, #4
 8002798:	607b      	str	r3, [r7, #4]
 800279a:	4b0d      	ldr	r3, [pc, #52]	; (80027d0 <backtrace_call_stack+0x108>)
 800279c:	681a      	ldr	r2, [r3, #0]
 800279e:	4b0d      	ldr	r3, [pc, #52]	; (80027d4 <backtrace_call_stack+0x10c>)
 80027a0:	681b      	ldr	r3, [r3, #0]
 80027a2:	4413      	add	r3, r2
 80027a4:	687a      	ldr	r2, [r7, #4]
 80027a6:	429a      	cmp	r2, r3
 80027a8:	d39e      	bcc.n	80026e8 <backtrace_call_stack+0x20>
 80027aa:	69fb      	ldr	r3, [r7, #28]
 80027ac:	4618      	mov	r0, r3
 80027ae:	3720      	adds	r7, #32
 80027b0:	46bd      	mov	sp, r7
 80027b2:	bd80      	pop	{r7, pc}
 80027b4:	08003b48 	.word	0x08003b48
 80027b8:	08003950 	.word	0x08003950
 80027bc:	08080541 	.word	0x08080541
 80027c0:	08003960 	.word	0x08003960
 80027c4:	20000574 	.word	0x20000574
 80027c8:	2000057c 	.word	0x2000057c
 80027cc:	0800396c 	.word	0x0800396c
 80027d0:	20000580 	.word	0x20000580
 80027d4:	20000588 	.word	0x20000588

080027d8 <print_call_stack>:
 80027d8:	b580      	push	{r7, lr}
 80027da:	b096      	sub	sp, #88	; 0x58
 80027dc:	af02      	add	r7, sp, #8
 80027de:	6078      	str	r0, [r7, #4]
 80027e0:	2300      	movs	r3, #0
 80027e2:	64bb      	str	r3, [r7, #72]	; 0x48
 80027e4:	f107 0308 	add.w	r3, r7, #8
 80027e8:	2240      	movs	r2, #64	; 0x40
 80027ea:	2100      	movs	r1, #0
 80027ec:	4618      	mov	r0, r3
 80027ee:	f7fd fecf 	bl	8000590 <memset>
 80027f2:	4928      	ldr	r1, [pc, #160]	; (8002894 <print_call_stack+0xbc>)
 80027f4:	4828      	ldr	r0, [pc, #160]	; (8002898 <print_call_stack+0xc0>)
 80027f6:	f7ff fead 	bl	8002554 <printf_>
 80027fa:	f107 0308 	add.w	r3, r7, #8
 80027fe:	687a      	ldr	r2, [r7, #4]
 8002800:	2110      	movs	r1, #16
 8002802:	4618      	mov	r0, r3
 8002804:	f7ff ff60 	bl	80026c8 <backtrace_call_stack>
 8002808:	64b8      	str	r0, [r7, #72]	; 0x48
 800280a:	4922      	ldr	r1, [pc, #136]	; (8002894 <print_call_stack+0xbc>)
 800280c:	4822      	ldr	r0, [pc, #136]	; (8002898 <print_call_stack+0xc0>)
 800280e:	f7ff fea1 	bl	8002554 <printf_>
 8002812:	2300      	movs	r3, #0
 8002814:	64fb      	str	r3, [r7, #76]	; 0x4c
 8002816:	e01b      	b.n	8002850 <print_call_stack+0x78>
 8002818:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 800281a:	4613      	mov	r3, r2
 800281c:	00db      	lsls	r3, r3, #3
 800281e:	4413      	add	r3, r2
 8002820:	4a1e      	ldr	r2, [pc, #120]	; (800289c <print_call_stack+0xc4>)
 8002822:	1898      	adds	r0, r3, r2
 8002824:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8002826:	009b      	lsls	r3, r3, #2
 8002828:	f107 0250 	add.w	r2, r7, #80	; 0x50
 800282c:	4413      	add	r3, r2
 800282e:	f853 3c48 	ldr.w	r3, [r3, #-72]
 8002832:	461a      	mov	r2, r3
 8002834:	491a      	ldr	r1, [pc, #104]	; (80028a0 <print_call_stack+0xc8>)
 8002836:	f7ff fea9 	bl	800258c <sprintf_>
 800283a:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 800283c:	4613      	mov	r3, r2
 800283e:	00db      	lsls	r3, r3, #3
 8002840:	4413      	add	r3, r2
 8002842:	3308      	adds	r3, #8
 8002844:	4a15      	ldr	r2, [pc, #84]	; (800289c <print_call_stack+0xc4>)
 8002846:	2120      	movs	r1, #32
 8002848:	54d1      	strb	r1, [r2, r3]
 800284a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800284c:	3301      	adds	r3, #1
 800284e:	64fb      	str	r3, [r7, #76]	; 0x4c
 8002850:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
 8002852:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 8002854:	429a      	cmp	r2, r3
 8002856:	d3df      	bcc.n	8002818 <print_call_stack+0x40>
 8002858:	6cbb      	ldr	r3, [r7, #72]	; 0x48
 800285a:	2b00      	cmp	r3, #0
 800285c:	d00f      	beq.n	800287e <print_call_stack+0xa6>
 800285e:	4811      	ldr	r0, [pc, #68]	; (80028a4 <print_call_stack+0xcc>)
 8002860:	6cba      	ldr	r2, [r7, #72]	; 0x48
 8002862:	4613      	mov	r3, r2
 8002864:	00db      	lsls	r3, r3, #3
 8002866:	441a      	add	r2, r3
 8002868:	4b0c      	ldr	r3, [pc, #48]	; (800289c <print_call_stack+0xc4>)
 800286a:	9300      	str	r3, [sp, #0]
 800286c:	4613      	mov	r3, r2
 800286e:	4a0e      	ldr	r2, [pc, #56]	; (80028a8 <print_call_stack+0xd0>)
 8002870:	490e      	ldr	r1, [pc, #56]	; (80028ac <print_call_stack+0xd4>)
 8002872:	f7ff fe6f 	bl	8002554 <printf_>
 8002876:	480e      	ldr	r0, [pc, #56]	; (80028b0 <print_call_stack+0xd8>)
 8002878:	f7ff fe6c 	bl	8002554 <printf_>
 800287c:	e006      	b.n	800288c <print_call_stack+0xb4>
 800287e:	4b0d      	ldr	r3, [pc, #52]	; (80028b4 <print_call_stack+0xdc>)
 8002880:	4618      	mov	r0, r3
 8002882:	f7ff fe67 	bl	8002554 <printf_>
 8002886:	480a      	ldr	r0, [pc, #40]	; (80028b0 <print_call_stack+0xd8>)
 8002888:	f7ff fe64 	bl	8002554 <printf_>
 800288c:	bf00      	nop
 800288e:	3750      	adds	r7, #80	; 0x50
 8002890:	46bd      	mov	sp, r7
 8002892:	bd80      	pop	{r7, pc}
 8002894:	08003b60 	.word	0x08003b60
 8002898:	080030a8 	.word	0x080030a8
 800289c:	20000598 	.word	0x20000598
 80028a0:	080039b0 	.word	0x080039b0
 80028a4:	08003284 	.word	0x08003284
 80028a8:	080039b8 	.word	0x080039b8
 80028ac:	080039c0 	.word	0x080039c0
 80028b0:	080039d0 	.word	0x080039d0
 80028b4:	080032c4 	.word	0x080032c4

080028b8 <backtrace_level_3>:
 80028b8:	b598      	push	{r3, r4, r7, lr}
 80028ba:	af00      	add	r7, sp, #0
 80028bc:	490d      	ldr	r1, [pc, #52]	; (80028f4 <backtrace_level_3+0x3c>)
 80028be:	480e      	ldr	r0, [pc, #56]	; (80028f8 <backtrace_level_3+0x40>)
 80028c0:	f7ff fe48 	bl	8002554 <printf_>
 80028c4:	4b0d      	ldr	r3, [pc, #52]	; (80028fc <backtrace_level_3+0x44>)
 80028c6:	6818      	ldr	r0, [r3, #0]
 80028c8:	4b0d      	ldr	r3, [pc, #52]	; (8002900 <backtrace_level_3+0x48>)
 80028ca:	681b      	ldr	r3, [r3, #0]
 80028cc:	466a      	mov	r2, sp
 80028ce:	4614      	mov	r4, r2
 80028d0:	4622      	mov	r2, r4
 80028d2:	4619      	mov	r1, r3
 80028d4:	f7ff fe96 	bl	8002604 <dump_stack>
 80028d8:	466b      	mov	r3, sp
 80028da:	461c      	mov	r4, r3
 80028dc:	4623      	mov	r3, r4
 80028de:	4618      	mov	r0, r3
 80028e0:	f7ff ff7a 	bl	80027d8 <print_call_stack>
 80028e4:	466b      	mov	r3, sp
 80028e6:	461c      	mov	r4, r3
 80028e8:	4623      	mov	r3, r4
 80028ea:	4618      	mov	r0, r3
 80028ec:	f000 f99a 	bl	8002c24 <BackTraceSub>
 80028f0:	bf00      	nop
 80028f2:	bd98      	pop	{r3, r4, r7, pc}
 80028f4:	08003b74 	.word	0x08003b74
 80028f8:	080039d4 	.word	0x080039d4
 80028fc:	20000580 	.word	0x20000580
 8002900:	20000588 	.word	0x20000588

08002904 <backtrace_level_2>:
 8002904:	b580      	push	{r7, lr}
 8002906:	af00      	add	r7, sp, #0
 8002908:	4903      	ldr	r1, [pc, #12]	; (8002918 <backtrace_level_2+0x14>)
 800290a:	4804      	ldr	r0, [pc, #16]	; (800291c <backtrace_level_2+0x18>)
 800290c:	f7ff fe22 	bl	8002554 <printf_>
 8002910:	f7ff ffd2 	bl	80028b8 <backtrace_level_3>
 8002914:	bf00      	nop
 8002916:	bd80      	pop	{r7, pc}
 8002918:	08003b88 	.word	0x08003b88
 800291c:	080039d4 	.word	0x080039d4

08002920 <backtrace_level_1>:
 8002920:	b580      	push	{r7, lr}
 8002922:	af00      	add	r7, sp, #0
 8002924:	4903      	ldr	r1, [pc, #12]	; (8002934 <backtrace_level_1+0x14>)
 8002926:	4804      	ldr	r0, [pc, #16]	; (8002938 <backtrace_level_1+0x18>)
 8002928:	f7ff fe14 	bl	8002554 <printf_>
 800292c:	f7ff ffea 	bl	8002904 <backtrace_level_2>
 8002930:	bf00      	nop
 8002932:	bd80      	pop	{r7, pc}
 8002934:	08003b9c 	.word	0x08003b9c
 8002938:	080039d4 	.word	0x080039d4

0800293c <backtrace_test>:
 800293c:	b590      	push	{r4, r7, lr}
 800293e:	b089      	sub	sp, #36	; 0x24
 8002940:	af02      	add	r7, sp, #8
 8002942:	23aa      	movs	r3, #170	; 0xaa
 8002944:	613b      	str	r3, [r7, #16]
 8002946:	2355      	movs	r3, #85	; 0x55
 8002948:	60fb      	str	r3, [r7, #12]
 800294a:	2377      	movs	r3, #119	; 0x77
 800294c:	60bb      	str	r3, [r7, #8]
 800294e:	4a47      	ldr	r2, [pc, #284]	; (8002a6c <backtrace_test+0x130>)
 8002950:	4b47      	ldr	r3, [pc, #284]	; (8002a70 <backtrace_test+0x134>)
 8002952:	601a      	str	r2, [r3, #0]
 8002954:	4a47      	ldr	r2, [pc, #284]	; (8002a74 <backtrace_test+0x138>)
 8002956:	4b48      	ldr	r3, [pc, #288]	; (8002a78 <backtrace_test+0x13c>)
 8002958:	601a      	str	r2, [r3, #0]
 800295a:	4b47      	ldr	r3, [pc, #284]	; (8002a78 <backtrace_test+0x13c>)
 800295c:	681a      	ldr	r2, [r3, #0]
 800295e:	4b44      	ldr	r3, [pc, #272]	; (8002a70 <backtrace_test+0x134>)
 8002960:	681b      	ldr	r3, [r3, #0]
 8002962:	1ad3      	subs	r3, r2, r3
 8002964:	4a45      	ldr	r2, [pc, #276]	; (8002a7c <backtrace_test+0x140>)
 8002966:	6013      	str	r3, [r2, #0]
 8002968:	4a45      	ldr	r2, [pc, #276]	; (8002a80 <backtrace_test+0x144>)
 800296a:	4b46      	ldr	r3, [pc, #280]	; (8002a84 <backtrace_test+0x148>)
 800296c:	601a      	str	r2, [r3, #0]
 800296e:	4a46      	ldr	r2, [pc, #280]	; (8002a88 <backtrace_test+0x14c>)
 8002970:	4b46      	ldr	r3, [pc, #280]	; (8002a8c <backtrace_test+0x150>)
 8002972:	601a      	str	r2, [r3, #0]
 8002974:	4b45      	ldr	r3, [pc, #276]	; (8002a8c <backtrace_test+0x150>)
 8002976:	681a      	ldr	r2, [r3, #0]
 8002978:	4b42      	ldr	r3, [pc, #264]	; (8002a84 <backtrace_test+0x148>)
 800297a:	681b      	ldr	r3, [r3, #0]
 800297c:	1ad3      	subs	r3, r2, r3
 800297e:	4a44      	ldr	r2, [pc, #272]	; (8002a90 <backtrace_test+0x154>)
 8002980:	6013      	str	r3, [r2, #0]
 8002982:	4a44      	ldr	r2, [pc, #272]	; (8002a94 <backtrace_test+0x158>)
 8002984:	4b44      	ldr	r3, [pc, #272]	; (8002a98 <backtrace_test+0x15c>)
 8002986:	601a      	str	r2, [r3, #0]
 8002988:	4a44      	ldr	r2, [pc, #272]	; (8002a9c <backtrace_test+0x160>)
 800298a:	4b45      	ldr	r3, [pc, #276]	; (8002aa0 <backtrace_test+0x164>)
 800298c:	601a      	str	r2, [r3, #0]
 800298e:	4b44      	ldr	r3, [pc, #272]	; (8002aa0 <backtrace_test+0x164>)
 8002990:	681a      	ldr	r2, [r3, #0]
 8002992:	4b41      	ldr	r3, [pc, #260]	; (8002a98 <backtrace_test+0x15c>)
 8002994:	681b      	ldr	r3, [r3, #0]
 8002996:	1ad3      	subs	r3, r2, r3
 8002998:	4a42      	ldr	r2, [pc, #264]	; (8002aa4 <backtrace_test+0x168>)
 800299a:	6013      	str	r3, [r2, #0]
 800299c:	4b34      	ldr	r3, [pc, #208]	; (8002a70 <backtrace_test+0x134>)
 800299e:	6819      	ldr	r1, [r3, #0]
 80029a0:	4b35      	ldr	r3, [pc, #212]	; (8002a78 <backtrace_test+0x13c>)
 80029a2:	6818      	ldr	r0, [r3, #0]
 80029a4:	4b35      	ldr	r3, [pc, #212]	; (8002a7c <backtrace_test+0x140>)
 80029a6:	681b      	ldr	r3, [r3, #0]
 80029a8:	4a34      	ldr	r2, [pc, #208]	; (8002a7c <backtrace_test+0x140>)
 80029aa:	6812      	ldr	r2, [r2, #0]
 80029ac:	9201      	str	r2, [sp, #4]
 80029ae:	9300      	str	r3, [sp, #0]
 80029b0:	4603      	mov	r3, r0
 80029b2:	460a      	mov	r2, r1
 80029b4:	493c      	ldr	r1, [pc, #240]	; (8002aa8 <backtrace_test+0x16c>)
 80029b6:	483d      	ldr	r0, [pc, #244]	; (8002aac <backtrace_test+0x170>)
 80029b8:	f7ff fdcc 	bl	8002554 <printf_>
 80029bc:	4b31      	ldr	r3, [pc, #196]	; (8002a84 <backtrace_test+0x148>)
 80029be:	6819      	ldr	r1, [r3, #0]
 80029c0:	4b32      	ldr	r3, [pc, #200]	; (8002a8c <backtrace_test+0x150>)
 80029c2:	6818      	ldr	r0, [r3, #0]
 80029c4:	4b32      	ldr	r3, [pc, #200]	; (8002a90 <backtrace_test+0x154>)
 80029c6:	681b      	ldr	r3, [r3, #0]
 80029c8:	4a31      	ldr	r2, [pc, #196]	; (8002a90 <backtrace_test+0x154>)
 80029ca:	6812      	ldr	r2, [r2, #0]
 80029cc:	9201      	str	r2, [sp, #4]
 80029ce:	9300      	str	r3, [sp, #0]
 80029d0:	4603      	mov	r3, r0
 80029d2:	460a      	mov	r2, r1
 80029d4:	4934      	ldr	r1, [pc, #208]	; (8002aa8 <backtrace_test+0x16c>)
 80029d6:	4836      	ldr	r0, [pc, #216]	; (8002ab0 <backtrace_test+0x174>)
 80029d8:	f7ff fdbc 	bl	8002554 <printf_>
 80029dc:	4b2e      	ldr	r3, [pc, #184]	; (8002a98 <backtrace_test+0x15c>)
 80029de:	6819      	ldr	r1, [r3, #0]
 80029e0:	4b2f      	ldr	r3, [pc, #188]	; (8002aa0 <backtrace_test+0x164>)
 80029e2:	6818      	ldr	r0, [r3, #0]
 80029e4:	4b2f      	ldr	r3, [pc, #188]	; (8002aa4 <backtrace_test+0x168>)
 80029e6:	681b      	ldr	r3, [r3, #0]
 80029e8:	4a2e      	ldr	r2, [pc, #184]	; (8002aa4 <backtrace_test+0x168>)
 80029ea:	6812      	ldr	r2, [r2, #0]
 80029ec:	9201      	str	r2, [sp, #4]
 80029ee:	9300      	str	r3, [sp, #0]
 80029f0:	4603      	mov	r3, r0
 80029f2:	460a      	mov	r2, r1
 80029f4:	492c      	ldr	r1, [pc, #176]	; (8002aa8 <backtrace_test+0x16c>)
 80029f6:	482f      	ldr	r0, [pc, #188]	; (8002ab4 <backtrace_test+0x178>)
 80029f8:	f7ff fdac 	bl	8002554 <printf_>
 80029fc:	b662      	cpsie	i
 80029fe:	466b      	mov	r3, sp
 8002a00:	461c      	mov	r4, r3
 8002a02:	4623      	mov	r3, r4
 8002a04:	617b      	str	r3, [r7, #20]
 8002a06:	6979      	ldr	r1, [r7, #20]
 8002a08:	482b      	ldr	r0, [pc, #172]	; (8002ab8 <backtrace_test+0x17c>)
 8002a0a:	f7ff fda3 	bl	8002554 <printf_>
 8002a0e:	467b      	mov	r3, pc
 8002a10:	461c      	mov	r4, r3
 8002a12:	4623      	mov	r3, r4
 8002a14:	607b      	str	r3, [r7, #4]
 8002a16:	6879      	ldr	r1, [r7, #4]
 8002a18:	4828      	ldr	r0, [pc, #160]	; (8002abc <backtrace_test+0x180>)
 8002a1a:	f7ff fd9b 	bl	8002554 <printf_>
 8002a1e:	e01b      	b.n	8002a58 <backtrace_test+0x11c>
 8002a20:	697b      	ldr	r3, [r7, #20]
 8002a22:	681b      	ldr	r3, [r3, #0]
 8002a24:	603b      	str	r3, [r7, #0]
 8002a26:	6839      	ldr	r1, [r7, #0]
 8002a28:	4825      	ldr	r0, [pc, #148]	; (8002ac0 <backtrace_test+0x184>)
 8002a2a:	f7ff fd93 	bl	8002554 <printf_>
 8002a2e:	4a0f      	ldr	r2, [pc, #60]	; (8002a6c <backtrace_test+0x130>)
 8002a30:	683b      	ldr	r3, [r7, #0]
 8002a32:	4293      	cmp	r3, r2
 8002a34:	d30d      	bcc.n	8002a52 <backtrace_test+0x116>
 8002a36:	4a0f      	ldr	r2, [pc, #60]	; (8002a74 <backtrace_test+0x138>)
 8002a38:	697b      	ldr	r3, [r7, #20]
 8002a3a:	4293      	cmp	r3, r2
 8002a3c:	d809      	bhi.n	8002a52 <backtrace_test+0x116>
 8002a3e:	683b      	ldr	r3, [r7, #0]
 8002a40:	3b01      	subs	r3, #1
 8002a42:	f003 0301 	and.w	r3, r3, #1
 8002a46:	2b00      	cmp	r3, #0
 8002a48:	d103      	bne.n	8002a52 <backtrace_test+0x116>
 8002a4a:	6839      	ldr	r1, [r7, #0]
 8002a4c:	481d      	ldr	r0, [pc, #116]	; (8002ac4 <backtrace_test+0x188>)
 8002a4e:	f7ff fd81 	bl	8002554 <printf_>
 8002a52:	697b      	ldr	r3, [r7, #20]
 8002a54:	3304      	adds	r3, #4
 8002a56:	617b      	str	r3, [r7, #20]
 8002a58:	4a0b      	ldr	r2, [pc, #44]	; (8002a88 <backtrace_test+0x14c>)
 8002a5a:	697b      	ldr	r3, [r7, #20]
 8002a5c:	4293      	cmp	r3, r2
 8002a5e:	d3df      	bcc.n	8002a20 <backtrace_test+0xe4>
 8002a60:	f7ff ff5e 	bl	8002920 <backtrace_level_1>
 8002a64:	f7ff fdae 	bl	80025c4 <fault_test_by_div0>
 8002a68:	e7fe      	b.n	8002a68 <backtrace_test+0x12c>
 8002a6a:	bf00      	nop
 8002a6c:	08000188 	.word	0x08000188
 8002a70:	20000574 	.word	0x20000574
 8002a74:	08003088 	.word	0x08003088
 8002a78:	20000578 	.word	0x20000578
 8002a7c:	2000057c 	.word	0x2000057c
 8002a80:	2001f000 	.word	0x2001f000
 8002a84:	20000580 	.word	0x20000580
 8002a88:	20020000 	.word	0x20020000
 8002a8c:	20000584 	.word	0x20000584
 8002a90:	20000588 	.word	0x20000588
 8002a94:	20000688 	.word	0x20000688
 8002a98:	2000058c 	.word	0x2000058c
 8002a9c:	20000c88 	.word	0x20000c88
 8002aa0:	20000590 	.word	0x20000590
 8002aa4:	20000594 	.word	0x20000594
 8002aa8:	08003bb0 	.word	0x08003bb0
 8002aac:	080039dc 	.word	0x080039dc
 8002ab0:	08003a24 	.word	0x08003a24
 8002ab4:	08003a6c 	.word	0x08003a6c
 8002ab8:	08003ab4 	.word	0x08003ab4
 8002abc:	08003ac0 	.word	0x08003ac0
 8002ac0:	08003acc 	.word	0x08003acc
 8002ac4:	08003ad8 	.word	0x08003ad8

08002ac8 <LoopUntilEntry>:
 8002ac8:	b480      	push	{r7}
 8002aca:	b083      	sub	sp, #12
 8002acc:	af00      	add	r7, sp, #0
 8002ace:	6078      	str	r0, [r7, #4]
 8002ad0:	e00e      	b.n	8002af0 <LoopUntilEntry+0x28>
 8002ad2:	687b      	ldr	r3, [r7, #4]
 8002ad4:	881b      	ldrh	r3, [r3, #0]
 8002ad6:	0a1b      	lsrs	r3, r3, #8
 8002ad8:	b29b      	uxth	r3, r3
 8002ada:	2bb5      	cmp	r3, #181	; 0xb5
 8002adc:	d00d      	beq.n	8002afa <LoopUntilEntry+0x32>
 8002ade:	687b      	ldr	r3, [r7, #4]
 8002ae0:	881b      	ldrh	r3, [r3, #0]
 8002ae2:	0a1b      	lsrs	r3, r3, #8
 8002ae4:	b29b      	uxth	r3, r3
 8002ae6:	2bb4      	cmp	r3, #180	; 0xb4
 8002ae8:	d007      	beq.n	8002afa <LoopUntilEntry+0x32>
 8002aea:	687b      	ldr	r3, [r7, #4]
 8002aec:	3b02      	subs	r3, #2
 8002aee:	607b      	str	r3, [r7, #4]
 8002af0:	4b05      	ldr	r3, [pc, #20]	; (8002b08 <LoopUntilEntry+0x40>)
 8002af2:	681b      	ldr	r3, [r3, #0]
 8002af4:	687a      	ldr	r2, [r7, #4]
 8002af6:	429a      	cmp	r2, r3
 8002af8:	d8eb      	bhi.n	8002ad2 <LoopUntilEntry+0xa>
 8002afa:	687b      	ldr	r3, [r7, #4]
 8002afc:	4618      	mov	r0, r3
 8002afe:	370c      	adds	r7, #12
 8002b00:	46bd      	mov	sp, r7
 8002b02:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b06:	4770      	bx	lr
 8002b08:	20000574 	.word	0x20000574

08002b0c <CalculateBLTargetAddress>:
 8002b0c:	b480      	push	{r7}
 8002b0e:	b087      	sub	sp, #28
 8002b10:	af00      	add	r7, sp, #0
 8002b12:	6078      	str	r0, [r7, #4]
 8002b14:	2300      	movs	r3, #0
 8002b16:	617b      	str	r3, [r7, #20]
 8002b18:	687b      	ldr	r3, [r7, #4]
 8002b1a:	881b      	ldrh	r3, [r3, #0]
 8002b1c:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8002b20:	2b00      	cmp	r3, #0
 8002b22:	d00b      	beq.n	8002b3c <CalculateBLTargetAddress+0x30>
 8002b24:	687b      	ldr	r3, [r7, #4]
 8002b26:	881b      	ldrh	r3, [r3, #0]
 8002b28:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002b2c:	60fb      	str	r3, [r7, #12]
 8002b2e:	687b      	ldr	r3, [r7, #4]
 8002b30:	3302      	adds	r3, #2
 8002b32:	881b      	ldrh	r3, [r3, #0]
 8002b34:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002b38:	613b      	str	r3, [r7, #16]
 8002b3a:	e00a      	b.n	8002b52 <CalculateBLTargetAddress+0x46>
 8002b3c:	687b      	ldr	r3, [r7, #4]
 8002b3e:	881b      	ldrh	r3, [r3, #0]
 8002b40:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002b44:	613b      	str	r3, [r7, #16]
 8002b46:	687b      	ldr	r3, [r7, #4]
 8002b48:	3302      	adds	r3, #2
 8002b4a:	881b      	ldrh	r3, [r3, #0]
 8002b4c:	f3c3 030a 	ubfx	r3, r3, #0, #11
 8002b50:	60fb      	str	r3, [r7, #12]
 8002b52:	693b      	ldr	r3, [r7, #16]
 8002b54:	031a      	lsls	r2, r3, #12
 8002b56:	68fb      	ldr	r3, [r7, #12]
 8002b58:	005b      	lsls	r3, r3, #1
 8002b5a:	4413      	add	r3, r2
 8002b5c:	60bb      	str	r3, [r7, #8]
 8002b5e:	68bb      	ldr	r3, [r7, #8]
 8002b60:	f403 0380 	and.w	r3, r3, #4194304	; 0x400000
 8002b64:	2b00      	cmp	r3, #0
 8002b66:	d008      	beq.n	8002b7a <CalculateBLTargetAddress+0x6e>
 8002b68:	68bb      	ldr	r3, [r7, #8]
 8002b6a:	425b      	negs	r3, r3
 8002b6c:	f3c3 0316 	ubfx	r3, r3, #0, #23
 8002b70:	687a      	ldr	r2, [r7, #4]
 8002b72:	1ad3      	subs	r3, r2, r3
 8002b74:	3304      	adds	r3, #4
 8002b76:	617b      	str	r3, [r7, #20]
 8002b78:	e004      	b.n	8002b84 <CalculateBLTargetAddress+0x78>
 8002b7a:	687a      	ldr	r2, [r7, #4]
 8002b7c:	68bb      	ldr	r3, [r7, #8]
 8002b7e:	4413      	add	r3, r2
 8002b80:	3304      	adds	r3, #4
 8002b82:	617b      	str	r3, [r7, #20]
 8002b84:	697b      	ldr	r3, [r7, #20]
 8002b86:	4618      	mov	r0, r3
 8002b88:	371c      	adds	r7, #28
 8002b8a:	46bd      	mov	sp, r7
 8002b8c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002b90:	4770      	bx	lr
	...

08002b94 <CalculateTargetAddress>:
 8002b94:	b580      	push	{r7, lr}
 8002b96:	b084      	sub	sp, #16
 8002b98:	af00      	add	r7, sp, #0
 8002b9a:	6078      	str	r0, [r7, #4]
 8002b9c:	2300      	movs	r3, #0
 8002b9e:	60fb      	str	r3, [r7, #12]
 8002ba0:	687b      	ldr	r3, [r7, #4]
 8002ba2:	3b02      	subs	r3, #2
 8002ba4:	881b      	ldrh	r3, [r3, #0]
 8002ba6:	f403 437f 	and.w	r3, r3, #65280	; 0xff00
 8002baa:	f5b3 4f8e 	cmp.w	r3, #18176	; 0x4700
 8002bae:	d11a      	bne.n	8002be6 <CalculateTargetAddress+0x52>
 8002bb0:	4b1b      	ldr	r3, [pc, #108]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002bb2:	681b      	ldr	r3, [r3, #0]
 8002bb4:	2b00      	cmp	r3, #0
 8002bb6:	d00b      	beq.n	8002bd0 <CalculateTargetAddress+0x3c>
 8002bb8:	4b19      	ldr	r3, [pc, #100]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002bba:	681b      	ldr	r3, [r3, #0]
 8002bbc:	4618      	mov	r0, r3
 8002bbe:	f7ff ff83 	bl	8002ac8 <LoopUntilEntry>
 8002bc2:	60f8      	str	r0, [r7, #12]
 8002bc4:	687b      	ldr	r3, [r7, #4]
 8002bc6:	3b02      	subs	r3, #2
 8002bc8:	4a15      	ldr	r2, [pc, #84]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002bca:	6013      	str	r3, [r2, #0]
 8002bcc:	68fb      	ldr	r3, [r7, #12]
 8002bce:	e023      	b.n	8002c18 <CalculateTargetAddress+0x84>
 8002bd0:	687b      	ldr	r3, [r7, #4]
 8002bd2:	3b02      	subs	r3, #2
 8002bd4:	4a12      	ldr	r2, [pc, #72]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002bd6:	6013      	str	r3, [r2, #0]
 8002bd8:	4b11      	ldr	r3, [pc, #68]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002bda:	681b      	ldr	r3, [r3, #0]
 8002bdc:	4618      	mov	r0, r3
 8002bde:	f7ff ff73 	bl	8002ac8 <LoopUntilEntry>
 8002be2:	4603      	mov	r3, r0
 8002be4:	e018      	b.n	8002c18 <CalculateTargetAddress+0x84>
 8002be6:	687b      	ldr	r3, [r7, #4]
 8002be8:	3b04      	subs	r3, #4
 8002bea:	681b      	ldr	r3, [r3, #0]
 8002bec:	f003 23f0 	and.w	r3, r3, #4026593280	; 0xf000f000
 8002bf0:	f1b3 2ff0 	cmp.w	r3, #4026593280	; 0xf000f000
 8002bf4:	d10f      	bne.n	8002c16 <CalculateTargetAddress+0x82>
 8002bf6:	687b      	ldr	r3, [r7, #4]
 8002bf8:	3b04      	subs	r3, #4
 8002bfa:	4a09      	ldr	r2, [pc, #36]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002bfc:	6013      	str	r3, [r2, #0]
 8002bfe:	4b08      	ldr	r3, [pc, #32]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002c00:	681b      	ldr	r3, [r3, #0]
 8002c02:	4618      	mov	r0, r3
 8002c04:	f7ff ff82 	bl	8002b0c <CalculateBLTargetAddress>
 8002c08:	4b05      	ldr	r3, [pc, #20]	; (8002c20 <CalculateTargetAddress+0x8c>)
 8002c0a:	681b      	ldr	r3, [r3, #0]
 8002c0c:	4618      	mov	r0, r3
 8002c0e:	f7ff ff7d 	bl	8002b0c <CalculateBLTargetAddress>
 8002c12:	4603      	mov	r3, r0
 8002c14:	e000      	b.n	8002c18 <CalculateTargetAddress+0x84>
 8002c16:	2300      	movs	r3, #0
 8002c18:	4618      	mov	r0, r3
 8002c1a:	3710      	adds	r7, #16
 8002c1c:	46bd      	mov	sp, r7
 8002c1e:	bd80      	pop	{r7, pc}
 8002c20:	20000628 	.word	0x20000628

08002c24 <BackTraceSub>:
 8002c24:	b580      	push	{r7, lr}
 8002c26:	b086      	sub	sp, #24
 8002c28:	af00      	add	r7, sp, #0
 8002c2a:	6078      	str	r0, [r7, #4]
 8002c2c:	687b      	ldr	r3, [r7, #4]
 8002c2e:	617b      	str	r3, [r7, #20]
 8002c30:	2300      	movs	r3, #0
 8002c32:	613b      	str	r3, [r7, #16]
 8002c34:	e03b      	b.n	8002cae <BackTraceSub+0x8a>
 8002c36:	697b      	ldr	r3, [r7, #20]
 8002c38:	681a      	ldr	r2, [r3, #0]
 8002c3a:	4b23      	ldr	r3, [pc, #140]	; (8002cc8 <BackTraceSub+0xa4>)
 8002c3c:	681b      	ldr	r3, [r3, #0]
 8002c3e:	429a      	cmp	r2, r3
 8002c40:	d32e      	bcc.n	8002ca0 <BackTraceSub+0x7c>
 8002c42:	697b      	ldr	r3, [r7, #20]
 8002c44:	681a      	ldr	r2, [r3, #0]
 8002c46:	4b21      	ldr	r3, [pc, #132]	; (8002ccc <BackTraceSub+0xa8>)
 8002c48:	681b      	ldr	r3, [r3, #0]
 8002c4a:	429a      	cmp	r2, r3
 8002c4c:	d828      	bhi.n	8002ca0 <BackTraceSub+0x7c>
 8002c4e:	697b      	ldr	r3, [r7, #20]
 8002c50:	681b      	ldr	r3, [r3, #0]
 8002c52:	3b01      	subs	r3, #1
 8002c54:	f003 0301 	and.w	r3, r3, #1
 8002c58:	2b00      	cmp	r3, #0
 8002c5a:	d121      	bne.n	8002ca0 <BackTraceSub+0x7c>
 8002c5c:	697b      	ldr	r3, [r7, #20]
 8002c5e:	681b      	ldr	r3, [r3, #0]
 8002c60:	3b01      	subs	r3, #1
 8002c62:	4618      	mov	r0, r3
 8002c64:	f7ff ff96 	bl	8002b94 <CalculateTargetAddress>
 8002c68:	60f8      	str	r0, [r7, #12]
 8002c6a:	68fb      	ldr	r3, [r7, #12]
 8002c6c:	2b00      	cmp	r3, #0
 8002c6e:	d004      	beq.n	8002c7a <BackTraceSub+0x56>
 8002c70:	4b17      	ldr	r3, [pc, #92]	; (8002cd0 <BackTraceSub+0xac>)
 8002c72:	681b      	ldr	r3, [r3, #0]
 8002c74:	68fa      	ldr	r2, [r7, #12]
 8002c76:	429a      	cmp	r2, r3
 8002c78:	d103      	bne.n	8002c82 <BackTraceSub+0x5e>
 8002c7a:	697b      	ldr	r3, [r7, #20]
 8002c7c:	3304      	adds	r3, #4
 8002c7e:	617b      	str	r3, [r7, #20]
 8002c80:	e015      	b.n	8002cae <BackTraceSub+0x8a>
 8002c82:	4a13      	ldr	r2, [pc, #76]	; (8002cd0 <BackTraceSub+0xac>)
 8002c84:	68fb      	ldr	r3, [r7, #12]
 8002c86:	6013      	str	r3, [r2, #0]
 8002c88:	693b      	ldr	r3, [r7, #16]
 8002c8a:	3301      	adds	r3, #1
 8002c8c:	613b      	str	r3, [r7, #16]
 8002c8e:	697b      	ldr	r3, [r7, #20]
 8002c90:	681b      	ldr	r3, [r3, #0]
 8002c92:	1e5a      	subs	r2, r3, #1
 8002c94:	4b0e      	ldr	r3, [pc, #56]	; (8002cd0 <BackTraceSub+0xac>)
 8002c96:	681b      	ldr	r3, [r3, #0]
 8002c98:	6939      	ldr	r1, [r7, #16]
 8002c9a:	480e      	ldr	r0, [pc, #56]	; (8002cd4 <BackTraceSub+0xb0>)
 8002c9c:	f7ff fc5a 	bl	8002554 <printf_>
 8002ca0:	697b      	ldr	r3, [r7, #20]
 8002ca2:	3304      	adds	r3, #4
 8002ca4:	617b      	str	r3, [r7, #20]
 8002ca6:	6979      	ldr	r1, [r7, #20]
 8002ca8:	480b      	ldr	r0, [pc, #44]	; (8002cd8 <BackTraceSub+0xb4>)
 8002caa:	f7ff fc53 	bl	8002554 <printf_>
 8002cae:	4b0b      	ldr	r3, [pc, #44]	; (8002cdc <BackTraceSub+0xb8>)
 8002cb0:	681b      	ldr	r3, [r3, #0]
 8002cb2:	697a      	ldr	r2, [r7, #20]
 8002cb4:	429a      	cmp	r2, r3
 8002cb6:	d202      	bcs.n	8002cbe <BackTraceSub+0x9a>
 8002cb8:	693b      	ldr	r3, [r7, #16]
 8002cba:	2b0e      	cmp	r3, #14
 8002cbc:	d9bb      	bls.n	8002c36 <BackTraceSub+0x12>
 8002cbe:	bf00      	nop
 8002cc0:	3718      	adds	r7, #24
 8002cc2:	46bd      	mov	sp, r7
 8002cc4:	bd80      	pop	{r7, pc}
 8002cc6:	bf00      	nop
 8002cc8:	20000574 	.word	0x20000574
 8002ccc:	20000578 	.word	0x20000578
 8002cd0:	2000062c 	.word	0x2000062c
 8002cd4:	08003ae8 	.word	0x08003ae8
 8002cd8:	08003b14 	.word	0x08003b14
 8002cdc:	20000584 	.word	0x20000584

08002ce0 <HardFault_Handler_C>:
//set *((uint32_t*)0xE000EDFC) |= 0x0000400;

// Disable optimizations for this function so "frame" argument
// does not get optimized away
__attribute__((optimize("O0")))
void HardFault_Handler_C(sCrashInfo *sCrashInfo) {
 8002ce0:	b480      	push	{r7}
 8002ce2:	b087      	sub	sp, #28
 8002ce4:	af00      	add	r7, sp, #0
 8002ce6:	6078      	str	r0, [r7, #4]
    sContextStateFrame *frame = &sCrashInfo->frame;
 8002ce8:	687b      	ldr	r3, [r7, #4]
 8002cea:	3304      	adds	r3, #4
 8002cec:	617b      	str	r3, [r7, #20]

  // If and only if a debugger is attached, execute a breakpoint
  // instruction so we can take a look at what triggered the fault
  HALT_IF_DEBUGGING();
 8002cee:	4b28      	ldr	r3, [pc, #160]	; (8002d90 <HardFault_Handler_C+0xb0>)
 8002cf0:	681b      	ldr	r3, [r3, #0]
 8002cf2:	f003 0301 	and.w	r3, r3, #1
 8002cf6:	2b00      	cmp	r3, #0
 8002cf8:	d000      	beq.n	8002cfc <HardFault_Handler_C+0x1c>
 8002cfa:	be01      	bkpt	0x0001

  //
  // Example "recovery" mechanism for UsageFaults while not running
  // in an ISR
  // 
  const uint32_t usage_fault_mask = 0xffff0000;
 8002cfc:	4b25      	ldr	r3, [pc, #148]	; (8002d94 <HardFault_Handler_C+0xb4>)
 8002cfe:	613b      	str	r3, [r7, #16]
  const bool non_usage_fault_occurred = (SCB->CFSR & ~usage_fault_mask) != 0;
 8002d00:	4b25      	ldr	r3, [pc, #148]	; (8002d98 <HardFault_Handler_C+0xb8>)
 8002d02:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 8002d04:	693b      	ldr	r3, [r7, #16]
 8002d06:	43db      	mvns	r3, r3
 8002d08:	4013      	ands	r3, r2
 8002d0a:	2b00      	cmp	r3, #0
 8002d0c:	bf14      	ite	ne
 8002d0e:	2301      	movne	r3, #1
 8002d10:	2300      	moveq	r3, #0
 8002d12:	73fb      	strb	r3, [r7, #15]
  // the bottom 8 bits of the xpsr hold the exception number of the
  // executing exception or 0 if the processor is in Thread mode
  const bool faulted_from_exception = ((frame->xpsr & 0xFF) != 0);
 8002d14:	697b      	ldr	r3, [r7, #20]
 8002d16:	69db      	ldr	r3, [r3, #28]
 8002d18:	b2db      	uxtb	r3, r3
 8002d1a:	2b00      	cmp	r3, #0
 8002d1c:	bf14      	ite	ne
 8002d1e:	2301      	movne	r3, #1
 8002d20:	2300      	moveq	r3, #0
 8002d22:	73bb      	strb	r3, [r7, #14]

  if (faulted_from_exception || non_usage_fault_occurred) {
 8002d24:	7bbb      	ldrb	r3, [r7, #14]
 8002d26:	2b00      	cmp	r3, #0
 8002d28:	d102      	bne.n	8002d30 <HardFault_Handler_C+0x50>
 8002d2a:	7bfb      	ldrb	r3, [r7, #15]
 8002d2c:	2b00      	cmp	r3, #0
 8002d2e:	d003      	beq.n	8002d38 <HardFault_Handler_C+0x58>
    // For any fault within an ISR or non-usage faults
    // let's reboot the system
    SCB->AIRCR = (0x05FA << 16) | SCB_AIRCR_SYSRESETREQ_Msk;
 8002d30:	4b19      	ldr	r3, [pc, #100]	; (8002d98 <HardFault_Handler_C+0xb8>)
 8002d32:	4a1a      	ldr	r2, [pc, #104]	; (8002d9c <HardFault_Handler_C+0xbc>)
 8002d34:	60da      	str	r2, [r3, #12]
    while (1) { } // should be unreachable
 8002d36:	e7fe      	b.n	8002d36 <HardFault_Handler_C+0x56>
  }
  extern void recover_from_task_fault(void);
  // If it's just a usage fault, let's "recover"
  // Clear any logged faults from the CFSR
  SCB->CFSR |= SCB->CFSR;
 8002d38:	4b17      	ldr	r3, [pc, #92]	; (8002d98 <HardFault_Handler_C+0xb8>)
 8002d3a:	6a9a      	ldr	r2, [r3, #40]	; 0x28
 8002d3c:	4b16      	ldr	r3, [pc, #88]	; (8002d98 <HardFault_Handler_C+0xb8>)
 8002d3e:	6a9b      	ldr	r3, [r3, #40]	; 0x28
 8002d40:	4915      	ldr	r1, [pc, #84]	; (8002d98 <HardFault_Handler_C+0xb8>)
 8002d42:	4313      	orrs	r3, r2
 8002d44:	628b      	str	r3, [r1, #40]	; 0x28
  // the instruction we will return to when we exit from the exception
  frame->return_address = (uint32_t)recover_from_task_fault;
 8002d46:	4a16      	ldr	r2, [pc, #88]	; (8002da0 <HardFault_Handler_C+0xc0>)
 8002d48:	697b      	ldr	r3, [r7, #20]
 8002d4a:	619a      	str	r2, [r3, #24]
  // the function we are returning to should never branch
  // so set lr to a pattern that would fault if it did
  frame->lr = 0xdeadbeef;
 8002d4c:	697b      	ldr	r3, [r7, #20]
 8002d4e:	2200      	movs	r2, #0
 8002d50:	f062 0210 	orn	r2, r2, #16
 8002d54:	751a      	strb	r2, [r3, #20]
 8002d56:	2200      	movs	r2, #0
 8002d58:	f062 0241 	orn	r2, r2, #65	; 0x41
 8002d5c:	755a      	strb	r2, [r3, #21]
 8002d5e:	2200      	movs	r2, #0
 8002d60:	f062 0252 	orn	r2, r2, #82	; 0x52
 8002d64:	759a      	strb	r2, [r3, #22]
 8002d66:	2200      	movs	r2, #0
 8002d68:	f062 0221 	orn	r2, r2, #33	; 0x21
 8002d6c:	75da      	strb	r2, [r3, #23]
  // reset the psr state and only leave the
  // "thumb instruction interworking" bit set
  frame->xpsr = (1 << 24);
 8002d6e:	697b      	ldr	r3, [r7, #20]
 8002d70:	2200      	movs	r2, #0
 8002d72:	771a      	strb	r2, [r3, #28]
 8002d74:	2200      	movs	r2, #0
 8002d76:	775a      	strb	r2, [r3, #29]
 8002d78:	2200      	movs	r2, #0
 8002d7a:	779a      	strb	r2, [r3, #30]
 8002d7c:	2200      	movs	r2, #0
 8002d7e:	f042 0201 	orr.w	r2, r2, #1
 8002d82:	77da      	strb	r2, [r3, #31]
}
 8002d84:	bf00      	nop
 8002d86:	371c      	adds	r7, #28
 8002d88:	46bd      	mov	sp, r7
 8002d8a:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002d8e:	4770      	bx	lr
 8002d90:	e000edf0 	.word	0xe000edf0
 8002d94:	ffff0000 	.word	0xffff0000
 8002d98:	e000ed00 	.word	0xe000ed00
 8002d9c:	05fa0004 	.word	0x05fa0004
 8002da0:	08003039 	.word	0x08003039

08002da4 <HardFault_Handler>:
/* The prototype shows it is a naked function - in effect this is just an
assembly function. */
__attribute__((naked))
void HardFault_Handler(void)
{
  HARDFAULT_HANDLING_ASM();
 8002da4:	491a      	ldr	r1, [pc, #104]	; (8002e10 <HardFault_Handler+0x6c>)
 8002da6:	4a1b      	ldr	r2, [pc, #108]	; (8002e14 <HardFault_Handler+0x70>)
 8002da8:	600a      	str	r2, [r1, #0]
 8002daa:	f101 0104 	add.w	r1, r1, #4
 8002dae:	f01e 0f04 	tst.w	lr, #4
 8002db2:	bf0c      	ite	eq
 8002db4:	f3ef 8008 	mrseq	r0, MSP
 8002db8:	f3ef 8009 	mrsne	r0, PSP
 8002dbc:	6802      	ldr	r2, [r0, #0]
 8002dbe:	600a      	str	r2, [r1, #0]
 8002dc0:	6842      	ldr	r2, [r0, #4]
 8002dc2:	604a      	str	r2, [r1, #4]
 8002dc4:	6882      	ldr	r2, [r0, #8]
 8002dc6:	608a      	str	r2, [r1, #8]
 8002dc8:	68c2      	ldr	r2, [r0, #12]
 8002dca:	60ca      	str	r2, [r1, #12]
 8002dcc:	6902      	ldr	r2, [r0, #16]
 8002dce:	610a      	str	r2, [r1, #16]
 8002dd0:	6942      	ldr	r2, [r0, #20]
 8002dd2:	614a      	str	r2, [r1, #20]
 8002dd4:	6982      	ldr	r2, [r0, #24]
 8002dd6:	618a      	str	r2, [r1, #24]
 8002dd8:	69c2      	ldr	r2, [r0, #28]
 8002dda:	61ca      	str	r2, [r1, #28]
 8002ddc:	f101 011c 	add.w	r1, r1, #28
 8002de0:	e8a1 0ff0 	stmia.w	r1!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002de4:	f3ef 8209 	mrs	r2, PSP
 8002de8:	600a      	str	r2, [r1, #0]
 8002dea:	f3ef 8208 	mrs	r2, MSP
 8002dee:	604a      	str	r2, [r1, #4]
 8002df0:	f3ef 8214 	mrs	r2, CONTROL
 8002df4:	608a      	str	r2, [r1, #8]
 8002df6:	f3ef 8211 	mrs	r2, BASEPRI
 8002dfa:	60ca      	str	r2, [r1, #12]
 8002dfc:	f3ef 8210 	mrs	r2, PRIMASK
 8002e00:	610a      	str	r2, [r1, #16]
 8002e02:	f3ef 8213 	mrs	r2, FAULTMASK
 8002e06:	614a      	str	r2, [r1, #20]
 8002e08:	4801      	ldr	r0, [pc, #4]	; (8002e10 <HardFault_Handler+0x6c>)
 8002e0a:	f7ff bf69 	b.w	8002ce0 <HardFault_Handler_C>
}
 8002e0e:	bf00      	nop
 8002e10:	2000043c 	.word	0x2000043c
 8002e14:	dead55aa 	.word	0xdead55aa

08002e18 <exception_init>:
    Irq0_Handler,
    Irq1_Handler
};

void exception_init(void)
{
 8002e18:	b480      	push	{r7}
 8002e1a:	af00      	add	r7, sp, #0
  g_unaligned_buffer = &s_buffer[1];
 8002e1c:	4b03      	ldr	r3, [pc, #12]	; (8002e2c <exception_init+0x14>)
 8002e1e:	4a04      	ldr	r2, [pc, #16]	; (8002e30 <exception_init+0x18>)
 8002e20:	601a      	str	r2, [r3, #0]
  // SCB->SHCSR |= SCB_SHCSR_USGFAULTENA_Msk | SCB_SHCSR_BUSFAULTENA_Msk |SCB_SHCSR_MEMFAULTENA_Msk;
  // SCB->VTOR = (uint32_t)&pfnVectors & SCB_VTOR_TBLOFF_Msk;
  // SCB->VTOR |= 1<<29;

}
 8002e22:	bf00      	nop
 8002e24:	46bd      	mov	sp, r7
 8002e26:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e2a:	4770      	bx	lr
 8002e2c:	20000684 	.word	0x20000684
 8002e30:	20000631 	.word	0x20000631

08002e34 <exception_test>:

void exception_test(void)
{
 8002e34:	b580      	push	{r7, lr}
 8002e36:	af00      	add	r7, sp, #0
  exception_init();
 8002e38:	f7ff ffee 	bl	8002e18 <exception_init>
  trigger_crash(0);
 8002e3c:	2000      	movs	r0, #0
 8002e3e:	f000 f8c3 	bl	8002fc8 <trigger_crash>
}
 8002e42:	bf00      	nop
 8002e44:	bd80      	pop	{r7, pc}
	...

08002e48 <trigger_irq>:
 8002e48:	b480      	push	{r7}
 8002e4a:	af00      	add	r7, sp, #0
 8002e4c:	4b0a      	ldr	r3, [pc, #40]	; (8002e78 <trigger_irq+0x30>)
 8002e4e:	681b      	ldr	r3, [r3, #0]
 8002e50:	4a09      	ldr	r2, [pc, #36]	; (8002e78 <trigger_irq+0x30>)
 8002e52:	f043 0302 	orr.w	r3, r3, #2
 8002e56:	6013      	str	r3, [r2, #0]
 8002e58:	4b07      	ldr	r3, [pc, #28]	; (8002e78 <trigger_irq+0x30>)
 8002e5a:	f8d3 3100 	ldr.w	r3, [r3, #256]	; 0x100
 8002e5e:	4a06      	ldr	r2, [pc, #24]	; (8002e78 <trigger_irq+0x30>)
 8002e60:	f043 0302 	orr.w	r3, r3, #2
 8002e64:	f8c2 3100 	str.w	r3, [r2, #256]	; 0x100
 8002e68:	f3bf 8f6f 	isb	sy
 8002e6c:	bf00      	nop
 8002e6e:	46bd      	mov	sp, r7
 8002e70:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002e74:	4770      	bx	lr
 8002e76:	bf00      	nop
 8002e78:	e000e100 	.word	0xe000e100

08002e7c <stkerr_from_psp>:
 8002e7c:	b5b0      	push	{r4, r5, r7, lr}
 8002e7e:	b086      	sub	sp, #24
 8002e80:	af00      	add	r7, sp, #0
 8002e82:	466b      	mov	r3, sp
 8002e84:	461d      	mov	r5, r3
 8002e86:	1dfb      	adds	r3, r7, #7
 8002e88:	4a21      	ldr	r2, [pc, #132]	; (8002f10 <stkerr_from_psp+0x94>)
 8002e8a:	1a9b      	subs	r3, r3, r2
 8002e8c:	613b      	str	r3, [r7, #16]
 8002e8e:	693b      	ldr	r3, [r7, #16]
 8002e90:	3b09      	subs	r3, #9
 8002e92:	60fb      	str	r3, [r7, #12]
 8002e94:	693b      	ldr	r3, [r7, #16]
 8002e96:	3b08      	subs	r3, #8
 8002e98:	4619      	mov	r1, r3
 8002e9a:	f04f 0200 	mov.w	r2, #0
 8002e9e:	f04f 0300 	mov.w	r3, #0
 8002ea2:	f04f 0400 	mov.w	r4, #0
 8002ea6:	00d4      	lsls	r4, r2, #3
 8002ea8:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
 8002eac:	00cb      	lsls	r3, r1, #3
 8002eae:	693b      	ldr	r3, [r7, #16]
 8002eb0:	3b08      	subs	r3, #8
 8002eb2:	4619      	mov	r1, r3
 8002eb4:	f04f 0200 	mov.w	r2, #0
 8002eb8:	f04f 0300 	mov.w	r3, #0
 8002ebc:	f04f 0400 	mov.w	r4, #0
 8002ec0:	00d4      	lsls	r4, r2, #3
 8002ec2:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
 8002ec6:	00cb      	lsls	r3, r1, #3
 8002ec8:	693b      	ldr	r3, [r7, #16]
 8002eca:	3b08      	subs	r3, #8
 8002ecc:	3307      	adds	r3, #7
 8002ece:	08db      	lsrs	r3, r3, #3
 8002ed0:	00db      	lsls	r3, r3, #3
 8002ed2:	ebad 0d03 	sub.w	sp, sp, r3
 8002ed6:	466b      	mov	r3, sp
 8002ed8:	3300      	adds	r3, #0
 8002eda:	60bb      	str	r3, [r7, #8]
 8002edc:	2300      	movs	r3, #0
 8002ede:	617b      	str	r3, [r7, #20]
 8002ee0:	e009      	b.n	8002ef6 <stkerr_from_psp+0x7a>
 8002ee2:	697b      	ldr	r3, [r7, #20]
 8002ee4:	b2d9      	uxtb	r1, r3
 8002ee6:	68ba      	ldr	r2, [r7, #8]
 8002ee8:	697b      	ldr	r3, [r7, #20]
 8002eea:	4413      	add	r3, r2
 8002eec:	460a      	mov	r2, r1
 8002eee:	701a      	strb	r2, [r3, #0]
 8002ef0:	697b      	ldr	r3, [r7, #20]
 8002ef2:	3301      	adds	r3, #1
 8002ef4:	617b      	str	r3, [r7, #20]
 8002ef6:	693b      	ldr	r3, [r7, #16]
 8002ef8:	3b08      	subs	r3, #8
 8002efa:	697a      	ldr	r2, [r7, #20]
 8002efc:	429a      	cmp	r2, r3
 8002efe:	d3f0      	bcc.n	8002ee2 <stkerr_from_psp+0x66>
 8002f00:	f7ff ffa2 	bl	8002e48 <trigger_irq>
 8002f04:	46ad      	mov	sp, r5
 8002f06:	bf00      	nop
 8002f08:	3718      	adds	r7, #24
 8002f0a:	46bd      	mov	sp, r7
 8002f0c:	bdb0      	pop	{r4, r5, r7, pc}
 8002f0e:	bf00      	nop
 8002f10:	20000000 	.word	0x20000000

08002f14 <bad_memory_access_crash>:
 8002f14:	b480      	push	{r7}
 8002f16:	b083      	sub	sp, #12
 8002f18:	af00      	add	r7, sp, #0
 8002f1a:	4b05      	ldr	r3, [pc, #20]	; (8002f30 <bad_memory_access_crash+0x1c>)
 8002f1c:	607b      	str	r3, [r7, #4]
 8002f1e:	687b      	ldr	r3, [r7, #4]
 8002f20:	681b      	ldr	r3, [r3, #0]
 8002f22:	4618      	mov	r0, r3
 8002f24:	370c      	adds	r7, #12
 8002f26:	46bd      	mov	sp, r7
 8002f28:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f2c:	4770      	bx	lr
 8002f2e:	bf00      	nop
 8002f30:	deadbeef 	.word	0xdeadbeef

08002f34 <read_from_bad_address>:
 8002f34:	b480      	push	{r7}
 8002f36:	af00      	add	r7, sp, #0
 8002f38:	4b03      	ldr	r3, [pc, #12]	; (8002f48 <read_from_bad_address+0x14>)
 8002f3a:	681b      	ldr	r3, [r3, #0]
 8002f3c:	4618      	mov	r0, r3
 8002f3e:	46bd      	mov	sp, r7
 8002f40:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f44:	4770      	bx	lr
 8002f46:	bf00      	nop
 8002f48:	0badcafe 	.word	0x0badcafe

08002f4c <illegal_instruction_execution>:
 8002f4c:	b580      	push	{r7, lr}
 8002f4e:	b082      	sub	sp, #8
 8002f50:	af00      	add	r7, sp, #0
 8002f52:	f04f 4360 	mov.w	r3, #3758096384	; 0xe0000000
 8002f56:	607b      	str	r3, [r7, #4]
 8002f58:	687b      	ldr	r3, [r7, #4]
 8002f5a:	4798      	blx	r3
 8002f5c:	4603      	mov	r3, r0
 8002f5e:	4618      	mov	r0, r3
 8002f60:	3708      	adds	r7, #8
 8002f62:	46bd      	mov	sp, r7
 8002f64:	bd80      	pop	{r7, pc}

08002f66 <unaligned_double_word_read>:
 8002f66:	b480      	push	{r7}
 8002f68:	af00      	add	r7, sp, #0
 8002f6a:	bf00      	nop
 8002f6c:	46bd      	mov	sp, r7
 8002f6e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002f72:	4770      	bx	lr
 8002f74:	0000      	movs	r0, r0
	...

08002f78 <bad_addr_double_word_write>:
 8002f78:	b490      	push	{r4, r7}
 8002f7a:	b082      	sub	sp, #8
 8002f7c:	af00      	add	r7, sp, #0
 8002f7e:	f04f 5340 	mov.w	r3, #805306368	; 0x30000000
 8002f82:	607b      	str	r3, [r7, #4]
 8002f84:	687a      	ldr	r2, [r7, #4]
 8002f86:	a406      	add	r4, pc, #24	; (adr r4, 8002fa0 <bad_addr_double_word_write+0x28>)
 8002f88:	e9d4 3400 	ldrd	r3, r4, [r4]
 8002f8c:	e9c2 3400 	strd	r3, r4, [r2]
 8002f90:	bf00      	nop
 8002f92:	3708      	adds	r7, #8
 8002f94:	46bd      	mov	sp, r7
 8002f96:	bc90      	pop	{r4, r7}
 8002f98:	4770      	bx	lr
 8002f9a:	bf00      	nop
 8002f9c:	f3af 8000 	nop.w
 8002fa0:	55667788 	.word	0x55667788
 8002fa4:	11223344 	.word	0x11223344

08002fa8 <access_disabled_coprocessor>:
 8002fa8:	b480      	push	{r7}
 8002faa:	af00      	add	r7, sp, #0
 8002fac:	4805      	ldr	r0, [pc, #20]	; (8002fc4 <access_disabled_coprocessor+0x1c>)
 8002fae:	f04f 0100 	mov.w	r1, #0
 8002fb2:	6001      	str	r1, [r0, #0]
 8002fb4:	f3bf 8f4f 	dsb	sy
 8002fb8:	bf00      	nop
 8002fba:	46bd      	mov	sp, r7
 8002fbc:	f85d 7b04 	ldr.w	r7, [sp], #4
 8002fc0:	4770      	bx	lr
 8002fc2:	0000      	.short	0x0000
 8002fc4:	e000ed88 	.word	0xe000ed88

08002fc8 <trigger_crash>:
 8002fc8:	b580      	push	{r7, lr}
 8002fca:	b082      	sub	sp, #8
 8002fcc:	af00      	add	r7, sp, #0
 8002fce:	6078      	str	r0, [r7, #4]
 8002fd0:	687b      	ldr	r3, [r7, #4]
 8002fd2:	2b07      	cmp	r3, #7
 8002fd4:	d82a      	bhi.n	800302c <trigger_crash+0x64>
 8002fd6:	a201      	add	r2, pc, #4	; (adr r2, 8002fdc <trigger_crash+0x14>)
 8002fd8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8002fdc:	08002ffd 	.word	0x08002ffd
 8002fe0:	08003003 	.word	0x08003003
 8002fe4:	08003009 	.word	0x08003009
 8002fe8:	0800300f 	.word	0x0800300f
 8002fec:	08003015 	.word	0x08003015
 8002ff0:	0800301b 	.word	0x0800301b
 8002ff4:	08003021 	.word	0x08003021
 8002ff8:	08003027 	.word	0x08003027
 8002ffc:	f7ff ffa6 	bl	8002f4c <illegal_instruction_execution>
 8003000:	e015      	b.n	800302e <trigger_crash+0x66>
 8003002:	f7ff ff97 	bl	8002f34 <read_from_bad_address>
 8003006:	e012      	b.n	800302e <trigger_crash+0x66>
 8003008:	f7ff ffce 	bl	8002fa8 <access_disabled_coprocessor>
 800300c:	e00f      	b.n	800302e <trigger_crash+0x66>
 800300e:	f7ff ffb3 	bl	8002f78 <bad_addr_double_word_write>
 8003012:	e00c      	b.n	800302e <trigger_crash+0x66>
 8003014:	f7ff ff32 	bl	8002e7c <stkerr_from_psp>
 8003018:	e009      	b.n	800302e <trigger_crash+0x66>
 800301a:	f7ff ffa4 	bl	8002f66 <unaligned_double_word_read>
 800301e:	e006      	b.n	800302e <trigger_crash+0x66>
 8003020:	f7ff ff78 	bl	8002f14 <bad_memory_access_crash>
 8003024:	e003      	b.n	800302e <trigger_crash+0x66>
 8003026:	f7ff ff0f 	bl	8002e48 <trigger_irq>
 800302a:	e000      	b.n	800302e <trigger_crash+0x66>
 800302c:	bf00      	nop
 800302e:	bf00      	nop
 8003030:	3708      	adds	r7, #8
 8003032:	46bd      	mov	sp, r7
 8003034:	bd80      	pop	{r7, pc}
 8003036:	bf00      	nop

08003038 <recover_from_task_fault>:
 8003038:	b480      	push	{r7}
 800303a:	af00      	add	r7, sp, #0
 800303c:	e7fe      	b.n	800303c <recover_from_task_fault+0x4>
	...

08003040 <Reset_Handler>:
 8003040:	f8df d010 	ldr.w	sp, [pc, #16]	; 8003054 <Reset_Handler+0x14>
 8003044:	f7fd fc7e 	bl	8000944 <SystemInit>
 8003048:	f7fd fa7e 	bl	8000548 <__libc_init_array>
 800304c:	f7fd fb24 	bl	8000698 <main>
 8003050:	4770      	bx	lr
 8003052:	0000      	.short	0x0000
 8003054:	20020000 	.word	0x20020000

08003058 <ADC_IRQHandler>:
 8003058:	e7fe      	b.n	8003058 <ADC_IRQHandler>
	...

0800305c <register_fini>:
 800305c:	4b02      	ldr	r3, [pc, #8]	; (8003068 <register_fini+0xc>)
 800305e:	b113      	cbz	r3, 8003066 <register_fini+0xa>
 8003060:	4802      	ldr	r0, [pc, #8]	; (800306c <register_fini+0x10>)
 8003062:	f7fd ba51 	b.w	8000508 <atexit>
 8003066:	4770      	bx	lr
 8003068:	00000000 	.word	0x00000000
 800306c:	08000515 	.word	0x08000515

08003070 <_init>:
 8003070:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8003072:	bf00      	nop
 8003074:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003076:	bc08      	pop	{r3}
 8003078:	469e      	mov	lr, r3
 800307a:	4770      	bx	lr

0800307c <_fini>:
 800307c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800307e:	bf00      	nop
 8003080:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003082:	bc08      	pop	{r3}
 8003084:	469e      	mov	lr, r3
 8003086:	4770      	bx	lr
