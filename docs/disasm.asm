.text
.syntax unified


	arm_func_start sub_08000000
sub_08000000: @ 0x08000000
	b _080000C0
_08000004:








@ 롬 헤더







_080000C0:
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =0x03007F00
	ldr r1, _080000FC @ =0x03007FFC
	ldr r0, _08000100 @ =sub_08000108
	str r0, [r1]
	ldr r1, _08000104 @ =sub_08000738
	mov lr, pc
	bx r1
	arm_func_end sub_08000000

	arm_func_start sub_080000F0
sub_080000F0: @ 0x080000F0
	b _080000C0
	.align 2, 0
_080000F4: .4byte 0x03007F00
_080000F8: .4byte 0x03007FA0
_080000FC: .4byte 0x03007FFC
_08000100: .4byte sub_08000108
_08000104: .4byte sub_08000738
	arm_func_end sub_080000F0

	arm_func_start sub_08000108
sub_08000108: @ 0x08000108
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	ldrh r1, [r3, #8]
	mrs r0, spsr
	push {r0, r1, r2, r3, lr}
	mov r0, #1
	strh r0, [r3, #8]
	and r1, r2, r2, lsr #16
	mov ip, #0
	ands r0, r1, #0xc0
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #1
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #4
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #2
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x100
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x200
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x400
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x800
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x1000
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #8
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x10
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x20
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x40
	bne _080001D8
	add ip, ip, #4
	ands r0, r1, #0x2000
	strbne r0, [r3, #-0x17c]
_080001D4:
	bne _080001D4
_080001D8:
	strh r0, [r3, #2]
	mov r1, #0x20c0
	bic r2, r2, r0
	and r1, r1, r2
	strh r1, [r3]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _0800023C @ =0x030009D0
	add r1, r1, ip
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =sub_08000214
	bx r0
	arm_func_end sub_08000108

	arm_func_start sub_08000214
sub_08000214: @ 0x08000214
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r2, r3, lr}
	strh r2, [r3]
	strh r1, [r3, #8]
	msr spsr_fc, r0
	bx lr
	.align 2, 0
_0800023C: .4byte 0x030009D0
	arm_func_end sub_08000214

	arm_func_start sub_08000240
sub_08000240: @ 0x08000240
	push {r8, sb, sl, fp}
	mov ip, #0x4000000
	ldr fp, _0800027C @ =0x03002010
	add sl, fp, #0x28
	mov sb, #1
	mov r8, #0
	strb r8, [ip, #0x208]
	ldm sl, {r0, r1}
	stm sl!, {r1}
	stm sl!, {r0}
	ldrb r0, [fp, #5]
	strb r8, [fp, #5]
	strb sb, [ip, #0x208]
	pop {r8, sb, sl, fp}
	bx lr
	.align 2, 0
_0800027C: .4byte 0x03002010
	arm_func_end sub_08000240

	thumb_func_start sub_08000280
sub_08000280: @ 0x08000280
	push {lr}
	bl sub_08000738
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000280

	thumb_func_start sub_0800028C
sub_0800028C: @ 0x0800028C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800028C

	thumb_func_start sub_08000290
sub_08000290: @ 0x08000290
	push {r4, lr}
	ldr r2, _080002B8 @ =0x030014A0
	ldr r0, [r2]
	ldr r0, _080002BC @ =0x03001EB4
	ldr r0, [r0]
	cmp r0, #2
	bne _08000356
	ldr r0, _080002C0 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080002C4
	ldr r0, [r2]
	cmp r0, #0
	bne _080002D0
	bl sub_08008FF4
	b _080002D0
	.align 2, 0
_080002B8: .4byte 0x030014A0
_080002BC: .4byte 0x03001EB4
_080002C0: .4byte 0x03001EB0
_080002C4:
	ldr r0, _08000320 @ =0x03000968
	ldr r0, [r0]
	cmp r0, #0
	bne _080002D0
	bl sub_08008FF4
_080002D0:
	ldr r4, _08000324 @ =0x03001ED8
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08000356
	ldr r0, _08000328 @ =0x03001EBC
	ldr r0, [r0]
	cmp r0, #0
	bne _08000356
	bl sub_0800A4E0
	cmp r0, #0
	beq _08000338
	ldr r0, _0800032C @ =0x03001EB0
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	cmp r0, #0
	beq _08000338
	lsrs r0, r3, #8
	movs r2, #0xf
	ands r0, r2
	adds r1, r3, #0
	ands r1, r2
	cmp r0, r1
	beq _08000334
	ldr r0, _08000330 @ =0x03001E30
	ldr r0, [r0]
	cmp r0, #0
	bne _0800031A
	movs r0, #0xe0
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08000338
_0800031A:
	ldr r0, [r4]
	adds r0, #1
	b _08000336
	.align 2, 0
_08000320: .4byte 0x03000968
_08000324: .4byte 0x03001ED8
_08000328: .4byte 0x03001EBC
_0800032C: .4byte 0x03001EB0
_08000330: .4byte 0x03001E30
_08000334:
	movs r0, #1
_08000336:
	str r0, [r4]
_08000338:
	ldr r0, _080003CC @ =0x03001014
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _080003D0 @ =0x03001ED8
	ldr r1, [r2]
	cmp r1, r0
	blo _08000356
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	movs r0, #0
	bl sub_0800A1E0
_08000356:
	bl sub_08008364
	bl sub_0800A4C0
	cmp r0, #0
	beq _08000380
	ldr r0, _080003D4 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08000380
	ldr r1, _080003D8 @ =0x02030230
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800037C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #4]
_0800037C:
	bl sub_080004D0
_08000380:
	ldr r0, _080003DC @ =0x03002290
	ldr r0, [r0]
	cmp r0, #0
	beq _08000390
	bl sub_080004D0
	bl sub_080099FC
_08000390:
	ldr r0, _080003E0 @ =0x03001034
	ldr r0, [r0]
	cmp r0, #0
	beq _0800039C
	bl sub_0804402C
_0800039C:
	ldr r3, _080003E4 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _080003E8 @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	strh r1, [r3]
	ldr r2, _080003EC @ =0x03000968
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r0, _080003CC @ =0x03001014
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	blo _080003C4
	movs r0, #0
	str r0, [r2]
_080003C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080003CC: .4byte 0x03001014
_080003D0: .4byte 0x03001ED8
_080003D4: .4byte 0x03001EB0
_080003D8: .4byte 0x02030230
_080003DC: .4byte 0x03002290
_080003E0: .4byte 0x03001034
_080003E4: .4byte 0x04000208
_080003E8: .4byte 0x03007FF8
_080003EC: .4byte 0x03000968
	thumb_func_end sub_08000290

	thumb_func_start sub_080003F0
sub_080003F0: @ 0x080003F0
	bx lr
	.align 2, 0
	thumb_func_end sub_080003F0

	thumb_func_start sub_080003F4
sub_080003F4: @ 0x080003F4
	push {lr}
	bl sub_08008370
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080003F4

	thumb_func_start sub_08000400
sub_08000400: @ 0x08000400
	bx lr
	.align 2, 0
	thumb_func_end sub_08000400

	thumb_func_start sub_08000404
sub_08000404: @ 0x08000404
	bx lr
	.align 2, 0
	thumb_func_end sub_08000404

	thumb_func_start sub_08000408
sub_08000408: @ 0x08000408
	bx lr
	.align 2, 0
	thumb_func_end sub_08000408

	thumb_func_start sub_0800040C
sub_0800040C: @ 0x0800040C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800040C

	thumb_func_start sub_08000410
sub_08000410: @ 0x08000410
	push {lr}
	movs r1, #0
	ldr r3, _08000458 @ =0x08204B38
	ldr r2, _0800045C @ =0x030009D0
_08000418:
	ldm r3!, {r0}
	stm r2!, {r0}
	adds r1, #1
	cmp r1, #0xe
	bls _08000418
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #0
	bl sub_080032F0
	movs r0, #0
	bl sub_08003314
	movs r0, #0
	bl sub_08003338
	ldr r1, _08000460 @ =0x040000D4
	ldr r0, _08000464 @ =sub_08000108
	str r0, [r1]
	ldr r2, _08000468 @ =0x03001090
	str r2, [r1, #4]
	ldr r0, _0800046C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000470 @ =0x03007FFC
	str r2, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08000458: .4byte 0x08204B38
_0800045C: .4byte 0x030009D0
_08000460: .4byte 0x040000D4
_08000464: .4byte sub_08000108
_08000468: .4byte 0x03001090
_0800046C: .4byte 0x80000200
_08000470: .4byte 0x03007FFC
	thumb_func_end sub_08000410

	thumb_func_start sub_08000474
sub_08000474: @ 0x08000474
	ldr r1, _0800047C @ =0x03001014
	str r0, [r1]
	bx lr
	.align 2, 0
_0800047C: .4byte 0x03001014
	thumb_func_end sub_08000474

	thumb_func_start sub_08000480
sub_08000480: @ 0x08000480
	ldr r0, _08000488 @ =0x03001014
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08000488: .4byte 0x03001014
	thumb_func_end sub_08000480

	thumb_func_start sub_0800048C
sub_0800048C: @ 0x0800048C
	ldr r1, _08000494 @ =0x03001080
	str r0, [r1]
	bx lr
	.align 2, 0
_08000494: .4byte 0x03001080
	thumb_func_end sub_0800048C

	thumb_func_start sub_08000498
sub_08000498: @ 0x08000498
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _080004C4 @ =0x02031E40
	ldr r1, _080004C8 @ =0x08046068
	ldr r0, _080004CC @ =0x03001080
	ldr r2, [r0]
	adds r0, r6, #0
	bl sub_08007F1C
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08006A78
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080004C4: .4byte 0x02031E40
_080004C8: .4byte 0x08046068
_080004CC: .4byte 0x03001080
	thumb_func_end sub_08000498

	thumb_func_start sub_080004D0
sub_080004D0: @ 0x080004D0
	push {r4, lr}
	bl sub_0800A4C0
	cmp r0, #0
	beq _080004E6
	ldr r0, _08000500 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080004EE
_080004E6:
	ldr r0, _08000504 @ =0x03002290
	ldr r0, [r0]
	cmp r0, #0
	beq _0800050C
_080004EE:
	ldr r0, _08000508 @ =0x03001920
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08043C40
	b _0800051A
	.align 2, 0
_08000500: .4byte 0x03001EB0
_08000504: .4byte 0x03002290
_08000508: .4byte 0x03001920
_0800050C:
	ldr r0, _08000568 @ =0x03001510
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08043C40
_0800051A:
	ldr r1, _0800056C @ =0x03001498
	ldr r0, [r1]
	cmp r0, #0
	beq _08000562
	movs r0, #0
	str r0, [r1]
	ldr r4, _08000570 @ =0x03001040
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	bl sub_08000954
	ldrh r1, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	movs r0, #1
	bl sub_08000954
	ldrh r1, [r4, #0x2c]
	ldrh r2, [r4, #0x2e]
	movs r0, #2
	bl sub_08000954
	ldrh r1, [r4, #0x3c]
	ldrh r2, [r4, #0x3e]
	movs r0, #3
	bl sub_08000954
	bl sub_080015F8
	bl sub_08002F84
	ldr r0, _08000574 @ =0x03000960
	ldr r0, [r0]
	cmp r0, #0
	beq _08000562
	bl sub_0804402C
_08000562:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000568: .4byte 0x03001510
_0800056C: .4byte 0x03001498
_08000570: .4byte 0x03001040
_08000574: .4byte 0x03000960
	thumb_func_end sub_080004D0

	thumb_func_start sub_08000578
sub_08000578: @ 0x08000578
	push {r4, lr}
	sub sp, #4
	bl sub_0800A4C0
	cmp r0, #0
	beq _0800059C
	ldr r0, _08000598 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080005A8
	bl sub_080004D0
	b _080005A8
	.align 2, 0
_08000598: .4byte 0x03001EB0
_0800059C:
	ldr r0, _08000614 @ =0x03002290
	ldr r0, [r0]
	cmp r0, #0
	bne _080005A8
	bl sub_080004D0
_080005A8:
	bl sub_0800375C
	ldr r0, _08000618 @ =0x03001EB4
	ldr r0, [r0]
	cmp r0, #2
	bne _080005C2
	ldr r0, _0800061C @ =0x03001E50
	bl sub_08008CB0
	ldr r1, _08000620 @ =0x03001EB0
	str r0, [r1]
	bl sub_0800A7F8
_080005C2:
	bl sub_08001910
	bl sub_080029D4
	ldr r4, _08000624 @ =0x02031FC0
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_08006CF8
	bl sub_08006BF0
	bl sub_080036E8
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl sub_08006CF8
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	ldr r4, [r4, #0x2c]
	str r4, [sp]
	bl sub_08006DE0
	bl sub_08002918
	ldr r0, _08000628 @ =0x02031E38
	ldr r0, [r0]
	bl sub_080029E0
	ldr r0, _0800062C @ =0x03001D20
	ldr r0, [r0]
	cmp r0, #0
	beq _08000630
	bl sub_08002A60
	b _08000634
	.align 2, 0
_08000614: .4byte 0x03002290
_08000618: .4byte 0x03001EB4
_0800061C: .4byte 0x03001E50
_08000620: .4byte 0x03001EB0
_08000624: .4byte 0x02031FC0
_08000628: .4byte 0x02031E38
_0800062C: .4byte 0x03001D20
_08000630:
	bl sub_08001910
_08000634:
	bl sub_080024E4
	ldr r0, _08000684 @ =0x03001D40
	ldr r0, [r0]
	cmp r0, #0
	bne _08000648
	bl sub_080018F8
	bl sub_080013B0
_08000648:
	bl sub_08001244
	ldr r0, _08000688 @ =0x03001910
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	bl sub_0800A4C0
	cmp r0, #0
	bne _08000664
	ldr r0, _0800068C @ =0x03002290
	ldr r0, [r0]
	cmp r0, #0
	beq _08000670
_08000664:
	ldr r0, _08000690 @ =0x03001510
	ldr r1, _08000694 @ =0x03001920
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08043C40
_08000670:
	bl sub_08002EE4
	ldr r1, _08000698 @ =0x03001498
	movs r0, #1
	str r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000684: .4byte 0x03001D40
_08000688: .4byte 0x03001910
_0800068C: .4byte 0x03002290
_08000690: .4byte 0x03001510
_08000694: .4byte 0x03001920
_08000698: .4byte 0x03001498
	thumb_func_end sub_08000578

	thumb_func_start sub_0800069C
sub_0800069C: @ 0x0800069C
	push {r4, r5, r6, r7, lr}
	ldr r7, _080006D0 @ =0x03000968
	ldr r6, _080006D4 @ =0x03002284
	movs r4, #1
	ldr r5, _080006D8 @ =0x030014A0
_080006A6:
	movs r0, #0
	str r0, [r7]
	ldr r0, _080006DC @ =0x03002290
	ldr r0, [r0]
	cmp r0, #0
	bne _080006F2
	ldr r0, _080006E0 @ =0x03001EB0
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r1, r0
	subs r0, #0x80
	cmp r1, r0
	bne _080006CA
	ldr r0, _080006E4 @ =0x03001EB4
	ldr r0, [r0]
	cmp r0, #3
	bls _080006E8
_080006CA:
	bl sub_08043C64
	b _08000702
	.align 2, 0
_080006D0: .4byte 0x03000968
_080006D4: .4byte 0x03002284
_080006D8: .4byte 0x030014A0
_080006DC: .4byte 0x03002290
_080006E0: .4byte 0x03001EB0
_080006E4: .4byte 0x03001EB4
_080006E8:
	movs r0, #1
	movs r1, #0x80
	bl sub_08043C48
	b _08000702
_080006F2:
	ldr r0, [r6]
	cmp r0, #0
	beq _08000700
	ldr r1, _08000728 @ =0x03002284
_080006FA:
	ldr r0, [r1]
	cmp r0, #0
	bne _080006FA
_08000700:
	str r4, [r6]
_08000702:
	str r4, [r7]
	str r4, [r5]
	bl sub_08000578
	ldr r0, _0800072C @ =0x03001E30
	ldr r0, [r0]
	cmp r0, #0
	bne _08000722
	ldr r0, _08000730 @ =0x03001014
	ldr r0, [r0]
	cmp r0, #1
	bls _08000722
	ldr r1, _08000734 @ =0x03000968
_0800071C:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800071C
_08000722:
	movs r0, #0
	str r0, [r5]
	b _080006A6
	.align 2, 0
_08000728: .4byte 0x03002284
_0800072C: .4byte 0x03001E30
_08000730: .4byte 0x03001014
_08000734: .4byte 0x03000968
	thumb_func_end sub_0800069C

	thumb_func_start sub_08000738
sub_08000738: @ 0x08000738
	push {r4, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	ldr r0, _08000870 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08000874 @ =0x85010000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp]
	mov r2, sp
	str r2, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	str r1, [r0, #4]
	ldr r1, _08000878 @ =0x85001F80
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	add r0, sp, #4
	strh r4, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800087C @ =0x0100C000
	bl sub_08043C44
	mov r0, sp
	adds r0, #6
	strh r4, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	ldr r2, _08000880 @ =0x01000200
	bl sub_08043C44
	str r4, [sp]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ldr r2, _08000884 @ =0x05000100
	mov r0, sp
	bl sub_08043C44
	bl sub_08000410
	ldr r0, _08000888 @ =0x03002290
	str r4, [r0]
	ldr r0, _0800088C @ =0x030014A0
	str r4, [r0]
	ldr r0, _08000890 @ =0x03001498
	str r4, [r0]
	movs r0, #0
	bl sub_0800048C
	movs r0, #1
	bl sub_08000474
	ldr r0, _08000894 @ =0x03001910
	str r4, [r0]
	bl sub_0800A370
	bl sub_08000B94
	bl sub_0800393C
	ldr r0, _08000898 @ =0x00001234
	bl sub_0800692C
	bl sub_08003134
	bl sub_08002B60
	movs r0, #0
	bl sub_0800320C
	movs r0, #1
	bl sub_08003218
	bl sub_08003228
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003218
	bl sub_08003228
	movs r1, #4
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08003218
	movs r0, #1
	bl sub_0800320C
	movs r0, #8
	bl sub_080008C8
	bl sub_080008D8
	movs r1, #0x20
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080008C8
	bl sub_08008358
	bl sub_080010B8
	bl sub_0800128C
	bl sub_08001528
	bl sub_0800163C
	bl sub_080018D0
	bl sub_08003678
	ldr r1, _0800089C @ =sub_08007154
	movs r0, #0
	movs r2, #0
	bl sub_08003344
	ldr r0, _080008A0 @ =0x03001030
	str r4, [r0]
	ldr r1, _080008A4 @ =0x04000204
	strh r4, [r1]
	ldr r2, _080008A8 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_08008334
	movs r0, #0
	bl sub_08002994
	bl sub_08006C90
	bl sub_08006BE0
	movs r0, #0
	bl sub_08006C70
	bl sub_0800069C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000870: .4byte 0x040000D4
_08000874: .4byte 0x85010000
_08000878: .4byte 0x85001F80
_0800087C: .4byte 0x0100C000
_08000880: .4byte 0x01000200
_08000884: .4byte 0x05000100
_08000888: .4byte 0x03002290
_0800088C: .4byte 0x030014A0
_08000890: .4byte 0x03001498
_08000894: .4byte 0x03001910
_08000898: .4byte 0x00001234
_0800089C: .4byte sub_08007154
_080008A0: .4byte 0x03001030
_080008A4: .4byte 0x04000204
_080008A8: .4byte 0x00004014
	thumb_func_end sub_08000738

	thumb_func_start sub_080008AC
sub_080008AC: @ 0x080008AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080008BC @ =0x030014B0
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r0, [r1]
	bx lr
	.align 2, 0
_080008BC: .4byte 0x030014B0
	thumb_func_end sub_080008AC

	thumb_func_start sub_080008C0
sub_080008C0: @ 0x080008C0
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_080008C0

	thumb_func_start sub_080008C8
sub_080008C8: @ 0x080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _080008D4 @ =0x04000004
	strh r0, [r1]
	bx lr
	.align 2, 0
_080008D4: .4byte 0x04000004
	thumb_func_end sub_080008C8

	thumb_func_start sub_080008D8
sub_080008D8: @ 0x080008D8
	ldr r0, _080008E0 @ =0x04000004
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080008E0: .4byte 0x04000004
	thumb_func_end sub_080008D8

	thumb_func_start sub_080008E4
sub_080008E4: @ 0x080008E4
	ldr r0, _080008EC @ =0x04000006
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_080008EC: .4byte 0x04000006
	thumb_func_end sub_080008E4

	thumb_func_start sub_080008F0
sub_080008F0: @ 0x080008F0
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r0, _08000910 @ =0x030014B0
	lsls r1, r2, #1
	adds r0, #2
	adds r1, r1, r0
	strh r3, [r1]
	cmp r2, #1
	beq _08000928
	cmp r2, #1
	bgt _08000914
	cmp r2, #0
	beq _0800091E
	b _0800093C
	.align 2, 0
_08000910: .4byte 0x030014B0
_08000914:
	cmp r2, #2
	beq _08000930
	cmp r2, #3
	beq _08000938
	b _0800093C
_0800091E:
	ldr r0, _08000924 @ =0x04000008
	b _0800093A
	.align 2, 0
_08000924: .4byte 0x04000008
_08000928:
	ldr r0, _0800092C @ =0x0400000A
	b _0800093A
	.align 2, 0
_0800092C: .4byte 0x0400000A
_08000930:
	ldr r0, _08000934 @ =0x0400000C
	b _0800093A
	.align 2, 0
_08000934: .4byte 0x0400000C
_08000938:
	ldr r0, _08000940 @ =0x0400000E
_0800093A:
	strh r3, [r0]
_0800093C:
	pop {r0}
	bx r0
	.align 2, 0
_08000940: .4byte 0x0400000E
	thumb_func_end sub_080008F0

	thumb_func_start sub_08000944
sub_08000944: @ 0x08000944
	ldr r1, _08000950 @ =0x030014B0
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08000950: .4byte 0x030014B0
	thumb_func_end sub_08000944

	thumb_func_start sub_08000954
sub_08000954: @ 0x08000954
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r1, _08000980 @ =0x030014B0
	lsls r2, r3, #1
	adds r0, r1, #0
	adds r0, #0xa
	adds r0, r2, r0
	strh r4, [r0]
	adds r1, #0x12
	adds r2, r2, r1
	strh r5, [r2]
	cmp r3, #1
	beq _08000998
	cmp r3, #1
	bgt _08000984
	cmp r3, #0
	beq _0800098E
	b _080009B0
	.align 2, 0
_08000980: .4byte 0x030014B0
_08000984:
	cmp r3, #2
	beq _080009A0
	cmp r3, #3
	beq _080009A8
	b _080009B0
_0800098E:
	ldr r0, _08000994 @ =0x04000010
	b _080009AA
	.align 2, 0
_08000994: .4byte 0x04000010
_08000998:
	ldr r0, _0800099C @ =0x04000014
	b _080009AA
	.align 2, 0
_0800099C: .4byte 0x04000014
_080009A0:
	ldr r0, _080009A4 @ =0x04000018
	b _080009AA
	.align 2, 0
_080009A4: .4byte 0x04000018
_080009A8:
	ldr r0, _080009B8 @ =0x0400001C
_080009AA:
	strh r4, [r0]
	adds r0, #2
	strh r5, [r0]
_080009B0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080009B8: .4byte 0x0400001C
	thumb_func_end sub_08000954

	thumb_func_start sub_080009BC
sub_080009BC: @ 0x080009BC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r5, #2
	beq _080009DC
	cmp r5, #3
	beq _080009F4
	b _08000A0E
_080009DC:
	ldr r0, _080009EC @ =0x030014B0
	strh r1, [r0, #0x1a]
	strh r2, [r0, #0x1e]
	strh r3, [r0, #0x22]
	strh r4, [r0, #0x26]
	ldr r0, _080009F0 @ =0x04000020
	b _08000A00
	.align 2, 0
_080009EC: .4byte 0x030014B0
_080009F0: .4byte 0x04000020
_080009F4:
	ldr r0, _08000A14 @ =0x030014B0
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	strh r3, [r0, #0x24]
	strh r4, [r0, #0x28]
	ldr r0, _08000A18 @ =0x04000030
_08000A00:
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r0, #2
	strh r4, [r0]
_08000A0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000A14: .4byte 0x030014B0
_08000A18: .4byte 0x04000030
	thumb_func_end sub_080009BC

	thumb_func_start sub_08000A1C
sub_08000A1C: @ 0x08000A1C
	push {lr}
	adds r3, r1, #0
	cmp r0, #2
	beq _08000A2A
	cmp r0, #3
	beq _08000A50
	b _08000A6A
_08000A2A:
	ldr r0, _08000A40 @ =0x030014B0
	str r3, [r0, #0x2c]
	str r2, [r0, #0x34]
	ldr r0, _08000A44 @ =0x04000028
	strh r3, [r0]
	ldr r1, _08000A48 @ =0x0400002A
	lsrs r0, r3, #0x10
	strh r0, [r1]
	ldr r0, _08000A4C @ =0x0400002C
	b _08000A62
	.align 2, 0
_08000A40: .4byte 0x030014B0
_08000A44: .4byte 0x04000028
_08000A48: .4byte 0x0400002A
_08000A4C: .4byte 0x0400002C
_08000A50:
	ldr r0, _08000A70 @ =0x030014B0
	str r3, [r0, #0x30]
	str r2, [r0, #0x38]
	ldr r0, _08000A74 @ =0x04000038
	strh r3, [r0]
	ldr r1, _08000A78 @ =0x0400003A
	lsrs r0, r3, #0x10
	strh r0, [r1]
	ldr r0, _08000A7C @ =0x0400003C
_08000A62:
	strh r2, [r0]
	adds r1, #4
	lsrs r0, r2, #0x10
	strh r0, [r1]
_08000A6A:
	pop {r0}
	bx r0
	.align 2, 0
_08000A70: .4byte 0x030014B0
_08000A74: .4byte 0x04000038
_08000A78: .4byte 0x0400003A
_08000A7C: .4byte 0x0400003C
	thumb_func_end sub_08000A1C

	thumb_func_start sub_08000A80
sub_08000A80: @ 0x08000A80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, [sp, #0x10]
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08000AB8 @ =0x030014B0
	mov ip, r0
	lsls r5, r6, #1
	adds r0, #0x3c
	adds r0, r5, r0
	lsrs r1, r1, #8
	adds r3, r3, r1
	strh r3, [r0]
	mov r3, ip
	adds r3, #0x40
	adds r5, r5, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	adds r4, r4, r2
	strh r4, [r5]
	cmp r6, #0
	beq _08000ABC
	cmp r6, #1
	beq _08000AD0
	b _08000AE2
	.align 2, 0
_08000AB8: .4byte 0x030014B0
_08000ABC:
	ldr r1, _08000ACC @ =0x04000040
	mov r2, ip
	ldrh r0, [r2, #0x3c]
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r3]
	b _08000AE0
	.align 2, 0
_08000ACC: .4byte 0x04000040
_08000AD0:
	ldr r1, _08000AE8 @ =0x04000042
	mov r2, ip
	ldrh r0, [r2, #0x3e]
	strh r0, [r1]
	adds r1, #4
	mov r0, ip
	adds r0, #0x42
	ldrh r0, [r0]
_08000AE0:
	strh r0, [r1]
_08000AE2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000AE8: .4byte 0x04000042
	thumb_func_end sub_08000A80

	thumb_func_start sub_08000AEC
sub_08000AEC: @ 0x08000AEC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08000B04 @ =0x030014B0
	lsrs r1, r1, #8
	adds r0, r0, r1
	adds r2, #0x44
	strh r0, [r2]
	ldr r1, _08000B08 @ =0x04000048
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000B04: .4byte 0x030014B0
_08000B08: .4byte 0x04000048
	thumb_func_end sub_08000AEC

	thumb_func_start sub_08000B0C
sub_08000B0C: @ 0x08000B0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08000B24 @ =0x030014B0
	lsrs r1, r1, #8
	adds r0, r0, r1
	adds r2, #0x46
	strh r0, [r2]
	ldr r1, _08000B28 @ =0x0400004A
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000B24: .4byte 0x030014B0
_08000B28: .4byte 0x0400004A
	thumb_func_end sub_08000B0C

	thumb_func_start sub_08000B2C
sub_08000B2C: @ 0x08000B2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08000B44 @ =0x030014B0
	lsrs r1, r1, #8
	adds r0, r0, r1
	adds r2, #0x48
	strh r0, [r2]
	ldr r1, _08000B48 @ =0x0400004C
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000B44: .4byte 0x030014B0
_08000B48: .4byte 0x0400004C
	thumb_func_end sub_08000B2C

	thumb_func_start sub_08000B4C
sub_08000B4C: @ 0x08000B4C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08000B5C @ =0x030014B0
	adds r1, #0x4a
	strh r0, [r1]
	ldr r1, _08000B60 @ =0x04000050
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000B5C: .4byte 0x030014B0
_08000B60: .4byte 0x04000050
	thumb_func_end sub_08000B4C

	thumb_func_start sub_08000B64
sub_08000B64: @ 0x08000B64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08000B74 @ =0x030014B0
	adds r1, #0x4c
	strh r0, [r1]
	ldr r1, _08000B78 @ =0x04000052
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000B74: .4byte 0x030014B0
_08000B78: .4byte 0x04000052
	thumb_func_end sub_08000B64

	thumb_func_start sub_08000B7C
sub_08000B7C: @ 0x08000B7C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08000B8C @ =0x030014B0
	adds r1, #0x4e
	strh r0, [r1]
	ldr r1, _08000B90 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_08000B8C: .4byte 0x030014B0
_08000B90: .4byte 0x04000054
	thumb_func_end sub_08000B7C

	thumb_func_start sub_08000B94
sub_08000B94: @ 0x08000B94
	push {r4, lr}
	sub sp, #8
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08000C88 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08000C8C @ =0x030014B0
	str r0, [r1, #4]
	ldr r0, _08000C90 @ =0x8100002A
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #0x40
	bl sub_080008AC
	movs r0, #0
	bl sub_080008C8
	movs r0, #0
	movs r1, #0
	bl sub_080008F0
	movs r0, #1
	movs r1, #0
	bl sub_080008F0
	movs r0, #2
	movs r1, #0
	bl sub_080008F0
	movs r0, #3
	movs r1, #0
	bl sub_080008F0
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08000954
	movs r0, #1
	movs r1, #0
	movs r2, #0
	bl sub_08000954
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08000954
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08000954
	movs r4, #0x80
	lsls r4, r4, #1
	str r4, [sp]
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080009BC
	str r4, [sp]
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080009BC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	bl sub_08000A1C
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08000A1C
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A80
	str r4, [sp]
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08000A80
	movs r0, #0
	movs r1, #0
	bl sub_08000AEC
	movs r0, #0
	movs r1, #0
	bl sub_08000B0C
	movs r0, #0
	movs r1, #0
	bl sub_08000B2C
	movs r0, #0
	bl sub_08000B4C
	movs r0, #0
	bl sub_08000B64
	movs r0, #0
	bl sub_08000B7C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000C88: .4byte 0x040000D4
_08000C8C: .4byte 0x030014B0
_08000C90: .4byte 0x8100002A
	thumb_func_end sub_08000B94

	thumb_func_start sub_08000C94
sub_08000C94: @ 0x08000C94
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	lsls r0, r0, #4
	ldr r4, _08000CBC @ =0x03001040
	adds r0, r0, r4
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	str r1, [r0]
	adds r2, r2, r4
	str r2, [r0, #4]
	movs r1, #0
	strh r3, [r0, #8]
	strh r5, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000CBC: .4byte 0x03001040
	thumb_func_end sub_08000C94

	thumb_func_start sub_08000CC0
sub_08000CC0: @ 0x08000CC0
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r2, [r4]
	lsrs r2, r2, #0xb
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	lsrs r0, r0, #0xe
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #8
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xe
	orrs r2, r0
	movs r0, #9
	ldrsb r0, [r4, r0]
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0xb
	ldrsb r0, [r4, r0]
	lsls r0, r0, #0xd
	orrs r2, r0
	movs r1, #0xa
	ldrsb r1, [r4, r1]
	orrs r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080008F0
	ldr r0, _08000D3C @ =0x08204B74
	mov r8, r0
	bl sub_080008C0
	movs r5, #8
	ldrsb r5, [r4, r5]
	lsls r3, r5, #1
	lsls r1, r6, #3
	adds r3, r3, r1
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #5
	adds r3, r3, r1
	add r3, r8
	ldr r1, [r4, #4]
	ldr r2, [r4]
	movs r0, #0
	ldrsh r3, [r3, r0]
	str r5, [sp]
	adds r0, r6, #0
	bl sub_08000C94
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000D3C: .4byte 0x08204B74
	thumb_func_end sub_08000CC0

	thumb_func_start sub_08000D40
sub_08000D40: @ 0x08000D40
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08000D46:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000CC0
	adds r4, #1
	adds r5, #0xc
	cmp r4, #3
	ble _08000D46
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08000D40

	thumb_func_start sub_08000D5C
sub_08000D5C: @ 0x08000D5C
	lsls r0, r0, #4
	ldr r1, _08000D68 @ =0x03001040
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08000D68: .4byte 0x03001040
	thumb_func_end sub_08000D5C

	thumb_func_start sub_08000D6C
sub_08000D6C: @ 0x08000D6C
	lsls r0, r0, #4
	ldr r1, _08000D78 @ =0x03001040
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08000D78: .4byte 0x03001040
	thumb_func_end sub_08000D6C

	thumb_func_start sub_08000D7C
sub_08000D7C: @ 0x08000D7C
	lsls r0, r0, #4
	ldr r1, _08000D88 @ =0x03001040
	adds r0, r0, r1
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_08000D88: .4byte 0x03001040
	thumb_func_end sub_08000D7C

	thumb_func_start sub_08000D8C
sub_08000D8C: @ 0x08000D8C
	lsls r0, r0, #4
	ldr r1, _08000D98 @ =0x03001040
	adds r0, r0, r1
	ldrh r0, [r0, #0xa]
	bx lr
	.align 2, 0
_08000D98: .4byte 0x03001040
	thumb_func_end sub_08000D8C

	thumb_func_start sub_08000D9C
sub_08000D9C: @ 0x08000D9C
	lsls r0, r0, #4
	ldr r3, _08000DA8 @ =0x03001040
	adds r0, r0, r3
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
_08000DA8: .4byte 0x03001040
	thumb_func_end sub_08000D9C

	thumb_func_start sub_08000DAC
sub_08000DAC: @ 0x08000DAC
	lsls r0, r0, #4
	ldr r3, _08000DBC @ =0x03001040
	adds r0, r0, r3
	ldrh r3, [r0, #0xc]
	strh r3, [r1]
	ldrh r0, [r0, #0xe]
	strh r0, [r2]
	bx lr
	.align 2, 0
_08000DBC: .4byte 0x03001040
	thumb_func_end sub_08000DAC

	thumb_func_start sub_08000DC0
sub_08000DC0: @ 0x08000DC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08000944
	ldr r1, _08000DE0 @ =0x0000FFFC
	ands r1, r0
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_080008F0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08000DE0: .4byte 0x0000FFFC
	thumb_func_end sub_08000DC0

	thumb_func_start sub_08000DE4
sub_08000DE4: @ 0x08000DE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r7, [sp, #0x28]
	asrs r5, r5, #0xb
	asrs r6, r6, #0xb
	asrs r2, r2, #0xb
	asrs r3, r3, #0xb
	lsls r0, r0, #4
	ldr r1, _08000E40 @ =0x03001040
	adds r0, r0, r1
	lsls r4, r6, #6
	ldr r1, [r0, #4]
	adds r1, r1, r4
	lsls r0, r5, #1
	adds r1, r1, r0
	subs r2, r2, r5
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x10
	subs r3, r3, r6
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0x40
	mov r4, r8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r8, r4
	str r0, [sp]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, r8
	bl sub_08002D64
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000E40: .4byte 0x03001040
	thumb_func_end sub_08000DE4

	thumb_func_start sub_08000E44
sub_08000E44: @ 0x08000E44
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r3, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r1, r3, #4
	ldr r0, _08000E74 @ =0x03001040
	adds r4, r1, r0
	cmp r6, #0
	bne _08000E78
	add r0, sp, #8
	strh r5, [r0]
	ldr r1, [r4, #4]
	ldrh r2, [r4, #8]
	lsrs r2, r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	add r0, sp, #8
	bl sub_08043C44
	b _08000E9A
	.align 2, 0
_08000E74: .4byte 0x03001040
_08000E78:
	adds r0, r3, #0
	bl sub_08000D7C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r4, #4]
	movs r3, #0
	str r3, [sp]
	lsls r3, r6, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	movs r3, #1
	bl sub_08002D64
_08000E9A:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000E44

	thumb_func_start sub_08000EA4
sub_08000EA4: @ 0x08000EA4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0
_08000EAE:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08000E44
	adds r4, #1
	cmp r4, #3
	ble _08000EAE
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08000EA4

	thumb_func_start sub_08000EC4
sub_08000EC4: @ 0x08000EC4
	ldr r0, _08000ED0 @ =0x030014B0
	adds r0, #0x50
	movs r1, #0xf8
	lsls r1, r1, #5
	strh r1, [r0]
	bx lr
	.align 2, 0
_08000ED0: .4byte 0x030014B0
	thumb_func_end sub_08000EC4

	thumb_func_start sub_08000ED4
sub_08000ED4: @ 0x08000ED4
	push {lr}
	ldr r0, _08000EE4 @ =0x030014B0
	adds r0, #0x50
	ldrh r0, [r0]
	bl sub_080008AC
	pop {r0}
	bx r0
	.align 2, 0
_08000EE4: .4byte 0x030014B0
	thumb_func_end sub_08000ED4

	thumb_func_start sub_08000EE8
sub_08000EE8: @ 0x08000EE8
	ldr r0, _08000EF4 @ =0x030014B0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08000EF4: .4byte 0x030014B0
	thumb_func_end sub_08000EE8

	thumb_func_start sub_08000EF8
sub_08000EF8: @ 0x08000EF8
	ldr r2, _08000F08 @ =0x030014B0
	adds r2, #0x50
	ldrh r3, [r2]
	movs r1, #7
	ands r1, r3
	orrs r1, r0
	strh r1, [r2]
	bx lr
	.align 2, 0
_08000F08: .4byte 0x030014B0
	thumb_func_end sub_08000EF8

	thumb_func_start sub_08000F0C
sub_08000F0C: @ 0x08000F0C
	push {lr}
	cmp r0, #1
	beq _08000F2C
	cmp r0, #1
	bgt _08000F1C
	cmp r0, #0
	beq _08000F26
	b _08000F3E
_08000F1C:
	cmp r0, #2
	beq _08000F32
	cmp r0, #3
	beq _08000F38
	b _08000F3E
_08000F26:
	movs r2, #0x80
	lsls r2, r2, #1
	b _08000F42
_08000F2C:
	movs r2, #0x80
	lsls r2, r2, #2
	b _08000F42
_08000F32:
	movs r2, #0x80
	lsls r2, r2, #3
	b _08000F42
_08000F38:
	movs r2, #0x80
	lsls r2, r2, #4
	b _08000F42
_08000F3E:
	movs r2, #0x80
	lsls r2, r2, #5
_08000F42:
	cmp r1, #0
	bne _08000F58
	ldr r1, _08000F54 @ =0x030014B0
	adds r1, #0x50
	ldrh r0, [r1]
	bics r0, r2
	strh r0, [r1]
	b _08000F62
	.align 2, 0
_08000F54: .4byte 0x030014B0
_08000F58:
	ldr r0, _08000F68 @ =0x030014B0
	adds r0, #0x50
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
_08000F62:
	pop {r0}
	bx r0
	.align 2, 0
_08000F68: .4byte 0x030014B0
	thumb_func_end sub_08000F0C

	thumb_func_start sub_08000F6C
sub_08000F6C: @ 0x08000F6C
	push {lr}
	movs r2, #0x80
	lsls r2, r2, #7
	cmp r0, #0
	bne _08000F7A
	movs r2, #0x80
	lsls r2, r2, #6
_08000F7A:
	cmp r1, #0
	bne _08000F90
	ldr r1, _08000F8C @ =0x030014B0
	adds r1, #0x50
	ldrh r0, [r1]
	bics r0, r2
	strh r0, [r1]
	b _08000F9A
	.align 2, 0
_08000F8C: .4byte 0x030014B0
_08000F90:
	ldr r0, _08000FA0 @ =0x030014B0
	adds r0, #0x50
	ldrh r1, [r0]
	orrs r2, r1
	strh r2, [r0]
_08000F9A:
	pop {r0}
	bx r0
	.align 2, 0
_08000FA0: .4byte 0x030014B0
	thumb_func_end sub_08000F6C

	thumb_func_start sub_08000FA4
sub_08000FA4: @ 0x08000FA4
	push {lr}
	adds r3, r0, #0
	ldr r0, _08000FC4 @ =0x030014B0
	adds r2, r0, #0
	adds r2, #0x50
	ldrh r1, [r2]
	movs r0, #7
	ands r0, r1
	cmp r0, #4
	bne _08000FD2
	cmp r3, #0
	bne _08000FCC
	ldr r0, _08000FC8 @ =0x0000FFEF
	ands r0, r1
	b _08000FD0
	.align 2, 0
_08000FC4: .4byte 0x030014B0
_08000FC8: .4byte 0x0000FFEF
_08000FCC:
	movs r0, #0x10
	orrs r0, r1
_08000FD0:
	strh r0, [r2]
_08000FD2:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08000FA4

	thumb_func_start sub_08000FD8
sub_08000FD8: @ 0x08000FD8
	push {lr}
	bl sub_080008C0
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	bne _08000FF4
	bl sub_080008C0
	movs r1, #0xf8
	lsls r1, r1, #5
	ands r1, r0
	cmp r1, #0
	bne _08000FF8
_08000FF4:
	movs r0, #0
	b _08000FFA
_08000FF8:
	movs r0, #1
_08000FFA:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08000FD8

	thumb_func_start sub_08001000
sub_08001000: @ 0x08001000
	push {lr}
	cmp r0, #0
	beq _08001010
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08000B4C
	b _08001016
_08001010:
	movs r0, #0
	bl sub_08000B4C
_08001016:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001000

	thumb_func_start sub_0800101C
sub_0800101C: @ 0x0800101C
	push {lr}
	lsls r1, r1, #8
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08000B64
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800101C

	thumb_func_start sub_08001030
sub_08001030: @ 0x08001030
	push {lr}
	cmp r0, #0
	beq _08001040
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08000B4C
	b _08001046
_08001040:
	movs r0, #0
	bl sub_08000B4C
_08001046:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001030

	thumb_func_start sub_0800104C
sub_0800104C: @ 0x0800104C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08000B7C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800104C

	thumb_func_start sub_0800105C
sub_0800105C: @ 0x0800105C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	beq _0800107A
	bl sub_08000944
	adds r1, r0, #0
	movs r0, #0x40
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080008F0
	b _0800108A
_0800107A:
	adds r0, r4, #0
	bl sub_08000944
	ldr r1, _08001090 @ =0x0000FFBF
	ands r1, r0
	adds r0, r4, #0
	bl sub_080008F0
_0800108A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001090: .4byte 0x0000FFBF
	thumb_func_end sub_0800105C

	thumb_func_start sub_08001094
sub_08001094: @ 0x08001094
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r3, #0
	lsls r4, r4, #4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08000B2C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001094

	thumb_func_start sub_080010B8
sub_080010B8: @ 0x080010B8
	push {r4, lr}
	ldr r3, _080010E8 @ =0x02033C00
	ldr r2, _080010EC @ =0x020341A0
	movs r1, #0
	ldr r4, _080010F0 @ =0x000001FF
	movs r0, #0
_080010C4:
	strh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #2
	adds r2, #2
	cmp r1, r4
	bls _080010C4
	movs r1, #0
	ldr r3, _080010F4 @ =0x02031E60
	movs r2, #0
_080010D8:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _080010D8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080010E8: .4byte 0x02033C00
_080010EC: .4byte 0x020341A0
_080010F0: .4byte 0x000001FF
_080010F4: .4byte 0x02031E60
	thumb_func_end sub_080010B8

	thumb_func_start sub_080010F8
sub_080010F8: @ 0x080010F8
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #0
	beq _0800110C
	cmp r0, #1
	beq _08001112
	ldr r2, _08001108 @ =0x020341A0
	b _08001114
	.align 2, 0
_08001108: .4byte 0x020341A0
_0800110C:
	movs r2, #0xa0
	lsls r2, r2, #0x13
	b _08001114
_08001112:
	ldr r2, _08001120 @ =0x02033C00
_08001114:
	cmp r1, #0
	beq _08001128
	cmp r1, #1
	beq _0800112E
	ldr r1, _08001124 @ =0x020341A0
	b _08001130
	.align 2, 0
_08001120: .4byte 0x02033C00
_08001124: .4byte 0x020341A0
_08001128:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	b _08001130
_0800112E:
	ldr r1, _08001150 @ =0x02033C00
_08001130:
	lsls r0, r4, #1
	adds r2, r2, r0
	adds r1, r1, r0
	cmp r3, #0
	ble _08001148
_0800113A:
	ldrh r0, [r2]
	strh r0, [r1]
	subs r3, #1
	adds r2, #2
	adds r1, #2
	cmp r3, #0
	bne _0800113A
_08001148:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001150: .4byte 0x02033C00
	thumb_func_end sub_080010F8

	thumb_func_start sub_08001154
sub_08001154: @ 0x08001154
	ldr r2, _08001160 @ =0x02033C00
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08001160: .4byte 0x02033C00
	thumb_func_end sub_08001154

	thumb_func_start sub_08001164
sub_08001164: @ 0x08001164
	ldr r1, _08001170 @ =0x02033C00
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08001170: .4byte 0x02033C00
	thumb_func_end sub_08001164

	thumb_func_start sub_08001174
sub_08001174: @ 0x08001174
	ldr r2, _08001180 @ =0x020341A0
	lsls r0, r0, #1
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_08001180: .4byte 0x020341A0
	thumb_func_end sub_08001174

	thumb_func_start sub_08001184
sub_08001184: @ 0x08001184
	ldr r1, _08001190 @ =0x020341A0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08001190: .4byte 0x020341A0
	thumb_func_end sub_08001184

	thumb_func_start sub_08001194
sub_08001194: @ 0x08001194
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r3, r0, #0
	adds r0, r3, r1
	cmp r3, r0
	bhs _080011B4
	ldr r1, _080011BC @ =0x02033C00
	adds r2, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r1
_080011AA:
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, r2
	blo _080011AA
_080011B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080011BC: .4byte 0x02033C00
	thumb_func_end sub_08001194

	thumb_func_start sub_080011C0
sub_080011C0: @ 0x080011C0
	push {r4, lr}
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	adds r3, r0, #0
	adds r0, r3, r1
	cmp r3, r0
	bhs _080011E0
	ldr r1, _080011E8 @ =0x020341A0
	adds r2, r0, #0
	lsls r0, r3, #1
	adds r0, r0, r1
_080011D6:
	strh r4, [r0]
	adds r0, #2
	adds r3, #1
	cmp r3, r2
	blo _080011D6
_080011E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080011E8: .4byte 0x020341A0
	thumb_func_end sub_080011C0

	thumb_func_start sub_080011EC
sub_080011EC: @ 0x080011EC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsrs r1, r5, #4
	adds r0, r4, #0
	adds r0, #0xf
	lsrs r0, r0, #4
	adds r3, r1, r0
	cmp r2, #0
	beq _08001218
	cmp r1, r3
	bhs _08001238
	ldr r4, _08001214 @ =0x02031E60
_08001206:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, r3
	blo _08001206
	b _08001238
	.align 2, 0
_08001214: .4byte 0x02031E60
_08001218:
	lsls r1, r5, #1
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r3, r1, r0
	ldr r0, _08001240 @ =0x02033C00
	adds r1, r1, r0
	movs r2, #0
	cmp r2, r4
	bhs _08001238
_0800122A:
	ldrh r0, [r1]
	strh r0, [r3]
	adds r1, #2
	adds r3, #2
	adds r2, #1
	cmp r2, r4
	blo _0800122A
_08001238:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08001240: .4byte 0x02033C00
	thumb_func_end sub_080011EC

	thumb_func_start sub_08001244
sub_08001244: @ 0x08001244
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _08001284 @ =0x02031E60
	movs r5, #0
	movs r6, #0
	movs r7, #0xa0
	lsls r7, r7, #0x13
_08001252:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08001272
	lsls r0, r5, #5
	ldr r1, _08001288 @ =0x02033C00
	adds r0, r0, r1
	str r6, [sp]
	str r6, [sp, #4]
	ldrb r1, [r4]
	str r1, [sp, #8]
	adds r1, r7, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08002DBC
	strb r6, [r4]
_08001272:
	adds r7, #0x20
	adds r5, #1
	adds r4, #1
	cmp r5, #0x1f
	bls _08001252
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001284: .4byte 0x02031E60
_08001288: .4byte 0x02033C00
	thumb_func_end sub_08001244

	thumb_func_start sub_0800128C
sub_0800128C: @ 0x0800128C
	push {lr}
	movs r1, #0
	movs r2, #0
	ldr r0, _080012A4 @ =0x02034020
_08001294:
	str r2, [r0]
	str r2, [r0, #0xc]
	adds r0, #0x18
	adds r1, #1
	cmp r1, #0xf
	bls _08001294
	pop {r0}
	bx r0
	.align 2, 0
_080012A4: .4byte 0x02034020
	thumb_func_end sub_0800128C

	thumb_func_start sub_080012A8
sub_080012A8: @ 0x080012A8
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	bx lr
	.align 2, 0
	thumb_func_end sub_080012A8

	thumb_func_start sub_080012B4
sub_080012B4: @ 0x080012B4
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	strb r0, [r1, #1]
	ldrh r0, [r2, #2]
	ldr r3, [r3, #4]
	adds r0, r0, r3
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r1, [r1, #6]
	bl sub_08001154
	pop {r0}
	bx r0
	thumb_func_end sub_080012B4

	thumb_func_start sub_080012D8
sub_080012D8: @ 0x080012D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r4, r2, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08001324 @ =0x02034020
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _080012F8
	ldr r0, [r5, #0x14]
	bl sub_080038C8
_080012F8:
	mov r0, r8
	str r0, [r5]
	str r4, [r5, #4]
	movs r0, #0
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	mov r2, r8
	cmp r2, #0
	beq _08001358
	movs r0, #0
	ldrsh r1, [r2, r0]
	str r1, [r5, #8]
	lsls r1, r1, #2
	movs r0, #1
	bl sub_080038A8
	str r0, [r5, #0x14]
	adds r6, r0, #0
	movs r7, #0
	b _08001352
	.align 2, 0
_08001324: .4byte 0x02034020
_08001328:
	movs r0, #0
	strb r0, [r6]
	mov r0, r8
	adds r1, r7, #0
	bl sub_080012A8
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080012B4
	ldrh r0, [r4, #2]
	ldr r1, [r5, #4]
	adds r0, r0, r1
	movs r1, #0x10
	movs r2, #1
	bl sub_080011EC
	adds r7, #1
	adds r6, #4
_08001352:
	ldr r0, [r5, #8]
	cmp r7, r0
	blo _08001328
_08001358:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080012D8

	thumb_func_start sub_08001364
sub_08001364: @ 0x08001364
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl sub_08003A5C
	adds r1, r0, #0
	adds r1, #8
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_080012D8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08001364

	thumb_func_start sub_08001384
sub_08001384: @ 0x08001384
	push {lr}
	movs r1, #0
	movs r2, #0
	bl sub_080012D8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001384

	thumb_func_start sub_08001394
sub_08001394: @ 0x08001394
	push {r4, lr}
	movs r4, #0
_08001398:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012D8
	adds r4, #1
	cmp r4, #0xf
	ble _08001398
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001394

	thumb_func_start sub_080013B0
sub_080013B0: @ 0x080013B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080013E8 @ =0x0203000C
	ldr r0, [r0]
	cmp r0, #0
	beq _080013C8
	bl sub_08001858
	cmp r0, #0
	bne _08001458
_080013C8:
	ldr r6, _080013EC @ =0x02034020
	movs r1, #0
_080013CC:
	ldr r0, [r6]
	adds r1, #1
	mov sb, r1
	movs r1, #0x18
	adds r1, r1, r6
	mov r8, r1
	cmp r0, #0
	beq _08001450
	ldr r0, [r6, #0xc]
	cmp r0, #2
	beq _08001450
	ldr r4, [r6, #0x14]
	movs r7, #0
	b _0800144A
	.align 2, 0
_080013E8: .4byte 0x0203000C
_080013EC: .4byte 0x02034020
_080013F0:
	ldrb r0, [r4, #1]
	subs r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001446
	ldr r2, [r6, #0xc]
	cmp r2, #1
	bne _08001412
	ldrb r1, [r4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bne _08001412
	cmp r7, #0
	bne _08001412
	strb r2, [r4, #1]
	b _08001450
_08001412:
	ldr r0, [r6]
	adds r1, r7, #0
	bl sub_080012A8
	adds r5, r0, #0
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0
	strb r0, [r4]
	ldrb r0, [r4]
	ldrh r2, [r5]
	cmp r0, r2
	blo _0800142E
	strb r1, [r4]
_0800142E:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080012B4
	ldrh r0, [r5, #2]
	ldr r1, [r6, #4]
	adds r0, r0, r1
	movs r1, #0x10
	movs r2, #1
	bl sub_080011EC
_08001446:
	adds r7, #1
	adds r4, #4
_0800144A:
	ldr r0, [r6, #8]
	cmp r7, r0
	blo _080013F0
_08001450:
	mov r1, sb
	mov r6, r8
	cmp r1, #0xf
	bls _080013CC
_08001458:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080013B0

	thumb_func_start sub_08001464
sub_08001464: @ 0x08001464
	push {r4, lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08001490 @ =0x02034020
	adds r4, r1, r0
	movs r0, #1
	str r0, [r4, #0xc]
	subs r0, #2
	cmp r2, r0
	bne _08001488
	ldr r0, [r4]
	movs r1, #0
	bl sub_080012A8
	ldrh r0, [r0]
	subs r2, r0, #1
_08001488:
	str r2, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001490: .4byte 0x02034020
	thumb_func_end sub_08001464

	thumb_func_start sub_08001494
sub_08001494: @ 0x08001494
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080014A8 @ =0x02034020
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080014A8: .4byte 0x02034020
	thumb_func_end sub_08001494

	thumb_func_start sub_080014AC
sub_080014AC: @ 0x080014AC
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080014C8 @ =0x02034020
	adds r1, r1, r0
	cmp r2, #1
	beq _080014DC
	cmp r2, #1
	bgt _080014CC
	cmp r2, #0
	beq _080014D2
	b _080014F4
	.align 2, 0
_080014C8: .4byte 0x02034020
_080014CC:
	cmp r2, #2
	beq _080014E6
	b _080014F4
_080014D2:
	ldr r0, [r1, #0xc]
	cmp r0, #2
	bne _080014F4
_080014D8:
	str r2, [r1, #0xc]
	b _080014F4
_080014DC:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _080014F4
	movs r0, #2
	b _080014F2
_080014E6:
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _080014D8
	cmp r0, #2
	bne _080014F4
	movs r0, #0
_080014F2:
	str r0, [r1, #0xc]
_080014F4:
	pop {r0}
	bx r0
	thumb_func_end sub_080014AC

	thumb_func_start sub_080014F8
sub_080014F8: @ 0x080014F8
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08001510 @ =0x02034020
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08001514
	movs r0, #0
	b _08001516
	.align 2, 0
_08001510: .4byte 0x02034020
_08001514:
	movs r0, #1
_08001516:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080014F8

	thumb_func_start sub_0800151C
sub_0800151C: @ 0x0800151C
	ldr r1, _08001524 @ =0x0203000C
	str r0, [r1]
	bx lr
	.align 2, 0
_08001524: .4byte 0x0203000C
	thumb_func_end sub_0800151C

	thumb_func_start sub_08001528
sub_08001528: @ 0x08001528
	push {lr}
	ldr r1, _08001544 @ =0x02034000
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	movs r0, #0x22
	bl sub_08001630
	movs r0, #0xff
	bl sub_08001620
	pop {r0}
	bx r0
	.align 2, 0
_08001544: .4byte 0x02034000
	thumb_func_end sub_08001528

	thumb_func_start sub_08001548
sub_08001548: @ 0x08001548
	ldr r0, _08001550 @ =0x02034000
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08001550: .4byte 0x02034000
	thumb_func_end sub_08001548

	thumb_func_start sub_08001554
sub_08001554: @ 0x08001554
	push {lr}
	ldr r1, _08001574 @ =0x02034000
	ldr r0, [r1]
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _0800156E
	str r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1, #4]
	movs r0, #1
	str r0, [r1, #8]
_0800156E:
	pop {r0}
	bx r0
	.align 2, 0
_08001574: .4byte 0x02034000
	thumb_func_end sub_08001554

	thumb_func_start sub_08001578
sub_08001578: @ 0x08001578
	push {lr}
	ldr r2, _08001590 @ =0x02034000
	ldr r0, [r2]
	cmp r0, #1
	beq _0800158C
	movs r1, #1
	str r1, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r1, [r2, #8]
_0800158C:
	pop {r0}
	bx r0
	.align 2, 0
_08001590: .4byte 0x02034000
	thumb_func_end sub_08001578

	thumb_func_start sub_08001594
sub_08001594: @ 0x08001594
	push {r4, lr}
	ldr r0, _080015C8 @ =0x02034000
	ldr r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	beq _080015A8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080015EE
_080015A8:
	cmp r1, #0
	bge _080015CC
	ldr r1, [r4, #0xc]
	movs r0, #0x88
	lsls r0, r0, #5
	bl sub_0804449C
	ldr r1, [r4, #4]
	subs r1, r1, r0
	str r1, [r4, #4]
	cmp r1, #0
	bgt _080015EA
	movs r0, #0
	str r0, [r4, #4]
	subs r0, #2
	b _080015E8
	.align 2, 0
_080015C8: .4byte 0x02034000
_080015CC:
	ldr r1, [r4, #0xc]
	movs r0, #0x88
	lsls r0, r0, #5
	bl sub_0804449C
	ldr r1, [r4, #4]
	adds r1, r1, r0
	str r1, [r4, #4]
	ldr r0, _080015F4 @ =0x00000FFF
	cmp r1, r0
	ble _080015EA
	adds r0, #1
	str r0, [r4, #4]
	movs r0, #2
_080015E8:
	str r0, [r4]
_080015EA:
	movs r0, #1
	str r0, [r4, #8]
_080015EE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080015F4: .4byte 0x00000FFF
	thumb_func_end sub_08001594

	thumb_func_start sub_080015F8
sub_080015F8: @ 0x080015F8
	push {r4, lr}
	ldr r4, _0800161C @ =0x02034000
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08001616
	movs r0, #0
	str r0, [r4, #8]
	ldrh r0, [r4, #0x10]
	bl sub_08000B4C
	ldr r0, [r4, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	bl sub_08000B7C
_08001616:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800161C: .4byte 0x02034000
	thumb_func_end sub_080015F8

	thumb_func_start sub_08001620
sub_08001620: @ 0x08001620
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0800162C @ =0x02034000
	str r0, [r1, #0x10]
	bx lr
	.align 2, 0
_0800162C: .4byte 0x02034000
	thumb_func_end sub_08001620

	thumb_func_start sub_08001630
sub_08001630: @ 0x08001630
	ldr r1, _08001638 @ =0x02034000
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08001638: .4byte 0x02034000
	thumb_func_end sub_08001630

	thumb_func_start sub_0800163C
sub_0800163C: @ 0x0800163C
	push {r4, lr}
	ldr r4, _08001670 @ =0x02031EA0
	movs r0, #0
	strb r0, [r4]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	movs r2, #0
	bl sub_080018A4
	movs r0, #0x20
	bl sub_080018C4
	movs r1, #0
	adds r4, #1
	movs r2, #0
_08001660:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _08001660
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001670: .4byte 0x02031EA0
	thumb_func_end sub_0800163C

	thumb_func_start sub_08001674
sub_08001674: @ 0x08001674
	push {r4, r5, lr}
	ldr r5, _080016A8 @ =0x02031EA0
	ldr r4, [r5, #0x34]
	str r4, [r5, #0x30]
	adds r1, r4, #0
	cmp r1, #0x1f
	ble _08001684
	movs r1, #0x20
_08001684:
	movs r0, #0x20
	bl sub_0804449C
	str r0, [r5, #0x24]
	adds r1, r4, #0
	cmp r1, #0x20
	bgt _08001694
	movs r1, #0x20
_08001694:
	cmp r1, #0
	bge _0800169A
	adds r1, #0x1f
_0800169A:
	asrs r0, r1, #5
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080016A8: .4byte 0x02031EA0
	thumb_func_end sub_08001674

	thumb_func_start sub_080016AC
sub_080016AC: @ 0x080016AC
	push {r4, lr}
	ldr r4, _080016D0 @ =0x02031EA0
	movs r0, #1
	strb r0, [r4]
	bl sub_08001674
	movs r1, #0
	adds r4, #1
	movs r2, #1
_080016BE:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _080016BE
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080016D0: .4byte 0x02031EA0
	thumb_func_end sub_080016AC

	thumb_func_start sub_080016D4
sub_080016D4: @ 0x080016D4
	push {r4, lr}
	ldr r2, _0800170C @ =0x020341A0
	movs r1, #0
	ldr r3, _08001710 @ =0x000001FF
	ldr r0, _08001714 @ =0x02031EA0
	ldr r0, [r0, #0x38]
_080016E0:
	strh r0, [r2]
	adds r1, #1
	adds r2, #2
	cmp r1, r3
	bls _080016E0
	ldr r4, _08001714 @ =0x02031EA0
	movs r0, #1
	strb r0, [r4]
	bl sub_08001674
	movs r1, #0
	adds r4, #1
	movs r2, #1
_080016FA:
	adds r0, r1, r4
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x1f
	bls _080016FA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800170C: .4byte 0x020341A0
_08001710: .4byte 0x000001FF
_08001714: .4byte 0x02031EA0
	thumb_func_end sub_080016D4

	thumb_func_start sub_08001718
sub_08001718: @ 0x08001718
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r2, _08001774 @ =0x02031EA0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001730
	b _08001848
_08001730:
	ldr r0, [r2, #0x30]
	subs r0, #1
	str r0, [r2, #0x30]
	cmp r0, #0
	bne _0800173C
	strb r0, [r2]
_0800173C:
	ldr r0, [r2, #0x2c]
	subs r0, #1
	str r0, [r2, #0x2c]
	cmp r0, #0
	beq _08001748
	b _08001848
_08001748:
	ldr r0, [r2, #0x28]
	str r0, [r2, #0x2c]
	ldr r0, _08001778 @ =0x02033C00
	mov ip, r0
	ldr r1, _0800177C @ =0x020341A0
	mov sb, r1
	ldr r4, _08001780 @ =0x02031E60
	adds r3, r2, #1
	movs r1, #0
_0800175A:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08001784
	movs r2, #0x20
	add ip, r2
	add sb, r2
	adds r1, #1
	str r1, [sp, #8]
	adds r4, #1
	str r4, [sp, #4]
	adds r3, #1
	str r3, [sp]
	b _0800183E
	.align 2, 0
_08001774: .4byte 0x02031EA0
_08001778: .4byte 0x02033C00
_0800177C: .4byte 0x020341A0
_08001780: .4byte 0x02031E60
_08001784:
	movs r0, #1
	strb r0, [r4]
	movs r6, #0
	mov sl, r6
	adds r1, #1
	str r1, [sp, #8]
	adds r4, #1
	str r4, [sp, #4]
	adds r3, #1
	str r3, [sp]
	movs r0, #0x1f
	mov r8, r0
	ldr r7, _080017D8 @ =0x02031EA0
_0800179E:
	mov r1, ip
	ldrh r0, [r1]
	movs r5, #0x1f
	ands r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x15
	mov r2, r8
	ands r1, r2
	lsrs r3, r0, #0x1a
	ands r3, r2
	mov r6, sb
	ldrh r0, [r6]
	movs r2, #0x1f
	ands r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x15
	mov r6, r8
	ands r4, r6
	lsrs r6, r0, #0x1a
	mov r0, r8
	ands r6, r0
	cmp r5, r2
	bge _080017DC
	ldr r0, [r7, #0x24]
	adds r5, r5, r0
	cmp r5, r2
	blt _080017EA
	b _080017E8
	.align 2, 0
_080017D8: .4byte 0x02031EA0
_080017DC:
	cmp r5, r2
	ble _080017EA
	ldr r0, [r7, #0x24]
	subs r5, r5, r0
	cmp r5, r2
	bgt _080017EA
_080017E8:
	adds r5, r2, #0
_080017EA:
	cmp r1, r4
	bge _080017F8
	ldr r0, [r7, #0x24]
	adds r1, r1, r0
	cmp r1, r4
	blt _08001806
	b _08001804
_080017F8:
	cmp r1, r4
	ble _08001806
	ldr r0, [r7, #0x24]
	subs r1, r1, r0
	cmp r1, r4
	bgt _08001806
_08001804:
	adds r1, r4, #0
_08001806:
	cmp r3, r6
	bge _08001814
	ldr r0, [r7, #0x24]
	adds r3, r3, r0
	cmp r3, r6
	blt _08001822
	b _08001820
_08001814:
	cmp r3, r6
	ble _08001822
	ldr r0, [r7, #0x24]
	subs r3, r3, r0
	cmp r3, r6
	bgt _08001822
_08001820:
	adds r3, r6, #0
_08001822:
	lsls r0, r3, #0xa
	lsls r1, r1, #5
	adds r0, r0, r1
	adds r0, r0, r5
	mov r1, ip
	strh r0, [r1]
	movs r2, #1
	add sl, r2
	movs r6, #2
	add ip, r6
	add sb, r6
	mov r0, sl
	cmp r0, #0xf
	bls _0800179E
_0800183E:
	ldr r1, [sp, #8]
	ldr r4, [sp, #4]
	ldr r3, [sp]
	cmp r1, #0x1f
	bls _0800175A
_08001848:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08001718

	thumb_func_start sub_08001858
sub_08001858: @ 0x08001858
	push {lr}
	ldr r0, _0800186C @ =0x02031EA0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08001870
	movs r0, #1
	b _08001872
	.align 2, 0
_0800186C: .4byte 0x02031EA0
_08001870:
	movs r0, #0
_08001872:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08001858

	thumb_func_start sub_08001878
sub_08001878: @ 0x08001878
	push {lr}
	adds r3, r1, #0
	ldr r1, _08001894 @ =0x02031EA1
	adds r0, r0, r1
	movs r1, #0
	cmp r1, r3
	bhs _08001890
_08001886:
	strb r2, [r0]
	adds r1, #1
	adds r0, #1
	cmp r1, r3
	blo _08001886
_08001890:
	pop {r0}
	bx r0
	.align 2, 0
_08001894: .4byte 0x02031EA1
	thumb_func_end sub_08001878

	thumb_func_start sub_08001898
sub_08001898: @ 0x08001898
	ldr r1, _080018A0 @ =0x02031EA0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_080018A0: .4byte 0x02031EA0
	thumb_func_end sub_08001898

	thumb_func_start sub_080018A4
sub_080018A4: @ 0x080018A4
	push {r4, lr}
	ldr r4, _080018C0 @ =0x02031EA0
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xa
	ands r1, r3
	lsls r1, r1, #5
	adds r2, r2, r1
	ands r0, r3
	adds r2, r2, r0
	str r2, [r4, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080018C0: .4byte 0x02031EA0
	thumb_func_end sub_080018A4

	thumb_func_start sub_080018C4
sub_080018C4: @ 0x080018C4
	ldr r1, _080018CC @ =0x02031EA0
	str r0, [r1, #0x34]
	bx lr
	.align 2, 0
_080018CC: .4byte 0x02031EA0
	thumb_func_end sub_080018C4

	thumb_func_start sub_080018D0
sub_080018D0: @ 0x080018D0
	push {lr}
	ldr r0, _080018DC @ =sub_08001718
	bl sub_080018EC
	pop {r0}
	bx r0
	.align 2, 0
_080018DC: .4byte sub_08001718
	thumb_func_end sub_080018D0

	thumb_func_start sub_080018E0
sub_080018E0: @ 0x080018E0
	ldr r1, _080018E8 @ =0x02031E80
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080018E8: .4byte 0x02031E80
	thumb_func_end sub_080018E0

	thumb_func_start sub_080018EC
sub_080018EC: @ 0x080018EC
	ldr r1, _080018F4 @ =0x02031E80
	str r0, [r1]
	bx lr
	.align 2, 0
_080018F4: .4byte 0x02031E80
	thumb_func_end sub_080018EC

	thumb_func_start sub_080018F8
sub_080018F8: @ 0x080018F8
	push {lr}
	ldr r0, _0800190C @ =0x02031E80
	ldr r0, [r0]
	cmp r0, #0
	beq _08001906
	bl sub_0804402C
_08001906:
	pop {r0}
	bx r0
	.align 2, 0
_0800190C: .4byte 0x02031E80
	thumb_func_end sub_080018F8

	thumb_func_start sub_08001910
sub_08001910: @ 0x08001910
	ldr r0, _0800191C @ =0x03001018
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08001920 @ =0x0300096C
	strb r1, [r0]
	bx lr
	.align 2, 0
_0800191C: .4byte 0x03001018
_08001920: .4byte 0x0300096C
	thumb_func_end sub_08001910

	thumb_func_start sub_08001924
sub_08001924: @ 0x08001924
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #4]
	cmp r2, #0
	bne _08001942
	strh r2, [r3, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0xe]
	strh r2, [r3, #0x12]
	strh r2, [r3, #0x14]
	strh r0, [r3, #0x16]
	strh r0, [r3, #0x18]
	strh r2, [r3, #0x1a]
	b _080019B8
_08001942:
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0, #8]
	adds r1, r2, r1
	movs r0, #0xa
	ldrsh r2, [r3, r0]
	adds r0, r3, #0
	adds r0, #0x25
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r2, r0
	adds r4, r1, r0
	ldrh r1, [r1, #2]
	ldrh r0, [r4, #6]
	strh r0, [r3, #0xc]
	movs r2, #8
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	strh r0, [r3, #0xe]
	adds r2, r4, #0
	adds r2, #0xa
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08001986
	ldrh r0, [r4, #0xa]
	strh r0, [r3, #0x12]
	ldrh r0, [r4, #0xc]
	strh r0, [r3, #0x14]
	adds r2, #4
	b _0800198A
_08001986:
	strh r0, [r3, #0x12]
	strh r0, [r3, #0x14]
_0800198A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080019A0
	ldrh r0, [r2]
	strh r0, [r3, #0x16]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r3, #0x18]
	adds r2, #2
	b _080019A8
_080019A0:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x16]
	strh r0, [r3, #0x18]
_080019A8:
	movs r0, #4
	ands r1, r0
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080019B6
	ldrh r0, [r2]
_080019B6:
	strh r0, [r3, #0x1a]
_080019B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001924

	thumb_func_start sub_080019C0
sub_080019C0: @ 0x080019C0
	push {lr}
	adds r1, r0, #0
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _080019D0
	movs r0, #0
	strh r0, [r1, #0x1a]
_080019D0:
	pop {r0}
	bx r0
	thumb_func_end sub_080019C0

	thumb_func_start sub_080019D4
sub_080019D4: @ 0x080019D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	mov sb, r3
	cmp r4, #0
	bne _080019F6
	bl sub_08002954
	adds r4, r0, #0
	cmp r4, #0
	bne _08001A0C
	movs r0, #0
	b _08001AB6
_080019F6:
	ldrh r0, [r4, #0x1a]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #1
	bhi _08001AB4
	asrs r0, r1, #0x10
	cmp r0, #1
	bne _08001A0C
	adds r0, r4, #0
	bl sub_080019C0
_08001A0C:
	movs r6, #0
	movs r0, #0
	movs r7, #1
	strh r7, [r4, #0x1a]
	strh r7, [r4, #0x18]
	adds r3, r4, #0
	adds r3, #0x20
	mov r1, r8
	str r1, [r4, #0x20]
	str r5, [r3, #4]
	mov r1, sb
	strh r1, [r3, #8]
	strh r0, [r3, #0xa]
	strh r0, [r3, #0xc]
	strh r0, [r3, #0xe]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r3, #0x10]
	strh r0, [r3, #0x12]
	strh r0, [r3, #0x14]
	strh r2, [r3, #0x16]
	strh r2, [r3, #0x18]
	strh r0, [r3, #0x1a]
	strh r0, [r3, #0x1c]
	strh r0, [r3, #0x1e]
	strh r0, [r3, #0x20]
	adds r0, r4, #0
	adds r0, #0x42
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x44
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x45
	adds r0, r0, r4
	mov ip, r0
	strb r6, [r0]
	cmp r5, #0
	bne _08001A6C
	ldrh r1, [r3, #0x1c]
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #0x1c]
	mov r1, sb
	strh r1, [r3, #0xc]
	b _08001AB4
_08001A6C:
	movs r1, #8
	ldrsh r0, [r3, r1]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0, #8]
	adds r0, r5, r0
	ldrh r2, [r0, #2]
	movs r1, #4
	adds r0, r2, #0
	ands r0, r7
	cmp r0, #0
	beq _08001A86
	movs r1, #8
_08001A86:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08001A98
	lsls r0, r1, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x13
	adds r0, r0, r1
	lsrs r1, r0, #0x18
_08001A98:
	movs r0, #4
	ands r2, r0
	cmp r2, #0
	beq _08001AAA
	lsls r0, r1, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	lsrs r1, r0, #0x18
_08001AAA:
	mov r0, ip
	strb r1, [r0]
	adds r0, r3, #0
	bl sub_08001924
_08001AB4:
	adds r0, r4, #0
_08001AB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080019D4

	thumb_func_start sub_08001AC4
sub_08001AC4: @ 0x08001AC4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	bl sub_08003A5C
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_080019D4
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08001AC4

	thumb_func_start sub_08001AE4
sub_08001AE4: @ 0x08001AE4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov sb, r3
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08003A5C
	adds r6, r0, #0
	adds r4, #1
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08003A5C
	adds r2, r0, #0
	mov r0, r8
	adds r1, r6, #0
	mov r3, sb
	bl sub_080019D4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08001AE4

	thumb_func_start sub_08001B20
sub_08001B20: @ 0x08001B20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r1, r2, #0
	adds r6, r3, #0
	ldr r7, [sp, #0x18]
	adds r0, r4, #0
	bl sub_08003A5C
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08003A5C
	adds r2, r0, #0
	mov r0, r8
	adds r1, r5, #0
	adds r3, r7, #0
	bl sub_080019D4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08001B20

	thumb_func_start sub_08001B58
sub_08001B58: @ 0x08001B58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	adds r3, #0x20
	ldrh r2, [r3, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	bne _08001C40
	ldr r1, _08001B90 @ =0x0000FFF9
	ands r1, r2
	strh r1, [r3, #0x1c]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08001C40
	ldrh r1, [r3, #0x10]
	movs r2, #0x10
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _08001B94
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r7, #1
	b _08001B98
	.align 2, 0
_08001B90: .4byte 0x0000FFF9
_08001B94:
	ldrh r0, [r3, #0x10]
	movs r7, #0
_08001B98:
	ldrh r1, [r3, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	movs r6, #0
	mov r8, r6
	strh r1, [r3, #0xe]
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _08001C40
	movs r1, #8
	ldrsh r0, [r3, r1]
	ldr r1, [r3, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r1, r1, r0
	mov ip, r1
	movs r2, #0
	ldrsh r5, [r1, r2]
	ldrh r1, [r3, #0x1c]
	movs r0, #1
	ands r0, r1
	adds r4, r1, #0
	ldrh r1, [r3, #0xa]
	cmp r0, #0
	beq _08001BFA
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r6, #0x1e
	ldrsh r0, [r3, r6]
	cmp r2, r0
	bne _08001BFA
	movs r0, #0
	strh r0, [r3, #0xe]
	cmp r7, #0
	bne _08001BEE
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	subs r0, r5, #1
	cmp r1, r0
	bne _08001C40
	b _08001BF2
_08001BEE:
	cmp r2, #0
	bne _08001C40
_08001BF2:
	movs r0, #4
	orrs r0, r4
	strh r0, [r3, #0x1c]
	b _08001C40
_08001BFA:
	movs r0, #2
	movs r6, #0
	adds r2, r0, #0
	orrs r2, r4
	strh r2, [r3, #0x1c]
	cmp r7, #0
	bne _08001C20
	adds r0, r1, #1
	strh r0, [r3, #0xa]
	movs r1, #0xa
	ldrsh r0, [r3, r1]
	cmp r0, r5
	bne _08001C3A
	movs r0, #4
	orrs r2, r0
	strh r2, [r3, #0x1c]
	mov r2, ip
	ldrh r0, [r2, #4]
	b _08001C38
_08001C20:
	subs r0, r1, #1
	strh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08001C3A
	movs r0, #4
	orrs r2, r0
	strh r2, [r3, #0x1c]
	subs r0, r5, #1
_08001C38:
	strh r0, [r3, #0xa]
_08001C3A:
	adds r0, r3, #0
	bl sub_08001924
_08001C40:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08001B58

	thumb_func_start sub_08001C4C
sub_08001C4C: @ 0x08001C4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x10]
	adds r0, #0x20
	mov sl, r0
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x20]
	mov r2, sl
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #8]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r4, [r0, r5]
	str r4, [sp, #0x14]
	adds r0, #2
	mov r8, r0
	movs r6, #0
	str r6, [sp, #0x18]
	cmp r6, r4
	blo _08001C84
	b _0800222A
_08001C84:
	ldr r0, _08001D24 @ =0x03001018
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r1, #0
	bge _08001C92
	b _0800222A
_08001C92:
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x5c]
_08001C98:
	mov r2, r8
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	adds r2, r1, #0
	ands r2, r0
	movs r4, #0x80
	lsls r4, r4, #7
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r7, r0, #0x1f
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov sb, r0
	movs r6, #3
	ands r6, r1
	str r6, [sp, #0x2c]
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x12
	movs r0, #3
	ands r3, r0
	lsrs r4, r1, #0x14
	movs r5, #3
	ands r5, r4
	str r5, [sp, #0x30]
	lsrs r6, r1, #0x16
	ands r0, r6
	str r0, [sp, #0x34]
	lsrs r4, r1, #0x18
	movs r5, #1
	ands r5, r4
	str r5, [sp, #0x38]
	lsrs r6, r1, #0x19
	movs r0, #1
	ands r0, r6
	str r0, [sp, #0x3c]
	lsrs r4, r1, #0x1a
	movs r5, #1
	ands r5, r4
	str r5, [sp, #0x40]
	lsrs r4, r1, #0x1b
	movs r6, #1
	ands r4, r6
	lsrs r1, r1, #0x1c
	movs r0, #1
	ands r0, r1
	str r0, [sp, #0x44]
	movs r1, #2
	add r8, r1
	cmp r2, #0
	beq _08001D28
	mov r2, r8
	ldrh r5, [r2]
	add r8, r1
	mov r6, r8
	ldrh r6, [r6]
	str r6, [sp, #0x70]
	add r8, r1
	b _08001D2E
	.align 2, 0
_08001D24: .4byte 0x03001018
_08001D28:
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0x70]
_08001D2E:
	mov r2, r8
	ldrh r1, [r2]
	ldr r6, _08001D5C @ =0x000003FF
	adds r0, r6, #0
	adds r2, r0, #0
	ands r2, r1
	str r2, [sp, #0x48]
	lsrs r1, r1, #0xc
	str r1, [sp, #0x4c]
	movs r6, #2
	add r8, r6
	cmp r7, #0
	beq _08001D60
	mov r0, r8
	ldrh r0, [r0]
	str r0, [sp, #0x50]
	add r8, r6
	mov r1, r8
	ldrh r1, [r1]
	str r1, [sp, #0x54]
	add r8, r6
	b _08001D68
	.align 2, 0
_08001D5C: .4byte 0x000003FF
_08001D60:
	movs r2, #0x80
	lsls r2, r2, #1
	str r2, [sp, #0x54]
	str r2, [sp, #0x50]
_08001D68:
	mov r6, sb
	cmp r6, #0
	beq _08001D7A
	mov r0, r8
	ldrh r0, [r0]
	str r0, [sp, #0x58]
	movs r1, #2
	add r8, r1
	b _08001D7E
_08001D7A:
	movs r2, #0
	str r2, [sp, #0x58]
_08001D7E:
	mov r6, ip
	ldrb r0, [r6]
	lsls r0, r0, #3
	ldr r1, _08001EA0 @ =0x03001510
	adds r7, r0, r1
	ldr r2, [sp, #0x10]
	ldrh r2, [r2, #0xc]
	str r2, [sp, #0x20]
	ldr r6, [sp, #0x10]
	ldrh r6, [r6, #0xe]
	str r6, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #0x10]
	str r0, [sp, #0x28]
	mov r1, sl
	movs r2, #0x16
	ldrsh r0, [r1, r2]
	movs r6, #0x80
	lsls r6, r6, #1
	mov sb, r6
	cmp r0, sb
	beq _08001DC4
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r6, #0x16
	ldrsh r1, [r2, r6]
	str r3, [sp, #0x6c]
	bl sub_080068FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x6c]
_08001DC4:
	mov r1, sl
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, sb
	beq _08001DE6
	ldr r6, [sp, #0x24]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x18
	ldrsh r1, [r1, r2]
	str r3, [sp, #0x6c]
	bl sub_080068FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
	ldr r3, [sp, #0x6c]
_08001DE6:
	mov r6, sl
	ldrh r0, [r6, #0x1a]
	cmp r0, #0
	beq _08001DF8
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
_08001DF8:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r2, sl
	movs r5, #0x12
	ldrsh r1, [r2, r5]
	adds r0, r0, r1
	lsls r5, r0, #8
	ldrh r2, [r2, #0x1c]
	movs r0, #8
	ands r0, r2
	ldr r6, [sp, #0x2c]
	lsls r6, r6, #1
	str r6, [sp, #0x60]
	cmp r0, #0
	beq _08001E22
	ldr r0, _08001EA4 @ =0x08204BD4
	adds r0, r6, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r5, r0
	rsbs r5, r0, #0
_08001E22:
	ldr r6, [sp, #0x70]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	movs r6, #0x14
	ldrsh r1, [r1, r6]
	mov ip, r1
	add r0, ip
	lsls r6, r0, #8
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08001E4A
	ldr r0, _08001EA4 @ =0x08204BD4
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, r6, r0
	rsbs r6, r0, #0
_08001E4A:
	movs r0, #0
	str r0, [sp, #0x1c]
	cmp r4, #0
	beq _08001E56
	movs r1, #3
	str r1, [sp, #0x1c]
_08001E56:
	ldr r2, [sp, #0x20]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	str r0, [sp, #0x68]
	cmp r1, sb
	bne _08001E72
	ldr r2, [sp, #0x24]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bne _08001E72
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _08001E76
_08001E72:
	movs r1, #3
	str r1, [sp, #0x1c]
_08001E76:
	ldr r2, [sp, #0x1c]
	cmp r2, #3
	bne _08001F6E
	cmp r4, #0
	beq _08001EAC
	ldr r4, [sp, #0x60]
	ldr r1, _08001EA8 @ =0x08204BDC
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r5, r0
	mov sb, r5
	lsls r1, r3, #1
	ldr r3, _08001EA8 @ =0x08204BDC
	adds r0, r1, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r4, r6, r0
	str r1, [sp, #0x64]
	b _08001ED4
	.align 2, 0
_08001EA0: .4byte 0x03001510
_08001EA4: .4byte 0x08204BD4
_08001EA8: .4byte 0x08204BDC
_08001EAC:
	ldr r1, [sp, #0x60]
	ldr r2, _08001EE0 @ =0x08204BDC
	adds r0, r1, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r5, r5, r0
	mov sb, r5
	lsls r2, r3, #1
	ldr r5, _08001EE0 @ =0x08204BDC
	adds r0, r2, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r6, r0
	str r2, [sp, #0x64]
_08001ED4:
	ldr r2, [sp, #0x68]
	asrs r0, r2, #0x10
	cmp r0, #0
	blt _08001EE4
	subs r0, #0x10
	b _08001EE6
	.align 2, 0
_08001EE0: .4byte 0x08204BDC
_08001EE4:
	adds r0, #0x10
_08001EE6:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08001F04 @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08001F08
	subs r0, #0x10
	b _08001F0A
	.align 2, 0
_08001F04: .4byte 0xFFFF0000
_08001F08:
	adds r0, #0x10
_08001F0A:
	lsls r0, r0, #0x10
	ldr r2, _08002184 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	ldr r1, _08002188 @ =0xFFFF0000
	ldr r0, [sp, #4]
	ands r0, r1
	ldr r5, [sp, #0x28]
	orrs r0, r5
	str r0, [sp, #4]
	mov r0, sp
	ldr r1, [sp, #0x5c]
	movs r2, #1
	movs r3, #2
	bl sub_08043C58
	ldr r6, [sp, #0x5c]
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r1, sb
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r2, #2
	ldrsh r0, [r6, r2]
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r5, r1, r0
	movs r3, #4
	ldrsh r0, [r6, r3]
	mov r1, sb
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r2, #6
	ldrsh r0, [r6, r2]
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r6, r1, r0
	ldr r3, [sp, #0x60]
	ldr r4, _0800218C @ =0x08204BDC
	adds r0, r3, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r5, r5, r0
	ldr r2, [sp, #0x64]
	adds r0, r2, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r6, r6, r0
_08001F6E:
	ldr r4, [sp, #0x10]
	ldr r0, [r4]
	adds r0, r0, r5
	asrs r5, r0, #8
	ldr r0, [r4, #4]
	adds r0, r0, r6
	asrs r6, r0, #8
	ldr r1, _08002190 @ =0x08204BE4
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #3
	ldr r3, [sp, #0x60]
	adds r0, r3, r0
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmn r5, r0
	bge _08001F92
	b _08002210
_08001F92:
	cmp r5, #0xf0
	ble _08001F98
	b _08002210
_08001F98:
	movs r0, #0x44
	rsbs r0, r0, #0
	cmp r6, r0
	bge _08001FA2
	b _08002210
_08001FA2:
	cmp r6, #0xa0
	ble _08001FA8
	b _08002210
_08001FA8:
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r0, [sp, #0x50]
	cmp r0, r4
	beq _08001FC2
	ldr r1, [sp, #0x68]
	asrs r0, r1, #0x10
	ldr r1, [sp, #0x50]
	bl sub_080068FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
_08001FC2:
	ldr r2, [sp, #0x54]
	cmp r2, r4
	beq _08001FDA
	ldr r3, [sp, #0x24]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r2, #0
	bl sub_080068FC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x24]
_08001FDA:
	ldr r4, [sp, #0x58]
	cmp r4, #0
	beq _08001FEA
	ldr r1, [sp, #0x28]
	adds r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
_08001FEA:
	ldr r2, [sp, #0x1c]
	cmp r2, #3
	bne _0800206A
	ldr r3, [sp, #0x20]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r0, r4, #0
	bl sub_0804449C
	mov r1, sp
	strh r0, [r1]
	ldr r0, [sp, #0x24]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0804449C
	mov r1, sp
	strh r0, [r1, #2]
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, [sp, #0x5c]
	movs r2, #1
	movs r3, #2
	bl sub_08043C58
	ldr r3, _08002194 @ =0x0300096C
	ldrb r0, [r3]
	lsls r0, r0, #5
	ldr r4, _08002198 @ =0x03001510
	adds r0, r0, r4
	ldr r2, [sp, #0x5c]
	ldrh r1, [r2]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #2]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #2
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #4]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, #3
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #6]
	strh r1, [r0, #6]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0800206A:
	ldr r3, _0800219C @ =0x000001FF
	adds r0, r3, #0
	ands r5, r0
	ldrh r0, [r7, #2]
	ldr r4, _080021A0 @ =0xFFFFFE00
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r7, #2]
	strb r6, [r7]
	mov r5, sl
	ldrh r2, [r5, #0x20]
	ldr r6, [sp, #0x48]
	adds r2, r6, r2
	ldr r1, _080021A4 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldrh r0, [r7, #4]
	ldr r3, _080021A8 @ =0xFFFFFC00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r7, #4]
	mov r0, sl
	adds r0, #0x23
	ldrb r0, [r0]
	movs r4, #3
	ands r0, r4
	lsls r0, r0, #2
	ldrb r1, [r7, #5]
	movs r6, #0xd
	rsbs r6, r6, #0
	adds r5, r6, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7, #5]
	mov r0, sl
	adds r0, #0x22
	ldrb r2, [r0]
	ldr r0, [sp, #0x4c]
	adds r2, r0, r2
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #5]
	ldr r1, [sp, #0x34]
	lsls r2, r1, #6
	ldrb r0, [r7, #1]
	movs r1, #0x3f
	adds r3, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r4, [sp, #0x30]
	lsls r2, r4, #6
	ldrb r0, [r7, #3]
	adds r4, r1, #0
	ands r4, r0
	orrs r4, r2
	strb r4, [r7, #3]
	ldr r6, [sp, #0x40]
	movs r0, #1
	ands r6, r0
	lsls r0, r6, #5
	subs r1, #0x60
	mov sb, r1
	mov r2, sb
	ands r3, r2
	orrs r3, r0
	strb r3, [r7, #1]
	mov r2, sl
	adds r2, #0x24
	ldrb r0, [r2]
	ldr r1, [sp, #0x44]
	cmp r0, #3
	beq _08002104
	adds r1, r0, #0
_08002104:
	movs r6, #3
	ands r1, r6
	lsls r0, r1, #2
	adds r1, r3, #0
	ands r1, r5
	orrs r1, r0
	strb r1, [r7, #1]
	mov r2, sl
	ldrh r0, [r2, #0x1c]
	lsrs r0, r0, #7
	movs r6, #1
	movs r3, #1
	ands r0, r6
	lsls r0, r0, #4
	movs r5, #0x11
	rsbs r5, r5, #0
	ands r1, r5
	orrs r1, r0
	ldr r2, [sp, #0x1c]
	movs r0, #3
	ands r2, r0
	subs r0, #7
	mov ip, r0
	mov r0, ip
	ands r1, r0
	orrs r1, r2
	strb r1, [r7, #1]
	ldr r1, [sp, #0x1c]
	cmp r1, #3
	bne _080021AC
	ldr r2, _08002194 @ =0x0300096C
	ldrb r0, [r2]
	subs r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	movs r2, #0xf
	rsbs r2, r2, #0
	adds r1, r2, #0
	adds r2, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r7, #3]
	ldr r4, _08002194 @ =0x0300096C
	ldrb r0, [r4]
	subs r0, #1
	asrs r0, r0, #3
	ands r0, r6
	ands r0, r3
	lsls r0, r0, #4
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #3]
	ldrb r0, [r4]
	subs r0, #1
	asrs r0, r0, #4
	ands r0, r6
	ands r0, r3
	lsls r0, r0, #5
	mov r5, sb
	ands r1, r5
	b _08002204
	.align 2, 0
_08002184: .4byte 0x0000FFFF
_08002188: .4byte 0xFFFF0000
_0800218C: .4byte 0x08204BDC
_08002190: .4byte 0x08204BE4
_08002194: .4byte 0x0300096C
_08002198: .4byte 0x03001510
_0800219C: .4byte 0x000001FF
_080021A0: .4byte 0xFFFFFE00
_080021A4: .4byte 0x000003FF
_080021A8: .4byte 0xFFFFFC00
_080021AC:
	mov r6, sl
	ldrh r1, [r6, #0x1c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080021C4
	movs r0, #1
	ldr r1, [sp, #0x38]
	eors r0, r1
	ands r0, r3
	lsls r0, r0, #4
	b _080021CA
_080021C4:
	ldr r2, [sp, #0x38]
	ands r2, r3
	lsls r0, r2, #4
_080021CA:
	ands r4, r5
	orrs r4, r0
	strb r4, [r7, #3]
	mov r3, sl
	ldrh r1, [r3, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080021F2
	movs r4, #1
	ldr r5, [sp, #0x3c]
	eors r4, r5
	movs r6, #1
	ands r4, r6
	lsls r0, r4, #5
	ldrb r1, [r7, #3]
	movs r3, #0x21
	rsbs r3, r3, #0
	adds r2, r3, #0
	b _08002202
_080021F2:
	ldr r4, [sp, #0x3c]
	movs r5, #1
	ands r4, r5
	lsls r0, r4, #5
	ldrb r1, [r7, #3]
	movs r6, #0x21
	rsbs r6, r6, #0
	adds r2, r6, #0
_08002202:
	ands r1, r2
_08002204:
	orrs r1, r0
	strb r1, [r7, #3]
	ldr r1, _0800223C @ =0x03001018
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08002210:
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	cmp r0, r1
	bhs _0800222A
	ldr r0, _0800223C @ =0x03001018
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov ip, r0
	cmp r1, #0
	blt _0800222A
	b _08001C98
_0800222A:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800223C: .4byte 0x03001018
	thumb_func_end sub_08001C4C

	thumb_func_start sub_08002240
sub_08002240: @ 0x08002240
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp]
	adds r0, #0x20
	mov sb, r0
	ldr r1, [sp]
	ldr r0, [r1, #0x20]
	mov r2, sb
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #8]
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	str r1, [sp, #4]
	adds r6, r0, #2
	movs r3, #0
	str r3, [sp, #8]
	cmp r3, r1
	blo _08002276
	b _080024D0
_08002276:
	b _080024C4
_08002278:
	ldrh r1, [r6]
	movs r0, #3
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x12
	movs r2, #3
	ands r2, r3
	str r2, [sp, #0xc]
	lsrs r3, r0, #0x14
	movs r2, #3
	ands r2, r3
	str r2, [sp, #0x10]
	lsrs r3, r0, #0x16
	movs r2, #3
	ands r2, r3
	str r2, [sp, #0x14]
	lsrs r7, r0, #0x18
	movs r3, #1
	ands r7, r3
	lsrs r2, r0, #0x19
	ands r3, r2
	mov ip, r3
	lsrs r2, r0, #0x1a
	movs r3, #1
	ands r3, r2
	str r3, [sp, #0x18]
	lsrs r0, r0, #0x1c
	movs r2, #1
	ands r2, r0
	str r2, [sp, #0x1c]
	adds r6, #2
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080022D2
	ldrh r2, [r6]
	adds r6, #2
	ldrh r3, [r6]
	str r3, [sp, #0x20]
	adds r6, #2
	b _080022D8
_080022D2:
	movs r2, #0
	movs r0, #0
	str r0, [sp, #0x20]
_080022D8:
	ldrh r0, [r6]
	ldr r3, _0800247C @ =0x000003FF
	mov sl, r3
	ands r3, r0
	mov sl, r3
	lsrs r0, r0, #0xc
	str r0, [sp, #0x24]
	adds r6, #2
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080022F4
	adds r6, #4
_080022F4:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08002300
	adds r6, #2
_08002300:
	ldr r1, _08002480 @ =0x03001018
	ldrb r0, [r1]
	lsls r0, r0, #3
	ldr r3, _08002484 @ =0x03001510
	adds r5, r0, r3
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	movs r3, #0x12
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	lsls r3, r0, #8
	ldrh r4, [r2, #0x1c]
	movs r0, #8
	ands r0, r4
	mov r1, r8
	lsls r1, r1, #1
	mov r8, r1
	cmp r0, #0
	beq _08002334
	ldr r0, _08002488 @ =0x08204BD4
	add r0, r8
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r3, r0
	rsbs r3, r0, #0
_08002334:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	movs r1, #0x14
	ldrsh r2, [r2, r1]
	adds r0, r0, r2
	lsls r2, r0, #8
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0800235C
	ldr r1, [sp, #0xc]
	lsls r0, r1, #1
	ldr r1, _08002488 @ =0x08204BD4
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	rsbs r2, r0, #0
_0800235C:
	ldr r1, [sp]
	ldr r0, [r1]
	adds r0, r0, r3
	asrs r3, r0, #8
	ldr r0, [r1, #4]
	adds r0, r0, r2
	asrs r2, r0, #8
	ldr r0, _0800248C @ =0x08204BE4
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmn r3, r0
	bge _08002378
	b _080024B8
_08002378:
	cmp r3, #0xf0
	ble _0800237E
	b _080024B8
_0800237E:
	movs r0, #0x44
	rsbs r0, r0, #0
	cmp r2, r0
	bge _08002388
	b _080024B8
_08002388:
	cmp r2, #0xa0
	ble _0800238E
	b _080024B8
_0800238E:
	ldr r1, _08002490 @ =0x000001FF
	adds r0, r1, #0
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _08002494 @ =0xFFFFFE00
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r2, [r5]
	mov r2, sb
	ldrh r1, [r2, #0x20]
	add r1, sl
	ldr r3, _0800247C @ =0x000003FF
	ands r1, r3
	ldrh r2, [r5, #4]
	ldr r0, _08002498 @ =0xFFFFFC00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	mov r0, sb
	adds r0, #0x23
	ldrb r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r5, #5]
	subs r0, #0x10
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #5]
	mov r1, sb
	adds r1, #0x22
	ldrb r2, [r1]
	ldr r1, [sp, #0x24]
	adds r2, r1, r2
	lsls r2, r2, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #5]
	ldr r3, [sp, #0x14]
	lsls r2, r3, #6
	ldrb r0, [r5, #1]
	movs r1, #0x3f
	adds r3, r1, #0
	ands r3, r0
	orrs r3, r2
	ldr r0, [sp, #0x10]
	lsls r2, r0, #6
	ldrb r0, [r5, #3]
	adds r4, r1, #0
	ands r4, r0
	orrs r4, r2
	strb r4, [r5, #3]
	ldr r1, [sp, #0x18]
	movs r2, #1
	ands r1, r2
	lsls r0, r1, #5
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r3, r1
	orrs r3, r0
	strb r3, [r5, #1]
	mov r2, sb
	adds r2, #0x24
	ldrb r0, [r2]
	ldr r1, [sp, #0x1c]
	cmp r0, #3
	beq _0800241A
	adds r1, r0, #0
_0800241A:
	movs r2, #3
	ands r1, r2
	lsls r0, r1, #2
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r5, #1]
	mov r3, sb
	ldrh r0, [r3, #0x1c]
	lsrs r0, r0, #7
	movs r2, #1
	movs r3, #1
	ands r0, r2
	lsls r0, r0, #4
	subs r2, #0x12
	ands r1, r2
	orrs r1, r0
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	strb r1, [r5, #1]
	mov r0, sb
	ldrh r1, [r0, #0x1c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08002456
	movs r1, #1
	eors r7, r1
_08002456:
	ands r7, r3
	lsls r0, r7, #4
	ands r4, r2
	orrs r4, r0
	strb r4, [r5, #3]
	mov r2, sb
	ldrh r1, [r2, #0x1c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800249C
	movs r3, #1
	mov r0, ip
	eors r3, r0
	movs r1, #1
	ands r3, r1
	lsls r2, r3, #5
	b _080024A4
	.align 2, 0
_0800247C: .4byte 0x000003FF
_08002480: .4byte 0x03001018
_08002484: .4byte 0x03001510
_08002488: .4byte 0x08204BD4
_0800248C: .4byte 0x08204BE4
_08002490: .4byte 0x000001FF
_08002494: .4byte 0xFFFFFE00
_08002498: .4byte 0xFFFFFC00
_0800249C:
	mov r2, ip
	movs r3, #1
	ands r2, r3
	lsls r2, r2, #5
_080024A4:
	ldrb r1, [r5, #3]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #3]
	ldr r1, _080024E0 @ =0x03001018
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080024B8:
	ldr r2, [sp, #8]
	adds r2, #1
	str r2, [sp, #8]
	ldr r3, [sp, #4]
	cmp r2, r3
	bhs _080024D0
_080024C4:
	ldr r1, _080024E0 @ =0x03001018
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _080024D0
	b _08002278
_080024D0:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080024E0: .4byte 0x03001018
	thumb_func_end sub_08002240

	thumb_func_start sub_080024E4
sub_080024E4: @ 0x080024E4
	push {r4, r5, lr}
	ldr r0, _08002514 @ =0x03001018
	ldrb r3, [r0]
	lsls r1, r3, #3
	ldr r0, _08002518 @ =0x03001510
	adds r2, r1, r0
	cmp r3, #0x7f
	bhi _0800250C
	movs r5, #4
	rsbs r5, r5, #0
	movs r4, #2
_080024FA:
	ldrb r1, [r2, #1]
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #1]
	adds r3, #1
	adds r2, #8
	cmp r3, #0x7f
	bls _080024FA
_0800250C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002514: .4byte 0x03001018
_08002518: .4byte 0x03001510
	thumb_func_end sub_080024E4

	thumb_func_start sub_0800251C
sub_0800251C: @ 0x0800251C
	push {lr}
	ldrh r1, [r0, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800252E
	movs r0, #0
	b _08002530
_0800252E:
	movs r0, #1
_08002530:
	pop {r1}
	bx r1
	thumb_func_end sub_0800251C

	thumb_func_start sub_08002534
sub_08002534: @ 0x08002534
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _0800254C
	ldrh r1, [r2, #0x1c]
	ldr r0, _08002548 @ =0x0000FDFF
	ands r0, r1
	b _08002566
	.align 2, 0
_08002548: .4byte 0x0000FDFF
_0800254C:
	cmp r1, #1
	bne _0800255C
	ldrh r1, [r2, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	b _08002566
_0800255C:
	ldrh r0, [r2, #0x1c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	eors r0, r1
_08002566:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0
	thumb_func_end sub_08002534

	thumb_func_start sub_0800256C
sub_0800256C: @ 0x0800256C
	adds r0, #0x20
	strh r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800256C

	thumb_func_start sub_08002574
sub_08002574: @ 0x08002574
	adds r0, #0x20
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	bx lr
	thumb_func_end sub_08002574

	thumb_func_start sub_0800257C
sub_0800257C: @ 0x0800257C
	adds r0, #0x42
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800257C

	thumb_func_start sub_08002584
sub_08002584: @ 0x08002584
	adds r0, #0x42
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_08002584

	thumb_func_start sub_0800258C
sub_0800258C: @ 0x0800258C
	adds r0, #0x43
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800258C

	thumb_func_start sub_08002594
sub_08002594: @ 0x08002594
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _080025AC
	ldrh r1, [r2, #0x1c]
	ldr r0, _080025A8 @ =0x0000FFF7
	ands r0, r1
	b _080025BE
	.align 2, 0
_080025A8: .4byte 0x0000FFF7
_080025AC:
	cmp r1, #1
	bne _080025B8
	ldrh r1, [r2, #0x1c]
	movs r0, #8
	orrs r0, r1
	b _080025BE
_080025B8:
	ldrh r0, [r2, #0x1c]
	movs r1, #8
	eors r0, r1
_080025BE:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0
	thumb_func_end sub_08002594

	thumb_func_start sub_080025C4
sub_080025C4: @ 0x080025C4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _080025DC
	ldrh r1, [r2, #0x1c]
	ldr r0, _080025D8 @ =0x0000FFEF
	ands r0, r1
	b _080025EE
	.align 2, 0
_080025D8: .4byte 0x0000FFEF
_080025DC:
	cmp r1, #1
	bne _080025E8
	ldrh r1, [r2, #0x1c]
	movs r0, #0x10
	orrs r0, r1
	b _080025EE
_080025E8:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x10
	eors r0, r1
_080025EE:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0
	thumb_func_end sub_080025C4

	thumb_func_start sub_080025F4
sub_080025F4: @ 0x080025F4
	push {lr}
	ldrh r1, [r0, #0x3c]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08002604
	movs r0, #0
	b _08002606
_08002604:
	movs r0, #1
_08002606:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080025F4

	thumb_func_start sub_0800260C
sub_0800260C: @ 0x0800260C
	push {lr}
	ldrh r1, [r0, #0x3c]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800261C
	movs r0, #0
	b _0800261E
_0800261C:
	movs r0, #1
_0800261E:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800260C

	thumb_func_start sub_08002624
sub_08002624: @ 0x08002624
	push {lr}
	cmp r1, #3
	beq _0800262E
	cmp r1, #2
	bhi _08002634
_0800262E:
	adds r0, #0x44
	strb r1, [r0]
	b _08002644
_08002634:
	adds r2, r0, #0
	adds r2, #0x44
	ldrb r1, [r2]
	cmp r1, #1
	bhi _08002644
	movs r0, #1
	eors r0, r1
	strb r0, [r2]
_08002644:
	pop {r0}
	bx r0
	thumb_func_end sub_08002624

	thumb_func_start sub_08002648
sub_08002648: @ 0x08002648
	ldrh r1, [r0, #0x3c]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	thumb_func_end sub_08002648

	thumb_func_start sub_08002654
sub_08002654: @ 0x08002654
	ldrh r1, [r0, #0x3c]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	thumb_func_end sub_08002654

	thumb_func_start sub_08002660
sub_08002660: @ 0x08002660
	movs r1, #0x2c
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_08002660

	thumb_func_start sub_08002668
sub_08002668: @ 0x08002668
	strh r1, [r0, #0x2c]
	bx lr
	thumb_func_end sub_08002668

	thumb_func_start sub_0800266C
sub_0800266C: @ 0x0800266C
	ldr r0, [r0, #0x20]
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	thumb_func_end sub_0800266C

	thumb_func_start sub_08002674
sub_08002674: @ 0x08002674
	movs r1, #0x2a
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_08002674

	thumb_func_start sub_0800267C
sub_0800267C: @ 0x0800267C
	push {lr}
	adds r0, #0x20
	ldrh r3, [r0, #0x1c]
	ldr r2, _08002694 @ =0x0000FFF9
	ands r2, r3
	strh r2, [r0, #0x1c]
	strh r1, [r0, #0xa]
	bl sub_08001924
	pop {r0}
	bx r0
	.align 2, 0
_08002694: .4byte 0x0000FFF9
	thumb_func_end sub_0800267C

	thumb_func_start sub_08002698
sub_08002698: @ 0x08002698
	adds r0, #0x20
	movs r2, #8
	ldrsh r1, [r0, r2]
	ldr r0, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #8]
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_08002698

	thumb_func_start sub_080026B0
sub_080026B0: @ 0x080026B0
	strh r1, [r0, #0x30]
	bx lr
	thumb_func_end sub_080026B0

	thumb_func_start sub_080026B4
sub_080026B4: @ 0x080026B4
	movs r1, #0x30
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_080026B4

	thumb_func_start sub_080026BC
sub_080026BC: @ 0x080026BC
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	adds r2, #0x20
	ldrh r1, [r2, #0x1c]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x1c]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _080026E8
	movs r1, #8
	ldrsh r0, [r2, r1]
	ldr r1, [r2, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #8]
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r3, r0, #1
_080026E8:
	strh r3, [r2, #0x1e]
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080026BC

	thumb_func_start sub_080026F0
sub_080026F0: @ 0x080026F0
	adds r0, #0x20
	ldrh r2, [r0, #0x1c]
	ldr r1, _08002700 @ =0x0000FFFE
	ands r1, r2
	movs r2, #0
	strh r1, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	bx lr
	.align 2, 0
_08002700: .4byte 0x0000FFFE
	thumb_func_end sub_080026F0

	thumb_func_start sub_08002704
sub_08002704: @ 0x08002704
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _0800271C
	ldrh r1, [r2, #0x1c]
	ldr r0, _08002718 @ =0x0000FFDF
	ands r0, r1
	b _0800272E
	.align 2, 0
_08002718: .4byte 0x0000FFDF
_0800271C:
	cmp r1, #1
	bne _08002728
	ldrh r1, [r2, #0x1c]
	movs r0, #0x20
	orrs r0, r1
	b _0800272E
_08002728:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x20
	eors r0, r1
_0800272E:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0
	thumb_func_end sub_08002704

	thumb_func_start sub_08002734
sub_08002734: @ 0x08002734
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _0800274C
	ldrh r1, [r2, #0x1c]
	ldr r0, _08002748 @ =0x0000FFBF
	ands r0, r1
	b _0800275E
	.align 2, 0
_08002748: .4byte 0x0000FFBF
_0800274C:
	cmp r1, #1
	bne _08002758
	ldrh r1, [r2, #0x1c]
	movs r0, #0x40
	orrs r0, r1
	b _0800275E
_08002758:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x40
	eors r0, r1
_0800275E:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0
	thumb_func_end sub_08002734

	thumb_func_start sub_08002764
sub_08002764: @ 0x08002764
	push {lr}
	adds r2, r0, #0
	adds r2, #0x20
	cmp r1, #0
	bne _0800277C
	ldrh r1, [r2, #0x1c]
	ldr r0, _08002778 @ =0x0000FF7F
	ands r0, r1
	b _0800278E
	.align 2, 0
_08002778: .4byte 0x0000FF7F
_0800277C:
	cmp r1, #1
	bne _08002788
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	orrs r0, r1
	b _0800278E
_08002788:
	ldrh r0, [r2, #0x1c]
	movs r1, #0x80
	eors r0, r1
_0800278E:
	strh r0, [r2, #0x1c]
	pop {r0}
	bx r0
	thumb_func_end sub_08002764

	thumb_func_start sub_08002794
sub_08002794: @ 0x08002794
	push {lr}
	adds r1, r0, #0
	movs r2, #0x1a
	ldrsh r0, [r1, r2]
	cmp r0, #2
	bne _080027A4
	movs r0, #0
	strh r0, [r1, #0x1a]
_080027A4:
	pop {r0}
	bx r0
	thumb_func_end sub_08002794

	thumb_func_start sub_080027A8
sub_080027A8: @ 0x080027A8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0
	bne _080027C0
	bl sub_08002954
	adds r4, r0, #0
	cmp r4, #0
	bne _080027D2
	movs r0, #0
	b _080027DE
_080027C0:
	movs r1, #0x1a
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080027D2
	cmp r0, #2
	bne _080027DC
	adds r0, r4, #0
	bl sub_08002794
_080027D2:
	movs r0, #2
	strh r0, [r4, #0x1a]
	str r5, [r4, #0x48]
	movs r0, #1
	strh r0, [r4, #0x18]
_080027DC:
	adds r0, r4, #0
_080027DE:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_080027A8

	thumb_func_start sub_080027E4
sub_080027E4: @ 0x080027E4
	push {lr}
	ldr r1, _080027F4 @ =0x020345A0
	str r0, [r1]
	ldr r0, [r0, #0x48]
	bl sub_0804402C
	pop {r0}
	bx r0
	.align 2, 0
_080027F4: .4byte 0x020345A0
	thumb_func_end sub_080027E4

	thumb_func_start sub_080027F8
sub_080027F8: @ 0x080027F8
	ldr r0, _08002804 @ =0x03001D20
	movs r1, #0
	str r1, [r0]
	ldr r0, _08002808 @ =0x030009C0
	str r1, [r0]
	bx lr
	.align 2, 0
_08002804: .4byte 0x03001D20
_08002808: .4byte 0x030009C0
	thumb_func_end sub_080027F8

	thumb_func_start sub_0800280C
sub_0800280C: @ 0x0800280C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800280C

	thumb_func_start sub_08002810
sub_08002810: @ 0x08002810
	push {r4, lr}
	ldr r2, _08002828 @ =0x03001D20
	str r1, [r2]
	ldr r4, _0800282C @ =0x030009C0
	movs r2, #0x4c
	muls r1, r2, r1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002828: .4byte 0x03001D20
_0800282C: .4byte 0x030009C0
	thumb_func_end sub_08002810

	thumb_func_start sub_08002830
sub_08002830: @ 0x08002830
	push {r4, lr}
	ldr r4, _0800284C @ =0x030009C0
	ldr r0, [r4]
	cmp r0, #0
	beq _08002846
	bl sub_080038C8
	movs r1, #0
	str r1, [r4]
	ldr r0, _08002850 @ =0x03001D20
	str r1, [r0]
_08002846:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800284C: .4byte 0x030009C0
_08002850: .4byte 0x03001D20
	thumb_func_end sub_08002830

	thumb_func_start sub_08002854
sub_08002854: @ 0x08002854
	push {lr}
	movs r1, #0
	strh r1, [r0, #0x18]
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0, #0xc]
	strh r2, [r0, #0xe]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x1a]
	str r1, [r0, #0x1c]
	movs r2, #0
	adds r0, #0x14
_08002872:
	stm r0!, {r2}
	adds r1, #1
	cmp r1, #0
	beq _08002872
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08002854

	thumb_func_start sub_08002880
sub_08002880: @ 0x08002880
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _080028A8 @ =0x030009C0
	ldr r4, [r0]
	ldr r1, _080028AC @ =0x03001D20
	ldr r0, [r1]
	cmp r5, r0
	bge _080028A2
	adds r6, r1, #0
_08002892:
	adds r0, r4, #0
	bl sub_08002854
	adds r5, #1
	adds r4, #0x4c
	ldr r0, [r6]
	cmp r5, r0
	blt _08002892
_080028A2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080028A8: .4byte 0x030009C0
_080028AC: .4byte 0x03001D20
	thumb_func_end sub_08002880

	thumb_func_start sub_080028B0
sub_080028B0: @ 0x080028B0
	push {lr}
	movs r2, #0x1a
	ldrsh r1, [r0, r2]
	cmp r1, #1
	beq _080028C4
	cmp r1, #1
	ble _080028CE
	cmp r1, #2
	beq _080028CA
	b _080028CE
_080028C4:
	bl sub_080019C0
	b _080028CE
_080028CA:
	bl sub_08002794
_080028CE:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080028B0

	thumb_func_start sub_080028D4
sub_080028D4: @ 0x080028D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080028B0
	adds r0, r4, #0
	bl sub_08002854
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080028D4

	thumb_func_start sub_080028E8
sub_080028E8: @ 0x080028E8
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08002910 @ =0x030009C0
	ldr r4, [r0]
	ldr r1, _08002914 @ =0x03001D20
	ldr r0, [r1]
	cmp r5, r0
	bge _0800290A
	adds r6, r1, #0
_080028FA:
	adds r0, r4, #0
	bl sub_080028D4
	adds r5, #1
	adds r4, #0x4c
	ldr r0, [r6]
	cmp r5, r0
	blt _080028FA
_0800290A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002910: .4byte 0x030009C0
_08002914: .4byte 0x03001D20
	thumb_func_end sub_080028E8

	thumb_func_start sub_08002918
sub_08002918: @ 0x08002918
	push {r4, r5, lr}
	bl sub_08002B54
	cmp r0, #1
	bne _0800294A
	movs r5, #0
	ldr r0, _0800292C @ =0x030009C0
	ldr r4, [r0]
	b _08002942
	.align 2, 0
_0800292C: .4byte 0x030009C0
_08002930:
	movs r1, #0x18
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0800293E
	adds r0, r4, #0
	bl sub_08002B3C
_0800293E:
	adds r5, #1
	adds r4, #0x4c
_08002942:
	ldr r0, _08002950 @ =0x03001D20
	ldr r0, [r0]
	cmp r5, r0
	blt _08002930
_0800294A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002950: .4byte 0x03001D20
	thumb_func_end sub_08002918

	thumb_func_start sub_08002954
sub_08002954: @ 0x08002954
	push {r4, lr}
	movs r2, #0
	ldr r0, _08002974 @ =0x030009C0
	ldr r1, [r0]
	ldr r0, _08002978 @ =0x03001D20
	ldr r0, [r0]
	cmp r2, r0
	bge _08002984
	adds r3, r0, #0
_08002966:
	movs r4, #0x18
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0800297C
	adds r0, r1, #0
	b _08002986
	.align 2, 0
_08002974: .4byte 0x030009C0
_08002978: .4byte 0x03001D20
_0800297C:
	adds r2, #1
	adds r1, #0x4c
	cmp r2, r3
	blt _08002966
_08002984:
	movs r0, #0
_08002986:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08002954

	thumb_func_start sub_0800298C
sub_0800298C: @ 0x0800298C
	movs r1, #0x1a
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800298C

	thumb_func_start sub_08002994
sub_08002994: @ 0x08002994
	push {lr}
	ldr r1, _080029B4 @ =0x020345A4
	ldr r0, _080029B8 @ =0x02030010
	str r0, [r1]
	ldr r1, _080029BC @ =0x02030004
	movs r0, #0x80
	str r0, [r1]
	movs r0, #1
	bl sub_08002ACC
	movs r0, #1
	bl sub_08002B48
	pop {r0}
	bx r0
	.align 2, 0
_080029B4: .4byte 0x020345A4
_080029B8: .4byte 0x02030010
_080029BC: .4byte 0x02030004
	thumb_func_end sub_08002994

	thumb_func_start sub_080029C0
sub_080029C0: @ 0x080029C0
	ldr r0, _080029CC @ =0x020345A4
	movs r1, #0
	str r1, [r0]
	ldr r0, _080029D0 @ =0x02030004
	str r1, [r0]
	bx lr
	.align 2, 0
_080029CC: .4byte 0x020345A4
_080029D0: .4byte 0x02030004
	thumb_func_end sub_080029C0

	thumb_func_start sub_080029D4
sub_080029D4: @ 0x080029D4
	ldr r1, _080029DC @ =0x02030000
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_080029DC: .4byte 0x02030000
	thumb_func_end sub_080029D4

	thumb_func_start sub_080029E0
sub_080029E0: @ 0x080029E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r0, _08002A58 @ =0x020345A4
	ldr r1, [r0]
	mov sl, r0
	cmp r1, #0
	beq _08002A4A
	cmp r2, #0
	beq _08002A4A
	cmp r2, #1
	bne _08002A4A
	movs r7, #0
	ldr r1, _08002A5C @ =0x02030000
	ldr r0, [r1]
	mov sb, r1
	cmp r7, r0
	bhs _08002A4A
	mov r8, r1
_08002A0C:
	movs r5, #0
	mov r0, sl
	ldr r3, [r0]
	ldr r0, [r1]
	movs r6, #0
	cmp r0, #1
	beq _08002A3C
	mov ip, r8
_08002A1C:
	ldr r4, [r3]
	ldr r2, [r3, #4]
	ldr r1, [r4, #0x1c]
	ldr r0, [r2, #0x1c]
	cmp r1, r0
	bhs _08002A2E
	str r2, [r3]
	str r4, [r3, #4]
	movs r6, #1
_08002A2E:
	adds r5, #1
	adds r3, #4
	mov r1, ip
	ldr r0, [r1]
	subs r0, #1
	cmp r5, r0
	blo _08002A1C
_08002A3C:
	cmp r6, #0
	beq _08002A4A
	adds r7, #1
	mov r1, sb
	ldr r0, [r1]
	cmp r7, r0
	blo _08002A0C
_08002A4A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002A58: .4byte 0x020345A4
_08002A5C: .4byte 0x02030000
	thumb_func_end sub_080029E0

	thumb_func_start sub_08002A60
sub_08002A60: @ 0x08002A60
	push {r4, r5, lr}
	ldr r0, _08002A70 @ =0x020345A4
	ldr r0, [r0]
	cmp r0, #0
	beq _08002AC0
	movs r5, #0
	adds r4, r0, #0
	b _08002AB8
	.align 2, 0
_08002A70: .4byte 0x020345A4
_08002A74:
	ldr r1, [r4]
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _08002AB4
	adds r0, r1, #0
	bl sub_0800298C
	cmp r0, #1
	beq _08002A8E
	cmp r0, #2
	beq _08002AAE
	b _08002AB4
_08002A8E:
	ldr r2, [r4]
	ldrh r0, [r2, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08002AA6
	adds r0, r2, #0
	bl sub_08002240
	b _08002AB4
_08002AA6:
	adds r0, r2, #0
	bl sub_08001C4C
	b _08002AB4
_08002AAE:
	ldr r0, [r4]
	bl sub_080027E4
_08002AB4:
	adds r5, #1
	adds r4, #4
_08002AB8:
	ldr r0, _08002AC8 @ =0x02030000
	ldr r0, [r0]
	cmp r5, r0
	blo _08002A74
_08002AC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08002AC8: .4byte 0x02030000
	thumb_func_end sub_08002A60

	thumb_func_start sub_08002ACC
sub_08002ACC: @ 0x08002ACC
	ldr r1, _08002AD4 @ =0x02031E38
	str r0, [r1]
	bx lr
	.align 2, 0
_08002AD4: .4byte 0x02031E38
	thumb_func_end sub_08002ACC

	thumb_func_start sub_08002AD8
sub_08002AD8: @ 0x08002AD8
	ldr r0, _08002AE0 @ =0x02031E38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08002AE0: .4byte 0x02031E38
	thumb_func_end sub_08002AD8

	thumb_func_start sub_08002AE4
sub_08002AE4: @ 0x08002AE4
	bx lr
	.align 2, 0
	thumb_func_end sub_08002AE4

	thumb_func_start sub_08002AE8
sub_08002AE8: @ 0x08002AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800298C
	cmp r0, #1
	bne _08002B10
	ldrh r1, [r4, #0x3c]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08002B22
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	movs r1, #3
	subs r1, r1, r0
	lsls r1, r1, #0x18
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #0x1c]
_08002B10:
	ldr r3, _08002B28 @ =0x02030000
	ldr r1, [r3]
	ldr r0, _08002B2C @ =0x020345A4
	ldr r2, [r0]
	lsls r0, r1, #2
	adds r0, r0, r2
	str r4, [r0]
	adds r1, #1
	str r1, [r3]
_08002B22:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002B28: .4byte 0x02030000
_08002B2C: .4byte 0x020345A4
	thumb_func_end sub_08002AE8

	thumb_func_start sub_08002B30
sub_08002B30: @ 0x08002B30
	push {lr}
	bl sub_08002AE8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08002B30

	thumb_func_start sub_08002B3C
sub_08002B3C: @ 0x08002B3C
	push {lr}
	bl sub_08002AE8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08002B3C

	thumb_func_start sub_08002B48
sub_08002B48: @ 0x08002B48
	ldr r1, _08002B50 @ =0x02030008
	str r0, [r1]
	bx lr
	.align 2, 0
_08002B50: .4byte 0x02030008
	thumb_func_end sub_08002B48

	thumb_func_start sub_08002B54
sub_08002B54: @ 0x08002B54
	ldr r0, _08002B5C @ =0x02030008
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08002B5C: .4byte 0x02030008
	thumb_func_end sub_08002B54

	thumb_func_start sub_08002B60
sub_08002B60: @ 0x08002B60
	push {lr}
	ldr r0, _08002B84 @ =0x02031FF0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	ldr r2, _08002B88 @ =0x02030230
	str r1, [r2]
	str r1, [r2, #4]
	movs r3, #0
_08002B72:
	strh r3, [r0, #0x1c]
	strh r3, [r2, #0x1c]
	adds r2, #0x1c
	adds r0, #0x1c
	adds r1, #1
	cmp r1, #0xff
	bls _08002B72
	pop {r0}
	bx r0
	.align 2, 0
_08002B84: .4byte 0x02031FF0
_08002B88: .4byte 0x02030230
	thumb_func_end sub_08002B60

	thumb_func_start sub_08002B8C
sub_08002B8C: @ 0x08002B8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r1, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	ldr r4, [sp, #0x40]
	ldr r5, [sp, #0x4c]
	mov r8, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov ip, r4
	ldr r1, [sp, #0x44]
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	ldr r5, [sp, #0x48]
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	lsrs r0, r5, #0x10
	str r0, [sp, #8]
	mov r1, r8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	cmp r1, #0
	beq _08002BE2
	b _08002D30
_08002BE2:
	mov r5, sb
	cmp r5, #1
	beq _08002BEE
	cmp r5, #2
	beq _08002C3A
	b _08002CEA
_08002BEE:
	lsrs r3, r3, #0x11
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r5, r1, #1
	movs r4, #0
	cmp r8, sl
	bhs _08002CEA
	lsls r2, r3, #1
	mov r8, r2
	lsls r5, r5, #1
	mov ip, r5
	ldr r5, [sp, #4]
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	ldr r1, [sp, #8]
	lsls r0, r1, #0x10
	asrs r6, r0, #0x10
_08002C16:
	movs r1, #0
	adds r2, r4, #1
	cmp r1, r3
	bhs _08002C2A
	adds r0, r5, r6
_08002C20:
	strh r0, [r7]
	adds r7, #2
	adds r1, #1
	cmp r1, r3
	blo _08002C20
_08002C2A:
	mov r1, r8
	subs r0, r7, r1
	mov r1, ip
	adds r7, r0, r1
	adds r4, r2, #0
	cmp r4, sl
	blo _08002C16
	b _08002CEA
_08002C3A:
	ldr r5, [sp, #8]
	lsls r5, r5, #0x10
	str r5, [sp, #0x10]
	cmp r5, #0
	beq _08002CA8
	lsrs r3, r3, #0x11
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov sb, r1
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r5, r1, #1
	movs r4, #0
	cmp r8, sl
	bhs _08002CEA
	lsls r2, r3, #1
	mov r8, r2
	lsls r5, r5, #1
	mov ip, r5
	mov r5, sb
	lsls r5, r5, #1
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x10]
	mov sb, r0
_08002C76:
	movs r1, #0
	adds r2, r4, #1
	cmp r1, r3
	bhs _08002C92
	mov r0, sb
	asrs r5, r0, #0x10
_08002C82:
	ldrh r0, [r6]
	adds r0, r5, r0
	strh r0, [r7]
	adds r6, #2
	adds r7, #2
	adds r1, #1
	cmp r1, r3
	blo _08002C82
_08002C92:
	mov r1, r8
	subs r0, r6, r1
	ldr r5, [sp, #0x14]
	adds r6, r0, r5
	subs r0, r7, r1
	mov r1, ip
	adds r7, r0, r1
	adds r4, r2, #0
	cmp r4, sl
	blo _08002C76
	b _08002CEA
_08002CA8:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	mov sb, r1
	mov r2, ip
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r5, r1, #1
	movs r4, #0
	cmp r8, sl
	bhs _08002CEA
	ldr r3, [sp]
	lsrs r3, r3, #1
	mov r8, r3
_08002CCC:
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	ldr r3, _08002CF8 @ =0x001FFFFF
	ands r2, r3
	bl sub_08043C44
	mov r1, sb
	lsls r0, r1, #1
	adds r6, r6, r0
	lsls r0, r5, #1
	adds r7, r7, r0
	adds r4, #1
	cmp r4, sl
	blo _08002CCC
_08002CEA:
	ldr r2, [sp, #0x50]
	cmp r2, #0
	beq _08002D54
	adds r0, r2, #0
	bl sub_080038C8
	b _08002D54
	.align 2, 0
_08002CF8: .4byte 0x001FFFFF
_08002CFC:
	mov r3, sb
	strh r3, [r1, #0x14]
	str r6, [r1]
	str r7, [r1, #4]
	mov r5, sp
	ldrh r5, [r5]
	strh r5, [r1, #8]
	mov r0, sl
	strh r0, [r1, #0xa]
	strh r2, [r1, #0xc]
	mov r2, ip
	strh r2, [r1, #0xe]
	mov r3, sp
	ldrh r3, [r3, #4]
	strh r3, [r1, #0x10]
	mov r5, sp
	ldrh r5, [r5, #8]
	strh r5, [r1, #0x12]
	mov r0, r8
	strh r0, [r1, #0x16]
	ldr r2, [sp, #0x50]
	str r2, [r1, #0x18]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _08002D54
_08002D30:
	ldr r4, _08002D3C @ =0x02031FF0
	ldr r0, [r4]
	cmp r0, #0xff
	ble _08002D40
_08002D38:
	b _08002D38
	.align 2, 0
_08002D3C: .4byte 0x02031FF0
_08002D40:
	movs r3, #0
	adds r1, r4, #0
	adds r1, #8
_08002D46:
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _08002CFC
	adds r1, #0x1c
	adds r3, #1
	cmp r3, #0xff
	bls _08002D46
_08002D54:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002B8C

	thumb_func_start sub_08002D64
sub_08002D64: @ 0x08002D64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r1, #0
	ldr r1, [sp, #0x30]
	ldr r4, [sp, #0x34]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r3, #1
	bls _08002D90
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _08002D90
_08002D8E:
	b _08002D8E
_08002D90:
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r0, #1
	movs r1, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_08002B8C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002D64

	thumb_func_start sub_08002DBC
sub_08002DBC: @ 0x08002DBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r3, #1
	bls _08002DEC
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	bge _08002DEC
_08002DEA:
	b _08002DEA
_08002DEC:
	str r3, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	str r0, [sp, #0x18]
	movs r0, #2
	adds r1, r6, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_08002B8C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002DBC

	thumb_func_start sub_08002E18
sub_08002E18: @ 0x08002E18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	mov ip, r1
	ldr r1, [sp, #0x30]
	ldr r4, [sp, #0x34]
	ldr r5, [sp, #0x38]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	cmp r3, #1
	bls _08002E4A
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _08002E4A
_08002E48:
	b _08002E48
_08002E4A:
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x18]
	movs r0, #1
	movs r1, #0
	mov r2, ip
	adds r3, r6, #0
	bl sub_08002B8C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002E18

	thumb_func_start sub_08002E7C
sub_08002E7C: @ 0x08002E7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	mov ip, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	cmp r3, #1
	bls _08002EB2
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, r6
	bge _08002EB2
_08002EB0:
	b _08002EB0
_08002EB2:
	str r3, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x18]
	movs r0, #2
	adds r1, r7, #0
	mov r2, ip
	adds r3, r6, #0
	bl sub_08002B8C
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002E7C

	thumb_func_start sub_08002EE4
sub_08002EE4: @ 0x08002EE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08002F18 @ =0x02031FF0
	mov sl, r0
	ldr r3, _08002F1C @ =0x02030230
	movs r0, #0
	str r0, [r3, #4]
	mov r6, sl
	adds r6, #8
	adds r5, r3, #0
	adds r5, #8
	movs r7, #0
	movs r1, #0
_08002F06:
	ldrh r0, [r6, #0x14]
	adds r1, #1
	mov r8, r1
	movs r1, #0x1c
	adds r1, r1, r6
	mov sb, r1
	cmp r0, #0
	beq _08002F4E
	b _08002F24
	.align 2, 0
_08002F18: .4byte 0x02031FF0
_08002F1C: .4byte 0x02030230
_08002F20:
	adds r7, #1
	adds r5, #0x1c
_08002F24:
	cmp r7, #0xff
	bhi _08002F4E
	ldrh r4, [r5, #0x14]
	cmp r4, #0
	bne _08002F20
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, _08002F68 @ =0x04000007
	str r3, [sp]
	bl sub_08043C44
	ldr r3, [sp]
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
	adds r5, #0x1c
	strh r4, [r6, #0x14]
	mov r1, sl
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
_08002F4E:
	mov r1, r8
	mov r6, sb
	cmp r1, #0xff
	bls _08002F06
	ldr r1, [r3, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08002F6C
	movs r0, #1
	str r0, [r3, #4]
	b _08002F74
	.align 2, 0
_08002F68: .4byte 0x04000007
_08002F6C:
	movs r0, #1
	str r0, [r3, #4]
	bl sub_08002F84
_08002F74:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002EE4

	thumb_func_start sub_08002F84
sub_08002F84: @ 0x08002F84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r1, _08002FDC @ =0x02030230
	ldr r0, [r1]
	cmp r0, #0
	bne _08002F9A
	b _0800310A
_08002F9A:
	ldr r0, [r1, #4]
	cmp r0, #1
	beq _08002FA2
	b _0800310A
_08002FA2:
	movs r0, #0
	str r0, [r1, #4]
	movs r1, #0
_08002FA8:
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, #8
	ldr r2, _08002FDC @ =0x02030230
	adds r4, r2, r0
	ldrh r0, [r4, #0x14]
	adds r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _08002FC0
	b _08003102
_08002FC0:
	ldrh r0, [r4, #0x16]
	subs r0, #1
	strh r0, [r4, #0x16]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08002FCE
	b _08003102
_08002FCE:
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	beq _08002FE0
	cmp r0, #2
	beq _0800302E
	b _080030EC
	.align 2, 0
_08002FDC: .4byte 0x02030230
_08002FE0:
	ldr r6, [r4, #4]
	ldrh r0, [r4, #8]
	lsrs r2, r0, #1
	movs r3, #0xe
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	movs r5, #0
	ldrh r0, [r4, #0xa]
	cmp r5, r0
	bhs _080030EC
	lsls r1, r2, #1
	mov ip, r1
	ldr r3, [sp, #8]
	lsls r3, r3, #1
	mov r8, r3
_08003004:
	movs r1, #0
	adds r3, r5, #1
	cmp r1, r2
	bhs _0800301C
_0800300C:
	ldrh r0, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	adds r0, r0, r5
	strh r0, [r6]
	adds r6, #2
	adds r1, #1
	cmp r1, r2
	blo _0800300C
_0800301C:
	mov r1, ip
	subs r0, r6, r1
	mov r5, r8
	adds r6, r0, r5
	adds r5, r3, #0
	ldrh r0, [r4, #0xa]
	cmp r5, r0
	blo _08003004
	b _080030EC
_0800302E:
	ldr r7, [r4]
	ldr r6, [r4, #4]
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _080030A0
	ldrh r0, [r4, #8]
	lsrs r2, r0, #1
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	movs r5, #0
	ldrh r0, [r4, #0xa]
	cmp r5, r0
	bhs _080030EC
	lsls r1, r2, #1
	mov ip, r1
	ldr r3, [sp, #8]
	lsls r3, r3, #1
	mov r8, r3
	mov r0, sb
	lsls r0, r0, #1
	mov sb, r0
_0800306E:
	movs r1, #0
	adds r3, r5, #1
	cmp r1, r2
	bhs _08003088
_08003076:
	ldrh r0, [r4, #0x12]
	ldrh r5, [r7]
	adds r0, r0, r5
	strh r0, [r6]
	adds r7, #2
	adds r6, #2
	adds r1, #1
	cmp r1, r2
	blo _08003076
_08003088:
	mov r1, ip
	subs r0, r7, r1
	mov r5, sb
	adds r7, r0, r5
	subs r0, r6, r1
	mov r1, r8
	adds r6, r0, r1
	adds r5, r3, #0
	ldrh r3, [r4, #0xa]
	cmp r5, r3
	blo _0800306E
	b _080030EC
_080030A0:
	ldrh r2, [r4, #8]
	movs r5, #0xc
	ldrsh r0, [r4, r5]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	mov sb, r0
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	str r0, [sp, #8]
	movs r5, #0
	ldrh r3, [r4, #0xa]
	cmp r5, r3
	bhs _080030EC
	lsrs r2, r2, #1
	mov r8, r2
	ldr r0, _0800311C @ =0x001FFFFF
	mov sl, r0
_080030CA:
	adds r0, r7, #0
	adds r1, r6, #0
	mov r2, r8
	mov r3, sl
	ands r2, r3
	bl sub_08043C44
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	ldr r2, [sp, #8]
	lsls r0, r2, #1
	adds r6, r6, r0
	adds r5, #1
	ldrh r3, [r4, #0xa]
	cmp r5, r3
	blo _080030CA
_080030EC:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _080030F6
	bl sub_080038C8
_080030F6:
	movs r0, #0
	strh r0, [r4, #0x14]
	ldr r5, _08003120 @ =0x02030230
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
_08003102:
	ldr r1, [sp]
	cmp r1, #0xff
	bhi _0800310A
	b _08002FA8
_0800310A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800311C: .4byte 0x001FFFFF
_08003120: .4byte 0x02030230
	thumb_func_end sub_08002F84

	thumb_func_start sub_08003124
sub_08003124: @ 0x08003124
	push {lr}
	bl sub_08002EE4
	bl sub_08002F84
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003124

	thumb_func_start sub_08003134
sub_08003134: @ 0x08003134
	ldr r1, _08003140 @ =0x02031F90
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_08003140: .4byte 0x02031F90
	thumb_func_end sub_08003134

	thumb_func_start sub_08003144
sub_08003144: @ 0x08003144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _0800319C @ =0x02031F90
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bgt _08003194
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	str r4, [r0]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r0, r0, r1
	str r5, [r0]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	str r2, [r0]
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
_08003194:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800319C: .4byte 0x02031F90
	thumb_func_end sub_08003144

	thumb_func_start sub_080031A0
sub_080031A0: @ 0x080031A0
	push {r4, r5, r6, lr}
	ldr r0, _08003204 @ =0x02031F90
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r5, r0, #0
	cmp r1, #0
	beq _080031FE
	movs r2, #2
	ldrsh r0, [r5, r2]
	cmp r1, r0
	bne _080031FE
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _080031F8
	ldr r4, _08003208 @ =0x040000D4
	mov ip, r5
	movs r2, #0
	adds r6, r5, #4
	adds r3, r0, #0
_080031C8:
	adds r0, r2, r6
	ldr r0, [r0]
	str r0, [r4]
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [r4, #4]
	mov r0, ip
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r2, #0xc
	subs r3, #1
	cmp r3, #0
	bne _080031C8
_080031F8:
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
_080031FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003204: .4byte 0x02031F90
_08003208: .4byte 0x040000D4
	thumb_func_end sub_080031A0

	thumb_func_start sub_0800320C
sub_0800320C: @ 0x0800320C
	ldr r1, _08003214 @ =0x04000208
	strh r0, [r1]
	bx lr
	.align 2, 0
_08003214: .4byte 0x04000208
	thumb_func_end sub_0800320C

	thumb_func_start sub_08003218
sub_08003218: @ 0x08003218
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08003224 @ =0x04000200
	strh r0, [r1]
	bx lr
	.align 2, 0
_08003224: .4byte 0x04000200
	thumb_func_end sub_08003218

	thumb_func_start sub_08003228
sub_08003228: @ 0x08003228
	ldr r0, _08003230 @ =0x04000200
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08003230: .4byte 0x04000200
	thumb_func_end sub_08003228

	thumb_func_start sub_08003234
sub_08003234: @ 0x08003234
	ldr r0, _0800323C @ =0x04000202
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0800323C: .4byte 0x04000202
	thumb_func_end sub_08003234

	thumb_func_start sub_08003240
sub_08003240: @ 0x08003240
	push {lr}
	cmp r0, #1
	beq _08003264
	cmp r0, #1
	bgt _08003250
	cmp r0, #0
	beq _0800325A
	b _08003278
_08003250:
	cmp r0, #2
	beq _0800326C
	cmp r0, #3
	beq _08003274
	b _08003278
_0800325A:
	ldr r0, _08003260 @ =0x04000100
	b _08003276
	.align 2, 0
_08003260: .4byte 0x04000100
_08003264:
	ldr r0, _08003268 @ =0x04000104
	b _08003276
	.align 2, 0
_08003268: .4byte 0x04000104
_0800326C:
	ldr r0, _08003270 @ =0x04000108
	b _08003276
	.align 2, 0
_08003270: .4byte 0x04000108
_08003274:
	ldr r0, _0800327C @ =0x0400010C
_08003276:
	str r1, [r0]
_08003278:
	pop {r0}
	bx r0
	.align 2, 0
_0800327C: .4byte 0x0400010C
	thumb_func_end sub_08003240

	thumb_func_start sub_08003280
sub_08003280: @ 0x08003280
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08003298
	cmp r1, #1
	beq _080032AC
	ldr r0, _08003294 @ =0x030009D0
	str r1, [r0]
	b _080032B2
	.align 2, 0
_08003294: .4byte 0x030009D0
_08003298:
	ldr r0, _080032A4 @ =0x030009D0
	ldr r1, _080032A8 @ =0x08204B38
	ldr r1, [r1]
	str r1, [r0]
	b _080032B2
	.align 2, 0
_080032A4: .4byte 0x030009D0
_080032A8: .4byte 0x08204B38
_080032AC:
	ldr r1, _080032B8 @ =0x030009D0
	ldr r0, _080032BC @ =sub_080097EC
	str r0, [r1]
_080032B2:
	pop {r0}
	bx r0
	.align 2, 0
_080032B8: .4byte 0x030009D0
_080032BC: .4byte sub_080097EC
	thumb_func_end sub_08003280

	thumb_func_start sub_080032C0
sub_080032C0: @ 0x080032C0
	ldr r1, _080032C8 @ =0x03000960
	str r0, [r1]
	bx lr
	.align 2, 0
_080032C8: .4byte 0x03000960
	thumb_func_end sub_080032C0

	thumb_func_start sub_080032CC
sub_080032CC: @ 0x080032CC
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080032DC
	ldr r0, _080032D8 @ =0x030009D0
	b _080032E2
	.align 2, 0
_080032D8: .4byte 0x030009D0
_080032DC:
	ldr r0, _080032E8 @ =0x030009D0
	ldr r1, _080032EC @ =0x08204B38
	ldr r1, [r1, #0xc]
_080032E2:
	str r1, [r0, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_080032E8: .4byte 0x030009D0
_080032EC: .4byte 0x08204B38
	thumb_func_end sub_080032CC

	thumb_func_start sub_080032F0
sub_080032F0: @ 0x080032F0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08003300
	ldr r0, _080032FC @ =0x030009D0
	b _08003306
	.align 2, 0
_080032FC: .4byte 0x030009D0
_08003300:
	ldr r0, _0800330C @ =0x030009D0
	ldr r1, _08003310 @ =0x08204B38
	ldr r1, [r1, #8]
_08003306:
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0800330C: .4byte 0x030009D0
_08003310: .4byte 0x08204B38
	thumb_func_end sub_080032F0

	thumb_func_start sub_08003314
sub_08003314: @ 0x08003314
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08003324
	ldr r0, _08003320 @ =0x030009D0
	b _0800332A
	.align 2, 0
_08003320: .4byte 0x030009D0
_08003324:
	ldr r0, _08003330 @ =0x030009D0
	ldr r1, _08003334 @ =0x08204B38
	ldr r1, [r1, #0x24]
_0800332A:
	str r1, [r0, #0x24]
	pop {r0}
	bx r0
	.align 2, 0
_08003330: .4byte 0x030009D0
_08003334: .4byte 0x08204B38
	thumb_func_end sub_08003314

	thumb_func_start sub_08003338
sub_08003338: @ 0x08003338
	ldr r1, _08003340 @ =0x03001034
	str r0, [r1]
	bx lr
	.align 2, 0
_08003340: .4byte 0x03001034
	thumb_func_end sub_08003338

	thumb_func_start sub_08003344
sub_08003344: @ 0x08003344
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, _08003398 @ =0x03000A10
	adds r2, r0, r1
	movs r0, #0
	ldrsh r3, [r2, r0]
	mov ip, r1
	cmp r3, #0
	bne _08003440
	movs r0, #1
	strh r0, [r2]
	strh r7, [r2, #6]
	str r4, [r2, #8]
	str r0, [r2, #0x10]
	str r3, [r2, #0x14]
	str r3, [r2, #0xc]
	movs r4, #0
	ldr r0, _0800339C @ =0x03000970
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r6, #1
	rsbs r6, r6, #0
	mov sb, r0
	cmp r1, r6
	bne _080033A8
	ldr r0, _080033A0 @ =0x0000FFFF
	strh r0, [r2, #2]
	adds r0, r6, #0
	strh r0, [r2, #4]
	mov r0, sb
	strh r5, [r0]
	ldr r0, _080033A4 @ =0x03001D38
	b _0800343E
	.align 2, 0
_08003398: .4byte 0x03000A10
_0800339C: .4byte 0x03000970
_080033A0: .4byte 0x0000FFFF
_080033A4: .4byte 0x03001D38
_080033A8:
	ldr r0, _080033C0 @ =0x03001D38
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r8, r0
	cmp r3, r6
	beq _0800341C
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	mov r1, ip
	b _080033D2
	.align 2, 0
_080033C0: .4byte 0x03001D38
_080033C4:
	movs r0, #4
	ldrsh r3, [r4, r0]
	cmp r3, r6
	beq _0800341C
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
_080033D2:
	adds r4, r0, r1
	ldrh r0, [r4, #6]
	cmp r7, r0
	blo _080033C4
	movs r1, #1
	rsbs r1, r1, #0
	cmp r3, r1
	beq _0800341C
	ldrh r0, [r4, #2]
	strh r0, [r2, #2]
	strh r3, [r2, #4]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, r1
	beq _080033FE
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, ip
	strh r5, [r0, #4]
	b _08003402
_080033FE:
	mov r1, r8
	strh r5, [r1]
_08003402:
	strh r5, [r4, #2]
	ldr r0, _08003414 @ =0x03001010
	ldr r0, [r0]
	cmp r0, r3
	bne _08003440
	ldr r0, _08003418 @ =0x0300103C
	str r5, [r0]
	b _08003440
	.align 2, 0
_08003414: .4byte 0x03001010
_08003418: .4byte 0x0300103C
_0800341C:
	ldr r0, _0800344C @ =0x0000FFFF
	strh r0, [r2, #4]
	mov r3, ip
	subs r1, r4, r3
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #3
	strh r0, [r2, #2]
	strh r5, [r4, #4]
	mov r0, sb
_0800343E:
	strh r5, [r0]
_08003440:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800344C: .4byte 0x0000FFFF
	thumb_func_end sub_08003344

	thumb_func_start sub_08003450
sub_08003450: @ 0x08003450
	push {r4, lr}
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, _080034C4 @ =0x03000A10
	adds r2, r0, r4
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080034BE
	movs r0, #0
	strh r0, [r2]
	ldr r3, _080034C8 @ =0x0300103C
	ldr r0, [r3]
	cmp r1, r0
	bne _08003478
	movs r1, #2
	ldrsh r0, [r2, r1]
	str r0, [r3]
_08003478:
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _0800348C
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
_0800348C:
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _080034AA
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r2, #4]
	strh r1, [r0, #4]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080034B0
_080034AA:
	ldr r1, _080034CC @ =0x03001D38
	ldrh r0, [r2, #4]
	strh r0, [r1]
_080034B0:
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _080034BE
	ldr r1, _080034D0 @ =0x03000970
	ldrh r0, [r2, #2]
	strh r0, [r1]
_080034BE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080034C4: .4byte 0x03000A10
_080034C8: .4byte 0x0300103C
_080034CC: .4byte 0x03001D38
_080034D0: .4byte 0x03000970
	thumb_func_end sub_08003450

	thumb_func_start sub_080034D4
sub_080034D4: @ 0x080034D4
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080034EC @ =0x03000A10
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq _080034F0
	movs r0, #1
	b _080034F2
	.align 2, 0
_080034EC: .4byte 0x03000A10
_080034F0:
	movs r0, #0
_080034F2:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080034D4

	thumb_func_start sub_080034F8
sub_080034F8: @ 0x080034F8
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08003514 @ =0x03000A10
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08003510
	strh r2, [r1]
_08003510:
	pop {r0}
	bx r0
	.align 2, 0
_08003514: .4byte 0x03000A10
	thumb_func_end sub_080034F8

	thumb_func_start sub_08003518
sub_08003518: @ 0x08003518
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08003528 @ =0x03000A10
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	bx lr
	.align 2, 0
_08003528: .4byte 0x03000A10
	thumb_func_end sub_08003518

	thumb_func_start sub_0800352C
sub_0800352C: @ 0x0800352C
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08003548 @ =0x03000A10
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	bne _08003544
	movs r0, #1
	strh r0, [r1]
_08003544:
	pop {r0}
	bx r0
	.align 2, 0
_08003548: .4byte 0x03000A10
	thumb_func_end sub_0800352C

	thumb_func_start sub_0800354C
sub_0800354C: @ 0x0800354C
	push {lr}
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08003568 @ =0x03000A10
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #1
	bne _08003564
	movs r0, #2
	strh r0, [r1]
_08003564:
	pop {r0}
	bx r0
	.align 2, 0
_08003568: .4byte 0x03000A10
	thumb_func_end sub_0800354C

	thumb_func_start sub_0800356C
sub_0800356C: @ 0x0800356C
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _08003580 @ =0x03000A10
	adds r2, r2, r0
	str r1, [r2, #8]
	movs r0, #0
	str r0, [r2, #0xc]
	bx lr
	.align 2, 0
_08003580: .4byte 0x03000A10
	thumb_func_end sub_0800356C

	thumb_func_start sub_08003584
sub_08003584: @ 0x08003584
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _08003594 @ =0x03000A10
	adds r2, r2, r0
	str r1, [r2, #0x10]
	bx lr
	.align 2, 0
_08003594: .4byte 0x03000A10
	thumb_func_end sub_08003584

	thumb_func_start sub_08003598
sub_08003598: @ 0x08003598
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080035A8 @ =0x03000A10
	adds r1, r1, r0
	ldr r0, [r1, #0x10]
	bx lr
	.align 2, 0
_080035A8: .4byte 0x03000A10
	thumb_func_end sub_08003598

	thumb_func_start sub_080035AC
sub_080035AC: @ 0x080035AC
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _080035BC @ =0x03000A10
	adds r2, r2, r0
	str r1, [r2, #0x14]
	bx lr
	.align 2, 0
_080035BC: .4byte 0x03000A10
	thumb_func_end sub_080035AC

	thumb_func_start sub_080035C0
sub_080035C0: @ 0x080035C0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080035D0 @ =0x03000A10
	adds r1, r1, r0
	ldr r0, [r1, #0x14]
	bx lr
	.align 2, 0
_080035D0: .4byte 0x03000A10
	thumb_func_end sub_080035C0

	thumb_func_start sub_080035D4
sub_080035D4: @ 0x080035D4
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #3
	ldr r0, _080035E4 @ =0x03000A10
	adds r2, r2, r0
	str r1, [r2, #0xc]
	bx lr
	.align 2, 0
_080035E4: .4byte 0x03000A10
	thumb_func_end sub_080035D4

	thumb_func_start sub_080035E8
sub_080035E8: @ 0x080035E8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080035F8 @ =0x03000A10
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	bx lr
	.align 2, 0
_080035F8: .4byte 0x03000A10
	thumb_func_end sub_080035E8

	thumb_func_start sub_080035FC
sub_080035FC: @ 0x080035FC
	ldr r0, _08003604 @ =0x03001010
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08003604: .4byte 0x03001010
	thumb_func_end sub_080035FC

	thumb_func_start sub_08003608
sub_08003608: @ 0x08003608
	push {r4, lr}
	adds r3, r1, #0
	adds r2, r0, #0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08003628 @ =0x03000A10
	adds r1, r0, r1
	cmp r2, r3
	bhs _08003634
_0800361C:
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bne _0800362C
	adds r0, r2, #0
	b _08003638
	.align 2, 0
_08003628: .4byte 0x03000A10
_0800362C:
	adds r2, #1
	adds r1, #0x18
	cmp r2, r3
	blo _0800361C
_08003634:
	movs r0, #1
	rsbs r0, r0, #0
_08003638:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08003608

	thumb_func_start sub_08003640
sub_08003640: @ 0x08003640
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003640

	thumb_func_start sub_08003650
sub_08003650: @ 0x08003650
	push {lr}
	movs r0, #0
	movs r1, #0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003650

	thumb_func_start sub_08003660
sub_08003660: @ 0x08003660
	ldr r1, _08003668 @ =0x03001D40
	str r0, [r1]
	bx lr
	.align 2, 0
_08003668: .4byte 0x03001D40
	thumb_func_end sub_08003660

	thumb_func_start sub_0800366C
sub_0800366C: @ 0x0800366C
	ldr r0, _08003674 @ =0x03001D40
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08003674: .4byte 0x03001D40
	thumb_func_end sub_0800366C

	thumb_func_start sub_08003678
sub_08003678: @ 0x08003678
	push {r4, lr}
	ldr r0, _080036C8 @ =0x03000970
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _080036CC @ =0x03001D38
	strh r1, [r0]
	ldr r0, _080036D0 @ =0x03001010
	adds r1, r2, #0
	str r1, [r0]
	ldr r0, _080036D4 @ =0x0300103C
	str r1, [r0]
	ldr r1, _080036D8 @ =0x03001D40
	movs r0, #0
	str r0, [r1]
	movs r3, #0
	movs r2, #0
	ldr r0, _080036DC @ =0x0000FFFF
	adds r4, r0, #0
	ldr r1, _080036E0 @ =0x03000A10
_080036A2:
	strh r2, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r4
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	orrs r0, r4
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	adds r1, #0x18
	adds r3, #1
	cmp r3, #0x3f
	bls _080036A2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080036C8: .4byte 0x03000970
_080036CC: .4byte 0x03001D38
_080036D0: .4byte 0x03001010
_080036D4: .4byte 0x0300103C
_080036D8: .4byte 0x03001D40
_080036DC: .4byte 0x0000FFFF
_080036E0: .4byte 0x03000A10
	thumb_func_end sub_08003678

	thumb_func_start sub_080036E4
sub_080036E4: @ 0x080036E4
	bx lr
	.align 2, 0
	thumb_func_end sub_080036E4

	thumb_func_start sub_080036E8
sub_080036E8: @ 0x080036E8
	push {r4, r5, lr}
	ldr r0, _08003748 @ =0x03000970
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08003742
	ldr r4, _0800374C @ =0x0300103C
	adds r5, r1, #0
_080036FE:
	asrs r2, r2, #0x10
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08003750 @ =0x03000A10
	adds r1, r0, r1
	ldr r0, _08003754 @ =0x03001010
	str r2, [r0]
	movs r2, #2
	ldrsh r0, [r1, r2]
	str r0, [r4]
	movs r0, #0
	ldrsh r2, [r1, r0]
	cmp r2, #0
	beq _08003738
	ldr r0, _08003758 @ =0x03001D40
	ldr r0, [r0]
	cmp r0, #0
	beq _0800372A
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _08003738
_0800372A:
	cmp r2, #1
	bne _08003738
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _08003738
	bl sub_0804402C
_08003738:
	ldrh r0, [r4]
	lsls r2, r0, #0x10
	asrs r0, r2, #0x10
	cmp r0, r5
	bne _080036FE
_08003742:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003748: .4byte 0x03000970
_0800374C: .4byte 0x0300103C
_08003750: .4byte 0x03000A10
_08003754: .4byte 0x03001010
_08003758: .4byte 0x03001D40
	thumb_func_end sub_080036E8

	thumb_func_start sub_0800375C
sub_0800375C: @ 0x0800375C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080037F8 @ =0x04000130
	ldrh r1, [r0]
	mvns r1, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, _080037FC @ =0x030009B8
	strh r1, [r5]
	ldr r4, _08003800 @ =0x03001D30
	ldr r2, _08003804 @ =0x03001490
	ldrh r3, [r2]
	adds r0, r1, #0
	bics r0, r3
	strh r0, [r4]
	strh r1, [r2]
	movs r3, #1
	mov ip, r2
	ldr r0, _08003808 @ =0x03001028
	mov sb, r0
	ldr r1, _0800380C @ =0x03001038
	mov r8, r1
	ldr r0, _08003810 @ =0x030014A4
	mov sl, r0
	movs r0, #0
	mov r1, ip
	adds r1, #2
	adds r4, #2
	adds r5, #2
_0800379C:
	strh r0, [r5]
	strh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	adds r4, #2
	adds r5, #2
	adds r3, #1
	cmp r3, #3
	bls _0800379C
	movs r3, #0
	ldr r7, _080037FC @ =0x030009B8
	ldr r6, _08003808 @ =0x03001028
	ldr r2, _08003814 @ =0x03001D28
	ldr r5, _08003800 @ =0x03001D30
	ldr r4, _08003818 @ =0x03001020
_080037BA:
	lsls r1, r3, #1
	ldrh r0, [r7]
	strh r0, [r6]
	ldrh r0, [r5]
	strh r0, [r4]
	add r1, ip
	ldrh r0, [r1]
	strh r0, [r2]
	adds r7, #2
	adds r6, #2
	adds r2, #2
	adds r5, #2
	adds r4, #2
	adds r3, #1
	cmp r3, #3
	bls _080037BA
	mov r1, sb
	ldrh r0, [r1]
	mov r1, r8
	strh r0, [r1]
	ldr r1, _08003818 @ =0x03001020
	ldrh r0, [r1]
	mov r1, sl
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080037F8: .4byte 0x04000130
_080037FC: .4byte 0x030009B8
_08003800: .4byte 0x03001D30
_08003804: .4byte 0x03001490
_08003808: .4byte 0x03001028
_0800380C: .4byte 0x03001038
_08003810: .4byte 0x030014A4
_08003814: .4byte 0x03001D28
_08003818: .4byte 0x03001020
	thumb_func_end sub_0800375C

	thumb_func_start sub_0800381C
sub_0800381C: @ 0x0800381C
	push {lr}
	ldr r0, _0800383C @ =0x03000964
	ldr r0, [r0]
	ldr r1, _08003840 @ =0x030009C4
	ldr r1, [r1]
	bl sub_08007418
	ldr r0, _08003844 @ =0x03001D3C
	ldr r0, [r0]
	ldr r1, _08003848 @ =0x03001914
	ldr r1, [r1]
	bl sub_08007610
	pop {r0}
	bx r0
	.align 2, 0
_0800383C: .4byte 0x03000964
_08003840: .4byte 0x030009C4
_08003844: .4byte 0x03001D3C
_08003848: .4byte 0x03001914
	thumb_func_end sub_0800381C

	thumb_func_start sub_0800384C
sub_0800384C: @ 0x0800384C
	ldr r1, _0800386C @ =0x03000964
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1]
	ldr r1, _08003870 @ =0x030009C4
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r1]
	ldr r1, _08003874 @ =0x03001D3C
	ldr r0, _08003878 @ =0x03007000
	str r0, [r1]
	ldr r1, _0800387C @ =0x03001914
	movs r0, #0x80
	lsls r0, r0, #4
	str r0, [r1]
	bx lr
	.align 2, 0
_0800386C: .4byte 0x03000964
_08003870: .4byte 0x030009C4
_08003874: .4byte 0x03001D3C
_08003878: .4byte 0x03007000
_0800387C: .4byte 0x03001914
	thumb_func_end sub_0800384C

	thumb_func_start sub_08003880
sub_08003880: @ 0x08003880
	push {r4, lr}
	ldr r4, _08003898 @ =0x03000964
	str r0, [r4]
	ldr r0, _0800389C @ =0x030009C4
	str r1, [r0]
	ldr r0, _080038A0 @ =0x03001D3C
	str r2, [r0]
	ldr r0, _080038A4 @ =0x03001914
	str r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003898: .4byte 0x03000964
_0800389C: .4byte 0x030009C4
_080038A0: .4byte 0x03001D3C
_080038A4: .4byte 0x03001914
	thumb_func_end sub_08003880

	thumb_func_start sub_080038A8
sub_080038A8: @ 0x080038A8
	push {lr}
	cmp r0, #1
	bne _080038B6
	adds r0, r1, #0
	bl sub_080074F4
	b _080038C4
_080038B6:
	cmp r0, #2
	beq _080038BE
	movs r0, #0
	b _080038C4
_080038BE:
	adds r0, r1, #0
	bl sub_080076EC
_080038C4:
	pop {r1}
	bx r1
	thumb_func_end sub_080038A8

	thumb_func_start sub_080038C8
sub_080038C8: @ 0x080038C8
	push {lr}
	adds r1, r0, #0
	ldr r0, _080038DC @ =0x02FFFFFF
	cmp r1, r0
	bhi _080038E0
	adds r0, r1, #0
	bl sub_08007590
	b _080038E6
	.align 2, 0
_080038DC: .4byte 0x02FFFFFF
_080038E0:
	adds r0, r1, #0
	bl sub_08007788
_080038E6:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080038C8

	thumb_func_start sub_080038EC
sub_080038EC: @ 0x080038EC
	push {lr}
	movs r1, #0
	ldr r3, _08003904 @ =0x03000980
	movs r2, #0
_080038F4:
	adds r0, r1, r3
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x31
	bls _080038F4
	pop {r0}
	bx r0
	.align 2, 0
_08003904: .4byte 0x03000980
	thumb_func_end sub_080038EC

	thumb_func_start sub_08003908
sub_08003908: @ 0x08003908
	ldr r2, _08003914 @ =0x03001030
	str r0, [r2]
	ldr r2, _08003918 @ =0x03000980
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08003914: .4byte 0x03001030
_08003918: .4byte 0x03000980
	thumb_func_end sub_08003908

	thumb_func_start sub_0800391C
sub_0800391C: @ 0x0800391C
	ldr r0, _08003924 @ =0x03001030
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08003924: .4byte 0x03001030
	thumb_func_end sub_0800391C

	thumb_func_start sub_08003928
sub_08003928: @ 0x08003928
	ldr r1, _08003934 @ =0x03000980
	ldr r0, _08003938 @ =0x03001030
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08003934: .4byte 0x03000980
_08003938: .4byte 0x03001030
	thumb_func_end sub_08003928

	thumb_func_start sub_0800393C
sub_0800393C: @ 0x0800393C
	push {lr}
	bl sub_0800384C
	bl sub_0800381C
	bl sub_080027F8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800393C

	thumb_func_start sub_08003950
sub_08003950: @ 0x08003950
	push {lr}
	movs r0, #1
	bl sub_080035C0
	cmp r0, #0
	beq _08003962
	movs r0, #1
	bl sub_0800352C
_08003962:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003950

	thumb_func_start sub_08003968
sub_08003968: @ 0x08003968
	push {lr}
	movs r0, #1
	bl sub_080035C0
	cmp r0, #0
	beq _0800397A
	movs r0, #1
	bl sub_0800354C
_0800397A:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003968

	thumb_func_start sub_08003980
sub_08003980: @ 0x08003980
	ldr r1, _08003988 @ =0x020345A8
	str r0, [r1]
	bx lr
	.align 2, 0
_08003988: .4byte 0x020345A8
	thumb_func_end sub_08003980

	thumb_func_start sub_0800398C
sub_0800398C: @ 0x0800398C
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _080039A4
	movs r0, #1
	bl sub_0800356C
	movs r0, #1
	movs r1, #1
	bl sub_080035AC
	b _080039B4
_080039A4:
	ldr r1, _080039B8 @ =sub_080039D0
	movs r0, #1
	bl sub_0800356C
	movs r0, #1
	movs r1, #0
	bl sub_080035AC
_080039B4:
	pop {r0}
	bx r0
	.align 2, 0
_080039B8: .4byte sub_080039D0
	thumb_func_end sub_0800398C

	thumb_func_start sub_080039BC
sub_080039BC: @ 0x080039BC
	push {lr}
	movs r0, #0
	bl sub_08003980
	movs r0, #1
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080039BC

	thumb_func_start sub_080039D0
sub_080039D0: @ 0x080039D0
	push {lr}
	ldr r0, _08003A10 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _08003A0C
	ldr r0, _08003A14 @ =0x020345A8
	ldr r0, [r0]
	cmp r0, #0
	beq _080039F0
	bl sub_0804402C
	movs r0, #0
	bl sub_08003980
_080039F0:
	bl sub_08006BE0
	bl sub_08001528
	movs r0, #0
	bl sub_08003660
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	ldr r0, _08003A18 @ =sub_08007154
	bl sub_08003640
_08003A0C:
	pop {r0}
	bx r0
	.align 2, 0
_08003A10: .4byte 0x03001038
_08003A14: .4byte 0x020345A8
_08003A18: .4byte sub_08007154
	thumb_func_end sub_080039D0

	thumb_func_start sub_08003A1C
sub_08003A1C: @ 0x08003A1C
	push {lr}
	movs r0, #0
	bl sub_08003980
	ldr r1, _08003A44 @ =sub_080039D0
	ldr r2, _08003A48 @ =0x0000FFFF
	movs r0, #1
	bl sub_08003344
	movs r0, #1
	movs r1, #0
	bl sub_08003584
	movs r0, #1
	movs r1, #0
	bl sub_080035AC
	pop {r0}
	bx r0
	.align 2, 0
_08003A44: .4byte sub_080039D0
_08003A48: .4byte 0x0000FFFF
	thumb_func_end sub_08003A1C

	thumb_func_start sub_08003A4C
sub_08003A4C: @ 0x08003A4C
	ldr r1, _08003A58 @ =0x08205204
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08003A58: .4byte 0x08205204
	thumb_func_end sub_08003A4C

	thumb_func_start sub_08003A5C
sub_08003A5C: @ 0x08003A5C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r0, _08003A7C @ =0x01FFFFFF
	cmp r2, r0
	bgt _08003A70
	ldr r1, _08003A80 @ =0x08205204
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r2, [r0]
_08003A70:
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, r2, r0
	pop {r1}
	bx r1
	.align 2, 0
_08003A7C: .4byte 0x01FFFFFF
_08003A80: .4byte 0x08205204
	thumb_func_end sub_08003A5C

	thumb_func_start sub_08003A84
sub_08003A84: @ 0x08003A84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08003A5C
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq _08003AA2
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08007810
	b _08003B0A
_08003AA2:
	ldrb r0, [r1, #0xe]
	lsls r0, r0, #8
	ldrb r2, [r1, #0xf]
	orrs r2, r0
	ldr r0, _08003AD8 @ =0x05FFFFFF
	cmp r4, r0
	bhi _08003ADC
	movs r3, #0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r3, r0
	bge _08003B0A
	adds r2, r0, #0
_08003ABC:
	ldrb r0, [r1]
	strb r0, [r4]
	adds r1, #1
	adds r4, #1
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	blt _08003ABC
	b _08003B0A
	.align 2, 0
_08003AD8: .4byte 0x05FFFFFF
_08003ADC:
	adds r5, r4, #0
	adds r4, r1, #0
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	movs r3, #0
	asrs r0, r1, #1
	cmp r3, r0
	bge _08003B0A
	adds r1, r0, #0
_08003AF2:
	ldrh r0, [r4]
	strh r0, [r5]
	adds r4, #2
	adds r5, #2
	lsls r0, r3, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _08003AF2
_08003B0A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08003A84

	thumb_func_start sub_08003B10
sub_08003B10: @ 0x08003B10
	push {lr}
	bl sub_08003A5C
	adds r2, r0, #0
	movs r1, #0
	ldrb r0, [r2]
	cmp r0, #0x45
	bne _08003B3A
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _08003B3A
	ldrb r0, [r2, #2]
	cmp r0, #0x44
	bne _08003B3A
	ldrb r0, [r2, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r2, #0xf]
	adds r0, r0, r1
	adds r1, r0, #0
	subs r1, #8
	b _08003BAA
_08003B3A:
	ldrb r0, [r2]
	adds r3, r0, #0
	cmp r3, #0x49
	bne _08003B68
	ldrb r0, [r2, #1]
	cmp r0, #0x4d
	bne _08003B68
	ldrb r0, [r2, #2]
	cmp r0, #0x47
	bne _08003B68
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _08003B5E
	ldrb r0, [r2, #5]
	ldrb r1, [r2, #6]
	muls r0, r1, r0
	lsls r1, r0, #5
	b _08003BAA
_08003B5E:
	ldrb r0, [r2, #5]
	ldrb r1, [r2, #6]
	muls r0, r1, r0
	lsls r1, r0, #6
	b _08003BAA
_08003B68:
	cmp r3, #0x50
	bne _08003B84
	ldrb r0, [r2, #1]
	cmp r0, #0x4c
	bne _08003B84
	ldrb r0, [r2, #2]
	cmp r0, #0x54
	bne _08003B84
	ldrb r0, [r2, #5]
	lsls r0, r0, #8
	ldrb r1, [r2, #4]
	adds r0, r0, r1
	lsls r1, r0, #1
	b _08003BAA
_08003B84:
	cmp r3, #0x53
	bne _08003BAA
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _08003BAA
	ldrb r0, [r2, #2]
	cmp r0, #0x52
	bne _08003BAA
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _08003BA4
	ldrb r0, [r2, #5]
	ldrb r1, [r2, #6]
	muls r0, r1, r0
	lsls r1, r0, #1
	b _08003BAA
_08003BA4:
	ldrb r1, [r2, #5]
	ldrb r0, [r2, #6]
	muls r1, r0, r1
_08003BAA:
	adds r0, r1, #0
	pop {r1}
	bx r1
	thumb_func_end sub_08003B10

	thumb_func_start sub_08003BB0
sub_08003BB0: @ 0x08003BB0
	push {lr}
	bl sub_08003A5C
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x45
	bne _08003BCC
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _08003BCC
	ldrb r0, [r2, #2]
	cmp r0, #0x44
	bne _08003BCC
	adds r2, #0x10
_08003BCC:
	ldrb r0, [r2]
	adds r3, r0, #0
	cmp r3, #0x49
	bne _08003BE4
	ldrb r0, [r2, #1]
	cmp r0, #0x4d
	bne _08003BE4
	ldrb r0, [r2, #2]
	cmp r0, #0x47
	bne _08003BE4
	movs r1, #1
	b _08003C70
_08003BE4:
	cmp r3, #0x50
	bne _08003BF8
	ldrb r0, [r2, #1]
	cmp r0, #0x4c
	bne _08003BF8
	ldrb r0, [r2, #2]
	cmp r0, #0x54
	bne _08003BF8
	movs r1, #2
	b _08003C70
_08003BF8:
	cmp r3, #0x53
	bne _08003C0C
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _08003C0C
	ldrb r0, [r2, #2]
	cmp r0, #0x52
	bne _08003C0C
	movs r1, #3
	b _08003C70
_08003C0C:
	cmp r3, #0x50
	bne _08003C20
	ldrb r0, [r2, #1]
	cmp r0, #0x41
	bne _08003C20
	ldrb r0, [r2, #2]
	cmp r0, #0x54
	bne _08003C20
	movs r1, #4
	b _08003C70
_08003C20:
	cmp r3, #0x54
	bne _08003C48
	ldrb r0, [r2, #1]
	adds r1, r0, #0
	cmp r1, #0x49
	bne _08003C36
	ldrb r0, [r2, #2]
	cmp r0, #0x4d
	bne _08003C36
	movs r1, #5
	b _08003C70
_08003C36:
	cmp r3, #0x54
	bne _08003C48
	cmp r1, #0x4f
	bne _08003C48
	ldrb r0, [r2, #2]
	cmp r0, #0x4e
	bne _08003C48
	movs r1, #6
	b _08003C70
_08003C48:
	cmp r3, #0x43
	bne _08003C5C
	ldrb r0, [r2, #1]
	cmp r0, #0x45
	bne _08003C5C
	ldrb r0, [r2, #2]
	cmp r0, #0x4c
	bne _08003C5C
	movs r1, #7
	b _08003C70
_08003C5C:
	movs r1, #0
	cmp r3, #0x4d
	bne _08003C70
	ldrb r0, [r2, #1]
	cmp r0, #0x41
	bne _08003C70
	ldrb r0, [r2, #2]
	cmp r0, #0x50
	bne _08003C70
	movs r1, #8
_08003C70:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08003BB0

	thumb_func_start sub_08003C78
sub_08003C78: @ 0x08003C78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sl, r1
	adds r7, r2, #0
	movs r0, #0
	mov sb, r0
	movs r6, #0
	mov r5, sl
	b _08003CB0
_08003C92:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	adds r1, #1
	bl sub_08003A5C
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08003A5C
	subs r4, r4, r0
	adds r6, r6, r4
	movs r1, #1
	add sb, r1
	adds r5, #8
_08003CB0:
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08003C92
	mov r2, sb
	lsls r4, r2, #2
	adds r6, r6, r4
	str r6, [r7]
	mov r0, r8
	cmp r0, #2
	bgt _08003CD0
	adds r1, r6, #0
	bl sub_080038A8
	mov r8, r0
_08003CD0:
	mov r1, r8
	adds r7, r1, r4
	mov r5, sl
	movs r2, #0
	mov sb, r2
	b _08003D1C
_08003CDC:
	mov r1, sb
	lsls r0, r1, #2
	add r0, r8
	mov r2, r8
	subs r1, r7, r2
	str r1, [r0]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	bl sub_08003A5C
	adds r4, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	adds r1, #1
	bl sub_08003A5C
	subs r6, r0, r4
	mov r2, sb
	adds r2, #1
	adds r1, r5, #0
	adds r1, #8
	cmp r6, #0
	beq _08003D18
_08003D0A:
	ldrb r0, [r4]
	strb r0, [r7]
	adds r4, #1
	adds r7, #1
	subs r6, #1
	cmp r6, #0
	bne _08003D0A
_08003D18:
	mov sb, r2
	adds r5, r1, #0
_08003D1C:
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08003CDC
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08003C78

	thumb_func_start sub_08003D38
sub_08003D38: @ 0x08003D38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x10]
	bl sub_08003A5C
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08003D5C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003D38

	thumb_func_start sub_08003D5C
sub_08003D5C: @ 0x08003D5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r6, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sl, r3
	movs r0, #0
	mov sb, r0
	ldrb r0, [r4]
	cmp r0, #0x45
	bne _08003DB0
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _08003DB0
	ldrb r0, [r4, #2]
	cmp r0, #0x44
	bne _08003DB0
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r4, #0xf]
	adds r5, r0, r1
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08003DAA
	movs r0, #1
	adds r1, r5, #0
	bl sub_080038A8
	mov sb, r0
	adds r0, r4, #0
	mov r1, sb
	bl sub_08007810
	mov r1, sb
	b _08003DCE
_08003DAA:
	adds r1, r4, #0
	adds r1, #0x10
	b _08003DCE
_08003DB0:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _08003DC0
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	muls r0, r1, r0
	lsls r0, r0, #5
	b _08003DC8
_08003DC0:
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	muls r0, r1, r0
	lsls r0, r0, #6
_08003DC8:
	adds r5, r0, #0
	adds r5, #8
	adds r1, r4, #0
_08003DCE:
	ldrb r4, [r1, #3]
	ldrb r2, [r1, #4]
	ldr r0, _08003E0C @ =0x01FFFFFF
	cmp r6, r0
	bhi _08003DDE
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r6, r6, r0
_08003DDE:
	adds r7, r1, #0
	adds r7, #8
	mov r0, r8
	cmp r0, #0
	bne _08003E10
	subs r5, #8
	lsls r2, r5, #0x10
	lsrs r2, r2, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_08002E7C
	b _08003E6C
	.align 2, 0
_08003E0C: .4byte 0x01FFFFFF
_08003E10:
	ldrb r0, [r1, #5]
	ldrb r3, [r1, #6]
	cmp r4, #0
	bne _08003E46
	cmp r2, #0
	bne _08003E20
	lsls r0, r0, #0x15
	b _08003E22
_08003E20:
	lsls r0, r0, #0x16
_08003E22:
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08002E7C
	b _08003E6C
_08003E46:
	lsls r0, r0, #0x13
	lsrs r2, r0, #0x10
	lsls r3, r3, #3
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0xf0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08002E7C
_08003E6C:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08003D5C

	thumb_func_start sub_08003E7C
sub_08003E7C: @ 0x08003E7C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #0x10]
	bl sub_08003A5C
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08003EA0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003E7C

	thumb_func_start sub_08003EA0
sub_08003EA0: @ 0x08003EA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov sb, r3
	movs r0, #0
	mov r8, r0
	ldrb r0, [r4]
	cmp r0, #0x45
	bne _08003EF0
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _08003EF0
	ldrb r0, [r4, #2]
	cmp r0, #0x44
	bne _08003EF0
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r4, #0xf]
	adds r5, r0, r1
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08003EEA
	movs r0, #1
	adds r1, r5, #0
	bl sub_080038A8
	mov r8, r0
	adds r0, r4, #0
	mov r1, r8
	bl sub_08007810
	mov r1, r8
	b _08003F00
_08003EEA:
	adds r1, r4, #0
	adds r1, #0x10
	b _08003F00
_08003EF0:
	ldrb r0, [r4, #5]
	lsls r0, r0, #8
	ldrb r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #8
	adds r1, r4, #0
_08003F00:
	adds r0, r5, #0
	subs r0, #8
	lsrs r5, r0, #1
	cmp r7, #0
	bne _08003F20
	ldr r0, _08003F14 @ =0x01FFFFFF
	cmp r6, r0
	bhi _08003F1C
	ldr r0, _08003F18 @ =0x02033C00
	b _08003F2E
	.align 2, 0
_08003F14: .4byte 0x01FFFFFF
_08003F18: .4byte 0x02033C00
_08003F1C:
	adds r2, r6, #0
	b _08003F30
_08003F20:
	cmp r7, #1
	bne _08003F2C
	ldr r0, _08003F28 @ =0x02033C00
	b _08003F2E
	.align 2, 0
_08003F28: .4byte 0x02033C00
_08003F2C:
	ldr r0, _08003F80 @ =0x020341A0
_08003F2E:
	adds r2, r6, r0
_08003F30:
	adds r1, #8
	movs r3, #0
	cmp r3, r5
	bhs _08003F46
_08003F38:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, r5
	blo _08003F38
_08003F46:
	cmp r7, #0
	bne _08003F68
	ldr r0, _08003F84 @ =0x01FFFFFF
	cmp r6, r0
	bhi _08003F56
	movs r0, #0xa0
	lsls r0, r0, #0x13
	adds r6, r6, r0
_08003F56:
	ldr r0, _08003F88 @ =0x04FFFFFF
	cmp r6, r0
	bls _08003F68
	lsls r0, r6, #0x16
	lsrs r0, r0, #0x17
	adds r1, r5, #0
	mov r2, sb
	bl sub_080011EC
_08003F68:
	mov r0, r8
	cmp r0, #0
	beq _08003F72
	bl sub_080038C8
_08003F72:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003F80: .4byte 0x020341A0
_08003F84: .4byte 0x01FFFFFF
_08003F88: .4byte 0x04FFFFFF
	thumb_func_end sub_08003EA0

	thumb_func_start sub_08003F8C
sub_08003F8C: @ 0x08003F8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	ldr r4, [sp, #0x34]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_08003A5C
	adds r1, r0, #0
	str r7, [sp]
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	str r4, [sp, #8]
	ldr r2, [sp, #0x38]
	str r2, [sp, #0xc]
	mov r0, r8
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08003FDC
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08003F8C

	thumb_func_start sub_08003FDC
sub_08003FDC: @ 0x08003FDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r0, [sp, #0x14]
	adds r4, r1, #0
	ldr r0, [sp, #0x58]
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0
	str r0, [sp, #0x18]
	ldrb r0, [r4]
	cmp r0, #0x45
	bne _0800403A
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _0800403A
	ldrb r0, [r4, #2]
	cmp r0, #0x44
	bne _0800403A
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #8
	ldrb r1, [r4, #0xf]
	adds r0, r0, r1
	mov sl, r0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _08004036
	movs r0, #1
	mov r1, sl
	bl sub_080038A8
	str r0, [sp, #0x18]
	adds r0, r4, #0
	ldr r1, [sp, #0x18]
	bl sub_08007810
	ldr r4, [sp, #0x18]
	b _08004054
_08004036:
	adds r4, #0x10
	b _08004054
_0800403A:
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _0800404A
	ldrb r1, [r4, #5]
	ldrb r0, [r4, #6]
	muls r0, r1, r0
	lsls r0, r0, #1
	b _08004050
_0800404A:
	ldrb r0, [r4, #5]
	ldrb r1, [r4, #6]
	muls r0, r1, r0
_08004050:
	adds r0, #8
	mov sl, r0
_08004054:
	lsls r5, r5, #0x18
	str r5, [sp, #0x2c]
	cmp r7, #0
	bne _08004074
	cmp r6, #0
	bne _08004074
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bne _08004074
	movs r0, #0xc0
	lsls r0, r0, #0x13
	ands r0, r5
	cmp r0, #0
	beq _0800409C
_08004074:
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne _0800409C
	movs r0, #1
	mov r1, sl
	bl sub_080038A8
	str r0, [sp, #0x18]
	adds r1, r0, #0
	movs r3, #0
	cmp r3, sl
	bhs _0800409A
_0800408C:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	adds r3, #1
	cmp r3, sl
	blo _0800408C
_0800409A:
	ldr r4, [sp, #0x18]
_0800409C:
	ldrb r0, [r4, #5]
	mov r8, r0
	ldrb r1, [r4, #6]
	mov sb, r1
	ldrb r2, [r4, #4]
	str r2, [sp, #0x1c]
	cmp r7, #0
	bne _080040C0
	cmp r6, #0
	bne _080040C0
	movs r0, #1
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #8
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x50]
	cmp r2, r0
	beq _080040FA
_080040C0:
	adds r5, r4, #0
	adds r5, #8
	movs r3, #0
	mov r0, sl
	subs r0, #8
	lsrs r4, r0, #1
	str r5, [sp, #0x28]
	cmp r3, r4
	bhs _080040FA
	movs r0, #0xf0
	ands r0, r6
	lsls r0, r0, #8
	adds r1, r7, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, [sp, #0x54]
	adds r1, r1, r0
_080040E2:
	ldrh r0, [r5]
	ldr r6, [sp, #0x50]
	cmp r0, r6
	beq _080040F0
	adds r0, r0, r2
	strh r0, [r5]
	b _080040F2
_080040F0:
	strh r1, [r5]
_080040F2:
	adds r5, #2
	adds r3, #1
	cmp r3, r4
	blo _080040E2
_080040FA:
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #0x18
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800416C
	ldr r5, [sp, #0x28]
	movs r0, #0
	cmp r0, sb
	bhs _0800416C
	mov r2, r8
	lsrs r2, r2, #1
	mov ip, r2
	movs r6, #1
	mov r1, r8
	ands r1, r6
	str r1, [sp, #0x20]
	lsls r2, r2, #1
	str r2, [sp, #0x24]
_08004120:
	movs r3, #0
	adds r7, r0, #1
	cmp r3, ip
	bhs _0800414E
	mov r2, r8
	lsls r6, r2, #1
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r0, #0
_08004132:
	ldrh r2, [r5]
	adds r1, r5, r6
	lsls r0, r3, #2
	subs r1, r1, r0
	subs r1, #2
	ldrh r0, [r1]
	eors r0, r4
	strh r0, [r5]
	eors r2, r4
	strh r2, [r1]
	adds r3, #1
	adds r5, #2
	cmp r3, ip
	blo _08004132
_0800414E:
	ldr r1, [sp, #0x20]
	cmp r1, #0
	beq _08004162
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	eors r0, r1
	strh r0, [r5]
	adds r5, #2
_08004162:
	ldr r6, [sp, #0x24]
	adds r5, r5, r6
	adds r0, r7, #0
	cmp r0, sb
	blo _08004120
_0800416C:
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #0x18
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080041E4
	ldr r5, [sp, #0x28]
	movs r0, #0
	mov r2, sb
	lsrs r1, r2, #1
	cmp r0, r1
	bhs _080041C0
	mov ip, r1
_08004186:
	movs r3, #0
	adds r7, r0, #1
	cmp r3, r8
	bhs _080041BA
	lsls r0, r0, #1
	mov r6, sb
	subs r0, r6, r0
	subs r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r6, r0, #1
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r2, #0
_080041A4:
	ldrh r2, [r5]
	adds r1, r6, r5
	ldrh r0, [r1]
	eors r0, r4
	strh r0, [r5]
	eors r2, r4
	strh r2, [r1]
	adds r3, #1
	adds r5, #2
	cmp r3, r8
	blo _080041A4
_080041BA:
	adds r0, r7, #0
	cmp r0, ip
	blo _08004186
_080041C0:
	movs r0, #1
	mov r6, sb
	ands r0, r6
	cmp r0, #0
	beq _080041E4
	movs r3, #0
	cmp r3, r8
	bhs _080041E4
	movs r0, #0x80
	lsls r0, r0, #4
	adds r1, r0, #0
_080041D6:
	ldrh r0, [r5]
	eors r0, r1
	strh r0, [r5]
	adds r3, #1
	adds r5, #2
	cmp r3, r8
	blo _080041D6
_080041E4:
	ldr r0, _0800422C @ =0x01FFFFFF
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bhi _080041F4
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	str r1, [sp, #0x14]
_080041F4:
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	asrs r3, r6, #0x18
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	bne _08004230
	subs r0, #9
	add sl, r0
	mov r1, sl
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r6, [sp, #0x5c]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	movs r3, #1
	bl sub_08002E7C
	b _08004324
	.align 2, 0
_0800422C: .4byte 0x01FFFFFF
_08004230:
	ldr r1, [sp, #0x1c]
	cmp r1, #0
	bne _0800424A
	mov r2, r8
	lsls r0, r2, #0x11
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	b _080042E6
_0800424A:
	movs r6, #0
	b _08004250
_0800424E:
	adds r6, #1
_08004250:
	cmp r6, #3
	bgt _0800427A
	adds r0, r6, #0
	bl sub_08000D6C
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blo _0800424E
	adds r0, r6, #0
	bl sub_08000D6C
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08000D7C
	ldr r1, _08004294 @ =0x0000FFFE
	ands r1, r0
	adds r4, r4, r1
	ldr r2, [sp, #0x14]
	cmp r2, r4
	bhs _0800424E
_0800427A:
	adds r0, r6, #0
	bl sub_08000D8C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #1
	beq _080042C2
	cmp r1, #1
	bgt _08004298
	cmp r1, #0
	beq _080042A2
	b _08004324
	.align 2, 0
_08004294: .4byte 0x0000FFFE
_08004298:
	cmp r1, #2
	beq _080042D2
	cmp r1, #3
	beq _080042FC
	b _08004324
_080042A2:
	mov r6, r8
	lsls r0, r6, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x5c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r6, [sp, #0x18]
	str r6, [sp, #0x10]
	b _080042F2
_080042C2:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x20
	b _080042E0
_080042D2:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x40
_080042E0:
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
_080042E6:
	ldr r6, [sp, #0x5c]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
_080042F2:
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	bl sub_08002E7C
	b _08004324
_080042FC:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
	mov r3, sb
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x80
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r6, [sp, #0x5c]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	ldr r1, [sp, #0x14]
	bl sub_08002E7C
_08004324:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08003FDC

	thumb_func_start sub_08004334
sub_08004334: @ 0x08004334
	ldr r1, _0800433C @ =0x02031FA4
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800433C: .4byte 0x02031FA4
	thumb_func_end sub_08004334

	thumb_func_start sub_08004340
sub_08004340: @ 0x08004340
	bx lr
	.align 2, 0
	thumb_func_end sub_08004340

	thumb_func_start sub_08004344
sub_08004344: @ 0x08004344
	push {r4, lr}
	ldr r4, _0800435C @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800435C: .4byte 0x02031FA4
	thumb_func_end sub_08004344

	thumb_func_start sub_08004360
sub_08004360: @ 0x08004360
	push {r4, lr}
	ldr r4, _08004378 @ =0x02031FA4
	ldr r0, [r4]
	cmp r0, #0
	beq _08004372
	bl sub_080038C8
	movs r0, #0
	str r0, [r4]
_08004372:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004378: .4byte 0x02031FA4
	thumb_func_end sub_08004360

	thumb_func_start sub_0800437C
sub_0800437C: @ 0x0800437C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r2, _080043CC @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r4, r0, r1
	cmp r5, #0
	beq _080043D0
	cmp r3, #0
	beq _080043D0
	str r5, [r4, #0x18]
	ldrh r1, [r3, #4]
	str r1, [r4, #0x20]
	ldrh r2, [r3, #6]
	str r2, [r4, #0x24]
	adds r0, r3, #0
	adds r0, #8
	str r0, [r4, #0x1c]
	lsrs r1, r1, #1
	str r1, [r4, #0x28]
	lsrs r2, r2, #1
	str r2, [r4, #0x2c]
	adds r0, r6, #0
	bl sub_08000D6C
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r4, r2
	movs r2, #0xfa
	lsls r2, r2, #0x18
	adds r0, r0, r2
	str r0, [r1]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r4, r1
	str r6, [r0]
	b _080043EC
	.align 2, 0
_080043CC: .4byte 0x02031FA4
_080043D0:
	movs r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x18]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	adds r2, #4
	adds r1, r4, r2
	str r0, [r1]
_080043EC:
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r2, r4, r1
	movs r1, #1
	str r1, [r2]
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r1, r4, r2
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800437C

	thumb_func_start sub_08004414
sub_08004414: @ 0x08004414
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, [sp, #0x18]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08004446
	cmp r5, r1
	beq _08004446
	ldr r1, [sp, #0x1c]
	bl sub_08003A5C
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08003A5C
	adds r2, r0, #0
	adds r2, #8
	b _0800444A
_08004446:
	movs r4, #0
	movs r2, #0
_0800444A:
	adds r0, r7, #0
	mov r1, r8
	adds r3, r4, #0
	bl sub_0800437C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08004414

	thumb_func_start sub_08004460
sub_08004460: @ 0x08004460
	ldr r3, _08004478 @ =0x02031FA4
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #6
	ldr r0, [r3]
	adds r0, r0, r2
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08004478: .4byte 0x02031FA4
	thumb_func_end sub_08004460

	thumb_func_start sub_0800447C
sub_0800447C: @ 0x0800447C
	ldr r3, _08004494 @ =0x02031FA4
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #6
	ldr r0, [r3]
	adds r0, r0, r2
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
_08004494: .4byte 0x02031FA4
	thumb_func_end sub_0800447C

	thumb_func_start sub_08004498
sub_08004498: @ 0x08004498
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, _080044B8 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r0, r0, r1
	cmp r3, #0
	blt _080044BC
	ldr r1, [r0, #0x28]
	lsls r1, r1, #0xc
	adds r0, r3, #0
	bl sub_080446C0
	b _080044D0
	.align 2, 0
_080044B8: .4byte 0x02031FA4
_080044BC:
	ldr r0, [r0, #0x28]
	lsls r4, r0, #0xc
	rsbs r0, r3, #0
	adds r1, r4, #0
	bl sub_080446C0
	subs r0, r4, r0
	cmp r0, r4
	blo _080044D0
	subs r0, r0, r4
_080044D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08004498

	thumb_func_start sub_080044D8
sub_080044D8: @ 0x080044D8
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, _080044F8 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r0, r0, r1
	cmp r3, #0
	blt _080044FC
	ldr r1, [r0, #0x2c]
	lsls r1, r1, #0xc
	adds r0, r3, #0
	bl sub_080446C0
	b _08004510
	.align 2, 0
_080044F8: .4byte 0x02031FA4
_080044FC:
	ldr r0, [r0, #0x2c]
	lsls r4, r0, #0xc
	rsbs r0, r3, #0
	adds r1, r4, #0
	bl sub_080446C0
	subs r0, r4, r0
	cmp r0, r4
	blo _08004510
	subs r0, r0, r4
_08004510:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080044D8

	thumb_func_start sub_08004518
sub_08004518: @ 0x08004518
	push {r4, lr}
	ldr r4, _08004538 @ =0x02031FA4
	lsls r3, r0, #3
	adds r3, r3, r0
	lsls r3, r3, #6
	ldr r0, [r4]
	adds r0, r0, r3
	ldr r3, [r0]
	str r3, [r0, #8]
	ldr r3, [r0, #4]
	str r3, [r0, #0xc]
	str r1, [r0]
	str r2, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004538: .4byte 0x02031FA4
	thumb_func_end sub_08004518

	thumb_func_start sub_0800453C
sub_0800453C: @ 0x0800453C
	push {r4, lr}
	ldr r4, _08004558 @ =0x02031FA4
	lsls r3, r0, #3
	adds r3, r3, r0
	lsls r3, r3, #6
	ldr r0, [r4]
	adds r0, r0, r3
	ldr r3, [r0]
	str r3, [r1]
	ldr r0, [r0, #4]
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004558: .4byte 0x02031FA4
	thumb_func_end sub_0800453C

	thumb_func_start sub_0800455C
sub_0800455C: @ 0x0800455C
	ldr r2, _0800456C @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800456C: .4byte 0x02031FA4
	thumb_func_end sub_0800455C

	thumb_func_start sub_08004570
sub_08004570: @ 0x08004570
	ldr r2, _08004580 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08004580: .4byte 0x02031FA4
	thumb_func_end sub_08004570

	thumb_func_start sub_08004584
sub_08004584: @ 0x08004584
	push {r4, lr}
	ldr r4, _080045A0 @ =0x02031FA4
	lsls r3, r0, #3
	adds r3, r3, r0
	lsls r3, r3, #6
	ldr r0, [r4]
	adds r0, r0, r3
	ldr r3, [r0, #0x20]
	str r3, [r1]
	ldr r0, [r0, #0x24]
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080045A0: .4byte 0x02031FA4
	thumb_func_end sub_08004584

	thumb_func_start sub_080045A4
sub_080045A4: @ 0x080045A4
	push {r4, lr}
	ldr r4, _080045C0 @ =0x02031FA4
	lsls r3, r0, #3
	adds r3, r3, r0
	lsls r3, r3, #6
	ldr r0, [r4]
	adds r0, r0, r3
	ldr r3, [r0, #0x28]
	str r3, [r1]
	ldr r0, [r0, #0x2c]
	str r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080045C0: .4byte 0x02031FA4
	thumb_func_end sub_080045A4

	thumb_func_start sub_080045C4
sub_080045C4: @ 0x080045C4
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r2, _080045E0 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r3, r0, r1
	ldr r4, [r3, #0x1c]
	cmp r4, #0
	bne _080045E4
	movs r0, #0
	b _08004616
	.align 2, 0
_080045E0: .4byte 0x02031FA4
_080045E4:
	adds r2, r5, #0
	cmp r2, #0
	bge _080045EE
	ldr r0, _0800461C @ =0x00000FFF
	adds r2, r2, r0
_080045EE:
	asrs r1, r2, #0xc
	ldr r0, [r3, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r1, r6, #0
	cmp r1, #0
	bge _08004602
	ldr r0, _0800461C @ =0x00000FFF
	adds r1, r1, r0
_08004602:
	asrs r0, r1, #0xc
	lsls r0, r0, #1
	adds r0, r2, r0
	ldrh r1, [r0]
	ldr r2, [r3, #0x18]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #8]
_08004616:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800461C: .4byte 0x00000FFF
	thumb_func_end sub_080045C4

	thumb_func_start sub_08004620
sub_08004620: @ 0x08004620
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r2, _0800463C @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	bne _08004640
	movs r0, #0
	b _08004666
	.align 2, 0
_0800463C: .4byte 0x02031FA4
_08004640:
	adds r2, r4, #0
	cmp r2, #0
	bge _0800464A
	ldr r1, _0800466C @ =0x00000FFF
	adds r2, r2, r1
_0800464A:
	asrs r1, r2, #0xc
	ldr r0, [r0, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r2, r3, r0
	adds r1, r5, #0
	cmp r1, #0
	bge _0800465E
	ldr r0, _0800466C @ =0x00000FFF
	adds r1, r1, r0
_0800465E:
	asrs r0, r1, #0xc
	lsls r0, r0, #1
	adds r0, r2, r0
	ldrh r0, [r0]
_08004666:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800466C: .4byte 0x00000FFF
	thumb_func_end sub_08004620

	thumb_func_start sub_08004670
sub_08004670: @ 0x08004670
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	ldr r1, _080046BC @ =0x02031FA4
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r0, r0, #6
	ldr r1, [r1]
	adds r5, r1, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _080046B6
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08004620
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [r5, #0x18]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1]
	strh r0, [r7]
	ldrh r2, [r1, #2]
	ldr r0, [sp, #0x14]
	strh r2, [r0]
	ldrh r2, [r1, #4]
	ldr r0, [sp, #0x18]
	strh r2, [r0]
	ldrh r1, [r1, #6]
	ldr r0, [sp, #0x1c]
	strh r1, [r0]
_080046B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080046BC: .4byte 0x02031FA4
	thumb_func_end sub_08004670

	thumb_func_start sub_080046C0
sub_080046C0: @ 0x080046C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, _08004814 @ =0x02031FA4
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #6
	ldr r0, [r0]
	adds r7, r0, r1
	ldr r2, [r7, #0x1c]
	cmp r2, #0
	bne _080046E6
	b _08004806
_080046E6:
	mov r1, r8
	cmp r1, #0
	bge _080046F0
	ldr r1, _08004818 @ =0x00000FFF
	add r1, r8
_080046F0:
	asrs r1, r1, #0xc
	ldr r0, [r7, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	adds r1, r2, r0
	adds r0, r6, #0
	cmp r6, #0
	bge _08004704
	ldr r2, _08004818 @ =0x00000FFF
	adds r0, r6, r2
_08004704:
	asrs r0, r0, #0xc
	lsls r0, r0, #1
	adds r0, r1, r0
	mov r1, sb
	strh r1, [r0]
	ldr r1, [r7]
	adds r0, r5, #0
	bl sub_08004498
	adds r4, r0, #0
	ldr r1, [r7, #4]
	adds r0, r5, #0
	bl sub_080044D8
	adds r2, r0, #0
	cmp r6, r4
	bge _08004736
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r1, r4, r0
	ldr r0, [r7, #0x28]
	lsls r0, r0, #0xc
	cmp r1, r0
	bls _08004736
	subs r4, r4, r0
_08004736:
	cmp r8, r2
	bge _0800474A
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r2, r0
	ldr r0, [r7, #0x2c]
	lsls r0, r0, #0xc
	cmp r1, r0
	bls _0800474A
	subs r2, r2, r0
_0800474A:
	subs r3, r6, r4
	mov r1, r8
	subs r2, r1, r2
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r3, r0
	ldr r0, _0800481C @ =0x00010FFF
	cmp r1, r0
	bhi _08004806
	ldr r0, _08004820 @ =0xFFFFF000
	cmp r2, r0
	blt _08004806
	ldr r0, _08004824 @ =0x0000AFFF
	cmp r2, r0
	bgt _08004806
	ldr r0, [r7, #0x10]
	adds r1, r0, r3
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r1, r4
	asrs r3, r1, #0xb
	ldr r0, [r7, #0x14]
	adds r1, r0, r2
	ands r1, r4
	asrs r0, r1, #0xb
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r2, r7, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldr r6, [r2]
	adds r6, r6, r0
	ldr r0, [r7, #0x18]
	mov r2, sb
	lsls r4, r2, #1
	add r4, sb
	lsls r4, r4, #2
	adds r0, r4, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	ldr r5, [sp, #0x24]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #4]
	adds r1, r6, #0
	movs r2, #2
	movs r3, #1
	bl sub_08002D64
	ldr r0, [r7, #0x18]
	adds r0, r4, r0
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r6, #2
	mov r2, r8
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #2
	movs r3, #1
	bl sub_08002D64
	ldr r0, [r7, #0x18]
	adds r0, r4, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x40
	mov r2, r8
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #2
	movs r3, #1
	bl sub_08002D64
	ldr r0, [r7, #0x18]
	adds r4, r4, r0
	movs r1, #6
	ldrsh r0, [r4, r1]
	adds r6, #0x42
	mov r2, r8
	str r2, [sp]
	str r5, [sp, #4]
	adds r1, r6, #0
	movs r2, #2
	movs r3, #1
	bl sub_08002D64
_08004806:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004814: .4byte 0x02031FA4
_08004818: .4byte 0x00000FFF
_0800481C: .4byte 0x00010FFF
_08004820: .4byte 0xFFFFF000
_08004824: .4byte 0x0000AFFF
	thumb_func_end sub_080046C0

	thumb_func_start sub_08004828
sub_08004828: @ 0x08004828
	push {r4, lr}
	adds r3, r0, #0
	ldrh r4, [r2]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08004878
	ldr r2, [r3]
	ldr r0, [r3, #8]
	cmp r2, r0
	blt _0800484C
	cmp r2, r0
	ble _08004860
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r2, r2, r0
_0800484C:
	cmp r2, #0
	blt _08004858
	ldr r0, [r3, #0x28]
	lsls r0, r0, #0xc
	cmp r2, r0
	blo _08004860
_08004858:
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r4, [r0]
_08004860:
	ldr r0, [r3, #4]
	adds r1, r0, r1
	cmp r1, #0
	blt _08004870
	ldr r0, [r3, #0x2c]
	lsls r0, r0, #0xc
	cmp r1, r0
	blo _08004878
_08004870:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r4, [r0]
_08004878:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08004828

	thumb_func_start sub_08004880
sub_08004880: @ 0x08004880
	push {r4, lr}
	adds r3, r0, #0
	ldrh r4, [r2]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080048D0
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	cmp r2, r0
	blt _080048A4
	cmp r2, r0
	ble _080048B8
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r2, r2, r0
_080048A4:
	cmp r2, #0
	blt _080048B0
	ldr r0, [r3, #0x2c]
	lsls r0, r0, #0xc
	cmp r2, r0
	blo _080048B8
_080048B0:
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r4, [r0]
_080048B8:
	ldr r0, [r3]
	adds r1, r0, r1
	cmp r1, #0
	blt _080048C8
	ldr r0, [r3, #0x28]
	lsls r0, r0, #0xc
	cmp r1, r0
	blo _080048D0
_080048C8:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r4, [r0]
_080048D0:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08004880

	thumb_func_start sub_080048D8
sub_080048D8: @ 0x080048D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _08004930 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r6, r0, r1
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _080048F8
	b _08004CAE
_080048F8:
	ldr r4, [r6]
	ldr r5, [r6, #8]
	subs r1, r4, r5
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r2, _08004934 @ =0x0000FFFF
	ands r0, r2
	str r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r1, [r6, #0xc]
	subs r1, r3, r1
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	ands r0, r2
	str r0, [r6, #0x14]
	adds r7, r4, #0
	mov sl, r5
	mov r8, r3
	cmp r7, #0
	blt _08004938
	ldr r4, [r6, #0x28]
	lsls r1, r4, #0xc
	adds r0, r7, #0
	bl sub_080446C0
	str r0, [sp, #0x10]
	mov sb, r4
	b _08004952
	.align 2, 0
_08004930: .4byte 0x02031FA4
_08004934: .4byte 0x0000FFFF
_08004938:
	ldr r4, [r6, #0x28]
	lsls r5, r4, #0xc
	rsbs r0, r7, #0
	adds r1, r5, #0
	bl sub_080446C0
	subs r0, r5, r0
	str r0, [sp, #0x10]
	mov sb, r4
	cmp r0, r5
	blo _08004952
	subs r0, r0, r5
	str r0, [sp, #0x10]
_08004952:
	mov r0, r8
	cmp r0, #0
	blt _08004962
	ldr r1, [r6, #0x2c]
	lsls r1, r1, #0xc
	bl sub_080446C0
	b _0800497A
_08004962:
	ldr r0, [r6, #0x2c]
	lsls r4, r0, #0xc
	mov r1, r8
	rsbs r0, r1, #0
	adds r1, r4, #0
	bl sub_080446C0
	subs r0, r4, r0
	str r0, [sp, #0x14]
	cmp r0, r4
	blo _0800497C
	subs r0, r0, r4
_0800497A:
	str r0, [sp, #0x14]
_0800497C:
	ldr r2, [r6, #0x10]
	str r2, [sp, #0x18]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x1c]
	cmp r7, sl
	bne _0800498A
	b _08004B0E
_0800498A:
	asrs r1, r7, #0xc
	mov r2, sl
	asrs r0, r2, #0xc
	cmp r1, r0
	bne _08004996
	b _08004B0E
_08004996:
	cmp r7, sl
	ble _080049B2
	movs r2, #0xf0
	lsls r2, r2, #8
	ldr r0, [sp, #0x18]
	adds r1, r0, r2
	ands r1, r2
	asrs r1, r1, #0xb
	mov sl, r1
	ldr r1, [sp, #0x10]
	adds r0, r1, r2
	mov r2, sb
	lsls r1, r2, #0xc
	b _080049C4
_080049B2:
	movs r1, #0xf0
	lsls r1, r1, #8
	ldr r0, [sp, #0x18]
	ands r1, r0
	asrs r1, r1, #0xb
	mov sl, r1
	mov r2, sb
	lsls r1, r2, #0xc
	ldr r0, [sp, #0x10]
_080049C4:
	bl sub_080446C0
	adds r7, r0, #0
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0xc
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	asrs r0, r7, #0xc
	lsls r0, r0, #1
	adds r4, r1, r0
	ldr r7, [sp, #0x14]
	movs r1, #0xf0
	lsls r1, r1, #8
	ldr r0, [sp, #0x1c]
	ands r1, r0
	asrs r1, r1, #0xb
	str r1, [sp, #0xc]
	movs r1, #0
	mov sb, r1
	movs r0, #0x20
	ldr r2, [sp, #0xc]
	subs r3, r0, r2
	cmp r3, #0x20
	ble _080049FE
	movs r3, #0x20
_080049FE:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	adds r0, #0x30
	adds r5, r6, r0
	movs r2, #0
	mov r8, r2
	adds r0, r6, #0
	adds r0, #0x30
	str r0, [sp, #0x20]
	mov r1, sl
	lsls r1, r1, #1
	mov sl, r1
	cmp r8, r3
	bge _08004A78
_08004A1A:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x24]
	bl sub_08004828
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r1, [r0, #2]
	strh r1, [r5, #2]
	ldrh r1, [r0, #4]
	strh r1, [r5, #4]
	ldrh r0, [r0, #6]
	strh r0, [r5, #6]
	adds r5, #8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r7, r2
	ldr r1, [r6, #0x2c]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x24]
	cmp r7, r0
	bhs _08004A5E
	ldr r0, [r6, #0x28]
	lsls r0, r0, #1
	adds r4, r4, r0
	b _08004A6A
_08004A5E:
	movs r7, #0
	subs r1, #1
	ldr r0, [r6, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	subs r4, r4, r0
_08004A6A:
	movs r0, #2
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #5
	add sb, r1
	cmp r8, r3
	blt _08004A1A
_08004A78:
	cmp r3, #0x1f
	bgt _08004AE8
	movs r0, #0x20
	subs r3, r0, r3
	ldr r5, [sp, #0x20]
	movs r2, #0
	mov r8, r2
	cmp r8, r3
	bge _08004AE8
_08004A8A:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x24]
	bl sub_08004828
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r1, [r0, #2]
	strh r1, [r5, #2]
	ldrh r1, [r0, #4]
	strh r1, [r5, #4]
	ldrh r0, [r0, #6]
	strh r0, [r5, #6]
	adds r5, #8
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r7, r0
	ldr r1, [r6, #0x2c]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x24]
	cmp r7, r0
	bhs _08004ACE
	ldr r0, [r6, #0x28]
	lsls r0, r0, #1
	adds r4, r4, r0
	b _08004ADA
_08004ACE:
	movs r7, #0
	subs r1, #1
	ldr r0, [r6, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	subs r4, r4, r0
_08004ADA:
	movs r1, #2
	add r8, r1
	movs r2, #0x80
	lsls r2, r2, #5
	add sb, r2
	cmp r8, r3
	blt _08004A8A
_08004AE8:
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	add r2, sl
	ldr r1, [r0]
	adds r1, r1, r2
	movs r0, #4
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	movs r2, #4
	movs r3, #0x20
	bl sub_08002DBC
_08004B0E:
	ldr r3, [r6, #4]
	ldr r2, [r6, #0xc]
	cmp r3, r2
	bne _08004B18
	b _08004C96
_08004B18:
	asrs r1, r3, #0xc
	asrs r0, r2, #0xc
	cmp r1, r0
	bne _08004B22
	b _08004C96
_08004B22:
	cmp r3, r2
	ble _08004B42
	movs r2, #0xa0
	lsls r2, r2, #8
	ldr r0, [sp, #0x1c]
	adds r1, r0, r2
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	asrs r1, r1, #0xb
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	adds r0, r1, r2
	ldr r1, [r6, #0x2c]
	lsls r1, r1, #0xc
	b _08004B54
_08004B42:
	movs r1, #0xf0
	lsls r1, r1, #8
	ldr r0, [sp, #0x1c]
	ands r1, r0
	asrs r1, r1, #0xb
	str r1, [sp, #0xc]
	ldr r1, [r6, #0x2c]
	lsls r1, r1, #0xc
	ldr r0, [sp, #0x14]
_08004B54:
	bl sub_080446C0
	adds r7, r0, #0
	asrs r1, r7, #0xc
	ldr r0, [r6, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0xc
	lsls r0, r0, #1
	adds r4, r1, r0
	ldr r7, [sp, #0x10]
	movs r2, #0xf0
	lsls r2, r2, #8
	ldr r0, [sp, #0x18]
	ands r2, r0
	asrs r2, r2, #0xb
	mov sl, r2
	movs r1, #0
	mov sb, r1
	movs r0, #0x20
	subs r3, r0, r2
	cmp r3, #0x20
	ble _08004B8A
	movs r3, #0x20
_08004B8A:
	mov r2, sl
	lsls r0, r2, #1
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r5, r6, r0
	movs r2, #0
	mov r8, r2
	ldr r0, [sp, #0xc]
	lsls r0, r0, #6
	mov sl, r0
	cmp r8, r3
	bge _08004BFE
_08004BA4:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x24]
	bl sub_08004880
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r1, [r0, #2]
	strh r1, [r5, #2]
	ldrh r1, [r0, #4]
	adds r2, r5, #0
	adds r2, #0x40
	strh r1, [r2]
	ldrh r0, [r0, #6]
	strh r0, [r2, #2]
	adds r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r7, r7, r1
	ldr r1, [r6, #0x28]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x24]
	cmp r7, r0
	bhs _08004BE8
	adds r4, #2
	b _08004BF0
_08004BE8:
	movs r7, #0
	lsls r0, r1, #1
	subs r0, r4, r0
	adds r4, r0, #2
_08004BF0:
	movs r2, #2
	add r8, r2
	movs r0, #0x80
	lsls r0, r0, #5
	add sb, r0
	cmp r8, r3
	blt _08004BA4
_08004BFE:
	cmp r3, #0x1f
	bgt _08004C6E
	movs r0, #0x20
	subs r3, r0, r3
	movs r1, #0x98
	lsls r1, r1, #1
	adds r5, r6, r1
	movs r2, #0
	mov r8, r2
	cmp r8, r3
	bge _08004C6E
_08004C14:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x24]
	bl sub_08004880
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r1, [r0, #2]
	strh r1, [r5, #2]
	ldrh r1, [r0, #4]
	adds r2, r5, #0
	adds r2, #0x40
	strh r1, [r2]
	ldrh r0, [r0, #6]
	strh r0, [r2, #2]
	adds r5, #4
	movs r0, #0x80
	lsls r0, r0, #5
	adds r7, r7, r0
	ldr r1, [r6, #0x28]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x24]
	cmp r7, r0
	bhs _08004C58
	adds r4, #2
	b _08004C60
_08004C58:
	movs r7, #0
	lsls r0, r1, #1
	subs r0, r4, r0
	adds r4, r0, #2
_08004C60:
	movs r1, #2
	add r8, r1
	movs r2, #0x80
	lsls r2, r2, #5
	add sb, r2
	cmp r8, r3
	blt _08004C14
_08004C6E:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r2, #0xc0
	lsls r2, r2, #0x13
	add r2, sl
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0x80
	movs r3, #1
	bl sub_08002DBC
_08004C96:
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r6, #0x14]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08000D9C
_08004CAE:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080048D8

	thumb_func_start sub_08004CC0
sub_08004CC0: @ 0x08004CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r1, #0
	ldr r2, _08004D14 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r6, r0, r1
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08004CE2
	b _08004E7A
_08004CE2:
	ldr r0, [r6]
	str r0, [r6, #8]
	ldr r1, [r6, #4]
	str r1, [r6, #0xc]
	ldr r2, _08004D18 @ =0x00000FFF
	ands r0, r2
	str r0, [r6, #0x10]
	ands r1, r2
	str r1, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [sp, #0x14]
	ldr r0, [r6]
	cmp r0, #0
	blt _08004D1C
	ldr r4, [r6, #0x28]
	lsls r1, r4, #0xc
	bl sub_080446C0
	mov r8, r0
	str r4, [sp, #0x30]
	b _08004D36
	.align 2, 0
_08004D14: .4byte 0x02031FA4
_08004D18: .4byte 0x00000FFF
_08004D1C:
	ldr r4, [r6, #0x28]
	lsls r5, r4, #0xc
	rsbs r0, r0, #0
	adds r1, r5, #0
	bl sub_080446C0
	subs r0, r5, r0
	mov r8, r0
	str r4, [sp, #0x30]
	cmp r8, r5
	blo _08004D36
	subs r0, r0, r5
	mov r8, r0
_08004D36:
	ldr r1, [r6, #4]
	str r1, [sp, #0x20]
	cmp r1, #0
	blt _08004D4E
	ldr r4, [r6, #0x2c]
	lsls r1, r4, #0xc
	ldr r0, [sp, #0x20]
	bl sub_080446C0
	adds r3, r0, #0
	adds r1, r4, #0
	b _08004D66
_08004D4E:
	ldr r4, [r6, #0x2c]
	lsls r5, r4, #0xc
	ldr r2, [sp, #0x20]
	rsbs r0, r2, #0
	adds r1, r5, #0
	bl sub_080446C0
	subs r3, r5, r0
	adds r1, r4, #0
	cmp r3, r5
	blo _08004D66
	subs r3, r3, r5
_08004D66:
	mov r4, r8
	asrs r0, r4, #8
	cmp r0, #0
	bge _08004D70
	adds r0, #0xf
_08004D70:
	asrs r0, r0, #4
	mov r8, r0
	asrs r0, r3, #8
	cmp r0, #0
	bge _08004D7C
	adds r0, #0xf
_08004D7C:
	asrs r3, r0, #4
	movs r0, #0
	ldr r2, [r6, #0x1c]
	str r2, [sp, #0x28]
	ldr r4, [r6, #0x18]
	str r4, [sp, #0x24]
	lsls r2, r7, #0x10
	str r2, [sp, #0x3c]
	str r1, [sp, #0x18]
	ldr r4, [sp, #0x30]
	mov sb, r4
	lsls r1, r1, #0xc
	str r1, [sp, #0x1c]
_08004D96:
	movs r7, #0
	lsls r2, r0, #6
	str r2, [sp, #0x38]
	lsrs r4, r0, #1
	str r4, [sp, #0x34]
	adds r1, r0, #2
	str r1, [sp, #0x2c]
	lsls r0, r0, #0xb
	ldr r2, [sp, #0x20]
	adds r2, r2, r0
	mov sl, r2
_08004DAC:
	ldr r4, [sp, #0x14]
	ldr r0, [sp, #0x38]
	adds r1, r4, r0
	lsls r0, r7, #1
	adds r5, r1, r0
	ldr r1, [sp, #0x34]
	adds r0, r3, r1
	ldr r1, [sp, #0x18]
	str r3, [sp, #0x40]
	bl sub_080446C0
	mov r4, sb
	muls r4, r0, r4
	lsls r4, r4, #1
	ldr r2, [sp, #0x28]
	adds r4, r2, r4
	lsrs r0, r7, #1
	add r0, r8
	mov r1, sb
	bl sub_080446C0
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r2, [r4]
	movs r4, #0x8e
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	ldr r3, [sp, #0x40]
	cmp r0, #0
	bne _08004E06
	lsls r0, r7, #0xb
	ldr r1, [r6]
	adds r1, r1, r0
	ldr r4, [sp, #0x30]
	lsls r0, r4, #0xc
	cmp r1, r0
	bhs _08004DFE
	ldr r0, [sp, #0x1c]
	cmp sl, r0
	blo _08004E06
_08004DFE:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r2, [r0]
_08004E06:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r2, [sp, #0x24]
	adds r0, r0, r2
	ldrh r1, [r0]
	strh r1, [r5]
	ldrh r1, [r0, #2]
	strh r1, [r5, #2]
	adds r2, r5, #0
	adds r2, #0x40
	ldrh r1, [r0, #4]
	strh r1, [r2]
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0, #6]
	strh r0, [r1]
	adds r7, #2
	cmp r7, #0x1f
	bls _08004DAC
	ldr r0, [sp, #0x2c]
	cmp r0, #0x1f
	bls _08004D96
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r1, [r0]
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0x40
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0x3c]
	lsrs r0, r3, #0x10
	str r0, [sp, #0xc]
	ldr r4, [sp, #0x14]
	str r4, [sp, #0x10]
	adds r0, r4, #0
	movs r3, #1
	bl sub_08002E7C
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r1, [r6, #0x10]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	ldr r2, [r6, #0x14]
	lsls r2, r2, #8
	asrs r2, r2, #0x10
	bl sub_08000D9C
_08004E7A:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08004CC0

	thumb_func_start sub_08004E8C
sub_08004E8C: @ 0x08004E8C
	push {r4, lr}
	adds r3, r0, #0
	ldrh r4, [r2]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08004EDC
	ldr r2, [r3]
	ldr r0, [r3, #8]
	cmp r2, r0
	blt _08004EB0
	cmp r2, r0
	ble _08004EC4
	movs r0, #0xf8
	lsls r0, r0, #9
	adds r2, r2, r0
_08004EB0:
	cmp r2, #0
	blt _08004EBC
	ldr r0, [r3, #0x28]
	lsls r0, r0, #0xc
	cmp r2, r0
	blo _08004EC4
_08004EBC:
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r4, [r0]
_08004EC4:
	ldr r0, [r3, #4]
	adds r1, r0, r1
	cmp r1, #0
	blt _08004ED4
	ldr r0, [r3, #0x2c]
	lsls r0, r0, #0xc
	cmp r1, r0
	bls _08004EDC
_08004ED4:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r4, [r0]
_08004EDC:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08004E8C

	thumb_func_start sub_08004EE4
sub_08004EE4: @ 0x08004EE4
	push {r4, lr}
	adds r3, r0, #0
	ldrh r4, [r2]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _08004F34
	ldr r2, [r3, #4]
	ldr r0, [r3, #0xc]
	cmp r2, r0
	blt _08004F08
	cmp r2, r0
	ble _08004F1C
	movs r0, #0xf8
	lsls r0, r0, #9
	adds r2, r2, r0
_08004F08:
	cmp r2, #0
	blt _08004F14
	ldr r0, [r3, #0x2c]
	lsls r0, r0, #0xc
	cmp r2, r0
	blo _08004F1C
_08004F14:
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r0, r3, r2
	ldr r4, [r0]
_08004F1C:
	ldr r0, [r3]
	adds r1, r0, r1
	cmp r1, #0
	blt _08004F2C
	ldr r0, [r3, #0x28]
	lsls r0, r0, #0xc
	cmp r1, r0
	bls _08004F34
_08004F2C:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r4, [r0]
_08004F34:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08004EE4

	thumb_func_start sub_08004F3C
sub_08004F3C: @ 0x08004F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r2, _08004F94 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r6, r0, r1
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _08004F5C
	b _08005324
_08004F5C:
	ldr r4, [r6]
	ldr r5, [r6, #8]
	subs r1, r4, r5
	ldr r0, [r6, #0x10]
	adds r0, r0, r1
	ldr r2, _08004F98 @ =0x0001FFFF
	ands r0, r2
	str r0, [r6, #0x10]
	ldr r3, [r6, #4]
	ldr r1, [r6, #0xc]
	subs r1, r3, r1
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	ands r0, r2
	str r0, [r6, #0x14]
	adds r7, r4, #0
	mov sl, r5
	mov r8, r3
	cmp r7, #0
	blt _08004F9C
	ldr r4, [r6, #0x28]
	lsls r1, r4, #0xc
	adds r0, r7, #0
	bl sub_080446C0
	str r0, [sp, #0x10]
	mov sb, r4
	b _08004FB6
	.align 2, 0
_08004F94: .4byte 0x02031FA4
_08004F98: .4byte 0x0001FFFF
_08004F9C:
	ldr r4, [r6, #0x28]
	lsls r5, r4, #0xc
	rsbs r0, r7, #0
	adds r1, r5, #0
	bl sub_080446C0
	subs r0, r5, r0
	str r0, [sp, #0x10]
	mov sb, r4
	cmp r0, r5
	blo _08004FB6
	subs r0, r0, r5
	str r0, [sp, #0x10]
_08004FB6:
	mov r0, r8
	cmp r0, #0
	blt _08004FC6
	ldr r1, [r6, #0x2c]
	lsls r1, r1, #0xc
	bl sub_080446C0
	b _08004FDE
_08004FC6:
	ldr r0, [r6, #0x2c]
	lsls r4, r0, #0xc
	mov r1, r8
	rsbs r0, r1, #0
	adds r1, r4, #0
	bl sub_080446C0
	subs r0, r4, r0
	str r0, [sp, #0x14]
	cmp r0, r4
	blo _08004FE0
	subs r0, r0, r4
_08004FDE:
	str r0, [sp, #0x14]
_08004FE0:
	ldr r2, [r6, #0x10]
	str r2, [sp, #0x18]
	ldr r3, [r6, #0x14]
	str r3, [sp, #0x1c]
	cmp r7, sl
	bne _08004FEE
	b _08005184
_08004FEE:
	asrs r1, r7, #0xc
	mov r2, sl
	asrs r0, r2, #0xc
	cmp r1, r0
	bne _08004FFA
	b _08005184
_08004FFA:
	cmp r7, sl
	ble _08005016
	movs r1, #0xf8
	lsls r1, r1, #9
	ldr r3, [sp, #0x18]
	adds r2, r3, r1
	ands r2, r1
	asrs r2, r2, #0xb
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, r2, r1
	mov r3, sb
	lsls r1, r3, #0xc
	b _08005028
_08005016:
	movs r2, #0xf8
	lsls r2, r2, #9
	ldr r3, [sp, #0x18]
	ands r2, r3
	asrs r2, r2, #0xb
	str r2, [sp, #0xc]
	mov r0, sb
	lsls r1, r0, #0xc
	ldr r0, [sp, #0x10]
_08005028:
	bl sub_080446C0
	adds r7, r0, #0
	ldr r1, [sp, #0x14]
	asrs r0, r1, #0xc
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	lsls r0, r0, #1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	asrs r0, r7, #0xc
	lsls r0, r0, #1
	adds r4, r1, r0
	ldr r7, [sp, #0x14]
	movs r1, #0xf8
	lsls r1, r1, #9
	ldr r3, [sp, #0x1c]
	ands r1, r3
	asrs r1, r1, #0xb
	mov sl, r1
	movs r0, #0
	mov sb, r0
	movs r0, #0x40
	subs r3, r0, r1
	cmp r3, #0x40
	ble _08005060
	movs r3, #0x40
_08005060:
	mov r1, sl
	lsls r0, r1, #1
	adds r0, #0x30
	adds r5, r6, r0
	movs r2, #0
	mov r8, r2
	movs r0, #0x30
	adds r0, r0, r6
	mov sl, r0
	cmp r8, r3
	bge _080050E0
_08005076:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x20]
	bl sub_08004E8C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r6, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strb r0, [r5]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	strb r0, [r5, #1]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	strb r0, [r5, #2]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	strb r0, [r5, #3]
	adds r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r7, r7, r1
	ldr r1, [r6, #0x2c]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x20]
	cmp r7, r0
	bhs _080050C6
	ldr r0, [r6, #0x28]
	lsls r0, r0, #1
	adds r4, r4, r0
	b _080050D2
_080050C6:
	movs r7, #0
	subs r1, #1
	ldr r0, [r6, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	subs r4, r4, r0
_080050D2:
	movs r2, #2
	add r8, r2
	movs r0, #0x80
	lsls r0, r0, #5
	add sb, r0
	cmp r8, r3
	blt _08005076
_080050E0:
	cmp r3, #0x3f
	bgt _0800515C
	movs r0, #0x40
	subs r3, r0, r3
	mov r5, sl
	movs r1, #0
	mov r8, r1
	cmp r8, r3
	bge _0800515C
_080050F2:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x20]
	bl sub_08004E8C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r6, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strb r0, [r5]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	strb r0, [r5, #1]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	strb r0, [r5, #2]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	strb r0, [r5, #3]
	adds r5, #4
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r7, r2
	ldr r1, [r6, #0x2c]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x20]
	cmp r7, r0
	bhs _08005142
	ldr r0, [r6, #0x28]
	lsls r0, r0, #1
	adds r4, r4, r0
	b _0800514E
_08005142:
	movs r7, #0
	subs r1, #1
	ldr r0, [r6, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	subs r4, r4, r0
_0800514E:
	movs r0, #2
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #5
	add sb, r1
	cmp r8, r3
	blt _080050F2
_0800515C:
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r3, [sp, #0xc]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r3, r1
	ldr r1, [r0]
	adds r1, r1, r2
	movs r0, #2
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r0, sl
	movs r2, #2
	movs r3, #0x40
	bl sub_08002DBC
_08005184:
	ldr r3, [r6, #4]
	ldr r2, [r6, #0xc]
	cmp r3, r2
	bne _0800518E
	b _08005324
_0800518E:
	asrs r1, r3, #0xc
	asrs r0, r2, #0xc
	cmp r1, r0
	bne _08005198
	b _08005324
_08005198:
	cmp r3, r2
	ble _080051B4
	movs r2, #0xf8
	lsls r2, r2, #9
	ldr r3, [sp, #0x1c]
	adds r1, r3, r2
	ands r1, r2
	asrs r1, r1, #0xb
	mov sl, r1
	ldr r1, [sp, #0x14]
	adds r0, r1, r2
	ldr r1, [r6, #0x2c]
	lsls r1, r1, #0xc
	b _080051C6
_080051B4:
	movs r1, #0xf8
	lsls r1, r1, #9
	ldr r3, [sp, #0x1c]
	ands r1, r3
	asrs r1, r1, #0xb
	mov sl, r1
	ldr r1, [r6, #0x2c]
	lsls r1, r1, #0xc
	ldr r0, [sp, #0x14]
_080051C6:
	bl sub_080446C0
	adds r7, r0, #0
	asrs r1, r7, #0xc
	ldr r0, [r6, #0x28]
	muls r0, r1, r0
	lsls r0, r0, #1
	ldr r1, [r6, #0x1c]
	adds r1, r1, r0
	ldr r2, [sp, #0x10]
	asrs r0, r2, #0xc
	lsls r0, r0, #1
	adds r4, r1, r0
	ldr r7, [sp, #0x10]
	movs r1, #0xf8
	lsls r1, r1, #9
	ldr r3, [sp, #0x18]
	ands r1, r3
	asrs r0, r1, #0xb
	str r0, [sp, #0xc]
	movs r2, #0
	mov sb, r2
	movs r0, #0x40
	ldr r2, [sp, #0xc]
	subs r3, r0, r2
	cmp r3, #0x40
	ble _080051FE
	movs r3, #0x40
_080051FE:
	ldr r1, [sp, #0xc]
	asrs r0, r1, #1
	lsls r0, r0, #1
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r5, r6, r0
	movs r0, #0
	mov r8, r0
	mov r1, sl
	lsls r1, r1, #6
	mov sl, r1
	cmp r8, r3
	bge _08005280
_0800521A:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x20]
	bl sub_08004EE4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r6, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strb r0, [r5]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	strb r0, [r5, #1]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	adds r2, r5, #0
	adds r2, #0x40
	strb r0, [r2]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	strb r0, [r2, #1]
	adds r5, #2
	movs r2, #0x80
	lsls r2, r2, #5
	adds r7, r7, r2
	ldr r1, [r6, #0x28]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x20]
	cmp r7, r0
	bhs _0800526A
	adds r4, #2
	b _08005272
_0800526A:
	movs r7, #0
	lsls r0, r1, #1
	subs r0, r4, r0
	adds r4, r0, #2
_08005272:
	movs r0, #2
	add r8, r0
	movs r1, #0x80
	lsls r1, r1, #5
	add sb, r1
	cmp r8, r3
	blt _0800521A
_08005280:
	cmp r3, #0x3f
	bgt _080052FC
	movs r0, #0x40
	subs r3, r0, r3
	movs r2, #0x98
	lsls r2, r2, #1
	adds r5, r6, r2
	movs r0, #0
	mov r8, r0
	cmp r8, r3
	bge _080052FC
_08005296:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	str r3, [sp, #0x20]
	bl sub_08004EE4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r6, #0x18]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrh r0, [r0]
	strb r0, [r5]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #2]
	strb r0, [r5, #1]
	ldr r0, [r6, #0x18]
	adds r0, r1, r0
	ldrh r0, [r0, #4]
	adds r2, r5, #0
	adds r2, #0x40
	strb r0, [r2]
	ldr r0, [r6, #0x18]
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	strb r0, [r2, #1]
	adds r5, #2
	movs r1, #0x80
	lsls r1, r1, #5
	adds r7, r7, r1
	ldr r1, [r6, #0x28]
	lsls r0, r1, #0xc
	ldr r3, [sp, #0x20]
	cmp r7, r0
	bhs _080052E6
	adds r4, #2
	b _080052EE
_080052E6:
	movs r7, #0
	lsls r0, r1, #1
	subs r0, r4, r0
	adds r4, r0, #2
_080052EE:
	movs r2, #2
	add r8, r2
	movs r0, #0x80
	lsls r0, r0, #5
	add sb, r0
	cmp r8, r3
	blt _08005296
_080052FC:
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r2, #0x8c
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r2, #0xc0
	lsls r2, r2, #0x13
	add r2, sl
	ldr r1, [r1]
	adds r1, r1, r2
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0x80
	movs r3, #1
	bl sub_08002DBC
_08005324:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08004F3C

	thumb_func_start sub_08005334
sub_08005334: @ 0x08005334
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sb, r1
	ldr r2, _08005388 @ =0x02031FA4
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, [r2]
	adds r7, r0, r1
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _08005356
	b _08005494
_08005356:
	ldr r0, [r7]
	str r0, [r7, #8]
	ldr r1, [r7, #4]
	str r1, [r7, #0xc]
	ldr r2, _0800538C @ =0x00000FFF
	ands r0, r2
	str r0, [r7, #0x10]
	ands r1, r2
	str r1, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #5
	movs r0, #1
	bl sub_080038A8
	str r0, [sp, #0x14]
	ldr r0, [r7]
	cmp r0, #0
	blt _08005390
	ldr r4, [r7, #0x28]
	lsls r1, r4, #0xc
	bl sub_080446C0
	mov r8, r0
	adds r6, r4, #0
	b _080053AA
	.align 2, 0
_08005388: .4byte 0x02031FA4
_0800538C: .4byte 0x00000FFF
_08005390:
	ldr r4, [r7, #0x28]
	lsls r5, r4, #0xc
	rsbs r0, r0, #0
	adds r1, r5, #0
	bl sub_080446C0
	subs r0, r5, r0
	mov r8, r0
	adds r6, r4, #0
	cmp r8, r5
	blo _080053AA
	subs r0, r0, r5
	mov r8, r0
_080053AA:
	ldr r0, [r7, #4]
	cmp r0, #0
	blt _080053BE
	ldr r4, [r7, #0x2c]
	lsls r1, r4, #0xc
	bl sub_080446C0
	adds r3, r0, #0
	str r4, [sp, #0x2c]
	b _080053D4
_080053BE:
	ldr r4, [r7, #0x2c]
	lsls r5, r4, #0xc
	rsbs r0, r0, #0
	adds r1, r5, #0
	bl sub_080446C0
	subs r3, r5, r0
	str r4, [sp, #0x2c]
	cmp r3, r5
	blo _080053D4
	subs r3, r3, r5
_080053D4:
	mov r1, r8
	asrs r0, r1, #8
	cmp r0, #0
	bge _080053DE
	adds r0, #0xf
_080053DE:
	asrs r0, r0, #4
	mov r8, r0
	asrs r0, r3, #8
	cmp r0, #0
	bge _080053EA
	adds r0, #0xf
_080053EA:
	asrs r3, r0, #4
	movs r0, #0
	ldr r1, [r7, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [r7, #0x18]
	str r1, [sp, #0x1c]
	mov r1, sb
	lsls r1, r1, #0x10
	str r1, [sp, #0x28]
	mov sb, r6
_080053FE:
	movs r6, #0
	lsls r1, r0, #6
	str r1, [sp, #0x24]
	lsrs r1, r0, #1
	mov sl, r1
	adds r0, #2
	str r0, [sp, #0x18]
_0800540C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	adds r5, r0, r1
	adds r5, r5, r6
	mov r1, sl
	adds r0, r3, r1
	ldr r1, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl sub_080446C0
	mov r4, sb
	muls r4, r0, r4
	lsls r4, r4, #1
	ldr r0, [sp, #0x20]
	adds r4, r0, r4
	lsrs r0, r6, #1
	add r0, r8
	mov r1, sb
	bl sub_080446C0
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [sp, #0x1c]
	adds r1, r1, r0
	ldrb r2, [r1, #2]
	lsls r2, r2, #8
	ldrb r0, [r1]
	adds r0, r0, r2
	strh r0, [r5]
	adds r5, #0x40
	ldrb r2, [r1, #6]
	lsls r2, r2, #8
	ldrb r0, [r1, #4]
	adds r0, r0, r2
	strh r0, [r5]
	adds r6, #2
	ldr r3, [sp, #0x30]
	cmp r6, #0x3f
	bls _0800540C
	ldr r0, [sp, #0x18]
	cmp r0, #0x3f
	bls _080053FE
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #0x40
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r3, [sp, #0x28]
	lsrs r0, r3, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x10]
	movs r3, #1
	bl sub_08002E7C
_08005494:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08005334

	thumb_func_start sub_080054A4
sub_080054A4: @ 0x080054A4
	push {lr}
	ldr r1, _080054D0 @ =0x02031EE0
	adds r3, r1, #0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x14
_080054B0:
	str r2, [r0]
	subs r0, #4
	cmp r0, r3
	bge _080054B0
	movs r0, #0
	strb r0, [r1, #0x18]
	strb r0, [r1, #0x19]
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x1b]
	strb r0, [r1, #0x1c]
	strb r0, [r1, #0x1d]
	strb r0, [r1, #0x1e]
	strh r0, [r1, #0x20]
	strh r0, [r1, #0x22]
	pop {r0}
	bx r0
	.align 2, 0
_080054D0: .4byte 0x02031EE0
	thumb_func_end sub_080054A4

	thumb_func_start sub_080054D4
sub_080054D4: @ 0x080054D4
	bx lr
	.align 2, 0
	thumb_func_end sub_080054D4

	thumb_func_start sub_080054D8
sub_080054D8: @ 0x080054D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08003A5C
	ldr r1, _080054F4 @ =0x02031EE0
	lsls r4, r4, #2
	adds r4, r4, r1
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080054F4: .4byte 0x02031EE0
	thumb_func_end sub_080054D8

	thumb_func_start sub_080054F8
sub_080054F8: @ 0x080054F8
	ldr r1, _08005500 @ =0x02031EE0
	strb r0, [r1, #0x18]
	bx lr
	.align 2, 0
_08005500: .4byte 0x02031EE0
	thumb_func_end sub_080054F8

	thumb_func_start sub_08005504
sub_08005504: @ 0x08005504
	ldr r1, _0800550C @ =0x02031EE0
	strb r0, [r1, #0x19]
	bx lr
	.align 2, 0
_0800550C: .4byte 0x02031EE0
	thumb_func_end sub_08005504

	thumb_func_start sub_08005510
sub_08005510: @ 0x08005510
	ldr r0, _08005518 @ =0x02031EE0
	ldrb r0, [r0, #0x19]
	bx lr
	.align 2, 0
_08005518: .4byte 0x02031EE0
	thumb_func_end sub_08005510

	thumb_func_start sub_0800551C
sub_0800551C: @ 0x0800551C
	ldr r1, _08005524 @ =0x02031EE0
	strb r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_08005524: .4byte 0x02031EE0
	thumb_func_end sub_0800551C

	thumb_func_start sub_08005528
sub_08005528: @ 0x08005528
	ldr r1, _08005530 @ =0x02031EE0
	strb r0, [r1, #0x1b]
	bx lr
	.align 2, 0
_08005530: .4byte 0x02031EE0
	thumb_func_end sub_08005528

	thumb_func_start sub_08005534
sub_08005534: @ 0x08005534
	ldr r1, _0800553C @ =0x02031EE0
	strb r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_0800553C: .4byte 0x02031EE0
	thumb_func_end sub_08005534

	thumb_func_start sub_08005540
sub_08005540: @ 0x08005540
	ldr r1, _08005548 @ =0x02031EE0
	strb r0, [r1, #0x1d]
	bx lr
	.align 2, 0
_08005548: .4byte 0x02031EE0
	thumb_func_end sub_08005540

	thumb_func_start sub_0800554C
sub_0800554C: @ 0x0800554C
	ldr r1, _08005554 @ =0x02031EE0
	strb r0, [r1, #0x1e]
	bx lr
	.align 2, 0
_08005554: .4byte 0x02031EE0
	thumb_func_end sub_0800554C

	thumb_func_start sub_08005558
sub_08005558: @ 0x08005558
	ldr r1, _08005560 @ =0x02031EE0
	strh r0, [r1, #0x20]
	bx lr
	.align 2, 0
_08005560: .4byte 0x02031EE0
	thumb_func_end sub_08005558

	thumb_func_start sub_08005564
sub_08005564: @ 0x08005564
	ldr r0, _0800556C @ =0x02031EE0
	ldrh r0, [r0, #0x20]
	bx lr
	.align 2, 0
_0800556C: .4byte 0x02031EE0
	thumb_func_end sub_08005564

	thumb_func_start sub_08005570
sub_08005570: @ 0x08005570
	ldr r1, _08005578 @ =0x02031EE0
	strh r0, [r1, #0x22]
	bx lr
	.align 2, 0
_08005578: .4byte 0x02031EE0
	thumb_func_end sub_08005570

	thumb_func_start sub_0800557C
sub_0800557C: @ 0x0800557C
	ldr r0, _08005584 @ =0x02031EE0
	ldrh r0, [r0, #0x22]
	bx lr
	.align 2, 0
_08005584: .4byte 0x02031EE0
	thumb_func_end sub_0800557C

	thumb_func_start sub_08005588
sub_08005588: @ 0x08005588
	movs r1, #0
	str r1, [r0]
	strb r1, [r0, #4]
	ldr r3, _080055CC @ =0x02031EE0
	ldrb r2, [r3, #0x18]
	strb r2, [r0, #5]
	ldrb r2, [r3, #0x19]
	strb r2, [r0, #6]
	ldrb r2, [r3, #0x1a]
	strb r2, [r0, #7]
	ldrb r2, [r3, #0x1b]
	strb r2, [r0, #8]
	ldrb r2, [r3, #0x1c]
	strb r2, [r0, #9]
	ldrb r2, [r3, #0x1d]
	strb r2, [r0, #0xa]
	ldrb r2, [r3, #0x1e]
	strb r2, [r0, #0xb]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	strb r1, [r0, #0x19]
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	strh r1, [r0, #0x28]
	strh r1, [r0, #0x2a]
	strh r1, [r0, #0x2c]
	adds r0, #0xa8
	str r1, [r0]
	bx lr
	.align 2, 0
_080055CC: .4byte 0x02031EE0
	thumb_func_end sub_08005588

	thumb_func_start sub_080055D0
sub_080055D0: @ 0x080055D0
	str r1, [r0]
	bx lr
	thumb_func_end sub_080055D0

	thumb_func_start sub_080055D4
sub_080055D4: @ 0x080055D4
	strb r1, [r0, #4]
	bx lr
	thumb_func_end sub_080055D4

	thumb_func_start sub_080055D8
sub_080055D8: @ 0x080055D8
	strb r1, [r0, #5]
	bx lr
	thumb_func_end sub_080055D8

	thumb_func_start sub_080055DC
sub_080055DC: @ 0x080055DC
	strb r1, [r0, #6]
	bx lr
	thumb_func_end sub_080055DC

	thumb_func_start sub_080055E0
sub_080055E0: @ 0x080055E0
	strb r1, [r0, #7]
	bx lr
	thumb_func_end sub_080055E0

	thumb_func_start sub_080055E4
sub_080055E4: @ 0x080055E4
	strb r1, [r0, #8]
	bx lr
	thumb_func_end sub_080055E4

	thumb_func_start sub_080055E8
sub_080055E8: @ 0x080055E8
	strb r1, [r0, #9]
	bx lr
	thumb_func_end sub_080055E8

	thumb_func_start sub_080055EC
sub_080055EC: @ 0x080055EC
	strb r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_080055EC

	thumb_func_start sub_080055F0
sub_080055F0: @ 0x080055F0
	strb r1, [r0, #0xb]
	bx lr
	thumb_func_end sub_080055F0

	thumb_func_start sub_080055F4
sub_080055F4: @ 0x080055F4
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_080055F4

	thumb_func_start sub_080055F8
sub_080055F8: @ 0x080055F8
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end sub_080055F8

	thumb_func_start sub_080055FC
sub_080055FC: @ 0x080055FC
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end sub_080055FC

	thumb_func_start sub_08005600
sub_08005600: @ 0x08005600
	lsls r2, r2, #5
	adds r2, r2, r1
	str r2, [r0, #0xc]
	ldr r1, _08005618 @ =0x02031EE0
	lsls r2, r2, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	ldrh r1, [r1, #0x20]
	adds r2, r2, r1
	str r2, [r0, #0x10]
	bx lr
	.align 2, 0
_08005618: .4byte 0x02031EE0
	thumb_func_end sub_08005600

	thumb_func_start sub_0800561C
sub_0800561C: @ 0x0800561C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	strb r3, [r4, #0x18]
	strb r2, [r4, #0x19]
	adds r0, r3, #0
	cmp r3, #0
	bge _0800562E
	adds r0, r3, #7
_0800562E:
	asrs r3, r0, #3
	adds r0, r2, #0
	cmp r2, #0
	bge _08005638
	adds r0, r2, #7
_08005638:
	asrs r2, r0, #3
	ldr r1, _08005654 @ =0x02031EE0
	lsls r0, r2, #5
	adds r0, r0, r3
	lsls r0, r0, #1
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r0, r0, r2
	ldrh r1, [r1, #0x22]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005654: .4byte 0x02031EE0
	thumb_func_end sub_0800561C

	thumb_func_start sub_08005658
sub_08005658: @ 0x08005658
	strh r1, [r0, #0x1a]
	bx lr
	thumb_func_end sub_08005658

	thumb_func_start sub_0800565C
sub_0800565C: @ 0x0800565C
	strh r1, [r0, #0x1c]
	bx lr
	thumb_func_end sub_0800565C

	thumb_func_start sub_08005660
sub_08005660: @ 0x08005660
	adds r0, #0xa8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_08005660

	thumb_func_start sub_08005668
sub_08005668: @ 0x08005668
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov ip, r2
	mov r8, r3
	ldr r2, [r4]
	movs r5, #0
	movs r3, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _080056BC
	ldrb r4, [r4, #5]
	ldr r6, _080056A0 @ =0x0000853F
_08005686:
	ldrb r0, [r2]
	lsls r1, r0, #8
	adds r2, #1
	ldrb r0, [r2]
	orrs r1, r0
	adds r2, #1
	cmp r4, #4
	beq _080056AA
	cmp r4, #4
	bgt _080056A4
	cmp r4, #2
	beq _080056AE
	b _080056B4
	.align 2, 0
_080056A0: .4byte 0x0000853F
_080056A4:
	cmp r4, #5
	beq _080056B2
	b _080056B4
_080056AA:
	cmp r1, r6
	bls _080056B2
_080056AE:
	adds r3, #0xc
	b _080056B4
_080056B2:
	adds r3, #8
_080056B4:
	adds r5, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne _08005686
_080056BC:
	str r3, [r7]
	adds r0, r3, #4
	cmp r0, #0
	bge _080056C6
	adds r0, #7
_080056C6:
	asrs r0, r0, #3
	mov r1, ip
	str r0, [r1]
	mov r0, r8
	str r5, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08005668

	thumb_func_start sub_080056DC
sub_080056DC: @ 0x080056DC
	push {lr}
	sub sp, #0xc
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_08005668
	ldr r0, [sp]
	add sp, #0xc
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080056DC

	thumb_func_start sub_080056F4
sub_080056F4: @ 0x080056F4
	push {lr}
	sub sp, #0xc
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_08005668
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080056F4

	thumb_func_start sub_0800570C
sub_0800570C: @ 0x0800570C
	push {lr}
	sub sp, #0xc
	add r2, sp, #4
	add r3, sp, #8
	mov r1, sp
	bl sub_08005668
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800570C

	thumb_func_start sub_08005724
sub_08005724: @ 0x08005724
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x18
	lsls r0, r0, #8
	lsrs r2, r0, #0x18
	cmp r1, #0xdf
	bls _0800573A
	adds r0, r1, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_0800573A:
	subs r1, #0x81
	lsls r3, r1, #2
	lsls r0, r2, #0x18
	cmp r0, #0
	bge _0800574A
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_0800574A:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #6
	subs r0, #0x40
	adds r0, r0, r2
	subs r0, r0, r3
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08005724

	thumb_func_start sub_0800575C
sub_0800575C: @ 0x0800575C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	mov ip, r2
	adds r7, r3, #0
	movs r5, #0
	movs r6, #0x80
_08005772:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
_0800577C:
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _0800578A
	lsls r1, r2, #2
	mov r0, ip
	b _0800578E
_0800578A:
	lsls r1, r2, #2
	adds r0, r7, #0
_0800578E:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0800577C
	lsls r0, r5, #1
	add r0, r8
	str r4, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08005772
	movs r5, #1
	movs r6, #0x80
_080057B4:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
_080057BE:
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _080057CC
	lsls r1, r2, #2
	mov r0, ip
	b _080057D0
_080057CC:
	lsls r1, r2, #2
	adds r0, r7, #0
_080057D0:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080057BE
	lsls r0, r5, #1
	add r0, r8
	adds r0, #0x1e
	str r4, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080057B4
	movs r5, #0x10
	movs r6, #0x80
_080057F8:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
_08005802:
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _08005810
	lsls r1, r2, #2
	mov r0, ip
	b _08005814
_08005810:
	lsls r1, r2, #2
	adds r0, r7, #0
_08005814:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08005802
	lsls r0, r5, #1
	add r0, r8
	str r4, [r0, #0x20]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _080057F8
	movs r5, #0x11
	movs r0, #0x80
	mov sl, r0
_0800583C:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
	lsls r6, r5, #1
	adds r5, #2
_0800584A:
	adds r0, r3, #0
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _0800585A
	lsls r1, r2, #2
	mov r0, ip
	b _0800585E
_0800585A:
	lsls r1, r2, #2
	adds r0, r7, #0
_0800585E:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0800584A
	mov r1, r8
	adds r0, r6, r1
	adds r0, #0x3e
	str r4, [r0]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _0800583C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800575C

	thumb_func_start sub_08005890
sub_08005890: @ 0x08005890
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	mov ip, r2
	adds r7, r3, #0
	movs r5, #0
	movs r6, #0x80
_080058A6:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
_080058B0:
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _080058BE
	lsls r1, r2, #2
	mov r0, ip
	b _080058C2
_080058BE:
	lsls r1, r2, #2
	adds r0, r7, #0
_080058C2:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080058B0
	lsls r0, r5, #1
	add r0, r8
	str r4, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _080058A6
	movs r5, #0x10
	movs r0, #0x80
	mov sl, r0
_080058EA:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
	lsls r6, r5, #1
	adds r5, #2
_080058F8:
	adds r0, r3, #0
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08005908
	lsls r1, r2, #2
	mov r0, ip
	b _0800590C
_08005908:
	lsls r1, r2, #2
	adds r0, r7, #0
_0800590C:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080058F8
	mov r1, r8
	adds r0, r6, r1
	str r4, [r0, #0x20]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x17
	bls _080058EA
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08005890

	thumb_func_start sub_0800593C
sub_0800593C: @ 0x0800593C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	mov ip, r2
	adds r7, r3, #0
	movs r5, #0
	movs r6, #0x80
_08005952:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
_0800595C:
	adds r0, r3, #0
	ands r0, r6
	cmp r0, #0
	beq _0800596A
	lsls r1, r2, #2
	mov r0, ip
	b _0800596E
_0800596A:
	lsls r1, r2, #2
	adds r0, r7, #0
_0800596E:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0800595C
	lsls r0, r5, #2
	add r0, r8
	str r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _08005952
	movs r5, #8
	movs r0, #0x80
	mov sl, r0
_08005996:
	movs r4, #0
	mov r1, sb
	adds r0, r1, r5
	ldrb r3, [r0]
	movs r2, #0
	lsls r6, r5, #2
	adds r5, #1
_080059A4:
	adds r0, r3, #0
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080059B4
	lsls r1, r2, #2
	mov r0, ip
	b _080059B8
_080059B4:
	lsls r1, r2, #2
	adds r0, r7, #0
_080059B8:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080059A4
	mov r1, r8
	adds r0, r6, r1
	str r4, [r0, #0x20]
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xf
	bls _08005996
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800593C

	thumb_func_start sub_080059E8
sub_080059E8: @ 0x080059E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov sb, r1
	mov ip, r2
	adds r7, r3, #0
	movs r1, #0
	movs r0, #0x80
	mov r8, r0
_08005A00:
	movs r4, #0
	mov r2, sl
	adds r0, r2, r1
	ldrb r3, [r0]
	movs r2, #0
	lsls r5, r1, #2
	adds r6, r1, #1
_08005A0E:
	adds r0, r3, #0
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08005A1E
	lsls r1, r2, #2
	mov r0, ip
	b _08005A22
_08005A1E:
	lsls r1, r2, #2
	adds r0, r7, #0
_08005A22:
	lsls r0, r1
	orrs r4, r0
	lsls r0, r3, #0x19
	lsrs r3, r0, #0x18
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _08005A0E
	mov r2, sb
	adds r0, r5, r2
	str r4, [r0]
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _08005A00
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080059E8

	thumb_func_start sub_08005A50
sub_08005A50: @ 0x08005A50
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005AAC @ =0x02031F04
	movs r3, #0
_08005A5A:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #0xf
	bls _08005A5A
	movs r3, #0
	lsls r4, r4, #5
_08005A6C:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005A6C
	adds r0, r2, r4
	adds r2, r0, #0
	subs r2, #0x40
	movs r3, #0
_08005A82:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005A82
	adds r2, #0x10
	adds r1, #0x10
	movs r3, #0
_08005A96:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005A96
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005AAC: .4byte 0x02031F04
	thumb_func_end sub_08005A50

	thumb_func_start sub_08005AB0
sub_08005AB0: @ 0x08005AB0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005B58 @ =0x02031F04
	adds r2, #2
	movs r3, #0
	adds r5, r1, #2
	adds r6, r1, #0
	adds r6, #0x20
	adds r7, r1, #0
	adds r7, #0x40
	movs r0, #0x42
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x60
	adds r0, r0, r1
	mov r8, r0
_08005AD6:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005AD6
	adds r1, r5, #0
	subs r2, #2
	movs r3, #0
	lsls r4, r4, #5
_08005AEC:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005AEC
	adds r1, r6, #0
	subs r2, #0x1e
	movs r3, #0
_08005B00:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005B00
	adds r1, r7, #0
	adds r0, r2, r4
	adds r2, r0, #0
	subs r2, #0x40
	movs r3, #0
_08005B18:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005B18
	mov r1, ip
	adds r2, #0xe
	movs r3, #0
_08005B2C:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005B2C
	mov r1, r8
	subs r2, #0xe
	movs r3, #0
_08005B40:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005B40
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005B58: .4byte 0x02031F04
	thumb_func_end sub_08005AB0

	thumb_func_start sub_08005B5C
sub_08005B5C: @ 0x08005B5C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005BF4 @ =0x02031F04
	adds r2, #0x10
	movs r3, #0
	adds r5, r1, #0
	adds r5, #0x10
	adds r6, r1, #0
	adds r6, #0x40
	adds r7, r1, #0
	adds r7, #0x30
	movs r0, #0x60
	adds r0, r0, r1
	mov ip, r0
_08005B7A:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005B7A
	adds r1, #0x10
	adds r2, #0x10
	movs r3, #0
	lsls r4, r4, #5
_08005B90:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005B90
	adds r1, r5, #0
	adds r0, r2, r4
	adds r2, r0, #0
	subs r2, #0x40
	movs r3, #0
_08005BA8:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005BA8
	adds r1, r6, #0
	movs r3, #0
_08005BBA:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005BBA
	adds r1, r7, #0
	movs r3, #0
_08005BCC:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005BCC
	mov r1, ip
	movs r3, #0
_08005BDE:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005BDE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005BF4: .4byte 0x02031F04
	thumb_func_end sub_08005B5C

	thumb_func_start sub_08005BF8
sub_08005BF8: @ 0x08005BF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r3, _08005CEC @ =0x02031F04
	adds r2, #0x12
	movs r1, #0
	adds r5, r3, #2
	adds r6, r3, #0
	adds r6, #0x20
	adds r7, r3, #0
	adds r7, #0x10
	movs r0, #0x40
	adds r0, r0, r3
	mov ip, r0
	movs r0, #0x12
	adds r0, r0, r3
	mov r8, r0
	movs r0, #0x42
	adds r0, r0, r3
	mov sb, r0
	movs r0, #0x30
	adds r0, r0, r3
	mov sl, r0
_08005C2E:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005C2E
	adds r3, r5, #0
	adds r2, #0xe
	movs r1, #0
	lsls r4, r4, #5
_08005C44:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005C44
	adds r3, r6, #0
	subs r2, #0xe
	movs r1, #0
_08005C58:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005C58
	adds r3, r7, #0
	adds r0, r2, r4
	adds r2, r0, #0
	subs r2, #0x40
	movs r1, #0
_08005C70:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005C70
	mov r3, ip
	movs r1, #0
_08005C82:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005C82
	mov r3, r8
	subs r2, #2
	movs r1, #0
_08005C96:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005C96
	mov r3, sb
	movs r1, #0
_08005CA8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005CA8
	mov r3, sl
	subs r2, #0x1e
	movs r1, #0
_08005CBC:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005CBC
	ldr r3, _08005CF0 @ =0x02031F64
	movs r1, #0
_08005CCE:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r1, #1
	adds r3, #4
	adds r2, #4
	cmp r1, #3
	bls _08005CCE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005CEC: .4byte 0x02031F04
_08005CF0: .4byte 0x02031F64
	thumb_func_end sub_08005BF8

	thumb_func_start sub_08005CF4
sub_08005CF4: @ 0x08005CF4
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005D2C @ =0x02031F04
	movs r3, #0
_08005CFE:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #0xf
	bls _08005CFE
	adds r1, #0x20
	lsls r0, r4, #5
	adds r0, r2, r0
	adds r2, r0, #0
	subs r2, #0x20
	movs r3, #0
_08005D18:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005D18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005D2C: .4byte 0x02031F04
	thumb_func_end sub_08005CF4

	thumb_func_start sub_08005D30
sub_08005D30: @ 0x08005D30
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005D9C @ =0x02031F04
	adds r2, #2
	movs r3, #0
	adds r5, r1, #2
	adds r6, r1, #0
	adds r6, #0x40
	adds r7, r1, #0
	adds r7, #0x42
_08005D46:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005D46
	adds r1, r5, #0
	subs r2, #2
	movs r3, #0
	lsls r4, r4, #5
_08005D5C:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #7
	bls _08005D5C
	adds r1, r6, #0
	adds r0, r2, r4
	adds r2, r0, #0
	subs r2, #0x3e
	movs r3, #0
_08005D74:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005D74
	adds r1, r7, #0
	adds r2, #0xe
	movs r3, #0
_08005D88:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005D88
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005D9C: .4byte 0x02031F04
	thumb_func_end sub_08005D30

	thumb_func_start sub_08005DA0
sub_08005DA0: @ 0x08005DA0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005DF4 @ =0x02031F04
	adds r2, #0x10
	movs r3, #0
	adds r5, r1, #0
	adds r5, #0x10
	adds r6, r1, #0
	adds r6, #0x40
_08005DB4:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005DB4
	adds r1, r5, #0
	lsls r0, r4, #5
	adds r0, r2, r0
	adds r2, r0, #0
	subs r2, #0x20
	movs r3, #0
_08005DCE:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005DCE
	adds r1, r6, #0
	movs r3, #0
_08005DE0:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #7
	bls _08005DE0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08005DF4: .4byte 0x02031F04
	thumb_func_end sub_08005DA0

	thumb_func_start sub_08005DF8
sub_08005DF8: @ 0x08005DF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005E9C @ =0x02031F04
	adds r2, #0x12
	movs r3, #0
	adds r5, r1, #2
	adds r6, r1, #0
	adds r6, #0x10
	adds r7, r1, #0
	adds r7, #0x40
	movs r0, #0x12
	adds r0, r0, r1
	mov ip, r0
	movs r0, #0x42
	adds r0, r0, r1
	mov r8, r0
_08005E1E:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005E1E
	adds r1, r5, #0
	adds r2, #0xe
	movs r3, #0
	lsls r4, r4, #5
_08005E34:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005E34
	adds r1, r6, #0
	adds r0, r2, r4
	adds r2, r0, #0
	subs r2, #0x3e
	movs r3, #0
_08005E4C:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005E4C
	adds r1, r7, #0
	movs r3, #0
_08005E5E:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005E5E
	mov r1, ip
	subs r2, #2
	movs r3, #0
_08005E72:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005E72
	mov r1, r8
	movs r3, #0
_08005E84:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #4
	adds r2, #4
	cmp r3, #3
	bls _08005E84
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005E9C: .4byte 0x02031F04
	thumb_func_end sub_08005DF8

	thumb_func_start sub_08005EA0
sub_08005EA0: @ 0x08005EA0
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r1, _08005ED8 @ =0x02031F04
	movs r3, #0
_08005EAA:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #0xf
	bls _08005EAA
	adds r1, #0x20
	lsls r0, r4, #5
	adds r0, r2, r0
	adds r2, r0, #0
	subs r2, #0x20
	movs r3, #0
_08005EC4:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r3, #1
	adds r1, #2
	adds r2, #2
	cmp r3, #0xf
	bls _08005EC4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005ED8: .4byte 0x02031F04
	thumb_func_end sub_08005EA0

	thumb_func_start sub_08005EDC
sub_08005EDC: @ 0x08005EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r5, r0, #0
	add r1, sp, #0xc
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl sub_08005668
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	bne _08005F0E
	ldrb r0, [r5, #0x18]
	movs r1, #7
	ands r1, r0
	adds r1, #4
	ldr r0, [sp, #0xc]
	adds r0, r0, r1
	cmp r0, #0
	bge _08005F1A
	adds r0, #7
	b _08005F1A
_08005F0E:
	ldrb r1, [r5, #0x18]
	movs r0, #7
	ands r0, r1
	adds r0, #4
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
_08005F1A:
	asrs r0, r0, #3
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #7
	movs r0, #1
	bl sub_080038A8
	adds r6, r0, #0
	ldr r1, [sp, #0x10]
	lsls r1, r1, #3
	movs r0, #1
	bl sub_080038A8
	mov sb, r0
	movs r4, #0
	ldr r0, [sp, #0x14]
	lsls r0, r0, #7
	adds r2, r5, #0
	adds r2, #0x30
	str r2, [sp, #0x24]
	adds r7, r5, #0
	adds r7, #0x48
	str r7, [sp, #0x28]
	adds r1, r5, #0
	adds r1, #0x60
	str r1, [sp, #0x2c]
	adds r2, #0x3c
	str r2, [sp, #0x30]
	adds r7, #0x30
	str r7, [sp, #0x34]
	adds r1, #0x24
	str r1, [sp, #0x38]
	adds r2, #0x24
	str r2, [sp, #0x3c]
	cmp r4, r0
	bge _08005F76
_08005F62:
	adds r2, r6, r4
	ldrb r0, [r5, #8]
	lsls r1, r0, #4
	adds r0, r0, r1
	strb r0, [r2]
	adds r4, #1
	ldr r0, [sp, #0x14]
	lsls r0, r0, #7
	cmp r4, r0
	blt _08005F62
_08005F76:
	str r6, [r5, #0x20]
	mov r7, sb
	str r7, [r5, #0x24]
	movs r0, #0
	strh r0, [r5, #0x28]
	strh r0, [r5, #0x2a]
	ldrb r1, [r5, #0x18]
	ldrh r0, [r5, #0x1c]
	adds r1, r1, r0
	mov r8, r1
	ldrb r0, [r5, #0x19]
	mov sl, r0
	ldr r1, [r5]
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r2, r0
	blo _08005F9E
	b _080061E6
_08005F9E:
	movs r7, #7
	mov r0, sl
	ands r0, r7
	str r0, [sp, #0x20]
_08005FA6:
	ldr r1, [sp, #0x18]
	ldrb r0, [r1]
	lsls r4, r0, #8
	adds r1, #1
	ldrb r0, [r1]
	orrs r4, r0
	adds r1, #1
	str r1, [sp, #0x18]
	ldrb r0, [r5, #5]
	cmp r0, #4
	beq _08006078
	cmp r0, #4
	bgt _08005FC6
	cmp r0, #2
	beq _08005FCE
	b _080061D8
_08005FC6:
	cmp r0, #5
	bne _08005FCC
	b _080061A4
_08005FCC:
	b _080061D8
_08005FCE:
	adds r0, r4, #0
	bl sub_08005724
	ldr r3, _08006010 @ =0x02031EE0
	ldrb r2, [r5, #5]
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r1, #0x1a
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	adds r7, r0, #2
	ldrb r0, [r5, #0x18]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, r8
	subs r0, r2, r0
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r5, #0x20]
	adds r6, r1, r0
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r2, [r0]
	cmp r2, #0
	beq _08006014
	adds r0, r4, #0
	adds r1, r3, #0
	adds r1, #0x24
	bl sub_08044034
	b _08006016
	.align 2, 0
_08006010: .4byte 0x02031EE0
_08006014:
	movs r0, #0
_08006016:
	cmp r0, #0
	bne _08006026
	ldrb r2, [r5, #7]
	ldrb r3, [r5, #8]
	adds r0, r7, #0
	ldr r1, _08006044 @ =0x02031F04
	bl sub_0800575C
_08006026:
	movs r1, #7
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _08006048
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0800605A
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005A50
	b _08006072
	.align 2, 0
_08006044: .4byte 0x02031F04
_08006048:
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0800606A
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005AB0
	b _08006072
_0800605A:
	ldr r7, [sp, #0x20]
	cmp r7, #0
	beq _0800606A
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005B5C
	b _08006072
_0800606A:
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005BF8
_08006072:
	movs r0, #0xc
	add r8, r0
	b _080061D8
_08006078:
	adds r0, r4, #0
	bl sub_08005724
	ldr r3, _080060C0 @ =0x02031EE0
	ldrb r2, [r5, #5]
	lsls r2, r2, #2
	adds r2, r2, r3
	movs r1, #0x1a
	muls r1, r0, r1
	ldr r0, [r2]
	adds r0, r0, r1
	adds r7, r0, #2
	ldrb r0, [r5, #0x18]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r1, r8
	subs r0, r1, r0
	lsrs r0, r0, #3
	lsls r0, r0, #5
	ldr r1, [r5, #0x20]
	adds r6, r1, r0
	ldr r0, _080060C4 @ =0x0000853F
	cmp r4, r0
	bhi _0800612C
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r2, [r0]
	cmp r2, #0
	beq _080060C8
	adds r0, r4, #0
	adds r1, r3, #0
	adds r1, #0x24
	bl sub_08044034
	b _080060CA
	.align 2, 0
_080060C0: .4byte 0x02031EE0
_080060C4: .4byte 0x0000853F
_080060C8:
	movs r0, #0
_080060CA:
	cmp r0, #0
	bne _080060DA
	ldrb r2, [r5, #7]
	ldrb r3, [r5, #8]
	adds r0, r7, #0
	ldr r1, _080060F8 @ =0x02031F04
	bl sub_08005890
_080060DA:
	movs r1, #7
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _080060FC
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0800610E
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005CF4
	b _08006126
	.align 2, 0
_080060F8: .4byte 0x02031F04
_080060FC:
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _0800611E
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005D30
	b _08006126
_0800610E:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _0800611E
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005DA0
	b _08006126
_0800611E:
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005DF8
_08006126:
	movs r7, #8
	add r8, r7
	b _080061D8
_0800612C:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r2, [r0]
	cmp r2, #0
	beq _08006142
	adds r0, r4, #0
	adds r1, r3, #0
	adds r1, #0x24
	bl sub_08044034
	b _08006144
_08006142:
	movs r0, #0
_08006144:
	cmp r0, #0
	bne _08006154
	ldrb r2, [r5, #7]
	ldrb r3, [r5, #8]
	adds r0, r7, #0
	ldr r1, _08006170 @ =0x02031F04
	bl sub_0800575C
_08006154:
	movs r1, #7
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	bne _08006174
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08006186
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005A50
	b _0800619E
	.align 2, 0
_08006170: .4byte 0x02031F04
_08006174:
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _08006196
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005AB0
	b _0800619E
_08006186:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08006196
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005B5C
	b _0800619E
_08006196:
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005BF8
_0800619E:
	movs r1, #0xc
	add r8, r1
	b _080061D8
_080061A4:
	adds r0, r4, #0
	bl sub_08005724
	ldr r1, _080061F8 @ =0x02031EE0
	ldrb r3, [r5, #5]
	lsls r3, r3, #2
	adds r3, r3, r1
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r3]
	adds r0, r0, r2
	adds r7, r0, #2
	ldrb r2, [r5, #7]
	ldrb r3, [r5, #8]
	adds r0, r7, #0
	adds r1, #0x24
	bl sub_0800593C
	ldr r1, [sp, #0x10]
	adds r0, r6, #0
	bl sub_08005EA0
	adds r6, #0x20
	movs r2, #8
	add r8, r2
_080061D8:
	ldr r7, [sp, #0x1c]
	adds r7, #1
	str r7, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bhs _080061E6
	b _08005FA6
_080061E6:
	ldrb r0, [r5, #5]
	cmp r0, #4
	beq _08006236
	cmp r0, #4
	bgt _080061FC
	cmp r0, #2
	beq _08006202
	b _080062AA
	.align 2, 0
_080061F8: .4byte 0x02031EE0
_080061FC:
	cmp r0, #5
	beq _0800626A
	b _080062AA
_08006202:
	movs r2, #0
	ldr r3, [sp, #0x10]
	adds r6, r3, #0
	cmp r2, r6
	bge _0800629C
	ldr r4, [r5, #0xc]
_0800620E:
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xc
	adds r0, r4, r0
	adds r0, r0, r2
	mov r1, sb
	strh r0, [r1]
	lsls r1, r3, #1
	add r1, sb
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xc
	adds r0, r4, r0
	adds r0, r0, r2
	adds r0, r3, r0
	strh r0, [r1]
	adds r2, #1
	movs r7, #2
	add sb, r7
	cmp r2, r3
	blt _0800620E
	b _0800629C
_08006236:
	movs r2, #0
	ldr r3, [sp, #0x10]
	adds r6, r3, #0
	cmp r2, r6
	bge _0800629C
	ldr r4, [r5, #0xc]
_08006242:
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xc
	adds r0, r4, r0
	adds r0, r0, r2
	mov r1, sb
	strh r0, [r1]
	lsls r1, r3, #1
	add r1, sb
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xc
	adds r0, r4, r0
	adds r0, r0, r2
	adds r0, r3, r0
	strh r0, [r1]
	adds r2, #1
	movs r7, #2
	add sb, r7
	cmp r2, r3
	blt _08006242
	b _0800629C
_0800626A:
	movs r2, #0
	ldr r3, [sp, #0x10]
	adds r6, r3, #0
	cmp r2, r6
	bge _0800629C
	ldr r4, [r5, #0xc]
_08006276:
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xc
	adds r0, r4, r0
	adds r0, r0, r2
	mov r1, sb
	strh r0, [r1]
	lsls r1, r3, #1
	add r1, sb
	ldrb r0, [r5, #6]
	lsls r0, r0, #0xc
	adds r0, r4, r0
	adds r0, r0, r2
	adds r0, r3, r0
	strh r0, [r1]
	adds r2, #1
	movs r7, #2
	add sb, r7
	cmp r2, r3
	blt _08006276
_0800629C:
	lsls r0, r6, #1
	strh r0, [r5, #0x2a]
	movs r0, #2
	strh r0, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	lsls r0, r0, #6
	strh r0, [r5, #0x28]
_080062AA:
	movs r4, #0
	movs r3, #0
	ldr r6, [sp, #0x24]
_080062B0:
	lsls r2, r4, #2
	stm r6!, {r3}
	ldr r1, [sp, #0x28]
	adds r0, r1, r2
	str r3, [r0]
	lsls r1, r4, #1
	ldr r7, [sp, #0x2c]
	adds r0, r7, r1
	strh r3, [r0]
	ldr r7, [sp, #0x30]
	adds r0, r7, r1
	strh r3, [r0]
	ldr r7, [sp, #0x34]
	adds r0, r7, r1
	strh r3, [r0]
	ldr r0, [sp, #0x38]
	adds r1, r0, r1
	strh r3, [r1]
	ldr r1, [sp, #0x3c]
	adds r2, r1, r2
	str r3, [r2]
	adds r4, #1
	cmp r4, #5
	ble _080062B0
	ldrb r1, [r5, #0xb]
	cmp r1, #0
	bne _08006308
	ldr r0, [r5, #0x20]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x10]
	str r0, [r5, #0x48]
	ldrh r0, [r5, #0x28]
	ldr r2, [sp, #0x2c]
	strh r0, [r2]
	movs r0, #1
	ldr r7, [sp, #0x30]
	strh r0, [r7]
	ldr r0, [sp, #0x34]
	strh r1, [r0]
	ldr r2, [sp, #0x38]
	strh r1, [r2]
	ldr r7, [sp, #0x3c]
	str r1, [r7]
	b _0800664A
_08006308:
	ldrb r4, [r5, #0x19]
	movs r3, #7
	ands r4, r3
	cmp r4, #0
	beq _08006314
	b _080064A0
_08006314:
	str r4, [sp]
	ldr r0, [sp, #0xc]
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrb r1, [r5, #0x18]
	ldrh r2, [r5, #0x1c]
	adds r1, r1, r2
	ands r1, r3
	mov r8, r0
	cmp r1, #0
	beq _08006334
	movs r0, #4
	str r0, [sp]
	mov r0, r8
	subs r0, #4
	str r0, [sp, #4]
_08006334:
	ldr r1, [sp, #4]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08006346
	movs r0, #4
	str r0, [sp, #8]
	subs r0, r1, #4
	str r0, [sp, #4]
_08006346:
	ldr r7, [sp]
	cmp r7, #0
	beq _080063A0
	lsrs r0, r2, #3
	lsls r0, r0, #5
	adds r6, r0, #2
	ldr r0, [r5, #0x20]
	adds r0, r0, r6
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x10]
	adds r0, r0, r6
	str r0, [r5, #0x48]
	movs r3, #2
	ldr r0, [sp, #0x2c]
	strh r3, [r0]
	movs r0, #8
	ldr r1, [sp, #0x30]
	strh r0, [r1]
	movs r2, #4
	ldr r0, [sp, #0x34]
	strh r2, [r0]
	ldr r1, [sp, #0x38]
	strh r2, [r1]
	ldr r0, [sp, #0x3c]
	str r4, [r0]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #5
	adds r1, r6, r1
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x66
	strh r3, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0x12
	str r4, [r0]
_080063A0:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _08006420
	cmp r7, #0
	bne _080063B2
	ldrh r0, [r5, #0x1c]
	lsrs r0, r0, #3
	lsls r6, r0, #5
	b _080063BC
_080063B2:
	ldrh r0, [r5, #0x1c]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	adds r6, r0, #0
	adds r6, #0x20
_080063BC:
	ldr r0, [r5, #0x20]
	adds r0, r0, r6
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x10]
	adds r0, r0, r6
	str r0, [r5, #0x4c]
	lsls r0, r2, #2
	adds r1, r5, #0
	adds r1, #0x62
	movs r3, #0
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7a
	strh r3, [r0]
	adds r0, #0xc
	strh r3, [r0]
	adds r0, #0xe
	str r3, [r0]
	ldr r0, [r5, #0x20]
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r1, r6, r1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x58]
	adds r1, r5, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r2, #0
	cmp r2, #0
	bge _0800640A
	adds r1, r2, #7
_0800640A:
	asrs r1, r1, #3
	adds r0, r5, #0
	adds r0, #0x74
	strh r1, [r0]
	adds r0, #0xc
	movs r1, #0x20
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	adds r0, #0x14
	str r3, [r0]
_08006420:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08006428
	b _0800664A
_08006428:
	cmp r7, #0
	bne _0800643E
	ldrh r0, [r5, #0x1c]
	mov r2, r8
	adds r1, r0, r2
	subs r3, r1, #4
	adds r0, r3, #0
	cmp r3, #0
	bge _0800644C
	adds r0, r1, #3
	b _0800644C
_0800643E:
	ldrh r0, [r5, #0x1c]
	mov r7, r8
	adds r3, r0, r7
	adds r0, r3, #0
	cmp r3, #0
	bge _0800644C
	adds r0, r3, #7
_0800644C:
	asrs r0, r0, #3
	lsls r6, r0, #5
	ldr r0, [r5, #0x20]
	adds r0, r0, r6
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x10]
	adds r0, r0, r6
	str r0, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x64
	movs r4, #0
	movs r3, #2
	strh r3, [r0]
	adds r1, r5, #0
	adds r1, #0x70
	movs r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	movs r2, #4
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0x10
	str r4, [r0]
	ldr r0, [r5, #0x20]
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r1, r6, r1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x6a
	strh r3, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0xc
	b _08006640
_080064A0:
	movs r4, #0
	str r4, [sp]
	ldr r0, [sp, #0xc]
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrb r1, [r5, #0x18]
	ldrh r2, [r5, #0x1c]
	adds r1, r1, r2
	ands r1, r3
	mov r8, r0
	cmp r1, #0
	beq _080064C2
	movs r0, #4
	str r0, [sp]
	mov r0, r8
	subs r0, #4
	str r0, [sp, #4]
_080064C2:
	ldr r1, [sp, #4]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080064D4
	movs r0, #4
	str r0, [sp, #8]
	subs r0, r1, #4
	str r0, [sp, #4]
_080064D4:
	ldr r7, [sp]
	cmp r7, #0
	beq _08006536
	lsrs r0, r2, #3
	lsls r6, r0, #5
	adds r1, r6, #0
	adds r1, #0x12
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	movs r3, #2
	ldr r0, [sp, #0x2c]
	strh r3, [r0]
	movs r2, #4
	ldr r1, [sp, #0x30]
	strh r2, [r1]
	ldr r0, [sp, #0x34]
	strh r2, [r0]
	ldr r1, [sp, #0x38]
	strh r2, [r1]
	ldr r0, [sp, #0x3c]
	str r4, [r0]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #5
	adds r1, #2
	adds r1, r6, r1
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x66
	strh r3, [r0]
	adds r1, r5, #0
	adds r1, #0x72
	movs r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7e
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0x12
	str r4, [r0]
_08006536:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080065C2
	cmp r7, #0
	bne _08006548
	ldrh r0, [r5, #0x1c]
	lsrs r0, r0, #3
	lsls r6, r0, #5
	b _08006552
_08006548:
	ldrh r0, [r5, #0x1c]
	lsrs r0, r0, #3
	lsls r0, r0, #5
	adds r6, r0, #0
	adds r6, #0x20
_08006552:
	adds r4, r6, #0
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	adds r1, r5, #0
	adds r1, #0x62
	movs r3, #0
	movs r0, #0x10
	strh r0, [r1]
	adds r1, r2, #0
	adds r0, r1, #0
	cmp r1, #0
	bge _08006578
	adds r0, r1, #7
_08006578:
	asrs r0, r0, #3
	adds r1, r5, #0
	adds r1, #0x6e
	strh r0, [r1]
	adds r1, #0xc
	movs r0, #0x20
	strh r0, [r1]
	adds r1, #0xc
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x94
	str r3, [r0]
	ldr r0, [r5, #0x20]
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r1, r4, r1
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x58]
	lsls r1, r2, #2
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x74
	movs r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r0, #0xc
	strh r3, [r0]
	adds r0, #0x14
	str r3, [r0]
_080065C2:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800664A
	cmp r7, #0
	bne _080065DE
	ldrh r0, [r5, #0x1c]
	mov r2, r8
	adds r1, r0, r2
	subs r3, r1, #4
	adds r0, r3, #0
	cmp r3, #0
	bge _080065EC
	adds r0, r1, #3
	b _080065EC
_080065DE:
	ldrh r0, [r5, #0x1c]
	mov r7, r8
	adds r3, r0, r7
	adds r0, r3, #0
	cmp r3, #0
	bge _080065EC
	adds r0, r3, #7
_080065EC:
	asrs r0, r0, #3
	lsls r6, r0, #5
	adds r1, r6, #0
	adds r1, #0x10
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	adds r0, r5, #0
	adds r0, #0x64
	movs r4, #0
	movs r3, #2
	strh r3, [r0]
	adds r0, #0xc
	movs r2, #4
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0x10
	str r4, [r0]
	ldr r1, [sp, #0x10]
	lsls r1, r1, #5
	adds r1, r6, r1
	ldr r0, [r5, #0x20]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x6a
	strh r3, [r0]
	adds r1, r5, #0
	adds r1, #0x76
	movs r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x82
_08006640:
	strh r2, [r0]
	adds r0, #0xc
	strh r2, [r0]
	adds r0, #0x16
	str r4, [r0]
_0800664A:
	movs r4, #5
	ldr r0, [r5, #0x44]
	cmp r0, #0
	beq _08006658
	adds r1, r5, #0
	adds r1, #0xa4
	b _0800666E
_08006658:
	subs r4, #1
	cmp r4, #0
	blt _08006672
	lsls r1, r4, #2
	ldr r2, [sp, #0x24]
	adds r0, r2, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08006658
	ldr r7, [sp, #0x3c]
	adds r1, r7, r1
_0800666E:
	ldr r0, [r5, #0x20]
	str r0, [r1]
_08006672:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08005EDC

	thumb_func_start sub_08006684
sub_08006684: @ 0x08006684
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	ldrb r0, [r5, #5]
	cmp r0, #4
	beq _0800670A
	cmp r0, #4
	bgt _08006776
	cmp r0, #2
	bne _08006776
	movs r6, #0
	movs r0, #0x30
	adds r0, r0, r5
	mov r8, r0
_080066A6:
	lsls r1, r6, #2
	mov sb, r1
	mov r4, r8
	ldr r4, [r4]
	mov ip, r4
	cmp r4, #0
	beq _080066FE
	adds r0, r5, #0
	adds r0, #0x48
	add r0, sb
	ldr r1, [r0]
	lsls r4, r6, #1
	adds r0, r5, #0
	adds r0, #0x60
	adds r0, r0, r4
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x6c
	adds r0, r0, r4
	ldrh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x78
	adds r0, r0, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x84
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldrb r0, [r5, #9]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r0, ip
	bl sub_08002E7C
_080066FE:
	movs r7, #4
	add r8, r7
	adds r6, #1
	cmp r6, #5
	ble _080066A6
	b _08006790
_0800670A:
	movs r6, #0
	movs r0, #0x30
	adds r0, r0, r5
	mov r8, r0
_08006712:
	lsls r1, r6, #2
	mov sb, r1
	mov r4, r8
	ldr r4, [r4]
	mov ip, r4
	cmp r4, #0
	beq _0800676A
	adds r0, r5, #0
	adds r0, #0x48
	add r0, sb
	ldr r1, [r0]
	lsls r4, r6, #1
	adds r0, r5, #0
	adds r0, #0x60
	adds r0, r0, r4
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x6c
	adds r0, r0, r4
	ldrh r3, [r0]
	adds r0, r5, #0
	adds r0, #0x78
	adds r0, r0, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x84
	adds r0, r0, r4
	movs r4, #0
	ldrsh r0, [r0, r4]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldrb r0, [r5, #9]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	add r0, sb
	ldr r0, [r0]
	str r0, [sp, #0x10]
	mov r0, ip
	bl sub_08002E7C
_0800676A:
	movs r7, #4
	add r8, r7
	adds r6, #1
	cmp r6, #5
	ble _08006712
	b _08006790
_08006776:
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x10]
	ldrh r2, [r5, #0x28]
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldrb r3, [r5, #9]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r3, #1
	bl sub_08002E7C
_08006790:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08006684

	thumb_func_start sub_080067A0
sub_080067A0: @ 0x080067A0
	push {r4, r5, r6, lr}
	sub sp, #0x14
	ldr r5, [r0, #0x24]
	ldr r1, [r0, #0x14]
	ldrh r2, [r0, #0x2a]
	ldrh r3, [r0, #0x2c]
	movs r6, #0x2a
	ldrsh r4, [r0, r6]
	str r4, [sp]
	movs r4, #0x40
	str r4, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	ldrb r0, [r0, #0xa]
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r5, #0
	bl sub_08002E7C
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080067A0

	thumb_func_start sub_080067D0
sub_080067D0: @ 0x080067D0
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrh r0, [r4, #0x1a]
	cmp r0, #0
	bne _0800681A
	add r2, sp, #0xc
	add r3, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_08005668
	ldrb r1, [r4, #0x18]
	movs r0, #7
	ands r0, r1
	adds r0, #4
	ldr r1, [sp, #8]
	adds r1, r1, r0
	cmp r1, #0
	bge _080067FA
	adds r1, #7
_080067FA:
	asrs r3, r1, #3
	str r3, [sp, #0xc]
	ldrb r0, [r4, #8]
	lsls r1, r0, #4
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	lsls r3, r3, #0x15
	lsrs r2, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [sp]
	ldrb r3, [r4, #9]
	str r3, [sp, #4]
	movs r3, #2
	bl sub_08002D64
	b _08006850
_0800681A:
	add r2, sp, #0xc
	add r3, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_08005668
	ldrb r1, [r4, #0x18]
	movs r0, #7
	ands r0, r1
	adds r0, #4
	ldrh r1, [r4, #0x1a]
	adds r0, r0, r1
	asrs r3, r0, #3
	str r3, [sp, #0xc]
	ldrb r0, [r4, #8]
	lsls r1, r0, #4
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	lsls r3, r3, #0x15
	lsrs r2, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [sp]
	ldrb r3, [r4, #9]
	str r3, [sp, #4]
	movs r3, #2
	bl sub_08002D64
_08006850:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080067D0

	thumb_func_start sub_08006858
sub_08006858: @ 0x08006858
	lsls r0, r0, #0x10
	ldr r1, _08006868 @ =0x08204C04
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08006868: .4byte 0x08204C04
	thumb_func_end sub_08006858

	thumb_func_start sub_0800686C
sub_0800686C: @ 0x0800686C
	lsls r0, r0, #0x10
	ldr r1, _0800687C @ =0x08204E04
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_0800687C: .4byte 0x08204E04
	thumb_func_end sub_0800686C

	thumb_func_start sub_08006880
sub_08006880: @ 0x08006880
	lsls r0, r0, #0x10
	ldr r1, _08006890 @ =0x08205004
	lsrs r0, r0, #0x18
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08006890: .4byte 0x08205004
	thumb_func_end sub_08006880

	thumb_func_start sub_08006894
sub_08006894: @ 0x08006894
	push {lr}
	adds r2, r0, #0
	ldr r0, _080068A4 @ =0x0007FEFF
	cmp r2, r0
	ble _080068AC
	ldr r2, _080068A8 @ =0x0007FF00
	b _080068B4
	.align 2, 0
_080068A4: .4byte 0x0007FEFF
_080068A8: .4byte 0x0007FF00
_080068AC:
	ldr r0, _080068C0 @ =0xFFF80100
	cmp r2, r0
	bgt _080068B4
	adds r2, r0, #0
_080068B4:
	asrs r2, r2, #4
	ldr r0, _080068C4 @ =0x0007FEFF
	cmp r1, r0
	ble _080068CC
	ldr r1, _080068C8 @ =0x0007FF00
	b _080068D4
	.align 2, 0
_080068C0: .4byte 0xFFF80100
_080068C4: .4byte 0x0007FEFF
_080068C8: .4byte 0x0007FF00
_080068CC:
	ldr r0, _080068E8 @ =0xFFF80100
	cmp r1, r0
	bgt _080068D4
	adds r1, r0, #0
_080068D4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0xc
	asrs r1, r1, #0x10
	bl sub_08043C3C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	.align 2, 0
_080068E8: .4byte 0xFFF80100
	thumb_func_end sub_08006894

	thumb_func_start sub_080068EC
sub_080068EC: @ 0x080068EC
	push {lr}
	asrs r0, r0, #6
	bl sub_08043C60
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	thumb_func_end sub_080068EC

	thumb_func_start sub_080068FC
sub_080068FC: @ 0x080068FC
	muls r0, r1, r0
	asrs r0, r0, #8
	bx lr
	.align 2, 0
	thumb_func_end sub_080068FC

	thumb_func_start sub_08006904
sub_08006904: @ 0x08006904
	push {lr}
	lsls r0, r0, #8
	bl sub_0804449C
	pop {r1}
	bx r1
	thumb_func_end sub_08006904

	thumb_func_start sub_08006910
sub_08006910: @ 0x08006910
	push {lr}
	adds r2, r0, #0
	ldr r1, _08006928 @ =0x00000001
	ldr r0, _08006924 @ =0x00000000
	asrs r3, r2, #0x1f
	bl sub_08044068
	pop {r1}
	bx r1
	.align 2, 0
_08006924: .4byte 0x00000000
_08006928: .4byte 0x00000001
	thumb_func_end sub_08006910

	thumb_func_start sub_0800692C
sub_0800692C: @ 0x0800692C
	ldr r1, _08006934 @ =0x02031FA0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08006934: .4byte 0x02031FA0
	thumb_func_end sub_0800692C

	thumb_func_start sub_08006938
sub_08006938: @ 0x08006938
	push {lr}
	ldr r3, _08006958 @ =0x02031FA0
	movs r1, #0
	ldrsh r2, [r3, r1]
	ldr r1, _0800695C @ =0x00000225
	muls r1, r2, r1
	subs r1, #1
	strh r1, [r3]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _08006960
	movs r2, #0
	ldrsh r0, [r3, r2]
	b _08006988
	.align 2, 0
_08006958: .4byte 0x02031FA0
_0800695C: .4byte 0x00000225
_08006960:
	cmp r1, #0
	ble _08006978
	ldrh r0, [r3]
	muls r0, r1, r0
	cmp r0, #0
	bge _08006970
	ldr r1, _08006974 @ =0x0000FFFF
	adds r0, r0, r1
_08006970:
	asrs r0, r0, #0x10
	b _08006988
	.align 2, 0
_08006974: .4byte 0x0000FFFF
_08006978:
	movs r2, #0
	ldrsh r0, [r3, r2]
	muls r0, r1, r0
	cmp r0, #0
	bge _08006986
	ldr r1, _0800698C @ =0x00007FFF
	adds r0, r0, r1
_08006986:
	asrs r0, r0, #0xf
_08006988:
	pop {r1}
	bx r1
	.align 2, 0
_0800698C: .4byte 0x00007FFF
	thumb_func_end sub_08006938

	thumb_func_start sub_08006990
sub_08006990: @ 0x08006990
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r7, r1, #0
	mov r8, r2
	str r3, [sp, #4]
	ldr r1, [sp, #0x28]
	ldr r0, _080069B8 @ =0x01FFFFFF
	cmp r1, r0
	bgt _080069BC
	movs r6, #0
	movs r5, #0
	movs r0, #1
	mov sl, r0
	b _080069C4
	.align 2, 0
_080069B8: .4byte 0x01FFFFFF
_080069BC:
	adds r6, r1, #0
	ldr r5, [sp, #0x2c]
	adds r1, r5, #1
	mov sl, r1
_080069C4:
	mov r0, sb
	bl sub_08000D5C
	lsls r1, r7, #5
	adds r0, r0, r1
	movs r4, #0
	str r4, [sp]
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08003D38
	mov r1, r8
	lsls r0, r1, #1
	str r4, [sp]
	adds r1, r6, #0
	mov r2, sl
	ldr r3, [sp, #4]
	bl sub_08003E7C
	ldr r0, _08006A08 @ =0x02031E88
	strh r7, [r0]
	mov r1, r8
	strh r1, [r0, #2]
	mov r1, sb
	str r1, [r0, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006A08: .4byte 0x02031E88
	thumb_func_end sub_08006990

	thumb_func_start sub_08006A0C
sub_08006A0C: @ 0x08006A0C
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	cmp r1, #0x20
	bne _08006A1E
	movs r5, #0x3f
	b _08006A48
_08006A1E:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08006A30
	adds r0, r1, #0
	subs r0, #0x2f
	b _08006A40
_08006A30:
	adds r0, r1, #0
	subs r0, #0x41
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x19
	bhi _08006A46
	adds r0, r1, #0
	subs r0, #0x36
_08006A40:
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _08006A48
_08006A46:
	movs r5, #0x25
_08006A48:
	ldr r4, _08006A74 @ =0x02031E88
	ldr r0, [r4, #4]
	bl sub_08000D6C
	lsls r3, r6, #1
	lsls r1, r7, #6
	adds r1, r1, r0
	adds r3, r3, r1
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4]
	adds r1, r1, r0
	ldrh r2, [r4, #2]
	movs r0, #0xf0
	ands r0, r2
	lsls r0, r0, #8
	adds r1, r1, r0
	strh r1, [r3]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006A74: .4byte 0x02031E88
	thumb_func_end sub_08006A0C

	thumb_func_start sub_08006A78
sub_08006A78: @ 0x08006A78
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08006AAE
	lsls r6, r2, #0x18
_08006A8E:
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r4, r1, #0x18
	asrs r4, r4, #0x18
	adds r1, r4, #0
	asrs r2, r6, #0x18
	bl sub_08006A0C
	adds r5, #1
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r1, r4, #0x18
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08006A8E
_08006AAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08006A78

	thumb_func_start sub_08006AB4
sub_08006AB4: @ 0x08006AB4
	push {lr}
	ldr r1, _08006AD0 @ =0x02031E90
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08006AD4 @ =0x02030210
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	movs r0, #0x14
	movs r1, #2
	bl sub_08006AD8
	pop {r0}
	bx r0
	.align 2, 0
_08006AD0: .4byte 0x02031E90
_08006AD4: .4byte 0x02030210
	thumb_func_end sub_08006AB4

	thumb_func_start sub_08006AD8
sub_08006AD8: @ 0x08006AD8
	ldr r2, _08006AE8 @ =0x02030210
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	str r0, [r2, #0x10]
	adds r0, #0x3c
	str r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08006AE8: .4byte 0x02030210
	thumb_func_end sub_08006AD8

	thumb_func_start sub_08006AEC
sub_08006AEC: @ 0x08006AEC
	push {r4, r5, r6, lr}
	ldr r0, _08006BBC @ =0x02031E90
	movs r1, #0
	strh r1, [r0]
	ldr r1, _08006BC0 @ =0x02030210
	ldr r2, [r1]
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq _08006B04
	subs r0, r2, #1
	str r0, [r5]
_08006B04:
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	ldr r0, _08006BC4 @ =0x03001020
	ldrh r2, [r0]
	cmp r2, #0
	beq _08006B5A
	strh r2, [r6]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08006B22
	movs r0, #0x40
	orrs r0, r2
	strh r0, [r6]
_08006B22:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08006B32
	ldrh r0, [r6]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r6]
_08006B32:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08006B42
	ldrh r0, [r6]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r6]
_08006B42:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08006B52
	ldrh r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r6]
_08006B52:
	ldr r0, [r5, #8]
	str r0, [r5]
	movs r0, #0
	str r0, [r5, #4]
_08006B5A:
	ldr r0, [r5]
	cmp r0, #0
	bne _08006BD8
	ldr r2, _08006BC8 @ =0x03001028
	ldrh r1, [r2]
	cmp r1, #0
	beq _08006BD8
	adds r4, r6, #0
	strh r1, [r4]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08006B7A
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r4]
_08006B7A:
	ldrh r2, [r2]
	movs r0, #0x80
	ands r0, r2
	adds r3, r2, #0
	cmp r0, #0
	beq _08006B8E
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
_08006B8E:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08006B9E
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4]
_08006B9E:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08006BAE
	ldrh r0, [r6]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r6]
_08006BAE:
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x10]
	cmp r2, r0
	bge _08006BCC
	ldr r1, [r5, #8]
	b _08006BD6
	.align 2, 0
_08006BBC: .4byte 0x02031E90
_08006BC0: .4byte 0x02030210
_08006BC4: .4byte 0x03001020
_08006BC8: .4byte 0x03001028
_08006BCC:
	ldr r0, [r5, #0x14]
	movs r1, #1
	cmp r2, r0
	bge _08006BD6
	ldr r1, [r5, #0xc]
_08006BD6:
	str r1, [r5]
_08006BD8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08006AEC

	thumb_func_start sub_08006BE0
sub_08006BE0: @ 0x08006BE0
	ldr r1, _08006BEC @ =0x02031FB0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08006BEC: .4byte 0x02031FB0
	thumb_func_end sub_08006BE0

	thumb_func_start sub_08006BF0
sub_08006BF0: @ 0x08006BF0
	push {r4, lr}
	ldr r3, _08006C18 @ =0x02031FB0
	ldr r2, [r3, #8]
	cmp r2, #0
	beq _08006C6A
	movs r4, #0
	ldr r0, [r3]
	cmp r0, #0
	bne _08006C20
	ldr r0, _08006C1C @ =0x03001020
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08006C64
	str r4, [r3, #4]
	movs r0, #1
	str r0, [r3]
_08006C12:
	movs r4, #1
	b _08006C64
	.align 2, 0
_08006C18: .4byte 0x02031FB0
_08006C1C: .4byte 0x03001020
_08006C20:
	ldr r0, _08006C30 @ =0x03001020
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	beq _08006C34
	movs r0, #1
	str r0, [r3, #4]
	b _08006C12
	.align 2, 0
_08006C30: .4byte 0x03001020
_08006C34:
	ldr r1, [r3, #4]
	cmp r1, #0
	beq _08006C12
	ldr r0, _08006C50 @ =0x03001028
	ldrh r0, [r0]
	ands r0, r2
	cmp r0, #0
	bne _08006C58
	subs r0, r1, #1
	cmp r0, #0x12
	bhi _08006C54
	str r4, [r3]
	b _08006C12
	.align 2, 0
_08006C50: .4byte 0x03001028
_08006C54:
	str r4, [r3, #4]
	b _08006C12
_08006C58:
	adds r0, r1, #1
	str r0, [r3, #4]
	cmp r0, #0x1d
	bls _08006C12
	movs r0, #0x14
	str r0, [r3, #4]
_08006C64:
	adds r0, r4, #0
	bl sub_08003660
_08006C6A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08006BF0

	thumb_func_start sub_08006C70
sub_08006C70: @ 0x08006C70
	push {lr}
	ldr r1, _08006C80 @ =0x02031FB0
	movs r0, #0
	str r0, [r1, #8]
	bl sub_08003660
	pop {r0}
	bx r0
	.align 2, 0
_08006C80: .4byte 0x02031FB0
	thumb_func_end sub_08006C70

	thumb_func_start sub_08006C84
sub_08006C84: @ 0x08006C84
	ldr r0, _08006C8C @ =0x02031FB0
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_08006C8C: .4byte 0x02031FB0
	thumb_func_end sub_08006C84

	thumb_func_start sub_08006C90
sub_08006C90: @ 0x08006C90
	push {r4, lr}
	ldr r0, _08006CBC @ =0x02031FC0
	movs r2, #0
	movs r1, #3
	str r1, [r0, #4]
	str r2, [r0, #8]
	movs r4, #0x12
	str r4, [r0, #0xc]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	movs r3, #0x13
	str r3, [r0, #0x18]
	movs r1, #4
	str r1, [r0, #0x1c]
	str r4, [r0, #0x20]
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08006CBC: .4byte 0x02031FC0
	thumb_func_end sub_08006C90

	thumb_func_start sub_08006CC0
sub_08006CC0: @ 0x08006CC0
	push {lr}
	ldr r0, _08006CE8 @ =0x02031FC0
	ldr r0, [r0]
	cmp r0, #0
	beq _08006CE4
	ldr r1, _08006CEC @ =0x06017FE0
	movs r0, #0
	ldr r3, _08006CF0 @ =0x0000FFFF
	adds r2, r3, #0
_08006CD2:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, #0xf
	bls _08006CD2
	ldr r1, _08006CF4 @ =0x050003FE
	ldr r2, _08006CF0 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
_08006CE4:
	pop {r0}
	bx r0
	.align 2, 0
_08006CE8: .4byte 0x02031FC0
_08006CEC: .4byte 0x06017FE0
_08006CF0: .4byte 0x0000FFFF
_08006CF4: .4byte 0x050003FE
	thumb_func_end sub_08006CC0

	thumb_func_start sub_08006CF8
sub_08006CF8: @ 0x08006CF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	ldr r0, _08006DC4 @ =0x02031FC0
	ldr r0, [r0]
	cmp r0, #0
	beq _08006DB6
	cmp r5, #0
	beq _08006DB6
	bl sub_080008E4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov sb, r2
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08006D42
	ldr r4, _08006DC8 @ =0x02031E40
	ldr r1, _08006DCC @ =0x08046070
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08007F1C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	mov r0, r8
	lsls r2, r0, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08006A78
_08006D42:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _08006DB6
	ldr r7, _08006DD0 @ =0x03001018
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r0, #0
	blt _08006DB6
	bl sub_08006CC0
	ldrb r2, [r7]
	lsls r2, r2, #3
	ldr r0, _08006DD4 @ =0x03001510
	adds r2, r2, r0
	mov r1, r8
	lsls r0, r1, #3
	strb r0, [r2]
	movs r4, #0xd
	rsbs r4, r4, #0
	movs r5, #0x11
	rsbs r5, r5, #0
	movs r6, #0x21
	rsbs r6, r6, #0
	movs r3, #0x3f
	mov r8, r3
	movs r0, #0
	strb r0, [r2, #1]
	mov r0, sb
	lsls r1, r0, #0x17
	lsrs r1, r1, #0x17
	ldrh r3, [r2, #2]
	ldr r0, _08006DD8 @ =0xFFFFFE00
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #2]
	ldrb r1, [r2, #3]
	movs r0, #0xf
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	strb r0, [r2, #3]
	ldrh r0, [r2, #4]
	ldr r3, _08006DDC @ =0x000003FF
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r0, [r2, #5]
	ands r4, r0
	movs r0, #0xf0
	orrs r4, r0
	strb r4, [r2, #5]
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
_08006DB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006DC4: .4byte 0x02031FC0
_08006DC8: .4byte 0x02031E40
_08006DCC: .4byte 0x08046070
_08006DD0: .4byte 0x03001018
_08006DD4: .4byte 0x03001510
_08006DD8: .4byte 0xFFFFFE00
_08006DDC: .4byte 0x000003FF
	thumb_func_end sub_08006CF8

	thumb_func_start sub_08006DE0
sub_08006DE0: @ 0x08006DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r1, [sp, #0x20]
	ldr r0, _08006E0C @ =0x02031FC0
	ldr r0, [r0]
	cmp r0, #0
	bne _08006DFE
	b _08006F14
_08006DFE:
	cmp r1, #1
	beq _08006E64
	cmp r1, #1
	bgt _08006E10
	cmp r1, #0
	beq _08006E16
	b _08006F14
	.align 2, 0
_08006E0C: .4byte 0x02031FC0
_08006E10:
	cmp r1, #2
	beq _08006ED8
	b _08006F14
_08006E16:
	ldr r4, _08006E4C @ =0x02031E40
	ldr r5, _08006E50 @ =0x08046078
	ldr r0, _08006E54 @ =0x03000548
	ldr r2, [r0]
	ldr r0, _08006E58 @ =0x03000534
	ldr r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	lsls r2, r7, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08006A78
	ldr r0, _08006E5C @ =0x03000544
	ldr r2, [r0]
	ldr r0, _08006E60 @ =0x03000540
	ldr r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	b _08006EA2
	.align 2, 0
_08006E4C: .4byte 0x02031E40
_08006E50: .4byte 0x08046078
_08006E54: .4byte 0x03000548
_08006E58: .4byte 0x03000534
_08006E5C: .4byte 0x03000544
_08006E60: .4byte 0x03000540
_08006E64:
	ldr r4, _08006EB8 @ =0x02031E40
	ldr r5, _08006EBC @ =0x08046084
	ldr r0, _08006EC0 @ =0x03000548
	ldr r2, [r0]
	ldr r0, _08006EC4 @ =0x03000534
	ldr r3, [r0]
	ldr r0, _08006EC8 @ =0x030009C4
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	lsls r2, r7, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08006A78
	ldr r0, _08006ECC @ =0x03000544
	ldr r2, [r0]
	ldr r0, _08006ED0 @ =0x03000540
	ldr r3, [r0]
	ldr r0, _08006ED4 @ =0x03001914
	ldr r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
_08006EA2:
	mov r0, r8
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	mov r0, sb
	lsls r2, r0, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08006A78
	b _08006F14
	.align 2, 0
_08006EB8: .4byte 0x02031E40
_08006EBC: .4byte 0x08046084
_08006EC0: .4byte 0x03000548
_08006EC4: .4byte 0x03000534
_08006EC8: .4byte 0x030009C4
_08006ECC: .4byte 0x03000544
_08006ED0: .4byte 0x03000540
_08006ED4: .4byte 0x03001914
_08006ED8:
	ldr r4, _08006F24 @ =0x02031E40
	ldr r5, _08006F28 @ =0x08046094
	ldr r0, _08006F2C @ =0x03000538
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	lsls r1, r6, #0x18
	asrs r1, r1, #0x18
	lsls r2, r7, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08006A78
	ldr r0, _08006F30 @ =0x0300054C
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	mov r0, r8
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	mov r0, sb
	lsls r2, r0, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08006A78
_08006F14:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006F24: .4byte 0x02031E40
_08006F28: .4byte 0x08046094
_08006F2C: .4byte 0x03000538
_08006F30: .4byte 0x0300054C
	thumb_func_end sub_08006DE0

	thumb_func_start sub_08006F34
sub_08006F34: @ 0x08006F34
	bx lr
	.align 2, 0
	thumb_func_end sub_08006F34

	thumb_func_start sub_08006F38
sub_08006F38: @ 0x08006F38
	ldr r0, _08006F40 @ =0x02031FC0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08006F40: .4byte 0x02031FC0
	thumb_func_end sub_08006F38

	thumb_func_start sub_08006F44
sub_08006F44: @ 0x08006F44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r2
	mov r8, r3
	adds r6, r4, r1
	movs r5, #0
	cmp r4, r6
	bhs _08006F92
	ldr r7, _08006FA0 @ =0x02031E40
_08006F5C:
	ldrb r2, [r4]
	adds r4, #1
	adds r0, r7, #0
	ldr r1, _08006FA4 @ =0x0804609C
	bl sub_08007F1C
	adds r2, r5, #0
	cmp r5, #0
	bge _08006F70
	adds r2, r5, #7
_08006F70:
	asrs r2, r2, #3
	lsls r0, r2, #3
	subs r0, r5, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	add r1, sb
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	add r2, r8
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r7, #0
	bl sub_08006A78
	adds r5, #1
	cmp r4, r6
	blo _08006F5C
_08006F92:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08006FA0: .4byte 0x02031E40
_08006FA4: .4byte 0x0804609C
	thumb_func_end sub_08006F44

	thumb_func_start sub_08006FA8
sub_08006FA8: @ 0x08006FA8
	push {lr}
	bl sub_080008D8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, _08006FC8 @ =0xFFEF0000
	ands r0, r1
	lsrs r0, r0, #0x10
	bl sub_080008C8
	bl sub_08000EE8
	bl sub_08000ED4
	pop {r0}
	bx r0
	.align 2, 0
_08006FC8: .4byte 0xFFEF0000
	thumb_func_end sub_08006FA8

	thumb_func_start sub_08006FCC
sub_08006FCC: @ 0x08006FCC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r5, r4, #0
	movs r0, #0
	bl sub_0800320C
	bl sub_08003228
	adds r1, r4, #0
	orrs r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	bl sub_08003218
	bl sub_080008D8
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08007004
	movs r0, #8
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08007004:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08007014
	movs r0, #0x10
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08007014:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _08007024
	movs r0, #0x20
	orrs r1, r0
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08007024:
	adds r0, r1, #0
	bl sub_080008C8
	bl sub_08000ED4
	movs r0, #1
	bl sub_0800320C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08006FCC

	thumb_func_start sub_0800703C
sub_0800703C: @ 0x0800703C
	push {r4, lr}
	ldr r0, _080070EC @ =0x03001038
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _080070E4
	ldr r0, _080070F0 @ =0x020345A8
	ldr r0, [r0]
	cmp r0, #0
	beq _0800705C
	bl sub_0804402C
	movs r0, #0
	bl sub_08003980
_0800705C:
	bl sub_08006BE0
	bl sub_08001528
	movs r0, #0
	bl sub_08003660
	bl sub_08010320
	bl sub_0801036C
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08001194
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_080011C0
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_080011EC
	bl sub_0801048C
	movs r0, #0
	bl sub_0801494C
	cmp r0, #0
	beq _080070A6
	bl sub_08014068
_080070A6:
	movs r0, #1
	bl sub_0801494C
	cmp r0, #0
	beq _080070B4
	bl sub_0801409C
_080070B4:
	movs r0, #2
	bl sub_0801494C
	cmp r0, #0
	beq _080070C2
	bl sub_080140F4
_080070C2:
	movs r0, #3
	bl sub_0801494C
	cmp r0, #0
	beq _080070D0
	bl sub_0801410C
_080070D0:
	ldr r0, _080070F4 @ =0x020345B0
	movs r1, #6
	str r1, [r0, #0x44]
	movs r0, #0xa
	movs r1, #0
	bl sub_08003908
	ldr r0, _080070F8 @ =sub_08007154
	bl sub_08003640
_080070E4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080070EC: .4byte 0x03001038
_080070F0: .4byte 0x020345A8
_080070F4: .4byte 0x020345B0
_080070F8: .4byte sub_08007154
	thumb_func_end sub_0800703C

	thumb_func_start sub_080070FC
sub_080070FC: @ 0x080070FC
	push {lr}
	bl sub_0800A2BC
	bl sub_0801048C
	bl sub_0800FD74
	bl sub_08010474
	movs r0, #0
	bl sub_0801494C
	cmp r0, #0
	beq _0800711C
	bl sub_08014068
_0800711C:
	movs r0, #1
	bl sub_0801494C
	cmp r0, #0
	beq _0800712A
	bl sub_0801409C
_0800712A:
	movs r0, #2
	bl sub_0801494C
	cmp r0, #0
	beq _08007138
	bl sub_080140F4
_08007138:
	movs r0, #3
	bl sub_0801494C
	cmp r0, #0
	beq _08007146
	bl sub_0801410C
_08007146:
	ldr r1, _08007150 @ =0x0203A000
	movs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08007150: .4byte 0x0203A000
	thumb_func_end sub_080070FC

	thumb_func_start sub_08007154
sub_08007154: @ 0x08007154
	push {r4, r5, lr}
	ldr r5, _08007190 @ =0x03001030
	ldr r4, [r5]
	cmp r4, #0
	bne _0800717C
	bl sub_080038EC
	bl sub_080070FC
	ldr r0, _08007194 @ =0x020345B0
	str r4, [r0, #0x44]
	movs r0, #0xa
	movs r1, #0
	bl sub_08003908
	bl sub_08003A1C
	ldr r0, _08007198 @ =sub_0800703C
	bl sub_0800398C
_0800717C:
	ldr r0, [r5]
	subs r0, #1
	cmp r0, #0x30
	bls _08007186
	b _080073AE
_08007186:
	lsls r0, r0, #2
	ldr r1, _0800719C @ =_080071A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007190: .4byte 0x03001030
_08007194: .4byte 0x020345B0
_08007198: .4byte sub_0800703C
_0800719C: .4byte _080071A0
_080071A0: @ jump table
	.4byte _080072A0 @ case 0
	.4byte _080073AE @ case 1
	.4byte _080073AE @ case 2
	.4byte _080073AE @ case 3
	.4byte _080073AE @ case 4
	.4byte _080073AE @ case 5
	.4byte _080073AE @ case 6
	.4byte _080073AE @ case 7
	.4byte _080073AE @ case 8
	.4byte _080072AC @ case 9
	.4byte _080072B8 @ case 10
	.4byte _080072C4 @ case 11
	.4byte _080072D0 @ case 12
	.4byte _080072DC @ case 13
	.4byte _080072E8 @ case 14
	.4byte _080072F4 @ case 15
	.4byte _08007300 @ case 16
	.4byte _0800730C @ case 17
	.4byte _08007318 @ case 18
	.4byte _08007324 @ case 19
	.4byte _08007330 @ case 20
	.4byte _0800733C @ case 21
	.4byte _08007348 @ case 22
	.4byte _08007354 @ case 23
	.4byte _0800736C @ case 24
	.4byte _08007378 @ case 25
	.4byte _08007384 @ case 26
	.4byte _08007390 @ case 27
	.4byte _0800739C @ case 28
	.4byte _080073A8 @ case 29
	.4byte _080073AE @ case 30
	.4byte _080073AE @ case 31
	.4byte _080073AE @ case 32
	.4byte _080073AE @ case 33
	.4byte _08007360 @ case 34
	.4byte _080073AE @ case 35
	.4byte _080073AE @ case 36
	.4byte _080073AE @ case 37
	.4byte _080073AE @ case 38
	.4byte _080073AE @ case 39
	.4byte _080073AE @ case 40
	.4byte _080073AE @ case 41
	.4byte _080073AE @ case 42
	.4byte _0800727C @ case 43
	.4byte _08007288 @ case 44
	.4byte _08007294 @ case 45
	.4byte _080073AE @ case 46
	.4byte _08007270 @ case 47
	.4byte _08007264 @ case 48
_08007264:
	ldr r0, _0800726C @ =sub_0800CD34
	bl sub_08003640
	b _080073AE
	.align 2, 0
_0800726C: .4byte sub_0800CD34
_08007270:
	ldr r0, _08007278 @ =sub_0800D8A8
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007278: .4byte sub_0800D8A8
_0800727C:
	ldr r0, _08007284 @ =sub_0800E06C
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007284: .4byte sub_0800E06C
_08007288:
	ldr r0, _08007290 @ =sub_0800E93C
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007290: .4byte sub_0800E93C
_08007294:
	ldr r0, _0800729C @ =sub_0800F24C
	bl sub_08003640
	b _080073AE
	.align 2, 0
_0800729C: .4byte sub_0800F24C
_080072A0:
	ldr r0, _080072A8 @ =sub_080157EC
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072A8: .4byte sub_080157EC
_080072AC:
	ldr r0, _080072B4 @ =sub_0801BD14
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072B4: .4byte sub_0801BD14
_080072B8:
	ldr r0, _080072C0 @ =sub_0801C69C
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072C0: .4byte sub_0801C69C
_080072C4:
	ldr r0, _080072CC @ =sub_0801D6D4
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072CC: .4byte sub_0801D6D4
_080072D0:
	ldr r0, _080072D8 @ =sub_0801EAF4
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072D8: .4byte sub_0801EAF4
_080072DC:
	ldr r0, _080072E4 @ =sub_0801FBC8
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072E4: .4byte sub_0801FBC8
_080072E8:
	ldr r0, _080072F0 @ =sub_08020F50
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072F0: .4byte sub_08020F50
_080072F4:
	ldr r0, _080072FC @ =sub_08022378
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080072FC: .4byte sub_08022378
_08007300:
	ldr r0, _08007308 @ =sub_08023160
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007308: .4byte sub_08023160
_0800730C:
	ldr r0, _08007314 @ =sub_08023F04
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007314: .4byte sub_08023F04
_08007318:
	ldr r0, _08007320 @ =sub_080255D8
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007320: .4byte sub_080255D8
_08007324:
	ldr r0, _0800732C @ =sub_08027730
	bl sub_08003640
	b _080073AE
	.align 2, 0
_0800732C: .4byte sub_08027730
_08007330:
	ldr r0, _08007338 @ =sub_08028E84
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007338: .4byte sub_08028E84
_0800733C:
	ldr r0, _08007344 @ =sub_08029F98
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007344: .4byte sub_08029F98
_08007348:
	ldr r0, _08007350 @ =sub_0802D8A4
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007350: .4byte sub_0802D8A4
_08007354:
	ldr r0, _0800735C @ =sub_0802EE88
	bl sub_08003640
	b _080073AE
	.align 2, 0
_0800735C: .4byte sub_0802EE88
_08007360:
	ldr r0, _08007368 @ =sub_0802F944
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007368: .4byte sub_0802F944
_0800736C:
	ldr r0, _08007374 @ =sub_080302E0
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007374: .4byte sub_080302E0
_08007378:
	ldr r0, _08007380 @ =sub_08030BA8
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007380: .4byte sub_08030BA8
_08007384:
	ldr r0, _0800738C @ =sub_080315A4
	bl sub_08003640
	b _080073AE
	.align 2, 0
_0800738C: .4byte sub_080315A4
_08007390:
	ldr r0, _08007398 @ =sub_08031DDC
	bl sub_08003640
	b _080073AE
	.align 2, 0
_08007398: .4byte sub_08031DDC
_0800739C:
	ldr r0, _080073A4 @ =sub_080327F4
	bl sub_08003640
	b _080073AE
	.align 2, 0
_080073A4: .4byte sub_080327F4
_080073A8:
	ldr r0, _080073B4 @ =sub_08033540
	bl sub_08003640
_080073AE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080073B4: .4byte sub_08033540
	thumb_func_end sub_08007154

	thumb_func_start sub_080073B8
sub_080073B8: @ 0x080073B8
	push {lr}
	adds r2, r0, #0
	ldr r3, _080073DC @ =0x03000538
	ldr r0, [r3]
	cmp r2, r0
	bls _080073C8
	adds r0, r2, r1
	str r0, [r3]
_080073C8:
	ldr r0, _080073E0 @ =0x03000548
	ldr r2, _080073E4 @ =0x03000534
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	ble _080073D6
	str r1, [r2]
_080073D6:
	pop {r0}
	bx r0
	.align 2, 0
_080073DC: .4byte 0x03000538
_080073E0: .4byte 0x03000548
_080073E4: .4byte 0x03000534
	thumb_func_end sub_080073B8

	thumb_func_start sub_080073E8
sub_080073E8: @ 0x080073E8
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r3, #0x1f
	bls _0800740E
	adds r0, #0xf
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, r0, r2
	subs r3, r3, r1
	movs r2, #0
	str r2, [r0]
	adds r1, r3, #0
	subs r1, #0x10
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	b _08007412
_0800740E:
	movs r0, #1
	rsbs r0, r0, #0
_08007412:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080073E8

	thumb_func_start sub_08007418
sub_08007418: @ 0x08007418
	push {r4, r5, lr}
	ldr r2, _08007444 @ =0x03000538
	movs r3, #0
	str r3, [r2]
	ldr r2, _08007448 @ =0x03000548
	str r3, [r2]
	ldr r2, _0800744C @ =0x03000534
	str r3, [r2]
	ldr r4, _08007450 @ =0x03000550
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r4]
	bl sub_080073E8
	str r0, [r4]
	cmp r0, r5
	beq _0800743C
	movs r0, #0
_0800743C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08007444: .4byte 0x03000538
_08007448: .4byte 0x03000548
_0800744C: .4byte 0x03000534
_08007450: .4byte 0x03000550
	thumb_func_end sub_08007418

	thumb_func_start sub_08007454
sub_08007454: @ 0x08007454
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	movs r6, #0
	adds r2, r0, #0
	adds r3, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r3, r0
	movs r0, #0x10
	adds r0, r0, r3
	mov ip, r0
	movs r5, #0
	movs r7, #0
	cmp r3, #0
	bne _08007476
	b _080074EC
_08007474:
	adds r2, r4, #0
_08007476:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08007490
	ldr r0, [r2, #4]
	cmp r0, r3
	blo _08007490
	cmp r5, r0
	bhi _0800748A
	cmp r5, #0
	bne _08007490
_0800748A:
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r7, [r6]
_08007490:
	ldr r4, [r2]
	cmp r4, #0
	bne _08007474
	cmp r5, #0
	beq _080074EC
	adds r0, r3, #0
	adds r0, #0x20
	cmp r5, r0
	blo _080074C8
	mov r1, ip
	adds r2, r6, r1
	str r2, [r6]
	str r3, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	ldr r1, _080074C4 @ =0x03000548
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	str r7, [r2]
	mov r1, ip
	subs r0, r5, r1
	str r0, [r2, #4]
	str r4, [r2, #8]
	b _080074D8
	.align 2, 0
_080074C4: .4byte 0x03000548
_080074C8:
	str r7, [r6]
	str r5, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	ldr r1, _080074E8 @ =0x03000548
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1]
_080074D8:
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_080073B8
	adds r0, r4, #0
	b _080074EE
	.align 2, 0
_080074E8: .4byte 0x03000548
_080074EC:
	movs r0, #0
_080074EE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007454

	thumb_func_start sub_080074F4
sub_080074F4: @ 0x080074F4
	push {lr}
	adds r1, r0, #0
	ldr r0, _0800750C @ =0x03000550
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08007510
	adds r0, r2, #0
	bl sub_08007454
	b _08007512
	.align 2, 0
_0800750C: .4byte 0x03000550
_08007510:
	movs r0, #0
_08007512:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080074F4

	thumb_func_start sub_08007518
sub_08007518: @ 0x08007518
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	cmp r1, #0
	beq _0800752C
	adds r2, r1, #0
	subs r2, #0x10
	adds r4, r2, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08007530
_0800752C:
	movs r0, #1
	b _08007588
_08007530:
	ldr r5, [r2]
	ldr r3, [r2, #4]
	ldr r1, _08007558 @ =0x03000548
	ldr r0, [r1]
	subs r0, r0, r3
	str r0, [r1]
	adds r2, r5, #0
	cmp r2, #0
	beq _08007552
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08007552
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r2, #4]
	adds r3, r1, r0
	ldr r5, [r2]
_08007552:
	adds r2, r6, #0
	b _0800755E
	.align 2, 0
_08007558: .4byte 0x03000548
_0800755C:
	adds r2, r0, #0
_0800755E:
	ldr r0, [r2]
	cmp r0, r4
	bne _08007576
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0800757E
	adds r4, r2, #0
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r4, #4]
	adds r3, r1, r0
	b _0800757E
_08007576:
	cmp r2, r4
	bhi _0800757E
	cmp r0, #0
	bne _0800755C
_0800757E:
	adds r2, r4, #0
	str r5, [r2]
	str r3, [r2, #4]
	movs r0, #0
	str r0, [r2, #8]
_08007588:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08007518

	thumb_func_start sub_08007590
sub_08007590: @ 0x08007590
	push {lr}
	adds r1, r0, #0
	ldr r0, _080075AC @ =0x03000550
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _080075A6
	adds r0, r2, #0
	bl sub_08007518
_080075A6:
	pop {r0}
	bx r0
	.align 2, 0
_080075AC: .4byte 0x03000550
	thumb_func_end sub_08007590

	thumb_func_start sub_080075B0
sub_080075B0: @ 0x080075B0
	push {lr}
	adds r2, r0, #0
	ldr r3, _080075D4 @ =0x0300054C
	ldr r0, [r3]
	cmp r2, r0
	bls _080075C0
	adds r0, r2, r1
	str r0, [r3]
_080075C0:
	ldr r0, _080075D8 @ =0x03000544
	ldr r2, _080075DC @ =0x03000540
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	ble _080075CE
	str r1, [r2]
_080075CE:
	pop {r0}
	bx r0
	.align 2, 0
_080075D4: .4byte 0x0300054C
_080075D8: .4byte 0x03000544
_080075DC: .4byte 0x03000540
	thumb_func_end sub_080075B0

	thumb_func_start sub_080075E0
sub_080075E0: @ 0x080075E0
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r3, #0x1f
	bls _08007606
	adds r0, #0xf
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, r0, r2
	subs r3, r3, r1
	movs r2, #0
	str r2, [r0]
	adds r1, r3, #0
	subs r1, #0x10
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	b _0800760A
_08007606:
	movs r0, #1
	rsbs r0, r0, #0
_0800760A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080075E0

	thumb_func_start sub_08007610
sub_08007610: @ 0x08007610
	push {r4, r5, lr}
	ldr r2, _0800763C @ =0x0300054C
	movs r3, #0
	str r3, [r2]
	ldr r2, _08007640 @ =0x03000544
	str r3, [r2]
	ldr r2, _08007644 @ =0x03000540
	str r3, [r2]
	ldr r4, _08007648 @ =0x0300053C
	movs r5, #1
	rsbs r5, r5, #0
	str r5, [r4]
	bl sub_080075E0
	str r0, [r4]
	cmp r0, r5
	beq _08007634
	movs r0, #0
_08007634:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800763C: .4byte 0x0300054C
_08007640: .4byte 0x03000544
_08007644: .4byte 0x03000540
_08007648: .4byte 0x0300053C
	thumb_func_end sub_08007610

	thumb_func_start sub_0800764C
sub_0800764C: @ 0x0800764C
	push {r4, r5, r6, r7, lr}
	adds r3, r1, #0
	movs r6, #0
	adds r2, r0, #0
	adds r3, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r3, r0
	movs r0, #0x10
	adds r0, r0, r3
	mov ip, r0
	movs r5, #0
	movs r7, #0
	cmp r3, #0
	bne _0800766E
	b _080076E4
_0800766C:
	adds r2, r4, #0
_0800766E:
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08007688
	ldr r0, [r2, #4]
	cmp r0, r3
	blo _08007688
	cmp r5, r0
	bhi _08007682
	cmp r5, #0
	bne _08007688
_08007682:
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r7, [r6]
_08007688:
	ldr r4, [r2]
	cmp r4, #0
	bne _0800766C
	cmp r5, #0
	beq _080076E4
	adds r0, r3, #0
	adds r0, #0x20
	cmp r5, r0
	blo _080076C0
	mov r1, ip
	adds r2, r6, r1
	str r2, [r6]
	str r3, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	ldr r1, _080076BC @ =0x03000544
	ldr r0, [r1]
	adds r0, r0, r3
	str r0, [r1]
	str r7, [r2]
	mov r1, ip
	subs r0, r5, r1
	str r0, [r2, #4]
	str r4, [r2, #8]
	b _080076D0
	.align 2, 0
_080076BC: .4byte 0x03000544
_080076C0:
	str r7, [r6]
	str r5, [r6, #4]
	movs r0, #1
	str r0, [r6, #8]
	ldr r1, _080076E0 @ =0x03000544
	ldr r0, [r1]
	adds r0, r0, r5
	str r0, [r1]
_080076D0:
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_080075B0
	adds r0, r4, #0
	b _080076E6
	.align 2, 0
_080076E0: .4byte 0x03000544
_080076E4:
	movs r0, #0
_080076E6:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0800764C

	thumb_func_start sub_080076EC
sub_080076EC: @ 0x080076EC
	push {lr}
	adds r1, r0, #0
	ldr r0, _08007704 @ =0x0300053C
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _08007708
	adds r0, r2, #0
	bl sub_0800764C
	b _0800770A
	.align 2, 0
_08007704: .4byte 0x0300053C
_08007708:
	movs r0, #0
_0800770A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080076EC

	thumb_func_start sub_08007710
sub_08007710: @ 0x08007710
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	cmp r1, #0
	beq _08007724
	adds r2, r1, #0
	subs r2, #0x10
	adds r4, r2, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08007728
_08007724:
	movs r0, #1
	b _08007780
_08007728:
	ldr r5, [r2]
	ldr r3, [r2, #4]
	ldr r1, _08007750 @ =0x03000544
	ldr r0, [r1]
	subs r0, r0, r3
	str r0, [r1]
	adds r2, r5, #0
	cmp r2, #0
	beq _0800774A
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _0800774A
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r2, #4]
	adds r3, r1, r0
	ldr r5, [r2]
_0800774A:
	adds r2, r6, #0
	b _08007756
	.align 2, 0
_08007750: .4byte 0x03000544
_08007754:
	adds r2, r0, #0
_08007756:
	ldr r0, [r2]
	cmp r0, r4
	bne _0800776E
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _08007776
	adds r4, r2, #0
	adds r1, r3, #0
	adds r1, #0x10
	ldr r0, [r4, #4]
	adds r3, r1, r0
	b _08007776
_0800776E:
	cmp r2, r4
	bhi _08007776
	cmp r0, #0
	bne _08007754
_08007776:
	adds r2, r4, #0
	str r5, [r2]
	str r3, [r2, #4]
	movs r0, #0
	str r0, [r2, #8]
_08007780:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08007710

	thumb_func_start sub_08007788
sub_08007788: @ 0x08007788
	push {lr}
	adds r1, r0, #0
	ldr r0, _080077A4 @ =0x0300053C
	ldr r2, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800779E
	adds r0, r2, #0
	bl sub_08007710
_0800779E:
	pop {r0}
	bx r0
	.align 2, 0
_080077A4: .4byte 0x0300053C
	thumb_func_end sub_08007788

	thumb_func_start sub_080077A8
sub_080077A8: @ 0x080077A8
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, [r4]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _080077D0
	ldrh r3, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r3, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	orrs r3, r0
	strh r3, [r2]
	b _080077E0
_080077D0:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	ldrb r1, [r2]
	lsls r0, r5, #0x10
	asrs r0, r0, #8
	orrs r1, r0
	strh r1, [r2]
_080077E0:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080077A8

	thumb_func_start sub_080077EC
sub_080077EC: @ 0x080077EC
	push {lr}
	adds r3, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08007806
	subs r0, #1
	str r0, [r1]
	ldr r1, [r2]
	adds r0, r3, r1
	ldrb r0, [r0]
	adds r1, #1
	str r1, [r2]
	b _0800780A
_08007806:
	movs r0, #1
	rsbs r0, r0, #0
_0800780A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080077EC

	thumb_func_start sub_08007810
sub_08007810: @ 0x08007810
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #4]
	str r1, [sp, #8]
	adds r6, r0, #0
	movs r5, #0
	mov r2, sp
	adds r2, #4
	str r2, [sp, #0x10]
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x14]
	movs r3, #0
	ldr r2, _080078A8 @ =0x000003FF
_0800783A:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080078AC @ =0x03000560
	adds r1, r4, r0
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble _0800783A
	ldr r0, _080078B0 @ =0x000003BE
	mov sb, r0
	adds r6, #4
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	ldrb r0, [r6, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r7, r1, r0
	adds r6, #4
	ldrb r1, [r6]
	lsls r1, r1, #0x18
	ldrb r0, [r6, #1]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	ldrb r0, [r6, #2]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r6, #3]
	adds r1, r1, r0
	str r1, [sp, #4]
	adds r6, #8
	movs r4, #0
	cmp r4, r7
	bhs _0800789C
_0800788A:
	ldrb r5, [r6]
	adds r6, #1
	adds r0, r5, #0
	mov r1, sp
	bl sub_080077A8
	adds r4, #1
	cmp r4, r7
	blo _0800788A
_0800789C:
	ldr r0, [sp, #4]
	subs r0, r0, r7
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	b _080079B8
	.align 2, 0
_080078A8: .4byte 0x000003FF
_080078AC: .4byte 0x03000560
_080078B0: .4byte 0x000003BE
_080078B4:
	movs r2, #0xff
	lsls r2, r2, #8
	mov sl, r2
	mov r4, sl
	orrs r4, r5
	mov sl, r4
_080078C0:
	movs r0, #1
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08007914
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_080077EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne _080078E4
	b _080079EA
_080078E4:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sp
	bl sub_080077A8
	mov r0, sb
	lsls r1, r0, #0x10
	adds r0, r1, #0
	asrs r0, r0, #0x10
	ldr r4, _08007910 @ =0x03000560
	adds r0, r4, r0
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsls r1, r1, #6
	lsrs r1, r1, #0x16
	mov sb, r1
	ldr r1, [sp, #0xc]
	adds r1, #1
	str r1, [sp, #0xc]
	b _080079B8
	.align 2, 0
_08007910: .4byte 0x03000560
_08007914:
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_080077EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080079FC @ =0xFFFF0000
	asrs r4, r2, #0x10
	cmp r0, r4
	beq _080079EA
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_080077EC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	beq _080079EA
	movs r4, #0x40
	rsbs r4, r4, #0
	adds r2, r4, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #0x12
	lsrs r0, r0, #0x10
	orrs r5, r0
	movs r0, #0x3f
	ands r0, r1
	movs r2, #0
	adds r1, r0, #3
	cmp r2, r1
	bge _080079AE
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldr r7, _08007A00 @ =0x000003FF
	adds r3, r1, #0
_0800796A:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	mov r1, r8
	adds r0, r1, r4
	ands r0, r7
	ldr r2, _08007A04 @ =0x03000560
	adds r0, r2, r0
	ldrb r5, [r0]
	adds r0, r5, #0
	mov r1, sp
	str r3, [sp, #0x18]
	bl sub_080077A8
	mov r0, sb
	lsls r1, r0, #0x10
	adds r0, r1, #0
	asrs r0, r0, #0x10
	ldr r2, _08007A04 @ =0x03000560
	adds r0, r2, r0
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	mov sb, r1
	ands r1, r7
	mov sb, r1
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x18]
	cmp r4, r3
	blt _0800796A
_080079AE:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0xc]
	adds r2, r2, r0
	str r2, [sp, #0xc]
_080079B8:
	mov r4, sl
	lsrs r0, r4, #1
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080079D0
	b _080078C0
_080079D0:
	adds r0, r6, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl sub_080077EC
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #1
	rsbs r4, r4, #0
	cmp r0, r4
	beq _080079EA
	b _080078B4
_080079EA:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080079FC: .4byte 0xFFFF0000
_08007A00: .4byte 0x000003FF
_08007A04: .4byte 0x03000560
	thumb_func_end sub_08007810

	thumb_func_start sub_08007A08
sub_08007A08: @ 0x08007A08
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r5, _08007A3C @ =0x020347B0
	ldr r7, _08007A40 @ =0x020347B8
_08007A12:
	subs r5, #1
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080446C0
	ldr r1, [r7]
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08044648
	adds r4, r0, #0
	cmp r4, #0
	bne _08007A12
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007A3C: .4byte 0x020347B0
_08007A40: .4byte 0x020347B8
	thumb_func_end sub_08007A08

	thumb_func_start sub_08007A44
sub_08007A44: @ 0x08007A44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r1, #0
	mov sb, r2
	movs r0, #0
	mov r8, r0
	mov sl, r0
_08007A5A:
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x25
	beq _08007A6A
	cmp r2, #0
	bne _08007A68
	b _08007F00
_08007A68:
	b _08007CF0
_08007A6A:
	movs r4, #0
	ldr r7, _08007A8C @ =0x020347B4
	strb r4, [r7]
	ldr r3, _08007A90 @ =0x020347B8
	ldr r0, _08007A94 @ =0x08205210
	mov ip, r0
_08007A76:
	ldrb r2, [r6]
	adds r0, r2, #0
	subs r0, #0x20
	adds r6, #1
	cmp r0, #0x10
	bhi _08007B04
	lsls r0, r0, #2
	ldr r1, _08007A98 @ =_08007A9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007A8C: .4byte 0x020347B4
_08007A90: .4byte 0x020347B8
_08007A94: .4byte 0x08205210
_08007A98: .4byte _08007A9C
_08007A9C: @ jump table
	.4byte _08007AF2 @ case 0
	.4byte _08007B04 @ case 1
	.4byte _08007B04 @ case 2
	.4byte _08007AF8 @ case 3
	.4byte _08007B04 @ case 4
	.4byte _08007B04 @ case 5
	.4byte _08007B04 @ case 6
	.4byte _08007B04 @ case 7
	.4byte _08007B04 @ case 8
	.4byte _08007B04 @ case 9
	.4byte _08007B04 @ case 10
	.4byte _08007AE6 @ case 11
	.4byte _08007B04 @ case 12
	.4byte _08007AE0 @ case 13
	.4byte _08007B04 @ case 14
	.4byte _08007B04 @ case 15
	.4byte _08007AEC @ case 16
_08007AE0:
	movs r0, #1
	orrs r4, r0
	b _08007A76
_08007AE6:
	movs r0, #2
	orrs r4, r0
	b _08007A76
_08007AEC:
	movs r0, #4
	orrs r4, r0
	b _08007A76
_08007AF2:
	movs r0, #8
	orrs r4, r0
	b _08007A76
_08007AF8:
	movs r0, #1
	ldr r1, _08007B00 @ =0x020347B4
	strb r0, [r1]
	b _08007A76
	.align 2, 0
_08007B00: .4byte 0x020347B4
_08007B04:
	cmp r2, #0x2a
	bne _08007B28
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r7, r1, #4
	mov sb, r7
	ldr r5, [r1]
	cmp r5, #0
	bge _08007B22
	movs r0, #1
	orrs r4, r0
	rsbs r5, r5, #0
_08007B22:
	ldrb r2, [r6]
	adds r6, #1
	b _08007B2A
_08007B28:
	movs r5, #0
_08007B2A:
	movs r7, #0
	cmp r2, #0x2e
	bne _08007B48
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x2a
	bne _08007B48
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r7, [r1]
_08007B48:
	adds r0, r2, #0
	subs r0, #0x31
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _08007B5C
	adds r7, r2, #0
	subs r7, #0x30
	ldrb r2, [r6]
	adds r6, #1
_08007B5C:
	movs r1, #0
	str r1, [sp]
	mov r0, ip
	str r0, [r3]
	movs r1, #0xa
	str r1, [sp, #4]
_08007B68:
	adds r0, r2, #0
	subs r0, #0x4c
	cmp r0, #0x2c
	bls _08007B72
	b _08007CF0
_08007B72:
	lsls r0, r0, #2
	ldr r1, _08007B7C @ =_08007B80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007B7C: .4byte _08007B80
_08007B80: @ jump table
	.4byte _08007CE6 @ case 0
	.4byte _08007CF0 @ case 1
	.4byte _08007CF0 @ case 2
	.4byte _08007CF0 @ case 3
	.4byte _08007CF0 @ case 4
	.4byte _08007CF0 @ case 5
	.4byte _08007CF0 @ case 6
	.4byte _08007CF0 @ case 7
	.4byte _08007CF0 @ case 8
	.4byte _08007CF0 @ case 9
	.4byte _08007CF0 @ case 10
	.4byte _08007CF0 @ case 11
	.4byte _08007C40 @ case 12
	.4byte _08007CF0 @ case 13
	.4byte _08007CF0 @ case 14
	.4byte _08007CF0 @ case 15
	.4byte _08007CF0 @ case 16
	.4byte _08007CF0 @ case 17
	.4byte _08007CF0 @ case 18
	.4byte _08007CF0 @ case 19
	.4byte _08007CF0 @ case 20
	.4byte _08007CF0 @ case 21
	.4byte _08007CF0 @ case 22
	.4byte _08007C54 @ case 23
	.4byte _08007C34 @ case 24
	.4byte _08007CF0 @ case 25
	.4byte _08007CF0 @ case 26
	.4byte _08007CF0 @ case 27
	.4byte _08007CD4 @ case 28
	.4byte _08007C34 @ case 29
	.4byte _08007CF0 @ case 30
	.4byte _08007CF0 @ case 31
	.4byte _08007CD8 @ case 32
	.4byte _08007CF0 @ case 33
	.4byte _08007CAC @ case 34
	.4byte _08007C3A @ case 35
	.4byte _08007CC2 @ case 36
	.4byte _08007CF0 @ case 37
	.4byte _08007CF0 @ case 38
	.4byte _08007C74 @ case 39
	.4byte _08007CF0 @ case 40
	.4byte _08007D04 @ case 41
	.4byte _08007CF0 @ case 42
	.4byte _08007CF0 @ case 43
	.4byte _08007C44 @ case 44
_08007C34:
	movs r0, #1
	str r0, [sp]
	b _08007D04
_08007C3A:
	movs r1, #8
	str r1, [sp, #4]
	b _08007C48
_08007C40:
	ldr r0, _08007C50 @ =0x08205224
	str r0, [r3]
_08007C44:
	movs r0, #0x10
	str r0, [sp, #4]
_08007C48:
	movs r0, #0xb
	rsbs r0, r0, #0
	ands r4, r0
	b _08007D04
	.align 2, 0
_08007C50: .4byte 0x08205224
_08007C54:
	ldr r1, _08007C70 @ =0x020346B0
	mov r8, r1
	mov r0, sb
	adds r0, #3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	adds r7, r0, #4
	mov sb, r7
	ldr r0, [r0]
	mov r1, r8
	strb r0, [r1]
	movs r3, #1
	b _08007E92
	.align 2, 0
_08007C70: .4byte 0x020346B0
_08007C74:
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r1, [r1]
	mov r8, r1
	cmp r1, #0
	bne _08007C8E
	ldr r1, _08007CA8 @ =0x080460A4
	mov r8, r1
_08007C8E:
	mov r0, r8
	bl sub_08046024
	adds r3, r0, #0
	cmp r7, #0
	bne _08007C9C
	b _08007E92
_08007C9C:
	cmp r3, r7
	bgt _08007CA2
	b _08007E92
_08007CA2:
	adds r3, r7, #0
	b _08007E92
	.align 2, 0
_08007CA8: .4byte 0x080460A4
_08007CAC:
	mov r0, sb
	adds r0, #3
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	adds r7, r0, #4
	mov sb, r7
	ldr r0, [r0]
	mov r1, sl
	str r1, [r0]
	b _08007A5A
_08007CC2:
	movs r4, #0
	movs r7, #8
	ldr r0, _08007CD0 @ =0x08205224
	str r0, [r3]
	movs r0, #0x10
	str r0, [sp, #4]
	b _08007D04
	.align 2, 0
_08007CD0: .4byte 0x08205224
_08007CD4:
	movs r0, #0x40
	b _08007CE8
_08007CD8:
	ldrb r2, [r6]
	adds r6, #1
	cmp r2, #0x6c
	beq _08007CE2
	b _08007B68
_08007CE2:
	movs r0, #0x20
	b _08007CE8
_08007CE6:
	movs r0, #0x80
_08007CE8:
	orrs r4, r0
	ldrb r2, [r6]
	adds r6, #1
	b _08007B68
_08007CF0:
	ldr r1, _08007D00 @ =0x020346A4
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	movs r1, #1
	add sl, r1
	b _08007A5A
	.align 2, 0
_08007D00: .4byte 0x020346A4
_08007D04:
	cmp r7, #0
	beq _08007D0E
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
_08007D0E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	bne _08007D5A
	mov r1, sb
	adds r1, #3
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	adds r0, r1, #4
	mov sb, r0
	ldr r1, [r1]
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08007D3E
	ldr r0, [sp]
	cmp r0, #0
	beq _08007D3A
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	b _08007D3E
_08007D3A:
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
_08007D3E:
	ldr r0, [sp]
	cmp r0, #0
	beq _08007D50
	cmp r1, #0
	bge _08007D50
	rsbs r1, r1, #0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r4, r0
_08007D50:
	adds r0, r1, #0
	ldr r1, [sp, #4]
	bl sub_08007A08
	mov r8, r0
_08007D5A:
	ldr r0, _08007DCC @ =0x020347B0
	mov r1, r8
	subs r3, r0, r1
	movs r0, #0
	mov ip, r0
	ldr r0, _08007DD0 @ =0x020347B4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08007D8E
	ldr r1, [sp, #4]
	cmp r1, #0xa
	beq _08007D8E
	ldr r0, [sp]
	cmp r0, #0
	bne _08007D8E
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0x30
	beq _08007D8E
	movs r0, #1
	mov ip, r0
	ldr r1, [sp, #4]
	cmp r1, #0x10
	bne _08007D8E
	movs r0, #2
	mov ip, r0
_08007D8E:
	movs r0, #5
	ands r0, r4
	cmp r0, #4
	bne _08007D98
	adds r7, r5, #0
_08007D98:
	cmp r7, #0
	beq _08007E30
	movs r0, #0x85
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08007DF2
	subs r7, #1
	movs r1, #0
	cmp r1, #0
	beq _08007DF2
	subs r5, #1
	movs r0, #1
	add sl, r0
	adds r0, #0xff
	ands r0, r4
	cmp r0, #0
	beq _08007DD8
	ldr r2, _08007DD4 @ =0x020346A4
	ldr r1, [r2]
	movs r0, #0x2d
	strb r0, [r1]
	adds r1, #1
	str r1, [r2]
	b _08007DEE
	.align 2, 0
_08007DCC: .4byte 0x020347B0
_08007DD0: .4byte 0x020347B4
_08007DD4: .4byte 0x020346A4
_08007DD8:
	ldr r0, _08007E18 @ =0x020346A4
	ldr r2, [r0]
	adds r1, r2, #1
	str r1, [r0]
	movs r0, #2
	ands r0, r4
	movs r1, #0x20
	cmp r0, #0
	beq _08007DEC
	movs r1, #0x2b
_08007DEC:
	strb r1, [r2]
_08007DEE:
	ldr r0, _08007E1C @ =0xFFFFFEF5
	ands r4, r0
_08007DF2:
	mov r1, ip
	subs r7, r7, r1
	cmp r3, r7
	bge _08007E30
	ldr r2, _08007E18 @ =0x020346A4
	movs r1, #0x30
_08007DFE:
	movs r0, #0
	cmp r0, #0
	beq _08007E20
	ldr r0, [r2]
	strb r1, [r0]
	adds r0, #1
	str r0, [r2]
	subs r5, #1
	movs r0, #1
	add sl, r0
	subs r7, #1
	b _08007E2C
	.align 2, 0
_08007E18: .4byte 0x020346A4
_08007E1C: .4byte 0xFFFFFEF5
_08007E20:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	mov r0, r8
	strb r1, [r0]
	adds r3, #1
_08007E2C:
	cmp r3, r7
	blt _08007DFE
_08007E30:
	mov r1, ip
	cmp r1, #0
	beq _08007E58
	cmp r1, #2
	bne _08007E4A
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	ldr r0, _08007E78 @ =0x020347B8
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	mov r1, r8
	strb r0, [r1]
_08007E4A:
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	add r3, ip
_08007E58:
	movs r0, #0x85
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08007E92
	adds r3, #1
	movs r7, #1
	rsbs r7, r7, #0
	add r8, r7
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08007E7C
	movs r0, #0x2d
	b _08007E8E
	.align 2, 0
_08007E78: .4byte 0x020347B8
_08007E7C:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08007E8C
	movs r0, #0x2b
	mov r7, r8
	strb r0, [r7]
	b _08007E92
_08007E8C:
	movs r0, #0x20
_08007E8E:
	mov r1, r8
	strb r0, [r1]
_08007E92:
	movs r0, #1
	ands r4, r0
	subs r7, r3, #1
	cmp r4, #0
	bne _08007EB6
	cmp r5, r3
	ble _08007EB6
	ldr r1, _08007EFC @ =0x020346A4
	movs r2, #0x20
_08007EA4:
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	subs r5, #1
	movs r0, #1
	add sl, r0
	cmp r5, r3
	bgt _08007EA4
_08007EB6:
	subs r5, r5, r3
	add sl, r3
	adds r3, r7, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08007EDE
	ldr r2, _08007EFC @ =0x020346A4
	adds r4, r0, #0
_08007EC8:
	ldr r1, [r2]
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	adds r1, #1
	str r1, [r2]
	subs r3, #1
	cmp r3, r4
	bne _08007EC8
_08007EDE:
	cmp r5, #0
	bgt _08007EE4
	b _08007A5A
_08007EE4:
	ldr r1, _08007EFC @ =0x020346A4
	movs r2, #0x20
_08007EE8:
	ldr r0, [r1]
	strb r2, [r0]
	adds r0, #1
	str r0, [r1]
	subs r5, #1
	movs r7, #1
	add sl, r7
	cmp r5, #0
	bgt _08007EE8
	b _08007A5A
	.align 2, 0
_08007EFC: .4byte 0x020346A4
_08007F00:
	ldr r0, _08007F18 @ =0x020347B4
	strb r2, [r0]
	mov r0, sl
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007F18: .4byte 0x020347B4
	thumb_func_end sub_08007A44

	thumb_func_start sub_08007F1C
sub_08007F1C: @ 0x08007F1C
	push {r1, r2, r3}
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [sp, #8]
	add r2, sp, #0xc
	ldr r3, _08007F4C @ =0x020346A0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3]
	ldr r3, _08007F50 @ =0x020346A4
	ldr r0, _08007F54 @ =0x020347B0
	str r4, [r0]
	str r4, [r3]
	adds r0, r4, #0
	bl sub_08007A44
	adds r4, r4, r0
	movs r1, #0
	strb r1, [r4]
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_08007F4C: .4byte 0x020346A0
_08007F50: .4byte 0x020346A4
_08007F54: .4byte 0x020347B0
	thumb_func_end sub_08007F1C

	thumb_func_start sub_08007F58
sub_08007F58: @ 0x08007F58
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08007F90 @ =0x03001D5C
	ldr r0, [r0]
	cmp r0, #0
	bne _08007F88
	lsrs r2, r2, #3
	lsls r0, r3, #0xd
	lsrs r5, r0, #0x10
	cmp r2, #0
	beq _08007F88
	adds r4, r1, #0
	adds r6, r2, #0
_08007F72:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08043D50
	adds r4, #8
	subs r6, #1
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r6, #0
	bne _08007F72
_08007F88:
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08007F90: .4byte 0x03001D5C
	thumb_func_end sub_08007F58

	thumb_func_start sub_08007F94
sub_08007F94: @ 0x08007F94
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r0, _08007FA4 @ =0x03001D5C
	ldr r0, [r0]
	cmp r0, #0
	beq _08007FA8
	movs r0, #0
	b _08007FD4
	.align 2, 0
_08007FA4: .4byte 0x03001D5C
_08007FA8:
	lsrs r2, r2, #3
	lsls r0, r1, #0xd
	lsrs r6, r0, #0x10
	movs r1, #0
	cmp r1, r2
	bge _08007FD2
	adds r5, r3, #0
	adds r4, r2, #0
_08007FB8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08043FCC
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	adds r5, #8
	subs r4, #1
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r4, #0
	bne _08007FB8
_08007FD2:
	adds r0, r1, #0
_08007FD4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08007F94

	thumb_func_start sub_08007FDC
sub_08007FDC: @ 0x08007FDC
	push {lr}
	movs r2, #0
	ldr r0, _08008000 @ =0x03001D50
	ldr r1, [r0]
	ldr r0, [r1]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq _08007FF8
_08007FEE:
	adds r1, #4
	adds r2, #1
	ldr r0, [r1]
	cmp r0, r3
	bne _08007FEE
_08007FF8:
	subs r0, r2, #1
	pop {r1}
	bx r1
	.align 2, 0
_08008000: .4byte 0x03001D50
	thumb_func_end sub_08007FDC

	thumb_func_start sub_08008004
sub_08008004: @ 0x08008004
	adds r1, r0, #0
	ldr r0, _08008018 @ =0x03001D50
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r1, [r1]
	subs r0, r0, r1
	bx lr
	.align 2, 0
_08008018: .4byte 0x03001D50
	thumb_func_end sub_08008004

	thumb_func_start sub_0800801C
sub_0800801C: @ 0x0800801C
	ldr r1, _08008028 @ =0x03001D50
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08008028: .4byte 0x03001D50
	thumb_func_end sub_0800801C

	thumb_func_start sub_0800802C
sub_0800802C: @ 0x0800802C
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08008004
	adds r1, r0, #0
	subs r0, #0x10
	adds r4, #0x10
	movs r2, #0
	cmp r2, r0
	bge _08008052
	subs r1, #0x10
_08008042:
	ldrb r0, [r4]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r1, #1
	adds r4, #1
	cmp r1, #0
	bne _08008042
_08008052:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800802C

	thumb_func_start sub_0800805C
sub_0800805C: @ 0x0800805C
	ldrh r0, [r0, #0xc]
	bx lr
	thumb_func_end sub_0800805C

	thumb_func_start sub_08008060
sub_08008060: @ 0x08008060
	strh r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_08008060

	thumb_func_start sub_08008064
sub_08008064: @ 0x08008064
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
_0800806C:
	adds r0, r4, r2
	adds r1, r3, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _0800807C
	movs r0, #1
	b _08008084
_0800807C:
	adds r2, #1
	cmp r2, #7
	ble _0800806C
	movs r0, #0
_08008084:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08008064

	thumb_func_start sub_0800808C
sub_0800808C: @ 0x0800808C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r2, #0
_08008094:
	adds r0, r4, r2
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #7
	ble _08008094
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800808C

	thumb_func_start sub_080080A8
sub_080080A8: @ 0x080080A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08008004
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0800801C
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08007F58
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080080A8

	thumb_func_start sub_080080C8
sub_080080C8: @ 0x080080C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	bl sub_08008004
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_0800801C
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08007F94
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080080C8

	thumb_func_start sub_080080EC
sub_080080EC: @ 0x080080EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	str r1, [sp]
	bl sub_08008004
	mov sb, r0
	movs r0, #1
	mov r1, sb
	bl sub_080038A8
	adds r7, r0, #0
	adds r1, r7, #0
	mov r0, sb
	cmp r0, #0
	ble _08008120
	movs r2, #0
_08008116:
	strb r2, [r1]
	subs r0, #1
	adds r1, #1
	cmp r0, #0
	bne _08008116
_08008120:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	bl sub_08006938
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08006938
	mov r8, r0
	adds r0, r5, #0
	bl sub_08006938
	adds r6, r0, #0
	adds r0, r5, #0
	bl sub_08006938
	lsls r4, r4, #0x18
	mov r1, r8
	lsls r1, r1, #0x10
	mov r8, r1
	add r4, r8
	lsls r6, r6, #8
	adds r4, r4, r6
	adds r4, r4, r0
	str r4, [r7, #8]
	mov r1, sb
	adds r0, r7, r1
	subs r0, #4
	str r4, [r0]
	ldr r0, _08008170 @ =0x03001D50
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl sub_0800808C
	ldr r0, [sp]
	cmp r0, #0
	bne _08008174
	movs r0, #1
	b _08008176
	.align 2, 0
_08008170: .4byte 0x03001D50
_08008174:
	movs r0, #0
_08008176:
	strh r0, [r7, #0xe]
	ldrh r0, [r7, #0xe]
	movs r2, #0
	cmp r0, #0
	bne _08008182
	subs r2, #1
_08008182:
	adds r1, r7, #0
	adds r1, #0x10
	ldr r0, _080081C8 @ =0x03001D50
	ldr r3, [r0, #8]
	adds r0, r1, #0
	mov r1, sl
	bl sub_08044038
	mov r0, sl
	adds r1, r7, #0
	bl sub_0800802C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	bl sub_08008060
	mov r0, sl
	adds r1, r7, #0
	bl sub_080080C8
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_080038C8
	adds r0, r4, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080081C8: .4byte 0x03001D50
	thumb_func_end sub_080080EC

	thumb_func_start sub_080081CC
sub_080081CC: @ 0x080081CC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08008004
	adds r4, r0, #0
	movs r0, #1
	adds r1, r4, #0
	bl sub_080038A8
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080080A8
	ldr r0, _08008250 @ =0x03001D50
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl sub_08008064
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	adds r4, r5, r4
	subs r4, #4
	ldr r1, [r5, #8]
	ldr r0, [r4]
	cmp r1, r0
	beq _08008206
	movs r6, #1
_08008206:
	adds r0, r5, #0
	bl sub_0800805C
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800802C
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _08008220
	movs r6, #1
_08008220:
	adds r1, r5, #0
	adds r1, #0x10
	cmp r6, #0
	bne _08008232
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _08008232
	movs r6, #1
	rsbs r6, r6, #0
_08008232:
	ldr r0, _08008250 @ =0x03001D50
	ldr r3, [r0, #8]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_08044038
	adds r0, r5, #0
	bl sub_080038C8
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008250: .4byte 0x03001D50
	thumb_func_end sub_080081CC

	thumb_func_start sub_08008254
sub_08008254: @ 0x08008254
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08008004
	adds r4, r0, #0
	movs r0, #1
	adds r1, r4, #0
	bl sub_080038A8
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_080080A8
	ldr r0, _080082C4 @ =0x03001D50
	ldr r1, [r0, #4]
	adds r0, r5, #0
	bl sub_08008064
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	adds r4, r5, r4
	subs r4, #4
	ldr r1, [r5, #8]
	ldr r0, [r4]
	cmp r1, r0
	beq _0800828E
	movs r6, #1
_0800828E:
	adds r0, r5, #0
	bl sub_0800805C
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0800802C
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	cmp r4, r0
	beq _080082A8
	movs r6, #1
_080082A8:
	cmp r6, #0
	bne _080082B6
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _080082B6
	movs r6, #1
	rsbs r6, r6, #0
_080082B6:
	adds r0, r5, #0
	bl sub_080038C8
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080082C4: .4byte 0x03001D50
	thumb_func_end sub_08008254

	thumb_func_start sub_080082C8
sub_080082C8: @ 0x080082C8
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r1, _080082EC @ =0x03001D50
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r2, #4]
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	str r0, [r1, #8]
	cmp r3, #2
	beq _08008304
	cmp r3, #2
	bgt _080082F0
	cmp r3, #1
	beq _080082FA
	b _0800831E
	.align 2, 0
_080082EC: .4byte 0x03001D50
_080082F0:
	cmp r3, #3
	beq _0800830C
	cmp r3, #4
	beq _08008314
	b _0800831E
_080082FA:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080080EC
	b _08008320
_08008304:
	adds r0, r4, #0
	bl sub_080081CC
	b _08008320
_0800830C:
	adds r0, r4, #0
	bl sub_08008254
	b _08008320
_08008314:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080080EC
	b _08008320
_0800831E:
	movs r0, #0
_08008320:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080082C8

	thumb_func_start sub_08008328
sub_08008328: @ 0x08008328
	bx lr
	.align 2, 0
	thumb_func_end sub_08008328

	thumb_func_start sub_0800832C
sub_0800832C: @ 0x0800832C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800832C

	thumb_func_start sub_08008330
sub_08008330: @ 0x08008330
	bx lr
	.align 2, 0
	thumb_func_end sub_08008330

	thumb_func_start sub_08008334
sub_08008334: @ 0x08008334
	push {r4, lr}
	ldr r4, _08008354 @ =0x03001D5C
	movs r0, #0
	str r0, [r4]
	movs r0, #4
	bl sub_08043C88
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0800834C
	movs r0, #1
	str r0, [r4]
_0800834C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08008354: .4byte 0x03001D5C
	thumb_func_end sub_08008334

	thumb_func_start sub_08008358
sub_08008358: @ 0x08008358
	push {lr}
	bl sub_08042790
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008358

	thumb_func_start sub_08008364
sub_08008364: @ 0x08008364
	push {lr}
	bl sub_08042144
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008364

	thumb_func_start sub_08008370
sub_08008370: @ 0x08008370
	push {lr}
	bl sub_08042808
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008370

	thumb_func_start sub_0800837C
sub_0800837C: @ 0x0800837C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08042814
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800837C

	thumb_func_start sub_0800838C
sub_0800838C: @ 0x0800838C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080428E0
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800838C

	thumb_func_start sub_0800839C
sub_0800839C: @ 0x0800839C
	push {lr}
	ldr r0, _080083B0 @ =0x08205258
	ldr r0, [r0]
	ldr r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _080083B4
	movs r0, #1
	b _080083B6
	.align 2, 0
_080083B0: .4byte 0x08205258
_080083B4:
	movs r0, #0
_080083B6:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800839C

	thumb_func_start sub_080083BC
sub_080083BC: @ 0x080083BC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x14
	cmp r3, #0
	bne _080083C8
	movs r3, #1
_080083C8:
	ldr r2, _080083E4 @ =0x08205258
	ldr r1, _080083E8 @ =0x0804AC18
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	adds r1, r3, #0
	bl sub_080429AC
	pop {r0}
	bx r0
	.align 2, 0
_080083E4: .4byte 0x08205258
_080083E8: .4byte 0x0804AC18
	thumb_func_end sub_080083BC

	thumb_func_start sub_080083EC
sub_080083EC: @ 0x080083EC
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _0800840C @ =0x08205258
	ldr r2, _08008410 @ =0x0804AC18
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	bl sub_0804374C
	pop {r0}
	bx r0
	.align 2, 0
_0800840C: .4byte 0x08205258
_08008410: .4byte 0x0804AC18
	thumb_func_end sub_080083EC

	thumb_func_start sub_08008414
sub_08008414: @ 0x08008414
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08042814
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008414

	thumb_func_start sub_08008424
sub_08008424: @ 0x08008424
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080428E0
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008424

	thumb_func_start sub_08008434
sub_08008434: @ 0x08008434
	push {lr}
	ldr r1, _08008450 @ =0x08205258
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0800845C
	movs r2, #0x80
	lsls r2, r2, #0x18
	adds r1, #4
_08008444:
	ldr r0, [r0, #4]
	cmp r0, r2
	beq _08008454
	movs r0, #1
	b _0800845E
	.align 2, 0
_08008450: .4byte 0x08205258
_08008454:
	adds r1, #4
	ldr r0, [r1]
	cmp r0, #0
	bne _08008444
_0800845C:
	movs r0, #0
_0800845E:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08008434

	thumb_func_start sub_08008464
sub_08008464: @ 0x08008464
	push {lr}
	movs r0, #0
	bl sub_08042814
	pop {r0}
	bx r0
	thumb_func_end sub_08008464

	thumb_func_start sub_08008470
sub_08008470: @ 0x08008470
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x14
	cmp r5, #0
	bne _0800847C
	movs r5, #1
_0800847C:
	ldr r1, _0800849C @ =0x08205258
	ldr r0, [r1]
	cmp r0, #0
	beq _08008494
	adds r4, r1, #0
_08008486:
	adds r1, r5, #0
	bl sub_080429AC
	adds r4, #4
	ldr r0, [r4]
	cmp r0, #0
	bne _08008486
_08008494:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800849C: .4byte 0x08205258
	thumb_func_end sub_08008470

	thumb_func_start sub_080084A0
sub_080084A0: @ 0x080084A0
	bx lr
	.align 2, 0
	thumb_func_end sub_080084A0

	thumb_func_start sub_080084A4
sub_080084A4: @ 0x080084A4
	bx lr
	.align 2, 0
	thumb_func_end sub_080084A4

	thumb_func_start sub_080084A8
sub_080084A8: @ 0x080084A8
	bx lr
	.align 2, 0
	thumb_func_end sub_080084A8

	thumb_func_start sub_080084AC
sub_080084AC: @ 0x080084AC
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #0x1e]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x1d]
	adds r3, r2, #0
	adds r3, #0x4a
	movs r0, #0xf
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x48
	strb r1, [r0]
	strh r1, [r2, #0x16]
	ldr r0, _080084D8 @ =0x04000134
	strh r1, [r0]
	ldr r2, _080084DC @ =0x04000128
	ldr r3, _080084E0 @ =0x00002003
	adds r0, r3, #0
	strh r0, [r2]
	ldr r0, _080084E4 @ =0x0400012A
	strh r1, [r0]
	bx lr
	.align 2, 0
_080084D8: .4byte 0x04000134
_080084DC: .4byte 0x04000128
_080084E0: .4byte 0x00002003
_080084E4: .4byte 0x0400012A
	thumb_func_end sub_080084AC

	thumb_func_start sub_080084E8
sub_080084E8: @ 0x080084E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	bl sub_08008A0C
	cmp r0, #0
	beq _080084FE
	b _080088C6
_080084FE:
	adds r0, r7, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	mov sl, r0
	cmp r1, #0xf
	bls _08008512
	subs r0, r1, #1
	mov r1, sl
	strb r0, [r1]
	b _080088C6
_08008512:
	adds r1, r7, #0
	adds r1, #0x48
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800853C
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08008538 @ =0x04000128
	ldrh r0, [r0]
	movs r5, #0xfc
	ands r5, r0
	cmp r5, #8
	beq _0800853C
	adds r0, r7, #0
	bl sub_080084AC
	movs r0, #8
	eors r0, r5
	b _080088C8
	.align 2, 0
_08008538: .4byte 0x04000128
_0800853C:
	ldrb r0, [r7, #0x18]
	cmp r0, #0xdf
	bls _0800858E
	adds r0, r7, #0
	bl sub_08008A20
	adds r5, r0, #0
	cmp r5, #0
	beq _08008550
	b _080088C8
_08008550:
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800856C
	ldrb r0, [r7, #0x18]
	cmp r0, #0xe1
	bls _0800856C
	adds r0, r7, #0
	bl sub_08008A0C
	cmp r0, #0
	bne _0800856C
	b _080088B6
_0800856C:
	adds r0, r7, #0
	bl sub_08008A0C
	cmp r0, #0
	beq _08008578
	b _080088C6
_08008578:
	ldrh r0, [r7, #0x16]
	cmp r0, #0
	bne _08008588
	adds r0, r7, #0
	bl sub_080084AC
	movs r0, #0x71
	b _080088C8
_08008588:
	subs r0, #1
	strh r0, [r7, #0x16]
	b _080088C6
_0800858E:
	ldrb r0, [r7, #0x18]
	cmp r0, #2
	bne _08008596
	b _080086CC
_08008596:
	cmp r0, #2
	bgt _080085A4
	cmp r0, #0
	beq _080085B2
	cmp r0, #1
	beq _0800866E
	b _08008804
_080085A4:
	cmp r0, #0xd0
	bne _080085AA
	b _08008718
_080085AA:
	cmp r0, #0xd1
	bne _080085B0
	b _080087B2
_080085B0:
	b _08008804
_080085B2:
	movs r3, #0xe
	movs r5, #3
	ldr r0, _080085F8 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, _080085FC @ =0x0000FFFF
	ldrb r2, [r7, #0x1e]
	adds r6, r2, #0
	cmp r1, r0
	bne _080085DA
	adds r4, r1, #0
	ldr r1, _08008600 @ =0x04000126
_080085CA:
	asrs r3, r3, #1
	subs r1, #2
	subs r5, #1
	cmp r5, #0
	beq _080085DA
	ldrh r0, [r1]
	cmp r0, r4
	beq _080085CA
_080085DA:
	movs r0, #0xe
	ands r3, r0
	strb r3, [r7, #0x1d]
	movs r5, #3
	ldr r0, _080085F8 @ =0x04000120
	ldrh r0, [r0, #6]
	adds r4, r0, #0
	asrs r0, r2, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008608
	ldr r0, _08008604 @ =0x00007208
	b _0800862E
	.align 2, 0
_080085F8: .4byte 0x04000120
_080085FC: .4byte 0x0000FFFF
_08008600: .4byte 0x04000126
_08008604: .4byte 0x00007208
_08008608:
	subs r5, #1
	cmp r5, #0
	beq _08008634
	lsls r0, r5, #1
	ldr r1, _0800865C @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	adds r0, r2, #0
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008608
	adds r0, r1, #0
	lsls r0, r5
	movs r1, #0xe4
	lsls r1, r1, #7
	orrs r0, r1
_0800862E:
	cmp r4, r0
	beq _08008608
	movs r3, #0
_08008634:
	adds r0, r3, #0
	ands r0, r6
	strb r0, [r7, #0x1e]
	cmp r3, #0
	bne _08008644
	movs r0, #0xf
	mov r2, sl
	strb r0, [r2]
_08008644:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0
	bne _08008660
	ldrb r0, [r7, #0x1d]
	ldrb r2, [r7, #0x1e]
	cmp r0, r2
	beq _08008666
	adds r0, r7, #0
	bl sub_08008924
	b _0800866E
	.align 2, 0
_0800865C: .4byte 0x04000120
_08008660:
	subs r0, #1
	mov r1, sl
	strb r0, [r1]
_08008666:
	ldrb r1, [r7, #0x1e]
	movs r2, #0xc4
	lsls r2, r2, #7
	b _0800876E
_0800866E:
	adds r1, r7, #0
	adds r1, #0x49
	movs r0, #0
	strb r0, [r1]
	movs r5, #3
	mov ip, r1
	ldr r3, _080086C4 @ =0x03000000
_0800867C:
	lsls r0, r5, #1
	ldr r2, _080086C8 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r0, r4, #8
	subs r2, r5, #1
	cmp r0, #0x72
	bne _080086A6
	lsls r0, r2, #1
	adds r0, r0, r3
	strh r4, [r0]
	movs r0, #0xff
	ands r4, r0
	movs r0, #1
	lsls r0, r5
	cmp r4, r0
	bne _080086A6
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
_080086A6:
	adds r5, r2, #0
	cmp r5, #0
	bne _0800867C
	ldrb r0, [r7, #0x1d]
	mov r1, ip
	ldrb r1, [r1]
	cmp r0, r1
	bne _08008666
	movs r0, #2
	strb r0, [r7, #0x18]
	mov r2, ip
	ldrb r1, [r2]
	movs r2, #0xc2
	lsls r2, r2, #7
	b _0800876E
	.align 2, 0
_080086C4: .4byte 0x03000000
_080086C8: .4byte 0x04000120
_080086CC:
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	mov r4, ip
	movs r6, #1
	ldr r1, _08008710 @ =0x03000000
	mov sb, r1
	ldr r2, _08008714 @ =0x04000120
	mov r8, r2
_080086E0:
	ldrb r3, [r4]
	adds r0, r3, #0
	asrs r0, r5
	ands r0, r6
	subs r2, r5, #1
	cmp r0, #0
	beq _08008706
	lsls r0, r5, #1
	add r0, r8
	ldrh r1, [r0]
	lsls r0, r2, #1
	add r0, sb
	ldrh r0, [r0]
	cmp r1, r0
	beq _08008706
	adds r0, r6, #0
	lsls r0, r5
	eors r3, r0
	strb r3, [r4]
_08008706:
	adds r5, r2, #0
	cmp r5, #0
	bne _080086E0
	b _0800886C
	.align 2, 0
_08008710: .4byte 0x03000000
_08008714: .4byte 0x04000120
_08008718:
	movs r3, #1
	movs r5, #3
	movs r0, #0x49
	adds r0, r0, r7
	mov ip, r0
	adds r6, r7, #0
	adds r6, #0x19
	ldr r1, _0800877C @ =0x03000000
	mov r8, r1
_0800872A:
	lsls r0, r5, #1
	ldr r2, _08008780 @ =0x04000120
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r4, r0, #0
	subs r2, r5, #1
	adds r0, r6, r2
	strb r4, [r0]
	mov r0, ip
	ldrb r1, [r0]
	asrs r1, r5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0800875E
	asrs r0, r4, #8
	subs r0, #0x72
	cmp r0, #1
	bls _08008752
	b _080088BC
_08008752:
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0]
	cmp r4, r0
	bne _0800875E
	movs r3, #0
_0800875E:
	adds r5, r2, #0
	cmp r5, #0
	bne _0800872A
	cmp r3, #0
	bne _08008784
	ldrb r1, [r7, #0x1c]
	movs r2, #0xc6
	lsls r2, r2, #7
_0800876E:
	adds r0, r2, #0
	orrs r1, r0
	adds r0, r7, #0
	bl sub_080088D8
	b _080088C8
	.align 2, 0
_0800877C: .4byte 0x03000000
_08008780: .4byte 0x04000120
_08008784:
	movs r0, #0xd1
	strb r0, [r7, #0x18]
	movs r3, #0x11
	movs r5, #3
	adds r1, r6, #2
_0800878E:
	ldrb r0, [r1]
	adds r3, r3, r0
	subs r1, #1
	subs r5, #1
	cmp r5, #0
	bne _0800878E
	strb r3, [r7, #0x14]
	movs r0, #0xff
	ands r3, r0
	movs r1, #0xc8
	lsls r1, r1, #7
	adds r0, r1, #0
	orrs r3, r0
	adds r0, r7, #0
	adds r1, r3, #0
	bl sub_080088D8
	b _080088C8
_080087B2:
	movs r5, #3
	movs r2, #0x49
	ldrb r1, [r2, r7]
	ldr r2, _080087F0 @ =0x04000126
	movs r3, #1
_080087BC:
	ldrh r0, [r2]
	adds r4, r0, #0
	adds r0, r1, #0
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _080087D0
	asrs r0, r4, #8
	cmp r0, #0x73
	bne _080088BC
_080087D0:
	subs r2, #2
	subs r5, #1
	cmp r5, #0
	bne _080087BC
	adds r0, r7, #0
	bl sub_08043C50
	adds r5, r0, #0
	cmp r5, #0
	bne _080087F4
	movs r0, #0xe0
	strb r0, [r7, #0x18]
	adds r0, #0xb0
	strh r0, [r7, #0x16]
	b _080088C6
	.align 2, 0
_080087F0: .4byte 0x04000126
_080087F4:
	adds r0, r7, #0
	bl sub_080084AC
	movs r0, #0x1e
	mov r1, sl
	strb r0, [r1]
	movs r0, #0x70
	b _080088C8
_08008804:
	movs r5, #3
	movs r2, #0x49
	adds r2, r2, r7
	mov ip, r2
	mov r8, ip
	movs r0, #1
	mov sb, r0
_08008812:
	mov r1, r8
	ldrb r6, [r1]
	adds r0, r6, #0
	asrs r0, r5
	mov r2, sb
	ands r0, r2
	cmp r0, #0
	beq _0800884C
	lsls r0, r5, #1
	ldr r1, _08008868 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r4, r0, #0
	asrs r2, r4, #8
	ldrb r0, [r7, #0x18]
	lsrs r0, r0, #1
	movs r1, #0x62
	subs r1, r1, r0
	mov r3, sb
	lsls r3, r5
	cmp r2, r1
	bne _08008846
	movs r0, #0xff
	ands r4, r0
	cmp r4, r3
	beq _0800884C
_08008846:
	eors r6, r3
	mov r2, r8
	strb r6, [r2]
_0800884C:
	subs r5, #1
	cmp r5, #0
	bne _08008812
	ldrb r0, [r7, #0x18]
	cmp r0, #0xc4
	bne _0800886C
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xe
	ands r0, r1
	strb r0, [r7, #0x1e]
	strb r5, [r7, #0x18]
	b _08008666
	.align 2, 0
_08008868: .4byte 0x04000120
_0800886C:
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800887E
	adds r0, r7, #0
	bl sub_080084AC
	movs r0, #0x50
	b _080088C8
_0800887E:
	ldrb r0, [r7, #0x18]
	adds r0, #2
	strb r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xc4
	bne _0800888E
	b _08008666
_0800888E:
	ldrb r0, [r7, #0x18]
	ldr r1, [r7, #0x28]
	adds r0, r0, r1
	subs r1, r0, #3
	ldrb r2, [r1]
	lsls r2, r2, #8
	subs r0, #4
	ldrb r1, [r0]
	orrs r1, r2
	adds r0, r7, #0
	bl sub_080088D8
	adds r5, r0, #0
	cmp r5, #0
	bne _080088C8
	adds r0, r7, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _080088C6
_080088B6:
	bl sub_08008B24
	b _08008512
_080088BC:
	adds r0, r7, #0
	bl sub_080084AC
	movs r0, #0x60
	b _080088C8
_080088C6:
	movs r0, #0
_080088C8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080084E8

	thumb_func_start sub_080088D8
sub_080088D8: @ 0x080088D8
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08008904 @ =0x04000128
	ldrh r0, [r3]
	movs r4, #0x8c
	ands r4, r0
	cmp r4, #8
	bne _08008910
	ldr r0, _08008908 @ =0x0400012A
	strh r1, [r0]
	ldr r1, _0800890C @ =0x00002083
	adds r0, r1, #0
	strh r0, [r3]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
	b _0800891C
	.align 2, 0
_08008904: .4byte 0x04000128
_08008908: .4byte 0x0400012A
_0800890C: .4byte 0x00002083
_08008910:
	adds r0, r2, #0
	bl sub_080084AC
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
_0800891C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080088D8

	thumb_func_start sub_08008924
sub_08008924: @ 0x08008924
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _08008936
	adds r0, r1, #0
	bl sub_080084AC
	b _08008942
_08008936:
	adds r2, r1, #0
	adds r2, #0x4a
	strb r0, [r2]
	strb r0, [r1, #0x1e]
	movs r0, #1
	strb r0, [r1, #0x18]
_08008942:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008924

	thumb_func_start sub_08008948
sub_08008948: @ 0x08008948
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r3, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _08008984
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08008984
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #0
	bne _08008984
	str r6, [r4, #0x20]
	adds r2, #0xf
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #0xf0
	adds r1, r2, r0
	ldr r0, _0800898C @ =0x0003FF00
	cmp r1, r0
	bls _08008990
_08008984:
	adds r0, r4, #0
	bl sub_080084AC
	b _08008A04
	.align 2, 0
_0800898C: .4byte 0x0003FF00
_08008990:
	adds r0, r6, r2
	str r0, [r4, #0x24]
	lsls r1, r7, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x13
	adds r0, r1, r2
	asrs r0, r0, #0x18
	adds r2, r1, #0
	cmp r0, #8
	bhi _080089F0
	lsls r0, r0, #2
	ldr r1, _080089B0 @ =_080089B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080089B0: .4byte _080089B4
_080089B4: @ jump table
	.4byte _080089D8 @ case 0
	.4byte _080089D8 @ case 1
	.4byte _080089D8 @ case 2
	.4byte _080089D8 @ case 3
	.4byte _080089E2 @ case 4
	.4byte _080089E8 @ case 5
	.4byte _080089E8 @ case 6
	.4byte _080089E8 @ case 7
	.4byte _080089E8 @ case 8
_080089D8:
	lsls r3, r5, #3
	asrs r1, r2, #0x18
	movs r0, #3
	subs r0, r0, r1
	b _080089EE
_080089E2:
	movs r0, #0x38
	adds r3, r5, #0
	b _080089EE
_080089E8:
	lsls r3, r5, #3
	asrs r0, r2, #0x18
	subs r0, #1
_080089EE:
	orrs r3, r0
_080089F0:
	movs r0, #0x3f
	ands r3, r0
	lsls r0, r3, #1
	movs r2, #0x7f
	rsbs r2, r2, #0
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r4, #0x1c]
	movs r0, #0xd0
	strb r0, [r4, #0x18]
_08008A04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08008948

	thumb_func_start sub_08008A0C
sub_08008A0C: @ 0x08008A0C
	push {lr}
	ldrb r0, [r0, #0x18]
	cmp r0, #0xe9
	beq _08008A18
	movs r0, #0
	b _08008A1A
_08008A18:
	movs r0, #1
_08008A1A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08008A0C

	thumb_func_start sub_08008A20
sub_08008A20: @ 0x08008A20
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x18]
	cmp r0, #0xe0
	beq _08008A3C
	cmp r0, #0xe0
	blt _08008A4C
	cmp r0, #0xe8
	bgt _08008A4C
	cmp r0, #0xe7
	blt _08008A4C
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	b _08008AAC
_08008A3C:
	movs r1, #0
	movs r0, #0xe1
	strb r0, [r3, #0x18]
	str r1, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	str r0, [r3]
	b _08008A9E
_08008A4C:
	movs r4, #3
	ldrb r5, [r3, #0x1e]
	movs r6, #1
	ldr r1, _08008AA8 @ =0x04000126
_08008A54:
	ldrh r0, [r1]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08008A68
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _08008A3C
_08008A68:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne _08008A54
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	ldr r1, [r3]
	ldrh r0, [r3]
	str r0, [r3, #4]
	cmp r1, #0
	bne _08008A96
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xac
	ldrb r1, [r1]
	adds r0, #0xad
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3, #4]
	lsls r1, r1, #5
	str r1, [r3]
_08008A96:
	ldr r0, [r3]
	lsrs r0, r0, #5
	str r0, [r3]
_08008A9C:
	ldrh r1, [r3]
_08008A9E:
	adds r0, r3, #0
	bl sub_080088D8
	b _08008B04
	.align 2, 0
_08008AA8: .4byte 0x04000126
_08008AAC:
	lsls r0, r4, #1
	ldr r1, _08008AF4 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r2, r0, #0
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008AC8
	ldr r0, [r3, #4]
	cmp r2, r0
	bne _08008AF8
_08008AC8:
	subs r4, #1
	cmp r4, #0
	bne _08008AAC
	ldrb r0, [r3, #0x18]
	adds r0, #1
	strb r0, [r3, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe9
	beq _08008B02
	ldr r0, [r3, #0x28]
	adds r1, r0, #0
	adds r1, #0xae
	ldrb r1, [r1]
	adds r0, #0xaf
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r1, r0
	str r1, [r3]
	str r1, [r3, #4]
	b _08008A9C
	.align 2, 0
_08008AF4: .4byte 0x04000120
_08008AF8:
	adds r0, r3, #0
	bl sub_080084AC
	movs r0, #0x71
	b _08008B04
_08008B02:
	movs r0, #0
_08008B04:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08008A20

	thumb_func_start sub_08008B0C
sub_08008B0C: @ 0x08008B0C
	mov r2, pc
	lsrs r2, r2, #0x18
	movs r1, #0xc
	cmp r2, #2
	beq _08008B1E
	movs r1, #0xd
	cmp r2, #8
	beq _08008B1E
	movs r1, #4
_08008B1E:
	subs r0, r0, r1
	bgt _08008B1E
	bx lr
	thumb_func_end sub_08008B0C

	thumb_func_start sub_08008B24
sub_08008B24: @ 0x08008B24
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, _08008B58 @ =0x04000128
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08008B48
	ldr r5, _08008B5C @ =0x0000795C
	movs r4, #0x80
_08008B38:
	adds r2, #1
	cmp r2, r5
	bgt _08008B48
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _08008B38
_08008B48:
	movs r0, #0x96
	lsls r0, r0, #2
	bl sub_08008B0C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008B58: .4byte 0x04000128
_08008B5C: .4byte 0x0000795C
	thumb_func_end sub_08008B24

	thumb_func_start sub_08008B60
sub_08008B60: @ 0x08008B60
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, _08008C0C @ =0x04000208
	movs r2, #0
	strh r2, [r6]
	ldr r5, _08008C10 @ =0x04000200
	ldrh r1, [r5]
	ldr r0, _08008C14 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r5]
	movs r0, #1
	mov sb, r0
	strh r0, [r6]
	ldr r0, _08008C18 @ =0x04000134
	strh r2, [r0]
	ldr r2, _08008C1C @ =0x04000128
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08008C20 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	mov r8, r0
	str r0, [sp]
	ldr r7, _08008C24 @ =0x03002010
	ldr r2, _08008C28 @ =0x0500007C
	mov r0, sp
	adds r1, r7, #0
	bl sub_08043C44
	ldr r0, _08008C2C @ =sub_08000240
	ldr r1, _08008C30 @ =0x03002200
	ldr r2, _08008C34 @ =0x04000010
	bl sub_08043C44
	ldr r0, _08008C38 @ =sub_08009088
	ldr r1, _08008C3C @ =0x03001EF0
	ldr r2, _08008C40 @ =0x04000048
	bl sub_08043C44
	lsls r4, r4, #4
	ldrb r2, [r7, #2]
	movs r1, #0xf
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r4
	strb r0, [r7, #2]
	str r1, [r7, #0x14]
	str r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x30
	str r0, [r7, #0x1c]
	adds r0, #0x20
	str r0, [r7, #0x20]
	adds r0, #0x20
	str r0, [r7, #0x24]
	adds r0, #0x80
	str r0, [r7, #0x28]
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r7, r1
	str r0, [r7, #0x2c]
	mov r3, r8
	strh r3, [r6]
	ldrh r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r5]
	mov r0, sb
	strh r0, [r6]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008C0C: .4byte 0x04000208
_08008C10: .4byte 0x04000200
_08008C14: .4byte 0x0000FF3F
_08008C18: .4byte 0x04000134
_08008C1C: .4byte 0x04000128
_08008C20: .4byte 0x00004003
_08008C24: .4byte 0x03002010
_08008C28: .4byte 0x0500007C
_08008C2C: .4byte sub_08000240
_08008C30: .4byte 0x03002200
_08008C34: .4byte 0x04000010
_08008C38: .4byte sub_08009088
_08008C3C: .4byte 0x03001EF0
_08008C40: .4byte 0x04000048
	thumb_func_end sub_08008B60

	thumb_func_start sub_08008C44
sub_08008C44: @ 0x08008C44
	push {lr}
	ldr r2, _08008C5C @ =0x03002010
	ldrb r0, [r2]
	cmp r0, #0
	beq _08008C56
	ldrb r0, [r2, #6]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #6]
_08008C56:
	pop {r0}
	bx r0
	.align 2, 0
_08008C5C: .4byte 0x03002010
	thumb_func_end sub_08008C44

	thumb_func_start sub_08008C60
sub_08008C60: @ 0x08008C60
	ldr r3, _08008C94 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08008C98 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08008C9C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08008CA0 @ =0x04000128
	ldr r2, _08008CA4 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08008CA8 @ =0x0000BFC0
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08008CAC @ =0x03002010
	ldrb r1, [r2, #6]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #6]
	bx lr
	.align 2, 0
_08008C94: .4byte 0x04000208
_08008C98: .4byte 0x04000200
_08008C9C: .4byte 0x0000FF3F
_08008CA0: .4byte 0x04000128
_08008CA4: .4byte 0x00002003
_08008CA8: .4byte 0x0000BFC0
_08008CAC: .4byte 0x03002010
	thumb_func_end sub_08008C60

	thumb_func_start sub_08008CB0
sub_08008CB0: @ 0x08008CB0
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r5, _08008CCC @ =0x04000128
	ldr r6, [r5]
	ldr r0, _08008CD0 @ =0x03002010
	ldrb r2, [r0, #1]
	adds r7, r0, #0
	cmp r2, #1
	beq _08008D2E
	cmp r2, #1
	bgt _08008CD4
	cmp r2, #0
	beq _08008CDA
	b _08008D72
	.align 2, 0
_08008CCC: .4byte 0x04000128
_08008CD0: .4byte 0x03002010
_08008CD4:
	cmp r2, #2
	beq _08008D6C
	b _08008D72
_08008CDA:
	ldr r0, [r7, #0x18]
	cmp r0, #0xf
	bne _08008D2A
	movs r0, #0x88
	adds r4, r6, #0
	ands r4, r0
	cmp r4, #8
	bne _08008D72
	movs r1, #4
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08008D2A
	ldr r3, _08008D50 @ =0x04000208
	strh r0, [r3]
	ldr r2, _08008D54 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08008D58 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _08008D5C @ =0x0400010C
	ldr r0, _08008D60 @ =0x0000BFC0
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	strb r4, [r7]
_08008D2A:
	movs r0, #1
	strb r0, [r7, #1]
_08008D2E:
	ldr r2, _08008D64 @ =0x03002010
	ldrb r1, [r2, #2]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _08008D6C
	ldrb r1, [r2, #6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08008D6C
	ldrb r0, [r2, #8]
	cmp r0, #7
	bhi _08008D68
	adds r0, #1
	strb r0, [r2, #8]
	b _08008D6C
	.align 2, 0
_08008D50: .4byte 0x04000208
_08008D54: .4byte 0x04000200
_08008D58: .4byte 0x0000FF7F
_08008D5C: .4byte 0x0400010C
_08008D60: .4byte 0x0000BFC0
_08008D64: .4byte 0x03002010
_08008D68:
	movs r0, #2
	strb r0, [r2, #1]
_08008D6C:
	mov r0, ip
	bl sub_08008E8C
_08008D72:
	ldr r1, _08008DA8 @ =0x03002010
	ldrb r0, [r1, #0xb]
	adds r0, #1
	strb r0, [r1, #0xb]
	ldrb r3, [r1, #3]
	ldrb r2, [r1, #6]
	movs r0, #0x10
	ands r0, r2
	orrs r3, r0
	movs r0, #0x20
	ands r0, r2
	orrs r3, r0
	movs r0, #0x40
	ands r0, r2
	orrs r3, r0
	ldrb r0, [r1, #2]
	lsrs r0, r0, #4
	lsls r2, r0, #8
	ldrb r0, [r1]
	adds r7, r1, #0
	cmp r0, #8
	bne _08008DAC
	movs r0, #0x80
	orrs r0, r2
	orrs r0, r3
	b _08008DB0
	.align 2, 0
_08008DA8: .4byte 0x03002010
_08008DAC:
	adds r0, r3, #0
	orrs r0, r2
_08008DB0:
	adds r2, r0, #0
	ldrb r0, [r7, #7]
	cmp r0, #0
	beq _08008DBE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
_08008DBE:
	ldrb r0, [r7, #8]
	lsrs r0, r0, #3
	lsls r1, r0, #0xf
	lsls r0, r6, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08008DD6
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r1
	orrs r0, r2
	b _08008DDA
_08008DD6:
	adds r0, r2, #0
	orrs r0, r1
_08008DDA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08008CB0

	thumb_func_start sub_08008DE0
sub_08008DE0: @ 0x08008DE0
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08008E80 @ =0x03002010
	ldr r4, [r5, #0x1c]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x1c]
	ldr r1, _08008E84 @ =0x03002240
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x1c]
	ldrb r1, [r5, #6]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x1c]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x1c]
	ldrb r2, [r5, #2]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1c
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x1c]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x1c]
	adds r1, #4
	ldr r2, _08008E88 @ =0x04000006
	bl sub_08043C44
	movs r2, #0
	ldr r1, [r5, #0x1c]
_08008E60:
	ldrh r0, [r1]
	adds r7, r7, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _08008E60
	ldr r0, [r5, #0x1c]
	mvns r1, r7
	subs r1, #0x10
	strh r1, [r0, #2]
	movs r0, #1
	strb r0, [r5, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008E80: .4byte 0x03002010
_08008E84: .4byte 0x03002240
_08008E88: .4byte 0x04000006
	thumb_func_end sub_08008DE0

	thumb_func_start sub_08008E8C
sub_08008E8C: @ 0x08008E8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _08008FA8 @ =0x03002200
	movs r4, #0
	str r4, [sp]
	bl sub_0804402C
	lsls r0, r0, #0x18
	ldr r3, _08008FAC @ =0x03002010
	strb r4, [r3, #3]
	ldrb r2, [r3, #6]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3, #6]
	cmp r0, #0
	beq _08008F36
	movs r4, #3
	add r0, sp, #4
	mov sb, r0
	adds r6, r3, #0
_08008EC0:
	lsls r1, r4, #5
	ldr r0, [r6, #0x2c]
	adds r7, r0, r1
	movs r3, #0
	movs r2, #0
	subs r1, r4, #1
	mov r8, r1
	adds r1, r7, #0
_08008ED0:
	ldrh r0, [r1]
	adds r3, r3, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xd
	bls _08008ED0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r5, r7, #4
	movs r3, #0x11
	rsbs r3, r3, #0
	cmp r0, r3
	bne _08008F22
	movs r0, #1
	lsls r0, r4
	ldrb r1, [r6, #3]
	orrs r0, r1
	strb r0, [r6, #3]
	ldrb r2, [r6, #6]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r4
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	adds r3, #1
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #6]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	add r1, sl
	adds r0, r5, #0
	ldr r2, _08008FB0 @ =0x04000006
	bl sub_08043C44
_08008F22:
	movs r0, #0
	str r0, [sp, #4]
	mov r0, sb
	adds r1, r5, #0
	ldr r2, _08008FB4 @ =0x05000006
	bl sub_08043C44
	mov r4, r8
	cmp r4, #0
	bge _08008EC0
_08008F36:
	ldr r3, _08008FAC @ =0x03002010
	ldrb r2, [r3, #2]
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r6, [r3, #3]
	orrs r0, r6
	movs r1, #0xf
	ands r0, r1
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	lsrs r2, r1, #4
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	orrs r2, r0
	lsls r2, r2, #4
	movs r4, #0xf
	ands r4, r1
	orrs r4, r2
	strb r4, [r3, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r6
	adds r5, r3, #0
	cmp r0, #0
	beq _08008FE2
	ldrb r0, [r5]
	cmp r0, #8
	bne _08008FB8
	movs r0, #3
	ands r0, r6
	cmp r0, #0
	beq _08008F8C
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	lsrs r1, r4, #4
	cmp r0, r1
	bne _08008F8C
	ldrb r0, [r5, #6]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #6]
_08008F8C:
	ldrb r4, [r5, #6]
	lsls r3, r4, #0x1c
	lsrs r3, r3, #0x1c
	movs r0, #0xe
	ldrb r2, [r5, #2]
	lsrs r2, r2, #4
	adds r1, r0, #0
	ands r1, r3
	ands r0, r2
	cmp r1, r0
	bne _08008FCE
	movs r0, #0x40
	orrs r0, r4
	b _08008FCC
	.align 2, 0
_08008FA8: .4byte 0x03002200
_08008FAC: .4byte 0x03002010
_08008FB0: .4byte 0x04000006
_08008FB4: .4byte 0x05000006
_08008FB8:
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #6]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
_08008FCC:
	strb r0, [r5, #6]
_08008FCE:
	ldrb r0, [r7, #1]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #5
	ldrb r2, [r5, #6]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #6]
_08008FE2:
	ldrb r0, [r5, #3]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08008E8C

	thumb_func_start sub_08008FF4
sub_08008FF4: @ 0x08008FF4
	push {r4, r5, lr}
	ldr r4, _08009050 @ =0x03002010
	ldrb r5, [r4]
	cmp r5, #0
	beq _08009060
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0800907A
	ldrb r1, [r4, #6]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800907A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r1, [r4, #0x24]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _08009030
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	movs r0, #0
	strb r0, [r4, #4]
	str r0, [r4, #0x14]
_08009030:
	ldr r2, _08009054 @ =0x04000128
	ldr r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	strb r0, [r4, #7]
	ldr r0, _08009058 @ =0x0000FEFE
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0800905C @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
	b _0800907A
	.align 2, 0
_08009050: .4byte 0x03002010
_08009054: .4byte 0x04000128
_08009058: .4byte 0x0000FEFE
_0800905C: .4byte 0x0400010E
_08009060:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _08009078
	ldr r3, _08009080 @ =0x04000208
	strh r5, [r3]
	ldr r2, _08009084 @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08009078:
	strb r5, [r4, #9]
_0800907A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009080: .4byte 0x04000208
_08009084: .4byte 0x03007FF8
	thumb_func_end sub_08008FF4

	thumb_func_start sub_08009088
sub_08009088: @ 0x08009088
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08009168 @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r2, _0800916C @ =0x03002010
	ldr r0, _08009170 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	movs r5, #0
	strb r0, [r2, #7]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, _08009174 @ =0x0000FEFE
	adds r4, r2, #0
	cmp r1, r0
	bne _080090E8
	ldr r0, [r4, #0x18]
	cmp r0, #0xd
	ble _080090E8
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r1, [r4, #0x24]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _080090D6
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r1, [r4, #0x1c]
	strb r5, [r4, #4]
	str r5, [r4, #0x14]
_080090D6:
	ldr r3, _08009178 @ =0x04000208
	strh r5, [r3]
	ldr r2, _0800917C @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_080090E8:
	ldr r0, [r4, #0x14]
	cmp r0, #0xd
	bgt _080090FA
	ldr r2, _08009170 @ =0x04000128
	ldr r1, [r4, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
_080090FA:
	ldr r0, [r4, #0x14]
	cmp r0, #0xe
	bgt _08009104
	adds r0, #1
	str r0, [r4, #0x14]
_08009104:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	blt _0800912C
	ldr r1, [r4, #0x24]
	mov r2, sp
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r3, #3
_08009114:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	adds r1, #0x20
	subs r3, #1
	cmp r3, #0
	bge _08009114
	ldr r0, [r4, #0x18]
	cmp r0, #0xd
	bne _0800912C
	movs r0, #1
	strb r0, [r4, #5]
_0800912C:
	ldr r0, [r4, #0x18]
	cmp r0, #0xd
	bgt _08009136
	adds r0, #1
	str r0, [r4, #0x18]
_08009136:
	ldrb r2, [r4]
	cmp r2, #0
	beq _08009142
	ldr r1, _08009180 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08009142:
	ldr r0, [r4, #0x14]
	cmp r0, #0xe
	bgt _0800915C
	cmp r2, #0
	beq _0800915C
	ldr r2, _08009170 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08009180 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_0800915C:
	movs r0, #1
	strb r0, [r4, #9]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08009168: .4byte 0x04000120
_0800916C: .4byte 0x03002010
_08009170: .4byte 0x04000128
_08009174: .4byte 0x0000FEFE
_08009178: .4byte 0x04000208
_0800917C: .4byte 0x03007FF8
_08009180: .4byte 0x0400010E
	thumb_func_end sub_08009088

	thumb_func_start sub_08009184
sub_08009184: @ 0x08009184
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08009208 @ =0x04000208
	strh r6, [r3]
	ldr r2, _0800920C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08009210 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r3]
	str r6, [sp]
	ldr r4, _08009214 @ =0x03002240
	ldr r2, _08009218 @ =0x05000006
	mov r0, sp
	adds r1, r4, #0
	bl sub_08043C44
	ldr r0, _0800921C @ =sub_08009418
	ldr r1, _08009220 @ =0x03001EF0
	ldr r2, _08009224 @ =0x04000048
	bl sub_08043C44
	ldr r1, _08009228 @ =0x04000128
	ldr r0, _0800922C @ =0x00002003
	str r0, [r1]
	str r7, [r4, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	cmp r5, #0
	beq _080091FC
	ldr r0, _08009230 @ =0x0400010C
	str r6, [r0]
	mov r2, r8
	strb r2, [r4]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_080091DE:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _080091DE
	mvns r0, r6
	str r0, [r4, #0xc]
	ldr r1, _08009228 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_080091FC:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009208: .4byte 0x04000208
_0800920C: .4byte 0x04000200
_08009210: .4byte 0x0000FF3F
_08009214: .4byte 0x03002240
_08009218: .4byte 0x05000006
_0800921C: .4byte sub_08009418
_08009220: .4byte 0x03001EF0
_08009224: .4byte 0x04000048
_08009228: .4byte 0x04000128
_0800922C: .4byte 0x00002003
_08009230: .4byte 0x0400010C
	thumb_func_end sub_08009184

	thumb_func_start sub_08009234
sub_08009234: @ 0x08009234
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, _08009250 @ =0x03002240
	ldrb r1, [r0, #1]
	adds r5, r0, #0
	cmp r1, #4
	bls _08009244
	b _0800940A
_08009244:
	lsls r0, r1, #2
	ldr r1, _08009254 @ =_08009258
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08009250: .4byte 0x03002240
_08009254: .4byte _08009258
_08009258: @ jump table
	.4byte _0800926C @ case 0
	.4byte _08009284 @ case 1
	.4byte _08009320 @ case 2
	.4byte _08009392 @ case 3
	.4byte _08009400 @ case 4
_0800926C:
	ldr r0, [r5]
	ldr r1, _08009280 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08009278
	b _0800940A
_08009278:
	movs r0, #1
	strb r0, [r5, #1]
	b _0800940A
	.align 2, 0
_08009280: .4byte 0x00FF00FF
_08009284:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08009294
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08009292
	b _0800940A
_08009292:
	b _0800929E
_08009294:
	ldr r1, _080092D4 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_0800929E:
	ldr r0, _080092D8 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _080092DC @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _080092EC
	ldr r2, _080092D4 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080092E0 @ =0x0400010C
	ldr r0, _080092E4 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _080092E8 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _0800930C
	.align 2, 0
_080092D4: .4byte 0x04000128
_080092D8: .4byte 0x04000120
_080092DC: .4byte 0x04000202
_080092E0: .4byte 0x0400010C
_080092E4: .4byte 0x00C0F318
_080092E8: .4byte 0x04000208
_080092EC:
	ldr r2, _08009318 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0800931C @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_0800930C:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _0800940A
	.align 2, 0
_08009318: .4byte 0x04000128
_0800931C: .4byte 0x04000208
_08009320:
	ldr r6, [r5, #8]
	adds r4, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08009330
	adds r4, r0, #0
	b _08009336
_08009330:
	cmp r6, #0
	bge _08009336
	movs r4, #0
_08009336:
	cmp r2, #0
	beq _0800933C
	str r4, [r2]
_0800933C:
	ldrb r0, [r5]
	cmp r0, #1
	beq _0800937E
	ldr r0, [r5, #0x14]
	cmp r0, r4
	bge _08009362
	adds r3, r5, #0
	ldr r7, [r5, #4]
_0800934C:
	ldr r2, [r3, #0x14]
	lsls r0, r2, #2
	adds r0, r0, r7
	ldr r1, [r3, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #0x10]
	adds r2, #1
	str r2, [r3, #0x14]
	cmp r2, r4
	blt _0800934C
_08009362:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08009386
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800937E
	movs r0, #1
	strb r0, [r5, #3]
_0800937E:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _0800938C
_08009386:
	ldrb r0, [r5, #2]
	cmp r0, #0x8c
	bne _0800940A
_0800938C:
	movs r0, #3
	strb r0, [r5, #1]
	b _0800940A
_08009392:
	ldr r3, _080093E4 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _080093E8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _080093EC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _080093F0 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _080093F4 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080093D0
	ldr r1, _080093F8 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_080093D0:
	ldr r0, _080093FC @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08009406
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _0800940A
	.align 2, 0
_080093E4: .4byte 0x04000208
_080093E8: .4byte 0x04000200
_080093EC: .4byte 0x0000FF3F
_080093F0: .4byte 0x04000128
_080093F4: .4byte 0x04000120
_080093F8: .4byte 0x0400010C
_080093FC: .4byte 0x04000202
_08009400:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _0800940A
_08009406:
	movs r0, #1
	b _08009412
_0800940A:
	ldrb r0, [r5, #2]
	adds r0, #1
	strb r0, [r5, #2]
	movs r0, #0
_08009412:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08009234

	thumb_func_start sub_08009418
sub_08009418: @ 0x08009418
	push {r4, r5, lr}
	ldr r2, _0800943C @ =0x04000120
	ldr r3, [r2]
	ldr r5, _08009440 @ =0x03002240
	ldrb r0, [r5]
	adds r4, r5, #0
	cmp r0, #1
	beq _08009448
	ldr r0, _08009444 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	ldr r2, [r4, #8]
	cmp r2, #0
	bge _08009494
	b _08009482
	.align 2, 0
_0800943C: .4byte 0x04000120
_08009440: .4byte 0x03002240
_08009444: .4byte 0x04000128
_08009448:
	ldr r1, _0800945C @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r4, #8]
	cmp r1, #0
	bge _08009464
	ldr r0, _08009460 @ =0xFEFEFEFE
	str r0, [r2]
	b _080094AA
	.align 2, 0
_0800945C: .4byte 0x0400010E
_08009460: .4byte 0xFEFEFEFE
_08009464:
	ldr r0, _08009478 @ =0x00001FFF
	cmp r1, r0
	bgt _0800947C
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _080094AA
	.align 2, 0
_08009478: .4byte 0x00001FFF
_0800947C:
	ldr r0, [r4, #0xc]
	str r0, [r2]
	b _080094AA
_08009482:
	ldr r0, _08009490 @ =0xFEFEFEFE
	cmp r3, r0
	beq _080094AA
	subs r0, r2, #1
	str r0, [r5, #8]
	b _080094AA
	.align 2, 0
_08009490: .4byte 0xFEFEFEFE
_08009494:
	ldr r0, _080094A4 @ =0x00001FFF
	cmp r2, r0
	bgt _080094A8
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	str r3, [r0]
	b _080094AA
	.align 2, 0
_080094A4: .4byte 0x00001FFF
_080094A8:
	str r3, [r4, #0xc]
_080094AA:
	ldr r1, [r4, #8]
	ldr r0, _080094D4 @ =0x00002002
	cmp r1, r0
	bgt _080094CC
	adds r0, r1, #1
	str r0, [r4, #8]
	ldrb r0, [r4]
	cmp r0, #1
	bne _080094CC
	ldr r2, _080094D8 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _080094DC @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_080094CC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080094D4: .4byte 0x00002002
_080094D8: .4byte 0x04000128
_080094DC: .4byte 0x0400010E
	thumb_func_end sub_08009418

	thumb_func_start sub_080094E0
sub_080094E0: @ 0x080094E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r1, #0
	movs r3, #2
	movs r6, #0x80
	lsls r6, r6, #1
	movs r0, #0xcc
	mov ip, r0
	movs r7, #0xcd
_080094F2:
	movs r2, #0x80
	lsrs r5, r4, #8
	subs r3, #1
_080094F8:
	lsls r1, r1, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq _08009514
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _08009510
	mov r0, ip
	eors r1, r0
	b _0800951E
_08009510:
	adds r1, #1
	b _0800951E
_08009514:
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _0800951E
	eors r1, r7
_0800951E:
	lsrs r2, r2, #1
	cmp r2, #0
	bne _080094F8
	adds r4, r5, #0
	cmp r3, #0
	bne _080094F2
	movs r4, #0x80
	lsls r4, r4, #1
	movs r2, #0xcd
_08009530:
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0800953C
	eors r1, r2
_0800953C:
	adds r3, #1
	cmp r3, #7
	bls _08009530
	movs r0, #0xff
	ands r1, r0
	adds r0, r1, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080094E0

	thumb_func_start sub_08009550
sub_08009550: @ 0x08009550
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _0800957C @ =0x030022A0
	ldrb r0, [r2]
	adds r4, r2, #0
	cmp r0, #0
	bne _080095C0
	ldrb r0, [r2, #1]
	cmp r0, #2
	bne _08009584
	ldr r0, [r2, #0x14]
	cmp r3, r0
	beq _0800956C
	b _080096B8
_0800956C:
	ldr r1, _08009580 @ =0x04000158
	movs r0, #0x30
	strh r0, [r1]
	str r3, [r2, #0x10]
	ldrb r0, [r2, #1]
	movs r0, #3
	strb r0, [r2, #1]
	b _080096BC
	.align 2, 0
_0800957C: .4byte 0x030022A0
_08009580: .4byte 0x04000158
_08009584:
	ldrb r0, [r2, #1]
	cmp r0, #3
	bne _080095A4
	cmp r3, #0x60
	beq _08009590
	b _080096B8
_08009590:
	ldr r1, _080095A0 @ =0x04000154
	ldr r0, [r2, #0x18]
	str r0, [r1]
	ldrb r0, [r2, #1]
	movs r0, #4
	strb r0, [r2, #1]
	b _0800966C
	.align 2, 0
_080095A0: .4byte 0x04000154
_080095A4:
	ldrb r0, [r2, #1]
	cmp r0, #5
	beq _080095AC
	b _080096B8
_080095AC:
	ldr r0, _080095BC @ =0x04000154
	str r3, [r0]
	str r3, [r2, #0x20]
	ldrb r0, [r2, #1]
	movs r0, #6
	strb r0, [r2, #1]
	b _080096BC
	.align 2, 0
_080095BC: .4byte 0x04000154
_080095C0:
	ldrb r0, [r2, #4]
	adds r1, r0, #0
	cmp r1, #1
	beq _080096BC
	cmp r1, #1
	bgt _080095D2
	cmp r1, #0
	beq _080095DC
	b _080096B8
_080095D2:
	cmp r1, #0x30
	beq _08009638
	cmp r1, #0x40
	beq _08009678
	b _080096B8
_080095DC:
	ldrb r0, [r2, #5]
	strb r1, [r2, #5]
	cmp r3, #0x30
	bne _080095EA
	ldrb r0, [r2, #4]
	strb r3, [r2, #4]
	b _080096BC
_080095EA:
	cmp r3, #0x50
	beq _080096B8
	ldr r0, _0800962C @ =0x020000C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080095FC
	ldrb r0, [r2, #0x1b]
	cmp r0, #0
	beq _080096B8
_080095FC:
	movs r0, #0xff
	ands r0, r3
	cmp r0, #0x10
	bne _080096BC
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r1]
	movs r0, #0
	strb r0, [r1]
	ldr r3, _08009630 @ =0x04000154
	ldr r2, _08009634 @ =0x03002260
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	ldrb r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #4]
	b _080096BC
	.align 2, 0
_0800962C: .4byte 0x020000C4
_08009630: .4byte 0x04000154
_08009634: .4byte 0x03002260
_08009638:
	ldrb r0, [r2, #5]
	cmp r0, #0x1f
	bhi _080096B8
	ldrb r0, [r2, #5]
	adds r1, r2, #0
	adds r1, #0x38
	adds r0, r0, r1
	str r3, [r0]
	ldrb r0, [r2, #5]
	adds r0, #4
	ldrb r1, [r2, #5]
	strb r0, [r2, #5]
	ldrb r0, [r2, #5]
	cmp r0, #0x20
	bne _080096BC
	ldrb r0, [r2, #0x1a]
	adds r1, r2, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldr r0, [r2, #0x24]
	str r0, [r2, #0x44]
	ldr r1, _08009674 @ =0x04000154
	ldr r0, [r2, #0x38]
	str r0, [r1]
	ldrb r0, [r2, #5]
	adds r0, #4
_0800966C:
	ldrb r1, [r2, #5]
	strb r0, [r2, #5]
	b _080096BC
	.align 2, 0
_08009674: .4byte 0x04000154
_08009678:
	ldr r4, _080096AC @ =0x03002300
	ldrb r0, [r4]
	cmp r0, #0
	bne _0800968A
	ldr r1, _080096B0 @ =0x03002310
	ldrb r0, [r2, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	str r3, [r0]
_0800968A:
	ldrb r0, [r2, #5]
	adds r0, #1
	ldrb r1, [r2, #5]
	movs r1, #0
	strb r0, [r2, #5]
	ldrb r0, [r2, #5]
	cmp r0, #8
	bne _080096BC
	ldrb r0, [r2, #4]
	strb r1, [r2, #4]
	ldrb r0, [r4]
	movs r0, #1
	strb r0, [r4]
	ldr r0, _080096B4 @ =0x03002284
	str r1, [r0]
	b _080096BC
	.align 2, 0
_080096AC: .4byte 0x03002300
_080096B0: .4byte 0x03002310
_080096B4: .4byte 0x03002284
_080096B8:
	movs r0, #0
	b _080096BE
_080096BC:
	movs r0, #1
_080096BE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08009550

	thumb_func_start sub_080096C4
sub_080096C4: @ 0x080096C4
	push {r4, lr}
	ldr r3, _080096E0 @ =0x030022A0
	ldrb r0, [r3]
	adds r1, r0, #0
	adds r4, r3, #0
	cmp r1, #0
	bne _08009714
	ldrb r0, [r3, #1]
	cmp r0, #1
	bne _080096E4
	ldrb r0, [r3, #1]
	movs r0, #2
	strb r0, [r3, #1]
	b _080097B2
	.align 2, 0
_080096E0: .4byte 0x030022A0
_080096E4:
	ldrb r0, [r3, #1]
	cmp r0, #4
	bne _080096FE
	ldrb r0, [r3, #5]
	cmp r0, #0x20
	bne _0800979C
	ldrb r0, [r3, #0x1b]
	cmp r0, #0
	beq _08009704
	ldrb r0, [r3, #1]
	movs r0, #5
	strb r0, [r3, #1]
	b _080097B2
_080096FE:
	ldrb r0, [r3, #1]
	cmp r0, #6
	bne _0800977A
_08009704:
	ldrb r0, [r3]
	movs r0, #1
	strb r0, [r3]
	ldrb r0, [r3, #4]
	strb r1, [r3, #4]
	ldrb r0, [r3, #1]
	strb r1, [r3, #1]
	b _080097B2
_08009714:
	ldrb r0, [r3, #4]
	cmp r0, #0x10
	beq _0800976C
	cmp r0, #0x10
	bgt _08009724
	cmp r0, #1
	beq _0800972A
	b _0800977A
_08009724:
	cmp r0, #0x30
	beq _08009774
	b _0800977A
_0800972A:
	ldr r2, _08009760 @ =0x04000154
	ldr r1, _08009764 @ =0x03002260
	adds r4, r3, #0
	adds r4, #0x58
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldrb r0, [r4]
	adds r0, #1
	ldrb r1, [r4]
	movs r2, #0
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #8
	bne _080097B2
	ldrb r0, [r4]
	strb r2, [r4]
	ldrb r0, [r3, #4]
	movs r0, #0x10
	strb r0, [r3, #4]
	ldr r0, _08009768 @ =0x03002288
	ldrb r1, [r0]
	strb r2, [r0]
	b _080097B2
	.align 2, 0
_08009760: .4byte 0x04000154
_08009764: .4byte 0x03002260
_08009768: .4byte 0x03002288
_0800976C:
	ldrb r0, [r3, #4]
	movs r0, #0x40
	strb r0, [r3, #4]
	b _080097B2
_08009774:
	ldrb r0, [r3, #5]
	cmp r0, #0x1f
	bhi _0800977E
_0800977A:
	movs r0, #0
	b _080097B4
_0800977E:
	ldrb r0, [r3, #5]
	cmp r0, #0x40
	bne _0800979C
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x18
_0800978A:
	ldr r0, [r1, #0x20]
	stm r1!, {r0}
	adds r2, #4
	cmp r2, #0x1f
	bls _0800978A
	ldrb r0, [r4, #4]
	movs r0, #0
	strb r0, [r4, #4]
	b _080097B2
_0800979C:
	ldr r2, _080097BC @ =0x04000154
	ldrb r0, [r3, #5]
	adds r1, r3, #0
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldrb r0, [r3, #5]
	adds r0, #4
	ldrb r1, [r3, #5]
	strb r0, [r3, #5]
_080097B2:
	movs r0, #1
_080097B4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080097BC: .4byte 0x04000154
	thumb_func_end sub_080096C4

	thumb_func_start sub_080097C0
sub_080097C0: @ 0x080097C0
	ldr r0, _080097E0 @ =0x04000150
	ldr r0, [r0]
	ldr r2, _080097E4 @ =0x04000154
	ldr r1, _080097E8 @ =0x030022A0
	ldr r0, [r1, #0xc]
	str r0, [r2]
	adds r2, #4
	movs r0, #0x20
	strh r0, [r2]
	ldrb r0, [r1]
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_080097E0: .4byte 0x04000150
_080097E4: .4byte 0x04000154
_080097E8: .4byte 0x030022A0
	thumb_func_end sub_080097C0

	thumb_func_start sub_080097EC
sub_080097EC: @ 0x080097EC
	push {r4, lr}
	ldr r1, _0800985C @ =0x03002290
	movs r0, #1
	str r0, [r1]
	ldr r0, _08009860 @ =0x04000140
	ldrh r0, [r0]
	adds r4, r0, #0
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0800980A
	bl sub_080096C4
	cmp r0, #0
	beq _0800981E
_0800980A:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0800982E
	ldr r0, _08009864 @ =0x04000150
	ldr r0, [r0]
	bl sub_08009550
	cmp r0, #0
	bne _0800982E
_0800981E:
	ldr r0, _08009868 @ =0x04000158
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800986C @ =0x030022A0
	ldrb r2, [r0]
	strb r1, [r0]
	ldrb r2, [r0, #1]
	strb r1, [r0, #1]
_0800982E:
	movs r3, #1
	ands r3, r4
	cmp r3, #0
	beq _08009870
	bl sub_080097C0
	ldr r1, _0800986C @ =0x030022A0
	ldrb r0, [r1, #8]
	cmp r0, #2
	bhi _08009854
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bls _08009854
	bl sub_0804400C
_08009854:
	ldr r1, _0800986C @ =0x030022A0
	movs r0, #0
	b _08009886
	.align 2, 0
_0800985C: .4byte 0x03002290
_08009860: .4byte 0x04000140
_08009864: .4byte 0x04000150
_08009868: .4byte 0x04000158
_0800986C: .4byte 0x030022A0
_08009870:
	ldr r0, _08009880 @ =0x030022A0
	ldrb r2, [r0, #8]
	adds r1, r0, #0
	cmp r2, #1
	bls _08009884
	strb r3, [r1, #7]
	b _08009888
	.align 2, 0
_08009880: .4byte 0x030022A0
_08009884:
	adds r0, r2, #1
_08009886:
	strb r0, [r1, #8]
_08009888:
	ldr r0, _080098A8 @ =0x04000140
	strh r4, [r0]
	adds r0, r1, #0
	ldrb r0, [r0]
	ldr r2, _080098AC @ =0x03002280
	cmp r0, #0
	beq _08009898
	ldrb r0, [r2]
_08009898:
	movs r0, #0
	strb r0, [r2]
	ldrb r0, [r1, #2]
	movs r0, #0
	strb r0, [r1, #2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080098A8: .4byte 0x04000140
_080098AC: .4byte 0x03002280
	thumb_func_end sub_080097EC

	thumb_func_start sub_080098B0
sub_080098B0: @ 0x080098B0
	push {r4, r5, r6, lr}
	ldr r5, _08009918 @ =0x04000208
	ldrh r0, [r5]
	adds r6, r0, #0
	movs r4, #0
	strh r4, [r5]
	ldr r3, _0800991C @ =0x030022A0
	ldrb r0, [r3, #6]
	cmp r0, #0
	bne _080098CE
	ldr r1, _08009920 @ =0x04000134
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
_080098CE:
	ldr r1, _08009920 @ =0x04000134
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08009924 @ =0x04000158
	strh r4, [r0]
	subs r0, #8
	ldr r0, [r0]
	ldr r0, _08009928 @ =0x04000154
	movs r2, #0
	str r2, [r0]
	adds r1, #0xc
	movs r0, #0x47
	strh r0, [r1]
	adds r1, #0xc2
	movs r0, #0x80
	strh r0, [r1]
	ldrb r0, [r3, #2]
	strb r4, [r3, #2]
	ldrb r0, [r3]
	strb r4, [r3]
	ldrb r0, [r3, #1]
	strb r4, [r3, #1]
	ldrb r0, [r3, #6]
	strb r4, [r3, #6]
	strb r4, [r3, #7]
	strb r4, [r3, #8]
	strh r6, [r5]
	ldr r0, _0800992C @ =0x03002290
	str r2, [r0]
	ldr r0, _08009930 @ =0x03002284
	str r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009918: .4byte 0x04000208
_0800991C: .4byte 0x030022A0
_08009920: .4byte 0x04000134
_08009924: .4byte 0x04000158
_08009928: .4byte 0x04000154
_0800992C: .4byte 0x03002290
_08009930: .4byte 0x03002284
	thumb_func_end sub_080098B0

	thumb_func_start sub_08009934
sub_08009934: @ 0x08009934
	push {r4, r5, r6, r7, lr}
	ldr r0, _08009988 @ =0x04000208
	ldrh r1, [r0]
	adds r7, r1, #0
	movs r1, #0
	strh r1, [r0]
	movs r2, #0
	ldr r3, _0800998C @ =0x030022A0
_08009944:
	adds r0, r2, r3
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0x5b
	bls _08009944
	ldr r4, _0800998C @ =0x030022A0
	ldrb r0, [r4, #6]
	movs r5, #1
	strb r5, [r4, #6]
	bl sub_080098B0
	ldr r2, _08009990 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08009994 @ =0x020000C4
	ldrb r1, [r0]
	cmp r1, #0
	beq _080099A0
	subs r0, #0x18
	ldr r0, [r0]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r0, _08009998 @ =0x020000C5
	ldrb r0, [r0]
	strb r0, [r4, #0x19]
	strb r5, [r4, #0x1b]
	ldr r0, _0800999C @ =0x020000C8
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	b _080099AC
	.align 2, 0
_08009988: .4byte 0x04000208
_0800998C: .4byte 0x030022A0
_08009990: .4byte 0x04000200
_08009994: .4byte 0x020000C4
_08009998: .4byte 0x020000C5
_0800999C: .4byte 0x020000C8
_080099A0:
	ldr r0, _080099E0 @ =0x080000AC
	ldr r0, [r0]
	str r0, [r4, #0xc]
	ldr r0, _080099E4 @ =0x080460E4
	ldr r0, [r0]
	str r0, [r4, #0x14]
_080099AC:
	ldr r1, _080099E8 @ =0x030022A0
	ldr r0, _080099EC @ =0x080000B2
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _080099E0 @ =0x080000AC
	ldr r0, [r0]
	str r0, [r1, #0x24]
	movs r2, #0
	ldr r6, _080099F0 @ =0x03002300
	movs r5, #0
	ldr r4, _080099F4 @ =0x03002288
	movs r3, #1
_080099C4:
	adds r0, r2, r6
	ldrb r1, [r0]
	strb r5, [r0]
	adds r0, r2, r4
	ldrb r1, [r0]
	strb r3, [r0]
	adds r2, #1
	cmp r2, #7
	ble _080099C4
	ldr r0, _080099F8 @ =0x04000208
	strh r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080099E0: .4byte 0x080000AC
_080099E4: .4byte 0x080460E4
_080099E8: .4byte 0x030022A0
_080099EC: .4byte 0x080000B2
_080099F0: .4byte 0x03002300
_080099F4: .4byte 0x03002288
_080099F8: .4byte 0x04000208
	thumb_func_end sub_08009934

	thumb_func_start sub_080099FC
sub_080099FC: @ 0x080099FC
	push {lr}
	ldr r3, _08009A14 @ =0x030022A0
	ldrb r0, [r3, #2]
	cmp r0, #0xa
	bls _08009A18
	ldrb r0, [r3, #3]
	movs r0, #1
	strb r0, [r3, #3]
	bl sub_080098B0
	movs r0, #1
	b _08009A2C
	.align 2, 0
_08009A14: .4byte 0x030022A0
_08009A18:
	ldr r1, _08009A30 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldrb r0, [r3, #2]
	adds r0, #1
	ldrb r2, [r3, #2]
	strb r0, [r3, #2]
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
_08009A2C:
	pop {r1}
	bx r1
	.align 2, 0
_08009A30: .4byte 0x04000208
	thumb_func_end sub_080099FC

	thumb_func_start sub_08009A34
sub_08009A34: @ 0x08009A34
	ldr r1, _08009A3C @ =0x03002330
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0
_08009A3C: .4byte 0x03002330
	thumb_func_end sub_08009A34

	thumb_func_start sub_08009A40
sub_08009A40: @ 0x08009A40
	ldr r1, _08009A48 @ =0x03002330
	str r0, [r1, #0x44]
	bx lr
	.align 2, 0
_08009A48: .4byte 0x03002330
	thumb_func_end sub_08009A40

	thumb_func_start sub_08009A4C
sub_08009A4C: @ 0x08009A4C
	ldr r1, _08009A54 @ =0x03002330
	str r0, [r1, #0x48]
	bx lr
	.align 2, 0
_08009A54: .4byte 0x03002330
	thumb_func_end sub_08009A4C

	thumb_func_start sub_08009A58
sub_08009A58: @ 0x08009A58
	ldr r1, _08009A60 @ =0x03002330
	str r0, [r1, #0x4c]
	bx lr
	.align 2, 0
_08009A60: .4byte 0x03002330
	thumb_func_end sub_08009A58

	thumb_func_start sub_08009A64
sub_08009A64: @ 0x08009A64
	ldr r1, _08009A70 @ =0x03002330
	lsls r0, r0, #2
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08009A70: .4byte 0x03002330
	thumb_func_end sub_08009A64

	thumb_func_start sub_08009A74
sub_08009A74: @ 0x08009A74
	ldr r0, _08009A7C @ =0x020000C5
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08009A7C: .4byte 0x020000C5
	thumb_func_end sub_08009A74

	thumb_func_start sub_08009A80
sub_08009A80: @ 0x08009A80
	ldr r0, _08009A88 @ =0x03002330
	adds r0, #0xe4
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08009A88: .4byte 0x03002330
	thumb_func_end sub_08009A80

	thumb_func_start sub_08009A8C
sub_08009A8C: @ 0x08009A8C
	push {lr}
	ldr r1, _08009AA8 @ =0x03002330
	movs r0, #0
	str r0, [r1, #0x60]
	movs r2, #0
	adds r1, #0x50
	movs r0, #3
_08009A9A:
	stm r1!, {r2}
	subs r0, #1
	cmp r0, #0
	bge _08009A9A
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0
_08009AA8: .4byte 0x03002330
	thumb_func_end sub_08009A8C

	thumb_func_start sub_08009AAC
sub_08009AAC: @ 0x08009AAC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r1, _08009AFC @ =0x03002330
	ldr r0, [r1, #0x60]
	adds r3, r1, #0
	cmp r0, #0
	bne _08009B00
	movs r0, #1
	str r0, [r1, #0x60]
	movs r2, #0x30
	adds r1, #0x50
	movs r0, #3
_08009AC8:
	stm r1!, {r2}
	subs r0, #1
	cmp r0, #0
	bge _08009AC8
	adds r1, r3, #0
	adds r1, #0x75
	ldrb r0, [r1]
	movs r0, #0
	strb r4, [r1]
	subs r1, #1
	ldrb r2, [r1]
	strb r0, [r1]
	adds r2, r3, #0
	adds r2, #0x76
	ldrb r1, [r2]
	strb r0, [r2]
	adds r1, r3, #0
	adds r1, #0xd0
	ldrb r2, [r1]
	strb r5, [r1]
	strb r0, [r3]
	strb r0, [r3, #1]
	strb r0, [r3, #2]
	strb r0, [r3, #3]
	strb r0, [r3, #4]
	b _08009B48
	.align 2, 0
_08009AFC: .4byte 0x03002330
_08009B00:
	ldr r0, [r1, #0x60]
	cmp r0, #1
	bne _08009B26
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009B48
	movs r0, #0
	str r0, [r1, #0x60]
	movs r2, #0
	adds r1, #0x50
	movs r0, #3
_08009B1A:
	stm r1!, {r2}
	subs r0, #1
	cmp r0, #0
	bge _08009B1A
	movs r0, #1
	b _08009B4A
_08009B26:
	ldr r0, [r1, #0x60]
	cmp r0, #4
	bne _08009B42
	movs r0, #0
	str r0, [r1, #0x60]
	movs r2, #0
	adds r1, #0x50
	movs r0, #3
_08009B36:
	stm r1!, {r2}
	subs r0, #1
	cmp r0, #0
	bge _08009B36
	movs r0, #1
	b _08009B4A
_08009B42:
	ldr r0, [r1, #0x60]
	adds r0, #1
	str r0, [r1, #0x60]
_08009B48:
	movs r0, #0
_08009B4A:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08009AAC

	thumb_func_start sub_08009B50
sub_08009B50: @ 0x08009B50
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, _08009BE0 @ =0x03002330
	ldr r0, [r1, #0x60]
	mov ip, r1
	cmp r0, #0
	bne _08009BE4
	movs r0, #0xc8
	str r0, [r1, #0x60]
	movs r2, #0x40
	adds r1, #0x50
	movs r0, #3
_08009B6C:
	stm r1!, {r2}
	subs r0, #1
	cmp r0, #0
	bge _08009B6C
	mov r0, ip
	str r4, [r0, #0x78]
	adds r0, #0x80
	str r5, [r0]
	adds r0, #4
	str r3, [r0]
	mov r1, ip
	adds r1, #0x88
	ldr r0, [sp, #0x10]
	str r0, [r1]
	adds r1, #4
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r0, [sp, #0x18]
	mov r1, ip
	str r0, [r1, #0x7c]
	adds r1, #0x75
	ldrb r0, [r1]
	movs r0, #0
	strb r6, [r1]
	adds r1, #0x1b
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	adds r1, #4
	str r0, [r1]
	subs r1, #0x38
	ldrb r2, [r1]
	strb r0, [r1]
	mov r2, ip
	adds r2, #0x76
	ldrb r1, [r2]
	strb r0, [r2]
	mov r1, ip
	str r0, [r1, #0x64]
	str r0, [r1, #0x68]
	str r0, [r1, #0x6c]
	str r0, [r1, #0x70]
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	b _08009C0C
	.align 2, 0
_08009BE0: .4byte 0x03002330
_08009BE4:
	ldr r0, [r1, #0x60]
	cmp r0, #0xc8
	bne _08009C0C
	adds r0, r1, #0
	adds r0, #0x76
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009C0C
	movs r0, #0
	str r0, [r1, #0x60]
	movs r2, #0
	adds r1, #0x50
	movs r0, #3
_08009BFE:
	stm r1!, {r2}
	subs r0, #1
	cmp r0, #0
	bge _08009BFE
	movs r0, #1
	rsbs r0, r0, #0
	b _08009C0E
_08009C0C:
	movs r0, #0
_08009C0E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08009B50

	thumb_func_start sub_08009C14
sub_08009C14: @ 0x08009C14
	ldr r1, _08009C24 @ =0x03002330
	str r0, [r1, #0x50]
	str r0, [r1, #0x54]
	str r0, [r1, #0x58]
	str r0, [r1, #0x5c]
	movs r0, #0
	str r0, [r1, #0x60]
	bx lr
	.align 2, 0
_08009C24: .4byte 0x03002330
	thumb_func_end sub_08009C14

	thumb_func_start sub_08009C28
sub_08009C28: @ 0x08009C28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08009C4C @ =0x03002330
	adds r1, r0, #0
	adds r1, #0xc0
	movs r3, #1
	str r3, [r1]
	adds r2, r0, #0
	adds r2, #0xd4
	ldr r1, [r2]
	mov r8, r0
	cmp r1, #0x59
	ble _08009C50
	adds r0, #0xe4
	str r3, [r0]
	b _08009F4A
	.align 2, 0
_08009C4C: .4byte 0x03002330
_08009C50:
	ldr r0, _08009C60 @ =0x03002300
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _08009C64
	movs r0, #0
	b _08009C68
	.align 2, 0
_08009C60: .4byte 0x03002300
_08009C64:
	ldr r0, [r2]
	adds r0, #1
_08009C68:
	str r0, [r2]
	mov r1, r8
	ldr r0, [r1, #0x50]
	cmp r0, #0
	bne _08009CE8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08009C7A
	b _08009F38
_08009C7A:
	movs r5, #1
	rsbs r5, r5, #0
	ldr r1, _08009CDC @ =0x03002310
	mov r3, r8
	movs r2, #7
_08009C84:
	ldr r0, [r1]
	stm r3!, {r0}
	stm r1!, {r5}
	subs r2, #1
	cmp r2, #0
	bge _08009C84
	ldrb r0, [r4]
	movs r5, #0
	strb r5, [r4]
	mov r2, r8
	ldr r1, [r2, #0x40]
	cmp r1, #0
	beq _08009CA4
	movs r0, #0
	bl sub_08044030
_08009CA4:
	mov r3, r8
	ldr r1, [r3, #0x48]
	cmp r1, #0
	beq _08009CB2
	movs r0, #0
	bl sub_08044030
_08009CB2:
	mov r4, r8
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08009CC0
	movs r0, #0
	bl sub_08044030
_08009CC0:
	mov r0, r8
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _08009CCE
	movs r0, #0
	bl sub_08044030
_08009CCE:
	ldr r2, _08009CE0 @ =0x03002288
	ldrb r0, [r2]
	strb r5, [r2]
	ldr r1, _08009CE4 @ =0x03002260
	mov r0, r8
	b _08009D7C
	.align 2, 0
_08009CDC: .4byte 0x03002310
_08009CE0: .4byte 0x03002288
_08009CE4: .4byte 0x03002260
_08009CE8:
	mov r5, r8
	ldr r0, [r5, #0x50]
	cmp r0, #0x30
	bne _08009DA8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08009CF8
	b _08009F38
_08009CF8:
	movs r5, #1
	rsbs r5, r5, #0
	ldr r3, _08009D94 @ =0x03002310
	mov r1, r8
	movs r2, #7
_08009D02:
	ldr r0, [r3]
	stm r1!, {r0}
	stm r3!, {r5}
	subs r2, #1
	cmp r2, #0
	bge _08009D02
	ldrb r0, [r4]
	movs r0, #0
	strb r0, [r4]
	ldr r4, _08009D98 @ =0x03002330
	ldr r1, [r4, #0x40]
	cmp r1, #0
	beq _08009D20
	bl sub_08044030
_08009D20:
	ldr r1, [r4, #4]
	ldr r0, _08009D9C @ =0x44332211
	cmp r1, r0
	bne _08009D3E
	adds r0, r4, #0
	adds r0, #0xd0
	ldrb r1, [r0]
	ldrb r0, [r4, #8]
	cmp r0, r1
	bne _08009D3E
	ldrb r0, [r4, #9]
	adds r1, r4, #0
	adds r1, #0x76
	ldrb r2, [r1]
	strb r0, [r1]
_08009D3E:
	ldr r4, _08009D98 @ =0x03002330
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08009D4C
	movs r0, #0
	bl sub_08044030
_08009D4C:
	adds r1, r4, #0
	adds r1, #0x24
	movs r3, #0
	movs r0, #0x11
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x33
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x44
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd0
	ldrb r1, [r0]
	subs r0, #0xa8
	strb r1, [r0]
	ldr r2, _08009DA0 @ =0x03002288
	ldrb r0, [r2]
	strb r3, [r2]
	ldr r1, _08009DA4 @ =0x03002260
	adds r0, r4, #0
_08009D7C:
	adds r0, #0x20
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldrb r0, [r2]
	movs r0, #1
	strb r0, [r2]
	b _08009F38
	.align 2, 0
_08009D94: .4byte 0x03002310
_08009D98: .4byte 0x03002330
_08009D9C: .4byte 0x44332211
_08009DA0: .4byte 0x03002288
_08009DA4: .4byte 0x03002260
_08009DA8:
	mov r5, r8
	ldr r0, [r5, #0x50]
	movs r1, #0xf0
	ands r0, r1
	cmp r0, #0x40
	beq _08009DB6
	b _08009F38
_08009DB6:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08009DBE
	b _08009F38
_08009DBE:
	movs r5, #1
	rsbs r5, r5, #0
	ldr r3, _08009E08 @ =0x03002310
	mov r1, r8
	movs r2, #7
_08009DC8:
	ldr r0, [r3]
	stm r1!, {r0}
	stm r3!, {r5}
	subs r2, #1
	cmp r2, #0
	bge _08009DC8
	ldrb r0, [r4]
	movs r0, #0
	strb r0, [r4]
	ldr r4, _08009E0C @ =0x03002330
	ldr r1, [r4, #0x40]
	cmp r1, #0
	beq _08009DE6
	bl sub_08044030
_08009DE6:
	adds r5, r4, #0
	adds r5, #0x80
	ldr r0, [r5]
	mov r8, r4
	cmp r0, #0
	beq _08009E7E
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _08009E14
	ldr r1, [r4, #4]
	ldr r0, _08009E10 @ =0x09125819
	cmp r1, r0
	bne _08009E7E
	movs r0, #1
	mov r1, r8
	str r0, [r1, #0x64]
	b _08009E7E
	.align 2, 0
_08009E08: .4byte 0x03002310
_08009E0C: .4byte 0x03002330
_08009E10: .4byte 0x09125819
_08009E14:
	mov r2, r8
	ldr r0, [r2, #0x64]
	cmp r0, #1
	bne _08009E22
	movs r0, #2
	str r0, [r2, #0x64]
	b _08009E7E
_08009E22:
	mov r3, r8
	ldr r0, [r3, #0x64]
	cmp r0, #2
	bne _08009E30
	movs r0, #3
	str r0, [r3, #0x64]
	b _08009E7E
_08009E30:
	mov r3, r8
	adds r3, #0xa0
	ldr r1, [r3]
	mov r4, r8
	ldr r0, [r4, #0x7c]
	cmp r1, r0
	bge _08009E64
	movs r2, #0
	adds r4, r3, #0
	subs r3, #0x9c
_08009E44:
	ldr r0, [r5]
	ldr r1, [r4]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r1, [r3]
	strb r1, [r0]
	adds r3, #1
	adds r2, #1
	cmp r2, #0x1b
	ble _08009E44
	mov r1, r8
	adds r1, #0xa0
	ldr r0, [r1]
	adds r0, #0x1c
	str r0, [r1]
	b _08009E7E
_08009E64:
	mov r0, r8
	adds r0, #0x90
	ldr r1, [r0]
	mov r5, r8
	ldr r0, [r5, #0x7c]
	cmp r1, r0
	blt _08009E7E
	mov r1, r8
	ldrb r0, [r1, #4]
	mov r2, r8
	adds r2, #0x76
	ldrb r1, [r2]
	strb r0, [r2]
_08009E7E:
	mov r2, r8
	ldr r1, [r2, #0x44]
	cmp r1, #0
	beq _08009E8C
	movs r0, #0
	bl sub_08044030
_08009E8C:
	mov r3, r8
	ldr r0, [r3, #0x78]
	ldr r6, _08009EB8 @ =0x03002288
	ldr r7, _08009EBC @ =0x03002260
	movs r4, #0x20
	add r4, r8
	mov ip, r4
	cmp r0, #0
	beq _08009F1C
	ldr r2, [r3, #0x64]
	cmp r2, #0
	bne _08009EC0
	mov r0, r8
	adds r0, #0x24
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	b _08009F1C
	.align 2, 0
_08009EB8: .4byte 0x03002288
_08009EBC: .4byte 0x03002260
_08009EC0:
	mov r5, r8
	ldr r0, [r5, #0x64]
	cmp r0, #1
	bne _08009EE8
	mov r1, r8
	adds r1, #0x24
	movs r0, #0x19
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x58
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x12
	strb r0, [r1]
	adds r1, #1
	movs r0, #9
	strb r0, [r1]
	movs r0, #2
	str r0, [r5, #0x64]
	b _08009F1C
_08009EE8:
	mov r3, r8
	adds r3, #0x90
	ldr r1, [r3]
	mov r2, r8
	ldr r0, [r2, #0x7c]
	cmp r1, r0
	bge _08009F1C
	movs r2, #0
	mov r5, r8
	adds r4, r3, #0
	subs r3, #0x6c
_08009EFE:
	ldr r0, [r5, #0x78]
	ldr r1, [r4]
	adds r0, r0, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3]
	adds r3, #1
	adds r2, #1
	cmp r2, #0x1b
	ble _08009EFE
	mov r1, r8
	adds r1, #0x90
	ldr r0, [r1]
	adds r0, #0x1c
	str r0, [r1]
_08009F1C:
	ldrb r0, [r6]
	movs r0, #0
	strb r0, [r6]
	adds r1, r7, #0
	mov r0, ip
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldrb r0, [r6]
	movs r0, #1
	strb r0, [r6]
_08009F38:
	ldr r1, _08009F54 @ =0x030022A0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08009F4A
	ldr r0, [r1, #0x10]
	movs r2, #3
_08009F44:
	subs r2, #1
	cmp r2, #0
	bge _08009F44
_08009F4A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009F54: .4byte 0x030022A0
	thumb_func_end sub_08009C28

	thumb_func_start sub_08009F58
sub_08009F58: @ 0x08009F58
	push {lr}
	bl sub_08009C28
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08009F58

	thumb_func_start sub_08009F64
sub_08009F64: @ 0x08009F64
	push {lr}
	movs r0, #1
	bl sub_08003280
	bl sub_08009934
	pop {r0}
	bx r0
	thumb_func_end sub_08009F64

	thumb_func_start sub_08009F74
sub_08009F74: @ 0x08009F74
	push {lr}
	bl sub_08009F64
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08009F74

	thumb_func_start sub_08009F80
sub_08009F80: @ 0x08009F80
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08009FA0
	bl sub_080098B0
	bl sub_0800A2BC
	movs r0, #0
	bl sub_08003280
	adds r0, r4, #0
	bl sub_08003450
_08009FA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08009F80

	thumb_func_start sub_08009FA8
sub_08009FA8: @ 0x08009FA8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r7, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r1, _0800A040 @ =0x03002330
	adds r0, r1, #0
	adds r0, #0xe8
	str r2, [r0]
	adds r0, #4
	str r3, [r0]
	adds r0, #8
	str r4, [r0]
	movs r2, #0
	adds r3, r1, #0
	adds r6, r3, #0
	adds r6, #0xf0
	movs r5, #0
	movs r4, #1
_08009FD8:
	adds r1, r2, r6
	strb r5, [r1]
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r7
	cmp r0, #0
	beq _08009FE8
	strb r4, [r1]
_08009FE8:
	adds r2, #1
	cmp r2, #3
	ble _08009FD8
	ldr r0, _0800A040 @ =0x03002330
	movs r1, #0
	adds r4, r0, #0
	adds r4, #0xb0
	adds r0, #0xc0
	movs r2, #3
_08009FFA:
	stm r0!, {r1}
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bge _08009FFA
	adds r1, r3, #0
	adds r1, #0xe4
	movs r0, #0
	str r0, [r1]
	subs r1, #0x10
	movs r2, #3
_0800A010:
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bge _0800A010
	movs r0, #0
	str r0, [r3, #0x40]
	str r0, [r3, #0x44]
	str r0, [r3, #0x48]
	str r0, [r3, #0x4c]
	bl sub_08009C14
	bl sub_08009F74
	ldr r1, _0800A044 @ =sub_08009F58
	mov r0, sb
	mov r2, r8
	bl sub_08003344
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A040: .4byte 0x03002330
_0800A044: .4byte sub_08009F58
	thumb_func_end sub_08009FA8

	thumb_func_start sub_0800A048
sub_0800A048: @ 0x0800A048
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0800A0B0 @ =0x04000200
	ldr r2, _0800A0B4 @ =0x00002001
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0800A0B8 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0800A0BC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	bl sub_0800AC7C
	ldr r1, _0800A0C0 @ =0x0203C000
	movs r0, #0xff
	strb r0, [r1]
	ldr r2, _0800A0C4 @ =0x040000D4
	ldr r1, _0800A0C8 @ =0x08226E24
	str r1, [r2]
	ldr r3, _0800A0CC @ =0x0203E000
	str r3, [r2, #4]
	ldr r0, _0800A0D0 @ =0x08228664
	subs r0, r0, r1
	cmp r0, #0
	bge _0800A07E
	adds r0, #3
_0800A07E:
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _0800A0D4 @ =0x03001D64
	movs r2, #0
	str r2, [r0]
	ldr r0, _0800A0D8 @ =0x03001E08
	str r3, [r0]
	ldr r1, _0800A0DC @ =0x03001E04
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	ldr r4, _0800A0E0 @ =0x03001DB0
	str r3, [r4, #0x28]
	adds r0, r4, #0
	adds r0, #0x4b
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080084AC
	adds r5, r4, #0
	b _0800A12E
	.align 2, 0
_0800A0B0: .4byte 0x04000200
_0800A0B4: .4byte 0x00002001
_0800A0B8: .4byte 0x04000004
_0800A0BC: .4byte 0x04000208
_0800A0C0: .4byte 0x0203C000
_0800A0C4: .4byte 0x040000D4
_0800A0C8: .4byte 0x08226E24
_0800A0CC: .4byte 0x0203E000
_0800A0D0: .4byte 0x08228664
_0800A0D4: .4byte 0x03001D64
_0800A0D8: .4byte 0x03001E08
_0800A0DC: .4byte 0x03001E04
_0800A0E0: .4byte 0x03001DB0
_0800A0E4:
	bl sub_0800AEAC
	ldr r0, _0800A16C @ =0x03001D64
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A116
	ldr r3, _0800A170 @ =0x03001DB0
	ldrb r0, [r3, #0x18]
	cmp r0, #0
	bne _0800A116
	ldrb r0, [r3, #0x1e]
	cmp r0, #0
	beq _0800A116
	ldr r0, _0800A174 @ =0x03001E08
	ldr r1, [r0]
	adds r1, #0xc0
	ldr r0, _0800A178 @ =0x03001E04
	ldr r2, [r0]
	subs r2, #0xc0
	movs r0, #1
	str r0, [sp]
	adds r0, r3, #0
	movs r3, #4
	bl sub_08008948
_0800A116:
	adds r0, r5, #0
	bl sub_080084E8
	ldr r1, _0800A17C @ =0x03001DFC
	str r0, [r1]
	adds r0, r5, #0
	bl sub_08008A0C
	cmp r0, #0
	bne _0800A144
	bl sub_0800ACCC
_0800A12E:
	bl sub_08043C64
	bl sub_0800AC88
	bl sub_0800375C
	bl sub_0800AD20
	adds r4, r0, #0
	cmp r4, #0
	beq _0800A0E4
_0800A144:
	ldr r0, _0800A180 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800A184 @ =0x04000004
	strh r1, [r0]
	ldr r0, _0800A188 @ =0x04000200
	strh r1, [r0]
	ldr r1, _0800A18C @ =0x04000202
	ldr r2, _0800A190 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0x80
	strh r0, [r1]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A16C: .4byte 0x03001D64
_0800A170: .4byte 0x03001DB0
_0800A174: .4byte 0x03001E08
_0800A178: .4byte 0x03001E04
_0800A17C: .4byte 0x03001DFC
_0800A180: .4byte 0x04000208
_0800A184: .4byte 0x04000004
_0800A188: .4byte 0x04000200
_0800A18C: .4byte 0x04000202
_0800A190: .4byte 0x0000FFFF
	thumb_func_end sub_0800A048

	thumb_func_start sub_0800A194
sub_0800A194: @ 0x0800A194
	ldr r3, _0800A1C0 @ =0x0203FFF0
	strh r0, [r3]
	ldr r2, _0800A1C4 @ =0x0820529C
	lsls r0, r0, #4
	adds r1, r0, r2
	ldr r1, [r1]
	str r1, [r3, #8]
	adds r1, r2, #4
	adds r1, r0, r1
	ldr r1, [r1]
	str r1, [r3, #0xc]
	adds r1, r2, #0
	adds r1, #8
	adds r1, r0, r1
	ldr r1, [r1]
	strh r1, [r3, #2]
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	strh r0, [r3, #4]
	bx lr
	.align 2, 0
_0800A1C0: .4byte 0x0203FFF0
_0800A1C4: .4byte 0x0820529C
	thumb_func_end sub_0800A194

	thumb_func_start sub_0800A1C8
sub_0800A1C8: @ 0x0800A1C8
	ldr r0, _0800A1D0 @ =0x0203FFF0
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_0800A1D0: .4byte 0x0203FFF0
	thumb_func_end sub_0800A1C8

	thumb_func_start sub_0800A1D4
sub_0800A1D4: @ 0x0800A1D4
	ldr r0, _0800A1DC @ =0x0203FFF0
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_0800A1DC: .4byte 0x0203FFF0
	thumb_func_end sub_0800A1D4

	thumb_func_start sub_0800A1E0
sub_0800A1E0: @ 0x0800A1E0
	ldr r2, _0800A204 @ =0x03001E10
	ldr r1, _0800A208 @ =0x03001E30
	ldr r1, [r1]
	str r1, [r2]
	ldr r1, _0800A20C @ =0x03001EB8
	ldrb r1, [r1]
	str r1, [r2, #4]
	ldr r1, _0800A210 @ =0x03001EB0
	ldr r1, [r1]
	str r1, [r2, #8]
	ldr r1, _0800A214 @ =0x03001EB4
	ldr r1, [r1]
	str r1, [r2, #0xc]
	ldr r1, _0800A218 @ =0x03001ED8
	ldr r1, [r1]
	str r1, [r2, #0x10]
	str r0, [r2, #0x14]
	bx lr
	.align 2, 0
_0800A204: .4byte 0x03001E10
_0800A208: .4byte 0x03001E30
_0800A20C: .4byte 0x03001EB8
_0800A210: .4byte 0x03001EB0
_0800A214: .4byte 0x03001EB4
_0800A218: .4byte 0x03001ED8
	thumb_func_end sub_0800A1E0

	thumb_func_start sub_0800A21C
sub_0800A21C: @ 0x0800A21C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r5, _0800A2A4 @ =0x02031E40
	ldr r0, _0800A2A8 @ =0x080460EC
	mov r8, r0
	ldr r0, _0800A2AC @ =0x03001E30
	ldr r2, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_08007F1C
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	lsls r2, r4, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006A78
	ldr r0, _0800A2B0 @ =0x03001EB8
	ldrb r2, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_08007F1C
	adds r2, r4, #1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006A78
	ldr r0, _0800A2B4 @ =0x03001EB0
	ldr r2, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_08007F1C
	adds r2, r4, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006A78
	ldr r0, _0800A2B8 @ =0x03001EB4
	ldr r2, [r0]
	adds r0, r5, #0
	mov r1, r8
	bl sub_08007F1C
	adds r4, #3
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08006A78
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2A4: .4byte 0x02031E40
_0800A2A8: .4byte 0x080460EC
_0800A2AC: .4byte 0x03001E30
_0800A2B0: .4byte 0x03001EB8
_0800A2B4: .4byte 0x03001EB0
_0800A2B8: .4byte 0x03001EB4
	thumb_func_end sub_0800A21C

	thumb_func_start sub_0800A2BC
sub_0800A2BC: @ 0x0800A2BC
	push {r4, lr}
	ldr r0, _0800A33C @ =0x03001EB4
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800A340 @ =0x03001EB0
	str r1, [r0]
	ldr r0, _0800A344 @ =0x03001E38
	str r1, [r0]
	ldr r0, _0800A348 @ =0x03001EB8
	strb r1, [r0]
	ldr r0, _0800A34C @ =0x03001ED8
	str r1, [r0]
	ldr r0, _0800A350 @ =0x03001E30
	str r1, [r0]
	ldr r0, _0800A354 @ =0x03001EBC
	str r1, [r0]
	ldr r0, _0800A358 @ =0x03001E00
	str r1, [r0]
	movs r0, #0
	bl sub_0800A7E4
	movs r0, #0
	bl sub_08008B60
	ldr r1, _0800A35C @ =0x03001EC0
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0xe
_0800A2F4:
	strh r2, [r0]
	subs r0, #2
	cmp r0, r1
	bge _0800A2F4
	movs r1, #0
	ldr r4, _0800A360 @ =0x03001E50
	movs r3, #0
_0800A302:
	lsls r0, r1, #1
	adds r2, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #7
	adds r0, r0, r4
	adds r0, #0xe
_0800A310:
	strh r3, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge _0800A310
	adds r1, r2, #0
	cmp r1, #3
	ble _0800A302
	movs r0, #0
	ldr r3, _0800A364 @ =0x04000208
	strh r0, [r3]
	ldr r2, _0800A368 @ =0x03007FF8
	ldrh r1, [r2]
	ldr r0, _0800A36C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800A33C: .4byte 0x03001EB4
_0800A340: .4byte 0x03001EB0
_0800A344: .4byte 0x03001E38
_0800A348: .4byte 0x03001EB8
_0800A34C: .4byte 0x03001ED8
_0800A350: .4byte 0x03001E30
_0800A354: .4byte 0x03001EBC
_0800A358: .4byte 0x03001E00
_0800A35C: .4byte 0x03001EC0
_0800A360: .4byte 0x03001E50
_0800A364: .4byte 0x04000208
_0800A368: .4byte 0x03007FF8
_0800A36C: .4byte 0x0000FF7F
	thumb_func_end sub_0800A2BC

	thumb_func_start sub_0800A370
sub_0800A370: @ 0x0800A370
	ldr r0, _0800A394 @ =0x03001EB4
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800A398 @ =0x03001EB0
	str r1, [r0]
	ldr r0, _0800A39C @ =0x03001E38
	str r1, [r0]
	ldr r0, _0800A3A0 @ =0x03001EB8
	strb r1, [r0]
	ldr r0, _0800A3A4 @ =0x03001ED8
	str r1, [r0]
	ldr r0, _0800A3A8 @ =0x03001E30
	str r1, [r0]
	ldr r0, _0800A3AC @ =0x03001EBC
	str r1, [r0]
	ldr r0, _0800A3B0 @ =0x03001E00
	str r1, [r0]
	bx lr
	.align 2, 0
_0800A394: .4byte 0x03001EB4
_0800A398: .4byte 0x03001EB0
_0800A39C: .4byte 0x03001E38
_0800A3A0: .4byte 0x03001EB8
_0800A3A4: .4byte 0x03001ED8
_0800A3A8: .4byte 0x03001E30
_0800A3AC: .4byte 0x03001EBC
_0800A3B0: .4byte 0x03001E00
	thumb_func_end sub_0800A370

	thumb_func_start sub_0800A3B4
sub_0800A3B4: @ 0x0800A3B4
	push {lr}
	ldr r1, _0800A3E8 @ =0x03001EB4
	movs r0, #2
	str r0, [r1]
	ldr r0, _0800A3EC @ =0x03001EB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800A3F0 @ =0x03001E38
	str r1, [r0]
	ldr r0, _0800A3F4 @ =0x03001EB8
	strb r1, [r0]
	ldr r2, _0800A3F8 @ =0x03001ED8
	movs r0, #1
	str r0, [r2]
	ldr r0, _0800A3FC @ =0x03001E30
	str r1, [r0]
	ldr r0, _0800A400 @ =0x03001EBC
	str r1, [r0]
	ldr r0, _0800A404 @ =0x03001E00
	str r1, [r0]
	movs r0, #0
	bl sub_08008B60
	pop {r0}
	bx r0
	.align 2, 0
_0800A3E8: .4byte 0x03001EB4
_0800A3EC: .4byte 0x03001EB0
_0800A3F0: .4byte 0x03001E38
_0800A3F4: .4byte 0x03001EB8
_0800A3F8: .4byte 0x03001ED8
_0800A3FC: .4byte 0x03001E30
_0800A400: .4byte 0x03001EBC
_0800A404: .4byte 0x03001E00
	thumb_func_end sub_0800A3B4

	thumb_func_start sub_0800A408
sub_0800A408: @ 0x0800A408
	ldr r0, _0800A414 @ =0x03001EBC
	movs r1, #1
	str r1, [r0]
	ldr r0, _0800A418 @ =0x03001ED8
	str r1, [r0]
	bx lr
	.align 2, 0
_0800A414: .4byte 0x03001EBC
_0800A418: .4byte 0x03001ED8
	thumb_func_end sub_0800A408

	thumb_func_start sub_0800A41C
sub_0800A41C: @ 0x0800A41C
	ldr r1, _0800A42C @ =0x03001EBC
	movs r0, #0
	str r0, [r1]
	ldr r1, _0800A430 @ =0x03001ED8
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0800A42C: .4byte 0x03001EBC
_0800A430: .4byte 0x03001ED8
	thumb_func_end sub_0800A41C

	thumb_func_start sub_0800A434
sub_0800A434: @ 0x0800A434
	push {lr}
	bl sub_0800A4E0
	cmp r0, #0
	bne _0800A456
	ldr r0, _0800A460 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0800A456
	ldr r0, _0800A464 @ =0x03001D60
	ldr r1, [r0]
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
_0800A456:
	bl sub_08008C44
	pop {r0}
	bx r0
	.align 2, 0
_0800A460: .4byte 0x03001EB0
_0800A464: .4byte 0x03001D60
	thumb_func_end sub_0800A434

	thumb_func_start sub_0800A468
sub_0800A468: @ 0x0800A468
	push {lr}
	bl sub_08008C60
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800A468

	thumb_func_start sub_0800A474
sub_0800A474: @ 0x0800A474
	push {lr}
	ldr r2, _0800A484 @ =0x03001EB8
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800A488
	movs r0, #2
	b _0800A4B2
	.align 2, 0
_0800A484: .4byte 0x03001EB8
_0800A488:
	ldr r0, _0800A49C @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800A4A0
	movs r0, #0
	b _0800A4B2
	.align 2, 0
_0800A49C: .4byte 0x03001EB0
_0800A4A0:
	ldr r1, _0800A4B8 @ =0x03001E30
	ldr r0, _0800A4BC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	str r0, [r1]
	movs r0, #1
	strb r0, [r2]
	movs r0, #1
_0800A4B2:
	pop {r1}
	bx r1
	.align 2, 0
_0800A4B8: .4byte 0x03001E30
_0800A4BC: .4byte 0x04000128
	thumb_func_end sub_0800A474

	thumb_func_start sub_0800A4C0
sub_0800A4C0: @ 0x0800A4C0
	ldr r0, _0800A4C8 @ =0x03001EB8
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0800A4C8: .4byte 0x03001EB8
	thumb_func_end sub_0800A4C0

	thumb_func_start sub_0800A4CC
sub_0800A4CC: @ 0x0800A4CC
	ldr r2, _0800A4DC @ =0x03001EB0
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	bx lr
	.align 2, 0
_0800A4DC: .4byte 0x03001EB0
	thumb_func_end sub_0800A4CC

	thumb_func_start sub_0800A4E0
sub_0800A4E0: @ 0x0800A4E0
	push {lr}
	ldr r0, _0800A4F0 @ =0x03001E00
	ldr r0, [r0]
	cmp r0, #0
	beq _0800A4F4
	movs r0, #1
	b _0800A4F6
	.align 2, 0
_0800A4F0: .4byte 0x03001E00
_0800A4F4:
	movs r0, #0
_0800A4F6:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800A4E0

	thumb_func_start sub_0800A4FC
sub_0800A4FC: @ 0x0800A4FC
	ldr r2, _0800A508 @ =0x03001EB0
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	ands r0, r1
	bx lr
	.align 2, 0
_0800A508: .4byte 0x03001EB0
	thumb_func_end sub_0800A4FC

	thumb_func_start sub_0800A50C
sub_0800A50C: @ 0x0800A50C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0800A52C @ =0x03001EB0
	ldr r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800A530
	movs r0, #1
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	beq _0800A530
	movs r0, #1
	b _0800A532
	.align 2, 0
_0800A52C: .4byte 0x03001EB0
_0800A530:
	movs r0, #0
_0800A532:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800A50C

	thumb_func_start sub_0800A538
sub_0800A538: @ 0x0800A538
	push {lr}
	ldr r0, _0800A55C @ =0x03001EB0
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800A556
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A560
_0800A556:
	adds r0, r1, #0
	b _0800A580
	.align 2, 0
_0800A55C: .4byte 0x03001EB0
_0800A560:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0800A57E
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r2
	lsrs r0, r0, #8
	movs r1, #0xf
	ands r2, r1
	cmp r0, r2
	beq _0800A57E
	movs r0, #1
	b _0800A580
_0800A57E:
	movs r0, #0
_0800A580:
	pop {r1}
	bx r1
	thumb_func_end sub_0800A538

	thumb_func_start sub_0800A584
sub_0800A584: @ 0x0800A584
	push {lr}
	ldr r0, _0800A598 @ =0x03001ED8
	ldr r1, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0800A59C
	movs r0, #1
	b _0800A5B4
	.align 2, 0
_0800A598: .4byte 0x03001ED8
_0800A59C:
	ldr r0, _0800A5B8 @ =0x03001EB0
	ldr r1, [r0]
	ldr r0, _0800A5BC @ =0x00000F0F
	ands r0, r1
	cmp r0, #0
	beq _0800A5B2
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _0800A5B4
_0800A5B2:
	movs r0, #0
_0800A5B4:
	pop {r1}
	bx r1
	.align 2, 0
_0800A5B8: .4byte 0x03001EB0
_0800A5BC: .4byte 0x00000F0F
	thumb_func_end sub_0800A584

	thumb_func_start sub_0800A5C0
sub_0800A5C0: @ 0x0800A5C0
	ldr r1, _0800A5CC @ =0x03001ED8
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800A5CC: .4byte 0x03001ED8
	thumb_func_end sub_0800A5C0

	thumb_func_start sub_0800A5D0
sub_0800A5D0: @ 0x0800A5D0
	push {lr}
	ldr r0, _0800A5E0 @ =0x03001EC0
	movs r1, #0
	bl sub_08008DE0
	pop {r0}
	bx r0
	.align 2, 0
_0800A5E0: .4byte 0x03001EC0
	thumb_func_end sub_0800A5D0

	thumb_func_start sub_0800A5E4
sub_0800A5E4: @ 0x0800A5E4
	push {lr}
	movs r0, #3
	bl sub_0800A4CC
	cmp r0, #0
	beq _0800A5F4
	movs r0, #0xf
	b _0800A612
_0800A5F4:
	movs r0, #2
	bl sub_0800A4CC
	cmp r0, #0
	beq _0800A602
	movs r0, #7
	b _0800A612
_0800A602:
	movs r0, #1
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800A610
	movs r0, #1
	b _0800A612
_0800A610:
	movs r0, #3
_0800A612:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800A5E4

	thumb_func_start sub_0800A618
sub_0800A618: @ 0x0800A618
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0800A654 @ =0x03001D70
	ldr r3, [r2, #0x28]
	cmp r3, #0
	bne _0800A644
	movs r1, #1
	str r1, [r2, #0x28]
	movs r0, #0x10
	str r0, [r2]
	str r3, [r2, #0x24]
	str r1, [r2, #0x2c]
	ldr r1, _0800A658 @ =0x03001E50
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x48
_0800A638:
	strh r2, [r0]
	subs r0, #0x18
	cmp r0, r1
	bge _0800A638
	bl sub_0800A3B4
_0800A644:
	ldr r1, _0800A654 @ =0x03001D70
	ldr r0, [r1, #0x24]
	ands r0, r4
	cmp r0, r4
	beq _0800A65C
	movs r0, #0
	b _0800A664
	.align 2, 0
_0800A654: .4byte 0x03001D70
_0800A658: .4byte 0x03001E50
_0800A65C:
	movs r0, #0
	str r0, [r1, #0x28]
	str r0, [r1]
	movs r0, #1
_0800A664:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800A618

	thumb_func_start sub_0800A66C
sub_0800A66C: @ 0x0800A66C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800A6A0 @ =0x03001D70
	ldr r1, [r0, #0x28]
	adds r2, r0, #0
	cmp r1, #0
	bne _0800A694
	movs r0, #1
	str r0, [r2, #0x28]
	movs r0, #0x20
	str r0, [r2]
	str r1, [r2, #0x24]
	ldr r1, _0800A6A4 @ =0x03001E50
	movs r3, #0
	adds r0, r1, #0
	adds r0, #0x48
_0800A68C:
	strh r3, [r0]
	subs r0, #0x18
	cmp r0, r1
	bge _0800A68C
_0800A694:
	ldr r0, [r2, #0x24]
	ands r0, r4
	cmp r0, r4
	beq _0800A6A8
	movs r0, #0
	b _0800A6BA
	.align 2, 0
_0800A6A0: .4byte 0x03001D70
_0800A6A4: .4byte 0x03001E50
_0800A6A8:
	movs r0, #0
	str r0, [r2, #0x28]
	str r0, [r2]
	str r0, [r2, #0x2c]
	bl sub_0800A468
	bl sub_0800A2BC
	movs r0, #1
_0800A6BA:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0800A66C

	thumb_func_start sub_0800A6C0
sub_0800A6C0: @ 0x0800A6C0
	push {lr}
	adds r2, r0, #0
	ldr r1, _0800A6E8 @ =0x03001D70
	ldr r3, [r1, #0x28]
	cmp r3, #0
	bne _0800A6F0
	movs r0, #1
	str r0, [r1, #0x28]
	movs r0, #0x30
	str r0, [r1]
	str r3, [r1, #0x24]
	ldr r1, _0800A6EC @ =0x03001E50
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x48
_0800A6DE:
	strh r2, [r0]
	subs r0, #0x18
	cmp r0, r1
	bge _0800A6DE
	b _0800A702
	.align 2, 0
_0800A6E8: .4byte 0x03001D70
_0800A6EC: .4byte 0x03001E50
_0800A6F0:
	ldr r0, [r1, #0x24]
	ands r0, r2
	cmp r0, r2
	bne _0800A702
	movs r0, #0
	str r0, [r1, #0x28]
	str r0, [r1]
	movs r0, #1
	b _0800A704
_0800A702:
	movs r0, #0
_0800A704:
	pop {r1}
	bx r1
	thumb_func_end sub_0800A6C0

	thumb_func_start sub_0800A708
sub_0800A708: @ 0x0800A708
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, _0800A760 @ =0x03001D70
	ldr r1, [r0, #0x28]
	adds r2, r0, #0
	cmp r1, #0
	bne _0800A748
	movs r0, #1
	str r0, [r2, #0x28]
	movs r0, #0x40
	str r0, [r2]
	str r4, [r2, #4]
	str r5, [r2, #8]
	str r6, [r2, #0xc]
	str r3, [r2, #0x10]
	ldr r0, [sp, #0x10]
	str r0, [r2, #0x14]
	ldr r0, [sp, #0x14]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	str r1, [r2, #0x20]
	str r1, [r2, #0x24]
	ldr r1, _0800A764 @ =0x03001E50
	movs r3, #0
	adds r0, r1, #0
	adds r0, #0x48
_0800A740:
	strh r3, [r0]
	subs r0, #0x18
	cmp r0, r1
	bge _0800A740
_0800A748:
	ldr r1, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0800A768
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0800A768
	movs r0, #0
	str r0, [r2, #0x28]
	subs r0, #1
	b _0800A76A
	.align 2, 0
_0800A760: .4byte 0x03001D70
_0800A764: .4byte 0x03001E50
_0800A768:
	ldr r0, [r2, #0x1c]
_0800A76A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0800A708

	thumb_func_start sub_0800A770
sub_0800A770: @ 0x0800A770
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r4, _0800A794 @ =0x03001D70
	ldr r2, [r4, #0x28]
	cmp r2, #0
	beq _0800A798
	adds r0, r4, #0
	adds r0, #0x1c
	bl sub_08009234
	cmp r0, #0
	beq _0800A7BC
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4]
	subs r0, #1
	b _0800A7C2
	.align 2, 0
_0800A794: .4byte 0x03001D70
_0800A798:
	movs r1, #1
	str r1, [r4, #0x28]
	movs r0, #0x80
	str r0, [r4]
	str r5, [r4, #4]
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	str r2, [r4, #0x10]
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	eors r3, r1
	adds r0, r3, #0
	adds r1, r5, #0
	bl sub_08009184
_0800A7BC:
	ldr r0, _0800A7C8 @ =0x03001D70
	ldr r0, [r0, #0x1c]
	lsls r0, r0, #2
_0800A7C2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A7C8: .4byte 0x03001D70
	thumb_func_end sub_0800A770

	thumb_func_start sub_0800A7CC
sub_0800A7CC: @ 0x0800A7CC
	ldr r1, _0800A7D4 @ =0x03001D70
	movs r0, #1
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0800A7D4: .4byte 0x03001D70
	thumb_func_end sub_0800A7CC

	thumb_func_start sub_0800A7D8
sub_0800A7D8: @ 0x0800A7D8
	ldr r1, _0800A7E0 @ =0x03001D70
	movs r0, #0
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0800A7E0: .4byte 0x03001D70
	thumb_func_end sub_0800A7D8

	thumb_func_start sub_0800A7E4
sub_0800A7E4: @ 0x0800A7E4
	ldr r1, _0800A7F4 @ =0x03001D70
	str r0, [r1]
	movs r0, #0
	str r0, [r1, #0x28]
	str r0, [r1, #0x2c]
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0800A7F4: .4byte 0x03001D70
	thumb_func_end sub_0800A7E4

	thumb_func_start sub_0800A7F8
sub_0800A7F8: @ 0x0800A7F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0800A85C @ =0x03001D70
	ldr r0, [r1]
	cmp r0, #0x80
	bne _0800A808
	b _0800ABAE
_0800A808:
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	beq _0800A812
	bl sub_0800A434
_0800A812:
	bl sub_0800A474
	adds r4, r0, #0
	ldr r5, _0800A860 @ =0x03001E00
	ldr r0, [r5]
	cmp r0, #0
	bne _0800A844
	bl sub_0800A4C0
	cmp r0, #0
	beq _0800A844
	ldr r0, _0800A864 @ =0x03001E30
	ldr r0, [r0]
	cmp r0, #0
	bne _0800A83E
	ldr r0, _0800A868 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800A844
_0800A83E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5]
_0800A844:
	cmp r4, #1
	bgt _0800A8D0
	cmp r4, #0
	bne _0800A878
	ldr r0, _0800A86C @ =0x03001EC0
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	ldr r3, _0800A870 @ =0x030014A4
	ldr r0, _0800A874 @ =0x03001038
	mov ip, r0
	b _0800A888
	.align 2, 0
_0800A85C: .4byte 0x03001D70
_0800A860: .4byte 0x03001E00
_0800A864: .4byte 0x03001E30
_0800A868: .4byte 0x03001EB0
_0800A86C: .4byte 0x03001EC0
_0800A870: .4byte 0x030014A4
_0800A874: .4byte 0x03001038
_0800A878:
	ldr r2, _0800A8B8 @ =0x03001EC0
	ldr r3, _0800A8BC @ =0x030014A4
	ldrh r0, [r3]
	strh r0, [r2, #0x10]
	ldr r1, _0800A8C0 @ =0x03001038
	ldrh r0, [r1]
	strh r0, [r2, #0x12]
	mov ip, r1
_0800A888:
	ldr r7, _0800A8C4 @ =0x03001E30
	ldr r5, _0800A8C8 @ =0x03001020
	ldr r6, _0800A8CC @ =0x03001028
	movs r0, #0
	adds r2, r6, #0
	adds r1, r5, #0
	movs r4, #3
_0800A896:
	strh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bge _0800A896
	ldr r0, [r7]
	lsls r0, r0, #1
	adds r2, r0, r5
	ldrh r1, [r3]
	strh r1, [r2]
	adds r0, r0, r6
	mov r2, ip
	ldrh r1, [r2]
	strh r1, [r0]
	b _0800ABAA
	.align 2, 0
_0800A8B8: .4byte 0x03001EC0
_0800A8BC: .4byte 0x030014A4
_0800A8C0: .4byte 0x03001038
_0800A8C4: .4byte 0x03001E30
_0800A8C8: .4byte 0x03001020
_0800A8CC: .4byte 0x03001028
_0800A8D0:
	movs r4, #0
	ldr r0, _0800A910 @ =0x0000FFFF
	mov r8, r0
	ldr r7, _0800A914 @ =0x03001EBC
	movs r6, #0
	movs r5, #0
_0800A8DC:
	adds r0, r4, #0
	bl sub_0800A4FC
	cmp r0, #0
	beq _0800A96A
	ldr r2, _0800A918 @ =0x03001E50
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r6, r0
	ldrh r1, [r0]
	cmp r1, r8
	bne _0800A928
	bl sub_0800A5C0
	ldr r0, _0800A91C @ =0x03001E30
	ldr r0, [r0]
	cmp r0, r4
	beq _0800A93C
	ldr r0, _0800A920 @ =0x03001020
	adds r0, r5, r0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800A924 @ =0x03001028
	adds r0, r5, r0
	strh r1, [r0]
	b _0800A93C
	.align 2, 0
_0800A910: .4byte 0x0000FFFF
_0800A914: .4byte 0x03001EBC
_0800A918: .4byte 0x03001E50
_0800A91C: .4byte 0x03001E30
_0800A920: .4byte 0x03001020
_0800A924: .4byte 0x03001028
_0800A928:
	ldr r0, _0800A954 @ =0x03001020
	adds r0, r5, r0
	strh r1, [r0]
	ldr r1, _0800A958 @ =0x03001028
	adds r1, r5, r1
	adds r0, r2, #0
	adds r0, #0x12
	adds r0, r6, r0
	ldrh r0, [r0]
	strh r0, [r1]
_0800A93C:
	ldr r0, _0800A95C @ =0x03001E50
	adds r0, #0x14
	adds r0, r6, r0
	ldrh r0, [r0]
	cmp r0, #0
	beq _0800A960
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7]
	orrs r0, r1
	b _0800A968
	.align 2, 0
_0800A954: .4byte 0x03001020
_0800A958: .4byte 0x03001028
_0800A95C: .4byte 0x03001E50
_0800A960:
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7]
	bics r0, r1
_0800A968:
	str r0, [r7]
_0800A96A:
	adds r6, #0x18
	adds r5, #2
	adds r4, #1
	cmp r4, #3
	ble _0800A8DC
	ldr r0, _0800A9AC @ =0x03001E30
	ldr r0, [r0]
	bl sub_0800A50C
	cmp r0, #0
	beq _0800A9D0
	ldr r1, _0800A9B0 @ =0x03001EC0
	adds r0, r1, #0
	ldr r1, _0800A9B4 @ =0x00008888
	adds r2, r0, #0
	adds r2, #0x16
_0800A98A:
	strh r1, [r2]
	subs r2, #2
	cmp r2, r0
	bge _0800A98A
	bl sub_0800A584
	cmp r0, #0
	beq _0800A9BC
	ldr r0, _0800A9B0 @ =0x03001EC0
	ldr r1, _0800A9B8 @ =0x0000FFFF
	strh r1, [r0, #0x10]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #0x12]
	adds r1, r0, #0
	b _0800A9CA
	.align 2, 0
_0800A9AC: .4byte 0x03001E30
_0800A9B0: .4byte 0x03001EC0
_0800A9B4: .4byte 0x00008888
_0800A9B8: .4byte 0x0000FFFF
_0800A9BC:
	ldr r1, _0800AA14 @ =0x03001EC0
	ldr r0, _0800AA18 @ =0x030014A4
	ldrh r0, [r0]
	strh r0, [r1, #0x10]
	ldr r0, _0800AA1C @ =0x03001038
	ldrh r0, [r0]
	strh r0, [r1, #0x12]
_0800A9CA:
	ldr r0, _0800AA20 @ =0x03001D70
	ldr r0, [r0, #0x30]
	strh r0, [r1, #0x14]
_0800A9D0:
	ldr r6, _0800AA20 @ =0x03001D70
	ldr r0, [r6]
	cmp r0, #0x10
	bne _0800AA30
	ldr r0, _0800AA24 @ =0x03001E30
	ldr r0, [r0]
	bl sub_0800A50C
	cmp r0, #0
	beq _0800A9EA
	ldr r1, _0800AA14 @ =0x03001EC0
	ldr r0, _0800AA28 @ =0x00000123
	strh r0, [r1]
_0800A9EA:
	movs r4, #0
	ldr r7, _0800AA28 @ =0x00000123
	ldr r5, _0800AA2C @ =0x03001E50
_0800A9F0:
	adds r0, r4, #0
	bl sub_0800A4FC
	cmp r0, #0
	beq _0800AA0A
	ldrh r0, [r5]
	cmp r0, r7
	bne _0800AA0A
	movs r1, #1
	lsls r1, r4
	ldr r0, [r6, #0x24]
	orrs r0, r1
	str r0, [r6, #0x24]
_0800AA0A:
	adds r5, #0x18
	adds r4, #1
	cmp r4, #3
	ble _0800A9F0
	b _0800ABAA
	.align 2, 0
_0800AA14: .4byte 0x03001EC0
_0800AA18: .4byte 0x030014A4
_0800AA1C: .4byte 0x03001038
_0800AA20: .4byte 0x03001D70
_0800AA24: .4byte 0x03001E30
_0800AA28: .4byte 0x00000123
_0800AA2C: .4byte 0x03001E50
_0800AA30:
	ldr r0, [r6]
	cmp r0, #0x20
	bne _0800AA84
	ldr r0, _0800AA74 @ =0x03001E30
	ldr r0, [r0]
	bl sub_0800A50C
	cmp r0, #0
	beq _0800AA48
	ldr r1, _0800AA78 @ =0x03001EC0
	ldr r0, _0800AA7C @ =0x00004567
	strh r0, [r1]
_0800AA48:
	movs r4, #0
	ldr r7, _0800AA7C @ =0x00004567
	ldr r5, _0800AA80 @ =0x03001E50
_0800AA4E:
	adds r0, r4, #0
	bl sub_0800A4FC
	cmp r0, #0
	beq _0800AA68
	ldrh r0, [r5]
	cmp r0, r7
	bne _0800AA68
	movs r1, #1
	lsls r1, r4
	ldr r0, [r6, #0x24]
	orrs r0, r1
	str r0, [r6, #0x24]
_0800AA68:
	adds r5, #0x18
	adds r4, #1
	cmp r4, #3
	ble _0800AA4E
	b _0800ABAA
	.align 2, 0
_0800AA74: .4byte 0x03001E30
_0800AA78: .4byte 0x03001EC0
_0800AA7C: .4byte 0x00004567
_0800AA80: .4byte 0x03001E50
_0800AA84:
	ldr r0, [r6]
	cmp r0, #0x30
	bne _0800AAD8
	ldr r0, _0800AAC8 @ =0x03001E30
	ldr r0, [r0]
	bl sub_0800A50C
	cmp r0, #0
	beq _0800AA9C
	ldr r1, _0800AACC @ =0x03001EC0
	ldr r0, _0800AAD0 @ =0x000089AB
	strh r0, [r1]
_0800AA9C:
	movs r4, #0
	ldr r7, _0800AAD0 @ =0x000089AB
	ldr r5, _0800AAD4 @ =0x03001E50
_0800AAA2:
	adds r0, r4, #0
	bl sub_0800A4FC
	cmp r0, #0
	beq _0800AABC
	ldrh r0, [r5]
	cmp r0, r7
	bne _0800AABC
	movs r1, #1
	lsls r1, r4
	ldr r0, [r6, #0x24]
	orrs r0, r1
	str r0, [r6, #0x24]
_0800AABC:
	adds r5, #0x18
	adds r4, #1
	cmp r4, #3
	ble _0800AAA2
	b _0800ABAA
	.align 2, 0
_0800AAC8: .4byte 0x03001E30
_0800AACC: .4byte 0x03001EC0
_0800AAD0: .4byte 0x000089AB
_0800AAD4: .4byte 0x03001E50
_0800AAD8:
	ldr r0, [r6]
	cmp r0, #0x40
	bne _0800ABA8
	ldr r0, _0800AB98 @ =0x03001E30
	ldr r0, [r0]
	bl sub_0800A50C
	cmp r0, #0
	beq _0800AB16
	ldr r1, [r6, #0x1c]
	ldr r0, [r6, #0x18]
	cmp r1, r0
	bge _0800AB16
	movs r4, #0
	adds r5, r6, #0
	ldr r3, _0800AB9C @ =0x03001EC0
_0800AAF8:
	lsls r2, r4, #1
	ldr r0, [r5, #0x1c]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r1, [r5, #4]
	lsls r0, r0, #1
	adds r2, r2, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r4, #1
	cmp r4, #7
	ble _0800AAF8
_0800AB16:
	movs r4, #0
	ldr r7, _0800ABA0 @ =0x03001E50
_0800AB1A:
	adds r0, r4, #0
	bl sub_0800A4FC
	adds r6, r4, #1
	cmp r0, #0
	beq _0800AB60
	ldr r3, _0800ABA4 @ =0x03001D70
	ldr r1, [r3, #0x20]
	ldr r0, [r3, #0x18]
	cmp r1, r0
	bge _0800AB60
	lsls r0, r4, #1
	lsls r2, r4, #2
	adds r5, r3, #0
	adds r1, r5, #0
	adds r1, #8
	adds r2, r2, r1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r3, r0, r7
	ldr r2, [r2]
	movs r4, #7
_0800AB46:
	ldr r0, [r5, #0x20]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r3]
	strh r1, [r0]
	adds r3, #2
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _0800AB46
_0800AB60:
	adds r4, r6, #0
	cmp r4, #3
	ble _0800AB1A
	ldr r2, _0800ABA4 @ =0x03001D70
	ldr r0, [r2, #0x24]
	adds r0, #1
	str r0, [r2, #0x24]
	ldr r0, [r2, #0x24]
	cmp r0, #5
	ble _0800ABAA
	movs r3, #0
	str r3, [r2, #0x24]
	ldr r0, [r2, #0x1c]
	adds r0, #0x10
	str r0, [r2, #0x1c]
	ldr r0, [r2, #0x20]
	adds r0, #0x10
	str r0, [r2, #0x20]
	ldr r1, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0800ABAA
	ldr r1, [r2, #0x20]
	ldr r0, [r2, #0x18]
	cmp r1, r0
	blt _0800ABAA
	str r3, [r2]
	b _0800ABAA
	.align 2, 0
_0800AB98: .4byte 0x03001E30
_0800AB9C: .4byte 0x03001EC0
_0800ABA0: .4byte 0x03001E50
_0800ABA4: .4byte 0x03001D70
_0800ABA8:
	ldr r0, [r6]
_0800ABAA:
	bl sub_0800A5D0
_0800ABAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800A7F8

	thumb_func_start sub_0800ABB8
sub_0800ABB8: @ 0x0800ABB8
	push {r4, lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800AC68 @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0800AC6C @ =0x8100C000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800AC70 @ =0x0820526C
	bl sub_08000D40
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _0800AC74 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	ldr r1, _0800AC78 @ =0x0000F3FE
	movs r0, #1
	movs r2, #0
	bl sub_08000E44
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC68: .4byte 0x040000D4
_0800AC6C: .4byte 0x8100C000
_0800AC70: .4byte 0x0820526C
_0800AC74: .4byte 0x0000F3FF
_0800AC78: .4byte 0x0000F3FE
	thumb_func_end sub_0800ABB8

	thumb_func_start sub_0800AC7C
sub_0800AC7C: @ 0x0800AC7C
	push {lr}
	bl sub_0800ABB8
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800AC7C

	thumb_func_start sub_0800AC88
sub_0800AC88: @ 0x0800AC88
	push {r4, lr}
	bl sub_08002F84
	ldr r4, _0800ACC8 @ =0x03001040
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	movs r0, #0
	bl sub_08000954
	ldrh r1, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	movs r0, #1
	bl sub_08000954
	ldrh r1, [r4, #0x2c]
	ldrh r2, [r4, #0x2e]
	movs r0, #2
	bl sub_08000954
	ldrh r1, [r4, #0x3c]
	ldrh r2, [r4, #0x3e]
	movs r0, #3
	bl sub_08000954
	bl sub_08001910
	bl sub_080029D4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ACC8: .4byte 0x03001040
	thumb_func_end sub_0800AC88

	thumb_func_start sub_0800ACCC
sub_0800ACCC: @ 0x0800ACCC
	push {lr}
	bl sub_08002918
	movs r0, #0
	bl sub_080029E0
	ldr r0, _0800ACE8 @ =0x03001D20
	ldr r0, [r0]
	cmp r0, #0
	beq _0800ACEC
	bl sub_08002A60
	b _0800ACF0
	.align 2, 0
_0800ACE8: .4byte 0x03001D20
_0800ACEC:
	bl sub_08001910
_0800ACF0:
	bl sub_080024E4
	ldr r0, _0800AD18 @ =0x03001D40
	ldr r0, [r0]
	cmp r0, #0
	bne _0800AD04
	bl sub_080018F8
	bl sub_080013B0
_0800AD04:
	bl sub_08001244
	ldr r1, _0800AD1C @ =0x03001910
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_08002EE4
	pop {r0}
	bx r0
	.align 2, 0
_0800AD18: .4byte 0x03001D40
_0800AD1C: .4byte 0x03001910
	thumb_func_end sub_0800ACCC

	thumb_func_start sub_0800AD20
sub_0800AD20: @ 0x0800AD20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	movs r6, #1
	ldr r0, _0800AD4C @ =0x03001DB0
	mov r8, r0
	movs r7, #1
	add r5, sp, #4
_0800AD32:
	mov r1, r8
	ldrb r4, [r1, #0x1d]
	asrs r4, r6
	ands r4, r7
	cmp r4, #0
	bne _0800AD58
	ldr r0, _0800AD50 @ =0x02031E40
	ldr r1, _0800AD54 @ =0x080460F4
	bl sub_08007F1C
	str r4, [r5]
	b _0800AD84
	.align 2, 0
_0800AD4C: .4byte 0x03001DB0
_0800AD50: .4byte 0x02031E40
_0800AD54: .4byte 0x080460F4
_0800AD58:
	mov r1, r8
	ldrb r0, [r1, #0x1e]
	asrs r0, r6
	ands r0, r7
	cmp r0, #0
	bne _0800AD78
	ldr r0, _0800AD70 @ =0x02031E40
	ldr r1, _0800AD74 @ =0x08046108
	bl sub_08007F1C
	str r7, [r5]
	b _0800AD84
	.align 2, 0
_0800AD70: .4byte 0x02031E40
_0800AD74: .4byte 0x08046108
_0800AD78:
	ldr r0, _0800ADDC @ =0x02031E40
	ldr r1, _0800ADE0 @ =0x0804611C
	bl sub_08007F1C
	movs r0, #2
	str r0, [r5]
_0800AD84:
	lsls r2, r6, #0x18
	asrs r2, r2, #0x18
	ldr r0, _0800ADDC @ =0x02031E40
	movs r1, #0
	bl sub_08006A78
	adds r5, #4
	adds r6, #1
	cmp r6, #3
	ble _0800AD32
	movs r4, #0
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r2, _0800ADE4 @ =0x03001DB0
	cmp r0, #0
	beq _0800ADAA
	cmp r0, #1
	beq _0800ADC0
_0800ADA8:
	adds r4, #1
_0800ADAA:
	adds r6, #1
	cmp r6, #3
	bgt _0800ADC0
	lsls r0, r6, #2
	add r0, sp
	ldr r0, [r0]
	cmp r0, #0
	beq _0800ADAA
	cmp r0, #1
	bne _0800ADA8
	movs r4, #0
_0800ADC0:
	ldrb r1, [r2, #0x1e]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0800AE34
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _0800ADEC
	cmp r0, #0xd1
	beq _0800AE08
	ldr r0, _0800ADDC @ =0x02031E40
	ldr r1, _0800ADE8 @ =0x08046158
	b _0800AE0C
	.align 2, 0
_0800ADDC: .4byte 0x02031E40
_0800ADE0: .4byte 0x0804611C
_0800ADE4: .4byte 0x03001DB0
_0800ADE8: .4byte 0x08046158
_0800ADEC:
	ldr r0, _0800ADFC @ =0x02031E40
	ldr r1, _0800AE00 @ =0x08046130
	bl sub_08007F1C
	ldr r0, _0800AE04 @ =0x0203FFE0
	strh r4, [r0, #4]
	b _0800AE10
	.align 2, 0
_0800ADFC: .4byte 0x02031E40
_0800AE00: .4byte 0x08046130
_0800AE04: .4byte 0x0203FFE0
_0800AE08:
	ldr r0, _0800AE24 @ =0x02031E40
	ldr r1, _0800AE28 @ =0x08046144
_0800AE0C:
	bl sub_08007F1C
_0800AE10:
	ldr r0, _0800AE2C @ =0x03001DB0
	ldrb r0, [r0, #0x18]
	cmp r0, #0xdf
	bls _0800AE3C
	ldr r0, _0800AE24 @ =0x02031E40
	ldr r1, _0800AE30 @ =0x0804616C
	bl sub_08007F1C
	b _0800AE3C
	.align 2, 0
_0800AE24: .4byte 0x02031E40
_0800AE28: .4byte 0x08046144
_0800AE2C: .4byte 0x03001DB0
_0800AE30: .4byte 0x0804616C
_0800AE34:
	ldr r0, _0800AE64 @ =0x02031E40
	ldr r1, _0800AE68 @ =0x08046158
	bl sub_08007F1C
_0800AE3C:
	ldr r0, _0800AE64 @ =0x02031E40
	movs r1, #0
	movs r2, #0xa
	bl sub_08006A78
	ldr r0, _0800AE6C @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800AE74
	ldr r1, _0800AE70 @ =0x03001DB0
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	beq _0800AE60
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	bne _0800AE74
_0800AE60:
	movs r0, #1
	b _0800AE92
	.align 2, 0
_0800AE64: .4byte 0x02031E40
_0800AE68: .4byte 0x08046158
_0800AE6C: .4byte 0x030014A4
_0800AE70: .4byte 0x03001DB0
_0800AE74:
	ldr r0, _0800AEA0 @ =0x03001910
	ldr r2, [r0]
	adds r2, #1
	str r2, [r0]
	ldr r4, _0800AEA4 @ =0x02031E40
	ldr r1, _0800AEA8 @ =0x08046180
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0x13
	bl sub_08006A78
	movs r0, #0
_0800AE92:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800AEA0: .4byte 0x03001910
_0800AEA4: .4byte 0x02031E40
_0800AEA8: .4byte 0x08046180
	thumb_func_end sub_0800AD20

	thumb_func_start sub_0800AEAC
sub_0800AEAC: @ 0x0800AEAC
	push {lr}
	bl sub_08001858
	cmp r0, #0
	bne _0800AEC8
	ldr r0, _0800AECC @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800AEC8
	ldr r1, _0800AED0 @ =0x03001D64
	movs r0, #1
	str r0, [r1]
_0800AEC8:
	pop {r0}
	bx r0
	.align 2, 0
_0800AECC: .4byte 0x030014A4
_0800AED0: .4byte 0x03001D64
	thumb_func_end sub_0800AEAC

	thumb_func_start sub_0800AED4
sub_0800AED4: @ 0x0800AED4
	push {r4, lr}
	ldr r0, _0800AEF4 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _0800AEF8 @ =0x000003FF
	adds r1, r2, #0
	eors r1, r0
	ldr r4, _0800AEFC @ =0x03001E40
	ldr r3, _0800AF00 @ =0x03001E34
	ldrh r2, [r3]
	adds r0, r1, #0
	bics r0, r2
	strh r0, [r4]
	strh r1, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800AEF4: .4byte 0x04000130
_0800AEF8: .4byte 0x000003FF
_0800AEFC: .4byte 0x03001E40
_0800AF00: .4byte 0x03001E34
	thumb_func_end sub_0800AED4

	thumb_func_start sub_0800AF04
sub_0800AF04: @ 0x0800AF04
	push {lr}
	ldr r0, _0800AF28 @ =0x03001EB0
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800AF22
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800AF2C
_0800AF22:
	adds r0, r1, #0
	b _0800AF42
	.align 2, 0
_0800AF28: .4byte 0x03001EB0
_0800AF2C:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r2
	lsrs r0, r0, #8
	movs r1, #0xf
	ands r2, r1
	cmp r0, r2
	bne _0800AF40
	movs r0, #0
	b _0800AF42
_0800AF40:
	movs r0, #1
_0800AF42:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800AF04

	thumb_func_start sub_0800AF48
sub_0800AF48: @ 0x0800AF48
	push {lr}
	ldr r0, _0800AF74 @ =0x03001EB4
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800AF78 @ =0x03001EB0
	str r1, [r0]
	ldr r0, _0800AF7C @ =0x03001E38
	str r1, [r0]
	ldr r0, _0800AF80 @ =0x03001EB8
	strb r1, [r0]
	ldr r0, _0800AF84 @ =0x03001ED8
	str r1, [r0]
	ldr r0, _0800AF88 @ =0x03001E30
	str r1, [r0]
	ldr r0, _0800AF8C @ =0x03001EBC
	str r1, [r0]
	movs r0, #0
	bl sub_08008B60
	pop {r0}
	bx r0
	.align 2, 0
_0800AF74: .4byte 0x03001EB4
_0800AF78: .4byte 0x03001EB0
_0800AF7C: .4byte 0x03001E38
_0800AF80: .4byte 0x03001EB8
_0800AF84: .4byte 0x03001ED8
_0800AF88: .4byte 0x03001E30
_0800AF8C: .4byte 0x03001EBC
	thumb_func_end sub_0800AF48

	thumb_func_start sub_0800AF90
sub_0800AF90: @ 0x0800AF90
	push {lr}
	ldr r0, _0800AFCC @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800AFAC
	ldr r0, _0800AFD0 @ =0x03001EB4
	ldr r0, [r0]
	subs r0, #2
	cmp r0, #1
	bhi _0800AFAC
	bl sub_08008FF4
_0800AFAC:
	ldr r1, _0800AFD4 @ =0x03001E3C
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r3, _0800AFD8 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _0800AFDC @ =0x03007FF8
	ldrh r0, [r2]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2]
	strh r1, [r3]
	pop {r0}
	bx r0
	.align 2, 0
_0800AFCC: .4byte 0x03001EB0
_0800AFD0: .4byte 0x03001EB4
_0800AFD4: .4byte 0x03001E3C
_0800AFD8: .4byte 0x04000208
_0800AFDC: .4byte 0x03007FF8
	thumb_func_end sub_0800AF90

	thumb_func_start sub_0800AFE0
sub_0800AFE0: @ 0x0800AFE0
	bx lr
	.align 2, 0
	thumb_func_end sub_0800AFE0

	thumb_func_start sub_0800AFE4
sub_0800AFE4: @ 0x0800AFE4
	bx lr
	.align 2, 0
	thumb_func_end sub_0800AFE4

	thumb_func_start sub_0800AFE8
sub_0800AFE8: @ 0x0800AFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sl, r0
	movs r2, #3
	mov sb, r2
	movs r6, #0
	movs r5, #0
	str r6, [sp, #4]
	ldr r1, _0800B048 @ =0x03001E30
	adds r4, r6, #0
	movs r7, #0
	ldr r0, _0800B04C @ =0x03001EE0
	str r7, [r0]
	ldr r0, _0800B050 @ =0x03001EB4
	str r7, [r0]
	ldr r0, _0800B054 @ =0x03001EB0
	str r7, [r0]
	ldr r0, _0800B058 @ =0x03001E38
	str r7, [r0]
	ldr r0, _0800B05C @ =0x03001EB8
	strb r7, [r0]
	str r7, [r1]
	ldr r0, _0800B060 @ =0x03001ED8
	str r7, [r0]
	ldr r1, _0800B064 @ =0x03001E3C
	movs r0, #1
	str r0, [r1]
	ldr r6, _0800B068 @ =0x03001EC5
_0800B02A:
	ldr r0, _0800B054 @ =0x03001EB0
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r1, r0
	subs r0, #0x80
	cmp r1, r0
	bne _0800B042
	ldr r0, _0800B050 @ =0x03001EB4
	ldr r0, [r0]
	cmp r0, #3
	bls _0800B06C
_0800B042:
	bl sub_08043C64
	b _0800B074
	.align 2, 0
_0800B048: .4byte 0x03001E30
_0800B04C: .4byte 0x03001EE0
_0800B050: .4byte 0x03001EB4
_0800B054: .4byte 0x03001EB0
_0800B058: .4byte 0x03001E38
_0800B05C: .4byte 0x03001EB8
_0800B060: .4byte 0x03001ED8
_0800B064: .4byte 0x03001E3C
_0800B068: .4byte 0x03001EC5
_0800B06C:
	movs r0, #1
	movs r1, #0x80
	bl sub_08043C48
_0800B074:
	ldr r1, _0800B0AC @ =0x03001E3C
	movs r0, #1
	str r0, [r1]
	bl sub_0800B484
	bl sub_0800AED4
	ldr r0, _0800B0B0 @ =0x03001E40
	ldrh r0, [r0]
	bl sub_0800B540
	cmp r0, #0
	beq _0800B090
	b _0800B23A
_0800B090:
	movs r0, #1
	mov r8, r0
	ldr r0, _0800B0B4 @ =0x03001EB4
	ldr r1, [r0]
	adds r2, r0, #0
	cmp r1, #5
	bls _0800B0A0
	b _0800B1F4
_0800B0A0:
	lsls r0, r1, #2
	ldr r1, _0800B0B8 @ =_0800B0BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B0AC: .4byte 0x03001E3C
_0800B0B0: .4byte 0x03001E40
_0800B0B4: .4byte 0x03001EB4
_0800B0B8: .4byte _0800B0BC
_0800B0BC: @ jump table
	.4byte _0800B0D4 @ case 0
	.4byte _0800B0DA @ case 1
	.4byte _0800B114 @ case 2
	.4byte _0800B136 @ case 3
	.4byte _0800B1A4 @ case 4
	.4byte _0800B1D8 @ case 5
_0800B0D4:
	ldr r1, _0800B100 @ =0x03001E38
	movs r0, #0
	str r0, [r1]
_0800B0DA:
	ldr r1, _0800B104 @ =0x030009D0
	ldr r0, _0800B108 @ =0x03001EF1
	str r0, [r1]
	ldr r0, _0800B100 @ =0x03001E38
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08008B60
	movs r7, #0
	ldr r1, _0800B10C @ =0x03001EB4
	ldr r0, [r1]
	cmp r0, #0
	bne _0800B110
	movs r0, #3
	b _0800B1F2
	.align 2, 0
_0800B100: .4byte 0x03001E38
_0800B104: .4byte 0x030009D0
_0800B108: .4byte 0x03001EF1
_0800B10C: .4byte 0x03001EB4
_0800B110:
	movs r0, #2
	b _0800B1F2
_0800B114:
	ldr r0, _0800B194 @ =0x03001EB0
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B132
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800B12E
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_0800B12E:
	movs r0, #3
	str r0, [r2]
_0800B132:
	bl sub_08008C44
_0800B136:
	ldr r1, _0800B194 @ =0x03001EB0
	ldr r2, [r1]
	movs r0, #0x20
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0800B156
	movs r0, #0x80
	ands r2, r0
	cmp r2, #0
	beq _0800B150
	cmp r5, sb
	bgt _0800B156
_0800B150:
	ldr r1, _0800B198 @ =0x03001EB4
	movs r0, #4
	str r0, [r1]
_0800B156:
	mov r2, r8
	cmp r2, #0
	beq _0800B168
	ldr r0, [r3]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B168
	movs r7, #1
_0800B168:
	ldr r4, _0800B19C @ =0x03001E50
	adds r0, r4, #0
	bl sub_08008CB0
	ldr r1, _0800B194 @ =0x03001EB0
	str r0, [r1]
	bl sub_08008C44
	ldrb r0, [r4, #5]
	cmp r5, r0
	beq _0800B184
	ldrb r5, [r4, #5]
	movs r0, #0
	str r0, [sp, #4]
_0800B184:
	ldr r1, _0800B1A0 @ =0x08048018
	mov r2, sl
	adds r0, r5, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	b _0800B1F4
	.align 2, 0
_0800B194: .4byte 0x03001EB0
_0800B198: .4byte 0x03001EB4
_0800B19C: .4byte 0x03001E50
_0800B1A0: .4byte 0x08048018
_0800B1A4:
	bl sub_08008C60
	cmp r5, sb
	beq _0800B25C
	ldr r1, _0800B1C8 @ =0x030009D0
	ldr r0, _0800B1CC @ =0x03001EF1
	str r0, [r1]
	ldr r0, _0800B1D0 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	adds r1, r4, #0
	bl sub_08009184
	ldr r1, _0800B1D4 @ =0x03001EB4
	movs r0, #5
	b _0800B1F2
	.align 2, 0
_0800B1C8: .4byte 0x030009D0
_0800B1CC: .4byte 0x03001EF1
_0800B1D0: .4byte 0x03001EB0
_0800B1D4: .4byte 0x03001EB4
_0800B1D8:
	add r0, sp, #4
	bl sub_08009234
	cmp r0, #0
	beq _0800B1F4
	ldr r2, _0800B240 @ =0x03001E38
	ldr r1, _0800B244 @ =0x03001EB0
	ldr r0, [r1]
	str r0, [r2]
	movs r0, #0
	str r0, [r1]
	ldr r1, _0800B248 @ =0x03001EB4
	movs r0, #1
_0800B1F2:
	str r0, [r1]
_0800B1F4:
	ldr r1, [sp, #4]
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	mov r3, sb
	bl sub_0800B48C
	ldr r2, _0800B24C @ =0x03001EB8
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800B22A
	ldr r0, _0800B244 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B22A
	ldr r1, _0800B250 @ =0x03001E30
	ldr r0, _0800B254 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	str r0, [r1]
	movs r0, #1
	strb r0, [r2]
_0800B22A:
	ldr r0, _0800B258 @ =0x03001EC0
	movs r1, #3
_0800B22E:
	subs r1, #1
	cmp r1, #0
	bge _0800B22E
	adds r1, r7, #0
	bl sub_08008DE0
_0800B23A:
	bl sub_0800B488
	b _0800B02A
	.align 2, 0
_0800B240: .4byte 0x03001E38
_0800B244: .4byte 0x03001EB0
_0800B248: .4byte 0x03001EB4
_0800B24C: .4byte 0x03001EB8
_0800B250: .4byte 0x03001E30
_0800B254: .4byte 0x04000128
_0800B258: .4byte 0x03001EC0
_0800B25C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800AFE8

	thumb_func_start sub_0800B26C
sub_0800B26C: @ 0x0800B26C
	push {r4, lr}
	sub sp, #8
	ldr r1, _0800B330 @ =0x03001EDC
	movs r4, #0
	str r4, [r1]
	ldr r0, _0800B334 @ =0x0203C000
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0800B282
	movs r0, #1
	str r0, [r1]
_0800B282:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800B28E
	movs r0, #2
	bl sub_08043C5C
_0800B28E:
	ldr r0, _0800B338 @ =0x040000D4
	ldr r1, _0800B33C @ =0x08046188
	str r1, [r0]
	ldr r1, _0800B340 @ =0x030009D0
	str r1, [r0, #4]
	ldr r1, _0800B344 @ =0x8400000D
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B348 @ =sub_08000108
	str r1, [r0]
	ldr r2, _0800B34C @ =0x03001090
	str r2, [r0, #4]
	ldr r1, _0800B350 @ =0x84000064
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	ldr r1, _0800B354 @ =0x03007FFC
	str r2, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	strh r4, [r1]
	mov r1, sp
	strh r4, [r1]
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800B358 @ =0x8100C000
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r4, [sp, #4]
	add r1, sp, #4
	str r1, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r1, _0800B35C @ =0x85000100
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r3, _0800B360 @ =0x04000200
	movs r0, #1
	strh r0, [r3]
	ldr r0, _0800B364 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _0800B300
	ldr r0, _0800B368 @ =0x080000AC
	ldr r1, _0800B36C @ =0x080461BC
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne _0800B300
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
_0800B300:
	ldr r1, _0800B370 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0800B374 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	bl sub_0800B3EC
	bl sub_0800AFE8
	ldr r0, _0800B330 @ =0x03001EDC
	ldr r0, [r0]
	cmp r0, #0
	bne _0800B328
	movs r0, #0xc2
	bl sub_08043C5C
	ldr r0, _0800B378 @ =0x02000281
	bl sub_0804402C
_0800B328:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B330: .4byte 0x03001EDC
_0800B334: .4byte 0x0203C000
_0800B338: .4byte 0x040000D4
_0800B33C: .4byte 0x08046188
_0800B340: .4byte 0x030009D0
_0800B344: .4byte 0x8400000D
_0800B348: .4byte sub_08000108
_0800B34C: .4byte 0x03001090
_0800B350: .4byte 0x84000064
_0800B354: .4byte 0x03007FFC
_0800B358: .4byte 0x8100C000
_0800B35C: .4byte 0x85000100
_0800B360: .4byte 0x04000200
_0800B364: .4byte 0x080000B2
_0800B368: .4byte 0x080000AC
_0800B36C: .4byte 0x080461BC
_0800B370: .4byte 0x04000004
_0800B374: .4byte 0x04000208
_0800B378: .4byte 0x02000281
	thumb_func_end sub_0800B26C

	thumb_func_start sub_0800B37C
sub_0800B37C: @ 0x0800B37C
	push {r4, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r0, r1, #1
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r0, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _0800B3A4
	lsls r2, r2, #0xc
_0800B394:
	ldrb r0, [r3]
	orrs r0, r2
	strh r0, [r1]
	adds r3, #1
	adds r1, #2
	ldrb r0, [r3]
	cmp r0, #0
	bne _0800B394
_0800B3A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800B37C

	thumb_func_start sub_0800B3AC
sub_0800B3AC: @ 0x0800B3AC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0xc
	lsls r0, r1, #1
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r0, r5
	movs r0, #8
	subs r0, r0, r2
	lsls r0, r0, #2
	lsls r4, r0
	cmp r2, #0
	beq _0800B3E6
_0800B3CC:
	lsrs r0, r4, #0x1c
	cmp r0, #9
	bhi _0800B3D6
	adds r0, #0x30
	b _0800B3D8
_0800B3D6:
	adds r0, #0x37
_0800B3D8:
	orrs r0, r3
	strh r0, [r1]
	lsls r4, r4, #4
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _0800B3CC
_0800B3E6:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800B3AC

	thumb_func_start sub_0800B3EC
sub_0800B3EC: @ 0x0800B3EC
	push {lr}
	ldr r0, _0800B450 @ =0x0203C000
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0800B406
	ldr r1, _0800B454 @ =0x040000D4
	ldr r0, _0800B458 @ =0x02001FE0
	str r0, [r1]
	ldr r0, _0800B45C @ =0x0203FFE0
	str r0, [r1, #4]
	ldr r0, _0800B460 @ =0x84000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0800B406:
	ldr r0, _0800B454 @ =0x040000D4
	ldr r3, _0800B464 @ =0x080463C4
	str r3, [r0]
	ldr r1, _0800B468 @ =0x06008000
	str r1, [r0, #4]
	ldr r2, _0800B46C @ =0x84000700
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [r0]
	ldr r1, _0800B470 @ =0x06010000
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	ldr r3, _0800B474 @ =0x080461C4
	str r3, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _0800B478 @ =0x84000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	str r3, [r0]
	ldr r1, _0800B47C @ =0x05000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _0800B480 @ =0x04000008
	movs r0, #8
	strh r0, [r1]
	subs r1, #8
	movs r2, #0x88
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800B450: .4byte 0x0203C000
_0800B454: .4byte 0x040000D4
_0800B458: .4byte 0x02001FE0
_0800B45C: .4byte 0x0203FFE0
_0800B460: .4byte 0x84000004
_0800B464: .4byte 0x080463C4
_0800B468: .4byte 0x06008000
_0800B46C: .4byte 0x84000700
_0800B470: .4byte 0x06010000
_0800B474: .4byte 0x080461C4
_0800B478: .4byte 0x84000080
_0800B47C: .4byte 0x05000200
_0800B480: .4byte 0x04000008
	thumb_func_end sub_0800B3EC

	thumb_func_start sub_0800B484
sub_0800B484: @ 0x0800B484
	bx lr
	.align 2, 0
	thumb_func_end sub_0800B484

	thumb_func_start sub_0800B488
sub_0800B488: @ 0x0800B488
	bx lr
	.align 2, 0
	thumb_func_end sub_0800B488

	thumb_func_start sub_0800B48C
sub_0800B48C: @ 0x0800B48C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x18]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r0, _0800B4DC @ =0x08047FC4
	ldr r1, _0800B4E0 @ =0x00000207
	movs r2, #3
	bl sub_0800B37C
	lsls r4, r4, #0xf
	lsls r5, r5, #2
	adds r4, r4, r5
	ldr r1, _0800B4E4 @ =0x00000209
	adds r0, r4, #0
	movs r2, #8
	movs r3, #3
	bl sub_0800B3AC
	ldr r0, _0800B4E8 @ =0x03001EB0
	ldr r0, [r0]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800B4F4
	ldrb r0, [r7]
	ldr r2, _0800B4EC @ =0x08047FC8
	cmp r0, r8
	beq _0800B4F6
	cmp r6, #0
	beq _0800B4F6
	ldr r2, _0800B4F0 @ =0x08047FD8
	b _0800B4F6
	.align 2, 0
_0800B4DC: .4byte 0x08047FC4
_0800B4E0: .4byte 0x00000207
_0800B4E4: .4byte 0x00000209
_0800B4E8: .4byte 0x03001EB0
_0800B4EC: .4byte 0x08047FC8
_0800B4F0: .4byte 0x08047FD8
_0800B4F4:
	ldr r2, _0800B508 @ =0x08047FE8
_0800B4F6:
	ldr r0, _0800B50C @ =0x03001EB0
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0800B514
	ldr r2, _0800B510 @ =0x08047FF8
	b _0800B520
	.align 2, 0
_0800B508: .4byte 0x08047FE8
_0800B50C: .4byte 0x03001EB0
_0800B510: .4byte 0x08047FF8
_0800B514:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	beq _0800B520
	ldr r2, _0800B534 @ =0x08048008
_0800B520:
	ldr r1, _0800B538 @ =0x00000247
	adds r0, r2, #0
	movs r2, #1
	bl sub_0800B37C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B534: .4byte 0x08048008
_0800B538: .4byte 0x00000247
	thumb_func_end sub_0800B48C

	thumb_func_start sub_0800B53C
sub_0800B53C: @ 0x0800B53C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800B53C

	thumb_func_start sub_0800B540
sub_0800B540: @ 0x0800B540
	movs r0, #0
	bx lr
	thumb_func_end sub_0800B540

	thumb_func_start sub_0800B544
sub_0800B544: @ 0x0800B544
	push {lr}
	movs r0, #1
	bl sub_080104AC
	ldr r1, _0800B558 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800B558: .4byte 0x0300149C
	thumb_func_end sub_0800B544

	thumb_func_start sub_0800B55C
sub_0800B55C: @ 0x0800B55C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r7, _0800B578 @ =0x0203A000
	ldr r6, [r7]
	adds r1, r6, #0
	ldr r0, _0800B57C @ =0x02031E90
	ldrh r2, [r0]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0800B580
	subs r1, r6, #1
	b _0800B58A
	.align 2, 0
_0800B578: .4byte 0x0203A000
_0800B57C: .4byte 0x02031E90
_0800B580:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800B58A
	adds r1, r6, #1
_0800B58A:
	cmp r1, #0
	bge _0800B592
	movs r1, #0xf
	b _0800B598
_0800B592:
	cmp r1, #0xf
	ble _0800B598
	movs r1, #0
_0800B598:
	str r1, [r7]
	cmp r1, #0xf
	bls _0800B5A0
	b _0800B6DE
_0800B5A0:
	lsls r0, r1, #2
	ldr r1, _0800B5AC @ =_0800B5B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800B5AC: .4byte _0800B5B0
_0800B5B0: @ jump table
	.4byte _0800B5F0 @ case 0
	.4byte _0800B608 @ case 1
	.4byte _0800B620 @ case 2
	.4byte _0800B638 @ case 3
	.4byte _0800B6DE @ case 4
	.4byte _0800B6DE @ case 5
	.4byte _0800B6DE @ case 6
	.4byte _0800B6DE @ case 7
	.4byte _0800B6DE @ case 8
	.4byte _0800B6DE @ case 9
	.4byte _0800B6DE @ case 10
	.4byte _0800B6DE @ case 11
	.4byte _0800B650 @ case 12
	.4byte _0800B6DE @ case 13
	.4byte _0800B670 @ case 14
	.4byte _0800B698 @ case 15
_0800B5F0:
	ldr r0, _0800B604 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	movs r0, #0xff
	bl sub_08043C6C
	b _0800B85A
	.align 2, 0
_0800B604: .4byte 0x030014A4
_0800B608:
	ldr r0, _0800B618 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	ldr r1, _0800B61C @ =sub_0800BBCC
	b _0800B65E
	.align 2, 0
_0800B618: .4byte 0x030014A4
_0800B61C: .4byte sub_0800BBCC
_0800B620:
	ldr r0, _0800B630 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	ldr r1, _0800B634 @ =sub_0800BF60
	b _0800B65E
	.align 2, 0
_0800B630: .4byte 0x030014A4
_0800B634: .4byte sub_0800BF60
_0800B638:
	ldr r0, _0800B648 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	ldr r1, _0800B64C @ =sub_0800C214
	b _0800B65E
	.align 2, 0
_0800B648: .4byte 0x030014A4
_0800B64C: .4byte sub_0800C214
_0800B650:
	ldr r0, _0800B668 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	ldr r1, _0800B66C @ =sub_0800C914
_0800B65E:
	movs r0, #6
	bl sub_0800356C
	b _0800B85A
	.align 2, 0
_0800B668: .4byte 0x030014A4
_0800B66C: .4byte sub_0800C914
_0800B670:
	ldr r0, _0800B684 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B688
	movs r0, #0
	bl sub_08006C70
	b _0800B6DE
	.align 2, 0
_0800B684: .4byte 0x030014A4
_0800B688:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	movs r0, #8
	bl sub_08006C70
	b _0800B6DE
_0800B698:
	ldr r0, _0800B6C8 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B6D0
	movs r0, #0
	bl sub_08006F34
	ldr r1, _0800B6CC @ =0x0000F3FF
	movs r3, #0x90
	lsls r3, r3, #8
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r2, #0
	bl sub_08000DE4
	b _0800B6DE
	.align 2, 0
_0800B6C8: .4byte 0x030014A4
_0800B6CC: .4byte 0x0000F3FF
_0800B6D0:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B6DE
	movs r0, #1
	bl sub_08006F34
_0800B6DE:
	ldr r5, _0800B864 @ =0x02031E40
	ldr r1, _0800B868 @ =0x08048038
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08006A78
	ldr r1, _0800B86C @ =0x08048048
	ldr r2, _0800B870 @ =0x082052AC
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800B874 @ =0x08048058
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #3
	bl sub_08006A78
	ldr r1, _0800B878 @ =0x08048068
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800B87C @ =0x08048078
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #5
	bl sub_08006A78
	ldr r4, _0800B880 @ =0x0804808C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #6
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #7
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #8
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #9
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xb
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xc
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xd
	bl sub_08006A78
	ldr r1, _0800B884 @ =0x08048090
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xe
	bl sub_08006A78
	ldr r1, _0800B888 @ =0x080480A8
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xf
	bl sub_08006A78
	ldr r4, _0800B88C @ =0x080480C0
	bl sub_08006C84
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08006A78
	ldr r4, _0800B890 @ =0x080480D4
	bl sub_08006F38
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x11
	bl sub_08006A78
	ldr r0, [r7]
	cmp r6, r0
	beq _0800B842
	ldr r1, _0800B894 @ =0x080480E0
	adds r0, r5, #0
	bl sub_08007F1C
	adds r2, r6, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800B842:
	ldr r1, _0800B898 @ =0x080480E4
	adds r0, r5, #0
	bl sub_08007F1C
	ldr r2, [r7]
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800B85A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B864: .4byte 0x02031E40
_0800B868: .4byte 0x08048038
_0800B86C: .4byte 0x08048048
_0800B870: .4byte 0x082052AC
_0800B874: .4byte 0x08048058
_0800B878: .4byte 0x08048068
_0800B87C: .4byte 0x08048078
_0800B880: .4byte 0x0804808C
_0800B884: .4byte 0x08048090
_0800B888: .4byte 0x080480A8
_0800B88C: .4byte 0x080480C0
_0800B890: .4byte 0x080480D4
_0800B894: .4byte 0x080480E0
_0800B898: .4byte 0x080480E4
	thumb_func_end sub_0800B55C

	thumb_func_start sub_0800B89C
sub_0800B89C: @ 0x0800B89C
	push {lr}
	ldr r1, _0800B8B4 @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800B8B8 @ =sub_0800B55C
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800B8B4: .4byte 0x0000F3FF
_0800B8B8: .4byte sub_0800B55C
	thumb_func_end sub_0800B89C

	thumb_func_start sub_0800B8BC
sub_0800B8BC: @ 0x0800B8BC
	ldr r1, _0800B8C4 @ =0x0203A008
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800B8C4: .4byte 0x0203A008
	thumb_func_end sub_0800B8BC

	thumb_func_start sub_0800B8C8
sub_0800B8C8: @ 0x0800B8C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, sp
	ldr r0, _0800B8F4 @ =0x08048100
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, _0800B8F8 @ =0x08048114
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r7, _0800B8FC @ =0x0203A008
	ldr r6, [r7]
	adds r2, r6, #0
	ldr r1, _0800B900 @ =0x02031E90
	ldrh r3, [r1]
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _0800B904
	subs r2, r6, #1
	b _0800B90E
	.align 2, 0
_0800B8F4: .4byte 0x08048100
_0800B8F8: .4byte 0x08048114
_0800B8FC: .4byte 0x0203A008
_0800B900: .4byte 0x02031E90
_0800B904:
	movs r0, #0x80
	ands r0, r3
	cmp r0, #0
	beq _0800B90E
	adds r2, r6, #1
_0800B90E:
	cmp r2, #0
	bge _0800B916
	movs r2, #0xf
	b _0800B91C
_0800B916:
	cmp r2, #0xf
	ble _0800B91C
	movs r2, #0
_0800B91C:
	str r2, [r7]
	ldr r0, _0800B938 @ =0x030014A4
	ldrh r3, [r0]
	movs r0, #2
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800B940
	ldr r1, _0800B93C @ =sub_0800B89C
	movs r0, #6
	bl sub_0800356C
	b _0800BBA0
	.align 2, 0
_0800B938: .4byte 0x030014A4
_0800B93C: .4byte sub_0800B89C
_0800B940:
	adds r0, r2, #2
	cmp r0, #3
	beq _0800B980
	cmp r0, #3
	bgt _0800B950
	cmp r0, #2
	beq _0800B95A
	b _0800BA14
_0800B950:
	cmp r0, #4
	beq _0800B9B2
	cmp r0, #5
	beq _0800B9E4
	b _0800BA14
_0800B95A:
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0800BA14
	ldr r0, _0800B97C @ =0x020345B0
	str r4, [r0]
	movs r0, #0
	bl sub_08014620
	movs r0, #1
	movs r1, #1
	bl sub_08003908
	bl sub_0800B544
	b _0800BA14
	.align 2, 0
_0800B97C: .4byte 0x020345B0
_0800B980:
	ldrh r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B99A
	bl sub_08014820
	cmp r0, #0
	ble _0800BA14
	subs r0, #1
	bl sub_08014814
	b _0800BA14
_0800B99A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800BA14
	bl sub_08014820
	cmp r0, #0x10
	bgt _0800BA14
	adds r0, #1
	bl sub_08014814
	b _0800BA14
_0800B9B2:
	ldrh r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B9CC
	bl sub_08014838
	cmp r0, #0
	ble _0800BA14
	subs r0, #1
	bl sub_0801482C
	b _0800BA14
_0800B9CC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800BA14
	bl sub_08014838
	cmp r0, #1
	bgt _0800BA14
	adds r0, #1
	bl sub_0801482C
	b _0800BA14
_0800B9E4:
	ldrh r1, [r1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800B9FE
	bl sub_08014850
	cmp r0, #0
	ble _0800BA14
	subs r0, #1
	bl sub_08014844
	b _0800BA14
_0800B9FE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800BA14
	bl sub_08014850
	cmp r0, #0
	bgt _0800BA14
	adds r0, #1
	bl sub_08014844
_0800BA14:
	ldr r5, _0800BBA8 @ =0x02031E40
	ldr r1, _0800BBAC @ =0x0804811C
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08006A78
	ldr r1, _0800BBB0 @ =0x08048128
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	ldr r4, _0800BBB4 @ =0x08048130
	bl sub_08014820
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #3
	bl sub_08006A78
	ldr r4, _0800BBB8 @ =0x08048144
	bl sub_08014838
	lsls r0, r0, #2
	add r0, sp
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #4
	bl sub_08006A78
	ldr r4, _0800BBBC @ =0x08048154
	bl sub_08014850
	lsls r0, r0, #2
	add r1, sp, #0xc
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #5
	bl sub_08006A78
	ldr r4, _0800BBC0 @ =0x0804808C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #6
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #7
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #8
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #9
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xb
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xc
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xd
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xe
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xf
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x11
	bl sub_08006A78
	ldr r0, [r7]
	cmp r6, r0
	beq _0800BB88
	ldr r1, _0800BBC4 @ =0x080480E0
	adds r0, r5, #0
	bl sub_08007F1C
	adds r2, r6, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800BB88:
	ldr r1, _0800BBC8 @ =0x080480E4
	adds r0, r5, #0
	bl sub_08007F1C
	ldr r2, [r7]
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800BBA0:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BBA8: .4byte 0x02031E40
_0800BBAC: .4byte 0x0804811C
_0800BBB0: .4byte 0x08048128
_0800BBB4: .4byte 0x08048130
_0800BBB8: .4byte 0x08048144
_0800BBBC: .4byte 0x08048154
_0800BBC0: .4byte 0x0804808C
_0800BBC4: .4byte 0x080480E0
_0800BBC8: .4byte 0x080480E4
	thumb_func_end sub_0800B8C8

	thumb_func_start sub_0800BBCC
sub_0800BBCC: @ 0x0800BBCC
	push {lr}
	ldr r1, _0800BBE4 @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800BBE8 @ =sub_0800B8C8
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800BBE4: .4byte 0x0000F3FF
_0800BBE8: .4byte sub_0800B8C8
	thumb_func_end sub_0800BBCC

	thumb_func_start sub_0800BBEC
sub_0800BBEC: @ 0x0800BBEC
	ldr r1, _0800BBF4 @ =0x0203A3B8
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800BBF4: .4byte 0x0203A3B8
	thumb_func_end sub_0800BBEC

	thumb_func_start sub_0800BBF8
sub_0800BBF8: @ 0x0800BBF8
	push {r4, r5, r6, lr}
	ldr r6, _0800BC10 @ =0x0203A3B8
	ldr r5, [r6]
	adds r3, r5, #0
	ldr r0, _0800BC14 @ =0x02031E90
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800BC18
	subs r3, r5, #1
	b _0800BC22
	.align 2, 0
_0800BC10: .4byte 0x0203A3B8
_0800BC14: .4byte 0x02031E90
_0800BC18:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800BC22
	adds r3, r5, #1
_0800BC22:
	cmp r3, #0
	bge _0800BC2A
	movs r3, #0xf
	b _0800BC30
_0800BC2A:
	cmp r3, #0xf
	ble _0800BC30
	movs r3, #0
_0800BC30:
	str r3, [r6]
	ldr r2, _0800BC48 @ =0x030014A4
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BC50
	ldr r1, _0800BC4C @ =sub_0800B89C
	movs r0, #6
	bl sub_0800356C
	b _0800BF08
	.align 2, 0
_0800BC48: .4byte 0x030014A4
_0800BC4C: .4byte sub_0800B89C
_0800BC50:
	cmp r3, #0xf
	bls _0800BC56
	b _0800BDA0
_0800BC56:
	lsls r0, r3, #2
	ldr r1, _0800BC60 @ =_0800BC64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BC60: .4byte _0800BC64
_0800BC64: @ jump table
	.4byte _0800BCA4 @ case 0
	.4byte _0800BCBC @ case 1
	.4byte _0800BCCA @ case 2
	.4byte _0800BCD8 @ case 3
	.4byte _0800BCE6 @ case 4
	.4byte _0800BCF4 @ case 5
	.4byte _0800BD02 @ case 6
	.4byte _0800BD10 @ case 7
	.4byte _0800BD1E @ case 8
	.4byte _0800BD2C @ case 9
	.4byte _0800BD3A @ case 10
	.4byte _0800BD48 @ case 11
	.4byte _0800BD56 @ case 12
	.4byte _0800BD64 @ case 13
	.4byte _0800BD72 @ case 14
	.4byte _0800BD8A @ case 15
_0800BCA4:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	ldr r1, _0800BCB8 @ =0x020345B0
	movs r0, #0
	str r0, [r1, #0x44]
	movs r0, #0xa
	b _0800BD7E
	.align 2, 0
_0800BCB8: .4byte 0x020345B0
_0800BCBC:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0xb
	b _0800BD7E
_0800BCCA:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0xc
	b _0800BD7E
_0800BCD8:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0xd
	b _0800BD7E
_0800BCE6:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0xe
	b _0800BD7E
_0800BCF4:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0xf
	b _0800BD7E
_0800BD02:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x10
	b _0800BD7E
_0800BD10:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x11
	b _0800BD7E
_0800BD1E:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x12
	b _0800BD7E
_0800BD2C:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x13
	b _0800BD7E
_0800BD3A:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x14
	b _0800BD7E
_0800BD48:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x15
	b _0800BD7E
_0800BD56:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x16
	b _0800BD7E
_0800BD64:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x17
	b _0800BD7E
_0800BD72:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x18
_0800BD7E:
	movs r1, #1
	bl sub_08003908
	bl sub_0800B544
	b _0800BDA0
_0800BD8A:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800BDA0
	movs r0, #0x23
	movs r1, #1
	bl sub_08003908
	bl sub_0800B544
_0800BDA0:
	ldr r4, _0800BF10 @ =0x02031E40
	ldr r1, _0800BF14 @ =0x08048164
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08006A78
	ldr r1, _0800BF18 @ =0x08048170
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800BF1C @ =0x08048178
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #3
	bl sub_08006A78
	ldr r1, _0800BF20 @ =0x08048184
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800BF24 @ =0x08048190
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #5
	bl sub_08006A78
	ldr r1, _0800BF28 @ =0x080481A4
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #6
	bl sub_08006A78
	ldr r1, _0800BF2C @ =0x080481B8
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #7
	bl sub_08006A78
	ldr r1, _0800BF30 @ =0x080481C8
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #8
	bl sub_08006A78
	ldr r1, _0800BF34 @ =0x080481D0
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #9
	bl sub_08006A78
	ldr r1, _0800BF38 @ =0x080481DC
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08006A78
	ldr r1, _0800BF3C @ =0x080481E8
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xb
	bl sub_08006A78
	ldr r1, _0800BF40 @ =0x080481F4
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xc
	bl sub_08006A78
	ldr r1, _0800BF44 @ =0x08048200
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xd
	bl sub_08006A78
	ldr r1, _0800BF48 @ =0x08048208
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xe
	bl sub_08006A78
	ldr r1, _0800BF4C @ =0x08048210
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0xf
	bl sub_08006A78
	ldr r1, _0800BF50 @ =0x08048218
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08006A78
	ldr r1, _0800BF54 @ =0x08048224
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0x11
	bl sub_08006A78
	ldr r0, [r6]
	cmp r5, r0
	beq _0800BEF0
	ldr r1, _0800BF58 @ =0x080480E0
	adds r0, r4, #0
	bl sub_08007F1C
	adds r2, r5, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_08006A78
_0800BEF0:
	ldr r1, _0800BF5C @ =0x080480E4
	adds r0, r4, #0
	bl sub_08007F1C
	ldr r2, [r6]
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #1
	bl sub_08006A78
_0800BF08:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800BF10: .4byte 0x02031E40
_0800BF14: .4byte 0x08048164
_0800BF18: .4byte 0x08048170
_0800BF1C: .4byte 0x08048178
_0800BF20: .4byte 0x08048184
_0800BF24: .4byte 0x08048190
_0800BF28: .4byte 0x080481A4
_0800BF2C: .4byte 0x080481B8
_0800BF30: .4byte 0x080481C8
_0800BF34: .4byte 0x080481D0
_0800BF38: .4byte 0x080481DC
_0800BF3C: .4byte 0x080481E8
_0800BF40: .4byte 0x080481F4
_0800BF44: .4byte 0x08048200
_0800BF48: .4byte 0x08048208
_0800BF4C: .4byte 0x08048210
_0800BF50: .4byte 0x08048218
_0800BF54: .4byte 0x08048224
_0800BF58: .4byte 0x080480E0
_0800BF5C: .4byte 0x080480E4
	thumb_func_end sub_0800BBF8

	thumb_func_start sub_0800BF60
sub_0800BF60: @ 0x0800BF60
	push {lr}
	ldr r1, _0800BF78 @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800BF7C @ =sub_0800BBF8
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800BF78: .4byte 0x0000F3FF
_0800BF7C: .4byte sub_0800BBF8
	thumb_func_end sub_0800BF60

	thumb_func_start sub_0800BF80
sub_0800BF80: @ 0x0800BF80
	ldr r1, _0800BF88 @ =0x0203A00C
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800BF88: .4byte 0x0203A00C
	thumb_func_end sub_0800BF80

	thumb_func_start sub_0800BF8C
sub_0800BF8C: @ 0x0800BF8C
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800BFA4 @ =0x0203A00C
	ldr r6, [r7]
	adds r3, r6, #0
	ldr r0, _0800BFA8 @ =0x02031E90
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800BFAC
	subs r3, r6, #1
	b _0800BFB6
	.align 2, 0
_0800BFA4: .4byte 0x0203A00C
_0800BFA8: .4byte 0x02031E90
_0800BFAC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800BFB6
	adds r3, r6, #1
_0800BFB6:
	cmp r3, #0
	bge _0800BFBE
	movs r3, #0xf
	b _0800BFC4
_0800BFBE:
	cmp r3, #0xf
	ble _0800BFC4
	movs r3, #0
_0800BFC4:
	str r3, [r7]
	ldr r2, _0800BFDC @ =0x030014A4
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800BFE4
	ldr r1, _0800BFE0 @ =sub_0800B89C
	movs r0, #6
	bl sub_0800356C
	b _0800C1E0
	.align 2, 0
_0800BFDC: .4byte 0x030014A4
_0800BFE0: .4byte sub_0800B89C
_0800BFE4:
	cmp r3, #5
	bhi _0800C076
	lsls r0, r3, #2
	ldr r1, _0800BFF4 @ =_0800BFF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800BFF4: .4byte _0800BFF8
_0800BFF8: @ jump table
	.4byte _0800C010 @ case 0
	.4byte _0800C01E @ case 1
	.4byte _0800C02C @ case 2
	.4byte _0800C03A @ case 3
	.4byte _0800C048 @ case 4
	.4byte _0800C060 @ case 5
_0800C010:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C076
	movs r0, #0x19
	b _0800C054
_0800C01E:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C076
	movs r0, #0x1a
	b _0800C054
_0800C02C:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C076
	movs r0, #0x1b
	b _0800C054
_0800C03A:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C076
	movs r0, #0x1c
	b _0800C054
_0800C048:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C076
	movs r0, #0x1d
_0800C054:
	movs r1, #1
	bl sub_08003908
	bl sub_0800B544
	b _0800C076
_0800C060:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C076
	movs r0, #0x1e
	movs r1, #1
	bl sub_08003908
	bl sub_0800B544
_0800C076:
	ldr r5, _0800C1E8 @ =0x02031E40
	ldr r1, _0800C1EC @ =0x0804822C
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08006A78
	ldr r1, _0800C1F0 @ =0x08048238
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800C1F4 @ =0x08048248
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #3
	bl sub_08006A78
	ldr r1, _0800C1F8 @ =0x08048258
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800C1FC @ =0x0804826C
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #5
	bl sub_08006A78
	ldr r1, _0800C200 @ =0x0804827C
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #6
	bl sub_08006A78
	ldr r1, _0800C204 @ =0x0804828C
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #7
	bl sub_08006A78
	ldr r4, _0800C208 @ =0x0804808C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #8
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #9
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xb
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xc
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xd
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xe
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xf
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x11
	bl sub_08006A78
	ldr r0, [r7]
	cmp r6, r0
	beq _0800C1C8
	ldr r1, _0800C20C @ =0x080480E0
	adds r0, r5, #0
	bl sub_08007F1C
	adds r2, r6, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800C1C8:
	ldr r1, _0800C210 @ =0x080480E4
	adds r0, r5, #0
	bl sub_08007F1C
	ldr r2, [r7]
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800C1E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C1E8: .4byte 0x02031E40
_0800C1EC: .4byte 0x0804822C
_0800C1F0: .4byte 0x08048238
_0800C1F4: .4byte 0x08048248
_0800C1F8: .4byte 0x08048258
_0800C1FC: .4byte 0x0804826C
_0800C200: .4byte 0x0804827C
_0800C204: .4byte 0x0804828C
_0800C208: .4byte 0x0804808C
_0800C20C: .4byte 0x080480E0
_0800C210: .4byte 0x080480E4
	thumb_func_end sub_0800BF8C

	thumb_func_start sub_0800C214
sub_0800C214: @ 0x0800C214
	push {lr}
	ldr r1, _0800C22C @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800C230 @ =sub_0800BF8C
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800C22C: .4byte 0x0000F3FF
_0800C230: .4byte sub_0800BF8C
	thumb_func_end sub_0800C214

	thumb_func_start sub_0800C234
sub_0800C234: @ 0x0800C234
	ldr r1, _0800C23C @ =0x0203A010
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0800C23C: .4byte 0x0203A010
	thumb_func_end sub_0800C234

	thumb_func_start sub_0800C240
sub_0800C240: @ 0x0800C240
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800C258 @ =0x0203A010
	ldr r6, [r7]
	adds r3, r6, #0
	ldr r0, _0800C25C @ =0x02031E90
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800C260
	subs r3, r6, #1
	b _0800C26A
	.align 2, 0
_0800C258: .4byte 0x0203A010
_0800C25C: .4byte 0x02031E90
_0800C260:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800C26A
	adds r3, r6, #1
_0800C26A:
	cmp r3, #0
	bge _0800C272
	movs r3, #0xf
	b _0800C278
_0800C272:
	cmp r3, #0xf
	ble _0800C278
	movs r3, #0
_0800C278:
	str r3, [r7]
	ldr r2, _0800C290 @ =0x030014A4
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C298
	ldr r1, _0800C294 @ =sub_0800B89C
	movs r0, #6
	bl sub_0800356C
	b _0800C4A8
	.align 2, 0
_0800C290: .4byte 0x030014A4
_0800C294: .4byte sub_0800B89C
_0800C298:
	cmp r3, #6
	bhi _0800C33E
	lsls r0, r3, #2
	ldr r1, _0800C2A8 @ =_0800C2AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C2A8: .4byte _0800C2AC
_0800C2AC: @ jump table
	.4byte _0800C2C8 @ case 0
	.4byte _0800C2D8 @ case 1
	.4byte _0800C2E6 @ case 2
	.4byte _0800C2F4 @ case 3
	.4byte _0800C302 @ case 4
	.4byte _0800C310 @ case 5
	.4byte _0800C328 @ case 6
_0800C2C8:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x30
	movs r1, #0
	b _0800C31E
_0800C2D8:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x2c
	b _0800C31C
_0800C2E6:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x2d
	b _0800C31C
_0800C2F4:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x2e
	b _0800C31C
_0800C302:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x2f
	b _0800C31C
_0800C310:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x2a
_0800C31C:
	movs r1, #1
_0800C31E:
	bl sub_08003908
	bl sub_0800B544
	b _0800C33E
_0800C328:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C33E
	movs r0, #0x2b
	movs r1, #1
	bl sub_08003908
	bl sub_0800B544
_0800C33E:
	ldr r5, _0800C4B0 @ =0x02031E40
	ldr r1, _0800C4B4 @ =0x0804829C
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08006A78
	ldr r1, _0800C4B8 @ =0x080482B0
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800C4BC @ =0x080482C0
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #3
	bl sub_08006A78
	ldr r1, _0800C4C0 @ =0x080482D8
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800C4C4 @ =0x080482EC
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #5
	bl sub_08006A78
	ldr r1, _0800C4C8 @ =0x08048304
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #6
	bl sub_08006A78
	ldr r1, _0800C4CC @ =0x08048318
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #7
	bl sub_08006A78
	ldr r1, _0800C4D0 @ =0x08048330
	adds r0, r5, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #8
	bl sub_08006A78
	ldr r4, _0800C4D4 @ =0x0804808C
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #9
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xb
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xc
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xd
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xe
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xf
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08006A78
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0x11
	bl sub_08006A78
	ldr r0, [r7]
	cmp r6, r0
	beq _0800C490
	ldr r1, _0800C4D8 @ =0x080480E0
	adds r0, r5, #0
	bl sub_08007F1C
	adds r2, r6, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800C490:
	ldr r1, _0800C4DC @ =0x080480E4
	adds r0, r5, #0
	bl sub_08007F1C
	ldr r2, [r7]
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r5, #0
	movs r1, #1
	bl sub_08006A78
_0800C4A8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C4B0: .4byte 0x02031E40
_0800C4B4: .4byte 0x0804829C
_0800C4B8: .4byte 0x080482B0
_0800C4BC: .4byte 0x080482C0
_0800C4C0: .4byte 0x080482D8
_0800C4C4: .4byte 0x080482EC
_0800C4C8: .4byte 0x08048304
_0800C4CC: .4byte 0x08048318
_0800C4D0: .4byte 0x08048330
_0800C4D4: .4byte 0x0804808C
_0800C4D8: .4byte 0x080480E0
_0800C4DC: .4byte 0x080480E4
	thumb_func_end sub_0800C240

	thumb_func_start sub_0800C4E0
sub_0800C4E0: @ 0x0800C4E0
	push {lr}
	ldr r1, _0800C4F8 @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800C4FC @ =sub_0800C240
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800C4F8: .4byte 0x0000F3FF
_0800C4FC: .4byte sub_0800C240
	thumb_func_end sub_0800C4E0

	thumb_func_start sub_0800C500
sub_0800C500: @ 0x0800C500
	ldr r0, _0800C528 @ =0x0203A3C4
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800C52C @ =0x0203A3C0
	str r1, [r0]
	ldr r0, _0800C530 @ =0x0203A760
	str r1, [r0]
	ldr r1, _0800C534 @ =0x0203A3B0
	movs r0, #1
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	ldr r1, _0800C538 @ =0x0203A004
	movs r0, #7
	str r0, [r1]
	bx lr
	.align 2, 0
_0800C528: .4byte 0x0203A3C4
_0800C52C: .4byte 0x0203A3C0
_0800C530: .4byte 0x0203A760
_0800C534: .4byte 0x0203A3B0
_0800C538: .4byte 0x0203A004
	thumb_func_end sub_0800C500

	thumb_func_start sub_0800C53C
sub_0800C53C: @ 0x0800C53C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800C560 @ =0x0203A3C4
	mov sb, r0
	ldr r1, [r0]
	mov r8, r1
	mov r3, r8
	ldr r1, _0800C564 @ =0x02031E90
	ldrh r2, [r1]
	movs r0, #0x40
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _0800C568
	subs r3, #1
	b _0800C574
	.align 2, 0
_0800C560: .4byte 0x0203A3C4
_0800C564: .4byte 0x02031E90
_0800C568:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800C574
	mov r3, r8
	adds r3, #1
_0800C574:
	cmp r3, #0
	bge _0800C57C
	movs r3, #0xf
	b _0800C582
_0800C57C:
	cmp r3, #0xf
	ble _0800C582
	movs r3, #0
_0800C582:
	mov r0, sb
	str r3, [r0]
	ldr r2, _0800C59C @ =0x030014A4
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C5A4
	ldr r1, _0800C5A0 @ =sub_0800B89C
	movs r0, #6
	bl sub_0800356C
	b _0800C8B2
	.align 2, 0
_0800C59C: .4byte 0x030014A4
_0800C5A0: .4byte sub_0800B89C
_0800C5A4:
	cmp r3, #9
	bls _0800C5AA
	b _0800C70A
_0800C5AA:
	lsls r0, r3, #2
	ldr r1, _0800C5B4 @ =_0800C5B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800C5B4: .4byte _0800C5B8
_0800C5B8: @ jump table
	.4byte _0800C5E0 @ case 0
	.4byte _0800C628 @ case 1
	.4byte _0800C678 @ case 2
	.4byte _0800C678 @ case 3
	.4byte _0800C678 @ case 4
	.4byte _0800C678 @ case 5
	.4byte _0800C678 @ case 6
	.4byte _0800C678 @ case 7
	.4byte _0800C6BC @ case 8
	.4byte _0800C6FC @ case 9
_0800C5E0:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C5F8
	ldr r0, _0800C5F4 @ =0x0203A3C0
	ldr r0, [r0]
	bl sub_0800837C
	b _0800C70A
	.align 2, 0
_0800C5F4: .4byte 0x0203A3C0
_0800C5F8:
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C614
	ldr r1, _0800C610 @ =0x0203A3C0
	ldr r0, [r1]
	cmp r0, #0x31
	ble _0800C60C
	b _0800C70A
_0800C60C:
	b _0800C652
	.align 2, 0
_0800C610: .4byte 0x0203A3C0
_0800C614:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800C61E
	b _0800C70A
_0800C61E:
	ldr r1, _0800C624 @ =0x0203A3C0
	b _0800C666
	.align 2, 0
_0800C624: .4byte 0x0203A3C0
_0800C628:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C640
	ldr r0, _0800C63C @ =0x0203A760
	ldr r0, [r0]
	bl sub_08008414
	b _0800C70A
	.align 2, 0
_0800C63C: .4byte 0x0203A760
_0800C640:
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C65C
	ldr r1, _0800C658 @ =0x0203A760
	ldr r0, [r1]
	cmp r0, #0x95
	bgt _0800C70A
_0800C652:
	adds r0, #1
	str r0, [r1]
	b _0800C70A
	.align 2, 0
_0800C658: .4byte 0x0203A760
_0800C65C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800C70A
	ldr r1, _0800C674 @ =0x0203A760
_0800C666:
	ldr r0, [r1]
	cmp r0, #0
	ble _0800C70A
	subs r0, #1
	str r0, [r1]
	b _0800C70A
	.align 2, 0
_0800C674: .4byte 0x0203A760
_0800C678:
	ldrh r1, [r2]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C70A
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0800C70A
	ldrh r2, [r4]
	movs r0, #0x30
	ands r0, r2
	cmp r0, #0
	beq _0800C70A
	movs r1, #0x10
	ands r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsrs r1, r1, #0x1f
	ldr r0, _0800C6B8 @ =0x0203A3B0
	subs r2, r3, #2
	adds r0, r2, r0
	strb r1, [r0]
	adds r0, r5, #0
	lsls r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080084A0
	b _0800C70A
	.align 2, 0
_0800C6B8: .4byte 0x0203A3B0
_0800C6BC:
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C6D8
	ldr r1, _0800C6D4 @ =0x0203A004
	ldr r0, [r1]
	cmp r0, #6
	bgt _0800C6EC
	adds r0, #1
	b _0800C6EA
	.align 2, 0
_0800C6D4: .4byte 0x0203A004
_0800C6D8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800C70A
	ldr r1, _0800C6F8 @ =0x0203A004
	ldr r0, [r1]
	cmp r0, #0
	ble _0800C6EC
	subs r0, #1
_0800C6EA:
	str r0, [r1]
_0800C6EC:
	ldrb r1, [r1]
	adds r0, r1, #0
	bl sub_080084A8
	b _0800C70A
	.align 2, 0
_0800C6F8: .4byte 0x0203A004
_0800C6FC:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C70A
	bl sub_08008464
_0800C70A:
	ldr r7, _0800C8C0 @ =0x02031E40
	ldr r1, _0800C8C4 @ =0x08048344
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl sub_08006A78
	ldr r1, _0800C8C8 @ =0x08048354
	ldr r0, _0800C8CC @ =0x0203A3C0
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800C8D0 @ =0x08048368
	ldr r0, _0800C8D4 @ =0x0203A760
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #3
	bl sub_08006A78
	ldr r5, _0800C8D8 @ =0x0804837C
	ldr r6, _0800C8DC @ =0x0203A3B0
	ldrb r4, [r6]
	bl sub_080084A4
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800C8E0 @ =0x08048398
	ldrb r2, [r6, #1]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #5
	bl sub_08006A78
	ldr r1, _0800C8E4 @ =0x080483A8
	ldrb r2, [r6, #2]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #6
	bl sub_08006A78
	ldr r1, _0800C8E8 @ =0x080483B8
	ldrb r2, [r6, #3]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #7
	bl sub_08006A78
	ldr r1, _0800C8EC @ =0x080483C8
	ldrb r2, [r6, #4]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #8
	bl sub_08006A78
	ldr r1, _0800C8F0 @ =0x080483D8
	ldrb r2, [r6, #5]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #9
	bl sub_08006A78
	ldr r1, _0800C8F4 @ =0x080483E8
	ldr r0, _0800C8F8 @ =0x0203A004
	ldr r2, [r0]
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xa
	bl sub_08006A78
	ldr r1, _0800C8FC @ =0x080483F8
	adds r0, r7, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xb
	bl sub_08006A78
	ldr r4, _0800C900 @ =0x0804840C
	bl sub_0800839C
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xc
	bl sub_08006A78
	ldr r4, _0800C904 @ =0x0804841C
	bl sub_08008434
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xd
	bl sub_08006A78
	ldr r4, _0800C908 @ =0x0804808C
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xe
	bl sub_08006A78
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0xf
	bl sub_08006A78
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0x10
	bl sub_08006A78
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08007F1C
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0x11
	bl sub_08006A78
	mov r1, sb
	ldr r0, [r1]
	cmp r8, r0
	beq _0800C898
	ldr r1, _0800C90C @ =0x080480E0
	adds r0, r7, #0
	bl sub_08007F1C
	mov r2, r8
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r7, #0
	movs r1, #1
	bl sub_08006A78
_0800C898:
	ldr r1, _0800C910 @ =0x080480E4
	adds r0, r7, #0
	bl sub_08007F1C
	mov r0, sb
	ldr r2, [r0]
	adds r2, #2
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r0, r7, #0
	movs r1, #1
	bl sub_08006A78
_0800C8B2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C8C0: .4byte 0x02031E40
_0800C8C4: .4byte 0x08048344
_0800C8C8: .4byte 0x08048354
_0800C8CC: .4byte 0x0203A3C0
_0800C8D0: .4byte 0x08048368
_0800C8D4: .4byte 0x0203A760
_0800C8D8: .4byte 0x0804837C
_0800C8DC: .4byte 0x0203A3B0
_0800C8E0: .4byte 0x08048398
_0800C8E4: .4byte 0x080483A8
_0800C8E8: .4byte 0x080483B8
_0800C8EC: .4byte 0x080483C8
_0800C8F0: .4byte 0x080483D8
_0800C8F4: .4byte 0x080483E8
_0800C8F8: .4byte 0x0203A004
_0800C8FC: .4byte 0x080483F8
_0800C900: .4byte 0x0804840C
_0800C904: .4byte 0x0804841C
_0800C908: .4byte 0x0804808C
_0800C90C: .4byte 0x080480E0
_0800C910: .4byte 0x080480E4
	thumb_func_end sub_0800C53C

	thumb_func_start sub_0800C914
sub_0800C914: @ 0x0800C914
	push {lr}
	ldr r1, _0800C92C @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800C930 @ =sub_0800C53C
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800C92C: .4byte 0x0000F3FF
_0800C930: .4byte sub_0800C53C
	thumb_func_end sub_0800C914

	thumb_func_start sub_0800C934
sub_0800C934: @ 0x0800C934
	push {lr}
	movs r0, #6
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800C934

	thumb_func_start sub_0800C940
sub_0800C940: @ 0x0800C940
	push {lr}
	bl sub_0800C234
	bl sub_0800C500
	ldr r1, _0800C95C @ =sub_0800B89C
	movs r2, #0x80
	lsls r2, r2, #6
	movs r0, #6
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800C95C: .4byte sub_0800B89C
	thumb_func_end sub_0800C940

	thumb_func_start sub_0800C960
sub_0800C960: @ 0x0800C960
	push {r4, r5, lr}
	ldr r2, _0800C994 @ =0x0203A3D4
	ldr r1, _0800C998 @ =0x0203A020
	subs r4, r2, #4
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r5, r1, r0
	movs r3, #0xe2
_0800C970:
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	subs r3, #1
	adds r2, #4
	adds r1, #4
	cmp r3, #0
	bge _0800C970
	adds r2, r4, #0
	adds r1, r5, #0
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800C994: .4byte 0x0203A3D4
_0800C998: .4byte 0x0203A020
	thumb_func_end sub_0800C960

	thumb_func_start sub_0800C99C
sub_0800C99C: @ 0x0800C99C
	push {lr}
	movs r0, #7
	bl sub_080034D4
	cmp r0, #0
	beq _0800C9AE
	movs r0, #7
	bl sub_08003450
_0800C9AE:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800C99C

	thumb_func_start sub_0800C9B4
sub_0800C9B4: @ 0x0800C9B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0800CA00 @ =0x0203A3D0
	movs r6, #0
	mov r8, r6
	movs r5, #0xe3
_0800C9C2:
	ldr r7, _0800CA04 @ =0x0203A3BC
	ldr r0, [r7]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r4]
	mov r0, r8
	strh r0, [r4, #2]
	adds r4, #4
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r6, r6, r1
	subs r5, #1
	cmp r5, #0
	bge _0800C9C2
	ldr r0, [r7]
	subs r1, #0x80
	adds r0, r0, r1
	str r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800CA00: .4byte 0x0203A3D0
_0800CA04: .4byte 0x0203A3BC
	thumb_func_end sub_0800C9B4

	thumb_func_start sub_0800CA08
sub_0800CA08: @ 0x0800CA08
	push {r4, lr}
	sub sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #7
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #0x14
	movs r3, #1
	bl sub_08003D38
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x15
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x80
	lsls r0, r0, #4
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #0
	movs r2, #0x16
	movs r3, #0
	bl sub_08003F8C
	movs r1, #0
	ldr r2, _0800CA7C @ =0x0203A020
	ldr r0, _0800CA80 @ =0x0203A3D0
	movs r3, #0xe3
_0800CA52:
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r2]
	strh r1, [r2, #2]
	adds r2, #4
	adds r0, #4
	subs r3, #1
	cmp r3, #0
	bge _0800CA52
	ldr r0, _0800CA84 @ =0x0203A3BC
	movs r1, #0
	str r1, [r0]
	ldr r1, _0800CA88 @ =sub_0800C9B4
	movs r0, #7
	bl sub_0800356C
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CA7C: .4byte 0x0203A020
_0800CA80: .4byte 0x0203A3D0
_0800CA84: .4byte 0x0203A3BC
_0800CA88: .4byte sub_0800C9B4
	thumb_func_end sub_0800CA08

	thumb_func_start sub_0800CA8C
sub_0800CA8C: @ 0x0800CA8C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800CA8C

	thumb_func_start sub_0800CA90
sub_0800CA90: @ 0x0800CA90
	push {lr}
	bl sub_0800C960
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CA90

	thumb_func_start sub_0800CA9C
sub_0800CA9C: @ 0x0800CA9C
	push {lr}
	bl sub_080008E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _0800CAC0 @ =0x0203A020
	adds r2, r0, r1
	ldr r0, _0800CAC4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800CABC
	ldr r1, _0800CAC8 @ =0x04000014
	ldrh r0, [r2]
	strh r0, [r1]
_0800CABC:
	pop {r0}
	bx r0
	.align 2, 0
_0800CAC0: .4byte 0x0203A020
_0800CAC4: .4byte 0x04000004
_0800CAC8: .4byte 0x04000014
	thumb_func_end sub_0800CA9C

	thumb_func_start sub_0800CACC
sub_0800CACC: @ 0x0800CACC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800CBD8 @ =0x0100C000
	add r0, sp, #0xc
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #0
	bl sub_08000F0C
	movs r0, #3
	movs r1, #0
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800CBDC @ =0x082052B8
	bl sub_08000D40
	movs r0, #0
	bl sub_08001000
	movs r0, #0
	movs r1, #0
	bl sub_0800101C
	movs r0, #0
	bl sub_0800104C
	movs r0, #0
	movs r1, #0
	bl sub_0800105C
	movs r0, #1
	movs r1, #0
	bl sub_0800105C
	movs r0, #2
	movs r1, #0
	bl sub_0800105C
	movs r0, #3
	movs r1, #0
	bl sub_0800105C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001094
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r5, #0
	str r5, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	movs r1, #0xf8
	lsls r1, r1, #7
	movs r0, #0
	bl sub_08001154
	ldr r0, _0800CBE0 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	ldr r0, _0800CBE4 @ =0x0000F3FB
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #4
	movs r6, #0xe8
	lsls r6, r6, #8
	str r6, [sp]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	mov r1, r8
	adds r2, r4, #0
	adds r3, r4, #0
	bl sub_08000DE4
	movs r3, #0x90
	lsls r3, r3, #8
	str r6, [sp]
	movs r0, #0x98
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	mov r1, r8
	adds r2, r4, #0
	bl sub_08000DE4
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800CBD8: .4byte 0x0100C000
_0800CBDC: .4byte 0x082052B8
_0800CBE0: .4byte 0x0000F3FF
_0800CBE4: .4byte 0x0000F3FB
	thumb_func_end sub_0800CACC

	thumb_func_start sub_0800CBE8
sub_0800CBE8: @ 0x0800CBE8
	bx lr
	.align 2, 0
	thumb_func_end sub_0800CBE8

	thumb_func_start sub_0800CBEC
sub_0800CBEC: @ 0x0800CBEC
	push {lr}
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800CBEC

	thumb_func_start sub_0800CBF8
sub_0800CBF8: @ 0x0800CBF8
	push {r4, lr}
	ldr r4, _0800CC18 @ =0x02031E40
	ldr r1, _0800CC1C @ =0x0804842C
	ldr r0, _0800CC20 @ =0x03001910
	ldr r2, [r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0x16
	movs r2, #0x13
	bl sub_08006A78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC18: .4byte 0x02031E40
_0800CC1C: .4byte 0x0804842C
_0800CC20: .4byte 0x03001910
	thumb_func_end sub_0800CBF8

	thumb_func_start sub_0800CC24
sub_0800CC24: @ 0x0800CC24
	push {r4, lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #1
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	ldr r1, _0800CC68 @ =sub_0800CBF8
	movs r0, #4
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CC68: .4byte sub_0800CBF8
	thumb_func_end sub_0800CC24

	thumb_func_start sub_0800CC6C
sub_0800CC6C: @ 0x0800CC6C
	push {lr}
	ldr r1, _0800CC7C @ =sub_0800CC24
	ldr r2, _0800CC80 @ =0x0000EFFF
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800CC7C: .4byte sub_0800CC24
_0800CC80: .4byte 0x0000EFFF
	thumb_func_end sub_0800CC6C

	thumb_func_start sub_0800CC84
sub_0800CC84: @ 0x0800CC84
	push {lr}
	bl sub_0800C934
	bl sub_0800C99C
	bl sub_0800CBEC
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CC84

	thumb_func_start sub_0800CCAC
sub_0800CCAC: @ 0x0800CCAC
	push {r4, lr}
	ldr r4, _0800CCDC @ =0x0300149C
	ldr r0, [r4]
	cmp r0, #0
	beq _0800CCC0
	ldr r2, _0800CCE0 @ =0x030014A4
	ldr r1, _0800CCE4 @ =0x03001038
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2]
_0800CCC0:
	bl sub_08006AEC
	ldr r0, [r4]
	cmp r0, #0
	beq _0800CCF0
	cmp r0, #1
	bne _0800CCEC
	bl sub_0800CC84
	ldr r0, _0800CCE8 @ =sub_08007154
	bl sub_08003640
	b _0800CCF0
	.align 2, 0
_0800CCDC: .4byte 0x0300149C
_0800CCE0: .4byte 0x030014A4
_0800CCE4: .4byte 0x03001038
_0800CCE8: .4byte sub_08007154
_0800CCEC:
	subs r0, #1
	str r0, [r4]
_0800CCF0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CCAC

	thumb_func_start sub_0800CCF8
sub_0800CCF8: @ 0x0800CCF8
	push {lr}
	ldr r1, _0800CD28 @ =0x0300149C
	movs r0, #0
	str r0, [r1]
	bl sub_08006AB4
	bl sub_0800CACC
	bl sub_0800C940
	bl sub_0800CA8C
	bl sub_0800CC6C
	ldr r0, _0800CD2C @ =sub_0800CC84
	bl sub_08003980
	ldr r1, _0800CD30 @ =sub_0800CCAC
	movs r0, #5
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800CD28: .4byte 0x0300149C
_0800CD2C: .4byte sub_0800CC84
_0800CD30: .4byte sub_0800CCAC
	thumb_func_end sub_0800CCF8

	thumb_func_start sub_0800CD34
sub_0800CD34: @ 0x0800CD34
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _0800CD60 @ =sub_0800CCF8
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800CD60: .4byte sub_0800CCF8
	thumb_func_end sub_0800CD34

	thumb_func_start sub_0800CD64
sub_0800CD64: @ 0x0800CD64
	push {lr}
	movs r0, #1
	bl sub_080104AC
	ldr r1, _0800CD78 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800CD78: .4byte 0x0300149C
	thumb_func_end sub_0800CD64

	thumb_func_start sub_0800CD7C
sub_0800CD7C: @ 0x0800CD7C
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_0800CD7C

	thumb_func_start sub_0800CD84
sub_0800CD84: @ 0x0800CD84
	push {r4, r5, lr}
	ldr r5, _0800CDA0 @ =0x0203A770
	movs r4, #9
_0800CD8A:
	adds r0, r5, #0
	bl sub_0800CD7C
	subs r4, #1
	adds r5, #4
	cmp r4, #0
	bge _0800CD8A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CDA0: .4byte 0x0203A770
	thumb_func_end sub_0800CD84

	thumb_func_start sub_0800CDA4
sub_0800CDA4: @ 0x0800CDA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800CDB2
	bl sub_080028D4
_0800CDB2:
	adds r0, r4, #0
	bl sub_0800CD7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CDA4

	thumb_func_start sub_0800CDC0
sub_0800CDC0: @ 0x0800CDC0
	push {r4, r5, lr}
	ldr r5, _0800CDDC @ =0x0203A770
	movs r4, #9
_0800CDC6:
	adds r0, r5, #0
	bl sub_0800CDA4
	subs r4, #1
	adds r5, #4
	cmp r4, #0
	bge _0800CDC6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800CDDC: .4byte 0x0203A770
	thumb_func_end sub_0800CDC0

	thumb_func_start sub_0800CDE0
sub_0800CDE0: @ 0x0800CDE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r2, r3, #0
	ldr r4, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0xa
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r6, #0
	str r6, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	ldr r1, [sp, #0x24]
	lsls r0, r1, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r6, [sp]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08003E7C
	bl sub_08002954
	mov r1, r8
	str r0, [r1]
	adds r4, r0, #0
	cmp r7, #0
	bne _0800CE38
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08001AE4
	b _0800CE46
_0800CE38:
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_08001B20
_0800CE46:
	ldr r0, [sp, #0x20]
	lsls r1, r0, #0x15
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_0800256C
	ldr r0, [sp, #0x24]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_0800257C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002624
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CDE0

	thumb_func_start sub_0800CE74
sub_0800CE74: @ 0x0800CE74
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	bl sub_08003A5C
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x45
	bne _0800CE94
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _0800CE94
	ldrb r0, [r2, #2]
	cmp r0, #0x44
	bne _0800CE94
	adds r2, #0x10
_0800CE94:
	ldrb r0, [r2]
	adds r3, r0, #0
	cmp r3, #0x49
	bne _0800CEAC
	ldrb r0, [r2, #1]
	cmp r0, #0x4d
	bne _0800CEAC
	ldrb r0, [r2, #2]
	cmp r0, #0x47
	bne _0800CEAC
	movs r1, #1
	b _0800CEFC
_0800CEAC:
	cmp r3, #0x50
	bne _0800CEC0
	ldrb r0, [r2, #1]
	cmp r0, #0x4c
	bne _0800CEC0
	ldrb r0, [r2, #2]
	cmp r0, #0x54
	bne _0800CEC0
	movs r1, #2
	b _0800CEFC
_0800CEC0:
	cmp r3, #0x53
	bne _0800CED4
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _0800CED4
	ldrb r0, [r2, #2]
	cmp r0, #0x52
	bne _0800CED4
	movs r1, #3
	b _0800CEFC
_0800CED4:
	cmp r3, #0x50
	bne _0800CEE8
	ldrb r0, [r2, #1]
	cmp r0, #0x41
	bne _0800CEE8
	ldrb r0, [r2, #2]
	cmp r0, #0x54
	bne _0800CEE8
	movs r1, #4
	b _0800CEFC
_0800CEE8:
	movs r1, #0
	cmp r3, #0x54
	bne _0800CEFC
	ldrb r0, [r2, #1]
	cmp r0, #0x49
	bne _0800CEFC
	ldrb r0, [r2, #2]
	cmp r0, #0x4d
	bne _0800CEFC
	movs r1, #5
_0800CEFC:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800CE74

	thumb_func_start sub_0800CF04
sub_0800CF04: @ 0x0800CF04
	push {r4, lr}
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r1, #1
	ldr r0, _0800CF2C @ =0x0000F3FF
	adds r3, r0, #0
_0800CF10:
	movs r2, #0
	lsls r0, r1, #6
	adds r1, #1
	adds r0, r0, r4
_0800CF18:
	strh r3, [r0]
	adds r0, #2
	adds r2, #1
	cmp r2, #0xe
	bls _0800CF18
	cmp r1, #7
	bls _0800CF10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800CF2C: .4byte 0x0000F3FF
	thumb_func_end sub_0800CF04

	thumb_func_start sub_0800CF30
sub_0800CF30: @ 0x0800CF30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _0800CF54 @ =0x0203A770
	mov r8, r0
	bl sub_0800CDA4
	adds r7, r4, #0
	adds r0, r7, #0
	bl sub_0800CE74
	cmp r0, #5
	bne _0800CFAE
	adds r6, r7, #0
	b _0800CF5A
	.align 2, 0
_0800CF54: .4byte 0x0203A770
_0800CF58:
	subs r6, #1
_0800CF5A:
	adds r0, r6, #0
	bl sub_0800CE74
	cmp r0, #1
	bne _0800CF58
	adds r5, r4, #0
	b _0800CF6A
_0800CF68:
	subs r5, #1
_0800CF6A:
	adds r0, r5, #0
	bl sub_0800CE74
	cmp r0, #2
	bne _0800CF68
	b _0800CF78
_0800CF76:
	subs r4, #1
_0800CF78:
	adds r0, r4, #0
	bl sub_0800CE74
	cmp r0, #4
	bne _0800CF76
	movs r7, #0
	str r5, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0
	adds r3, r6, #0
	bl sub_0800CDE0
	mov r1, r8
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r0]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r0, #4]
	str r7, [r0, #8]
	movs r1, #1
	bl sub_0800258C
_0800CFAE:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800CF30

	thumb_func_start sub_0800CFBC
sub_0800CFBC: @ 0x0800CFBC
	push {lr}
	ldr r1, _0800CFD0 @ =0x0203A770
	ldr r0, [r1]
	cmp r0, #0
	beq _0800CFCC
	adds r0, r1, #0
	bl sub_0800CDA4
_0800CFCC:
	pop {r0}
	bx r0
	.align 2, 0
_0800CFD0: .4byte 0x0203A770
	thumb_func_end sub_0800CFBC

	thumb_func_start sub_0800CFD4
sub_0800CFD4: @ 0x0800CFD4
	push {r4, r5, r6, lr}
	ldr r0, _0800D054 @ =0x0203A770
	ldr r0, [r0]
	cmp r0, #0
	bne _0800CFE0
	b _0800D27C
_0800CFE0:
	adds r5, r0, #0
	bl sub_08001B58
	ldr r4, _0800D058 @ =0x02031E40
	ldr r1, _0800D05C @ =0x08048434
	adds r0, r4, #0
	bl sub_08007F1C
	ldr r6, _0800D060 @ =0x0203A79C
	movs r2, #0
	ldrsb r2, [r6, r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08006A78
	ldr r2, _0800D064 @ =0x03001038
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0800D06C
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D01E
	ldr r0, [r5]
	ldr r1, _0800D068 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r5]
_0800D01E:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D02E
	ldr r0, [r5]
	adds r0, r0, r3
	str r0, [r5]
_0800D02E:
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800D040
	ldr r0, [r5, #4]
	ldr r1, _0800D068 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r5, #4]
_0800D040:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800D04C
	b _0800D1E8
_0800D04C:
	ldr r0, [r5, #4]
	adds r0, r0, r3
	str r0, [r5, #4]
	b _0800D1E8
	.align 2, 0
_0800D054: .4byte 0x0203A770
_0800D058: .4byte 0x02031E40
_0800D05C: .4byte 0x08048434
_0800D060: .4byte 0x0203A79C
_0800D064: .4byte 0x03001038
_0800D068: .4byte 0xFFFFFF00
_0800D06C:
	ldr r1, _0800D084 @ =0x02031E90
	ldrh r2, [r1]
	movs r0, #0x40
	ands r0, r2
	adds r3, r1, #0
	cmp r0, #0
	beq _0800D088
	ldr r0, [r6]
	cmp r0, #1
	ble _0800D09A
	subs r0, #1
	b _0800D098
	.align 2, 0
_0800D084: .4byte 0x02031E90
_0800D088:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800D09A
	ldr r0, [r6]
	cmp r0, #5
	bgt _0800D09A
	adds r0, #1
_0800D098:
	str r0, [r6]
_0800D09A:
	ldr r0, _0800D0B0 @ =0x0203A79C
	ldr r0, [r0]
	subs r0, #1
	cmp r0, #5
	bls _0800D0A6
	b _0800D1E8
_0800D0A6:
	lsls r0, r0, #2
	ldr r1, _0800D0B4 @ =_0800D0B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D0B0: .4byte 0x0203A79C
_0800D0B4: .4byte _0800D0B8
_0800D0B8: @ jump table
	.4byte _0800D0D0 @ case 0
	.4byte _0800D0FC @ case 1
	.4byte _0800D124 @ case 2
	.4byte _0800D146 @ case 3
	.4byte _0800D170 @ case 4
	.4byte _0800D1B0 @ case 5
_0800D0D0:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D0E2
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D0F0
_0800D0E2:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800D0EC
	b _0800D1E8
_0800D0EC:
	ldr r0, [r5]
	ldr r1, _0800D0F8 @ =0xFFFFFF00
_0800D0F0:
	adds r0, r0, r1
	str r0, [r5]
	b _0800D1E8
	.align 2, 0
_0800D0F8: .4byte 0xFFFFFF00
_0800D0FC:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D10E
	ldr r0, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D11A
_0800D10E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D1E8
	ldr r0, [r5, #4]
	ldr r1, _0800D120 @ =0xFFFFFF00
_0800D11A:
	adds r0, r0, r1
	str r0, [r5, #4]
	b _0800D1E8
	.align 2, 0
_0800D120: .4byte 0xFFFFFF00
_0800D124:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D134
	ldrh r0, [r5, #0xc]
	adds r0, #1
	b _0800D140
_0800D134:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D1E8
	ldrh r0, [r5, #0xc]
	subs r0, #1
_0800D140:
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	b _0800D1E8
_0800D146:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800D156
	movs r1, #0x80
	lsls r1, r1, #1
	b _0800D160
_0800D156:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D1E8
	ldr r1, _0800D16C @ =0xFFFFFF00
_0800D160:
	adds r0, r1, #0
	ldrh r1, [r5, #0x10]
	adds r0, r0, r1
	strh r0, [r5, #0x10]
	b _0800D1E8
	.align 2, 0
_0800D16C: .4byte 0xFFFFFF00
_0800D170:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800D194
	ldr r1, _0800D190 @ =0x0203A7AC
	movs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08002594
	b _0800D1E8
	.align 2, 0
_0800D190: .4byte 0x0203A7AC
_0800D194:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D1E8
	ldr r0, _0800D1AC @ =0x0203A7AC
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002594
	b _0800D1E8
	.align 2, 0
_0800D1AC: .4byte 0x0203A7AC
_0800D1B0:
	ldrh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0800D1D4
	ldr r1, _0800D1D0 @ =0x0203A798
	movs r0, #1
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #1
	bl sub_080025C4
	b _0800D1E8
	.align 2, 0
_0800D1D0: .4byte 0x0203A798
_0800D1D4:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800D1E8
	ldr r0, _0800D284 @ =0x0203A798
	str r2, [r0]
	adds r0, r5, #0
	movs r1, #0
	bl sub_080025C4
_0800D1E8:
	ldr r4, _0800D288 @ =0x02031E40
	ldr r1, _0800D28C @ =0x08048438
	ldrh r2, [r5]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_08006A78
	ldr r1, _0800D290 @ =0x08048444
	ldrh r2, [r5, #4]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800D294 @ =0x08048450
	ldrh r2, [r5, #0xc]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_08006A78
	ldr r1, _0800D298 @ =0x0804845C
	ldrh r2, [r5, #0x10]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800D29C @ =0x08048468
	ldr r0, _0800D2A0 @ =0x0203A7AC
	ldr r2, [r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_08006A78
	ldr r1, _0800D2A4 @ =0x08048474
	ldr r0, _0800D284 @ =0x0203A798
	ldr r2, [r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #6
	bl sub_08006A78
	ldr r1, _0800D2A8 @ =0x08048480
	adds r0, r4, #0
	bl sub_08007F1C
	ldr r0, _0800D2AC @ =0x0203A79C
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08006A78
_0800D27C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D284: .4byte 0x0203A798
_0800D288: .4byte 0x02031E40
_0800D28C: .4byte 0x08048438
_0800D290: .4byte 0x08048444
_0800D294: .4byte 0x08048450
_0800D298: .4byte 0x0804845C
_0800D29C: .4byte 0x08048468
_0800D2A0: .4byte 0x0203A7AC
_0800D2A4: .4byte 0x08048474
_0800D2A8: .4byte 0x08048480
_0800D2AC: .4byte 0x0203A79C
	thumb_func_end sub_0800CFD4

	thumb_func_start sub_0800D2B0
sub_0800D2B0: @ 0x0800D2B0
	push {r4, r5, lr}
	ldr r0, _0800D2E0 @ =0x0203A770
	ldr r5, [r0]
	cmp r5, #0
	beq _0800D2D8
	adds r0, r5, #0
	bl sub_08002B30
	ldr r4, _0800D2E4 @ =0x02031E40
	ldr r1, _0800D2E8 @ =0x08048484
	movs r0, #0x2a
	ldrsh r2, [r5, r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0x12
	bl sub_08006A78
_0800D2D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D2E0: .4byte 0x0203A770
_0800D2E4: .4byte 0x02031E40
_0800D2E8: .4byte 0x08048484
	thumb_func_end sub_0800D2B0

	thumb_func_start sub_0800D2EC
sub_0800D2EC: @ 0x0800D2EC
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D2EC

	thumb_func_start sub_0800D2F0
sub_0800D2F0: @ 0x0800D2F0
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D2F0

	thumb_func_start sub_0800D2F4
sub_0800D2F4: @ 0x0800D2F4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, _0800D33C @ =0x06004000
	movs r1, #0
	ldr r2, _0800D340 @ =0x00003BFF
	movs r0, #0
_0800D302:
	strh r0, [r3]
	adds r1, #1
	adds r3, #2
	cmp r1, r2
	bls _0800D302
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #0
	str r1, [sp]
	adds r2, r4, #0
	movs r3, #1
	bl sub_08003D38
	ldr r3, _0800D344 @ =0x06000800
	movs r1, #0
	ldr r4, _0800D348 @ =0x000003FF
	movs r0, #0x80
	lsls r0, r0, #5
	adds r2, r0, #0
_0800D328:
	adds r0, r1, r2
	strh r0, [r3]
	adds r1, #1
	adds r3, #2
	cmp r1, r4
	bls _0800D328
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D33C: .4byte 0x06004000
_0800D340: .4byte 0x00003BFF
_0800D344: .4byte 0x06000800
_0800D348: .4byte 0x000003FF
	thumb_func_end sub_0800D2F4

	thumb_func_start sub_0800D34C
sub_0800D34C: @ 0x0800D34C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D34C

	thumb_func_start sub_0800D350
sub_0800D350: @ 0x0800D350
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D350

	thumb_func_start sub_0800D354
sub_0800D354: @ 0x0800D354
	push {lr}
	sub sp, #4
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800D354

	thumb_func_start sub_0800D370
sub_0800D370: @ 0x0800D370
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D370

	thumb_func_start sub_0800D374
sub_0800D374: @ 0x0800D374
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D374

	thumb_func_start sub_0800D378
sub_0800D378: @ 0x0800D378
	push {r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r1, _0800D3DC @ =0x0000F3FF
	movs r0, #1
	movs r2, #0
	bl sub_08000E44
	movs r0, #0
	adds r1, r4, #0
	bl sub_08003A5C
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #0x45
	bne _0800D3A6
	ldrb r0, [r2, #1]
	cmp r0, #0x43
	bne _0800D3A6
	ldrb r0, [r2, #2]
	cmp r0, #0x44
	bne _0800D3A6
	adds r2, #0x10
_0800D3A6:
	ldrb r0, [r2, #5]
	cmp r0, #0x20
	bhi _0800D3D2
	ldrb r0, [r2, #6]
	cmp r0, #0x20
	bhi _0800D3D2
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0x10
	str r1, [sp]
	subs r1, #0x11
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08003F8C
_0800D3D2:
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D3DC: .4byte 0x0000F3FF
	thumb_func_end sub_0800D378

	thumb_func_start sub_0800D3E0
sub_0800D3E0: @ 0x0800D3E0
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D3E0

	thumb_func_start sub_0800D3E4
sub_0800D3E4: @ 0x0800D3E4
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D3E4

	thumb_func_start sub_0800D3E8
sub_0800D3E8: @ 0x0800D3E8
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r6, #0
	ldr r0, _0800D400 @ =0x02031E90
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D404
	movs r6, #1
	b _0800D410
	.align 2, 0
_0800D400: .4byte 0x02031E90
_0800D404:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800D410
	movs r6, #1
	rsbs r6, r6, #0
_0800D410:
	ldr r0, _0800D440 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D424
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r6, r0, #1
_0800D424:
	cmp r6, #0
	beq _0800D518
	ldr r0, _0800D444 @ =0x0203A7A4
	ldr r0, [r0]
	bl sub_0800CE74
	cmp r0, #2
	beq _0800D458
	cmp r0, #2
	bhi _0800D448
	cmp r0, #1
	beq _0800D452
	b _0800D468
	.align 2, 0
_0800D440: .4byte 0x03001038
_0800D444: .4byte 0x0203A7A4
_0800D448:
	cmp r0, #3
	beq _0800D45E
	cmp r0, #5
	beq _0800D464
	b _0800D468
_0800D452:
	bl sub_0800D34C
	b _0800D468
_0800D458:
	bl sub_0800D370
	b _0800D468
_0800D45E:
	bl sub_0800D3E0
	b _0800D468
_0800D464:
	bl sub_0800CF04
_0800D468:
	ldr r4, _0800D470 @ =0x0203A7A4
	ldr r5, _0800D474 @ =0x0000044F
	b _0800D482
	.align 2, 0
_0800D470: .4byte 0x0203A7A4
_0800D474: .4byte 0x0000044F
_0800D478:
	ldr r0, [r4]
	bl sub_0800CE74
	cmp r0, #5
	beq _0800D4A0
_0800D482:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	cmp r0, r5
	ble _0800D492
	movs r0, #0
	str r0, [r4]
	b _0800D498
_0800D492:
	cmp r0, #0
	bge _0800D498
	str r5, [r4]
_0800D498:
	ldr r0, _0800D4BC @ =0x0203A7A0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800D478
_0800D4A0:
	ldr r4, _0800D4C0 @ =0x0203A7A8
	ldr r5, _0800D4C4 @ =0x0203A7A4
	ldr r0, [r5]
	bl sub_0800CE74
	str r0, [r4]
	cmp r0, #2
	beq _0800D4DA
	cmp r0, #2
	bgt _0800D4C8
	cmp r0, #1
	beq _0800D4D2
	b _0800D4FA
	.align 2, 0
_0800D4BC: .4byte 0x0203A7A0
_0800D4C0: .4byte 0x0203A7A8
_0800D4C4: .4byte 0x0203A7A4
_0800D4C8:
	cmp r0, #3
	beq _0800D4E2
	cmp r0, #5
	beq _0800D4EA
	b _0800D4FA
_0800D4D2:
	ldr r0, [r5]
	bl sub_0800D2F4
	b _0800D4FA
_0800D4DA:
	ldr r0, [r5]
	bl sub_0800D354
	b _0800D4FA
_0800D4E2:
	ldr r0, [r5]
	bl sub_0800D378
	b _0800D4FA
_0800D4EA:
	ldr r0, [r5]
	bl sub_0800CF30
	ldr r1, _0800D52C @ =0x0000F3FF
	movs r0, #1
	movs r2, #0
	bl sub_08000E44
_0800D4FA:
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0xf0
	movs r3, #0
	bl sub_08006990
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0
	movs r2, #0
	bl sub_080011EC
_0800D518:
	ldr r0, _0800D530 @ =0x0203A7A8
	ldr r0, [r0]
	cmp r0, #2
	beq _0800D544
	cmp r0, #2
	bgt _0800D534
	cmp r0, #1
	beq _0800D53E
	b _0800D554
	.align 2, 0
_0800D52C: .4byte 0x0000F3FF
_0800D530: .4byte 0x0203A7A8
_0800D534:
	cmp r0, #3
	beq _0800D54A
	cmp r0, #5
	beq _0800D550
	b _0800D554
_0800D53E:
	bl sub_0800D350
	b _0800D554
_0800D544:
	bl sub_0800D374
	b _0800D554
_0800D54A:
	bl sub_0800D3E4
	b _0800D554
_0800D550:
	bl sub_0800CFD4
_0800D554:
	ldr r4, _0800D574 @ =0x02031E40
	ldr r1, _0800D578 @ =0x08048494
	ldr r0, _0800D57C @ =0x0203A7A4
	ldr r2, [r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08006A78
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D574: .4byte 0x02031E40
_0800D578: .4byte 0x08048494
_0800D57C: .4byte 0x0203A7A4
	thumb_func_end sub_0800D3E8

	thumb_func_start sub_0800D580
sub_0800D580: @ 0x0800D580
	push {lr}
	ldr r0, _0800D59C @ =0x0203A7A8
	ldr r0, [r0]
	cmp r0, #1
	blt _0800D596
	cmp r0, #3
	ble _0800D596
	cmp r0, #5
	bne _0800D596
	bl sub_0800D2B0
_0800D596:
	pop {r0}
	bx r0
	.align 2, 0
_0800D59C: .4byte 0x0203A7A8
	thumb_func_end sub_0800D580

	thumb_func_start sub_0800D5A0
sub_0800D5A0: @ 0x0800D5A0
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r0, _0800D60C @ =0x02031E90
	ldrh r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0800D602
	movs r4, #0
	movs r0, #0x80
	lsls r0, r0, #7
	str r5, [sp]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003D38
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003E7C
	movs r0, #0xa0
	lsls r0, r0, #1
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08003F8C
	movs r0, #0
	movs r1, #0
	bl sub_08003A5C
	adds r1, r0, #0
	adds r1, #8
	movs r0, #0
	movs r2, #0
	bl sub_080012D8
_0800D602:
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D60C: .4byte 0x02031E90
	thumb_func_end sub_0800D5A0

	thumb_func_start sub_0800D610
sub_0800D610: @ 0x0800D610
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r5, _0800D688 @ =0x0203A770
	ldr r0, _0800D68C @ =0x02031E90
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D66E
	movs r4, #0
	adds r0, r5, #0
	bl sub_0800CDA4
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800CDE0
	ldr r1, [r5]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r1, #4]
	str r4, [r1, #8]
	movs r0, #0
	movs r1, #0
	bl sub_08003A5C
	adds r1, r0, #0
	adds r1, #8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r0, #0
	bl sub_080012D8
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #0
	movs r2, #0
	bl sub_080011EC
_0800D66E:
	ldr r0, [r5]
	cmp r0, #0
	beq _0800D67E
	bl sub_08001B58
	ldr r0, [r5]
	bl sub_08002B30
_0800D67E:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800D688: .4byte 0x0203A770
_0800D68C: .4byte 0x02031E90
	thumb_func_end sub_0800D610

	thumb_func_start sub_0800D690
sub_0800D690: @ 0x0800D690
	push {lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800D74C @ =0x0100C000
	add r0, sp, #8
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800D750 @ =0x082052E8
	bl sub_08000D40
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _0800D754 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	ldr r1, _0800D758 @ =0x0000F3FE
	movs r0, #3
	movs r2, #0
	bl sub_08000E44
	ldr r1, _0800D75C @ =0x06001280
	movs r0, #0
	ldr r3, _0800D760 @ =0x0000F3FB
	adds r2, r3, #0
_0800D718:
	strh r2, [r1]
	adds r0, #1
	adds r1, #2
	cmp r0, #0x1f
	bls _0800D718
	ldr r1, _0800D764 @ =0x0600101E
	movs r0, #0
	ldr r3, _0800D768 @ =0x0000F3FC
	adds r2, r3, #0
_0800D72A:
	strh r2, [r1]
	adds r0, #1
	adds r1, #0x40
	cmp r0, #0x1f
	bls _0800D72A
	ldr r1, _0800D76C @ =0x0600129E
	ldr r2, _0800D770 @ =0x0000F3FD
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #2
	movs r1, #3
	movs r2, #3
	bl sub_08000D9C
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_0800D74C: .4byte 0x0100C000
_0800D750: .4byte 0x082052E8
_0800D754: .4byte 0x0000F3FF
_0800D758: .4byte 0x0000F3FE
_0800D75C: .4byte 0x06001280
_0800D760: .4byte 0x0000F3FB
_0800D764: .4byte 0x0600101E
_0800D768: .4byte 0x0000F3FC
_0800D76C: .4byte 0x0600129E
_0800D770: .4byte 0x0000F3FD
	thumb_func_end sub_0800D690

	thumb_func_start sub_0800D774
sub_0800D774: @ 0x0800D774
	push {lr}
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800D774

	thumb_func_start sub_0800D780
sub_0800D780: @ 0x0800D780
	bx lr
	.align 2, 0
	thumb_func_end sub_0800D780

	thumb_func_start sub_0800D784
sub_0800D784: @ 0x0800D784
	push {r4, lr}
	movs r0, #1
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	ldr r1, _0800D7BC @ =sub_0800D780
	movs r0, #4
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D7BC: .4byte sub_0800D780
	thumb_func_end sub_0800D784

	thumb_func_start sub_0800D7C0
sub_0800D7C0: @ 0x0800D7C0
	push {lr}
	ldr r1, _0800D7D0 @ =sub_0800D784
	ldr r2, _0800D7D4 @ =0x0000EFFF
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800D7D0: .4byte sub_0800D784
_0800D7D4: .4byte 0x0000EFFF
	thumb_func_end sub_0800D7C0

	thumb_func_start sub_0800D7D8
sub_0800D7D8: @ 0x0800D7D8
	push {lr}
	bl sub_0800CDC0
	bl sub_0800D2F0
	bl sub_0800D774
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800D7D8

	thumb_func_start sub_0800D800
sub_0800D800: @ 0x0800D800
	push {lr}
	bl sub_08006AEC
	ldr r1, _0800D820 @ =0x0300149C
	ldr r0, [r1]
	cmp r0, #0
	beq _0800D82C
	cmp r0, #1
	bne _0800D828
	ldr r0, _0800D824 @ =sub_08007154
	bl sub_08003640
	bl sub_0800D7D8
	b _0800D834
	.align 2, 0
_0800D820: .4byte 0x0300149C
_0800D824: .4byte sub_08007154
_0800D828:
	subs r0, #1
	str r0, [r1]
_0800D82C:
	bl sub_0800D3E8
	bl sub_0800D580
_0800D834:
	pop {r0}
	bx r0
	thumb_func_end sub_0800D800

	thumb_func_start sub_0800D838
sub_0800D838: @ 0x0800D838
	push {r4, lr}
	ldr r0, _0800D884 @ =0x0300149C
	movs r4, #0
	str r4, [r0]
	bl sub_08006AB4
	bl sub_0800D690
	bl sub_0800CD84
	ldr r0, _0800D888 @ =0x0203A7A0
	movs r1, #1
	str r1, [r0]
	ldr r0, _0800D88C @ =0x0203A7A4
	str r4, [r0]
	ldr r0, _0800D890 @ =0x0203A7A8
	str r4, [r0]
	ldr r0, _0800D894 @ =0x0203A79C
	str r1, [r0]
	ldr r0, _0800D898 @ =0x0203A7AC
	str r4, [r0]
	ldr r0, _0800D89C @ =0x0203A798
	str r4, [r0]
	bl sub_0800D2EC
	bl sub_0800D7C0
	ldr r0, _0800D8A0 @ =sub_0800D7D8
	bl sub_08003980
	ldr r1, _0800D8A4 @ =sub_0800D800
	movs r0, #5
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D884: .4byte 0x0300149C
_0800D888: .4byte 0x0203A7A0
_0800D88C: .4byte 0x0203A7A4
_0800D890: .4byte 0x0203A7A8
_0800D894: .4byte 0x0203A79C
_0800D898: .4byte 0x0203A7AC
_0800D89C: .4byte 0x0203A798
_0800D8A0: .4byte sub_0800D7D8
_0800D8A4: .4byte sub_0800D800
	thumb_func_end sub_0800D838

	thumb_func_start sub_0800D8A8
sub_0800D8A8: @ 0x0800D8A8
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _0800D8D4 @ =sub_0800D838
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800D8D4: .4byte sub_0800D838
	thumb_func_end sub_0800D8A8

	thumb_func_start sub_0800D8D8
sub_0800D8D8: @ 0x0800D8D8
	push {lr}
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	movs r0, #1
	bl sub_080104AC
	ldr r1, _0800D8F4 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800D8F4: .4byte 0x0300149C
	thumb_func_end sub_0800D8D8

	thumb_func_start sub_0800D8F8
sub_0800D8F8: @ 0x0800D8F8
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0800D914 @ =0x0203A7B4
	str r1, [r0]
	ldr r4, _0800D918 @ =0x0203A7B8
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800D914: .4byte 0x0203A7B4
_0800D918: .4byte 0x0203A7B8
	thumb_func_end sub_0800D8F8

	thumb_func_start sub_0800D91C
sub_0800D91C: @ 0x0800D91C
	push {lr}
	ldr r0, _0800D92C @ =0x0203A7B8
	ldr r0, [r0]
	bl sub_080038C8
	pop {r0}
	bx r0
	.align 2, 0
_0800D92C: .4byte 0x0203A7B8
	thumb_func_end sub_0800D91C

	thumb_func_start sub_0800D930
sub_0800D930: @ 0x0800D930
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_0800D930

	thumb_func_start sub_0800D93C
sub_0800D93C: @ 0x0800D93C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800D964 @ =0x0203A7B8
	ldr r4, [r0]
	ldr r1, _0800D968 @ =0x0203A7B4
	ldr r0, [r1]
	cmp r5, r0
	bge _0800D95E
	adds r6, r1, #0
_0800D94E:
	adds r0, r4, #0
	bl sub_0800D930
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0800D94E
_0800D95E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D964: .4byte 0x0203A7B8
_0800D968: .4byte 0x0203A7B4
	thumb_func_end sub_0800D93C

	thumb_func_start sub_0800D96C
sub_0800D96C: @ 0x0800D96C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800D986
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0800D980
	bl sub_080028D4
_0800D980:
	adds r0, r4, #0
	bl sub_0800D930
_0800D986:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800D96C

	thumb_func_start sub_0800D98C
sub_0800D98C: @ 0x0800D98C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800D9B4 @ =0x0203A7B8
	ldr r4, [r0]
	ldr r1, _0800D9B8 @ =0x0203A7B4
	ldr r0, [r1]
	cmp r5, r0
	bge _0800D9AE
	adds r6, r1, #0
_0800D99E:
	adds r0, r4, #0
	bl sub_0800D96C
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0800D99E
_0800D9AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800D9B4: .4byte 0x0203A7B8
_0800D9B8: .4byte 0x0203A7B4
	thumb_func_end sub_0800D98C

	thumb_func_start sub_0800D9BC
sub_0800D9BC: @ 0x0800D9BC
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _0800D9D8 @ =0x0203A7B8
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
	cmp r2, r3
	bhs _0800D9E4
_0800D9CE:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800D9DC
	adds r0, r1, #0
	b _0800D9E6
	.align 2, 0
_0800D9D8: .4byte 0x0203A7B8
_0800D9DC:
	adds r2, #1
	adds r1, #0x10
	cmp r2, r3
	blo _0800D9CE
_0800D9E4:
	movs r0, #0
_0800D9E6:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800D9BC

	thumb_func_start sub_0800D9EC
sub_0800D9EC: @ 0x0800D9EC
	push {lr}
	ldr r0, _0800DA00 @ =0x0203A7C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DA04
	movs r0, #0
	movs r1, #1
	bl sub_08004CC0
	b _0800DA0C
	.align 2, 0
_0800DA00: .4byte 0x0203A7C0
_0800DA04:
	movs r0, #0
	movs r1, #1
	bl sub_08005334
_0800DA0C:
	pop {r0}
	bx r0
	thumb_func_end sub_0800D9EC

	thumb_func_start sub_0800DA10
sub_0800DA10: @ 0x0800DA10
	push {lr}
	movs r0, #8
	bl sub_080034D4
	cmp r0, #0
	beq _0800DA22
	movs r0, #8
	bl sub_08003450
_0800DA22:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DA10

	thumb_func_start sub_0800DA28
sub_0800DA28: @ 0x0800DA28
	push {lr}
	bl sub_0800DA10
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DA28

	thumb_func_start sub_0800DA34
sub_0800DA34: @ 0x0800DA34
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	movs r0, #0
	mov r1, sp
	bl sub_0800453C
	ldr r4, _0800DA84 @ =0x0203A7C0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	movs r0, #0
	bl sub_08004518
	ldr r1, [sp]
	ldr r0, [r4, #4]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800DA5A
	rsbs r1, r1, #0
_0800DA5A:
	ldr r2, _0800DA88 @ =0x000007FF
	cmp r1, r2
	bgt _0800DA70
	ldr r1, [sp, #4]
	ldr r0, [r4, #8]
	subs r1, r1, r0
	cmp r1, #0
	bge _0800DA6C
	rsbs r1, r1, #0
_0800DA6C:
	cmp r1, r2
	ble _0800DA74
_0800DA70:
	bl sub_0800D9EC
_0800DA74:
	ldr r0, _0800DA84 @ =0x0203A7C0
	ldr r0, [r0]
	cmp r0, #0
	bne _0800DA8C
	movs r0, #0
	bl sub_080048D8
	b _0800DA92
	.align 2, 0
_0800DA84: .4byte 0x0203A7C0
_0800DA88: .4byte 0x000007FF
_0800DA8C:
	movs r0, #0
	bl sub_08004F3C
_0800DA92:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DA34

	thumb_func_start sub_0800DA9C
sub_0800DA9C: @ 0x0800DA9C
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r5, _0800DB04 @ =0x0203A7C0
	movs r4, #0
	str r4, [r5]
	movs r6, #0x1f
	movs r0, #0x80
	lsls r0, r0, #7
	str r4, [sp]
	movs r1, #0
	movs r2, #0x1b
	movs r3, #1
	bl sub_08003D38
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1c
	movs r3, #1
	bl sub_08003E7C
	str r4, [sp]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0x1e
	bl sub_08004414
	movs r0, #0
	movs r1, #1
	bl sub_08004460
	movs r0, #0
	movs r1, #0
	bl sub_0800447C
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	movs r0, #0
	bl sub_08004518
	bl sub_0800D9EC
	ldr r1, _0800DB08 @ =sub_0800DA34
	movs r0, #8
	bl sub_0800356C
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800DB04: .4byte 0x0203A7C0
_0800DB08: .4byte sub_0800DA34
	thumb_func_end sub_0800DA9C

	thumb_func_start sub_0800DB0C
sub_0800DB0C: @ 0x0800DB0C
	push {lr}
	ldr r1, _0800DB1C @ =sub_0800DA9C
	ldr r2, _0800DB20 @ =0x00002020
	movs r0, #8
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800DB1C: .4byte sub_0800DA9C
_0800DB20: .4byte 0x00002020
	thumb_func_end sub_0800DB0C

	thumb_func_start sub_0800DB24
sub_0800DB24: @ 0x0800DB24
	push {lr}
	movs r0, #7
	bl sub_080034D4
	cmp r0, #0
	beq _0800DB4A
	ldr r0, _0800DB50 @ =0x0203A7B8
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x50
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0800DB44
	adds r0, r1, #0
	bl sub_0800D96C
_0800DB44:
	movs r0, #7
	bl sub_08003450
_0800DB4A:
	pop {r0}
	bx r0
	.align 2, 0
_0800DB50: .4byte 0x0203A7B8
	thumb_func_end sub_0800DB24

	thumb_func_start sub_0800DB54
sub_0800DB54: @ 0x0800DB54
	push {lr}
	bl sub_0800DB24
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DB54

	thumb_func_start sub_0800DB60
sub_0800DB60: @ 0x0800DB60
	push {r4, lr}
	ldr r0, _0800DC04 @ =0x0203A7B8
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x50
	ldr r0, [r0, #0x50]
	cmp r0, #0
	beq _0800DBFE
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r0, _0800DC08 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800DB8E
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0xc]
_0800DB8E:
	ldr r2, _0800DC0C @ =0x03001038
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800DBA2
	ldr r0, [r4, #0xc]
	ldr r1, _0800DC10 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0800DBA2:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800DBB6
	ldr r0, [r4, #0xc]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r4, #0xc]
_0800DBB6:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800DBC8
	ldr r0, [r4, #8]
	ldr r1, _0800DC10 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #8]
_0800DBC8:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800DBDC
	ldr r0, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [r4, #8]
_0800DBDC:
	ldr r2, _0800DC14 @ =0x0203A7C0
	ldr r1, [r4, #8]
	ldr r0, _0800DC18 @ =0xFFFF8800
	adds r1, r1, r0
	str r1, [r2, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _0800DC1C @ =0xFFFFB000
	adds r0, r0, r3
	str r0, [r2, #8]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	str r0, [r3, #4]
_0800DBFE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DC04: .4byte 0x0203A7B8
_0800DC08: .4byte 0x030014A4
_0800DC0C: .4byte 0x03001038
_0800DC10: .4byte 0xFFFFFE00
_0800DC14: .4byte 0x0203A7C0
_0800DC18: .4byte 0xFFFF8800
_0800DC1C: .4byte 0xFFFFB000
	thumb_func_end sub_0800DB60

	thumb_func_start sub_0800DC20
sub_0800DC20: @ 0x0800DC20
	push {r4, r5, lr}
	sub sp, #4
	bl sub_080035FC
	adds r5, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x80
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0
	movs r2, #0x21
	movs r3, #1
	bl sub_08003E7C
	ldr r0, _0800DCAC @ =0x0203A7B8
	ldr r1, [r0]
	adds r4, r1, #0
	adds r4, #0x50
	movs r0, #1
	str r0, [r1, #0x50]
	movs r0, #0
	movs r1, #0
	movs r2, #0x22
	movs r3, #0
	bl sub_08001AE4
	str r0, [r4, #4]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r4, #0xc]
	movs r1, #1
	bl sub_0800258C
	ldr r2, _0800DCB0 @ =0x0203A7C0
	ldr r1, [r4, #8]
	ldr r0, _0800DCB4 @ =0xFFFF8800
	adds r1, r1, r0
	str r1, [r2, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _0800DCB8 @ =0xFFFFB000
	adds r0, r0, r3
	str r0, [r2, #8]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [r4, #0xc]
	ldr r1, [r2, #8]
	subs r0, r0, r1
	str r0, [r3, #4]
	ldr r1, _0800DCBC @ =sub_0800DB60
	adds r0, r5, #0
	bl sub_0800356C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800DCAC: .4byte 0x0203A7B8
_0800DCB0: .4byte 0x0203A7C0
_0800DCB4: .4byte 0xFFFF8800
_0800DCB8: .4byte 0xFFFFB000
_0800DCBC: .4byte sub_0800DB60
	thumb_func_end sub_0800DC20

	thumb_func_start sub_0800DCC0
sub_0800DCC0: @ 0x0800DCC0
	push {lr}
	ldr r1, _0800DCD0 @ =sub_0800DC20
	ldr r2, _0800DCD4 @ =0x00002010
	movs r0, #7
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800DCD0: .4byte sub_0800DC20
_0800DCD4: .4byte 0x00002010
	thumb_func_end sub_0800DCC0

	thumb_func_start sub_0800DCD8
sub_0800DCD8: @ 0x0800DCD8
	push {lr}
	movs r0, #9
	bl sub_080034D4
	cmp r0, #0
	beq _0800DCF6
	movs r0, #0
	bl sub_0800151C
	movs r0, #0
	bl sub_08001384
	movs r0, #9
	bl sub_08003450
_0800DCF6:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DCD8

	thumb_func_start sub_0800DCFC
sub_0800DCFC: @ 0x0800DCFC
	bx lr
	.align 2, 0
	thumb_func_end sub_0800DCFC

	thumb_func_start sub_0800DD00
sub_0800DD00: @ 0x0800DD00
	push {r4, lr}
	bl sub_080035FC
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0
	movs r2, #0x1d
	movs r3, #0
	bl sub_08001364
	ldr r1, _0800DD24 @ =sub_0800DCFC
	adds r0, r4, #0
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD24: .4byte sub_0800DCFC
	thumb_func_end sub_0800DD00

	thumb_func_start sub_0800DD28
sub_0800DD28: @ 0x0800DD28
	push {lr}
	ldr r1, _0800DD40 @ =sub_0800DD00
	ldr r2, _0800DD44 @ =0x00002030
	movs r0, #9
	bl sub_08003344
	movs r0, #1
	bl sub_0800151C
	pop {r0}
	bx r0
	.align 2, 0
_0800DD40: .4byte sub_0800DD00
_0800DD44: .4byte 0x00002030
	thumb_func_end sub_0800DD28

	thumb_func_start sub_0800DD48
sub_0800DD48: @ 0x0800DD48
	push {lr}
	movs r0, #6
	bl sub_080034D4
	cmp r0, #0
	beq _0800DD60
	movs r0, #0
	bl sub_08003660
	movs r0, #6
	bl sub_08003450
_0800DD60:
	pop {r0}
	bx r0
	thumb_func_end sub_0800DD48

	thumb_func_start sub_0800DD64
sub_0800DD64: @ 0x0800DD64
	push {lr}
	bl sub_0800DD48
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DD64

	thumb_func_start sub_0800DD70
sub_0800DD70: @ 0x0800DD70
	push {r4, lr}
	bl sub_080035FC
	adds r4, r0, #0
	movs r0, #0
	bl sub_08003660
	ldr r1, _0800DD8C @ =sub_0800DD90
	adds r0, r4, #0
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DD8C: .4byte sub_0800DD90
	thumb_func_end sub_0800DD70

	thumb_func_start sub_0800DD90
sub_0800DD90: @ 0x0800DD90
	push {r4, lr}
	bl sub_080035FC
	adds r4, r0, #0
	bl sub_0800366C
	cmp r0, #0
	beq _0800DDCC
	ldr r0, _0800DDC0 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800DDE8
	ldr r0, _0800DDC4 @ =0x080484A0
	movs r1, #0xc
	movs r2, #0xa
	bl sub_08006A78
	ldr r1, _0800DDC8 @ =sub_0800DD70
	adds r0, r4, #0
	bl sub_0800356C
	b _0800DDE8
	.align 2, 0
_0800DDC0: .4byte 0x030014A4
_0800DDC4: .4byte 0x080484A0
_0800DDC8: .4byte sub_0800DD70
_0800DDCC:
	ldr r0, _0800DDF0 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800DDE8
	movs r0, #1
	bl sub_08003660
	ldr r0, _0800DDF4 @ =0x080484A8
	movs r1, #0xc
	movs r2, #0xa
	bl sub_08006A78
_0800DDE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DDF0: .4byte 0x030014A4
_0800DDF4: .4byte 0x080484A8
	thumb_func_end sub_0800DD90

	thumb_func_start sub_0800DDF8
sub_0800DDF8: @ 0x0800DDF8
	push {lr}
	bl sub_080035FC
	ldr r1, _0800DE08 @ =sub_0800DD90
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800DE08: .4byte sub_0800DD90
	thumb_func_end sub_0800DDF8

	thumb_func_start sub_0800DE0C
sub_0800DE0C: @ 0x0800DE0C
	push {lr}
	ldr r1, _0800DE28 @ =sub_0800DDF8
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #6
	bl sub_08003344
	movs r0, #6
	movs r1, #0
	bl sub_08003584
	pop {r0}
	bx r0
	.align 2, 0
_0800DE28: .4byte sub_0800DDF8
	thumb_func_end sub_0800DE0C

	thumb_func_start sub_0800DE2C
sub_0800DE2C: @ 0x0800DE2C
	bx lr
	.align 2, 0
	thumb_func_end sub_0800DE2C

	thumb_func_start sub_0800DE30
sub_0800DE30: @ 0x0800DE30
	bx lr
	.align 2, 0
	thumb_func_end sub_0800DE30

	thumb_func_start sub_0800DE34
sub_0800DE34: @ 0x0800DE34
	push {lr}
	bl sub_08003928
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DE34

	thumb_func_start sub_0800DE40
sub_0800DE40: @ 0x0800DE40
	push {lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800DEFC @ =0x0100C000
	add r0, sp, #8
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800DF00 @ =0x08205318
	bl sub_08000D40
	movs r0, #0
	bl sub_08001000
	movs r0, #0
	movs r1, #0
	bl sub_0800101C
	movs r0, #0
	bl sub_0800104C
	movs r0, #0
	movs r1, #0
	bl sub_0800105C
	movs r0, #1
	movs r1, #0
	bl sub_0800105C
	movs r0, #2
	movs r1, #0
	bl sub_0800105C
	movs r0, #3
	movs r1, #0
	bl sub_0800105C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001094
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _0800DF04 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_0800DEFC: .4byte 0x0100C000
_0800DF00: .4byte 0x08205318
_0800DF04: .4byte 0x0000F3FF
	thumb_func_end sub_0800DE40

	thumb_func_start sub_0800DF08
sub_0800DF08: @ 0x0800DF08
	push {lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800DF08

	thumb_func_start sub_0800DF20
sub_0800DF20: @ 0x0800DF20
	bx lr
	.align 2, 0
	thumb_func_end sub_0800DF20

	thumb_func_start sub_0800DF24
sub_0800DF24: @ 0x0800DF24
	push {r4, lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #1
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	ldr r1, _0800DF68 @ =sub_0800DF20
	movs r0, #4
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800DF68: .4byte sub_0800DF20
	thumb_func_end sub_0800DF24

	thumb_func_start sub_0800DF6C
sub_0800DF6C: @ 0x0800DF6C
	push {lr}
	ldr r1, _0800DF7C @ =sub_0800DF24
	ldr r2, _0800DF80 @ =0x0000EFFF
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800DF7C: .4byte sub_0800DF24
_0800DF80: .4byte 0x0000EFFF
	thumb_func_end sub_0800DF6C

	thumb_func_start sub_0800DF84
sub_0800DF84: @ 0x0800DF84
	push {lr}
	bl sub_0800DD48
	bl sub_0800DB24
	bl sub_0800DA10
	bl sub_0800DCD8
	bl sub_0800D98C
	bl sub_0800D91C
	bl sub_08004360
	bl sub_08004340
	bl sub_0800DF08
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800DF84

	thumb_func_start sub_0800DFC4
sub_0800DFC4: @ 0x0800DFC4
	push {lr}
	bl sub_08006AEC
	ldr r1, _0800DFE4 @ =0x0300149C
	ldr r0, [r1]
	cmp r0, #0
	beq _0800DFF4
	cmp r0, #1
	bne _0800DFEC
	ldr r0, _0800DFE8 @ =sub_08007154
	bl sub_08003640
	bl sub_0800DF84
	b _0800E004
	.align 2, 0
_0800DFE4: .4byte 0x0300149C
_0800DFE8: .4byte sub_08007154
_0800DFEC:
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0800E004
_0800DFF4:
	ldr r0, _0800E008 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E004
	bl sub_0800D8D8
_0800E004:
	pop {r0}
	bx r0
	.align 2, 0
_0800E008: .4byte 0x030014A4
	thumb_func_end sub_0800DFC4

	thumb_func_start sub_0800E00C
sub_0800E00C: @ 0x0800E00C
	push {lr}
	ldr r1, _0800E060 @ =0x0300149C
	movs r0, #0
	str r0, [r1]
	bl sub_08006AB4
	bl sub_0800DE34
	bl sub_08004334
	movs r0, #2
	bl sub_08004344
	movs r0, #0xa
	bl sub_0800D8F8
	bl sub_0800D93C
	bl sub_0800DE40
	bl sub_0800DE0C
	bl sub_0800DCC0
	bl sub_0800DB0C
	bl sub_0800DD28
	bl sub_08003928
	bl sub_0800DF6C
	ldr r0, _0800E064 @ =sub_0800DF84
	bl sub_08003980
	ldr r1, _0800E068 @ =sub_0800DFC4
	movs r0, #5
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800E060: .4byte 0x0300149C
_0800E064: .4byte sub_0800DF84
_0800E068: .4byte sub_0800DFC4
	thumb_func_end sub_0800E00C

	thumb_func_start sub_0800E06C
sub_0800E06C: @ 0x0800E06C
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _0800E094 @ =sub_0800E00C
	ldr r2, _0800E098 @ =0x00001001
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800E094: .4byte sub_0800E00C
_0800E098: .4byte 0x00001001
	thumb_func_end sub_0800E06C

	thumb_func_start sub_0800E09C
sub_0800E09C: @ 0x0800E09C
	push {lr}
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	movs r0, #1
	bl sub_080104AC
	ldr r1, _0800E0B8 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800E0B8: .4byte 0x0300149C
	thumb_func_end sub_0800E09C

	thumb_func_start sub_0800E0BC
sub_0800E0BC: @ 0x0800E0BC
	push {r4, lr}
	ldr r1, _0800E0D8 @ =0x0203AF0C
	str r0, [r1]
	ldr r4, _0800E0DC @ =0x0203AF04
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E0D8: .4byte 0x0203AF0C
_0800E0DC: .4byte 0x0203AF04
	thumb_func_end sub_0800E0BC

	thumb_func_start sub_0800E0E0
sub_0800E0E0: @ 0x0800E0E0
	push {lr}
	ldr r0, _0800E0F0 @ =0x0203AF04
	thumb_func_end sub_0800E0E0

	thumb_func_start sub_0800E0E4
sub_0800E0E4: @ 0x0800E0E4
	ldr r0, [r0]
	bl sub_080038C8
	pop {r0}
	bx r0
	.align 2, 0
_0800E0F0: .4byte 0x0203AF04
	thumb_func_end sub_0800E0E4

	thumb_func_start sub_0800E0F4
sub_0800E0F4: @ 0x0800E0F4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	bx lr
	thumb_func_end sub_0800E0F4

	thumb_func_start sub_0800E104
sub_0800E104: @ 0x0800E104
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800E12C @ =0x0203AF04
	ldr r4, [r0]
	ldr r1, _0800E130 @ =0x0203AF0C
	ldr r0, [r1]
	cmp r5, r0
	bge _0800E126
	adds r6, r1, #0
_0800E116:
	adds r0, r4, #0
	bl sub_0800E0F4
	adds r5, #1
	adds r4, #0x14
	ldr r0, [r6]
	cmp r5, r0
	blt _0800E116
_0800E126:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E12C: .4byte 0x0203AF04
_0800E130: .4byte 0x0203AF0C
	thumb_func_end sub_0800E104

	thumb_func_start sub_0800E134
sub_0800E134: @ 0x0800E134
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800E14E
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0800E148
	bl sub_080028D4
_0800E148:
	adds r0, r4, #0
	bl sub_0800E0F4
_0800E14E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E134

	thumb_func_start sub_0800E154
sub_0800E154: @ 0x0800E154
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800E17C @ =0x0203AF04
	ldr r4, [r0]
	ldr r1, _0800E180 @ =0x0203AF0C
	ldr r0, [r1]
	cmp r5, r0
	bge _0800E176
	adds r6, r1, #0
_0800E166:
	adds r0, r4, #0
	bl sub_0800E134
	adds r5, #1
	adds r4, #0x14
	ldr r0, [r6]
	cmp r5, r0
	blt _0800E166
_0800E176:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E17C: .4byte 0x0203AF04
_0800E180: .4byte 0x0203AF0C
	thumb_func_end sub_0800E154

	thumb_func_start sub_0800E184
sub_0800E184: @ 0x0800E184
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r1, _0800E1A4 @ =0x0203AF04
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	cmp r2, r3
	bhs _0800E1B0
_0800E19A:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800E1A8
	adds r0, r1, #0
	b _0800E1B2
	.align 2, 0
_0800E1A4: .4byte 0x0203AF04
_0800E1A8:
	adds r2, #1
	adds r1, #0x14
	cmp r2, r3
	blo _0800E19A
_0800E1B0:
	movs r0, #0
_0800E1B2:
	pop {r1}
	thumb_func_end sub_0800E184

	thumb_func_start sub_0800E1B4
sub_0800E1B4: @ 0x0800E1B4
	bx r1
	.align 2, 0
	thumb_func_end sub_0800E1B4

	thumb_func_start sub_0800E1B8
sub_0800E1B8: @ 0x0800E1B8
	push {lr}
	movs r0, #9
	bl sub_080034D4
	cmp r0, #0
	beq _0800E1CA
	movs r0, #9
	bl sub_08003450
_0800E1CA:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E1B8

	thumb_func_start sub_0800E1D0
sub_0800E1D0: @ 0x0800E1D0
	push {r4, r5, r6, lr}
	bl sub_08002AD8
	cmp r0, #0
	beq _0800E200
	movs r4, #0
	ldr r6, _0800E1FC @ =0x0203AF04
	movs r5, #0
_0800E1E0:
	ldr r0, [r6]
	adds r1, r0, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _0800E1F0
	ldr r0, [r1, #4]
	bl sub_08002B30
_0800E1F0:
	adds r5, #0x14
	adds r4, #1
	cmp r4, #0x1f
	bls _0800E1E0
	b _0800E21E
	.align 2, 0
_0800E1FC: .4byte 0x0203AF04
_0800E200:
	movs r4, #0
	ldr r6, _0800E224 @ =0x0203AF04
	movs r5, #0
_0800E206:
	ldr r0, [r6]
	adds r1, r0, r5
	ldr r0, [r1]
	cmp r0, #0
	beq _0800E216
	ldr r0, [r1, #4]
	bl sub_08002B30
_0800E216:
	adds r5, #0x14
	adds r4, #1
	cmp r4, #0x1f
	bls _0800E206
_0800E21E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E224: .4byte 0x0203AF04
	thumb_func_end sub_0800E1D0

	thumb_func_start sub_0800E228
sub_0800E228: @ 0x0800E228
	push {lr}
	ldr r1, _0800E238 @ =sub_0800E1D0
	movs r0, #9
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800E238: .4byte sub_0800E1D0
	thumb_func_end sub_0800E228

	thumb_func_start sub_0800E23C
sub_0800E23C: @ 0x0800E23C
	push {lr}
	bl sub_08002B54
	cmp r0, #1
	beq _0800E252
	ldr r1, _0800E258 @ =sub_0800E228
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #9
	bl sub_08003344
_0800E252:
	pop {r0}
	bx r0
	.align 2, 0
_0800E258: .4byte sub_0800E228
	thumb_func_end sub_0800E23C

	thumb_func_start sub_0800E25C
sub_0800E25C: @ 0x0800E25C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _0800E282
	adds r0, r4, #0
	bl sub_080035C0
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800E27C
	adds r0, r1, #0
	bl sub_0800E134
_0800E27C:
	adds r0, r4, #0
	bl sub_08003450
_0800E282:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E25C

	thumb_func_start sub_0800E288
sub_0800E288: @ 0x0800E288
	push {lr}
	bl sub_080035FC
	bl sub_0800E25C
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E288

	thumb_func_start sub_0800E298
sub_0800E298: @ 0x0800E298
	push {r4, r5, r6, lr}
	bl sub_080035FC
	adds r6, r0, #0
	bl sub_080035C0
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800E362
	ldr r5, [r4, #4]
	adds r0, r5, #0
	bl sub_08001B58
	ldr r0, [r4]
	cmp r0, #1
	beq _0800E2C0
	cmp r0, #2
	beq _0800E2D2
	b _0800E2F0
_0800E2C0:
	ldrh r0, [r4, #0x12]
	subs r0, #1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E2F0
	movs r0, #2
	str r0, [r4]
	b _0800E2F0
_0800E2D2:
	ldrh r0, [r5, #0xc]
	subs r0, #5
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	bgt _0800E2F0
	movs r0, #5
	strh r0, [r5, #0xc]
	strh r0, [r5, #0xe]
	ldr r1, _0800E368 @ =sub_0800E288
	adds r0, r6, #0
	bl sub_0800356C
_0800E2F0:
	ldrh r0, [r4, #0x10]
	bl sub_0800686C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0x10]
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #4
	cmp r0, r3
	bgt _0800E32E
	ldrh r1, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4, #0x10]
_0800E32E:
	ldr r2, [r4, #8]
	ldr r0, _0800E36C @ =0x0000E7FF
	cmp r2, r0
	ble _0800E342
	ldrh r1, [r4, #0x10]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	subs r0, r0, r1
	strh r0, [r4, #0x10]
_0800E342:
	ldr r1, [r4, #0xc]
	cmp r1, r3
	bgt _0800E34E
	ldrh r0, [r4, #0x10]
	rsbs r0, r0, #0
	strh r0, [r4, #0x10]
_0800E34E:
	ldr r0, _0800E370 @ =0x000097FF
	cmp r1, r0
	ble _0800E35A
	ldrh r0, [r4, #0x10]
	rsbs r0, r0, #0
	strh r0, [r4, #0x10]
_0800E35A:
	ldr r1, [r4, #4]
	str r2, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_0800E362:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E368: .4byte sub_0800E288
_0800E36C: .4byte 0x0000E7FF
_0800E370: .4byte 0x000097FF
	thumb_func_end sub_0800E298

	thumb_func_start sub_0800E374
sub_0800E374: @ 0x0800E374
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0x20
	bl sub_0800E184
	adds r4, r0, #0
	cmp r4, #0
	beq _0800E3DA
	ldr r1, _0800E3E0 @ =sub_0800E298
	movs r2, #0xa0
	lsls r2, r2, #5
	adds r0, r5, #0
	bl sub_08003344
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080035AC
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	movs r1, #0
	movs r2, #0xe
	movs r3, #0
	bl sub_08001AE4
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_08006938
	lsls r0, r0, #8
	strh r0, [r4, #0x10]
	movs r0, #0xd2
	lsls r0, r0, #1
	bl sub_08006938
	adds r0, #0xb4
	strh r0, [r4, #0x12]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_0800E3DA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E3E0: .4byte sub_0800E298
	thumb_func_end sub_0800E374

	thumb_func_start sub_0800E3E4
sub_0800E3E4: @ 0x0800E3E4
	push {lr}
	movs r0, #0xb
	movs r1, #0x40
	bl sub_08003608
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800E3FE
	adds r0, r1, #0
	bl sub_0800E374
_0800E3FE:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E3E4

	thumb_func_start sub_0800E404
sub_0800E404: @ 0x0800E404
	push {r4, lr}
	movs r4, #0xb
_0800E408:
	adds r0, r4, #0
	bl sub_0800E25C
	adds r4, #1
	cmp r4, #0x3f
	ble _0800E408
	movs r0, #8
	bl sub_08003450
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800E404

	thumb_func_start sub_0800E420
sub_0800E420: @ 0x0800E420
	push {r4, r5, lr}
	bl sub_080035FC
	movs r5, #0
	movs r4, #0xb
_0800E42A:
	adds r0, r4, #0
	bl sub_080034D4
	cmp r0, #0
	beq _0800E436
	adds r5, #1
_0800E436:
	adds r4, #1
	cmp r4, #0x3f
	ble _0800E42A
	cmp r5, #4
	bgt _0800E458
	movs r0, #5
	bl sub_08006938
	adds r0, #0xa
	cmp r0, #0
	ble _0800E458
	adds r4, r0, #0
_0800E44E:
	bl sub_0800E3E4
	subs r4, #1
	cmp r4, #0
	bne _0800E44E
_0800E458:
	ldr r4, _0800E474 @ =0x02031E40
	ldr r1, _0800E478 @ =0x080484B0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08006A78
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E474: .4byte 0x02031E40
_0800E478: .4byte 0x080484B0
	thumb_func_end sub_0800E420

	thumb_func_start sub_0800E47C
sub_0800E47C: @ 0x0800E47C
	push {r4, r5, lr}
	bl sub_080035FC
	adds r5, r0, #0
	movs r4, #0x34
_0800E486:
	bl sub_0800E3E4
	subs r4, #1
	cmp r4, #0
	bge _0800E486
	ldr r1, _0800E4A0 @ =sub_0800E420
	adds r0, r5, #0
	bl sub_0800356C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4A0: .4byte sub_0800E420
	thumb_func_end sub_0800E47C

	thumb_func_start sub_0800E4A4
sub_0800E4A4: @ 0x0800E4A4
	push {r4, lr}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #9
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x80
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0
	movs r2, #0xd
	movs r3, #1
	bl sub_08003E7C
	ldr r1, _0800E4E0 @ =sub_0800E47C
	movs r2, #0x98
	lsls r2, r2, #5
	movs r0, #8
	bl sub_08003344
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E4E0: .4byte sub_0800E47C
	thumb_func_end sub_0800E4A4

	thumb_func_start sub_0800E4E4
sub_0800E4E4: @ 0x0800E4E4
	push {lr}
	movs r0, #0xa
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800E4E4

	thumb_func_start sub_0800E4F0
sub_0800E4F0: @ 0x0800E4F0
	push {r4, lr}
	ldr r4, _0800E500 @ =0x0203AF00
	ldr r0, [r4]
	cmp r0, #0
	beq _0800E504
	cmp r0, #1
	beq _0800E524
	b _0800E550
	.align 2, 0
_0800E500: .4byte 0x0203AF00
_0800E504:
	ldr r0, _0800E520 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E550
	bl sub_0800A2BC
	bl sub_0800A3B4
	movs r0, #1
	str r0, [r4]
	b _0800E550
	.align 2, 0
_0800E520: .4byte 0x030014A4
_0800E524:
	bl sub_0800A434
	ldr r2, _0800E560 @ =0x03001020
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	orrs r0, r1
	ldrh r1, [r2, #4]
	orrs r0, r1
	ldrh r1, [r2, #6]
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E550
	movs r0, #0
	str r0, [r4]
	bl sub_0800A468
	bl sub_0800A2BC
_0800E550:
	movs r0, #0x14
	movs r1, #0xa
	bl sub_0800A21C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E560: .4byte 0x03001020
	thumb_func_end sub_0800E4F0

	thumb_func_start sub_0800E564
sub_0800E564: @ 0x0800E564
	push {lr}
	bl sub_0800A2BC
	bl sub_0800A3B4
	ldr r1, _0800E584 @ =0x0203AF00
	movs r0, #0
	str r0, [r1]
	bl sub_080035FC
	ldr r1, _0800E588 @ =sub_0800E4F0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800E584: .4byte 0x0203AF00
_0800E588: .4byte sub_0800E4F0
	thumb_func_end sub_0800E564

	thumb_func_start sub_0800E58C
sub_0800E58C: @ 0x0800E58C
	push {lr}
	ldr r1, _0800E5A0 @ =sub_0800E564
	movs r2, #0x90
	lsls r2, r2, #5
	movs r0, #0xa
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800E5A0: .4byte sub_0800E564
	thumb_func_end sub_0800E58C

	thumb_func_start sub_0800E5A4
sub_0800E5A4: @ 0x0800E5A4
	push {r4, r5, lr}
	ldr r2, _0800E5D8 @ =0x0203AB74
	ldr r1, _0800E5DC @ =0x0203A7E0
	subs r4, r2, #4
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r5, r1, r0
	movs r3, #0xe2
_0800E5B4:
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	subs r3, #1
	adds r2, #4
	adds r1, #4
	cmp r3, #0
	bge _0800E5B4
	adds r2, r4, #0
	adds r1, r5, #0
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E5D8: .4byte 0x0203AB74
_0800E5DC: .4byte 0x0203A7E0
	thumb_func_end sub_0800E5A4

	thumb_func_start sub_0800E5E0
sub_0800E5E0: @ 0x0800E5E0
	push {lr}
	movs r0, #7
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800E5E0

	thumb_func_start sub_0800E5EC
sub_0800E5EC: @ 0x0800E5EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, _0800E638 @ =0x0203AB70
	movs r6, #0
	mov r8, r6
	movs r5, #0xe3
_0800E5FA:
	ldr r7, _0800E63C @ =0x0203A7D0
	ldr r0, [r7]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r1, r1, r0
	asrs r1, r1, #4
	strh r1, [r4]
	mov r0, r8
	strh r0, [r4, #2]
	adds r4, #4
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r6, r6, r1
	subs r5, #1
	cmp r5, #0
	bge _0800E5FA
	ldr r0, [r7]
	subs r1, #0x80
	adds r0, r0, r1
	str r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800E638: .4byte 0x0203AB70
_0800E63C: .4byte 0x0203A7D0
	thumb_func_end sub_0800E5EC

	thumb_func_start sub_0800E640
sub_0800E640: @ 0x0800E640
	push {r4, r5, lr}
	ldr r4, _0800E674 @ =0x0203A7D0
	ldr r5, _0800E678 @ =sub_0800E5EC
	movs r2, #0
	ldr r3, _0800E67C @ =0x0203A7E0
	ldr r0, _0800E680 @ =0x0203AB70
	movs r1, #0xe3
_0800E64E:
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r3]
	strh r2, [r3, #2]
	adds r3, #4
	adds r0, #4
	subs r1, #1
	cmp r1, #0
	bge _0800E64E
	movs r0, #0
	str r0, [r4]
	movs r0, #7
	adds r1, r5, #0
	bl sub_0800356C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800E674: .4byte 0x0203A7D0
_0800E678: .4byte sub_0800E5EC
_0800E67C: .4byte 0x0203A7E0
_0800E680: .4byte 0x0203AB70
	thumb_func_end sub_0800E640

	thumb_func_start sub_0800E684
sub_0800E684: @ 0x0800E684
	push {lr}
	ldr r1, _0800E698 @ =sub_0800E640
	movs r2, #0xa8
	lsls r2, r2, #5
	movs r0, #7
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800E698: .4byte sub_0800E640
	thumb_func_end sub_0800E684

	thumb_func_start sub_0800E69C
sub_0800E69C: @ 0x0800E69C
	push {lr}
	bl sub_0800E5A4
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E69C

	thumb_func_start sub_0800E6A8
sub_0800E6A8: @ 0x0800E6A8
	push {lr}
	bl sub_080008E4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xe
	ldr r1, _0800E6CC @ =0x0203A7E0
	adds r2, r0, r1
	ldr r0, _0800E6D0 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800E6C8
	ldr r1, _0800E6D4 @ =0x04000014
	ldrh r0, [r2]
	strh r0, [r1]
_0800E6C8:
	pop {r0}
	bx r0
	.align 2, 0
_0800E6CC: .4byte 0x0203A7E0
_0800E6D0: .4byte 0x04000004
_0800E6D4: .4byte 0x04000014
	thumb_func_end sub_0800E6A8

	thumb_func_start sub_0800E6D8
sub_0800E6D8: @ 0x0800E6D8
	push {lr}
	bl sub_08003928
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E6D8

	thumb_func_start sub_0800E6E4
sub_0800E6E4: @ 0x0800E6E4
	push {r4, lr}
	sub sp, #0x18
	add r1, sp, #0x14
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800E7E0 @ =0x0100C000
	add r0, sp, #0x14
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #0
	bl sub_08000F0C
	movs r0, #3
	movs r1, #0
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800E7E4 @ =0x08205348
	bl sub_08000D40
	movs r0, #0
	bl sub_08001000
	movs r0, #0
	movs r1, #0
	bl sub_0800101C
	movs r0, #0
	bl sub_0800104C
	movs r0, #0
	movs r1, #0
	bl sub_0800105C
	movs r0, #1
	movs r1, #0
	bl sub_0800105C
	movs r0, #2
	movs r1, #0
	bl sub_0800105C
	movs r0, #3
	movs r1, #0
	bl sub_0800105C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001094
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _0800E7E8 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	movs r0, #0x80
	lsls r0, r0, #7
	str r4, [sp]
	movs r1, #0
	movs r2, #0x14
	movs r3, #1
	bl sub_08003D38
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x15
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x80
	lsls r0, r0, #5
	str r4, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #0
	movs r2, #0x16
	movs r3, #0
	bl sub_08003F8C
	add sp, #0x18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E7E0: .4byte 0x0100C000
_0800E7E4: .4byte 0x08205348
_0800E7E8: .4byte 0x0000F3FF
	thumb_func_end sub_0800E6E4

	thumb_func_start sub_0800E7EC
sub_0800E7EC: @ 0x0800E7EC
	push {lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800E7EC

	thumb_func_start sub_0800E804
sub_0800E804: @ 0x0800E804
	bx lr
	.align 2, 0
	thumb_func_end sub_0800E804

	thumb_func_start sub_0800E808
sub_0800E808: @ 0x0800E808
	push {r4, lr}
	ldr r0, _0800E84C @ =sub_0800E69C
	bl sub_080032C0
	ldr r0, _0800E850 @ =sub_0800E6A8
	bl sub_080032CC
	movs r0, #3
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	ldr r1, _0800E854 @ =sub_0800E804
	movs r0, #4
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E84C: .4byte sub_0800E69C
_0800E850: .4byte sub_0800E6A8
_0800E854: .4byte sub_0800E804
	thumb_func_end sub_0800E808

	thumb_func_start sub_0800E858
sub_0800E858: @ 0x0800E858
	push {lr}
	ldr r1, _0800E868 @ =sub_0800E808
	ldr r2, _0800E86C @ =0x0000EFFF
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800E868: .4byte sub_0800E808
_0800E86C: .4byte 0x0000EFFF
	thumb_func_end sub_0800E858

	thumb_func_start sub_0800E870
sub_0800E870: @ 0x0800E870
	push {lr}
	bl sub_0800E404
	bl sub_0800E5E0
	bl sub_0800E1B8
	bl sub_0800E154
	bl sub_0800E0E0
	bl sub_0800E7EC
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800E870

	thumb_func_start sub_0800E8A4
sub_0800E8A4: @ 0x0800E8A4
	push {lr}
	bl sub_08006AEC
	ldr r1, _0800E8C4 @ =0x0300149C
	ldr r0, [r1]
	cmp r0, #0
	beq _0800E8D4
	cmp r0, #1
	bne _0800E8CC
	ldr r0, _0800E8C8 @ =sub_08007154
	bl sub_08003640
	bl sub_0800E870
	b _0800E8E4
	.align 2, 0
_0800E8C4: .4byte 0x0300149C
_0800E8C8: .4byte sub_08007154
_0800E8CC:
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0800E8E4
_0800E8D4:
	ldr r0, _0800E8E8 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E8E4
	bl sub_0800E09C
_0800E8E4:
	pop {r0}
	bx r0
	.align 2, 0
_0800E8E8: .4byte 0x030014A4
	thumb_func_end sub_0800E8A4

	thumb_func_start sub_0800E8EC
sub_0800E8EC: @ 0x0800E8EC
	push {lr}
	ldr r1, _0800E930 @ =0x0300149C
	movs r0, #0
	str r0, [r1]
	bl sub_08006AB4
	bl sub_0800E6D8
	movs r0, #0x20
	bl sub_0800E0BC
	bl sub_0800E104
	bl sub_0800E6E4
	bl sub_0800E4A4
	bl sub_0800E684
	bl sub_0800E23C
	bl sub_08003928
	bl sub_0800E858
	ldr r0, _0800E934 @ =sub_0800E870
	bl sub_08003980
	ldr r1, _0800E938 @ =sub_0800E8A4
	movs r0, #5
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800E930: .4byte 0x0300149C
_0800E934: .4byte sub_0800E870
_0800E938: .4byte sub_0800E8A4
	thumb_func_end sub_0800E8EC

	thumb_func_start sub_0800E93C
sub_0800E93C: @ 0x0800E93C
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _0800E968 @ =sub_0800E8EC
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800E968: .4byte sub_0800E8EC
	thumb_func_end sub_0800E93C

	thumb_func_start sub_0800E96C
sub_0800E96C: @ 0x0800E96C
	push {lr}
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	movs r0, #1
	bl sub_080104AC
	ldr r1, _0800E988 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800E988: .4byte 0x0300149C
	thumb_func_end sub_0800E96C

	thumb_func_start sub_0800E98C
sub_0800E98C: @ 0x0800E98C
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0800E9A8 @ =0x0203AF1C
	str r1, [r0]
	ldr r4, _0800E9AC @ =0x0203AF18
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9A8: .4byte 0x0203AF1C
_0800E9AC: .4byte 0x0203AF18
	thumb_func_end sub_0800E98C

	thumb_func_start sub_0800E9B0
sub_0800E9B0: @ 0x0800E9B0
	push {lr}
	ldr r0, _0800E9C0 @ =0x0203AF18
	ldr r0, [r0]
	bl sub_080038C8
	pop {r0}
	bx r0
	.align 2, 0
_0800E9C0: .4byte 0x0203AF18
	thumb_func_end sub_0800E9B0

	thumb_func_start sub_0800E9C4
sub_0800E9C4: @ 0x0800E9C4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_0800E9C4

	thumb_func_start sub_0800E9D0
sub_0800E9D0: @ 0x0800E9D0
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800E9F8 @ =0x0203AF18
	ldr r4, [r0]
	ldr r1, _0800E9FC @ =0x0203AF1C
	ldr r0, [r1]
	cmp r5, r0
	bge _0800E9F2
	adds r6, r1, #0
_0800E9E2:
	adds r0, r4, #0
	bl sub_0800E9C4
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0800E9E2
_0800E9F2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800E9F8: .4byte 0x0203AF18
_0800E9FC: .4byte 0x0203AF1C
	thumb_func_end sub_0800E9D0

	thumb_func_start sub_0800EA00
sub_0800EA00: @ 0x0800EA00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800EA1A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0800EA14
	bl sub_080028D4
_0800EA14:
	adds r0, r4, #0
	bl sub_0800E9C4
_0800EA1A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800EA00

	thumb_func_start sub_0800EA20
sub_0800EA20: @ 0x0800EA20
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800EA48 @ =0x0203AF18
	ldr r4, [r0]
	ldr r1, _0800EA4C @ =0x0203AF1C
	ldr r0, [r1]
	cmp r5, r0
	bge _0800EA42
	adds r6, r1, #0
_0800EA32:
	adds r0, r4, #0
	bl sub_0800EA00
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0800EA32
_0800EA42:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800EA48: .4byte 0x0203AF18
_0800EA4C: .4byte 0x0203AF1C
	thumb_func_end sub_0800EA20

	thumb_func_start sub_0800EA50
sub_0800EA50: @ 0x0800EA50
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _0800EA6C @ =0x0203AF18
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
	cmp r2, r3
	bhs _0800EA78
_0800EA62:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800EA70
	adds r0, r1, #0
	b _0800EA7A
	.align 2, 0
_0800EA6C: .4byte 0x0203AF18
_0800EA70:
	adds r2, #1
	adds r1, #0x10
	cmp r2, r3
	blo _0800EA62
_0800EA78:
	movs r0, #0
_0800EA7A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800EA50

	thumb_func_start sub_0800EA80
sub_0800EA80: @ 0x0800EA80
	push {r4, r5, lr}
	movs r0, #7
	bl sub_080034D4
	cmp r0, #0
	beq _0800EAAE
	movs r4, #0
	ldr r5, _0800EAB4 @ =0x0203AF18
_0800EA90:
	lsls r0, r4, #4
	ldr r1, [r5]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0800EAA2
	adds r0, r1, #0
	bl sub_0800EA00
_0800EAA2:
	adds r4, #1
	cmp r4, #3
	ble _0800EA90
	movs r0, #7
	bl sub_08003450
_0800EAAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EAB4: .4byte 0x0203AF18
	thumb_func_end sub_0800EA80

	thumb_func_start sub_0800EAB8
sub_0800EAB8: @ 0x0800EAB8
	push {r4, r5, lr}
	movs r5, #0
_0800EABC:
	ldr r0, _0800EB38 @ =0x0203AF18
	lsls r1, r5, #4
	ldr r0, [r0]
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0800EB2C
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, _0800EB3C @ =0x03001028
	lsls r0, r5, #1
	adds r2, r0, r1
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800EAE8
	ldr r0, [r4, #0xc]
	ldr r1, _0800EB40 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0800EAE8:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EAFC
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #0xc]
_0800EAFC:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800EB10
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r4, #8]
_0800EB10:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800EB22
	ldr r0, [r4, #8]
	ldr r1, _0800EB40 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #8]
_0800EB22:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0xc]
	str r1, [r0, #4]
_0800EB2C:
	adds r5, #1
	cmp r5, #3
	ble _0800EABC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB38: .4byte 0x0203AF18
_0800EB3C: .4byte 0x03001028
_0800EB40: .4byte 0xFFFFFF00
	thumb_func_end sub_0800EAB8

	thumb_func_start sub_0800EB44
sub_0800EB44: @ 0x0800EB44
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080035FC
	adds r7, r0, #0
	movs r6, #0
	ldr r0, _0800EB94 @ =0x0203AF18
	mov r8, r0
	ldr r5, _0800EB98 @ =0x08205378
_0800EB58:
	lsls r0, r6, #4
	mov r1, r8
	ldr r4, [r1]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x22
	movs r3, #0
	bl sub_08001AE4
	str r0, [r4, #4]
	ldr r0, [r5]
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	str r0, [r4, #0xc]
	adds r5, #8
	adds r6, #1
	cmp r6, #3
	ble _0800EB58
	ldr r1, _0800EB9C @ =sub_0800EAB8
	adds r0, r7, #0
	bl sub_0800356C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800EB94: .4byte 0x0203AF18
_0800EB98: .4byte 0x08205378
_0800EB9C: .4byte sub_0800EAB8
	thumb_func_end sub_0800EB44

	thumb_func_start sub_0800EBA0
sub_0800EBA0: @ 0x0800EBA0
	push {lr}
	ldr r1, _0800EBB4 @ =sub_0800EB44
	movs r2, #0x80
	lsls r2, r2, #6
	movs r0, #7
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800EBB4: .4byte sub_0800EB44
	thumb_func_end sub_0800EBA0

	thumb_func_start sub_0800EBB8
sub_0800EBB8: @ 0x0800EBB8
	ldr r0, _0800EBC0 @ =0x0203AF10
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800EBC0: .4byte 0x0203AF10
	thumb_func_end sub_0800EBB8

	thumb_func_start sub_0800EBC4
sub_0800EBC4: @ 0x0800EBC4
	push {lr}
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800EBC4

	thumb_func_start sub_0800EBD0
sub_0800EBD0: @ 0x0800EBD0
	push {lr}
	bl sub_0800A584
	cmp r0, #0
	bne _0800EBF6
	movs r0, #2
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800EBF6
	movs r0, #3
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800EBF6
	ldr r0, _0800EC0C @ =0x03001E30
	ldr r0, [r0]
	cmp r0, #1
	bls _0800EC06
_0800EBF6:
	bl sub_0800A5C0
	movs r0, #1
	bl sub_0800A1E0
	ldr r1, _0800EC10 @ =0x0203AF10
	movs r0, #1
	str r0, [r1]
_0800EC06:
	pop {r0}
	bx r0
	.align 2, 0
_0800EC0C: .4byte 0x03001E30
_0800EC10: .4byte 0x0203AF10
	thumb_func_end sub_0800EBD0

	thumb_func_start sub_0800EC14
sub_0800EC14: @ 0x0800EC14
	push {lr}
	bl sub_080035FC
	ldr r2, _0800EC2C @ =0x0203AF10
	movs r1, #0
	str r1, [r2]
	ldr r1, _0800EC30 @ =sub_0800EBD0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800EC2C: .4byte 0x0203AF10
_0800EC30: .4byte sub_0800EBD0
	thumb_func_end sub_0800EC14

	thumb_func_start sub_0800EC34
sub_0800EC34: @ 0x0800EC34
	push {lr}
	ldr r1, _0800EC44 @ =sub_0800EC14
	ldr r2, _0800EC48 @ =0x00001001
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800EC44: .4byte sub_0800EC14
_0800EC48: .4byte 0x00001001
	thumb_func_end sub_0800EC34

	thumb_func_start sub_0800EC4C
sub_0800EC4C: @ 0x0800EC4C
	push {lr}
	movs r0, #6
	bl sub_080034D4
	cmp r0, #0
	beq _0800EC66
	bl sub_0800A468
	bl sub_0800A2BC
	movs r0, #6
	bl sub_08003450
_0800EC66:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800EC4C

	thumb_func_start sub_0800EC6C
sub_0800EC6C: @ 0x0800EC6C
	push {r4, lr}
	ldr r4, _0800EC7C @ =0x0203AF14
	ldr r0, [r4]
	cmp r0, #0
	beq _0800EC80
	cmp r0, #0x64
	beq _0800ECA0
	b _0800ECE0
	.align 2, 0
_0800EC7C: .4byte 0x0203AF14
_0800EC80:
	ldr r0, _0800EC9C @ =0x03001038
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800ECE0
	movs r0, #0x64
	str r0, [r4]
	bl sub_0800A2BC
	bl sub_0800A3B4
	b _0800ECE0
	.align 2, 0
_0800EC9C: .4byte 0x03001038
_0800ECA0:
	bl sub_0800A434
	ldr r0, _0800ECE8 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800ECBC
	bl sub_0800A468
	bl sub_0800A2BC
	movs r0, #0
	str r0, [r4]
_0800ECBC:
	ldr r2, _0800ECEC @ =0x03001028
	ldrh r1, [r2]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0800ECD4
	ldrh r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800ECE0
_0800ECD4:
	bl sub_0800A468
	bl sub_0800A2BC
	movs r0, #0
	str r0, [r4]
_0800ECE0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800ECE8: .4byte 0x03001038
_0800ECEC: .4byte 0x03001028
	thumb_func_end sub_0800EC6C

	thumb_func_start sub_0800ECF0
sub_0800ECF0: @ 0x0800ECF0
	push {r4, r5, lr}
	ldr r5, _0800ED14 @ =0x0203AF14
	ldr r0, [r5]
	cmp r0, #0
	beq _0800ECFE
	bl sub_0800A434
_0800ECFE:
	ldr r0, [r5]
	cmp r0, #0x6e
	beq _0800EDC8
	cmp r0, #0x6e
	bgt _0800ED18
	cmp r0, #0
	beq _0800ED1E
	cmp r0, #0x64
	beq _0800ED3C
	b _0800EDFE
	.align 2, 0
_0800ED14: .4byte 0x0203AF14
_0800ED18:
	cmp r0, #0x78
	beq _0800EDE8
	b _0800EDFE
_0800ED1E:
	ldr r0, _0800ED38 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EDFE
	movs r0, #0x64
	str r0, [r5]
	bl sub_0800A2BC
	bl sub_0800A3B4
	b _0800EDFE
	.align 2, 0
_0800ED38: .4byte 0x03001038
_0800ED3C:
	bl sub_0800A4E0
	cmp r0, #0
	bne _0800EDB4
	movs r0, #0
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #1
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #2
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #3
	bl sub_0800A4CC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #0
	bl sub_0800A4FC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #1
	bl sub_0800A4FC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #2
	bl sub_0800A4FC
	cmp r0, #0
	bne _0800EDFE
	movs r0, #3
	bl sub_0800A4FC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EDFE
	ldr r0, _0800EDB0 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800EDFE
	bl sub_0800A468
	bl sub_0800A2BC
	str r4, [r5]
	b _0800EDFE
	.align 2, 0
_0800EDB0: .4byte 0x03001038
_0800EDB4:
	movs r0, #0x6e
	str r0, [r5]
	ldr r1, _0800EDC4 @ =0x0203AF20
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0800EDFE
	.align 2, 0
_0800EDC4: .4byte 0x0203AF20
_0800EDC8:
	ldr r2, _0800EDE4 @ =0x03001028
	ldrh r1, [r2]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0800EDE0
	ldrh r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800EDFE
_0800EDE0:
	movs r0, #0x78
	b _0800EDFC
	.align 2, 0
_0800EDE4: .4byte 0x03001028
_0800EDE8:
	movs r0, #3
	bl sub_0800A6C0
	cmp r0, #0
	beq _0800EDFE
	bl sub_0800A468
	bl sub_0800A2BC
	movs r0, #0
_0800EDFC:
	str r0, [r5]
_0800EDFE:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800ECF0

	thumb_func_start sub_0800EE04
sub_0800EE04: @ 0x0800EE04
	push {r4, r5, lr}
	ldr r5, _0800EE1C @ =0x0203AF14
	ldr r0, [r5]
	cmp r0, #0x6e
	beq _0800EE80
	cmp r0, #0x6e
	bgt _0800EE20
	cmp r0, #0
	beq _0800EE26
	cmp r0, #0x64
	beq _0800EE44
	b _0800EEAE
	.align 2, 0
_0800EE1C: .4byte 0x0203AF14
_0800EE20:
	cmp r0, #0x78
	beq _0800EEA0
	b _0800EEAE
_0800EE26:
	ldr r0, _0800EE40 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EEAE
	movs r0, #0x64
	str r0, [r5]
	bl sub_0800A2BC
	bl sub_0800A3B4
	b _0800EEAE
	.align 2, 0
_0800EE40: .4byte 0x03001038
_0800EE44:
	movs r0, #3
	bl sub_0800A618
	adds r4, r0, #0
	cmp r4, #0
	beq _0800EE64
	movs r0, #0x6e
	str r0, [r5]
	ldr r1, _0800EE60 @ =0x0203AF20
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _0800EEAE
	.align 2, 0
_0800EE60: .4byte 0x0203AF20
_0800EE64:
	ldr r0, _0800EE7C @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800EEAE
	bl sub_0800A468
	bl sub_0800A2BC
	str r4, [r5]
	b _0800EEAE
	.align 2, 0
_0800EE7C: .4byte 0x030014A4
_0800EE80:
	ldr r2, _0800EE9C @ =0x03001028
	ldrh r1, [r2]
	movs r3, #4
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0800EE98
	ldrh r1, [r2, #2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800EEAE
_0800EE98:
	movs r0, #0x78
	b _0800EEAC
	.align 2, 0
_0800EE9C: .4byte 0x03001028
_0800EEA0:
	movs r0, #3
	bl sub_0800A66C
	cmp r0, #0
	beq _0800EEAE
	movs r0, #0
_0800EEAC:
	str r0, [r5]
_0800EEAE:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800EE04

	thumb_func_start sub_0800EEB4
sub_0800EEB4: @ 0x0800EEB4
	push {r4, r5, lr}
	ldr r0, _0800EF2C @ =0x0300149C
	ldr r0, [r0]
	cmp r0, #0
	bne _0800EF54
	ldr r2, _0800EF30 @ =0x03001038
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EED4
	ldr r0, _0800EF34 @ =0x0007A120
_0800EECE:
	subs r0, #1
	cmp r0, #0
	bne _0800EECE
_0800EED4:
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800EEE8
	ldr r0, _0800EF38 @ =0x004C4B40
_0800EEE2:
	subs r0, #1
	cmp r0, #0
	bne _0800EEE2
_0800EEE8:
	bl sub_0800EBB8
	cmp r0, #0
	beq _0800EF50
	ldr r5, _0800EF3C @ =0x02031E40
	ldr r1, _0800EF40 @ =0x080484BC
	adds r0, r5, #0
	bl sub_08007F1C
	ldr r0, _0800EF30 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800EF20
	ldr r0, _0800EF44 @ =0x0203AF10
	movs r4, #0
	str r4, [r0]
	ldr r1, _0800EF48 @ =0x080484C4
	adds r0, r5, #0
	bl sub_08007F1C
	ldr r0, _0800EF4C @ =0x0203AF14
	str r4, [r0]
	bl sub_0800A468
	bl sub_0800A2BC
_0800EF20:
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0xa
	bl sub_08006A78
	b _0800EF54
	.align 2, 0
_0800EF2C: .4byte 0x0300149C
_0800EF30: .4byte 0x03001038
_0800EF34: .4byte 0x0007A120
_0800EF38: .4byte 0x004C4B40
_0800EF3C: .4byte 0x02031E40
_0800EF40: .4byte 0x080484BC
_0800EF44: .4byte 0x0203AF10
_0800EF48: .4byte 0x080484C4
_0800EF4C: .4byte 0x0203AF14
_0800EF50:
	bl sub_0800ECF0
_0800EF54:
	ldr r4, _0800EFE8 @ =0x02031E40
	ldr r1, _0800EFEC @ =0x080484CC
	ldr r0, _0800EFF0 @ =0x0203AF14
	ldr r2, [r0]
	ldr r0, _0800EFF4 @ =0x0203AF20
	ldr r3, [r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0
	bl sub_08006A78
	ldr r5, _0800EFF8 @ =0x080484DC
	ldr r0, _0800EFFC @ =0x03001E30
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_08006A78
	ldr r0, _0800F000 @ =0x03001EB8
	ldrb r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_08006A78
	ldr r0, _0800F004 @ =0x03001EB0
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #2
	bl sub_08006A78
	ldr r0, _0800F008 @ =0x03001EB4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #3
	bl sub_08006A78
	ldr r0, _0800F00C @ =0x03001ED8
	ldrh r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl sub_08006A78
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800EFE8: .4byte 0x02031E40
_0800EFEC: .4byte 0x080484CC
_0800EFF0: .4byte 0x0203AF14
_0800EFF4: .4byte 0x0203AF20
_0800EFF8: .4byte 0x080484DC
_0800EFFC: .4byte 0x03001E30
_0800F000: .4byte 0x03001EB8
_0800F004: .4byte 0x03001EB0
_0800F008: .4byte 0x03001EB4
_0800F00C: .4byte 0x03001ED8
	thumb_func_end sub_0800EEB4

	thumb_func_start sub_0800F010
sub_0800F010: @ 0x0800F010
	push {lr}
	bl sub_080035FC
	ldr r1, _0800F02C @ =0x0203AF14
	movs r2, #0
	str r2, [r1]
	ldr r1, _0800F030 @ =0x0203AF20
	str r2, [r1]
	ldr r1, _0800F034 @ =sub_0800EEB4
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800F02C: .4byte 0x0203AF14
_0800F030: .4byte 0x0203AF20
_0800F034: .4byte sub_0800EEB4
	thumb_func_end sub_0800F010

	thumb_func_start sub_0800F038
sub_0800F038: @ 0x0800F038
	push {lr}
	bl sub_0800A2BC
	ldr r1, _0800F04C @ =sub_0800F010
	ldr r2, _0800F050 @ =0x00001002
	movs r0, #6
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800F04C: .4byte sub_0800F010
_0800F050: .4byte 0x00001002
	thumb_func_end sub_0800F038

	thumb_func_start sub_0800F054
sub_0800F054: @ 0x0800F054
	push {r4, r5, lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800F100 @ =0x0100C000
	add r0, sp, #8
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800F104 @ =0x08205398
	bl sub_08000D40
	movs r5, #0x80
	lsls r5, r5, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r5, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	movs r0, #0
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _0800F108 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	ldr r1, _0800F10C @ =0x0000F3FE
	movs r0, #3
	movs r2, #0
	bl sub_08000E44
	movs r0, #0x80
	lsls r0, r0, #9
	str r4, [sp]
	movs r1, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08003D38
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x21
	movs r3, #1
	bl sub_08003E7C
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800F100: .4byte 0x0100C000
_0800F104: .4byte 0x08205398
_0800F108: .4byte 0x0000F3FF
_0800F10C: .4byte 0x0000F3FE
	thumb_func_end sub_0800F054

	thumb_func_start sub_0800F110
sub_0800F110: @ 0x0800F110
	push {lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #8
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800F110

	thumb_func_start sub_0800F128
sub_0800F128: @ 0x0800F128
	bx lr
	.align 2, 0
	thumb_func_end sub_0800F128

	thumb_func_start sub_0800F12C
sub_0800F12C: @ 0x0800F12C
	push {r4, lr}
	movs r0, #1
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	ldr r1, _0800F164 @ =sub_0800F128
	movs r0, #8
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F164: .4byte sub_0800F128
	thumb_func_end sub_0800F12C

	thumb_func_start sub_0800F168
sub_0800F168: @ 0x0800F168
	push {lr}
	ldr r1, _0800F178 @ =sub_0800F12C
	ldr r2, _0800F17C @ =0x0000EFFF
	movs r0, #8
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800F178: .4byte sub_0800F12C
_0800F17C: .4byte 0x0000EFFF
	thumb_func_end sub_0800F168

	thumb_func_start sub_0800F180
sub_0800F180: @ 0x0800F180
	push {lr}
	bl sub_0800EA20
	bl sub_0800E9B0
	bl sub_0800EA80
	bl sub_0800EBC4
	bl sub_0800F038
	bl sub_0800F110
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800F180

	thumb_func_start sub_0800F1B4
sub_0800F1B4: @ 0x0800F1B4
	push {lr}
	bl sub_08006AEC
	ldr r1, _0800F1D4 @ =0x0300149C
	ldr r0, [r1]
	cmp r0, #0
	beq _0800F1E0
	cmp r0, #1
	bne _0800F1DC
	ldr r0, _0800F1D8 @ =sub_08007154
	bl sub_08003640
	bl sub_0800F180
	b _0800F1F4
	.align 2, 0
_0800F1D4: .4byte 0x0300149C
_0800F1D8: .4byte sub_08007154
_0800F1DC:
	subs r0, #1
	str r0, [r1]
_0800F1E0:
	ldr r0, _0800F1F8 @ =0x03001910
	ldr r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r0, #3
	bl sub_08000D9C
_0800F1F4:
	pop {r0}
	bx r0
	.align 2, 0
_0800F1F8: .4byte 0x03001910
	thumb_func_end sub_0800F1B4

	thumb_func_start sub_0800F1FC
sub_0800F1FC: @ 0x0800F1FC
	push {lr}
	ldr r1, _0800F240 @ =0x0300149C
	movs r0, #0
	str r0, [r1]
	bl sub_08006AB4
	movs r0, #1
	bl sub_08000474
	movs r0, #0x14
	bl sub_0800E98C
	bl sub_0800E9D0
	bl sub_0800F054
	bl sub_0800EBA0
	bl sub_0800EC34
	bl sub_0800F038
	bl sub_0800F168
	ldr r0, _0800F244 @ =sub_0800F180
	bl sub_08003980
	ldr r1, _0800F248 @ =sub_0800F1B4
	movs r0, #4
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800F240: .4byte 0x0300149C
_0800F244: .4byte sub_0800F180
_0800F248: .4byte sub_0800F1B4
	thumb_func_end sub_0800F1FC

	thumb_func_start sub_0800F24C
sub_0800F24C: @ 0x0800F24C
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _0800F278 @ =sub_0800F1FC
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800F278: .4byte sub_0800F1FC
	thumb_func_end sub_0800F24C

	thumb_func_start sub_0800F27C
sub_0800F27C: @ 0x0800F27C
	push {lr}
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	movs r0, #1
	bl sub_080104AC
	ldr r1, _0800F298 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0800F298: .4byte 0x0300149C
	thumb_func_end sub_0800F27C

	thumb_func_start sub_0800F29C
sub_0800F29C: @ 0x0800F29C
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _0800F2B8 @ =0x0203AF30
	str r1, [r0]
	ldr r4, _0800F2BC @ =0x0203AF34
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F2B8: .4byte 0x0203AF30
_0800F2BC: .4byte 0x0203AF34
	thumb_func_end sub_0800F29C

	thumb_func_start sub_0800F2C0
sub_0800F2C0: @ 0x0800F2C0
	push {lr}
	ldr r0, _0800F2D0 @ =0x0203AF34
	ldr r0, [r0]
	bl sub_080038C8
	pop {r0}
	bx r0
	.align 2, 0
_0800F2D0: .4byte 0x0203AF34
	thumb_func_end sub_0800F2C0

	thumb_func_start sub_0800F2D4
sub_0800F2D4: @ 0x0800F2D4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_0800F2D4

	thumb_func_start sub_0800F2E0
sub_0800F2E0: @ 0x0800F2E0
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800F308 @ =0x0203AF34
	ldr r4, [r0]
	ldr r1, _0800F30C @ =0x0203AF30
	ldr r0, [r1]
	cmp r5, r0
	bge _0800F302
	adds r6, r1, #0
_0800F2F2:
	adds r0, r4, #0
	bl sub_0800F2D4
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0800F2F2
_0800F302:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F308: .4byte 0x0203AF34
_0800F30C: .4byte 0x0203AF30
	thumb_func_end sub_0800F2E0

	thumb_func_start sub_0800F310
sub_0800F310: @ 0x0800F310
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0800F32A
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0800F324
	bl sub_080028D4
_0800F324:
	adds r0, r4, #0
	bl sub_0800F2D4
_0800F32A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800F310

	thumb_func_start sub_0800F330
sub_0800F330: @ 0x0800F330
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _0800F358 @ =0x0203AF34
	ldr r4, [r0]
	ldr r1, _0800F35C @ =0x0203AF30
	ldr r0, [r1]
	cmp r5, r0
	bge _0800F352
	adds r6, r1, #0
_0800F342:
	adds r0, r4, #0
	bl sub_0800F310
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0800F342
_0800F352:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800F358: .4byte 0x0203AF34
_0800F35C: .4byte 0x0203AF30
	thumb_func_end sub_0800F330

	thumb_func_start sub_0800F360
sub_0800F360: @ 0x0800F360
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _0800F37C @ =0x0203AF34
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
	cmp r2, r3
	bhs _0800F388
_0800F372:
	ldr r0, [r1]
	cmp r0, #0
	bne _0800F380
	adds r0, r1, #0
	b _0800F38A
	.align 2, 0
_0800F37C: .4byte 0x0203AF34
_0800F380:
	adds r2, #1
	adds r1, #0x10
	cmp r2, r3
	blo _0800F372
_0800F388:
	movs r0, #0
_0800F38A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0800F360

	thumb_func_start sub_0800F390
sub_0800F390: @ 0x0800F390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r1, [sp, #4]
	adds r5, r2, #0
	adds r4, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xf0
	lsls r0, r0, #7
	add r0, r8
	mov sl, r0
	movs r3, #0xa0
	lsls r3, r3, #7
	adds r3, r1, r3
	str r3, [sp, #8]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_0800686C
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_0804449C
	adds r6, r0, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	adds r0, r5, #0
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	adds r1, r4, #0
	bl sub_0804449C
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r5, #0
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	rsbs r0, r0, #0
	adds r1, r4, #0
	bl sub_0804449C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r5, #0
	bl sub_0800686C
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	adds r1, r4, #0
	bl sub_0804449C
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov r5, r8
	mov r0, sl
	subs r2, r5, r0
	lsls r6, r6, #0x10
	mov r8, r6
	asrs r0, r6, #0x10
	muls r0, r2, r0
	cmp r0, #0
	bge _0800F42A
	adds r0, #0xff
_0800F42A:
	asrs r3, r0, #8
	ldr r5, [sp, #4]
	ldr r0, [sp, #8]
	subs r1, r5, r0
	lsls r7, r7, #0x10
	asrs r0, r7, #0x10
	muls r0, r1, r0
	cmp r0, #0
	bge _0800F43E
	adds r0, #0xff
_0800F43E:
	asrs r0, r0, #8
	adds r0, r3, r0
	mov r3, sl
	adds r6, r0, r3
	mov r0, sb
	lsls r5, r0, #0x10
	asrs r0, r5, #0x10
	muls r2, r0, r2
	cmp r2, #0
	bge _0800F454
	adds r2, #0xff
_0800F454:
	asrs r3, r2, #8
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	muls r1, r0, r1
	cmp r1, #0
	bge _0800F462
	adds r1, #0xff
_0800F462:
	asrs r2, r1, #8
	adds r2, r3, r2
	ldr r1, [sp, #8]
	adds r2, r2, r1
	movs r0, #2
	adds r1, r6, #0
	bl sub_08000A1C
	mov r3, r8
	lsrs r1, r3, #0x10
	lsrs r2, r7, #0x10
	lsrs r3, r5, #0x10
	lsrs r0, r4, #0x10
	str r0, [sp]
	movs r0, #2
	bl sub_080009BC
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0800F390

	thumb_func_start sub_0800F494
sub_0800F494: @ 0x0800F494
	push {r4, lr}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #9
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x80
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0
	movs r2, #0x21
	movs r3, #1
	bl sub_08003E7C
	ldr r0, _0800F4E8 @ =0x0203AF34
	ldr r4, [r0]
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	movs r1, #0
	movs r2, #0x22
	movs r3, #0
	bl sub_08001AE4
	str r0, [r4, #4]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #7
	str r1, [r4, #0xc]
	bl sub_08002B30
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F4E8: .4byte 0x0203AF34
	thumb_func_end sub_0800F494

	thumb_func_start sub_0800F4EC
sub_0800F4EC: @ 0x0800F4EC
	push {lr}
	ldr r0, _0800F504 @ =0x0203AF34
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _0800F4FE
	adds r0, r1, #0
	bl sub_0800F310
_0800F4FE:
	pop {r0}
	bx r0
	.align 2, 0
_0800F504: .4byte 0x0203AF34
	thumb_func_end sub_0800F4EC

	thumb_func_start sub_0800F508
sub_0800F508: @ 0x0800F508
	push {r4, lr}
	ldr r0, _0800F52C @ =0x0203AF34
	ldr r4, [r0]
	ldr r0, [r4]
	cmp r0, #0
	beq _0800F524
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_0800F524:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F52C: .4byte 0x0203AF34
	thumb_func_end sub_0800F508

	thumb_func_start sub_0800F530
sub_0800F530: @ 0x0800F530
	push {lr}
	ldr r0, _0800F548 @ =0x0203AF34
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq _0800F542
	ldr r0, [r1, #4]
	bl sub_08002B30
_0800F542:
	pop {r0}
	bx r0
	.align 2, 0
_0800F548: .4byte 0x0203AF34
	thumb_func_end sub_0800F530

	thumb_func_start sub_0800F54C
sub_0800F54C: @ 0x0800F54C
	push {r4, r5, lr}
	sub sp, #8
	movs r4, #0
	movs r5, #0x1f
	movs r0, #0x80
	lsls r0, r0, #7
	str r4, [sp]
	movs r1, #0
	movs r2, #0x1b
	movs r3, #1
	bl sub_08003D38
	str r4, [sp]
	movs r0, #0
	movs r1, #0
	movs r2, #0x1c
	movs r3, #1
	bl sub_08003E7C
	str r4, [sp]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0x1e
	bl sub_08004414
	movs r0, #0
	movs r1, #1
	bl sub_08004460
	movs r0, #0
	movs r1, #0
	bl sub_0800447C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08004518
	movs r0, #0
	movs r1, #0
	bl sub_08004CC0
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800F54C

	thumb_func_start sub_0800F5AC
sub_0800F5AC: @ 0x0800F5AC
	bx lr
	.align 2, 0
	thumb_func_end sub_0800F5AC

	thumb_func_start sub_0800F5B0
sub_0800F5B0: @ 0x0800F5B0
	push {lr}
	sub sp, #8
	ldr r0, _0800F5D4 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800F5D8
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08004518
	movs r0, #0
	movs r1, #1
	bl sub_08004CC0
	b _0800F63C
	.align 2, 0
_0800F5D4: .4byte 0x030014A4
_0800F5D8:
	add r2, sp, #4
	movs r0, #0
	mov r1, sp
	bl sub_0800453C
	ldr r0, _0800F644 @ =0x03001038
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F5F6
	ldr r0, [sp, #4]
	ldr r2, _0800F648 @ =0xFFFFFE00
	adds r0, r0, r2
	str r0, [sp, #4]
_0800F5F6:
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0800F60A
	ldr r0, [sp, #4]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	str r0, [sp, #4]
_0800F60A:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800F61C
	ldr r0, [sp]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [sp]
_0800F61C:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800F62C
	ldr r0, [sp]
	ldr r3, _0800F648 @ =0xFFFFFE00
	adds r0, r0, r3
	str r0, [sp]
_0800F62C:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	movs r0, #0
	bl sub_08004518
	movs r0, #0
	bl sub_080048D8
_0800F63C:
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_0800F644: .4byte 0x03001038
_0800F648: .4byte 0xFFFFFE00
	thumb_func_end sub_0800F5B0

	thumb_func_start sub_0800F64C
sub_0800F64C: @ 0x0800F64C
	push {r4, lr}
	ldr r4, _0800F70C @ =0x02031E40
	ldr r1, _0800F710 @ =0x080484E4
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #6
	movs r2, #1
	bl sub_08006A78
	ldr r1, _0800F714 @ =0x080484F4
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	bl sub_08006A78
	ldr r1, _0800F718 @ =0x08048510
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #6
	movs r2, #3
	bl sub_08006A78
	ldr r1, _0800F71C @ =0x08048520
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #4
	bl sub_08006A78
	ldr r1, _0800F720 @ =0x0804852C
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #5
	bl sub_08006A78
	ldr r1, _0800F724 @ =0x0804853C
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #6
	bl sub_08006A78
	ldr r1, _0800F728 @ =0x08048544
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #7
	bl sub_08006A78
	ldr r1, _0800F72C @ =0x0804854C
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #8
	bl sub_08006A78
	ldr r1, _0800F730 @ =0x08048554
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #9
	bl sub_08006A78
	ldr r1, _0800F734 @ =0x08048564
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0xa
	bl sub_08006A78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800F70C: .4byte 0x02031E40
_0800F710: .4byte 0x080484E4
_0800F714: .4byte 0x080484F4
_0800F718: .4byte 0x08048510
_0800F71C: .4byte 0x08048520
_0800F720: .4byte 0x0804852C
_0800F724: .4byte 0x0804853C
_0800F728: .4byte 0x08048544
_0800F72C: .4byte 0x0804854C
_0800F730: .4byte 0x08048554
_0800F734: .4byte 0x08048564
	thumb_func_end sub_0800F64C

	thumb_func_start sub_0800F738
sub_0800F738: @ 0x0800F738
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800F7E0 @ =0x030022A0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800F76E
	ldr r4, [r2, #0x10]
	movs r6, #3
	ldr r7, _0800F7E4 @ =0x02031E40
	movs r5, #0x80
	lsls r5, r5, #0x13
_0800F74C:
	lsrs r2, r4, #0x18
	adds r0, r7, #0
	ldr r1, _0800F7E8 @ =0x08048574
	bl sub_08007F1C
	asrs r1, r5, #0x18
	adds r0, r7, #0
	movs r2, #2
	bl sub_08006A78
	lsls r4, r4, #8
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r5, r5, r0
	subs r6, #1
	cmp r6, #0
	bge _0800F74C
_0800F76E:
	ldr r0, _0800F7EC @ =0x020000C4
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F77E
	ldr r0, _0800F7E0 @ =0x030022A0
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _0800F796
_0800F77E:
	ldr r4, _0800F7E4 @ =0x02031E40
	ldr r1, _0800F7F0 @ =0x08048578
	ldr r0, _0800F7F4 @ =0x020000C5
	ldrb r2, [r0]
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #4
	movs r2, #3
	bl sub_08006A78
_0800F796:
	ldr r6, _0800F7E4 @ =0x02031E40
	ldr r5, _0800F7F8 @ =0x0804857C
	ldr r4, _0800F7E0 @ =0x030022A0
	ldr r2, [r4, #0x1c]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r6, #0
	movs r1, #1
	movs r2, #4
	bl sub_08006A78
	ldr r2, [r4, #0x20]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08007F1C
	adds r0, r6, #0
	movs r1, #1
	movs r2, #5
	bl sub_08006A78
	bl sub_080099FC
	cmp r0, #0
	beq _0800F800
	ldr r1, _0800F7FC @ =0x08048580
	adds r0, r6, #0
	bl sub_08007F1C
	adds r0, r6, #0
	movs r1, #2
	movs r2, #8
	bl sub_08006A78
	b _0800F812
	.align 2, 0
_0800F7E0: .4byte 0x030022A0
_0800F7E4: .4byte 0x02031E40
_0800F7E8: .4byte 0x08048574
_0800F7EC: .4byte 0x020000C4
_0800F7F0: .4byte 0x08048578
_0800F7F4: .4byte 0x020000C5
_0800F7F8: .4byte 0x0804857C
_0800F7FC: .4byte 0x08048580
_0800F800:
	ldr r1, _0800F818 @ =0x08048584
	adds r0, r6, #0
	bl sub_08007F1C
	adds r0, r6, #0
	movs r1, #2
	movs r2, #8
	bl sub_08006A78
_0800F812:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F818: .4byte 0x08048584
	thumb_func_end sub_0800F738

	thumb_func_start sub_0800F81C
sub_0800F81C: @ 0x0800F81C
	push {lr}
	movs r0, #1
	bl sub_08003280
	bl sub_08009934
	ldr r1, _0800F834 @ =0x0203AF38
	movs r0, #1
	str r0, [r1, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0800F834: .4byte 0x0203AF38
	thumb_func_end sub_0800F81C

	thumb_func_start sub_0800F838
sub_0800F838: @ 0x0800F838
	push {lr}
	movs r0, #0
	bl sub_08003280
	pop {r0}
	bx r0
	thumb_func_end sub_0800F838

	thumb_func_start sub_0800F844
sub_0800F844: @ 0x0800F844
	push {lr}
	ldr r0, _0800F854 @ =0x0203AF38
	ldr r0, [r0]
	cmp r0, #1
	bne _0800F858
	movs r0, #1
	b _0800F864
	.align 2, 0
_0800F854: .4byte 0x0203AF38
_0800F858:
	cmp r0, #2
	beq _0800F862
	movs r0, #1
	rsbs r0, r0, #0
	b _0800F864
_0800F862:
	movs r0, #2
_0800F864:
	pop {r1}
	bx r1
	thumb_func_end sub_0800F844

	thumb_func_start sub_0800F868
sub_0800F868: @ 0x0800F868
	push {lr}
	movs r0, #6
	bl sub_080034D4
	cmp r0, #0
	beq _0800F884
	bl sub_080098B0
	movs r0, #0
	bl sub_08003280
	movs r0, #6
	bl sub_08003450
_0800F884:
	pop {r0}
	bx r0
	thumb_func_end sub_0800F868

	thumb_func_start sub_0800F888
sub_0800F888: @ 0x0800F888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0800F95C @ =0x0203AF38
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0800F98E
	ldr r4, _0800F960 @ =0x03001038
	ldrh r0, [r4]
	bl sub_080094E0
	ldr r2, _0800F964 @ =0x03002260
	lsls r0, r0, #0x18
	ldrh r1, [r4]
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2]
	movs r7, #0
	ldr r0, _0800F968 @ =0x02031E40
	mov r8, r0
	movs r0, #0xff
	mov sb, r0
_0800F8BA:
	ldr r0, _0800F96C @ =0x03002300
	adds r6, r7, r0
	ldrb r0, [r6]
	cmp r0, #0
	beq _0800F91C
	ldr r1, _0800F970 @ =0x03002310
	lsls r0, r7, #2
	adds r5, r0, r1
	ldr r0, [r5]
	lsrs r0, r0, #8
	bl sub_080094E0
	ldr r1, [r5]
	lsrs r1, r1, #0x18
	cmp r0, r1
	bne _0800F916
	ldr r2, [r5]
	lsrs r2, r2, #8
	mov r0, sb
	ands r2, r0
	mov r0, r8
	ldr r1, _0800F974 @ =0x08048590
	bl sub_08007F1C
	adds r4, r7, #0
	adds r4, #0xb
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	mov r0, r8
	movs r1, #2
	adds r2, r4, #0
	bl sub_08006A78
	ldr r2, [r5]
	lsrs r2, r2, #0x10
	mov r0, sb
	ands r2, r0
	mov r0, r8
	ldr r1, _0800F978 @ =0x08048598
	bl sub_08007F1C
	mov r0, r8
	movs r1, #8
	adds r2, r4, #0
	bl sub_08006A78
_0800F916:
	ldrb r0, [r6]
	movs r0, #0
	strb r0, [r6]
_0800F91C:
	adds r7, #1
	cmp r7, #3
	ble _0800F8BA
	ldr r0, _0800F97C @ =0x03002280
	movs r1, #1
	strb r1, [r0]
	ldr r1, _0800F980 @ =0x030022A0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800F98A
	ldr r1, [r1, #0x10]
	movs r2, #0xff
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0x52
	bne _0800F984
	lsrs r0, r1, #8
	ands r0, r2
	cmp r0, #0x45
	bne _0800F984
	lsrs r0, r1, #0x10
	ands r0, r2
	cmp r0, #0x4c
	bne _0800F984
	lsrs r0, r1, #0x18
	ands r0, r2
	cmp r0, #0x53
	bne _0800F984
	ldr r1, _0800F95C @ =0x0203AF38
	movs r0, #1
	b _0800F988
	.align 2, 0
_0800F95C: .4byte 0x0203AF38
_0800F960: .4byte 0x03001038
_0800F964: .4byte 0x03002260
_0800F968: .4byte 0x02031E40
_0800F96C: .4byte 0x03002300
_0800F970: .4byte 0x03002310
_0800F974: .4byte 0x08048590
_0800F978: .4byte 0x08048598
_0800F97C: .4byte 0x03002280
_0800F980: .4byte 0x030022A0
_0800F984:
	ldr r1, _0800F99C @ =0x0203AF38
	movs r0, #2
_0800F988:
	str r0, [r1]
_0800F98A:
	bl sub_0800F738
_0800F98E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800F99C: .4byte 0x0203AF38
	thumb_func_end sub_0800F888

	thumb_func_start sub_0800F9A0
sub_0800F9A0: @ 0x0800F9A0
	push {lr}
	ldr r1, _0800F9C4 @ =0x0203AF38
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #0
	str r0, [r1, #4]
	bl sub_0800F64C
	bl sub_0800F81C
	ldr r1, _0800F9C8 @ =sub_0800F888
	movs r0, #6
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800F9C4: .4byte 0x0203AF38
_0800F9C8: .4byte sub_0800F888
	thumb_func_end sub_0800F9A0

	thumb_func_start sub_0800F9CC
sub_0800F9CC: @ 0x0800F9CC
	push {lr}
	ldr r1, _0800F9E0 @ =sub_0800F9A0
	movs r2, #0x80
	lsls r2, r2, #6
	movs r0, #6
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800F9E0: .4byte sub_0800F9A0
	thumb_func_end sub_0800F9CC

	thumb_func_start sub_0800F9E4
sub_0800F9E4: @ 0x0800F9E4
	ldr r1, _0800F9F0 @ =0x0203AF28
	str r0, [r1]
	movs r0, #0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0800F9F0: .4byte 0x0203AF28
	thumb_func_end sub_0800F9E4

	thumb_func_start sub_0800F9F4
sub_0800F9F4: @ 0x0800F9F4
	push {lr}
	movs r0, #0
	bl sub_0800F9E4
	pop {r0}
	bx r0
	thumb_func_end sub_0800F9F4

	thumb_func_start sub_0800FA00
sub_0800FA00: @ 0x0800FA00
	push {r4, r5, lr}
	ldr r1, _0800FA18 @ =0x0203AF28
	ldr r5, [r1]
	cmp r5, #2
	beq _0800FA8E
	cmp r5, #2
	bgt _0800FA1C
	cmp r5, #0
	beq _0800FA34
	cmp r5, #1
	beq _0800FA46
	b _0800FB6A
	.align 2, 0
_0800FA18: .4byte 0x0203AF28
_0800FA1C:
	cmp r5, #4
	bne _0800FA22
	b _0800FB18
_0800FA22:
	cmp r5, #4
	blt _0800FB00
	ldr r0, _0800FA30 @ =0x000003E7
	cmp r5, r0
	bne _0800FA2E
	b _0800FB5C
_0800FA2E:
	b _0800FB6A
	.align 2, 0
_0800FA30: .4byte 0x000003E7
_0800FA34:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FA3E
	movs r0, #1
	str r0, [r1, #4]
_0800FA3E:
	movs r0, #1
	bl sub_0800F9E4
	b _0800FB6A
_0800FA46:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FA62
	str r5, [r1, #4]
	ldr r4, _0800FA74 @ =0x02031E40
	ldr r1, _0800FA78 @ =0x080485A0
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x13
	bl sub_08006A78
_0800FA62:
	ldr r0, _0800FA7C @ =0x030014A4
	ldrh r1, [r0]
	ands r5, r1
	cmp r5, #0
	beq _0800FA80
	movs r0, #2
	bl sub_0800F9E4
	b _0800FB6A
	.align 2, 0
_0800FA74: .4byte 0x02031E40
_0800FA78: .4byte 0x080485A0
_0800FA7C: .4byte 0x030014A4
_0800FA80:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800FB6A
	bl sub_0800F27C
	b _0800FB6A
_0800FA8E:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FAB0
	movs r0, #1
	str r0, [r1, #4]
	bl sub_0800F81C
	ldr r4, _0800FACC @ =0x02031E40
	ldr r1, _0800FAD0 @ =0x080485B8
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x13
	bl sub_08006A78
_0800FAB0:
	bl sub_0800F844
	cmp r0, #0
	bge _0800FAD8
	ldr r0, _0800FAD4 @ =0x030014A4
	ldrh r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _0800FB6A
	bl sub_0800F838
	bl sub_0800F27C
	b _0800FB6A
	.align 2, 0
_0800FACC: .4byte 0x02031E40
_0800FAD0: .4byte 0x080485B8
_0800FAD4: .4byte 0x030014A4
_0800FAD8:
	bl sub_0800F844
	cmp r0, #1
	bne _0800FAEC
	bl sub_0800F838
	movs r0, #3
	bl sub_0800F9E4
	b _0800FB6A
_0800FAEC:
	bl sub_0800F844
	cmp r0, #2
	bne _0800FB6A
	bl sub_0800F838
	movs r0, #4
	bl sub_0800F9E4
	b _0800FB6A
_0800FB00:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FB36
	movs r0, #1
	str r0, [r1, #4]
	ldr r4, _0800FB10 @ =0x02031E40
	ldr r1, _0800FB14 @ =0x080485D0
	b _0800FB26
	.align 2, 0
_0800FB10: .4byte 0x02031E40
_0800FB14: .4byte 0x080485D0
_0800FB18:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FB36
	movs r0, #1
	str r0, [r1, #4]
	ldr r4, _0800FB4C @ =0x02031E40
	ldr r1, _0800FB50 @ =0x080485E8
_0800FB26:
	adds r0, r4, #0
	bl sub_08007F1C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x13
	bl sub_08006A78
_0800FB36:
	ldr r0, _0800FB54 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800FB6A
	ldr r0, _0800FB58 @ =0x000003E7
	bl sub_0800F9E4
	b _0800FB6A
	.align 2, 0
_0800FB4C: .4byte 0x02031E40
_0800FB50: .4byte 0x080485E8
_0800FB54: .4byte 0x030014A4
_0800FB58: .4byte 0x000003E7
_0800FB5C:
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _0800FB6A
	movs r0, #1
	str r0, [r1, #4]
	bl sub_0800F27C
_0800FB6A:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0800FA00

	thumb_func_start sub_0800FB70
sub_0800FB70: @ 0x0800FB70
	push {lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0800FBEC @ =0x0100C000
	add r0, sp, #8
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _0800FBF0 @ =0x082053C8
	bl sub_08000D40
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_080010F8
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _0800FBF4 @ =0x0000F1FF
	movs r1, #0
	bl sub_08000EA4
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_0800FBEC: .4byte 0x0100C000
_0800FBF0: .4byte 0x082053C8
_0800FBF4: .4byte 0x0000F1FF
	thumb_func_end sub_0800FB70

	thumb_func_start sub_0800FBF8
sub_0800FBF8: @ 0x0800FBF8
	push {lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0800FBF8

	thumb_func_start sub_0800FC10
sub_0800FC10: @ 0x0800FC10
	bx lr
	.align 2, 0
	thumb_func_end sub_0800FC10

	thumb_func_start sub_0800FC14
sub_0800FC14: @ 0x0800FC14
	push {r4, lr}
	movs r0, #1
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	ldr r1, _0800FC4C @ =sub_0800FC10
	movs r0, #4
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FC4C: .4byte sub_0800FC10
	thumb_func_end sub_0800FC14

	thumb_func_start sub_0800FC50
sub_0800FC50: @ 0x0800FC50
	push {lr}
	ldr r1, _0800FC60 @ =sub_0800FC14
	ldr r2, _0800FC64 @ =0x0000EFFF
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800FC60: .4byte sub_0800FC14
_0800FC64: .4byte 0x0000EFFF
	thumb_func_end sub_0800FC50

	thumb_func_start sub_0800FC68
sub_0800FC68: @ 0x0800FC68
	push {lr}
	bl sub_0800F868
	bl sub_0800F4EC
	bl sub_0800F5AC
	bl sub_0800F330
	bl sub_0800F2C0
	bl sub_08004360
	bl sub_08004340
	bl sub_0800FBF8
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0800FC68

	thumb_func_start sub_0800FCA4
sub_0800FCA4: @ 0x0800FCA4
	push {lr}
	bl sub_08006AEC
	ldr r1, _0800FCC4 @ =0x0300149C
	ldr r0, [r1]
	cmp r0, #0
	beq _0800FCD4
	cmp r0, #1
	bne _0800FCCC
	ldr r0, _0800FCC8 @ =sub_08007154
	bl sub_08003640
	bl sub_0800FC68
	b _0800FCE8
	.align 2, 0
_0800FCC4: .4byte 0x0300149C
_0800FCC8: .4byte sub_08007154
_0800FCCC:
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bne _0800FCD8
_0800FCD4:
	bl sub_0800FA00
_0800FCD8:
	bl sub_0800F888
	bl sub_0800F508
	bl sub_0800F5B0
	bl sub_0800F530
_0800FCE8:
	pop {r0}
	bx r0
	thumb_func_end sub_0800FCA4

	thumb_func_start sub_0800FCEC
sub_0800FCEC: @ 0x0800FCEC
	push {lr}
	ldr r1, _0800FD38 @ =0x0300149C
	movs r0, #0
	str r0, [r1]
	bl sub_08006AB4
	bl sub_08004334
	movs r0, #2
	bl sub_08004344
	movs r0, #0xa
	bl sub_0800F29C
	bl sub_0800F2E0
	bl sub_0800FB70
	bl sub_0800F494
	bl sub_0800F54C
	bl sub_0800F9F4
	bl sub_0800F9CC
	bl sub_0800FC50
	ldr r0, _0800FD3C @ =sub_0800FC68
	bl sub_08003980
	ldr r1, _0800FD40 @ =sub_0800FCA4
	movs r0, #5
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0800FD38: .4byte 0x0300149C
_0800FD3C: .4byte sub_0800FC68
_0800FD40: .4byte sub_0800FCA4
	thumb_func_end sub_0800FCEC

	thumb_func_start sub_0800FD44
sub_0800FD44: @ 0x0800FD44
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _0800FD70 @ =sub_0800FCEC
	movs r2, #0x80
	lsls r2, r2, #5
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0800FD70: .4byte sub_0800FCEC
	thumb_func_end sub_0800FD44

	thumb_func_start sub_0800FD74
sub_0800FD74: @ 0x0800FD74
	push {r4, lr}
	ldr r0, _0800FDD8 @ =0x020358A0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r0, _0800FDDC @ =0x02035340
	str r1, [r0]
	movs r4, #0
_0800FD8E:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, #0x9f
	bls _0800FD8E
	bl sub_080008D8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_080008C8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FDD8: .4byte 0x020358A0
_0800FDDC: .4byte 0x02035340
	thumb_func_end sub_0800FD74

	thumb_func_start sub_0800FDE0
sub_0800FDE0: @ 0x0800FDE0
	bx lr
	.align 2, 0
	thumb_func_end sub_0800FDE0

	thumb_func_start sub_0800FDE4
sub_0800FDE4: @ 0x0800FDE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0800FE00 @ =sub_08010020
	bl sub_080032C0
	ldr r0, _0800FE04 @ =sub_08010158
	bl sub_080032F0
	ldr r0, _0800FE08 @ =0x020358A0
	str r4, [r0, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800FE00: .4byte sub_08010020
_0800FE04: .4byte sub_08010158
_0800FE08: .4byte 0x020358A0
	thumb_func_end sub_0800FDE4

	thumb_func_start sub_0800FE0C
sub_0800FE0C: @ 0x0800FE0C
	push {lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032F0
	ldr r1, _0800FE24 @ =0x020358A0
	movs r0, #0
	str r0, [r1, #4]
	pop {r0}
	bx r0
	.align 2, 0
_0800FE24: .4byte 0x020358A0
	thumb_func_end sub_0800FE0C

	thumb_func_start sub_0800FE28
sub_0800FE28: @ 0x0800FE28
	ldr r1, _0800FE30 @ =0x02035340
	str r0, [r1]
	bx lr
	.align 2, 0
_0800FE30: .4byte 0x02035340
	thumb_func_end sub_0800FE28

	thumb_func_start sub_0800FE34
sub_0800FE34: @ 0x0800FE34
	ldr r1, _0800FE54 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0800FE58 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _0800FE5C @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0800FE60 @ =0x020358A0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0800FE64 @ =0x02035340
	str r1, [r0]
	bx lr
	.align 2, 0
_0800FE54: .4byte 0x040000B0
_0800FE58: .4byte 0x0000C5FF
_0800FE5C: .4byte 0x00007FFF
_0800FE60: .4byte 0x020358A0
_0800FE64: .4byte 0x02035340
	thumb_func_end sub_0800FE34

	thumb_func_start sub_0800FE68
sub_0800FE68: @ 0x0800FE68
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	cmp r1, #0x9f
	bgt _0800FE8A
	ldr r2, _0800FE90 @ =0x02037780
	lsls r1, r1, #2
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #7
	adds r1, r1, r0
	adds r1, r1, r2
	strh r5, [r1]
	strh r3, [r1, #2]
_0800FE8A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800FE90: .4byte 0x02037780
	thumb_func_end sub_0800FE68

	thumb_func_start sub_0800FE94
sub_0800FE94: @ 0x0800FE94
	ldr r2, _0800FEA0 @ =0x020358A0
	movs r1, #1
	str r1, [r2, #0x14]
	str r0, [r2, #0x18]
	bx lr
	.align 2, 0
_0800FEA0: .4byte 0x020358A0
	thumb_func_end sub_0800FE94

	thumb_func_start sub_0800FEA4
sub_0800FEA4: @ 0x0800FEA4
	ldr r2, _0800FEB0 @ =0x020358A0
	movs r3, #1
	str r3, [r2, #8]
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	bx lr
	.align 2, 0
_0800FEB0: .4byte 0x020358A0
	thumb_func_end sub_0800FEA4

	thumb_func_start sub_0800FEB4
sub_0800FEB4: @ 0x0800FEB4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800FECC @ =0x02034930
	ldr r0, _0800FED0 @ =0x020358A0
	ldr r0, [r0]
	cmp r0, #5
	bls _0800FEC2
	b _08010016
_0800FEC2:
	lsls r0, r0, #2
	ldr r1, _0800FED4 @ =_0800FED8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800FECC: .4byte 0x02034930
_0800FED0: .4byte 0x020358A0
_0800FED4: .4byte _0800FED8
_0800FED8: @ jump table
	.4byte _08010016 @ case 0
	.4byte _0800FEF0 @ case 1
	.4byte _0800FF14 @ case 2
	.4byte _0800FF38 @ case 3
	.4byte _0800FF5C @ case 4
	.4byte _0800FF80 @ case 5
_0800FEF0:
	ldr r1, _0800FF10 @ =0x02037784
	subs r7, r1, #4
	movs r3, #0x9e
_0800FEF6:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	adds r1, #4
	cmp r3, #0
	bge _0800FEF6
	adds r1, r7, #0
	b _0801000E
	.align 2, 0
_0800FF10: .4byte 0x02037784
_0800FF14:
	ldr r1, _0800FF34 @ =0x02037A04
	subs r4, r1, #4
	movs r3, #0x9e
_0800FF1A:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	adds r1, #4
	cmp r3, #0
	bge _0800FF1A
	adds r1, r4, #0
	b _0801000E
	.align 2, 0
_0800FF34: .4byte 0x02037A04
_0800FF38:
	ldr r1, _0800FF58 @ =0x02037C84
	subs r4, r1, #4
	movs r3, #0x9e
_0800FF3E:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	adds r1, #4
	cmp r3, #0
	bge _0800FF3E
	adds r1, r4, #0
	b _0801000E
	.align 2, 0
_0800FF58: .4byte 0x02037C84
_0800FF5C:
	ldr r1, _0800FF7C @ =0x02037F04
	subs r4, r1, #4
	movs r3, #0x9e
_0800FF62:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	adds r1, #4
	cmp r3, #0
	bge _0800FF62
	adds r1, r4, #0
	b _0801000E
	.align 2, 0
_0800FF7C: .4byte 0x02037F04
_0800FF80:
	ldr r1, _0801001C @ =0x02037784
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r6, r1, r0
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r5, r1, r0
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r4, r1, r0
	subs r7, r1, #4
	movs r3, #0x9e
_0800FF98:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r6]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r6, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r5]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r5, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r4, #2]
	strh r0, [r2]
	adds r2, #2
	subs r3, #1
	adds r1, #4
	adds r6, #4
	adds r5, #4
	adds r4, #4
	cmp r3, #0
	bge _0800FF98
	adds r1, r7, #0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r1, r1, r0
_0801000E:
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_08010016:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801001C: .4byte 0x02037784
	thumb_func_end sub_0800FEB4

	thumb_func_start sub_08010020
sub_08010020: @ 0x08010020
	push {r4, r5, r6, lr}
	ldr r2, _0801006C @ =0x02035340
	ldr r1, [r2]
	cmp r1, #0
	beq _08010032
	ldr r0, _08010070 @ =0x020358A0
	str r1, [r0]
	movs r0, #0
	str r0, [r2]
_08010032:
	bl sub_0800FEB4
	ldr r4, _08010070 @ =0x020358A0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0801004A
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	bl sub_0800101C
_0801004A:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0801005A
	movs r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	bl sub_08001000
_0801005A:
	ldr r0, [r4]
	cmp r0, #5
	bhi _0801013C
	lsls r0, r0, #2
	ldr r1, _08010074 @ =_08010078
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801006C: .4byte 0x02035340
_08010070: .4byte 0x020358A0
_08010074: .4byte _08010078
_08010078: @ jump table
	.4byte _0801013C @ case 0
	.4byte _08010090 @ case 1
	.4byte _080100A8 @ case 2
	.4byte _080100C0 @ case 3
	.4byte _080100D8 @ case 4
	.4byte _080100F0 @ case 5
_08010090:
	ldr r0, _080100A4 @ =0x02037780
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0
	bl sub_08000D9C
	b _0801013C
	.align 2, 0
_080100A4: .4byte 0x02037780
_080100A8:
	ldr r0, _080100BC @ =0x02037A00
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #1
	bl sub_08000D9C
	b _0801013C
	.align 2, 0
_080100BC: .4byte 0x02037A00
_080100C0:
	ldr r0, _080100D4 @ =0x02037C80
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #2
	bl sub_08000D9C
	b _0801013C
	.align 2, 0
_080100D4: .4byte 0x02037C80
_080100D8:
	ldr r0, _080100EC @ =0x02037F00
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #3
	bl sub_08000D9C
	b _0801013C
	.align 2, 0
_080100EC: .4byte 0x02037F00
_080100F0:
	ldr r0, _08010150 @ =0x02037780
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r5, r0, r2
	movs r3, #0xf0
	lsls r3, r3, #3
	adds r6, r0, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r3, #2
	ldrsh r2, [r0, r3]
	movs r0, #0
	bl sub_08000D9C
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r0, #1
	bl sub_08000D9C
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r0, #2
	bl sub_08000D9C
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r3, #2
	ldrsh r2, [r6, r3]
	movs r0, #3
	bl sub_08000D9C
_0801013C:
	ldr r0, _08010154 @ =0x020358A0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _08010148
	bl sub_0804402C
_08010148:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010150: .4byte 0x02037780
_08010154: .4byte 0x020358A0
	thumb_func_end sub_08010020

	thumb_func_start sub_08010158
sub_08010158: @ 0x08010158
	push {lr}
	ldr r0, _08010170 @ =0x020358A0
	ldr r0, [r0]
	cmp r0, #5
	bls _08010164
	b _08010292
_08010164:
	lsls r0, r0, #2
	ldr r1, _08010174 @ =_08010178
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010170: .4byte 0x020358A0
_08010174: .4byte _08010178
_08010178: @ jump table
	.4byte _08010292 @ case 0
	.4byte _08010190 @ case 1
	.4byte _080101C8 @ case 2
	.4byte _08010200 @ case 3
	.4byte _08010238 @ case 4
	.4byte _08010270 @ case 5
_08010190:
	ldr r1, _080101B0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080101B4 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080101B8 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080101BC @ =0x02034930
	str r0, [r1]
	ldr r0, _080101C0 @ =0x04000010
	str r0, [r1, #4]
	ldr r0, _080101C4 @ =0xA2600002
	b _0801028E
	.align 2, 0
_080101B0: .4byte 0x040000B0
_080101B4: .4byte 0x0000C5FF
_080101B8: .4byte 0x00007FFF
_080101BC: .4byte 0x02034930
_080101C0: .4byte 0x04000010
_080101C4: .4byte 0xA2600002
_080101C8:
	ldr r1, _080101E8 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080101EC @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080101F0 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080101F4 @ =0x02034930
	str r0, [r1]
	ldr r0, _080101F8 @ =0x04000014
	str r0, [r1, #4]
	ldr r0, _080101FC @ =0xA2600002
	b _0801028E
	.align 2, 0
_080101E8: .4byte 0x040000B0
_080101EC: .4byte 0x0000C5FF
_080101F0: .4byte 0x00007FFF
_080101F4: .4byte 0x02034930
_080101F8: .4byte 0x04000014
_080101FC: .4byte 0xA2600002
_08010200:
	ldr r1, _08010220 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _08010224 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _08010228 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _0801022C @ =0x02034930
	str r0, [r1]
	ldr r0, _08010230 @ =0x04000018
	str r0, [r1, #4]
	ldr r0, _08010234 @ =0xA2600002
	b _0801028E
	.align 2, 0
_08010220: .4byte 0x040000B0
_08010224: .4byte 0x0000C5FF
_08010228: .4byte 0x00007FFF
_0801022C: .4byte 0x02034930
_08010230: .4byte 0x04000018
_08010234: .4byte 0xA2600002
_08010238:
	ldr r1, _08010258 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _0801025C @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _08010260 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08010264 @ =0x02034930
	str r0, [r1]
	ldr r0, _08010268 @ =0x0400001C
	str r0, [r1, #4]
	ldr r0, _0801026C @ =0xA2600002
	b _0801028E
	.align 2, 0
_08010258: .4byte 0x040000B0
_0801025C: .4byte 0x0000C5FF
_08010260: .4byte 0x00007FFF
_08010264: .4byte 0x02034930
_08010268: .4byte 0x0400001C
_0801026C: .4byte 0xA2600002
_08010270:
	ldr r1, _0801029C @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r0, _080102A0 @ =0x0000C5FF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r0, _080102A4 @ =0x00007FFF
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _080102A8 @ =0x02034930
	str r0, [r1]
	ldr r0, _080102AC @ =0x04000010
	str r0, [r1, #4]
	ldr r0, _080102B0 @ =0xA2600008
_0801028E:
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08010292:
	bl sub_08008370
	pop {r0}
	bx r0
	.align 2, 0
_0801029C: .4byte 0x040000B0
_080102A0: .4byte 0x0000C5FF
_080102A4: .4byte 0x00007FFF
_080102A8: .4byte 0x02034930
_080102AC: .4byte 0x04000010
_080102B0: .4byte 0xA2600008
	thumb_func_end sub_08010158

	thumb_func_start sub_080102B4
sub_080102B4: @ 0x080102B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080102D4 @ =0x02035330
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r5, #0
	bl sub_0800837C
	str r5, [r4]
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_080103A8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080102D4: .4byte 0x02035330
	thumb_func_end sub_080102B4

	thumb_func_start sub_080102D8
sub_080102D8: @ 0x080102D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08010300 @ =0x02035330
	ldr r0, [r5]
	cmp r0, r4
	beq _080102F8
	movs r0, #0
	str r0, [r5, #4]
	adds r0, r4, #0
	bl sub_0800837C
	str r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	bl sub_080103A8
_080102F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010300: .4byte 0x02035330
	thumb_func_end sub_080102D8

	thumb_func_start sub_08010304
sub_08010304: @ 0x08010304
	push {r4, lr}
	ldr r4, _0801031C @ =0x02035330
	movs r1, #0
	str r1, [r4, #4]
	bl sub_0800838C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801031C: .4byte 0x02035330
	thumb_func_end sub_08010304

	thumb_func_start sub_08010320
sub_08010320: @ 0x08010320
	push {r4, lr}
	ldr r4, _0801033C @ =0x02035330
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl sub_0800838C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801033C: .4byte 0x02035330
	thumb_func_end sub_08010320

	thumb_func_start sub_08010340
sub_08010340: @ 0x08010340
	push {lr}
	bl sub_0800839C
	cmp r0, #0
	beq _0801034E
	movs r0, #1
	b _08010350
_0801034E:
	movs r0, #0
_08010350:
	pop {r1}
	bx r1
	thumb_func_end sub_08010340

	thumb_func_start sub_08010354
sub_08010354: @ 0x08010354
	push {lr}
	bl sub_08008414
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010354

	thumb_func_start sub_08010360
sub_08010360: @ 0x08010360
	push {lr}
	bl sub_08008424
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010360

	thumb_func_start sub_0801036C
sub_0801036C: @ 0x0801036C
	bx lr
	.align 2, 0
	thumb_func_end sub_0801036C

	thumb_func_start sub_08010370
sub_08010370: @ 0x08010370
	push {lr}
	bl sub_08008434
	cmp r0, #0
	beq _0801037E
	movs r0, #1
	b _08010380
_0801037E:
	movs r0, #0
_08010380:
	pop {r1}
	bx r1
	thumb_func_end sub_08010370

	thumb_func_start sub_08010384
sub_08010384: @ 0x08010384
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _080103A4 @ =0x02035330
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _0801039C
	movs r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_0804449C
	str r0, [r4, #0xc]
_0801039C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080103A4: .4byte 0x02035330
	thumb_func_end sub_08010384

	thumb_func_start sub_080103A8
sub_080103A8: @ 0x080103A8
	push {r4, lr}
	ldr r1, _080103B4 @ =0x02035330
	str r0, [r1, #8]
	movs r4, #0
	b _080103CA
	.align 2, 0
_080103B4: .4byte 0x02035330
_080103B8:
	ldr r0, _080103DC @ =0x02035330
	ldr r2, [r0, #8]
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	adds r0, r1, #0
	ldr r1, _080103E0 @ =0x0000FFFF
	bl sub_08043774
	adds r4, #1
_080103CA:
	adds r0, r4, #0
	bl sub_080103E4
	adds r1, r0, #0
	cmp r1, #0
	bne _080103B8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080103DC: .4byte 0x02035330
_080103E0: .4byte 0x0000FFFF
	thumb_func_end sub_080103A8

	thumb_func_start sub_080103E4
sub_080103E4: @ 0x080103E4
	ldr r2, _080103F8 @ =0x08205258
	ldr r1, _080103FC @ =0x0804AC18
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080103F8: .4byte 0x08205258
_080103FC: .4byte 0x0804AC18
	thumb_func_end sub_080103E4

	thumb_func_start sub_08010400
sub_08010400: @ 0x08010400
	push {lr}
	ldr r2, _0801042C @ =0x02035330
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _08010426
	cmp r0, #1
	bne _08010426
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	subs r0, r0, r1
	str r0, [r2, #8]
	cmp r0, #0
	bgt _08010420
	movs r0, #0
	str r0, [r2, #8]
	str r0, [r2, #4]
_08010420:
	ldr r0, [r2, #8]
	bl sub_080103A8
_08010426:
	pop {r0}
	bx r0
	.align 2, 0
_0801042C: .4byte 0x02035330
	thumb_func_end sub_08010400

	thumb_func_start sub_08010430
sub_08010430: @ 0x08010430
	push {lr}
	ldr r1, _08010454 @ =0x02035330
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r0, #0
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1, #8]
	bl sub_080035FC
	ldr r1, _08010458 @ =sub_08010400
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08010454: .4byte 0x02035330
_08010458: .4byte sub_08010400
	thumb_func_end sub_08010430

	thumb_func_start sub_0801045C
sub_0801045C: @ 0x0801045C
	push {lr}
	movs r0, #3
	bl sub_080034D4
	cmp r0, #0
	beq _0801046E
	movs r0, #3
	bl sub_08003450
_0801046E:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801045C

	thumb_func_start sub_08010474
sub_08010474: @ 0x08010474
	push {lr}
	ldr r1, _08010488 @ =sub_08010430
	movs r2, #0xff
	lsls r2, r2, #4
	movs r0, #3
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08010488: .4byte sub_08010430
	thumb_func_end sub_08010474

	thumb_func_start sub_0801048C
sub_0801048C: @ 0x0801048C
	push {lr}
	ldr r1, _0801049C @ =0x020358DC
	movs r0, #0
	str r0, [r1]
	bl sub_080018EC
	pop {r0}
	bx r0
	.align 2, 0
_0801049C: .4byte 0x020358DC
	thumb_func_end sub_0801048C

	thumb_func_start sub_080104A0
sub_080104A0: @ 0x080104A0
	push {lr}
	movs r0, #0
	bl sub_080018EC
	pop {r0}
	bx r0
	thumb_func_end sub_080104A0

	thumb_func_start sub_080104AC
sub_080104AC: @ 0x080104AC
	push {lr}
	cmp r0, #9
	bls _080104B4
	b _080105F8
_080104B4:
	lsls r0, r0, #2
	ldr r1, _080104C0 @ =_080104C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080104C0: .4byte _080104C4
_080104C4: @ jump table
	.4byte _080104EC @ case 0
	.4byte _08010508 @ case 1
	.4byte _08010554 @ case 2
	.4byte _08010570 @ case 3
	.4byte _08010528 @ case 4
	.4byte _08010544 @ case 5
	.4byte _08010598 @ case 6
	.4byte _080105B0 @ case 7
	.4byte _080105CC @ case 8
	.4byte _080105E8 @ case 9
_080104EC:
	ldr r0, _08010504 @ =0x020358DC
	movs r1, #0
	str r1, [r0]
	movs r0, #0
	movs r2, #0
	bl sub_080018A4
	movs r0, #0x20
	bl sub_080018C4
	b _080105D2
	.align 2, 0
_08010504: .4byte 0x020358DC
_08010508:
	ldr r0, _08010524 @ =0x020358DC
	movs r1, #1
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080018A4
	movs r0, #0x20
	bl sub_080018C4
	bl sub_080016D4
	b _080105D6
	.align 2, 0
_08010524: .4byte 0x020358DC
_08010528:
	ldr r0, _08010540 @ =0x020358DC
	movs r1, #4
	str r1, [r0]
	movs r0, #0xbf
	bl sub_08001620
	movs r0, #0x22
	bl sub_08001630
	bl sub_08001554
	b _08010586
	.align 2, 0
_08010540: .4byte 0x020358DC
_08010544:
	ldr r0, _08010550 @ =0x020358DC
	movs r1, #5
	str r1, [r0]
	movs r0, #0xbf
	b _08010578
	.align 2, 0
_08010550: .4byte 0x020358DC
_08010554:
	ldr r0, _0801056C @ =0x020358DC
	movs r1, #2
	str r1, [r0]
	movs r0, #0xff
	bl sub_08001620
	movs r0, #0x22
	bl sub_08001630
	bl sub_08001554
	b _08010586
	.align 2, 0
_0801056C: .4byte 0x020358DC
_08010570:
	ldr r0, _08010590 @ =0x020358DC
	movs r1, #3
	str r1, [r0]
	movs r0, #0xff
_08010578:
	bl sub_08001620
	movs r0, #0x22
	bl sub_08001630
	bl sub_08001578
_08010586:
	ldr r0, _08010594 @ =sub_08001594
	bl sub_080018EC
	b _080105F8
	.align 2, 0
_08010590: .4byte 0x020358DC
_08010594: .4byte sub_08001594
_08010598:
	ldr r0, _080105AC @ =0x020358DC
	movs r1, #6
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080018A4
	b _080105D2
	.align 2, 0
_080105AC: .4byte 0x020358DC
_080105B0:
	ldr r0, _080105C8 @ =0x020358DC
	movs r1, #7
	str r1, [r0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_080018A4
	bl sub_080016D4
	b _080105D6
	.align 2, 0
_080105C8: .4byte 0x020358DC
_080105CC:
	ldr r0, _080105E0 @ =0x020358DC
	movs r1, #6
	str r1, [r0]
_080105D2:
	bl sub_080016AC
_080105D6:
	ldr r0, _080105E4 @ =sub_08001718
	bl sub_080018EC
	b _080105F8
	.align 2, 0
_080105E0: .4byte 0x020358DC
_080105E4: .4byte sub_08001718
_080105E8:
	ldr r0, _080105FC @ =0x020358DC
	movs r1, #7
	str r1, [r0]
	bl sub_080016D4
	ldr r0, _08010600 @ =sub_08001718
	bl sub_080018EC
_080105F8:
	pop {r0}
	bx r0
	.align 2, 0
_080105FC: .4byte 0x020358DC
_08010600: .4byte sub_08001718
	thumb_func_end sub_080104AC

	thumb_func_start sub_08010604
sub_08010604: @ 0x08010604
	push {lr}
	ldr r0, _08010618 @ =0x020358DC
	ldr r0, [r0]
	cmp r0, #7
	bhi _08010662
	lsls r0, r0, #2
	ldr r1, _0801061C @ =_08010620
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08010618: .4byte 0x020358DC
_0801061C: .4byte _08010620
_08010620: @ jump table
	.4byte _08010640 @ case 0
	.4byte _08010640 @ case 1
	.4byte _0801064C @ case 2
	.4byte _0801064C @ case 3
	.4byte _0801064C @ case 4
	.4byte _0801064C @ case 5
	.4byte _08010640 @ case 6
	.4byte _08010640 @ case 7
_08010640:
	bl sub_08001858
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	b _08010664
_0801064C:
	bl sub_08001548
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08010662
	cmp r1, #1
	beq _08010662
	movs r1, #0
	b _08010664
_08010662:
	movs r1, #1
_08010664:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08010604

	thumb_func_start sub_0801066C
sub_0801066C: @ 0x0801066C
	push {lr}
	bl sub_0800A584
	cmp r0, #0
	bne _08010692
	movs r0, #2
	bl sub_0800A4CC
	cmp r0, #0
	bne _08010692
	movs r0, #3
	bl sub_0800A4CC
	cmp r0, #0
	bne _08010692
	ldr r0, _080106C0 @ =0x03001E30
	ldr r0, [r0]
	cmp r0, #1
	bls _080106BC
_08010692:
	bl sub_0800A5C0
	movs r0, #1
	bl sub_0800A1E0
	ldr r0, _080106C4 @ =0x020345A8
	ldr r0, [r0]
	cmp r0, #0
	beq _080106A8
	bl sub_0804402C
_080106A8:
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	ldr r0, _080106C8 @ =sub_08007154
	bl sub_08003640
	movs r0, #3
	bl sub_08003450
_080106BC:
	pop {r0}
	bx r0
	.align 2, 0
_080106C0: .4byte 0x03001E30
_080106C4: .4byte 0x020345A8
_080106C8: .4byte sub_08007154
	thumb_func_end sub_0801066C

	thumb_func_start sub_080106CC
sub_080106CC: @ 0x080106CC
	push {lr}
	movs r0, #3
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_080106CC

	thumb_func_start sub_080106D8
sub_080106D8: @ 0x080106D8
	push {lr}
	ldr r1, _080106E8 @ =sub_0801066C
	ldr r2, _080106EC @ =0x00000FFF
	movs r0, #3
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_080106E8: .4byte sub_0801066C
_080106EC: .4byte 0x00000FFF
	thumb_func_end sub_080106D8

	thumb_func_start sub_080106F0
sub_080106F0: @ 0x080106F0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	mov ip, r3
	ldr r2, _08010730 @ =0x02035760
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _08010712
	movs r1, #0
	ldr r5, _08010734 @ =0x000003FF
	movs r3, #0
_08010708:
	adds r0, r4, r1
	strb r3, [r0]
	adds r1, #1
	cmp r1, r5
	bls _08010708
_08010712:
	str r6, [r2, #0x20]
	str r4, [r2, #0x24]
	str r7, [r2, #0x2c]
	mov r0, ip
	str r0, [r2, #0x30]
	movs r0, #0
	str r0, [r2, #0x14]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
	ldr r0, [sp, #0x14]
	str r0, [r2, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010730: .4byte 0x02035760
_08010734: .4byte 0x000003FF
	thumb_func_end sub_080106F0

	thumb_func_start sub_08010738
sub_08010738: @ 0x08010738
	movs r0, #1
	bx lr
	thumb_func_end sub_08010738

	thumb_func_start sub_0801073C
sub_0801073C: @ 0x0801073C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl sub_08010B9C
	cmp r0, #0
	beq _0801075A
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x10
	movs r3, #0
	bl sub_080106F0
_0801075A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801073C

	thumb_func_start sub_08010764
sub_08010764: @ 0x08010764
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r0, _0801078C @ =0x03001E30
	ldr r7, [r0]
_0801076C:
	adds r6, r5, #1
	cmp r5, r7
	beq _080107B0
	ldr r4, _08010790 @ =0x02035760
	ldr r0, [r4, #0x10]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080107B0
	movs r2, #0
	ldr r0, [r4, #0x24]
	lsls r3, r5, #8
	adds r0, r3, r0
	ldr r1, [r4, #0x20]
	b _080107A4
	.align 2, 0
_0801078C: .4byte 0x03001E30
_08010790: .4byte 0x02035760
_08010794:
	adds r2, #1
	cmp r2, #0xf
	bhi _080107AC
	ldr r0, [r4, #0x24]
	adds r0, r3, r0
	adds r0, r0, r2
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
_080107A4:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08010794
_080107AC:
	cmp r2, #0x10
	bne _080107B6
_080107B0:
	adds r5, r6, #0
	cmp r5, #3
	bls _0801076C
_080107B6:
	cmp r5, #4
	beq _080107C0
	movs r0, #1
	rsbs r0, r0, #0
	b _080107C2
_080107C0:
	movs r0, #1
_080107C2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08010764

	thumb_func_start sub_080107C8
sub_080107C8: @ 0x080107C8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	bl sub_08010B9C
	cmp r0, #0
	beq _080107FE
	movs r2, #0
	ldr r5, _08010808 @ =0x020357A0
	ldr r6, _0801080C @ =0x02035350
	ldr r7, _08010810 @ =sub_08010764
	adds r4, r5, #0
	ldr r3, _08010814 @ =0x082053F8
_080107E0:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0xf
	bls _080107E0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x10
	adds r3, r7, #0
	bl sub_080106F0
_080107FE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08010808: .4byte 0x020357A0
_0801080C: .4byte 0x02035350
_08010810: .4byte sub_08010764
_08010814: .4byte 0x082053F8
	thumb_func_end sub_080107C8

	thumb_func_start sub_08010818
sub_08010818: @ 0x08010818
	push {lr}
	ldr r1, _08010830 @ =0x02035760
	ldr r0, [r1, #0x28]
	adds r0, #1
	str r0, [r1, #0x28]
	cmp r0, #0x1d
	ble _0801082A
	bl sub_0800A5C0
_0801082A:
	pop {r0}
	bx r0
	.align 2, 0
_08010830: .4byte 0x02035760
	thumb_func_end sub_08010818

	thumb_func_start sub_08010834
sub_08010834: @ 0x08010834
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r0, _0801085C @ =0x03001E30
	ldr r7, [r0]
_0801083C:
	adds r6, r5, #1
	cmp r5, r7
	beq _08010880
	ldr r4, _08010860 @ =0x02035760
	ldr r0, [r4, #0x10]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08010880
	movs r2, #0
	ldr r0, [r4, #0x24]
	lsls r3, r5, #8
	adds r0, r3, r0
	ldr r1, [r4, #0x20]
	b _08010874
	.align 2, 0
_0801085C: .4byte 0x03001E30
_08010860: .4byte 0x02035760
_08010864:
	adds r2, #1
	cmp r2, #0xf
	bhi _0801087C
	ldr r0, [r4, #0x24]
	adds r0, r3, r0
	adds r0, r0, r2
	ldr r1, [r4, #0x20]
	adds r1, r1, r2
_08010874:
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08010864
_0801087C:
	cmp r2, #0x10
	bne _08010886
_08010880:
	adds r5, r6, #0
	cmp r5, #3
	bls _0801083C
_08010886:
	cmp r5, #4
	beq _08010890
	movs r0, #1
	rsbs r0, r0, #0
	b _08010892
_08010890:
	movs r0, #1
_08010892:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08010834

	thumb_func_start sub_08010898
sub_08010898: @ 0x08010898
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	bl sub_08010B9C
	cmp r0, #0
	beq _080108E2
	movs r2, #0
	ldr r5, _080108EC @ =0x020357A0
	ldr r6, _080108F0 @ =0x02035350
	ldr r7, _080108F4 @ =sub_08010834
	adds r3, r5, #0
	ldr r4, _080108F8 @ =0x082053F8
_080108B0:
	adds r0, r2, r3
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0xf
	bls _080108B0
	movs r4, #1
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x10
	adds r3, r7, #0
	bl sub_080106F0
	ldr r1, _080108FC @ =0x02035760
	movs r0, #0
	str r0, [r1, #0x28]
	str r4, [r1]
	movs r0, #0x14
	str r0, [r1, #0xc]
	bl sub_0800A2BC
	bl sub_0800A3B4
_080108E2:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080108EC: .4byte 0x020357A0
_080108F0: .4byte 0x02035350
_080108F4: .4byte sub_08010834
_080108F8: .4byte 0x082053F8
_080108FC: .4byte 0x02035760
	thumb_func_end sub_08010898

	thumb_func_start sub_08010900
sub_08010900: @ 0x08010900
	push {lr}
	bl sub_08010B9C
	cmp r0, #0
	beq _08010912
	ldr r0, _08010918 @ =0x02035760
	ldr r1, [r0, #0x14]
	cmp r1, #1
	bne _0801091C
_08010912:
	movs r0, #1
	b _0801092A
	.align 2, 0
_08010918: .4byte 0x02035760
_0801091C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08010928
	movs r0, #0
	b _0801092A
_08010928:
	adds r0, r1, #0
_0801092A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08010900

	thumb_func_start sub_08010930
sub_08010930: @ 0x08010930
	push {lr}
	bl sub_08010B9C
	cmp r0, #0
	beq _08010948
	bl sub_0800A468
	bl sub_0800A2BC
	ldr r1, _0801094C @ =0x02035760
	movs r0, #0
	str r0, [r1]
_08010948:
	pop {r0}
	bx r0
	.align 2, 0
_0801094C: .4byte 0x02035760
	thumb_func_end sub_08010930

	thumb_func_start sub_08010950
sub_08010950: @ 0x08010950
	push {lr}
	movs r0, #0x1f
	bl sub_080034D4
	cmp r0, #0
	beq _0801096E
	movs r0, #0x1f
	bl sub_08003450
	bl sub_0800A468
	bl sub_0800A2BC
	bl sub_080106CC
_0801096E:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010950

	thumb_func_start sub_08010974
sub_08010974: @ 0x08010974
	push {r4, lr}
	ldr r4, _08010988 @ =0x02035760
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _080109B8
	cmp r0, #1
	bgt _0801098C
	cmp r0, #0
	beq _08010996
	b _08010A1C
	.align 2, 0
_08010988: .4byte 0x02035760
_0801098C:
	cmp r0, #2
	beq _080109F8
	cmp r0, #3
	beq _08010A06
	b _08010A1C
_08010996:
	ldr r0, [r4, #0x10]
	bl sub_0800A6C0
	cmp r0, #0
	beq _08010A1C
	ldr r0, _080109B4 @ =0x03001E30
	ldr r0, [r0]
	str r0, [r4, #0x1c]
	movs r0, #1
	str r0, [r4, #8]
	bl sub_0800A468
	bl sub_0800A2BC
	b _08010A1C
	.align 2, 0
_080109B4: .4byte 0x03001E30
_080109B8:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _080109C4
	movs r0, #0
	ldr r1, [r4, #0x20]
	b _080109C8
_080109C4:
	movs r0, #1
	ldr r1, [r4, #0x24]
_080109C8:
	bl sub_0800A770
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08010A1C
	ldr r4, _080109E4 @ =0x02035760
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _080109E8
	bl sub_0804402C
	b _080109EA
	.align 2, 0
_080109E4: .4byte 0x02035760
_080109E8:
	movs r0, #1
_080109EA:
	str r0, [r4, #0x18]
	ldr r1, _080109F4 @ =0x02035760
	movs r0, #2
	str r0, [r1, #8]
	b _08010A1C
	.align 2, 0
_080109F4: .4byte 0x02035760
_080109F8:
	bl sub_0800A2BC
	bl sub_0800A3B4
	movs r0, #3
	str r0, [r4, #8]
	b _08010A1C
_08010A06:
	ldr r0, [r4, #0x10]
	bl sub_0800A6C0
	cmp r0, #0
	beq _08010A1C
	ldr r0, _08010A24 @ =0x000003E7
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #4]
_08010A1C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010A24: .4byte 0x000003E7
	thumb_func_end sub_08010974

	thumb_func_start sub_08010A28
sub_08010A28: @ 0x08010A28
	push {r4, lr}
	sub sp, #8
	ldr r4, _08010A40 @ =0x02035760
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _08010A5A
	cmp r0, #1
	bgt _08010A44
	cmp r0, #0
	beq _08010A4A
	b _08010AAA
	.align 2, 0
_08010A40: .4byte 0x02035760
_08010A44:
	cmp r0, #2
	beq _08010A94
	b _08010AAA
_08010A4A:
	ldr r0, [r4, #0x10]
	bl sub_0800A6C0
	cmp r0, #0
	beq _08010AAA
	movs r0, #1
	str r0, [r4, #8]
	b _08010AAA
_08010A5A:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	mov ip, r1
	movs r2, #0x80
	lsls r2, r2, #1
	add r2, ip
	movs r3, #0x80
	lsls r3, r3, #2
	add r3, ip
	movs r1, #0xc0
	lsls r1, r1, #2
	add r1, ip
	str r1, [sp]
	ldr r1, [r4, #0x2c]
	str r1, [sp, #4]
	mov r1, ip
	bl sub_0800A708
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08010AAA
	ldr r0, [r4, #0x30]
	bl sub_0804402C
	str r0, [r4, #0x18]
	movs r0, #2
	str r0, [r4, #8]
	b _08010AAA
_08010A94:
	ldr r0, [r4, #0x10]
	bl sub_0800A6C0
	cmp r0, #0
	beq _08010AAA
	ldr r0, _08010AB4 @ =0x000003E7
	str r0, [r4, #8]
	ldr r0, [r4, #0x18]
	str r0, [r4, #0x14]
	movs r0, #0
	str r0, [r4, #4]
_08010AAA:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010AB4: .4byte 0x000003E7
	thumb_func_end sub_08010A28

	thumb_func_start sub_08010AB8
sub_08010AB8: @ 0x08010AB8
	push {r4, lr}
	ldr r4, _08010AD4 @ =0x02035760
	ldr r0, [r4]
	cmp r0, #0
	beq _08010AF4
	bl sub_0800A434
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08010AD8
	subs r0, #1
	str r0, [r4, #0xc]
	b _08010AF4
	.align 2, 0
_08010AD4: .4byte 0x02035760
_08010AD8:
	bl sub_0800A5E4
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _08010AEA
	cmp r0, #2
	beq _08010AF0
	b _08010AF4
_08010AEA:
	bl sub_08010A28
	b _08010AF4
_08010AF0:
	bl sub_08010974
_08010AF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010AB8

	thumb_func_start sub_08010AFC
sub_08010AFC: @ 0x08010AFC
	push {r4, lr}
	sub sp, #4
	bl sub_0800A2BC
	bl sub_080106D8
	ldr r0, _08010B2C @ =0x020357A0
	ldr r1, _08010B30 @ =0x02035350
	movs r4, #0
	str r4, [sp]
	movs r2, #0x10
	movs r3, #0
	bl sub_080106F0
	ldr r0, _08010B34 @ =0x02035760
	str r4, [r0]
	ldr r1, _08010B38 @ =sub_08010AB8
	movs r0, #0x1f
	bl sub_0800356C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08010B2C: .4byte 0x020357A0
_08010B30: .4byte 0x02035350
_08010B34: .4byte 0x02035760
_08010B38: .4byte sub_08010AB8
	thumb_func_end sub_08010AFC

	thumb_func_start sub_08010B3C
sub_08010B3C: @ 0x08010B3C
	push {lr}
	bl sub_08010B9C
	cmp r0, #0
	beq _08010B50
	ldr r1, _08010B54 @ =sub_08010AFC
	ldr r2, _08010B58 @ =0x00001001
	movs r0, #0x1f
	bl sub_08003344
_08010B50:
	pop {r0}
	bx r0
	.align 2, 0
_08010B54: .4byte sub_08010AFC
_08010B58: .4byte 0x00001001
	thumb_func_end sub_08010B3C

	thumb_func_start sub_08010B5C
sub_08010B5C: @ 0x08010B5C
	push {r4, lr}
	ldr r4, _08010B70 @ =0x0203FFE0
	ldrh r0, [r4]
	cmp r0, #0
	bne _08010B74
	movs r0, #0
	bl sub_08010B90
	b _08010B7A
	.align 2, 0
_08010B70: .4byte 0x0203FFE0
_08010B74:
	movs r0, #1
	bl sub_08010B90
_08010B7A:
	ldrh r0, [r4, #4]
	adds r0, #1
	bl sub_08010BA8
	movs r1, #2
	ldrsh r0, [r4, r1]
	bl sub_08010BC0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08010B5C

	thumb_func_start sub_08010B90
sub_08010B90: @ 0x08010B90
	ldr r1, _08010B98 @ =0x02034920
	str r0, [r1]
	bx lr
	.align 2, 0
_08010B98: .4byte 0x02034920
	thumb_func_end sub_08010B90

	thumb_func_start sub_08010B9C
sub_08010B9C: @ 0x08010B9C
	ldr r0, _08010BA4 @ =0x02034920
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08010BA4: .4byte 0x02034920
	thumb_func_end sub_08010B9C

	thumb_func_start sub_08010BA8
sub_08010BA8: @ 0x08010BA8
	ldr r1, _08010BB0 @ =0x02034920
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_08010BB0: .4byte 0x02034920
	thumb_func_end sub_08010BA8

	thumb_func_start sub_08010BB4
sub_08010BB4: @ 0x08010BB4
	ldr r0, _08010BBC @ =0x02034920
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08010BBC: .4byte 0x02034920
	thumb_func_end sub_08010BB4

	thumb_func_start sub_08010BC0
sub_08010BC0: @ 0x08010BC0
	push {lr}
	ldr r1, _08010BD4 @ =0x02034920
	strh r0, [r1, #8]
	movs r2, #8
	ldrsh r0, [r1, r2]
	bl sub_0800692C
	pop {r0}
	bx r0
	.align 2, 0
_08010BD4: .4byte 0x02034920
	thumb_func_end sub_08010BC0

	thumb_func_start sub_08010BD8
sub_08010BD8: @ 0x08010BD8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08010BF4 @ =0x03001E30
	ldr r0, [r0]
	cmp r0, #0
	bne _08010BF8
	str r1, [r4]
	movs r0, #1
	mov r2, sp
	bl sub_08003C78
	b _08010C02
	.align 2, 0
_08010BF4: .4byte 0x03001E30
_08010BF8:
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #1
	bl sub_080038A8
_08010C02:
	str r0, [r4, #4]
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_0801073C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010BD8

	thumb_func_start sub_08010C18
sub_08010C18: @ 0x08010C18
	push {lr}
	ldr r0, [r0, #4]
	bl sub_080038C8
	pop {r0}
	bx r0
	thumb_func_end sub_08010C18

	thumb_func_start sub_08010C24
sub_08010C24: @ 0x08010C24
	push {lr}
	ldr r1, _08010C38 @ =0x020358BC
	ldr r1, [r1]
	strb r0, [r1, #5]
	ldrb r0, [r1, #0xc]
	bl sub_08010D1C
	pop {r0}
	bx r0
	.align 2, 0
_08010C38: .4byte 0x020358BC
	thumb_func_end sub_08010C24

	thumb_func_start sub_08010C3C
sub_08010C3C: @ 0x08010C3C
	ldr r2, _08010C48 @ =0x020358BC
	ldr r2, [r2]
	strh r0, [r2, #8]
	strh r1, [r2, #0xa]
	bx lr
	.align 2, 0
_08010C48: .4byte 0x020358BC
	thumb_func_end sub_08010C3C

	thumb_func_start sub_08010C4C
sub_08010C4C: @ 0x08010C4C
	ldr r1, _08010C54 @ =0x020358BC
	ldr r1, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_08010C54: .4byte 0x020358BC
	thumb_func_end sub_08010C4C

	thumb_func_start sub_08010C58
sub_08010C58: @ 0x08010C58
	ldr r1, _08010C60 @ =0x020358BC
	ldr r1, [r1]
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08010C60: .4byte 0x020358BC
	thumb_func_end sub_08010C58

	thumb_func_start sub_08010C64
sub_08010C64: @ 0x08010C64
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08010C78 @ =0x020358BC
	ldr r2, [r2]
	lsrs r1, r1, #0xb
	adds r0, r0, r1
	strh r0, [r2, #0x12]
	bx lr
	.align 2, 0
_08010C78: .4byte 0x020358BC
	thumb_func_end sub_08010C64

	thumb_func_start sub_08010C7C
sub_08010C7C: @ 0x08010C7C
	ldr r1, _08010C84 @ =0x020358BC
	ldr r1, [r1]
	strb r0, [r1, #0xf]
	bx lr
	.align 2, 0
_08010C84: .4byte 0x020358BC
	thumb_func_end sub_08010C7C

	thumb_func_start sub_08010C88
sub_08010C88: @ 0x08010C88
	ldr r1, _08010C90 @ =0x020358BC
	ldr r1, [r1]
	strb r0, [r1, #0x10]
	bx lr
	.align 2, 0
_08010C90: .4byte 0x020358BC
	thumb_func_end sub_08010C88

	thumb_func_start sub_08010C94
sub_08010C94: @ 0x08010C94
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08010CA8 @ =0x020358BC
	ldr r2, [r2]
	lsrs r1, r1, #0xb
	adds r0, r0, r1
	strh r0, [r2, #0x1a]
	bx lr
	.align 2, 0
_08010CA8: .4byte 0x020358BC
	thumb_func_end sub_08010C94

	thumb_func_start sub_08010CAC
sub_08010CAC: @ 0x08010CAC
	ldr r1, _08010CB4 @ =0x020358BC
	ldr r1, [r1]
	strb r0, [r1, #0x18]
	bx lr
	.align 2, 0
_08010CB4: .4byte 0x020358BC
	thumb_func_end sub_08010CAC

	thumb_func_start sub_08010CB8
sub_08010CB8: @ 0x08010CB8
	ldr r1, _08010CC0 @ =0x020358BC
	ldr r1, [r1]
	strb r0, [r1, #0x19]
	bx lr
	.align 2, 0
_08010CC0: .4byte 0x020358BC
	thumb_func_end sub_08010CB8

	thumb_func_start sub_08010CC4
sub_08010CC4: @ 0x08010CC4
	ldr r0, _08010CD0 @ =0x020358BC
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08010CD0: .4byte 0x020358BC
	thumb_func_end sub_08010CC4

	thumb_func_start sub_08010CD4
sub_08010CD4: @ 0x08010CD4
	push {lr}
	lsls r0, r0, #0x18
	ldr r1, _08010CEC @ =0x020358BC
	ldr r2, [r1]
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08010CF0
	movs r0, #1
	b _08010CF2
	.align 2, 0
_08010CEC: .4byte 0x020358BC
_08010CF0:
	movs r0, #2
_08010CF2:
	strb r0, [r2, #1]
	strb r3, [r2, #0xe]
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010CD4

	thumb_func_start sub_08010CFC
sub_08010CFC: @ 0x08010CFC
	ldr r0, _08010D08 @ =0x020358BC
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08010D08: .4byte 0x020358BC
	thumb_func_end sub_08010CFC

	thumb_func_start sub_08010D0C
sub_08010D0C: @ 0x08010D0C
	ldr r1, _08010D18 @ =0x020358BC
	ldr r2, [r1]
	movs r1, #3
	strb r1, [r2, #1]
	strb r0, [r2, #0xe]
	bx lr
	.align 2, 0
_08010D18: .4byte 0x020358BC
	thumb_func_end sub_08010D0C

	thumb_func_start sub_08010D1C
sub_08010D1C: @ 0x08010D1C
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	mov r1, sp
	ldr r0, _08010D3C @ =0x08048600
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08010D40 @ =0x020358BC
	ldr r2, [r0]
	cmp r4, #0
	bne _08010D44
	movs r1, #0
	movs r5, #0
	b _08010D56
	.align 2, 0
_08010D3C: .4byte 0x08048600
_08010D40: .4byte 0x020358BC
_08010D44:
	ldrb r0, [r2, #5]
	lsls r0, r0, #2
	add r0, sp
	ldr r1, [r0]
	movs r0, #0xc1
	lsls r0, r0, #6
	orrs r1, r0
	movs r0, #0x10
	subs r5, r0, r4
_08010D56:
	strb r4, [r2, #0xc]
	adds r0, r1, #0
	bl sub_08001000
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800101C
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010D1C

	thumb_func_start sub_08010D70
sub_08010D70: @ 0x08010D70
	ldr r0, _08010D78 @ =0x020358BC
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08010D78: .4byte 0x020358BC
	thumb_func_end sub_08010D70

	thumb_func_start sub_08010D7C
sub_08010D7C: @ 0x08010D7C
	push {r4, r5, r6, lr}
	ldr r0, _08010DC4 @ =0x020358BC
	ldr r4, [r0]
	movs r6, #0
	strb r6, [r4]
	strb r6, [r4, #1]
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #2
	strh r0, [r4, #2]
	movs r0, #0xe0
	strb r0, [r4, #4]
	strb r5, [r4, #5]
	strh r6, [r4, #8]
	movs r0, #0xd
	strh r0, [r4, #0xa]
	movs r0, #0xc
	strb r0, [r4, #0xc]
	strb r5, [r4, #0xd]
	bl sub_08010D1C
	movs r0, #0xff
	strb r0, [r4, #0xe]
	movs r1, #0x20
	strh r1, [r4, #0x12]
	movs r0, #0xf
	strb r0, [r4, #0xf]
	strb r5, [r4, #0x10]
	str r6, [r4, #0x14]
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x19]
	strh r1, [r4, #0x1a]
	str r6, [r4, #0x1c]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08010DC4: .4byte 0x020358BC
	thumb_func_end sub_08010D7C

	thumb_func_start sub_08010DC8
sub_08010DC8: @ 0x08010DC8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5, #5]
	bl sub_08000D6C
	ldrh r1, [r5, #0xa]
	lsls r1, r1, #5
	ldrh r2, [r5, #8]
	lsls r2, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _08010E0C @ =0x08205408
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r2, [r4]
	ldrh r3, [r5, #2]
	ldrb r1, [r5, #4]
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	bl sub_08003F8C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010E0C: .4byte 0x08205408
	thumb_func_end sub_08010DC8

	thumb_func_start sub_08010E10
sub_08010E10: @ 0x08010E10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _08010E24
	bl sub_080028D4
	movs r0, #0
	str r0, [r5, #0x14]
_08010E24:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _08010E32
	bl sub_080028D4
	movs r0, #0
	str r0, [r5, #0x1c]
_08010E32:
	movs r1, #0xe
	ldrsb r1, [r5, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08010EE8
	adds r3, r1, #0
	movs r0, #0
	movs r1, #1
	movs r2, #0x17
	bl sub_08001AC4
	adds r4, r0, #0
	ldrb r1, [r5, #0xf]
	bl sub_0800257C
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	adds r0, r4, #0
	bl sub_0800256C
	ldrb r1, [r5, #0x10]
	adds r0, r4, #0
	bl sub_0800258C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002624
	ldrh r0, [r5, #8]
	lsls r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #5
	str r0, [r4, #8]
	cmp r6, #0
	beq _08010E92
	movs r0, #0x19
	strh r0, [r4, #0xe]
_08010E92:
	str r4, [r5, #0x14]
	movs r0, #0
	movs r1, #1
	movs r2, #0x15
	movs r3, #0
	bl sub_08001AC4
	adds r4, r0, #0
	ldrb r1, [r5, #0x18]
	bl sub_0800257C
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	adds r0, r4, #0
	bl sub_0800256C
	ldrb r1, [r5, #0x19]
	adds r0, r4, #0
	bl sub_0800258C
	adds r0, r4, #0
	movs r1, #1
	bl sub_08002624
	ldrh r0, [r5, #8]
	lsls r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #0xb
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	cmp r6, #0
	beq _08010EE6
	movs r0, #0x19
	strh r0, [r4, #0xe]
_08010EE6:
	str r4, [r5, #0x1c]
_08010EE8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08010E10

	thumb_func_start sub_08010EF0
sub_08010EF0: @ 0x08010EF0
	push {r4, r5, lr}
	ldr r0, _08010F2C @ =0x020358BC
	ldr r4, [r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08010F00
	bl sub_080028D4
_08010F00:
	movs r5, #0
	str r5, [r4, #0x14]
	movs r0, #0xff
	strb r0, [r4, #0xe]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _08010F12
	bl sub_080028D4
_08010F12:
	str r5, [r4, #0x1c]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010DC8
	strb r5, [r4, #0xd]
	strb r5, [r4, #1]
	movs r0, #1
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010F2C: .4byte 0x020358BC
	thumb_func_end sub_08010EF0

	thumb_func_start sub_08010F30
sub_08010F30: @ 0x08010F30
	ldr r0, _08010F44 @ =0x020358BC
	ldr r1, [r0]
	movs r2, #0
	movs r0, #8
	strb r0, [r1, #0xd]
	strb r2, [r1, #1]
	movs r0, #2
	strb r0, [r1]
	bx lr
	.align 2, 0
_08010F44: .4byte 0x020358BC
	thumb_func_end sub_08010F30

	thumb_func_start sub_08010F48
sub_08010F48: @ 0x08010F48
	push {r4, lr}
	ldr r0, _08010F68 @ =0x020358BC
	ldr r4, [r0]
	ldrb r0, [r4]
	cmp r0, #2
	beq _08010F6C
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08010F86
	bl sub_08010F30
	b _08010F86
	.align 2, 0
_08010F68: .4byte 0x020358BC
_08010F6C:
	movs r1, #0xe
	ldrsb r1, [r4, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08010F82
	adds r0, r4, #0
	movs r1, #0
	bl sub_08010E10
	b _08010F86
_08010F82:
	bl sub_08010EF0
_08010F86:
	movs r0, #0
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08010F48

	thumb_func_start sub_08010F90
sub_08010F90: @ 0x08010F90
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r0, _08010FF0 @ =0x020358BC
	ldr r5, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	beq _08010FE8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _08010FAC
	bl sub_080028D4
	movs r0, #0
	str r0, [r5, #0x14]
_08010FAC:
	movs r0, #0xff
	strb r0, [r5, #0xe]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _08010FBE
	bl sub_080028D4
	movs r0, #0
	str r0, [r5, #0x1c]
_08010FBE:
	ldrb r0, [r5, #5]
	ldrh r1, [r5, #2]
	ldrh r4, [r5, #8]
	lsls r2, r4, #0xb
	ldrh r3, [r5, #0xa]
	lsls r3, r3, #0xb
	adds r4, #0x1e
	lsls r4, r4, #0xb
	str r4, [sp]
	ldrh r4, [r5, #0xa]
	adds r4, #7
	lsls r4, r4, #0xb
	str r4, [sp, #4]
	movs r4, #2
	str r4, [sp, #8]
	bl sub_08000DE4
	movs r0, #0
	strb r0, [r5, #0xd]
	strb r0, [r5, #1]
	strb r0, [r5]
_08010FE8:
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08010FF0: .4byte 0x020358BC
	thumb_func_end sub_08010F90

	thumb_func_start sub_08010FF4
sub_08010FF4: @ 0x08010FF4
	push {r4, r5, lr}
	ldr r0, _0801100C @ =0x020358BC
	ldr r5, [r0]
	ldrb r0, [r5, #1]
	cmp r0, #2
	beq _08011020
	cmp r0, #2
	bgt _08011010
	cmp r0, #1
	beq _0801101A
	b _08011030
	.align 2, 0
_0801100C: .4byte 0x020358BC
_08011010:
	cmp r0, #3
	beq _08011026
	cmp r0, #4
	beq _0801102C
	b _08011030
_0801101A:
	bl sub_08010EF0
	b _08011030
_08011020:
	bl sub_08010F30
	b _08011030
_08011026:
	bl sub_08010F48
	b _08011030
_0801102C:
	bl sub_08010F90
_08011030:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _08011072
	subs r0, #1
	strb r0, [r5, #0xd]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _0801104C
	adds r0, r5, #0
	movs r1, #0
	bl sub_08010DC8
	b _08011072
_0801104C:
	cmp r0, #4
	beq _08011072
	cmp r0, #3
	bne _08011066
	adds r0, r5, #0
	movs r1, #1
	bl sub_08010DC8
	adds r0, r5, #0
	movs r1, #1
	bl sub_08010E10
	b _08011072
_08011066:
	cmp r0, #0
	bne _08011072
	adds r0, r5, #0
	movs r1, #2
	bl sub_08010DC8
_08011072:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _080110AE
	bl sub_08001B58
	ldr r4, [r5, #0x14]
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	cmp r0, #0xff
	bgt _080110A4
	bl sub_08045398
	ldr r3, _080110A0 @ =0x9999999A
	ldr r2, _0801109C @ =0x40599999
	bl sub_08044C0C
	bl sub_08045414
	strh r0, [r4, #0xe]
	b _080110AE
	.align 2, 0
_0801109C: .4byte 0x40599999
_080110A0: .4byte 0x9999999A
_080110A4:
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080110AE
	strh r1, [r4, #0xe]
_080110AE:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _080110EA
	bl sub_08001B58
	ldr r4, [r5, #0x1c]
	movs r1, #0xe
	ldrsh r0, [r4, r1]
	cmp r0, #0xff
	bgt _080110E0
	bl sub_08045398
	ldr r3, _080110DC @ =0x9999999A
	ldr r2, _080110D8 @ =0x40599999
	bl sub_08044C0C
	bl sub_08045414
	strh r0, [r4, #0xe]
	b _080110EA
	.align 2, 0
_080110D8: .4byte 0x40599999
_080110DC: .4byte 0x9999999A
_080110E0:
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080110EA
	strh r1, [r4, #0xe]
_080110EA:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08010FF4

	thumb_func_start sub_080110F0
sub_080110F0: @ 0x080110F0
	push {lr}
	bl sub_080035FC
	ldr r1, _08011100 @ =sub_08010FF4
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08011100: .4byte sub_08010FF4
	thumb_func_end sub_080110F0

	thumb_func_start sub_08011104
sub_08011104: @ 0x08011104
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _0801111E
	ldr r0, _08011124 @ =0x020358BC
	ldr r0, [r0]
	bl sub_080038C8
	adds r0, r4, #0
	bl sub_08003450
_0801111E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011124: .4byte 0x020358BC
	thumb_func_end sub_08011104

	thumb_func_start sub_08011128
sub_08011128: @ 0x08011128
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08011150 @ =0x020358BC
	movs r0, #1
	movs r1, #0x20
	bl sub_080038A8
	str r0, [r5]
	bl sub_08010D7C
	ldr r1, _08011154 @ =sub_080110F0
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08003344
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011150: .4byte 0x020358BC
_08011154: .4byte sub_080110F0
	thumb_func_end sub_08011128

	thumb_func_start sub_08011158
sub_08011158: @ 0x08011158
	ldr r0, _08011178 @ =0x020358E0
	ldr r1, [r0]
	movs r2, #0
	strb r2, [r1]
	movs r0, #0x18
	strh r0, [r1, #6]
	movs r0, #0x7e
	strh r0, [r1, #8]
	str r2, [r1, #0xc]
	movs r0, #8
	strh r0, [r1, #2]
	movs r0, #0xf
	strb r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_08011178: .4byte 0x020358E0
	thumb_func_end sub_08011158

	thumb_func_start sub_0801117C
sub_0801117C: @ 0x0801117C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08011190 @ =0x020358E0
	ldr r2, [r2]
	lsrs r1, r1, #0xb
	adds r0, r0, r1
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_08011190: .4byte 0x020358E0
	thumb_func_end sub_0801117C

	thumb_func_start sub_08011194
sub_08011194: @ 0x08011194
	ldr r1, _0801119C @ =0x020358E0
	ldr r1, [r1]
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_0801119C: .4byte 0x020358E0
	thumb_func_end sub_08011194

	thumb_func_start sub_080111A0
sub_080111A0: @ 0x080111A0
	ldr r1, _080111A8 @ =0x020358E0
	ldr r1, [r1]
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_080111A8: .4byte 0x020358E0
	thumb_func_end sub_080111A0

	thumb_func_start sub_080111AC
sub_080111AC: @ 0x080111AC
	push {r4, r5, lr}
	ldr r0, _08011200 @ =0x020358E0
	ldr r5, [r0]
	ldrb r0, [r5]
	cmp r0, #1
	bne _080111C2
	ldr r0, [r5, #0xc]
	bl sub_080028D4
	movs r0, #0
	str r0, [r5, #0xc]
_080111C2:
	movs r0, #0
	movs r1, #1
	movs r2, #4
	movs r3, #0
	bl sub_08001AE4
	adds r4, r0, #0
	ldrb r1, [r5, #4]
	bl sub_0800257C
	movs r0, #2
	ldrsh r1, [r5, r0]
	adds r0, r4, #0
	bl sub_0800256C
	ldrb r1, [r5, #5]
	adds r0, r4, #0
	bl sub_0800258C
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	str r0, [r4]
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	str r4, [r5, #0xc]
	movs r0, #1
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011200: .4byte 0x020358E0
	thumb_func_end sub_080111AC

	thumb_func_start sub_08011204
sub_08011204: @ 0x08011204
	ldr r2, _08011210 @ =0x020358E0
	ldr r2, [r2]
	strh r0, [r2, #6]
	strh r1, [r2, #8]
	bx lr
	.align 2, 0
_08011210: .4byte 0x020358E0
	thumb_func_end sub_08011204

	thumb_func_start sub_08011214
sub_08011214: @ 0x08011214
	push {r4, r5, lr}
	ldr r5, _08011238 @ =0x020358E0
	ldr r4, [r5]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0801122C
	ldr r0, [r4, #0xc]
	bl sub_080028D4
	ldr r1, [r5]
	movs r0, #0
	str r0, [r1, #0xc]
_0801122C:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011238: .4byte 0x020358E0
	thumb_func_end sub_08011214

	thumb_func_start sub_0801123C
sub_0801123C: @ 0x0801123C
	ldr r0, _08011244 @ =0x020358E0
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08011244: .4byte 0x020358E0
	thumb_func_end sub_0801123C

	thumb_func_start sub_08011248
sub_08011248: @ 0x08011248
	push {r4, r5, lr}
	ldr r0, _08011270 @ =0x020358E0
	ldr r5, [r0]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08011268
	ldr r4, [r5, #0xc]
	adds r0, r4, #0
	bl sub_08001B58
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	str r0, [r4]
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
_08011268:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011270: .4byte 0x020358E0
	thumb_func_end sub_08011248

	thumb_func_start sub_08011274
sub_08011274: @ 0x08011274
	push {lr}
	bl sub_080035FC
	ldr r1, _08011284 @ =sub_08011248
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08011284: .4byte sub_08011248
	thumb_func_end sub_08011274

	thumb_func_start sub_08011288
sub_08011288: @ 0x08011288
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _080112B4
	ldr r4, _080112BC @ =0x020358E0
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _080112A8
	bl sub_080028D4
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0xc]
_080112A8:
	ldr r0, [r4]
	bl sub_080038C8
	adds r0, r5, #0
	bl sub_08003450
_080112B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080112BC: .4byte 0x020358E0
	thumb_func_end sub_08011288

	thumb_func_start sub_080112C0
sub_080112C0: @ 0x080112C0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _080112E8 @ =0x020358E0
	movs r0, #1
	movs r1, #0x10
	bl sub_080038A8
	str r0, [r5]
	bl sub_08011158
	ldr r1, _080112EC @ =sub_08011274
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08003344
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080112E8: .4byte 0x020358E0
_080112EC: .4byte sub_08011274
	thumb_func_end sub_080112C0

	thumb_func_start sub_080112F0
sub_080112F0: @ 0x080112F0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	ldr r2, _08011304 @ =0x02037770
	ldr r2, [r2]
	lsrs r1, r1, #0xb
	adds r0, r0, r1
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_08011304: .4byte 0x02037770
	thumb_func_end sub_080112F0

	thumb_func_start sub_08011308
sub_08011308: @ 0x08011308
	ldr r1, _08011310 @ =0x02037770
	ldr r1, [r1]
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08011310: .4byte 0x02037770
	thumb_func_end sub_08011308

	thumb_func_start sub_08011314
sub_08011314: @ 0x08011314
	ldr r1, _0801131C @ =0x02037770
	ldr r1, [r1]
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_0801131C: .4byte 0x02037770
	thumb_func_end sub_08011314

	thumb_func_start sub_08011320
sub_08011320: @ 0x08011320
	push {r4, r5, lr}
	ldr r0, _08011374 @ =0x02037770
	ldr r5, [r0]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08011336
	ldr r0, [r5, #0xc]
	bl sub_080028D4
	movs r0, #0
	str r0, [r5, #0xc]
_08011336:
	movs r0, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0
	bl sub_08001AE4
	adds r4, r0, #0
	ldrb r1, [r5, #4]
	bl sub_0800257C
	movs r0, #2
	ldrsh r1, [r5, r0]
	adds r0, r4, #0
	bl sub_0800256C
	ldrb r1, [r5, #5]
	adds r0, r4, #0
	bl sub_0800258C
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	str r0, [r4]
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
	str r4, [r5, #0xc]
	movs r0, #1
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011374: .4byte 0x02037770
	thumb_func_end sub_08011320

	thumb_func_start sub_08011378
sub_08011378: @ 0x08011378
	ldr r2, _08011384 @ =0x02037770
	ldr r2, [r2]
	strh r0, [r2, #6]
	strh r1, [r2, #8]
	bx lr
	.align 2, 0
_08011384: .4byte 0x02037770
	thumb_func_end sub_08011378

	thumb_func_start sub_08011388
sub_08011388: @ 0x08011388
	push {r4, r5, lr}
	ldr r5, _080113AC @ =0x02037770
	ldr r4, [r5]
	ldrb r0, [r4]
	cmp r0, #1
	bne _080113A0
	ldr r0, [r4, #0xc]
	bl sub_080028D4
	ldr r1, [r5]
	movs r0, #0
	str r0, [r1, #0xc]
_080113A0:
	movs r0, #0
	strb r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080113AC: .4byte 0x02037770
	thumb_func_end sub_08011388

	thumb_func_start sub_080113B0
sub_080113B0: @ 0x080113B0
	ldr r0, _080113B8 @ =0x02037770
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_080113B8: .4byte 0x02037770
	thumb_func_end sub_080113B0

	thumb_func_start sub_080113BC
sub_080113BC: @ 0x080113BC
	ldr r0, _080113DC @ =0x02037770
	ldr r0, [r0]
	movs r2, #0
	strb r2, [r0]
	movs r1, #0xd8
	strh r1, [r0, #6]
	movs r1, #0x96
	strh r1, [r0, #8]
	str r2, [r0, #0xc]
	strh r2, [r0, #2]
	movs r1, #0xf
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #5]
	bx lr
	.align 2, 0
_080113DC: .4byte 0x02037770
	thumb_func_end sub_080113BC

	thumb_func_start sub_080113E0
sub_080113E0: @ 0x080113E0
	push {r4, r5, lr}
	ldr r0, _08011408 @ =0x02037770
	ldr r5, [r0]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08011400
	ldr r4, [r5, #0xc]
	adds r0, r4, #0
	bl sub_08001B58
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	str r0, [r4]
	ldrh r0, [r5, #8]
	lsls r0, r0, #8
	str r0, [r4, #4]
_08011400:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011408: .4byte 0x02037770
	thumb_func_end sub_080113E0

	thumb_func_start sub_0801140C
sub_0801140C: @ 0x0801140C
	push {lr}
	bl sub_080035FC
	ldr r1, _0801141C @ =sub_080113E0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0801141C: .4byte sub_080113E0
	thumb_func_end sub_0801140C

	thumb_func_start sub_08011420
sub_08011420: @ 0x08011420
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _0801144C
	ldr r4, _08011454 @ =0x02037770
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _08011440
	bl sub_080028D4
	ldr r1, [r4]
	movs r0, #0
	str r0, [r1, #0xc]
_08011440:
	ldr r0, [r4]
	bl sub_080038C8
	adds r0, r5, #0
	bl sub_08003450
_0801144C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08011454: .4byte 0x02037770
	thumb_func_end sub_08011420

	thumb_func_start sub_08011458
sub_08011458: @ 0x08011458
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08011480 @ =0x02037770
	movs r0, #1
	movs r1, #0x10
	bl sub_080038A8
	str r0, [r5]
	bl sub_080113BC
	ldr r1, _08011484 @ =sub_0801140C
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08003344
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08011480: .4byte 0x02037770
_08011484: .4byte sub_0801140C
	thumb_func_end sub_08011458

	thumb_func_start sub_08011488
sub_08011488: @ 0x08011488
	push {r4, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08011498 @ =0x08205414
	ldr r3, _0801149C @ =0x0000FFFF
	b _080114A2
	.align 2, 0
_08011498: .4byte 0x08205414
_0801149C: .4byte 0x0000FFFF
_080114A0:
	adds r2, #8
_080114A2:
	ldrh r1, [r2]
	cmp r1, r3
	bne _080114AC
	movs r0, #0
	b _080114CC
_080114AC:
	cmp r1, r0
	bne _080114A0
	ldrh r0, [r2, #2]
	ldrh r1, [r2, #4]
	bl sub_08003A5C
	adds r3, r0, #0
	adds r3, #8
	adds r1, r4, #0
	movs r2, #0x1f
_080114C0:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #1
	cmp r2, #0
	bge _080114C0
	movs r0, #1
_080114CC:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08011488

	thumb_func_start sub_080114D4
sub_080114D4: @ 0x080114D4
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end sub_080114D4

	thumb_func_start sub_080114DC
sub_080114DC: @ 0x080114DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sl, r1
	str r2, [sp]
	mov sb, r3
	ldr r2, [sp, #0x28]
	movs r1, #0
	ldr r4, _08011518 @ =0x020358F0
	ldr r0, [r4]
	cmp r0, #0
	beq _0801150E
	adds r3, r4, #0
_080114FE:
	adds r3, #0xf4
	adds r1, #1
	cmp r1, #0x1f
	bgt _0801150E
	adds r4, r3, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _080114FE
_0801150E:
	cmp r1, #0x20
	bne _0801151C
	movs r0, #0
	b _080115C4
	.align 2, 0
_08011518: .4byte 0x020358F0
_0801151C:
	movs r3, #0
	ldrb r0, [r2]
	strb r0, [r4, #4]
	ldrb r0, [r2]
	adds r1, r4, #4
	mov r8, r1
	movs r1, #0xf0
	adds r1, r1, r4
	mov ip, r1
	adds r5, r4, #0
	adds r5, #0x44
	cmp r0, #0
	beq _0801154C
	mov r6, r8
_08011538:
	adds r3, #1
	adds r2, #1
	cmp r3, #0x3f
	bgt _0801154C
	adds r0, r6, r3
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08011538
_0801154C:
	mov r0, ip
	str r7, [r0]
	cmp r7, #0
	beq _0801155A
	cmp r7, #1
	beq _0801155E
	b _08011562
_0801155A:
	movs r0, #1
	b _08011560
_0801155E:
	movs r0, #2
_08011560:
	str r0, [r4]
_08011562:
	adds r0, r5, #0
	bl sub_08005588
	ldr r4, _080115D4 @ =0x020358C0
	ldr r0, [r4, #0x10]
	bl sub_08005558
	ldr r0, [r4, #0x14]
	bl sub_08005570
	adds r0, r5, #0
	mov r1, sb
	ldr r2, [sp, #0x24]
	bl sub_08005600
	adds r0, r5, #0
	mov r1, sl
	ldr r2, [sp]
	bl sub_0800561C
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_080055DC
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl sub_080055E0
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl sub_080055E4
	adds r0, r5, #0
	movs r1, #0
	bl sub_080055E8
	adds r0, r5, #0
	movs r1, #1
	bl sub_080055EC
	adds r0, r5, #0
	mov r1, r8
	bl sub_080055D0
	ldr r1, _080115D8 @ =sub_08011488
	adds r0, r5, #0
	bl sub_08005660
	movs r0, #1
_080115C4:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080115D4: .4byte 0x020358C0
_080115D8: .4byte sub_08011488
	thumb_func_end sub_080114DC

	thumb_func_start sub_080115DC
sub_080115DC: @ 0x080115DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov sl, r1
	str r2, [sp]
	mov sb, r3
	ldr r2, [sp, #0x30]
	movs r1, #0
	ldr r4, _08011618 @ =0x020358F0
	ldr r0, [r4]
	cmp r0, #0
	beq _0801160E
	adds r3, r4, #0
_080115FE:
	adds r3, #0xf4
	adds r1, #1
	cmp r1, #0x1f
	bgt _0801160E
	adds r4, r3, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _080115FE
_0801160E:
	cmp r1, #0x20
	bne _0801161C
	movs r0, #0
	b _080116E8
	.align 2, 0
_08011618: .4byte 0x020358F0
_0801161C:
	movs r3, #0
	ldrb r0, [r2]
	strb r0, [r4, #4]
	ldrb r0, [r2]
	adds r1, r4, #4
	mov r8, r1
	movs r1, #0xf0
	adds r1, r1, r4
	mov ip, r1
	adds r5, r4, #0
	adds r5, #0x44
	cmp r0, #0
	beq _0801164C
	mov r6, r8
_08011638:
	adds r3, #1
	adds r2, #1
	cmp r3, #0x3f
	bgt _0801164C
	adds r0, r6, r3
	ldrb r1, [r2]
	strb r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08011638
_0801164C:
	mov r0, ip
	str r7, [r0]
	cmp r7, #0
	beq _0801165A
	cmp r7, #1
	beq _0801165E
	b _08011662
_0801165A:
	movs r0, #1
	b _08011660
_0801165E:
	movs r0, #2
_08011660:
	str r0, [r4]
_08011662:
	adds r0, r5, #0
	bl sub_08005588
	ldr r4, _080116F8 @ =0x020358C0
	ldr r0, [r4, #0x10]
	bl sub_08005558
	ldr r0, [r4, #0x14]
	bl sub_08005570
	adds r0, r5, #0
	mov r1, sb
	ldr r2, [sp, #0x24]
	bl sub_08005600
	adds r0, r5, #0
	mov r1, sl
	ldr r2, [sp]
	bl sub_0800561C
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_080055DC
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl sub_080055E0
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl sub_080055E4
	adds r0, r5, #0
	ldr r1, [sp, #0x28]
	bl sub_08005658
	adds r0, r5, #0
	ldr r1, [sp, #0x2c]
	bl sub_0800565C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080055E8
	adds r0, r5, #0
	movs r1, #1
	bl sub_080055EC
	ldr r1, _080116FC @ =sub_08011488
	adds r0, r5, #0
	bl sub_08005660
	adds r0, r5, #0
	movs r1, #1
	bl sub_080055F0
	adds r0, r5, #0
	mov r1, r8
	bl sub_080055D0
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	bne _080116E6
	adds r0, r5, #0
	bl sub_080067D0
_080116E6:
	movs r0, #1
_080116E8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080116F8: .4byte 0x020358C0
_080116FC: .4byte sub_08011488
	thumb_func_end sub_080115DC

	thumb_func_start sub_08011700
sub_08011700: @ 0x08011700
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r4, #0
	bne _0801171C
	cmp r5, #0
	bne _0801171C
	cmp r6, #0
	bne _0801171C
	cmp r7, #0
	beq _08011736
_0801171C:
	ldr r1, _08011740 @ =0x020358C0
	ldr r0, [r1, #0xc]
	ldrh r1, [r1, #0x18]
	lsls r2, r4, #8
	lsls r3, r5, #8
	lsls r4, r6, #8
	str r4, [sp]
	lsls r4, r7, #8
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	bl sub_08000DE4
_08011736:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08011740: .4byte 0x020358C0
	thumb_func_end sub_08011700

	thumb_func_start sub_08011744
sub_08011744: @ 0x08011744
	adds r2, r0, #0
	ldr r1, _0801174C @ =0x020358C0
	str r2, [r1]
	bx lr
	.align 2, 0
_0801174C: .4byte 0x020358C0
	thumb_func_end sub_08011744

	thumb_func_start sub_08011750
sub_08011750: @ 0x08011750
	adds r2, r0, #0
	ldr r1, _08011758 @ =0x020358C0
	str r2, [r1, #4]
	bx lr
	.align 2, 0
_08011758: .4byte 0x020358C0
	thumb_func_end sub_08011750

	thumb_func_start sub_0801175C
sub_0801175C: @ 0x0801175C
	adds r2, r0, #0
	ldr r1, _08011764 @ =0x020358C0
	str r2, [r1, #8]
	bx lr
	.align 2, 0
_08011764: .4byte 0x020358C0
	thumb_func_end sub_0801175C

	thumb_func_start sub_08011768
sub_08011768: @ 0x08011768
	adds r2, r0, #0
	ldr r1, _08011770 @ =0x020358C0
	str r2, [r1, #0xc]
	bx lr
	.align 2, 0
_08011770: .4byte 0x020358C0
	thumb_func_end sub_08011768

	thumb_func_start sub_08011774
sub_08011774: @ 0x08011774
	adds r2, r0, #0
	ldr r1, _0801177C @ =0x020358C0
	str r2, [r1, #0x10]
	bx lr
	.align 2, 0
_0801177C: .4byte 0x020358C0
	thumb_func_end sub_08011774

	thumb_func_start sub_08011780
sub_08011780: @ 0x08011780
	adds r2, r0, #0
	ldr r1, _08011788 @ =0x020358C0
	str r2, [r1, #0x14]
	bx lr
	.align 2, 0
_08011788: .4byte 0x020358C0
	thumb_func_end sub_08011780

	thumb_func_start sub_0801178C
sub_0801178C: @ 0x0801178C
	adds r2, r0, #0
	ldr r1, _08011794 @ =0x020358C0
	str r2, [r1, #0x18]
	bx lr
	.align 2, 0
_08011794: .4byte 0x020358C0
	thumb_func_end sub_0801178C

	thumb_func_start sub_08011798
sub_08011798: @ 0x08011798
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _080117B8 @ =0x020358C0
	ldr r0, [r0, #0xc]
	rsbs r3, r3, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r3, #0
	bl sub_08000D9C
	pop {r0}
	bx r0
	.align 2, 0
_080117B8: .4byte 0x020358C0
	thumb_func_end sub_08011798

	thumb_func_start sub_080117BC
sub_080117BC: @ 0x080117BC
	push {lr}
	ldr r1, _080117D0 @ =0x020358F0
	ldr r0, _080117D4 @ =0x00001D8C
	adds r2, r1, r0
_080117C4:
	ldr r0, [r1]
	cmp r0, #0
	beq _080117D8
	movs r0, #1
	b _080117E0
	.align 2, 0
_080117D0: .4byte 0x020358F0
_080117D4: .4byte 0x00001D8C
_080117D8:
	adds r1, #0xf4
	cmp r1, r2
	ble _080117C4
	movs r0, #0
_080117E0:
	pop {r1}
	bx r1
	thumb_func_end sub_080117BC

	thumb_func_start sub_080117E4
sub_080117E4: @ 0x080117E4
	push {r4, r5, r6, lr}
	movs r6, #0
_080117E8:
	movs r0, #0xf4
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08011804 @ =0x020358F0
	adds r5, r1, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08011826
	cmp r0, #1
	beq _08011808
	cmp r0, #2
	beq _0801180C
	b _08011826
	.align 2, 0
_08011804: .4byte 0x020358F0
_08011808:
	movs r0, #2
	b _08011824
_0801180C:
	adds r4, r5, #0
	adds r4, #0x44
	adds r0, r4, #0
	bl sub_08005EDC
	adds r0, r4, #0
	bl sub_08006684
	adds r0, r4, #0
	bl sub_080067A0
	movs r0, #0
_08011824:
	str r0, [r5]
_08011826:
	adds r6, #1
	cmp r6, #0x1f
	ble _080117E8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080117E4

	thumb_func_start sub_08011834
sub_08011834: @ 0x08011834
	push {r4, r5, lr}
	sub sp, #4
	movs r0, #0xf0
	lsls r0, r0, #1
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #0x2d
	movs r3, #1
	bl sub_08003E7C
	bl sub_080054A4
	movs r0, #2
	movs r1, #0
	movs r2, #0x2c
	bl sub_080054D8
	movs r0, #2
	bl sub_080054F8
	movs r0, #0xf
	bl sub_08005504
	movs r0, #1
	bl sub_0800551C
	movs r0, #0
	bl sub_08005528
	movs r0, #0
	bl sub_08005534
	movs r0, #1
	bl sub_08005540
	movs r0, #0
	bl sub_0800554C
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	bl sub_08005558
	movs r0, #0
	bl sub_08005570
	ldr r0, _080118CC @ =0x020358C0
	movs r1, #0xf
	str r1, [r0]
	movs r1, #1
	str r1, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r5, [r0, #0x10]
	str r4, [r0, #0x14]
	ldr r1, _080118D0 @ =0x000003FF
	str r1, [r0, #0x18]
	ldr r4, _080118D4 @ =0x020358F0
	ldr r0, _080118D8 @ =0x00001D8C
	adds r5, r4, r0
_080118AE:
	adds r0, r4, #0
	bl sub_080114D4
	adds r4, #0xf4
	cmp r4, r5
	ble _080118AE
	bl sub_080035FC
	ldr r1, _080118DC @ =sub_080117E4
	bl sub_0800356C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080118CC: .4byte 0x020358C0
_080118D0: .4byte 0x000003FF
_080118D4: .4byte 0x020358F0
_080118D8: .4byte 0x00001D8C
_080118DC: .4byte sub_080117E4
	thumb_func_end sub_08011834

	thumb_func_start sub_080118E0
sub_080118E0: @ 0x080118E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _080118F6
	bl sub_080054D4
	adds r0, r4, #0
	bl sub_08003450
_080118F6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080118E0

	thumb_func_start sub_080118FC
sub_080118FC: @ 0x080118FC
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0801190C @ =sub_08011834
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0801190C: .4byte sub_08011834
	thumb_func_end sub_080118FC

	thumb_func_start sub_08011910
sub_08011910: @ 0x08011910
	push {lr}
	adds r2, r0, #0
	ldr r1, _08011928 @ =0x02038180
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0801192C
	movs r0, #0
	b _08011934
	.align 2, 0
_08011928: .4byte 0x02038180
_0801192C:
	lsls r0, r2, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
_08011934:
	pop {r1}
	bx r1
	thumb_func_end sub_08011910

	thumb_func_start sub_08011938
sub_08011938: @ 0x08011938
	push {lr}
	adds r2, r0, #0
	ldr r1, _08011950 @ =0x02038180
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08011954
	movs r0, #0
	b _0801195C
	.align 2, 0
_08011950: .4byte 0x02038180
_08011954:
	lsls r0, r2, #2
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
_0801195C:
	pop {r1}
	bx r1
	thumb_func_end sub_08011938

	thumb_func_start sub_08011960
sub_08011960: @ 0x08011960
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08011910
	movs r2, #0
	b _08011974
_0801196C:
	strb r1, [r4]
	adds r4, #1
	adds r0, #1
	adds r2, #1
_08011974:
	ldrb r1, [r0]
	cmp r1, #0
	bne _0801196C
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08011960

	thumb_func_start sub_08011984
sub_08011984: @ 0x08011984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r1, #0
	mov r8, r2
	mov sl, r3
	adds r6, r0, #0
	movs r7, #0
	cmp r5, #0
	bge _080119A6
	movs r0, #1
	mov sb, r0
	rsbs r5, r5, #0
	b _080119AA
_080119A6:
	movs r1, #0
	mov sb, r1
_080119AA:
	add r4, sp, #0x1c
_080119AC:
	cmp r5, #0
	bne _080119B4
	str r5, [r4]
	b _080119C8
_080119B4:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08044578
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804449C
	adds r5, r0, #0
_080119C8:
	subs r4, #4
	cmp r4, sp
	bge _080119AC
	mov r3, sb
	cmp r3, #0
	beq _080119DE
	ldr r4, _08011A20 @ =0x00007C81
	adds r0, r4, #0
	strh r0, [r6]
	adds r6, #2
	adds r7, #1
_080119DE:
	mov r0, r8
	cmp r0, #0
	bne _08011A28
	movs r2, #0
	ldr r0, [sp]
	cmp r0, #0
	bne _080119FC
	mov r1, sp
_080119EE:
	adds r1, #4
	adds r2, #1
	cmp r2, #6
	bgt _080119FC
	ldr r0, [r1]
	cmp r0, #0
	beq _080119EE
_080119FC:
	cmp r2, #7
	bgt _08011AAE
	ldr r3, _08011A24 @ =0x08205444
	lsls r0, r2, #2
	mov r4, sp
	adds r1, r0, r4
_08011A08:
	ldm r1!, {r0}
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
	adds r6, #2
	adds r7, #1
	adds r2, #1
	cmp r2, #7
	ble _08011A08
	b _08011AAE
	.align 2, 0
_08011A20: .4byte 0x00007C81
_08011A24: .4byte 0x08205444
_08011A28:
	mov r0, sl
	cmp r0, #0
	bne _08011A88
	movs r0, #8
	mov r1, r8
	subs r2, r0, r1
	cmp r2, #6
	bgt _08011A5C
	lsls r0, r2, #2
	mov r3, sp
	adds r1, r3, r0
	ldr r0, [r1]
	cmp r0, #0
	bne _08011A5C
	ldr r4, _08011A80 @ =0x00004081
	adds r3, r4, #0
_08011A48:
	strh r3, [r6]
	adds r6, #2
	adds r7, #1
	adds r1, #4
	adds r2, #1
	cmp r2, #6
	bgt _08011A5C
	ldr r0, [r1]
	cmp r0, #0
	beq _08011A48
_08011A5C:
	cmp r2, #7
	bgt _08011AAE
	ldr r3, _08011A84 @ =0x08205444
	lsls r0, r2, #2
	mov r4, sp
	adds r1, r0, r4
_08011A68:
	ldm r1!, {r0}
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
	adds r6, #2
	adds r7, #1
	adds r2, #1
	cmp r2, #7
	ble _08011A68
	b _08011AAE
	.align 2, 0
_08011A80: .4byte 0x00004081
_08011A84: .4byte 0x08205444
_08011A88:
	movs r0, #8
	mov r1, r8
	subs r2, r0, r1
	cmp r2, #7
	bgt _08011AAE
	ldr r3, _08011AC0 @ =0x08205444
	lsls r0, r2, #2
	mov r4, sp
	adds r1, r0, r4
_08011A9A:
	ldm r1!, {r0}
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r6]
	adds r6, #2
	adds r7, #1
	adds r2, #1
	cmp r2, #7
	ble _08011A9A
_08011AAE:
	lsls r0, r7, #1
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011AC0: .4byte 0x08205444
	thumb_func_end sub_08011984

	thumb_func_start sub_08011AC4
sub_08011AC4: @ 0x08011AC4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl sub_08011938
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08011984
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08011AC4

	thumb_func_start sub_08011AE4
sub_08011AE4: @ 0x08011AE4
	push {r4, r5, r6, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0x25
	beq _08011AF6
	b _08011C22
_08011AF6:
	movs r1, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x43
	bne _08011B10
	ldrb r0, [r4, #2]
	cmp r0, #0x45
	bne _08011B10
	ldr r0, _08011B44 @ =0x02038180
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strh r1, [r0]
_08011B10:
	ldrb r0, [r4, #1]
	cmp r0, #0x52
	bne _08011B2A
	ldrb r0, [r4, #2]
	cmp r0, #0x49
	bne _08011B2A
	ldr r0, _08011B44 @ =0x02038180
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #2
	strh r1, [r0]
	movs r1, #1
_08011B2A:
	cmp r1, #0
	beq _08011C22
	ldrb r0, [r4, #3]
	cmp r0, #0x39
	bhi _08011B40
	ldrb r0, [r4, #4]
	cmp r0, #0x39
	bhi _08011B40
	ldrb r0, [r4, #5]
	cmp r0, #0x39
	bls _08011B48
_08011B40:
	movs r0, #0
	b _08011C2E
	.align 2, 0
_08011B44: .4byte 0x02038180
_08011B48:
	add r3, sp, #0x20
	ldrb r0, [r4, #3]
	subs r0, #0x30
	movs r1, #0x64
	muls r0, r1, r0
	str r0, [sp, #0x20]
	ldrb r0, [r4, #4]
	subs r0, #0x30
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #1
	str r2, [r3, #4]
	ldrb r1, [r4, #5]
	subs r1, #0x30
	str r1, [r3, #8]
	ldr r3, _08011B7C @ =0x02038180
	ldr r0, [sp, #0x20]
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	adds r4, #6
	b _08011C22
	.align 2, 0
_08011B7C: .4byte 0x02038180
_08011B80:
	cmp r0, #0x25
	bne _08011C1A
	ldrb r0, [r4, #1]
	adds r1, r0, #0
	adds r2, r0, #0
	cmp r1, #0x73
	bne _08011BB4
	ldrb r0, [r4, #3]
	adds r1, r0, #0
	subs r1, #0x30
	adds r0, r1, #0
	mov r1, sp
	bl sub_08011960
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	mov r1, sp
	bl sub_08011AE4
	adds r5, r5, r0
	adds r6, r6, r0
	adds r4, #4
	b _08011C22
_08011BB4:
	cmp r1, #0x30
	bne _08011BDC
	ldrb r0, [r4, #2]
	subs r0, #0x31
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _08011BDC
	ldrb r0, [r4, #3]
	cmp r0, #0x64
	bne _08011BDC
	ldrb r0, [r4, #5]
	adds r1, r0, #0
	subs r1, #0x30
	ldrb r0, [r4, #2]
	adds r2, r0, #0
	subs r2, #0x30
	movs r3, #1
	adds r4, #6
	b _08011C0C
_08011BDC:
	adds r0, r2, #0
	subs r0, #0x31
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bhi _08011C00
	ldrb r0, [r4, #2]
	cmp r0, #0x64
	bne _08011C00
	ldrb r0, [r4, #4]
	adds r1, r0, #0
	subs r1, #0x30
	ldrb r0, [r4, #1]
	adds r2, r0, #0
	subs r2, #0x30
	movs r3, #0
	adds r4, #5
	b _08011C0C
_08011C00:
	ldrb r0, [r4, #3]
	adds r1, r0, #0
	subs r1, #0x30
	movs r2, #0
	movs r3, #0
	adds r4, #4
_08011C0C:
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_08011AC4
	adds r5, r5, r0
	adds r6, r6, r0
	b _08011C22
_08011C1A:
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	adds r6, #1
_08011C22:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08011B80
	movs r0, #0
	strb r0, [r5]
	adds r0, r6, #0
_08011C2E:
	add sp, #0x2c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08011AE4

	thumb_func_start sub_08011C38
sub_08011C38: @ 0x08011C38
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r4, _08011C78 @ =0x02038180
	movs r5, #0x8c
	lsls r5, r5, #1
	adds r6, r4, r5
	ldr r0, [r6]
	lsls r0, r0, #6
	adds r1, r4, #0
	adds r1, #0x14
	adds r3, r0, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq _08011CBA
	mov ip, r5
	adds r7, r6, #0
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r6, r4, r1
	adds r5, r4, #0
_08011C60:
	cmp r0, #0x43
	bne _08011CAC
	ldrb r0, [r2, #1]
	cmp r0, #0x2f
	bls _08011CAC
	cmp r0, #0x39
	bhi _08011CAC
	ldr r0, [r7]
	cmp r0, #3
	ble _08011C7C
_08011C74:
	b _08011C74
	.align 2, 0
_08011C78: .4byte 0x02038180
_08011C7C:
	mov r0, ip
	adds r1, r5, r0
	ldr r0, [r1]
	lsls r0, r0, #6
	adds r4, r5, #0
	adds r4, #0x14
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08011C9E
	movs r0, #0
	strb r0, [r3]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	lsls r0, r0, #6
	adds r3, r0, r4
_08011C9E:
	ldr r1, [r1]
	adds r1, r1, r6
	ldrb r0, [r2, #1]
	subs r0, #0x30
	strb r0, [r1]
	adds r2, #2
	b _08011CB4
_08011CAC:
	ldrb r0, [r2]
	strb r0, [r3]
	adds r2, #1
	adds r3, #1
_08011CB4:
	ldrb r0, [r2]
	cmp r0, #0
	bne _08011C60
_08011CBA:
	movs r0, #0
	strb r0, [r3]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08011C38

	thumb_func_start sub_08011CC4
sub_08011CC4: @ 0x08011CC4
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08011CE4
	ldr r4, _08011CEC @ =0x0000853F
_08011CD2:
	ldrb r1, [r2]
	lsls r1, r1, #8
	ldrb r0, [r2, #1]
	orrs r0, r1
	adds r3, #0xc
	adds r2, #2
	ldrb r0, [r2]
	cmp r0, #0
	bne _08011CD2
_08011CE4:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011CEC: .4byte 0x0000853F
	thumb_func_end sub_08011CC4

	thumb_func_start sub_08011CF0
sub_08011CF0: @ 0x08011CF0
	push {r4, lr}
	adds r2, r0, #0
	movs r3, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08011D10
	ldr r4, _08011D18 @ =0x0000853F
_08011CFE:
	ldrb r1, [r2]
	lsls r1, r1, #8
	ldrb r0, [r2, #1]
	orrs r0, r1
	adds r3, #4
	adds r2, #2
	ldrb r0, [r2]
	cmp r0, #0
	bne _08011CFE
_08011D10:
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08011D18: .4byte 0x0000853F
	thumb_func_end sub_08011CF0

	thumb_func_start sub_08011D1C
sub_08011D1C: @ 0x08011D1C
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	cmp r3, #3
	bgt _08011D36
	ldr r1, _08011D3C @ =0x02038180
	adds r2, r3, r1
	movs r0, #0
	strb r0, [r2]
	lsls r0, r3, #2
	adds r1, #4
	adds r0, r0, r1
	str r4, [r0]
_08011D36:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011D3C: .4byte 0x02038180
	thumb_func_end sub_08011D1C

	thumb_func_start sub_08011D40
sub_08011D40: @ 0x08011D40
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	cmp r4, #3
	bgt _08011D68
	ldr r2, _08011D70 @ =0x02038180
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08011D74 @ =0xFA0A1F01
	cmp r3, r0
	blt _08011D5E
	ldr r0, _08011D78 @ =0x05F5E0FF
	cmp r3, r0
	ble _08011D60
_08011D5E:
	adds r3, r0, #0
_08011D60:
	lsls r0, r4, #2
	adds r1, r2, #4
	adds r0, r0, r1
	str r3, [r0]
_08011D68:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08011D70: .4byte 0x02038180
_08011D74: .4byte 0xFA0A1F01
_08011D78: .4byte 0x05F5E0FF
	thumb_func_end sub_08011D40

	thumb_func_start sub_08011D7C
sub_08011D7C: @ 0x08011D7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	adds r7, r0, #0
	str r1, [sp, #0x48]
	mov sb, r2
	str r3, [sp, #0x4c]
	movs r0, #0
	mov sl, r0
	ldr r0, _08011E40 @ =0x020358C0
	ldr r1, [r0]
	str r1, [sp, #0x50]
	ldr r2, [r0, #4]
	str r2, [sp, #0x54]
	ldr r1, [r0, #8]
	str r1, [sp, #0x58]
	ldr r2, [r0, #0xc]
	str r2, [sp, #0x5c]
	ldr r1, [r0, #0x10]
	str r1, [sp, #0x60]
	ldr r2, [r0, #0x14]
	str r2, [sp, #0x64]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x68]
	movs r1, #0
	ldr r0, _08011E44 @ =0x02038194
	adds r5, r0, #0
	subs r5, #0x14
	movs r3, #0
	movs r2, #0x80
	lsls r2, r2, #1
_08011DC0:
	strb r3, [r0]
	adds r0, #1
	adds r1, #1
	cmp r1, r2
	bne _08011DC0
	movs r0, #0x8a
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r5, r0
	strh r1, [r4]
	adds r2, #6
	adds r0, r5, r2
	strh r1, [r0]
	add r0, sp, #8
	ldr r1, [sp, #0x8c]
	bl sub_08011AE4
	add r0, sp, #8
	bl sub_08011C38
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _08011E68
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x14
	movs r5, #3
_08011E0A:
	adds r0, r4, #0
	bl sub_08011CC4
	adds r6, r6, r0
	adds r4, #0x40
	subs r5, #1
	cmp r5, #0
	bge _08011E0A
	ldr r1, _08011E48 @ =0x02038180
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #1
	bne _08011E50
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r0, r6
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	b _08011E5C
	.align 2, 0
_08011E40: .4byte 0x020358C0
_08011E44: .4byte 0x02038194
_08011E48: .4byte 0x02038180
_08011E4C:
	movs r0, #0
	b _08011ED4
_08011E50:
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r0, r6
_08011E5C:
	adds r7, r7, r0
	ldr r0, _08011EE4 @ =0x02038180
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r6, [r0]
_08011E68:
	movs r5, #0
	ldr r0, _08011EE4 @ =0x02038180
	mov r8, r0
	ldr r6, _08011EE8 @ =0x020358C0
_08011E70:
	lsls r0, r5, #6
	mov r1, r8
	adds r1, #0x14
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _08011ECC
	ldr r1, _08011EEC @ =0x02038294
	adds r0, r5, r1
	ldrb r0, [r0]
	bl sub_08011750
	ldr r2, [sp, #0x4c]
	str r2, [sp]
	str r4, [sp, #4]
	movs r0, #0
	adds r1, r7, #0
	ldr r2, [sp, #0x48]
	mov r3, sb
	bl sub_080114DC
	cmp r0, #0
	beq _08011E4C
	adds r0, r4, #0
	bl sub_08011CC4
	adds r7, r7, r0
	adds r0, r4, #0
	bl sub_08011CF0
	add sb, r0
	add sl, r0
	ldr r0, [sp, #0x50]
	str r0, [r6]
	ldr r1, [sp, #0x54]
	str r1, [r6, #4]
	ldr r2, [sp, #0x58]
	str r2, [r6, #8]
	ldr r0, [sp, #0x5c]
	str r0, [r6, #0xc]
	ldr r1, [sp, #0x60]
	str r1, [r6, #0x10]
	ldr r2, [sp, #0x64]
	str r2, [r6, #0x14]
	ldr r0, [sp, #0x68]
	str r0, [r6, #0x18]
_08011ECC:
	adds r5, #1
	cmp r5, #3
	ble _08011E70
	mov r0, sl
_08011ED4:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011EE4: .4byte 0x02038180
_08011EE8: .4byte 0x020358C0
_08011EEC: .4byte 0x02038294
	thumb_func_end sub_08011D7C

	thumb_func_start sub_08011EF0
sub_08011EF0: @ 0x08011EF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	mov sb, r1
	str r2, [sp]
	mov sl, r3
	ldr r0, [sp, #0x2c]
	ldr r7, [sp, #0x30]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r4, _08011F1C @ =0x020347C0
	ldr r5, [r4]
	cmp r5, #0
	beq _08011F20
	movs r0, #0
	b _08011F7A
	.align 2, 0
_08011F1C: .4byte 0x020347C0
_08011F20:
	bl sub_080145C4
	adds r6, r0, #0
	str r7, [r4, #4]
	cmp r7, #0
	bne _08011F42
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08011F38
	adds r0, r4, #0
	bl sub_08012360
_08011F38:
	str r5, [r4]
	adds r0, r4, #0
	bl sub_08012144
	b _08011F78
_08011F42:
	movs r0, #3
	str r0, [r4]
	adds r0, r4, #0
	bl sub_08012144
	adds r0, r4, #0
	adds r0, #0xc8
	str r5, [r0]
	mov r0, r8
	str r0, [r4, #0x20]
	str r0, [r4, #0x18]
	mov r1, sb
	str r1, [r4, #0x24]
	str r1, [r4, #0x1c]
	mov r2, sl
	lsls r0, r2, #5
	ldr r1, [sp]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r4, r2
	mov r1, sp
	ldrb r1, [r1, #4]
	strb r1, [r0]
_08011F78:
	movs r0, #1
_08011F7A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08011EF0

	thumb_func_start sub_08011F8C
sub_08011F8C: @ 0x08011F8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08011FAC
	movs r1, #0
	b _08011FB4
_08011FAC:
	ldr r1, _08011FD0 @ =0x08218B74
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
_08011FB4:
	ldr r0, [sp, #0x20]
	str r0, [sp]
	str r3, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_08011EF0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08011FD0: .4byte 0x08218B74
	thumb_func_end sub_08011F8C

	thumb_func_start sub_08011FD4
sub_08011FD4: @ 0x08011FD4
	push {lr}
	ldr r2, _08011FE8 @ =0x020347C0
	lsls r0, r0, #5
	adds r0, #0x44
	adds r0, r0, r2
	bl sub_08045FD8
	pop {r0}
	bx r0
	.align 2, 0
_08011FE8: .4byte 0x020347C0
	thumb_func_end sub_08011FD4

	thumb_func_start sub_08011FEC
sub_08011FEC: @ 0x08011FEC
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, _08012020 @ =0x020347C0
	movs r2, #0
	mov r0, sp
	adds r0, #0x11
_08011FFA:
	strb r2, [r0]
	subs r0, #1
	cmp r0, sp
	bge _08011FFA
	mov r0, sp
	movs r2, #5
	movs r3, #1
	bl sub_08012384
	lsls r0, r4, #5
	adds r0, #0x44
	adds r0, r5, r0
	mov r1, sp
	bl sub_08045FD8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08012020: .4byte 0x020347C0
	thumb_func_end sub_08011FEC

	thumb_func_start sub_08012024
sub_08012024: @ 0x08012024
	ldr r1, _0801202C @ =0x020347C0
	str r0, [r1, #0x3c]
	bx lr
	.align 2, 0
_0801202C: .4byte 0x020347C0
	thumb_func_end sub_08012024

	thumb_func_start sub_08012030
sub_08012030: @ 0x08012030
	ldr r1, _0801203C @ =0x020347C0
	movs r2, #0x94
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0801203C: .4byte 0x020347C0
	thumb_func_end sub_08012030

	thumb_func_start sub_08012040
sub_08012040: @ 0x08012040
	ldr r0, _08012050 @ =0x020347C0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_08012050: .4byte 0x020347C0
	thumb_func_end sub_08012040

	thumb_func_start sub_08012054
sub_08012054: @ 0x08012054
	ldr r0, _08012064 @ =0x020347C0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	str r1, [r0]
	bx lr
	.align 2, 0
_08012064: .4byte 0x020347C0
	thumb_func_end sub_08012054

	thumb_func_start sub_08012068
sub_08012068: @ 0x08012068
	ldr r1, _08012074 @ =0x020347C0
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08012074: .4byte 0x020347C0
	thumb_func_end sub_08012068

	thumb_func_start sub_08012078
sub_08012078: @ 0x08012078
	ldr r1, _08012084 @ =0x020347C0
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_08012084: .4byte 0x020347C0
	thumb_func_end sub_08012078

	thumb_func_start sub_08012088
sub_08012088: @ 0x08012088
	push {r4, lr}
	ldr r3, _080120A4 @ =0x020347C0
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r2, r3, r4
	str r0, [r2]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080120A4: .4byte 0x020347C0
	thumb_func_end sub_08012088

	thumb_func_start sub_080120A8
sub_080120A8: @ 0x080120A8
	ldr r1, _080120B0 @ =0x020347C0
	str r0, [r1, #0x2c]
	bx lr
	.align 2, 0
_080120B0: .4byte 0x020347C0
	thumb_func_end sub_080120A8

	thumb_func_start sub_080120B4
sub_080120B4: @ 0x080120B4
	push {lr}
	ldr r0, _080120C4 @ =0x020347C0
	ldr r0, [r0]
	cmp r0, #0
	bne _080120C8
	movs r0, #0
	b _080120CA
	.align 2, 0
_080120C4: .4byte 0x020347C0
_080120C8:
	movs r0, #1
_080120CA:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080120B4

	thumb_func_start sub_080120D0
sub_080120D0: @ 0x080120D0
	push {r4, lr}
	ldr r3, _080120EC @ =0x020347C0
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r2, r3, r4
	strh r0, [r2]
	movs r2, #0xab
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080120EC: .4byte 0x020347C0
	thumb_func_end sub_080120D0

	thumb_func_start sub_080120F0
sub_080120F0: @ 0x080120F0
	push {r4, lr}
	ldr r3, _0801210C @ =0x020347C0
	movs r4, #0xac
	lsls r4, r4, #1
	adds r2, r3, r4
	strh r0, [r2]
	movs r2, #0xad
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801210C: .4byte 0x020347C0
	thumb_func_end sub_080120F0

	thumb_func_start sub_08012110
sub_08012110: @ 0x08012110
	push {r4, lr}
	ldr r3, _0801212C @ =0x020347C0
	movs r4, #0xae
	lsls r4, r4, #1
	adds r2, r3, r4
	strh r0, [r2]
	movs r2, #0xaf
	lsls r2, r2, #1
	adds r0, r3, r2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801212C: .4byte 0x020347C0
	thumb_func_end sub_08012110

	thumb_func_start sub_08012130
sub_08012130: @ 0x08012130
	ldr r0, _08012140 @ =0x020347C0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08012140: .4byte 0x020347C0
	thumb_func_end sub_08012130

	thumb_func_start sub_08012144
sub_08012144: @ 0x08012144
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	str r0, [r5, #0x24]
	str r0, [r5, #0x28]
	movs r1, #0x10
	str r1, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r5, r2
	str r0, [r1]
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r2, r5, r3
	movs r1, #0x80
	lsls r1, r1, #7
	str r1, [r2]
	movs r6, #0x9e
	lsls r6, r6, #1
	adds r1, r5, r6
	str r0, [r1]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r5, r1
	movs r1, #0xf
	str r1, [r4]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r3, r5, r2
	movs r1, #1
	str r1, [r3]
	adds r6, #0xc
	adds r2, r5, r6
	str r0, [r2]
	adds r6, #4
	adds r1, r5, r6
	str r0, [r1]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [r4]
	str r0, [r5, #0x38]
	ldr r0, [r3]
	str r0, [r5, #0x3c]
	ldr r0, [r2]
	str r0, [r5, #0x40]
	adds r4, r5, #0
	adds r4, #0x44
	movs r6, #3
_080121BE:
	adds r0, r4, #0
	ldr r1, _0801226C @ =0x08048610
	movs r2, #0xd
	bl sub_08045F24
	adds r4, #0x20
	subs r6, #1
	cmp r6, #0
	bge _080121BE
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0xc4
	str r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	strb r2, [r0]
	ldr r3, _08012270 @ =0x00000101
	adds r0, r5, r3
	strb r2, [r0]
	movs r6, #0x81
	lsls r6, r6, #1
	adds r0, r5, r6
	strb r2, [r0]
	adds r1, #3
	adds r0, r5, r1
	strb r2, [r0]
	adds r3, #3
	adds r0, r5, r3
	strb r2, [r0]
	adds r6, #0xa
	adds r0, r5, r6
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	adds r3, #0xc
	adds r0, r5, r3
	str r1, [r0]
	adds r6, #0xc
	adds r0, r5, r6
	str r1, [r0]
	adds r3, #0xc
	adds r0, r5, r3
	str r1, [r0]
	adds r6, #8
	adds r0, r5, r6
	str r1, [r0]
	adds r3, #8
	adds r0, r5, r3
	str r1, [r0]
	adds r6, #8
	adds r0, r5, r6
	str r2, [r0]
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r5, r1
	str r2, [r0]
	adds r3, #0xc
	adds r0, r5, r3
	str r2, [r0]
	adds r6, #0x2c
	adds r0, r5, r6
	strh r2, [r0]
	movs r0, #0xab
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	adds r3, #0x28
	adds r1, r5, r3
	movs r0, #0x36
	strh r0, [r1]
	adds r6, #6
	adds r1, r5, r6
	movs r0, #0x92
	strh r0, [r1]
	adds r0, #0xca
	adds r1, r5, r0
	movs r0, #0x52
	strh r0, [r1]
	movs r1, #0xaf
	lsls r1, r1, #1
	adds r0, r5, r1
	strh r2, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801226C: .4byte 0x08048610
_08012270: .4byte 0x00000101
	thumb_func_end sub_08012144

	thumb_func_start sub_08012274
sub_08012274: @ 0x08012274
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, [r6, #0x30]
	adds r2, r6, #0
	adds r2, #0xcc
	adds r3, r2, r0
	lsrs r1, r1, #0x18
	movs r4, #0
	strb r1, [r3]
	adds r0, #1
	str r0, [r6, #0x30]
	adds r1, r2, r0
	strb r5, [r1]
	adds r0, #1
	str r0, [r6, #0x30]
	adds r2, r2, r0
	strb r4, [r2]
	ldr r0, _080122A8 @ =0x0000853F
	ldr r0, [r6, #0x28]
	adds r0, #0xc
	str r0, [r6, #0x28]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080122A8: .4byte 0x0000853F
	thumb_func_end sub_08012274

	thumb_func_start sub_080122AC
sub_080122AC: @ 0x080122AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, _0801235C @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08012352
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _08012352
	ldr r1, [r5, #0x34]
	adds r3, r1, #0
	cmp r1, #0
	bge _080122CC
	adds r3, #0x1f
_080122CC:
	asrs r6, r3, #5
	adds r2, r6, #0
	lsls r0, r2, #5
	subs r6, r1, r0
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r4, [r0]
	lsls r4, r4, #1
	adds r4, r2, r4
	ldr r0, [r5, #0x38]
	bl sub_08011744
	ldr r0, [r5, #0x3c]
	bl sub_08011750
	ldr r0, [r5, #0x40]
	bl sub_0801175C
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_08011768
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl sub_08011774
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	bl sub_08011780
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r5, r2
	ldr r1, [r1]
	bl sub_08011798
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x24]
	str r4, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	subs r0, r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xcc
	str r0, [sp, #0xc]
	movs r0, #0
	adds r3, r6, #0
	bl sub_080115DC
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x28]
	adds r0, r0, r1
	str r0, [r5, #0x20]
	movs r0, #0
	str r0, [r5, #0x28]
_08012352:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801235C: .4byte 0x00000103
	thumb_func_end sub_080122AC

	thumb_func_start sub_08012360
sub_08012360: @ 0x08012360
	push {r4, lr}
	ldr r4, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	adds r2, r0, #0
	adds r2, #0xc8
	ldr r2, [r2]
	adds r2, #1
	ldr r0, [r0, #0x2c]
	adds r3, r2, #0
	muls r3, r0, r3
	adds r3, r1, r3
	adds r0, r4, #0
	movs r2, #0xf0
	bl sub_08011700
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012360

	thumb_func_start sub_08012384
sub_08012384: @ 0x08012384
	push {lr}
	bl sub_08011984
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08012384

	thumb_func_start sub_08012390
sub_08012390: @ 0x08012390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r7, _080123B8 @ =0x020347C0

	non_word_aligned_thumb_func_start sub_080123A2
sub_080123A2: @ 0x080123A2
	ldr r0, [r7]
	cmp r0, #0xc
	bls _080123AC
	bl _08012F08
_080123AC:
	lsls r0, r0, #2
	ldr r1, _080123BC @ =_080123C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080123B8: .4byte 0x020347C0
_080123BC: .4byte _080123C0
_080123C0: @ jump table
	.4byte _08012F08 @ case 0
	.4byte _08012F08 @ case 1
	.4byte _08012F08 @ case 2
	.4byte _080124C4 @ case 3
	.4byte _08012A04 @ case 4
	.4byte _08012A68 @ case 5
	.4byte _080123F4 @ case 6
	.4byte _08012AE6 @ case 7
	.4byte _08012B6C @ case 8
	.4byte _08012AA0 @ case 9
	.4byte _08012D7C @ case 10
	.4byte _08012DC8 @ case 11
	.4byte _08012E46 @ case 12
_080123F4:
	ldr r1, _08012430 @ =0x00000103
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne _08012402
	bl sub_08012F12
_08012402:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0]
	ldr r2, _08012434 @ =0x030014A4
	cmp r1, #1
	bne _0801243C
	ldrh r0, [r2]
	ands r1, r0
	cmp r1, #0
	beq _0801243C
	ldr r3, _08012438 @ =0x00000101
	adds r2, r7, r3
	movs r0, #0
	movs r1, #1
	strb r1, [r2]
	str r0, [r7, #0x14]
	movs r0, #3
	str r0, [r7]
	movs r0, #0x35
	bl sub_08010354
	b _080124C4
	.align 2, 0
_08012430: .4byte 0x00000103
_08012434: .4byte 0x030014A4
_08012438: .4byte 0x00000101
_0801243C:
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08012480
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08012460
	ldr r2, _0801245C @ =0x00000101
	adds r1, r7, r2
	strb r0, [r1]
	str r0, [r7, #0x14]
	b _08012492
	.align 2, 0
_0801245C: .4byte 0x00000101
_08012460:
	movs r3, #1
	str r3, [sp, #0x1c]
	ldr r4, _08012478 @ =0x00000101
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0801247C @ =0x00000103
	adds r0, r7, r1
	strb r3, [r0]
	bl _08012E5C
	.align 2, 0
_08012478: .4byte 0x00000101
_0801247C: .4byte 0x00000103
_08012480:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012492
	movs r3, #0x81
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
_08012492:
	ldr r0, _0801251C @ =0x03001038
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080124B2
	movs r4, #0x81
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	bne _080124B2
	ldr r2, _08012520 @ =0x00000101
	adds r1, r7, r2
	strb r0, [r1]
	str r0, [r7, #0x14]
_080124B2:
	ldr r0, [r7, #0x14]
	subs r0, #1
	str r0, [r7, #0x14]
	cmp r0, #0
	beq _080124C0
	bl _08012F08
_080124C0:
	movs r0, #3
	str r0, [r7]
_080124C4:
	bl sub_08010604
	cmp r0, #0
	beq _080124DA
	ldr r3, _08012524 @ =0x00000103
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _080124DA
	bl _08012F08
_080124DA:
	movs r4, #0
	str r4, [sp, #0x20]
	ldr r0, _08012524 @ =0x00000103
	adds r0, r0, r7
	mov r8, r0
	mov sl, r4
	ldr r1, _08012520 @ =0x00000101
	adds r1, r1, r7
	mov sb, r1
_080124EC:
	ldr r0, [r7, #4]
	ldrb r4, [r0]
	adds r5, r0, #0
	cmp r4, #0x20
	beq _080125CA
	cmp r4, #0x20
	bgt _0801255A
	cmp r4, #5
	bne _08012500
	b _08012868
_08012500:
	cmp r4, #5
	bgt _08012536
	cmp r4, #2
	bne _0801250A
	b _080127C6
_0801250A:
	cmp r4, #2
	bgt _08012528
	cmp r4, #0
	bne _08012514
	b _0801279C
_08012514:
	cmp r4, #1
	bne _0801251A
	b _080127A8
_0801251A:
	b _08012990
	.align 2, 0
_0801251C: .4byte 0x03001038
_08012520: .4byte 0x00000101
_08012524: .4byte 0x00000103
_08012528:
	cmp r4, #3
	bne _0801252E
	b _080127F8
_0801252E:
	cmp r4, #4
	bne _08012534
	b _08012840
_08012534:
	b _08012990
_08012536:
	cmp r4, #8
	bne _0801253C
	b _080128E8
_0801253C:
	cmp r4, #8
	bgt _0801254E
	cmp r4, #6
	bne _08012546
	b _080128A6
_08012546:
	cmp r4, #7
	bne _0801254C
	b _080128C4
_0801254C:
	b _08012990
_0801254E:
	cmp r4, #9
	bne _08012554
	b _08012984
_08012554:
	cmp r4, #0x12
	beq _080125AA
	b _08012990
_0801255A:
	cmp r4, #0x42
	bne _08012560
	b _080126B6
_08012560:
	cmp r4, #0x42
	bgt _08012584
	cmp r4, #0x31
	beq _0801265E
	cmp r4, #0x31
	bgt _08012576
	cmp r4, #0x21
	beq _08012616
	cmp r4, #0x30
	beq _08012628
	b _08012990
_08012576:
	cmp r4, #0x40
	bne _0801257C
	b _0801268A
_0801257C:
	cmp r4, #0x41
	bne _08012582
	b _080126A2
_08012582:
	b _08012990
_08012584:
	cmp r4, #0x51
	bne _0801258A
	b _0801274E
_0801258A:
	cmp r4, #0x51
	bgt _0801259C
	cmp r4, #0x43
	bne _08012594
	b _080126D4
_08012594:
	cmp r4, #0x50
	bne _0801259A
	b _080126EC
_0801259A:
	b _08012990
_0801259C:
	cmp r4, #0x60
	bne _080125A2
	b _08012758
_080125A2:
	cmp r4, #0xf0
	bne _080125A8
	b _08012774
_080125A8:
	b _08012990
_080125AA:
	adds r0, r5, #1
	str r0, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	bne _080125B8
	b _080129F4
_080125B8:
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r4, sl
	str r4, [r0]
	movs r0, #9
	str r0, [r7]
	bl _08012F08
_080125CA:
	adds r0, r5, #1
	str r0, [r7, #4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r2, r7, r1
	ldrb r1, [r5, #1]
	str r1, [r2]
	adds r0, #1
	str r0, [r7, #4]
	cmp r1, #0x10
	bgt _080125F6
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _080125EA
	b _080129F4
_080125EA:
	subs r0, r1, #2
	str r0, [r2]
	movs r0, #7
	str r0, [r7]
	bl _08012F08
_080125F6:
	adds r0, r1, #0
	subs r0, #0x11
	str r0, [r2]
	movs r4, #0x96
	lsls r4, r4, #1
	adds r0, r7, r4
	mov r1, sl
	str r1, [r0]
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	movs r0, #0xb
	str r0, [r7]
	bl _08012F08
_08012616:
	adds r0, r5, #1
	str r0, [r7, #4]
	movs r0, #3
	movs r1, #0
	bl sub_08000F0C
	bl sub_08000ED4
	b _080129F4
_08012628:
	adds r3, r5, #1
	str r3, [r7, #4]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r1, r7, r4
	ldrb r0, [r5, #1]
	str r0, [r1]
	adds r1, r3, #1
	str r1, [r7, #4]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r7, r0
	ldrb r0, [r3, #1]
	str r0, [r2]
	adds r1, #1
	str r1, [r7, #4]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08012652
	b _080129F4
_08012652:
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, sl
	str r3, [r0]
	b _08012682
_0801265E:
	adds r0, r5, #1
	str r0, [r7, #4]
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #1
	bne _0801266C
	b _080129F4
_0801266C:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, sl
	str r2, [r0]
_08012682:
	movs r0, #8
	str r0, [r7]
	bl _08012F08
_0801268A:
	adds r0, r5, #1
	str r0, [r7, #4]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _08012698
	b _080129F4
_08012698:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08010CD4
	b _080129F4
_080126A2:
	adds r0, r5, #1
	str r0, [r7, #4]
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #1
	bne _080126B0
	b _080129F4
_080126B0:
	bl sub_08010CFC
	b _080129F4
_080126B6:
	adds r0, r5, #1
	str r0, [r7, #4]
	ldrb r1, [r5, #1]
	adds r0, #1
	str r0, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	bne _080126CA
	b _080129F4
_080126CA:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	bl sub_08010D0C
	b _080129F4
_080126D4:
	adds r0, r5, #1
	str r0, [r7, #4]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _080126E2
	b _080129F4
_080126E2:
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08010D0C
	b _080129F4
_080126EC:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080126FA
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #0
	beq _08012704
_080126FA:
	adds r0, r7, #0
	bl sub_080122AC
	mov r0, sl
	str r0, [r7, #0x30]
_08012704:
	movs r2, #0xac
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	adds r3, #8
	adds r0, r7, r3
	ldrh r0, [r0]
	muls r0, r2, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0xad
	lsls r4, r4, #1
	adds r3, r7, r4
	adds r4, #4
	adds r1, r7, r4
	ldrh r1, [r1]
	muls r1, r2, r1
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08011204
	bl sub_080111AC
	movs r0, #0xc
	str r0, [r7]
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	b _08012F08
_0801274E:
	adds r0, r5, #1
	str r0, [r7, #4]
	bl sub_08011214
	b _080129F4
_08012758:
	adds r0, r5, #1
	str r0, [r7, #4]
	mov r1, sl
	mov r0, sb
	strb r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	mov r4, sl
	mov r3, r8
	strb r4, [r3]
	b _080129F4
_08012774:
	adds r0, r5, #1
	str r0, [r7, #4]
	ldrb r1, [r5, #1]
	str r1, [r7, #8]
	adds r2, r0, #1
	str r2, [r7, #4]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	adds r1, r1, r0
	str r1, [r7, #8]
	adds r2, #1
	str r2, [r7, #4]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #1
	bne _08012796
	b _080129F4
_08012796:
	movs r0, #0xa
	str r0, [r7]
	b _08012F08
_0801279C:
	str r4, [r7]
	adds r0, r7, #0
	bl sub_08012360
	str r4, [r7, #0x30]
	b _08012F08
_080127A8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080127B6
	mov r2, sb
	ldrb r0, [r2]
	cmp r0, #0
	beq _080127C0
_080127B6:
	adds r0, r7, #0
	bl sub_080122AC
	mov r3, sl
	str r3, [r7, #0x30]
_080127C0:
	mov r4, sl
	str r4, [r7]
	b _08012F08
_080127C6:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080127D4
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _080127DE
_080127D4:
	adds r0, r7, #0
	bl sub_080122AC
	mov r2, sl
	str r2, [r7, #0x30]
_080127DE:
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #1
	bne _080127EE
	b _080129F4
_080127EE:
	bl sub_08011320
	movs r0, #4
	str r0, [r7]
	b _08012F08
_080127F8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _08012806
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #0
	beq _08012810
_08012806:
	adds r0, r7, #0
	bl sub_080122AC
	mov r0, sl
	str r0, [r7, #0x30]
_08012810:
	ldr r0, [r7, #4]
	adds r3, r0, #1
	str r3, [r7, #4]
	ldrb r1, [r0, #1]
	str r1, [r7, #8]
	adds r2, r3, #1
	str r2, [r7, #4]
	lsls r1, r1, #8
	ldrb r0, [r3, #1]
	adds r1, r1, r0
	str r1, [r7, #8]
	adds r2, #1
	str r2, [r7, #4]
	mov r2, r8
	ldrb r0, [r2]
	cmp r0, #1
	bne _08012834
	b _080129F4
_08012834:
	ldr r0, [r7, #0x10]
	cmp r0, #5
	beq _0801283C
	b _080129F4
_0801283C:
	str r1, [r7, #0xc]
	b _080129F4
_08012840:
	adds r0, r5, #1
	str r0, [r7, #4]
	adds r0, r7, #0
	bl sub_08012360
	mov r3, sl
	str r3, [r7, #0x30]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x1c]
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0xc8
	str r3, [r0]
	ldr r0, [r7, #0x10]
	cmp r0, #5
	beq _08012864
	b _080129F4
_08012864:
	str r0, [r7, #0xc]
	b _080129F4
_08012868:
	mov r4, r8
	ldrb r0, [r4]
	cmp r0, #0
	bne _08012884
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _0801287E
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0
	beq _08012884
_0801287E:
	adds r0, r7, #0
	bl sub_080122AC
_08012884:
	ldr r0, [r7, #4]
	adds r0, #1
	str r0, [r7, #4]
	ldr r0, [r7, #0x18]
	str r0, [r7, #0x20]
	ldr r0, [r7, #0x24]
	ldr r1, [r7, #0x2c]
	adds r0, r0, r1
	str r0, [r7, #0x24]
	adds r1, r7, #0
	adds r1, #0xc8
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	mov r2, sl
	str r2, [r7, #0x30]
	b _080129F4
_080128A6:
	adds r1, r5, #1
	str r1, [r7, #4]
	ldrb r0, [r5, #1]
	str r0, [r7, #0x38]
	adds r2, r1, #1
	str r2, [r7, #4]
	ldrb r0, [r1, #1]
	str r0, [r7, #0x3c]
	adds r1, r2, #1
	str r1, [r7, #4]
	ldrb r0, [r2, #1]
	str r0, [r7, #0x40]
	adds r1, #1
	str r1, [r7, #4]
	b _080129F4
_080128C4:
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	str r0, [r7, #0x38]
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	str r0, [r7, #0x3c]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	str r0, [r7, #0x40]
	adds r0, r5, #1
	str r0, [r7, #4]
	b _080129F4
_080128E8:
	adds r3, r7, #0
	adds r3, #0xc4
	ldrb r0, [r5, #1]
	lsls r0, r0, #5
	ldr r2, [r3]
	adds r0, r2, r0
	adds r4, r7, #0
	adds r4, #0x44
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0801297C
	adds r6, r0, #0
	adds r1, r2, #1
	str r1, [r3]
	lsls r2, r6, #8
	ldrb r0, [r5, #1]
	lsls r0, r0, #5
	adds r0, r1, r0
	adds r0, r4, r0
	ldrb r6, [r0]
	orrs r6, r2
	adds r1, #1
	str r1, [r3]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08012274
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080129F4
	mov r2, sb
	ldrb r4, [r2]
	cmp r4, #0
	bne _080129F4
	adds r0, r7, #0
	bl sub_080122AC
	str r4, [r7, #0x30]
	movs r0, #6
	str r0, [r7]
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08012950
	ldr r0, [r7, #0x10]
	cmp r0, #0xa
	bne _08012950
	movs r0, #1
	b _08012952
_08012950:
	ldr r0, [r7, #0xc]
_08012952:
	str r0, [r7, #0x14]
	mov r4, sb
	ldrb r0, [r4]
	cmp r0, #0
	bne _08012960
	movs r0, #1
	str r0, [sp, #0x20]
_08012960:
	ldr r0, _08012978 @ =0x00008140
	cmp r6, r0
	beq _080129F4
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080129F4
	movs r0, #0x46
	bl sub_08010354
	b _080129F4
	.align 2, 0
_08012978: .4byte 0x00008140
_0801297C:
	str r0, [r3]
	adds r0, r5, #2
	str r0, [r7, #4]
	b _080129F4
_08012984:
	adds r0, r5, #1
	str r0, [r7, #4]
	movs r0, #1
	mov r2, sb
	strb r0, [r2]
	b _080129F4
_08012990:
	ldrb r6, [r5]
	adds r0, r5, #1
	str r0, [r7, #4]
	lsls r1, r6, #8
	ldrb r6, [r5, #1]
	orrs r6, r1
	adds r0, #1
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08012274
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _080129F4
	mov r3, sb
	ldrb r4, [r3]
	cmp r4, #0
	bne _080129F4
	adds r0, r7, #0
	bl sub_080122AC
	str r4, [r7, #0x30]
	movs r0, #6
	str r0, [r7]
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _080129D8
	ldr r0, [r7, #0x10]
	cmp r0, #0xa
	bne _080129D8
	movs r0, #1
	b _080129DA
_080129D8:
	ldr r0, [r7, #0xc]
_080129DA:
	str r0, [r7, #0x14]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, _08012A00 @ =0x00008140
	cmp r6, r0
	beq _080129F4
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _080129F4
	movs r0, #0x46
	bl sub_08010354
_080129F4:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _080129FC
	b _080124EC
_080129FC:
	b _08012F08
	.align 2, 0
_08012A00: .4byte 0x00008140
_08012A04:
	ldr r2, _08012A5C @ =0x030014A4
	ldrh r1, [r2]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08012A1C
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r1, [r0]
	cmp r1, #0
	beq _08012A84
_08012A1C:
	ldrh r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08012A32
	movs r0, #0x81
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
_08012A32:
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08012A4A
	ldr r0, _08012A60 @ =0x03001038
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08012A4A
	b _08012F08
_08012A4A:
	bl sub_08011388
	ldr r2, _08012A64 @ =0x00000101
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x38
	b _08012E58
	.align 2, 0
_08012A5C: .4byte 0x030014A4
_08012A60: .4byte 0x03001038
_08012A64: .4byte 0x00000101
_08012A68:
	ldr r0, _08012A98 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08012A76
	b _08012DB8
_08012A76:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r1, [r0]
	cmp r1, #0
	beq _08012A84
	b _08012DB8
_08012A84:
	movs r4, #1
	str r4, [sp, #0x1c]
	ldr r2, _08012A9C @ =0x00000101
	adds r0, r7, r2
	strb r1, [r0]
	subs r3, #1
	adds r0, r7, r3
	strb r4, [r0]
	b _08012F08
	.align 2, 0
_08012A98: .4byte 0x030014A4
_08012A9C: .4byte 0x00000101
_08012AA0:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08012AB2
	cmp r0, #1
	beq _08012ADA
	b _08012F08
_08012AB2:
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	movs r0, #1
	str r0, [r5]
	b _08012F08
_08012ADA:
	bl sub_08010604
	cmp r0, #0
	beq _08012AE4
	b _08012F08
_08012AE4:
	b _08012E5C
_08012AE6:
	movs r2, #0x86
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r6, [r0]
	str r6, [r1]
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	bl sub_08000ED4
	adds r0, r6, #0
	bl sub_08012FC4
	adds r2, r0, #0
	movs r0, #0x80
	lsls r0, r0, #7
	movs r5, #0
	str r5, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	adds r0, r6, #0
	bl sub_08012FE0
	adds r2, r0, #0
	movs r4, #1
	str r4, [sp]
	movs r0, #0
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
	adds r0, r6, #0
	bl sub_08012FFC
	adds r2, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #6
	str r5, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #1
	movs r3, #0
	bl sub_08003F8C
	adds r0, r6, #0
	bl sub_08013018
	cmp r0, #1
	bne _08012B64
	movs r0, #1
	bl sub_0802EF30
	b _08012E5C
_08012B64:
	movs r0, #0
	bl sub_0802EF30
	b _08012E5C
_08012B6C:
	movs r4, #0x8a
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #6
	bls _08012B7A
	b _08012F08
_08012B7A:
	lsls r0, r0, #2
	ldr r1, _08012B84 @ =_08012B88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08012B84: .4byte _08012B88
_08012B88: @ jump table
	.4byte _08012BA4 @ case 0
	.4byte _08012C5E @ case 1
	.4byte _08012CDC @ case 2
	.4byte _08012D14 @ case 3
	.4byte _08012D14 @ case 4
	.4byte _08012D14 @ case 5
	.4byte _08012D22 @ case 6
_08012BA4:
	movs r0, #0x90
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08012BD8
	ldr r1, _08012BD4 @ =0x000003FF
	movs r0, #2
	movs r2, #1
	bl sub_08000E44
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r7, r1
	str r4, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r7, r2
	str r4, [r0]
	b _08012E5C
	.align 2, 0
_08012BD4: .4byte 0x000003FF
_08012BD8:
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r3, r3, r7
	mov sb, r3
	ldr r0, [r3]
	cmp r0, r4
	bne _08012C08
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r6, r7, r4
	ldr r1, [r6]
	bl sub_08013250
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1]
	movs r2, #0x92
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r1, [r5]
	bl sub_08013250
	cmp r4, r0
	beq _08012C3C
_08012C08:
	ldr r1, _08012C38 @ =0x000003FF
	movs r0, #2
	movs r2, #1
	bl sub_08000E44
	mov r3, r8
	ldr r0, [r3]
	mov r4, sb
	str r0, [r4]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	b _08012F08
	.align 2, 0
_08012C38: .4byte 0x000003FF
_08012C3C:
	ldr r1, [r6]
	ldr r0, [r5]
	cmp r1, r0
	bne _08012C46
	b _08012E5C
_08012C46:
	mov r4, r8
	ldr r0, [r4]
	mov r1, sb
	str r0, [r1]
	ldr r0, [r5]
	str r0, [r6]
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b _08012F08
_08012C5E:
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r6, [r0]
	add r3, sp, #0x18
	adds r0, r4, #0
	adds r1, r6, #0
	add r2, sp, #0x14
	bl sub_08013244
	adds r0, r4, #0
	bl sub_08013264
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08013274
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801329C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080132C4
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	movs r4, #0
	str r4, [sp]
	movs r1, #1
	adds r2, r5, #0
	movs r3, #0
	bl sub_08003E7C
	movs r0, #0xc0
	lsls r0, r0, #8
	str r4, [sp]
	movs r1, #1
	mov r2, r8
	movs r3, #1
	bl sub_08003D38
	movs r0, #0xe0
	lsls r0, r0, #8
	str r4, [sp]
	movs r1, #1
	adds r2, r6, #0
	movs r3, #1
	bl sub_08003D38
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
	str r0, [r1]
	b _08012F08
_08012CDC:
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r6, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080132C4
	mov r8, r0
	cmp r0, #0
	beq _08012D0A
	movs r0, #0xe0
	lsls r0, r0, #8
	movs r1, #1
	str r1, [sp]
	mov r2, r8
	movs r3, #1
	bl sub_08003D38
_08012D0A:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801331C
	b _08012E5C
_08012D14:
	movs r2, #0x8a
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b _08012F08
_08012D22:
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r6, [r0]
	add r3, sp, #0x18
	adds r0, r4, #0
	adds r1, r6, #0
	add r2, sp, #0x14
	bl sub_08013244
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801329C
	adds r2, r0, #0
	ldr r0, [sp, #0x18]
	lsls r0, r0, #5
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r0, r3
	movs r3, #0x80
	lsls r3, r3, #2
	movs r1, #0x80
	str r1, [sp]
	subs r1, #0x81
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	bl sub_08003F8C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0801331C
	b _08012E5C
_08012D7C:
	ldr r0, _08012DAC @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08012DB8
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r1, [r0]
	cmp r1, #0
	bne _08012DB8
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r2, _08012DB0 @ =0x00000101
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, _08012DB4 @ =0x00000103
	adds r0, r7, r3
	mov r4, sp
	ldrb r4, [r4, #0x1c]
	strb r4, [r0]
	b _08012F08
	.align 2, 0
_08012DAC: .4byte 0x030014A4
_08012DB0: .4byte 0x00000101
_08012DB4: .4byte 0x00000103
_08012DB8:
	ldr r1, [r7, #8]
	cmp r1, #0
	bne _08012DC2
	movs r0, #3
	str r0, [r7]
_08012DC2:
	subs r0, r1, #1
	str r0, [r7, #8]
	b _08012F08
_08012DC8:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08012DEC
	movs r2, #0x98
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _08012E5C
	bl sub_08010604
	cmp r0, #0
	beq _08012DEA
	b _08012F08
_08012DEA:
	b _08012E5C
_08012DEC:
	movs r3, #0x94
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, [r1]
	bl sub_08044030
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	bl sub_08000ED4
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _08012F08
	movs r0, #1
	movs r1, #2
	movs r2, #0
	movs r3, #0xe0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0xe0
	bl sub_080010F8
	movs r3, #0x90
	lsls r3, r3, #1
	movs r0, #0
	movs r1, #2
	movs r2, #0xe0
	bl sub_080010F8
	movs r0, #0
	bl sub_080104AC
	b _08012F08
_08012E46:
	ldr r0, _08012E64 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08012E68
	bl sub_08011214
	movs r0, #0x49
_08012E58:
	bl sub_08010354
_08012E5C:
	movs r0, #3
	str r0, [r7]
	b _08012F08
	.align 2, 0
_08012E64: .4byte 0x030014A4
_08012E68:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08012F08
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r2, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012EA0
	lsls r0, r2, #0x10
	ldr r3, _08012E9C @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _08012EBC
	movs r4, #0xab
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	b _08012EBC
	.align 2, 0
_08012E9C: .4byte 0xFFFF0000
_08012EA0:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	movs r2, #0xab
	lsls r2, r2, #1
	adds r1, r7, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r1, r3]
	cmp r0, r1
	blt _08012EBC
	movs r2, #0
_08012EBC:
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r1, r7, r4
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r4, r0
	beq _08012F08
	strh r2, [r1]
	movs r0, #0x49
	bl sub_08010354
	movs r0, #0xac
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0]
	muls r0, r4, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r3, #0xad
	lsls r3, r3, #1
	adds r2, r7, r3
	adds r3, #4
	adds r1, r7, r3
	ldrh r1, [r1]
	muls r1, r4, r1
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08011204
_08012F08:
	ldr r4, _08012F40 @ =0x00000103
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	bne _08012F64

	non_word_aligned_thumb_func_start sub_08012F12
sub_08012F12: @ 0x08012F12
	ldr r0, [r7]
	cmp r0, #0
	beq _08012F32
	cmp r0, #0
	blt _08012F24
	cmp r0, #0xc
	bgt _08012F24
	cmp r0, #0xb
	bge _08012F32
_08012F24:
	movs r0, #3
	str r0, [r7]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _08012F32
	bl sub_080123A2
_08012F32:
	ldr r0, [r7, #0x2c]
	cmp r0, #0x10
	bne _08012F44
	adds r1, r7, #0
	adds r1, #0xc8
	movs r0, #1
	b _08012F4A
	.align 2, 0
_08012F40: .4byte 0x00000103
_08012F44:
	adds r1, r7, #0
	adds r1, #0xc8
	movs r0, #3
_08012F4A:
	str r0, [r1]
	adds r0, r7, #0
	bl sub_08012360
	bl sub_08010D70
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08012F60
	bl sub_08010CFC
_08012F60:
	bl sub_08011388
_08012F64:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08012F12

	thumb_func_start sub_08012F74
sub_08012F74: @ 0x08012F74
	push {lr}
	ldr r0, _08012F90 @ =0x020347C0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bl sub_08012144
	bl sub_080035FC
	ldr r1, _08012F94 @ =sub_08012390
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08012F90: .4byte 0x020347C0
_08012F94: .4byte sub_08012390
	thumb_func_end sub_08012F74

	thumb_func_start sub_08012F98
sub_08012F98: @ 0x08012F98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08012FAA
	adds r0, r4, #0
	bl sub_08003450
_08012FAA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08012F98

	thumb_func_start sub_08012FB0
sub_08012FB0: @ 0x08012FB0
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08012FC0 @ =sub_08012F74
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08012FC0: .4byte sub_08012F74
	thumb_func_end sub_08012FB0

	thumb_func_start sub_08012FC4
sub_08012FC4: @ 0x08012FC4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xf
	ble _08012FCE
	movs r1, #0
_08012FCE:
	ldr r0, _08012FDC @ =0x0821927C
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_08012FDC: .4byte 0x0821927C
	thumb_func_end sub_08012FC4

	thumb_func_start sub_08012FE0
sub_08012FE0: @ 0x08012FE0
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xf
	ble _08012FEA
	movs r1, #0
_08012FEA:
	ldr r0, _08012FF8 @ =0x0821927C
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	pop {r1}
	bx r1
	.align 2, 0
_08012FF8: .4byte 0x0821927C
	thumb_func_end sub_08012FE0

	thumb_func_start sub_08012FFC
sub_08012FFC: @ 0x08012FFC
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xf
	ble _08013006
	movs r1, #0
_08013006:
	ldr r0, _08013014 @ =0x0821927C
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	pop {r1}
	bx r1
	.align 2, 0
_08013014: .4byte 0x0821927C
	thumb_func_end sub_08012FFC

	thumb_func_start sub_08013018
sub_08013018: @ 0x08013018
	push {lr}
	adds r1, r0, #0
	cmp r1, #0xf
	ble _08013022
	movs r1, #0
_08013022:
	ldr r0, _08013030 @ =0x0821927C
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #6]
	pop {r1}
	bx r1
	.align 2, 0
_08013030: .4byte 0x0821927C
	thumb_func_end sub_08013018

	thumb_func_start sub_08013034
sub_08013034: @ 0x08013034
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0x11
	bgt _08013054
	movs r0, #0xc8
	muls r0, r2, r0
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	ldr r2, _08013050 @ =0x082192F4
	adds r1, r1, r2
	b _08013070
	.align 2, 0
_08013050: .4byte 0x082192F4
_08013054:
	cmp r2, #0x17
	ble _08013068
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08013064 @ =0x08219E34
	b _08013070
	.align 2, 0
_08013064: .4byte 0x08219E34
_08013068:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, _08013078 @ =0x08219E34
_08013070:
	adds r0, r0, r1
	pop {r1}
	bx r1
	.align 2, 0
_08013078: .4byte 0x08219E34
	thumb_func_end sub_08013034

	thumb_func_start sub_0801307C
sub_0801307C: @ 0x0801307C
	push {lr}
	bl sub_08013034
	ldr r0, [r0]
	pop {r1}
	bx r1
	thumb_func_end sub_0801307C

	thumb_func_start sub_08013088
sub_08013088: @ 0x08013088
	push {lr}
	bl sub_08013034
	ldr r0, [r0, #4]
	pop {r1}
	bx r1
	thumb_func_end sub_08013088

	thumb_func_start sub_08013094
sub_08013094: @ 0x08013094
	push {lr}
	bl sub_08013034
	ldr r0, [r0, #8]
	pop {r1}
	bx r1
	thumb_func_end sub_08013094

	thumb_func_start sub_080130A0
sub_080130A0: @ 0x080130A0
	push {lr}
	bl sub_08013034
	ldrh r0, [r0, #0xc]
	pop {r1}
	bx r1
	thumb_func_end sub_080130A0

	thumb_func_start sub_080130AC
sub_080130AC: @ 0x080130AC
	push {lr}
	bl sub_08013034
	ldrh r0, [r0, #0xe]
	pop {r1}
	bx r1
	thumb_func_end sub_080130AC

	thumb_func_start sub_080130B8
sub_080130B8: @ 0x080130B8
	push {lr}
	bl sub_08013034
	ldrh r0, [r0, #0x10]
	pop {r1}
	bx r1
	thumb_func_end sub_080130B8

	thumb_func_start sub_080130C4
sub_080130C4: @ 0x080130C4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x17
	ble _080130E0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080130DC @ =0x0821A12C
	adds r0, r0, r1
	ldr r0, [r0, #8]
	b _080130E4
	.align 2, 0
_080130DC: .4byte 0x0821A12C
_080130E0:
	movs r0, #1
	rsbs r0, r0, #0
_080130E4:
	pop {r1}
	bx r1
	thumb_func_end sub_080130C4

	thumb_func_start sub_080130E8
sub_080130E8: @ 0x080130E8
	push {lr}
	bl sub_08013034
	ldrh r0, [r0, #0x12]
	pop {r1}
	bx r1
	thumb_func_end sub_080130E8

	thumb_func_start sub_080130F4
sub_080130F4: @ 0x080130F4
	push {r4, lr}
	adds r4, r2, #0
	bl sub_08013034
	lsls r4, r4, #1
	adds r0, #0x14
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _08013110 @ =0x0000FFFF
	cmp r1, r0
	beq _08013114
	adds r0, r1, #0
	b _08013118
	.align 2, 0
_08013110: .4byte 0x0000FFFF
_08013114:
	movs r0, #1
	rsbs r0, r0, #0
_08013118:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080130F4

	thumb_func_start sub_08013120
sub_08013120: @ 0x08013120
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x17
	ble _0801314C
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08013144 @ =0x0821A12C
	adds r0, r0, r1
	lsls r1, r2, #1
	adds r0, #0xc
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, _08013148 @ =0x0000FFFF
	cmp r1, r0
	beq _0801314C
	adds r0, r1, #0
	b _08013150
	.align 2, 0
_08013144: .4byte 0x0821A12C
_08013148: .4byte 0x0000FFFF
_0801314C:
	movs r0, #1
	rsbs r0, r0, #0
_08013150:
	pop {r1}
	bx r1
	thumb_func_end sub_08013120

	thumb_func_start sub_08013154
sub_08013154: @ 0x08013154
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x17
	bgt _08013162
	b _08013182
_0801315E:
	movs r0, #1
	b _08013184
_08013162:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08013188 @ =0x0821A12C
	adds r0, r0, r1
	movs r2, #0
	ldr r3, _0801318C @ =0x0000FFFF
	adds r1, r0, #0
	adds r1, #0xc
_08013174:
	ldrh r0, [r1]
	cmp r0, r3
	bne _0801315E
	adds r1, #2
	adds r2, #1
	cmp r2, #3
	ble _08013174
_08013182:
	movs r0, #0
_08013184:
	pop {r1}
	bx r1
	.align 2, 0
_08013188: .4byte 0x0821A12C
_0801318C: .4byte 0x0000FFFF
	thumb_func_end sub_08013154

	thumb_func_start sub_08013190
sub_08013190: @ 0x08013190
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x17
	ble _080131AC
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080131A8 @ =0x0821A12C
	adds r0, r0, r1
	ldr r0, [r0]
	b _080131AE
	.align 2, 0
_080131A8: .4byte 0x0821A12C
_080131AC:
	movs r0, #0
_080131AE:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08013190

	thumb_func_start sub_080131B4
sub_080131B4: @ 0x080131B4
	push {lr}
	adds r1, r0, #0
	cmp r1, #0x17
	ble _080131D0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _080131CC @ =0x0821A12C
	adds r0, r0, r1
	ldr r0, [r0, #4]
	b _080131D2
	.align 2, 0
_080131CC: .4byte 0x0821A12C
_080131D0:
	movs r0, #0
_080131D2:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080131B4

	thumb_func_start sub_080131D8
sub_080131D8: @ 0x080131D8
	push {lr}
	bl sub_08013034
	ldrh r1, [r0, #0x1c]
	ldr r0, _080131EC @ =0x0000FFFF
	cmp r1, r0
	beq _080131F0
	adds r0, r1, #0
	b _080131F4
	.align 2, 0
_080131EC: .4byte 0x0000FFFF
_080131F0:
	movs r0, #1
	rsbs r0, r0, #0
_080131F4:
	pop {r1}
	bx r1
	thumb_func_end sub_080131D8

	thumb_func_start sub_080131F8
sub_080131F8: @ 0x080131F8
	push {lr}
	bl sub_08013034
	ldrh r1, [r0, #0x1e]
	ldr r0, _0801320C @ =0x0000FFFF
	cmp r1, r0
	beq _08013210
	adds r0, r1, #0
	b _08013214
	.align 2, 0
_0801320C: .4byte 0x0000FFFF
_08013210:
	movs r0, #1
	rsbs r0, r0, #0
_08013214:
	pop {r1}
	bx r1
	thumb_func_end sub_080131F8

	thumb_func_start sub_08013218
sub_08013218: @ 0x08013218
	push {r4, lr}
	adds r4, r2, #0
	bl sub_08013034
	lsls r4, r4, #1
	adds r0, #0x20
	adds r0, r0, r4
	ldrh r1, [r0]
	ldr r0, _08013234 @ =0x0000FFFF
	cmp r1, r0
	beq _08013238
	adds r0, r1, #0
	b _0801323C
	.align 2, 0
_08013234: .4byte 0x0000FFFF
_08013238:
	movs r0, #1
	rsbs r0, r0, #0
_0801323C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08013218

	thumb_func_start sub_08013244
sub_08013244: @ 0x08013244
	movs r0, #5
	str r0, [r2]
	movs r0, #0
	str r0, [r3]
	bx lr
	.align 2, 0
	thumb_func_end sub_08013244

	thumb_func_start sub_08013250
sub_08013250: @ 0x08013250
	ldr r3, _08013260 @ =0x0821A398
	movs r2, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x26
	adds r1, r1, r3
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_08013260: .4byte 0x0821A398
	thumb_func_end sub_08013250

	thumb_func_start sub_08013264
sub_08013264: @ 0x08013264
	ldr r2, _08013270 @ =0x0821A398
	movs r1, #0x2c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_08013270: .4byte 0x0821A398
	thumb_func_end sub_08013264

	thumb_func_start sub_08013274
sub_08013274: @ 0x08013274
	push {lr}
	ldr r3, _08013290 @ =0x0821A398
	movs r2, #0x2c
	muls r2, r0, r2
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x26
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08013294
	adds r0, r2, r3
	ldrh r0, [r0, #0xa]
	b _08013298
	.align 2, 0
_08013290: .4byte 0x0821A398
_08013294:
	adds r0, r2, r3
	ldrh r0, [r0, #6]
_08013298:
	pop {r1}
	bx r1
	thumb_func_end sub_08013274

	thumb_func_start sub_0801329C
sub_0801329C: @ 0x0801329C
	push {lr}
	ldr r3, _080132B8 @ =0x0821A398
	movs r2, #0x2c
	muls r2, r0, r2
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x26
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080132BC
	adds r0, r2, r3
	ldrh r0, [r0, #0xc]
	b _080132C0
	.align 2, 0
_080132B8: .4byte 0x0821A398
_080132BC:
	adds r0, r2, r3
	ldrh r0, [r0, #8]
_080132C0:
	pop {r1}
	bx r1
	thumb_func_end sub_0801329C

	thumb_func_start sub_080132C4
sub_080132C4: @ 0x080132C4
	ldr r3, _080132D8 @ =0x0821A398
	lsls r1, r1, #1
	movs r2, #0x2c
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0xe
	adds r1, r1, r3
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_080132D8: .4byte 0x0821A398
	thumb_func_end sub_080132C4

	thumb_func_start sub_080132DC
sub_080132DC: @ 0x080132DC
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r3, _08013304 @ =0x0821A398
	movs r2, #0x2c
	muls r2, r0, r2
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #0x26
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _08013308
	adds r0, r2, r3
	ldrb r1, [r0]
	lsrs r1, r1, #3
	str r1, [r4]
	ldrb r0, [r0, #1]
	b _08013312
	.align 2, 0
_08013304: .4byte 0x0821A398
_08013308:
	adds r0, r2, r3
	ldrb r1, [r0, #2]
	lsrs r1, r1, #3
	str r1, [r4]
	ldrb r0, [r0, #3]
_08013312:
	lsrs r0, r0, #3
	str r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080132DC

	thumb_func_start sub_0801331C
sub_0801331C: @ 0x0801331C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r5, #0x12
	beq _080133A0
	ldr r3, _08013348 @ =0x0821A398
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r6, r2
	adds r1, r3, #0
	adds r1, #0x26
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801334C
	adds r0, r2, r3
	ldrb r1, [r0]
	lsrs r7, r1, #3
	ldrb r0, [r0, #1]
	b _08013354
	.align 2, 0
_08013348: .4byte 0x0821A398
_0801334C:
	adds r0, r2, r3
	ldrb r1, [r0, #2]
	lsrs r7, r1, #3
	ldrb r0, [r0, #3]
_08013354:
	lsrs r4, r0, #3
	add r3, sp, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #0x14
	bl sub_08013244
	ldr r0, [sp, #0x18]
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [sp, #0x14]
	adds r1, r1, r7
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r0, r1
	ldr r3, _080133A8 @ =0x0821A398
	lsls r1, r6, #1
	movs r2, #0x2c
	muls r2, r5, r2
	adds r1, r1, r2
	adds r3, #0x1a
	adds r1, r1, r3
	ldrh r2, [r1]
	movs r3, #0xc0
	lsls r3, r3, #2
	movs r1, #0x80
	str r1, [sp]
	subs r1, #0x81
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	bl sub_08003F8C
_080133A0:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080133A8: .4byte 0x0821A398
	thumb_func_end sub_0801331C

	thumb_func_start sub_080133AC
sub_080133AC: @ 0x080133AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	cmp r5, #0x12
	beq _08013440
	ldr r3, _080133E4 @ =0x0821A398
	movs r0, #0x2c
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r6, r2
	adds r1, r3, #0
	adds r1, #0x26
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _080133E8
	adds r0, r2, r3
	ldrb r1, [r0]
	lsrs r7, r1, #3
	ldrb r0, [r0, #1]
	b _080133F0
	.align 2, 0
_080133E4: .4byte 0x0821A398
_080133E8:
	adds r0, r2, r3
	ldrb r1, [r0, #2]
	lsrs r7, r1, #3
	ldrb r0, [r0, #3]
_080133F0:
	lsrs r4, r0, #3
	add r3, sp, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	add r2, sp, #0x14
	bl sub_08013244
	ldr r0, [sp, #0x18]
	adds r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [sp, #0x14]
	adds r1, r1, r7
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldr r3, _08013450 @ =0x0821A398
	lsls r1, r6, #1
	movs r2, #0x2c
	muls r2, r5, r2
	adds r1, r1, r2
	adds r3, #0x1a
	adds r1, r1, r3
	ldrh r2, [r1]
	mov r1, sb
	lsls r3, r1, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [sp, #0x38]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	bl sub_08003F8C
_08013440:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013450: .4byte 0x0821A398
	thumb_func_end sub_080133AC

	thumb_func_start sub_08013454
sub_08013454: @ 0x08013454
	lsls r0, r0, #4
	lsls r1, r1, #3
	ldr r2, _08013464 @ =0x0821A6DC
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08013464: .4byte 0x0821A6DC
	thumb_func_end sub_08013454

	thumb_func_start sub_08013468
sub_08013468: @ 0x08013468
	lsls r0, r0, #4
	lsls r1, r1, #3
	ldr r2, _08013478 @ =0x0821A6DC
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	bx lr
	.align 2, 0
_08013478: .4byte 0x0821A6DC
	thumb_func_end sub_08013468

	thumb_func_start sub_0801347C
sub_0801347C: @ 0x0801347C
	push {lr}
	lsls r0, r0, #4
	lsls r1, r1, #3
	ldr r2, _08013494 @ =0x0821A6DC
	adds r1, r1, r2
	adds r0, r0, r1
	ldrh r1, [r0, #4]
	ldr r0, _08013498 @ =0x0000FFFF
	cmp r1, r0
	beq _0801349C
	adds r0, r1, #0
	b _080134A0
	.align 2, 0
_08013494: .4byte 0x0821A6DC
_08013498: .4byte 0x0000FFFF
_0801349C:
	movs r0, #1
	rsbs r0, r0, #0
_080134A0:
	pop {r1}
	bx r1
	thumb_func_end sub_0801347C

	thumb_func_start sub_080134A4
sub_080134A4: @ 0x080134A4
	push {lr}
	adds r1, r0, #0
	cmp r1, #5
	ble _080134AE
	movs r1, #0
_080134AE:
	ldr r0, _080134BC @ =0x0821A7FC
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1]
	pop {r1}
	bx r1
	.align 2, 0
_080134BC: .4byte 0x0821A7FC
	thumb_func_end sub_080134A4

	thumb_func_start sub_080134C0
sub_080134C0: @ 0x080134C0
	push {lr}
	adds r1, r0, #0
	cmp r1, #5
	ble _080134CA
	movs r1, #0
_080134CA:
	ldr r0, _080134D8 @ =0x0821A7FC
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	pop {r1}
	bx r1
	.align 2, 0
_080134D8: .4byte 0x0821A7FC
	thumb_func_end sub_080134C0

	thumb_func_start sub_080134DC
sub_080134DC: @ 0x080134DC
	push {lr}
	adds r1, r0, #0
	cmp r1, #5
	ble _080134E6
	movs r1, #0
_080134E6:
	ldr r0, _080134F4 @ =0x0821A7FC
	lsls r1, r1, #3
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	pop {r1}
	bx r1
	.align 2, 0
_080134F4: .4byte 0x0821A7FC
	thumb_func_end sub_080134DC

	thumb_func_start sub_080134F8
sub_080134F8: @ 0x080134F8
	push {lr}
	adds r2, r0, #0
	ldr r3, _08013518 @ =0x0821A82C
	cmp r1, #0
	bge _08013504
	adds r1, #3
_08013504:
	asrs r0, r1, #2
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x52
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
_08013518: .4byte 0x0821A82C
	thumb_func_end sub_080134F8

	thumb_func_start sub_0801351C
sub_0801351C: @ 0x0801351C
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	adds r6, r3, #0
	movs r2, #0x58
	adds r3, r0, #0
	muls r3, r2, r3
	ldr r2, _08013540 @ =0x0821A82C
	adds r4, r3, r2
	bl sub_080134F8
	cmp r0, #0
	bne _08013544
	ldrb r0, [r4]
	lsrs r0, r0, #3
	str r0, [r5]
	ldrb r0, [r4, #1]
	b _0801354C
	.align 2, 0
_08013540: .4byte 0x0821A82C
_08013544:
	ldrb r0, [r4, #2]
	lsrs r0, r0, #3
	str r0, [r5]
	ldrb r0, [r4, #3]
_0801354C:
	lsrs r0, r0, #3
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801351C

	thumb_func_start sub_08013558
sub_08013558: @ 0x08013558
	ldr r2, _08013564 @ =0x0821A82C
	movs r1, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #8]
	bx lr
	.align 2, 0
_08013564: .4byte 0x0821A82C
	thumb_func_end sub_08013558

	thumb_func_start sub_08013568
sub_08013568: @ 0x08013568
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080134F8
	cmp r0, #0
	beq _08013584
	ldr r1, _08013580 @ =0x0821A82C
	movs r0, #0x58
	muls r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0xe]
	b _0801358E
	.align 2, 0
_08013580: .4byte 0x0821A82C
_08013584:
	ldr r1, _08013594 @ =0x0821A82C
	movs r0, #0x58
	muls r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0xa]
_0801358E:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08013594: .4byte 0x0821A82C
	thumb_func_end sub_08013568

	thumb_func_start sub_08013598
sub_08013598: @ 0x08013598
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080134F8
	cmp r0, #0
	beq _080135B4
	ldr r1, _080135B0 @ =0x0821A82C
	movs r0, #0x58
	muls r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	b _080135BE
	.align 2, 0
_080135B0: .4byte 0x0821A82C
_080135B4:
	ldr r1, _080135C4 @ =0x0821A82C
	movs r0, #0x58
	muls r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
_080135BE:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080135C4: .4byte 0x0821A82C
	thumb_func_end sub_08013598

	thumb_func_start sub_080135C8
sub_080135C8: @ 0x080135C8
	ldr r3, _080135DC @ =0x0821A82C
	lsls r1, r1, #1
	movs r2, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x12
	adds r1, r1, r3
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_080135DC: .4byte 0x0821A82C
	thumb_func_end sub_080135C8

	thumb_func_start sub_080135E0
sub_080135E0: @ 0x080135E0
	ldr r3, _080135F4 @ =0x0821A82C
	lsls r1, r1, #1
	movs r2, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x32
	adds r1, r1, r3
	ldrh r0, [r1]
	bx lr
	.align 2, 0
_080135F4: .4byte 0x0821A82C
	thumb_func_end sub_080135E0

	thumb_func_start sub_080135F8
sub_080135F8: @ 0x080135F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl sub_080134F8
	cmp r0, #0
	bne _08013620
	ldr r2, _0801361C @ =0x0821A82C
	movs r0, #0x58
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r1, r2
	ldrb r0, [r1, #4]
	lsrs r0, r0, #3
	str r0, [r5]
	ldrb r0, [r1, #5]
	b _08013632
	.align 2, 0
_0801361C: .4byte 0x0821A82C
_08013620:
	ldr r2, _0801363C @ =0x0821A82C
	movs r0, #0x58
	adds r1, r4, #0
	muls r1, r0, r1
	adds r1, r1, r2
	ldrb r0, [r1, #6]
	lsrs r0, r0, #3
	str r0, [r5]
	ldrb r0, [r1, #7]
_08013632:
	lsrs r0, r0, #3
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801363C: .4byte 0x0821A82C
	thumb_func_end sub_080135F8

	thumb_func_start sub_08013640
sub_08013640: @ 0x08013640
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	add r3, sp, #0x18
	add r2, sp, #0x14
	bl sub_0801351C
	adds r0, r6, #0
	mov r1, r8
	bl sub_08013598
	adds r2, r0, #0
	ldr r0, [sp, #0x18]
	lsls r0, r0, #5
	ldr r1, [sp, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #1
	add sb, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, sb
	movs r1, #0
	adds r3, r5, #0
	bl sub_08003F8C
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08013640

	thumb_func_start sub_080136A8
sub_080136A8: @ 0x080136A8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	mov sb, r2
	mov r8, r3
	ldr r6, [sp, #0x40]
	ldr r7, [sp, #0x44]
	add r3, sp, #0x18
	add r2, sp, #0x14
	bl sub_080135F8
	add r2, sp, #0x1c
	add r3, sp, #0x20
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801351C
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080135E0
	adds r2, r0, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	adds r1, r1, r3
	adds r0, r0, r1
	lsls r0, r0, #1
	add sb, r0
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r7, [sp, #0x10]
	mov r0, sb
	movs r1, #0
	mov r3, r8
	bl sub_08003F8C
	add sp, #0x24
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080136A8

	thumb_func_start sub_08013728
sub_08013728: @ 0x08013728
	ldr r1, _08013730 @ =0x02035754
	ldr r1, [r1]
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08013730: .4byte 0x02035754
	thumb_func_end sub_08013728

	thumb_func_start sub_08013734
sub_08013734: @ 0x08013734
	ldr r1, _0801373C @ =0x02035754
	ldr r1, [r1]
	strh r0, [r1, #6]
	bx lr
	.align 2, 0
_0801373C: .4byte 0x02035754
	thumb_func_end sub_08013734

	thumb_func_start sub_08013740
sub_08013740: @ 0x08013740
	push {r4, lr}
	ldr r4, _08013754 @ =0x02035754
	ldr r4, [r4]
	strh r0, [r4, #0xa]
	strh r1, [r4, #0xc]
	strh r2, [r4, #0xe]
	strh r3, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013754: .4byte 0x02035754
	thumb_func_end sub_08013740

	thumb_func_start sub_08013758
sub_08013758: @ 0x08013758
	ldr r2, _08013764 @ =0x02035754
	ldr r2, [r2]
	strh r0, [r2, #0x12]
	strh r1, [r2, #0x14]
	bx lr
	.align 2, 0
_08013764: .4byte 0x02035754
	thumb_func_end sub_08013758

	thumb_func_start sub_08013768
sub_08013768: @ 0x08013768
	ldr r1, _08013770 @ =0x02035754
	ldr r1, [r1]
	strh r0, [r1, #0x16]
	bx lr
	.align 2, 0
_08013770: .4byte 0x02035754
	thumb_func_end sub_08013768

	thumb_func_start sub_08013774
sub_08013774: @ 0x08013774
	ldr r1, _0801377C @ =0x02035754
	ldr r1, [r1]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
_0801377C: .4byte 0x02035754
	thumb_func_end sub_08013774

	thumb_func_start sub_08013780
sub_08013780: @ 0x08013780
	ldr r2, _08013798 @ =0x02035754
	ldr r2, [r2]
	strb r0, [r2, #0x1c]
	strb r1, [r2, #0x1e]
	movs r0, #0xff
	strb r0, [r2, #0x19]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1d]
	movs r0, #1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_08013798: .4byte 0x02035754
	thumb_func_end sub_08013780

	thumb_func_start sub_0801379C
sub_0801379C: @ 0x0801379C
	push {lr}
	adds r3, r0, #0
	ldr r0, _080137C0 @ =0x02035754
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #2
	bne _080137B2
	movs r0, #0x19
	ldrsb r0, [r2, r0]
	cmp r0, r1
	beq _080137BA
_080137B2:
	strb r3, [r2, #0x1c]
	strb r1, [r2, #0x1d]
	movs r0, #2
	strb r0, [r2, #1]
_080137BA:
	pop {r0}
	bx r0
	.align 2, 0
_080137C0: .4byte 0x02035754
	thumb_func_end sub_0801379C

	thumb_func_start sub_080137C4
sub_080137C4: @ 0x080137C4
	ldr r0, _080137D4 @ =0x02035754
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1, #0x19]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	bx lr
	.align 2, 0
_080137D4: .4byte 0x02035754
	thumb_func_end sub_080137C4

	thumb_func_start sub_080137D8
sub_080137D8: @ 0x080137D8
	ldr r0, _080137E4 @ =0x02035754
	ldr r1, [r0]
	movs r0, #3
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_080137E4: .4byte 0x02035754
	thumb_func_end sub_080137D8

	thumb_func_start sub_080137E8
sub_080137E8: @ 0x080137E8
	ldr r1, _080137F0 @ =0x02035754
	ldr r1, [r1]
	strh r0, [r1, #0x30]
	bx lr
	.align 2, 0
_080137F0: .4byte 0x02035754
	thumb_func_end sub_080137E8

	thumb_func_start sub_080137F4
sub_080137F4: @ 0x080137F4
	ldr r0, _08013800 @ =0x02035754
	ldr r1, [r0]
	movs r0, #4
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08013800: .4byte 0x02035754
	thumb_func_end sub_080137F4

	thumb_func_start sub_08013804
sub_08013804: @ 0x08013804
	ldr r0, _08013810 @ =0x02035754
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08013810: .4byte 0x02035754
	thumb_func_end sub_08013804

	thumb_func_start sub_08013814
sub_08013814: @ 0x08013814
	ldr r0, _0801381C @ =0x02035754
	ldr r0, [r0]
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801381C: .4byte 0x02035754
	thumb_func_end sub_08013814

	thumb_func_start sub_08013820
sub_08013820: @ 0x08013820
	push {lr}
	ldr r1, _08013898 @ =0x02035754
	ldr r2, [r1]
	movs r3, #0
	strb r3, [r2, #1]
	strb r3, [r2]
	cmp r0, #0
	beq _08013854
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	movs r0, #1
	strh r0, [r2, #6]
	movs r0, #0xff
	strb r0, [r2, #8]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #9]
	strh r3, [r2, #0xa]
	strh r3, [r2, #0xc]
	movs r0, #0xc
	strh r0, [r2, #0xe]
	strh r3, [r2, #0x10]
	movs r0, #0x18
	strh r0, [r2, #0x12]
	strh r3, [r2, #0x14]
	strh r3, [r2, #0x16]
_08013854:
	movs r0, #0xff
	strb r0, [r2, #0x18]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x19]
	strb r0, [r2, #0x1a]
	strb r0, [r2, #0x1b]
	strb r0, [r2, #0x1c]
	strb r0, [r2, #0x1d]
	strb r0, [r2, #0x1e]
	strb r0, [r2, #0x1f]
	adds r1, r2, #0
	adds r1, #0x20
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x21
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	str r3, [r2, #0x28]
	strh r3, [r2, #0x2c]
	strh r3, [r2, #0x2e]
	movs r0, #1
	strh r0, [r2, #0x30]
	pop {r0}
	bx r0
	.align 2, 0
_08013898: .4byte 0x02035754
	thumb_func_end sub_08013820

	thumb_func_start sub_0801389C
sub_0801389C: @ 0x0801389C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x1c
	adds r6, r0, #0
	ldrb r0, [r6]
	cmp r0, #0
	beq _08013956
	cmp r1, #0
	bne _080138C6
	movs r4, #0x18
	ldrsb r4, [r6, r4]
	movs r5, #0x1a
	ldrsb r5, [r6, r5]
	movs r0, #0xff
	strb r0, [r6, #0x19]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r6, #0x1d]
	strb r1, [r6]
	b _080138E4
_080138C6:
	movs r4, #0x1f
	ldrsb r4, [r6, r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq _08013956
	adds r0, r6, #0
	adds r0, #0x20
	movs r5, #0
	ldrsb r5, [r0, r5]
	movs r1, #0xff
	strb r1, [r6, #0x1f]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0]
_080138E4:
	add r3, sp, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	add r2, sp, #0xc
	bl sub_0801351C
	add r2, sp, #0x14
	add r3, sp, #0x18
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080135F8
	ldr r4, [sp, #0xc]
	ldr r5, [sp, #0x10]
	ldrh r0, [r6, #4]
	ldr r1, _08013964 @ =0x0000F3FF
	mov r8, r1
	lsls r2, r4, #0xb
	lsls r3, r5, #0xb
	adds r1, r4, #0
	adds r1, #0x10
	lsls r1, r1, #0xb
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #0xa
	lsls r1, r1, #0xb
	str r1, [sp, #4]
	movs r7, #1
	str r7, [sp, #8]
	mov r1, r8
	bl sub_08000DE4
	ldrh r0, [r6, #4]
	ldrh r1, [r6, #6]
	cmp r0, r1
	beq _08013956
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	adds r4, r1, r0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r5, r1, r0
	ldrh r0, [r6, #6]
	lsls r2, r4, #0xb
	lsls r3, r5, #0xb
	adds r1, r4, #0
	adds r1, #8
	lsls r1, r1, #0xb
	str r1, [sp]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0xb
	str r1, [sp, #4]
	str r7, [sp, #8]
	mov r1, r8
	bl sub_08000DE4
_08013956:
	add sp, #0x1c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08013964: .4byte 0x0000F3FF
	thumb_func_end sub_0801389C

	thumb_func_start sub_08013968
sub_08013968: @ 0x08013968
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r1, #0x18
	ldrsb r1, [r5, r1]
	movs r0, #0x1c
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08013988
	ldr r7, _08013984 @ =0x00222111
	b _080139A6
	.align 2, 0
_08013984: .4byte 0x00222111
_08013988:
	movs r4, #0x1b
	ldrsb r4, [r5, r4]
	movs r0, #0x1c
	ldrsb r0, [r5, r0]
	movs r1, #0x1e
	ldrsb r1, [r5, r1]
	bl sub_080134F8
	cmp r4, r0
	beq _080139A4
	ldr r7, _080139A0 @ =0x00111002
	b _080139A6
	.align 2, 0
_080139A0: .4byte 0x00111002
_080139A4:
	ldr r7, _08013A24 @ =0x00101000
_080139A6:
	movs r0, #0x1c
	ldrsb r0, [r5, r0]
	mov sb, r0
	movs r1, #0x1e
	ldrsb r1, [r5, r1]
	mov sl, r1
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r4, r5, #0
	adds r4, #0x20
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	strb r0, [r4]
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq _080139D2
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801389C
_080139D2:
	movs r1, #2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080139E4
	ldrb r0, [r5, #0x18]
	strb r0, [r5, #0x1f]
	ldrb r0, [r5, #0x1a]
	strb r0, [r4]
_080139E4:
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq _080139F2
	adds r0, r5, #0
	adds r0, #0x21
	strb r1, [r0]
_080139F2:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r7
	cmp r0, #0
	beq _08013A36
	ldrb r0, [r5, #8]
	orrs r0, r6
	strb r0, [r5, #8]
	ldrb r0, [r5, #9]
	orrs r0, r6
	strb r0, [r5, #9]
	movs r6, #0
	movs r1, #0x22
	adds r1, r1, r5
	mov r8, r1
_08013A10:
	movs r0, #0x1c
	ldrsb r0, [r5, r0]
	lsls r4, r6, #2
	adds r1, r4, #0
	bl sub_080134F8
	cmp r0, #0
	bne _08013A28
	strb r4, [r5, #8]
	b _08013A2A
	.align 2, 0
_08013A24: .4byte 0x00101000
_08013A28:
	strb r4, [r5, #9]
_08013A2A:
	adds r6, #1
	cmp r6, #3
	ble _08013A10
	movs r0, #2
	mov r1, r8
	strb r0, [r1]
_08013A36:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r7
	cmp r0, #0
	beq _08013A48
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #2
	strb r0, [r1]
_08013A48:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r7
	cmp r0, #0
	beq _08013A5A
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #3
	strb r0, [r1]
_08013A5A:
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r7
	cmp r0, #0
	beq _08013A6C
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #2
	strb r0, [r1]
_08013A6C:
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r7
	cmp r0, #0
	beq _08013A7E
	adds r1, r5, #0
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1]
_08013A7E:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r7
	cmp r0, #0
	beq _08013A94
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
_08013A94:
	movs r0, #0x80
	lsls r0, r0, #0xe
	ands r7, r0
	cmp r7, #0
	beq _08013AAA
	adds r1, r5, #0
	adds r1, #0x25
	movs r0, #4
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
_08013AAA:
	mov r0, sb
	strb r0, [r5, #0x18]
	mov r1, sl
	strb r1, [r5, #0x1a]
	mov r0, sb
	mov r1, sl
	bl sub_080134F8
	strb r0, [r5, #0x1b]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08013968

	thumb_func_start sub_08013ACC
sub_08013ACC: @ 0x08013ACC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x2c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #2
	ldr r2, [r5, #0x28]
	adds r4, r2, r0
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08013AFC
	movs r3, #2
	ldrsh r0, [r4, r3]
	cmp r0, r1
	bne _08013AF6
	movs r0, #0
	strh r0, [r5, #0x2e]
	movs r0, #1
	b _08013B22
_08013AF6:
	movs r0, #0
	strh r0, [r5, #0x2c]
	adds r4, r2, #0
_08013AFC:
	ldrh r0, [r4]
	strb r0, [r5, #0x1e]
	bl sub_08000480
	adds r1, r0, #0
	movs r2, #2
	ldrsh r0, [r4, r2]
	bl sub_08044648
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08013B1A
	movs r0, #1
	strh r0, [r5, #0x2e]
_08013B1A:
	adds r0, r5, #0
	bl sub_08013968
	movs r0, #2
_08013B22:
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08013ACC

	thumb_func_start sub_08013B2C
sub_08013B2C: @ 0x08013B2C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x1d
	ldrsb r1, [r4, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08013B60
	ldr r1, _08013B68 @ =0x0821AF40
	ldrb r2, [r4, #0x1d]
	movs r0, #0x1d
	ldrsb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x28]
	movs r0, #0
	strh r0, [r4, #0x2c]
	strb r2, [r4, #0x19]
	movs r0, #1
	strh r0, [r4, #0x30]
	adds r0, r4, #0
	bl sub_08013ACC
	movs r0, #2
	strb r0, [r4]
_08013B60:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013B68: .4byte 0x0821AF40
	thumb_func_end sub_08013B2C

	thumb_func_start sub_08013B6C
sub_08013B6C: @ 0x08013B6C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08013B88 @ =0x02035754
	ldr r5, [r0]
	ldrb r0, [r5, #1]
	subs r0, #1
	cmp r0, #4
	bhi _08013BD8
	lsls r0, r0, #2
	ldr r1, _08013B8C @ =_08013B90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08013B88: .4byte 0x02035754
_08013B8C: .4byte _08013B90
_08013B90: @ jump table
	.4byte _08013BA4 @ case 0
	.4byte _08013BB4 @ case 1
	.4byte _08013BBC @ case 2
	.4byte _08013BC6 @ case 3
	.4byte _08013BCE @ case 4
_08013BA4:
	adds r0, r5, #0
	bl sub_08013968
	movs r1, #0
	movs r0, #1
	strb r0, [r5]
	strb r1, [r5, #1]
	b _08013BD8
_08013BB4:
	adds r0, r5, #0
	bl sub_08013B2C
	b _08013BD4
_08013BBC:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801389C
	b _08013BD4
_08013BC6:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801389C
_08013BCE:
	movs r0, #0
	bl sub_08013820
_08013BD4:
	movs r0, #0
	strb r0, [r5, #1]
_08013BD8:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	cmp r0, #1
	bne _08013C1A
	adds r1, r5, #0
	adds r1, #0x26
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08013BF4
	subs r0, r2, #1
	strb r0, [r1]
	b _08013C1A
_08013BF4:
	ldrb r0, [r5]
	cmp r0, #2
	bne _08013C1A
	ldrh r1, [r5, #0x2e]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08013C1A
	subs r0, r1, #1
	strh r0, [r5, #0x2e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08013C1A
	ldrh r0, [r5, #0x2c]
	adds r0, #1
	strh r0, [r5, #0x2c]
	adds r0, r5, #0
	bl sub_08013ACC
_08013C1A:
	adds r1, r5, #0
	adds r1, #0x21
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08013C4C
	subs r0, r2, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08013C4C
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	bl sub_08013558
	adds r2, r0, #0
	ldrh r0, [r5, #2]
	lsls r0, r0, #5
	movs r4, #0x16
	ldrsh r3, [r5, r4]
	movs r1, #0
	str r1, [sp]
	bl sub_08003E7C
_08013C4C:
	adds r1, r5, #0
	adds r1, #0x22
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08013CD6
	subs r0, r2, #1
	movs r7, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08013CD6
	movs r0, #8
	ldrsb r0, [r5, r0]
	movs r6, #1
	rsbs r6, r6, #0
	cmp r0, r6
	beq _08013CA0
	ldrh r0, [r5, #4]
	bl sub_08000D5C
	adds r4, r0, #0
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #5
	ldrh r1, [r5, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r4, r4, r0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	movs r1, #8
	ldrsb r1, [r5, r1]
	bl sub_08013568
	adds r2, r0, #0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
_08013CA0:
	movs r0, #9
	ldrsb r0, [r5, r0]
	cmp r0, r6
	beq _08013CD6
	ldrh r0, [r5, #4]
	bl sub_08000D5C
	adds r4, r0, #0
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #5
	ldrh r2, [r5, #0xe]
	adds r0, r0, r2
	lsls r0, r0, #5
	adds r4, r4, r0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	movs r1, #9
	ldrsb r1, [r5, r1]
	bl sub_08013568
	adds r2, r0, #0
	str r7, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
_08013CD6:
	adds r1, r5, #0
	adds r1, #0x23
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08013D1E
	subs r0, r2, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08013D1E
	ldrh r0, [r5, #4]
	bl sub_08000D5C
	adds r4, r0, #0
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #5
	ldrh r1, [r5, #0x12]
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r4, r4, r0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	bl sub_080135C8
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
_08013D1E:
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08013D78
	subs r0, r2, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08013D78
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801389C
	movs r0, #0x1b
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _08013D50
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #5
	ldrh r2, [r5, #0xa]
	adds r4, r0, r2
	b _08013D58
_08013D50:
	ldrh r0, [r5, #0x10]
	lsls r0, r0, #5
	ldrh r1, [r5, #0xe]
	adds r4, r0, r1
_08013D58:
	ldrh r0, [r5, #4]
	bl sub_08000D6C
	adds r2, r0, #0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	ldrh r3, [r5, #2]
	lsls r3, r3, #4
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	adds r3, r4, #0
	bl sub_08013640
_08013D78:
	adds r1, r5, #0
	adds r1, #0x25
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08013DB6
	subs r0, r2, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08013DB6
	ldrh r0, [r5, #6]
	bl sub_08000D6C
	adds r2, r0, #0
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	ldrh r3, [r5, #0x14]
	lsls r3, r3, #5
	ldrh r4, [r5, #0x12]
	adds r3, r3, r4
	ldrh r4, [r5, #2]
	lsls r4, r4, #4
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_080136A8
_08013DB6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08013B6C

	thumb_func_start sub_08013DC0
sub_08013DC0: @ 0x08013DC0
	push {lr}
	bl sub_080035FC
	ldr r1, _08013DD0 @ =sub_08013B6C
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08013DD0: .4byte sub_08013B6C
	thumb_func_end sub_08013DC0

	thumb_func_start sub_08013DD4
sub_08013DD4: @ 0x08013DD4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08013DEE
	ldr r0, _08013DF4 @ =0x02035754
	ldr r0, [r0]
	bl sub_080038C8
	adds r0, r4, #0
	bl sub_08003450
_08013DEE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08013DF4: .4byte 0x02035754
	thumb_func_end sub_08013DD4

	thumb_func_start sub_08013DF8
sub_08013DF8: @ 0x08013DF8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r5, _08013E24 @ =0x02035754
	movs r0, #1
	movs r1, #0x34
	bl sub_080038A8
	str r0, [r5]
	movs r0, #1
	bl sub_08013820
	ldr r1, _08013E28 @ =sub_08013DC0
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08003344
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013E24: .4byte 0x02035754
_08013E28: .4byte sub_08013DC0
	thumb_func_end sub_08013DF8

	thumb_func_start sub_08013E2C
sub_08013E2C: @ 0x08013E2C
	ldr r1, _08013E34 @ =0x02035750
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08013E34: .4byte 0x02035750
	thumb_func_end sub_08013E2C

	thumb_func_start sub_08013E38
sub_08013E38: @ 0x08013E38
	push {r4, r5, r6, lr}
	ldr r4, _08013FB8 @ =0x030014A4
	movs r0, #0
	strh r0, [r4]
	bl sub_08010604
	cmp r0, #0
	beq _08013E4A
	b _08013FB0
_08013E4A:
	ldr r1, _08013FBC @ =0x02035750
	ldr r0, [r1]
	cmp r0, #0
	beq _08013E56
	subs r0, #1
	str r0, [r1]
_08013E56:
	ldr r0, _08013FC0 @ =0x03001020
	ldrh r5, [r0]
	cmp r5, #0
	beq _08013F1A
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _08013E6E
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
_08013E6E:
	movs r0, #0x80
	ands r0, r5
	adds r2, r5, #0
	cmp r0, #0
	beq _08013E80
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
_08013E80:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08013E90
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4]
_08013E90:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08013EA0
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
_08013EA0:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08013EB4
	ldrh r1, [r4]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4]
_08013EB4:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08013EC8
	ldrh r1, [r4]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4]
_08013EC8:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08013ED8
	ldrh r0, [r4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4]
_08013ED8:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08013EE8
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
_08013EE8:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08013EF8
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
_08013EF8:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08013F0A
	ldr r0, _08013FB8 @ =0x030014A4
	ldrh r1, [r0]
	movs r2, #4
	orrs r1, r2
	strh r1, [r0]
_08013F0A:
	bl sub_08000480
	adds r1, r0, #0
	ldr r4, _08013FBC @ =0x02035750
	movs r0, #0x1e
	bl sub_08044648
	str r0, [r4]
_08013F1A:
	ldr r6, _08013FBC @ =0x02035750
	ldr r0, [r6]
	cmp r0, #0
	bne _08013FB0
	ldr r3, _08013FC4 @ =0x03001028
	ldrh r1, [r3]
	cmp r1, #0
	beq _08013FB0
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08013F3C
	ldr r0, _08013FB8 @ =0x030014A4
	ldrh r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strh r1, [r0]
_08013F3C:
	ldrh r4, [r3]
	movs r0, #0x80
	ands r0, r4
	adds r3, r4, #0
	cmp r0, #0
	beq _08013F52
	ldr r0, _08013FB8 @ =0x030014A4
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
_08013F52:
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _08013F64
	ldr r0, _08013FB8 @ =0x030014A4
	ldrh r1, [r0]
	movs r2, #0x10
	orrs r1, r2
	strh r1, [r0]
_08013F64:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _08013F76
	ldr r0, _08013FB8 @ =0x030014A4
	ldrh r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r0]
_08013F76:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08013F8C
	ldr r2, _08013FB8 @ =0x030014A4
	ldrh r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2]
_08013F8C:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	beq _08013FA2
	ldr r2, _08013FB8 @ =0x030014A4
	ldrh r1, [r2]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08013FA2:
	bl sub_08000480
	adds r1, r0, #0
	movs r0, #8
	bl sub_08044648
	str r0, [r6]
_08013FB0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08013FB8: .4byte 0x030014A4
_08013FBC: .4byte 0x02035750
_08013FC0: .4byte 0x03001020
_08013FC4: .4byte 0x03001028
	thumb_func_end sub_08013E38

	thumb_func_start sub_08013FC8
sub_08013FC8: @ 0x08013FC8
	push {r4, lr}
	movs r4, #0
_08013FCC:
	adds r0, r4, #0
	bl sub_0801470C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08014720
	adds r4, #1
	cmp r4, #5
	ble _08013FCC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08013FC8

	thumb_func_start sub_08013FE8
sub_08013FE8: @ 0x08013FE8
	push {r4, lr}
	movs r4, #0
_08013FEC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080146FC
	adds r4, #1
	cmp r4, #5
	ble _08013FEC
	movs r0, #0
	bl sub_080147D8
	bl sub_080147B4
	bl sub_080145F8
	bl sub_08013FC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08013FE8

	thumb_func_start sub_08014014
sub_08014014: @ 0x08014014
	push {r4, lr}
	movs r4, #0
_08014018:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014638
	adds r4, #1
	cmp r4, #5
	ble _08014018
	movs r0, #0xfa
	lsls r0, r0, #2
	bl sub_08014774
	bl sub_08014838
	bl sub_080147A8
	bl sub_08014850
	bl sub_080147C0
	bl sub_08013FE8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08014014

	thumb_func_start sub_08014048
sub_08014048: @ 0x08014048
	push {lr}
	movs r0, #0
	movs r1, #0x12
	bl sub_080147F4
	movs r0, #1
	movs r1, #0x12
	bl sub_080147F4
	movs r0, #2
	movs r1, #0x12
	bl sub_080147F4
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08014048

	thumb_func_start sub_08014068
sub_08014068: @ 0x08014068
	push {lr}
	movs r0, #1
	bl sub_0801482C
	movs r0, #0
	bl sub_08014844
	movs r0, #1
	bl sub_0801485C
	movs r0, #1
	bl sub_08014874
	movs r0, #1
	bl sub_0801488C
	movs r0, #0
	bl sub_080148A4
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080148BC
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08014068

	thumb_func_start sub_0801409C
sub_0801409C: @ 0x0801409C
	push {r4, lr}
	movs r4, #0
_080140A0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014638
	adds r4, #1
	cmp r4, #5
	ble _080140A0
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_08014620
	movs r0, #0
	bl sub_08014744
	movs r0, #0
	bl sub_0801475C
	movs r0, #0
	movs r1, #0x12
	bl sub_080147F4
	movs r0, #1
	movs r1, #0x12
	bl sub_080147F4
	movs r0, #2
	movs r1, #0x12
	bl sub_080147F4
	bl sub_08014014
	bl sub_08014838
	bl sub_080147A8
	bl sub_08014850
	bl sub_080147C0
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801409C

	thumb_func_start sub_080140F4
sub_080140F4: @ 0x080140F4
	push {r4, lr}
	movs r4, #0
_080140F8:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08014658
	adds r4, #1
	cmp r4, #5
	ble _080140F8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080140F4

	thumb_func_start sub_0801410C
sub_0801410C: @ 0x0801410C
	push {r4, r5, lr}
	movs r5, #0
_08014110:
	movs r4, #0
_08014112:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08014678
	adds r4, #1
	cmp r4, #4
	ble _08014112
	adds r5, #1
	cmp r5, #0x11
	ble _08014110
	movs r5, #0
_0801412C:
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_08014678
	adds r5, #1
	cmp r5, #5
	ble _0801412C
	movs r5, #0
_08014140:
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08014678
	adds r5, #1
	cmp r5, #5
	ble _08014140
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0801410C

	thumb_func_start sub_08014158
sub_08014158: @ 0x08014158
	push {lr}
	bl sub_08014068
	bl sub_0801409C
	bl sub_080140F4
	bl sub_0801410C
	movs r0, #0
	bl sub_08014814
	pop {r0}
	bx r0
	thumb_func_end sub_08014158

	thumb_func_start sub_08014174
sub_08014174: @ 0x08014174
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r2, r0, #0
	ldr r3, _08014190 @ =0x02034600
	cmp r1, #1
	beq _080141C6
	cmp r1, #1
	bgt _08014194
	cmp r1, #0
	beq _0801419A
	b _08014270
	.align 2, 0
_08014190: .4byte 0x02034600
_08014194:
	cmp r1, #2
	beq _0801425C
	b _08014270
_0801419A:
	ldrb r0, [r3, #0x14]
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r3, #0x15]
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r3, #0x16]
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r3, #0x17]
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r3, #0x18]
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r3, #0x19]
	strb r0, [r2]
	adds r2, #1
	ldrb r0, [r3, #0x1a]
	strb r0, [r2]
	adds r2, #1
	b _08014282
_080141C6:
	adds r1, r3, #0
	movs r3, #4
	ldrb r4, [r1, #4]
	ldrb r5, [r1, #5]
	movs r0, #8
	adds r0, r0, r1
	mov r8, r0
	ldrb r6, [r1, #0xc]
	ldrb r7, [r1, #0xd]
	ldrb r0, [r1, #0xe]
	mov ip, r0
	movs r0, #0x10
	adds r0, r0, r1
	mov sb, r0
	movs r0, #0x1b
	adds r0, r0, r1
	mov sl, r0
_080141E8:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bgt _080141E8
	strb r4, [r2]
	adds r2, #1
	strb r5, [r2]
	adds r2, #1
	mov r1, r8
	movs r3, #4
_08014202:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bgt _08014202
	strb r6, [r2]
	adds r2, #1
	strb r7, [r2]
	adds r2, #1
	mov r0, ip
	strb r0, [r2]
	adds r2, #1
	movs r1, #0
	mov r3, sb
_08014222:
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	cmp r1, #2
	ble _08014222
	movs r1, #0
	mov r3, sl
_08014234:
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	cmp r1, #5
	ble _08014234
	movs r1, #0
	ldr r3, _08014258 @ =0x0203468D
_08014246:
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	cmp r1, #5
	ble _08014246
	b _08014282
	.align 2, 0
_08014258: .4byte 0x0203468D
_0801425C:
	movs r1, #0
	adds r3, #0x21
_08014260:
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	cmp r1, #5
	ble _08014260
	b _08014282
_08014270:
	movs r1, #0
	adds r3, #0x27
_08014274:
	adds r0, r3, r1
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	adds r1, #1
	cmp r1, #0x65
	ble _08014274
_08014282:
	adds r0, r2, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08014174

	thumb_func_start sub_08014294
sub_08014294: @ 0x08014294
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r4, _080142A8 @ =0x02034600
	cmp r1, #1
	beq _080142DE
	cmp r1, #1
	bgt _080142AC
	cmp r1, #0
	beq _080142B2
	b _0801437E
	.align 2, 0
_080142A8: .4byte 0x02034600
_080142AC:
	cmp r1, #2
	beq _0801436A
	b _0801437E
_080142B2:
	ldrb r0, [r2]
	strb r0, [r4, #0x14]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0x15]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0x16]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0x17]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0x18]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0x19]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0x1a]
	adds r2, #1
	b _08014390
_080142DE:
	adds r1, r4, #0
	movs r3, #4
	adds r5, r4, #0
	adds r5, #8
	adds r6, r4, #0
	adds r6, #0x10
	adds r7, r4, #0
	adds r7, #0x1b
	movs r0, #0x8d
	adds r0, r0, r4
	mov ip, r0
_080142F4:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bgt _080142F4
	ldrb r0, [r2]
	strb r0, [r4, #4]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #5]
	adds r2, #1
	adds r1, r5, #0
	movs r3, #4
_08014312:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bgt _08014312
	ldrb r0, [r2]
	strb r0, [r4, #0xc]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0xd]
	adds r2, #1
	ldrb r0, [r2]
	strb r0, [r4, #0xe]
	adds r2, #1
	movs r3, #0
	adds r4, r6, #0
_08014336:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #2
	ble _08014336
	movs r3, #0
	adds r4, r7, #0
_08014348:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #5
	ble _08014348
	movs r3, #0
	mov r4, ip
_0801435A:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #5
	ble _0801435A
	b _08014390
_0801436A:
	movs r3, #0
	adds r4, #0x21
_0801436E:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #5
	ble _0801436E
	b _08014390
_0801437E:
	movs r3, #0
	adds r4, #0x27
_08014382:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, #0x65
	ble _08014382
_08014390:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08014294

	thumb_func_start sub_08014398
sub_08014398: @ 0x08014398
	push {r4, r5, lr}
	movs r5, #0
	cmp r0, #1
	beq _080143CA
	cmp r0, #1
	bgt _080143AA
	cmp r0, #0
	beq _080143B4
	b _08014408
_080143AA:
	cmp r0, #2
	beq _080143E2
	cmp r0, #3
	beq _080143EC
	b _08014408
_080143B4:
	movs r4, #0
	b _080143BA
_080143B8:
	adds r4, #1
_080143BA:
	cmp r4, #5
	bgt _08014400
	adds r0, r4, #0
	bl sub_08014648
	cmp r0, #0
	beq _080143B8
	b _08014400
_080143CA:
	movs r5, #1
	movs r4, #0
_080143CE:
	adds r0, r4, #0
	bl sub_08014648
	cmp r0, #0
	bne _080143DA
	movs r5, #0
_080143DA:
	adds r4, #1
	cmp r4, #4
	ble _080143CE
	b _08014408
_080143E2:
	movs r0, #5
	bl sub_08014648
	adds r5, r0, #0
	b _08014408
_080143EC:
	movs r4, #0
	b _080143F2
_080143F0:
	adds r4, #1
_080143F2:
	cmp r4, #5
	bgt _08014400
	adds r0, r4, #0
	bl sub_08014668
	cmp r0, #0
	beq _080143F0
_08014400:
	movs r5, #0
	cmp r4, #6
	bne _08014408
	movs r5, #1
_08014408:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08014398

	thumb_func_start sub_08014410
sub_08014410: @ 0x08014410
	push {lr}
	ldr r2, _08014424 @ =0x02034600
	adds r0, r2, #0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014428
	movs r0, #2
	b _0801444A
	.align 2, 0
_08014424: .4byte 0x02034600
_08014428:
	movs r1, #0
	ldrb r0, [r2, #0x1b]
	cmp r0, #0
	beq _08014440
	adds r2, #0x1b
_08014432:
	adds r1, #1
	cmp r1, #4
	bgt _08014440
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08014432
_08014440:
	cmp r1, #5
	beq _08014448
	movs r0, #0
	b _0801444A
_08014448:
	movs r0, #1
_0801444A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08014410

	thumb_func_start sub_08014450
sub_08014450: @ 0x08014450
	push {lr}
	ldr r0, _08014474 @ =0x02034600
	movs r2, #0
	movs r1, #0
	adds r3, r0, #0
	adds r3, #0x1b
_0801445C:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08014466
	adds r2, #1
_08014466:
	adds r1, #1
	cmp r1, #4
	ble _0801445C
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08014474: .4byte 0x02034600
	thumb_func_end sub_08014450

	thumb_func_start sub_08014478
sub_08014478: @ 0x08014478
	push {lr}
	movs r1, #3
	bl sub_0804449C
	bl sub_08014668
	pop {r1}
	bx r1
	thumb_func_end sub_08014478

	thumb_func_start sub_08014488
sub_08014488: @ 0x08014488
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
_08014490:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080146B8
	cmp r0, #0
	beq _080144A0
	adds r5, #1
_080144A0:
	adds r4, #1
	cmp r4, #4
	ble _08014490
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08014488

	thumb_func_start sub_080144B0
sub_080144B0: @ 0x080144B0
	push {r4, r5, r6, lr}
	movs r6, #0
	cmp r0, #0
	beq _080144BE
	cmp r0, #1
	beq _08014512
	b _08014564
_080144BE:
	movs r6, #1
	movs r5, #0
_080144C2:
	movs r4, #0
_080144C4:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080146B8
	cmp r0, #0
	beq _080144D4
	movs r6, #0
_080144D4:
	adds r4, #1
	cmp r4, #4
	ble _080144C4
	adds r5, #1
	cmp r5, #0x11
	ble _080144C2
	movs r5, #0
_080144E2:
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	bl sub_080146B8
	cmp r0, #0
	beq _080144F2
	movs r6, #0
_080144F2:
	adds r5, #1
	cmp r5, #5
	ble _080144E2
	movs r5, #0
_080144FA:
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	bl sub_080146B8
	cmp r0, #0
	beq _0801450A
	movs r6, #0
_0801450A:
	adds r5, #1
	cmp r5, #5
	ble _080144FA
	b _08014564
_08014512:
	movs r6, #1
	movs r5, #0
_08014516:
	movs r4, #0
_08014518:
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_080146B8
	cmp r0, #0
	bne _08014528
	movs r6, #0
_08014528:
	adds r4, #1
	cmp r4, #4
	ble _08014518
	adds r5, #1
	cmp r5, #0x11
	ble _08014516
	movs r5, #0
_08014536:
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	bl sub_080146B8
	cmp r0, #0
	bne _08014546
	movs r6, #0
_08014546:
	adds r5, #1
	cmp r5, #5
	ble _08014536
	movs r5, #0
_0801454E:
	movs r0, #2
	movs r1, #0
	adds r2, r5, #0
	bl sub_080146B8
	cmp r0, #0
	bne _0801455E
	movs r6, #0
_0801455E:
	adds r5, #1
	cmp r5, #5
	ble _0801454E
_08014564:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080144B0

	thumb_func_start sub_0801456C
sub_0801456C: @ 0x0801456C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	mov r1, sp
	ldr r0, _080145BC @ =0x08048620
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	bl sub_08014780
	adds r5, r0, #0
	movs r1, #0xa
	bl sub_0804449C
	adds r5, r0, #0
	movs r4, #1
	add r6, sp, #4
_0801458E:
	adds r0, r4, #0
	bl sub_0801470C
	ldm r6!, {r1}
	muls r0, r1, r0
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #5
	ble _0801458E
	ldr r0, _080145C0 @ =0x00001388
	adds r5, r5, r0
	movs r4, #0x64
	adds r0, r5, #0
	movs r1, #0x64
	bl sub_0804449C
	adds r5, r0, #0
	muls r5, r4, r5
	adds r0, r5, #0
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080145BC: .4byte 0x08048620
_080145C0: .4byte 0x00001388
	thumb_func_end sub_0801456C

	thumb_func_start sub_080145C4
sub_080145C4: @ 0x080145C4
	push {lr}
	ldr r1, _080145D8 @ =0x02034600
	ldrb r1, [r1, #0x16]
	cmp r1, #1
	beq _080145EA
	cmp r1, #1
	bgt _080145DC
	cmp r1, #0
	beq _080145E6
	b _080145F4
	.align 2, 0
_080145D8: .4byte 0x02034600
_080145DC:
	cmp r1, #2
	beq _080145EE
	cmp r1, #3
	beq _080145F2
	b _080145F4
_080145E6:
	movs r0, #0xa
	b _080145F4
_080145EA:
	movs r0, #5
	b _080145F4
_080145EE:
	movs r0, #1
	b _080145F4
_080145F2:
	movs r0, #0
_080145F4:
	pop {r1}
	bx r1
	thumb_func_end sub_080145C4

	thumb_func_start sub_080145F8
sub_080145F8: @ 0x080145F8
	push {lr}
	cmp r0, #1
	beq _0801460E
	cmp r0, #1
	bgt _08014616
	cmp r0, #0
	bne _08014616
	movs r0, #0x32
	bl sub_0801478C
	b _0801461C
_0801460E:
	movs r0, #0x28
	bl sub_0801478C
	b _0801461C
_08014616:
	movs r0, #0x1e
	bl sub_0801478C
_0801461C:
	pop {r0}
	bx r0
	thumb_func_end sub_080145F8

	thumb_func_start sub_08014620
sub_08014620: @ 0x08014620
	ldr r1, _08014628 @ =0x02034600
	str r0, [r1]
	bx lr
	.align 2, 0
_08014628: .4byte 0x02034600
	thumb_func_end sub_08014620

	thumb_func_start sub_0801462C
sub_0801462C: @ 0x0801462C
	ldr r0, _08014634 @ =0x02034600
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08014634: .4byte 0x02034600
	thumb_func_end sub_0801462C

	thumb_func_start sub_08014638
sub_08014638: @ 0x08014638
	ldr r2, _08014644 @ =0x02034600
	adds r2, #0x1b
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014644: .4byte 0x02034600
	thumb_func_end sub_08014638

	thumb_func_start sub_08014648
sub_08014648: @ 0x08014648
	ldr r1, _08014654 @ =0x02034600
	adds r1, #0x1b
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08014654: .4byte 0x02034600
	thumb_func_end sub_08014648

	thumb_func_start sub_08014658
sub_08014658: @ 0x08014658
	ldr r2, _08014664 @ =0x02034600
	adds r2, #0x21
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014664: .4byte 0x02034600
	thumb_func_end sub_08014658

	thumb_func_start sub_08014668
sub_08014668: @ 0x08014668
	ldr r1, _08014674 @ =0x02034600
	adds r1, #0x21
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08014674: .4byte 0x02034600
	thumb_func_end sub_08014668

	thumb_func_start sub_08014678
sub_08014678: @ 0x08014678
	push {r4, lr}
	adds r4, r2, #0
	ldr r2, _0801468C @ =0x02034600
	cmp r0, #1
	beq _080146A4
	cmp r0, #1
	bgt _08014690
	cmp r0, #0
	beq _08014696
	b _080146B0
	.align 2, 0
_0801468C: .4byte 0x02034600
_08014690:
	cmp r0, #2
	beq _080146AA
	b _080146B0
_08014696:
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	adds r1, r2, #0
	adds r1, #0x27
	adds r0, r0, r1
	b _080146AE
_080146A4:
	adds r0, r2, r1
	adds r0, #0x81
	b _080146AE
_080146AA:
	adds r0, r2, r4
	adds r0, #0x87
_080146AE:
	strb r3, [r0]
_080146B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08014678

	thumb_func_start sub_080146B8
sub_080146B8: @ 0x080146B8
	push {r4, lr}
	adds r4, r2, #0
	ldr r3, _080146D0 @ =0x02034600
	movs r2, #0
	cmp r0, #1
	beq _080146E8
	cmp r0, #1
	bgt _080146D4
	cmp r0, #0
	beq _080146DA
	b _080146F4
	.align 2, 0
_080146D0: .4byte 0x02034600
_080146D4:
	cmp r0, #2
	beq _080146EE
	b _080146F4
_080146DA:
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, r0, r4
	adds r1, r3, #0
	adds r1, #0x27
	adds r0, r0, r1
	b _080146F2
_080146E8:
	adds r0, r3, r1
	adds r0, #0x81
	b _080146F2
_080146EE:
	adds r0, r3, r4
	adds r0, #0x87
_080146F2:
	ldrb r2, [r0]
_080146F4:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080146B8

	thumb_func_start sub_080146FC
sub_080146FC: @ 0x080146FC
	ldr r2, _08014708 @ =0x02034600
	adds r2, #0x8d
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014708: .4byte 0x02034600
	thumb_func_end sub_080146FC

	thumb_func_start sub_0801470C
sub_0801470C: @ 0x0801470C
	ldr r1, _0801471C @ =0x02034600
	adds r1, #0x8d
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0801471C: .4byte 0x02034600
	thumb_func_end sub_0801470C

	thumb_func_start sub_08014720
sub_08014720: @ 0x08014720
	ldr r2, _0801472C @ =0x02034600
	adds r2, #0x93
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801472C: .4byte 0x02034600
	thumb_func_end sub_08014720

	thumb_func_start sub_08014730
sub_08014730: @ 0x08014730
	ldr r1, _08014740 @ =0x02034600
	adds r1, #0x93
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08014740: .4byte 0x02034600
	thumb_func_end sub_08014730

	thumb_func_start sub_08014744
sub_08014744: @ 0x08014744
	ldr r1, _0801474C @ =0x02034600
	strb r0, [r1, #5]
	bx lr
	.align 2, 0
_0801474C: .4byte 0x02034600
	thumb_func_end sub_08014744

	thumb_func_start sub_08014750
sub_08014750: @ 0x08014750
	ldr r0, _08014758 @ =0x02034600
	ldrb r0, [r0, #5]
	bx lr
	.align 2, 0
_08014758: .4byte 0x02034600
	thumb_func_end sub_08014750

	thumb_func_start sub_0801475C
sub_0801475C: @ 0x0801475C
	ldr r1, _08014764 @ =0x02034600
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08014764: .4byte 0x02034600
	thumb_func_end sub_0801475C

	thumb_func_start sub_08014768
sub_08014768: @ 0x08014768
	ldr r0, _08014770 @ =0x02034600
	ldrb r0, [r0, #4]
	bx lr
	.align 2, 0
_08014770: .4byte 0x02034600
	thumb_func_end sub_08014768

	thumb_func_start sub_08014774
sub_08014774: @ 0x08014774
	ldr r1, _0801477C @ =0x02034600
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_0801477C: .4byte 0x02034600
	thumb_func_end sub_08014774

	thumb_func_start sub_08014780
sub_08014780: @ 0x08014780
	ldr r0, _08014788 @ =0x02034600
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_08014788: .4byte 0x02034600
	thumb_func_end sub_08014780

	thumb_func_start sub_0801478C
sub_0801478C: @ 0x0801478C
	ldr r1, _08014794 @ =0x02034600
	strb r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08014794: .4byte 0x02034600
	thumb_func_end sub_0801478C

	thumb_func_start sub_08014798
sub_08014798: @ 0x08014798
	ldr r0, _080147A4 @ =0x02034600
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080147A4: .4byte 0x02034600
	thumb_func_end sub_08014798

	thumb_func_start sub_080147A8
sub_080147A8: @ 0x080147A8
	ldr r1, _080147B0 @ =0x02034600
	strb r0, [r1, #0xd]
	bx lr
	.align 2, 0
_080147B0: .4byte 0x02034600
	thumb_func_end sub_080147A8

	thumb_func_start sub_080147B4
sub_080147B4: @ 0x080147B4
	ldr r0, _080147BC @ =0x02034600
	ldrb r0, [r0, #0xd]
	bx lr
	.align 2, 0
_080147BC: .4byte 0x02034600
	thumb_func_end sub_080147B4

	thumb_func_start sub_080147C0
sub_080147C0: @ 0x080147C0
	ldr r1, _080147C8 @ =0x02034600
	strb r0, [r1, #0xe]
	bx lr
	.align 2, 0
_080147C8: .4byte 0x02034600
	thumb_func_end sub_080147C0

	thumb_func_start sub_080147CC
sub_080147CC: @ 0x080147CC
	ldr r0, _080147D4 @ =0x02034600
	ldrb r0, [r0, #0xe]
	bx lr
	.align 2, 0
_080147D4: .4byte 0x02034600
	thumb_func_end sub_080147CC

	thumb_func_start sub_080147D8
sub_080147D8: @ 0x080147D8
	ldr r1, _080147E0 @ =0x02034600
	strb r0, [r1, #0xf]
	bx lr
	.align 2, 0
_080147E0: .4byte 0x02034600
	thumb_func_end sub_080147D8

	thumb_func_start sub_080147E4
sub_080147E4: @ 0x080147E4
	ldr r0, _080147F0 @ =0x02034600
	ldrb r0, [r0, #0xf]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080147F0: .4byte 0x02034600
	thumb_func_end sub_080147E4

	thumb_func_start sub_080147F4
sub_080147F4: @ 0x080147F4
	ldr r2, _08014800 @ =0x02034600
	adds r2, #0x10
	adds r0, r0, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08014800: .4byte 0x02034600
	thumb_func_end sub_080147F4

	thumb_func_start sub_08014804
sub_08014804: @ 0x08014804
	ldr r1, _08014810 @ =0x02034600
	adds r1, #0x10
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08014810: .4byte 0x02034600
	thumb_func_end sub_08014804

	thumb_func_start sub_08014814
sub_08014814: @ 0x08014814
	ldr r1, _0801481C @ =0x02034600
	strb r0, [r1, #0x13]
	bx lr
	.align 2, 0
_0801481C: .4byte 0x02034600
	thumb_func_end sub_08014814

	thumb_func_start sub_08014820
sub_08014820: @ 0x08014820
	ldr r0, _08014828 @ =0x02034600
	ldrb r0, [r0, #0x13]
	bx lr
	.align 2, 0
_08014828: .4byte 0x02034600
	thumb_func_end sub_08014820

	thumb_func_start sub_0801482C
sub_0801482C: @ 0x0801482C
	ldr r1, _08014834 @ =0x02034600
	strb r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08014834: .4byte 0x02034600
	thumb_func_end sub_0801482C

	thumb_func_start sub_08014838
sub_08014838: @ 0x08014838
	ldr r0, _08014840 @ =0x02034600
	ldrb r0, [r0, #0x14]
	bx lr
	.align 2, 0
_08014840: .4byte 0x02034600
	thumb_func_end sub_08014838

	thumb_func_start sub_08014844
sub_08014844: @ 0x08014844
	ldr r1, _0801484C @ =0x02034600
	strb r0, [r1, #0x15]
	bx lr
	.align 2, 0
_0801484C: .4byte 0x02034600
	thumb_func_end sub_08014844

	thumb_func_start sub_08014850
sub_08014850: @ 0x08014850
	ldr r0, _08014858 @ =0x02034600
	ldrb r0, [r0, #0x15]
	bx lr
	.align 2, 0
_08014858: .4byte 0x02034600
	thumb_func_end sub_08014850

	thumb_func_start sub_0801485C
sub_0801485C: @ 0x0801485C
	ldr r1, _08014864 @ =0x02034600
	strb r0, [r1, #0x16]
	bx lr
	.align 2, 0
_08014864: .4byte 0x02034600
	thumb_func_end sub_0801485C

	thumb_func_start sub_08014868
sub_08014868: @ 0x08014868
	ldr r0, _08014870 @ =0x02034600
	ldrb r0, [r0, #0x16]
	bx lr
	.align 2, 0
_08014870: .4byte 0x02034600
	thumb_func_end sub_08014868

	thumb_func_start sub_08014874
sub_08014874: @ 0x08014874
	ldr r1, _0801487C @ =0x02034600
	strb r0, [r1, #0x17]
	bx lr
	.align 2, 0
_0801487C: .4byte 0x02034600
	thumb_func_end sub_08014874

	thumb_func_start sub_08014880
sub_08014880: @ 0x08014880
	ldr r0, _08014888 @ =0x02034600
	ldrb r0, [r0, #0x17]
	bx lr
	.align 2, 0
_08014888: .4byte 0x02034600
	thumb_func_end sub_08014880

	thumb_func_start sub_0801488C
sub_0801488C: @ 0x0801488C
	ldr r1, _08014894 @ =0x02034600
	strb r0, [r1, #0x18]
	bx lr
	.align 2, 0
_08014894: .4byte 0x02034600
	thumb_func_end sub_0801488C

	thumb_func_start sub_08014898
sub_08014898: @ 0x08014898
	ldr r0, _080148A0 @ =0x02034600
	ldrb r0, [r0, #0x18]
	bx lr
	.align 2, 0
_080148A0: .4byte 0x02034600
	thumb_func_end sub_08014898

	thumb_func_start sub_080148A4
sub_080148A4: @ 0x080148A4
	ldr r1, _080148AC @ =0x02034600
	strb r0, [r1, #0x19]
	bx lr
	.align 2, 0
_080148AC: .4byte 0x02034600
	thumb_func_end sub_080148A4

	thumb_func_start sub_080148B0
sub_080148B0: @ 0x080148B0
	ldr r0, _080148B8 @ =0x02034600
	ldrb r0, [r0, #0x19]
	bx lr
	.align 2, 0
_080148B8: .4byte 0x02034600
	thumb_func_end sub_080148B0

	thumb_func_start sub_080148BC
sub_080148BC: @ 0x080148BC
	ldr r1, _080148C4 @ =0x02034600
	strb r0, [r1, #0x1a]
	bx lr
	.align 2, 0
_080148C4: .4byte 0x02034600
	thumb_func_end sub_080148BC

	thumb_func_start sub_080148C8
sub_080148C8: @ 0x080148C8
	ldr r0, _080148D4 @ =0x02034600
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080148D4: .4byte 0x02034600
	thumb_func_end sub_080148C8

	thumb_func_start sub_080148D8
sub_080148D8: @ 0x080148D8
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _080148F4
	cmp r3, r2
	bne _080148F4
	ldr r0, _080148F0 @ =0x0821AF98
	ldr r0, [r0]
	b _08014902
	.align 2, 0
_080148F0: .4byte 0x0821AF98
_080148F4:
	ldr r0, _08014908 @ =0x0821AF50
	lsls r1, r2, #1
	adds r1, r1, r2
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
_08014902:
	pop {r1}
	bx r1
	.align 2, 0
_08014908: .4byte 0x0821AF50
	thumb_func_end sub_080148D8

	thumb_func_start sub_0801490C
sub_0801490C: @ 0x0801490C
	ldr r1, _08014918 @ =0x0821AF9C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08014918: .4byte 0x0821AF9C
	thumb_func_end sub_0801490C

	thumb_func_start sub_0801491C
sub_0801491C: @ 0x0801491C
	push {lr}
	cmp r2, #0
	bne _08014926
	bl sub_08014294
_08014926:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801491C

	thumb_func_start sub_0801492C
sub_0801492C: @ 0x0801492C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801493E
	bl sub_08014158
_0801493E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08014174
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0801492C

	thumb_func_start sub_0801494C
sub_0801494C: @ 0x0801494C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl sub_08042948
	bl sub_08042DEC
	movs r5, #0
	cmp r4, #7
	bls _08014962
	b _08014A96
_08014962:
	lsls r0, r4, #2
	ldr r1, _0801496C @ =_08014970
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801496C: .4byte _08014970
_08014970: @ jump table
	.4byte _08014990 @ case 0
	.4byte _080149B0 @ case 1
	.4byte _080149D0 @ case 2
	.4byte _080149F0 @ case 3
	.4byte _08014A1C @ case 4
	.4byte _08014A3C @ case 5
	.4byte _08014A5C @ case 6
	.4byte _08014A80 @ case 7
_08014990:
	ldr r0, _080149A4 @ =0x0821B014
	str r0, [sp]
	ldr r0, _080149A8 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _080149AC @ =sub_0801491C
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #0
	b _08014A00
	.align 2, 0
_080149A4: .4byte 0x0821B014
_080149A8: .4byte 0x0821B008
_080149AC: .4byte sub_0801491C
_080149B0:
	ldr r0, _080149C4 @ =0x0821B014
	str r0, [sp]
	ldr r0, _080149C8 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _080149CC @ =sub_0801491C
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #1
	b _08014A00
	.align 2, 0
_080149C4: .4byte 0x0821B014
_080149C8: .4byte 0x0821B008
_080149CC: .4byte sub_0801491C
_080149D0:
	ldr r0, _080149E4 @ =0x0821B014
	str r0, [sp]
	ldr r0, _080149E8 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _080149EC @ =sub_0801491C
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #2
	b _08014A00
	.align 2, 0
_080149E4: .4byte 0x0821B014
_080149E8: .4byte 0x0821B008
_080149EC: .4byte sub_0801491C
_080149F0:
	ldr r0, _08014A10 @ =0x0821B014
	str r0, [sp]
	ldr r0, _08014A14 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _08014A18 @ =sub_0801491C
	str r0, [sp, #8]
	movs r0, #2
	movs r1, #3
_08014A00:
	mov r2, sp
	bl sub_080082C8
	cmp r0, #0
	beq _08014A96
	movs r5, #1
	b _08014A96
	.align 2, 0
_08014A10: .4byte 0x0821B014
_08014A14: .4byte 0x0821B008
_08014A18: .4byte sub_0801491C
_08014A1C:
	ldr r0, _08014A30 @ =0x0821B014
	str r0, [sp]
	ldr r0, _08014A34 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _08014A38 @ =sub_0801492C
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #0
	b _08014A6C
	.align 2, 0
_08014A30: .4byte 0x0821B014
_08014A34: .4byte 0x0821B008
_08014A38: .4byte sub_0801492C
_08014A3C:
	ldr r0, _08014A50 @ =0x0821B014
	str r0, [sp]
	ldr r0, _08014A54 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _08014A58 @ =sub_0801492C
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #1
	b _08014A6C
	.align 2, 0
_08014A50: .4byte 0x0821B014
_08014A54: .4byte 0x0821B008
_08014A58: .4byte sub_0801492C
_08014A5C:
	ldr r0, _08014A74 @ =0x0821B014
	str r0, [sp]
	ldr r0, _08014A78 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _08014A7C @ =sub_0801492C
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #2
_08014A6C:
	mov r2, sp
	bl sub_080082C8
	b _08014A96
	.align 2, 0
_08014A74: .4byte 0x0821B014
_08014A78: .4byte 0x0821B008
_08014A7C: .4byte sub_0801492C
_08014A80:
	ldr r0, _08014AA4 @ =0x0821B014
	str r0, [sp]
	ldr r0, _08014AA8 @ =0x0821B008
	str r0, [sp, #4]
	ldr r0, _08014AAC @ =sub_0801492C
	str r0, [sp, #8]
	movs r0, #1
	movs r1, #3
	mov r2, sp
	bl sub_080082C8
_08014A96:
	bl sub_08042E50
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08014AA4: .4byte 0x0821B014
_08014AA8: .4byte 0x0821B008
_08014AAC: .4byte sub_0801492C
	thumb_func_end sub_0801494C

	thumb_func_start sub_08014AB0
sub_08014AB0: @ 0x08014AB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08003928
	adds r1, r0, #0
	cmp r1, #1
	bne _08014AF0
	cmp r4, #2
	beq _08014ADE
	cmp r4, #2
	bgt _08014ACE
	cmp r4, #0
	bge _08014ACC
	b _08014C5A
_08014ACC:
	b _08014AD4
_08014ACE:
	cmp r4, #3
	beq _08014AD4
	b _08014C5A
_08014AD4:
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	b _08014C5A
_08014ADE:
	ldr r0, _08014AEC @ =0x020345B0
	str r1, [r0]
	movs r0, #1
	movs r1, #1
	bl sub_08003908
	b _08014C5A
	.align 2, 0
_08014AEC: .4byte 0x020345B0
_08014AF0:
	cmp r4, #1
	beq _08014B0C
	cmp r4, #1
	bgt _08014AFE
	cmp r4, #0
	beq _08014B08
	b _08014C54
_08014AFE:
	cmp r4, #2
	beq _08014B2E
	cmp r4, #3
	beq _08014BB8
	b _08014C54
_08014B08:
	movs r0, #0x31
	b _08014C40
_08014B0C:
	movs r4, #0
_08014B0E:
	adds r0, r4, #0
	bl sub_08014730
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080146FC
	adds r4, #1
	cmp r4, #5
	ble _08014B0E
	bl sub_080165E4
	bl sub_0801478C
	movs r0, #0x12
	b _08014C40
_08014B2E:
	ldr r1, _08014B4C @ =0x020345B0
	movs r0, #0
	str r0, [r1, #0x3c]
	bl sub_080336D0
	adds r4, r0, #0
	cmp r4, #5
	ble _08014B50
	movs r5, #3
	cmp r4, #6
	bne _08014B46
	movs r5, #2
_08014B46:
	movs r4, #5
	b _08014B52
	.align 2, 0
_08014B4C: .4byte 0x020345B0
_08014B50:
	movs r5, #1
_08014B52:
	ldr r0, _08014BB0 @ =0x020345B0
	str r4, [r0, #0x40]
	bl sub_0801462C
	cmp r0, #0
	bne _08014BB4
	adds r0, r4, #0
	bl sub_0801470C
	adds r1, r0, #0
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080146FC
	bl sub_080165E4
	bl sub_0801478C
	bl sub_08014880
	cmp r0, #1
	bne _08014BB4
	bl sub_08014768
	bl sub_08014804
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
_08014B8C:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080146B8
	cmp r0, #0
	beq _08014B9C
	adds r5, #1
_08014B9C:
	adds r4, #1
	cmp r4, #4
	ble _08014B8C
	cmp r5, #4
	ble _08014BB4
	ldr r1, _08014BB0 @ =0x020345B0
	movs r0, #1
	str r0, [r1]
	b _08014C40
	.align 2, 0
_08014BB0: .4byte 0x020345B0
_08014BB4:
	movs r0, #0x14
	b _08014C40
_08014BB8:
	ldr r1, _08014BD4 @ =0x020345B0
	movs r0, #1
	str r0, [r1, #0x3c]
	bl sub_080336D0
	adds r4, r0, #0
	cmp r4, #5
	ble _08014BD8
	movs r5, #3
	cmp r4, #6
	bne _08014BD0
	movs r5, #2
_08014BD0:
	movs r4, #5
	b _08014BDA
	.align 2, 0
_08014BD4: .4byte 0x020345B0
_08014BD8:
	movs r5, #1
_08014BDA:
	ldr r0, _08014C48 @ =0x020345B0
	str r4, [r0, #0x40]
	bl sub_0801462C
	cmp r0, #0
	bne _08014C4C
	adds r0, r4, #0
	bl sub_0801470C
	adds r1, r0, #0
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080146FC
	movs r0, #0
	bl sub_08033744
	bl sub_08014774
	bl sub_080165E4
	bl sub_0801478C
	bl sub_08014880
	cmp r0, #1
	bne _08014C4C
	bl sub_08014768
	bl sub_08014804
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
_08014C1E:
	movs r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_080146B8
	cmp r0, #0
	beq _08014C2E
	adds r5, #1
_08014C2E:
	adds r4, #1
	cmp r4, #4
	ble _08014C1E
	cmp r5, #4
	ble _08014C4C
	ldr r1, _08014C48 @ =0x020345B0
	movs r0, #3
	str r0, [r1, #0x10]
	movs r0, #0x10
_08014C40:
	movs r1, #0
	bl sub_08003908
	b _08014C54
	.align 2, 0
_08014C48: .4byte 0x020345B0
_08014C4C:
	movs r0, #0x14
	movs r1, #0
	bl sub_08003908
_08014C54:
	movs r0, #0
	bl sub_080147D8
_08014C5A:
	movs r0, #1
	bl sub_080104AC
	ldr r1, _08014C6C @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08014C6C: .4byte 0x0300149C
	thumb_func_end sub_08014AB0

	thumb_func_start sub_08014C70
sub_08014C70: @ 0x08014C70
	push {lr}
	movs r0, #1
	bl sub_08014AB0
	pop {r0}
	bx r0
	thumb_func_end sub_08014C70

	thumb_func_start sub_08014C7C
sub_08014C7C: @ 0x08014C7C
	push {lr}
	movs r0, #2
	bl sub_08014AB0
	pop {r0}
	bx r0
	thumb_func_end sub_08014C7C

	thumb_func_start sub_08014C88
sub_08014C88: @ 0x08014C88
	push {lr}
	movs r0, #3
	bl sub_08014AB0
	pop {r0}
	bx r0
	thumb_func_end sub_08014C88

	thumb_func_start sub_08014C94
sub_08014C94: @ 0x08014C94
	push {lr}
	bl sub_08015C70
	bl sub_08015C08
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08014C94

	thumb_func_start sub_08014CA4
sub_08014CA4: @ 0x08014CA4
	push {lr}
	ldr r1, _08014CC0 @ =0x02039560
	ldr r0, [r1]
	cmp r0, #0
	ble _08014CC4
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bgt _08014CC8
	movs r0, #0
	bl sub_080104AC
	b _08014CC8
	.align 2, 0
_08014CC0: .4byte 0x02039560
_08014CC4:
	bl sub_080337FC
_08014CC8:
	pop {r0}
	bx r0
	thumb_func_end sub_08014CA4

	thumb_func_start sub_08014CCC
sub_08014CCC: @ 0x08014CCC
	push {lr}
	bl sub_0801623C
	movs r1, #0x89
	lsls r1, r1, #5
	movs r0, #9
	bl sub_08013DF8
	movs r0, #1
	bl sub_08013728
	movs r0, #1
	bl sub_08013734
	movs r0, #8
	movs r1, #9
	movs r2, #0x14
	movs r3, #9
	bl sub_08013740
	movs r0, #0
	movs r1, #9
	bl sub_08013758
	movs r0, #4
	bl sub_08013774
	ldr r1, _08014D70 @ =0x00001130
	movs r0, #0xa
	bl sub_08017388
	movs r1, #0x8a
	lsls r1, r1, #5
	movs r0, #0xb
	bl sub_080176FC
	ldr r1, _08014D74 @ =0x00001150
	movs r0, #0xc
	bl sub_08017998
	movs r1, #0x8b
	lsls r1, r1, #5
	movs r0, #0xd
	bl sub_08018558
	ldr r1, _08014D78 @ =0x00001170
	movs r0, #0xe
	bl sub_080189F0
	movs r1, #0x8c
	lsls r1, r1, #5
	movs r0, #0xf
	bl sub_08018CFC
	ldr r1, _08014D7C @ =0x00001190
	movs r0, #0x10
	bl sub_08018F50
	movs r1, #0x8d
	lsls r1, r1, #5
	movs r0, #0x11
	bl sub_080192C0
	ldr r1, _08014D80 @ =0x000011B0
	movs r0, #0x12
	bl sub_08019634
	movs r1, #0x8e
	lsls r1, r1, #5
	movs r0, #0x13
	bl sub_080199B8
	ldr r1, _08014D84 @ =0x02039560
	movs r0, #2
	str r0, [r1]
	bl sub_080035FC
	ldr r1, _08014D88 @ =sub_08014CA4
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08014D70: .4byte 0x00001130
_08014D74: .4byte 0x00001150
_08014D78: .4byte 0x00001170
_08014D7C: .4byte 0x00001190
_08014D80: .4byte 0x000011B0
_08014D84: .4byte 0x02039560
_08014D88: .4byte sub_08014CA4
	thumb_func_end sub_08014CCC

	thumb_func_start sub_08014D8C
sub_08014D8C: @ 0x08014D8C
	push {lr}
	movs r0, #7
	bl sub_080034D4
	cmp r0, #0
	beq _08014DE0
	movs r0, #0x12
	bl sub_08019618
	movs r0, #0x11
	bl sub_080192A4
	movs r0, #0x10
	bl sub_08018F34
	movs r0, #0xf
	bl sub_08018CE0
	movs r0, #0xe
	bl sub_080189D4
	movs r0, #0xd
	bl sub_08018534
	movs r0, #0xc
	bl sub_0801797C
	movs r0, #0xb
	bl sub_080176E0
	movs r0, #0xa
	bl sub_0801736C
	movs r0, #9
	bl sub_08013DD4
	movs r0, #0x13
	bl sub_0801999C
	movs r0, #7
	bl sub_08003450
_08014DE0:
	pop {r0}
	bx r0
	thumb_func_end sub_08014D8C

	thumb_func_start sub_08014DE4
sub_08014DE4: @ 0x08014DE4
	push {lr}
	ldr r1, _08014DF8 @ =sub_08014CCC
	movs r2, #0x88
	lsls r2, r2, #5
	movs r0, #7
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08014DF8: .4byte sub_08014CCC
	thumb_func_end sub_08014DE4

	thumb_func_start sub_08014DFC
sub_08014DFC: @ 0x08014DFC
	push {r2, r3}
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x124
	mov r8, r0
	adds r7, r1, #0
	ldr r1, [sp, #0x13c]
	add r2, sp, #0x140
	ldr r3, _08014E40 @ =0x020346A0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3]
	ldr r3, _08014E44 @ =0x020346A4
	ldr r0, _08014E48 @ =0x020347B0
	add r4, sp, #0xac
	str r4, [r0]
	str r4, [r3]
	adds r0, r4, #0
	bl sub_08007A44
	adds r0, r4, r0
	movs r1, #0
	strb r1, [r0]
	movs r3, #0
	movs r5, #0
	ldrb r0, [r4]
	adds r6, r4, #0
	add r4, sp, #0xe8
	cmp r0, #0
	bne _08014E4C
	strb r3, [r4]
	b _08014E94
	.align 2, 0
_08014E40: .4byte 0x020346A0
_08014E44: .4byte 0x020346A4
_08014E48: .4byte 0x020347B0
_08014E4C:
	adds r2, r6, r5
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _08014E68
	adds r0, r4, r3
	strb r1, [r0]
	adds r5, #1
	adds r3, #1
	adds r1, r4, r3
	adds r0, r6, r5
	ldrb r0, [r0]
	b _08014E82
_08014E68:
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _08014E88
	adds r1, r4, r3
	movs r0, #0x82
	strb r0, [r1]
	adds r3, #1
	adds r1, r4, r3
	ldrb r0, [r2]
	adds r0, #0x1f
_08014E82:
	strb r0, [r1]
	adds r5, #1
	adds r3, #1
_08014E88:
	adds r0, r6, r5
	ldrb r1, [r0]
	cmp r1, #0
	bne _08014E4C
	adds r0, r4, r3
	strb r1, [r0]
_08014E94:
	mov r0, sp
	bl sub_08005588
	mov r0, sp
	movs r1, #1
	bl sub_080055F0
	adds r2, r7, #0
	cmp r7, #0
	bge _08014EAA
	adds r2, r7, #7
_08014EAA:
	asrs r2, r2, #3
	mov r0, sp
	movs r1, #0
	bl sub_08005600
	mov r0, sp
	movs r1, #0
	adds r2, r7, #0
	bl sub_0800561C
	mov r0, sp
	movs r1, #0xf0
	bl sub_08005658
	mov r0, sp
	mov r1, r8
	bl sub_0800565C
	mov r0, sp
	adds r1, r4, #0
	bl sub_080055D0
	mov r0, sp
	bl sub_080067D0
	mov r0, sp
	bl sub_08005EDC
	mov r0, sp
	bl sub_08006684
	mov r0, sp
	bl sub_080067A0
	add sp, #0x124
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #8
	bx r3
	thumb_func_end sub_08014DFC

	thumb_func_start sub_08014EFC
sub_08014EFC: @ 0x08014EFC
	push {r4, r5, lr}
	ldr r4, _08014F88 @ =0x020395DC
	movs r1, #0xe0
	lsls r1, r1, #7
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	movs r2, #0
	ldr r5, _08014F8C @ =0x000037FF
	ldr r3, _08014F90 @ =0x06008000
_08014F12:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r2, #1
	cmp r2, r5
	ble _08014F12
	ldr r4, _08014F94 @ =0x02039150
	movs r1, #0x80
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	movs r2, #0
	ldr r5, _08014F98 @ =0x000003FF
	movs r3, #0xc0
	lsls r3, r3, #0x13
_08014F3A:
	ldr r0, [r4]
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r3]
	strh r0, [r1]
	adds r3, #2
	adds r2, #1
	cmp r2, r5
	ble _08014F3A
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #0
	bl sub_08000F0C
	movs r0, #2
	movs r1, #0
	bl sub_08000F0C
	movs r0, #3
	movs r1, #0
	bl sub_08000F0C
	movs r0, #4
	movs r1, #0
	bl sub_08000F0C
	bl sub_08000ED4
	ldr r1, _08014F9C @ =0x0000F3FF
	movs r0, #0
	movs r2, #0
	bl sub_08000E44
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08014F88: .4byte 0x020395DC
_08014F8C: .4byte 0x000037FF
_08014F90: .4byte 0x06008000
_08014F94: .4byte 0x02039150
_08014F98: .4byte 0x000003FF
_08014F9C: .4byte 0x0000F3FF
	thumb_func_end sub_08014EFC

	thumb_func_start sub_08014FA0
sub_08014FA0: @ 0x08014FA0
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, _0801501C @ =0x000037FF
	ldr r6, _08015020 @ =0x020395DC
	adds r4, r6, #0
	ldr r3, _08015024 @ =0x06008000
_08014FAC:
	lsls r0, r2, #1
	ldr r1, [r4]
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	cmp r2, r5
	ble _08014FAC
	ldr r0, [r6]
	bl sub_080038C8
	movs r2, #0
	ldr r5, _08015028 @ =0x000003FF
	ldr r6, _0801502C @ =0x02039150
	adds r4, r6, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
_08014FD0:
	lsls r0, r2, #1
	ldr r1, [r4]
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	adds r3, #2
	adds r2, #1
	cmp r2, r5
	ble _08014FD0
	ldr r0, [r6]
	bl sub_080038C8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	bl sub_08000ED4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801501C: .4byte 0x000037FF
_08015020: .4byte 0x020395DC
_08015024: .4byte 0x06008000
_08015028: .4byte 0x000003FF
_0801502C: .4byte 0x02039150
	thumb_func_end sub_08014FA0

	thumb_func_start sub_08015030
sub_08015030: @ 0x08015030
	push {r4, lr}
	sub sp, #0xb4
	bl sub_080054A4
	movs r0, #2
	movs r1, #0
	movs r2, #0x2c
	bl sub_080054D8
	movs r0, #2
	bl sub_080054F8
	movs r0, #0xf
	bl sub_08005504
	movs r0, #1
	bl sub_0800551C
	movs r0, #0
	bl sub_08005528
	movs r0, #0
	bl sub_08005534
	movs r0, #1
	bl sub_08005540
	movs r0, #0
	bl sub_0800554C
	movs r0, #0x80
	lsls r0, r0, #8
	bl sub_08005558
	movs r0, #0
	bl sub_08005570
	ldr r2, _080150EC @ =0x080487B0
	movs r0, #0
	movs r1, #0
	bl sub_08014DFC
	ldr r2, _080150F0 @ =0x080487CC
	movs r0, #0x10
	movs r1, #0x10
	bl sub_08014DFC
	ldr r2, _080150F4 @ =0x080487DC
	movs r0, #0x10
	movs r1, #0x20
	bl sub_08014DFC
	ldr r2, _080150F8 @ =0x080487EC
	movs r0, #0x10
	movs r1, #0x30
	bl sub_08014DFC
	ldr r4, _080150FC @ =0x08048804
	bl sub_080165E4
	adds r3, r0, #0
	movs r0, #0x10
	movs r1, #0x40
	adds r2, r4, #0
	bl sub_08014DFC
	ldr r2, _08015100 @ =0x08048818
	ldr r4, _08015104 @ =0x02039E70
	ldr r3, [r4, #0x30]
	movs r0, #0x10
	movs r1, #0x50
	bl sub_08014DFC
	ldr r2, _08015108 @ =0x0804882C
	ldr r1, _0801510C @ =0x0821B02C
	ldr r0, [r4, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x10
	movs r1, #0x60
	bl sub_08014DFC
	ldr r2, _08015110 @ =0x08048840
	ldr r0, [r4, #0x2c]
	ldr r3, _08015114 @ =0x08048868
	cmp r0, #0
	beq _080150E2
	ldr r3, _08015118 @ =0x08048864
_080150E2:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0801511C
	ldr r0, _08015118 @ =0x08048864
	b _0801511E
	.align 2, 0
_080150EC: .4byte 0x080487B0
_080150F0: .4byte 0x080487CC
_080150F4: .4byte 0x080487DC
_080150F8: .4byte 0x080487EC
_080150FC: .4byte 0x08048804
_08015100: .4byte 0x08048818
_08015104: .4byte 0x02039E70
_08015108: .4byte 0x0804882C
_0801510C: .4byte 0x0821B02C
_08015110: .4byte 0x08048840
_08015114: .4byte 0x08048868
_08015118: .4byte 0x08048864
_0801511C:
	ldr r0, _0801512C @ =0x08048868
_0801511E:
	str r0, [sp]
	ldr r0, _08015130 @ =0x02039E70
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08015138
	ldr r0, _08015134 @ =0x08048864
	b _0801513A
	.align 2, 0
_0801512C: .4byte 0x08048868
_08015130: .4byte 0x02039E70
_08015134: .4byte 0x08048864
_08015138:
	ldr r0, _080151A4 @ =0x08048868
_0801513A:
	str r0, [sp, #4]
	movs r0, #0x10
	movs r1, #0x70
	bl sub_08014DFC
	add r0, sp, #8
	bl sub_08005588
	add r0, sp, #8
	movs r1, #1
	bl sub_080055F0
	ldr r4, _080151A8 @ =0x02039154
	ldr r2, [r4]
	lsls r2, r2, #1
	adds r2, #2
	add r0, sp, #8
	movs r1, #0
	bl sub_08005600
	ldr r2, [r4]
	lsls r2, r2, #4
	adds r2, #0x10
	add r0, sp, #8
	movs r1, #0
	bl sub_0800561C
	add r0, sp, #8
	movs r1, #0xf0
	bl sub_08005658
	add r0, sp, #8
	movs r1, #0
	bl sub_0800565C
	ldr r1, _080151AC @ =0x0804886C
	add r0, sp, #8
	bl sub_080055D0
	add r0, sp, #8
	bl sub_08005EDC
	add r0, sp, #8
	bl sub_08006684
	add r0, sp, #8
	bl sub_080067A0
	add sp, #0xb4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080151A4: .4byte 0x08048868
_080151A8: .4byte 0x02039154
_080151AC: .4byte 0x0804886C
	thumb_func_end sub_08015030

	thumb_func_start sub_080151B0
sub_080151B0: @ 0x080151B0
	push {r4, lr}
	sub sp, #0xac
	adds r4, r0, #0
	mov r0, sp
	bl sub_08005588
	mov r0, sp
	movs r1, #1
	bl sub_080055F0
	lsls r4, r4, #1
	adds r4, #2
	mov r0, sp
	movs r1, #0
	adds r2, r4, #0
	bl sub_08005600
	lsls r4, r4, #3
	mov r0, sp
	movs r1, #0
	adds r2, r4, #0
	bl sub_0800561C
	mov r0, sp
	movs r1, #0xf0
	bl sub_08005658
	mov r0, sp
	movs r1, #0
	bl sub_0800565C
	ldr r1, _08015268 @ =0x08048870
	mov r0, sp
	bl sub_080055D0
	mov r0, sp
	bl sub_08005EDC
	mov r0, sp
	bl sub_08006684
	mov r0, sp
	bl sub_080067A0
	mov r0, sp
	bl sub_08005588
	mov r0, sp
	movs r1, #1
	bl sub_080055F0
	ldr r4, _0801526C @ =0x02039154
	ldr r2, [r4]
	lsls r2, r2, #1
	adds r2, #2
	mov r0, sp
	movs r1, #0
	bl sub_08005600
	ldr r2, [r4]
	lsls r2, r2, #4
	adds r2, #0x10
	mov r0, sp
	movs r1, #0
	bl sub_0800561C
	mov r0, sp
	movs r1, #0xf0
	bl sub_08005658
	mov r0, sp
	movs r1, #0
	bl sub_0800565C
	ldr r1, _08015270 @ =0x0804886C
	mov r0, sp
	bl sub_080055D0
	mov r0, sp
	bl sub_08005EDC
	mov r0, sp
	bl sub_08006684
	mov r0, sp
	bl sub_080067A0
	add sp, #0xac
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015268: .4byte 0x08048870
_0801526C: .4byte 0x02039154
_08015270: .4byte 0x0804886C
	thumb_func_end sub_080151B0

	thumb_func_start sub_08015274
sub_08015274: @ 0x08015274
	push {lr}
	movs r0, #0
	bl sub_08003660
	bl sub_080035FC
	ldr r1, _0801528C @ =sub_080153D0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0801528C: .4byte sub_080153D0
	thumb_func_end sub_08015274

	thumb_func_start sub_08015290
sub_08015290: @ 0x08015290
	push {r4, lr}
	bl sub_080035FC
	bl sub_080035E8
	adds r4, r0, #0
	adds r4, #1
	bl sub_080035FC
	adds r1, r4, #0
	bl sub_080035D4
	cmp r4, #0xa
	bne _080152BA
	bl sub_08014FA0
	bl sub_080035FC
	ldr r1, _080152C0 @ =sub_08015274
	bl sub_0800356C
_080152BA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080152C0: .4byte sub_08015274
	thumb_func_end sub_08015290

	thumb_func_start sub_080152C4
sub_080152C4: @ 0x080152C4
	push {r4, r5, lr}
	ldr r0, _080152FC @ =0x0300149C
	ldr r0, [r0]
	cmp r0, #0
	bne _0801538A
	bl sub_08006AEC
	ldr r3, _08015300 @ =0x02039154
	ldr r4, [r3]
	movs r5, #0
	ldr r0, _08015304 @ =0x030014A4
	ldrh r2, [r0]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0801534E
	ldr r0, _08015308 @ =0x02031E90
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0801530C
	cmp r4, #0
	ble _08015376
	subs r0, r4, #1
	str r0, [r3]
	b _08015376
	.align 2, 0
_080152FC: .4byte 0x0300149C
_08015300: .4byte 0x02039154
_08015304: .4byte 0x030014A4
_08015308: .4byte 0x02031E90
_0801530C:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801531E
	cmp r4, #1
	bgt _08015376
	adds r0, r4, #1
	str r0, [r3]
	b _08015376
_0801531E:
	cmp r4, #1
	beq _08015340
	cmp r4, #1
	bgt _0801532C
	cmp r4, #0
	beq _08015332
	b _08015376
_0801532C:
	cmp r4, #2
	beq _08015360
	b _08015376
_08015332:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08015376
	bl sub_08014C88
	b _0801534E
_08015340:
	adds r0, r4, #0
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08015376
	bl sub_08014C70
_0801534E:
	bl sub_080035FC
	ldr r1, _0801535C @ =sub_08015290
	bl sub_0800356C
	b _08015376
	.align 2, 0
_0801535C: .4byte sub_08015290
_08015360:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08015376
	bl sub_08014C7C
	bl sub_080035FC
	ldr r1, _08015390 @ =sub_08015290
	bl sub_0800356C
_08015376:
	ldr r0, _08015394 @ =0x02039154
	ldr r0, [r0]
	cmp r4, r0
	beq _08015380
	movs r5, #1
_08015380:
	cmp r5, #0
	beq _0801538A
	adds r0, r4, #0
	bl sub_080151B0
_0801538A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015390: .4byte sub_08015290
_08015394: .4byte 0x02039154
	thumb_func_end sub_080152C4

	thumb_func_start sub_08015398
sub_08015398: @ 0x08015398
	push {r4, lr}
	bl sub_080035FC
	bl sub_080035E8
	adds r4, r0, #0
	adds r4, #1
	bl sub_080035FC
	adds r1, r4, #0
	bl sub_080035D4
	cmp r4, #0xa
	bne _080153C6
	bl sub_08014EFC
	bl sub_08015030
	bl sub_080035FC
	ldr r1, _080153CC @ =sub_080152C4
	bl sub_0800356C
_080153C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080153CC: .4byte sub_080152C4
	thumb_func_end sub_08015398

	thumb_func_start sub_080153D0
sub_080153D0: @ 0x080153D0
	push {lr}
	ldr r0, _08015408 @ =0x0300149C
	ldr r0, [r0]
	cmp r0, #0
	bne _08015404
	ldr r0, _0801540C @ =0x03001038
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08015404
	ldr r0, _08015410 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015404
	movs r0, #1
	bl sub_08003660
	bl sub_080035FC
	ldr r1, _08015414 @ =sub_08015398
	bl sub_0800356C
_08015404:
	pop {r0}
	bx r0
	.align 2, 0
_08015408: .4byte 0x0300149C
_0801540C: .4byte 0x03001038
_08015410: .4byte 0x030014A4
_08015414: .4byte sub_08015398
	thumb_func_end sub_080153D0

	thumb_func_start sub_08015418
sub_08015418: @ 0x08015418
	push {lr}
	ldr r1, _08015430 @ =0x02039154
	movs r0, #0
	str r0, [r1]
	bl sub_080035FC
	ldr r1, _08015434 @ =sub_080153D0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08015430: .4byte 0x02039154
_08015434: .4byte sub_080153D0
	thumb_func_end sub_08015418

	thumb_func_start sub_08015438
sub_08015438: @ 0x08015438
	push {lr}
	movs r0, #6
	bl sub_080034D4
	cmp r0, #0
	beq _08015450
	movs r0, #0
	bl sub_08003660
	movs r0, #6
	bl sub_08003450
_08015450:
	pop {r0}
	bx r0
	thumb_func_end sub_08015438

	thumb_func_start sub_08015454
sub_08015454: @ 0x08015454
	push {lr}
	ldr r1, _0801546C @ =sub_08015418
	ldr r2, _08015470 @ =0x00001002
	movs r0, #6
	bl sub_08003344
	movs r0, #6
	movs r1, #0
	bl sub_08003584
	pop {r0}
	bx r0
	.align 2, 0
_0801546C: .4byte sub_08015418
_08015470: .4byte 0x00001002
	thumb_func_end sub_08015454

	thumb_func_start sub_08015474
sub_08015474: @ 0x08015474
	bx lr
	.align 2, 0
	thumb_func_end sub_08015474

	thumb_func_start sub_08015478
sub_08015478: @ 0x08015478
	bx lr
	.align 2, 0
	thumb_func_end sub_08015478

	thumb_func_start sub_0801547C
sub_0801547C: @ 0x0801547C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	bl sub_08003928
	cmp r0, #1
	bne _08015498
	bl sub_08014820
	adds r6, r0, #0
	b _0801549C
_08015498:
	ldr r0, _080154B0 @ =0x020345B0
	ldr r6, [r0, #4]
_0801549C:
	ldr r0, _080154B4 @ =0x02039198
	str r6, [r0]
	ldr r0, _080154B0 @ =0x020345B0
	ldr r0, [r0]
	cmp r0, #0
	beq _080154B8
	cmp r0, #1
	beq _0801555A
	b _0801558E
	.align 2, 0
_080154B0: .4byte 0x020345B0
_080154B4: .4byte 0x02039198
_080154B8:
	bl sub_0801462C
	mov sb, r0
	cmp r0, #0
	bne _08015508
	bl sub_080147CC
	mov sl, r0
	movs r5, #0
	movs r4, #0
_080154CC:
	adds r0, r4, #0
	bl sub_08014648
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #5
	ble _080154CC
	bl sub_08014780
	mov r8, r0
	bl sub_08014768
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_080148D8
	adds r7, r0, #0
	bl sub_080147B4
	adds r4, r0, #0
	bl sub_08014798
	bl sub_080165D8
	bl sub_08014768
	lsls r1, r5, #1
	adds r1, r1, r5
	adds r0, r1, r0
	b _08015544
_08015508:
	bl sub_08014850
	mov sl, r0
	ldr r0, _08015534 @ =0x000061A8
	mov r8, r0
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	bl sub_080148D8
	adds r7, r0, #0
	bl sub_08014838
	adds r4, r0, #0
	cmp r4, #1
	beq _08015538
	cmp r4, #1
	bgt _0801553C
	cmp r4, #0
	bne _0801553C
	movs r0, #0x32
	b _0801553E
	.align 2, 0
_08015534: .4byte 0x000061A8
_08015538:
	movs r0, #0x28
	b _0801553E
_0801553C:
	movs r0, #0x1e
_0801553E:
	bl sub_080165D8
	movs r0, #0
_08015544:
	mov r1, sb
	str r1, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, r8
	adds r1, r7, #0
	mov r2, sl
	adds r3, r6, #0
	bl sub_0803358C
	b _0801558E
_0801555A:
	bl sub_0801462C
	cmp r0, #0
	bne _0801556C
	bl sub_08014798
	bl sub_080165D8
	b _0801558A
_0801556C:
	bl sub_08014838
	cmp r0, #1
	beq _08015580
	cmp r0, #1
	bgt _08015584
	cmp r0, #0
	bne _08015584
	movs r0, #0x32
	b _08015586
_08015580:
	movs r0, #0x28
	b _08015586
_08015584:
	movs r0, #0x1e
_08015586:
	bl sub_080165D8
_0801558A:
	bl sub_080336A8
_0801558E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801547C

	thumb_func_start sub_080155A0
sub_080155A0: @ 0x080155A0
	push {lr}
	sub sp, #0xc
	add r1, sp, #8
	movs r0, #0
	strh r0, [r1]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08015660 @ =0x0100C000
	add r0, sp, #8
	bl sub_08043C44
	bl sub_08000EC4
	movs r0, #0
	bl sub_08000EF8
	movs r0, #0
	movs r1, #1
	bl sub_08000F0C
	movs r0, #1
	movs r1, #1
	bl sub_08000F0C
	movs r0, #2
	movs r1, #1
	bl sub_08000F0C
	movs r0, #3
	movs r1, #1
	bl sub_08000F0C
	movs r0, #4
	movs r1, #1
	bl sub_08000F0C
	ldr r0, _08015664 @ =0x0821B0C8
	bl sub_08000D40
	movs r0, #0
	bl sub_08001000
	movs r0, #0
	movs r1, #0
	bl sub_0800101C
	movs r0, #0
	bl sub_0800104C
	movs r0, #0
	movs r1, #0
	bl sub_0800105C
	movs r0, #1
	movs r1, #0
	bl sub_0800105C
	movs r0, #2
	movs r1, #0
	bl sub_0800105C
	movs r0, #3
	movs r1, #0
	bl sub_0800105C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001094
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_080010F8
	movs r1, #0xf0
	lsls r1, r1, #2
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #0xf0
	movs r3, #1
	bl sub_08006990
	ldr r0, _08015668 @ =0x0000F3FF
	movs r1, #0
	bl sub_08000EA4
	bl sub_08014C94
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_08015660: .4byte 0x0100C000
_08015664: .4byte 0x0821B0C8
_08015668: .4byte 0x0000F3FF
	thumb_func_end sub_080155A0

	thumb_func_start sub_0801566C
sub_0801566C: @ 0x0801566C
	push {lr}
	bl sub_0800FE0C
	movs r0, #0
	bl sub_080032CC
	movs r0, #4
	bl sub_08003450
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801566C

	thumb_func_start sub_08015684
sub_08015684: @ 0x08015684
	push {lr}
	bl sub_08019484
	bl sub_08018E88
	bl sub_080190DC
	bl sub_08019884
	bl sub_080178AC
	bl sub_0801819C
	bl sub_08018830
	bl sub_08018B70
	bl sub_0803A4F8
	bl sub_0803D424
	bl sub_0803D2CC
	bl sub_0803D5AC
	bl sub_0803D380
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08015684

	thumb_func_start sub_080156C0
sub_080156C0: @ 0x080156C0
	push {r4, lr}
	movs r0, #0
	bl sub_080032C0
	movs r0, #0
	bl sub_080032CC
	movs r0, #1
	bl sub_08006FCC
	movs r4, #0x80
	lsls r4, r4, #2
	movs r0, #1
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	movs r0, #0
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl sub_080010F8
	ldr r1, _08015700 @ =sub_08015684
	movs r0, #4
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015700: .4byte sub_08015684
	thumb_func_end sub_080156C0

	thumb_func_start sub_08015704
sub_08015704: @ 0x08015704
	push {lr}
	ldr r1, _08015714 @ =sub_080156C0
	ldr r2, _08015718 @ =0x0000EFFF
	movs r0, #4
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08015714: .4byte sub_080156C0
_08015718: .4byte 0x0000EFFF
	thumb_func_end sub_08015704

	thumb_func_start sub_0801571C
sub_0801571C: @ 0x0801571C
	push {lr}
	bl sub_08014D8C
	bl sub_08033570
	bl sub_0801602C
	bl sub_08015FBC
	movs r0, #1
	bl sub_08002B48
	movs r0, #1
	bl sub_08002ACC
	movs r0, #1
	bl sub_08000474
	bl sub_0801566C
	bl sub_080028E8
	bl sub_08002830
	movs r0, #0
	bl sub_08003980
	movs r0, #5
	bl sub_08003450
	pop {r0}
	bx r0
	thumb_func_end sub_0801571C

	thumb_func_start sub_0801575C
sub_0801575C: @ 0x0801575C
	push {lr}
	bl sub_08006AEC
	bl sub_08013E38
	ldr r1, _08015780 @ =0x0300149C
	ldr r0, [r1]
	cmp r0, #0
	beq _0801578C
	cmp r0, #1
	bne _08015788
	ldr r0, _08015784 @ =sub_08007154
	bl sub_08003640
	bl sub_0801571C
	b _0801578C
	.align 2, 0
_08015780: .4byte 0x0300149C
_08015784: .4byte sub_08007154
_08015788:
	subs r0, #1
	str r0, [r1]
_0801578C:
	pop {r0}
	bx r0
	thumb_func_end sub_0801575C

	thumb_func_start sub_08015790
sub_08015790: @ 0x08015790
	push {lr}
	ldr r1, _080157E0 @ =0x0300149C
	movs r0, #0
	str r0, [r1]
	bl sub_08006AB4
	movs r0, #1
	bl sub_08000474
	movs r0, #0
	bl sub_08002B48
	movs r0, #0
	bl sub_08002ACC
	bl sub_08013E2C
	bl sub_0801547C
	movs r0, #0x28
	bl sub_08015F98
	bl sub_08015FDC
	bl sub_080155A0
	bl sub_08014DE4
	bl sub_08015704
	ldr r0, _080157E4 @ =sub_0801571C
	bl sub_08003980
	ldr r1, _080157E8 @ =sub_0801575C
	movs r0, #5
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_080157E0: .4byte 0x0300149C
_080157E4: .4byte sub_0801571C
_080157E8: .4byte sub_0801575C
	thumb_func_end sub_08015790

	thumb_func_start sub_080157EC
sub_080157EC: @ 0x080157EC
	push {lr}
	bl sub_08006FA8
	bl sub_0800393C
	movs r0, #1
	movs r1, #0x80
	bl sub_08002810
	bl sub_08002880
	bl sub_08003650
	ldr r1, _08015814 @ =sub_08015790
	ldr r2, _08015818 @ =0x00001001
	movs r0, #5
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08015814: .4byte sub_08015790
_08015818: .4byte 0x00001001
	thumb_func_end sub_080157EC

	thumb_func_start sub_0801581C
sub_0801581C: @ 0x0801581C
	push {r4, lr}
	sub sp, #4
	movs r0, #0xa8
	lsls r0, r0, #2
	ldr r2, _0801585C @ =0x00000199
	movs r4, #1
	str r4, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	movs r0, #0x90
	lsls r0, r0, #9
	ldr r2, _08015860 @ =0x0000016F
	str r4, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	ldr r0, _08015864 @ =0x00012040
	movs r2, #0xc2
	lsls r2, r2, #1
	str r4, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801585C: .4byte 0x00000199
_08015860: .4byte 0x0000016F
_08015864: .4byte 0x00012040
	thumb_func_end sub_0801581C

	thumb_func_start sub_08015868
sub_08015868: @ 0x08015868
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	movs r1, #0
	bl sub_08013454
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08013468
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801347C
	mov r8, r0
	movs r0, #0xd8
	lsls r0, r0, #8
	movs r4, #1
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_08003D38
	movs r5, #0xa0
	lsls r5, r5, #1
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08003E7C
	movs r3, #0xb0
	lsls r3, r3, #2
	movs r0, #0xa0
	str r0, [sp]
	subs r0, #0xa1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #0
	mov r2, r8
	bl sub_08003F8C
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08015868

	thumb_func_start sub_080158DC
sub_080158DC: @ 0x080158DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x14
	adds r4, r0, #0
	movs r1, #1
	bl sub_08013454
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08013468
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801347C
	mov r8, r0
	movs r0, #0xd8
	lsls r0, r0, #8
	movs r4, #1
	str r4, [sp]
	movs r1, #0
	adds r2, r5, #0
	movs r3, #1
	bl sub_08003D38
	movs r0, #0xa0
	lsls r0, r0, #1
	str r4, [sp]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08003E7C
	movs r0, #0x94
	lsls r0, r0, #4
	movs r3, #0xb0
	lsls r3, r3, #2
	movs r1, #0xa0
	str r1, [sp]
	subs r1, #0xa1
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #0
	mov r2, r8
	bl sub_08003F8C
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080158DC

	thumb_func_start sub_08015950
sub_08015950: @ 0x08015950
	push {lr}
	sub sp, #0x14
	movs r0, #1
	movs r1, #0x3c
	bl sub_080038A8
	adds r3, r0, #0
	ldr r0, _08015990 @ =0x0000F3FF
	adds r1, r0, #0
	adds r0, r3, #0
	adds r0, #0x3a
_08015966:
	strh r1, [r0]
	subs r0, #2
	cmp r0, r3
	bge _08015966
	movs r2, #0
	ldr r1, _08015994 @ =0x06000140
	str r2, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r0, r3, #0
	movs r2, #0x3c
	movs r3, #0xa
	bl sub_08002E7C
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_08015990: .4byte 0x0000F3FF
_08015994: .4byte 0x06000140
	thumb_func_end sub_08015950

	thumb_func_start sub_08015998
sub_08015998: @ 0x08015998
	push {lr}
	sub sp, #0x14
	movs r0, #1
	movs r1, #0x3c
	bl sub_080038A8
	adds r3, r0, #0
	ldr r0, _080159D8 @ =0x0000F3FF
	adds r1, r0, #0
	adds r0, r3, #0
	adds r0, #0x3a
_080159AE:
	strh r1, [r0]
	subs r0, #2
	cmp r0, r3
	bge _080159AE
	movs r2, #0
	ldr r1, _080159DC @ =0x06000940
	str r2, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	adds r0, r3, #0
	movs r2, #0x3c
	movs r3, #0xa
	bl sub_08002E7C
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_080159D8: .4byte 0x0000F3FF
_080159DC: .4byte 0x06000940
	thumb_func_end sub_08015998

	thumb_func_start sub_080159E0
sub_080159E0: @ 0x080159E0
	push {lr}
	sub sp, #4
	bl sub_080134A4
	adds r2, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #8
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080159E0

	thumb_func_start sub_08015A00
sub_08015A00: @ 0x08015A00
	push {lr}
	sub sp, #4
	bl sub_080134C0
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	movs r1, #0
	movs r3, #1
	bl sub_08003E7C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08015A00

	thumb_func_start sub_08015A20
sub_08015A20: @ 0x08015A20
	push {r4, lr}
	sub sp, #0x14
	adds r4, r1, #0
	bl sub_080134DC
	adds r2, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #6
	adds r4, r4, r0
	movs r3, #0xc0
	lsls r3, r3, #1
	movs r0, #0x10
	str r0, [sp]
	subs r0, #0x11
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003F8C
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08015A20

	thumb_func_start sub_08015A58
sub_08015A58: @ 0x08015A58
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x9c
	lsls r0, r0, #9
	ldr r2, _08015A9C @ =0x0821B0F8
	lsls r4, r4, #3
	adds r1, r4, r2
	ldr r1, [r1]
	adds r2, #4
	adds r2, r4, r2
	ldr r2, [r2]
	movs r5, #1
	str r5, [sp]
	movs r3, #1
	bl sub_08003D38
	movs r0, #0xc8
	lsls r0, r0, #2
	ldr r2, _08015AA0 @ =0x0821B130
	adds r1, r4, r2
	ldr r1, [r1]
	adds r2, #4
	adds r4, r4, r2
	ldr r2, [r4]
	str r5, [sp]
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015A9C: .4byte 0x0821B0F8
_08015AA0: .4byte 0x0821B130
	thumb_func_end sub_08015A58

	thumb_func_start sub_08015AA4
sub_08015AA4: @ 0x08015AA4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, _08015AE8 @ =0x0821B168
	lsls r4, r4, #3
	adds r1, r4, r2
	ldr r1, [r1]
	adds r2, #4
	adds r2, r4, r2
	ldr r2, [r2]
	movs r5, #1
	str r5, [sp]
	movs r3, #1
	bl sub_08003D38
	movs r0, #0xd0
	lsls r0, r0, #2
	ldr r2, _08015AEC @ =0x0821B1A8
	adds r1, r4, r2
	ldr r1, [r1]
	adds r2, #4
	adds r4, r4, r2
	ldr r2, [r4]
	str r5, [sp]
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015AE8: .4byte 0x0821B168
_08015AEC: .4byte 0x0821B1A8
	thumb_func_end sub_08015AA4

	thumb_func_start sub_08015AF0
sub_08015AF0: @ 0x08015AF0
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0x31
	bne _08015B24
	ldr r0, _08015B1C @ =0x00014280
	ldr r2, _08015B20 @ =0x0821B1E8
	lsls r3, r1, #3
	adds r1, r3, r2
	ldr r1, [r1]
	adds r2, #4
	adds r3, r3, r2
	ldr r2, [r3]
	movs r3, #1
	str r3, [sp]
	bl sub_08003D38
	b _08015B3C
	.align 2, 0
_08015B1C: .4byte 0x00014280
_08015B20: .4byte 0x0821B1E8
_08015B24:
	ldr r0, _08015B44 @ =0x00014280
	ldr r2, _08015B48 @ =0x0821B208
	lsls r3, r1, #3
	adds r1, r3, r2
	ldr r1, [r1]
	adds r2, #4
	adds r3, r3, r2
	ldr r2, [r3]
	movs r3, #1
	str r3, [sp]
	bl sub_08003D38
_08015B3C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08015B44: .4byte 0x00014280
_08015B48: .4byte 0x0821B208
	thumb_func_end sub_08015AF0

	thumb_func_start sub_08015B4C
sub_08015B4C: @ 0x08015B4C
	push {lr}
	sub sp, #4
	cmp r0, #0x31
	bne _08015B6C
	ldr r0, _08015B68 @ =0x000122C0
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r2, #0x68
	movs r3, #1
	bl sub_08003D38
	b _08015B7C
	.align 2, 0
_08015B68: .4byte 0x000122C0
_08015B6C:
	ldr r0, _08015B84 @ =0x000122C0
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r2, #0x69
	movs r3, #1
	bl sub_08003D38
_08015B7C:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08015B84: .4byte 0x000122C0
	thumb_func_end sub_08015B4C

	thumb_func_start sub_08015B88
sub_08015B88: @ 0x08015B88
	push {lr}
	sub sp, #4
	ldr r2, _08015BAC @ =0x0821B228
	lsls r0, r0, #3
	adds r1, r0, r2
	ldr r1, [r1]
	adds r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, _08015BB0 @ =0x00013B40
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08015BAC: .4byte 0x0821B228
_08015BB0: .4byte 0x00013B40
	thumb_func_end sub_08015B88

	thumb_func_start sub_08015BB4
sub_08015BB4: @ 0x08015BB4
	push {lr}
	sub sp, #4
	movs r0, #0x81
	lsls r0, r0, #9
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r2, #0x3f
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	thumb_func_end sub_08015BB4

	thumb_func_start sub_08015BD0
sub_08015BD0: @ 0x08015BD0
	push {lr}
	sub sp, #4
	movs r0, #0x81
	lsls r0, r0, #9
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r2, #0x40
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	thumb_func_end sub_08015BD0

	thumb_func_start sub_08015BEC
sub_08015BEC: @ 0x08015BEC
	push {lr}
	sub sp, #4
	movs r0, #0xa8
	lsls r0, r0, #2
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r2, #0x6d
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r0}
	bx r0
	thumb_func_end sub_08015BEC

	thumb_func_start sub_08015C08
sub_08015C08: @ 0x08015C08
	push {r4, lr}
	sub sp, #4
	ldr r0, _08015C6C @ =0x02039198
	ldr r0, [r0]
	bl sub_08013558
	adds r2, r0, #0
	movs r4, #0
	str r4, [sp]
	movs r0, #0x80
	movs r1, #0
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x80
	lsls r0, r0, #1
	str r4, [sp]
	movs r1, #0
	movs r2, #0x37
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0xd8
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0
	movs r2, #0x3a
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x88
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0
	movs r2, #0x6a
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x80
	lsls r0, r0, #2
	str r4, [sp]
	movs r1, #0
	movs r2, #0x66
	movs r3, #1
	bl sub_08003E7C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015C6C: .4byte 0x02039198
	thumb_func_end sub_08015C08

	thumb_func_start sub_08015C70
sub_08015C70: @ 0x08015C70
	push {r4, lr}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #7
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r2, #0x36
	movs r3, #1
	bl sub_08003D38
	movs r0, #0xa4
	lsls r0, r0, #9
	str r4, [sp]
	movs r1, #0
	movs r2, #0x39
	movs r3, #1
	bl sub_08003D38
	ldr r0, _08015CD8 @ =0x00010300
	str r4, [sp]
	movs r1, #0
	movs r2, #0x3c
	movs r3, #1
	bl sub_08003D38
	ldr r0, _08015CDC @ =0x00013E80
	str r4, [sp]
	movs r1, #0
	movs r2, #0x59
	movs r3, #1
	bl sub_08003D38
	ldr r0, _08015CE0 @ =0x000122C0
	str r4, [sp]
	movs r1, #0
	movs r2, #0x68
	movs r3, #1
	bl sub_08003D38
	ldr r0, _08015CE4 @ =0x00014280
	str r4, [sp]
	movs r1, #0
	movs r2, #0x5e
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015CD8: .4byte 0x00010300
_08015CDC: .4byte 0x00013E80
_08015CE0: .4byte 0x000122C0
_08015CE4: .4byte 0x00014280
	thumb_func_end sub_08015C70

	thumb_func_start sub_08015CE8
sub_08015CE8: @ 0x08015CE8
	push {lr}
	bl sub_080180D0
	cmp r0, #2
	bne _08015CF8
	movs r0, #1
	bl sub_080137E8
_08015CF8:
	ldr r0, _08015D14 @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08015D30
	bl sub_080180D0
	cmp r0, #0
	beq _08015D18
	movs r0, #3
	bl sub_080180F4
	b _08015D4E
	.align 2, 0
_08015D14: .4byte 0x030014A4
_08015D18:
	movs r0, #2
	bl sub_080180F4
	bl sub_080035FC
	ldr r1, _08015D2C @ =sub_08015DCC
	bl sub_0800356C
	b _08015D4E
	.align 2, 0
_08015D2C: .4byte sub_08015DCC
_08015D30:
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08015D4E
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08015D48
	movs r0, #0
	bl sub_080137E8
	b _08015D4E
_08015D48:
	movs r0, #0
	bl sub_080137E8
_08015D4E:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08015CE8

	thumb_func_start sub_08015D54
sub_08015D54: @ 0x08015D54
	push {r4, r5, lr}
	ldr r1, _08015D88 @ =0x02039630
	adds r0, r1, #0
	adds r0, #0xb4
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r5, r2, #0
	adds r0, #1
	movs r4, #0
	ldrsb r4, [r0, r4]
	ldr r0, _08015D8C @ =0x030014A4
	ldrh r3, [r0]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _08015D94
	movs r0, #4
	bl sub_080178A0
	bl sub_080035FC
	ldr r1, _08015D90 @ =sub_08015DCC
	bl sub_0800356C
	b _08015DC6
	.align 2, 0
_08015D88: .4byte 0x02039630
_08015D8C: .4byte 0x030014A4
_08015D90: .4byte sub_08015DCC
_08015D94:
	movs r0, #0xc0
	ands r0, r3
	cmp r0, #0
	beq _08015DC6
	movs r0, #0x40
	ands r0, r3
	cmp r0, #0
	beq _08015DAE
	subs r2, #1
	cmp r2, #0
	bge _08015DB6
	subs r2, r4, #1
	b _08015DB6
_08015DAE:
	adds r2, #1
	cmp r2, r4
	blt _08015DB6
	movs r2, #0
_08015DB6:
	cmp r2, r5
	beq _08015DC6
	adds r0, r1, #0
	adds r0, #0xb4
	strb r2, [r0]
	movs r0, #3
	bl sub_080178A0
_08015DC6:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08015D54

	thumb_func_start sub_08015DCC
sub_08015DCC: @ 0x08015DCC
	push {r4, r5, lr}
	bl sub_08017474
	cmp r0, #2
	bne _08015DDC
	movs r0, #1
	bl sub_080137E8
_08015DDC:
	ldr r4, _08015E48 @ =0x030014A4
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015DFC
	bl sub_080137F4
	movs r0, #1
	bl sub_080171AC
	bl sub_080035FC
	ldr r1, _08015E4C @ =sub_08015F18
	bl sub_0800356C
_08015DFC:
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08015E58
	ldr r1, _08015E50 @ =0x02039630
	adds r2, r1, #0
	adds r2, #0xb4
	movs r0, #0
	strb r0, [r2]
	adds r2, #1
	movs r0, #5
	strb r0, [r2]
	movs r3, #0
	adds r5, r1, #0
	adds r4, r5, #0
	adds r4, #0xb6
	movs r1, #1
_08015E20:
	adds r0, r3, r4
	strb r1, [r0]
	adds r3, #1
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r3, r0
	blt _08015E20
	adds r1, r5, #0
	adds r1, #0xb8
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	bl sub_080178A0
	bl sub_080035FC
	ldr r1, _08015E54 @ =sub_08015D54
	bl sub_0800356C
	b _08015E90
	.align 2, 0
_08015E48: .4byte 0x030014A4
_08015E4C: .4byte sub_08015F18
_08015E50: .4byte 0x02039630
_08015E54: .4byte sub_08015D54
_08015E58:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08015E70
	movs r0, #1
	bl sub_080174A0
	movs r0, #0
	bl sub_080137E8
	b _08015E90
_08015E70:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08015E90
	movs r0, #1
	bl sub_080180F4
	movs r0, #0
	bl sub_080137E8
	bl sub_080035FC
	ldr r1, _08015E98 @ =sub_08015CE8
	bl sub_0800356C
_08015E90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015E98: .4byte sub_08015CE8
	thumb_func_end sub_08015DCC

	thumb_func_start sub_08015E9C
sub_08015E9C: @ 0x08015E9C
	push {lr}
	bl sub_080171A0
	adds r1, r0, #0
	cmp r1, #1
	bne _08015EB8
	ldr r0, _08015ED0 @ =0x030014A4
	ldrh r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _08015EB8
	movs r0, #5
	bl sub_080171AC
_08015EB8:
	bl sub_080171A0
	cmp r0, #0
	bne _08015ECA
	bl sub_080035FC
	ldr r1, _08015ED4 @ =sub_08015DCC
	bl sub_0800356C
_08015ECA:
	pop {r0}
	bx r0
	.align 2, 0
_08015ED0: .4byte 0x030014A4
_08015ED4: .4byte sub_08015DCC
	thumb_func_end sub_08015E9C

	thumb_func_start sub_08015ED8
sub_08015ED8: @ 0x08015ED8
	push {lr}
	bl sub_08010604
	cmp r0, #0
	bne _08015F10
	ldr r1, _08015EFC @ =0x02039630
	ldr r0, [r1, #0x60]
	subs r0, #1
	str r0, [r1, #0x60]
	cmp r0, #0
	ble _08015F00
	cmp r0, #4
	bne _08015F10
	ldr r0, [r1, #0x5c]
	movs r1, #0
	bl sub_0801379C
	b _08015F10
	.align 2, 0
_08015EFC: .4byte 0x02039630
_08015F00:
	movs r0, #4
	bl sub_080171AC
	bl sub_080035FC
	ldr r1, _08015F14 @ =sub_08015E9C
	bl sub_0800356C
_08015F10:
	pop {r0}
	bx r0
	.align 2, 0
_08015F14: .4byte sub_08015E9C
	thumb_func_end sub_08015ED8

	thumb_func_start sub_08015F18
sub_08015F18: @ 0x08015F18
	push {lr}
	ldr r1, _08015F34 @ =0x02039630
	movs r0, #8
	str r0, [r1, #0x60]
	movs r0, #2
	bl sub_080171AC
	bl sub_080035FC
	ldr r1, _08015F38 @ =sub_08015ED8
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08015F34: .4byte 0x02039630
_08015F38: .4byte sub_08015ED8
	thumb_func_end sub_08015F18

	thumb_func_start sub_08015F3C
sub_08015F3C: @ 0x08015F3C
	push {lr}
	bl sub_080035FC
	ldr r1, _08015F4C @ =sub_08015F18
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08015F4C: .4byte sub_08015F18
	thumb_func_end sub_08015F3C

	thumb_func_start sub_08015F50
sub_08015F50: @ 0x08015F50
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08015F6A
	bl sub_0801602C
	bl sub_08015FBC
	adds r0, r4, #0
	bl sub_08003450
_08015F6A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08015F50

	thumb_func_start sub_08015F70
sub_08015F70: @ 0x08015F70
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0x28
	bl sub_08015F98
	bl sub_08015FDC
	ldr r1, _08015F94 @ =sub_08015F3C
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08003344
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08015F94: .4byte sub_08015F3C
	thumb_func_end sub_08015F70

	thumb_func_start sub_08015F98
sub_08015F98: @ 0x08015F98
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _08015FB4 @ =0x020397D0
	str r1, [r0]
	ldr r4, _08015FB8 @ =0x020397D4
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08015FB4: .4byte 0x020397D0
_08015FB8: .4byte 0x020397D4
	thumb_func_end sub_08015F98

	thumb_func_start sub_08015FBC
sub_08015FBC: @ 0x08015FBC
	push {lr}
	ldr r0, _08015FCC @ =0x020397D4
	ldr r0, [r0]
	bl sub_080038C8
	pop {r0}
	bx r0
	.align 2, 0
_08015FCC: .4byte 0x020397D4
	thumb_func_end sub_08015FBC

	thumb_func_start sub_08015FD0
sub_08015FD0: @ 0x08015FD0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_08015FD0

	thumb_func_start sub_08015FDC
sub_08015FDC: @ 0x08015FDC
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08016004 @ =0x020397D4
	ldr r4, [r0]
	ldr r1, _08016008 @ =0x020397D0
	ldr r0, [r1]
	cmp r5, r0
	bge _08015FFE
	adds r6, r1, #0
_08015FEE:
	adds r0, r4, #0
	bl sub_08015FD0
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _08015FEE
_08015FFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016004: .4byte 0x020397D4
_08016008: .4byte 0x020397D0
	thumb_func_end sub_08015FDC

	thumb_func_start sub_0801600C
sub_0801600C: @ 0x0801600C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _08016026
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08016020
	bl sub_080028D4
_08016020:
	adds r0, r4, #0
	bl sub_08015FD0
_08016026:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801600C

	thumb_func_start sub_0801602C
sub_0801602C: @ 0x0801602C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08016054 @ =0x020397D4
	ldr r4, [r0]
	ldr r1, _08016058 @ =0x020397D0
	ldr r0, [r1]
	cmp r5, r0
	bge _0801604E
	adds r6, r1, #0
_0801603E:
	adds r0, r4, #0
	bl sub_0801600C
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _0801603E
_0801604E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016054: .4byte 0x020397D4
_08016058: .4byte 0x020397D0
	thumb_func_end sub_0801602C

	thumb_func_start sub_0801605C
sub_0801605C: @ 0x0801605C
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _08016078 @ =0x020397D4
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
	cmp r2, r3
	bhs _08016084
_0801606E:
	ldr r0, [r1]
	cmp r0, #0
	bne _0801607C
	adds r0, r1, #0
	b _08016086
	.align 2, 0
_08016078: .4byte 0x020397D4
_0801607C:
	adds r2, #1
	adds r1, #0x10
	cmp r2, r3
	blo _0801606E
_08016084:
	movs r0, #0
_08016086:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801605C

	thumb_func_start sub_0801608C
sub_0801608C: @ 0x0801608C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r4]
	cmp r0, #0
	beq _080160B4
	adds r0, r4, #0
	bl sub_0801600C
_080160B4:
	movs r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001AC4
	str r0, [r4, #4]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_0800256C
	ldr r0, [r4, #4]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_0800257C
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x24]
	bl sub_0800258C
	ldr r0, [sp, #0x28]
	str r0, [r4, #8]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x28]
	str r2, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
	ldr r0, [sp, #0x30]
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801608C

	thumb_func_start sub_08016104
sub_08016104: @ 0x08016104
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r4]
	cmp r0, #0
	beq _0801612C
	adds r0, r4, #0
	bl sub_0801600C
_0801612C:
	movs r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001AE4
	str r0, [r4, #4]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_0800256C
	ldr r0, [r4, #4]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_0800257C
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x24]
	bl sub_0800258C
	ldr r0, [sp, #0x28]
	str r0, [r4, #8]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x28]
	str r2, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
	ldr r0, [sp, #0x30]
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016104

	thumb_func_start sub_0801617C
sub_0801617C: @ 0x0801617C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08016232
	movs r5, #0
_0801618E:
	ldr r3, [r4]
	cmp r3, #0
	bne _080161AC
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r3, [sp]
	b _08016204
_080161AC:
	cmp r3, #4
	bne _080161C0
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #8
	b _080161FC
_080161C0:
	cmp r3, #5
	bne _080161D4
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #8
	b _080161FC
_080161D4:
	cmp r3, #1
	bne _080161EA
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r5, [sp]
	movs r3, #1
	bl sub_08003E7C
	b _08016226
_080161EA:
	cmp r3, #2
	bne _0801620C
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
_080161FC:
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r5, [sp]
_08016204:
	movs r3, #1
	bl sub_08003D38
	b _08016226
_0801620C:
	cmp r3, #3
	bne _08016226
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r5, [sp]
	movs r3, #1
	bl sub_08003E7C
_08016226:
	adds r4, #0x14
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801618E
_08016232:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801617C

	thumb_func_start sub_0801623C
sub_0801623C: @ 0x0801623C
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, _08016294 @ =0x0821B2B8
	bl sub_0801617C
	ldr r6, _08016298 @ =0x02039630
	ldr r0, [r6, #0x5c]
	movs r1, #3
	bl sub_0804449C
	adds r5, r0, #0
	bl sub_080134A4
	adds r2, r0, #0
	movs r0, #0xb0
	lsls r0, r0, #8
	movs r4, #0
	str r4, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	adds r0, r5, #0
	bl sub_080134C0
	adds r2, r0, #0
	str r4, [sp]
	movs r0, #0x20
	movs r1, #0
	movs r3, #1
	bl sub_08003E7C
	ldr r0, _0801629C @ =0x00013B40
	ldr r2, [r6, #0x5c]
	adds r2, #0x46
	str r4, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08016294: .4byte 0x0821B2B8
_08016298: .4byte 0x02039630
_0801629C: .4byte 0x00013B40
	thumb_func_end sub_0801623C

	thumb_func_start sub_080162A0
sub_080162A0: @ 0x080162A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	ldr r0, _08016424 @ =0x02039190
	ldr r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r1, r2
	ldr r1, [r1]
	cmp r1, #1
	bgt _080162BE
	b _0801644E
_080162BE:
	add r1, sp, #0x60
	movs r3, #0
	mov r8, r3
	add r6, sp, #4
	mov sl, r6
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, _08016428 @ =0x0000FFFF
	adds r4, r0, #0
	mov r3, sl
	mov r2, sp
_080162D4:
	mov r6, r8
	str r6, [r2]
	str r5, [r3]
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r4
	strh r0, [r1, #2]
	adds r1, #4
	adds r3, #8
	adds r2, #8
	movs r0, #1
	add r8, r0
	mov r6, r8
	cmp r6, #0xb
	ble _080162D4
	ldr r2, _0801642C @ =0x020396B4
	movs r0, #0
	mov r8, r0
	ldr r1, _08016424 @ =0x02039190
	ldr r0, [r1]
	movs r3, #0x8e
	lsls r3, r3, #1
	adds r1, r0, r3
	ldr r0, [r1]
	cmp r8, r0
	bge _0801635A
	movs r6, #1
	rsbs r6, r6, #0
	mov ip, r6
	mov sb, r1
_08016314:
	movs r7, #0
	ldr r3, _08016430 @ =0x0821B484
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r6, r8
	lsls r4, r6, #3
	mov r5, r8
	adds r5, #1
	adds r0, r2, #4
	str r0, [sp, #0x94]
	cmp r1, ip
	beq _08016348
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	beq _08016348
	movs r2, #1
	rsbs r2, r2, #0
_08016338:
	adds r7, #1
	adds r3, #2
	movs r6, #0
	ldrsh r1, [r3, r6]
	cmp r1, r2
	beq _08016348
	cmp r1, r0
	bne _08016338
_08016348:
	mov r1, sl
	adds r0, r1, r4
	str r7, [r0]
	mov r8, r5
	ldr r2, [sp, #0x94]
	mov r3, sb
	ldr r0, [r3]
	cmp r8, r0
	blt _08016314
_0801635A:
	movs r6, #0
	mov r8, r6
	ldr r1, _08016424 @ =0x02039190
	ldr r0, [r1]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r8, r0
	bge _080163D8
	str r1, [sp, #0x90]
_08016370:
	movs r7, #1
	movs r2, #0
	ldr r3, [sp, #0x90]
	ldr r0, [r3]
	subs r0, #1
	cmp r2, r0
	bge _080163C0
	mov ip, sl
	ldr r6, _08016424 @ =0x02039190
	ldr r0, [r6]
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
_0801638C:
	lsls r1, r2, #3
	mov r3, ip
	adds r5, r3, r1
	adds r6, r2, #1
	lsls r2, r6, #3
	adds r3, r3, r2
	ldr r4, [r5]
	ldr r0, [r3]
	cmp r4, r0
	ble _080163B4
	add r1, sp
	ldr r7, [r1]
	add r2, sp
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, [r3]
	str r0, [r5]
	str r7, [r2]
	str r4, [r3]
	movs r7, #0
_080163B4:
	adds r2, r6, #0
	mov r6, sb
	ldr r0, [r6]
	subs r0, #1
	cmp r2, r0
	blt _0801638C
_080163C0:
	cmp r7, #0
	bne _080163D8
	movs r0, #1
	add r8, r0
	ldr r1, _08016424 @ =0x02039190
	ldr r0, [r1]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r8, r0
	blt _08016370
_080163D8:
	add r1, sp, #0x60
	movs r3, #0
	mov r8, r3
	ldr r6, _08016424 @ =0x02039190
	ldr r0, [r6]
	movs r4, #0x8e
	lsls r4, r4, #1
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r8, r0
	bge _08016412
	ldr r5, _0801642C @ =0x020396B4
	mov r3, sp
_080163F2:
	ldr r0, [r3]
	lsls r0, r0, #2
	adds r2, r0, r5
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	adds r3, #8
	movs r0, #1
	add r8, r0
	adds r1, #4
	ldr r0, [r6]
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r8, r0
	blt _080163F2
_08016412:
	add r2, sp, #0x60
	ldr r1, _0801642C @ =0x020396B4
	movs r3, #0
	mov r8, r3
	ldr r4, _08016424 @ =0x02039190
	ldr r0, [r4]
	movs r3, #0x8e
	lsls r3, r3, #1
	b _08016446
	.align 2, 0
_08016424: .4byte 0x02039190
_08016428: .4byte 0x0000FFFF
_0801642C: .4byte 0x020396B4
_08016430: .4byte 0x0821B484
_08016434:
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r1, #2]
	movs r6, #1
	add r8, r6
	adds r2, #4
	adds r1, #4
	ldr r0, [r4]
_08016446:
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r8, r0
	blt _08016434
_0801644E:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080162A0

	thumb_func_start sub_08016460
sub_08016460: @ 0x08016460
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _080164C0 @ =0x02039630
	ldr r6, _080164C4 @ =0x02039190
	ldr r0, _080164C8 @ =0x0000FFFF
	adds r2, r0, #0
	adds r1, r5, #0
	adds r1, #0x84
	movs r4, #0xb
_08016476:
	ldrh r0, [r1]
	orrs r0, r2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r2
	strh r0, [r1, #2]
	adds r1, #4
	subs r4, #1
	cmp r4, #0
	bge _08016476
	movs r4, #0
	adds r1, r6, #0
	ldr r0, [r6]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r4, r0
	bge _08016526
	ldr r7, _080164CC @ =0x02039188
	mov ip, r7
_080164A0:
	ldr r1, [r1]
	lsls r3, r4, #1
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r0, r0, r3
	ldrb r2, [r0]
	cmp r2, #0x1d
	bgt _080164D4
	cmp r2, #0x1a
	beq _080164D4
	ldr r7, _080164D0 @ =0x00000101
	adds r0, r1, r7
	adds r0, r0, r3
	ldrb r3, [r0]
	b _08016506
	.align 2, 0
_080164C0: .4byte 0x02039630
_080164C4: .4byte 0x02039190
_080164C8: .4byte 0x0000FFFF
_080164CC: .4byte 0x02039188
_080164D0: .4byte 0x00000101
_080164D4:
	movs r3, #1
	rsbs r3, r3, #0
	mov r1, ip
	ldr r0, [r1]
	movs r7, #0x8c
	lsls r7, r7, #1
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #1
	bne _08016506
	cmp r2, #0x27
	beq _08016500
	cmp r2, #0x27
	bgt _080164F6
	cmp r2, #0x24
	beq _080164FC
	b _08016506
_080164F6:
	cmp r2, #0x28
	beq _08016504
	b _08016506
_080164FC:
	movs r2, #0x30
	b _08016506
_08016500:
	movs r2, #0x31
	b _08016506
_08016504:
	movs r2, #0x32
_08016506:
	lsls r0, r4, #2
	adds r0, r0, r5
	adds r1, r0, #0
	adds r1, #0x84
	strh r2, [r1]
	adds r0, #0x86
	strh r3, [r0]
	adds r4, #1
	adds r1, r6, #0
	ldr r0, [r6]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r4, r0
	blt _080164A0
_08016526:
	bl sub_080162A0
	ldr r3, _0801654C @ =0x02039630
	ldr r0, _08016550 @ =0x02039190
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x80
	ldr r0, [r0]
	subs r0, #1
	str r0, [r3, #0x6c]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08016558
	adds r1, r3, #0
	adds r1, #0x68
	ldr r0, _08016554 @ =0x0000FFFF
	b _0801656A
	.align 2, 0
_0801654C: .4byte 0x02039630
_08016550: .4byte 0x02039190
_08016554: .4byte 0x0000FFFF
_08016558:
	movs r5, #0x96
	lsls r5, r5, #1
	adds r0, r2, r5
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r1, r3, #0
	adds r1, #0x68
_0801656A:
	strh r0, [r1]
	ldr r2, _080165A0 @ =0x02039630
	ldr r3, _080165A4 @ =0x02039190
	ldr r4, [r3]
	movs r7, #0x92
	lsls r7, r7, #1
	adds r0, r4, r7
	ldr r1, [r0]
	movs r5, #0x94
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r0, [r0]
	adds r1, r1, r0
	adds r0, r2, #0
	adds r0, #0x6a
	strh r1, [r0]
	adds r5, r2, #0
	adds r6, r3, #0
	mov r7, r8
	cmp r7, #0
	bne _080165A8
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	b _080165AA
	.align 2, 0
_080165A0: .4byte 0x02039630
_080165A4: .4byte 0x02039190
_080165A8:
	ldr r0, [r5, #0x74]
_080165AA:
	str r0, [r5, #0x70]
	ldr r0, [r6]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r0]
	str r1, [r5, #0x78]
	adds r2, r5, #0
	adds r2, #0x80
	ldr r3, [r0]
	subs r0, r3, #1
	cmp r0, #0
	bge _080165C6
	adds r0, r3, #2
_080165C6:
	asrs r0, r0, #2
	adds r0, #1
	str r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016460

	thumb_func_start sub_080165D8
sub_080165D8: @ 0x080165D8
	ldr r1, _080165E0 @ =0x02039630
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_080165E0: .4byte 0x02039630
	thumb_func_end sub_080165D8

	thumb_func_start sub_080165E4
sub_080165E4: @ 0x080165E4
	ldr r0, _080165EC @ =0x02039630
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_080165EC: .4byte 0x02039630
	thumb_func_end sub_080165E4

	thumb_func_start sub_080165F0
sub_080165F0: @ 0x080165F0
	push {r4, lr}
	ldr r4, _08016610 @ =0x0821B4E0
	ldr r2, _08016614 @ =0x02039630
	ldr r3, [r2, #8]
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	cmp r0, #0x1d
	bgt _08016618
	movs r0, #0x1e
	b _0801661E
	.align 2, 0
_08016610: .4byte 0x0821B4E0
_08016614: .4byte 0x02039630
_08016618:
	cmp r0, #0x5f
	ble _0801661E
	movs r0, #0x5f
_0801661E:
	str r0, [r2, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080165F0

	thumb_func_start sub_08016628
sub_08016628: @ 0x08016628
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _08016644 @ =0x02039630
	ldr r1, [r0, #8]
	adds r4, r0, #0
	cmp r1, #0
	beq _08016698
	cmp r3, r2
	bge _0801664C
	subs r1, r2, r3
	ldr r5, _08016648 @ =0x0821B564
	b _08016650
	.align 2, 0
_08016644: .4byte 0x02039630
_08016648: .4byte 0x0821B564
_0801664C:
	subs r1, r3, r2
	ldr r5, _08016658 @ =0x0821B5AC
_08016650:
	movs r2, #0
	ldr r3, _0801665C @ =0x0821B5F4
	b _08016668
	.align 2, 0
_08016658: .4byte 0x0821B5AC
_0801665C: .4byte 0x0821B5F4
_08016660:
	adds r3, #4
	adds r2, #1
	cmp r2, #5
	bgt _08016672
_08016668:
	ldr r0, [r3]
	cmp r1, r0
	blt _08016660
	cmp r2, #5
	ble _08016674
_08016672:
	movs r2, #5
_08016674:
	ldr r1, [r4, #8]
	lsls r1, r1, #2
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r5
	adds r1, r1, r0
	ldr r1, [r1]
	ldr r0, [r4, #4]
	adds r0, r0, r1
	cmp r0, #0x1d
	bgt _08016690
	movs r0, #0x1e
	b _08016696
_08016690:
	cmp r0, #0x5f
	ble _08016696
	movs r0, #0x5f
_08016696:
	str r0, [r4, #4]
_08016698:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016628

	thumb_func_start sub_080166A0
sub_080166A0: @ 0x080166A0
	push {r4, lr}
	ldr r4, _080166BC @ =0x02039630
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _080166C0
	movs r0, #0x64
	bl sub_08006938
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _080166C0
	movs r0, #0
	b _080166C2
	.align 2, 0
_080166BC: .4byte 0x02039630
_080166C0:
	movs r0, #1
_080166C2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080166A0

	thumb_func_start sub_080166C8
sub_080166C8: @ 0x080166C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080166A0
	cmp r0, #0
	beq _080167C6
	ldr r0, _08016768 @ =0x02039AC0
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x93
	ldrb r5, [r1]
	movs r1, #0x50
	mov ip, r1
	movs r6, #0
	cmp r5, #0x50
	bge _080167C6
	adds r0, #0xb
	mov r8, r0
	ldr r7, _0801676C @ =0x02039348
_080166F0:
	mov r3, r8
	adds r0, r3, r5
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801672E
	movs r2, #0
	ldr r3, _08016770 @ =0x02039260
	ldr r0, [r7]
	cmp r2, r0
	bge _0801672C
	adds r4, r3, #0
	adds r4, #0xf0
	ldrb r0, [r4]
	cmp r1, r0
	beq _08016726
	adds r0, r3, #0
	adds r0, #0xe8
	ldr r3, [r0]
_08016718:
	adds r2, #1
	cmp r2, r3
	bge _0801672C
	adds r0, r2, r4
	ldrb r0, [r0]
	cmp r1, r0
	bne _08016718
_08016726:
	ldr r0, [r7]
	cmp r2, r0
	blt _08016734
_0801672C:
	adds r6, #1
_0801672E:
	adds r5, #1
	cmp r5, ip
	blt _080166F0
_08016734:
	cmp r5, ip
	bge _080167C6
	ldr r7, _08016770 @ =0x02039260
	ldr r1, [r7, #0x4c]
	movs r0, #0x11
	subs r4, r0, r1
	cmp r6, r4
	ble _080167C6
	bl sub_080166A0
	cmp r0, #1
	beq _08016764
	bl sub_080166A0
	cmp r0, #1
	bne _08016786
	ldr r0, [r7, #0x70]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08016786
	subs r7, r4, #1
	cmp r7, #0
	bge _08016790
_08016764:
	movs r7, #0
	b _08016790
	.align 2, 0
_08016768: .4byte 0x02039AC0
_0801676C: .4byte 0x02039348
_08016770: .4byte 0x02039260
_08016774:
	adds r0, r4, r5
	ldrb r1, [r0]
	strb r3, [r0]
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0xb
	adds r0, r0, r2
	strb r1, [r0]
	b _080167C6
_08016786:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_08006938
	adds r7, r0, #0
_08016790:
	movs r6, #0
	ldr r3, _080167D0 @ =0x02039AC0
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x93
	ldrb r2, [r1]
	cmp r2, #0x4f
	bgt _080167C6
	mov r8, r3
	adds r4, r0, #0
	adds r4, #0xb
	movs r0, #0x80
	mov ip, r0
_080167AA:
	adds r0, r4, r2
	ldrb r1, [r0]
	adds r3, r1, #0
	adds r0, r3, #0
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	bne _080167C0
	cmp r7, r6
	beq _08016774
	adds r6, #1
_080167C0:
	adds r2, #1
	cmp r2, #0x4f
	ble _080167AA
_080167C6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080167D0: .4byte 0x02039AC0
	thumb_func_end sub_080166C8

	thumb_func_start sub_080167D4
sub_080167D4: @ 0x080167D4
	push {r4, r5, lr}
	ldr r0, _08016810 @ =0x02039260
	bl sub_0803CBDC
	adds r3, r0, #0
	ldr r0, _08016814 @ =0x0203964C
	movs r1, #0
	movs r2, #0x3f
_080167E4:
	strb r1, [r0]
	adds r0, #1
	subs r2, #1
	cmp r2, #0
	bge _080167E4
	movs r2, #0
	cmp r2, r3
	bge _0801680A
	ldr r5, _08016818 @ =0x02039264
	ldr r4, _08016814 @ =0x0203964C
_080167F8:
	adds r0, r2, r5
	ldrb r1, [r0]
	adds r1, r1, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r2, #1
	cmp r2, r3
	blt _080167F8
_0801680A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08016810: .4byte 0x02039260
_08016814: .4byte 0x0203964C
_08016818: .4byte 0x02039264
	thumb_func_end sub_080167D4

	thumb_func_start sub_0801681C
sub_0801681C: @ 0x0801681C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r2, [r5]
	movs r1, #0
	cmp r1, r2
	bge _0801683C
_0801682E:
	ldrb r0, [r3]
	cmp r0, r4
	beq _08016842
	adds r1, #1
	adds r3, #1
	cmp r1, r2
	blt _0801682E
_0801683C:
	strb r4, [r3]
	adds r2, #1
	str r2, [r5]
_08016842:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0801681C

	thumb_func_start sub_08016848
sub_08016848: @ 0x08016848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	ldr r0, _080168EC @ =0x02039260
	bl sub_0803CBDC
	ldr r2, _080168F0 @ =0x020397E0
	movs r0, #0
	movs r1, #0x13
	mov r8, r1
_08016862:
	strb r0, [r2]
	adds r2, #1
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	mov r1, r8
	cmp r1, #0
	bge _08016862
	bl sub_080167D4
	movs r2, #0
	str r2, [sp, #8]
	ldr r1, _080168F4 @ =0x020397A4
	adds r3, r1, #0
	adds r0, r3, #3
_08016880:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08016880
	ldr r2, _080168F8 @ =0x0203964C
	movs r5, #0
	mov r8, r5
_0801688E:
	ldrb r0, [r2]
	cmp r0, #2
	bne _0801689A
	ldr r1, [sp, #8]
	adds r1, #1
	str r1, [sp, #8]
_0801689A:
	cmp r0, #0
	beq _080168B0
	mov r1, r8
	cmp r1, #0
	bge _080168A6
	adds r1, #0xf
_080168A6:
	asrs r1, r1, #4
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080168B0:
	movs r5, #1
	add r8, r5
	adds r2, #1
	mov r0, r8
	cmp r0, #0x3f
	ble _0801688E
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	adds r2, r3, #0
	movs r5, #0
	mov r8, r5
	adds r1, r3, #0
	ldrb r0, [r3]
	cmp r0, #7
	bls _080168D6
	b _08016E0C
_080168D6:
	cmp r0, #5
	bls _080168FC
	ldrb r0, [r3, #3]
	cmp r0, #2
	bls _080168FC
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	b _08016924
	.align 2, 0
_080168EC: .4byte 0x02039260
_080168F0: .4byte 0x020397E0
_080168F4: .4byte 0x020397A4
_080168F8: .4byte 0x0203964C
_080168FC:
	movs r5, #1
	add r8, r5
	adds r2, #1
	mov r0, r8
	cmp r0, #2
	bgt _08016924
	ldrb r0, [r2]
	cmp r0, #7
	bls _08016910
	b _08016E0C
_08016910:
	cmp r0, #5
	bls _080168FC
	ldrb r0, [r1, #3]
	cmp r0, #2
	bls _080168FC
	mov r1, r8
	lsls r1, r1, #4
	str r1, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #0x10]
_08016924:
	movs r5, #0
	str r5, [sp, #0x14]
	ldrb r0, [r3]
	cmp r0, #0
	beq _08016948
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _08016942
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _08016942
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x14]
_08016942:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08016976
_08016948:
	ldrb r0, [r3, #1]
	cmp r0, #0
	beq _0801695C
	ldrb r0, [r3, #2]
	cmp r0, #0
	bne _0801695C
	movs r2, #0x10
	str r2, [sp, #0xc]
	movs r5, #1
	str r5, [sp, #0x14]
_0801695C:
	ldrb r0, [r3]
	cmp r0, #0
	bne _08016976
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _08016976
	ldrb r0, [r3, #2]
	cmp r0, #0
	beq _08016976
	movs r0, #0x20
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x14]
_08016976:
	movs r0, #0
	str r0, [sp]
	mov r8, r0
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, _080169A0 @ =0x0203964C
	ldr r1, _080169A4 @ =0x0821B60C
	movs r5, #0xc
_08016986:
	ldr r0, [r1]
	adds r0, r0, r2
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #1
	ble _080169A8
	movs r0, #1
	add r8, r0
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	b _080169B0
	.align 2, 0
_080169A0: .4byte 0x0203964C
_080169A4: .4byte 0x0821B60C
_080169A8:
	cmp r6, #0
	ble _080169B0
	movs r0, #1
	add r8, r0
_080169B0:
	adds r1, #4
	subs r5, #1
	cmp r5, #0
	bge _08016986
	ldr r1, [sp, #4]
	cmp r1, #5
	ble _080169EA
	movs r5, #0
	ldr r2, _08016A7C @ =0x0203964C
	mov sb, r2
	ldr r7, _08016A80 @ =0x0821B60C
_080169C6:
	ldr r1, [r7]
	mov r2, sb
	adds r0, r1, r2
	movs r6, #0
	ldrsb r6, [r0, r6]
	cmp r6, #0
	ble _080169E2
	lsls r0, r1, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08016A84 @ =0x020397E0
	mov r1, sp
	adds r2, r4, #0
	bl sub_0801681C
_080169E2:
	adds r7, #4
	adds r5, #1
	cmp r5, #0xc
	ble _080169C6
_080169EA:
	mov r5, r8
	cmp r5, #7
	ble _08016A0A
	ldr r7, _08016A80 @ =0x0821B60C
	movs r5, #0xc
_080169F4:
	ldm r7!, {r0}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08016A84 @ =0x020397E0
	mov r1, sp
	adds r2, r4, #0
	bl sub_0801681C
	subs r5, #1
	cmp r5, #0
	bge _080169F4
_08016A0A:
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bne _08016AD8
	movs r2, #0
	mov r8, r2
	ldr r4, _08016A88 @ =0x02039630
_08016A1A:
	movs r5, #1
	str r5, [sp, #4]
_08016A1E:
	ldr r5, [sp, #4]
	add r5, r8
	movs r3, #0
	adds r0, r4, #0
	adds r0, #0x1c
	adds r1, r5, r0
	movs r2, #2
_08016A2C:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08016A36
	adds r3, #1
_08016A36:
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _08016A2C
	cmp r3, #2
	ble _08016AC4
	movs r7, #0
	movs r2, #0
	ldr r0, _08016A88 @ =0x02039630
	adds r0, #0x1c
	mov sb, r0
_08016A4C:
	adds r4, r2, #0
	adds r4, #0x10
	cmp r2, r8
	beq _08016A8E
	movs r3, #0
	ldr r1, [sp, #4]
	adds r0, r2, r1
	mov r5, sb
	adds r1, r0, r5
	movs r5, #2
_08016A60:
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08016A6A
	adds r3, #1
_08016A6A:
	adds r1, #1
	subs r5, #1
	cmp r5, #0
	bge _08016A60
	cmp r3, #1
	ble _08016A8C
	adds r7, #1
	b _08016A8E
	.align 2, 0
_08016A7C: .4byte 0x0203964C
_08016A80: .4byte 0x0821B60C
_08016A84: .4byte 0x020397E0
_08016A88: .4byte 0x02039630
_08016A8C:
	adds r6, r2, #0
_08016A8E:
	adds r2, r4, #0
	cmp r2, #0x2f
	ble _08016A4C
	cmp r7, #1
	bne _08016AD8
	movs r5, #0
	ldr r1, [sp, #4]
	adds r0, r6, r1
	lsls r4, r0, #0x18
_08016AA0:
	lsrs r2, r4, #0x18
	ldr r0, _08016AC0 @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
	ldr r0, [sp]
	cmp r0, #0x13
	ble _08016AB2
	b _08016D98
_08016AB2:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r4, r4, r2
	adds r5, #1
	cmp r5, #2
	ble _08016AA0
	b _08016AD8
	.align 2, 0
_08016AC0: .4byte 0x020397E0
_08016AC4:
	ldr r5, [sp, #4]
	adds r5, #1
	str r5, [sp, #4]
	cmp r5, #7
	ble _08016A1E
	movs r0, #0x10
	add r8, r0
	mov r1, r8
	cmp r1, #0x2f
	ble _08016A1A
_08016AD8:
	movs r2, #0
	mov r8, r2
	ldr r5, _08016BCC @ =0x02039630
	str r5, [sp, #0x18]
_08016AE0:
	movs r0, #1
	str r0, [sp, #4]
	mov r1, r8
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r2, r2, r0
	mov sb, r2
	adds r1, #2
	str r1, [sp, #0x1c]
	mov r5, r8
	subs r5, #1
	str r5, [sp, #0x20]
	movs r0, #3
	add r0, r8
	mov sl, r0
	mov r1, r8
	str r1, [sp, #0x24]
	ldr r0, [sp, #0x18]
	add r0, r8
	adds r0, #0x1e
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r0, r8
	adds r0, #0x1d
	str r0, [sp, #0x2c]
_08016B14:
	ldr r5, [sp, #4]
	add r5, r8
	ldr r2, [sp, #0x2c]
	movs r6, #0
	ldrsb r6, [r2, r6]
	cmp r6, #2
	bne _08016BD4
	ldr r4, _08016BD0 @ =0x020397E0
	mov r0, sb
	lsrs r2, r0, #0x18
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801681C
	cmp r5, #0x29
	ble _08016B36
	b _08016D1E
_08016B36:
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _08016B46
	cmp r1, r8
	beq _08016B46
	b _08016D24
_08016B46:
	movs r7, #0xf
	ands r7, r5
	cmp r7, #7
	bgt _08016B88
	ldr r2, [sp, #0x2c]
	movs r0, #1
	ldrsb r0, [r2, r0]
	cmp r0, #2
	bne _08016B66
	mov r5, sl
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801681C
_08016B66:
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _08016B88
	ldr r2, [sp, #0x2c]
	movs r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08016B88
	mov r5, sl
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801681C
_08016B88:
	cmp r7, #2
	bgt _08016B8E
	b _08016D1E
_08016B8E:
	ldr r5, [sp, #0x18]
	adds r5, #0x1c
	ldr r0, [sp, #0x24]
	adds r4, r0, r5
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _08016BAC
	ldr r1, [sp, #0x20]
	lsls r2, r1, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08016BD0 @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
_08016BAC:
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #1
	beq _08016BB6
	b _08016D1E
_08016BB6:
	ldr r2, [sp, #0x20]
	adds r0, r2, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08016BC6
	b _08016D1E
_08016BC6:
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	b _08016CF8
	.align 2, 0
_08016BCC: .4byte 0x02039630
_08016BD0: .4byte 0x020397E0
_08016BD4:
	cmp r6, #1
	beq _08016BDA
	b _08016D1E
_08016BDA:
	ldr r0, [sp, #8]
	cmp r0, #4
	ble _08016C14
	cmp r5, #0x29
	bgt _08016C08
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, [sp, #0xc]
	cmp r1, r0
	beq _08016BF4
	cmp r1, r8
	beq _08016BF4
	b _08016D24
_08016BF4:
	mov r0, sb
	lsrs r2, r0, #0x18
	ldr r0, _08016C04 @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
	b _08016C14
	.align 2, 0
_08016C04: .4byte 0x020397E0
_08016C08:
	mov r1, sb
	lsrs r2, r1, #0x18
	ldr r0, _08016CDC @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
_08016C14:
	cmp r5, #0x29
	bgt _08016CE0
	movs r0, #1
	rsbs r0, r0, #0
	ldr r2, [sp, #0xc]
	cmp r2, r0
	beq _08016C28
	cmp r2, r8
	beq _08016C28
	b _08016D24
_08016C28:
	movs r7, #0xf
	ands r7, r5
	cmp r7, #7
	bgt _08016C9C
	ldr r1, [sp, #0x18]
	adds r1, #0x1c
	ldr r5, [sp, #0x1c]
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r4, r5, #0
	cmp r0, #0
	ble _08016C72
	mov r2, sl
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08016C72
	cmp r7, #1
	ble _08016C64
	ldr r5, [sp, #0x24]
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08016D24
_08016C64:
	mov r0, sl
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08016CDC @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
_08016C72:
	ldr r1, [sp, #0x18]
	adds r1, #0x1c
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08016C9C
	mov r2, sl
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08016C9C
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _08016CDC @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
_08016C9C:
	cmp r7, #2
	ble _08016D1E
	ldr r1, [sp, #0x18]
	adds r1, #0x1c
	ldr r5, [sp, #0x20]
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08016D1E
	ldr r2, [sp, #0x24]
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08016D1E
	cmp r7, #8
	bgt _08016CD2
	ldr r5, [sp, #0x1c]
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bgt _08016D24
_08016CD2:
	ldr r0, [sp, #0x20]
	lsls r2, r0, #0x18
	lsrs r2, r2, #0x18
	b _08016CF8
	.align 2, 0
_08016CDC: .4byte 0x020397E0
_08016CE0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _08016CEC
	mov r5, sb
	lsrs r2, r5, #0x18
	b _08016CF8
_08016CEC:
	adds r0, r5, #0
	subs r0, #0x35
	cmp r0, #2
	bhi _08016D08
	mov r0, sb
	lsrs r2, r0, #0x18
_08016CF8:
	ldr r0, _08016D04 @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
	b _08016D1E
	.align 2, 0
_08016D04: .4byte 0x020397E0
_08016D08:
	movs r0, #3
	bl sub_08006938
	cmp r0, #1
	bne _08016D1E
	mov r1, sb
	lsrs r2, r1, #0x18
	ldr r0, _08016DC0 @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
_08016D1E:
	ldr r0, [sp]
	cmp r0, #0x13
	bgt _08016D98
_08016D24:
	movs r2, #0x80
	lsls r2, r2, #0x11
	add sb, r2
	ldr r5, [sp, #0x1c]
	adds r5, #1
	str r5, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r0, #1
	str r0, [sp, #0x20]
	movs r1, #1
	add sl, r1
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	ldr r5, [sp, #0x28]
	adds r5, #1
	str r5, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	adds r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
	cmp r1, #9
	bgt _08016D58
	b _08016B14
_08016D58:
	movs r2, #0x10
	add r8, r2
	mov r5, r8
	cmp r5, #0x30
	bgt _08016D64
	b _08016AE0
_08016D64:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08016D92
	movs r5, #1
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r4, r0, r2
_08016D76:
	lsrs r2, r4, #0x18
	ldr r0, _08016DC0 @ =0x020397E0
	mov r1, sp
	bl sub_0801681C
	ldr r0, [sp]
	cmp r0, #0x13
	bgt _08016D98
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #9
	ble _08016D76
_08016D92:
	ldr r0, [sp]
	cmp r0, #0
	beq _08016E54
_08016D98:
	movs r7, #1
_08016D9A:
	ldr r0, _08016DC4 @ =0x02039AC0
	ldr r0, [r0]
	adds r0, #0x93
	ldrb r5, [r0]
	cmp r5, #0x50
	bge _08016DFA
_08016DA6:
	ldr r0, _08016DC4 @ =0x02039AC0
	ldr r0, [r0]
	adds r0, #0xb
	adds r0, r0, r5
	ldrb r4, [r0]
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	bne _08016DF0
	movs r1, #0
	mov r8, r1
	b _08016DCC
	.align 2, 0
_08016DC0: .4byte 0x020397E0
_08016DC4: .4byte 0x02039AC0
_08016DC8:
	movs r2, #1
	add r8, r2
_08016DCC:
	ldr r0, [sp]
	cmp r8, r0
	bge _08016DF0
	ldr r0, _08016E08 @ =0x020397E0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, r4
	bne _08016DC8
	cmp r7, #0
	beq _08016DEA
	movs r0, #2
	bl sub_08006938
	cmp r0, #0
	bne _08016DC8
_08016DEA:
	ldr r0, [sp]
	cmp r8, r0
	blt _08016DF6
_08016DF0:
	adds r5, #1
	cmp r5, #0x50
	blt _08016DA6
_08016DF6:
	cmp r5, #0x50
	blt _08016E24
_08016DFA:
	cmp r7, #0
	beq _08016E54
	ldr r0, [sp]
	cmp r0, #0
	ble _08016E54
	movs r7, #0
	b _08016D9A
	.align 2, 0
_08016E08: .4byte 0x020397E0
_08016E0C:
	mov r5, r8
	lsls r5, r5, #4
	str r5, [sp, #0xc]
	b _08016924
_08016E14:
	adds r0, r2, r5
	ldrb r4, [r0]
	strb r1, [r0]
	ldr r0, [r6]
	adds r0, #0xb
	add r0, r8
	strb r4, [r0]
	b _08016E54
_08016E24:
	ldr r0, _08016E64 @ =0x02039AC0
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x93
	ldrb r1, [r1]
	mov r8, r1
	adds r6, r0, #0
	cmp r1, #0x4f
	bgt _08016E54
	adds r2, #0xb
	movs r3, #0x80
_08016E3A:
	mov r1, r8
	adds r0, r2, r1
	ldrb r4, [r0]
	adds r1, r4, #0
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08016E14
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #0x4f
	ble _08016E3A
_08016E54:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08016E64: .4byte 0x02039AC0
	thumb_func_end sub_08016848

	thumb_func_start sub_08016E68
sub_08016E68: @ 0x08016E68
	push {r4, lr}
	ldr r4, _08016E8C @ =0x02039630
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	movs r0, #0xa
	subs r0, r0, r1
	movs r1, #3
	bl sub_0804449C
	adds r1, r0, #1
	str r1, [r4, #0x14]
	adds r0, #3
	str r0, [r4, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08016E8C: .4byte 0x02039630
	thumb_func_end sub_08016E68

	thumb_func_start sub_08016E90
sub_08016E90: @ 0x08016E90
	ldr r1, _08016E98 @ =0x02039630
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
_08016E98: .4byte 0x02039630
	thumb_func_end sub_08016E90

	thumb_func_start sub_08016E9C
sub_08016E9C: @ 0x08016E9C
	push {lr}
	bl sub_080166A0
	cmp r0, #0
	beq _08016EAA
	bl sub_08016848
_08016EAA:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016E9C

	thumb_func_start sub_08016EB0
sub_08016EB0: @ 0x08016EB0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r5, _08016EBC @ =0x0821B640
	b _08016F14
	.align 2, 0
_08016EBC: .4byte 0x0821B640
_08016EC0:
	ldr r0, [r5]
	cmp r0, r7
	bne _08016F12
	adds r2, r5, #4
	movs r3, #0
	ldr r4, _08016ED0 @ =0x0203964C
	b _08016EEC
	.align 2, 0
_08016ED0: .4byte 0x0203964C
_08016ED4:
	cmp r0, #2
	bne _08016EE8
	ldr r0, [r2, #4]
	adds r0, r6, r0
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r2, #8]
	cmp r1, r0
	blt _08016F12
_08016EE8:
	adds r3, #1
	adds r2, #0xc
_08016EEC:
	cmp r3, #3
	bgt _08016F12
	ldr r0, [r2]
	cmp r0, #0
	bne _08016EFE
	cmp r3, #0
	beq _08016F12
	movs r0, #1
	b _08016F20
_08016EFE:
	cmp r0, #1
	bne _08016ED4
	ldr r0, [r2, #4]
	adds r0, r6, r0
	adds r0, r0, r4
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r2, #8]
	cmp r1, r0
	ble _08016EE8
_08016F12:
	adds r5, #0x34
_08016F14:
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08016EC0
	movs r0, #0
_08016F20:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08016EB0

	thumb_func_start sub_08016F28
sub_08016F28: @ 0x08016F28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	bl sub_080167D4
	ldr r0, _08016F80 @ =0x02039260
	bl sub_0803CBDC
	adds r5, r0, #0
	ldr r1, _08016F84 @ =0x020397A4
	movs r2, #0
	adds r3, r1, #0
	adds r0, r3, #3
_08016F48:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge _08016F48
	ldr r4, _08016F88 @ =0x0203964C
	movs r2, #0
_08016F54:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08016F6C
	adds r1, r2, #0
	cmp r2, #0
	bge _08016F62
	adds r1, #0xf
_08016F62:
	asrs r1, r1, #4
	adds r1, r1, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08016F6C:
	adds r2, #1
	adds r4, #1
	cmp r2, #0x3f
	ble _08016F54
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	adds r4, r3, #0
	movs r2, #0
	b _08016F90
	.align 2, 0
_08016F80: .4byte 0x02039260
_08016F84: .4byte 0x020397A4
_08016F88: .4byte 0x0203964C
_08016F8C:
	adds r2, #1
	adds r4, #1
_08016F90:
	cmp r2, #2
	bgt _08016FB2
	ldrb r0, [r4]
	cmp r0, #7
	bls _08016F8C
	lsls r2, r2, #4
	mov sb, r2
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_08006938
	subs r0, #8
	ldrb r4, [r4]
	adds r6, r0, r4
	cmp r6, #1
	bgt _08016FB2
	movs r6, #2
_08016FB2:
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	beq _08017056
	cmp r6, #0
	bgt _08016FC0
	b _0801711C
_08016FC0:
	lsls r5, r5, #0x10
	mov r8, r5
	ldr r1, _08016FCC @ =0x02039264
	mov sl, r1
_08016FC8:
	movs r4, #0
	b _08016FE6
	.align 2, 0
_08016FCC: .4byte 0x02039264
_08016FD0:
	cmp r4, #8
	bgt _08016FDA
	adds r0, r1, #0
	movs r1, #1
	b _08017006
_08016FDA:
	cmp r4, #0xa
	bgt _0801700E
	adds r0, r1, #0
	movs r1, #2
	b _08017006
_08016FE4:
	adds r4, #1
_08016FE6:
	mov r1, r8
	asrs r0, r1, #0x10
	bl sub_08006938
	adds r5, r0, #0
	mov r1, sl
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, sb
	bne _08016FE6
	cmp r4, #4
	bgt _08016FD0
	adds r0, r1, #0
	movs r1, #0
_08017006:
	bl sub_08016EB0
	cmp r0, #0
	beq _08016FE4
_0801700E:
	movs r0, #1
	mov ip, r0
	movs r3, #0x64
	ldr r7, _08017040 @ =0x02039AC0
	mov r1, sl
	adds r4, r5, r1
_0801701A:
	ldr r0, [r7]
	adds r0, #0xb
	adds r2, r0, r3
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08017044
	movs r0, #0xf0
	ands r0, r1
	cmp r0, sb
	beq _08017044
	ldrb r0, [r4]
	strb r0, [r2]
	strb r1, [r4]
	bl sub_080167D4
	subs r6, #1
	b _08017050
	.align 2, 0
_08017040: .4byte 0x02039AC0
_08017044:
	subs r3, #1
	cmp r3, #0x14
	bgt _0801701A
	mov r0, ip
	cmp r0, #0
	bne _0801711C
_08017050:
	cmp r6, #0
	bgt _08016FC8
	b _0801711C
_08017056:
	movs r6, #0
	movs r2, #0
	ldr r1, _08017090 @ =0x020397A4
_0801705C:
	adds r0, r2, r1
	ldrb r0, [r0]
	adds r6, r6, r0
	adds r2, #1
	cmp r2, #2
	ble _0801705C
	cmp r6, #7
	ble _0801711C
	movs r0, #2
	rsbs r0, r0, #0
	bl sub_08006938
	subs r0, #8
	adds r6, r6, r0
	cmp r6, #1
	bgt _0801707E
	movs r6, #2
_0801707E:
	cmp r6, #0
	ble _0801711C
	lsls r5, r5, #0x10
	mov r8, r5
	ldr r1, _08017094 @ =0x02039264
	mov sb, r1
_0801708A:
	movs r4, #0
	b _080170AE
	.align 2, 0
_08017090: .4byte 0x020397A4
_08017094: .4byte 0x02039264
_08017098:
	cmp r4, #8
	bgt _080170A2
	adds r0, r1, #0
	movs r1, #1
	b _080170CE
_080170A2:
	cmp r4, #0xa
	bgt _080170D6
	adds r0, r1, #0
	movs r1, #2
	b _080170CE
_080170AC:
	adds r4, #1
_080170AE:
	mov r1, r8
	asrs r0, r1, #0x10
	bl sub_08006938
	adds r5, r0, #0
	mov r1, sb
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x30
	beq _080170AE
	cmp r4, #4
	bgt _08017098
	adds r0, r1, #0
	movs r1, #0
_080170CE:
	bl sub_08016EB0
	cmp r0, #0
	beq _080170AC
_080170D6:
	movs r0, #1
	mov ip, r0
	movs r3, #0x64
	ldr r7, _08017108 @ =0x02039AC0
	mov r1, sb
	adds r4, r5, r1
_080170E2:
	ldr r0, [r7]
	adds r0, #0xb
	adds r2, r0, r3
	ldrb r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801710C
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0x30
	bne _0801710C
	ldrb r0, [r4]
	strb r0, [r2]
	strb r1, [r4]
	bl sub_080167D4
	subs r6, #1
	b _08017118
	.align 2, 0
_08017108: .4byte 0x02039AC0
_0801710C:
	subs r3, #1
	cmp r3, #0x14
	bgt _080170E2
	mov r0, ip
	cmp r0, #0
	bne _0801711C
_08017118:
	cmp r6, #0
	bgt _0801708A
_0801711C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08016F28

	thumb_func_start sub_0801712C
sub_0801712C: @ 0x0801712C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08017170 @ =0x02039630
	ldr r0, [r0, #0x5c]
	movs r1, #3
	bl sub_0804449C
	bl sub_080134DC
	adds r2, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #6
	adds r4, r4, r0
	movs r3, #0xc0
	lsls r3, r3, #1
	movs r0, #0x10
	str r0, [sp]
	subs r0, #0x11
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003F8C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017170: .4byte 0x02039630
	thumb_func_end sub_0801712C

	thumb_func_start sub_08017174
sub_08017174: @ 0x08017174
	push {lr}
	sub sp, #0x14
	movs r2, #0xc0
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	subs r1, #1
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r0, r2, #0
	movs r1, #0
	movs r2, #0x35
	movs r3, #0xf1
	bl sub_08003F8C
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017174

	thumb_func_start sub_080171A0
sub_080171A0: @ 0x080171A0
	ldr r0, _080171A8 @ =0x02039820
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_080171A8: .4byte 0x02039820
	thumb_func_end sub_080171A0

	thumb_func_start sub_080171AC
sub_080171AC: @ 0x080171AC
	ldr r1, _080171B4 @ =0x02039820
	str r0, [r1]
	bx lr
	.align 2, 0
_080171B4: .4byte 0x02039820
	thumb_func_end sub_080171AC

	thumb_func_start sub_080171B8
sub_080171B8: @ 0x080171B8
	push {r4, r5, r6, lr}
	ldr r6, _080171D0 @ =0x02039820
	ldr r0, [r6]
	subs r0, #1
	cmp r0, #4
	bhi _080172AC
	lsls r0, r0, #2
	ldr r1, _080171D4 @ =_080171D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080171D0: .4byte 0x02039820
_080171D4: .4byte _080171D8
_080171D8: @ jump table
	.4byte _080171EC @ case 0
	.4byte _080171F4 @ case 1
	.4byte _0801723C @ case 2
	.4byte _08017294 @ case 3
	.4byte _080172A0 @ case 4
_080171EC:
	movs r0, #1
	bl sub_08017174
	b _080172A8
_080171F4:
	movs r4, #0
_080171F6:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl sub_0800FE68
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, #0x9f
	ble _080171F6
	movs r0, #0
	bl sub_0800FDE4
	movs r0, #5
	bl sub_0800FE28
	b _080172A8
_0801723C:
	movs r0, #0
	bl sub_08017174
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0
	bl sub_0801712C
	movs r4, #0
_0801724E:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl sub_0800FE68
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, #0x9f
	ble _0801724E
	movs r0, #0
	bl sub_0800FDE4
	movs r0, #5
	bl sub_0800FE28
	b _080172A8
_08017294:
	movs r0, #1
	str r0, [r6, #4]
	movs r0, #0
	str r0, [r6, #8]
	str r0, [r6]
	b _08017334
_080172A0:
	movs r0, #1
	str r0, [r6, #4]
	movs r0, #0x29
	str r0, [r6, #8]
_080172A8:
	movs r0, #0
	str r0, [r6]
_080172AC:
	ldr r0, [r6, #4]
	cmp r0, #1
	beq _080172B8
	cmp r0, #2
	beq _08017322
	b _08017334
_080172B8:
	ldr r1, [r6, #8]
	cmp r1, #0x28
	bgt _080172F2
	movs r0, #0x50
	adds r5, r1, #0
	adds r5, #0x50
	subs r4, r0, r1
	cmp r4, r5
	bge _080172EA
_080172CA:
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, r5
	blt _080172CA
_080172EA:
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	b _08017334
_080172F2:
	movs r4, #0
_080172F4:
	movs r0, #1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, #0x9f
	ble _080172F4
	movs r0, #0
	movs r1, #1
	bl sub_0801712C
	movs r0, #4
	str r0, [r6, #8]
	movs r0, #2
	b _08017332
_08017322:
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r0, #0
	bgt _08017334
	bl sub_0800FE34
	movs r0, #0
_08017332:
	str r0, [r6, #4]
_08017334:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080171B8

	thumb_func_start sub_0801733C
sub_0801733C: @ 0x0801733C
	push {lr}
	ldr r1, _08017364 @ =0x02039820
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl sub_08017174
	movs r0, #0x80
	lsls r0, r0, #4
	movs r1, #0
	bl sub_0801712C
	bl sub_080035FC
	ldr r1, _08017368 @ =sub_080171B8
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08017364: .4byte 0x02039820
_08017368: .4byte sub_080171B8
	thumb_func_end sub_0801733C

	thumb_func_start sub_0801736C
sub_0801736C: @ 0x0801736C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08017382
	bl sub_0800FE34
	adds r0, r4, #0
	bl sub_08003450
_08017382:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801736C

	thumb_func_start sub_08017388
sub_08017388: @ 0x08017388
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08017398 @ =sub_0801733C
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08017398: .4byte sub_0801733C
	thumb_func_end sub_08017388

	thumb_func_start sub_0801739C
sub_0801739C: @ 0x0801739C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _080173E0 @ =0x02039630
	ldr r0, [r4, #0x5c]
	adds r1, r5, #0
	bl sub_08013454
	adds r2, r0, #0
	movs r0, #0xd8
	lsls r0, r0, #8
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	bl sub_08003D38
	ldr r0, [r4, #0x5c]
	adds r1, r5, #0
	bl sub_08013468
	adds r2, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080173E0: .4byte 0x02039630
	thumb_func_end sub_0801739C

	thumb_func_start sub_080173E4
sub_080173E4: @ 0x080173E4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _08017424 @ =0x02039630
	ldr r0, [r0, #0x5c]
	adds r1, r3, #0
	bl sub_0801347C
	adds r2, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r3, #0xb0
	lsls r3, r3, #2
	movs r0, #0xa0
	str r0, [sp]
	subs r0, #0xa1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08003F8C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017424: .4byte 0x02039630
	thumb_func_end sub_080173E4

	thumb_func_start sub_08017428
sub_08017428: @ 0x08017428
	push {lr}
	sub sp, #0xc
	movs r3, #0xa0
	lsls r3, r3, #6
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0xf0
	lsls r0, r0, #7
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0xf1
	movs r2, #0
	bl sub_08000DE4
	add sp, #0xc
	pop {r0}
	bx r0
	thumb_func_end sub_08017428

	thumb_func_start sub_08017450
sub_08017450: @ 0x08017450
	push {lr}
	movs r0, #0
	bl sub_0800FDE4
	movs r0, #1
	bl sub_0800FE28
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017450

	thumb_func_start sub_08017464
sub_08017464: @ 0x08017464
	push {lr}
	movs r0, #0
	bl sub_0800FE94
	bl sub_0800FE34
	pop {r0}
	bx r0
	thumb_func_end sub_08017464

	thumb_func_start sub_08017474
sub_08017474: @ 0x08017474
	push {lr}
	ldr r0, _08017484 @ =0x02039760
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bne _08017488
	movs r0, #2
	b _0801749A
	.align 2, 0
_08017484: .4byte 0x02039760
_08017488:
	cmp r0, #7
	bne _08017490
	movs r0, #3
	b _0801749A
_08017490:
	cmp r0, #0
	beq _08017498
	movs r0, #1
	b _0801749A
_08017498:
	movs r0, #0
_0801749A:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08017474

	thumb_func_start sub_080174A0
sub_080174A0: @ 0x080174A0
	ldr r1, _080174A8 @ =0x02039760
	str r0, [r1]
	bx lr
	.align 2, 0
_080174A8: .4byte 0x02039760
	thumb_func_end sub_080174A0

	thumb_func_start sub_080174AC
sub_080174AC: @ 0x080174AC
	push {r4, r5, r6, lr}
	ldr r6, _080174C8 @ =0x02039760
	bl sub_08000480
	adds r5, r0, #0
	ldr r0, [r6]
	cmp r0, #2
	beq _080174EE
	cmp r0, #2
	bgt _080174CC
	cmp r0, #1
	beq _080174D2
	b _0801751A
	.align 2, 0
_080174C8: .4byte 0x02039760
_080174CC:
	cmp r0, #3
	beq _0801750C
	b _0801751A
_080174D2:
	movs r4, #0
	str r4, [r6, #8]
	str r0, [r6, #4]
	bl sub_08017464
	bl sub_08017428
	movs r0, #0x1e
	adds r1, r5, #0
	bl sub_0804449C
	str r0, [r6, #0x10]
	str r4, [r6]
	b _080176B0
_080174EE:
	movs r0, #1
	str r0, [r6, #8]
	str r0, [r6, #4]
	bl sub_08017464
	bl sub_08017428
	movs r0, #0x40
	adds r1, r5, #0
	bl sub_0804449C
	str r0, [r6, #0x10]
	movs r0, #0
	str r0, [r6]
	b _080176B0
_0801750C:
	movs r4, #0
	str r4, [r6, #4]
	bl sub_08017464
	bl sub_08017428
	str r4, [r6]
_0801751A:
	ldr r0, [r6, #4]
	subs r0, #1
	cmp r0, #9
	bls _08017524
	b _080176B0
_08017524:
	lsls r0, r0, #2
	ldr r1, _08017530 @ =_08017534
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08017530: .4byte _08017534
_08017534: @ jump table
	.4byte _0801755C @ case 0
	.4byte _08017566 @ case 1
	.4byte _0801757A @ case 2
	.4byte _0801758A @ case 3
	.4byte _080175A6 @ case 4
	.4byte _08017622 @ case 5
	.4byte _08017634 @ case 6
	.4byte _08017638 @ case 7
	.4byte _08017670 @ case 8
	.4byte _080176A8 @ case 9
_0801755C:
	ldr r0, [r6, #8]
	bl sub_0801739C
	movs r0, #2
	b _080176AE
_08017566:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	movs r2, #0
	bl sub_080173E4
	movs r0, #1
	str r0, [r6, #0xc]
	movs r0, #3
	b _080176AE
_0801757A:
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
	cmp r0, #0
	ble _08017586
	b _080176B0
_08017586:
	movs r0, #4
	b _080176AE
_0801758A:
	movs r4, #0
_0801758C:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, #0x9f
	ble _0801758C
	bl sub_08017450
	movs r0, #5
	b _080176AE
_080175A6:
	bl sub_08000480
	adds r1, r0, #0
	lsls r1, r1, #2
	movs r0, #0x28
	bl sub_08044648
	ldr r1, [r6, #0xc]
	cmp r1, r0
	bhi _080175F6
	bl sub_08000480
	ldr r1, [r6, #0xc]
	lsls r1, r1, #2
	muls r0, r1, r0
	movs r4, #0x50
	subs r4, r4, r0
	bl sub_08000480
	ldr r1, [r6, #0xc]
	lsls r1, r1, #2
	muls r0, r1, r0
	adds r5, r0, #0
	adds r5, #0x50
	cmp r4, r5
	bge _080175EE
_080175DA:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, r5
	blt _080175DA
_080175EE:
	ldr r0, [r6, #0xc]
	adds r0, #1
	str r0, [r6, #0xc]
	b _080176B0
_080175F6:
	movs r4, #0
_080175F8:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800FE68
	adds r4, #1
	cmp r4, #0x9f
	ble _080175F8
	ldr r0, [r6, #8]
	movs r1, #0
	movs r2, #1
	bl sub_080173E4
	movs r0, #4
	adds r1, r5, #0
	bl sub_0804449C
	str r0, [r6, #0xc]
	movs r0, #6
	b _080176AE
_08017622:
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
	cmp r0, #0
	bgt _080176B0
	ldr r0, [r6, #0x10]
	str r0, [r6, #0xc]
	movs r0, #7
	b _080176AE
_08017634:
	movs r0, #8
	b _080176AE
_08017638:
	ldr r0, [r6, #0xc]
	subs r0, #1
	str r0, [r6, #0xc]
	cmp r0, #0
	bgt _080176B0
	ldr r0, _08017660 @ =0x00003E41
	bl sub_0800FE94
	movs r0, #0x20
	adds r1, r5, #0
	bl sub_0804449C
	str r0, [r6, #0xc]
	cmp r5, #1
	bne _08017664
	movs r0, #0x10
	movs r1, #0
	bl sub_0800FEA4
	b _0801766C
	.align 2, 0
_08017660: .4byte 0x00003E41
_08017664:
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_0800FEA4
_0801766C:
	movs r0, #9
	b _080176AE
_08017670:
	ldr r0, [r6, #0xc]
	subs r2, r0, #1
	str r2, [r6, #0xc]
	cmp r2, #0
	bgt _08017688
	bl sub_08017428
	movs r0, #0
	bl sub_0800FE94
	movs r0, #0xa
	b _080176AE
_08017688:
	cmp r5, #1
	bne _0801769C
	lsrs r0, r2, #0x1f
	adds r0, r2, r0
	asrs r0, r0, #1
	movs r1, #0x10
	subs r1, r1, r0
	bl sub_0800FEA4
	b _080176B0
_0801769C:
	movs r1, #0x10
	subs r1, r1, r2
	adds r0, r2, #0
	bl sub_0800FEA4
	b _080176B0
_080176A8:
	bl sub_08017464
	movs r0, #0
_080176AE:
	str r0, [r6, #4]
_080176B0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080174AC

	thumb_func_start sub_080176B8
sub_080176B8: @ 0x080176B8
	push {lr}
	ldr r1, _080176D8 @ =0x02039760
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	bl sub_080035FC
	ldr r1, _080176DC @ =sub_080174AC
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_080176D8: .4byte 0x02039760
_080176DC: .4byte sub_080174AC
	thumb_func_end sub_080176B8

	thumb_func_start sub_080176E0
sub_080176E0: @ 0x080176E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _080176F6
	bl sub_08017464
	adds r0, r4, #0
	bl sub_08003450
_080176F6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080176E0

	thumb_func_start sub_080176FC
sub_080176FC: @ 0x080176FC
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _0801770C @ =sub_080176B8
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0801770C: .4byte sub_080176B8
	thumb_func_end sub_080176FC

	thumb_func_start sub_08017710
sub_08017710: @ 0x08017710
	push {lr}
	sub sp, #4
	movs r2, #0x40
	cmp r0, #0
	bne _0801771C
	movs r2, #0x3f
_0801771C:
	movs r0, #0x81
	lsls r0, r0, #9
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	thumb_func_end sub_08017710

	thumb_func_start sub_08017730
sub_08017730: @ 0x08017730
	push {lr}
	sub sp, #0x18
	movs r2, #0x47
	cmp r0, #0
	bne _0801773C
	movs r2, #0x3d
_0801773C:
	ldr r0, _0801777C @ =0x02039630
	adds r0, #0xb4
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	ldr r0, _08017780 @ =0x020397D4
	ldr r0, [r0]
	adds r0, #0x10
	ldr r1, _08017784 @ =0x000001B3
	str r1, [sp]
	movs r1, #5
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #0xcc
	lsls r1, r1, #8
	str r1, [sp, #0xc]
	lsls r1, r2, #8
	str r1, [sp, #0x10]
	movs r1, #0xc8
	str r1, [sp, #0x14]
	movs r1, #0
	movs r2, #0x70
	movs r3, #0
	bl sub_08016104
	add sp, #0x18
	pop {r0}
	bx r0
	.align 2, 0
_0801777C: .4byte 0x02039630
_08017780: .4byte 0x020397D4
_08017784: .4byte 0x000001B3
	thumb_func_end sub_08017730

	thumb_func_start sub_08017788
sub_08017788: @ 0x08017788
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	movs r1, #0x42
	cmp r6, #0
	bne _08017796
	movs r1, #0x38
_08017796:
	ldr r4, _08017830 @ =0x020397D4
	ldr r5, [r4]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	lsls r0, r1, #8
	str r0, [sp, #0x10]
	movs r0, #0xbe
	str r0, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x42
	movs r3, #0
	bl sub_0801608C
	ldr r0, [r4]
	adds r5, r0, #0
	adds r5, #0x20
	ldr r1, _08017834 @ =0x0821B8CC
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r4, [r0]
	movs r6, #0
	ldr r1, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017826
	ldr r7, _08017838 @ =0x020396E6
_080177DC:
	ldr r3, [r4, #8]
	movs r0, #0x89
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	str r0, [sp, #0x10]
	movs r0, #0xc8
	str r0, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x5d
	bl sub_0801608C
	adds r0, r6, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08017816
	ldr r0, [r5, #4]
	movs r1, #8
	bl sub_0800257C
_08017816:
	adds r5, #0x10
	adds r4, #0xc
	adds r6, #1
	ldr r1, [r4, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080177DC
_08017826:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017830: .4byte 0x020397D4
_08017834: .4byte 0x0821B8CC
_08017838: .4byte 0x020396E6
	thumb_func_end sub_08017788

	thumb_func_start sub_0801783C
sub_0801783C: @ 0x0801783C
	push {r4, r5, lr}
	ldr r0, _08017860 @ =0x020397D4
	ldr r4, [r0]
	movs r5, #6
_08017844:
	ldr r0, [r4]
	cmp r0, #0
	beq _08017850
	adds r0, r4, #0
	bl sub_0801600C
_08017850:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08017844
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017860: .4byte 0x020397D4
	thumb_func_end sub_0801783C

	thumb_func_start sub_08017864
sub_08017864: @ 0x08017864
	push {r4, r5, lr}
	ldr r0, _08017890 @ =0x020397D4
	ldr r4, [r0]
	movs r5, #6
_0801786C:
	ldr r0, [r4]
	cmp r0, #0
	beq _08017882
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_08017882:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801786C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017890: .4byte 0x020397D4
	thumb_func_end sub_08017864

	thumb_func_start sub_08017894
sub_08017894: @ 0x08017894
	ldr r0, _0801789C @ =0x020397B0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_0801789C: .4byte 0x020397B0
	thumb_func_end sub_08017894

	thumb_func_start sub_080178A0
sub_080178A0: @ 0x080178A0
	ldr r1, _080178A8 @ =0x020397B0
	str r0, [r1]
	bx lr
	.align 2, 0
_080178A8: .4byte 0x020397B0
	thumb_func_end sub_080178A0

	thumb_func_start sub_080178AC
sub_080178AC: @ 0x080178AC
	push {r4, r5, lr}
	ldr r0, _080178D4 @ =0x020397D4
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x60
	movs r5, #6
_080178B8:
	ldr r0, [r4]
	cmp r0, #0
	beq _080178C4
	ldr r0, [r4, #4]
	bl sub_08002B30
_080178C4:
	subs r5, #1
	subs r4, #0x10
	cmp r5, #0
	bge _080178B8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080178D4: .4byte 0x020397D4
	thumb_func_end sub_080178AC

	thumb_func_start sub_080178D8
sub_080178D8: @ 0x080178D8
	push {r4, r5, lr}
	ldr r5, _080178EC @ =0x020397B0
	ldr r4, [r5]
	cmp r4, #2
	beq _08017908
	cmp r4, #2
	bgt _080178F0
	cmp r4, #1
	beq _080178FA
	b _08017928
	.align 2, 0
_080178EC: .4byte 0x020397B0
_080178F0:
	cmp r4, #3
	beq _08017918
	cmp r4, #4
	beq _08017920
	b _08017928
_080178FA:
	bl sub_0801783C
	movs r0, #0
	str r0, [r5, #8]
	str r4, [r5, #4]
	str r0, [r5]
	b _08017952
_08017908:
	bl sub_0801783C
	movs r0, #1
	str r0, [r5, #8]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5]
	b _08017952
_08017918:
	ldr r0, [r5, #8]
	bl sub_08017730
	b _08017924
_08017920:
	bl sub_0801783C
_08017924:
	movs r0, #0
	str r0, [r5]
_08017928:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _08017934
	cmp r0, #2
	beq _0801793E
	b _0801794E
_08017934:
	ldr r0, [r5, #8]
	bl sub_08017710
	movs r0, #2
	b _0801794C
_0801793E:
	ldr r0, [r5, #8]
	bl sub_08017730
	ldr r0, [r5, #8]
	bl sub_08017788
	movs r0, #0
_0801794C:
	str r0, [r5, #4]
_0801794E:
	bl sub_08017864
_08017952:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080178D8

	thumb_func_start sub_08017958
sub_08017958: @ 0x08017958
	push {lr}
	ldr r1, _08017974 @ =0x020397B0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	bl sub_080035FC
	ldr r1, _08017978 @ =sub_080178D8
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08017974: .4byte 0x020397B0
_08017978: .4byte sub_080178D8
	thumb_func_end sub_08017958

	thumb_func_start sub_0801797C
sub_0801797C: @ 0x0801797C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08017992
	bl sub_0801783C
	adds r0, r4, #0
	bl sub_08003450
_08017992:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801797C

	thumb_func_start sub_08017998
sub_08017998: @ 0x08017998
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080179A8 @ =sub_08017958
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_080179A8: .4byte sub_08017958
	thumb_func_end sub_08017998

	thumb_func_start sub_080179AC
sub_080179AC: @ 0x080179AC
	push {lr}
	sub sp, #0x18
	ldr r0, _080179E4 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r2, #0
	str r2, [sp]
	movs r1, #0xf
	str r1, [sp, #4]
	str r2, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [sp, #0xc]
	movs r1, #0xe8
	lsls r1, r1, #7
	str r1, [sp, #0x10]
	movs r1, #0xaa
	str r1, [sp, #0x14]
	movs r1, #0
	movs r2, #0xd4
	movs r3, #0
	bl sub_08016104
	add sp, #0x18
	pop {r0}
	bx r0
	.align 2, 0
_080179E4: .4byte 0x020397D4
	thumb_func_end sub_080179AC

	thumb_func_start sub_080179E8
sub_080179E8: @ 0x080179E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r0, _08017AD0 @ =0x020397D4
	mov sl, r0
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r7, r0, r1
	ldr r6, [r7]
	cmp r6, #0
	bne _08017AC0
	ldr r0, _08017AD4 @ =0x0821B8D4
	bl sub_0801617C
	movs r0, #0xf8
	lsls r0, r0, #2
	str r6, [sp]
	movs r1, #0
	movs r2, #0xd3
	movs r3, #0
	bl sub_08003E7C
	movs r0, #0xa8
	lsls r0, r0, #2
	str r6, [sp]
	movs r1, #0
	movs r2, #0x6d
	movs r3, #0
	bl sub_08003E7C
	movs r0, #0xe0
	lsls r0, r0, #1
	str r6, [sp]
	movs r1, #0
	movs r2, #0x76
	movs r3, #0
	bl sub_08003E7C
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r7, r0, r1
	ldr r0, _08017AD8 @ =0x000001B3
	str r0, [sp]
	movs r1, #5
	mov r8, r1
	str r1, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0xa7
	lsls r0, r0, #8
	mov sb, r0
	str r0, [sp, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [sp, #0x10]
	movs r4, #0xc8
	str r4, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x72
	movs r3, #0
	bl sub_08016104
	ldr r0, [r7, #4]
	movs r1, #1
	bl sub_08002734
	ldr r0, [r7, #4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r5, #0
	bl sub_080026B0
	mov r1, sl
	ldr r0, [r1]
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r7, r0, r1
	ldr r0, _08017AD8 @ =0x000001B3
	str r0, [sp]
	mov r1, r8
	str r1, [sp, #4]
	str r6, [sp, #8]
	mov r0, sb
	str r0, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x74
	movs r3, #0
	bl sub_08016104
	ldr r0, [r7, #4]
	movs r1, #1
	bl sub_08002734
	ldr r0, [r7, #4]
	adds r1, r5, #0
	bl sub_080026B0
_08017AC0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017AD0: .4byte 0x020397D4
_08017AD4: .4byte 0x0821B8D4
_08017AD8: .4byte 0x000001B3
	thumb_func_end sub_080179E8

	thumb_func_start sub_08017ADC
sub_08017ADC: @ 0x08017ADC
	push {lr}
	adds r2, r1, #0
	ldr r1, _08017B00 @ =0x020397D4
	lsls r0, r0, #4
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _08017AFC
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl sub_08002734
_08017AFC:
	pop {r0}
	bx r0
	.align 2, 0
_08017B00: .4byte 0x020397D4
	thumb_func_end sub_08017ADC

	thumb_func_start sub_08017B04
sub_08017B04: @ 0x08017B04
	push {r4, r5, lr}
	movs r1, #1
	cmp r0, #1
	bne _08017B0E
	movs r1, #3
_08017B0E:
	ldr r0, _08017B38 @ =0x020397D4
	ldr r0, [r0]
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r0, r2
	cmp r1, #0
	beq _08017B32
	adds r5, r1, #0
_08017B1E:
	ldr r0, [r4]
	cmp r0, #0
	beq _08017B2A
	adds r0, r4, #0
	bl sub_0801600C
_08017B2A:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bne _08017B1E
_08017B32:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017B38: .4byte 0x020397D4
	thumb_func_end sub_08017B04

	thumb_func_start sub_08017B3C
sub_08017B3C: @ 0x08017B3C
	push {r4, r5, lr}
	ldr r0, _08017B70 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #2
_08017B4A:
	ldr r0, [r4]
	cmp r0, #0
	beq _08017B60
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_08017B60:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08017B4A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017B70: .4byte 0x020397D4
	thumb_func_end sub_08017B3C

	thumb_func_start sub_08017B74
sub_08017B74: @ 0x08017B74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	ldr r4, _08017BE0 @ =0x02039630
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	movs r0, #0xc
	bl sub_0804449C
	ldr r1, [r4, #0x7c]
	adds r2, r0, #0
	muls r2, r1, r2
	str r2, [sp, #0x14]
	adds r0, r0, r2
	mov r8, r0
	ldr r4, _08017BE4 @ =0x000002BE
	movs r5, #0xe0
	str r5, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xea
	movs r1, #0
	movs r2, #0xcc
	adds r3, r4, #0
	bl sub_08003F8C
	movs r6, #0
	mov sl, r5
	movs r4, #0x95
	lsls r4, r4, #1
	ldr r0, _08017BE8 @ =0x02BE0000
	mov sb, r0
_08017BC8:
	ldr r1, [sp, #0x14]
	cmp r6, r1
	blt _08017BF0
	cmp r6, r8
	bge _08017BF0
	ldr r0, [r7, #0x34]
	lsls r0, r0, #2
	ldr r2, _08017BEC @ =0x0821B910
	adds r0, r0, r2
	ldr r2, [r0]
	b _08017BF2
	.align 2, 0
_08017BE0: .4byte 0x02039630
_08017BE4: .4byte 0x000002BE
_08017BE8: .4byte 0x02BE0000
_08017BEC: .4byte 0x0821B910
_08017BF0:
	movs r2, #0xca
_08017BF2:
	mov r5, sl
	str r5, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	mov r5, sb
	lsrs r3, r5, #0x10
	bl sub_08003F8C
	adds r4, #0x40
	adds r6, #1
	cmp r6, #0xb
	ble _08017BC8
	ldr r0, [sp, #0x14]
	str r0, [r7, #0x3c]
	mov r1, r8
	str r1, [r7, #0x40]
	ldr r0, _08017C34 @ =0x02039630
	ldr r0, [r0, #0x7c]
	cmp r0, #0
	ble _08017C38
	movs r0, #0
	movs r1, #0
	bl sub_08017ADC
	b _08017C40
	.align 2, 0
_08017C34: .4byte 0x02039630
_08017C38:
	movs r0, #0
	movs r1, #1
	bl sub_08017ADC
_08017C40:
	ldr r1, _08017C5C @ =0x02039630
	adds r0, r1, #0
	adds r0, #0x80
	ldr r0, [r0]
	subs r0, #1
	ldr r1, [r1, #0x7c]
	cmp r1, r0
	bge _08017C60
	movs r0, #1
	movs r1, #0
	bl sub_08017ADC
	b _08017C68
	.align 2, 0
_08017C5C: .4byte 0x02039630
_08017C60:
	movs r0, #1
	movs r1, #1
	bl sub_08017ADC
_08017C68:
	movs r0, #0x10
	lsls r0, r0, #5
	adds r0, #0x15
	lsls r0, r0, #1
	ldr r2, _08017CB0 @ =0x02BE0000
	lsrs r3, r2, #0x10
	movs r5, #0xe0
	lsls r5, r5, #0x18
	lsrs r1, r5, #0x18
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r4, #1
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r1, #0
	movs r2, #0xcd
	bl sub_08003F8C
	str r4, [r7, #0x30]
	ldr r0, [r7, #0x38]
	subs r0, #1
	cmp r0, #0
	bgt _08017CA0
	movs r0, #3
	str r0, [r7, #0x38]
_08017CA0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017CB0: .4byte 0x02BE0000
	thumb_func_end sub_08017B74

	thumb_func_start sub_08017CB4
sub_08017CB4: @ 0x08017CB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _08017D1A
	ldr r0, [r4, #0x38]
	subs r0, #1
	str r0, [r4, #0x38]
	cmp r0, #0
	bgt _08017D1A
	movs r5, #0
	ldr r7, _08017D24 @ =0x0821B910
	movs r6, #0x95
	lsls r6, r6, #1
_08017CD2:
	ldr r0, [r4, #0x3c]
	cmp r5, r0
	blt _08017D00
	ldr r0, [r4, #0x40]
	cmp r5, r0
	bge _08017D00
	ldr r0, [r4, #0x34]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r2, [r0]
	movs r0, #0xe0
	str r0, [sp]
	subs r0, #0xe1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	movs r1, #0
	ldr r3, _08017D28 @ =0x000002BE
	bl sub_08003F8C
_08017D00:
	adds r6, #0x40
	adds r5, #1
	cmp r5, #0xb
	ble _08017CD2
	ldr r0, [r4, #0x34]
	adds r0, #1
	str r0, [r4, #0x34]
	cmp r0, #7
	ble _08017D16
	movs r0, #0
	str r0, [r4, #0x34]
_08017D16:
	movs r0, #3
	str r0, [r4, #0x38]
_08017D1A:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017D24: .4byte 0x0821B910
_08017D28: .4byte 0x000002BE
	thumb_func_end sub_08017CB4

	thumb_func_start sub_08017D2C
sub_08017D2C: @ 0x08017D2C
	push {lr}
	sub sp, #0x14
	ldr r3, _08017D54 @ =0x0000021E
	movs r1, #0xe0
	str r1, [sp]
	subs r1, #0xe1
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xc0
	movs r1, #0
	movs r2, #0xc6
	bl sub_08003F8C
	add sp, #0x14
	pop {r0}
	bx r0
	.align 2, 0
_08017D54: .4byte 0x0000021E
	thumb_func_end sub_08017D2C

	thumb_func_start sub_08017D58
sub_08017D58: @ 0x08017D58
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #4
	ldr r2, _08017D94 @ =0x0821B930
	adds r0, r0, r2
	lsls r4, r4, #5
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldrh r3, [r0, #8]
	ldrb r0, [r0, #0xc]
	str r0, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	bl sub_08003F8C
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08017D94: .4byte 0x0821B930
	thumb_func_end sub_08017D58

	thumb_func_start sub_08017D98
sub_08017D98: @ 0x08017D98
	push {lr}
	sub sp, #0xc
	adds r2, r1, #0
	cmp r0, #0
	bne _08017DB0
	ldr r1, _08017DAC @ =0x0000E21E
	movs r0, #0
	bl sub_08000E44
	b _08017DCC
	.align 2, 0
_08017DAC: .4byte 0x0000E21E
_08017DB0:
	ldr r1, _08017DD4 @ =0x0000E21E
	movs r3, #0xc0
	lsls r3, r3, #5
	movs r0, #0xa8
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x88
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0
	movs r2, #0
	bl sub_08000DE4
_08017DCC:
	add sp, #0xc
	pop {r0}
	bx r0
	.align 2, 0
_08017DD4: .4byte 0x0000E21E
	thumb_func_end sub_08017D98

	thumb_func_start sub_08017DD8
sub_08017DD8: @ 0x08017DD8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r5, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08017E04 @ =0x0821B950
	adds r7, r1, r0
	movs r4, #0xf0
	cmp r2, #0
	bne _08017DF6
	movs r4, #0xe0
_08017DF6:
	adds r6, r3, #0
	ldr r0, [sp, #0x30]
	mov sb, r0
	lsls r4, r4, #0x18
	mov r8, r4
	b _08017E0A
	.align 2, 0
_08017E04: .4byte 0x0821B950
_08017E08:
	subs r6, #2
_08017E0A:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08044578
	ldr r2, [r7, #4]
	adds r2, r2, r0
	mov r1, sb
	lsls r0, r1, #5
	adds r0, r0, r6
	lsls r0, r0, #1
	ldr r1, [r7]
	ldrh r3, [r7, #8]
	mov r4, r8
	lsrs r4, r4, #0x18
	str r4, [sp]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r4, #1
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x10]
	bl sub_08003F8C
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804449C
	adds r5, r0, #0
	cmp r5, #0
	bne _08017E08
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08017DD8

	thumb_func_start sub_08017E58
sub_08017E58: @ 0x08017E58
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	ldr r6, [sp, #0x24]
	lsls r0, r0, #4
	ldr r2, _08017E9C @ =0x0821B968
	adds r0, r0, r2
	lsls r4, r4, #5
	adds r4, r4, r1
	lsls r4, r4, #1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	ldrh r5, [r0, #8]
	ldr r0, [r0, #0xc]
	lsls r3, r3, #4
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	adds r0, r4, #0
	adds r3, r5, #0
	bl sub_08003F8C
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08017E9C: .4byte 0x0821B968
	thumb_func_end sub_08017E58

	thumb_func_start sub_08017EA0
sub_08017EA0: @ 0x08017EA0
	push {lr}
	sub sp, #4
	ldr r3, _08017EDC @ =0x0821BA54
	lsls r2, r0, #3
	adds r2, r2, r3
	ldr r2, [r2]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r0, r0, #5
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r0, r2
	ldr r2, _08017EE0 @ =0x0821B988
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08017EDC: .4byte 0x0821BA54
_08017EE0: .4byte 0x0821B988
	thumb_func_end sub_08017EA0

	thumb_func_start sub_08017EE4
sub_08017EE4: @ 0x08017EE4
	push {r4, lr}
	sub sp, #0x14
	ldr r4, _08017F24 @ =0x0821BB24
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r2, r2, #5
	adds r2, r2, r1
	lsls r2, r2, #1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r2, r1
	movs r1, #0x16
	str r1, [sp]
	movs r1, #0x40
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r1, r2, #0
	movs r2, #0x16
	movs r3, #2
	bl sub_08002E7C
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08017F24: .4byte 0x0821BB24
	thumb_func_end sub_08017EE4

	thumb_func_start sub_08017F28
sub_08017F28: @ 0x08017F28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r0, r2, #0
	adds r5, r3, #0
	lsls r3, r6, #1
	adds r3, r3, r6
	lsls r3, r3, #2
	ldr r2, _08017F7C @ =0x0821BB34
	adds r3, r3, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r3]
	ldr r2, [r3, #4]
	ldrh r3, [r3, #8]
	movs r4, #0xf0
	str r4, [sp]
	subs r4, #0xf1
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r7, #1
	str r7, [sp, #0xc]
	str r5, [sp, #0x10]
	bl sub_08003F8C
	ldr r4, _08017F80 @ =0x02039830
	ldr r0, [r4, #0x44]
	cmp r0, #0
	bne _08017F74
	adds r0, r6, #0
	cmp r0, #4
	ble _08017F6C
	movs r0, #4
_08017F6C:
	adds r0, #0x6b
	bl sub_080102B4
	str r7, [r4, #0x44]
_08017F74:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08017F7C: .4byte 0x0821BB34
_08017F80: .4byte 0x02039830
	thumb_func_end sub_08017F28

	thumb_func_start sub_08017F84
sub_08017F84: @ 0x08017F84
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r1, [r6, #0x10]
	adds r0, r1, #0
	cmp r1, #0
	bge _08017F94
	adds r0, r1, #3
_08017F94:
	asrs r5, r0, #2
	lsls r0, r5, #2
	subs r5, r1, r0
	lsls r4, r5, #1
	lsls r0, r1, #2
	adds r0, r6, r0
	adds r0, #0x48
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r5, #0
	movs r2, #0
	bl sub_08017EA0
	adds r7, r4, #4
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	movs r3, #1
	bl sub_08017EE4
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r6, r0
	adds r2, r0, #0
	adds r2, #0x4a
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08017FF2
	str r7, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r0, #1
	movs r2, #0
	movs r3, #0x10
	bl sub_08017DD8
	str r4, [sp]
	movs r0, #0
	movs r1, #0x12
	adds r2, r7, #0
	movs r3, #0
	bl sub_08017E58
	b _08018016
_08017FF2:
	movs r0, #0
	movs r1, #0xe
	adds r2, r7, #0
	movs r3, #1
	bl sub_08017D58
	movs r0, #0
	movs r1, #0x10
	adds r2, r7, #0
	movs r3, #1
	bl sub_08017D58
	movs r0, #0
	movs r1, #0x12
	adds r2, r7, #0
	movs r3, #1
	bl sub_08017D58
_08018016:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08017F84

	thumb_func_start sub_08018020
sub_08018020: @ 0x08018020
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	movs r6, #1
	cmp r1, #0
	beq _08018034
	movs r6, #3
	cmp r1, #1
	bne _08018034
	movs r6, #2
_08018034:
	movs r4, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _080180A0
	ldr r1, [r7, #0x20]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801805E
	ldr r0, [r7, #0x28]
	cmp r0, #4
	bgt _08018052
	movs r1, #0xe
	b _08018054
_08018052:
	movs r1, #9
_08018054:
	movs r2, #0xc
	movs r3, #1
	bl sub_08017F28
	b _080180A0
_0801805E:
	movs r5, #0xc
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r2, #1
	movs r3, #0xa
	bl sub_08017DD8
	str r4, [sp]
	movs r0, #1
	movs r1, #0xc
	movs r2, #0xc
	movs r3, #1
	bl sub_08017E58
	ldr r1, [r7, #0x1c]
	str r5, [sp]
	str r4, [sp, #4]
	movs r0, #1
	movs r2, #1
	movs r3, #0x10
	bl sub_08017DD8
	str r4, [sp]
	movs r0, #0
	movs r1, #0x12
	movs r2, #0xc
	movs r3, #1
	bl sub_08017E58
	movs r0, #0x3d
	bl sub_08010354
_080180A0:
	movs r0, #2
	ands r0, r6
	cmp r0, #0
	beq _080180C8
	movs r5, #0xe
	ldr r1, [r7, #0x24]
	str r5, [sp]
	movs r4, #1
	str r4, [sp, #4]
	movs r0, #0
	movs r2, #1
	movs r3, #0x12
	bl sub_08017DD8
	ands r6, r4
	cmp r6, #0
	bne _080180C8
	movs r0, #0x3d
	bl sub_08010354
_080180C8:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08018020

	thumb_func_start sub_080180D0
sub_080180D0: @ 0x080180D0
	push {lr}
	ldr r0, _080180E0 @ =0x02039830
	ldr r0, [r0, #4]
	cmp r0, #8
	bne _080180E4
	movs r0, #2
	b _080180EE
	.align 2, 0
_080180E0: .4byte 0x02039830
_080180E4:
	cmp r0, #0
	beq _080180EC
	movs r0, #1
	b _080180EE
_080180EC:
	movs r0, #0
_080180EE:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_080180D0

	thumb_func_start sub_080180F4
sub_080180F4: @ 0x080180F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08018150 @ =0x02039830
	str r5, [r4]
	ldr r0, _08018154 @ =0x02039630
	mov ip, r0
	adds r2, r4, #0
	adds r2, #0x48
	mov r1, ip
	adds r1, #0x84
	movs r3, #0xb
_0801810A:
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	adds r2, #4
	adds r1, #4
	subs r3, #1
	cmp r3, #0
	bge _0801810A
	mov r1, ip
	adds r0, r1, #0
	adds r0, #0x6a
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r4, #0x1c]
	adds r0, r1, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r4, #0x20]
	ldr r0, [r1, #0x6c]
	str r0, [r4, #0x28]
	ldr r0, [r1, #0x70]
	str r0, [r4, #0x24]
	ldr r0, [r1, #0x78]
	str r0, [r4, #0x14]
	cmp r5, #3
	beq _08018160
	cmp r5, #5
	bne _0801815E
	cmp r0, #4
	ble _08018158
	movs r0, #4
	str r0, [r4, #0x10]
	b _08018166
	.align 2, 0
_08018150: .4byte 0x02039830
_08018154: .4byte 0x02039630
_08018158:
	movs r0, #0
	str r0, [r4, #0x10]
	b _08018166
_0801815E:
	mov r1, ip
_08018160:
	ldr r0, [r1, #0x7c]
	lsls r0, r0, #2
	str r0, [r4, #0xc]
_08018166:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080180F4

	thumb_func_start sub_0801816C
sub_0801816C: @ 0x0801816C
	push {lr}
	ldr r1, _08018178 @ =0x02039830
	cmp r0, #0
	bne _0801817C
	movs r0, #2
	b _0801817E
	.align 2, 0
_08018178: .4byte 0x02039830
_0801817C:
	movs r0, #1
_0801817E:
	str r0, [r1, #8]
	pop {r0}
	bx r0
	thumb_func_end sub_0801816C

	thumb_func_start sub_08018184
sub_08018184: @ 0x08018184
	ldr r0, _08018198 @ =0x02039830
	movs r2, #0
	str r2, [r0]
	str r2, [r0, #4]
	str r2, [r0, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0xc]
	str r2, [r0, #0x44]
	bx lr
	.align 2, 0
_08018198: .4byte 0x02039830
	thumb_func_end sub_08018184

	thumb_func_start sub_0801819C
sub_0801819C: @ 0x0801819C
	push {r4, r5, lr}
	ldr r0, _080181C4 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #2
_080181AA:
	ldr r0, [r4]
	cmp r0, #0
	beq _080181B6
	ldr r0, [r4, #4]
	bl sub_08002B30
_080181B6:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _080181AA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080181C4: .4byte 0x020397D4
	thumb_func_end sub_0801819C

	thumb_func_start sub_080181C8
sub_080181C8: @ 0x080181C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080181E4 @ =0x02039830
	ldr r0, [r5]
	subs r0, #1
	cmp r0, #4
	bhi _080182A0
	lsls r0, r0, #2
	ldr r1, _080181E8 @ =_080181EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080181E4: .4byte 0x02039830
_080181E8: .4byte _080181EC
_080181EC: @ jump table
	.4byte _08018200 @ case 0
	.4byte _08018232 @ case 1
	.4byte _08018260 @ case 2
	.4byte _08018254 @ case 3
	.4byte _08018286 @ case 4
_08018200:
	movs r0, #0
	movs r1, #1
	bl sub_08017D98
	bl sub_080179E8
	ldr r0, [r5, #0xc]
	str r0, [r5, #0x10]
	movs r2, #0
	str r2, [r5, #0x78]
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #0x90
	lsls r0, r0, #5
	str r0, [r1]
	adds r1, #4
	movs r0, #0xb3
	str r0, [r1]
	movs r0, #1
	str r0, [r5, #4]
	str r2, [r5]
	b _080184AC
_08018232:
	movs r0, #1
	movs r1, #1
	bl sub_08017D98
	movs r0, #1
	bl sub_08017B04
	movs r1, #0
	str r1, [r5, #0x30]
	str r1, [r5, #0x34]
	movs r0, #3
	str r0, [r5, #0x38]
	str r1, [r5, #0x3c]
	str r1, [r5, #0x40]
	str r1, [r5, #4]
	str r1, [r5]
	b _080182A0
_08018254:
	movs r0, #1
	bl sub_08017D2C
	adds r0, r5, #0
	bl sub_08017B74
_08018260:
	movs r0, #1
	bl sub_08017D2C
	bl sub_080179E8
	ldr r0, [r5, #0xc]
	str r0, [r5, #0x10]
	movs r1, #0
	str r1, [r5, #0x78]
	str r1, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	movs r0, #7
	str r0, [r5, #4]
	str r1, [r5]
	b _080184AC
_08018286:
	movs r0, #1
	movs r1, #1
	movs r2, #0xe
	movs r3, #1
	bl sub_08017D58
	adds r0, r5, #0
	movs r1, #1
	bl sub_08018020
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5]
_080182A0:
	ldr r0, [r5, #4]
	subs r0, #1
	cmp r0, #7
	bls _080182AA
	b _08018470
_080182AA:
	lsls r0, r0, #2
	ldr r1, _080182B4 @ =_080182B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080182B4: .4byte _080182B8
_080182B8: @ jump table
	.4byte _080182D8 @ case 0
	.4byte _080182EA @ case 1
	.4byte _08018346 @ case 2
	.4byte _0801836A @ case 3
	.4byte _080183B6 @ case 4
	.4byte _080183C6 @ case 5
	.4byte _080183DC @ case 6
	.4byte _0801846C @ case 7
_080182D8:
	movs r0, #1
	bl sub_08017D2C
	movs r0, #0x1e
	str r0, [r5, #0x2c]
	movs r0, #0
	str r0, [r5, #0x18]
	movs r0, #2
	b _0801846E
_080182EA:
	ldr r1, [r5, #0x7c]
	cmp r1, #0
	ble _08018318
	adds r2, r5, #0
	adds r2, #0x80
	ldr r0, [r2]
	subs r0, r1, r0
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	ble _0801830E
	b _08018470
_0801830E:
	movs r0, #0
	str r0, [r5, #0x7c]
	str r0, [r2]
	movs r0, #3
	b _0801846E
_08018318:
	cmp r1, #0
	blt _0801831E
	b _08018470
_0801831E:
	adds r2, r5, #0
	adds r2, #0x80
	ldr r0, [r2]
	adds r0, r1, r0
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r0, [r2]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	bge _0801833C
	b _08018470
_0801833C:
	movs r0, #0
	str r0, [r5, #0x7c]
	str r0, [r2]
	movs r0, #3
	b _0801846E
_08018346:
	ldr r0, [r5, #0x2c]
	subs r0, #1
	str r0, [r5, #0x2c]
	cmp r0, #0
	ble _08018352
	b _08018470
_08018352:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _0801835E
	movs r0, #5
	b _0801846E
_0801835E:
	cmp r1, #4
	bne _08018366
	movs r0, #1
	str r0, [r5, #0x18]
_08018366:
	movs r0, #4
	b _0801846E
_0801836A:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0801839C
	movs r0, #0
	movs r1, #0xe
	movs r2, #4
	movs r3, #1
	bl sub_08017D58
	movs r0, #1
	mov r8, r0
	movs r4, #6
	movs r7, #2
_08018384:
	movs r0, #1
	mov r1, r8
	adds r2, r4, #0
	movs r3, #1
	bl sub_08017D58
	adds r4, #2
	subs r7, #1
	cmp r7, #0
	bge _08018384
	movs r0, #0
	str r0, [r5, #0x18]
_0801839C:
	adds r0, r5, #0
	bl sub_08017F84
	movs r0, #0x3d
	bl sub_08010354
	ldr r0, [r5, #0x10]
	adds r0, #1
	str r0, [r5, #0x10]
	movs r0, #0x1e
	str r0, [r5, #0x2c]
	movs r0, #3
	b _0801846E
_080183B6:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08018020
	movs r0, #0x1e
	str r0, [r5, #0x2c]
	movs r0, #6
	b _0801846E
_080183C6:
	ldr r0, [r5, #0x2c]
	subs r0, #1
	str r0, [r5, #0x2c]
	cmp r0, #0
	bgt _08018470
	adds r0, r5, #0
	movs r1, #1
	bl sub_08018020
	movs r0, #8
	b _0801846E
_080183DC:
	movs r6, #0
	movs r7, #4
	ldr r0, [r5, #0x10]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0x48
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08018416
	adds r4, r1, #0
_080183F6:
	adds r0, r5, #0
	bl sub_08017F84
	ldr r0, [r5, #0x10]
	adds r0, #1
	str r0, [r5, #0x10]
	adds r6, #1
	cmp r6, r7
	bge _08018416
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0x48
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r4
	bne _080183F6
_08018416:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _08018448
	movs r0, #1
	mov r8, r0
	lsls r0, r6, #1
	adds r4, r0, #4
	cmp r6, #3
	bgt _0801843E
_0801842A:
	movs r0, #1
	mov r1, r8
	adds r2, r4, #0
	movs r3, #1
	bl sub_08017D58
	adds r4, #2
	adds r6, #1
	cmp r6, #3
	ble _0801842A
_0801843E:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08018020
	b _08018468
_08018448:
	movs r1, #1
	mov r8, r1
	lsls r0, r6, #1
	adds r4, r0, #4
	cmp r6, #5
	bgt _08018468
_08018454:
	movs r0, #1
	mov r1, r8
	adds r2, r4, #0
	movs r3, #1
	bl sub_08017D58
	adds r4, #2
	adds r6, #1
	cmp r6, #5
	ble _08018454
_08018468:
	movs r0, #8
	b _0801846E
_0801846C:
	movs r0, #0
_0801846E:
	str r0, [r5, #4]
_08018470:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _08018490
	cmp r0, #1
	beq _08018480
	cmp r0, #2
	beq _08018486
	b _0801848C
_08018480:
	bl sub_080179AC
	b _0801848C
_08018486:
	movs r0, #0
	bl sub_08017B04
_0801848C:
	movs r0, #0
	str r0, [r5, #8]
_08018490:
	bl sub_08017B3C
	adds r0, r5, #0
	bl sub_08017CB4
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x7c]
	adds r1, r1, r0
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	bl sub_08000D9C
_080184AC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080181C8

	thumb_func_start sub_080184B8
sub_080184B8: @ 0x080184B8
	push {r4, lr}
	ldr r2, _08018528 @ =0x02039830
	movs r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r2, #0xc]
	str r0, [r2, #0x10]
	str r0, [r2, #0x14]
	str r0, [r2, #0x18]
	str r0, [r2, #0x1c]
	str r1, [r2, #0x20]
	str r0, [r2, #0x24]
	str r0, [r2, #0x28]
	str r0, [r2, #0x2c]
	str r0, [r2, #0x30]
	str r0, [r2, #0x34]
	movs r1, #3
	str r1, [r2, #0x38]
	str r0, [r2, #0x3c]
	str r0, [r2, #0x40]
	str r0, [r2, #0x44]
	ldr r0, _0801852C @ =0x0000FFFF
	adds r4, r0, #0
	adds r1, r2, #0
	adds r1, #0x48
	movs r3, #0xb
_080184F2:
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	ldrh r0, [r1, #2]
	orrs r0, r4
	strh r0, [r1, #2]
	adds r1, #4
	subs r3, #1
	cmp r3, #0
	bge _080184F2
	movs r1, #0
	str r1, [r2, #0x78]
	str r1, [r2, #0x7c]
	adds r0, r2, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	bl sub_080035FC
	ldr r1, _08018530 @ =sub_080181C8
	bl sub_0800356C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018528: .4byte 0x02039830
_0801852C: .4byte 0x0000FFFF
_08018530: .4byte sub_080181C8
	thumb_func_end sub_080184B8

	thumb_func_start sub_08018534
sub_08018534: @ 0x08018534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08018550
	bl sub_0800FE34
	movs r0, #1
	bl sub_08017B04
	adds r0, r4, #0
	bl sub_08003450
_08018550:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08018534

	thumb_func_start sub_08018558
sub_08018558: @ 0x08018558
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08018568 @ =sub_080184B8
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08018568: .4byte sub_080184B8
	thumb_func_end sub_08018558

	thumb_func_start sub_0801856C
sub_0801856C: @ 0x0801856C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x18
	ldr r5, _0801860C @ =0x020397D4
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x70
	movs r0, #0x18
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xaa
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x3e
	movs r3, #0
	bl sub_0801608C
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x80
	movs r0, #0xea
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	mov sb, r0
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	str r0, [sp, #0xc]
	movs r0, #0xc8
	lsls r0, r0, #5
	str r0, [sp, #0x10]
	movs r6, #0xb4
	str r6, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x45
	movs r3, #0
	bl sub_0801608C
	ldr r0, [r5]
	adds r1, r0, #0
	adds r1, #0x90
	movs r0, #0xed
	lsls r0, r0, #1
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #3
	str r0, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0x58
	movs r3, #0
	bl sub_0801608C
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801860C: .4byte 0x020397D4
	thumb_func_end sub_0801856C

	thumb_func_start sub_08018610
sub_08018610: @ 0x08018610
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r2, #0
	cmp r1, #0
	bne _0801862A
	movs r1, #0xc
	movs r0, #0x84
	lsls r0, r0, #6
	b _08018630
_0801862A:
	movs r1, #0x13
	movs r0, #0xf0
	lsls r0, r0, #4
_08018630:
	str r0, [sp, #0x18]
	movs r0, #0xcc
	lsls r0, r0, #6
	mov r8, r0
	lsrs r0, r5, #0x1f
	mov sb, r0
	cmp r5, #0
	bge _08018642
	rsbs r5, r5, #0
_08018642:
	ldr r0, _080186E8 @ =0x020397D4
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r4, r0, r1
	mov sl, r1
	mov r7, sb
	adds r7, #3
	movs r6, #6
_08018652:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801865E
	adds r0, r4, #0
	bl sub_0801600C
_0801865E:
	subs r6, #1
	adds r4, #0x10
	cmp r6, #0
	bge _08018652
	ldr r0, _080186E8 @ =0x020397D4
	ldr r0, [r0]
	mov r1, sl
	adds r4, r0, r1
	mov sl, r7
_08018670:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08044578
	adds r3, r0, #0
	movs r7, #0xfa
	lsls r7, r7, #1
	str r7, [sp]
	mov r0, sl
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x10]
	movs r6, #0xb4
	str r6, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x5a
	bl sub_0801608C
	ldr r1, _080186EC @ =0xFFFFF900
	add r8, r1
	adds r4, #0x10
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_0804449C
	adds r5, r0, #0
	cmp r5, #0
	bne _08018670
	mov r0, sb
	cmp r0, #1
	bne _080186D8
	str r7, [sp]
	movs r0, #4
	str r0, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	mov r0, r8
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r1, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x5a
	movs r3, #0xa
	bl sub_0801608C
_080186D8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080186E8: .4byte 0x020397D4
_080186EC: .4byte 0xFFFFF900
	thumb_func_end sub_08018610

	thumb_func_start sub_080186F0
sub_080186F0: @ 0x080186F0
	push {lr}
	sub sp, #0x18
	ldr r0, [r0, #0x30]
	cmp r0, #0
	bne _08018702
	movs r1, #0xa
	movs r2, #0xa8
	lsls r2, r2, #6
	b _08018706
_08018702:
	movs r1, #0xb
	movs r2, #0
_08018706:
	ldr r0, _08018738 @ =0x020397D4
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0x18
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r1, #0xc8
	str r1, [sp, #0x14]
	movs r1, #0
	movs r2, #0x3e
	movs r3, #2
	bl sub_0801608C
	add sp, #0x18
	pop {r0}
	bx r0
	.align 2, 0
_08018738: .4byte 0x020397D4
	thumb_func_end sub_080186F0

	thumb_func_start sub_0801873C
sub_0801873C: @ 0x0801873C
	push {r4, r5, lr}
	ldr r0, _08018764 @ =0x020397D4
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xa0
	movs r5, #1
_08018748:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018754
	adds r0, r4, #0
	bl sub_0801600C
_08018754:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08018748
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018764: .4byte 0x020397D4
	thumb_func_end sub_0801873C

	thumb_func_start sub_08018768
sub_08018768: @ 0x08018768
	push {r4, r5, lr}
	ldr r0, _08018790 @ =0x020397D4
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x70
	movs r5, #0x12
_08018774:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018780
	adds r0, r4, #0
	bl sub_0801600C
_08018780:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08018774
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018790: .4byte 0x020397D4
	thumb_func_end sub_08018768

	thumb_func_start sub_08018794
sub_08018794: @ 0x08018794
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080187D0 @ =0x020397D4
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x70
	movs r6, #0x12
_080187A2:
	ldr r0, [r4]
	cmp r0, #0
	beq _080187C0
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r2, #4]
_080187C0:
	subs r6, #1
	adds r4, #0x10
	cmp r6, #0
	bge _080187A2
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080187D0: .4byte 0x020397D4
	thumb_func_end sub_08018794

	thumb_func_start sub_080187D4
sub_080187D4: @ 0x080187D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x28]
	ldr r5, _08018804 @ =0xFF676981
	cmp r2, r5
	beq _080187EA
	str r2, [r4, #0x20]
	str r5, [r4, #0x28]
	movs r1, #0
	bl sub_08018610
_080187EA:
	ldr r2, [r4, #0x2c]
	cmp r2, r5
	beq _080187FC
	str r2, [r4, #0x24]
	str r5, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08018610
_080187FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018804: .4byte 0xFF676981
	thumb_func_end sub_080187D4

	thumb_func_start sub_08018808
sub_08018808: @ 0x08018808
	ldr r0, _08018810 @ =0x02039720
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_08018810: .4byte 0x02039720
	thumb_func_end sub_08018808

	thumb_func_start sub_08018814
sub_08018814: @ 0x08018814
	ldr r3, _08018820 @ =0x02039720
	str r0, [r3]
	str r1, [r3, #0x28]
	str r2, [r3, #0x2c]
	bx lr
	.align 2, 0
_08018820: .4byte 0x02039720
	thumb_func_end sub_08018814

	thumb_func_start sub_08018824
sub_08018824: @ 0x08018824
	ldr r2, _0801882C @ =0x02039720
	str r0, [r2, #4]
	str r1, [r2, #0x30]
	bx lr
	.align 2, 0
_0801882C: .4byte 0x02039720
	thumb_func_end sub_08018824

	thumb_func_start sub_08018830
sub_08018830: @ 0x08018830
	push {r4, r5, lr}
	ldr r0, _08018858 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #0x12
_0801883E:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801884A
	ldr r0, [r4, #4]
	bl sub_08002B30
_0801884A:
	subs r5, #1
	subs r4, #0x10
	cmp r5, #0
	bge _0801883E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018858: .4byte 0x020397D4
	thumb_func_end sub_08018830

	thumb_func_start sub_0801885C
sub_0801885C: @ 0x0801885C
	push {r4, r5, lr}
	ldr r5, _08018874 @ =0x02039720
	ldr r0, [r5]
	subs r0, #1
	cmp r0, #4
	bhi _08018908
	lsls r0, r0, #2
	ldr r1, _08018878 @ =_0801887C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018874: .4byte 0x02039720
_08018878: .4byte _0801887C
_0801887C: @ jump table
	.4byte _08018890 @ case 0
	.4byte _080188AA @ case 1
	.4byte _080188BE @ case 2
	.4byte _080188F8 @ case 3
	.4byte _08018900 @ case 4
_08018890:
	adds r0, r5, #0
	bl sub_080187D4
	movs r4, #0
	str r4, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r5, #0x10]
	adds r0, r5, #0
	bl sub_0801856C
	str r4, [r5]
	b _08018908
_080188AA:
	adds r0, r5, #0
	bl sub_080187D4
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r5, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r5, #0x10]
	b _08018904
_080188BE:
	adds r0, r5, #0
	bl sub_080187D4
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r5, #0x14]
	movs r0, #0x4c
	rsbs r0, r0, #0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0xc]
	ldr r1, _080188EC @ =0xFFFF5000
	adds r0, r0, r1
	ldr r1, [r5, #0x10]
	ldr r2, _080188F0 @ =0xFFFFA800
	adds r1, r1, r2
	bl sub_08006894
	movs r1, #0
	ldr r2, _080188F4 @ =0xFFFFC000
	adds r0, r0, r2
	strh r0, [r5, #0x1c]
	str r1, [r5]
	b _08018908
	.align 2, 0
_080188EC: .4byte 0xFFFF5000
_080188F0: .4byte 0xFFFFA800
_080188F4: .4byte 0xFFFFC000
_080188F8:
	adds r0, r5, #0
	bl sub_080187D4
	b _08018904
_08018900:
	bl sub_08018768
_08018904:
	movs r0, #0
	str r0, [r5]
_08018908:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _08018914
	cmp r0, #2
	beq _0801891C
	b _08018924
_08018914:
	adds r0, r5, #0
	bl sub_080186F0
	b _08018920
_0801891C:
	bl sub_0801873C
_08018920:
	movs r0, #0
	str r0, [r5, #4]
_08018924:
	ldr r1, [r5, #0x14]
	cmp r1, #0
	beq _0801897C
	ldr r0, [r5, #0x18]
	adds r0, r1, r0
	str r0, [r5, #0x14]
	ldrh r0, [r5, #0x1c]
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	bl sub_080068FC
	adds r4, r0, #0
	ldrh r0, [r5, #0x1c]
	bl sub_0800686C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x14]
	bl sub_080068FC
	ldr r2, [r5, #0xc]
	adds r2, r2, r4
	str r2, [r5, #0xc]
	ldr r1, [r5, #0x10]
	subs r1, r1, r0
	str r1, [r5, #0x10]
	ldr r0, _08018988 @ =0x0000AFFF
	cmp r2, r0
	bgt _0801896A
	ldr r0, _0801898C @ =0x000057FF
	cmp r1, r0
	ble _0801897C
_0801896A:
	movs r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r5, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #7
	str r0, [r5, #0x10]
_0801897C:
	adds r0, r5, #0
	bl sub_08018794
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018988: .4byte 0x0000AFFF
_0801898C: .4byte 0x000057FF
	thumb_func_end sub_0801885C

	thumb_func_start sub_08018990
sub_08018990: @ 0x08018990
	push {lr}
	ldr r1, _080189C8 @ =0x02039720
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	movs r2, #0x80
	lsls r2, r2, #7
	str r2, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [r1, #0x18]
	strh r0, [r1, #0x1c]
	str r0, [r1, #0x20]
	str r0, [r1, #0x24]
	ldr r0, _080189CC @ =0xFF676981
	str r0, [r1, #0x28]
	str r0, [r1, #0x2c]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1, #0x30]
	bl sub_080035FC
	ldr r1, _080189D0 @ =sub_0801885C
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_080189C8: .4byte 0x02039720
_080189CC: .4byte 0xFF676981
_080189D0: .4byte sub_0801885C
	thumb_func_end sub_08018990

	thumb_func_start sub_080189D4
sub_080189D4: @ 0x080189D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _080189EA
	bl sub_08018768
	adds r0, r4, #0
	bl sub_08003450
_080189EA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080189D4

	thumb_func_start sub_080189F0
sub_080189F0: @ 0x080189F0
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08018A00 @ =sub_08018990
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08018A00: .4byte sub_08018990
	thumb_func_end sub_080189F0

	thumb_func_start sub_08018A04
sub_08018A04: @ 0x08018A04
	push {lr}
	sub sp, #0x18
	ldr r0, _08018A38 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x18
	str r1, [sp]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0xaa
	str r1, [sp, #0x14]
	movs r1, #0
	movs r2, #0x3e
	movs r3, #1
	bl sub_0801608C
	add sp, #0x18
	pop {r0}
	bx r0
	.align 2, 0
_08018A38: .4byte 0x020397D4
	thumb_func_end sub_08018A04

	thumb_func_start sub_08018A3C
sub_08018A3C: @ 0x08018A3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r2, #0
	cmp r1, #0
	bne _08018A4E
	movs r1, #0x1b
	movs r6, #0xa0
	lsls r6, r6, #4
	b _08018A54
_08018A4E:
	movs r1, #0x1c
	movs r6, #0xd0
	lsls r6, r6, #5
_08018A54:
	movs r7, #0xe0
	lsls r7, r7, #4
	cmp r4, #9
	ble _08018A5E
	movs r4, #9
_08018A5E:
	ldr r0, _08018AAC @ =0x020397D4
	lsls r1, r1, #4
	ldr r0, [r0]
	adds r5, r0, r1
_08018A66:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08044578
	adds r3, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r7, [sp, #0x10]
	movs r0, #0xb4
	str r0, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x5a
	bl sub_0801608C
	ldr r0, _08018AB0 @ =0xFFFFF900
	adds r6, r6, r0
	adds r5, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0804449C
	adds r4, r0, #0
	cmp r4, #0
	bne _08018A66
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08018AAC: .4byte 0x020397D4
_08018AB0: .4byte 0xFFFFF900
	thumb_func_end sub_08018A3C

	thumb_func_start sub_08018AB4
sub_08018AB4: @ 0x08018AB4
	push {r4, r5, lr}
	ldr r0, _08018ADC @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #2
_08018AC2:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018ACE
	adds r0, r4, #0
	bl sub_0801600C
_08018ACE:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08018AC2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018ADC: .4byte 0x020397D4
	thumb_func_end sub_08018AB4

	thumb_func_start sub_08018AE0
sub_08018AE0: @ 0x08018AE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08018B1C @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r6, #2
_08018AF0:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018B0E
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	adds r0, r0, r1
	str r0, [r2, #4]
_08018B0E:
	subs r6, #1
	adds r4, #0x10
	cmp r6, #0
	bge _08018AF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018B1C: .4byte 0x020397D4
	thumb_func_end sub_08018AE0

	thumb_func_start sub_08018B20
sub_08018B20: @ 0x08018B20
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0x24]
	ldr r5, _08018B50 @ =0xFF676981
	cmp r2, r5
	beq _08018B36
	str r2, [r4, #0x1c]
	str r5, [r4, #0x24]
	movs r1, #0
	bl sub_08018A3C
_08018B36:
	ldr r2, [r4, #0x28]
	cmp r2, r5
	beq _08018B48
	str r2, [r4, #0x20]
	str r5, [r4, #0x28]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08018A3C
_08018B48:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018B50: .4byte 0xFF676981
	thumb_func_end sub_08018B20

	thumb_func_start sub_08018B54
sub_08018B54: @ 0x08018B54
	ldr r0, _08018B5C @ =0x020396F0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08018B5C: .4byte 0x020396F0
	thumb_func_end sub_08018B54

	thumb_func_start sub_08018B60
sub_08018B60: @ 0x08018B60
	ldr r3, _08018B6C @ =0x020396F0
	str r0, [r3]
	str r1, [r3, #0x24]
	str r2, [r3, #0x28]
	bx lr
	.align 2, 0
_08018B6C: .4byte 0x020396F0
	thumb_func_end sub_08018B60

	thumb_func_start sub_08018B70
sub_08018B70: @ 0x08018B70
	push {r4, r5, lr}
	ldr r0, _08018B98 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #2
_08018B7E:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018B8A
	ldr r0, [r4, #4]
	bl sub_08002B30
_08018B8A:
	subs r5, #1
	subs r4, #0x10
	cmp r5, #0
	bge _08018B7E
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018B98: .4byte 0x020397D4
	thumb_func_end sub_08018B70

	thumb_func_start sub_08018B9C
sub_08018B9C: @ 0x08018B9C
	push {r4, r5, lr}
	ldr r5, _08018BB4 @ =0x020396F0
	ldr r0, [r5]
	subs r0, #1
	cmp r0, #4
	bhi _08018C44
	lsls r0, r0, #2
	ldr r1, _08018BB8 @ =_08018BBC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08018BB4: .4byte 0x020396F0
_08018BB8: .4byte _08018BBC
_08018BBC: @ jump table
	.4byte _08018BD0 @ case 0
	.4byte _08018BE8 @ case 1
	.4byte _08018BFC @ case 2
	.4byte _08018C34 @ case 3
	.4byte _08018C3C @ case 4
_08018BD0:
	adds r0, r5, #0
	bl sub_08018B20
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0xa6
	lsls r0, r0, #7
	str r0, [r5, #0xc]
	bl sub_08018A04
	b _08018C40
_08018BE8:
	adds r0, r5, #0
	bl sub_08018B20
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r5, #8]
	movs r0, #0xc0
	lsls r0, r0, #5
	str r0, [r5, #0xc]
	b _08018C40
_08018BFC:
	adds r0, r5, #0
	bl sub_08018B20
	movs r0, #0xa0
	lsls r0, r0, #2
	str r0, [r5, #0x10]
	movs r0, #0x19
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	ldr r1, _08018C28 @ =0xFFFF3800
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	ldr r2, _08018C2C @ =0xFFFFE800
	adds r1, r1, r2
	bl sub_08006894
	movs r1, #0
	ldr r2, _08018C30 @ =0xFFFFC000
	adds r0, r0, r2
	strh r0, [r5, #0x18]
	str r1, [r5]
	b _08018C44
	.align 2, 0
_08018C28: .4byte 0xFFFF3800
_08018C2C: .4byte 0xFFFFE800
_08018C30: .4byte 0xFFFFC000
_08018C34:
	adds r0, r5, #0
	bl sub_08018B20
	b _08018C40
_08018C3C:
	bl sub_08018AB4
_08018C40:
	movs r0, #0
	str r0, [r5]
_08018C44:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _08018C94
	ldr r0, [r5, #0x14]
	adds r0, r1, r0
	str r0, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	bl sub_08006858
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	bl sub_080068FC
	adds r4, r0, #0
	ldrh r0, [r5, #0x18]
	bl sub_0800686C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x10]
	bl sub_080068FC
	ldr r1, [r5, #8]
	adds r1, r1, r4
	str r1, [r5, #8]
	ldr r1, [r5, #0xc]
	subs r1, r1, r0
	str r1, [r5, #0xc]
	movs r2, #0xc0
	lsls r2, r2, #5
	cmp r1, r2
	bgt _08018C94
	movs r0, #0
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [r5, #8]
	str r2, [r5, #0xc]
_08018C94:
	adds r0, r5, #0
	bl sub_08018AE0
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08018B9C

	thumb_func_start sub_08018CA0
sub_08018CA0: @ 0x08018CA0
	push {lr}
	ldr r0, _08018CD4 @ =0x020396F0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	movs r2, #0xc8
	lsls r2, r2, #8
	str r2, [r0, #8]
	movs r2, #0xa6
	lsls r2, r2, #7
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	strh r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	ldr r1, _08018CD8 @ =0xFF676981
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	bl sub_080035FC
	ldr r1, _08018CDC @ =sub_08018B9C
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08018CD4: .4byte 0x020396F0
_08018CD8: .4byte 0xFF676981
_08018CDC: .4byte sub_08018B9C
	thumb_func_end sub_08018CA0

	thumb_func_start sub_08018CE0
sub_08018CE0: @ 0x08018CE0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08018CF6
	bl sub_08018AB4
	adds r0, r4, #0
	bl sub_08003450
_08018CF6:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08018CE0

	thumb_func_start sub_08018CFC
sub_08018CFC: @ 0x08018CFC
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08018D0C @ =sub_08018CA0
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08018D0C: .4byte sub_08018CA0
	thumb_func_end sub_08018CFC

	thumb_func_start sub_08018D10
sub_08018D10: @ 0x08018D10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08018D70 @ =0x020397D4
	ldr r0, [r0]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r1, r0, r6
	ldr r0, [r1]
	cmp r0, #0
	beq _08018D2C
	adds r0, r1, #0
	bl sub_0801600C
_08018D2C:
	ldr r0, [r4, #8]
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	ldr r0, _08018D74 @ =0x0821BB94
	adds r4, r4, r0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r2, [r4, #4]
	movs r5, #1
	str r5, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	ldr r0, [r4, #0x14]
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r2, [r4, #8]
	str r5, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08018D70: .4byte 0x020397D4
_08018D74: .4byte 0x0821BB94
	thumb_func_end sub_08018D10

	thumb_func_start sub_08018D78
sub_08018D78: @ 0x08018D78
	push {r4, lr}
	sub sp, #0x18
	ldr r1, [r0, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08018DD4 @ =0x0821BB94
	adds r3, r0, r1
	ldr r0, [r3]
	movs r4, #0xf8
	lsls r4, r4, #7
	cmp r0, #0
	beq _08018D96
	movs r4, #0xc0
	lsls r4, r4, #7
_08018D96:
	ldr r0, _08018DD8 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [r3, #0x10]
	lsls r2, r2, #5
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp]
	movs r2, #0x14
	ldrsh r1, [r3, r2]
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r2, [sp, #0x14]
	movs r1, #0
	movs r2, #0xf0
	movs r3, #0
	bl sub_0801608C
	add sp, #0x18
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08018DD4: .4byte 0x0821BB94
_08018DD8: .4byte 0x020397D4
	thumb_func_end sub_08018D78

	thumb_func_start sub_08018DDC
sub_08018DDC: @ 0x08018DDC
	push {r4, r5, lr}
	ldr r0, _08018E04 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #0
_08018DEA:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018DF6
	adds r0, r4, #0
	bl sub_0801600C
_08018DF6:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08018DEA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018E04: .4byte 0x020397D4
	thumb_func_end sub_08018DDC

	thumb_func_start sub_08018E08
sub_08018E08: @ 0x08018E08
	push {r4, r5, lr}
	ldr r0, _08018E3C @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #0
_08018E16:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018E2C
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_08018E2C:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08018E16
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018E3C: .4byte 0x020397D4
	thumb_func_end sub_08018E08

	thumb_func_start sub_08018E40
sub_08018E40: @ 0x08018E40
	ldr r0, _08018E48 @ =0x020397C0
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
_08018E48: .4byte 0x020397C0
	thumb_func_end sub_08018E40

	thumb_func_start sub_08018E4C
sub_08018E4C: @ 0x08018E4C
	ldr r0, _08018E54 @ =0x020397C0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08018E54: .4byte 0x020397C0
	thumb_func_end sub_08018E4C

	thumb_func_start sub_08018E58
sub_08018E58: @ 0x08018E58
	push {lr}
	adds r3, r0, #0
	ldr r2, _08018E74 @ =0x020397C0
	str r3, [r2]
	ldr r0, [r2, #8]
	cmp r0, r1
	beq _08018E82
	str r1, [r2, #8]
	cmp r1, #2
	bgt _08018E78
	cmp r1, #0
	blt _08018E78
	str r1, [r2, #0xc]
	b _08018E82
	.align 2, 0
_08018E74: .4byte 0x020397C0
_08018E78:
	cmp r3, #2
	bne _08018E82
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2, #0xc]
_08018E82:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08018E58

	thumb_func_start sub_08018E88
sub_08018E88: @ 0x08018E88
	push {r4, r5, lr}
	ldr r0, _08018EB0 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #0
_08018E96:
	ldr r0, [r4]
	cmp r0, #0
	beq _08018EA2
	ldr r0, [r4, #4]
	bl sub_08002B30
_08018EA2:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08018E96
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018EB0: .4byte 0x020397D4
	thumb_func_end sub_08018E88

	thumb_func_start sub_08018EB4
sub_08018EB4: @ 0x08018EB4
	push {r4, lr}
	ldr r4, _08018EC4 @ =0x020397C0
	ldr r0, [r4]
	cmp r0, #1
	beq _08018EC8
	cmp r0, #2
	beq _08018EDC
	b _08018EEE
	.align 2, 0
_08018EC4: .4byte 0x020397C0
_08018EC8:
	adds r0, r4, #0
	bl sub_08018D10
	adds r0, r4, #0
	bl sub_08018D78
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4]
	b _08018F04
_08018EDC:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	bl sub_08018DDC
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4]
_08018EEE:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _08018EFE
	adds r0, r4, #0
	bl sub_08018D78
	movs r0, #0
	str r0, [r4, #4]
_08018EFE:
	adds r0, r4, #0
	bl sub_08018E08
_08018F04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08018EB4

	thumb_func_start sub_08018F0C
sub_08018F0C: @ 0x08018F0C
	push {lr}
	ldr r0, _08018F2C @ =0x020397C0
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	subs r1, #1
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bl sub_080035FC
	ldr r1, _08018F30 @ =sub_08018EB4
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08018F2C: .4byte 0x020397C0
_08018F30: .4byte sub_08018EB4
	thumb_func_end sub_08018F0C

	thumb_func_start sub_08018F34
sub_08018F34: @ 0x08018F34
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _08018F4A
	bl sub_08018DDC
	adds r0, r4, #0
	bl sub_08003450
_08018F4A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08018F34

	thumb_func_start sub_08018F50
sub_08018F50: @ 0x08018F50
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08018F60 @ =sub_08018F0C
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08018F60: .4byte sub_08018F0C
	thumb_func_end sub_08018F50

	thumb_func_start sub_08018F64
sub_08018F64: @ 0x08018F64
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, [r0, #8]
	lsls r4, r0, #3
	subs r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08018FB0 @ =0x0821BC3C
	adds r4, r4, r0
	ldr r0, [r4, #0xc]
	lsls r0, r0, #5
	ldr r1, [r4, #8]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r2, [r4]
	movs r5, #0
	str r5, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	ldr r0, [r4, #0x10]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [r4, #4]
	str r5, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08018FB0: .4byte 0x0821BC3C
	thumb_func_end sub_08018F64

	thumb_func_start sub_08018FB4
sub_08018FB4: @ 0x08018FB4
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r1, [r5, #8]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _08018FD8 @ =0x0821BC3C
	adds r2, r0, r1
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08018FDC
	ldr r0, [r2, #0x14]
	rsbs r0, r0, #0
	str r0, [r5, #0x10]
	ldr r0, [r2, #0x18]
	rsbs r0, r0, #0
	b _08018FE2
	.align 2, 0
_08018FD8: .4byte 0x0821BC3C
_08018FDC:
	ldr r0, [r2, #0x14]
	str r0, [r5, #0x10]
	ldr r0, [r2, #0x18]
_08018FE2:
	str r0, [r5, #0x14]
	ldr r0, _08019038 @ =0x020397D4
	ldr r4, [r0]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r1, [r2, #0xc]
	lsls r1, r1, #5
	ldr r0, [r2, #8]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #0xe0
	lsls r0, r0, #6
	str r0, [sp, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r4, #0
	movs r2, #0xe3
	movs r3, #0
	bl sub_0801608C
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r2, #4]
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019038: .4byte 0x020397D4
	thumb_func_end sub_08018FB4

	thumb_func_start sub_0801903C
sub_0801903C: @ 0x0801903C
	push {r4, r5, lr}
	ldr r0, _08019064 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #0
_0801904A:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019056
	adds r0, r4, #0
	bl sub_0801600C
_08019056:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801904A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019064: .4byte 0x020397D4
	thumb_func_end sub_0801903C

	thumb_func_start sub_08019068
sub_08019068: @ 0x08019068
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _080190A4 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r6, #0
_08019078:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019096
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	str r0, [r2, #4]
_08019096:
	subs r6, #1
	adds r4, #0x10
	cmp r6, #0
	bge _08019078
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080190A4: .4byte 0x020397D4
	thumb_func_end sub_08019068

	thumb_func_start sub_080190A8
sub_080190A8: @ 0x080190A8
	ldr r0, _080190B0 @ =0x020398C0
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_080190B0: .4byte 0x020398C0
	thumb_func_end sub_080190A8

	thumb_func_start sub_080190B4
sub_080190B4: @ 0x080190B4
	push {lr}
	ldr r3, _080190D0 @ =0x020398C0
	str r0, [r3]
	str r1, [r3, #0xc]
	cmp r0, #2
	bne _080190D4
	ldr r1, [r3, #8]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080190D6
	movs r0, #0
	str r0, [r3]
	b _080190D6
	.align 2, 0
_080190D0: .4byte 0x020398C0
_080190D4:
	str r2, [r3, #8]
_080190D6:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080190B4

	thumb_func_start sub_080190DC
sub_080190DC: @ 0x080190DC
	push {r4, r5, lr}
	ldr r0, _08019104 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #0
_080190EA:
	ldr r0, [r4]
	cmp r0, #0
	beq _080190F6
	ldr r0, [r4, #4]
	bl sub_08002B30
_080190F6:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _080190EA
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019104: .4byte 0x020397D4
	thumb_func_end sub_080190DC

	thumb_func_start sub_08019108
sub_08019108: @ 0x08019108
	push {r4, r5, r6, lr}
	ldr r5, _08019128 @ =0x020398C0
	ldr r0, [r5, #8]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0801912C @ =0x0821BC3C
	adds r6, r1, r0
	ldr r4, [r5]
	cmp r4, #2
	beq _08019152
	cmp r4, #2
	bgt _08019130
	cmp r4, #1
	beq _08019136
	b _08019180
	.align 2, 0
_08019128: .4byte 0x020398C0
_0801912C: .4byte 0x0821BC3C
_08019130:
	cmp r4, #3
	beq _08019170
	b _08019180
_08019136:
	adds r0, r5, #0
	bl sub_08018F64
	adds r0, r5, #0
	bl sub_08018FB4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0801914E
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _08019168
_0801914E:
	str r4, [r5, #4]
	b _0801916A
_08019152:
	ldr r1, [r5, #0x10]
	ldr r0, [r6, #0x14]
	cmp r1, r0
	bne _08019166
	ldr r1, [r5, #0x14]
	ldr r0, [r6, #0x18]
	cmp r1, r0
	bne _08019166
	movs r0, #0
	b _08019168
_08019166:
	movs r0, #2
_08019168:
	str r0, [r5, #4]
_0801916A:
	movs r0, #0
	str r0, [r5]
	b _08019180
_08019170:
	movs r4, #0
	str r4, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	bl sub_0801903C
	str r4, [r5]
_08019180:
	ldr r0, [r5, #4]
	cmp r0, #1
	beq _0801918C
	cmp r0, #2
	beq _080191F4
	b _0801926E
_0801918C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _080191A4
	ldr r1, _080191A0 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x10]
	cmp r0, #0
	bgt _080191B8
	b _080191B4
	.align 2, 0
_080191A0: .4byte 0xFFFFF000
_080191A4:
	cmp r0, #0
	bge _080191B8
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r5, #0x10]
	cmp r0, #0
	blt _080191B8
_080191B4:
	movs r0, #0
	str r0, [r5, #0x10]
_080191B8:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _080191D0
	ldr r1, _080191CC @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x14]
	cmp r0, #0
	bgt _080191E4
	b _080191E0
	.align 2, 0
_080191CC: .4byte 0xFFFFF000
_080191D0:
	cmp r0, #0
	bge _080191E4
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r5, #0x14]
	cmp r0, #0
	blt _080191E4
_080191E0:
	movs r0, #0
	str r0, [r5, #0x14]
_080191E4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0801926E
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0801926E
	str r0, [r5, #4]
	b _0801926E
_080191F4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _08019204
	ldr r0, [r6, #0x14]
	rsbs r2, r0, #0
	ldr r0, [r6, #0x18]
	rsbs r1, r0, #0
	b _08019208
_08019204:
	ldr r2, [r6, #0x14]
	ldr r1, [r6, #0x18]
_08019208:
	ldr r0, [r5, #0x10]
	cmp r0, r2
	ble _08019220
	ldr r3, _0801921C @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r5, #0x10]
	cmp r0, r2
	bgt _08019232
	b _08019230
	.align 2, 0
_0801921C: .4byte 0xFFFFF000
_08019220:
	cmp r0, r2
	bge _08019232
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r5, #0x10]
	cmp r0, r2
	blt _08019232
_08019230:
	str r2, [r5, #0x10]
_08019232:
	ldr r0, [r5, #0x14]
	cmp r0, r1
	ble _08019248
	ldr r3, _08019244 @ =0xFFFFF000
	adds r0, r0, r3
	str r0, [r5, #0x14]
	cmp r0, r1
	bgt _0801925A
	b _08019258
	.align 2, 0
_08019244: .4byte 0xFFFFF000
_08019248:
	cmp r0, r1
	bge _0801925A
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
	str r0, [r5, #0x14]
	cmp r0, r1
	blt _0801925A
_08019258:
	str r1, [r5, #0x14]
_0801925A:
	ldr r0, [r5, #0x10]
	cmp r0, r2
	bne _0801926E
	ldr r0, [r5, #0x14]
	cmp r0, r1
	bne _0801926E
	movs r0, #0
	str r0, [r5, #4]
	bl sub_0801903C
_0801926E:
	adds r0, r5, #0
	bl sub_08019068
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08019108

	thumb_func_start sub_0801927C
sub_0801927C: @ 0x0801927C
	push {lr}
	ldr r1, _0801929C @ =0x020398C0
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #0xc]
	subs r0, #1
	str r0, [r1, #8]
	bl sub_080035FC
	ldr r1, _080192A0 @ =sub_08019108
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0801929C: .4byte 0x020398C0
_080192A0: .4byte sub_08019108
	thumb_func_end sub_0801927C

	thumb_func_start sub_080192A4
sub_080192A4: @ 0x080192A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _080192BA
	bl sub_0801903C
	adds r0, r4, #0
	bl sub_08003450
_080192BA:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080192A4

	thumb_func_start sub_080192C0
sub_080192C0: @ 0x080192C0
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080192D0 @ =sub_0801927C
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_080192D0: .4byte sub_0801927C
	thumb_func_end sub_080192C0

	thumb_func_start sub_080192D4
sub_080192D4: @ 0x080192D4
	push {r4, r5, lr}
	sub sp, #4
	ldr r4, _08019318 @ =0x0821BD24
	ldr r0, [r4, #0xc]
	lsls r0, r0, #5
	ldr r1, [r4, #8]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	ldr r2, [r4]
	movs r5, #0
	str r5, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	ldr r0, [r4, #0x10]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [r4, #4]
	str r5, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019318: .4byte 0x0821BD24
	thumb_func_end sub_080192D4

	thumb_func_start sub_0801931C
sub_0801931C: @ 0x0801931C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	mov ip, r0
	adds r5, r1, #0
	ldr r6, _08019354 @ =0x0821BD24
	cmp r5, #0
	beq _08019358
	lsls r1, r5, #2
	mov r4, ip
	adds r4, #0x14
	adds r2, r4, r1
	ldr r0, [r6, #0x14]
	rsbs r0, r0, #0
	str r0, [r2]
	mov r3, ip
	adds r3, #0x1c
	adds r2, r3, r1
	ldr r0, [r6, #0x18]
	rsbs r0, r0, #0
	str r0, [r2]
	adds r7, r1, #0
	mov r8, r4
	mov sb, r3
	b _08019370
	.align 2, 0
_08019354: .4byte 0x0821BD24
_08019358:
	ldr r0, [r6, #0x14]
	mov r1, ip
	str r0, [r1, #0x14]
	ldr r0, [r6, #0x18]
	str r0, [r1, #0x1c]
	movs r7, #0
	movs r2, #0x14
	add r2, ip
	mov r8, r2
	movs r0, #0x1c
	add r0, ip
	mov sb, r0
_08019370:
	ldr r1, _080193E0 @ =0x020397D4
	lsls r0, r5, #4
	movs r2, #0x88
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r4, [r1]
	adds r4, r4, r0
	mov r0, ip
	adds r0, #0xc
	adds r0, r0, r7
	ldr r3, [r0]
	ldr r1, [r6, #0xc]
	lsls r1, r1, #5
	ldr r0, [r6, #8]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r0, #0xe0
	lsls r0, r0, #6
	str r0, [sp, #0xc]
	ldr r0, _080193E4 @ =0x0821BD1C
	adds r0, r7, r0
	ldr r0, [r0]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r4, #0
	movs r2, #0xe4
	bl sub_0801608C
	ldr r2, [r4, #4]
	mov r0, r8
	adds r1, r0, r7
	ldr r0, [r4, #8]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	mov r0, sb
	adds r1, r0, r7
	ldr r0, [r4, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #4]
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080193E0: .4byte 0x020397D4
_080193E4: .4byte 0x0821BD1C
	thumb_func_end sub_0801931C

	thumb_func_start sub_080193E8
sub_080193E8: @ 0x080193E8
	push {r4, r5, lr}
	ldr r0, _08019410 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #1
_080193F6:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019402
	adds r0, r4, #0
	bl sub_0801600C
_08019402:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _080193F6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019410: .4byte 0x020397D4
	thumb_func_end sub_080193E8

	thumb_func_start sub_08019414
sub_08019414: @ 0x08019414
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _08019460 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #0
_08019424:
	ldr r0, [r4]
	cmp r0, #0
	beq _08019450
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r3, [r4, #4]
	lsls r2, r5, #2
	adds r0, r6, #0
	adds r0, #0x14
	adds r0, r0, r2
	ldr r1, [r4, #8]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3]
	adds r0, r6, #0
	adds r0, #0x1c
	adds r0, r0, r2
	ldr r1, [r4, #0xc]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r3, #4]
_08019450:
	adds r5, #1
	adds r4, #0x10
	cmp r5, #1
	ble _08019424
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019460: .4byte 0x020397D4
	thumb_func_end sub_08019414

	thumb_func_start sub_08019464
sub_08019464: @ 0x08019464
	ldr r0, _0801946C @ =0x02039780
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_0801946C: .4byte 0x02039780
	thumb_func_end sub_08019464

	thumb_func_start sub_08019470
sub_08019470: @ 0x08019470
	ldr r3, _08019480 @ =0x02039780
	str r0, [r3]
	str r1, [r3, #8]
	lsls r1, r1, #2
	adds r3, #0xc
	adds r1, r1, r3
	str r2, [r1]
	bx lr
	.align 2, 0
_08019480: .4byte 0x02039780
	thumb_func_end sub_08019470

	thumb_func_start sub_08019484
sub_08019484: @ 0x08019484
	push {r4, r5, lr}
	ldr r0, _080194AC @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #1
_08019492:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801949E
	ldr r0, [r4, #4]
	bl sub_08002B30
_0801949E:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _08019492
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080194AC: .4byte 0x020397D4
	thumb_func_end sub_08019484

	thumb_func_start sub_080194B0
sub_080194B0: @ 0x080194B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r5, _080194C8 @ =0x02039780
	ldr r0, [r5]
	cmp r0, #2
	beq _080194E2
	cmp r0, #2
	bgt _080194CC
	cmp r0, #1
	beq _080194D6
	b _08019554
	.align 2, 0
_080194C8: .4byte 0x02039780
_080194CC:
	cmp r0, #3
	beq _08019520
	cmp r0, #4
	beq _08019546
	b _08019554
_080194D6:
	movs r4, #0
	str r4, [r5, #4]
	adds r0, r5, #0
	bl sub_080192D4
	b _08019552
_080194E2:
	adds r0, r5, #0
	bl sub_080192D4
	movs r0, #0
	str r0, [r5, #0x14]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x20]
	ldr r4, [r5, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801931C
	lsls r4, r4, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _08019516
	adds r0, r5, #0
	adds r0, #0x1c
	adds r0, r4, r0
	ldr r0, [r0]
	cmp r0, #0
	beq _08019518
_08019516:
	movs r0, #1
_08019518:
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5]
	b _08019554
_08019520:
	adds r0, r5, #0
	bl sub_080192D4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801931C
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801931C
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #0x14]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x18]
	str r0, [r5, #0x20]
	str r0, [r5]
	b _08019554
_08019546:
	movs r4, #0
	str r4, [r5, #4]
	str r4, [r5, #0xc]
	str r4, [r5, #0x10]
	bl sub_080193E8
_08019552:
	str r4, [r5]
_08019554:
	ldr r0, [r5, #4]
	cmp r0, #1
	bne _080195DE
	movs r0, #0x14
	adds r0, r0, r5
	mov r8, r0
	movs r0, #0x1c
	adds r0, r0, r5
	mov ip, r0
	ldr r7, _08019588 @ =0xFFFFF000
	movs r3, #0
	movs r6, #0x80
	lsls r6, r6, #5
	movs r2, #0
	movs r4, #1
_08019572:
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	ble _0801958C
	adds r0, r0, r7
	str r0, [r1]
	cmp r0, #0
	bgt _0801959A
	b _08019598
	.align 2, 0
_08019588: .4byte 0xFFFFF000
_0801958C:
	cmp r0, #0
	bge _0801959A
	adds r0, r0, r6
	str r0, [r1]
	cmp r0, #0
	blt _0801959A
_08019598:
	str r3, [r1]
_0801959A:
	mov r0, ip
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	ble _080195AE
	adds r0, r0, r7
	str r0, [r1]
	cmp r0, #0
	bgt _080195BC
	b _080195BA
_080195AE:
	cmp r0, #0
	bge _080195BC
	adds r0, r0, r6
	str r0, [r1]
	cmp r0, #0
	blt _080195BC
_080195BA:
	str r3, [r1]
_080195BC:
	adds r2, #4
	subs r4, #1
	cmp r4, #0
	bge _08019572
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _080195DE
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	bne _080195DE
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _080195DE
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne _080195DE
	str r0, [r5, #4]
_080195DE:
	adds r0, r5, #0
	bl sub_08019414
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080194B0

	thumb_func_start sub_080195F0
sub_080195F0: @ 0x080195F0
	push {lr}
	ldr r1, _08019610 @ =0x02039780
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	bl sub_080035FC
	ldr r1, _08019614 @ =sub_080194B0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08019610: .4byte 0x02039780
_08019614: .4byte sub_080194B0
	thumb_func_end sub_080195F0

	thumb_func_start sub_08019618
sub_08019618: @ 0x08019618
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _0801962E
	bl sub_080193E8
	adds r0, r4, #0
	bl sub_08003450
_0801962E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08019618

	thumb_func_start sub_08019634
sub_08019634: @ 0x08019634
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _08019644 @ =sub_080195F0
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_08019644: .4byte sub_080195F0
	thumb_func_end sub_08019634

	thumb_func_start sub_08019648
sub_08019648: @ 0x08019648
	push {lr}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #9
	movs r2, #0xcf
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r3, #1
	bl sub_08003D38
	movs r0, #0xa8
	lsls r0, r0, #2
	ldr r2, _08019678 @ =0x0000019F
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	movs r3, #0
	bl sub_08003E7C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08019678: .4byte 0x0000019F
	thumb_func_end sub_08019648

	thumb_func_start sub_0801967C
sub_0801967C: @ 0x0801967C
	push {lr}
	sub sp, #4
	ldr r0, _08019694 @ =0x00010300
	movs r1, #0
	str r1, [sp]
	movs r2, #0x3c
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08019694: .4byte 0x00010300
	thumb_func_end sub_0801967C

	thumb_func_start sub_08019698
sub_08019698: @ 0x08019698
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldr r1, _08019734 @ =0x020397D4
	lsls r0, r3, #5
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r1]
	adds r7, r1, r0
	ldr r1, [r4, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #0xa
	str r0, [sp, #0x18]
	cmp r6, #0
	bne _0801973C
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0xa
	movs r1, #0xf0
	lsls r1, r1, #7
	adds r1, r1, r0
	mov sl, r1
	lsls r1, r3, #0xc
	ldr r2, [sp, #0x18]
	ldr r3, _08019738 @ =0xFFFF9C00
	adds r0, r2, r3
	subs r5, r1, r0
	movs r2, #0xd1
	lsls r2, r2, #1
	str r6, [sp]
	movs r4, #5
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r0, sl
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_08016104
	ldr r0, [r7, #4]
	movs r1, #1
	rsbs r1, r1, #0
	mov r8, r1
	bl sub_080026BC
	adds r7, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	str r6, [sp]
	str r4, [sp, #4]
	str r6, [sp, #8]
	mov r3, sl
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0
	movs r3, #0
	bl sub_08016104
	ldr r0, [r7, #4]
	mov r1, r8
	bl sub_080026BC
	b _080197B4
	.align 2, 0
_08019734: .4byte 0x020397D4
_08019738: .4byte 0xFFFF9C00
_0801973C:
	lsls r1, r3, #2
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r6, [r0]
	lsls r4, r3, #1
	adds r4, r4, r3
	lsls r4, r4, #2
	adds r0, r4, #0
	adds r0, #0x6b
	lsls r0, r0, #8
	mov sl, r0
	lsls r3, r3, #0xc
	mov r8, r3
	ldr r1, [sp, #0x18]
	ldr r2, _080197C4 @ =0xFFFF9000
	adds r0, r1, r2
	subs r5, r3, r0
	movs r2, #0xd1
	lsls r2, r2, #1
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	movs r0, #5
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r1, sl
	str r1, [sp, #0xc]
	str r5, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0
	bl sub_0801608C
	adds r4, #0x69
	lsls r4, r4, #8
	ldr r2, [sp, #0x18]
	ldr r3, _080197C8 @ =0xFFFF9400
	adds r0, r2, r3
	mov r1, r8
	subs r5, r1, r0
	adds r7, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	ldr r0, _080197CC @ =0x0821BD40
	lsls r6, r6, #2
	adds r6, r6, r0
	ldr r3, [r6]
	mov r0, sb
	str r0, [sp]
	movs r1, #5
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0
	bl sub_0801608C
_080197B4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080197C4: .4byte 0xFFFF9000
_080197C8: .4byte 0xFFFF9400
_080197CC: .4byte 0x0821BD40
	thumb_func_end sub_08019698

	thumb_func_start sub_080197D0
sub_080197D0: @ 0x080197D0
	push {r4, r5, lr}
	ldr r0, _080197F8 @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #3
_080197DE:
	ldr r0, [r4]
	cmp r0, #0
	beq _080197EA
	adds r0, r4, #0
	bl sub_0801600C
_080197EA:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _080197DE
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080197F8: .4byte 0x020397D4
	thumb_func_end sub_080197D0

	thumb_func_start sub_080197FC
sub_080197FC: @ 0x080197FC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0801985C @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x90
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r6, #0
_0801980C:
	ldr r0, [r5]
	cmp r0, #0
	beq _0801984E
	ldr r0, [r5, #4]
	bl sub_08001B58
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	str r0, [r1]
	ldr r0, [r5, #0xc]
	str r0, [r1, #4]
	cmp r6, #1
	beq _0801982A
	cmp r6, #3
	bne _0801984E
_0801982A:
	adds r0, r1, #0
	bl sub_08002648
	cmp r0, #0
	beq _0801984E
	lsrs r4, r6, #0x1f
	adds r4, r6, r4
	asrs r4, r4, #1
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_08019698
	movs r1, #1
	lsls r1, r4
	ldr r0, [r7, #0x14]
	orrs r0, r1
	str r0, [r7, #0x14]
_0801984E:
	adds r6, #1
	adds r5, #0x10
	cmp r6, #3
	ble _0801980C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801985C: .4byte 0x020397D4
	thumb_func_end sub_080197FC

	thumb_func_start sub_08019860
sub_08019860: @ 0x08019860
	ldr r0, _08019868 @ =0x02039800
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_08019868: .4byte 0x02039800
	thumb_func_end sub_08019860

	thumb_func_start sub_0801986C
sub_0801986C: @ 0x0801986C
	push {r4, lr}
	ldr r4, _08019880 @ =0x02039800
	str r0, [r4]
	str r1, [r4, #8]
	str r2, [r4, #0xc]
	str r3, [r4, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019880: .4byte 0x02039800
	thumb_func_end sub_0801986C

	thumb_func_start sub_08019884
sub_08019884: @ 0x08019884
	push {r4, r5, lr}
	ldr r0, _080198AC @ =0x020397D4
	ldr r0, [r0]
	movs r1, #0x9c
	lsls r1, r1, #2
	adds r4, r0, r1
	movs r5, #3
_08019892:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801989E
	ldr r0, [r4, #4]
	bl sub_08002B30
_0801989E:
	subs r5, #1
	subs r4, #0x10
	cmp r5, #0
	bge _08019892
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080198AC: .4byte 0x020397D4
	thumb_func_end sub_08019884

	thumb_func_start sub_080198B0
sub_080198B0: @ 0x080198B0
	push {r4, r5, r6, lr}
	ldr r5, _080198C4 @ =0x02039800
	movs r6, #0
	ldr r4, [r5]
	cmp r4, #1
	beq _080198C8
	cmp r4, #2
	beq _080198D4
	b _080198E0
	.align 2, 0
_080198C4: .4byte 0x02039800
_080198C8:
	bl sub_08019648
	str r4, [r5, #4]
	str r6, [r5, #0x14]
	str r6, [r5]
	b _08019968
_080198D4:
	bl sub_080197D0
	movs r0, #5
	str r0, [r5, #4]
	str r6, [r5]
	movs r6, #1
_080198E0:
	cmp r6, #0
	bne _08019968
	ldr r0, [r5, #4]
	subs r0, #1
	cmp r0, #4
	bhi _08019962
	lsls r0, r0, #2
	ldr r1, _080198F8 @ =_080198FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080198F8: .4byte _080198FC
_080198FC: @ jump table
	.4byte _08019910 @ case 0
	.4byte _08019922 @ case 1
	.4byte _0801993A @ case 2
	.4byte _08019948 @ case 3
	.4byte _0801995A @ case 4
_08019910:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08019698
	movs r0, #8
	str r0, [r5, #0x18]
	movs r0, #2
	b _08019960
_08019922:
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	cmp r0, #0
	bgt _08019962
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_08019698
	movs r0, #3
	b _08019960
_0801993A:
	ldr r0, [r5, #0x14]
	cmp r0, #3
	bne _08019962
	movs r0, #0x3c
	str r0, [r5, #0x18]
	movs r0, #4
	b _08019960
_08019948:
	ldr r0, [r5, #0x18]
	subs r0, #1
	str r0, [r5, #0x18]
	cmp r0, #0
	bgt _08019962
	bl sub_080197D0
	movs r0, #5
	b _08019960
_0801995A:
	bl sub_0801967C
	movs r0, #0
_08019960:
	str r0, [r5, #4]
_08019962:
	adds r0, r5, #0
	bl sub_080197FC
_08019968:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_080198B0

	thumb_func_start sub_08019970
sub_08019970: @ 0x08019970
	push {lr}
	ldr r0, _08019994 @ =0x02039800
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #1
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bl sub_080035FC
	ldr r1, _08019998 @ =sub_080198B0
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08019994: .4byte 0x02039800
_08019998: .4byte sub_080198B0
	thumb_func_end sub_08019970

	thumb_func_start sub_0801999C
sub_0801999C: @ 0x0801999C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080034D4
	cmp r0, #0
	beq _080199B2
	bl sub_080197D0
	adds r0, r4, #0
	bl sub_08003450
_080199B2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801999C

	thumb_func_start sub_080199B8
sub_080199B8: @ 0x080199B8
	push {lr}
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080199C8 @ =sub_08019970
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_080199C8: .4byte sub_08019970
	thumb_func_end sub_080199B8

	thumb_func_start sub_080199CC
sub_080199CC: @ 0x080199CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080199F0 @ =0x020382A0
	movs r1, #1
	str r1, [r0, #0x18]
	bl sub_08003928
	cmp r0, #1
	bne _080199F4
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
	movs r0, #0x10
	bl sub_08010384
	b _08019B0A
	.align 2, 0
_080199F0: .4byte 0x020382A0
_080199F4:
	cmp r4, #7
	bls _080199FA
	b _08019AFC
_080199FA:
	lsls r0, r4, #2
	ldr r1, _08019A04 @ =_08019A08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08019A04: .4byte _08019A08
_08019A08: @ jump table
	.4byte _08019A28 @ case 0
	.4byte _08019A36 @ case 1
	.4byte _08019A9C @ case 2
	.4byte _08019AB0 @ case 3
	.4byte _08019AC0 @ case 4
	.4byte _08019AD0 @ case 5
	.4byte _08019AE0 @ case 6
	.4byte _08019AF4 @ case 7
_08019A28:
	movs r0, #0
	bl sub_08014620
	bl sub_08014014
	movs r0, #0xb
	b _08019AE8
_08019A36:
	bl sub_0801462C
	cmp r0, #1
	bne _08019A4C
	ldr r1, _08019A48 @ =0x020345B0
	movs r0, #0xb
	str r0, [r1, #0x10]
	movs r0, #0x10
	b _08019AE8
	.align 2, 0
_08019A48: .4byte 0x020345B0
_08019A4C:
	movs r0, #0
	bl sub_08014620
	bl sub_08014768
	cmp r0, #2
	bgt _08019A64
	movs r0, #0
	bl sub_08014804
	cmp r0, #0x12
	bne _08019A8C
_08019A64:
	movs r0, #1
	bl sub_08014398
	adds r1, r0, #0
	cmp r1, #0
	bne _08019A7C
	ldr r0, _08019A78 @ =0x020345B0
	str r1, [r0, #0x1c]
	movs r0, #0xd
	b _08019AE8
	.align 2, 0
_08019A78: .4byte 0x020345B0
_08019A7C:
	ldr r1, _08019A88 @ =0x020345B0
	movs r0, #1
	str r0, [r1, #0x1c]
	movs r0, #0xd
	b _08019AE8
	.align 2, 0
_08019A88: .4byte 0x020345B0
_08019A8C:
	ldr r1, _08019A98 @ =0x020345B0
	movs r0, #2
	str r0, [r1, #0x10]
	movs r0, #0x10
	b _08019AE8
	.align 2, 0
_08019A98: .4byte 0x020345B0
_08019A9C:
	movs r0, #2
	bl sub_08014620
	ldr r1, _08019AAC @ =0x020345B0
	movs r0, #0
	str r0, [r1, #0x20]
	movs r0, #0xf
	b _08019AE8
	.align 2, 0
_08019AAC: .4byte 0x020345B0
_08019AB0:
	ldr r1, _08019ABC @ =0x020345B0
	movs r0, #6
	str r0, [r1, #0x10]
	movs r0, #0x10
	b _08019AE8
	.align 2, 0
_08019ABC: .4byte 0x020345B0
_08019AC0:
	ldr r1, _08019ACC @ =0x020345B0
	movs r0, #0
	str r0, [r1, #0x30]
	movs r0, #0x17
	b _08019AE8
	.align 2, 0
_08019ACC: .4byte 0x020345B0
_08019AD0:
	ldr r1, _08019ADC @ =0x020345B0
	movs r0, #9
	str r0, [r1, #0x10]
	movs r0, #0x10
	b _08019AE8
	.align 2, 0
_08019ADC: .4byte 0x020345B0
_08019AE0:
	ldr r1, _08019AF0 @ =0x020345B0
	movs r0, #0
	str r0, [r1, #0x38]
	movs r0, #0x16
_08019AE8:
	movs r1, #0
	bl sub_08003908
	b _08019AFC
	.align 2, 0
_08019AF0: .4byte 0x020345B0
_08019AF4:
	movs r0, #0x31
	movs r1, #0
	bl sub_08003908
_08019AFC:
	ldr r0, _08019B1C @ =0x020382A0
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _08019B0A
	movs r0, #0x10
	bl sub_08010384
_08019B0A:
	movs r0, #1
	bl sub_080104AC
	ldr r1, _08019B20 @ =0x0300149C
	movs r0, #0x20
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019B1C: .4byte 0x020382A0
_08019B20: .4byte 0x0300149C
	thumb_func_end sub_080199CC

	thumb_func_start sub_08019B24
sub_08019B24: @ 0x08019B24
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, _08019B40 @ =0x020384AC
	str r1, [r0]
	ldr r4, _08019B44 @ =0x020384A8
	lsls r1, r1, #4
	movs r0, #1
	bl sub_080038A8
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08019B40: .4byte 0x020384AC
_08019B44: .4byte 0x020384A8
	thumb_func_end sub_08019B24

	thumb_func_start sub_08019B48
sub_08019B48: @ 0x08019B48
	push {lr}
	ldr r0, _08019B58 @ =0x020384A8
	ldr r0, [r0]
	bl sub_080038C8
	pop {r0}
	bx r0
	.align 2, 0
_08019B58: .4byte 0x020384A8
	thumb_func_end sub_08019B48

	thumb_func_start sub_08019B5C
sub_08019B5C: @ 0x08019B5C
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_08019B5C

	thumb_func_start sub_08019B68
sub_08019B68: @ 0x08019B68
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08019B90 @ =0x020384A8
	ldr r4, [r0]
	ldr r1, _08019B94 @ =0x020384AC
	ldr r0, [r1]
	cmp r5, r0
	bge _08019B8A
	adds r6, r1, #0
_08019B7A:
	adds r0, r4, #0
	bl sub_08019B5C
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _08019B7A
_08019B8A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019B90: .4byte 0x020384A8
_08019B94: .4byte 0x020384AC
	thumb_func_end sub_08019B68

	thumb_func_start sub_08019B98
sub_08019B98: @ 0x08019B98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _08019BB2
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _08019BAC
	bl sub_080028D4
_08019BAC:
	adds r0, r4, #0
	bl sub_08019B5C
_08019BB2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08019B98

	thumb_func_start sub_08019BB8
sub_08019BB8: @ 0x08019BB8
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r0, _08019BE0 @ =0x020384A8
	ldr r4, [r0]
	ldr r1, _08019BE4 @ =0x020384AC
	ldr r0, [r1]
	cmp r5, r0
	bge _08019BDA
	adds r6, r1, #0
_08019BCA:
	adds r0, r4, #0
	bl sub_08019B98
	adds r5, #1
	adds r4, #0x10
	ldr r0, [r6]
	cmp r5, r0
	blt _08019BCA
_08019BDA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08019BE0: .4byte 0x020384A8
_08019BE4: .4byte 0x020384AC
	thumb_func_end sub_08019BB8

	thumb_func_start sub_08019BE8
sub_08019BE8: @ 0x08019BE8
	push {lr}
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, _08019C04 @ =0x020384A8
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r1, r0, r1
	cmp r2, r3
	bhs _08019C10
_08019BFA:
	ldr r0, [r1]
	cmp r0, #0
	bne _08019C08
	adds r0, r1, #0
	b _08019C12
	.align 2, 0
_08019C04: .4byte 0x020384A8
_08019C08:
	adds r2, #1
	adds r1, #0x10
	cmp r2, r3
	blo _08019BFA
_08019C10:
	movs r0, #0
_08019C12:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_08019BE8

	thumb_func_start sub_08019C18
sub_08019C18: @ 0x08019C18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r4]
	cmp r0, #0
	beq _08019C40
	adds r0, r4, #0
	bl sub_08019B98
_08019C40:
	movs r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001AC4
	str r0, [r4, #4]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_0800256C
	ldr r0, [r4, #4]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_0800257C
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x24]
	bl sub_0800258C
	ldr r0, [sp, #0x28]
	str r0, [r4, #8]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x28]
	str r2, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
	ldr r0, [sp, #0x30]
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08019C18

	thumb_func_start sub_08019C90
sub_08019C90: @ 0x08019C90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r7, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, [r4]
	cmp r0, #0
	beq _08019CB8
	adds r0, r4, #0
	bl sub_08019B98
_08019CB8:
	movs r0, #1
	str r0, [r4]
	ldr r0, [r4, #4]
	adds r1, r7, #0
	mov r2, r8
	mov r3, sb
	bl sub_08001AE4
	str r0, [r4, #4]
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_0800256C
	ldr r0, [r4, #4]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	bl sub_0800257C
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x24]
	bl sub_0800258C
	ldr r0, [sp, #0x28]
	str r0, [r4, #8]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x28]
	str r2, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
	ldr r0, [sp, #0x30]
	str r0, [r1, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08019C90

	thumb_func_start sub_08019D08
sub_08019D08: @ 0x08019D08
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08019DBE
	movs r5, #0
_08019D1A:
	ldr r3, [r4]
	cmp r3, #0
	bne _08019D38
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r3, [sp]
	b _08019D90
_08019D38:
	cmp r3, #4
	bne _08019D4C
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #8
	b _08019D88
_08019D4C:
	cmp r3, #5
	bne _08019D60
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #8
	b _08019D88
_08019D60:
	cmp r3, #1
	bne _08019D76
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r5, [sp]
	movs r3, #1
	bl sub_08003E7C
	b _08019DB2
_08019D76:
	cmp r3, #2
	bne _08019D98
	ldr r0, [r4, #8]
	lsls r0, r0, #5
	ldr r1, [r4, #4]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #9
_08019D88:
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r5, [sp]
_08019D90:
	movs r3, #1
	bl sub_08003D38
	b _08019DB2
_08019D98:
	cmp r3, #3
	bne _08019DB2
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	str r5, [sp]
	movs r3, #1
	bl sub_08003E7C
_08019DB2:
	adds r4, #0x14
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019D1A
_08019DBE:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08019D08

	thumb_func_start sub_08019DC8
sub_08019DC8: @ 0x08019DC8
	push {lr}
	ldr r0, _08019DD4 @ =0x0821BD5C
	bl sub_08019D08
	pop {r0}
	bx r0
	.align 2, 0
_08019DD4: .4byte 0x0821BD5C
	thumb_func_end sub_08019DC8

	thumb_func_start sub_08019DD8
sub_08019DD8: @ 0x08019DD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _08019E28 @ =0x0821BF08
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08000D40
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov r8, r0
	ldr r0, _08019E2C @ =0x020382A0
	movs r1, #0x80
	lsls r1, r1, #2
	adds r7, r0, r1
_08019DFC:
	ldr r0, [r5, #4]
	movs r4, #0
	cmp r0, r8
	bne _08019E06
	ldr r4, _08019E30 @ =0x0000F3FF
_08019E06:
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000E44
	strh r4, [r7]
	adds r5, #0xc
	adds r7, #2
	adds r6, #1
	cmp r6, #3
	ble _08019DFC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08019E28: .4byte 0x0821BF08
_08019E2C: .4byte 0x020382A0
_08019E30: .4byte 0x0000F3FF
	thumb_func_end sub_08019DD8

	thumb_func_start sub_08019E34
sub_08019E34: @ 0x08019E34
	push {lr}
	ldr r0, _08019E4C @ =0x030014A4
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08019E48
	ldr r1, _08019E50 @ =0x020382A0
	movs r0, #1
	str r0, [r1, #0x50]
_08019E48:
	pop {r0}
	bx r0
	.align 2, 0
_08019E4C: .4byte 0x030014A4
_08019E50: .4byte 0x020382A0
	thumb_func_end sub_08019E34

	thumb_func_start sub_08019E54
sub_08019E54: @ 0x08019E54
	ldr r1, _08019E5C @ =0x020382A0
	str r0, [r1, #0x5c]
	bx lr
	.align 2, 0
_08019E5C: .4byte 0x020382A0
	thumb_func_end sub_08019E54

	thumb_func_start sub_08019E60
sub_08019E60: @ 0x08019E60
	push {r4, lr}
	ldr r4, _08019E70 @ =0x020382A0
	ldr r0, [r4, #0x5c]
	cmp r0, #1
	beq _08019E74
	cmp r0, #2
	beq _08019E88
	b _08019E92
	.align 2, 0
_08019E70: .4byte 0x020382A0
_08019E74:
	ldr r2, _08019E84 @ =0x000006A2
	movs r0, #0
	movs r1, #1
	movs r3, #0
	bl sub_08001364
	b _08019E8E
	.align 2, 0
_08019E84: .4byte 0x000006A2
_08019E88:
	movs r0, #0
	bl sub_08001384
_08019E8E:
	movs r0, #0
	str r0, [r4, #0x5c]
_08019E92:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08019E60

	thumb_func_start sub_08019E98
sub_08019E98: @ 0x08019E98
	push {lr}
	ldr r1, _08019EB0 @ =0x020382A0
	movs r0, #0
	str r0, [r1, #0x5c]
	bl sub_080035FC
	ldr r1, _08019EB4 @ =sub_08019E60
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_08019EB0: .4byte 0x020382A0
_08019EB4: .4byte sub_08019E60
	thumb_func_end sub_08019E98

	thumb_func_start sub_08019EB8
sub_08019EB8: @ 0x08019EB8
	push {lr}
	movs r0, #0xd
	bl sub_080034D4
	cmp r0, #0
	beq _08019ED6
	movs r0, #0
	bl sub_0800151C
	movs r0, #0
	bl sub_08001384
	movs r0, #0xd
	bl sub_08003450
_08019ED6:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08019EB8

	thumb_func_start sub_08019EDC
sub_08019EDC: @ 0x08019EDC
	push {lr}
	ldr r1, _08019EF4 @ =sub_08019E98
	movs r2, #0x8b
	lsls r2, r2, #5
	movs r0, #0xd
	bl sub_08003344
	movs r0, #1
	bl sub_0800151C
	pop {r0}
	bx r0
	.align 2, 0
_08019EF4: .4byte sub_08019E98
	thumb_func_end sub_08019EDC

	thumb_func_start sub_08019EF8
sub_08019EF8: @ 0x08019EF8
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08019F58 @ =0x020382A0
	ldr r2, [r1, #0x1c]
	lsls r0, r2, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r1, _08019F5C @ =0x000006CA
	adds r2, r2, r1
	movs r4, #0
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, _08019F60 @ =0x000006C9
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x88
	lsls r0, r0, #2
	ldr r2, _08019F64 @ =0x000006C6
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x88
	lsls r0, r0, #9
	ldr r1, _08019F68 @ =0x000006B4
	adds r5, r5, r1
	str r4, [sp]
	movs r1, #1
	adds r2, r5, #0
	movs r3, #1
	bl sub_08003D38
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08019F58: .4byte 0x020382A0
_08019F5C: .4byte 0x000006CA
_08019F60: .4byte 0x000006C9
_08019F64: .4byte 0x000006C6
_08019F68: .4byte 0x000006B4
	thumb_func_end sub_08019EF8

	thumb_func_start sub_08019F6C
sub_08019F6C: @ 0x08019F6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _08019F80 @ =0x02038318
	ldr r5, _08019F84 @ =0x0821BF20
	ldr r0, _08019F88 @ =0x020384A8
	ldr r0, [r0]
	adds r7, r0, #0
	adds r7, #0xa0
	b _08019FCA
	.align 2, 0
_08019F80: .4byte 0x02038318
_08019F84: .4byte 0x0821BF20
_08019F88: .4byte 0x020384A8
_08019F8C:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	mov ip, r0
	ldr r2, [r5, #4]
	ldr r3, [r5, #8]
	movs r4, #0xc
	ldrsh r0, [r5, r4]
	str r0, [sp]
	movs r4, #0x10
	ldrsh r0, [r5, r4]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, ip
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #1
	bl sub_08019C18
	ldr r0, [r5, #0x14]
	str r0, [r6]
	ldr r0, [r5, #0x2c]
	str r0, [r6, #4]
	ldr r0, [r5, #0x30]
	str r0, [r6, #8]
	adds r7, #0x10
	adds r5, #0x44
	adds r6, #0xc
_08019FCA:
	ldr r1, [r5]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08019F8C
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08019F6C

	thumb_func_start sub_08019FDC
sub_08019FDC: @ 0x08019FDC
	push {r4, r5, r6, r7, lr}
	ldr r0, _0801A000 @ =0x020384A8
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xa0
	ldr r6, _0801A004 @ =0x02038318
	ldr r5, _0801A008 @ =0x0821BF20
	movs r7, #9
_08019FEC:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A064
	ldr r0, [r6]
	cmp r0, #0
	beq _0801A00C
	subs r0, #1
	str r0, [r6]
	b _0801A064
	.align 2, 0
_0801A000: .4byte 0x020384A8
_0801A004: .4byte 0x02038318
_0801A008: .4byte 0x0821BF20
_0801A00C:
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r0, [r4]
	cmp r0, #1
	bne _0801A04C
	ldr r0, [r6, #4]
	ldr r1, [r5, #0x34]
	adds r1, r0, r1
	str r1, [r6, #4]
	ldr r2, [r4, #8]
	ldr r0, [r5, #0x20]
	cmp r2, r0
	beq _0801A05A
	cmp r1, #0
	ble _0801A038
	adds r1, r2, r1
	str r1, [r4, #8]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	blt _0801A05A
	b _0801A046
_0801A038:
	cmp r1, #0
	bge _0801A05A
	adds r1, r2, r1
	str r1, [r4, #8]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	bgt _0801A05A
_0801A046:
	movs r0, #2
	str r0, [r4]
	b _0801A05A
_0801A04C:
	ldr r0, [r5]
	cmp r0, #0
	beq _0801A05A
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #8]
_0801A05A:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0xc]
	str r1, [r0, #4]
_0801A064:
	subs r7, #1
	adds r4, #0x10
	adds r5, #0x44
	adds r6, #0xc
	cmp r7, #0
	bge _08019FEC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_08019FDC

	thumb_func_start sub_0801A078
sub_0801A078: @ 0x0801A078
	push {r4, r5, lr}
	ldr r0, _0801A0A0 @ =0x020384A8
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0xa0
	movs r5, #9
_0801A084:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A090
	adds r0, r4, #0
	bl sub_08019B98
_0801A090:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801A084
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A0A0: .4byte 0x020384A8
	thumb_func_end sub_0801A078

	thumb_func_start sub_0801A0A4
sub_0801A0A4: @ 0x0801A0A4
	push {lr}
	ldr r0, _0801A0B4 @ =0x020382A0
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bgt _0801A0B8
	movs r0, #0
	b _0801A0BA
	.align 2, 0
_0801A0B4: .4byte 0x020382A0
_0801A0B8:
	movs r0, #1
_0801A0BA:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801A0A4

	thumb_func_start sub_0801A0C0
sub_0801A0C0: @ 0x0801A0C0
	ldr r1, _0801A0C8 @ =0x020382A0
	str r0, [r1, #0x70]
	bx lr
	.align 2, 0
_0801A0C8: .4byte 0x020382A0
	thumb_func_end sub_0801A0C0

	thumb_func_start sub_0801A0CC
sub_0801A0CC: @ 0x0801A0CC
	push {r4, lr}
	ldr r4, _0801A0DC @ =0x020382A0
	ldr r0, [r4, #0x70]
	cmp r0, #1
	bne _0801A0E0
	bl sub_08019EF8
	b _0801A0F2
	.align 2, 0
_0801A0DC: .4byte 0x020382A0
_0801A0E0:
	cmp r0, #2
	bne _0801A0EA
	bl sub_08019F6C
	b _0801A0F2
_0801A0EA:
	cmp r0, #3
	bne _0801A0F6
	bl sub_0801A078
_0801A0F2:
	movs r0, #0
	str r0, [r4, #0x70]
_0801A0F6:
	bl sub_08019FDC
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801A0CC

	thumb_func_start sub_0801A100
sub_0801A100: @ 0x0801A100
	push {lr}
	ldr r1, _0801A12C @ =0x020382A0
	movs r0, #0
	str r0, [r1, #0x70]
	adds r1, #0x78
	movs r2, #0
	movs r0, #0xf
_0801A10E:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	subs r0, #1
	adds r1, #0xc
	cmp r0, #0
	bge _0801A10E
	bl sub_080035FC
	ldr r1, _0801A130 @ =sub_0801A0CC
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0801A12C: .4byte 0x020382A0
_0801A130: .4byte sub_0801A0CC
	thumb_func_end sub_0801A100

	thumb_func_start sub_0801A134
sub_0801A134: @ 0x0801A134
	push {lr}
	movs r0, #0xb
	bl sub_080034D4
	cmp r0, #0
	beq _0801A14A
	bl sub_0801A078
	movs r0, #0xb
	bl sub_08003450
_0801A14A:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801A134

	thumb_func_start sub_0801A150
sub_0801A150: @ 0x0801A150
	push {lr}
	ldr r1, _0801A164 @ =sub_0801A100
	movs r2, #0x8a
	lsls r2, r2, #5
	movs r0, #0xb
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0801A164: .4byte sub_0801A100
	thumb_func_end sub_0801A150

	thumb_func_start sub_0801A168
sub_0801A168: @ 0x0801A168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	ldr r1, _0801A184 @ =0x020382A0
	ldr r0, [r1, #8]
	cmp r0, #1
	bne _0801A188
	movs r5, #1
	ldr r7, [r1, #0xc]
	b _0801A1A0
	.align 2, 0
_0801A184: .4byte 0x020382A0
_0801A188:
	cmp r0, #2
	bne _0801A19A
	ldr r0, [r1, #0x14]
	movs r5, #2
	cmp r0, #2
	bne _0801A196
	movs r5, #3
_0801A196:
	ldr r7, [r1, #0x10]
	b _0801A1A0
_0801A19A:
	movs r5, #0
	movs r7, #1
	rsbs r7, r7, #0
_0801A1A0:
	ldr r1, _0801A220 @ =0x0821C2B8
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r6, [r0]
	movs r0, #0xc0
	mov r8, r0
	movs r2, #8
	ldr r1, _0801A224 @ =0x020384A8
	mov sb, r1
	ldr r4, [r1]
	ldr r0, [r4]
	cmp r0, #0
	bne _0801A1DC
	movs r3, #0xf0
	lsls r3, r3, #7
	movs r5, #0x98
	lsls r5, r5, #8
	mov r1, r8
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x8e
	movs r3, #0
	bl sub_08019C18
_0801A1DC:
	mov r2, sb
	ldr r1, [r2]
	adds r4, r1, #0
	adds r4, #0x10
	movs r0, #0x18
	mov r8, r0
	movs r2, #9
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r3, [r0, #0xc]
	ldr r5, [r0, #0x10]
	ldr r0, _0801A228 @ =0x020382A0
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0801A22C
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bne _0801A236
	mov r1, r8
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #8
	movs r3, #0
	bl sub_08019C90
	b _0801A264
	.align 2, 0
_0801A220: .4byte 0x0821C2B8
_0801A224: .4byte 0x020384A8
_0801A228: .4byte 0x020382A0
_0801A22C:
	cmp r0, #2
	bne _0801A258
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0801A23C
_0801A236:
	str r3, [r4, #8]
	str r5, [r4, #0xc]
	b _0801A264
_0801A23C:
	mov r1, r8
	str r1, [sp]
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #8
	movs r3, #0
	bl sub_08019C18
	b _0801A264
_0801A258:
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0801A264
	adds r0, r4, #0
	bl sub_08019B98
_0801A264:
	ldr r0, _0801A2C4 @ =0x020384A8
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	movs r5, #3
_0801A26E:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A27A
	adds r0, r4, #0
	bl sub_08019B98
_0801A27A:
	adds r4, #0x10
	subs r5, #1
	cmp r5, #0
	bge _0801A26E
	ldr r0, _0801A2C4 @ =0x020384A8
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #0x20
	movs r2, #0
	mov r8, r2
	movs r5, #0
	ldr r0, [r6]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801A316
	mov sl, r5
	mov sb, r1
_0801A29E:
	cmp r5, r7
	beq _0801A2A6
	cmp r7, sb
	bne _0801A2E4
_0801A2A6:
	ldr r1, _0801A2C8 @ =0x020382A0
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq _0801A2CC
	adds r2, #0xc
	adds r0, r1, r2
	ldr r0, [r0]
	movs r2, #7
	cmp r0, #0
	bne _0801A2E6
	movs r2, #1
	b _0801A2E6
	.align 2, 0
_0801A2C4: .4byte 0x020384A8
_0801A2C8: .4byte 0x020382A0
_0801A2CC:
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	lsls r0, r0, #2
	ldr r1, _0801A2E0 @ =0x0821C2C8
	adds r0, r0, r1
	ldr r2, [r0]
	b _0801A2E6
	.align 2, 0
_0801A2E0: .4byte 0x0821C2C8
_0801A2E4:
	movs r2, #0
_0801A2E6:
	ldr r3, [r6]
	mov r0, r8
	str r0, [sp]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, sl
	str r1, [sp, #8]
	ldr r0, [r6, #4]
	str r0, [sp, #0xc]
	ldr r0, [r6, #8]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x8a
	bl sub_08019C18
	adds r4, #0x10
	adds r6, #0x14
	adds r5, #1
	ldr r0, [r6]
	cmp r0, sb
	bne _0801A29E
_0801A316:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne _0801A330
	ldr r0, _0801A340 @ =0x020382A0
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0
	bne _0801A330
	movs r0, #2
	str r0, [r1]
_0801A330:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A340: .4byte 0x020382A0
	thumb_func_end sub_0801A168

	thumb_func_start sub_0801A344
sub_0801A344: @ 0x0801A344
	push {lr}
	ldr r0, _0801A358 @ =0x020384A8
	ldr r1, [r0]
	movs r2, #0
_0801A34C:
	ldr r0, [r1]
	cmp r0, #0
	beq _0801A35C
	movs r0, #1
	b _0801A366
	.align 2, 0
_0801A358: .4byte 0x020384A8
_0801A35C:
	adds r2, #1
	adds r1, #0x10
	cmp r2, #5
	ble _0801A34C
	movs r0, #0
_0801A366:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801A344

	thumb_func_start sub_0801A36C
sub_0801A36C: @ 0x0801A36C
	push {r4, r5, lr}
	ldr r0, _0801A398 @ =0x020384A8
	ldr r4, [r0]
	movs r5, #5
_0801A374:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A38A
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_0801A38A:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801A374
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A398: .4byte 0x020384A8
	thumb_func_end sub_0801A36C

	thumb_func_start sub_0801A39C
sub_0801A39C: @ 0x0801A39C
	push {r4, r5, lr}
	ldr r0, _0801A3C0 @ =0x020384A8
	ldr r4, [r0]
	movs r5, #5
_0801A3A4:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A3B0
	adds r0, r4, #0
	bl sub_08019B98
_0801A3B0:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801A3A4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A3C0: .4byte 0x020384A8
	thumb_func_end sub_0801A39C

	thumb_func_start sub_0801A3C4
sub_0801A3C4: @ 0x0801A3C4
	push {lr}
	ldr r0, _0801A3D8 @ =0x020382A0
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bgt _0801A3DC
	movs r0, #0
	b _0801A3DE
	.align 2, 0
_0801A3D8: .4byte 0x020382A0
_0801A3DC:
	movs r0, #1
_0801A3DE:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801A3C4

	thumb_func_start sub_0801A3E4
sub_0801A3E4: @ 0x0801A3E4
	ldr r1, _0801A3F0 @ =0x020382A0
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
_0801A3F0: .4byte 0x020382A0
	thumb_func_end sub_0801A3E4

	thumb_func_start sub_0801A3F4
sub_0801A3F4: @ 0x0801A3F4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0801A424 @ =0x020382A0
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r5, r2, r0
	ldr r0, [r5]
	cmp r0, #1
	bne _0801A428
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r4, #0
	str r4, [r0]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r2, r3
	str r4, [r0]
	adds r1, #4
	adds r0, r2, r1
	str r4, [r0]
	bl sub_0801A168
	b _0801A482
	.align 2, 0
_0801A424: .4byte 0x020382A0
_0801A428:
	cmp r0, #2
	bne _0801A45E
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r1, #1
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r1, [r0]
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #9
	str r0, [r1]
	adds r3, #8
	adds r1, r2, r3
	movs r0, #4
	str r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r4, #0
	str r4, [r0]
	bl sub_0801A168
	b _0801A482
_0801A45E:
	cmp r0, #3
	bne _0801A484
	movs r3, #0x9e
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r4, #0
	str r4, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r4, [r0]
	bl sub_0801A39C
_0801A482:
	str r4, [r5]
_0801A484:
	ldr r4, _0801A4D0 @ =0x020382A0
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r7, r4, r0
	ldr r3, [r7]
	cmp r3, #1
	bne _0801A4E4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r6, r4, r1
	ldr r0, [r6]
	subs r0, #1
	str r0, [r6]
	cmp r0, #0
	bgt _0801A536
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #1
	ble _0801A4BE
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, r0
	ldr r0, [r1]
	eors r0, r3
	str r0, [r1]
	bl sub_0801A168
_0801A4BE:
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
	cmp r0, #0
	bgt _0801A4D4
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7]
	b _0801A536
	.align 2, 0
_0801A4D0: .4byte 0x020382A0
_0801A4D4:
	cmp r0, #1
	bne _0801A4DE
	movs r0, #0x10
	str r0, [r6]
	b _0801A536
_0801A4DE:
	movs r0, #4
	str r0, [r6]
	b _0801A536
_0801A4E4:
	movs r6, #1
	rsbs r6, r6, #0
	cmp r3, r6
	beq _0801A53A
	bl sub_0801A344
	cmp r0, #0
	beq _0801A536
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r5, r4, r1
	ldr r0, [r5]
	subs r0, #1
	str r0, [r5]
	cmp r0, #0
	bgt _0801A536
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r2, r4, r3
	ldr r0, [r2]
	movs r1, #1
	eors r0, r1
	str r0, [r2]
	bl sub_0801A168
	movs r0, #4
	str r0, [r5]
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, _0801A540 @ =0x0821C2C8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r6
	bne _0801A536
	movs r0, #0
	str r0, [r2]
_0801A536:
	bl sub_0801A36C
_0801A53A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801A540: .4byte 0x0821C2C8
	thumb_func_end sub_0801A3F4

	thumb_func_start sub_0801A544
sub_0801A544: @ 0x0801A544
	push {lr}
	ldr r3, _0801A58C @ =0x020382A0
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r3, r1
	movs r1, #0
	str r1, [r0]
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r2, r3, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r2]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r3, r2
	str r1, [r0]
	bl sub_080035FC
	ldr r1, _0801A590 @ =sub_0801A3F4
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0801A58C: .4byte 0x020382A0
_0801A590: .4byte sub_0801A3F4
	thumb_func_end sub_0801A544

	thumb_func_start sub_0801A594
sub_0801A594: @ 0x0801A594
	push {lr}
	movs r0, #0xa
	bl sub_080034D4
	cmp r0, #0
	beq _0801A5AA
	bl sub_0801A39C
	movs r0, #0xa
	bl sub_08003450
_0801A5AA:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801A594

	thumb_func_start sub_0801A5B0
sub_0801A5B0: @ 0x0801A5B0
	push {lr}
	ldr r1, _0801A5C0 @ =sub_0801A544
	ldr r2, _0801A5C4 @ =0x00001130
	movs r0, #0xa
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0801A5C0: .4byte sub_0801A544
_0801A5C4: .4byte 0x00001130
	thumb_func_end sub_0801A5B0

	thumb_func_start sub_0801A5C8
sub_0801A5C8: @ 0x0801A5C8
	push {r4, lr}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #9
	ldr r2, _0801A638 @ =0x000006D6
	movs r4, #0
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r2, _0801A63C @ =0x000006DA
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x86
	lsls r0, r0, #9
	ldr r2, _0801A640 @ =0x000006D7
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x88
	lsls r0, r0, #2
	ldr r2, _0801A644 @ =0x000006DB
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
	movs r0, #0x8a
	lsls r0, r0, #9
	movs r2, #0xdb
	lsls r2, r2, #3
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	movs r0, #0x90
	lsls r0, r0, #2
	ldr r2, _0801A648 @ =0x000006DC
	str r4, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A638: .4byte 0x000006D6
_0801A63C: .4byte 0x000006DA
_0801A640: .4byte 0x000006D7
_0801A644: .4byte 0x000006DB
_0801A648: .4byte 0x000006DC
	thumb_func_end sub_0801A5C8

	thumb_func_start sub_0801A64C
sub_0801A64C: @ 0x0801A64C
	push {r4, r5, lr}
	sub sp, #0x18
	adds r3, r0, #0
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0801A678 @ =0x0821C304
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #1
	bne _0801A680
	ldr r1, _0801A67C @ =0x020382A0
	ldr r0, [r1, #0x1c]
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r5, [r0]
	b _0801A682
	.align 2, 0
_0801A678: .4byte 0x0821C304
_0801A67C: .4byte 0x020382A0
_0801A680:
	ldr r5, [r4, #8]
_0801A682:
	ldr r2, _0801A6C4 @ =0x020384A8
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r1, [r0]
	lsls r1, r1, #4
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r1, r3
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r2, [r4, #4]
	movs r3, #0xc
	ldrsh r1, [r4, r3]
	str r1, [sp]
	movs r3, #0x10
	ldrsh r1, [r4, r3]
	str r1, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	ldr r1, [r4, #0x14]
	str r1, [sp, #0xc]
	ldr r1, [r4, #0x18]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	movs r1, #1
	adds r3, r5, #0
	bl sub_08019C18
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A6C4: .4byte 0x020384A8
	thumb_func_end sub_0801A64C

	thumb_func_start sub_0801A6C8
sub_0801A6C8: @ 0x0801A6C8
	push {lr}
	ldr r1, _0801A6F0 @ =0x020384A8
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #4
	subs r2, #0x1c
	adds r0, r0, r2
	ldr r1, [r1]
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _0801A6EA
	adds r0, r1, #0
	bl sub_08019B98
_0801A6EA:
	pop {r0}
	bx r0
	.align 2, 0
_0801A6F0: .4byte 0x020384A8
	thumb_func_end sub_0801A6C8

	thumb_func_start sub_0801A6F4
sub_0801A6F4: @ 0x0801A6F4
	push {r4, r5, lr}
	ldr r0, _0801A728 @ =0x020384A8
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #0x13
_0801A702:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A718
	ldr r0, [r4, #4]
	bl sub_08001B58
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r1, #4]
_0801A718:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801A702
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A728: .4byte 0x020384A8
	thumb_func_end sub_0801A6F4

	thumb_func_start sub_0801A72C
sub_0801A72C: @ 0x0801A72C
	push {r4, r5, lr}
	ldr r0, _0801A754 @ =0x020384A8
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #0x13
_0801A73A:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801A746
	adds r0, r4, #0
	bl sub_08019B98
_0801A746:
	subs r5, #1
	adds r4, #0x10
	cmp r5, #0
	bge _0801A73A
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801A754: .4byte 0x020384A8
	thumb_func_end sub_0801A72C

	thumb_func_start sub_0801A758
sub_0801A758: @ 0x0801A758
	ldr r0, _0801A764 @ =0x020382A0
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0801A764: .4byte 0x020382A0
	thumb_func_end sub_0801A758

	thumb_func_start sub_0801A768
sub_0801A768: @ 0x0801A768
	push {r4, lr}
	ldr r3, _0801A784 @ =0x020382A0
	movs r4, #0xaa
	lsls r4, r4, #1
	adds r2, r3, r4
	str r0, [r2]
	movs r2, #0xae
	lsls r2, r2, #1
	adds r0, r3, r2
	str r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801A784: .4byte 0x020382A0
	thumb_func_end sub_0801A768

	thumb_func_start sub_0801A788
sub_0801A788: @ 0x0801A788
	push {r4, lr}
	ldr r0, _0801A7A4 @ =0x020382A0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r1, [r4]
	cmp r1, #2
	beq _0801A7B8
	cmp r1, #2
	bgt _0801A7A8
	cmp r1, #1
	beq _0801A7B2
	b _0801A7CC
	.align 2, 0
_0801A7A4: .4byte 0x020382A0
_0801A7A8:
	cmp r1, #3
	beq _0801A7BE
	cmp r1, #4
	beq _0801A7C4
	b _0801A7CC
_0801A7B2:
	bl sub_0801A5C8
	b _0801A7C8
_0801A7B8:
	bl sub_0801A64C
	b _0801A7C8
_0801A7BE:
	bl sub_0801A6C8
	b _0801A7C8
_0801A7C4:
	bl sub_0801A72C
_0801A7C8:
	movs r0, #0
	str r0, [r4]
_0801A7CC:
	bl sub_0801A6F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801A788

	thumb_func_start sub_0801A7D8
sub_0801A7D8: @ 0x0801A7D8
	push {lr}
	ldr r2, _0801A804 @ =0x020382A0
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r2, r1
	movs r1, #0
	str r1, [r0]
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r2, r3
	str r1, [r0]
	adds r3, #4
	adds r0, r2, r3
	str r1, [r0]
	bl sub_080035FC
	ldr r1, _0801A808 @ =sub_0801A788
	bl sub_0800356C
	pop {r0}
	bx r0
	.align 2, 0
_0801A804: .4byte 0x020382A0
_0801A808: .4byte sub_0801A788
	thumb_func_end sub_0801A7D8

	thumb_func_start sub_0801A80C
sub_0801A80C: @ 0x0801A80C
	push {lr}
	movs r0, #9
	bl sub_080034D4
	cmp r0, #0
	beq _0801A822
	bl sub_0801A72C
	movs r0, #9
	bl sub_08003450
_0801A822:
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801A80C

	thumb_func_start sub_0801A828
sub_0801A828: @ 0x0801A828
	push {lr}
	ldr r1, _0801A83C @ =sub_0801A7D8
	movs r2, #0x89
	lsls r2, r2, #5
	movs r0, #9
	bl sub_08003344
	pop {r0}
	bx r0
	.align 2, 0
_0801A83C: .4byte sub_0801A7D8
	thumb_func_end sub_0801A828

	thumb_func_start sub_0801A840
sub_0801A840: @ 0x0801A840
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end sub_0801A840

	thumb_func_start sub_0801A858
sub_0801A858: @ 0x0801A858
	push {r4, r5, lr}
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r5, #3
_0801A862:
	adds r0, r4, #0
	bl sub_0801A840
	subs r5, #1
	adds r4, #0x24
	cmp r5, #0
	bge _0801A862
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801A858

	thumb_func_start sub_0801A878
sub_0801A878: @ 0x0801A878
	push {lr}
	movs r2, #0xb8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
_0801A882:
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _0801A88C
	movs r0, #0
	b _0801A896
_0801A88C:
	adds r2, #1
	adds r1, #0x24
	cmp r2, #3
	ble _0801A882
	movs r0, #1
_0801A896:
	pop {r1}
	bx r1
	.align 2, 0
	thumb_func_end sub_0801A878

	thumb_func_start sub_0801A89C
sub_0801A89C: @ 0x0801A89C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r2, _0801A8D4 @ =0x020382A0
	ldr r0, [r2, #0x1c]
	ldr r1, [r4, #0x38]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x24
	adds r0, r0, r2
	ldr r6, [r0]
	ldr r7, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	mov sb, r0
	ldr r1, [r4, #0x44]
	mov r8, r1
	ldr r0, [r4, #0x48]
	cmp r0, #1
	bne _0801A8D8
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r1, #1
	b _0801A8DE
	.align 2, 0
_0801A8D4: .4byte 0x020382A0
_0801A8D8:
	movs r0, #1
	str r0, [sp, #0x1c]
	movs r1, #0
_0801A8DE:
	mov sl, r1
	cmp r3, #0
	bne _0801A986
	ldr r2, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _0801A8FC
	ldr r0, [r4, #0x18]
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r5, r0, r2
	b _0801A90C
_0801A8FC:
	ldr r0, [r4, #0x18]
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r5, r0, r1
_0801A90C:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08013274
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	adds r0, r6, #0
	bl sub_08013264
	adds r2, r0, #0
	ldr r0, [r4, #0x20]
	lsls r0, r0, #5
	mov r1, sl
	str r1, [sp]
	movs r1, #1
	ldr r3, [sp, #0x1c]
	bl sub_08003E7C
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080132C4
	adds r2, r0, #0
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	bne _0801A962
	ldr r0, [r4, #0x18]
	add r0, r8
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	add r1, sb
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r5, r0, r3
	b _0801A976
_0801A962:
	ldr r0, [r4, #0x18]
	add r0, r8
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	add r1, sb
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r5, r0, r1
_0801A976:
	movs r0, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
	b _0801A9F0
_0801A986:
	add r3, sp, #0x18
	adds r0, r6, #0
	adds r1, r7, #0
	add r2, sp, #0x14
	bl sub_08013244
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0801329C
	adds r2, r0, #0
	ldr r1, [sp, #0x18]
	lsls r1, r1, #5
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	lsls r1, r1, #5
	ldr r3, [r4, #0x14]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [r4, #0x20]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	mov r1, sl
	str r1, [sp, #0x10]
	movs r1, #1
	bl sub_08003F8C
	ldr r2, [r4, #0x28]
	ldr r3, [r4, #0x18]
	add r3, r8
	lsls r3, r3, #5
	ldr r0, [r4, #0x14]
	adds r3, r3, r0
	add r3, sb
	ldr r0, [r4, #0x20]
	lsls r0, r0, #4
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_080133AC
_0801A9F0:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801A89C

	thumb_func_start sub_0801AA00
sub_0801AA00: @ 0x0801AA00
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	mov sb, r0
	adds r5, r1, #0
	ldr r3, _0801AA40 @ =0x020382A0
	ldr r0, [r3, #0x1c]
	ldr r1, [r5, #0x38]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, #0x24
	adds r0, r0, r3
	ldr r0, [r0]
	mov r8, r0
	ldr r7, [r5, #0x3c]
	cmp r2, #0
	bne _0801AAAC
	ldr r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _0801AA44
	ldr r0, [r5, #0x18]
	lsls r0, r0, #5
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r6, r0, r2
	b _0801AA54
	.align 2, 0
_0801AA40: .4byte 0x020382A0
_0801AA44:
	ldr r0, [r5, #0x18]
	lsls r0, r0, #5
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r6, r0, r1
_0801AA54:
	mov r0, r8
	adds r1, r7, #0
	bl sub_08013454
	adds r2, r0, #0
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	mov r0, r8
	adds r1, r7, #0
	bl sub_08013468
	adds r2, r0, #0
	ldr r0, [r5, #0x20]
	lsls r0, r0, #5
	str r4, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003E7C
	ldr r0, [r5, #0x40]
	cmp r0, #1
	bne _0801AAEC
	ldr r0, [r5, #4]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r3, #0xb8
	lsls r3, r3, #1
	adds r1, r1, r3
	add r1, sb
	ldr r2, _0801AAA8 @ =0x0821D8C4
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	b _0801AAEC
	.align 2, 0
_0801AAA8: .4byte 0x0821D8C4
_0801AAAC:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0801347C
	adds r2, r0, #0
	ldr r1, [r5, #0x30]
	lsls r1, r1, #5
	ldr r0, [r5, #0x2c]
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r5, #0x28]
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	lsls r1, r1, #5
	ldr r3, [r5, #0x14]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [r5, #0x20]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0
	bl sub_08003F8C
_0801AAEC:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801AA00

	thumb_func_start sub_0801AAFC
sub_0801AAFC: @ 0x0801AAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r1, _0801AB34 @ =0x020382A0
	ldr r0, [r1, #0x1c]
	lsls r0, r0, #2
	adds r1, #0x24
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #3
	bl sub_0804449C
	adds r7, r0, #0
	cmp r4, #0
	bne _0801AB76
	ldr r2, [r5, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	bne _0801AB38
	ldr r0, [r5, #0x18]
	lsls r0, r0, #5
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r6, r0, r2
	b _0801AB48
	.align 2, 0
_0801AB34: .4byte 0x020382A0
_0801AB38:
	ldr r0, [r5, #0x18]
	lsls r0, r0, #5
	ldr r1, [r5, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #8
	adds r6, r0, r1
_0801AB48:
	adds r0, r7, #0
	bl sub_080134A4
	adds r2, r0, #0
	movs r4, #0
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #1
	bl sub_08003D38
	adds r0, r7, #0
	bl sub_080134C0
	adds r2, r0, #0
	ldr r0, [r5, #0x20]
	lsls r0, r0, #5
	str r4, [sp]
	movs r1, #0
	movs r3, #1
	bl sub_08003E7C
	b _0801ABB4
_0801AB76:
	adds r0, r7, #0
	bl sub_080134DC
	adds r2, r0, #0
	ldr r1, [r5, #0x30]
	lsls r1, r1, #5
	ldr r0, [r5, #0x2c]
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r5, #0x28]
	adds r0, r0, r1
	ldr r1, [r5, #0x18]
	lsls r1, r1, #5
	ldr r3, [r5, #0x14]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [r5, #0x20]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	movs r1, #0
	bl sub_08003F8C
_0801ABB4:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801AAFC

	thumb_func_start sub_0801ABBC
sub_0801ABBC: @ 0x0801ABBC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, _0801ABC8 @ =0x0821C610
	b _0801AC8C
	.align 2, 0
_0801ABC8: .4byte 0x0821C610
_0801ABCC:
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _0801AC8A
	ldr r1, [r4, #4]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r1, r3
	beq _0801ABFA
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r5, r0
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0xc]
	str r1, [r0, #4]
_0801ABFA:
	movs r0, #0x6e
	rsbs r0, r0, #0
	ldr r2, [r4, #0x1c]
	cmp r2, r0
	bne _0801AC10
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801A89C
	b _0801AC8A
_0801AC10:
	movs r0, #0x64
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801AC24
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801AA00
	b _0801AC8A
_0801AC24:
	movs r0, #0x78
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801AC38
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801AAFC
	b _0801AC8A
_0801AC38:
	cmp r2, r3
	beq _0801AC70
	ldr r3, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r3, r0
	bne _0801AC52
	ldr r0, [r4, #0x18]
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	b _0801AC60
_0801AC52:
	ldr r0, [r4, #0x18]
	lsls r0, r0, #5
	ldr r1, [r4, #0x14]
	adds r0, r0, r1
	lsls r0, r0, #5
	movs r3, #0xc0
	lsls r3, r3, #8
_0801AC60:
	adds r1, r0, r3
	movs r0, #0
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #1
	movs r3, #1
	bl sub_08003D38
_0801AC70:
	ldr r2, [r4, #0x24]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0801AC8A
	ldr r0, [r4, #0x20]
	lsls r0, r0, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r3, #1
	bl sub_08003E7C
_0801AC8A:
	adds r4, #0x4c
_0801AC8C:
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801ABCC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
	thumb_func_end sub_0801ABBC

	thumb_func_start sub_0801ACA0
sub_0801ACA0: @ 0x0801ACA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r4, _0801ACAC @ =0x0821C610
	b _0801AD56
	.align 2, 0
_0801ACAC: .4byte 0x0821C610
_0801ACB0:
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	bne _0801AD54
	ldr r2, [r4, #0x34]
	movs r0, #0x70
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801ACD4
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_0801A89C
	b _0801AD38
_0801ACD4:
	movs r0, #0x66
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801ACE8
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_0801AA00
	b _0801AD38
_0801ACE8:
	movs r0, #0x7a
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0801ACFC
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_0801AAFC
	b _0801AD38
_0801ACFC:
	movs r5, #1
	rsbs r5, r5, #0
	cmp r2, r5
	beq _0801AD38
	ldr r1, [r4, #0x30]
	lsls r1, r1, #5
	ldr r0, [r4, #0x2c]
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r4, #0x28]
	adds r0, r0, r1
	ldr r1, [r4, #0x18]
	lsls r1, r1, #5
	ldr r3, [r4, #0x14]
	adds r3, r3, r1
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [r4, #0x20]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x18
	str r1, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	movs r1, #1
	bl sub_08003F8C
_0801AD38:
	cmp r7, #1
	bne _0801AD54
	ldr r1, [r4, #4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r6, r0
	ldr r1, [r4, #8]
	str r1, [r0]
	ldr r1, [r4, #0xc]
	str r1, [r0, #4]
_0801AD54:
	adds r4, #0x4c
_0801AD56:
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801ACB0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801ACA0

	thumb_func_start sub_0801AD68
sub_0801AD68: @ 0x0801AD68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r3, _0801ADD0 @ =0x0821C4A8
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801ADC6
	movs r0, #0xb4
	lsls r0, r0, #1
	adds r6, r4, r0
_0801AD80:
	ldr r1, [r3]
	ldr r0, [r6]
	cmp r1, r0
	bne _0801ADBA
	ldr r1, [r3, #4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r4, r0
	ldr r1, [r3, #8]
	str r1, [r0, #8]
	ldr r1, [r3, #0xc]
	str r1, [r0, #0xc]
	ldr r1, [r3, #0x10]
	str r1, [r0, #0x10]
	ldr r1, [r3, #0x14]
	str r1, [r0, #0x14]
	ldr r2, [r3, #0x18]
	str r2, [r0, #0x18]
	ldr r1, [r3, #0x1c]
	str r1, [r0, #0x1c]
	ldr r1, [r3, #0x20]
	str r1, [r0, #0x20]
	cmp r2, #0
	beq _0801ADBA
	movs r5, #1
_0801ADBA:
	adds r3, #0x24
	ldr r1, [r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0801AD80
_0801ADC6:
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801ADD0: .4byte 0x0821C4A8
	thumb_func_end sub_0801AD68

	thumb_func_start sub_0801ADD4
sub_0801ADD4: @ 0x0801ADD4
	push {r4, r5, r6, lr}
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r6, #0
	movs r5, #0
_0801ADE0:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r0, [r4]
	adds r3, r0, r1
	str r3, [r4]
	ldr r2, [r4, #0x18]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0801AE1C
	cmp r1, #0
	ble _0801AE04
	ldr r0, [r4, #0x1c]
	cmp r3, r0
	blt _0801AE1C
	b _0801AE0E
_0801AE04:
	cmp r1, #0
	bge _0801AE1C
	ldr r0, [r4, #0x1c]
	cmp r3, r0
	bgt _0801AE1C
_0801AE0E:
	str r0, [r4]
	str r5, [r4, #8]
	str r5, [r4, #0x10]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #0x18]
_0801AE1C:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	adds r1, r1, r0
	str r1, [r4, #0xc]
	ldr r0, [r4, #4]
	adds r3, r0, r1
	str r3, [r4, #4]
	ldr r2, [r4, #0x18]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0801AE4C
	cmp r1, #0
	ble _0801AE4C
	bx r0