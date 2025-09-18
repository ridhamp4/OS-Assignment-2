
_lotto:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
       0:	e92d4800 	push	{fp, lr}
       4:	e28db004 	add	fp, sp, #4
       8:	e24dde53 	sub	sp, sp, #1328	@ 0x530
       c:	e50b0528 	str	r0, [fp, #-1320]	@ 0xfffffad8
      10:	e50b152c 	str	r1, [fp, #-1324]	@ 0xfffffad4
      14:	eb00026e 	bl	9d4 <getpid>
      18:	e50b001c 	str	r0, [fp, #-28]	@ 0xffffffe4
      1c:	e3a00001 	mov	r0, #1
      20:	eb000298 	bl	a88 <srand>
      24:	e3a01001 	mov	r1, #1
      28:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
      2c:	eb00028c 	bl	a64 <settickets>
      30:	eb0001ce 	bl	770 <fork>
      34:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
      38:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
      3c:	e3530000 	cmp	r3, #0
      40:	1a00001b 	bne	b4 <main+0xb4>
      44:	eb000262 	bl	9d4 <getpid>
      48:	e1a03000 	mov	r3, r0
      4c:	e3a01004 	mov	r1, #4
      50:	e1a00003 	mov	r0, r3
      54:	eb000282 	bl	a64 <settickets>
      58:	e3a03000 	mov	r3, #0
      5c:	e50b3008 	str	r3, [fp, #-8]
      60:	ea000002 	b	70 <main+0x70>
      64:	e51b3008 	ldr	r3, [fp, #-8]
      68:	e2833001 	add	r3, r3, #1
      6c:	e50b3008 	str	r3, [fp, #-8]
      70:	e51b3008 	ldr	r3, [fp, #-8]
      74:	e59f2210 	ldr	r2, [pc, #528]	@ 28c <main+0x28c>
      78:	e1530002 	cmp	r3, r2
      7c:	bafffff8 	blt	64 <main+0x64>
      80:	e3a00005 	mov	r0, #5
      84:	eb000264 	bl	a1c <sleep>
      88:	e3a03000 	mov	r3, #0
      8c:	e50b300c 	str	r3, [fp, #-12]
      90:	ea000002 	b	a0 <main+0xa0>
      94:	e51b300c 	ldr	r3, [fp, #-12]
      98:	e2833001 	add	r3, r3, #1
      9c:	e50b300c 	str	r3, [fp, #-12]
      a0:	e51b300c 	ldr	r3, [fp, #-12]
      a4:	e59f21e0 	ldr	r2, [pc, #480]	@ 28c <main+0x28c>
      a8:	e1530002 	cmp	r3, r2
      ac:	bafffff8 	blt	94 <main+0x94>
      b0:	eb0001b7 	bl	794 <exit>
      b4:	eb0001ad 	bl	770 <fork>
      b8:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
      bc:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
      c0:	e3530000 	cmp	r3, #0
      c4:	1a000011 	bne	110 <main+0x110>
      c8:	eb000241 	bl	9d4 <getpid>
      cc:	e1a03000 	mov	r3, r0
      d0:	e3a01001 	mov	r1, #1
      d4:	e1a00003 	mov	r0, r3
      d8:	eb000261 	bl	a64 <settickets>
      dc:	e3a0000a 	mov	r0, #10
      e0:	eb00024d 	bl	a1c <sleep>
      e4:	e3a03000 	mov	r3, #0
      e8:	e50b3010 	str	r3, [fp, #-16]
      ec:	ea000002 	b	fc <main+0xfc>
      f0:	e51b3010 	ldr	r3, [fp, #-16]
      f4:	e2833001 	add	r3, r3, #1
      f8:	e50b3010 	str	r3, [fp, #-16]
      fc:	e51b3010 	ldr	r3, [fp, #-16]
     100:	e59f2188 	ldr	r2, [pc, #392]	@ 290 <main+0x290>
     104:	e1530002 	cmp	r3, r2
     108:	bafffff8 	blt	f0 <main+0xf0>
     10c:	eb0001a0 	bl	794 <exit>
     110:	e3a03000 	mov	r3, #0
     114:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     118:	ea000055 	b	274 <main+0x274>
     11c:	e24b3e52 	sub	r3, fp, #1312	@ 0x520
     120:	e2433004 	sub	r3, r3, #4
     124:	e1a00003 	mov	r0, r3
     128:	eb00025f 	bl	aac <getpinfo>
     12c:	e1a03000 	mov	r3, r0
     130:	e3530000 	cmp	r3, #0
     134:	1a000049 	bne	260 <main+0x260>
     138:	e3a03000 	mov	r3, #0
     13c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     140:	ea000043 	b	254 <main+0x254>
     144:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     148:	e1a03103 	lsl	r3, r3, #2
     14c:	e2433004 	sub	r3, r3, #4
     150:	e083300b 	add	r3, r3, fp
     154:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     158:	e3530000 	cmp	r3, #0
     15c:	0a000039 	beq	248 <main+0x248>
     160:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     164:	e2833040 	add	r3, r3, #64	@ 0x40
     168:	e1a03103 	lsl	r3, r3, #2
     16c:	e2433004 	sub	r3, r3, #4
     170:	e083300b 	add	r3, r3, fp
     174:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     178:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     17c:	e1520003 	cmp	r2, r3
     180:	0a000011 	beq	1cc <main+0x1cc>
     184:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     188:	e2833040 	add	r3, r3, #64	@ 0x40
     18c:	e1a03103 	lsl	r3, r3, #2
     190:	e2433004 	sub	r3, r3, #4
     194:	e083300b 	add	r3, r3, fp
     198:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     19c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
     1a0:	e1520003 	cmp	r2, r3
     1a4:	0a000008 	beq	1cc <main+0x1cc>
     1a8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1ac:	e2833040 	add	r3, r3, #64	@ 0x40
     1b0:	e1a03103 	lsl	r3, r3, #2
     1b4:	e2433004 	sub	r3, r3, #4
     1b8:	e083300b 	add	r3, r3, fp
     1bc:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     1c0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
     1c4:	e1520003 	cmp	r2, r3
     1c8:	1a00001e 	bne	248 <main+0x248>
     1cc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1d0:	e2833040 	add	r3, r3, #64	@ 0x40
     1d4:	e1a03103 	lsl	r3, r3, #2
     1d8:	e2433004 	sub	r3, r3, #4
     1dc:	e083300b 	add	r3, r3, fp
     1e0:	e5131520 	ldr	r1, [r3, #-1312]	@ 0xfffffae0
     1e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     1e8:	e2833080 	add	r3, r3, #128	@ 0x80
     1ec:	e1a03103 	lsl	r3, r3, #2
     1f0:	e2433004 	sub	r3, r3, #4
     1f4:	e083300b 	add	r3, r3, fp
     1f8:	e5130520 	ldr	r0, [r3, #-1312]	@ 0xfffffae0
     1fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     200:	e2833c01 	add	r3, r3, #256	@ 0x100
     204:	e1a03103 	lsl	r3, r3, #2
     208:	e2433004 	sub	r3, r3, #4
     20c:	e083300b 	add	r3, r3, fp
     210:	e5132520 	ldr	r2, [r3, #-1312]	@ 0xfffffae0
     214:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     218:	e28330c0 	add	r3, r3, #192	@ 0xc0
     21c:	e1a03103 	lsl	r3, r3, #2
     220:	e2433004 	sub	r3, r3, #4
     224:	e083300b 	add	r3, r3, fp
     228:	e5133520 	ldr	r3, [r3, #-1312]	@ 0xfffffae0
     22c:	e58d3004 	str	r3, [sp, #4]
     230:	e58d2000 	str	r2, [sp]
     234:	e1a03000 	mov	r3, r0
     238:	e1a02001 	mov	r2, r1
     23c:	e59f1050 	ldr	r1, [pc, #80]	@ 294 <main+0x294>
     240:	e3a00001 	mov	r0, #1
     244:	eb00027d 	bl	c40 <printf>
     248:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     24c:	e2833001 	add	r3, r3, #1
     250:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     254:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     258:	e353003f 	cmp	r3, #63	@ 0x3f
     25c:	daffffb8 	ble	144 <main+0x144>
     260:	e3a00005 	mov	r0, #5
     264:	eb0001ec 	bl	a1c <sleep>
     268:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     26c:	e2833001 	add	r3, r3, #1
     270:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     274:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     278:	e3530005 	cmp	r3, #5
     27c:	daffffa6 	ble	11c <main+0x11c>
     280:	eb00014c 	bl	7b8 <wait>
     284:	eb00014b 	bl	7b8 <wait>
     288:	eb000141 	bl	794 <exit>
     28c:	001e8480 	.word	0x001e8480
     290:	003d0900 	.word	0x003d0900
     294:	000012fc 	.word	0x000012fc

00000298 <strcpy>:
     298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     29c:	e28db000 	add	fp, sp, #0
     2a0:	e24dd014 	sub	sp, sp, #20
     2a4:	e50b0010 	str	r0, [fp, #-16]
     2a8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     2ac:	e51b3010 	ldr	r3, [fp, #-16]
     2b0:	e50b3008 	str	r3, [fp, #-8]
     2b4:	e1a00000 	nop			@ (mov r0, r0)
     2b8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     2bc:	e2823001 	add	r3, r2, #1
     2c0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     2c4:	e51b3010 	ldr	r3, [fp, #-16]
     2c8:	e2831001 	add	r1, r3, #1
     2cc:	e50b1010 	str	r1, [fp, #-16]
     2d0:	e5d22000 	ldrb	r2, [r2]
     2d4:	e5c32000 	strb	r2, [r3]
     2d8:	e5d33000 	ldrb	r3, [r3]
     2dc:	e3530000 	cmp	r3, #0
     2e0:	1afffff4 	bne	2b8 <strcpy+0x20>
     2e4:	e51b3008 	ldr	r3, [fp, #-8]
     2e8:	e1a00003 	mov	r0, r3
     2ec:	e28bd000 	add	sp, fp, #0
     2f0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     2f4:	e12fff1e 	bx	lr

000002f8 <strcmp>:
     2f8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     2fc:	e28db000 	add	fp, sp, #0
     300:	e24dd00c 	sub	sp, sp, #12
     304:	e50b0008 	str	r0, [fp, #-8]
     308:	e50b100c 	str	r1, [fp, #-12]
     30c:	ea000005 	b	328 <strcmp+0x30>
     310:	e51b3008 	ldr	r3, [fp, #-8]
     314:	e2833001 	add	r3, r3, #1
     318:	e50b3008 	str	r3, [fp, #-8]
     31c:	e51b300c 	ldr	r3, [fp, #-12]
     320:	e2833001 	add	r3, r3, #1
     324:	e50b300c 	str	r3, [fp, #-12]
     328:	e51b3008 	ldr	r3, [fp, #-8]
     32c:	e5d33000 	ldrb	r3, [r3]
     330:	e3530000 	cmp	r3, #0
     334:	0a000005 	beq	350 <strcmp+0x58>
     338:	e51b3008 	ldr	r3, [fp, #-8]
     33c:	e5d32000 	ldrb	r2, [r3]
     340:	e51b300c 	ldr	r3, [fp, #-12]
     344:	e5d33000 	ldrb	r3, [r3]
     348:	e1520003 	cmp	r2, r3
     34c:	0affffef 	beq	310 <strcmp+0x18>
     350:	e51b3008 	ldr	r3, [fp, #-8]
     354:	e5d33000 	ldrb	r3, [r3]
     358:	e1a02003 	mov	r2, r3
     35c:	e51b300c 	ldr	r3, [fp, #-12]
     360:	e5d33000 	ldrb	r3, [r3]
     364:	e0423003 	sub	r3, r2, r3
     368:	e1a00003 	mov	r0, r3
     36c:	e28bd000 	add	sp, fp, #0
     370:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     374:	e12fff1e 	bx	lr

00000378 <strlen>:
     378:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     37c:	e28db000 	add	fp, sp, #0
     380:	e24dd014 	sub	sp, sp, #20
     384:	e50b0010 	str	r0, [fp, #-16]
     388:	e3a03000 	mov	r3, #0
     38c:	e50b3008 	str	r3, [fp, #-8]
     390:	ea000002 	b	3a0 <strlen+0x28>
     394:	e51b3008 	ldr	r3, [fp, #-8]
     398:	e2833001 	add	r3, r3, #1
     39c:	e50b3008 	str	r3, [fp, #-8]
     3a0:	e51b3008 	ldr	r3, [fp, #-8]
     3a4:	e51b2010 	ldr	r2, [fp, #-16]
     3a8:	e0823003 	add	r3, r2, r3
     3ac:	e5d33000 	ldrb	r3, [r3]
     3b0:	e3530000 	cmp	r3, #0
     3b4:	1afffff6 	bne	394 <strlen+0x1c>
     3b8:	e51b3008 	ldr	r3, [fp, #-8]
     3bc:	e1a00003 	mov	r0, r3
     3c0:	e28bd000 	add	sp, fp, #0
     3c4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     3c8:	e12fff1e 	bx	lr

000003cc <memset>:
     3cc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     3d0:	e28db000 	add	fp, sp, #0
     3d4:	e24dd024 	sub	sp, sp, #36	@ 0x24
     3d8:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     3dc:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     3e0:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
     3e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     3e8:	e50b3008 	str	r3, [fp, #-8]
     3ec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     3f0:	e54b300d 	strb	r3, [fp, #-13]
     3f4:	e55b200d 	ldrb	r2, [fp, #-13]
     3f8:	e1a03002 	mov	r3, r2
     3fc:	e1a03403 	lsl	r3, r3, #8
     400:	e0833002 	add	r3, r3, r2
     404:	e1a03803 	lsl	r3, r3, #16
     408:	e1a02003 	mov	r2, r3
     40c:	e55b300d 	ldrb	r3, [fp, #-13]
     410:	e1a03403 	lsl	r3, r3, #8
     414:	e1822003 	orr	r2, r2, r3
     418:	e55b300d 	ldrb	r3, [fp, #-13]
     41c:	e1823003 	orr	r3, r2, r3
     420:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     424:	ea000008 	b	44c <memset+0x80>
     428:	e51b3008 	ldr	r3, [fp, #-8]
     42c:	e55b200d 	ldrb	r2, [fp, #-13]
     430:	e5c32000 	strb	r2, [r3]
     434:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     438:	e2433001 	sub	r3, r3, #1
     43c:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     440:	e51b3008 	ldr	r3, [fp, #-8]
     444:	e2833001 	add	r3, r3, #1
     448:	e50b3008 	str	r3, [fp, #-8]
     44c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     450:	e3530000 	cmp	r3, #0
     454:	0a000003 	beq	468 <memset+0x9c>
     458:	e51b3008 	ldr	r3, [fp, #-8]
     45c:	e2033003 	and	r3, r3, #3
     460:	e3530000 	cmp	r3, #0
     464:	1affffef 	bne	428 <memset+0x5c>
     468:	e51b3008 	ldr	r3, [fp, #-8]
     46c:	e50b300c 	str	r3, [fp, #-12]
     470:	ea000008 	b	498 <memset+0xcc>
     474:	e51b300c 	ldr	r3, [fp, #-12]
     478:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
     47c:	e5832000 	str	r2, [r3]
     480:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     484:	e2433004 	sub	r3, r3, #4
     488:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     48c:	e51b300c 	ldr	r3, [fp, #-12]
     490:	e2833004 	add	r3, r3, #4
     494:	e50b300c 	str	r3, [fp, #-12]
     498:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     49c:	e3530003 	cmp	r3, #3
     4a0:	8afffff3 	bhi	474 <memset+0xa8>
     4a4:	e51b300c 	ldr	r3, [fp, #-12]
     4a8:	e50b3008 	str	r3, [fp, #-8]
     4ac:	ea000008 	b	4d4 <memset+0x108>
     4b0:	e51b3008 	ldr	r3, [fp, #-8]
     4b4:	e55b200d 	ldrb	r2, [fp, #-13]
     4b8:	e5c32000 	strb	r2, [r3]
     4bc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4c0:	e2433001 	sub	r3, r3, #1
     4c4:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
     4c8:	e51b3008 	ldr	r3, [fp, #-8]
     4cc:	e2833001 	add	r3, r3, #1
     4d0:	e50b3008 	str	r3, [fp, #-8]
     4d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
     4d8:	e3530000 	cmp	r3, #0
     4dc:	1afffff3 	bne	4b0 <memset+0xe4>
     4e0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     4e4:	e1a00003 	mov	r0, r3
     4e8:	e28bd000 	add	sp, fp, #0
     4ec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     4f0:	e12fff1e 	bx	lr

000004f4 <strchr>:
     4f4:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     4f8:	e28db000 	add	fp, sp, #0
     4fc:	e24dd00c 	sub	sp, sp, #12
     500:	e50b0008 	str	r0, [fp, #-8]
     504:	e1a03001 	mov	r3, r1
     508:	e54b3009 	strb	r3, [fp, #-9]
     50c:	ea000009 	b	538 <strchr+0x44>
     510:	e51b3008 	ldr	r3, [fp, #-8]
     514:	e5d33000 	ldrb	r3, [r3]
     518:	e55b2009 	ldrb	r2, [fp, #-9]
     51c:	e1520003 	cmp	r2, r3
     520:	1a000001 	bne	52c <strchr+0x38>
     524:	e51b3008 	ldr	r3, [fp, #-8]
     528:	ea000007 	b	54c <strchr+0x58>
     52c:	e51b3008 	ldr	r3, [fp, #-8]
     530:	e2833001 	add	r3, r3, #1
     534:	e50b3008 	str	r3, [fp, #-8]
     538:	e51b3008 	ldr	r3, [fp, #-8]
     53c:	e5d33000 	ldrb	r3, [r3]
     540:	e3530000 	cmp	r3, #0
     544:	1afffff1 	bne	510 <strchr+0x1c>
     548:	e3a03000 	mov	r3, #0
     54c:	e1a00003 	mov	r0, r3
     550:	e28bd000 	add	sp, fp, #0
     554:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     558:	e12fff1e 	bx	lr

0000055c <gets>:
     55c:	e92d4800 	push	{fp, lr}
     560:	e28db004 	add	fp, sp, #4
     564:	e24dd018 	sub	sp, sp, #24
     568:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
     56c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
     570:	e3a03000 	mov	r3, #0
     574:	e50b3008 	str	r3, [fp, #-8]
     578:	ea000016 	b	5d8 <gets+0x7c>
     57c:	e24b300d 	sub	r3, fp, #13
     580:	e3a02001 	mov	r2, #1
     584:	e1a01003 	mov	r1, r3
     588:	e3a00000 	mov	r0, #0
     58c:	eb00009b 	bl	800 <read>
     590:	e50b000c 	str	r0, [fp, #-12]
     594:	e51b300c 	ldr	r3, [fp, #-12]
     598:	e3530000 	cmp	r3, #0
     59c:	da000013 	ble	5f0 <gets+0x94>
     5a0:	e51b3008 	ldr	r3, [fp, #-8]
     5a4:	e2832001 	add	r2, r3, #1
     5a8:	e50b2008 	str	r2, [fp, #-8]
     5ac:	e1a02003 	mov	r2, r3
     5b0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     5b4:	e0833002 	add	r3, r3, r2
     5b8:	e55b200d 	ldrb	r2, [fp, #-13]
     5bc:	e5c32000 	strb	r2, [r3]
     5c0:	e55b300d 	ldrb	r3, [fp, #-13]
     5c4:	e353000a 	cmp	r3, #10
     5c8:	0a000009 	beq	5f4 <gets+0x98>
     5cc:	e55b300d 	ldrb	r3, [fp, #-13]
     5d0:	e353000d 	cmp	r3, #13
     5d4:	0a000006 	beq	5f4 <gets+0x98>
     5d8:	e51b3008 	ldr	r3, [fp, #-8]
     5dc:	e2833001 	add	r3, r3, #1
     5e0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
     5e4:	e1520003 	cmp	r2, r3
     5e8:	caffffe3 	bgt	57c <gets+0x20>
     5ec:	ea000000 	b	5f4 <gets+0x98>
     5f0:	e1a00000 	nop			@ (mov r0, r0)
     5f4:	e51b3008 	ldr	r3, [fp, #-8]
     5f8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
     5fc:	e0823003 	add	r3, r2, r3
     600:	e3a02000 	mov	r2, #0
     604:	e5c32000 	strb	r2, [r3]
     608:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     60c:	e1a00003 	mov	r0, r3
     610:	e24bd004 	sub	sp, fp, #4
     614:	e8bd8800 	pop	{fp, pc}

00000618 <stat>:
     618:	e92d4800 	push	{fp, lr}
     61c:	e28db004 	add	fp, sp, #4
     620:	e24dd010 	sub	sp, sp, #16
     624:	e50b0010 	str	r0, [fp, #-16]
     628:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     62c:	e3a01000 	mov	r1, #0
     630:	e51b0010 	ldr	r0, [fp, #-16]
     634:	eb00009e 	bl	8b4 <open>
     638:	e50b0008 	str	r0, [fp, #-8]
     63c:	e51b3008 	ldr	r3, [fp, #-8]
     640:	e3530000 	cmp	r3, #0
     644:	aa000001 	bge	650 <stat+0x38>
     648:	e3e03000 	mvn	r3, #0
     64c:	ea000006 	b	66c <stat+0x54>
     650:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
     654:	e51b0008 	ldr	r0, [fp, #-8]
     658:	eb0000b0 	bl	920 <fstat>
     65c:	e50b000c 	str	r0, [fp, #-12]
     660:	e51b0008 	ldr	r0, [fp, #-8]
     664:	eb000077 	bl	848 <close>
     668:	e51b300c 	ldr	r3, [fp, #-12]
     66c:	e1a00003 	mov	r0, r3
     670:	e24bd004 	sub	sp, fp, #4
     674:	e8bd8800 	pop	{fp, pc}

00000678 <atoi>:
     678:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     67c:	e28db000 	add	fp, sp, #0
     680:	e24dd014 	sub	sp, sp, #20
     684:	e50b0010 	str	r0, [fp, #-16]
     688:	e3a03000 	mov	r3, #0
     68c:	e50b3008 	str	r3, [fp, #-8]
     690:	ea00000c 	b	6c8 <atoi+0x50>
     694:	e51b2008 	ldr	r2, [fp, #-8]
     698:	e1a03002 	mov	r3, r2
     69c:	e1a03103 	lsl	r3, r3, #2
     6a0:	e0833002 	add	r3, r3, r2
     6a4:	e1a03083 	lsl	r3, r3, #1
     6a8:	e1a01003 	mov	r1, r3
     6ac:	e51b3010 	ldr	r3, [fp, #-16]
     6b0:	e2832001 	add	r2, r3, #1
     6b4:	e50b2010 	str	r2, [fp, #-16]
     6b8:	e5d33000 	ldrb	r3, [r3]
     6bc:	e0813003 	add	r3, r1, r3
     6c0:	e2433030 	sub	r3, r3, #48	@ 0x30
     6c4:	e50b3008 	str	r3, [fp, #-8]
     6c8:	e51b3010 	ldr	r3, [fp, #-16]
     6cc:	e5d33000 	ldrb	r3, [r3]
     6d0:	e353002f 	cmp	r3, #47	@ 0x2f
     6d4:	9a000003 	bls	6e8 <atoi+0x70>
     6d8:	e51b3010 	ldr	r3, [fp, #-16]
     6dc:	e5d33000 	ldrb	r3, [r3]
     6e0:	e3530039 	cmp	r3, #57	@ 0x39
     6e4:	9affffea 	bls	694 <atoi+0x1c>
     6e8:	e51b3008 	ldr	r3, [fp, #-8]
     6ec:	e1a00003 	mov	r0, r3
     6f0:	e28bd000 	add	sp, fp, #0
     6f4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     6f8:	e12fff1e 	bx	lr

000006fc <memmove>:
     6fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     700:	e28db000 	add	fp, sp, #0
     704:	e24dd01c 	sub	sp, sp, #28
     708:	e50b0010 	str	r0, [fp, #-16]
     70c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
     710:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     714:	e51b3010 	ldr	r3, [fp, #-16]
     718:	e50b3008 	str	r3, [fp, #-8]
     71c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     720:	e50b300c 	str	r3, [fp, #-12]
     724:	ea000007 	b	748 <memmove+0x4c>
     728:	e51b200c 	ldr	r2, [fp, #-12]
     72c:	e2823001 	add	r3, r2, #1
     730:	e50b300c 	str	r3, [fp, #-12]
     734:	e51b3008 	ldr	r3, [fp, #-8]
     738:	e2831001 	add	r1, r3, #1
     73c:	e50b1008 	str	r1, [fp, #-8]
     740:	e5d22000 	ldrb	r2, [r2]
     744:	e5c32000 	strb	r2, [r3]
     748:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     74c:	e2432001 	sub	r2, r3, #1
     750:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
     754:	e3530000 	cmp	r3, #0
     758:	cafffff2 	bgt	728 <memmove+0x2c>
     75c:	e51b3010 	ldr	r3, [fp, #-16]
     760:	e1a00003 	mov	r0, r3
     764:	e28bd000 	add	sp, fp, #0
     768:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     76c:	e12fff1e 	bx	lr

00000770 <fork>:
     770:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     774:	e1a04003 	mov	r4, r3
     778:	e1a03002 	mov	r3, r2
     77c:	e1a02001 	mov	r2, r1
     780:	e1a01000 	mov	r1, r0
     784:	e3a00001 	mov	r0, #1
     788:	ef000000 	svc	0x00000000
     78c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     790:	e12fff1e 	bx	lr

00000794 <exit>:
     794:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     798:	e1a04003 	mov	r4, r3
     79c:	e1a03002 	mov	r3, r2
     7a0:	e1a02001 	mov	r2, r1
     7a4:	e1a01000 	mov	r1, r0
     7a8:	e3a00002 	mov	r0, #2
     7ac:	ef000000 	svc	0x00000000
     7b0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7b4:	e12fff1e 	bx	lr

000007b8 <wait>:
     7b8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7bc:	e1a04003 	mov	r4, r3
     7c0:	e1a03002 	mov	r3, r2
     7c4:	e1a02001 	mov	r2, r1
     7c8:	e1a01000 	mov	r1, r0
     7cc:	e3a00003 	mov	r0, #3
     7d0:	ef000000 	svc	0x00000000
     7d4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7d8:	e12fff1e 	bx	lr

000007dc <pipe>:
     7dc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     7e0:	e1a04003 	mov	r4, r3
     7e4:	e1a03002 	mov	r3, r2
     7e8:	e1a02001 	mov	r2, r1
     7ec:	e1a01000 	mov	r1, r0
     7f0:	e3a00004 	mov	r0, #4
     7f4:	ef000000 	svc	0x00000000
     7f8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     7fc:	e12fff1e 	bx	lr

00000800 <read>:
     800:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     804:	e1a04003 	mov	r4, r3
     808:	e1a03002 	mov	r3, r2
     80c:	e1a02001 	mov	r2, r1
     810:	e1a01000 	mov	r1, r0
     814:	e3a00005 	mov	r0, #5
     818:	ef000000 	svc	0x00000000
     81c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     820:	e12fff1e 	bx	lr

00000824 <write>:
     824:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     828:	e1a04003 	mov	r4, r3
     82c:	e1a03002 	mov	r3, r2
     830:	e1a02001 	mov	r2, r1
     834:	e1a01000 	mov	r1, r0
     838:	e3a00010 	mov	r0, #16
     83c:	ef000000 	svc	0x00000000
     840:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     844:	e12fff1e 	bx	lr

00000848 <close>:
     848:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     84c:	e1a04003 	mov	r4, r3
     850:	e1a03002 	mov	r3, r2
     854:	e1a02001 	mov	r2, r1
     858:	e1a01000 	mov	r1, r0
     85c:	e3a00015 	mov	r0, #21
     860:	ef000000 	svc	0x00000000
     864:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     868:	e12fff1e 	bx	lr

0000086c <kill>:
     86c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     870:	e1a04003 	mov	r4, r3
     874:	e1a03002 	mov	r3, r2
     878:	e1a02001 	mov	r2, r1
     87c:	e1a01000 	mov	r1, r0
     880:	e3a00006 	mov	r0, #6
     884:	ef000000 	svc	0x00000000
     888:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     88c:	e12fff1e 	bx	lr

00000890 <exec>:
     890:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     894:	e1a04003 	mov	r4, r3
     898:	e1a03002 	mov	r3, r2
     89c:	e1a02001 	mov	r2, r1
     8a0:	e1a01000 	mov	r1, r0
     8a4:	e3a00007 	mov	r0, #7
     8a8:	ef000000 	svc	0x00000000
     8ac:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8b0:	e12fff1e 	bx	lr

000008b4 <open>:
     8b4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8b8:	e1a04003 	mov	r4, r3
     8bc:	e1a03002 	mov	r3, r2
     8c0:	e1a02001 	mov	r2, r1
     8c4:	e1a01000 	mov	r1, r0
     8c8:	e3a0000f 	mov	r0, #15
     8cc:	ef000000 	svc	0x00000000
     8d0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8d4:	e12fff1e 	bx	lr

000008d8 <mknod>:
     8d8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     8dc:	e1a04003 	mov	r4, r3
     8e0:	e1a03002 	mov	r3, r2
     8e4:	e1a02001 	mov	r2, r1
     8e8:	e1a01000 	mov	r1, r0
     8ec:	e3a00011 	mov	r0, #17
     8f0:	ef000000 	svc	0x00000000
     8f4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     8f8:	e12fff1e 	bx	lr

000008fc <unlink>:
     8fc:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     900:	e1a04003 	mov	r4, r3
     904:	e1a03002 	mov	r3, r2
     908:	e1a02001 	mov	r2, r1
     90c:	e1a01000 	mov	r1, r0
     910:	e3a00012 	mov	r0, #18
     914:	ef000000 	svc	0x00000000
     918:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     91c:	e12fff1e 	bx	lr

00000920 <fstat>:
     920:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     924:	e1a04003 	mov	r4, r3
     928:	e1a03002 	mov	r3, r2
     92c:	e1a02001 	mov	r2, r1
     930:	e1a01000 	mov	r1, r0
     934:	e3a00008 	mov	r0, #8
     938:	ef000000 	svc	0x00000000
     93c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     940:	e12fff1e 	bx	lr

00000944 <link>:
     944:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     948:	e1a04003 	mov	r4, r3
     94c:	e1a03002 	mov	r3, r2
     950:	e1a02001 	mov	r2, r1
     954:	e1a01000 	mov	r1, r0
     958:	e3a00013 	mov	r0, #19
     95c:	ef000000 	svc	0x00000000
     960:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     964:	e12fff1e 	bx	lr

00000968 <mkdir>:
     968:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     96c:	e1a04003 	mov	r4, r3
     970:	e1a03002 	mov	r3, r2
     974:	e1a02001 	mov	r2, r1
     978:	e1a01000 	mov	r1, r0
     97c:	e3a00014 	mov	r0, #20
     980:	ef000000 	svc	0x00000000
     984:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     988:	e12fff1e 	bx	lr

0000098c <chdir>:
     98c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     990:	e1a04003 	mov	r4, r3
     994:	e1a03002 	mov	r3, r2
     998:	e1a02001 	mov	r2, r1
     99c:	e1a01000 	mov	r1, r0
     9a0:	e3a00009 	mov	r0, #9
     9a4:	ef000000 	svc	0x00000000
     9a8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9ac:	e12fff1e 	bx	lr

000009b0 <dup>:
     9b0:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9b4:	e1a04003 	mov	r4, r3
     9b8:	e1a03002 	mov	r3, r2
     9bc:	e1a02001 	mov	r2, r1
     9c0:	e1a01000 	mov	r1, r0
     9c4:	e3a0000a 	mov	r0, #10
     9c8:	ef000000 	svc	0x00000000
     9cc:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9d0:	e12fff1e 	bx	lr

000009d4 <getpid>:
     9d4:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9d8:	e1a04003 	mov	r4, r3
     9dc:	e1a03002 	mov	r3, r2
     9e0:	e1a02001 	mov	r2, r1
     9e4:	e1a01000 	mov	r1, r0
     9e8:	e3a0000b 	mov	r0, #11
     9ec:	ef000000 	svc	0x00000000
     9f0:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     9f4:	e12fff1e 	bx	lr

000009f8 <sbrk>:
     9f8:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     9fc:	e1a04003 	mov	r4, r3
     a00:	e1a03002 	mov	r3, r2
     a04:	e1a02001 	mov	r2, r1
     a08:	e1a01000 	mov	r1, r0
     a0c:	e3a0000c 	mov	r0, #12
     a10:	ef000000 	svc	0x00000000
     a14:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a18:	e12fff1e 	bx	lr

00000a1c <sleep>:
     a1c:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a20:	e1a04003 	mov	r4, r3
     a24:	e1a03002 	mov	r3, r2
     a28:	e1a02001 	mov	r2, r1
     a2c:	e1a01000 	mov	r1, r0
     a30:	e3a0000d 	mov	r0, #13
     a34:	ef000000 	svc	0x00000000
     a38:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a3c:	e12fff1e 	bx	lr

00000a40 <uptime>:
     a40:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a44:	e1a04003 	mov	r4, r3
     a48:	e1a03002 	mov	r3, r2
     a4c:	e1a02001 	mov	r2, r1
     a50:	e1a01000 	mov	r1, r0
     a54:	e3a0000e 	mov	r0, #14
     a58:	ef000000 	svc	0x00000000
     a5c:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a60:	e12fff1e 	bx	lr

00000a64 <settickets>:
     a64:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a68:	e1a04003 	mov	r4, r3
     a6c:	e1a03002 	mov	r3, r2
     a70:	e1a02001 	mov	r2, r1
     a74:	e1a01000 	mov	r1, r0
     a78:	e3a00016 	mov	r0, #22
     a7c:	ef000000 	svc	0x00000000
     a80:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     a84:	e12fff1e 	bx	lr

00000a88 <srand>:
     a88:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     a8c:	e1a04003 	mov	r4, r3
     a90:	e1a03002 	mov	r3, r2
     a94:	e1a02001 	mov	r2, r1
     a98:	e1a01000 	mov	r1, r0
     a9c:	e3a00017 	mov	r0, #23
     aa0:	ef000000 	svc	0x00000000
     aa4:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     aa8:	e12fff1e 	bx	lr

00000aac <getpinfo>:
     aac:	e52d4004 	push	{r4}		@ (str r4, [sp, #-4]!)
     ab0:	e1a04003 	mov	r4, r3
     ab4:	e1a03002 	mov	r3, r2
     ab8:	e1a02001 	mov	r2, r1
     abc:	e1a01000 	mov	r1, r0
     ac0:	e3a00018 	mov	r0, #24
     ac4:	ef000000 	svc	0x00000000
     ac8:	e49d4004 	pop	{r4}		@ (ldr r4, [sp], #4)
     acc:	e12fff1e 	bx	lr

00000ad0 <putc>:
     ad0:	e92d4800 	push	{fp, lr}
     ad4:	e28db004 	add	fp, sp, #4
     ad8:	e24dd008 	sub	sp, sp, #8
     adc:	e50b0008 	str	r0, [fp, #-8]
     ae0:	e1a03001 	mov	r3, r1
     ae4:	e54b3009 	strb	r3, [fp, #-9]
     ae8:	e24b3009 	sub	r3, fp, #9
     aec:	e3a02001 	mov	r2, #1
     af0:	e1a01003 	mov	r1, r3
     af4:	e51b0008 	ldr	r0, [fp, #-8]
     af8:	ebffff49 	bl	824 <write>
     afc:	e1a00000 	nop			@ (mov r0, r0)
     b00:	e24bd004 	sub	sp, fp, #4
     b04:	e8bd8800 	pop	{fp, pc}

00000b08 <printint>:
     b08:	e92d4800 	push	{fp, lr}
     b0c:	e28db004 	add	fp, sp, #4
     b10:	e24dd030 	sub	sp, sp, #48	@ 0x30
     b14:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
     b18:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
     b1c:	e50b2030 	str	r2, [fp, #-48]	@ 0xffffffd0
     b20:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
     b24:	e3a03000 	mov	r3, #0
     b28:	e50b300c 	str	r3, [fp, #-12]
     b2c:	e51b3034 	ldr	r3, [fp, #-52]	@ 0xffffffcc
     b30:	e3530000 	cmp	r3, #0
     b34:	0a000008 	beq	b5c <printint+0x54>
     b38:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b3c:	e3530000 	cmp	r3, #0
     b40:	aa000005 	bge	b5c <printint+0x54>
     b44:	e3a03001 	mov	r3, #1
     b48:	e50b300c 	str	r3, [fp, #-12]
     b4c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b50:	e2633000 	rsb	r3, r3, #0
     b54:	e50b3010 	str	r3, [fp, #-16]
     b58:	ea000001 	b	b64 <printint+0x5c>
     b5c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
     b60:	e50b3010 	str	r3, [fp, #-16]
     b64:	e3a03000 	mov	r3, #0
     b68:	e50b3008 	str	r3, [fp, #-8]
     b6c:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
     b70:	e51b3010 	ldr	r3, [fp, #-16]
     b74:	e1a01002 	mov	r1, r2
     b78:	e1a00003 	mov	r0, r3
     b7c:	eb0001d5 	bl	12d8 <__aeabi_uidivmod>
     b80:	e1a03001 	mov	r3, r1
     b84:	e1a01003 	mov	r1, r3
     b88:	e51b3008 	ldr	r3, [fp, #-8]
     b8c:	e2832001 	add	r2, r3, #1
     b90:	e50b2008 	str	r2, [fp, #-8]
     b94:	e59f20a0 	ldr	r2, [pc, #160]	@ c3c <printint+0x134>
     b98:	e7d22001 	ldrb	r2, [r2, r1]
     b9c:	e2433004 	sub	r3, r3, #4
     ba0:	e083300b 	add	r3, r3, fp
     ba4:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     ba8:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
     bac:	e1a01003 	mov	r1, r3
     bb0:	e51b0010 	ldr	r0, [fp, #-16]
     bb4:	eb00018a 	bl	11e4 <__udivsi3>
     bb8:	e1a03000 	mov	r3, r0
     bbc:	e50b3010 	str	r3, [fp, #-16]
     bc0:	e51b3010 	ldr	r3, [fp, #-16]
     bc4:	e3530000 	cmp	r3, #0
     bc8:	1affffe7 	bne	b6c <printint+0x64>
     bcc:	e51b300c 	ldr	r3, [fp, #-12]
     bd0:	e3530000 	cmp	r3, #0
     bd4:	0a00000e 	beq	c14 <printint+0x10c>
     bd8:	e51b3008 	ldr	r3, [fp, #-8]
     bdc:	e2832001 	add	r2, r3, #1
     be0:	e50b2008 	str	r2, [fp, #-8]
     be4:	e2433004 	sub	r3, r3, #4
     be8:	e083300b 	add	r3, r3, fp
     bec:	e3a0202d 	mov	r2, #45	@ 0x2d
     bf0:	e543201c 	strb	r2, [r3, #-28]	@ 0xffffffe4
     bf4:	ea000006 	b	c14 <printint+0x10c>
     bf8:	e24b2020 	sub	r2, fp, #32
     bfc:	e51b3008 	ldr	r3, [fp, #-8]
     c00:	e0823003 	add	r3, r2, r3
     c04:	e5d33000 	ldrb	r3, [r3]
     c08:	e1a01003 	mov	r1, r3
     c0c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
     c10:	ebffffae 	bl	ad0 <putc>
     c14:	e51b3008 	ldr	r3, [fp, #-8]
     c18:	e2433001 	sub	r3, r3, #1
     c1c:	e50b3008 	str	r3, [fp, #-8]
     c20:	e51b3008 	ldr	r3, [fp, #-8]
     c24:	e3530000 	cmp	r3, #0
     c28:	aafffff2 	bge	bf8 <printint+0xf0>
     c2c:	e1a00000 	nop			@ (mov r0, r0)
     c30:	e1a00000 	nop			@ (mov r0, r0)
     c34:	e24bd004 	sub	sp, fp, #4
     c38:	e8bd8800 	pop	{fp, pc}
     c3c:	00001334 	.word	0x00001334

00000c40 <printf>:
     c40:	e92d000e 	push	{r1, r2, r3}
     c44:	e92d4800 	push	{fp, lr}
     c48:	e28db004 	add	fp, sp, #4
     c4c:	e24dd024 	sub	sp, sp, #36	@ 0x24
     c50:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
     c54:	e3a03000 	mov	r3, #0
     c58:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     c5c:	e28b3008 	add	r3, fp, #8
     c60:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     c64:	e3a03000 	mov	r3, #0
     c68:	e50b3010 	str	r3, [fp, #-16]
     c6c:	ea000074 	b	e44 <printf+0x204>
     c70:	e59b2004 	ldr	r2, [fp, #4]
     c74:	e51b3010 	ldr	r3, [fp, #-16]
     c78:	e0823003 	add	r3, r2, r3
     c7c:	e5d33000 	ldrb	r3, [r3]
     c80:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
     c84:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     c88:	e3530000 	cmp	r3, #0
     c8c:	1a00000b 	bne	cc0 <printf+0x80>
     c90:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     c94:	e3530025 	cmp	r3, #37	@ 0x25
     c98:	1a000002 	bne	ca8 <printf+0x68>
     c9c:	e3a03025 	mov	r3, #37	@ 0x25
     ca0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     ca4:	ea000063 	b	e38 <printf+0x1f8>
     ca8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cac:	e6ef3073 	uxtb	r3, r3
     cb0:	e1a01003 	mov	r1, r3
     cb4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cb8:	ebffff84 	bl	ad0 <putc>
     cbc:	ea00005d 	b	e38 <printf+0x1f8>
     cc0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
     cc4:	e3530025 	cmp	r3, #37	@ 0x25
     cc8:	1a00005a 	bne	e38 <printf+0x1f8>
     ccc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     cd0:	e3530064 	cmp	r3, #100	@ 0x64
     cd4:	1a00000a 	bne	d04 <printf+0xc4>
     cd8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cdc:	e5933000 	ldr	r3, [r3]
     ce0:	e1a01003 	mov	r1, r3
     ce4:	e3a03001 	mov	r3, #1
     ce8:	e3a0200a 	mov	r2, #10
     cec:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     cf0:	ebffff84 	bl	b08 <printint>
     cf4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     cf8:	e2833004 	add	r3, r3, #4
     cfc:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d00:	ea00004a 	b	e30 <printf+0x1f0>
     d04:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d08:	e3530078 	cmp	r3, #120	@ 0x78
     d0c:	0a000002 	beq	d1c <printf+0xdc>
     d10:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d14:	e3530070 	cmp	r3, #112	@ 0x70
     d18:	1a00000a 	bne	d48 <printf+0x108>
     d1c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d20:	e5933000 	ldr	r3, [r3]
     d24:	e1a01003 	mov	r1, r3
     d28:	e3a03000 	mov	r3, #0
     d2c:	e3a02010 	mov	r2, #16
     d30:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d34:	ebffff73 	bl	b08 <printint>
     d38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d3c:	e2833004 	add	r3, r3, #4
     d40:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d44:	ea000039 	b	e30 <printf+0x1f0>
     d48:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     d4c:	e3530073 	cmp	r3, #115	@ 0x73
     d50:	1a000018 	bne	db8 <printf+0x178>
     d54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d58:	e5933000 	ldr	r3, [r3]
     d5c:	e50b300c 	str	r3, [fp, #-12]
     d60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     d64:	e2833004 	add	r3, r3, #4
     d68:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     d6c:	e51b300c 	ldr	r3, [fp, #-12]
     d70:	e3530000 	cmp	r3, #0
     d74:	1a00000a 	bne	da4 <printf+0x164>
     d78:	e59f30f4 	ldr	r3, [pc, #244]	@ e74 <printf+0x234>
     d7c:	e50b300c 	str	r3, [fp, #-12]
     d80:	ea000007 	b	da4 <printf+0x164>
     d84:	e51b300c 	ldr	r3, [fp, #-12]
     d88:	e5d33000 	ldrb	r3, [r3]
     d8c:	e1a01003 	mov	r1, r3
     d90:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     d94:	ebffff4d 	bl	ad0 <putc>
     d98:	e51b300c 	ldr	r3, [fp, #-12]
     d9c:	e2833001 	add	r3, r3, #1
     da0:	e50b300c 	str	r3, [fp, #-12]
     da4:	e51b300c 	ldr	r3, [fp, #-12]
     da8:	e5d33000 	ldrb	r3, [r3]
     dac:	e3530000 	cmp	r3, #0
     db0:	1afffff3 	bne	d84 <printf+0x144>
     db4:	ea00001d 	b	e30 <printf+0x1f0>
     db8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dbc:	e3530063 	cmp	r3, #99	@ 0x63
     dc0:	1a000009 	bne	dec <printf+0x1ac>
     dc4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     dc8:	e5933000 	ldr	r3, [r3]
     dcc:	e6ef3073 	uxtb	r3, r3
     dd0:	e1a01003 	mov	r1, r3
     dd4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     dd8:	ebffff3c 	bl	ad0 <putc>
     ddc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
     de0:	e2833004 	add	r3, r3, #4
     de4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
     de8:	ea000010 	b	e30 <printf+0x1f0>
     dec:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     df0:	e3530025 	cmp	r3, #37	@ 0x25
     df4:	1a000005 	bne	e10 <printf+0x1d0>
     df8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     dfc:	e6ef3073 	uxtb	r3, r3
     e00:	e1a01003 	mov	r1, r3
     e04:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e08:	ebffff30 	bl	ad0 <putc>
     e0c:	ea000007 	b	e30 <printf+0x1f0>
     e10:	e3a01025 	mov	r1, #37	@ 0x25
     e14:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e18:	ebffff2c 	bl	ad0 <putc>
     e1c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
     e20:	e6ef3073 	uxtb	r3, r3
     e24:	e1a01003 	mov	r1, r3
     e28:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
     e2c:	ebffff27 	bl	ad0 <putc>
     e30:	e3a03000 	mov	r3, #0
     e34:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
     e38:	e51b3010 	ldr	r3, [fp, #-16]
     e3c:	e2833001 	add	r3, r3, #1
     e40:	e50b3010 	str	r3, [fp, #-16]
     e44:	e59b2004 	ldr	r2, [fp, #4]
     e48:	e51b3010 	ldr	r3, [fp, #-16]
     e4c:	e0823003 	add	r3, r2, r3
     e50:	e5d33000 	ldrb	r3, [r3]
     e54:	e3530000 	cmp	r3, #0
     e58:	1affff84 	bne	c70 <printf+0x30>
     e5c:	e1a00000 	nop			@ (mov r0, r0)
     e60:	e1a00000 	nop			@ (mov r0, r0)
     e64:	e24bd004 	sub	sp, fp, #4
     e68:	e8bd4800 	pop	{fp, lr}
     e6c:	e28dd00c 	add	sp, sp, #12
     e70:	e12fff1e 	bx	lr
     e74:	0000132c 	.word	0x0000132c

00000e78 <free>:
     e78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
     e7c:	e28db000 	add	fp, sp, #0
     e80:	e24dd014 	sub	sp, sp, #20
     e84:	e50b0010 	str	r0, [fp, #-16]
     e88:	e51b3010 	ldr	r3, [fp, #-16]
     e8c:	e2433008 	sub	r3, r3, #8
     e90:	e50b300c 	str	r3, [fp, #-12]
     e94:	e59f3154 	ldr	r3, [pc, #340]	@ ff0 <free+0x178>
     e98:	e5933000 	ldr	r3, [r3]
     e9c:	e50b3008 	str	r3, [fp, #-8]
     ea0:	ea000010 	b	ee8 <free+0x70>
     ea4:	e51b3008 	ldr	r3, [fp, #-8]
     ea8:	e5933000 	ldr	r3, [r3]
     eac:	e51b2008 	ldr	r2, [fp, #-8]
     eb0:	e1520003 	cmp	r2, r3
     eb4:	3a000008 	bcc	edc <free+0x64>
     eb8:	e51b200c 	ldr	r2, [fp, #-12]
     ebc:	e51b3008 	ldr	r3, [fp, #-8]
     ec0:	e1520003 	cmp	r2, r3
     ec4:	8a000010 	bhi	f0c <free+0x94>
     ec8:	e51b3008 	ldr	r3, [fp, #-8]
     ecc:	e5933000 	ldr	r3, [r3]
     ed0:	e51b200c 	ldr	r2, [fp, #-12]
     ed4:	e1520003 	cmp	r2, r3
     ed8:	3a00000b 	bcc	f0c <free+0x94>
     edc:	e51b3008 	ldr	r3, [fp, #-8]
     ee0:	e5933000 	ldr	r3, [r3]
     ee4:	e50b3008 	str	r3, [fp, #-8]
     ee8:	e51b200c 	ldr	r2, [fp, #-12]
     eec:	e51b3008 	ldr	r3, [fp, #-8]
     ef0:	e1520003 	cmp	r2, r3
     ef4:	9affffea 	bls	ea4 <free+0x2c>
     ef8:	e51b3008 	ldr	r3, [fp, #-8]
     efc:	e5933000 	ldr	r3, [r3]
     f00:	e51b200c 	ldr	r2, [fp, #-12]
     f04:	e1520003 	cmp	r2, r3
     f08:	2affffe5 	bcs	ea4 <free+0x2c>
     f0c:	e51b300c 	ldr	r3, [fp, #-12]
     f10:	e5933004 	ldr	r3, [r3, #4]
     f14:	e1a03183 	lsl	r3, r3, #3
     f18:	e51b200c 	ldr	r2, [fp, #-12]
     f1c:	e0822003 	add	r2, r2, r3
     f20:	e51b3008 	ldr	r3, [fp, #-8]
     f24:	e5933000 	ldr	r3, [r3]
     f28:	e1520003 	cmp	r2, r3
     f2c:	1a00000d 	bne	f68 <free+0xf0>
     f30:	e51b300c 	ldr	r3, [fp, #-12]
     f34:	e5932004 	ldr	r2, [r3, #4]
     f38:	e51b3008 	ldr	r3, [fp, #-8]
     f3c:	e5933000 	ldr	r3, [r3]
     f40:	e5933004 	ldr	r3, [r3, #4]
     f44:	e0822003 	add	r2, r2, r3
     f48:	e51b300c 	ldr	r3, [fp, #-12]
     f4c:	e5832004 	str	r2, [r3, #4]
     f50:	e51b3008 	ldr	r3, [fp, #-8]
     f54:	e5933000 	ldr	r3, [r3]
     f58:	e5932000 	ldr	r2, [r3]
     f5c:	e51b300c 	ldr	r3, [fp, #-12]
     f60:	e5832000 	str	r2, [r3]
     f64:	ea000003 	b	f78 <free+0x100>
     f68:	e51b3008 	ldr	r3, [fp, #-8]
     f6c:	e5932000 	ldr	r2, [r3]
     f70:	e51b300c 	ldr	r3, [fp, #-12]
     f74:	e5832000 	str	r2, [r3]
     f78:	e51b3008 	ldr	r3, [fp, #-8]
     f7c:	e5933004 	ldr	r3, [r3, #4]
     f80:	e1a03183 	lsl	r3, r3, #3
     f84:	e51b2008 	ldr	r2, [fp, #-8]
     f88:	e0823003 	add	r3, r2, r3
     f8c:	e51b200c 	ldr	r2, [fp, #-12]
     f90:	e1520003 	cmp	r2, r3
     f94:	1a00000b 	bne	fc8 <free+0x150>
     f98:	e51b3008 	ldr	r3, [fp, #-8]
     f9c:	e5932004 	ldr	r2, [r3, #4]
     fa0:	e51b300c 	ldr	r3, [fp, #-12]
     fa4:	e5933004 	ldr	r3, [r3, #4]
     fa8:	e0822003 	add	r2, r2, r3
     fac:	e51b3008 	ldr	r3, [fp, #-8]
     fb0:	e5832004 	str	r2, [r3, #4]
     fb4:	e51b300c 	ldr	r3, [fp, #-12]
     fb8:	e5932000 	ldr	r2, [r3]
     fbc:	e51b3008 	ldr	r3, [fp, #-8]
     fc0:	e5832000 	str	r2, [r3]
     fc4:	ea000002 	b	fd4 <free+0x15c>
     fc8:	e51b3008 	ldr	r3, [fp, #-8]
     fcc:	e51b200c 	ldr	r2, [fp, #-12]
     fd0:	e5832000 	str	r2, [r3]
     fd4:	e59f2014 	ldr	r2, [pc, #20]	@ ff0 <free+0x178>
     fd8:	e51b3008 	ldr	r3, [fp, #-8]
     fdc:	e5823000 	str	r3, [r2]
     fe0:	e1a00000 	nop			@ (mov r0, r0)
     fe4:	e28bd000 	add	sp, fp, #0
     fe8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
     fec:	e12fff1e 	bx	lr
     ff0:	00001350 	.word	0x00001350

00000ff4 <morecore>:
     ff4:	e92d4800 	push	{fp, lr}
     ff8:	e28db004 	add	fp, sp, #4
     ffc:	e24dd010 	sub	sp, sp, #16
    1000:	e50b0010 	str	r0, [fp, #-16]
    1004:	e51b3010 	ldr	r3, [fp, #-16]
    1008:	e3530a01 	cmp	r3, #4096	@ 0x1000
    100c:	2a000001 	bcs	1018 <morecore+0x24>
    1010:	e3a03a01 	mov	r3, #4096	@ 0x1000
    1014:	e50b3010 	str	r3, [fp, #-16]
    1018:	e51b3010 	ldr	r3, [fp, #-16]
    101c:	e1a03183 	lsl	r3, r3, #3
    1020:	e1a00003 	mov	r0, r3
    1024:	ebfffe73 	bl	9f8 <sbrk>
    1028:	e50b0008 	str	r0, [fp, #-8]
    102c:	e51b3008 	ldr	r3, [fp, #-8]
    1030:	e3730001 	cmn	r3, #1
    1034:	1a000001 	bne	1040 <morecore+0x4c>
    1038:	e3a03000 	mov	r3, #0
    103c:	ea00000a 	b	106c <morecore+0x78>
    1040:	e51b3008 	ldr	r3, [fp, #-8]
    1044:	e50b300c 	str	r3, [fp, #-12]
    1048:	e51b300c 	ldr	r3, [fp, #-12]
    104c:	e51b2010 	ldr	r2, [fp, #-16]
    1050:	e5832004 	str	r2, [r3, #4]
    1054:	e51b300c 	ldr	r3, [fp, #-12]
    1058:	e2833008 	add	r3, r3, #8
    105c:	e1a00003 	mov	r0, r3
    1060:	ebffff84 	bl	e78 <free>
    1064:	e59f300c 	ldr	r3, [pc, #12]	@ 1078 <morecore+0x84>
    1068:	e5933000 	ldr	r3, [r3]
    106c:	e1a00003 	mov	r0, r3
    1070:	e24bd004 	sub	sp, fp, #4
    1074:	e8bd8800 	pop	{fp, pc}
    1078:	00001350 	.word	0x00001350

0000107c <malloc>:
    107c:	e92d4800 	push	{fp, lr}
    1080:	e28db004 	add	fp, sp, #4
    1084:	e24dd018 	sub	sp, sp, #24
    1088:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
    108c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
    1090:	e2833007 	add	r3, r3, #7
    1094:	e1a031a3 	lsr	r3, r3, #3
    1098:	e2833001 	add	r3, r3, #1
    109c:	e50b3010 	str	r3, [fp, #-16]
    10a0:	e59f3134 	ldr	r3, [pc, #308]	@ 11dc <malloc+0x160>
    10a4:	e5933000 	ldr	r3, [r3]
    10a8:	e50b300c 	str	r3, [fp, #-12]
    10ac:	e51b300c 	ldr	r3, [fp, #-12]
    10b0:	e3530000 	cmp	r3, #0
    10b4:	1a00000b 	bne	10e8 <malloc+0x6c>
    10b8:	e59f3120 	ldr	r3, [pc, #288]	@ 11e0 <malloc+0x164>
    10bc:	e50b300c 	str	r3, [fp, #-12]
    10c0:	e59f2114 	ldr	r2, [pc, #276]	@ 11dc <malloc+0x160>
    10c4:	e51b300c 	ldr	r3, [fp, #-12]
    10c8:	e5823000 	str	r3, [r2]
    10cc:	e59f3108 	ldr	r3, [pc, #264]	@ 11dc <malloc+0x160>
    10d0:	e5933000 	ldr	r3, [r3]
    10d4:	e59f2104 	ldr	r2, [pc, #260]	@ 11e0 <malloc+0x164>
    10d8:	e5823000 	str	r3, [r2]
    10dc:	e59f30fc 	ldr	r3, [pc, #252]	@ 11e0 <malloc+0x164>
    10e0:	e3a02000 	mov	r2, #0
    10e4:	e5832004 	str	r2, [r3, #4]
    10e8:	e51b300c 	ldr	r3, [fp, #-12]
    10ec:	e5933000 	ldr	r3, [r3]
    10f0:	e50b3008 	str	r3, [fp, #-8]
    10f4:	e51b3008 	ldr	r3, [fp, #-8]
    10f8:	e5933004 	ldr	r3, [r3, #4]
    10fc:	e51b2010 	ldr	r2, [fp, #-16]
    1100:	e1520003 	cmp	r2, r3
    1104:	8a00001e 	bhi	1184 <malloc+0x108>
    1108:	e51b3008 	ldr	r3, [fp, #-8]
    110c:	e5933004 	ldr	r3, [r3, #4]
    1110:	e51b2010 	ldr	r2, [fp, #-16]
    1114:	e1520003 	cmp	r2, r3
    1118:	1a000004 	bne	1130 <malloc+0xb4>
    111c:	e51b3008 	ldr	r3, [fp, #-8]
    1120:	e5932000 	ldr	r2, [r3]
    1124:	e51b300c 	ldr	r3, [fp, #-12]
    1128:	e5832000 	str	r2, [r3]
    112c:	ea00000e 	b	116c <malloc+0xf0>
    1130:	e51b3008 	ldr	r3, [fp, #-8]
    1134:	e5932004 	ldr	r2, [r3, #4]
    1138:	e51b3010 	ldr	r3, [fp, #-16]
    113c:	e0422003 	sub	r2, r2, r3
    1140:	e51b3008 	ldr	r3, [fp, #-8]
    1144:	e5832004 	str	r2, [r3, #4]
    1148:	e51b3008 	ldr	r3, [fp, #-8]
    114c:	e5933004 	ldr	r3, [r3, #4]
    1150:	e1a03183 	lsl	r3, r3, #3
    1154:	e51b2008 	ldr	r2, [fp, #-8]
    1158:	e0823003 	add	r3, r2, r3
    115c:	e50b3008 	str	r3, [fp, #-8]
    1160:	e51b3008 	ldr	r3, [fp, #-8]
    1164:	e51b2010 	ldr	r2, [fp, #-16]
    1168:	e5832004 	str	r2, [r3, #4]
    116c:	e59f2068 	ldr	r2, [pc, #104]	@ 11dc <malloc+0x160>
    1170:	e51b300c 	ldr	r3, [fp, #-12]
    1174:	e5823000 	str	r3, [r2]
    1178:	e51b3008 	ldr	r3, [fp, #-8]
    117c:	e2833008 	add	r3, r3, #8
    1180:	ea000012 	b	11d0 <malloc+0x154>
    1184:	e59f3050 	ldr	r3, [pc, #80]	@ 11dc <malloc+0x160>
    1188:	e5933000 	ldr	r3, [r3]
    118c:	e51b2008 	ldr	r2, [fp, #-8]
    1190:	e1520003 	cmp	r2, r3
    1194:	1a000007 	bne	11b8 <malloc+0x13c>
    1198:	e51b0010 	ldr	r0, [fp, #-16]
    119c:	ebffff94 	bl	ff4 <morecore>
    11a0:	e50b0008 	str	r0, [fp, #-8]
    11a4:	e51b3008 	ldr	r3, [fp, #-8]
    11a8:	e3530000 	cmp	r3, #0
    11ac:	1a000001 	bne	11b8 <malloc+0x13c>
    11b0:	e3a03000 	mov	r3, #0
    11b4:	ea000005 	b	11d0 <malloc+0x154>
    11b8:	e51b3008 	ldr	r3, [fp, #-8]
    11bc:	e50b300c 	str	r3, [fp, #-12]
    11c0:	e51b3008 	ldr	r3, [fp, #-8]
    11c4:	e5933000 	ldr	r3, [r3]
    11c8:	e50b3008 	str	r3, [fp, #-8]
    11cc:	eaffffc8 	b	10f4 <malloc+0x78>
    11d0:	e1a00003 	mov	r0, r3
    11d4:	e24bd004 	sub	sp, fp, #4
    11d8:	e8bd8800 	pop	{fp, pc}
    11dc:	00001350 	.word	0x00001350
    11e0:	00001348 	.word	0x00001348

000011e4 <__udivsi3>:
    11e4:	e2512001 	subs	r2, r1, #1
    11e8:	012fff1e 	bxeq	lr
    11ec:	3a000036 	bcc	12cc <__udivsi3+0xe8>
    11f0:	e1500001 	cmp	r0, r1
    11f4:	9a000022 	bls	1284 <__udivsi3+0xa0>
    11f8:	e1110002 	tst	r1, r2
    11fc:	0a000023 	beq	1290 <__udivsi3+0xac>
    1200:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
    1204:	01a01181 	lsleq	r1, r1, #3
    1208:	03a03008 	moveq	r3, #8
    120c:	13a03001 	movne	r3, #1
    1210:	e3510201 	cmp	r1, #268435456	@ 0x10000000
    1214:	31510000 	cmpcc	r1, r0
    1218:	31a01201 	lslcc	r1, r1, #4
    121c:	31a03203 	lslcc	r3, r3, #4
    1220:	3afffffa 	bcc	1210 <__udivsi3+0x2c>
    1224:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
    1228:	31510000 	cmpcc	r1, r0
    122c:	31a01081 	lslcc	r1, r1, #1
    1230:	31a03083 	lslcc	r3, r3, #1
    1234:	3afffffa 	bcc	1224 <__udivsi3+0x40>
    1238:	e3a02000 	mov	r2, #0
    123c:	e1500001 	cmp	r0, r1
    1240:	20400001 	subcs	r0, r0, r1
    1244:	21822003 	orrcs	r2, r2, r3
    1248:	e15000a1 	cmp	r0, r1, lsr #1
    124c:	204000a1 	subcs	r0, r0, r1, lsr #1
    1250:	218220a3 	orrcs	r2, r2, r3, lsr #1
    1254:	e1500121 	cmp	r0, r1, lsr #2
    1258:	20400121 	subcs	r0, r0, r1, lsr #2
    125c:	21822123 	orrcs	r2, r2, r3, lsr #2
    1260:	e15001a1 	cmp	r0, r1, lsr #3
    1264:	204001a1 	subcs	r0, r0, r1, lsr #3
    1268:	218221a3 	orrcs	r2, r2, r3, lsr #3
    126c:	e3500000 	cmp	r0, #0
    1270:	11b03223 	lsrsne	r3, r3, #4
    1274:	11a01221 	lsrne	r1, r1, #4
    1278:	1affffef 	bne	123c <__udivsi3+0x58>
    127c:	e1a00002 	mov	r0, r2
    1280:	e12fff1e 	bx	lr
    1284:	03a00001 	moveq	r0, #1
    1288:	13a00000 	movne	r0, #0
    128c:	e12fff1e 	bx	lr
    1290:	e3510801 	cmp	r1, #65536	@ 0x10000
    1294:	21a01821 	lsrcs	r1, r1, #16
    1298:	23a02010 	movcs	r2, #16
    129c:	33a02000 	movcc	r2, #0
    12a0:	e3510c01 	cmp	r1, #256	@ 0x100
    12a4:	21a01421 	lsrcs	r1, r1, #8
    12a8:	22822008 	addcs	r2, r2, #8
    12ac:	e3510010 	cmp	r1, #16
    12b0:	21a01221 	lsrcs	r1, r1, #4
    12b4:	22822004 	addcs	r2, r2, #4
    12b8:	e3510004 	cmp	r1, #4
    12bc:	82822003 	addhi	r2, r2, #3
    12c0:	908220a1 	addls	r2, r2, r1, lsr #1
    12c4:	e1a00230 	lsr	r0, r0, r2
    12c8:	e12fff1e 	bx	lr
    12cc:	e3500000 	cmp	r0, #0
    12d0:	13e00000 	mvnne	r0, #0
    12d4:	ea000007 	b	12f8 <__aeabi_idiv0>

000012d8 <__aeabi_uidivmod>:
    12d8:	e3510000 	cmp	r1, #0
    12dc:	0afffffa 	beq	12cc <__udivsi3+0xe8>
    12e0:	e92d4003 	push	{r0, r1, lr}
    12e4:	ebffffbe 	bl	11e4 <__udivsi3>
    12e8:	e8bd4006 	pop	{r1, r2, lr}
    12ec:	e0030092 	mul	r3, r2, r0
    12f0:	e0411003 	sub	r1, r1, r3
    12f4:	e12fff1e 	bx	lr

000012f8 <__aeabi_idiv0>:
    12f8:	e12fff1e 	bx	lr
