
kernel.elf:     file format elf32-littlearm


Disassembly of section .start_sec:

00010000 <_start>:
   10000:	e59f1030 	ldr	r1, [pc, #48]	@ 10038 <jump_stack+0x10>
   10004:	e59f2030 	ldr	r2, [pc, #48]	@ 1003c <jump_stack+0x14>
   10008:	e3a03000 	mov	r3, #0
   1000c:	e1510002 	cmp	r1, r2
   10010:	b8a10008 	stmialt	r1!, {r3}
   10014:	bafffffc 	blt	1000c <_start+0xc>
   10018:	e32ff0d3 	msr	CPSR_fsxc, #211	@ 0xd3
   1001c:	e59fd01c 	ldr	sp, [pc, #28]	@ 10040 <jump_stack+0x18>
   10020:	eb0000f9 	bl	1040c <start>
   10024:	eafffffe 	b	10024 <_start+0x24>

00010028 <jump_stack>:
   10028:	e1a0000d 	mov	r0, sp
   1002c:	e2800102 	add	r0, r0, #-2147483648	@ 0x80000000
   10030:	e1a0d000 	mov	sp, r0
   10034:	e1a0f00e 	mov	pc, lr
   10038:	00010570 	.word	0x00010570
   1003c:	00019000 	.word	0x00019000
   10040:	00012000 	.word	0x00012000

00010044 <_uart_putc>:
   10044:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10048:	e28db000 	add	fp, sp, #0
   1004c:	e24dd014 	sub	sp, sp, #20
   10050:	e50b0010 	str	r0, [fp, #-16]
   10054:	e59f3020 	ldr	r3, [pc, #32]	@ 1007c <_uart_putc+0x38>
   10058:	e50b3008 	str	r3, [fp, #-8]
   1005c:	e51b3010 	ldr	r3, [fp, #-16]
   10060:	e6ef2073 	uxtb	r2, r3
   10064:	e51b3008 	ldr	r3, [fp, #-8]
   10068:	e5c32000 	strb	r2, [r3]
   1006c:	e1a00000 	nop			@ (mov r0, r0)
   10070:	e28bd000 	add	sp, fp, #0
   10074:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10078:	e12fff1e 	bx	lr
   1007c:	101f1000 	.word	0x101f1000

00010080 <_puts>:
   10080:	e92d4800 	push	{fp, lr}
   10084:	e28db004 	add	fp, sp, #4
   10088:	e24dd008 	sub	sp, sp, #8
   1008c:	e50b0008 	str	r0, [fp, #-8]
   10090:	ea000006 	b	100b0 <_puts+0x30>
   10094:	e51b3008 	ldr	r3, [fp, #-8]
   10098:	e5d33000 	ldrb	r3, [r3]
   1009c:	e1a00003 	mov	r0, r3
   100a0:	ebffffe7 	bl	10044 <_uart_putc>
   100a4:	e51b3008 	ldr	r3, [fp, #-8]
   100a8:	e2833001 	add	r3, r3, #1
   100ac:	e50b3008 	str	r3, [fp, #-8]
   100b0:	e51b3008 	ldr	r3, [fp, #-8]
   100b4:	e5d33000 	ldrb	r3, [r3]
   100b8:	e3530000 	cmp	r3, #0
   100bc:	1afffff4 	bne	10094 <_puts+0x14>
   100c0:	e1a00000 	nop			@ (mov r0, r0)
   100c4:	e1a00000 	nop			@ (mov r0, r0)
   100c8:	e24bd004 	sub	sp, fp, #4
   100cc:	e8bd8800 	pop	{fp, pc}

000100d0 <_putint>:
   100d0:	e92d4800 	push	{fp, lr}
   100d4:	e28db004 	add	fp, sp, #4
   100d8:	e24dd018 	sub	sp, sp, #24
   100dc:	e50b0010 	str	r0, [fp, #-16]
   100e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   100e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   100e8:	e59f307c 	ldr	r3, [pc, #124]	@ 1016c <_putint+0x9c>
   100ec:	e50b300c 	str	r3, [fp, #-12]
   100f0:	e51b3010 	ldr	r3, [fp, #-16]
   100f4:	e3530000 	cmp	r3, #0
   100f8:	0a000001 	beq	10104 <_putint+0x34>
   100fc:	e51b0010 	ldr	r0, [fp, #-16]
   10100:	ebffffde 	bl	10080 <_puts>
   10104:	e3a0301c 	mov	r3, #28
   10108:	e50b3008 	str	r3, [fp, #-8]
   1010c:	ea00000b 	b	10140 <_putint+0x70>
   10110:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
   10114:	e51b3008 	ldr	r3, [fp, #-8]
   10118:	e1a03332 	lsr	r3, r2, r3
   1011c:	e203300f 	and	r3, r3, #15
   10120:	e51b200c 	ldr	r2, [fp, #-12]
   10124:	e0823003 	add	r3, r2, r3
   10128:	e5d33000 	ldrb	r3, [r3]
   1012c:	e1a00003 	mov	r0, r3
   10130:	ebffffc3 	bl	10044 <_uart_putc>
   10134:	e51b3008 	ldr	r3, [fp, #-8]
   10138:	e2433004 	sub	r3, r3, #4
   1013c:	e50b3008 	str	r3, [fp, #-8]
   10140:	e51b3008 	ldr	r3, [fp, #-8]
   10144:	e3530000 	cmp	r3, #0
   10148:	aafffff0 	bge	10110 <_putint+0x40>
   1014c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   10150:	e3530000 	cmp	r3, #0
   10154:	0a000001 	beq	10160 <_putint+0x90>
   10158:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
   1015c:	ebffffc7 	bl	10080 <_puts>
   10160:	e1a00000 	nop			@ (mov r0, r0)
   10164:	e24bd004 	sub	sp, fp, #4
   10168:	e8bd8800 	pop	{fp, pc}
   1016c:	000104f8 	.word	0x000104f8

00010170 <get_pde>:
   10170:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   10174:	e28db000 	add	fp, sp, #0
   10178:	e24dd00c 	sub	sp, sp, #12
   1017c:	e50b0008 	str	r0, [fp, #-8]
   10180:	e51b3008 	ldr	r3, [fp, #-8]
   10184:	e1a03a23 	lsr	r3, r3, #20
   10188:	e50b3008 	str	r3, [fp, #-8]
   1018c:	e59f3020 	ldr	r3, [pc, #32]	@ 101b4 <get_pde+0x44>
   10190:	e5932000 	ldr	r2, [r3]
   10194:	e51b3008 	ldr	r3, [fp, #-8]
   10198:	e1a03103 	lsl	r3, r3, #2
   1019c:	e0823003 	add	r3, r2, r3
   101a0:	e5933000 	ldr	r3, [r3]
   101a4:	e1a00003 	mov	r0, r3
   101a8:	e28bd000 	add	sp, fp, #0
   101ac:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   101b0:	e12fff1e 	bx	lr
   101b4:	00010568 	.word	0x00010568

000101b8 <set_bootpgtbl>:
   101b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   101bc:	e28db000 	add	fp, sp, #0
   101c0:	e24dd01c 	sub	sp, sp, #28
   101c4:	e50b0010 	str	r0, [fp, #-16]
   101c8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
   101cc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
   101d0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
   101d4:	e51b3010 	ldr	r3, [fp, #-16]
   101d8:	e1a03a23 	lsr	r3, r3, #20
   101dc:	e50b3010 	str	r3, [fp, #-16]
   101e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   101e4:	e1a03a23 	lsr	r3, r3, #20
   101e8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   101ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
   101f0:	e1a03a23 	lsr	r3, r3, #20
   101f4:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
   101f8:	e3a03000 	mov	r3, #0
   101fc:	e50b300c 	str	r3, [fp, #-12]
   10200:	ea000029 	b	102ac <set_bootpgtbl+0xf4>
   10204:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10208:	e1a03a03 	lsl	r3, r3, #20
   1020c:	e50b3008 	str	r3, [fp, #-8]
   10210:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   10214:	e3530000 	cmp	r3, #0
   10218:	1a000004 	bne	10230 <set_bootpgtbl+0x78>
   1021c:	e51b3008 	ldr	r3, [fp, #-8]
   10220:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10224:	e383300e 	orr	r3, r3, #14
   10228:	e50b3008 	str	r3, [fp, #-8]
   1022c:	ea000003 	b	10240 <set_bootpgtbl+0x88>
   10230:	e51b3008 	ldr	r3, [fp, #-8]
   10234:	e3833b01 	orr	r3, r3, #1024	@ 0x400
   10238:	e3833002 	orr	r3, r3, #2
   1023c:	e50b3008 	str	r3, [fp, #-8]
   10240:	e51b3010 	ldr	r3, [fp, #-16]
   10244:	e35300ff 	cmp	r3, #255	@ 0xff
   10248:	8a000007 	bhi	1026c <set_bootpgtbl+0xb4>
   1024c:	e59f307c 	ldr	r3, [pc, #124]	@ 102d0 <set_bootpgtbl+0x118>
   10250:	e5932000 	ldr	r2, [r3]
   10254:	e51b3010 	ldr	r3, [fp, #-16]
   10258:	e1a03103 	lsl	r3, r3, #2
   1025c:	e0823003 	add	r3, r2, r3
   10260:	e51b2008 	ldr	r2, [fp, #-8]
   10264:	e5832000 	str	r2, [r3]
   10268:	ea000006 	b	10288 <set_bootpgtbl+0xd0>
   1026c:	e59f3060 	ldr	r3, [pc, #96]	@ 102d4 <set_bootpgtbl+0x11c>
   10270:	e5932000 	ldr	r2, [r3]
   10274:	e51b3010 	ldr	r3, [fp, #-16]
   10278:	e1a03103 	lsl	r3, r3, #2
   1027c:	e0823003 	add	r3, r2, r3
   10280:	e51b2008 	ldr	r2, [fp, #-8]
   10284:	e5832000 	str	r2, [r3]
   10288:	e51b3010 	ldr	r3, [fp, #-16]
   1028c:	e2833001 	add	r3, r3, #1
   10290:	e50b3010 	str	r3, [fp, #-16]
   10294:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
   10298:	e2833001 	add	r3, r3, #1
   1029c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
   102a0:	e51b300c 	ldr	r3, [fp, #-12]
   102a4:	e2833001 	add	r3, r3, #1
   102a8:	e50b300c 	str	r3, [fp, #-12]
   102ac:	e51b300c 	ldr	r3, [fp, #-12]
   102b0:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
   102b4:	e1520003 	cmp	r2, r3
   102b8:	8affffd1 	bhi	10204 <set_bootpgtbl+0x4c>
   102bc:	e1a00000 	nop			@ (mov r0, r0)
   102c0:	e1a00000 	nop			@ (mov r0, r0)
   102c4:	e28bd000 	add	sp, fp, #0
   102c8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   102cc:	e12fff1e 	bx	lr
   102d0:	0001056c 	.word	0x0001056c
   102d4:	00010568 	.word	0x00010568

000102d8 <_flush_all>:
   102d8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
   102dc:	e28db000 	add	fp, sp, #0
   102e0:	e24dd00c 	sub	sp, sp, #12
   102e4:	e3a03000 	mov	r3, #0
   102e8:	e50b3008 	str	r3, [fp, #-8]
   102ec:	e51b3008 	ldr	r3, [fp, #-8]
   102f0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
   102f4:	e1a00000 	nop			@ (mov r0, r0)
   102f8:	e28bd000 	add	sp, fp, #0
   102fc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
   10300:	e12fff1e 	bx	lr

00010304 <load_pgtlb>:
   10304:	e92d4800 	push	{fp, lr}
   10308:	e28db004 	add	fp, sp, #4
   1030c:	e24dd018 	sub	sp, sp, #24
   10310:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
   10314:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
   10318:	ee103f10 	mrc	15, 0, r3, cr0, cr0, {0}
   1031c:	e50b3008 	str	r3, [fp, #-8]
   10320:	e51b3008 	ldr	r3, [fp, #-8]
   10324:	e1a03823 	lsr	r3, r3, #16
   10328:	e6ef3073 	uxtb	r3, r3
   1032c:	e203300f 	and	r3, r3, #15
   10330:	e54b3009 	strb	r3, [fp, #-9]
   10334:	e55b3009 	ldrb	r3, [fp, #-9]
   10338:	e3530007 	cmp	r3, #7
   1033c:	0a000004 	beq	10354 <load_pgtlb+0x50>
   10340:	e55b3009 	ldrb	r3, [fp, #-9]
   10344:	e353000f 	cmp	r3, #15
   10348:	0a000001 	beq	10354 <load_pgtlb+0x50>
   1034c:	e59f0074 	ldr	r0, [pc, #116]	@ 103c8 <load_pgtlb+0xc4>
   10350:	ebffff4a 	bl	10080 <_puts>
   10354:	e59f3070 	ldr	r3, [pc, #112]	@ 103cc <load_pgtlb+0xc8>
   10358:	e50b3010 	str	r3, [fp, #-16]
   1035c:	e51b3010 	ldr	r3, [fp, #-16]
   10360:	ee033f10 	mcr	15, 0, r3, cr3, cr0, {0}
   10364:	e3a03004 	mov	r3, #4
   10368:	e50b3010 	str	r3, [fp, #-16]
   1036c:	e51b3010 	ldr	r3, [fp, #-16]
   10370:	ee023f50 	mcr	15, 0, r3, cr2, cr0, {2}
   10374:	e59f3054 	ldr	r3, [pc, #84]	@ 103d0 <load_pgtlb+0xcc>
   10378:	e5933000 	ldr	r3, [r3]
   1037c:	e50b3010 	str	r3, [fp, #-16]
   10380:	e51b3010 	ldr	r3, [fp, #-16]
   10384:	ee023f30 	mcr	15, 0, r3, cr2, cr0, {1}
   10388:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
   1038c:	e50b3010 	str	r3, [fp, #-16]
   10390:	e51b3010 	ldr	r3, [fp, #-16]
   10394:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
   10398:	ee113f10 	mrc	15, 0, r3, cr1, cr0, {0}
   1039c:	e50b3010 	str	r3, [fp, #-16]
   103a0:	e51b2010 	ldr	r2, [fp, #-16]
   103a4:	e59f3028 	ldr	r3, [pc, #40]	@ 103d4 <load_pgtlb+0xd0>
   103a8:	e1823003 	orr	r3, r2, r3
   103ac:	e50b3010 	str	r3, [fp, #-16]
   103b0:	e51b3010 	ldr	r3, [fp, #-16]
   103b4:	ee013f10 	mcr	15, 0, r3, cr1, cr0, {0}
   103b8:	ebffffc6 	bl	102d8 <_flush_all>
   103bc:	e1a00000 	nop			@ (mov r0, r0)
   103c0:	e24bd004 	sub	sp, fp, #4
   103c4:	e8bd8800 	pop	{fp, pc}
   103c8:	0001050c 	.word	0x0001050c
   103cc:	55555555 	.word	0x55555555
   103d0:	00010568 	.word	0x00010568
   103d4:	0080300d 	.word	0x0080300d

000103d8 <clear_bss>:
   103d8:	e92d4800 	push	{fp, lr}
   103dc:	e28db004 	add	fp, sp, #4
   103e0:	e59f201c 	ldr	r2, [pc, #28]	@ 10404 <clear_bss+0x2c>
   103e4:	e59f301c 	ldr	r3, [pc, #28]	@ 10408 <clear_bss+0x30>
   103e8:	e0423003 	sub	r3, r2, r3
   103ec:	e1a02003 	mov	r2, r3
   103f0:	e3a01000 	mov	r1, #0
   103f4:	e59f000c 	ldr	r0, [pc, #12]	@ 10408 <clear_bss+0x30>
   103f8:	eb000038 	bl	104e0 <__memset_veneer>
   103fc:	e1a00000 	nop			@ (mov r0, r0)
   10400:	e8bd8800 	pop	{fp, pc}
   10404:	800b0000 	.word	0x800b0000
   10408:	800aa0cc 	.word	0x800aa0cc

0001040c <start>:
   1040c:	e92d4800 	push	{fp, lr}
   10410:	e28db004 	add	fp, sp, #4
   10414:	e24dd008 	sub	sp, sp, #8
   10418:	e59f00a4 	ldr	r0, [pc, #164]	@ 104c4 <start+0xb8>
   1041c:	ebffff17 	bl	10080 <_puts>
   10420:	e3a03000 	mov	r3, #0
   10424:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10428:	e3a01000 	mov	r1, #0
   1042c:	e3a00000 	mov	r0, #0
   10430:	ebffff60 	bl	101b8 <set_bootpgtbl>
   10434:	e3a03000 	mov	r3, #0
   10438:	e3a02601 	mov	r2, #1048576	@ 0x100000
   1043c:	e3a01000 	mov	r1, #0
   10440:	e3a00102 	mov	r0, #-2147483648	@ 0x80000000
   10444:	ebffff5b 	bl	101b8 <set_bootpgtbl>
   10448:	e59f3078 	ldr	r3, [pc, #120]	@ 104c8 <start+0xbc>
   1044c:	e50b3008 	str	r3, [fp, #-8]
   10450:	e59f2074 	ldr	r2, [pc, #116]	@ 104cc <start+0xc0>
   10454:	e51b3008 	ldr	r3, [fp, #-8]
   10458:	e1530002 	cmp	r3, r2
   1045c:	8a000001 	bhi	10468 <start+0x5c>
   10460:	e59f0068 	ldr	r0, [pc, #104]	@ 104d0 <start+0xc4>
   10464:	eb00001f 	bl	104e8 <__cprintf_veneer>
   10468:	e3a03000 	mov	r3, #0
   1046c:	e3a02601 	mov	r2, #1048576	@ 0x100000
   10470:	e3a01000 	mov	r1, #0
   10474:	e59f0058 	ldr	r0, [pc, #88]	@ 104d4 <start+0xc8>
   10478:	ebffff4e 	bl	101b8 <set_bootpgtbl>
   1047c:	e3a03001 	mov	r3, #1
   10480:	e3a02302 	mov	r2, #134217728	@ 0x8000000
   10484:	e3a01201 	mov	r1, #268435456	@ 0x10000000
   10488:	e3a00209 	mov	r0, #-1879048192	@ 0x90000000
   1048c:	ebffff49 	bl	101b8 <set_bootpgtbl>
   10490:	e59f3040 	ldr	r3, [pc, #64]	@ 104d8 <start+0xcc>
   10494:	e5933000 	ldr	r3, [r3]
   10498:	e59f203c 	ldr	r2, [pc, #60]	@ 104dc <start+0xd0>
   1049c:	e5922000 	ldr	r2, [r2]
   104a0:	e1a01002 	mov	r1, r2
   104a4:	e1a00003 	mov	r0, r3
   104a8:	ebffff95 	bl	10304 <load_pgtlb>
   104ac:	ebfffedd 	bl	10028 <jump_stack>
   104b0:	ebffffc8 	bl	103d8 <clear_bss>
   104b4:	eb00000d 	bl	104f0 <__kmain_veneer>
   104b8:	e1a00000 	nop			@ (mov r0, r0)
   104bc:	e24bd004 	sub	sp, fp, #4
   104c0:	e8bd8800 	pop	{fp, pc}
   104c4:	00010524 	.word	0x00010524
   104c8:	800f0000 	.word	0x800f0000
   104cc:	800b0000 	.word	0x800b0000
   104d0:	00010540 	.word	0x00010540
   104d4:	ffff0000 	.word	0xffff0000
   104d8:	00010568 	.word	0x00010568
   104dc:	0001056c 	.word	0x0001056c

000104e0 <__memset_veneer>:
   104e0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104e4 <__memset_veneer+0x4>
   104e4:	80020000 	.word	0x80020000

000104e8 <__cprintf_veneer>:
   104e8:	e51ff004 	ldr	pc, [pc, #-4]	@ 104ec <__cprintf_veneer+0x4>
   104ec:	80021894 	.word	0x80021894

000104f0 <__kmain_veneer>:
   104f0:	e51ff004 	ldr	pc, [pc, #-4]	@ 104f4 <__kmain_veneer+0x4>
   104f4:	800245e4 	.word	0x800245e4
   104f8:	33323130 	.word	0x33323130
   104fc:	37363534 	.word	0x37363534
   10500:	42413938 	.word	0x42413938
   10504:	46454443 	.word	0x46454443
   10508:	00000000 	.word	0x00000000
   1050c:	6465656e 	.word	0x6465656e
   10510:	52414120 	.word	0x52414120
   10514:	3676204d 	.word	0x3676204d
   10518:	20726f20 	.word	0x20726f20
   1051c:	68676968 	.word	0x68676968
   10520:	000a7265 	.word	0x000a7265
   10524:	72617473 	.word	0x72617473
   10528:	676e6974 	.word	0x676e6974
   1052c:	36767820 	.word	0x36767820
   10530:	726f6620 	.word	0x726f6620
   10534:	4d524120 	.word	0x4d524120
   10538:	0a2e2e2e 	.word	0x0a2e2e2e
   1053c:	00000000 	.word	0x00000000
   10540:	6f727265 	.word	0x6f727265
   10544:	76203a72 	.word	0x76203a72
   10548:	6f746365 	.word	0x6f746365
   1054c:	61742072 	.word	0x61742072
   10550:	20656c62 	.word	0x20656c62
   10554:	7265766f 	.word	0x7265766f
   10558:	7370616c 	.word	0x7370616c
   1055c:	72656b20 	.word	0x72656b20
   10560:	0a6c656e 	.word	0x0a6c656e
   10564:	00000000 	.word	0x00000000

00010568 <kernel_pgtbl>:
   10568:	00014000                                .@..

0001056c <user_pgtbl>:
   1056c:	00018000                                ....

00010570 <edata_entry>:
	...

00012000 <svc_stktop>:
	...

00014000 <_kernel_pgtbl>:
	...

00018000 <_user_pgtbl>:
	...

Disassembly of section .text:

80020000 <memset>:
80020000:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020004:	e28db000 	add	fp, sp, #0
80020008:	e24dd024 	sub	sp, sp, #36	@ 0x24
8002000c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80020010:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80020014:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80020018:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002001c:	e50b3008 	str	r3, [fp, #-8]
80020020:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020024:	e54b300d 	strb	r3, [fp, #-13]
80020028:	e55b200d 	ldrb	r2, [fp, #-13]
8002002c:	e1a03002 	mov	r3, r2
80020030:	e1a03403 	lsl	r3, r3, #8
80020034:	e0833002 	add	r3, r3, r2
80020038:	e1a03803 	lsl	r3, r3, #16
8002003c:	e1a02003 	mov	r2, r3
80020040:	e55b300d 	ldrb	r3, [fp, #-13]
80020044:	e1a03403 	lsl	r3, r3, #8
80020048:	e1822003 	orr	r2, r2, r3
8002004c:	e55b300d 	ldrb	r3, [fp, #-13]
80020050:	e1823003 	orr	r3, r2, r3
80020054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020058:	ea000008 	b	80020080 <memset+0x80>
8002005c:	e51b3008 	ldr	r3, [fp, #-8]
80020060:	e55b200d 	ldrb	r2, [fp, #-13]
80020064:	e5c32000 	strb	r2, [r3]
80020068:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002006c:	e2433001 	sub	r3, r3, #1
80020070:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80020074:	e51b3008 	ldr	r3, [fp, #-8]
80020078:	e2833001 	add	r3, r3, #1
8002007c:	e50b3008 	str	r3, [fp, #-8]
80020080:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020084:	e3530000 	cmp	r3, #0
80020088:	da000003 	ble	8002009c <memset+0x9c>
8002008c:	e51b3008 	ldr	r3, [fp, #-8]
80020090:	e2033003 	and	r3, r3, #3
80020094:	e3530000 	cmp	r3, #0
80020098:	1affffef 	bne	8002005c <memset+0x5c>
8002009c:	e51b3008 	ldr	r3, [fp, #-8]
800200a0:	e50b300c 	str	r3, [fp, #-12]
800200a4:	ea000008 	b	800200cc <memset+0xcc>
800200a8:	e51b300c 	ldr	r3, [fp, #-12]
800200ac:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800200b0:	e5832000 	str	r2, [r3]
800200b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200b8:	e2433004 	sub	r3, r3, #4
800200bc:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200c0:	e51b300c 	ldr	r3, [fp, #-12]
800200c4:	e2833004 	add	r3, r3, #4
800200c8:	e50b300c 	str	r3, [fp, #-12]
800200cc:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200d0:	e3530003 	cmp	r3, #3
800200d4:	cafffff3 	bgt	800200a8 <memset+0xa8>
800200d8:	e51b300c 	ldr	r3, [fp, #-12]
800200dc:	e50b3008 	str	r3, [fp, #-8]
800200e0:	ea000008 	b	80020108 <memset+0x108>
800200e4:	e51b3008 	ldr	r3, [fp, #-8]
800200e8:	e55b200d 	ldrb	r2, [fp, #-13]
800200ec:	e5c32000 	strb	r2, [r3]
800200f0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800200f4:	e2433001 	sub	r3, r3, #1
800200f8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800200fc:	e51b3008 	ldr	r3, [fp, #-8]
80020100:	e2833001 	add	r3, r3, #1
80020104:	e50b3008 	str	r3, [fp, #-8]
80020108:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002010c:	e3530000 	cmp	r3, #0
80020110:	cafffff3 	bgt	800200e4 <memset+0xe4>
80020114:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020118:	e1a00003 	mov	r0, r3
8002011c:	e28bd000 	add	sp, fp, #0
80020120:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020124:	e12fff1e 	bx	lr

80020128 <memcmp>:
80020128:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002012c:	e28db000 	add	fp, sp, #0
80020130:	e24dd01c 	sub	sp, sp, #28
80020134:	e50b0010 	str	r0, [fp, #-16]
80020138:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002013c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020140:	e51b3010 	ldr	r3, [fp, #-16]
80020144:	e50b3008 	str	r3, [fp, #-8]
80020148:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002014c:	e50b300c 	str	r3, [fp, #-12]
80020150:	ea000012 	b	800201a0 <memcmp+0x78>
80020154:	e51b3008 	ldr	r3, [fp, #-8]
80020158:	e5d32000 	ldrb	r2, [r3]
8002015c:	e51b300c 	ldr	r3, [fp, #-12]
80020160:	e5d33000 	ldrb	r3, [r3]
80020164:	e1520003 	cmp	r2, r3
80020168:	0a000006 	beq	80020188 <memcmp+0x60>
8002016c:	e51b3008 	ldr	r3, [fp, #-8]
80020170:	e5d33000 	ldrb	r3, [r3]
80020174:	e1a02003 	mov	r2, r3
80020178:	e51b300c 	ldr	r3, [fp, #-12]
8002017c:	e5d33000 	ldrb	r3, [r3]
80020180:	e0423003 	sub	r3, r2, r3
80020184:	ea00000b 	b	800201b8 <memcmp+0x90>
80020188:	e51b3008 	ldr	r3, [fp, #-8]
8002018c:	e2833001 	add	r3, r3, #1
80020190:	e50b3008 	str	r3, [fp, #-8]
80020194:	e51b300c 	ldr	r3, [fp, #-12]
80020198:	e2833001 	add	r3, r3, #1
8002019c:	e50b300c 	str	r3, [fp, #-12]
800201a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800201a4:	e2432001 	sub	r2, r3, #1
800201a8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201ac:	e3530000 	cmp	r3, #0
800201b0:	1affffe7 	bne	80020154 <memcmp+0x2c>
800201b4:	e3a03000 	mov	r3, #0
800201b8:	e1a00003 	mov	r0, r3
800201bc:	e28bd000 	add	sp, fp, #0
800201c0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800201c4:	e12fff1e 	bx	lr

800201c8 <memmove>:
800201c8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800201cc:	e28db000 	add	fp, sp, #0
800201d0:	e24dd01c 	sub	sp, sp, #28
800201d4:	e50b0010 	str	r0, [fp, #-16]
800201d8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800201dc:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800201e0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800201e4:	e50b3008 	str	r3, [fp, #-8]
800201e8:	e51b3010 	ldr	r3, [fp, #-16]
800201ec:	e50b300c 	str	r3, [fp, #-12]
800201f0:	e51b2008 	ldr	r2, [fp, #-8]
800201f4:	e51b300c 	ldr	r3, [fp, #-12]
800201f8:	e1520003 	cmp	r2, r3
800201fc:	2a000026 	bcs	8002029c <memmove+0xd4>
80020200:	e51b2008 	ldr	r2, [fp, #-8]
80020204:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020208:	e0823003 	add	r3, r2, r3
8002020c:	e51b200c 	ldr	r2, [fp, #-12]
80020210:	e1520003 	cmp	r2, r3
80020214:	2a000020 	bcs	8002029c <memmove+0xd4>
80020218:	e51b2008 	ldr	r2, [fp, #-8]
8002021c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020220:	e0823003 	add	r3, r2, r3
80020224:	e50b3008 	str	r3, [fp, #-8]
80020228:	e51b200c 	ldr	r2, [fp, #-12]
8002022c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020230:	e0823003 	add	r3, r2, r3
80020234:	e50b300c 	str	r3, [fp, #-12]
80020238:	ea000009 	b	80020264 <memmove+0x9c>
8002023c:	e51b3008 	ldr	r3, [fp, #-8]
80020240:	e2433001 	sub	r3, r3, #1
80020244:	e50b3008 	str	r3, [fp, #-8]
80020248:	e51b300c 	ldr	r3, [fp, #-12]
8002024c:	e2433001 	sub	r3, r3, #1
80020250:	e50b300c 	str	r3, [fp, #-12]
80020254:	e51b3008 	ldr	r3, [fp, #-8]
80020258:	e5d32000 	ldrb	r2, [r3]
8002025c:	e51b300c 	ldr	r3, [fp, #-12]
80020260:	e5c32000 	strb	r2, [r3]
80020264:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020268:	e2432001 	sub	r2, r3, #1
8002026c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020270:	e3530000 	cmp	r3, #0
80020274:	1afffff0 	bne	8002023c <memmove+0x74>
80020278:	ea00000c 	b	800202b0 <memmove+0xe8>
8002027c:	e51b2008 	ldr	r2, [fp, #-8]
80020280:	e2823001 	add	r3, r2, #1
80020284:	e50b3008 	str	r3, [fp, #-8]
80020288:	e51b300c 	ldr	r3, [fp, #-12]
8002028c:	e2831001 	add	r1, r3, #1
80020290:	e50b100c 	str	r1, [fp, #-12]
80020294:	e5d22000 	ldrb	r2, [r2]
80020298:	e5c32000 	strb	r2, [r3]
8002029c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800202a0:	e2432001 	sub	r2, r3, #1
800202a4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800202a8:	e3530000 	cmp	r3, #0
800202ac:	1afffff2 	bne	8002027c <memmove+0xb4>
800202b0:	e51b3010 	ldr	r3, [fp, #-16]
800202b4:	e1a00003 	mov	r0, r3
800202b8:	e28bd000 	add	sp, fp, #0
800202bc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800202c0:	e12fff1e 	bx	lr

800202c4 <memcpy>:
800202c4:	e92d4800 	push	{fp, lr}
800202c8:	e28db004 	add	fp, sp, #4
800202cc:	e24dd010 	sub	sp, sp, #16
800202d0:	e50b0008 	str	r0, [fp, #-8]
800202d4:	e50b100c 	str	r1, [fp, #-12]
800202d8:	e50b2010 	str	r2, [fp, #-16]
800202dc:	e51b2010 	ldr	r2, [fp, #-16]
800202e0:	e51b100c 	ldr	r1, [fp, #-12]
800202e4:	e51b0008 	ldr	r0, [fp, #-8]
800202e8:	ebffffb6 	bl	800201c8 <memmove>
800202ec:	e1a03000 	mov	r3, r0
800202f0:	e1a00003 	mov	r0, r3
800202f4:	e24bd004 	sub	sp, fp, #4
800202f8:	e8bd8800 	pop	{fp, pc}

800202fc <strncmp>:
800202fc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020300:	e28db000 	add	fp, sp, #0
80020304:	e24dd014 	sub	sp, sp, #20
80020308:	e50b0008 	str	r0, [fp, #-8]
8002030c:	e50b100c 	str	r1, [fp, #-12]
80020310:	e50b2010 	str	r2, [fp, #-16]
80020314:	ea000008 	b	8002033c <strncmp+0x40>
80020318:	e51b3010 	ldr	r3, [fp, #-16]
8002031c:	e2433001 	sub	r3, r3, #1
80020320:	e50b3010 	str	r3, [fp, #-16]
80020324:	e51b3008 	ldr	r3, [fp, #-8]
80020328:	e2833001 	add	r3, r3, #1
8002032c:	e50b3008 	str	r3, [fp, #-8]
80020330:	e51b300c 	ldr	r3, [fp, #-12]
80020334:	e2833001 	add	r3, r3, #1
80020338:	e50b300c 	str	r3, [fp, #-12]
8002033c:	e51b3010 	ldr	r3, [fp, #-16]
80020340:	e3530000 	cmp	r3, #0
80020344:	0a000009 	beq	80020370 <strncmp+0x74>
80020348:	e51b3008 	ldr	r3, [fp, #-8]
8002034c:	e5d33000 	ldrb	r3, [r3]
80020350:	e3530000 	cmp	r3, #0
80020354:	0a000005 	beq	80020370 <strncmp+0x74>
80020358:	e51b3008 	ldr	r3, [fp, #-8]
8002035c:	e5d32000 	ldrb	r2, [r3]
80020360:	e51b300c 	ldr	r3, [fp, #-12]
80020364:	e5d33000 	ldrb	r3, [r3]
80020368:	e1520003 	cmp	r2, r3
8002036c:	0affffe9 	beq	80020318 <strncmp+0x1c>
80020370:	e51b3010 	ldr	r3, [fp, #-16]
80020374:	e3530000 	cmp	r3, #0
80020378:	1a000001 	bne	80020384 <strncmp+0x88>
8002037c:	e3a03000 	mov	r3, #0
80020380:	ea000005 	b	8002039c <strncmp+0xa0>
80020384:	e51b3008 	ldr	r3, [fp, #-8]
80020388:	e5d33000 	ldrb	r3, [r3]
8002038c:	e1a02003 	mov	r2, r3
80020390:	e51b300c 	ldr	r3, [fp, #-12]
80020394:	e5d33000 	ldrb	r3, [r3]
80020398:	e0423003 	sub	r3, r2, r3
8002039c:	e1a00003 	mov	r0, r3
800203a0:	e28bd000 	add	sp, fp, #0
800203a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800203a8:	e12fff1e 	bx	lr

800203ac <strncpy>:
800203ac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800203b0:	e28db000 	add	fp, sp, #0
800203b4:	e24dd01c 	sub	sp, sp, #28
800203b8:	e50b0010 	str	r0, [fp, #-16]
800203bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800203c0:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203c4:	e51b3010 	ldr	r3, [fp, #-16]
800203c8:	e50b3008 	str	r3, [fp, #-8]
800203cc:	e1a00000 	nop			@ (mov r0, r0)
800203d0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800203d4:	e2432001 	sub	r2, r3, #1
800203d8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800203dc:	e3530000 	cmp	r3, #0
800203e0:	da000010 	ble	80020428 <strncpy+0x7c>
800203e4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800203e8:	e2823001 	add	r3, r2, #1
800203ec:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800203f0:	e51b3010 	ldr	r3, [fp, #-16]
800203f4:	e2831001 	add	r1, r3, #1
800203f8:	e50b1010 	str	r1, [fp, #-16]
800203fc:	e5d22000 	ldrb	r2, [r2]
80020400:	e5c32000 	strb	r2, [r3]
80020404:	e5d33000 	ldrb	r3, [r3]
80020408:	e3530000 	cmp	r3, #0
8002040c:	1affffef 	bne	800203d0 <strncpy+0x24>
80020410:	ea000004 	b	80020428 <strncpy+0x7c>
80020414:	e51b3010 	ldr	r3, [fp, #-16]
80020418:	e2832001 	add	r2, r3, #1
8002041c:	e50b2010 	str	r2, [fp, #-16]
80020420:	e3a02000 	mov	r2, #0
80020424:	e5c32000 	strb	r2, [r3]
80020428:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002042c:	e2432001 	sub	r2, r3, #1
80020430:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020434:	e3530000 	cmp	r3, #0
80020438:	cafffff5 	bgt	80020414 <strncpy+0x68>
8002043c:	e51b3008 	ldr	r3, [fp, #-8]
80020440:	e1a00003 	mov	r0, r3
80020444:	e28bd000 	add	sp, fp, #0
80020448:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002044c:	e12fff1e 	bx	lr

80020450 <safestrcpy>:
80020450:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020454:	e28db000 	add	fp, sp, #0
80020458:	e24dd01c 	sub	sp, sp, #28
8002045c:	e50b0010 	str	r0, [fp, #-16]
80020460:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020464:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80020468:	e51b3010 	ldr	r3, [fp, #-16]
8002046c:	e50b3008 	str	r3, [fp, #-8]
80020470:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020474:	e3530000 	cmp	r3, #0
80020478:	ca000001 	bgt	80020484 <safestrcpy+0x34>
8002047c:	e51b3008 	ldr	r3, [fp, #-8]
80020480:	ea000015 	b	800204dc <safestrcpy+0x8c>
80020484:	e1a00000 	nop			@ (mov r0, r0)
80020488:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002048c:	e2433001 	sub	r3, r3, #1
80020490:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020494:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020498:	e3530000 	cmp	r3, #0
8002049c:	da00000a 	ble	800204cc <safestrcpy+0x7c>
800204a0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800204a4:	e2823001 	add	r3, r2, #1
800204a8:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800204ac:	e51b3010 	ldr	r3, [fp, #-16]
800204b0:	e2831001 	add	r1, r3, #1
800204b4:	e50b1010 	str	r1, [fp, #-16]
800204b8:	e5d22000 	ldrb	r2, [r2]
800204bc:	e5c32000 	strb	r2, [r3]
800204c0:	e5d33000 	ldrb	r3, [r3]
800204c4:	e3530000 	cmp	r3, #0
800204c8:	1affffee 	bne	80020488 <safestrcpy+0x38>
800204cc:	e51b3010 	ldr	r3, [fp, #-16]
800204d0:	e3a02000 	mov	r2, #0
800204d4:	e5c32000 	strb	r2, [r3]
800204d8:	e51b3008 	ldr	r3, [fp, #-8]
800204dc:	e1a00003 	mov	r0, r3
800204e0:	e28bd000 	add	sp, fp, #0
800204e4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800204e8:	e12fff1e 	bx	lr

800204ec <strlen>:
800204ec:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800204f0:	e28db000 	add	fp, sp, #0
800204f4:	e24dd014 	sub	sp, sp, #20
800204f8:	e50b0010 	str	r0, [fp, #-16]
800204fc:	e3a03000 	mov	r3, #0
80020500:	e50b3008 	str	r3, [fp, #-8]
80020504:	ea000002 	b	80020514 <strlen+0x28>
80020508:	e51b3008 	ldr	r3, [fp, #-8]
8002050c:	e2833001 	add	r3, r3, #1
80020510:	e50b3008 	str	r3, [fp, #-8]
80020514:	e51b3008 	ldr	r3, [fp, #-8]
80020518:	e51b2010 	ldr	r2, [fp, #-16]
8002051c:	e0823003 	add	r3, r2, r3
80020520:	e5d33000 	ldrb	r3, [r3]
80020524:	e3530000 	cmp	r3, #0
80020528:	1afffff6 	bne	80020508 <strlen+0x1c>
8002052c:	e51b3008 	ldr	r3, [fp, #-8]
80020530:	e1a00003 	mov	r0, r3
80020534:	e28bd000 	add	sp, fp, #0
80020538:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002053c:	e12fff1e 	bx	lr

80020540 <cli>:
80020540:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020544:	e28db000 	add	fp, sp, #0
80020548:	e24dd00c 	sub	sp, sp, #12
8002054c:	e10f3000 	mrs	r3, CPSR
80020550:	e50b3008 	str	r3, [fp, #-8]
80020554:	e51b3008 	ldr	r3, [fp, #-8]
80020558:	e3833080 	orr	r3, r3, #128	@ 0x80
8002055c:	e50b3008 	str	r3, [fp, #-8]
80020560:	e51b3008 	ldr	r3, [fp, #-8]
80020564:	e12ff003 	msr	CPSR_fsxc, r3
80020568:	e1a00000 	nop			@ (mov r0, r0)
8002056c:	e28bd000 	add	sp, fp, #0
80020570:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020574:	e12fff1e 	bx	lr

80020578 <sti>:
80020578:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002057c:	e28db000 	add	fp, sp, #0
80020580:	e24dd00c 	sub	sp, sp, #12
80020584:	e10f3000 	mrs	r3, CPSR
80020588:	e50b3008 	str	r3, [fp, #-8]
8002058c:	e51b3008 	ldr	r3, [fp, #-8]
80020590:	e3c33080 	bic	r3, r3, #128	@ 0x80
80020594:	e50b3008 	str	r3, [fp, #-8]
80020598:	e51b3008 	ldr	r3, [fp, #-8]
8002059c:	e12ff003 	msr	CPSR_fsxc, r3
800205a0:	e1a00000 	nop			@ (mov r0, r0)
800205a4:	e28bd000 	add	sp, fp, #0
800205a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ac:	e12fff1e 	bx	lr

800205b0 <spsr_usr>:
800205b0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205b4:	e28db000 	add	fp, sp, #0
800205b8:	e24dd00c 	sub	sp, sp, #12
800205bc:	e10f3000 	mrs	r3, CPSR
800205c0:	e50b3008 	str	r3, [fp, #-8]
800205c4:	e51b3008 	ldr	r3, [fp, #-8]
800205c8:	e3c3301f 	bic	r3, r3, #31
800205cc:	e50b3008 	str	r3, [fp, #-8]
800205d0:	e51b3008 	ldr	r3, [fp, #-8]
800205d4:	e3833010 	orr	r3, r3, #16
800205d8:	e50b3008 	str	r3, [fp, #-8]
800205dc:	e51b3008 	ldr	r3, [fp, #-8]
800205e0:	e1a00003 	mov	r0, r3
800205e4:	e28bd000 	add	sp, fp, #0
800205e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800205ec:	e12fff1e 	bx	lr

800205f0 <int_enabled>:
800205f0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800205f4:	e28db000 	add	fp, sp, #0
800205f8:	e24dd00c 	sub	sp, sp, #12
800205fc:	e10f3000 	mrs	r3, CPSR
80020600:	e50b3008 	str	r3, [fp, #-8]
80020604:	e51b3008 	ldr	r3, [fp, #-8]
80020608:	e2033080 	and	r3, r3, #128	@ 0x80
8002060c:	e3530000 	cmp	r3, #0
80020610:	03a03001 	moveq	r3, #1
80020614:	13a03000 	movne	r3, #0
80020618:	e6ef3073 	uxtb	r3, r3
8002061c:	e1a00003 	mov	r0, r3
80020620:	e28bd000 	add	sp, fp, #0
80020624:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020628:	e12fff1e 	bx	lr

8002062c <pushcli>:
8002062c:	e92d4800 	push	{fp, lr}
80020630:	e28db004 	add	fp, sp, #4
80020634:	e24dd008 	sub	sp, sp, #8
80020638:	ebffffec 	bl	800205f0 <int_enabled>
8002063c:	e50b0008 	str	r0, [fp, #-8]
80020640:	ebffffbe 	bl	80020540 <cli>
80020644:	e59f3030 	ldr	r3, [pc, #48]	@ 8002067c <pushcli+0x50>
80020648:	e5932000 	ldr	r2, [r3]
8002064c:	e592300c 	ldr	r3, [r2, #12]
80020650:	e2831001 	add	r1, r3, #1
80020654:	e582100c 	str	r1, [r2, #12]
80020658:	e3530000 	cmp	r3, #0
8002065c:	1a000003 	bne	80020670 <pushcli+0x44>
80020660:	e59f3014 	ldr	r3, [pc, #20]	@ 8002067c <pushcli+0x50>
80020664:	e5933000 	ldr	r3, [r3]
80020668:	e51b2008 	ldr	r2, [fp, #-8]
8002066c:	e5832010 	str	r2, [r3, #16]
80020670:	e1a00000 	nop			@ (mov r0, r0)
80020674:	e24bd004 	sub	sp, fp, #4
80020678:	e8bd8800 	pop	{fp, pc}
8002067c:	800ad604 	.word	0x800ad604

80020680 <popcli>:
80020680:	e92d4800 	push	{fp, lr}
80020684:	e28db004 	add	fp, sp, #4
80020688:	ebffffd8 	bl	800205f0 <int_enabled>
8002068c:	e1a03000 	mov	r3, r0
80020690:	e3530000 	cmp	r3, #0
80020694:	0a000001 	beq	800206a0 <popcli+0x20>
80020698:	e59f007c 	ldr	r0, [pc, #124]	@ 8002071c <popcli+0x9c>
8002069c:	eb000502 	bl	80021aac <panic>
800206a0:	e59f3078 	ldr	r3, [pc, #120]	@ 80020720 <popcli+0xa0>
800206a4:	e5933000 	ldr	r3, [r3]
800206a8:	e593200c 	ldr	r2, [r3, #12]
800206ac:	e2422001 	sub	r2, r2, #1
800206b0:	e583200c 	str	r2, [r3, #12]
800206b4:	e593300c 	ldr	r3, [r3, #12]
800206b8:	e3530000 	cmp	r3, #0
800206bc:	aa000009 	bge	800206e8 <popcli+0x68>
800206c0:	e59f3058 	ldr	r3, [pc, #88]	@ 80020720 <popcli+0xa0>
800206c4:	e5931000 	ldr	r1, [r3]
800206c8:	e59f3050 	ldr	r3, [pc, #80]	@ 80020720 <popcli+0xa0>
800206cc:	e5933000 	ldr	r3, [r3]
800206d0:	e593300c 	ldr	r3, [r3, #12]
800206d4:	e1a02003 	mov	r2, r3
800206d8:	e59f0044 	ldr	r0, [pc, #68]	@ 80020724 <popcli+0xa4>
800206dc:	eb00046c 	bl	80021894 <cprintf>
800206e0:	e59f0040 	ldr	r0, [pc, #64]	@ 80020728 <popcli+0xa8>
800206e4:	eb0004f0 	bl	80021aac <panic>
800206e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80020720 <popcli+0xa0>
800206ec:	e5933000 	ldr	r3, [r3]
800206f0:	e593300c 	ldr	r3, [r3, #12]
800206f4:	e3530000 	cmp	r3, #0
800206f8:	1a000005 	bne	80020714 <popcli+0x94>
800206fc:	e59f301c 	ldr	r3, [pc, #28]	@ 80020720 <popcli+0xa0>
80020700:	e5933000 	ldr	r3, [r3]
80020704:	e5933010 	ldr	r3, [r3, #16]
80020708:	e3530000 	cmp	r3, #0
8002070c:	0a000000 	beq	80020714 <popcli+0x94>
80020710:	ebffff98 	bl	80020578 <sti>
80020714:	e1a00000 	nop			@ (mov r0, r0)
80020718:	e8bd8800 	pop	{fp, pc}
8002071c:	8002937c 	.word	0x8002937c
80020720:	800ad604 	.word	0x800ad604
80020724:	80029394 	.word	0x80029394
80020728:	800293a8 	.word	0x800293a8

8002072c <getcallerpcs>:
8002072c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020730:	e28db000 	add	fp, sp, #0
80020734:	e24dd014 	sub	sp, sp, #20
80020738:	e50b0010 	str	r0, [fp, #-16]
8002073c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020740:	e51b3010 	ldr	r3, [fp, #-16]
80020744:	e50b3008 	str	r3, [fp, #-8]
80020748:	e3a03000 	mov	r3, #0
8002074c:	e50b300c 	str	r3, [fp, #-12]
80020750:	ea000018 	b	800207b8 <getcallerpcs+0x8c>
80020754:	e51b3008 	ldr	r3, [fp, #-8]
80020758:	e3530000 	cmp	r3, #0
8002075c:	0a000022 	beq	800207ec <getcallerpcs+0xc0>
80020760:	e51b3008 	ldr	r3, [fp, #-8]
80020764:	e3730106 	cmn	r3, #-2147483647	@ 0x80000001
80020768:	9a00001f 	bls	800207ec <getcallerpcs+0xc0>
8002076c:	e51b3008 	ldr	r3, [fp, #-8]
80020770:	e3730001 	cmn	r3, #1
80020774:	0a00001c 	beq	800207ec <getcallerpcs+0xc0>
80020778:	e51b3008 	ldr	r3, [fp, #-8]
8002077c:	e2433004 	sub	r3, r3, #4
80020780:	e50b3008 	str	r3, [fp, #-8]
80020784:	e51b300c 	ldr	r3, [fp, #-12]
80020788:	e1a03103 	lsl	r3, r3, #2
8002078c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020790:	e0823003 	add	r3, r2, r3
80020794:	e51b2008 	ldr	r2, [fp, #-8]
80020798:	e5922004 	ldr	r2, [r2, #4]
8002079c:	e5832000 	str	r2, [r3]
800207a0:	e51b3008 	ldr	r3, [fp, #-8]
800207a4:	e5933000 	ldr	r3, [r3]
800207a8:	e50b3008 	str	r3, [fp, #-8]
800207ac:	e51b300c 	ldr	r3, [fp, #-12]
800207b0:	e2833001 	add	r3, r3, #1
800207b4:	e50b300c 	str	r3, [fp, #-12]
800207b8:	e51b300c 	ldr	r3, [fp, #-12]
800207bc:	e353000e 	cmp	r3, #14
800207c0:	daffffe3 	ble	80020754 <getcallerpcs+0x28>
800207c4:	ea000008 	b	800207ec <getcallerpcs+0xc0>
800207c8:	e51b300c 	ldr	r3, [fp, #-12]
800207cc:	e1a03103 	lsl	r3, r3, #2
800207d0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800207d4:	e0823003 	add	r3, r2, r3
800207d8:	e3a02000 	mov	r2, #0
800207dc:	e5832000 	str	r2, [r3]
800207e0:	e51b300c 	ldr	r3, [fp, #-12]
800207e4:	e2833001 	add	r3, r3, #1
800207e8:	e50b300c 	str	r3, [fp, #-12]
800207ec:	e51b300c 	ldr	r3, [fp, #-12]
800207f0:	e353000e 	cmp	r3, #14
800207f4:	dafffff3 	ble	800207c8 <getcallerpcs+0x9c>
800207f8:	e1a00000 	nop			@ (mov r0, r0)
800207fc:	e1a00000 	nop			@ (mov r0, r0)
80020800:	e28bd000 	add	sp, fp, #0
80020804:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020808:	e12fff1e 	bx	lr

8002080c <show_callstk>:
8002080c:	e92d4800 	push	{fp, lr}
80020810:	e28db004 	add	fp, sp, #4
80020814:	e24dd048 	sub	sp, sp, #72	@ 0x48
80020818:	e50b0048 	str	r0, [fp, #-72]	@ 0xffffffb8
8002081c:	e51b1048 	ldr	r1, [fp, #-72]	@ 0xffffffb8
80020820:	e59f0074 	ldr	r0, [pc, #116]	@ 8002089c <show_callstk+0x90>
80020824:	eb00041a 	bl	80021894 <cprintf>
80020828:	eb000026 	bl	800208c8 <get_fp>
8002082c:	e1a02000 	mov	r2, r0
80020830:	e24b3044 	sub	r3, fp, #68	@ 0x44
80020834:	e1a01003 	mov	r1, r3
80020838:	e1a00002 	mov	r0, r2
8002083c:	ebffffba 	bl	8002072c <getcallerpcs>
80020840:	e3a0300e 	mov	r3, #14
80020844:	e50b3008 	str	r3, [fp, #-8]
80020848:	ea00000c 	b	80020880 <show_callstk+0x74>
8002084c:	e51b3008 	ldr	r3, [fp, #-8]
80020850:	e2831001 	add	r1, r3, #1
80020854:	e51b3008 	ldr	r3, [fp, #-8]
80020858:	e1a03103 	lsl	r3, r3, #2
8002085c:	e2433004 	sub	r3, r3, #4
80020860:	e083300b 	add	r3, r3, fp
80020864:	e5133040 	ldr	r3, [r3, #-64]	@ 0xffffffc0
80020868:	e1a02003 	mov	r2, r3
8002086c:	e59f002c 	ldr	r0, [pc, #44]	@ 800208a0 <show_callstk+0x94>
80020870:	eb000407 	bl	80021894 <cprintf>
80020874:	e51b3008 	ldr	r3, [fp, #-8]
80020878:	e2433001 	sub	r3, r3, #1
8002087c:	e50b3008 	str	r3, [fp, #-8]
80020880:	e51b3008 	ldr	r3, [fp, #-8]
80020884:	e3530000 	cmp	r3, #0
80020888:	aaffffef 	bge	8002084c <show_callstk+0x40>
8002088c:	e1a00000 	nop			@ (mov r0, r0)
80020890:	e1a00000 	nop			@ (mov r0, r0)
80020894:	e24bd004 	sub	sp, fp, #4
80020898:	e8bd8800 	pop	{fp, pc}
8002089c:	800293bc 	.word	0x800293bc
800208a0:	800293c0 	.word	0x800293c0

800208a4 <set_stk>:
800208a4:	e10f2000 	mrs	r2, CPSR
800208a8:	e3c2201f 	bic	r2, r2, #31
800208ac:	e1822000 	orr	r2, r2, r0
800208b0:	e12ff002 	msr	CPSR_fsxc, r2
800208b4:	e1a0d001 	mov	sp, r1
800208b8:	e3c2201f 	bic	r2, r2, #31
800208bc:	e3822013 	orr	r2, r2, #19
800208c0:	e12ff002 	msr	CPSR_fsxc, r2
800208c4:	e12fff1e 	bx	lr

800208c8 <get_fp>:
800208c8:	e1a0000b 	mov	r0, fp
800208cc:	e12fff1e 	bx	lr

800208d0 <binit>:
800208d0:	e92d4800 	push	{fp, lr}
800208d4:	e28db004 	add	fp, sp, #4
800208d8:	e24dd008 	sub	sp, sp, #8
800208dc:	e59f10b8 	ldr	r1, [pc, #184]	@ 8002099c <binit+0xcc>
800208e0:	e59f00b8 	ldr	r0, [pc, #184]	@ 800209a0 <binit+0xd0>
800208e4:	eb001567 	bl	80025e88 <initlock>
800208e8:	e59f30b0 	ldr	r3, [pc, #176]	@ 800209a0 <binit+0xd0>
800208ec:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800208f0:	e1a02003 	mov	r2, r3
800208f4:	e59f30a8 	ldr	r3, [pc, #168]	@ 800209a4 <binit+0xd4>
800208f8:	e5823530 	str	r3, [r2, #1328]	@ 0x530
800208fc:	e59f309c 	ldr	r3, [pc, #156]	@ 800209a0 <binit+0xd0>
80020900:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020904:	e1a02003 	mov	r2, r3
80020908:	e59f3094 	ldr	r3, [pc, #148]	@ 800209a4 <binit+0xd4>
8002090c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020910:	e59f3090 	ldr	r3, [pc, #144]	@ 800209a8 <binit+0xd8>
80020914:	e50b3008 	str	r3, [fp, #-8]
80020918:	ea000017 	b	8002097c <binit+0xac>
8002091c:	e59f307c 	ldr	r3, [pc, #124]	@ 800209a0 <binit+0xd0>
80020920:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020924:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020928:	e51b3008 	ldr	r3, [fp, #-8]
8002092c:	e5832010 	str	r2, [r3, #16]
80020930:	e51b3008 	ldr	r3, [fp, #-8]
80020934:	e59f2068 	ldr	r2, [pc, #104]	@ 800209a4 <binit+0xd4>
80020938:	e583200c 	str	r2, [r3, #12]
8002093c:	e51b3008 	ldr	r3, [fp, #-8]
80020940:	e3e02000 	mvn	r2, #0
80020944:	e5832004 	str	r2, [r3, #4]
80020948:	e59f3050 	ldr	r3, [pc, #80]	@ 800209a0 <binit+0xd0>
8002094c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020950:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020954:	e51b2008 	ldr	r2, [fp, #-8]
80020958:	e583200c 	str	r2, [r3, #12]
8002095c:	e59f303c 	ldr	r3, [pc, #60]	@ 800209a0 <binit+0xd0>
80020960:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020964:	e1a02003 	mov	r2, r3
80020968:	e51b3008 	ldr	r3, [fp, #-8]
8002096c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020970:	e51b3008 	ldr	r3, [fp, #-8]
80020974:	e2833f86 	add	r3, r3, #536	@ 0x218
80020978:	e50b3008 	str	r3, [fp, #-8]
8002097c:	e59f2020 	ldr	r2, [pc, #32]	@ 800209a4 <binit+0xd4>
80020980:	e51b3008 	ldr	r3, [fp, #-8]
80020984:	e1530002 	cmp	r3, r2
80020988:	3affffe3 	bcc	8002091c <binit+0x4c>
8002098c:	e1a00000 	nop			@ (mov r0, r0)
80020990:	e1a00000 	nop			@ (mov r0, r0)
80020994:	e24bd004 	sub	sp, fp, #4
80020998:	e8bd8800 	pop	{fp, pc}
8002099c:	800293cc 	.word	0x800293cc
800209a0:	800aa0cc 	.word	0x800aa0cc
800209a4:	800ab5f0 	.word	0x800ab5f0
800209a8:	800aa100 	.word	0x800aa100

800209ac <bget>:
800209ac:	e92d4800 	push	{fp, lr}
800209b0:	e28db004 	add	fp, sp, #4
800209b4:	e24dd010 	sub	sp, sp, #16
800209b8:	e50b0010 	str	r0, [fp, #-16]
800209bc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800209c0:	e59f0140 	ldr	r0, [pc, #320]	@ 80020b08 <bget+0x15c>
800209c4:	eb001541 	bl	80025ed0 <acquire>
800209c8:	e59f3138 	ldr	r3, [pc, #312]	@ 80020b08 <bget+0x15c>
800209cc:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800209d0:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
800209d4:	e50b3008 	str	r3, [fp, #-8]
800209d8:	ea00001e 	b	80020a58 <bget+0xac>
800209dc:	e51b3008 	ldr	r3, [fp, #-8]
800209e0:	e5933004 	ldr	r3, [r3, #4]
800209e4:	e51b2010 	ldr	r2, [fp, #-16]
800209e8:	e1520003 	cmp	r2, r3
800209ec:	1a000016 	bne	80020a4c <bget+0xa0>
800209f0:	e51b3008 	ldr	r3, [fp, #-8]
800209f4:	e5933008 	ldr	r3, [r3, #8]
800209f8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800209fc:	e1520003 	cmp	r2, r3
80020a00:	1a000011 	bne	80020a4c <bget+0xa0>
80020a04:	e51b3008 	ldr	r3, [fp, #-8]
80020a08:	e5933000 	ldr	r3, [r3]
80020a0c:	e2033001 	and	r3, r3, #1
80020a10:	e3530000 	cmp	r3, #0
80020a14:	1a000008 	bne	80020a3c <bget+0x90>
80020a18:	e51b3008 	ldr	r3, [fp, #-8]
80020a1c:	e5933000 	ldr	r3, [r3]
80020a20:	e3832001 	orr	r2, r3, #1
80020a24:	e51b3008 	ldr	r3, [fp, #-8]
80020a28:	e5832000 	str	r2, [r3]
80020a2c:	e59f00d4 	ldr	r0, [pc, #212]	@ 80020b08 <bget+0x15c>
80020a30:	eb001531 	bl	80025efc <release>
80020a34:	e51b3008 	ldr	r3, [fp, #-8]
80020a38:	ea00002f 	b	80020afc <bget+0x150>
80020a3c:	e59f10c4 	ldr	r1, [pc, #196]	@ 80020b08 <bget+0x15c>
80020a40:	e51b0008 	ldr	r0, [fp, #-8]
80020a44:	eb001402 	bl	80025a54 <sleep>
80020a48:	eaffffde 	b	800209c8 <bget+0x1c>
80020a4c:	e51b3008 	ldr	r3, [fp, #-8]
80020a50:	e5933010 	ldr	r3, [r3, #16]
80020a54:	e50b3008 	str	r3, [fp, #-8]
80020a58:	e51b3008 	ldr	r3, [fp, #-8]
80020a5c:	e59f20a8 	ldr	r2, [pc, #168]	@ 80020b0c <bget+0x160>
80020a60:	e1530002 	cmp	r3, r2
80020a64:	1affffdc 	bne	800209dc <bget+0x30>
80020a68:	e59f3098 	ldr	r3, [pc, #152]	@ 80020b08 <bget+0x15c>
80020a6c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020a70:	e5933530 	ldr	r3, [r3, #1328]	@ 0x530
80020a74:	e50b3008 	str	r3, [fp, #-8]
80020a78:	ea000019 	b	80020ae4 <bget+0x138>
80020a7c:	e51b3008 	ldr	r3, [fp, #-8]
80020a80:	e5933000 	ldr	r3, [r3]
80020a84:	e2033001 	and	r3, r3, #1
80020a88:	e3530000 	cmp	r3, #0
80020a8c:	1a000011 	bne	80020ad8 <bget+0x12c>
80020a90:	e51b3008 	ldr	r3, [fp, #-8]
80020a94:	e5933000 	ldr	r3, [r3]
80020a98:	e2033004 	and	r3, r3, #4
80020a9c:	e3530000 	cmp	r3, #0
80020aa0:	1a00000c 	bne	80020ad8 <bget+0x12c>
80020aa4:	e51b3008 	ldr	r3, [fp, #-8]
80020aa8:	e51b2010 	ldr	r2, [fp, #-16]
80020aac:	e5832004 	str	r2, [r3, #4]
80020ab0:	e51b3008 	ldr	r3, [fp, #-8]
80020ab4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ab8:	e5832008 	str	r2, [r3, #8]
80020abc:	e51b3008 	ldr	r3, [fp, #-8]
80020ac0:	e3a02001 	mov	r2, #1
80020ac4:	e5832000 	str	r2, [r3]
80020ac8:	e59f0038 	ldr	r0, [pc, #56]	@ 80020b08 <bget+0x15c>
80020acc:	eb00150a 	bl	80025efc <release>
80020ad0:	e51b3008 	ldr	r3, [fp, #-8]
80020ad4:	ea000008 	b	80020afc <bget+0x150>
80020ad8:	e51b3008 	ldr	r3, [fp, #-8]
80020adc:	e593300c 	ldr	r3, [r3, #12]
80020ae0:	e50b3008 	str	r3, [fp, #-8]
80020ae4:	e51b3008 	ldr	r3, [fp, #-8]
80020ae8:	e59f201c 	ldr	r2, [pc, #28]	@ 80020b0c <bget+0x160>
80020aec:	e1530002 	cmp	r3, r2
80020af0:	1affffe1 	bne	80020a7c <bget+0xd0>
80020af4:	e59f0014 	ldr	r0, [pc, #20]	@ 80020b10 <bget+0x164>
80020af8:	eb0003eb 	bl	80021aac <panic>
80020afc:	e1a00003 	mov	r0, r3
80020b00:	e24bd004 	sub	sp, fp, #4
80020b04:	e8bd8800 	pop	{fp, pc}
80020b08:	800aa0cc 	.word	0x800aa0cc
80020b0c:	800ab5f0 	.word	0x800ab5f0
80020b10:	800293d4 	.word	0x800293d4

80020b14 <bread>:
80020b14:	e92d4800 	push	{fp, lr}
80020b18:	e28db004 	add	fp, sp, #4
80020b1c:	e24dd010 	sub	sp, sp, #16
80020b20:	e50b0010 	str	r0, [fp, #-16]
80020b24:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80020b28:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80020b2c:	e51b0010 	ldr	r0, [fp, #-16]
80020b30:	ebffff9d 	bl	800209ac <bget>
80020b34:	e50b0008 	str	r0, [fp, #-8]
80020b38:	e51b3008 	ldr	r3, [fp, #-8]
80020b3c:	e5933000 	ldr	r3, [r3]
80020b40:	e2033002 	and	r3, r3, #2
80020b44:	e3530000 	cmp	r3, #0
80020b48:	1a000001 	bne	80020b54 <bread+0x40>
80020b4c:	e51b0008 	ldr	r0, [fp, #-8]
80020b50:	eb000ef0 	bl	80024718 <iderw>
80020b54:	e51b3008 	ldr	r3, [fp, #-8]
80020b58:	e1a00003 	mov	r0, r3
80020b5c:	e24bd004 	sub	sp, fp, #4
80020b60:	e8bd8800 	pop	{fp, pc}

80020b64 <bwrite>:
80020b64:	e92d4800 	push	{fp, lr}
80020b68:	e28db004 	add	fp, sp, #4
80020b6c:	e24dd008 	sub	sp, sp, #8
80020b70:	e50b0008 	str	r0, [fp, #-8]
80020b74:	e51b3008 	ldr	r3, [fp, #-8]
80020b78:	e5933000 	ldr	r3, [r3]
80020b7c:	e2033001 	and	r3, r3, #1
80020b80:	e3530000 	cmp	r3, #0
80020b84:	1a000001 	bne	80020b90 <bwrite+0x2c>
80020b88:	e59f0028 	ldr	r0, [pc, #40]	@ 80020bb8 <bwrite+0x54>
80020b8c:	eb0003c6 	bl	80021aac <panic>
80020b90:	e51b3008 	ldr	r3, [fp, #-8]
80020b94:	e5933000 	ldr	r3, [r3]
80020b98:	e3832004 	orr	r2, r3, #4
80020b9c:	e51b3008 	ldr	r3, [fp, #-8]
80020ba0:	e5832000 	str	r2, [r3]
80020ba4:	e51b0008 	ldr	r0, [fp, #-8]
80020ba8:	eb000eda 	bl	80024718 <iderw>
80020bac:	e1a00000 	nop			@ (mov r0, r0)
80020bb0:	e24bd004 	sub	sp, fp, #4
80020bb4:	e8bd8800 	pop	{fp, pc}
80020bb8:	800293e8 	.word	0x800293e8

80020bbc <brelse>:
80020bbc:	e92d4800 	push	{fp, lr}
80020bc0:	e28db004 	add	fp, sp, #4
80020bc4:	e24dd008 	sub	sp, sp, #8
80020bc8:	e50b0008 	str	r0, [fp, #-8]
80020bcc:	e51b3008 	ldr	r3, [fp, #-8]
80020bd0:	e5933000 	ldr	r3, [r3]
80020bd4:	e2033001 	and	r3, r3, #1
80020bd8:	e3530000 	cmp	r3, #0
80020bdc:	1a000001 	bne	80020be8 <brelse+0x2c>
80020be0:	e59f00a8 	ldr	r0, [pc, #168]	@ 80020c90 <brelse+0xd4>
80020be4:	eb0003b0 	bl	80021aac <panic>
80020be8:	e59f00a4 	ldr	r0, [pc, #164]	@ 80020c94 <brelse+0xd8>
80020bec:	eb0014b7 	bl	80025ed0 <acquire>
80020bf0:	e51b3008 	ldr	r3, [fp, #-8]
80020bf4:	e5933010 	ldr	r3, [r3, #16]
80020bf8:	e51b2008 	ldr	r2, [fp, #-8]
80020bfc:	e592200c 	ldr	r2, [r2, #12]
80020c00:	e583200c 	str	r2, [r3, #12]
80020c04:	e51b3008 	ldr	r3, [fp, #-8]
80020c08:	e593300c 	ldr	r3, [r3, #12]
80020c0c:	e51b2008 	ldr	r2, [fp, #-8]
80020c10:	e5922010 	ldr	r2, [r2, #16]
80020c14:	e5832010 	str	r2, [r3, #16]
80020c18:	e59f3074 	ldr	r3, [pc, #116]	@ 80020c94 <brelse+0xd8>
80020c1c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c20:	e5932534 	ldr	r2, [r3, #1332]	@ 0x534
80020c24:	e51b3008 	ldr	r3, [fp, #-8]
80020c28:	e5832010 	str	r2, [r3, #16]
80020c2c:	e51b3008 	ldr	r3, [fp, #-8]
80020c30:	e59f2060 	ldr	r2, [pc, #96]	@ 80020c98 <brelse+0xdc>
80020c34:	e583200c 	str	r2, [r3, #12]
80020c38:	e59f3054 	ldr	r3, [pc, #84]	@ 80020c94 <brelse+0xd8>
80020c3c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c40:	e5933534 	ldr	r3, [r3, #1332]	@ 0x534
80020c44:	e51b2008 	ldr	r2, [fp, #-8]
80020c48:	e583200c 	str	r2, [r3, #12]
80020c4c:	e59f3040 	ldr	r3, [pc, #64]	@ 80020c94 <brelse+0xd8>
80020c50:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020c54:	e1a02003 	mov	r2, r3
80020c58:	e51b3008 	ldr	r3, [fp, #-8]
80020c5c:	e5823534 	str	r3, [r2, #1332]	@ 0x534
80020c60:	e51b3008 	ldr	r3, [fp, #-8]
80020c64:	e5933000 	ldr	r3, [r3]
80020c68:	e3c32001 	bic	r2, r3, #1
80020c6c:	e51b3008 	ldr	r3, [fp, #-8]
80020c70:	e5832000 	str	r2, [r3]
80020c74:	e51b0008 	ldr	r0, [fp, #-8]
80020c78:	eb00140f 	bl	80025cbc <wakeup>
80020c7c:	e59f0010 	ldr	r0, [pc, #16]	@ 80020c94 <brelse+0xd8>
80020c80:	eb00149d 	bl	80025efc <release>
80020c84:	e1a00000 	nop			@ (mov r0, r0)
80020c88:	e24bd004 	sub	sp, fp, #4
80020c8c:	e8bd8800 	pop	{fp, pc}
80020c90:	800293f0 	.word	0x800293f0
80020c94:	800aa0cc 	.word	0x800aa0cc
80020c98:	800ab5f0 	.word	0x800ab5f0

80020c9c <get_mark>:
80020c9c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020ca0:	e28db000 	add	fp, sp, #0
80020ca4:	e24dd00c 	sub	sp, sp, #12
80020ca8:	e50b0008 	str	r0, [fp, #-8]
80020cac:	e50b100c 	str	r1, [fp, #-12]
80020cb0:	e51b3008 	ldr	r3, [fp, #-8]
80020cb4:	e2433006 	sub	r3, r3, #6
80020cb8:	e59f2034 	ldr	r2, [pc, #52]	@ 80020cf4 <get_mark+0x58>
80020cbc:	e2833008 	add	r3, r3, #8
80020cc0:	e1a03183 	lsl	r3, r3, #3
80020cc4:	e0823003 	add	r3, r2, r3
80020cc8:	e5932004 	ldr	r2, [r3, #4]
80020ccc:	e51b300c 	ldr	r3, [fp, #-12]
80020cd0:	e0823003 	add	r3, r2, r3
80020cd4:	e1a02183 	lsl	r2, r3, #3
80020cd8:	e59f3014 	ldr	r3, [pc, #20]	@ 80020cf4 <get_mark+0x58>
80020cdc:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020ce0:	e0823003 	add	r3, r2, r3
80020ce4:	e1a00003 	mov	r0, r3
80020ce8:	e28bd000 	add	sp, fp, #0
80020cec:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020cf0:	e12fff1e 	bx	lr
80020cf4:	800ab808 	.word	0x800ab808

80020cf8 <blkid2mem>:
80020cf8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020cfc:	e28db000 	add	fp, sp, #0
80020d00:	e24dd00c 	sub	sp, sp, #12
80020d04:	e50b0008 	str	r0, [fp, #-8]
80020d08:	e50b100c 	str	r1, [fp, #-12]
80020d0c:	e59f3020 	ldr	r3, [pc, #32]	@ 80020d34 <blkid2mem+0x3c>
80020d10:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d14:	e51b100c 	ldr	r1, [fp, #-12]
80020d18:	e51b2008 	ldr	r2, [fp, #-8]
80020d1c:	e1a02211 	lsl	r2, r1, r2
80020d20:	e0833002 	add	r3, r3, r2
80020d24:	e1a00003 	mov	r0, r3
80020d28:	e28bd000 	add	sp, fp, #0
80020d2c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d30:	e12fff1e 	bx	lr
80020d34:	800ab808 	.word	0x800ab808

80020d38 <mem2blkid>:
80020d38:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d3c:	e28db000 	add	fp, sp, #0
80020d40:	e24dd00c 	sub	sp, sp, #12
80020d44:	e50b0008 	str	r0, [fp, #-8]
80020d48:	e50b100c 	str	r1, [fp, #-12]
80020d4c:	e51b200c 	ldr	r2, [fp, #-12]
80020d50:	e59f301c 	ldr	r3, [pc, #28]	@ 80020d74 <mem2blkid+0x3c>
80020d54:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020d58:	e0422003 	sub	r2, r2, r3
80020d5c:	e51b3008 	ldr	r3, [fp, #-8]
80020d60:	e1a03332 	lsr	r3, r2, r3
80020d64:	e1a00003 	mov	r0, r3
80020d68:	e28bd000 	add	sp, fp, #0
80020d6c:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020d70:	e12fff1e 	bx	lr
80020d74:	800ab808 	.word	0x800ab808

80020d78 <available>:
80020d78:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80020d7c:	e28db000 	add	fp, sp, #0
80020d80:	e24dd00c 	sub	sp, sp, #12
80020d84:	e50b0008 	str	r0, [fp, #-8]
80020d88:	e50b100c 	str	r1, [fp, #-12]
80020d8c:	e51b300c 	ldr	r3, [fp, #-12]
80020d90:	e203301f 	and	r3, r3, #31
80020d94:	e3a02001 	mov	r2, #1
80020d98:	e1a03312 	lsl	r3, r2, r3
80020d9c:	e1a02003 	mov	r2, r3
80020da0:	e51b3008 	ldr	r3, [fp, #-8]
80020da4:	e0033002 	and	r3, r3, r2
80020da8:	e1a00003 	mov	r0, r3
80020dac:	e28bd000 	add	sp, fp, #0
80020db0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80020db4:	e12fff1e 	bx	lr

80020db8 <kmem_init>:
80020db8:	e92d4800 	push	{fp, lr}
80020dbc:	e28db004 	add	fp, sp, #4
80020dc0:	e59f100c 	ldr	r1, [pc, #12]	@ 80020dd4 <kmem_init+0x1c>
80020dc4:	e59f000c 	ldr	r0, [pc, #12]	@ 80020dd8 <kmem_init+0x20>
80020dc8:	eb00142e 	bl	80025e88 <initlock>
80020dcc:	e1a00000 	nop			@ (mov r0, r0)
80020dd0:	e8bd8800 	pop	{fp, pc}
80020dd4:	800293f8 	.word	0x800293f8
80020dd8:	800ab808 	.word	0x800ab808

80020ddc <kmem_init2>:
80020ddc:	e92d4800 	push	{fp, lr}
80020de0:	e28db004 	add	fp, sp, #4
80020de4:	e24dd028 	sub	sp, sp, #40	@ 0x28
80020de8:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80020dec:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80020df0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80020df4:	e59f217c 	ldr	r2, [pc, #380]	@ 80020f78 <kmem_init2+0x19c>
80020df8:	e5823034 	str	r3, [r2, #52]	@ 0x34
80020dfc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80020e00:	e59f2170 	ldr	r2, [pc, #368]	@ 80020f78 <kmem_init2+0x19c>
80020e04:	e582303c 	str	r3, [r2, #60]	@ 0x3c
80020e08:	e59f3168 	ldr	r3, [pc, #360]	@ 80020f78 <kmem_init2+0x19c>
80020e0c:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020e10:	e59f3160 	ldr	r3, [pc, #352]	@ 80020f78 <kmem_init2+0x19c>
80020e14:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80020e18:	e0423003 	sub	r3, r2, r3
80020e1c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80020e20:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80020e24:	e1a038a3 	lsr	r3, r3, #17
80020e28:	e2833001 	add	r3, r3, #1
80020e2c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020e30:	e3a03000 	mov	r3, #0
80020e34:	e50b3010 	str	r3, [fp, #-16]
80020e38:	e3a03006 	mov	r3, #6
80020e3c:	e50b3008 	str	r3, [fp, #-8]
80020e40:	ea00002a 	b	80020ef0 <kmem_init2+0x114>
80020e44:	e51b3008 	ldr	r3, [fp, #-8]
80020e48:	e1a03183 	lsl	r3, r3, #3
80020e4c:	e59f2128 	ldr	r2, [pc, #296]	@ 80020f7c <kmem_init2+0x1a0>
80020e50:	e0833002 	add	r3, r3, r2
80020e54:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80020e58:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e5c:	e51b2010 	ldr	r2, [fp, #-16]
80020e60:	e5832004 	str	r2, [r3, #4]
80020e64:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80020e68:	e59f2110 	ldr	r2, [pc, #272]	@ 80020f80 <kmem_init2+0x1a4>
80020e6c:	e5832000 	str	r2, [r3]
80020e70:	e3a03000 	mov	r3, #0
80020e74:	e50b300c 	str	r3, [fp, #-12]
80020e78:	ea00000e 	b	80020eb8 <kmem_init2+0xdc>
80020e7c:	e51b3008 	ldr	r3, [fp, #-8]
80020e80:	e2833006 	add	r3, r3, #6
80020e84:	e51b100c 	ldr	r1, [fp, #-12]
80020e88:	e1a00003 	mov	r0, r3
80020e8c:	ebffff82 	bl	80020c9c <get_mark>
80020e90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020e94:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020e98:	e3e02000 	mvn	r2, #0
80020e9c:	e5832000 	str	r2, [r3]
80020ea0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020ea4:	e3a02000 	mov	r2, #0
80020ea8:	e5832004 	str	r2, [r3, #4]
80020eac:	e51b300c 	ldr	r3, [fp, #-12]
80020eb0:	e2833001 	add	r3, r3, #1
80020eb4:	e50b300c 	str	r3, [fp, #-12]
80020eb8:	e51b300c 	ldr	r3, [fp, #-12]
80020ebc:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80020ec0:	e1520003 	cmp	r2, r3
80020ec4:	8affffec 	bhi	80020e7c <kmem_init2+0xa0>
80020ec8:	e51b2010 	ldr	r2, [fp, #-16]
80020ecc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020ed0:	e0823003 	add	r3, r2, r3
80020ed4:	e50b3010 	str	r3, [fp, #-16]
80020ed8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80020edc:	e1a03083 	lsl	r3, r3, #1
80020ee0:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80020ee4:	e51b3008 	ldr	r3, [fp, #-8]
80020ee8:	e2433001 	sub	r3, r3, #1
80020eec:	e50b3008 	str	r3, [fp, #-8]
80020ef0:	e51b3008 	ldr	r3, [fp, #-8]
80020ef4:	e3530000 	cmp	r3, #0
80020ef8:	aaffffd1 	bge	80020e44 <kmem_init2+0x68>
80020efc:	e59f3074 	ldr	r3, [pc, #116]	@ 80020f78 <kmem_init2+0x19c>
80020f00:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80020f04:	e51b3010 	ldr	r3, [fp, #-16]
80020f08:	e1a03183 	lsl	r3, r3, #3
80020f0c:	e0823003 	add	r3, r2, r3
80020f10:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80020f14:	e283300f 	add	r3, r3, #15
80020f18:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80020f1c:	e3c3300f 	bic	r3, r3, #15
80020f20:	e59f2050 	ldr	r2, [pc, #80]	@ 80020f78 <kmem_init2+0x19c>
80020f24:	e5823038 	str	r3, [r2, #56]	@ 0x38
80020f28:	e59f3048 	ldr	r3, [pc, #72]	@ 80020f78 <kmem_init2+0x19c>
80020f2c:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80020f30:	e50b3008 	str	r3, [fp, #-8]
80020f34:	ea000006 	b	80020f54 <kmem_init2+0x178>
80020f38:	e51b3008 	ldr	r3, [fp, #-8]
80020f3c:	e3a0100c 	mov	r1, #12
80020f40:	e1a00003 	mov	r0, r3
80020f44:	eb00018d 	bl	80021580 <kfree>
80020f48:	e51b3008 	ldr	r3, [fp, #-8]
80020f4c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80020f50:	e50b3008 	str	r3, [fp, #-8]
80020f54:	e59f301c 	ldr	r3, [pc, #28]	@ 80020f78 <kmem_init2+0x19c>
80020f58:	e593203c 	ldr	r2, [r3, #60]	@ 0x3c
80020f5c:	e51b3008 	ldr	r3, [fp, #-8]
80020f60:	e1520003 	cmp	r2, r3
80020f64:	8afffff3 	bhi	80020f38 <kmem_init2+0x15c>
80020f68:	e1a00000 	nop			@ (mov r0, r0)
80020f6c:	e1a00000 	nop			@ (mov r0, r0)
80020f70:	e24bd004 	sub	sp, fp, #4
80020f74:	e8bd8800 	pop	{fp, pc}
80020f78:	800ab808 	.word	0x800ab808
80020f7c:	800ab848 	.word	0x800ab848
80020f80:	0000ffff 	.word	0x0000ffff

80020f84 <unmark_blk>:
80020f84:	e92d4800 	push	{fp, lr}
80020f88:	e28db004 	add	fp, sp, #4
80020f8c:	e24dd020 	sub	sp, sp, #32
80020f90:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80020f94:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80020f98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80020f9c:	e2433006 	sub	r3, r3, #6
80020fa0:	e2833008 	add	r3, r3, #8
80020fa4:	e1a03183 	lsl	r3, r3, #3
80020fa8:	e59f2168 	ldr	r2, [pc, #360]	@ 80021118 <unmark_blk+0x194>
80020fac:	e0833002 	add	r3, r3, r2
80020fb0:	e50b3008 	str	r3, [fp, #-8]
80020fb4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80020fb8:	e1a032c3 	asr	r3, r3, #5
80020fbc:	e1a01003 	mov	r1, r3
80020fc0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80020fc4:	ebffff34 	bl	80020c9c <get_mark>
80020fc8:	e50b000c 	str	r0, [fp, #-12]
80020fcc:	e51b300c 	ldr	r3, [fp, #-12]
80020fd0:	e5933004 	ldr	r3, [r3, #4]
80020fd4:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80020fd8:	e1a00003 	mov	r0, r3
80020fdc:	ebffff65 	bl	80020d78 <available>
80020fe0:	e1a03000 	mov	r3, r0
80020fe4:	e3530000 	cmp	r3, #0
80020fe8:	1a000001 	bne	80020ff4 <unmark_blk+0x70>
80020fec:	e59f0128 	ldr	r0, [pc, #296]	@ 8002111c <unmark_blk+0x198>
80020ff0:	eb0002ad 	bl	80021aac <panic>
80020ff4:	e51b300c 	ldr	r3, [fp, #-12]
80020ff8:	e5933004 	ldr	r3, [r3, #4]
80020ffc:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80021000:	e202201f 	and	r2, r2, #31
80021004:	e3a01001 	mov	r1, #1
80021008:	e1a02211 	lsl	r2, r1, r2
8002100c:	e1e02002 	mvn	r2, r2
80021010:	e0022003 	and	r2, r2, r3
80021014:	e51b300c 	ldr	r3, [fp, #-12]
80021018:	e5832004 	str	r2, [r3, #4]
8002101c:	e51b300c 	ldr	r3, [fp, #-12]
80021020:	e5933004 	ldr	r3, [r3, #4]
80021024:	e3530000 	cmp	r3, #0
80021028:	1a000037 	bne	8002110c <unmark_blk+0x188>
8002102c:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021030:	e1a032c3 	asr	r3, r3, #5
80021034:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80021038:	e51b300c 	ldr	r3, [fp, #-12]
8002103c:	e5933000 	ldr	r3, [r3]
80021040:	e1a03823 	lsr	r3, r3, #16
80021044:	e50b3010 	str	r3, [fp, #-16]
80021048:	e51b300c 	ldr	r3, [fp, #-12]
8002104c:	e5933000 	ldr	r3, [r3]
80021050:	e6ff3073 	uxth	r3, r3
80021054:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021058:	e51b3010 	ldr	r3, [fp, #-16]
8002105c:	e59f20bc 	ldr	r2, [pc, #188]	@ 80021120 <unmark_blk+0x19c>
80021060:	e1530002 	cmp	r3, r2
80021064:	0a00000d 	beq	800210a0 <unmark_blk+0x11c>
80021068:	e51b1010 	ldr	r1, [fp, #-16]
8002106c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80021070:	ebffff09 	bl	80020c9c <get_mark>
80021074:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021078:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002107c:	e5933000 	ldr	r3, [r3]
80021080:	e1a03823 	lsr	r3, r3, #16
80021084:	e1a03803 	lsl	r3, r3, #16
80021088:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
8002108c:	e6ff2072 	uxth	r2, r2
80021090:	e1832002 	orr	r2, r3, r2
80021094:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021098:	e5832000 	str	r2, [r3]
8002109c:	ea000007 	b	800210c0 <unmark_blk+0x13c>
800210a0:	e51b3008 	ldr	r3, [fp, #-8]
800210a4:	e5932000 	ldr	r2, [r3]
800210a8:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800210ac:	e1520003 	cmp	r2, r3
800210b0:	1a000002 	bne	800210c0 <unmark_blk+0x13c>
800210b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800210b8:	e51b3008 	ldr	r3, [fp, #-8]
800210bc:	e5832000 	str	r2, [r3]
800210c0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800210c4:	e59f2054 	ldr	r2, [pc, #84]	@ 80021120 <unmark_blk+0x19c>
800210c8:	e1530002 	cmp	r3, r2
800210cc:	0a00000b 	beq	80021100 <unmark_blk+0x17c>
800210d0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800210d4:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800210d8:	ebfffeef 	bl	80020c9c <get_mark>
800210dc:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800210e0:	e51b3010 	ldr	r3, [fp, #-16]
800210e4:	e1a02803 	lsl	r2, r3, #16
800210e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210ec:	e5933000 	ldr	r3, [r3]
800210f0:	e6ff3073 	uxth	r3, r3
800210f4:	e1822003 	orr	r2, r2, r3
800210f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800210fc:	e5832000 	str	r2, [r3]
80021100:	e51b300c 	ldr	r3, [fp, #-12]
80021104:	e3e02000 	mvn	r2, #0
80021108:	e5832000 	str	r2, [r3]
8002110c:	e1a00000 	nop			@ (mov r0, r0)
80021110:	e24bd004 	sub	sp, fp, #4
80021114:	e8bd8800 	pop	{fp, pc}
80021118:	800ab808 	.word	0x800ab808
8002111c:	80029400 	.word	0x80029400
80021120:	0000ffff 	.word	0x0000ffff

80021124 <mark_blk>:
80021124:	e92d4800 	push	{fp, lr}
80021128:	e28db004 	add	fp, sp, #4
8002112c:	e24dd018 	sub	sp, sp, #24
80021130:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021134:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80021138:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002113c:	e2433006 	sub	r3, r3, #6
80021140:	e2833008 	add	r3, r3, #8
80021144:	e1a03183 	lsl	r3, r3, #3
80021148:	e59f2118 	ldr	r2, [pc, #280]	@ 80021268 <mark_blk+0x144>
8002114c:	e0833002 	add	r3, r3, r2
80021150:	e50b3008 	str	r3, [fp, #-8]
80021154:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021158:	e1a032c3 	asr	r3, r3, #5
8002115c:	e1a01003 	mov	r1, r3
80021160:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021164:	ebfffecc 	bl	80020c9c <get_mark>
80021168:	e50b000c 	str	r0, [fp, #-12]
8002116c:	e51b300c 	ldr	r3, [fp, #-12]
80021170:	e5933004 	ldr	r3, [r3, #4]
80021174:	e3530000 	cmp	r3, #0
80021178:	03a03001 	moveq	r3, #1
8002117c:	13a03000 	movne	r3, #0
80021180:	e6ef3073 	uxtb	r3, r3
80021184:	e50b3010 	str	r3, [fp, #-16]
80021188:	e51b300c 	ldr	r3, [fp, #-12]
8002118c:	e5933004 	ldr	r3, [r3, #4]
80021190:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80021194:	e1a00003 	mov	r0, r3
80021198:	ebfffef6 	bl	80020d78 <available>
8002119c:	e1a03000 	mov	r3, r0
800211a0:	e3530000 	cmp	r3, #0
800211a4:	0a000001 	beq	800211b0 <mark_blk+0x8c>
800211a8:	e59f00bc 	ldr	r0, [pc, #188]	@ 8002126c <mark_blk+0x148>
800211ac:	eb00023e 	bl	80021aac <panic>
800211b0:	e51b300c 	ldr	r3, [fp, #-12]
800211b4:	e5933004 	ldr	r3, [r3, #4]
800211b8:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800211bc:	e202201f 	and	r2, r2, #31
800211c0:	e3a01001 	mov	r1, #1
800211c4:	e1a02211 	lsl	r2, r1, r2
800211c8:	e1832002 	orr	r2, r3, r2
800211cc:	e51b300c 	ldr	r3, [fp, #-12]
800211d0:	e5832004 	str	r2, [r3, #4]
800211d4:	e51b3010 	ldr	r3, [fp, #-16]
800211d8:	e3530000 	cmp	r3, #0
800211dc:	0a00001e 	beq	8002125c <mark_blk+0x138>
800211e0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800211e4:	e1a032c3 	asr	r3, r3, #5
800211e8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800211ec:	e51b3008 	ldr	r3, [fp, #-8]
800211f0:	e5933000 	ldr	r3, [r3]
800211f4:	e1e03803 	mvn	r3, r3, lsl #16
800211f8:	e1e03823 	mvn	r3, r3, lsr #16
800211fc:	e51b200c 	ldr	r2, [fp, #-12]
80021200:	e5823000 	str	r3, [r2]
80021204:	e51b3008 	ldr	r3, [fp, #-8]
80021208:	e5933000 	ldr	r3, [r3]
8002120c:	e59f205c 	ldr	r2, [pc, #92]	@ 80021270 <mark_blk+0x14c>
80021210:	e1530002 	cmp	r3, r2
80021214:	0a00000d 	beq	80021250 <mark_blk+0x12c>
80021218:	e51b3008 	ldr	r3, [fp, #-8]
8002121c:	e5933000 	ldr	r3, [r3]
80021220:	e1a01003 	mov	r1, r3
80021224:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021228:	ebfffe9b 	bl	80020c9c <get_mark>
8002122c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80021230:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80021234:	e1a02803 	lsl	r2, r3, #16
80021238:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002123c:	e5933000 	ldr	r3, [r3]
80021240:	e6ff3073 	uxth	r3, r3
80021244:	e1822003 	orr	r2, r2, r3
80021248:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002124c:	e5832000 	str	r2, [r3]
80021250:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80021254:	e51b3008 	ldr	r3, [fp, #-8]
80021258:	e5832000 	str	r2, [r3]
8002125c:	e1a00000 	nop			@ (mov r0, r0)
80021260:	e24bd004 	sub	sp, fp, #4
80021264:	e8bd8800 	pop	{fp, pc}
80021268:	800ab808 	.word	0x800ab808
8002126c:	80029410 	.word	0x80029410
80021270:	0000ffff 	.word	0x0000ffff

80021274 <get_blk>:
80021274:	e92d4800 	push	{fp, lr}
80021278:	e28db004 	add	fp, sp, #4
8002127c:	e24dd018 	sub	sp, sp, #24
80021280:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021284:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021288:	e2433006 	sub	r3, r3, #6
8002128c:	e2833008 	add	r3, r3, #8
80021290:	e1a03183 	lsl	r3, r3, #3
80021294:	e59f20c0 	ldr	r2, [pc, #192]	@ 8002135c <get_blk+0xe8>
80021298:	e0833002 	add	r3, r3, r2
8002129c:	e50b300c 	str	r3, [fp, #-12]
800212a0:	e51b300c 	ldr	r3, [fp, #-12]
800212a4:	e5933000 	ldr	r3, [r3]
800212a8:	e1a01003 	mov	r1, r3
800212ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800212b0:	ebfffe79 	bl	80020c9c <get_mark>
800212b4:	e50b0010 	str	r0, [fp, #-16]
800212b8:	e51b3010 	ldr	r3, [fp, #-16]
800212bc:	e5933004 	ldr	r3, [r3, #4]
800212c0:	e3530000 	cmp	r3, #0
800212c4:	1a000001 	bne	800212d0 <get_blk+0x5c>
800212c8:	e59f0090 	ldr	r0, [pc, #144]	@ 80021360 <get_blk+0xec>
800212cc:	eb0001f6 	bl	80021aac <panic>
800212d0:	e3a03000 	mov	r3, #0
800212d4:	e50b3008 	str	r3, [fp, #-8]
800212d8:	ea000018 	b	80021340 <get_blk+0xcc>
800212dc:	e51b3010 	ldr	r3, [fp, #-16]
800212e0:	e5933004 	ldr	r3, [r3, #4]
800212e4:	e3a01001 	mov	r1, #1
800212e8:	e51b2008 	ldr	r2, [fp, #-8]
800212ec:	e1a02211 	lsl	r2, r1, r2
800212f0:	e0033002 	and	r3, r3, r2
800212f4:	e3530000 	cmp	r3, #0
800212f8:	0a00000d 	beq	80021334 <get_blk+0xc0>
800212fc:	e51b300c 	ldr	r3, [fp, #-12]
80021300:	e5933000 	ldr	r3, [r3]
80021304:	e1a02283 	lsl	r2, r3, #5
80021308:	e51b3008 	ldr	r3, [fp, #-8]
8002130c:	e0823003 	add	r3, r2, r3
80021310:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80021314:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021318:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
8002131c:	ebffff18 	bl	80020f84 <unmark_blk>
80021320:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80021324:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021328:	ebfffe72 	bl	80020cf8 <blkid2mem>
8002132c:	e1a03000 	mov	r3, r0
80021330:	ea000006 	b	80021350 <get_blk+0xdc>
80021334:	e51b3008 	ldr	r3, [fp, #-8]
80021338:	e2833001 	add	r3, r3, #1
8002133c:	e50b3008 	str	r3, [fp, #-8]
80021340:	e51b3008 	ldr	r3, [fp, #-8]
80021344:	e353001f 	cmp	r3, #31
80021348:	daffffe3 	ble	800212dc <get_blk+0x68>
8002134c:	e3a03000 	mov	r3, #0
80021350:	e1a00003 	mov	r0, r3
80021354:	e24bd004 	sub	sp, fp, #4
80021358:	e8bd8800 	pop	{fp, pc}
8002135c:	800ab808 	.word	0x800ab808
80021360:	80029420 	.word	0x80029420

80021364 <_kmalloc>:
80021364:	e92d4800 	push	{fp, lr}
80021368:	e28db004 	add	fp, sp, #4
8002136c:	e24dd010 	sub	sp, sp, #16
80021370:	e50b0010 	str	r0, [fp, #-16]
80021374:	e51b3010 	ldr	r3, [fp, #-16]
80021378:	e2433006 	sub	r3, r3, #6
8002137c:	e2833008 	add	r3, r3, #8
80021380:	e1a03183 	lsl	r3, r3, #3
80021384:	e59f2090 	ldr	r2, [pc, #144]	@ 8002141c <_kmalloc+0xb8>
80021388:	e0833002 	add	r3, r3, r2
8002138c:	e50b300c 	str	r3, [fp, #-12]
80021390:	e3a03000 	mov	r3, #0
80021394:	e50b3008 	str	r3, [fp, #-8]
80021398:	e51b300c 	ldr	r3, [fp, #-12]
8002139c:	e5933000 	ldr	r3, [r3]
800213a0:	e59f2078 	ldr	r2, [pc, #120]	@ 80021420 <_kmalloc+0xbc>
800213a4:	e1530002 	cmp	r3, r2
800213a8:	0a000003 	beq	800213bc <_kmalloc+0x58>
800213ac:	e51b0010 	ldr	r0, [fp, #-16]
800213b0:	ebffffaf 	bl	80021274 <get_blk>
800213b4:	e50b0008 	str	r0, [fp, #-8]
800213b8:	ea000013 	b	8002140c <_kmalloc+0xa8>
800213bc:	e51b3010 	ldr	r3, [fp, #-16]
800213c0:	e353000b 	cmp	r3, #11
800213c4:	ca000010 	bgt	8002140c <_kmalloc+0xa8>
800213c8:	e51b3010 	ldr	r3, [fp, #-16]
800213cc:	e2833001 	add	r3, r3, #1
800213d0:	e1a00003 	mov	r0, r3
800213d4:	ebffffe2 	bl	80021364 <_kmalloc>
800213d8:	e50b0008 	str	r0, [fp, #-8]
800213dc:	e51b3008 	ldr	r3, [fp, #-8]
800213e0:	e3530000 	cmp	r3, #0
800213e4:	0a000008 	beq	8002140c <_kmalloc+0xa8>
800213e8:	e3a02001 	mov	r2, #1
800213ec:	e51b3010 	ldr	r3, [fp, #-16]
800213f0:	e1a03312 	lsl	r3, r2, r3
800213f4:	e1a02003 	mov	r2, r3
800213f8:	e51b3008 	ldr	r3, [fp, #-8]
800213fc:	e0833002 	add	r3, r3, r2
80021400:	e51b1010 	ldr	r1, [fp, #-16]
80021404:	e1a00003 	mov	r0, r3
80021408:	eb00001e 	bl	80021488 <_kfree>
8002140c:	e51b3008 	ldr	r3, [fp, #-8]
80021410:	e1a00003 	mov	r0, r3
80021414:	e24bd004 	sub	sp, fp, #4
80021418:	e8bd8800 	pop	{fp, pc}
8002141c:	800ab808 	.word	0x800ab808
80021420:	0000ffff 	.word	0x0000ffff

80021424 <kmalloc>:
80021424:	e92d4800 	push	{fp, lr}
80021428:	e28db004 	add	fp, sp, #4
8002142c:	e24dd010 	sub	sp, sp, #16
80021430:	e50b0010 	str	r0, [fp, #-16]
80021434:	e51b3010 	ldr	r3, [fp, #-16]
80021438:	e353000c 	cmp	r3, #12
8002143c:	ca000002 	bgt	8002144c <kmalloc+0x28>
80021440:	e51b3010 	ldr	r3, [fp, #-16]
80021444:	e3530005 	cmp	r3, #5
80021448:	ca000001 	bgt	80021454 <kmalloc+0x30>
8002144c:	e59f002c 	ldr	r0, [pc, #44]	@ 80021480 <kmalloc+0x5c>
80021450:	eb000195 	bl	80021aac <panic>
80021454:	e59f0028 	ldr	r0, [pc, #40]	@ 80021484 <kmalloc+0x60>
80021458:	eb00129c 	bl	80025ed0 <acquire>
8002145c:	e51b0010 	ldr	r0, [fp, #-16]
80021460:	ebffffbf 	bl	80021364 <_kmalloc>
80021464:	e50b0008 	str	r0, [fp, #-8]
80021468:	e59f0014 	ldr	r0, [pc, #20]	@ 80021484 <kmalloc+0x60>
8002146c:	eb0012a2 	bl	80025efc <release>
80021470:	e51b3008 	ldr	r3, [fp, #-8]
80021474:	e1a00003 	mov	r0, r3
80021478:	e24bd004 	sub	sp, fp, #4
8002147c:	e8bd8800 	pop	{fp, pc}
80021480:	80029438 	.word	0x80029438
80021484:	800ab808 	.word	0x800ab808

80021488 <_kfree>:
80021488:	e92d4800 	push	{fp, lr}
8002148c:	e28db004 	add	fp, sp, #4
80021490:	e24dd018 	sub	sp, sp, #24
80021494:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80021498:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
8002149c:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
800214a0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214a4:	ebfffe23 	bl	80020d38 <mem2blkid>
800214a8:	e50b0008 	str	r0, [fp, #-8]
800214ac:	e51b3008 	ldr	r3, [fp, #-8]
800214b0:	e1a032c3 	asr	r3, r3, #5
800214b4:	e1a01003 	mov	r1, r3
800214b8:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800214bc:	ebfffdf6 	bl	80020c9c <get_mark>
800214c0:	e50b000c 	str	r0, [fp, #-12]
800214c4:	e51b300c 	ldr	r3, [fp, #-12]
800214c8:	e5933004 	ldr	r3, [r3, #4]
800214cc:	e51b1008 	ldr	r1, [fp, #-8]
800214d0:	e1a00003 	mov	r0, r3
800214d4:	ebfffe27 	bl	80020d78 <available>
800214d8:	e1a03000 	mov	r3, r0
800214dc:	e3530000 	cmp	r3, #0
800214e0:	0a000001 	beq	800214ec <_kfree+0x64>
800214e4:	e59f0090 	ldr	r0, [pc, #144]	@ 8002157c <_kfree+0xf4>
800214e8:	eb00016f 	bl	80021aac <panic>
800214ec:	e51b3008 	ldr	r3, [fp, #-8]
800214f0:	e2233001 	eor	r3, r3, #1
800214f4:	e50b3010 	str	r3, [fp, #-16]
800214f8:	e51b300c 	ldr	r3, [fp, #-12]
800214fc:	e5933004 	ldr	r3, [r3, #4]
80021500:	e51b1010 	ldr	r1, [fp, #-16]
80021504:	e1a00003 	mov	r0, r3
80021508:	ebfffe1a 	bl	80020d78 <available>
8002150c:	e1a03000 	mov	r3, r0
80021510:	e3530000 	cmp	r3, #0
80021514:	0a000002 	beq	80021524 <_kfree+0x9c>
80021518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002151c:	e353000c 	cmp	r3, #12
80021520:	1a000003 	bne	80021534 <_kfree+0xac>
80021524:	e51b1008 	ldr	r1, [fp, #-8]
80021528:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002152c:	ebfffefc 	bl	80021124 <mark_blk>
80021530:	ea00000e 	b	80021570 <_kfree+0xe8>
80021534:	e51b1010 	ldr	r1, [fp, #-16]
80021538:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
8002153c:	ebfffe90 	bl	80020f84 <unmark_blk>
80021540:	e51b3008 	ldr	r3, [fp, #-8]
80021544:	e3c33001 	bic	r3, r3, #1
80021548:	e1a01003 	mov	r1, r3
8002154c:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
80021550:	ebfffde8 	bl	80020cf8 <blkid2mem>
80021554:	e1a02000 	mov	r2, r0
80021558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002155c:	e2833001 	add	r3, r3, #1
80021560:	e1a01003 	mov	r1, r3
80021564:	e1a00002 	mov	r0, r2
80021568:	ebffffc6 	bl	80021488 <_kfree>
8002156c:	e1a00000 	nop			@ (mov r0, r0)
80021570:	e1a00000 	nop			@ (mov r0, r0)
80021574:	e24bd004 	sub	sp, fp, #4
80021578:	e8bd8800 	pop	{fp, pc}
8002157c:	80029458 	.word	0x80029458

80021580 <kfree>:
80021580:	e92d4800 	push	{fp, lr}
80021584:	e28db004 	add	fp, sp, #4
80021588:	e24dd008 	sub	sp, sp, #8
8002158c:	e50b0008 	str	r0, [fp, #-8]
80021590:	e50b100c 	str	r1, [fp, #-12]
80021594:	e51b300c 	ldr	r3, [fp, #-12]
80021598:	e353000c 	cmp	r3, #12
8002159c:	ca00000b 	bgt	800215d0 <kfree+0x50>
800215a0:	e51b300c 	ldr	r3, [fp, #-12]
800215a4:	e3530005 	cmp	r3, #5
800215a8:	da000008 	ble	800215d0 <kfree+0x50>
800215ac:	e3a02001 	mov	r2, #1
800215b0:	e51b300c 	ldr	r3, [fp, #-12]
800215b4:	e1a03312 	lsl	r3, r2, r3
800215b8:	e2433001 	sub	r3, r3, #1
800215bc:	e1a02003 	mov	r2, r3
800215c0:	e51b3008 	ldr	r3, [fp, #-8]
800215c4:	e0033002 	and	r3, r3, r2
800215c8:	e3530000 	cmp	r3, #0
800215cc:	0a000001 	beq	800215d8 <kfree+0x58>
800215d0:	e59f0028 	ldr	r0, [pc, #40]	@ 80021600 <kfree+0x80>
800215d4:	eb000134 	bl	80021aac <panic>
800215d8:	e59f0024 	ldr	r0, [pc, #36]	@ 80021604 <kfree+0x84>
800215dc:	eb00123b 	bl	80025ed0 <acquire>
800215e0:	e51b100c 	ldr	r1, [fp, #-12]
800215e4:	e51b0008 	ldr	r0, [fp, #-8]
800215e8:	ebffffa6 	bl	80021488 <_kfree>
800215ec:	e59f0010 	ldr	r0, [pc, #16]	@ 80021604 <kfree+0x84>
800215f0:	eb001241 	bl	80025efc <release>
800215f4:	e1a00000 	nop			@ (mov r0, r0)
800215f8:	e24bd004 	sub	sp, fp, #4
800215fc:	e8bd8800 	pop	{fp, pc}
80021600:	8002946c 	.word	0x8002946c
80021604:	800ab808 	.word	0x800ab808

80021608 <free_page>:
80021608:	e92d4800 	push	{fp, lr}
8002160c:	e28db004 	add	fp, sp, #4
80021610:	e24dd008 	sub	sp, sp, #8
80021614:	e50b0008 	str	r0, [fp, #-8]
80021618:	e3a0100c 	mov	r1, #12
8002161c:	e51b0008 	ldr	r0, [fp, #-8]
80021620:	ebffffd6 	bl	80021580 <kfree>
80021624:	e1a00000 	nop			@ (mov r0, r0)
80021628:	e24bd004 	sub	sp, fp, #4
8002162c:	e8bd8800 	pop	{fp, pc}

80021630 <alloc_page>:
80021630:	e92d4800 	push	{fp, lr}
80021634:	e28db004 	add	fp, sp, #4
80021638:	e3a0000c 	mov	r0, #12
8002163c:	ebffff78 	bl	80021424 <kmalloc>
80021640:	e1a03000 	mov	r3, r0
80021644:	e1a00003 	mov	r0, r3
80021648:	e8bd8800 	pop	{fp, pc}

8002164c <get_order>:
8002164c:	e92d4800 	push	{fp, lr}
80021650:	e28db004 	add	fp, sp, #4
80021654:	e24dd010 	sub	sp, sp, #16
80021658:	e50b0010 	str	r0, [fp, #-16]
8002165c:	e51b3010 	ldr	r3, [fp, #-16]
80021660:	e2433001 	sub	r3, r3, #1
80021664:	e50b3010 	str	r3, [fp, #-16]
80021668:	e51b3010 	ldr	r3, [fp, #-16]
8002166c:	e1a030a3 	lsr	r3, r3, #1
80021670:	e51b2010 	ldr	r2, [fp, #-16]
80021674:	e1823003 	orr	r3, r2, r3
80021678:	e50b3010 	str	r3, [fp, #-16]
8002167c:	e51b3010 	ldr	r3, [fp, #-16]
80021680:	e1a03123 	lsr	r3, r3, #2
80021684:	e51b2010 	ldr	r2, [fp, #-16]
80021688:	e1823003 	orr	r3, r2, r3
8002168c:	e50b3010 	str	r3, [fp, #-16]
80021690:	e51b3010 	ldr	r3, [fp, #-16]
80021694:	e1a03223 	lsr	r3, r3, #4
80021698:	e51b2010 	ldr	r2, [fp, #-16]
8002169c:	e1823003 	orr	r3, r2, r3
800216a0:	e50b3010 	str	r3, [fp, #-16]
800216a4:	e51b3010 	ldr	r3, [fp, #-16]
800216a8:	e1a03423 	lsr	r3, r3, #8
800216ac:	e51b2010 	ldr	r2, [fp, #-16]
800216b0:	e1823003 	orr	r3, r2, r3
800216b4:	e50b3010 	str	r3, [fp, #-16]
800216b8:	e51b3010 	ldr	r3, [fp, #-16]
800216bc:	e1a03823 	lsr	r3, r3, #16
800216c0:	e51b2010 	ldr	r2, [fp, #-16]
800216c4:	e1823003 	orr	r3, r2, r3
800216c8:	e50b3010 	str	r3, [fp, #-16]
800216cc:	e51b3010 	ldr	r3, [fp, #-16]
800216d0:	e2833001 	add	r3, r3, #1
800216d4:	e50b3010 	str	r3, [fp, #-16]
800216d8:	e3a03000 	mov	r3, #0
800216dc:	e50b3008 	str	r3, [fp, #-8]
800216e0:	ea00000a 	b	80021710 <get_order+0xc4>
800216e4:	e3a02001 	mov	r2, #1
800216e8:	e51b3008 	ldr	r3, [fp, #-8]
800216ec:	e1a03312 	lsl	r3, r2, r3
800216f0:	e1a02003 	mov	r2, r3
800216f4:	e51b3010 	ldr	r3, [fp, #-16]
800216f8:	e0033002 	and	r3, r3, r2
800216fc:	e3530000 	cmp	r3, #0
80021700:	1a000006 	bne	80021720 <get_order+0xd4>
80021704:	e51b3008 	ldr	r3, [fp, #-8]
80021708:	e2833001 	add	r3, r3, #1
8002170c:	e50b3008 	str	r3, [fp, #-8]
80021710:	e51b3008 	ldr	r3, [fp, #-8]
80021714:	e353001f 	cmp	r3, #31
80021718:	9afffff1 	bls	800216e4 <get_order+0x98>
8002171c:	ea000000 	b	80021724 <get_order+0xd8>
80021720:	e1a00000 	nop			@ (mov r0, r0)
80021724:	e51b3008 	ldr	r3, [fp, #-8]
80021728:	e3530005 	cmp	r3, #5
8002172c:	8a000002 	bhi	8002173c <get_order+0xf0>
80021730:	e3a03006 	mov	r3, #6
80021734:	e50b3008 	str	r3, [fp, #-8]
80021738:	ea000004 	b	80021750 <get_order+0x104>
8002173c:	e51b3008 	ldr	r3, [fp, #-8]
80021740:	e353000c 	cmp	r3, #12
80021744:	9a000001 	bls	80021750 <get_order+0x104>
80021748:	e59f0010 	ldr	r0, [pc, #16]	@ 80021760 <get_order+0x114>
8002174c:	eb0000d6 	bl	80021aac <panic>
80021750:	e51b3008 	ldr	r3, [fp, #-8]
80021754:	e1a00003 	mov	r0, r3
80021758:	e24bd004 	sub	sp, fp, #4
8002175c:	e8bd8800 	pop	{fp, pc}
80021760:	8002949c 	.word	0x8002949c

80021764 <printint>:
80021764:	e92d4800 	push	{fp, lr}
80021768:	e28db004 	add	fp, sp, #4
8002176c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80021770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80021774:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80021778:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
8002177c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021780:	e3530000 	cmp	r3, #0
80021784:	0a00000a 	beq	800217b4 <printint+0x50>
80021788:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002178c:	e1a03fa3 	lsr	r3, r3, #31
80021790:	e6ef3073 	uxtb	r3, r3
80021794:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80021798:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002179c:	e3530000 	cmp	r3, #0
800217a0:	0a000003 	beq	800217b4 <printint+0x50>
800217a4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217a8:	e2633000 	rsb	r3, r3, #0
800217ac:	e50b300c 	str	r3, [fp, #-12]
800217b0:	ea000001 	b	800217bc <printint+0x58>
800217b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800217b8:	e50b300c 	str	r3, [fp, #-12]
800217bc:	e3a03000 	mov	r3, #0
800217c0:	e50b3008 	str	r3, [fp, #-8]
800217c4:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
800217c8:	e51b300c 	ldr	r3, [fp, #-12]
800217cc:	e1a01002 	mov	r1, r2
800217d0:	e1a00003 	mov	r0, r3
800217d4:	eb001e8d 	bl	80029210 <__aeabi_uidivmod>
800217d8:	e1a03001 	mov	r3, r1
800217dc:	e1a01003 	mov	r1, r3
800217e0:	e51b3008 	ldr	r3, [fp, #-8]
800217e4:	e2832001 	add	r2, r3, #1
800217e8:	e50b2008 	str	r2, [fp, #-8]
800217ec:	e59f209c 	ldr	r2, [pc, #156]	@ 80021890 <printint+0x12c>
800217f0:	e7d22001 	ldrb	r2, [r2, r1]
800217f4:	e2433004 	sub	r3, r3, #4
800217f8:	e083300b 	add	r3, r3, fp
800217fc:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
80021800:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80021804:	e1a01003 	mov	r1, r3
80021808:	e51b000c 	ldr	r0, [fp, #-12]
8002180c:	eb001e42 	bl	8002911c <__udivsi3>
80021810:	e1a03000 	mov	r3, r0
80021814:	e50b300c 	str	r3, [fp, #-12]
80021818:	e51b300c 	ldr	r3, [fp, #-12]
8002181c:	e3530000 	cmp	r3, #0
80021820:	1affffe7 	bne	800217c4 <printint+0x60>
80021824:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80021828:	e3530000 	cmp	r3, #0
8002182c:	0a00000d 	beq	80021868 <printint+0x104>
80021830:	e51b3008 	ldr	r3, [fp, #-8]
80021834:	e2832001 	add	r2, r3, #1
80021838:	e50b2008 	str	r2, [fp, #-8]
8002183c:	e2433004 	sub	r3, r3, #4
80021840:	e083300b 	add	r3, r3, fp
80021844:	e3a0202d 	mov	r2, #45	@ 0x2d
80021848:	e5432018 	strb	r2, [r3, #-24]	@ 0xffffffe8
8002184c:	ea000005 	b	80021868 <printint+0x104>
80021850:	e24b201c 	sub	r2, fp, #28
80021854:	e51b3008 	ldr	r3, [fp, #-8]
80021858:	e0823003 	add	r3, r2, r3
8002185c:	e5d33000 	ldrb	r3, [r3]
80021860:	e1a00003 	mov	r0, r3
80021864:	eb0000a9 	bl	80021b10 <consputc>
80021868:	e51b3008 	ldr	r3, [fp, #-8]
8002186c:	e2433001 	sub	r3, r3, #1
80021870:	e50b3008 	str	r3, [fp, #-8]
80021874:	e51b3008 	ldr	r3, [fp, #-8]
80021878:	e3530000 	cmp	r3, #0
8002187c:	aafffff3 	bge	80021850 <printint+0xec>
80021880:	e1a00000 	nop			@ (mov r0, r0)
80021884:	e1a00000 	nop			@ (mov r0, r0)
80021888:	e24bd004 	sub	sp, fp, #4
8002188c:	e8bd8800 	pop	{fp, pc}
80021890:	8002a000 	.word	0x8002a000

80021894 <cprintf>:
80021894:	e92d000f 	push	{r0, r1, r2, r3}
80021898:	e92d4800 	push	{fp, lr}
8002189c:	e28db004 	add	fp, sp, #4
800218a0:	e24dd018 	sub	sp, sp, #24
800218a4:	e59f31f0 	ldr	r3, [pc, #496]	@ 80021a9c <cprintf+0x208>
800218a8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800218ac:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800218b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800218b4:	e3530000 	cmp	r3, #0
800218b8:	0a000001 	beq	800218c4 <cprintf+0x30>
800218bc:	e59f01d8 	ldr	r0, [pc, #472]	@ 80021a9c <cprintf+0x208>
800218c0:	eb001182 	bl	80025ed0 <acquire>
800218c4:	e59b3004 	ldr	r3, [fp, #4]
800218c8:	e3530000 	cmp	r3, #0
800218cc:	1a000001 	bne	800218d8 <cprintf+0x44>
800218d0:	e59f01c8 	ldr	r0, [pc, #456]	@ 80021aa0 <cprintf+0x20c>
800218d4:	eb000074 	bl	80021aac <panic>
800218d8:	e28b3008 	add	r3, fp, #8
800218dc:	e50b300c 	str	r3, [fp, #-12]
800218e0:	e3a03000 	mov	r3, #0
800218e4:	e50b3008 	str	r3, [fp, #-8]
800218e8:	ea000057 	b	80021a4c <cprintf+0x1b8>
800218ec:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800218f0:	e3530025 	cmp	r3, #37	@ 0x25
800218f4:	0a000002 	beq	80021904 <cprintf+0x70>
800218f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800218fc:	eb000083 	bl	80021b10 <consputc>
80021900:	ea00004e 	b	80021a40 <cprintf+0x1ac>
80021904:	e59b2004 	ldr	r2, [fp, #4]
80021908:	e51b3008 	ldr	r3, [fp, #-8]
8002190c:	e2833001 	add	r3, r3, #1
80021910:	e50b3008 	str	r3, [fp, #-8]
80021914:	e51b3008 	ldr	r3, [fp, #-8]
80021918:	e0823003 	add	r3, r2, r3
8002191c:	e5d33000 	ldrb	r3, [r3]
80021920:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021924:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021928:	e3530000 	cmp	r3, #0
8002192c:	0a00004f 	beq	80021a70 <cprintf+0x1dc>
80021930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021934:	e3530025 	cmp	r3, #37	@ 0x25
80021938:	0a000038 	beq	80021a20 <cprintf+0x18c>
8002193c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021940:	e3530025 	cmp	r3, #37	@ 0x25
80021944:	ba000038 	blt	80021a2c <cprintf+0x198>
80021948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002194c:	e3530078 	cmp	r3, #120	@ 0x78
80021950:	ca000035 	bgt	80021a2c <cprintf+0x198>
80021954:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021958:	e3530064 	cmp	r3, #100	@ 0x64
8002195c:	ba000032 	blt	80021a2c <cprintf+0x198>
80021960:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021964:	e2432064 	sub	r2, r3, #100	@ 0x64
80021968:	e59f3134 	ldr	r3, [pc, #308]	@ 80021aa4 <cprintf+0x210>
8002196c:	e3520014 	cmp	r2, #20
80021970:	8a00002d 	bhi	80021a2c <cprintf+0x198>
80021974:	e793f102 	ldr	pc, [r3, r2, lsl #2]
80021978:	e1a00000 	nop			@ (mov r0, r0)
8002197c:	e51b300c 	ldr	r3, [fp, #-12]
80021980:	e2832004 	add	r2, r3, #4
80021984:	e50b200c 	str	r2, [fp, #-12]
80021988:	e5933000 	ldr	r3, [r3]
8002198c:	e3a02001 	mov	r2, #1
80021990:	e3a0100a 	mov	r1, #10
80021994:	e1a00003 	mov	r0, r3
80021998:	ebffff71 	bl	80021764 <printint>
8002199c:	ea000027 	b	80021a40 <cprintf+0x1ac>
800219a0:	e51b300c 	ldr	r3, [fp, #-12]
800219a4:	e2832004 	add	r2, r3, #4
800219a8:	e50b200c 	str	r2, [fp, #-12]
800219ac:	e5933000 	ldr	r3, [r3]
800219b0:	e3a02000 	mov	r2, #0
800219b4:	e3a01010 	mov	r1, #16
800219b8:	e1a00003 	mov	r0, r3
800219bc:	ebffff68 	bl	80021764 <printint>
800219c0:	ea00001e 	b	80021a40 <cprintf+0x1ac>
800219c4:	e51b300c 	ldr	r3, [fp, #-12]
800219c8:	e2832004 	add	r2, r3, #4
800219cc:	e50b200c 	str	r2, [fp, #-12]
800219d0:	e5933000 	ldr	r3, [r3]
800219d4:	e50b3010 	str	r3, [fp, #-16]
800219d8:	e51b3010 	ldr	r3, [fp, #-16]
800219dc:	e3530000 	cmp	r3, #0
800219e0:	1a000009 	bne	80021a0c <cprintf+0x178>
800219e4:	e59f30bc 	ldr	r3, [pc, #188]	@ 80021aa8 <cprintf+0x214>
800219e8:	e50b3010 	str	r3, [fp, #-16]
800219ec:	ea000006 	b	80021a0c <cprintf+0x178>
800219f0:	e51b3010 	ldr	r3, [fp, #-16]
800219f4:	e5d33000 	ldrb	r3, [r3]
800219f8:	e1a00003 	mov	r0, r3
800219fc:	eb000043 	bl	80021b10 <consputc>
80021a00:	e51b3010 	ldr	r3, [fp, #-16]
80021a04:	e2833001 	add	r3, r3, #1
80021a08:	e50b3010 	str	r3, [fp, #-16]
80021a0c:	e51b3010 	ldr	r3, [fp, #-16]
80021a10:	e5d33000 	ldrb	r3, [r3]
80021a14:	e3530000 	cmp	r3, #0
80021a18:	1afffff4 	bne	800219f0 <cprintf+0x15c>
80021a1c:	ea000007 	b	80021a40 <cprintf+0x1ac>
80021a20:	e3a00025 	mov	r0, #37	@ 0x25
80021a24:	eb000039 	bl	80021b10 <consputc>
80021a28:	ea000004 	b	80021a40 <cprintf+0x1ac>
80021a2c:	e3a00025 	mov	r0, #37	@ 0x25
80021a30:	eb000036 	bl	80021b10 <consputc>
80021a34:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80021a38:	eb000034 	bl	80021b10 <consputc>
80021a3c:	e1a00000 	nop			@ (mov r0, r0)
80021a40:	e51b3008 	ldr	r3, [fp, #-8]
80021a44:	e2833001 	add	r3, r3, #1
80021a48:	e50b3008 	str	r3, [fp, #-8]
80021a4c:	e59b2004 	ldr	r2, [fp, #4]
80021a50:	e51b3008 	ldr	r3, [fp, #-8]
80021a54:	e0823003 	add	r3, r2, r3
80021a58:	e5d33000 	ldrb	r3, [r3]
80021a5c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021a60:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021a64:	e3530000 	cmp	r3, #0
80021a68:	1affff9f 	bne	800218ec <cprintf+0x58>
80021a6c:	ea000000 	b	80021a74 <cprintf+0x1e0>
80021a70:	e1a00000 	nop			@ (mov r0, r0)
80021a74:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021a78:	e3530000 	cmp	r3, #0
80021a7c:	0a000001 	beq	80021a88 <cprintf+0x1f4>
80021a80:	e59f0014 	ldr	r0, [pc, #20]	@ 80021a9c <cprintf+0x208>
80021a84:	eb00111c 	bl	80025efc <release>
80021a88:	e1a00000 	nop			@ (mov r0, r0)
80021a8c:	e24bd004 	sub	sp, fp, #4
80021a90:	e8bd4800 	pop	{fp, lr}
80021a94:	e28dd010 	add	sp, sp, #16
80021a98:	e12fff1e 	bx	lr
80021a9c:	800ab884 	.word	0x800ab884
80021aa0:	800294ac 	.word	0x800294ac
80021aa4:	800294c0 	.word	0x800294c0
80021aa8:	800294b8 	.word	0x800294b8

80021aac <panic>:
80021aac:	e92d4800 	push	{fp, lr}
80021ab0:	e28db004 	add	fp, sp, #4
80021ab4:	e24dd008 	sub	sp, sp, #8
80021ab8:	e50b0008 	str	r0, [fp, #-8]
80021abc:	ebfffa9f 	bl	80020540 <cli>
80021ac0:	e59f3038 	ldr	r3, [pc, #56]	@ 80021b00 <panic+0x54>
80021ac4:	e3a02000 	mov	r2, #0
80021ac8:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021acc:	e59f3030 	ldr	r3, [pc, #48]	@ 80021b04 <panic+0x58>
80021ad0:	e5933000 	ldr	r3, [r3]
80021ad4:	e5d33000 	ldrb	r3, [r3]
80021ad8:	e1a01003 	mov	r1, r3
80021adc:	e59f0024 	ldr	r0, [pc, #36]	@ 80021b08 <panic+0x5c>
80021ae0:	ebffff6b 	bl	80021894 <cprintf>
80021ae4:	e51b0008 	ldr	r0, [fp, #-8]
80021ae8:	ebfffb47 	bl	8002080c <show_callstk>
80021aec:	e59f3018 	ldr	r3, [pc, #24]	@ 80021b0c <panic+0x60>
80021af0:	e3a02001 	mov	r2, #1
80021af4:	e5832000 	str	r2, [r3]
80021af8:	e1a00000 	nop			@ (mov r0, r0)
80021afc:	eafffffd 	b	80021af8 <panic+0x4c>
80021b00:	800ab884 	.word	0x800ab884
80021b04:	800ad604 	.word	0x800ad604
80021b08:	80029514 	.word	0x80029514
80021b0c:	800ab880 	.word	0x800ab880

80021b10 <consputc>:
80021b10:	e92d4800 	push	{fp, lr}
80021b14:	e28db004 	add	fp, sp, #4
80021b18:	e24dd008 	sub	sp, sp, #8
80021b1c:	e50b0008 	str	r0, [fp, #-8]
80021b20:	e59f3050 	ldr	r3, [pc, #80]	@ 80021b78 <consputc+0x68>
80021b24:	e5933000 	ldr	r3, [r3]
80021b28:	e3530000 	cmp	r3, #0
80021b2c:	0a000002 	beq	80021b3c <consputc+0x2c>
80021b30:	ebfffa82 	bl	80020540 <cli>
80021b34:	e1a00000 	nop			@ (mov r0, r0)
80021b38:	eafffffd 	b	80021b34 <consputc+0x24>
80021b3c:	e51b3008 	ldr	r3, [fp, #-8]
80021b40:	e3530c01 	cmp	r3, #256	@ 0x100
80021b44:	1a000006 	bne	80021b64 <consputc+0x54>
80021b48:	e3a00008 	mov	r0, #8
80021b4c:	eb001d31 	bl	80029018 <uartputc>
80021b50:	e3a00020 	mov	r0, #32
80021b54:	eb001d2f 	bl	80029018 <uartputc>
80021b58:	e3a00008 	mov	r0, #8
80021b5c:	eb001d2d 	bl	80029018 <uartputc>
80021b60:	ea000001 	b	80021b6c <consputc+0x5c>
80021b64:	e51b0008 	ldr	r0, [fp, #-8]
80021b68:	eb001d2a 	bl	80029018 <uartputc>
80021b6c:	e1a00000 	nop			@ (mov r0, r0)
80021b70:	e24bd004 	sub	sp, fp, #4
80021b74:	e8bd8800 	pop	{fp, pc}
80021b78:	800ab880 	.word	0x800ab880

80021b7c <consoleintr>:
80021b7c:	e92d4800 	push	{fp, lr}
80021b80:	e28db004 	add	fp, sp, #4
80021b84:	e24dd010 	sub	sp, sp, #16
80021b88:	e50b0010 	str	r0, [fp, #-16]
80021b8c:	e59f01fc 	ldr	r0, [pc, #508]	@ 80021d90 <consoleintr+0x214>
80021b90:	eb0010ce 	bl	80025ed0 <acquire>
80021b94:	ea000072 	b	80021d64 <consoleintr+0x1e8>
80021b98:	e51b3008 	ldr	r3, [fp, #-8]
80021b9c:	e353007f 	cmp	r3, #127	@ 0x7f
80021ba0:	0a000028 	beq	80021c48 <consoleintr+0xcc>
80021ba4:	e51b3008 	ldr	r3, [fp, #-8]
80021ba8:	e353007f 	cmp	r3, #127	@ 0x7f
80021bac:	ca000033 	bgt	80021c80 <consoleintr+0x104>
80021bb0:	e51b3008 	ldr	r3, [fp, #-8]
80021bb4:	e3530015 	cmp	r3, #21
80021bb8:	0a000011 	beq	80021c04 <consoleintr+0x88>
80021bbc:	e51b3008 	ldr	r3, [fp, #-8]
80021bc0:	e3530015 	cmp	r3, #21
80021bc4:	ca00002d 	bgt	80021c80 <consoleintr+0x104>
80021bc8:	e51b3008 	ldr	r3, [fp, #-8]
80021bcc:	e3530008 	cmp	r3, #8
80021bd0:	0a00001c 	beq	80021c48 <consoleintr+0xcc>
80021bd4:	e51b3008 	ldr	r3, [fp, #-8]
80021bd8:	e3530010 	cmp	r3, #16
80021bdc:	1a000027 	bne	80021c80 <consoleintr+0x104>
80021be0:	eb00106f 	bl	80025da4 <procdump>
80021be4:	ea00005e 	b	80021d64 <consoleintr+0x1e8>
80021be8:	e59f31a0 	ldr	r3, [pc, #416]	@ 80021d90 <consoleintr+0x214>
80021bec:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021bf0:	e2433001 	sub	r3, r3, #1
80021bf4:	e59f2194 	ldr	r2, [pc, #404]	@ 80021d90 <consoleintr+0x214>
80021bf8:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021bfc:	e3a00c01 	mov	r0, #256	@ 0x100
80021c00:	ebffffc2 	bl	80021b10 <consputc>
80021c04:	e59f3184 	ldr	r3, [pc, #388]	@ 80021d90 <consoleintr+0x214>
80021c08:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c0c:	e59f317c 	ldr	r3, [pc, #380]	@ 80021d90 <consoleintr+0x214>
80021c10:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c14:	e1520003 	cmp	r2, r3
80021c18:	0a00004c 	beq	80021d50 <consoleintr+0x1d4>
80021c1c:	e59f316c 	ldr	r3, [pc, #364]	@ 80021d90 <consoleintr+0x214>
80021c20:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c24:	e2433001 	sub	r3, r3, #1
80021c28:	e1a03b83 	lsl	r3, r3, #23
80021c2c:	e1a03ba3 	lsr	r3, r3, #23
80021c30:	e59f2158 	ldr	r2, [pc, #344]	@ 80021d90 <consoleintr+0x214>
80021c34:	e0823003 	add	r3, r2, r3
80021c38:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021c3c:	e353000a 	cmp	r3, #10
80021c40:	1affffe8 	bne	80021be8 <consoleintr+0x6c>
80021c44:	ea000041 	b	80021d50 <consoleintr+0x1d4>
80021c48:	e59f3140 	ldr	r3, [pc, #320]	@ 80021d90 <consoleintr+0x214>
80021c4c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c50:	e59f3138 	ldr	r3, [pc, #312]	@ 80021d90 <consoleintr+0x214>
80021c54:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021c58:	e1520003 	cmp	r2, r3
80021c5c:	0a00003d 	beq	80021d58 <consoleintr+0x1dc>
80021c60:	e59f3128 	ldr	r3, [pc, #296]	@ 80021d90 <consoleintr+0x214>
80021c64:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021c68:	e2433001 	sub	r3, r3, #1
80021c6c:	e59f211c 	ldr	r2, [pc, #284]	@ 80021d90 <consoleintr+0x214>
80021c70:	e582323c 	str	r3, [r2, #572]	@ 0x23c
80021c74:	e3a00c01 	mov	r0, #256	@ 0x100
80021c78:	ebffffa4 	bl	80021b10 <consputc>
80021c7c:	ea000035 	b	80021d58 <consoleintr+0x1dc>
80021c80:	e51b3008 	ldr	r3, [fp, #-8]
80021c84:	e3530000 	cmp	r3, #0
80021c88:	0a000034 	beq	80021d60 <consoleintr+0x1e4>
80021c8c:	e59f30fc 	ldr	r3, [pc, #252]	@ 80021d90 <consoleintr+0x214>
80021c90:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021c94:	e59f30f4 	ldr	r3, [pc, #244]	@ 80021d90 <consoleintr+0x214>
80021c98:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021c9c:	e0423003 	sub	r3, r2, r3
80021ca0:	e3530c02 	cmp	r3, #512	@ 0x200
80021ca4:	2a00002d 	bcs	80021d60 <consoleintr+0x1e4>
80021ca8:	e51b3008 	ldr	r3, [fp, #-8]
80021cac:	e353000d 	cmp	r3, #13
80021cb0:	0a000001 	beq	80021cbc <consoleintr+0x140>
80021cb4:	e51b3008 	ldr	r3, [fp, #-8]
80021cb8:	ea000000 	b	80021cc0 <consoleintr+0x144>
80021cbc:	e3a0300a 	mov	r3, #10
80021cc0:	e50b3008 	str	r3, [fp, #-8]
80021cc4:	e59f30c4 	ldr	r3, [pc, #196]	@ 80021d90 <consoleintr+0x214>
80021cc8:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021ccc:	e2832001 	add	r2, r3, #1
80021cd0:	e59f10b8 	ldr	r1, [pc, #184]	@ 80021d90 <consoleintr+0x214>
80021cd4:	e581223c 	str	r2, [r1, #572]	@ 0x23c
80021cd8:	e1a03b83 	lsl	r3, r3, #23
80021cdc:	e1a03ba3 	lsr	r3, r3, #23
80021ce0:	e51b2008 	ldr	r2, [fp, #-8]
80021ce4:	e6ef1072 	uxtb	r1, r2
80021ce8:	e59f20a0 	ldr	r2, [pc, #160]	@ 80021d90 <consoleintr+0x214>
80021cec:	e0823003 	add	r3, r2, r3
80021cf0:	e1a02001 	mov	r2, r1
80021cf4:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80021cf8:	e51b0008 	ldr	r0, [fp, #-8]
80021cfc:	ebffff83 	bl	80021b10 <consputc>
80021d00:	e51b3008 	ldr	r3, [fp, #-8]
80021d04:	e353000a 	cmp	r3, #10
80021d08:	0a000009 	beq	80021d34 <consoleintr+0x1b8>
80021d0c:	e51b3008 	ldr	r3, [fp, #-8]
80021d10:	e3530004 	cmp	r3, #4
80021d14:	0a000006 	beq	80021d34 <consoleintr+0x1b8>
80021d18:	e59f3070 	ldr	r3, [pc, #112]	@ 80021d90 <consoleintr+0x214>
80021d1c:	e593223c 	ldr	r2, [r3, #572]	@ 0x23c
80021d20:	e59f3068 	ldr	r3, [pc, #104]	@ 80021d90 <consoleintr+0x214>
80021d24:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021d28:	e2833c02 	add	r3, r3, #512	@ 0x200
80021d2c:	e1520003 	cmp	r2, r3
80021d30:	1a00000a 	bne	80021d60 <consoleintr+0x1e4>
80021d34:	e59f3054 	ldr	r3, [pc, #84]	@ 80021d90 <consoleintr+0x214>
80021d38:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80021d3c:	e59f204c 	ldr	r2, [pc, #76]	@ 80021d90 <consoleintr+0x214>
80021d40:	e5823238 	str	r3, [r2, #568]	@ 0x238
80021d44:	e59f0048 	ldr	r0, [pc, #72]	@ 80021d94 <consoleintr+0x218>
80021d48:	eb000fdb 	bl	80025cbc <wakeup>
80021d4c:	ea000003 	b	80021d60 <consoleintr+0x1e4>
80021d50:	e1a00000 	nop			@ (mov r0, r0)
80021d54:	ea000002 	b	80021d64 <consoleintr+0x1e8>
80021d58:	e1a00000 	nop			@ (mov r0, r0)
80021d5c:	ea000000 	b	80021d64 <consoleintr+0x1e8>
80021d60:	e1a00000 	nop			@ (mov r0, r0)
80021d64:	e51b3010 	ldr	r3, [fp, #-16]
80021d68:	e12fff33 	blx	r3
80021d6c:	e50b0008 	str	r0, [fp, #-8]
80021d70:	e51b3008 	ldr	r3, [fp, #-8]
80021d74:	e3530000 	cmp	r3, #0
80021d78:	aaffff86 	bge	80021b98 <consoleintr+0x1c>
80021d7c:	e59f000c 	ldr	r0, [pc, #12]	@ 80021d90 <consoleintr+0x214>
80021d80:	eb00105d 	bl	80025efc <release>
80021d84:	e1a00000 	nop			@ (mov r0, r0)
80021d88:	e24bd004 	sub	sp, fp, #4
80021d8c:	e8bd8800 	pop	{fp, pc}
80021d90:	800ab8bc 	.word	0x800ab8bc
80021d94:	800abaf0 	.word	0x800abaf0

80021d98 <consoleread>:
80021d98:	e92d4800 	push	{fp, lr}
80021d9c:	e28db004 	add	fp, sp, #4
80021da0:	e24dd018 	sub	sp, sp, #24
80021da4:	e50b0010 	str	r0, [fp, #-16]
80021da8:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021dac:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021db0:	e51b0010 	ldr	r0, [fp, #-16]
80021db4:	eb000534 	bl	8002328c <iunlock>
80021db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021dbc:	e50b3008 	str	r3, [fp, #-8]
80021dc0:	e59f0128 	ldr	r0, [pc, #296]	@ 80021ef0 <consoleread+0x158>
80021dc4:	eb001041 	bl	80025ed0 <acquire>
80021dc8:	ea000037 	b	80021eac <consoleread+0x114>
80021dcc:	e59f3120 	ldr	r3, [pc, #288]	@ 80021ef4 <consoleread+0x15c>
80021dd0:	e5933000 	ldr	r3, [r3]
80021dd4:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80021dd8:	e3530000 	cmp	r3, #0
80021ddc:	0a000005 	beq	80021df8 <consoleread+0x60>
80021de0:	e59f0108 	ldr	r0, [pc, #264]	@ 80021ef0 <consoleread+0x158>
80021de4:	eb001044 	bl	80025efc <release>
80021de8:	e51b0010 	ldr	r0, [fp, #-16]
80021dec:	eb0004c2 	bl	800230fc <ilock>
80021df0:	e3e03000 	mvn	r3, #0
80021df4:	ea00003a 	b	80021ee4 <consoleread+0x14c>
80021df8:	e59f10f0 	ldr	r1, [pc, #240]	@ 80021ef0 <consoleread+0x158>
80021dfc:	e59f00f4 	ldr	r0, [pc, #244]	@ 80021ef8 <consoleread+0x160>
80021e00:	eb000f13 	bl	80025a54 <sleep>
80021e04:	e59f30e4 	ldr	r3, [pc, #228]	@ 80021ef0 <consoleread+0x158>
80021e08:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80021e0c:	e59f30dc 	ldr	r3, [pc, #220]	@ 80021ef0 <consoleread+0x158>
80021e10:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80021e14:	e1520003 	cmp	r2, r3
80021e18:	0affffeb 	beq	80021dcc <consoleread+0x34>
80021e1c:	e59f30cc 	ldr	r3, [pc, #204]	@ 80021ef0 <consoleread+0x158>
80021e20:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021e24:	e2832001 	add	r2, r3, #1
80021e28:	e59f10c0 	ldr	r1, [pc, #192]	@ 80021ef0 <consoleread+0x158>
80021e2c:	e5812234 	str	r2, [r1, #564]	@ 0x234
80021e30:	e1a03b83 	lsl	r3, r3, #23
80021e34:	e1a03ba3 	lsr	r3, r3, #23
80021e38:	e59f20b0 	ldr	r2, [pc, #176]	@ 80021ef0 <consoleread+0x158>
80021e3c:	e0823003 	add	r3, r2, r3
80021e40:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80021e44:	e50b300c 	str	r3, [fp, #-12]
80021e48:	e51b300c 	ldr	r3, [fp, #-12]
80021e4c:	e3530004 	cmp	r3, #4
80021e50:	1a000009 	bne	80021e7c <consoleread+0xe4>
80021e54:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e58:	e51b2008 	ldr	r2, [fp, #-8]
80021e5c:	e1520003 	cmp	r2, r3
80021e60:	9a000015 	bls	80021ebc <consoleread+0x124>
80021e64:	e59f3084 	ldr	r3, [pc, #132]	@ 80021ef0 <consoleread+0x158>
80021e68:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80021e6c:	e2433001 	sub	r3, r3, #1
80021e70:	e59f2078 	ldr	r2, [pc, #120]	@ 80021ef0 <consoleread+0x158>
80021e74:	e5823234 	str	r3, [r2, #564]	@ 0x234
80021e78:	ea00000f 	b	80021ebc <consoleread+0x124>
80021e7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80021e80:	e2832001 	add	r2, r3, #1
80021e84:	e50b2014 	str	r2, [fp, #-20]	@ 0xffffffec
80021e88:	e51b200c 	ldr	r2, [fp, #-12]
80021e8c:	e6ef2072 	uxtb	r2, r2
80021e90:	e5c32000 	strb	r2, [r3]
80021e94:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021e98:	e2433001 	sub	r3, r3, #1
80021e9c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80021ea0:	e51b300c 	ldr	r3, [fp, #-12]
80021ea4:	e353000a 	cmp	r3, #10
80021ea8:	0a000005 	beq	80021ec4 <consoleread+0x12c>
80021eac:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021eb0:	e3530000 	cmp	r3, #0
80021eb4:	caffffd2 	bgt	80021e04 <consoleread+0x6c>
80021eb8:	ea000002 	b	80021ec8 <consoleread+0x130>
80021ebc:	e1a00000 	nop			@ (mov r0, r0)
80021ec0:	ea000000 	b	80021ec8 <consoleread+0x130>
80021ec4:	e1a00000 	nop			@ (mov r0, r0)
80021ec8:	e59f0020 	ldr	r0, [pc, #32]	@ 80021ef0 <consoleread+0x158>
80021ecc:	eb00100a 	bl	80025efc <release>
80021ed0:	e51b0010 	ldr	r0, [fp, #-16]
80021ed4:	eb000488 	bl	800230fc <ilock>
80021ed8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021edc:	e51b2008 	ldr	r2, [fp, #-8]
80021ee0:	e0423003 	sub	r3, r2, r3
80021ee4:	e1a00003 	mov	r0, r3
80021ee8:	e24bd004 	sub	sp, fp, #4
80021eec:	e8bd8800 	pop	{fp, pc}
80021ef0:	800ab8bc 	.word	0x800ab8bc
80021ef4:	800afa4c 	.word	0x800afa4c
80021ef8:	800abaf0 	.word	0x800abaf0

80021efc <consolewrite>:
80021efc:	e92d4800 	push	{fp, lr}
80021f00:	e28db004 	add	fp, sp, #4
80021f04:	e24dd018 	sub	sp, sp, #24
80021f08:	e50b0010 	str	r0, [fp, #-16]
80021f0c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80021f10:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80021f14:	e51b0010 	ldr	r0, [fp, #-16]
80021f18:	eb0004db 	bl	8002328c <iunlock>
80021f1c:	e59f0060 	ldr	r0, [pc, #96]	@ 80021f84 <consolewrite+0x88>
80021f20:	eb000fea 	bl	80025ed0 <acquire>
80021f24:	e3a03000 	mov	r3, #0
80021f28:	e50b3008 	str	r3, [fp, #-8]
80021f2c:	ea000008 	b	80021f54 <consolewrite+0x58>
80021f30:	e51b3008 	ldr	r3, [fp, #-8]
80021f34:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80021f38:	e0823003 	add	r3, r2, r3
80021f3c:	e5d33000 	ldrb	r3, [r3]
80021f40:	e1a00003 	mov	r0, r3
80021f44:	ebfffef1 	bl	80021b10 <consputc>
80021f48:	e51b3008 	ldr	r3, [fp, #-8]
80021f4c:	e2833001 	add	r3, r3, #1
80021f50:	e50b3008 	str	r3, [fp, #-8]
80021f54:	e51b2008 	ldr	r2, [fp, #-8]
80021f58:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f5c:	e1520003 	cmp	r2, r3
80021f60:	bafffff2 	blt	80021f30 <consolewrite+0x34>
80021f64:	e59f0018 	ldr	r0, [pc, #24]	@ 80021f84 <consolewrite+0x88>
80021f68:	eb000fe3 	bl	80025efc <release>
80021f6c:	e51b0010 	ldr	r0, [fp, #-16]
80021f70:	eb000461 	bl	800230fc <ilock>
80021f74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80021f78:	e1a00003 	mov	r0, r3
80021f7c:	e24bd004 	sub	sp, fp, #4
80021f80:	e8bd8800 	pop	{fp, pc}
80021f84:	800ab884 	.word	0x800ab884

80021f88 <consoleinit>:
80021f88:	e92d4800 	push	{fp, lr}
80021f8c:	e28db004 	add	fp, sp, #4
80021f90:	e59f103c 	ldr	r1, [pc, #60]	@ 80021fd4 <consoleinit+0x4c>
80021f94:	e59f003c 	ldr	r0, [pc, #60]	@ 80021fd8 <consoleinit+0x50>
80021f98:	eb000fba 	bl	80025e88 <initlock>
80021f9c:	e59f1038 	ldr	r1, [pc, #56]	@ 80021fdc <consoleinit+0x54>
80021fa0:	e59f0038 	ldr	r0, [pc, #56]	@ 80021fe0 <consoleinit+0x58>
80021fa4:	eb000fb7 	bl	80025e88 <initlock>
80021fa8:	e59f3034 	ldr	r3, [pc, #52]	@ 80021fe4 <consoleinit+0x5c>
80021fac:	e59f2034 	ldr	r2, [pc, #52]	@ 80021fe8 <consoleinit+0x60>
80021fb0:	e583200c 	str	r2, [r3, #12]
80021fb4:	e59f3028 	ldr	r3, [pc, #40]	@ 80021fe4 <consoleinit+0x5c>
80021fb8:	e59f202c 	ldr	r2, [pc, #44]	@ 80021fec <consoleinit+0x64>
80021fbc:	e5832008 	str	r2, [r3, #8]
80021fc0:	e59f3010 	ldr	r3, [pc, #16]	@ 80021fd8 <consoleinit+0x50>
80021fc4:	e3a02001 	mov	r2, #1
80021fc8:	e5832034 	str	r2, [r3, #52]	@ 0x34
80021fcc:	e1a00000 	nop			@ (mov r0, r0)
80021fd0:	e8bd8800 	pop	{fp, pc}
80021fd4:	80029524 	.word	0x80029524
80021fd8:	800ab884 	.word	0x800ab884
80021fdc:	8002952c 	.word	0x8002952c
80021fe0:	800ab8bc 	.word	0x800ab8bc
80021fe4:	800abafc 	.word	0x800abafc
80021fe8:	80021efc 	.word	0x80021efc
80021fec:	80021d98 	.word	0x80021d98

80021ff0 <exec>:
80021ff0:	e92d4810 	push	{r4, fp, lr}
80021ff4:	e28db008 	add	fp, sp, #8
80021ff8:	e24ddf49 	sub	sp, sp, #292	@ 0x124
80021ffc:	e50b0120 	str	r0, [fp, #-288]	@ 0xfffffee0
80022000:	e50b1124 	str	r1, [fp, #-292]	@ 0xfffffedc
80022004:	e51b0120 	ldr	r0, [fp, #-288]	@ 0xfffffee0
80022008:	eb00080e 	bl	80024048 <namei>
8002200c:	e50b0010 	str	r0, [fp, #-16]
80022010:	e51b3010 	ldr	r3, [fp, #-16]
80022014:	e3530000 	cmp	r3, #0
80022018:	1a000001 	bne	80022024 <exec+0x34>
8002201c:	e3e03000 	mvn	r3, #0
80022020:	ea000120 	b	800224a8 <exec+0x4b8>
80022024:	e51b0010 	ldr	r0, [fp, #-16]
80022028:	eb000433 	bl	800230fc <ilock>
8002202c:	e24b1068 	sub	r1, fp, #104	@ 0x68
80022030:	e3a03034 	mov	r3, #52	@ 0x34
80022034:	e3a02000 	mov	r2, #0
80022038:	e51b0010 	ldr	r0, [fp, #-16]
8002203c:	eb0005da 	bl	800237ac <readi>
80022040:	e1a03000 	mov	r3, r0
80022044:	e3530033 	cmp	r3, #51	@ 0x33
80022048:	9a0000f6 	bls	80022428 <exec+0x438>
8002204c:	e51b3068 	ldr	r3, [fp, #-104]	@ 0xffffff98
80022050:	e59f245c 	ldr	r2, [pc, #1116]	@ 800224b4 <exec+0x4c4>
80022054:	e1530002 	cmp	r3, r2
80022058:	1a0000f4 	bne	80022430 <exec+0x440>
8002205c:	e3a03000 	mov	r3, #0
80022060:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022064:	eb0017f3 	bl	80028038 <kpt_alloc>
80022068:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002206c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022070:	e3530000 	cmp	r3, #0
80022074:	0a0000ef 	beq	80022438 <exec+0x448>
80022078:	e3a03000 	mov	r3, #0
8002207c:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
80022080:	e3a03000 	mov	r3, #0
80022084:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80022088:	e51b304c 	ldr	r3, [fp, #-76]	@ 0xffffffb4
8002208c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022090:	ea00002e 	b	80022150 <exec+0x160>
80022094:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022098:	e24b1088 	sub	r1, fp, #136	@ 0x88
8002209c:	e3a03020 	mov	r3, #32
800220a0:	e51b0010 	ldr	r0, [fp, #-16]
800220a4:	eb0005c0 	bl	800237ac <readi>
800220a8:	e1a03000 	mov	r3, r0
800220ac:	e3530020 	cmp	r3, #32
800220b0:	1a0000e2 	bne	80022440 <exec+0x450>
800220b4:	e51b3088 	ldr	r3, [fp, #-136]	@ 0xffffff78
800220b8:	e3530001 	cmp	r3, #1
800220bc:	1a00001c 	bne	80022134 <exec+0x144>
800220c0:	e51b2074 	ldr	r2, [fp, #-116]	@ 0xffffff8c
800220c4:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
800220c8:	e1520003 	cmp	r2, r3
800220cc:	3a0000dd 	bcc	80022448 <exec+0x458>
800220d0:	e51b2080 	ldr	r2, [fp, #-128]	@ 0xffffff80
800220d4:	e51b3074 	ldr	r3, [fp, #-116]	@ 0xffffff8c
800220d8:	e0823003 	add	r3, r2, r3
800220dc:	e1a02003 	mov	r2, r3
800220e0:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800220e4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800220e8:	eb0018fe 	bl	800284e8 <allocuvm>
800220ec:	e1a03000 	mov	r3, r0
800220f0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800220f4:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800220f8:	e3530000 	cmp	r3, #0
800220fc:	0a0000d3 	beq	80022450 <exec+0x460>
80022100:	e51b3080 	ldr	r3, [fp, #-128]	@ 0xffffff80
80022104:	e1a01003 	mov	r1, r3
80022108:	e51b2084 	ldr	r2, [fp, #-132]	@ 0xffffff7c
8002210c:	e51b3078 	ldr	r3, [fp, #-120]	@ 0xffffff88
80022110:	e58d3000 	str	r3, [sp]
80022114:	e1a03002 	mov	r3, r2
80022118:	e51b2010 	ldr	r2, [fp, #-16]
8002211c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022120:	eb0018a4 	bl	800283b8 <loaduvm>
80022124:	e1a03000 	mov	r3, r0
80022128:	e3530000 	cmp	r3, #0
8002212c:	ba0000c9 	blt	80022458 <exec+0x468>
80022130:	ea000000 	b	80022138 <exec+0x148>
80022134:	e1a00000 	nop			@ (mov r0, r0)
80022138:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002213c:	e2833001 	add	r3, r3, #1
80022140:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
80022144:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022148:	e2833020 	add	r3, r3, #32
8002214c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80022150:	e15b33bc 	ldrh	r3, [fp, #-60]	@ 0xffffffc4
80022154:	e1a02003 	mov	r2, r3
80022158:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002215c:	e1530002 	cmp	r3, r2
80022160:	baffffcb 	blt	80022094 <exec+0xa4>
80022164:	e51b0010 	ldr	r0, [fp, #-16]
80022168:	eb0004a4 	bl	80023400 <iunlockput>
8002216c:	e3a03000 	mov	r3, #0
80022170:	e50b3010 	str	r3, [fp, #-16]
80022174:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022178:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002217c:	e283300f 	add	r3, r3, #15
80022180:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80022184:	e3c3300f 	bic	r3, r3, #15
80022188:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
8002218c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022190:	e2833a02 	add	r3, r3, #8192	@ 0x2000
80022194:	e1a02003 	mov	r2, r3
80022198:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
8002219c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800221a0:	eb0018d0 	bl	800284e8 <allocuvm>
800221a4:	e1a03000 	mov	r3, r0
800221a8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800221ac:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221b0:	e3530000 	cmp	r3, #0
800221b4:	0a0000a9 	beq	80022460 <exec+0x470>
800221b8:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221bc:	e2433a02 	sub	r3, r3, #8192	@ 0x2000
800221c0:	e1a01003 	mov	r1, r3
800221c4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
800221c8:	eb00197b 	bl	800287bc <clearpteu>
800221cc:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
800221d0:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
800221d4:	e3a03000 	mov	r3, #0
800221d8:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
800221dc:	ea00002e 	b	8002229c <exec+0x2ac>
800221e0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800221e4:	e353001f 	cmp	r3, #31
800221e8:	8a00009e 	bhi	80022468 <exec+0x478>
800221ec:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800221f0:	e1a03103 	lsl	r3, r3, #2
800221f4:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800221f8:	e0823003 	add	r3, r2, r3
800221fc:	e5933000 	ldr	r3, [r3]
80022200:	e1a00003 	mov	r0, r3
80022204:	ebfff8b8 	bl	800204ec <strlen>
80022208:	e1a03000 	mov	r3, r0
8002220c:	e1a02003 	mov	r2, r3
80022210:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80022214:	e0433002 	sub	r3, r3, r2
80022218:	e2433001 	sub	r3, r3, #1
8002221c:	e3c33003 	bic	r3, r3, #3
80022220:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022224:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022228:	e1a03103 	lsl	r3, r3, #2
8002222c:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022230:	e0823003 	add	r3, r2, r3
80022234:	e5934000 	ldr	r4, [r3]
80022238:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002223c:	e1a03103 	lsl	r3, r3, #2
80022240:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
80022244:	e0823003 	add	r3, r2, r3
80022248:	e5933000 	ldr	r3, [r3]
8002224c:	e1a00003 	mov	r0, r3
80022250:	ebfff8a5 	bl	800204ec <strlen>
80022254:	e1a03000 	mov	r3, r0
80022258:	e2833001 	add	r3, r3, #1
8002225c:	e1a02004 	mov	r2, r4
80022260:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022264:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022268:	eb0019e8 	bl	80028a10 <copyout>
8002226c:	e1a03000 	mov	r3, r0
80022270:	e3530000 	cmp	r3, #0
80022274:	ba00007d 	blt	80022470 <exec+0x480>
80022278:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002227c:	e1a03103 	lsl	r3, r3, #2
80022280:	e243300c 	sub	r3, r3, #12
80022284:	e083300b 	add	r3, r3, fp
80022288:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
8002228c:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
80022290:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022294:	e2833001 	add	r3, r3, #1
80022298:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
8002229c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222a0:	e1a03103 	lsl	r3, r3, #2
800222a4:	e51b2124 	ldr	r2, [fp, #-292]	@ 0xfffffedc
800222a8:	e0823003 	add	r3, r2, r3
800222ac:	e5933000 	ldr	r3, [r3]
800222b0:	e3530000 	cmp	r3, #0
800222b4:	1affffc9 	bne	800221e0 <exec+0x1f0>
800222b8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222bc:	e1a03103 	lsl	r3, r3, #2
800222c0:	e243300c 	sub	r3, r3, #12
800222c4:	e083300b 	add	r3, r3, fp
800222c8:	e3a02000 	mov	r2, #0
800222cc:	e503210c 	str	r2, [r3, #-268]	@ 0xfffffef4
800222d0:	e59f31e0 	ldr	r3, [pc, #480]	@ 800224b8 <exec+0x4c8>
800222d4:	e5933000 	ldr	r3, [r3]
800222d8:	e5933018 	ldr	r3, [r3, #24]
800222dc:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
800222e0:	e5832010 	str	r2, [r3, #16]
800222e4:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800222e8:	e2833001 	add	r3, r3, #1
800222ec:	e1a02103 	lsl	r2, r3, #2
800222f0:	e59f31c0 	ldr	r3, [pc, #448]	@ 800224b8 <exec+0x4c8>
800222f4:	e5933000 	ldr	r3, [r3]
800222f8:	e5933018 	ldr	r3, [r3, #24]
800222fc:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022300:	e0412002 	sub	r2, r1, r2
80022304:	e5832014 	str	r2, [r3, #20]
80022308:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
8002230c:	e2833001 	add	r3, r3, #1
80022310:	e1a03103 	lsl	r3, r3, #2
80022314:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022318:	e0423003 	sub	r3, r2, r3
8002231c:	e50b3030 	str	r3, [fp, #-48]	@ 0xffffffd0
80022320:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022324:	e2833001 	add	r3, r3, #1
80022328:	e1a03103 	lsl	r3, r3, #2
8002232c:	e24b2f46 	sub	r2, fp, #280	@ 0x118
80022330:	e51b1030 	ldr	r1, [fp, #-48]	@ 0xffffffd0
80022334:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022338:	eb0019b4 	bl	80028a10 <copyout>
8002233c:	e1a03000 	mov	r3, r0
80022340:	e3530000 	cmp	r3, #0
80022344:	ba00004b 	blt	80022478 <exec+0x488>
80022348:	e51b3120 	ldr	r3, [fp, #-288]	@ 0xfffffee0
8002234c:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022350:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022354:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022358:	ea000009 	b	80022384 <exec+0x394>
8002235c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022360:	e5d33000 	ldrb	r3, [r3]
80022364:	e353002f 	cmp	r3, #47	@ 0x2f
80022368:	1a000002 	bne	80022378 <exec+0x388>
8002236c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022370:	e2833001 	add	r3, r3, #1
80022374:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80022378:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002237c:	e2833001 	add	r3, r3, #1
80022380:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80022384:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022388:	e5d33000 	ldrb	r3, [r3]
8002238c:	e3530000 	cmp	r3, #0
80022390:	1afffff1 	bne	8002235c <exec+0x36c>
80022394:	e59f311c 	ldr	r3, [pc, #284]	@ 800224b8 <exec+0x4c8>
80022398:	e5933000 	ldr	r3, [r3]
8002239c:	e283306c 	add	r3, r3, #108	@ 0x6c
800223a0:	e3a02010 	mov	r2, #16
800223a4:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
800223a8:	e1a00003 	mov	r0, r3
800223ac:	ebfff827 	bl	80020450 <safestrcpy>
800223b0:	e59f3100 	ldr	r3, [pc, #256]	@ 800224b8 <exec+0x4c8>
800223b4:	e5933000 	ldr	r3, [r3]
800223b8:	e5933004 	ldr	r3, [r3, #4]
800223bc:	e50b3034 	str	r3, [fp, #-52]	@ 0xffffffcc
800223c0:	e59f30f0 	ldr	r3, [pc, #240]	@ 800224b8 <exec+0x4c8>
800223c4:	e5933000 	ldr	r3, [r3]
800223c8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800223cc:	e5832004 	str	r2, [r3, #4]
800223d0:	e59f30e0 	ldr	r3, [pc, #224]	@ 800224b8 <exec+0x4c8>
800223d4:	e5933000 	ldr	r3, [r3]
800223d8:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
800223dc:	e5832000 	str	r2, [r3]
800223e0:	e59f30d0 	ldr	r3, [pc, #208]	@ 800224b8 <exec+0x4c8>
800223e4:	e5933000 	ldr	r3, [r3]
800223e8:	e5933018 	ldr	r3, [r3, #24]
800223ec:	e51b2050 	ldr	r2, [fp, #-80]	@ 0xffffffb0
800223f0:	e5832044 	str	r2, [r3, #68]	@ 0x44
800223f4:	e59f30bc 	ldr	r3, [pc, #188]	@ 800224b8 <exec+0x4c8>
800223f8:	e5933000 	ldr	r3, [r3]
800223fc:	e5933018 	ldr	r3, [r3, #24]
80022400:	e51b2030 	ldr	r2, [fp, #-48]	@ 0xffffffd0
80022404:	e5832000 	str	r2, [r3]
80022408:	e59f30a8 	ldr	r3, [pc, #168]	@ 800224b8 <exec+0x4c8>
8002240c:	e5933000 	ldr	r3, [r3]
80022410:	e1a00003 	mov	r0, r3
80022414:	eb0017ae 	bl	800282d4 <switchuvm>
80022418:	e51b0034 	ldr	r0, [fp, #-52]	@ 0xffffffcc
8002241c:	eb0018b6 	bl	800286fc <freevm>
80022420:	e3a03000 	mov	r3, #0
80022424:	ea00001f 	b	800224a8 <exec+0x4b8>
80022428:	e1a00000 	nop			@ (mov r0, r0)
8002242c:	ea000012 	b	8002247c <exec+0x48c>
80022430:	e1a00000 	nop			@ (mov r0, r0)
80022434:	ea000010 	b	8002247c <exec+0x48c>
80022438:	e1a00000 	nop			@ (mov r0, r0)
8002243c:	ea00000e 	b	8002247c <exec+0x48c>
80022440:	e1a00000 	nop			@ (mov r0, r0)
80022444:	ea00000c 	b	8002247c <exec+0x48c>
80022448:	e1a00000 	nop			@ (mov r0, r0)
8002244c:	ea00000a 	b	8002247c <exec+0x48c>
80022450:	e1a00000 	nop			@ (mov r0, r0)
80022454:	ea000008 	b	8002247c <exec+0x48c>
80022458:	e1a00000 	nop			@ (mov r0, r0)
8002245c:	ea000006 	b	8002247c <exec+0x48c>
80022460:	e1a00000 	nop			@ (mov r0, r0)
80022464:	ea000004 	b	8002247c <exec+0x48c>
80022468:	e1a00000 	nop			@ (mov r0, r0)
8002246c:	ea000002 	b	8002247c <exec+0x48c>
80022470:	e1a00000 	nop			@ (mov r0, r0)
80022474:	ea000000 	b	8002247c <exec+0x48c>
80022478:	e1a00000 	nop			@ (mov r0, r0)
8002247c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022480:	e3530000 	cmp	r3, #0
80022484:	0a000001 	beq	80022490 <exec+0x4a0>
80022488:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
8002248c:	eb00189a 	bl	800286fc <freevm>
80022490:	e51b3010 	ldr	r3, [fp, #-16]
80022494:	e3530000 	cmp	r3, #0
80022498:	0a000001 	beq	800224a4 <exec+0x4b4>
8002249c:	e51b0010 	ldr	r0, [fp, #-16]
800224a0:	eb0003d6 	bl	80023400 <iunlockput>
800224a4:	e3e03000 	mvn	r3, #0
800224a8:	e1a00003 	mov	r0, r3
800224ac:	e24bd008 	sub	sp, fp, #8
800224b0:	e8bd8810 	pop	{r4, fp, pc}
800224b4:	464c457f 	.word	0x464c457f
800224b8:	800afa4c 	.word	0x800afa4c

800224bc <fileinit>:
800224bc:	e92d4800 	push	{fp, lr}
800224c0:	e28db004 	add	fp, sp, #4
800224c4:	e59f100c 	ldr	r1, [pc, #12]	@ 800224d8 <fileinit+0x1c>
800224c8:	e59f000c 	ldr	r0, [pc, #12]	@ 800224dc <fileinit+0x20>
800224cc:	eb000e6d 	bl	80025e88 <initlock>
800224d0:	e1a00000 	nop			@ (mov r0, r0)
800224d4:	e8bd8800 	pop	{fp, pc}
800224d8:	80029534 	.word	0x80029534
800224dc:	800abb4c 	.word	0x800abb4c

800224e0 <filealloc>:
800224e0:	e92d4800 	push	{fp, lr}
800224e4:	e28db004 	add	fp, sp, #4
800224e8:	e24dd008 	sub	sp, sp, #8
800224ec:	e59f006c 	ldr	r0, [pc, #108]	@ 80022560 <filealloc+0x80>
800224f0:	eb000e76 	bl	80025ed0 <acquire>
800224f4:	e59f3068 	ldr	r3, [pc, #104]	@ 80022564 <filealloc+0x84>
800224f8:	e50b3008 	str	r3, [fp, #-8]
800224fc:	ea00000d 	b	80022538 <filealloc+0x58>
80022500:	e51b3008 	ldr	r3, [fp, #-8]
80022504:	e5933004 	ldr	r3, [r3, #4]
80022508:	e3530000 	cmp	r3, #0
8002250c:	1a000006 	bne	8002252c <filealloc+0x4c>
80022510:	e51b3008 	ldr	r3, [fp, #-8]
80022514:	e3a02001 	mov	r2, #1
80022518:	e5832004 	str	r2, [r3, #4]
8002251c:	e59f003c 	ldr	r0, [pc, #60]	@ 80022560 <filealloc+0x80>
80022520:	eb000e75 	bl	80025efc <release>
80022524:	e51b3008 	ldr	r3, [fp, #-8]
80022528:	ea000009 	b	80022554 <filealloc+0x74>
8002252c:	e51b3008 	ldr	r3, [fp, #-8]
80022530:	e2833018 	add	r3, r3, #24
80022534:	e50b3008 	str	r3, [fp, #-8]
80022538:	e59f2028 	ldr	r2, [pc, #40]	@ 80022568 <filealloc+0x88>
8002253c:	e51b3008 	ldr	r3, [fp, #-8]
80022540:	e1530002 	cmp	r3, r2
80022544:	3affffed 	bcc	80022500 <filealloc+0x20>
80022548:	e59f0010 	ldr	r0, [pc, #16]	@ 80022560 <filealloc+0x80>
8002254c:	eb000e6a 	bl	80025efc <release>
80022550:	e3a03000 	mov	r3, #0
80022554:	e1a00003 	mov	r0, r3
80022558:	e24bd004 	sub	sp, fp, #4
8002255c:	e8bd8800 	pop	{fp, pc}
80022560:	800abb4c 	.word	0x800abb4c
80022564:	800abb80 	.word	0x800abb80
80022568:	800ac4e0 	.word	0x800ac4e0

8002256c <filedup>:
8002256c:	e92d4800 	push	{fp, lr}
80022570:	e28db004 	add	fp, sp, #4
80022574:	e24dd008 	sub	sp, sp, #8
80022578:	e50b0008 	str	r0, [fp, #-8]
8002257c:	e59f0044 	ldr	r0, [pc, #68]	@ 800225c8 <filedup+0x5c>
80022580:	eb000e52 	bl	80025ed0 <acquire>
80022584:	e51b3008 	ldr	r3, [fp, #-8]
80022588:	e5933004 	ldr	r3, [r3, #4]
8002258c:	e3530000 	cmp	r3, #0
80022590:	ca000001 	bgt	8002259c <filedup+0x30>
80022594:	e59f0030 	ldr	r0, [pc, #48]	@ 800225cc <filedup+0x60>
80022598:	ebfffd43 	bl	80021aac <panic>
8002259c:	e51b3008 	ldr	r3, [fp, #-8]
800225a0:	e5933004 	ldr	r3, [r3, #4]
800225a4:	e2832001 	add	r2, r3, #1
800225a8:	e51b3008 	ldr	r3, [fp, #-8]
800225ac:	e5832004 	str	r2, [r3, #4]
800225b0:	e59f0010 	ldr	r0, [pc, #16]	@ 800225c8 <filedup+0x5c>
800225b4:	eb000e50 	bl	80025efc <release>
800225b8:	e51b3008 	ldr	r3, [fp, #-8]
800225bc:	e1a00003 	mov	r0, r3
800225c0:	e24bd004 	sub	sp, fp, #4
800225c4:	e8bd8800 	pop	{fp, pc}
800225c8:	800abb4c 	.word	0x800abb4c
800225cc:	8002953c 	.word	0x8002953c

800225d0 <fileclose>:
800225d0:	e92d4800 	push	{fp, lr}
800225d4:	e28db004 	add	fp, sp, #4
800225d8:	e24dd020 	sub	sp, sp, #32
800225dc:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800225e0:	e59f00d0 	ldr	r0, [pc, #208]	@ 800226b8 <fileclose+0xe8>
800225e4:	eb000e39 	bl	80025ed0 <acquire>
800225e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800225ec:	e5933004 	ldr	r3, [r3, #4]
800225f0:	e3530000 	cmp	r3, #0
800225f4:	ca000001 	bgt	80022600 <fileclose+0x30>
800225f8:	e59f00bc 	ldr	r0, [pc, #188]	@ 800226bc <fileclose+0xec>
800225fc:	ebfffd2a 	bl	80021aac <panic>
80022600:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022604:	e5933004 	ldr	r3, [r3, #4]
80022608:	e2432001 	sub	r2, r3, #1
8002260c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022610:	e5832004 	str	r2, [r3, #4]
80022614:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022618:	e5933004 	ldr	r3, [r3, #4]
8002261c:	e3530000 	cmp	r3, #0
80022620:	da000002 	ble	80022630 <fileclose+0x60>
80022624:	e59f008c 	ldr	r0, [pc, #140]	@ 800226b8 <fileclose+0xe8>
80022628:	eb000e33 	bl	80025efc <release>
8002262c:	ea00001f 	b	800226b0 <fileclose+0xe0>
80022630:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022634:	e24bc01c 	sub	ip, fp, #28
80022638:	e1a0e003 	mov	lr, r3
8002263c:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
80022640:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
80022644:	e89e0003 	ldm	lr, {r0, r1}
80022648:	e88c0003 	stm	ip, {r0, r1}
8002264c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022650:	e3a02000 	mov	r2, #0
80022654:	e5832004 	str	r2, [r3, #4]
80022658:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002265c:	e3a02000 	mov	r2, #0
80022660:	e5c32000 	strb	r2, [r3]
80022664:	e59f004c 	ldr	r0, [pc, #76]	@ 800226b8 <fileclose+0xe8>
80022668:	eb000e23 	bl	80025efc <release>
8002266c:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022670:	e3530001 	cmp	r3, #1
80022674:	1a000005 	bne	80022690 <fileclose+0xc0>
80022678:	e51b3010 	ldr	r3, [fp, #-16]
8002267c:	e55b2013 	ldrb	r2, [fp, #-19]	@ 0xffffffed
80022680:	e1a01002 	mov	r1, r2
80022684:	e1a00003 	mov	r0, r3
80022688:	eb0008e8 	bl	80024a30 <pipeclose>
8002268c:	ea000007 	b	800226b0 <fileclose+0xe0>
80022690:	e55b301c 	ldrb	r3, [fp, #-28]	@ 0xffffffe4
80022694:	e3530002 	cmp	r3, #2
80022698:	1a000004 	bne	800226b0 <fileclose+0xe0>
8002269c:	eb000742 	bl	800243ac <begin_trans>
800226a0:	e51b300c 	ldr	r3, [fp, #-12]
800226a4:	e1a00003 	mov	r0, r3
800226a8:	eb000319 	bl	80023314 <iput>
800226ac:	eb000752 	bl	800243fc <commit_trans>
800226b0:	e24bd004 	sub	sp, fp, #4
800226b4:	e8bd8800 	pop	{fp, pc}
800226b8:	800abb4c 	.word	0x800abb4c
800226bc:	80029544 	.word	0x80029544

800226c0 <filestat>:
800226c0:	e92d4800 	push	{fp, lr}
800226c4:	e28db004 	add	fp, sp, #4
800226c8:	e24dd008 	sub	sp, sp, #8
800226cc:	e50b0008 	str	r0, [fp, #-8]
800226d0:	e50b100c 	str	r1, [fp, #-12]
800226d4:	e51b3008 	ldr	r3, [fp, #-8]
800226d8:	e5d33000 	ldrb	r3, [r3]
800226dc:	e3530002 	cmp	r3, #2
800226e0:	1a00000e 	bne	80022720 <filestat+0x60>
800226e4:	e51b3008 	ldr	r3, [fp, #-8]
800226e8:	e5933010 	ldr	r3, [r3, #16]
800226ec:	e1a00003 	mov	r0, r3
800226f0:	eb000281 	bl	800230fc <ilock>
800226f4:	e51b3008 	ldr	r3, [fp, #-8]
800226f8:	e5933010 	ldr	r3, [r3, #16]
800226fc:	e51b100c 	ldr	r1, [fp, #-12]
80022700:	e1a00003 	mov	r0, r3
80022704:	eb00040a 	bl	80023734 <stati>
80022708:	e51b3008 	ldr	r3, [fp, #-8]
8002270c:	e5933010 	ldr	r3, [r3, #16]
80022710:	e1a00003 	mov	r0, r3
80022714:	eb0002dc 	bl	8002328c <iunlock>
80022718:	e3a03000 	mov	r3, #0
8002271c:	ea000000 	b	80022724 <filestat+0x64>
80022720:	e3e03000 	mvn	r3, #0
80022724:	e1a00003 	mov	r0, r3
80022728:	e24bd004 	sub	sp, fp, #4
8002272c:	e8bd8800 	pop	{fp, pc}

80022730 <fileread>:
80022730:	e92d4800 	push	{fp, lr}
80022734:	e28db004 	add	fp, sp, #4
80022738:	e24dd018 	sub	sp, sp, #24
8002273c:	e50b0010 	str	r0, [fp, #-16]
80022740:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022744:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80022748:	e51b3010 	ldr	r3, [fp, #-16]
8002274c:	e5d33008 	ldrb	r3, [r3, #8]
80022750:	e3530000 	cmp	r3, #0
80022754:	1a000001 	bne	80022760 <fileread+0x30>
80022758:	e3e03000 	mvn	r3, #0
8002275c:	ea00002c 	b	80022814 <fileread+0xe4>
80022760:	e51b3010 	ldr	r3, [fp, #-16]
80022764:	e5d33000 	ldrb	r3, [r3]
80022768:	e3530001 	cmp	r3, #1
8002276c:	1a000007 	bne	80022790 <fileread+0x60>
80022770:	e51b3010 	ldr	r3, [fp, #-16]
80022774:	e593300c 	ldr	r3, [r3, #12]
80022778:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002277c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80022780:	e1a00003 	mov	r0, r3
80022784:	eb000923 	bl	80024c18 <piperead>
80022788:	e1a03000 	mov	r3, r0
8002278c:	ea000020 	b	80022814 <fileread+0xe4>
80022790:	e51b3010 	ldr	r3, [fp, #-16]
80022794:	e5d33000 	ldrb	r3, [r3]
80022798:	e3530002 	cmp	r3, #2
8002279c:	1a00001a 	bne	8002280c <fileread+0xdc>
800227a0:	e51b3010 	ldr	r3, [fp, #-16]
800227a4:	e5933010 	ldr	r3, [r3, #16]
800227a8:	e1a00003 	mov	r0, r3
800227ac:	eb000252 	bl	800230fc <ilock>
800227b0:	e51b3010 	ldr	r3, [fp, #-16]
800227b4:	e5930010 	ldr	r0, [r3, #16]
800227b8:	e51b3010 	ldr	r3, [fp, #-16]
800227bc:	e5932014 	ldr	r2, [r3, #20]
800227c0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800227c4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800227c8:	eb0003f7 	bl	800237ac <readi>
800227cc:	e50b0008 	str	r0, [fp, #-8]
800227d0:	e51b3008 	ldr	r3, [fp, #-8]
800227d4:	e3530000 	cmp	r3, #0
800227d8:	da000005 	ble	800227f4 <fileread+0xc4>
800227dc:	e51b3010 	ldr	r3, [fp, #-16]
800227e0:	e5932014 	ldr	r2, [r3, #20]
800227e4:	e51b3008 	ldr	r3, [fp, #-8]
800227e8:	e0822003 	add	r2, r2, r3
800227ec:	e51b3010 	ldr	r3, [fp, #-16]
800227f0:	e5832014 	str	r2, [r3, #20]
800227f4:	e51b3010 	ldr	r3, [fp, #-16]
800227f8:	e5933010 	ldr	r3, [r3, #16]
800227fc:	e1a00003 	mov	r0, r3
80022800:	eb0002a1 	bl	8002328c <iunlock>
80022804:	e51b3008 	ldr	r3, [fp, #-8]
80022808:	ea000001 	b	80022814 <fileread+0xe4>
8002280c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022820 <fileread+0xf0>
80022810:	ebfffca5 	bl	80021aac <panic>
80022814:	e1a00003 	mov	r0, r3
80022818:	e24bd004 	sub	sp, fp, #4
8002281c:	e8bd8800 	pop	{fp, pc}
80022820:	80029550 	.word	0x80029550

80022824 <filewrite>:
80022824:	e92d4800 	push	{fp, lr}
80022828:	e28db004 	add	fp, sp, #4
8002282c:	e24dd020 	sub	sp, sp, #32
80022830:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80022834:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80022838:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
8002283c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022840:	e5d33009 	ldrb	r3, [r3, #9]
80022844:	e3530000 	cmp	r3, #0
80022848:	1a000001 	bne	80022854 <filewrite+0x30>
8002284c:	e3e03000 	mvn	r3, #0
80022850:	ea000058 	b	800229b8 <filewrite+0x194>
80022854:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022858:	e5d33000 	ldrb	r3, [r3]
8002285c:	e3530001 	cmp	r3, #1
80022860:	1a000007 	bne	80022884 <filewrite+0x60>
80022864:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022868:	e593300c 	ldr	r3, [r3, #12]
8002286c:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80022870:	e51b101c 	ldr	r1, [fp, #-28]	@ 0xffffffe4
80022874:	e1a00003 	mov	r0, r3
80022878:	eb00089f 	bl	80024afc <pipewrite>
8002287c:	e1a03000 	mov	r3, r0
80022880:	ea00004c 	b	800229b8 <filewrite+0x194>
80022884:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022888:	e5d33000 	ldrb	r3, [r3]
8002288c:	e3530002 	cmp	r3, #2
80022890:	1a000046 	bne	800229b0 <filewrite+0x18c>
80022894:	e3a03c06 	mov	r3, #1536	@ 0x600
80022898:	e50b3010 	str	r3, [fp, #-16]
8002289c:	e3a03000 	mov	r3, #0
800228a0:	e50b3008 	str	r3, [fp, #-8]
800228a4:	ea000033 	b	80022978 <filewrite+0x154>
800228a8:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
800228ac:	e51b3008 	ldr	r3, [fp, #-8]
800228b0:	e0423003 	sub	r3, r2, r3
800228b4:	e50b300c 	str	r3, [fp, #-12]
800228b8:	e51b200c 	ldr	r2, [fp, #-12]
800228bc:	e51b3010 	ldr	r3, [fp, #-16]
800228c0:	e1520003 	cmp	r2, r3
800228c4:	da000001 	ble	800228d0 <filewrite+0xac>
800228c8:	e51b3010 	ldr	r3, [fp, #-16]
800228cc:	e50b300c 	str	r3, [fp, #-12]
800228d0:	eb0006b5 	bl	800243ac <begin_trans>
800228d4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228d8:	e5933010 	ldr	r3, [r3, #16]
800228dc:	e1a00003 	mov	r0, r3
800228e0:	eb000205 	bl	800230fc <ilock>
800228e4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228e8:	e5930010 	ldr	r0, [r3, #16]
800228ec:	e51b3008 	ldr	r3, [fp, #-8]
800228f0:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800228f4:	e0821003 	add	r1, r2, r3
800228f8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800228fc:	e5932014 	ldr	r2, [r3, #20]
80022900:	e51b300c 	ldr	r3, [fp, #-12]
80022904:	eb000423 	bl	80023998 <writei>
80022908:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002290c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022910:	e3530000 	cmp	r3, #0
80022914:	da000005 	ble	80022930 <filewrite+0x10c>
80022918:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002291c:	e5932014 	ldr	r2, [r3, #20]
80022920:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022924:	e0822003 	add	r2, r2, r3
80022928:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002292c:	e5832014 	str	r2, [r3, #20]
80022930:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022934:	e5933010 	ldr	r3, [r3, #16]
80022938:	e1a00003 	mov	r0, r3
8002293c:	eb000252 	bl	8002328c <iunlock>
80022940:	eb0006ad 	bl	800243fc <commit_trans>
80022944:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022948:	e3530000 	cmp	r3, #0
8002294c:	ba00000e 	blt	8002298c <filewrite+0x168>
80022950:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022954:	e51b300c 	ldr	r3, [fp, #-12]
80022958:	e1520003 	cmp	r2, r3
8002295c:	0a000001 	beq	80022968 <filewrite+0x144>
80022960:	e59f005c 	ldr	r0, [pc, #92]	@ 800229c4 <filewrite+0x1a0>
80022964:	ebfffc50 	bl	80021aac <panic>
80022968:	e51b2008 	ldr	r2, [fp, #-8]
8002296c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022970:	e0823003 	add	r3, r2, r3
80022974:	e50b3008 	str	r3, [fp, #-8]
80022978:	e51b2008 	ldr	r2, [fp, #-8]
8002297c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022980:	e1520003 	cmp	r2, r3
80022984:	baffffc7 	blt	800228a8 <filewrite+0x84>
80022988:	ea000000 	b	80022990 <filewrite+0x16c>
8002298c:	e1a00000 	nop			@ (mov r0, r0)
80022990:	e51b2008 	ldr	r2, [fp, #-8]
80022994:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80022998:	e1520003 	cmp	r2, r3
8002299c:	1a000001 	bne	800229a8 <filewrite+0x184>
800229a0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800229a4:	ea000003 	b	800229b8 <filewrite+0x194>
800229a8:	e3e03000 	mvn	r3, #0
800229ac:	ea000001 	b	800229b8 <filewrite+0x194>
800229b0:	e59f0010 	ldr	r0, [pc, #16]	@ 800229c8 <filewrite+0x1a4>
800229b4:	ebfffc3c 	bl	80021aac <panic>
800229b8:	e1a00003 	mov	r0, r3
800229bc:	e24bd004 	sub	sp, fp, #4
800229c0:	e8bd8800 	pop	{fp, pc}
800229c4:	8002955c 	.word	0x8002955c
800229c8:	8002956c 	.word	0x8002956c

800229cc <readsb>:
800229cc:	e92d4800 	push	{fp, lr}
800229d0:	e28db004 	add	fp, sp, #4
800229d4:	e24dd010 	sub	sp, sp, #16
800229d8:	e50b0010 	str	r0, [fp, #-16]
800229dc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800229e0:	e51b3010 	ldr	r3, [fp, #-16]
800229e4:	e3a01001 	mov	r1, #1
800229e8:	e1a00003 	mov	r0, r3
800229ec:	ebfff848 	bl	80020b14 <bread>
800229f0:	e50b0008 	str	r0, [fp, #-8]
800229f4:	e51b3008 	ldr	r3, [fp, #-8]
800229f8:	e2833018 	add	r3, r3, #24
800229fc:	e3a02010 	mov	r2, #16
80022a00:	e1a01003 	mov	r1, r3
80022a04:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80022a08:	ebfff5ee 	bl	800201c8 <memmove>
80022a0c:	e51b0008 	ldr	r0, [fp, #-8]
80022a10:	ebfff869 	bl	80020bbc <brelse>
80022a14:	e1a00000 	nop			@ (mov r0, r0)
80022a18:	e24bd004 	sub	sp, fp, #4
80022a1c:	e8bd8800 	pop	{fp, pc}

80022a20 <bzero>:
80022a20:	e92d4800 	push	{fp, lr}
80022a24:	e28db004 	add	fp, sp, #4
80022a28:	e24dd010 	sub	sp, sp, #16
80022a2c:	e50b0010 	str	r0, [fp, #-16]
80022a30:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022a34:	e51b3010 	ldr	r3, [fp, #-16]
80022a38:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022a3c:	e1a01002 	mov	r1, r2
80022a40:	e1a00003 	mov	r0, r3
80022a44:	ebfff832 	bl	80020b14 <bread>
80022a48:	e50b0008 	str	r0, [fp, #-8]
80022a4c:	e51b3008 	ldr	r3, [fp, #-8]
80022a50:	e2833018 	add	r3, r3, #24
80022a54:	e3a02c02 	mov	r2, #512	@ 0x200
80022a58:	e3a01000 	mov	r1, #0
80022a5c:	e1a00003 	mov	r0, r3
80022a60:	ebfff566 	bl	80020000 <memset>
80022a64:	e51b0008 	ldr	r0, [fp, #-8]
80022a68:	eb00067b 	bl	8002445c <log_write>
80022a6c:	e51b0008 	ldr	r0, [fp, #-8]
80022a70:	ebfff851 	bl	80020bbc <brelse>
80022a74:	e1a00000 	nop			@ (mov r0, r0)
80022a78:	e24bd004 	sub	sp, fp, #4
80022a7c:	e8bd8800 	pop	{fp, pc}

80022a80 <balloc>:
80022a80:	e92d4800 	push	{fp, lr}
80022a84:	e28db004 	add	fp, sp, #4
80022a88:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022a8c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022a90:	e3a03000 	mov	r3, #0
80022a94:	e50b3010 	str	r3, [fp, #-16]
80022a98:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022a9c:	e24b2024 	sub	r2, fp, #36	@ 0x24
80022aa0:	e1a01002 	mov	r1, r2
80022aa4:	e1a00003 	mov	r0, r3
80022aa8:	ebffffc7 	bl	800229cc <readsb>
80022aac:	e3a03000 	mov	r3, #0
80022ab0:	e50b3008 	str	r3, [fp, #-8]
80022ab4:	ea000059 	b	80022c20 <balloc+0x1a0>
80022ab8:	e51b3008 	ldr	r3, [fp, #-8]
80022abc:	e2832eff 	add	r2, r3, #4080	@ 0xff0
80022ac0:	e282200f 	add	r2, r2, #15
80022ac4:	e3530000 	cmp	r3, #0
80022ac8:	b1a03002 	movlt	r3, r2
80022acc:	a1a03003 	movge	r3, r3
80022ad0:	e1a03643 	asr	r3, r3, #12
80022ad4:	e1a02003 	mov	r2, r3
80022ad8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80022adc:	e1a031a3 	lsr	r3, r3, #3
80022ae0:	e0823003 	add	r3, r2, r3
80022ae4:	e2833003 	add	r3, r3, #3
80022ae8:	e1a01003 	mov	r1, r3
80022aec:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022af0:	ebfff807 	bl	80020b14 <bread>
80022af4:	e50b0010 	str	r0, [fp, #-16]
80022af8:	e3a03000 	mov	r3, #0
80022afc:	e50b300c 	str	r3, [fp, #-12]
80022b00:	ea000037 	b	80022be4 <balloc+0x164>
80022b04:	e51b300c 	ldr	r3, [fp, #-12]
80022b08:	e2033007 	and	r3, r3, #7
80022b0c:	e3a02001 	mov	r2, #1
80022b10:	e1a03312 	lsl	r3, r2, r3
80022b14:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80022b18:	e51b300c 	ldr	r3, [fp, #-12]
80022b1c:	e2832007 	add	r2, r3, #7
80022b20:	e3530000 	cmp	r3, #0
80022b24:	b1a03002 	movlt	r3, r2
80022b28:	a1a03003 	movge	r3, r3
80022b2c:	e1a031c3 	asr	r3, r3, #3
80022b30:	e1a02003 	mov	r2, r3
80022b34:	e51b3010 	ldr	r3, [fp, #-16]
80022b38:	e0833002 	add	r3, r3, r2
80022b3c:	e5d33018 	ldrb	r3, [r3, #24]
80022b40:	e1a02003 	mov	r2, r3
80022b44:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80022b48:	e0033002 	and	r3, r3, r2
80022b4c:	e3530000 	cmp	r3, #0
80022b50:	1a000020 	bne	80022bd8 <balloc+0x158>
80022b54:	e51b300c 	ldr	r3, [fp, #-12]
80022b58:	e2832007 	add	r2, r3, #7
80022b5c:	e3530000 	cmp	r3, #0
80022b60:	b1a03002 	movlt	r3, r2
80022b64:	a1a03003 	movge	r3, r3
80022b68:	e1a031c3 	asr	r3, r3, #3
80022b6c:	e51b2010 	ldr	r2, [fp, #-16]
80022b70:	e0822003 	add	r2, r2, r3
80022b74:	e5d22018 	ldrb	r2, [r2, #24]
80022b78:	e6af1072 	sxtb	r1, r2
80022b7c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022b80:	e6af2072 	sxtb	r2, r2
80022b84:	e1812002 	orr	r2, r1, r2
80022b88:	e6af2072 	sxtb	r2, r2
80022b8c:	e6ef1072 	uxtb	r1, r2
80022b90:	e51b2010 	ldr	r2, [fp, #-16]
80022b94:	e0823003 	add	r3, r2, r3
80022b98:	e1a02001 	mov	r2, r1
80022b9c:	e5c32018 	strb	r2, [r3, #24]
80022ba0:	e51b0010 	ldr	r0, [fp, #-16]
80022ba4:	eb00062c 	bl	8002445c <log_write>
80022ba8:	e51b0010 	ldr	r0, [fp, #-16]
80022bac:	ebfff802 	bl	80020bbc <brelse>
80022bb0:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022bb4:	e51b2008 	ldr	r2, [fp, #-8]
80022bb8:	e51b300c 	ldr	r3, [fp, #-12]
80022bbc:	e0823003 	add	r3, r2, r3
80022bc0:	e1a01003 	mov	r1, r3
80022bc4:	ebffff95 	bl	80022a20 <bzero>
80022bc8:	e51b2008 	ldr	r2, [fp, #-8]
80022bcc:	e51b300c 	ldr	r3, [fp, #-12]
80022bd0:	e0823003 	add	r3, r2, r3
80022bd4:	ea000017 	b	80022c38 <balloc+0x1b8>
80022bd8:	e51b300c 	ldr	r3, [fp, #-12]
80022bdc:	e2833001 	add	r3, r3, #1
80022be0:	e50b300c 	str	r3, [fp, #-12]
80022be4:	e51b300c 	ldr	r3, [fp, #-12]
80022be8:	e3530a01 	cmp	r3, #4096	@ 0x1000
80022bec:	aa000006 	bge	80022c0c <balloc+0x18c>
80022bf0:	e51b2008 	ldr	r2, [fp, #-8]
80022bf4:	e51b300c 	ldr	r3, [fp, #-12]
80022bf8:	e0823003 	add	r3, r2, r3
80022bfc:	e1a02003 	mov	r2, r3
80022c00:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80022c04:	e1520003 	cmp	r2, r3
80022c08:	3affffbd 	bcc	80022b04 <balloc+0x84>
80022c0c:	e51b0010 	ldr	r0, [fp, #-16]
80022c10:	ebfff7e9 	bl	80020bbc <brelse>
80022c14:	e51b3008 	ldr	r3, [fp, #-8]
80022c18:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80022c1c:	e50b3008 	str	r3, [fp, #-8]
80022c20:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80022c24:	e51b3008 	ldr	r3, [fp, #-8]
80022c28:	e1520003 	cmp	r2, r3
80022c2c:	8affffa1 	bhi	80022ab8 <balloc+0x38>
80022c30:	e59f000c 	ldr	r0, [pc, #12]	@ 80022c44 <balloc+0x1c4>
80022c34:	ebfffb9c 	bl	80021aac <panic>
80022c38:	e1a00003 	mov	r0, r3
80022c3c:	e24bd004 	sub	sp, fp, #4
80022c40:	e8bd8800 	pop	{fp, pc}
80022c44:	80029578 	.word	0x80029578

80022c48 <bfree>:
80022c48:	e92d4800 	push	{fp, lr}
80022c4c:	e28db004 	add	fp, sp, #4
80022c50:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022c54:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022c58:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80022c5c:	e24b3020 	sub	r3, fp, #32
80022c60:	e1a01003 	mov	r1, r3
80022c64:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c68:	ebffff57 	bl	800229cc <readsb>
80022c6c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022c70:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022c74:	e1a02623 	lsr	r2, r3, #12
80022c78:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80022c7c:	e1a031a3 	lsr	r3, r3, #3
80022c80:	e0823003 	add	r3, r2, r3
80022c84:	e2833003 	add	r3, r3, #3
80022c88:	e1a01003 	mov	r1, r3
80022c8c:	ebfff7a0 	bl	80020b14 <bread>
80022c90:	e50b0008 	str	r0, [fp, #-8]
80022c94:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80022c98:	e1a03a03 	lsl	r3, r3, #20
80022c9c:	e1a03a23 	lsr	r3, r3, #20
80022ca0:	e50b300c 	str	r3, [fp, #-12]
80022ca4:	e51b300c 	ldr	r3, [fp, #-12]
80022ca8:	e2033007 	and	r3, r3, #7
80022cac:	e3a02001 	mov	r2, #1
80022cb0:	e1a03312 	lsl	r3, r2, r3
80022cb4:	e50b3010 	str	r3, [fp, #-16]
80022cb8:	e51b300c 	ldr	r3, [fp, #-12]
80022cbc:	e2832007 	add	r2, r3, #7
80022cc0:	e3530000 	cmp	r3, #0
80022cc4:	b1a03002 	movlt	r3, r2
80022cc8:	a1a03003 	movge	r3, r3
80022ccc:	e1a031c3 	asr	r3, r3, #3
80022cd0:	e1a02003 	mov	r2, r3
80022cd4:	e51b3008 	ldr	r3, [fp, #-8]
80022cd8:	e0833002 	add	r3, r3, r2
80022cdc:	e5d33018 	ldrb	r3, [r3, #24]
80022ce0:	e1a02003 	mov	r2, r3
80022ce4:	e51b3010 	ldr	r3, [fp, #-16]
80022ce8:	e0033002 	and	r3, r3, r2
80022cec:	e3530000 	cmp	r3, #0
80022cf0:	1a000001 	bne	80022cfc <bfree+0xb4>
80022cf4:	e59f0070 	ldr	r0, [pc, #112]	@ 80022d6c <bfree+0x124>
80022cf8:	ebfffb6b 	bl	80021aac <panic>
80022cfc:	e51b300c 	ldr	r3, [fp, #-12]
80022d00:	e2832007 	add	r2, r3, #7
80022d04:	e3530000 	cmp	r3, #0
80022d08:	b1a03002 	movlt	r3, r2
80022d0c:	a1a03003 	movge	r3, r3
80022d10:	e1a031c3 	asr	r3, r3, #3
80022d14:	e51b2008 	ldr	r2, [fp, #-8]
80022d18:	e0822003 	add	r2, r2, r3
80022d1c:	e5d22018 	ldrb	r2, [r2, #24]
80022d20:	e6af1072 	sxtb	r1, r2
80022d24:	e51b2010 	ldr	r2, [fp, #-16]
80022d28:	e6af2072 	sxtb	r2, r2
80022d2c:	e1e02002 	mvn	r2, r2
80022d30:	e6af2072 	sxtb	r2, r2
80022d34:	e0022001 	and	r2, r2, r1
80022d38:	e6af2072 	sxtb	r2, r2
80022d3c:	e6ef1072 	uxtb	r1, r2
80022d40:	e51b2008 	ldr	r2, [fp, #-8]
80022d44:	e0823003 	add	r3, r2, r3
80022d48:	e1a02001 	mov	r2, r1
80022d4c:	e5c32018 	strb	r2, [r3, #24]
80022d50:	e51b0008 	ldr	r0, [fp, #-8]
80022d54:	eb0005c0 	bl	8002445c <log_write>
80022d58:	e51b0008 	ldr	r0, [fp, #-8]
80022d5c:	ebfff796 	bl	80020bbc <brelse>
80022d60:	e1a00000 	nop			@ (mov r0, r0)
80022d64:	e24bd004 	sub	sp, fp, #4
80022d68:	e8bd8800 	pop	{fp, pc}
80022d6c:	80029590 	.word	0x80029590

80022d70 <iinit>:
80022d70:	e92d4800 	push	{fp, lr}
80022d74:	e28db004 	add	fp, sp, #4
80022d78:	e59f100c 	ldr	r1, [pc, #12]	@ 80022d8c <iinit+0x1c>
80022d7c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022d90 <iinit+0x20>
80022d80:	eb000c40 	bl	80025e88 <initlock>
80022d84:	e1a00000 	nop			@ (mov r0, r0)
80022d88:	e8bd8800 	pop	{fp, pc}
80022d8c:	800295a4 	.word	0x800295a4
80022d90:	800ac4e0 	.word	0x800ac4e0

80022d94 <ialloc>:
80022d94:	e92d4800 	push	{fp, lr}
80022d98:	e28db004 	add	fp, sp, #4
80022d9c:	e24dd028 	sub	sp, sp, #40	@ 0x28
80022da0:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80022da4:	e1a03001 	mov	r3, r1
80022da8:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80022dac:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80022db0:	e24b2020 	sub	r2, fp, #32
80022db4:	e1a01002 	mov	r1, r2
80022db8:	e1a00003 	mov	r0, r3
80022dbc:	ebffff02 	bl	800229cc <readsb>
80022dc0:	e3a03001 	mov	r3, #1
80022dc4:	e50b3008 	str	r3, [fp, #-8]
80022dc8:	ea000027 	b	80022e6c <ialloc+0xd8>
80022dcc:	e51b3008 	ldr	r3, [fp, #-8]
80022dd0:	e1a031a3 	lsr	r3, r3, #3
80022dd4:	e2833002 	add	r3, r3, #2
80022dd8:	e1a01003 	mov	r1, r3
80022ddc:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022de0:	ebfff74b 	bl	80020b14 <bread>
80022de4:	e50b000c 	str	r0, [fp, #-12]
80022de8:	e51b300c 	ldr	r3, [fp, #-12]
80022dec:	e2832018 	add	r2, r3, #24
80022df0:	e51b3008 	ldr	r3, [fp, #-8]
80022df4:	e2033007 	and	r3, r3, #7
80022df8:	e1a03303 	lsl	r3, r3, #6
80022dfc:	e0823003 	add	r3, r2, r3
80022e00:	e50b3010 	str	r3, [fp, #-16]
80022e04:	e51b3010 	ldr	r3, [fp, #-16]
80022e08:	e1d330f0 	ldrsh	r3, [r3]
80022e0c:	e3530000 	cmp	r3, #0
80022e10:	1a000010 	bne	80022e58 <ialloc+0xc4>
80022e14:	e3a02040 	mov	r2, #64	@ 0x40
80022e18:	e3a01000 	mov	r1, #0
80022e1c:	e51b0010 	ldr	r0, [fp, #-16]
80022e20:	ebfff476 	bl	80020000 <memset>
80022e24:	e51b3010 	ldr	r3, [fp, #-16]
80022e28:	e15b22ba 	ldrh	r2, [fp, #-42]	@ 0xffffffd6
80022e2c:	e1c320b0 	strh	r2, [r3]
80022e30:	e51b000c 	ldr	r0, [fp, #-12]
80022e34:	eb000588 	bl	8002445c <log_write>
80022e38:	e51b000c 	ldr	r0, [fp, #-12]
80022e3c:	ebfff75e 	bl	80020bbc <brelse>
80022e40:	e51b3008 	ldr	r3, [fp, #-8]
80022e44:	e1a01003 	mov	r1, r3
80022e48:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80022e4c:	eb000048 	bl	80022f74 <iget>
80022e50:	e1a03000 	mov	r3, r0
80022e54:	ea00000a 	b	80022e84 <ialloc+0xf0>
80022e58:	e51b000c 	ldr	r0, [fp, #-12]
80022e5c:	ebfff756 	bl	80020bbc <brelse>
80022e60:	e51b3008 	ldr	r3, [fp, #-8]
80022e64:	e2833001 	add	r3, r3, #1
80022e68:	e50b3008 	str	r3, [fp, #-8]
80022e6c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80022e70:	e51b3008 	ldr	r3, [fp, #-8]
80022e74:	e1520003 	cmp	r2, r3
80022e78:	8affffd3 	bhi	80022dcc <ialloc+0x38>
80022e7c:	e59f000c 	ldr	r0, [pc, #12]	@ 80022e90 <ialloc+0xfc>
80022e80:	ebfffb09 	bl	80021aac <panic>
80022e84:	e1a00003 	mov	r0, r3
80022e88:	e24bd004 	sub	sp, fp, #4
80022e8c:	e8bd8800 	pop	{fp, pc}
80022e90:	800295ac 	.word	0x800295ac

80022e94 <iupdate>:
80022e94:	e92d4800 	push	{fp, lr}
80022e98:	e28db004 	add	fp, sp, #4
80022e9c:	e24dd010 	sub	sp, sp, #16
80022ea0:	e50b0010 	str	r0, [fp, #-16]
80022ea4:	e51b3010 	ldr	r3, [fp, #-16]
80022ea8:	e5932000 	ldr	r2, [r3]
80022eac:	e51b3010 	ldr	r3, [fp, #-16]
80022eb0:	e5933004 	ldr	r3, [r3, #4]
80022eb4:	e1a031a3 	lsr	r3, r3, #3
80022eb8:	e2833002 	add	r3, r3, #2
80022ebc:	e1a01003 	mov	r1, r3
80022ec0:	e1a00002 	mov	r0, r2
80022ec4:	ebfff712 	bl	80020b14 <bread>
80022ec8:	e50b0008 	str	r0, [fp, #-8]
80022ecc:	e51b3008 	ldr	r3, [fp, #-8]
80022ed0:	e2832018 	add	r2, r3, #24
80022ed4:	e51b3010 	ldr	r3, [fp, #-16]
80022ed8:	e5933004 	ldr	r3, [r3, #4]
80022edc:	e2033007 	and	r3, r3, #7
80022ee0:	e1a03303 	lsl	r3, r3, #6
80022ee4:	e0823003 	add	r3, r2, r3
80022ee8:	e50b300c 	str	r3, [fp, #-12]
80022eec:	e51b3010 	ldr	r3, [fp, #-16]
80022ef0:	e1d321f0 	ldrsh	r2, [r3, #16]
80022ef4:	e51b300c 	ldr	r3, [fp, #-12]
80022ef8:	e1c320b0 	strh	r2, [r3]
80022efc:	e51b3010 	ldr	r3, [fp, #-16]
80022f00:	e1d321f2 	ldrsh	r2, [r3, #18]
80022f04:	e51b300c 	ldr	r3, [fp, #-12]
80022f08:	e1c320b2 	strh	r2, [r3, #2]
80022f0c:	e51b3010 	ldr	r3, [fp, #-16]
80022f10:	e1d321f4 	ldrsh	r2, [r3, #20]
80022f14:	e51b300c 	ldr	r3, [fp, #-12]
80022f18:	e1c320b4 	strh	r2, [r3, #4]
80022f1c:	e51b3010 	ldr	r3, [fp, #-16]
80022f20:	e1d321f6 	ldrsh	r2, [r3, #22]
80022f24:	e51b300c 	ldr	r3, [fp, #-12]
80022f28:	e1c320b6 	strh	r2, [r3, #6]
80022f2c:	e51b3010 	ldr	r3, [fp, #-16]
80022f30:	e5932018 	ldr	r2, [r3, #24]
80022f34:	e51b300c 	ldr	r3, [fp, #-12]
80022f38:	e5832008 	str	r2, [r3, #8]
80022f3c:	e51b300c 	ldr	r3, [fp, #-12]
80022f40:	e283000c 	add	r0, r3, #12
80022f44:	e51b3010 	ldr	r3, [fp, #-16]
80022f48:	e283301c 	add	r3, r3, #28
80022f4c:	e3a02034 	mov	r2, #52	@ 0x34
80022f50:	e1a01003 	mov	r1, r3
80022f54:	ebfff49b 	bl	800201c8 <memmove>
80022f58:	e51b0008 	ldr	r0, [fp, #-8]
80022f5c:	eb00053e 	bl	8002445c <log_write>
80022f60:	e51b0008 	ldr	r0, [fp, #-8]
80022f64:	ebfff714 	bl	80020bbc <brelse>
80022f68:	e1a00000 	nop			@ (mov r0, r0)
80022f6c:	e24bd004 	sub	sp, fp, #4
80022f70:	e8bd8800 	pop	{fp, pc}

80022f74 <iget>:
80022f74:	e92d4800 	push	{fp, lr}
80022f78:	e28db004 	add	fp, sp, #4
80022f7c:	e24dd010 	sub	sp, sp, #16
80022f80:	e50b0010 	str	r0, [fp, #-16]
80022f84:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80022f88:	e59f0114 	ldr	r0, [pc, #276]	@ 800230a4 <iget+0x130>
80022f8c:	eb000bcf 	bl	80025ed0 <acquire>
80022f90:	e3a03000 	mov	r3, #0
80022f94:	e50b300c 	str	r3, [fp, #-12]
80022f98:	e59f3108 	ldr	r3, [pc, #264]	@ 800230a8 <iget+0x134>
80022f9c:	e50b3008 	str	r3, [fp, #-8]
80022fa0:	ea000022 	b	80023030 <iget+0xbc>
80022fa4:	e51b3008 	ldr	r3, [fp, #-8]
80022fa8:	e5933008 	ldr	r3, [r3, #8]
80022fac:	e3530000 	cmp	r3, #0
80022fb0:	da000012 	ble	80023000 <iget+0x8c>
80022fb4:	e51b3008 	ldr	r3, [fp, #-8]
80022fb8:	e5933000 	ldr	r3, [r3]
80022fbc:	e51b2010 	ldr	r2, [fp, #-16]
80022fc0:	e1520003 	cmp	r2, r3
80022fc4:	1a00000d 	bne	80023000 <iget+0x8c>
80022fc8:	e51b3008 	ldr	r3, [fp, #-8]
80022fcc:	e5933004 	ldr	r3, [r3, #4]
80022fd0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80022fd4:	e1520003 	cmp	r2, r3
80022fd8:	1a000008 	bne	80023000 <iget+0x8c>
80022fdc:	e51b3008 	ldr	r3, [fp, #-8]
80022fe0:	e5933008 	ldr	r3, [r3, #8]
80022fe4:	e2832001 	add	r2, r3, #1
80022fe8:	e51b3008 	ldr	r3, [fp, #-8]
80022fec:	e5832008 	str	r2, [r3, #8]
80022ff0:	e59f00ac 	ldr	r0, [pc, #172]	@ 800230a4 <iget+0x130>
80022ff4:	eb000bc0 	bl	80025efc <release>
80022ff8:	e51b3008 	ldr	r3, [fp, #-8]
80022ffc:	ea000025 	b	80023098 <iget+0x124>
80023000:	e51b300c 	ldr	r3, [fp, #-12]
80023004:	e3530000 	cmp	r3, #0
80023008:	1a000005 	bne	80023024 <iget+0xb0>
8002300c:	e51b3008 	ldr	r3, [fp, #-8]
80023010:	e5933008 	ldr	r3, [r3, #8]
80023014:	e3530000 	cmp	r3, #0
80023018:	1a000001 	bne	80023024 <iget+0xb0>
8002301c:	e51b3008 	ldr	r3, [fp, #-8]
80023020:	e50b300c 	str	r3, [fp, #-12]
80023024:	e51b3008 	ldr	r3, [fp, #-8]
80023028:	e2833050 	add	r3, r3, #80	@ 0x50
8002302c:	e50b3008 	str	r3, [fp, #-8]
80023030:	e51b3008 	ldr	r3, [fp, #-8]
80023034:	e59f2070 	ldr	r2, [pc, #112]	@ 800230ac <iget+0x138>
80023038:	e1530002 	cmp	r3, r2
8002303c:	3affffd8 	bcc	80022fa4 <iget+0x30>
80023040:	e51b300c 	ldr	r3, [fp, #-12]
80023044:	e3530000 	cmp	r3, #0
80023048:	1a000001 	bne	80023054 <iget+0xe0>
8002304c:	e59f005c 	ldr	r0, [pc, #92]	@ 800230b0 <iget+0x13c>
80023050:	ebfffa95 	bl	80021aac <panic>
80023054:	e51b300c 	ldr	r3, [fp, #-12]
80023058:	e50b3008 	str	r3, [fp, #-8]
8002305c:	e51b3008 	ldr	r3, [fp, #-8]
80023060:	e51b2010 	ldr	r2, [fp, #-16]
80023064:	e5832000 	str	r2, [r3]
80023068:	e51b3008 	ldr	r3, [fp, #-8]
8002306c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023070:	e5832004 	str	r2, [r3, #4]
80023074:	e51b3008 	ldr	r3, [fp, #-8]
80023078:	e3a02001 	mov	r2, #1
8002307c:	e5832008 	str	r2, [r3, #8]
80023080:	e51b3008 	ldr	r3, [fp, #-8]
80023084:	e3a02000 	mov	r2, #0
80023088:	e583200c 	str	r2, [r3, #12]
8002308c:	e59f0010 	ldr	r0, [pc, #16]	@ 800230a4 <iget+0x130>
80023090:	eb000b99 	bl	80025efc <release>
80023094:	e51b3008 	ldr	r3, [fp, #-8]
80023098:	e1a00003 	mov	r0, r3
8002309c:	e24bd004 	sub	sp, fp, #4
800230a0:	e8bd8800 	pop	{fp, pc}
800230a4:	800ac4e0 	.word	0x800ac4e0
800230a8:	800ac514 	.word	0x800ac514
800230ac:	800ad4b4 	.word	0x800ad4b4
800230b0:	800295c0 	.word	0x800295c0

800230b4 <idup>:
800230b4:	e92d4800 	push	{fp, lr}
800230b8:	e28db004 	add	fp, sp, #4
800230bc:	e24dd008 	sub	sp, sp, #8
800230c0:	e50b0008 	str	r0, [fp, #-8]
800230c4:	e59f002c 	ldr	r0, [pc, #44]	@ 800230f8 <idup+0x44>
800230c8:	eb000b80 	bl	80025ed0 <acquire>
800230cc:	e51b3008 	ldr	r3, [fp, #-8]
800230d0:	e5933008 	ldr	r3, [r3, #8]
800230d4:	e2832001 	add	r2, r3, #1
800230d8:	e51b3008 	ldr	r3, [fp, #-8]
800230dc:	e5832008 	str	r2, [r3, #8]
800230e0:	e59f0010 	ldr	r0, [pc, #16]	@ 800230f8 <idup+0x44>
800230e4:	eb000b84 	bl	80025efc <release>
800230e8:	e51b3008 	ldr	r3, [fp, #-8]
800230ec:	e1a00003 	mov	r0, r3
800230f0:	e24bd004 	sub	sp, fp, #4
800230f4:	e8bd8800 	pop	{fp, pc}
800230f8:	800ac4e0 	.word	0x800ac4e0

800230fc <ilock>:
800230fc:	e92d4800 	push	{fp, lr}
80023100:	e28db004 	add	fp, sp, #4
80023104:	e24dd010 	sub	sp, sp, #16
80023108:	e50b0010 	str	r0, [fp, #-16]
8002310c:	e51b3010 	ldr	r3, [fp, #-16]
80023110:	e3530000 	cmp	r3, #0
80023114:	0a000003 	beq	80023128 <ilock+0x2c>
80023118:	e51b3010 	ldr	r3, [fp, #-16]
8002311c:	e5933008 	ldr	r3, [r3, #8]
80023120:	e3530000 	cmp	r3, #0
80023124:	ca000001 	bgt	80023130 <ilock+0x34>
80023128:	e59f0150 	ldr	r0, [pc, #336]	@ 80023280 <ilock+0x184>
8002312c:	ebfffa5e 	bl	80021aac <panic>
80023130:	e59f014c 	ldr	r0, [pc, #332]	@ 80023284 <ilock+0x188>
80023134:	eb000b65 	bl	80025ed0 <acquire>
80023138:	ea000002 	b	80023148 <ilock+0x4c>
8002313c:	e59f1140 	ldr	r1, [pc, #320]	@ 80023284 <ilock+0x188>
80023140:	e51b0010 	ldr	r0, [fp, #-16]
80023144:	eb000a42 	bl	80025a54 <sleep>
80023148:	e51b3010 	ldr	r3, [fp, #-16]
8002314c:	e593300c 	ldr	r3, [r3, #12]
80023150:	e2033001 	and	r3, r3, #1
80023154:	e3530000 	cmp	r3, #0
80023158:	1afffff7 	bne	8002313c <ilock+0x40>
8002315c:	e51b3010 	ldr	r3, [fp, #-16]
80023160:	e593300c 	ldr	r3, [r3, #12]
80023164:	e3832001 	orr	r2, r3, #1
80023168:	e51b3010 	ldr	r3, [fp, #-16]
8002316c:	e583200c 	str	r2, [r3, #12]
80023170:	e59f010c 	ldr	r0, [pc, #268]	@ 80023284 <ilock+0x188>
80023174:	eb000b60 	bl	80025efc <release>
80023178:	e51b3010 	ldr	r3, [fp, #-16]
8002317c:	e593300c 	ldr	r3, [r3, #12]
80023180:	e2033002 	and	r3, r3, #2
80023184:	e3530000 	cmp	r3, #0
80023188:	1a000039 	bne	80023274 <ilock+0x178>
8002318c:	e51b3010 	ldr	r3, [fp, #-16]
80023190:	e5932000 	ldr	r2, [r3]
80023194:	e51b3010 	ldr	r3, [fp, #-16]
80023198:	e5933004 	ldr	r3, [r3, #4]
8002319c:	e1a031a3 	lsr	r3, r3, #3
800231a0:	e2833002 	add	r3, r3, #2
800231a4:	e1a01003 	mov	r1, r3
800231a8:	e1a00002 	mov	r0, r2
800231ac:	ebfff658 	bl	80020b14 <bread>
800231b0:	e50b0008 	str	r0, [fp, #-8]
800231b4:	e51b3008 	ldr	r3, [fp, #-8]
800231b8:	e2832018 	add	r2, r3, #24
800231bc:	e51b3010 	ldr	r3, [fp, #-16]
800231c0:	e5933004 	ldr	r3, [r3, #4]
800231c4:	e2033007 	and	r3, r3, #7
800231c8:	e1a03303 	lsl	r3, r3, #6
800231cc:	e0823003 	add	r3, r2, r3
800231d0:	e50b300c 	str	r3, [fp, #-12]
800231d4:	e51b300c 	ldr	r3, [fp, #-12]
800231d8:	e1d320f0 	ldrsh	r2, [r3]
800231dc:	e51b3010 	ldr	r3, [fp, #-16]
800231e0:	e1c321b0 	strh	r2, [r3, #16]
800231e4:	e51b300c 	ldr	r3, [fp, #-12]
800231e8:	e1d320f2 	ldrsh	r2, [r3, #2]
800231ec:	e51b3010 	ldr	r3, [fp, #-16]
800231f0:	e1c321b2 	strh	r2, [r3, #18]
800231f4:	e51b300c 	ldr	r3, [fp, #-12]
800231f8:	e1d320f4 	ldrsh	r2, [r3, #4]
800231fc:	e51b3010 	ldr	r3, [fp, #-16]
80023200:	e1c321b4 	strh	r2, [r3, #20]
80023204:	e51b300c 	ldr	r3, [fp, #-12]
80023208:	e1d320f6 	ldrsh	r2, [r3, #6]
8002320c:	e51b3010 	ldr	r3, [fp, #-16]
80023210:	e1c321b6 	strh	r2, [r3, #22]
80023214:	e51b300c 	ldr	r3, [fp, #-12]
80023218:	e5932008 	ldr	r2, [r3, #8]
8002321c:	e51b3010 	ldr	r3, [fp, #-16]
80023220:	e5832018 	str	r2, [r3, #24]
80023224:	e51b3010 	ldr	r3, [fp, #-16]
80023228:	e283001c 	add	r0, r3, #28
8002322c:	e51b300c 	ldr	r3, [fp, #-12]
80023230:	e283300c 	add	r3, r3, #12
80023234:	e3a02034 	mov	r2, #52	@ 0x34
80023238:	e1a01003 	mov	r1, r3
8002323c:	ebfff3e1 	bl	800201c8 <memmove>
80023240:	e51b0008 	ldr	r0, [fp, #-8]
80023244:	ebfff65c 	bl	80020bbc <brelse>
80023248:	e51b3010 	ldr	r3, [fp, #-16]
8002324c:	e593300c 	ldr	r3, [r3, #12]
80023250:	e3832002 	orr	r2, r3, #2
80023254:	e51b3010 	ldr	r3, [fp, #-16]
80023258:	e583200c 	str	r2, [r3, #12]
8002325c:	e51b3010 	ldr	r3, [fp, #-16]
80023260:	e1d331f0 	ldrsh	r3, [r3, #16]
80023264:	e3530000 	cmp	r3, #0
80023268:	1a000001 	bne	80023274 <ilock+0x178>
8002326c:	e59f0014 	ldr	r0, [pc, #20]	@ 80023288 <ilock+0x18c>
80023270:	ebfffa0d 	bl	80021aac <panic>
80023274:	e1a00000 	nop			@ (mov r0, r0)
80023278:	e24bd004 	sub	sp, fp, #4
8002327c:	e8bd8800 	pop	{fp, pc}
80023280:	800295d0 	.word	0x800295d0
80023284:	800ac4e0 	.word	0x800ac4e0
80023288:	800295d8 	.word	0x800295d8

8002328c <iunlock>:
8002328c:	e92d4800 	push	{fp, lr}
80023290:	e28db004 	add	fp, sp, #4
80023294:	e24dd008 	sub	sp, sp, #8
80023298:	e50b0008 	str	r0, [fp, #-8]
8002329c:	e51b3008 	ldr	r3, [fp, #-8]
800232a0:	e3530000 	cmp	r3, #0
800232a4:	0a000008 	beq	800232cc <iunlock+0x40>
800232a8:	e51b3008 	ldr	r3, [fp, #-8]
800232ac:	e593300c 	ldr	r3, [r3, #12]
800232b0:	e2033001 	and	r3, r3, #1
800232b4:	e3530000 	cmp	r3, #0
800232b8:	0a000003 	beq	800232cc <iunlock+0x40>
800232bc:	e51b3008 	ldr	r3, [fp, #-8]
800232c0:	e5933008 	ldr	r3, [r3, #8]
800232c4:	e3530000 	cmp	r3, #0
800232c8:	ca000001 	bgt	800232d4 <iunlock+0x48>
800232cc:	e59f0038 	ldr	r0, [pc, #56]	@ 8002330c <iunlock+0x80>
800232d0:	ebfff9f5 	bl	80021aac <panic>
800232d4:	e59f0034 	ldr	r0, [pc, #52]	@ 80023310 <iunlock+0x84>
800232d8:	eb000afc 	bl	80025ed0 <acquire>
800232dc:	e51b3008 	ldr	r3, [fp, #-8]
800232e0:	e593300c 	ldr	r3, [r3, #12]
800232e4:	e3c32001 	bic	r2, r3, #1
800232e8:	e51b3008 	ldr	r3, [fp, #-8]
800232ec:	e583200c 	str	r2, [r3, #12]
800232f0:	e51b0008 	ldr	r0, [fp, #-8]
800232f4:	eb000a70 	bl	80025cbc <wakeup>
800232f8:	e59f0010 	ldr	r0, [pc, #16]	@ 80023310 <iunlock+0x84>
800232fc:	eb000afe 	bl	80025efc <release>
80023300:	e1a00000 	nop			@ (mov r0, r0)
80023304:	e24bd004 	sub	sp, fp, #4
80023308:	e8bd8800 	pop	{fp, pc}
8002330c:	800295e8 	.word	0x800295e8
80023310:	800ac4e0 	.word	0x800ac4e0

80023314 <iput>:
80023314:	e92d4800 	push	{fp, lr}
80023318:	e28db004 	add	fp, sp, #4
8002331c:	e24dd008 	sub	sp, sp, #8
80023320:	e50b0008 	str	r0, [fp, #-8]
80023324:	e59f00cc 	ldr	r0, [pc, #204]	@ 800233f8 <iput+0xe4>
80023328:	eb000ae8 	bl	80025ed0 <acquire>
8002332c:	e51b3008 	ldr	r3, [fp, #-8]
80023330:	e5933008 	ldr	r3, [r3, #8]
80023334:	e3530001 	cmp	r3, #1
80023338:	1a000024 	bne	800233d0 <iput+0xbc>
8002333c:	e51b3008 	ldr	r3, [fp, #-8]
80023340:	e593300c 	ldr	r3, [r3, #12]
80023344:	e2033002 	and	r3, r3, #2
80023348:	e3530000 	cmp	r3, #0
8002334c:	0a00001f 	beq	800233d0 <iput+0xbc>
80023350:	e51b3008 	ldr	r3, [fp, #-8]
80023354:	e1d331f6 	ldrsh	r3, [r3, #22]
80023358:	e3530000 	cmp	r3, #0
8002335c:	1a00001b 	bne	800233d0 <iput+0xbc>
80023360:	e51b3008 	ldr	r3, [fp, #-8]
80023364:	e593300c 	ldr	r3, [r3, #12]
80023368:	e2033001 	and	r3, r3, #1
8002336c:	e3530000 	cmp	r3, #0
80023370:	0a000001 	beq	8002337c <iput+0x68>
80023374:	e59f0080 	ldr	r0, [pc, #128]	@ 800233fc <iput+0xe8>
80023378:	ebfff9cb 	bl	80021aac <panic>
8002337c:	e51b3008 	ldr	r3, [fp, #-8]
80023380:	e593300c 	ldr	r3, [r3, #12]
80023384:	e3832001 	orr	r2, r3, #1
80023388:	e51b3008 	ldr	r3, [fp, #-8]
8002338c:	e583200c 	str	r2, [r3, #12]
80023390:	e59f0060 	ldr	r0, [pc, #96]	@ 800233f8 <iput+0xe4>
80023394:	eb000ad8 	bl	80025efc <release>
80023398:	e51b0008 	ldr	r0, [fp, #-8]
8002339c:	eb00007f 	bl	800235a0 <itrunc>
800233a0:	e51b3008 	ldr	r3, [fp, #-8]
800233a4:	e3a02000 	mov	r2, #0
800233a8:	e1c321b0 	strh	r2, [r3, #16]
800233ac:	e51b0008 	ldr	r0, [fp, #-8]
800233b0:	ebfffeb7 	bl	80022e94 <iupdate>
800233b4:	e59f003c 	ldr	r0, [pc, #60]	@ 800233f8 <iput+0xe4>
800233b8:	eb000ac4 	bl	80025ed0 <acquire>
800233bc:	e51b3008 	ldr	r3, [fp, #-8]
800233c0:	e3a02000 	mov	r2, #0
800233c4:	e583200c 	str	r2, [r3, #12]
800233c8:	e51b0008 	ldr	r0, [fp, #-8]
800233cc:	eb000a3a 	bl	80025cbc <wakeup>
800233d0:	e51b3008 	ldr	r3, [fp, #-8]
800233d4:	e5933008 	ldr	r3, [r3, #8]
800233d8:	e2432001 	sub	r2, r3, #1
800233dc:	e51b3008 	ldr	r3, [fp, #-8]
800233e0:	e5832008 	str	r2, [r3, #8]
800233e4:	e59f000c 	ldr	r0, [pc, #12]	@ 800233f8 <iput+0xe4>
800233e8:	eb000ac3 	bl	80025efc <release>
800233ec:	e1a00000 	nop			@ (mov r0, r0)
800233f0:	e24bd004 	sub	sp, fp, #4
800233f4:	e8bd8800 	pop	{fp, pc}
800233f8:	800ac4e0 	.word	0x800ac4e0
800233fc:	800295f0 	.word	0x800295f0

80023400 <iunlockput>:
80023400:	e92d4800 	push	{fp, lr}
80023404:	e28db004 	add	fp, sp, #4
80023408:	e24dd008 	sub	sp, sp, #8
8002340c:	e50b0008 	str	r0, [fp, #-8]
80023410:	e51b0008 	ldr	r0, [fp, #-8]
80023414:	ebffff9c 	bl	8002328c <iunlock>
80023418:	e51b0008 	ldr	r0, [fp, #-8]
8002341c:	ebffffbc 	bl	80023314 <iput>
80023420:	e1a00000 	nop			@ (mov r0, r0)
80023424:	e24bd004 	sub	sp, fp, #4
80023428:	e8bd8800 	pop	{fp, pc}

8002342c <bmap>:
8002342c:	e92d4800 	push	{fp, lr}
80023430:	e28db004 	add	fp, sp, #4
80023434:	e24dd018 	sub	sp, sp, #24
80023438:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
8002343c:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80023440:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023444:	e353000b 	cmp	r3, #11
80023448:	8a000017 	bhi	800234ac <bmap+0x80>
8002344c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023450:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023454:	e2833006 	add	r3, r3, #6
80023458:	e1a03103 	lsl	r3, r3, #2
8002345c:	e0823003 	add	r3, r2, r3
80023460:	e5933004 	ldr	r3, [r3, #4]
80023464:	e50b3008 	str	r3, [fp, #-8]
80023468:	e51b3008 	ldr	r3, [fp, #-8]
8002346c:	e3530000 	cmp	r3, #0
80023470:	1a00000b 	bne	800234a4 <bmap+0x78>
80023474:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023478:	e5933000 	ldr	r3, [r3]
8002347c:	e1a00003 	mov	r0, r3
80023480:	ebfffd7e 	bl	80022a80 <balloc>
80023484:	e50b0008 	str	r0, [fp, #-8]
80023488:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002348c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023490:	e2833006 	add	r3, r3, #6
80023494:	e1a03103 	lsl	r3, r3, #2
80023498:	e0823003 	add	r3, r2, r3
8002349c:	e51b2008 	ldr	r2, [fp, #-8]
800234a0:	e5832004 	str	r2, [r3, #4]
800234a4:	e51b3008 	ldr	r3, [fp, #-8]
800234a8:	ea000038 	b	80023590 <bmap+0x164>
800234ac:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234b0:	e243300c 	sub	r3, r3, #12
800234b4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800234b8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800234bc:	e353007f 	cmp	r3, #127	@ 0x7f
800234c0:	8a000030 	bhi	80023588 <bmap+0x15c>
800234c4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800234c8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800234cc:	e50b3008 	str	r3, [fp, #-8]
800234d0:	e51b3008 	ldr	r3, [fp, #-8]
800234d4:	e3530000 	cmp	r3, #0
800234d8:	1a000007 	bne	800234fc <bmap+0xd0>
800234dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800234e0:	e5933000 	ldr	r3, [r3]
800234e4:	e1a00003 	mov	r0, r3
800234e8:	ebfffd64 	bl	80022a80 <balloc>
800234ec:	e50b0008 	str	r0, [fp, #-8]
800234f0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800234f4:	e51b2008 	ldr	r2, [fp, #-8]
800234f8:	e583204c 	str	r2, [r3, #76]	@ 0x4c
800234fc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023500:	e5933000 	ldr	r3, [r3]
80023504:	e51b1008 	ldr	r1, [fp, #-8]
80023508:	e1a00003 	mov	r0, r3
8002350c:	ebfff580 	bl	80020b14 <bread>
80023510:	e50b000c 	str	r0, [fp, #-12]
80023514:	e51b300c 	ldr	r3, [fp, #-12]
80023518:	e2833018 	add	r3, r3, #24
8002351c:	e50b3010 	str	r3, [fp, #-16]
80023520:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80023524:	e1a03103 	lsl	r3, r3, #2
80023528:	e51b2010 	ldr	r2, [fp, #-16]
8002352c:	e0823003 	add	r3, r2, r3
80023530:	e5933000 	ldr	r3, [r3]
80023534:	e50b3008 	str	r3, [fp, #-8]
80023538:	e51b3008 	ldr	r3, [fp, #-8]
8002353c:	e3530000 	cmp	r3, #0
80023540:	1a00000c 	bne	80023578 <bmap+0x14c>
80023544:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023548:	e5933000 	ldr	r3, [r3]
8002354c:	e1a00003 	mov	r0, r3
80023550:	ebfffd4a 	bl	80022a80 <balloc>
80023554:	e50b0008 	str	r0, [fp, #-8]
80023558:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002355c:	e1a03103 	lsl	r3, r3, #2
80023560:	e51b2010 	ldr	r2, [fp, #-16]
80023564:	e0823003 	add	r3, r2, r3
80023568:	e51b2008 	ldr	r2, [fp, #-8]
8002356c:	e5832000 	str	r2, [r3]
80023570:	e51b000c 	ldr	r0, [fp, #-12]
80023574:	eb0003b8 	bl	8002445c <log_write>
80023578:	e51b000c 	ldr	r0, [fp, #-12]
8002357c:	ebfff58e 	bl	80020bbc <brelse>
80023580:	e51b3008 	ldr	r3, [fp, #-8]
80023584:	ea000001 	b	80023590 <bmap+0x164>
80023588:	e59f000c 	ldr	r0, [pc, #12]	@ 8002359c <bmap+0x170>
8002358c:	ebfff946 	bl	80021aac <panic>
80023590:	e1a00003 	mov	r0, r3
80023594:	e24bd004 	sub	sp, fp, #4
80023598:	e8bd8800 	pop	{fp, pc}
8002359c:	800295fc 	.word	0x800295fc

800235a0 <itrunc>:
800235a0:	e92d4800 	push	{fp, lr}
800235a4:	e28db004 	add	fp, sp, #4
800235a8:	e24dd018 	sub	sp, sp, #24
800235ac:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800235b0:	e3a03000 	mov	r3, #0
800235b4:	e50b3008 	str	r3, [fp, #-8]
800235b8:	ea00001c 	b	80023630 <itrunc+0x90>
800235bc:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800235c0:	e51b3008 	ldr	r3, [fp, #-8]
800235c4:	e2833006 	add	r3, r3, #6
800235c8:	e1a03103 	lsl	r3, r3, #2
800235cc:	e0823003 	add	r3, r2, r3
800235d0:	e5933004 	ldr	r3, [r3, #4]
800235d4:	e3530000 	cmp	r3, #0
800235d8:	0a000011 	beq	80023624 <itrunc+0x84>
800235dc:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800235e0:	e5933000 	ldr	r3, [r3]
800235e4:	e1a00003 	mov	r0, r3
800235e8:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800235ec:	e51b3008 	ldr	r3, [fp, #-8]
800235f0:	e2833006 	add	r3, r3, #6
800235f4:	e1a03103 	lsl	r3, r3, #2
800235f8:	e0823003 	add	r3, r2, r3
800235fc:	e5933004 	ldr	r3, [r3, #4]
80023600:	e1a01003 	mov	r1, r3
80023604:	ebfffd8f 	bl	80022c48 <bfree>
80023608:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002360c:	e51b3008 	ldr	r3, [fp, #-8]
80023610:	e2833006 	add	r3, r3, #6
80023614:	e1a03103 	lsl	r3, r3, #2
80023618:	e0823003 	add	r3, r2, r3
8002361c:	e3a02000 	mov	r2, #0
80023620:	e5832004 	str	r2, [r3, #4]
80023624:	e51b3008 	ldr	r3, [fp, #-8]
80023628:	e2833001 	add	r3, r3, #1
8002362c:	e50b3008 	str	r3, [fp, #-8]
80023630:	e51b3008 	ldr	r3, [fp, #-8]
80023634:	e353000b 	cmp	r3, #11
80023638:	daffffdf 	ble	800235bc <itrunc+0x1c>
8002363c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023640:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
80023644:	e3530000 	cmp	r3, #0
80023648:	0a000031 	beq	80023714 <itrunc+0x174>
8002364c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023650:	e5932000 	ldr	r2, [r3]
80023654:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023658:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
8002365c:	e1a01003 	mov	r1, r3
80023660:	e1a00002 	mov	r0, r2
80023664:	ebfff52a 	bl	80020b14 <bread>
80023668:	e50b0010 	str	r0, [fp, #-16]
8002366c:	e51b3010 	ldr	r3, [fp, #-16]
80023670:	e2833018 	add	r3, r3, #24
80023674:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80023678:	e3a03000 	mov	r3, #0
8002367c:	e50b300c 	str	r3, [fp, #-12]
80023680:	ea000013 	b	800236d4 <itrunc+0x134>
80023684:	e51b300c 	ldr	r3, [fp, #-12]
80023688:	e1a03103 	lsl	r3, r3, #2
8002368c:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023690:	e0823003 	add	r3, r2, r3
80023694:	e5933000 	ldr	r3, [r3]
80023698:	e3530000 	cmp	r3, #0
8002369c:	0a000009 	beq	800236c8 <itrunc+0x128>
800236a0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236a4:	e5933000 	ldr	r3, [r3]
800236a8:	e1a00003 	mov	r0, r3
800236ac:	e51b300c 	ldr	r3, [fp, #-12]
800236b0:	e1a03103 	lsl	r3, r3, #2
800236b4:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800236b8:	e0823003 	add	r3, r2, r3
800236bc:	e5933000 	ldr	r3, [r3]
800236c0:	e1a01003 	mov	r1, r3
800236c4:	ebfffd5f 	bl	80022c48 <bfree>
800236c8:	e51b300c 	ldr	r3, [fp, #-12]
800236cc:	e2833001 	add	r3, r3, #1
800236d0:	e50b300c 	str	r3, [fp, #-12]
800236d4:	e51b300c 	ldr	r3, [fp, #-12]
800236d8:	e353007f 	cmp	r3, #127	@ 0x7f
800236dc:	9affffe8 	bls	80023684 <itrunc+0xe4>
800236e0:	e51b0010 	ldr	r0, [fp, #-16]
800236e4:	ebfff534 	bl	80020bbc <brelse>
800236e8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236ec:	e5933000 	ldr	r3, [r3]
800236f0:	e1a02003 	mov	r2, r3
800236f4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800236f8:	e593304c 	ldr	r3, [r3, #76]	@ 0x4c
800236fc:	e1a01003 	mov	r1, r3
80023700:	e1a00002 	mov	r0, r2
80023704:	ebfffd4f 	bl	80022c48 <bfree>
80023708:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002370c:	e3a02000 	mov	r2, #0
80023710:	e583204c 	str	r2, [r3, #76]	@ 0x4c
80023714:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023718:	e3a02000 	mov	r2, #0
8002371c:	e5832018 	str	r2, [r3, #24]
80023720:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80023724:	ebfffdda 	bl	80022e94 <iupdate>
80023728:	e1a00000 	nop			@ (mov r0, r0)
8002372c:	e24bd004 	sub	sp, fp, #4
80023730:	e8bd8800 	pop	{fp, pc}

80023734 <stati>:
80023734:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80023738:	e28db000 	add	fp, sp, #0
8002373c:	e24dd00c 	sub	sp, sp, #12
80023740:	e50b0008 	str	r0, [fp, #-8]
80023744:	e50b100c 	str	r1, [fp, #-12]
80023748:	e51b3008 	ldr	r3, [fp, #-8]
8002374c:	e5933000 	ldr	r3, [r3]
80023750:	e1a02003 	mov	r2, r3
80023754:	e51b300c 	ldr	r3, [fp, #-12]
80023758:	e5832004 	str	r2, [r3, #4]
8002375c:	e51b3008 	ldr	r3, [fp, #-8]
80023760:	e5932004 	ldr	r2, [r3, #4]
80023764:	e51b300c 	ldr	r3, [fp, #-12]
80023768:	e5832008 	str	r2, [r3, #8]
8002376c:	e51b3008 	ldr	r3, [fp, #-8]
80023770:	e1d321f0 	ldrsh	r2, [r3, #16]
80023774:	e51b300c 	ldr	r3, [fp, #-12]
80023778:	e1c320b0 	strh	r2, [r3]
8002377c:	e51b3008 	ldr	r3, [fp, #-8]
80023780:	e1d321f6 	ldrsh	r2, [r3, #22]
80023784:	e51b300c 	ldr	r3, [fp, #-12]
80023788:	e1c320bc 	strh	r2, [r3, #12]
8002378c:	e51b3008 	ldr	r3, [fp, #-8]
80023790:	e5932018 	ldr	r2, [r3, #24]
80023794:	e51b300c 	ldr	r3, [fp, #-12]
80023798:	e5832010 	str	r2, [r3, #16]
8002379c:	e1a00000 	nop			@ (mov r0, r0)
800237a0:	e28bd000 	add	sp, fp, #0
800237a4:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800237a8:	e12fff1e 	bx	lr

800237ac <readi>:
800237ac:	e92d4810 	push	{r4, fp, lr}
800237b0:	e28db008 	add	fp, sp, #8
800237b4:	e24dd024 	sub	sp, sp, #36	@ 0x24
800237b8:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800237bc:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800237c0:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800237c4:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800237c8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800237cc:	e1d331f0 	ldrsh	r3, [r3, #16]
800237d0:	e3530003 	cmp	r3, #3
800237d4:	1a00001b 	bne	80023848 <readi+0x9c>
800237d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800237dc:	e1d331f2 	ldrsh	r3, [r3, #18]
800237e0:	e3530000 	cmp	r3, #0
800237e4:	ba00000a 	blt	80023814 <readi+0x68>
800237e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800237ec:	e1d331f2 	ldrsh	r3, [r3, #18]
800237f0:	e3530009 	cmp	r3, #9
800237f4:	ca000006 	bgt	80023814 <readi+0x68>
800237f8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800237fc:	e1d331f2 	ldrsh	r3, [r3, #18]
80023800:	e1a02003 	mov	r2, r3
80023804:	e59f3188 	ldr	r3, [pc, #392]	@ 80023994 <readi+0x1e8>
80023808:	e7933182 	ldr	r3, [r3, r2, lsl #3]
8002380c:	e3530000 	cmp	r3, #0
80023810:	1a000001 	bne	8002381c <readi+0x70>
80023814:	e3e03000 	mvn	r3, #0
80023818:	ea00005a 	b	80023988 <readi+0x1dc>
8002381c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023820:	e1d331f2 	ldrsh	r3, [r3, #18]
80023824:	e1a02003 	mov	r2, r3
80023828:	e59f3164 	ldr	r3, [pc, #356]	@ 80023994 <readi+0x1e8>
8002382c:	e7933182 	ldr	r3, [r3, r2, lsl #3]
80023830:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023834:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023838:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002383c:	e12fff33 	blx	r3
80023840:	e1a03000 	mov	r3, r0
80023844:	ea00004f 	b	80023988 <readi+0x1dc>
80023848:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002384c:	e5933018 	ldr	r3, [r3, #24]
80023850:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023854:	e1520003 	cmp	r2, r3
80023858:	8a000005 	bhi	80023874 <readi+0xc8>
8002385c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023860:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023864:	e0823003 	add	r3, r2, r3
80023868:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
8002386c:	e1520003 	cmp	r2, r3
80023870:	9a000001 	bls	8002387c <readi+0xd0>
80023874:	e3e03000 	mvn	r3, #0
80023878:	ea000042 	b	80023988 <readi+0x1dc>
8002387c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023880:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023884:	e0822003 	add	r2, r2, r3
80023888:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002388c:	e5933018 	ldr	r3, [r3, #24]
80023890:	e1520003 	cmp	r2, r3
80023894:	9a000004 	bls	800238ac <readi+0x100>
80023898:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002389c:	e5932018 	ldr	r2, [r3, #24]
800238a0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800238a4:	e0423003 	sub	r3, r2, r3
800238a8:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800238ac:	e3a03000 	mov	r3, #0
800238b0:	e50b3010 	str	r3, [fp, #-16]
800238b4:	ea00002e 	b	80023974 <readi+0x1c8>
800238b8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800238bc:	e5934000 	ldr	r4, [r3]
800238c0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800238c4:	e1a034a3 	lsr	r3, r3, #9
800238c8:	e1a01003 	mov	r1, r3
800238cc:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
800238d0:	ebfffed5 	bl	8002342c <bmap>
800238d4:	e1a03000 	mov	r3, r0
800238d8:	e1a01003 	mov	r1, r3
800238dc:	e1a00004 	mov	r0, r4
800238e0:	ebfff48b 	bl	80020b14 <bread>
800238e4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
800238e8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
800238ec:	e1a03b83 	lsl	r3, r3, #23
800238f0:	e1a03ba3 	lsr	r3, r3, #23
800238f4:	e2632c02 	rsb	r2, r3, #512	@ 0x200
800238f8:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
800238fc:	e51b3010 	ldr	r3, [fp, #-16]
80023900:	e0413003 	sub	r3, r1, r3
80023904:	e1520003 	cmp	r2, r3
80023908:	31a03002 	movcc	r3, r2
8002390c:	21a03003 	movcs	r3, r3
80023910:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023914:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023918:	e2832018 	add	r2, r3, #24
8002391c:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023920:	e1a03b83 	lsl	r3, r3, #23
80023924:	e1a03ba3 	lsr	r3, r3, #23
80023928:	e0823003 	add	r3, r2, r3
8002392c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023930:	e1a01003 	mov	r1, r3
80023934:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023938:	ebfff222 	bl	800201c8 <memmove>
8002393c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023940:	ebfff49d 	bl	80020bbc <brelse>
80023944:	e51b2010 	ldr	r2, [fp, #-16]
80023948:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002394c:	e0823003 	add	r3, r2, r3
80023950:	e50b3010 	str	r3, [fp, #-16]
80023954:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023958:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002395c:	e0823003 	add	r3, r2, r3
80023960:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023964:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023968:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002396c:	e0823003 	add	r3, r2, r3
80023970:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023974:	e51b2010 	ldr	r2, [fp, #-16]
80023978:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
8002397c:	e1520003 	cmp	r2, r3
80023980:	3affffcc 	bcc	800238b8 <readi+0x10c>
80023984:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023988:	e1a00003 	mov	r0, r3
8002398c:	e24bd008 	sub	sp, fp, #8
80023990:	e8bd8810 	pop	{r4, fp, pc}
80023994:	800abafc 	.word	0x800abafc

80023998 <writei>:
80023998:	e92d4810 	push	{r4, fp, lr}
8002399c:	e28db008 	add	fp, sp, #8
800239a0:	e24dd024 	sub	sp, sp, #36	@ 0x24
800239a4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
800239a8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
800239ac:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
800239b0:	e50b302c 	str	r3, [fp, #-44]	@ 0xffffffd4
800239b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239b8:	e1d331f0 	ldrsh	r3, [r3, #16]
800239bc:	e3530003 	cmp	r3, #3
800239c0:	1a00001d 	bne	80023a3c <writei+0xa4>
800239c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239c8:	e1d331f2 	ldrsh	r3, [r3, #18]
800239cc:	e3530000 	cmp	r3, #0
800239d0:	ba00000b 	blt	80023a04 <writei+0x6c>
800239d4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239d8:	e1d331f2 	ldrsh	r3, [r3, #18]
800239dc:	e3530009 	cmp	r3, #9
800239e0:	ca000007 	bgt	80023a04 <writei+0x6c>
800239e4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800239e8:	e1d331f2 	ldrsh	r3, [r3, #18]
800239ec:	e59f21bc 	ldr	r2, [pc, #444]	@ 80023bb0 <writei+0x218>
800239f0:	e1a03183 	lsl	r3, r3, #3
800239f4:	e0823003 	add	r3, r2, r3
800239f8:	e5933004 	ldr	r3, [r3, #4]
800239fc:	e3530000 	cmp	r3, #0
80023a00:	1a000001 	bne	80023a0c <writei+0x74>
80023a04:	e3e03000 	mvn	r3, #0
80023a08:	ea000065 	b	80023ba4 <writei+0x20c>
80023a0c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a10:	e1d331f2 	ldrsh	r3, [r3, #18]
80023a14:	e59f2194 	ldr	r2, [pc, #404]	@ 80023bb0 <writei+0x218>
80023a18:	e1a03183 	lsl	r3, r3, #3
80023a1c:	e0823003 	add	r3, r2, r3
80023a20:	e5933004 	ldr	r3, [r3, #4]
80023a24:	e51b202c 	ldr	r2, [fp, #-44]	@ 0xffffffd4
80023a28:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023a2c:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023a30:	e12fff33 	blx	r3
80023a34:	e1a03000 	mov	r3, r0
80023a38:	ea000059 	b	80023ba4 <writei+0x20c>
80023a3c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a40:	e5933018 	ldr	r3, [r3, #24]
80023a44:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a48:	e1520003 	cmp	r2, r3
80023a4c:	8a000005 	bhi	80023a68 <writei+0xd0>
80023a50:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a54:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a58:	e0823003 	add	r3, r2, r3
80023a5c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a60:	e1520003 	cmp	r2, r3
80023a64:	9a000001 	bls	80023a70 <writei+0xd8>
80023a68:	e3e03000 	mvn	r3, #0
80023a6c:	ea00004c 	b	80023ba4 <writei+0x20c>
80023a70:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023a74:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023a78:	e0823003 	add	r3, r2, r3
80023a7c:	e3530b46 	cmp	r3, #71680	@ 0x11800
80023a80:	9a000001 	bls	80023a8c <writei+0xf4>
80023a84:	e3e03000 	mvn	r3, #0
80023a88:	ea000045 	b	80023ba4 <writei+0x20c>
80023a8c:	e3a03000 	mov	r3, #0
80023a90:	e50b3010 	str	r3, [fp, #-16]
80023a94:	ea000030 	b	80023b5c <writei+0x1c4>
80023a98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023a9c:	e5934000 	ldr	r4, [r3]
80023aa0:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023aa4:	e1a034a3 	lsr	r3, r3, #9
80023aa8:	e1a01003 	mov	r1, r3
80023aac:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023ab0:	ebfffe5d 	bl	8002342c <bmap>
80023ab4:	e1a03000 	mov	r3, r0
80023ab8:	e1a01003 	mov	r1, r3
80023abc:	e1a00004 	mov	r0, r4
80023ac0:	ebfff413 	bl	80020b14 <bread>
80023ac4:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80023ac8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023acc:	e1a03b83 	lsl	r3, r3, #23
80023ad0:	e1a03ba3 	lsr	r3, r3, #23
80023ad4:	e2632c02 	rsb	r2, r3, #512	@ 0x200
80023ad8:	e51b102c 	ldr	r1, [fp, #-44]	@ 0xffffffd4
80023adc:	e51b3010 	ldr	r3, [fp, #-16]
80023ae0:	e0413003 	sub	r3, r1, r3
80023ae4:	e1520003 	cmp	r2, r3
80023ae8:	31a03002 	movcc	r3, r2
80023aec:	21a03003 	movcs	r3, r3
80023af0:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80023af4:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023af8:	e2832018 	add	r2, r3, #24
80023afc:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023b00:	e1a03b83 	lsl	r3, r3, #23
80023b04:	e1a03ba3 	lsr	r3, r3, #23
80023b08:	e0823003 	add	r3, r2, r3
80023b0c:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80023b10:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023b14:	e1a00003 	mov	r0, r3
80023b18:	ebfff1aa 	bl	800201c8 <memmove>
80023b1c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b20:	eb00024d 	bl	8002445c <log_write>
80023b24:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023b28:	ebfff423 	bl	80020bbc <brelse>
80023b2c:	e51b2010 	ldr	r2, [fp, #-16]
80023b30:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b34:	e0823003 	add	r3, r2, r3
80023b38:	e50b3010 	str	r3, [fp, #-16]
80023b3c:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b40:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b44:	e0823003 	add	r3, r2, r3
80023b48:	e50b3028 	str	r3, [fp, #-40]	@ 0xffffffd8
80023b4c:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80023b50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80023b54:	e0823003 	add	r3, r2, r3
80023b58:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80023b5c:	e51b2010 	ldr	r2, [fp, #-16]
80023b60:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b64:	e1520003 	cmp	r2, r3
80023b68:	3affffca 	bcc	80023a98 <writei+0x100>
80023b6c:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023b70:	e3530000 	cmp	r3, #0
80023b74:	0a000009 	beq	80023ba0 <writei+0x208>
80023b78:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b7c:	e5933018 	ldr	r3, [r3, #24]
80023b80:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b84:	e1520003 	cmp	r2, r3
80023b88:	9a000004 	bls	80023ba0 <writei+0x208>
80023b8c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023b90:	e51b2028 	ldr	r2, [fp, #-40]	@ 0xffffffd8
80023b94:	e5832018 	str	r2, [r3, #24]
80023b98:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023b9c:	ebfffcbc 	bl	80022e94 <iupdate>
80023ba0:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80023ba4:	e1a00003 	mov	r0, r3
80023ba8:	e24bd008 	sub	sp, fp, #8
80023bac:	e8bd8810 	pop	{r4, fp, pc}
80023bb0:	800abafc 	.word	0x800abafc

80023bb4 <namecmp>:
80023bb4:	e92d4800 	push	{fp, lr}
80023bb8:	e28db004 	add	fp, sp, #4
80023bbc:	e24dd008 	sub	sp, sp, #8
80023bc0:	e50b0008 	str	r0, [fp, #-8]
80023bc4:	e50b100c 	str	r1, [fp, #-12]
80023bc8:	e3a0200e 	mov	r2, #14
80023bcc:	e51b100c 	ldr	r1, [fp, #-12]
80023bd0:	e51b0008 	ldr	r0, [fp, #-8]
80023bd4:	ebfff1c8 	bl	800202fc <strncmp>
80023bd8:	e1a03000 	mov	r3, r0
80023bdc:	e1a00003 	mov	r0, r3
80023be0:	e24bd004 	sub	sp, fp, #4
80023be4:	e8bd8800 	pop	{fp, pc}

80023be8 <dirlookup>:
80023be8:	e92d4800 	push	{fp, lr}
80023bec:	e28db004 	add	fp, sp, #4
80023bf0:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023bf4:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023bf8:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023bfc:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023c00:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c04:	e1d331f0 	ldrsh	r3, [r3, #16]
80023c08:	e3530001 	cmp	r3, #1
80023c0c:	0a000001 	beq	80023c18 <dirlookup+0x30>
80023c10:	e59f00d0 	ldr	r0, [pc, #208]	@ 80023ce8 <dirlookup+0x100>
80023c14:	ebfff7a4 	bl	80021aac <panic>
80023c18:	e3a03000 	mov	r3, #0
80023c1c:	e50b3008 	str	r3, [fp, #-8]
80023c20:	ea000027 	b	80023cc4 <dirlookup+0xdc>
80023c24:	e24b101c 	sub	r1, fp, #28
80023c28:	e3a03010 	mov	r3, #16
80023c2c:	e51b2008 	ldr	r2, [fp, #-8]
80023c30:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023c34:	ebfffedc 	bl	800237ac <readi>
80023c38:	e1a03000 	mov	r3, r0
80023c3c:	e3530010 	cmp	r3, #16
80023c40:	0a000001 	beq	80023c4c <dirlookup+0x64>
80023c44:	e59f00a0 	ldr	r0, [pc, #160]	@ 80023cec <dirlookup+0x104>
80023c48:	ebfff797 	bl	80021aac <panic>
80023c4c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023c50:	e3530000 	cmp	r3, #0
80023c54:	0a000016 	beq	80023cb4 <dirlookup+0xcc>
80023c58:	e24b301c 	sub	r3, fp, #28
80023c5c:	e2833002 	add	r3, r3, #2
80023c60:	e1a01003 	mov	r1, r3
80023c64:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80023c68:	ebffffd1 	bl	80023bb4 <namecmp>
80023c6c:	e1a03000 	mov	r3, r0
80023c70:	e3530000 	cmp	r3, #0
80023c74:	1a00000f 	bne	80023cb8 <dirlookup+0xd0>
80023c78:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c7c:	e3530000 	cmp	r3, #0
80023c80:	0a000002 	beq	80023c90 <dirlookup+0xa8>
80023c84:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023c88:	e51b2008 	ldr	r2, [fp, #-8]
80023c8c:	e5832000 	str	r2, [r3]
80023c90:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023c94:	e50b300c 	str	r3, [fp, #-12]
80023c98:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023c9c:	e5933000 	ldr	r3, [r3]
80023ca0:	e51b100c 	ldr	r1, [fp, #-12]
80023ca4:	e1a00003 	mov	r0, r3
80023ca8:	ebfffcb1 	bl	80022f74 <iget>
80023cac:	e1a03000 	mov	r3, r0
80023cb0:	ea000009 	b	80023cdc <dirlookup+0xf4>
80023cb4:	e1a00000 	nop			@ (mov r0, r0)
80023cb8:	e51b3008 	ldr	r3, [fp, #-8]
80023cbc:	e2833010 	add	r3, r3, #16
80023cc0:	e50b3008 	str	r3, [fp, #-8]
80023cc4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023cc8:	e5933018 	ldr	r3, [r3, #24]
80023ccc:	e51b2008 	ldr	r2, [fp, #-8]
80023cd0:	e1520003 	cmp	r2, r3
80023cd4:	3affffd2 	bcc	80023c24 <dirlookup+0x3c>
80023cd8:	e3a03000 	mov	r3, #0
80023cdc:	e1a00003 	mov	r0, r3
80023ce0:	e24bd004 	sub	sp, fp, #4
80023ce4:	e8bd8800 	pop	{fp, pc}
80023ce8:	80029610 	.word	0x80029610
80023cec:	80029624 	.word	0x80029624

80023cf0 <dirlink>:
80023cf0:	e92d4800 	push	{fp, lr}
80023cf4:	e28db004 	add	fp, sp, #4
80023cf8:	e24dd028 	sub	sp, sp, #40	@ 0x28
80023cfc:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80023d00:	e50b1024 	str	r1, [fp, #-36]	@ 0xffffffdc
80023d04:	e50b2028 	str	r2, [fp, #-40]	@ 0xffffffd8
80023d08:	e3a02000 	mov	r2, #0
80023d0c:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023d10:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d14:	ebffffb3 	bl	80023be8 <dirlookup>
80023d18:	e50b000c 	str	r0, [fp, #-12]
80023d1c:	e51b300c 	ldr	r3, [fp, #-12]
80023d20:	e3530000 	cmp	r3, #0
80023d24:	0a000003 	beq	80023d38 <dirlink+0x48>
80023d28:	e51b000c 	ldr	r0, [fp, #-12]
80023d2c:	ebfffd78 	bl	80023314 <iput>
80023d30:	e3e03000 	mvn	r3, #0
80023d34:	ea00002d 	b	80023df0 <dirlink+0x100>
80023d38:	e3a03000 	mov	r3, #0
80023d3c:	e50b3008 	str	r3, [fp, #-8]
80023d40:	ea00000f 	b	80023d84 <dirlink+0x94>
80023d44:	e51b2008 	ldr	r2, [fp, #-8]
80023d48:	e24b101c 	sub	r1, fp, #28
80023d4c:	e3a03010 	mov	r3, #16
80023d50:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023d54:	ebfffe94 	bl	800237ac <readi>
80023d58:	e1a03000 	mov	r3, r0
80023d5c:	e3530010 	cmp	r3, #16
80023d60:	0a000001 	beq	80023d6c <dirlink+0x7c>
80023d64:	e59f0090 	ldr	r0, [pc, #144]	@ 80023dfc <dirlink+0x10c>
80023d68:	ebfff74f 	bl	80021aac <panic>
80023d6c:	e15b31bc 	ldrh	r3, [fp, #-28]	@ 0xffffffe4
80023d70:	e3530000 	cmp	r3, #0
80023d74:	0a000008 	beq	80023d9c <dirlink+0xac>
80023d78:	e51b3008 	ldr	r3, [fp, #-8]
80023d7c:	e2833010 	add	r3, r3, #16
80023d80:	e50b3008 	str	r3, [fp, #-8]
80023d84:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80023d88:	e5932018 	ldr	r2, [r3, #24]
80023d8c:	e51b3008 	ldr	r3, [fp, #-8]
80023d90:	e1520003 	cmp	r2, r3
80023d94:	8affffea 	bhi	80023d44 <dirlink+0x54>
80023d98:	ea000000 	b	80023da0 <dirlink+0xb0>
80023d9c:	e1a00000 	nop			@ (mov r0, r0)
80023da0:	e24b301c 	sub	r3, fp, #28
80023da4:	e2833002 	add	r3, r3, #2
80023da8:	e3a0200e 	mov	r2, #14
80023dac:	e51b1024 	ldr	r1, [fp, #-36]	@ 0xffffffdc
80023db0:	e1a00003 	mov	r0, r3
80023db4:	ebfff17c 	bl	800203ac <strncpy>
80023db8:	e51b3028 	ldr	r3, [fp, #-40]	@ 0xffffffd8
80023dbc:	e6ff3073 	uxth	r3, r3
80023dc0:	e14b31bc 	strh	r3, [fp, #-28]	@ 0xffffffe4
80023dc4:	e51b2008 	ldr	r2, [fp, #-8]
80023dc8:	e24b101c 	sub	r1, fp, #28
80023dcc:	e3a03010 	mov	r3, #16
80023dd0:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80023dd4:	ebfffeef 	bl	80023998 <writei>
80023dd8:	e1a03000 	mov	r3, r0
80023ddc:	e3530010 	cmp	r3, #16
80023de0:	0a000001 	beq	80023dec <dirlink+0xfc>
80023de4:	e59f0014 	ldr	r0, [pc, #20]	@ 80023e00 <dirlink+0x110>
80023de8:	ebfff72f 	bl	80021aac <panic>
80023dec:	e3a03000 	mov	r3, #0
80023df0:	e1a00003 	mov	r0, r3
80023df4:	e24bd004 	sub	sp, fp, #4
80023df8:	e8bd8800 	pop	{fp, pc}
80023dfc:	80029624 	.word	0x80029624
80023e00:	80029634 	.word	0x80029634

80023e04 <skipelem>:
80023e04:	e92d4800 	push	{fp, lr}
80023e08:	e28db004 	add	fp, sp, #4
80023e0c:	e24dd010 	sub	sp, sp, #16
80023e10:	e50b0010 	str	r0, [fp, #-16]
80023e14:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023e18:	ea000002 	b	80023e28 <skipelem+0x24>
80023e1c:	e51b3010 	ldr	r3, [fp, #-16]
80023e20:	e2833001 	add	r3, r3, #1
80023e24:	e50b3010 	str	r3, [fp, #-16]
80023e28:	e51b3010 	ldr	r3, [fp, #-16]
80023e2c:	e5d33000 	ldrb	r3, [r3]
80023e30:	e353002f 	cmp	r3, #47	@ 0x2f
80023e34:	0afffff8 	beq	80023e1c <skipelem+0x18>
80023e38:	e51b3010 	ldr	r3, [fp, #-16]
80023e3c:	e5d33000 	ldrb	r3, [r3]
80023e40:	e3530000 	cmp	r3, #0
80023e44:	1a000001 	bne	80023e50 <skipelem+0x4c>
80023e48:	e3a03000 	mov	r3, #0
80023e4c:	ea00002c 	b	80023f04 <skipelem+0x100>
80023e50:	e51b3010 	ldr	r3, [fp, #-16]
80023e54:	e50b3008 	str	r3, [fp, #-8]
80023e58:	ea000002 	b	80023e68 <skipelem+0x64>
80023e5c:	e51b3010 	ldr	r3, [fp, #-16]
80023e60:	e2833001 	add	r3, r3, #1
80023e64:	e50b3010 	str	r3, [fp, #-16]
80023e68:	e51b3010 	ldr	r3, [fp, #-16]
80023e6c:	e5d33000 	ldrb	r3, [r3]
80023e70:	e353002f 	cmp	r3, #47	@ 0x2f
80023e74:	0a000003 	beq	80023e88 <skipelem+0x84>
80023e78:	e51b3010 	ldr	r3, [fp, #-16]
80023e7c:	e5d33000 	ldrb	r3, [r3]
80023e80:	e3530000 	cmp	r3, #0
80023e84:	1afffff4 	bne	80023e5c <skipelem+0x58>
80023e88:	e51b2010 	ldr	r2, [fp, #-16]
80023e8c:	e51b3008 	ldr	r3, [fp, #-8]
80023e90:	e0423003 	sub	r3, r2, r3
80023e94:	e50b300c 	str	r3, [fp, #-12]
80023e98:	e51b300c 	ldr	r3, [fp, #-12]
80023e9c:	e353000d 	cmp	r3, #13
80023ea0:	da000004 	ble	80023eb8 <skipelem+0xb4>
80023ea4:	e3a0200e 	mov	r2, #14
80023ea8:	e51b1008 	ldr	r1, [fp, #-8]
80023eac:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023eb0:	ebfff0c4 	bl	800201c8 <memmove>
80023eb4:	ea00000d 	b	80023ef0 <skipelem+0xec>
80023eb8:	e51b300c 	ldr	r3, [fp, #-12]
80023ebc:	e1a02003 	mov	r2, r3
80023ec0:	e51b1008 	ldr	r1, [fp, #-8]
80023ec4:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80023ec8:	ebfff0be 	bl	800201c8 <memmove>
80023ecc:	e51b300c 	ldr	r3, [fp, #-12]
80023ed0:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80023ed4:	e0823003 	add	r3, r2, r3
80023ed8:	e3a02000 	mov	r2, #0
80023edc:	e5c32000 	strb	r2, [r3]
80023ee0:	ea000002 	b	80023ef0 <skipelem+0xec>
80023ee4:	e51b3010 	ldr	r3, [fp, #-16]
80023ee8:	e2833001 	add	r3, r3, #1
80023eec:	e50b3010 	str	r3, [fp, #-16]
80023ef0:	e51b3010 	ldr	r3, [fp, #-16]
80023ef4:	e5d33000 	ldrb	r3, [r3]
80023ef8:	e353002f 	cmp	r3, #47	@ 0x2f
80023efc:	0afffff8 	beq	80023ee4 <skipelem+0xe0>
80023f00:	e51b3010 	ldr	r3, [fp, #-16]
80023f04:	e1a00003 	mov	r0, r3
80023f08:	e24bd004 	sub	sp, fp, #4
80023f0c:	e8bd8800 	pop	{fp, pc}

80023f10 <namex>:
80023f10:	e92d4800 	push	{fp, lr}
80023f14:	e28db004 	add	fp, sp, #4
80023f18:	e24dd018 	sub	sp, sp, #24
80023f1c:	e50b0010 	str	r0, [fp, #-16]
80023f20:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80023f24:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80023f28:	e51b3010 	ldr	r3, [fp, #-16]
80023f2c:	e5d33000 	ldrb	r3, [r3]
80023f30:	e353002f 	cmp	r3, #47	@ 0x2f
80023f34:	1a000004 	bne	80023f4c <namex+0x3c>
80023f38:	e3a01001 	mov	r1, #1
80023f3c:	e3a00001 	mov	r0, #1
80023f40:	ebfffc0b 	bl	80022f74 <iget>
80023f44:	e50b0008 	str	r0, [fp, #-8]
80023f48:	ea00002b 	b	80023ffc <namex+0xec>
80023f4c:	e59f30f0 	ldr	r3, [pc, #240]	@ 80024044 <namex+0x134>
80023f50:	e5933000 	ldr	r3, [r3]
80023f54:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80023f58:	e1a00003 	mov	r0, r3
80023f5c:	ebfffc54 	bl	800230b4 <idup>
80023f60:	e50b0008 	str	r0, [fp, #-8]
80023f64:	ea000024 	b	80023ffc <namex+0xec>
80023f68:	e51b0008 	ldr	r0, [fp, #-8]
80023f6c:	ebfffc62 	bl	800230fc <ilock>
80023f70:	e51b3008 	ldr	r3, [fp, #-8]
80023f74:	e1d331f0 	ldrsh	r3, [r3, #16]
80023f78:	e3530001 	cmp	r3, #1
80023f7c:	0a000003 	beq	80023f90 <namex+0x80>
80023f80:	e51b0008 	ldr	r0, [fp, #-8]
80023f84:	ebfffd1d 	bl	80023400 <iunlockput>
80023f88:	e3a03000 	mov	r3, #0
80023f8c:	ea000029 	b	80024038 <namex+0x128>
80023f90:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80023f94:	e3530000 	cmp	r3, #0
80023f98:	0a000007 	beq	80023fbc <namex+0xac>
80023f9c:	e51b3010 	ldr	r3, [fp, #-16]
80023fa0:	e5d33000 	ldrb	r3, [r3]
80023fa4:	e3530000 	cmp	r3, #0
80023fa8:	1a000003 	bne	80023fbc <namex+0xac>
80023fac:	e51b0008 	ldr	r0, [fp, #-8]
80023fb0:	ebfffcb5 	bl	8002328c <iunlock>
80023fb4:	e51b3008 	ldr	r3, [fp, #-8]
80023fb8:	ea00001e 	b	80024038 <namex+0x128>
80023fbc:	e3a02000 	mov	r2, #0
80023fc0:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80023fc4:	e51b0008 	ldr	r0, [fp, #-8]
80023fc8:	ebffff06 	bl	80023be8 <dirlookup>
80023fcc:	e50b000c 	str	r0, [fp, #-12]
80023fd0:	e51b300c 	ldr	r3, [fp, #-12]
80023fd4:	e3530000 	cmp	r3, #0
80023fd8:	1a000003 	bne	80023fec <namex+0xdc>
80023fdc:	e51b0008 	ldr	r0, [fp, #-8]
80023fe0:	ebfffd06 	bl	80023400 <iunlockput>
80023fe4:	e3a03000 	mov	r3, #0
80023fe8:	ea000012 	b	80024038 <namex+0x128>
80023fec:	e51b0008 	ldr	r0, [fp, #-8]
80023ff0:	ebfffd02 	bl	80023400 <iunlockput>
80023ff4:	e51b300c 	ldr	r3, [fp, #-12]
80023ff8:	e50b3008 	str	r3, [fp, #-8]
80023ffc:	e51b1018 	ldr	r1, [fp, #-24]	@ 0xffffffe8
80024000:	e51b0010 	ldr	r0, [fp, #-16]
80024004:	ebffff7e 	bl	80023e04 <skipelem>
80024008:	e50b0010 	str	r0, [fp, #-16]
8002400c:	e51b3010 	ldr	r3, [fp, #-16]
80024010:	e3530000 	cmp	r3, #0
80024014:	1affffd3 	bne	80023f68 <namex+0x58>
80024018:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002401c:	e3530000 	cmp	r3, #0
80024020:	0a000003 	beq	80024034 <namex+0x124>
80024024:	e51b0008 	ldr	r0, [fp, #-8]
80024028:	ebfffcb9 	bl	80023314 <iput>
8002402c:	e3a03000 	mov	r3, #0
80024030:	ea000000 	b	80024038 <namex+0x128>
80024034:	e51b3008 	ldr	r3, [fp, #-8]
80024038:	e1a00003 	mov	r0, r3
8002403c:	e24bd004 	sub	sp, fp, #4
80024040:	e8bd8800 	pop	{fp, pc}
80024044:	800afa4c 	.word	0x800afa4c

80024048 <namei>:
80024048:	e92d4800 	push	{fp, lr}
8002404c:	e28db004 	add	fp, sp, #4
80024050:	e24dd018 	sub	sp, sp, #24
80024054:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80024058:	e24b3014 	sub	r3, fp, #20
8002405c:	e1a02003 	mov	r2, r3
80024060:	e3a01000 	mov	r1, #0
80024064:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80024068:	ebffffa8 	bl	80023f10 <namex>
8002406c:	e1a03000 	mov	r3, r0
80024070:	e1a00003 	mov	r0, r3
80024074:	e24bd004 	sub	sp, fp, #4
80024078:	e8bd8800 	pop	{fp, pc}

8002407c <nameiparent>:
8002407c:	e92d4800 	push	{fp, lr}
80024080:	e28db004 	add	fp, sp, #4
80024084:	e24dd008 	sub	sp, sp, #8
80024088:	e50b0008 	str	r0, [fp, #-8]
8002408c:	e50b100c 	str	r1, [fp, #-12]
80024090:	e51b200c 	ldr	r2, [fp, #-12]
80024094:	e3a01001 	mov	r1, #1
80024098:	e51b0008 	ldr	r0, [fp, #-8]
8002409c:	ebffff9b 	bl	80023f10 <namex>
800240a0:	e1a03000 	mov	r3, r0
800240a4:	e1a00003 	mov	r0, r3
800240a8:	e24bd004 	sub	sp, fp, #4
800240ac:	e8bd8800 	pop	{fp, pc}

800240b0 <initlog>:
800240b0:	e92d4800 	push	{fp, lr}
800240b4:	e28db004 	add	fp, sp, #4
800240b8:	e24dd010 	sub	sp, sp, #16
800240bc:	e59f1058 	ldr	r1, [pc, #88]	@ 8002411c <initlog+0x6c>
800240c0:	e59f0058 	ldr	r0, [pc, #88]	@ 80024120 <initlog+0x70>
800240c4:	eb00076f 	bl	80025e88 <initlock>
800240c8:	e24b3014 	sub	r3, fp, #20
800240cc:	e1a01003 	mov	r1, r3
800240d0:	e3a00001 	mov	r0, #1
800240d4:	ebfffa3c 	bl	800229cc <readsb>
800240d8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800240dc:	e51b3008 	ldr	r3, [fp, #-8]
800240e0:	e0423003 	sub	r3, r2, r3
800240e4:	e1a02003 	mov	r2, r3
800240e8:	e59f3030 	ldr	r3, [pc, #48]	@ 80024120 <initlog+0x70>
800240ec:	e5832034 	str	r2, [r3, #52]	@ 0x34
800240f0:	e51b3008 	ldr	r3, [fp, #-8]
800240f4:	e1a02003 	mov	r2, r3
800240f8:	e59f3020 	ldr	r3, [pc, #32]	@ 80024120 <initlog+0x70>
800240fc:	e5832038 	str	r2, [r3, #56]	@ 0x38
80024100:	e59f3018 	ldr	r3, [pc, #24]	@ 80024120 <initlog+0x70>
80024104:	e3a02001 	mov	r2, #1
80024108:	e5832040 	str	r2, [r3, #64]	@ 0x40
8002410c:	eb00009b 	bl	80024380 <recover_from_log>
80024110:	e1a00000 	nop			@ (mov r0, r0)
80024114:	e24bd004 	sub	sp, fp, #4
80024118:	e8bd8800 	pop	{fp, pc}
8002411c:	8002963c 	.word	0x8002963c
80024120:	800ad4b4 	.word	0x800ad4b4

80024124 <install_trans>:
80024124:	e92d4800 	push	{fp, lr}
80024128:	e28db004 	add	fp, sp, #4
8002412c:	e24dd010 	sub	sp, sp, #16
80024130:	e3a03000 	mov	r3, #0
80024134:	e50b3008 	str	r3, [fp, #-8]
80024138:	ea000026 	b	800241d8 <install_trans+0xb4>
8002413c:	e59f30b8 	ldr	r3, [pc, #184]	@ 800241fc <install_trans+0xd8>
80024140:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024144:	e1a00003 	mov	r0, r3
80024148:	e59f30ac 	ldr	r3, [pc, #172]	@ 800241fc <install_trans+0xd8>
8002414c:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80024150:	e51b3008 	ldr	r3, [fp, #-8]
80024154:	e0823003 	add	r3, r2, r3
80024158:	e2833001 	add	r3, r3, #1
8002415c:	e1a01003 	mov	r1, r3
80024160:	ebfff26b 	bl	80020b14 <bread>
80024164:	e50b000c 	str	r0, [fp, #-12]
80024168:	e59f308c 	ldr	r3, [pc, #140]	@ 800241fc <install_trans+0xd8>
8002416c:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024170:	e1a00003 	mov	r0, r3
80024174:	e59f2080 	ldr	r2, [pc, #128]	@ 800241fc <install_trans+0xd8>
80024178:	e51b3008 	ldr	r3, [fp, #-8]
8002417c:	e2833010 	add	r3, r3, #16
80024180:	e1a03103 	lsl	r3, r3, #2
80024184:	e0823003 	add	r3, r2, r3
80024188:	e5933008 	ldr	r3, [r3, #8]
8002418c:	e1a01003 	mov	r1, r3
80024190:	ebfff25f 	bl	80020b14 <bread>
80024194:	e50b0010 	str	r0, [fp, #-16]
80024198:	e51b3010 	ldr	r3, [fp, #-16]
8002419c:	e2830018 	add	r0, r3, #24
800241a0:	e51b300c 	ldr	r3, [fp, #-12]
800241a4:	e2833018 	add	r3, r3, #24
800241a8:	e3a02c02 	mov	r2, #512	@ 0x200
800241ac:	e1a01003 	mov	r1, r3
800241b0:	ebfff004 	bl	800201c8 <memmove>
800241b4:	e51b0010 	ldr	r0, [fp, #-16]
800241b8:	ebfff269 	bl	80020b64 <bwrite>
800241bc:	e51b000c 	ldr	r0, [fp, #-12]
800241c0:	ebfff27d 	bl	80020bbc <brelse>
800241c4:	e51b0010 	ldr	r0, [fp, #-16]
800241c8:	ebfff27b 	bl	80020bbc <brelse>
800241cc:	e51b3008 	ldr	r3, [fp, #-8]
800241d0:	e2833001 	add	r3, r3, #1
800241d4:	e50b3008 	str	r3, [fp, #-8]
800241d8:	e59f301c 	ldr	r3, [pc, #28]	@ 800241fc <install_trans+0xd8>
800241dc:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800241e0:	e51b2008 	ldr	r2, [fp, #-8]
800241e4:	e1520003 	cmp	r2, r3
800241e8:	baffffd3 	blt	8002413c <install_trans+0x18>
800241ec:	e1a00000 	nop			@ (mov r0, r0)
800241f0:	e1a00000 	nop			@ (mov r0, r0)
800241f4:	e24bd004 	sub	sp, fp, #4
800241f8:	e8bd8800 	pop	{fp, pc}
800241fc:	800ad4b4 	.word	0x800ad4b4

80024200 <read_head>:
80024200:	e92d4800 	push	{fp, lr}
80024204:	e28db004 	add	fp, sp, #4
80024208:	e24dd010 	sub	sp, sp, #16
8002420c:	e59f30a4 	ldr	r3, [pc, #164]	@ 800242b8 <read_head+0xb8>
80024210:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80024214:	e1a02003 	mov	r2, r3
80024218:	e59f3098 	ldr	r3, [pc, #152]	@ 800242b8 <read_head+0xb8>
8002421c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80024220:	e1a01003 	mov	r1, r3
80024224:	e1a00002 	mov	r0, r2
80024228:	ebfff239 	bl	80020b14 <bread>
8002422c:	e50b000c 	str	r0, [fp, #-12]
80024230:	e51b300c 	ldr	r3, [fp, #-12]
80024234:	e2833018 	add	r3, r3, #24
80024238:	e50b3010 	str	r3, [fp, #-16]
8002423c:	e51b3010 	ldr	r3, [fp, #-16]
80024240:	e5933000 	ldr	r3, [r3]
80024244:	e59f206c 	ldr	r2, [pc, #108]	@ 800242b8 <read_head+0xb8>
80024248:	e5823044 	str	r3, [r2, #68]	@ 0x44
8002424c:	e3a03000 	mov	r3, #0
80024250:	e50b3008 	str	r3, [fp, #-8]
80024254:	ea00000d 	b	80024290 <read_head+0x90>
80024258:	e51b2010 	ldr	r2, [fp, #-16]
8002425c:	e51b3008 	ldr	r3, [fp, #-8]
80024260:	e1a03103 	lsl	r3, r3, #2
80024264:	e0823003 	add	r3, r2, r3
80024268:	e5932004 	ldr	r2, [r3, #4]
8002426c:	e59f1044 	ldr	r1, [pc, #68]	@ 800242b8 <read_head+0xb8>
80024270:	e51b3008 	ldr	r3, [fp, #-8]
80024274:	e2833010 	add	r3, r3, #16
80024278:	e1a03103 	lsl	r3, r3, #2
8002427c:	e0813003 	add	r3, r1, r3
80024280:	e5832008 	str	r2, [r3, #8]
80024284:	e51b3008 	ldr	r3, [fp, #-8]
80024288:	e2833001 	add	r3, r3, #1
8002428c:	e50b3008 	str	r3, [fp, #-8]
80024290:	e59f3020 	ldr	r3, [pc, #32]	@ 800242b8 <read_head+0xb8>
80024294:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024298:	e51b2008 	ldr	r2, [fp, #-8]
8002429c:	e1520003 	cmp	r2, r3
800242a0:	baffffec 	blt	80024258 <read_head+0x58>
800242a4:	e51b000c 	ldr	r0, [fp, #-12]
800242a8:	ebfff243 	bl	80020bbc <brelse>
800242ac:	e1a00000 	nop			@ (mov r0, r0)
800242b0:	e24bd004 	sub	sp, fp, #4
800242b4:	e8bd8800 	pop	{fp, pc}
800242b8:	800ad4b4 	.word	0x800ad4b4

800242bc <write_head>:
800242bc:	e92d4800 	push	{fp, lr}
800242c0:	e28db004 	add	fp, sp, #4
800242c4:	e24dd010 	sub	sp, sp, #16
800242c8:	e59f30ac 	ldr	r3, [pc, #172]	@ 8002437c <write_head+0xc0>
800242cc:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
800242d0:	e1a02003 	mov	r2, r3
800242d4:	e59f30a0 	ldr	r3, [pc, #160]	@ 8002437c <write_head+0xc0>
800242d8:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
800242dc:	e1a01003 	mov	r1, r3
800242e0:	e1a00002 	mov	r0, r2
800242e4:	ebfff20a 	bl	80020b14 <bread>
800242e8:	e50b000c 	str	r0, [fp, #-12]
800242ec:	e51b300c 	ldr	r3, [fp, #-12]
800242f0:	e2833018 	add	r3, r3, #24
800242f4:	e50b3010 	str	r3, [fp, #-16]
800242f8:	e59f307c 	ldr	r3, [pc, #124]	@ 8002437c <write_head+0xc0>
800242fc:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024300:	e51b3010 	ldr	r3, [fp, #-16]
80024304:	e5832000 	str	r2, [r3]
80024308:	e3a03000 	mov	r3, #0
8002430c:	e50b3008 	str	r3, [fp, #-8]
80024310:	ea00000d 	b	8002434c <write_head+0x90>
80024314:	e59f2060 	ldr	r2, [pc, #96]	@ 8002437c <write_head+0xc0>
80024318:	e51b3008 	ldr	r3, [fp, #-8]
8002431c:	e2833010 	add	r3, r3, #16
80024320:	e1a03103 	lsl	r3, r3, #2
80024324:	e0823003 	add	r3, r2, r3
80024328:	e5932008 	ldr	r2, [r3, #8]
8002432c:	e51b1010 	ldr	r1, [fp, #-16]
80024330:	e51b3008 	ldr	r3, [fp, #-8]
80024334:	e1a03103 	lsl	r3, r3, #2
80024338:	e0813003 	add	r3, r1, r3
8002433c:	e5832004 	str	r2, [r3, #4]
80024340:	e51b3008 	ldr	r3, [fp, #-8]
80024344:	e2833001 	add	r3, r3, #1
80024348:	e50b3008 	str	r3, [fp, #-8]
8002434c:	e59f3028 	ldr	r3, [pc, #40]	@ 8002437c <write_head+0xc0>
80024350:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024354:	e51b2008 	ldr	r2, [fp, #-8]
80024358:	e1520003 	cmp	r2, r3
8002435c:	baffffec 	blt	80024314 <write_head+0x58>
80024360:	e51b000c 	ldr	r0, [fp, #-12]
80024364:	ebfff1fe 	bl	80020b64 <bwrite>
80024368:	e51b000c 	ldr	r0, [fp, #-12]
8002436c:	ebfff212 	bl	80020bbc <brelse>
80024370:	e1a00000 	nop			@ (mov r0, r0)
80024374:	e24bd004 	sub	sp, fp, #4
80024378:	e8bd8800 	pop	{fp, pc}
8002437c:	800ad4b4 	.word	0x800ad4b4

80024380 <recover_from_log>:
80024380:	e92d4800 	push	{fp, lr}
80024384:	e28db004 	add	fp, sp, #4
80024388:	ebffff9c 	bl	80024200 <read_head>
8002438c:	ebffff64 	bl	80024124 <install_trans>
80024390:	e59f3010 	ldr	r3, [pc, #16]	@ 800243a8 <recover_from_log+0x28>
80024394:	e3a02000 	mov	r2, #0
80024398:	e5832044 	str	r2, [r3, #68]	@ 0x44
8002439c:	ebffffc6 	bl	800242bc <write_head>
800243a0:	e1a00000 	nop			@ (mov r0, r0)
800243a4:	e8bd8800 	pop	{fp, pc}
800243a8:	800ad4b4 	.word	0x800ad4b4

800243ac <begin_trans>:
800243ac:	e92d4800 	push	{fp, lr}
800243b0:	e28db004 	add	fp, sp, #4
800243b4:	e59f003c 	ldr	r0, [pc, #60]	@ 800243f8 <begin_trans+0x4c>
800243b8:	eb0006c4 	bl	80025ed0 <acquire>
800243bc:	ea000002 	b	800243cc <begin_trans+0x20>
800243c0:	e59f1030 	ldr	r1, [pc, #48]	@ 800243f8 <begin_trans+0x4c>
800243c4:	e59f002c 	ldr	r0, [pc, #44]	@ 800243f8 <begin_trans+0x4c>
800243c8:	eb0005a1 	bl	80025a54 <sleep>
800243cc:	e59f3024 	ldr	r3, [pc, #36]	@ 800243f8 <begin_trans+0x4c>
800243d0:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800243d4:	e3530000 	cmp	r3, #0
800243d8:	1afffff8 	bne	800243c0 <begin_trans+0x14>
800243dc:	e59f3014 	ldr	r3, [pc, #20]	@ 800243f8 <begin_trans+0x4c>
800243e0:	e3a02001 	mov	r2, #1
800243e4:	e583203c 	str	r2, [r3, #60]	@ 0x3c
800243e8:	e59f0008 	ldr	r0, [pc, #8]	@ 800243f8 <begin_trans+0x4c>
800243ec:	eb0006c2 	bl	80025efc <release>
800243f0:	e1a00000 	nop			@ (mov r0, r0)
800243f4:	e8bd8800 	pop	{fp, pc}
800243f8:	800ad4b4 	.word	0x800ad4b4

800243fc <commit_trans>:
800243fc:	e92d4800 	push	{fp, lr}
80024400:	e28db004 	add	fp, sp, #4
80024404:	e59f304c 	ldr	r3, [pc, #76]	@ 80024458 <commit_trans+0x5c>
80024408:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
8002440c:	e3530000 	cmp	r3, #0
80024410:	da000005 	ble	8002442c <commit_trans+0x30>
80024414:	ebffffa8 	bl	800242bc <write_head>
80024418:	ebffff41 	bl	80024124 <install_trans>
8002441c:	e59f3034 	ldr	r3, [pc, #52]	@ 80024458 <commit_trans+0x5c>
80024420:	e3a02000 	mov	r2, #0
80024424:	e5832044 	str	r2, [r3, #68]	@ 0x44
80024428:	ebffffa3 	bl	800242bc <write_head>
8002442c:	e59f0024 	ldr	r0, [pc, #36]	@ 80024458 <commit_trans+0x5c>
80024430:	eb0006a6 	bl	80025ed0 <acquire>
80024434:	e59f301c 	ldr	r3, [pc, #28]	@ 80024458 <commit_trans+0x5c>
80024438:	e3a02000 	mov	r2, #0
8002443c:	e583203c 	str	r2, [r3, #60]	@ 0x3c
80024440:	e59f0010 	ldr	r0, [pc, #16]	@ 80024458 <commit_trans+0x5c>
80024444:	eb00061c 	bl	80025cbc <wakeup>
80024448:	e59f0008 	ldr	r0, [pc, #8]	@ 80024458 <commit_trans+0x5c>
8002444c:	eb0006aa 	bl	80025efc <release>
80024450:	e1a00000 	nop			@ (mov r0, r0)
80024454:	e8bd8800 	pop	{fp, pc}
80024458:	800ad4b4 	.word	0x800ad4b4

8002445c <log_write>:
8002445c:	e92d4800 	push	{fp, lr}
80024460:	e28db004 	add	fp, sp, #4
80024464:	e24dd010 	sub	sp, sp, #16
80024468:	e50b0010 	str	r0, [fp, #-16]
8002446c:	e59f3164 	ldr	r3, [pc, #356]	@ 800245d8 <log_write+0x17c>
80024470:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024474:	e3530009 	cmp	r3, #9
80024478:	ca000006 	bgt	80024498 <log_write+0x3c>
8002447c:	e59f3154 	ldr	r3, [pc, #340]	@ 800245d8 <log_write+0x17c>
80024480:	e5932044 	ldr	r2, [r3, #68]	@ 0x44
80024484:	e59f314c 	ldr	r3, [pc, #332]	@ 800245d8 <log_write+0x17c>
80024488:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
8002448c:	e2433001 	sub	r3, r3, #1
80024490:	e1520003 	cmp	r2, r3
80024494:	ba000001 	blt	800244a0 <log_write+0x44>
80024498:	e59f013c 	ldr	r0, [pc, #316]	@ 800245dc <log_write+0x180>
8002449c:	ebfff582 	bl	80021aac <panic>
800244a0:	e59f3130 	ldr	r3, [pc, #304]	@ 800245d8 <log_write+0x17c>
800244a4:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
800244a8:	e3530000 	cmp	r3, #0
800244ac:	1a000001 	bne	800244b8 <log_write+0x5c>
800244b0:	e59f0128 	ldr	r0, [pc, #296]	@ 800245e0 <log_write+0x184>
800244b4:	ebfff57c 	bl	80021aac <panic>
800244b8:	e3a03000 	mov	r3, #0
800244bc:	e50b3008 	str	r3, [fp, #-8]
800244c0:	ea00000d 	b	800244fc <log_write+0xa0>
800244c4:	e59f210c 	ldr	r2, [pc, #268]	@ 800245d8 <log_write+0x17c>
800244c8:	e51b3008 	ldr	r3, [fp, #-8]
800244cc:	e2833010 	add	r3, r3, #16
800244d0:	e1a03103 	lsl	r3, r3, #2
800244d4:	e0823003 	add	r3, r2, r3
800244d8:	e5933008 	ldr	r3, [r3, #8]
800244dc:	e1a02003 	mov	r2, r3
800244e0:	e51b3010 	ldr	r3, [fp, #-16]
800244e4:	e5933008 	ldr	r3, [r3, #8]
800244e8:	e1520003 	cmp	r2, r3
800244ec:	0a000008 	beq	80024514 <log_write+0xb8>
800244f0:	e51b3008 	ldr	r3, [fp, #-8]
800244f4:	e2833001 	add	r3, r3, #1
800244f8:	e50b3008 	str	r3, [fp, #-8]
800244fc:	e59f30d4 	ldr	r3, [pc, #212]	@ 800245d8 <log_write+0x17c>
80024500:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024504:	e51b2008 	ldr	r2, [fp, #-8]
80024508:	e1520003 	cmp	r2, r3
8002450c:	baffffec 	blt	800244c4 <log_write+0x68>
80024510:	ea000000 	b	80024518 <log_write+0xbc>
80024514:	e1a00000 	nop			@ (mov r0, r0)
80024518:	e51b3010 	ldr	r3, [fp, #-16]
8002451c:	e5933008 	ldr	r3, [r3, #8]
80024520:	e1a01003 	mov	r1, r3
80024524:	e59f20ac 	ldr	r2, [pc, #172]	@ 800245d8 <log_write+0x17c>
80024528:	e51b3008 	ldr	r3, [fp, #-8]
8002452c:	e2833010 	add	r3, r3, #16
80024530:	e1a03103 	lsl	r3, r3, #2
80024534:	e0823003 	add	r3, r2, r3
80024538:	e5831008 	str	r1, [r3, #8]
8002453c:	e51b3010 	ldr	r3, [fp, #-16]
80024540:	e5930004 	ldr	r0, [r3, #4]
80024544:	e59f308c 	ldr	r3, [pc, #140]	@ 800245d8 <log_write+0x17c>
80024548:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
8002454c:	e51b3008 	ldr	r3, [fp, #-8]
80024550:	e0823003 	add	r3, r2, r3
80024554:	e2833001 	add	r3, r3, #1
80024558:	e1a01003 	mov	r1, r3
8002455c:	ebfff16c 	bl	80020b14 <bread>
80024560:	e50b000c 	str	r0, [fp, #-12]
80024564:	e51b300c 	ldr	r3, [fp, #-12]
80024568:	e2830018 	add	r0, r3, #24
8002456c:	e51b3010 	ldr	r3, [fp, #-16]
80024570:	e2833018 	add	r3, r3, #24
80024574:	e3a02c02 	mov	r2, #512	@ 0x200
80024578:	e1a01003 	mov	r1, r3
8002457c:	ebffef11 	bl	800201c8 <memmove>
80024580:	e51b000c 	ldr	r0, [fp, #-12]
80024584:	ebfff176 	bl	80020b64 <bwrite>
80024588:	e51b000c 	ldr	r0, [fp, #-12]
8002458c:	ebfff18a 	bl	80020bbc <brelse>
80024590:	e59f3040 	ldr	r3, [pc, #64]	@ 800245d8 <log_write+0x17c>
80024594:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80024598:	e51b2008 	ldr	r2, [fp, #-8]
8002459c:	e1520003 	cmp	r2, r3
800245a0:	1a000004 	bne	800245b8 <log_write+0x15c>
800245a4:	e59f302c 	ldr	r3, [pc, #44]	@ 800245d8 <log_write+0x17c>
800245a8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800245ac:	e2833001 	add	r3, r3, #1
800245b0:	e59f2020 	ldr	r2, [pc, #32]	@ 800245d8 <log_write+0x17c>
800245b4:	e5823044 	str	r3, [r2, #68]	@ 0x44
800245b8:	e51b3010 	ldr	r3, [fp, #-16]
800245bc:	e5933000 	ldr	r3, [r3]
800245c0:	e3832004 	orr	r2, r3, #4
800245c4:	e51b3010 	ldr	r3, [fp, #-16]
800245c8:	e5832000 	str	r2, [r3]
800245cc:	e1a00000 	nop			@ (mov r0, r0)
800245d0:	e24bd004 	sub	sp, fp, #4
800245d4:	e8bd8800 	pop	{fp, pc}
800245d8:	800ad4b4 	.word	0x800ad4b4
800245dc:	80029640 	.word	0x80029640
800245e0:	80029658 	.word	0x80029658

800245e4 <kmain>:
800245e4:	e92d4800 	push	{fp, lr}
800245e8:	e28db004 	add	fp, sp, #4
800245ec:	e24dd008 	sub	sp, sp, #8
800245f0:	e59f30a4 	ldr	r3, [pc, #164]	@ 8002469c <kmain+0xb8>
800245f4:	e59f20a4 	ldr	r2, [pc, #164]	@ 800246a0 <kmain+0xbc>
800245f8:	e5832000 	str	r2, [r3]
800245fc:	e59f00a0 	ldr	r0, [pc, #160]	@ 800246a4 <kmain+0xc0>
80024600:	eb001245 	bl	80028f1c <uart_init>
80024604:	e59f309c 	ldr	r3, [pc, #156]	@ 800246a8 <kmain+0xc4>
80024608:	e50b3008 	str	r3, [fp, #-8]
8002460c:	eb000e41 	bl	80027f18 <init_vmm>
80024610:	e59f3094 	ldr	r3, [pc, #148]	@ 800246ac <kmain+0xc8>
80024614:	e2833fff 	add	r3, r3, #1020	@ 0x3fc
80024618:	e2833003 	add	r3, r3, #3
8002461c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80024620:	e3c33003 	bic	r3, r3, #3
80024624:	e51b1008 	ldr	r1, [fp, #-8]
80024628:	e1a00003 	mov	r0, r3
8002462c:	eb000e6d 	bl	80027fe8 <kpt_freerange>
80024630:	e51b3008 	ldr	r3, [fp, #-8]
80024634:	e2833b01 	add	r3, r3, #1024	@ 0x400
80024638:	e59f1070 	ldr	r1, [pc, #112]	@ 800246b0 <kmain+0xcc>
8002463c:	e1a00003 	mov	r0, r3
80024640:	eb000e68 	bl	80027fe8 <kpt_freerange>
80024644:	e3a01302 	mov	r1, #134217728	@ 0x8000000
80024648:	e3a00601 	mov	r0, #1048576	@ 0x100000
8002464c:	eb00112d 	bl	80028b08 <paging_init>
80024650:	ebfff1d8 	bl	80020db8 <kmem_init>
80024654:	e3a01322 	mov	r1, #-2013265920	@ 0x88000000
80024658:	e59f0050 	ldr	r0, [pc, #80]	@ 800246b0 <kmain+0xcc>
8002465c:	ebfff1de 	bl	80020ddc <kmem_init2>
80024660:	eb000d30 	bl	80027b28 <trap_init>
80024664:	e59f0048 	ldr	r0, [pc, #72]	@ 800246b4 <kmain+0xd0>
80024668:	eb001147 	bl	80028b8c <pic_init>
8002466c:	eb00125b 	bl	80028fe0 <uart_enable_rx>
80024670:	ebfff644 	bl	80021f88 <consoleinit>
80024674:	eb0001ca 	bl	80024da4 <pinit>
80024678:	ebfff094 	bl	800208d0 <binit>
8002467c:	ebfff78e 	bl	800224bc <fileinit>
80024680:	ebfff9ba 	bl	80022d70 <iinit>
80024684:	eb00000b 	bl	800246b8 <ideinit>
80024688:	e3a0000a 	mov	r0, #10
8002468c:	eb0011d1 	bl	80028dd8 <timer_init>
80024690:	ebffefb8 	bl	80020578 <sti>
80024694:	eb000243 	bl	80024fa8 <userinit>
80024698:	eb000404 	bl	800256b0 <scheduler>
8002469c:	800ad604 	.word	0x800ad604
800246a0:	800ad524 	.word	0x800ad524
800246a4:	901f1000 	.word	0x901f1000
800246a8:	800f0000 	.word	0x800f0000
800246ac:	800b0000 	.word	0x800b0000
800246b0:	80100000 	.word	0x80100000
800246b4:	90140000 	.word	0x90140000

800246b8 <ideinit>:
800246b8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
800246bc:	e28db000 	add	fp, sp, #0
800246c0:	e59f3028 	ldr	r3, [pc, #40]	@ 800246f0 <ideinit+0x38>
800246c4:	e59f2028 	ldr	r2, [pc, #40]	@ 800246f4 <ideinit+0x3c>
800246c8:	e5832000 	str	r2, [r3]
800246cc:	e59f3024 	ldr	r3, [pc, #36]	@ 800246f8 <ideinit+0x40>
800246d0:	e1a034a3 	lsr	r3, r3, #9
800246d4:	e1a02003 	mov	r2, r3
800246d8:	e59f301c 	ldr	r3, [pc, #28]	@ 800246fc <ideinit+0x44>
800246dc:	e5832000 	str	r2, [r3]
800246e0:	e1a00000 	nop			@ (mov r0, r0)
800246e4:	e28bd000 	add	sp, fp, #0
800246e8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800246ec:	e12fff1e 	bx	lr
800246f0:	800ad60c 	.word	0x800ad60c
800246f4:	8002a0cc 	.word	0x8002a0cc
800246f8:	00080000 	.word	0x00080000
800246fc:	800ad608 	.word	0x800ad608

80024700 <ideintr>:
80024700:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024704:	e28db000 	add	fp, sp, #0
80024708:	e1a00000 	nop			@ (mov r0, r0)
8002470c:	e28bd000 	add	sp, fp, #0
80024710:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024714:	e12fff1e 	bx	lr

80024718 <iderw>:
80024718:	e92d4800 	push	{fp, lr}
8002471c:	e28db004 	add	fp, sp, #4
80024720:	e24dd010 	sub	sp, sp, #16
80024724:	e50b0010 	str	r0, [fp, #-16]
80024728:	e51b3010 	ldr	r3, [fp, #-16]
8002472c:	e5933000 	ldr	r3, [r3]
80024730:	e2033001 	and	r3, r3, #1
80024734:	e3530000 	cmp	r3, #0
80024738:	1a000001 	bne	80024744 <iderw+0x2c>
8002473c:	e59f00ec 	ldr	r0, [pc, #236]	@ 80024830 <iderw+0x118>
80024740:	ebfff4d9 	bl	80021aac <panic>
80024744:	e51b3010 	ldr	r3, [fp, #-16]
80024748:	e5933000 	ldr	r3, [r3]
8002474c:	e2033006 	and	r3, r3, #6
80024750:	e3530002 	cmp	r3, #2
80024754:	1a000001 	bne	80024760 <iderw+0x48>
80024758:	e59f00d4 	ldr	r0, [pc, #212]	@ 80024834 <iderw+0x11c>
8002475c:	ebfff4d2 	bl	80021aac <panic>
80024760:	e51b3010 	ldr	r3, [fp, #-16]
80024764:	e5933004 	ldr	r3, [r3, #4]
80024768:	e3530001 	cmp	r3, #1
8002476c:	0a000001 	beq	80024778 <iderw+0x60>
80024770:	e59f00c0 	ldr	r0, [pc, #192]	@ 80024838 <iderw+0x120>
80024774:	ebfff4cc 	bl	80021aac <panic>
80024778:	e51b3010 	ldr	r3, [fp, #-16]
8002477c:	e5933008 	ldr	r3, [r3, #8]
80024780:	e59f20b4 	ldr	r2, [pc, #180]	@ 8002483c <iderw+0x124>
80024784:	e5922000 	ldr	r2, [r2]
80024788:	e1530002 	cmp	r3, r2
8002478c:	3a000001 	bcc	80024798 <iderw+0x80>
80024790:	e59f00a8 	ldr	r0, [pc, #168]	@ 80024840 <iderw+0x128>
80024794:	ebfff4c4 	bl	80021aac <panic>
80024798:	e59f30a4 	ldr	r3, [pc, #164]	@ 80024844 <iderw+0x12c>
8002479c:	e5932000 	ldr	r2, [r3]
800247a0:	e51b3010 	ldr	r3, [fp, #-16]
800247a4:	e5933008 	ldr	r3, [r3, #8]
800247a8:	e1a03483 	lsl	r3, r3, #9
800247ac:	e0823003 	add	r3, r2, r3
800247b0:	e50b3008 	str	r3, [fp, #-8]
800247b4:	e51b3010 	ldr	r3, [fp, #-16]
800247b8:	e5933000 	ldr	r3, [r3]
800247bc:	e2033004 	and	r3, r3, #4
800247c0:	e3530000 	cmp	r3, #0
800247c4:	0a00000b 	beq	800247f8 <iderw+0xe0>
800247c8:	e51b3010 	ldr	r3, [fp, #-16]
800247cc:	e5933000 	ldr	r3, [r3]
800247d0:	e3c32004 	bic	r2, r3, #4
800247d4:	e51b3010 	ldr	r3, [fp, #-16]
800247d8:	e5832000 	str	r2, [r3]
800247dc:	e51b3010 	ldr	r3, [fp, #-16]
800247e0:	e2833018 	add	r3, r3, #24
800247e4:	e3a02c02 	mov	r2, #512	@ 0x200
800247e8:	e1a01003 	mov	r1, r3
800247ec:	e51b0008 	ldr	r0, [fp, #-8]
800247f0:	ebffee74 	bl	800201c8 <memmove>
800247f4:	ea000005 	b	80024810 <iderw+0xf8>
800247f8:	e51b3010 	ldr	r3, [fp, #-16]
800247fc:	e2833018 	add	r3, r3, #24
80024800:	e3a02c02 	mov	r2, #512	@ 0x200
80024804:	e51b1008 	ldr	r1, [fp, #-8]
80024808:	e1a00003 	mov	r0, r3
8002480c:	ebffee6d 	bl	800201c8 <memmove>
80024810:	e51b3010 	ldr	r3, [fp, #-16]
80024814:	e5933000 	ldr	r3, [r3]
80024818:	e3832002 	orr	r2, r3, #2
8002481c:	e51b3010 	ldr	r3, [fp, #-16]
80024820:	e5832000 	str	r2, [r3]
80024824:	e1a00000 	nop			@ (mov r0, r0)
80024828:	e24bd004 	sub	sp, fp, #4
8002482c:	e8bd8800 	pop	{fp, pc}
80024830:	80029670 	.word	0x80029670
80024834:	80029684 	.word	0x80029684
80024838:	8002969c 	.word	0x8002969c
8002483c:	800ad608 	.word	0x800ad608
80024840:	800296bc 	.word	0x800296bc
80024844:	800ad60c 	.word	0x800ad60c

80024848 <pipealloc>:
80024848:	e92d4800 	push	{fp, lr}
8002484c:	e28db004 	add	fp, sp, #4
80024850:	e24dd010 	sub	sp, sp, #16
80024854:	e50b0010 	str	r0, [fp, #-16]
80024858:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
8002485c:	e3a03000 	mov	r3, #0
80024860:	e50b3008 	str	r3, [fp, #-8]
80024864:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024868:	e3a02000 	mov	r2, #0
8002486c:	e5832000 	str	r2, [r3]
80024870:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024874:	e5932000 	ldr	r2, [r3]
80024878:	e51b3010 	ldr	r3, [fp, #-16]
8002487c:	e5832000 	str	r2, [r3]
80024880:	ebfff716 	bl	800224e0 <filealloc>
80024884:	e1a02000 	mov	r2, r0
80024888:	e51b3010 	ldr	r3, [fp, #-16]
8002488c:	e5832000 	str	r2, [r3]
80024890:	e51b3010 	ldr	r3, [fp, #-16]
80024894:	e5933000 	ldr	r3, [r3]
80024898:	e3530000 	cmp	r3, #0
8002489c:	0a000042 	beq	800249ac <pipealloc+0x164>
800248a0:	ebfff70e 	bl	800224e0 <filealloc>
800248a4:	e1a02000 	mov	r2, r0
800248a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248ac:	e5832000 	str	r2, [r3]
800248b0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800248b4:	e5933000 	ldr	r3, [r3]
800248b8:	e3530000 	cmp	r3, #0
800248bc:	0a00003a 	beq	800249ac <pipealloc+0x164>
800248c0:	e3a00f91 	mov	r0, #580	@ 0x244
800248c4:	ebfff360 	bl	8002164c <get_order>
800248c8:	e1a03000 	mov	r3, r0
800248cc:	e1a00003 	mov	r0, r3
800248d0:	ebfff2d3 	bl	80021424 <kmalloc>
800248d4:	e50b0008 	str	r0, [fp, #-8]
800248d8:	e51b3008 	ldr	r3, [fp, #-8]
800248dc:	e3530000 	cmp	r3, #0
800248e0:	0a000033 	beq	800249b4 <pipealloc+0x16c>
800248e4:	e51b3008 	ldr	r3, [fp, #-8]
800248e8:	e3a02001 	mov	r2, #1
800248ec:	e583223c 	str	r2, [r3, #572]	@ 0x23c
800248f0:	e51b3008 	ldr	r3, [fp, #-8]
800248f4:	e3a02001 	mov	r2, #1
800248f8:	e5832240 	str	r2, [r3, #576]	@ 0x240
800248fc:	e51b3008 	ldr	r3, [fp, #-8]
80024900:	e3a02000 	mov	r2, #0
80024904:	e5832238 	str	r2, [r3, #568]	@ 0x238
80024908:	e51b3008 	ldr	r3, [fp, #-8]
8002490c:	e3a02000 	mov	r2, #0
80024910:	e5832234 	str	r2, [r3, #564]	@ 0x234
80024914:	e51b3008 	ldr	r3, [fp, #-8]
80024918:	e59f110c 	ldr	r1, [pc, #268]	@ 80024a2c <pipealloc+0x1e4>
8002491c:	e1a00003 	mov	r0, r3
80024920:	eb000558 	bl	80025e88 <initlock>
80024924:	e51b3010 	ldr	r3, [fp, #-16]
80024928:	e5933000 	ldr	r3, [r3]
8002492c:	e3a02001 	mov	r2, #1
80024930:	e5c32000 	strb	r2, [r3]
80024934:	e51b3010 	ldr	r3, [fp, #-16]
80024938:	e5933000 	ldr	r3, [r3]
8002493c:	e3a02001 	mov	r2, #1
80024940:	e5c32008 	strb	r2, [r3, #8]
80024944:	e51b3010 	ldr	r3, [fp, #-16]
80024948:	e5933000 	ldr	r3, [r3]
8002494c:	e3a02000 	mov	r2, #0
80024950:	e5c32009 	strb	r2, [r3, #9]
80024954:	e51b3010 	ldr	r3, [fp, #-16]
80024958:	e5933000 	ldr	r3, [r3]
8002495c:	e51b2008 	ldr	r2, [fp, #-8]
80024960:	e583200c 	str	r2, [r3, #12]
80024964:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024968:	e5933000 	ldr	r3, [r3]
8002496c:	e3a02001 	mov	r2, #1
80024970:	e5c32000 	strb	r2, [r3]
80024974:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024978:	e5933000 	ldr	r3, [r3]
8002497c:	e3a02000 	mov	r2, #0
80024980:	e5c32008 	strb	r2, [r3, #8]
80024984:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024988:	e5933000 	ldr	r3, [r3]
8002498c:	e3a02001 	mov	r2, #1
80024990:	e5c32009 	strb	r2, [r3, #9]
80024994:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024998:	e5933000 	ldr	r3, [r3]
8002499c:	e51b2008 	ldr	r2, [fp, #-8]
800249a0:	e583200c 	str	r2, [r3, #12]
800249a4:	e3a03000 	mov	r3, #0
800249a8:	ea00001c 	b	80024a20 <pipealloc+0x1d8>
800249ac:	e1a00000 	nop			@ (mov r0, r0)
800249b0:	ea000000 	b	800249b8 <pipealloc+0x170>
800249b4:	e1a00000 	nop			@ (mov r0, r0)
800249b8:	e51b3008 	ldr	r3, [fp, #-8]
800249bc:	e3530000 	cmp	r3, #0
800249c0:	0a000005 	beq	800249dc <pipealloc+0x194>
800249c4:	e3a00f91 	mov	r0, #580	@ 0x244
800249c8:	ebfff31f 	bl	8002164c <get_order>
800249cc:	e1a03000 	mov	r3, r0
800249d0:	e1a01003 	mov	r1, r3
800249d4:	e51b0008 	ldr	r0, [fp, #-8]
800249d8:	ebfff2e8 	bl	80021580 <kfree>
800249dc:	e51b3010 	ldr	r3, [fp, #-16]
800249e0:	e5933000 	ldr	r3, [r3]
800249e4:	e3530000 	cmp	r3, #0
800249e8:	0a000003 	beq	800249fc <pipealloc+0x1b4>
800249ec:	e51b3010 	ldr	r3, [fp, #-16]
800249f0:	e5933000 	ldr	r3, [r3]
800249f4:	e1a00003 	mov	r0, r3
800249f8:	ebfff6f4 	bl	800225d0 <fileclose>
800249fc:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a00:	e5933000 	ldr	r3, [r3]
80024a04:	e3530000 	cmp	r3, #0
80024a08:	0a000003 	beq	80024a1c <pipealloc+0x1d4>
80024a0c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80024a10:	e5933000 	ldr	r3, [r3]
80024a14:	e1a00003 	mov	r0, r3
80024a18:	ebfff6ec 	bl	800225d0 <fileclose>
80024a1c:	e3e03000 	mvn	r3, #0
80024a20:	e1a00003 	mov	r0, r3
80024a24:	e24bd004 	sub	sp, fp, #4
80024a28:	e8bd8800 	pop	{fp, pc}
80024a2c:	800296d8 	.word	0x800296d8

80024a30 <pipeclose>:
80024a30:	e92d4800 	push	{fp, lr}
80024a34:	e28db004 	add	fp, sp, #4
80024a38:	e24dd008 	sub	sp, sp, #8
80024a3c:	e50b0008 	str	r0, [fp, #-8]
80024a40:	e50b100c 	str	r1, [fp, #-12]
80024a44:	e51b3008 	ldr	r3, [fp, #-8]
80024a48:	e1a00003 	mov	r0, r3
80024a4c:	eb00051f 	bl	80025ed0 <acquire>
80024a50:	e51b300c 	ldr	r3, [fp, #-12]
80024a54:	e3530000 	cmp	r3, #0
80024a58:	0a000007 	beq	80024a7c <pipeclose+0x4c>
80024a5c:	e51b3008 	ldr	r3, [fp, #-8]
80024a60:	e3a02000 	mov	r2, #0
80024a64:	e5832240 	str	r2, [r3, #576]	@ 0x240
80024a68:	e51b3008 	ldr	r3, [fp, #-8]
80024a6c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024a70:	e1a00003 	mov	r0, r3
80024a74:	eb000490 	bl	80025cbc <wakeup>
80024a78:	ea000006 	b	80024a98 <pipeclose+0x68>
80024a7c:	e51b3008 	ldr	r3, [fp, #-8]
80024a80:	e3a02000 	mov	r2, #0
80024a84:	e583223c 	str	r2, [r3, #572]	@ 0x23c
80024a88:	e51b3008 	ldr	r3, [fp, #-8]
80024a8c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024a90:	e1a00003 	mov	r0, r3
80024a94:	eb000488 	bl	80025cbc <wakeup>
80024a98:	e51b3008 	ldr	r3, [fp, #-8]
80024a9c:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024aa0:	e3530000 	cmp	r3, #0
80024aa4:	1a00000d 	bne	80024ae0 <pipeclose+0xb0>
80024aa8:	e51b3008 	ldr	r3, [fp, #-8]
80024aac:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024ab0:	e3530000 	cmp	r3, #0
80024ab4:	1a000009 	bne	80024ae0 <pipeclose+0xb0>
80024ab8:	e51b3008 	ldr	r3, [fp, #-8]
80024abc:	e1a00003 	mov	r0, r3
80024ac0:	eb00050d 	bl	80025efc <release>
80024ac4:	e3a00f91 	mov	r0, #580	@ 0x244
80024ac8:	ebfff2df 	bl	8002164c <get_order>
80024acc:	e1a03000 	mov	r3, r0
80024ad0:	e1a01003 	mov	r1, r3
80024ad4:	e51b0008 	ldr	r0, [fp, #-8]
80024ad8:	ebfff2a8 	bl	80021580 <kfree>
80024adc:	ea000003 	b	80024af0 <pipeclose+0xc0>
80024ae0:	e51b3008 	ldr	r3, [fp, #-8]
80024ae4:	e1a00003 	mov	r0, r3
80024ae8:	eb000503 	bl	80025efc <release>
80024aec:	e1a00000 	nop			@ (mov r0, r0)
80024af0:	e1a00000 	nop			@ (mov r0, r0)
80024af4:	e24bd004 	sub	sp, fp, #4
80024af8:	e8bd8800 	pop	{fp, pc}

80024afc <pipewrite>:
80024afc:	e92d4800 	push	{fp, lr}
80024b00:	e28db004 	add	fp, sp, #4
80024b04:	e24dd018 	sub	sp, sp, #24
80024b08:	e50b0010 	str	r0, [fp, #-16]
80024b0c:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024b10:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024b14:	e51b3010 	ldr	r3, [fp, #-16]
80024b18:	e1a00003 	mov	r0, r3
80024b1c:	eb0004eb 	bl	80025ed0 <acquire>
80024b20:	e3a03000 	mov	r3, #0
80024b24:	e50b3008 	str	r3, [fp, #-8]
80024b28:	ea00002b 	b	80024bdc <pipewrite+0xe0>
80024b2c:	e51b3010 	ldr	r3, [fp, #-16]
80024b30:	e593323c 	ldr	r3, [r3, #572]	@ 0x23c
80024b34:	e3530000 	cmp	r3, #0
80024b38:	1a000004 	bne	80024b50 <pipewrite+0x54>
80024b3c:	e51b3010 	ldr	r3, [fp, #-16]
80024b40:	e1a00003 	mov	r0, r3
80024b44:	eb0004ec 	bl	80025efc <release>
80024b48:	e3e03000 	mvn	r3, #0
80024b4c:	ea00002e 	b	80024c0c <pipewrite+0x110>
80024b50:	e51b3010 	ldr	r3, [fp, #-16]
80024b54:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024b58:	e1a00003 	mov	r0, r3
80024b5c:	eb000456 	bl	80025cbc <wakeup>
80024b60:	e51b3010 	ldr	r3, [fp, #-16]
80024b64:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024b68:	e51b2010 	ldr	r2, [fp, #-16]
80024b6c:	e1a01002 	mov	r1, r2
80024b70:	e1a00003 	mov	r0, r3
80024b74:	eb0003b6 	bl	80025a54 <sleep>
80024b78:	e51b3010 	ldr	r3, [fp, #-16]
80024b7c:	e5932238 	ldr	r2, [r3, #568]	@ 0x238
80024b80:	e51b3010 	ldr	r3, [fp, #-16]
80024b84:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024b88:	e2833c02 	add	r3, r3, #512	@ 0x200
80024b8c:	e1520003 	cmp	r2, r3
80024b90:	0affffe5 	beq	80024b2c <pipewrite+0x30>
80024b94:	e51b3008 	ldr	r3, [fp, #-8]
80024b98:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80024b9c:	e0822003 	add	r2, r2, r3
80024ba0:	e51b3010 	ldr	r3, [fp, #-16]
80024ba4:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024ba8:	e2830001 	add	r0, r3, #1
80024bac:	e51b1010 	ldr	r1, [fp, #-16]
80024bb0:	e5810238 	str	r0, [r1, #568]	@ 0x238
80024bb4:	e1a03b83 	lsl	r3, r3, #23
80024bb8:	e1a03ba3 	lsr	r3, r3, #23
80024bbc:	e5d21000 	ldrb	r1, [r2]
80024bc0:	e51b2010 	ldr	r2, [fp, #-16]
80024bc4:	e0823003 	add	r3, r2, r3
80024bc8:	e1a02001 	mov	r2, r1
80024bcc:	e5c32034 	strb	r2, [r3, #52]	@ 0x34
80024bd0:	e51b3008 	ldr	r3, [fp, #-8]
80024bd4:	e2833001 	add	r3, r3, #1
80024bd8:	e50b3008 	str	r3, [fp, #-8]
80024bdc:	e51b2008 	ldr	r2, [fp, #-8]
80024be0:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024be4:	e1520003 	cmp	r2, r3
80024be8:	baffffe2 	blt	80024b78 <pipewrite+0x7c>
80024bec:	e51b3010 	ldr	r3, [fp, #-16]
80024bf0:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024bf4:	e1a00003 	mov	r0, r3
80024bf8:	eb00042f 	bl	80025cbc <wakeup>
80024bfc:	e51b3010 	ldr	r3, [fp, #-16]
80024c00:	e1a00003 	mov	r0, r3
80024c04:	eb0004bc 	bl	80025efc <release>
80024c08:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024c0c:	e1a00003 	mov	r0, r3
80024c10:	e24bd004 	sub	sp, fp, #4
80024c14:	e8bd8800 	pop	{fp, pc}

80024c18 <piperead>:
80024c18:	e92d4800 	push	{fp, lr}
80024c1c:	e28db004 	add	fp, sp, #4
80024c20:	e24dd018 	sub	sp, sp, #24
80024c24:	e50b0010 	str	r0, [fp, #-16]
80024c28:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80024c2c:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80024c30:	e51b3010 	ldr	r3, [fp, #-16]
80024c34:	e1a00003 	mov	r0, r3
80024c38:	eb0004a4 	bl	80025ed0 <acquire>
80024c3c:	ea00000f 	b	80024c80 <piperead+0x68>
80024c40:	e59f310c 	ldr	r3, [pc, #268]	@ 80024d54 <piperead+0x13c>
80024c44:	e5933000 	ldr	r3, [r3]
80024c48:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80024c4c:	e3530000 	cmp	r3, #0
80024c50:	0a000004 	beq	80024c68 <piperead+0x50>
80024c54:	e51b3010 	ldr	r3, [fp, #-16]
80024c58:	e1a00003 	mov	r0, r3
80024c5c:	eb0004a6 	bl	80025efc <release>
80024c60:	e3e03000 	mvn	r3, #0
80024c64:	ea000037 	b	80024d48 <piperead+0x130>
80024c68:	e51b3010 	ldr	r3, [fp, #-16]
80024c6c:	e2833f8d 	add	r3, r3, #564	@ 0x234
80024c70:	e51b2010 	ldr	r2, [fp, #-16]
80024c74:	e1a01002 	mov	r1, r2
80024c78:	e1a00003 	mov	r0, r3
80024c7c:	eb000374 	bl	80025a54 <sleep>
80024c80:	e51b3010 	ldr	r3, [fp, #-16]
80024c84:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024c88:	e51b3010 	ldr	r3, [fp, #-16]
80024c8c:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024c90:	e1520003 	cmp	r2, r3
80024c94:	1a000003 	bne	80024ca8 <piperead+0x90>
80024c98:	e51b3010 	ldr	r3, [fp, #-16]
80024c9c:	e5933240 	ldr	r3, [r3, #576]	@ 0x240
80024ca0:	e3530000 	cmp	r3, #0
80024ca4:	1affffe5 	bne	80024c40 <piperead+0x28>
80024ca8:	e3a03000 	mov	r3, #0
80024cac:	e50b3008 	str	r3, [fp, #-8]
80024cb0:	ea000016 	b	80024d10 <piperead+0xf8>
80024cb4:	e51b3010 	ldr	r3, [fp, #-16]
80024cb8:	e5932234 	ldr	r2, [r3, #564]	@ 0x234
80024cbc:	e51b3010 	ldr	r3, [fp, #-16]
80024cc0:	e5933238 	ldr	r3, [r3, #568]	@ 0x238
80024cc4:	e1520003 	cmp	r2, r3
80024cc8:	0a000015 	beq	80024d24 <piperead+0x10c>
80024ccc:	e51b3010 	ldr	r3, [fp, #-16]
80024cd0:	e5933234 	ldr	r3, [r3, #564]	@ 0x234
80024cd4:	e2831001 	add	r1, r3, #1
80024cd8:	e51b2010 	ldr	r2, [fp, #-16]
80024cdc:	e5821234 	str	r1, [r2, #564]	@ 0x234
80024ce0:	e1a03b83 	lsl	r3, r3, #23
80024ce4:	e1a03ba3 	lsr	r3, r3, #23
80024ce8:	e51b2008 	ldr	r2, [fp, #-8]
80024cec:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
80024cf0:	e0812002 	add	r2, r1, r2
80024cf4:	e51b1010 	ldr	r1, [fp, #-16]
80024cf8:	e0813003 	add	r3, r1, r3
80024cfc:	e5d33034 	ldrb	r3, [r3, #52]	@ 0x34
80024d00:	e5c23000 	strb	r3, [r2]
80024d04:	e51b3008 	ldr	r3, [fp, #-8]
80024d08:	e2833001 	add	r3, r3, #1
80024d0c:	e50b3008 	str	r3, [fp, #-8]
80024d10:	e51b2008 	ldr	r2, [fp, #-8]
80024d14:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80024d18:	e1520003 	cmp	r2, r3
80024d1c:	baffffe4 	blt	80024cb4 <piperead+0x9c>
80024d20:	ea000000 	b	80024d28 <piperead+0x110>
80024d24:	e1a00000 	nop			@ (mov r0, r0)
80024d28:	e51b3010 	ldr	r3, [fp, #-16]
80024d2c:	e2833f8e 	add	r3, r3, #568	@ 0x238
80024d30:	e1a00003 	mov	r0, r3
80024d34:	eb0003e0 	bl	80025cbc <wakeup>
80024d38:	e51b3010 	ldr	r3, [fp, #-16]
80024d3c:	e1a00003 	mov	r0, r3
80024d40:	eb00046d 	bl	80025efc <release>
80024d44:	e51b3008 	ldr	r3, [fp, #-8]
80024d48:	e1a00003 	mov	r0, r3
80024d4c:	e24bd004 	sub	sp, fp, #4
80024d50:	e8bd8800 	pop	{fp, pc}
80024d54:	800afa4c 	.word	0x800afa4c

80024d58 <rand>:
80024d58:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80024d5c:	e28db000 	add	fp, sp, #0
80024d60:	e59f3034 	ldr	r3, [pc, #52]	@ 80024d9c <rand+0x44>
80024d64:	e5933000 	ldr	r3, [r3]
80024d68:	e59f2030 	ldr	r2, [pc, #48]	@ 80024da0 <rand+0x48>
80024d6c:	e0030392 	mul	r3, r2, r3
80024d70:	e2833a03 	add	r3, r3, #12288	@ 0x3000
80024d74:	e2833039 	add	r3, r3, #57	@ 0x39
80024d78:	e3c33102 	bic	r3, r3, #-2147483648	@ 0x80000000
80024d7c:	e59f2018 	ldr	r2, [pc, #24]	@ 80024d9c <rand+0x44>
80024d80:	e5823000 	str	r3, [r2]
80024d84:	e59f3010 	ldr	r3, [pc, #16]	@ 80024d9c <rand+0x44>
80024d88:	e5933000 	ldr	r3, [r3]
80024d8c:	e1a00003 	mov	r0, r3
80024d90:	e28bd000 	add	sp, fp, #0
80024d94:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80024d98:	e12fff1e 	bx	lr
80024d9c:	800ad610 	.word	0x800ad610
80024da0:	41c64e6d 	.word	0x41c64e6d

80024da4 <pinit>:
80024da4:	e92d4800 	push	{fp, lr}
80024da8:	e28db004 	add	fp, sp, #4
80024dac:	e59f100c 	ldr	r1, [pc, #12]	@ 80024dc0 <pinit+0x1c>
80024db0:	e59f000c 	ldr	r0, [pc, #12]	@ 80024dc4 <pinit+0x20>
80024db4:	eb000433 	bl	80025e88 <initlock>
80024db8:	e1a00000 	nop			@ (mov r0, r0)
80024dbc:	e8bd8800 	pop	{fp, pc}
80024dc0:	800296e0 	.word	0x800296e0
80024dc4:	800ad614 	.word	0x800ad614

80024dc8 <allocproc>:
80024dc8:	e92d4800 	push	{fp, lr}
80024dcc:	e28db004 	add	fp, sp, #4
80024dd0:	e24dd008 	sub	sp, sp, #8
80024dd4:	e59f01a0 	ldr	r0, [pc, #416]	@ 80024f7c <allocproc+0x1b4>
80024dd8:	eb00043c 	bl	80025ed0 <acquire>
80024ddc:	e59f319c 	ldr	r3, [pc, #412]	@ 80024f80 <allocproc+0x1b8>
80024de0:	e50b3008 	str	r3, [fp, #-8]
80024de4:	ea000006 	b	80024e04 <allocproc+0x3c>
80024de8:	e51b3008 	ldr	r3, [fp, #-8]
80024dec:	e5d3300c 	ldrb	r3, [r3, #12]
80024df0:	e3530000 	cmp	r3, #0
80024df4:	0a00000a 	beq	80024e24 <allocproc+0x5c>
80024df8:	e51b3008 	ldr	r3, [fp, #-8]
80024dfc:	e2833090 	add	r3, r3, #144	@ 0x90
80024e00:	e50b3008 	str	r3, [fp, #-8]
80024e04:	e51b3008 	ldr	r3, [fp, #-8]
80024e08:	e59f2174 	ldr	r2, [pc, #372]	@ 80024f84 <allocproc+0x1bc>
80024e0c:	e1530002 	cmp	r3, r2
80024e10:	3afffff4 	bcc	80024de8 <allocproc+0x20>
80024e14:	e59f0160 	ldr	r0, [pc, #352]	@ 80024f7c <allocproc+0x1b4>
80024e18:	eb000437 	bl	80025efc <release>
80024e1c:	e3a03000 	mov	r3, #0
80024e20:	ea000052 	b	80024f70 <allocproc+0x1a8>
80024e24:	e1a00000 	nop			@ (mov r0, r0)
80024e28:	e51b3008 	ldr	r3, [fp, #-8]
80024e2c:	e3a02001 	mov	r2, #1
80024e30:	e5c3200c 	strb	r2, [r3, #12]
80024e34:	e59f314c 	ldr	r3, [pc, #332]	@ 80024f88 <allocproc+0x1c0>
80024e38:	e5933000 	ldr	r3, [r3]
80024e3c:	e2832001 	add	r2, r3, #1
80024e40:	e59f1140 	ldr	r1, [pc, #320]	@ 80024f88 <allocproc+0x1c0>
80024e44:	e5812000 	str	r2, [r1]
80024e48:	e51b2008 	ldr	r2, [fp, #-8]
80024e4c:	e5823010 	str	r3, [r2, #16]
80024e50:	e59f0124 	ldr	r0, [pc, #292]	@ 80024f7c <allocproc+0x1b4>
80024e54:	eb000428 	bl	80025efc <release>
80024e58:	ebfff1f4 	bl	80021630 <alloc_page>
80024e5c:	e1a02000 	mov	r2, r0
80024e60:	e51b3008 	ldr	r3, [fp, #-8]
80024e64:	e5832008 	str	r2, [r3, #8]
80024e68:	e51b3008 	ldr	r3, [fp, #-8]
80024e6c:	e5933008 	ldr	r3, [r3, #8]
80024e70:	e3530000 	cmp	r3, #0
80024e74:	1a000004 	bne	80024e8c <allocproc+0xc4>
80024e78:	e51b3008 	ldr	r3, [fp, #-8]
80024e7c:	e3a02000 	mov	r2, #0
80024e80:	e5c3200c 	strb	r2, [r3, #12]
80024e84:	e3a03000 	mov	r3, #0
80024e88:	ea000038 	b	80024f70 <allocproc+0x1a8>
80024e8c:	e51b3008 	ldr	r3, [fp, #-8]
80024e90:	e5933008 	ldr	r3, [r3, #8]
80024e94:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80024e98:	e50b300c 	str	r3, [fp, #-12]
80024e9c:	e51b300c 	ldr	r3, [fp, #-12]
80024ea0:	e2433048 	sub	r3, r3, #72	@ 0x48
80024ea4:	e50b300c 	str	r3, [fp, #-12]
80024ea8:	e51b3008 	ldr	r3, [fp, #-8]
80024eac:	e51b200c 	ldr	r2, [fp, #-12]
80024eb0:	e5832018 	str	r2, [r3, #24]
80024eb4:	e51b300c 	ldr	r3, [fp, #-12]
80024eb8:	e2433004 	sub	r3, r3, #4
80024ebc:	e50b300c 	str	r3, [fp, #-12]
80024ec0:	e59f20c4 	ldr	r2, [pc, #196]	@ 80024f8c <allocproc+0x1c4>
80024ec4:	e51b300c 	ldr	r3, [fp, #-12]
80024ec8:	e5832000 	str	r2, [r3]
80024ecc:	e51b300c 	ldr	r3, [fp, #-12]
80024ed0:	e2433004 	sub	r3, r3, #4
80024ed4:	e50b300c 	str	r3, [fp, #-12]
80024ed8:	e51b3008 	ldr	r3, [fp, #-8]
80024edc:	e5933008 	ldr	r3, [r3, #8]
80024ee0:	e2832a01 	add	r2, r3, #4096	@ 0x1000
80024ee4:	e51b300c 	ldr	r3, [fp, #-12]
80024ee8:	e5832000 	str	r2, [r3]
80024eec:	e51b300c 	ldr	r3, [fp, #-12]
80024ef0:	e2433028 	sub	r3, r3, #40	@ 0x28
80024ef4:	e50b300c 	str	r3, [fp, #-12]
80024ef8:	e51b3008 	ldr	r3, [fp, #-8]
80024efc:	e51b200c 	ldr	r2, [fp, #-12]
80024f00:	e583201c 	str	r2, [r3, #28]
80024f04:	e51b3008 	ldr	r3, [fp, #-8]
80024f08:	e593301c 	ldr	r3, [r3, #28]
80024f0c:	e3a02028 	mov	r2, #40	@ 0x28
80024f10:	e3a01000 	mov	r1, #0
80024f14:	e1a00003 	mov	r0, r3
80024f18:	ebffec38 	bl	80020000 <memset>
80024f1c:	e59f206c 	ldr	r2, [pc, #108]	@ 80024f90 <allocproc+0x1c8>
80024f20:	e51b3008 	ldr	r3, [fp, #-8]
80024f24:	e593301c 	ldr	r3, [r3, #28]
80024f28:	e2822004 	add	r2, r2, #4
80024f2c:	e5832024 	str	r2, [r3, #36]	@ 0x24
80024f30:	e51b3008 	ldr	r3, [fp, #-8]
80024f34:	e3a02001 	mov	r2, #1
80024f38:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80024f3c:	e51b3008 	ldr	r3, [fp, #-8]
80024f40:	e3a02000 	mov	r2, #0
80024f44:	e5832080 	str	r2, [r3, #128]	@ 0x80
80024f48:	e51b3008 	ldr	r3, [fp, #-8]
80024f4c:	e3a02000 	mov	r2, #0
80024f50:	e5832084 	str	r2, [r3, #132]	@ 0x84
80024f54:	e51b3008 	ldr	r3, [fp, #-8]
80024f58:	e3a02000 	mov	r2, #0
80024f5c:	e5832088 	str	r2, [r3, #136]	@ 0x88
80024f60:	e51b3008 	ldr	r3, [fp, #-8]
80024f64:	e3a02000 	mov	r2, #0
80024f68:	e583208c 	str	r2, [r3, #140]	@ 0x8c
80024f6c:	e51b3008 	ldr	r3, [fp, #-8]
80024f70:	e1a00003 	mov	r0, r3
80024f74:	e24bd004 	sub	sp, fp, #4
80024f78:	e8bd8800 	pop	{fp, pc}
80024f7c:	800ad614 	.word	0x800ad614
80024f80:	800ad648 	.word	0x800ad648
80024f84:	800afa48 	.word	0x800afa48
80024f88:	8002a014 	.word	0x8002a014
80024f8c:	800277d8 	.word	0x800277d8
80024f90:	80025a14 	.word	0x80025a14

80024f94 <error_init>:
80024f94:	e92d4800 	push	{fp, lr}
80024f98:	e28db004 	add	fp, sp, #4
80024f9c:	e59f0000 	ldr	r0, [pc]	@ 80024fa4 <error_init+0x10>
80024fa0:	ebfff2c1 	bl	80021aac <panic>
80024fa4:	800296e8 	.word	0x800296e8

80024fa8 <userinit>:
80024fa8:	e92d4810 	push	{r4, fp, lr}
80024fac:	e28db008 	add	fp, sp, #8
80024fb0:	e24dd00c 	sub	sp, sp, #12
80024fb4:	ebffff83 	bl	80024dc8 <allocproc>
80024fb8:	e50b0010 	str	r0, [fp, #-16]
80024fbc:	e59f2100 	ldr	r2, [pc, #256]	@ 800250c4 <userinit+0x11c>
80024fc0:	e51b3010 	ldr	r3, [fp, #-16]
80024fc4:	e5823000 	str	r3, [r2]
80024fc8:	eb000c1a 	bl	80028038 <kpt_alloc>
80024fcc:	e1a02000 	mov	r2, r0
80024fd0:	e51b3010 	ldr	r3, [fp, #-16]
80024fd4:	e5832004 	str	r2, [r3, #4]
80024fd8:	e51b3010 	ldr	r3, [fp, #-16]
80024fdc:	e5933004 	ldr	r3, [r3, #4]
80024fe0:	e3530000 	cmp	r3, #0
80024fe4:	1a000001 	bne	80024ff0 <userinit+0x48>
80024fe8:	e59f00d8 	ldr	r0, [pc, #216]	@ 800250c8 <userinit+0x120>
80024fec:	ebfff2ae 	bl	80021aac <panic>
80024ff0:	e51b3010 	ldr	r3, [fp, #-16]
80024ff4:	e5933004 	ldr	r3, [r3, #4]
80024ff8:	e59f20cc 	ldr	r2, [pc, #204]	@ 800250cc <userinit+0x124>
80024ffc:	e59f10cc 	ldr	r1, [pc, #204]	@ 800250d0 <userinit+0x128>
80025000:	e1a00003 	mov	r0, r3
80025004:	eb000cc9 	bl	80028330 <inituvm>
80025008:	e51b3010 	ldr	r3, [fp, #-16]
8002500c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80025010:	e5832000 	str	r2, [r3]
80025014:	e51b3010 	ldr	r3, [fp, #-16]
80025018:	e5933018 	ldr	r3, [r3, #24]
8002501c:	e3a02048 	mov	r2, #72	@ 0x48
80025020:	e3a01000 	mov	r1, #0
80025024:	e1a00003 	mov	r0, r3
80025028:	ebffebf4 	bl	80020000 <memset>
8002502c:	e51b3010 	ldr	r3, [fp, #-16]
80025030:	e5933018 	ldr	r3, [r3, #24]
80025034:	e59f2098 	ldr	r2, [pc, #152]	@ 800250d4 <userinit+0x12c>
80025038:	e5832008 	str	r2, [r3, #8]
8002503c:	e51b3010 	ldr	r3, [fp, #-16]
80025040:	e5934018 	ldr	r4, [r3, #24]
80025044:	ebffed59 	bl	800205b0 <spsr_usr>
80025048:	e1a03000 	mov	r3, r0
8002504c:	e584300c 	str	r3, [r4, #12]
80025050:	e51b3010 	ldr	r3, [fp, #-16]
80025054:	e5933018 	ldr	r3, [r3, #24]
80025058:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002505c:	e5832000 	str	r2, [r3]
80025060:	e51b3010 	ldr	r3, [fp, #-16]
80025064:	e5933018 	ldr	r3, [r3, #24]
80025068:	e3a02000 	mov	r2, #0
8002506c:	e5832004 	str	r2, [r3, #4]
80025070:	e51b3010 	ldr	r3, [fp, #-16]
80025074:	e5933018 	ldr	r3, [r3, #24]
80025078:	e3a02000 	mov	r2, #0
8002507c:	e5832044 	str	r2, [r3, #68]	@ 0x44
80025080:	e51b3010 	ldr	r3, [fp, #-16]
80025084:	e283306c 	add	r3, r3, #108	@ 0x6c
80025088:	e3a02010 	mov	r2, #16
8002508c:	e59f1044 	ldr	r1, [pc, #68]	@ 800250d8 <userinit+0x130>
80025090:	e1a00003 	mov	r0, r3
80025094:	ebffeced 	bl	80020450 <safestrcpy>
80025098:	e59f003c 	ldr	r0, [pc, #60]	@ 800250dc <userinit+0x134>
8002509c:	ebfffbe9 	bl	80024048 <namei>
800250a0:	e1a02000 	mov	r2, r0
800250a4:	e51b3010 	ldr	r3, [fp, #-16]
800250a8:	e5832068 	str	r2, [r3, #104]	@ 0x68
800250ac:	e51b3010 	ldr	r3, [fp, #-16]
800250b0:	e3a02003 	mov	r2, #3
800250b4:	e5c3200c 	strb	r2, [r3, #12]
800250b8:	e1a00000 	nop			@ (mov r0, r0)
800250bc:	e24bd008 	sub	sp, fp, #8
800250c0:	e8bd8810 	pop	{r4, fp, pc}
800250c4:	800afa48 	.word	0x800afa48
800250c8:	80029708 	.word	0x80029708
800250cc:	00000034 	.word	0x00000034
800250d0:	8002a098 	.word	0x8002a098
800250d4:	80024f94 	.word	0x80024f94
800250d8:	80029724 	.word	0x80029724
800250dc:	80029730 	.word	0x80029730

800250e0 <growproc>:
800250e0:	e92d4800 	push	{fp, lr}
800250e4:	e28db004 	add	fp, sp, #4
800250e8:	e24dd010 	sub	sp, sp, #16
800250ec:	e50b0010 	str	r0, [fp, #-16]
800250f0:	e59f30d0 	ldr	r3, [pc, #208]	@ 800251c8 <growproc+0xe8>
800250f4:	e5933000 	ldr	r3, [r3]
800250f8:	e5933000 	ldr	r3, [r3]
800250fc:	e50b3008 	str	r3, [fp, #-8]
80025100:	e51b3010 	ldr	r3, [fp, #-16]
80025104:	e3530000 	cmp	r3, #0
80025108:	da00000f 	ble	8002514c <growproc+0x6c>
8002510c:	e59f30b4 	ldr	r3, [pc, #180]	@ 800251c8 <growproc+0xe8>
80025110:	e5933000 	ldr	r3, [r3]
80025114:	e5930004 	ldr	r0, [r3, #4]
80025118:	e51b2010 	ldr	r2, [fp, #-16]
8002511c:	e51b3008 	ldr	r3, [fp, #-8]
80025120:	e0823003 	add	r3, r2, r3
80025124:	e1a02003 	mov	r2, r3
80025128:	e51b1008 	ldr	r1, [fp, #-8]
8002512c:	eb000ced 	bl	800284e8 <allocuvm>
80025130:	e1a03000 	mov	r3, r0
80025134:	e50b3008 	str	r3, [fp, #-8]
80025138:	e51b3008 	ldr	r3, [fp, #-8]
8002513c:	e3530000 	cmp	r3, #0
80025140:	1a000014 	bne	80025198 <growproc+0xb8>
80025144:	e3e03000 	mvn	r3, #0
80025148:	ea00001b 	b	800251bc <growproc+0xdc>
8002514c:	e51b3010 	ldr	r3, [fp, #-16]
80025150:	e3530000 	cmp	r3, #0
80025154:	aa00000f 	bge	80025198 <growproc+0xb8>
80025158:	e59f3068 	ldr	r3, [pc, #104]	@ 800251c8 <growproc+0xe8>
8002515c:	e5933000 	ldr	r3, [r3]
80025160:	e5930004 	ldr	r0, [r3, #4]
80025164:	e51b2010 	ldr	r2, [fp, #-16]
80025168:	e51b3008 	ldr	r3, [fp, #-8]
8002516c:	e0823003 	add	r3, r2, r3
80025170:	e1a02003 	mov	r2, r3
80025174:	e51b1008 	ldr	r1, [fp, #-8]
80025178:	eb000d19 	bl	800285e4 <deallocuvm>
8002517c:	e1a03000 	mov	r3, r0
80025180:	e50b3008 	str	r3, [fp, #-8]
80025184:	e51b3008 	ldr	r3, [fp, #-8]
80025188:	e3530000 	cmp	r3, #0
8002518c:	1a000001 	bne	80025198 <growproc+0xb8>
80025190:	e3e03000 	mvn	r3, #0
80025194:	ea000008 	b	800251bc <growproc+0xdc>
80025198:	e59f3028 	ldr	r3, [pc, #40]	@ 800251c8 <growproc+0xe8>
8002519c:	e5933000 	ldr	r3, [r3]
800251a0:	e51b2008 	ldr	r2, [fp, #-8]
800251a4:	e5832000 	str	r2, [r3]
800251a8:	e59f3018 	ldr	r3, [pc, #24]	@ 800251c8 <growproc+0xe8>
800251ac:	e5933000 	ldr	r3, [r3]
800251b0:	e1a00003 	mov	r0, r3
800251b4:	eb000c46 	bl	800282d4 <switchuvm>
800251b8:	e3a03000 	mov	r3, #0
800251bc:	e1a00003 	mov	r0, r3
800251c0:	e24bd004 	sub	sp, fp, #4
800251c4:	e8bd8800 	pop	{fp, pc}
800251c8:	800afa4c 	.word	0x800afa4c

800251cc <fork>:
800251cc:	e92d4800 	push	{fp, lr}
800251d0:	e28db004 	add	fp, sp, #4
800251d4:	e24dd010 	sub	sp, sp, #16
800251d8:	ebfffefa 	bl	80024dc8 <allocproc>
800251dc:	e50b000c 	str	r0, [fp, #-12]
800251e0:	e51b300c 	ldr	r3, [fp, #-12]
800251e4:	e3530000 	cmp	r3, #0
800251e8:	1a000001 	bne	800251f4 <fork+0x28>
800251ec:	e3e03000 	mvn	r3, #0
800251f0:	ea000070 	b	800253b8 <fork+0x1ec>
800251f4:	e59f31c8 	ldr	r3, [pc, #456]	@ 800253c4 <fork+0x1f8>
800251f8:	e5933000 	ldr	r3, [r3]
800251fc:	e5932004 	ldr	r2, [r3, #4]
80025200:	e59f31bc 	ldr	r3, [pc, #444]	@ 800253c4 <fork+0x1f8>
80025204:	e5933000 	ldr	r3, [r3]
80025208:	e5933000 	ldr	r3, [r3]
8002520c:	e1a01003 	mov	r1, r3
80025210:	e1a00002 	mov	r0, r2
80025214:	eb000d81 	bl	80028820 <copyuvm>
80025218:	e1a02000 	mov	r2, r0
8002521c:	e51b300c 	ldr	r3, [fp, #-12]
80025220:	e5832004 	str	r2, [r3, #4]
80025224:	e51b300c 	ldr	r3, [fp, #-12]
80025228:	e5933004 	ldr	r3, [r3, #4]
8002522c:	e3530000 	cmp	r3, #0
80025230:	1a00000b 	bne	80025264 <fork+0x98>
80025234:	e51b300c 	ldr	r3, [fp, #-12]
80025238:	e5933008 	ldr	r3, [r3, #8]
8002523c:	e1a00003 	mov	r0, r3
80025240:	ebfff0f0 	bl	80021608 <free_page>
80025244:	e51b300c 	ldr	r3, [fp, #-12]
80025248:	e3a02000 	mov	r2, #0
8002524c:	e5832008 	str	r2, [r3, #8]
80025250:	e51b300c 	ldr	r3, [fp, #-12]
80025254:	e3a02000 	mov	r2, #0
80025258:	e5c3200c 	strb	r2, [r3, #12]
8002525c:	e3e03000 	mvn	r3, #0
80025260:	ea000054 	b	800253b8 <fork+0x1ec>
80025264:	e59f3158 	ldr	r3, [pc, #344]	@ 800253c4 <fork+0x1f8>
80025268:	e5933000 	ldr	r3, [r3]
8002526c:	e5932000 	ldr	r2, [r3]
80025270:	e51b300c 	ldr	r3, [fp, #-12]
80025274:	e5832000 	str	r2, [r3]
80025278:	e59f3144 	ldr	r3, [pc, #324]	@ 800253c4 <fork+0x1f8>
8002527c:	e5932000 	ldr	r2, [r3]
80025280:	e51b300c 	ldr	r3, [fp, #-12]
80025284:	e5832014 	str	r2, [r3, #20]
80025288:	e59f3134 	ldr	r3, [pc, #308]	@ 800253c4 <fork+0x1f8>
8002528c:	e5933000 	ldr	r3, [r3]
80025290:	e5932018 	ldr	r2, [r3, #24]
80025294:	e51b300c 	ldr	r3, [fp, #-12]
80025298:	e5933018 	ldr	r3, [r3, #24]
8002529c:	e1a00003 	mov	r0, r3
800252a0:	e1a01002 	mov	r1, r2
800252a4:	e3a03048 	mov	r3, #72	@ 0x48
800252a8:	e1a02003 	mov	r2, r3
800252ac:	ebffec04 	bl	800202c4 <memcpy>
800252b0:	e51b300c 	ldr	r3, [fp, #-12]
800252b4:	e5933018 	ldr	r3, [r3, #24]
800252b8:	e3a02000 	mov	r2, #0
800252bc:	e5832010 	str	r2, [r3, #16]
800252c0:	e3a03000 	mov	r3, #0
800252c4:	e50b3008 	str	r3, [fp, #-8]
800252c8:	ea000015 	b	80025324 <fork+0x158>
800252cc:	e59f30f0 	ldr	r3, [pc, #240]	@ 800253c4 <fork+0x1f8>
800252d0:	e5933000 	ldr	r3, [r3]
800252d4:	e51b2008 	ldr	r2, [fp, #-8]
800252d8:	e282200a 	add	r2, r2, #10
800252dc:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800252e0:	e3530000 	cmp	r3, #0
800252e4:	0a00000b 	beq	80025318 <fork+0x14c>
800252e8:	e59f30d4 	ldr	r3, [pc, #212]	@ 800253c4 <fork+0x1f8>
800252ec:	e5933000 	ldr	r3, [r3]
800252f0:	e51b2008 	ldr	r2, [fp, #-8]
800252f4:	e282200a 	add	r2, r2, #10
800252f8:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800252fc:	e1a00003 	mov	r0, r3
80025300:	ebfff499 	bl	8002256c <filedup>
80025304:	e1a01000 	mov	r1, r0
80025308:	e51b300c 	ldr	r3, [fp, #-12]
8002530c:	e51b2008 	ldr	r2, [fp, #-8]
80025310:	e282200a 	add	r2, r2, #10
80025314:	e7831102 	str	r1, [r3, r2, lsl #2]
80025318:	e51b3008 	ldr	r3, [fp, #-8]
8002531c:	e2833001 	add	r3, r3, #1
80025320:	e50b3008 	str	r3, [fp, #-8]
80025324:	e51b3008 	ldr	r3, [fp, #-8]
80025328:	e353000f 	cmp	r3, #15
8002532c:	daffffe6 	ble	800252cc <fork+0x100>
80025330:	e59f308c 	ldr	r3, [pc, #140]	@ 800253c4 <fork+0x1f8>
80025334:	e5933000 	ldr	r3, [r3]
80025338:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
8002533c:	e1a00003 	mov	r0, r3
80025340:	ebfff75b 	bl	800230b4 <idup>
80025344:	e1a02000 	mov	r2, r0
80025348:	e51b300c 	ldr	r3, [fp, #-12]
8002534c:	e5832068 	str	r2, [r3, #104]	@ 0x68
80025350:	e51b300c 	ldr	r3, [fp, #-12]
80025354:	e5933010 	ldr	r3, [r3, #16]
80025358:	e50b3010 	str	r3, [fp, #-16]
8002535c:	e59f3060 	ldr	r3, [pc, #96]	@ 800253c4 <fork+0x1f8>
80025360:	e5933000 	ldr	r3, [r3]
80025364:	e593207c 	ldr	r2, [r3, #124]	@ 0x7c
80025368:	e51b300c 	ldr	r3, [fp, #-12]
8002536c:	e583207c 	str	r2, [r3, #124]	@ 0x7c
80025370:	e51b300c 	ldr	r3, [fp, #-12]
80025374:	e3a02000 	mov	r2, #0
80025378:	e5832080 	str	r2, [r3, #128]	@ 0x80
8002537c:	e51b300c 	ldr	r3, [fp, #-12]
80025380:	e3a02000 	mov	r2, #0
80025384:	e5832084 	str	r2, [r3, #132]	@ 0x84
80025388:	e51b300c 	ldr	r3, [fp, #-12]
8002538c:	e3a02003 	mov	r2, #3
80025390:	e5c3200c 	strb	r2, [r3, #12]
80025394:	e51b300c 	ldr	r3, [fp, #-12]
80025398:	e283006c 	add	r0, r3, #108	@ 0x6c
8002539c:	e59f3020 	ldr	r3, [pc, #32]	@ 800253c4 <fork+0x1f8>
800253a0:	e5933000 	ldr	r3, [r3]
800253a4:	e283306c 	add	r3, r3, #108	@ 0x6c
800253a8:	e3a02010 	mov	r2, #16
800253ac:	e1a01003 	mov	r1, r3
800253b0:	ebffec26 	bl	80020450 <safestrcpy>
800253b4:	e51b3010 	ldr	r3, [fp, #-16]
800253b8:	e1a00003 	mov	r0, r3
800253bc:	e24bd004 	sub	sp, fp, #4
800253c0:	e8bd8800 	pop	{fp, pc}
800253c4:	800afa4c 	.word	0x800afa4c

800253c8 <exit>:
800253c8:	e92d4800 	push	{fp, lr}
800253cc:	e28db004 	add	fp, sp, #4
800253d0:	e24dd008 	sub	sp, sp, #8
800253d4:	e59f3158 	ldr	r3, [pc, #344]	@ 80025534 <exit+0x16c>
800253d8:	e5932000 	ldr	r2, [r3]
800253dc:	e59f3154 	ldr	r3, [pc, #340]	@ 80025538 <exit+0x170>
800253e0:	e5933000 	ldr	r3, [r3]
800253e4:	e1520003 	cmp	r2, r3
800253e8:	1a000001 	bne	800253f4 <exit+0x2c>
800253ec:	e59f0148 	ldr	r0, [pc, #328]	@ 8002553c <exit+0x174>
800253f0:	ebfff1ad 	bl	80021aac <panic>
800253f4:	e3a03000 	mov	r3, #0
800253f8:	e50b300c 	str	r3, [fp, #-12]
800253fc:	ea000016 	b	8002545c <exit+0x94>
80025400:	e59f312c 	ldr	r3, [pc, #300]	@ 80025534 <exit+0x16c>
80025404:	e5933000 	ldr	r3, [r3]
80025408:	e51b200c 	ldr	r2, [fp, #-12]
8002540c:	e282200a 	add	r2, r2, #10
80025410:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025414:	e3530000 	cmp	r3, #0
80025418:	0a00000c 	beq	80025450 <exit+0x88>
8002541c:	e59f3110 	ldr	r3, [pc, #272]	@ 80025534 <exit+0x16c>
80025420:	e5933000 	ldr	r3, [r3]
80025424:	e51b200c 	ldr	r2, [fp, #-12]
80025428:	e282200a 	add	r2, r2, #10
8002542c:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025430:	e1a00003 	mov	r0, r3
80025434:	ebfff465 	bl	800225d0 <fileclose>
80025438:	e59f30f4 	ldr	r3, [pc, #244]	@ 80025534 <exit+0x16c>
8002543c:	e5933000 	ldr	r3, [r3]
80025440:	e51b200c 	ldr	r2, [fp, #-12]
80025444:	e282200a 	add	r2, r2, #10
80025448:	e3a01000 	mov	r1, #0
8002544c:	e7831102 	str	r1, [r3, r2, lsl #2]
80025450:	e51b300c 	ldr	r3, [fp, #-12]
80025454:	e2833001 	add	r3, r3, #1
80025458:	e50b300c 	str	r3, [fp, #-12]
8002545c:	e51b300c 	ldr	r3, [fp, #-12]
80025460:	e353000f 	cmp	r3, #15
80025464:	daffffe5 	ble	80025400 <exit+0x38>
80025468:	e59f30c4 	ldr	r3, [pc, #196]	@ 80025534 <exit+0x16c>
8002546c:	e5933000 	ldr	r3, [r3]
80025470:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80025474:	e1a00003 	mov	r0, r3
80025478:	ebfff7a5 	bl	80023314 <iput>
8002547c:	e59f30b0 	ldr	r3, [pc, #176]	@ 80025534 <exit+0x16c>
80025480:	e5933000 	ldr	r3, [r3]
80025484:	e3a02000 	mov	r2, #0
80025488:	e5832068 	str	r2, [r3, #104]	@ 0x68
8002548c:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025540 <exit+0x178>
80025490:	eb00028e 	bl	80025ed0 <acquire>
80025494:	e59f3098 	ldr	r3, [pc, #152]	@ 80025534 <exit+0x16c>
80025498:	e5933000 	ldr	r3, [r3]
8002549c:	e5933014 	ldr	r3, [r3, #20]
800254a0:	e1a00003 	mov	r0, r3
800254a4:	eb0001a8 	bl	80025b4c <wakeup1>
800254a8:	e59f3094 	ldr	r3, [pc, #148]	@ 80025544 <exit+0x17c>
800254ac:	e50b3008 	str	r3, [fp, #-8]
800254b0:	ea000014 	b	80025508 <exit+0x140>
800254b4:	e51b3008 	ldr	r3, [fp, #-8]
800254b8:	e5932014 	ldr	r2, [r3, #20]
800254bc:	e59f3070 	ldr	r3, [pc, #112]	@ 80025534 <exit+0x16c>
800254c0:	e5933000 	ldr	r3, [r3]
800254c4:	e1520003 	cmp	r2, r3
800254c8:	1a00000b 	bne	800254fc <exit+0x134>
800254cc:	e59f3064 	ldr	r3, [pc, #100]	@ 80025538 <exit+0x170>
800254d0:	e5932000 	ldr	r2, [r3]
800254d4:	e51b3008 	ldr	r3, [fp, #-8]
800254d8:	e5832014 	str	r2, [r3, #20]
800254dc:	e51b3008 	ldr	r3, [fp, #-8]
800254e0:	e5d3300c 	ldrb	r3, [r3, #12]
800254e4:	e3530005 	cmp	r3, #5
800254e8:	1a000003 	bne	800254fc <exit+0x134>
800254ec:	e59f3044 	ldr	r3, [pc, #68]	@ 80025538 <exit+0x170>
800254f0:	e5933000 	ldr	r3, [r3]
800254f4:	e1a00003 	mov	r0, r3
800254f8:	eb000193 	bl	80025b4c <wakeup1>
800254fc:	e51b3008 	ldr	r3, [fp, #-8]
80025500:	e2833090 	add	r3, r3, #144	@ 0x90
80025504:	e50b3008 	str	r3, [fp, #-8]
80025508:	e51b3008 	ldr	r3, [fp, #-8]
8002550c:	e59f2034 	ldr	r2, [pc, #52]	@ 80025548 <exit+0x180>
80025510:	e1530002 	cmp	r3, r2
80025514:	3affffe6 	bcc	800254b4 <exit+0xec>
80025518:	e59f3014 	ldr	r3, [pc, #20]	@ 80025534 <exit+0x16c>
8002551c:	e5933000 	ldr	r3, [r3]
80025520:	e3a02005 	mov	r2, #5
80025524:	e5c3200c 	strb	r2, [r3, #12]
80025528:	eb0000f1 	bl	800258f4 <sched>
8002552c:	e59f0018 	ldr	r0, [pc, #24]	@ 8002554c <exit+0x184>
80025530:	ebfff15d 	bl	80021aac <panic>
80025534:	800afa4c 	.word	0x800afa4c
80025538:	800afa48 	.word	0x800afa48
8002553c:	80029734 	.word	0x80029734
80025540:	800ad614 	.word	0x800ad614
80025544:	800ad648 	.word	0x800ad648
80025548:	800afa48 	.word	0x800afa48
8002554c:	80029744 	.word	0x80029744

80025550 <wait>:
80025550:	e92d4800 	push	{fp, lr}
80025554:	e28db004 	add	fp, sp, #4
80025558:	e24dd010 	sub	sp, sp, #16
8002555c:	e59f013c 	ldr	r0, [pc, #316]	@ 800256a0 <wait+0x150>
80025560:	eb00025a 	bl	80025ed0 <acquire>
80025564:	e3a03000 	mov	r3, #0
80025568:	e50b300c 	str	r3, [fp, #-12]
8002556c:	e59f3130 	ldr	r3, [pc, #304]	@ 800256a4 <wait+0x154>
80025570:	e50b3008 	str	r3, [fp, #-8]
80025574:	ea000030 	b	8002563c <wait+0xec>
80025578:	e51b3008 	ldr	r3, [fp, #-8]
8002557c:	e5932014 	ldr	r2, [r3, #20]
80025580:	e59f3120 	ldr	r3, [pc, #288]	@ 800256a8 <wait+0x158>
80025584:	e5933000 	ldr	r3, [r3]
80025588:	e1520003 	cmp	r2, r3
8002558c:	1a000026 	bne	8002562c <wait+0xdc>
80025590:	e3a03001 	mov	r3, #1
80025594:	e50b300c 	str	r3, [fp, #-12]
80025598:	e51b3008 	ldr	r3, [fp, #-8]
8002559c:	e5d3300c 	ldrb	r3, [r3, #12]
800255a0:	e3530005 	cmp	r3, #5
800255a4:	1a000021 	bne	80025630 <wait+0xe0>
800255a8:	e51b3008 	ldr	r3, [fp, #-8]
800255ac:	e5933010 	ldr	r3, [r3, #16]
800255b0:	e50b3010 	str	r3, [fp, #-16]
800255b4:	e51b3008 	ldr	r3, [fp, #-8]
800255b8:	e5933008 	ldr	r3, [r3, #8]
800255bc:	e1a00003 	mov	r0, r3
800255c0:	ebfff010 	bl	80021608 <free_page>
800255c4:	e51b3008 	ldr	r3, [fp, #-8]
800255c8:	e3a02000 	mov	r2, #0
800255cc:	e5832008 	str	r2, [r3, #8]
800255d0:	e51b3008 	ldr	r3, [fp, #-8]
800255d4:	e5933004 	ldr	r3, [r3, #4]
800255d8:	e1a00003 	mov	r0, r3
800255dc:	eb000c46 	bl	800286fc <freevm>
800255e0:	e51b3008 	ldr	r3, [fp, #-8]
800255e4:	e3a02000 	mov	r2, #0
800255e8:	e5c3200c 	strb	r2, [r3, #12]
800255ec:	e51b3008 	ldr	r3, [fp, #-8]
800255f0:	e3a02000 	mov	r2, #0
800255f4:	e5832010 	str	r2, [r3, #16]
800255f8:	e51b3008 	ldr	r3, [fp, #-8]
800255fc:	e3a02000 	mov	r2, #0
80025600:	e5832014 	str	r2, [r3, #20]
80025604:	e51b3008 	ldr	r3, [fp, #-8]
80025608:	e3a02000 	mov	r2, #0
8002560c:	e5c3206c 	strb	r2, [r3, #108]	@ 0x6c
80025610:	e51b3008 	ldr	r3, [fp, #-8]
80025614:	e3a02000 	mov	r2, #0
80025618:	e5832024 	str	r2, [r3, #36]	@ 0x24
8002561c:	e59f007c 	ldr	r0, [pc, #124]	@ 800256a0 <wait+0x150>
80025620:	eb000235 	bl	80025efc <release>
80025624:	e51b3010 	ldr	r3, [fp, #-16]
80025628:	ea000019 	b	80025694 <wait+0x144>
8002562c:	e1a00000 	nop			@ (mov r0, r0)
80025630:	e51b3008 	ldr	r3, [fp, #-8]
80025634:	e2833090 	add	r3, r3, #144	@ 0x90
80025638:	e50b3008 	str	r3, [fp, #-8]
8002563c:	e51b3008 	ldr	r3, [fp, #-8]
80025640:	e59f2064 	ldr	r2, [pc, #100]	@ 800256ac <wait+0x15c>
80025644:	e1530002 	cmp	r3, r2
80025648:	3affffca 	bcc	80025578 <wait+0x28>
8002564c:	e51b300c 	ldr	r3, [fp, #-12]
80025650:	e3530000 	cmp	r3, #0
80025654:	0a000004 	beq	8002566c <wait+0x11c>
80025658:	e59f3048 	ldr	r3, [pc, #72]	@ 800256a8 <wait+0x158>
8002565c:	e5933000 	ldr	r3, [r3]
80025660:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80025664:	e3530000 	cmp	r3, #0
80025668:	0a000003 	beq	8002567c <wait+0x12c>
8002566c:	e59f002c 	ldr	r0, [pc, #44]	@ 800256a0 <wait+0x150>
80025670:	eb000221 	bl	80025efc <release>
80025674:	e3e03000 	mvn	r3, #0
80025678:	ea000005 	b	80025694 <wait+0x144>
8002567c:	e59f3024 	ldr	r3, [pc, #36]	@ 800256a8 <wait+0x158>
80025680:	e5933000 	ldr	r3, [r3]
80025684:	e59f1014 	ldr	r1, [pc, #20]	@ 800256a0 <wait+0x150>
80025688:	e1a00003 	mov	r0, r3
8002568c:	eb0000f0 	bl	80025a54 <sleep>
80025690:	eaffffb3 	b	80025564 <wait+0x14>
80025694:	e1a00003 	mov	r0, r3
80025698:	e24bd004 	sub	sp, fp, #4
8002569c:	e8bd8800 	pop	{fp, pc}
800256a0:	800ad614 	.word	0x800ad614
800256a4:	800ad648 	.word	0x800ad648
800256a8:	800afa4c 	.word	0x800afa4c
800256ac:	800afa48 	.word	0x800afa48

800256b0 <scheduler>:
800256b0:	e92d4800 	push	{fp, lr}
800256b4:	e28db004 	add	fp, sp, #4
800256b8:	e24dd020 	sub	sp, sp, #32
800256bc:	ebffebad 	bl	80020578 <sti>
800256c0:	e59f0218 	ldr	r0, [pc, #536]	@ 800258e0 <scheduler+0x230>
800256c4:	eb000201 	bl	80025ed0 <acquire>
800256c8:	e3a03000 	mov	r3, #0
800256cc:	e50b300c 	str	r3, [fp, #-12]
800256d0:	e59f320c 	ldr	r3, [pc, #524]	@ 800258e4 <scheduler+0x234>
800256d4:	e50b3008 	str	r3, [fp, #-8]
800256d8:	ea00001a 	b	80025748 <scheduler+0x98>
800256dc:	e51b3008 	ldr	r3, [fp, #-8]
800256e0:	e5d3300c 	ldrb	r3, [r3, #12]
800256e4:	e3530003 	cmp	r3, #3
800256e8:	1a000013 	bne	8002573c <scheduler+0x8c>
800256ec:	e51b3008 	ldr	r3, [fp, #-8]
800256f0:	e593307c 	ldr	r3, [r3, #124]	@ 0x7c
800256f4:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
800256f8:	e51b3008 	ldr	r3, [fp, #-8]
800256fc:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
80025700:	e3530000 	cmp	r3, #0
80025704:	da000008 	ble	8002572c <scheduler+0x7c>
80025708:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002570c:	e3730107 	cmn	r3, #-1073741823	@ 0xc0000001
80025710:	ca000003 	bgt	80025724 <scheduler+0x74>
80025714:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025718:	e1a03083 	lsl	r3, r3, #1
8002571c:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80025720:	ea000001 	b	8002572c <scheduler+0x7c>
80025724:	e3e03102 	mvn	r3, #-2147483648	@ 0x80000000
80025728:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
8002572c:	e51b200c 	ldr	r2, [fp, #-12]
80025730:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80025734:	e0823003 	add	r3, r2, r3
80025738:	e50b300c 	str	r3, [fp, #-12]
8002573c:	e51b3008 	ldr	r3, [fp, #-8]
80025740:	e2833090 	add	r3, r3, #144	@ 0x90
80025744:	e50b3008 	str	r3, [fp, #-8]
80025748:	e51b3008 	ldr	r3, [fp, #-8]
8002574c:	e59f2194 	ldr	r2, [pc, #404]	@ 800258e8 <scheduler+0x238>
80025750:	e1530002 	cmp	r3, r2
80025754:	3affffe0 	bcc	800256dc <scheduler+0x2c>
80025758:	e51b300c 	ldr	r3, [fp, #-12]
8002575c:	e3530000 	cmp	r3, #0
80025760:	da00005b 	ble	800258d4 <scheduler+0x224>
80025764:	e3a03000 	mov	r3, #0
80025768:	e50b3010 	str	r3, [fp, #-16]
8002576c:	ebfffd79 	bl	80024d58 <rand>
80025770:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80025774:	e51b200c 	ldr	r2, [fp, #-12]
80025778:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
8002577c:	e1a01002 	mov	r1, r2
80025780:	e1a00003 	mov	r0, r3
80025784:	eb000ea1 	bl	80029210 <__aeabi_uidivmod>
80025788:	e1a03001 	mov	r3, r1
8002578c:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80025790:	e3a03000 	mov	r3, #0
80025794:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025798:	e59f3144 	ldr	r3, [pc, #324]	@ 800258e4 <scheduler+0x234>
8002579c:	e50b3008 	str	r3, [fp, #-8]
800257a0:	ea000022 	b	80025830 <scheduler+0x180>
800257a4:	e51b3008 	ldr	r3, [fp, #-8]
800257a8:	e5d3300c 	ldrb	r3, [r3, #12]
800257ac:	e3530003 	cmp	r3, #3
800257b0:	1a00001a 	bne	80025820 <scheduler+0x170>
800257b4:	e51b3008 	ldr	r3, [fp, #-8]
800257b8:	e593307c 	ldr	r3, [r3, #124]	@ 0x7c
800257bc:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800257c0:	e51b3008 	ldr	r3, [fp, #-8]
800257c4:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800257c8:	e3530000 	cmp	r3, #0
800257cc:	da000008 	ble	800257f4 <scheduler+0x144>
800257d0:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800257d4:	e3730107 	cmn	r3, #-1073741823	@ 0xc0000001
800257d8:	ca000003 	bgt	800257ec <scheduler+0x13c>
800257dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800257e0:	e1a03083 	lsl	r3, r3, #1
800257e4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800257e8:	ea000001 	b	800257f4 <scheduler+0x144>
800257ec:	e3e03102 	mvn	r3, #-2147483648	@ 0x80000000
800257f0:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800257f4:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
800257f8:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800257fc:	e0823003 	add	r3, r2, r3
80025800:	e50b3018 	str	r3, [fp, #-24]	@ 0xffffffe8
80025804:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025808:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
8002580c:	e1520003 	cmp	r2, r3
80025810:	2a000003 	bcs	80025824 <scheduler+0x174>
80025814:	e51b3008 	ldr	r3, [fp, #-8]
80025818:	e50b3010 	str	r3, [fp, #-16]
8002581c:	ea000007 	b	80025840 <scheduler+0x190>
80025820:	e1a00000 	nop			@ (mov r0, r0)
80025824:	e51b3008 	ldr	r3, [fp, #-8]
80025828:	e2833090 	add	r3, r3, #144	@ 0x90
8002582c:	e50b3008 	str	r3, [fp, #-8]
80025830:	e51b3008 	ldr	r3, [fp, #-8]
80025834:	e59f20ac 	ldr	r2, [pc, #172]	@ 800258e8 <scheduler+0x238>
80025838:	e1530002 	cmp	r3, r2
8002583c:	3affffd8 	bcc	800257a4 <scheduler+0xf4>
80025840:	e51b3010 	ldr	r3, [fp, #-16]
80025844:	e3530000 	cmp	r3, #0
80025848:	0a000021 	beq	800258d4 <scheduler+0x224>
8002584c:	e59f2098 	ldr	r2, [pc, #152]	@ 800258ec <scheduler+0x23c>
80025850:	e51b3010 	ldr	r3, [fp, #-16]
80025854:	e5823000 	str	r3, [r2]
80025858:	e51b0010 	ldr	r0, [fp, #-16]
8002585c:	eb000a9c 	bl	800282d4 <switchuvm>
80025860:	e51b3010 	ldr	r3, [fp, #-16]
80025864:	e3a02004 	mov	r2, #4
80025868:	e5c3200c 	strb	r2, [r3, #12]
8002586c:	e59f307c 	ldr	r3, [pc, #124]	@ 800258f0 <scheduler+0x240>
80025870:	e5933000 	ldr	r3, [r3]
80025874:	e2832004 	add	r2, r3, #4
80025878:	e59f306c 	ldr	r3, [pc, #108]	@ 800258ec <scheduler+0x23c>
8002587c:	e5933000 	ldr	r3, [r3]
80025880:	e593301c 	ldr	r3, [r3, #28]
80025884:	e1a01003 	mov	r1, r3
80025888:	e1a00002 	mov	r0, r2
8002588c:	eb0001af 	bl	80025f50 <swtch>
80025890:	e51b3010 	ldr	r3, [fp, #-16]
80025894:	e5933084 	ldr	r3, [r3, #132]	@ 0x84
80025898:	e2832001 	add	r2, r3, #1
8002589c:	e51b3010 	ldr	r3, [fp, #-16]
800258a0:	e5832084 	str	r2, [r3, #132]	@ 0x84
800258a4:	e51b3010 	ldr	r3, [fp, #-16]
800258a8:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800258ac:	e3530000 	cmp	r3, #0
800258b0:	da000004 	ble	800258c8 <scheduler+0x218>
800258b4:	e51b3010 	ldr	r3, [fp, #-16]
800258b8:	e5933080 	ldr	r3, [r3, #128]	@ 0x80
800258bc:	e2432001 	sub	r2, r3, #1
800258c0:	e51b3010 	ldr	r3, [fp, #-16]
800258c4:	e5832080 	str	r2, [r3, #128]	@ 0x80
800258c8:	e59f301c 	ldr	r3, [pc, #28]	@ 800258ec <scheduler+0x23c>
800258cc:	e3a02000 	mov	r2, #0
800258d0:	e5832000 	str	r2, [r3]
800258d4:	e59f0004 	ldr	r0, [pc, #4]	@ 800258e0 <scheduler+0x230>
800258d8:	eb000187 	bl	80025efc <release>
800258dc:	eaffff76 	b	800256bc <scheduler+0xc>
800258e0:	800ad614 	.word	0x800ad614
800258e4:	800ad648 	.word	0x800ad648
800258e8:	800afa48 	.word	0x800afa48
800258ec:	800afa4c 	.word	0x800afa4c
800258f0:	800ad604 	.word	0x800ad604

800258f4 <sched>:
800258f4:	e92d4800 	push	{fp, lr}
800258f8:	e28db004 	add	fp, sp, #4
800258fc:	e24dd008 	sub	sp, sp, #8
80025900:	e59f00b4 	ldr	r0, [pc, #180]	@ 800259bc <sched+0xc8>
80025904:	eb000187 	bl	80025f28 <holding>
80025908:	e1a03000 	mov	r3, r0
8002590c:	e3530000 	cmp	r3, #0
80025910:	1a000001 	bne	8002591c <sched+0x28>
80025914:	e59f00a4 	ldr	r0, [pc, #164]	@ 800259c0 <sched+0xcc>
80025918:	ebfff063 	bl	80021aac <panic>
8002591c:	e59f30a0 	ldr	r3, [pc, #160]	@ 800259c4 <sched+0xd0>
80025920:	e5933000 	ldr	r3, [r3]
80025924:	e593300c 	ldr	r3, [r3, #12]
80025928:	e3530001 	cmp	r3, #1
8002592c:	0a000001 	beq	80025938 <sched+0x44>
80025930:	e59f0090 	ldr	r0, [pc, #144]	@ 800259c8 <sched+0xd4>
80025934:	ebfff05c 	bl	80021aac <panic>
80025938:	e59f308c 	ldr	r3, [pc, #140]	@ 800259cc <sched+0xd8>
8002593c:	e5933000 	ldr	r3, [r3]
80025940:	e5d3300c 	ldrb	r3, [r3, #12]
80025944:	e3530004 	cmp	r3, #4
80025948:	1a000001 	bne	80025954 <sched+0x60>
8002594c:	e59f007c 	ldr	r0, [pc, #124]	@ 800259d0 <sched+0xdc>
80025950:	ebfff055 	bl	80021aac <panic>
80025954:	ebffeb25 	bl	800205f0 <int_enabled>
80025958:	e1a03000 	mov	r3, r0
8002595c:	e3530000 	cmp	r3, #0
80025960:	0a000001 	beq	8002596c <sched+0x78>
80025964:	e59f0068 	ldr	r0, [pc, #104]	@ 800259d4 <sched+0xe0>
80025968:	ebfff04f 	bl	80021aac <panic>
8002596c:	e59f3050 	ldr	r3, [pc, #80]	@ 800259c4 <sched+0xd0>
80025970:	e5933000 	ldr	r3, [r3]
80025974:	e5933010 	ldr	r3, [r3, #16]
80025978:	e50b3008 	str	r3, [fp, #-8]
8002597c:	e59f3048 	ldr	r3, [pc, #72]	@ 800259cc <sched+0xd8>
80025980:	e5933000 	ldr	r3, [r3]
80025984:	e283201c 	add	r2, r3, #28
80025988:	e59f3034 	ldr	r3, [pc, #52]	@ 800259c4 <sched+0xd0>
8002598c:	e5933000 	ldr	r3, [r3]
80025990:	e5933004 	ldr	r3, [r3, #4]
80025994:	e1a01003 	mov	r1, r3
80025998:	e1a00002 	mov	r0, r2
8002599c:	eb00016b 	bl	80025f50 <swtch>
800259a0:	e59f301c 	ldr	r3, [pc, #28]	@ 800259c4 <sched+0xd0>
800259a4:	e5933000 	ldr	r3, [r3]
800259a8:	e51b2008 	ldr	r2, [fp, #-8]
800259ac:	e5832010 	str	r2, [r3, #16]
800259b0:	e1a00000 	nop			@ (mov r0, r0)
800259b4:	e24bd004 	sub	sp, fp, #4
800259b8:	e8bd8800 	pop	{fp, pc}
800259bc:	800ad614 	.word	0x800ad614
800259c0:	80029750 	.word	0x80029750
800259c4:	800ad604 	.word	0x800ad604
800259c8:	80029764 	.word	0x80029764
800259cc:	800afa4c 	.word	0x800afa4c
800259d0:	80029770 	.word	0x80029770
800259d4:	80029780 	.word	0x80029780

800259d8 <yield>:
800259d8:	e92d4800 	push	{fp, lr}
800259dc:	e28db004 	add	fp, sp, #4
800259e0:	e59f0024 	ldr	r0, [pc, #36]	@ 80025a0c <yield+0x34>
800259e4:	eb000139 	bl	80025ed0 <acquire>
800259e8:	e59f3020 	ldr	r3, [pc, #32]	@ 80025a10 <yield+0x38>
800259ec:	e5933000 	ldr	r3, [r3]
800259f0:	e3a02003 	mov	r2, #3
800259f4:	e5c3200c 	strb	r2, [r3, #12]
800259f8:	ebffffbd 	bl	800258f4 <sched>
800259fc:	e59f0008 	ldr	r0, [pc, #8]	@ 80025a0c <yield+0x34>
80025a00:	eb00013d 	bl	80025efc <release>
80025a04:	e1a00000 	nop			@ (mov r0, r0)
80025a08:	e8bd8800 	pop	{fp, pc}
80025a0c:	800ad614 	.word	0x800ad614
80025a10:	800afa4c 	.word	0x800afa4c

80025a14 <forkret>:
80025a14:	e92d4800 	push	{fp, lr}
80025a18:	e28db004 	add	fp, sp, #4
80025a1c:	e59f0028 	ldr	r0, [pc, #40]	@ 80025a4c <forkret+0x38>
80025a20:	eb000135 	bl	80025efc <release>
80025a24:	e59f3024 	ldr	r3, [pc, #36]	@ 80025a50 <forkret+0x3c>
80025a28:	e5933000 	ldr	r3, [r3]
80025a2c:	e3530000 	cmp	r3, #0
80025a30:	0a000003 	beq	80025a44 <forkret+0x30>
80025a34:	e59f3014 	ldr	r3, [pc, #20]	@ 80025a50 <forkret+0x3c>
80025a38:	e3a02000 	mov	r2, #0
80025a3c:	e5832000 	str	r2, [r3]
80025a40:	ebfff99a 	bl	800240b0 <initlog>
80025a44:	e1a00000 	nop			@ (mov r0, r0)
80025a48:	e8bd8800 	pop	{fp, pc}
80025a4c:	800ad614 	.word	0x800ad614
80025a50:	8002a018 	.word	0x8002a018

80025a54 <sleep>:
80025a54:	e92d4800 	push	{fp, lr}
80025a58:	e28db004 	add	fp, sp, #4
80025a5c:	e24dd008 	sub	sp, sp, #8
80025a60:	e50b0008 	str	r0, [fp, #-8]
80025a64:	e50b100c 	str	r1, [fp, #-12]
80025a68:	e59f30c8 	ldr	r3, [pc, #200]	@ 80025b38 <sleep+0xe4>
80025a6c:	e5933000 	ldr	r3, [r3]
80025a70:	e3530000 	cmp	r3, #0
80025a74:	1a000001 	bne	80025a80 <sleep+0x2c>
80025a78:	e59f00bc 	ldr	r0, [pc, #188]	@ 80025b3c <sleep+0xe8>
80025a7c:	ebfff00a 	bl	80021aac <panic>
80025a80:	e51b300c 	ldr	r3, [fp, #-12]
80025a84:	e3530000 	cmp	r3, #0
80025a88:	1a000001 	bne	80025a94 <sleep+0x40>
80025a8c:	e59f00ac 	ldr	r0, [pc, #172]	@ 80025b40 <sleep+0xec>
80025a90:	ebfff005 	bl	80021aac <panic>
80025a94:	e51b300c 	ldr	r3, [fp, #-12]
80025a98:	e59f20a4 	ldr	r2, [pc, #164]	@ 80025b44 <sleep+0xf0>
80025a9c:	e1530002 	cmp	r3, r2
80025aa0:	0a000003 	beq	80025ab4 <sleep+0x60>
80025aa4:	e59f0098 	ldr	r0, [pc, #152]	@ 80025b44 <sleep+0xf0>
80025aa8:	eb000108 	bl	80025ed0 <acquire>
80025aac:	e51b000c 	ldr	r0, [fp, #-12]
80025ab0:	eb000111 	bl	80025efc <release>
80025ab4:	e59f307c 	ldr	r3, [pc, #124]	@ 80025b38 <sleep+0xe4>
80025ab8:	e5933000 	ldr	r3, [r3]
80025abc:	e51b2008 	ldr	r2, [fp, #-8]
80025ac0:	e5832020 	str	r2, [r3, #32]
80025ac4:	e59f306c 	ldr	r3, [pc, #108]	@ 80025b38 <sleep+0xe4>
80025ac8:	e5933000 	ldr	r3, [r3]
80025acc:	e3a02002 	mov	r2, #2
80025ad0:	e5c3200c 	strb	r2, [r3, #12]
80025ad4:	e51b3008 	ldr	r3, [fp, #-8]
80025ad8:	e59f2068 	ldr	r2, [pc, #104]	@ 80025b48 <sleep+0xf4>
80025adc:	e1530002 	cmp	r3, r2
80025ae0:	1a000004 	bne	80025af8 <sleep+0xa4>
80025ae4:	e59f304c 	ldr	r3, [pc, #76]	@ 80025b38 <sleep+0xe4>
80025ae8:	e5933000 	ldr	r3, [r3]
80025aec:	e59f2054 	ldr	r2, [pc, #84]	@ 80025b48 <sleep+0xf4>
80025af0:	e5922000 	ldr	r2, [r2]
80025af4:	e5832088 	str	r2, [r3, #136]	@ 0x88
80025af8:	ebffff7d 	bl	800258f4 <sched>
80025afc:	e59f3034 	ldr	r3, [pc, #52]	@ 80025b38 <sleep+0xe4>
80025b00:	e5933000 	ldr	r3, [r3]
80025b04:	e3a02000 	mov	r2, #0
80025b08:	e5832020 	str	r2, [r3, #32]
80025b0c:	e51b300c 	ldr	r3, [fp, #-12]
80025b10:	e59f202c 	ldr	r2, [pc, #44]	@ 80025b44 <sleep+0xf0>
80025b14:	e1530002 	cmp	r3, r2
80025b18:	0a000003 	beq	80025b2c <sleep+0xd8>
80025b1c:	e59f0020 	ldr	r0, [pc, #32]	@ 80025b44 <sleep+0xf0>
80025b20:	eb0000f5 	bl	80025efc <release>
80025b24:	e51b000c 	ldr	r0, [fp, #-12]
80025b28:	eb0000e8 	bl	80025ed0 <acquire>
80025b2c:	e1a00000 	nop			@ (mov r0, r0)
80025b30:	e24bd004 	sub	sp, fp, #4
80025b34:	e8bd8800 	pop	{fp, pc}
80025b38:	800afa4c 	.word	0x800afa4c
80025b3c:	80029794 	.word	0x80029794
80025b40:	8002979c 	.word	0x8002979c
80025b44:	800ad614 	.word	0x800ad614
80025b48:	800afb44 	.word	0x800afb44

80025b4c <wakeup1>:
80025b4c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025b50:	e28db000 	add	fp, sp, #0
80025b54:	e24dd01c 	sub	sp, sp, #28
80025b58:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80025b5c:	e59f314c 	ldr	r3, [pc, #332]	@ 80025cb0 <wakeup1+0x164>
80025b60:	e50b3008 	str	r3, [fp, #-8]
80025b64:	ea000048 	b	80025c8c <wakeup1+0x140>
80025b68:	e51b3008 	ldr	r3, [fp, #-8]
80025b6c:	e5d3300c 	ldrb	r3, [r3, #12]
80025b70:	e3530002 	cmp	r3, #2
80025b74:	1a00003c 	bne	80025c6c <wakeup1+0x120>
80025b78:	e51b3008 	ldr	r3, [fp, #-8]
80025b7c:	e5933020 	ldr	r3, [r3, #32]
80025b80:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
80025b84:	e1520003 	cmp	r2, r3
80025b88:	1a000039 	bne	80025c74 <wakeup1+0x128>
80025b8c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80025b90:	e59f211c 	ldr	r2, [pc, #284]	@ 80025cb4 <wakeup1+0x168>
80025b94:	e1530002 	cmp	r3, r2
80025b98:	1a00002f 	bne	80025c5c <wakeup1+0x110>
80025b9c:	e51b3008 	ldr	r3, [fp, #-8]
80025ba0:	e593208c 	ldr	r2, [r3, #140]	@ 0x8c
80025ba4:	e59f3108 	ldr	r3, [pc, #264]	@ 80025cb4 <wakeup1+0x168>
80025ba8:	e5933000 	ldr	r3, [r3]
80025bac:	e1520003 	cmp	r2, r3
80025bb0:	8a000031 	bhi	80025c7c <wakeup1+0x130>
80025bb4:	e3a03000 	mov	r3, #0
80025bb8:	e50b300c 	str	r3, [fp, #-12]
80025bbc:	e51b3008 	ldr	r3, [fp, #-8]
80025bc0:	e5932088 	ldr	r2, [r3, #136]	@ 0x88
80025bc4:	e59f30e8 	ldr	r3, [pc, #232]	@ 80025cb4 <wakeup1+0x168>
80025bc8:	e5933000 	ldr	r3, [r3]
80025bcc:	e1520003 	cmp	r2, r3
80025bd0:	8a000005 	bhi	80025bec <wakeup1+0xa0>
80025bd4:	e59f30d8 	ldr	r3, [pc, #216]	@ 80025cb4 <wakeup1+0x168>
80025bd8:	e5932000 	ldr	r2, [r3]
80025bdc:	e51b3008 	ldr	r3, [fp, #-8]
80025be0:	e5933088 	ldr	r3, [r3, #136]	@ 0x88
80025be4:	e0423003 	sub	r3, r2, r3
80025be8:	e50b300c 	str	r3, [fp, #-12]
80025bec:	e51b300c 	ldr	r3, [fp, #-12]
80025bf0:	e3530000 	cmp	r3, #0
80025bf4:	0a000018 	beq	80025c5c <wakeup1+0x110>
80025bf8:	e3e03103 	mvn	r3, #-1073741824	@ 0xc0000000
80025bfc:	e50b3010 	str	r3, [fp, #-16]
80025c00:	e51b3010 	ldr	r3, [fp, #-16]
80025c04:	e51b200c 	ldr	r2, [fp, #-12]
80025c08:	e1520003 	cmp	r2, r3
80025c0c:	9a000001 	bls	80025c18 <wakeup1+0xcc>
80025c10:	e51b3010 	ldr	r3, [fp, #-16]
80025c14:	e50b300c 	str	r3, [fp, #-12]
80025c18:	e51b3008 	ldr	r3, [fp, #-8]
80025c1c:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025c20:	e51b100c 	ldr	r1, [fp, #-12]
80025c24:	e3e03102 	mvn	r3, #-2147483648	@ 0x80000000
80025c28:	e0433001 	sub	r3, r3, r1
80025c2c:	e1520003 	cmp	r2, r3
80025c30:	ca000006 	bgt	80025c50 <wakeup1+0x104>
80025c34:	e51b3008 	ldr	r3, [fp, #-8]
80025c38:	e5932080 	ldr	r2, [r3, #128]	@ 0x80
80025c3c:	e51b300c 	ldr	r3, [fp, #-12]
80025c40:	e0822003 	add	r2, r2, r3
80025c44:	e51b3008 	ldr	r3, [fp, #-8]
80025c48:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025c4c:	ea000002 	b	80025c5c <wakeup1+0x110>
80025c50:	e51b3008 	ldr	r3, [fp, #-8]
80025c54:	e3e02102 	mvn	r2, #-2147483648	@ 0x80000000
80025c58:	e5832080 	str	r2, [r3, #128]	@ 0x80
80025c5c:	e51b3008 	ldr	r3, [fp, #-8]
80025c60:	e3a02003 	mov	r2, #3
80025c64:	e5c3200c 	strb	r2, [r3, #12]
80025c68:	ea000004 	b	80025c80 <wakeup1+0x134>
80025c6c:	e1a00000 	nop			@ (mov r0, r0)
80025c70:	ea000002 	b	80025c80 <wakeup1+0x134>
80025c74:	e1a00000 	nop			@ (mov r0, r0)
80025c78:	ea000000 	b	80025c80 <wakeup1+0x134>
80025c7c:	e1a00000 	nop			@ (mov r0, r0)
80025c80:	e51b3008 	ldr	r3, [fp, #-8]
80025c84:	e2833090 	add	r3, r3, #144	@ 0x90
80025c88:	e50b3008 	str	r3, [fp, #-8]
80025c8c:	e51b3008 	ldr	r3, [fp, #-8]
80025c90:	e59f2020 	ldr	r2, [pc, #32]	@ 80025cb8 <wakeup1+0x16c>
80025c94:	e1530002 	cmp	r3, r2
80025c98:	3affffb2 	bcc	80025b68 <wakeup1+0x1c>
80025c9c:	e1a00000 	nop			@ (mov r0, r0)
80025ca0:	e1a00000 	nop			@ (mov r0, r0)
80025ca4:	e28bd000 	add	sp, fp, #0
80025ca8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025cac:	e12fff1e 	bx	lr
80025cb0:	800ad648 	.word	0x800ad648
80025cb4:	800afb44 	.word	0x800afb44
80025cb8:	800afa48 	.word	0x800afa48

80025cbc <wakeup>:
80025cbc:	e92d4800 	push	{fp, lr}
80025cc0:	e28db004 	add	fp, sp, #4
80025cc4:	e24dd008 	sub	sp, sp, #8
80025cc8:	e50b0008 	str	r0, [fp, #-8]
80025ccc:	e59f001c 	ldr	r0, [pc, #28]	@ 80025cf0 <wakeup+0x34>
80025cd0:	eb00007e 	bl	80025ed0 <acquire>
80025cd4:	e51b0008 	ldr	r0, [fp, #-8]
80025cd8:	ebffff9b 	bl	80025b4c <wakeup1>
80025cdc:	e59f000c 	ldr	r0, [pc, #12]	@ 80025cf0 <wakeup+0x34>
80025ce0:	eb000085 	bl	80025efc <release>
80025ce4:	e1a00000 	nop			@ (mov r0, r0)
80025ce8:	e24bd004 	sub	sp, fp, #4
80025cec:	e8bd8800 	pop	{fp, pc}
80025cf0:	800ad614 	.word	0x800ad614

80025cf4 <kill>:
80025cf4:	e92d4800 	push	{fp, lr}
80025cf8:	e28db004 	add	fp, sp, #4
80025cfc:	e24dd010 	sub	sp, sp, #16
80025d00:	e50b0010 	str	r0, [fp, #-16]
80025d04:	e59f008c 	ldr	r0, [pc, #140]	@ 80025d98 <kill+0xa4>
80025d08:	eb000070 	bl	80025ed0 <acquire>
80025d0c:	e59f3088 	ldr	r3, [pc, #136]	@ 80025d9c <kill+0xa8>
80025d10:	e50b3008 	str	r3, [fp, #-8]
80025d14:	ea000015 	b	80025d70 <kill+0x7c>
80025d18:	e51b3008 	ldr	r3, [fp, #-8]
80025d1c:	e5933010 	ldr	r3, [r3, #16]
80025d20:	e51b2010 	ldr	r2, [fp, #-16]
80025d24:	e1520003 	cmp	r2, r3
80025d28:	1a00000d 	bne	80025d64 <kill+0x70>
80025d2c:	e51b3008 	ldr	r3, [fp, #-8]
80025d30:	e3a02001 	mov	r2, #1
80025d34:	e5832024 	str	r2, [r3, #36]	@ 0x24
80025d38:	e51b3008 	ldr	r3, [fp, #-8]
80025d3c:	e5d3300c 	ldrb	r3, [r3, #12]
80025d40:	e3530002 	cmp	r3, #2
80025d44:	1a000002 	bne	80025d54 <kill+0x60>
80025d48:	e51b3008 	ldr	r3, [fp, #-8]
80025d4c:	e3a02003 	mov	r2, #3
80025d50:	e5c3200c 	strb	r2, [r3, #12]
80025d54:	e59f003c 	ldr	r0, [pc, #60]	@ 80025d98 <kill+0xa4>
80025d58:	eb000067 	bl	80025efc <release>
80025d5c:	e3a03000 	mov	r3, #0
80025d60:	ea000009 	b	80025d8c <kill+0x98>
80025d64:	e51b3008 	ldr	r3, [fp, #-8]
80025d68:	e2833090 	add	r3, r3, #144	@ 0x90
80025d6c:	e50b3008 	str	r3, [fp, #-8]
80025d70:	e51b3008 	ldr	r3, [fp, #-8]
80025d74:	e59f2024 	ldr	r2, [pc, #36]	@ 80025da0 <kill+0xac>
80025d78:	e1530002 	cmp	r3, r2
80025d7c:	3affffe5 	bcc	80025d18 <kill+0x24>
80025d80:	e59f0010 	ldr	r0, [pc, #16]	@ 80025d98 <kill+0xa4>
80025d84:	eb00005c 	bl	80025efc <release>
80025d88:	e3e03000 	mvn	r3, #0
80025d8c:	e1a00003 	mov	r0, r3
80025d90:	e24bd004 	sub	sp, fp, #4
80025d94:	e8bd8800 	pop	{fp, pc}
80025d98:	800ad614 	.word	0x800ad614
80025d9c:	800ad648 	.word	0x800ad648
80025da0:	800afa48 	.word	0x800afa48

80025da4 <procdump>:
80025da4:	e92d4800 	push	{fp, lr}
80025da8:	e28db004 	add	fp, sp, #4
80025dac:	e24dd008 	sub	sp, sp, #8
80025db0:	e59f30b8 	ldr	r3, [pc, #184]	@ 80025e70 <procdump+0xcc>
80025db4:	e50b3008 	str	r3, [fp, #-8]
80025db8:	ea000023 	b	80025e4c <procdump+0xa8>
80025dbc:	e51b3008 	ldr	r3, [fp, #-8]
80025dc0:	e5d3300c 	ldrb	r3, [r3, #12]
80025dc4:	e3530000 	cmp	r3, #0
80025dc8:	0a00001b 	beq	80025e3c <procdump+0x98>
80025dcc:	e51b3008 	ldr	r3, [fp, #-8]
80025dd0:	e5d3300c 	ldrb	r3, [r3, #12]
80025dd4:	e3530005 	cmp	r3, #5
80025dd8:	8a00000d 	bhi	80025e14 <procdump+0x70>
80025ddc:	e51b3008 	ldr	r3, [fp, #-8]
80025de0:	e5d3300c 	ldrb	r3, [r3, #12]
80025de4:	e1a02003 	mov	r2, r3
80025de8:	e59f3084 	ldr	r3, [pc, #132]	@ 80025e74 <procdump+0xd0>
80025dec:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025df0:	e3530000 	cmp	r3, #0
80025df4:	0a000006 	beq	80025e14 <procdump+0x70>
80025df8:	e51b3008 	ldr	r3, [fp, #-8]
80025dfc:	e5d3300c 	ldrb	r3, [r3, #12]
80025e00:	e1a02003 	mov	r2, r3
80025e04:	e59f3068 	ldr	r3, [pc, #104]	@ 80025e74 <procdump+0xd0>
80025e08:	e7933102 	ldr	r3, [r3, r2, lsl #2]
80025e0c:	e50b300c 	str	r3, [fp, #-12]
80025e10:	ea000001 	b	80025e1c <procdump+0x78>
80025e14:	e59f305c 	ldr	r3, [pc, #92]	@ 80025e78 <procdump+0xd4>
80025e18:	e50b300c 	str	r3, [fp, #-12]
80025e1c:	e51b3008 	ldr	r3, [fp, #-8]
80025e20:	e5931010 	ldr	r1, [r3, #16]
80025e24:	e51b3008 	ldr	r3, [fp, #-8]
80025e28:	e283306c 	add	r3, r3, #108	@ 0x6c
80025e2c:	e51b200c 	ldr	r2, [fp, #-12]
80025e30:	e59f0044 	ldr	r0, [pc, #68]	@ 80025e7c <procdump+0xd8>
80025e34:	ebffee96 	bl	80021894 <cprintf>
80025e38:	ea000000 	b	80025e40 <procdump+0x9c>
80025e3c:	e1a00000 	nop			@ (mov r0, r0)
80025e40:	e51b3008 	ldr	r3, [fp, #-8]
80025e44:	e2833090 	add	r3, r3, #144	@ 0x90
80025e48:	e50b3008 	str	r3, [fp, #-8]
80025e4c:	e51b3008 	ldr	r3, [fp, #-8]
80025e50:	e59f2028 	ldr	r2, [pc, #40]	@ 80025e80 <procdump+0xdc>
80025e54:	e1530002 	cmp	r3, r2
80025e58:	3affffd7 	bcc	80025dbc <procdump+0x18>
80025e5c:	e59f0020 	ldr	r0, [pc, #32]	@ 80025e84 <procdump+0xe0>
80025e60:	ebffea69 	bl	8002080c <show_callstk>
80025e64:	e1a00000 	nop			@ (mov r0, r0)
80025e68:	e24bd004 	sub	sp, fp, #4
80025e6c:	e8bd8800 	pop	{fp, pc}
80025e70:	800ad648 	.word	0x800ad648
80025e74:	8002a01c 	.word	0x8002a01c
80025e78:	800297b0 	.word	0x800297b0
80025e7c:	800297b4 	.word	0x800297b4
80025e80:	800afa48 	.word	0x800afa48
80025e84:	800297c0 	.word	0x800297c0

80025e88 <initlock>:
80025e88:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025e8c:	e28db000 	add	fp, sp, #0
80025e90:	e24dd00c 	sub	sp, sp, #12
80025e94:	e50b0008 	str	r0, [fp, #-8]
80025e98:	e50b100c 	str	r1, [fp, #-12]
80025e9c:	e51b3008 	ldr	r3, [fp, #-8]
80025ea0:	e51b200c 	ldr	r2, [fp, #-12]
80025ea4:	e5832004 	str	r2, [r3, #4]
80025ea8:	e51b3008 	ldr	r3, [fp, #-8]
80025eac:	e3a02000 	mov	r2, #0
80025eb0:	e5832000 	str	r2, [r3]
80025eb4:	e51b3008 	ldr	r3, [fp, #-8]
80025eb8:	e3a02000 	mov	r2, #0
80025ebc:	e5832008 	str	r2, [r3, #8]
80025ec0:	e1a00000 	nop			@ (mov r0, r0)
80025ec4:	e28bd000 	add	sp, fp, #0
80025ec8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025ecc:	e12fff1e 	bx	lr

80025ed0 <acquire>:
80025ed0:	e92d4800 	push	{fp, lr}
80025ed4:	e28db004 	add	fp, sp, #4
80025ed8:	e24dd008 	sub	sp, sp, #8
80025edc:	e50b0008 	str	r0, [fp, #-8]
80025ee0:	ebffe9d1 	bl	8002062c <pushcli>
80025ee4:	e51b3008 	ldr	r3, [fp, #-8]
80025ee8:	e3a02001 	mov	r2, #1
80025eec:	e5832000 	str	r2, [r3]
80025ef0:	e1a00000 	nop			@ (mov r0, r0)
80025ef4:	e24bd004 	sub	sp, fp, #4
80025ef8:	e8bd8800 	pop	{fp, pc}

80025efc <release>:
80025efc:	e92d4800 	push	{fp, lr}
80025f00:	e28db004 	add	fp, sp, #4
80025f04:	e24dd008 	sub	sp, sp, #8
80025f08:	e50b0008 	str	r0, [fp, #-8]
80025f0c:	e51b3008 	ldr	r3, [fp, #-8]
80025f10:	e3a02000 	mov	r2, #0
80025f14:	e5832000 	str	r2, [r3]
80025f18:	ebffe9d8 	bl	80020680 <popcli>
80025f1c:	e1a00000 	nop			@ (mov r0, r0)
80025f20:	e24bd004 	sub	sp, fp, #4
80025f24:	e8bd8800 	pop	{fp, pc}

80025f28 <holding>:
80025f28:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025f2c:	e28db000 	add	fp, sp, #0
80025f30:	e24dd00c 	sub	sp, sp, #12
80025f34:	e50b0008 	str	r0, [fp, #-8]
80025f38:	e51b3008 	ldr	r3, [fp, #-8]
80025f3c:	e5933000 	ldr	r3, [r3]
80025f40:	e1a00003 	mov	r0, r3
80025f44:	e28bd000 	add	sp, fp, #0
80025f48:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025f4c:	e12fff1e 	bx	lr

80025f50 <swtch>:
80025f50:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025f54:	e580d000 	str	sp, [r0]
80025f58:	e1a0d001 	mov	sp, r1
80025f5c:	e8bd5ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80025f60:	e12fff1e 	bx	lr

80025f64 <fetchint>:
80025f64:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025f68:	e28db000 	add	fp, sp, #0
80025f6c:	e24dd00c 	sub	sp, sp, #12
80025f70:	e50b0008 	str	r0, [fp, #-8]
80025f74:	e50b100c 	str	r1, [fp, #-12]
80025f78:	e59f3058 	ldr	r3, [pc, #88]	@ 80025fd8 <fetchint+0x74>
80025f7c:	e5933000 	ldr	r3, [r3]
80025f80:	e5933000 	ldr	r3, [r3]
80025f84:	e51b2008 	ldr	r2, [fp, #-8]
80025f88:	e1520003 	cmp	r2, r3
80025f8c:	2a000006 	bcs	80025fac <fetchint+0x48>
80025f90:	e51b3008 	ldr	r3, [fp, #-8]
80025f94:	e2832004 	add	r2, r3, #4
80025f98:	e59f3038 	ldr	r3, [pc, #56]	@ 80025fd8 <fetchint+0x74>
80025f9c:	e5933000 	ldr	r3, [r3]
80025fa0:	e5933000 	ldr	r3, [r3]
80025fa4:	e1520003 	cmp	r2, r3
80025fa8:	9a000001 	bls	80025fb4 <fetchint+0x50>
80025fac:	e3e03000 	mvn	r3, #0
80025fb0:	ea000004 	b	80025fc8 <fetchint+0x64>
80025fb4:	e51b3008 	ldr	r3, [fp, #-8]
80025fb8:	e5932000 	ldr	r2, [r3]
80025fbc:	e51b300c 	ldr	r3, [fp, #-12]
80025fc0:	e5832000 	str	r2, [r3]
80025fc4:	e3a03000 	mov	r3, #0
80025fc8:	e1a00003 	mov	r0, r3
80025fcc:	e28bd000 	add	sp, fp, #0
80025fd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80025fd4:	e12fff1e 	bx	lr
80025fd8:	800afa4c 	.word	0x800afa4c

80025fdc <fetchstr>:
80025fdc:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80025fe0:	e28db000 	add	fp, sp, #0
80025fe4:	e24dd014 	sub	sp, sp, #20
80025fe8:	e50b0010 	str	r0, [fp, #-16]
80025fec:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80025ff0:	e59f3098 	ldr	r3, [pc, #152]	@ 80026090 <fetchstr+0xb4>
80025ff4:	e5933000 	ldr	r3, [r3]
80025ff8:	e5933000 	ldr	r3, [r3]
80025ffc:	e51b2010 	ldr	r2, [fp, #-16]
80026000:	e1520003 	cmp	r2, r3
80026004:	3a000001 	bcc	80026010 <fetchstr+0x34>
80026008:	e3e03000 	mvn	r3, #0
8002600c:	ea00001b 	b	80026080 <fetchstr+0xa4>
80026010:	e51b2010 	ldr	r2, [fp, #-16]
80026014:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026018:	e5832000 	str	r2, [r3]
8002601c:	e59f306c 	ldr	r3, [pc, #108]	@ 80026090 <fetchstr+0xb4>
80026020:	e5933000 	ldr	r3, [r3]
80026024:	e5933000 	ldr	r3, [r3]
80026028:	e50b300c 	str	r3, [fp, #-12]
8002602c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026030:	e5933000 	ldr	r3, [r3]
80026034:	e50b3008 	str	r3, [fp, #-8]
80026038:	ea00000b 	b	8002606c <fetchstr+0x90>
8002603c:	e51b3008 	ldr	r3, [fp, #-8]
80026040:	e5d33000 	ldrb	r3, [r3]
80026044:	e3530000 	cmp	r3, #0
80026048:	1a000004 	bne	80026060 <fetchstr+0x84>
8002604c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026050:	e5933000 	ldr	r3, [r3]
80026054:	e51b2008 	ldr	r2, [fp, #-8]
80026058:	e0423003 	sub	r3, r2, r3
8002605c:	ea000007 	b	80026080 <fetchstr+0xa4>
80026060:	e51b3008 	ldr	r3, [fp, #-8]
80026064:	e2833001 	add	r3, r3, #1
80026068:	e50b3008 	str	r3, [fp, #-8]
8002606c:	e51b2008 	ldr	r2, [fp, #-8]
80026070:	e51b300c 	ldr	r3, [fp, #-12]
80026074:	e1520003 	cmp	r2, r3
80026078:	3affffef 	bcc	8002603c <fetchstr+0x60>
8002607c:	e3e03000 	mvn	r3, #0
80026080:	e1a00003 	mov	r0, r3
80026084:	e28bd000 	add	sp, fp, #0
80026088:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
8002608c:	e12fff1e 	bx	lr
80026090:	800afa4c 	.word	0x800afa4c

80026094 <argint>:
80026094:	e92d4800 	push	{fp, lr}
80026098:	e28db004 	add	fp, sp, #4
8002609c:	e24dd008 	sub	sp, sp, #8
800260a0:	e50b0008 	str	r0, [fp, #-8]
800260a4:	e50b100c 	str	r1, [fp, #-12]
800260a8:	e51b3008 	ldr	r3, [fp, #-8]
800260ac:	e3530003 	cmp	r3, #3
800260b0:	da000001 	ble	800260bc <argint+0x28>
800260b4:	e59f003c 	ldr	r0, [pc, #60]	@ 800260f8 <argint+0x64>
800260b8:	ebffee7b 	bl	80021aac <panic>
800260bc:	e59f3038 	ldr	r3, [pc, #56]	@ 800260fc <argint+0x68>
800260c0:	e5933000 	ldr	r3, [r3]
800260c4:	e5933018 	ldr	r3, [r3, #24]
800260c8:	e2832014 	add	r2, r3, #20
800260cc:	e51b3008 	ldr	r3, [fp, #-8]
800260d0:	e1a03103 	lsl	r3, r3, #2
800260d4:	e0823003 	add	r3, r2, r3
800260d8:	e5933000 	ldr	r3, [r3]
800260dc:	e1a02003 	mov	r2, r3
800260e0:	e51b300c 	ldr	r3, [fp, #-12]
800260e4:	e5832000 	str	r2, [r3]
800260e8:	e3a03000 	mov	r3, #0
800260ec:	e1a00003 	mov	r0, r3
800260f0:	e24bd004 	sub	sp, fp, #4
800260f4:	e8bd8800 	pop	{fp, pc}
800260f8:	800297fc 	.word	0x800297fc
800260fc:	800afa4c 	.word	0x800afa4c

80026100 <argptr>:
80026100:	e92d4800 	push	{fp, lr}
80026104:	e28db004 	add	fp, sp, #4
80026108:	e24dd018 	sub	sp, sp, #24
8002610c:	e50b0010 	str	r0, [fp, #-16]
80026110:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80026114:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80026118:	e24b3008 	sub	r3, fp, #8
8002611c:	e1a01003 	mov	r1, r3
80026120:	e51b0010 	ldr	r0, [fp, #-16]
80026124:	ebffffda 	bl	80026094 <argint>
80026128:	e1a03000 	mov	r3, r0
8002612c:	e3530000 	cmp	r3, #0
80026130:	aa000001 	bge	8002613c <argptr+0x3c>
80026134:	e3e03000 	mvn	r3, #0
80026138:	ea000015 	b	80026194 <argptr+0x94>
8002613c:	e59f305c 	ldr	r3, [pc, #92]	@ 800261a0 <argptr+0xa0>
80026140:	e5933000 	ldr	r3, [r3]
80026144:	e5933000 	ldr	r3, [r3]
80026148:	e51b2008 	ldr	r2, [fp, #-8]
8002614c:	e1530002 	cmp	r3, r2
80026150:	9a000008 	bls	80026178 <argptr+0x78>
80026154:	e51b3008 	ldr	r3, [fp, #-8]
80026158:	e1a02003 	mov	r2, r3
8002615c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026160:	e0822003 	add	r2, r2, r3
80026164:	e59f3034 	ldr	r3, [pc, #52]	@ 800261a0 <argptr+0xa0>
80026168:	e5933000 	ldr	r3, [r3]
8002616c:	e5933000 	ldr	r3, [r3]
80026170:	e1520003 	cmp	r2, r3
80026174:	9a000001 	bls	80026180 <argptr+0x80>
80026178:	e3e03000 	mvn	r3, #0
8002617c:	ea000004 	b	80026194 <argptr+0x94>
80026180:	e51b3008 	ldr	r3, [fp, #-8]
80026184:	e1a02003 	mov	r2, r3
80026188:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
8002618c:	e5832000 	str	r2, [r3]
80026190:	e3a03000 	mov	r3, #0
80026194:	e1a00003 	mov	r0, r3
80026198:	e24bd004 	sub	sp, fp, #4
8002619c:	e8bd8800 	pop	{fp, pc}
800261a0:	800afa4c 	.word	0x800afa4c

800261a4 <argstr>:
800261a4:	e92d4800 	push	{fp, lr}
800261a8:	e28db004 	add	fp, sp, #4
800261ac:	e24dd010 	sub	sp, sp, #16
800261b0:	e50b0010 	str	r0, [fp, #-16]
800261b4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800261b8:	e24b3008 	sub	r3, fp, #8
800261bc:	e1a01003 	mov	r1, r3
800261c0:	e51b0010 	ldr	r0, [fp, #-16]
800261c4:	ebffffb2 	bl	80026094 <argint>
800261c8:	e1a03000 	mov	r3, r0
800261cc:	e3530000 	cmp	r3, #0
800261d0:	aa000001 	bge	800261dc <argstr+0x38>
800261d4:	e3e03000 	mvn	r3, #0
800261d8:	ea000004 	b	800261f0 <argstr+0x4c>
800261dc:	e51b3008 	ldr	r3, [fp, #-8]
800261e0:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800261e4:	e1a00003 	mov	r0, r3
800261e8:	ebffff7b 	bl	80025fdc <fetchstr>
800261ec:	e1a03000 	mov	r3, r0
800261f0:	e1a00003 	mov	r0, r3
800261f4:	e24bd004 	sub	sp, fp, #4
800261f8:	e8bd8800 	pop	{fp, pc}

800261fc <syscall>:
800261fc:	e92d4800 	push	{fp, lr}
80026200:	e28db004 	add	fp, sp, #4
80026204:	e24dd008 	sub	sp, sp, #8
80026208:	e59f30b8 	ldr	r3, [pc, #184]	@ 800262c8 <syscall+0xcc>
8002620c:	e5933000 	ldr	r3, [r3]
80026210:	e5933018 	ldr	r3, [r3, #24]
80026214:	e5933010 	ldr	r3, [r3, #16]
80026218:	e50b3008 	str	r3, [fp, #-8]
8002621c:	e51b3008 	ldr	r3, [fp, #-8]
80026220:	e3530000 	cmp	r3, #0
80026224:	da000015 	ble	80026280 <syscall+0x84>
80026228:	e51b3008 	ldr	r3, [fp, #-8]
8002622c:	e3530019 	cmp	r3, #25
80026230:	8a000012 	bhi	80026280 <syscall+0x84>
80026234:	e59f2090 	ldr	r2, [pc, #144]	@ 800262cc <syscall+0xd0>
80026238:	e51b3008 	ldr	r3, [fp, #-8]
8002623c:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026240:	e3530000 	cmp	r3, #0
80026244:	0a00000d 	beq	80026280 <syscall+0x84>
80026248:	e59f207c 	ldr	r2, [pc, #124]	@ 800262cc <syscall+0xd0>
8002624c:	e51b3008 	ldr	r3, [fp, #-8]
80026250:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80026254:	e12fff33 	blx	r3
80026258:	e50b000c 	str	r0, [fp, #-12]
8002625c:	e51b3008 	ldr	r3, [fp, #-8]
80026260:	e3530007 	cmp	r3, #7
80026264:	0a000014 	beq	800262bc <syscall+0xc0>
80026268:	e59f3058 	ldr	r3, [pc, #88]	@ 800262c8 <syscall+0xcc>
8002626c:	e5933000 	ldr	r3, [r3]
80026270:	e5933018 	ldr	r3, [r3, #24]
80026274:	e51b200c 	ldr	r2, [fp, #-12]
80026278:	e5832010 	str	r2, [r3, #16]
8002627c:	ea00000e 	b	800262bc <syscall+0xc0>
80026280:	e59f3040 	ldr	r3, [pc, #64]	@ 800262c8 <syscall+0xcc>
80026284:	e5933000 	ldr	r3, [r3]
80026288:	e5931010 	ldr	r1, [r3, #16]
8002628c:	e59f3034 	ldr	r3, [pc, #52]	@ 800262c8 <syscall+0xcc>
80026290:	e5933000 	ldr	r3, [r3]
80026294:	e283206c 	add	r2, r3, #108	@ 0x6c
80026298:	e51b3008 	ldr	r3, [fp, #-8]
8002629c:	e59f002c 	ldr	r0, [pc, #44]	@ 800262d0 <syscall+0xd4>
800262a0:	ebffed7b 	bl	80021894 <cprintf>
800262a4:	e59f301c 	ldr	r3, [pc, #28]	@ 800262c8 <syscall+0xcc>
800262a8:	e5933000 	ldr	r3, [r3]
800262ac:	e5933018 	ldr	r3, [r3, #24]
800262b0:	e3e02000 	mvn	r2, #0
800262b4:	e5832010 	str	r2, [r3, #16]
800262b8:	e1a00000 	nop			@ (mov r0, r0)
800262bc:	e1a00000 	nop			@ (mov r0, r0)
800262c0:	e24bd004 	sub	sp, fp, #4
800262c4:	e8bd8800 	pop	{fp, pc}
800262c8:	800afa4c 	.word	0x800afa4c
800262cc:	8002a034 	.word	0x8002a034
800262d0:	80029820 	.word	0x80029820

800262d4 <argfd>:
800262d4:	e92d4800 	push	{fp, lr}
800262d8:	e28db004 	add	fp, sp, #4
800262dc:	e24dd018 	sub	sp, sp, #24
800262e0:	e50b0010 	str	r0, [fp, #-16]
800262e4:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800262e8:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800262ec:	e24b300c 	sub	r3, fp, #12
800262f0:	e1a01003 	mov	r1, r3
800262f4:	e51b0010 	ldr	r0, [fp, #-16]
800262f8:	ebffff65 	bl	80026094 <argint>
800262fc:	e1a03000 	mov	r3, r0
80026300:	e3530000 	cmp	r3, #0
80026304:	aa000001 	bge	80026310 <argfd+0x3c>
80026308:	e3e03000 	mvn	r3, #0
8002630c:	ea00001d 	b	80026388 <argfd+0xb4>
80026310:	e51b300c 	ldr	r3, [fp, #-12]
80026314:	e3530000 	cmp	r3, #0
80026318:	ba00000b 	blt	8002634c <argfd+0x78>
8002631c:	e51b300c 	ldr	r3, [fp, #-12]
80026320:	e353000f 	cmp	r3, #15
80026324:	ca000008 	bgt	8002634c <argfd+0x78>
80026328:	e59f3064 	ldr	r3, [pc, #100]	@ 80026394 <argfd+0xc0>
8002632c:	e5933000 	ldr	r3, [r3]
80026330:	e51b200c 	ldr	r2, [fp, #-12]
80026334:	e282200a 	add	r2, r2, #10
80026338:	e7933102 	ldr	r3, [r3, r2, lsl #2]
8002633c:	e50b3008 	str	r3, [fp, #-8]
80026340:	e51b3008 	ldr	r3, [fp, #-8]
80026344:	e3530000 	cmp	r3, #0
80026348:	1a000001 	bne	80026354 <argfd+0x80>
8002634c:	e3e03000 	mvn	r3, #0
80026350:	ea00000c 	b	80026388 <argfd+0xb4>
80026354:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026358:	e3530000 	cmp	r3, #0
8002635c:	0a000002 	beq	8002636c <argfd+0x98>
80026360:	e51b200c 	ldr	r2, [fp, #-12]
80026364:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026368:	e5832000 	str	r2, [r3]
8002636c:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026370:	e3530000 	cmp	r3, #0
80026374:	0a000002 	beq	80026384 <argfd+0xb0>
80026378:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002637c:	e51b2008 	ldr	r2, [fp, #-8]
80026380:	e5832000 	str	r2, [r3]
80026384:	e3a03000 	mov	r3, #0
80026388:	e1a00003 	mov	r0, r3
8002638c:	e24bd004 	sub	sp, fp, #4
80026390:	e8bd8800 	pop	{fp, pc}
80026394:	800afa4c 	.word	0x800afa4c

80026398 <fdalloc>:
80026398:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002639c:	e28db000 	add	fp, sp, #0
800263a0:	e24dd014 	sub	sp, sp, #20
800263a4:	e50b0010 	str	r0, [fp, #-16]
800263a8:	e3a03000 	mov	r3, #0
800263ac:	e50b3008 	str	r3, [fp, #-8]
800263b0:	ea000011 	b	800263fc <fdalloc+0x64>
800263b4:	e59f3060 	ldr	r3, [pc, #96]	@ 8002641c <fdalloc+0x84>
800263b8:	e5933000 	ldr	r3, [r3]
800263bc:	e51b2008 	ldr	r2, [fp, #-8]
800263c0:	e282200a 	add	r2, r2, #10
800263c4:	e7933102 	ldr	r3, [r3, r2, lsl #2]
800263c8:	e3530000 	cmp	r3, #0
800263cc:	1a000007 	bne	800263f0 <fdalloc+0x58>
800263d0:	e59f3044 	ldr	r3, [pc, #68]	@ 8002641c <fdalloc+0x84>
800263d4:	e5933000 	ldr	r3, [r3]
800263d8:	e51b2008 	ldr	r2, [fp, #-8]
800263dc:	e282200a 	add	r2, r2, #10
800263e0:	e51b1010 	ldr	r1, [fp, #-16]
800263e4:	e7831102 	str	r1, [r3, r2, lsl #2]
800263e8:	e51b3008 	ldr	r3, [fp, #-8]
800263ec:	ea000006 	b	8002640c <fdalloc+0x74>
800263f0:	e51b3008 	ldr	r3, [fp, #-8]
800263f4:	e2833001 	add	r3, r3, #1
800263f8:	e50b3008 	str	r3, [fp, #-8]
800263fc:	e51b3008 	ldr	r3, [fp, #-8]
80026400:	e353000f 	cmp	r3, #15
80026404:	daffffea 	ble	800263b4 <fdalloc+0x1c>
80026408:	e3e03000 	mvn	r3, #0
8002640c:	e1a00003 	mov	r0, r3
80026410:	e28bd000 	add	sp, fp, #0
80026414:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80026418:	e12fff1e 	bx	lr
8002641c:	800afa4c 	.word	0x800afa4c

80026420 <sys_dup>:
80026420:	e92d4800 	push	{fp, lr}
80026424:	e28db004 	add	fp, sp, #4
80026428:	e24dd008 	sub	sp, sp, #8
8002642c:	e24b300c 	sub	r3, fp, #12
80026430:	e1a02003 	mov	r2, r3
80026434:	e3a01000 	mov	r1, #0
80026438:	e3a00000 	mov	r0, #0
8002643c:	ebffffa4 	bl	800262d4 <argfd>
80026440:	e1a03000 	mov	r3, r0
80026444:	e3530000 	cmp	r3, #0
80026448:	aa000001 	bge	80026454 <sys_dup+0x34>
8002644c:	e3e03000 	mvn	r3, #0
80026450:	ea00000c 	b	80026488 <sys_dup+0x68>
80026454:	e51b300c 	ldr	r3, [fp, #-12]
80026458:	e1a00003 	mov	r0, r3
8002645c:	ebffffcd 	bl	80026398 <fdalloc>
80026460:	e50b0008 	str	r0, [fp, #-8]
80026464:	e51b3008 	ldr	r3, [fp, #-8]
80026468:	e3530000 	cmp	r3, #0
8002646c:	aa000001 	bge	80026478 <sys_dup+0x58>
80026470:	e3e03000 	mvn	r3, #0
80026474:	ea000003 	b	80026488 <sys_dup+0x68>
80026478:	e51b300c 	ldr	r3, [fp, #-12]
8002647c:	e1a00003 	mov	r0, r3
80026480:	ebfff039 	bl	8002256c <filedup>
80026484:	e51b3008 	ldr	r3, [fp, #-8]
80026488:	e1a00003 	mov	r0, r3
8002648c:	e24bd004 	sub	sp, fp, #4
80026490:	e8bd8800 	pop	{fp, pc}

80026494 <sys_read>:
80026494:	e92d4800 	push	{fp, lr}
80026498:	e28db004 	add	fp, sp, #4
8002649c:	e24dd010 	sub	sp, sp, #16
800264a0:	e24b3008 	sub	r3, fp, #8
800264a4:	e1a02003 	mov	r2, r3
800264a8:	e3a01000 	mov	r1, #0
800264ac:	e3a00000 	mov	r0, #0
800264b0:	ebffff87 	bl	800262d4 <argfd>
800264b4:	e1a03000 	mov	r3, r0
800264b8:	e3530000 	cmp	r3, #0
800264bc:	ba00000e 	blt	800264fc <sys_read+0x68>
800264c0:	e24b300c 	sub	r3, fp, #12
800264c4:	e1a01003 	mov	r1, r3
800264c8:	e3a00002 	mov	r0, #2
800264cc:	ebfffef0 	bl	80026094 <argint>
800264d0:	e1a03000 	mov	r3, r0
800264d4:	e3530000 	cmp	r3, #0
800264d8:	ba000007 	blt	800264fc <sys_read+0x68>
800264dc:	e51b200c 	ldr	r2, [fp, #-12]
800264e0:	e24b3010 	sub	r3, fp, #16
800264e4:	e1a01003 	mov	r1, r3
800264e8:	e3a00001 	mov	r0, #1
800264ec:	ebffff03 	bl	80026100 <argptr>
800264f0:	e1a03000 	mov	r3, r0
800264f4:	e3530000 	cmp	r3, #0
800264f8:	aa000001 	bge	80026504 <sys_read+0x70>
800264fc:	e3e03000 	mvn	r3, #0
80026500:	ea000005 	b	8002651c <sys_read+0x88>
80026504:	e51b3008 	ldr	r3, [fp, #-8]
80026508:	e51b1010 	ldr	r1, [fp, #-16]
8002650c:	e51b200c 	ldr	r2, [fp, #-12]
80026510:	e1a00003 	mov	r0, r3
80026514:	ebfff085 	bl	80022730 <fileread>
80026518:	e1a03000 	mov	r3, r0
8002651c:	e1a00003 	mov	r0, r3
80026520:	e24bd004 	sub	sp, fp, #4
80026524:	e8bd8800 	pop	{fp, pc}

80026528 <sys_write>:
80026528:	e92d4800 	push	{fp, lr}
8002652c:	e28db004 	add	fp, sp, #4
80026530:	e24dd010 	sub	sp, sp, #16
80026534:	e24b3008 	sub	r3, fp, #8
80026538:	e1a02003 	mov	r2, r3
8002653c:	e3a01000 	mov	r1, #0
80026540:	e3a00000 	mov	r0, #0
80026544:	ebffff62 	bl	800262d4 <argfd>
80026548:	e1a03000 	mov	r3, r0
8002654c:	e3530000 	cmp	r3, #0
80026550:	ba00000e 	blt	80026590 <sys_write+0x68>
80026554:	e24b300c 	sub	r3, fp, #12
80026558:	e1a01003 	mov	r1, r3
8002655c:	e3a00002 	mov	r0, #2
80026560:	ebfffecb 	bl	80026094 <argint>
80026564:	e1a03000 	mov	r3, r0
80026568:	e3530000 	cmp	r3, #0
8002656c:	ba000007 	blt	80026590 <sys_write+0x68>
80026570:	e51b200c 	ldr	r2, [fp, #-12]
80026574:	e24b3010 	sub	r3, fp, #16
80026578:	e1a01003 	mov	r1, r3
8002657c:	e3a00001 	mov	r0, #1
80026580:	ebfffede 	bl	80026100 <argptr>
80026584:	e1a03000 	mov	r3, r0
80026588:	e3530000 	cmp	r3, #0
8002658c:	aa000001 	bge	80026598 <sys_write+0x70>
80026590:	e3e03000 	mvn	r3, #0
80026594:	ea000005 	b	800265b0 <sys_write+0x88>
80026598:	e51b3008 	ldr	r3, [fp, #-8]
8002659c:	e51b1010 	ldr	r1, [fp, #-16]
800265a0:	e51b200c 	ldr	r2, [fp, #-12]
800265a4:	e1a00003 	mov	r0, r3
800265a8:	ebfff09d 	bl	80022824 <filewrite>
800265ac:	e1a03000 	mov	r3, r0
800265b0:	e1a00003 	mov	r0, r3
800265b4:	e24bd004 	sub	sp, fp, #4
800265b8:	e8bd8800 	pop	{fp, pc}

800265bc <sys_close>:
800265bc:	e92d4800 	push	{fp, lr}
800265c0:	e28db004 	add	fp, sp, #4
800265c4:	e24dd008 	sub	sp, sp, #8
800265c8:	e24b200c 	sub	r2, fp, #12
800265cc:	e24b3008 	sub	r3, fp, #8
800265d0:	e1a01003 	mov	r1, r3
800265d4:	e3a00000 	mov	r0, #0
800265d8:	ebffff3d 	bl	800262d4 <argfd>
800265dc:	e1a03000 	mov	r3, r0
800265e0:	e3530000 	cmp	r3, #0
800265e4:	aa000001 	bge	800265f0 <sys_close+0x34>
800265e8:	e3e03000 	mvn	r3, #0
800265ec:	ea000009 	b	80026618 <sys_close+0x5c>
800265f0:	e59f302c 	ldr	r3, [pc, #44]	@ 80026624 <sys_close+0x68>
800265f4:	e5933000 	ldr	r3, [r3]
800265f8:	e51b2008 	ldr	r2, [fp, #-8]
800265fc:	e282200a 	add	r2, r2, #10
80026600:	e3a01000 	mov	r1, #0
80026604:	e7831102 	str	r1, [r3, r2, lsl #2]
80026608:	e51b300c 	ldr	r3, [fp, #-12]
8002660c:	e1a00003 	mov	r0, r3
80026610:	ebffefee 	bl	800225d0 <fileclose>
80026614:	e3a03000 	mov	r3, #0
80026618:	e1a00003 	mov	r0, r3
8002661c:	e24bd004 	sub	sp, fp, #4
80026620:	e8bd8800 	pop	{fp, pc}
80026624:	800afa4c 	.word	0x800afa4c

80026628 <sys_fstat>:
80026628:	e92d4800 	push	{fp, lr}
8002662c:	e28db004 	add	fp, sp, #4
80026630:	e24dd008 	sub	sp, sp, #8
80026634:	e24b3008 	sub	r3, fp, #8
80026638:	e1a02003 	mov	r2, r3
8002663c:	e3a01000 	mov	r1, #0
80026640:	e3a00000 	mov	r0, #0
80026644:	ebffff22 	bl	800262d4 <argfd>
80026648:	e1a03000 	mov	r3, r0
8002664c:	e3530000 	cmp	r3, #0
80026650:	ba000007 	blt	80026674 <sys_fstat+0x4c>
80026654:	e24b300c 	sub	r3, fp, #12
80026658:	e3a02014 	mov	r2, #20
8002665c:	e1a01003 	mov	r1, r3
80026660:	e3a00001 	mov	r0, #1
80026664:	ebfffea5 	bl	80026100 <argptr>
80026668:	e1a03000 	mov	r3, r0
8002666c:	e3530000 	cmp	r3, #0
80026670:	aa000001 	bge	8002667c <sys_fstat+0x54>
80026674:	e3e03000 	mvn	r3, #0
80026678:	ea000005 	b	80026694 <sys_fstat+0x6c>
8002667c:	e51b3008 	ldr	r3, [fp, #-8]
80026680:	e51b200c 	ldr	r2, [fp, #-12]
80026684:	e1a01002 	mov	r1, r2
80026688:	e1a00003 	mov	r0, r3
8002668c:	ebfff00b 	bl	800226c0 <filestat>
80026690:	e1a03000 	mov	r3, r0
80026694:	e1a00003 	mov	r0, r3
80026698:	e24bd004 	sub	sp, fp, #4
8002669c:	e8bd8800 	pop	{fp, pc}

800266a0 <sys_link>:
800266a0:	e92d4800 	push	{fp, lr}
800266a4:	e28db004 	add	fp, sp, #4
800266a8:	e24dd020 	sub	sp, sp, #32
800266ac:	e24b3024 	sub	r3, fp, #36	@ 0x24
800266b0:	e1a01003 	mov	r1, r3
800266b4:	e3a00000 	mov	r0, #0
800266b8:	ebfffeb9 	bl	800261a4 <argstr>
800266bc:	e1a03000 	mov	r3, r0
800266c0:	e3530000 	cmp	r3, #0
800266c4:	ba000006 	blt	800266e4 <sys_link+0x44>
800266c8:	e24b3020 	sub	r3, fp, #32
800266cc:	e1a01003 	mov	r1, r3
800266d0:	e3a00001 	mov	r0, #1
800266d4:	ebfffeb2 	bl	800261a4 <argstr>
800266d8:	e1a03000 	mov	r3, r0
800266dc:	e3530000 	cmp	r3, #0
800266e0:	aa000001 	bge	800266ec <sys_link+0x4c>
800266e4:	e3e03000 	mvn	r3, #0
800266e8:	ea000055 	b	80026844 <sys_link+0x1a4>
800266ec:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800266f0:	e1a00003 	mov	r0, r3
800266f4:	ebfff653 	bl	80024048 <namei>
800266f8:	e50b0008 	str	r0, [fp, #-8]
800266fc:	e51b3008 	ldr	r3, [fp, #-8]
80026700:	e3530000 	cmp	r3, #0
80026704:	1a000001 	bne	80026710 <sys_link+0x70>
80026708:	e3e03000 	mvn	r3, #0
8002670c:	ea00004c 	b	80026844 <sys_link+0x1a4>
80026710:	ebfff725 	bl	800243ac <begin_trans>
80026714:	e51b0008 	ldr	r0, [fp, #-8]
80026718:	ebfff277 	bl	800230fc <ilock>
8002671c:	e51b3008 	ldr	r3, [fp, #-8]
80026720:	e1d331f0 	ldrsh	r3, [r3, #16]
80026724:	e3530001 	cmp	r3, #1
80026728:	1a000004 	bne	80026740 <sys_link+0xa0>
8002672c:	e51b0008 	ldr	r0, [fp, #-8]
80026730:	ebfff332 	bl	80023400 <iunlockput>
80026734:	ebfff730 	bl	800243fc <commit_trans>
80026738:	e3e03000 	mvn	r3, #0
8002673c:	ea000040 	b	80026844 <sys_link+0x1a4>
80026740:	e51b3008 	ldr	r3, [fp, #-8]
80026744:	e1d331f6 	ldrsh	r3, [r3, #22]
80026748:	e6ff3073 	uxth	r3, r3
8002674c:	e2833001 	add	r3, r3, #1
80026750:	e6ff3073 	uxth	r3, r3
80026754:	e6bf2073 	sxth	r2, r3
80026758:	e51b3008 	ldr	r3, [fp, #-8]
8002675c:	e1c321b6 	strh	r2, [r3, #22]
80026760:	e51b0008 	ldr	r0, [fp, #-8]
80026764:	ebfff1ca 	bl	80022e94 <iupdate>
80026768:	e51b0008 	ldr	r0, [fp, #-8]
8002676c:	ebfff2c6 	bl	8002328c <iunlock>
80026770:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80026774:	e24b201c 	sub	r2, fp, #28
80026778:	e1a01002 	mov	r1, r2
8002677c:	e1a00003 	mov	r0, r3
80026780:	ebfff63d 	bl	8002407c <nameiparent>
80026784:	e50b000c 	str	r0, [fp, #-12]
80026788:	e51b300c 	ldr	r3, [fp, #-12]
8002678c:	e3530000 	cmp	r3, #0
80026790:	0a00001a 	beq	80026800 <sys_link+0x160>
80026794:	e51b000c 	ldr	r0, [fp, #-12]
80026798:	ebfff257 	bl	800230fc <ilock>
8002679c:	e51b300c 	ldr	r3, [fp, #-12]
800267a0:	e5932000 	ldr	r2, [r3]
800267a4:	e51b3008 	ldr	r3, [fp, #-8]
800267a8:	e5933000 	ldr	r3, [r3]
800267ac:	e1520003 	cmp	r2, r3
800267b0:	1a000008 	bne	800267d8 <sys_link+0x138>
800267b4:	e51b3008 	ldr	r3, [fp, #-8]
800267b8:	e5932004 	ldr	r2, [r3, #4]
800267bc:	e24b301c 	sub	r3, fp, #28
800267c0:	e1a01003 	mov	r1, r3
800267c4:	e51b000c 	ldr	r0, [fp, #-12]
800267c8:	ebfff548 	bl	80023cf0 <dirlink>
800267cc:	e1a03000 	mov	r3, r0
800267d0:	e3530000 	cmp	r3, #0
800267d4:	aa000002 	bge	800267e4 <sys_link+0x144>
800267d8:	e51b000c 	ldr	r0, [fp, #-12]
800267dc:	ebfff307 	bl	80023400 <iunlockput>
800267e0:	ea000007 	b	80026804 <sys_link+0x164>
800267e4:	e51b000c 	ldr	r0, [fp, #-12]
800267e8:	ebfff304 	bl	80023400 <iunlockput>
800267ec:	e51b0008 	ldr	r0, [fp, #-8]
800267f0:	ebfff2c7 	bl	80023314 <iput>
800267f4:	ebfff700 	bl	800243fc <commit_trans>
800267f8:	e3a03000 	mov	r3, #0
800267fc:	ea000010 	b	80026844 <sys_link+0x1a4>
80026800:	e1a00000 	nop			@ (mov r0, r0)
80026804:	e51b0008 	ldr	r0, [fp, #-8]
80026808:	ebfff23b 	bl	800230fc <ilock>
8002680c:	e51b3008 	ldr	r3, [fp, #-8]
80026810:	e1d331f6 	ldrsh	r3, [r3, #22]
80026814:	e6ff3073 	uxth	r3, r3
80026818:	e2433001 	sub	r3, r3, #1
8002681c:	e6ff3073 	uxth	r3, r3
80026820:	e6bf2073 	sxth	r2, r3
80026824:	e51b3008 	ldr	r3, [fp, #-8]
80026828:	e1c321b6 	strh	r2, [r3, #22]
8002682c:	e51b0008 	ldr	r0, [fp, #-8]
80026830:	ebfff197 	bl	80022e94 <iupdate>
80026834:	e51b0008 	ldr	r0, [fp, #-8]
80026838:	ebfff2f0 	bl	80023400 <iunlockput>
8002683c:	ebfff6ee 	bl	800243fc <commit_trans>
80026840:	e3e03000 	mvn	r3, #0
80026844:	e1a00003 	mov	r0, r3
80026848:	e24bd004 	sub	sp, fp, #4
8002684c:	e8bd8800 	pop	{fp, pc}

80026850 <isdirempty>:
80026850:	e92d4800 	push	{fp, lr}
80026854:	e28db004 	add	fp, sp, #4
80026858:	e24dd020 	sub	sp, sp, #32
8002685c:	e50b0020 	str	r0, [fp, #-32]	@ 0xffffffe0
80026860:	e3a03020 	mov	r3, #32
80026864:	e50b3008 	str	r3, [fp, #-8]
80026868:	ea000011 	b	800268b4 <isdirempty+0x64>
8002686c:	e51b2008 	ldr	r2, [fp, #-8]
80026870:	e24b1018 	sub	r1, fp, #24
80026874:	e3a03010 	mov	r3, #16
80026878:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
8002687c:	ebfff3ca 	bl	800237ac <readi>
80026880:	e1a03000 	mov	r3, r0
80026884:	e3530010 	cmp	r3, #16
80026888:	0a000001 	beq	80026894 <isdirempty+0x44>
8002688c:	e59f0044 	ldr	r0, [pc, #68]	@ 800268d8 <isdirempty+0x88>
80026890:	ebffec85 	bl	80021aac <panic>
80026894:	e15b31b8 	ldrh	r3, [fp, #-24]	@ 0xffffffe8
80026898:	e3530000 	cmp	r3, #0
8002689c:	0a000001 	beq	800268a8 <isdirempty+0x58>
800268a0:	e3a03000 	mov	r3, #0
800268a4:	ea000008 	b	800268cc <isdirempty+0x7c>
800268a8:	e51b3008 	ldr	r3, [fp, #-8]
800268ac:	e2833010 	add	r3, r3, #16
800268b0:	e50b3008 	str	r3, [fp, #-8]
800268b4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800268b8:	e5932018 	ldr	r2, [r3, #24]
800268bc:	e51b3008 	ldr	r3, [fp, #-8]
800268c0:	e1520003 	cmp	r2, r3
800268c4:	8affffe8 	bhi	8002686c <isdirempty+0x1c>
800268c8:	e3a03001 	mov	r3, #1
800268cc:	e1a00003 	mov	r0, r3
800268d0:	e24bd004 	sub	sp, fp, #4
800268d4:	e8bd8800 	pop	{fp, pc}
800268d8:	8002983c 	.word	0x8002983c

800268dc <sys_unlink>:
800268dc:	e92d4800 	push	{fp, lr}
800268e0:	e28db004 	add	fp, sp, #4
800268e4:	e24dd030 	sub	sp, sp, #48	@ 0x30
800268e8:	e24b3030 	sub	r3, fp, #48	@ 0x30
800268ec:	e1a01003 	mov	r1, r3
800268f0:	e3a00000 	mov	r0, #0
800268f4:	ebfffe2a 	bl	800261a4 <argstr>
800268f8:	e1a03000 	mov	r3, r0
800268fc:	e3530000 	cmp	r3, #0
80026900:	aa000001 	bge	8002690c <sys_unlink+0x30>
80026904:	e3e03000 	mvn	r3, #0
80026908:	ea00006d 	b	80026ac4 <sys_unlink+0x1e8>
8002690c:	e51b3030 	ldr	r3, [fp, #-48]	@ 0xffffffd0
80026910:	e24b202c 	sub	r2, fp, #44	@ 0x2c
80026914:	e1a01002 	mov	r1, r2
80026918:	e1a00003 	mov	r0, r3
8002691c:	ebfff5d6 	bl	8002407c <nameiparent>
80026920:	e50b0008 	str	r0, [fp, #-8]
80026924:	e51b3008 	ldr	r3, [fp, #-8]
80026928:	e3530000 	cmp	r3, #0
8002692c:	1a000001 	bne	80026938 <sys_unlink+0x5c>
80026930:	e3e03000 	mvn	r3, #0
80026934:	ea000062 	b	80026ac4 <sys_unlink+0x1e8>
80026938:	ebfff69b 	bl	800243ac <begin_trans>
8002693c:	e51b0008 	ldr	r0, [fp, #-8]
80026940:	ebfff1ed 	bl	800230fc <ilock>
80026944:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026948:	e59f1180 	ldr	r1, [pc, #384]	@ 80026ad0 <sys_unlink+0x1f4>
8002694c:	e1a00003 	mov	r0, r3
80026950:	ebfff497 	bl	80023bb4 <namecmp>
80026954:	e1a03000 	mov	r3, r0
80026958:	e3530000 	cmp	r3, #0
8002695c:	0a000051 	beq	80026aa8 <sys_unlink+0x1cc>
80026960:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026964:	e59f1168 	ldr	r1, [pc, #360]	@ 80026ad4 <sys_unlink+0x1f8>
80026968:	e1a00003 	mov	r0, r3
8002696c:	ebfff490 	bl	80023bb4 <namecmp>
80026970:	e1a03000 	mov	r3, r0
80026974:	e3530000 	cmp	r3, #0
80026978:	0a00004a 	beq	80026aa8 <sys_unlink+0x1cc>
8002697c:	e24b2034 	sub	r2, fp, #52	@ 0x34
80026980:	e24b302c 	sub	r3, fp, #44	@ 0x2c
80026984:	e1a01003 	mov	r1, r3
80026988:	e51b0008 	ldr	r0, [fp, #-8]
8002698c:	ebfff495 	bl	80023be8 <dirlookup>
80026990:	e50b000c 	str	r0, [fp, #-12]
80026994:	e51b300c 	ldr	r3, [fp, #-12]
80026998:	e3530000 	cmp	r3, #0
8002699c:	0a000043 	beq	80026ab0 <sys_unlink+0x1d4>
800269a0:	e51b000c 	ldr	r0, [fp, #-12]
800269a4:	ebfff1d4 	bl	800230fc <ilock>
800269a8:	e51b300c 	ldr	r3, [fp, #-12]
800269ac:	e1d331f6 	ldrsh	r3, [r3, #22]
800269b0:	e3530000 	cmp	r3, #0
800269b4:	ca000001 	bgt	800269c0 <sys_unlink+0xe4>
800269b8:	e59f0118 	ldr	r0, [pc, #280]	@ 80026ad8 <sys_unlink+0x1fc>
800269bc:	ebffec3a 	bl	80021aac <panic>
800269c0:	e51b300c 	ldr	r3, [fp, #-12]
800269c4:	e1d331f0 	ldrsh	r3, [r3, #16]
800269c8:	e3530001 	cmp	r3, #1
800269cc:	1a000007 	bne	800269f0 <sys_unlink+0x114>
800269d0:	e51b000c 	ldr	r0, [fp, #-12]
800269d4:	ebffff9d 	bl	80026850 <isdirempty>
800269d8:	e1a03000 	mov	r3, r0
800269dc:	e3530000 	cmp	r3, #0
800269e0:	1a000002 	bne	800269f0 <sys_unlink+0x114>
800269e4:	e51b000c 	ldr	r0, [fp, #-12]
800269e8:	ebfff284 	bl	80023400 <iunlockput>
800269ec:	ea000030 	b	80026ab4 <sys_unlink+0x1d8>
800269f0:	e24b301c 	sub	r3, fp, #28
800269f4:	e3a02010 	mov	r2, #16
800269f8:	e3a01000 	mov	r1, #0
800269fc:	e1a00003 	mov	r0, r3
80026a00:	ebffe57e 	bl	80020000 <memset>
80026a04:	e51b2034 	ldr	r2, [fp, #-52]	@ 0xffffffcc
80026a08:	e24b101c 	sub	r1, fp, #28
80026a0c:	e3a03010 	mov	r3, #16
80026a10:	e51b0008 	ldr	r0, [fp, #-8]
80026a14:	ebfff3df 	bl	80023998 <writei>
80026a18:	e1a03000 	mov	r3, r0
80026a1c:	e3530010 	cmp	r3, #16
80026a20:	0a000001 	beq	80026a2c <sys_unlink+0x150>
80026a24:	e59f00b0 	ldr	r0, [pc, #176]	@ 80026adc <sys_unlink+0x200>
80026a28:	ebffec1f 	bl	80021aac <panic>
80026a2c:	e51b300c 	ldr	r3, [fp, #-12]
80026a30:	e1d331f0 	ldrsh	r3, [r3, #16]
80026a34:	e3530001 	cmp	r3, #1
80026a38:	1a000009 	bne	80026a64 <sys_unlink+0x188>
80026a3c:	e51b3008 	ldr	r3, [fp, #-8]
80026a40:	e1d331f6 	ldrsh	r3, [r3, #22]
80026a44:	e6ff3073 	uxth	r3, r3
80026a48:	e2433001 	sub	r3, r3, #1
80026a4c:	e6ff3073 	uxth	r3, r3
80026a50:	e6bf2073 	sxth	r2, r3
80026a54:	e51b3008 	ldr	r3, [fp, #-8]
80026a58:	e1c321b6 	strh	r2, [r3, #22]
80026a5c:	e51b0008 	ldr	r0, [fp, #-8]
80026a60:	ebfff10b 	bl	80022e94 <iupdate>
80026a64:	e51b0008 	ldr	r0, [fp, #-8]
80026a68:	ebfff264 	bl	80023400 <iunlockput>
80026a6c:	e51b300c 	ldr	r3, [fp, #-12]
80026a70:	e1d331f6 	ldrsh	r3, [r3, #22]
80026a74:	e6ff3073 	uxth	r3, r3
80026a78:	e2433001 	sub	r3, r3, #1
80026a7c:	e6ff3073 	uxth	r3, r3
80026a80:	e6bf2073 	sxth	r2, r3
80026a84:	e51b300c 	ldr	r3, [fp, #-12]
80026a88:	e1c321b6 	strh	r2, [r3, #22]
80026a8c:	e51b000c 	ldr	r0, [fp, #-12]
80026a90:	ebfff0ff 	bl	80022e94 <iupdate>
80026a94:	e51b000c 	ldr	r0, [fp, #-12]
80026a98:	ebfff258 	bl	80023400 <iunlockput>
80026a9c:	ebfff656 	bl	800243fc <commit_trans>
80026aa0:	e3a03000 	mov	r3, #0
80026aa4:	ea000006 	b	80026ac4 <sys_unlink+0x1e8>
80026aa8:	e1a00000 	nop			@ (mov r0, r0)
80026aac:	ea000000 	b	80026ab4 <sys_unlink+0x1d8>
80026ab0:	e1a00000 	nop			@ (mov r0, r0)
80026ab4:	e51b0008 	ldr	r0, [fp, #-8]
80026ab8:	ebfff250 	bl	80023400 <iunlockput>
80026abc:	ebfff64e 	bl	800243fc <commit_trans>
80026ac0:	e3e03000 	mvn	r3, #0
80026ac4:	e1a00003 	mov	r0, r3
80026ac8:	e24bd004 	sub	sp, fp, #4
80026acc:	e8bd8800 	pop	{fp, pc}
80026ad0:	80029850 	.word	0x80029850
80026ad4:	80029854 	.word	0x80029854
80026ad8:	80029858 	.word	0x80029858
80026adc:	8002986c 	.word	0x8002986c

80026ae0 <create>:
80026ae0:	e92d4800 	push	{fp, lr}
80026ae4:	e28db004 	add	fp, sp, #4
80026ae8:	e24dd030 	sub	sp, sp, #48	@ 0x30
80026aec:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80026af0:	e1a00001 	mov	r0, r1
80026af4:	e1a01002 	mov	r1, r2
80026af8:	e1a02003 	mov	r2, r3
80026afc:	e1a03000 	mov	r3, r0
80026b00:	e14b32ba 	strh	r3, [fp, #-42]	@ 0xffffffd6
80026b04:	e1a03001 	mov	r3, r1
80026b08:	e14b32bc 	strh	r3, [fp, #-44]	@ 0xffffffd4
80026b0c:	e1a03002 	mov	r3, r2
80026b10:	e14b32be 	strh	r3, [fp, #-46]	@ 0xffffffd2
80026b14:	e24b3020 	sub	r3, fp, #32
80026b18:	e1a01003 	mov	r1, r3
80026b1c:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
80026b20:	ebfff555 	bl	8002407c <nameiparent>
80026b24:	e50b0008 	str	r0, [fp, #-8]
80026b28:	e51b3008 	ldr	r3, [fp, #-8]
80026b2c:	e3530000 	cmp	r3, #0
80026b30:	1a000001 	bne	80026b3c <create+0x5c>
80026b34:	e3a03000 	mov	r3, #0
80026b38:	ea000063 	b	80026ccc <create+0x1ec>
80026b3c:	e51b0008 	ldr	r0, [fp, #-8]
80026b40:	ebfff16d 	bl	800230fc <ilock>
80026b44:	e24b2010 	sub	r2, fp, #16
80026b48:	e24b3020 	sub	r3, fp, #32
80026b4c:	e1a01003 	mov	r1, r3
80026b50:	e51b0008 	ldr	r0, [fp, #-8]
80026b54:	ebfff423 	bl	80023be8 <dirlookup>
80026b58:	e50b000c 	str	r0, [fp, #-12]
80026b5c:	e51b300c 	ldr	r3, [fp, #-12]
80026b60:	e3530000 	cmp	r3, #0
80026b64:	0a000010 	beq	80026bac <create+0xcc>
80026b68:	e51b0008 	ldr	r0, [fp, #-8]
80026b6c:	ebfff223 	bl	80023400 <iunlockput>
80026b70:	e51b000c 	ldr	r0, [fp, #-12]
80026b74:	ebfff160 	bl	800230fc <ilock>
80026b78:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026b7c:	e3530002 	cmp	r3, #2
80026b80:	1a000005 	bne	80026b9c <create+0xbc>
80026b84:	e51b300c 	ldr	r3, [fp, #-12]
80026b88:	e1d331f0 	ldrsh	r3, [r3, #16]
80026b8c:	e3530002 	cmp	r3, #2
80026b90:	1a000001 	bne	80026b9c <create+0xbc>
80026b94:	e51b300c 	ldr	r3, [fp, #-12]
80026b98:	ea00004b 	b	80026ccc <create+0x1ec>
80026b9c:	e51b000c 	ldr	r0, [fp, #-12]
80026ba0:	ebfff216 	bl	80023400 <iunlockput>
80026ba4:	e3a03000 	mov	r3, #0
80026ba8:	ea000047 	b	80026ccc <create+0x1ec>
80026bac:	e51b3008 	ldr	r3, [fp, #-8]
80026bb0:	e5933000 	ldr	r3, [r3]
80026bb4:	e15b22fa 	ldrsh	r2, [fp, #-42]	@ 0xffffffd6
80026bb8:	e1a01002 	mov	r1, r2
80026bbc:	e1a00003 	mov	r0, r3
80026bc0:	ebfff073 	bl	80022d94 <ialloc>
80026bc4:	e50b000c 	str	r0, [fp, #-12]
80026bc8:	e51b300c 	ldr	r3, [fp, #-12]
80026bcc:	e3530000 	cmp	r3, #0
80026bd0:	1a000001 	bne	80026bdc <create+0xfc>
80026bd4:	e59f00fc 	ldr	r0, [pc, #252]	@ 80026cd8 <create+0x1f8>
80026bd8:	ebffebb3 	bl	80021aac <panic>
80026bdc:	e51b000c 	ldr	r0, [fp, #-12]
80026be0:	ebfff145 	bl	800230fc <ilock>
80026be4:	e51b300c 	ldr	r3, [fp, #-12]
80026be8:	e15b22bc 	ldrh	r2, [fp, #-44]	@ 0xffffffd4
80026bec:	e1c321b2 	strh	r2, [r3, #18]
80026bf0:	e51b300c 	ldr	r3, [fp, #-12]
80026bf4:	e15b22be 	ldrh	r2, [fp, #-46]	@ 0xffffffd2
80026bf8:	e1c321b4 	strh	r2, [r3, #20]
80026bfc:	e51b300c 	ldr	r3, [fp, #-12]
80026c00:	e3a02001 	mov	r2, #1
80026c04:	e1c321b6 	strh	r2, [r3, #22]
80026c08:	e51b000c 	ldr	r0, [fp, #-12]
80026c0c:	ebfff0a0 	bl	80022e94 <iupdate>
80026c10:	e15b32fa 	ldrsh	r3, [fp, #-42]	@ 0xffffffd6
80026c14:	e3530001 	cmp	r3, #1
80026c18:	1a00001d 	bne	80026c94 <create+0x1b4>
80026c1c:	e51b3008 	ldr	r3, [fp, #-8]
80026c20:	e1d331f6 	ldrsh	r3, [r3, #22]
80026c24:	e6ff3073 	uxth	r3, r3
80026c28:	e2833001 	add	r3, r3, #1
80026c2c:	e6ff3073 	uxth	r3, r3
80026c30:	e6bf2073 	sxth	r2, r3
80026c34:	e51b3008 	ldr	r3, [fp, #-8]
80026c38:	e1c321b6 	strh	r2, [r3, #22]
80026c3c:	e51b0008 	ldr	r0, [fp, #-8]
80026c40:	ebfff093 	bl	80022e94 <iupdate>
80026c44:	e51b300c 	ldr	r3, [fp, #-12]
80026c48:	e5933004 	ldr	r3, [r3, #4]
80026c4c:	e1a02003 	mov	r2, r3
80026c50:	e59f1084 	ldr	r1, [pc, #132]	@ 80026cdc <create+0x1fc>
80026c54:	e51b000c 	ldr	r0, [fp, #-12]
80026c58:	ebfff424 	bl	80023cf0 <dirlink>
80026c5c:	e1a03000 	mov	r3, r0
80026c60:	e3530000 	cmp	r3, #0
80026c64:	ba000008 	blt	80026c8c <create+0x1ac>
80026c68:	e51b3008 	ldr	r3, [fp, #-8]
80026c6c:	e5933004 	ldr	r3, [r3, #4]
80026c70:	e1a02003 	mov	r2, r3
80026c74:	e59f1064 	ldr	r1, [pc, #100]	@ 80026ce0 <create+0x200>
80026c78:	e51b000c 	ldr	r0, [fp, #-12]
80026c7c:	ebfff41b 	bl	80023cf0 <dirlink>
80026c80:	e1a03000 	mov	r3, r0
80026c84:	e3530000 	cmp	r3, #0
80026c88:	aa000001 	bge	80026c94 <create+0x1b4>
80026c8c:	e59f0050 	ldr	r0, [pc, #80]	@ 80026ce4 <create+0x204>
80026c90:	ebffeb85 	bl	80021aac <panic>
80026c94:	e51b300c 	ldr	r3, [fp, #-12]
80026c98:	e5932004 	ldr	r2, [r3, #4]
80026c9c:	e24b3020 	sub	r3, fp, #32
80026ca0:	e1a01003 	mov	r1, r3
80026ca4:	e51b0008 	ldr	r0, [fp, #-8]
80026ca8:	ebfff410 	bl	80023cf0 <dirlink>
80026cac:	e1a03000 	mov	r3, r0
80026cb0:	e3530000 	cmp	r3, #0
80026cb4:	aa000001 	bge	80026cc0 <create+0x1e0>
80026cb8:	e59f0028 	ldr	r0, [pc, #40]	@ 80026ce8 <create+0x208>
80026cbc:	ebffeb7a 	bl	80021aac <panic>
80026cc0:	e51b0008 	ldr	r0, [fp, #-8]
80026cc4:	ebfff1cd 	bl	80023400 <iunlockput>
80026cc8:	e51b300c 	ldr	r3, [fp, #-12]
80026ccc:	e1a00003 	mov	r0, r3
80026cd0:	e24bd004 	sub	sp, fp, #4
80026cd4:	e8bd8800 	pop	{fp, pc}
80026cd8:	8002987c 	.word	0x8002987c
80026cdc:	80029850 	.word	0x80029850
80026ce0:	80029854 	.word	0x80029854
80026ce4:	8002988c 	.word	0x8002988c
80026ce8:	80029898 	.word	0x80029898

80026cec <sys_open>:
80026cec:	e92d4800 	push	{fp, lr}
80026cf0:	e28db004 	add	fp, sp, #4
80026cf4:	e24dd018 	sub	sp, sp, #24
80026cf8:	e24b3014 	sub	r3, fp, #20
80026cfc:	e1a01003 	mov	r1, r3
80026d00:	e3a00000 	mov	r0, #0
80026d04:	ebfffd26 	bl	800261a4 <argstr>
80026d08:	e1a03000 	mov	r3, r0
80026d0c:	e3530000 	cmp	r3, #0
80026d10:	ba000006 	blt	80026d30 <sys_open+0x44>
80026d14:	e24b3018 	sub	r3, fp, #24
80026d18:	e1a01003 	mov	r1, r3
80026d1c:	e3a00001 	mov	r0, #1
80026d20:	ebfffcdb 	bl	80026094 <argint>
80026d24:	e1a03000 	mov	r3, r0
80026d28:	e3530000 	cmp	r3, #0
80026d2c:	aa000001 	bge	80026d38 <sys_open+0x4c>
80026d30:	e3e03000 	mvn	r3, #0
80026d34:	ea00005d 	b	80026eb0 <sys_open+0x1c4>
80026d38:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026d3c:	e2033c02 	and	r3, r3, #512	@ 0x200
80026d40:	e3530000 	cmp	r3, #0
80026d44:	0a00000c 	beq	80026d7c <sys_open+0x90>
80026d48:	ebfff597 	bl	800243ac <begin_trans>
80026d4c:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80026d50:	e3a03000 	mov	r3, #0
80026d54:	e3a02000 	mov	r2, #0
80026d58:	e3a01002 	mov	r1, #2
80026d5c:	ebffff5f 	bl	80026ae0 <create>
80026d60:	e50b0008 	str	r0, [fp, #-8]
80026d64:	ebfff5a4 	bl	800243fc <commit_trans>
80026d68:	e51b3008 	ldr	r3, [fp, #-8]
80026d6c:	e3530000 	cmp	r3, #0
80026d70:	1a000017 	bne	80026dd4 <sys_open+0xe8>
80026d74:	e3e03000 	mvn	r3, #0
80026d78:	ea00004c 	b	80026eb0 <sys_open+0x1c4>
80026d7c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026d80:	e1a00003 	mov	r0, r3
80026d84:	ebfff4af 	bl	80024048 <namei>
80026d88:	e50b0008 	str	r0, [fp, #-8]
80026d8c:	e51b3008 	ldr	r3, [fp, #-8]
80026d90:	e3530000 	cmp	r3, #0
80026d94:	1a000001 	bne	80026da0 <sys_open+0xb4>
80026d98:	e3e03000 	mvn	r3, #0
80026d9c:	ea000043 	b	80026eb0 <sys_open+0x1c4>
80026da0:	e51b0008 	ldr	r0, [fp, #-8]
80026da4:	ebfff0d4 	bl	800230fc <ilock>
80026da8:	e51b3008 	ldr	r3, [fp, #-8]
80026dac:	e1d331f0 	ldrsh	r3, [r3, #16]
80026db0:	e3530001 	cmp	r3, #1
80026db4:	1a000006 	bne	80026dd4 <sys_open+0xe8>
80026db8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026dbc:	e3530000 	cmp	r3, #0
80026dc0:	0a000003 	beq	80026dd4 <sys_open+0xe8>
80026dc4:	e51b0008 	ldr	r0, [fp, #-8]
80026dc8:	ebfff18c 	bl	80023400 <iunlockput>
80026dcc:	e3e03000 	mvn	r3, #0
80026dd0:	ea000036 	b	80026eb0 <sys_open+0x1c4>
80026dd4:	ebffedc1 	bl	800224e0 <filealloc>
80026dd8:	e50b000c 	str	r0, [fp, #-12]
80026ddc:	e51b300c 	ldr	r3, [fp, #-12]
80026de0:	e3530000 	cmp	r3, #0
80026de4:	0a000005 	beq	80026e00 <sys_open+0x114>
80026de8:	e51b000c 	ldr	r0, [fp, #-12]
80026dec:	ebfffd69 	bl	80026398 <fdalloc>
80026df0:	e50b0010 	str	r0, [fp, #-16]
80026df4:	e51b3010 	ldr	r3, [fp, #-16]
80026df8:	e3530000 	cmp	r3, #0
80026dfc:	aa000008 	bge	80026e24 <sys_open+0x138>
80026e00:	e51b300c 	ldr	r3, [fp, #-12]
80026e04:	e3530000 	cmp	r3, #0
80026e08:	0a000001 	beq	80026e14 <sys_open+0x128>
80026e0c:	e51b000c 	ldr	r0, [fp, #-12]
80026e10:	ebffedee 	bl	800225d0 <fileclose>
80026e14:	e51b0008 	ldr	r0, [fp, #-8]
80026e18:	ebfff178 	bl	80023400 <iunlockput>
80026e1c:	e3e03000 	mvn	r3, #0
80026e20:	ea000022 	b	80026eb0 <sys_open+0x1c4>
80026e24:	e51b0008 	ldr	r0, [fp, #-8]
80026e28:	ebfff117 	bl	8002328c <iunlock>
80026e2c:	e51b300c 	ldr	r3, [fp, #-12]
80026e30:	e3a02002 	mov	r2, #2
80026e34:	e5c32000 	strb	r2, [r3]
80026e38:	e51b300c 	ldr	r3, [fp, #-12]
80026e3c:	e51b2008 	ldr	r2, [fp, #-8]
80026e40:	e5832010 	str	r2, [r3, #16]
80026e44:	e51b300c 	ldr	r3, [fp, #-12]
80026e48:	e3a02000 	mov	r2, #0
80026e4c:	e5832014 	str	r2, [r3, #20]
80026e50:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026e54:	e2033001 	and	r3, r3, #1
80026e58:	e3530000 	cmp	r3, #0
80026e5c:	03a03001 	moveq	r3, #1
80026e60:	13a03000 	movne	r3, #0
80026e64:	e6ef3073 	uxtb	r3, r3
80026e68:	e1a02003 	mov	r2, r3
80026e6c:	e51b300c 	ldr	r3, [fp, #-12]
80026e70:	e5c32008 	strb	r2, [r3, #8]
80026e74:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026e78:	e2033001 	and	r3, r3, #1
80026e7c:	e3530000 	cmp	r3, #0
80026e80:	1a000003 	bne	80026e94 <sys_open+0x1a8>
80026e84:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026e88:	e2033002 	and	r3, r3, #2
80026e8c:	e3530000 	cmp	r3, #0
80026e90:	0a000001 	beq	80026e9c <sys_open+0x1b0>
80026e94:	e3a03001 	mov	r3, #1
80026e98:	ea000000 	b	80026ea0 <sys_open+0x1b4>
80026e9c:	e3a03000 	mov	r3, #0
80026ea0:	e6ef2073 	uxtb	r2, r3
80026ea4:	e51b300c 	ldr	r3, [fp, #-12]
80026ea8:	e5c32009 	strb	r2, [r3, #9]
80026eac:	e51b3010 	ldr	r3, [fp, #-16]
80026eb0:	e1a00003 	mov	r0, r3
80026eb4:	e24bd004 	sub	sp, fp, #4
80026eb8:	e8bd8800 	pop	{fp, pc}

80026ebc <sys_mkdir>:
80026ebc:	e92d4800 	push	{fp, lr}
80026ec0:	e28db004 	add	fp, sp, #4
80026ec4:	e24dd008 	sub	sp, sp, #8
80026ec8:	ebfff537 	bl	800243ac <begin_trans>
80026ecc:	e24b300c 	sub	r3, fp, #12
80026ed0:	e1a01003 	mov	r1, r3
80026ed4:	e3a00000 	mov	r0, #0
80026ed8:	ebfffcb1 	bl	800261a4 <argstr>
80026edc:	e1a03000 	mov	r3, r0
80026ee0:	e3530000 	cmp	r3, #0
80026ee4:	ba000008 	blt	80026f0c <sys_mkdir+0x50>
80026ee8:	e51b000c 	ldr	r0, [fp, #-12]
80026eec:	e3a03000 	mov	r3, #0
80026ef0:	e3a02000 	mov	r2, #0
80026ef4:	e3a01001 	mov	r1, #1
80026ef8:	ebfffef8 	bl	80026ae0 <create>
80026efc:	e50b0008 	str	r0, [fp, #-8]
80026f00:	e51b3008 	ldr	r3, [fp, #-8]
80026f04:	e3530000 	cmp	r3, #0
80026f08:	1a000002 	bne	80026f18 <sys_mkdir+0x5c>
80026f0c:	ebfff53a 	bl	800243fc <commit_trans>
80026f10:	e3e03000 	mvn	r3, #0
80026f14:	ea000003 	b	80026f28 <sys_mkdir+0x6c>
80026f18:	e51b0008 	ldr	r0, [fp, #-8]
80026f1c:	ebfff137 	bl	80023400 <iunlockput>
80026f20:	ebfff535 	bl	800243fc <commit_trans>
80026f24:	e3a03000 	mov	r3, #0
80026f28:	e1a00003 	mov	r0, r3
80026f2c:	e24bd004 	sub	sp, fp, #4
80026f30:	e8bd8800 	pop	{fp, pc}

80026f34 <sys_mknod>:
80026f34:	e92d4800 	push	{fp, lr}
80026f38:	e28db004 	add	fp, sp, #4
80026f3c:	e24dd018 	sub	sp, sp, #24
80026f40:	ebfff519 	bl	800243ac <begin_trans>
80026f44:	e24b3010 	sub	r3, fp, #16
80026f48:	e1a01003 	mov	r1, r3
80026f4c:	e3a00000 	mov	r0, #0
80026f50:	ebfffc93 	bl	800261a4 <argstr>
80026f54:	e50b0008 	str	r0, [fp, #-8]
80026f58:	e51b3008 	ldr	r3, [fp, #-8]
80026f5c:	e3530000 	cmp	r3, #0
80026f60:	ba000018 	blt	80026fc8 <sys_mknod+0x94>
80026f64:	e24b3014 	sub	r3, fp, #20
80026f68:	e1a01003 	mov	r1, r3
80026f6c:	e3a00001 	mov	r0, #1
80026f70:	ebfffc47 	bl	80026094 <argint>
80026f74:	e1a03000 	mov	r3, r0
80026f78:	e3530000 	cmp	r3, #0
80026f7c:	ba000011 	blt	80026fc8 <sys_mknod+0x94>
80026f80:	e24b3018 	sub	r3, fp, #24
80026f84:	e1a01003 	mov	r1, r3
80026f88:	e3a00002 	mov	r0, #2
80026f8c:	ebfffc40 	bl	80026094 <argint>
80026f90:	e1a03000 	mov	r3, r0
80026f94:	e3530000 	cmp	r3, #0
80026f98:	ba00000a 	blt	80026fc8 <sys_mknod+0x94>
80026f9c:	e51b0010 	ldr	r0, [fp, #-16]
80026fa0:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80026fa4:	e6bf2073 	sxth	r2, r3
80026fa8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80026fac:	e6bf3073 	sxth	r3, r3
80026fb0:	e3a01003 	mov	r1, #3
80026fb4:	ebfffec9 	bl	80026ae0 <create>
80026fb8:	e50b000c 	str	r0, [fp, #-12]
80026fbc:	e51b300c 	ldr	r3, [fp, #-12]
80026fc0:	e3530000 	cmp	r3, #0
80026fc4:	1a000002 	bne	80026fd4 <sys_mknod+0xa0>
80026fc8:	ebfff50b 	bl	800243fc <commit_trans>
80026fcc:	e3e03000 	mvn	r3, #0
80026fd0:	ea000003 	b	80026fe4 <sys_mknod+0xb0>
80026fd4:	e51b000c 	ldr	r0, [fp, #-12]
80026fd8:	ebfff108 	bl	80023400 <iunlockput>
80026fdc:	ebfff506 	bl	800243fc <commit_trans>
80026fe0:	e3a03000 	mov	r3, #0
80026fe4:	e1a00003 	mov	r0, r3
80026fe8:	e24bd004 	sub	sp, fp, #4
80026fec:	e8bd8800 	pop	{fp, pc}

80026ff0 <sys_chdir>:
80026ff0:	e92d4800 	push	{fp, lr}
80026ff4:	e28db004 	add	fp, sp, #4
80026ff8:	e24dd008 	sub	sp, sp, #8
80026ffc:	e24b300c 	sub	r3, fp, #12
80027000:	e1a01003 	mov	r1, r3
80027004:	e3a00000 	mov	r0, #0
80027008:	ebfffc65 	bl	800261a4 <argstr>
8002700c:	e1a03000 	mov	r3, r0
80027010:	e3530000 	cmp	r3, #0
80027014:	ba000006 	blt	80027034 <sys_chdir+0x44>
80027018:	e51b300c 	ldr	r3, [fp, #-12]
8002701c:	e1a00003 	mov	r0, r3
80027020:	ebfff408 	bl	80024048 <namei>
80027024:	e50b0008 	str	r0, [fp, #-8]
80027028:	e51b3008 	ldr	r3, [fp, #-8]
8002702c:	e3530000 	cmp	r3, #0
80027030:	1a000001 	bne	8002703c <sys_chdir+0x4c>
80027034:	e3e03000 	mvn	r3, #0
80027038:	ea000015 	b	80027094 <sys_chdir+0xa4>
8002703c:	e51b0008 	ldr	r0, [fp, #-8]
80027040:	ebfff02d 	bl	800230fc <ilock>
80027044:	e51b3008 	ldr	r3, [fp, #-8]
80027048:	e1d331f0 	ldrsh	r3, [r3, #16]
8002704c:	e3530001 	cmp	r3, #1
80027050:	0a000003 	beq	80027064 <sys_chdir+0x74>
80027054:	e51b0008 	ldr	r0, [fp, #-8]
80027058:	ebfff0e8 	bl	80023400 <iunlockput>
8002705c:	e3e03000 	mvn	r3, #0
80027060:	ea00000b 	b	80027094 <sys_chdir+0xa4>
80027064:	e51b0008 	ldr	r0, [fp, #-8]
80027068:	ebfff087 	bl	8002328c <iunlock>
8002706c:	e59f302c 	ldr	r3, [pc, #44]	@ 800270a0 <sys_chdir+0xb0>
80027070:	e5933000 	ldr	r3, [r3]
80027074:	e5933068 	ldr	r3, [r3, #104]	@ 0x68
80027078:	e1a00003 	mov	r0, r3
8002707c:	ebfff0a4 	bl	80023314 <iput>
80027080:	e59f3018 	ldr	r3, [pc, #24]	@ 800270a0 <sys_chdir+0xb0>
80027084:	e5933000 	ldr	r3, [r3]
80027088:	e51b2008 	ldr	r2, [fp, #-8]
8002708c:	e5832068 	str	r2, [r3, #104]	@ 0x68
80027090:	e3a03000 	mov	r3, #0
80027094:	e1a00003 	mov	r0, r3
80027098:	e24bd004 	sub	sp, fp, #4
8002709c:	e8bd8800 	pop	{fp, pc}
800270a0:	800afa4c 	.word	0x800afa4c

800270a4 <sys_exec>:
800270a4:	e92d4800 	push	{fp, lr}
800270a8:	e28db004 	add	fp, sp, #4
800270ac:	e24dd090 	sub	sp, sp, #144	@ 0x90
800270b0:	e24b300c 	sub	r3, fp, #12
800270b4:	e1a01003 	mov	r1, r3
800270b8:	e3a00000 	mov	r0, #0
800270bc:	ebfffc38 	bl	800261a4 <argstr>
800270c0:	e1a03000 	mov	r3, r0
800270c4:	e3530000 	cmp	r3, #0
800270c8:	ba000006 	blt	800270e8 <sys_exec+0x44>
800270cc:	e24b3090 	sub	r3, fp, #144	@ 0x90
800270d0:	e1a01003 	mov	r1, r3
800270d4:	e3a00001 	mov	r0, #1
800270d8:	ebfffbed 	bl	80026094 <argint>
800270dc:	e1a03000 	mov	r3, r0
800270e0:	e3530000 	cmp	r3, #0
800270e4:	aa000001 	bge	800270f0 <sys_exec+0x4c>
800270e8:	e3e03000 	mvn	r3, #0
800270ec:	ea00003a 	b	800271dc <sys_exec+0x138>
800270f0:	e24b308c 	sub	r3, fp, #140	@ 0x8c
800270f4:	e3a02080 	mov	r2, #128	@ 0x80
800270f8:	e3a01000 	mov	r1, #0
800270fc:	e1a00003 	mov	r0, r3
80027100:	ebffe3be 	bl	80020000 <memset>
80027104:	e3a03000 	mov	r3, #0
80027108:	e50b3008 	str	r3, [fp, #-8]
8002710c:	e51b3008 	ldr	r3, [fp, #-8]
80027110:	e353001f 	cmp	r3, #31
80027114:	9a000001 	bls	80027120 <sys_exec+0x7c>
80027118:	e3e03000 	mvn	r3, #0
8002711c:	ea00002e 	b	800271dc <sys_exec+0x138>
80027120:	e51b3008 	ldr	r3, [fp, #-8]
80027124:	e1a03103 	lsl	r3, r3, #2
80027128:	e1a02003 	mov	r2, r3
8002712c:	e51b3090 	ldr	r3, [fp, #-144]	@ 0xffffff70
80027130:	e0823003 	add	r3, r2, r3
80027134:	e24b2094 	sub	r2, fp, #148	@ 0x94
80027138:	e1a01002 	mov	r1, r2
8002713c:	e1a00003 	mov	r0, r3
80027140:	ebfffb87 	bl	80025f64 <fetchint>
80027144:	e1a03000 	mov	r3, r0
80027148:	e3530000 	cmp	r3, #0
8002714c:	aa000001 	bge	80027158 <sys_exec+0xb4>
80027150:	e3e03000 	mvn	r3, #0
80027154:	ea000020 	b	800271dc <sys_exec+0x138>
80027158:	e51b3094 	ldr	r3, [fp, #-148]	@ 0xffffff6c
8002715c:	e3530000 	cmp	r3, #0
80027160:	1a00000d 	bne	8002719c <sys_exec+0xf8>
80027164:	e51b3008 	ldr	r3, [fp, #-8]
80027168:	e1a03103 	lsl	r3, r3, #2
8002716c:	e2433004 	sub	r3, r3, #4
80027170:	e083300b 	add	r3, r3, fp
80027174:	e3a02000 	mov	r2, #0
80027178:	e5032088 	str	r2, [r3, #-136]	@ 0xffffff78
8002717c:	e1a00000 	nop			@ (mov r0, r0)
80027180:	e51b300c 	ldr	r3, [fp, #-12]
80027184:	e24b208c 	sub	r2, fp, #140	@ 0x8c
80027188:	e1a01002 	mov	r1, r2
8002718c:	e1a00003 	mov	r0, r3
80027190:	ebffeb96 	bl	80021ff0 <exec>
80027194:	e1a03000 	mov	r3, r0
80027198:	ea00000f 	b	800271dc <sys_exec+0x138>
8002719c:	e51b0094 	ldr	r0, [fp, #-148]	@ 0xffffff6c
800271a0:	e24b208c 	sub	r2, fp, #140	@ 0x8c
800271a4:	e51b3008 	ldr	r3, [fp, #-8]
800271a8:	e1a03103 	lsl	r3, r3, #2
800271ac:	e0823003 	add	r3, r2, r3
800271b0:	e1a01003 	mov	r1, r3
800271b4:	ebfffb88 	bl	80025fdc <fetchstr>
800271b8:	e1a03000 	mov	r3, r0
800271bc:	e3530000 	cmp	r3, #0
800271c0:	aa000001 	bge	800271cc <sys_exec+0x128>
800271c4:	e3e03000 	mvn	r3, #0
800271c8:	ea000003 	b	800271dc <sys_exec+0x138>
800271cc:	e51b3008 	ldr	r3, [fp, #-8]
800271d0:	e2833001 	add	r3, r3, #1
800271d4:	e50b3008 	str	r3, [fp, #-8]
800271d8:	eaffffcb 	b	8002710c <sys_exec+0x68>
800271dc:	e1a00003 	mov	r0, r3
800271e0:	e24bd004 	sub	sp, fp, #4
800271e4:	e8bd8800 	pop	{fp, pc}

800271e8 <sys_pipe>:
800271e8:	e92d4800 	push	{fp, lr}
800271ec:	e28db004 	add	fp, sp, #4
800271f0:	e24dd018 	sub	sp, sp, #24
800271f4:	e24b3010 	sub	r3, fp, #16
800271f8:	e3a02008 	mov	r2, #8
800271fc:	e1a01003 	mov	r1, r3
80027200:	e3a00000 	mov	r0, #0
80027204:	ebfffbbd 	bl	80026100 <argptr>
80027208:	e1a03000 	mov	r3, r0
8002720c:	e3530000 	cmp	r3, #0
80027210:	aa000001 	bge	8002721c <sys_pipe+0x34>
80027214:	e3e03000 	mvn	r3, #0
80027218:	ea000032 	b	800272e8 <sys_pipe+0x100>
8002721c:	e24b2018 	sub	r2, fp, #24
80027220:	e24b3014 	sub	r3, fp, #20
80027224:	e1a01002 	mov	r1, r2
80027228:	e1a00003 	mov	r0, r3
8002722c:	ebfff585 	bl	80024848 <pipealloc>
80027230:	e1a03000 	mov	r3, r0
80027234:	e3530000 	cmp	r3, #0
80027238:	aa000001 	bge	80027244 <sys_pipe+0x5c>
8002723c:	e3e03000 	mvn	r3, #0
80027240:	ea000028 	b	800272e8 <sys_pipe+0x100>
80027244:	e3e03000 	mvn	r3, #0
80027248:	e50b3008 	str	r3, [fp, #-8]
8002724c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027250:	e1a00003 	mov	r0, r3
80027254:	ebfffc4f 	bl	80026398 <fdalloc>
80027258:	e50b0008 	str	r0, [fp, #-8]
8002725c:	e51b3008 	ldr	r3, [fp, #-8]
80027260:	e3530000 	cmp	r3, #0
80027264:	ba000006 	blt	80027284 <sys_pipe+0x9c>
80027268:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002726c:	e1a00003 	mov	r0, r3
80027270:	ebfffc48 	bl	80026398 <fdalloc>
80027274:	e50b000c 	str	r0, [fp, #-12]
80027278:	e51b300c 	ldr	r3, [fp, #-12]
8002727c:	e3530000 	cmp	r3, #0
80027280:	aa000010 	bge	800272c8 <sys_pipe+0xe0>
80027284:	e51b3008 	ldr	r3, [fp, #-8]
80027288:	e3530000 	cmp	r3, #0
8002728c:	ba000005 	blt	800272a8 <sys_pipe+0xc0>
80027290:	e59f305c 	ldr	r3, [pc, #92]	@ 800272f4 <sys_pipe+0x10c>
80027294:	e5933000 	ldr	r3, [r3]
80027298:	e51b2008 	ldr	r2, [fp, #-8]
8002729c:	e282200a 	add	r2, r2, #10
800272a0:	e3a01000 	mov	r1, #0
800272a4:	e7831102 	str	r1, [r3, r2, lsl #2]
800272a8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800272ac:	e1a00003 	mov	r0, r3
800272b0:	ebffecc6 	bl	800225d0 <fileclose>
800272b4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800272b8:	e1a00003 	mov	r0, r3
800272bc:	ebffecc3 	bl	800225d0 <fileclose>
800272c0:	e3e03000 	mvn	r3, #0
800272c4:	ea000007 	b	800272e8 <sys_pipe+0x100>
800272c8:	e51b3010 	ldr	r3, [fp, #-16]
800272cc:	e51b2008 	ldr	r2, [fp, #-8]
800272d0:	e5832000 	str	r2, [r3]
800272d4:	e51b3010 	ldr	r3, [fp, #-16]
800272d8:	e2833004 	add	r3, r3, #4
800272dc:	e51b200c 	ldr	r2, [fp, #-12]
800272e0:	e5832000 	str	r2, [r3]
800272e4:	e3a03000 	mov	r3, #0
800272e8:	e1a00003 	mov	r0, r3
800272ec:	e24bd004 	sub	sp, fp, #4
800272f0:	e8bd8800 	pop	{fp, pc}
800272f4:	800afa4c 	.word	0x800afa4c

800272f8 <sys_fork>:
800272f8:	e92d4800 	push	{fp, lr}
800272fc:	e28db004 	add	fp, sp, #4
80027300:	ebfff7b1 	bl	800251cc <fork>
80027304:	e1a03000 	mov	r3, r0
80027308:	e1a00003 	mov	r0, r3
8002730c:	e8bd8800 	pop	{fp, pc}

80027310 <sys_exit>:
80027310:	e92d4800 	push	{fp, lr}
80027314:	e28db004 	add	fp, sp, #4
80027318:	ebfff82a 	bl	800253c8 <exit>
8002731c:	e3a03000 	mov	r3, #0
80027320:	e1a00003 	mov	r0, r3
80027324:	e8bd8800 	pop	{fp, pc}

80027328 <sys_wait>:
80027328:	e92d4800 	push	{fp, lr}
8002732c:	e28db004 	add	fp, sp, #4
80027330:	ebfff886 	bl	80025550 <wait>
80027334:	e1a03000 	mov	r3, r0
80027338:	e1a00003 	mov	r0, r3
8002733c:	e8bd8800 	pop	{fp, pc}

80027340 <sys_kill>:
80027340:	e92d4800 	push	{fp, lr}
80027344:	e28db004 	add	fp, sp, #4
80027348:	e24dd008 	sub	sp, sp, #8
8002734c:	e24b3008 	sub	r3, fp, #8
80027350:	e1a01003 	mov	r1, r3
80027354:	e3a00000 	mov	r0, #0
80027358:	ebfffb4d 	bl	80026094 <argint>
8002735c:	e1a03000 	mov	r3, r0
80027360:	e3530000 	cmp	r3, #0
80027364:	aa000001 	bge	80027370 <sys_kill+0x30>
80027368:	e3e03000 	mvn	r3, #0
8002736c:	ea000003 	b	80027380 <sys_kill+0x40>
80027370:	e51b3008 	ldr	r3, [fp, #-8]
80027374:	e1a00003 	mov	r0, r3
80027378:	ebfffa5d 	bl	80025cf4 <kill>
8002737c:	e1a03000 	mov	r3, r0
80027380:	e1a00003 	mov	r0, r3
80027384:	e24bd004 	sub	sp, fp, #4
80027388:	e8bd8800 	pop	{fp, pc}

8002738c <sys_getpid>:
8002738c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027390:	e28db000 	add	fp, sp, #0
80027394:	e59f3014 	ldr	r3, [pc, #20]	@ 800273b0 <sys_getpid+0x24>
80027398:	e5933000 	ldr	r3, [r3]
8002739c:	e5933010 	ldr	r3, [r3, #16]
800273a0:	e1a00003 	mov	r0, r3
800273a4:	e28bd000 	add	sp, fp, #0
800273a8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800273ac:	e12fff1e 	bx	lr
800273b0:	800afa4c 	.word	0x800afa4c

800273b4 <sys_sbrk>:
800273b4:	e92d4800 	push	{fp, lr}
800273b8:	e28db004 	add	fp, sp, #4
800273bc:	e24dd008 	sub	sp, sp, #8
800273c0:	e24b300c 	sub	r3, fp, #12
800273c4:	e1a01003 	mov	r1, r3
800273c8:	e3a00000 	mov	r0, #0
800273cc:	ebfffb30 	bl	80026094 <argint>
800273d0:	e1a03000 	mov	r3, r0
800273d4:	e3530000 	cmp	r3, #0
800273d8:	aa000001 	bge	800273e4 <sys_sbrk+0x30>
800273dc:	e3e03000 	mvn	r3, #0
800273e0:	ea00000c 	b	80027418 <sys_sbrk+0x64>
800273e4:	e59f3038 	ldr	r3, [pc, #56]	@ 80027424 <sys_sbrk+0x70>
800273e8:	e5933000 	ldr	r3, [r3]
800273ec:	e5933000 	ldr	r3, [r3]
800273f0:	e50b3008 	str	r3, [fp, #-8]
800273f4:	e51b300c 	ldr	r3, [fp, #-12]
800273f8:	e1a00003 	mov	r0, r3
800273fc:	ebfff737 	bl	800250e0 <growproc>
80027400:	e1a03000 	mov	r3, r0
80027404:	e3530000 	cmp	r3, #0
80027408:	aa000001 	bge	80027414 <sys_sbrk+0x60>
8002740c:	e3e03000 	mvn	r3, #0
80027410:	ea000000 	b	80027418 <sys_sbrk+0x64>
80027414:	e51b3008 	ldr	r3, [fp, #-8]
80027418:	e1a00003 	mov	r0, r3
8002741c:	e24bd004 	sub	sp, fp, #4
80027420:	e8bd8800 	pop	{fp, pc}
80027424:	800afa4c 	.word	0x800afa4c

80027428 <sys_sleep>:
80027428:	e92d4800 	push	{fp, lr}
8002742c:	e28db004 	add	fp, sp, #4
80027430:	e24dd008 	sub	sp, sp, #8
80027434:	e24b300c 	sub	r3, fp, #12
80027438:	e1a01003 	mov	r1, r3
8002743c:	e3a00000 	mov	r0, #0
80027440:	ebfffb13 	bl	80026094 <argint>
80027444:	e1a03000 	mov	r3, r0
80027448:	e3530000 	cmp	r3, #0
8002744c:	aa000001 	bge	80027458 <sys_sleep+0x30>
80027450:	e3e03000 	mvn	r3, #0
80027454:	ea000023 	b	800274e8 <sys_sleep+0xc0>
80027458:	e59f0094 	ldr	r0, [pc, #148]	@ 800274f4 <sys_sleep+0xcc>
8002745c:	ebfffa9b 	bl	80025ed0 <acquire>
80027460:	e59f3090 	ldr	r3, [pc, #144]	@ 800274f8 <sys_sleep+0xd0>
80027464:	e5933000 	ldr	r3, [r3]
80027468:	e50b3008 	str	r3, [fp, #-8]
8002746c:	e59f3084 	ldr	r3, [pc, #132]	@ 800274f8 <sys_sleep+0xd0>
80027470:	e5932000 	ldr	r2, [r3]
80027474:	e51b300c 	ldr	r3, [fp, #-12]
80027478:	e1a01003 	mov	r1, r3
8002747c:	e59f3078 	ldr	r3, [pc, #120]	@ 800274fc <sys_sleep+0xd4>
80027480:	e5933000 	ldr	r3, [r3]
80027484:	e0822001 	add	r2, r2, r1
80027488:	e583208c 	str	r2, [r3, #140]	@ 0x8c
8002748c:	ea00000b 	b	800274c0 <sys_sleep+0x98>
80027490:	e59f3064 	ldr	r3, [pc, #100]	@ 800274fc <sys_sleep+0xd4>
80027494:	e5933000 	ldr	r3, [r3]
80027498:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
8002749c:	e3530000 	cmp	r3, #0
800274a0:	0a000003 	beq	800274b4 <sys_sleep+0x8c>
800274a4:	e59f0048 	ldr	r0, [pc, #72]	@ 800274f4 <sys_sleep+0xcc>
800274a8:	ebfffa93 	bl	80025efc <release>
800274ac:	e3e03000 	mvn	r3, #0
800274b0:	ea00000c 	b	800274e8 <sys_sleep+0xc0>
800274b4:	e59f1038 	ldr	r1, [pc, #56]	@ 800274f4 <sys_sleep+0xcc>
800274b8:	e59f0038 	ldr	r0, [pc, #56]	@ 800274f8 <sys_sleep+0xd0>
800274bc:	ebfff964 	bl	80025a54 <sleep>
800274c0:	e59f3030 	ldr	r3, [pc, #48]	@ 800274f8 <sys_sleep+0xd0>
800274c4:	e5932000 	ldr	r2, [r3]
800274c8:	e51b3008 	ldr	r3, [fp, #-8]
800274cc:	e0423003 	sub	r3, r2, r3
800274d0:	e51b200c 	ldr	r2, [fp, #-12]
800274d4:	e1530002 	cmp	r3, r2
800274d8:	3affffec 	bcc	80027490 <sys_sleep+0x68>
800274dc:	e59f0010 	ldr	r0, [pc, #16]	@ 800274f4 <sys_sleep+0xcc>
800274e0:	ebfffa85 	bl	80025efc <release>
800274e4:	e3a03000 	mov	r3, #0
800274e8:	e1a00003 	mov	r0, r3
800274ec:	e24bd004 	sub	sp, fp, #4
800274f0:	e8bd8800 	pop	{fp, pc}
800274f4:	800afb10 	.word	0x800afb10
800274f8:	800afb44 	.word	0x800afb44
800274fc:	800afa4c 	.word	0x800afa4c

80027500 <sys_settickets>:
80027500:	e92d4800 	push	{fp, lr}
80027504:	e28db004 	add	fp, sp, #4
80027508:	e24dd010 	sub	sp, sp, #16
8002750c:	e24b3010 	sub	r3, fp, #16
80027510:	e1a01003 	mov	r1, r3
80027514:	e3a00000 	mov	r0, #0
80027518:	ebfffadd 	bl	80026094 <argint>
8002751c:	e1a03000 	mov	r3, r0
80027520:	e3530000 	cmp	r3, #0
80027524:	aa000001 	bge	80027530 <sys_settickets+0x30>
80027528:	e3e03000 	mvn	r3, #0
8002752c:	ea00002d 	b	800275e8 <sys_settickets+0xe8>
80027530:	e24b3014 	sub	r3, fp, #20
80027534:	e1a01003 	mov	r1, r3
80027538:	e3a00001 	mov	r0, #1
8002753c:	ebfffad4 	bl	80026094 <argint>
80027540:	e1a03000 	mov	r3, r0
80027544:	e3530000 	cmp	r3, #0
80027548:	aa000001 	bge	80027554 <sys_settickets+0x54>
8002754c:	e3e03000 	mvn	r3, #0
80027550:	ea000024 	b	800275e8 <sys_settickets+0xe8>
80027554:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80027558:	e3530000 	cmp	r3, #0
8002755c:	ca000001 	bgt	80027568 <sys_settickets+0x68>
80027560:	e3e03000 	mvn	r3, #0
80027564:	ea00001f 	b	800275e8 <sys_settickets+0xe8>
80027568:	e59f0084 	ldr	r0, [pc, #132]	@ 800275f4 <sys_settickets+0xf4>
8002756c:	ebfffa57 	bl	80025ed0 <acquire>
80027570:	e3e03000 	mvn	r3, #0
80027574:	e50b300c 	str	r3, [fp, #-12]
80027578:	e59f3078 	ldr	r3, [pc, #120]	@ 800275f8 <sys_settickets+0xf8>
8002757c:	e50b3008 	str	r3, [fp, #-8]
80027580:	ea000011 	b	800275cc <sys_settickets+0xcc>
80027584:	e51b3008 	ldr	r3, [fp, #-8]
80027588:	e5932010 	ldr	r2, [r3, #16]
8002758c:	e51b3010 	ldr	r3, [fp, #-16]
80027590:	e1520003 	cmp	r2, r3
80027594:	1a000009 	bne	800275c0 <sys_settickets+0xc0>
80027598:	e51b3008 	ldr	r3, [fp, #-8]
8002759c:	e5d3300c 	ldrb	r3, [r3, #12]
800275a0:	e3530000 	cmp	r3, #0
800275a4:	0a000005 	beq	800275c0 <sys_settickets+0xc0>
800275a8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
800275ac:	e51b3008 	ldr	r3, [fp, #-8]
800275b0:	e583207c 	str	r2, [r3, #124]	@ 0x7c
800275b4:	e3a03000 	mov	r3, #0
800275b8:	e50b300c 	str	r3, [fp, #-12]
800275bc:	ea000006 	b	800275dc <sys_settickets+0xdc>
800275c0:	e51b3008 	ldr	r3, [fp, #-8]
800275c4:	e2833090 	add	r3, r3, #144	@ 0x90
800275c8:	e50b3008 	str	r3, [fp, #-8]
800275cc:	e51b3008 	ldr	r3, [fp, #-8]
800275d0:	e59f2024 	ldr	r2, [pc, #36]	@ 800275fc <sys_settickets+0xfc>
800275d4:	e1530002 	cmp	r3, r2
800275d8:	3affffe9 	bcc	80027584 <sys_settickets+0x84>
800275dc:	e59f0010 	ldr	r0, [pc, #16]	@ 800275f4 <sys_settickets+0xf4>
800275e0:	ebfffa45 	bl	80025efc <release>
800275e4:	e51b300c 	ldr	r3, [fp, #-12]
800275e8:	e1a00003 	mov	r0, r3
800275ec:	e24bd004 	sub	sp, fp, #4
800275f0:	e8bd8800 	pop	{fp, pc}
800275f4:	800ad614 	.word	0x800ad614
800275f8:	800ad648 	.word	0x800ad648
800275fc:	800afa48 	.word	0x800afa48

80027600 <sys_srand>:
80027600:	e92d4800 	push	{fp, lr}
80027604:	e28db004 	add	fp, sp, #4
80027608:	e24dd008 	sub	sp, sp, #8
8002760c:	e24b3008 	sub	r3, fp, #8
80027610:	e1a01003 	mov	r1, r3
80027614:	e3a00000 	mov	r0, #0
80027618:	ebfffa9d 	bl	80026094 <argint>
8002761c:	e1a03000 	mov	r3, r0
80027620:	e3530000 	cmp	r3, #0
80027624:	aa000001 	bge	80027630 <sys_srand+0x30>
80027628:	e3e03000 	mvn	r3, #0
8002762c:	ea000004 	b	80027644 <sys_srand+0x44>
80027630:	e51b3008 	ldr	r3, [fp, #-8]
80027634:	e1a02003 	mov	r2, r3
80027638:	e59f3010 	ldr	r3, [pc, #16]	@ 80027650 <sys_srand+0x50>
8002763c:	e5832000 	str	r2, [r3]
80027640:	e3a03000 	mov	r3, #0
80027644:	e1a00003 	mov	r0, r3
80027648:	e24bd004 	sub	sp, fp, #4
8002764c:	e8bd8800 	pop	{fp, pc}
80027650:	800ad610 	.word	0x800ad610

80027654 <sys_getpinfo>:
80027654:	e92d4800 	push	{fp, lr}
80027658:	e28db004 	add	fp, sp, #4
8002765c:	e24dd010 	sub	sp, sp, #16
80027660:	e24b3010 	sub	r3, fp, #16
80027664:	e3a02c05 	mov	r2, #1280	@ 0x500
80027668:	e1a01003 	mov	r1, r3
8002766c:	e3a00000 	mov	r0, #0
80027670:	ebfffaa2 	bl	80026100 <argptr>
80027674:	e1a03000 	mov	r3, r0
80027678:	e3530000 	cmp	r3, #0
8002767c:	aa000001 	bge	80027688 <sys_getpinfo+0x34>
80027680:	e3e03000 	mvn	r3, #0
80027684:	ea000035 	b	80027760 <sys_getpinfo+0x10c>
80027688:	e59f00dc 	ldr	r0, [pc, #220]	@ 8002776c <sys_getpinfo+0x118>
8002768c:	ebfffa0f 	bl	80025ed0 <acquire>
80027690:	e3a03000 	mov	r3, #0
80027694:	e50b3008 	str	r3, [fp, #-8]
80027698:	e59f30d0 	ldr	r3, [pc, #208]	@ 80027770 <sys_getpinfo+0x11c>
8002769c:	e50b300c 	str	r3, [fp, #-12]
800276a0:	ea000027 	b	80027744 <sys_getpinfo+0xf0>
800276a4:	e51b300c 	ldr	r3, [fp, #-12]
800276a8:	e5d3300c 	ldrb	r3, [r3, #12]
800276ac:	e3530000 	cmp	r3, #0
800276b0:	13a03001 	movne	r3, #1
800276b4:	03a03000 	moveq	r3, #0
800276b8:	e6ef2073 	uxtb	r2, r3
800276bc:	e51b3010 	ldr	r3, [fp, #-16]
800276c0:	e1a01002 	mov	r1, r2
800276c4:	e51b2008 	ldr	r2, [fp, #-8]
800276c8:	e7831102 	str	r1, [r3, r2, lsl #2]
800276cc:	e51b3010 	ldr	r3, [fp, #-16]
800276d0:	e51b200c 	ldr	r2, [fp, #-12]
800276d4:	e5921010 	ldr	r1, [r2, #16]
800276d8:	e51b2008 	ldr	r2, [fp, #-8]
800276dc:	e2822040 	add	r2, r2, #64	@ 0x40
800276e0:	e7831102 	str	r1, [r3, r2, lsl #2]
800276e4:	e51b3010 	ldr	r3, [fp, #-16]
800276e8:	e51b200c 	ldr	r2, [fp, #-12]
800276ec:	e592107c 	ldr	r1, [r2, #124]	@ 0x7c
800276f0:	e51b2008 	ldr	r2, [fp, #-8]
800276f4:	e2822080 	add	r2, r2, #128	@ 0x80
800276f8:	e7831102 	str	r1, [r3, r2, lsl #2]
800276fc:	e51b3010 	ldr	r3, [fp, #-16]
80027700:	e51b200c 	ldr	r2, [fp, #-12]
80027704:	e5921084 	ldr	r1, [r2, #132]	@ 0x84
80027708:	e51b2008 	ldr	r2, [fp, #-8]
8002770c:	e28220c0 	add	r2, r2, #192	@ 0xc0
80027710:	e7831102 	str	r1, [r3, r2, lsl #2]
80027714:	e51b3010 	ldr	r3, [fp, #-16]
80027718:	e51b200c 	ldr	r2, [fp, #-12]
8002771c:	e5921080 	ldr	r1, [r2, #128]	@ 0x80
80027720:	e51b2008 	ldr	r2, [fp, #-8]
80027724:	e2822c01 	add	r2, r2, #256	@ 0x100
80027728:	e7831102 	str	r1, [r3, r2, lsl #2]
8002772c:	e51b300c 	ldr	r3, [fp, #-12]
80027730:	e2833090 	add	r3, r3, #144	@ 0x90
80027734:	e50b300c 	str	r3, [fp, #-12]
80027738:	e51b3008 	ldr	r3, [fp, #-8]
8002773c:	e2833001 	add	r3, r3, #1
80027740:	e50b3008 	str	r3, [fp, #-8]
80027744:	e51b300c 	ldr	r3, [fp, #-12]
80027748:	e59f2024 	ldr	r2, [pc, #36]	@ 80027774 <sys_getpinfo+0x120>
8002774c:	e1530002 	cmp	r3, r2
80027750:	3affffd3 	bcc	800276a4 <sys_getpinfo+0x50>
80027754:	e59f0010 	ldr	r0, [pc, #16]	@ 8002776c <sys_getpinfo+0x118>
80027758:	ebfff9e7 	bl	80025efc <release>
8002775c:	e3a03000 	mov	r3, #0
80027760:	e1a00003 	mov	r0, r3
80027764:	e24bd004 	sub	sp, fp, #4
80027768:	e8bd8800 	pop	{fp, pc}
8002776c:	800ad614 	.word	0x800ad614
80027770:	800ad648 	.word	0x800ad648
80027774:	800afa48 	.word	0x800afa48

80027778 <sys_uptime>:
80027778:	e92d4800 	push	{fp, lr}
8002777c:	e28db004 	add	fp, sp, #4
80027780:	e24dd008 	sub	sp, sp, #8
80027784:	e59f0024 	ldr	r0, [pc, #36]	@ 800277b0 <sys_uptime+0x38>
80027788:	ebfff9d0 	bl	80025ed0 <acquire>
8002778c:	e59f3020 	ldr	r3, [pc, #32]	@ 800277b4 <sys_uptime+0x3c>
80027790:	e5933000 	ldr	r3, [r3]
80027794:	e50b3008 	str	r3, [fp, #-8]
80027798:	e59f0010 	ldr	r0, [pc, #16]	@ 800277b0 <sys_uptime+0x38>
8002779c:	ebfff9d6 	bl	80025efc <release>
800277a0:	e51b3008 	ldr	r3, [fp, #-8]
800277a4:	e1a00003 	mov	r0, r3
800277a8:	e24bd004 	sub	sp, fp, #4
800277ac:	e8bd8800 	pop	{fp, pc}
800277b0:	800afb10 	.word	0x800afb10
800277b4:	800afb44 	.word	0x800afb44

800277b8 <trap_swi>:
800277b8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800277bc:	e14f2000 	mrs	r2, SPSR
800277c0:	e92d0004 	stmfd	sp!, {r2}
800277c4:	e92d4000 	stmfd	sp!, {lr}
800277c8:	e94d6000 	stmdb	sp, {sp, lr}^
800277cc:	e24dd008 	sub	sp, sp, #8
800277d0:	e1a0000d 	mov	r0, sp
800277d4:	eb000054 	bl	8002792c <swi_handler>

800277d8 <trapret>:
800277d8:	e8dd6000 	ldm	sp, {sp, lr}^
800277dc:	e28dd008 	add	sp, sp, #8
800277e0:	e8bd4000 	ldmfd	sp!, {lr}
800277e4:	e8bd0004 	ldmfd	sp!, {r2}
800277e8:	e16ff002 	msr	SPSR_fsxc, r2
800277ec:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

800277f0 <trap_irq>:
800277f0:	e24ee004 	sub	lr, lr, #4
800277f4:	e92d4007 	push	{r0, r1, r2, lr}
800277f8:	e14f1000 	mrs	r1, SPSR
800277fc:	e1a0000d 	mov	r0, sp
80027800:	e28dd010 	add	sp, sp, #16
80027804:	e10f2000 	mrs	r2, CPSR
80027808:	e3c2201f 	bic	r2, r2, #31
8002780c:	e3822013 	orr	r2, r2, #19
80027810:	e12ff002 	msr	CPSR_fsxc, r2
80027814:	e590200c 	ldr	r2, [r0, #12]
80027818:	e92d0004 	stmfd	sp!, {r2}
8002781c:	e92d1ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
80027820:	e8900038 	ldm	r0, {r3, r4, r5}
80027824:	e92d0038 	push	{r3, r4, r5}
80027828:	e92d0002 	stmfd	sp!, {r1}
8002782c:	e92d4000 	stmfd	sp!, {lr}
80027830:	e94d6000 	stmdb	sp, {sp, lr}^
80027834:	e24dd008 	sub	sp, sp, #8
80027838:	e1a0000d 	mov	r0, sp
8002783c:	eb000047 	bl	80027960 <irq_handler>
80027840:	eaffffe4 	b	800277d8 <trapret>

80027844 <trap_reset>:
80027844:	e3a0e000 	mov	lr, #0
80027848:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002784c:	e14f2000 	mrs	r2, SPSR
80027850:	e92d0004 	stmfd	sp!, {r2}
80027854:	e92d4000 	stmfd	sp!, {lr}
80027858:	e94d6000 	stmdb	sp, {sp, lr}^
8002785c:	e24dd008 	sub	sp, sp, #8
80027860:	e1a0000d 	mov	r0, sp
80027864:	eb00004f 	bl	800279a8 <reset_handler>
80027868:	eafffffe 	b	80027868 <trap_reset+0x24>

8002786c <trap_und>:
8002786c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027870:	e14f2000 	mrs	r2, SPSR
80027874:	e92d0004 	stmfd	sp!, {r2}
80027878:	e92d4000 	stmfd	sp!, {lr}
8002787c:	e94d6000 	stmdb	sp, {sp, lr}^
80027880:	e24dd008 	sub	sp, sp, #8
80027884:	e1a0000d 	mov	r0, sp
80027888:	eb000054 	bl	800279e0 <und_handler>
8002788c:	eafffffe 	b	8002788c <trap_und+0x20>

80027890 <trap_iabort>:
80027890:	e24ee004 	sub	lr, lr, #4
80027894:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
80027898:	e14f2000 	mrs	r2, SPSR
8002789c:	e92d0004 	stmfd	sp!, {r2}
800278a0:	e92d4000 	stmfd	sp!, {lr}
800278a4:	e94d6000 	stmdb	sp, {sp, lr}^
800278a8:	e24dd008 	sub	sp, sp, #8
800278ac:	e1a0000d 	mov	r0, sp
800278b0:	eb00006d 	bl	80027a6c <iabort_handler>
800278b4:	eafffffe 	b	800278b4 <trap_iabort+0x24>

800278b8 <trap_dabort>:
800278b8:	e24ee008 	sub	lr, lr, #8
800278bc:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800278c0:	e14f2000 	mrs	r2, SPSR
800278c4:	e92d0004 	stmfd	sp!, {r2}
800278c8:	e92d4000 	stmfd	sp!, {lr}
800278cc:	e94d6000 	stmdb	sp, {sp, lr}^
800278d0:	e24dd008 	sub	sp, sp, #8
800278d4:	e1a0000d 	mov	r0, sp
800278d8:	eb00004e 	bl	80027a18 <dabort_handler>
800278dc:	eafffffe 	b	800278dc <trap_dabort+0x24>

800278e0 <trap_na>:
800278e0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
800278e4:	e14f2000 	mrs	r2, SPSR
800278e8:	e92d0004 	stmfd	sp!, {r2}
800278ec:	e92d4000 	stmfd	sp!, {lr}
800278f0:	e94d6000 	stmdb	sp, {sp, lr}^
800278f4:	e24dd008 	sub	sp, sp, #8
800278f8:	e1a0000d 	mov	r0, sp
800278fc:	eb00006d 	bl	80027ab8 <na_handler>
80027900:	eafffffe 	b	80027900 <trap_na+0x20>

80027904 <trap_fiq>:
80027904:	e24ee004 	sub	lr, lr, #4
80027908:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
8002790c:	e14f2000 	mrs	r2, SPSR
80027910:	e92d0004 	stmfd	sp!, {r2}
80027914:	e92d4000 	stmfd	sp!, {lr}
80027918:	e94d6000 	stmdb	sp, {sp, lr}^
8002791c:	e24dd008 	sub	sp, sp, #8
80027920:	e1a0000d 	mov	r0, sp
80027924:	eb000071 	bl	80027af0 <fiq_handler>
80027928:	eafffffe 	b	80027928 <trap_fiq+0x24>

8002792c <swi_handler>:
8002792c:	e92d4800 	push	{fp, lr}
80027930:	e28db004 	add	fp, sp, #4
80027934:	e24dd008 	sub	sp, sp, #8
80027938:	e50b0008 	str	r0, [fp, #-8]
8002793c:	e59f3018 	ldr	r3, [pc, #24]	@ 8002795c <swi_handler+0x30>
80027940:	e5933000 	ldr	r3, [r3]
80027944:	e51b2008 	ldr	r2, [fp, #-8]
80027948:	e5832018 	str	r2, [r3, #24]
8002794c:	ebfffa2a 	bl	800261fc <syscall>
80027950:	e1a00000 	nop			@ (mov r0, r0)
80027954:	e24bd004 	sub	sp, fp, #4
80027958:	e8bd8800 	pop	{fp, pc}
8002795c:	800afa4c 	.word	0x800afa4c

80027960 <irq_handler>:
80027960:	e92d4800 	push	{fp, lr}
80027964:	e28db004 	add	fp, sp, #4
80027968:	e24dd008 	sub	sp, sp, #8
8002796c:	e50b0008 	str	r0, [fp, #-8]
80027970:	e59f302c 	ldr	r3, [pc, #44]	@ 800279a4 <irq_handler+0x44>
80027974:	e5933000 	ldr	r3, [r3]
80027978:	e3530000 	cmp	r3, #0
8002797c:	0a000003 	beq	80027990 <irq_handler+0x30>
80027980:	e59f301c 	ldr	r3, [pc, #28]	@ 800279a4 <irq_handler+0x44>
80027984:	e5933000 	ldr	r3, [r3]
80027988:	e51b2008 	ldr	r2, [fp, #-8]
8002798c:	e5832018 	str	r2, [r3, #24]
80027990:	e51b0008 	ldr	r0, [fp, #-8]
80027994:	eb0004d9 	bl	80028d00 <pic_dispatch>
80027998:	e1a00000 	nop			@ (mov r0, r0)
8002799c:	e24bd004 	sub	sp, fp, #4
800279a0:	e8bd8800 	pop	{fp, pc}
800279a4:	800afa4c 	.word	0x800afa4c

800279a8 <reset_handler>:
800279a8:	e92d4800 	push	{fp, lr}
800279ac:	e28db004 	add	fp, sp, #4
800279b0:	e24dd008 	sub	sp, sp, #8
800279b4:	e50b0008 	str	r0, [fp, #-8]
800279b8:	ebffe2e0 	bl	80020540 <cli>
800279bc:	e51b3008 	ldr	r3, [fp, #-8]
800279c0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800279c4:	e1a01003 	mov	r1, r3
800279c8:	e59f000c 	ldr	r0, [pc, #12]	@ 800279dc <reset_handler+0x34>
800279cc:	ebffe7b0 	bl	80021894 <cprintf>
800279d0:	e1a00000 	nop			@ (mov r0, r0)
800279d4:	e24bd004 	sub	sp, fp, #4
800279d8:	e8bd8800 	pop	{fp, pc}
800279dc:	800298a8 	.word	0x800298a8

800279e0 <und_handler>:
800279e0:	e92d4800 	push	{fp, lr}
800279e4:	e28db004 	add	fp, sp, #4
800279e8:	e24dd008 	sub	sp, sp, #8
800279ec:	e50b0008 	str	r0, [fp, #-8]
800279f0:	ebffe2d2 	bl	80020540 <cli>
800279f4:	e51b3008 	ldr	r3, [fp, #-8]
800279f8:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
800279fc:	e1a01003 	mov	r1, r3
80027a00:	e59f000c 	ldr	r0, [pc, #12]	@ 80027a14 <und_handler+0x34>
80027a04:	ebffe7a2 	bl	80021894 <cprintf>
80027a08:	e1a00000 	nop			@ (mov r0, r0)
80027a0c:	e24bd004 	sub	sp, fp, #4
80027a10:	e8bd8800 	pop	{fp, pc}
80027a14:	800298bc 	.word	0x800298bc

80027a18 <dabort_handler>:
80027a18:	e92d4800 	push	{fp, lr}
80027a1c:	e28db004 	add	fp, sp, #4
80027a20:	e24dd010 	sub	sp, sp, #16
80027a24:	e50b0010 	str	r0, [fp, #-16]
80027a28:	ebffe2c4 	bl	80020540 <cli>
80027a2c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027a30:	e50b3008 	str	r3, [fp, #-8]
80027a34:	ee163f10 	mrc	15, 0, r3, cr6, cr0, {0}
80027a38:	e50b300c 	str	r3, [fp, #-12]
80027a3c:	e51b3010 	ldr	r3, [fp, #-16]
80027a40:	e5931044 	ldr	r1, [r3, #68]	@ 0x44
80027a44:	e51b3008 	ldr	r3, [fp, #-8]
80027a48:	e51b200c 	ldr	r2, [fp, #-12]
80027a4c:	e59f0014 	ldr	r0, [pc, #20]	@ 80027a68 <dabort_handler+0x50>
80027a50:	ebffe78f 	bl	80021894 <cprintf>
80027a54:	e51b0010 	ldr	r0, [fp, #-16]
80027a58:	eb0000b3 	bl	80027d2c <dump_trapframe>
80027a5c:	e1a00000 	nop			@ (mov r0, r0)
80027a60:	e24bd004 	sub	sp, fp, #4
80027a64:	e8bd8800 	pop	{fp, pc}
80027a68:	800298cc 	.word	0x800298cc

80027a6c <iabort_handler>:
80027a6c:	e92d4800 	push	{fp, lr}
80027a70:	e28db004 	add	fp, sp, #4
80027a74:	e24dd010 	sub	sp, sp, #16
80027a78:	e50b0010 	str	r0, [fp, #-16]
80027a7c:	ee153f10 	mrc	15, 0, r3, cr5, cr0, {0}
80027a80:	e50b3008 	str	r3, [fp, #-8]
80027a84:	ebffe2ad 	bl	80020540 <cli>
80027a88:	e51b3010 	ldr	r3, [fp, #-16]
80027a8c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027a90:	e51b2008 	ldr	r2, [fp, #-8]
80027a94:	e1a01003 	mov	r1, r3
80027a98:	e59f0014 	ldr	r0, [pc, #20]	@ 80027ab4 <iabort_handler+0x48>
80027a9c:	ebffe77c 	bl	80021894 <cprintf>
80027aa0:	e51b0010 	ldr	r0, [fp, #-16]
80027aa4:	eb0000a0 	bl	80027d2c <dump_trapframe>
80027aa8:	e1a00000 	nop			@ (mov r0, r0)
80027aac:	e24bd004 	sub	sp, fp, #4
80027ab0:	e8bd8800 	pop	{fp, pc}
80027ab4:	8002990c 	.word	0x8002990c

80027ab8 <na_handler>:
80027ab8:	e92d4800 	push	{fp, lr}
80027abc:	e28db004 	add	fp, sp, #4
80027ac0:	e24dd008 	sub	sp, sp, #8
80027ac4:	e50b0008 	str	r0, [fp, #-8]
80027ac8:	ebffe29c 	bl	80020540 <cli>
80027acc:	e51b3008 	ldr	r3, [fp, #-8]
80027ad0:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027ad4:	e1a01003 	mov	r1, r3
80027ad8:	e59f000c 	ldr	r0, [pc, #12]	@ 80027aec <na_handler+0x34>
80027adc:	ebffe76c 	bl	80021894 <cprintf>
80027ae0:	e1a00000 	nop			@ (mov r0, r0)
80027ae4:	e24bd004 	sub	sp, fp, #4
80027ae8:	e8bd8800 	pop	{fp, pc}
80027aec:	80029934 	.word	0x80029934

80027af0 <fiq_handler>:
80027af0:	e92d4800 	push	{fp, lr}
80027af4:	e28db004 	add	fp, sp, #4
80027af8:	e24dd008 	sub	sp, sp, #8
80027afc:	e50b0008 	str	r0, [fp, #-8]
80027b00:	ebffe28e 	bl	80020540 <cli>
80027b04:	e51b3008 	ldr	r3, [fp, #-8]
80027b08:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027b0c:	e1a01003 	mov	r1, r3
80027b10:	e59f000c 	ldr	r0, [pc, #12]	@ 80027b24 <fiq_handler+0x34>
80027b14:	ebffe75e 	bl	80021894 <cprintf>
80027b18:	e1a00000 	nop			@ (mov r0, r0)
80027b1c:	e24bd004 	sub	sp, fp, #4
80027b20:	e8bd8800 	pop	{fp, pc}
80027b24:	80029944 	.word	0x80029944

80027b28 <trap_init>:
80027b28:	e92d4800 	push	{fp, lr}
80027b2c:	e28db004 	add	fp, sp, #4
80027b30:	e24dd020 	sub	sp, sp, #32
80027b34:	e59f31c0 	ldr	r3, [pc, #448]	@ 80027cfc <trap_init+0x1d4>
80027b38:	e24bc020 	sub	ip, fp, #32
80027b3c:	e893000f 	ldm	r3, {r0, r1, r2, r3}
80027b40:	e88c000f 	stm	ip, {r0, r1, r2, r3}
80027b44:	e59f31b4 	ldr	r3, [pc, #436]	@ 80027d00 <trap_init+0x1d8>
80027b48:	e50b300c 	str	r3, [fp, #-12]
80027b4c:	e59f31b0 	ldr	r3, [pc, #432]	@ 80027d04 <trap_init+0x1dc>
80027b50:	e5933000 	ldr	r3, [r3]
80027b54:	e3832018 	orr	r2, r3, #24
80027b58:	e51b300c 	ldr	r3, [fp, #-12]
80027b5c:	e5832000 	str	r2, [r3]
80027b60:	e59f319c 	ldr	r3, [pc, #412]	@ 80027d04 <trap_init+0x1dc>
80027b64:	e5932000 	ldr	r2, [r3]
80027b68:	e51b300c 	ldr	r3, [fp, #-12]
80027b6c:	e2833004 	add	r3, r3, #4
80027b70:	e3822018 	orr	r2, r2, #24
80027b74:	e5832000 	str	r2, [r3]
80027b78:	e59f3184 	ldr	r3, [pc, #388]	@ 80027d04 <trap_init+0x1dc>
80027b7c:	e5932000 	ldr	r2, [r3]
80027b80:	e51b300c 	ldr	r3, [fp, #-12]
80027b84:	e2833008 	add	r3, r3, #8
80027b88:	e3822018 	orr	r2, r2, #24
80027b8c:	e5832000 	str	r2, [r3]
80027b90:	e59f316c 	ldr	r3, [pc, #364]	@ 80027d04 <trap_init+0x1dc>
80027b94:	e5932000 	ldr	r2, [r3]
80027b98:	e51b300c 	ldr	r3, [fp, #-12]
80027b9c:	e283300c 	add	r3, r3, #12
80027ba0:	e3822018 	orr	r2, r2, #24
80027ba4:	e5832000 	str	r2, [r3]
80027ba8:	e59f3154 	ldr	r3, [pc, #340]	@ 80027d04 <trap_init+0x1dc>
80027bac:	e5932000 	ldr	r2, [r3]
80027bb0:	e51b300c 	ldr	r3, [fp, #-12]
80027bb4:	e2833010 	add	r3, r3, #16
80027bb8:	e3822018 	orr	r2, r2, #24
80027bbc:	e5832000 	str	r2, [r3]
80027bc0:	e59f313c 	ldr	r3, [pc, #316]	@ 80027d04 <trap_init+0x1dc>
80027bc4:	e5932000 	ldr	r2, [r3]
80027bc8:	e51b300c 	ldr	r3, [fp, #-12]
80027bcc:	e2833014 	add	r3, r3, #20
80027bd0:	e3822018 	orr	r2, r2, #24
80027bd4:	e5832000 	str	r2, [r3]
80027bd8:	e59f3124 	ldr	r3, [pc, #292]	@ 80027d04 <trap_init+0x1dc>
80027bdc:	e5932000 	ldr	r2, [r3]
80027be0:	e51b300c 	ldr	r3, [fp, #-12]
80027be4:	e2833018 	add	r3, r3, #24
80027be8:	e3822018 	orr	r2, r2, #24
80027bec:	e5832000 	str	r2, [r3]
80027bf0:	e59f310c 	ldr	r3, [pc, #268]	@ 80027d04 <trap_init+0x1dc>
80027bf4:	e5932000 	ldr	r2, [r3]
80027bf8:	e51b300c 	ldr	r3, [fp, #-12]
80027bfc:	e283301c 	add	r3, r3, #28
80027c00:	e3822018 	orr	r2, r2, #24
80027c04:	e5832000 	str	r2, [r3]
80027c08:	e51b300c 	ldr	r3, [fp, #-12]
80027c0c:	e2833020 	add	r3, r3, #32
80027c10:	e59f20f0 	ldr	r2, [pc, #240]	@ 80027d08 <trap_init+0x1e0>
80027c14:	e5832000 	str	r2, [r3]
80027c18:	e51b300c 	ldr	r3, [fp, #-12]
80027c1c:	e2833024 	add	r3, r3, #36	@ 0x24
80027c20:	e59f20e4 	ldr	r2, [pc, #228]	@ 80027d0c <trap_init+0x1e4>
80027c24:	e5832000 	str	r2, [r3]
80027c28:	e51b300c 	ldr	r3, [fp, #-12]
80027c2c:	e2833028 	add	r3, r3, #40	@ 0x28
80027c30:	e59f20d8 	ldr	r2, [pc, #216]	@ 80027d10 <trap_init+0x1e8>
80027c34:	e5832000 	str	r2, [r3]
80027c38:	e51b300c 	ldr	r3, [fp, #-12]
80027c3c:	e283302c 	add	r3, r3, #44	@ 0x2c
80027c40:	e59f20cc 	ldr	r2, [pc, #204]	@ 80027d14 <trap_init+0x1ec>
80027c44:	e5832000 	str	r2, [r3]
80027c48:	e51b300c 	ldr	r3, [fp, #-12]
80027c4c:	e2833030 	add	r3, r3, #48	@ 0x30
80027c50:	e59f20c0 	ldr	r2, [pc, #192]	@ 80027d18 <trap_init+0x1f0>
80027c54:	e5832000 	str	r2, [r3]
80027c58:	e51b300c 	ldr	r3, [fp, #-12]
80027c5c:	e2833034 	add	r3, r3, #52	@ 0x34
80027c60:	e59f20b4 	ldr	r2, [pc, #180]	@ 80027d1c <trap_init+0x1f4>
80027c64:	e5832000 	str	r2, [r3]
80027c68:	e51b300c 	ldr	r3, [fp, #-12]
80027c6c:	e2833038 	add	r3, r3, #56	@ 0x38
80027c70:	e59f20a8 	ldr	r2, [pc, #168]	@ 80027d20 <trap_init+0x1f8>
80027c74:	e5832000 	str	r2, [r3]
80027c78:	e51b300c 	ldr	r3, [fp, #-12]
80027c7c:	e283303c 	add	r3, r3, #60	@ 0x3c
80027c80:	e59f209c 	ldr	r2, [pc, #156]	@ 80027d24 <trap_init+0x1fc>
80027c84:	e5832000 	str	r2, [r3]
80027c88:	e3a03000 	mov	r3, #0
80027c8c:	e50b3008 	str	r3, [fp, #-8]
80027c90:	ea000012 	b	80027ce0 <trap_init+0x1b8>
80027c94:	ebffe665 	bl	80021630 <alloc_page>
80027c98:	e50b0010 	str	r0, [fp, #-16]
80027c9c:	e51b3010 	ldr	r3, [fp, #-16]
80027ca0:	e3530000 	cmp	r3, #0
80027ca4:	1a000001 	bne	80027cb0 <trap_init+0x188>
80027ca8:	e59f0078 	ldr	r0, [pc, #120]	@ 80027d28 <trap_init+0x200>
80027cac:	ebffe77e 	bl	80021aac <panic>
80027cb0:	e51b3008 	ldr	r3, [fp, #-8]
80027cb4:	e1a03103 	lsl	r3, r3, #2
80027cb8:	e2433004 	sub	r3, r3, #4
80027cbc:	e083300b 	add	r3, r3, fp
80027cc0:	e513301c 	ldr	r3, [r3, #-28]	@ 0xffffffe4
80027cc4:	e51b2010 	ldr	r2, [fp, #-16]
80027cc8:	e1a01002 	mov	r1, r2
80027ccc:	e1a00003 	mov	r0, r3
80027cd0:	ebffe2f3 	bl	800208a4 <set_stk>
80027cd4:	e51b3008 	ldr	r3, [fp, #-8]
80027cd8:	e2833001 	add	r3, r3, #1
80027cdc:	e50b3008 	str	r3, [fp, #-8]
80027ce0:	e51b3008 	ldr	r3, [fp, #-8]
80027ce4:	e3530003 	cmp	r3, #3
80027ce8:	9affffe9 	bls	80027c94 <trap_init+0x16c>
80027cec:	e1a00000 	nop			@ (mov r0, r0)
80027cf0:	e1a00000 	nop			@ (mov r0, r0)
80027cf4:	e24bd004 	sub	sp, fp, #4
80027cf8:	e8bd8800 	pop	{fp, pc}
80027cfc:	8002997c 	.word	0x8002997c
80027d00:	ffff0000 	.word	0xffff0000
80027d04:	80029a8c 	.word	0x80029a8c
80027d08:	80027844 	.word	0x80027844
80027d0c:	8002786c 	.word	0x8002786c
80027d10:	800277b8 	.word	0x800277b8
80027d14:	80027890 	.word	0x80027890
80027d18:	800278b8 	.word	0x800278b8
80027d1c:	800278e0 	.word	0x800278e0
80027d20:	800277f0 	.word	0x800277f0
80027d24:	80027904 	.word	0x80027904
80027d28:	80029954 	.word	0x80029954

80027d2c <dump_trapframe>:
80027d2c:	e92d4800 	push	{fp, lr}
80027d30:	e28db004 	add	fp, sp, #4
80027d34:	e24dd008 	sub	sp, sp, #8
80027d38:	e50b0008 	str	r0, [fp, #-8]
80027d3c:	e51b3008 	ldr	r3, [fp, #-8]
80027d40:	e5933008 	ldr	r3, [r3, #8]
80027d44:	e1a01003 	mov	r1, r3
80027d48:	e59f0138 	ldr	r0, [pc, #312]	@ 80027e88 <dump_trapframe+0x15c>
80027d4c:	ebffe6d0 	bl	80021894 <cprintf>
80027d50:	e51b3008 	ldr	r3, [fp, #-8]
80027d54:	e593300c 	ldr	r3, [r3, #12]
80027d58:	e1a01003 	mov	r1, r3
80027d5c:	e59f0128 	ldr	r0, [pc, #296]	@ 80027e8c <dump_trapframe+0x160>
80027d60:	ebffe6cb 	bl	80021894 <cprintf>
80027d64:	e51b3008 	ldr	r3, [fp, #-8]
80027d68:	e5933010 	ldr	r3, [r3, #16]
80027d6c:	e1a01003 	mov	r1, r3
80027d70:	e59f0118 	ldr	r0, [pc, #280]	@ 80027e90 <dump_trapframe+0x164>
80027d74:	ebffe6c6 	bl	80021894 <cprintf>
80027d78:	e51b3008 	ldr	r3, [fp, #-8]
80027d7c:	e5933014 	ldr	r3, [r3, #20]
80027d80:	e1a01003 	mov	r1, r3
80027d84:	e59f0108 	ldr	r0, [pc, #264]	@ 80027e94 <dump_trapframe+0x168>
80027d88:	ebffe6c1 	bl	80021894 <cprintf>
80027d8c:	e51b3008 	ldr	r3, [fp, #-8]
80027d90:	e5933018 	ldr	r3, [r3, #24]
80027d94:	e1a01003 	mov	r1, r3
80027d98:	e59f00f8 	ldr	r0, [pc, #248]	@ 80027e98 <dump_trapframe+0x16c>
80027d9c:	ebffe6bc 	bl	80021894 <cprintf>
80027da0:	e51b3008 	ldr	r3, [fp, #-8]
80027da4:	e593301c 	ldr	r3, [r3, #28]
80027da8:	e1a01003 	mov	r1, r3
80027dac:	e59f00e8 	ldr	r0, [pc, #232]	@ 80027e9c <dump_trapframe+0x170>
80027db0:	ebffe6b7 	bl	80021894 <cprintf>
80027db4:	e51b3008 	ldr	r3, [fp, #-8]
80027db8:	e5933020 	ldr	r3, [r3, #32]
80027dbc:	e1a01003 	mov	r1, r3
80027dc0:	e59f00d8 	ldr	r0, [pc, #216]	@ 80027ea0 <dump_trapframe+0x174>
80027dc4:	ebffe6b2 	bl	80021894 <cprintf>
80027dc8:	e51b3008 	ldr	r3, [fp, #-8]
80027dcc:	e5933024 	ldr	r3, [r3, #36]	@ 0x24
80027dd0:	e1a01003 	mov	r1, r3
80027dd4:	e59f00c8 	ldr	r0, [pc, #200]	@ 80027ea4 <dump_trapframe+0x178>
80027dd8:	ebffe6ad 	bl	80021894 <cprintf>
80027ddc:	e51b3008 	ldr	r3, [fp, #-8]
80027de0:	e5933028 	ldr	r3, [r3, #40]	@ 0x28
80027de4:	e1a01003 	mov	r1, r3
80027de8:	e59f00b8 	ldr	r0, [pc, #184]	@ 80027ea8 <dump_trapframe+0x17c>
80027dec:	ebffe6a8 	bl	80021894 <cprintf>
80027df0:	e51b3008 	ldr	r3, [fp, #-8]
80027df4:	e593302c 	ldr	r3, [r3, #44]	@ 0x2c
80027df8:	e1a01003 	mov	r1, r3
80027dfc:	e59f00a8 	ldr	r0, [pc, #168]	@ 80027eac <dump_trapframe+0x180>
80027e00:	ebffe6a3 	bl	80021894 <cprintf>
80027e04:	e51b3008 	ldr	r3, [fp, #-8]
80027e08:	e5933030 	ldr	r3, [r3, #48]	@ 0x30
80027e0c:	e1a01003 	mov	r1, r3
80027e10:	e59f0098 	ldr	r0, [pc, #152]	@ 80027eb0 <dump_trapframe+0x184>
80027e14:	ebffe69e 	bl	80021894 <cprintf>
80027e18:	e51b3008 	ldr	r3, [fp, #-8]
80027e1c:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80027e20:	e1a01003 	mov	r1, r3
80027e24:	e59f0088 	ldr	r0, [pc, #136]	@ 80027eb4 <dump_trapframe+0x188>
80027e28:	ebffe699 	bl	80021894 <cprintf>
80027e2c:	e51b3008 	ldr	r3, [fp, #-8]
80027e30:	e5933038 	ldr	r3, [r3, #56]	@ 0x38
80027e34:	e1a01003 	mov	r1, r3
80027e38:	e59f0078 	ldr	r0, [pc, #120]	@ 80027eb8 <dump_trapframe+0x18c>
80027e3c:	ebffe694 	bl	80021894 <cprintf>
80027e40:	e51b3008 	ldr	r3, [fp, #-8]
80027e44:	e593303c 	ldr	r3, [r3, #60]	@ 0x3c
80027e48:	e1a01003 	mov	r1, r3
80027e4c:	e59f0068 	ldr	r0, [pc, #104]	@ 80027ebc <dump_trapframe+0x190>
80027e50:	ebffe68f 	bl	80021894 <cprintf>
80027e54:	e51b3008 	ldr	r3, [fp, #-8]
80027e58:	e5933040 	ldr	r3, [r3, #64]	@ 0x40
80027e5c:	e1a01003 	mov	r1, r3
80027e60:	e59f0058 	ldr	r0, [pc, #88]	@ 80027ec0 <dump_trapframe+0x194>
80027e64:	ebffe68a 	bl	80021894 <cprintf>
80027e68:	e51b3008 	ldr	r3, [fp, #-8]
80027e6c:	e5933044 	ldr	r3, [r3, #68]	@ 0x44
80027e70:	e1a01003 	mov	r1, r3
80027e74:	e59f0048 	ldr	r0, [pc, #72]	@ 80027ec4 <dump_trapframe+0x198>
80027e78:	ebffe685 	bl	80021894 <cprintf>
80027e7c:	e1a00000 	nop			@ (mov r0, r0)
80027e80:	e24bd004 	sub	sp, fp, #4
80027e84:	e8bd8800 	pop	{fp, pc}
80027e88:	8002998c 	.word	0x8002998c
80027e8c:	8002999c 	.word	0x8002999c
80027e90:	800299ac 	.word	0x800299ac
80027e94:	800299bc 	.word	0x800299bc
80027e98:	800299cc 	.word	0x800299cc
80027e9c:	800299dc 	.word	0x800299dc
80027ea0:	800299ec 	.word	0x800299ec
80027ea4:	800299fc 	.word	0x800299fc
80027ea8:	80029a0c 	.word	0x80029a0c
80027eac:	80029a1c 	.word	0x80029a1c
80027eb0:	80029a2c 	.word	0x80029a2c
80027eb4:	80029a3c 	.word	0x80029a3c
80027eb8:	80029a4c 	.word	0x80029a4c
80027ebc:	80029a5c 	.word	0x80029a5c
80027ec0:	80029a6c 	.word	0x80029a6c
80027ec4:	80029a7c 	.word	0x80029a7c

80027ec8 <v2p>:
80027ec8:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027ecc:	e28db000 	add	fp, sp, #0
80027ed0:	e24dd00c 	sub	sp, sp, #12
80027ed4:	e50b0008 	str	r0, [fp, #-8]
80027ed8:	e51b3008 	ldr	r3, [fp, #-8]
80027edc:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027ee0:	e1a00003 	mov	r0, r3
80027ee4:	e28bd000 	add	sp, fp, #0
80027ee8:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027eec:	e12fff1e 	bx	lr

80027ef0 <p2v>:
80027ef0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027ef4:	e28db000 	add	fp, sp, #0
80027ef8:	e24dd00c 	sub	sp, sp, #12
80027efc:	e50b0008 	str	r0, [fp, #-8]
80027f00:	e51b3008 	ldr	r3, [fp, #-8]
80027f04:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80027f08:	e1a00003 	mov	r0, r3
80027f0c:	e28bd000 	add	sp, fp, #0
80027f10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027f14:	e12fff1e 	bx	lr

80027f18 <init_vmm>:
80027f18:	e92d4800 	push	{fp, lr}
80027f1c:	e28db004 	add	fp, sp, #4
80027f20:	e59f1018 	ldr	r1, [pc, #24]	@ 80027f40 <init_vmm+0x28>
80027f24:	e59f0018 	ldr	r0, [pc, #24]	@ 80027f44 <init_vmm+0x2c>
80027f28:	ebfff7d6 	bl	80025e88 <initlock>
80027f2c:	e59f3010 	ldr	r3, [pc, #16]	@ 80027f44 <init_vmm+0x2c>
80027f30:	e3a02000 	mov	r2, #0
80027f34:	e5832034 	str	r2, [r3, #52]	@ 0x34
80027f38:	e1a00000 	nop			@ (mov r0, r0)
80027f3c:	e8bd8800 	pop	{fp, pc}
80027f40:	80029a90 	.word	0x80029a90
80027f44:	800afa54 	.word	0x800afa54

80027f48 <_kpt_free>:
80027f48:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80027f4c:	e28db000 	add	fp, sp, #0
80027f50:	e24dd014 	sub	sp, sp, #20
80027f54:	e50b0010 	str	r0, [fp, #-16]
80027f58:	e51b3010 	ldr	r3, [fp, #-16]
80027f5c:	e50b3008 	str	r3, [fp, #-8]
80027f60:	e59f3024 	ldr	r3, [pc, #36]	@ 80027f8c <_kpt_free+0x44>
80027f64:	e5932034 	ldr	r2, [r3, #52]	@ 0x34
80027f68:	e51b3008 	ldr	r3, [fp, #-8]
80027f6c:	e5832000 	str	r2, [r3]
80027f70:	e59f2014 	ldr	r2, [pc, #20]	@ 80027f8c <_kpt_free+0x44>
80027f74:	e51b3008 	ldr	r3, [fp, #-8]
80027f78:	e5823034 	str	r3, [r2, #52]	@ 0x34
80027f7c:	e1a00000 	nop			@ (mov r0, r0)
80027f80:	e28bd000 	add	sp, fp, #0
80027f84:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80027f88:	e12fff1e 	bx	lr
80027f8c:	800afa54 	.word	0x800afa54

80027f90 <kpt_free>:
80027f90:	e92d4800 	push	{fp, lr}
80027f94:	e28db004 	add	fp, sp, #4
80027f98:	e24dd008 	sub	sp, sp, #8
80027f9c:	e50b0008 	str	r0, [fp, #-8]
80027fa0:	e51b3008 	ldr	r3, [fp, #-8]
80027fa4:	e59f2034 	ldr	r2, [pc, #52]	@ 80027fe0 <kpt_free+0x50>
80027fa8:	e1530002 	cmp	r3, r2
80027fac:	9a000003 	bls	80027fc0 <kpt_free+0x30>
80027fb0:	e3a0100a 	mov	r1, #10
80027fb4:	e51b0008 	ldr	r0, [fp, #-8]
80027fb8:	ebffe570 	bl	80021580 <kfree>
80027fbc:	ea000005 	b	80027fd8 <kpt_free+0x48>
80027fc0:	e59f001c 	ldr	r0, [pc, #28]	@ 80027fe4 <kpt_free+0x54>
80027fc4:	ebfff7c1 	bl	80025ed0 <acquire>
80027fc8:	e51b0008 	ldr	r0, [fp, #-8]
80027fcc:	ebffffdd 	bl	80027f48 <_kpt_free>
80027fd0:	e59f000c 	ldr	r0, [pc, #12]	@ 80027fe4 <kpt_free+0x54>
80027fd4:	ebfff7c8 	bl	80025efc <release>
80027fd8:	e24bd004 	sub	sp, fp, #4
80027fdc:	e8bd8800 	pop	{fp, pc}
80027fe0:	800fffff 	.word	0x800fffff
80027fe4:	800afa54 	.word	0x800afa54

80027fe8 <kpt_freerange>:
80027fe8:	e92d4800 	push	{fp, lr}
80027fec:	e28db004 	add	fp, sp, #4
80027ff0:	e24dd008 	sub	sp, sp, #8
80027ff4:	e50b0008 	str	r0, [fp, #-8]
80027ff8:	e50b100c 	str	r1, [fp, #-12]
80027ffc:	ea000005 	b	80028018 <kpt_freerange+0x30>
80028000:	e51b3008 	ldr	r3, [fp, #-8]
80028004:	e1a00003 	mov	r0, r3
80028008:	ebffffce 	bl	80027f48 <_kpt_free>
8002800c:	e51b3008 	ldr	r3, [fp, #-8]
80028010:	e2833b01 	add	r3, r3, #1024	@ 0x400
80028014:	e50b3008 	str	r3, [fp, #-8]
80028018:	e51b2008 	ldr	r2, [fp, #-8]
8002801c:	e51b300c 	ldr	r3, [fp, #-12]
80028020:	e1520003 	cmp	r2, r3
80028024:	3afffff5 	bcc	80028000 <kpt_freerange+0x18>
80028028:	e1a00000 	nop			@ (mov r0, r0)
8002802c:	e1a00000 	nop			@ (mov r0, r0)
80028030:	e24bd004 	sub	sp, fp, #4
80028034:	e8bd8800 	pop	{fp, pc}

80028038 <kpt_alloc>:
80028038:	e92d4800 	push	{fp, lr}
8002803c:	e28db004 	add	fp, sp, #4
80028040:	e24dd008 	sub	sp, sp, #8
80028044:	e59f007c 	ldr	r0, [pc, #124]	@ 800280c8 <kpt_alloc+0x90>
80028048:	ebfff7a0 	bl	80025ed0 <acquire>
8002804c:	e59f3074 	ldr	r3, [pc, #116]	@ 800280c8 <kpt_alloc+0x90>
80028050:	e5933034 	ldr	r3, [r3, #52]	@ 0x34
80028054:	e50b3008 	str	r3, [fp, #-8]
80028058:	e51b3008 	ldr	r3, [fp, #-8]
8002805c:	e3530000 	cmp	r3, #0
80028060:	0a000003 	beq	80028074 <kpt_alloc+0x3c>
80028064:	e51b3008 	ldr	r3, [fp, #-8]
80028068:	e5933000 	ldr	r3, [r3]
8002806c:	e59f2054 	ldr	r2, [pc, #84]	@ 800280c8 <kpt_alloc+0x90>
80028070:	e5823034 	str	r3, [r2, #52]	@ 0x34
80028074:	e59f004c 	ldr	r0, [pc, #76]	@ 800280c8 <kpt_alloc+0x90>
80028078:	ebfff79f 	bl	80025efc <release>
8002807c:	e51b3008 	ldr	r3, [fp, #-8]
80028080:	e3530000 	cmp	r3, #0
80028084:	1a000007 	bne	800280a8 <kpt_alloc+0x70>
80028088:	e3a0000a 	mov	r0, #10
8002808c:	ebffe4e4 	bl	80021424 <kmalloc>
80028090:	e50b0008 	str	r0, [fp, #-8]
80028094:	e51b3008 	ldr	r3, [fp, #-8]
80028098:	e3530000 	cmp	r3, #0
8002809c:	1a000001 	bne	800280a8 <kpt_alloc+0x70>
800280a0:	e59f0024 	ldr	r0, [pc, #36]	@ 800280cc <kpt_alloc+0x94>
800280a4:	ebffe680 	bl	80021aac <panic>
800280a8:	e3a02b01 	mov	r2, #1024	@ 0x400
800280ac:	e3a01000 	mov	r1, #0
800280b0:	e51b0008 	ldr	r0, [fp, #-8]
800280b4:	ebffdfd1 	bl	80020000 <memset>
800280b8:	e51b3008 	ldr	r3, [fp, #-8]
800280bc:	e1a00003 	mov	r0, r3
800280c0:	e24bd004 	sub	sp, fp, #4
800280c4:	e8bd8800 	pop	{fp, pc}
800280c8:	800afa54 	.word	0x800afa54
800280cc:	80029a94 	.word	0x80029a94

800280d0 <walkpgdir>:
800280d0:	e92d4800 	push	{fp, lr}
800280d4:	e28db004 	add	fp, sp, #4
800280d8:	e24dd018 	sub	sp, sp, #24
800280dc:	e50b0010 	str	r0, [fp, #-16]
800280e0:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800280e4:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
800280e8:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
800280ec:	e1a03a23 	lsr	r3, r3, #20
800280f0:	e1a03103 	lsl	r3, r3, #2
800280f4:	e51b2010 	ldr	r2, [fp, #-16]
800280f8:	e0823003 	add	r3, r2, r3
800280fc:	e50b300c 	str	r3, [fp, #-12]
80028100:	e51b300c 	ldr	r3, [fp, #-12]
80028104:	e5933000 	ldr	r3, [r3]
80028108:	e2033003 	and	r3, r3, #3
8002810c:	e3530000 	cmp	r3, #0
80028110:	0a000007 	beq	80028134 <walkpgdir+0x64>
80028114:	e51b300c 	ldr	r3, [fp, #-12]
80028118:	e5933000 	ldr	r3, [r3]
8002811c:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028120:	e3c33003 	bic	r3, r3, #3
80028124:	e1a00003 	mov	r0, r3
80028128:	ebffff70 	bl	80027ef0 <p2v>
8002812c:	e50b0008 	str	r0, [fp, #-8]
80028130:	ea000013 	b	80028184 <walkpgdir+0xb4>
80028134:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028138:	e3530000 	cmp	r3, #0
8002813c:	0a000004 	beq	80028154 <walkpgdir+0x84>
80028140:	ebffffbc 	bl	80028038 <kpt_alloc>
80028144:	e50b0008 	str	r0, [fp, #-8]
80028148:	e51b3008 	ldr	r3, [fp, #-8]
8002814c:	e3530000 	cmp	r3, #0
80028150:	1a000001 	bne	8002815c <walkpgdir+0x8c>
80028154:	e3a03000 	mov	r3, #0
80028158:	ea00000f 	b	8002819c <walkpgdir+0xcc>
8002815c:	e3a02b01 	mov	r2, #1024	@ 0x400
80028160:	e3a01000 	mov	r1, #0
80028164:	e51b0008 	ldr	r0, [fp, #-8]
80028168:	ebffdfa4 	bl	80020000 <memset>
8002816c:	e51b0008 	ldr	r0, [fp, #-8]
80028170:	ebffff54 	bl	80027ec8 <v2p>
80028174:	e1a03000 	mov	r3, r0
80028178:	e3832001 	orr	r2, r3, #1
8002817c:	e51b300c 	ldr	r3, [fp, #-12]
80028180:	e5832000 	str	r2, [r3]
80028184:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028188:	e1a03623 	lsr	r3, r3, #12
8002818c:	e6ef3073 	uxtb	r3, r3
80028190:	e1a03103 	lsl	r3, r3, #2
80028194:	e51b2008 	ldr	r2, [fp, #-8]
80028198:	e0823003 	add	r3, r2, r3
8002819c:	e1a00003 	mov	r0, r3
800281a0:	e24bd004 	sub	sp, fp, #4
800281a4:	e8bd8800 	pop	{fp, pc}

800281a8 <mappages>:
800281a8:	e92d4800 	push	{fp, lr}
800281ac:	e28db004 	add	fp, sp, #4
800281b0:	e24dd020 	sub	sp, sp, #32
800281b4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800281b8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800281bc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800281c0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800281c4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800281c8:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800281cc:	e3c3300f 	bic	r3, r3, #15
800281d0:	e50b3008 	str	r3, [fp, #-8]
800281d4:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
800281d8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800281dc:	e0823003 	add	r3, r2, r3
800281e0:	e2433001 	sub	r3, r3, #1
800281e4:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800281e8:	e3c3300f 	bic	r3, r3, #15
800281ec:	e50b300c 	str	r3, [fp, #-12]
800281f0:	e3a02001 	mov	r2, #1
800281f4:	e51b1008 	ldr	r1, [fp, #-8]
800281f8:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800281fc:	ebffffb3 	bl	800280d0 <walkpgdir>
80028200:	e50b0010 	str	r0, [fp, #-16]
80028204:	e51b3010 	ldr	r3, [fp, #-16]
80028208:	e3530000 	cmp	r3, #0
8002820c:	1a000001 	bne	80028218 <mappages+0x70>
80028210:	e3e03000 	mvn	r3, #0
80028214:	ea00001b 	b	80028288 <mappages+0xe0>
80028218:	e51b3010 	ldr	r3, [fp, #-16]
8002821c:	e5933000 	ldr	r3, [r3]
80028220:	e2033003 	and	r3, r3, #3
80028224:	e3530000 	cmp	r3, #0
80028228:	0a000001 	beq	80028234 <mappages+0x8c>
8002822c:	e59f0060 	ldr	r0, [pc, #96]	@ 80028294 <mappages+0xec>
80028230:	ebffe61d 	bl	80021aac <panic>
80028234:	e59b3004 	ldr	r3, [fp, #4]
80028238:	e1a03203 	lsl	r3, r3, #4
8002823c:	e2032030 	and	r2, r3, #48	@ 0x30
80028240:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028244:	e1823003 	orr	r3, r2, r3
80028248:	e383200e 	orr	r2, r3, #14
8002824c:	e51b3010 	ldr	r3, [fp, #-16]
80028250:	e5832000 	str	r2, [r3]
80028254:	e51b2008 	ldr	r2, [fp, #-8]
80028258:	e51b300c 	ldr	r3, [fp, #-12]
8002825c:	e1520003 	cmp	r2, r3
80028260:	0a000006 	beq	80028280 <mappages+0xd8>
80028264:	e51b3008 	ldr	r3, [fp, #-8]
80028268:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002826c:	e50b3008 	str	r3, [fp, #-8]
80028270:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028274:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028278:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
8002827c:	eaffffdb 	b	800281f0 <mappages+0x48>
80028280:	e1a00000 	nop			@ (mov r0, r0)
80028284:	e3a03000 	mov	r3, #0
80028288:	e1a00003 	mov	r0, r3
8002828c:	e24bd004 	sub	sp, fp, #4
80028290:	e8bd8800 	pop	{fp, pc}
80028294:	80029aa4 	.word	0x80029aa4

80028298 <flush_tlb>:
80028298:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
8002829c:	e28db000 	add	fp, sp, #0
800282a0:	e24dd00c 	sub	sp, sp, #12
800282a4:	e3a03000 	mov	r3, #0
800282a8:	e50b3008 	str	r3, [fp, #-8]
800282ac:	e51b3008 	ldr	r3, [fp, #-8]
800282b0:	ee083f17 	mcr	15, 0, r3, cr8, cr7, {0}
800282b4:	e51b3008 	ldr	r3, [fp, #-8]
800282b8:	ee073f1a 	mcr	15, 0, r3, cr7, cr10, {0}
800282bc:	e51b3008 	ldr	r3, [fp, #-8]
800282c0:	ee073f1b 	mcr	15, 0, r3, cr7, cr11, {0}
800282c4:	e1a00000 	nop			@ (mov r0, r0)
800282c8:	e28bd000 	add	sp, fp, #0
800282cc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800282d0:	e12fff1e 	bx	lr

800282d4 <switchuvm>:
800282d4:	e92d4800 	push	{fp, lr}
800282d8:	e28db004 	add	fp, sp, #4
800282dc:	e24dd010 	sub	sp, sp, #16
800282e0:	e50b0010 	str	r0, [fp, #-16]
800282e4:	ebffe0d0 	bl	8002062c <pushcli>
800282e8:	e51b3010 	ldr	r3, [fp, #-16]
800282ec:	e5933004 	ldr	r3, [r3, #4]
800282f0:	e3530000 	cmp	r3, #0
800282f4:	1a000001 	bne	80028300 <switchuvm+0x2c>
800282f8:	e59f002c 	ldr	r0, [pc, #44]	@ 8002832c <switchuvm+0x58>
800282fc:	ebffe5ea 	bl	80021aac <panic>
80028300:	e51b3010 	ldr	r3, [fp, #-16]
80028304:	e5933004 	ldr	r3, [r3, #4]
80028308:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
8002830c:	e50b3008 	str	r3, [fp, #-8]
80028310:	e51b3008 	ldr	r3, [fp, #-8]
80028314:	ee023f10 	mcr	15, 0, r3, cr2, cr0, {0}
80028318:	ebffffde 	bl	80028298 <flush_tlb>
8002831c:	ebffe0d7 	bl	80020680 <popcli>
80028320:	e1a00000 	nop			@ (mov r0, r0)
80028324:	e24bd004 	sub	sp, fp, #4
80028328:	e8bd8800 	pop	{fp, pc}
8002832c:	80029aac 	.word	0x80029aac

80028330 <inituvm>:
80028330:	e92d4800 	push	{fp, lr}
80028334:	e28db004 	add	fp, sp, #4
80028338:	e24dd020 	sub	sp, sp, #32
8002833c:	e50b0010 	str	r0, [fp, #-16]
80028340:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028344:	e50b2018 	str	r2, [fp, #-24]	@ 0xffffffe8
80028348:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002834c:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028350:	3a000001 	bcc	8002835c <inituvm+0x2c>
80028354:	e59f0058 	ldr	r0, [pc, #88]	@ 800283b4 <inituvm+0x84>
80028358:	ebffe5d3 	bl	80021aac <panic>
8002835c:	ebffe4b3 	bl	80021630 <alloc_page>
80028360:	e50b0008 	str	r0, [fp, #-8]
80028364:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028368:	e3a01000 	mov	r1, #0
8002836c:	e51b0008 	ldr	r0, [fp, #-8]
80028370:	ebffdf22 	bl	80020000 <memset>
80028374:	e51b0008 	ldr	r0, [fp, #-8]
80028378:	ebfffed2 	bl	80027ec8 <v2p>
8002837c:	e1a03000 	mov	r3, r0
80028380:	e3a02003 	mov	r2, #3
80028384:	e58d2000 	str	r2, [sp]
80028388:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002838c:	e3a01000 	mov	r1, #0
80028390:	e51b0010 	ldr	r0, [fp, #-16]
80028394:	ebffff83 	bl	800281a8 <mappages>
80028398:	e51b2018 	ldr	r2, [fp, #-24]	@ 0xffffffe8
8002839c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800283a0:	e51b0008 	ldr	r0, [fp, #-8]
800283a4:	ebffdf87 	bl	800201c8 <memmove>
800283a8:	e1a00000 	nop			@ (mov r0, r0)
800283ac:	e24bd004 	sub	sp, fp, #4
800283b0:	e8bd8800 	pop	{fp, pc}
800283b4:	80029ac0 	.word	0x80029ac0

800283b8 <loaduvm>:
800283b8:	e92d4800 	push	{fp, lr}
800283bc:	e28db004 	add	fp, sp, #4
800283c0:	e24dd020 	sub	sp, sp, #32
800283c4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800283c8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800283cc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800283d0:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
800283d4:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800283d8:	e1a03a03 	lsl	r3, r3, #20
800283dc:	e1a03a23 	lsr	r3, r3, #20
800283e0:	e3530000 	cmp	r3, #0
800283e4:	0a000001 	beq	800283f0 <loaduvm+0x38>
800283e8:	e59f00f0 	ldr	r0, [pc, #240]	@ 800284e0 <loaduvm+0x128>
800283ec:	ebffe5ae 	bl	80021aac <panic>
800283f0:	e3a03000 	mov	r3, #0
800283f4:	e50b3008 	str	r3, [fp, #-8]
800283f8:	ea000030 	b	800284c0 <loaduvm+0x108>
800283fc:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028400:	e51b3008 	ldr	r3, [fp, #-8]
80028404:	e0823003 	add	r3, r2, r3
80028408:	e3a02000 	mov	r2, #0
8002840c:	e1a01003 	mov	r1, r3
80028410:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028414:	ebffff2d 	bl	800280d0 <walkpgdir>
80028418:	e50b0010 	str	r0, [fp, #-16]
8002841c:	e51b3010 	ldr	r3, [fp, #-16]
80028420:	e3530000 	cmp	r3, #0
80028424:	1a000001 	bne	80028430 <loaduvm+0x78>
80028428:	e59f00b4 	ldr	r0, [pc, #180]	@ 800284e4 <loaduvm+0x12c>
8002842c:	ebffe59e 	bl	80021aac <panic>
80028430:	e51b3010 	ldr	r3, [fp, #-16]
80028434:	e5933000 	ldr	r3, [r3]
80028438:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002843c:	e3c3300f 	bic	r3, r3, #15
80028440:	e50b3014 	str	r3, [fp, #-20]	@ 0xffffffec
80028444:	e59b2004 	ldr	r2, [fp, #4]
80028448:	e51b3008 	ldr	r3, [fp, #-8]
8002844c:	e0423003 	sub	r3, r2, r3
80028450:	e3530a01 	cmp	r3, #4096	@ 0x1000
80028454:	2a000004 	bcs	8002846c <loaduvm+0xb4>
80028458:	e59b2004 	ldr	r2, [fp, #4]
8002845c:	e51b3008 	ldr	r3, [fp, #-8]
80028460:	e0423003 	sub	r3, r2, r3
80028464:	e50b300c 	str	r3, [fp, #-12]
80028468:	ea000001 	b	80028474 <loaduvm+0xbc>
8002846c:	e3a03a01 	mov	r3, #4096	@ 0x1000
80028470:	e50b300c 	str	r3, [fp, #-12]
80028474:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028478:	ebfffe9c 	bl	80027ef0 <p2v>
8002847c:	e1a01000 	mov	r1, r0
80028480:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028484:	e51b3008 	ldr	r3, [fp, #-8]
80028488:	e0822003 	add	r2, r2, r3
8002848c:	e51b300c 	ldr	r3, [fp, #-12]
80028490:	e51b0020 	ldr	r0, [fp, #-32]	@ 0xffffffe0
80028494:	ebffecc4 	bl	800237ac <readi>
80028498:	e1a03000 	mov	r3, r0
8002849c:	e1a02003 	mov	r2, r3
800284a0:	e51b300c 	ldr	r3, [fp, #-12]
800284a4:	e1530002 	cmp	r3, r2
800284a8:	0a000001 	beq	800284b4 <loaduvm+0xfc>
800284ac:	e3e03000 	mvn	r3, #0
800284b0:	ea000007 	b	800284d4 <loaduvm+0x11c>
800284b4:	e51b3008 	ldr	r3, [fp, #-8]
800284b8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800284bc:	e50b3008 	str	r3, [fp, #-8]
800284c0:	e51b2008 	ldr	r2, [fp, #-8]
800284c4:	e59b3004 	ldr	r3, [fp, #4]
800284c8:	e1520003 	cmp	r2, r3
800284cc:	3affffca 	bcc	800283fc <loaduvm+0x44>
800284d0:	e3a03000 	mov	r3, #0
800284d4:	e1a00003 	mov	r0, r3
800284d8:	e24bd004 	sub	sp, fp, #4
800284dc:	e8bd8800 	pop	{fp, pc}
800284e0:	80029adc 	.word	0x80029adc
800284e4:	80029b00 	.word	0x80029b00

800284e8 <allocuvm>:
800284e8:	e92d4810 	push	{r4, fp, lr}
800284ec:	e28db008 	add	fp, sp, #8
800284f0:	e24dd024 	sub	sp, sp, #36	@ 0x24
800284f4:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800284f8:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800284fc:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028500:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028504:	e373021f 	cmn	r3, #-268435455	@ 0xf0000001
80028508:	9a000001 	bls	80028514 <allocuvm+0x2c>
8002850c:	e3a03000 	mov	r3, #0
80028510:	ea00002f 	b	800285d4 <allocuvm+0xec>
80028514:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028518:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
8002851c:	e1520003 	cmp	r2, r3
80028520:	2a000001 	bcs	8002852c <allocuvm+0x44>
80028524:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028528:	ea000029 	b	800285d4 <allocuvm+0xec>
8002852c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028530:	e2833eff 	add	r3, r3, #4080	@ 0xff0
80028534:	e283300f 	add	r3, r3, #15
80028538:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
8002853c:	e3c3300f 	bic	r3, r3, #15
80028540:	e50b3010 	str	r3, [fp, #-16]
80028544:	ea00001d 	b	800285c0 <allocuvm+0xd8>
80028548:	ebffe438 	bl	80021630 <alloc_page>
8002854c:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028550:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028554:	e3530000 	cmp	r3, #0
80028558:	1a000007 	bne	8002857c <allocuvm+0x94>
8002855c:	e59f007c 	ldr	r0, [pc, #124]	@ 800285e0 <allocuvm+0xf8>
80028560:	ebffe4cb 	bl	80021894 <cprintf>
80028564:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028568:	e51b1020 	ldr	r1, [fp, #-32]	@ 0xffffffe0
8002856c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028570:	eb00001b 	bl	800285e4 <deallocuvm>
80028574:	e3a03000 	mov	r3, #0
80028578:	ea000015 	b	800285d4 <allocuvm+0xec>
8002857c:	e3a02a01 	mov	r2, #4096	@ 0x1000
80028580:	e3a01000 	mov	r1, #0
80028584:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028588:	ebffde9c 	bl	80020000 <memset>
8002858c:	e51b4010 	ldr	r4, [fp, #-16]
80028590:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028594:	ebfffe4b 	bl	80027ec8 <v2p>
80028598:	e1a03000 	mov	r3, r0
8002859c:	e3a02003 	mov	r2, #3
800285a0:	e58d2000 	str	r2, [sp]
800285a4:	e3a02a01 	mov	r2, #4096	@ 0x1000
800285a8:	e1a01004 	mov	r1, r4
800285ac:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
800285b0:	ebfffefc 	bl	800281a8 <mappages>
800285b4:	e51b3010 	ldr	r3, [fp, #-16]
800285b8:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800285bc:	e50b3010 	str	r3, [fp, #-16]
800285c0:	e51b2010 	ldr	r2, [fp, #-16]
800285c4:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800285c8:	e1520003 	cmp	r2, r3
800285cc:	3affffdd 	bcc	80028548 <allocuvm+0x60>
800285d0:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800285d4:	e1a00003 	mov	r0, r3
800285d8:	e24bd008 	sub	sp, fp, #8
800285dc:	e8bd8810 	pop	{r4, fp, pc}
800285e0:	80029b20 	.word	0x80029b20

800285e4 <deallocuvm>:
800285e4:	e92d4800 	push	{fp, lr}
800285e8:	e28db004 	add	fp, sp, #4
800285ec:	e24dd020 	sub	sp, sp, #32
800285f0:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
800285f4:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
800285f8:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
800285fc:	e51b2020 	ldr	r2, [fp, #-32]	@ 0xffffffe0
80028600:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028604:	e1520003 	cmp	r2, r3
80028608:	3a000001 	bcc	80028614 <deallocuvm+0x30>
8002860c:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028610:	ea000035 	b	800286ec <deallocuvm+0x108>
80028614:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028618:	e2833eff 	add	r3, r3, #4080	@ 0xff0
8002861c:	e283300f 	add	r3, r3, #15
80028620:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028624:	e3c3300f 	bic	r3, r3, #15
80028628:	e50b3008 	str	r3, [fp, #-8]
8002862c:	ea000029 	b	800286d8 <deallocuvm+0xf4>
80028630:	e51b3008 	ldr	r3, [fp, #-8]
80028634:	e3a02000 	mov	r2, #0
80028638:	e1a01003 	mov	r1, r3
8002863c:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028640:	ebfffea2 	bl	800280d0 <walkpgdir>
80028644:	e50b000c 	str	r0, [fp, #-12]
80028648:	e51b300c 	ldr	r3, [fp, #-12]
8002864c:	e3530000 	cmp	r3, #0
80028650:	1a000006 	bne	80028670 <deallocuvm+0x8c>
80028654:	e51b3008 	ldr	r3, [fp, #-8]
80028658:	e243337f 	sub	r3, r3, #-67108863	@ 0xfc000001
8002865c:	e243363f 	sub	r3, r3, #66060288	@ 0x3f00000
80028660:	e1a03a23 	lsr	r3, r3, #20
80028664:	e1a03a03 	lsl	r3, r3, #20
80028668:	e50b3008 	str	r3, [fp, #-8]
8002866c:	ea000016 	b	800286cc <deallocuvm+0xe8>
80028670:	e51b300c 	ldr	r3, [fp, #-12]
80028674:	e5933000 	ldr	r3, [r3]
80028678:	e2033003 	and	r3, r3, #3
8002867c:	e3530000 	cmp	r3, #0
80028680:	0a000011 	beq	800286cc <deallocuvm+0xe8>
80028684:	e51b300c 	ldr	r3, [fp, #-12]
80028688:	e5933000 	ldr	r3, [r3]
8002868c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028690:	e3c3300f 	bic	r3, r3, #15
80028694:	e50b3010 	str	r3, [fp, #-16]
80028698:	e51b3010 	ldr	r3, [fp, #-16]
8002869c:	e3530000 	cmp	r3, #0
800286a0:	1a000001 	bne	800286ac <deallocuvm+0xc8>
800286a4:	e59f004c 	ldr	r0, [pc, #76]	@ 800286f8 <deallocuvm+0x114>
800286a8:	ebffe4ff 	bl	80021aac <panic>
800286ac:	e51b0010 	ldr	r0, [fp, #-16]
800286b0:	ebfffe0e 	bl	80027ef0 <p2v>
800286b4:	e1a03000 	mov	r3, r0
800286b8:	e1a00003 	mov	r0, r3
800286bc:	ebffe3d1 	bl	80021608 <free_page>
800286c0:	e51b300c 	ldr	r3, [fp, #-12]
800286c4:	e3a02000 	mov	r2, #0
800286c8:	e5832000 	str	r2, [r3]
800286cc:	e51b3008 	ldr	r3, [fp, #-8]
800286d0:	e2833a01 	add	r3, r3, #4096	@ 0x1000
800286d4:	e50b3008 	str	r3, [fp, #-8]
800286d8:	e51b2008 	ldr	r2, [fp, #-8]
800286dc:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
800286e0:	e1520003 	cmp	r2, r3
800286e4:	3affffd1 	bcc	80028630 <deallocuvm+0x4c>
800286e8:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
800286ec:	e1a00003 	mov	r0, r3
800286f0:	e24bd004 	sub	sp, fp, #4
800286f4:	e8bd8800 	pop	{fp, pc}
800286f8:	80029b38 	.word	0x80029b38

800286fc <freevm>:
800286fc:	e92d4800 	push	{fp, lr}
80028700:	e28db004 	add	fp, sp, #4
80028704:	e24dd010 	sub	sp, sp, #16
80028708:	e50b0010 	str	r0, [fp, #-16]
8002870c:	e51b3010 	ldr	r3, [fp, #-16]
80028710:	e3530000 	cmp	r3, #0
80028714:	1a000001 	bne	80028720 <freevm+0x24>
80028718:	e59f0098 	ldr	r0, [pc, #152]	@ 800287b8 <freevm+0xbc>
8002871c:	ebffe4e2 	bl	80021aac <panic>
80028720:	e3a02000 	mov	r2, #0
80028724:	e3a01201 	mov	r1, #268435456	@ 0x10000000
80028728:	e51b0010 	ldr	r0, [fp, #-16]
8002872c:	ebffffac 	bl	800285e4 <deallocuvm>
80028730:	e3a03000 	mov	r3, #0
80028734:	e50b3008 	str	r3, [fp, #-8]
80028738:	ea000016 	b	80028798 <freevm+0x9c>
8002873c:	e51b3008 	ldr	r3, [fp, #-8]
80028740:	e1a03103 	lsl	r3, r3, #2
80028744:	e51b2010 	ldr	r2, [fp, #-16]
80028748:	e0823003 	add	r3, r2, r3
8002874c:	e5933000 	ldr	r3, [r3]
80028750:	e2033003 	and	r3, r3, #3
80028754:	e3530000 	cmp	r3, #0
80028758:	0a00000b 	beq	8002878c <freevm+0x90>
8002875c:	e51b3008 	ldr	r3, [fp, #-8]
80028760:	e1a03103 	lsl	r3, r3, #2
80028764:	e51b2010 	ldr	r2, [fp, #-16]
80028768:	e0823003 	add	r3, r2, r3
8002876c:	e5933000 	ldr	r3, [r3]
80028770:	e3c33fff 	bic	r3, r3, #1020	@ 0x3fc
80028774:	e3c33003 	bic	r3, r3, #3
80028778:	e1a00003 	mov	r0, r3
8002877c:	ebfffddb 	bl	80027ef0 <p2v>
80028780:	e50b000c 	str	r0, [fp, #-12]
80028784:	e51b000c 	ldr	r0, [fp, #-12]
80028788:	ebfffe00 	bl	80027f90 <kpt_free>
8002878c:	e51b3008 	ldr	r3, [fp, #-8]
80028790:	e2833001 	add	r3, r3, #1
80028794:	e50b3008 	str	r3, [fp, #-8]
80028798:	e51b3008 	ldr	r3, [fp, #-8]
8002879c:	e35300ff 	cmp	r3, #255	@ 0xff
800287a0:	9affffe5 	bls	8002873c <freevm+0x40>
800287a4:	e51b0010 	ldr	r0, [fp, #-16]
800287a8:	ebfffdf8 	bl	80027f90 <kpt_free>
800287ac:	e1a00000 	nop			@ (mov r0, r0)
800287b0:	e24bd004 	sub	sp, fp, #4
800287b4:	e8bd8800 	pop	{fp, pc}
800287b8:	80029b44 	.word	0x80029b44

800287bc <clearpteu>:
800287bc:	e92d4800 	push	{fp, lr}
800287c0:	e28db004 	add	fp, sp, #4
800287c4:	e24dd010 	sub	sp, sp, #16
800287c8:	e50b0010 	str	r0, [fp, #-16]
800287cc:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
800287d0:	e3a02000 	mov	r2, #0
800287d4:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800287d8:	e51b0010 	ldr	r0, [fp, #-16]
800287dc:	ebfffe3b 	bl	800280d0 <walkpgdir>
800287e0:	e50b0008 	str	r0, [fp, #-8]
800287e4:	e51b3008 	ldr	r3, [fp, #-8]
800287e8:	e3530000 	cmp	r3, #0
800287ec:	1a000001 	bne	800287f8 <clearpteu+0x3c>
800287f0:	e59f0024 	ldr	r0, [pc, #36]	@ 8002881c <clearpteu+0x60>
800287f4:	ebffe4ac 	bl	80021aac <panic>
800287f8:	e51b3008 	ldr	r3, [fp, #-8]
800287fc:	e5933000 	ldr	r3, [r3]
80028800:	e3c33030 	bic	r3, r3, #48	@ 0x30
80028804:	e3832010 	orr	r2, r3, #16
80028808:	e51b3008 	ldr	r3, [fp, #-8]
8002880c:	e5832000 	str	r2, [r3]
80028810:	e1a00000 	nop			@ (mov r0, r0)
80028814:	e24bd004 	sub	sp, fp, #4
80028818:	e8bd8800 	pop	{fp, pc}
8002881c:	80029b58 	.word	0x80029b58

80028820 <copyuvm>:
80028820:	e92d4810 	push	{r4, fp, lr}
80028824:	e28db008 	add	fp, sp, #8
80028828:	e24dd02c 	sub	sp, sp, #44	@ 0x2c
8002882c:	e50b0028 	str	r0, [fp, #-40]	@ 0xffffffd8
80028830:	e50b102c 	str	r1, [fp, #-44]	@ 0xffffffd4
80028834:	ebfffdff 	bl	80028038 <kpt_alloc>
80028838:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
8002883c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028840:	e3530000 	cmp	r3, #0
80028844:	1a000001 	bne	80028850 <copyuvm+0x30>
80028848:	e3a03000 	mov	r3, #0
8002884c:	ea000047 	b	80028970 <copyuvm+0x150>
80028850:	e3a03000 	mov	r3, #0
80028854:	e50b3010 	str	r3, [fp, #-16]
80028858:	ea000038 	b	80028940 <copyuvm+0x120>
8002885c:	e51b3010 	ldr	r3, [fp, #-16]
80028860:	e3a02000 	mov	r2, #0
80028864:	e1a01003 	mov	r1, r3
80028868:	e51b0028 	ldr	r0, [fp, #-40]	@ 0xffffffd8
8002886c:	ebfffe17 	bl	800280d0 <walkpgdir>
80028870:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028874:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
80028878:	e3530000 	cmp	r3, #0
8002887c:	1a000001 	bne	80028888 <copyuvm+0x68>
80028880:	e59f00f4 	ldr	r0, [pc, #244]	@ 8002897c <copyuvm+0x15c>
80028884:	ebffe488 	bl	80021aac <panic>
80028888:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
8002888c:	e5933000 	ldr	r3, [r3]
80028890:	e2033003 	and	r3, r3, #3
80028894:	e3530000 	cmp	r3, #0
80028898:	1a000001 	bne	800288a4 <copyuvm+0x84>
8002889c:	e59f00dc 	ldr	r0, [pc, #220]	@ 80028980 <copyuvm+0x160>
800288a0:	ebffe481 	bl	80021aac <panic>
800288a4:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288a8:	e5933000 	ldr	r3, [r3]
800288ac:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800288b0:	e3c3300f 	bic	r3, r3, #15
800288b4:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
800288b8:	e51b3018 	ldr	r3, [fp, #-24]	@ 0xffffffe8
800288bc:	e5933000 	ldr	r3, [r3]
800288c0:	e1a03223 	lsr	r3, r3, #4
800288c4:	e2033003 	and	r3, r3, #3
800288c8:	e50b3020 	str	r3, [fp, #-32]	@ 0xffffffe0
800288cc:	ebffe357 	bl	80021630 <alloc_page>
800288d0:	e50b0024 	str	r0, [fp, #-36]	@ 0xffffffdc
800288d4:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
800288d8:	e3530000 	cmp	r3, #0
800288dc:	0a00001d 	beq	80028958 <copyuvm+0x138>
800288e0:	e51b001c 	ldr	r0, [fp, #-28]	@ 0xffffffe4
800288e4:	ebfffd81 	bl	80027ef0 <p2v>
800288e8:	e1a03000 	mov	r3, r0
800288ec:	e3a02a01 	mov	r2, #4096	@ 0x1000
800288f0:	e1a01003 	mov	r1, r3
800288f4:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
800288f8:	ebffde32 	bl	800201c8 <memmove>
800288fc:	e51b4010 	ldr	r4, [fp, #-16]
80028900:	e51b0024 	ldr	r0, [fp, #-36]	@ 0xffffffdc
80028904:	ebfffd6f 	bl	80027ec8 <v2p>
80028908:	e1a02000 	mov	r2, r0
8002890c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028910:	e58d3000 	str	r3, [sp]
80028914:	e1a03002 	mov	r3, r2
80028918:	e3a02a01 	mov	r2, #4096	@ 0x1000
8002891c:	e1a01004 	mov	r1, r4
80028920:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028924:	ebfffe1f 	bl	800281a8 <mappages>
80028928:	e1a03000 	mov	r3, r0
8002892c:	e3530000 	cmp	r3, #0
80028930:	ba00000a 	blt	80028960 <copyuvm+0x140>
80028934:	e51b3010 	ldr	r3, [fp, #-16]
80028938:	e2833a01 	add	r3, r3, #4096	@ 0x1000
8002893c:	e50b3010 	str	r3, [fp, #-16]
80028940:	e51b2010 	ldr	r2, [fp, #-16]
80028944:	e51b302c 	ldr	r3, [fp, #-44]	@ 0xffffffd4
80028948:	e1520003 	cmp	r2, r3
8002894c:	3affffc2 	bcc	8002885c <copyuvm+0x3c>
80028950:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028954:	ea000005 	b	80028970 <copyuvm+0x150>
80028958:	e1a00000 	nop			@ (mov r0, r0)
8002895c:	ea000000 	b	80028964 <copyuvm+0x144>
80028960:	e1a00000 	nop			@ (mov r0, r0)
80028964:	e51b0014 	ldr	r0, [fp, #-20]	@ 0xffffffec
80028968:	ebffff63 	bl	800286fc <freevm>
8002896c:	e3a03000 	mov	r3, #0
80028970:	e1a00003 	mov	r0, r3
80028974:	e24bd008 	sub	sp, fp, #8
80028978:	e8bd8810 	pop	{r4, fp, pc}
8002897c:	80029b64 	.word	0x80029b64
80028980:	80029b80 	.word	0x80029b80

80028984 <uva2ka>:
80028984:	e92d4800 	push	{fp, lr}
80028988:	e28db004 	add	fp, sp, #4
8002898c:	e24dd010 	sub	sp, sp, #16
80028990:	e50b0010 	str	r0, [fp, #-16]
80028994:	e50b1014 	str	r1, [fp, #-20]	@ 0xffffffec
80028998:	e3a02000 	mov	r2, #0
8002899c:	e51b1014 	ldr	r1, [fp, #-20]	@ 0xffffffec
800289a0:	e51b0010 	ldr	r0, [fp, #-16]
800289a4:	ebfffdc9 	bl	800280d0 <walkpgdir>
800289a8:	e50b0008 	str	r0, [fp, #-8]
800289ac:	e51b3008 	ldr	r3, [fp, #-8]
800289b0:	e5933000 	ldr	r3, [r3]
800289b4:	e2033003 	and	r3, r3, #3
800289b8:	e3530000 	cmp	r3, #0
800289bc:	1a000001 	bne	800289c8 <uva2ka+0x44>
800289c0:	e3a03000 	mov	r3, #0
800289c4:	ea00000e 	b	80028a04 <uva2ka+0x80>
800289c8:	e51b3008 	ldr	r3, [fp, #-8]
800289cc:	e5933000 	ldr	r3, [r3]
800289d0:	e2033030 	and	r3, r3, #48	@ 0x30
800289d4:	e3530030 	cmp	r3, #48	@ 0x30
800289d8:	0a000001 	beq	800289e4 <uva2ka+0x60>
800289dc:	e3a03000 	mov	r3, #0
800289e0:	ea000007 	b	80028a04 <uva2ka+0x80>
800289e4:	e51b3008 	ldr	r3, [fp, #-8]
800289e8:	e5933000 	ldr	r3, [r3]
800289ec:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
800289f0:	e3c3300f 	bic	r3, r3, #15
800289f4:	e1a00003 	mov	r0, r3
800289f8:	ebfffd3c 	bl	80027ef0 <p2v>
800289fc:	e1a03000 	mov	r3, r0
80028a00:	e1a00000 	nop			@ (mov r0, r0)
80028a04:	e1a00003 	mov	r0, r3
80028a08:	e24bd004 	sub	sp, fp, #4
80028a0c:	e8bd8800 	pop	{fp, pc}

80028a10 <copyout>:
80028a10:	e92d4800 	push	{fp, lr}
80028a14:	e28db004 	add	fp, sp, #4
80028a18:	e24dd020 	sub	sp, sp, #32
80028a1c:	e50b0018 	str	r0, [fp, #-24]	@ 0xffffffe8
80028a20:	e50b101c 	str	r1, [fp, #-28]	@ 0xffffffe4
80028a24:	e50b2020 	str	r2, [fp, #-32]	@ 0xffffffe0
80028a28:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028a2c:	e51b3020 	ldr	r3, [fp, #-32]	@ 0xffffffe0
80028a30:	e50b3008 	str	r3, [fp, #-8]
80028a34:	ea00002c 	b	80028aec <copyout+0xdc>
80028a38:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028a3c:	e3c33eff 	bic	r3, r3, #4080	@ 0xff0
80028a40:	e3c3300f 	bic	r3, r3, #15
80028a44:	e50b3010 	str	r3, [fp, #-16]
80028a48:	e51b3010 	ldr	r3, [fp, #-16]
80028a4c:	e1a01003 	mov	r1, r3
80028a50:	e51b0018 	ldr	r0, [fp, #-24]	@ 0xffffffe8
80028a54:	ebffffca 	bl	80028984 <uva2ka>
80028a58:	e50b0014 	str	r0, [fp, #-20]	@ 0xffffffec
80028a5c:	e51b3014 	ldr	r3, [fp, #-20]	@ 0xffffffec
80028a60:	e3530000 	cmp	r3, #0
80028a64:	1a000001 	bne	80028a70 <copyout+0x60>
80028a68:	e3e03000 	mvn	r3, #0
80028a6c:	ea000022 	b	80028afc <copyout+0xec>
80028a70:	e51b2010 	ldr	r2, [fp, #-16]
80028a74:	e51b301c 	ldr	r3, [fp, #-28]	@ 0xffffffe4
80028a78:	e0423003 	sub	r3, r2, r3
80028a7c:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028a80:	e50b300c 	str	r3, [fp, #-12]
80028a84:	e51b200c 	ldr	r2, [fp, #-12]
80028a88:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028a8c:	e1520003 	cmp	r2, r3
80028a90:	9a000001 	bls	80028a9c <copyout+0x8c>
80028a94:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028a98:	e50b300c 	str	r3, [fp, #-12]
80028a9c:	e51b201c 	ldr	r2, [fp, #-28]	@ 0xffffffe4
80028aa0:	e51b3010 	ldr	r3, [fp, #-16]
80028aa4:	e0423003 	sub	r3, r2, r3
80028aa8:	e51b2014 	ldr	r2, [fp, #-20]	@ 0xffffffec
80028aac:	e0823003 	add	r3, r2, r3
80028ab0:	e51b200c 	ldr	r2, [fp, #-12]
80028ab4:	e51b1008 	ldr	r1, [fp, #-8]
80028ab8:	e1a00003 	mov	r0, r3
80028abc:	ebffddc1 	bl	800201c8 <memmove>
80028ac0:	e51b2024 	ldr	r2, [fp, #-36]	@ 0xffffffdc
80028ac4:	e51b300c 	ldr	r3, [fp, #-12]
80028ac8:	e0423003 	sub	r3, r2, r3
80028acc:	e50b3024 	str	r3, [fp, #-36]	@ 0xffffffdc
80028ad0:	e51b2008 	ldr	r2, [fp, #-8]
80028ad4:	e51b300c 	ldr	r3, [fp, #-12]
80028ad8:	e0823003 	add	r3, r2, r3
80028adc:	e50b3008 	str	r3, [fp, #-8]
80028ae0:	e51b3010 	ldr	r3, [fp, #-16]
80028ae4:	e2833a01 	add	r3, r3, #4096	@ 0x1000
80028ae8:	e50b301c 	str	r3, [fp, #-28]	@ 0xffffffe4
80028aec:	e51b3024 	ldr	r3, [fp, #-36]	@ 0xffffffdc
80028af0:	e3530000 	cmp	r3, #0
80028af4:	1affffcf 	bne	80028a38 <copyout+0x28>
80028af8:	e3a03000 	mov	r3, #0
80028afc:	e1a00003 	mov	r0, r3
80028b00:	e24bd004 	sub	sp, fp, #4
80028b04:	e8bd8800 	pop	{fp, pc}

80028b08 <paging_init>:
80028b08:	e92d4800 	push	{fp, lr}
80028b0c:	e28db004 	add	fp, sp, #4
80028b10:	e24dd010 	sub	sp, sp, #16
80028b14:	e50b0008 	str	r0, [fp, #-8]
80028b18:	e50b100c 	str	r1, [fp, #-12]
80028b1c:	e59f0034 	ldr	r0, [pc, #52]	@ 80028b58 <paging_init+0x50>
80028b20:	e51b3008 	ldr	r3, [fp, #-8]
80028b24:	e2833102 	add	r3, r3, #-2147483648	@ 0x80000000
80028b28:	e1a01003 	mov	r1, r3
80028b2c:	e51b200c 	ldr	r2, [fp, #-12]
80028b30:	e51b3008 	ldr	r3, [fp, #-8]
80028b34:	e0422003 	sub	r2, r2, r3
80028b38:	e3a03003 	mov	r3, #3
80028b3c:	e58d3000 	str	r3, [sp]
80028b40:	e51b3008 	ldr	r3, [fp, #-8]
80028b44:	ebfffd97 	bl	800281a8 <mappages>
80028b48:	ebfffdd2 	bl	80028298 <flush_tlb>
80028b4c:	e1a00000 	nop			@ (mov r0, r0)
80028b50:	e24bd004 	sub	sp, fp, #4
80028b54:	e8bd8800 	pop	{fp, pc}
80028b58:	80014000 	.word	0x80014000

80028b5c <default_isr>:
80028b5c:	e92d4800 	push	{fp, lr}
80028b60:	e28db004 	add	fp, sp, #4
80028b64:	e24dd008 	sub	sp, sp, #8
80028b68:	e50b0008 	str	r0, [fp, #-8]
80028b6c:	e50b100c 	str	r1, [fp, #-12]
80028b70:	e51b100c 	ldr	r1, [fp, #-12]
80028b74:	e59f000c 	ldr	r0, [pc, #12]	@ 80028b88 <default_isr+0x2c>
80028b78:	ebffe345 	bl	80021894 <cprintf>
80028b7c:	e1a00000 	nop			@ (mov r0, r0)
80028b80:	e24bd004 	sub	sp, fp, #4
80028b84:	e8bd8800 	pop	{fp, pc}
80028b88:	80029b9c 	.word	0x80029b9c

80028b8c <pic_init>:
80028b8c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028b90:	e28db000 	add	fp, sp, #0
80028b94:	e24dd014 	sub	sp, sp, #20
80028b98:	e50b0010 	str	r0, [fp, #-16]
80028b9c:	e59f2060 	ldr	r2, [pc, #96]	@ 80028c04 <pic_init+0x78>
80028ba0:	e51b3010 	ldr	r3, [fp, #-16]
80028ba4:	e5823000 	str	r3, [r2]
80028ba8:	e59f3054 	ldr	r3, [pc, #84]	@ 80028c04 <pic_init+0x78>
80028bac:	e5933000 	ldr	r3, [r3]
80028bb0:	e2833014 	add	r3, r3, #20
80028bb4:	e3e02000 	mvn	r2, #0
80028bb8:	e5832000 	str	r2, [r3]
80028bbc:	e3a03000 	mov	r3, #0
80028bc0:	e50b3008 	str	r3, [fp, #-8]
80028bc4:	ea000006 	b	80028be4 <pic_init+0x58>
80028bc8:	e59f2038 	ldr	r2, [pc, #56]	@ 80028c08 <pic_init+0x7c>
80028bcc:	e51b3008 	ldr	r3, [fp, #-8]
80028bd0:	e59f1034 	ldr	r1, [pc, #52]	@ 80028c0c <pic_init+0x80>
80028bd4:	e7821103 	str	r1, [r2, r3, lsl #2]
80028bd8:	e51b3008 	ldr	r3, [fp, #-8]
80028bdc:	e2833001 	add	r3, r3, #1
80028be0:	e50b3008 	str	r3, [fp, #-8]
80028be4:	e51b3008 	ldr	r3, [fp, #-8]
80028be8:	e353001f 	cmp	r3, #31
80028bec:	dafffff5 	ble	80028bc8 <pic_init+0x3c>
80028bf0:	e1a00000 	nop			@ (mov r0, r0)
80028bf4:	e1a00000 	nop			@ (mov r0, r0)
80028bf8:	e28bd000 	add	sp, fp, #0
80028bfc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028c00:	e12fff1e 	bx	lr
80028c04:	800afa8c 	.word	0x800afa8c
80028c08:	800afa90 	.word	0x800afa90
80028c0c:	80028b5c 	.word	0x80028b5c

80028c10 <pic_enable>:
80028c10:	e92d4800 	push	{fp, lr}
80028c14:	e28db004 	add	fp, sp, #4
80028c18:	e24dd008 	sub	sp, sp, #8
80028c1c:	e50b0008 	str	r0, [fp, #-8]
80028c20:	e50b100c 	str	r1, [fp, #-12]
80028c24:	e51b3008 	ldr	r3, [fp, #-8]
80028c28:	e3530000 	cmp	r3, #0
80028c2c:	ba000002 	blt	80028c3c <pic_enable+0x2c>
80028c30:	e51b3008 	ldr	r3, [fp, #-8]
80028c34:	e353001f 	cmp	r3, #31
80028c38:	da000001 	ble	80028c44 <pic_enable+0x34>
80028c3c:	e59f0038 	ldr	r0, [pc, #56]	@ 80028c7c <pic_enable+0x6c>
80028c40:	ebffe399 	bl	80021aac <panic>
80028c44:	e59f1034 	ldr	r1, [pc, #52]	@ 80028c80 <pic_enable+0x70>
80028c48:	e51b3008 	ldr	r3, [fp, #-8]
80028c4c:	e51b200c 	ldr	r2, [fp, #-12]
80028c50:	e7812103 	str	r2, [r1, r3, lsl #2]
80028c54:	e3a02001 	mov	r2, #1
80028c58:	e51b3008 	ldr	r3, [fp, #-8]
80028c5c:	e1a02312 	lsl	r2, r2, r3
80028c60:	e59f301c 	ldr	r3, [pc, #28]	@ 80028c84 <pic_enable+0x74>
80028c64:	e5933000 	ldr	r3, [r3]
80028c68:	e2833010 	add	r3, r3, #16
80028c6c:	e5832000 	str	r2, [r3]
80028c70:	e1a00000 	nop			@ (mov r0, r0)
80028c74:	e24bd004 	sub	sp, fp, #4
80028c78:	e8bd8800 	pop	{fp, pc}
80028c7c:	80029bb8 	.word	0x80029bb8
80028c80:	800afa90 	.word	0x800afa90
80028c84:	800afa8c 	.word	0x800afa8c

80028c88 <pic_disable>:
80028c88:	e92d4800 	push	{fp, lr}
80028c8c:	e28db004 	add	fp, sp, #4
80028c90:	e24dd008 	sub	sp, sp, #8
80028c94:	e50b0008 	str	r0, [fp, #-8]
80028c98:	e51b3008 	ldr	r3, [fp, #-8]
80028c9c:	e3530000 	cmp	r3, #0
80028ca0:	ba000002 	blt	80028cb0 <pic_disable+0x28>
80028ca4:	e51b3008 	ldr	r3, [fp, #-8]
80028ca8:	e353001f 	cmp	r3, #31
80028cac:	da000001 	ble	80028cb8 <pic_disable+0x30>
80028cb0:	e59f0038 	ldr	r0, [pc, #56]	@ 80028cf0 <pic_disable+0x68>
80028cb4:	ebffe37c 	bl	80021aac <panic>
80028cb8:	e3a02001 	mov	r2, #1
80028cbc:	e51b3008 	ldr	r3, [fp, #-8]
80028cc0:	e1a02312 	lsl	r2, r2, r3
80028cc4:	e59f3028 	ldr	r3, [pc, #40]	@ 80028cf4 <pic_disable+0x6c>
80028cc8:	e5933000 	ldr	r3, [r3]
80028ccc:	e2833014 	add	r3, r3, #20
80028cd0:	e5832000 	str	r2, [r3]
80028cd4:	e59f201c 	ldr	r2, [pc, #28]	@ 80028cf8 <pic_disable+0x70>
80028cd8:	e51b3008 	ldr	r3, [fp, #-8]
80028cdc:	e59f1018 	ldr	r1, [pc, #24]	@ 80028cfc <pic_disable+0x74>
80028ce0:	e7821103 	str	r1, [r2, r3, lsl #2]
80028ce4:	e1a00000 	nop			@ (mov r0, r0)
80028ce8:	e24bd004 	sub	sp, fp, #4
80028cec:	e8bd8800 	pop	{fp, pc}
80028cf0:	80029bb8 	.word	0x80029bb8
80028cf4:	800afa8c 	.word	0x800afa8c
80028cf8:	800afa90 	.word	0x800afa90
80028cfc:	80028b5c 	.word	0x80028b5c

80028d00 <pic_dispatch>:
80028d00:	e92d4800 	push	{fp, lr}
80028d04:	e28db004 	add	fp, sp, #4
80028d08:	e24dd010 	sub	sp, sp, #16
80028d0c:	e50b0010 	str	r0, [fp, #-16]
80028d10:	e59f3080 	ldr	r3, [pc, #128]	@ 80028d98 <pic_dispatch+0x98>
80028d14:	e5933000 	ldr	r3, [r3]
80028d18:	e5933000 	ldr	r3, [r3]
80028d1c:	e50b300c 	str	r3, [fp, #-12]
80028d20:	e3a03000 	mov	r3, #0
80028d24:	e50b3008 	str	r3, [fp, #-8]
80028d28:	ea000010 	b	80028d70 <pic_dispatch+0x70>
80028d2c:	e3a02001 	mov	r2, #1
80028d30:	e51b3008 	ldr	r3, [fp, #-8]
80028d34:	e1a03312 	lsl	r3, r2, r3
80028d38:	e1a02003 	mov	r2, r3
80028d3c:	e51b300c 	ldr	r3, [fp, #-12]
80028d40:	e0033002 	and	r3, r3, r2
80028d44:	e3530000 	cmp	r3, #0
80028d48:	0a000005 	beq	80028d64 <pic_dispatch+0x64>
80028d4c:	e59f2048 	ldr	r2, [pc, #72]	@ 80028d9c <pic_dispatch+0x9c>
80028d50:	e51b3008 	ldr	r3, [fp, #-8]
80028d54:	e7923103 	ldr	r3, [r2, r3, lsl #2]
80028d58:	e51b1008 	ldr	r1, [fp, #-8]
80028d5c:	e51b0010 	ldr	r0, [fp, #-16]
80028d60:	e12fff33 	blx	r3
80028d64:	e51b3008 	ldr	r3, [fp, #-8]
80028d68:	e2833001 	add	r3, r3, #1
80028d6c:	e50b3008 	str	r3, [fp, #-8]
80028d70:	e51b3008 	ldr	r3, [fp, #-8]
80028d74:	e353001f 	cmp	r3, #31
80028d78:	daffffeb 	ble	80028d2c <pic_dispatch+0x2c>
80028d7c:	e59f3014 	ldr	r3, [pc, #20]	@ 80028d98 <pic_dispatch+0x98>
80028d80:	e5933000 	ldr	r3, [r3]
80028d84:	e5933000 	ldr	r3, [r3]
80028d88:	e50b300c 	str	r3, [fp, #-12]
80028d8c:	e1a00000 	nop			@ (mov r0, r0)
80028d90:	e24bd004 	sub	sp, fp, #4
80028d94:	e8bd8800 	pop	{fp, pc}
80028d98:	800afa8c 	.word	0x800afa8c
80028d9c:	800afa90 	.word	0x800afa90

80028da0 <ack_timer>:
80028da0:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028da4:	e28db000 	add	fp, sp, #0
80028da8:	e24dd00c 	sub	sp, sp, #12
80028dac:	e59f3020 	ldr	r3, [pc, #32]	@ 80028dd4 <ack_timer+0x34>
80028db0:	e50b3008 	str	r3, [fp, #-8]
80028db4:	e51b3008 	ldr	r3, [fp, #-8]
80028db8:	e283300c 	add	r3, r3, #12
80028dbc:	e3a02001 	mov	r2, #1
80028dc0:	e5832000 	str	r2, [r3]
80028dc4:	e1a00000 	nop			@ (mov r0, r0)
80028dc8:	e28bd000 	add	sp, fp, #0
80028dcc:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028dd0:	e12fff1e 	bx	lr
80028dd4:	901e2000 	.word	0x901e2000

80028dd8 <timer_init>:
80028dd8:	e92d4800 	push	{fp, lr}
80028ddc:	e28db004 	add	fp, sp, #4
80028de0:	e24dd010 	sub	sp, sp, #16
80028de4:	e50b0010 	str	r0, [fp, #-16]
80028de8:	e59f3050 	ldr	r3, [pc, #80]	@ 80028e40 <timer_init+0x68>
80028dec:	e50b3008 	str	r3, [fp, #-8]
80028df0:	e59f104c 	ldr	r1, [pc, #76]	@ 80028e44 <timer_init+0x6c>
80028df4:	e59f004c 	ldr	r0, [pc, #76]	@ 80028e48 <timer_init+0x70>
80028df8:	ebfff422 	bl	80025e88 <initlock>
80028dfc:	e51b1010 	ldr	r1, [fp, #-16]
80028e00:	e59f0044 	ldr	r0, [pc, #68]	@ 80028e4c <timer_init+0x74>
80028e04:	eb000109 	bl	80029230 <__divsi3>
80028e08:	e1a03000 	mov	r3, r0
80028e0c:	e1a02003 	mov	r2, r3
80028e10:	e51b3008 	ldr	r3, [fp, #-8]
80028e14:	e5832000 	str	r2, [r3]
80028e18:	e51b3008 	ldr	r3, [fp, #-8]
80028e1c:	e2833008 	add	r3, r3, #8
80028e20:	e3a020e2 	mov	r2, #226	@ 0xe2
80028e24:	e5832000 	str	r2, [r3]
80028e28:	e59f1020 	ldr	r1, [pc, #32]	@ 80028e50 <timer_init+0x78>
80028e2c:	e3a00004 	mov	r0, #4
80028e30:	ebffff76 	bl	80028c10 <pic_enable>
80028e34:	e1a00000 	nop			@ (mov r0, r0)
80028e38:	e24bd004 	sub	sp, fp, #4
80028e3c:	e8bd8800 	pop	{fp, pc}
80028e40:	901e2000 	.word	0x901e2000
80028e44:	80029bd4 	.word	0x80029bd4
80028e48:	800afb10 	.word	0x800afb10
80028e4c:	000f4240 	.word	0x000f4240
80028e50:	80028e54 	.word	0x80028e54

80028e54 <isr_timer>:
80028e54:	e92d4800 	push	{fp, lr}
80028e58:	e28db004 	add	fp, sp, #4
80028e5c:	e24dd008 	sub	sp, sp, #8
80028e60:	e50b0008 	str	r0, [fp, #-8]
80028e64:	e50b100c 	str	r1, [fp, #-12]
80028e68:	e59f0034 	ldr	r0, [pc, #52]	@ 80028ea4 <isr_timer+0x50>
80028e6c:	ebfff417 	bl	80025ed0 <acquire>
80028e70:	e59f3030 	ldr	r3, [pc, #48]	@ 80028ea8 <isr_timer+0x54>
80028e74:	e5933000 	ldr	r3, [r3]
80028e78:	e2833001 	add	r3, r3, #1
80028e7c:	e59f2024 	ldr	r2, [pc, #36]	@ 80028ea8 <isr_timer+0x54>
80028e80:	e5823000 	str	r3, [r2]
80028e84:	e59f001c 	ldr	r0, [pc, #28]	@ 80028ea8 <isr_timer+0x54>
80028e88:	ebfff38b 	bl	80025cbc <wakeup>
80028e8c:	e59f0010 	ldr	r0, [pc, #16]	@ 80028ea4 <isr_timer+0x50>
80028e90:	ebfff419 	bl	80025efc <release>
80028e94:	ebffffc1 	bl	80028da0 <ack_timer>
80028e98:	e1a00000 	nop			@ (mov r0, r0)
80028e9c:	e24bd004 	sub	sp, fp, #4
80028ea0:	e8bd8800 	pop	{fp, pc}
80028ea4:	800afb10 	.word	0x800afb10
80028ea8:	800afb44 	.word	0x800afb44

80028eac <micro_delay>:
80028eac:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028eb0:	e28db000 	add	fp, sp, #0
80028eb4:	e24dd014 	sub	sp, sp, #20
80028eb8:	e50b0010 	str	r0, [fp, #-16]
80028ebc:	e59f3054 	ldr	r3, [pc, #84]	@ 80028f18 <micro_delay+0x6c>
80028ec0:	e50b3008 	str	r3, [fp, #-8]
80028ec4:	e51b3008 	ldr	r3, [fp, #-8]
80028ec8:	e2833008 	add	r3, r3, #8
80028ecc:	e3a02082 	mov	r2, #130	@ 0x82
80028ed0:	e5832000 	str	r2, [r3]
80028ed4:	e51b2010 	ldr	r2, [fp, #-16]
80028ed8:	e51b3008 	ldr	r3, [fp, #-8]
80028edc:	e5832000 	str	r2, [r3]
80028ee0:	e1a00000 	nop			@ (mov r0, r0)
80028ee4:	e51b3008 	ldr	r3, [fp, #-8]
80028ee8:	e2833004 	add	r3, r3, #4
80028eec:	e5933000 	ldr	r3, [r3]
80028ef0:	e3530000 	cmp	r3, #0
80028ef4:	cafffffa 	bgt	80028ee4 <micro_delay+0x38>
80028ef8:	e51b3008 	ldr	r3, [fp, #-8]
80028efc:	e2833008 	add	r3, r3, #8
80028f00:	e3a02000 	mov	r2, #0
80028f04:	e5832000 	str	r2, [r3]
80028f08:	e1a00000 	nop			@ (mov r0, r0)
80028f0c:	e28bd000 	add	sp, fp, #0
80028f10:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028f14:	e12fff1e 	bx	lr
80028f18:	901e2020 	.word	0x901e2020

80028f1c <uart_init>:
80028f1c:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80028f20:	e28db000 	add	fp, sp, #0
80028f24:	e24dd014 	sub	sp, sp, #20
80028f28:	e50b0010 	str	r0, [fp, #-16]
80028f2c:	e59f20a4 	ldr	r2, [pc, #164]	@ 80028fd8 <uart_init+0xbc>
80028f30:	e51b3010 	ldr	r3, [fp, #-16]
80028f34:	e5823000 	str	r3, [r2]
80028f38:	e59f3098 	ldr	r3, [pc, #152]	@ 80028fd8 <uart_init+0xbc>
80028f3c:	e5933000 	ldr	r3, [r3]
80028f40:	e2833024 	add	r3, r3, #36	@ 0x24
80028f44:	e3a0204e 	mov	r2, #78	@ 0x4e
80028f48:	e5832000 	str	r2, [r3]
80028f4c:	e3a03c96 	mov	r3, #38400	@ 0x9600
80028f50:	e50b3008 	str	r3, [fp, #-8]
80028f54:	e51b3008 	ldr	r3, [fp, #-8]
80028f58:	e2833e96 	add	r3, r3, #2400	@ 0x960
80028f5c:	e1a02103 	lsl	r2, r3, #2
80028f60:	e59f3070 	ldr	r3, [pc, #112]	@ 80028fd8 <uart_init+0xbc>
80028f64:	e5933000 	ldr	r3, [r3]
80028f68:	e2833028 	add	r3, r3, #40	@ 0x28
80028f6c:	e59f1068 	ldr	r1, [pc, #104]	@ 80028fdc <uart_init+0xc0>
80028f70:	e0821291 	umull	r1, r2, r1, r2
80028f74:	e1a025a2 	lsr	r2, r2, #11
80028f78:	e5832000 	str	r2, [r3]
80028f7c:	e59f3054 	ldr	r3, [pc, #84]	@ 80028fd8 <uart_init+0xbc>
80028f80:	e5933000 	ldr	r3, [r3]
80028f84:	e2833030 	add	r3, r3, #48	@ 0x30
80028f88:	e5933000 	ldr	r3, [r3]
80028f8c:	e59f2044 	ldr	r2, [pc, #68]	@ 80028fd8 <uart_init+0xbc>
80028f90:	e5922000 	ldr	r2, [r2]
80028f94:	e2822030 	add	r2, r2, #48	@ 0x30
80028f98:	e3833c03 	orr	r3, r3, #768	@ 0x300
80028f9c:	e3833001 	orr	r3, r3, #1
80028fa0:	e5823000 	str	r3, [r2]
80028fa4:	e59f302c 	ldr	r3, [pc, #44]	@ 80028fd8 <uart_init+0xbc>
80028fa8:	e5933000 	ldr	r3, [r3]
80028fac:	e283302c 	add	r3, r3, #44	@ 0x2c
80028fb0:	e5932000 	ldr	r2, [r3]
80028fb4:	e59f301c 	ldr	r3, [pc, #28]	@ 80028fd8 <uart_init+0xbc>
80028fb8:	e5933000 	ldr	r3, [r3]
80028fbc:	e283302c 	add	r3, r3, #44	@ 0x2c
80028fc0:	e3822010 	orr	r2, r2, #16
80028fc4:	e5832000 	str	r2, [r3]
80028fc8:	e1a00000 	nop			@ (mov r0, r0)
80028fcc:	e28bd000 	add	sp, fp, #0
80028fd0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
80028fd4:	e12fff1e 	bx	lr
80028fd8:	800afb48 	.word	0x800afb48
80028fdc:	1b4e81b5 	.word	0x1b4e81b5

80028fe0 <uart_enable_rx>:
80028fe0:	e92d4800 	push	{fp, lr}
80028fe4:	e28db004 	add	fp, sp, #4
80028fe8:	e59f3020 	ldr	r3, [pc, #32]	@ 80029010 <uart_enable_rx+0x30>
80028fec:	e5933000 	ldr	r3, [r3]
80028ff0:	e2833038 	add	r3, r3, #56	@ 0x38
80028ff4:	e3a02010 	mov	r2, #16
80028ff8:	e5832000 	str	r2, [r3]
80028ffc:	e59f1010 	ldr	r1, [pc, #16]	@ 80029014 <uart_enable_rx+0x34>
80029000:	e3a0000c 	mov	r0, #12
80029004:	ebffff01 	bl	80028c10 <pic_enable>
80029008:	e1a00000 	nop			@ (mov r0, r0)
8002900c:	e8bd8800 	pop	{fp, pc}
80029010:	800afb48 	.word	0x800afb48
80029014:	800290bc 	.word	0x800290bc

80029018 <uartputc>:
80029018:	e92d4800 	push	{fp, lr}
8002901c:	e28db004 	add	fp, sp, #4
80029020:	e24dd008 	sub	sp, sp, #8
80029024:	e50b0008 	str	r0, [fp, #-8]
80029028:	ea000001 	b	80029034 <uartputc+0x1c>
8002902c:	e3a0000a 	mov	r0, #10
80029030:	ebffff9d 	bl	80028eac <micro_delay>
80029034:	e59f3030 	ldr	r3, [pc, #48]	@ 8002906c <uartputc+0x54>
80029038:	e5933000 	ldr	r3, [r3]
8002903c:	e2833018 	add	r3, r3, #24
80029040:	e5933000 	ldr	r3, [r3]
80029044:	e2033020 	and	r3, r3, #32
80029048:	e3530000 	cmp	r3, #0
8002904c:	1afffff6 	bne	8002902c <uartputc+0x14>
80029050:	e59f3014 	ldr	r3, [pc, #20]	@ 8002906c <uartputc+0x54>
80029054:	e5933000 	ldr	r3, [r3]
80029058:	e51b2008 	ldr	r2, [fp, #-8]
8002905c:	e5832000 	str	r2, [r3]
80029060:	e1a00000 	nop			@ (mov r0, r0)
80029064:	e24bd004 	sub	sp, fp, #4
80029068:	e8bd8800 	pop	{fp, pc}
8002906c:	800afb48 	.word	0x800afb48

80029070 <uartgetc>:
80029070:	e52db004 	push	{fp}		@ (str fp, [sp, #-4]!)
80029074:	e28db000 	add	fp, sp, #0
80029078:	e59f3038 	ldr	r3, [pc, #56]	@ 800290b8 <uartgetc+0x48>
8002907c:	e5933000 	ldr	r3, [r3]
80029080:	e2833018 	add	r3, r3, #24
80029084:	e5933000 	ldr	r3, [r3]
80029088:	e2033010 	and	r3, r3, #16
8002908c:	e3530000 	cmp	r3, #0
80029090:	0a000001 	beq	8002909c <uartgetc+0x2c>
80029094:	e3e03000 	mvn	r3, #0
80029098:	ea000002 	b	800290a8 <uartgetc+0x38>
8002909c:	e59f3014 	ldr	r3, [pc, #20]	@ 800290b8 <uartgetc+0x48>
800290a0:	e5933000 	ldr	r3, [r3]
800290a4:	e5933000 	ldr	r3, [r3]
800290a8:	e1a00003 	mov	r0, r3
800290ac:	e28bd000 	add	sp, fp, #0
800290b0:	e49db004 	pop	{fp}		@ (ldr fp, [sp], #4)
800290b4:	e12fff1e 	bx	lr
800290b8:	800afb48 	.word	0x800afb48

800290bc <isr_uart>:
800290bc:	e92d4800 	push	{fp, lr}
800290c0:	e28db004 	add	fp, sp, #4
800290c4:	e24dd008 	sub	sp, sp, #8
800290c8:	e50b0008 	str	r0, [fp, #-8]
800290cc:	e50b100c 	str	r1, [fp, #-12]
800290d0:	e59f303c 	ldr	r3, [pc, #60]	@ 80029114 <isr_uart+0x58>
800290d4:	e5933000 	ldr	r3, [r3]
800290d8:	e2833040 	add	r3, r3, #64	@ 0x40
800290dc:	e5933000 	ldr	r3, [r3]
800290e0:	e2033010 	and	r3, r3, #16
800290e4:	e3530000 	cmp	r3, #0
800290e8:	0a000001 	beq	800290f4 <isr_uart+0x38>
800290ec:	e59f0024 	ldr	r0, [pc, #36]	@ 80029118 <isr_uart+0x5c>
800290f0:	ebffe2a1 	bl	80021b7c <consoleintr>
800290f4:	e59f3018 	ldr	r3, [pc, #24]	@ 80029114 <isr_uart+0x58>
800290f8:	e5933000 	ldr	r3, [r3]
800290fc:	e2833044 	add	r3, r3, #68	@ 0x44
80029100:	e3a02030 	mov	r2, #48	@ 0x30
80029104:	e5832000 	str	r2, [r3]
80029108:	e1a00000 	nop			@ (mov r0, r0)
8002910c:	e24bd004 	sub	sp, fp, #4
80029110:	e8bd8800 	pop	{fp, pc}
80029114:	800afb48 	.word	0x800afb48
80029118:	80029070 	.word	0x80029070

8002911c <__udivsi3>:
8002911c:	e2512001 	subs	r2, r1, #1
80029120:	012fff1e 	bxeq	lr
80029124:	3a000036 	bcc	80029204 <__udivsi3+0xe8>
80029128:	e1500001 	cmp	r0, r1
8002912c:	9a000022 	bls	800291bc <__udivsi3+0xa0>
80029130:	e1110002 	tst	r1, r2
80029134:	0a000023 	beq	800291c8 <__udivsi3+0xac>
80029138:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
8002913c:	01a01181 	lsleq	r1, r1, #3
80029140:	03a03008 	moveq	r3, #8
80029144:	13a03001 	movne	r3, #1
80029148:	e3510201 	cmp	r1, #268435456	@ 0x10000000
8002914c:	31510000 	cmpcc	r1, r0
80029150:	31a01201 	lslcc	r1, r1, #4
80029154:	31a03203 	lslcc	r3, r3, #4
80029158:	3afffffa 	bcc	80029148 <__udivsi3+0x2c>
8002915c:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029160:	31510000 	cmpcc	r1, r0
80029164:	31a01081 	lslcc	r1, r1, #1
80029168:	31a03083 	lslcc	r3, r3, #1
8002916c:	3afffffa 	bcc	8002915c <__udivsi3+0x40>
80029170:	e3a02000 	mov	r2, #0
80029174:	e1500001 	cmp	r0, r1
80029178:	20400001 	subcs	r0, r0, r1
8002917c:	21822003 	orrcs	r2, r2, r3
80029180:	e15000a1 	cmp	r0, r1, lsr #1
80029184:	204000a1 	subcs	r0, r0, r1, lsr #1
80029188:	218220a3 	orrcs	r2, r2, r3, lsr #1
8002918c:	e1500121 	cmp	r0, r1, lsr #2
80029190:	20400121 	subcs	r0, r0, r1, lsr #2
80029194:	21822123 	orrcs	r2, r2, r3, lsr #2
80029198:	e15001a1 	cmp	r0, r1, lsr #3
8002919c:	204001a1 	subcs	r0, r0, r1, lsr #3
800291a0:	218221a3 	orrcs	r2, r2, r3, lsr #3
800291a4:	e3500000 	cmp	r0, #0
800291a8:	11b03223 	lsrsne	r3, r3, #4
800291ac:	11a01221 	lsrne	r1, r1, #4
800291b0:	1affffef 	bne	80029174 <__udivsi3+0x58>
800291b4:	e1a00002 	mov	r0, r2
800291b8:	e12fff1e 	bx	lr
800291bc:	03a00001 	moveq	r0, #1
800291c0:	13a00000 	movne	r0, #0
800291c4:	e12fff1e 	bx	lr
800291c8:	e3510801 	cmp	r1, #65536	@ 0x10000
800291cc:	21a01821 	lsrcs	r1, r1, #16
800291d0:	23a02010 	movcs	r2, #16
800291d4:	33a02000 	movcc	r2, #0
800291d8:	e3510c01 	cmp	r1, #256	@ 0x100
800291dc:	21a01421 	lsrcs	r1, r1, #8
800291e0:	22822008 	addcs	r2, r2, #8
800291e4:	e3510010 	cmp	r1, #16
800291e8:	21a01221 	lsrcs	r1, r1, #4
800291ec:	22822004 	addcs	r2, r2, #4
800291f0:	e3510004 	cmp	r1, #4
800291f4:	82822003 	addhi	r2, r2, #3
800291f8:	908220a1 	addls	r2, r2, r1, lsr #1
800291fc:	e1a00230 	lsr	r0, r0, r2
80029200:	e12fff1e 	bx	lr
80029204:	e3500000 	cmp	r0, #0
80029208:	13e00000 	mvnne	r0, #0
8002920c:	ea000059 	b	80029378 <__aeabi_idiv0>

80029210 <__aeabi_uidivmod>:
80029210:	e3510000 	cmp	r1, #0
80029214:	0afffffa 	beq	80029204 <__udivsi3+0xe8>
80029218:	e92d4003 	push	{r0, r1, lr}
8002921c:	ebffffbe 	bl	8002911c <__udivsi3>
80029220:	e8bd4006 	pop	{r1, r2, lr}
80029224:	e0030092 	mul	r3, r2, r0
80029228:	e0411003 	sub	r1, r1, r3
8002922c:	e12fff1e 	bx	lr

80029230 <__divsi3>:
80029230:	e3510000 	cmp	r1, #0
80029234:	0a000043 	beq	80029348 <.divsi3_skip_div0_test+0x110>

80029238 <.divsi3_skip_div0_test>:
80029238:	e020c001 	eor	ip, r0, r1
8002923c:	42611000 	rsbmi	r1, r1, #0
80029240:	e2512001 	subs	r2, r1, #1
80029244:	0a000027 	beq	800292e8 <.divsi3_skip_div0_test+0xb0>
80029248:	e1b03000 	movs	r3, r0
8002924c:	42603000 	rsbmi	r3, r0, #0
80029250:	e1530001 	cmp	r3, r1
80029254:	9a000026 	bls	800292f4 <.divsi3_skip_div0_test+0xbc>
80029258:	e1110002 	tst	r1, r2
8002925c:	0a000028 	beq	80029304 <.divsi3_skip_div0_test+0xcc>
80029260:	e311020e 	tst	r1, #-536870912	@ 0xe0000000
80029264:	01a01181 	lsleq	r1, r1, #3
80029268:	03a02008 	moveq	r2, #8
8002926c:	13a02001 	movne	r2, #1
80029270:	e3510201 	cmp	r1, #268435456	@ 0x10000000
80029274:	31510003 	cmpcc	r1, r3
80029278:	31a01201 	lslcc	r1, r1, #4
8002927c:	31a02202 	lslcc	r2, r2, #4
80029280:	3afffffa 	bcc	80029270 <.divsi3_skip_div0_test+0x38>
80029284:	e3510102 	cmp	r1, #-2147483648	@ 0x80000000
80029288:	31510003 	cmpcc	r1, r3
8002928c:	31a01081 	lslcc	r1, r1, #1
80029290:	31a02082 	lslcc	r2, r2, #1
80029294:	3afffffa 	bcc	80029284 <.divsi3_skip_div0_test+0x4c>
80029298:	e3a00000 	mov	r0, #0
8002929c:	e1530001 	cmp	r3, r1
800292a0:	20433001 	subcs	r3, r3, r1
800292a4:	21800002 	orrcs	r0, r0, r2
800292a8:	e15300a1 	cmp	r3, r1, lsr #1
800292ac:	204330a1 	subcs	r3, r3, r1, lsr #1
800292b0:	218000a2 	orrcs	r0, r0, r2, lsr #1
800292b4:	e1530121 	cmp	r3, r1, lsr #2
800292b8:	20433121 	subcs	r3, r3, r1, lsr #2
800292bc:	21800122 	orrcs	r0, r0, r2, lsr #2
800292c0:	e15301a1 	cmp	r3, r1, lsr #3
800292c4:	204331a1 	subcs	r3, r3, r1, lsr #3
800292c8:	218001a2 	orrcs	r0, r0, r2, lsr #3
800292cc:	e3530000 	cmp	r3, #0
800292d0:	11b02222 	lsrsne	r2, r2, #4
800292d4:	11a01221 	lsrne	r1, r1, #4
800292d8:	1affffef 	bne	8002929c <.divsi3_skip_div0_test+0x64>
800292dc:	e35c0000 	cmp	ip, #0
800292e0:	42600000 	rsbmi	r0, r0, #0
800292e4:	e12fff1e 	bx	lr
800292e8:	e13c0000 	teq	ip, r0
800292ec:	42600000 	rsbmi	r0, r0, #0
800292f0:	e12fff1e 	bx	lr
800292f4:	33a00000 	movcc	r0, #0
800292f8:	01a00fcc 	asreq	r0, ip, #31
800292fc:	03800001 	orreq	r0, r0, #1
80029300:	e12fff1e 	bx	lr
80029304:	e3510801 	cmp	r1, #65536	@ 0x10000
80029308:	21a01821 	lsrcs	r1, r1, #16
8002930c:	23a02010 	movcs	r2, #16
80029310:	33a02000 	movcc	r2, #0
80029314:	e3510c01 	cmp	r1, #256	@ 0x100
80029318:	21a01421 	lsrcs	r1, r1, #8
8002931c:	22822008 	addcs	r2, r2, #8
80029320:	e3510010 	cmp	r1, #16
80029324:	21a01221 	lsrcs	r1, r1, #4
80029328:	22822004 	addcs	r2, r2, #4
8002932c:	e3510004 	cmp	r1, #4
80029330:	82822003 	addhi	r2, r2, #3
80029334:	908220a1 	addls	r2, r2, r1, lsr #1
80029338:	e35c0000 	cmp	ip, #0
8002933c:	e1a00233 	lsr	r0, r3, r2
80029340:	42600000 	rsbmi	r0, r0, #0
80029344:	e12fff1e 	bx	lr
80029348:	e3500000 	cmp	r0, #0
8002934c:	c3e00102 	mvngt	r0, #-2147483648	@ 0x80000000
80029350:	b3a00102 	movlt	r0, #-2147483648	@ 0x80000000
80029354:	ea000007 	b	80029378 <__aeabi_idiv0>

80029358 <__aeabi_idivmod>:
80029358:	e3510000 	cmp	r1, #0
8002935c:	0afffff9 	beq	80029348 <.divsi3_skip_div0_test+0x110>
80029360:	e92d4003 	push	{r0, r1, lr}
80029364:	ebffffb3 	bl	80029238 <.divsi3_skip_div0_test>
80029368:	e8bd4006 	pop	{r1, r2, lr}
8002936c:	e0030092 	mul	r3, r2, r0
80029370:	e0411003 	sub	r1, r1, r3
80029374:	e12fff1e 	bx	lr

80029378 <__aeabi_idiv0>:
80029378:	e12fff1e 	bx	lr
